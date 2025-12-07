uint64_t sub_1CA31477C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13();
  *v6 = v5;
  *(v3 + 448) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1CA314880()
{
  v1 = *(v0 + 400);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = [*(v0 + 424) identifier];
  v5 = sub_1CA94C3A8();
  v7 = v6;

  v8 = OUTLINED_FUNCTION_104();
  v9(v8);
  swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 48) = v1;
  v10 = OUTLINED_FUNCTION_116();
  sub_1CA271BF8(v10, v11);
  OUTLINED_FUNCTION_7_0();
  if (v12)
  {
    __break(1u);
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_115();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444360, &qword_1CA983118);
  if (sub_1CA94D588())
  {
    v13 = OUTLINED_FUNCTION_116();
    sub_1CA271BF8(v13, v14);
    OUTLINED_FUNCTION_35_3();
    if (!v16)
    {
      OUTLINED_FUNCTION_27_0();

      sub_1CA94D878();
      return;
    }

    v2 = v15;
  }

  v18 = *(v0 + 48);
  v20 = *(v0 + 136);
  v19 = *(v0 + 144);
  v21 = *(v0 + 128);
  if (v3)
  {
    (*(v20 + 40))(v18[7] + *(v20 + 72) * v2, v19, v21);

    goto LABEL_12;
  }

  v18[(v2 >> 6) + 8] |= 1 << v2;
  v22 = (v18[6] + 16 * v2);
  *v22 = v5;
  v22[1] = v7;
  (*(v20 + 32))(v18[7] + *(v20 + 72) * v2, v19, v21);
  v23 = v18[2];
  v12 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v12)
  {
LABEL_29:
    __break(1u);
    return;
  }

  v18[2] = v24;
LABEL_12:
  v25 = *(v0 + 168);

  v26 = OUTLINED_FUNCTION_69_0();
  v27(v26);
  OUTLINED_FUNCTION_23_5();
  sub_1CA323DA8(v25, v28);
  v29 = *(v0 + 448);
  while (1)
  {
    v30 = OUTLINED_FUNCTION_96_2();
    if (v16)
    {

      (*(*(v0 + 264) + 16))(*(v0 + 272), *(v0 + 280), *(v0 + 256));
      sub_1CA2F54CC(v18);

      sub_1CA94A598();
      OUTLINED_FUNCTION_46();
      __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
      sub_1CA94A298();
      v40 = *(v0 + 88);
      if (v29)
      {
        v41 = *(v0 + 64);

        sub_1CA94B168();
        OUTLINED_FUNCTION_7_2();
        (*(v42 + 8))(v40);
        v43 = OUTLINED_FUNCTION_106_1();
        v44(v43);
        v45 = OUTLINED_FUNCTION_95_1();
        v46(v45);
        OUTLINED_FUNCTION_67_2();
      }

      else
      {
        v52 = *(v0 + 64);

        sub_1CA94B168();
        OUTLINED_FUNCTION_7_2();
        (*(v53 + 8))(v40);
        v54 = OUTLINED_FUNCTION_137();
        v55(v54);
        v56 = OUTLINED_FUNCTION_95_1();
        v57(v56);
      }

      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_27_0();

      __asm { BRAA            X1, X16 }
    }

    v31 = OUTLINED_FUNCTION_188_0(v30);
    v33 = v16 ? *(v32 + 8 * v31 + 32) : MEMORY[0x1CCAA22D0](v31);
    v34 = v33;
    *(v0 + 424) = v33;
    v35 = [v33 value];
    *(v0 + 432) = v35;
    if (v35)
    {
      break;
    }
  }

  OUTLINED_FUNCTION_174_0(v35);
  sub_1CA94A1E8();
  _sSo13WFContentItemC11WorkflowKitE04ToolD21TypeResolutionContextV015measurementUnitF8Provider011outputValueF027displayRepresentationConfig012localizationH0AE0eD0011MeasurementjfK0_pSg_So07LNValueF0CSgAJ07DisplayO13ConfigurationVSo014WFLocalizationH0CtcfcfA1__0();
  v47 = [objc_opt_self() defaultContext];
  OUTLINED_FUNCTION_62_0(v47);
  v48 = swift_task_alloc();
  v49 = OUTLINED_FUNCTION_153_1(v48);
  *v49 = v50;
  OUTLINED_FUNCTION_18_9(v49);
  OUTLINED_FUNCTION_27_0();

  TypedValueTransformer.transform(input:with:)();
}

uint64_t sub_1CA314E50()
{
  v58 = v0;
  v1 = *(v0 + 448);
  v2 = *(v0 + 432);
  sub_1CA949C58();
  v3 = v2;
  v4 = v1;
  v5 = sub_1CA949F68();
  v6 = sub_1CA94CC18();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 432);
    v52 = *(v0 + 448);
    v53 = *(v0 + 424);
    v56 = *(v0 + 168);
    v8 = *(v0 + 112);
    v54 = *(v0 + 104);
    v55 = *(v0 + 120);
    v9 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = [v7 debugDescription];
    sub_1CA94C3A8();

    v11 = OUTLINED_FUNCTION_70();
    v14 = sub_1CA26B54C(v11, v12, v13);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2080;
    swift_getErrorValue();
    v15 = sub_1CA94D8B8();
    v17 = sub_1CA26B54C(v15, v16, &v57);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_1CA256000, v5, v6, "Failed to convert link value: (%s) to typed value due to error: %s.", v9, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_154();
    MEMORY[0x1CCAA4BF0]();
    OUTLINED_FUNCTION_154();
    MEMORY[0x1CCAA4BF0]();

    (*(v8 + 8))(v55, v54);
    OUTLINED_FUNCTION_23_5();
    v19 = v56;
  }

  else
  {
    v20 = *(v0 + 448);
    v21 = *(v0 + 424);
    v22 = *(v0 + 168);

    v23 = OUTLINED_FUNCTION_70();
    v24(v23);
    OUTLINED_FUNCTION_23_5();
    v19 = v22;
  }

  sub_1CA323DA8(v19, v18);
  v25 = *(v0 + 416);
  v26 = *(v0 + 400);
  while (1)
  {
    v27 = OUTLINED_FUNCTION_96_2();
    if (v28)
    {
      break;
    }

    *(v0 + 408) = v27;
    *(v0 + 416) = v25;
    *(v0 + 400) = v26;
    v29 = *(v0 + 376);
    if ((v29 & 0xC000000000000001) != 0)
    {
      v30 = MEMORY[0x1CCAA22D0]();
    }

    else
    {
      v30 = *(v29 + 8 * v27 + 32);
    }

    v31 = v30;
    *(v0 + 424) = v30;
    v32 = [v30 value];
    *(v0 + 432) = v32;
    if (v32)
    {
      OUTLINED_FUNCTION_174_0(v32);
      sub_1CA94A1E8();
      _sSo13WFContentItemC11WorkflowKitE04ToolD21TypeResolutionContextV015measurementUnitF8Provider011outputValueF027displayRepresentationConfig012localizationH0AE0eD0011MeasurementjfK0_pSg_So07LNValueF0CSgAJ07DisplayO13ConfigurationVSo014WFLocalizationH0CtcfcfA1__0();
      v39 = [objc_opt_self() defaultContext];
      OUTLINED_FUNCTION_62_0(v39);
      v40 = swift_task_alloc();
      v41 = OUTLINED_FUNCTION_153_1(v40);
      *v41 = v42;
      OUTLINED_FUNCTION_18_9(v41);

      return TypedValueTransformer.transform(input:with:)();
    }
  }

  v33 = OUTLINED_FUNCTION_130_0();
  v34(v33);
  sub_1CA2F54CC(v25);

  sub_1CA94A598();
  OUTLINED_FUNCTION_46();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  OUTLINED_FUNCTION_106_1();
  sub_1CA94A298();
  v44 = *(v0 + 88);
  v45 = *(v0 + 64);

  sub_1CA94B168();
  OUTLINED_FUNCTION_7_2();
  (*(v46 + 8))(v44);
  v47 = OUTLINED_FUNCTION_137();
  v48(v47);
  v49 = OUTLINED_FUNCTION_95_1();
  v50(v49);

  OUTLINED_FUNCTION_5();

  return v51();
}

uint64_t static ToolInvocationBox.invocation(from:bundleIdentifier:deviceIdentifier:)()
{
  OUTLINED_FUNCTION_59_0();
  v1 = v0;
  sub_1CA94C218();
  sub_1CA94C218();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20(v2);
  *v3 = v4;
  v3[1] = sub_1CA31555C;
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_169_0();

  return ToolInvocationBox.__allocating_init(action:bundleIdentifier:deviceIdentifier:)();
}

uint64_t sub_1CA31555C()
{
  OUTLINED_FUNCTION_0();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v4 = *v1;
  OUTLINED_FUNCTION_13();
  *v5 = v4;

  OUTLINED_FUNCTION_2_4();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_1CA3156E8(void *a1, uint64_t a2, uint64_t a3, void *aBlock, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = _Block_copy(aBlock);
  sub_1CA94C3A8();
  v5[4] = v8;
  if (a3)
  {
    sub_1CA94C3A8();
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v5[5] = v10;
  swift_getObjCClassMetadata();
  v11 = a1;
  v12 = swift_task_alloc();
  v5[6] = v12;
  *v12 = v5;
  v12[1] = sub_1CA315810;

  return static ToolInvocationBox.invocation(from:bundleIdentifier:deviceIdentifier:)();
}

uint64_t sub_1CA315810(uint64_t a1)
{
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_48_1();
  v5 = *(v4 + 16);
  v6 = *v3;
  OUTLINED_FUNCTION_13();
  *v7 = v6;

  OUTLINED_FUNCTION_195_0();
  v8 = *(v4 + 24);

  if (v1)
  {
    sub_1CA948AC8();

    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_185_0();
    v9();

    _Block_release(v8);
  }

  else
  {
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_199_0();
    v10();
    _Block_release(v8);
  }

  OUTLINED_FUNCTION_65_2();
  OUTLINED_FUNCTION_217();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

Swift::Bool __swiftcall ToolInvocationBox.containsParameterValueForKey(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = OUTLINED_FUNCTION_20_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_18_0(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  v9 = sub_1CA94A2C8();
  OUTLINED_FUNCTION_5_15();
  sub_1CA31194C(countAndFlagsBits, object, v9, v10, v8);

  v11 = sub_1CA94AFA8();
  LOBYTE(v9) = __swift_getEnumTagSinglePayload(v8, 1, v11) != 1;
  sub_1CA323C64(v8, &unk_1EC444C80);
  return v9;
}

uint64_t ToolInvocationBox.valueTypeForParameterWithKey(_:)()
{
  OUTLINED_FUNCTION_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444368, &unk_1CA988BC0);
  OUTLINED_FUNCTION_18_0(v4);
  v1[5] = OUTLINED_FUNCTION_45();
  v5 = sub_1CA94AD08();
  v1[6] = v5;
  OUTLINED_FUNCTION_12(v5);
  v1[7] = v6;
  v1[8] = OUTLINED_FUNCTION_13_5();
  v1[9] = swift_task_alloc();
  v7 = sub_1CA94AC68();
  v1[10] = v7;
  OUTLINED_FUNCTION_12(v7);
  v1[11] = v8;
  v1[12] = OUTLINED_FUNCTION_45();
  v9 = sub_1CA94AC88();
  v1[13] = v9;
  OUTLINED_FUNCTION_12(v9);
  v1[14] = v10;
  v1[15] = OUTLINED_FUNCTION_13_5();
  v1[16] = swift_task_alloc();
  v11 = sub_1CA94ADC8();
  v1[17] = v11;
  OUTLINED_FUNCTION_12(v11);
  v1[18] = v12;
  v1[19] = OUTLINED_FUNCTION_13_5();
  v1[20] = swift_task_alloc();
  v13 = type metadata accessor for TypedValueConversionContext(0);
  v1[21] = v13;
  OUTLINED_FUNCTION_18_0(v13);
  v1[22] = OUTLINED_FUNCTION_45();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444C80, &qword_1CA983128);
  OUTLINED_FUNCTION_18_0(v14);
  v1[23] = OUTLINED_FUNCTION_45();
  v15 = sub_1CA94AFA8();
  v1[24] = v15;
  OUTLINED_FUNCTION_12(v15);
  v1[25] = v16;
  v1[26] = OUTLINED_FUNCTION_13_5();
  v1[27] = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}

uint64_t sub_1CA315D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = *(v18 + 184);
  v20 = sub_1CA94A2C8();
  OUTLINED_FUNCTION_5_15();
  v21 = OUTLINED_FUNCTION_104();
  sub_1CA31194C(v21, v22, v20, v23, v24);

  OUTLINED_FUNCTION_41(v19);
  if (v25)
  {
    v27 = *(v18 + 16);
    v26 = *(v18 + 24);
    sub_1CA323C64(*(v18 + 184), &unk_1EC444C80);
    v28 = sub_1CA322384();
    OUTLINED_FUNCTION_127(&type metadata for ToolInvocationBox.Error, v28);
    *v29 = v27;
    *(v29 + 8) = v26;
    *(v29 + 16) = 0;
    swift_willThrow();
    sub_1CA94C218();
    goto LABEL_4;
  }

  v32 = *(v18 + 176);
  (*(*(v18 + 200) + 32))(*(v18 + 216), *(v18 + 184), *(v18 + 192));
  v33 = *MEMORY[0x1E69DB2E0];
  sub_1CA94B168();
  OUTLINED_FUNCTION_52();
  (*(v34 + 104))(v32, v33);
  if (qword_1EC4420F0 != -1)
  {
    OUTLINED_FUNCTION_97_1(&qword_1EC4420F0);
  }

  v36 = *(v18 + 168);
  v35 = *(v18 + 176);
  v37 = qword_1EC4420F8;
  v38 = (v35 + v36[5]);
  v38[3] = type metadata accessor for DatabaseTypeDefinitionProvider();
  v38[4] = &protocol witness table for DatabaseTypeDefinitionProvider;
  *v38 = v37;
  v39 = objc_opt_self();

  *(v35 + v36[6]) = [v39 defaultContext];
  *(v35 + v36[7]) = 0;
  v40 = OUTLINED_FUNCTION_52_0();
  v41(v40);
  v42 = OUTLINED_FUNCTION_3_3();
  v44 = v43(v42);
  if (v44 == *MEMORY[0x1E69DB120])
  {
    v45 = *(v18 + 128);
    v46 = *(v18 + 104);
    v47 = *(v18 + 112);
    v48 = OUTLINED_FUNCTION_14_1();
    v49(v48);
    v50 = OUTLINED_FUNCTION_134();
    v51(v50);
    v52 = OUTLINED_FUNCTION_188();
    v53(v52);
    v54 = OUTLINED_FUNCTION_70();
    v56 = v55(v54) == *MEMORY[0x1E69DAE18];
    v57 = *(v47 + 8);
    v58 = OUTLINED_FUNCTION_70();
    v57(v58);
    sub_1CA94AC28();
    (v57)(v45, v46);
LABEL_11:
    *(v18 + 248) = v56;
    v59 = swift_task_alloc();
    *(v18 + 224) = v59;
    *v59 = v18;
    v59[1] = sub_1CA316354;
    OUTLINED_FUNCTION_73_0(*(v18 + 160));
    OUTLINED_FUNCTION_99();

    return sub_1CA2FD878();
  }

  if (v44 == *MEMORY[0x1E69DB128])
  {
    v62 = *(v18 + 56);
    v63 = *(v18 + 40);
    v64 = OUTLINED_FUNCTION_14_1();
    v65(v64);
    v66 = OUTLINED_FUNCTION_134();
    v67(v66);
    sub_1CA94AC48();
    v68 = sub_1CA94ACE8();
    v69 = *(v62 + 8);
    v70 = OUTLINED_FUNCTION_126();
    v69(v70);
    sub_1CA2ECEE4(v68, v63);

    OUTLINED_FUNCTION_41(v63);
    if (!v25)
    {
      v93 = *(v18 + 152);
      v94 = *(v18 + 160);
      v86 = *(v18 + 88);
      v85 = *(v18 + 96);
      v91 = *(v18 + 80);
      v92 = *(v18 + 136);
      v87 = *(v18 + 56);
      v88 = *(v18 + 64);
      v89 = *(v18 + 48);
      v90 = *(*(v18 + 144) + 32);
      v90();
      sub_1CA94AC48();
      (*(v86 + 8))(v85, v91);
      v56 = (*(v87 + 88))(v88, v89) == *MEMORY[0x1E69DAF18];
      (v69)(v88, v89);
      (v90)(v94, v93, v92);
      goto LABEL_11;
    }

    v71 = *(v18 + 216);
    v73 = *(v18 + 192);
    v72 = *(v18 + 200);
    v74 = *(v18 + 176);
    v76 = *(v18 + 88);
    v75 = *(v18 + 96);
    v77 = *(v18 + 80);
    v78 = *(v18 + 16);
    v79 = *(v18 + 24);
    sub_1CA323C64(*(v18 + 40), &qword_1EC444368);
    v80 = sub_1CA322384();
    OUTLINED_FUNCTION_127(&type metadata for ToolInvocationBox.Error, v80);
    *v81 = v78;
    *(v81 + 8) = v79;
    *(v81 + 16) = 0;
    swift_willThrow();
    v82 = *(v76 + 8);
    sub_1CA94C218();
    v82(v75, v77);
    OUTLINED_FUNCTION_4_14();
    sub_1CA323DA8(v74, v83);
    (*(v72 + 8))(v71, v73);
LABEL_4:
    OUTLINED_FUNCTION_168_0();

    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_99();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_99();

  return sub_1CA94D7E8();
}

uint64_t sub_1CA316354()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 232) = v4;
  *(v2 + 240) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1CA316454()
{
  v1 = *(v0 + 232);
  if (*(v0 + 248) == 1)
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E69AC6C0]) initWithMemberValueType_];

    v10 = v2;
  }

  else
  {
    v10 = *(v0 + 232);
  }

  v3 = *(v0 + 216);
  v5 = *(v0 + 192);
  v4 = *(v0 + 200);
  v6 = *(v0 + 176);
  (*(*(v0 + 144) + 8))(*(v0 + 160), *(v0 + 136));
  OUTLINED_FUNCTION_4_14();
  sub_1CA323DA8(v6, v7);
  (*(v4 + 8))(v3, v5);

  OUTLINED_FUNCTION_2_4();

  return v8(v10);
}

uint64_t sub_1CA3165D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_157();
  OUTLINED_FUNCTION_189();
  v15 = v14[22];
  (*(v14[18] + 8))(v14[20], v14[17]);
  OUTLINED_FUNCTION_4_14();
  sub_1CA323DA8(v15, v16);
  v17 = OUTLINED_FUNCTION_3_3();
  v18(v17);
  OUTLINED_FUNCTION_168_0();
  v29 = v14[8];
  v30 = v14[5];
  v31 = v19;

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_24();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, v29, v30, v31, a12, a13, a14);
}

uint64_t sub_1CA316774(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  sub_1CA94C3A8();
  v3[4] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1CA316848;

  return ToolInvocationBox.valueTypeForParameterWithKey(_:)();
}

uint64_t sub_1CA316848(uint64_t a1)
{
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_48_1();
  v5 = *(v4 + 16);
  v6 = *v3;
  OUTLINED_FUNCTION_13();
  *v7 = v6;

  OUTLINED_FUNCTION_195_0();
  v9 = *(v8 + 24);
  if (v1)
  {
    sub_1CA948AC8();

    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_185_0();
    v10();

    _Block_release(v9);
  }

  else
  {
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_199_0();
    v11();
    _Block_release(v9);
  }

  OUTLINED_FUNCTION_65_2();
  OUTLINED_FUNCTION_217();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

NSData __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ToolInvocationBox.encode()()
{
  sub_1CA9489F8();
  swift_allocObject();
  sub_1CA9489E8();
  sub_1CA94A2F8();
  OUTLINED_FUNCTION_79_1();
  sub_1CA323D64(v1, v2);
  v3 = sub_1CA9489D8();
  v5 = v4;

  if (!v0)
  {
    v7 = sub_1CA948BF8();
    sub_1CA266F2C(v3, v5);
    return v7;
  }

  return result;
}

uint64_t ToolInvocationBox.createAction(given:fetchingDefaultValues:)()
{
  OUTLINED_FUNCTION_0();
  *(v1 + 596) = v2;
  *(v1 + 216) = v3;
  *(v1 + 224) = v0;
  v4 = sub_1CA949F78();
  *(v1 + 232) = v4;
  OUTLINED_FUNCTION_12(v4);
  *(v1 + 240) = v5;
  *(v1 + 248) = OUTLINED_FUNCTION_13_5();
  *(v1 + 256) = swift_task_alloc();
  *(v1 + 264) = swift_task_alloc();
  v6 = sub_1CA94B258();
  *(v1 + 272) = v6;
  OUTLINED_FUNCTION_12(v6);
  *(v1 + 280) = v7;
  *(v1 + 288) = OUTLINED_FUNCTION_45();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444D00, &qword_1CA988B80);
  OUTLINED_FUNCTION_18_0(v8);
  *(v1 + 296) = OUTLINED_FUNCTION_45();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445A40, &unk_1CA983150);
  OUTLINED_FUNCTION_18_0(v9);
  *(v1 + 304) = OUTLINED_FUNCTION_45();
  v10 = type metadata accessor for ParameterStateValueTransformContext(0);
  *(v1 + 312) = v10;
  OUTLINED_FUNCTION_18_0(v10);
  *(v1 + 320) = OUTLINED_FUNCTION_45();
  v11 = sub_1CA94AC88();
  *(v1 + 328) = v11;
  OUTLINED_FUNCTION_12(v11);
  *(v1 + 336) = v12;
  *(v1 + 344) = OUTLINED_FUNCTION_45();
  v13 = sub_1CA94AFA8();
  *(v1 + 352) = v13;
  OUTLINED_FUNCTION_12(v13);
  *(v1 + 360) = v14;
  *(v1 + 368) = OUTLINED_FUNCTION_13_5();
  *(v1 + 376) = swift_task_alloc();
  v15 = sub_1CA94B168();
  *(v1 + 384) = v15;
  OUTLINED_FUNCTION_12(v15);
  *(v1 + 392) = v16;
  *(v1 + 400) = OUTLINED_FUNCTION_45();
  v17 = sub_1CA94A288();
  *(v1 + 408) = v17;
  OUTLINED_FUNCTION_12(v17);
  *(v1 + 416) = v18;
  *(v1 + 424) = OUTLINED_FUNCTION_13_5();
  *(v1 + 432) = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

uint64_t sub_1CA3178DC()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 528) = *(v3 + 48);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA3180F0()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 552) = v4;
  *(v2 + 560) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1CA3189A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v156 = v20;
  v21 = *(v20 + 512);
  sub_1CA949C58();
  v22 = v21;
  OUTLINED_FUNCTION_105_1();
  sub_1CA94C218();
  v23 = sub_1CA949F68();
  v24 = sub_1CA94CC28();

  v25 = os_log_type_enabled(v23, v24);
  v153 = *(v20 + 560);
  v26 = *(v20 + 512);
  v27 = MEMORY[0x1E69E7CA0];
  if (v25)
  {
    v138 = *(v20 + 448);
    v139 = *(v20 + 456);
    v146 = *(v20 + 352);
    v148 = *(v20 + 376);
    v144 = *(v20 + 344);
    v145 = *(v20 + 360);
    v142 = *(v20 + 336);
    v143 = *(v20 + 328);
    v150 = *(v20 + 320);
    v28 = *(v20 + 240);
    v140 = *(v20 + 232);
    v141 = *(v20 + 264);
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v155 = v30;
    *v29 = 136315394;
    v31 = [v26 key];

    v32 = sub_1CA94C3A8();
    v34 = v33;

    v35 = &selRef_isInputParameter;
    v26 = sub_1CA26B54C(v32, v34, &v155);

    *(v29 + 4) = v26;
    *(v29 + 12) = 2080;
    *(v29 + 14) = sub_1CA26B54C(v138, v139, &v155);
    _os_log_impl(&dword_1CA256000, v23, v24, "Failed to set a parameter state for %s to action %s", v29, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_154();
    MEMORY[0x1CCAA4BF0]();
    OUTLINED_FUNCTION_154();
    MEMORY[0x1CCAA4BF0]();
    swift_unknownObjectRelease();

    v36 = (*(v28 + 8))(v141, v140);
    v44 = OUTLINED_FUNCTION_89_0(v36, v37, v38, v39, v40, v41, v42, v43, v137, v138, v139, v140, v141, v142, v143, v144);
    v45(v44);
    (*(v145 + 8))(v148, v146);
  }

  else
  {
    v46 = *(v20 + 360);
    v147 = *(v20 + 352);
    v149 = *(v20 + 376);
    v47 = *(v20 + 336);
    v34 = *(v20 + 344);
    v48 = *(v20 + 328);
    v150 = *(v20 + 320);
    v30 = *(v20 + 264);
    v49 = *(v20 + 240);

    swift_unknownObjectRelease();
    v29 = v49 + 8;
    v50 = OUTLINED_FUNCTION_106_1();
    v51(v50);
    v52 = *(v47 + 8);
    v24 = (v47 + 8);
    v53 = v48;
    v35 = &selRef_isInputParameter;
    v52(v34, v53);
    v54 = *(v46 + 8);
    v27 = (v46 + 8);
    v54(v149, v147);
  }

  OUTLINED_FUNCTION_82_1();
  sub_1CA323DA8(v150, v55);
  while (1)
  {
    OUTLINED_FUNCTION_91_1();
    if (v120)
    {

      OUTLINED_FUNCTION_56_2(*(v20 + 504));
      v82 = v26;
      OUTLINED_FUNCTION_105_1();
      sub_1CA94C218();
      v83 = v24;
      v84 = sub_1CA949F68();
      sub_1CA94CC08();
      OUTLINED_FUNCTION_206_0();

      if (OUTLINED_FUNCTION_178_0())
      {
        v86 = *(v20 + 448);
        v85 = *(v20 + 456);
        v154 = *(v20 + 256);
        v151 = *(v20 + 240);
        v152 = *(v20 + 232);
        v87 = *(v20 + 216);
        OUTLINED_FUNCTION_113_0();
        swift_slowAlloc();
        OUTLINED_FUNCTION_131();
        v155 = OUTLINED_FUNCTION_138_0();
        *v83 = 136315650;
        sub_1CA26B54C(v86, v85, &v155);
        OUTLINED_FUNCTION_212();
        OUTLINED_FUNCTION_90_2();
        v88 = OUTLINED_FUNCTION_140_1([v87 state]);
        type metadata accessor for WFActionRegistryState(v88);
        v90 = OUTLINED_FUNCTION_207_0(v89);
        sub_1CA26B54C(v90, v91, &v155);
        OUTLINED_FUNCTION_210();
        OUTLINED_FUNCTION_55_3();
        OUTLINED_FUNCTION_85_1(&dword_1CA256000, v92, v93, "Produced action %s from registry (status = %s = %@");
        sub_1CA323C64(v27, &qword_1EC444AE0);
        OUTLINED_FUNCTION_154();
        MEMORY[0x1CCAA4BF0]();
        OUTLINED_FUNCTION_139_2();
        OUTLINED_FUNCTION_154();
        MEMORY[0x1CCAA4BF0]();
        OUTLINED_FUNCTION_154();
        MEMORY[0x1CCAA4BF0]();

        (*(v151 + 8))(v154, v152);
      }

      else
      {
        OUTLINED_FUNCTION_109_1();

        v100 = OUTLINED_FUNCTION_41_1();
        v101(v100);
      }

      OUTLINED_FUNCTION_13_8();
      OUTLINED_FUNCTION_112_1(v102);

      OUTLINED_FUNCTION_1_3();
      OUTLINED_FUNCTION_27_0();

      __asm { BRAA            X2, X16 }
    }

    if ((v56 & 0xC000000000000001) != 0)
    {
      v57 = MEMORY[0x1CCAA22D0](v23);
    }

    else
    {
      OUTLINED_FUNCTION_61_2();
      if (v60)
      {
        goto LABEL_54;
      }

      v57 = OUTLINED_FUNCTION_179_0(v58, v59);
    }

    OUTLINED_FUNCTION_98_1(v57);
    *(v20 + 520) = v61;
    if (v62)
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      OUTLINED_FUNCTION_12_0(&qword_1EC442008);
LABEL_50:
      OUTLINED_FUNCTION_60_3();
      v130 = OUTLINED_FUNCTION_111_1();
      OUTLINED_FUNCTION_34_4(v130, &protocol witness table for DatabaseContainerDefinitionProvider);
      OUTLINED_FUNCTION_180_0();
      v131 = v26;

      v132 = swift_task_alloc();
      v133 = OUTLINED_FUNCTION_160_0(v132);
      *v133 = v134;
      OUTLINED_FUNCTION_2_16(v133);
      OUTLINED_FUNCTION_27_0();

      return sub_1CA6337C0();
    }

    objc_opt_self();
    OUTLINED_FUNCTION_93();
    v63 = swift_dynamicCastObjCClass();
    if (v63)
    {
      break;
    }

LABEL_14:
    v65 = [*(v20 + 512) v35[126]];
    if (!v65)
    {
      sub_1CA94C3A8();
      v30 = v66;
      sub_1CA94C368();
      OUTLINED_FUNCTION_87();
    }

    v67 = [OUTLINED_FUNCTION_101_1() defaultParameterStateForKey_];
    OUTLINED_FUNCTION_209(v67);
    v68 = [v26 v35[126]];
    if (!v68)
    {
      sub_1CA94C3A8();
      v26 = v69;
      sub_1CA94C368();
      OUTLINED_FUNCTION_171();
    }

    OUTLINED_FUNCTION_45_3();
    OUTLINED_FUNCTION_103_0();
    [v70 v71];

    v23 = sub_1CA94A2C8();
    v72 = [v26 v35[126]];
    sub_1CA94C3A8();
    OUTLINED_FUNCTION_208();
    if (!v23[2].isa)
    {

      swift_unknownObjectRelease();

      goto LABEL_24;
    }

    v73 = OUTLINED_FUNCTION_188();
    sub_1CA271BF8(v73, v74);
    OUTLINED_FUNCTION_115();

    if (v72)
    {
      v75 = *(v20 + 592);
      v76 = OUTLINED_FUNCTION_92_0();
      v27(v76);

      v77 = OUTLINED_FUNCTION_94_1();
      v27(v77);
      v34 += 88;
      v78 = OUTLINED_FUNCTION_126();
      if (v79(v78) == v75)
      {
        v105 = *(v20 + 464);
        v106 = OUTLINED_FUNCTION_16_7();
        v107(v106);
        v108 = OUTLINED_FUNCTION_47_2();
        v110 = v109(v108);
        OUTLINED_FUNCTION_214(v110);
        v111 = sub_1CA94A1A8();
        v112 = OUTLINED_FUNCTION_69_0();
        v105(v112);
        v113 = 0;
        v114 = *(v111 + 16);
        while (1)
        {
          if (v114 == v113)
          {

            v124 = 1;
            goto LABEL_46;
          }

          if (v113 >= *(v111 + 16))
          {
            goto LABEL_55;
          }

          v115 = *(v20 + 512);
          OUTLINED_FUNCTION_9_6();
          v118(v26, v116 + v117 * v113);
          sub_1CA94B228();
          OUTLINED_FUNCTION_12_1();
          v119 = [v115 key];
          sub_1CA94C3A8();
          OUTLINED_FUNCTION_164_0();

          v120 = v26 == v72 && v26 == v115;
          if (v120)
          {
            break;
          }

          OUTLINED_FUNCTION_57_2();
          OUTLINED_FUNCTION_211();

          if (v26)
          {
            goto LABEL_45;
          }

          v121 = OUTLINED_FUNCTION_71_2();
          v122(v121);
          ++v113;
        }

LABEL_45:

        v125 = OUTLINED_FUNCTION_70_4();
        v123 = v126(v125);
        v124 = 0;
LABEL_46:
        OUTLINED_FUNCTION_10_5(v123, v124);
        if (v120)
        {
          sub_1CA323C64(*(v20 + 296), &qword_1EC444D00);
        }

        else
        {
          OUTLINED_FUNCTION_182_0();
          v127 = OUTLINED_FUNCTION_43_4();
          v128(v127);
        }

        v129 = OUTLINED_FUNCTION_181_0();
        OUTLINED_FUNCTION_69_2(v129);
        if (qword_1EC442008 == -1)
        {
          goto LABEL_50;
        }

        goto LABEL_56;
      }

      v80 = OUTLINED_FUNCTION_30_3();
      (v29)(v80);

      swift_unknownObjectRelease();
      v81 = OUTLINED_FUNCTION_52_0();
      (v29)(v81);
      v35 = &selRef_isInputParameter;
    }

    else
    {

      swift_unknownObjectRelease();
LABEL_24:
    }
  }

  v64 = v63;
  v30 = v30;
  if (![v64 loadsDefaultStateAsynchronously])
  {

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_159_1();
  *(v20 + 16) = v94;
  OUTLINED_FUNCTION_77_3(v20 + 176);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444378, &unk_1CA983160);
  OUTLINED_FUNCTION_1_15(v95);
  *(v20 + 88) = 1107296256;
  OUTLINED_FUNCTION_3_11(&block_descriptor_1);
  v96 = OUTLINED_FUNCTION_141();
  [v96 v97];
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x1EEE6DEC8](v98);
}

uint64_t sub_1CA31932C()
{
  OUTLINED_FUNCTION_14();

  v1 = OUTLINED_FUNCTION_116();
  *(v0 + 584) = sub_1CA3C0538(v1, v2, 0, 0);
  v3 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1CA3193AC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_124_1();
  OUTLINED_FUNCTION_162_0();
  v29 = v28[73];
  v30 = v28[57];
  if (v29)
  {
    v71 = v29;
    sub_1CA949C58();
    sub_1CA94C218();
    v31 = sub_1CA949F68();
    v32 = sub_1CA94CC08();

    if (OUTLINED_FUNCTION_178_0())
    {
      v33 = swift_slowAlloc();
      OUTLINED_FUNCTION_113_0();
      a16 = swift_slowAlloc();
      *v33 = 136315138;
      v34 = OUTLINED_FUNCTION_204();
      v37 = sub_1CA26B54C(v34, v35, v36);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_1CA256000, v31, v32, "Produced remote action %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(a16);
      OUTLINED_FUNCTION_154();
      MEMORY[0x1CCAA4BF0]();
      OUTLINED_FUNCTION_154();
      MEMORY[0x1CCAA4BF0]();
    }

    else
    {
    }

    v50 = OUTLINED_FUNCTION_69_0();
    v51(v50);
    v62 = v28[37];
    v64 = v28[36];
    v66 = v28[33];
    v68 = v28[32];
    v70 = v28[31];
    [v71 setToolInvocation_];

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_53();

    return v54(v52, v53, v54, v55, v56, v57, v58, v59, a9, v62, v64, v66, v68, v70, v71, a16, a17, a18, a19, a20);
  }

  else
  {
    v38 = v28[56];
    v60 = v28[40];
    v61 = v28[38];
    v63 = v28[37];
    v65 = v28[36];
    v67 = v28[33];
    v69 = v28[32];
    v72 = v28[31];
    v39 = sub_1CA322384();
    OUTLINED_FUNCTION_127(&type metadata for ToolInvocationBox.Error, v39);
    *v40 = v38;
    *(v40 + 8) = v30;
    *(v40 + 16) = 1;
    swift_willThrow();

    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_53();

    return v42(v41, v42, v43, v44, v45, v46, v47, v48, v60, v61, v63, v65, v67, v69, v72, a16, a17, a18, a19, a20);
  }
}

uint64_t sub_1CA3196E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_124_1();
  a27 = v30;
  a28 = v31;
  OUTLINED_FUNCTION_162_0();
  a26 = v28;
  v32 = *(v28 + 528);
  v33 = *(v28 + 512);
  v34 = v32;
  swift_willThrow();

  *(v28 + 144) = 0u;
  *(v28 + 160) = 0u;
  sub_1CA323C64(v28 + 144, &unk_1EC444650);
  OUTLINED_FUNCTION_190_0();
  while (1)
  {
    v35 = [*(v28 + 512) v33 + 632];
    if (!v35)
    {
      sub_1CA94C3A8();
      v35 = sub_1CA94C368();
    }

    v36 = *(v28 + 512);
    v37 = [*(v28 + 480) v34 + 2577];
    *(v28 + 536) = v37;

    v38 = [v36 v33 + 632];
    if (!v38)
    {
      sub_1CA94C3A8();
      v38 = sub_1CA94C368();
    }

    v39 = *(v28 + 512);
    [*(v28 + 480) (v29 + 3690)];

    v40 = sub_1CA94A2C8();
    v41 = [v39 v33 + 632];
    v42 = sub_1CA94C3A8();
    v44 = v43;

    if (!*(v40 + 16))
    {

      swift_unknownObjectRelease();

LABEL_12:

      goto LABEL_13;
    }

    v45 = sub_1CA271BF8(v42, v44);
    v47 = v46;

    if ((v47 & 1) == 0)
    {

      swift_unknownObjectRelease();
      goto LABEL_12;
    }

    v48 = *(v28 + 592);
    v49 = *(v28 + 368);
    v29 = *(v28 + 352);
    v50 = *(v28 + 360);
    v51 = *(v50 + 16);
    (v51)(*(v28 + 376), *(v40 + 56) + *(v50 + 72) * v45, v29);

    v52 = OUTLINED_FUNCTION_137();
    v51(v52);
    if ((*(v50 + 88))(v49, v29) == v48)
    {
      v102 = *(v28 + 464);
      v103 = *(v28 + 424);
      v104 = OUTLINED_FUNCTION_14_1();
      v105(v104);
      v106 = OUTLINED_FUNCTION_23();
      v107(v106);
      sub_1CA94A2A8();
      v108 = v103;
      v109 = sub_1CA94A1A8();
      v110 = OUTLINED_FUNCTION_70();
      v102(v110);
      v34 = 0;
      v111 = *(v109 + 16);
      while (1)
      {
        if (v111 == v34)
        {

          v127 = 1;
          goto LABEL_43;
        }

        if (v34 >= *(v109 + 16))
        {
          goto LABEL_52;
        }

        v112 = *(v28 + 512);
        OUTLINED_FUNCTION_9_6();
        v115(v108, v113 + v114 * v34);
        v116 = sub_1CA94B228();
        v108 = v117;
        v118 = [v112 key];
        v119 = sub_1CA94C3A8();
        v121 = v120;

        v122 = v116 == v119 && v108 == v121;
        if (v122)
        {
          break;
        }

        v123 = sub_1CA94D7F8();

        if (v123)
        {
          goto LABEL_42;
        }

        v124 = OUTLINED_FUNCTION_71_2();
        v125(v124);
        ++v34;
      }

LABEL_42:

      v128 = OUTLINED_FUNCTION_70_4();
      v126 = v129(v128);
      v127 = 0;
LABEL_43:
      OUTLINED_FUNCTION_10_5(v126, v127);
      if (v122)
      {
        sub_1CA323C64(*(v28 + 296), &qword_1EC444D00);
      }

      else
      {
        OUTLINED_FUNCTION_182_0();
        v130 = OUTLINED_FUNCTION_43_4();
        v131(v130);
      }

      v132 = OUTLINED_FUNCTION_181_0();
      OUTLINED_FUNCTION_69_2(v132);
      if (qword_1EC442008 != -1)
      {
        goto LABEL_53;
      }

      goto LABEL_47;
    }

    v33 = *(v28 + 512);
    v40 = *(v28 + 368);
    v54 = *(v28 + 352);
    v53 = *(v28 + 360);
    v55 = *(v53 + 8);
    v34 = (v53 + 8);
    v55(*(v28 + 376), v54);

    swift_unknownObjectRelease();
    v55(v40, v54);
    OUTLINED_FUNCTION_190_0();
LABEL_13:
    OUTLINED_FUNCTION_91_1();
    if (v122)
    {
      break;
    }

    if ((v56 & 0xC000000000000001) != 0)
    {
      v57 = MEMORY[0x1CCAA22D0](v40);
    }

    else
    {
      OUTLINED_FUNCTION_61_2();
      if (v60)
      {
        goto LABEL_51;
      }

      v57 = OUTLINED_FUNCTION_179_0(v58, v59);
    }

    v61 = v57;
    *(v28 + 512) = v57;
    *(v28 + 520) = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      OUTLINED_FUNCTION_12_0(&qword_1EC442008);
LABEL_47:
      OUTLINED_FUNCTION_60_3();
      v133 = OUTLINED_FUNCTION_111_1();
      OUTLINED_FUNCTION_34_4(v133, &protocol witness table for DatabaseContainerDefinitionProvider);
      OUTLINED_FUNCTION_180_0();
      v134 = v34;

      v135 = swift_task_alloc();
      v136 = OUTLINED_FUNCTION_160_0(v135);
      *v136 = v137;
      OUTLINED_FUNCTION_2_16(v136);
      OUTLINED_FUNCTION_53();

      return sub_1CA6337C0();
    }

    objc_opt_self();
    v62 = swift_dynamicCastObjCClass();
    if (v62)
    {
      v63 = v62;
      v64 = v61;
      if ([v63 loadsDefaultStateAsynchronously])
      {
        OUTLINED_FUNCTION_159_1();
        *(v28 + 16) = v82;
        OUTLINED_FUNCTION_24_5();
        v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444378, &unk_1CA983160);
        OUTLINED_FUNCTION_1_15(v83);
        *(v28 + 88) = 1107296256;
        OUTLINED_FUNCTION_3_11(&block_descriptor_1);
        v84 = OUTLINED_FUNCTION_141();
        [v84 v85];
        OUTLINED_FUNCTION_53();

        return MEMORY[0x1EEE6DEC8](v86);
      }
    }
  }

  v65 = *(v28 + 480);
  v66 = *(v28 + 216);
  sub_1CA949C58();
  v67 = v65;
  sub_1CA94C218();
  v68 = v66;
  v69 = sub_1CA949F68();
  v70 = sub_1CA94CC08();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = *(v28 + 480);
    v72 = *(v28 + 448);
    v73 = *(v28 + 456);
    v148 = *(v28 + 256);
    v143 = *(v28 + 240);
    v145 = *(v28 + 232);
    v74 = *(v28 + 216);
    OUTLINED_FUNCTION_113_0();
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    a16 = swift_slowAlloc();
    *v75 = 136315650;
    v77 = sub_1CA26B54C(v72, v73, &a16);

    *(v75 + 4) = v77;
    *(v75 + 12) = 2080;
    v78 = OUTLINED_FUNCTION_140_1([v74 state]);
    type metadata accessor for WFActionRegistryState(v78);
    v79 = sub_1CA94C408();
    sub_1CA26B54C(v79, v80, &a16);
    OUTLINED_FUNCTION_105_1();

    *(v75 + 14) = v77;
    *(v75 + 22) = 2112;
    *(v75 + 24) = v71;
    *v76 = v71;
    v81 = v71;
    _os_log_impl(&dword_1CA256000, v69, v70, "Produced action %s from registry (status = %s = %@", v75, 0x20u);
    sub_1CA323C64(v76, &qword_1EC444AE0);
    OUTLINED_FUNCTION_154();
    MEMORY[0x1CCAA4BF0]();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_154();
    MEMORY[0x1CCAA4BF0]();
    OUTLINED_FUNCTION_154();
    MEMORY[0x1CCAA4BF0]();

    (*(v143 + 8))(v148, v145);
  }

  else
  {
    OUTLINED_FUNCTION_109_1();

    v88 = OUTLINED_FUNCTION_41_1();
    v89(v88);
  }

  OUTLINED_FUNCTION_13_8();
  v140 = v90;
  v141 = v91;
  v142 = v92;
  v144 = *(v28 + 288);
  v146 = *(v28 + 264);
  v147 = *(v28 + 256);
  v149 = *(v28 + 248);
  OUTLINED_FUNCTION_112_1(v93);

  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_53();

  return v96(v94, v95, v96, v97, v98, v99, v100, v101, v140, v141, v142, v144, v146, v147, v149, a16, a17, a18, a19, a20);
}

uint64_t sub_1CA319F94(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_1CA35FF80();
  }

  else
  {
    if (a2)
    {
      *(&v11 + 1) = swift_getObjectType();
      *&v10 = a2;
      sub_1CA2C0A20(&v10, &v8);
    }

    else
    {
      v8 = 0u;
      v9 = 0u;
    }

    v10 = v8;
    v11 = v9;
    swift_unknownObjectRetain();
    return sub_1CA35E710(v5, &v10);
  }
}

uint64_t sub_1CA31A054@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v39 = a3;
  v40 = a2;
  v44 = a1;
  v3 = sub_1CA94B258();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CA94A288();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444D00, &qword_1CA988B80);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v38 = &v37 - v12;
  sub_1CA94A2A8();
  v13 = sub_1CA94A1A8();
  (*(v8 + 8))(v10, v7);
  v14 = 0;
  v15 = *(v13 + 16);
  v41 = v4 + 16;
  v42 = v15;
  v43 = v4;
  v16 = (v4 + 8);
  while (1)
  {
    if (v42 == v14)
    {

      v28 = 1;
      v29 = v38;
      goto LABEL_13;
    }

    if (v14 >= *(v13 + 16))
    {
      __break(1u);
      goto LABEL_16;
    }

    v17 = v3;
    (*(v43 + 16))(v6, v13 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v14, v3);
    v18 = v6;
    v19 = sub_1CA94B228();
    v21 = v20;
    v22 = [v44 key];
    v23 = sub_1CA94C3A8();
    v25 = v24;

    if (v19 == v23 && v21 == v25)
    {
      break;
    }

    v27 = sub_1CA94D7F8();

    if (v27)
    {
      goto LABEL_12;
    }

    v6 = v18;
    v3 = v17;
    (*v16)(v18, v17);
    ++v14;
  }

LABEL_12:

  v3 = v17;
  v29 = v38;
  (*(v43 + 32))(v38, v18, v17);
  v28 = 0;
LABEL_13:
  __swift_storeEnumTagSinglePayload(v29, v28, 1, v3);
  if (qword_1EC442008 == -1)
  {
    goto LABEL_14;
  }

LABEL_16:
  swift_once();
LABEL_14:
  v30 = qword_1EC442010;
  v31 = type metadata accessor for DatabaseContainerDefinitionProvider();
  v33 = v39;
  v32 = v40;
  v39[3] = v31;
  v33[4] = &protocol witness table for DatabaseContainerDefinitionProvider;
  *v33 = v30;
  v34 = v44;
  v33[5] = v44;
  v33[6] = v32;
  type metadata accessor for ContentGraphRepresentationContext(0);
  sub_1CA323BCC();

  v35 = v34;
  return swift_unknownObjectRetain();
}

uint64_t ToolInvocationBox.processUnion(parameter:variableSource:)()
{
  OUTLINED_FUNCTION_0();
  v1[20] = v2;
  v1[21] = v0;
  OUTLINED_FUNCTION_183(v3);
  v4 = sub_1CA94B1C8();
  v1[22] = v4;
  OUTLINED_FUNCTION_12(v4);
  v1[23] = v5;
  v1[24] = OUTLINED_FUNCTION_45();
  v6 = sub_1CA94A288();
  v1[25] = v6;
  OUTLINED_FUNCTION_12(v6);
  v1[26] = v7;
  v1[27] = OUTLINED_FUNCTION_45();
  v8 = type metadata accessor for TypedValueConversionContext(0);
  v1[28] = v8;
  OUTLINED_FUNCTION_18_0(v8);
  v1[29] = OUTLINED_FUNCTION_45();
  v9 = sub_1CA94AC88();
  v1[30] = v9;
  OUTLINED_FUNCTION_12(v9);
  v1[31] = v10;
  v1[32] = OUTLINED_FUNCTION_45();
  v11 = type metadata accessor for ContentGraphRepresentationContext(0);
  OUTLINED_FUNCTION_18_0(v11);
  v1[33] = OUTLINED_FUNCTION_45();
  v12 = sub_1CA94AC68();
  v1[34] = v12;
  OUTLINED_FUNCTION_12(v12);
  v1[35] = v13;
  v1[36] = OUTLINED_FUNCTION_45();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444C80, &qword_1CA983128);
  OUTLINED_FUNCTION_18_0(v14);
  v1[37] = OUTLINED_FUNCTION_45();
  v15 = sub_1CA94AFA8();
  v1[38] = v15;
  OUTLINED_FUNCTION_12(v15);
  v1[39] = v16;
  v1[40] = OUTLINED_FUNCTION_13_5();
  v1[41] = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}

uint64_t sub_1CA31A684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v20 = v18[37];
  v21 = v18[21] + OBJC_IVAR___WFToolInvocation_toolInvocation;
  sub_1CA94A2C8();
  v22 = OUTLINED_FUNCTION_126_1();
  sub_1CA94C3A8();
  OUTLINED_FUNCTION_194();

  OUTLINED_FUNCTION_5_15();
  v23 = OUTLINED_FUNCTION_126();
  sub_1CA31194C(v23, v24, v21, v25, v26);

  OUTLINED_FUNCTION_41(v20);
  if (v27)
  {
    v28 = v18[19];
    sub_1CA323C64(v18[37], &unk_1EC444C80);
    v29 = [v28 (v19 + 632)];
    sub_1CA94C3A8();
    OUTLINED_FUNCTION_191();

    v30 = sub_1CA322384();
    v31 = OUTLINED_FUNCTION_127(&type metadata for ToolInvocationBox.Error, v30);
    OUTLINED_FUNCTION_127_0(v31, v32);
    OUTLINED_FUNCTION_31_4(v18[41]);

    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_99();

    __asm { BRAA            X1, X16 }
  }

  v35 = OUTLINED_FUNCTION_141();
  v36(v35);
  v37 = OUTLINED_FUNCTION_23();
  v38(v37);
  v39 = OUTLINED_FUNCTION_20_0();
  v41 = v40(v39);
  if (v41 == *MEMORY[0x1E69DB120])
  {
    v42 = v18[40];
    v43 = v18[31];
    v44 = v18[30];
    v46 = v18[26];
    v45 = v18[27];
    v47 = v18[24];
    v71 = v18[32];
    v72 = v18[25];
    v48 = v18[23];
    v73 = v18[22];
    v49 = OUTLINED_FUNCTION_14_1();
    v50(v49);
    (*(v43 + 32))(v71, v42, v44);
    sub_1CA94A2A8();
    sub_1CA94A1E8();
    v51 = (*(v46 + 8))(v45, v72);
    MEMORY[0x1CCA9FFE0](v51);
    (*(v48 + 8))(v47, v73);
    if (qword_1EC4420F0 != -1)
    {
      OUTLINED_FUNCTION_97_1(&qword_1EC4420F0);
    }

    v53 = v18[28];
    v52 = v18[29];
    v54 = qword_1EC4420F8;
    v55 = (v52 + v53[5]);
    v55[3] = type metadata accessor for DatabaseTypeDefinitionProvider();
    v55[4] = &protocol witness table for DatabaseTypeDefinitionProvider;
    *v55 = v54;
    v56 = objc_opt_self();

    *(v52 + v53[6]) = [v56 defaultContext];
    *(v52 + v53[7]) = 0;
    v57 = swift_task_alloc();
    v18[44] = v57;
    *v57 = v18;
    v57[1] = sub_1CA31B0AC;
    OUTLINED_FUNCTION_73_0(v18[32]);
    OUTLINED_FUNCTION_99();

    return TypedValueTransformer.transform(input:with:)();
  }

  else if (v41 == *MEMORY[0x1E69DB128])
  {
    (*(v18[39] + 96))(v18[40], v18[38]);
    v60 = OUTLINED_FUNCTION_106_1();
    v61(v60);
    v62 = OUTLINED_FUNCTION_204();
    sub_1CA31A054(v62, v63, v64);
    v18[42] = TypedValue.ID.variable.getter();
    v18[2] = v18;
    v18[7] = v18 + 18;
    v18[3] = sub_1CA31ABB8;
    swift_continuation_init();
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444D50, &qword_1CA987A60);
    OUTLINED_FUNCTION_1_15(v66);
    v18[11] = 1107296256;
    OUTLINED_FUNCTION_22_5();
    OUTLINED_FUNCTION_169_0();
    [v67 v68];
    OUTLINED_FUNCTION_99();

    return MEMORY[0x1EEE6DEC8](v69);
  }

  else
  {
    OUTLINED_FUNCTION_99();

    return sub_1CA94D7E8();
  }
}

uint64_t sub_1CA31ABB8()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 344) = *(v3 + 48);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA31ACB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_157();
  OUTLINED_FUNCTION_189();
  v15 = *(v14 + 144);

  v16 = [v15 items];
  sub_1CA25B3D0(0, &qword_1EDB9F790, 0x1E6996D58);
  OUTLINED_FUNCTION_186_0();
  v17 = sub_1CA94C658();

  if (sub_1CA25B410(v17))
  {
    v18 = (v17 & 0xC000000000000001);
    sub_1CA275D70(0, (v17 & 0xC000000000000001) == 0, v17);
    if ((v17 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1CCAA22D0](0, v17);
    }

    else
    {
      v19 = *(v17 + 32);
    }

    OUTLINED_FUNCTION_105_1();

    v20 = [v17 & 0xC000000000000001 internalRepresentation];
    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    if (v21)
    {
      v56 = *(v14 + 328);
      v23 = *(v14 + 304);
      v22 = *(v14 + 312);
      v24 = *(v14 + 280);
      v25 = *(v14 + 288);
      v27 = *(v14 + 264);
      v26 = *(v14 + 272);
      v57 = [v21 object];

      OUTLINED_FUNCTION_0_15();
      sub_1CA323DA8(v27, v28);
      (*(v24 + 8))(v25, v26);
      (*(v22 + 8))(v56, v23);
      OUTLINED_FUNCTION_31_4(*(v14 + 328));

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_24();

      return v31(v29, v30, v31, v32, v33, v34, v35, v36, v56, v57, a11, a12, a13, a14);
    }

    v38 = v15;
  }

  else
  {
    v38 = v15;
  }

  v58 = *(v14 + 328);
  v39 = *(v14 + 304);
  v40 = *(v14 + 312);
  v41 = *(v14 + 280);
  v42 = *(v14 + 288);
  v44 = *(v14 + 264);
  v43 = *(v14 + 272);
  v45 = sub_1CA322384();
  OUTLINED_FUNCTION_127(&type metadata for ToolInvocationBox.Error, v45);
  *v46 = xmmword_1CA982010;
  *(v46 + 16) = 2;
  swift_willThrow();

  OUTLINED_FUNCTION_0_15();
  sub_1CA323DA8(v44, v47);
  (*(v41 + 8))(v42, v43);
  (*(v40 + 8))(v58, v39);
  OUTLINED_FUNCTION_31_4(*(v14 + 328));

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_24();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, v58, a11, a12, a13, a14);
}

uint64_t sub_1CA31AFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  v13 = *(v12 + 336);
  swift_willThrow();

  OUTLINED_FUNCTION_0_15();
  sub_1CA323DA8(v14, v15);
  v16 = OUTLINED_FUNCTION_70();
  v17(v16);
  v18 = OUTLINED_FUNCTION_20_0();
  v19(v18);
  OUTLINED_FUNCTION_31_4(*(v12 + 328));

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_23_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_1CA31B0AC()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_13();
  *v8 = v7;
  *(v5 + 360) = v0;

  if (!v0)
  {
    *(v5 + 368) = v3;
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1CA31B1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  v13 = v12[46];
  v14 = v12[29];
  [v13 value];

  OUTLINED_FUNCTION_4_14();
  sub_1CA323DA8(v14, v15);
  v16 = OUTLINED_FUNCTION_126();
  v17(v16);
  v18 = OUTLINED_FUNCTION_69_0();
  v19(v18);
  OUTLINED_FUNCTION_31_4(v12[41]);

  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_23_0();

  return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_1CA31B2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_4_14();
  sub_1CA323DA8(v13, v14);
  v15 = OUTLINED_FUNCTION_69_0();
  v16(v15);
  v17 = OUTLINED_FUNCTION_3_3();
  v18(v17);
  OUTLINED_FUNCTION_31_4(*(v12 + 328));

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_23_0();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t sub_1CA31B444(void *a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v7 = a1;
  swift_unknownObjectRetain();
  a4;
  v8 = swift_task_alloc();
  v4[6] = v8;
  *v8 = v4;
  v8[1] = sub_1CA31B51C;

  return ToolInvocationBox.processUnion(parameter:variableSource:)();
}

uint64_t sub_1CA31B51C()
{
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_48_1();
  v4 = *(v3 + 32);
  v5 = *(v3 + 16);
  v6 = *v2;
  OUTLINED_FUNCTION_13();
  *v7 = v6;

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_195_0();
  v9 = *(v8 + 40);
  if (v0)
  {
    sub_1CA948AC8();

    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_185_0();
    v10();

    _Block_release(v9);
  }

  else
  {
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_199_0();
    v11();
    _Block_release(v9);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_65_2();

  return v12();
}

uint64_t ToolInvocationBox.value(parameter:ofClass:variableSource:)()
{
  OUTLINED_FUNCTION_0();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_1CA94ADC8();
  v1[6] = v5;
  OUTLINED_FUNCTION_12(v5);
  v1[7] = v6;
  v1[8] = OUTLINED_FUNCTION_45();
  v7 = sub_1CA94A908();
  v1[9] = v7;
  OUTLINED_FUNCTION_12(v7);
  v1[10] = v8;
  v1[11] = OUTLINED_FUNCTION_45();
  v9 = sub_1CA94AC88();
  v1[12] = v9;
  OUTLINED_FUNCTION_12(v9);
  v1[13] = v10;
  v1[14] = OUTLINED_FUNCTION_13_5();
  v1[15] = swift_task_alloc();
  v11 = sub_1CA94B0E8();
  v1[16] = v11;
  OUTLINED_FUNCTION_12(v11);
  v1[17] = v12;
  v1[18] = OUTLINED_FUNCTION_13_5();
  v13 = swift_task_alloc();
  OUTLINED_FUNCTION_183(v13);
  v14 = sub_1CA94B1C8();
  v1[20] = v14;
  OUTLINED_FUNCTION_12(v14);
  v1[21] = v15;
  v1[22] = OUTLINED_FUNCTION_45();
  v16 = sub_1CA94A288();
  v1[23] = v16;
  OUTLINED_FUNCTION_12(v16);
  v1[24] = v17;
  v1[25] = OUTLINED_FUNCTION_45();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444C80, &qword_1CA983128);
  OUTLINED_FUNCTION_18_0(v18);
  v19 = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_140_1(v19);
  v20 = sub_1CA94AFA8();
  v1[27] = v20;
  OUTLINED_FUNCTION_12(v20);
  v1[28] = v21;
  v1[29] = OUTLINED_FUNCTION_13_5();
  v1[30] = swift_task_alloc();
  v22 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v22, v23, v24);
}

uint64_t sub_1CA31B974(uint64_t a1)
{
  v76 = v1;
  v3 = v1[26];
  v4 = v1[5] + OBJC_IVAR___WFToolInvocation_toolInvocation;
  sub_1CA94A2C8();
  v5 = OUTLINED_FUNCTION_126_1();
  sub_1CA94C3A8();
  OUTLINED_FUNCTION_194();

  OUTLINED_FUNCTION_5_15();
  v6 = OUTLINED_FUNCTION_126();
  sub_1CA31194C(v6, v7, v4, v8, v9);

  OUTLINED_FUNCTION_41(v3);
  if (v10)
  {
    v11 = v1[2];
    sub_1CA323C64(v1[26], &unk_1EC444C80);
    v12 = [v11 (v2 + 632)];
    sub_1CA94C3A8();
    OUTLINED_FUNCTION_191();

    v13 = sub_1CA322384();
    v14 = OUTLINED_FUNCTION_127(&type metadata for ToolInvocationBox.Error, v13);
    OUTLINED_FUNCTION_127_0(v14, v15);
    OUTLINED_FUNCTION_29_5();

    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_202();

    __asm { BRAA            X1, X16 }
  }

  v18 = v1[25];
  v19 = v1[24];
  v21 = v1[21];
  v20 = v1[22];
  v71 = v1[23];
  v73 = v1[20];
  v69 = v1[19];
  v23 = v1[17];
  v22 = v1[18];
  v24 = v1[16];
  (*(v1[28] + 32))(v1[30], v1[26], v1[27]);
  sub_1CA94A2A8();
  sub_1CA94A1E8();
  (*(v19 + 8))(v18, v71);
  sub_1CA94B118();
  (*(v21 + 8))(v20, v73);
  (*(v23 + 104))(v22, *MEMORY[0x1E69DB2D0], v24);
  OUTLINED_FUNCTION_104();
  v25 = sub_1CA94B0D8();
  v26 = *(v23 + 8);
  v27 = OUTLINED_FUNCTION_188();
  v26(v27);
  (v26)(v69, v24);
  if (v25)
  {
    (*(v1[28] + 16))(v1[29], v1[30], v1[27]);
    v28 = OUTLINED_FUNCTION_3_3();
    if (v29(v28) == *MEMORY[0x1E69DB120])
    {
      v30 = OUTLINED_FUNCTION_14_1();
      v31(v30);
      v32 = OUTLINED_FUNCTION_23();
      v33(v32);
      v34 = OUTLINED_FUNCTION_116();
      v35(v34);
      v36 = OUTLINED_FUNCTION_69_0();
      if (v37(v36) == *MEMORY[0x1E69DAE28])
      {
        v38 = v1[11];
        v39 = v1[9];
        v40 = v1[10];
        v41 = OUTLINED_FUNCTION_14_1();
        v42(v41);
        v43 = swift_projectBox();
        (*(v40 + 16))(v38, v43, v39);

        sub_1CA94A8B8();
        v44 = OUTLINED_FUNCTION_70();
        if (v45(v44) == *MEMORY[0x1E69DB098])
        {
          v46 = v1[28];
          v72 = v1[27];
          v74 = v1[30];
          v47 = v1[13];
          v68 = v1[12];
          v70 = v1[15];
          v49 = v1[10];
          v48 = v1[11];
          v67 = v1[9];
          v50 = OUTLINED_FUNCTION_14_1();
          v51(v50);
          sub_1CA94C218();

          sub_1CA94A898();
          v52 = objc_allocWithZone(MEMORY[0x1E69AC7D8]);
          v53 = sub_1CA320B2C();
          v75[3] = sub_1CA25B3D0(0, &qword_1EC445B70, 0x1E69AC7D8);
          v75[0] = v53;
          v54 = [objc_allocWithZone(MEMORY[0x1E69AC7F0]) init];
          v55 = objc_allocWithZone(MEMORY[0x1E69ACA90]);
          sub_1CA320AB4(v75, v54);
          (*(v49 + 8))(v48, v67);
          (*(v47 + 8))(v70, v68);
          (*(v46 + 8))(v74, v72);
          OUTLINED_FUNCTION_29_5();

          OUTLINED_FUNCTION_2_4();
          OUTLINED_FUNCTION_202();

          __asm { BRAA            X2, X16 }
        }

        (*(v1[10] + 8))(v1[11], v1[9]);
        v60 = OUTLINED_FUNCTION_3_3();
        v61(v60);
        v62 = OUTLINED_FUNCTION_69_0();
        v63(v62);
      }

      else
      {
        v58 = *(v1[13] + 8);
        (v58)(v1[15], v1[12]);
        v59 = OUTLINED_FUNCTION_3_3();
        v58(v59);
      }
    }

    else
    {
      (*(v1[28] + 8))(v1[29], v1[27]);
    }
  }

  v64 = swift_task_alloc();
  v1[31] = v64;
  *v64 = v1;
  v64[1] = sub_1CA31C018;
  OUTLINED_FUNCTION_73_0(v1[30]);
  OUTLINED_FUNCTION_202();

  return ToolInvocationBox.processedValue(from:for:ofClass:variableSource:)();
}

uint64_t sub_1CA31C018()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_13();
  *v8 = v7;
  *(v5 + 256) = v0;

  if (!v0)
  {
    *(v5 + 264) = v3;
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1CA31C128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_157();
  OUTLINED_FUNCTION_189();
  (*(v14[28] + 8))(v14[30], v14[27]);
  OUTLINED_FUNCTION_29_5();
  v25 = v14[8];
  v26 = v15;

  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_24();

  return v18(v16, v17, v18, v19, v20, v21, v22, v23, a9, v25, v26, a12, a13, a14);
}

uint64_t sub_1CA31C208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_157();
  OUTLINED_FUNCTION_189();
  (*(v14[28] + 8))(v14[30], v14[27]);
  OUTLINED_FUNCTION_29_5();
  v25 = v14[8];
  v26 = v15;

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_24();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, v25, v26, a12, a13, a14);
}

uint64_t ToolInvocationBox.processedValue(from:for:ofClass:variableSource:)()
{
  OUTLINED_FUNCTION_0();
  v1[28] = v2;
  v1[29] = v0;
  v1[26] = v3;
  v1[27] = v4;
  v1[25] = v5;
  v6 = sub_1CA94AC88();
  v1[30] = v6;
  OUTLINED_FUNCTION_12(v6);
  v1[31] = v7;
  v1[32] = OUTLINED_FUNCTION_45();
  v8 = sub_1CA94AC68();
  v1[33] = v8;
  OUTLINED_FUNCTION_12(v8);
  v1[34] = v9;
  v1[35] = OUTLINED_FUNCTION_45();
  v10 = sub_1CA94AFA8();
  v1[36] = v10;
  OUTLINED_FUNCTION_12(v10);
  v1[37] = v11;
  v1[38] = OUTLINED_FUNCTION_45();
  v12 = type metadata accessor for ContentGraphRepresentationContext(0);
  OUTLINED_FUNCTION_18_0(v12);
  v1[39] = OUTLINED_FUNCTION_45();
  v13 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

{
  OUTLINED_FUNCTION_0();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = sub_1CA94AFA8();
  v1[7] = v6;
  OUTLINED_FUNCTION_12(v6);
  v1[8] = v7;
  v1[9] = OUTLINED_FUNCTION_45();
  v8 = sub_1CA94AC88();
  v1[10] = v8;
  OUTLINED_FUNCTION_12(v8);
  v1[11] = v9;
  v1[12] = OUTLINED_FUNCTION_45();
  v10 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1CA31C448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_6();
  v19 = *(v18 + 304);
  v20 = *(v18 + 288);
  v21 = *(v18 + 296);
  v22 = *(v18 + 200);
  sub_1CA31A054(*(v18 + 208), *(v18 + 224), *(v18 + 312));
  (*(v21 + 16))(v19, v22, v20);
  v23 = OUTLINED_FUNCTION_20_0();
  v25 = v24(v23);
  if (v25 == *MEMORY[0x1E69DB120])
  {
    v26 = OUTLINED_FUNCTION_14_1();
    v27(v26);
    v28 = OUTLINED_FUNCTION_46_0();
    v29(v28);
    v30 = swift_task_alloc();
    *(v18 + 360) = v30;
    *v30 = v18;
    v30[1] = sub_1CA31CBD4;
    OUTLINED_FUNCTION_73_0(*(v18 + 216));
    OUTLINED_FUNCTION_9_2();

    return TypedValue.resolve(to:in:)();
  }

  else if (v25 == *MEMORY[0x1E69DB128])
  {
    v33 = OUTLINED_FUNCTION_14_1();
    v34(v33);
    v35 = OUTLINED_FUNCTION_46_0();
    v36(v35);
    *(v18 + 320) = TypedValue.ID.variable.getter();
    *(v18 + 16) = v18;
    *(v18 + 56) = v18 + 192;
    *(v18 + 24) = sub_1CA31C740;
    swift_continuation_init();
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444D50, &qword_1CA987A60);
    OUTLINED_FUNCTION_1_15(v38);
    *(v18 + 88) = 1107296256;
    OUTLINED_FUNCTION_22_5();
    OUTLINED_FUNCTION_169_0();
    [v39 v40];
    OUTLINED_FUNCTION_9_2();

    return MEMORY[0x1EEE6DEC8](v41);
  }

  else
  {
    OUTLINED_FUNCTION_9_2();

    return sub_1CA94D7E8();
  }
}

uint64_t sub_1CA31C740()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 328) = *(v3 + 48);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA31C83C()
{
  OUTLINED_FUNCTION_0();
  v1 = v0[40];
  v0[42] = v0[24];

  v2 = swift_task_alloc();
  v0[43] = v2;
  *v2 = v0;
  v2[1] = sub_1CA31C8E0;
  OUTLINED_FUNCTION_73_0(v0[27]);

  return WFContentCollection.resolve(to:in:)();
}

uint64_t sub_1CA31C8E0()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v2[18] = v1;
  v2[19] = v4;
  v2[20] = v0;
  v5 = *v1;
  OUTLINED_FUNCTION_13();
  *v6 = v5;
  *(v7 + 352) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1CA31C9E0()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 320);
  swift_willThrow();

  v2 = *(v0 + 312);
  v3 = OUTLINED_FUNCTION_152_1();
  v4(v3);
  OUTLINED_FUNCTION_0_15();
  sub_1CA323DA8(v2, v5);
  OUTLINED_FUNCTION_110_0();

  OUTLINED_FUNCTION_5();

  return v6();
}

uint64_t sub_1CA31CA8C()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 312);

  v2 = OUTLINED_FUNCTION_41_1();
  v3(v2);
  OUTLINED_FUNCTION_0_15();
  sub_1CA323DA8(v1, v4);
  OUTLINED_FUNCTION_110_0();

  v5 = OUTLINED_FUNCTION_1_3();

  return v6(v5);
}

uint64_t sub_1CA31CB34()
{
  OUTLINED_FUNCTION_14();

  v1 = *(v0 + 312);
  v2 = OUTLINED_FUNCTION_152_1();
  v3(v2);
  OUTLINED_FUNCTION_0_15();
  sub_1CA323DA8(v1, v4);
  OUTLINED_FUNCTION_110_0();

  OUTLINED_FUNCTION_5();

  return v5();
}

uint64_t sub_1CA31CBD4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v2[21] = v1;
  v2[22] = v4;
  v2[23] = v0;
  v5 = *v1;
  OUTLINED_FUNCTION_13();
  *v6 = v5;
  *(v7 + 368) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1CA31CCD4()
{
  OUTLINED_FUNCTION_14();
  v1 = OUTLINED_FUNCTION_197_0();
  v2(v1);
  OUTLINED_FUNCTION_0_15();
  sub_1CA323DA8(v0, v3);
  OUTLINED_FUNCTION_110_0();

  v4 = OUTLINED_FUNCTION_1_3();

  return v5(v4);
}

uint64_t sub_1CA31CD68()
{
  OUTLINED_FUNCTION_14();
  v1 = OUTLINED_FUNCTION_197_0();
  v2(v1);
  OUTLINED_FUNCTION_0_15();
  sub_1CA323DA8(v0, v3);
  OUTLINED_FUNCTION_110_0();

  OUTLINED_FUNCTION_5();

  return v4();
}

uint64_t sub_1CA31CEA0(void *a1, uint64_t a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[3] = a3;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = _Block_copy(aBlock);
  swift_getObjCClassMetadata();
  v8 = a1;
  swift_unknownObjectRetain();
  a5;
  v9 = swift_task_alloc();
  v5[6] = v9;
  *v9 = v5;
  v9[1] = sub_1CA323E14;

  return ToolInvocationBox.value(parameter:ofClass:variableSource:)();
}

uint64_t sub_1CA31D090()
{
  OUTLINED_FUNCTION_14();
  sub_1CA94CE48();
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  (*(v0[11] + 16))(v1, v0[12], v0[10]);
  (*(v2 + 104))(v1, *MEMORY[0x1E69DB120], v3);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1CA31D1D0;
  OUTLINED_FUNCTION_73_0(v0[9]);

  return ToolInvocationBox.processedValue(from:for:ofClass:variableSource:)();
}

uint64_t sub_1CA31D1D0()
{
  OUTLINED_FUNCTION_6();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_13();
  *v6 = v5;
  *v6 = *v1;
  v5[14] = v0;

  v7 = v4[9];
  v8 = v4[8];
  v9 = v4[7];
  if (!v0)
  {
    v5[15] = v3;
  }

  (*(v8 + 8))(v7, v9);
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1CA31D344()
{
  OUTLINED_FUNCTION_0();
  (*(v0[11] + 8))(v0[12], v0[10]);

  OUTLINED_FUNCTION_2_4();
  v2 = v0[15];

  return v1(v2);
}

uint64_t sub_1CA31D3C8()
{
  OUTLINED_FUNCTION_0();
  (*(v0[11] + 8))(v0[12], v0[10]);

  OUTLINED_FUNCTION_5();

  return v1();
}

uint64_t sub_1CA31D4FC(void *a1, void *a2, uint64_t a3, uint64_t a4, void *aBlock, void *a6)
{
  v6[4] = a4;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a2;
  v6[6] = _Block_copy(aBlock);
  swift_getObjCClassMetadata();
  v10 = a1;
  v11 = a2;
  swift_unknownObjectRetain();
  a6;
  v12 = swift_task_alloc();
  v6[7] = v12;
  *v12 = v6;
  v12[1] = sub_1CA31D604;

  return ToolInvocationBox.processedValue(from:for:ofClass:variableSource:)();
}

uint64_t sub_1CA31D604()
{
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_48_1();
  v4 = v3[5];
  v5 = v3[3];
  v6 = v3[2];
  v7 = *v2;
  OUTLINED_FUNCTION_13();
  *v8 = v7;

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_195_0();
  v10 = *(v9 + 48);
  if (v0)
  {
    sub_1CA948AC8();

    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_185_0();
    v11();

    _Block_release(v10);
  }

  else
  {
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_199_0();
    v12();
    _Block_release(v10);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_65_2();

  return v13();
}

uint64_t sub_1CA31D7BC()
{
  OUTLINED_FUNCTION_0();
  v2 = v1;
  v0[2] = v3;
  v0[3] = v1;
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1CA31D854;

  return TypedValue.ID.resolve(in:)(v2);
}

uint64_t sub_1CA31D854()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_13();
  *v8 = v7;
  v5[5] = v3;

  if (v0)
  {
    OUTLINED_FUNCTION_65_2();

    return v9();
  }

  else
  {
    v11 = swift_task_alloc();
    v5[6] = v11;
    *v11 = v7;
    v11[1] = sub_1CA31D9B8;
    OUTLINED_FUNCTION_73_0(v5[2]);

    return WFContentCollection.resolve(to:in:)();
  }
}

uint64_t sub_1CA31D9B8()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_13();
  *v8 = v7;
  *(v5 + 56) = v0;

  if (!v0)
  {
    *(v5 + 64) = v3;
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1CA31DAC8()
{
  OUTLINED_FUNCTION_0();

  OUTLINED_FUNCTION_2_4();
  v2 = *(v0 + 64);

  return v1(v2);
}

uint64_t sub_1CA31DB28()
{
  OUTLINED_FUNCTION_0();

  OUTLINED_FUNCTION_5();

  return v1();
}

uint64_t ToolInvocationBox.contentCollection(for:variableSource:)()
{
  OUTLINED_FUNCTION_0();
  v1[20] = v2;
  v1[21] = v0;
  OUTLINED_FUNCTION_183(v3);
  v4 = sub_1CA94AC88();
  v1[22] = v4;
  OUTLINED_FUNCTION_12(v4);
  v1[23] = v5;
  v1[24] = OUTLINED_FUNCTION_45();
  v6 = sub_1CA94AC68();
  v1[25] = v6;
  OUTLINED_FUNCTION_12(v6);
  v1[26] = v7;
  v1[27] = OUTLINED_FUNCTION_45();
  v8 = type metadata accessor for ContentGraphRepresentationContext(0);
  OUTLINED_FUNCTION_18_0(v8);
  v1[28] = OUTLINED_FUNCTION_45();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444C80, &qword_1CA983128);
  OUTLINED_FUNCTION_18_0(v9);
  v1[29] = OUTLINED_FUNCTION_45();
  v10 = sub_1CA94AFA8();
  v1[30] = v10;
  OUTLINED_FUNCTION_12(v10);
  v1[31] = v11;
  v1[32] = OUTLINED_FUNCTION_13_5();
  v1[33] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1CA31DD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_39_1();
  v20 = v18[29];
  v21 = v18[21] + OBJC_IVAR___WFToolInvocation_toolInvocation;
  sub_1CA94A2C8();
  v22 = OUTLINED_FUNCTION_126_1();
  sub_1CA94C3A8();
  OUTLINED_FUNCTION_194();

  OUTLINED_FUNCTION_5_15();
  v23 = OUTLINED_FUNCTION_126();
  sub_1CA31194C(v23, v24, v21, v25, v26);

  OUTLINED_FUNCTION_41(v20);
  if (v27)
  {
    v28 = v18[19];
    sub_1CA323C64(v18[29], &unk_1EC444C80);
    v29 = [v28 (v19 + 632)];
    sub_1CA94C3A8();
    OUTLINED_FUNCTION_191();

    v30 = sub_1CA322384();
    v31 = OUTLINED_FUNCTION_127(&type metadata for ToolInvocationBox.Error, v30);
    OUTLINED_FUNCTION_127_0(v31, v32);
    OUTLINED_FUNCTION_68_2();

    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_156_1();

    __asm { BRAA            X1, X16 }
  }

  (*(v18[31] + 32))(v18[33], v18[29], v18[30]);
  v35 = OUTLINED_FUNCTION_204();
  sub_1CA31A054(v35, v36, v37);
  v38 = OUTLINED_FUNCTION_116();
  v39(v38);
  v40 = OUTLINED_FUNCTION_69_0();
  v42 = v41(v40);
  if (v42 == *MEMORY[0x1E69DB120])
  {
    v43 = OUTLINED_FUNCTION_14_1();
    v44(v43);
    v45 = OUTLINED_FUNCTION_46_0();
    v46(v45);
    v47 = swift_task_alloc();
    v18[36] = v47;
    *v47 = v18;
    v47[1] = sub_1CA31E3C4;
    OUTLINED_FUNCTION_73_0(v18[28]);
    OUTLINED_FUNCTION_156_1();

    return TypedValue.resolve(in:)();
  }

  else if (v42 == *MEMORY[0x1E69DB128])
  {
    v50 = OUTLINED_FUNCTION_14_1();
    v51(v50);
    v52 = OUTLINED_FUNCTION_46_0();
    v53(v52);
    v18[34] = TypedValue.ID.variable.getter();
    v18[2] = v18;
    v18[7] = v18 + 18;
    v18[3] = sub_1CA31E114;
    swift_continuation_init();
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444D50, &qword_1CA987A60);
    OUTLINED_FUNCTION_1_15(v55);
    v18[11] = 1107296256;
    OUTLINED_FUNCTION_22_5();
    OUTLINED_FUNCTION_169_0();
    [v56 v57];
    OUTLINED_FUNCTION_156_1();

    return MEMORY[0x1EEE6DEC8](v58);
  }

  else
  {
    OUTLINED_FUNCTION_156_1();

    return sub_1CA94D7E8();
  }
}

uint64_t sub_1CA31E114()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 280) = *(v3 + 48);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA31E210()
{
  OUTLINED_FUNCTION_59_0();
  v1 = *(v0 + 224);

  v2 = OUTLINED_FUNCTION_126();
  v3(v2);
  OUTLINED_FUNCTION_0_15();
  sub_1CA323DA8(v1, v4);
  v5 = OUTLINED_FUNCTION_20_0();
  v6(v5);
  OUTLINED_FUNCTION_68_2();

  v7 = OUTLINED_FUNCTION_1_3();

  return v8(v7);
}

uint64_t sub_1CA31E2F0()
{
  OUTLINED_FUNCTION_59_0();
  v2 = *(v0 + 272);
  swift_willThrow();

  v3 = OUTLINED_FUNCTION_166_0();
  v4(v3);
  OUTLINED_FUNCTION_0_15();
  sub_1CA323DA8(v1, v5);
  v6 = OUTLINED_FUNCTION_20_0();
  v7(v6);
  OUTLINED_FUNCTION_68_2();

  OUTLINED_FUNCTION_5();

  return v8();
}

uint64_t sub_1CA31E3C4()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_13();
  *v8 = v7;
  *(v5 + 296) = v0;

  if (!v0)
  {
    *(v5 + 304) = v3;
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1CA31E4D4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_135_1();
  v4(v3);
  OUTLINED_FUNCTION_0_15();
  sub_1CA323DA8(v2, v5);
  v6 = OUTLINED_FUNCTION_3_3();
  v7(v6);
  OUTLINED_FUNCTION_68_2();

  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_217();

  return v10(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1CA31E58C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_135_1();
  v4(v3);
  OUTLINED_FUNCTION_0_15();
  sub_1CA323DA8(v2, v5);
  v6 = OUTLINED_FUNCTION_3_3();
  v7(v6);
  OUTLINED_FUNCTION_68_2();

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_217();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

id ToolInvocationBox.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1CA31E71C@<X0>(uint64_t a1@<X8>)
{
  v69 = a1;
  v70 = sub_1CA949E58();
  v75 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v71 = (&v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = sub_1CA94AFA8();
  v72 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v73 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4443E8, &qword_1CA983490);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v54 - v5;
  v7 = sub_1CA949E18();
  v76 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CA94A288();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR___WFToolInvocation_toolInvocation;
  sub_1CA94A2A8();
  sub_1CA323D64(&unk_1EC441D60, MEMORY[0x1E69DA9F8]);
  sub_1CA323D64(&qword_1EC441D18, MEMORY[0x1E69DAC70]);
  v15 = v77;
  v16 = sub_1CA949C48();
  if (v15)
  {
    return (*(v11 + 8))(v13, v10);
  }

  v58 = v7;
  v59 = v6;
  v67 = v14;
  v64 = v1;
  v19 = v16;
  v20 = v17;
  (*(v11 + 8))(v13, v10);
  sub_1CA949E08();
  v55 = v19;
  v56 = v20;
  v57 = v9;
  v77 = 0;
  v21 = sub_1CA94A2C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4443F0, &qword_1CA983498);
  result = sub_1CA94D668();
  v22 = 0;
  v24 = v21 + 64;
  v23 = *(v21 + 64);
  v65 = result;
  v66 = v21;
  v25 = 1 << *(v21 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v23;
  v28 = (v25 + 63) >> 6;
  v29 = v72;
  v62 = v72 + 16;
  v63 = (v72 + 8);
  v30 = v76;
  v60 = v75 + 32;
  v61 = result + 64;
  while (1)
  {
    v32 = v73;
    v31 = v74;
    if (!v27)
    {
      break;
    }

    v33 = __clz(__rbit64(v27));
    v68 = (v27 - 1) & v27;
LABEL_13:
    v37 = v33 | (v22 << 6);
    v38 = (*(v66 + 48) + 16 * v37);
    v40 = *v38;
    v39 = v38[1];
    (*(v29 + 16))(v73, *(v66 + 56) + *(v29 + 72) * v37, v74);
    sub_1CA94C218();
    v41 = v71;
    v42 = v77;
    sub_1CA31EE1C(v32, v71);
    v77 = v42;
    if (v42)
    {
      sub_1CA266F2C(v55, v56);

      (*v63)(v32, v31);
      return (*(v76 + 8))(v57, v58);
    }

    (*v63)(v32, v31);
    *(v61 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
    v43 = v65;
    v44 = (*(v65 + 48) + 16 * v37);
    *v44 = v40;
    v44[1] = v39;
    result = (*(v75 + 32))(*(v43 + 56) + *(v75 + 72) * v37, v41, v70);
    v45 = *(v43 + 16);
    v46 = __OFADD__(v45, 1);
    v47 = v45 + 1;
    if (v46)
    {
      goto LABEL_19;
    }

    *(v43 + 16) = v47;
    v30 = v76;
    v29 = v72;
    v27 = v68;
  }

  v34 = v22;
  v35 = v59;
  while (1)
  {
    v22 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v22 >= v28)
    {

      sub_1CA949E98();
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC8, &qword_1CA9834A0);
      MEMORY[0x1EEE9AC00](v48 - 8);
      v50 = &v54 - v49;
      sub_1CA94A2B8();
      v51 = sub_1CA948D28();
      __swift_storeEnumTagSinglePayload(v50, 0, 1, v51);
      sub_1CA949E88();
      v53 = v57;
      v52 = v58;
      (*(v30 + 16))(v35, v57, v58);
      __swift_storeEnumTagSinglePayload(v35, 0, 1, v52);
      sub_1CA949E68();
      sub_1CA949E78();
      sub_1CA266F2C(v55, v56);
      return (*(v30 + 8))(v53, v52);
    }

    v36 = *(v24 + 8 * v22);
    ++v34;
    if (v36)
    {
      v33 = __clz(__rbit64(v36));
      v68 = (v36 - 1) & v36;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1CA31EE1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v46 = a2;
  v3 = sub_1CA949DE8();
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CA94AC68();
  v49 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CA949DF8();
  v42 = *(v8 - 8);
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CA94AC88();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CA94AFA8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17, a1, v14);
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == *MEMORY[0x1E69DB120])
  {
    (*(v15 + 96))(v17, v14);
    (*(v11 + 32))(v13, v17, v10);
    sub_1CA323D64(&qword_1EC441D10, MEMORY[0x1E69DAE88]);
    sub_1CA323D64(&unk_1EC441D20, MEMORY[0x1E69DAC48]);
    v19 = v50;
    v20 = sub_1CA949C48();
    if (v19)
    {
      return (*(v11 + 8))(v13, v10);
    }

    v27 = v20;
    v28 = v21;
    v29 = v47;
    sub_1CA949DC8();
    (*(v11 + 8))(v13, v10);
    sub_1CA266F2C(v27, v28);
    v33 = v43;
    v34 = swift_allocBox();
    (*(v42 + 32))(v35, v29, v33);
    v36 = MEMORY[0x1E69AA310];
  }

  else
  {
    v23 = v50;
    if (v18 != *MEMORY[0x1E69DB128])
    {
      result = sub_1CA94D7E8();
      __break(1u);
      return result;
    }

    (*(v15 + 96))(v17, v14);
    v24 = v49;
    (*(v49 + 32))(v7, v17, v5);
    sub_1CA323D64(&qword_1EC4443F8, MEMORY[0x1E69DAE40]);
    sub_1CA323D64(&qword_1EC444400, MEMORY[0x1E69DAC40]);
    v25 = sub_1CA949C48();
    if (v23)
    {
      return (*(v24 + 8))(v7, v5);
    }

    v30 = v25;
    v31 = v26;
    v32 = v48;
    sub_1CA949DD8();
    (*(v24 + 8))(v7, v5);
    sub_1CA266F2C(v30, v31);
    v37 = v45;
    v34 = swift_allocBox();
    (*(v44 + 32))(v38, v32, v37);
    v36 = MEMORY[0x1E69AA318];
  }

  v39 = v46;
  *v46 = v34;
  v40 = *v36;
  v41 = sub_1CA949E58();
  return (*(*(v41 - 8) + 104))(v39, v40, v41);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ToolInvocationBox.donateToBiome()()
{
  sub_1CA949F78();
  OUTLINED_FUNCTION_1_0();
  v55 = v2;
  v56 = v1;
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_6_0();
  v58 = v4 - v3;
  OUTLINED_FUNCTION_25_0();
  sub_1CA949EA8();
  OUTLINED_FUNCTION_1_0();
  v51 = v6;
  v52 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_0();
  v9 = v8 - v7;
  v10 = sub_1CA94A3B8();
  OUTLINED_FUNCTION_1_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_19();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v18 = sub_1CA94A288();
  OUTLINED_FUNCTION_1_0();
  v57 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_19();
  v53 = v21 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v50 - v24;
  v54 = v0;
  sub_1CA94A2A8();
  sub_1CA94A208();
  sub_1CA94A3A8();
  OUTLINED_FUNCTION_80_1();
  sub_1CA323D64(v26, v27);
  v28 = sub_1CA94D268();
  v29 = *(v12 + 8);
  v29(v16, v10);
  v30 = OUTLINED_FUNCTION_106();
  (v29)(v30);
  if (v28)
  {
    v31 = v59[6];
    sub_1CA31E71C(v9);
    if (v31)
    {
      v46 = OUTLINED_FUNCTION_204();
      v47(v46);
    }

    else
    {
      sub_1CA949E28();
      sub_1CA323D64(&qword_1EC441D88, MEMORY[0x1E69AA2E8]);
      sub_1CA949E48();
      __swift_project_boxed_opaque_existential_1(v59, v59[3]);
      sub_1CA949EB8();
      (*(v51 + 8))(v9, v52);
      v48 = OUTLINED_FUNCTION_204();
      v49(v48);
      __swift_destroy_boxed_opaque_existential_0(v59);
    }
  }

  else
  {
    sub_1CA949C58();
    v32 = v57;
    v33 = v53;
    (*(v57 + 16))(v53, v25, v18);
    v34 = sub_1CA949F68();
    v35 = sub_1CA94CBF8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      OUTLINED_FUNCTION_113_0();
      v37 = swift_slowAlloc();
      v54 = v25;
      v38 = v37;
      v59[0] = v37;
      *v36 = 136315138;
      v39 = sub_1CA94A248();
      v40 = v33;
      v42 = v41;
      v43 = *(v32 + 8);
      v43(v40, v18);
      v44 = sub_1CA26B54C(v39, v42, v59);

      *(v36 + 4) = v44;
      _os_log_impl(&dword_1CA256000, v34, v35, "Ignoring %s because it is not visible in Spotlight", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      OUTLINED_FUNCTION_154();
      MEMORY[0x1CCAA4BF0]();
      OUTLINED_FUNCTION_154();
      MEMORY[0x1CCAA4BF0]();

      (*(v55 + 8))(v58, v56);
      v43(v54, v18);
    }

    else
    {

      v45 = *(v32 + 8);
      v45(v33, v18);
      (*(v55 + 8))(v58, v56);
      v45(v25, v18);
    }
  }
}

void sub_1CA31FA6C()
{
  OUTLINED_FUNCTION_37_0();
  v82 = v0;
  sub_1CA94A3B8();
  OUTLINED_FUNCTION_52();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_25_0();
  sub_1CA94A5D8();
  OUTLINED_FUNCTION_1_0();
  v87 = v3;
  v88 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_0();
  v86 = v5 - v4;
  OUTLINED_FUNCTION_25_0();
  sub_1CA94A628();
  OUTLINED_FUNCTION_52();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444418, &qword_1CA9834B0);
  OUTLINED_FUNCTION_18_0(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_43();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445110, &dword_1CA9834B8);
  OUTLINED_FUNCTION_18_0(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_25_0();
  v11 = sub_1CA94A368();
  v12 = OUTLINED_FUNCTION_18_0(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4445D0, &qword_1CA983080);
  OUTLINED_FUNCTION_18_0(v13);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_25_0();
  sub_1CA94B1C8();
  OUTLINED_FUNCTION_1_0();
  v84 = v16;
  v85 = v15;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6_0();
  v89 = v18 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4468F0, &qword_1CA9834C0);
  OUTLINED_FUNCTION_18_0(v19);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_43();
  v83 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444420, &qword_1CA98BF00);
  OUTLINED_FUNCTION_18_0(v22);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_43();
  v81 = v24;
  OUTLINED_FUNCTION_25_0();
  v80 = sub_1CA94AD08();
  OUTLINED_FUNCTION_1_0();
  v90 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_6_0();
  v29 = (v28 - v27);
  sub_1CA94B1E8();
  OUTLINED_FUNCTION_52();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_134_0();
  v31 = sub_1CA94A378();
  OUTLINED_FUNCTION_1_0();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_6_0();
  v37 = v36 - v35;
  sub_1CA94B0F8();
  sub_1CA94C218();
  MEMORY[0x1CCAA1300](0x494C52556E65704FLL, 0xED0000746E65746ELL);

  (*(v33 + 104))(v37, *MEMORY[0x1E69DAA50], v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443F90, &qword_1CA9825E0);
  v38 = sub_1CA94B258();
  OUTLINED_FUNCTION_12(v38);
  *(swift_allocObject() + 16) = xmmword_1CA981310;
  sub_1CA323D64(&unk_1EC446900, MEMORY[0x1E69DB338]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444428, &qword_1CA9834C8);
  sub_1CA323C24(&unk_1EC446910, &qword_1EC444428);
  sub_1CA94D2A8();
  v39 = sub_1CA94ADC8();
  v40 = swift_allocBox();
  v42 = v41;
  v43 = sub_1CA94AD98();
  v44 = swift_allocBox();
  v79 = *(*(v43 - 8) + 104);
  v79(v45, *MEMORY[0x1E69DB028], v43);
  *v42 = v44;
  v78 = *MEMORY[0x1E69DB0B0];
  v77 = *(*(v39 - 8) + 104);
  v77(v42);
  v46 = v29;
  *v29 = v40;
  v47 = *MEMORY[0x1E69DAF30];
  v48 = *(v90 + 104);
  v48(v46, v47, v80);
  sub_1CA94B1D8();
  OUTLINED_FUNCTION_46();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
  sub_1CA94B208();
  OUTLINED_FUNCTION_46();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
  sub_1CA94B218();
  swift_allocBox();
  OUTLINED_FUNCTION_191();
  v57 = swift_allocBox();
  v79(v58, *MEMORY[0x1E69DB048], v43);
  *v81 = v57;
  (v77)(v81, v78, v39);
  *v46 = v83;
  v48(v46, v47, v80);
  (*(v84 + 16))(v89, v82, v85);
  OUTLINED_FUNCTION_46();
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v85);
  OUTLINED_FUNCTION_90();
  sub_1CA94A338();
  sub_1CA94A648();
  OUTLINED_FUNCTION_46();
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v65);
  sub_1CA94A5F8();
  OUTLINED_FUNCTION_46();
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443F20, &qword_1CA9834D0);
  v70 = sub_1CA94A158();
  OUTLINED_FUNCTION_1_0();
  v72 = v71;
  v73 = (*(v71 + 80) + 32) & ~*(v71 + 80);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_1CA981310;
  *(v74 + v73) = &unk_1F49F40B8;
  (*(v72 + 104))(v74 + v73, *MEMORY[0x1E69DA958], v70);
  sub_1CA323D64(&unk_1EC441D40, MEMORY[0x1E69DABD0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444430, &qword_1CA9834D8);
  sub_1CA323C24(&qword_1EC444438, &qword_1EC444430);
  sub_1CA94D2A8();
  (*(v87 + 104))(v86, *MEMORY[0x1E69DABC0], v88);
  OUTLINED_FUNCTION_80_1();
  sub_1CA323D64(v75, v76);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444440, &unk_1CA9834E0);
  sub_1CA323C24(&qword_1EC444448, &qword_1EC444440);
  sub_1CA94D2A8();
  sub_1CA94A238();
  OUTLINED_FUNCTION_36();
}

void sub_1CA32059C()
{
  OUTLINED_FUNCTION_77_1();
  v1 = v0;
  v2 = [v0 identifier];
  v3 = sub_1CA94C3A8();
  v5 = v4;

  if (v3 == 0x494C52556E65704FLL && v5 == 0xED0000746E65746ELL)
  {
LABEL_12:

    goto LABEL_13;
  }

  v7 = OUTLINED_FUNCTION_176_1();

  if ((v7 & 1) == 0)
  {
    v8 = [v1 identifier];
    v9 = sub_1CA94C3A8();
    v11 = v10;

    if (v9 != 0x4C52556E65704F5FLL || v11 != 0xEE00746E65746E49)
    {
      v13 = OUTLINED_FUNCTION_176_1();

      if ((v13 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_13:
  v14 = sub_1CA3233C8(v1);
  if (v15)
  {
    v36 = v14;
    v37 = v15;
    v34 = 0x6E65746E49707041;
    v35 = 0xEA00000000007374;
    sub_1CA27BAF0();
    v16 = sub_1CA94D238();

    if (v16)
    {
      v17 = [v1 metadata];
      if (v17)
      {
      }

      else
      {
        v18 = [v1 url];
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A90, &qword_1CA9827C0);
        OUTLINED_FUNCTION_18_0(v19);
        OUTLINED_FUNCTION_29();
        MEMORY[0x1EEE9AC00](v20);
        v22 = &v34 - v21;
        if (v18)
        {
          v23 = sub_1CA948BA8();
          OUTLINED_FUNCTION_1_0();
          v25 = v24;
          MEMORY[0x1EEE9AC00](v26);
          OUTLINED_FUNCTION_6_0();
          v29 = v28 - v27;
          sub_1CA948B68();

          (*(v25 + 32))(v22, v29, v23);
          __swift_storeEnumTagSinglePayload(v22, 0, 1, v23);
        }

        else
        {
          sub_1CA948BA8();
          OUTLINED_FUNCTION_46();
          __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
        }

        sub_1CA323C64(v22, &qword_1EC444A90);
      }
    }
  }

LABEL_17:
  OUTLINED_FUNCTION_76_0();
}

uint64_t sub_1CA320974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_134_0();
  v10 = OUTLINED_FUNCTION_69();
  v11(v10);
  return a7(v7);
}

void *sub_1CA320A2C(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;
    OUTLINED_FUNCTION_93();

    return sub_1CA35FF80();
  }

  else if (a2)
  {
    v7 = a2;
    OUTLINED_FUNCTION_93();

    return sub_1CA35FF84();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1CA320AB4(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = [v2 initWithValue:sub_1CA94D7D8() valueType:a2];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v5;
}

id sub_1CA320B2C()
{
  OUTLINED_FUNCTION_158_1();
  v1 = sub_1CA94C368();

  OUTLINED_FUNCTION_116();
  sub_1CA94C368();
  OUTLINED_FUNCTION_105_1();

  OUTLINED_FUNCTION_169_0();
  v4 = [v2 v3];

  return v4;
}

unint64_t sub_1CA320BA4(uint64_t a1)
{
  sub_1CA94D918();
  sub_1CA94ADC8();
  sub_1CA323D64(&qword_1EC441D00, MEMORY[0x1E69DB0B8]);
  sub_1CA94C298();
  type metadata accessor for DatabaseTypeDefinitionProvider.CacheKey(0);
  sub_1CA94B168();
  sub_1CA323D64(&qword_1EC443B20, MEMORY[0x1E69DB2F0]);
  sub_1CA94C298();
  v2 = sub_1CA94D968();

  return sub_1CA321340(a1, v2);
}

unint64_t sub_1CA320CB8(uint64_t *a1)
{
  sub_1CA94D918();
  sub_1CA94C458();
  type metadata accessor for DatabaseContainerDefinitionProvider.CacheKey(0);
  sub_1CA94B168();
  sub_1CA323D64(&qword_1EC443B20, MEMORY[0x1E69DB2F0]);
  sub_1CA94C298();
  v2 = sub_1CA94D968();

  return sub_1CA3214E4(a1, v2);
}

void sub_1CA320D84(uint64_t a1)
{
  sub_1CA949328();
  sub_1CA323D64(&qword_1EC444408, MEMORY[0x1E69AC0E8]);
  sub_1CA94C288();
  sub_1CA321E1C();
}

unint64_t sub_1CA320E58()
{
  OUTLINED_FUNCTION_81_1();
  sub_1CA94CFC8();
  v0 = OUTLINED_FUNCTION_5_3();

  return sub_1CA321698(v0, v1);
}

unint64_t sub_1CA320E94(uint64_t a1)
{
  sub_1CA94D908();
  v1 = OUTLINED_FUNCTION_93();
  return sub_1CA321834(v1, v2);
}

unint64_t sub_1CA320ECC()
{
  OUTLINED_FUNCTION_81_1();
  sub_1CA94D378();
  v0 = OUTLINED_FUNCTION_5_3();

  return sub_1CA321770(v0, v1);
}

void sub_1CA320F08(uint64_t a1)
{
  sub_1CA94C3A8();
  sub_1CA94D918();
  sub_1CA94C458();
  sub_1CA94D968();

  OUTLINED_FUNCTION_134();
  sub_1CA321D44();
}

void sub_1CA320F94()
{
  OUTLINED_FUNCTION_81_1();
  sub_1CA948D28();
  sub_1CA323B30(&qword_1EDB9FA28, MEMORY[0x1EEE788F0]);
  OUTLINED_FUNCTION_163();
  sub_1CA94C288();
  OUTLINED_FUNCTION_154_1();
  sub_1CA321A5C();
}

unint64_t sub_1CA321028(unsigned __int8 *a1)
{
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](*a1);
  sub_1CA94C298();
  sub_1CA94D968();
  v2 = OUTLINED_FUNCTION_186_0();
  return sub_1CA321894(v2, v3);
}

unint64_t sub_1CA3210B4()
{
  OUTLINED_FUNCTION_81_1();
  sub_1CA94CFC8();
  v0 = OUTLINED_FUNCTION_5_3();

  return sub_1CA32199C(v0, v1);
}

void sub_1CA3210F0()
{
  OUTLINED_FUNCTION_81_1();
  sub_1CA9492B8();
  sub_1CA323B30(&unk_1EC442CE0, MEMORY[0x1EEE78BA0]);
  OUTLINED_FUNCTION_163();
  sub_1CA94C288();
  OUTLINED_FUNCTION_154_1();
  sub_1CA321A5C();
}

unint64_t sub_1CA321184(uint64_t a1)
{
  v1 = a1;
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](v1);
  v2 = sub_1CA94D968();

  return sub_1CA321BE0(v1, v2);
}

unint64_t sub_1CA3211F0(void *a1)
{
  sub_1CA94D918();
  sub_1CA94D938();
  if (a1)
  {
    v2 = a1;
    sub_1CA94CFE8();
  }

  sub_1CA94D968();
  v3 = OUTLINED_FUNCTION_186_0();

  return sub_1CA321C40(v3, v4);
}

void sub_1CA32127C()
{
  OUTLINED_FUNCTION_81_1();
  sub_1CA9486C8();
  sub_1CA323D64(&qword_1EC4443A8, MEMORY[0x1E6996C28]);
  OUTLINED_FUNCTION_163();
  sub_1CA94C288();
  OUTLINED_FUNCTION_154_1();
  sub_1CA321E1C();
}

unint64_t sub_1CA321340(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DatabaseTypeDefinitionProvider.CacheKey(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    do
    {
      sub_1CA323CB4();
      if (sub_1CA94ADB8())
      {
        v11 = MEMORY[0x1CCA9FFB0](&v7[*(v5 + 20)], a1 + *(v5 + 20));
        sub_1CA323DA8(v7, type metadata accessor for DatabaseTypeDefinitionProvider.CacheKey);
        if (v11)
        {
          return v9;
        }
      }

      else
      {
        sub_1CA323DA8(v7, type metadata accessor for DatabaseTypeDefinitionProvider.CacheKey);
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_1CA3214E4(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for DatabaseContainerDefinitionProvider.CacheKey(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = *a1;
    v12 = a1[1];
    while (1)
    {
      sub_1CA323CB4();
      v13 = *v7 == v11 && v7[1] == v12;
      if (v13 || (sub_1CA94D7F8()) && (MEMORY[0x1CCA9FFB0](v7 + *(v5 + 20), a1 + *(v5 + 20)))
      {
        break;
      }

      sub_1CA323DA8(v7, type metadata accessor for DatabaseContainerDefinitionProvider.CacheKey);
      v9 = (v9 + 1) & v10;
      if (((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        return v9;
      }
    }

    sub_1CA323DA8(v7, type metadata accessor for DatabaseContainerDefinitionProvider.CacheKey);
  }

  return v9;
}

unint64_t sub_1CA321698(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_1CA25B3D0(0, &qword_1EC445B70, 0x1E69AC7D8);
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_1CA94CFD8();

    if (v8)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1CA321770(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_1CA2F6AB4(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x1CCAA21E0](v8, a1);
    sub_1CA323ADC(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1CA321834(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_1CA321894(void *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    v7 = *a1;
    v9 = a1[3];
    v8 = a1[4];
    v10 = *(v2 + 48);
    v11 = a1[1] >> 16;
    v12 = a1[2] >> 16;
    do
    {
      v13 = (v10 + 40 * v5);
      if (*v13 == v7)
      {
        v14 = v13[3] == v9 && v13[4] == v8;
        v15 = v14 && v13[1] >> 16 == v11;
        v16 = v15 && v13[2] >> 16 == v12;
        if (v16 || (sub_1CA94D788() & 1) != 0)
        {
          break;
        }
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1CA32199C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    type metadata accessor for WFUserVisibleString();
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_1CA94CFD8();

    if (v8)
    {
      break;
    }
  }

  return i;
}

void sub_1CA321A5C()
{
  OUTLINED_FUNCTION_37_0();
  v21 = v1;
  v22 = v2;
  v19 = v3;
  v20 = v4;
  v5 = v0;
  v18[1] = v6;
  v7 = v0 + 64;
  OUTLINED_FUNCTION_151_2();
  v9 = ~v8;
  for (i = v10 & ~v8; ((1 << i) & *(v7 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v9)
  {
    v12 = v19(0);
    v13 = *(v12 - 8);
    MEMORY[0x1EEE9AC00](v12);
    v15 = v18 - v14;
    (*(v13 + 16))(v18 - v14, *(v5 + 48) + *(v16 + 72) * i, v12);
    sub_1CA323B30(v20, v21);
    v17 = sub_1CA94C358();
    (*(v13 + 8))(v15, v12);
    if (v17)
    {
      break;
    }
  }

  OUTLINED_FUNCTION_36();
}

unint64_t sub_1CA321BE0(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

unint64_t sub_1CA321C40(void *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    do
    {
      v9 = *(*(v6 + 48) + 8 * v5);
      if (v9)
      {
        if (a1)
        {
          sub_1CA25B3D0(0, &qword_1EDB9F6D8, 0x1E69E0990);
          v10 = v9;
          v11 = a1;
          v12 = sub_1CA94CFD8();

          if (v12)
          {
            return v5;
          }
        }
      }

      else if (!a1)
      {
        return v5;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void sub_1CA321D44()
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_151_2();
  v4 = ~v3;
  for (i = v5 & ~v3; ((1 << i) & *(v0 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_1CA94C3A8();
    OUTLINED_FUNCTION_164_0();
    if (v2 == sub_1CA94C3A8() && v1 == v7)
    {

      break;
    }

    OUTLINED_FUNCTION_104();
    v2 = sub_1CA94D7F8();

    if (v2)
    {
      break;
    }
  }

  OUTLINED_FUNCTION_36();
}

void sub_1CA321E1C()
{
  OUTLINED_FUNCTION_37_0();
  v21 = v1;
  v22 = v2;
  v20 = v3;
  v5 = v4;
  v18 = v6;
  v8 = v7(0);
  OUTLINED_FUNCTION_1_0();
  v10 = v9;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  v23 = v0 + 64;
  v19 = v0;
  OUTLINED_FUNCTION_151_2();
  v15 = ~v14;
  for (i = v5 & ~v14; ((1 << i) & *(v23 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v15)
  {
    (*(v10 + 16))(v13, *(v19 + 48) + *(v10 + 72) * i, v8);
    sub_1CA323D64(v20, v21);
    v17 = sub_1CA94C358();
    (*(v10 + 8))(v13, v8);
    if (v17)
    {
      break;
    }
  }

  OUTLINED_FUNCTION_36();
}

void sub_1CA321F8C()
{
  OUTLINED_FUNCTION_37_0();
  v1 = OUTLINED_FUNCTION_165_1();
  type metadata accessor for DatabaseTypeDefinitionProvider.CacheKey(v1);
  OUTLINED_FUNCTION_52();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_134_0();
  sub_1CA320BA4(v0);
  OUTLINED_FUNCTION_7_0();
  if (v4)
  {
    __break(1u);
LABEL_10:
    sub_1CA94D878();
    __break(1u);
    return;
  }

  v5 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444450, &qword_1CA9834F0);
  OUTLINED_FUNCTION_148_1();
  if (sub_1CA94D588())
  {
    sub_1CA320BA4(v0);
    if ((v5 & 1) != (v6 & 1))
    {
      goto LABEL_10;
    }
  }

  if (v5)
  {
    OUTLINED_FUNCTION_201_1();
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_163();
    sub_1CA323CB4();
    OUTLINED_FUNCTION_103_0();
    sub_1CA322F28(v8, v9, v10, v11, v12, v13);
    OUTLINED_FUNCTION_36();
  }
}

void sub_1CA3220E8()
{
  OUTLINED_FUNCTION_37_0();
  v1 = OUTLINED_FUNCTION_165_1();
  type metadata accessor for DatabaseContainerDefinitionProvider.CacheKey(v1);
  OUTLINED_FUNCTION_52();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_134_0();
  sub_1CA320CB8(v0);
  OUTLINED_FUNCTION_7_0();
  if (v4)
  {
    __break(1u);
LABEL_10:
    sub_1CA94D878();
    __break(1u);
    return;
  }

  v5 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4443B8, &qword_1CA983448);
  OUTLINED_FUNCTION_148_1();
  if (sub_1CA94D588())
  {
    sub_1CA320CB8(v0);
    if ((v5 & 1) != (v6 & 1))
    {
      goto LABEL_10;
    }
  }

  if (v5)
  {
    OUTLINED_FUNCTION_201_1();
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_163();
    sub_1CA323CB4();
    OUTLINED_FUNCTION_103_0();
    sub_1CA322F28(v8, v9, v10, v11, v12, v13);
    OUTLINED_FUNCTION_36();
  }
}

uint64_t sub_1CA322244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_77_1();
  OUTLINED_FUNCTION_158_1();
  v12 = OUTLINED_FUNCTION_36_3(v10, v11);
  sub_1CA271BF8(v12, v13);
  OUTLINED_FUNCTION_7_0();
  if (v15)
  {
    __break(1u);
LABEL_13:
    result = sub_1CA94D878();
    __break(1u);
    return result;
  }

  v16 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444360, &qword_1CA983118);
  OUTLINED_FUNCTION_63_2();
  if (sub_1CA94D588())
  {
    v17 = OUTLINED_FUNCTION_69();
    sub_1CA271BF8(v17, v18);
    OUTLINED_FUNCTION_145_0();
    if (!v19)
    {
      goto LABEL_13;
    }
  }

  if (v16)
  {
    sub_1CA94AC88();
    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_76_0();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
  }

  else
  {
    OUTLINED_FUNCTION_147_1();
    sub_1CA3230F8(v29, v30, v31, v32, v33);
    OUTLINED_FUNCTION_76_0();

    return sub_1CA94C218();
  }
}

unint64_t sub_1CA322384()
{
  result = qword_1EC444350;
  if (!qword_1EC444350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC444350);
  }

  return result;
}

_OWORD *sub_1CA3223D8()
{
  OUTLINED_FUNCTION_77_1();
  OUTLINED_FUNCTION_158_1();
  v3 = OUTLINED_FUNCTION_36_3(v1, v2);
  sub_1CA271BF8(v3, v4);
  OUTLINED_FUNCTION_7_0();
  if (v7)
  {
    __break(1u);
LABEL_14:
    result = sub_1CA94D878();
    __break(1u);
    return result;
  }

  v8 = v5;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4443B0, &qword_1CA983438);
  OUTLINED_FUNCTION_63_2();
  if (sub_1CA94D588())
  {
    v10 = OUTLINED_FUNCTION_69();
    sub_1CA271BF8(v10, v11);
    OUTLINED_FUNCTION_35_3();
    if (!v13)
    {
      goto LABEL_14;
    }

    v8 = v12;
  }

  if (v9)
  {
    __swift_destroy_boxed_opaque_existential_0((*(*v0 + 56) + 32 * v8));
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_76_0();

    return sub_1CA2C0A20(v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_147_1();
    sub_1CA323000(v18, v19, v20, v21, v22);
    OUTLINED_FUNCTION_76_0();

    return sub_1CA94C218();
  }
}

_OWORD *sub_1CA3224DC(uint64_t a1, void *a2, char a3)
{
  sub_1CA320F08(a2);
  OUTLINED_FUNCTION_7_0();
  if (v7)
  {
    __break(1u);
LABEL_14:
    type metadata accessor for Key(0);
    result = sub_1CA94D878();
    __break(1u);
    return result;
  }

  v8 = v5;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4443E0, &qword_1CA983488);
  if (sub_1CA94D588())
  {
    sub_1CA320F08(a2);
    OUTLINED_FUNCTION_146_0();
    if (!v11)
    {
      goto LABEL_14;
    }

    v8 = v10;
  }

  v12 = *v3;
  if (v9)
  {
    __swift_destroy_boxed_opaque_existential_0((*(v12 + 56) + 32 * v8));
    v13 = OUTLINED_FUNCTION_23();

    return sub_1CA2C0A20(v13, v14);
  }

  else
  {
    sub_1CA32306C(v8, a2, a1, v12);

    return a2;
  }
}

void sub_1CA3225FC()
{
  OUTLINED_FUNCTION_77_1();
  v2 = v1;
  v4 = OUTLINED_FUNCTION_117_1(v1, v3);
  sub_1CA271BF8(v4, v5);
  OUTLINED_FUNCTION_7_0();
  if (v8)
  {
    __break(1u);
LABEL_14:
    sub_1CA94D878();
    __break(1u);
    return;
  }

  v9 = v6;
  v10 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444388, &qword_1CA9833C0);
  OUTLINED_FUNCTION_63_2();
  if (sub_1CA94D588())
  {
    v11 = OUTLINED_FUNCTION_106();
    sub_1CA271BF8(v11, v12);
    OUTLINED_FUNCTION_35_3();
    if (!v14)
    {
      goto LABEL_14;
    }

    v9 = v13;
  }

  if (v10)
  {
    *(*(*v0 + 56) + 8 * v9) = v2;
    OUTLINED_FUNCTION_76_0();
  }

  else
  {
    v17 = OUTLINED_FUNCTION_187_0();
    sub_1CA3230B8(v17, v18, v19, v20, v21);
    OUTLINED_FUNCTION_76_0();

    sub_1CA94C218();
  }
}

void sub_1CA3226FC()
{
  OUTLINED_FUNCTION_77_1();
  v7 = OUTLINED_FUNCTION_32_3(v5, v6);
  sub_1CA320E94(v7);
  OUTLINED_FUNCTION_7_0();
  if (v8)
  {
    __break(1u);
LABEL_12:
    sub_1CA94D878();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_115();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4443D8, &qword_1CA983480);
  OUTLINED_FUNCTION_64_2();
  if (sub_1CA94D588())
  {
    sub_1CA320E94(v2);
    OUTLINED_FUNCTION_35_3();
    if (!v10)
    {
      goto LABEL_12;
    }

    v3 = v9;
  }

  if (v4)
  {
    *(*(*v1 + 56) + 8 * v3) = v0;
    OUTLINED_FUNCTION_76_0();
  }

  else
  {
    v12 = OUTLINED_FUNCTION_188();
    sub_1CA323354(v12, v13, v0, v14);
    OUTLINED_FUNCTION_76_0();
  }
}

void sub_1CA3227D4()
{
  OUTLINED_FUNCTION_77_1();
  OUTLINED_FUNCTION_158_1();
  v2 = OUTLINED_FUNCTION_36_3(v0, v1);
  sub_1CA271BF8(v2, v3);
  OUTLINED_FUNCTION_7_0();
  if (v5)
  {
    __break(1u);
LABEL_11:
    sub_1CA94D878();
    __break(1u);
    return;
  }

  v6 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4455A0, &unk_1CA987640);
  OUTLINED_FUNCTION_63_2();
  if (sub_1CA94D588())
  {
    v7 = OUTLINED_FUNCTION_69();
    sub_1CA271BF8(v7, v8);
    OUTLINED_FUNCTION_145_0();
    if (!v9)
    {
      goto LABEL_11;
    }
  }

  if (v6)
  {
    v10 = OUTLINED_FUNCTION_52_0();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
    OUTLINED_FUNCTION_18_0(v12);
    sub_1CA323B74();
    OUTLINED_FUNCTION_76_0();
  }

  else
  {
    OUTLINED_FUNCTION_147_1();
    sub_1CA32317C(v13, v14, v15, v16, v17);
    OUTLINED_FUNCTION_76_0();

    sub_1CA94C218();
  }
}

void sub_1CA3228F4()
{
  OUTLINED_FUNCTION_77_1();
  v5 = OUTLINED_FUNCTION_32_3(v3, v4);
  sub_1CA321028(v5);
  OUTLINED_FUNCTION_7_0();
  if (v6)
  {
    __break(1u);
LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4443D0, &qword_1CA983478);
    sub_1CA94D878();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_115();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4443C8, &qword_1CA987650);
  OUTLINED_FUNCTION_64_2();
  if (sub_1CA94D588())
  {
    sub_1CA321028(v1);
    OUTLINED_FUNCTION_35_3();
    if (!v7)
    {
      goto LABEL_11;
    }
  }

  if (v2)
  {
    sub_1CA323B74();
    OUTLINED_FUNCTION_76_0();
  }

  else
  {
    v8 = OUTLINED_FUNCTION_188();
    sub_1CA32320C(v8, v9, v0, v10);
    OUTLINED_FUNCTION_76_0();

    sub_1CA94C218();
  }
}

uint64_t sub_1CA3229F4()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_1CA271BF8(v3, v1);
  OUTLINED_FUNCTION_7_0();
  if (v11)
  {
    __break(1u);
LABEL_14:
    result = sub_1CA94D878();
    __break(1u);
    return result;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4443C0, &unk_1CA983460);
  OUTLINED_FUNCTION_148_1();
  if (sub_1CA94D588())
  {
    sub_1CA271BF8(v4, v2);
    OUTLINED_FUNCTION_145_0();
    if (!v15)
    {
      goto LABEL_14;
    }

    v12 = v14;
  }

  v16 = *v0;
  if (v13)
  {
    v17 = (v16[7] + 16 * v12);
    *v17 = v8;
    v17[1] = v6;
    OUTLINED_FUNCTION_36();
  }

  else
  {
    sub_1CA323274(v12, v4, v2, v8, v6, v16);
    OUTLINED_FUNCTION_36();

    return sub_1CA94C218();
  }
}

void sub_1CA322B14()
{
  OUTLINED_FUNCTION_77_1();
  OUTLINED_FUNCTION_32_3(v2, v3);
  sub_1CA3210F0();
  OUTLINED_FUNCTION_7_0();
  if (v6)
  {
    __break(1u);
LABEL_11:
    sub_1CA9492B8();
    sub_1CA94D878();
    __break(1u);
    return;
  }

  v7 = v4;
  v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4481B0, &qword_1CA983428);
  OUTLINED_FUNCTION_64_2();
  if (sub_1CA94D588())
  {
    sub_1CA3210F0();
    OUTLINED_FUNCTION_35_3();
    if (!v10)
    {
      goto LABEL_11;
    }

    v7 = v9;
  }

  if (v8)
  {
    *(*(*v1 + 56) + 8 * v7) = v0;
  }

  else
  {
    sub_1CA9492B8();
    OUTLINED_FUNCTION_1_0();
    MEMORY[0x1EEE9AC00](v11);
    OUTLINED_FUNCTION_6_0();
    v12 = OUTLINED_FUNCTION_188();
    v13(v12);
    OUTLINED_FUNCTION_103_0();
    sub_1CA3232C0(v14, v15, v16, v17);
  }

  OUTLINED_FUNCTION_76_0();
}

void sub_1CA322C54()
{
  OUTLINED_FUNCTION_77_1();
  v5 = OUTLINED_FUNCTION_32_3(v3, v4);
  sub_1CA320E94(v5);
  OUTLINED_FUNCTION_7_0();
  if (v8)
  {
    __break(1u);
LABEL_12:
    sub_1CA94D878();
    __break(1u);
    return;
  }

  v9 = v6;
  v10 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4443A0, &qword_1CA983430);
  OUTLINED_FUNCTION_64_2();
  if (sub_1CA94D588())
  {
    sub_1CA320E94(v2);
    OUTLINED_FUNCTION_146_0();
    if (!v12)
    {
      goto LABEL_12;
    }

    v9 = v11;
  }

  if (v10)
  {
    *(*(*v1 + 56) + 8 * v9) = v0;
    OUTLINED_FUNCTION_76_0();
  }

  else
  {
    OUTLINED_FUNCTION_76_0();

    sub_1CA323354(v13, v14, v15, v16);
  }
}

void sub_1CA322D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_77_1();
  v12 = v11;
  v14 = v13;
  sub_1CA321184(v11);
  OUTLINED_FUNCTION_7_0();
  if (v17)
  {
    __break(1u);
LABEL_14:
    sub_1CA94D878();
    __break(1u);
    return;
  }

  v18 = v15;
  v19 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4457C0, &qword_1CA983440);
  OUTLINED_FUNCTION_64_2();
  if (sub_1CA94D588())
  {
    sub_1CA321184(v12);
    OUTLINED_FUNCTION_146_0();
    if (!v21)
    {
      goto LABEL_14;
    }

    v18 = v20;
  }

  if (v19)
  {
    *(*(*v10 + 56) + 8 * v18) = v14;
    OUTLINED_FUNCTION_76_0();
  }

  else
  {
    OUTLINED_FUNCTION_76_0();

    sub_1CA32338C(v23, v24, v25, v26);
  }
}

uint64_t sub_1CA322E28()
{
  OUTLINED_FUNCTION_77_1();
  v2 = v1;
  v4 = OUTLINED_FUNCTION_117_1(v1, v3);
  sub_1CA271BF8(v4, v5);
  OUTLINED_FUNCTION_7_0();
  if (v8)
  {
    __break(1u);
LABEL_14:
    result = sub_1CA94D878();
    __break(1u);
    return result;
  }

  v9 = v6;
  v10 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444398, &qword_1CA983420);
  OUTLINED_FUNCTION_63_2();
  if (sub_1CA94D588())
  {
    v11 = OUTLINED_FUNCTION_106();
    sub_1CA271BF8(v11, v12);
    OUTLINED_FUNCTION_35_3();
    if (!v14)
    {
      goto LABEL_14;
    }

    v9 = v13;
  }

  if (v10)
  {
    *(*(*v0 + 56) + 8 * v9) = v2;
    OUTLINED_FUNCTION_76_0();
  }

  else
  {
    v17 = OUTLINED_FUNCTION_187_0();
    sub_1CA3230B8(v17, v18, v19, v20, v21);
    OUTLINED_FUNCTION_76_0();

    return sub_1CA94C218();
  }
}

void sub_1CA322F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_158_1();
  v9 = v8;
  OUTLINED_FUNCTION_20_6(v8, v10, v11, v12);
  v14 = v13(0);
  OUTLINED_FUNCTION_18_0(v14);
  sub_1CA323D0C();
  *(*(a4 + 56) + 8 * v9) = v6;
  OUTLINED_FUNCTION_143_1();
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v15;
  }
}

_OWORD *sub_1CA323000(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1CA2C0A20(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void sub_1CA32306C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OUTLINED_FUNCTION_20_6(a1, a2, a3, a4);
  *(*(v6 + 48) + 8 * v5) = v7;
  sub_1CA2C0A20(v8, (*(v6 + 56) + 32 * v5));
  OUTLINED_FUNCTION_143_1();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v9;
  }
}

unint64_t sub_1CA3230B8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_26_5(a1, a2, a3, a4, a5);
  *(*(v6 + 56) + 8 * result) = v7;
  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v10;
  }

  return result;
}

void sub_1CA3230F8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_26_5(a1, a2, a3, a4, a5);
  v9 = *(v8 + 56);
  v10(0);
  OUTLINED_FUNCTION_52();
  (*(v11 + 32))(v9 + *(v11 + 72) * a1, a4);
  OUTLINED_FUNCTION_143_1();
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v12;
  }
}

void sub_1CA32317C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_26_5(a1, a2, a3, a4, a5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445580, &unk_1CA983450);
  OUTLINED_FUNCTION_18_0(v6);
  sub_1CA323BCC();
  OUTLINED_FUNCTION_143_1();
  if (v8)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v7;
  }
}

void sub_1CA32320C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OUTLINED_FUNCTION_20_6(a1, a2, a3, a4);
  v7 = *(v6 + 48) + 40 * v5;
  v9 = *(v8 + 16);
  *v7 = *v8;
  *(v7 + 16) = v9;
  *(v7 + 32) = *(v8 + 32);
  memcpy((*(v6 + 56) + 112 * v5), v10, 0x70uLL);
  OUTLINED_FUNCTION_143_1();
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v11;
  }
}

unint64_t sub_1CA323274(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

void sub_1CA3232C0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_20_6(a1, a2, a3, a4);
  v9 = *(v8 + 48);
  sub_1CA9492B8();
  OUTLINED_FUNCTION_52();
  (*(v10 + 32))(v9 + *(v10 + 72) * a1, a2);
  *(*(a4 + 56) + 8 * a1) = a3;
  OUTLINED_FUNCTION_143_1();
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v11;
  }
}

void sub_1CA323354(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = OUTLINED_FUNCTION_20_6(a1, a2, a3, a4);
  *(v5[6] + 8 * v4) = v6;
  *(v5[7] + 8 * v4) = v7;
  v8 = v5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_175_0(v5, v10);
  }
}

void sub_1CA32338C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = OUTLINED_FUNCTION_20_6(a1, a2, a3, a4);
  *(v5[6] + v4) = v6;
  *(v5[7] + 8 * v4) = v7;
  v8 = v5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_175_0(v5, v10);
  }
}

uint64_t sub_1CA3233C8(void *a1)
{
  v1 = [a1 mangledTypeName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1CA94C3A8();

  return v3;
}

uint64_t sub_1CA32342C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1CA94C3A8();
  v4 = v3;
  if (v2 == sub_1CA94C3A8() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_116();
    v7 = sub_1CA94D7F8();
  }

  return v7 & 1;
}

unint64_t sub_1CA3234B0()
{
  result = qword_1EC444380;
  if (!qword_1EC444380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC444380);
  }

  return result;
}

uint64_t type metadata accessor for ToolInvocationBox(uint64_t a1)
{
  result = qword_1EC442828;
  if (!qword_1EC442828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CA32358C(uint64_t a1)
{
  result = sub_1CA94A2F8();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11WorkflowKit17ToolInvocationBoxC5ErrorO(uint64_t a1)
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

uint64_t sub_1CA323674(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_1CA3236B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1CA3236F8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1CA323720()
{
  OUTLINED_FUNCTION_59_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  v1[1] = sub_1CA2E9390;
  v3 = OUTLINED_FUNCTION_49_1();

  return v4(v3);
}

uint64_t sub_1CA3237E0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_6();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20(v2);
  *v3 = v4;
  v3[1] = sub_1CA2E9390;
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_217();

  return v10(v5, v6, v7, v8, v9, v10, v11, v12);
}

void sub_1CA32388C()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  v1[1] = sub_1CA2E9390;
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_9_2();

  __asm { BR              X4 }
}

uint64_t sub_1CA323934()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20(v0);
  *v1 = v2;
  v1[1] = sub_1CA2E9390;
  v3 = OUTLINED_FUNCTION_20_0();

  return v4(v3);
}

uint64_t sub_1CA3239DC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_6();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20(v2);
  *v3 = v4;
  v3[1] = sub_1CA2DF78C;
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_217();

  return v10(v5, v6, v7, v8, v9, v10, v11, v12);
}

unint64_t sub_1CA323A88()
{
  result = qword_1EC444390;
  if (!qword_1EC444390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC444390);
  }

  return result;
}

uint64_t sub_1CA323B30(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_5_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CA323B74()
{
  OUTLINED_FUNCTION_170_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_52();
  v3 = OUTLINED_FUNCTION_23();
  v4(v3);
  return v0;
}

uint64_t sub_1CA323BCC()
{
  OUTLINED_FUNCTION_170_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_52();
  v3 = OUTLINED_FUNCTION_23();
  v4(v3);
  return v0;
}

uint64_t sub_1CA323C24(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_117_1(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    OUTLINED_FUNCTION_5_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CA323C64(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_117_1(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_7_2();
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1CA323CB4()
{
  OUTLINED_FUNCTION_170_0();
  v1(0);
  OUTLINED_FUNCTION_52();
  v2 = OUTLINED_FUNCTION_23();
  v3(v2);
  return v0;
}

uint64_t sub_1CA323D0C()
{
  OUTLINED_FUNCTION_170_0();
  v1(0);
  OUTLINED_FUNCTION_52();
  v2 = OUTLINED_FUNCTION_23();
  v3(v2);
  return v0;
}

uint64_t sub_1CA323D64(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_5_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CA323DA8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_2();
  (*(v3 + 8))(a1);
  return a1;
}

void OUTLINED_FUNCTION_85_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x20u);
}

uint64_t OUTLINED_FUNCTION_111_1()
{

  return type metadata accessor for DatabaseContainerDefinitionProvider();
}

id OUTLINED_FUNCTION_112_1(void *a1)
{

  return [a1 v1];
}

unint64_t OUTLINED_FUNCTION_123_1(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  *v17 = a1;

  return sub_1CA26B54C(v19, v18, va);
}

uint64_t OUTLINED_FUNCTION_127_0(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;

  return swift_willThrow();
}

id OUTLINED_FUNCTION_173_0()
{

  return [v0 (v1 + 632)];
}

uint64_t OUTLINED_FUNCTION_176_1()
{

  return sub_1CA94D7F8();
}

id OUTLINED_FUNCTION_179_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8 * v2 + 32);

  return v4;
}

uint64_t OUTLINED_FUNCTION_180_0()
{

  return sub_1CA323BCC();
}

uint64_t OUTLINED_FUNCTION_181_0()
{

  return sub_1CA94AD08();
}

void OUTLINED_FUNCTION_182_0()
{

  JUMPOUT(0x1CCAA00A0);
}

uint64_t OUTLINED_FUNCTION_188_0(uint64_t result)
{
  v2[51] = result;
  v2[52] = v1;
  v2[50] = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_201_1()
{
  v3 = *(v1 + 56);
  result = *(v3 + 8 * v2);
  *(v3 + 8 * v2) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_205_0()
{

  return sub_1CA94C218();
}

uint64_t OUTLINED_FUNCTION_206_0()
{
}

uint64_t OUTLINED_FUNCTION_207_0(uint64_t a1)
{

  return sub_1CA94C408();
}

void OUTLINED_FUNCTION_208()
{
}

void OUTLINED_FUNCTION_209(uint64_t a1)
{
  *(v2 + 536) = a1;
}

uint64_t OUTLINED_FUNCTION_210()
{
}

uint64_t OUTLINED_FUNCTION_211()
{
}

uint64_t OUTLINED_FUNCTION_214(uint64_t a1)
{

  return sub_1CA94A2A8();
}

id sub_1CA3242F0()
{
  v119 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000010;
  *(inited + 48) = 0x80000001CA9A3730;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("contact|person|people", 21);
  v6 = v5;
  v7 = sub_1CA94C438("contact|person|people", 21);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v124 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v125 = v11;
  v12 = v111 - v124;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v120 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v122 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v123 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = v111 - v123;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v121 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v118 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Passes the specified contacts to the next action.", 49);
  v116 = v27;
  v28 = sub_1CA94C438("Passes the specified contacts to the next action.", 49);
  v30 = v29;
  v117 = v111;
  MEMORY[0x1EEE9AC00](v28);
  v31 = v111 - v124;
  sub_1CA948D98();
  v32 = [v120 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = v111 - v123;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v116, v28, v30, 0, 0, v31, v33);
  *(v23 + 64) = v121;
  *(v23 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v36 = sub_1CA94C1E8();
  v37 = v118;
  *(inited + 160) = sub_1CA6B3784(v36);
  *(inited + 184) = v37;
  *(inited + 192) = @"Name";
  v38 = @"Name";
  v39 = sub_1CA94C438("Contacts (Action Name)", 22);
  v116 = v40;
  v117 = v39;
  v41 = sub_1CA94C438("Contacts", 8);
  v43 = v42;
  v118 = v111;
  MEMORY[0x1EEE9AC00](v41);
  v44 = v124;
  sub_1CA948D98();
  v45 = v120;
  v46 = [v120 bundleURL];
  MEMORY[0x1EEE9AC00](v46);
  v47 = v111 - v123;
  sub_1CA948B68();

  v48 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 200) = sub_1CA2F9F14(v117, v116, v41, v43, 0, 0, v111 - v44, v47);
  *(inited + 224) = v121;
  *(inited + 232) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v49 = swift_initStackObject();
  *(v49 + 16) = xmmword_1CA9813C0;
  *(v49 + 32) = 0x656C7069746C754DLL;
  *(v49 + 40) = 0xE800000000000000;
  v50 = MEMORY[0x1E69E6370];
  *(v49 + 48) = 1;
  *(v49 + 72) = v50;
  *(v49 + 80) = 0x614E74757074754FLL;
  *(v49 + 88) = 0xEA0000000000656DLL;
  v51 = @"Output";
  v52 = sub_1CA94C438("Contacts (Default Output Name)", 30);
  v116 = v53;
  v117 = v52;
  v54 = sub_1CA94C438("Contacts", 8);
  v115 = v55;
  v118 = v111;
  MEMORY[0x1EEE9AC00](v54);
  sub_1CA948D98();
  v56 = [v45 bundleURL];
  MEMORY[0x1EEE9AC00](v56);
  v57 = v111 - v123;
  sub_1CA948B68();

  v58 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v49 + 96) = sub_1CA2F9F14(v117, v116, v54, v115, 0, 0, v111 - v44, v57);
  *(v49 + 120) = v121;
  *(v49 + 128) = 0x7365707954;
  *(v49 + 136) = 0xE500000000000000;
  *(v49 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v49 + 144) = &unk_1F49F4128;
  v59 = MEMORY[0x1E69E6158];
  v60 = sub_1CA94C1E8();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 240) = v60;
  *(inited + 264) = v61;
  *(inited + 272) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v118 = swift_allocObject();
  *(v118 + 1) = xmmword_1CA9813B0;
  v117 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v62 = swift_initStackObject();
  *(v62 + 16) = xmmword_1CA981400;
  *(v62 + 32) = @"AllowsMultipleValues";
  *(v62 + 40) = 1;
  v63 = MEMORY[0x1E69E6370];
  *(v62 + 64) = MEMORY[0x1E69E6370];
  *(v62 + 72) = @"AllowsTextEntry";
  *(v62 + 80) = 0;
  *(v62 + 104) = v63;
  *(v62 + 112) = @"Class";
  v64 = v63;
  *(v62 + 144) = v59;
  *(v62 + 120) = 0xD000000000000017;
  *(v62 + 128) = 0x80000001CA9A37F0;
  v65 = @"Parameters";
  v66 = @"AllowsMultipleValues";
  v67 = @"AllowsTextEntry";
  v68 = @"Class";
  *(v62 + 152) = sub_1CA94C368();
  *(v62 + 160) = 1;
  *(v62 + 184) = v64;
  *(v62 + 192) = @"Key";
  *(v62 + 200) = 0x6361746E6F434657;
  *(v62 + 208) = 0xE900000000000074;
  *(v62 + 224) = v59;
  *(v62 + 232) = @"Label";
  v69 = @"Key";
  v70 = @"Label";
  v71 = sub_1CA94C438("Contact (WFContact)", 19);
  v113 = v72;
  v114 = v71;
  v73 = sub_1CA94C438("Contact", 7);
  v112 = v74;
  v115 = v111;
  MEMORY[0x1EEE9AC00](v73);
  v75 = v111 - v124;
  sub_1CA948D98();
  v76 = v120;
  v77 = [v120 bundleURL];
  v111[1] = v111;
  MEMORY[0x1EEE9AC00](v77);
  v116 = inited;
  v78 = v123;
  sub_1CA948B68();

  v79 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v62 + 240) = sub_1CA2F9F14(v114, v113, v73, v112, 0, 0, v75, v111 - v78);
  v80 = v121;
  *(v62 + 264) = v121;
  *(v62 + 272) = @"Placeholder";
  v81 = @"Placeholder";
  v82 = sub_1CA94C438("Contacts (WFContact)", 20);
  v113 = v83;
  v114 = v82;
  v112 = sub_1CA94C438("Contacts", 8);
  v85 = v84;
  v115 = v111;
  MEMORY[0x1EEE9AC00](v112);
  v86 = v111 - v124;
  sub_1CA948D98();
  v87 = [v76 bundleURL];
  MEMORY[0x1EEE9AC00](v87);
  sub_1CA948B68();

  v88 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v89 = sub_1CA2F9F14(v114, v113, v112, v85, 0, 0, v86, v111 - v78);
  *(v62 + 304) = v80;
  *(v62 + 280) = v89;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v90 = sub_1CA94C1E8();
  v91 = sub_1CA2F864C(v90);
  v92 = v118;
  v118[4] = v91;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v94 = v116;
  *(v116 + 280) = v92;
  *(v94 + 304) = v93;
  *(v94 + 312) = @"ParameterSummary";
  v95 = @"ParameterSummary";
  v96 = sub_1CA94C438("${WFContact} (Parameter Summary)", 32);
  v98 = v97;
  v99 = sub_1CA94C438("${WFContact}", 12);
  v101 = v100;
  v121 = v111;
  MEMORY[0x1EEE9AC00](v99);
  v102 = v111 - v124;
  sub_1CA948D98();
  v103 = [v120 bundleURL];
  MEMORY[0x1EEE9AC00](v103);
  v104 = v111 - v123;
  sub_1CA948B68();

  v105 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v106 = sub_1CA2F9F14(v96, v98, v99, v101, 0, 0, v102, v104);
  v107 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v108 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(v94 + 320) = v107;
  *(v94 + 344) = v108;
  *(v94 + 352) = @"ResidentCompatible";
  *(v94 + 384) = MEMORY[0x1E69E6370];
  *(v94 + 360) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v109 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA3250FC()
{
  v138 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000011;
  *(inited + 48) = 0x80000001CA9A38B0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("send|text|gif|image|video", 25);
  v6 = v5;
  v7 = sub_1CA94C438("send|text|gif|image|video", 25);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v151 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v152 = v11;
  v12 = &v135 - v151;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v150 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v148 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v149 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v135 - v149;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v147 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v137 = v22;
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v146 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Posts the input to the specified Slack channel.", 47);
  v144 = v27;
  v28 = sub_1CA94C438("Posts the input to the specified Slack channel.", 47);
  v30 = v29;
  v145 = &v135;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v135 - v151;
  sub_1CA948D98();
  v32 = [v150 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v135 - v149;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v144, v28, v30, 0, 0, v31, v33);
  *(v23 + 64) = v147;
  *(v23 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v36 = sub_1CA94C1E8();
  v37 = v146;
  *(inited + 160) = sub_1CA6B3784(v36);
  *(inited + 184) = v37;
  *(inited + 192) = @"Discoverable";
  v38 = MEMORY[0x1E69E6370];
  *(inited + 200) = 0;
  *(inited + 224) = v38;
  *(inited + 232) = @"Input";
  v39 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v40 = swift_initStackObject();
  *(v40 + 16) = xmmword_1CA981350;
  *(v40 + 32) = 0x656C7069746C754DLL;
  *(v40 + 40) = 0xE800000000000000;
  *(v40 + 48) = 1;
  *(v40 + 72) = v39;
  strcpy((v40 + 80), "ParameterKey");
  *(v40 + 93) = 0;
  *(v40 + 94) = -5120;
  strcpy((v40 + 96), "WFSlackInput");
  *(v40 + 109) = 0;
  *(v40 + 110) = -5120;
  *(v40 + 120) = MEMORY[0x1E69E6158];
  *(v40 + 128) = 0x6465726975716552;
  *(v40 + 136) = 0xE800000000000000;
  *(v40 + 144) = 1;
  *(v40 + 168) = v39;
  *(v40 + 176) = 0x7365707954;
  *(v40 + 184) = 0xE500000000000000;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v40 + 216) = v143;
  *(v40 + 192) = &unk_1F49F41D8;
  v41 = @"Discoverable";
  v42 = @"Input";
  v43 = sub_1CA94C1E8();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 240) = v43;
  *(inited + 264) = v44;
  *(inited + 272) = @"InputPassthrough";
  *(inited + 280) = 1;
  *(inited + 304) = v39;
  *(inited + 312) = @"Name";
  v45 = @"InputPassthrough";
  v46 = @"Name";
  v47 = sub_1CA94C438("Post to Slack (Action Name)", 27);
  v49 = v48;
  v50 = sub_1CA94C438("Post to Slack", 13);
  v52 = v51;
  v146 = &v135;
  MEMORY[0x1EEE9AC00](v50);
  v53 = &v135 - v151;
  sub_1CA948D98();
  v54 = [v150 bundleURL];
  MEMORY[0x1EEE9AC00](v54);
  v55 = &v135 - v149;
  sub_1CA948B68();

  v56 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v47, v49, v50, v52, 0, 0, v53, v55);
  *(inited + 344) = v147;
  *(inited + 352) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v146 = swift_allocObject();
  *(v146 + 1) = xmmword_1CA981470;
  v145 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1CA981380;
  v58 = @"Parameters";
  *(v57 + 32) = sub_1CA94C368();
  strcpy((v57 + 40), "WFSlackAccount");
  *(v57 + 55) = -18;
  v59 = MEMORY[0x1E69E6158];
  *(v57 + 64) = MEMORY[0x1E69E6158];
  *(v57 + 72) = @"AlwaysShowsButton";
  *(v57 + 80) = 1;
  *(v57 + 104) = MEMORY[0x1E69E6370];
  *(v57 + 112) = @"Class";
  *(v57 + 120) = 0xD000000000000018;
  *(v57 + 128) = 0x80000001CA9A3950;
  *(v57 + 144) = v59;
  *(v57 + 152) = @"DisallowedVariableTypes";
  *(v57 + 160) = &unk_1F49F4218;
  *(v57 + 184) = v143;
  *(v57 + 192) = @"Key";
  *(v57 + 200) = 0x6E756F6363414657;
  *(v57 + 208) = 0xE900000000000074;
  *(v57 + 224) = v59;
  *(v57 + 232) = @"Label";
  v60 = @"Class";
  v61 = @"Key";
  v62 = @"Label";
  v63 = v60;
  v64 = v61;
  v65 = v62;
  v66 = @"AlwaysShowsButton";
  v143 = v63;
  v142 = v64;
  v141 = v65;
  v136 = v66;
  v67 = @"DisallowedVariableTypes";
  v68 = sub_1CA94C438("Account (WFAccount)", 19);
  v139 = v69;
  v70 = sub_1CA94C438("Account", 7);
  v72 = v71;
  v140 = &v135;
  MEMORY[0x1EEE9AC00](v70);
  v73 = &v135 - v151;
  sub_1CA948D98();
  v74 = [v150 bundleURL];
  MEMORY[0x1EEE9AC00](v74);
  v75 = &v135 - v149;
  sub_1CA948B68();

  v76 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v77 = sub_1CA2F9F14(v68, v139, v70, v72, 0, 0, v73, v75);
  *(v57 + 264) = v147;
  *(v57 + 240) = v77;
  _s3__C3KeyVMa_0(0);
  v140 = v78;
  v139 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v79 = sub_1CA94C1E8();
  v80 = sub_1CA2F864C(v79);
  v146[4] = v80;
  v81 = swift_initStackObject();
  *(v81 + 16) = xmmword_1CA981370;
  *(v81 + 32) = sub_1CA94C368();
  *(v81 + 40) = 0x6E756F6363414657;
  *(v81 + 48) = 0xE900000000000074;
  v82 = MEMORY[0x1E69E6158];
  v83 = v136;
  *(v81 + 64) = MEMORY[0x1E69E6158];
  *(v81 + 72) = v83;
  *(v81 + 80) = 1;
  v84 = v143;
  *(v81 + 104) = MEMORY[0x1E69E6370];
  *(v81 + 112) = v84;
  *(v81 + 120) = 0xD00000000000001DLL;
  *(v81 + 128) = 0x80000001CA9A39B0;
  v85 = v142;
  *(v81 + 144) = v82;
  *(v81 + 152) = v85;
  strcpy((v81 + 160), "SlackChannel");
  *(v81 + 173) = 0;
  *(v81 + 174) = -5120;
  v86 = v141;
  *(v81 + 184) = v82;
  *(v81 + 192) = v86;
  v87 = sub_1CA94C438("Channel (SlackChannel)", 22);
  v135 = v88;
  v89 = sub_1CA94C438("Channel", 7);
  v91 = v90;
  v136 = &v135;
  MEMORY[0x1EEE9AC00](v89);
  v92 = &v135 - v151;
  sub_1CA948D98();
  v93 = [v150 bundleURL];
  MEMORY[0x1EEE9AC00](v93);
  v94 = &v135 - v149;
  sub_1CA948B68();

  v95 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v96 = sub_1CA2F9F14(v87, v135, v89, v91, 0, 0, v92, v94);
  *(v81 + 224) = v147;
  *(v81 + 200) = v96;
  v97 = sub_1CA94C1E8();
  v98 = sub_1CA2F864C(v97);
  v146[5] = v98;
  v99 = swift_allocObject();
  *(v99 + 16) = xmmword_1CA9813C0;
  *(v99 + 32) = v143;
  *(v99 + 40) = 0xD000000000000019;
  *(v99 + 48) = 0x80000001CA99B030;
  v100 = MEMORY[0x1E69E6158];
  v101 = v142;
  *(v99 + 64) = MEMORY[0x1E69E6158];
  *(v99 + 72) = v101;
  strcpy((v99 + 80), "WFSlackInput");
  *(v99 + 93) = 0;
  *(v99 + 94) = -5120;
  v102 = v141;
  *(v99 + 104) = v100;
  *(v99 + 112) = v102;
  v103 = sub_1CA94C438("Content (WFSlackInput)", 22);
  v143 = v104;
  v105 = sub_1CA94C438("Content", 7);
  v107 = v106;
  v144 = &v135;
  MEMORY[0x1EEE9AC00](v105);
  v108 = &v135 - v151;
  sub_1CA948D98();
  v109 = [v150 bundleURL];
  MEMORY[0x1EEE9AC00](v109);
  v110 = &v135 - v149;
  sub_1CA948B68();

  v111 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v112 = sub_1CA2F9F14(v103, v143, v105, v107, 0, 0, v108, v110);
  *(v99 + 144) = v147;
  *(v99 + 120) = v112;
  v113 = sub_1CA94C1E8();
  v114 = sub_1CA2F864C(v113);
  v115 = v146;
  v146[6] = v114;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 360) = v115;
  *(inited + 384) = v116;
  *(inited + 392) = @"ParameterSummary";
  v117 = @"ParameterSummary";
  v118 = sub_1CA94C438("Post ${WFSlackInput} to ${SlackChannel} (Parameter Summary)", 59);
  v120 = v119;
  v121 = sub_1CA94C438("Post ${WFSlackInput} to ${SlackChannel}", 39);
  v123 = v122;
  v147 = &v135;
  MEMORY[0x1EEE9AC00](v121);
  v124 = &v135 - v151;
  sub_1CA948D98();
  v125 = [v150 bundleURL];
  MEMORY[0x1EEE9AC00](v125);
  v126 = &v135 - v149;
  sub_1CA948B68();

  v127 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v128 = sub_1CA2F9F14(v118, v120, v121, v123, 0, 0, v124, v126);
  v129 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v130 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 400) = v129;
  *(inited + 424) = v130;
  *(inited + 432) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v131 = swift_allocObject();
  *(v131 + 16) = xmmword_1CA97EDF0;
  *(v131 + 56) = MEMORY[0x1E69E6158];
  *(v131 + 32) = 0xD000000000000015;
  *(v131 + 40) = 0x80000001CA997230;
  v132 = @"RequiredResources";
  v133 = sub_1CA94C1E8();
  *(v131 + 88) = v137;
  *(v131 + 64) = v133;
  *(inited + 464) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  *(inited + 440) = v131;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA326234()
{
  v28[0] = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981380;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001DLL;
  *(inited + 48) = 0x80000001CA9A1270;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"LocallyProcessesData";
  v6 = MEMORY[0x1E69E6370];
  *(inited + 120) = 1;
  *(inited + 144) = v6;
  *(inited + 152) = @"Name";
  v7 = @"LocallyProcessesData";
  v8 = @"Name";
  v9 = sub_1CA94C438("Get Details of Reminders (Action Name)", 38, v28[0]);
  v11 = v10;
  v12 = sub_1CA94C438("Get Details of Reminders", 24);
  v14 = v13;
  v15 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v18 = [qword_1EDB9F690 bundleURL];
  v19 = sub_1CA948BA8();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v22 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v23 = sub_1CA2F9F14(v9, v11, v12, v14, 0, 0, v17, v21);
  *(inited + 184) = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 160) = v23;
  v24 = sub_1CA94C368();
  v25 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 192) = v24;
  *(inited + 200) = 0xD000000000000015;
  *(inited + 208) = 0x80000001CA993900;
  v26 = sub_1CA94C368();
  *(inited + 264) = v25;
  *(inited + 232) = v26;
  *(inited + 240) = 1953720652;
  *(inited + 248) = 0xE400000000000000;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA326614()
{
  v157 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000018;
  *(inited + 48) = 0x80000001CA9A3AF0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v163 = inited;
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("page|source|web|get", 19);
  v6 = v5;
  v7 = sub_1CA94C438("page|source|web|get", 19);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v166 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v167 = v11;
  v12 = &v150 - v166;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v13 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v164 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v165 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v150 - v165;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v162 = v20;
  v21 = v163;
  v163[10] = v19;
  v21[13] = v20;
  v21[14] = @"Description";
  *&v160 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1CA97EDF0;
  *(v22 + 32) = @"DescriptionResult";
  v23 = @"Description";
  v24 = @"DescriptionResult";
  v158 = sub_1CA94C438("HTML", 4);
  v156 = v25;
  v155 = sub_1CA94C438("HTML", 4);
  v27 = v26;
  v159 = &v150;
  MEMORY[0x1EEE9AC00](v155);
  v28 = &v150 - v166;
  sub_1CA948D98();
  v161 = v13;
  v29 = [v13 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v30 = v165;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v22 + 40) = sub_1CA2F9F14(v158, v156, v155, v27, 0, 0, v28, &v150 - v30);
  v32 = v162;
  *(v22 + 64) = v162;
  *(v22 + 72) = @"DescriptionSummary";
  v33 = @"DescriptionSummary";
  v158 = sub_1CA94C438("Converts the rich text passed as input to HTML text.", 52);
  v156 = v34;
  v35 = sub_1CA94C438("Converts the rich text passed as input to HTML text.", 52);
  v155 = v36;
  v159 = &v150;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v150 - v166;
  sub_1CA948D98();
  v38 = [v13 bundleURL];
  MEMORY[0x1EEE9AC00](v38);
  sub_1CA948B68();

  v39 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v40 = sub_1CA2F9F14(v158, v156, v35, v155, 0, 0, v37, &v150 - v30);
  *(v22 + 104) = v32;
  *(v22 + 80) = v40;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v41 = sub_1CA94C1E8();
  v42 = v160;
  v43 = sub_1CA6B3784(v41);
  v44 = v163;
  v163[15] = v43;
  v44[18] = v42;
  v44[19] = @"IconColor";
  v44[20] = 0x6F6769646E49;
  v44[21] = 0xE600000000000000;
  v45 = MEMORY[0x1E69E6158];
  v44[23] = MEMORY[0x1E69E6158];
  v44[24] = @"IconSymbol";
  v44[25] = 0xD000000000000011;
  v44[26] = 0x80000001CA9A3B70;
  v44[28] = v45;
  v44[29] = @"Input";
  v46 = v45;
  v47 = v44;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v48 = swift_initStackObject();
  v160 = xmmword_1CA981350;
  *(v48 + 16) = xmmword_1CA981350;
  *(v48 + 32) = 0x656C7069746C754DLL;
  *(v48 + 40) = 0xE800000000000000;
  v49 = MEMORY[0x1E69E6370];
  *(v48 + 48) = 0;
  *(v48 + 72) = v49;
  strcpy((v48 + 80), "ParameterKey");
  *(v48 + 93) = 0;
  *(v48 + 94) = -5120;
  *(v48 + 96) = 0x7475706E494657;
  *(v48 + 104) = 0xE700000000000000;
  *(v48 + 120) = v46;
  *(v48 + 128) = 0x6465726975716552;
  *(v48 + 136) = 0xE800000000000000;
  *(v48 + 144) = 1;
  *(v48 + 168) = v49;
  *(v48 + 176) = 0x7365707954;
  *(v48 + 184) = 0xE500000000000000;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v48 + 216) = v159;
  *(v48 + 192) = &unk_1F49F42F8;
  v50 = @"IconColor";
  v51 = @"IconSymbol";
  v52 = @"Input";
  v53 = sub_1CA94C1E8();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v158 = v54;
  v47[30] = v53;
  v47[33] = v54;
  v47[34] = @"Name";
  v55 = @"Name";
  v56 = sub_1CA94C438("Make HTML from Rich Text (Action Name)", 38);
  v153 = v57;
  v154 = v56;
  v58 = sub_1CA94C438("Make HTML from Rich Text", 24);
  v60 = v59;
  v155 = &v150;
  MEMORY[0x1EEE9AC00](v58);
  v61 = v166;
  sub_1CA948D98();
  v62 = v161;
  v63 = [v161 bundleURL];
  MEMORY[0x1EEE9AC00](v63);
  v64 = v165;
  sub_1CA948B68();

  v65 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v66 = sub_1CA2F9F14(v154, v153, v58, v60, 0, 0, &v150 - v61, &v150 - v64);
  v67 = v163;
  v163[35] = v66;
  v67[38] = v162;
  v67[39] = @"Output";
  v68 = swift_allocObject();
  *(v68 + 16) = v160;
  *(v68 + 32) = 0x75736F6C63736944;
  *(v68 + 40) = 0xEF6C6576654C6572;
  *(v68 + 48) = 0x63696C627550;
  *(v68 + 56) = 0xE600000000000000;
  *(v68 + 72) = MEMORY[0x1E69E6158];
  *(v68 + 80) = 0x656C7069746C754DLL;
  *(v68 + 88) = 0xE800000000000000;
  *(v68 + 96) = 0;
  *(v68 + 120) = MEMORY[0x1E69E6370];
  *(v68 + 128) = 0x614E74757074754FLL;
  *(v68 + 136) = 0xEA0000000000656DLL;
  v69 = @"Output";
  v70 = sub_1CA94C438("HTML from Rich Text (Default Output Name)", 41);
  v154 = v71;
  v155 = v70;
  v72 = sub_1CA94C438("HTML from Rich Text", 19);
  v74 = v73;
  v156 = &v150;
  MEMORY[0x1EEE9AC00](v72);
  v75 = &v150 - v61;
  sub_1CA948D98();
  v76 = [v62 bundleURL];
  MEMORY[0x1EEE9AC00](v76);
  sub_1CA948B68();

  v77 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v68 + 144) = sub_1CA2F9F14(v155, v154, v72, v74, 0, 0, v75, &v150 - v64);
  *(v68 + 168) = v162;
  *(v68 + 176) = 0x7365707954;
  *(v68 + 216) = v159;
  *(v68 + 184) = 0xE500000000000000;
  *(v68 + 192) = &unk_1F49F4328;
  v78 = MEMORY[0x1E69E6158];
  v79 = sub_1CA94C1E8();
  v80 = v163;
  v163[40] = v79;
  v80[43] = v158;
  v80[44] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v159 = swift_allocObject();
  *(v159 + 1) = xmmword_1CA981360;
  v158 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v81 = swift_initStackObject();
  *(v81 + 16) = v160;
  *(v81 + 32) = @"Class";
  *(v81 + 40) = 0xD000000000000011;
  *(v81 + 48) = 0x80000001CA99E620;
  *(v81 + 64) = v78;
  *(v81 + 72) = @"Description";
  v155 = @"Class";
  v82 = @"Parameters";
  v83 = @"Description";
  v84 = sub_1CA94C438("This indicates whether or not this action writes out an entire HTML document. If this is turned off, partial HTML will be returned if possible. (WFMakeFullDocument)", 164);
  v153 = v85;
  v86 = sub_1CA94C438("This indicates whether or not this action writes out an entire HTML document. If this is turned off, partial HTML will be returned if possible.", 143);
  v88 = v87;
  v154 = &v150;
  MEMORY[0x1EEE9AC00](v86);
  v89 = v166;
  sub_1CA948D98();
  v90 = [v161 bundleURL];
  MEMORY[0x1EEE9AC00](v90);
  v91 = &v150 - v165;
  sub_1CA948B68();

  v92 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v81 + 80) = sub_1CA2F9F14(v84, v153, v86, v88, 0, 0, &v150 - v89, v91);
  v93 = v162;
  *(v81 + 104) = v162;
  *(v81 + 112) = @"Key";
  *(v81 + 120) = 0xD000000000000012;
  *(v81 + 128) = 0x80000001CA9A3D70;
  *(v81 + 144) = MEMORY[0x1E69E6158];
  *(v81 + 152) = @"Label";
  v94 = @"Key";
  v95 = @"Label";
  v152 = v94;
  v151 = v95;
  v153 = sub_1CA94C438("Make Full Document (WFMakeFullDocument)", 39);
  v150 = v96;
  v97 = sub_1CA94C438("Make Full Document", 18);
  v99 = v98;
  v154 = &v150;
  MEMORY[0x1EEE9AC00](v97);
  sub_1CA948D98();
  v100 = [v161 bundleURL];
  MEMORY[0x1EEE9AC00](v100);
  v101 = &v150 - v165;
  sub_1CA948B68();

  v102 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v103 = sub_1CA2F9F14(v153, v150, v97, v99, 0, 0, &v150 - v89, v101);
  *(v81 + 184) = v93;
  *(v81 + 160) = v103;
  _s3__C3KeyVMa_0(0);
  v154 = v104;
  v153 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v105 = sub_1CA94C1E8();
  v106 = sub_1CA2F864C(v105);
  v159[4] = v106;
  v107 = swift_allocObject();
  *(v107 + 16) = v160;
  *(v107 + 32) = v155;
  *(v107 + 40) = 0xD000000000000019;
  *(v107 + 48) = 0x80000001CA99B030;
  v108 = MEMORY[0x1E69E6158];
  v109 = v152;
  *(v107 + 64) = MEMORY[0x1E69E6158];
  *(v107 + 72) = v109;
  *(v107 + 80) = 0x7475706E494657;
  *(v107 + 88) = 0xE700000000000000;
  v110 = v151;
  *(v107 + 104) = v108;
  *(v107 + 112) = v110;
  v111 = sub_1CA94C438("Rich Text (WFInput)", 19);
  v155 = v112;
  v156 = v111;
  v152 = sub_1CA94C438("Rich Text", 9);
  v114 = v113;
  *&v160 = &v150;
  MEMORY[0x1EEE9AC00](v152);
  v115 = v166;
  sub_1CA948D98();
  v116 = v161;
  v117 = [v161 bundleURL];
  v151 = &v150;
  MEMORY[0x1EEE9AC00](v117);
  v118 = v165;
  sub_1CA948B68();

  v119 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v107 + 120) = sub_1CA2F9F14(v156, v155, v152, v114, 0, 0, &v150 - v115, &v150 - v118);
  v120 = v162;
  *(v107 + 144) = v162;
  *(v107 + 152) = @"Placeholder";
  v121 = @"Placeholder";
  v122 = sub_1CA94C438("Rich Text (WFInput)", 19);
  v155 = v123;
  v156 = v122;
  v152 = sub_1CA94C438("Rich Text", 9);
  v125 = v124;
  *&v160 = &v150;
  MEMORY[0x1EEE9AC00](v152);
  sub_1CA948D98();
  v126 = [v116 bundleURL];
  MEMORY[0x1EEE9AC00](v126);
  sub_1CA948B68();

  v127 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v128 = sub_1CA2F9F14(v156, v155, v152, v125, 0, 0, &v150 - v115, &v150 - v118);
  *(v107 + 184) = v120;
  *(v107 + 160) = v128;
  v129 = sub_1CA94C1E8();
  v130 = sub_1CA2F864C(v129);
  v131 = v159;
  v159[5] = v130;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v133 = v163;
  v163[45] = v131;
  v133[48] = v132;
  v133[49] = @"ParameterSummary";
  v134 = @"ParameterSummary";
  v135 = sub_1CA94C438("Make HTML from ${WFInput} (Parameter Summary)", 45);
  v137 = v136;
  v138 = sub_1CA94C438("Make HTML from ${WFInput}", 25);
  v140 = v139;
  v162 = &v150;
  MEMORY[0x1EEE9AC00](v138);
  v141 = &v150 - v166;
  sub_1CA948D98();
  v142 = [v161 bundleURL];
  MEMORY[0x1EEE9AC00](v142);
  v143 = &v150 - v165;
  sub_1CA948B68();

  v144 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v145 = sub_1CA2F9F14(v135, v137, v138, v140, 0, 0, v141, v143);
  v146 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v147 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v133[50] = v146;
  v133[53] = v147;
  v133[54] = @"ResidentCompatible";
  v133[58] = MEMORY[0x1E69E6370];
  *(v133 + 440) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v148 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA327928()
{
  v143 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9A3E40;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v146 = inited;
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("programming|scripting|var", 25);
  v6 = v5;
  v7 = sub_1CA94C438("programming|scripting|var", 25);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v150 = v11;
  v152 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v132 - v152;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v13 = qword_1EDB9F690;
  v147 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v149 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v151 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v132 - v151;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v148 = v20;
  v21 = v146;
  v146[10] = v19;
  v21[13] = v20;
  v21[14] = @"Description";
  v145 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1CA981310;
  *(v22 + 32) = @"DescriptionSummary";
  v23 = @"Description";
  v24 = @"DescriptionSummary";
  v25 = sub_1CA94C438("Sets the value of the specified variable to the input of this action.", 69);
  *&v142 = v26;
  v27 = sub_1CA94C438("Sets the value of the specified variable to the input of this action.", 69);
  v29 = v28;
  v144 = &v132;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v132 - v152;
  sub_1CA948D98();
  v31 = [v13 bundleURL];
  MEMORY[0x1EEE9AC00](v31);
  v32 = &v132 - v151;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v34 = sub_1CA2F9F14(v25, v142, v27, v29, 0, 0, v30, v32);
  *(v22 + 64) = v148;
  *(v22 + 40) = v34;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v35 = sub_1CA94C1E8();
  v36 = v145;
  v21[15] = sub_1CA6B3784(v35);
  v21[18] = v36;
  v21[19] = @"IconName";
  v21[20] = 0x656C626169726156;
  v21[21] = 0xE800000000000000;
  v37 = MEMORY[0x1E69E6158];
  v21[23] = MEMORY[0x1E69E6158];
  v21[24] = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v38 = swift_initStackObject();
  v142 = xmmword_1CA981370;
  *(v38 + 16) = xmmword_1CA981370;
  *(v38 + 32) = 0xD00000000000001DLL;
  *(v38 + 40) = 0x80000001CA9A3ED0;
  v39 = MEMORY[0x1E69E6370];
  *(v38 + 48) = 1;
  *(v38 + 72) = v39;
  *(v38 + 80) = 0x656C7069746C754DLL;
  *(v38 + 88) = 0xE800000000000000;
  *(v38 + 96) = 1;
  *(v38 + 120) = v39;
  strcpy((v38 + 128), "ParameterKey");
  *(v38 + 141) = 0;
  *(v38 + 142) = -5120;
  *(v38 + 144) = 0x7475706E494657;
  *(v38 + 152) = 0xE700000000000000;
  *(v38 + 168) = v37;
  *(v38 + 176) = 0x6465726975716552;
  *(v38 + 184) = 0xE800000000000000;
  *(v38 + 192) = 1;
  *(v38 + 216) = v39;
  *(v38 + 224) = 0x7365707954;
  v40 = v39;
  *(v38 + 232) = 0xE500000000000000;
  *(v38 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v38 + 240) = &unk_1F49F4358;
  v41 = @"IconName";
  v42 = @"Input";
  v43 = sub_1CA94C1E8();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v21[25] = v43;
  v21[28] = v44;
  v21[29] = @"InputPassthrough";
  *(v21 + 240) = 1;
  v21[33] = v40;
  v21[34] = @"Name";
  v45 = @"InputPassthrough";
  v46 = @"Name";
  v47 = sub_1CA94C438("Set Variable (Action Name)", 26);
  v49 = v48;
  v50 = sub_1CA94C438("Set Variable", 12);
  v52 = v51;
  v145 = &v132;
  MEMORY[0x1EEE9AC00](v50);
  v53 = &v132 - v152;
  sub_1CA948D98();
  v54 = [v147 bundleURL];
  MEMORY[0x1EEE9AC00](v54);
  v55 = &v132 - v151;
  sub_1CA948B68();

  v56 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v57 = sub_1CA2F9F14(v47, v49, v50, v52, 0, 0, v53, v55);
  v58 = v146;
  v146[35] = v57;
  v58[38] = v148;
  v58[39] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v145 = swift_allocObject();
  *(v145 + 1) = xmmword_1CA981360;
  v144 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v59 = swift_initStackObject();
  *(v59 + 16) = xmmword_1CA981350;
  *(v59 + 32) = @"Class";
  *(v59 + 40) = 0xD000000000000019;
  *(v59 + 48) = 0x80000001CA99B030;
  v60 = MEMORY[0x1E69E6158];
  *(v59 + 64) = MEMORY[0x1E69E6158];
  *(v59 + 72) = @"Key";
  *(v59 + 80) = 0x7475706E494657;
  *(v59 + 88) = 0xE700000000000000;
  *(v59 + 104) = v60;
  *(v59 + 112) = @"Label";
  v61 = @"Class";
  v62 = @"Key";
  v63 = @"Label";
  v139 = v61;
  v138 = v62;
  v140 = v63;
  v64 = @"Parameters";
  v65 = sub_1CA94C438("Input (WFInput)", 15);
  v135 = v66;
  v136 = v65;
  v67 = sub_1CA94C438("Input", 5);
  v69 = v68;
  v137 = &v132;
  MEMORY[0x1EEE9AC00](v67);
  v70 = v152;
  sub_1CA948D98();
  v71 = [v147 bundleURL];
  MEMORY[0x1EEE9AC00](v71);
  v72 = &v132 - v151;
  sub_1CA948B68();

  v73 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v59 + 120) = sub_1CA2F9F14(v136, v135, v67, v69, 0, 0, &v132 - v70, v72);
  v74 = v148;
  *(v59 + 144) = v148;
  *(v59 + 152) = @"Placeholder";
  v137 = @"Placeholder";
  v75 = sub_1CA94C438("Input (WFInput)", 15);
  v134 = v76;
  v135 = v75;
  v77 = sub_1CA94C438("Input", 5);
  v133 = v78;
  v136 = &v132;
  MEMORY[0x1EEE9AC00](v77);
  v79 = &v132 - v70;
  sub_1CA948D98();
  v80 = v147;
  v81 = [v147 bundleURL];
  MEMORY[0x1EEE9AC00](v81);
  v82 = &v132 - v151;
  sub_1CA948B68();

  v83 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v84 = sub_1CA2F9F14(v135, v134, v77, v133, 0, 0, v79, v82);
  *(v59 + 184) = v74;
  *(v59 + 160) = v84;
  _s3__C3KeyVMa_0(0);
  v136 = v85;
  v135 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v86 = sub_1CA94C1E8();
  v87 = sub_1CA2F864C(v86);
  v145[4] = v87;
  v88 = swift_allocObject();
  *(v88 + 16) = v142;
  *(v88 + 32) = v139;
  *(v88 + 40) = 0xD000000000000018;
  *(v88 + 48) = 0x80000001CA9A3F20;
  v89 = MEMORY[0x1E69E6158];
  v90 = v138;
  *(v88 + 64) = MEMORY[0x1E69E6158];
  *(v88 + 72) = v90;
  strcpy((v88 + 80), "WFVariableName");
  *(v88 + 95) = -18;
  v91 = v140;
  *(v88 + 104) = v89;
  *(v88 + 112) = v91;
  v92 = sub_1CA94C438("Variable (WFVariableName)", 25);
  v140 = v93;
  v141 = v92;
  v94 = sub_1CA94C438("Variable", 8);
  v139 = v95;
  *&v142 = &v132;
  MEMORY[0x1EEE9AC00](v94);
  v96 = &v132 - v152;
  sub_1CA948D98();
  v97 = v80;
  v98 = [v80 bundleURL];
  v138 = &v132;
  MEMORY[0x1EEE9AC00](v98);
  v99 = v151;
  sub_1CA948B68();

  v100 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v88 + 120) = sub_1CA2F9F14(v141, v140, v94, v139, 0, 0, v96, &v132 - v99);
  v101 = v137;
  *(v88 + 144) = v148;
  *(v88 + 152) = v101;
  v102 = sub_1CA94C438("Variable Name (WFVariableName)", 30);
  v140 = v103;
  v141 = v102;
  v104 = sub_1CA94C438("Variable Name", 13);
  v106 = v105;
  *&v142 = &v132;
  MEMORY[0x1EEE9AC00](v104);
  v107 = &v132 - v152;
  sub_1CA948D98();
  v108 = [v97 bundleURL];
  MEMORY[0x1EEE9AC00](v108);
  sub_1CA948B68();

  v109 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v88 + 160) = sub_1CA2F9F14(v141, v140, v104, v106, 0, 0, v107, &v132 - v99);
  *(v88 + 184) = v148;
  *(v88 + 192) = @"TextAlignment";
  *(v88 + 224) = MEMORY[0x1E69E6158];
  *(v88 + 200) = 0x7468676952;
  *(v88 + 208) = 0xE500000000000000;
  v110 = @"TextAlignment";
  v111 = sub_1CA94C1E8();
  v112 = sub_1CA2F864C(v111);
  v113 = v145;
  v145[5] = v112;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v115 = v146;
  v146[40] = v113;
  v115[43] = v114;
  v115[44] = @"ParameterSummary";
  v116 = @"ParameterSummary";
  v117 = sub_1CA94C438("Set variable ${WFVariableName} to ${WFInput} (Parameter Summary)", 64);
  v119 = v118;
  v120 = sub_1CA94C438("Set variable ${WFVariableName} to ${WFInput}", 44);
  v122 = v121;
  v148 = &v132;
  MEMORY[0x1EEE9AC00](v120);
  v123 = &v132 - v152;
  sub_1CA948D98();
  v124 = [v147 bundleURL];
  MEMORY[0x1EEE9AC00](v124);
  v125 = &v132 - v151;
  sub_1CA948B68();

  v126 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v127 = sub_1CA2F9F14(v117, v119, v120, v122, 0, 0, v123, v125);
  v128 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v129 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v115[45] = v128;
  v115[48] = v129;
  v115[49] = @"ResidentCompatible";
  v115[53] = MEMORY[0x1E69E6370];
  *(v115 + 400) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v130 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA328928(void *a1)
{
  v1 = a1;
  v2 = LNCodableValueType.wf_displayRepresentation.getter();

  return v2;
}

id LNCodableValueType.wf_displayRepresentation.getter()
{
  v1 = sub_1CA949328();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CA949338();
  v6 = [v0 identifier];
  sub_1CA94C3A8();

  sub_1CA949318();
  v7 = sub_1CA3118B4(v4, v5);

  (*(v2 + 8))(v4, v1);
  if (v7)
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (!v8)
    {
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = [v8 displayRepresentation];

  return v9;
}

__n128 UpdatableParameterState.init(_:subject:variableProvider:parameter:)@<Q0>(unint64_t a1@<X0>, void *a4@<X4>, __n128 *a5@<X8>)
{
  sub_1CA94C1E8();
  sub_1CA94C1A8();

  v8 = a4;
  swift_unknownObjectRetain();
  UpdatableParameterState.init(serializedRepresentation:variableProvider:parameter:)(a4, &v16);
  v9 = v17;
  v10 = v18;
  v11 = v19;
  v15 = v16;
  if (v16.n128_u64[0] == 1)
  {

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  else
  {
    v12 = sub_1CA94C368();

    v13 = [objc_allocWithZone(WFStringSubstitutableState) initWithValue_];
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    v9 = a1;
    v10 = v13;
  }

  result = v15;
  *a5 = v15;
  a5[1].n128_u64[0] = v9;
  a5[1].n128_u64[1] = v10;
  a5[2].n128_u8[0] = v11;
  return result;
}

uint64_t sub_1CA328CB0()
{
  OUTLINED_FUNCTION_33_4();
  sub_1CA94C458();
}

uint64_t sub_1CA328DA0()
{
  OUTLINED_FUNCTION_33_4();
  sub_1CA94C458();
}

uint64_t sub_1CA328E90(uint64_t a1, char a2)
{
  sub_1CA94C458();
}

uint64_t sub_1CA328F68(uint64_t a1, unsigned __int8 a2)
{
  sub_1CA94C458();
}

WorkflowKit::PropertyUpdateOperator_optional __swiftcall PropertyUpdateOperator.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t UpdatableParameterState.value.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *(v1 + 16) = a1;
  return result;
}

void *UpdatableParameterState.subject.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t UpdatableParameterState.containedVariables.getter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444460, &qword_1CA983508);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA97EDF0;
  *(inited + 32) = v1;
  *(inited + 40) = v2;
  v34 = MEMORY[0x1E69E7CC0];
  v40[0] = MEMORY[0x1E69E7CC0];
  swift_unknownObjectRetain();
  v4 = v1;
  for (i = 0; i != 2; ++i)
  {
    if (*(inited + 8 * i + 32))
    {
      v7 = swift_unknownObjectRetain();
      MEMORY[0x1CCAA1490](v7);
      if (*((v40[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1CA94C698();
      }

      sub_1CA94C6E8();
      v34 = v40[0];
    }
  }

  swift_setDeallocating();
  sub_1CA32E348(&qword_1EC444600, &qword_1CA983920);
  result = sub_1CA25B410(v34);
  v9 = result;
  v10 = 0;
  v11 = v34 & 0xC000000000000001;
  v12 = MEMORY[0x1E69E7CC0];
  v35 = result;
  while (1)
  {
    if (v10 == v9)
    {

      return v12;
    }

    if (v11)
    {
      result = MEMORY[0x1CCAA22D0](v10, v34);
    }

    else
    {
      if (v10 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_47;
      }

      result = swift_unknownObjectRetain();
    }

    v13 = __OFADD__(v10++, 1);
    if (v13)
    {
      break;
    }

    v14 = [swift_unknownObjectRetain() containedVariables];
    sub_1CA25B3D0(0, &qword_1EC441AC0, off_1E836F4B0);
    v15 = sub_1CA94C658();
    swift_unknownObjectRelease_n();

    if (v15 >> 62)
    {
      v16 = sub_1CA94D328();
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = v12 >> 62;
    if (v12 >> 62)
    {
      v33 = v16;
      result = sub_1CA94D328();
      v16 = v33;
    }

    else
    {
      result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v18 = result + v16;
    if (__OFADD__(result, v16))
    {
      goto LABEL_48;
    }

    v38 = v16;
    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v17)
      {
LABEL_24:
        sub_1CA94D328();
      }

LABEL_25:
      result = sub_1CA94D488();
      v39 = result;
      v19 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_26;
    }

    if (v17)
    {
      goto LABEL_24;
    }

    v19 = v12 & 0xFFFFFFFFFFFFFF8;
    if (v18 > *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_25;
    }

    v39 = v12;
LABEL_26:
    v20 = *(v19 + 16);
    v21 = (*(v19 + 24) >> 1) - v20;
    v22 = v19 + 8 * v20;
    v37 = v19;
    if (v15 >> 62)
    {
      v24 = sub_1CA94D328();
      if (v24)
      {
        v25 = v24;
        result = sub_1CA94D328();
        if (v21 < result)
        {
          goto LABEL_52;
        }

        if (v25 < 1)
        {
          goto LABEL_53;
        }

        v36 = result;
        v26 = v22 + 32;
        sub_1CA276B44(&qword_1EC447B50, &unk_1EC444470, &unk_1CA983510);
        for (j = 0; j != v25; ++j)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444470, &unk_1CA983510);
          v28 = sub_1CA276BDC(v40, j, v15);
          v30 = *v29;
          v28(v40, 0);
          *(v26 + 8 * j) = v30;
        }

        v11 = v34 & 0xC000000000000001;
        v9 = v35;
        v23 = v36;
        goto LABEL_36;
      }

LABEL_40:

      v12 = v39;
      if (v38 > 0)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v23 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v23)
      {
        goto LABEL_40;
      }

      if (v21 < v23)
      {
        goto LABEL_51;
      }

      swift_arrayInitWithCopy();
LABEL_36:

      v12 = v39;
      if (v23 < v38)
      {
        goto LABEL_49;
      }

      if (v23 > 0)
      {
        v31 = *(v37 + 16);
        v13 = __OFADD__(v31, v23);
        v32 = v31 + v23;
        if (v13)
        {
          goto LABEL_50;
        }

        *(v37 + 16) = v32;
      }
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
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
  return result;
}

uint64_t UpdatableParameterState.serializedRepresentation.getter()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  v5 = sub_1CA94C1E8();
  v6 = [v4 serializedRepresentation];
  if (v6)
  {
    v7 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = v5;
    ObjectType = swift_getObjectType();
    sub_1CA32EB34(v7, 0x63656A6275534657, 0xE900000000000074, isUniquelyReferenced_nonNull_native, &v19, ObjectType);
    v5 = v19;
  }

  else
  {
    sub_1CA271BF8(0x63656A6275534657, 0xE900000000000074);
    if (v11)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v19 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444FC0, &unk_1CA987A10);
      sub_1CA94D588();

      sub_1CA94D5A8();
      swift_unknownObjectRelease();
    }
  }

  v12 = sub_1CA94C988();
  v13 = swift_isUniquelyReferenced_nonNull_native();
  v19 = v5;
  sub_1CA32EA24(v12, 0x74617265704F4657, 0xEA0000000000726FLL, v13, &v19, sub_1CA66E3A4);
  v14 = v19;
  if (v3 <= 1)
  {
    if (v2 && [v2 serializedRepresentation])
    {
      OUTLINED_FUNCTION_34_5();
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v19 = v14;
      v16 = swift_getObjectType();
      sub_1CA32EB34(v2, 0x65756C61564657, 0xE700000000000000, v15, &v19, v16);
    }

    else
    {
      sub_1CA271BF8(0x65756C61564657, 0xE700000000000000);
      if (v17)
      {
        OUTLINED_FUNCTION_34_5();
        swift_isUniquelyReferenced_nonNull_native();
        v19 = v14;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444FC0, &unk_1CA987A10);
        sub_1CA94D588();

        sub_1CA94D5A8();
        swift_unknownObjectRelease();
      }
    }
  }

  v10 = sub_1CA94C1A8();

  return v10;
}

id UpdatableParameterState.init(serializedRepresentation:variableProvider:parameter:)@<X0>(void *a3@<X2>, uint64_t a4@<X8>)
{
  if (!a3)
  {
    goto LABEL_10;
  }

  type metadata accessor for WFUpdatableParameter();
  v6 = swift_dynamicCastClass();
  if (!v6 || (v7 = v6 + OBJC_IVAR___WFUpdatableParameter_stateDataSource, swift_beginAccess(), (Strong = swift_unknownObjectWeakLoadStrong()) == 0))
  {

LABEL_10:
    swift_unknownObjectRelease();
LABEL_11:
    result = swift_unknownObjectRelease();
    *a4 = 1;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    *(a4 + 32) = 0;
    return result;
  }

  v9 = Strong;
  v10 = *(v7 + 8);
  v11 = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444490, &qword_1CA983530);
  if (swift_dynamicCast())
  {

    if (sub_1CA323E28())
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v12 = sub_1CA94C978();
        swift_unknownObjectRelease();
        if (v12 >= 5)
        {
          LOBYTE(v12) = 0;
        }

        goto LABEL_19;
      }

      swift_unknownObjectRelease();
    }

    LOBYTE(v12) = 0;
LABEL_19:
    if (sub_1CA323E28())
    {
      objc_opt_self();
      v25 = swift_dynamicCastObjCClass();
      if (v25)
      {
        v42 = v12;
        v26 = v10;
        v44 = [objc_allocWithZone(WFStringSubstitutableState) initWithValue_];
        v27 = sub_1CA323E28();

        if (v27)
        {
          swift_getObjectType();
          v28 = sub_1CA94C3A8();
          v29 = (*(v26 + 40))(v28);

          swift_unknownObjectRelease();
          v10 = v26;
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          result = swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          result = swift_unknownObjectRelease();
          v29 = 0;
          v10 = v26;
        }

        v30 = v44;
        LOBYTE(v12) = v42;
        goto LABEL_35;
      }

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    v29 = 0;
    v30 = 0;
LABEL_35:
    *a4 = v9;
    *(a4 + 8) = v10;
    *(a4 + 16) = v29;
    *(a4 + 24) = v30;
    *(a4 + 32) = v12;
    return result;
  }

  v14 = swift_dynamicCastClass();
  if (!v14)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease_n();

    goto LABEL_11;
  }

  v15 = v14;
  v41 = v10;
  v16 = v11;
  result = [v15 key];
  if (result)
  {
    v17 = result;
    v43 = [objc_allocWithZone(WFStringSubstitutableState) initWithValue_];

    ObjectType = swift_getObjectType();
    v19 = [v15 key];

    v20 = sub_1CA94C3A8();
    v22 = v21;

    v23 = (*(v41 + 64))(v20, v22, ObjectType);

    if (v23)
    {
      v24 = [v23 valueType];

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v24 = 0;
    }

    v31 = [objc_opt_self() BOOLValueType];
    v32 = v31;
    v39 = v16;
    if (v24)
    {
      sub_1CA25B3D0(0, &unk_1EC441AB0, 0x1E69ACAA0);
      v33 = sub_1CA94CFD8();

      v10 = v41;
      if (v33)
      {
        v34 = 1;
LABEL_32:
        v35 = OBJC_IVAR___WFUpdatableParameter_underlyingParameter;
        [*&v15[OBJC_IVAR___WFUpdatableParameter_underlyingParameter] stateClass];
        swift_getObjCClassMetadata();
        v36 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v12 = *&v15[v35];
        OUTLINED_FUNCTION_24_6();
        v29 = [v37 v38];

        swift_unknownObjectRelease();
        result = swift_unknownObjectRelease();
        v30 = v43;
        LOBYTE(v12) = v34;
        goto LABEL_35;
      }
    }

    else
    {

      v10 = v41;
    }

    v34 = 0;
    goto LABEL_32;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA329E68(unsigned __int8 a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981310;
  *(inited + 32) = sub_1CA94C3A8();
  *(inited + 40) = v3;
  if (v1 >= 2)
  {
    sub_1CA94C438("There was a problem running the action.", 39);
  }

  else
  {
    sub_1CA94C438("Please choose a value for each parameter in this action.", 56);
  }

  if (qword_1EDB9F5F0 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_1EDB9F5F0);
  }

  v4 = qword_1EDB9F690;
  v5 = sub_1CA94C368();
  v6 = sub_1CA94C368();

  v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

  v8 = sub_1CA94C3A8();
  v10 = v9;

  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v8;
  *(inited + 56) = v10;
  return sub_1CA94C1E8();
}

unint64_t sub_1CA329FCC(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t sub_1CA329FDC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CA329FCC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1CA32A008@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CA2718A8(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1CA32A094(uint64_t a1)
{
  sub_1CA32F4C0();
  sub_1CA32F514();
  sub_1CA29AADC();
  return sub_1CA94D888();
}

uint64_t UpdatableParameterState.process(context:)(uint64_t a1)
{
  *(v2 + 152) = a1;
  v3 = *(v1 + 16);
  *(v2 + 160) = *v1;
  *(v2 + 176) = v3;
  *(v2 + 329) = *(v1 + 32);
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA32A108()
{
  OUTLINED_FUNCTION_14();
  if (v0[23])
  {
    v1 = swift_task_alloc();
    v0[24] = v1;
    *v1 = v0;
    v1[1] = sub_1CA32A210;
    v2 = v0[19];

    return sub_1CA32B7E4(v2);
  }

  else
  {
    v4 = sub_1CA32EC44();
    OUTLINED_FUNCTION_127(&type metadata for UpdatableParameterState.ProcessingError, v4);
    *v5 = 0;
    swift_willThrow();
    OUTLINED_FUNCTION_5();

    return v6();
  }
}

uint64_t sub_1CA32A210()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  *(v2 + 200) = v1;

  if (v0)
  {
    OUTLINED_FUNCTION_5();

    return v3();
  }

  else
  {
    OUTLINED_FUNCTION_90();

    return MEMORY[0x1EEE6DFA0](v5, v6, v7);
  }
}

uint64_t sub_1CA32A334()
{
  v1 = *(v0 + 200);
  if (!v1 || (*(v0 + 144) = v1, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444280, &qword_1CA983550), !swift_dynamicCast()))
  {
    v27 = sub_1CA32EC44();
    OUTLINED_FUNCTION_127(&type metadata for UpdatableParameterState.ProcessingError, v27);
    *v28 = 0;
LABEL_13:
    swift_willThrow();
    goto LABEL_14;
  }

  v2 = *(v0 + 160);
  v3 = *(v0 + 128);
  v4 = *(v0 + 136);
  *(v0 + 208) = v3;
  *(v0 + 216) = v4;
  if (!v2 || (v5 = *(v0 + 168), ObjectType = swift_getObjectType(), v7 = (*(v5 + 64))(v3, v4, ObjectType, v5), (*(v0 + 224) = v7) == 0))
  {

    v29 = sub_1CA32EC44();
    OUTLINED_FUNCTION_127(&type metadata for UpdatableParameterState.ProcessingError, v29);
    *v30 = 2;
    goto LABEL_13;
  }

  v8 = v7;
  switch(*(v0 + 329))
  {
    case 2:
      swift_getObjectType();
      OUTLINED_FUNCTION_35_2();
      v41 = swift_task_alloc();
      *(v0 + 304) = v41;
      *v41 = v0;
      v41[1] = sub_1CA32AF64;
      OUTLINED_FUNCTION_37_3();

      __asm { BRAA            X5, X16 }

      return result;
    case 3:

      v44 = objc_allocWithZone(MEMORY[0x1E69AC8E0]);
      v40 = OUTLINED_FUNCTION_14_9();
      v45 = 0;
      goto LABEL_25;
    case 4:

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
      v33 = [v8 valueType];
      v34 = objc_allocWithZone(MEMORY[0x1E69ACA90]);
      v38 = OUTLINED_FUNCTION_38_3(v34, v35, v36, v37);
      v39 = objc_allocWithZone(MEMORY[0x1E69AC8E0]);
      v40 = OUTLINED_FUNCTION_14_9();
      goto LABEL_24;
    default:
      if (!*(v0 + 176))
      {

        sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);
        v46 = [v8 valueType];
        v47 = objc_opt_self();
        v48 = [v47 BOOLValueType];
        v49 = sub_1CA94CFD8();

        if (v49)
        {
          v50 = [v47 BOOLValueType];
          v51 = objc_allocWithZone(MEMORY[0x1E69ACA90]);
          v38 = OUTLINED_FUNCTION_38_3(v51, v52, v53, v54);
          objc_allocWithZone(MEMORY[0x1E69AC8E0]);
          v40 = 0x79747265706F7270;
LABEL_24:
          v45 = v38;
LABEL_25:
          sub_1CA32E17C(v40, 0xE800000000000000, v45);
        }

        else
        {
          v59 = [objc_allocWithZone(MEMORY[0x1E69AC8F0]) init];
          [v59 setForcesNeedsValue_];
          objc_allocWithZone(MEMORY[0x1E69AC8E0]);
          v60 = v59;
          sub_1CA32E1E0(0x79747265706F7270, 0xE800000000000000, 0, v59);

          v8 = v60;
        }

        OUTLINED_FUNCTION_1_3();
        OUTLINED_FUNCTION_37_3();

        __asm { BRAA            X2, X16 }
      }

      v9 = *(v0 + 152);
      swift_unknownObjectRetain();
      v10 = [v9 parameter];
      type metadata accessor for WFUpdatableParameter();
      v11 = swift_dynamicCastClass();
      if (!v11)
      {

        v57 = sub_1CA32EC44();
        OUTLINED_FUNCTION_127(&type metadata for UpdatableParameterState.ProcessingError, v57);
        *v58 = 3;
        swift_willThrow();
        swift_unknownObjectRelease();

LABEL_14:
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_37_3();

        __asm { BRAA            X1, X16 }
      }

      v12 = *(v0 + 152);
      v13 = *(v11 + OBJC_IVAR___WFUpdatableParameter_underlyingParameter);
      *(v0 + 232) = v13;
      v14 = v13;

      v15 = [v12 variableSource];
      v16 = v14;
      v17 = [v12 isInputParameter];
      v18 = [v12 environment];
      v19 = [v12 contentAttributionTracker];
      v20 = [v12 widgetSizeClass];
      v21 = objc_allocWithZone(WFParameterStateProcessingContext);
      *(v0 + 240) = sub_1CA4710A8(v15, v16, v17, v18, v19, v20);
      swift_getObjectType();
      v22 = swift_task_alloc();
      *(v0 + 248) = v22;
      *v22 = v0;
      v22[1] = sub_1CA32A9B0;
      OUTLINED_FUNCTION_34_5();
      OUTLINED_FUNCTION_37_3();

      return WFParameterState.process(context:)(v23, v24);
  }
}

uint64_t sub_1CA32A9B0()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  *(v2 + 256) = v1;
  *(v2 + 264) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1CA32AAB8()
{
  v1 = v0[32];
  if (v1)
  {
    v2 = v0[27];
    v3 = v0[26];
    v4 = v0[21];
    ObjectType = swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CA981310;
    *(inited + 32) = v3;
    *(inited + 40) = v2;
    *(inited + 72) = swift_getObjectType();
    *(inited + 48) = v1;
    swift_unknownObjectRetain();
    v7 = sub_1CA94C1E8();
    v0[34] = v7;
    OUTLINED_FUNCTION_35_2();
    v19 = (v8 + *v8);
    v9 = swift_task_alloc();
    v0[35] = v9;
    *v9 = v0;
    v9[1] = sub_1CA32ACFC;
    v10 = OUTLINED_FUNCTION_34_5();

    return v19(v10, v7, ObjectType, v4);
  }

  else
  {

    v13 = v0[29];
    v12 = v0[30];
    v14 = v0[28];
    v15 = sub_1CA32EC44();
    v16 = OUTLINED_FUNCTION_127(&type metadata for UpdatableParameterState.ProcessingError, v15);
    OUTLINED_FUNCTION_30_4(v16, v17);

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_5();

    return v18();
  }
}

uint64_t sub_1CA32ACFC()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 288) = v5;
  *(v3 + 296) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1CA32AE04()
{
  v1 = v0[36];
  if (v1)
  {
    v3 = v0[29];
    v2 = v0[30];
    v4 = v0[28];
    v5 = objc_allocWithZone(MEMORY[0x1E69AC8E0]);
    v6 = v1;
    v7 = OUTLINED_FUNCTION_14_9();
    sub_1CA32E17C(v7, 0xE800000000000000, v1);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v8 = OUTLINED_FUNCTION_1_3();

    return v9(v8);
  }

  else
  {
    swift_unknownObjectRelease();
    v12 = v0[29];
    v11 = v0[30];
    v13 = v0[28];
    v14 = sub_1CA32EC44();
    v15 = OUTLINED_FUNCTION_127(&type metadata for UpdatableParameterState.ProcessingError, v14);
    OUTLINED_FUNCTION_30_4(v15, v16);

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_5();

    return v17();
  }
}

uint64_t sub_1CA32AF64()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_2_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_13();
  *v8 = v7;
  *(v5 + 312) = v0;

  if (!v0)
  {
    *(v5 + 320) = v3;
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1CA32B078(uint64_t a1)
{
  v21 = v1;
  v2 = *(v1 + 320);
  if (v2 && (v3 = [*(v1 + 320) value], sub_1CA94D258(), swift_unknownObjectRelease(), v4 = MEMORY[0x1E69E6370], (swift_dynamicCast() & 1) != 0))
  {
    v5 = *(v1 + 224);
    v6 = *(v1 + 328);
    v20[3] = v4;
    LOBYTE(v20[0]) = (v6 & 1) == 0;
    v7 = [objc_opt_self() BOOLValueType];
    v8 = objc_allocWithZone(MEMORY[0x1E69ACA90]);
    v9 = sub_1CA320AB4(v20, v7);
    objc_allocWithZone(MEMORY[0x1E69AC8E0]);
    v10 = v9;
    v11 = OUTLINED_FUNCTION_14_9();
    sub_1CA32E17C(v11, 0xE800000000000000, v9);

    v12 = OUTLINED_FUNCTION_1_3();

    return v13(v12);
  }

  else
  {
    v15 = *(v1 + 224);
    v16 = sub_1CA32EC44();
    v17 = OUTLINED_FUNCTION_127(&type metadata for UpdatableParameterState.ProcessingError, v16);
    OUTLINED_FUNCTION_30_4(v17, v18);

    OUTLINED_FUNCTION_5();

    return v19();
  }
}

uint64_t sub_1CA32B234()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 224);

  OUTLINED_FUNCTION_5();

  return v2();
}

uint64_t sub_1CA32B294()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 232);
  v2 = *(v0 + 224);

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_5();

  return v3();
}

uint64_t sub_1CA32B318()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_5();

  return v4();
}

uint64_t sub_1CA32B3B4(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA32B3C8()
{
  OUTLINED_FUNCTION_14();
  v1 = OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_2_17(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_18_10(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444560, &qword_1CA9838B0);
  OUTLINED_FUNCTION_8_5();
  *v0 = v3;
  v0[1] = sub_1CA32B490;
  v4 = OUTLINED_FUNCTION_0_16();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1CA32B490()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1CA32B590(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA32B5A4()
{
  OUTLINED_FUNCTION_14();
  v1 = OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_2_17(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_18_10(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444560, &qword_1CA9838B0);
  OUTLINED_FUNCTION_8_5();
  *v0 = v3;
  v0[1] = sub_1CA32B66C;
  v4 = OUTLINED_FUNCTION_0_16();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1CA32B66C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1CA32B788()
{
  OUTLINED_FUNCTION_0();

  OUTLINED_FUNCTION_5();

  return v0();
}

uint64_t sub_1CA32B7E4(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1CA32B804, 0, 0);
}

uint64_t sub_1CA32B804()
{
  OUTLINED_FUNCTION_14();
  v1 = OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_2_17(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_18_10(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444560, &qword_1CA9838B0);
  OUTLINED_FUNCTION_8_5();
  *v0 = v3;
  v0[1] = sub_1CA32B490;
  v4 = OUTLINED_FUNCTION_0_16();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1CA32B8CC(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA32B8E0()
{
  OUTLINED_FUNCTION_14();
  v1 = OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_2_17(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_18_10(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444560, &qword_1CA9838B0);
  OUTLINED_FUNCTION_8_5();
  *v0 = v3;
  v0[1] = sub_1CA32B490;
  v4 = OUTLINED_FUNCTION_0_16();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1CA32B9A8(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA32B9BC()
{
  OUTLINED_FUNCTION_14();
  v1 = OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_2_17(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_18_10(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444560, &qword_1CA9838B0);
  OUTLINED_FUNCTION_8_5();
  *v0 = v3;
  v0[1] = sub_1CA32B490;
  v4 = OUTLINED_FUNCTION_0_16();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1CA32BA84(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA32BA98()
{
  OUTLINED_FUNCTION_14();
  v1 = OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_2_17(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_18_10(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444560, &qword_1CA9838B0);
  OUTLINED_FUNCTION_8_5();
  *v0 = v3;
  v0[1] = sub_1CA32B490;
  v4 = OUTLINED_FUNCTION_0_16();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1CA32BB60(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA32BB74()
{
  OUTLINED_FUNCTION_14();
  v1 = OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_2_17(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_18_10(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444560, &qword_1CA9838B0);
  OUTLINED_FUNCTION_8_5();
  *v0 = v3;
  v0[1] = sub_1CA32B490;
  v4 = OUTLINED_FUNCTION_0_16();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1CA32BC3C(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA32BC50()
{
  OUTLINED_FUNCTION_14();
  v1 = OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_2_17(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_18_10(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444560, &qword_1CA9838B0);
  OUTLINED_FUNCTION_8_5();
  *v0 = v3;
  v0[1] = sub_1CA32B490;
  v4 = OUTLINED_FUNCTION_0_16();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1CA32BD18(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA32BD2C()
{
  OUTLINED_FUNCTION_14();
  v1 = OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_2_17(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_18_10(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444560, &qword_1CA9838B0);
  OUTLINED_FUNCTION_8_5();
  *v0 = v3;
  v0[1] = sub_1CA32B490;
  v4 = OUTLINED_FUNCTION_0_16();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1CA32BDF4(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA32BE08()
{
  OUTLINED_FUNCTION_14();
  v1 = OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_2_17(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_18_10(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444560, &qword_1CA9838B0);
  OUTLINED_FUNCTION_8_5();
  *v0 = v3;
  v0[1] = sub_1CA32B490;
  v4 = OUTLINED_FUNCTION_0_16();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1CA32BED0(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA32BEE4()
{
  OUTLINED_FUNCTION_14();
  v1 = OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_2_17(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_18_10(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444560, &qword_1CA9838B0);
  OUTLINED_FUNCTION_8_5();
  *v0 = v3;
  v0[1] = sub_1CA32B490;
  v4 = OUTLINED_FUNCTION_0_16();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t UpdatableParameterState.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  if (!v2)
  {
    sub_1CA94D938();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1CA94D938();
    return MEMORY[0x1CCAA2780](v4);
  }

  v5 = [v2 hash];
  sub_1CA94D938();
  MEMORY[0x1CCAA2780](v5);
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1CA94D938();
  v6 = v3;
  sub_1CA94CFE8();

  return MEMORY[0x1CCAA2780](v4);
}

id static UpdatableParameterState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  if (!v3)
  {
    if (v6)
    {
      v12 = 0;
    }

    else
    {
      v12 = v4 == v7;
    }

    if (v12 && v2 != 0)
    {
      return [v2 isEqual_];
    }

    return 0;
  }

  if (!v6)
  {
    return 0;
  }

  sub_1CA25B3D0(0, &qword_1EC4417B0, off_1E836F350);
  v8 = v6;
  v9 = v3;
  v10 = sub_1CA94CFD8();

  result = 0;
  if ((v10 & 1) != 0 && v4 == v7 && v2)
  {
    return [v2 isEqual_];
  }

  return result;
}

uint64_t UpdatableParameterState.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_1CA94D918();
  if (v1)
  {
    v4 = [v1 hash];
    sub_1CA94D938();
    MEMORY[0x1CCAA2780](v4);
  }

  else
  {
    sub_1CA94D938();
  }

  sub_1CA94D938();
  if (v2)
  {
    v5 = v2;
    sub_1CA94CFE8();
  }

  MEMORY[0x1CCAA2780](v3);
  return sub_1CA94D968();
}

uint64_t sub_1CA32C1F0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1CA32C284;

  return UpdatableParameterState.process(context:)(a1);
}

uint64_t sub_1CA32C284()
{
  OUTLINED_FUNCTION_0();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v4 = *v1;
  OUTLINED_FUNCTION_13();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_1CA32C384(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  v8 = v2;
  sub_1CA94D918();
  UpdatableParameterState.hash(into:)(v5);
  return sub_1CA94D968();
}

uint64_t PropertyUpdateOperator.defaultLocalizedLabel.getter()
{
  switch(*v0)
  {
    case 1:
      v1 = "Turn";
      v2 = 4;
      goto LABEL_8;
    case 2:
      v1 = "Toggle";
      goto LABEL_6;
    case 3:
      v1 = "Remove";
LABEL_6:
      v2 = 6;
LABEL_8:
      sub_1CA94C438(v1, v2);
      break;
    case 4:
      sub_1CA94C438("Remove All", 10);
      break;
    default:
      sub_1CA94C438("Set", 3);
      break;
  }

  if (qword_1EDB9F5F0 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_1EDB9F5F0);
  }

  v3 = qword_1EDB9F690;
  v4 = sub_1CA94C368();
  v5 = sub_1CA94C368();

  v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

  v7 = sub_1CA94C3A8();
  return v7;
}

void sub_1CA32C50C(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = a2;
  v18 = a3;
  v15 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444DE0, &qword_1CA9838B8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = *(v5 + 16);
  v8(&v15 - v6, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  v11 = *(v5 + 32);
  v11(v10 + v9, v7, v4);
  v23 = sub_1CA32F570;
  v24 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1CA32E060;
  v22 = &block_descriptor_2;
  v16 = _Block_copy(&aBlock);

  v8(v7, v15, v4);
  v12 = swift_allocObject();
  v11(v12 + v9, v7, v4);
  v23 = sub_1CA32F58C;
  v24 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1CA32E0FC;
  v22 = &block_descriptor_25;
  v13 = _Block_copy(&aBlock);

  v14 = v16;
  [v17 processWithContext:v18 userInputRequiredHandler:v16 valueHandler:v13];
  _Block_release(v13);
  _Block_release(v14);
}

void sub_1CA32C788(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = a2;
  v18 = a3;
  v15 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444DE0, &qword_1CA9838B8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = *(v5 + 16);
  v8(&v15 - v6, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  v11 = *(v5 + 32);
  v11(v10 + v9, v7, v4);
  v23 = sub_1CA32F838;
  v24 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1CA32E060;
  v22 = &block_descriptor_34;
  v16 = _Block_copy(&aBlock);

  v8(v7, v15, v4);
  v12 = swift_allocObject();
  v11(v12 + v9, v7, v4);
  v23 = sub_1CA32F8B0;
  v24 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1CA32E0FC;
  v22 = &block_descriptor_41;
  v13 = _Block_copy(&aBlock);

  v14 = v16;
  [v17 processWithContext:v18 userInputRequiredHandler:v16 valueHandler:v13];
  _Block_release(v13);
  _Block_release(v14);
}

void sub_1CA32CA04(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = a2;
  v18 = a3;
  v15 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444DE0, &qword_1CA9838B8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = *(v5 + 16);
  v8(&v15 - v6, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  v11 = *(v5 + 32);
  v11(v10 + v9, v7, v4);
  v23 = sub_1CA32F838;
  v24 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1CA32E060;
  v22 = &block_descriptor_116;
  v16 = _Block_copy(&aBlock);

  v8(v7, v15, v4);
  v12 = swift_allocObject();
  v11(v12 + v9, v7, v4);
  v23 = sub_1CA32F8B0;
  v24 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1CA32E0FC;
  v22 = &block_descriptor_123;
  v13 = _Block_copy(&aBlock);

  v14 = v16;
  [v17 processWithContext:v18 userInputRequiredHandler:v16 valueHandler:v13];
  _Block_release(v13);
  _Block_release(v14);
}

void sub_1CA32CC80(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = a2;
  v18 = a3;
  v15 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444DE0, &qword_1CA9838B8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = *(v5 + 16);
  v8(&v15 - v6, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  v11 = *(v5 + 32);
  v11(v10 + v9, v7, v4);
  v23 = sub_1CA32F838;
  v24 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1CA32E060;
  v22 = &block_descriptor_50;
  v16 = _Block_copy(&aBlock);

  v8(v7, v15, v4);
  v12 = swift_allocObject();
  v11(v12 + v9, v7, v4);
  v23 = sub_1CA32F8B0;
  v24 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1CA32E0FC;
  v22 = &block_descriptor_57;
  v13 = _Block_copy(&aBlock);

  v14 = v16;
  [v17 processWithContext:v18 userInputRequiredHandler:v16 valueHandler:v13];
  _Block_release(v13);
  _Block_release(v14);
}

void sub_1CA32CEFC(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = a2;
  v18 = a3;
  v15 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444DE0, &qword_1CA9838B8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = *(v5 + 16);
  v8(&v15 - v6, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  v11 = *(v5 + 32);
  v11(v10 + v9, v7, v4);
  v23 = sub_1CA32F838;
  v24 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1CA32E060;
  v22 = &block_descriptor_66;
  v16 = _Block_copy(&aBlock);

  v8(v7, v15, v4);
  v12 = swift_allocObject();
  v11(v12 + v9, v7, v4);
  v23 = sub_1CA32F8B0;
  v24 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1CA32E0FC;
  v22 = &block_descriptor_73;
  v13 = _Block_copy(&aBlock);

  v14 = v16;
  [v17 processWithContext:v18 userInputRequiredHandler:v16 valueHandler:v13];
  _Block_release(v13);
  _Block_release(v14);
}

void sub_1CA32D178(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = a2;
  v18 = a3;
  v15 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444DE0, &qword_1CA9838B8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = *(v5 + 16);
  v8(&v15 - v6, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  v11 = *(v5 + 32);
  v11(v10 + v9, v7, v4);
  v23 = sub_1CA32F838;
  v24 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1CA32E060;
  v22 = &block_descriptor_180;
  v16 = _Block_copy(&aBlock);

  v8(v7, v15, v4);
  v12 = swift_allocObject();
  v11(v12 + v9, v7, v4);
  v23 = sub_1CA32F8B0;
  v24 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1CA32E0FC;
  v22 = &block_descriptor_187;
  v13 = _Block_copy(&aBlock);

  v14 = v16;
  [v17 processWithContext:v18 userInputRequiredHandler:v16 valueHandler:v13];
  _Block_release(v13);
  _Block_release(v14);
}

void sub_1CA32D3F4(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = a2;
  v18 = a3;
  v15 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444DE0, &qword_1CA9838B8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = *(v5 + 16);
  v8(&v15 - v6, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  v11 = *(v5 + 32);
  v11(v10 + v9, v7, v4);
  v23 = sub_1CA32F838;
  v24 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1CA32E060;
  v22 = &block_descriptor_132;
  v16 = _Block_copy(&aBlock);

  v8(v7, v15, v4);
  v12 = swift_allocObject();
  v11(v12 + v9, v7, v4);
  v23 = sub_1CA32F8B0;
  v24 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1CA32E0FC;
  v22 = &block_descriptor_139;
  v13 = _Block_copy(&aBlock);

  v14 = v16;
  [v17 processWithContext:v18 userInputRequiredHandler:v16 valueHandler:v13];
  _Block_release(v13);
  _Block_release(v14);
}

void sub_1CA32D670(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = a2;
  v18 = a3;
  v15 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444DE0, &qword_1CA9838B8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = *(v5 + 16);
  v8(&v15 - v6, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  v11 = *(v5 + 32);
  v11(v10 + v9, v7, v4);
  v23 = sub_1CA32F838;
  v24 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1CA32E060;
  v22 = &block_descriptor_148;
  v16 = _Block_copy(&aBlock);

  v8(v7, v15, v4);
  v12 = swift_allocObject();
  v11(v12 + v9, v7, v4);
  v23 = sub_1CA32F8B0;
  v24 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1CA32E0FC;
  v22 = &block_descriptor_155;
  v13 = _Block_copy(&aBlock);

  v14 = v16;
  [v17 processWithContext:v18 userInputRequiredHandler:v16 valueHandler:v13];
  _Block_release(v13);
  _Block_release(v14);
}

void sub_1CA32D8EC(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = a2;
  v18 = a3;
  v15 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444DE0, &qword_1CA9838B8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = *(v5 + 16);
  v8(&v15 - v6, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  v11 = *(v5 + 32);
  v11(v10 + v9, v7, v4);
  v23 = sub_1CA32F838;
  v24 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1CA32E060;
  v22 = &block_descriptor_164;
  v16 = _Block_copy(&aBlock);

  v8(v7, v15, v4);
  v12 = swift_allocObject();
  v11(v12 + v9, v7, v4);
  v23 = sub_1CA32F8B0;
  v24 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1CA32E0FC;
  v22 = &block_descriptor_171;
  v13 = _Block_copy(&aBlock);

  v14 = v16;
  [v17 processWithContext:v18 userInputRequiredHandler:v16 valueHandler:v13];
  _Block_release(v13);
  _Block_release(v14);
}

void sub_1CA32DB68(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = a2;
  v18 = a3;
  v15 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444DE0, &qword_1CA9838B8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = *(v5 + 16);
  v8(&v15 - v6, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  v11 = *(v5 + 32);
  v11(v10 + v9, v7, v4);
  v23 = sub_1CA32F838;
  v24 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1CA32E060;
  v22 = &block_descriptor_84;
  v16 = _Block_copy(&aBlock);

  v8(v7, v15, v4);
  v12 = swift_allocObject();
  v11(v12 + v9, v7, v4);
  v23 = sub_1CA32F8B0;
  v24 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1CA32E0FC;
  v22 = &block_descriptor_91;
  v13 = _Block_copy(&aBlock);

  v14 = v16;
  [v17 processWithContext:v18 userInputRequiredHandler:v16 valueHandler:v13];
  _Block_release(v13);
  _Block_release(v14);
}

void sub_1CA32DDE4(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = a2;
  v18 = a3;
  v15 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444DE0, &qword_1CA9838B8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = *(v5 + 16);
  v8(&v15 - v6, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  v11 = *(v5 + 32);
  v11(v10 + v9, v7, v4);
  v23 = sub_1CA32F838;
  v24 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1CA32E060;
  v22 = &block_descriptor_100;
  v16 = _Block_copy(&aBlock);

  v8(v7, v15, v4);
  v12 = swift_allocObject();
  v11(v12 + v9, v7, v4);
  v23 = sub_1CA32F8B0;
  v24 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1CA32E0FC;
  v22 = &block_descriptor_107;
  v13 = _Block_copy(&aBlock);

  v14 = v16;
  [v17 processWithContext:v18 userInputRequiredHandler:v16 valueHandler:v13];
  _Block_release(v13);
  _Block_release(v14);
}

uint64_t sub_1CA32E060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1CA94C3A8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  swift_unknownObjectRetain();
  v4(v5, v7, a3);

  swift_unknownObjectRelease();
}

uint64_t sub_1CA32E0FC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

id sub_1CA32E17C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1CA94C368();

  v6 = [v3 initWithIdentifier:v5 value:a3];

  return v6;
}

id sub_1CA32E1E0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_1CA94C368();

  v8 = [v4 initWithIdentifier:v7 value:a3 configuration:a4];

  return v8;
}

uint64_t sub_1CA32E278()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4445D0, &qword_1CA983080);
  OUTLINED_FUNCTION_40_2();
  v0 = OUTLINED_FUNCTION_13_1();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1CA32E2F8()
{
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_13_1();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1CA32E348(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();
  v2 = OUTLINED_FUNCTION_13_1();

  return MEMORY[0x1EEE6BDC0](v2, v3, v4);
}

uint64_t sub_1CA32E390()
{
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_13_1();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1CA32E3CC()
{
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_13_1();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1CA32E424(uint64_t (*a1)(void))
{
  a1(0);
  OUTLINED_FUNCTION_40_2();
  v1 = OUTLINED_FUNCTION_13_1();

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

uint64_t sub_1CA32EA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_29_6(a1, a2, a3);
  OUTLINED_FUNCTION_7_0();
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v11;
  v15 = v12;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444FC0, &unk_1CA987A10);
  if ((OUTLINED_FUNCTION_39_0(v16) & 1) == 0)
  {
    goto LABEL_5;
  }

  v17 = sub_1CA271BF8(v7, a3);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_13:
    result = sub_1CA94D878();
    __break(1u);
    return result;
  }

  v14 = v17;
LABEL_5:
  v19 = *a5;
  if (v15)
  {
    *(*(v19 + 56) + 8 * v14) = v6;
    OUTLINED_FUNCTION_36();

    return swift_unknownObjectRelease();
  }

  else
  {
    a6(v14, v7, a3, v6, v19);
    OUTLINED_FUNCTION_36();

    return sub_1CA94C218();
  }
}

uint64_t sub_1CA32EB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  OUTLINED_FUNCTION_29_6(a1, a2, a3);
  OUTLINED_FUNCTION_7_0();
  if (v12)
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = v10;
  v14 = v11;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444FC0, &unk_1CA987A10);
  if ((OUTLINED_FUNCTION_39_0(v15) & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = sub_1CA271BF8(v7, a3);
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_13:
    result = sub_1CA94D878();
    __break(1u);
    return result;
  }

  v13 = v16;
LABEL_5:
  v18 = *a5;
  if (v14)
  {
    *(v18[7] + 8 * v13) = v6;
    OUTLINED_FUNCTION_36();

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1CA32F5C0(v13, v7, a3, v6, v18);
    OUTLINED_FUNCTION_36();

    return sub_1CA94C218();
  }
}

unint64_t sub_1CA32EC44()
{
  result = qword_1EC4444A0[0];
  if (!qword_1EC4444A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4444A0);
  }

  return result;
}

unint64_t sub_1CA32EC9C()
{
  result = qword_1EC4444B8;
  if (!qword_1EC4444B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4444B8);
  }

  return result;
}

unint64_t sub_1CA32ECF0(uint64_t a1)
{
  result = sub_1CA32ED18();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA32ED18()
{
  result = qword_1EC4444C0;
  if (!qword_1EC4444C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4444C0);
  }

  return result;
}

unint64_t sub_1CA32ED70()
{
  result = qword_1EC4444C8;
  if (!qword_1EC4444C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4444C8);
  }

  return result;
}

unint64_t sub_1CA32EDC4(uint64_t a1)
{
  result = sub_1CA32EDEC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA32EDEC()
{
  result = qword_1EC4444D8;
  if (!qword_1EC4444D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4444D8);
  }

  return result;
}

uint64_t dispatch thunk of UpdatableParameterStateDataSource.getValueForParameterData(_:ofProcessedParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_35_2();
  v12 = (v9 + *v9);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1CA32EFD0;

  return v12(a1, a2, a3, a4);
}

uint64_t sub_1CA32EFD0()
{
  OUTLINED_FUNCTION_0();
  v2 = v1;
  OUTLINED_FUNCTION_3();
  v3 = *v0;
  OUTLINED_FUNCTION_13();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t dispatch thunk of UpdatableParameterStateDataSource.getEntityPropertyValue(for:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_35_2();
  v14 = (v11 + *v11);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1CA32F844;

  return v14(a1, a2, a3, a4, a5);
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1CA32F244(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 33))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_1CA32F298(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ToolKitValueTransformError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1CA32F388(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1CA32F46C()
{
  result = qword_1EC444540;
  if (!qword_1EC444540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC444540);
  }

  return result;
}

unint64_t sub_1CA32F4C0()
{
  result = qword_1EC444548;
  if (!qword_1EC444548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC444548);
  }

  return result;
}

unint64_t sub_1CA32F514()
{
  result = qword_1EC444550;
  if (!qword_1EC444550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC444550);
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1CA32F5C0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

uint64_t sub_1CA32F628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444DE0, &qword_1CA9838B8);

  return sub_1CA3D4948(a1, a2, a3);
}

uint64_t objectdestroyTm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444DE0, &qword_1CA9838B8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1CA32F750(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444DE0, &qword_1CA9838B8);

  return sub_1CA3D49DC(a1, a2);
}

uint64_t WFFeatureFlagResource.domain.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WorkflowKit21WFFeatureFlagResource_domain);
  sub_1CA94C218();
  return v1;
}

uint64_t WFFeatureFlagResource.feature.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WorkflowKit21WFFeatureFlagResource_feature);
  sub_1CA94C218();
  return v1;
}

void WFFeatureFlagResource.__allocating_init(domain:feature:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  v11 = objc_allocWithZone(v5);
  WFFeatureFlagResource.init(domain:feature:value:)(a1, a2, a3, a4, v6);
}

void WFFeatureFlagResource.init(domain:feature:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = &v5[OBJC_IVAR____TtC11WorkflowKit21WFFeatureFlagResource_domain];
  *v6 = a1;
  v6[1] = a2;
  v7 = &v5[OBJC_IVAR____TtC11WorkflowKit21WFFeatureFlagResource_feature];
  *v7 = a3;
  v7[1] = a4;
  v5[OBJC_IVAR____TtC11WorkflowKit21WFFeatureFlagResource_value] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443DB8, &unk_1CA983950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981310;
  v20 = sub_1CA94C3A8();
  v21 = v9;
  sub_1CA94C218();
  sub_1CA94C218();
  v10 = MEMORY[0x1E69E6158];
  sub_1CA94D3A8();
  v11 = type metadata accessor for WFFeatureFlagResource();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = NSStringFromClass(ObjCClassFromMetadata);
  v14 = sub_1CA94C3A8();
  v16 = v15;

  *(inited + 96) = v10;
  *(inited + 72) = v14;
  *(inited + 80) = v16;
  sub_1CA94C1E8();
  v17 = sub_1CA94C1A8();

  v19.receiver = v5;
  v19.super_class = v11;
  v18 = objc_msgSendSuper2(&v19, sel_initWithDefinition_, v17);

  if (v18)
  {
  }

  else
  {
    __break(1u);
  }
}

void sub_1CA32FBE4()
{
  if (sub_1CA94B048())
  {

    [v0 updateAvailability:1 withError:0];
  }

  else
  {
    type metadata accessor for WFResourceError(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CA981310;
    *(inited + 32) = sub_1CA94C3A8();
    *(inited + 40) = v2;
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = 0xD00000000000003ALL;
    *(inited + 56) = 0x80000001CA9A4180;
    sub_1CA94C1E8();
    sub_1CA32FD64();
    sub_1CA948AB8();
    v3 = sub_1CA948AC8();

    [v0 updateAvailability:0 withError:v3];
  }
}

unint64_t sub_1CA32FD64()
{
  result = qword_1EC443350;
  if (!qword_1EC443350)
  {
    type metadata accessor for WFResourceError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC443350);
  }

  return result;
}

id WFFeatureFlagResource.__allocating_init(definition:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_1CA94C1A8();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithDefinition_];

  return v3;
}

id WFFeatureFlagResource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WFFeatureFlagResource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFFeatureFlagResource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1CA33004C()
{
  sub_1CA2ECC0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981370;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA99DB90;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"IconName";
  *(inited + 144) = v1;
  strcpy((inited + 120), "TVRemote_Power");
  *(inited + 135) = -18;
  v6 = @"IconName";
  *(inited + 152) = sub_1CA94C368();
  *(inited + 160) = 0xD000000000000011;
  *(inited + 168) = 0x80000001CA9A42A0;
  *(inited + 184) = v1;
  *(inited + 192) = @"Output";
  v7 = @"Output";
  v8 = sub_1CA94C1E8();
  *(inited + 224) = v5;
  *(inited + 200) = v8;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA330280()
{
  v37 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA99DB90;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("airport|wi-fi|bluetooth|cellular|turn|toggle", 44);
  v6 = v5;
  v7 = sub_1CA94C438("airport|wi-fi|bluetooth|cellular|turn|toggle", 44);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = MEMORY[0x1E69E6158];
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"DisabledOnPlatforms";
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 160) = &unk_1F49F4448;
  *(inited + 184) = v24;
  *(inited + 192) = @"IconColor";
  *(inited + 200) = 0x65676E61724FLL;
  *(inited + 208) = 0xE600000000000000;
  *(inited + 224) = v21;
  *(inited + 232) = @"IconSymbol";
  *(inited + 240) = 0x656E616C70726961;
  *(inited + 248) = 0xE800000000000000;
  *(inited + 264) = v21;
  *(inited + 272) = @"InputPassthrough";
  *(inited + 304) = MEMORY[0x1E69E6370];
  *(inited + 280) = 1;
  v25 = @"DisabledOnPlatforms";
  v26 = @"IconColor";
  v27 = @"IconSymbol";
  v28 = @"InputPassthrough";
  v29 = sub_1CA94C368();
  *(inited + 344) = v21;
  *(inited + 312) = v29;
  *(inited + 320) = 0xD000000000000057;
  *(inited + 328) = 0x80000001CA9A4300;
  *(inited + 352) = sub_1CA94C368();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C0, &qword_1CA981328);
  v30 = swift_initStackObject();
  v36 = xmmword_1CA981310;
  *(v30 + 16) = xmmword_1CA981310;
  *(v30 + 32) = 0x6574617473;
  *(v30 + 40) = 0xE500000000000000;
  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v31 = swift_initStackObject();
  *(v31 + 16) = v36;
  *(v31 + 64) = v21;
  *(v31 + 32) = @"Key";
  *(v31 + 40) = 0x65756C61566E4FLL;
  *(v31 + 48) = 0xE700000000000000;
  _s3__C3KeyVMa_0(0);
  sub_1CA29BCE4(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v32 = @"Key";
  v33 = sub_1CA94C1E8();
  *(v30 + 48) = sub_1CA2F864C(v33);
  v34 = sub_1CA94C1E8();
  *(inited + 384) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C8, &unk_1CA981330);
  *(inited + 360) = v34;
  type metadata accessor for Key(0);
  sub_1CA29BCE4(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}