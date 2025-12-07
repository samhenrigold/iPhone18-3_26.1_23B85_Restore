uint64_t sub_1979D136C(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v3[11] = type metadata accessor for ModelManagerError(0);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = type metadata accessor for InferenceProviderXPCRequest(0);
  v3[15] = swift_task_alloc();
  v3[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A08, &qword_197A92370);
  v3[17] = swift_task_alloc();
  v4 = swift_task_alloc();
  v3[18] = v4;
  *v4 = v3;
  v4[1] = sub_1979D14B0;

  return sub_197967424((v3 + 2));
}

uint64_t sub_1979D14B0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 152) = v0;

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1979D15C4()
{
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_8_6();
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_100_0();
  swift_storeEnumTagMultiPayload();
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_67_5(v2);
  OUTLINED_FUNCTION_0_11();
  sub_197955EBC(v3, v1, protocol conformance descriptor for InferenceProviderXPCRequest);
  OUTLINED_FUNCTION_4_5(&qword_1ED87E608);
  sub_1979D676C();
  OUTLINED_FUNCTION_57_2();
  *v0 = v4;
  OUTLINED_FUNCTION_2_9(v5);
  OUTLINED_FUNCTION_89_2();

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

uint64_t sub_1979D16B4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 168) = v0;

  OUTLINED_FUNCTION_52_5();
  sub_19796F6D0(*(v4 + 120), type metadata accessor for InferenceProviderXPCRequest);
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1979D17F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_102_0();
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_21_4();
  sub_1979D9CFC();
  v17 = *(v14 + 136);
  if (!v13)
  {
    OUTLINED_FUNCTION_97_1();
    sub_197947900(v17, &qword_1EAF49A08);
    OUTLINED_FUNCTION_79_6();

    OUTLINED_FUNCTION_15();
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_111_1();
  OUTLINED_FUNCTION_1_8();
  v20 = sub_197955EBC(v18, v19, protocol conformance descriptor for ModelManagerError);
  OUTLINED_FUNCTION_28_3(v20);
  OUTLINED_FUNCTION_5_6();
  sub_19794B1D0(v15, v21, v22);
  sub_197947900(v17, &qword_1EAF49A08);
  OUTLINED_FUNCTION_81_2();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (!OUTLINED_FUNCTION_27_5(v23))
  {
    goto LABEL_11;
  }

  if (OUTLINED_FUNCTION_126_1() != 5)
  {
    sub_19796F6D0(v17, type metadata accessor for ModelManagerError);
LABEL_11:

    if (qword_1ED87DD80 != -1)
    {
      OUTLINED_FUNCTION_3_6(&qword_1ED87DD80);
    }

    v33 = sub_197A87608();
    OUTLINED_FUNCTION_66_5(v33, qword_1ED87DD88);
    MEMORY[0x19A8EBBD0](v12);
    v34 = sub_197A875E8();
    sub_197A87D38();

    if (OUTLINED_FUNCTION_96_1())
    {
      OUTLINED_FUNCTION_56();
      v35 = OUTLINED_FUNCTION_50_1();
      OUTLINED_FUNCTION_109_1(5.7779e-34);
      v36 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_78(v36);
      OUTLINED_FUNCTION_19_6();
      _os_log_impl(v37, v38, v39, v40, v41, 0xCu);
      sub_197947900(v35, &qword_1EAF48A90);
      OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_29();
    }

    swift_willThrow();
    goto LABEL_16;
  }

  if (qword_1ED87DD80 != -1)
  {
    OUTLINED_FUNCTION_3_6(&qword_1ED87DD80);
  }

  v24 = sub_197A87608();
  OUTLINED_FUNCTION_66_5(v24, qword_1ED87DD88);
  sub_197A878A8();
  v25 = sub_197A875E8();
  sub_197A87D78();
  OUTLINED_FUNCTION_125_0();
  if (OUTLINED_FUNCTION_110_1())
  {
    OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_61_0();
    OUTLINED_FUNCTION_84_2();
    OUTLINED_FUNCTION_85_2(4.8149e-34);
    v26 = OUTLINED_FUNCTION_100_0();
    *(v16 + 4) = sub_197948834(v26, v27, v28);
    OUTLINED_FUNCTION_55_3(&dword_197941000, v29, v30, "XPC Connection error: %s");
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_36_3();
  }

  v31 = OUTLINED_FUNCTION_31_4();
  OUTLINED_FUNCTION_30_5(v31, v32);
  swift_willThrow();

LABEL_16:
  OUTLINED_FUNCTION_34_3();

  OUTLINED_FUNCTION_22_1();
LABEL_17:
  OUTLINED_FUNCTION_12_0();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12);
}

uint64_t sub_1979D1ADC(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v3[11] = type metadata accessor for ModelManagerError(0);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = type metadata accessor for InferenceProviderXPCRequest(0);
  v3[15] = swift_task_alloc();
  v3[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A00, &qword_197A92D00);
  v3[17] = swift_task_alloc();
  v4 = swift_task_alloc();
  v3[18] = v4;
  *v4 = v3;
  v4[1] = sub_1979D1C20;

  return sub_197967424((v3 + 2));
}

uint64_t sub_1979D1C20()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 152) = v0;

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1979D1D34()
{
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_8_6();
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_100_0();
  swift_storeEnumTagMultiPayload();
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_67_5(v2);
  OUTLINED_FUNCTION_0_11();
  sub_197955EBC(v3, v1, protocol conformance descriptor for InferenceProviderXPCRequest);
  OUTLINED_FUNCTION_4_5(&qword_1ED87E608);
  sub_1979D6614();
  OUTLINED_FUNCTION_57_2();
  *v0 = v4;
  OUTLINED_FUNCTION_2_9(v5);
  OUTLINED_FUNCTION_89_2();

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

uint64_t sub_1979D1E24(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v3[11] = type metadata accessor for ModelManagerError(0);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = type metadata accessor for InferenceProviderXPCRequest(0);
  v3[15] = swift_task_alloc();
  v3[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A00, &qword_197A92D00);
  v3[17] = swift_task_alloc();
  v4 = swift_task_alloc();
  v3[18] = v4;
  *v4 = v3;
  v4[1] = sub_1979D1F68;

  return sub_197967424((v3 + 2));
}

uint64_t sub_1979D1F68()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 152) = v0;

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1979D207C()
{
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_8_6();
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_100_0();
  swift_storeEnumTagMultiPayload();
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_67_5(v2);
  OUTLINED_FUNCTION_0_11();
  sub_197955EBC(v3, v1, protocol conformance descriptor for InferenceProviderXPCRequest);
  OUTLINED_FUNCTION_4_5(&qword_1ED87E608);
  sub_1979D6614();
  OUTLINED_FUNCTION_57_2();
  *v0 = v4;
  OUTLINED_FUNCTION_2_9(v5);
  OUTLINED_FUNCTION_89_2();

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

uint64_t sub_1979D216C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 168) = v0;

  OUTLINED_FUNCTION_52_5();
  sub_19796F6D0(*(v4 + 120), type metadata accessor for InferenceProviderXPCRequest);
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1979D22AC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_97_1();

  OUTLINED_FUNCTION_13();

  return v0();
}

void sub_1979D232C()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 168);
  *(v0 + 56) = v1;
  MEMORY[0x19A8EBBD0](v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (OUTLINED_FUNCTION_49_5(v2))
  {
    v3 = *(v0 + 96);
    if (swift_getEnumCaseMultiPayload() == 5)
    {

      if (qword_1ED87DD80 != -1)
      {
        OUTLINED_FUNCTION_3_6(&qword_1ED87DD80);
      }

      v4 = sub_197A87608();
      OUTLINED_FUNCTION_66_5(v4, qword_1ED87DD88);
      sub_197A878A8();
      v5 = sub_197A875E8();
      sub_197A87D78();

      if (OUTLINED_FUNCTION_110_1())
      {
        v6 = OUTLINED_FUNCTION_56();
        v7 = OUTLINED_FUNCTION_93_0();
        *(v6 + 4) = OUTLINED_FUNCTION_95_2(4.8149e-34, v7, v8, v9, v10, v11, v12, v13, v14, v7);
        OUTLINED_FUNCTION_65_3();
        OUTLINED_FUNCTION_115_1(v15, v16, v17, v18);
        OUTLINED_FUNCTION_33_5();
        OUTLINED_FUNCTION_37();
      }

      OUTLINED_FUNCTION_1_8();
      v21 = sub_197955EBC(v19, v20, protocol conformance descriptor for ModelManagerError);
      v22 = OUTLINED_FUNCTION_82_3(v21, v21);
      v24 = OUTLINED_FUNCTION_75_0(v22, v23);
      OUTLINED_FUNCTION_117_0(v24, v25);
      swift_willThrow();

      goto LABEL_14;
    }

    sub_19796F6D0(v3, type metadata accessor for ModelManagerError);
  }

  if (qword_1ED87DD80 != -1)
  {
    OUTLINED_FUNCTION_3_6(&qword_1ED87DD80);
  }

  v26 = sub_197A87608();
  OUTLINED_FUNCTION_66_5(v26, qword_1ED87DD88);
  MEMORY[0x19A8EBBD0](v1);
  v27 = sub_197A875E8();
  sub_197A87D38();

  if (OUTLINED_FUNCTION_96_1())
  {
    OUTLINED_FUNCTION_56();
    v28 = OUTLINED_FUNCTION_50_1();
    OUTLINED_FUNCTION_109_1(5.7779e-34);
    v29 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_78(v29);
    OUTLINED_FUNCTION_19_6();
    _os_log_impl(v30, v31, v32, v33, v34, 0xCu);
    sub_197947900(v28, &qword_1EAF48A90);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_29();
  }

  swift_willThrow();
LABEL_14:
  OUTLINED_FUNCTION_34_3();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_117();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1979D25D4(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v3[11] = type metadata accessor for ModelManagerError(0);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = type metadata accessor for InferenceProviderXPCRequest(0);
  v3[15] = swift_task_alloc();
  v3[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499F8, &unk_197A92360);
  v3[17] = swift_task_alloc();
  v4 = swift_task_alloc();
  v3[18] = v4;
  *v4 = v3;
  v4[1] = sub_1979D2718;

  return sub_197967424((v3 + 2));
}

uint64_t sub_1979D2718()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 152) = v0;

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1979D282C()
{
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_8_6();
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_100_0();
  swift_storeEnumTagMultiPayload();
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_67_5(v2);
  OUTLINED_FUNCTION_0_11();
  sub_197955EBC(v3, v1, protocol conformance descriptor for InferenceProviderXPCRequest);
  OUTLINED_FUNCTION_4_5(&qword_1ED87E608);
  sub_19796E3DC();
  OUTLINED_FUNCTION_57_2();
  *v0 = v4;
  OUTLINED_FUNCTION_2_9(v5);
  OUTLINED_FUNCTION_89_2();

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

uint64_t sub_1979D291C(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v3[11] = type metadata accessor for ModelManagerError(0);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = type metadata accessor for InferenceProviderXPCRequest(0);
  v3[15] = swift_task_alloc();
  v3[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499F8, &unk_197A92360);
  v3[17] = swift_task_alloc();
  v4 = swift_task_alloc();
  v3[18] = v4;
  *v4 = v3;
  v4[1] = sub_1979D2A60;

  return sub_197967424((v3 + 2));
}

uint64_t sub_1979D2A60()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 152) = v0;

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1979D2B74()
{
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_8_6();
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_100_0();
  swift_storeEnumTagMultiPayload();
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_67_5(v2);
  OUTLINED_FUNCTION_0_11();
  sub_197955EBC(v3, v1, protocol conformance descriptor for InferenceProviderXPCRequest);
  OUTLINED_FUNCTION_4_5(&qword_1ED87E608);
  sub_19796E3DC();
  OUTLINED_FUNCTION_57_2();
  *v0 = v4;
  OUTLINED_FUNCTION_2_9(v5);
  OUTLINED_FUNCTION_89_2();

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

uint64_t sub_1979D2C64(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v3[11] = type metadata accessor for ModelManagerError(0);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = type metadata accessor for InferenceProviderXPCRequest(0);
  v3[15] = swift_task_alloc();
  v3[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499F8, &unk_197A92360);
  v3[17] = swift_task_alloc();
  v4 = swift_task_alloc();
  v3[18] = v4;
  *v4 = v3;
  v4[1] = sub_1979D2DA8;

  return sub_197967424((v3 + 2));
}

uint64_t sub_1979D2DA8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 152) = v0;

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1979D2EBC()
{
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_8_6();
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_100_0();
  swift_storeEnumTagMultiPayload();
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_67_5(v2);
  OUTLINED_FUNCTION_0_11();
  sub_197955EBC(v3, v1, protocol conformance descriptor for InferenceProviderXPCRequest);
  OUTLINED_FUNCTION_4_5(&qword_1ED87E608);
  sub_19796E3DC();
  OUTLINED_FUNCTION_57_2();
  *v0 = v4;
  OUTLINED_FUNCTION_2_9(v5);
  OUTLINED_FUNCTION_89_2();

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

uint64_t sub_1979D2FAC(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v3[11] = type metadata accessor for ModelManagerError(0);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = type metadata accessor for InferenceProviderXPCRequest(0);
  v3[15] = swift_task_alloc();
  v3[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499F8, &unk_197A92360);
  v3[17] = swift_task_alloc();
  v4 = swift_task_alloc();
  v3[18] = v4;
  *v4 = v3;
  v4[1] = sub_1979D30F0;

  return sub_197967424((v3 + 2));
}

uint64_t sub_1979D30F0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 152) = v0;

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1979D3204()
{
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_8_6();
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_100_0();
  swift_storeEnumTagMultiPayload();
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_67_5(v2);
  OUTLINED_FUNCTION_0_11();
  sub_197955EBC(v3, v1, protocol conformance descriptor for InferenceProviderXPCRequest);
  OUTLINED_FUNCTION_4_5(&qword_1ED87E608);
  sub_19796E3DC();
  OUTLINED_FUNCTION_57_2();
  *v0 = v4;
  OUTLINED_FUNCTION_2_9(v5);
  OUTLINED_FUNCTION_89_2();

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

uint64_t sub_1979D32F4()
{
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_33();
  v1[15] = v2;
  v1[16] = v0;
  v1[13] = v3;
  v1[14] = v4;
  v1[12] = v5;
  v6 = type metadata accessor for ModelManagerError(0);
  v1[17] = v6;
  OUTLINED_FUNCTION_6();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[20] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_10(AssociatedTypeWitness);
  v1[21] = v8;
  v1[22] = OUTLINED_FUNCTION_78_0();
  v9 = swift_getAssociatedTypeWitness();
  v1[23] = v9;
  OUTLINED_FUNCTION_1_8();
  v12 = sub_197955EBC(v10, v11, protocol conformance descriptor for ModelManagerError);
  v1[24] = v12;
  v13 = type metadata accessor for IPCResult(0, v9, v6, v12);
  v1[25] = v13;
  OUTLINED_FUNCTION_10(v13);
  v1[26] = v14;
  v1[27] = OUTLINED_FUNCTION_78_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  v1[28] = v15;
  *v15 = v16;
  v15[1] = sub_1979D34E4;
  OUTLINED_FUNCTION_112();

  return sub_197967424(v17);
}

uint64_t sub_1979D34E4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 232) = v0;

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1979D35F8()
{
  v12 = v0[25];
  v1 = v0[14];
  v2 = v0[15];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  (*(v2 + 72))(v1, v2);
  v3 = swift_task_alloc();
  v0[30] = v3;
  OUTLINED_FUNCTION_133();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_133();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_133();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_133();
  v5 = swift_getAssociatedConformanceWitness();
  v6 = sub_197955EBC(&qword_1ED8813C8, type metadata accessor for ModelManagerError, protocol conformance descriptor for ModelManagerError);
  OUTLINED_FUNCTION_71_4();
  v9 = sub_197955EBC(v7, type metadata accessor for ModelManagerError, v8);
  v0[7] = AssociatedConformanceWitness;
  v0[8] = v5;
  v0[9] = v6;
  v0[10] = v9;
  swift_getWitnessTable(protocol conformance descriptor for <> IPCResult<A, B>, v12, v0 + 7);
  *v3 = v0;
  v3[1] = sub_1979D3814;
  OUTLINED_FUNCTION_142();

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

uint64_t sub_1979D3814()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 248) = v1;

  OUTLINED_FUNCTION_52_5();
  (*(*(v0 + 168) + 8))(*(v5 + 176), *(v0 + 160));
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1979D3974()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *(v1 + 248);
  _s20ModelManagerServices9IPCResultO3getxyq_YKF();
  v4 = *(v1 + 208);
  v3 = *(v1 + 216);
  v5 = *(v1 + 200);
  v6 = *(v1 + 152);
  if (!v2)
  {
    (*(v4 + 8))(*(v1 + 216), *(v1 + 200));
    OUTLINED_FUNCTION_79_6();

    OUTLINED_FUNCTION_15();
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_88(*(v1 + 136), *(v1 + 192));
  OUTLINED_FUNCTION_5_6();
  sub_19794B1D0(v6, v7, v8);
  (*(v4 + 8))(v3, v5);
  *(v1 + 88) = v0;
  MEMORY[0x19A8EBBD0](v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (swift_dynamicCast())
  {
    v9 = *(v1 + 144);
    if (swift_getEnumCaseMultiPayload() == 5)
    {

      if (qword_1ED87DD80 != -1)
      {
        OUTLINED_FUNCTION_3_6(&qword_1ED87DD80);
      }

      v10 = sub_197A87608();
      OUTLINED_FUNCTION_66_5(v10, qword_1ED87DD88);
      sub_197A878A8();
      v11 = sub_197A875E8();
      sub_197A87D78();

      if (OUTLINED_FUNCTION_110_1())
      {
        v12 = OUTLINED_FUNCTION_56();
        v13 = OUTLINED_FUNCTION_93_0();
        *(v12 + 4) = OUTLINED_FUNCTION_95_2(4.8149e-34, v13, v14, v15, v16, v17, v18, v19, v20, v13);
        OUTLINED_FUNCTION_65_3();
        OUTLINED_FUNCTION_115_1(v21, v22, v23, v24);
        OUTLINED_FUNCTION_33_5();
        OUTLINED_FUNCTION_37();
      }

      v26 = OUTLINED_FUNCTION_82_3(v25, *(v1 + 192));
      v28 = OUTLINED_FUNCTION_75_0(v26, v27);
      OUTLINED_FUNCTION_117_0(v28, v29);
      swift_willThrow();

LABEL_16:
      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));

      OUTLINED_FUNCTION_22_1();
LABEL_17:
      OUTLINED_FUNCTION_117();

      __asm { BRAA            X1, X16 }
    }

    sub_19796F6D0(v9, type metadata accessor for ModelManagerError);
  }

  if (qword_1ED87DD80 != -1)
  {
    OUTLINED_FUNCTION_3_6(&qword_1ED87DD80);
  }

  v30 = sub_197A87608();
  OUTLINED_FUNCTION_66_5(v30, qword_1ED87DD88);
  MEMORY[0x19A8EBBD0](v0);
  v31 = sub_197A875E8();
  sub_197A87D38();

  if (OUTLINED_FUNCTION_96_1())
  {
    OUTLINED_FUNCTION_56();
    v32 = OUTLINED_FUNCTION_50_1();
    OUTLINED_FUNCTION_109_1(5.7779e-34);
    v33 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_78(v33);
    OUTLINED_FUNCTION_19_6();
    _os_log_impl(v34, v35, v36, v37, v38, 0xCu);
    sub_197947900(v32, &qword_1EAF48A90);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_29();
  }

  swift_willThrow();
  goto LABEL_16;
}

uint64_t sub_1979D3CB4()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_13();

  return v0();
}

void sub_1979D3D38()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 248);
  *(v0 + 88) = v1;
  MEMORY[0x19A8EBBD0](v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (OUTLINED_FUNCTION_49_5(v2))
  {
    v3 = *(v0 + 144);
    if (swift_getEnumCaseMultiPayload() == 5)
    {

      if (qword_1ED87DD80 != -1)
      {
        OUTLINED_FUNCTION_3_6(&qword_1ED87DD80);
      }

      v4 = sub_197A87608();
      OUTLINED_FUNCTION_66_5(v4, qword_1ED87DD88);
      sub_197A878A8();
      v5 = sub_197A875E8();
      sub_197A87D78();

      if (OUTLINED_FUNCTION_110_1())
      {
        v6 = OUTLINED_FUNCTION_56();
        v7 = OUTLINED_FUNCTION_93_0();
        *(v6 + 4) = OUTLINED_FUNCTION_95_2(4.8149e-34, v7, v8, v9, v10, v11, v12, v13, v14, v7);
        OUTLINED_FUNCTION_65_3();
        OUTLINED_FUNCTION_115_1(v15, v16, v17, v18);
        OUTLINED_FUNCTION_33_5();
        OUTLINED_FUNCTION_37();
      }

      v20 = OUTLINED_FUNCTION_82_3(v19, *(v0 + 192));
      v22 = OUTLINED_FUNCTION_75_0(v20, v21);
      OUTLINED_FUNCTION_117_0(v22, v23);
      swift_willThrow();

      goto LABEL_14;
    }

    sub_19796F6D0(v3, type metadata accessor for ModelManagerError);
  }

  if (qword_1ED87DD80 != -1)
  {
    OUTLINED_FUNCTION_3_6(&qword_1ED87DD80);
  }

  v24 = sub_197A87608();
  OUTLINED_FUNCTION_66_5(v24, qword_1ED87DD88);
  MEMORY[0x19A8EBBD0](v1);
  v25 = sub_197A875E8();
  sub_197A87D38();

  if (OUTLINED_FUNCTION_96_1())
  {
    OUTLINED_FUNCTION_56();
    v26 = OUTLINED_FUNCTION_50_1();
    OUTLINED_FUNCTION_109_1(5.7779e-34);
    v27 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_78(v27);
    OUTLINED_FUNCTION_19_6();
    _os_log_impl(v28, v29, v30, v31, v32, 0xCu);
    sub_197947900(v26, &qword_1EAF48A90);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_29();
  }

  swift_willThrow();
LABEL_14:
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_117();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1979D3FD0(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[10] = type metadata accessor for ModelManagerError(0);
  v2[11] = swift_task_alloc();
  v2[12] = type metadata accessor for InferenceProviderXPCRequest.Notification(0);
  v2[13] = swift_task_alloc();
  v3 = swift_task_alloc();
  v2[14] = v3;
  *v3 = v2;
  v3[1] = sub_1979D40C8;

  return sub_197967424((v2 + 2));
}

uint64_t sub_1979D40C8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 120) = v0;

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1979D41DC()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 96);
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_100_0();
  swift_storeEnumTagMultiPayload();
  v2 = swift_task_alloc();
  *(v0 + 128) = v2;
  OUTLINED_FUNCTION_68_4();
  sub_197955EBC(v3, v1, protocol conformance descriptor for InferenceProviderXPCRequest.Notification);
  OUTLINED_FUNCTION_72_4(&qword_1ED87E200);
  OUTLINED_FUNCTION_57_2();
  *v2 = v4;
  OUTLINED_FUNCTION_86_2();

  return IPCSession.sendWithTaskCancellation<A>(_:)();
}

uint64_t sub_1979D42DC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 136) = v0;

  OUTLINED_FUNCTION_52_5();
  sub_19796F6D0(*(v4 + 104), type metadata accessor for InferenceProviderXPCRequest.Notification);
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1979D441C()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t sub_1979D4484()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_79_6();

  OUTLINED_FUNCTION_15();

  return v0();
}

uint64_t sub_1979D44E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_102_0();
  OUTLINED_FUNCTION_80();
  *(v12 + 56) = *(v12 + 136);
  MEMORY[0x19A8EBBD0]();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (OUTLINED_FUNCTION_49_5(v14))
  {
    v15 = *(v12 + 88);
    if (swift_getEnumCaseMultiPayload() == 5)
    {

      v16 = *v15;
      v17 = v15[1];
      if (qword_1ED87DD80 != -1)
      {
        OUTLINED_FUNCTION_3_6(&qword_1ED87DD80);
      }

      v18 = sub_197A87608();
      OUTLINED_FUNCTION_66_5(v18, qword_1ED87DD88);
      sub_197A878A8();
      v19 = sub_197A875E8();
      v20 = sub_197A87D78();

      if (os_log_type_enabled(v19, v20))
      {
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_84_2();
        OUTLINED_FUNCTION_85_2(4.8149e-34);
        *(v13 + 4) = sub_197948834(v16, v17, v21);
        OUTLINED_FUNCTION_146(&dword_197941000, v22, v23, "XPC Connection error: %s");
        OUTLINED_FUNCTION_25();
        OUTLINED_FUNCTION_36_3();
      }

      v24 = *(v12 + 80);
      OUTLINED_FUNCTION_1_8();
      v27 = sub_197955EBC(v25, v26, protocol conformance descriptor for ModelManagerError);
      v28 = OUTLINED_FUNCTION_88(v24, v27);
      OUTLINED_FUNCTION_121_0(v28, v29);
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1Tm((v12 + 16));
      goto LABEL_14;
    }

    sub_19796F6D0(v15, type metadata accessor for ModelManagerError);
  }

  if (qword_1ED87DD80 != -1)
  {
    OUTLINED_FUNCTION_3_6(&qword_1ED87DD80);
  }

  v30 = *(v12 + 136);
  v31 = sub_197A87608();
  OUTLINED_FUNCTION_66_5(v31, qword_1ED87DD88);
  MEMORY[0x19A8EBBD0](v30);
  v32 = sub_197A875E8();
  v33 = sub_197A87D38();

  if (OUTLINED_FUNCTION_96_1())
  {
    v34 = *(v12 + 136);
    v35 = OUTLINED_FUNCTION_56();
    v36 = swift_slowAlloc();
    *v35 = 138412290;
    MEMORY[0x19A8EBBD0](v34);
    v37 = _swift_stdlib_bridgeErrorToNSError();
    *(v35 + 4) = v37;
    *v36 = v37;
    OUTLINED_FUNCTION_115_1(&dword_197941000, v32, v33, "Error from daemon, passing along: %@");
    sub_197947900(v36, &qword_1EAF48A90);
    OUTLINED_FUNCTION_36_3();
    OUTLINED_FUNCTION_37();
  }

  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_1Tm((v12 + 16));
LABEL_14:

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_12_0();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12);
}

uint64_t sub_1979D47C0(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[10] = type metadata accessor for ModelManagerError(0);
  v2[11] = swift_task_alloc();
  v2[12] = type metadata accessor for InferenceProviderXPCRequest.Notification(0);
  v2[13] = swift_task_alloc();
  v3 = swift_task_alloc();
  v2[14] = v3;
  *v3 = v2;
  v3[1] = sub_1979D48B8;

  return sub_197967424((v2 + 2));
}

uint64_t sub_1979D48B8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 120) = v0;

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1979D49CC()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 96);
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_100_0();
  swift_storeEnumTagMultiPayload();
  v2 = swift_task_alloc();
  *(v0 + 128) = v2;
  OUTLINED_FUNCTION_68_4();
  sub_197955EBC(v3, v1, protocol conformance descriptor for InferenceProviderXPCRequest.Notification);
  OUTLINED_FUNCTION_72_4(&qword_1ED87E200);
  OUTLINED_FUNCTION_57_2();
  *v2 = v4;
  OUTLINED_FUNCTION_86_2();

  return IPCSession.sendWithTaskCancellation<A>(_:)();
}

uint64_t sub_1979D4ACC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 136) = v0;

  OUTLINED_FUNCTION_52_5();
  sub_19796F6D0(*(v4 + 104), type metadata accessor for InferenceProviderXPCRequest.Notification);
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1979D4C0C()
{
  OUTLINED_FUNCTION_18();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v5 = type metadata accessor for ModelManagerError(0);
  v1[12] = v5;
  OUTLINED_FUNCTION_28(v5);
  v1[13] = OUTLINED_FUNCTION_78_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[14] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_10(AssociatedTypeWitness);
  v1[15] = v7;
  v1[16] = OUTLINED_FUNCTION_78_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  v1[17] = v8;
  *v8 = v9;
  v8[1] = sub_1979D4D38;

  return sub_197967424((v1 + 2));
}

uint64_t sub_1979D4D38()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 144) = v0;

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1979D4E4C()
{
  OUTLINED_FUNCTION_80();
  v2 = v0[9];
  v1 = v0[10];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  (*(v1 + 72))(v2, v1);
  v3 = swift_task_alloc();
  v0[19] = v3;
  OUTLINED_FUNCTION_144_0();
  OUTLINED_FUNCTION_144_0();
  *v3 = v0;
  v3[1] = sub_1979D4F80;

  return IPCSession.sendWithTaskCancellation<A>(_:)();
}

uint64_t sub_1979D4F80()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_24();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 160) = v1;

  OUTLINED_FUNCTION_52_5();
  (*(*(v0 + 120) + 8))(*(v5 + 128), *(v0 + 112));
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1979D50E0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_79_6();

  OUTLINED_FUNCTION_15();

  return v0();
}

uint64_t sub_1979D5144()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t sub_1979D51AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_102_0();
  OUTLINED_FUNCTION_80();
  *(v12 + 56) = *(v12 + 160);
  MEMORY[0x19A8EBBD0]();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (OUTLINED_FUNCTION_49_5(v14))
  {
    v15 = *(v12 + 104);
    if (swift_getEnumCaseMultiPayload() == 5)
    {

      v16 = *v15;
      v17 = v15[1];
      if (qword_1ED87DD80 != -1)
      {
        OUTLINED_FUNCTION_3_6(&qword_1ED87DD80);
      }

      v18 = sub_197A87608();
      OUTLINED_FUNCTION_66_5(v18, qword_1ED87DD88);
      sub_197A878A8();
      v19 = sub_197A875E8();
      v20 = sub_197A87D78();

      if (os_log_type_enabled(v19, v20))
      {
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_84_2();
        OUTLINED_FUNCTION_85_2(4.8149e-34);
        *(v13 + 4) = sub_197948834(v16, v17, v21);
        OUTLINED_FUNCTION_146(&dword_197941000, v22, v23, "XPC Connection error: %s");
        OUTLINED_FUNCTION_25();
        OUTLINED_FUNCTION_36_3();
      }

      v24 = *(v12 + 96);
      OUTLINED_FUNCTION_1_8();
      v27 = sub_197955EBC(v25, v26, protocol conformance descriptor for ModelManagerError);
      v28 = OUTLINED_FUNCTION_88(v24, v27);
      OUTLINED_FUNCTION_121_0(v28, v29);
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1Tm((v12 + 16));
      goto LABEL_14;
    }

    sub_19796F6D0(v15, type metadata accessor for ModelManagerError);
  }

  if (qword_1ED87DD80 != -1)
  {
    OUTLINED_FUNCTION_3_6(&qword_1ED87DD80);
  }

  v30 = *(v12 + 160);
  v31 = sub_197A87608();
  OUTLINED_FUNCTION_66_5(v31, qword_1ED87DD88);
  MEMORY[0x19A8EBBD0](v30);
  v32 = sub_197A875E8();
  v33 = sub_197A87D38();

  if (OUTLINED_FUNCTION_96_1())
  {
    v34 = *(v12 + 160);
    v35 = OUTLINED_FUNCTION_56();
    v36 = swift_slowAlloc();
    *v35 = 138412290;
    MEMORY[0x19A8EBBD0](v34);
    v37 = _swift_stdlib_bridgeErrorToNSError();
    *(v35 + 4) = v37;
    *v36 = v37;
    OUTLINED_FUNCTION_115_1(&dword_197941000, v32, v33, "Error from daemon, passing along: %@");
    sub_197947900(v36, &qword_1EAF48A90);
    OUTLINED_FUNCTION_36_3();
    OUTLINED_FUNCTION_37();
  }

  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_1Tm((v12 + 16));
LABEL_14:

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_12_0();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12);
}

uint64_t InferenceProviderXPCSender.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t InferenceProviderXPCSender.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1979D550C()
{
  OUTLINED_FUNCTION_18();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_8_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_99_1(v1);

  return sub_1979CCC44(v3, v4, v5, v6);
}

unint64_t sub_1979D559C(unint64_t result)
{
  if (result >= 4)
  {
    return sub_197A878A8();
  }

  return result;
}

uint64_t dispatch thunk of InferenceProviderXPCSender.invalidate()()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_7_2();
  v5 = (*(v0 + 136) + **(v0 + 136));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_20(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_43(v2);

  return v5();
}

uint64_t dispatch thunk of InferenceProviderXPCSender.isVersionSupported(version:)()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_23_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_12_5(v1);

  return v4(v3);
}

uint64_t dispatch thunk of InferenceProviderXPCSender.convertData(clientData:)()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_23_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_12_5(v1);

  return v4(v3);
}

uint64_t sub_1979D5960()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_114_0();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_100();

  return v4(v3);
}

uint64_t dispatch thunk of InferenceProviderXPCSender.sendEndOfStream(for:)()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_23_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_12_5(v1);

  return v4(v3);
}

uint64_t dispatch thunk of InferenceProviderXPCSender.sendClientTerminated(for:)()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_23_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_12_5(v1);

  return v4(v3);
}

uint64_t dispatch thunk of InferenceProviderXPCSender.fetchNextStreamResults(requestKey:)()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_114_0();
  OUTLINED_FUNCTION_7_2();
  v7 = (*(v2 + 200) + **(v2 + 200));
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_8_0(v3);
  *v4 = v5;
  v4[1] = sub_197960FB0;

  return v7(v1, v0);
}

uint64_t dispatch thunk of InferenceProviderXPCSender.requestInference(asStream:clientData:configuration:)()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_7_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_8_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_106_1(v1);
  OUTLINED_FUNCTION_73_4();

  return v3();
}

uint64_t dispatch thunk of InferenceProviderXPCSender.requestInputStreamInference(clientDataArray:metadata:configuration:)()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_35_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_8_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_106_1(v1);
  OUTLINED_FUNCTION_73_4();

  return v3();
}

uint64_t dispatch thunk of InferenceProviderXPCSender.inputStreamEnded(requestID:)()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_23_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_12_5(v1);

  return v4(v3);
}

uint64_t dispatch thunk of InferenceProviderXPCSender.directStreamHandshake(requestIdentifier:)()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_23_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_12_5(v1);

  return v4(v3);
}

uint64_t dispatch thunk of InferenceProviderXPCSender.willCancelActiveRequest(id:dueTo:)()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_114_0();
  OUTLINED_FUNCTION_7_2();
  v6 = (*(v0 + 240) + **(v0 + 240));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_20(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_43(v2);
  v4 = OUTLINED_FUNCTION_100();

  return v6(v4);
}

uint64_t dispatch thunk of InferenceProviderXPCSender.endOfStream(_:)()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_23_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_12_5(v1);

  return v4(v3);
}

uint64_t dispatch thunk of InferenceProviderXPCSender.sendAsync<A>(_:)()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_35_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_8_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_106_1(v1);
  OUTLINED_FUNCTION_73_4();

  return v3();
}

uint64_t dispatch thunk of InferenceProviderXPCSender.sendOnewayAsync<A>(_:)()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_7_2();
  v11 = (*(v6 + 264) + **(v6 + 264));
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_20(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_43(v8);

  return v11(v5, v3, v1);
}

unint64_t sub_1979D6614()
{
  result = qword_1ED87D7C8;
  if (!qword_1ED87D7C8)
  {
    v4[10] = v0;
    v4[11] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF49A00, &qword_197A92D00);
    v4[0] = sub_197955EBC(&qword_1ED87FC60, type metadata accessor for InferenceProviderRequestResult, protocol conformance descriptor for InferenceProviderRequestResult);
    v4[1] = sub_197955EBC(&qword_1ED87DE00, type metadata accessor for InferenceProviderRequestResult, protocol conformance descriptor for InferenceProviderRequestResult);
    v4[2] = sub_197955EBC(&qword_1ED8813C8, type metadata accessor for ModelManagerError, protocol conformance descriptor for ModelManagerError);
    v4[3] = sub_197955EBC(&qword_1ED8813D0, type metadata accessor for ModelManagerError, protocol conformance descriptor for ModelManagerError);
    result = swift_getWitnessTable(protocol conformance descriptor for <> IPCResult<A, B>, v3, v4);
    atomic_store(result, &qword_1ED87D7C8);
  }

  return result;
}

unint64_t sub_1979D676C()
{
  result = qword_1ED87DDA8;
  if (!qword_1ED87DDA8)
  {
    v4[10] = v0;
    v4[11] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF49A08, &qword_197A92370);
    v4[0] = sub_1979D68A8(&qword_1ED87E6A0, protocol conformance descriptor for <> GreedyBufferResult<A, B>);
    v4[1] = sub_1979D68A8(qword_1ED87E6A8, protocol conformance descriptor for <> GreedyBufferResult<A, B>);
    v4[2] = sub_197955EBC(&qword_1ED8813C8, type metadata accessor for ModelManagerError, protocol conformance descriptor for ModelManagerError);
    v4[3] = sub_197955EBC(&qword_1ED8813D0, type metadata accessor for ModelManagerError, protocol conformance descriptor for ModelManagerError);
    result = swift_getWitnessTable(protocol conformance descriptor for <> IPCResult<A, B>, v3, v4);
    atomic_store(result, &qword_1ED87DDA8);
  }

  return result;
}

uint64_t sub_1979D68A8(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF499D8, &unk_197A92330);
    v6 = sub_197955EBC(&qword_1ED87FFB8, type metadata accessor for ClientData, protocol conformance descriptor for ClientData);
    v7 = sub_197955EBC(&qword_1ED87FDA0, type metadata accessor for ClientData, protocol conformance descriptor for ClientData);
    v8 = sub_197955EBC(&qword_1ED8813C8, type metadata accessor for ModelManagerError, protocol conformance descriptor for ModelManagerError);
    OUTLINED_FUNCTION_71_4();
    v11[0] = v6;
    v11[1] = v7;
    v11[2] = v8;
    v11[3] = sub_197955EBC(v9, type metadata accessor for ModelManagerError, v10);
    result = swift_getWitnessTable(a2, v5, v11);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1979D69DC()
{
  result = qword_1EAF49A18;
  if (!qword_1EAF49A18)
  {
    v4[10] = v0;
    v4[11] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF49A10, &qword_197A92378);
    v4[0] = sub_1979D6AE0();
    v4[1] = sub_1979D6B34();
    v4[2] = sub_197955EBC(&qword_1ED8813C8, type metadata accessor for ModelManagerError, protocol conformance descriptor for ModelManagerError);
    v4[3] = sub_197955EBC(&qword_1ED8813D0, type metadata accessor for ModelManagerError, protocol conformance descriptor for ModelManagerError);
    result = swift_getWitnessTable(protocol conformance descriptor for <> IPCResult<A, B>, v3, v4);
    atomic_store(result, &qword_1EAF49A18);
  }

  return result;
}

unint64_t sub_1979D6AE0()
{
  result = qword_1EAF49A20;
  if (!qword_1EAF49A20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InferenceProviderXPCRequest.ConvertData.Response, &type metadata for InferenceProviderXPCRequest.ConvertData.Response, v0, v1);
    atomic_store(result, &qword_1EAF49A20);
  }

  return result;
}

unint64_t sub_1979D6B34()
{
  result = qword_1EAF49A28;
  if (!qword_1EAF49A28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InferenceProviderXPCRequest.ConvertData.Response, &type metadata for InferenceProviderXPCRequest.ConvertData.Response, v0, v1);
    atomic_store(result, &qword_1EAF49A28);
  }

  return result;
}

unint64_t sub_1979D6B88()
{
  result = qword_1ED87CB98;
  if (!qword_1ED87CB98)
  {
    v4[10] = v0;
    v4[11] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF49A30, &unk_197A92380);
    v4[0] = sub_1979D6C8C();
    v4[1] = sub_1979D6CE0();
    v4[2] = sub_197955EBC(&qword_1ED8813C8, type metadata accessor for ModelManagerError, protocol conformance descriptor for ModelManagerError);
    v4[3] = sub_197955EBC(&qword_1ED8813D0, type metadata accessor for ModelManagerError, protocol conformance descriptor for ModelManagerError);
    result = swift_getWitnessTable(protocol conformance descriptor for <> IPCResult<A, B>, v3, v4);
    atomic_store(result, &qword_1ED87CB98);
  }

  return result;
}

unint64_t sub_1979D6C8C()
{
  result = qword_1ED87CCF0;
  if (!qword_1ED87CCF0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InferenceProviderXPCRequest.IsVersionSupported.Response, &type metadata for InferenceProviderXPCRequest.IsVersionSupported.Response, v0, v1);
    atomic_store(result, &qword_1ED87CCF0);
  }

  return result;
}

unint64_t sub_1979D6CE0()
{
  result = qword_1ED87CCF8;
  if (!qword_1ED87CCF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InferenceProviderXPCRequest.IsVersionSupported.Response, &type metadata for InferenceProviderXPCRequest.IsVersionSupported.Response, v0, v1);
    atomic_store(result, &qword_1ED87CCF8);
  }

  return result;
}

uint64_t sub_1979D6D34()
{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_8_0(v2);
  *v3 = v4;
  v3[1] = sub_197960FB0;

  return sub_1979CB108(v1);
}

uint64_t OUTLINED_FUNCTION_27_5(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_108_1()
{

  return sub_197947900(v0, v1);
}

void OUTLINED_FUNCTION_116_1(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, os_log_t log)
{

  _os_log_impl(a1, log, v12, a4, v11, 0x1Cu);
}

uint64_t OUTLINED_FUNCTION_121_0(uint64_t a1, void *a2)
{
  *a2 = v2;
  a2[1] = v3;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_123_0(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_145_0()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t sub_1979D6ED0@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

unint64_t sub_1979D6F54()
{
  result = qword_1ED87D098;
  if (!qword_1ED87D098)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RemoteDeviceSet, &type metadata for RemoteDeviceSet, v0, v1);
    atomic_store(result, &qword_1ED87D098);
  }

  return result;
}

unint64_t sub_1979D6FAC()
{
  result = qword_1EAF49A38;
  if (!qword_1EAF49A38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RemoteDeviceSet, &type metadata for RemoteDeviceSet, v0, v1);
    atomic_store(result, &qword_1EAF49A38);
  }

  return result;
}

unint64_t sub_1979D70BC()
{
  result = qword_1EAF48650;
  if (!qword_1EAF48650)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RemoteDeviceSet, &type metadata for RemoteDeviceSet, v0, v1);
    atomic_store(result, &qword_1EAF48650);
  }

  return result;
}

unint64_t sub_1979D7114()
{
  result = qword_1EAF48640;
  if (!qword_1EAF48640)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RemoteDeviceSet, &type metadata for RemoteDeviceSet, v0, v1);
    atomic_store(result, &qword_1EAF48640);
  }

  return result;
}

BOOL sub_1979D71BC(_DWORD *a1, int a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_1979D71F0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & result;
  if (v3)
  {
    *v2 &= ~result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

uint64_t sub_1979D7220@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  *v2 |= result;
  v4 = v3 & result;
  *a2 = v4;
  *(a2 + 4) = v4 == 0;
  return result;
}

uint64_t sub_1979D72EC@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = RemoteDeviceSet.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1979D732C@<X0>(_DWORD *a1@<X8>)
{
  result = RemoteDeviceSet.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t TaskCancellingIPCPeerHandler.__allocating_init(handler:)(uint64_t a1)
{
  v2 = swift_allocObject();
  TaskCancellingIPCPeerHandler.init(handler:)(a1);
  return v2;
}

char *TaskCancellingIPCPeerHandler.init(handler:)(uint64_t a1)
{
  v3 = *v1;
  swift_defaultActor_initialize();
  OUTLINED_FUNCTION_7_2();
  v5 = *(v4 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49190, &unk_197A925E0);
  v6 = sub_197A87898();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49198, &qword_197A8D2D0);
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *&v1[v5] = v7;
  *(v7 + 16) = v6;
  OUTLINED_FUNCTION_7_2();
  (*(*(*(v3 + 80) - 8) + 32))(&v1[*(v8 + 104)], a1);
  return v1;
}

uint64_t sub_1979D74D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_197960E38;

  return sub_1979D84E4(a5);
}

uint64_t sub_1979D756C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v4[11] = swift_getAssociatedTypeWitness();
  v4[12] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[13] = AssociatedTypeWitness;
  v4[14] = *(AssociatedTypeWitness - 8);
  v4[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1979D76C8, 0, 0);
}

uint64_t sub_1979D76C8()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v5 = v0[7];
  v4 = v0[8];
  v6 = OUTLINED_FUNCTION_38_4();
  v7 = OUTLINED_FUNCTION_38_4();
  type metadata accessor for TaskCancellingXPCReceivedMessage(0, v3, v6, v7);
  sub_197961900(v5, (v0 + 2));
  (*(v2 + 16))(v1, v4, v3);
  v0[16] = sub_1979623AC(v0 + 2, v1);
  v8 = swift_task_alloc();
  v0[17] = v8;
  *v8 = v0;
  v8[1] = sub_1979D7804;
  OUTLINED_FUNCTION_29_3();

  return sub_1979D7B14();
}

uint64_t sub_1979D7804()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1979D78E8()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t sub_1979D7948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_197960FB0;

  return sub_1979D84E4(a5);
}

uint64_t sub_1979D79E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_28(v1);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_31_5(v3, v4, v5, v3);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;

  OUTLINED_FUNCTION_16_4();
  sub_19795CB2C();
}

uint64_t sub_1979D7ABC()
{
  OUTLINED_FUNCTION_9();
  sub_1979D7FAC();
  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t sub_1979D7B14()
{
  OUTLINED_FUNCTION_49_0();
  v1[2] = v2;
  v1[3] = v0;
  OUTLINED_FUNCTION_14_7();
  v4 = *(v3 + 88);
  v5 = *(v3 + 80);
  v9 = (*(v4 + 40) + **(v4 + 40));
  v6 = swift_task_alloc();
  v1[4] = v6;
  *v6 = v1;
  v6[1] = sub_1979D7C6C;
  v7 = OUTLINED_FUNCTION_29_3();

  return v9(v7, v5, v4);
}

uint64_t sub_1979D7C6C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1979D7D64()
{
  OUTLINED_FUNCTION_9();
  sub_19795B62C(*(v0 + 16));
  OUTLINED_FUNCTION_13();

  return v1();
}

uint64_t sub_1979D7DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  OUTLINED_FUNCTION_7_2();
  v5[7] = v6;
  return OUTLINED_FUNCTION_32_0(sub_1979D7E14, v4);
}

uint64_t sub_1979D7E14()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_33_6();
  v6 = swift_allocObject();
  v0[8] = v6;
  v6[2] = v3;
  v6[3] = v4;
  v6[4] = v1;
  v6[5] = v5;
  v9 = v2 + 80;
  v8 = *(v2 + 80);
  v7 = *(v9 + 8);
  v10 = *(v7 + 32);

  v14 = (v10 + *v10);
  v11 = swift_task_alloc();
  v0[9] = v11;
  *v11 = v0;
  v11[1] = sub_19797726C;
  v12 = v0[2];

  return (v14)(v12, &unk_197A92660, v6, v8, v7);
}

uint64_t sub_1979D7FAC()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_28(v2);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_31_5(v4, v5, v6, v4);
  v8 = type metadata accessor for TaskCancellingIPCPeerHandler(255, *(v1 + 80), *(v1 + 88), v7);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TaskCancellingIPCPeerHandler<A>, v8);
  v10 = swift_allocObject();
  v10[2] = v0;
  v10[3] = WitnessTable;
  v10[4] = v0;
  swift_retain_n();
  OUTLINED_FUNCTION_16_4();
  sub_19795CB2C();
}

uint64_t sub_1979D80BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = *(*a4 + 88);
  v6 = *(*a4 + 80);
  v9 = (*(v5 + 48) + **(v5 + 48));
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_1979D8220;

  return v9(v6, v5);
}

uint64_t sub_1979D8220()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1979D8318()
{
  OUTLINED_FUNCTION_18();
  v1 = *(*(v0 + 16) + *(**(v0 + 16) + 112));
  os_unfair_lock_lock((v1 + 24));
  sub_1979D83C0((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t sub_1979D83C0(void *a1)
{
  v1 = *a1;
  v2 = *a1 + 64;
  v3 = 1 << *(*a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(*a1 + 64);
  v6 = (v3 + 63) >> 6;
  result = sub_197A878A8();
  for (i = 0; v5; result = __swift_destroy_boxed_opaque_existential_1Tm(v13))
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    sub_197961900(*(v1 + 56) + 40 * (v10 | (v9 << 6)), v13);
    v11 = v14;
    v12 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    (*(v12 + 8))(v11, v12);
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1979D84E4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_32_0(sub_1979D8500, v1);
}

uint64_t sub_1979D8500()
{
  OUTLINED_FUNCTION_33();
  if (qword_1ED87E900 != -1)
  {
    OUTLINED_FUNCTION_0_13();
    swift_once();
  }

  v1 = sub_197A87608();
  __swift_project_value_buffer(v1, qword_1ED87DF90);
  v2 = sub_197A875E8();
  sub_197A87D48();
  v3 = OUTLINED_FUNCTION_18_5();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_10_9();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_30_6(v5, 3.852e-34);
    OUTLINED_FUNCTION_20_1(&dword_197941000, v6, v7, "Received task cancellation for message %llu.");
    OUTLINED_FUNCTION_8();
    MEMORY[0x19A8EBE00]();
  }

  v8 = *(v0 + 16);
  v9 = *(v0 + 24);

  v10 = *(v9 + *(*v9 + 112));
  os_unfair_lock_lock((v10 + 24));
  sub_1979D8650((v10 + 16), v8);
  os_unfair_lock_unlock((v10 + 24));
  OUTLINED_FUNCTION_13();

  return v11();
}

void sub_1979D8650(uint64_t *a1, uint64_t a2)
{
  sub_197A8606C(a2, *a1, &v27);
  if (v28)
  {
    sub_197945EF8(&v27, v29);
    v3 = v30;
    v4 = v31;
    __swift_project_boxed_opaque_existential_1(v29, v30);
    (*(v4 + 8))(v3, v4);
    if (qword_1ED87E900 != -1)
    {
      OUTLINED_FUNCTION_0_13();
      swift_once();
    }

    v5 = sub_197A87608();
    __swift_project_value_buffer(v5, qword_1ED87DF90);
    v6 = sub_197A875E8();
    sub_197A87D48();
    v7 = OUTLINED_FUNCTION_18_5();
    if (os_log_type_enabled(v7, v8))
    {
      OUTLINED_FUNCTION_10_9();
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = a2;
      OUTLINED_FUNCTION_16_5();
      _os_log_impl(v10, v11, v12, v13, v14, v15);
      OUTLINED_FUNCTION_8();
      MEMORY[0x19A8EBE00]();
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  else
  {
    sub_19795B378(&v27, &qword_1EAF49A40, &qword_197A92768);
    if (qword_1ED87E900 != -1)
    {
      OUTLINED_FUNCTION_0_13();
      swift_once();
    }

    v16 = sub_197A87608();
    __swift_project_value_buffer(v16, qword_1ED87DF90);
    v17 = sub_197A875E8();
    sub_197A87D48();
    v18 = OUTLINED_FUNCTION_18_5();
    if (os_log_type_enabled(v18, v19))
    {
      OUTLINED_FUNCTION_10_9();
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      *(v20 + 4) = a2;
      OUTLINED_FUNCTION_16_5();
      _os_log_impl(v21, v22, v23, v24, v25, v26);
      OUTLINED_FUNCTION_8();
      MEMORY[0x19A8EBE00]();
    }
  }
}

uint64_t sub_1979D8840@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A50, &qword_197A979E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  sub_1979D9354(a1, v10 - v5);
  v7 = sub_197A87CE8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v7);
  if (EnumTagSinglePayload == 1)
  {
    result = sub_19795B378(v6, &qword_1EAF49A50, &qword_197A979E0);
  }

  else
  {
    sub_197A87CD8();
    result = (*(*(v7 - 8) + 8))(v6, v7);
  }

  *a2 = EnumTagSinglePayload == 1;
  return result;
}

uint64_t TaskCancellingIPCPeerHandler.deinit()
{
  OUTLINED_FUNCTION_14_7();
  OUTLINED_FUNCTION_36_0();
  (*(v1 + 8))(v0 + v2);
  OUTLINED_FUNCTION_7_2();

  swift_defaultActor_destroy();
  return v0;
}

uint64_t TaskCancellingIPCPeerHandler.__deallocating_deinit()
{
  TaskCancellingIPCPeerHandler.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1979D8A7C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_25_4();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_8_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_1_9(v4);

  return sub_1979D7948(v6, v7, v8, v2, v1);
}

uint64_t sub_1979D8B1C()
{
  OUTLINED_FUNCTION_33();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_19_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_8_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_23_5(v1);

  return sub_1979D756C(v3, v4, v5, v6);
}

uint64_t sub_1979D8C64()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_25_4();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_8_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_1_9(v4);

  return sub_1979D74D0(v6, v7, v8, v2, v1);
}

uint64_t sub_1979D8D04()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_25_4();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_8_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_1_9(v3);

  return sub_1979D7A9C(v5, v6, v7, v1);
}

uint64_t dispatch thunk of TaskCancellingIPCPeerHandler.handleIncomingRequest(_:id:)()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_7_2();
  v9 = (*(v4 + 144) + **(v4 + 144));
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_20(v5);
  *v6 = v7;
  v6[1] = sub_197960FB0;

  return v9(v3, v1);
}

uint64_t dispatch thunk of TaskCancellingIPCPeerHandler.handleIncomingRequestWithReply(_:id:)()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_7_2();
  v11 = (*(v6 + 152) + **(v6 + 152));
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_8_0(v7);
  *v8 = v9;
  v8[1] = sub_197960FB0;

  return v11(v5, v3, v1);
}

uint64_t dispatch thunk of TaskCancellingIPCPeerHandler.handleIncomingRequestWithReply(_:id:callback:)()
{
  OUTLINED_FUNCTION_49_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_7_2();
  v13 = (*(v8 + 160) + **(v8 + 160));
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_20(v9);
  *v10 = v11;
  v10[1] = sub_197960FB0;

  return v13(v7, v5, v3, v1);
}

uint64_t dispatch thunk of TaskCancellingIPCPeerHandler.cancel(id:)()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_7_2();
  v6 = (*(v0 + 176) + **(v0 + 176));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_20(v1);
  *v2 = v3;
  v2[1] = sub_197960FB0;
  v4 = OUTLINED_FUNCTION_29_3();

  return v6(v4);
}

uint64_t sub_1979D92C0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_25_4();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_8_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_1_9(v3);

  return sub_1979D80BC(v5, v6, v7, v1);
}

uint64_t sub_1979D9354(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A50, &qword_197A979E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ModelXPCSender.loadAssetBundle(_:dynamicMode:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 56) = a3;
  *(v4 + 16) = a1;
  v5 = OUTLINED_FUNCTION_73();
  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1979D93F4()
{
  OUTLINED_FUNCTION_9();
  sub_197A878A8();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_139(v1);
  *v2 = v3;
  v2[1] = sub_1979D9490;
  v4 = *(v0 + 24);
  v5 = *(v0 + 56);
  v6 = *(v0 + 16);

  return sub_1979DAF60(v2, v6, v4, v5);
}

uint64_t sub_1979D9490()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 48) = v0;

  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t ModelXPCSender.holdAssetBundle(_:)()
{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  v3 = v2;
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_20(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_43(v5);

  return sub_1979DB02C(v7, v3, v1);
}

uint64_t sub_1979D9660()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 24) = v0;

  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t ModelXPCSender.forceAssetVersionSwitch()()
{
  OUTLINED_FUNCTION_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_43(v1);

  return sub_1979DB1D0(v3);
}

uint64_t sub_1979D97FC()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 24) = v0;

  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void *sub_1979D98F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10[1] = a1;
  v3 = type metadata accessor for ModelManagerError(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49AE8, &qword_197A92B60);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v10 - v7;
  sub_197944528();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return memcpy(a2, v8, 0xC8uLL);
  }

  sub_19796361C();
  sub_1979557E8();
  sub_197955F04(&qword_1ED8816D8, type metadata accessor for ModelManagerError);
  swift_willThrowTypedImpl();
  return sub_1979636E8(v5, type metadata accessor for ModelManagerError);
}

void sub_1979D9AD4()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_193(v3);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_65_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A30, &unk_197A92380);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_149_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_272();
    OUTLINED_FUNCTION_2_10();
    OUTLINED_FUNCTION_224();
    OUTLINED_FUNCTION_0_14();
    sub_197955F04(v6, v7);
    OUTLINED_FUNCTION_22();
    swift_willThrowTypedImpl();
    OUTLINED_FUNCTION_1_10();
    sub_1979636E8(v0, v8);
  }

  else
  {
    *v1 = *v2;
  }

  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_93();
}

void sub_1979D9BE8()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_193(v3);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_65_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A10, &qword_197A92378);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_149_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_272();
    OUTLINED_FUNCTION_2_10();
    OUTLINED_FUNCTION_224();
    OUTLINED_FUNCTION_0_14();
    sub_197955F04(v6, v7);
    OUTLINED_FUNCTION_22();
    swift_willThrowTypedImpl();
    OUTLINED_FUNCTION_1_10();
    sub_1979636E8(v0, v8);
  }

  else
  {
    *v1 = *v2;
  }

  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_93();
}

void sub_1979D9CFC()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_193(v1);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_65_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A08, &qword_197A92370);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_149_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_272();
    OUTLINED_FUNCTION_2_10();
    OUTLINED_FUNCTION_224();
    OUTLINED_FUNCTION_0_14();
    sub_197955F04(v4, v5);
    OUTLINED_FUNCTION_22();
    swift_willThrowTypedImpl();
    OUTLINED_FUNCTION_1_10();
    sub_1979636E8(v0, v6);
  }

  else
  {
    sub_19794B118();
  }

  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_93();
}

uint64_t sub_1979D9E24(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  type metadata accessor for ModelManagerError(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_65_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v7);
  sub_197944528();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_19796361C();
  }

  sub_19796361C();
  OUTLINED_FUNCTION_2_10();
  OUTLINED_FUNCTION_224();
  OUTLINED_FUNCTION_0_14();
  sub_197955F04(v8, v9);
  swift_willThrowTypedImpl();
  OUTLINED_FUNCTION_1_10();
  return sub_1979636E8(v3, v10);
}

void sub_1979D9F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_92();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  a10 = v27;
  v29 = v28;
  type metadata accessor for ModelManagerError(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_65_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(v26, v24);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v31);
  v33 = (&a9 - v32);
  sub_197944528();
  OUTLINED_FUNCTION_149_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_272();
    OUTLINED_FUNCTION_2_10();
    OUTLINED_FUNCTION_224();
    OUTLINED_FUNCTION_0_14();
    sub_197955F04(v34, v35);
    OUTLINED_FUNCTION_22();
    swift_willThrowTypedImpl();
    OUTLINED_FUNCTION_1_10();
    sub_1979636E8(v20, v36);
  }

  else
  {
    *v29 = *v33;
  }

  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_93();
}

void *sub_1979DA0E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10[1] = a1;
  v3 = type metadata accessor for ModelManagerError(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49B20, &qword_197A92BA8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v10 - v7;
  sub_197944528();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return memcpy(a2, v8, 0x51uLL);
  }

  sub_19796361C();
  sub_1979557E8();
  sub_197955F04(&qword_1ED8816D8, type metadata accessor for ModelManagerError);
  swift_willThrowTypedImpl();
  return sub_1979636E8(v5, type metadata accessor for ModelManagerError);
}

uint64_t sub_1979DA2C0@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v10[1] = a1;
  v3 = type metadata accessor for ModelManagerError(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49B00, &qword_197A92B78);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v10 - v7);
  sub_197944528();
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    sub_19796361C();
    sub_1979557E8();
    sub_197955F04(&qword_1ED8816D8, type metadata accessor for ModelManagerError);
    swift_willThrowTypedImpl();
    return sub_1979636E8(v5, type metadata accessor for ModelManagerError);
  }

  else
  {
    *a2 = *v8;
  }

  return result;
}

void *sub_1979DA498@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10[1] = a1;
  v3 = type metadata accessor for ModelManagerError(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49AC0, &qword_197A92B48);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v10 - v7;
  sub_197944528();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return memcpy(a2, v8, 0x41uLL);
  }

  sub_19796361C();
  sub_1979557E8();
  sub_197955F04(&qword_1ED8816D8, type metadata accessor for ModelManagerError);
  swift_willThrowTypedImpl();
  return sub_1979636E8(v5, type metadata accessor for ModelManagerError);
}

uint64_t sub_1979DA678()
{
  if (qword_1ED880250 != -1)
  {
    OUTLINED_FUNCTION_192(&qword_1ED880250);
  }
}

uint64_t sub_1979DA6C4()
{
  type metadata accessor for ModelXPCSender(0);
  v0 = swift_allocObject();
  result = ModelXPCSender.init()();
  qword_1ED881820 = v0;
  return result;
}

uint64_t ModelXPCSender.__allocating_init()()
{
  v0 = swift_allocObject();
  ModelXPCSender.init()();
  return v0;
}

void *sub_1979DA73C()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000016;
  *(v0 + 24) = 0x8000000197AA1DE0;
  type metadata accessor for IPCCachedSession(0);
  swift_allocObject();
  result = IPCCachedSession.init(initSession:)(&unk_197A92CF0, v0);
  qword_1ED881808 = result;
  return result;
}

uint64_t ModelXPCSender.init()()
{
  v1 = OBJC_IVAR____TtC20ModelManagerServices14ModelXPCSender_logHandle;
  if (qword_1ED880370 != -1)
  {
    swift_once();
  }

  v2 = sub_197A87608();
  v3 = __swift_project_value_buffer(v2, qword_1ED880520);
  (*(*(v2 - 8) + 16))(v0 + v1, v3, v2);
  if (qword_1ED880250 != -1)
  {
    OUTLINED_FUNCTION_192(&qword_1ED880250);
  }

  *(v0 + OBJC_IVAR____TtC20ModelManagerServices14ModelXPCSender_session) = qword_1ED881808;

  return v0;
}

uint64_t ModelXPCSender.executeRequest(taskPriority:metadata:)()
{
  OUTLINED_FUNCTION_9();
  v5 = OUTLINED_FUNCTION_265(v1, v2, v3, v4);
  v6 = type metadata accessor for ModelXPCRequest.ExecuteRequest.Response(v5);
  v0[6] = v6;
  OUTLINED_FUNCTION_28(v6);
  v0[7] = OUTLINED_FUNCTION_78_0();
  v7 = type metadata accessor for ModelXPCRequest.ExecuteRequest(0);
  v0[8] = v7;
  OUTLINED_FUNCTION_28(v7);
  v0[9] = OUTLINED_FUNCTION_78_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  OUTLINED_FUNCTION_28(v8);
  v0[10] = OUTLINED_FUNCTION_78_0();
  v9 = type metadata accessor for RequestMetadata(0);
  v0[11] = v9;
  OUTLINED_FUNCTION_28(v9);
  v0[12] = OUTLINED_FUNCTION_78_0();
  v10 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1979DA998()
{
  OUTLINED_FUNCTION_80();
  v33 = v0;
  if (sub_197A87C68())
  {
    OUTLINED_FUNCTION_50_5();
    sub_1979557E8();
    v1 = sub_197A875E8();
    sub_197A87D78();
    OUTLINED_FUNCTION_148_0();
    v3 = os_log_type_enabled(v1, v2);
    v4 = *(v0 + 96);
    if (v3)
    {
      v5 = *(v0 + 80);
      v6 = *(v0 + 88);
      v7 = OUTLINED_FUNCTION_56();
      v32 = OUTLINED_FUNCTION_93_0();
      *v7 = 136315138;
      v8 = *(v6 + 24);
      sub_197A87298();
      OUTLINED_FUNCTION_6();
      (*(v9 + 16))(v5, v4 + v8);
      v10 = _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
      v12 = v11;
      sub_197947900(v5, &qword_1EAF49128);
      OUTLINED_FUNCTION_66_6();
      v13 = sub_197948834(v10, v12, &v32);

      *(v7 + 4) = v13;
      OUTLINED_FUNCTION_31(&dword_197941000, v14, v15, "Task for execute request %s cancelled before sending");
      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_29();
    }

    else
    {

      OUTLINED_FUNCTION_66_6();
    }

    type metadata accessor for ModelManagerError(0);
    OUTLINED_FUNCTION_0_14();
    sub_197955F04(v24, v25);
    v26 = OUTLINED_FUNCTION_133_0();
    v28 = OUTLINED_FUNCTION_88(v26, v27);
    OUTLINED_FUNCTION_75_0(v28, v29);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_254();

    __asm { BRAA            X1, X16 }
  }

  v16 = *(v0 + 72);
  v17 = *(v0 + 120);
  OUTLINED_FUNCTION_50_5();
  sub_1979557E8();
  *v16 = v17;
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 104) = v18;
  *v18 = v19;
  OUTLINED_FUNCTION_258(v18);
  OUTLINED_FUNCTION_254();

  return sub_1979DB3E4(v20, v21);
}

uint64_t sub_1979DAC14()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_186();
  sub_1979636E8(v0, v1);
  OUTLINED_FUNCTION_271();

  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t sub_1979DAC94(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1979DACB8, 0, 0);
}

uint64_t sub_1979DACB8()
{
  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_19();
  v1 = OUTLINED_FUNCTION_89_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_31_6(v1);

  return v4(v3);
}

uint64_t sub_1979DAD48(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1979DAD6C, 0, 0);
}

uint64_t sub_1979DAD6C()
{
  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_19();
  v1 = OUTLINED_FUNCTION_89_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_31_6(v1);

  return v4(v3);
}

uint64_t sub_1979DADFC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1979DAE1C, 0, 0);
}

uint64_t sub_1979DAE1C()
{
  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_19();
  v1 = OUTLINED_FUNCTION_104_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_87_3(v1);

  return v4(v3);
}

uint64_t sub_1979DAEAC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1979DAED0, 0, 0);
}

uint64_t sub_1979DAED0()
{
  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_19();
  v1 = OUTLINED_FUNCTION_89_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_31_6(v1);

  return v4(v3);
}

uint64_t sub_1979DAF60(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 56) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1979DAF88, 0, 0);
}

uint64_t sub_1979DAF88()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_14();
  *(v0 + 48) = v1;
  *v1 = v2;
  v1[1] = sub_197A05F90;
  v3 = OUTLINED_FUNCTION_185();

  return v5(v3);
}

uint64_t sub_1979DB02C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1979DB050, 0, 0);
}

uint64_t sub_1979DB050()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_14();
  *(v0 + 48) = v1;
  *v1 = v2;
  v1[1] = sub_1979DB0F0;
  v3 = OUTLINED_FUNCTION_185();

  return v5(v3);
}

uint64_t sub_1979DB0F0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t sub_1979DB1D0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1979DB1F0, 0, 0);
}

uint64_t sub_1979DB1F0()
{
  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_19();
  v1 = OUTLINED_FUNCTION_104_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_87_3(v1);

  return v4(v3);
}

uint64_t sub_1979DB280(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1979DB2A4, 0, 0);
}

uint64_t sub_1979DB2A4()
{
  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_19();
  v1 = OUTLINED_FUNCTION_89_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_31_6(v1);

  return v4(v3);
}

uint64_t sub_1979DB334(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1979DB354, 0, 0);
}

uint64_t sub_1979DB354()
{
  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_19();
  v1 = OUTLINED_FUNCTION_104_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_87_3(v1);

  return v4(v3);
}

uint64_t sub_1979DB3E4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1979DB408, 0, 0);
}

uint64_t sub_1979DB408()
{
  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_19();
  v1 = OUTLINED_FUNCTION_89_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_31_6(v1);

  return v4(v3);
}

uint64_t sub_1979DB498(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1979DB4BC, 0, 0);
}

uint64_t sub_1979DB4BC()
{
  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_19();
  v1 = OUTLINED_FUNCTION_89_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_31_6(v1);

  return v4(v3);
}

uint64_t sub_1979DB54C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1979DB570, 0, 0);
}

uint64_t sub_1979DB570()
{
  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_19();
  v1 = OUTLINED_FUNCTION_89_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_31_6(v1);

  return v4(v3);
}

uint64_t sub_1979DB600(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1979DB620, 0, 0);
}

uint64_t sub_1979DB620()
{
  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_19();
  v1 = OUTLINED_FUNCTION_104_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_87_3(v1);

  return v4(v3);
}

uint64_t sub_1979DB6B0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1979DB6D0, 0, 0);
}

uint64_t sub_1979DB6D0()
{
  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_19();
  v1 = OUTLINED_FUNCTION_104_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_87_3(v1);

  return v4(v3);
}

uint64_t sub_1979DB760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1979DB784, 0, 0);
}

uint64_t sub_1979DB784()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_14();
  *(v0 + 48) = v1;
  *v1 = v2;
  v1[1] = sub_197A05F90;
  v3 = OUTLINED_FUNCTION_185();

  return v5(v3);
}

uint64_t sub_1979DB824(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1979DB844, 0, 0);
}

uint64_t sub_1979DB844()
{
  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_19();
  v1 = OUTLINED_FUNCTION_104_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_87_3(v1);

  return v4(v3);
}

uint64_t sub_1979DB8D4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1979DB8F4, 0, 0);
}

uint64_t sub_1979DB8F4()
{
  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_19();
  v1 = OUTLINED_FUNCTION_104_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_87_3(v1);

  return v4(v3);
}

uint64_t sub_1979DB984(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1979DB9A8, 0, 0);
}

uint64_t sub_1979DB9A8()
{
  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_19();
  v1 = OUTLINED_FUNCTION_89_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_31_6(v1);

  return v4(v3);
}

uint64_t sub_1979DBA38(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1979DBA5C, 0, 0);
}

uint64_t sub_1979DBA5C()
{
  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_19();
  v1 = OUTLINED_FUNCTION_89_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_31_6(v1);

  return v4(v3);
}

uint64_t sub_1979DBAEC(uint64_t a1, char a2)
{
  *(v3 + 40) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1979DBB10, 0, 0);
}

uint64_t sub_1979DBB10()
{
  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_19();
  v1 = OUTLINED_FUNCTION_104_2(v0);
  *v1 = v2;
  v1[1] = sub_197976F2C;
  v3 = OUTLINED_FUNCTION_185();

  return v5(v3);
}

uint64_t ModelXPCSender.executeInputStreamRequest(taskPriority:metadata:)()
{
  OUTLINED_FUNCTION_9();
  v5 = OUTLINED_FUNCTION_265(v1, v2, v3, v4);
  v6 = type metadata accessor for ModelXPCRequest.ExecuteInputStreamRequest.Response(v5);
  v0[6] = v6;
  OUTLINED_FUNCTION_28(v6);
  v0[7] = OUTLINED_FUNCTION_78_0();
  v7 = type metadata accessor for ModelXPCRequest.ExecuteInputStreamRequest(0);
  v0[8] = v7;
  OUTLINED_FUNCTION_28(v7);
  v0[9] = OUTLINED_FUNCTION_78_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  OUTLINED_FUNCTION_28(v8);
  v0[10] = OUTLINED_FUNCTION_78_0();
  v9 = type metadata accessor for RequestMetadata(0);
  v0[11] = v9;
  OUTLINED_FUNCTION_28(v9);
  v0[12] = OUTLINED_FUNCTION_78_0();
  v10 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1979DBC98()
{
  OUTLINED_FUNCTION_80();
  v33 = v0;
  if (sub_197A87C68())
  {
    OUTLINED_FUNCTION_50_5();
    sub_1979557E8();
    v1 = sub_197A875E8();
    sub_197A87D78();
    OUTLINED_FUNCTION_148_0();
    v3 = os_log_type_enabled(v1, v2);
    v4 = *(v0 + 96);
    if (v3)
    {
      v5 = *(v0 + 80);
      v6 = *(v0 + 88);
      v7 = OUTLINED_FUNCTION_56();
      v32 = OUTLINED_FUNCTION_93_0();
      *v7 = 136315138;
      v8 = *(v6 + 24);
      sub_197A87298();
      OUTLINED_FUNCTION_6();
      (*(v9 + 16))(v5, v4 + v8);
      v10 = _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
      v12 = v11;
      sub_197947900(v5, &qword_1EAF49128);
      OUTLINED_FUNCTION_66_6();
      v13 = sub_197948834(v10, v12, &v32);

      *(v7 + 4) = v13;
      OUTLINED_FUNCTION_31(&dword_197941000, v14, v15, "Task for executeInputStreamRequest %s cancelled before sending");
      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_29();
    }

    else
    {

      OUTLINED_FUNCTION_66_6();
    }

    type metadata accessor for ModelManagerError(0);
    OUTLINED_FUNCTION_0_14();
    sub_197955F04(v24, v25);
    v26 = OUTLINED_FUNCTION_133_0();
    v28 = OUTLINED_FUNCTION_88(v26, v27);
    OUTLINED_FUNCTION_75_0(v28, v29);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_254();

    __asm { BRAA            X1, X16 }
  }

  v16 = *(v0 + 72);
  v17 = *(v0 + 120);
  OUTLINED_FUNCTION_50_5();
  sub_1979557E8();
  *v16 = v17;
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 104) = v18;
  *v18 = v19;
  OUTLINED_FUNCTION_258(v18);
  OUTLINED_FUNCTION_254();

  return sub_1979DB498(v20, v21);
}

uint64_t sub_1979DBF14()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1979DC00C()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_264();
  OUTLINED_FUNCTION_184();
  sub_1979636E8(v0, v1);
  OUTLINED_FUNCTION_100_0();
  sub_19794B118();
  OUTLINED_FUNCTION_223();

  OUTLINED_FUNCTION_15();

  return v2();
}

uint64_t sub_1979DC0B8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_184();
  sub_1979636E8(v0, v1);
  OUTLINED_FUNCTION_271();

  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t ModelXPCSender.cancelRequest(id:sessionID:)()
{
  OUTLINED_FUNCTION_9();
  v3 = OUTLINED_FUNCTION_250(v1, v2);
  v4 = type metadata accessor for ModelXPCRequest.CancelRequest(v3);
  v0[5] = v4;
  OUTLINED_FUNCTION_28(v4);
  v0[6] = OUTLINED_FUNCTION_78_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49128, &unk_197A8CE70);
  OUTLINED_FUNCTION_28(v5);
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1979DC1F0()
{
  OUTLINED_FUNCTION_80();
  v18 = v0;
  sub_197944528();
  v1 = sub_197A875E8();
  sub_197A87D78();
  OUTLINED_FUNCTION_148_0();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[8];
  if (v3)
  {
    v5 = v0[7];
    v6 = OUTLINED_FUNCTION_56();
    v17 = OUTLINED_FUNCTION_93_0();
    *v6 = 136315138;
    sub_197944528();
    v7 = _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
    v9 = v8;
    sub_197947900(v5, &qword_1EAF49128);
    sub_197947900(v4, &qword_1EAF49128);
    v10 = sub_197948834(v7, v9, &v17);

    *(v6 + 4) = v10;
    OUTLINED_FUNCTION_31(&dword_197941000, v11, v12, "Sending CancelRequest for request %s");
    OUTLINED_FUNCTION_17_0();
    OUTLINED_FUNCTION_29();
  }

  else
  {

    sub_197947900(v4, &qword_1EAF49128);
  }

  sub_197944528();
  sub_197944528();
  v13 = swift_task_alloc();
  v0[9] = v13;
  *v13 = v0;
  OUTLINED_FUNCTION_268(v13);
  OUTLINED_FUNCTION_253();

  return sub_1979DB54C(v14, v15);
}

uint64_t sub_1979DC3EC()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1979DC50C()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_15();

  return v0();
}

uint64_t sub_1979DC578()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t sub_1979DC5E8()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t ModelXPCSender.acquireAssertion(assertion:)()
{
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_87_2(v1);
  v3 = type metadata accessor for ModelXPCRequest.AcquireRequest(v2);
  OUTLINED_FUNCTION_28(v3);
  *(v0 + 32) = OUTLINED_FUNCTION_78_0();
  v4 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1979DC6E0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_98_1();
  sub_1979557E8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_139(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_177_0(v1);

  return sub_1979DAC94(v3, v4);
}

uint64_t sub_1979DC77C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 48) = v0;

  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t ModelXPCSender.releaseAssertion(id:)()
{
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_87_2(v1);
  v3 = type metadata accessor for ModelXPCRequest.ReleaseRequest(v2);
  OUTLINED_FUNCTION_28(v3);
  *(v0 + 32) = OUTLINED_FUNCTION_78_0();
  v4 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1979DC910()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_98_1();
  sub_197944528();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_139(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_177_0(v1);

  return sub_1979DAD48(v3, v4);
}

uint64_t sub_1979DC9A8()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 48) = v0;

  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t ModelXPCSender.fetchAllAssertions()()
{
  OUTLINED_FUNCTION_9();
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 24) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_128_1(v1);

  return sub_1979DADFC(v3);
}

uint64_t sub_1979DCB4C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 32) = v0;

  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t ModelXPCSender.restoreAssertions(_:)()
{
  OUTLINED_FUNCTION_9();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_43(v3);

  return sub_1979DAEAC(v5, v1);
}

uint64_t ModelXPCSender.fetchAllAssetInfo()()
{
  OUTLINED_FUNCTION_9();
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 24) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_128_1(v1);

  return sub_1979DB600(v3);
}

uint64_t sub_1979DCD50()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 32) = v0;

  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t ModelXPCSender.fetchDynamicAssetInfo()()
{
  OUTLINED_FUNCTION_9();
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 24) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_128_1(v1);

  return sub_1979DB6B0(v3);
}

uint64_t ModelXPCSender.fetchEffectivePolicy()()
{
  OUTLINED_FUNCTION_9();
  *(v0 + 104) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 112) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_128_1(v2);
  OUTLINED_FUNCTION_4_0();

  return sub_1979DB760(v4, v5, v6);
}

uint64_t sub_1979DCF98()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1979DD090()
{
  if (*(v0 + 16) == 2)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_270(v2);
    OUTLINED_FUNCTION_15();

    return v3();
  }

  return result;
}

uint64_t ModelXPCSender.fetchPolicy(_:)()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v4 = v3;
  v0[14] = v3;
  v0[15] = v1;
  v0[13] = v5;
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  v0[16] = v6;
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_128_1(v6);

  return sub_1979DB760(v8, v4, v2);
}

uint64_t sub_1979DD1C4()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1979DD2BC()
{
  OUTLINED_FUNCTION_262();
  OUTLINED_FUNCTION_33();
  if (v0[2] == 2)
  {
    v2 = v0[14];
    v1 = v0[15];
    v3 = type metadata accessor for ModelManagerError(0);
    OUTLINED_FUNCTION_0_14();
    v6 = sub_197955F04(v4, v5);
    OUTLINED_FUNCTION_88(v3, v6);
    *v7 = v2;
    v7[1] = v1;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_197A878A8();
    OUTLINED_FUNCTION_13();
  }

  else
  {
    OUTLINED_FUNCTION_270(v0[2]);
    OUTLINED_FUNCTION_15();
  }

  OUTLINED_FUNCTION_261();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t ModelXPCSender.fetchDisabledUseCases()()
{
  OUTLINED_FUNCTION_9();
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 24) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_128_1(v1);

  return sub_1979DB824(v3);
}

uint64_t ModelXPCSender.fetchAvailability()()
{
  OUTLINED_FUNCTION_9();
  *(v0 + 16) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 24) = v2;
  *v2 = v3;
  v2[1] = sub_1979DD4D8;

  return sub_1979DB8D4(v0 + 40);
}

uint64_t sub_1979DD4D8()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 32) = v0;

  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1979DD5D0()
{
  **(v0 + 16) = *(v0 + 40);
  OUTLINED_FUNCTION_15();
  return v1();
}

uint64_t ModelXPCSender.dumpState()()
{
  OUTLINED_FUNCTION_9();
  *(v0 + 216) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 224) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_128_1(v2);

  return sub_1979DB334(v4);
}

uint64_t sub_1979DD684()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 232) = v0;

  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1979DD77C()
{
  OUTLINED_FUNCTION_9();
  memcpy(*(v0 + 216), (v0 + 16), 0xC8uLL);
  OUTLINED_FUNCTION_15();

  return v1();
}

uint64_t ModelXPCSender.fetchModelInstance(session:)()
{
  OUTLINED_FUNCTION_9();
  v1[12] = v2;
  v1[13] = v0;
  v1[11] = v3;
  ModelInstance = type metadata accessor for ModelXPCRequest.FetchModelInstance(0);
  OUTLINED_FUNCTION_28(ModelInstance);
  v1[14] = OUTLINED_FUNCTION_78_0();
  v5 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1979DD87C()
{
  OUTLINED_FUNCTION_9();
  sub_197944528();
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 120) = v1;
  *v1 = v2;
  v1[1] = sub_1979DD928;
  v3 = *(v0 + 112);

  return sub_1979DB984(v0 + 16, v3);
}

uint64_t sub_1979DD928()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 128) = v0;

  OUTLINED_FUNCTION_46_0();
  sub_1979636E8(*(v4 + 112), type metadata accessor for ModelXPCRequest.FetchModelInstance);
  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1979DDA58()
{
  OUTLINED_FUNCTION_9();
  memcpy(*(v0 + 88), (v0 + 16), 0x41uLL);

  OUTLINED_FUNCTION_15();

  return v1();
}

uint64_t sub_1979DDAC4()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t ModelXPCSender.setAssetsHaveUpdated(_:)()
{
  OUTLINED_FUNCTION_9();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_43(v3);

  return sub_1979DBA38(v5, v1);
}

uint64_t ModelXPCSender.ignoreAssetUpdates(_:)()
{
  OUTLINED_FUNCTION_9();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_43(v3);

  return sub_1979DBAEC(v5, v1);
}

uint64_t ModelXPCSender.startMonitoringInferences(endpoint:)()
{
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_87_2(v1);
  started = type metadata accessor for ModelXPCRequest.StartMonitoringInferences(v2);
  OUTLINED_FUNCTION_28(started);
  *(v0 + 32) = OUTLINED_FUNCTION_78_0();
  v4 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1979DDCA4()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  sub_197A876D8();
  OUTLINED_FUNCTION_6();
  (*(v3 + 16))(v1, v2);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_139(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_177_0(v5);

  return sub_1979DB280(v7, v8);
}

uint64_t sub_1979DDD60()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  *(v6 + 48) = v0;

  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t ModelXPCSender.deinit()
{
  v1 = OBJC_IVAR____TtC20ModelManagerServices14ModelXPCSender_logHandle;
  sub_197A87608();
  OUTLINED_FUNCTION_6();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t ModelXPCSender.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC20ModelManagerServices14ModelXPCSender_logHandle;
  sub_197A87608();
  OUTLINED_FUNCTION_6();
  (*(v2 + 8))(v0 + v1);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1979DDF8C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960FB0;

  return ModelXPCSender.executeRequest(taskPriority:metadata:)();
}

uint64_t sub_1979DE050()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960FB0;

  return ModelXPCSender.executeInputStreamRequest(taskPriority:metadata:)();
}

uint64_t sub_1979DE114()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960FB0;

  return ModelXPCSender.cancelRequest(id:sessionID:)();
}

uint64_t sub_1979DE1BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960FB0;

  return ModelXPCSender.acquireAssertion(assertion:)();
}

uint64_t sub_1979DE254()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960FB0;

  return ModelXPCSender.releaseAssertion(id:)();
}

uint64_t sub_1979DE2EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197A05FA4;

  return ModelXPCSender.fetchAllAssertions()();
}

uint64_t sub_1979DE37C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960FB0;

  return ModelXPCSender.restoreAssertions(_:)();
}

uint64_t sub_1979DE414()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1979DE4A4;

  return ModelXPCSender.fetchAllAssetInfo()();
}

uint64_t sub_1979DE4A4()
{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_21();
  v4 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_1979DE594()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197A05FA4;

  return ModelXPCSender.fetchDynamicAssetInfo()();
}

uint64_t sub_1979DE624()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960FB0;

  return ModelXPCSender.fetchEffectivePolicy()();
}

uint64_t sub_1979DE6C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960FB0;

  return ModelXPCSender.fetchPolicy(_:)();
}

uint64_t sub_1979DE774()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960FB0;

  return ModelXPCSender.fetchAvailability()();
}

uint64_t sub_1979DE810(uint64_t a1, uint64_t a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_197960FB0;

  return ModelXPCSender.loadAssetBundle(_:dynamicMode:)(a1, a2, a3);
}

uint64_t sub_1979DE8C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960FB0;

  return ModelXPCSender.holdAssetBundle(_:)();
}

uint64_t sub_1979DE968()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960FB0;

  return ModelXPCSender.dumpState()();
}

uint64_t sub_1979DEA04()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960E38;

  return ModelXPCSender.fetchModelInstance(session:)();
}

uint64_t sub_1979DEAB0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960FB0;

  return ModelXPCSender.setAssetsHaveUpdated(_:)();
}

uint64_t sub_1979DEB48()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960FB0;

  return ModelXPCSender.ignoreAssetUpdates(_:)();
}

uint64_t sub_1979DEBE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960FB0;

  return ModelXPCSender.startMonitoringInferences(endpoint:)();
}

uint64_t sub_1979DEC78(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_197A87298();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = type metadata accessor for ModelManagerError(0);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = type metadata accessor for ModelXPCRequest(0);
  v3[16] = swift_task_alloc();
  v3[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49BC8, &qword_197A92C38);
  v3[18] = swift_task_alloc();
  v3[19] = type metadata accessor for IPCSessionWrapper(0);
  v3[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A8, &qword_197A92B00);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1979DEE70, v2, 0);
}

uint64_t sub_1979DEE70()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_99_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_88_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_30_7(v1);

  return sub_19794ECC8();
}

uint64_t sub_1979DEEF4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 192) = v0;

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1979DF008()
{
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_24_6();
  sub_197947900(v0, &qword_1EAF499A8);
  v4 = OUTLINED_FUNCTION_21_5();
  v5(v4);
  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_100_0();
  swift_storeEnumTagMultiPayload();
  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_181(v6);
  OUTLINED_FUNCTION_5_7();
  sub_197955F04(v7, v3);
  OUTLINED_FUNCTION_10_10(&qword_1ED880268);
  sub_197A04EE0();
  OUTLINED_FUNCTION_57_2();
  *v2 = v8;
  v2[1] = sub_1979DF130;
  OUTLINED_FUNCTION_8_7(v9, *(v1 + 144));
  OUTLINED_FUNCTION_169_0();

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

uint64_t sub_1979DF130()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 208) = v0;

  OUTLINED_FUNCTION_52_5();
  sub_1979636E8(*(v4 + 128), type metadata accessor for ModelXPCRequest);
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1979DF270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_47_4();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (OUTLINED_FUNCTION_39_5(v20))
  {
    OUTLINED_FUNCTION_132_1();
    OUTLINED_FUNCTION_116();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_134_2();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v60 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v60, qword_1ED87FB48);
        sub_197A878A8();
        v61 = sub_197A875E8();
        sub_197A87D68();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v62, v63);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v64, v65, "ModelManager received unentitled request. Expected entitlement %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_155();
        OUTLINED_FUNCTION_0_14();
        v68 = sub_197955F04(v66, v67);
        v69 = OUTLINED_FUNCTION_85_3(v68);
        v71 = OUTLINED_FUNCTION_38_5(v69, v70);
        OUTLINED_FUNCTION_211(v71);
        break;
      case 5:
        OUTLINED_FUNCTION_134_2();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v52 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v52, qword_1ED87FB48);
        sub_197A878A8();
        v53 = sub_197A875E8();
        sub_197A87D78();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v54, v55);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v56, v57, "IPC Connection errors, evict session to create new session on next connection %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_153_1();
        sub_197944528();
        OUTLINED_FUNCTION_15_6();
        if (v59)
        {
          sub_197947900(v58, &qword_1EAF499A8);
        }

        else
        {
          v88 = OUTLINED_FUNCTION_9_5();
          v89(v88);
          sub_197A21F90();
          v90 = OUTLINED_FUNCTION_42();
          v91(v90);
        }

        OUTLINED_FUNCTION_152();
        OUTLINED_FUNCTION_0_14();
        v94 = sub_197955F04(v92, v93);
        v95 = OUTLINED_FUNCTION_84_3(v94);
        v97 = OUTLINED_FUNCTION_40_4(v95, v96);
        OUTLINED_FUNCTION_201(v97);
        v36 = v17;
        goto LABEL_35;
      case 31:
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v22 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v22, qword_1ED87FB48);
        sub_197A875E8();
        v23 = sub_197A87D68();
        if (OUTLINED_FUNCTION_65(v23))
        {
          v24 = OUTLINED_FUNCTION_204();
          OUTLINED_FUNCTION_137(v24);
          OUTLINED_FUNCTION_53();
          _os_log_impl(v25, v26, v27, v28, v29, 2u);
          OUTLINED_FUNCTION_42_0();
        }

        OUTLINED_FUNCTION_207();
        OUTLINED_FUNCTION_0_14();
        v32 = sub_197955F04(v30, v31);
        v33 = OUTLINED_FUNCTION_71_5(v32);
        OUTLINED_FUNCTION_27_6(v33, v34);
        v35 = swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_201(v35);
        v36 = v14;
        goto LABEL_35;
      default:
        OUTLINED_FUNCTION_3_7();
        sub_19796361C();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v72 = OUTLINED_FUNCTION_221();
        __swift_project_value_buffer(v72, qword_1ED87FB48);
        OUTLINED_FUNCTION_2_10();
        OUTLINED_FUNCTION_116();
        sub_1979557E8();
        v61 = sub_197A875E8();
        v73 = sub_197A87D58();
        v74 = OUTLINED_FUNCTION_118_1(v73);
        v75 = *(v16 + 88);
        if (v74)
        {
          OUTLINED_FUNCTION_131_1();
          OUTLINED_FUNCTION_113();
          OUTLINED_FUNCTION_61_0();
          OUTLINED_FUNCTION_124_2();
          *v15 = 138412546;
          OUTLINED_FUNCTION_0_14();
          v78 = sub_197955F04(v76, v77);
          OUTLINED_FUNCTION_83_3(v78);
          OUTLINED_FUNCTION_2_10();
          sub_1979557E8();
          _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v75, v79);
          v80 = OUTLINED_FUNCTION_16_6();
          *(v16 + 24) = type metadata accessor for ModelXPCRequest.AcquireRequest(v80);
          v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49BD0, &qword_197A92C40);
          v82 = OUTLINED_FUNCTION_218(v81);
          OUTLINED_FUNCTION_219(v82, v83, v84, v85);
          OUTLINED_FUNCTION_215();
          *(v15 + 14) = v75;
          OUTLINED_FUNCTION_78_4(&dword_197941000, v86, v87, "Passing along %@ in response to %s");
          sub_197947900(v19, &qword_1EAF48A90);
          OUTLINED_FUNCTION_36_3();
          OUTLINED_FUNCTION_17_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v75, v98);
        }

        OUTLINED_FUNCTION_59_5();
        OUTLINED_FUNCTION_0_14();
        v101 = sub_197955F04(v99, v100);
        v102 = OUTLINED_FUNCTION_71_5(v101);
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        a9 = v102;
        swift_willThrow();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v14, v103);
        break;
    }

    v36 = v61;
LABEL_35:
    sub_197947900(v36, &qword_1EAF499A8);

    goto LABEL_36;
  }

  if (qword_1ED87FC08 != -1)
  {
    OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
  }

  v37 = sub_197A87608();
  v38 = OUTLINED_FUNCTION_37_4(v37, qword_1ED87FB48);
  MEMORY[0x19A8EBBD0](v38);
  sub_197A875E8();
  sub_197A87D68();
  OUTLINED_FUNCTION_214();
  if (OUTLINED_FUNCTION_110_1())
  {
    OUTLINED_FUNCTION_56();
    v39 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_212(5.7779e-34);
    v40 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_135_1(v40);
    OUTLINED_FUNCTION_53();
    _os_log_impl(v41, v42, v43, v44, v45, 0xCu);
    sub_197947900(v39, &qword_1EAF48A90);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_42_0();
  }

  OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_0_14();
  v48 = sub_197955F04(v46, v47);
  v49 = OUTLINED_FUNCTION_71_5(v48);
  OUTLINED_FUNCTION_27_6(v49, v50);
  v51 = swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_201(v51);

  sub_197947900(v14, &qword_1EAF499A8);
LABEL_36:
  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_36_4();
  OUTLINED_FUNCTION_142();

  return v105(v104, v105, v106, v107, v108, v109, v110, v111, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1979DFFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_4_6();
  sub_1979636E8(v20, v21);
  OUTLINED_FUNCTION_45_4();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (OUTLINED_FUNCTION_39_5(v22))
  {
    OUTLINED_FUNCTION_132_1();
    OUTLINED_FUNCTION_116();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_134_2();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v62 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v62, qword_1ED87FB48);
        sub_197A878A8();
        v63 = sub_197A875E8();
        sub_197A87D68();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v64, v65);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v66, v67, "ModelManager received unentitled request. Expected entitlement %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_155();
        OUTLINED_FUNCTION_0_14();
        v70 = sub_197955F04(v68, v69);
        v71 = OUTLINED_FUNCTION_85_3(v70);
        v73 = OUTLINED_FUNCTION_38_5(v71, v72);
        OUTLINED_FUNCTION_211(v73);
        break;
      case 5:
        OUTLINED_FUNCTION_134_2();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v54 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v54, qword_1ED87FB48);
        sub_197A878A8();
        v55 = sub_197A875E8();
        sub_197A87D78();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v56, v57);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v58, v59, "IPC Connection errors, evict session to create new session on next connection %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_153_1();
        sub_197944528();
        OUTLINED_FUNCTION_15_6();
        if (v61)
        {
          sub_197947900(v60, &qword_1EAF499A8);
        }

        else
        {
          v90 = OUTLINED_FUNCTION_9_5();
          v91(v90);
          sub_197A21F90();
          v92 = OUTLINED_FUNCTION_42();
          v93(v92);
        }

        OUTLINED_FUNCTION_152();
        OUTLINED_FUNCTION_0_14();
        v96 = sub_197955F04(v94, v95);
        v97 = OUTLINED_FUNCTION_84_3(v96);
        v99 = OUTLINED_FUNCTION_40_4(v97, v98);
        OUTLINED_FUNCTION_201(v99);
        v38 = v17;
        goto LABEL_35;
      case 31:
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v24 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v24, qword_1ED87FB48);
        sub_197A875E8();
        v25 = sub_197A87D68();
        if (OUTLINED_FUNCTION_65(v25))
        {
          v26 = OUTLINED_FUNCTION_204();
          OUTLINED_FUNCTION_137(v26);
          OUTLINED_FUNCTION_53();
          _os_log_impl(v27, v28, v29, v30, v31, 2u);
          OUTLINED_FUNCTION_42_0();
        }

        OUTLINED_FUNCTION_207();
        OUTLINED_FUNCTION_0_14();
        v34 = sub_197955F04(v32, v33);
        v35 = OUTLINED_FUNCTION_71_5(v34);
        OUTLINED_FUNCTION_27_6(v35, v36);
        v37 = swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_201(v37);
        v38 = v14;
        goto LABEL_35;
      default:
        OUTLINED_FUNCTION_3_7();
        sub_19796361C();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v74 = OUTLINED_FUNCTION_221();
        __swift_project_value_buffer(v74, qword_1ED87FB48);
        OUTLINED_FUNCTION_2_10();
        OUTLINED_FUNCTION_116();
        sub_1979557E8();
        v63 = sub_197A875E8();
        v75 = sub_197A87D58();
        v76 = OUTLINED_FUNCTION_118_1(v75);
        v77 = *(v16 + 88);
        if (v76)
        {
          OUTLINED_FUNCTION_131_1();
          OUTLINED_FUNCTION_113();
          OUTLINED_FUNCTION_61_0();
          OUTLINED_FUNCTION_124_2();
          *v15 = 138412546;
          OUTLINED_FUNCTION_0_14();
          v80 = sub_197955F04(v78, v79);
          OUTLINED_FUNCTION_83_3(v80);
          OUTLINED_FUNCTION_2_10();
          sub_1979557E8();
          _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v77, v81);
          v82 = OUTLINED_FUNCTION_16_6();
          *(v16 + 24) = type metadata accessor for ModelXPCRequest.AcquireRequest(v82);
          v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49BD0, &qword_197A92C40);
          v84 = OUTLINED_FUNCTION_218(v83);
          OUTLINED_FUNCTION_219(v84, v85, v86, v87);
          OUTLINED_FUNCTION_215();
          *(v15 + 14) = v77;
          OUTLINED_FUNCTION_78_4(&dword_197941000, v88, v89, "Passing along %@ in response to %s");
          sub_197947900(v19, &qword_1EAF48A90);
          OUTLINED_FUNCTION_36_3();
          OUTLINED_FUNCTION_17_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v77, v100);
        }

        OUTLINED_FUNCTION_59_5();
        OUTLINED_FUNCTION_0_14();
        v103 = sub_197955F04(v101, v102);
        v104 = OUTLINED_FUNCTION_71_5(v103);
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        a9 = v104;
        swift_willThrow();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v14, v105);
        break;
    }

    v38 = v63;
LABEL_35:
    sub_197947900(v38, &qword_1EAF499A8);

    goto LABEL_36;
  }

  if (qword_1ED87FC08 != -1)
  {
    OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
  }

  v39 = sub_197A87608();
  v40 = OUTLINED_FUNCTION_37_4(v39, qword_1ED87FB48);
  MEMORY[0x19A8EBBD0](v40);
  sub_197A875E8();
  sub_197A87D68();
  OUTLINED_FUNCTION_214();
  if (OUTLINED_FUNCTION_110_1())
  {
    OUTLINED_FUNCTION_56();
    v41 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_212(5.7779e-34);
    v42 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_135_1(v42);
    OUTLINED_FUNCTION_53();
    _os_log_impl(v43, v44, v45, v46, v47, 0xCu);
    sub_197947900(v41, &qword_1EAF48A90);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_42_0();
  }

  OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_0_14();
  v50 = sub_197955F04(v48, v49);
  v51 = OUTLINED_FUNCTION_71_5(v50);
  OUTLINED_FUNCTION_27_6(v51, v52);
  v53 = swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_201(v53);

  sub_197947900(v14, &qword_1EAF499A8);
LABEL_36:
  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_36_4();
  OUTLINED_FUNCTION_142();

  return v107(v106, v107, v108, v109, v110, v111, v112, v113, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1979E0664(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_197A87298();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = type metadata accessor for ModelManagerError(0);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = type metadata accessor for ModelXPCRequest(0);
  v3[16] = swift_task_alloc();
  v3[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49BB8, &qword_197A92C20);
  v3[18] = swift_task_alloc();
  v3[19] = type metadata accessor for IPCSessionWrapper(0);
  v3[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A8, &qword_197A92B00);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1979E085C, v2, 0);
}

uint64_t sub_1979E085C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_99_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_88_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_30_7(v1);

  return sub_19794ECC8();
}

uint64_t sub_1979E08E0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 192) = v0;

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1979E09F4()
{
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_24_6();
  sub_197947900(v0, &qword_1EAF499A8);
  v4 = OUTLINED_FUNCTION_21_5();
  v5(v4);
  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_100_0();
  swift_storeEnumTagMultiPayload();
  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_181(v6);
  OUTLINED_FUNCTION_5_7();
  sub_197955F04(v7, v3);
  OUTLINED_FUNCTION_10_10(&qword_1ED880268);
  sub_197A04D34();
  OUTLINED_FUNCTION_57_2();
  *v2 = v8;
  v2[1] = sub_1979E0B1C;
  OUTLINED_FUNCTION_8_7(v9, *(v1 + 144));
  OUTLINED_FUNCTION_169_0();

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

uint64_t sub_1979E0B1C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 208) = v0;

  OUTLINED_FUNCTION_52_5();
  sub_1979636E8(*(v4 + 128), type metadata accessor for ModelXPCRequest);
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1979E0C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_47_4();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (OUTLINED_FUNCTION_39_5(v20))
  {
    OUTLINED_FUNCTION_132_1();
    OUTLINED_FUNCTION_116();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_134_2();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v60 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v60, qword_1ED87FB48);
        sub_197A878A8();
        v61 = sub_197A875E8();
        sub_197A87D68();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v62, v63);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v64, v65, "ModelManager received unentitled request. Expected entitlement %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_155();
        OUTLINED_FUNCTION_0_14();
        v68 = sub_197955F04(v66, v67);
        v69 = OUTLINED_FUNCTION_85_3(v68);
        v71 = OUTLINED_FUNCTION_38_5(v69, v70);
        OUTLINED_FUNCTION_211(v71);
        break;
      case 5:
        OUTLINED_FUNCTION_134_2();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v52 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v52, qword_1ED87FB48);
        sub_197A878A8();
        v53 = sub_197A875E8();
        sub_197A87D78();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v54, v55);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v56, v57, "IPC Connection errors, evict session to create new session on next connection %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_153_1();
        sub_197944528();
        OUTLINED_FUNCTION_15_6();
        if (v59)
        {
          sub_197947900(v58, &qword_1EAF499A8);
        }

        else
        {
          v88 = OUTLINED_FUNCTION_9_5();
          v89(v88);
          sub_197A21F90();
          v90 = OUTLINED_FUNCTION_42();
          v91(v90);
        }

        OUTLINED_FUNCTION_152();
        OUTLINED_FUNCTION_0_14();
        v94 = sub_197955F04(v92, v93);
        v95 = OUTLINED_FUNCTION_84_3(v94);
        v97 = OUTLINED_FUNCTION_40_4(v95, v96);
        OUTLINED_FUNCTION_201(v97);
        v36 = v17;
        goto LABEL_35;
      case 31:
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v22 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v22, qword_1ED87FB48);
        sub_197A875E8();
        v23 = sub_197A87D68();
        if (OUTLINED_FUNCTION_65(v23))
        {
          v24 = OUTLINED_FUNCTION_204();
          OUTLINED_FUNCTION_137(v24);
          OUTLINED_FUNCTION_53();
          _os_log_impl(v25, v26, v27, v28, v29, 2u);
          OUTLINED_FUNCTION_42_0();
        }

        OUTLINED_FUNCTION_207();
        OUTLINED_FUNCTION_0_14();
        v32 = sub_197955F04(v30, v31);
        v33 = OUTLINED_FUNCTION_71_5(v32);
        OUTLINED_FUNCTION_27_6(v33, v34);
        v35 = swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_201(v35);
        v36 = v14;
        goto LABEL_35;
      default:
        OUTLINED_FUNCTION_3_7();
        sub_19796361C();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v72 = OUTLINED_FUNCTION_221();
        __swift_project_value_buffer(v72, qword_1ED87FB48);
        OUTLINED_FUNCTION_2_10();
        OUTLINED_FUNCTION_116();
        sub_1979557E8();
        v61 = sub_197A875E8();
        v73 = sub_197A87D58();
        v74 = OUTLINED_FUNCTION_118_1(v73);
        v75 = *(v16 + 88);
        if (v74)
        {
          OUTLINED_FUNCTION_131_1();
          OUTLINED_FUNCTION_113();
          OUTLINED_FUNCTION_61_0();
          OUTLINED_FUNCTION_124_2();
          *v15 = 138412546;
          OUTLINED_FUNCTION_0_14();
          v78 = sub_197955F04(v76, v77);
          OUTLINED_FUNCTION_83_3(v78);
          OUTLINED_FUNCTION_2_10();
          sub_1979557E8();
          _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v75, v79);
          v80 = OUTLINED_FUNCTION_16_6();
          *(v16 + 24) = type metadata accessor for ModelXPCRequest.ReleaseRequest(v80);
          v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49BC0, &qword_197A92C28);
          v82 = OUTLINED_FUNCTION_218(v81);
          OUTLINED_FUNCTION_219(v82, v83, v84, v85);
          OUTLINED_FUNCTION_215();
          *(v15 + 14) = v75;
          OUTLINED_FUNCTION_78_4(&dword_197941000, v86, v87, "Passing along %@ in response to %s");
          sub_197947900(v19, &qword_1EAF48A90);
          OUTLINED_FUNCTION_36_3();
          OUTLINED_FUNCTION_17_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v75, v98);
        }

        OUTLINED_FUNCTION_59_5();
        OUTLINED_FUNCTION_0_14();
        v101 = sub_197955F04(v99, v100);
        v102 = OUTLINED_FUNCTION_71_5(v101);
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        a9 = v102;
        swift_willThrow();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v14, v103);
        break;
    }

    v36 = v61;
LABEL_35:
    sub_197947900(v36, &qword_1EAF499A8);

    goto LABEL_36;
  }

  if (qword_1ED87FC08 != -1)
  {
    OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
  }

  v37 = sub_197A87608();
  v38 = OUTLINED_FUNCTION_37_4(v37, qword_1ED87FB48);
  MEMORY[0x19A8EBBD0](v38);
  sub_197A875E8();
  sub_197A87D68();
  OUTLINED_FUNCTION_214();
  if (OUTLINED_FUNCTION_110_1())
  {
    OUTLINED_FUNCTION_56();
    v39 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_212(5.7779e-34);
    v40 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_135_1(v40);
    OUTLINED_FUNCTION_53();
    _os_log_impl(v41, v42, v43, v44, v45, 0xCu);
    sub_197947900(v39, &qword_1EAF48A90);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_42_0();
  }

  OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_0_14();
  v48 = sub_197955F04(v46, v47);
  v49 = OUTLINED_FUNCTION_71_5(v48);
  OUTLINED_FUNCTION_27_6(v49, v50);
  v51 = swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_201(v51);

  sub_197947900(v14, &qword_1EAF499A8);
LABEL_36:
  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_36_4();
  OUTLINED_FUNCTION_142();

  return v105(v104, v105, v106, v107, v108, v109, v110, v111, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1979E19A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_4_6();
  sub_1979636E8(v20, v21);
  OUTLINED_FUNCTION_45_4();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (OUTLINED_FUNCTION_39_5(v22))
  {
    OUTLINED_FUNCTION_132_1();
    OUTLINED_FUNCTION_116();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_134_2();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v62 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v62, qword_1ED87FB48);
        sub_197A878A8();
        v63 = sub_197A875E8();
        sub_197A87D68();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v64, v65);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v66, v67, "ModelManager received unentitled request. Expected entitlement %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_155();
        OUTLINED_FUNCTION_0_14();
        v70 = sub_197955F04(v68, v69);
        v71 = OUTLINED_FUNCTION_85_3(v70);
        v73 = OUTLINED_FUNCTION_38_5(v71, v72);
        OUTLINED_FUNCTION_211(v73);
        break;
      case 5:
        OUTLINED_FUNCTION_134_2();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v54 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v54, qword_1ED87FB48);
        sub_197A878A8();
        v55 = sub_197A875E8();
        sub_197A87D78();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v56, v57);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v58, v59, "IPC Connection errors, evict session to create new session on next connection %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_153_1();
        sub_197944528();
        OUTLINED_FUNCTION_15_6();
        if (v61)
        {
          sub_197947900(v60, &qword_1EAF499A8);
        }

        else
        {
          v90 = OUTLINED_FUNCTION_9_5();
          v91(v90);
          sub_197A21F90();
          v92 = OUTLINED_FUNCTION_42();
          v93(v92);
        }

        OUTLINED_FUNCTION_152();
        OUTLINED_FUNCTION_0_14();
        v96 = sub_197955F04(v94, v95);
        v97 = OUTLINED_FUNCTION_84_3(v96);
        v99 = OUTLINED_FUNCTION_40_4(v97, v98);
        OUTLINED_FUNCTION_201(v99);
        v38 = v17;
        goto LABEL_35;
      case 31:
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v24 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v24, qword_1ED87FB48);
        sub_197A875E8();
        v25 = sub_197A87D68();
        if (OUTLINED_FUNCTION_65(v25))
        {
          v26 = OUTLINED_FUNCTION_204();
          OUTLINED_FUNCTION_137(v26);
          OUTLINED_FUNCTION_53();
          _os_log_impl(v27, v28, v29, v30, v31, 2u);
          OUTLINED_FUNCTION_42_0();
        }

        OUTLINED_FUNCTION_207();
        OUTLINED_FUNCTION_0_14();
        v34 = sub_197955F04(v32, v33);
        v35 = OUTLINED_FUNCTION_71_5(v34);
        OUTLINED_FUNCTION_27_6(v35, v36);
        v37 = swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_201(v37);
        v38 = v14;
        goto LABEL_35;
      default:
        OUTLINED_FUNCTION_3_7();
        sub_19796361C();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v74 = OUTLINED_FUNCTION_221();
        __swift_project_value_buffer(v74, qword_1ED87FB48);
        OUTLINED_FUNCTION_2_10();
        OUTLINED_FUNCTION_116();
        sub_1979557E8();
        v63 = sub_197A875E8();
        v75 = sub_197A87D58();
        v76 = OUTLINED_FUNCTION_118_1(v75);
        v77 = *(v16 + 88);
        if (v76)
        {
          OUTLINED_FUNCTION_131_1();
          OUTLINED_FUNCTION_113();
          OUTLINED_FUNCTION_61_0();
          OUTLINED_FUNCTION_124_2();
          *v15 = 138412546;
          OUTLINED_FUNCTION_0_14();
          v80 = sub_197955F04(v78, v79);
          OUTLINED_FUNCTION_83_3(v80);
          OUTLINED_FUNCTION_2_10();
          sub_1979557E8();
          _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v77, v81);
          v82 = OUTLINED_FUNCTION_16_6();
          *(v16 + 24) = type metadata accessor for ModelXPCRequest.ReleaseRequest(v82);
          v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49BC0, &qword_197A92C28);
          v84 = OUTLINED_FUNCTION_218(v83);
          OUTLINED_FUNCTION_219(v84, v85, v86, v87);
          OUTLINED_FUNCTION_215();
          *(v15 + 14) = v77;
          OUTLINED_FUNCTION_78_4(&dword_197941000, v88, v89, "Passing along %@ in response to %s");
          sub_197947900(v19, &qword_1EAF48A90);
          OUTLINED_FUNCTION_36_3();
          OUTLINED_FUNCTION_17_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v77, v100);
        }

        OUTLINED_FUNCTION_59_5();
        OUTLINED_FUNCTION_0_14();
        v103 = sub_197955F04(v101, v102);
        v104 = OUTLINED_FUNCTION_71_5(v103);
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        a9 = v104;
        swift_willThrow();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v14, v105);
        break;
    }

    v38 = v63;
LABEL_35:
    sub_197947900(v38, &qword_1EAF499A8);

    goto LABEL_36;
  }

  if (qword_1ED87FC08 != -1)
  {
    OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
  }

  v39 = sub_197A87608();
  v40 = OUTLINED_FUNCTION_37_4(v39, qword_1ED87FB48);
  MEMORY[0x19A8EBBD0](v40);
  sub_197A875E8();
  sub_197A87D68();
  OUTLINED_FUNCTION_214();
  if (OUTLINED_FUNCTION_110_1())
  {
    OUTLINED_FUNCTION_56();
    v41 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_212(5.7779e-34);
    v42 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_135_1(v42);
    OUTLINED_FUNCTION_53();
    _os_log_impl(v43, v44, v45, v46, v47, 0xCu);
    sub_197947900(v41, &qword_1EAF48A90);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_42_0();
  }

  OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_0_14();
  v50 = sub_197955F04(v48, v49);
  v51 = OUTLINED_FUNCTION_71_5(v50);
  OUTLINED_FUNCTION_27_6(v51, v52);
  v53 = swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_201(v53);

  sub_197947900(v14, &qword_1EAF499A8);
LABEL_36:
  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_36_4();
  OUTLINED_FUNCTION_142();

  return v107(v106, v107, v108, v109, v110, v111, v112, v113, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1979E2050(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_197A87298();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = type metadata accessor for ModelManagerError(0);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = type metadata accessor for ModelXPCRequest(0);
  v2[15] = swift_task_alloc();
  v2[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49B90, &qword_197A92C08);
  v2[17] = swift_task_alloc();
  v2[18] = type metadata accessor for IPCSessionWrapper(0);
  v2[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A8, &qword_197A92B00);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1979E2244, v1, 0);
}

uint64_t sub_1979E2244()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_129_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_105_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_70_4(v1);

  return sub_19794ECC8();
}

uint64_t sub_1979E22C8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 184) = v0;

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1979E23DC()
{
  OUTLINED_FUNCTION_246();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_69_4();
  sub_197947900(v0, &qword_1EAF499A8);
  v4 = OUTLINED_FUNCTION_34_5();
  v5(v4);
  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_100_0();
  swift_storeEnumTagMultiPayload();
  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_216(v6);
  OUTLINED_FUNCTION_5_7();
  sub_197955F04(v7, v3);
  OUTLINED_FUNCTION_10_10(&qword_1ED880268);
  sub_197A04B88();
  OUTLINED_FUNCTION_57_2();
  *v2 = v8;
  v2[1] = sub_1979E24F0;
  OUTLINED_FUNCTION_8_7(v9, *(v1 + 136));
  OUTLINED_FUNCTION_191();

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

uint64_t sub_1979E24F0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 200) = v0;

  OUTLINED_FUNCTION_52_5();
  sub_1979636E8(*(v4 + 120), type metadata accessor for ModelXPCRequest);
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1979E2630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  v19 = *(v16 + 184);
  OUTLINED_FUNCTION_64_5();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (OUTLINED_FUNCTION_39_5(v20))
  {
    OUTLINED_FUNCTION_140_1();
    OUTLINED_FUNCTION_116();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_144_1();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v60 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v60, qword_1ED87FB48);
        sub_197A878A8();
        v61 = sub_197A875E8();
        sub_197A87D68();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v17 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v62, v63);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v64, v65, "ModelManager received unentitled request. Expected entitlement %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_175();
        OUTLINED_FUNCTION_0_14();
        v68 = sub_197955F04(v66, v67);
        v69 = OUTLINED_FUNCTION_85_3(v68);
        v71 = OUTLINED_FUNCTION_38_5(v69, v70);
        OUTLINED_FUNCTION_211(v71);
        break;
      case 5:
        OUTLINED_FUNCTION_144_1();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v52 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v52, qword_1ED87FB48);
        sub_197A878A8();
        v53 = sub_197A875E8();
        sub_197A87D78();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v17 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v54, v55);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v56, v57, "IPC Connection errors, evict session to create new session on next connection %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_173();
        sub_197944528();
        OUTLINED_FUNCTION_20_7();
        if (v59)
        {
          sub_197947900(v58, &qword_1EAF499A8);
        }

        else
        {
          v87 = OUTLINED_FUNCTION_12_6();
          v88(v87);
          sub_197A21F90();
          v89 = OUTLINED_FUNCTION_42();
          v90(v89);
        }

        OUTLINED_FUNCTION_172();
        OUTLINED_FUNCTION_0_14();
        v93 = sub_197955F04(v91, v92);
        v94 = OUTLINED_FUNCTION_84_3(v93);
        v96 = OUTLINED_FUNCTION_40_4(v94, v95);
        OUTLINED_FUNCTION_201(v96);
        v36 = v19;
        goto LABEL_35;
      case 31:
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v22 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v22, qword_1ED87FB48);
        sub_197A875E8();
        v23 = sub_197A87D68();
        if (OUTLINED_FUNCTION_65(v23))
        {
          v24 = OUTLINED_FUNCTION_204();
          OUTLINED_FUNCTION_137(v24);
          OUTLINED_FUNCTION_53();
          _os_log_impl(v25, v26, v27, v28, v29, 2u);
          OUTLINED_FUNCTION_42_0();
        }

        OUTLINED_FUNCTION_222();
        OUTLINED_FUNCTION_0_14();
        v32 = sub_197955F04(v30, v31);
        v33 = OUTLINED_FUNCTION_71_5(v32);
        OUTLINED_FUNCTION_27_6(v33, v34);
        v35 = swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_201(v35);
        v36 = v14;
        goto LABEL_35;
      default:
        OUTLINED_FUNCTION_3_7();
        sub_19796361C();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v72 = OUTLINED_FUNCTION_225();
        __swift_project_value_buffer(v72, qword_1ED87FB48);
        OUTLINED_FUNCTION_2_10();
        OUTLINED_FUNCTION_116();
        sub_1979557E8();
        v61 = sub_197A875E8();
        v73 = sub_197A87D58();
        v74 = OUTLINED_FUNCTION_118_1(v73);
        v75 = *(v16 + 80);
        if (v74)
        {
          OUTLINED_FUNCTION_139_0();
          OUTLINED_FUNCTION_113();
          OUTLINED_FUNCTION_61_0();
          OUTLINED_FUNCTION_124_2();
          *v15 = 138412546;
          OUTLINED_FUNCTION_0_14();
          v78 = sub_197955F04(v76, v77);
          OUTLINED_FUNCTION_83_3(v78);
          OUTLINED_FUNCTION_2_10();
          sub_1979557E8();
          _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v75, v79);
          OUTLINED_FUNCTION_19_8();
          *(v16 + 24) = &type metadata for ModelXPCRequest.FetchAssertionsRequest;
          v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49B98, &qword_197A92C10);
          v81 = OUTLINED_FUNCTION_218(v80);
          OUTLINED_FUNCTION_219(v81, v82, v83, v84);
          OUTLINED_FUNCTION_215();
          *(v15 + 14) = v75;
          OUTLINED_FUNCTION_78_4(&dword_197941000, v85, v86, "Passing along %@ in response to %s");
          sub_197947900(v18, &qword_1EAF48A90);
          OUTLINED_FUNCTION_36_3();
          OUTLINED_FUNCTION_17_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v75, v97);
        }

        OUTLINED_FUNCTION_79_7();
        OUTLINED_FUNCTION_0_14();
        v100 = sub_197955F04(v98, v99);
        v101 = OUTLINED_FUNCTION_71_5(v100);
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        a9 = v101;
        swift_willThrow();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v14, v102);
        break;
    }

    v36 = v61;
LABEL_35:
    sub_197947900(v36, &qword_1EAF499A8);

    goto LABEL_36;
  }

  if (qword_1ED87FC08 != -1)
  {
    OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
  }

  v37 = sub_197A87608();
  v38 = OUTLINED_FUNCTION_37_4(v37, qword_1ED87FB48);
  MEMORY[0x19A8EBBD0](v38);
  sub_197A875E8();
  sub_197A87D68();
  OUTLINED_FUNCTION_214();
  if (OUTLINED_FUNCTION_110_1())
  {
    OUTLINED_FUNCTION_56();
    v39 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_212(5.7779e-34);
    v40 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_135_1(v40);
    OUTLINED_FUNCTION_53();
    _os_log_impl(v41, v42, v43, v44, v45, 0xCu);
    sub_197947900(v39, &qword_1EAF48A90);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_42_0();
  }

  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_0_14();
  v48 = sub_197955F04(v46, v47);
  v49 = OUTLINED_FUNCTION_71_5(v48);
  OUTLINED_FUNCTION_27_6(v49, v50);
  v51 = swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_201(v51);

  sub_197947900(v14, &qword_1EAF499A8);
LABEL_36:
  OUTLINED_FUNCTION_23_6();

  OUTLINED_FUNCTION_36_4();
  OUTLINED_FUNCTION_142();

  return v104(v103, v104, v105, v106, v107, v108, v109, v110, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1979E3390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_4_6();
  sub_1979636E8(v19, v20);
  v21 = *(v16 + 200);
  OUTLINED_FUNCTION_64_5();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (OUTLINED_FUNCTION_39_5(v22))
  {
    OUTLINED_FUNCTION_140_1();
    OUTLINED_FUNCTION_116();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_144_1();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v62 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v62, qword_1ED87FB48);
        sub_197A878A8();
        v63 = sub_197A875E8();
        sub_197A87D68();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v17 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v64, v65);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v66, v67, "ModelManager received unentitled request. Expected entitlement %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_175();
        OUTLINED_FUNCTION_0_14();
        v70 = sub_197955F04(v68, v69);
        v71 = OUTLINED_FUNCTION_85_3(v70);
        v73 = OUTLINED_FUNCTION_38_5(v71, v72);
        OUTLINED_FUNCTION_211(v73);
        break;
      case 5:
        OUTLINED_FUNCTION_144_1();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v54 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v54, qword_1ED87FB48);
        sub_197A878A8();
        v55 = sub_197A875E8();
        sub_197A87D78();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v17 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v56, v57);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v58, v59, "IPC Connection errors, evict session to create new session on next connection %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_173();
        sub_197944528();
        OUTLINED_FUNCTION_20_7();
        if (v61)
        {
          sub_197947900(v60, &qword_1EAF499A8);
        }

        else
        {
          v89 = OUTLINED_FUNCTION_12_6();
          v90(v89);
          sub_197A21F90();
          v91 = OUTLINED_FUNCTION_42();
          v92(v91);
        }

        OUTLINED_FUNCTION_172();
        OUTLINED_FUNCTION_0_14();
        v95 = sub_197955F04(v93, v94);
        v96 = OUTLINED_FUNCTION_84_3(v95);
        v98 = OUTLINED_FUNCTION_40_4(v96, v97);
        OUTLINED_FUNCTION_201(v98);
        v38 = v21;
        goto LABEL_35;
      case 31:
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v24 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v24, qword_1ED87FB48);
        sub_197A875E8();
        v25 = sub_197A87D68();
        if (OUTLINED_FUNCTION_65(v25))
        {
          v26 = OUTLINED_FUNCTION_204();
          OUTLINED_FUNCTION_137(v26);
          OUTLINED_FUNCTION_53();
          _os_log_impl(v27, v28, v29, v30, v31, 2u);
          OUTLINED_FUNCTION_42_0();
        }

        OUTLINED_FUNCTION_222();
        OUTLINED_FUNCTION_0_14();
        v34 = sub_197955F04(v32, v33);
        v35 = OUTLINED_FUNCTION_71_5(v34);
        OUTLINED_FUNCTION_27_6(v35, v36);
        v37 = swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_201(v37);
        v38 = v14;
        goto LABEL_35;
      default:
        OUTLINED_FUNCTION_3_7();
        sub_19796361C();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v74 = OUTLINED_FUNCTION_225();
        __swift_project_value_buffer(v74, qword_1ED87FB48);
        OUTLINED_FUNCTION_2_10();
        OUTLINED_FUNCTION_116();
        sub_1979557E8();
        v63 = sub_197A875E8();
        v75 = sub_197A87D58();
        v76 = OUTLINED_FUNCTION_118_1(v75);
        v77 = *(v16 + 80);
        if (v76)
        {
          OUTLINED_FUNCTION_139_0();
          OUTLINED_FUNCTION_113();
          OUTLINED_FUNCTION_61_0();
          OUTLINED_FUNCTION_124_2();
          *v15 = 138412546;
          OUTLINED_FUNCTION_0_14();
          v80 = sub_197955F04(v78, v79);
          OUTLINED_FUNCTION_83_3(v80);
          OUTLINED_FUNCTION_2_10();
          sub_1979557E8();
          _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v77, v81);
          OUTLINED_FUNCTION_19_8();
          *(v16 + 24) = &type metadata for ModelXPCRequest.FetchAssertionsRequest;
          v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49B98, &qword_197A92C10);
          v83 = OUTLINED_FUNCTION_218(v82);
          OUTLINED_FUNCTION_219(v83, v84, v85, v86);
          OUTLINED_FUNCTION_215();
          *(v15 + 14) = v77;
          OUTLINED_FUNCTION_78_4(&dword_197941000, v87, v88, "Passing along %@ in response to %s");
          sub_197947900(v18, &qword_1EAF48A90);
          OUTLINED_FUNCTION_36_3();
          OUTLINED_FUNCTION_17_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v77, v99);
        }

        OUTLINED_FUNCTION_79_7();
        OUTLINED_FUNCTION_0_14();
        v102 = sub_197955F04(v100, v101);
        v103 = OUTLINED_FUNCTION_71_5(v102);
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        a9 = v103;
        swift_willThrow();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v14, v104);
        break;
    }

    v38 = v63;
LABEL_35:
    sub_197947900(v38, &qword_1EAF499A8);

    goto LABEL_36;
  }

  if (qword_1ED87FC08 != -1)
  {
    OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
  }

  v39 = sub_197A87608();
  v40 = OUTLINED_FUNCTION_37_4(v39, qword_1ED87FB48);
  MEMORY[0x19A8EBBD0](v40);
  sub_197A875E8();
  sub_197A87D68();
  OUTLINED_FUNCTION_214();
  if (OUTLINED_FUNCTION_110_1())
  {
    OUTLINED_FUNCTION_56();
    v41 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_212(5.7779e-34);
    v42 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_135_1(v42);
    OUTLINED_FUNCTION_53();
    _os_log_impl(v43, v44, v45, v46, v47, 0xCu);
    sub_197947900(v41, &qword_1EAF48A90);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_42_0();
  }

  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_0_14();
  v50 = sub_197955F04(v48, v49);
  v51 = OUTLINED_FUNCTION_71_5(v50);
  OUTLINED_FUNCTION_27_6(v51, v52);
  v53 = swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_201(v53);

  sub_197947900(v14, &qword_1EAF499A8);
LABEL_36:
  OUTLINED_FUNCTION_23_6();

  OUTLINED_FUNCTION_36_4();
  OUTLINED_FUNCTION_142();

  return v106(v105, v106, v107, v108, v109, v110, v111, v112, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1979E3A40(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_197A87298();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = type metadata accessor for ModelManagerError(0);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = type metadata accessor for ModelXPCRequest(0);
  v3[16] = swift_task_alloc();
  v3[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49B80, &qword_197A92BF0);
  v3[18] = swift_task_alloc();
  v3[19] = type metadata accessor for IPCSessionWrapper(0);
  v3[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A8, &qword_197A92B00);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1979E3C38, v2, 0);
}

uint64_t sub_1979E3C38()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_99_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_88_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_30_7(v1);

  return sub_19794ECC8();
}

uint64_t sub_1979E3CBC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 192) = v0;

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1979E3DD0()
{
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_24_6();
  sub_197947900(v0, &qword_1EAF499A8);
  v5 = OUTLINED_FUNCTION_21_5();
  v6(v5);
  OUTLINED_FUNCTION_6_7();
  *v2 = v4;
  OUTLINED_FUNCTION_100_0();
  swift_storeEnumTagMultiPayload();
  sub_197A878A8();
  v7 = swift_task_alloc();
  OUTLINED_FUNCTION_181(v7);
  OUTLINED_FUNCTION_5_7();
  sub_197955F04(v8, v3);
  OUTLINED_FUNCTION_10_10(&qword_1ED880268);
  sub_197A049DC();
  OUTLINED_FUNCTION_57_2();
  MEMORY[0xC0] = v9;
  MEMORY[0xC8] = sub_1979E3EF4;
  OUTLINED_FUNCTION_8_7(v10, *(v1 + 144));
  OUTLINED_FUNCTION_169_0();

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

uint64_t sub_1979E3EF4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 208) = v0;

  OUTLINED_FUNCTION_52_5();
  sub_1979636E8(*(v4 + 128), type metadata accessor for ModelXPCRequest);
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1979E4034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_47_4();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (OUTLINED_FUNCTION_39_5(v20))
  {
    OUTLINED_FUNCTION_132_1();
    OUTLINED_FUNCTION_116();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_134_2();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v60 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v60, qword_1ED87FB48);
        sub_197A878A8();
        v61 = sub_197A875E8();
        sub_197A87D68();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v62, v63);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v64, v65, "ModelManager received unentitled request. Expected entitlement %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_155();
        OUTLINED_FUNCTION_0_14();
        v68 = sub_197955F04(v66, v67);
        v69 = OUTLINED_FUNCTION_85_3(v68);
        v71 = OUTLINED_FUNCTION_38_5(v69, v70);
        OUTLINED_FUNCTION_211(v71);
        break;
      case 5:
        OUTLINED_FUNCTION_134_2();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v52 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v52, qword_1ED87FB48);
        sub_197A878A8();
        v53 = sub_197A875E8();
        sub_197A87D78();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v54, v55);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v56, v57, "IPC Connection errors, evict session to create new session on next connection %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_153_1();
        sub_197944528();
        OUTLINED_FUNCTION_15_6();
        if (v59)
        {
          sub_197947900(v58, &qword_1EAF499A8);
        }

        else
        {
          v87 = OUTLINED_FUNCTION_9_5();
          v88(v87);
          sub_197A21F90();
          v89 = OUTLINED_FUNCTION_42();
          v90(v89);
        }

        OUTLINED_FUNCTION_152();
        OUTLINED_FUNCTION_0_14();
        v93 = sub_197955F04(v91, v92);
        v94 = OUTLINED_FUNCTION_84_3(v93);
        v96 = OUTLINED_FUNCTION_40_4(v94, v95);
        OUTLINED_FUNCTION_201(v96);
        v36 = v17;
        goto LABEL_35;
      case 31:
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v22 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v22, qword_1ED87FB48);
        sub_197A875E8();
        v23 = sub_197A87D68();
        if (OUTLINED_FUNCTION_65(v23))
        {
          v24 = OUTLINED_FUNCTION_204();
          OUTLINED_FUNCTION_137(v24);
          OUTLINED_FUNCTION_53();
          _os_log_impl(v25, v26, v27, v28, v29, 2u);
          OUTLINED_FUNCTION_42_0();
        }

        OUTLINED_FUNCTION_207();
        OUTLINED_FUNCTION_0_14();
        v32 = sub_197955F04(v30, v31);
        v33 = OUTLINED_FUNCTION_71_5(v32);
        OUTLINED_FUNCTION_27_6(v33, v34);
        v35 = swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_201(v35);
        v36 = v14;
        goto LABEL_35;
      default:
        OUTLINED_FUNCTION_3_7();
        sub_19796361C();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v72 = OUTLINED_FUNCTION_221();
        __swift_project_value_buffer(v72, qword_1ED87FB48);
        OUTLINED_FUNCTION_2_10();
        OUTLINED_FUNCTION_116();
        sub_1979557E8();
        v61 = sub_197A875E8();
        v73 = sub_197A87D58();
        v74 = OUTLINED_FUNCTION_118_1(v73);
        v75 = *(v16 + 88);
        if (v74)
        {
          OUTLINED_FUNCTION_131_1();
          OUTLINED_FUNCTION_113();
          OUTLINED_FUNCTION_61_0();
          OUTLINED_FUNCTION_124_2();
          *v15 = 138412546;
          OUTLINED_FUNCTION_0_14();
          v78 = sub_197955F04(v76, v77);
          OUTLINED_FUNCTION_83_3(v78);
          OUTLINED_FUNCTION_2_10();
          sub_1979557E8();
          _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v75, v79);
          OUTLINED_FUNCTION_19_8();
          *(v16 + 24) = &type metadata for ModelXPCRequest.RestoreAssertionsRequest;
          v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49B88, &qword_197A92BF8);
          v81 = OUTLINED_FUNCTION_218(v80);
          OUTLINED_FUNCTION_219(v81, v82, v83, v84);
          OUTLINED_FUNCTION_215();
          *(v15 + 14) = v75;
          OUTLINED_FUNCTION_78_4(&dword_197941000, v85, v86, "Passing along %@ in response to %s");
          sub_197947900(v19, &qword_1EAF48A90);
          OUTLINED_FUNCTION_36_3();
          OUTLINED_FUNCTION_17_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v75, v97);
        }

        OUTLINED_FUNCTION_59_5();
        OUTLINED_FUNCTION_0_14();
        v100 = sub_197955F04(v98, v99);
        v101 = OUTLINED_FUNCTION_71_5(v100);
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        a9 = v101;
        swift_willThrow();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v14, v102);
        break;
    }

    v36 = v61;
LABEL_35:
    sub_197947900(v36, &qword_1EAF499A8);

    goto LABEL_36;
  }

  if (qword_1ED87FC08 != -1)
  {
    OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
  }

  v37 = sub_197A87608();
  v38 = OUTLINED_FUNCTION_37_4(v37, qword_1ED87FB48);
  MEMORY[0x19A8EBBD0](v38);
  sub_197A875E8();
  sub_197A87D68();
  OUTLINED_FUNCTION_214();
  if (OUTLINED_FUNCTION_110_1())
  {
    OUTLINED_FUNCTION_56();
    v39 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_212(5.7779e-34);
    v40 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_135_1(v40);
    OUTLINED_FUNCTION_53();
    _os_log_impl(v41, v42, v43, v44, v45, 0xCu);
    sub_197947900(v39, &qword_1EAF48A90);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_42_0();
  }

  OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_0_14();
  v48 = sub_197955F04(v46, v47);
  v49 = OUTLINED_FUNCTION_71_5(v48);
  OUTLINED_FUNCTION_27_6(v49, v50);
  v51 = swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_201(v51);

  sub_197947900(v14, &qword_1EAF499A8);
LABEL_36:
  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_36_4();
  OUTLINED_FUNCTION_142();

  return v104(v103, v104, v105, v106, v107, v108, v109, v110, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1979E4D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_4_6();
  sub_1979636E8(v20, v21);
  OUTLINED_FUNCTION_45_4();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (OUTLINED_FUNCTION_39_5(v22))
  {
    OUTLINED_FUNCTION_132_1();
    OUTLINED_FUNCTION_116();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_134_2();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v62 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v62, qword_1ED87FB48);
        sub_197A878A8();
        v63 = sub_197A875E8();
        sub_197A87D68();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v64, v65);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v66, v67, "ModelManager received unentitled request. Expected entitlement %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_155();
        OUTLINED_FUNCTION_0_14();
        v70 = sub_197955F04(v68, v69);
        v71 = OUTLINED_FUNCTION_85_3(v70);
        v73 = OUTLINED_FUNCTION_38_5(v71, v72);
        OUTLINED_FUNCTION_211(v73);
        break;
      case 5:
        OUTLINED_FUNCTION_134_2();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v54 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v54, qword_1ED87FB48);
        sub_197A878A8();
        v55 = sub_197A875E8();
        sub_197A87D78();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v56, v57);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v58, v59, "IPC Connection errors, evict session to create new session on next connection %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_153_1();
        sub_197944528();
        OUTLINED_FUNCTION_15_6();
        if (v61)
        {
          sub_197947900(v60, &qword_1EAF499A8);
        }

        else
        {
          v89 = OUTLINED_FUNCTION_9_5();
          v90(v89);
          sub_197A21F90();
          v91 = OUTLINED_FUNCTION_42();
          v92(v91);
        }

        OUTLINED_FUNCTION_152();
        OUTLINED_FUNCTION_0_14();
        v95 = sub_197955F04(v93, v94);
        v96 = OUTLINED_FUNCTION_84_3(v95);
        v98 = OUTLINED_FUNCTION_40_4(v96, v97);
        OUTLINED_FUNCTION_201(v98);
        v38 = v17;
        goto LABEL_35;
      case 31:
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v24 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v24, qword_1ED87FB48);
        sub_197A875E8();
        v25 = sub_197A87D68();
        if (OUTLINED_FUNCTION_65(v25))
        {
          v26 = OUTLINED_FUNCTION_204();
          OUTLINED_FUNCTION_137(v26);
          OUTLINED_FUNCTION_53();
          _os_log_impl(v27, v28, v29, v30, v31, 2u);
          OUTLINED_FUNCTION_42_0();
        }

        OUTLINED_FUNCTION_207();
        OUTLINED_FUNCTION_0_14();
        v34 = sub_197955F04(v32, v33);
        v35 = OUTLINED_FUNCTION_71_5(v34);
        OUTLINED_FUNCTION_27_6(v35, v36);
        v37 = swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_201(v37);
        v38 = v14;
        goto LABEL_35;
      default:
        OUTLINED_FUNCTION_3_7();
        sub_19796361C();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v74 = OUTLINED_FUNCTION_221();
        __swift_project_value_buffer(v74, qword_1ED87FB48);
        OUTLINED_FUNCTION_2_10();
        OUTLINED_FUNCTION_116();
        sub_1979557E8();
        v63 = sub_197A875E8();
        v75 = sub_197A87D58();
        v76 = OUTLINED_FUNCTION_118_1(v75);
        v77 = *(v16 + 88);
        if (v76)
        {
          OUTLINED_FUNCTION_131_1();
          OUTLINED_FUNCTION_113();
          OUTLINED_FUNCTION_61_0();
          OUTLINED_FUNCTION_124_2();
          *v15 = 138412546;
          OUTLINED_FUNCTION_0_14();
          v80 = sub_197955F04(v78, v79);
          OUTLINED_FUNCTION_83_3(v80);
          OUTLINED_FUNCTION_2_10();
          sub_1979557E8();
          _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v77, v81);
          OUTLINED_FUNCTION_19_8();
          *(v16 + 24) = &type metadata for ModelXPCRequest.RestoreAssertionsRequest;
          v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49B88, &qword_197A92BF8);
          v83 = OUTLINED_FUNCTION_218(v82);
          OUTLINED_FUNCTION_219(v83, v84, v85, v86);
          OUTLINED_FUNCTION_215();
          *(v15 + 14) = v77;
          OUTLINED_FUNCTION_78_4(&dword_197941000, v87, v88, "Passing along %@ in response to %s");
          sub_197947900(v19, &qword_1EAF48A90);
          OUTLINED_FUNCTION_36_3();
          OUTLINED_FUNCTION_17_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v77, v99);
        }

        OUTLINED_FUNCTION_59_5();
        OUTLINED_FUNCTION_0_14();
        v102 = sub_197955F04(v100, v101);
        v103 = OUTLINED_FUNCTION_71_5(v102);
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        a9 = v103;
        swift_willThrow();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v14, v104);
        break;
    }

    v38 = v63;
LABEL_35:
    sub_197947900(v38, &qword_1EAF499A8);

    goto LABEL_36;
  }

  if (qword_1ED87FC08 != -1)
  {
    OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
  }

  v39 = sub_197A87608();
  v40 = OUTLINED_FUNCTION_37_4(v39, qword_1ED87FB48);
  MEMORY[0x19A8EBBD0](v40);
  sub_197A875E8();
  sub_197A87D68();
  OUTLINED_FUNCTION_214();
  if (OUTLINED_FUNCTION_110_1())
  {
    OUTLINED_FUNCTION_56();
    v41 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_212(5.7779e-34);
    v42 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_135_1(v42);
    OUTLINED_FUNCTION_53();
    _os_log_impl(v43, v44, v45, v46, v47, 0xCu);
    sub_197947900(v41, &qword_1EAF48A90);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_42_0();
  }

  OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_0_14();
  v50 = sub_197955F04(v48, v49);
  v51 = OUTLINED_FUNCTION_71_5(v50);
  OUTLINED_FUNCTION_27_6(v51, v52);
  v53 = swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_201(v53);

  sub_197947900(v14, &qword_1EAF499A8);
LABEL_36:
  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_36_4();
  OUTLINED_FUNCTION_142();

  return v106(v105, v106, v107, v108, v109, v110, v111, v112, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1979E5434(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 224) = a4;
  *(v5 + 48) = a3;
  *(v5 + 56) = v4;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  v6 = sub_197A87298();
  *(v5 + 64) = v6;
  *(v5 + 72) = *(v6 - 8);
  *(v5 + 80) = swift_task_alloc();
  *(v5 + 88) = type metadata accessor for ModelManagerError(0);
  *(v5 + 96) = swift_task_alloc();
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 128) = type metadata accessor for ModelXPCRequest(0);
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49CA0, &qword_197A92D40);
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = type metadata accessor for IPCSessionWrapper(0);
  *(v5 + 168) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A8, &qword_197A92B00);
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1979E5630, v4, 0);
}

uint64_t sub_1979E5630()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_235();
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 192) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_195(v1);

  return sub_19794ECC8();
}

uint64_t sub_1979E56B8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 200) = v0;

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1979E57CC()
{
  OUTLINED_FUNCTION_269();
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 136);
  v2 = *(v0 + 224);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  sub_197947900(*(v0 + 184), &qword_1EAF499A8);
  v5 = OUTLINED_FUNCTION_21_5();
  v6(v5);
  OUTLINED_FUNCTION_6_7();
  *v1 = v3;
  *(v1 + 8) = v4;
  *(v1 + 16) = v2;
  swift_storeEnumTagMultiPayload();
  sub_197A878A8();
  v7 = swift_task_alloc();
  *(v0 + 208) = v7;
  OUTLINED_FUNCTION_5_7();
  sub_197955F04(v8, v3);
  OUTLINED_FUNCTION_10_10(&qword_1ED880268);
  sub_197A05DE4();
  OUTLINED_FUNCTION_57_2();
  *v7 = v9;
  v7[1] = sub_1979E5918;
  OUTLINED_FUNCTION_8_7(v10, *(v0 + 152));
  OUTLINED_FUNCTION_253();

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

uint64_t sub_1979E5918()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 216) = v0;

  OUTLINED_FUNCTION_52_5();
  sub_1979636E8(*(v4 + 136), type metadata accessor for ModelXPCRequest);
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1979E5A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_96_2();
  OUTLINED_FUNCTION_189();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (OUTLINED_FUNCTION_39_5(v20))
  {
    OUTLINED_FUNCTION_179();
    OUTLINED_FUNCTION_116();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_182_0();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v60 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v60, qword_1ED87FB48);
        sub_197A878A8();
        v61 = sub_197A875E8();
        sub_197A87D68();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v62, v63);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v64, v65, "ModelManager received unentitled request. Expected entitlement %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_242();
        OUTLINED_FUNCTION_0_14();
        v68 = sub_197955F04(v66, v67);
        v69 = OUTLINED_FUNCTION_85_3(v68);
        v71 = OUTLINED_FUNCTION_38_5(v69, v70);
        OUTLINED_FUNCTION_211(v71);
        break;
      case 5:
        OUTLINED_FUNCTION_182_0();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v52 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v52, qword_1ED87FB48);
        sub_197A878A8();
        v53 = sub_197A875E8();
        sub_197A87D78();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v54, v55);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v56, v57, "IPC Connection errors, evict session to create new session on next connection %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_239();
        sub_197944528();
        OUTLINED_FUNCTION_95_3();
        if (v59)
        {
          sub_197947900(v58, &qword_1EAF499A8);
        }

        else
        {
          v17 = *(v16 + 80);
          v87 = OUTLINED_FUNCTION_13_6();
          v88(v87);
          sub_197A21F90();
          v89 = OUTLINED_FUNCTION_42();
          v90(v89);
        }

        OUTLINED_FUNCTION_243();
        OUTLINED_FUNCTION_0_14();
        v93 = sub_197955F04(v91, v92);
        v94 = OUTLINED_FUNCTION_84_3(v93);
        v96 = OUTLINED_FUNCTION_40_4(v94, v95);
        OUTLINED_FUNCTION_201(v96);
        v36 = v17;
        goto LABEL_35;
      case 31:
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v22 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v22, qword_1ED87FB48);
        sub_197A875E8();
        v23 = sub_197A87D68();
        if (OUTLINED_FUNCTION_65(v23))
        {
          v24 = OUTLINED_FUNCTION_204();
          OUTLINED_FUNCTION_137(v24);
          OUTLINED_FUNCTION_53();
          _os_log_impl(v25, v26, v27, v28, v29, 2u);
          OUTLINED_FUNCTION_42_0();
        }

        OUTLINED_FUNCTION_241();
        OUTLINED_FUNCTION_0_14();
        v32 = sub_197955F04(v30, v31);
        v33 = OUTLINED_FUNCTION_71_5(v32);
        OUTLINED_FUNCTION_27_6(v33, v34);
        v35 = swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_201(v35);
        v36 = v14;
        goto LABEL_35;
      default:
        OUTLINED_FUNCTION_3_7();
        sub_19796361C();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v72 = OUTLINED_FUNCTION_247();
        __swift_project_value_buffer(v72, qword_1ED87FB48);
        OUTLINED_FUNCTION_2_10();
        OUTLINED_FUNCTION_116();
        sub_1979557E8();
        v61 = sub_197A875E8();
        v73 = sub_197A87D58();
        v74 = OUTLINED_FUNCTION_118_1(v73);
        v75 = *(v16 + 96);
        if (v74)
        {
          OUTLINED_FUNCTION_178();
          OUTLINED_FUNCTION_113();
          OUTLINED_FUNCTION_61_0();
          OUTLINED_FUNCTION_124_2();
          *v15 = 138412546;
          OUTLINED_FUNCTION_0_14();
          v78 = sub_197955F04(v76, v77);
          OUTLINED_FUNCTION_83_3(v78);
          OUTLINED_FUNCTION_2_10();
          sub_1979557E8();
          _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v75, v79);
          OUTLINED_FUNCTION_19_8();
          *(v16 + 24) = &type metadata for ModelXPCRequest.LoadAssetBundle;
          v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49CA8, &unk_197A92D48);
          v81 = OUTLINED_FUNCTION_218(v80);
          OUTLINED_FUNCTION_219(v81, v82, v83, v84);
          OUTLINED_FUNCTION_215();
          *(v15 + 14) = v75;
          OUTLINED_FUNCTION_78_4(&dword_197941000, v85, v86, "Passing along %@ in response to %s");
          sub_197947900(v19, &qword_1EAF48A90);
          OUTLINED_FUNCTION_36_3();
          OUTLINED_FUNCTION_17_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v75, v97);
        }

        OUTLINED_FUNCTION_151_0();
        OUTLINED_FUNCTION_0_14();
        v100 = sub_197955F04(v98, v99);
        v101 = OUTLINED_FUNCTION_71_5(v100);
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        a9 = v101;
        swift_willThrow();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v14, v102);
        break;
    }

    v36 = v61;
LABEL_35:
    sub_197947900(v36, &qword_1EAF499A8);

    goto LABEL_36;
  }

  if (qword_1ED87FC08 != -1)
  {
    OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
  }

  v37 = sub_197A87608();
  v38 = OUTLINED_FUNCTION_37_4(v37, qword_1ED87FB48);
  MEMORY[0x19A8EBBD0](v38);
  sub_197A875E8();
  sub_197A87D68();
  OUTLINED_FUNCTION_214();
  if (OUTLINED_FUNCTION_110_1())
  {
    OUTLINED_FUNCTION_56();
    v39 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_212(5.7779e-34);
    v40 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_135_1(v40);
    OUTLINED_FUNCTION_53();
    _os_log_impl(v41, v42, v43, v44, v45, 0xCu);
    sub_197947900(v39, &qword_1EAF48A90);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_42_0();
  }

  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_0_14();
  v48 = sub_197955F04(v46, v47);
  v49 = OUTLINED_FUNCTION_71_5(v48);
  OUTLINED_FUNCTION_27_6(v49, v50);
  v51 = swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_201(v51);

  sub_197947900(v14, &qword_1EAF499A8);
LABEL_36:
  OUTLINED_FUNCTION_44_6();

  OUTLINED_FUNCTION_36_4();
  OUTLINED_FUNCTION_142();

  return v104(v103, v104, v105, v106, v107, v108, v109, v110, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1979E67F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_4_6();
  sub_1979636E8(v19, v20);
  v21 = *(v16 + 216);
  OUTLINED_FUNCTION_102_1();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (OUTLINED_FUNCTION_39_5(v22))
  {
    OUTLINED_FUNCTION_179();
    OUTLINED_FUNCTION_116();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_182_0();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v62 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v62, qword_1ED87FB48);
        sub_197A878A8();
        v63 = sub_197A875E8();
        sub_197A87D68();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v17 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v64, v65);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v66, v67, "ModelManager received unentitled request. Expected entitlement %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_242();
        OUTLINED_FUNCTION_0_14();
        v70 = sub_197955F04(v68, v69);
        v71 = OUTLINED_FUNCTION_85_3(v70);
        v73 = OUTLINED_FUNCTION_38_5(v71, v72);
        OUTLINED_FUNCTION_211(v73);
        break;
      case 5:
        OUTLINED_FUNCTION_182_0();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v54 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v54, qword_1ED87FB48);
        sub_197A878A8();
        v55 = sub_197A875E8();
        sub_197A87D78();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v17 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v56, v57);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v58, v59, "IPC Connection errors, evict session to create new session on next connection %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_239();
        sub_197944528();
        OUTLINED_FUNCTION_95_3();
        if (v61)
        {
          sub_197947900(v60, &qword_1EAF499A8);
        }

        else
        {
          v21 = *(v16 + 80);
          v89 = OUTLINED_FUNCTION_13_6();
          v90(v89);
          sub_197A21F90();
          v91 = OUTLINED_FUNCTION_42();
          v92(v91);
        }

        OUTLINED_FUNCTION_243();
        OUTLINED_FUNCTION_0_14();
        v95 = sub_197955F04(v93, v94);
        v96 = OUTLINED_FUNCTION_84_3(v95);
        v98 = OUTLINED_FUNCTION_40_4(v96, v97);
        OUTLINED_FUNCTION_201(v98);
        v38 = v21;
        goto LABEL_35;
      case 31:
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v24 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v24, qword_1ED87FB48);
        sub_197A875E8();
        v25 = sub_197A87D68();
        if (OUTLINED_FUNCTION_65(v25))
        {
          v26 = OUTLINED_FUNCTION_204();
          OUTLINED_FUNCTION_137(v26);
          OUTLINED_FUNCTION_53();
          _os_log_impl(v27, v28, v29, v30, v31, 2u);
          OUTLINED_FUNCTION_42_0();
        }

        OUTLINED_FUNCTION_241();
        OUTLINED_FUNCTION_0_14();
        v34 = sub_197955F04(v32, v33);
        v35 = OUTLINED_FUNCTION_71_5(v34);
        OUTLINED_FUNCTION_27_6(v35, v36);
        v37 = swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_201(v37);
        v38 = v14;
        goto LABEL_35;
      default:
        OUTLINED_FUNCTION_3_7();
        sub_19796361C();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v74 = OUTLINED_FUNCTION_247();
        __swift_project_value_buffer(v74, qword_1ED87FB48);
        OUTLINED_FUNCTION_2_10();
        OUTLINED_FUNCTION_116();
        sub_1979557E8();
        v63 = sub_197A875E8();
        v75 = sub_197A87D58();
        v76 = OUTLINED_FUNCTION_118_1(v75);
        v77 = *(v16 + 96);
        if (v76)
        {
          OUTLINED_FUNCTION_178();
          OUTLINED_FUNCTION_113();
          OUTLINED_FUNCTION_61_0();
          OUTLINED_FUNCTION_124_2();
          *v15 = 138412546;
          OUTLINED_FUNCTION_0_14();
          v80 = sub_197955F04(v78, v79);
          OUTLINED_FUNCTION_83_3(v80);
          OUTLINED_FUNCTION_2_10();
          sub_1979557E8();
          _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v77, v81);
          OUTLINED_FUNCTION_19_8();
          *(v16 + 24) = &type metadata for ModelXPCRequest.LoadAssetBundle;
          v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49CA8, &unk_197A92D48);
          v83 = OUTLINED_FUNCTION_218(v82);
          OUTLINED_FUNCTION_219(v83, v84, v85, v86);
          OUTLINED_FUNCTION_215();
          *(v15 + 14) = v77;
          OUTLINED_FUNCTION_78_4(&dword_197941000, v87, v88, "Passing along %@ in response to %s");
          sub_197947900(v18, &qword_1EAF48A90);
          OUTLINED_FUNCTION_36_3();
          OUTLINED_FUNCTION_17_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v77, v99);
        }

        OUTLINED_FUNCTION_151_0();
        OUTLINED_FUNCTION_0_14();
        v102 = sub_197955F04(v100, v101);
        v103 = OUTLINED_FUNCTION_71_5(v102);
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        a9 = v103;
        swift_willThrow();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v14, v104);
        break;
    }

    v38 = v63;
LABEL_35:
    sub_197947900(v38, &qword_1EAF499A8);

    goto LABEL_36;
  }

  if (qword_1ED87FC08 != -1)
  {
    OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
  }

  v39 = sub_197A87608();
  v40 = OUTLINED_FUNCTION_37_4(v39, qword_1ED87FB48);
  MEMORY[0x19A8EBBD0](v40);
  sub_197A875E8();
  sub_197A87D68();
  OUTLINED_FUNCTION_214();
  if (OUTLINED_FUNCTION_110_1())
  {
    OUTLINED_FUNCTION_56();
    v41 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_212(5.7779e-34);
    v42 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_135_1(v42);
    OUTLINED_FUNCTION_53();
    _os_log_impl(v43, v44, v45, v46, v47, 0xCu);
    sub_197947900(v41, &qword_1EAF48A90);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_42_0();
  }

  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_0_14();
  v50 = sub_197955F04(v48, v49);
  v51 = OUTLINED_FUNCTION_71_5(v50);
  OUTLINED_FUNCTION_27_6(v51, v52);
  v53 = swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_201(v53);

  sub_197947900(v14, &qword_1EAF499A8);
LABEL_36:
  OUTLINED_FUNCTION_44_6();

  OUTLINED_FUNCTION_36_4();
  OUTLINED_FUNCTION_142();

  return v106(v105, v106, v107, v108, v109, v110, v111, v112, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1979E6EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v5 = sub_197A87298();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = type metadata accessor for ModelManagerError(0);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = type metadata accessor for ModelXPCRequest(0);
  v4[17] = swift_task_alloc();
  v4[18] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49C78, &qword_197A92D28);
  v4[19] = swift_task_alloc();
  v4[20] = type metadata accessor for IPCSessionWrapper(0);
  v4[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A8, &qword_197A92B00);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1979E70A8, v3, 0);
}

uint64_t sub_1979E70A8()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_235();
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 192) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_195(v1);

  return sub_19794ECC8();
}

uint64_t sub_1979E7130()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 200) = v0;

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1979E7244()
{
  OUTLINED_FUNCTION_269();
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_255();
  sub_197947900(v0, &qword_1EAF499A8);
  v6 = OUTLINED_FUNCTION_21_5();
  v7(v6);
  OUTLINED_FUNCTION_6_7();
  *v2 = v5;
  v2[1] = v4;
  OUTLINED_FUNCTION_100_0();
  swift_storeEnumTagMultiPayload();
  sub_197A878A8();
  v8 = swift_task_alloc();
  *(v1 + 208) = v8;
  OUTLINED_FUNCTION_5_7();
  sub_197955F04(v9, v3);
  OUTLINED_FUNCTION_10_10(&qword_1ED880268);
  sub_197A05C38();
  OUTLINED_FUNCTION_57_2();
  *v8 = v10;
  v8[1] = sub_1979E7370;
  OUTLINED_FUNCTION_8_7(v11, *(v1 + 152));
  OUTLINED_FUNCTION_253();

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

uint64_t sub_1979E7370()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 216) = v0;

  OUTLINED_FUNCTION_52_5();
  sub_1979636E8(*(v4 + 136), type metadata accessor for ModelXPCRequest);
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1979E74B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_96_2();
  OUTLINED_FUNCTION_189();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (OUTLINED_FUNCTION_39_5(v20))
  {
    OUTLINED_FUNCTION_179();
    OUTLINED_FUNCTION_116();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_182_0();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v60 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v60, qword_1ED87FB48);
        sub_197A878A8();
        v61 = sub_197A875E8();
        sub_197A87D68();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v62, v63);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v64, v65, "ModelManager received unentitled request. Expected entitlement %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_242();
        OUTLINED_FUNCTION_0_14();
        v68 = sub_197955F04(v66, v67);
        v69 = OUTLINED_FUNCTION_85_3(v68);
        v71 = OUTLINED_FUNCTION_38_5(v69, v70);
        OUTLINED_FUNCTION_211(v71);
        break;
      case 5:
        OUTLINED_FUNCTION_182_0();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v52 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v52, qword_1ED87FB48);
        sub_197A878A8();
        v53 = sub_197A875E8();
        sub_197A87D78();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v54, v55);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v56, v57, "IPC Connection errors, evict session to create new session on next connection %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_239();
        sub_197944528();
        OUTLINED_FUNCTION_95_3();
        if (v59)
        {
          sub_197947900(v58, &qword_1EAF499A8);
        }

        else
        {
          v17 = *(v16 + 80);
          v87 = OUTLINED_FUNCTION_13_6();
          v88(v87);
          sub_197A21F90();
          v89 = OUTLINED_FUNCTION_42();
          v90(v89);
        }

        OUTLINED_FUNCTION_243();
        OUTLINED_FUNCTION_0_14();
        v93 = sub_197955F04(v91, v92);
        v94 = OUTLINED_FUNCTION_84_3(v93);
        v96 = OUTLINED_FUNCTION_40_4(v94, v95);
        OUTLINED_FUNCTION_201(v96);
        v36 = v17;
        goto LABEL_35;
      case 31:
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v22 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v22, qword_1ED87FB48);
        sub_197A875E8();
        v23 = sub_197A87D68();
        if (OUTLINED_FUNCTION_65(v23))
        {
          v24 = OUTLINED_FUNCTION_204();
          OUTLINED_FUNCTION_137(v24);
          OUTLINED_FUNCTION_53();
          _os_log_impl(v25, v26, v27, v28, v29, 2u);
          OUTLINED_FUNCTION_42_0();
        }

        OUTLINED_FUNCTION_241();
        OUTLINED_FUNCTION_0_14();
        v32 = sub_197955F04(v30, v31);
        v33 = OUTLINED_FUNCTION_71_5(v32);
        OUTLINED_FUNCTION_27_6(v33, v34);
        v35 = swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_201(v35);
        v36 = v14;
        goto LABEL_35;
      default:
        OUTLINED_FUNCTION_3_7();
        sub_19796361C();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v72 = OUTLINED_FUNCTION_247();
        __swift_project_value_buffer(v72, qword_1ED87FB48);
        OUTLINED_FUNCTION_2_10();
        OUTLINED_FUNCTION_116();
        sub_1979557E8();
        v61 = sub_197A875E8();
        v73 = sub_197A87D58();
        v74 = OUTLINED_FUNCTION_118_1(v73);
        v75 = *(v16 + 96);
        if (v74)
        {
          OUTLINED_FUNCTION_178();
          OUTLINED_FUNCTION_113();
          OUTLINED_FUNCTION_61_0();
          OUTLINED_FUNCTION_124_2();
          *v15 = 138412546;
          OUTLINED_FUNCTION_0_14();
          v78 = sub_197955F04(v76, v77);
          OUTLINED_FUNCTION_83_3(v78);
          OUTLINED_FUNCTION_2_10();
          sub_1979557E8();
          _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v75, v79);
          OUTLINED_FUNCTION_19_8();
          *(v16 + 24) = &type metadata for ModelXPCRequest.HoldAssetBundle;
          v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49C80, &qword_197A92D30);
          v81 = OUTLINED_FUNCTION_218(v80);
          OUTLINED_FUNCTION_219(v81, v82, v83, v84);
          OUTLINED_FUNCTION_215();
          *(v15 + 14) = v75;
          OUTLINED_FUNCTION_78_4(&dword_197941000, v85, v86, "Passing along %@ in response to %s");
          sub_197947900(v19, &qword_1EAF48A90);
          OUTLINED_FUNCTION_36_3();
          OUTLINED_FUNCTION_17_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v75, v97);
        }

        OUTLINED_FUNCTION_151_0();
        OUTLINED_FUNCTION_0_14();
        v100 = sub_197955F04(v98, v99);
        v101 = OUTLINED_FUNCTION_71_5(v100);
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        a9 = v101;
        swift_willThrow();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v14, v102);
        break;
    }

    v36 = v61;
LABEL_35:
    sub_197947900(v36, &qword_1EAF499A8);

    goto LABEL_36;
  }

  if (qword_1ED87FC08 != -1)
  {
    OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
  }

  v37 = sub_197A87608();
  v38 = OUTLINED_FUNCTION_37_4(v37, qword_1ED87FB48);
  MEMORY[0x19A8EBBD0](v38);
  sub_197A875E8();
  sub_197A87D68();
  OUTLINED_FUNCTION_214();
  if (OUTLINED_FUNCTION_110_1())
  {
    OUTLINED_FUNCTION_56();
    v39 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_212(5.7779e-34);
    v40 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_135_1(v40);
    OUTLINED_FUNCTION_53();
    _os_log_impl(v41, v42, v43, v44, v45, 0xCu);
    sub_197947900(v39, &qword_1EAF48A90);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_42_0();
  }

  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_0_14();
  v48 = sub_197955F04(v46, v47);
  v49 = OUTLINED_FUNCTION_71_5(v48);
  OUTLINED_FUNCTION_27_6(v49, v50);
  v51 = swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_201(v51);

  sub_197947900(v14, &qword_1EAF499A8);
LABEL_36:
  OUTLINED_FUNCTION_44_6();

  OUTLINED_FUNCTION_36_4();
  OUTLINED_FUNCTION_142();

  return v104(v103, v104, v105, v106, v107, v108, v109, v110, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1979E8250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_4_6();
  sub_1979636E8(v19, v20);
  v21 = *(v16 + 216);
  OUTLINED_FUNCTION_102_1();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (OUTLINED_FUNCTION_39_5(v22))
  {
    OUTLINED_FUNCTION_179();
    OUTLINED_FUNCTION_116();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_182_0();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v62 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v62, qword_1ED87FB48);
        sub_197A878A8();
        v63 = sub_197A875E8();
        sub_197A87D68();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v17 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v64, v65);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v66, v67, "ModelManager received unentitled request. Expected entitlement %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_242();
        OUTLINED_FUNCTION_0_14();
        v70 = sub_197955F04(v68, v69);
        v71 = OUTLINED_FUNCTION_85_3(v70);
        v73 = OUTLINED_FUNCTION_38_5(v71, v72);
        OUTLINED_FUNCTION_211(v73);
        break;
      case 5:
        OUTLINED_FUNCTION_182_0();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v54 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v54, qword_1ED87FB48);
        sub_197A878A8();
        v55 = sub_197A875E8();
        sub_197A87D78();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v17 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v56, v57);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v58, v59, "IPC Connection errors, evict session to create new session on next connection %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_239();
        sub_197944528();
        OUTLINED_FUNCTION_95_3();
        if (v61)
        {
          sub_197947900(v60, &qword_1EAF499A8);
        }

        else
        {
          v21 = *(v16 + 80);
          v89 = OUTLINED_FUNCTION_13_6();
          v90(v89);
          sub_197A21F90();
          v91 = OUTLINED_FUNCTION_42();
          v92(v91);
        }

        OUTLINED_FUNCTION_243();
        OUTLINED_FUNCTION_0_14();
        v95 = sub_197955F04(v93, v94);
        v96 = OUTLINED_FUNCTION_84_3(v95);
        v98 = OUTLINED_FUNCTION_40_4(v96, v97);
        OUTLINED_FUNCTION_201(v98);
        v38 = v21;
        goto LABEL_35;
      case 31:
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v24 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v24, qword_1ED87FB48);
        sub_197A875E8();
        v25 = sub_197A87D68();
        if (OUTLINED_FUNCTION_65(v25))
        {
          v26 = OUTLINED_FUNCTION_204();
          OUTLINED_FUNCTION_137(v26);
          OUTLINED_FUNCTION_53();
          _os_log_impl(v27, v28, v29, v30, v31, 2u);
          OUTLINED_FUNCTION_42_0();
        }

        OUTLINED_FUNCTION_241();
        OUTLINED_FUNCTION_0_14();
        v34 = sub_197955F04(v32, v33);
        v35 = OUTLINED_FUNCTION_71_5(v34);
        OUTLINED_FUNCTION_27_6(v35, v36);
        v37 = swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_201(v37);
        v38 = v14;
        goto LABEL_35;
      default:
        OUTLINED_FUNCTION_3_7();
        sub_19796361C();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v74 = OUTLINED_FUNCTION_247();
        __swift_project_value_buffer(v74, qword_1ED87FB48);
        OUTLINED_FUNCTION_2_10();
        OUTLINED_FUNCTION_116();
        sub_1979557E8();
        v63 = sub_197A875E8();
        v75 = sub_197A87D58();
        v76 = OUTLINED_FUNCTION_118_1(v75);
        v77 = *(v16 + 96);
        if (v76)
        {
          OUTLINED_FUNCTION_178();
          OUTLINED_FUNCTION_113();
          OUTLINED_FUNCTION_61_0();
          OUTLINED_FUNCTION_124_2();
          *v15 = 138412546;
          OUTLINED_FUNCTION_0_14();
          v80 = sub_197955F04(v78, v79);
          OUTLINED_FUNCTION_83_3(v80);
          OUTLINED_FUNCTION_2_10();
          sub_1979557E8();
          _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v77, v81);
          OUTLINED_FUNCTION_19_8();
          *(v16 + 24) = &type metadata for ModelXPCRequest.HoldAssetBundle;
          v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49C80, &qword_197A92D30);
          v83 = OUTLINED_FUNCTION_218(v82);
          OUTLINED_FUNCTION_219(v83, v84, v85, v86);
          OUTLINED_FUNCTION_215();
          *(v15 + 14) = v77;
          OUTLINED_FUNCTION_78_4(&dword_197941000, v87, v88, "Passing along %@ in response to %s");
          sub_197947900(v18, &qword_1EAF48A90);
          OUTLINED_FUNCTION_36_3();
          OUTLINED_FUNCTION_17_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v77, v99);
        }

        OUTLINED_FUNCTION_151_0();
        OUTLINED_FUNCTION_0_14();
        v102 = sub_197955F04(v100, v101);
        v103 = OUTLINED_FUNCTION_71_5(v102);
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        a9 = v103;
        swift_willThrow();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v14, v104);
        break;
    }

    v38 = v63;
LABEL_35:
    sub_197947900(v38, &qword_1EAF499A8);

    goto LABEL_36;
  }

  if (qword_1ED87FC08 != -1)
  {
    OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
  }

  v39 = sub_197A87608();
  v40 = OUTLINED_FUNCTION_37_4(v39, qword_1ED87FB48);
  MEMORY[0x19A8EBBD0](v40);
  sub_197A875E8();
  sub_197A87D68();
  OUTLINED_FUNCTION_214();
  if (OUTLINED_FUNCTION_110_1())
  {
    OUTLINED_FUNCTION_56();
    v41 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_212(5.7779e-34);
    v42 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_135_1(v42);
    OUTLINED_FUNCTION_53();
    _os_log_impl(v43, v44, v45, v46, v47, 0xCu);
    sub_197947900(v41, &qword_1EAF48A90);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_42_0();
  }

  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_0_14();
  v50 = sub_197955F04(v48, v49);
  v51 = OUTLINED_FUNCTION_71_5(v50);
  OUTLINED_FUNCTION_27_6(v51, v52);
  v53 = swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_201(v53);

  sub_197947900(v14, &qword_1EAF499A8);
LABEL_36:
  OUTLINED_FUNCTION_44_6();

  OUTLINED_FUNCTION_36_4();
  OUTLINED_FUNCTION_142();

  return v106(v105, v106, v107, v108, v109, v110, v111, v112, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1979E8908(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_197A87298();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = type metadata accessor for ModelManagerError(0);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = type metadata accessor for ModelXPCRequest(0);
  v2[15] = swift_task_alloc();
  v2[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49C60, &qword_197A92D10);
  v2[17] = swift_task_alloc();
  v2[18] = type metadata accessor for IPCSessionWrapper(0);
  v2[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A8, &qword_197A92B00);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1979E8AFC, v1, 0);
}

uint64_t sub_1979E8AFC()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_129_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_105_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_70_4(v1);

  return sub_19794ECC8();
}

uint64_t sub_1979E8B80()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 184) = v0;

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1979E8C94()
{
  OUTLINED_FUNCTION_246();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_69_4();
  sub_197947900(v0, &qword_1EAF499A8);
  v4 = OUTLINED_FUNCTION_34_5();
  v5(v4);
  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_100_0();
  swift_storeEnumTagMultiPayload();
  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_216(v6);
  OUTLINED_FUNCTION_5_7();
  sub_197955F04(v7, v3);
  OUTLINED_FUNCTION_10_10(&qword_1ED880268);
  sub_197A05A8C();
  OUTLINED_FUNCTION_57_2();
  *v2 = v8;
  v2[1] = sub_1979E8DA8;
  OUTLINED_FUNCTION_8_7(v9, *(v1 + 136));
  OUTLINED_FUNCTION_191();

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

uint64_t sub_1979E8DA8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 200) = v0;

  OUTLINED_FUNCTION_52_5();
  sub_1979636E8(*(v4 + 120), type metadata accessor for ModelXPCRequest);
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1979E8EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  v19 = *(v16 + 184);
  OUTLINED_FUNCTION_64_5();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (OUTLINED_FUNCTION_39_5(v20))
  {
    OUTLINED_FUNCTION_140_1();
    OUTLINED_FUNCTION_116();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_144_1();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v60 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v60, qword_1ED87FB48);
        sub_197A878A8();
        v61 = sub_197A875E8();
        sub_197A87D68();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v17 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v62, v63);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v64, v65, "ModelManager received unentitled request. Expected entitlement %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_175();
        OUTLINED_FUNCTION_0_14();
        v68 = sub_197955F04(v66, v67);
        v69 = OUTLINED_FUNCTION_85_3(v68);
        v71 = OUTLINED_FUNCTION_38_5(v69, v70);
        OUTLINED_FUNCTION_211(v71);
        break;
      case 5:
        OUTLINED_FUNCTION_144_1();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v52 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v52, qword_1ED87FB48);
        sub_197A878A8();
        v53 = sub_197A875E8();
        sub_197A87D78();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v17 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v54, v55);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v56, v57, "IPC Connection errors, evict session to create new session on next connection %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_173();
        sub_197944528();
        OUTLINED_FUNCTION_20_7();
        if (v59)
        {
          sub_197947900(v58, &qword_1EAF499A8);
        }

        else
        {
          v87 = OUTLINED_FUNCTION_12_6();
          v88(v87);
          sub_197A21F90();
          v89 = OUTLINED_FUNCTION_42();
          v90(v89);
        }

        OUTLINED_FUNCTION_172();
        OUTLINED_FUNCTION_0_14();
        v93 = sub_197955F04(v91, v92);
        v94 = OUTLINED_FUNCTION_84_3(v93);
        v96 = OUTLINED_FUNCTION_40_4(v94, v95);
        OUTLINED_FUNCTION_201(v96);
        v36 = v19;
        goto LABEL_35;
      case 31:
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v22 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v22, qword_1ED87FB48);
        sub_197A875E8();
        v23 = sub_197A87D68();
        if (OUTLINED_FUNCTION_65(v23))
        {
          v24 = OUTLINED_FUNCTION_204();
          OUTLINED_FUNCTION_137(v24);
          OUTLINED_FUNCTION_53();
          _os_log_impl(v25, v26, v27, v28, v29, 2u);
          OUTLINED_FUNCTION_42_0();
        }

        OUTLINED_FUNCTION_222();
        OUTLINED_FUNCTION_0_14();
        v32 = sub_197955F04(v30, v31);
        v33 = OUTLINED_FUNCTION_71_5(v32);
        OUTLINED_FUNCTION_27_6(v33, v34);
        v35 = swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_201(v35);
        v36 = v14;
        goto LABEL_35;
      default:
        OUTLINED_FUNCTION_3_7();
        sub_19796361C();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v72 = OUTLINED_FUNCTION_225();
        __swift_project_value_buffer(v72, qword_1ED87FB48);
        OUTLINED_FUNCTION_2_10();
        OUTLINED_FUNCTION_116();
        sub_1979557E8();
        v61 = sub_197A875E8();
        v73 = sub_197A87D58();
        v74 = OUTLINED_FUNCTION_118_1(v73);
        v75 = *(v16 + 80);
        if (v74)
        {
          OUTLINED_FUNCTION_139_0();
          OUTLINED_FUNCTION_113();
          OUTLINED_FUNCTION_61_0();
          OUTLINED_FUNCTION_124_2();
          *v15 = 138412546;
          OUTLINED_FUNCTION_0_14();
          v78 = sub_197955F04(v76, v77);
          OUTLINED_FUNCTION_83_3(v78);
          OUTLINED_FUNCTION_2_10();
          sub_1979557E8();
          _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v75, v79);
          OUTLINED_FUNCTION_19_8();
          *(v16 + 24) = &type metadata for ModelXPCRequest.ForceAssetVersionSwitch;
          v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49C68, &qword_197A92D18);
          v81 = OUTLINED_FUNCTION_218(v80);
          OUTLINED_FUNCTION_219(v81, v82, v83, v84);
          OUTLINED_FUNCTION_215();
          *(v15 + 14) = v75;
          OUTLINED_FUNCTION_78_4(&dword_197941000, v85, v86, "Passing along %@ in response to %s");
          sub_197947900(v18, &qword_1EAF48A90);
          OUTLINED_FUNCTION_36_3();
          OUTLINED_FUNCTION_17_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v75, v97);
        }

        OUTLINED_FUNCTION_79_7();
        OUTLINED_FUNCTION_0_14();
        v100 = sub_197955F04(v98, v99);
        v101 = OUTLINED_FUNCTION_71_5(v100);
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        a9 = v101;
        swift_willThrow();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v14, v102);
        break;
    }

    v36 = v61;
LABEL_35:
    sub_197947900(v36, &qword_1EAF499A8);

    goto LABEL_36;
  }

  if (qword_1ED87FC08 != -1)
  {
    OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
  }

  v37 = sub_197A87608();
  v38 = OUTLINED_FUNCTION_37_4(v37, qword_1ED87FB48);
  MEMORY[0x19A8EBBD0](v38);
  sub_197A875E8();
  sub_197A87D68();
  OUTLINED_FUNCTION_214();
  if (OUTLINED_FUNCTION_110_1())
  {
    OUTLINED_FUNCTION_56();
    v39 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_212(5.7779e-34);
    v40 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_135_1(v40);
    OUTLINED_FUNCTION_53();
    _os_log_impl(v41, v42, v43, v44, v45, 0xCu);
    sub_197947900(v39, &qword_1EAF48A90);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_42_0();
  }

  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_0_14();
  v48 = sub_197955F04(v46, v47);
  v49 = OUTLINED_FUNCTION_71_5(v48);
  OUTLINED_FUNCTION_27_6(v49, v50);
  v51 = swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_201(v51);

  sub_197947900(v14, &qword_1EAF499A8);
LABEL_36:
  OUTLINED_FUNCTION_23_6();

  OUTLINED_FUNCTION_36_4();
  OUTLINED_FUNCTION_142();

  return v104(v103, v104, v105, v106, v107, v108, v109, v110, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1979E9C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_4_6();
  sub_1979636E8(v19, v20);
  v21 = *(v16 + 200);
  OUTLINED_FUNCTION_64_5();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (OUTLINED_FUNCTION_39_5(v22))
  {
    OUTLINED_FUNCTION_140_1();
    OUTLINED_FUNCTION_116();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_144_1();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v62 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v62, qword_1ED87FB48);
        sub_197A878A8();
        v63 = sub_197A875E8();
        sub_197A87D68();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v17 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v64, v65);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v66, v67, "ModelManager received unentitled request. Expected entitlement %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_175();
        OUTLINED_FUNCTION_0_14();
        v70 = sub_197955F04(v68, v69);
        v71 = OUTLINED_FUNCTION_85_3(v70);
        v73 = OUTLINED_FUNCTION_38_5(v71, v72);
        OUTLINED_FUNCTION_211(v73);
        break;
      case 5:
        OUTLINED_FUNCTION_144_1();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v54 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v54, qword_1ED87FB48);
        sub_197A878A8();
        v55 = sub_197A875E8();
        sub_197A87D78();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v17 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v56, v57);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v58, v59, "IPC Connection errors, evict session to create new session on next connection %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_173();
        sub_197944528();
        OUTLINED_FUNCTION_20_7();
        if (v61)
        {
          sub_197947900(v60, &qword_1EAF499A8);
        }

        else
        {
          v89 = OUTLINED_FUNCTION_12_6();
          v90(v89);
          sub_197A21F90();
          v91 = OUTLINED_FUNCTION_42();
          v92(v91);
        }

        OUTLINED_FUNCTION_172();
        OUTLINED_FUNCTION_0_14();
        v95 = sub_197955F04(v93, v94);
        v96 = OUTLINED_FUNCTION_84_3(v95);
        v98 = OUTLINED_FUNCTION_40_4(v96, v97);
        OUTLINED_FUNCTION_201(v98);
        v38 = v21;
        goto LABEL_35;
      case 31:
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v24 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v24, qword_1ED87FB48);
        sub_197A875E8();
        v25 = sub_197A87D68();
        if (OUTLINED_FUNCTION_65(v25))
        {
          v26 = OUTLINED_FUNCTION_204();
          OUTLINED_FUNCTION_137(v26);
          OUTLINED_FUNCTION_53();
          _os_log_impl(v27, v28, v29, v30, v31, 2u);
          OUTLINED_FUNCTION_42_0();
        }

        OUTLINED_FUNCTION_222();
        OUTLINED_FUNCTION_0_14();
        v34 = sub_197955F04(v32, v33);
        v35 = OUTLINED_FUNCTION_71_5(v34);
        OUTLINED_FUNCTION_27_6(v35, v36);
        v37 = swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_201(v37);
        v38 = v14;
        goto LABEL_35;
      default:
        OUTLINED_FUNCTION_3_7();
        sub_19796361C();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v74 = OUTLINED_FUNCTION_225();
        __swift_project_value_buffer(v74, qword_1ED87FB48);
        OUTLINED_FUNCTION_2_10();
        OUTLINED_FUNCTION_116();
        sub_1979557E8();
        v63 = sub_197A875E8();
        v75 = sub_197A87D58();
        v76 = OUTLINED_FUNCTION_118_1(v75);
        v77 = *(v16 + 80);
        if (v76)
        {
          OUTLINED_FUNCTION_139_0();
          OUTLINED_FUNCTION_113();
          OUTLINED_FUNCTION_61_0();
          OUTLINED_FUNCTION_124_2();
          *v15 = 138412546;
          OUTLINED_FUNCTION_0_14();
          v80 = sub_197955F04(v78, v79);
          OUTLINED_FUNCTION_83_3(v80);
          OUTLINED_FUNCTION_2_10();
          sub_1979557E8();
          _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v77, v81);
          OUTLINED_FUNCTION_19_8();
          *(v16 + 24) = &type metadata for ModelXPCRequest.ForceAssetVersionSwitch;
          v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49C68, &qword_197A92D18);
          v83 = OUTLINED_FUNCTION_218(v82);
          OUTLINED_FUNCTION_219(v83, v84, v85, v86);
          OUTLINED_FUNCTION_215();
          *(v15 + 14) = v77;
          OUTLINED_FUNCTION_78_4(&dword_197941000, v87, v88, "Passing along %@ in response to %s");
          sub_197947900(v18, &qword_1EAF48A90);
          OUTLINED_FUNCTION_36_3();
          OUTLINED_FUNCTION_17_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v77, v99);
        }

        OUTLINED_FUNCTION_79_7();
        OUTLINED_FUNCTION_0_14();
        v102 = sub_197955F04(v100, v101);
        v103 = OUTLINED_FUNCTION_71_5(v102);
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        a9 = v103;
        swift_willThrow();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v14, v104);
        break;
    }

    v38 = v63;
LABEL_35:
    sub_197947900(v38, &qword_1EAF499A8);

    goto LABEL_36;
  }

  if (qword_1ED87FC08 != -1)
  {
    OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
  }

  v39 = sub_197A87608();
  v40 = OUTLINED_FUNCTION_37_4(v39, qword_1ED87FB48);
  MEMORY[0x19A8EBBD0](v40);
  sub_197A875E8();
  sub_197A87D68();
  OUTLINED_FUNCTION_214();
  if (OUTLINED_FUNCTION_110_1())
  {
    OUTLINED_FUNCTION_56();
    v41 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_212(5.7779e-34);
    v42 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_135_1(v42);
    OUTLINED_FUNCTION_53();
    _os_log_impl(v43, v44, v45, v46, v47, 0xCu);
    sub_197947900(v41, &qword_1EAF48A90);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_42_0();
  }

  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_0_14();
  v50 = sub_197955F04(v48, v49);
  v51 = OUTLINED_FUNCTION_71_5(v50);
  OUTLINED_FUNCTION_27_6(v51, v52);
  v53 = swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_201(v53);

  sub_197947900(v14, &qword_1EAF499A8);
LABEL_36:
  OUTLINED_FUNCTION_23_6();

  OUTLINED_FUNCTION_36_4();
  OUTLINED_FUNCTION_142();

  return v106(v105, v106, v107, v108, v109, v110, v111, v112, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1979EA2F8(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_197A87298();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = type metadata accessor for ModelManagerError(0);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = type metadata accessor for ModelXPCRequest(0);
  v3[16] = swift_task_alloc();
  v3[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A60, &qword_197A92AF8);
  v3[18] = swift_task_alloc();
  v3[19] = type metadata accessor for IPCSessionWrapper(0);
  v3[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A8, &qword_197A92B00);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1979EA4F0, v2, 0);
}

uint64_t sub_1979EA4F0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_99_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_88_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_30_7(v1);

  return sub_19794ECC8();
}

uint64_t sub_1979EA574()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 192) = v0;

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1979EA688()
{
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_24_6();
  sub_197947900(v0, &qword_1EAF499A8);
  v4 = OUTLINED_FUNCTION_21_5();
  v5(v4);
  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_100_0();
  swift_storeEnumTagMultiPayload();
  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_181(v6);
  OUTLINED_FUNCTION_5_7();
  sub_197955F04(v7, v3);
  OUTLINED_FUNCTION_10_10(&qword_1ED880268);
  sub_197A03924();
  OUTLINED_FUNCTION_57_2();
  *v2 = v8;
  v2[1] = sub_1979EA7B0;
  OUTLINED_FUNCTION_8_7(v9, *(v1 + 144));
  OUTLINED_FUNCTION_169_0();

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

uint64_t sub_1979EA7B0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 208) = v0;

  OUTLINED_FUNCTION_52_5();
  sub_1979636E8(*(v4 + 128), type metadata accessor for ModelXPCRequest);
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1979EA8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_47_4();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (OUTLINED_FUNCTION_39_5(v20))
  {
    OUTLINED_FUNCTION_132_1();
    OUTLINED_FUNCTION_116();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_134_2();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v60 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v60, qword_1ED87FB48);
        sub_197A878A8();
        v61 = sub_197A875E8();
        sub_197A87D68();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v62, v63);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v64, v65, "ModelManager received unentitled request. Expected entitlement %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_155();
        OUTLINED_FUNCTION_0_14();
        v68 = sub_197955F04(v66, v67);
        v69 = OUTLINED_FUNCTION_85_3(v68);
        v71 = OUTLINED_FUNCTION_38_5(v69, v70);
        OUTLINED_FUNCTION_211(v71);
        break;
      case 5:
        OUTLINED_FUNCTION_134_2();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v52 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v52, qword_1ED87FB48);
        sub_197A878A8();
        v53 = sub_197A875E8();
        sub_197A87D78();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v54, v55);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v56, v57, "IPC Connection errors, evict session to create new session on next connection %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_153_1();
        sub_197944528();
        OUTLINED_FUNCTION_15_6();
        if (v59)
        {
          sub_197947900(v58, &qword_1EAF499A8);
        }

        else
        {
          v88 = OUTLINED_FUNCTION_9_5();
          v89(v88);
          sub_197A21F90();
          v90 = OUTLINED_FUNCTION_42();
          v91(v90);
        }

        OUTLINED_FUNCTION_152();
        OUTLINED_FUNCTION_0_14();
        v94 = sub_197955F04(v92, v93);
        v95 = OUTLINED_FUNCTION_84_3(v94);
        v97 = OUTLINED_FUNCTION_40_4(v95, v96);
        OUTLINED_FUNCTION_201(v97);
        v36 = v17;
        goto LABEL_35;
      case 31:
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v22 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v22, qword_1ED87FB48);
        sub_197A875E8();
        v23 = sub_197A87D68();
        if (OUTLINED_FUNCTION_65(v23))
        {
          v24 = OUTLINED_FUNCTION_204();
          OUTLINED_FUNCTION_137(v24);
          OUTLINED_FUNCTION_53();
          _os_log_impl(v25, v26, v27, v28, v29, 2u);
          OUTLINED_FUNCTION_42_0();
        }

        OUTLINED_FUNCTION_207();
        OUTLINED_FUNCTION_0_14();
        v32 = sub_197955F04(v30, v31);
        v33 = OUTLINED_FUNCTION_71_5(v32);
        OUTLINED_FUNCTION_27_6(v33, v34);
        v35 = swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_201(v35);
        v36 = v14;
        goto LABEL_35;
      default:
        OUTLINED_FUNCTION_3_7();
        sub_19796361C();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v72 = OUTLINED_FUNCTION_221();
        __swift_project_value_buffer(v72, qword_1ED87FB48);
        OUTLINED_FUNCTION_2_10();
        OUTLINED_FUNCTION_116();
        sub_1979557E8();
        v61 = sub_197A875E8();
        v73 = sub_197A87D58();
        v74 = OUTLINED_FUNCTION_118_1(v73);
        v75 = *(v16 + 88);
        if (v74)
        {
          OUTLINED_FUNCTION_131_1();
          OUTLINED_FUNCTION_113();
          OUTLINED_FUNCTION_61_0();
          OUTLINED_FUNCTION_124_2();
          *v15 = 138412546;
          OUTLINED_FUNCTION_0_14();
          v78 = sub_197955F04(v76, v77);
          OUTLINED_FUNCTION_83_3(v78);
          OUTLINED_FUNCTION_2_10();
          sub_1979557E8();
          _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v75, v79);
          v80 = OUTLINED_FUNCTION_16_6();
          *(v16 + 24) = type metadata accessor for ModelXPCRequest.StartMonitoringInferences(v80);
          v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A68, &qword_197A92B08);
          v82 = OUTLINED_FUNCTION_218(v81);
          OUTLINED_FUNCTION_219(v82, v83, v84, v85);
          OUTLINED_FUNCTION_215();
          *(v15 + 14) = v75;
          OUTLINED_FUNCTION_78_4(&dword_197941000, v86, v87, "Passing along %@ in response to %s");
          sub_197947900(v19, &qword_1EAF48A90);
          OUTLINED_FUNCTION_36_3();
          OUTLINED_FUNCTION_17_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v75, v98);
        }

        OUTLINED_FUNCTION_59_5();
        OUTLINED_FUNCTION_0_14();
        v101 = sub_197955F04(v99, v100);
        v102 = OUTLINED_FUNCTION_71_5(v101);
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        a9 = v102;
        swift_willThrow();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v14, v103);
        break;
    }

    v36 = v61;
LABEL_35:
    sub_197947900(v36, &qword_1EAF499A8);

    goto LABEL_36;
  }

  if (qword_1ED87FC08 != -1)
  {
    OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
  }

  v37 = sub_197A87608();
  v38 = OUTLINED_FUNCTION_37_4(v37, qword_1ED87FB48);
  MEMORY[0x19A8EBBD0](v38);
  sub_197A875E8();
  sub_197A87D68();
  OUTLINED_FUNCTION_214();
  if (OUTLINED_FUNCTION_110_1())
  {
    OUTLINED_FUNCTION_56();
    v39 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_212(5.7779e-34);
    v40 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_135_1(v40);
    OUTLINED_FUNCTION_53();
    _os_log_impl(v41, v42, v43, v44, v45, 0xCu);
    sub_197947900(v39, &qword_1EAF48A90);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_42_0();
  }

  OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_0_14();
  v48 = sub_197955F04(v46, v47);
  v49 = OUTLINED_FUNCTION_71_5(v48);
  OUTLINED_FUNCTION_27_6(v49, v50);
  v51 = swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_201(v51);

  sub_197947900(v14, &qword_1EAF499A8);
LABEL_36:
  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_36_4();
  OUTLINED_FUNCTION_142();

  return v105(v104, v105, v106, v107, v108, v109, v110, v111, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1979EB63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_4_6();
  sub_1979636E8(v20, v21);
  OUTLINED_FUNCTION_45_4();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (OUTLINED_FUNCTION_39_5(v22))
  {
    OUTLINED_FUNCTION_132_1();
    OUTLINED_FUNCTION_116();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_134_2();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v62 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v62, qword_1ED87FB48);
        sub_197A878A8();
        v63 = sub_197A875E8();
        sub_197A87D68();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v64, v65);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v66, v67, "ModelManager received unentitled request. Expected entitlement %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_155();
        OUTLINED_FUNCTION_0_14();
        v70 = sub_197955F04(v68, v69);
        v71 = OUTLINED_FUNCTION_85_3(v70);
        v73 = OUTLINED_FUNCTION_38_5(v71, v72);
        OUTLINED_FUNCTION_211(v73);
        break;
      case 5:
        OUTLINED_FUNCTION_134_2();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v54 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v54, qword_1ED87FB48);
        sub_197A878A8();
        v55 = sub_197A875E8();
        sub_197A87D78();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v56, v57);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v58, v59, "IPC Connection errors, evict session to create new session on next connection %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_153_1();
        sub_197944528();
        OUTLINED_FUNCTION_15_6();
        if (v61)
        {
          sub_197947900(v60, &qword_1EAF499A8);
        }

        else
        {
          v90 = OUTLINED_FUNCTION_9_5();
          v91(v90);
          sub_197A21F90();
          v92 = OUTLINED_FUNCTION_42();
          v93(v92);
        }

        OUTLINED_FUNCTION_152();
        OUTLINED_FUNCTION_0_14();
        v96 = sub_197955F04(v94, v95);
        v97 = OUTLINED_FUNCTION_84_3(v96);
        v99 = OUTLINED_FUNCTION_40_4(v97, v98);
        OUTLINED_FUNCTION_201(v99);
        v38 = v17;
        goto LABEL_35;
      case 31:
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v24 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v24, qword_1ED87FB48);
        sub_197A875E8();
        v25 = sub_197A87D68();
        if (OUTLINED_FUNCTION_65(v25))
        {
          v26 = OUTLINED_FUNCTION_204();
          OUTLINED_FUNCTION_137(v26);
          OUTLINED_FUNCTION_53();
          _os_log_impl(v27, v28, v29, v30, v31, 2u);
          OUTLINED_FUNCTION_42_0();
        }

        OUTLINED_FUNCTION_207();
        OUTLINED_FUNCTION_0_14();
        v34 = sub_197955F04(v32, v33);
        v35 = OUTLINED_FUNCTION_71_5(v34);
        OUTLINED_FUNCTION_27_6(v35, v36);
        v37 = swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_201(v37);
        v38 = v14;
        goto LABEL_35;
      default:
        OUTLINED_FUNCTION_3_7();
        sub_19796361C();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v74 = OUTLINED_FUNCTION_221();
        __swift_project_value_buffer(v74, qword_1ED87FB48);
        OUTLINED_FUNCTION_2_10();
        OUTLINED_FUNCTION_116();
        sub_1979557E8();
        v63 = sub_197A875E8();
        v75 = sub_197A87D58();
        v76 = OUTLINED_FUNCTION_118_1(v75);
        v77 = *(v16 + 88);
        if (v76)
        {
          OUTLINED_FUNCTION_131_1();
          OUTLINED_FUNCTION_113();
          OUTLINED_FUNCTION_61_0();
          OUTLINED_FUNCTION_124_2();
          *v15 = 138412546;
          OUTLINED_FUNCTION_0_14();
          v80 = sub_197955F04(v78, v79);
          OUTLINED_FUNCTION_83_3(v80);
          OUTLINED_FUNCTION_2_10();
          sub_1979557E8();
          _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v77, v81);
          v82 = OUTLINED_FUNCTION_16_6();
          *(v16 + 24) = type metadata accessor for ModelXPCRequest.StartMonitoringInferences(v82);
          v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49A68, &qword_197A92B08);
          v84 = OUTLINED_FUNCTION_218(v83);
          OUTLINED_FUNCTION_219(v84, v85, v86, v87);
          OUTLINED_FUNCTION_215();
          *(v15 + 14) = v77;
          OUTLINED_FUNCTION_78_4(&dword_197941000, v88, v89, "Passing along %@ in response to %s");
          sub_197947900(v19, &qword_1EAF48A90);
          OUTLINED_FUNCTION_36_3();
          OUTLINED_FUNCTION_17_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v77, v100);
        }

        OUTLINED_FUNCTION_59_5();
        OUTLINED_FUNCTION_0_14();
        v103 = sub_197955F04(v101, v102);
        v104 = OUTLINED_FUNCTION_71_5(v103);
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        a9 = v104;
        swift_willThrow();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v14, v105);
        break;
    }

    v38 = v63;
LABEL_35:
    sub_197947900(v38, &qword_1EAF499A8);

    goto LABEL_36;
  }

  if (qword_1ED87FC08 != -1)
  {
    OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
  }

  v39 = sub_197A87608();
  v40 = OUTLINED_FUNCTION_37_4(v39, qword_1ED87FB48);
  MEMORY[0x19A8EBBD0](v40);
  sub_197A875E8();
  sub_197A87D68();
  OUTLINED_FUNCTION_214();
  if (OUTLINED_FUNCTION_110_1())
  {
    OUTLINED_FUNCTION_56();
    v41 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_212(5.7779e-34);
    v42 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_135_1(v42);
    OUTLINED_FUNCTION_53();
    _os_log_impl(v43, v44, v45, v46, v47, 0xCu);
    sub_197947900(v41, &qword_1EAF48A90);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_42_0();
  }

  OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_0_14();
  v50 = sub_197955F04(v48, v49);
  v51 = OUTLINED_FUNCTION_71_5(v50);
  OUTLINED_FUNCTION_27_6(v51, v52);
  v53 = swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_201(v53);

  sub_197947900(v14, &qword_1EAF499A8);
LABEL_36:
  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_36_4();
  OUTLINED_FUNCTION_142();

  return v107(v106, v107, v108, v109, v110, v111, v112, v113, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1979EBCE4(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_197A87298();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = type metadata accessor for ModelManagerError(0);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = type metadata accessor for ModelXPCRequest(0);
  v2[15] = swift_task_alloc();
  v2[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49AE8, &qword_197A92B60);
  v2[17] = swift_task_alloc();
  v2[18] = type metadata accessor for IPCSessionWrapper(0);
  v2[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A8, &qword_197A92B00);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1979EBED8, v1, 0);
}

uint64_t sub_1979EBED8()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_129_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_105_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_70_4(v1);

  return sub_19794ECC8();
}

uint64_t sub_1979EBF5C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 184) = v0;

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1979EC070()
{
  OUTLINED_FUNCTION_246();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_69_4();
  sub_197947900(v0, &qword_1EAF499A8);
  v4 = OUTLINED_FUNCTION_34_5();
  v5(v4);
  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_100_0();
  swift_storeEnumTagMultiPayload();
  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_216(v6);
  OUTLINED_FUNCTION_5_7();
  sub_197955F04(v7, v3);
  OUTLINED_FUNCTION_10_10(&qword_1ED880268);
  sub_197A03FD4();
  OUTLINED_FUNCTION_57_2();
  *v2 = v8;
  v2[1] = sub_1979EC184;
  OUTLINED_FUNCTION_8_7(v9, *(v1 + 136));
  OUTLINED_FUNCTION_191();

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

uint64_t sub_1979EC184()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_53_4();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 200) = v0;

  OUTLINED_FUNCTION_52_5();
  sub_1979636E8(*(v4 + 120), type metadata accessor for ModelXPCRequest);
  OUTLINED_FUNCTION_13_2();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1979EC2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  v19 = *(v16 + 184);
  OUTLINED_FUNCTION_64_5();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (OUTLINED_FUNCTION_39_5(v20))
  {
    OUTLINED_FUNCTION_140_1();
    OUTLINED_FUNCTION_116();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_144_1();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v60 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v60, qword_1ED87FB48);
        sub_197A878A8();
        v61 = sub_197A875E8();
        sub_197A87D68();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v17 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v62, v63);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v64, v65, "ModelManager received unentitled request. Expected entitlement %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_175();
        OUTLINED_FUNCTION_0_14();
        v68 = sub_197955F04(v66, v67);
        v69 = OUTLINED_FUNCTION_85_3(v68);
        v71 = OUTLINED_FUNCTION_38_5(v69, v70);
        OUTLINED_FUNCTION_211(v71);
        break;
      case 5:
        OUTLINED_FUNCTION_144_1();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v52 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v52, qword_1ED87FB48);
        sub_197A878A8();
        v53 = sub_197A875E8();
        sub_197A87D78();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v17 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v54, v55);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v56, v57, "IPC Connection errors, evict session to create new session on next connection %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_173();
        sub_197944528();
        OUTLINED_FUNCTION_20_7();
        if (v59)
        {
          sub_197947900(v58, &qword_1EAF499A8);
        }

        else
        {
          v87 = OUTLINED_FUNCTION_12_6();
          v88(v87);
          sub_197A21F90();
          v89 = OUTLINED_FUNCTION_42();
          v90(v89);
        }

        OUTLINED_FUNCTION_172();
        OUTLINED_FUNCTION_0_14();
        v93 = sub_197955F04(v91, v92);
        v94 = OUTLINED_FUNCTION_84_3(v93);
        v96 = OUTLINED_FUNCTION_40_4(v94, v95);
        OUTLINED_FUNCTION_201(v96);
        v36 = v19;
        goto LABEL_35;
      case 31:
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v22 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v22, qword_1ED87FB48);
        sub_197A875E8();
        v23 = sub_197A87D68();
        if (OUTLINED_FUNCTION_65(v23))
        {
          v24 = OUTLINED_FUNCTION_204();
          OUTLINED_FUNCTION_137(v24);
          OUTLINED_FUNCTION_53();
          _os_log_impl(v25, v26, v27, v28, v29, 2u);
          OUTLINED_FUNCTION_42_0();
        }

        OUTLINED_FUNCTION_222();
        OUTLINED_FUNCTION_0_14();
        v32 = sub_197955F04(v30, v31);
        v33 = OUTLINED_FUNCTION_71_5(v32);
        OUTLINED_FUNCTION_27_6(v33, v34);
        v35 = swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_201(v35);
        v36 = v14;
        goto LABEL_35;
      default:
        OUTLINED_FUNCTION_3_7();
        sub_19796361C();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v72 = OUTLINED_FUNCTION_225();
        __swift_project_value_buffer(v72, qword_1ED87FB48);
        OUTLINED_FUNCTION_2_10();
        OUTLINED_FUNCTION_116();
        sub_1979557E8();
        v61 = sub_197A875E8();
        v73 = sub_197A87D58();
        v74 = OUTLINED_FUNCTION_118_1(v73);
        v75 = *(v16 + 80);
        if (v74)
        {
          OUTLINED_FUNCTION_139_0();
          OUTLINED_FUNCTION_113();
          OUTLINED_FUNCTION_61_0();
          OUTLINED_FUNCTION_124_2();
          *v15 = 138412546;
          OUTLINED_FUNCTION_0_14();
          v78 = sub_197955F04(v76, v77);
          OUTLINED_FUNCTION_83_3(v78);
          OUTLINED_FUNCTION_2_10();
          sub_1979557E8();
          _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v75, v79);
          OUTLINED_FUNCTION_19_8();
          *(v16 + 24) = &type metadata for ModelXPCRequest.DumpState;
          v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49AF0, &qword_197A92B68);
          v81 = OUTLINED_FUNCTION_218(v80);
          OUTLINED_FUNCTION_219(v81, v82, v83, v84);
          OUTLINED_FUNCTION_215();
          *(v15 + 14) = v75;
          OUTLINED_FUNCTION_78_4(&dword_197941000, v85, v86, "Passing along %@ in response to %s");
          sub_197947900(v18, &qword_1EAF48A90);
          OUTLINED_FUNCTION_36_3();
          OUTLINED_FUNCTION_17_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v75, v97);
        }

        OUTLINED_FUNCTION_79_7();
        OUTLINED_FUNCTION_0_14();
        v100 = sub_197955F04(v98, v99);
        v101 = OUTLINED_FUNCTION_71_5(v100);
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        a9 = v101;
        swift_willThrow();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v14, v102);
        break;
    }

    v36 = v61;
LABEL_35:
    sub_197947900(v36, &qword_1EAF499A8);

    goto LABEL_36;
  }

  if (qword_1ED87FC08 != -1)
  {
    OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
  }

  v37 = sub_197A87608();
  v38 = OUTLINED_FUNCTION_37_4(v37, qword_1ED87FB48);
  MEMORY[0x19A8EBBD0](v38);
  sub_197A875E8();
  sub_197A87D68();
  OUTLINED_FUNCTION_214();
  if (OUTLINED_FUNCTION_110_1())
  {
    OUTLINED_FUNCTION_56();
    v39 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_212(5.7779e-34);
    v40 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_135_1(v40);
    OUTLINED_FUNCTION_53();
    _os_log_impl(v41, v42, v43, v44, v45, 0xCu);
    sub_197947900(v39, &qword_1EAF48A90);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_42_0();
  }

  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_0_14();
  v48 = sub_197955F04(v46, v47);
  v49 = OUTLINED_FUNCTION_71_5(v48);
  OUTLINED_FUNCTION_27_6(v49, v50);
  v51 = swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_201(v51);

  sub_197947900(v14, &qword_1EAF499A8);
LABEL_36:
  OUTLINED_FUNCTION_23_6();

  OUTLINED_FUNCTION_36_4();
  OUTLINED_FUNCTION_142();

  return v104(v103, v104, v105, v106, v107, v108, v109, v110, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1979EC968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  v19 = OUTLINED_FUNCTION_68_5();
  sub_1979D98F4(v19, v20);
  if (!v15)
  {
    OUTLINED_FUNCTION_18_6();
    sub_197947900(v18, &qword_1EAF49AE8);
    sub_197947900(0, &qword_1EAF499A8);
    OUTLINED_FUNCTION_4_6();
    sub_1979636E8(v17, v37);

    OUTLINED_FUNCTION_15();
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_67_6();
  OUTLINED_FUNCTION_0_14();
  v23 = sub_197955F04(v21, v22);
  v24 = OUTLINED_FUNCTION_56_4(v23);
  OUTLINED_FUNCTION_3_7();
  sub_19796361C();
  sub_197947900(v15, &qword_1EAF49AE8);
  OUTLINED_FUNCTION_4_6();
  sub_1979636E8(v14, v25);
  OUTLINED_FUNCTION_130_0();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (!OUTLINED_FUNCTION_53_5(v26))
  {

    if (qword_1ED87FC08 != -1)
    {
      OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
    }

    v38 = sub_197A87608();
    v39 = OUTLINED_FUNCTION_37_4(v38, qword_1ED87FB48);
    MEMORY[0x19A8EBBD0](v39);
    sub_197A875E8();
    sub_197A87D68();
    OUTLINED_FUNCTION_230();
    if (OUTLINED_FUNCTION_96_1())
    {
      OUTLINED_FUNCTION_56();
      v40 = OUTLINED_FUNCTION_142_1();
      OUTLINED_FUNCTION_229(5.7779e-34);
      v41 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_158_1(v41);
      OUTLINED_FUNCTION_92_2(&dword_197941000, v42, v43, "Unexpected non ModelManagerError from the daemon %@");
      sub_197947900(v40, &qword_1EAF48A90);
      OUTLINED_FUNCTION_36_3();
      OUTLINED_FUNCTION_37();
    }

    OUTLINED_FUNCTION_251();
    v44 = OUTLINED_FUNCTION_82_4();
    OUTLINED_FUNCTION_27_6(v44, v45);
    v46 = swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_201(v46);

    sub_197947900(v17, &qword_1EAF499A8);
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_116();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      OUTLINED_FUNCTION_174();
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
      }

      v55 = sub_197A87608();
      OUTLINED_FUNCTION_37_4(v55, qword_1ED87FB48);
      sub_197A878A8();
      v56 = sub_197A875E8();
      sub_197A87D68();
      OUTLINED_FUNCTION_210();
      if (OUTLINED_FUNCTION_209())
      {
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_84_2();
        *(v18 + 4) = OUTLINED_FUNCTION_81_3(4.8149e-34, v57, v58);
        OUTLINED_FUNCTION_146(&dword_197941000, v59, v60, "ModelManager received unentitled request. Expected entitlement %s");
        OUTLINED_FUNCTION_25();
        OUTLINED_FUNCTION_36_3();
      }

      v61 = OUTLINED_FUNCTION_77_5();
      v63 = OUTLINED_FUNCTION_55_4(v61, v62);
      OUTLINED_FUNCTION_226(v63);
      break;
    case 5:
      OUTLINED_FUNCTION_174();
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
      }

      v47 = sub_197A87608();
      OUTLINED_FUNCTION_37_4(v47, qword_1ED87FB48);
      sub_197A878A8();
      v48 = sub_197A875E8();
      sub_197A87D78();
      OUTLINED_FUNCTION_210();
      if (OUTLINED_FUNCTION_209())
      {
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_84_2();
        *(v18 + 4) = OUTLINED_FUNCTION_81_3(4.8149e-34, v49, v50);
        OUTLINED_FUNCTION_146(&dword_197941000, v51, v52, "IPC Connection errors, evict session to create new session on next connection %s");
        OUTLINED_FUNCTION_25();
        OUTLINED_FUNCTION_36_3();
      }

      OUTLINED_FUNCTION_208();
      sub_197944528();
      OUTLINED_FUNCTION_57_3();
      if (v54)
      {
        sub_197947900(v53, &qword_1EAF499A8);
      }

      else
      {
        v17 = *(v16 + 64);
        v78 = OUTLINED_FUNCTION_17_6();
        v79(v78);
        sub_197A21F90();
        v80 = OUTLINED_FUNCTION_60_3();
        v81(v80);
      }

      v82 = OUTLINED_FUNCTION_75_5();
      v84 = OUTLINED_FUNCTION_54_3(v82, v83);
      OUTLINED_FUNCTION_201(v84);
      v36 = v17;
      goto LABEL_37;
    case 31:
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
      }

      v28 = sub_197A87608();
      OUTLINED_FUNCTION_66_5(v28, qword_1ED87FB48);
      sub_197A875E8();
      v29 = sub_197A87D68();
      if (OUTLINED_FUNCTION_55_0(v29))
      {
        v30 = OUTLINED_FUNCTION_204();
        OUTLINED_FUNCTION_161(v30);
        OUTLINED_FUNCTION_91_3(&dword_197941000, v31, v32, "ModelManager received request that's supported on internal only");
        OUTLINED_FUNCTION_29();
      }

      OUTLINED_FUNCTION_252();
      v33 = OUTLINED_FUNCTION_82_4();
      OUTLINED_FUNCTION_27_6(v33, v34);
      v35 = swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_201(v35);
      v36 = v24;
      goto LABEL_37;
    default:
      OUTLINED_FUNCTION_3_7();
      sub_19796361C();
      if (qword_1ED87FC08 != -1)
      {
        OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
      }

      v64 = OUTLINED_FUNCTION_225();
      v65 = __swift_project_value_buffer(v64, qword_1ED87FB48);
      OUTLINED_FUNCTION_2_10();
      OUTLINED_FUNCTION_116();
      sub_1979557E8();
      v56 = sub_197A875E8();
      v66 = sub_197A87D58();
      v67 = OUTLINED_FUNCTION_118_1(v66);
      v68 = *(v16 + 80);
      if (v67)
      {
        OUTLINED_FUNCTION_139_0();
        OUTLINED_FUNCTION_113();
        OUTLINED_FUNCTION_61_0();
        OUTLINED_FUNCTION_124_2();
        OUTLINED_FUNCTION_51_4(5.778e-34);
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        v69 = _swift_stdlib_bridgeErrorToNSError();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v68, v70);
        OUTLINED_FUNCTION_19_8();
        *(v16 + 24) = &type metadata for ModelXPCRequest.DumpState;
        v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49AF0, &qword_197A92B68);
        v72 = OUTLINED_FUNCTION_231(v71);
        OUTLINED_FUNCTION_232(v72, v73, v74, v75);
        OUTLINED_FUNCTION_228();
        *(v15 + 14) = v69;
        OUTLINED_FUNCTION_78_4(&dword_197941000, v76, v77, "Passing along %@ in response to %s");
        sub_197947900(v18, &qword_1EAF48A90);
        OUTLINED_FUNCTION_36_3();
        OUTLINED_FUNCTION_17_0();
        OUTLINED_FUNCTION_42_0();
      }

      else
      {

        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v68, v85);
      }

      v86 = OUTLINED_FUNCTION_76_4();
      OUTLINED_FUNCTION_2_10();
      sub_1979557E8();
      a9 = v86;
      swift_willThrow();
      OUTLINED_FUNCTION_1_10();
      sub_1979636E8(v65, v87);
      break;
  }

  v36 = v56;
LABEL_37:
  sub_197947900(v36, &qword_1EAF499A8);

LABEL_38:
  OUTLINED_FUNCTION_23_6();

  OUTLINED_FUNCTION_36_4();
LABEL_39:
  OUTLINED_FUNCTION_142();

  return v89(v88, v89, v90, v91, v92, v93, v94, v95, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1979ED014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_4_6();
  sub_1979636E8(v19, v20);
  v21 = *(v16 + 200);
  OUTLINED_FUNCTION_64_5();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (OUTLINED_FUNCTION_39_5(v22))
  {
    OUTLINED_FUNCTION_140_1();
    OUTLINED_FUNCTION_116();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_144_1();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v62 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v62, qword_1ED87FB48);
        sub_197A878A8();
        v63 = sub_197A875E8();
        sub_197A87D68();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v17 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v64, v65);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v66, v67, "ModelManager received unentitled request. Expected entitlement %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_175();
        OUTLINED_FUNCTION_0_14();
        v70 = sub_197955F04(v68, v69);
        v71 = OUTLINED_FUNCTION_85_3(v70);
        v73 = OUTLINED_FUNCTION_38_5(v71, v72);
        OUTLINED_FUNCTION_211(v73);
        break;
      case 5:
        OUTLINED_FUNCTION_144_1();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v54 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v54, qword_1ED87FB48);
        sub_197A878A8();
        v55 = sub_197A875E8();
        sub_197A87D78();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v17 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v56, v57);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v58, v59, "IPC Connection errors, evict session to create new session on next connection %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_173();
        sub_197944528();
        OUTLINED_FUNCTION_20_7();
        if (v61)
        {
          sub_197947900(v60, &qword_1EAF499A8);
        }

        else
        {
          v89 = OUTLINED_FUNCTION_12_6();
          v90(v89);
          sub_197A21F90();
          v91 = OUTLINED_FUNCTION_42();
          v92(v91);
        }

        OUTLINED_FUNCTION_172();
        OUTLINED_FUNCTION_0_14();
        v95 = sub_197955F04(v93, v94);
        v96 = OUTLINED_FUNCTION_84_3(v95);
        v98 = OUTLINED_FUNCTION_40_4(v96, v97);
        OUTLINED_FUNCTION_201(v98);
        v38 = v21;
        goto LABEL_35;
      case 31:
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v24 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v24, qword_1ED87FB48);
        sub_197A875E8();
        v25 = sub_197A87D68();
        if (OUTLINED_FUNCTION_65(v25))
        {
          v26 = OUTLINED_FUNCTION_204();
          OUTLINED_FUNCTION_137(v26);
          OUTLINED_FUNCTION_53();
          _os_log_impl(v27, v28, v29, v30, v31, 2u);
          OUTLINED_FUNCTION_42_0();
        }

        OUTLINED_FUNCTION_222();
        OUTLINED_FUNCTION_0_14();
        v34 = sub_197955F04(v32, v33);
        v35 = OUTLINED_FUNCTION_71_5(v34);
        OUTLINED_FUNCTION_27_6(v35, v36);
        v37 = swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_201(v37);
        v38 = v14;
        goto LABEL_35;
      default:
        OUTLINED_FUNCTION_3_7();
        sub_19796361C();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v74 = OUTLINED_FUNCTION_225();
        __swift_project_value_buffer(v74, qword_1ED87FB48);
        OUTLINED_FUNCTION_2_10();
        OUTLINED_FUNCTION_116();
        sub_1979557E8();
        v63 = sub_197A875E8();
        v75 = sub_197A87D58();
        v76 = OUTLINED_FUNCTION_118_1(v75);
        v77 = *(v16 + 80);
        if (v76)
        {
          OUTLINED_FUNCTION_139_0();
          OUTLINED_FUNCTION_113();
          OUTLINED_FUNCTION_61_0();
          OUTLINED_FUNCTION_124_2();
          *v15 = 138412546;
          OUTLINED_FUNCTION_0_14();
          v80 = sub_197955F04(v78, v79);
          OUTLINED_FUNCTION_83_3(v80);
          OUTLINED_FUNCTION_2_10();
          sub_1979557E8();
          _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v77, v81);
          OUTLINED_FUNCTION_19_8();
          *(v16 + 24) = &type metadata for ModelXPCRequest.DumpState;
          v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49AF0, &qword_197A92B68);
          v83 = OUTLINED_FUNCTION_218(v82);
          OUTLINED_FUNCTION_219(v83, v84, v85, v86);
          OUTLINED_FUNCTION_215();
          *(v15 + 14) = v77;
          OUTLINED_FUNCTION_78_4(&dword_197941000, v87, v88, "Passing along %@ in response to %s");
          sub_197947900(v18, &qword_1EAF48A90);
          OUTLINED_FUNCTION_36_3();
          OUTLINED_FUNCTION_17_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v77, v99);
        }

        OUTLINED_FUNCTION_79_7();
        OUTLINED_FUNCTION_0_14();
        v102 = sub_197955F04(v100, v101);
        v103 = OUTLINED_FUNCTION_71_5(v102);
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        a9 = v103;
        swift_willThrow();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v14, v104);
        break;
    }

    v38 = v63;
LABEL_35:
    sub_197947900(v38, &qword_1EAF499A8);

    goto LABEL_36;
  }

  if (qword_1ED87FC08 != -1)
  {
    OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
  }

  v39 = sub_197A87608();
  v40 = OUTLINED_FUNCTION_37_4(v39, qword_1ED87FB48);
  MEMORY[0x19A8EBBD0](v40);
  sub_197A875E8();
  sub_197A87D68();
  OUTLINED_FUNCTION_214();
  if (OUTLINED_FUNCTION_110_1())
  {
    OUTLINED_FUNCTION_56();
    v41 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_212(5.7779e-34);
    v42 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_135_1(v42);
    OUTLINED_FUNCTION_53();
    _os_log_impl(v43, v44, v45, v46, v47, 0xCu);
    sub_197947900(v41, &qword_1EAF48A90);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_42_0();
  }

  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_0_14();
  v50 = sub_197955F04(v48, v49);
  v51 = OUTLINED_FUNCTION_71_5(v50);
  OUTLINED_FUNCTION_27_6(v51, v52);
  v53 = swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_201(v53);

  sub_197947900(v14, &qword_1EAF499A8);
LABEL_36:
  OUTLINED_FUNCTION_23_6();

  OUTLINED_FUNCTION_36_4();
  OUTLINED_FUNCTION_142();

  return v106(v105, v106, v107, v108, v109, v110, v111, v112, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1979ED6C4(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_197A87298();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = type metadata accessor for ModelManagerError(0);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = type metadata accessor for ModelXPCRequest(0);
  v3[16] = swift_task_alloc();
  v3[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49C50, &qword_197A92CE0);
  v3[18] = swift_task_alloc();
  v3[19] = type metadata accessor for IPCSessionWrapper(0);
  v3[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A8, &qword_197A92B00);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1979ED8BC, v2, 0);
}

uint64_t sub_1979ED8BC()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_99_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_88_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_30_7(v1);

  return sub_19794ECC8();
}

uint64_t sub_1979ED940()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 192) = v0;

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1979EDA54()
{
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_24_6();
  sub_197947900(v0, &qword_1EAF499A8);
  v4 = OUTLINED_FUNCTION_21_5();
  v5(v4);
  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_100_0();
  swift_storeEnumTagMultiPayload();
  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_181(v6);
  OUTLINED_FUNCTION_5_7();
  sub_197955F04(v7, v3);
  OUTLINED_FUNCTION_10_10(&qword_1ED880268);
  sub_197A05894();
  OUTLINED_FUNCTION_57_2();
  *v2 = v8;
  v2[1] = sub_19797D814;
  OUTLINED_FUNCTION_8_7(v9, *(v1 + 144));
  OUTLINED_FUNCTION_169_0();

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

uint64_t sub_1979EDB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_47_4();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
  if (OUTLINED_FUNCTION_39_5(v20))
  {
    OUTLINED_FUNCTION_132_1();
    OUTLINED_FUNCTION_116();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        OUTLINED_FUNCTION_134_2();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v60 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v60, qword_1ED87FB48);
        sub_197A878A8();
        v61 = sub_197A875E8();
        sub_197A87D68();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v62, v63);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v64, v65, "ModelManager received unentitled request. Expected entitlement %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_155();
        OUTLINED_FUNCTION_0_14();
        v68 = sub_197955F04(v66, v67);
        v69 = OUTLINED_FUNCTION_85_3(v68);
        v71 = OUTLINED_FUNCTION_38_5(v69, v70);
        OUTLINED_FUNCTION_211(v71);
        break;
      case 5:
        OUTLINED_FUNCTION_134_2();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v52 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v52, qword_1ED87FB48);
        sub_197A878A8();
        v53 = sub_197A875E8();
        sub_197A87D78();
        OUTLINED_FUNCTION_203();
        if (OUTLINED_FUNCTION_202())
        {
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_115_0();
          OUTLINED_FUNCTION_119_1();
          *(v18 + 4) = OUTLINED_FUNCTION_74(4.8149e-34, v54, v55);
          OUTLINED_FUNCTION_73_5(&dword_197941000, v56, v57, "IPC Connection errors, evict session to create new session on next connection %s");
          OUTLINED_FUNCTION_33_5();
          OUTLINED_FUNCTION_37();
        }

        OUTLINED_FUNCTION_153_1();
        sub_197944528();
        OUTLINED_FUNCTION_15_6();
        if (v59)
        {
          sub_197947900(v58, &qword_1EAF499A8);
        }

        else
        {
          v88 = OUTLINED_FUNCTION_9_5();
          v89(v88);
          sub_197A21F90();
          v90 = OUTLINED_FUNCTION_42();
          v91(v90);
        }

        OUTLINED_FUNCTION_152();
        OUTLINED_FUNCTION_0_14();
        v94 = sub_197955F04(v92, v93);
        v95 = OUTLINED_FUNCTION_84_3(v94);
        v97 = OUTLINED_FUNCTION_40_4(v95, v96);
        OUTLINED_FUNCTION_201(v97);
        v36 = v17;
        goto LABEL_35;
      case 31:
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v22 = sub_197A87608();
        OUTLINED_FUNCTION_66_5(v22, qword_1ED87FB48);
        sub_197A875E8();
        v23 = sub_197A87D68();
        if (OUTLINED_FUNCTION_65(v23))
        {
          v24 = OUTLINED_FUNCTION_204();
          OUTLINED_FUNCTION_137(v24);
          OUTLINED_FUNCTION_53();
          _os_log_impl(v25, v26, v27, v28, v29, 2u);
          OUTLINED_FUNCTION_42_0();
        }

        OUTLINED_FUNCTION_207();
        OUTLINED_FUNCTION_0_14();
        v32 = sub_197955F04(v30, v31);
        v33 = OUTLINED_FUNCTION_71_5(v32);
        OUTLINED_FUNCTION_27_6(v33, v34);
        v35 = swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_201(v35);
        v36 = v14;
        goto LABEL_35;
      default:
        OUTLINED_FUNCTION_3_7();
        sub_19796361C();
        if (qword_1ED87FC08 != -1)
        {
          OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
        }

        v72 = OUTLINED_FUNCTION_221();
        __swift_project_value_buffer(v72, qword_1ED87FB48);
        OUTLINED_FUNCTION_2_10();
        OUTLINED_FUNCTION_116();
        sub_1979557E8();
        v61 = sub_197A875E8();
        v73 = sub_197A87D58();
        v74 = OUTLINED_FUNCTION_118_1(v73);
        v75 = *(v16 + 88);
        if (v74)
        {
          OUTLINED_FUNCTION_131_1();
          OUTLINED_FUNCTION_113();
          OUTLINED_FUNCTION_61_0();
          OUTLINED_FUNCTION_124_2();
          *v15 = 138412546;
          OUTLINED_FUNCTION_0_14();
          v78 = sub_197955F04(v76, v77);
          OUTLINED_FUNCTION_83_3(v78);
          OUTLINED_FUNCTION_2_10();
          sub_1979557E8();
          _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v75, v79);
          v80 = OUTLINED_FUNCTION_16_6();
          *(v16 + 24) = type metadata accessor for ModelXPCRequest.ExecuteRequest(v80);
          v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49C58, &qword_197A92CE8);
          v82 = OUTLINED_FUNCTION_218(v81);
          OUTLINED_FUNCTION_219(v82, v83, v84, v85);
          OUTLINED_FUNCTION_215();
          *(v15 + 14) = v75;
          OUTLINED_FUNCTION_78_4(&dword_197941000, v86, v87, "Passing along %@ in response to %s");
          sub_197947900(v19, &qword_1EAF48A90);
          OUTLINED_FUNCTION_36_3();
          OUTLINED_FUNCTION_17_0();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          OUTLINED_FUNCTION_1_10();
          sub_1979636E8(v75, v98);
        }

        OUTLINED_FUNCTION_59_5();
        OUTLINED_FUNCTION_0_14();
        v101 = sub_197955F04(v99, v100);
        v102 = OUTLINED_FUNCTION_71_5(v101);
        OUTLINED_FUNCTION_2_10();
        sub_1979557E8();
        a9 = v102;
        swift_willThrow();
        OUTLINED_FUNCTION_1_10();
        sub_1979636E8(v14, v103);
        break;
    }

    v36 = v61;
LABEL_35:
    sub_197947900(v36, &qword_1EAF499A8);

    goto LABEL_36;
  }

  if (qword_1ED87FC08 != -1)
  {
    OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
  }

  v37 = sub_197A87608();
  v38 = OUTLINED_FUNCTION_37_4(v37, qword_1ED87FB48);
  MEMORY[0x19A8EBBD0](v38);
  sub_197A875E8();
  sub_197A87D68();
  OUTLINED_FUNCTION_214();
  if (OUTLINED_FUNCTION_110_1())
  {
    OUTLINED_FUNCTION_56();
    v39 = OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_212(5.7779e-34);
    v40 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_135_1(v40);
    OUTLINED_FUNCTION_53();
    _os_log_impl(v41, v42, v43, v44, v45, 0xCu);
    sub_197947900(v39, &qword_1EAF48A90);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_42_0();
  }

  OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_0_14();
  v48 = sub_197955F04(v46, v47);
  v49 = OUTLINED_FUNCTION_71_5(v48);
  OUTLINED_FUNCTION_27_6(v49, v50);
  v51 = swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_201(v51);

  sub_197947900(v14, &qword_1EAF499A8);
LABEL_36:
  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_36_4();
  OUTLINED_FUNCTION_142();

  return v105(v104, v105, v106, v107, v108, v109, v110, v111, a9, a10, a11, a12, a13, a14);
}