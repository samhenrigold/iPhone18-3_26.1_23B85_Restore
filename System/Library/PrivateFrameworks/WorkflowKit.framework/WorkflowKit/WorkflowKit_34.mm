uint64_t sub_1CA5E5F94()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13();
  *v5 = v4;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_68_9();
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1CA5E60A4()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_6();
  sub_1CA94AC78();
  v0 = OUTLINED_FUNCTION_107_0();
  v1(v0);

  OUTLINED_FUNCTION_9_2();

  return v4(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1CA5E615C()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_5();

  return v0();
}

double sub_1CA5E61D4(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;
  v6 = a1;

  return sub_1CA67052C(&unk_1CA98E5A8, v5);
}

uint64_t sub_1CA5E6250(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1CA5E62F8;

  return WFContentItem.asEncodedTypedValue()();
}

uint64_t sub_1CA5E62F8()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_6();
  v3 = v0;
  v5 = v4;
  OUTLINED_FUNCTION_29_1();
  v6 = *(v1 + 16);
  v7 = *v2;
  OUTLINED_FUNCTION_13();
  *v8 = v7;

  OUTLINED_FUNCTION_25_2();
  v10 = *(v9 + 24);
  if (v3)
  {
    sub_1CA948AC8();

    (v10)[2](v10, 0, v5);
    _Block_release(v10);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_134();
    v12(v11);
    _Block_release(v10);
  }

  OUTLINED_FUNCTION_9_2();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}

void WFContentItem._blockingEncodedTypedValue()()
{
  OUTLINED_FUNCTION_37_0();
  v1 = sub_1CA94AC88();
  v53 = v1;
  v51[2] = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_6_0();
  v51[1] = v3 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C60, &qword_1CA9827D0);
  OUTLINED_FUNCTION_18_0(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v5);
  v56 = v51 - v6;
  v55 = sub_1CA94B798();
  OUTLINED_FUNCTION_1_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6_0();
  v12 = (v11 - v10);
  v54 = sub_1CA94B7F8();
  OUTLINED_FUNCTION_1_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_19();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v51 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443880, &qword_1CA982FB0);
  OUTLINED_FUNCTION_18_0(v22);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v23);
  v25 = v51 - v24;
  v52 = dispatch_group_create();
  _s3BoxCMa(0);
  v26 = swift_allocObject();
  v27 = OBJC_IVAR____TtCFE11WorkflowKitCSo13WFContentItem26_blockingEncodedTypedValueFT_GSqCSo19WFEncodedTypedValue_L_3Box_typedValue;
  OUTLINED_FUNCTION_46();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v1);
  sub_1CA94C858();
  OUTLINED_FUNCTION_46();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  OUTLINED_FUNCTION_123();
  v35 = swift_allocObject();
  v35[2] = 0;
  v35[3] = 0;
  v35[4] = v26;
  v35[5] = v0;

  v36 = v0;
  v37 = v25;
  v38 = v52;
  sub_1CA5E4E84(0, 0, v37, &unk_1CA98E378, v35);

  sub_1CA94B7E8();
  *v12 = 2;
  (*(v8 + 104))(v12, *MEMORY[0x1E69E7F48], v55);
  MEMORY[0x1CCAA0670](v18, v12);
  v39 = OUTLINED_FUNCTION_130();
  v40(v39);
  v41 = *(v14 + 8);
  v42 = v54;
  v41(v18, v54);
  sub_1CA94CCE8();
  v43 = v56;
  v41(v21, v42);
  v44 = v53;
  swift_beginAccess();
  sub_1CA5EFF54(v26 + v27, v43, &qword_1EC444C60, &qword_1CA9827D0);
  v45 = OUTLINED_FUNCTION_26_10();
  if (__swift_getEnumTagSinglePayload(v45, v46, v44))
  {

    sub_1CA5F03BC(v43, &qword_1EC444C60);
  }

  else
  {
    v47 = OUTLINED_FUNCTION_129();
    v48(v47);
    sub_1CA5F03BC(v43, &qword_1EC444C60);
    sub_1CA94AC78();
    v49 = OUTLINED_FUNCTION_130();
    v50(v49);
  }

  OUTLINED_FUNCTION_36();
}

uint64_t sub_1CA5E68E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_1CA94B728();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  type metadata accessor for WFContentItem.TypedValueResolutionContext(0);
  v5[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C60, &qword_1CA9827D0);
  v5[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA5E6A0C, 0, 0);
}

uint64_t sub_1CA5E6A0C()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[9];
  v2 = v0[10];
  _sSo13WFContentItemC11WorkflowKitE04ToolD21TypeResolutionContextV015measurementUnitF8Provider011outputValueF027displayRepresentationConfig012localizationH0AE0eD0011MeasurementjfK0_pSg_So07LNValueF0CSgAJ07DisplayO13ConfigurationVSo014WFLocalizationH0CtcfcfA1__0();
  static WFContentItem.TypedValueResolutionContext.default(displayRepresentationConfiguration:)(v1, v2);
  v3 = OUTLINED_FUNCTION_41_1();
  v4(v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_77();
  v0[12] = v5;
  *v5 = v6;
  v5[1] = sub_1CA5E6AD0;

  return WFContentItem.resolve(with:)();
}

uint64_t sub_1CA5E6AD0()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_68_9();
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1CA5E6BE0()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 88);
  v2 = *(v0 + 40);
  sub_1CA94AC88();
  OUTLINED_FUNCTION_121_1();
  OUTLINED_FUNCTION_89();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  v7 = OBJC_IVAR____TtCFE11WorkflowKitCSo13WFContentItem26_blockingEncodedTypedValueFT_GSqCSo19WFEncodedTypedValue_L_3Box_typedValue;
  swift_beginAccess();
  sub_1CA5F042C(v1, v2 + v7, &qword_1EC444C60, &qword_1CA9827D0);
  swift_endAccess();

  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_9_2();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1CA5E6CB0()
{
  OUTLINED_FUNCTION_0();

  OUTLINED_FUNCTION_5();

  return v0();
}

id sub_1CA5E6D20(void *a1)
{
  v1 = a1;
  WFContentItem._blockingEncodedTypedValue()();
  v3 = v2;

  return v3;
}

uint64_t sub_1CA5E6D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = sub_1CA94B728();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468C0, &qword_1CA988C00);
  v5[13] = swift_task_alloc();
  v7 = sub_1CA949D18();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v8 = sub_1CA949F78();
  v5[19] = v8;
  v5[20] = *(v8 - 8);
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA5E6F90, 0, 0);
}

uint64_t sub_1CA5E6F90()
{
  v127 = v0;
  v126[1] = *MEMORY[0x1E69E9840];
  v4 = v0[9];
  sub_1CA949C58();
  v5 = v4;
  sub_1CA94C218();
  v6 = sub_1CA949F68();
  v7 = sub_1CA94CC38();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[25];
  v11 = v0[19];
  v10 = v0[20];
  v121 = v0;
  if (v8)
  {
    v123 = v0[25];
    v12 = OUTLINED_FUNCTION_118_4();
    OUTLINED_FUNCTION_35_14();
    v13 = OUTLINED_FUNCTION_39_8();
    v126[0] = v13;
    *v12 = 138412546;
    *(v12 + 4) = v0;
    *v1 = v0;
    *(v12 + 12) = 2080;
    v14 = v0;
    v15 = MEMORY[0x1CCAA14D0](v3, v2);
    v2 = v16;
    v3 = sub_1CA26B54C(v15, v16, v126);

    *(v12 + 14) = v3;
    _os_log_impl(&dword_1CA256000, v6, v7, "Making a FileValue from %@ to acceptedTypes: %s", v12, 0x16u);
    sub_1CA5F03BC(v1, &qword_1EC444AE0);
    OUTLINED_FUNCTION_26();
    __swift_destroy_boxed_opaque_existential_0(v13);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();

    v17 = *(v10 + 8);
    v18 = v123;
  }

  else
  {

    v17 = *(v10 + 8);
    v18 = v9;
  }

  v120 = v17;
  v17(v18, v11);
  if (*(v0[6] + 16))
  {
    v19 = v0[15];
    sub_1CA25B3D0(0, &qword_1EC447010, 0x1E69E0AF8);
    v20 = *(v19 + 16);
    v122 = (v19 + 8);
    v21 = v0[17];
    v22 = OUTLINED_FUNCTION_3_3();
    v20(v22);
    v23 = OUTLINED_FUNCTION_134();
    v20(v23);
    v24 = sub_1CA5E7FD8(v21);
    v25 = sub_1CA5E8070(v24);
    v0[26] = v25;
    v44 = v25;
    v45 = v0[9];

    sub_1CA949C58();
    v46 = OUTLINED_FUNCTION_116();
    v20(v46);
    v47 = v45;
    v48 = sub_1CA949F68();
    v49 = sub_1CA94CC38();

    v50 = os_log_type_enabled(v48, v49);
    v51 = v0[24];
    v52 = v0[19];
    v125 = v0[18];
    v53 = v0[16];
    v54 = v0[14];
    if (v50)
    {
      v55 = v0[9];
      v117 = v49;
      v56 = swift_slowAlloc();
      v116 = OUTLINED_FUNCTION_35_14();
      v119 = swift_slowAlloc();
      v126[0] = v119;
      *v56 = 138412546;
      *(v56 + 4) = v55;
      *v116 = v55;
      *(v56 + 12) = 2080;
      sub_1CA5EFF9C();
      v57 = v55;
      sub_1CA94D798();
      v118 = v51;
      v58 = *v122;
      v59 = OUTLINED_FUNCTION_41_0();
      v58(v59);
      v60 = OUTLINED_FUNCTION_26_13();
      sub_1CA26B54C(v60, v61, v62);
      OUTLINED_FUNCTION_87();

      *(v56 + 14) = v53;
      _os_log_impl(&dword_1CA256000, v48, v117, "Turned %@ into a %s", v56, 0x16u);
      sub_1CA5F03BC(v116, &qword_1EC444AE0);
      OUTLINED_FUNCTION_26();
      __swift_destroy_boxed_opaque_existential_0(v119);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();

      v120(v118, v52);
      (v58)(v125, v54);
    }

    else
    {

      v63 = *v122;
      v64 = OUTLINED_FUNCTION_41_0();
      v63(v64);
      v120(v51, v52);
      (v63)(v125, v54);
    }

    v65 = sub_1CA948BA8();
    OUTLINED_FUNCTION_1_0();
    swift_task_alloc();
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A90, &qword_1CA9827C0);
    OUTLINED_FUNCTION_18_0(v66);
    v67 = OUTLINED_FUNCTION_45();
    v68 = OUTLINED_FUNCTION_23();
    sub_1CA5EFF54(v68, v69, &qword_1EC444A90, &qword_1CA9827C0);
    v70 = OUTLINED_FUNCTION_26_10();
    OUTLINED_FUNCTION_49(v70, v71, v65);
    if (v72)
    {
      v75 = v44;
      sub_1CA5F03BC(v67, &qword_1EC444A90);
    }

    else
    {
      v73 = OUTLINED_FUNCTION_129();
      v74(v73);

      v75 = v44;
      if ([v75 deletesFileOnDeallocation])
      {
        if ((sub_1CA948B78() & 1) == 0)
        {
          sub_1CA949C58();
          v77 = sub_1CA949F68();
          v78 = sub_1CA94CC18();
          if (os_log_type_enabled(v77, v78))
          {
            v79 = swift_slowAlloc();
            *v79 = 0;
            _os_log_impl(&dword_1CA256000, v77, v78, "Failed to start accessing security scope for temporary file directory", v79, 2u);
            OUTLINED_FUNCTION_26();
          }

          v80 = OUTLINED_FUNCTION_20_0();
          (v120)(v80);
        }

        v81 = swift_task_alloc();
        v82 = [v75 filename];
        v83 = sub_1CA94C3A8();
        v85 = v84;

        v0[2] = v83;
        v0[3] = v85;
        v86 = sub_1CA948B18();
        OUTLINED_FUNCTION_1_0();
        v88 = v87;
        v89 = OUTLINED_FUNCTION_45();
        (*(v88 + 104))(v89, *MEMORY[0x1E6968F78], v86);
        sub_1CA27BAF0();
        sub_1CA948B98();
        v91 = *(v88 + 8);
        v90 = (v88 + 8);
        v91(v89, v86);

        v92 = sub_1CA948B48();
        v121[4] = 0;
        LODWORD(v85) = [v75 writeToFileURL:v92 overwriting:1 error:v121 + 4];

        v93 = v121[4];
        if (v85)
        {
          v94 = objc_opt_self();
          v95 = v93;
          v96 = sub_1CA948B48();
          v97 = [v94 fileWithURL:v96 options:0];

          OUTLINED_FUNCTION_156_3();
          (v90)(v81, v65);
          if (v97)
          {

            v75 = v97;
          }

          v98 = v121;
        }

        else
        {
          v101 = v93;
          v102 = sub_1CA948AD8();

          swift_willThrow();
          sub_1CA949C58();
          v103 = v102;
          v90 = sub_1CA949F68();
          v104 = sub_1CA94CC18();

          if (os_log_type_enabled(v90, v104))
          {
            v105 = swift_slowAlloc();
            v106 = OUTLINED_FUNCTION_35_14();
            *v105 = 138412290;
            v107 = v102;
            v108 = _swift_stdlib_bridgeErrorToNSError();
            *(v105 + 4) = v108;
            *v106 = v108;
            _os_log_impl(&dword_1CA256000, v90, v104, "Failed to write file to temporary file directory: %@", v105, 0xCu);
            sub_1CA5F03BC(v106, &qword_1EC444AE0);
            OUTLINED_FUNCTION_26();
            OUTLINED_FUNCTION_26();
          }

          v109 = OUTLINED_FUNCTION_20_0();
          (v120)(v109);
          OUTLINED_FUNCTION_156_3();
          (v90)(v81, v65);
          v98 = v121;
        }

        sub_1CA948B58();
        v110 = OUTLINED_FUNCTION_70();
        (v90)(v110);
        goto LABEL_33;
      }

      v99 = OUTLINED_FUNCTION_70();
      v100(v99);
    }

    v98 = v0;
LABEL_33:
    v98[27] = v75;
    v111 = v98[9];

    v98[28] = [objc_opt_self() wf:v75 fileWithFileRepresentation:0 displayName:?];
    v112 = OUTLINED_FUNCTION_52_0();
    v113(v112);
    v114 = v111;
    v115 = swift_task_alloc();
    v98[29] = v115;
    *v115 = v98;
    v115[1] = sub_1CA5E7C50;
    OUTLINED_FUNCTION_36_13();

    return DisplayRepresentation.init(from:thumbnailSize:displayRepresentationConfig:)();
  }

  v26 = v0[9];
  sub_1CA949C58();
  v27 = v26;
  sub_1CA94C218();
  v28 = sub_1CA949F68();
  v29 = sub_1CA94CC18();

  v30 = os_log_type_enabled(v28, v29);
  v31 = v0[22];
  v32 = v0[19];
  if (v30)
  {
    v124 = v0[22];
    v33 = OUTLINED_FUNCTION_118_4();
    OUTLINED_FUNCTION_35_14();
    v34 = OUTLINED_FUNCTION_39_8();
    v126[0] = v34;
    *v33 = 138412546;
    *(v33 + 4) = v0;
    MEMORY[0] = v0;
    *(v33 + 12) = 2080;
    v35 = v0;
    v36 = MEMORY[0x1CCAA14D0](v3, v2);
    v38 = sub_1CA26B54C(v36, v37, v126);

    *(v33 + 14) = v38;
    _os_log_impl(&dword_1CA256000, v28, v29, "Unable to make a FileValue from %@ with acceptedTypes: %s", v33, 0x16u);
    sub_1CA5F03BC(0, &qword_1EC444AE0);
    OUTLINED_FUNCTION_26();
    __swift_destroy_boxed_opaque_existential_0(v34);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();

    v39 = v124;
  }

  else
  {

    v39 = v31;
  }

  v120(v39, v32);
  sub_1CA2F0CD4();
  OUTLINED_FUNCTION_4_0();
  v40 = swift_allocError();
  OUTLINED_FUNCTION_48_6(v40, v41);
  swift_willThrow();
  OUTLINED_FUNCTION_125_4();

  OUTLINED_FUNCTION_5();

  return v42();
}

uint64_t sub_1CA5E7C50()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13();
  *v5 = v4;
  *(v6 + 240) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1CA5E7D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 216);
  v8 = *(v6 + 208);
  sub_1CA94B458();
  OUTLINED_FUNCTION_89();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_130();
  sub_1CA94AB08();

  OUTLINED_FUNCTION_5();

  return v13();
}

uint64_t sub_1CA5E7EC4()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);

  OUTLINED_FUNCTION_125_4();

  OUTLINED_FUNCTION_5();

  return v3();
}

id sub_1CA5E7FD8(uint64_t a1)
{
  v2 = sub_1CA949C78();
  v3 = [swift_getObjCClassFromMetadata() typeWithUTType_];

  v4 = sub_1CA949D18();
  (*(*(v4 - 8) + 8))(a1, v4);
  return v3;
}

void *sub_1CA5E8070(uint64_t a1)
{
  v2 = v1;
  v4 = swift_allocObject();
  sub_1CA2F0CD4();
  v5 = swift_allocError();
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 4;
  *(v4 + 16) = v5;
  *(v4 + 24) = 1;
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  *(v8 + 24) = v7;
  aBlock[4] = sub_1CA5F0048;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CA4F60DC;
  aBlock[3] = &block_descriptor_78;
  v9 = _Block_copy(aBlock);

  v10 = v7;

  [v2 getFileRepresentation:v9 forType:a1];
  _Block_release(v9);
  sub_1CA94CCF8();
  swift_beginAccess();
  v11 = *(v4 + 16);
  if (*(v4 + 24))
  {
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443898, &unk_1CA9855B0);
    swift_willThrowTypedImpl();
  }

  else
  {
    v13 = v11;
  }

  return v11;
}

uint64_t sub_1CA5E8254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[29] = a2;
  v3[30] = a3;
  v3[28] = a1;
  v4 = sub_1CA949F78();
  v3[31] = v4;
  v3[32] = *(v4 - 8);
  v3[33] = swift_task_alloc();
  v5 = sub_1CA94B728();
  v3[34] = v5;
  v3[35] = *(v5 - 8);
  v3[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468C0, &qword_1CA988C00);
  v3[37] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA5E83AC, 0, 0);
}

uint64_t sub_1CA5E83AC()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[29];
  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_1CA5E84C8;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447000, &unk_1CA98E5B0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1CA5E89E0;
  v0[13] = &block_descriptor_29;
  v0[14] = v2;
  [v1 generateStructuredDataRepresentationWithTypeIdentifier:3 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1CA5E84C8()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 304) = *(v3 + 48);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA5E85C4()
{
  v34 = v1;
  sub_1CA2ECDF0(v1[26]);
  OUTLINED_FUNCTION_87();

  if (v0)
  {
    v2 = &selRef_temporaryDirectoryURL;
    v3 = [v0 value];
    sub_1CA94D258();
    swift_unknownObjectRelease();
    v4 = sub_1CA25B3D0(0, &qword_1EC444BF0, 0x1E696E940);
    if (swift_dynamicCast())
    {
      v5 = v1[36];
      v6 = v1[34];
      v7 = v1[35];
      v8 = v1[30];
      v9 = [v0 displayRepresentation];
      (*(v7 + 16))(v5, v8, v6);
      DisplayRepresentation.init(from:displayRepresentationConfig:)(v9, v5);
      OUTLINED_FUNCTION_26_13();
      sub_1CA94AB38();

      OUTLINED_FUNCTION_3_6();
      goto LABEL_10;
    }

    sub_1CA949C58();
    v13 = v0;
    v14 = sub_1CA949F68();
    v15 = sub_1CA94CC18();

    v16 = os_log_type_enabled(v14, v15);
    v18 = v1[32];
    v17 = v1[33];
    v19 = v1[31];
    if (v16)
    {
      swift_slowAlloc();
      v20 = OUTLINED_FUNCTION_39_8();
      v33 = v20;
      *v19 = 136315138;
      v21 = [v13 value];
      sub_1CA94D258();
      swift_unknownObjectRelease();
      v22 = sub_1CA94C408();
      v32 = v17;
      v24 = sub_1CA26B54C(v22, v23, &v33);
      v2 = &selRef_temporaryDirectoryURL;

      *(v19 + 4) = v24;
      _os_log_impl(&dword_1CA256000, v14, v15, "Expected conversion to person but received: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();

      (*(v18 + 8))(v32, v19);
    }

    else
    {

      (*(v18 + 8))(v17, v19);
    }

    v25 = OUTLINED_FUNCTION_52_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v25, v26);
    OUTLINED_FUNCTION_14_0();
    sub_1CA276B98(v27, v28, v29);
    OUTLINED_FUNCTION_4_0();
    swift_allocError();
    OUTLINED_FUNCTION_1_2();
    v30 = [v13 v2[278]];
    sub_1CA94D258();
    swift_unknownObjectRelease();
    qword_1CA98B4F8 = v4;
    swift_willThrow();
  }

  else
  {
    sub_1CA2F0CD4();
    OUTLINED_FUNCTION_4_0();
    v11 = swift_allocError();
    OUTLINED_FUNCTION_48_6(v11, v12);
    swift_willThrow();
  }

  OUTLINED_FUNCTION_5();
LABEL_10:

  return v10();
}

uint64_t sub_1CA5E8960()
{
  OUTLINED_FUNCTION_14();
  swift_willThrow();

  OUTLINED_FUNCTION_5();

  return v0();
}

uint64_t sub_1CA5E89E0(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;

    return sub_1CA35FF80();
  }

  else
  {
    sub_1CA25B3D0(0, &qword_1EC445B70, 0x1E69AC7D8);
    sub_1CA25B3D0(0, &unk_1EDB9F6B0, 0x1E69ACA90);
    sub_1CA5EFEE8(&qword_1EC447008, &qword_1EC445B70, 0x1E69AC7D8);
    sub_1CA94C1C8();

    return sub_1CA35FF84();
  }
}

uint64_t sub_1CA5E8AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_1CA94B728();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468C0, &qword_1CA988C00);
  v3[11] = swift_task_alloc();
  v5 = sub_1CA9486C8();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C60, &qword_1CA9827D0);
  v3[15] = swift_task_alloc();
  v6 = sub_1CA94ADC8();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v7 = sub_1CA94AC88();
  v3[22] = v7;
  v3[23] = *(v7 - 8);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v8 = sub_1CA94AC18();
  v3[28] = v8;
  v3[29] = *(v8 - 8);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA5E8E14, 0, 0);
}

uint64_t sub_1CA5E8E14()
{
  v139 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  v3 = *(v0 + 184);
  v134 = *(v0 + 48);
  v4 = *(v1 + 104);
  *(v0 + 288) = v4;
  *(v0 + 296) = (v1 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  OUTLINED_FUNCTION_96_7();
  v4();
  OUTLINED_FUNCTION_96_7();
  v4();
  OUTLINED_FUNCTION_96_7();
  v4();
  OUTLINED_FUNCTION_96_7();
  v4();
  OUTLINED_FUNCTION_96_7();
  v4();
  v5 = swift_allocBox();
  OUTLINED_FUNCTION_96_7();
  v4();
  *v2 = v5;
  *(v0 + 392) = *MEMORY[0x1E69DAE70];
  v6 = *(v3 + 104);
  *(v0 + 304) = v6;
  *(v0 + 312) = (v3 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v6(v2);
  v7 = sub_1CA5A30FC([v134 response], &selRef_rawResponse);
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    v11 = *(v0 + 280);
    v12 = *(v0 + 224);
    v13 = OUTLINED_FUNCTION_69_0();
    v14(v13);
    *v11 = v9;
    v11[1] = v10;
    (v4)(v11, *MEMORY[0x1E69DADF0], v12);
  }

  v15 = [*(v0 + 48) response];
  v16 = [v15 BOOLeanValue];

  if (v16)
  {
    v138[0] = 2;
    MEMORY[0x1CCAA1610](v16, v138);

    v17 = v138[0];
    if (v138[0] != 2)
    {
      v18 = *(v0 + 272);
      v19 = *(v0 + 224);
      v20 = OUTLINED_FUNCTION_3_3();
      v21(v20);
      *v18 = v17 & 1;
      (v4)(v18, *MEMORY[0x1E69DADC0], v19);
    }
  }

  v22 = [*(v0 + 48) response];
  v23 = [v22 numberValue];

  if (v23)
  {
    v136 = 0;
    v137 = 1;
    MEMORY[0x1CCAA1720](v23, &v136);

    if ((v137 & 1) == 0)
    {
      v24 = v136;
      v25 = *(v0 + 264);
      v26 = *(v0 + 224);
      v27 = OUTLINED_FUNCTION_3_3();
      v28(v27);
      *v25 = v24;
      (v4)(v25, *MEMORY[0x1E69DADE0], v26);
    }
  }

  v29 = [*(v0 + 48) response];
  v30 = [v29 date];

  v31 = sub_1CA948CB8();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_45();
  if (v30)
  {
    v32 = *(v0 + 248);
    v33 = *(v0 + 224);
    sub_1CA948C78();

    v34 = OUTLINED_FUNCTION_70();
    v35(v34);
    v36 = OUTLINED_FUNCTION_188();
    v37(v36);

    (v4)(v32, *MEMORY[0x1E69DADC8], v33);
  }

  else
  {
  }

  v38 = sub_1CA5EF434([*(v0 + 48) response]);
  if (v38)
  {
    v31 = v38;
    v39 = *(v0 + 240);
    v40 = *(v0 + 224);
    v41 = sub_1CA94C1D8();
    v43 = v42;

    v44 = OUTLINED_FUNCTION_107_0();
    v45(v44);
    *v39 = v41;
    v39[1] = v43;
    (v4)(v39, *MEMORY[0x1E69DADF0], v40);
    v46 = OUTLINED_FUNCTION_20_0();
    v47(v46);
  }

  v48 = sub_1CA5EF4AC([*(v0 + 48) response]);
  *(v0 + 320) = v48;
  if (v48)
  {
    v49 = v48;
    v50 = *(v0 + 56);
    *(v0 + 32) = sub_1CA94C1E8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447030, &qword_1CA98E5D0);
    v51 = swift_task_alloc();
    *(v0 + 328) = v51;
    v51[2] = v49;
    v51[3] = v50;
    v51[4] = v0 + 32;
    v52 = swift_task_alloc();
    *(v0 + 336) = v52;
    *v52 = v0;
    v52[1] = sub_1CA5E999C;
    v141 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DBF8]();
  }

  else
  {
    v133 = *(v0 + 392);
    v135 = *(v0 + 304);
    v122 = *(v0 + 288);
    v111 = *(v0 + 272);
    v112 = *(v0 + 280);
    v113 = *(v0 + 264);
    v114 = *(v0 + 256);
    v54 = *(v0 + 224);
    v53 = *(v0 + 232);
    v116 = *(v0 + 216);
    v117 = *(v0 + 248);
    v55 = *(v0 + 176);
    v115 = *(v0 + 184);
    v123 = *(v0 + 144);
    v124 = *(v0 + 136);
    v119 = *(v0 + 112);
    v120 = *(v0 + 104);
    v121 = *(v0 + 96);
    v125 = *(v0 + 72);
    v127 = *(v0 + 64);
    v128 = *(v0 + 80);
    v126 = *(v0 + 56);
    v130 = *(v0 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447020, &unk_1CA98E5C0);
    v56 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447028, &qword_1CA98FA30) - 8);
    v129 = *(*v56 + 72);
    v118 = OUTLINED_FUNCTION_105_6();
    *(v118 + 16) = xmmword_1CA981400;
    v57 = v118 + v31;
    v58 = v56[14];
    OUTLINED_FUNCTION_166_1();
    v59 = swift_allocBox();
    v61 = OUTLINED_FUNCTION_56_9(v59, v60);
    v131 = *(v53 + 16);
    v131(v61, v112, v54);
    *(v57 + v58) = v31;
    v132 = v55;
    v135(v118 + v31 + v58, v133, v55);
    v62 = (v118 + v31 + v129);
    v63 = v56[14];
    *v62 = 1819242338;
    v62[1] = 0xE400000000000000;
    v64 = swift_allocBox();
    v66 = OUTLINED_FUNCTION_56_9(v64, v65);
    v131(v66, v111, v54);
    *(v62 + v63) = v31;
    v135(v62 + v63, v133, v55);
    v67 = (v118 + v31 + 2 * v129);
    v68 = v56[14];
    OUTLINED_FUNCTION_164_3();
    *v67 = v69;
    v67[1] = v70;
    v71 = swift_allocBox();
    v73 = OUTLINED_FUNCTION_56_9(v71, v72);
    v131(v73, v113, v54);
    *(v67 + v68) = v31;
    v135(v67 + v68, v133, v55);
    v74 = (v118 + v31 + 3 * v129);
    v75 = v56[14];
    OUTLINED_FUNCTION_104_5();
    *v74 = v76;
    v74[1] = v77;
    v78 = swift_allocBox();
    v80 = OUTLINED_FUNCTION_56_9(v78, v79);
    v131(v80, v114, v54);
    *(v74 + v75) = v31;
    v135(v74 + v75, v133, v55);
    v81 = (v118 + v31 + 4 * v129);
    v82 = v56[14];
    *v81 = 1953720684;
    *(v81 + 1) = 0xE400000000000000;
    (*(v115 + 16))(&v81[v82], v116, v55);
    v83 = (v118 + v31 + 5 * v129);
    v84 = v56[14];
    *v83 = 1702125924;
    v83[1] = 0xE400000000000000;
    v85 = swift_allocBox();
    v87 = OUTLINED_FUNCTION_56_9(v85, v86);
    v131(v87, v117, v54);
    *(v83 + v84) = v55;
    v135(v83 + v84, v133, v55);
    v88 = (v118 + v31 + 6 * v129);
    OUTLINED_FUNCTION_85_6();
    *v88 = v89;
    v88[1] = v90;
    v91 = v54;
    v92 = swift_allocBox();
    v94 = v93;
    v95 = [v130 response];
    v96 = [v95 responseDataModel];

    sub_1CA948728();
    v97 = sub_1CA9486B8();
    v99 = v98;
    (*(v120 + 8))(v119, v121);
    *v94 = v97;
    v94[1] = v99;
    v122(v94, *MEMORY[0x1E69DADF0], v91);
    *(v88 + v57) = v92;
    v135(v88 + v57, v133, v132);
    *(v0 + 344) = sub_1CA94C1E8();
    OUTLINED_FUNCTION_123();
    v100 = swift_allocObject();
    v100[2] = sub_1CA94C3A8();
    v100[3] = v101;
    v100[4] = sub_1CA94C3A8();
    v100[5] = v102;
    *v123 = v100;
    (*(v124 + 104))();
    v103 = [v130 cachingIdentifier];
    OUTLINED_FUNCTION_40();
    sub_1CA948D28();
    OUTLINED_FUNCTION_1_0();
    *(v0 + 352) = OUTLINED_FUNCTION_45();
    sub_1CA948CF8();

    *(v0 + 16) = sub_1CA948CC8();
    *(v0 + 24) = v104;
    *(v0 + 360) = v104;
    v105 = OUTLINED_FUNCTION_116();
    v106(v105);
    v107 = type metadata accessor for WFContentItem.TypedValueResolutionContext(0);
    (*(v125 + 16))(v128, v126 + *(v107 + 20), v127);
    swift_task_alloc();
    OUTLINED_FUNCTION_77();
    *(v0 + 368) = v108;
    *v108 = v109;
    OUTLINED_FUNCTION_58_6(v108);
    OUTLINED_FUNCTION_36_13();

    return DisplayRepresentation.init(from:thumbnailSize:displayRepresentationConfig:)();
  }
}

uint64_t sub_1CA5E999C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v1 = *v0;
  OUTLINED_FUNCTION_13();
  *v2 = v1;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1CA5E9AA0()
{
  v1 = sub_1CA25B410(v0[40]);

  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v1)
    {
      v3 = 0;
      v4 = v0[23];
      v5 = v0[4];
      v123 = MEMORY[0x1E69E7CC0];
      v117 = v1;
      v119 = v0;
      do
      {
        if (*(v5 + 16))
        {
          v6 = sub_1CA320E94(v3);
          if (v7)
          {
            v9 = v0[25];
            v8 = v0[26];
            v10 = v0[24];
            v11 = v0[22];
            v120 = *(v4 + 72);
            v12 = *(v4 + 16);
            v12(v9, *(v5 + 56) + v120 * v6, v11);
            v13 = *(v4 + 32);
            v14 = OUTLINED_FUNCTION_126();
            v13(v14);
            v12(v10, v8, v11);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1CA2E4D50();
              v123 = v18;
            }

            v15 = *(v123 + 16);
            v0 = v119;
            if (v15 >= *(v123 + 24) >> 1)
            {
              sub_1CA2E4D50();
              v123 = v19;
            }

            v16 = v119[24];
            v17 = v119[22];
            (*(v4 + 8))(v119[26], v17);
            *(v123 + 16) = v15 + 1;
            (v13)(v123 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + v15 * v120, v16, v17);
            v1 = v117;
          }
        }

        ++v3;
      }

      while (v1 != v3);
    }

    else
    {
      v123 = MEMORY[0x1E69E7CC0];
    }

    v20 = v0[22];
    sub_1CA2ECECC(v123, v0[15]);
    v21 = OUTLINED_FUNCTION_201_0();
    OUTLINED_FUNCTION_49(v21, v22, v20);
    if (v23)
    {
      v24 = v0[21];
      v27 = v0;
      sub_1CA5F03BC(v0[15], &qword_1EC444C60);
      sub_1CA94AD98();
      v25 = swift_allocBox();
      OUTLINED_FUNCTION_20_27();
      (*(v26 + 104))();
      *v24 = v25;
      v30 = OUTLINED_FUNCTION_141();
    }

    else
    {
      v27 = v0;
      sub_1CA94AC28();
      v28 = OUTLINED_FUNCTION_52_0();
      v29(v28);
      v30 = OUTLINED_FUNCTION_70();
    }

    v31(v30);
    v121 = v27[38];
    v32 = v27[27];
    v33 = v27[21];
    v35 = v27[16];
    v34 = v27[17];
    sub_1CA94A888();
    v36 = swift_allocBox();
    v37 = OUTLINED_FUNCTION_52_11();
    v38(v37);
    sub_1CA94A858();
    (*(v34 + 8))(v33, v35);
    v39 = OUTLINED_FUNCTION_52_0();
    v40(v39);
    *v32 = v36;
    v41 = OUTLINED_FUNCTION_141();
    v121(v41);

    v124 = v27[38];
    v42 = *(v27 + 98);
    v108 = v27[36];
    v96 = v27[34];
    v97 = v27[35];
    v98 = v27[33];
    v99 = v27[32];
    v44 = v27[28];
    v43 = v27[29];
    v101 = v27[27];
    v102 = v27[31];
    v45 = v27[22];
    v100 = v27[23];
    v109 = v27[18];
    v110 = v27[17];
    v105 = v27[14];
    v106 = v27[13];
    v107 = v27[12];
    v114 = v27[10];
    v113 = v27[8];
    v111 = v27[9];
    v112 = v27[7];
    v103 = v27[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447020, &unk_1CA98E5C0);
    v46 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447028, &qword_1CA98FA30) - 8);
    v122 = *(*v46 + 72);
    v104 = OUTLINED_FUNCTION_105_6();
    *(v104 + 16) = xmmword_1CA981400;
    v47 = v32 + v104;
    v48 = v46[14];
    OUTLINED_FUNCTION_166_1();
    v49 = swift_allocBox();
    v115 = v43 + 16;
    v116 = *(v43 + 16);
    v95 = v44;
    v116(v50, v97, v44);
    *&v47[v48] = v49;
    v118 = v42;
    v124(v32 + v104 + v48, v42, v45);
    v51 = v32 + v104 + v122;
    v52 = v46[14];
    *v51 = 1819242338;
    *(v51 + 1) = 0xE400000000000000;
    v53 = swift_allocBox();
    v55 = OUTLINED_FUNCTION_56_9(v53, v54);
    v116(v55, v96, v44);
    *&v51[v52] = v32;
    v124(&v51[v52], v42, v45);
    v56 = v32 + 2 * v122 + v104;
    v57 = v46[14];
    OUTLINED_FUNCTION_164_3();
    *v56 = v58;
    *(v56 + 1) = v59;
    v60 = swift_allocBox();
    v116(v61, v98, v44);
    *&v56[v57] = v60;
    v124(&v56[v57], v118, v45);
    v62 = v32 + 3 * v122 + v104;
    v63 = v46[14];
    OUTLINED_FUNCTION_104_5();
    *v62 = v64;
    *(v62 + 1) = v65;
    v66 = swift_allocBox();
    v116(v67, v99, v44);
    *&v62[v63] = v66;
    v124(&v62[v63], v118, v45);
    v68 = v32 + 4 * v122 + v104;
    v69 = v46[14];
    *v68 = 1953720684;
    *(v68 + 1) = 0xE400000000000000;
    (*(v100 + 16))(&v68[v69], v101, v45);
    v70 = v32 + 5 * v122 + v104;
    v71 = v46[14];
    *v70 = 1702125924;
    *(v70 + 1) = 0xE400000000000000;
    v72 = swift_allocBox();
    v74 = OUTLINED_FUNCTION_56_9(v72, v73);
    v116(v74, v102, v44);
    *&v70[v71] = v115;
    v124(&v70[v71], v118, v45);
    v75 = (v32 + 6 * v122 + v104);
    OUTLINED_FUNCTION_85_6();
    *v75 = v76;
    v75[1] = v77;
    v78 = swift_allocBox();
    v80 = v79;
    v81 = [v103 response];
    v82 = [v81 responseDataModel];

    sub_1CA948728();
    v83 = sub_1CA9486B8();
    v85 = v84;
    (*(v106 + 8))(v105, v107);
    *v80 = v83;
    v80[1] = v85;
    v108(v80, *MEMORY[0x1E69DADF0], v95);
    *&v47[v75] = v78;
    v124(&v47[v75], v118, v45);
    v27[43] = sub_1CA94C1E8();
    OUTLINED_FUNCTION_123();
    v86 = swift_allocObject();
    v86[2] = sub_1CA94C3A8();
    v86[3] = v87;
    v86[4] = sub_1CA94C3A8();
    v86[5] = v88;
    *v109 = v86;
    (*(v110 + 104))();
    v89 = [v103 cachingIdentifier];
    OUTLINED_FUNCTION_40();
    sub_1CA948D28();
    OUTLINED_FUNCTION_1_0();
    v27[44] = OUTLINED_FUNCTION_45();
    sub_1CA948CF8();

    v27[2] = sub_1CA948CC8();
    v27[3] = v90;
    v27[45] = v90;
    v91 = OUTLINED_FUNCTION_69_0();
    v92(v91);
    v93 = type metadata accessor for WFContentItem.TypedValueResolutionContext(0);
    (*(v111 + 16))(v114, v112 + *(v93 + 20), v113);
    v94 = swift_task_alloc();
    v27[46] = v94;
    *v94 = v27;
    OUTLINED_FUNCTION_58_6(v94);
    OUTLINED_FUNCTION_36_13();

    return DisplayRepresentation.init(from:thumbnailSize:displayRepresentationConfig:)();
  }

  return result;
}

uint64_t sub_1CA5EA3D0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13();
  *v6 = v5;
  v3[47] = v0;

  if (v0)
  {
    (*(v3[17] + 8))(v3[18], v3[16]);
  }

  else
  {
    v3[48] = v3[2];
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1CA5EA508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = v6[35];
  v21 = v6[33];
  v22 = v6[34];
  v8 = v6[28];
  v7 = v6[29];
  v9 = v6[27];
  v11 = v6[22];
  v10 = v6[23];
  sub_1CA94B458();
  OUTLINED_FUNCTION_89();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  sub_1CA94A988();
  (*(v10 + 8))(v9, v11);
  v16 = *(v7 + 8);
  v17 = OUTLINED_FUNCTION_126();
  v16(v17);
  v18 = OUTLINED_FUNCTION_204();
  v16(v18);
  (v16)(v21, v8);
  (v16)(v22, v8);
  (v16)(v23, v8);

  OUTLINED_FUNCTION_3_6();

  return v19();
}

uint64_t sub_1CA5EA744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_170_1();
  v25 = v24[35];
  v26 = v24[32];
  v27 = v24[33];
  v28 = v24[31];
  v42 = v24[44];
  v43 = v24[30];
  v29 = v24[28];
  v30 = v24[29];
  v44 = v24[26];
  v45 = v24[25];
  v46 = v24[24];
  v47 = v24[21];
  v48 = v24[20];
  v49 = v24[19];
  v50 = v24[18];
  v51 = v24[15];
  v52 = v24[14];
  v53 = v24[11];
  v54 = v24[10];
  (*(v24[23] + 8))(v24[27], v24[22]);
  v31 = *(v30 + 8);
  v31(v28, v29);
  v31(v26, v29);
  v31(v27, v29);
  v32 = OUTLINED_FUNCTION_26_13();
  (v31)(v32);
  v31(v25, v29);

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_90_0();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, a22, a23, a24);
}

uint64_t sub_1CA5EA904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447030, &qword_1CA98E5D0);
  v5[15] = swift_task_alloc();
  v6 = sub_1CA94AC88();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447038, &qword_1CA98E5E8);
  v5[20] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447040, &qword_1CA98E5F0);
  v5[21] = v7;
  v5[22] = *(v7 - 8);
  v5[23] = swift_task_alloc();
  v8 = *(type metadata accessor for WFContentItem.TypedValueResolutionContext(0) - 8);
  v5[24] = v8;
  v5[25] = *(v8 + 64);
  v5[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443880, &qword_1CA982FB0);
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA5EAB54, 0, 0);
}

uint64_t sub_1CA5EAB54()
{
  v1 = sub_1CA25B410(*(v0 + 88));
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = v1;
    if (v1)
    {
      v29 = **(v0 + 80);
      v30 = *(v0 + 192);
      v3 = 0;
      v28 = sub_1CA94C858();
      v31 = v2;
      do
      {
        v5 = *(v0 + 216);
        v4 = *(v0 + 224);
        v6 = *(v0 + 208);
        v8 = *(v0 + 88);
        v7 = *(v0 + 96);
        OUTLINED_FUNCTION_46();
        __swift_storeEnumTagSinglePayload(v9, v10, v11, v28);
        sub_1CA5F0118(v7, v6);
        v12 = (*(v30 + 80) + 48) & ~*(v30 + 80);
        v13 = swift_allocObject();
        v13[2] = 0;
        v13[3] = 0;
        v13[4] = v3;
        v32 = v3;
        v13[5] = v8;
        sub_1CA5F017C(v6, v13 + v12);
        sub_1CA5EFF54(v4, v5, &qword_1EC443880, &qword_1CA982FB0);
        v14 = OUTLINED_FUNCTION_50_0();
        LODWORD(v5) = __swift_getEnumTagSinglePayload(v14, v15, v28);
        sub_1CA94C218();
        v16 = *(v0 + 216);
        if (v5 == 1)
        {
          v17 = OUTLINED_FUNCTION_3_3();
          sub_1CA5F03BC(v17, v18);
        }

        else
        {
          sub_1CA94C848();
          (*(*(v28 - 8) + 8))(v16, v28);
        }

        if (v13[2])
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v19 = sub_1CA94C7C8();
          v21 = v20;
          swift_unknownObjectRelease();
        }

        else
        {
          v19 = 0;
          v21 = 0;
        }

        v22 = swift_allocObject();
        *(v22 + 16) = &unk_1CA98E608;
        *(v22 + 24) = v13;

        if (v21 | v19)
        {
          v23 = v0 + 16;
          *(v0 + 16) = 0;
          *(v0 + 24) = 0;
          *(v0 + 32) = v19;
          *(v0 + 40) = v21;
        }

        else
        {
          v23 = 0;
        }

        ++v3;
        v24 = *(v0 + 224);
        *(v0 + 48) = 1;
        *(v0 + 56) = v23;
        *(v0 + 64) = v29;
        swift_task_create();

        sub_1CA5F03BC(v24, &qword_1EC443880);
      }

      while (v31 != v32 + 1);
    }

    sub_1CA94C7F8();
    swift_task_alloc();
    OUTLINED_FUNCTION_77();
    *(v0 + 232) = v25;
    *v25 = v26;
    v25[1] = sub_1CA5EAE90;
    OUTLINED_FUNCTION_90();
  }

  return MEMORY[0x1EEE6D8A8]();
}

uint64_t sub_1CA5EAE90()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v1 = *v0;
  OUTLINED_FUNCTION_13();
  *v2 = v1;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1CA5EAF78()
{
  v1 = v0[20];
  v2 = OUTLINED_FUNCTION_26_10();
  OUTLINED_FUNCTION_49(v2, v3, v4);
  if (v12)
  {
    (*(v0[22] + 8))(v0[23], v0[21]);

    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_23_0();

    __asm { BRAA            X1, X16 }
  }

  v7 = OUTLINED_FUNCTION_3_3();
  sub_1CA5F0374(v7, v8, v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447048, &qword_1CA98E618);
  v11 = OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_49(v11, 1, v1);
  if (v12)
  {
    sub_1CA5F03BC(v0[15], &qword_1EC447030);
    goto LABEL_21;
  }

  v13 = v0[15];
  v14 = v0[13];
  v15 = *(v0[17] + 32);
  v16 = *v13;
  v15(v0[19], v13 + *(v1 + 48), v0[16]);
  v17 = OUTLINED_FUNCTION_188();
  v18(v17);
  swift_isUniquelyReferenced_nonNull_native();
  v19 = *v14;
  v0[9] = *v14;
  *v14 = 0x8000000000000000;
  v20 = sub_1CA320E94(v16);
  if (__OFADD__(*(v19 + 16), (v21 & 1) == 0))
  {
    __break(1u);
    goto LABEL_25;
  }

  v22 = v20;
  v23 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447050, &qword_1CA98E620);
  if ((sub_1CA94D588() & 1) == 0)
  {
LABEL_16:
    v28 = v0[9];
    v29 = v0[18];
    v30 = v0[16];
    v31 = v0[17];
    if (v23)
    {
      (*(v31 + 40))(v28[7] + *(v31 + 72) * v22, v29, v0[16]);
      v32 = OUTLINED_FUNCTION_41_0();
      v33(v32);
LABEL_20:
      *v0[13] = v28;

LABEL_21:
      swift_task_alloc();
      OUTLINED_FUNCTION_77();
      v0[29] = v39;
      *v39 = v40;
      v39[1] = sub_1CA5EAE90;
      OUTLINED_FUNCTION_90();
      OUTLINED_FUNCTION_23_0();

      return MEMORY[0x1EEE6D8A8]();
    }

    v28[(v22 >> 6) + 8] |= 1 << v22;
    *(v28[6] + 8 * v22) = v16;
    v15(v28[7] + *(v31 + 72) * v22, v29, v30);
    v34 = OUTLINED_FUNCTION_41_0();
    v35(v34);
    v36 = v28[2];
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (!v37)
    {
      v28[2] = v38;
      goto LABEL_20;
    }

LABEL_25:
    __break(1u);
    return MEMORY[0x1EEE6D8A8]();
  }

  v24 = sub_1CA320E94(v16);
  if ((v23 & 1) == (v25 & 1))
  {
    v22 = v24;
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_23_0();

  return sub_1CA94D878();
}

uint64_t sub_1CA5EB308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1CA5EB32C, 0, 0);
}

uint64_t sub_1CA5EB32C()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  **(v0 + 16) = v1;
  v3 = v2 & 0xC000000000000001;
  sub_1CA275D70(v1, (v2 & 0xC000000000000001) == 0, v2);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  if (v3)
  {
    v6 = MEMORY[0x1CCAA22D0](v4, v5);
  }

  else
  {
    v6 = *(v5 + 8 * v4 + 32);
  }

  *(v0 + 48) = v6;
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447048, &qword_1CA98E618);
  swift_task_alloc();
  OUTLINED_FUNCTION_77();
  *(v0 + 64) = v7;
  *v7 = v8;
  v7[1] = sub_1CA5EB420;

  return WFContentItem.resolve(with:)();
}

uint64_t sub_1CA5EB420()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_29_1();
  v2 = *v1;
  OUTLINED_FUNCTION_13();
  *v3 = v2;

  OUTLINED_FUNCTION_25_2();
  v5 = *(v4 + 48);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1CA5EB548()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_89();
  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
  OUTLINED_FUNCTION_5();

  return v4();
}

uint64_t sub_1CA5EB5A8()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_46();
  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
  OUTLINED_FUNCTION_5();

  return v4();
}

uint64_t sub_1CA5EB608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468C0, &qword_1CA988C00);
  v6[8] = swift_task_alloc();
  v7 = sub_1CA94AC88();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  v8 = sub_1CA94B668();
  v6[12] = v8;
  v6[13] = *(v8 - 8);
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v6[16] = type metadata accessor for LNValue.ValueResolutionContext(0);
  v6[17] = swift_task_alloc();
  v9 = sub_1CA94B168();
  v6[18] = v9;
  v6[19] = *(v9 - 8);
  v6[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4445D0, &qword_1CA983080);
  v6[21] = swift_task_alloc();
  v10 = sub_1CA94B1C8();
  v6[22] = v10;
  v6[23] = *(v10 - 8);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  sub_1CA94AA08();
  v6[26] = swift_task_alloc();
  v11 = sub_1CA94B618();
  v6[27] = v11;
  v6[28] = *(v11 - 8);
  v6[29] = swift_task_alloc();
  v12 = sub_1CA94AD08();
  v6[30] = v12;
  v6[31] = *(v12 - 8);
  v6[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444368, &unk_1CA988BC0);
  v6[33] = swift_task_alloc();
  v13 = sub_1CA94ADC8();
  v6[34] = v13;
  v6[35] = *(v13 - 8);
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C60, &qword_1CA9827D0);
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA5EBA94, 0, 0);
}

void sub_1CA5EBA94()
{
  v5 = *(v0 + 56);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + 352) = ObjCClassFromMetadata;
  v7 = [ObjCClassFromMetadata appBundleIdentifier];
  v8 = sub_1CA94C3A8();
  v10 = v9;

  *(v0 + 360) = v8;
  *(v0 + 368) = v10;
  v11 = &selRef_possibleContentClassesForVariableNamed_;
  v12 = [v5 properties];
  sub_1CA25B3D0(0, &qword_1EDB9FB20, 0x1E69AC950);
  OUTLINED_FUNCTION_5_3();
  v13 = sub_1CA94C658();
  *(v0 + 376) = v13;

  v14 = sub_1CA25B410(v13);
  *(v0 + 384) = v14;
  v15 = &selRef_effectiveInputClasses;
  if (!v14)
  {
    goto LABEL_41;
  }

  v16 = 0;
  *(v0 + 480) = *MEMORY[0x1E69DAE68];
  *(v0 + 484) = *MEMORY[0x1E69DB2E0];
  *(v0 + 488) = *MEMORY[0x1E69DB488];
  v17 = MEMORY[0x1E69E7CC8];
  v1 = MEMORY[0x1E69E7CC8];
  v121 = v0;
  while (2)
  {
    *(v0 + 392) = v17;
    *(v0 + 400) = v1;
    OUTLINED_FUNCTION_92_4();
    v18 = *(v0 + 376);
    if (v17)
    {
      v19 = MEMORY[0x1CCAA22D0](v16, v18);
    }

    else
    {
      v19 = *(v18 + 8 * v16 + 32);
    }

    v20 = v19;
    *(v0 + 408) = v19;
    *(v0 + 416) = v16 + 1;
    if (__OFADD__(v16, 1))
    {
LABEL_50:
      __break(1u);
      return;
    }

    v21 = [*(v0 + 352) v15[45]];
    v22 = [v21 v11[155]];

    sub_1CA25B3D0(0, &unk_1EC4419B0, 0x1E69AC958);
    OUTLINED_FUNCTION_93();
    v23 = sub_1CA94C658();

    v24 = sub_1CA25B410(v23);
    v25 = 0;
    v122 = v20;
    while (1)
    {
      if (v24 == v25)
      {

        goto LABEL_38;
      }

      if ((v23 & 0xC000000000000001) != 0)
      {
        v36 = OUTLINED_FUNCTION_125();
        v26 = MEMORY[0x1CCAA22D0](v36);
      }

      else
      {
        if (v25 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_49;
        }

        v26 = *(v23 + 8 * v25 + 32);
      }

      if (__OFADD__(v25, 1))
      {
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v125 = v26;
      v27 = sub_1CA52A3C0(v26);
      v29 = v28;
      v30 = [v20 identifier];
      v31 = sub_1CA94C3A8();
      v33 = v32;

      if (!v29)
      {

        v20 = v122;
        goto LABEL_21;
      }

      v34 = v27 == v31 && v29 == v33;
      v20 = v122;
      if (v34)
      {
        break;
      }

      v35 = OUTLINED_FUNCTION_91_6(v27);

      if (v35)
      {
        goto LABEL_24;
      }

LABEL_21:

      ++v25;
    }

LABEL_24:

    if (([v125 capabilities] & 2) == 0)
    {
      goto LABEL_38;
    }

    v37 = [v122 identifier];
    if (!v37)
    {
      sub_1CA94C3A8();
      sub_1CA94C368();
      OUTLINED_FUNCTION_87();
    }

    v38 = [swift_getObjCClassFromMetadata() propertyForName_];

    if (!v38)
    {
LABEL_38:
      v88 = OUTLINED_FUNCTION_18_27();
      v89(v88);
      OUTLINED_FUNCTION_148_3();
      OUTLINED_FUNCTION_35_2();
      v126 = (v90 + *v90);
      v91 = swift_task_alloc();
      v92 = OUTLINED_FUNCTION_113_4(v91);
      *v92 = v93;
      v94 = OUTLINED_FUNCTION_13_33(v92);

      v126(v94);
      return;
    }

    if (!v125)
    {
      v113 = *(v121 + 264);
      v112 = *(v121 + 272);

      OUTLINED_FUNCTION_46();
      __swift_storeEnumTagSinglePayload(v114, v115, v116, v112);
      sub_1CA5F03BC(v113, &qword_1EC444368);
      goto LABEL_38;
    }

    v39 = [v125 valueType];
    OUTLINED_FUNCTION_162_1();
    OUTLINED_FUNCTION_116();
    sub_1CA94CB58();
    v41 = *(v121 + 296);
    v40 = *(v121 + 304);
    v43 = *(v121 + 272);
    v42 = *(v121 + 280);
    v44 = *(v121 + 264);
    v45 = *(v121 + 232);
    v119 = *(v121 + 256);

    OUTLINED_FUNCTION_89();
    __swift_storeEnumTagSinglePayload(v46, v47, v48, v43);
    (*(v42 + 32))(v40, v44, v43);
    sub_1CA94AA18();
    v120 = swift_allocBox();
    (*(v42 + 16))(v41, v40, v43);
    static WFContentItem.classDescriptor.getter();
    WFContentProperty.toolkitTypeInstance(classDescriptor:seen:isDeferrable:)(v45, MEMORY[0x1E69E7CC0], 0, v119);
    v49 = OUTLINED_FUNCTION_76_6();
    v50(v49);
    v17 = v38;
    OUTLINED_FUNCTION_142_5((v42 + 16));
    v15 = *(v121 + 480);
    v51 = *(v121 + 336);
    v123 = *(v121 + 344);
    v52 = *(v121 + 72);
    sub_1CA94A9F8();

    v53 = OUTLINED_FUNCTION_162();
    v0 = v121;
    v54(v53);
    v55 = OUTLINED_FUNCTION_49_8(v120);
    v56(v55);
    OUTLINED_FUNCTION_89();
    __swift_storeEnumTagSinglePayload(v57, v58, v59, v52);
    v3 = &qword_1EC444C60;
    v4 = &qword_1CA9827D0;
    sub_1CA5F0374(v51, v123, &qword_1EC444C60, &qword_1CA9827D0);
    v60 = OUTLINED_FUNCTION_111_6();
    v61 = *(v121 + 72);
    v62 = [v60 identifier];
    v63 = sub_1CA94C3A8();
    v65 = v64;

    v66 = OUTLINED_FUNCTION_52_0();
    sub_1CA5EFF54(v66, v67, &qword_1EC444C60, &qword_1CA9827D0);
    v68 = OUTLINED_FUNCTION_201_0();
    OUTLINED_FUNCTION_49(v68, v69, v61);
    if (v34)
    {
      v17 = *(v121 + 400);
      sub_1CA5F03BC(*(v121 + 320), &qword_1EC444C60);
      v70 = OUTLINED_FUNCTION_107_0();
      v72 = sub_1CA271BF8(v70, v71);
      if (v73)
      {
        OUTLINED_FUNCTION_112_3();
        swift_isUniquelyReferenced_nonNull_native();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444360, &qword_1CA983118);
        v0 = v121;
        sub_1CA94D588();
        OUTLINED_FUNCTION_139_6();
        v74 = OUTLINED_FUNCTION_50_8();
        v75(v74);
        OUTLINED_FUNCTION_23();
        v72 = sub_1CA94D5A8();
        v76 = 0;
        v1 = v17;
      }

      else
      {
        v17 = *(v121 + 392);
        v1 = *(v121 + 400);
        v76 = 1;
      }

      v11 = &selRef_possibleContentClassesForVariableNamed_;
      v2 = &unk_1EC4419B0;
      OUTLINED_FUNCTION_75_7(v72, v76);

      v3 = &qword_1EC444C60;
      sub_1CA5F03BC(v63, &qword_1EC444C60);
    }

    else
    {
      v77 = *(v121 + 408);
      v78 = OUTLINED_FUNCTION_32_14();
      v79(v78);
      swift_isUniquelyReferenced_nonNull_native();
      v80 = OUTLINED_FUNCTION_116();
      sub_1CA322244(v80, v81, v65, v82, v83, v84, v85, v86, v117, v118);

      v1 = v17;
      v11 = &selRef_possibleContentClassesForVariableNamed_;
      v2 = &unk_1EC4419B0;
    }

    v87 = OUTLINED_FUNCTION_109_4();
    sub_1CA5F03BC(v87, &qword_1EC444C60);
    v10 = 0x1E69AC958uLL;
    if (v15 != v63)
    {
      v16 = *(v0 + 416);
      v15 = &selRef_effectiveInputClasses;
      continue;
    }

    break;
  }

LABEL_41:
  OUTLINED_FUNCTION_74_7();
  v95 = *(v0 + 272);
  v96 = *(v0 + 56);
  v124 = *(v0 + 48);
  v127 = *(v0 + 64);

  OUTLINED_FUNCTION_123();
  v97 = swift_allocObject();
  v98 = [v2 appBundleIdentifier];
  sub_1CA94C3A8();
  OUTLINED_FUNCTION_159_3();

  v97[2] = v3;
  v97[3] = v4;
  v99 = [v2 entityMetadata];
  v100 = [v99 identifier];

  v101 = sub_1CA94C3A8();
  v103 = v102;

  v97[4] = v101;
  v97[5] = v103;
  *v1 = v97;
  (v15[13])(v1, *MEMORY[0x1E69DB098], v95);
  v104 = [v96 identifier];
  v105 = [v104 instanceIdentifier];

  sub_1CA94C3A8();
  sub_1CA5EFF54(v124, v127, &qword_1EC4468C0, &qword_1CA988C00);
  if ([v96 isTransient])
  {
    v106 = *(v10 + 56);
  }

  v107 = *(v10 + 80);
  v108 = *(v10 + 72);
  v109 = *(v10 + 16);
  sub_1CA94A9A8();
  v110 = swift_allocBox();
  sub_1CA94A988();
  *v109 = v110;
  (*(v107 + 104))(v109, *MEMORY[0x1E69DAE58], v108);

  OUTLINED_FUNCTION_3_6();

  v111();
}

uint64_t sub_1CA5EC754()
{
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13();
  *v6 = v5;
  v3[56] = v0;

  if (v0)
  {
    v8 = v3[19];
    v7 = v3[20];
    v9 = v3[18];

    (*(v8 + 8))(v7, v9);
  }

  else
  {
    (*(v3[19] + 8))(v3[20], v3[18]);
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

void sub_1CA5EC8C4()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  OUTLINED_FUNCTION_89();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v2);
  v7 = *(v3 + 32);
  v8 = OUTLINED_FUNCTION_107_0();
  v7(v8);
  v9 = [v1 value];
  *(v0 + 456) = v9;
  if (v9)
  {
    v160 = v7;
    v10 = *(v0 + 424);
    (*(*(v0 + 184) + 16))(*(v0 + 192), *(v0 + 200), *(v0 + 176));
    if (v10)
    {
      v11 = [*(v0 + 424) valueType];
      sub_1CA94CB78();

      v12 = OUTLINED_FUNCTION_20_0();
      v13(v12);
    }

    else
    {
      (*(*(v0 + 104) + 104))(*(v0 + 120), *(v0 + 488), *(v0 + 96));
    }

    v95 = *(v0 + 128);
    v94 = *(v0 + 136);
    v96 = *(v0 + 104);
    v156 = *(v0 + 96);
    v158 = *(v0 + 120);
    v97 = v0;
    v98 = *(v0 + 24);
    v99 = *(*(v0 + 432) + 20);
    v100 = v95[6];
    sub_1CA94B728();
    OUTLINED_FUNCTION_0_1();
    (*(v101 + 16))(v94 + v100, v98 + v99);
    v102 = OUTLINED_FUNCTION_134();
    v160(v102);
    (*(v96 + 32))(v94 + v95[5], v158, v156);
    *(v94 + v95[7]) = 0;
    v103 = swift_task_alloc();
    *(v97 + 464) = v103;
    *v103 = v97;
    v103[1] = sub_1CA5ED544;
    OUTLINED_FUNCTION_90_6();

    LNValue.resolve(with:)();
    return;
  }

  v14 = OUTLINED_FUNCTION_69_9(*(v0 + 448));
  v15(v14);
  OUTLINED_FUNCTION_46();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v2);
  v19 = &qword_1EC444C60;
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_130_3();
  sub_1CA5F0374(v20, v21, v22, v23);
  v24 = &selRef_groupedIntermediaryActions;
  v157 = v0;
LABEL_5:
  v25 = OUTLINED_FUNCTION_111_6();
  v26 = *(v0 + 72);
  v27 = [v25 v24[137]];
  v28 = sub_1CA94C3A8();
  v30 = v29;

  OUTLINED_FUNCTION_52_0();
  OUTLINED_FUNCTION_130_3();
  sub_1CA5EFF54(v31, v32, v33, v34);
  v35 = OUTLINED_FUNCTION_201_0();
  OUTLINED_FUNCTION_49(v35, v36, v26);
  if (v67)
  {
    v1 = *(v0 + 400);
    OUTLINED_FUNCTION_141_5(*(v0 + 320));
    v37 = OUTLINED_FUNCTION_122_2();
    v39 = sub_1CA271BF8(v37, v38);
    if (v40)
    {
      OUTLINED_FUNCTION_112_3();
      swift_isUniquelyReferenced_nonNull_native();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444360, &qword_1CA983118);
      OUTLINED_FUNCTION_167_2();
      v19 = &qword_1EC444C60;
      v0 = v157;
      sub_1CA94D588();
      OUTLINED_FUNCTION_139_6();
      v41 = OUTLINED_FUNCTION_50_8();
      v42(v41);
      OUTLINED_FUNCTION_23();
      v39 = sub_1CA94D5A8();
      v43 = 0;
      v54 = v1;
    }

    else
    {
      v1 = *(v0 + 392);
      v54 = *(v0 + 400);
      v43 = 1;
    }

    v27 = v161;
    OUTLINED_FUNCTION_75_7(v39, v43);

    OUTLINED_FUNCTION_141_5(v28);
  }

  else
  {
    v44 = *(v0 + 408);
    v45 = OUTLINED_FUNCTION_32_14();
    v46(v45);
    swift_isUniquelyReferenced_nonNull_native();
    v47 = OUTLINED_FUNCTION_116();
    sub_1CA322244(v47, v48, v30, v49, v50, v51, v52, v53, v138, v139);

    v54 = v1;
  }

  v55 = OUTLINED_FUNCTION_109_4();
  OUTLINED_FUNCTION_141_5(v55);
  if (v2 == v28)
  {
    OUTLINED_FUNCTION_74_7();
    OUTLINED_FUNCTION_137_4();

    OUTLINED_FUNCTION_123();
    v105 = swift_allocObject();
    v106 = [&qword_1EC444C60 appBundleIdentifier];
    v107 = sub_1CA94C3A8();
    v108 = v24;
    v110 = v109;

    v105[2] = v107;
    v105[3] = v110;
    v111 = [&qword_1EC444C60 entityMetadata];
    v112 = [v111 v108[137]];

    v113 = sub_1CA94C3A8();
    v115 = v114;

    v105[4] = v113;
    v105[5] = v115;
    *v27 = v105;
    v117 = v2[13];
    v116 = v2 + 13;
    v117(v27, *MEMORY[0x1E69DB098], v157);
    v118 = [v1 v108[137]];
    v119 = [v118 instanceIdentifier];

    v120 = sub_1CA94C3A8();
    v144 = v121;
    v145 = v120;

    sub_1CA5EFF54(v159, v161, &qword_1EC4468C0, &qword_1CA988C00);
    if ([v1 isTransient])
    {
      v122 = *(v54 + 56);
    }

    OUTLINED_FUNCTION_39_10();
    v123 = swift_allocBox();
    OUTLINED_FUNCTION_98_5(v123, v124, v125, v126, v127, v128, v129, v130, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v54);
    *v54 = v27;
    (*(v1 + 13))(v54, *MEMORY[0x1E69DAE58], v116);

    OUTLINED_FUNCTION_3_6();
    goto LABEL_53;
  }

  v56 = *(v0 + 416);
  *(v0 + 392) = v1;
  *(v0 + 400) = v54;
  OUTLINED_FUNCTION_92_4();
  v57 = *(v0 + 376);
  if (v1)
  {
    v58 = MEMORY[0x1CCAA22D0](v56, v57);
  }

  else
  {
    v58 = *(v57 + 8 * v56 + 32);
  }

  *(v0 + 408) = v58;
  *(v0 + 416) = v56 + 1;
  if (__OFADD__(v56, 1))
  {
    goto LABEL_58;
  }

  v59 = [*(v0 + 352) entityMetadata];
  v60 = [v59 properties];

  sub_1CA25B3D0(0, &unk_1EC4419B0, 0x1E69AC958);
  OUTLINED_FUNCTION_93();
  v61 = sub_1CA94C658();

  sub_1CA25B410(v61);
  OUTLINED_FUNCTION_128_2();
  while (1)
  {
    if (&qword_1CA9827D0 == v19)
    {

      goto LABEL_41;
    }

    if (v2)
    {
      v62 = MEMORY[0x1CCAA22D0](v19, v61);
    }

    else
    {
      if (v19 >= *(v0 + 16))
      {
        goto LABEL_57;
      }

      v62 = *(v61 + 8 * v19 + 32);
    }

    if (__OFADD__(v19, 1))
    {
      break;
    }

    v161 = v62;
    sub_1CA52A3C0(v62);
    v63 = OUTLINED_FUNCTION_172_0();
    v64 = sub_1CA94C3A8();
    v66 = v65;

    if (v60)
    {
      v67 = v27 == v64 && v60 == v66;
      if (v67)
      {

LABEL_33:

        if (([v161 capabilities] & 2) == 0)
        {
          goto LABEL_41;
        }

        v68 = [v159 identifier];
        if (!v68)
        {
          sub_1CA94C3A8();
          sub_1CA94C368();
          OUTLINED_FUNCTION_87();
        }

        v69 = [swift_getObjCClassFromMetadata() propertyForName_];

        if (!v69)
        {
          goto LABEL_41;
        }

        if (!v161)
        {
          v132 = *(v157 + 264);
          v131 = *(v157 + 272);

          OUTLINED_FUNCTION_46();
          __swift_storeEnumTagSinglePayload(v133, v134, v135, v131);
          sub_1CA5F03BC(v132, &qword_1EC444368);
LABEL_41:
          v87 = OUTLINED_FUNCTION_18_27();
          v88(v87);
          OUTLINED_FUNCTION_148_3();
          OUTLINED_FUNCTION_35_2();
          v89 = swift_task_alloc();
          v90 = OUTLINED_FUNCTION_113_4(v89);
          *v90 = v91;
          OUTLINED_FUNCTION_13_33(v90);
          OUTLINED_FUNCTION_90_6();

          __asm { BRAA            X6, X16 }
        }

        v70 = [v161 valueType];
        OUTLINED_FUNCTION_162_1();
        OUTLINED_FUNCTION_116();
        v2 = v154;
        sub_1CA94CB58();
        if (!v154)
        {
          OUTLINED_FUNCTION_117_4();
          OUTLINED_FUNCTION_89();
          __swift_storeEnumTagSinglePayload(v71, v72, v73, v64);
          v74 = OUTLINED_FUNCTION_130();
          v75(v74);
          sub_1CA94AA18();
          v155 = swift_allocBox();
          v76 = OUTLINED_FUNCTION_52_11();
          v77(v76);
          static WFContentItem.classDescriptor.getter();
          WFContentProperty.toolkitTypeInstance(classDescriptor:seen:isDeferrable:)(&selRef_groupedIntermediaryActions, MEMORY[0x1E69E7CC0], 0, v153);
          v78 = OUTLINED_FUNCTION_76_6();
          v79(v78);
          v1 = v69;
          OUTLINED_FUNCTION_142_5((v161 + 16));
          v153 = 0;
          OUTLINED_FUNCTION_57_9();

          v80 = OUTLINED_FUNCTION_162();
          v0 = v157;
          v81(v80);
          v82 = OUTLINED_FUNCTION_49_8(v155);
          v83(v82);
          OUTLINED_FUNCTION_89();
          __swift_storeEnumTagSinglePayload(v84, v85, v86, v69);
          v19 = &qword_1EC444C60;
          sub_1CA5F0374(v159, v159, &qword_1EC444C60, &qword_1CA9827D0);
          v154 = 0;
          v24 = &selRef_groupedIntermediaryActions;
          goto LABEL_5;
        }

        OUTLINED_FUNCTION_16_29();
        OUTLINED_FUNCTION_115_4();

        OUTLINED_FUNCTION_5();
LABEL_53:
        OUTLINED_FUNCTION_90_6();

        __asm { BRAA            X1, X16 }
      }

      v27 = OUTLINED_FUNCTION_91_6(v27);

      if (v27)
      {
        goto LABEL_33;
      }
    }

    else
    {
    }

    v19 = (v19 + 1);
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
}

uint64_t sub_1CA5ED544()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_6();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_13();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 472) = v0;

  v5 = *(v2 + 456);
  if (v0)
  {

    OUTLINED_FUNCTION_62_7();
    sub_1CA5EF5D8();
  }

  else
  {
    OUTLINED_FUNCTION_62_7();
    sub_1CA5EF5D8();
  }

  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1CA5ED6A8()
{
  v3 = OUTLINED_FUNCTION_69_9(*(v2 + 472));
  v4(v3);
  OUTLINED_FUNCTION_89();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v1);
  v8 = &qword_1EC444C60;
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_130_3();
  sub_1CA5F0374(v9, v10, v11, v12);
  v13 = &selRef_groupedIntermediaryActions;
  v134 = v2;
LABEL_2:
  v14 = OUTLINED_FUNCTION_111_6();
  v15 = *(v2 + 72);
  v16 = [v14 v13[137]];
  v17 = sub_1CA94C3A8();
  v19 = v18;

  OUTLINED_FUNCTION_52_0();
  OUTLINED_FUNCTION_130_3();
  sub_1CA5EFF54(v20, v21, v22, v23);
  v24 = OUTLINED_FUNCTION_201_0();
  OUTLINED_FUNCTION_49(v24, v25, v15);
  if (v56)
  {
    v0 = *(v2 + 400);
    OUTLINED_FUNCTION_141_5(*(v2 + 320));
    v26 = OUTLINED_FUNCTION_122_2();
    v28 = sub_1CA271BF8(v26, v27);
    if (v29)
    {
      OUTLINED_FUNCTION_112_3();
      swift_isUniquelyReferenced_nonNull_native();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444360, &qword_1CA983118);
      OUTLINED_FUNCTION_167_2();
      v8 = &qword_1EC444C60;
      v2 = v134;
      sub_1CA94D588();
      OUTLINED_FUNCTION_139_6();
      v30 = OUTLINED_FUNCTION_50_8();
      v31(v30);
      OUTLINED_FUNCTION_23();
      v28 = sub_1CA94D5A8();
      v32 = 0;
      v43 = v0;
    }

    else
    {
      v0 = *(v2 + 392);
      v43 = *(v2 + 400);
      v32 = 1;
    }

    v16 = v136;
    OUTLINED_FUNCTION_75_7(v28, v32);

    OUTLINED_FUNCTION_141_5(v17);
  }

  else
  {
    v33 = *(v2 + 408);
    v34 = OUTLINED_FUNCTION_32_14();
    v35(v34);
    swift_isUniquelyReferenced_nonNull_native();
    v36 = OUTLINED_FUNCTION_116();
    sub_1CA322244(v36, v37, v19, v38, v39, v40, v41, v42, v116, v117);

    v43 = v0;
  }

  v44 = OUTLINED_FUNCTION_109_4();
  OUTLINED_FUNCTION_141_5(v44);
  if (v1 == v17)
  {
    OUTLINED_FUNCTION_74_7();
    OUTLINED_FUNCTION_137_4();

    OUTLINED_FUNCTION_123();
    v83 = swift_allocObject();
    v84 = [&qword_1EC444C60 appBundleIdentifier];
    v85 = sub_1CA94C3A8();
    v86 = v13;
    v88 = v87;

    v83[2] = v85;
    v83[3] = v88;
    v89 = [&qword_1EC444C60 entityMetadata];
    v90 = [v89 v86[137]];

    v91 = sub_1CA94C3A8();
    v93 = v92;

    v83[4] = v91;
    v83[5] = v93;
    *v16 = v83;
    v95 = v1[13];
    v94 = v1 + 13;
    v95(v16, *MEMORY[0x1E69DB098], v134);
    v96 = [v0 v86[137]];
    v97 = [v96 instanceIdentifier];

    v98 = sub_1CA94C3A8();
    v122 = v99;
    v123 = v98;

    sub_1CA5EFF54(v135, v136, &qword_1EC4468C0, &qword_1CA988C00);
    if ([v0 isTransient])
    {
      v100 = *(v43 + 56);
    }

    OUTLINED_FUNCTION_39_10();
    v101 = swift_allocBox();
    OUTLINED_FUNCTION_98_5(v101, v102, v103, v104, v105, v106, v107, v108, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v43);
    *v43 = v16;
    (*(v0 + 13))(v43, *MEMORY[0x1E69DAE58], v94);

    OUTLINED_FUNCTION_3_6();
    goto LABEL_46;
  }

  v45 = *(v2 + 416);
  *(v2 + 392) = v0;
  *(v2 + 400) = v43;
  OUTLINED_FUNCTION_92_4();
  v46 = *(v2 + 376);
  if (v0)
  {
    v47 = MEMORY[0x1CCAA22D0](v45, v46);
  }

  else
  {
    v47 = *(v46 + 8 * v45 + 32);
  }

  *(v2 + 408) = v47;
  *(v2 + 416) = v45 + 1;
  if (__OFADD__(v45, 1))
  {
    goto LABEL_51;
  }

  v48 = [*(v2 + 352) entityMetadata];
  v49 = [v48 properties];

  sub_1CA25B3D0(0, &unk_1EC4419B0, 0x1E69AC958);
  OUTLINED_FUNCTION_93();
  v50 = sub_1CA94C658();

  sub_1CA25B410(v50);
  OUTLINED_FUNCTION_128_2();
  while (1)
  {
    if (&qword_1CA9827D0 == v8)
    {

      goto LABEL_38;
    }

    if (v1)
    {
      v51 = MEMORY[0x1CCAA22D0](v8, v50);
    }

    else
    {
      if (v8 >= *(v2 + 16))
      {
        goto LABEL_50;
      }

      v51 = *(v50 + 8 * v8 + 32);
    }

    if (__OFADD__(v8, 1))
    {
      break;
    }

    v136 = v51;
    sub_1CA52A3C0(v51);
    v52 = OUTLINED_FUNCTION_172_0();
    v53 = sub_1CA94C3A8();
    v55 = v54;

    if (v49)
    {
      v56 = v16 == v53 && v49 == v55;
      if (v56)
      {

LABEL_30:

        if (([v136 capabilities] & 2) == 0)
        {
          goto LABEL_38;
        }

        v57 = [v135 identifier];
        if (!v57)
        {
          sub_1CA94C3A8();
          sub_1CA94C368();
          OUTLINED_FUNCTION_87();
        }

        v58 = [swift_getObjCClassFromMetadata() propertyForName_];

        if (!v58)
        {
          goto LABEL_38;
        }

        if (!v136)
        {
          v110 = *(v134 + 264);
          v109 = *(v134 + 272);

          OUTLINED_FUNCTION_46();
          __swift_storeEnumTagSinglePayload(v111, v112, v113, v109);
          sub_1CA5F03BC(v110, &qword_1EC444368);
LABEL_38:
          v76 = OUTLINED_FUNCTION_18_27();
          v77(v76);
          OUTLINED_FUNCTION_148_3();
          OUTLINED_FUNCTION_35_2();
          v78 = swift_task_alloc();
          v79 = OUTLINED_FUNCTION_113_4(v78);
          *v79 = v80;
          OUTLINED_FUNCTION_13_33(v79);
          OUTLINED_FUNCTION_90_6();

          __asm { BRAA            X6, X16 }
        }

        v59 = [v136 valueType];
        OUTLINED_FUNCTION_162_1();
        OUTLINED_FUNCTION_116();
        v1 = v132;
        sub_1CA94CB58();
        if (!v132)
        {
          OUTLINED_FUNCTION_117_4();
          OUTLINED_FUNCTION_89();
          __swift_storeEnumTagSinglePayload(v60, v61, v62, v53);
          v63 = OUTLINED_FUNCTION_130();
          v64(v63);
          sub_1CA94AA18();
          v133 = swift_allocBox();
          v65 = OUTLINED_FUNCTION_52_11();
          v66(v65);
          static WFContentItem.classDescriptor.getter();
          WFContentProperty.toolkitTypeInstance(classDescriptor:seen:isDeferrable:)(&selRef_groupedIntermediaryActions, MEMORY[0x1E69E7CC0], 0, v131);
          v67 = OUTLINED_FUNCTION_76_6();
          v68(v67);
          v0 = v58;
          OUTLINED_FUNCTION_142_5((v136 + 16));
          v131 = 0;
          OUTLINED_FUNCTION_57_9();

          v69 = OUTLINED_FUNCTION_162();
          v2 = v134;
          v70(v69);
          v71 = OUTLINED_FUNCTION_49_8(v133);
          v72(v71);
          OUTLINED_FUNCTION_89();
          __swift_storeEnumTagSinglePayload(v73, v74, v75, v58);
          v8 = &qword_1EC444C60;
          sub_1CA5F0374(v135, v135, &qword_1EC444C60, &qword_1CA9827D0);
          v132 = 0;
          v13 = &selRef_groupedIntermediaryActions;
          goto LABEL_2;
        }

        OUTLINED_FUNCTION_16_29();
        OUTLINED_FUNCTION_115_4();

        OUTLINED_FUNCTION_5();
LABEL_46:
        OUTLINED_FUNCTION_90_6();

        __asm { BRAA            X1, X16 }
      }

      v16 = OUTLINED_FUNCTION_91_6(v16);

      if (v16)
      {
        goto LABEL_30;
      }
    }

    else
    {
    }

    v8 = (v8 + 1);
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
}

uint64_t sub_1CA5EE130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_170_1();
  v25 = v24[53];
  v26 = v24[51];
  v27 = v24[21];
  OUTLINED_FUNCTION_46();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  sub_1CA5F03BC(v27, &qword_1EC4445D0);
  sub_1CA2F0CD4();
  OUTLINED_FUNCTION_4_0();
  v56 = swift_allocError();
  *v32 = xmmword_1CA982020;
  *(v32 + 16) = 4;
  swift_willThrow();

  OUTLINED_FUNCTION_136_5();
  v45 = v33;
  v46 = v34;
  v47 = v35;
  v48 = v24[24];
  v49 = v24[21];
  v50 = v24[20];
  v51 = v24[17];
  v52 = v24[15];
  v53 = v24[14];
  v54 = v24[11];
  v55 = v24[8];

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_90_0();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, a21, a22, a23, a24);
}

uint64_t sub_1CA5EE2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_170_1();
  v25 = *(v24 + 424);

  v26 = OUTLINED_FUNCTION_3_3();
  v27(v26);
  v51 = *(v24 + 472);
  OUTLINED_FUNCTION_136_5();
  v40 = v28;
  v41 = v29;
  v42 = v30;
  v43 = *(v24 + 192);
  v44 = *(v24 + 168);
  v45 = *(v24 + 160);
  v46 = *(v24 + 136);
  v47 = *(v24 + 120);
  v48 = *(v24 + 112);
  v49 = *(v24 + 88);
  v50 = *(v24 + 64);

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_90_0();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, a22, a23, a24);
}

id static WFContentItem.toolkitEntityProperties(localizationContext:)(uint64_t a1)
{
  v3 = v1;
  v35 = a1;
  v34 = sub_1CA94B618();
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_0();
  v9 = v8 - v7;
  v10 = sub_1CA94B538();
  OUTLINED_FUNCTION_1_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_19();
  v41 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v30 - v17;
  v36 = v3;
  v19 = [swift_getObjCClassFromMetadata() allProperties];
  sub_1CA25B3D0(0, &unk_1EC4419D0, 0x1E6996D88);
  v20 = sub_1CA94C658();

  result = sub_1CA25B410(v20);
  v22 = 0;
  v38 = v20 & 0xC000000000000001;
  v39 = result;
  v40 = v20;
  v37 = v20 & 0xFFFFFFFFFFFFFF8;
  v33 = (v5 + 8);
  v30[1] = v12 + 8;
  v31 = (v12 + 16);
  v30[0] = v12 + 32;
  v23 = MEMORY[0x1E69E7CC0];
  for (i = v9; ; v9 = i)
  {
    if (v39 == v22)
    {

      return v23;
    }

    if (v38)
    {
      result = MEMORY[0x1CCAA22D0](v22, v40);
    }

    else
    {
      if (v22 >= *(v37 + 16))
      {
        goto LABEL_18;
      }

      result = *(v40 + 8 * v22 + 32);
    }

    v24 = result;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    static WFContentItem.classDescriptor.getter();
    WFContentProperty.toolkitEntityPropertyDefinition(classDescriptor:localizationContext:)(v9, v35, v18);
    if (v2)
    {
      (*v33)(v9, v34);

      return v23;
    }

    (*v33)(v9, v34);
    (*v31)(v41, v18, v10);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1CA2E7540();
      v23 = v28;
    }

    v25 = *(v23 + 16);
    if (v25 >= *(v23 + 24) >> 1)
    {
      sub_1CA2E7540();
      v23 = v29;
    }

    v26 = OUTLINED_FUNCTION_121();
    v27(v26);
    *(v23 + 16) = v25 + 1;
    result = (*(v12 + 32))(v23 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v25, v41, v10);
    ++v22;
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1CA5EE7E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA2DF78C;

  return WFContentItem.resolve(with:)();
}

uint64_t sub_1CA5EE88C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1CA25B3D0(0, &qword_1EDB9F790, 0x1E6996D58);
  v7 = sub_1CA5EFEE8(&qword_1EC446FF8, &qword_1EDB9F790, 0x1E6996D58);
  *v5 = v2;
  v5[1] = sub_1CA2E9390;

  return MEMORY[0x1EEE4B290](a1, a2, v6, v7);
}

void sub_1CA5EE99C(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v16[0] = 0;
  v10 = [objc_opt_self() archivedDataWithRootObject:a2 requiringSecureCoding:1 error:v16];
  v11 = v16[0];
  if (v10)
  {
    sub_1CA948C08();
    OUTLINED_FUNCTION_165();

    v12 = [a1 name];
    sub_1CA94C3A8();
    OUTLINED_FUNCTION_159_3();

    *a3 = v3;
    a3[1] = v4;
    a3[2] = v5;
    a3[3] = v6;
    v13 = *MEMORY[0x1E69DACB0];
    sub_1CA94AA08();
    OUTLINED_FUNCTION_0_1();
    (*(v14 + 104))(a3, v13);
  }

  else
  {
    v15 = v11;
    sub_1CA948AD8();

    swift_willThrow();
  }
}

void sub_1CA5EEB08(void *a1, void *a2, uint64_t a3, NSObject *a4)
{
  if (a1)
  {
    swift_beginAccess();
    v7 = *(a3 + 16);
    *(a3 + 16) = a1;
    *(a3 + 24) = 0;
    v8 = a1;
    v9 = v7;
  }

  else
  {
    v11 = a2;
    if (!a2)
    {
      sub_1CA2F0CD4();
      v11 = swift_allocError();
      *v12 = 0;
      *(v12 + 8) = 0;
      *(v12 + 16) = 4;
    }

    swift_beginAccess();
    v13 = *(a3 + 16);
    *(a3 + 16) = v11;
    *(a3 + 24) = 1;
    v14 = a2;
    v9 = v13;
  }

  sub_1CA5EFFF4(v9);
  dispatch_group_leave(a4);
}

uint64_t sub_1CA5EEC04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1CA97EDF0;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = sub_1CA5A30FC([ObjCClassFromMetadata codableDescription], &selRef_mainBundleIdentifier);
  if (v3)
  {
    *(v0 + 32) = result;
    *(v0 + 40) = v3;
    result = sub_1CA5A30FC([ObjCClassFromMetadata codableDescription], &selRef_typeName);
    if (v4)
    {
      *(v0 + 48) = result;
      *(v0 + 56) = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
      sub_1CA276B98(&qword_1EC441B20, &qword_1EC443E20, &qword_1CA986220);
      v5 = sub_1CA94C308();

      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1CA5EED40(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = [objc_opt_self() toolKitRegistry];
  v4 = [v3 actions];

  sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
  sub_1CA5EFEE8(&qword_1EC441700, &qword_1EDB9F5D0, off_1E836DCF8);
  v5 = sub_1CA94C8F8();

  if ((v5 & 0xC000000000000001) != 0)
  {
    sub_1CA94C218();
    sub_1CA94D2F8();
    sub_1CA94C948();
    v5 = v37;
    v6 = v38;
    v7 = v39;
    v8 = v40;
    v9 = v41;
  }

  else
  {
    v10 = -1 << *(v5 + 32);
    v6 = v5 + 56;
    v11 = ~v10;
    v12 = -v10;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v9 = v13 & *(v5 + 56);
    sub_1CA94C218();
    v7 = v11;
    v8 = 0;
  }

  v14 = (v7 + 64) >> 6;
  v36 = v5;
  while ((v5 & 0x8000000000000000) == 0)
  {
    v15 = v8;
    v16 = v9;
    if (!v9)
    {
      while (1)
      {
        v8 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v8 >= v14)
        {
          goto LABEL_24;
        }

        v16 = *(v6 + 8 * v8);
        ++v15;
        if (v16)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_34;
    }

LABEL_13:
    v17 = (v16 - 1) & v16;
    v18 = *(*(v5 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v18)
    {
      goto LABEL_32;
    }

LABEL_17:
    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (v19)
    {
      v20 = v19;
      v21 = v18;
      v22 = WFAction.outputContentClasses.getter();

      v23 = *(v22 + 16);
      v24 = 32;
      while (v23)
      {
        v25 = *(v22 + v24);
        v24 += 8;
        --v23;
        if (v25 == a1)
        {

          sub_1CA2BC138(v36);
          goto LABEL_25;
        }
      }

      v9 = v17;
      v5 = v36;
    }

    else
    {

      v9 = v17;
      v5 = v36;
    }
  }

  if (!sub_1CA94D358())
  {
    goto LABEL_24;
  }

  swift_dynamicCast();
  v18 = v42;
  v17 = v9;
  if (v42)
  {
    goto LABEL_17;
  }

LABEL_32:
  v5 = v36;
LABEL_24:
  sub_1CA2BC138(v5);
  v21 = 0;
  v20 = 0;
LABEL_25:
  v26 = [swift_getObjCClassFromMetadata() codableDescription];
  v27 = sub_1CA5A30FC(v26, &selRef_mainBundleIdentifier);
  if (!v28)
  {
LABEL_34:
    __break(1u);
    return;
  }

  v29 = v27;
  v30 = v28;

  if (v20)
  {
    v31 = [v20 displayableAppDescriptor];
    if (v31)
    {
      v32 = sub_1CA5F6764(v31);
      v34 = v33;

      if (v34)
      {

        v29 = v32;
        v30 = v34;
      }
    }

    else
    {
    }
  }

  *a2 = v29;
  a2[1] = v30;
}

uint64_t sub_1CA5EF0D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447058, &qword_1CA98E628);
  result = sub_1CA94B748();
  qword_1EC446EE0 = result;
  return result;
}

uint64_t sub_1CA5EF118()
{
  sub_1CA5F03BC(v0 + OBJC_IVAR____TtCFE11WorkflowKitCSo13WFContentItem26_blockingEncodedTypedValueFT_GSqCSo19WFEncodedTypedValue_L_3Box_typedValue, &qword_1EC444C60);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1CA5EF18C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1CA5EF284;

  return v6(a1);
}

uint64_t sub_1CA5EF284()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v1 = *v0;
  OUTLINED_FUNCTION_13();
  *v2 = v1;

  OUTLINED_FUNCTION_3_6();

  return v3();
}

unint64_t sub_1CA5EF364()
{
  result = qword_1EC446F80;
  if (!qword_1EC446F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446F80);
  }

  return result;
}

uint64_t sub_1CA5EF3D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CA5EF434(void *a1)
{
  v2 = [a1 dictionary];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1CA94C1C8();

  return v3;
}

uint64_t sub_1CA5EF4AC(void *a1)
{
  v2 = [a1 list];

  if (!v2)
  {
    return 0;
  }

  sub_1CA25B3D0(0, &qword_1EDB9F790, 0x1E6996D58);
  v3 = sub_1CA94C658();

  return v3;
}

uint64_t sub_1CA5EF524(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_1CA948C08();
  }

  return OUTLINED_FUNCTION_23();
}

uint64_t sub_1CA5EF580(void *a1)
{
  v1 = [a1 synonyms];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1CA94C658();

  return v3;
}

uint64_t sub_1CA5EF5D8()
{
  v1 = OUTLINED_FUNCTION_30();
  v2(v1);
  OUTLINED_FUNCTION_52();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1CA5EF658()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_6();
  swift_task_alloc();
  OUTLINED_FUNCTION_77();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1CA2E9390;
  OUTLINED_FUNCTION_107_4();
  OUTLINED_FUNCTION_9_2();

  return sub_1CA5E68E8(v3, v4, v5, v6, v7);
}

unint64_t sub_1CA5EF704()
{
  result = qword_1EC446FB0;
  if (!qword_1EC446FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446FB0);
  }

  return result;
}

uint64_t dispatch thunk of ContentItemTypedValueResolvable.resolveContentItem(with:)()
{
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_135_4(v1, v2, v3, v4);
  OUTLINED_FUNCTION_35_2();
  swift_task_alloc();
  OUTLINED_FUNCTION_77();
  *(v0 + 16) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_84_2(v5);

  return v8(v7);
}

uint64_t dispatch thunk of static WFToolKitContentItem.toolkitTypeDefinition(context:)()
{
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_135_4(v1, v2, v3, v4);
  OUTLINED_FUNCTION_35_2();
  swift_task_alloc();
  OUTLINED_FUNCTION_77();
  *(v0 + 16) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_84_2(v5);

  return v8(v7);
}

_BYTE *_s22ToolKitConversionErrorOwst_1(_BYTE *result, int a2, int a3)
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

void sub_1CA5EFAC0(uint64_t a1)
{
  sub_1CA5EFB84(319);
  if (v1 <= 0x3F)
  {
    sub_1CA94B668();
    if (v2 <= 0x3F)
    {
      sub_1CA94B728();
      if (v3 <= 0x3F)
      {
        sub_1CA25B3D0(319, &qword_1EC441840, 0x1E69E0BE0);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1CA5EFB84(uint64_t a1)
{
  if (!qword_1EC446FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC446FD8, &unk_1CA98E570);
    v1 = sub_1CA94D098();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC446FD0);
    }
  }
}

void sub_1CA5EFC10(uint64_t a1)
{
  sub_1CA94B668();
  if (v1 <= 0x3F)
  {
    sub_1CA94B728();
    if (v2 <= 0x3F)
    {
      sub_1CA5EFDF4(319, &qword_1EC441D08, MEMORY[0x1E69DAF50]);
      if (v3 <= 0x3F)
      {
        sub_1CA2F0E70(319, &qword_1EC442210, &protocol descriptor for ContainerDefinitionProvider);
        if (v4 <= 0x3F)
        {
          sub_1CA2F0E70(319, &qword_1EC4424D8, &protocol descriptor for TypeDefinitionProvider);
          if (v5 <= 0x3F)
          {
            sub_1CA5EFDF4(319, &qword_1EC4441B8, MEMORY[0x1EEE78680]);
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

void sub_1CA5EFD48(uint64_t a1)
{
  sub_1CA5EFDF4(319, &qword_1EC446FF0, MEMORY[0x1E69DAE88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1CA5EFDF4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_5_3();
    v4 = sub_1CA94D098();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1CA5EFE44()
{
  OUTLINED_FUNCTION_14();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA2DF78C;
  v2 = OUTLINED_FUNCTION_23();

  return v3(v2);
}

uint64_t sub_1CA5EFEE8(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1CA25B3D0(255, a2, a3);
    OUTLINED_FUNCTION_5_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CA5EFF54(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_206(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0_1();
  v5 = OUTLINED_FUNCTION_23();
  v6(v5);
  return v4;
}

unint64_t sub_1CA5EFF9C()
{
  result = qword_1EC447018;
  if (!qword_1EC447018)
  {
    sub_1CA949D18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447018);
  }

  return result;
}

uint64_t objectdestroy_53Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x1EEE6BDD0](v1, 32, 7);
}

uint64_t block_copy_helper_76(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1CA5F0068()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_6();
  swift_task_alloc();
  OUTLINED_FUNCTION_77();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1CA2E9390;
  OUTLINED_FUNCTION_134_5();
  OUTLINED_FUNCTION_9_2();

  return sub_1CA5EA904(v3, v4, v5, v6, v7);
}

uint64_t sub_1CA5F0118(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WFContentItem.TypedValueResolutionContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA5F017C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WFContentItem.TypedValueResolutionContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA5F01E0()
{
  OUTLINED_FUNCTION_59_0();
  v2 = OUTLINED_FUNCTION_30();
  v3 = type metadata accessor for WFContentItem.TypedValueResolutionContext(v2);
  OUTLINED_FUNCTION_18_0(v3);
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  swift_task_alloc();
  OUTLINED_FUNCTION_77();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_1CA2E9390;
  v9 = OUTLINED_FUNCTION_107_4();

  return sub_1CA5EB308(v9, v10, v4, v5, v6, v11);
}

uint64_t sub_1CA5F02CC()
{
  OUTLINED_FUNCTION_14();
  swift_task_alloc();
  OUTLINED_FUNCTION_77();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1CA2E9390;
  v3 = OUTLINED_FUNCTION_107_4();

  return v4(v3);
}

uint64_t sub_1CA5F0374(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_206(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0_1();
  v5 = OUTLINED_FUNCTION_23();
  v6(v5);
  return v4;
}

uint64_t sub_1CA5F03BC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_10_22(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_52();
  (*(v5 + 8))(v2);
  return v2;
}

uint64_t sub_1CA5F042C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_206(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0_1();
  v5 = OUTLINED_FUNCTION_23();
  v6(v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_88_3()
{
  *(v0 - 128) = 0;
  *(v0 - 120) = 0xE000000000000000;

  return sub_1CA94D408();
}

uint64_t OUTLINED_FUNCTION_115_4()
{
  v3 = v0[14];
  *(v1 - 120) = v0[15];
  *(v1 - 112) = v3;
  v4 = v0[8];
  *(v1 - 104) = v0[11];
  *(v1 - 96) = v4;
}

void OUTLINED_FUNCTION_117_4()
{
}

uint64_t OUTLINED_FUNCTION_118_4()
{

  return swift_slowAlloc();
}

double OUTLINED_FUNCTION_129_3(uint64_t a1, uint64_t a2)
{
  *(v3 - 144) = a2;
  *(v3 - 136) = a1;
  result = 0.0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_137_4()
{
  v3 = v0[34];
  *(v1 - 96) = v0[8];
  v4 = v0[6];
  *(v1 - 112) = v3;
  *(v1 - 104) = v4;
}

uint64_t OUTLINED_FUNCTION_138_6()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_141_5(uint64_t a1)
{

  return sub_1CA5F03BC(a1, v1);
}

double OUTLINED_FUNCTION_160_3()
{
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

id OUTLINED_FUNCTION_172_0()
{
  v3 = *(v1 + 1096);

  return [v0 v3];
}

uint64_t OUTLINED_FUNCTION_173_1(uint64_t a1)
{

  return sub_1CA94CC68();
}

uint64_t sub_1CA5F07A4(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1CA94D688();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC8];
  }

  v8 = v5;
  v6 = sub_1CA94C218();
  a4(v6, 1, &v8);

  return v8;
}

id sub_1CA5F0878(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  *&v6[OBJC_IVAR____TtC11WorkflowKit21WFGetAppSettingAction____lazy_storage____localizedNameForEntityIdentifier] = 0;
  *&v6[OBJC_IVAR____TtC11WorkflowKit21WFGetAppSettingAction_entityByEntityIdentifier] = a4;
  *&v6[OBJC_IVAR____TtC11WorkflowKit21WFGetAppSettingAction_fullyQualifiedActionIdentifier] = a6;
  v9 = a6;
  v10 = sub_1CA94C368();

  v11 = a3;
  if (a5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
    v12 = sub_1CA94C1A8();
  }

  else
  {
    v12 = 0;
  }

  v15.receiver = v6;
  v15.super_class = type metadata accessor for WFGetAppSettingAction();
  v13 = objc_msgSendSuper2(&v15, sel_initWithIdentifier_definition_serializedParameters_, v10, a3, v12);

  if (v13)
  {
  }

  return v13;
}

uint64_t sub_1CA5F09F4()
{
  v1 = OBJC_IVAR____TtC11WorkflowKit21WFGetAppSettingAction____lazy_storage____localizedNameForEntityIdentifier;
  if (*(v0 + OBJC_IVAR____TtC11WorkflowKit21WFGetAppSettingAction____lazy_storage____localizedNameForEntityIdentifier))
  {
    v2 = *(v0 + OBJC_IVAR____TtC11WorkflowKit21WFGetAppSettingAction____lazy_storage____localizedNameForEntityIdentifier);
  }

  else
  {
    sub_1CA5F0A5C(v0);
    v2 = v3;
    *(v0 + v1) = v3;
    sub_1CA94C218();
  }

  sub_1CA94C218();
  return v2;
}

void sub_1CA5F0A5C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC11WorkflowKit21WFGetAppSettingAction_entityByEntityIdentifier);
  v2 = v1 + 64;
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;
  v24 = v1;
  swift_bridgeObjectRetain_n();
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      sub_1CA5F07A4(v8, &qword_1EC446BF8, &qword_1CA98D010, sub_1CA5F6470);
      return;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      do
      {
LABEL_8:
        v10 = *(*(v24 + 56) + ((v7 << 9) | (8 * __clz(__rbit64(v5)))));
        v11 = [v10 identifier];
        v25 = sub_1CA94C3A8();
        v13 = v12;

        v14 = [v10 displayRepresentation];
        v15 = [v14 name];

        v16 = [v15 wf_localizedString];
        v17 = sub_1CA94C3A8();
        v19 = v18;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1CA2E4FA0();
          v8 = v22;
        }

        v20 = *(v8 + 16);
        if (v20 >= *(v8 + 24) >> 1)
        {
          sub_1CA2E4FA0();
          v8 = v23;
        }

        v5 &= v5 - 1;
        *(v8 + 16) = v20 + 1;
        v21 = (v8 + 32 * v20);
        v21[4] = v25;
        v21[5] = v13;
        v21[6] = v17;
        v21[7] = v19;
      }

      while (v5);
    }
  }

  __break(1u);
}

id sub_1CA5F0CE0()
{
  v1 = [v0 definition];
  if (!v1)
  {
    v9 = 0u;
    v10 = 0u;
LABEL_9:
    sub_1CA2C0A74(&v9);
    goto LABEL_10;
  }

  v2 = v1;
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_1CA94D258();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v9 = v6;
  v10 = v7;
  if (!*(&v7 + 1))
  {
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444060, &qword_1CA981AE0);
  if (swift_dynamicCast())
  {
    sub_1CA25B3D0(0, &qword_1EC447070, 0x1E696E720);
    v4 = OUTLINED_FUNCTION_87();
    return sub_1CA5F0E1C(v4);
  }

LABEL_10:
  v8.receiver = v0;
  v8.super_class = type metadata accessor for WFGetAppSettingAction();
  return objc_msgSendSuper2(&v8, sel_displayableAppDescriptor);
}

id sub_1CA5F0E1C(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_1CA94C1A8();

  v3 = [v1 initWithSerializedRepresentation_];

  return v3;
}

id sub_1CA5F0EA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA94C368();
  v7.receiver = v2;
  v7.super_class = type metadata accessor for WFGetAppSettingAction();
  v5 = objc_msgSendSuper2(&v7, sel_setParameterState_forKey_, a1, v4);

  if (v5)
  {
    [v2 nameUpdated];
    [v2 outputDetailsUpdated];
  }

  return v5;
}

uint64_t sub_1CA5F0FC8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 101;
  }

  else
  {
    return 100;
  }
}

uint64_t sub_1CA5F0FD8(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1E69E6158];
  if (a2)
  {
    sub_1CA94C218();
    sub_1CA94C438("Could not find setting named: %@", 32);
    if (qword_1EDB9F5F0 != -1)
    {
      swift_once();
    }

    v5 = qword_1EDB9F690;
    v6 = sub_1CA94C368();
    v7 = sub_1CA94C368();

    v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

    sub_1CA94C3A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446870, &qword_1CA982240);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1CA981310;
    *(v9 + 56) = v2;
    *(v9 + 64) = sub_1CA282DB4();
    *(v9 + 32) = a1;
    *(v9 + 40) = a2;
    v10 = sub_1CA94C3C8();
    v12 = v11;
  }

  else
  {
    sub_1CA94C438("Please provide a setting.", 25);
    if (qword_1EDB9F5F0 != -1)
    {
      swift_once();
    }

    v13 = qword_1EDB9F690;
    v14 = sub_1CA94C368();
    v15 = sub_1CA94C368();

    v16 = [v13 localizedStringForKey:v14 value:v15 table:0];

    v10 = sub_1CA94C3A8();
    v12 = v17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981310;
  *(inited + 32) = sub_1CA94C3A8();
  *(inited + 40) = v19;
  *(inited + 72) = v2;
  *(inited + 48) = v10;
  *(inited + 56) = v12;
  return sub_1CA94C1E8();
}

uint64_t sub_1CA5F12E4()
{
  OUTLINED_FUNCTION_0();
  v1[6] = v0;
  v2 = sub_1CA949F78();
  v1[7] = v2;
  OUTLINED_FUNCTION_12(v2);
  v1[8] = v3;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  sub_1CA94C838();
  v1[11] = sub_1CA94C828();
  OUTLINED_FUNCTION_87();
  v5 = sub_1CA94C7C8();
  v1[12] = v5;
  v1[13] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1CA5F13D4, v5, v4);
}

uint64_t sub_1CA5F13D4()
{
  v1 = OUTLINED_FUNCTION_31();
  v2 = sub_1CA33A988(v1);
  if (v2)
  {
    v3 = v2;
    sub_1CA94C398();

    v4 = swift_task_alloc();
    *(v0 + 112) = v4;
    *v4 = v0;
    v5 = sub_1CA5F169C;
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 160) = v4;
    *v4 = v0;
    v5 = sub_1CA5F1D44;
  }

  v4[1] = v5;
  OUTLINED_FUNCTION_24();

  return sub_1CA5F4BA4();
}

uint64_t sub_1CA5F169C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13();
  *v6 = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_8_27();
  }

  else
  {
    OUTLINED_FUNCTION_5_42();
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1CA5F179C()
{
  v1 = v0[15];
  if (!v1)
  {

    sub_1CA949C58();
    v7 = sub_1CA949F68();
    v8 = sub_1CA94CC18();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1CA256000, v7, v8, "Unexpected or null mode parameter value", v9, 2u);
      OUTLINED_FUNCTION_26();
    }

    v11 = v0[8];
    v10 = v0[9];
    v12 = v0[7];

    (*(v11 + 8))(v10, v12);
    sub_1CA5F503C();
    OUTLINED_FUNCTION_4_0();
    swift_allocError();
    *v13 = 0;
    v13[1] = 0;
LABEL_12:
    swift_willThrow();

    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_24();

    __asm { BRAA            X1, X16 }
  }

  v2 = v0[3];
  OUTLINED_FUNCTION_116();
  v3 = sub_1CA323E2C();
  v0[16] = v3;
  if (!v3)
  {

    sub_1CA949C58();
    sub_1CA94C218();
    v14 = sub_1CA949F68();
    v15 = sub_1CA94CC18();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v16 = 136315138;
      v17 = OUTLINED_FUNCTION_116();
      *(v16 + 4) = sub_1CA26B54C(v17, v18, v19);
      OUTLINED_FUNCTION_40_7(&dword_1CA256000, v20, v21, "Could not find entity and/or query metadata for %s");
      __swift_destroy_boxed_opaque_existential_0(v27);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();
    }

    v22 = OUTLINED_FUNCTION_70();
    v23(v22);
    sub_1CA5F503C();
    OUTLINED_FUNCTION_4_0();
    swift_allocError();
    *v24 = v2;
    v24[1] = v1;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_87();

  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_6_43(v4);
  OUTLINED_FUNCTION_24();

  return sub_1CA5F1F24();
}

uint64_t sub_1CA5F1A5C()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  OUTLINED_FUNCTION_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  *(v8 + 144) = v7;
  *(v8 + 152) = v0;

  v9 = *(v2 + 104);
  v10 = *(v2 + 96);
  if (v0)
  {
    v11 = sub_1CA5F1EB0;
  }

  else
  {
    v11 = sub_1CA5F1B94;
  }

  return MEMORY[0x1EEE6DFA0](v11, v10, v9);
}

uint64_t sub_1CA5F1B94()
{
  v1 = *(v0 + 144);

  if (v1)
  {
    v2 = *(v0 + 48);
    v3 = *(v0 + 144);
    v4 = [v3 valueType];
    v5 = [*(v2 + OBJC_IVAR____TtC11WorkflowKit21WFGetAppSettingAction_fullyQualifiedActionIdentifier) bundleIdentifier];
    if (!v5)
    {
      sub_1CA94C3A8();
      v5 = sub_1CA94C368();
    }

    v6 = [*(v0 + 48) displayableAppDescriptor];
    if (v6 && (sub_1CA5F6764(v6), v7))
    {
      v8 = sub_1CA94C368();
    }

    else
    {
      v8 = 0;
    }

    v9 = *(v0 + 128);
    v10 = *(v0 + 48);
    [v10 outputDisclosureLevel];
    v11 = OUTLINED_FUNCTION_50_6();
    v13 = [v11 v12];

    [v10 setOutput_];
  }

  else
  {
    v9 = *(v0 + 128);
  }

  OUTLINED_FUNCTION_5();

  return v14();
}

uint64_t sub_1CA5F1D44()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13();
  *v6 = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_8_27();
  }

  else
  {
    OUTLINED_FUNCTION_5_42();
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1CA5F1E44()
{
  OUTLINED_FUNCTION_0();

  OUTLINED_FUNCTION_5();

  return v0();
}

uint64_t sub_1CA5F1EB0()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 128);

  OUTLINED_FUNCTION_5();

  return v2();
}

uint64_t sub_1CA5F1F24()
{
  OUTLINED_FUNCTION_0();
  v1[31] = v0;
  v2 = sub_1CA94CEF8();
  v1[32] = v2;
  OUTLINED_FUNCTION_12(v2);
  v1[33] = v3;
  v1[34] = swift_task_alloc();
  v4 = sub_1CA94CF08();
  v1[35] = v4;
  OUTLINED_FUNCTION_12(v4);
  v1[36] = v5;
  v1[37] = swift_task_alloc();
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1CA5F2054()
{
  v1 = [*(v0 + 248) systemProtocolMetadata];
  type metadata accessor for LNSystemEntityProtocolIdentifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447100, &unk_1CA989ED0);
  sub_1CA5F6A78(&qword_1EC4436B0, type metadata accessor for LNSystemEntityProtocolIdentifier, &unk_1CA9810FC);
  v2 = sub_1CA94C1C8();

  sub_1CA311800(*MEMORY[0x1E69AC2D8], v2);
  OUTLINED_FUNCTION_87();

  if (!v1)
  {

    OUTLINED_FUNCTION_53();

    __asm { BRAA            X2, X16 }
  }

  v3 = *(v0 + 248);
  swift_unknownObjectRelease();
  v4 = [v3 identifier];
  sub_1CA94C3A8();

  v5 = [v3 identifier];
  sub_1CA94C3A8();
  OUTLINED_FUNCTION_194();

  MEMORY[0x1CCAA1300](0x657571696E753ALL, 0xE700000000000000);
  v6 = objc_allocWithZone(MEMORY[0x1E69AC7D8]);
  v7 = sub_1CA320B2C();
  *(v0 + 304) = v7;
  v8 = [objc_opt_self() policyWithEntityMetadata_];
  *(v0 + 216) = 0;
  v9 = [v8 connectionWithError_];
  *(v0 + 312) = v9;

  v10 = *(v0 + 216);
  if (!v9)
  {
    v29 = v10;
    sub_1CA948AD8();

    swift_willThrow();

    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_53();

    __asm { BRAA            X1, X16 }
  }

  v11 = *(v0 + 288);
  v12 = *(v0 + 296);
  v13 = *(v0 + 272);
  v14 = *(v0 + 280);
  v15 = *(v0 + 264);
  v33 = *(v0 + 256);
  v16 = *(v0 + 248);
  sub_1CA25B3D0(0, &unk_1EC445BB0, 0x1E69ACE00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1CA9813B0;
  *(v17 + 32) = v7;
  *v12 = v17;
  (*(v11 + 104))(v12, *MEMORY[0x1E69ACAC8], v14);
  *v13 = v16;
  (*(v15 + 104))(v13, *MEMORY[0x1E69ACB00], v33);
  v18 = objc_allocWithZone(MEMORY[0x1E69ACFD8]);
  v19 = v10;
  v20 = v7;
  v21 = v16;
  [v18 init];
  *(v0 + 320) = sub_1CA94CF18();
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 208;
  *(v0 + 24) = sub_1CA5F254C;
  v22 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4477D0, &qword_1CA988F20);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1CA4F4758;
  *(v0 + 104) = &block_descriptor_30;
  *(v0 + 112) = v22;
  v23 = OUTLINED_FUNCTION_50_6();
  [v23 v24];
  OUTLINED_FUNCTION_53();

  return MEMORY[0x1EEE6DEC8](v25);
}

uint64_t sub_1CA5F254C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 328) = *(v3 + 48);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA5F267C()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);
  v3 = *(v0 + 208);
  *(v0 + 336) = v3;

  v4 = [v3 value];
  v5 = [v4 value];

  sub_1CA94D258();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447110, &qword_1CA98E7A0);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 224);
    if (!sub_1CA25B410(v6))
    {
      v25 = *(v0 + 304);

LABEL_16:

      goto LABEL_17;
    }

    sub_1CA275D70(0, (v6 & 0xC000000000000001) == 0, v6);
    if ((v6 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1CCAA22D0](0, v6);
    }

    else
    {
      v7 = *(v6 + 32);
    }

    v8 = v7;
    *(v0 + 344) = v7;

    v9 = [v8 value];
    sub_1CA94D258();
    swift_unknownObjectRelease();
    sub_1CA25B3D0(0, &unk_1EDB9F6A0, 0x1E69AC7D0);
    if (swift_dynamicCast())
    {
      v10 = *(v0 + 232);
      *(v0 + 352) = v10;
      v11 = [v10 properties];
      sub_1CA25B3D0(0, &qword_1EDB9FB20, 0x1E69AC950);
      v12 = sub_1CA94C658();

      if (sub_1CA25B410(v12))
      {
        sub_1CA275D70(0, (v12 & 0xC000000000000001) == 0, v12);
        if ((v12 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x1CCAA22D0](0, v12);
        }

        else
        {
          v13 = *(v12 + 32);
        }

        v14 = v13;
        *(v0 + 360) = v13;
        v15 = *(v0 + 248);

        v16 = swift_task_alloc();
        *(v0 + 368) = v16;
        v16[2] = v14;
        v16[3] = v10;
        v16[4] = v15;
        v17 = swift_task_alloc();
        *(v0 + 376) = v17;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4477B0, &qword_1CA98E7A8);
        *v17 = v0;
        v17[1] = sub_1CA5F2A50;
        OUTLINED_FUNCTION_90();

        return MEMORY[0x1EEE6DDE0](v18, v19, v20, 0xD00000000000001BLL, v21, v22, v16, v23);
      }

      goto LABEL_16;
    }

    v26 = *(v0 + 304);
  }

  else
  {
    v24 = *(v0 + 304);
  }

LABEL_17:

  v27 = *(v0 + 8);

  return v27(0);
}

uint64_t sub_1CA5F2A50()
{
  OUTLINED_FUNCTION_0();
  v1 = *v0;
  OUTLINED_FUNCTION_13();
  *v2 = v1;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1CA5F2B84()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 352);
  v2 = *(v0 + 360);
  v4 = *(v0 + 336);
  v3 = *(v0 + 344);

  v5 = *(v0 + 240);

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_1CA5F2C54()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 320);
  v2 = *(v0 + 312);
  swift_willThrow();

  OUTLINED_FUNCTION_5();

  return v3();
}

uint64_t sub_1CA5F2D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1CA94C838();
  v3[5] = sub_1CA94C828();
  v5 = sub_1CA94C7C8();

  return MEMORY[0x1EEE6DFA0](sub_1CA5F2E30, v5, v4);
}

uint64_t sub_1CA5F2E30()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1CA5F2EE8;

  return sub_1CA5F12E4();
}

uint64_t sub_1CA5F2EE8()
{
  OUTLINED_FUNCTION_6();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  OUTLINED_FUNCTION_13();
  *v5 = v4;
  v6 = v3[4];
  v7 = v3[2];
  v8 = *v1;
  *v5 = *v1;

  v9 = v3[6];
  if (v2)
  {
    v10 = sub_1CA948AC8();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(v3[6], 0);
  }

  _Block_release(v4[6]);
  v11 = v8[1];

  return v11();
}

uint64_t sub_1CA5F30EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1CA9813B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981380;
  v2 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"Key";
  *(inited + 40) = 0x797469746E65;
  *(inited + 48) = 0xE600000000000000;
  *(inited + 64) = v2;
  *(inited + 72) = @"Class";
  type metadata accessor for SettingPickerParameter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = @"Key";
  v5 = @"Class";
  v6 = NSStringFromClass(ObjCClassFromMetadata);
  sub_1CA94C3A8();
  OUTLINED_FUNCTION_115();

  *(inited + 80) = @"Key";
  *(inited + 88) = @"Class";
  *(inited + 104) = v2;
  *(inited + 112) = @"HideClearButton";
  v7 = MEMORY[0x1E69E6370];
  *(inited + 120) = 1;
  *(inited + 144) = v7;
  *(inited + 152) = @"Placeholder";
  v8 = @"HideClearButton";
  v9 = @"Placeholder";
  sub_1CA94C438("Setting", 7);
  if (qword_1EDB9F5F0 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_1EDB9F5F0);
  }

  v10 = qword_1EDB9F690;
  v11 = sub_1CA94C368();
  v12 = sub_1CA94C368();

  v13 = [v10 localizedStringForKey:v11 value:v12 table:0];

  sub_1CA94C3A8();
  OUTLINED_FUNCTION_115();

  *(inited + 160) = v12;
  *(inited + 168) = v10;
  *(inited + 184) = v2;
  *(inited + 192) = @"DefaultValue";
  v14 = @"DefaultValue";
  v15 = sub_1CA94C218();
  v16 = sub_1CA334394(v15);

  *(inited + 224) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446580, &qword_1CA981B40);
  if (v16[2])
  {
    v18 = v16[4];
    v17 = v16[5];
    sub_1CA94C218();
  }

  else
  {
    v18 = 0;
    v17 = 0;
  }

  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  *(inited + 200) = v18;
  *(inited + 208) = v17;
  *(inited + 232) = @"DisallowedVariableTypes";
  sub_1CA25B3D0(0, &qword_1EC444F20, off_1E836E2F8);
  v19 = swift_getObjCClassFromMetadata();
  v20 = @"DisallowedVariableTypes";
  v21 = [v19 allInsertableVariableTypes];
  type metadata accessor for WFVariableType(0);
  sub_1CA5F6A78(&qword_1EC441A60, type metadata accessor for WFVariableType, &unk_1CA9804C8);
  v22 = sub_1CA94C8F8();

  sub_1CA3E4650(v22, v23, v24, v25, v26, v27, v28);
  v30 = v29;

  *(inited + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 240) = v30;
  _s3__C3KeyVMa_0(0);
  sub_1CA5F6A78(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v31 = sub_1CA94C1E8();
  *(v0 + 32) = sub_1CA2F864C(v31);
  return v0;
}

uint64_t sub_1CA5F3534()
{
  v2 = v0;
  swift_getObjectType();
  v3 = [*&v0[OBJC_IVAR____TtC11WorkflowKit21WFGetAppSettingAction_fullyQualifiedActionIdentifier] bundleIdentifier];
  sub_1CA94C3A8();
  OUTLINED_FUNCTION_20_28();

  v4 = sub_1CA566F58(v0, &off_1F4A15750, 0x797469746E65, 0xE600000000000000, v1);

  if (!v4)
  {
    v7.receiver = v2;
    v7.super_class = type metadata accessor for WFGetAppSettingAction();
    v5 = objc_msgSendSuper2(&v7, sel_outputContentClasses);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444880, &qword_1CA984340);
    v4 = sub_1CA94C658();
  }

  return v4;
}

uint64_t sub_1CA5F3638(uint64_t a1)
{
  type metadata accessor for SettingPickerParameter();
  result = swift_dynamicCastClass();
  if (result)
  {
    *(result + OBJC_IVAR____TtC11WorkflowKit22SettingPickerParameter_datasource + 8) = &off_1F4A15750;

    return swift_unknownObjectWeakAssign();
  }

  return result;
}

void sub_1CA5F36D4()
{
  OUTLINED_FUNCTION_37_0();
  v3 = v2;
  OUTLINED_FUNCTION_31();
  v4 = sub_1CA94C368();
  v5 = [v0 parameterStateForKey_];

  if (v5)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    v7 = v6;
    if (v6)
    {
      v8 = [v6 value];
      if (v8)
      {
        v9 = v8;
        sub_1CA94C398();

        v1 = 0;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v7 = 0;
  }

  v10 = sub_1CA94C438("Setting", 7);
  v12 = v11;
  sub_1CA94C438("Setting", 7);
  OUTLINED_FUNCTION_115();
  v13 = sub_1CA948E58();
  v14 = OUTLINED_FUNCTION_18_0(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6_0();
  v17 = v16 - v15;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_1EDB9F5F0);
  }

  v18 = [qword_1EDB9F690 bundleURL];
  v19 = sub_1CA948BA8();
  v20 = OUTLINED_FUNCTION_18_0(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_6_0();
  v23 = v22 - v21;
  sub_1CA948B68();

  v24 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v25 = sub_1CA2F9F14(v10, v12, "Setting", v1, 0, 0, v17, v23);
  v26 = [v3 localize_];

  sub_1CA94C3A8();
  OUTLINED_FUNCTION_184();

  OUTLINED_FUNCTION_36();
}

void sub_1CA5F3990()
{
  OUTLINED_FUNCTION_37_0();
  v1 = *(v0 + OBJC_IVAR____TtC11WorkflowKit21WFGetAppSettingAction_fullyQualifiedActionIdentifier);
  v2 = [v1 bundleIdentifier];
  v3 = sub_1CA94C3A8();
  v5 = v4;

  v6 = sub_1CA94C3A8();
  v8 = v7;
  if (v3 == v6 && v5 == v7)
  {
  }

  else
  {
    v10 = sub_1CA94D7F8();

    if ((v10 & 1) == 0)
    {
      if (qword_1EDB9F960 != -1)
      {
        OUTLINED_FUNCTION_13_27(&qword_1EDB9F960);
      }

      v11 = [v1 bundleIdentifier];
      sub_1CA94C3A8();
      OUTLINED_FUNCTION_20_28();

      v12 = sub_1CA2786EC(v8, v10);
      v14 = v13;

      if (v14)
      {
        v37 = v12;
        sub_1CA94C438("Get %@ Settings", 15);
        sub_1CA94C438("Get %@ Settings", 15, v15);
        OUTLINED_FUNCTION_194();
        v16 = sub_1CA948E58();
        v17 = OUTLINED_FUNCTION_18_0(v16);
        MEMORY[0x1EEE9AC00](v17);
        OUTLINED_FUNCTION_1_40();
        sub_1CA948D98();
        if (qword_1EDB9F5F0 != -1)
        {
          OUTLINED_FUNCTION_0_3(&qword_1EDB9F5F0);
        }

        v18 = [qword_1EDB9F690 bundleURL];
        v19 = sub_1CA948BA8();
        v20 = OUTLINED_FUNCTION_18_0(v19);
        MEMORY[0x1EEE9AC00](v20);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_31_9();

        v21 = objc_allocWithZone(MEMORY[0x1E696B100]);
        v22 = OUTLINED_FUNCTION_14_23();
        v23 = OUTLINED_FUNCTION_50_6();
        v25 = [v23 v24];

        sub_1CA94C3A8();
        OUTLINED_FUNCTION_184();

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446870, &qword_1CA982240);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_1CA981310;
        *(v26 + 56) = MEMORY[0x1E69E6158];
        *(v26 + 64) = sub_1CA282DB4();
        *(v26 + 32) = v37;
        *(v26 + 40) = v14;
        sub_1CA94C3C8();

        goto LABEL_16;
      }
    }
  }

  sub_1CA94C438("Get Setting", 11);
  OUTLINED_FUNCTION_1_2();
  sub_1CA94C438("Get Setting", 11);
  OUTLINED_FUNCTION_20_28();
  v27 = sub_1CA948E58();
  v28 = OUTLINED_FUNCTION_18_0(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_20_21();
  if (qword_1EDB9F5F0 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_1EDB9F5F0);
  }

  v29 = [qword_1EDB9F690 bundleURL];
  v30 = sub_1CA948BA8();
  v31 = OUTLINED_FUNCTION_18_0(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_1_40();
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v33 = OUTLINED_FUNCTION_9_1();
  v34 = OUTLINED_FUNCTION_50_6();
  v36 = [v34 v35];

  sub_1CA94C3A8();
LABEL_16:
  OUTLINED_FUNCTION_36();
}

id sub_1CA5F3E30(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = a3;
  v7 = a1;
  sub_1CA5F5CAC();
  v9 = v8;
  v11 = v10;

  if (v11)
  {
    sub_1CA94C368();
    OUTLINED_FUNCTION_87();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_1CA5F3EC4()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  if (qword_1EDB9F960 != -1)
  {
    OUTLINED_FUNCTION_13_27(&qword_1EDB9F960);
  }

  v3 = [*(v0 + OBJC_IVAR____TtC11WorkflowKit21WFGetAppSettingAction_fullyQualifiedActionIdentifier) bundleIdentifier];
  v4 = sub_1CA94C3A8();
  v6 = v5;

  v7 = sub_1CA2786EC(v4, v6);
  v9 = v8;

  if (v9)
  {
    sub_1CA94C438("Gets the current state of the selected %@ setting.", 50);
    sub_1CA94C438("Gets the current state of the selected %@ setting.", 50, v10);
    OUTLINED_FUNCTION_194();
    v11 = sub_1CA948E58();
    v12 = OUTLINED_FUNCTION_18_0(v11);
    MEMORY[0x1EEE9AC00](v12);
    OUTLINED_FUNCTION_1_40();
    sub_1CA948D98();
    if (qword_1EDB9F5F0 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_1EDB9F5F0);
    }

    v13 = [qword_1EDB9F690 bundleURL];
    v14 = sub_1CA948BA8();
    v15 = OUTLINED_FUNCTION_18_0(v14);
    MEMORY[0x1EEE9AC00](v15);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_31_9();

    v16 = objc_allocWithZone(MEMORY[0x1E696B100]);
    v17 = OUTLINED_FUNCTION_14_23();
    v18 = [v2 localize_];

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_184();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446870, &qword_1CA982240);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1CA981310;
    *(v19 + 56) = MEMORY[0x1E69E6158];
    *(v19 + 64) = sub_1CA282DB4();
    *(v19 + 32) = v7;
    *(v19 + 40) = v9;
    sub_1CA94C3C8();
  }

  OUTLINED_FUNCTION_36();
}

id sub_1CA5F4140(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(id))
{
  v6 = a3;
  v7 = a1;
  v8 = a4(v6);
  v10 = v9;

  if (v10)
  {
    sub_1CA94C368();
    OUTLINED_FUNCTION_87();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_1CA5F41D0()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v35 = MEMORY[0x1E69E7CD0];
  v3 = *(v0 + OBJC_IVAR____TtC11WorkflowKit21WFGetAppSettingAction_entityByEntityIdentifier);
  v4 = sub_1CA94C218();
  v5 = sub_1CA334394(v4);

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v8 = v5 + 40;
  v9 = *(v5 + 16);
LABEL_2:
  for (i = (v8 + 16 * v6); ; i += 2)
  {
    if (v9 == v6)
    {

      sub_1CA342798(v7);
      sub_1CA438D04(v35);
      OUTLINED_FUNCTION_36();
      return;
    }

    if (v6 >= *(v5 + 16))
    {
      break;
    }

    if (*(v3 + 16))
    {
      v11 = *(i - 1);
      v12 = *i;
      sub_1CA94C218();
      v13 = sub_1CA271BF8(v11, v12);
      if (v14)
      {
        v33 = v8;
        v15 = [*(*(v3 + 56) + 8 * v13) displayRepresentation];
        v32 = [v15 name];

        v34 = v2;
        v16 = [v2 locale];
        v31[0] = sub_1CA948E58();
        v31[1] = v31;
        v17 = *(v31[0] - 8);
        MEMORY[0x1EEE9AC00](v31[0]);
        OUTLINED_FUNCTION_6_0();
        v20 = v19 - v18;
        sub_1CA948DA8();

        sub_1CA948D48();
        (*(v17 + 8))(v20, v31[0]);
        v21 = sub_1CA94C368();

        v22 = v32;
        v23 = [v32 localizedStringForLocaleIdentifier_];

        v24 = sub_1CA94C3A8();
        v26 = v25;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1CA26DADC();
          v7 = v29;
        }

        v27 = *(v7 + 16);
        v2 = v34;
        if (v27 >= *(v7 + 24) >> 1)
        {
          sub_1CA26DADC();
          v7 = v30;
        }

        ++v6;
        *(v7 + 16) = v27 + 1;
        v28 = v7 + 16 * v27;
        *(v28 + 32) = v24;
        *(v28 + 40) = v26;
        v8 = v33;
        goto LABEL_2;
      }
    }

    ++v6;
  }

  __break(1u);
}

id sub_1CA5F4570()
{
  sub_1CA94C438("Get ${entity}", 13);
  v1 = v0;
  sub_1CA94C438("Get ${entity}", 13);
  if (qword_1EDB9F5F0 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_1EDB9F5F0);
  }

  v2 = qword_1EDB9F690;
  v3 = sub_1CA94C368();

  OUTLINED_FUNCTION_116();
  sub_1CA94C368();
  OUTLINED_FUNCTION_87();

  v4 = [v2 localizedStringForKey:v3 value:v1 table:0];

  sub_1CA94C3A8();
  OUTLINED_FUNCTION_1_2();

  sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  OUTLINED_FUNCTION_52_0();
  return sub_1CA43AE20();
}

uint64_t sub_1CA5F4684(uint64_t a1)
{
  if (a1 == 1)
  {
    return 0;
  }

  else
  {
    if (!a1)
    {
      v3 = *(v1 + OBJC_IVAR____TtC11WorkflowKit21WFGetAppSettingAction_entityByEntityIdentifier);
      OUTLINED_FUNCTION_5_5();
      v6 = v5 & v4;
      v8 = (v7 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v9 = 0;
      while (v6)
      {
        v10 = v9;
LABEL_11:
        v11 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        if (([*(*(v3 + 56) + ((v10 << 9) | (8 * v11))) visibleForUse_] & 1) == 0)
        {
          v2 = 0;
LABEL_14:

          return v2;
        }
      }

      while (1)
      {
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v10 >= v8)
        {
          v2 = 1;
          goto LABEL_14;
        }

        v6 = *(v3 + 64 + 8 * v10);
        ++v9;
        if (v6)
        {
          v9 = v10;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    result = sub_1CA94D5F8();
    __break(1u);
  }

  return result;
}

void sub_1CA5F4844()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WorkflowKit21WFGetAppSettingAction_entityByEntityIdentifier) + 64;
  OUTLINED_FUNCTION_5_5();
  v4 = v3 & v2;
  v20 = OBJC_IVAR____TtC11WorkflowKit21WFGetAppSettingAction_fullyQualifiedActionIdentifier;
  v21 = v0;
  v6 = (v5 + 63) >> 6;
  v22 = v7;
  swift_bridgeObjectRetain_n();
  v8 = 0;
  while (v4)
  {
    v9 = v8;
LABEL_8:
    v10 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v11 = *(*(v22 + 56) + ((v9 << 9) | (8 * v10)));
    v12 = [v11 identifier];
    sub_1CA94C3A8();
    OUTLINED_FUNCTION_115();

    v13 = [*(v21 + v20) bundleIdentifier];
    v14 = sub_1CA94C3A8();

    v15 = objc_allocWithZone(MEMORY[0x1E69AC860]);
    v16 = OUTLINED_FUNCTION_70();
    v18 = sub_1CA334F5C(v16, v17, v14);
    v19 = [objc_opt_self() approvedForPublicDrawerToDisplayActionIdentifier_];

    if ((v19 & 1) == 0)
    {
LABEL_9:

      return;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
      goto LABEL_9;
    }

    v4 = *(v1 + 8 * v9);
    ++v8;
    if (v4)
    {
      v8 = v9;
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_1CA5F49F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1CA981310;
  v2 = [*(v0 + OBJC_IVAR____TtC11WorkflowKit21WFGetAppSettingAction_fullyQualifiedActionIdentifier) actionIdentifier];
  v3 = sub_1CA94C3A8();
  v5 = v4;

  *(v1 + 32) = v3;
  *(v1 + 40) = v5;
  return v1;
}

void *sub_1CA5F4AE0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC11WorkflowKit21WFGetAppSettingAction_entityByEntityIdentifier);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = sub_1CA271BF8(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(v3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_1CA5F4BA4()
{
  OUTLINED_FUNCTION_0();
  v1[4] = v0;
  v1[5] = swift_getObjectType();
  v1[6] = sub_1CA94C838();
  v1[7] = sub_1CA94C828();
  OUTLINED_FUNCTION_87();
  v3 = sub_1CA94C7C8();
  v1[8] = v3;
  v1[9] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1CA5F4C44, v3, v2);
}

uint64_t sub_1CA5F4C44()
{
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_31();
  v2 = sub_1CA94C368();
  v3 = [v1 parameterForKey_];
  *(v0 + 80) = v3;

  if (v3)
  {
    v4 = [*(v0 + 32) workQueue];
    *(v0 + 88) = v4;
    if (v4)
    {
      v5 = v4;
      v6 = *(v0 + 40);
      v7 = *(v0 + 32);
      *(v0 + 96) = sub_1CA94C828();
      v8 = swift_task_alloc();
      *(v0 + 104) = v8;
      v8[2] = v7;
      v8[3] = v3;
      v8[4] = v5;
      v8[5] = v6;
      v9 = swift_task_alloc();
      *(v0 + 112) = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446580, &qword_1CA981B40);
      *v9 = v0;
      v9[1] = sub_1CA5F4E34;

      return MEMORY[0x1EEE6DE38](v0 + 16);
    }
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10(0, 0);
}

uint64_t sub_1CA5F4E34()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13();
  *v6 = v5;
  v3[15] = v0;

  if (v0)
  {
    v7 = v3[8];
    v8 = v3[9];
    v9 = sub_1CA5F4FB8;
  }

  else
  {

    v7 = v3[8];
    v8 = v3[9];
    v9 = sub_1CA5F4F44;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1CA5F4F44()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 88);

  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 8);

  return v4(v2, v3);
}

uint64_t sub_1CA5F4FB8()
{
  OUTLINED_FUNCTION_14();
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);

  OUTLINED_FUNCTION_5();

  return v3();
}

unint64_t sub_1CA5F503C()
{
  result = qword_1EC447078;
  if (!qword_1EC447078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447078);
  }

  return result;
}

void sub_1CA5F5090(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v22 = a5;
  v23 = a2;
  v24 = a4;
  v21 = a1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4467F8, &qword_1CA98BEA8);
  v6 = *(v20 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v9 = &v19 - v8;
  v26 = sub_1CA25B3D0(0, &qword_1EC441AA0, off_1E836EDB8);
  aBlock[0] = a3;
  v10 = objc_allocWithZone(MEMORY[0x1E695DFB8]);
  v11 = a3;
  v12 = sub_1CA62E034(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446010, &unk_1CA987B90);
  sub_1CA94C1E8();
  v13 = sub_1CA94C1A8();

  sub_1CA25B3D0(0, &unk_1EC447130, off_1E836EDC8);
  sub_1CA94C1E8();
  v14 = sub_1CA94C1A8();

  v15 = v20;
  (*(v6 + 16))(v9, v21, v20);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  (*(v6 + 32))(v17 + v16, v9, v15);
  *(v17 + ((v7 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v22;
  v27 = sub_1CA5F6B80;
  v28 = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CA6280B0;
  v26 = &block_descriptor_37;
  v18 = _Block_copy(aBlock);

  [v23 askForValuesOfParameters:v12 withDefaultStates:v13 prompts:v14 input:0 workQueue:v24 completionHandler:v18];
  _Block_release(v18);
}

uint64_t sub_1CA5F5378(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1CA949F78();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_1CA311C0C(0x797469746E65, 0xE600000000000000, a1, &v18);
    if (v19)
    {
      v9 = swift_dynamicCast();
      v10 = v17[0];
      v11 = v17[1];
      if (!v9)
      {
        v10 = 0;
        v11 = 0;
      }
    }

    else
    {
      sub_1CA2C0A74(&v18);
      v10 = 0;
      v11 = 0;
    }

    *&v18 = v10;
    *(&v18 + 1) = v11;
  }

  else
  {
    if (a3)
    {
      *&v18 = a3;
      v12 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4467F8, &qword_1CA98BEA8);
      return sub_1CA94C7D8();
    }

    sub_1CA949C58();
    v14 = sub_1CA949F68();
    v15 = sub_1CA94CC18();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1CA256000, v14, v15, "askForValues failed with no error", v16, 2u);
      MEMORY[0x1CCAA4BF0](v16, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    v18 = 0uLL;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4467F8, &qword_1CA98BEA8);
  return sub_1CA94C7E8();
}

id WFGetAppSettingAction.__allocating_init(identifier:definition:serializedParameters:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_1CA94C368();

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
    v9 = sub_1CA94C1A8();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithIdentifier:v8 definition:a3 serializedParameters:v9];

  return v10;
}

id WFGetAppSettingAction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1CA5F57EC(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = v12;
  swift_getObjectType();
  v18 = [v12 identifier];
  sub_1CA94C3A8();
  OUTLINED_FUNCTION_194();

  v19 = [v16 definition];
  if (!v19)
  {
    sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
    type metadata accessor for Key(0);
    sub_1CA5F6A78(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
    sub_1CA94C1E8();
    v19 = sub_1CA332510();
  }

  v20 = *&v16[OBJC_IVAR____TtC11WorkflowKit21WFGetAppSettingAction_entityByEntityIdentifier];
  v21 = *&v16[OBJC_IVAR____TtC11WorkflowKit21WFGetAppSettingAction_fullyQualifiedActionIdentifier];
  objc_allocWithZone(a2());
  sub_1CA94C218();
  sub_1CA94C218();
  v22 = sub_1CA5F0878(v13, v14, v19, v20, a1, v21);
  if (v22)
  {
    OUTLINED_FUNCTION_4_0();
    v26 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6BE00](v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t sub_1CA5F5998(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
    sub_1CA94C1C8();
  }

  v4 = a1;
  v5 = OUTLINED_FUNCTION_116();
  v13 = sub_1CA5F57EC(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16, v17, v18);

  return v13;
}

void sub_1CA5F5AD4()
{
  OUTLINED_FUNCTION_37_0();
  sub_1CA94C438("Get Accessibility Setting", 25);
  OUTLINED_FUNCTION_1_2();
  sub_1CA94C438("Get Accessibility Setting", 25);
  OUTLINED_FUNCTION_20_28();
  v0 = sub_1CA948E58();
  v1 = OUTLINED_FUNCTION_18_0(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_20_21();
  if (qword_1EDB9F5F0 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_1EDB9F5F0);
  }

  v2 = [qword_1EDB9F690 bundleURL];
  v3 = sub_1CA948BA8();
  v4 = OUTLINED_FUNCTION_18_0(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_40();
  sub_1CA948B68();

  v5 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v6 = OUTLINED_FUNCTION_9_1();
  v7 = OUTLINED_FUNCTION_50_6();
  v9 = [v7 v8];

  sub_1CA94C3A8();
  OUTLINED_FUNCTION_1_2();

  OUTLINED_FUNCTION_52_0();
  OUTLINED_FUNCTION_36();
}

void sub_1CA5F5CAC()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  sub_1CA94C438(v2, v0);
  OUTLINED_FUNCTION_1_2();
  sub_1CA94C438(v3, v1);
  OUTLINED_FUNCTION_20_28();
  v4 = sub_1CA948E58();
  v5 = OUTLINED_FUNCTION_18_0(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_20_21();
  if (qword_1EDB9F5F0 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_1EDB9F5F0);
  }

  v6 = [qword_1EDB9F690 bundleURL];
  v7 = sub_1CA948BA8();
  v8 = OUTLINED_FUNCTION_18_0(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_40();
  sub_1CA948B68();

  v9 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v10 = OUTLINED_FUNCTION_9_1();
  v11 = OUTLINED_FUNCTION_50_6();
  v13 = [v11 v12];

  sub_1CA94C3A8();
  OUTLINED_FUNCTION_1_2();

  OUTLINED_FUNCTION_52_0();
  OUTLINED_FUNCTION_36();
}

uint64_t sub_1CA5F5E34(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t (*a8)(uint64_t, uint64_t, void *, uint64_t, uint64_t, void *))
{
  sub_1CA94C3A8();
  OUTLINED_FUNCTION_20_28();
  sub_1CA25B3D0(0, &unk_1EC441A38, 0x1E69AC800);
  v14 = sub_1CA94C1C8();
  if (a6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
    a6 = sub_1CA94C1C8();
  }

  return a8(v8, v9, a4, v14, a6, a7);
}

id sub_1CA5F5F40(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1CA5F5F78(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447120, &unk_1CA98E7B0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = aBlock - v10;
  (*(v9 + 16))(aBlock - v10, a1, v8);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  (*(v9 + 32))(v13 + v12, v11, v8);
  aBlock[4] = sub_1CA5F6AE4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CA628188;
  aBlock[3] = &block_descriptor_29;
  v14 = _Block_copy(aBlock);

  [a2 wf:a3 getValueForEntity:a4 entityMetadata:v14 completionHandler:?];
  _Block_release(v14);
}

uint64_t sub_1CA5F6140(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447120, &unk_1CA98E7B0);
  return sub_1CA94C7E8();
}

void sub_1CA5F6470(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v26 = *(a1 + 16);
  for (i = (a1 + 56); ; i += 4)
  {
    if (v26 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1CA94D878();
      __break(1u);
      goto LABEL_22;
    }

    v28 = v4;
    v7 = *(i - 3);
    v6 = *(i - 2);
    v9 = *(i - 1);
    v8 = *i;
    v10 = *a3;
    sub_1CA94C218();
    sub_1CA94C218();
    v12 = sub_1CA271BF8(v7, v6);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_19;
    }

    v15 = v11;
    if (v10[3] < v13 + v14)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447140, &qword_1CA987A38);
      sub_1CA94D598();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v18 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v19 = (v18[6] + 16 * v12);
    *v19 = v7;
    v19[1] = v6;
    v20 = (v18[7] + 16 * v12);
    *v20 = v9;
    v20[1] = v8;
    v21 = v18[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_20;
    }

    v18[2] = v23;
    v4 = v28 + 1;
    a2 = 1;
  }

  sub_1CA5C35E8();
  v16 = sub_1CA271BF8(v7, v6);
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_21;
  }

  v12 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v24 = swift_allocError();
  swift_willThrow();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443898, &unk_1CA9855B0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_1CA94D408();
  MEMORY[0x1CCAA1300](0xD00000000000001BLL, 0x80000001CA9D42B0);
  sub_1CA94D578();
  MEMORY[0x1CCAA1300](39, 0xE100000000000000);
  sub_1CA94D5F8();
  __break(1u);
}

uint64_t sub_1CA5F6764(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (v2)
  {
    sub_1CA94C3A8();
    OUTLINED_FUNCTION_1_2();
  }

  return OUTLINED_FUNCTION_52_0();
}

uint64_t sub_1CA5F68A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CA5F68F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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

uint64_t sub_1CA5F6948(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1CA5F6974()
{
  result = qword_1EC4470F8;
  if (!qword_1EC4470F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4470F8);
  }

  return result;
}

uint64_t sub_1CA5F69C8()
{
  OUTLINED_FUNCTION_14();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1CA2DF78C;

  return sub_1CA5F2D94(v2, v3, v4);
}

uint64_t sub_1CA5F6A78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CA5F6AE4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447120, &unk_1CA98E7B0);
  OUTLINED_FUNCTION_18_0(v2);

  return sub_1CA5F6140(a1);
}

uint64_t sub_1CA5F6B80(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4467F8, &qword_1CA98BEA8);
  OUTLINED_FUNCTION_12(v6);

  return sub_1CA5F5378(a1, a2, a3);
}

id sub_1CA5F6C84()
{
  v161 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981550;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000014;
  *(inited + 48) = 0x80000001CA9CA810;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("jxa|apple|script|applescript|event|OSA", 38);
  v6 = v5;
  v7 = sub_1CA94C438("jxa|apple|script|applescript|event|OSA", 38);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v169 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v170 = v11;
  v12 = v153 - v169;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v168 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v171 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v166 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = v153 - v166;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v167 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  *&v165 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  v164 = xmmword_1CA9813C0;
  *(v23 + 16) = xmmword_1CA9813C0;
  *(v23 + 32) = @"DescriptionInput";
  v24 = @"Description";
  v25 = @"DescriptionInput";
  v159 = v27;
  v160 = v26;
  v30 = v29;
  v163 = v153;
  MEMORY[0x1EEE9AC00](v28);
  v31 = v153 - v169;
  sub_1CA948D98();
  v32 = [v168 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = v153 - v166;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v23 + 40) = sub_1CA2F9F14(v160, v159, v28, v30, 0, 0, v31, v33);
  *(v23 + 64) = v167;
  *(v23 + 72) = @"DescriptionResult";
  v35 = @"DescriptionResult";
  v36 = sub_1CA94C438("The output from the script", 26);
  v159 = v37;
  v160 = v36;
  v158 = sub_1CA94C438("The output from the script", 26);
  v39 = v38;
  v163 = v153;
  MEMORY[0x1EEE9AC00](v158);
  v40 = v169;
  sub_1CA948D98();
  v41 = [v168 bundleURL];
  MEMORY[0x1EEE9AC00](v41);
  v42 = v166;
  sub_1CA948B68();

  v43 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v23 + 80) = sub_1CA2F9F14(v160, v159, v158, v39, 0, 0, v153 - v40, v153 - v42);
  *(v23 + 104) = v167;
  *(v23 + 112) = @"DescriptionSummary";
  v44 = @"DescriptionSummary";
  v45 = sub_1CA94C438("This action executes a JavaScript for Automation (JXA) script.", 62);
  v159 = v46;
  v160 = v45;
  v47 = sub_1CA94C438("This action executes a JavaScript for Automation (JXA) script.", 62);
  v49 = v48;
  v163 = v153;
  MEMORY[0x1EEE9AC00](v47);
  sub_1CA948D98();
  v50 = [v168 bundleURL];
  MEMORY[0x1EEE9AC00](v50);
  sub_1CA948B68();

  v51 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v52 = sub_1CA2F9F14(v160, v159, v47, v49, 0, 0, v153 - v40, v153 - v42);
  *(v23 + 144) = v167;
  *(v23 + 120) = v52;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v53 = sub_1CA94C1E8();
  v54 = v165;
  *(inited + 160) = sub_1CA6B3784(v53);
  *(inited + 184) = v54;
  *(inited + 192) = @"DisabledOnPlatforms";
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 224) = v55;
  v56 = v55;
  v163 = v55;
  *(inited + 200) = &unk_1F4A08ED8;
  v57 = @"DisabledOnPlatforms";
  *(inited + 232) = sub_1CA94C368();
  v58 = MEMORY[0x1E69E6370];
  *(inited + 240) = 1;
  *(inited + 264) = v58;
  *(inited + 272) = @"Input";
  v59 = v58;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v60 = swift_initStackObject();
  v165 = xmmword_1CA981350;
  *(v60 + 16) = xmmword_1CA981350;
  *(v60 + 32) = 0x656C7069746C754DLL;
  *(v60 + 40) = 0xE800000000000000;
  *(v60 + 48) = 1;
  *(v60 + 72) = v59;
  strcpy((v60 + 80), "ParameterKey");
  *(v60 + 93) = 0;
  *(v60 + 94) = -5120;
  *(v60 + 96) = 0x7475706E49;
  *(v60 + 104) = 0xE500000000000000;
  *(v60 + 120) = MEMORY[0x1E69E6158];
  *(v60 + 128) = 0x6465726975716552;
  *(v60 + 136) = 0xE800000000000000;
  *(v60 + 144) = 0;
  *(v60 + 168) = v59;
  *(v60 + 176) = 0x7365707954;
  *(v60 + 216) = v56;
  *(v60 + 184) = 0xE500000000000000;
  *(v60 + 192) = &unk_1F4A08F08;
  v61 = @"Input";
  v62 = sub_1CA94C1E8();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v160 = v63;
  *(inited + 280) = v62;
  *(inited + 304) = v63;
  *(inited + 312) = @"InputPassthrough";
  *(inited + 320) = 0;
  *(inited + 344) = v59;
  *(inited + 352) = @"Name";
  v64 = @"InputPassthrough";
  v65 = @"Name";
  v66 = sub_1CA94C438("Run JavaScript for Mac Automation (Action Name)", 47);
  v156 = v67;
  v157 = v66;
  v68 = sub_1CA94C438("Run JavaScript for Mac Automation", 33);
  v155 = v69;
  v158 = v153;
  MEMORY[0x1EEE9AC00](v68);
  v70 = v153 - v169;
  sub_1CA948D98();
  v71 = v168;
  v72 = [v168 bundleURL];
  MEMORY[0x1EEE9AC00](v72);
  v73 = v166;
  sub_1CA948B68();

  v74 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 360) = sub_1CA2F9F14(v157, v156, v68, v155, 0, 0, v70, v153 - v73);
  v75 = v167;
  *(inited + 384) = v167;
  *(inited + 392) = @"Output";
  v76 = swift_allocObject();
  *(v76 + 16) = v164;
  *(v76 + 32) = 0x656C7069746C754DLL;
  *(v76 + 40) = 0xE800000000000000;
  *(v76 + 48) = 1;
  *(v76 + 72) = MEMORY[0x1E69E6370];
  *(v76 + 80) = 0x614E74757074754FLL;
  *(v76 + 88) = 0xEA0000000000656DLL;
  v77 = @"Output";
  v78 = sub_1CA94C438("JavaScript Result (Default Output Name)", 39);
  v158 = v79;
  v159 = v78;
  v80 = sub_1CA94C438("JavaScript Result", 17);
  v157 = v81;
  *&v164 = v153;
  MEMORY[0x1EEE9AC00](v80);
  v82 = v153 - v169;
  sub_1CA948D98();
  v83 = [v71 bundleURL];
  MEMORY[0x1EEE9AC00](v83);
  sub_1CA948B68();

  v84 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v76 + 96) = sub_1CA2F9F14(v159, v158, v80, v157, 0, 0, v82, v153 - v73);
  *(v76 + 120) = v75;
  *(v76 + 128) = 0x7365707954;
  *(v76 + 168) = v163;
  *(v76 + 136) = 0xE500000000000000;
  *(v76 + 144) = &unk_1F4A08F38;
  v85 = MEMORY[0x1E69E6158];
  *(inited + 400) = sub_1CA94C1E8();
  *(inited + 424) = v160;
  *(inited + 432) = @"ParameterCollapsingBehavior";
  *(inited + 440) = 0x726576654ELL;
  *(inited + 448) = 0xE500000000000000;
  *(inited + 464) = v85;
  *(inited + 472) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  *&v164 = swift_allocObject();
  *(v164 + 16) = xmmword_1CA981360;
  v163 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v86 = swift_allocObject();
  *(v86 + 16) = v165;
  *(v86 + 32) = @"Class";
  *(v86 + 40) = 0xD000000000000019;
  *(v86 + 48) = 0x80000001CA99B030;
  *(v86 + 64) = v85;
  *(v86 + 72) = @"Key";
  *(v86 + 80) = 0x7475706E49;
  *(v86 + 88) = 0xE500000000000000;
  *(v86 + 104) = v85;
  *(v86 + 112) = @"Label";
  v87 = @"Class";
  v88 = @"Key";
  v158 = v87;
  v160 = v88;
  v89 = @"ParameterCollapsingBehavior";
  v90 = @"Parameters";
  v91 = @"Label";
  v92 = sub_1CA94C438("Input (Input)", 13);
  v155 = v93;
  v156 = v92;
  v154 = sub_1CA94C438("Input", 5);
  v95 = v94;
  v157 = v153;
  MEMORY[0x1EEE9AC00](v154);
  v162 = inited;
  v96 = v169;
  sub_1CA948D98();
  v97 = v168;
  v98 = [v168 bundleURL];
  v153[1] = v153;
  MEMORY[0x1EEE9AC00](v98);
  v99 = v166;
  sub_1CA948B68();

  v100 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v86 + 120) = sub_1CA2F9F14(v156, v155, v154, v95, 0, 0, v153 - v96, v153 - v99);
  v101 = v167;
  *(v86 + 144) = v167;
  *(v86 + 152) = @"Placeholder";
  v102 = @"Placeholder";
  v103 = sub_1CA94C438("Input (Input)", 13);
  v155 = v104;
  v156 = v103;
  v105 = sub_1CA94C438("Input", 5);
  v107 = v106;
  v157 = v153;
  MEMORY[0x1EEE9AC00](v105);
  sub_1CA948D98();
  v108 = [v97 bundleURL];
  MEMORY[0x1EEE9AC00](v108);
  sub_1CA948B68();

  v109 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v110 = sub_1CA2F9F14(v156, v155, v105, v107, 0, 0, v153 - v96, v153 - v99);
  *(v86 + 184) = v101;
  *(v86 + 160) = v110;
  _s3__C3KeyVMa_0(0);
  v157 = v111;
  v156 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v112 = sub_1CA94C1E8();
  v113 = sub_1CA2F864C(v112);
  *(v164 + 32) = v113;
  v114 = swift_allocObject();
  *(v114 + 16) = v165;
  *(v114 + 32) = v158;
  *(v114 + 40) = 0xD00000000000001ALL;
  *(v114 + 48) = 0x80000001CA9CA970;
  *(v114 + 64) = MEMORY[0x1E69E6158];
  *(v114 + 72) = @"DefaultValue";
  v115 = @"DefaultValue";
  v116 = sub_1CA94C438("function run(input, parameters) {\n    // Your script goes here\n    return input;\n}", 82);
  v159 = v117;
  v118 = sub_1CA94C438("function run(input, parameters) {\n    // Your script goes here\n    return input;\n}", 82);
  v120 = v119;
  *&v165 = v153;
  MEMORY[0x1EEE9AC00](v118);
  v121 = v153 - v169;
  sub_1CA948D98();
  v122 = [v168 bundleURL];
  MEMORY[0x1EEE9AC00](v122);
  v123 = v166;
  sub_1CA948B68();

  v124 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v114 + 80) = sub_1CA2F9F14(v116, v159, v118, v120, 0, 0, v121, v153 - v123);
  v125 = v160;
  *(v114 + 104) = v167;
  *(v114 + 112) = v125;
  v126 = MEMORY[0x1E69E6158];
  *(v114 + 144) = MEMORY[0x1E69E6158];
  *(v114 + 120) = 0x747069726353;
  *(v114 + 128) = 0xE600000000000000;
  v127 = sub_1CA94C368();
  *(v114 + 184) = v126;
  *(v114 + 152) = v127;
  *(v114 + 160) = 0x697263536176614ALL;
  *(v114 + 168) = 0xEA00000000007470;
  v128 = sub_1CA94C1E8();
  v129 = sub_1CA2F864C(v128);
  v130 = v164;
  *(v164 + 40) = v129;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v132 = v162;
  v162[60] = v130;
  v132[63] = v131;
  v132[64] = @"ParameterSummary";
  v133 = @"ParameterSummary";
  v134 = sub_1CA94C438("Run JavaScript for Automation with ${Input} (Parameter Summary)", 63);
  v136 = v135;
  v137 = sub_1CA94C438("Run JavaScript for Automation with ${Input}", 43);
  v139 = v138;
  v167 = v153;
  MEMORY[0x1EEE9AC00](v137);
  v140 = v153 - v169;
  sub_1CA948D98();
  v141 = [v168 bundleURL];
  MEMORY[0x1EEE9AC00](v141);
  sub_1CA948B68();

  v142 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v143 = sub_1CA2F9F14(v134, v136, v137, v139, 0, 0, v140, v153 - v123);
  v144 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v145 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v146 = v162;
  v162[68] = v145;
  v146[65] = v144;
  v146[69] = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v147 = swift_allocObject();
  *(v147 + 16) = xmmword_1CA97EDF0;
  v172 = 2;
  v173 = 0;
  v148 = type metadata accessor for WFDeviceIdiomResource();
  v149 = objc_allocWithZone(v148);
  v150 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v172);
  *(v147 + 32) = v151;
  *(v147 + 88) = MEMORY[0x1E69E6158];
  *(v147 + 56) = v148;
  *(v147 + 64) = 0xD000000000000019;
  *(v147 + 72) = 0x80000001CA994500;
  v146[73] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  v146[70] = v147;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

void sub_1CA5F8044(uint64_t a1, uint64_t a2)
{
  v10 = a2;
  v3 = sub_1CA25B410(a1);
  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {
LABEL_11:

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1CCAA22D0](v4, a1);
      goto LABEL_6;
    }

    if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v5 = *(a1 + 8 * v4 + 32);
LABEL_6:
    v6 = v5;
    v11 = v5;
    MEMORY[0x1EEE9AC00](v5);
    v9[2] = &v11;
    v7 = sub_1CA2BFDC4(sub_1CA5FBA90, v9, v10);

    if (v7)
    {
      goto LABEL_11;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

id AppShortcutDataSource.__allocating_init(appShortcutsProvider:denyListEnvironment:organizationStyle:)()
{
  v1 = objc_allocWithZone(v0);
  swift_getObjectType();
  v2 = OUTLINED_FUNCTION_9_32();

  return sub_1CA5FB11C(v2, v3, v4, v5);
}

unint64_t AppShortcutDataSource.OrganizationStyle.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1CA5F8444@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = AppShortcutDataSource.OrganizationStyle.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t AppShortcutDataSource.Error.hashValue.getter()
{
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](0);
  return sub_1CA94D968();
}

uint64_t sub_1CA5F851C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CA278F60();
  *a1 = result;
  return result;
}

uint64_t sub_1CA5F8574(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446B70, &unk_1CA98CC40);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - v3;
  (*(v5 + 16))(&v7 - v3, a1);
  return sub_1CA5F86BC(v4);
}

uint64_t sub_1CA5F8648()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446348, qword_1CA98AFE0);
  sub_1CA94A078();
  return swift_endAccess();
}

uint64_t sub_1CA5F86BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446B70, &unk_1CA98CC40);
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  (*(v4 + 16))(&v8 - v6, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446348, qword_1CA98AFE0);
  sub_1CA94A088();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

id sub_1CA5F87E8()
{
  v0 = [objc_opt_self() standardUserDefaults];
  OUTLINED_FUNCTION_55();
  v1 = sub_1CA94C368();
  v2 = [v0 BOOLForKey_];

  return v2;
}

id AppShortcutDataSource.init(appShortcutsProvider:denyListEnvironment:organizationStyle:)()
{
  swift_getObjectType();
  v0 = OUTLINED_FUNCTION_9_32();

  return sub_1CA5FB11C(v0, v1, v2, v3);
}

uint64_t sub_1CA5F8928(uint64_t a1, uint64_t a2)
{
  v44 = a1;
  v48 = *MEMORY[0x1E69E9840];
  v4 = *(v2 + OBJC_IVAR___WFSwiftAppShortcutDataSource_appShortcutsProvider);
  v5 = sub_1CA94C368();
  v47 = 0;
  v6 = [v4 autoShortcutsForLocaleIdentifier:v5 error:&v47];

  v7 = v47;
  if (!v6)
  {
    v14 = v47;
    sub_1CA948AD8();

    return swift_willThrow();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4454A8, &unk_1CA98E820);
  v8 = sub_1CA94C1C8();
  v9 = v7;

  v10 = sub_1CA2742FC(v8);

  v11 = [objc_opt_self() standardUserDefaults];
  OUTLINED_FUNCTION_55();
  v12 = sub_1CA94C368();
  v13 = [v11 stringArrayForKey_];

  v43 = v3;
  if (v13)
  {
    v46 = sub_1CA94C658();
  }

  else
  {
    v46 = 0;
  }

  v16 = MEMORY[0x1E69E7CC0];
  v47 = MEMORY[0x1E69E7CC0];
  v17 = 1 << *(v10 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v10[8];
  v20 = (v17 + 63) >> 6;
  sub_1CA94C218();
  v21 = 0;
  if (v19)
  {
LABEL_13:
    while (1)
    {
      v23 = __clz(__rbit64(v19)) | (v21 << 6);
      v24 = (v10[6] + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v10[7] + 8 * v23);
      sub_1CA94C218();
      sub_1CA94C218();
      v28 = sub_1CA5F8C80(v25, v26, v27, v45, v46, v44);

      v29 = sub_1CA25B410(v28);
      v30 = sub_1CA25B410(v16);
      v31 = __OFADD__(v30, v29);
      v32 = v30 + v29;
      if (v31)
      {
        break;
      }

      sub_1CA277E18(v32, 1);
      v16 = v47;
      v33 = v47 & 0xFFFFFFFFFFFFFF8;
      sub_1CA278394((v47 & 0xFFFFFFF8) + 8 * *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) + 32, (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10), v28, v34, v35, v36, v37, v38, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, vars0, vars8);
      v40 = v39;

      if (v40 < v29)
      {
        goto LABEL_23;
      }

      if (v40 > 0)
      {
        v41 = *(v33 + 16);
        v31 = __OFADD__(v41, v40);
        v42 = v41 + v40;
        if (v31)
        {
          goto LABEL_24;
        }

        *(v33 + 16) = v42;
      }

      v19 &= v19 - 1;
      v47 = v16;
      if (!v19)
      {
        goto LABEL_9;
      }
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  while (1)
  {
LABEL_9:
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v22 >= v20)
    {
      break;
    }

    v19 = v10[v22 + 8];
    ++v21;
    if (v19)
    {
      v21 = v22;
      goto LABEL_13;
    }
  }

  return sub_1CA5F8184(v16);
}

unint64_t sub_1CA5F8C80(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t a6)
{
  v52 = a6;
  v53 = a5;
  v50 = a1;
  v51 = a2;
  v62 = sub_1CA25B410(a3);
  v59 = a3 & 0xFFFFFFFFFFFFFF8;
  v60 = a3 & 0xC000000000000001;
  v49 = a3;
  v58 = a3 + 32;
  v61 = a4;
  v8 = 0;
  v54 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v10 = &qword_1EC4445A0;
  v11 = &qword_1CA983900;
  while (v8 != v62)
  {
    if (v60)
    {
      v12 = MEMORY[0x1CCAA22D0](v8, v49);
    }

    else
    {
      if (v8 >= *(v59 + 16))
      {
        goto LABEL_53;
      }

      v12 = *(v58 + 8 * v8);
    }

    v13 = v12;
    v14 = __OFADD__(v8, 1);
    v15 = v8 + 1;
    if (v14)
    {
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      v37 = MEMORY[0x1CCAA22D0](0, v9);
      goto LABEL_41;
    }

    v16 = v10;
    v17 = sub_1CA275DA8(v12);

    if (v17 >> 62)
    {
      v18 = sub_1CA94D328();
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = v9 >> 62;
    if (v9 >> 62)
    {
      v20 = sub_1CA94D328();
    }

    else
    {
      v20 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v21 = v20 + v18;
    if (__OFADD__(v20, v18))
    {
      goto LABEL_54;
    }

    v64 = v15;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v19)
      {
LABEL_17:
        sub_1CA94D328();
      }

LABEL_18:
      v9 = sub_1CA94D488();
      v22 = v9 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_19;
    }

    if (v19)
    {
      goto LABEL_17;
    }

    v22 = v9 & 0xFFFFFFFFFFFFFF8;
    if (v21 > *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_18;
    }

LABEL_19:
    v23 = *(v22 + 16);
    v24 = (*(v22 + 24) >> 1) - v23;
    v25 = v22 + 8 * v23;
    v63 = v22;
    if (v17 >> 62)
    {
      v27 = sub_1CA94D328();
      if (!v27)
      {
        goto LABEL_33;
      }

      v28 = v27;
      v29 = sub_1CA94D328();
      if (v24 < v29)
      {
        goto LABEL_58;
      }

      if (v28 < 1)
      {
        goto LABEL_59;
      }

      v55 = v29;
      v56 = v18;
      v57 = v9;
      v30 = v25 + 32;
      sub_1CA276B44(&qword_1EC4445A8, v10, &qword_1CA983900);
      for (i = 0; i != v28; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v10, &qword_1CA983900);
        v32 = sub_1CA276BDC(&v65, i, v17);
        v34 = *v33;
        v32(&v65, 0);
        *(v30 + 8 * i) = v34;
        v10 = v16;
      }

      v18 = v56;
      v9 = v57;
      v26 = v55;
LABEL_29:

      v8 = v64;
      if (v26 < v18)
      {
        goto LABEL_55;
      }

      if (v26 > 0)
      {
        v35 = *(v63 + 16);
        v14 = __OFADD__(v35, v26);
        v36 = v35 + v26;
        if (v14)
        {
          goto LABEL_56;
        }

        *(v63 + 16) = v36;
      }
    }

    else
    {
      v26 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v26)
      {
        if (v24 < v26)
        {
          goto LABEL_57;
        }

        sub_1CA25B3D0(0, &qword_1EDB9F6F8, 0x1E69E0AE0);
        swift_arrayInitWithCopy();
        goto LABEL_29;
      }

LABEL_33:

      v8 = v64;
      if (v18 > 0)
      {
        goto LABEL_55;
      }
    }
  }

  if (sub_1CA25B410(v9))
  {
    sub_1CA275D70(0, (v9 & 0xC000000000000001) == 0, v9);
    v11 = v53;
    if ((v9 & 0xC000000000000001) != 0)
    {
      goto LABEL_60;
    }

    v37 = *(v9 + 32);
LABEL_41:
    v38 = v37;
    v39 = [v37 bundleIdentifier];

    v40 = sub_1CA94C3A8();
    v42 = v41;

    if (!v11)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  v42 = v51;
  v43 = sub_1CA94C218();
  v11 = v53;
  v40 = v50;
  if (!v53)
  {
    goto LABEL_45;
  }

LABEL_44:
  v65 = v40;
  v66 = v42;
  MEMORY[0x1EEE9AC00](v43);
  v48 = &v65;
  v43 = sub_1CA2BFD14(sub_1CA36DB00, v47, v11);
  if ((v43 & 1) == 0)
  {

    goto LABEL_49;
  }

LABEL_45:
  if (!*(v52 + 16))
  {
    goto LABEL_50;
  }

  v65 = v40;
  v66 = v42;
  MEMORY[0x1EEE9AC00](v43);
  v48 = &v65;
  v45 = sub_1CA2BFD14(sub_1CA2E9370, v47, v44);

  if (v45)
  {
    return v9;
  }

LABEL_49:
  v9 = MEMORY[0x1E69E7CC0];
LABEL_50:

  return v9;
}

uint64_t sub_1CA5F928C()
{
  OUTLINED_FUNCTION_0();
  v1[19] = v2;
  v1[20] = v0;
  sub_1CA94C838();
  v1[21] = sub_1CA94C828();
  v4 = sub_1CA94C7C8();
  v1[22] = v4;
  v1[23] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1CA5F9320, v4, v3);
}

uint64_t sub_1CA5F9320()
{
  OUTLINED_FUNCTION_39_1();
  v1 = *(*(v0 + 160) + OBJC_IVAR___WFSwiftAppShortcutDataSource_appShortcutsProvider);
  v2 = [*(v0 + 152) underlyingAutoShortcut];
  v3 = [v2 bundleIdentifier];

  if (!v3)
  {
    sub_1CA94C3A8();
    v3 = sub_1CA94C368();
  }

  *(v0 + 192) = v3;
  v4 = [*(v0 + 152) phrase];
  v5 = [v4 basePhraseTemplate];

  if (!v5)
  {
    sub_1CA94C3A8();
    v5 = sub_1CA94C368();
  }

  *(v0 + 200) = v5;
  v6 = [*(v0 + 152) underlyingAutoShortcut];
  v7 = [v6 actionIdentifier];

  if (!v7)
  {
    sub_1CA94C3A8();
    v7 = sub_1CA94C368();
  }

  *(v0 + 208) = v7;
  v8 = [*(v0 + 152) phrase];
  v9 = [v8 parameterIdentifier];

  v10 = sub_1CA948D28();
  OUTLINED_FUNCTION_1_0();
  v12 = v11;
  v13 = swift_task_alloc();
  if (v9)
  {
    sub_1CA948CF8();

    v9 = sub_1CA948CD8();
    (*(v12 + 8))(v13, v10);
  }

  *(v0 + 216) = v9;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1CA5F9640;
  v14 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4454E0, &unk_1CA987600);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1CA3CD588;
  *(v0 + 104) = &block_descriptor_31;
  *(v0 + 112) = v14;
  [v1 retrieveActionForBundleIdentifier:v3 basePhraseTemplate:v5 actionIdentifier:v7 parameterIdentifier:v9 completion:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1CA5F9640()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[6];
  *(v1 + 224) = v4;
  v5 = v3[23];
  v6 = v3[22];
  if (v4)
  {
    v7 = sub_1CA5F97F4;
  }

  else
  {
    v7 = sub_1CA5F9764;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1CA5F9764()
{
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0[24];
  v3 = v0[25];

  v5 = v0[18];

  OUTLINED_FUNCTION_2_4();

  return v6(v5);
}

uint64_t sub_1CA5F97F4()
{
  v1 = v0[27];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[24];

  swift_willThrow();

  OUTLINED_FUNCTION_5();

  return v5();
}

void sub_1CA5F9884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981310;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  v9 = sub_1CA948E58();
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1_4();
  sub_1CA94C218();
  sub_1CA948DE8();
  v13 = sub_1CA948D48();
  (*(v11 + 8))(a1, v9);
  sub_1CA5F8928(inited, v13);
  if (v25)
  {

    swift_setDeallocating();
    sub_1CA32E2F8();
  }

  else
  {

    swift_setDeallocating();
    sub_1CA32E2F8();
    v14 = sub_1CA323E30();

    if (v14)
    {
      v15 = sub_1CA25B410(v14);
      for (i = 0; ; ++i)
      {
        if (v15 == i)
        {
          goto LABEL_20;
        }

        if ((v14 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x1CCAA22D0](i, v14);
        }

        else
        {
          if (i >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v17 = *(v14 + 8 * i + 32);
        }

        v18 = v17;
        if (__OFADD__(i, 1))
        {
          break;
        }

        v19 = [v17 id];
        v20 = sub_1CA94C3A8();
        v22 = v21;

        if (v20 == a3 && v22 == a4)
        {

LABEL_20:

          return;
        }

        v24 = sub_1CA94D7F8();

        if (v24)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
    }
  }
}

uint64_t sub_1CA5F9B38(uint64_t a1)
{
  *(v1 + 160) = a1;
  v2 = swift_task_alloc();
  *(v1 + 168) = v2;
  *v2 = v1;
  v2[1] = sub_1CA5F9C04;

  return sub_1CA5F928C();
}

uint64_t sub_1CA5F9C04()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 176) = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_5();

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1CA5F9D6C, 0, 0);
  }
}

uint64_t sub_1CA5F9D6C()
{
  OUTLINED_FUNCTION_39_1();
  v1 = v0[20];
  v2 = [v1 underlyingAutoShortcut];
  v3 = [v2 actionIdentifier];

  v4 = sub_1CA94C3A8();
  v6 = v5;

  v7 = [v1 underlyingAutoShortcut];
  v8 = [v7 bundleIdentifier];

  v9 = sub_1CA94C3A8();
  v10 = objc_allocWithZone(MEMORY[0x1E69AC860]);
  v11 = sub_1CA334F5C(v4, v6, v9);
  v0[23] = v11;
  v12 = [objc_allocWithZone(MEMORY[0x1E69ACF58]) initWithOptions_];
  v0[24] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1CA9813B0;
  *(v13 + 32) = v11;
  sub_1CA25B3D0(0, &qword_1EC446320, 0x1E69AC860);
  v14 = v11;
  v15 = sub_1CA94C648();

  v0[18] = 0;
  v16 = [v12 actionsWithFullyQualifiedIdentifiers:v15 error:v0 + 18];

  v17 = v0[18];
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446328, qword_1CA98C970);
    sub_1CA94C1C8();
    v18 = v17;

    v19 = [v14 bundleIdentifier];
    sub_1CA94C3A8();

    v20 = sub_1CA323E30();

    if (v20)
    {
      v21 = [v14 actionIdentifier];
      sub_1CA94C3A8();

      v22 = sub_1CA323E2C();
      v0[25] = v22;

      if (v22)
      {
        v23 = v0[22];
        sub_1CA25B3D0(0, &qword_1EC4454E8, 0x1E69E0B98);
        v24 = sub_1CA5BB768(v14, v23, v22);
        v0[26] = v24;
        v25 = [objc_opt_self() defaultDatabase];
        v0[27] = v25;
        v0[2] = v0;
        v0[7] = v0 + 19;
        v0[3] = sub_1CA5FA264;
        v26 = swift_continuation_init();
        v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4454F0, qword_1CA98AEC0);
        v0[10] = MEMORY[0x1E69E9820];
        v0[11] = 1107296256;
        v0[12] = sub_1CA320A2C;
        v0[13] = &block_descriptor_7_0;
        v0[14] = v26;
        [v24 createWorkflowWithEnvironment:0 database:v25 completionHandler:v0 + 10];

        return MEMORY[0x1EEE6DEC8](v0 + 2);
      }
    }

    v27 = v0[22];
    sub_1CA5FB304();
    swift_allocError();
    v28 = v12;
    v12 = v27;
  }

  else
  {
    v29 = v0[22];
    v30 = v17;
    sub_1CA948AD8();

    v28 = v14;
    v14 = v29;
  }

  swift_willThrow();

  OUTLINED_FUNCTION_5();

  return v31();
}

uint64_t sub_1CA5FA264()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 224) = v4;
  if (v4)
  {
    v5 = sub_1CA5BB6A4;
  }

  else
  {
    v5 = sub_1CA5FA394;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1CA5FA394()
{
  OUTLINED_FUNCTION_39_1();
  v1 = *(v0 + 152);

  v2 = [v1 actions];
  sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
  v3 = sub_1CA94C658();

  if (sub_1CA25B410(v3))
  {
    sub_1CA275D70(0, (v3 & 0xC000000000000001) == 0, v3);
    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1CCAA22D0](0, v3);
    }

    else
    {
      v4 = *(v3 + 32);
    }

    v5 = v4;
    v7 = *(v0 + 200);
    v6 = *(v0 + 208);
    v9 = *(v0 + 184);
    v8 = *(v0 + 192);

    OUTLINED_FUNCTION_2_4();

    return v10(v5);
  }

  else
  {
    v13 = *(v0 + 200);
    v12 = *(v0 + 208);
    v15 = *(v0 + 184);
    v14 = *(v0 + 192);
    v16 = *(v0 + 176);

    sub_1CA5FB304();
    swift_allocError();
    swift_willThrow();

    OUTLINED_FUNCTION_5();

    return v17();
  }
}

uint64_t sub_1CA5FA5A4()
{
  v0 = sub_1CA949F78();
  OUTLINED_FUNCTION_1_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - v5;
  sub_1CA949C58();
  v7 = sub_1CA949F68();
  v8 = sub_1CA94CBF8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1CA256000, v7, v8, "App Shortcuts changed notification received, triggering update", v9, 2u);
    OUTLINED_FUNCTION_154();
    MEMORY[0x1CCAA4BF0]();
  }

  (*(v2 + 8))(v6, v0);
  OUTLINED_FUNCTION_55();
  return sub_1CA273D40(0xD000000000000022, v10);
}

id sub_1CA5FA86C(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v4 = sub_1CA94C368();

    v5 = [v3 initWithSystemImageNamed_];

    if (v5)
    {
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

id AppShortcutDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppShortcutDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppShortcutDataSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CA5FAA58()
{
  OUTLINED_FUNCTION_0();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_6_1(v1);

  return sub_1CA5F9B38(v2);
}

uint64_t sub_1CA5FAAE0()
{
  OUTLINED_FUNCTION_0();
  v2 = v1;

  OUTLINED_FUNCTION_2_4();
  if (!v0)
  {
    v3 = v2;
  }

  return v4(v3);
}

uint64_t sub_1CA5FABD8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AppShortcutDataSource(0);
  result = sub_1CA949FE8();
  *a2 = result;
  return result;
}

id sub_1CA5FAC18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_1CA94C368();

  if (a4)
  {
    v12 = sub_1CA94C368();
  }

  else
  {
    v12 = 0;
  }

  v13 = [v7 initWithName:v11 subtitle:v12 icon:a5 badge:a6];

  return v13;
}

uint64_t sub_1CA5FACCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1CA94D7F8() & 1;
  }
}

void sub_1CA5FAE3C(unint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  sub_1CA94C218();
  sub_1CA5F8044(v5, a2);
  if (v2)
  {

    return;
  }

  if (v7)
  {
    sub_1CA25B410(v5);
LABEL_5:

    return;
  }

  v8 = v6;
  v26 = a1;
  v9 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    while (1)
    {
      v10 = v5 >> 62 ? sub_1CA94D328() : *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9 == v10)
      {
        goto LABEL_5;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1CCAA22D0](v9, v5);
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_40;
        }

        if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v11 = *(v5 + 8 * v9 + 32);
      }

      v12 = v11;
      v27 = v11;
      MEMORY[0x1EEE9AC00](v11);
      v25[2] = &v27;
      v13 = sub_1CA2BFDC4(sub_1CA5FBA68, v25, a2);

      if ((v13 & 1) == 0)
      {
        if (v8 != v9)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v14 = MEMORY[0x1CCAA22D0](v8, v5);
            v15 = MEMORY[0x1CCAA22D0](v9, v5);
          }

          else
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_45;
            }

            v16 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v8 >= v16)
            {
              goto LABEL_46;
            }

            if (v9 >= v16)
            {
              goto LABEL_47;
            }

            v17 = *(v5 + 32 + 8 * v9);
            v14 = *(v5 + 32 + 8 * v8);
            v15 = v17;
          }

          v18 = v15;
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
          {
            v5 = sub_1CA436664();
            v19 = (v5 >> 62) & 1;
          }

          else
          {
            LODWORD(v19) = 0;
          }

          v20 = v5 & 0xFFFFFFFFFFFFFF8;
          v21 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
          *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v18;

          if ((v5 & 0x8000000000000000) != 0 || v19)
          {
            v5 = sub_1CA436664();
            v20 = v5 & 0xFFFFFFFFFFFFFF8;
            if ((v9 & 0x8000000000000000) != 0)
            {
LABEL_39:
              __break(1u);
LABEL_40:
              __break(1u);
LABEL_41:
              __break(1u);
LABEL_42:
              __break(1u);
LABEL_43:
              __break(1u);
LABEL_44:
              __break(1u);
LABEL_45:
              __break(1u);
LABEL_46:
              __break(1u);
LABEL_47:
              __break(1u);
              break;
            }
          }

          else if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_39;
          }

          if (v9 >= *(v20 + 16))
          {
            goto LABEL_44;
          }

          v22 = v20 + 8 * v9;
          v23 = *(v22 + 32);
          *(v22 + 32) = v14;

          *v26 = v5;
        }

        v24 = __OFADD__(v8++, 1);
        if (v24)
        {
          goto LABEL_43;
        }
      }

      v24 = __OFADD__(v9++, 1);
      if (v24)
      {
        goto LABEL_42;
      }
    }
  }

  __break(1u);
}

id sub_1CA5FB11C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446348, qword_1CA98AFE0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v11 = OBJC_IVAR___WFSwiftAppShortcutDataSource__collections;
  v20 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446350, &qword_1CA98C930);
  sub_1CA94A068();
  (*(v8 + 32))(&a4[v11], v10, v7);
  *&a4[OBJC_IVAR___WFSwiftAppShortcutDataSource_appShortcutsProvider] = a1;
  *&a4[OBJC_IVAR___WFSwiftAppShortcutDataSource_organizationStyle] = a3;
  v12 = type metadata accessor for AppShortcutDataSource(0);
  v19.receiver = a4;
  v19.super_class = v12;
  swift_unknownObjectRetain();
  v13 = objc_msgSendSuper2(&v19, sel_init);
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 defaultCenter];
  [v16 addObserver:v15 selector:sel_appShortcutsChanged name:*MEMORY[0x1E69ACB40] object:0];

  swift_unknownObjectRelease();
  return v15;
}

unint64_t sub_1CA5FB304()
{
  result = qword_1EC447160;
  if (!qword_1EC447160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447160);
  }

  return result;
}

unint64_t sub_1CA5FB35C()
{
  result = qword_1EC447168;
  if (!qword_1EC447168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447168);
  }

  return result;
}

unint64_t sub_1CA5FB3B4()
{
  result = qword_1EC447170;
  if (!qword_1EC447170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447170);
  }

  return result;
}

unint64_t sub_1CA5FB410()
{
  result = qword_1EC446B48;
  if (!qword_1EC446B48)
  {
    sub_1CA25B3D0(255, &qword_1EDB9F6F8, 0x1E69E0AE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446B48);
  }

  return result;
}

unint64_t sub_1CA5FB478(uint64_t a1)
{
  result = sub_1CA5FB4A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA5FB4A0()
{
  result = qword_1EC4426D0[0];
  if (!qword_1EC4426D0[0])
  {
    type metadata accessor for AppShortcutDataSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4426D0);
  }

  return result;
}

uint64_t dispatch thunk of AppShortcutDataSource.lnAction(for:)()
{
  OUTLINED_FUNCTION_7();
  v5 = (*(v1 + 184) + **(v1 + 184));
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_6_1(v2);

  return v5(v3);
}

uint64_t dispatch thunk of AppShortcutDataSource.action(for:)()
{
  OUTLINED_FUNCTION_7();
  v5 = (*(v1 + 200) + **(v1 + 200));
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_6_1(v2);

  return v5(v3);
}

uint64_t sub_1CA5FB8A8()
{
  OUTLINED_FUNCTION_0();
  v1 = v0;

  OUTLINED_FUNCTION_2_4();

  return v2(v1);
}

_BYTE *storeEnumTagSinglePayload for AppShortcutDataSource.Error(_BYTE *result, int a2, int a3)
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

id sub_1CA5FBAE4()
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
  *(inited + 120) = 0xD000000000000013;
  *(inited + 128) = 0x80000001CA9D4650;
  v6 = @"IconName";
  *(inited + 152) = sub_1CA94C368();
  *(inited + 160) = 0xD000000000000017;
  *(inited + 168) = 0x80000001CA9D4670;
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

id sub_1CA5FBD0C()
{
  v110 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9B55E0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("select|person|people|contact|addressbook", 40);
  v6 = v5;
  v7 = sub_1CA94C438("select|person|people|contact|addressbook", 40);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v115 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v116 = v11;
  v12 = &v103 - v115;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v113 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v114 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v112 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v103 - v112;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v111 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v109 = v22;
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v108 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Prompts to pick a person from your contacts and passes the selection to the next action.", 88);
  v106 = v27;
  v28 = sub_1CA94C438("Prompts to pick a person from your contacts and passes the selection to the next action.", 88);
  v30 = v29;
  *&v107 = &v103;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v103 - v115;
  sub_1CA948D98();
  v32 = [v113 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v103 - v112;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v106, v28, v30, 0, 0, v31, v33);
  *(v23 + 64) = v111;
  *(v23 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v36 = sub_1CA94C1E8();
  v37 = v108;
  *(inited + 160) = sub_1CA6B3784(v36);
  *(inited + 184) = v37;
  *(inited + 192) = @"InputPassthrough";
  v38 = MEMORY[0x1E69E6370];
  *(inited + 200) = 0;
  *(inited + 224) = v38;
  *(inited + 232) = @"LocallyProcessesData";
  *(inited + 240) = 1;
  *(inited + 264) = v38;
  *(inited + 272) = @"Name";
  v39 = @"InputPassthrough";
  v40 = @"LocallyProcessesData";
  v41 = @"Name";
  v42 = sub_1CA94C438("Select Contact (Action Name)", 28);
  v106 = v43;
  *&v107 = v42;
  v44 = sub_1CA94C438("Select Contact", 14);
  v46 = v45;
  v108 = &v103;
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v103 - v115;
  sub_1CA948D98();
  v48 = v113;
  v49 = [v113 bundleURL];
  MEMORY[0x1EEE9AC00](v49);
  v50 = v112;
  sub_1CA948B68();

  v51 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v107, v106, v44, v46, 0, 0, v47, &v103 - v50);
  v52 = v111;
  *(inited + 304) = v111;
  *(inited + 312) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v53 = swift_initStackObject();
  v107 = xmmword_1CA9813C0;
  *(v53 + 16) = xmmword_1CA9813C0;
  *(v53 + 32) = 0x656C7069746C754DLL;
  *(v53 + 40) = 0xE800000000000000;
  *(v53 + 48) = 1;
  *(v53 + 72) = MEMORY[0x1E69E6370];
  *(v53 + 80) = 0x614E74757074754FLL;
  *(v53 + 88) = 0xEA0000000000656DLL;
  v54 = @"Output";
  v55 = sub_1CA94C438("Contacts (Default Output Name)", 30);
  v105 = v56;
  v106 = v55;
  v57 = sub_1CA94C438("Contacts", 8);
  v104 = v58;
  v108 = &v103;
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v103 - v115;
  sub_1CA948D98();
  v60 = [v48 bundleURL];
  MEMORY[0x1EEE9AC00](v60);
  sub_1CA948B68();

  v61 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v53 + 96) = sub_1CA2F9F14(v106, v105, v57, v104, 0, 0, v59, &v103 - v50);
  *(v53 + 120) = v52;
  *(v53 + 128) = 0x7365707954;
  *(v53 + 136) = 0xE500000000000000;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v53 + 168) = v108;
  *(v53 + 144) = &unk_1F4A09058;
  v62 = MEMORY[0x1E69E6158];
  v63 = sub_1CA94C1E8();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 320) = v63;
  *(inited + 344) = v64;
  *(inited + 352) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v106 = swift_allocObject();
  *(v106 + 16) = xmmword_1CA9813B0;
  v105 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v65 = swift_initStackObject();
  *(v65 + 16) = v107;
  *(v65 + 32) = @"Class";
  *(v65 + 40) = 0xD000000000000011;
  *(v65 + 48) = 0x80000001CA99E620;
  *(v65 + 64) = v62;
  *(v65 + 72) = @"Key";
  *(v65 + 80) = 0xD000000000000010;
  *(v65 + 88) = 0x80000001CA9D4760;
  *(v65 + 104) = v62;
  *(v65 + 112) = @"Label";
  v66 = @"Parameters";
  v67 = @"Class";
  v68 = @"Key";
  v69 = @"Label";
  v70 = sub_1CA94C438("Select Multiple (WFSelectMultiple)", 34);
  v104 = v71;
  v72 = sub_1CA94C438("Select Multiple", 15);
  v74 = v73;
  *&v107 = &v103;
  MEMORY[0x1EEE9AC00](v72);
  v75 = &v103 - v115;
  sub_1CA948D98();
  v76 = [v113 bundleURL];
  MEMORY[0x1EEE9AC00](v76);
  v77 = &v103 - v112;
  sub_1CA948B68();

  v78 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v79 = sub_1CA2F9F14(v70, v104, v72, v74, 0, 0, v75, v77);
  *(v65 + 144) = v111;
  *(v65 + 120) = v79;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v80 = sub_1CA94C1E8();
  v81 = sub_1CA2F864C(v80);
  v82 = v106;
  *(v106 + 32) = v81;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 360) = v82;
  *(inited + 384) = v83;
  *(inited + 392) = @"ParameterSummary";
  v84 = @"ParameterSummary";
  v85 = sub_1CA94C438("Select contact (Parameter Summary)", 34);
  v87 = v86;
  v88 = sub_1CA94C438("Select contact", 14);
  v90 = v89;
  v111 = &v103;
  MEMORY[0x1EEE9AC00](v88);
  v91 = &v103 - v115;
  sub_1CA948D98();
  v92 = [v113 bundleURL];
  MEMORY[0x1EEE9AC00](v92);
  v93 = &v103 - v112;
  sub_1CA948B68();

  v94 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v95 = sub_1CA2F9F14(v85, v87, v88, v90, 0, 0, v91, v93);
  v96 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v97 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 400) = v96;
  *(inited + 424) = v97;
  *(inited + 432) = @"RequiredResources";
  *(inited + 440) = &unk_1F4A09088;
  v98 = v108;
  *(inited + 464) = v108;
  *(inited + 472) = @"UserInterfaceClasses";
  v99 = @"RequiredResources";
  v100 = @"UserInterfaceClasses";
  *(inited + 480) = sub_1CA94C1E8();
  *(inited + 504) = v109;
  *(inited + 512) = @"UserInterfaces";
  *(inited + 544) = v98;
  *(inited + 520) = &unk_1F4A09138;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v101 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5FCA2C()
{
  v156 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9D4800;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v168 = sub_1CA94C438("split|tile|window|open", 22);
  v5 = v4;
  v6 = sub_1CA94C438("split|tile|window|open", 22);
  v8 = v7;
  v9 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v171 = v10;
  v172 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = v152 - v172;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v12 = qword_1EDB9F690;
  v169 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v170 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v167 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = v152 - v167;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v168, v5, v6, v8, 0, 0, v11, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v168 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v166 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438("Open the specified apps in split screen mode.", 45);
  v164 = v24;
  v25 = sub_1CA94C438("Open the specified apps in split screen mode.", 45);
  v27 = v26;
  v165 = v152;
  MEMORY[0x1EEE9AC00](v25);
  v28 = v152 - v172;
  sub_1CA948D98();
  v29 = [v12 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v30 = v152 - v167;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v32 = sub_1CA2F9F14(v23, v164, v25, v27, 0, 0, v28, v30);
  *(v20 + 64) = v168;
  *(v20 + 40) = v32;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v33 = sub_1CA94C1E8();
  v34 = v166;
  *(inited + 120) = sub_1CA6B3784(v33);
  *(inited + 144) = v34;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 0x6F6769646E49;
  *(inited + 168) = 0xE600000000000000;
  v35 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0xD000000000000015;
  *(inited + 208) = 0x80000001CA9D4870;
  *(inited + 224) = v35;
  *(inited + 232) = @"InputPassthrough";
  v36 = MEMORY[0x1E69E6370];
  *(inited + 240) = 1;
  *(inited + 264) = v36;
  *(inited + 272) = @"Name";
  v37 = @"IconColor";
  v38 = @"IconSymbol";
  v39 = @"InputPassthrough";
  v40 = @"Name";
  v41 = sub_1CA94C438("Split Screen Apps (Action Name)", 31);
  v43 = v42;
  v44 = sub_1CA94C438("Split Screen Apps", 17);
  v46 = v45;
  v166 = v152;
  MEMORY[0x1EEE9AC00](v44);
  v47 = v152 - v172;
  sub_1CA948D98();
  v48 = [v169 bundleURL];
  MEMORY[0x1EEE9AC00](v48);
  v49 = v152 - v167;
  sub_1CA948B68();

  v50 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v41, v43, v44, v46, 0, 0, v47, v49);
  *(inited + 304) = v168;
  *(inited + 312) = @"Parameters";
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v166 = swift_allocObject();
  *(v166 + 1) = xmmword_1CA981470;
  v165 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v51 = swift_initStackObject();
  v159 = xmmword_1CA981370;
  *(v51 + 16) = xmmword_1CA981370;
  v52 = @"Parameters";
  *(v51 + 32) = sub_1CA94C368();
  *(v51 + 40) = 0x7070416E65704FLL;
  *(v51 + 48) = 0xE700000000000000;
  v53 = MEMORY[0x1E69E6158];
  *(v51 + 64) = MEMORY[0x1E69E6158];
  *(v51 + 72) = @"Class";
  v153 = 0x80000001CA99B070;
  *(v51 + 80) = 0xD000000000000014;
  *(v51 + 88) = 0x80000001CA99B070;
  *(v51 + 104) = v53;
  *(v51 + 112) = @"Key";
  v154 = 0xD000000000000016;
  *(v51 + 120) = 0xD000000000000016;
  *(v51 + 128) = 0x80000001CA9D48D0;
  *(v51 + 144) = v53;
  *(v51 + 152) = @"Label";
  v54 = @"Class";
  v55 = @"Key";
  v56 = @"Label";
  v57 = v54;
  v58 = v55;
  v59 = v56;
  v158 = v57;
  v163 = v58;
  v164 = v59;
  v60 = sub_1CA94C438("App (WFPrimaryAppIdentifier)", 28);
  v161 = v61;
  v62 = sub_1CA94C438("App", 3);
  v64 = v63;
  v162 = v152;
  MEMORY[0x1EEE9AC00](v62);
  v65 = v152 - v172;
  sub_1CA948D98();
  v66 = [v169 bundleURL];
  MEMORY[0x1EEE9AC00](v66);
  v67 = v152 - v167;
  sub_1CA948B68();

  v68 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v69 = sub_1CA2F9F14(v60, v161, v62, v64, 0, 0, v65, v67);
  *(v51 + 184) = v168;
  *(v51 + 160) = v69;
  v152[1] = "electedApp)";
  *(v51 + 192) = sub_1CA94C368();
  *(v51 + 224) = MEMORY[0x1E69E6370];
  *(v51 + 200) = 1;
  _s3__C3KeyVMa_0(0);
  v162 = v70;
  v161 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v71 = sub_1CA94C1E8();
  v72 = sub_1CA2F864C(v71);
  v166[4] = v72;
  v73 = swift_initStackObject();
  *(v73 + 16) = v159;
  *(v73 + 32) = sub_1CA94C368();
  *(v73 + 40) = 0x7070416E65704FLL;
  *(v73 + 48) = 0xE700000000000000;
  v74 = MEMORY[0x1E69E6158];
  v75 = v158;
  *(v73 + 64) = MEMORY[0x1E69E6158];
  *(v73 + 72) = v75;
  v76 = v153;
  *(v73 + 80) = 0xD000000000000014;
  *(v73 + 88) = v76;
  *(v73 + 104) = v74;
  v77 = v74;
  *(v73 + 112) = v163;
  *(v73 + 120) = 0xD000000000000018;
  *(v73 + 128) = 0x80000001CA9D4910;
  v78 = v164;
  *(v73 + 144) = v77;
  *(v73 + 152) = v78;
  v79 = sub_1CA94C438("App (WFSecondaryAppIdentifier)", 30);
  v152[0] = v80;
  v81 = sub_1CA94C438("App", 3);
  v83 = v82;
  v153 = v152;
  MEMORY[0x1EEE9AC00](v81);
  v84 = v152 - v172;
  sub_1CA948D98();
  v85 = [v169 bundleURL];
  MEMORY[0x1EEE9AC00](v85);
  v86 = v152 - v167;
  sub_1CA948B68();

  v87 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v88 = sub_1CA2F9F14(v79, v152[0], v81, v83, 0, 0, v84, v86);
  *(v73 + 184) = v168;
  *(v73 + 160) = v88;
  *(v73 + 192) = sub_1CA94C368();
  *(v73 + 224) = MEMORY[0x1E69E6370];
  *(v73 + 200) = 1;
  v89 = sub_1CA94C1E8();
  v90 = sub_1CA2F864C(v89);
  v166[5] = v90;
  v91 = swift_allocObject();
  *(v91 + 16) = v159;
  v92 = v154;
  *(v91 + 32) = v158;
  *(v91 + 40) = v92;
  *(v91 + 48) = 0x80000001CA99C4A0;
  v93 = MEMORY[0x1E69E6158];
  *(v91 + 64) = MEMORY[0x1E69E6158];
  *(v91 + 72) = @"DefaultValue";
  *(v91 + 80) = 0xBDC2202B20BDC2;
  *(v91 + 88) = 0xA700000000000000;
  *(v91 + 104) = v93;
  *(v91 + 112) = @"Items";
  v160 = swift_allocObject();
  *(v160 + 16) = xmmword_1CA981360;
  v94 = @"DefaultValue";
  v95 = @"Items";
  v158 = sub_1CA94C438("½ + ½ (WFAppRatio)", 20);
  v155 = v96;
  v97 = sub_1CA94C438("½ + ½", 7);
  v154 = v98;
  *&v159 = v152;
  MEMORY[0x1EEE9AC00](v97);
  v99 = v152 - v172;
  sub_1CA948D98();
  v100 = v169;
  v101 = [v169 bundleURL];
  MEMORY[0x1EEE9AC00](v101);
  v157 = inited;
  v102 = v167;
  sub_1CA948B68();

  v103 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v104 = sub_1CA2F9F14(v158, v155, v97, v154, 0, 0, v99, v152 - v102);
  *(v160 + 32) = v104;
  v158 = sub_1CA94C438("⅔ + ⅓ (WFAppRatio)", 22);
  v155 = v105;
  v154 = sub_1CA94C438("⅔ + ⅓", 9);
  v107 = v106;
  *&v159 = v152;
  MEMORY[0x1EEE9AC00](v154);
  v108 = v152 - v172;
  sub_1CA948D98();
  v109 = [v100 bundleURL];
  MEMORY[0x1EEE9AC00](v109);
  sub_1CA948B68();

  v110 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v111 = sub_1CA2F9F14(v158, v155, v154, v107, 0, 0, v108, v152 - v102);
  v112 = v160;
  *(v160 + 40) = v111;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v91 + 120) = v112;
  v114 = v163;
  *(v91 + 144) = v113;
  *(v91 + 152) = v114;
  *(v91 + 160) = 0x7461527070414657;
  *(v91 + 168) = 0xEA00000000006F69;
  v115 = v164;
  *(v91 + 184) = MEMORY[0x1E69E6158];
  *(v91 + 192) = v115;
  v116 = sub_1CA94C438("Ratio (WFAppRatio)", 18);
  v163 = v117;
  v118 = sub_1CA94C438("Ratio", 5);
  v120 = v119;
  v164 = v152;
  MEMORY[0x1EEE9AC00](v118);
  v121 = v152 - v172;
  sub_1CA948D98();
  v122 = [v169 bundleURL];
  MEMORY[0x1EEE9AC00](v122);
  sub_1CA948B68();

  v123 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v124 = sub_1CA2F9F14(v116, v163, v118, v120, 0, 0, v121, v152 - v102);
  *(v91 + 224) = v168;
  *(v91 + 200) = v124;
  v125 = sub_1CA94C1E8();
  v126 = sub_1CA2F864C(v125);
  v127 = v166;
  v166[6] = v126;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v129 = v157;
  *(v157 + 320) = v127;
  *(v129 + 344) = v128;
  *(v129 + 352) = @"ParameterSummary";
  v130 = @"ParameterSummary";
  v131 = sub_1CA94C438("Split screen between ${WFPrimaryAppIdentifier} and ${WFSecondaryAppIdentifier} (Parameter Summary)", 98);
  v133 = v132;
  v134 = sub_1CA94C438("Split screen between ${WFPrimaryAppIdentifier} and ${WFSecondaryAppIdentifier}", 78);
  v136 = v135;
  v168 = v152;
  MEMORY[0x1EEE9AC00](v134);
  v137 = v152 - v172;
  sub_1CA948D98();
  v138 = [v169 bundleURL];
  MEMORY[0x1EEE9AC00](v138);
  sub_1CA948B68();

  v139 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v140 = sub_1CA2F9F14(v131, v133, v134, v136, 0, 0, v137, v152 - v102);
  v141 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v142 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v143 = v157;
  *(v157 + 360) = v141;
  *(v143 + 384) = v142;
  *(v143 + 392) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v144 = swift_allocObject();
  *(v144 + 16) = xmmword_1CA97EDF0;
  *(v144 + 56) = MEMORY[0x1E69E6158];
  *(v144 + 32) = 0xD000000000000011;
  *(v144 + 40) = 0x80000001CA993BE0;
  v173 = 0;
  v174 = 1;
  v145 = type metadata accessor for WFDeviceIdiomResource();
  v146 = objc_allocWithZone(v145);
  v147 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v173);
  *(v144 + 88) = v145;
  *(v144 + 64) = v148;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  *(v143 + 400) = v144;
  *(v143 + 424) = v149;
  *(v143 + 432) = @"RequiresUnlock";
  *(v143 + 464) = MEMORY[0x1E69E6370];
  *(v143 + 440) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v150 = @"RequiresUnlock";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5FDCB0()
{
  v120 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981550;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000010;
  *(inited + 48) = 0x80000001CA99BD90;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("phone|number|detect|scan", 24);
  v6 = v5;
  v7 = sub_1CA94C438("phone|number|detect|scan", 24);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v125 = v11;
  v123 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = v114 - v123;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v124 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v126 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v127 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = v114 - v127;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v122 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = MEMORY[0x1E69E6158];
  v22 = sub_1CA94C1E8();
  *(inited + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 152) = sub_1CA94C368();
  *(inited + 160) = 0xD000000000000018;
  *(inited + 168) = 0x80000001CA997190;
  *(inited + 184) = v21;
  *(inited + 192) = @"Description";
  *&v121 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Returns any phone numbers found in the output from the previous action.", 71);
  v118 = v27;
  v28 = sub_1CA94C438("Returns any phone numbers found in the output from the previous action.", 71);
  v30 = v29;
  v119 = v114;
  MEMORY[0x1EEE9AC00](v28);
  v31 = v114 - v123;
  sub_1CA948D98();
  v32 = [v124 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = v114 - v127;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v118, v28, v30, 0, 0, v31, v33);
  *(v23 + 64) = v122;
  *(v23 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v36 = sub_1CA94C1E8();
  v37 = v121;
  *(inited + 200) = sub_1CA6B3784(v36);
  *(inited + 224) = v37;
  *(inited + 232) = @"IconColor";
  *(inited + 240) = 0x6E65657247;
  *(inited + 248) = 0xE500000000000000;
  v38 = MEMORY[0x1E69E6158];
  *(inited + 264) = MEMORY[0x1E69E6158];
  *(inited + 272) = @"IconSymbol";
  *(inited + 280) = 0xD000000000000011;
  *(inited + 288) = 0x80000001CA9D4B10;
  *(inited + 304) = v38;
  *(inited + 312) = @"Input";
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v39 = swift_initStackObject();
  v121 = xmmword_1CA981350;
  *(v39 + 16) = xmmword_1CA981350;
  *(v39 + 32) = 0x656C7069746C754DLL;
  *(v39 + 40) = 0xE800000000000000;
  v40 = MEMORY[0x1E69E6370];
  *(v39 + 48) = 1;
  *(v39 + 72) = v40;
  strcpy((v39 + 80), "ParameterKey");
  *(v39 + 93) = 0;
  *(v39 + 94) = -5120;
  *(v39 + 96) = 0x7475706E494657;
  *(v39 + 104) = 0xE700000000000000;
  *(v39 + 120) = v38;
  *(v39 + 128) = 0x6465726975716552;
  *(v39 + 136) = 0xE800000000000000;
  *(v39 + 144) = 1;
  *(v39 + 168) = v40;
  *(v39 + 176) = 0x7365707954;
  v41 = v40;
  *(v39 + 184) = 0xE500000000000000;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v39 + 216) = v119;
  *(v39 + 192) = &unk_1F4A091B8;
  v42 = @"IconColor";
  v43 = @"IconSymbol";
  v44 = @"Input";
  v45 = sub_1CA94C1E8();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v118 = v46;
  *(inited + 320) = v45;
  *(inited + 344) = v46;
  *(inited + 352) = @"LocallyProcessesData";
  *(inited + 360) = 1;
  *(inited + 384) = v41;
  *(inited + 392) = @"Name";
  v47 = @"LocallyProcessesData";
  v48 = @"Name";
  v49 = sub_1CA94C438("Get Phone Numbers from Input (Action Name)", 42);
  v115 = v50;
  v51 = sub_1CA94C438("Get Phone Numbers from Input", 28);
  v53 = v52;
  v116 = v114;
  MEMORY[0x1EEE9AC00](v51);
  v54 = v123;
  sub_1CA948D98();
  v55 = [v124 bundleURL];
  MEMORY[0x1EEE9AC00](v55);
  v56 = v114 - v127;
  sub_1CA948B68();

  v57 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 400) = sub_1CA2F9F14(v49, v115, v51, v53, 0, 0, v114 - v54, v56);
  v58 = v122;
  *(inited + 424) = v122;
  *(inited + 432) = @"Output";
  v59 = swift_allocObject();
  *(v59 + 16) = v121;
  *(v59 + 32) = 0x75736F6C63736944;
  *(v59 + 40) = 0xEF6C6576654C6572;
  *(v59 + 48) = 0x63696C627550;
  *(v59 + 56) = 0xE600000000000000;
  *(v59 + 72) = MEMORY[0x1E69E6158];
  *(v59 + 80) = 0x656C7069746C754DLL;
  *(v59 + 88) = 0xE800000000000000;
  *(v59 + 96) = 1;
  *(v59 + 120) = MEMORY[0x1E69E6370];
  *(v59 + 128) = 0x614E74757074754FLL;
  *(v59 + 136) = 0xEA0000000000656DLL;
  v60 = @"Output";
  v61 = sub_1CA94C438("Phone Numbers (Default Output Name)", 35);
  v115 = v62;
  v116 = v61;
  v63 = sub_1CA94C438("Phone Numbers", 13);
  v65 = v64;
  v117 = v114;
  MEMORY[0x1EEE9AC00](v63);
  sub_1CA948D98();
  v66 = [v124 bundleURL];
  MEMORY[0x1EEE9AC00](v66);
  v67 = v114 - v127;
  sub_1CA948B68();

  v68 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v59 + 144) = sub_1CA2F9F14(v116, v115, v63, v65, 0, 0, v114 - v54, v67);
  *(v59 + 168) = v58;
  *(v59 + 176) = 0x7365707954;
  *(v59 + 216) = v119;
  *(v59 + 184) = 0xE500000000000000;
  *(v59 + 192) = &unk_1F4A091E8;
  v69 = MEMORY[0x1E69E6158];
  *(inited + 440) = sub_1CA94C1E8();
  *(inited + 464) = v118;
  *(inited + 472) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v119 = swift_allocObject();
  *(v119 + 1) = xmmword_1CA9813B0;
  v118 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v70 = swift_allocObject();
  *(v70 + 16) = v121;
  *(v70 + 32) = @"Class";
  *(v70 + 40) = 0xD000000000000014;
  *(v70 + 48) = 0x80000001CA99B500;
  *(v70 + 64) = v69;
  *(v70 + 72) = @"Key";
  *(v70 + 80) = 0x7475706E494657;
  *(v70 + 88) = 0xE700000000000000;
  *(v70 + 104) = v69;
  *(v70 + 112) = @"Label";
  v71 = @"Parameters";
  v72 = @"Class";
  v73 = @"Key";
  v74 = @"Label";
  v75 = sub_1CA94C438("Input (WFInput)", 15);
  v116 = v76;
  v117 = v75;
  v77 = sub_1CA94C438("Input", 5);
  v115 = v78;
  *&v121 = v114;
  MEMORY[0x1EEE9AC00](v77);
  v79 = v123;
  sub_1CA948D98();
  v80 = v124;
  v81 = [v124 bundleURL];
  v114[1] = v114;
  MEMORY[0x1EEE9AC00](v81);
  v82 = v114 - v127;
  sub_1CA948B68();

  v83 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v70 + 120) = sub_1CA2F9F14(v117, v116, v77, v115, 0, 0, v114 - v79, v82);
  v84 = v122;
  *(v70 + 144) = v122;
  *(v70 + 152) = @"Placeholder";
  v85 = @"Placeholder";
  v86 = sub_1CA94C438("Input (WFInput)", 15);
  v116 = v87;
  v117 = v86;
  v115 = sub_1CA94C438("Input", 5);
  v89 = v88;
  *&v121 = v114;
  MEMORY[0x1EEE9AC00](v115);
  v90 = v114 - v79;
  sub_1CA948D98();
  v91 = [v80 bundleURL];
  MEMORY[0x1EEE9AC00](v91);
  v92 = v114 - v127;
  sub_1CA948B68();

  v93 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v94 = sub_1CA2F9F14(v117, v116, v115, v89, 0, 0, v90, v92);
  *(v70 + 184) = v84;
  *(v70 + 160) = v94;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v95 = sub_1CA94C1E8();
  v96 = sub_1CA2F864C(v95);
  v97 = v119;
  v119[4] = v96;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 480) = v97;
  *(inited + 504) = v98;
  *(inited + 512) = @"ParameterSummary";
  v99 = @"ParameterSummary";
  v100 = sub_1CA94C438("Get phone numbers from ${WFInput} (Parameter Summary)", 53);
  v102 = v101;
  v103 = sub_1CA94C438("Get phone numbers from ${WFInput}", 33);
  v105 = v104;
  v122 = v114;
  MEMORY[0x1EEE9AC00](v103);
  v106 = v114 - v123;
  sub_1CA948D98();
  v107 = [v124 bundleURL];
  MEMORY[0x1EEE9AC00](v107);
  v108 = v114 - v127;
  sub_1CA948B68();

  v109 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v110 = sub_1CA2F9F14(v100, v102, v103, v105, 0, 0, v106, v108);
  v111 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  *(inited + 544) = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 520) = v111;
  *(inited + 552) = @"ResidentCompatible";
  *(inited + 584) = MEMORY[0x1E69E6370];
  *(inited + 560) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v112 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5FEC78()
{
  v120 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000017;
  *(inited + 48) = 0x80000001CA9A9740;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("camera|roll|picture|photo|screen", 32);
  v6 = v5;
  v7 = sub_1CA94C438("camera|roll|picture|photo|screen", 32);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v126 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v127 = v11;
  v12 = &v116 - v126;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v124 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v125 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v123 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v116 - v123;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v122 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v121 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Gets the most recent screenshots from the photo library.", 56);
  v118 = v27;
  v28 = sub_1CA94C438("Gets the most recent screenshots from the photo library.", 56);
  v30 = v29;
  v119 = &v116;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v116 - v126;
  sub_1CA948D98();
  v32 = [v124 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v116 - v123;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v118, v28, v30, 0, 0, v31, v33);
  *(v23 + 64) = v122;
  *(v23 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v36 = sub_1CA94C1E8();
  v37 = v121;
  *(inited + 160) = sub_1CA6B3784(v36);
  *(inited + 184) = v37;
  *(inited + 192) = @"DisabledOnPlatforms";
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v121 = v38;
  *(inited + 200) = &unk_1F4A09258;
  *(inited + 224) = v38;
  *(inited + 232) = @"LocallyProcessesData";
  v39 = MEMORY[0x1E69E6370];
  *(inited + 240) = 1;
  *(inited + 264) = v39;
  *(inited + 272) = @"Name";
  v40 = @"DisabledOnPlatforms";
  v41 = @"LocallyProcessesData";
  v42 = @"Name";
  v43 = sub_1CA94C438("Get Latest Screenshots (Action Name)", 36);
  v117 = v44;
  v118 = v43;
  v45 = sub_1CA94C438("Get Latest Screenshots", 22);
  v47 = v46;
  v119 = &v116;
  MEMORY[0x1EEE9AC00](v45);
  v48 = &v116 - v126;
  sub_1CA948D98();
  v49 = v124;
  v50 = [v124 bundleURL];
  MEMORY[0x1EEE9AC00](v50);
  v51 = v123;
  sub_1CA948B68();

  v52 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v118, v117, v45, v47, 0, 0, v48, &v116 - v51);
  v53 = v122;
  *(inited + 304) = v122;
  *(inited + 312) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v54 = swift_initStackObject();
  *(v54 + 16) = xmmword_1CA9813C0;
  *(v54 + 32) = 0x656C7069746C754DLL;
  *(v54 + 40) = 0xE800000000000000;
  *(v54 + 48) = 1;
  *(v54 + 72) = MEMORY[0x1E69E6370];
  *(v54 + 80) = 0x614E74757074754FLL;
  *(v54 + 88) = 0xEA0000000000656DLL;
  v55 = @"Output";
  v56 = sub_1CA94C438("Latest Screenshots (Default Output Name)", 40);
  v117 = v57;
  v118 = v56;
  v58 = sub_1CA94C438("Latest Screenshots", 18);
  v116 = v59;
  v119 = &v116;
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v116 - v126;
  sub_1CA948D98();
  v61 = [v49 bundleURL];
  MEMORY[0x1EEE9AC00](v61);
  sub_1CA948B68();

  v62 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v54 + 96) = sub_1CA2F9F14(v118, v117, v58, v116, 0, 0, v60, &v116 - v51);
  *(v54 + 120) = v53;
  *(v54 + 128) = 0x7365707954;
  *(v54 + 168) = v121;
  *(v54 + 136) = 0xE500000000000000;
  *(v54 + 144) = &unk_1F4A09288;
  v63 = MEMORY[0x1E69E6158];
  v64 = sub_1CA94C1E8();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 320) = v64;
  *(inited + 344) = v65;
  *(inited + 352) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v119 = swift_allocObject();
  *(v119 + 1) = xmmword_1CA9813B0;
  v118 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1CA981370;
  *(v66 + 32) = @"Class";
  *(v66 + 40) = 0xD000000000000012;
  *(v66 + 48) = 0x80000001CA99B980;
  *(v66 + 64) = v63;
  *(v66 + 72) = @"DefaultValue";
  v67 = MEMORY[0x1E69E6530];
  *(v66 + 80) = 1;
  *(v66 + 104) = v67;
  *(v66 + 112) = @"Key";
  *(v66 + 120) = 0xD000000000000015;
  *(v66 + 128) = 0x80000001CA9A9870;
  *(v66 + 144) = v63;
  *(v66 + 152) = @"StepperDescription";
  v68 = @"Parameters";
  v69 = @"Class";
  v70 = @"DefaultValue";
  v71 = @"Key";
  v72 = @"StepperDescription";
  v73 = sub_1CA94C438("Number of Screenshots (WFGetLatestPhotoCount)", 45);
  v116 = v74;
  v75 = sub_1CA94C438("Number of Screenshots", 21);
  v77 = v76;
  v117 = &v116;
  MEMORY[0x1EEE9AC00](v75);
  v78 = &v116 - v126;
  sub_1CA948D98();
  v79 = [v124 bundleURL];
  MEMORY[0x1EEE9AC00](v79);
  v80 = &v116 - v123;
  sub_1CA948B68();

  v81 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v66 + 160) = sub_1CA2F9F14(v73, v116, v75, v77, 0, 0, v78, v80);
  *(v66 + 184) = v122;
  *(v66 + 192) = @"StepperNoun";
  v82 = @"StepperNoun";
  v83 = sub_1CA94C438("%d Screenshots", v116);
  v116 = v84;
  v117 = v83;
  v85 = v84;
  v132 = 0;
  v133 = 0xE000000000000000;
  sub_1CA94D408();

  v132 = v83;
  v133 = v85;
  v130 = 10;
  v131 = 0xE100000000000000;
  v128 = 32;
  v129 = 0xE100000000000000;
  sub_1CA27BAF0();
  v132 = sub_1CA94D1B8();
  v133 = v86;
  v87 = MEMORY[0x1CCAA1300](0xD000000000000010, 0x80000001CA99BA10);
  v88 = v132;
  v89 = v133;
  MEMORY[0x1EEE9AC00](v87);
  v90 = &v116 - v126;
  sub_1CA948D98();
  v91 = [v124 bundleURL];
  MEMORY[0x1EEE9AC00](v91);
  v92 = &v116 - v123;
  sub_1CA948B68();

  v93 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v94 = sub_1CA2F9F14(v88, v89, v117, v116, 0, 0, v90, v92);
  *(v66 + 224) = v122;
  *(v66 + 200) = v94;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v95 = sub_1CA94C1E8();
  v96 = sub_1CA2F864C(v95);
  v97 = v119;
  v119[4] = v96;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 360) = v97;
  *(inited + 384) = v98;
  *(inited + 392) = @"ParameterSummary";
  v99 = @"ParameterSummary";
  v100 = sub_1CA94C438("Get the latest ${WFGetLatestPhotoCount} (Parameter Summary)", 59);
  v102 = v101;
  v103 = sub_1CA94C438("Get the latest ${WFGetLatestPhotoCount}", 39);
  v105 = v104;
  v122 = &v116;
  MEMORY[0x1EEE9AC00](v103);
  v106 = &v116 - v126;
  sub_1CA948D98();
  v107 = [v124 bundleURL];
  MEMORY[0x1EEE9AC00](v107);
  v108 = &v116 - v123;
  sub_1CA948B68();

  v109 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v110 = sub_1CA2F9F14(v100, v102, v103, v105, 0, 0, v106, v108);
  v111 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v112 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 400) = v111;
  *(inited + 424) = v112;
  *(inited + 432) = @"RequiredResources";
  *(inited + 464) = v121;
  *(inited + 440) = &unk_1F4A092B8;
  v113 = @"RequiredResources";
  v114 = sub_1CA94C368();
  *(inited + 504) = MEMORY[0x1E69E6158];
  *(inited + 472) = v114;
  *(inited + 480) = 0x68736E6565726353;
  *(inited + 488) = 0xEA0000000000746FLL;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5FFB5C()
{
  v234 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  strcpy((inited + 40), "WFGiphyAction");
  *(inited + 54) = -4864;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("gif|search", 10);
  v6 = v5;
  v7 = sub_1CA94C438("gif|search", 10);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v260 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v261 = v11;
  v12 = &v225 - v260;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v259 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v258 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v257 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v225 - v257;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v256 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v254 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  v246 = xmmword_1CA97EDF0;
  *(v20 + 16) = xmmword_1CA97EDF0;
  *(v20 + 32) = @"DescriptionNote";
  v21 = @"Description";
  v22 = @"DescriptionNote";
  v23 = sub_1CA94C438("Powered by Giphy (giphy.com)", 28);
  v251 = v24;
  v252 = v23;
  v250 = sub_1CA94C438("Powered by Giphy (giphy.com)", 28);
  v26 = v25;
  v253 = &v225;
  MEMORY[0x1EEE9AC00](v250);
  v27 = &v225 - v260;
  sub_1CA948D98();
  v28 = v259;
  v29 = [v259 bundleURL];
  v255 = inited;
  v30 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v31 = v257;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v20 + 40) = sub_1CA2F9F14(v252, v251, v250, v26, 0, 0, v27, &v225 - v31);
  v33 = v256;
  *(v20 + 64) = v256;
  *(v20 + 72) = @"DescriptionSummary";
  v34 = @"DescriptionSummary";
  v35 = sub_1CA94C438("Finds GIFs representing the provided text, using Giphy.", 55);
  v251 = v36;
  v252 = v35;
  v250 = sub_1CA94C438("Finds GIFs representing the provided text, using Giphy.", 55);
  v38 = v37;
  v253 = &v225;
  MEMORY[0x1EEE9AC00](v250);
  v39 = &v225 - v260;
  sub_1CA948D98();
  v40 = [v28 bundleURL];
  MEMORY[0x1EEE9AC00](v40);
  sub_1CA948B68();

  v41 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v42 = sub_1CA2F9F14(v252, v251, v250, v38, 0, 0, v39, &v225 - v31);
  *(v20 + 104) = v33;
  *(v20 + 80) = v42;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v43 = sub_1CA94C1E8();
  v44 = v254;
  v45 = sub_1CA6B3784(v43);
  v46 = v255;
  v255[15] = v45;
  v46[18] = v44;
  v46[19] = @"IconName";
  v46[20] = 0x7968706947;
  v46[21] = 0xE500000000000000;
  v46[23] = MEMORY[0x1E69E6158];
  v46[24] = @"Name";
  v47 = @"IconName";
  v48 = @"Name";
  v49 = sub_1CA94C438("Find Giphy GIFs (Action Name)", 29);
  v51 = v50;
  v52 = sub_1CA94C438("Find Giphy GIFs", 15);
  v54 = v53;
  v254 = &v225;
  MEMORY[0x1EEE9AC00](v52);
  v55 = v260;
  sub_1CA948D98();
  v56 = [v259 bundleURL];
  MEMORY[0x1EEE9AC00](v56);
  v57 = &v225 - v257;
  sub_1CA948B68();

  v58 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v59 = sub_1CA2F9F14(v49, v51, v52, v54, 0, 0, &v225 - v55, v57);
  v60 = v255;
  v255[25] = v59;
  v61 = v256;
  v60[28] = v256;
  v60[29] = @"Output";
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v62 = swift_initStackObject();
  v245 = xmmword_1CA981350;
  *(v62 + 16) = xmmword_1CA981350;
  *(v62 + 32) = 0x75736F6C63736944;
  *(v62 + 40) = 0xEF6C6576654C6572;
  *(v62 + 48) = 0x63696C627550;
  *(v62 + 56) = 0xE600000000000000;
  *(v62 + 72) = MEMORY[0x1E69E6158];
  *(v62 + 80) = 0x656C7069746C754DLL;
  *(v62 + 88) = 0xE800000000000000;
  v63 = MEMORY[0x1E69E6370];
  *(v62 + 96) = 1;
  *(v62 + 120) = v63;
  *(v62 + 128) = 0x614E74757074754FLL;
  *(v62 + 136) = 0xEA0000000000656DLL;
  v64 = @"Output";
  v65 = sub_1CA94C438("GIFs (Default Output Name)", 26);
  v253 = v66;
  v67 = sub_1CA94C438("GIFs", 4);
  v69 = v68;
  v254 = &v225;
  MEMORY[0x1EEE9AC00](v67);
  sub_1CA948D98();
  v70 = [v259 bundleURL];
  MEMORY[0x1EEE9AC00](v70);
  v71 = &v225 - v257;
  sub_1CA948B68();

  v72 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v62 + 144) = sub_1CA2F9F14(v65, v253, v67, v69, 0, 0, &v225 - v55, v71);
  *(v62 + 168) = v61;
  *(v62 + 176) = 0x7365707954;
  *(v62 + 184) = 0xE500000000000000;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v62 + 216) = v233;
  *(v62 + 192) = &unk_1F4A092E8;
  v73 = MEMORY[0x1E69E6158];
  v74 = sub_1CA94C1E8();
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v232 = v75;
  v76 = v255;
  v255[30] = v74;
  v76[33] = v75;
  v76[34] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v254 = swift_allocObject();
  *(v254 + 1) = xmmword_1CA981570;
  v253 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_1CA981380;
  *(v77 + 32) = @"AutocapitalizationType";
  *(v77 + 40) = 1701736270;
  *(v77 + 48) = 0xE400000000000000;
  *(v77 + 64) = v73;
  *(v77 + 72) = @"Class";
  *(v77 + 80) = 0xD000000000000014;
  *(v77 + 88) = 0x80000001CA99B500;
  *(v77 + 104) = v73;
  *(v77 + 112) = @"Key";
  strcpy((v77 + 120), "WFGiphyQuery");
  *(v77 + 133) = 0;
  *(v77 + 134) = -5120;
  *(v77 + 144) = v73;
  *(v77 + 152) = @"Label";
  v78 = @"Class";
  v79 = @"Key";
  v80 = @"Label";
  v81 = v78;
  v82 = v79;
  v83 = v80;
  v243 = v81;
  v247 = v82;
  v244 = v83;
  v84 = @"Parameters";
  v85 = @"AutocapitalizationType";
  v86 = sub_1CA94C438("Search (WFGiphyQuery)", 21);
  v248 = v87;
  v249 = v86;
  v88 = sub_1CA94C438("Search", 6);
  *&v242 = v89;
  v251 = &v225;
  MEMORY[0x1EEE9AC00](v88);
  v90 = &v225 - v260;
  sub_1CA948D98();
  v91 = [v259 bundleURL];
  MEMORY[0x1EEE9AC00](v91);
  v92 = v257;
  sub_1CA948B68();

  v93 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v77 + 160) = sub_1CA2F9F14(v249, v248, v88, v242, 0, 0, v90, &v225 - v92);
  v94 = v256;
  *(v77 + 184) = v256;
  *(v77 + 192) = @"Placeholder";
  v95 = @"Placeholder";
  v96 = sub_1CA94C438("Trending (WFGiphyQuery)", 23);
  v248 = v97;
  v249 = v96;
  *&v242 = sub_1CA94C438("Trending", 8);
  v99 = v98;
  v251 = &v225;
  MEMORY[0x1EEE9AC00](v242);
  v100 = &v225 - v260;
  sub_1CA948D98();
  v101 = [v259 bundleURL];
  MEMORY[0x1EEE9AC00](v101);
  sub_1CA948B68();

  v102 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v77 + 200) = sub_1CA2F9F14(v249, v248, v242, v99, 0, 0, v100, &v225 - v92);
  *(v77 + 224) = v94;
  *(v77 + 232) = @"TextAlignment";
  v103 = MEMORY[0x1E69E6158];
  *(v77 + 264) = MEMORY[0x1E69E6158];
  *(v77 + 240) = 0x7468676952;
  *(v77 + 248) = 0xE500000000000000;
  _s3__C3KeyVMa_0(0);
  v249 = v104;
  v248 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v105 = @"TextAlignment";
  v106 = sub_1CA94C1E8();
  v107 = sub_1CA2F864C(v106);
  *(v254 + 4) = v107;
  v108 = swift_allocObject();
  *(v108 + 16) = v245;
  v231 = 0x80000001CA99E620;
  v109 = v243;
  *(v108 + 32) = v243;
  *(v108 + 40) = 0xD000000000000011;
  *(v108 + 48) = 0x80000001CA99E620;
  *(v108 + 64) = v103;
  *(v108 + 72) = @"DefaultValue";
  *(v108 + 80) = 1;
  v110 = v247;
  *(v108 + 104) = MEMORY[0x1E69E6370];
  *(v108 + 112) = v110;
  v251 = 0x80000001CA9D4EA0;
  *(v108 + 120) = 0xD000000000000011;
  *(v108 + 128) = 0x80000001CA9D4EA0;
  v111 = v244;
  *(v108 + 144) = v103;
  *(v108 + 152) = v111;
  v112 = @"DefaultValue";
  v236 = v109;
  v235 = v110;
  v247 = v112;
  v113 = sub_1CA94C438("Show GIF Picker (WFGiphyShowPicker)", 35);
  v115 = v114;
  v116 = sub_1CA94C438("Show GIF Picker", 15);
  v118 = v117;
  v243 = &v225;
  MEMORY[0x1EEE9AC00](v116);
  v119 = &v225 - v260;
  sub_1CA948D98();
  v120 = [v259 bundleURL];
  MEMORY[0x1EEE9AC00](v120);
  v121 = &v225 - v257;
  sub_1CA948B68();

  v122 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v123 = sub_1CA2F9F14(v113, v115, v116, v118, 0, 0, v119, v121);
  *(v108 + 184) = v256;
  *(v108 + 160) = v123;
  v124 = sub_1CA94C1E8();
  v125 = sub_1CA2F864C(v124);
  *(v254 + 5) = v125;
  v126 = swift_allocObject();
  *(v126 + 16) = xmmword_1CA981400;
  *(v126 + 32) = v236;
  *(v126 + 40) = 0xD000000000000012;
  *(v126 + 48) = 0x80000001CA99B980;
  v127 = MEMORY[0x1E69E6158];
  v128 = v247;
  *(v126 + 64) = MEMORY[0x1E69E6158];
  *(v126 + 72) = v128;
  v129 = MEMORY[0x1E69E6530];
  *(v126 + 80) = 1;
  v130 = v235;
  *(v126 + 104) = v129;
  *(v126 + 112) = v130;
  strcpy((v126 + 120), "WFGiphyLimit");
  *(v126 + 133) = 0;
  *(v126 + 134) = -5120;
  *(v126 + 144) = v127;
  *(v126 + 152) = @"RequiredResources";
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v131 = swift_allocObject();
  v242 = xmmword_1CA981310;
  *(v131 + 16) = xmmword_1CA981310;
  v132 = swift_allocObject();
  v241 = xmmword_1CA9813C0;
  *(v132 + 16) = xmmword_1CA9813C0;
  strcpy((v132 + 32), "WFParameterKey");
  *(v132 + 47) = -18;
  v133 = v251;
  *(v132 + 48) = 0xD000000000000011;
  *(v132 + 56) = v133;
  v240 = 0x80000001CA993570;
  v247 = 0xD000000000000010;
  *(v132 + 72) = v127;
  *(v132 + 80) = 0xD000000000000010;
  *(v132 + 88) = 0x80000001CA993570;
  *(v132 + 96) = 0;
  *(v132 + 120) = MEMORY[0x1E69E6370];
  *(v132 + 128) = 0x72756F7365524657;
  *(v132 + 168) = v127;
  v238 = 0xD00000000000001BLL;
  v239 = 0x80000001CA993590;
  *(v132 + 136) = 0xEF7373616C436563;
  *(v132 + 144) = 0xD00000000000001BLL;
  *(v132 + 152) = 0x80000001CA993590;
  v230 = @"RequiredResources";
  *(v131 + 32) = sub_1CA94C1E8();
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  v237 = v134;
  *(v126 + 160) = v131;
  *(v126 + 184) = v134;
  *(v126 + 192) = @"StepperDescription";
  v135 = @"StepperDescription";
  v136 = sub_1CA94C438("Number of GIFs (WFGiphyLimit)", 29);
  v138 = v137;
  v139 = sub_1CA94C438("Number of GIFs", 14);
  v141 = v140;
  v229 = &v225;
  MEMORY[0x1EEE9AC00](v139);
  v142 = &v225 - v260;
  sub_1CA948D98();
  v143 = [v259 bundleURL];
  MEMORY[0x1EEE9AC00](v143);
  v144 = &v225 - v257;
  sub_1CA948B68();

  v145 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v126 + 200) = sub_1CA2F9F14(v136, v138, v139, v141, 0, 0, v142, v144);
  *(v126 + 224) = v256;
  *(v126 + 232) = @"StepperNoun";
  v146 = @"StepperNoun";
  v147 = sub_1CA94C438("%d GIFs", v225);
  v228 = v148;
  v229 = v147;
  v149 = v148;
  v266 = 0;
  v267 = 0xE000000000000000;
  sub_1CA94D408();

  v266 = v147;
  v267 = v149;
  v264 = 10;
  v265 = 0xE100000000000000;
  v262 = 32;
  v263 = 0xE100000000000000;
  sub_1CA27BAF0();
  v266 = sub_1CA94D1B8();
  v267 = v150;
  v151 = MEMORY[0x1CCAA1300](v247, 0x80000001CA99BA10);
  v227 = &v225;
  v152 = v266;
  v226 = v267;
  MEMORY[0x1EEE9AC00](v151);
  v153 = v260;
  sub_1CA948D98();
  v154 = v259;
  v155 = [v259 bundleURL];
  MEMORY[0x1EEE9AC00](v155);
  v156 = &v225 - v257;
  sub_1CA948B68();

  v157 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v126 + 240) = sub_1CA2F9F14(v152, v226, v229, v228, 0, 0, &v225 - v153, v156);
  v158 = v256;
  *(v126 + 264) = v256;
  *(v126 + 272) = @"StepperPrefix";
  v159 = @"StepperPrefix";
  v160 = sub_1CA94C438("Get (WFGiphyLimit)", 18);
  v227 = v161;
  v228 = v160;
  v162 = sub_1CA94C438("Get", 3);
  v226 = v163;
  v229 = &v225;
  MEMORY[0x1EEE9AC00](v162);
  v164 = &v225 - v153;
  sub_1CA948D98();
  v165 = [v154 bundleURL];
  MEMORY[0x1EEE9AC00](v165);
  v166 = v257;
  sub_1CA948B68();

  v167 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v168 = sub_1CA2F9F14(v228, v227, v162, v226, 0, 0, v164, &v225 - v166);
  *(v126 + 304) = v158;
  *(v126 + 280) = v168;
  v169 = sub_1CA94C1E8();
  v170 = sub_1CA2F864C(v169);
  *(v254 + 6) = v170;
  v171 = swift_allocObject();
  *(v171 + 16) = v245;
  *(v171 + 32) = v236;
  *(v171 + 40) = 0xD000000000000011;
  *(v171 + 48) = v231;
  v172 = MEMORY[0x1E69E6158];
  v173 = v235;
  *(v171 + 64) = MEMORY[0x1E69E6158];
  *(v171 + 72) = v173;
  *(v171 + 80) = 0xD000000000000015;
  *(v171 + 88) = 0x80000001CA9D4F60;
  v174 = v244;
  *(v171 + 104) = v172;
  *(v171 + 112) = v174;
  *&v245 = sub_1CA94C438("Select Multiple (WFGiphySelectMultiple)", 39);
  v176 = v175;
  v177 = sub_1CA94C438("Select Multiple", 15);
  v179 = v178;
  v250 = &v225;
  MEMORY[0x1EEE9AC00](v177);
  v180 = &v225 - v260;
  sub_1CA948D98();
  v181 = [v259 bundleURL];
  MEMORY[0x1EEE9AC00](v181);
  sub_1CA948B68();

  v182 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v171 + 120) = sub_1CA2F9F14(v245, v176, v177, v179, 0, 0, v180, &v225 - v166);
  v183 = v230;
  *(v171 + 144) = v256;
  *(v171 + 152) = v183;
  v184 = swift_allocObject();
  *(v184 + 16) = v242;
  v185 = swift_allocObject();
  *(v185 + 16) = v241;
  strcpy((v185 + 32), "WFParameterKey");
  *(v185 + 47) = -18;
  *(v185 + 48) = 0xD000000000000011;
  *(v185 + 56) = v251;
  v186 = MEMORY[0x1E69E6158];
  v187 = v247;
  *(v185 + 72) = MEMORY[0x1E69E6158];
  *(v185 + 80) = v187;
  *(v185 + 88) = v240;
  *(v185 + 96) = 1;
  *(v185 + 120) = MEMORY[0x1E69E6370];
  *(v185 + 128) = 0x72756F7365524657;
  *(v185 + 168) = v186;
  *(v185 + 136) = 0xEF7373616C436563;
  v188 = v239;
  *(v185 + 144) = v238;
  *(v185 + 152) = v188;
  *(v184 + 32) = sub_1CA94C1E8();
  *(v171 + 184) = v237;
  *(v171 + 160) = v184;
  v189 = sub_1CA94C1E8();
  v190 = sub_1CA2F864C(v189);
  v191 = v254;
  *(v254 + 7) = v190;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v193 = v255;
  v255[35] = v191;
  v193[38] = v192;
  v193[39] = @"ParameterSummary";
  v194 = @"ParameterSummary";
  v195 = sub_1CA94C438("Find ${WFGiphyQuery} GIFs on Giphy (Parameter Summary)", 54);
  v197 = v196;
  v198 = sub_1CA94C438("Find ${WFGiphyQuery} GIFs on Giphy", 34);
  v200 = v199;
  MEMORY[0x1EEE9AC00](v198);
  v201 = &v225 - v260;
  sub_1CA948D98();
  v202 = [v259 bundleURL];
  MEMORY[0x1EEE9AC00](v202);
  v203 = &v225 - v257;
  sub_1CA948B68();

  v204 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v205 = sub_1CA2F9F14(v195, v197, v198, v200, 0, 0, v201, v203);
  v206 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v207 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v208 = v255;
  v255[40] = v206;
  v208[43] = v207;
  v208[44] = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v209 = swift_allocObject();
  *(v209 + 16) = v246;
  v210 = swift_initStackObject();
  *(v210 + 16) = v246;
  *(v210 + 32) = 0xD000000000000011;
  *(v210 + 40) = 0x80000001CA99B240;
  v211 = swift_allocObject();
  *(v211 + 16) = v242;
  v212 = swift_allocObject();
  *(v212 + 16) = v241;
  strcpy((v212 + 32), "WFParameterKey");
  *(v212 + 47) = -18;
  *(v212 + 48) = 0xD000000000000011;
  *(v212 + 56) = v251;
  v213 = MEMORY[0x1E69E6158];
  v214 = v247;
  *(v212 + 72) = MEMORY[0x1E69E6158];
  *(v212 + 80) = v214;
  *(v212 + 88) = v240;
  *(v212 + 96) = 1;
  *(v212 + 120) = MEMORY[0x1E69E6370];
  *(v212 + 128) = 0x72756F7365524657;
  *(v212 + 168) = v213;
  v216 = v238;
  v215 = v239;
  *(v212 + 136) = 0xEF7373616C436563;
  *(v212 + 144) = v216;
  *(v212 + 152) = v215;
  v217 = @"RequiredResources";
  *(v211 + 32) = sub_1CA94C1E8();
  *(v210 + 48) = v211;
  *(v210 + 72) = v237;
  *(v210 + 80) = 0x72756F7365524657;
  *(v210 + 120) = v213;
  *(v210 + 88) = 0xEF7373616C436563;
  *(v210 + 96) = 0xD000000000000019;
  *(v210 + 104) = 0x80000001CA9932D0;
  *(v209 + 32) = sub_1CA94C1E8();
  *(v209 + 88) = v213;
  *(v209 + 56) = v232;
  *(v209 + 64) = 0xD00000000000001CLL;
  *(v209 + 72) = 0x80000001CA993620;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  v219 = v255;
  v255[45] = v209;
  v219[48] = v218;
  v219[49] = @"UserInterfaceClasses";
  v220 = @"UserInterfaceClasses";
  v221 = sub_1CA94C1E8();
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v219[50] = v221;
  v219[53] = v222;
  v219[54] = @"UserInterfaces";
  v219[58] = v233;
  v219[55] = &unk_1F4A09378;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v223 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}