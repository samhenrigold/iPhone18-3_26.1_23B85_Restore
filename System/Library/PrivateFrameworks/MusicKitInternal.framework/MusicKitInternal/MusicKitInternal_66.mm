uint64_t sub_1D549B394()
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 432) = v0;

  v7 = OUTLINED_FUNCTION_19_71();
  v8(v7);
  v9 = OUTLINED_FUNCTION_97_17();
  v10(v9);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_25_3();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D549B6B4()
{
  OUTLINED_FUNCTION_80();
  v0 = OUTLINED_FUNCTION_338_1();
  v1(v0);
  OUTLINED_FUNCTION_300_3();
  if (qword_1EDD5D8A8 != -1)
  {
    OUTLINED_FUNCTION_18(&qword_1EDD5D8A8);
  }

  v2 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v2, qword_1EDD76DC8);
  v3 = sub_1D560C738();
  v4 = sub_1D56156C8();
  if (OUTLINED_FUNCTION_54_13(v4))
  {
    v5 = OUTLINED_FUNCTION_63_12();
    OUTLINED_FUNCTION_81_12(v5);
    OUTLINED_FUNCTION_6_87();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_118();
  }

  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_271_2(v11);
  *v12 = v13;
  v14 = OUTLINED_FUNCTION_53_33(v12);

  return sub_1D5497D48(v14, v15);
}

uint64_t sub_1D549B7C4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D549B8A8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D549B98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[29] = a4;
  v5[30] = v4;
  v5[27] = a2;
  v5[28] = a3;
  v5[26] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7090, &qword_1D5667FE0);
  v5[31] = v6;
  v5[32] = *(v6 - 8);
  v5[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7070, &qword_1D5667F78);
  v5[34] = swift_task_alloc();
  v7 = sub_1D560DF28();
  v5[35] = v7;
  v5[36] = *(v7 - 8);
  v5[37] = swift_task_alloc();
  v8 = sub_1D560DF38();
  v5[38] = v8;
  v5[39] = *(v8 - 8);
  v5[40] = swift_task_alloc();
  v9 = sub_1D560E058();
  v5[41] = v9;
  v5[42] = *(v9 - 8);
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7088, &qword_1D5667FC8);
  v5[47] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D549BC08, 0, 0);
}

uint64_t sub_1D549BC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();
  sub_1D4F39AB0(v10[29], v10[47], &qword_1EC7F7088, &qword_1D5667FC8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7060, &qword_1D5667F68);
  OUTLINED_FUNCTION_22_11(v11);
  if (!v12)
  {
    OUTLINED_FUNCTION_71();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        if (qword_1EDD5D8A8 != -1)
        {
          OUTLINED_FUNCTION_18(&qword_1EDD5D8A8);
        }

        v14 = sub_1D560C758();
        OUTLINED_FUNCTION_62_4(v14, qword_1EDD76DC8);
        v15 = sub_1D560C738();
        v16 = sub_1D56156C8();
        if (OUTLINED_FUNCTION_74_12(v16))
        {
          v17 = OUTLINED_FUNCTION_63_12();
          OUTLINED_FUNCTION_86_10(v17);
          OUTLINED_FUNCTION_66_26();
          _os_log_impl(v18, v19, v20, v21, v22, 2u);
          OUTLINED_FUNCTION_54();
        }

        OUTLINED_FUNCTION_104_20();

        OUTLINED_FUNCTION_55();
        OUTLINED_FUNCTION_348_0();

        return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
      }
    }

    else
    {
      v32 = OUTLINED_FUNCTION_22_17();
      v33(v32);
    }
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v10[48] = v34;
  *v34 = v35;
  OUTLINED_FUNCTION_194_8(v34);
  OUTLINED_FUNCTION_348_0();

  return sub_1D54A0820(v36, v37, v38);
}

uint64_t sub_1D549BDE4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 392) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D549C094()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_393();
  if (qword_1EDD5D8A8 != -1)
  {
    OUTLINED_FUNCTION_18(&qword_1EDD5D8A8);
  }

  v0 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v0, qword_1EDD76DC8);
  v1 = sub_1D560C738();
  v2 = sub_1D56156C8();
  if (OUTLINED_FUNCTION_54_13(v2))
  {
    v3 = OUTLINED_FUNCTION_63_12();
    OUTLINED_FUNCTION_81_12(v3);
    OUTLINED_FUNCTION_6_87();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_118();
  }

  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_271_2(v9);
  *v10 = v11;
  v12 = OUTLINED_FUNCTION_53_33(v10);

  return sub_1D5498330(v12, v13);
}

uint64_t sub_1D549C194()
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 432) = v0;

  v7 = OUTLINED_FUNCTION_19_71();
  v8(v7);
  v9 = OUTLINED_FUNCTION_97_17();
  v10(v9);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_25_3();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D549C4B4()
{
  OUTLINED_FUNCTION_80();
  v0 = OUTLINED_FUNCTION_338_1();
  v1(v0);
  OUTLINED_FUNCTION_300_3();
  if (qword_1EDD5D8A8 != -1)
  {
    OUTLINED_FUNCTION_18(&qword_1EDD5D8A8);
  }

  v2 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v2, qword_1EDD76DC8);
  v3 = sub_1D560C738();
  v4 = sub_1D56156C8();
  if (OUTLINED_FUNCTION_54_13(v4))
  {
    v5 = OUTLINED_FUNCTION_63_12();
    OUTLINED_FUNCTION_81_12(v5);
    OUTLINED_FUNCTION_6_87();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_118();
  }

  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_271_2(v11);
  *v12 = v13;
  v14 = OUTLINED_FUNCTION_53_33(v12);

  return sub_1D5498330(v14, v15);
}

uint64_t sub_1D549C5C4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D549C6A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();
  v11 = v10[42];
  (*(v10[32] + 8))(v10[33], v10[31]);
  v12 = *(v11 + 8);
  v13 = OUTLINED_FUNCTION_128();
  v12(v13);
  v14 = OUTLINED_FUNCTION_222();
  v12(v14);
  OUTLINED_FUNCTION_287_2();
  OUTLINED_FUNCTION_104_20();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_348_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_1D549C790()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D549C874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();

  OUTLINED_FUNCTION_104_20();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_348_0();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_1D549C918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[29] = a4;
  v5[30] = v4;
  v5[27] = a2;
  v5[28] = a3;
  v5[26] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6FC0, &qword_1D5667D08);
  v5[31] = v6;
  v5[32] = *(v6 - 8);
  v5[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6F90, &qword_1D5667C90);
  v5[34] = swift_task_alloc();
  v7 = sub_1D560DF28();
  v5[35] = v7;
  v5[36] = *(v7 - 8);
  v5[37] = swift_task_alloc();
  v8 = sub_1D560DF38();
  v5[38] = v8;
  v5[39] = *(v8 - 8);
  v5[40] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19A0, &qword_1D5642050);
  v5[41] = v9;
  v5[42] = *(v9 - 8);
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6FB8, &qword_1D5667CE8);
  v5[47] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D549CBA0, 0, 0);
}

uint64_t sub_1D549CBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();
  sub_1D4F39AB0(v10[29], v10[47], &qword_1EC7F6FB8, &qword_1D5667CE8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6F98, &qword_1D5667C98);
  OUTLINED_FUNCTION_22_11(v11);
  if (!v12)
  {
    OUTLINED_FUNCTION_71();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        if (qword_1EDD5D8A8 != -1)
        {
          OUTLINED_FUNCTION_18(&qword_1EDD5D8A8);
        }

        v14 = sub_1D560C758();
        OUTLINED_FUNCTION_62_4(v14, qword_1EDD76DC8);
        v15 = sub_1D560C738();
        v16 = sub_1D56156C8();
        if (OUTLINED_FUNCTION_74_12(v16))
        {
          v17 = OUTLINED_FUNCTION_63_12();
          OUTLINED_FUNCTION_86_10(v17);
          OUTLINED_FUNCTION_66_26();
          _os_log_impl(v18, v19, v20, v21, v22, 2u);
          OUTLINED_FUNCTION_54();
        }

        OUTLINED_FUNCTION_104_20();

        OUTLINED_FUNCTION_55();
        OUTLINED_FUNCTION_348_0();

        return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
      }
    }

    else
    {
      v32 = OUTLINED_FUNCTION_22_17();
      v33(v32);
    }
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v10[48] = v34;
  *v34 = v35;
  OUTLINED_FUNCTION_194_8(v34);
  OUTLINED_FUNCTION_348_0();

  return sub_1D54A29EC(v36, v37, v38);
}

uint64_t sub_1D549CD7C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 392) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D549D02C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_393();
  if (qword_1EDD5D8A8 != -1)
  {
    OUTLINED_FUNCTION_18(&qword_1EDD5D8A8);
  }

  v0 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v0, qword_1EDD76DC8);
  v1 = sub_1D560C738();
  v2 = sub_1D56156C8();
  if (OUTLINED_FUNCTION_54_13(v2))
  {
    v3 = OUTLINED_FUNCTION_63_12();
    OUTLINED_FUNCTION_81_12(v3);
    OUTLINED_FUNCTION_6_87();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_118();
  }

  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_271_2(v9);
  *v10 = v11;
  v12 = OUTLINED_FUNCTION_53_33(v10);

  return sub_1D5498B44(v12, v13);
}

uint64_t sub_1D549D12C()
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 432) = v0;

  v7 = OUTLINED_FUNCTION_19_71();
  v8(v7);
  v9 = OUTLINED_FUNCTION_97_17();
  v10(v9);
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_25_3();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D549D44C()
{
  OUTLINED_FUNCTION_80();
  v0 = OUTLINED_FUNCTION_338_1();
  v1(v0);
  OUTLINED_FUNCTION_300_3();
  if (qword_1EDD5D8A8 != -1)
  {
    OUTLINED_FUNCTION_18(&qword_1EDD5D8A8);
  }

  v2 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v2, qword_1EDD76DC8);
  v3 = sub_1D560C738();
  v4 = sub_1D56156C8();
  if (OUTLINED_FUNCTION_54_13(v4))
  {
    v5 = OUTLINED_FUNCTION_63_12();
    OUTLINED_FUNCTION_81_12(v5);
    OUTLINED_FUNCTION_6_87();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_118();
  }

  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_271_2(v11);
  *v12 = v13;
  v14 = OUTLINED_FUNCTION_53_33(v12);

  return sub_1D5498B44(v14, v15);
}

uint64_t sub_1D549D55C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[31] = a3;
  v4[32] = v3;
  v4[29] = a1;
  v4[30] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F71A0, &qword_1D5668368);
  v4[33] = v5;
  v4[34] = *(v5 - 8);
  v4[35] = swift_task_alloc();
  v6 = sub_1D560EA18();
  v4[36] = v6;
  v4[37] = *(v6 - 8);
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABF0, &qword_1D561D7F0);
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D549D6E4, 0, 0);
}

uint64_t sub_1D549D6E4()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v2 = OUTLINED_FUNCTION_166_5();
  sub_1D4F39AB0(v2, v0, &qword_1EC7EABF0, &qword_1D561D7F0);
  OUTLINED_FUNCTION_18_6();
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_326_1();
    sub_1D54BE1FC(v4, &qword_1EC7EABF0);
    v5 = OUTLINED_FUNCTION_65_32(v0);
    v9 = OUTLINED_FUNCTION_116_17(v5, v6, v7, v8, MEMORY[0x1E6974C20]);
    v10 = OUTLINED_FUNCTION_261_2(v9);
    v14 = OUTLINED_FUNCTION_196_4(v10, v11, v12, v13, MEMORY[0x1E6974FA0]);
    OUTLINED_FUNCTION_151_4(v14);
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    *(v1 + 344) = v15;
    *v15 = v16;
    OUTLINED_FUNCTION_27_70(v15);
    OUTLINED_FUNCTION_153_1();

    return MEMORY[0x1EEDCE8F8](v17, v18, v19, v20, v21, v22, v23, v24);
  }

  else
  {
    v25 = OUTLINED_FUNCTION_87_20();
    v26(v25);
    OUTLINED_FUNCTION_144_5();

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_153_1();

    return v28(v27, v28, v29, v30, v31, v32, v33, v34);
  }
}

uint64_t sub_1D549D854()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 352) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D549DB6C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 384) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D549DC64()
{
  OUTLINED_FUNCTION_80();
  v1 = OUTLINED_FUNCTION_86_23();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  v3 = OUTLINED_FUNCTION_18_85();
  v4(v3);
  OUTLINED_FUNCTION_159();
  sub_1D5612878();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_201_6(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_14_90(v6);

  return sub_1D54A31B8(v8);
}

uint64_t sub_1D549DD1C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D549DE00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[35] = a3;
  v4[36] = v3;
  v4[33] = a1;
  v4[34] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7160, &qword_1D5668288);
  v4[37] = v5;
  v4[38] = *(v5 - 8);
  v4[39] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D549DED0, 0, 0);
}

uint64_t sub_1D549DED0()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 280);
  if (v1)
  {
    **(v0 + 264) = v1;

    OUTLINED_FUNCTION_22_1();

    return v2();
  }

  else
  {
    v4 = OUTLINED_FUNCTION_65_32(*(v0 + 272));
    v8 = OUTLINED_FUNCTION_116_17(v4, v5, v6, v7, MEMORY[0x1E6974C20]);
    v9 = OUTLINED_FUNCTION_261_2(v8);
    v13 = OUTLINED_FUNCTION_196_4(v9, v10, v11, v12, MEMORY[0x1E6974FA0]);
    OUTLINED_FUNCTION_151_4(v13);
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    *(v0 + 320) = v14;
    *v14 = v15;
    v16 = OUTLINED_FUNCTION_27_70(v14);

    return MEMORY[0x1EEDCE8F8](v16, v17, v18, v19, v20, v21, v22, v23);
  }
}

uint64_t sub_1D549DFE8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 328) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D549E344()
{
  OUTLINED_FUNCTION_60();
  __swift_deallocate_boxed_opaque_existential_1(v0 + 16);

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D549E3A8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 344) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D549E4A0()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[32];
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v0[44] = v1;
  v0[31] = v1;

  sub_1D5612878();
  v2 = swift_task_alloc();
  v0[45] = v2;
  *v2 = v0;
  v2[1] = sub_1D549E5D8;
  v3 = OUTLINED_FUNCTION_93_0(v0[39]);

  return sub_1D54A3340(v3);
}

uint64_t sub_1D549E570()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_287_2();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D549E5D8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D549E6BC()
{
  OUTLINED_FUNCTION_60();
  (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  **(v0 + 264) = *(v0 + 352);

  OUTLINED_FUNCTION_22_1();

  return v1();
}

uint64_t sub_1D549E758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[31] = a3;
  v4[32] = v3;
  v4[29] = a1;
  v4[30] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7120, &qword_1D56681A0);
  v4[33] = v5;
  v4[34] = *(v5 - 8);
  v4[35] = swift_task_alloc();
  v6 = sub_1D560DFC8();
  v4[36] = v6;
  v4[37] = *(v6 - 8);
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7100, &qword_1D5668140);
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D549E8E0, 0, 0);
}

uint64_t sub_1D549E8E0()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v2 = OUTLINED_FUNCTION_166_5();
  sub_1D4F39AB0(v2, v0, &qword_1EC7F7100, &qword_1D5668140);
  OUTLINED_FUNCTION_18_6();
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_326_1();
    sub_1D54BE1FC(v4, &qword_1EC7F7100);
    v5 = OUTLINED_FUNCTION_65_32(v0);
    v9 = OUTLINED_FUNCTION_116_17(v5, v6, v7, v8, MEMORY[0x1E6974C20]);
    v10 = OUTLINED_FUNCTION_261_2(v9);
    v14 = OUTLINED_FUNCTION_196_4(v10, v11, v12, v13, MEMORY[0x1E6974FA0]);
    OUTLINED_FUNCTION_151_4(v14);
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    *(v1 + 344) = v15;
    *v15 = v16;
    OUTLINED_FUNCTION_27_70(v15);
    OUTLINED_FUNCTION_153_1();

    return MEMORY[0x1EEDCE8F8](v17, v18, v19, v20, v21, v22, v23, v24);
  }

  else
  {
    v25 = OUTLINED_FUNCTION_87_20();
    v26(v25);
    OUTLINED_FUNCTION_144_5();

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_153_1();

    return v28(v27, v28, v29, v30, v31, v32, v33, v34);
  }
}

uint64_t sub_1D549EA50()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 352) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D549ED68()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 384) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D549EE60()
{
  OUTLINED_FUNCTION_80();
  v1 = OUTLINED_FUNCTION_86_23();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  v3 = OUTLINED_FUNCTION_18_85();
  v4(v3);
  OUTLINED_FUNCTION_159();
  sub_1D5612878();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_201_6(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_14_90(v6);

  return sub_1D54A3484(v8);
}

uint64_t sub_1D549EF18(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 241) = a4;
  *(v5 + 312) = a3;
  *(v5 + 320) = v4;
  *(v5 + 296) = a1;
  *(v5 + 304) = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7208, &qword_1D56684F8);
  *(v5 + 328) = v6;
  *(v5 + 336) = *(v6 - 8);
  *(v5 + 344) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D549EFEC, 0, 0);
}

uint64_t sub_1D549EFEC()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 312);
  if (v1)
  {
    v2 = *(v0 + 241);
    v3 = *(v0 + 296);
    *v3 = v1;
    *(v3 + 8) = v2 & 1;

    OUTLINED_FUNCTION_22_1();

    return v4();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_65_32(*(v0 + 304));
    v10 = OUTLINED_FUNCTION_116_17(v6, v7, v8, v9, MEMORY[0x1E6974C20]);
    v11 = OUTLINED_FUNCTION_261_2(v10);
    v15 = OUTLINED_FUNCTION_196_4(v11, v12, v13, v14, MEMORY[0x1E6974FA0]);
    OUTLINED_FUNCTION_151_4(v15);
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    *(v0 + 352) = v16;
    *v16 = v17;
    v18 = OUTLINED_FUNCTION_27_70(v16);

    return MEMORY[0x1EEDCE8F8](v18, v19, v20, v21, v22, v23, v24, v25);
  }
}

uint64_t sub_1D549F110()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 360) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D549F480()
{
  OUTLINED_FUNCTION_60();
  __swift_deallocate_boxed_opaque_existential_1(v0 + 16);

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D549F4E4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 384) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D549F5DC()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  OUTLINED_FUNCTION_415();
  *(v0 + 264) = v1;
  *(v0 + 272) = v2;

  sub_1D5612878();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_318_1(v3);
  *v4 = v5;
  v4[1] = sub_1D549F70C;
  v6 = OUTLINED_FUNCTION_93_0(*(v0 + 344));

  return sub_1D54A360C(v6);
}

uint64_t sub_1D549F6A4()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_287_2();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D549F70C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D549F7F0()
{
  OUTLINED_FUNCTION_60();
  (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 242);
  v2 = *(v0 + 296);
  *v2 = *(v0 + 392);
  *(v2 + 8) = v1;

  OUTLINED_FUNCTION_22_1();

  return v3();
}

uint64_t sub_1D549F894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[31] = a3;
  v4[32] = v3;
  v4[29] = a1;
  v4[30] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7000, &qword_1D5667DF8);
  v4[33] = v5;
  v4[34] = *(v5 - 8);
  v4[35] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1DA0, &qword_1D5643CD0);
  v4[36] = v6;
  v4[37] = *(v6 - 8);
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D98, &qword_1D5643CC8);
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D549FA28, 0, 0);
}

uint64_t sub_1D549FA28()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v2 = OUTLINED_FUNCTION_166_5();
  sub_1D4F39AB0(v2, v0, &qword_1EC7F1D98, &qword_1D5643CC8);
  OUTLINED_FUNCTION_18_6();
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_326_1();
    sub_1D54BE1FC(v4, &qword_1EC7F1D98);
    v5 = OUTLINED_FUNCTION_65_32(v0);
    v9 = OUTLINED_FUNCTION_116_17(v5, v6, v7, v8, MEMORY[0x1E6974C20]);
    v10 = OUTLINED_FUNCTION_261_2(v9);
    v14 = OUTLINED_FUNCTION_196_4(v10, v11, v12, v13, MEMORY[0x1E6974FA0]);
    OUTLINED_FUNCTION_151_4(v14);
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    *(v1 + 344) = v15;
    *v15 = v16;
    OUTLINED_FUNCTION_27_70(v15);
    OUTLINED_FUNCTION_153_1();

    return MEMORY[0x1EEDCE8F8](v17, v18, v19, v20, v21, v22, v23, v24);
  }

  else
  {
    v25 = OUTLINED_FUNCTION_87_20();
    v26(v25);
    OUTLINED_FUNCTION_144_5();

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_153_1();

    return v28(v27, v28, v29, v30, v31, v32, v33, v34);
  }
}

uint64_t sub_1D549FB98()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 352) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D549FEB0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 384) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D549FFA8()
{
  OUTLINED_FUNCTION_80();
  v1 = OUTLINED_FUNCTION_86_23();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  v3 = OUTLINED_FUNCTION_18_85();
  v4(v3);
  OUTLINED_FUNCTION_159();
  sub_1D5612878();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_201_6(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_14_90(v6);

  return sub_1D54A375C(v8);
}

uint64_t sub_1D54A0060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[31] = a3;
  v4[32] = v3;
  v4[29] = a1;
  v4[30] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F70D8, &qword_1D56680C0);
  v4[33] = v5;
  v4[34] = *(v5 - 8);
  v4[35] = swift_task_alloc();
  v6 = sub_1D560EA78();
  v4[36] = v6;
  v4[37] = *(v6 - 8);
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F70B8, &qword_1D5668060);
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D54A01E8, 0, 0);
}

uint64_t sub_1D54A01E8()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v2 = OUTLINED_FUNCTION_166_5();
  sub_1D4F39AB0(v2, v0, &qword_1EC7F70B8, &qword_1D5668060);
  OUTLINED_FUNCTION_18_6();
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_326_1();
    sub_1D54BE1FC(v4, &qword_1EC7F70B8);
    v5 = OUTLINED_FUNCTION_65_32(v0);
    v9 = OUTLINED_FUNCTION_116_17(v5, v6, v7, v8, MEMORY[0x1E6974C20]);
    v10 = OUTLINED_FUNCTION_261_2(v9);
    v14 = OUTLINED_FUNCTION_196_4(v10, v11, v12, v13, MEMORY[0x1E6974FA0]);
    OUTLINED_FUNCTION_151_4(v14);
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    *(v1 + 344) = v15;
    *v15 = v16;
    OUTLINED_FUNCTION_27_70(v15);
    OUTLINED_FUNCTION_153_1();

    return MEMORY[0x1EEDCE8F8](v17, v18, v19, v20, v21, v22, v23, v24);
  }

  else
  {
    v25 = OUTLINED_FUNCTION_87_20();
    v26(v25);
    OUTLINED_FUNCTION_144_5();

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_153_1();

    return v28(v27, v28, v29, v30, v31, v32, v33, v34);
  }
}

uint64_t sub_1D54A0358()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 352) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D54A0670()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 384) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D54A0768()
{
  OUTLINED_FUNCTION_80();
  v1 = OUTLINED_FUNCTION_86_23();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  v3 = OUTLINED_FUNCTION_18_85();
  v4(v3);
  OUTLINED_FUNCTION_159();
  sub_1D5612878();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_201_6(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_14_90(v6);

  return sub_1D54A38F0(v8);
}

uint64_t sub_1D54A0820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[31] = a3;
  v4[32] = v3;
  v4[29] = a1;
  v4[30] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7090, &qword_1D5667FE0);
  v4[33] = v5;
  v4[34] = *(v5 - 8);
  v4[35] = swift_task_alloc();
  v6 = sub_1D560E058();
  v4[36] = v6;
  v4[37] = *(v6 - 8);
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7070, &qword_1D5667F78);
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D54A09A8, 0, 0);
}

uint64_t sub_1D54A09A8()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v2 = OUTLINED_FUNCTION_166_5();
  sub_1D4F39AB0(v2, v0, &qword_1EC7F7070, &qword_1D5667F78);
  OUTLINED_FUNCTION_18_6();
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_326_1();
    sub_1D54BE1FC(v4, &qword_1EC7F7070);
    v5 = OUTLINED_FUNCTION_65_32(v0);
    v9 = OUTLINED_FUNCTION_116_17(v5, v6, v7, v8, MEMORY[0x1E6974C20]);
    v10 = OUTLINED_FUNCTION_261_2(v9);
    v14 = OUTLINED_FUNCTION_196_4(v10, v11, v12, v13, MEMORY[0x1E6974FA0]);
    OUTLINED_FUNCTION_151_4(v14);
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    *(v1 + 344) = v15;
    *v15 = v16;
    OUTLINED_FUNCTION_27_70(v15);
    OUTLINED_FUNCTION_153_1();

    return MEMORY[0x1EEDCE8F8](v17, v18, v19, v20, v21, v22, v23, v24);
  }

  else
  {
    v25 = OUTLINED_FUNCTION_87_20();
    v26(v25);
    OUTLINED_FUNCTION_144_5();

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_153_1();

    return v28(v27, v28, v29, v30, v31, v32, v33, v34);
  }
}

uint64_t sub_1D54A0B18()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 352) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D54A0E30()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  __swift_deallocate_boxed_opaque_existential_1(v0 + 16);
  OUTLINED_FUNCTION_429();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_376();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1D54A0EC0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 384) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D54A0FB8()
{
  OUTLINED_FUNCTION_80();
  v1 = OUTLINED_FUNCTION_86_23();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  v3 = OUTLINED_FUNCTION_18_85();
  v4(v3);
  OUTLINED_FUNCTION_159();
  sub_1D5612878();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_201_6(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_14_90(v6);

  return sub_1D54A3A78(v8);
}

uint64_t sub_1D54A1070()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  (*(v0[37] + 8))(v0[40], v0[36]);
  OUTLINED_FUNCTION_287_2();
  OUTLINED_FUNCTION_429();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_376();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1D54A1114()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D54A11F8()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  (*(v0[34] + 8))(v0[35], v0[33]);
  v1 = OUTLINED_FUNCTION_159();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  OUTLINED_FUNCTION_144_5();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_153_1();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D54A12B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[31] = a3;
  v4[32] = v3;
  v4[29] = a1;
  v4[30] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6F58, &qword_1D5667B38);
  v4[33] = v5;
  v4[34] = *(v5 - 8);
  v4[35] = swift_task_alloc();
  v4[36] = type metadata accessor for MusicSuggestedSongsResponse(0);
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6F38, &unk_1D5667A08);
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D54A1414, 0, 0);
}

uint64_t sub_1D54A1414()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  sub_1D4F39AB0(v0[31], v0[41], &qword_1EC7F6F38, &unk_1D5667A08);
  OUTLINED_FUNCTION_18_6();
  if (v1)
  {
    v2 = v0[30];
    sub_1D54BE1FC(v0[41], &qword_1EC7F6F38);
    v3 = OUTLINED_FUNCTION_65_32(v2);
    v7 = OUTLINED_FUNCTION_116_17(v3, v4, v5, v6, MEMORY[0x1E6974C20]);
    v8 = OUTLINED_FUNCTION_261_2(v7);
    v12 = OUTLINED_FUNCTION_196_4(v8, v9, v10, v11, MEMORY[0x1E6974FA0]);
    OUTLINED_FUNCTION_151_4(v12);
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    v0[42] = v13;
    *v13 = v14;
    OUTLINED_FUNCTION_27_70(v13);
    OUTLINED_FUNCTION_153_1();

    return MEMORY[0x1EEDCE8F8](v15, v16, v17, v18, v19, v20, v21, v22);
  }

  else
  {
    OUTLINED_FUNCTION_39_50();
    sub_1D54B5AC0(v23, v24);
    OUTLINED_FUNCTION_428();

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_153_1();

    return v26(v25, v26, v27, v28, v29, v30, v31, v32);
  }
}

uint64_t sub_1D54A1590()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 344) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D54A190C()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  __swift_deallocate_boxed_opaque_existential_1(v0 + 16);
  OUTLINED_FUNCTION_427();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_376();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1D54A199C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 360) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D54A1A94()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_39_50();
  sub_1D54B5AC0(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v3 = v0[37];
  OUTLINED_FUNCTION_82_24();
  sub_1D54ACBB0(v4, v3);
  OUTLINED_FUNCTION_159();
  sub_1D5612878();
  v5 = swift_task_alloc();
  v0[46] = v5;
  *v5 = v0;
  v6 = OUTLINED_FUNCTION_14_90(v5);

  return sub_1D54A3C00(v6);
}

uint64_t sub_1D54A1B5C()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_21_77();
  sub_1D54B4B54();
  OUTLINED_FUNCTION_287_2();
  OUTLINED_FUNCTION_427();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_376();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1D54A1BF4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D54A1CD8()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  (*(v0[34] + 8))(v0[35], v0[33]);
  OUTLINED_FUNCTION_21_77();
  sub_1D54B4B54();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  OUTLINED_FUNCTION_428();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_153_1();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1D54A1D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 1216) = v3;
  *(v4 + 1208) = a3;
  *(v4 + 1200) = a2;
  *(v4 + 1192) = a1;
  *(v4 + 1224) = *a3;
  *(v4 + 1240) = *(a3 + 16);
  *(v4 + 1248) = *(a3 + 24);
  *(v4 + 1264) = *(a3 + 40);
  *(v4 + 1432) = *(a3 + 56);
  *(v4 + 1280) = *(a3 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7048, &qword_1D5667EF8);
  *(v4 + 1296) = v5;
  *(v4 + 1304) = *(v5 - 8);
  *(v4 + 1312) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D54A1E98, 0, 0);
}

uint64_t sub_1D54A1E98()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 1224);
  if (v1)
  {
    v2 = *(v0 + 1432) & 1;
    v3 = *(v0 + 1433) & 1;
    v4 = *(v0 + 1240);
    v5 = *(v0 + 1232);
    v6 = *(v0 + 1208);
    v7 = *(v0 + 1192);
    v8 = *(v0 + 1248);
    v9 = *(v0 + 1264);
    v10 = *(v0 + 1280);
    *v7 = v1;
    *(v7 + 8) = v5;
    *(v7 + 16) = v4;
    *(v7 + 24) = v8;
    *(v7 + 40) = v9;
    *(v7 + 56) = v2;
    *(v7 + 57) = v3;
    *(v7 + 64) = v10;
    sub_1D4F39AB0(v6, v0 + 736, &qword_1EC7F7020, &qword_1D5667E78);

    OUTLINED_FUNCTION_22_1();

    return v11();
  }

  else
  {
    v13 = OUTLINED_FUNCTION_65_32(*(v0 + 1200));
    v17 = OUTLINED_FUNCTION_116_17(v13, v14, v15, v16, MEMORY[0x1E6974C20]);
    *(v0 + 1000) = v17;
    *(v0 + 1008) = OUTLINED_FUNCTION_196_4(v17, v18, v17, v19, MEMORY[0x1E6974FA0]);
    __swift_allocate_boxed_opaque_existential_0((v0 + 976));
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    *(v0 + 1320) = v20;
    *v20 = v21;
    v22 = OUTLINED_FUNCTION_27_70(v20);

    return MEMORY[0x1EEDCE8F8](v22, v23, v24, v25, v26, v27, v28, v29);
  }
}

uint64_t sub_1D54A2010()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 1328) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1D54A2108()
{
  sub_1D4E628D4(v0 + 976, v0 + 1016);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5848, &qword_1D565DE10);
  if (OUTLINED_FUNCTION_377_0(v0 + 96, v0 + 1016, v1, &type metadata for MusicCatalogInternalSearchResponse))
  {
    v2 = *(v0 + 1200);
    memcpy((v0 + 16), (v0 + 96), 0x50uLL);
    sub_1D4E628D4(v2, v0 + 1096);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5850, &qword_1D565DE18);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7050, &qword_1D5667F18);
    if (OUTLINED_FUNCTION_377_0(v0 + 1136, v0 + 1096, v4, v3))
    {
      sub_1D4E48324((v0 + 1136), v0 + 1056);
      OUTLINED_FUNCTION_65_32((v0 + 1056));
      swift_task_alloc();
      OUTLINED_FUNCTION_58();
      *(v0 + 1336) = v5;
      *v5 = v6;
      v5[1] = sub_1D54A2520;
      OUTLINED_FUNCTION_94_21();
      OUTLINED_FUNCTION_16_5();

      MEMORY[0x1EEDCED20](v7, v8, v9, v10);
    }

    else
    {
      *(v0 + 1168) = 0;
      *(v0 + 1136) = 0u;
      *(v0 + 1152) = 0u;
      memcpy((v0 + 256), (v0 + 16), 0x50uLL);
      v26 = *(v0 + 328);
      v27 = *(v0 + 320);
      v14 = *(v0 + 313);
      v15 = *(v0 + 312);
      v16 = *(v0 + 288);
      v17 = *(v0 + 296);
      v18 = *(v0 + 304);
      v19 = *(v0 + 272);
      v20 = *(v0 + 280);
      v22 = *(v0 + 256);
      v21 = *(v0 + 264);
      sub_1D54BC640(v0 + 256, v0 + 336);
      *(v0 + 1416) = v26;
      *(v0 + 1408) = v27;
      *(v0 + 1435) = v14;
      *(v0 + 1434) = v15;
      *(v0 + 1400) = v18;
      *(v0 + 1392) = v17;
      *(v0 + 1384) = v16;
      *(v0 + 1376) = v20;
      *(v0 + 1368) = v19;
      *(v0 + 1360) = v21;
      *(v0 + 1352) = v22;
      *(v0 + 496) = v22;
      *(v0 + 504) = v21;
      *(v0 + 512) = v19;
      *(v0 + 520) = v20;
      *(v0 + 528) = v16;
      *(v0 + 536) = v17;
      *(v0 + 544) = v18;
      *(v0 + 552) = v15;
      *(v0 + 553) = v14;
      *(v0 + 560) = v27;
      *(v0 + 568) = v26;
      memcpy((v0 + 576), (v0 + 496), 0x50uLL);
      sub_1D54BC640(v0 + 496, v0 + 656);
      sub_1D5612878();
      v23 = swift_task_alloc();
      *(v0 + 1424) = v23;
      *v23 = v0;
      v23[1] = sub_1D54A2814;
      OUTLINED_FUNCTION_93_0(*(v0 + 1312));
      OUTLINED_FUNCTION_16_5();

      sub_1D54A3D88(v24);
    }
  }

  else
  {
    bzero((v0 + 96), 0xA0uLL);
    sub_1D54BE1FC(v0 + 176, &qword_1EC7F7020);
    sub_1D5615B68();
    *(v0 + 1176) = 0;
    *(v0 + 1184) = 0xE000000000000000;
    OUTLINED_FUNCTION_33_3();
    MEMORY[0x1DA6EAC70](0xD00000000000002DLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5850, &qword_1D565DE18);
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_48();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_138("Fatal error", v12, v13, *(v0 + 1176), *(v0 + 1184), "MusicKitInternal/MusicAutoupdatingResponse.swift");
    OUTLINED_FUNCTION_16_5();
  }
}

uint64_t sub_1D54A24BC()
{
  OUTLINED_FUNCTION_60();
  __swift_deallocate_boxed_opaque_existential_1(v0 + 976);

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D54A2520()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 1344) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D54A2618()
{
  OUTLINED_FUNCTION_100();
  v13 = v0[103];
  v14 = v0[102];
  v1 = v0[104];
  v2 = v0[105];
  v3 = v0[106];
  v4 = v0[107];
  v5 = v0[108];
  v6 = *(v0 + 872);
  v7 = *(v0 + 873);
  v8 = v0[110];
  v9 = v0[111];
  __swift_destroy_boxed_opaque_existential_1(v0 + 132);
  v0[177] = v9;
  v0[176] = v8;
  *(v0 + 1435) = v7;
  *(v0 + 1434) = v6;
  v0[175] = v5;
  v0[174] = v4;
  v0[173] = v3;
  v0[172] = v2;
  v0[171] = v1;
  v0[170] = v13;
  v0[169] = v14;
  v0[62] = v14;
  v0[63] = v13;
  v0[64] = v1;
  v0[65] = v2;
  v0[66] = v3;
  v0[67] = v4;
  v0[68] = v5;
  *(v0 + 552) = v6;
  *(v0 + 553) = v7;
  v0[70] = v8;
  v0[71] = v9;
  memcpy(v0 + 72, v0 + 62, 0x50uLL);
  sub_1D54BC640((v0 + 62), (v0 + 82));
  sub_1D5612878();
  v10 = swift_task_alloc();
  v0[178] = v10;
  *v10 = v0;
  v10[1] = sub_1D54A2814;
  v11 = OUTLINED_FUNCTION_93_0(v0[164]);

  return sub_1D54A3D88(v11);
}

uint64_t sub_1D54A2790()
{
  OUTLINED_FUNCTION_60();
  memcpy(v0 + 112, v0 + 2, 0x50uLL);
  sub_1D54BC69C((v0 + 112));
  __swift_destroy_boxed_opaque_existential_1(v0 + 132);
  __swift_destroy_boxed_opaque_existential_1(v0 + 122);

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D54A2814()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D54A28F8()
{
  OUTLINED_FUNCTION_60();
  (*(*(v0 + 1304) + 8))(*(v0 + 1312), *(v0 + 1296));
  memcpy((v0 + 416), (v0 + 16), 0x50uLL);
  sub_1D54BC69C(v0 + 416);
  __swift_destroy_boxed_opaque_existential_1((v0 + 976));
  v1 = *(v0 + 1435);
  v2 = *(v0 + 1434);
  v3 = *(v0 + 1368);
  v4 = *(v0 + 1208);
  v5 = *(v0 + 1192);
  v6 = *(v0 + 1376);
  v7 = *(v0 + 1392);
  v8 = *(v0 + 1408);
  *v5 = *(v0 + 1352);
  *(v5 + 16) = v3;
  *(v5 + 24) = v6;
  *(v5 + 40) = v7;
  *(v5 + 56) = v2;
  *(v5 + 57) = v1;
  *(v5 + 64) = v8;
  sub_1D4F39AB0(v4, v0 + 736, &qword_1EC7F7020, &qword_1D5667E78);

  OUTLINED_FUNCTION_22_1();

  return v9();
}

uint64_t sub_1D54A29EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[31] = a3;
  v4[32] = v3;
  v4[29] = a1;
  v4[30] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6FC0, &qword_1D5667D08);
  v4[33] = v5;
  v4[34] = *(v5 - 8);
  v4[35] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19A0, &qword_1D5642050);
  v4[36] = v6;
  v4[37] = *(v6 - 8);
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6F90, &qword_1D5667C90);
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D54A2B80, 0, 0);
}

uint64_t sub_1D54A2B80()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v2 = OUTLINED_FUNCTION_166_5();
  sub_1D4F39AB0(v2, v0, &qword_1EC7F6F90, &qword_1D5667C90);
  OUTLINED_FUNCTION_18_6();
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_326_1();
    sub_1D54BE1FC(v4, &qword_1EC7F6F90);
    v5 = OUTLINED_FUNCTION_65_32(v0);
    v9 = OUTLINED_FUNCTION_116_17(v5, v6, v7, v8, MEMORY[0x1E6974C20]);
    v10 = OUTLINED_FUNCTION_261_2(v9);
    v14 = OUTLINED_FUNCTION_196_4(v10, v11, v12, v13, MEMORY[0x1E6974FA0]);
    OUTLINED_FUNCTION_151_4(v14);
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    *(v1 + 344) = v15;
    *v15 = v16;
    OUTLINED_FUNCTION_27_70(v15);
    OUTLINED_FUNCTION_153_1();

    return MEMORY[0x1EEDCE8F8](v17, v18, v19, v20, v21, v22, v23, v24);
  }

  else
  {
    v25 = OUTLINED_FUNCTION_87_20();
    v26(v25);
    OUTLINED_FUNCTION_144_5();

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_153_1();

    return v28(v27, v28, v29, v30, v31, v32, v33, v34);
  }
}

uint64_t sub_1D54A2CF0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 352) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D54A3008()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 384) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D54A3100()
{
  OUTLINED_FUNCTION_80();
  v1 = OUTLINED_FUNCTION_86_23();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  v3 = OUTLINED_FUNCTION_18_85();
  v4(v3);
  OUTLINED_FUNCTION_159();
  sub_1D5612878();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_201_6(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_14_90(v6);

  return sub_1D54A3EFC(v8);
}

uint64_t sub_1D54A31B8(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABF0, &qword_1D561D7F0);
  v2[7] = swift_task_alloc();
  sub_1D56153C8();
  v2[8] = sub_1D56153B8();
  v4 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D54A3288, v4, v3);
}

uint64_t sub_1D54A3288()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_374();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F71A0, &qword_1D5668368);
  sub_1D5612858();
  v0 = sub_1D560EA18();
  OUTLINED_FUNCTION_41_51(v0);
  v1 = OUTLINED_FUNCTION_143_10();
  OUTLINED_FUNCTION_373_0(v1, v2, &qword_1EC7EABF0, &qword_1D561D7F0);
  swift_endAccess();

  OUTLINED_FUNCTION_55();

  return v3();
}

uint64_t sub_1D54A3340(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  sub_1D56153C8();
  v2[7] = sub_1D56153B8();
  v4 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D54A33D8, v4, v3);
}

uint64_t sub_1D54A33D8()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 48);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7160, &qword_1D5668288);
  sub_1D5612858();
  v2 = *(v0 + 16);
  OUTLINED_FUNCTION_12_24();
  v4 = *(v3 + 120);
  OUTLINED_FUNCTION_21_42(v1 + v4, v0 + 16);
  *(v1 + v4) = v2;

  OUTLINED_FUNCTION_55();

  return v5();
}

uint64_t sub_1D54A3484(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7100, &qword_1D5668140);
  v2[7] = swift_task_alloc();
  sub_1D56153C8();
  v2[8] = sub_1D56153B8();
  v4 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D54A3554, v4, v3);
}

uint64_t sub_1D54A3554()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_374();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7120, &qword_1D56681A0);
  sub_1D5612858();
  v0 = sub_1D560DFC8();
  OUTLINED_FUNCTION_41_51(v0);
  v1 = OUTLINED_FUNCTION_143_10();
  OUTLINED_FUNCTION_373_0(v1, v2, &qword_1EC7F7100, &qword_1D5668140);
  swift_endAccess();

  OUTLINED_FUNCTION_55();

  return v3();
}

uint64_t sub_1D54A360C(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  sub_1D56153C8();
  v2[7] = sub_1D56153B8();
  v4 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D54A36A4, v4, v3);
}

uint64_t sub_1D54A36A4()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 48);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7208, &qword_1D56684F8);
  sub_1D5612858();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  OUTLINED_FUNCTION_12_24();
  v5 = v1 + *(v4 + 120);
  OUTLINED_FUNCTION_21_42(v5, v0 + 16);
  *v5 = v2;
  *(v5 + 8) = v3;

  OUTLINED_FUNCTION_55();

  return v6();
}

uint64_t sub_1D54A375C(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D98, &qword_1D5643CC8);
  v2[7] = swift_task_alloc();
  sub_1D56153C8();
  v2[8] = sub_1D56153B8();
  v4 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D54A382C, v4, v3);
}

uint64_t sub_1D54A382C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_374();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7000, &qword_1D5667DF8);
  sub_1D5612858();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1DA0, &qword_1D5643CD0);
  OUTLINED_FUNCTION_41_51(v0);
  v1 = OUTLINED_FUNCTION_143_10();
  OUTLINED_FUNCTION_373_0(v1, v2, &qword_1EC7F1D98, &qword_1D5643CC8);
  swift_endAccess();

  OUTLINED_FUNCTION_55();

  return v3();
}

uint64_t sub_1D54A38F0(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F70B8, &qword_1D5668060);
  v2[7] = swift_task_alloc();
  sub_1D56153C8();
  v2[8] = sub_1D56153B8();
  v4 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D54A39C0, v4, v3);
}

uint64_t sub_1D54A39C0()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_374();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F70D8, &qword_1D56680C0);
  sub_1D5612858();
  v0 = sub_1D560EA78();
  OUTLINED_FUNCTION_41_51(v0);
  v1 = OUTLINED_FUNCTION_143_10();
  OUTLINED_FUNCTION_373_0(v1, v2, &qword_1EC7F70B8, &qword_1D5668060);
  swift_endAccess();

  OUTLINED_FUNCTION_55();

  return v3();
}

uint64_t sub_1D54A3A78(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7070, &qword_1D5667F78);
  v2[7] = swift_task_alloc();
  sub_1D56153C8();
  v2[8] = sub_1D56153B8();
  v4 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D54A3B48, v4, v3);
}

uint64_t sub_1D54A3B48()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_374();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7090, &qword_1D5667FE0);
  sub_1D5612858();
  v0 = sub_1D560E058();
  OUTLINED_FUNCTION_41_51(v0);
  v1 = OUTLINED_FUNCTION_143_10();
  OUTLINED_FUNCTION_373_0(v1, v2, &qword_1EC7F7070, &qword_1D5667F78);
  swift_endAccess();

  OUTLINED_FUNCTION_55();

  return v3();
}

uint64_t sub_1D54A3C00(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6F38, &unk_1D5667A08);
  v2[7] = swift_task_alloc();
  sub_1D56153C8();
  v2[8] = sub_1D56153B8();
  v4 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D54A3CD0, v4, v3);
}

uint64_t sub_1D54A3CD0()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_374();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6F58, &qword_1D5667B38);
  sub_1D5612858();
  v0 = type metadata accessor for MusicSuggestedSongsResponse(0);
  OUTLINED_FUNCTION_41_51(v0);
  v1 = OUTLINED_FUNCTION_143_10();
  OUTLINED_FUNCTION_373_0(v1, v2, &qword_1EC7F6F38, &unk_1D5667A08);
  swift_endAccess();

  OUTLINED_FUNCTION_55();

  return v3();
}

uint64_t sub_1D54A3D88(uint64_t a1)
{
  v2[35] = a1;
  v2[36] = v1;
  sub_1D56153C8();
  v2[37] = sub_1D56153B8();
  v4 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D54A3E20, v4, v3);
}

uint64_t sub_1D54A3E20()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[36];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7048, &qword_1D5667EF8);
  sub_1D5612858();
  memcpy(v0 + 12, v0 + 22, 0x50uLL);
  OUTLINED_FUNCTION_12_24();
  v3 = *(v2 + 120);
  OUTLINED_FUNCTION_21_42(v1 + v3, (v0 + 32));
  memcpy(v0 + 2, (v1 + v3), 0x50uLL);
  memcpy((v1 + v3), v0 + 12, 0x50uLL);
  sub_1D54BE1FC((v0 + 2), &qword_1EC7F7020);
  OUTLINED_FUNCTION_55();

  return v4();
}

uint64_t sub_1D54A3EFC(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6F90, &qword_1D5667C90);
  v2[7] = swift_task_alloc();
  sub_1D56153C8();
  v2[8] = sub_1D56153B8();
  v4 = sub_1D5615338();

  return MEMORY[0x1EEE6DFA0](sub_1D54A3FCC, v4, v3);
}

uint64_t sub_1D54A3FCC()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_374();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6FC0, &qword_1D5667D08);
  sub_1D5612858();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19A0, &qword_1D5642050);
  OUTLINED_FUNCTION_41_51(v0);
  v1 = OUTLINED_FUNCTION_143_10();
  OUTLINED_FUNCTION_373_0(v1, v2, &qword_1EC7F6F90, &qword_1D5667C90);
  swift_endAccess();

  OUTLINED_FUNCTION_55();

  return v3();
}

uint64_t MusicSuggestedSongsViewModel.__allocating_init(playlist:)()
{
  v2 = OUTLINED_FUNCTION_64_1();
  v3 = type metadata accessor for MusicSuggestedSongsViewModelSeed(v2);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_68_2();
  v5 = sub_1D5614898();
  (*(*(v5 - 8) + 16))(v1, v0, v5);
  OUTLINED_FUNCTION_63_1();
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for MusicSuggestedSongsViewModel(0);
  OUTLINED_FUNCTION_2_19(v6);
  OUTLINED_FUNCTION_0_6();
  sub_1D54A425C();
  v7 = OUTLINED_FUNCTION_24();
  v8(v7);
  return v3;
}

uint64_t MusicSuggestedSongsViewModel.__allocating_init(playlistName:tracks:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MusicSuggestedSongsViewModelSeed(0);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_150_1();
  *v3 = a1;
  v3[1] = a2;
  v3[2] = a3;
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for MusicSuggestedSongsViewModel(0);
  v9 = OUTLINED_FUNCTION_2_19(v8);
  sub_1D54A425C();
  return v9;
}

void sub_1D54A425C()
{
  OUTLINED_FUNCTION_47();
  v2 = v0;
  v65 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_3();
  v61 = v6;
  v7 = OUTLINED_FUNCTION_70_0();
  v63 = type metadata accessor for MusicSuggestedSongsViewModelSeed(v7);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v64 = v10 - v9;
  OUTLINED_FUNCTION_70_0();
  sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v59 = v12;
  v60 = v11;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v56 = v14;
  v57 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_2();
  v58 = v15;
  OUTLINED_FUNCTION_70_0();
  v62 = sub_1D560C368();
  OUTLINED_FUNCTION_4();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1418, &unk_1D5667650);
  OUTLINED_FUNCTION_4();
  v24 = v23;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_68_2();
  v26 = OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel__isPerformingUserInitiatedRefresh;
  LOBYTE(v67[0]) = 0;
  sub_1D560C8B8();
  v27 = *(v24 + 32);
  v27(v2 + v26, v1, v22);
  swift_weakInit();
  swift_weakInit();
  sub_1D5613838();
  v28 = MEMORY[0x1E69E7CC0];
  sub_1D560D9F8();
  *(v2 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_selectedEntries) = MEMORY[0x1E69E7CD0];
  v29 = OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel__isLoading;
  LOBYTE(v67[0]) = 0;
  sub_1D560C8B8();
  v27(v2 + v29, v1, v22);
  *(v2 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_autoupdatingSuggestedSongsResponse) = 0;
  *(v2 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_autoupdatingSuggestedSongsSubscription) = 0;
  *(v2 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_autoupdatingStatusSubscription) = 0;
  *(v2 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_additionalHiddenSuggestedSongs) = v28;
  *(v2 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_refreshStatus) = 4;
  *(v2 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_selectedSongsForCurrentSession) = v28;
  *(v2 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_selectedSongsLimitBeforeSessionRefresh) = 3;
  v30 = OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_offeredEntries;
  type metadata accessor for MusicSuggestedSongsEntry(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F71C0, &qword_1D5668410);
  sub_1D54B4BA4(&qword_1EC7F3870, type metadata accessor for MusicSuggestedSongsEntry, &protocol conformance descriptor for MusicSuggestedSongsEntry);
  *(v2 + v30) = sub_1D5614BD8();
  v31 = (v2 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_id);
  sub_1D560C358();
  v32 = sub_1D560C338();
  v34 = v33;
  (*(v17 + 8))(v21, v62);
  *v31 = v32;
  v31[1] = v34;
  if (qword_1EDD55F58 != -1)
  {
    OUTLINED_FUNCTION_32_4(&qword_1EDD55F58);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_222();
  sub_1D560C8F8();

  v35 = OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_userStateViewModelObserver;
  *(v2 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_userStateViewModelObserver) = 0;
  *(v2 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_automaticRefreshTask) = 0;
  *(v2 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_autoupdatingPlaylistResponse) = 0;
  *(v2 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_autoupdatingPlaylistSubscription) = 0;
  v36 = OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_suggestedSongsRequestObserver;
  if (qword_1EC7E8B10 != -1)
  {
    swift_once();
  }

  *(v2 + v36) = qword_1EC87BF48;
  v37 = v65;
  sub_1D54ACBB0(v65, v2 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_seed);
  OUTLINED_FUNCTION_54_0(v2 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel__suggestedSongs, v67);
  v66 = v28;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6EC0, &qword_1D5667838);
  sub_1D560C8B8();
  swift_endAccess();
  *(v2 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_limit) = 5;
  type metadata accessor for UserStateViewModel(0);
  sub_1D54B4BA4(&qword_1EDD55F50, type metadata accessor for UserStateViewModel, &protocol conformance descriptor for UserStateViewModel);
  v67[0] = sub_1D560C838();
  OUTLINED_FUNCTION_40_13();
  v38 = swift_allocObject();
  OUTLINED_FUNCTION_52_18(v38);
  sub_1D560C898();

  sub_1D560C948();
  OUTLINED_FUNCTION_0_6();

  *(v2 + v35) = v67;

  v39 = v64;
  sub_1D54ACBB0(v37, v64);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    OUTLINED_FUNCTION_24_68();
    sub_1D54B4B54();
  }

  else
  {
    v40 = v58;
    v41 = v59;
    v63 = *(v59 + 32);
    v42 = v60;
    v63(v58, v39, v60);
    sub_1D5615458();
    v43 = v61;
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);
    OUTLINED_FUNCTION_40_13();
    v48 = swift_allocObject();
    OUTLINED_FUNCTION_88_4(v48);

    v49 = v57;
    OUTLINED_FUNCTION_314_1();
    v50();
    v51 = (*(v41 + 80) + 40) & ~*(v41 + 80);
    v52 = swift_allocObject();
    v52[2] = 0;
    v52[3] = 0;
    v52[4] = v39;
    v63(v52 + v51, v49, v42);
    v53 = OUTLINED_FUNCTION_41_7();
    sub_1D51ECB60(v53, v54, v43, v55, v52);

    (*(v41 + 8))(v40, v42);
  }

  sub_1D54A7F08();
  OUTLINED_FUNCTION_24_68();
  sub_1D54B4B54();
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D54A4A00(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D560C908();
}

uint64_t sub_1D54A4A70(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_1D5615458();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v6;
  sub_1D51ECB60(0, 0, v4, &unk_1D5668430, v7);
}

uint64_t sub_1D54A4B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D54A4BBC, 0, 0);
}

uint64_t sub_1D54A4BBC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_9_2();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    sub_1D56153C8();
    *(v0 + 64) = OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_82();
    sub_1D5615338();
    OUTLINED_FUNCTION_90();
    v2 = OUTLINED_FUNCTION_17_17();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    **(v0 + 40) = 1;
    OUTLINED_FUNCTION_55();

    return v5();
  }
}

uint64_t sub_1D54A4C84()
{
  OUTLINED_FUNCTION_60();

  sub_1D54A9698();

  v0 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1D54A4CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D54A4D10, 0, 0);
}

uint64_t sub_1D54A4D10()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_9_2();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    sub_1D56153C8();
    *(v0 + 72) = OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_82();
    sub_1D5615338();
    OUTLINED_FUNCTION_90();
    v2 = OUTLINED_FUNCTION_17_17();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    **(v0 + 40) = 1;
    OUTLINED_FUNCTION_55();

    return v5();
  }
}

uint64_t sub_1D54A4DD8()
{
  OUTLINED_FUNCTION_60();

  sub_1D54A8A40();

  v0 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t MusicSuggestedSongsViewModel.deinit()
{
  sub_1D54A8030();
  OUTLINED_FUNCTION_24_68();
  sub_1D54B4B54();
  v1 = OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel__suggestedSongs;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6E00, &qword_1D5667648);
  OUTLINED_FUNCTION_4_0();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel__isPerformingUserInitiatedRefresh;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1418, &unk_1D5667650);
  OUTLINED_FUNCTION_14();
  v6 = *(v5 + 8);
  v6(v0 + v3, v4);
  swift_weakDestroy();
  swift_weakDestroy();
  v7 = OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_suggestedSongsForCurrentSession;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);
  OUTLINED_FUNCTION_4_0();
  (*(v8 + 8))(v0 + v7);

  v6(v0 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel__isLoading, v4);

  return v0;
}

uint64_t MusicSuggestedSongsViewModel.__deallocating_deinit()
{
  MusicSuggestedSongsViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D54A50D4(uint64_t a1)
{
  v2 = type metadata accessor for MusicSuggestedSongsViewModelSeed(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D54ACBB0(a1, v4);
  return sub_1D54A51C0(v4);
}

uint64_t sub_1D54A5174(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_72_5(v2 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_seed, a2);
  OUTLINED_FUNCTION_12_96();
  v3 = OUTLINED_FUNCTION_265_2();
  return sub_1D54ACBB0(v3, v4);
}

uint64_t sub_1D54A51C0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_seed;
  v4 = OUTLINED_FUNCTION_286_3();
  OUTLINED_FUNCTION_54_0(v4, v5);
  sub_1D54A842C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1D54A5260@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D54A52B8();
  *a1 = result;
  return result;
}

uint64_t sub_1D54A52B8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_55_33();
  sub_1D560C8F8();

  return v1;
}

uint64_t (*sub_1D54A5324())()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_198(v1);
  v0[4] = swift_getKeyPath();
  v0[5] = swift_getKeyPath();
  OUTLINED_FUNCTION_63_1();
  v0[6] = sub_1D560C8E8();
  return sub_1D4F62A98;
}

uint64_t sub_1D54A53C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6E80, &qword_1D5667660);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_64_29();
  v2();
  OUTLINED_FUNCTION_54_0(v0 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel__suggestedSongs, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6E00, &qword_1D5667648);
  sub_1D560C8D8();
  swift_endAccess();
  v3 = OUTLINED_FUNCTION_128();
  return v4(v3);
}

uint64_t sub_1D54A54D8()
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_198(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6E80, &qword_1D5667660);
  v1[4] = v3;
  OUTLINED_FUNCTION_69(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  v7 = OUTLINED_FUNCTION_292_4();
  OUTLINED_FUNCTION_54_0(v7, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6E00, &qword_1D5667648);
  OUTLINED_FUNCTION_432(v9);
  swift_endAccess();
  return OUTLINED_FUNCTION_97_5();
}

uint64_t sub_1D54A55F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D54A5648();
  *a1 = result & 1;
  return result;
}

uint64_t (*sub_1D54A5670())()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_198(v1);
  v0[4] = swift_getKeyPath();
  v0[5] = swift_getKeyPath();
  OUTLINED_FUNCTION_63_1();
  v0[6] = sub_1D560C8E8();
  return sub_1D54516AC;
}

uint64_t sub_1D54A56F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_31();
  v10 = OUTLINED_FUNCTION_61();
  v11(v10);
  return a7(v7);
}

uint64_t sub_1D54A57D8()
{
  OUTLINED_FUNCTION_411();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0CE0, &qword_1D5665F20);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_64_29();
  v3();
  OUTLINED_FUNCTION_54_0(v0 + *v1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1418, &unk_1D5667650);
  sub_1D560C8D8();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_128();
  return v5(v4);
}

uint64_t sub_1D54A58E4()
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_198(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0CE0, &qword_1D5665F20);
  v1[4] = v3;
  OUTLINED_FUNCTION_69(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  v7 = OUTLINED_FUNCTION_292_4();
  OUTLINED_FUNCTION_54_0(v7, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1418, &unk_1D5667650);
  OUTLINED_FUNCTION_432(v9);
  swift_endAccess();
  return OUTLINED_FUNCTION_97_5();
}

void sub_1D54A59FC(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  if (a2)
  {
    v7 = v4[4];
    v8 = v4[5];
    v9 = OUTLINED_FUNCTION_46_1();
    v10(v9);
    a3(v5);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    a3(*(*a1 + 56));
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t sub_1D54A5AC0(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_limit;
  OUTLINED_FUNCTION_72_5(v2 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_limit, a2);
  return *(v2 + v3);
}

uint64_t sub_1D54A5AF8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_limit;
  v4 = OUTLINED_FUNCTION_286_3();
  result = OUTLINED_FUNCTION_21_42(v4, v5);
  *(v1 + v3) = a1;
  return result;
}

uint64_t (*sub_1D54A5BCC())()
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  v3 = OUTLINED_FUNCTION_198(v2);
  v4 = OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_playlistEditViewModel;
  *(v3 + 32) = v0;
  *(v3 + 40) = v4;
  OUTLINED_FUNCTION_54_0(v0 + v4, v1);
  *(v1 + 24) = swift_weakLoadStrong();
  return sub_1D54A5C44;
}

uint64_t sub_1D54A5CC4()
{
  v0 = OUTLINED_FUNCTION_286_3();
  OUTLINED_FUNCTION_21_42(v0, v1);
  OUTLINED_FUNCTION_265_2();
  swift_weakAssign();
}

uint64_t (*sub_1D54A5D10())()
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  v3 = OUTLINED_FUNCTION_198(v2);
  v4 = OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_playlistViewModel;
  *(v3 + 32) = v0;
  *(v3 + 40) = v4;
  OUTLINED_FUNCTION_54_0(v0 + v4, v1);
  *(v1 + 24) = swift_weakLoadStrong();
  return sub_1D54BE4A4;
}

void sub_1D54A5D88(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_1D54A5E08@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_suggestedSongsForCurrentSession;
  OUTLINED_FUNCTION_72_5(v2 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_suggestedSongsForCurrentSession, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);
  OUTLINED_FUNCTION_14();
  return (*(v5 + 16))(a2, v2 + v4);
}

uint64_t sub_1D54A5E88()
{
  v0 = OUTLINED_FUNCTION_286_3();
  OUTLINED_FUNCTION_54_0(v0, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);
  OUTLINED_FUNCTION_14();
  v2 = OUTLINED_FUNCTION_265_2();
  v3(v2);
  return swift_endAccess();
}

double sub_1D54A5F84(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_72_5(v2 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_selectedEntries, a2);

  return result;
}

uint64_t sub_1D54A5FC0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_selectedEntries;
  v4 = OUTLINED_FUNCTION_286_3();
  OUTLINED_FUNCTION_21_42(v4, v5);
  *(v1 + v3) = a1;
}

uint64_t sub_1D54A6058@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D54A60B0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D54A60C4(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_92_3();
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_59();
  sub_1D560C8F8();

  return v2;
}

uint64_t sub_1D54A613C(char a1, uint64_t a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_178_5();
  swift_getKeyPath();

  return sub_1D560C908();
}

uint64_t (*sub_1D54A61A4())()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_198(v1);
  v0[4] = swift_getKeyPath();
  v0[5] = swift_getKeyPath();
  OUTLINED_FUNCTION_63_1();
  v0[6] = sub_1D560C8E8();
  return sub_1D54516AC;
}

uint64_t sub_1D54A6248(void *a1, uint64_t *a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_54_0(v3 + *a1, v8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_432(v6);
  return swift_endAccess();
}

uint64_t sub_1D54A62BC()
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_198(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0CE0, &qword_1D5665F20);
  v1[4] = v3;
  OUTLINED_FUNCTION_69(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  v7 = OUTLINED_FUNCTION_292_4();
  OUTLINED_FUNCTION_54_0(v7, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1418, &unk_1D5667650);
  OUTLINED_FUNCTION_432(v9);
  swift_endAccess();
  return OUTLINED_FUNCTION_97_5();
}

uint64_t sub_1D54A63D4()
{
  v3 = sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_68_2();
  type metadata accessor for MusicSuggestedSongsViewModelSeed(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_150_1();
  v8 = OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_seed;
  OUTLINED_FUNCTION_59(v0 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_seed, v12);
  OUTLINED_FUNCTION_12_96();
  sub_1D54ACBB0(v0 + v8, v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v9 = OUTLINED_FUNCTION_46_1();
    v10(v9);
    sub_1D56146D8();
    (*(v5 + 8))(v1, v3);
  }

  return OUTLINED_FUNCTION_68_4();
}

void sub_1D54A6538()
{
  OUTLINED_FUNCTION_47();
  v3 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6E88, &unk_1D5667700);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_31();
  v45 = type metadata accessor for MusicSuggestedSongsEntry(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_59_0();
  v47 = v9 - v10;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_245_3();
  v12 = sub_1D5613838();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  if (qword_1EC7E90B0 != -1)
  {
    OUTLINED_FUNCTION_7_129(&qword_1EC7E90B0);
  }

  v14 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v14, qword_1EC87C2D0);
  v48 = v5;
  OUTLINED_FUNCTION_12_34();
  v46 = v15;
  v15();

  v16 = sub_1D560C738();
  v17 = sub_1D56156E8();

  if (os_log_type_enabled(v16, v17))
  {
    v44 = v1;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v50[0] = v19;
    *v18 = 136446466;
    v20 = MusicSuggestedSongsViewModel.description.getter(v19);
    v22 = sub_1D4E6835C(v20, v21, v50);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    OUTLINED_FUNCTION_38_45();
    sub_1D54B4BA4(v23, v24, MEMORY[0x1E6976C10]);
    v25 = sub_1D56160F8();
    v26 = OUTLINED_FUNCTION_400();
    v27(v26);
    v28 = OUTLINED_FUNCTION_222();
    sub_1D4E6835C(v28, v29, v30);
    OUTLINED_FUNCTION_0_6();

    *(v18 + 14) = v25;
    _os_log_impl(&dword_1D4E3F000, v16, v17, "%{public}s: Selection signal sent to suggested songs view model for song: %s.", v18, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_122();
    v1 = v44;
    OUTLINED_FUNCTION_122();
  }

  else
  {

    v31 = OUTLINED_FUNCTION_400();
    v32(v31);
  }

  (v46)(v2, v48, v12);
  v33 = (v2 + *(v45 + 20));
  *v33 = 0x6574736567677573;
  v33[1] = 0xE900000000000064;
  OUTLINED_FUNCTION_23_72();
  sub_1D54ACBB0(v2, v47);
  v34 = OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_selectedEntries;
  OUTLINED_FUNCTION_54_0(v3 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_selectedEntries, v50);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v49 = *(v3 + v34);
  sub_1D54B4664(v47, isUniquelyReferenced_nonNull_native, v1);
  *(v3 + v34) = v49;
  sub_1D54BE1FC(v1, &qword_1EC7F6E88);
  swift_endAccess();
  v36 = OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_selectedSongsForCurrentSession;
  OUTLINED_FUNCTION_54_0(v3 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_selectedSongsForCurrentSession, v50);
  sub_1D4EFF61C();
  v37 = *(*(v3 + v36) + 16);
  sub_1D4EFF854(v37);
  v38 = *(v3 + v36);
  *(v38 + 16) = v37 + 1;
  OUTLINED_FUNCTION_6_4();
  (v46)(v38 + v39 + *(v40 + 72) * v37, v48, v12);
  *(v3 + v36) = v38;
  swift_endAccess();
  if (v37 + 1 >= *(v3 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_selectedSongsLimitBeforeSessionRefresh))
  {
    sub_1D54A9784(2);
  }

  sub_1D54A52B8();
  sub_1D525C958();
  v42 = v41;

  if ((v42 & 1) == 0)
  {
    sub_1D54AC664();
  }

  v43 = OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_additionalHiddenSuggestedSongs;
  OUTLINED_FUNCTION_220_3(v3 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_additionalHiddenSuggestedSongs);
  if (!*(*(v3 + v43) + 16))
  {
    sub_1D54A9784(2);
  }

  sub_1D54B4B54();
  OUTLINED_FUNCTION_46();
}

void sub_1D54A69EC()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_147();
  v2 = sub_1D5613838();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_150_1();
  v19 = *(v0 + 16);
  if (v19)
  {
    v4 = 0;
    OUTLINED_FUNCTION_43_3();
    v17 = v5;
    v18 = v6;
    v16 = v0 + v5;
    v8 = *(v7 + 56);
    do
    {
      v9 = v16 + v8 * v4++;
      v18(v1, v9, v2);
      v10 = sub_1D54A52B8();
      v11 = v10 + v17;
      v12 = *(v10 + 16) + 1;
      while (--v12)
      {
        OUTLINED_FUNCTION_38_45();
        sub_1D54B4BA4(&unk_1EC7F2BF0, v13, MEMORY[0x1E6976C00]);
        v11 += v8;
        if (sub_1D5614D18())
        {

          sub_1D54A6538();
          goto LABEL_8;
        }
      }

LABEL_8:
      v14 = OUTLINED_FUNCTION_61();
      v15(v14);
    }

    while (v4 != v19);
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D54A6B94()
{
  OUTLINED_FUNCTION_60();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_26_12(v1);

  return sub_1D54AA104();
}

uint64_t sub_1D54A6C18(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MusicSuggestedSongsEntry(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D5613838();
  (*(*(v8 - 8) + 16))(v7, a1, v8);
  v9 = &v7[*(v5 + 28)];
  *v9 = 0x6574736567677573;
  *(v9 + 1) = 0xE900000000000064;
  v10 = OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_offeredEntries;
  swift_beginAccess();
  v11 = *(v2 + v10);

  v12 = sub_1D4ED0AAC(v7, v11);

  if (v12)
  {
  }

  else
  {
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v2 + v10);
    sub_1D4F15180();
    *(v2 + v10) = v15;
    swift_endAccess();
  }

  return sub_1D54B4B54();
}

void sub_1D54A6DB4()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_1_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  v21 = type metadata accessor for MusicSuggestedSongsEntry(0);
  v22 = OUTLINED_FUNCTION_22(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_68_2();
  (*(v16 + 16))(v20, v7, v14);
  (*(v9 + 16))(v13, v5, v3);
  v23 = OUTLINED_FUNCTION_130();
  MusicSuggestedSongsEntry.init<A>(song:moduleID:)(v23, v24, v3, v25);
  v26 = OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_offeredEntries;
  OUTLINED_FUNCTION_220_3(v1 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_offeredEntries);

  v27 = OUTLINED_FUNCTION_46_1();
  v29 = sub_1D4ED0AAC(v27, v28);

  if (v29)
  {
  }

  else
  {
    OUTLINED_FUNCTION_54_0(v1 + v26, &v31);
    swift_isUniquelyReferenced_nonNull_native();
    v30 = *(v1 + v26);
    sub_1D4F15180();
    *(v1 + v26) = v30;
    swift_endAccess();
  }

  OUTLINED_FUNCTION_3_184();
  sub_1D54B4B54();
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D54A6FCC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MusicSuggestedSongsEntry(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D5613838();
  (*(*(v8 - 8) + 16))(v7, a1, v8);
  v9 = &v7[*(v5 + 28)];
  *v9 = 0x6574736567677573;
  *(v9 + 1) = 0xE900000000000064;
  v10 = OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_offeredEntries;
  swift_beginAccess();
  v11 = *(v2 + v10);

  v12 = sub_1D4ED0AAC(v7, v11);

  if (!v12)
  {
    v12 = MEMORY[0x1E69E7CD0];
  }

  sub_1D56162D8();
  sub_1D5614E28();
  v13 = sub_1D5616328();
  v14 = -1 << *(v12 + 32);
  v15 = v13 & ~v14;
  if ((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v17 = *(v12 + 48);
    while (*(v17 + v15) == 1 && (sub_1D5616168() & 1) == 0)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v12;
    sub_1D54B0B10(0, v15, isUniquelyReferenced_nonNull_native);
  }

  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v21 = *(v2 + v10);
  sub_1D4F15180();
  *(v2 + v10) = v21;
  swift_endAccess();
  return sub_1D54B4B54();
}

void sub_1D54A725C()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_401(v1, v2, v3, v4);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v9 = type metadata accessor for MusicSuggestedSongsEntry(0);
  v10 = OUTLINED_FUNCTION_22(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_68_2();
  v11 = OUTLINED_FUNCTION_397();
  v12(v11);
  v13 = OUTLINED_FUNCTION_398();
  v14(v13);
  OUTLINED_FUNCTION_384();
  v15 = OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_offeredEntries;
  OUTLINED_FUNCTION_220_3(v0 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_offeredEntries);

  v16 = OUTLINED_FUNCTION_63_1();
  v18 = sub_1D4ED0AAC(v16, v17);

  OUTLINED_FUNCTION_422();
  OUTLINED_FUNCTION_421();
  sub_1D5616328();
  OUTLINED_FUNCTION_168_5();
  OUTLINED_FUNCTION_353_1();
  if (v19)
  {
    v20 = *(v18 + 48);
    while (*(v20 + v7) == 1 && (OUTLINED_FUNCTION_325_1() & 1) == 0)
    {
      OUTLINED_FUNCTION_315_1();
      if ((v21 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v18;
    sub_1D54B0B10(0, v7, isUniquelyReferenced_nonNull_native);
  }

  OUTLINED_FUNCTION_54_0(v0 + v15, &v24);
  swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v0 + v15);
  OUTLINED_FUNCTION_93();
  sub_1D4F15180();
  *(v0 + v15) = v23;
  swift_endAccess();
  OUTLINED_FUNCTION_3_184();
  sub_1D54B4B54();
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D54A74B8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MusicSuggestedSongsEntry(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D5613838();
  (*(*(v8 - 8) + 16))(v7, a1, v8);
  v9 = &v7[*(v5 + 28)];
  *v9 = 0x6574736567677573;
  *(v9 + 1) = 0xE900000000000064;
  v10 = OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_offeredEntries;
  swift_beginAccess();
  v11 = *(v2 + v10);

  v12 = sub_1D4ED0AAC(v7, v11);

  if (!v12)
  {
    v12 = MEMORY[0x1E69E7CD0];
  }

  sub_1D56162D8();
  sub_1D5614E28();
  v13 = sub_1D5616328();
  v14 = -1 << *(v12 + 32);
  v15 = v13 & ~v14;
  if ((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v17 = *(v12 + 48);
    while ((*(v17 + v15) & 1) == 0 && (sub_1D5616168() & 1) == 0)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v12;
    sub_1D54B0B10(1, v15, isUniquelyReferenced_nonNull_native);
  }

  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v21 = *(v2 + v10);
  sub_1D4F15180();
  *(v2 + v10) = v21;
  swift_endAccess();
  return sub_1D54B4B54();
}

void sub_1D54A7744()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_401(v1, v2, v3, v4);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v9 = type metadata accessor for MusicSuggestedSongsEntry(0);
  v10 = OUTLINED_FUNCTION_22(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_68_2();
  v11 = OUTLINED_FUNCTION_397();
  v12(v11);
  v13 = OUTLINED_FUNCTION_398();
  v14(v13);
  OUTLINED_FUNCTION_384();
  v15 = OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_offeredEntries;
  OUTLINED_FUNCTION_220_3(v0 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_offeredEntries);

  v16 = OUTLINED_FUNCTION_63_1();
  v18 = sub_1D4ED0AAC(v16, v17);

  OUTLINED_FUNCTION_422();
  OUTLINED_FUNCTION_421();
  sub_1D5616328();
  OUTLINED_FUNCTION_168_5();
  OUTLINED_FUNCTION_353_1();
  if (v19)
  {
    v20 = *(v18 + 48);
    while ((*(v20 + v7) & 1) == 0 && (OUTLINED_FUNCTION_325_1() & 1) == 0)
    {
      OUTLINED_FUNCTION_315_1();
      if ((v21 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v18;
    sub_1D54B0B10(1, v7, isUniquelyReferenced_nonNull_native);
  }

  OUTLINED_FUNCTION_54_0(v0 + v15, &v24);
  swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v0 + v15);
  OUTLINED_FUNCTION_93();
  sub_1D4F15180();
  *(v0 + v15) = v23;
  swift_endAccess();
  OUTLINED_FUNCTION_3_184();
  sub_1D54B4B54();
  OUTLINED_FUNCTION_46();
}

void sub_1D54A799C()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6E88, &unk_1D5667700);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_3();
  v59 = v6;
  v7 = OUTLINED_FUNCTION_70_0();
  v67 = type metadata accessor for MusicSuggestedSongsEntry(v7);
  OUTLINED_FUNCTION_4();
  v64 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_59_0();
  v58 = v10 - v11;
  OUTLINED_FUNCTION_23();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v57 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v57 - v17;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_2();
  v63 = v19;
  OUTLINED_FUNCTION_417();
  v21 = 1 << *(v3 + 32);
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = v22 & v20;
  v24 = OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_selectedEntries;
  v65 = OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_selectedSongsForCurrentSession;
  v66 = v3;

  OUTLINED_FUNCTION_59(v0 + v24, &v71);
  v25 = 0;
  v26 = (v21 + 63) >> 6;
  v60 = v26;
  v57 = v0;
  v62 = v1;
  v61 = v24;
  if (v23)
  {
    while (1)
    {
LABEL_9:
      v28 = v63;
      v68 = *(v64 + 72);
      OUTLINED_FUNCTION_23_72();
      sub_1D54ACBB0(v29, v28);
      OUTLINED_FUNCTION_37_48();
      v30 = OUTLINED_FUNCTION_24();
      sub_1D54B5AC0(v30, v31);
      v32 = *(v0 + v24);
      if (*(v32 + 16))
      {
        sub_1D56162D8();
        sub_1D5613838();
        OUTLINED_FUNCTION_38_45();
        sub_1D54B4BA4(&qword_1EC7EB458, v33, MEMORY[0x1E6976BF8]);

        sub_1D5614CB8();
        v34 = v18;
        v35 = &v18[*(v67 + 20)];
        v37 = *v35;
        v36 = *(v35 + 1);
        sub_1D5614E28();
        sub_1D5616328();
        OUTLINED_FUNCTION_168_5();
        v40 = v39 & ~v38;
        if ((*(v32 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40))
        {
          v41 = ~v38;
          while (1)
          {
            OUTLINED_FUNCTION_23_72();
            sub_1D54ACBB0(v42, v15);
            if (sub_1D56137A8())
            {
              v43 = &v15[*(v67 + 20)];
              v44 = *v43 == v37 && *(v43 + 1) == v36;
              if (v44 || (sub_1D5616168() & 1) != 0)
              {
                break;
              }
            }

            OUTLINED_FUNCTION_3_184();
            sub_1D54B4B54();
            v40 = (v40 + 1) & v41;
            OUTLINED_FUNCTION_351_1();
            if (((v45 >> v40) & 1) == 0)
            {
              goto LABEL_19;
            }
          }

          OUTLINED_FUNCTION_3_184();
          sub_1D54B4B54();
          v0 = v57;
          v18 = v34;
          v1 = v62;
          v24 = v61;
          goto LABEL_23;
        }

LABEL_19:

        v0 = v57;
        v18 = v34;
      }

      OUTLINED_FUNCTION_23_72();
      v46 = v58;
      sub_1D54ACBB0(v18, v58);
      v47 = v61;
      OUTLINED_FUNCTION_54_0(v0 + v61, v70);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v69 = *(v0 + v47);
      v49 = v59;
      sub_1D54B4664(v46, isUniquelyReferenced_nonNull_native, v59);
      *(v0 + v47) = v69;
      sub_1D54BE1FC(v49, &qword_1EC7F6E88);
      swift_endAccess();
      v50 = v65;
      OUTLINED_FUNCTION_54_0(v0 + v65, v70);
      sub_1D4EFF61C();
      v51 = *(*(v0 + v50) + 16);
      sub_1D4EFF854(v51);
      v52 = *(v0 + v50);
      *(v52 + 16) = v51 + 1;
      sub_1D5613838();
      OUTLINED_FUNCTION_14();
      (*(v53 + 16))(v52 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v51, v18);
      *(v0 + v50) = v52;
      swift_endAccess();
      sub_1D54A52B8();
      OUTLINED_FUNCTION_61();
      sub_1D525C958();
      LOBYTE(v50) = v54;
      v24 = v47;
      v1 = v62;

      if ((v50 & 1) == 0)
      {
        sub_1D54AC664();
      }

LABEL_23:
      v23 &= v23 - 1;
      OUTLINED_FUNCTION_3_184();
      sub_1D54B4B54();
      v26 = v60;
      if (!v23)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      return;
    }

    if (v27 >= v26)
    {
      break;
    }

    v23 = *(v1 + 8 * v27);
    ++v25;
    if (v23)
    {
      v25 = v27;
      goto LABEL_9;
    }
  }

  v55 = v65;
  OUTLINED_FUNCTION_59(v0 + v65, v70);
  if (*(v0 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_selectedSongsLimitBeforeSessionRefresh) < *(*(v0 + v55) + 16) || (v56 = OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_additionalHiddenSuggestedSongs, OUTLINED_FUNCTION_59(v0 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_additionalHiddenSuggestedSongs, &v69), !*(*(v0 + v56) + 16)))
  {
    sub_1D54A9784(2);
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D54A7F08()
{
  if (qword_1EC7E90B0 != -1)
  {
    OUTLINED_FUNCTION_7_129(&qword_1EC7E90B0);
  }

  v2 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v2, qword_1EC87C2D0);

  v3 = sub_1D560C738();
  v4 = sub_1D56156E8();

  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_142();
    v5 = OUTLINED_FUNCTION_37_0();
    v8 = v5;
    *v0 = 136446210;
    v6 = MusicSuggestedSongsViewModel.description.getter(v5);
    sub_1D4E6835C(v6, v7, &v8);
    OUTLINED_FUNCTION_433();
    *(v0 + 4) = v1;
    _os_log_impl(&dword_1D4E3F000, v3, v4, "%{public}s: Starting session for suggested songs view model.", v0, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_118();
  }

  sub_1D54A9784(2);
}

void sub_1D54A8030()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_13_3();
  v46 = v4;
  v5 = OUTLINED_FUNCTION_70_0();
  v6 = type metadata accessor for MusicSuggestedSongsViewModelSeed(v5);
  v7 = OUTLINED_FUNCTION_69(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v7);
  v13 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_2();
  v45 = v14;
  if (qword_1EC7E90B0 != -1)
  {
    OUTLINED_FUNCTION_7_129(&qword_1EC7E90B0);
  }

  v15 = sub_1D560C758();
  __swift_project_value_buffer(v15, qword_1EC87C2D0);

  v16 = sub_1D560C738();
  v17 = sub_1D56156E8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_142();
    v44 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = v9;
    v20 = v18;
    v21 = OUTLINED_FUNCTION_138_0();
    v49 = v21;
    *v20 = 136446210;
    v22 = MusicSuggestedSongsViewModel.description.getter(v21);
    v24 = sub_1D4E6835C(v22, v23, &v49);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_1D4E3F000, v16, v17, "%{public}s: Ending session for suggested view model.", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    OUTLINED_FUNCTION_122();
    v9 = v19;
    v13 = v44;
    OUTLINED_FUNCTION_122();
  }

  v25 = *(v0 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_userState + 8);
  if (v25 && ([v25 capabilities] & 1) != 0)
  {
    v30 = OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_seed;
    OUTLINED_FUNCTION_220_3(v1 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_seed);
    v31 = v45;
    sub_1D54ACBB0(v1 + v30, v45);
    v32 = OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_offeredEntries;
    OUTLINED_FUNCTION_59(v1 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_offeredEntries, &v48);
    v33 = *(v1 + v32);
    v34 = OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_selectedEntries;
    OUTLINED_FUNCTION_59(v1 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_selectedEntries, &v47);
    v35 = *(v1 + v34);
    sub_1D5615458();
    v36 = v46;
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
    sub_1D54ACBB0(v31, v13);
    v41 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v42 = (v11 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    *(v43 + 16) = 0;
    *(v43 + 24) = 0;
    sub_1D54B5AC0(v13, v43 + v41);
    *(v43 + v42) = v33;
    *(v43 + ((v42 + 15) & 0xFFFFFFFFFFFFFFF8)) = v35;

    OUTLINED_FUNCTION_41_7();
    sub_1D5264320();

    sub_1D54BE1FC(v36, &qword_1EC7EB710);
    OUTLINED_FUNCTION_24_68();
    sub_1D54B4B54();
    OUTLINED_FUNCTION_46();
  }

  else
  {
    v46 = sub_1D560C738();
    v26 = sub_1D56156C8();
    if (os_log_type_enabled(v46, v26))
    {
      v27 = OUTLINED_FUNCTION_63_12();
      *v27 = 0;
      _os_log_impl(&dword_1D4E3F000, v46, v26, "Attempt to end suggested songs session without Apple Music subscription.", v27, 2u);
      OUTLINED_FUNCTION_122();
    }

    OUTLINED_FUNCTION_46();
  }
}

uint64_t sub_1D54A842C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicSuggestedSongsViewModelSeed(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D54A8490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  type metadata accessor for MusicSuggestedSongsResponse(0);
  v6[6] = swift_task_alloc();
  type metadata accessor for MusicSuggestedSongsViewModelSeed(0);
  v6[7] = swift_task_alloc();
  v6[8] = type metadata accessor for MusicSuggestedSongsRequest(0);
  v6[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D54A8580, 0, 0);
}

uint64_t sub_1D54A8580()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  OUTLINED_FUNCTION_12_96();
  sub_1D54ACBB0(v6, v3);

  MusicSuggestedSongsRequest.init(seed:offeredEntries:selectedEntries:)(v3, v5, v4, v2);
  *(v2 + *(v1 + 24)) = 1;
  v7 = swift_task_alloc();
  v0[10] = v7;
  sub_1D560CD48();
  sub_1D54B4BA4(&qword_1EC7F5868, type metadata accessor for MusicSuggestedSongsRequest, &protocol conformance descriptor for MusicSuggestedSongsRequest);
  *v7 = v0;
  v7[1] = sub_1D54A86C4;
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEDCE900](v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1D54A86C4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_21_77();
    sub_1D54B4B54();
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D54A87CC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_25_63();
  sub_1D54B4B54();

  OUTLINED_FUNCTION_22_1();

  return v0();
}

uint64_t sub_1D54A8844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_35_8();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_160();
  a16 = v18;
  v21 = *(v18 + 88);
  *(v18 + 16) = v21;
  v22 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
  if (swift_dynamicCast())
  {

    v23 = *(v18 + 96);
    if (qword_1EC7E90B0 != -1)
    {
      OUTLINED_FUNCTION_7_129(&qword_1EC7E90B0);
    }

    v24 = sub_1D560C758();
    OUTLINED_FUNCTION_62_4(v24, qword_1EC87C2D0);
    v25 = sub_1D560C738();
    v26 = sub_1D56156C8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = OUTLINED_FUNCTION_142();
      v28 = OUTLINED_FUNCTION_138_0();
      a9 = v28;
      *v27 = 136446210;
      *(v18 + 97) = v23;
      v29 = sub_1D5614DB8();
      v31 = sub_1D4E6835C(v29, v30, &a9);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_1D4E3F000, v25, v26, "Suggested songs request error when ending suggested songs request session: %{public}s.", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_83();
    }

    OUTLINED_FUNCTION_25_63();
    sub_1D54B4B54();

    OUTLINED_FUNCTION_22_1();
  }

  else
  {
    OUTLINED_FUNCTION_25_63();
    sub_1D54B4B54();

    OUTLINED_FUNCTION_55();
  }

  OUTLINED_FUNCTION_25_3();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10);
}

void sub_1D54A8A40()
{
  OUTLINED_FUNCTION_47();
  v3 = v0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6F70, &unk_1D5667C40);
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F19B0, &unk_1D561D170);
  OUTLINED_FUNCTION_4();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_59_0();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_245_3();
  sub_1D5614898();
  sub_1D560DD68();
  KeyPath = swift_getKeyPath();
  v25[0] = sub_1D5614698();
  v25[1] = v16;
  MEMORY[0x1DA6E3AD0](KeyPath, v25, v7, MEMORY[0x1E6975510]);

  (*(v9 + 16))(v13, v2, v7);
  sub_1D560F0D8();
  v17 = _s8MusicKit0A7LibraryC0aB8InternalE6deviceACvgZ_0();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6F78, &qword_1D5667C78);
  OUTLINED_FUNCTION_2_19(v18);
  v19 = sub_1D547D2C8(v13, v17);
  *(v3 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_autoupdatingPlaylistResponse) = v19;

  OUTLINED_FUNCTION_357_1();
  OUTLINED_FUNCTION_54_0(v19 + *(v20 + 104), v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6F80, &unk_1D5667C80);
  sub_1D560C8C8();
  swift_endAccess();

  OUTLINED_FUNCTION_40_13();
  v21 = swift_allocObject();
  OUTLINED_FUNCTION_52_18(v21);
  OUTLINED_FUNCTION_37();
  sub_1D54BE3C4(v22, &qword_1EC7F6F70, &unk_1D5667C40, v23);
  sub_1D560C948();
  OUTLINED_FUNCTION_1_35();

  (*(v5 + 8))(v1, v24);
  (*(v9 + 8))(v2, v7);
  OUTLINED_FUNCTION_356_1(OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_autoupdatingPlaylistSubscription);

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D54A8D44(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6F90, &qword_1D5667C90);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - v11;
  v13 = sub_1D5614898();
  v20 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4F39AB0(a1, v9, &qword_1EC7F6F90, &qword_1D5667C90);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19A0, &qword_1D5642050);
  if (__swift_getEnumTagSinglePayload(v9, 1, v16) == 1)
  {
    sub_1D54BE1FC(v9, &qword_1EC7F6F90);
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
    return sub_1D54BE1FC(v12, &unk_1EC7F1990);
  }

  sub_1D560DE38();
  (*(*(v16 - 8) + 8))(v9, v16);
  sub_1D4EC9C38(v12);
  (*(v4 + 8))(v6, v3);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    return sub_1D54BE1FC(v12, &unk_1EC7F1990);
  }

  v18 = v20;
  (*(v20 + 32))(v15, v12, v13);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D54A90A4();
  }

  return (*(v18 + 8))(v15, v13);
}

void sub_1D54A90A4()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v78 = v2;
  sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v75 = v4;
  v76 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_59_0();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v77 = &v70 - v9;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v10);
  v74 = &v70 - v11;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v70 - v13;
  v15 = type metadata accessor for MusicSuggestedSongsViewModelSeed(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_59_0();
  v81 = v17 - v18;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v70 - v20;
  v22 = sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_59_0();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v70 - v30;
  v32 = OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_seed;
  OUTLINED_FUNCTION_220_3(v1 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_seed);
  OUTLINED_FUNCTION_12_96();
  v79 = v32;
  sub_1D54ACBB0(v1 + v32, v21);
  v80 = v15;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v70 = v7;
    v73 = v1;
    (*(v24 + 32))(v31, v21, v22);
    v71 = *(v24 + 16);
    v72 = v24 + 16;
    v71(v28, v31, v22);
    sub_1D560EC98();
    v41 = sub_1D560D7E8();
    v42 = *(v75 + 1);
    v43 = v14;
    v44 = v76;
    v42(v43, v76);
    v75 = v31;
    if (v41)
    {
      v45 = v74;
      sub_1D560EC98();
      sub_1D560D808();
      v47 = v46;
      v48 = v45;
      v49 = v44;
      v42(v48, v44);
      v50 = v78;
      v51 = v28;
      if (v47)
      {

        v52 = 0;
      }

      else
      {
        v52 = 1;
      }
    }

    else
    {
      v49 = v44;
      v52 = 0;
      v50 = v78;
      v51 = v28;
    }

    v53 = v77;
    sub_1D560EC98();
    v54 = sub_1D560D7E8();
    v42(v53, v49);
    if (v54)
    {
      sub_1D560EC98();
      sub_1D560D808();
      v56 = v55;
      v57 = OUTLINED_FUNCTION_24();
      (v42)(v57);
      if (!v56)
      {
        v59 = 0;
        v58 = v73;
LABEL_19:
        v60 = sub_1D56146D8();
        v62 = v61;
        if (v60 == sub_1D56146D8() && v62 == v63)
        {

          if ((v59 & 1) == 0)
          {
LABEL_31:
            v67 = *(v24 + 8);
            v67(v51, v22);
            v67(v75, v22);
            v68 = v81;
            v71(v81, v50, v22);
            swift_storeEnumTagMultiPayload();
            v69 = v79;
            OUTLINED_FUNCTION_54_0(v58 + v79, v82);
            sub_1D54A842C(v68, v58 + v69);
            swift_endAccess();
            goto LABEL_32;
          }

          v66 = 2;
        }

        else
        {
          OUTLINED_FUNCTION_61();
          v65 = sub_1D5616168();

          if (v65)
          {
            v66 = 2;
          }

          else
          {
            v66 = 0;
          }

          if (!(v59 & 1 | ((v65 & 1) == 0)))
          {
            goto LABEL_31;
          }
        }

        sub_1D54A9784(v66);
        goto LABEL_31;
      }

      v58 = v73;
      if (!v52)
      {
LABEL_15:
        v59 = 0;
        goto LABEL_19;
      }
    }

    else
    {
      v58 = v73;
      if ((v52 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v59 = 1;
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_24_68();
  sub_1D54B4B54();
  if (qword_1EC7E90B0 != -1)
  {
    OUTLINED_FUNCTION_7_129(&qword_1EC7E90B0);
  }

  v33 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v33, qword_1EC87C2D0);

  v34 = sub_1D560C738();
  v35 = sub_1D56156D8();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = OUTLINED_FUNCTION_142();
    v37 = OUTLINED_FUNCTION_138_0();
    v82[0] = v37;
    *v36 = 136315138;
    OUTLINED_FUNCTION_12_96();
    sub_1D54ACBB0(v1 + v79, v81);
    v38 = sub_1D5614DB8();
    v40 = sub_1D4E6835C(v38, v39, v82);

    *(v36 + 4) = v40;
    _os_log_impl(&dword_1D4E3F000, v34, v35, "Unable to update playlist because seed %s is not a playlist", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    OUTLINED_FUNCTION_118();
    OUTLINED_FUNCTION_122();
  }

LABEL_32:
  OUTLINED_FUNCTION_46();
}

void sub_1D54A9698()
{
  v1 = v0 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_userState;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_userState);
  if (qword_1EDD55F58 != -1)
  {
    OUTLINED_FUNCTION_32_4(&qword_1EDD55F58);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_128();
  sub_1D560C8F8();

  v3 = *(v1 + 8);
  *v1 = v4;
  *(v1 + 1) = v5;
  *(v1 + 2) = v6;
  *(v1 + 3) = v7;
  *(v1 + 8) = v8;

  if (v2 != v4)
  {
    sub_1D54A9784(1);
  }
}

void sub_1D54A9784(char a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_68_2();
  v6 = OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_automaticRefreshTask;
  if (!*(v1 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_automaticRefreshTask))
  {
    sub_1D5615458();
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
    OUTLINED_FUNCTION_40_13();
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = v11;
    *(v12 + 40) = a1;
    v13 = OUTLINED_FUNCTION_41_7();
    *(v1 + v6) = sub_1D51EC8B4(v13, v14, v2, v15, v16);
  }
}

uint64_t sub_1D54A9890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 80) = a5;
  *(v5 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D54A98B4, 0, 0);
}

uint64_t sub_1D54A98B4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_9_2();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_1D54A998C;

    return sub_1D54A9C24();
  }

  else
  {
    OUTLINED_FUNCTION_55();

    return v4();
  }
}

uint64_t sub_1D54A998C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_55();

    return v10();
  }
}

uint64_t sub_1D54A9AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_35_8();
  a17 = v20;
  a18 = v21;
  OUTLINED_FUNCTION_160();
  a16 = v18;

  if (qword_1EC7E90B0 != -1)
  {
    OUTLINED_FUNCTION_7_129(&qword_1EC7E90B0);
  }

  v22 = *(v18 + 72);
  v23 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v23, qword_1EC87C2D0);
  v24 = v22;
  v25 = sub_1D560C738();
  v26 = sub_1D56156C8();

  v27 = os_log_type_enabled(v25, v26);
  v28 = *(v18 + 72);
  if (v27)
  {
    OUTLINED_FUNCTION_142();
    v29 = OUTLINED_FUNCTION_37_0();
    a9 = v29;
    *v19 = 136446210;
    *(v18 + 40) = v28;
    v30 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    v31 = sub_1D5614DB8();
    v33 = sub_1D4E6835C(v31, v32, &a9);

    *(v19 + 4) = v33;
    OUTLINED_FUNCTION_6_87();
    _os_log_impl(v34, v35, v36, v37, v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_118();
  }

  else
  {
  }

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_25_3();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10);
}

uint64_t sub_1D54A9C24()
{
  OUTLINED_FUNCTION_60();
  *(v1 + 24) = v0;
  *(v1 + 88) = v2;
  sub_1D56153C8();
  *(v1 + 32) = OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_82();
  v4 = sub_1D5615338();
  *(v1 + 40) = v4;
  *(v1 + 48) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D54A9CB0, v4, v3);
}

uint64_t sub_1D54A9CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_15();
  a17 = v20;
  a18 = v21;
  OUTLINED_FUNCTION_160();
  a16 = v18;
  if (qword_1EC7E90B0 != -1)
  {
    OUTLINED_FUNCTION_7_129(&qword_1EC7E90B0);
  }

  v22 = *(v18 + 24);
  v23 = sub_1D560C758();
  *(v18 + 56) = OUTLINED_FUNCTION_62_4(v23, qword_1EC87C2D0);

  v24 = sub_1D560C738();
  v25 = sub_1D56156E8();

  if (os_log_type_enabled(v24, v25))
  {
    OUTLINED_FUNCTION_142();
    v26 = OUTLINED_FUNCTION_37_0();
    a10 = v26;
    *v22 = 136446210;
    v27 = MusicSuggestedSongsViewModel.description.getter(v26);
    sub_1D4E6835C(v27, v28, &a10);
    OUTLINED_FUNCTION_433();
    *(v22 + 4) = v19;
    OUTLINED_FUNCTION_240_2();
    _os_log_impl(v29, v30, v31, v32, v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_118();
  }

  v34 = *(v18 + 24);
  v35 = *(v18 + 88);
  v36 = OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_refreshStatus;
  *(v18 + 64) = OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_refreshStatus;
  *(v34 + v36) = v35;
  v37 = swift_task_alloc();
  v38 = OUTLINED_FUNCTION_272(v37);
  *v38 = v39;
  OUTLINED_FUNCTION_74_28(v38);
  OUTLINED_FUNCTION_14_47();

  return sub_1D54AA5B8();
}

uint64_t sub_1D54A9E24()
{
  OUTLINED_FUNCTION_80();
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 80) = v0;

  v5 = *(v2 + 48);
  v6 = *(v2 + 40);
  if (v0)
  {
    v7 = sub_1D54A9FC4;
  }

  else
  {
    v7 = sub_1D54A9F58;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1D54A9F58()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 24);

  *(v1 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_automaticRefreshTask) = 0;

  OUTLINED_FUNCTION_22_1();

  return v2();
}

uint64_t sub_1D54A9FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_15();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_160();
  a16 = v18;
  v21 = v18[10];
  v22 = v18[8];
  v23 = v18[3];

  *(v23 + v22) = 4;
  *(v23 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_automaticRefreshTask) = 0;

  v24 = v21;
  v25 = sub_1D560C738();
  sub_1D56156C8();
  OUTLINED_FUNCTION_97_9();
  if (OUTLINED_FUNCTION_165_0())
  {
    v26 = OUTLINED_FUNCTION_142();
    v27 = OUTLINED_FUNCTION_138_0();
    a9 = v27;
    OUTLINED_FUNCTION_430(4.8751e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    v28 = sub_1D5614DB8();
    v30 = sub_1D4E6835C(v28, v29, &a9);

    *(v26 + 4) = v30;
    OUTLINED_FUNCTION_66_26();
    _os_log_impl(v31, v32, v33, v34, v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    OUTLINED_FUNCTION_118();
    OUTLINED_FUNCTION_54();
  }

  swift_willThrow();
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_14_47();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10);
}

uint64_t sub_1D54AA104()
{
  OUTLINED_FUNCTION_60();
  v1[3] = v0;
  sub_1D56153C8();
  v1[4] = OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_82();
  v3 = sub_1D5615338();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D54AA18C, v3, v2);
}

uint64_t sub_1D54AA18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_15();
  a17 = v20;
  a18 = v21;
  OUTLINED_FUNCTION_160();
  a16 = v18;
  if (sub_1D54A5648())
  {

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_14_47();

    return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
  }

  else
  {
    if (qword_1EC7E90B0 != -1)
    {
      OUTLINED_FUNCTION_7_129(&qword_1EC7E90B0);
    }

    v31 = v18[3];
    v32 = sub_1D560C758();
    v18[7] = OUTLINED_FUNCTION_62_4(v32, qword_1EC87C2D0);

    v33 = sub_1D560C738();
    v34 = sub_1D56156E8();

    if (os_log_type_enabled(v33, v34))
    {
      OUTLINED_FUNCTION_142();
      v35 = OUTLINED_FUNCTION_37_0();
      a10 = v35;
      *v31 = 136446210;
      v36 = MusicSuggestedSongsViewModel.description.getter(v35);
      sub_1D4E6835C(v36, v37, &a10);
      OUTLINED_FUNCTION_433();
      *(v31 + 4) = v19;
      OUTLINED_FUNCTION_240_2();
      _os_log_impl(v38, v39, v40, v41, v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_118();
    }

    v43 = v18[3];
    sub_1D54A565C(1);
    v44 = OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_refreshStatus;
    v18[8] = OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_refreshStatus;
    *(v43 + v44) = 3;
    v45 = swift_task_alloc();
    v46 = OUTLINED_FUNCTION_272(v45);
    *v46 = v47;
    OUTLINED_FUNCTION_74_28(v46);
    OUTLINED_FUNCTION_14_47();

    return sub_1D54AA5B8();
  }
}

uint64_t sub_1D54AA34C()
{
  OUTLINED_FUNCTION_80();
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 80) = v0;

  v5 = *(v2 + 48);
  v6 = *(v2 + 40);
  if (v0)
  {
    v7 = sub_1D54AA480;
  }

  else
  {
    v7 = sub_1D516970C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1D54AA480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_15();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_160();
  a16 = v18;
  v21 = v18[10];
  v22 = v18[8];
  v23 = v18[3];

  sub_1D54A565C(0);
  *(v23 + v22) = 4;
  v24 = v21;
  v25 = sub_1D560C738();
  sub_1D56156C8();
  OUTLINED_FUNCTION_97_9();
  if (OUTLINED_FUNCTION_165_0())
  {
    v26 = OUTLINED_FUNCTION_142();
    v27 = OUTLINED_FUNCTION_138_0();
    a9 = v27;
    OUTLINED_FUNCTION_430(4.8751e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    v28 = sub_1D5614DB8();
    v30 = sub_1D4E6835C(v28, v29, &a9);

    *(v26 + 4) = v30;
    OUTLINED_FUNCTION_66_26();
    _os_log_impl(v31, v32, v33, v34, v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    OUTLINED_FUNCTION_118();
    OUTLINED_FUNCTION_54();
  }

  swift_willThrow();
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_14_47();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10);
}

uint64_t sub_1D54AA5B8()
{
  OUTLINED_FUNCTION_60();
  v1[41] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6EF8, &qword_1D5667978);
  v1[42] = v2;
  OUTLINED_FUNCTION_69(v2);
  v1[43] = v3;
  v1[44] = OUTLINED_FUNCTION_127();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6F00, &qword_1D5667980);
  v1[45] = v4;
  OUTLINED_FUNCTION_69(v4);
  v1[46] = v5;
  v1[47] = OUTLINED_FUNCTION_127();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6EE8, &qword_1D5667968);
  OUTLINED_FUNCTION_22(v6);
  v1[48] = OUTLINED_FUNCTION_127();
  v7 = type metadata accessor for MusicSuggestedSongsViewModelSeed(0);
  OUTLINED_FUNCTION_22(v7);
  v1[49] = OUTLINED_FUNCTION_127();
  v8 = type metadata accessor for MusicSuggestedSongsRequest(0);
  v1[50] = v8;
  OUTLINED_FUNCTION_22(v8);
  v1[51] = OUTLINED_FUNCTION_167();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  OUTLINED_FUNCTION_22(v9);
  v1[54] = OUTLINED_FUNCTION_127();
  v10 = type metadata accessor for Playlist.Entry.InternalItem(0);
  v1[55] = v10;
  OUTLINED_FUNCTION_22(v10);
  v1[56] = OUTLINED_FUNCTION_167();
  v1[57] = swift_task_alloc();
  v11 = sub_1D5613838();
  v1[58] = v11;
  OUTLINED_FUNCTION_69(v11);
  v1[59] = v12;
  v1[60] = OUTLINED_FUNCTION_127();
  v13 = type metadata accessor for MusicSuggestedSongsEntry(0);
  v1[61] = v13;
  OUTLINED_FUNCTION_69(v13);
  v1[62] = v14;
  v1[63] = OUTLINED_FUNCTION_167();
  v1[64] = swift_task_alloc();
  v15 = sub_1D5614828();
  v1[65] = v15;
  OUTLINED_FUNCTION_69(v15);
  v1[66] = v16;
  v1[67] = OUTLINED_FUNCTION_127();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECEA0, &qword_1D5666390);
  v1[68] = v17;
  OUTLINED_FUNCTION_22(v17);
  v1[69] = OUTLINED_FUNCTION_127();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A30, &qword_1D561C4C0);
  v1[70] = v18;
  OUTLINED_FUNCTION_69(v18);
  v1[71] = v19;
  v1[72] = OUTLINED_FUNCTION_167();
  v1[73] = swift_task_alloc();
  sub_1D56153C8();
  v1[74] = OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_82();
  sub_1D5615338();
  OUTLINED_FUNCTION_90();
  v20 = OUTLINED_FUNCTION_17_17();

  return MEMORY[0x1EEE6DFA0](v20, v21, v22);
}

uint64_t sub_1D54AA94C()
{
  v146 = v1;

  if (sub_1D54A60B0())
  {
    if (qword_1EC7E90B0 != -1)
    {
      OUTLINED_FUNCTION_7_129(&qword_1EC7E90B0);
    }

    v2 = sub_1D560C758();
    OUTLINED_FUNCTION_62_4(v2, qword_1EC87C2D0);
    v3 = sub_1D560C738();
    v4 = sub_1D56156C8();
    if (OUTLINED_FUNCTION_74_12(v4))
    {
      v5 = OUTLINED_FUNCTION_63_12();
      OUTLINED_FUNCTION_86_10(v5);
      OUTLINED_FUNCTION_66_26();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
      OUTLINED_FUNCTION_54();
    }
  }

  else
  {
    v11 = *(v1[41] + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_userState + 8);
    if (v11 && ([v11 capabilities] & 1) != 0)
    {
      v16 = v1[41];
      v17 = OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_selectedEntries;
      OUTLINED_FUNCTION_59(v16 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_selectedEntries, (v1 + 16));
      v18 = *(v16 + v17);
      OUTLINED_FUNCTION_59(v16 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_playlistViewModel, (v1 + 19));
      if (swift_weakLoadStrong())
      {
        v139 = v1 + 12;
        v19 = v1[73];
        v20 = v1[72];
        v21 = v1[71];
        v22 = v1[70];
        v23 = v1[69];
        v24 = v1[68];
        v25 = v1[66];
        v135 = v1[61];
        v26 = v1[59];
        sub_1D54547EC(v19);
        (*(v21 + 16))(v20, v19, v22);
        OUTLINED_FUNCTION_163_0();
        OUTLINED_FUNCTION_64_29();
        sub_1D54BE3C4(v27, v28, v29, v30);
        v31 = v23;
        sub_1D5614F98();
        v32 = *(v24 + 36);
        v137 = (v26 + 32);
        v138 = (v25 + 16);
        OUTLINED_FUNCTION_14_1();
        OUTLINED_FUNCTION_64_29();
        sub_1D54BE3C4(v33, v34, v35, v36);
        v136 = MEMORY[0x1E69E7CC0];
        v140 = v1;
        v141 = v32;
        while (1)
        {
          sub_1D5615648();
          if (*(v31 + v32) == v1[40])
          {
            break;
          }

          v37 = v1[67];
          v38 = v1[57];
          v142 = v1[56];
          v1 = v1[55];
          v39 = sub_1D5615688();
          (*v138)(v37);
          v39(v139, 0);
          v32 = v141;
          sub_1D5615658();
          Playlist.Entry.internalItem.getter();
          sub_1D54ACBB0(v38, v142);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 1u:
              OUTLINED_FUNCTION_197_3();
              v1[10] = sub_1D560EEA8();
              v1[11] = MEMORY[0x1E69754B0];
              __swift_allocate_boxed_opaque_existential_0(v1 + 7);
              OUTLINED_FUNCTION_15_1();
              OUTLINED_FUNCTION_102();
              goto LABEL_23;
            case 2u:
              v1 = v140;
              v140[10] = v140[58];
              v140[11] = MEMORY[0x1E6976BB0];
              __swift_allocate_boxed_opaque_existential_0(v140 + 7);
              OUTLINED_FUNCTION_65();
LABEL_23:
              v45();
              goto LABEL_26;
            case 3u:
              v46 = OUTLINED_FUNCTION_197_3();
              v1[10] = type metadata accessor for TVEpisode(v46);
              v47 = sub_1D54B4BA4(&qword_1EDD54508, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
              v42 = OUTLINED_FUNCTION_392(v47);
              goto LABEL_25;
            case 4u:
              v43 = OUTLINED_FUNCTION_197_3();
              v1[10] = type metadata accessor for UploadedAudio(v43);
              v44 = sub_1D54B4BA4(&qword_1EDD57500, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
              v42 = OUTLINED_FUNCTION_392(v44);
              goto LABEL_25;
            case 5u:
              v48 = OUTLINED_FUNCTION_197_3();
              v1[10] = type metadata accessor for UploadedVideo(v48);
              v49 = sub_1D54B4BA4(&qword_1EDD57488, type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
              v42 = OUTLINED_FUNCTION_392(v49);
              goto LABEL_25;
            default:
              v40 = OUTLINED_FUNCTION_197_3();
              v1[10] = type metadata accessor for MusicMovie(v40);
              v41 = sub_1D54B4BA4(&qword_1EDD59308, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
              v42 = OUTLINED_FUNCTION_392(v41);
LABEL_25:
              sub_1D54B5AC0(v142, v42);
LABEL_26:
              OUTLINED_FUNCTION_344_1();
              sub_1D54B4B54();
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
              if (swift_dynamicCast())
              {
                v57 = v1[63];
                v143 = v1[64];
                v58 = v1[60];
                v59 = v1[58];
                v60 = v1[54];
                __swift_storeEnumTagSinglePayload(v60, 0, 1, v59);
                v61 = *v137;
                (*v137)(v58, v60, v59);
                v62 = OUTLINED_FUNCTION_70();
                v61(v62);
                v63 = OUTLINED_FUNCTION_410();
                v64(v63);
                v65 = (v57 + *(v135 + 20));
                *v65 = 0;
                v65[1] = 0xE000000000000000;
                OUTLINED_FUNCTION_37_48();
                sub_1D54B5AC0(v57, v143);
                v66 = v136;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  OUTLINED_FUNCTION_1_13();
                  sub_1D4F02EFC();
                  v66 = v71;
                }

                v68 = *(v66 + 16);
                v67 = *(v66 + 24);
                v32 = v141;
                if (v68 >= v67 >> 1)
                {
                  OUTLINED_FUNCTION_93_1(v67);
                  sub_1D4F02EFC();
                  v66 = v72;
                }

                *(v66 + 16) = v68 + 1;
                OUTLINED_FUNCTION_6_4();
                v136 = v66;
                OUTLINED_FUNCTION_37_48();
                sub_1D54B5AC0(v69, v70);
              }

              else
              {
                v50 = v1[58];
                v51 = v1[54];
                v52 = OUTLINED_FUNCTION_410();
                v53(v52);
                OUTLINED_FUNCTION_33();
                __swift_storeEnumTagSinglePayload(v54, v55, v56, v50);
                sub_1D54BE1FC(v51, &qword_1EC7EA978);
              }

              break;
          }
        }

        sub_1D54BE1FC(v1[69], &qword_1EC7ECEA0);
        v73 = OUTLINED_FUNCTION_159();
        v74(v73);
        v18 = sub_1D52B6630();
      }

      else
      {
      }

      v75 = v1[53];
      v76 = v1[49];
      v77 = v1[41];
      v78 = OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_seed;
      OUTLINED_FUNCTION_59(v77 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_seed, (v1 + 22));
      OUTLINED_FUNCTION_12_96();
      sub_1D54ACBB0(v77 + v78, v76);
      OUTLINED_FUNCTION_59(v77 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_offeredEntries, (v1 + 25));

      v79 = OUTLINED_FUNCTION_70();
      MusicSuggestedSongsRequest.init(seed:offeredEntries:selectedEntries:)(v79, v80, v18, v81);
      *v75 = 20;
      *(v75 + 8) = 0;
      if (qword_1EC7E90B0 != -1)
      {
        OUTLINED_FUNCTION_7_129(&qword_1EC7E90B0);
      }

      v82 = sub_1D560C758();
      OUTLINED_FUNCTION_62_4(v82, qword_1EC87C2D0);

      v83 = sub_1D560C738();
      v84 = sub_1D56156E8();

      if (os_log_type_enabled(v83, v84))
      {
        v85 = v1[52];
        v86 = v1[53];
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v145 = v88;
        *v87 = 136446466;
        v89 = MusicSuggestedSongsViewModel.description.getter(v88);
        v91 = sub_1D4E6835C(v89, v90, &v145);

        *(v87 + 4) = v91;
        *(v87 + 12) = 2082;
        OUTLINED_FUNCTION_59(v86, (v1 + 37));
        OUTLINED_FUNCTION_212_7();
        v92 = OUTLINED_FUNCTION_130();
        sub_1D54ACBB0(v92, v93);
        v94 = sub_1D5614DB8();
        sub_1D4E6835C(v94, v95, &v145);
        OUTLINED_FUNCTION_433();
        *(v87 + 14) = v85;
        OUTLINED_FUNCTION_240_2();
        _os_log_impl(v96, v97, v98, v99, v100, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_83();
        OUTLINED_FUNCTION_118();
      }

      v101 = v1[52];
      v102 = v1[53];
      v103 = v1[50];
      v104 = v1[47];
      v105 = v1[48];
      v106 = v1[46];
      v144 = v1[45];
      v107 = v1[41];

      sub_1D50174F4();

      OUTLINED_FUNCTION_59(v102, (v1 + 28));
      sub_1D54ACBB0(v102, v101);
      OUTLINED_FUNCTION_65();
      sub_1D54ACBB0(v108, v109);
      sub_1D560F0D8();
      _s8MusicKit0A7LibraryC0aB8InternalE6deviceACvgZ_0();
      v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6F08, &qword_1D5667988);
      OUTLINED_FUNCTION_2_19(v110);
      v111 = OUTLINED_FUNCTION_71();
      v113 = sub_1D547BB1C(v111, v112);
      OUTLINED_FUNCTION_25_63();
      sub_1D54B4B54();
      v114 = swift_task_alloc();
      *v114 = v103;
      v114[1] = &protocol witness table for MusicSuggestedSongsRequest;
      swift_getKeyPath();

      v115 = swift_task_alloc();
      *v115 = v103;
      v115[1] = &protocol witness table for MusicSuggestedSongsRequest;
      swift_getKeyPath();

      OUTLINED_FUNCTION_314_1();
      sub_1D560C8F8();

      sub_1D54AB950(v105);
      sub_1D54BE1FC(v105, &qword_1EC7F6EE8);
      v116 = OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_autoupdatingSuggestedSongsResponse;
      *(v107 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_autoupdatingSuggestedSongsResponse) = v113;
      swift_retain_n();

      OUTLINED_FUNCTION_12_24();
      OUTLINED_FUNCTION_54_0(v113 + *(v117 + 104), (v1 + 31));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6F10, &qword_1D56679E8);
      sub_1D560C8C8();
      swift_endAccess();

      OUTLINED_FUNCTION_40_13();
      swift_allocObject();
      swift_weakInit();
      OUTLINED_FUNCTION_37();
      sub_1D54BE3C4(v118, v119, v120, v121);
      v122 = sub_1D560C948();

      (*(v106 + 8))(v104, v144);
      *(v107 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_autoupdatingSuggestedSongsSubscription) = v122;

      v123 = *(v107 + v116);
      if (v123)
      {
        v124 = v1[44];
        OUTLINED_FUNCTION_357_1();
        OUTLINED_FUNCTION_54_0(v123 + *(v125 + 112), (v1 + 34));

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6F20, &unk_1D56679F0);
        sub_1D560C8C8();
        swift_endAccess();

        OUTLINED_FUNCTION_40_13();
        swift_allocObject();
        swift_weakInit();
        OUTLINED_FUNCTION_37();
        sub_1D54BE3C4(v126, v127, v128, v129);
        v130 = v124;
        sub_1D560C948();
        OUTLINED_FUNCTION_1_35();

        v131 = OUTLINED_FUNCTION_70();
        v132(v131);
      }

      else
      {

        v130 = 0;
      }

      *(v1[41] + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_autoupdatingStatusSubscription) = v130;

      OUTLINED_FUNCTION_25_63();
      sub_1D54B4B54();
    }

    else
    {
      if (qword_1EC7E90B0 != -1)
      {
        OUTLINED_FUNCTION_7_129(&qword_1EC7E90B0);
      }

      v12 = sub_1D560C758();
      OUTLINED_FUNCTION_62_4(v12, qword_1EC87C2D0);
      v13 = sub_1D560C738();
      v14 = sub_1D56156C8();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = OUTLINED_FUNCTION_63_12();
        OUTLINED_FUNCTION_86_10(v15);
        _os_log_impl(&dword_1D4E3F000, v13, v14, "Attempt to refresh suggested songs without Apple Music subscription.", v0, 2u);
        OUTLINED_FUNCTION_54();
      }

      sub_1D54A4A00(MEMORY[0x1E69E7CC0]);
    }
  }

  OUTLINED_FUNCTION_22_1();

  return v133();
}

uint64_t sub_1D54AB754(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6F38, &unk_1D5667A08);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for MusicSuggestedSongsResponse(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4F39AB0(a1, v5, &qword_1EC7F6F38, &unk_1D5667A08);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return sub_1D54BE1FC(v5, &qword_1EC7F6F38);
  }

  sub_1D54B5AC0(v5, v8);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D54ABA04();
  }

  return sub_1D54B4B54();
}

uint64_t sub_1D54AB8F0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D54AB950(a1);
  }

  return result;
}

uint64_t sub_1D54AB950(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_46_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_19_0();
  swift_storeEnumTagMultiPayload();
  v6 = sub_1D54759BC(a1, v1) & 1;
  v7 = OUTLINED_FUNCTION_93();
  sub_1D54BE1FC(v7, v8);
  result = sub_1D54A60B0();
  if (v6 != (result & 1))
  {
    return sub_1D54A6128(v6);
  }

  return result;
}

void sub_1D54ABA04()
{
  OUTLINED_FUNCTION_47();
  v3 = v0;
  v5 = v4;
  v6 = sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v75 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_59_0();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_2();
  v74 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F24F0, &unk_1D5648560);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_31();
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);
  OUTLINED_FUNCTION_4();
  v17 = v16;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_93_5();
  v19 = *(v0 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_refreshStatus);
  if (v19 == 2)
  {
    v58 = 0;
    goto LABEL_24;
  }

  if (v19 == 3)
  {
LABEL_21:
    sub_1D54A565C(0);
    v49 = OUTLINED_FUNCTION_233_4();
    (v1)(v49);
    OUTLINED_FUNCTION_163_0();
    sub_1D54BE3C4(v50, v51, v52, v53);
    v54 = sub_1D5614FB8();
    v55 = OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_additionalHiddenSuggestedSongs;
    OUTLINED_FUNCTION_21_42(v3 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_additionalHiddenSuggestedSongs, v80);
    *(v3 + v55) = v54;

    v56 = OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_selectedSongsForCurrentSession;
    OUTLINED_FUNCTION_21_42(v3 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_selectedSongsForCurrentSession, v78);
    v57 = MEMORY[0x1E69E7CC0];
    *(v3 + v56) = MEMORY[0x1E69E7CC0];

    sub_1D54A4A00(v57);
    goto LABEL_26;
  }

  if (v19 != 4)
  {
    v58 = 1;
LABEL_24:
    v59 = OUTLINED_FUNCTION_233_4();
    (v1)(v59);
    OUTLINED_FUNCTION_163_0();
    sub_1D54BE3C4(v60, v61, v62, v63);
    v64 = sub_1D5614FB8();
    v65 = OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_additionalHiddenSuggestedSongs;
    OUTLINED_FUNCTION_21_42(v3 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_additionalHiddenSuggestedSongs, v80);
    *(v3 + v65) = v64;

    v66 = OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_selectedSongsForCurrentSession;
    OUTLINED_FUNCTION_21_42(v3 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_selectedSongsForCurrentSession, v78);
    *(v3 + v66) = MEMORY[0x1E69E7CC0];

    if (v58)
    {
      sub_1D54A4A00(MEMORY[0x1E69E7CC0]);
    }

LABEL_26:
    sub_1D54AC1EC();
LABEL_28:
    (v1)(v2, v5, v76);
    v67 = OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_suggestedSongsForCurrentSession;
    OUTLINED_FUNCTION_54_0(v3 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_suggestedSongsForCurrentSession, v79);
    (*(v17 + 40))(v3 + v67, v2, v76);
    swift_endAccess();
    OUTLINED_FUNCTION_46();
    return;
  }

  v70 = v2;
  v20 = OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_additionalHiddenSuggestedSongs;
  OUTLINED_FUNCTION_21_42(v0 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_additionalHiddenSuggestedSongs, v80);
  v68 = v20;
  v77 = *(v0 + v20);

  v73 = v0;
  v2 = sub_1D54A52B8();
  v71 = v17;
  v69 = *(v17 + 16);
  v69(v1, v5, v76);
  v3 = *(v14 + 36);
  OUTLINED_FUNCTION_14_1();
  v17 = sub_1D54BE3C4(v21, v22, v23, v24);
  v72 = v5;
  sub_1D5615608();
  while (1)
  {
    sub_1D5615648();
    if (*(v1 + v3) == v79[0])
    {
      sub_1D54BE1FC(v1, &qword_1EC7F24F0);
      v3 = v73;
      *(v73 + v68) = v77;

      sub_1D54A4A00(v2);
      v5 = v72;
      v17 = v71;
      v2 = v70;
      v1 = v69;
      goto LABEL_28;
    }

    v25 = sub_1D5615688();
    (*(v75 + 16))(v74);
    v25(v79, 0);
    sub_1D5615658();
    v26 = (*(v75 + 32))(v11, v74, v6);
    MEMORY[0x1EEE9AC00](v26);
    OUTLINED_FUNCTION_396();
    v27 = v77;
    v29 = sub_1D54758D0(sub_1D54BE44C, v28, v77, MEMORY[0x1E6976BE8]);
    if ((v30 & 1) == 0)
    {
      break;
    }

LABEL_11:
    MEMORY[0x1EEE9AC00](v29);
    OUTLINED_FUNCTION_396();
    sub_1D54758D0(sub_1D54B5AA0, v37, v2, MEMORY[0x1E6976BE8]);
    if ((v38 & 1) == 0)
    {
      OUTLINED_FUNCTION_1_35();
      v5 = v76;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v1 & 0x8000000000000000) != 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        sub_1D54B464C(v2, v39, v40, v41);
        v2 = v48;
        if ((v1 & 0x8000000000000000) != 0)
        {
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }
      }

      if (v1 >= *(v2 + 16))
      {
        goto LABEL_31;
      }

      OUTLINED_FUNCTION_6_4();
      v43 = OUTLINED_FUNCTION_319_1(v2 + v42);
      v44(v43);
    }

    v45 = OUTLINED_FUNCTION_130();
    v46(v45);
  }

  OUTLINED_FUNCTION_82();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v1 & 0x8000000000000000) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_9;
  }

  sub_1D54B464C(v77, v31, v32, v33);
  v27 = v47;
  if ((v1 & 0x8000000000000000) == 0)
  {
LABEL_9:
    if (v1 >= *(v27 + 16))
    {
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_6_4();
    v77 = v27;
    v35 = OUTLINED_FUNCTION_319_1(v27 + v34);
    v29 = v36(v35);
    goto LABEL_11;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

uint64_t sub_1D54AC0B0()
{
  OUTLINED_FUNCTION_147();
  v0 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_59_0();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1D5613838();
  sub_1D560EC98();
  OUTLINED_FUNCTION_210();
  sub_1D560EC98();
  v8 = sub_1D560D528();
  v9 = *(v2 + 8);
  v9(v6, v0);
  v10 = OUTLINED_FUNCTION_215();
  (v9)(v10);
  return v8 & 1;
}

void sub_1D54AC1EC()
{
  OUTLINED_FUNCTION_47();
  v1 = sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_59_0();
  v42 = (v5 - v6);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  v10 = *(sub_1D54A52B8() + 16);

  if (!v10)
  {
    v11 = OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_additionalHiddenSuggestedSongs;
    v12 = OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_limit;
    OUTLINED_FUNCTION_59(v0 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_additionalHiddenSuggestedSongs, &v45);
    v38 = v12;
    OUTLINED_FUNCTION_59(v0 + v12, &v44);
    v40 = v3 + 8;
    v41 = v3 + 16;
    v33 = (v3 + 32);
    v34 = v11;
    v36 = v3;
    v37 = v1;
    v35 = v9;
    while (*(*(v0 + v11) + 16))
    {
      v13 = *(sub_1D54A52B8() + 16);

      if (v13 >= *(v0 + v38))
      {
        break;
      }

      OUTLINED_FUNCTION_54_0(v0 + v11, v43);
      v14 = *(v0 + v11);
      v15 = *(v14 + 16);
      if (!v15)
      {
        __break(1u);
        return;
      }

      v16 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v17 = *(v3 + 16);
      v17(v9, v14 + v16, v1);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + v11) = v14;
      if (!isUniquelyReferenced_nonNull_native || (v15 - 1) > *(v14 + 24) >> 1)
      {
        sub_1D4F0271C();
        v14 = v19;
        *(v0 + v11) = v19;
      }

      v39 = *(v3 + 8);
      v39(v14 + v16, v1);
      v20 = *(v3 + 72);
      if (v20 > 0 || v14 + v16 >= v14 + v16 + v20 + (*(v14 + 16) - 1) * v20)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v20)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      --*(v14 + 16);
      *(v0 + v11) = v14;
      swift_endAccess();
      v17(v42, v9, v1);
      swift_getKeyPath();
      swift_getKeyPath();
      v22 = sub_1D560C8E8();
      v24 = v23;
      v25 = *v23;
      v26 = swift_isUniquelyReferenced_nonNull_native();
      *v24 = v25;
      if ((v26 & 1) == 0)
      {
        OUTLINED_FUNCTION_1_13();
        sub_1D4F0271C();
        v25 = v30;
        *v24 = v30;
      }

      v28 = *(v25 + 16);
      v27 = *(v25 + 24);
      if (v28 >= v27 >> 1)
      {
        OUTLINED_FUNCTION_93_1(v27);
        sub_1D4F0271C();
        v25 = v31;
        *v24 = v31;
      }

      *(v25 + 16) = v28 + 1;
      v29 = v25 + v16 + v28 * v20;
      v3 = v36;
      v1 = v37;
      (*v33)(v29, v42, v37);
      v22(v43, 0);

      v9 = v35;
      sub_1D54A6C18(v35);
      v39(v9, v1);
      v11 = v34;
    }
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D54AC554(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - v4;
  v6 = *v1;
  if (!*(*v1 + 16))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1D4ECA4A0(*v1);
  v7 = sub_1D5613838();
  if (__swift_getEnumTagSinglePayload(v5, 1, v7) != 1)
  {
    (*(*(v7 - 8) + 32))(a1, v5, v7);
    if (*(v6 + 16))
    {
      sub_1D526D830();
      return;
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
}

void sub_1D54AC664()
{
  OUTLINED_FUNCTION_47();
  v2 = v0;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);
  OUTLINED_FUNCTION_4();
  v38 = v6;
  v39 = v5;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  v37 = v8;
  OUTLINED_FUNCTION_70_0();
  v9 = sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_59_0();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_245_3();
  v17 = OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_additionalHiddenSuggestedSongs;
  OUTLINED_FUNCTION_220_3(v2 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_additionalHiddenSuggestedSongs);
  if (!*(*(v2 + v17) + 16))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    OUTLINED_FUNCTION_64_29();
    v28 = sub_1D560C8E8();
    sub_1D525CD18();
    (*(v11 + 8))(v1, v9);
    v28(v40, 0);

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_54_0(v2 + v17, v40);
  sub_1D54AC554(v15);
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_65();
  v18 = sub_1D560C8E8();
  v20 = v19;
  v21 = *v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v20 = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D54B464C(v21, v23, v24, v25);
    v21 = v36;
    *v20 = v36;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v21 + 16) > v4)
  {
    OUTLINED_FUNCTION_43_3();
    (*(v11 + 24))(v21 + v26 + *(v11 + 72) * v27, v15, v9);
    v18(v40, 0);

    (*(v11 + 8))(v15, v9);
LABEL_8:
    v40[0] = sub_1D54A52B8();

    sub_1D4EF388C(v29);
    v30 = OUTLINED_FUNCTION_222();
    __swift_instantiateConcreteTypeFromMangledNameV2(v30, v31);
    OUTLINED_FUNCTION_72_29();
    sub_1D54BE3C4(v32, v33, &qword_1D5667838, v34);
    sub_1D560DAD8();
    v35 = OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_suggestedSongsForCurrentSession;
    OUTLINED_FUNCTION_54_0(v2 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_suggestedSongsForCurrentSession, v40);
    (*(v38 + 40))(v2 + v35, v37, v39);
    swift_endAccess();
    OUTLINED_FUNCTION_46();
    return;
  }

  __break(1u);
}

BOOL sub_1D54AC9EC(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 == 3)
  {
    if (a2 == 3)
    {
      return 1;
    }
  }

  else
  {
    if (a1 == 4)
    {
      return a2 == 4;
    }

    if (a2 - 3 >= 2)
    {
      if (a1 == 2)
      {
        if (a2 != 2)
        {
          return 0;
        }
      }

      else if (a2 == 2 || ((a2 ^ a1) & 1) != 0)
      {
        return 0;
      }

      return 1;
    }
  }

  return 0;
}

uint64_t sub_1D54ACA5C(uint64_t a1, char a2)
{
  if (a2 == 3)
  {
    v2 = 1;
  }

  else if (a2 == 4)
  {
    v2 = 2;
  }

  else
  {
    MEMORY[0x1DA6EC0D0](0);
    if (a2 == 2)
    {
      return sub_1D56162F8();
    }

    sub_1D56162F8();
    v2 = a2 & 1;
  }

  return MEMORY[0x1DA6EC0D0](v2);
}

uint64_t sub_1D54ACAD4(char a1)
{
  sub_1D56162D8();
  sub_1D54ACA5C(v3, a1);
  return sub_1D5616328();
}

uint64_t sub_1D54ACB44(uint64_t a1)
{
  v2 = *v1;
  sub_1D56162D8();
  sub_1D54ACA5C(v4, v2);
  return sub_1D5616328();
}

void *sub_1D54ACB88@<X0>(void *a1@<X8>)
{
  result = sub_1D54ACB1C();
  *a1 = result;
  return result;
}

uint64_t sub_1D54ACBB0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_147();
  v4(v3);
  OUTLINED_FUNCTION_14();
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return a2;
}

uint64_t sub_1D54ACC08@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MusicSuggestedSongsViewModel(0);
  result = sub_1D560C838();
  *a2 = result;
  return result;
}

uint64_t static MusicSuggestedSongsViewModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_id) == *(a2 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_id) && *(a1 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_id + 8) == *(a2 + OBJC_IVAR____TtC16MusicKitInternal28MusicSuggestedSongsViewModel_id + 8))
  {
    return 1;
  }

  else
  {
    return sub_1D5616168();
  }
}

uint64_t MusicSuggestedSongsViewModel.hashValue.getter()
{
  sub_1D56162D8();
  sub_1D5614E28();
  return sub_1D5616328();
}

uint64_t sub_1D54ACD50(uint64_t a1)
{
  sub_1D56162D8();
  MusicSuggestedSongsViewModel.hash(into:)(v2);
  return sub_1D5616328();
}

uint64_t MusicSuggestedSongsViewModel.description.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_109_17();
  sub_1D5615B68();
  OUTLINED_FUNCTION_33_3();
  MEMORY[0x1DA6EAC70](0xD00000000000001FLL);
  sub_1D5615D48();
  MEMORY[0x1DA6EAC70](62, 0xE100000000000000);
  return v2;
}

uint64_t sub_1D54ACE48(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1D56675F0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D54ACEAC(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for MusicItemCache.Key(0);
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6FD8, &unk_1D5667D80);
  result = sub_1D5615B18();
  v8 = result;
  if (!*(v6 + 16))
  {
LABEL_27:

    *v2 = v8;
    return result;
  }

  v31 = v1;
  v32 = v6;
  v9 = 0;
  v10 = (v6 + 56);
  v11 = 1 << *(v6 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v6 + 56);
  v14 = (v11 + 63) >> 6;
  v15 = result + 56;
  if (!v13)
  {
LABEL_7:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      sub_1D54ACE48(0, (v29 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_12:
    v19 = *(v6 + 48);
    v20 = *(v33 + 72);
    sub_1D54B5AC0(v19 + v20 * (v16 | (v9 << 6)), v5);
    sub_1D56162D8();
    sub_1D5614E28();
    sub_1D560D9A8();
    sub_1D54B4BA4(&qword_1EDD53C28, MEMORY[0x1E6974F80], MEMORY[0x1E6974F88]);
    sub_1D5614CB8();
    result = sub_1D5616328();
    v21 = -1 << *(v8 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = sub_1D54B5AC0(v5, *(v8 + 48) + v24 * v20);
    ++*(v8 + 16);
    v6 = v32;
    if (!v13)
    {
      goto LABEL_7;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v15 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1D54AD214(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6FD0, &qword_1D5667D78);
  result = sub_1D5615B18();
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
      sub_1D54ACE48(0, (v28 + 63) >> 6, v3 + 56);
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
    sub_1D56162D8();
    sub_1D5614E28();
    result = sub_1D5616328();
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

uint64_t sub_1D54AD470(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1D5610088();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v47 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v53 = &v43 - v7;
  v8 = type metadata accessor for MusicItemTypedIdentifier(0);
  v51 = *(v8 - 8);
  v52 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7250, &unk_1D56685C0);
  result = sub_1D5615B18();
  v13 = v11;
  v14 = result;
  if (!*(v11 + 16))
  {
LABEL_33:

    *v2 = v14;
    return result;
  }

  v15 = v4;
  v16 = 0;
  v17 = (v11 + 56);
  v18 = 1 << *(v11 + 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & *(v11 + 56);
  v21 = (v18 + 63) >> 6;
  v46 = (v15 + 32);
  v44 = v2;
  v45 = (v15 + 8);
  v22 = result + 56;
  v49 = v13;
  v50 = v3;
  v48 = result;
  if (!v20)
  {
LABEL_7:
    v24 = v16;
    while (1)
    {
      v16 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v16 >= v21)
      {
        break;
      }

      v25 = v17[v16];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v20 = (v25 - 1) & v25;
        goto LABEL_12;
      }
    }

    v42 = 1 << *(v13 + 32);
    if (v42 >= 64)
    {
      sub_1D54ACE48(0, (v42 + 63) >> 6, v17);
    }

    else
    {
      *v17 = -1 << v42;
    }

    v2 = v44;
    *(v13 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v23 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
LABEL_12:
    v26 = *(v13 + 48);
    v54 = *(v51 + 72);
    sub_1D54B5AC0(v26 + v54 * (v23 | (v16 << 6)), v10);
    sub_1D56162D8();
    sub_1D5614E28();
    v27 = *(v10 + 2);
    MEMORY[0x1DA6EC0D0](*(v27 + 16));
    v28 = *(v27 + 16);
    if (v28)
    {
      v29 = v27 + 40;
      do
      {

        sub_1D5614E28();

        v29 += 16;
        --v28;
      }

      while (v28);
    }

    v30 = v52;
    sub_1D560D9A8();
    sub_1D54B4BA4(&qword_1EDD53C28, MEMORY[0x1E6974F80], MEMORY[0x1E6974F88]);
    sub_1D5614CB8();
    v31 = v53;
    sub_1D4F39AB0(&v10[*(v30 + 28)], v53, &qword_1EC7EA358, &unk_1D561DF50);
    v32 = v50;
    if (__swift_getEnumTagSinglePayload(v31, 1, v50) == 1)
    {
      sub_1D56162F8();
    }

    else
    {
      v33 = v47;
      (*v46)(v47, v31, v32);
      sub_1D56162F8();
      sub_1D54B4BA4(&qword_1EDD53358, MEMORY[0x1E6975BC8], MEMORY[0x1E6975BD8]);
      sub_1D5614CB8();
      (*v45)(v33, v32);
    }

    v14 = v48;
    result = sub_1D5616328();
    v34 = -1 << *(v14 + 32);
    v35 = result & ~v34;
    v36 = v35 >> 6;
    if (((-1 << v35) & ~*(v22 + 8 * (v35 >> 6))) == 0)
    {
      break;
    }

    v37 = __clz(__rbit64((-1 << v35) & ~*(v22 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
    v13 = v49;
LABEL_27:
    *(v22 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
    result = sub_1D54B5AC0(v10, *(v14 + 48) + v37 * v54);
    ++*(v14 + 16);
    if (!v20)
    {
      goto LABEL_7;
    }
  }

  v38 = 0;
  v39 = (63 - v34) >> 6;
  v13 = v49;
  while (++v36 != v39 || (v38 & 1) == 0)
  {
    v40 = v36 == v39;
    if (v36 == v39)
    {
      v36 = 0;
    }

    v38 |= v40;
    v41 = *(v22 + 8 * v36);
    if (v41 != -1)
    {
      v37 = __clz(__rbit64(~v41)) + (v36 << 6);
      goto LABEL_27;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1D54AD9FC(uint64_t a1)
{
  v2 = v1;
  v36 = sub_1D560D838();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7248, &qword_1D56685B8);
  result = sub_1D5615B18();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_1D54ACE48(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_1D54B4BA4(&qword_1EDD53DC0, MEMORY[0x1E6974F58], MEMORY[0x1E6974F68]);
    result = sub_1D5614CA8();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_1D54ADD54()
{
  OUTLINED_FUNCTION_30_14();
  OUTLINED_FUNCTION_112_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDED8, &qword_1D5628A58);
  OUTLINED_FUNCTION_63_1();
  sub_1D5615B18();
  OUTLINED_FUNCTION_404();
  if (!v5)
  {
LABEL_23:

    *v0 = v2;
    OUTLINED_FUNCTION_31_19();
    return;
  }

  v19 = v0;
  v6 = 0;
  OUTLINED_FUNCTION_417();
  OUTLINED_FUNCTION_88_19();
  if (!v0)
  {
LABEL_4:
    v8 = v6;
    while (1)
    {
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v6 >= v4)
      {
        break;
      }

      ++v8;
      if (v3[v6])
      {
        OUTLINED_FUNCTION_113_2();
        v0 = (v10 & v9);
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_246_3();
    if (v17 >= 64)
    {
      OUTLINED_FUNCTION_307_1(v17);
    }

    else
    {
      OUTLINED_FUNCTION_168_5();
      *v3 = v18;
    }

    v0 = v19;
    *(v1 + 16) = 0;
    goto LABEL_23;
  }

  while (1)
  {
    OUTLINED_FUNCTION_250_2();
LABEL_9:
    v11 = *(*(v1 + 48) + 8 * (v7 | (v6 << 6)));
    OUTLINED_FUNCTION_436();
    MEMORY[0x1DA6EC0D0](v11);
    sub_1D5616328();
    OUTLINED_FUNCTION_127_11();
    if (v12)
    {
      break;
    }

    OUTLINED_FUNCTION_173_5();
LABEL_17:
    OUTLINED_FUNCTION_110_14(v13);
    *(v16 + 8 * v15) = v11;
    OUTLINED_FUNCTION_253_2();
    if (!v0)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_266_0();
  while (1)
  {
    OUTLINED_FUNCTION_418();
    if (v12)
    {
      if (v14)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_342_1();
    if (!v12)
    {
      OUTLINED_FUNCTION_171_7();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

void sub_1D54ADEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_30_14();
  OUTLINED_FUNCTION_112_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDED0, &qword_1D5628A50);
  OUTLINED_FUNCTION_63_1();
  sub_1D5615B18();
  OUTLINED_FUNCTION_404();
  if (!v34)
  {
LABEL_28:

    *v30 = v32;
    OUTLINED_FUNCTION_31_19();
    return;
  }

  v55 = v30;
  v35 = 0;
  OUTLINED_FUNCTION_417();
  v37 = 1 << *(v33 - 24);
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  else
  {
    v38 = -1;
  }

  v39 = v38 & v36;
  v40 = (v37 + 63) >> 6;
  v41 = v32 + 56;
  if ((v38 & v36) == 0)
  {
LABEL_7:
    v43 = v35;
    while (1)
    {
      v35 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v35 >= v40)
      {
        break;
      }

      ++v43;
      if (v33[v35])
      {
        OUTLINED_FUNCTION_113_2();
        v39 = v45 & v44;
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_246_3();
    if (v53 >= 64)
    {
      OUTLINED_FUNCTION_307_1(v53);
    }

    else
    {
      OUTLINED_FUNCTION_168_5();
      *v33 = v54;
    }

    v30 = v55;
    *(v31 + 16) = 0;
    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_194();
LABEL_12:
    v46 = *(*(v31 + 48) + 8 * (v42 | (v35 << 6)));
    OUTLINED_FUNCTION_436();
    sub_1D5614E28();
    v47 = sub_1D5616328() & ~(-1 << *(v32 + 32));
    if (((-1 << v47) & ~*(v41 + 8 * (v47 >> 6))) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_173_5();
LABEL_22:
    *(v41 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
    *(*(v32 + 48) + 8 * v48) = v46;
    OUTLINED_FUNCTION_253_2();
    if (!v39)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_266_0();
  while (1)
  {
    OUTLINED_FUNCTION_418();
    if (v52)
    {
      if (v50)
      {
        break;
      }
    }

    if (v49 == v51)
    {
      v49 = 0;
    }

    if (*(v41 + 8 * v49) != -1)
    {
      OUTLINED_FUNCTION_171_7();
      goto LABEL_22;
    }
  }

LABEL_30:
  __break(1u);
}

uint64_t sub_1D54AE054(uint64_t a1)
{
  v2 = v1;
  v3 = _s15PersistentEntryVMa(0);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7240, &qword_1D56685B0);
  result = sub_1D5615B18();
  v8 = result;
  if (!*(v6 + 16))
  {
LABEL_27:

    *v2 = v8;
    return result;
  }

  v29 = v1;
  v30 = v6;
  v9 = 0;
  v10 = (v6 + 56);
  v11 = 1 << *(v6 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v6 + 56);
  v14 = (v11 + 63) >> 6;
  v15 = result + 56;
  if (!v13)
  {
LABEL_7:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v6 + 32);
    if (v28 >= 64)
    {
      sub_1D54ACE48(0, (v28 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v28;
    }

    v2 = v29;
    *(v6 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_12:
    v19 = *(v6 + 48);
    v33 = *(v31 + 72);
    sub_1D54B5AC0(v19 + v33 * (v16 | (v9 << 6)), v5);
    sub_1D56162D8();
    sub_1D560D838();
    sub_1D54B4BA4(&qword_1EDD53DC0, MEMORY[0x1E6974F58], MEMORY[0x1E6974F68]);
    sub_1D5614CB8();
    sub_1D560D9A8();
    sub_1D54B4BA4(&qword_1EDD53C28, MEMORY[0x1E6974F80], MEMORY[0x1E6974F88]);
    sub_1D5614CB8();
    sub_1D560C328();
    sub_1D54B4BA4(&qword_1EDD5CF60, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1D5614CB8();
    result = sub_1D5616328();
    v20 = -1 << *(v8 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = sub_1D54B5AC0(v5, *(v8 + 48) + v23 * v33);
    ++*(v8 + 16);
    v6 = v30;
    if (!v13)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v15 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_1D54AE464()
{
  OUTLINED_FUNCTION_30_14();
  OUTLINED_FUNCTION_112_15();
  v7 = OUTLINED_FUNCTION_313_1(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_63_1();
  sub_1D5615B18();
  OUTLINED_FUNCTION_404();
  if (!v9)
  {
LABEL_23:

    *v0 = v2;
    OUTLINED_FUNCTION_31_19();
    return;
  }

  v23 = v0;
  v10 = 0;
  OUTLINED_FUNCTION_417();
  OUTLINED_FUNCTION_88_19();
  if (!v0)
  {
LABEL_4:
    v12 = v10;
    while (1)
    {
      v10 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v10 >= v4)
      {
        break;
      }

      ++v12;
      if (v3[v10])
      {
        OUTLINED_FUNCTION_113_2();
        v0 = (v14 & v13);
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_246_3();
    if (v21 >= 64)
    {
      OUTLINED_FUNCTION_307_1(v21);
    }

    else
    {
      OUTLINED_FUNCTION_168_5();
      *v3 = v22;
    }

    v0 = v23;
    *(v1 + 16) = 0;
    goto LABEL_23;
  }

  while (1)
  {
    OUTLINED_FUNCTION_250_2();
LABEL_9:
    v15 = *(*(v1 + 48) + (v11 | (v10 << 6)));
    OUTLINED_FUNCTION_436();
    MEMORY[0x1DA6EC0D0](v15);
    sub_1D5616328();
    OUTLINED_FUNCTION_127_11();
    if (v16)
    {
      break;
    }

    OUTLINED_FUNCTION_173_5();
LABEL_17:
    OUTLINED_FUNCTION_110_14(v17);
    *(v20 + v19) = v15;
    OUTLINED_FUNCTION_253_2();
    if (!v0)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_266_0();
  while (1)
  {
    OUTLINED_FUNCTION_418();
    if (v16)
    {
      if (v18)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_342_1();
    if (!v16)
    {
      OUTLINED_FUNCTION_171_7();
      goto LABEL_17;
    }
  }

LABEL_25:
  __break(1u);
}

uint64_t sub_1D54AE5A8(uint64_t a1)
{
  v2 = v1;
  v39 = _s13PersistedDateVMa(0);
  MEMORY[0x1EEE9AC00](v39);
  v35 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB470, &qword_1D561F3D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v40 = &v34 - v5;
  v6 = _s10DescriptorVMa(0);
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F71D8, &qword_1D5668458);
  result = sub_1D5615B18();
  v11 = result;
  if (!*(v9 + 16))
  {
LABEL_30:

    *v2 = v11;
    return result;
  }

  v34 = v2;
  v12 = 0;
  v13 = (v9 + 56);
  v14 = 1 << *(v9 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(v9 + 56);
  v17 = (v14 + 63) >> 6;
  v18 = result + 56;
  v36 = result;
  if (!v16)
  {
LABEL_7:
    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v21 = v13[v12];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v42 = (v21 - 1) & v21;
        goto LABEL_12;
      }
    }

    v33 = 1 << *(v9 + 32);
    if (v33 >= 64)
    {
      sub_1D54ACE48(0, (v33 + 63) >> 6, v13);
    }

    else
    {
      *v13 = -1 << v33;
    }

    v2 = v34;
    *(v9 + 16) = 0;
    goto LABEL_30;
  }

  while (1)
  {
    v19 = __clz(__rbit64(v16));
    v42 = (v16 - 1) & v16;
LABEL_12:
    v22 = *(v9 + 48);
    v41 = *(v37 + 72);
    sub_1D54B5AC0(v22 + v41 * (v19 | (v12 << 6)), v8);
    sub_1D56162D8();
    sub_1D5614E28();
    v23 = v38;
    sub_1D560C328();
    sub_1D54B4BA4(&qword_1EDD5CF60, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1D5614CB8();
    sub_1D56162F8();
    MEMORY[0x1DA6EC0D0](*&v8[v23[7]]);
    MEMORY[0x1DA6EC0D0](*&v8[v23[8]]);
    sub_1D5614CB8();
    v24 = v40;
    sub_1D4F39AB0(&v8[v23[10]], v40, &qword_1EC7EB470, &qword_1D561F3D0);
    if (__swift_getEnumTagSinglePayload(v24, 1, v39) == 1)
    {
      sub_1D56162F8();
    }

    else
    {
      sub_1D54B5AC0(v40, v35);
      sub_1D56162F8();
      sub_1D5614CB8();
      sub_1D54B4B54();
    }

    result = sub_1D5616328();
    v11 = v36;
    v25 = -1 << *(v36 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v18 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = sub_1D54B5AC0(v8, *(v11 + 48) + v28 * v41);
    ++*(v11 + 16);
    v16 = v42;
    if (!v42)
    {
      goto LABEL_7;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v18 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_24;
    }
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D54AEAC0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F71C8, &unk_1D5668440);
  result = sub_1D5615B18();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_30:

    *v2 = v5;
    return result;
  }

  v29 = v3;
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
        goto LABEL_32;
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
      sub_1D54ACE48(0, (v28 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_30;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    sub_1D56162D8();
    MEMORY[0x1DA6EC0D0](*(v16 + 16));
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = (v16 + 32);
      do
      {
        v19 = *v18++;
        MEMORY[0x1DA6EC0D0](v19);
        --v17;
      }

      while (v17);
    }

    result = sub_1D5616328();
    v20 = -1 << *(v5 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    v3 = v29;
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v5 + 48) + 8 * v23) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v12 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_24;
    }
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D54AED34(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for MusicSuggestedSongsEntry(0);
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6F30, &qword_1D5667A00);
  result = sub_1D5615B18();
  v8 = result;
  if (!*(v6 + 16))
  {
LABEL_27:

    *v2 = v8;
    return result;
  }

  v31 = v1;
  v32 = v6;
  v9 = 0;
  v10 = (v6 + 56);
  v11 = 1 << *(v6 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v6 + 56);
  v14 = (v11 + 63) >> 6;
  v15 = result + 56;
  if (!v13)
  {
LABEL_7:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      sub_1D54ACE48(0, (v29 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_12:
    v19 = *(v6 + 48);
    v20 = *(v33 + 72);
    sub_1D54B5AC0(v19 + v20 * (v16 | (v9 << 6)), v5);
    sub_1D56162D8();
    sub_1D5613838();
    sub_1D54B4BA4(&qword_1EC7EB458, MEMORY[0x1E6976BE8], MEMORY[0x1E6976BF8]);
    sub_1D5614CB8();
    sub_1D5614E28();
    result = sub_1D5616328();
    v21 = -1 << *(v8 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = sub_1D54B5AC0(v5, *(v8 + 48) + v24 * v20);
    ++*(v8 + 16);
    v6 = v32;
    if (!v13)
    {
      goto LABEL_7;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v15 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1D54AF0A0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F71B0, &qword_1D56683E8);
  result = sub_1D5615B18();
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

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_1D54ACE48(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
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
    v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
    sub_1D56162D8();
    sub_1D5614E28();

    result = sub_1D5616328();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_1D54AF324()
{
  OUTLINED_FUNCTION_47();
  v4 = v3;
  v6 = v5;
  v28 = v7;
  type metadata accessor for MusicItemCache.Key(0);
  OUTLINED_FUNCTION_4();
  v27 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_93_5();
  OUTLINED_FUNCTION_81_27();
  if (!v21 & v12 && (v4 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (v4)
  {
    sub_1D54ACEAC(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1D54B0EF4();
      goto LABEL_18;
    }

    sub_1D54B2160(v10 + 1);
  }

  OUTLINED_FUNCTION_381();
  v13 = *v28;
  v14 = v28[1];
  OUTLINED_FUNCTION_314_1();
  sub_1D5614E28();
  v6 = sub_1D560D9A8();
  OUTLINED_FUNCTION_210_6();
  sub_1D54B4BA4(v15, v16, MEMORY[0x1E6974F88]);
  OUTLINED_FUNCTION_284_1();
  sub_1D5614CB8();
  sub_1D5616328();
  OUTLINED_FUNCTION_168_5();
  OUTLINED_FUNCTION_341_1();
  if ((*(v2 + 56 + v18) >> v6))
  {
    v19 = ~v17;
    v20 = *(v27 + 72);
    do
    {
      sub_1D54ACBB0(*(v2 + 48) + v20 * v6, v1);
      v21 = *v1 == v13 && v1[1] == v14;
      if (v21 || (sub_1D5616168()) && (sub_1D560D8C8())
      {
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_237_1();
      v6 = (v6 + 1) & v19;
      OUTLINED_FUNCTION_351_1();
    }

    while (((v22 >> v6) & 1) != 0);
  }

LABEL_18:
  v23 = *v0;
  OUTLINED_FUNCTION_159_11(*v0 + 8 * (v6 >> 6));
  sub_1D54B5AC0(v28, *(v23 + 48) + *(v27 + 72) * v6);
  v24 = *(v23 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v23 + 16) = v26;
    OUTLINED_FUNCTION_46();
    return;
  }

  __break(1u);
LABEL_21:
  OUTLINED_FUNCTION_237_1();
  sub_1D5616228();
  __break(1u);
}

void sub_1D54AF56C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_81_27();
  if (!(!v23 & v10) || (v7 & 1) == 0)
  {
    if (v7)
    {
      sub_1D54AD214(v8 + 1);
      goto LABEL_11;
    }

    if (v9 <= v8)
    {
      sub_1D54B2498(v8 + 1);
LABEL_11:
      v17 = *v3;
      sub_1D56162D8();
      OUTLINED_FUNCTION_2_59();
      sub_1D5614E28();
      sub_1D5616328();
      OUTLINED_FUNCTION_168_5();
      v20 = ~v19;
      while (1)
      {
        a3 = v18 & v20;
        OUTLINED_FUNCTION_351_1();
        if (((v21 >> a3) & 1) == 0)
        {
          goto LABEL_8;
        }

        v22 = (*(v17 + 48) + 16 * a3);
        v23 = *v22 == a1 && v22[1] == a2;
        if (v23 || (sub_1D5616168() & 1) != 0)
        {
          goto LABEL_20;
        }

        v18 = a3 + 1;
      }
    }

    sub_1D54B10FC();
  }

LABEL_8:
  OUTLINED_FUNCTION_107_14();
  v13 = (v12 + 16 * a3);
  *v13 = a1;
  v13[1] = a2;
  v14 = *(v11 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_20:
    sub_1D5616228();
    __break(1u);
  }

  else
  {
    *(v11 + 16) = v16;
  }
}

void sub_1D54AF6B4()
{
  OUTLINED_FUNCTION_47();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_64_1();
  v7 = sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  OUTLINED_FUNCTION_22(v14);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_3();
  v59 = v16;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB208, &qword_1D562F5E0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_3();
  v62 = v18;
  v19 = OUTLINED_FUNCTION_70_0();
  v64 = type metadata accessor for MusicItemTypedIdentifier(v19);
  OUTLINED_FUNCTION_4();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_93_5();
  OUTLINED_FUNCTION_81_27();
  v60 = v21;
  v61 = v1;
  if (!v35 & v25 && (v4 & 1) != 0)
  {
LABEL_42:
    v26 = v0;
    goto LABEL_43;
  }

  if (v4)
  {
    sub_1D54AD470(v23 + 1);
    goto LABEL_9;
  }

  if (v24 <= v23)
  {
    sub_1D54B26CC(v23 + 1);
LABEL_9:
    v27 = *v1;
    sub_1D56162D8();
    MusicItemTypedIdentifier.hash(into:)(v67);
    v1 = v67;
    sub_1D5616328();
    OUTLINED_FUNCTION_168_5();
    v6 = v29 & ~v28;
    v66 = v30;
    if ((*(v30 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v53 = v13;
      v58 = v7;
      v65 = ~v28;
      v31 = v9;
      v33 = *v0;
      v32 = v0[1];
      v26 = v0;
      v52 = (v31 + 32);
      v34 = *(v21 + 72);
      v57 = v27;
      v55 = (v31 + 8);
      v56 = v34;
      while (1)
      {
        sub_1D54ACBB0(*(v27 + 48) + v34 * v6, v2);
        v35 = *v2 == v33 && v2[1] == v32;
        if (v35 || (sub_1D5616168() & 1) != 0)
        {
          v36 = v2[2];
          v37 = *(v26 + 16);
          v1 = *(v36 + 16);
          if (v1 == *(v37 + 16))
          {
            if (v1)
            {
              v38 = v36 == v37;
            }

            else
            {
              v38 = 1;
            }

            if (!v38)
            {
              v39 = (v36 + 40);
              v40 = (v37 + 40);
              while (v1)
              {
                v41 = *(v39 - 1) == *(v40 - 1) && *v39 == *v40;
                if (!v41 && (sub_1D5616168() & 1) == 0)
                {
                  goto LABEL_40;
                }

                v39 += 2;
                v40 += 2;
                v1 = (v1 - 1);
                if (!v1)
                {
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_46:
              __break(1u);
LABEL_47:
              sub_1D54BE1FC(v1, &qword_1EC7EA358);
LABEL_48:
              OUTLINED_FUNCTION_236_1();
              sub_1D5616228();
              __break(1u);
              return;
            }

LABEL_29:
            if (sub_1D560D8C8())
            {
              v42 = *(v64 + 28);
              v43 = *(v63 + 48);
              sub_1D4F39AB0(v2 + v42, v62, &qword_1EC7EA358, &unk_1D561DF50);
              v44 = v26 + v42;
              v1 = v62;
              sub_1D4F39AB0(v44, v62 + v43, &qword_1EC7EA358, &unk_1D561DF50);
              OUTLINED_FUNCTION_57(v62, 1, v58);
              if (v35)
              {
                OUTLINED_FUNCTION_57(v62 + v43, 1, v58);
                v34 = v56;
                v27 = v57;
                if (v35)
                {
                  goto LABEL_47;
                }

                goto LABEL_38;
              }

              sub_1D4F39AB0(v62, v59, &qword_1EC7EA358, &unk_1D561DF50);
              OUTLINED_FUNCTION_57(v62 + v43, 1, v58);
              if (v45)
              {
                (*v55)(v59, v58);
                v1 = v62;
                v34 = v56;
                v27 = v57;
LABEL_38:
                sub_1D54BE1FC(v1, &qword_1EC7EB208);
                goto LABEL_40;
              }

              (*v52)(v53, v62 + v43, v58);
              sub_1D54B4BA4(&qword_1EDD53350, MEMORY[0x1E6975BC8], MEMORY[0x1E6975BE0]);
              OUTLINED_FUNCTION_74_0();
              v54 = sub_1D5614D18();
              v1 = v55;
              v46 = *v55;
              v47 = OUTLINED_FUNCTION_215();
              (v46)(v47);
              v46(v59, v58);
              sub_1D54BE1FC(v62, &qword_1EC7EA358);
              v34 = v56;
              v27 = v57;
              if (v54)
              {
                goto LABEL_48;
              }
            }
          }
        }

LABEL_40:
        OUTLINED_FUNCTION_236_1();
        v6 = (v6 + 1) & v65;
        if (((*(v66 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
        {
          goto LABEL_43;
        }
      }
    }

    goto LABEL_42;
  }

  v26 = v0;
  sub_1D54B1254();
LABEL_43:
  v48 = *v61;
  OUTLINED_FUNCTION_159_11(*v61 + 8 * (v6 >> 6));
  sub_1D54B5AC0(v26, *(v48 + 48) + *(v60 + 72) * v6);
  v49 = *(v48 + 16);
  v50 = __OFADD__(v49, 1);
  v51 = v49 + 1;
  if (v50)
  {
    goto LABEL_46;
  }

  *(v48 + 16) = v51;
  OUTLINED_FUNCTION_46();
}

void sub_1D54AFC3C()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v4 = v3;
  v32 = v5;
  v6 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_81_27();
  if (!(!v16 & v15) || (v2 & 1) == 0)
  {
    if (v2)
    {
      sub_1D54AD9FC(v13 + 1);
      goto LABEL_9;
    }

    if (v14 <= v13)
    {
      sub_1D54B2C1C(v13 + 1);
LABEL_9:
      v31 = v0;
      v17 = *v0;
      OUTLINED_FUNCTION_79_23();
      sub_1D54B4BA4(v18, v19, MEMORY[0x1E6974F68]);
      sub_1D5614CA8();
      OUTLINED_FUNCTION_168_5();
      v22 = ~v21;
      while (1)
      {
        v4 = v20 & v22;
        if (((*(v17 + 56 + (((v20 & v22) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v20 & v22)) & 1) == 0)
        {
          break;
        }

        (*(v8 + 16))(v12, *(v17 + 48) + *(v8 + 72) * v4, v6);
        OUTLINED_FUNCTION_79_23();
        sub_1D54B4BA4(&qword_1EDD53DB8, v23, MEMORY[0x1E6974F70]);
        v24 = sub_1D5614D18();
        v25 = OUTLINED_FUNCTION_93();
        v26(v25);
        if (v24)
        {
          goto LABEL_17;
        }

        v20 = v4 + 1;
      }

      v0 = v31;
      goto LABEL_14;
    }

    sub_1D54B145C();
  }

LABEL_14:
  v27 = *v0;
  OUTLINED_FUNCTION_159_11(*v0 + 8 * (v4 >> 6));
  (*(v8 + 32))(*(v27 + 48) + *(v8 + 72) * v4, v32, v6);
  v28 = *(v27 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (v29)
  {
    __break(1u);
LABEL_17:
    sub_1D5616228();
    __break(1u);
  }

  else
  {
    *(v27 + 16) = v30;
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D54AFE6C()
{
  OUTLINED_FUNCTION_411();
  OUTLINED_FUNCTION_81_27();
  if (!(!v6 & v5) || (v2 & 1) == 0)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_268_3(v3);
      sub_1D54ADD54();
      goto LABEL_11;
    }

    if (v4 <= v3)
    {
      v10 = OUTLINED_FUNCTION_268_3(v3);
      sub_1D54B2F34(v10);
LABEL_11:
      v11 = *v1;
      sub_1D56162D8();
      MEMORY[0x1DA6EC0D0](v0);
      sub_1D5616328();
      OUTLINED_FUNCTION_168_5();
      v14 = ~v13;
      while (1)
      {
        v15 = v12 & v14;
        OUTLINED_FUNCTION_351_1();
        if (((v16 >> v15) & 1) == 0)
        {
          goto LABEL_8;
        }

        _s11TransactionCMa();
        if (*(*(v11 + 48) + 8 * v15) == v0)
        {
          goto LABEL_16;
        }

        v12 = v15 + 1;
      }
    }

    sub_1D54B16A4(&qword_1EC7EDED8, &qword_1D5628A58);
  }

LABEL_8:
  OUTLINED_FUNCTION_70_26();
  if (v9)
  {
    __break(1u);
LABEL_16:
    sub_1D5616228();
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v8;
  }
}

void sub_1D54B0098()
{
  OUTLINED_FUNCTION_47();
  v4 = v3;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_64_1();
  _s15PersistentEntryVMa(v7);
  OUTLINED_FUNCTION_4();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_93_5();
  OUTLINED_FUNCTION_81_27();
  v29 = v9;
  v30 = v1;
  if (!(!v14 & v13) || (v4 & 1) == 0)
  {
    if (v4)
    {
      sub_1D54AE054(v11 + 1);
    }

    else
    {
      if (v12 > v11)
      {
        sub_1D54B17A8();
        goto LABEL_17;
      }

      sub_1D54B3388(v11 + 1);
    }

    v15 = *v1;
    sub_1D56162D8();
    sub_1D560D838();
    OUTLINED_FUNCTION_79_23();
    sub_1D54B4BA4(v16, v17, MEMORY[0x1E6974F68]);
    OUTLINED_FUNCTION_284_1();
    sub_1D5614CB8();
    sub_1D560D9A8();
    OUTLINED_FUNCTION_210_6();
    sub_1D54B4BA4(v18, v19, MEMORY[0x1E6974F88]);
    OUTLINED_FUNCTION_284_1();
    sub_1D5614CB8();
    v6 = sub_1D560C328();
    sub_1D54B4BA4(&qword_1EDD5CF60, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    OUTLINED_FUNCTION_284_1();
    sub_1D5614CB8();
    sub_1D5616328();
    OUTLINED_FUNCTION_168_5();
    OUTLINED_FUNCTION_341_1();
    if ((*(v15 + 56 + v21) >> v6))
    {
      v22 = ~v20;
      v23 = *(v9 + 72);
      do
      {
        sub_1D54ACBB0(*(v15 + 48) + v23 * v6, v2);
        if (sub_1D560D6E8() & 1) != 0 && (sub_1D560D8C8())
        {
          v24 = sub_1D560C2E8();
          OUTLINED_FUNCTION_239_4();
          if (v24)
          {
            goto LABEL_20;
          }
        }

        else
        {
          OUTLINED_FUNCTION_239_4();
        }

        v6 = (v6 + 1) & v22;
      }

      while (((*(v15 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }
  }

LABEL_17:
  v25 = *v30;
  OUTLINED_FUNCTION_159_11(*v30 + 8 * (v6 >> 6));
  sub_1D54B5AC0(v0, *(v25 + 48) + *(v29 + 72) * v6);
  v26 = *(v25 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
LABEL_20:
    sub_1D5616228();
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v28;
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D54B03B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a1;
  OUTLINED_FUNCTION_81_27();
  if (!(!v15 & v14) || (v9 & 1) == 0)
  {
    if (v9)
    {
      OUTLINED_FUNCTION_268_3(v12);
      sub_1D54AE464();
      goto LABEL_11;
    }

    if (v13 <= v12)
    {
      OUTLINED_FUNCTION_268_3(v12);
      sub_1D54B376C();
LABEL_11:
      v21 = *v6;
      sub_1D56162D8();
      MEMORY[0x1DA6EC0D0](v8);
      v22 = sub_1D5616328();
      v23 = ~(-1 << *(v21 + 32));
      while (1)
      {
        a2 = v22 & v23;
        if (((*(v21 + 56 + (((v22 & v23) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v22 & v23)) & 1) == 0)
        {
          goto LABEL_8;
        }

        if (*(*(v21 + 48) + a2) == v8)
        {
          goto LABEL_16;
        }

        v22 = a2 + 1;
      }
    }

    sub_1D54B19B0(v10, v11);
  }

LABEL_8:
  OUTLINED_FUNCTION_107_14();
  *(v17 + a2) = v8;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    sub_1D5616228();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }
}

void sub_1D54B0500()
{
  OUTLINED_FUNCTION_47();
  v4 = v3;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_64_1();
  v8 = _s13PersistedDateVMa(v7);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB470, &qword_1D561F3D0);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB478, &unk_1D5623530);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_3();
  v47 = v19;
  v20 = OUTLINED_FUNCTION_70_0();
  v21 = _s10DescriptorVMa(v20);
  OUTLINED_FUNCTION_4();
  v48 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_150_1();
  OUTLINED_FUNCTION_81_27();
  v46 = v1;
  if (!(!v33 & v26) || (v4 & 1) == 0)
  {
    if (v4)
    {
      v42 = v17;
      v45 = v16;
      sub_1D54AE5A8(v24 + 1);
    }

    else
    {
      if (v25 > v24)
      {
        sub_1D54B1AC0();
        goto LABEL_32;
      }

      v42 = v17;
      v45 = v16;
      sub_1D54B38A0(v24 + 1);
    }

    OUTLINED_FUNCTION_381();
    sub_1D52D50B4(&v49);
    sub_1D5616328();
    OUTLINED_FUNCTION_168_5();
    v6 = v28 & ~v27;
    if ((*(v17 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v41 = v12;
      v44 = v8;
      v29 = ~v27;
      v30 = *v0;
      v31 = v0[1];
      v32 = *(v48 + 72);
      while (1)
      {
        sub_1D54ACBB0(*(v17 + 48) + v32 * v6, v2);
        v33 = *v2 == v30 && v2[1] == v31;
        if (!v33 && (sub_1D5616168() & 1) == 0 || (sub_1D560C2E8() & 1) == 0 || *(v2 + v21[6]) != *(v0 + v21[6]) || *(v2 + v21[7]) != *(v0 + v21[7]) || *(v2 + v21[8]) != *(v0 + v21[8]) || (sub_1D560C2E8() & 1) == 0)
        {
          goto LABEL_31;
        }

        v40 = v21[10];
        v43 = *(v42 + 48);
        sub_1D4F39AB0(v2 + v40, v47, &qword_1EC7EB470, &qword_1D561F3D0);
        sub_1D4F39AB0(v0 + v40, v47 + v43, &qword_1EC7EB470, &qword_1D561F3D0);
        OUTLINED_FUNCTION_57(v47, 1, v44);
        if (v33)
        {
          break;
        }

        sub_1D4F39AB0(v47, v45, &qword_1EC7EB470, &qword_1D561F3D0);
        OUTLINED_FUNCTION_57(v47 + v43, 1, v44);
        if (v34)
        {
          OUTLINED_FUNCTION_217_5();
          sub_1D54B4B54();
LABEL_29:
          sub_1D54BE1FC(v47, &qword_1EC7EB478);
          goto LABEL_31;
        }

        sub_1D54B5AC0(v47 + v43, v41);
        LODWORD(v43) = sub_1D560C2E8();
        OUTLINED_FUNCTION_217_5();
        v40 = v35;
        sub_1D54B4B54();
        sub_1D54B4B54();
        sub_1D54BE1FC(v47, &qword_1EC7EB470);
        if (v43)
        {
          goto LABEL_36;
        }

LABEL_31:
        OUTLINED_FUNCTION_238_3();
        v6 = (v6 + 1) & v29;
        if (((*(v17 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      OUTLINED_FUNCTION_57(v47 + v43, 1, v44);
      if (v33)
      {
        goto LABEL_35;
      }

      goto LABEL_29;
    }
  }

LABEL_32:
  v36 = *v46;
  OUTLINED_FUNCTION_159_11(*v46 + 8 * (v6 >> 6));
  sub_1D54B5AC0(v0, *(v36 + 48) + *(v48 + 72) * v6);
  v37 = *(v36 + 16);
  v38 = __OFADD__(v37, 1);
  v39 = v37 + 1;
  if (v38)
  {
    __break(1u);
LABEL_35:
    sub_1D54BE1FC(v47, &qword_1EC7EB470);
LABEL_36:
    OUTLINED_FUNCTION_238_3();
    sub_1D5616228();
    __break(1u);
  }

  else
  {
    *(v36 + 16) = v39;
    OUTLINED_FUNCTION_46();
  }
}

void sub_1D54B09A4()
{
  OUTLINED_FUNCTION_411();
  OUTLINED_FUNCTION_81_27();
  if (!v6 & v5 && (v2 & 1) != 0)
  {
    goto LABEL_20;
  }

  if (v2)
  {
    v7 = OUTLINED_FUNCTION_268_3(v3);
    sub_1D54AEAC0(v7);
  }

  else
  {
    if (v4 > v3)
    {
      sub_1D54B1CC8();
      goto LABEL_20;
    }

    v8 = OUTLINED_FUNCTION_268_3(v3);
    sub_1D54B3D80(v8);
  }

  v9 = *v1;
  sub_1D56162D8();
  sub_1D4F0B2F8();
  v10 = sub_1D5616328();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_20:
    OUTLINED_FUNCTION_70_26();
    if (!v21)
    {
      *(v19 + 16) = v20;
      return;
    }

    goto LABEL_23;
  }

  v13 = ~v11;
  v14 = *(v0 + 16);
  while (1)
  {
    v15 = *(*(v9 + 48) + 8 * v12);
    if (*(v15 + 16) == v14)
    {
      break;
    }

LABEL_19:
    v12 = (v12 + 1) & v13;
    if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  if (!v14 || v15 == v0)
  {
    goto LABEL_24;
  }

  v16 = (v15 + 32);
  v17 = (v0 + 32);
  v18 = *(v0 + 16);
  while (v18)
  {
    if (*v16 != *v17)
    {
      goto LABEL_19;
    }

    ++v16;
    ++v17;
    if (!--v18)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAE30, &unk_1D561DC30);
  sub_1D5616228();
  __break(1u);
}

uint64_t sub_1D54B0B10(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a3)
  {
    sub_1D54AF0A0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1D54B2020();
      goto LABEL_18;
    }

    sub_1D54B4308(v6 + 1);
  }

  v8 = *v3;
  result = sub_1D5474688(*(*v3 + 40));
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    if (v5)
    {
      v11 = 0x6577656976657270;
    }

    else
    {
      v11 = 0x6573736572706D69;
    }

    do
    {
      v12 = *(*(v8 + 48) + a2) ? 0x6577656976657270 : 0x6573736572706D69;
      if (v12 == v11)
      {
        goto LABEL_21;
      }

      v13 = sub_1D5616168();
      result = swift_bridgeObjectRelease_n();
      if (v13)
      {
        goto LABEL_22;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_18:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + a2) = v5 & 1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_21:
  swift_bridgeObjectRelease_n();
LABEL_22:
  result = sub_1D5616228();
  __break(1u);
  return result;
}

void sub_1D54B0CBC()
{
  OUTLINED_FUNCTION_47();
  v5 = v4;
  v7 = v6;
  v8 = OUTLINED_FUNCTION_64_1();
  v9 = type metadata accessor for MusicSuggestedSongsEntry(v8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_93_5();
  OUTLINED_FUNCTION_81_27();
  v31 = v1;
  if (!v24 & v13 && (v5 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (v5)
  {
    sub_1D54AED34(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1D54B1E18();
      goto LABEL_18;
    }

    sub_1D54B3FCC(v11 + 1);
  }

  OUTLINED_FUNCTION_381();
  v7 = sub_1D5613838();
  OUTLINED_FUNCTION_38_45();
  sub_1D54B4BA4(v14, v15, MEMORY[0x1E6976BF8]);
  OUTLINED_FUNCTION_284_1();
  sub_1D5614CB8();
  v16 = (v0 + *(v9 + 20));
  v17 = *v16;
  v18 = v16[1];
  OUTLINED_FUNCTION_314_1();
  sub_1D5614E28();
  sub_1D5616328();
  OUTLINED_FUNCTION_168_5();
  OUTLINED_FUNCTION_341_1();
  if ((*(v3 + 56 + v20) >> v7))
  {
    v21 = ~v19;
    do
    {
      OUTLINED_FUNCTION_23_72();
      sub_1D54ACBB0(v22, v2);
      if (sub_1D56137A8())
      {
        v23 = (v2 + *(v9 + 20));
        v24 = *v23 == v17 && v23[1] == v18;
        if (v24 || (sub_1D5616168() & 1) != 0)
        {
          goto LABEL_21;
        }
      }

      OUTLINED_FUNCTION_3_184();
      sub_1D54B4B54();
      v7 = (v7 + 1) & v21;
      OUTLINED_FUNCTION_351_1();
    }

    while (((v25 >> v7) & 1) != 0);
  }

LABEL_18:
  v26 = *v1;
  OUTLINED_FUNCTION_159_11(*v31 + 8 * (v7 >> 6));
  OUTLINED_FUNCTION_37_48();
  sub_1D54B5AC0(v0, v27);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    OUTLINED_FUNCTION_46();
    return;
  }

  __break(1u);
LABEL_21:
  OUTLINED_FUNCTION_3_184();
  sub_1D54B4B54();
  sub_1D5616228();
  __break(1u);
}

void *sub_1D54B0EF4()
{
  v1 = v0;
  v2 = type metadata accessor for MusicItemCache.Key(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6FD8, &unk_1D5667D80);
  v6 = *v0;
  v7 = sub_1D5615B08();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1D54ACBB0(*(v6 + 48) + v21, v5);
        result = sub_1D54B5AC0(v5, *(v8 + 48) + v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v8;
  }

  return result;
}

void sub_1D54B10FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6FD0, &qword_1D5667D78);
  v2 = *v0;
  v3 = sub_1D5615B08();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void *sub_1D54B1254()
{
  v1 = v0;
  v2 = type metadata accessor for MusicItemTypedIdentifier(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7250, &unk_1D56685C0);
  v6 = *v0;
  v7 = sub_1D5615B08();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1D54ACBB0(*(v6 + 48) + v21, v5);
        result = sub_1D54B5AC0(v5, *(v8 + 48) + v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v8;
  }

  return result;
}

void *sub_1D54B145C()
{
  v1 = v0;
  v2 = sub_1D560D838();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7248, &qword_1D56685B8);
  v6 = *v0;
  v7 = sub_1D5615B08();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_21;
      }

      v19 = *(v6 + 56 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v8;
  }

  return result;
}

void sub_1D54B16A4(uint64_t *a1, uint64_t *a2)
{
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v5 = *v2;
  v6 = sub_1D5615B08();
  if (v5[2])
  {
    v7 = OUTLINED_FUNCTION_262_1();
    if (v10)
    {
      v11 = v7 >= v9;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      memmove(v7, v3, 8 * v8);
    }

    v12 = 0;
    *(v6 + 16) = v5[2];
    OUTLINED_FUNCTION_246_3();
    v14 = v5[7];
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_194();
LABEL_17:
        *(*(v6 + 48) + 8 * (v18 | (v12 << 6))) = *(v5[6] + 8 * (v18 | (v12 << 6)));
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      ++v19;
      if (*(v3 + v12))
      {
        OUTLINED_FUNCTION_113_2();
        v16 = v21 & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v4 = v6;
  }
}

void *sub_1D54B17A8()
{
  v1 = v0;
  v2 = _s15PersistentEntryVMa(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7240, &qword_1D56685B0);
  v6 = *v0;
  v7 = sub_1D5615B08();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1D54ACBB0(*(v6 + 48) + v21, v5);
        result = sub_1D54B5AC0(v5, *(v8 + 48) + v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v8;
  }

  return result;
}

void *sub_1D54B19B0(uint64_t *a1, uint64_t *a2)
{
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v5 = *v2;
  v6 = sub_1D5615B08();
  if (*(v5 + 16))
  {
    result = OUTLINED_FUNCTION_262_1();
    if (v10)
    {
      v11 = result >= v9;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      result = memmove(result, v3, 8 * v8);
    }

    v12 = 0;
    *(v6 + 16) = *(v5 + 16);
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 56);
    for (i = (v13 + 63) >> 6; v15; *(*(v6 + 48) + v18) = *(*(v5 + 48) + v18))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v18 = v17 | (v12 << 6);
LABEL_17:
      ;
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= i)
      {
        goto LABEL_19;
      }

      v20 = *(v3 + v12);
      ++v19;
      if (v20)
      {
        v15 = (v20 - 1) & v20;
        v18 = __clz(__rbit64(v20)) | (v12 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v4 = v6;
  }

  return result;
}

void *sub_1D54B1AC0()
{
  v1 = v0;
  v2 = _s10DescriptorVMa(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F71D8, &qword_1D5668458);
  v6 = *v0;
  v7 = sub_1D5615B08();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1D54ACBB0(*(v6 + 48) + v21, v5);
        result = sub_1D54B5AC0(v5, *(v8 + 48) + v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v8;
  }

  return result;
}

void sub_1D54B1CC8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F71C8, &unk_1D5668440);
  v2 = *v0;
  v3 = sub_1D5615B08();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void *sub_1D54B1E18()
{
  v1 = v0;
  v2 = type metadata accessor for MusicSuggestedSongsEntry(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6F30, &qword_1D5667A00);
  v6 = *v0;
  v7 = sub_1D5615B08();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1D54ACBB0(*(v6 + 48) + v21, v5);
        result = sub_1D54B5AC0(v5, *(v8 + 48) + v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v8;
  }

  return result;
}

void *sub_1D54B2020()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F71B0, &qword_1D56683E8);
  v2 = *v0;
  v3 = sub_1D5615B08();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D54B2160(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for MusicItemCache.Key(0);
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6FD8, &unk_1D5667D80);
  result = sub_1D5615B18();
  v8 = result;
  if (*(v6 + 16))
  {
    v30 = v1;
    v31 = v6;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v6 + 48);
        v20 = *(v32 + 72);
        sub_1D54ACBB0(v19 + v20 * (v16 | (v9 << 6)), v5);
        sub_1D56162D8();
        sub_1D5614E28();
        sub_1D560D9A8();
        sub_1D54B4BA4(&qword_1EDD53C28, MEMORY[0x1E6974F80], MEMORY[0x1E6974F88]);
        sub_1D5614CB8();
        result = sub_1D5616328();
        v21 = -1 << *(v8 + 32);
        v22 = result & ~v21;
        v23 = v22 >> 6;
        if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
        {
          break;
        }

        v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        result = sub_1D54B5AC0(v5, *(v8 + 48) + v24 * v20);
        ++*(v8 + 16);
        v6 = v31;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v30;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
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
    *v2 = v8;
  }

  return result;
}

uint64_t sub_1D54B2498(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6FD0, &qword_1D5667D78);
  result = sub_1D5615B18();
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
        sub_1D56162D8();

        sub_1D5614E28();
        result = sub_1D5616328();
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