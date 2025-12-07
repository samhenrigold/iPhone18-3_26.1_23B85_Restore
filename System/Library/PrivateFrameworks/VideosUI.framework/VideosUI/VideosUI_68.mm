void sub_1E3BA1224(void *a1)
{
  v3 = v1[24];
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_17_75();
  }

  else
  {
    v1 = 0;
  }

  swift_unknownObjectWeakInit();

  OUTLINED_FUNCTION_25();
  if (v3)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_unknownObjectWeakLoadStrong();
      OUTLINED_FUNCTION_17_75();
    }

    else
    {
      v1 = 0;
    }

    swift_unknownObjectWeakInit();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_22;
    }

    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = [a1 virtualMachine];
      if (v8)
      {
        v9 = v8;
        [v8 removeManagedReference:v7 withOwner:v5];

        OUTLINED_FUNCTION_25();
        swift_beginAccess();
        v10 = swift_weakLoadStrong();

        MEMORY[0x1E69144A0](v17);
        MEMORY[0x1E69144A0](v18);
        if (v10)
        {
          goto LABEL_20;
        }

        return;
      }

      __break(1u);
LABEL_25:
      __break(1u);
      return;
    }

LABEL_21:

LABEL_22:
    MEMORY[0x1E69144A0](v17);
    MEMORY[0x1E69144A0](v18);
    return;
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_unknownObjectWeakLoadStrong();
    OUTLINED_FUNCTION_17_75();
  }

  else
  {
    v1 = 0;
  }

  swift_unknownObjectWeakInit();

  v11 = swift_unknownObjectWeakLoadStrong();
  if (!v11)
  {
    goto LABEL_22;
  }

  v5 = v11;
  v12 = swift_unknownObjectWeakLoadStrong();
  if (!v12)
  {
    goto LABEL_21;
  }

  v13 = v12;
  v14 = [a1 virtualMachine];
  if (!v14)
  {
    goto LABEL_25;
  }

  v15 = v14;
  [v14 removeManagedReference:v13 withOwner:v5];

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v16 = swift_weakLoadStrong();

  MEMORY[0x1E69144A0](v17);
  MEMORY[0x1E69144A0](v18);
  if (v16)
  {
LABEL_20:
    swift_unknownObjectWeakAssign();
  }
}

double sub_1E3BA1488()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_4_0();
    v4 = swift_allocObject();
    OUTLINED_FUNCTION_31_3(v4);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF343A8, &unk_1E42BF770);
    OUTLINED_FUNCTION_119(v5);
    sub_1E4200614();
    OUTLINED_FUNCTION_4_0();
    v6 = swift_allocObject();
    OUTLINED_FUNCTION_31_3(v6);
    OUTLINED_FUNCTION_5_10();
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = v1;
    v7[4] = v2;

    sub_1E41EC148(sub_1E3BA15D0, v7);

    OUTLINED_FUNCTION_31_43(v8, v9, v10, v11, v12, v13, v14, v15, v16);
    sub_1E42004C4();
    swift_endAccess();
  }

  return result;
}

double sub_1E3BA15D0(uint64_t *a1)
{
  v3 = *(v1 + 24);
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *(a1 + 17);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v9 = OUTLINED_FUNCTION_3_133();
    sub_1E3BA17A4(v9, v10, v11, v12);
    v13 = swift_allocObject();
    OUTLINED_FUNCTION_25_59(v13);
    v14 = objc_opt_self();

    v15 = OUTLINED_FUNCTION_3_133();
    v19 = [v14 currentThread];
    v20 = [v19 isMainThread];

    if (v20)
    {
      v3(v4, v5, v6 | (v7 << 8));
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v22 = Strong;
        OUTLINED_FUNCTION_2_4();
        v23 = swift_allocObject();
        *(v23 + 16) = sub_1E3BA20BC;
        *(v23 + 24) = v2;
        v34 = sub_1E379E500;
        v35 = v23;
        OUTLINED_FUNCTION_8_96();
        v31 = 1107296256;
        OUTLINED_FUNCTION_0_163();
        v32 = v24;
        v33 = &block_descriptor_51_1;
        v25 = _Block_copy(aBlock);

        [v22 evaluateDelegateBlockSync_];
        _Block_release(v25);
      }
    }

    v26 = OUTLINED_FUNCTION_3_133();
    sub_1E3BA1804(v26, v27, v28, v29);
  }

  return result;
}

double sub_1E3BA17A4(uint64_t a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  if (a4)
  {

    sub_1E3781F8C(a1, a2, a3);
  }

  else
  {
  }

  return result;
}

double sub_1E3BA1804(uint64_t a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  if (a4)
  {

    sub_1E37B5ACC(a1, a2, a3);
  }

  else
  {
  }

  return result;
}

void sub_1E3BA18B0(void (*a1)(void *, __n128), uint64_t a2)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  OUTLINED_FUNCTION_2_4();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = v5;
    *(v10 + 32) = sub_1E3BA20B8;
    *(v10 + 40) = v7;
    OUTLINED_FUNCTION_5_10();
    v11 = swift_allocObject();
    v11[2] = v9;
    v11[3] = sub_1E3BA20B8;
    v11[4] = v7;
    swift_retain_n();
    swift_retain_n();

    v22 = sub_1E4205ED4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1E4299720;
    v13 = v6;
    v14 = [v6 context];
    if (v14)
    {
      v15 = v14;
      v16 = sub_1E3A246B8();
      v17 = sub_1E3A242D8(v15, sub_1E3BA1B34, v10);

      *(v12 + 56) = v16;
      *(v12 + 32) = v17;
      v18 = [v13 context];
      if (v18)
      {
        v19 = v18;

        v20 = sub_1E3A242D8(v19, sub_1E3BA1BAC, v11);

        *(v12 + 88) = v16;
        *(v12 + 64) = v20;
        v21 = sub_1E3A49FB0(v22, v12, v13);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {

    v23[0] = 0xD000000000000069;
    v23[1] = 0x80000001E42747D0;
    v24 = 257;
    (a1)(v23);
  }
}

id sub_1E3BA1B34(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1E3B9F954(a3, *(v3 + 24), *(v3 + 32), *(v3 + 40));
  result = [objc_opt_self() valueWithUndefinedInContext_];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_1E3BA1BAC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1E3BA071C(a3, *(v3 + 24));
  result = [objc_opt_self() valueWithUndefinedInContext_];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

double sub_1E3BA1C20(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_4();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_4_0();
    v5 = swift_allocObject();
    OUTLINED_FUNCTION_31_3(v5);
    OUTLINED_FUNCTION_5_10();
    v6 = swift_allocObject();
    v6[2] = v5;
    v6[3] = sub_1E3BA20B8;
    v6[4] = v4;

    sub_1E41EC148(sub_1E3BA1D80, v6);

    OUTLINED_FUNCTION_31_43(v7, v8, v9, v10, v11, v12, v13, v14, v16);
    sub_1E42004C4();
    swift_endAccess();
  }

  else
  {
  }

  return result;
}

uint64_t sub_1E3BA1D40(uint64_t a1, uint64_t a2, __int16 a3)
{
  v4 = *(v3 + 16);
  v6[0] = a1;
  v6[1] = a2;
  v7 = a3 & 0x1FF;
  return v4(v6);
}

double sub_1E3BA1D80(uint64_t *a1)
{
  v3 = *(v1 + 24);
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *(a1 + 17);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v9 = OUTLINED_FUNCTION_3_133();
    sub_1E3BA17A4(v9, v10, v11, v12);
    v13 = swift_allocObject();
    OUTLINED_FUNCTION_25_59(v13);
    v14 = objc_opt_self();

    v15 = OUTLINED_FUNCTION_3_133();
    v19 = [v14 currentThread];
    v20 = [v19 isMainThread];

    if (v20)
    {
      v3(v4, v5, v6 | (v7 << 8));
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v22 = Strong;
        OUTLINED_FUNCTION_2_4();
        v23 = swift_allocObject();
        *(v23 + 16) = sub_1E3BA1F9C;
        *(v23 + 24) = v2;
        v34 = sub_1E37D1918;
        v35 = v23;
        OUTLINED_FUNCTION_8_96();
        v31 = 1107296256;
        OUTLINED_FUNCTION_0_163();
        v32 = v24;
        v33 = &block_descriptor_109_1;
        v25 = _Block_copy(aBlock);

        [v22 evaluateDelegateBlockSync_];
        _Block_release(v25);
      }
    }

    v26 = OUTLINED_FUNCTION_3_133();
    sub_1E3BA1804(v26, v27, v28, v29);
  }

  return result;
}

uint64_t objectdestroy_44Tm()
{

  sub_1E3BA1804(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 49));

  return swift_deallocObject();
}

uint64_t sub_1E3BA1FE8()
{
  v1 = *(v0 + 16);

  v1(v2, 0, 0);
}

uint64_t OUTLINED_FUNCTION_32_51()
{

  return swift_beginAccess();
}

void sub_1E3BA2110(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v106 = a2;
  v111 = *MEMORY[0x1E69E9840];
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v104 = v8;
  v105 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = OUTLINED_FUNCTION_7_130();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v108 = &v99 - v20;
  sub_1E328438C(a3, &v109);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if (!swift_dynamicCast())
  {
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
    v38 = OUTLINED_FUNCTION_41_3(v37);
    *(v38 + 16) = xmmword_1E4297BE0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
    inited = swift_initStackObject();
    v40 = OUTLINED_FUNCTION_0_164(inited, xmmword_1E4299720);
    v40[2].n128_u64[0] = v41;
    v40[2].n128_u64[1] = v42;
    v43 = OUTLINED_FUNCTION_1_163(v40, MEMORY[0x1E69E6370]);
    OUTLINED_FUNCTION_2_130(v43, MEMORY[0x1E69E6158], v44);
    v45 = sub_1E4205CB4();
    *(v38 + 56) = v21;
    *(v38 + 32) = v45;

    return;
  }

  v102 = v21;
  v103 = a4;
  v22 = [objc_opt_self() defaultManager];
  v23 = [v22 URLsForDirectory:9 inDomains:1];
  v24 = sub_1E42062B4();
  v107 = v12;
  v25 = v24;

  sub_1E39D0EE8(v25, v4);
  v26 = v107;

  if (__swift_getEnumTagSinglePayload(v4, 1, v26) == 1)
  {

    sub_1E3ABE43C(v4);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
    v28 = OUTLINED_FUNCTION_41_3(v27);
    *(v28 + 16) = xmmword_1E4297BE0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
    v29 = swift_initStackObject();
    v30 = OUTLINED_FUNCTION_0_164(v29, xmmword_1E4299720);
    v31 = MEMORY[0x1E69E6370];
    v30[2].n128_u64[0] = v32;
    v30[2].n128_u64[1] = v33;
    v30[3].n128_u8[0] = 0;
    v30[4].n128_u64[1] = v31;
    v30[5].n128_u64[0] = 0x726F727265;
    v30[7].n128_u64[1] = MEMORY[0x1E69E6158];
    v30[5].n128_u64[1] = 0xE500000000000000;
    v30[6].n128_u64[0] = 0xD000000000000021;
    v30[6].n128_u64[1] = 0x80000001E4274870;
    v34 = sub_1E4205CB4();
    v35 = v103;
    *(v28 + 56) = v102;
    *(v28 + 32) = v34;
    v36 = sub_1E394E11C(v28, v35);

    return;
  }

  v46 = v14;
  (*(v14 + 32))(v108, v4, v26);
  sub_1E41FE394();
  v47 = objc_opt_self();
  v48 = sub_1E4205C44();
  v109 = 0;
  v99 = v47;
  v49 = [v47 dataWithPropertyList:v48 format:100 options:0 error:&v109];

  v50 = v109;
  v100 = v22;
  v101 = v18;
  if (v49)
  {
    v51 = sub_1E41FE464();
    v53 = v52;

    sub_1E41FE474();
    v106 = v53;

    v68 = sub_1E324FBDC();
    v70 = v104;
    v69 = v105;
    (*(v104 + 16))(v10, v68, v105);
    v71 = sub_1E41FFC94();
    v72 = sub_1E42067D4();
    if (os_log_type_enabled(v71, v72))
    {
      v74 = OUTLINED_FUNCTION_125_0();
      *v74 = 0;
      _os_log_impl(&dword_1E323F000, v71, v72, "NativeStorage: store plist successful", v74, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    (*(v70 + 8))(v10, v69);
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
    *(OUTLINED_FUNCTION_41_3(v75) + 16) = xmmword_1E4297BE0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC60, &qword_1E42D7E80);
    sub_1E4205CB4();
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF343B0, &qword_1E42BF810);
    v77 = OUTLINED_FUNCTION_4_138(v76);

    sub_1E38DCCB0(v51, v106);
    goto LABEL_17;
  }

  v54 = v50;
  v55 = sub_1E41FE274();

  v106 = v55;
  swift_willThrow();
  v56 = sub_1E41FE364();
  v109 = 0;
  v57 = [v22 removeItemAtURL:v56 error:&v109];

  v58 = v102;
  if (!v57)
  {
    v66 = v109;

    v67 = sub_1E41FE274();

LABEL_15:
    swift_willThrow();
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
    v80 = OUTLINED_FUNCTION_41_3(v79);
    *(v80 + 16) = xmmword_1E4297BE0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
    v81 = swift_initStackObject();
    v82 = OUTLINED_FUNCTION_0_164(v81, xmmword_1E4299720);
    v82[2].n128_u64[0] = v83;
    v82[2].n128_u64[1] = v84;
    v85 = OUTLINED_FUNCTION_1_163(v82, MEMORY[0x1E69E6370]);
    *(v85 + 88) = v86;
    v109 = 0;
    v110 = 0xE000000000000000;
    sub_1E42074B4();

    v109 = 0xD000000000000023;
    v110 = 0x80000001E42748A0;
    swift_getErrorValue();
    v87 = sub_1E4207AB4();
    MEMORY[0x1E69109E0](v87);

    v88 = v109;
    v89 = v110;
    v81[7].n128_u64[1] = MEMORY[0x1E69E6158];
    v81[6].n128_u64[0] = v88;
    v81[6].n128_u64[1] = v89;
    v90 = sub_1E4205CB4();
    *(v80 + 56) = v58;
    *(v80 + 32) = v90;
    v91 = sub_1E394E11C(v80, v103);

    v98 = v67;
    goto LABEL_16;
  }

  v59 = v109;
  v60 = sub_1E4205C44();

  v109 = 0;
  v61 = [v99 dataWithPropertyList:v60 format:100 options:0 error:&v109];

  v62 = v109;
  if (!v61)
  {
    v78 = v62;
    v67 = sub_1E41FE274();

    goto LABEL_15;
  }

  v63 = sub_1E41FE464();
  v65 = v64;

  sub_1E41FE474();
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
  v95 = OUTLINED_FUNCTION_41_3(v94);
  *(v95 + 16) = xmmword_1E4297BE0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC60, &qword_1E42D7E80);
  v96 = sub_1E4205CB4();
  *(v95 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF343B0, &qword_1E42BF810);
  *(v95 + 32) = v96;
  v97 = sub_1E394E11C(v95, v103);

  sub_1E38DCCB0(v63, v65);
  v98 = v106;
LABEL_16:

LABEL_17:
  v92 = *(v46 + 8);
  v93 = v107;
  v92(v101, v107);
  v92(v108, v93);
}

void sub_1E3BA2B8C(unint64_t a1, uint64_t a2, void *a3)
{
  v108 = a3;
  v104 = a1;
  v105 = a2;
  v111 = *MEMORY[0x1E69E9840];
  v106 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v103 = &v99 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v102 = &v99 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = OUTLINED_FUNCTION_7_130();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v99 - v23;
  v107 = [objc_opt_self() defaultManager];
  v25 = [v107 URLsForDirectory:9 inDomains:1];
  v26 = sub_1E42062B4();

  sub_1E39D0EE8(v26, v3);

  if (__swift_getEnumTagSinglePayload(v3, 1, v15) == 1)
  {
    sub_1E3ABE43C(v3);
    v27 = sub_1E324FBDC();
    v28 = v5;
    v29 = v106;
    (*(v5 + 16))(v9, v27, v106);
    v30 = sub_1E41FFC94();
    v31 = sub_1E42067F4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = OUTLINED_FUNCTION_125_0();
      *v32 = 0;
      _os_log_impl(&dword_1E323F000, v30, v31, "NativeStorage: Error occurred while reading Unable to access document directory:", v32, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    (*(v28 + 8))(v9, v29);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
    *(OUTLINED_FUNCTION_41_3(v33) + 16) = xmmword_1E4297BE0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
    inited = swift_initStackObject();
    v35 = OUTLINED_FUNCTION_0_164(inited, xmmword_1E4299720);
    v35[2].n128_u64[0] = v36;
    v35[2].n128_u64[1] = v37;
    v38 = OUTLINED_FUNCTION_1_163(v35, MEMORY[0x1E69E6370]);
    OUTLINED_FUNCTION_2_130(v38, MEMORY[0x1E69E6158], v39);
    sub_1E4205CB4();
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    v41 = OUTLINED_FUNCTION_4_138(v40);
    v42 = sub_1E394E11C(v41, v108);
  }

  else
  {
    v101 = v5;
    v43 = v106;
    (*(v17 + 32))(v24, v3, v15);
    sub_1E41FE394();
    v44 = sub_1E41FE424();
    v45 = v17;
    v46 = v21;
    v47 = v24;
    v105 = v46;
    v61 = v44;
    v63 = v62;
    v64 = objc_opt_self();
    v65 = sub_1E41FE454();
    v110[0] = 0;
    v66 = [v64 propertyListWithData:v65 options:2 format:0 error:v110];

    if (v66)
    {
      v100 = v61;
      v104 = v63;
      v67 = v110[0];
      sub_1E4207264();
      swift_unknownObjectRelease();
      v68 = sub_1E3BA3590();
      if (swift_dynamicCast())
      {
        v103 = v15;
        v69 = v47;
        v70 = v109;
        v71 = sub_1E324FBDC();
        (*(v101 + 16))(v102, v71, v43);
        v72 = sub_1E41FFC94();
        v73 = sub_1E42067D4();
        v74 = os_log_type_enabled(v72, v73);
        v75 = v105;
        if (v74)
        {
          v76 = OUTLINED_FUNCTION_125_0();
          *v76 = 0;
          _os_log_impl(&dword_1E323F000, v72, v73, "NativeStorage: file read succeeded", v76, 2u);
          OUTLINED_FUNCTION_6_0();
        }

        (*(v101 + 8))(v102, v43);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
        v77 = swift_allocObject();
        *(v77 + 16) = xmmword_1E4299720;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC60, &qword_1E42D7E80);
        v78 = sub_1E4205CB4();
        v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF343B0, &qword_1E42BF810);
        *(v77 + 32) = v78;
        *(v77 + 88) = v68;
        *(v77 + 56) = v79;
        *(v77 + 64) = v70;
        v80 = v70;
        v81 = sub_1E394E11C(v77, v108);
        sub_1E38DCCB0(v100, v104);

        v47 = v69;
        v15 = v103;
      }

      else
      {
        v84 = sub_1E324FBDC();
        (*(v101 + 16))(v103, v84, v43);
        v85 = sub_1E41FFC94();
        v86 = sub_1E42067F4();
        v87 = os_log_type_enabled(v85, v86);
        v75 = v105;
        if (v87)
        {
          v88 = OUTLINED_FUNCTION_125_0();
          *v88 = 0;
          _os_log_impl(&dword_1E323F000, v85, v86, "NativeStorage: Error occurred while reading dictionary to plist: Unable to access document directory", v88, 2u);
          OUTLINED_FUNCTION_6_0();
        }

        (*(v101 + 8))(v103, v43);
        v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
        *(OUTLINED_FUNCTION_41_3(v89) + 16) = xmmword_1E4297BE0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
        v90 = swift_initStackObject();
        v91 = OUTLINED_FUNCTION_0_164(v90, xmmword_1E4299720);
        v91[2].n128_u64[0] = v92;
        v91[2].n128_u64[1] = v93;
        v94 = OUTLINED_FUNCTION_1_163(v91, MEMORY[0x1E69E6370]);
        OUTLINED_FUNCTION_2_130(v94, MEMORY[0x1E69E6158], v95);
        sub_1E4205CB4();
        v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
        v97 = OUTLINED_FUNCTION_4_138(v96);
        v98 = sub_1E394E11C(v97, v108);
        sub_1E38DCCB0(v100, v104);
      }
    }

    else
    {
      v82 = v110[0];
      v83 = sub_1E41FE274();

      swift_willThrow();
      sub_1E38DCCB0(v61, v63);
      v75 = v105;
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
      v49 = OUTLINED_FUNCTION_41_3(v48);
      *(v49 + 16) = xmmword_1E4297BE0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
      v50 = swift_initStackObject();
      v51 = OUTLINED_FUNCTION_0_164(v50, xmmword_1E4299720);
      v51[2].n128_u64[0] = v52;
      v51[2].n128_u64[1] = v53;
      v54 = OUTLINED_FUNCTION_1_163(v51, MEMORY[0x1E69E6370]);
      *(v54 + 88) = v55;
      swift_getErrorValue();
      v56 = sub_1E4207AB4();
      v50[7].n128_u64[1] = MEMORY[0x1E69E6158];
      v50[6].n128_u64[0] = v56;
      v50[6].n128_u64[1] = v57;
      v58 = sub_1E4205CB4();
      *(v49 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
      *(v49 + 32) = v58;
      v59 = sub_1E394E11C(v49, v108);
    }

    v60 = *(v45 + 8);
    v60(v75, v15);
    v60(v47, v15);
  }
}

unint64_t sub_1E3BA3590()
{
  result = qword_1EE23B398;
  if (!qword_1EE23B398)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23B398);
  }

  return result;
}

unint64_t sub_1E3BA35F8()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_50();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3BA363C(char a1)
{
  result = 0x6B63696C63;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_34_42(0x697461636F6CLL);
      break;
    case 2:
      result = 0x6973736572706D69;
      break;
    case 3:
      result = 1701273968;
      break;
    case 4:
      result = 0x676F6C616964;
      break;
    case 5:
      result = 0x65726F6E6769;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E3BA36EC(unsigned __int8 a1, char a2)
{
  v2 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0x7865646E69;
    }

    else
    {
      v3 = 0x4363696D616E7964;
    }

    if (v2 == 1)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xEE007365676E6168;
    }
  }

  else
  {
    v3 = 0xD000000000000012;
    v4 = 0x80000001E42749D0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v5 = 0x7865646E69;
    }

    else
    {
      v5 = 0x4363696D616E7964;
    }

    if (a2 == 1)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xEE007365676E6168;
    }
  }

  else
  {
    v5 = 0xD000000000000012;
    v6 = 0x80000001E42749D0;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3BA37F8(unsigned __int8 a1, char a2)
{
  v2 = 0x6E6F74747562;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x6E6F74747562;
  switch(v4)
  {
    case 1:
      v3 = 0xE300000000000000;
      v5 = 6447476;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1919251317;
      break;
    case 3:
      v5 = 0x70756B636F6CLL;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE300000000000000;
      v2 = 6447476;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1919251317;
      break;
    case 3:
      v2 = 0x70756B636F6CLL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3BA3910(unsigned __int8 a1, char a2)
{
  v2 = 6579297;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 6579297;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x657461676976616ELL;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x7463656C6573;
      break;
    case 3:
      v3 = 0xE600000000000000;
      v5 = 0x747265736E69;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE800000000000000;
      v2 = 0x657461676976616ELL;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x7463656C6573;
      break;
    case 3:
      v6 = 0xE600000000000000;
      v2 = 0x747265736E69;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3BA3A48(unsigned __int8 a1, char a2)
{
  v2 = 0xEB00000000736E6FLL;
  v3 = 0x6973736572706D69;
  v4 = a1;
  v5 = 0x6973736572706D69;
  v6 = 0xEB00000000736E6FLL;
  switch(v4)
  {
    case 1:
      v5 = 0x6C65536B63696C63;
      v6 = 0xEB00000000746365;
      break;
    case 2:
      v5 = 0x616C506B63696C63;
      v6 = 0xEF6E6F7474754279;
      break;
    case 3:
      v5 = 0x6E6F4C6B63696C63;
      v6 = 0xEE00737365725067;
      break;
    case 4:
      v6 = 0xE600000000000000;
      v5 = 0x686372616573;
      break;
    case 5:
      v6 = 0xE700000000000000;
      v5 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x6C65536B63696C63;
      v2 = 0xEB00000000746365;
      break;
    case 2:
      v3 = 0x616C506B63696C63;
      v2 = 0xEF6E6F7474754279;
      break;
    case 3:
      v3 = 0x6E6F4C6B63696C63;
      v2 = 0xEE00737365725067;
      break;
    case 4:
      v2 = 0xE600000000000000;
      v3 = 0x686372616573;
      break;
    case 5:
      v2 = 0xE700000000000000;
      v3 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3BA3C34(unsigned __int8 a1, char a2)
{
  v2 = 0xEC000000746E6574;
  v3 = 0x6E6F43746C756461;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x73736563656E6E75;
    }

    else
    {
      v5 = 0x6C6F686563616C70;
    }

    if (v4 == 1)
    {
      v6 = 0xEB00000000797261;
    }

    else
    {
      v6 = 0xEB00000000726564;
    }
  }

  else
  {
    v5 = 0x6E6F43746C756461;
    v6 = 0xEC000000746E6574;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x73736563656E6E75;
    }

    else
    {
      v3 = 0x6C6F686563616C70;
    }

    if (a2 == 1)
    {
      v2 = 0xEB00000000797261;
    }

    else
    {
      v2 = 0xEB00000000726564;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3BA3D54(unsigned __int8 a1, char a2)
{
  v2 = 0x6B63696C63;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x6B63696C63;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x6E6F697461636F6CLL;
      break;
    case 2:
      v5 = 0x6973736572706D69;
      v3 = 0xEB00000000736E6FLL;
      break;
    case 3:
      v3 = 0xE400000000000000;
      v5 = 1701273968;
      break;
    case 4:
      v3 = 0xE600000000000000;
      v5 = 0x676F6C616964;
      break;
    case 5:
      v3 = 0xE600000000000000;
      v5 = 0x65726F6E6769;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE800000000000000;
      v2 = 0x6E6F697461636F6CLL;
      break;
    case 2:
      v2 = 0x6973736572706D69;
      v6 = 0xEB00000000736E6FLL;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v2 = 1701273968;
      break;
    case 4:
      v6 = 0xE600000000000000;
      v2 = 0x676F6C616964;
      break;
    case 5:
      v6 = 0xE600000000000000;
      v2 = 0x65726F6E6769;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3BA3F28()
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

uint64_t sub_1E3BA3F80()
{
  OUTLINED_FUNCTION_71_1();
  v2 = v0(v1);
  OUTLINED_FUNCTION_18_0(v2, v3, v4);

  return sub_1E4207BA4();
}

uint64_t sub_1E3BA3FD4()
{
  OUTLINED_FUNCTION_71_1();
  v0(v3, v1);
  return sub_1E4207BA4();
}

uint64_t sub_1E3BA401C(uint64_t a1, unsigned __int8 a2)
{
  sub_1E4206014();
}

uint64_t sub_1E3BA40D0(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E3BA416C(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E3BA4214(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E3BA42F0(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E3BA43FC(uint64_t a1, unsigned __int8 a2)
{
  sub_1E4206014();
}

uint64_t sub_1E3BA44D0(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3BA4588(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_1E4207B44();
  v5 = a3(a2);
  OUTLINED_FUNCTION_18_0(v5, v6, v7);

  return sub_1E4207BA4();
}

uint64_t sub_1E3BA45DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(_BYTE *, uint64_t))
{
  sub_1E4207B44();
  a3(v6, a2);
  return sub_1E4207BA4();
}

uint64_t sub_1E3BA4628(uint64_t a1)
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

uint64_t sub_1E3BA467C(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

unint64_t sub_1E3BA4728(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3BA35F8();
  *v1 = result;
  return result;
}

uint64_t sub_1E3BA4750()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E3BA363C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_1E3BA4780()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_50();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1E3BA47C4(char a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_24_50();
  }

  if (a1 == 1)
  {
    return 0x7865646E69;
  }

  return 0x4363696D616E7964;
}

unint64_t sub_1E3BA483C(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3BA4780();
  *v1 = result;
  return result;
}

unint64_t sub_1E3BA4864()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E3BA47C4(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

BOOL sub_1E3BA4894()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_50();

  return v0 != 0;
}

BOOL sub_1E3BA48EC(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3BA4894();
  *v1 = result;
  return result;
}

unint64_t sub_1E3BA4918@<X0>(void *a1@<X8>)
{
  result = sub_1E3BA48D4();
  *a1 = 0xD000000000000012;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E3BA4968(unsigned __int8 a1)
{
  if (a1 >= 5u)
  {
    return 5;
  }

  else
  {
    return (0x305010205uLL >> (8 * a1));
  }
}

unint64_t sub_1E3BA4994()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_50();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3BA49D8(char a1)
{
  result = 0x6973736572706D69;
  switch(a1)
  {
    case 1:
      result = 0x6C65536B63696C63;
      break;
    case 2:
      result = 0x616C506B63696C63;
      break;
    case 3:
      result = OUTLINED_FUNCTION_34_42(0x4C6B63696C63);
      break;
    case 4:
      result = 0x686372616573;
      break;
    case 5:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1E3BA4B20(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3BA4994();
  *v1 = result;
  return result;
}

uint64_t sub_1E3BA4B48()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E3BA49D8(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_1E3BA4B78()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_50();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3BA4BBC(char a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_34_42(0x43746C756461);
  }

  if (a1 == 1)
  {
    return 0x73736563656E6E75;
  }

  return 0x6C6F686563616C70;
}

unint64_t sub_1E3BA4C4C(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3BA4B78();
  *v1 = result;
  return result;
}

uint64_t sub_1E3BA4C74()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E3BA4BBC(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

VideosUI::MetricsTargetType_optional __swiftcall MetricsTargetType.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_50();

  if (v1 >= 4)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

uint64_t MetricsTargetType.rawValue.getter(char a1)
{
  result = 0x6E6F74747562;
  switch(a1)
  {
    case 1:
      result = 6447476;
      break;
    case 2:
      result = 1919251317;
      break;
    case 3:
      result = 0x70756B636F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

VideosUI::MetricsTargetType_optional sub_1E3BA4DC4@<W0>(Swift::String *a1@<X0>, VideosUI::MetricsTargetType_optional *a2@<X8>)
{
  result.value = MetricsTargetType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1E3BA4DF4@<X0>(uint64_t *a1@<X8>)
{
  result = MetricsTargetType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

VideosUI::MetricsActionType_optional __swiftcall MetricsActionType.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_50();

  if (v1 >= 4)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

uint64_t MetricsActionType.rawValue.getter(char a1)
{
  result = 6579297;
  switch(a1)
  {
    case 1:
      result = 0x657461676976616ELL;
      break;
    case 2:
      result = 0x7463656C6573;
      break;
    case 3:
      result = 0x747265736E69;
      break;
    default:
      return result;
  }

  return result;
}

VideosUI::MetricsActionType_optional sub_1E3BA4F54@<W0>(Swift::String *a1@<X0>, VideosUI::MetricsActionType_optional *a2@<X8>)
{
  result.value = MetricsActionType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1E3BA4F84@<X0>(uint64_t *a1@<X8>)
{
  result = MetricsActionType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double sub_1E3BA4FB8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v14 = a1;

  v16 = sub_1E3C6AB2C(v14);
  *a8 = a4;
  *(a8 + 8) = a5;
  *(a8 + 16) = v16;
  *(a8 + 24) = v17;
  *(a8 + 32) = a2;
  *(a8 + 40) = a3;
  *(a8 + 48) = a6;
  *(a8 + 56) = a7;
  *(a8 + 64) = 0u;
  *(a8 + 80) = 0u;
  *(a8 + 96) = 0u;

  return result;
}

double sub_1E3BA5054(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 32, a2);

  return result;
}

uint64_t sub_1E3BA5080(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 32, a2);
  *(v2 + 32) = a1;
}

double sub_1E3BA5100(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 40, a2);

  return result;
}

uint64_t sub_1E3BA512C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 40, a2);
  *(v2 + 40) = a1;
}

uint64_t sub_1E3BA5168@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC8VideosUI7Metrics_impressionsData;
  OUTLINED_FUNCTION_15_0(v2 + OBJC_IVAR____TtC8VideosUI7Metrics_impressionsData, a1);
  return sub_1E379539C(v2 + v4, a2, &qword_1ECF2B7B0, &qword_1E429EC30);
}

uint64_t sub_1E3BA51C4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI7Metrics_impressionsData;
  swift_beginAccess();
  sub_1E3BA5224(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1E3BA5224(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0, &qword_1E429EC30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3BA52E8(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC8VideosUI7Metrics_isAdultContent;
  OUTLINED_FUNCTION_15_0(v2 + OBJC_IVAR____TtC8VideosUI7Metrics_isAdultContent, a2);
  return *(v2 + v3);
}

uint64_t sub_1E3BA5320(char a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8VideosUI7Metrics_isAdultContent;
  result = OUTLINED_FUNCTION_14_0(v2 + OBJC_IVAR____TtC8VideosUI7Metrics_isAdultContent, a2);
  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_1E3BA53B8()
{
  result = sub_1E4205CB4();
  qword_1EE2AA800 = result;
  return result;
}

uint64_t *sub_1E3BA53F4()
{
  if (qword_1EE28FC40 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA800;
}

uint64_t sub_1E3BA5444()
{
  result = sub_1E4205CB4();
  qword_1EE2AA7F8 = result;
  return result;
}

uint64_t *sub_1E3BA5480()
{
  if (qword_1EE28FC38 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA7F8;
}

uint64_t sub_1E3BA54D0()
{
  v0 = swift_allocObject();
  sub_1E3BA5508();
  return v0;
}

uint64_t sub_1E3BA5508()
{
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  v1 = OBJC_IVAR____TtC8VideosUI7Metrics_impressionsData;
  v2 = sub_1E4204724();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC8VideosUI7Metrics_isAdultContent) = 0;
  return v0;
}

uint64_t sub_1E3BA5560(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = swift_allocObject();
  sub_1E3BA55B0(a1, v2);
  return v4;
}

uint64_t sub_1E3BA55B0(uint64_t a1, char a2)
{
  *(v2 + 16) = 0u;
  v5 = (v2 + 16);
  *(v2 + 32) = 0u;
  v6 = OBJC_IVAR____TtC8VideosUI7Metrics_impressionsData;
  v7 = sub_1E4204724();
  __swift_storeEnumTagSinglePayload(v2 + v6, 1, 1, v7);
  *(v2 + OBJC_IVAR____TtC8VideosUI7Metrics_isAdultContent) = 0;
  if ((a2 & 1) == 0)
  {
    v5 = (v2 + 24);
  }

  swift_beginAccess();
  *v5 = a1;
  return v2;
}

void sub_1E3BA5650()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v46 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v46 - v19;
  if (!v1)
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v24(v14);
    v25 = sub_1E41FFC94();
    v26 = sub_1E42067E4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v47 = v28;
      *v27 = 136315138;
      v29 = sub_1E3BA49D8(v7);
      v31 = sub_1E3270FC8(v29, v30, &v47);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_1E323F000, v25, v26, "Metrics::no event recording for %s. Required page or dialog data is either missing or set as ignored", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v10 + 8))(v14, v8);
    goto LABEL_18;
  }

  if (v7 - 1 >= 3)
  {
    if (v7)
    {
      sub_1E324FBDC();
      OUTLINED_FUNCTION_0_11();
      v32(v17);
      v33 = sub_1E41FFC94();
      v34 = sub_1E42067F4();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v47 = v36;
        *v35 = 136315138;
        v37 = sub_1E3BA49D8(v7);
        v39 = sub_1E3270FC8(v37, v38, &v47);

        *(v35 + 4) = v39;
        _os_log_impl(&dword_1E323F000, v33, v34, "No matching metrics recorder for event %s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v36);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      (*(v10 + 8))(v17, v8);
    }

    else if (v5)
    {
      type metadata accessor for Metrics(0);
      sub_1E3BA5A94(v5, v1);
    }

    else
    {
      sub_1E324FBDC();
      OUTLINED_FUNCTION_0_11();
      v40(v20);
      v41 = sub_1E41FFC94();
      v42 = sub_1E42067E4();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v47 = v44;
        *v43 = 136315138;
        v45 = sub_1E3270FC8(0x6973736572706D69, 0xEB00000000736E6FLL, &v47);

        *(v43 + 4) = v45;
        _os_log_impl(&dword_1E323F000, v41, v42, "No impressions data for event %s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v44);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      (*(v10 + 8))(v20, v8);
    }

LABEL_18:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  type metadata accessor for Metrics(0);
  OUTLINED_FUNCTION_8();
  v22 = (*(v21 + 176))();
  sub_1E3BA5D04(v22, v5, v3, v1);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3BA5A94(uint64_t a1, void *a2)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4297BE0;
    *(inited + 32) = 0x6973736572706D69;
    *(inited + 40) = 0xEB00000000736E6FLL;
    *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
    *(inited + 48) = a1;

    v6 = sub_1E4205CB4();
    if (a2)
    {
      sub_1E4205F14();
      OUTLINED_FUNCTION_9_9();

      sub_1E3277E60(inited, v2, a2, &v14);

      inited = v15;
      sub_1E325F748(&v14, &unk_1ECF296E0, &unk_1E4298030);
      if (inited)
      {
        v7 = sub_1E4205F14();
        sub_1E3277E60(v7, v8, a2, &v14);

        inited = v15;
        sub_1E325F748(&v14, &unk_1ECF296E0, &unk_1E4298030);
        if (inited)
        {
          swift_isUniquelyReferenced_nonNull_native();
          *&v14 = v6;
          OUTLINED_FUNCTION_0_165();
          inited = 0;
          sub_1E394C48C(a2, v9, 0, v10, &v14);
          a2 = 0;
        }
      }
    }

    v11 = [objc_opt_self() sharedInstance];
    v12 = OUTLINED_FUNCTION_11_5();
    sub_1E3744600(v12);
    OUTLINED_FUNCTION_112();

    v13 = sub_1E4205C44();

    if (a2)
    {
      sub_1E3744600(a2);

      a2 = sub_1E4205C44();
    }

    [inited recordImpressions:v13 pageData:a2];
  }
}

void sub_1E3BA5D04(uint64_t *a1, uint64_t a2, void *a3, void *a4)
{
  if (!a1)
  {
    return;
  }

  v7 = a1;

  v8 = sub_1E3F6ABA4(2);
  sub_1E3277E60(v8, v9, v7, &v154);

  if (*(&v155 + 1))
  {
    if (!OUTLINED_FUNCTION_55_26(v10, v11, v12, MEMORY[0x1E69E6370], v13, v14))
    {
      goto LABEL_11;
    }

    if (v150)
    {

      return;
    }

    v15 = sub_1E3F6ABA4(2);
    v17 = sub_1E327D33C(v15, v16);
    if (v18)
    {
      v19 = v17;
      swift_isUniquelyReferenced_nonNull_native();
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310, &qword_1E429B110);
      v21 = OUTLINED_FUNCTION_52_26(v20);
      OUTLINED_FUNCTION_54_23(v21, v22, v23, v24, v25, v26, v27, v28, v144, v149, v7);
      sub_1E329504C((v7[7] + 32 * v19), &v154);
      sub_1E4207664();
    }

    else
    {
      v154 = 0u;
      v155 = 0u;
    }
  }

  sub_1E325F748(&v154, &unk_1ECF296E0, &unk_1E4298030);
LABEL_11:
  if (a2)
  {

    v29 = sub_1E3F6ABA4(3);
    sub_1E3277E60(v29, v30, v7, &v154);

    if (*(&v155 + 1))
    {
      if (OUTLINED_FUNCTION_55_26(v31, v32, v33, MEMORY[0x1E69E6370], v34, v35) && (v150 & 1) != 0)
      {
        v36 = sub_1E3F6ABA4(3);
        v38 = sub_1E327D33C(v36, v37);
        if (v39)
        {
          v40 = v38;
          swift_isUniquelyReferenced_nonNull_native();
          v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310, &qword_1E429B110);
          v42 = OUTLINED_FUNCTION_52_26(v41);
          OUTLINED_FUNCTION_54_23(v42, v43, v44, v45, v46, v47, v48, v49, v144, v149, v7);
          sub_1E329504C((v7[7] + 32 * v40), &v154);
          sub_1E4207664();
        }

        else
        {
          v154 = 0u;
          v155 = 0u;
        }

        sub_1E325F748(&v154, &unk_1ECF296E0, &unk_1E4298030);
        if (!*(a2 + 16))
        {

          goto LABEL_20;
        }

        v91 = *(a2 + 32);

        sub_1E3277E60(0x6973736572706D69, 0xEB00000000736E6FLL, v91, &v154);
        if (*(&v155 + 1))
        {
          OUTLINED_FUNCTION_58_23(v92, v93, v94, v95, v96, v97, v98, v99, v144, v149, v150, v151, *(&v151 + 1), v152, v153, v154);
          swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_48_29();
          v108 = OUTLINED_FUNCTION_26_56(v100, v101, v102, v103, v104, v105, v106, v107, v147, v149, v150);
          sub_1E32A87C0(v108, 0x6973736572706D69, 0xEB00000000736E6FLL, v109);
          v7 = v149;
        }

        else
        {
          sub_1E325F748(&v154, &unk_1ECF296E0, &unk_1E4298030);
          sub_1E327D33C(0x6973736572706D69, 0xEB00000000736E6FLL);
          if (v110)
          {
            OUTLINED_FUNCTION_112();
            swift_isUniquelyReferenced_nonNull_native();
            v149 = v7;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310, &qword_1E429B110);
            v7 = &v149;
            v111 = sub_1E4207644();
            OUTLINED_FUNCTION_50_28(v111, v112, v113, v114, v115, v116, v117, v118, v144, v149);
            sub_1E329504C((v154 + 32 * a2), &v150);
            sub_1E4207664();
          }

          else
          {
            v150 = 0u;
            v151 = 0u;
          }

          sub_1E325F748(&v150, &unk_1ECF296E0, &unk_1E4298030);
        }

        a2 = 0xEE007365676E6168;
        sub_1E3277E60(0x4363696D616E7964, 0xEE007365676E6168, v91, &v154);

        if (!*(&v155 + 1))
        {
          sub_1E325F748(&v154, &unk_1ECF296E0, &unk_1E4298030);
          sub_1E327D33C(0x4363696D616E7964, 0xEE007365676E6168);
          if (v135)
          {
            OUTLINED_FUNCTION_112();
            swift_isUniquelyReferenced_nonNull_native();
            v149 = v7;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310, &qword_1E429B110);
            v7 = &v149;
            v136 = sub_1E4207644();
            OUTLINED_FUNCTION_50_28(v136, v137, v138, v139, v140, v141, v142, v143, v144, v149);
            sub_1E329504C((v154 - 0x3FF193531233D300), &v150);
            sub_1E4207664();
          }

          else
          {
            v150 = 0u;
            v151 = 0u;
          }

          sub_1E325F748(&v150, &unk_1ECF296E0, &unk_1E4298030);
          goto LABEL_20;
        }

        OUTLINED_FUNCTION_58_23(v119, v120, v121, v122, v123, v124, v125, v126, v144, v149, v150, v151, *(&v151 + 1), v152, v153, v154);
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_48_29();
        v63 = OUTLINED_FUNCTION_26_56(v127, v128, v129, v130, v131, v132, v133, v134, v148, v149, v150);
        v64 = 0x4363696D616E7964;
        v65 = 0xEE007365676E6168;
        goto LABEL_19;
      }
    }

    else
    {
      sub_1E325F748(&v154, &unk_1ECF296E0, &unk_1E4298030);
    }

    *(&v155 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
    *&v154 = a2;
    OUTLINED_FUNCTION_58_23(*(&v155 + 1), v50, v51, v52, v53, v54, v55, v56, v144, v149, v150, v151, *(&v151 + 1), v152, v153, v154);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_48_29();
    v63 = OUTLINED_FUNCTION_26_56(v57, 0x6973736572706D69, 0xEB00000000736E6FLL, v58, v59, v60, v61, v62, v145, v149, v150);
LABEL_19:
    sub_1E32A87C0(v63, v64, v65, v66);
    v7 = v149;
  }

LABEL_20:
  if (a3)
  {
    *(&v155 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
    *&v154 = a3;
    OUTLINED_FUNCTION_58_23(*(&v155 + 1), v67, v68, v69, v70, v71, v72, v73, v144, v149, v150, v151, *(&v151 + 1), v152, v153, v154);

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_48_29();
    v81 = OUTLINED_FUNCTION_26_56(v74, 0x6E6F697461636F6CLL, v75, v76, v77, v78, v79, v80, v146, v149, v150);
    sub_1E32A87C0(v81, v82, 0xE800000000000000, v83);
    v7 = v149;
  }

  if (a4)
  {
    sub_1E4205F14();
    OUTLINED_FUNCTION_9_9();

    sub_1E3277E60(a3, a2, a4, &v154);

    a3 = *(&v155 + 1);
    sub_1E325F748(&v154, &unk_1ECF296E0, &unk_1E4298030);
    if (a3)
    {
      v84 = sub_1E4205F14();
      sub_1E3277E60(v84, v85, a4, &v154);

      a3 = *(&v155 + 1);
      sub_1E325F748(&v154, &unk_1ECF296E0, &unk_1E4298030);
      if (a3)
      {
        swift_isUniquelyReferenced_nonNull_native();
        *&v154 = v7;
        OUTLINED_FUNCTION_0_165();
        a3 = 0;
        sub_1E394C48C(a4, v86, 0, v87, &v154);
        a4 = 0;
      }
    }
  }

  v88 = [objc_opt_self() sharedInstance];
  v89 = OUTLINED_FUNCTION_11_5();
  sub_1E3744600(v89);
  v90 = sub_1E4205C44();

  if (a4)
  {
    sub_1E3744600(a4);

    a4 = sub_1E4205C44();
  }

  [a3 recordClick:v90 pageData:a4];
}

void sub_1E3BA6408()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 152))();
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() sharedInstance];
    sub_1E3744600(v2);
    OUTLINED_FUNCTION_11_5();

    v43 = sub_1E4205C44();

    [v3 recordDialog_];
  }

  else
  {
    OUTLINED_FUNCTION_111();
    v5 = (*(v4 + 128))();
    if (v5)
    {
      v6 = v5;
      v7 = sub_1E4205F14();
      OUTLINED_FUNCTION_9_94(v7, v8, v9, v10, v11, v12, v13, v14, v42, v45, v47, *(&v47 + 1), v48, v49, v50);

      if (v51)
      {
        if (OUTLINED_FUNCTION_40_6(&v47, v15, v16, MEMORY[0x1E69E6158], v17, v18))
        {
          v19 = v47;
          v20 = sub_1E3285D14();
          v21 = *((*MEMORY[0x1E69E7D40] & **v20) + 0x110);
          v22 = *v20;
          v23 = v21(v19, *(&v19 + 1));

          if (v23)
          {

            v24 = sub_1E4205F14();
            v26 = v25;
            v51 = MEMORY[0x1E69E6370];
            LOBYTE(v50) = 1;
            sub_1E329504C(&v50, &v47);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v34 = OUTLINED_FUNCTION_26_56(isUniquelyReferenced_nonNull_native, v28, v29, isUniquelyReferenced_nonNull_native, v30, v31, v32, v33, v44, v6, v47);
            sub_1E32A87C0(v34, v24, v26, v35);

            v6 = v46;
          }
        }
      }

      else
      {
        sub_1E325F748(&v50, &unk_1ECF296E0, &unk_1E4298030);
      }

      v36 = objc_opt_self();

      sub_1E3744600(v37);
      v38 = sub_1E4205C44();

      v39 = [v36 createWithMetricsData_];

      v40 = [objc_opt_self() sharedInstance];
      [v40 recordPage_];

      OUTLINED_FUNCTION_111();
      (*(v41 + 136))(v6);
    }
  }
}

void sub_1E3BA6764(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_8();
  if ((*(v4 + 128))())
  {
    v5 = sub_1E4205F14();
    OUTLINED_FUNCTION_9_94(v5, v6, v7, v8, v9, v10, v11, v12, v150, v157, v164, v171, v178, v179, v180);

    v1 = MEMORY[0x1E69E7CA0];
    if (v181)
    {
      OUTLINED_FUNCTION_2_131(v13, v14, v15, MEMORY[0x1E69E6158], v16, v17, v18, v19);
      OUTLINED_FUNCTION_17_79();
      if (v20)
      {
        v23 = 0;
      }

      else
      {
        v23 = v21;
      }

      if (v20)
      {
        v24 = 0;
      }

      else
      {
        v24 = v22;
      }

      v165 = v24;
      v172 = v23;
    }

    else
    {
      sub_1E325F748(&v180, &unk_1ECF296E0, &unk_1E4298030);
      v165 = 0;
      v172 = 0;
    }

    v41 = sub_1E4205F14();
    OUTLINED_FUNCTION_9_94(v41, v42, v43, v44, v45, v46, v47, v48, v151, v158, v165, v172, v178, v179, v180);

    if (v181)
    {
      OUTLINED_FUNCTION_2_131(v49, v50, v51, MEMORY[0x1E69E6158], v52, v53, v54, v55);
      OUTLINED_FUNCTION_17_79();
      if (v56)
      {
        v57 = 0;
      }

      v160 = v57;
      if (v56)
      {
        v59 = 0;
      }

      else
      {
        v59 = v58;
      }
    }

    else
    {
      sub_1E325F748(&v180, &unk_1ECF296E0, &unk_1E4298030);
      v160 = 0;
      v59 = 0;
    }

    v60 = sub_1E4205F14();
    OUTLINED_FUNCTION_9_94(v60, v61, v62, v63, v64, v65, v66, v67, v153, v160, v167, v174, v178, v179, v180);

    if (v181)
    {
      OUTLINED_FUNCTION_2_131(v68, v69, v70, MEMORY[0x1E69E6158], v71, v72, v73, v74);
      OUTLINED_FUNCTION_17_79();
      if (v75)
      {
        v78 = 0;
      }

      else
      {
        v78 = v76;
      }

      if (v75)
      {
        v79 = 0;
      }

      else
      {
        v79 = v77;
      }
    }

    else
    {
      sub_1E325F748(&v180, &unk_1ECF296E0, &unk_1E4298030);
      v78 = 0;
      v79 = 0;
    }

    v80 = sub_1E4205F14();
    OUTLINED_FUNCTION_9_94(v80, v81, v82, v83, v84, v85, v86, v87, v154, v161, v168, v175, v178, v179, v180);

    if (v181)
    {
      OUTLINED_FUNCTION_2_131(v88, v89, v90, MEMORY[0x1E69E6158], v91, v92, v93, v94);
      OUTLINED_FUNCTION_17_79();
      if (v95)
      {
        v98 = 0;
      }

      else
      {
        v98 = v96;
      }

      if (v95)
      {
        v99 = 0;
      }

      else
      {
        v99 = v97;
      }
    }

    else
    {
      sub_1E325F748(&v180, &unk_1ECF296E0, &unk_1E4298030);
      v98 = 0;
      v99 = 0;
    }

    v100 = sub_1E4205F14();
    OUTLINED_FUNCTION_9_94(v100, v101, v102, v103, v104, v105, v106, v107, v155, v162, v169, v176, v178, v179, v180);

    if (v181)
    {
      v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
      if (OUTLINED_FUNCTION_2_131(v108, v109, v110, v108, v111, v112, v113, v114))
      {
        v115 = sub_1E4205F14();
        OUTLINED_FUNCTION_30_47(v115, v116, v117, v118, v119, v120, v121, v122, v156, v163, v170, v177, v178, v179, v180);

        if (v181)
        {
          OUTLINED_FUNCTION_2_131(v123, v124, v125, MEMORY[0x1E69E6158], v126, v127, v128, v129);
          OUTLINED_FUNCTION_17_79();
        }

        else
        {
          sub_1E325F748(&v180, &unk_1ECF296E0, &unk_1E4298030);
        }

        OUTLINED_FUNCTION_7_131();
        goto LABEL_62;
      }
    }

    else
    {
      sub_1E325F748(&v180, &unk_1ECF296E0, &unk_1E4298030);
    }

    OUTLINED_FUNCTION_7_131();
    v132 = 0;
    v133 = 0;
LABEL_62:
    v149 = v170;
    v148 = v177;
    v147 = v163;
    goto LABEL_63;
  }

  OUTLINED_FUNCTION_8();
  if ((*(v25 + 152))())
  {
    v26 = sub_1E4205F14();
    OUTLINED_FUNCTION_30_47(v26, v27, v28, v29, v30, v31, v32, v33, v150, v157, v164, v171, v178, v179, v180);

    if (v181)
    {
      OUTLINED_FUNCTION_40_6(&v178, v34, v35, MEMORY[0x1E69E6158], v36, v37);
      OUTLINED_FUNCTION_17_79();
      if (v38)
      {
        v1 = 0;
      }

      else
      {
        v1 = v39;
      }

      if (v38)
      {
        v2 = 0;
      }

      else
      {
        v2 = v40;
      }
    }

    else
    {
      sub_1E325F748(&v180, &unk_1ECF296E0, &unk_1E4298030);
      v1 = 0;
      v2 = 0;
    }

    v134 = sub_1E4205F14();
    OUTLINED_FUNCTION_30_47(v134, v135, v136, v137, v138, v139, v140, v141, v152, v159, v166, v173, v178, v179, v180);

    if (v181)
    {
      OUTLINED_FUNCTION_40_6(&v178, v142, v143, MEMORY[0x1E69E6158], v144, v145);
      OUTLINED_FUNCTION_17_79();
      if (v146)
      {
        v130 = 0;
      }

      if (v146)
      {
        v131 = 0;
      }
    }

    else
    {
      sub_1E325F748(&v180, &unk_1ECF296E0, &unk_1E4298030);
      v130 = 0;
      v131 = 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_131();
  }

  v98 = 0;
  v99 = 0;
  v78 = 0;
  v79 = 0;
  v132 = 0;
  v133 = 0;
  v147 = 0;
  v59 = 0;
  v148 = 0;
  v149 = 0;
LABEL_63:
  *a1 = v148;
  a1[1] = v149;
  a1[2] = v147;
  a1[3] = v59;
  a1[4] = v132;
  a1[5] = v133;
  a1[6] = v78;
  a1[7] = v79;
  a1[8] = v98;
  a1[9] = v99;
  a1[10] = v1;
  a1[11] = v2;
  a1[12] = v130;
  a1[13] = v131;
}

uint64_t sub_1E3BA6BA4()
{

  sub_1E325F748(v0 + OBJC_IVAR____TtC8VideosUI7Metrics_impressionsData, &qword_1ECF2B7B0, &qword_1E429EC30);
  return v0;
}

uint64_t sub_1E3BA6BFC()
{
  sub_1E3BA6BA4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1E3BA6C54()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BD0;
  *(inited + 32) = sub_1E4205F14();
  *(inited + 40) = v3;
  v4 = *v0;
  v5 = v0[1];
  v6 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 80) = sub_1E4205F14();
  *(inited + 88) = v7;
  v8 = 0xE600000000000000;
  v9 = 0x6E6F74747562;
  switch(*(v1 + 16))
  {
    case 1:
      v8 = 0xE300000000000000;
      v9 = 6447476;
      break;
    case 2:
      v8 = 0xE400000000000000;
      v9 = 1919251317;
      break;
    case 3:
      v9 = 0x70756B636F6CLL;
      break;
    default:
      break;
  }

  *(inited + 120) = v6;
  *(inited + 96) = v9;
  *(inited + 104) = v8;
  *(inited + 128) = sub_1E4205F14();
  *(inited + 136) = v10;
  v11 = 0xE300000000000000;
  v12 = 6579297;
  switch(*(v1 + 17))
  {
    case 1:
      v11 = 0xE800000000000000;
      v12 = 0x657461676976616ELL;
      break;
    case 2:
      v11 = 0xE600000000000000;
      v12 = 0x7463656C6573;
      break;
    case 3:
      v11 = 0xE600000000000000;
      v12 = 0x747265736E69;
      break;
    default:
      break;
  }

  *(inited + 168) = v6;
  *(inited + 144) = v12;
  *(inited + 152) = v11;

  v13 = sub_1E4205CB4();
  v14 = v1[8];
  if (!v14)
  {
    v56 = 0u;
    v57 = 0u;
    goto LABEL_14;
  }

  swift_isUniquelyReferenced_nonNull_native();
  *&v56 = v13;
  OUTLINED_FUNCTION_0_165();
  sub_1E394C48C(v14, v15, 0, v16, &v56);
  v13 = v56;
  v17 = sub_1E4205F14();
  sub_1E3277E60(v17, v18, v14, &v56);

  if (!*(&v57 + 1))
  {
LABEL_14:
    sub_1E325F748(&v56, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if (swift_dynamicCast())
  {
    v19 = *&v55[0];
    goto LABEL_16;
  }

LABEL_15:
  v19 = sub_1E4205CB4();
LABEL_16:
  v59 = *(v1 + 3);
  v20 = *(&v59 + 1);
  if (*(&v59 + 1))
  {
    v21 = v59;
    sub_1E4205F14();
    OUTLINED_FUNCTION_16_11();
    *(&v57 + 1) = v6;
    v56 = __PAIR128__(v20, v21);
    OUTLINED_FUNCTION_27_46(v22, v23, v24, v25);
    sub_1E379539C(&v59, v53, &qword_1ECF3D960, &unk_1E4298000);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53[0] = v19;
    OUTLINED_FUNCTION_24_52(v55, v27, v28, isUniquelyReferenced_nonNull_native);

    v19 = v53[0];
  }

  if (*(v19 + 16))
  {
    sub_1E4205F14();
    OUTLINED_FUNCTION_16_11();
    *(&v57 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    *&v56 = v19;
    OUTLINED_FUNCTION_27_46(*(&v57 + 1), v29, v30, v31);

    v32 = swift_isUniquelyReferenced_nonNull_native();
    v53[0] = v13;
    OUTLINED_FUNCTION_24_52(v55, v33, v34, v32);

    v13 = v53[0];
  }

  v35 = v1[5];
  v53[0] = v35;
  if (v35)
  {
    sub_1E4205F14();
    OUTLINED_FUNCTION_16_11();
    *(&v57 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
    *&v56 = v35;
    OUTLINED_FUNCTION_27_46(*(&v57 + 1), v36, v37, v38, v53[0]);
    sub_1E379539C(v53, &v58, &qword_1ECF2B490, &unk_1E42A0640);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v58 = v13;
    OUTLINED_FUNCTION_24_52(v55, v40, v41, v39);

    v13 = v58;
  }

  v42 = v1[6];
  v58 = v42;
  if (v42)
  {
    sub_1E4205F14();
    OUTLINED_FUNCTION_16_11();
    *(&v57 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
    *&v56 = v42;
    OUTLINED_FUNCTION_27_46(*(&v57 + 1), v43, v44, v45);
    sub_1E379539C(&v58, &v54, &qword_1ECF2B490, &unk_1E42A0640);
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v54 = v13;
    OUTLINED_FUNCTION_24_52(v55, v47, v48, v46);

    v13 = v54;
  }

  v49 = v1[7];
  if (v49)
  {

    swift_isUniquelyReferenced_nonNull_native();
    *&v56 = v13;
    OUTLINED_FUNCTION_0_165();
    sub_1E394C48C(v49, v50, 0, v51, &v56);

    v13 = v56;
  }

  else
  {
  }

  v52 = [objc_opt_self() sharedInstance];
  sub_1E3744600(v13);

  sub_1E4205C44();
  OUTLINED_FUNCTION_11_5();

  [v52 recordClick_];
}

uint64_t sub_1E3BA71B8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 17) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10;
  *(a9 + 64) = a11;
  return result;
}

uint64_t ImpressionableMetricsItem.additionalFields.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t ImpressionableMetricsItem.parent.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t ImpressionableMetricsItem.init(impressionId:impressionType:impressionIndex:actionType:idType:name:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a8;
  *(a9 + 48) = a10;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 80) = 0;
  *(a9 + 88) = 0;
  *(a9 + 72) = 0;
  return result;
}

uint64_t ImpressionableMetricsItem.createJetImpressionMetricsObject()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BD0;
  *(inited + 32) = sub_1E4205F14();
  *(inited + 40) = v3;
  v4 = *v1;
  v5 = v1[1];
  v6 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 80) = sub_1E4205F14();
  *(inited + 88) = v7;
  v8 = 0xE600000000000000;
  v9 = 0x6E6F74747562;
  switch(*(v1 + 16))
  {
    case 1:
      v8 = 0xE300000000000000;
      v9 = 6447476;
      break;
    case 2:
      v8 = 0xE400000000000000;
      v9 = 1919251317;
      break;
    case 3:
      v9 = 0x70756B636F6CLL;
      break;
    default:
      break;
  }

  *(inited + 120) = v6;
  *(inited + 96) = v9;
  *(inited + 104) = v8;
  *(inited + 128) = sub_1E4205F14();
  *(inited + 136) = v10;
  v11 = v1[3];
  *(inited + 168) = MEMORY[0x1E69E6810];
  *(inited + 144) = v11;

  v12 = sub_1E4205CB4();
  v13 = v1[9];
  if (v13)
  {

    swift_isUniquelyReferenced_nonNull_native();
    v45 = v12;
    OUTLINED_FUNCTION_0_165();
    sub_1E394C48C(v13, v14, 0, v15, &v45);
    v12 = v45;
  }

  v16 = *(v1 + 32);
  if (v16 != 4)
  {
    sub_1E4205F14();
    OUTLINED_FUNCTION_16_11();
    v47 = &type metadata for MetricsActionType;
    LOBYTE(v45) = v16;
    OUTLINED_FUNCTION_27_46(v17, v18, v19, v20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v49 = v12;
    OUTLINED_FUNCTION_24_52(v44, v22, v23, isUniquelyReferenced_nonNull_native);

    v12 = v49;
  }

  v49 = *(v1 + 7);
  v24 = *(&v49 + 1);
  if (*(&v49 + 1))
  {
    v25 = v49;
    sub_1E4205F14();
    OUTLINED_FUNCTION_16_11();
    v47 = v6;
    v45 = v25;
    v46 = v24;
    OUTLINED_FUNCTION_27_46(v26, v27, v28, v29);
    sub_1E379539C(&v49, &v48, &qword_1ECF3D960, &unk_1E4298000);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    *&v48 = v12;
    OUTLINED_FUNCTION_24_52(v44, v31, v32, v30);

    v12 = v48;
  }

  v48 = *(v1 + 5);
  v33 = *(&v48 + 1);
  if (*(&v48 + 1))
  {
    v34 = v48;
    sub_1E4205F14();
    OUTLINED_FUNCTION_16_11();
    v47 = v6;
    v45 = v34;
    v46 = v33;
    OUTLINED_FUNCTION_27_46(v35, v36, v37, v38);
    sub_1E379539C(&v48, &v43, &qword_1ECF3D960, &unk_1E4298000);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v43 = v12;
    OUTLINED_FUNCTION_24_52(v44, v40, v41, v39);
  }

  type metadata accessor for BaseImpressionManager();
  static BaseImpressionManager.makeImpressionsData(_:parent:)();
}

void sub_1E3BA769C(uint64_t a1)
{
  if (a1)
  {
    objc_opt_self();
    v2 = OUTLINED_FUNCTION_50();
    sub_1E3744600(v2);
    v3 = sub_1E4205C44();

    v4 = [v1 createWithMetricsData_];

    v5 = [objc_opt_self() sharedInstance];
    [v5 recordPage_];
  }
}

void sub_1E3BA7798(uint64_t a1)
{
  if (a1)
  {
    v2 = [objc_opt_self() sharedInstance];
    v3 = OUTLINED_FUNCTION_50();
    sub_1E3744600(v3);
    v4 = sub_1E4205C44();

    [v1 recordDialog_];
  }
}

void sub_1E3BA7858()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = sub_1E4204984();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  type metadata accessor for Metrics(0);
  v18 = sub_1E3BA7AA8();
  if (v1)
  {
    (*(v13 + 104))(v17, *MEMORY[0x1E69AB3D8], v11);
    sub_1E41FE5C4();
    v19 = sub_1E4204934();
    (*(v6 + 8))(v10, v4);
    (*(v13 + 8))(v17, v11);
    sub_1E3BA7DD8(v19);
    OUTLINED_FUNCTION_112();
  }

  else
  {
    v4 = 0;
  }

  v20 = sub_1E3BA7F00(v3);
  OUTLINED_FUNCTION_111();
  if ((*(v21 + 576))())
  {
    OUTLINED_FUNCTION_26_0();
    v23 = (*(v22 + 176))();
  }

  else
  {
    v23 = 0;
  }

  sub_1E3BA5D04(v23, v4, v18, v20);

  OUTLINED_FUNCTION_25_2();
}

void *sub_1E3BA7AA8()
{
  OUTLINED_FUNCTION_26_0();
  if (!(*(v1 + 576))())
  {
    return 0;
  }

  OUTLINED_FUNCTION_26_0();
  (*(v2 + 200))();
  OUTLINED_FUNCTION_112();

  if (!v0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_111();
  v4 = (*(v3 + 624))();
  v7 = v4;
  if (v4)
  {
    LOWORD(v23[0]) = *(v4 + 98);
    v24 = 171;
    sub_1E3741534(v4, v5, v6);
    if (sub_1E4205E84())
    {

      v8 = MEMORY[0x1E69E7CC0];
      goto LABEL_11;
    }
  }

  v8 = sub_1E39239C8(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1E39239C8((v9 > 1), v10 + 1, 1, v8);
  }

  v8[2] = v10 + 1;
  v8[v10 + 4] = v0;
  while (v7)
  {
LABEL_11:
    OUTLINED_FUNCTION_111();
    isUniquelyReferenced_nonNull_native = (*(v12 + 576))();
    if (isUniquelyReferenced_nonNull_native)
    {
      OUTLINED_FUNCTION_26_0();
      v15 = (*(v14 + 200))();

      if (v15)
      {
        v16 = sub_1E4205F14();
        if (*(v15 + 16))
        {
          v18 = sub_1E327D33C(v16, v17);
          v20 = v19;

          if (v20)
          {
            sub_1E328438C(*(v15 + 56) + 32 * v18, v23);
            sub_1E325F748(v23, &unk_1ECF296E0, &unk_1E4298030);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              isUniquelyReferenced_nonNull_native = sub_1E39239C8(0, v8[2] + 1, 1, v8);
              v8 = isUniquelyReferenced_nonNull_native;
            }

            v22 = v8[2];
            v21 = v8[3];
            if (v22 >= v21 >> 1)
            {
              isUniquelyReferenced_nonNull_native = sub_1E39239C8((v21 > 1), v22 + 1, 1, v8);
              v8 = isUniquelyReferenced_nonNull_native;
            }

            v8[2] = v22 + 1;
            v8[v22 + 4] = v15;
            goto LABEL_22;
          }
        }

        else
        {
        }

        memset(v23, 0, sizeof(v23));
        isUniquelyReferenced_nonNull_native = sub_1E325F748(v23, &unk_1ECF296E0, &unk_1E4298030);
      }
    }

LABEL_22:
    v7 = (*(*v7 + 624))(isUniquelyReferenced_nonNull_native);
  }

  return v8;
}

uint64_t sub_1E3BA7DD8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  sub_1E397A444(0, v2, 0);
  v3 = v10;
  v4 = a1 + 32;
  if (v2)
  {
    while (1)
    {
      sub_1E328438C(v4, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1E397A444((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v6 + 1;
      *(v3 + 8 * v6 + 32) = v8;
      v4 += 32;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

unint64_t sub_1E3BA7F00(uint64_t a1)
{
  type metadata accessor for TemplateViewModel(0);
  swift_retain_n();
  while (1)
  {
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      break;
    }

    LOWORD(v39) = *(a1 + 98);
    LOWORD(v38[0]) = 100;
    v14 = sub_1E3741534(v11, v12, v13);
    v15 = OUTLINED_FUNCTION_8_97(v14);
    if (v15 & 1) != 0 || (LOWORD(v39) = *(a1 + 98), LOWORD(v38[0]) = 218, v16 = OUTLINED_FUNCTION_8_97(v15), (v16) || (LOWORD(v39) = *(a1 + 98), LOWORD(v38[0]) = 213, (OUTLINED_FUNCTION_8_97(v16)))
    {
      v19 = sub_1E3BA855C();
      goto LABEL_19;
    }

LABEL_13:
    OUTLINED_FUNCTION_111();
    a1 = (*(v17 + 624))(v18);

    if (!a1)
    {
      goto LABEL_20;
    }
  }

  v41 = 16;
  sub_1E39E42E0(v2, v3, v4);
  sub_1E4206254();
  sub_1E4206254();
  if (v39 == *&v38[0] && *(&v39 + 1) == *(&v38[0] + 1))
  {

LABEL_18:
    v19 = sub_1E3BA855C();

LABEL_19:
    if (v19)
    {
LABEL_21:

      return v19;
    }

LABEL_20:
    v19 = sub_1E3BA855C();
    goto LABEL_21;
  }

  v6 = sub_1E42079A4();

  if (v6)
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_12_6();
  v8 = *(v7 + 576);

  v10 = v8(v9);

  if (!v10)
  {

    goto LABEL_13;
  }

  OUTLINED_FUNCTION_12_6();
  if (((*(v21 + 248))(v22) & 1) == 0)
  {
    OUTLINED_FUNCTION_12_6();
    v25 = (*(v23 + 152))(v24);
    if (v25 || (OUTLINED_FUNCTION_12_6(), (v25 = (*(v26 + 128))(v27)) != 0))
    {
      v19 = v25;
      v28 = sub_1E4205F14();
      v30 = v29;

      sub_1E3277E60(v28, v30, v19, &v39);

      if (v40)
      {
        if (swift_dynamicCast())
        {
          v31 = sub_1E3285D14();
          v32 = *((*MEMORY[0x1E69E7D40] & **v31) + 0x110);
          v33 = *v31;
          v34 = v32(*&v38[0], *(&v38[0] + 1));

          if (v34)
          {

            sub_1E4205F14();
            OUTLINED_FUNCTION_16_11();
            v40 = MEMORY[0x1E69E6370];
            LOBYTE(v39) = 1;
            sub_1E329504C(&v39, v38);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            OUTLINED_FUNCTION_24_52(v38, v36, v37, isUniquelyReferenced_nonNull_native);

            return v19;
          }
        }

        else
        {
        }
      }

      else
      {

        sub_1E325F748(&v39, &unk_1ECF296E0, &unk_1E4298030);
      }

      goto LABEL_21;
    }

    goto LABEL_20;
  }

  return 0;
}

void sub_1E3BA83B8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1E4204984();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  (*(v11 + 104))(v14 - v13, *MEMORY[0x1E69AB3D8], v9);
  sub_1E41FE5C4();
  v16 = sub_1E4204944();
  (*(v4 + 8))(v8, v2);
  (*(v11 + 8))(v15, v9);
  v17 = sub_1E3BA7DD8(v16);

  if (v17)
  {
    type metadata accessor for Metrics(0);
    sub_1E3BA5A94(v17, v1);
  }

  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E3BA855C()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 lastRecordedPageEventData];

  v2 = [v1 generateMetricsDataDictionary];
  v3 = sub_1E4205C64();

  v4 = sub_1E374BD08(v3);

  return v4;
}

void sub_1E3BA8620()
{
  OUTLINED_FUNCTION_31_1();
  v66 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0, &qword_1E429EC30);
  MEMORY[0x1EEE9AC00](v1 - 8);
  OUTLINED_FUNCTION_4_6();
  v4 = v2 - v3;
  MEMORY[0x1EEE9AC00](v5);
  v64 = &v64 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v64 - v8;
  v10 = sub_1E4204724();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v65 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v64 - v17;
  OUTLINED_FUNCTION_99();
  (*(v19 + 224))();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_1E325F748(v9, &qword_1ECF2B7B0, &qword_1E429EC30);
  }

  else
  {
    (*(v12 + 32))(v18, v9, v10);
    sub_1E4205F14();
    OUTLINED_FUNCTION_9_9();
    v20 = sub_1E4204714();
    OUTLINED_FUNCTION_39_32(v20);

    v21 = v70;
    sub_1E325F748(&v69, &unk_1ECF296E0, &unk_1E4298030);
    if (!v21)
    {
      sub_1E4205F14();
      OUTLINED_FUNCTION_9_9();
      v22 = sub_1E41FE854();
      OUTLINED_FUNCTION_43_37(v22, MEMORY[0x1E69E6530]);
      v23 = sub_1E4204704();
      OUTLINED_FUNCTION_53_27();
      v23(v68, 0);
      v24 = OUTLINED_FUNCTION_20_64();
      v25(v24);
      OUTLINED_FUNCTION_51_26();
      OUTLINED_FUNCTION_99();
      (*(v26 + 232))(v18);
    }

    (*(v12 + 8))(v18, v10);
  }

  OUTLINED_FUNCTION_99();
  v28 = (*(v27 + 200))();
  if (v28)
  {
    v29 = v28;
    v30 = sub_1E4205F14();
    sub_1E3277E60(v30, v31, v29, &v69);

    v32 = v70;
    sub_1E325F748(&v69, &unk_1ECF296E0, &unk_1E4298030);
    if (v32)
    {
    }

    else
    {
      v33 = sub_1E4205F14();
      v35 = v34;
      v36 = sub_1E41FE854();
      OUTLINED_FUNCTION_43_37(v36, MEMORY[0x1E69E6530]);
      sub_1E329504C(&v69, v68);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67 = v29;
      sub_1E32A87C0(v68, v33, v35, isUniquelyReferenced_nonNull_native);

      OUTLINED_FUNCTION_99();
      v39 = *(v38 + 208);

      v39(v40);
    }
  }

  OUTLINED_FUNCTION_111();
  (*(v41 + 224))();
  if (__swift_getEnumTagSinglePayload(v4, 1, v10) == 1)
  {
    sub_1E325F748(v4, &qword_1ECF2B7B0, &qword_1E429EC30);
  }

  else
  {
    v42 = v65;
    (*(v12 + 32))(v65, v4, v10);
    sub_1E4205F14();
    OUTLINED_FUNCTION_9_9();
    v43 = sub_1E4204714();
    OUTLINED_FUNCTION_39_32(v43);

    v44 = v70;
    sub_1E325F748(&v69, &unk_1ECF296E0, &unk_1E4298030);
    if (!v44)
    {
      sub_1E4205F14();
      OUTLINED_FUNCTION_9_9();
      v45 = sub_1E41FE844();
      OUTLINED_FUNCTION_43_37(v45, MEMORY[0x1E69E6530]);
      v46 = sub_1E4204704();
      OUTLINED_FUNCTION_53_27();
      v46(v68, 0);
      v47 = OUTLINED_FUNCTION_20_64();
      v48(v47);
      OUTLINED_FUNCTION_51_26();
      OUTLINED_FUNCTION_111();
      (*(v49 + 232))(v42);
    }

    (*(v12 + 8))(v42, v10);
  }

  OUTLINED_FUNCTION_111();
  v51 = (*(v50 + 200))();
  if (v51)
  {
    v52 = v51;
    v53 = sub_1E4205F14();
    sub_1E3277E60(v53, v54, v52, &v69);

    v55 = v70;
    sub_1E325F748(&v69, &unk_1ECF296E0, &unk_1E4298030);
    if (v55)
    {
    }

    else
    {
      v56 = sub_1E4205F14();
      v58 = v57;
      v59 = sub_1E41FE844();
      OUTLINED_FUNCTION_43_37(v59, MEMORY[0x1E69E6530]);
      sub_1E329504C(&v69, v68);
      v60 = swift_isUniquelyReferenced_nonNull_native();
      v67 = v52;
      sub_1E32A87C0(v68, v56, v58, v60);

      OUTLINED_FUNCTION_111();
      v62 = *(v61 + 208);

      v62(v63);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t type metadata accessor for Metrics(uint64_t a1)
{
  result = qword_1EE28FC20;
  if (!qword_1EE28FC20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E3BA8CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF343B8;
  if (!qword_1ECF343B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF343B8);
  }

  return result;
}

unint64_t sub_1E3BA8D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF343C0;
  if (!qword_1ECF343C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF343C0);
  }

  return result;
}

unint64_t sub_1E3BA8D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF343C8;
  if (!qword_1ECF343C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF343C8);
  }

  return result;
}

unint64_t sub_1E3BA8DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF343D0;
  if (!qword_1ECF343D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF343D0);
  }

  return result;
}

unint64_t sub_1E3BA8E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF343D8;
  if (!qword_1ECF343D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF343D8);
  }

  return result;
}

unint64_t sub_1E3BA8E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF343E0;
  if (!qword_1ECF343E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF343E0);
  }

  return result;
}

unint64_t sub_1E3BA8EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF343E8;
  if (!qword_1ECF343E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF343E8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ViewModelMetricsClickValue(_BYTE *result, int a2, int a3)
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

_BYTE *sub_1E3BA9018(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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
          result = OUTLINED_FUNCTION_15(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1E3BA90E8(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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
          result = OUTLINED_FUNCTION_15(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1E3BA91C8(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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
          result = OUTLINED_FUNCTION_15(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3BA9294(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 112))
    {
      return OUTLINED_FUNCTION_17_7(*a1 + 2147483646);
    }

    v3 = *(a1 + 8);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    v4 = v3 - 1;
    if (v4 < 0)
    {
      return OUTLINED_FUNCTION_17_7(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v4);
}

uint64_t sub_1E3BA92E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_1E3BA936C(uint64_t a1)
{
  sub_1E3BA9414(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E3BA9414(uint64_t a1)
{
  if (!qword_1EE23B6A8)
  {
    sub_1E4204724();
    v1 = sub_1E4207104();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE23B6A8);
    }
  }
}

uint64_t sub_1E3BA947C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
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
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E3BA94BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

      return OUTLINED_FUNCTION_5_25(result, a2);
    }

    *(result + 96) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_5_25(result, a2);
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_53_27()
{

  return sub_1E3946774(v2 - 112, v0, v1);
}

_OWORD *OUTLINED_FUNCTION_58_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 a16)
{

  return sub_1E329504C(&a16, &a11);
}

uint64_t sub_1E3BA9578@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_collectionImpressioner;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return sub_1E38B9460(v1 + v3, a1);
}

uint64_t sub_1E3BA95CC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_collectionImpressioner;
  swift_beginAccess();
  sub_1E38B94D0(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1E3BA9678()
{
  if (!*(v0 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_stackViewController))
  {
    return 0;
  }

  OUTLINED_FUNCTION_88_0();
  v2 = *(v1 + 440);
  v4 = v3;
  v5 = v2();

  return v5;
}

uint64_t sub_1E3BA9700()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1E3BA974C()
{
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_1(v2);
  *(v1 + 8) = v0;
  OUTLINED_FUNCTION_57();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E3BA979C(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  OUTLINED_FUNCTION_57();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_1E3900F50;
}

void *sub_1E3BA987C()
{
  v1 = OBJC_IVAR____TtC8VideosUI27SearchResultsViewController____lazy_storage___noContentView;
  v2 = *&v0[OBJC_IVAR____TtC8VideosUI27SearchResultsViewController____lazy_storage___noContentView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8VideosUI27SearchResultsViewController____lazy_storage___noContentView];
LABEL_5:
    v11 = v2;
    return v3;
  }

  v4 = v0;
  result = [v0 vuiView];
  if (result)
  {
    v6 = result;
    type metadata accessor for SearchNoContentView();
    [v6 bounds];
    OUTLINED_FUNCTION_3();

    OUTLINED_FUNCTION_6();
    v7 = sub_1E3890DAC();
    v8 = *((*MEMORY[0x1E69E7D40] & *v7) + 0xE0);
    v9 = swift_unknownObjectRetain();
    v8(v9, &off_1F5D74EC0);
    v10 = *&v4[v1];
    *&v4[v1] = v7;
    v3 = v7;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3BA9990()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_scrollHandler);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = *v1;
  sub_1E34AF604(*v1, v1[1]);
  return v2;
}

uint64_t sub_1E3BA99E8()
{
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_1(v3);
  v4 = *v1;
  v5 = v1[1];
  *v1 = v2;
  v1[1] = v0;
  return sub_1E34AF594(v4, v5);
}

uint64_t sub_1E3BA9BA8()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_searchDelayMessage);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1E3BA9BFC()
{
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_1(v3);
  *v1 = v2;
  v1[1] = v0;
}

char *sub_1E3BA9C90()
{
  OUTLINED_FUNCTION_156();
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_38();
  return sub_1E3BA9CCC();
}

char *sub_1E3BA9CCC()
{
  OUTLINED_FUNCTION_156();
  v3 = v1 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_collectionImpressioner;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_document;
  *(v1 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_document) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_stackViewController) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_recentlySearchedTemplateViewModel) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_hintsTemplateViewModel) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_hintsCollectionViewModel) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_topResultsCollectionViewModel) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_resultCategoryIds) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_isShowingLoader) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController____lazy_storage___noContentView) = 0;
  v5 = (v1 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_scrollHandler);
  *v5 = 0;
  v5[1] = 0;
  v6 = OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_hintsPagePerformanceReporter;
  type metadata accessor for PagePerformanceReporter();
  *(v1 + v6) = sub_1E3C678AC();
  v7 = OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_searchResultsPagePerformanceReporter;
  *(v1 + v7) = sub_1E3C678AC();
  v8 = OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_topResultsPagePerformanceReporter;
  *(v1 + v8) = sub_1E3C678AC();
  v9 = &qword_1ECF34000;
  v10 = (v1 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_searchDelayMessage);
  *v10 = 0;
  v10[1] = 0;
  *(v1 + v4) = v2;

  type metadata accessor for LoadingControllerManager();
  v11 = OUTLINED_FUNCTION_26_57();
  *(v1 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_loadingViewManager) = sub_1E3F68068(v11, v12);
  type metadata accessor for SearchResultsViewController();
  OUTLINED_FUNCTION_25();
  v15 = objc_msgSendSuper2(v13, v14);
  type metadata accessor for TemplateViewModel(0);
  sub_1E410D4C8(15, MEMORY[0x1E69E7CC8], 0);
  v17 = v16;
  v18 = OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_hintsTemplateViewModel;
  *&v15[OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_hintsTemplateViewModel] = v16;

  if (v17)
  {
    OUTLINED_FUNCTION_8();
    (*(v19 + 472))(MEMORY[0x1E69E7CC0]);
  }

  v20 = sub_1E3BAD988(0xD000000000000010, 0x80000001E4274B20);
  if (v20)
  {
    *&v15[OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_hintsCollectionViewModel] = v20;

    v21 = *&v15[v18];
    if (v21)
    {
      v22 = *(*v21 + 480);

      v23 = v22(&v47);
      if (*v24)
      {

        MEMORY[0x1E6910BF0](v25);
        OUTLINED_FUNCTION_40_42();
      }

      v23(&v47, 0);

      v9 = &qword_1ECF34000;
    }
  }

  v26 = sub_1E3BAD988(0xD000000000000016, 0x80000001E4274B00);
  if (v26)
  {
    v27 = v26;
    v28 = *(*v26 + 392);

    if (v28())
    {
      OUTLINED_FUNCTION_30();
      (*(v29 + 992))(21, 0);
    }

    OUTLINED_FUNCTION_26();
    v31 = *(v30 + 656);

    v31(v32);
    *&v15[OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_topResultsCollectionViewModel] = v27;

    v33 = *&v15[v18];
    if (v33)
    {
      v34 = *(*v33 + 480);

      v35 = v34(&v47);
      if (*v36)
      {
        MEMORY[0x1E6910BF0]();
        OUTLINED_FUNCTION_40_42();
      }

      else
      {
      }

      v35(&v47, 0);
    }
  }

  if (*sub_1E3C2AEE0() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D2C0, &unk_1E429D880);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1E4297BE0;
    v38 = sub_1E41FFF64();
    v39 = MEMORY[0x1E69DC130];
    *(v37 + 32) = v38;
    *(v37 + 40) = v39;
    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A4F0, &unk_1E429D890);
    sub_1E4206944();
    swift_unknownObjectRelease();
  }

  if (![objc_opt_self() isSearchEnabled])
  {

LABEL_34:

    return v15;
  }

  if (v0)
  {
    sub_1E3277E60(0xD000000000000012, 0x80000001E4274B40, v0, &v47);

    if (v48)
    {
      v40 = swift_dynamicCast();
      if (v40)
      {
        v41 = v45;
      }

      else
      {
        v41 = 0;
      }

      if (v40)
      {
        v42 = v46;
      }

      else
      {
        v42 = 0;
      }
    }

    else
    {
      sub_1E325F748(&v47, &unk_1ECF296E0, &unk_1E4298030);
      v41 = 0;
      v42 = 0;
    }

    v43 = &v15[v9[134]];
    swift_beginAccess();
    *v43 = v41;
    *(v43 + 1) = v42;
    goto LABEL_34;
  }

  return v15;
}

void sub_1E3BAA314()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  sub_1E32ADE38();
  v16 = sub_1E4206A04();
  v19[4] = sub_1E3BAE3B8;
  v19[5] = v1;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  OUTLINED_FUNCTION_14_1();
  v19[2] = v17;
  v19[3] = &block_descriptor_43;
  v18 = _Block_copy(v19);

  sub_1E4203FE4();
  v19[0] = MEMORY[0x1E69E7CC0];
  sub_1E37E7A8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
  sub_1E378AD28();
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v15, v8, v18);
  _Block_release(v18);

  (*(v4 + 8))(v8, v2);
  (*(v11 + 8))(v15, v9);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3BAA548()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_collectionImpressioner;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_document) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_stackViewController) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_recentlySearchedTemplateViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_hintsTemplateViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_hintsCollectionViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_topResultsCollectionViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_resultCategoryIds) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_isShowingLoader) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController____lazy_storage___noContentView) = 0;
  v2 = (v0 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_scrollHandler);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_hintsPagePerformanceReporter;
  type metadata accessor for PagePerformanceReporter();
  *(v0 + v3) = sub_1E3C678AC();
  v4 = OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_searchResultsPagePerformanceReporter;
  *(v0 + v4) = sub_1E3C678AC();
  v5 = OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_topResultsPagePerformanceReporter;
  *(v0 + v5) = sub_1E3C678AC();
  v6 = (v0 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_searchDelayMessage);
  *v6 = 0;
  v6[1] = 0;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E3BAA6A8()
{
  v1 = v0;
  v23.receiver = v0;
  v23.super_class = type metadata accessor for SearchResultsViewController();
  objc_msgSendSuper2(&v23, sel_vui_viewDidLayoutSubviews);
  v2 = sub_1E3BA987C();
  v3 = OUTLINED_FUNCTION_43_38();
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3;
  [v3 bounds];
  OUTLINED_FUNCTION_3();

  v5 = OUTLINED_FUNCTION_6();
  [v6 v7];

  v8 = OUTLINED_FUNCTION_43_38();
  if (!v8)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v8;
  [v8 safeAreaInsets];
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_8();
  v10 = OUTLINED_FUNCTION_6();
  v12 = v11(v10);
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x140))(v22, v12);
  if (!v22[3])
  {
    sub_1E325F748(v22, &unk_1ECF296D0, &qword_1E429BAA0);
    goto LABEL_7;
  }

  sub_1E327F454(v22, v20);
  sub_1E325F748(v22, &unk_1ECF296D0, &qword_1E429BAA0);
  v13 = v21;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v14 = OUTLINED_FUNCTION_43_38();
  if (v14)
  {
    v15 = v14;
    [v14 bounds];
    OUTLINED_FUNCTION_3();

    v16 = OUTLINED_FUNCTION_6();
    v17(v13, v16);
    __swift_destroy_boxed_opaque_existential_1(v20);
LABEL_7:
    v18 = *(v1 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_stackViewController);
    v19 = v18;
    sub_1E3BAA8D8(v18);

    return;
  }

LABEL_10:
  __break(1u);
}

void sub_1E3BAA8D8(void *a1)
{
  if (!a1)
  {
    return;
  }

  v2 = a1;
  v8 = [v2 vuiView];
  if (!v8)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = [v1 vuiView];
  if (!v3)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v4 = v3;
  [v3 bounds];
  OUTLINED_FUNCTION_3();

  v5 = OUTLINED_FUNCTION_6();
  [v6 v7];
}

void sub_1E3BAAA04()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v24.receiver = v0;
  v24.super_class = type metadata accessor for SearchResultsViewController();
  objc_msgSendSuper2(&v24, sel_vui_willMoveToParentViewController_, v2);
  if (v2)
  {
    goto LABEL_2;
  }

  v10 = sub_1E324FBDC();
  (*(v5 + 16))(v9, v10, v3);
  v11 = v0;
  v12 = sub_1E41FFC94();
  v13 = sub_1E4206814();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = *&v11[OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_stackViewController];
    *(v14 + 4) = v16;
    *v15 = v16;
    v17 = v16;
    _os_log_impl(&dword_1E323F000, v12, v13, "SearchController::LandingPage:: removing stack vc %@", v14, 0xCu);
    sub_1E325F748(v15, &unk_1ECF28E30, &qword_1E429E820);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v5 + 8))(v9, v3);
  v18 = OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_stackViewController;
  v19 = *&v11[OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_stackViewController];
  if (!v19)
  {
    goto LABEL_2;
  }

  [v19 vui:0 willMoveToParentViewController:?];
  v20 = *&v11[v18];
  if (!v20)
  {
    goto LABEL_2;
  }

  v21 = [v20 vuiView];
  if (v21)
  {
    v22 = v21;
    [v21 vui_removeFromSuperView];

    v23 = *&v11[v18];
    if (v23)
    {
      [v23 vui_removeFromParentViewController];
    }

LABEL_2:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  __break(1u);
}

void sub_1E3BAAC94(void *a1, uint64_t *a2, char a3)
{
  v4 = v3;
  if (a3)
  {
    OUTLINED_FUNCTION_7_0();
    (*(v6 + 736))();
  }

  if (a1)
  {
    v7 = *(*a1 + 464);

    v9 = v7(v8);
    if (v9)
    {
      v10 = v9;
      v11 = OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_resultCategoryIds;
      swift_beginAccess();
      v12 = MEMORY[0x1E69E7CD0];
      v115 = a1;
      if (*&v3[v11])
      {
        v14 = sub_1E3BA9830();
        if (*v13)
        {
          v15 = v13;

          *v15 = v12;
        }

        v14(v120, 0);
      }

      else
      {
        *&v3[v11] = MEMORY[0x1E69E7CD0];
      }

      v16 = sub_1E32AE9B0(v10);
      if (v16)
      {
        v17 = v16;
        if (v16 < 1)
        {
          goto LABEL_66;
        }

        for (i = 0; i != v17; ++i)
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x1E6911E60](i, v10);
          }

          else
          {
            v19 = *(v10 + 8 * i + 32);
          }

          v20 = *(v19 + 24);
          if (v20)
          {
            v21 = *(v19 + 16);

            v22 = sub_1E3BA9830();
            if (*v23)
            {
              sub_1E3277398(&v121, v21, v20);
            }

            v22(v120, 0);
          }
        }
      }

      a1 = v115;
    }
  }

  v24 = &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;
  if (*&v4[OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_stackViewController])
  {
    OUTLINED_FUNCTION_3_134();
    v26 = *(v25 + 1416);
    v28 = v27;
    v26(0);
  }

  OUTLINED_FUNCTION_7_0();
  (*(v29 + 792))(0, 0);
  sub_1E3BAB4FC(0, 0);
  v30 = a1;
  if (!a1)
  {
    if (!*&v4[OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_stackViewController])
    {
      goto LABEL_63;
    }

    OUTLINED_FUNCTION_3_134();
    v52 = *(v51 + 560);
    v54 = v53;
    v30 = v52();

    if (!v30)
    {
      goto LABEL_63;
    }
  }

  if ((TVAppFeature.isEnabled.getter(10, v31, v32) & 1) == 0)
  {
    goto LABEL_57;
  }

  if (!*&v4[OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_stackViewController])
  {
    goto LABEL_57;
  }

  OUTLINED_FUNCTION_3_134();
  v34 = *(v33 + 992);
  v36 = v35;
  v118 = v34();
  v38 = v37;

  if (v38 == 1)
  {
    goto LABEL_57;
  }

  OUTLINED_FUNCTION_26();
  v40 = (*(v39 + 464))();
  if (!v40)
  {
    v94 = OUTLINED_FUNCTION_29_52(0, v41, v42, v43, v44, v45, v46, v47, v115, v118);
    sub_1E39DFB80(v94, v95);
    goto LABEL_57;
  }

  v48 = v40;
  v116 = a1;
  v120[0] = MEMORY[0x1E69E7CC0];
  v49 = sub_1E32AE9B0(v40);
  for (j = 0; ; ++j)
  {
    if (v49 == j)
    {

      v55 = sub_1E38FB1DC(v120[0]);

      if (!v55)
      {
        v96 = OUTLINED_FUNCTION_29_52(v56, v57, v58, v59, v60, v61, v62, v63, a1, v118);
        sub_1E39DFB80(v96, v97);
        a1 = v117;
LABEL_55:
        v24 = &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;
        goto LABEL_57;
      }

      v64 = sub_1E32AE9B0(v55);
      v24 = &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;
      if (v64)
      {
        v72 = v64;
        if (v64 < 1)
        {
          goto LABEL_67;
        }

        v73 = 0;
        do
        {
          if ((v55 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1E6911E60](v73, v55);
          }

          else
          {
          }

          ++v73;
          OUTLINED_FUNCTION_8();
          v82 = OUTLINED_FUNCTION_29_52(v74, v75, v76, v77, v78, v79, v80, v81, v116, v118);
          v83(v82);
        }

        while (v72 != v73);
        v92 = OUTLINED_FUNCTION_29_52(v84, v85, v86, v87, v88, v89, v90, v91, v116, v118);
        sub_1E39DFB80(v92, v93);

        goto LABEL_55;
      }

      v98 = OUTLINED_FUNCTION_29_52(0, v65, v66, v67, v68, v69, v70, v71, a1, v118);
      sub_1E39DFB80(v98, v99);

LABEL_57:

      v100 = *&v4[v24[244]];
      if (v100)
      {
        v101 = a2[1];
        v102 = a1;
        if (v101)
        {
          v103 = *a2;
        }

        else
        {
          v103 = 0;
        }

        OUTLINED_FUNCTION_8_9();
        v105 = *(v104 + 1392);
        v106 = v100;
        v105(v103, v101);

        a1 = v102;
      }

      OUTLINED_FUNCTION_7_0();
      v107 += 80;
      v108 = *v107;
      (*v107)();
      OUTLINED_FUNCTION_30();
      v109 = OUTLINED_FUNCTION_24_53();
      v110(v109);

      sub_1E3BACAA4(v30);
      v108();
      OUTLINED_FUNCTION_30();
      (*(v111 + 208))(11, 0, 1);

LABEL_63:
      OUTLINED_FUNCTION_7_0();
      (*(v112 + 640))();
      sub_1E3C69720();

      v113 = [v4 vuiView];
      type metadata accessor for Accessibility();
      v114 = OUTLINED_FUNCTION_38();
      sub_1E40A91FC(v114, 5, a1);

      return;
    }

    if ((v48 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](j, v48);
    }

    else
    {
      if (j >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_65;
      }
    }

    if (__OFADD__(j, 1))
    {
      break;
    }

    type metadata accessor for CollectionViewModel();
    if (swift_dynamicCastClass())
    {
      sub_1E4207544();
      sub_1E4207584();
      sub_1E4207594();
      sub_1E4207554();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
}

void sub_1E3BAB3C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1E3BAB4FC(0, 0);
  v8 = sub_1E3BA987C();
  v9 = *&v4[OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_document];
  if (v9)
  {
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v9 = *(v9 + 56);
  }

  OUTLINED_FUNCTION_21();
  (*(v10 + 528))(a1, a2, a3, v9);

  v11 = OBJC_IVAR____TtC8VideosUI27SearchResultsViewController____lazy_storage___noContentView;
  v12 = [*&v4[OBJC_IVAR____TtC8VideosUI27SearchResultsViewController____lazy_storage___noContentView] superview];
  if (v12)
  {
    goto LABEL_6;
  }

  v13 = [v4 vuiView];
  if (v13)
  {
    v12 = v13;
    [v13 vui:*&v4[v11] addSubview:0 oldView:?];
LABEL_6:

    return;
  }

  __break(1u);
}

void sub_1E3BAB4FC(char a1, char a2)
{
  if (*(v2 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_isShowingLoader) != (a1 & 1))
  {
    v4 = v2;
    *(v2 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_isShowingLoader) = a1 & 1;
    if (a1)
    {
      if (a2)
      {
        v6 = 1.0;
      }

      else
      {
        v6 = 0.0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E4298880;
      v8 = MEMORY[0x1E69E7D40];
      *(inited + 32) = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x280))();
      if (a2)
      {

        inited = swift_allocObject();
        *(inited + 16) = xmmword_1E4298880;
        *(inited + 32) = (*((*v8 & *v2) + 0x268))();
      }

      v9 = sub_1E3BADB54(inited);

      sub_1E3F68814(v9);
      v11 = v10;
      (*((*v8 & *v4) + 0x2B0))();
      OUTLINED_FUNCTION_12_6();
      (*(v12 + 120))();
      OUTLINED_FUNCTION_12_6();
      (*(v13 + 232))(v4, v11, 0.0);

      v14 = objc_opt_self();
      OUTLINED_FUNCTION_4_0();
      v15 = swift_allocObject();
      OUTLINED_FUNCTION_19_6(v15);
      v26 = sub_1E3BAE300;
      v27 = v11;
      aBlock = MEMORY[0x1E69E9820];
      v23 = 1107296256;
      OUTLINED_FUNCTION_14_1();
      v24 = v16;
      v25 = &block_descriptor_40_0;
      v17 = _Block_copy(&aBlock);

      [v14 animateWithDuration:0x10000 delay:v17 options:0 animations:0.25 completion:v6];
    }

    else
    {
      v18 = objc_opt_self();
      OUTLINED_FUNCTION_4_0();
      v19 = swift_allocObject();
      OUTLINED_FUNCTION_19_6(v19);
      v26 = sub_1E3BAE274;
      v27 = v3;
      aBlock = MEMORY[0x1E69E9820];
      v23 = 1107296256;
      v24 = sub_1E378AEA4;
      v25 = &block_descriptor_72;
      v17 = _Block_copy(&aBlock);

      OUTLINED_FUNCTION_4_0();
      v20 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v26 = sub_1E3BAE27C;
      v27 = v20;
      aBlock = MEMORY[0x1E69E9820];
      v23 = 1107296256;
      v24 = sub_1E37EB82C;
      v25 = &block_descriptor_36_0;
      v21 = _Block_copy(&aBlock);

      [v18 animateWithDuration:131076 delay:v17 options:v21 animations:0.25 completion:0.0];
      _Block_release(v21);
    }

    _Block_release(v17);
  }
}

void sub_1E3BAB928()
{
  v0 = sub_1E3BA987C();
  [v0 vui_removeFromSuperView];
}

double sub_1E3BAB96C()
{
  OUTLINED_FUNCTION_19_74();
  OUTLINED_FUNCTION_8_9();
  (*(v3 + 792))(1, 0);
  sub_1E3BABB08();
  sub_1E3BABD34(v2);
  v4 = *(v1 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_hintsCollectionViewModel);
  if (v4)
  {
    v5 = *(v0 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_document);
    OUTLINED_FUNCTION_47_0();
    v7 = *(v6 + 656);

    v8 = v7(v5);
    if ((*(*v4 + 1208))(v8))
    {
      swift_getObjectType();
      v9 = OUTLINED_FUNCTION_22_58();
      v10(v9);
      swift_unknownObjectRelease();
    }
  }

  OUTLINED_FUNCTION_8_9();
  (*(v11 + 616))();
  sub_1E3C69720();

  return result;
}

void sub_1E3BABB08()
{
  v1 = v0;
  OUTLINED_FUNCTION_8_9();
  (*(v2 + 736))();
  v3 = *(v0 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_hintsTemplateViewModel);
  if (v3)
  {
    v4 = OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_stackViewController;
    v5 = *(v0 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_stackViewController);
    if (v5)
    {
      OUTLINED_FUNCTION_8_9();
      v7 = *(v6 + 560);

      v8 = v5;
      v9 = v7();

      if (v9)
      {

        if (v9 == v3)
        {
          goto LABEL_10;
        }
      }

      if (*(v1 + v4))
      {
        OUTLINED_FUNCTION_3_134();
        v11 = *(v10 + 1392);
        v13 = v12;
        v14 = OUTLINED_FUNCTION_26_57();
        v11(v14);

        if (*(v1 + v4))
        {
          OUTLINED_FUNCTION_3_134();
          v16 = *(v15 + 1416);
          v18 = v17;
          v16(1);
        }
      }
    }

    else
    {
    }

    sub_1E3BACAA4(v3);
LABEL_10:
  }

  if (sub_1E39DFFC8())
  {
    v19 = *(v1 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_stackViewController);
    if (v19 && (v20 = [v19 vuiView]) != 0 && (v21 = v20, v25 = objc_msgSend(v20, sel_superview), v21, v25))
    {
      OUTLINED_FUNCTION_15_36();
    }

    else
    {
      OUTLINED_FUNCTION_15_36();

      sub_1E3BAD6F4();
    }
  }

  else
  {
    OUTLINED_FUNCTION_15_36();
  }
}

double sub_1E3BABD34(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 24);
  if (v3)
  {
    v5 = *(a1 + 16);
    v6 = v5 == 0xD000000000000010 && v3 == 0x80000001E4274B20;
    if (v6 || (sub_1E42079A4() & 1) != 0)
    {
      OUTLINED_FUNCTION_12_5();
      v7 += 77;
      v8 = *v7;
      (*v7)();
      OUTLINED_FUNCTION_30();
      v9 = OUTLINED_FUNCTION_24_53();
      v10(v9);

      v11 = OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_hintsTemplateViewModel;
      if (*(v2 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_hintsTemplateViewModel))
      {
        OUTLINED_FUNCTION_12_6();
        v13 = *(v12 + 480);

        OUTLINED_FUNCTION_25_60();
        v14 = v13();
        v22 = v14;
        if (*v15)
        {
          sub_1E3BADAB4();
        }

        v23 = OUTLINED_FUNCTION_34_43(v14, v15, v16, v17, v18, v19, v20, v21, v86[0]);
        v22(v23);

        if (*(v2 + v11))
        {
          OUTLINED_FUNCTION_12_6();
          v25 = *(v24 + 480);

          v26 = v25(v86);
          v28 = *v27;
          if (v28)
          {
            sub_1E37EFABC(0, v28);

            sub_1E3BAE054(0, 0, a1);
            v37 = OUTLINED_FUNCTION_34_43(v29, v30, v31, v32, v33, v34, v35, v36, v86[0]);
          }

          else
          {
            v37 = v86;
          }

          v26(v37);
        }
      }

      v75 = OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_hintsCollectionViewModel;
      if (*(v2 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_hintsCollectionViewModel))
      {
        OUTLINED_FUNCTION_26();
        v77 = *(v76 + 1208);

        v77(v78);
      }

      OUTLINED_FUNCTION_47_0();
      v79 = OUTLINED_FUNCTION_63_0();
      v80(v79);
      *(v2 + v75) = a1;

      (v8)(v81);
LABEL_32:
      OUTLINED_FUNCTION_30();
      (*(v82 + 208))(11, 0, 1);

      return result;
    }

    v38 = v5 == 0xD000000000000016 && v3 == 0x80000001E4274B00;
    if (v38 || (sub_1E42079A4() & 1) != 0)
    {
      OUTLINED_FUNCTION_12_5();
      v40 += 83;
      v41 = *v40;
      (*v40)();
      OUTLINED_FUNCTION_30();
      v42 = OUTLINED_FUNCTION_24_53();
      v43(v42);

      v44 = OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_hintsTemplateViewModel;
      if (*(v2 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_hintsTemplateViewModel))
      {
        OUTLINED_FUNCTION_12_6();
        v46 = *(v45 + 480);

        OUTLINED_FUNCTION_25_60();
        v47 = v46();
        v55 = v47;
        if (*v48)
        {
          sub_1E3A3CBC8();
        }

        v56 = OUTLINED_FUNCTION_34_43(v47, v48, v49, v50, v51, v52, v53, v54, v86[0]);
        v55(v56);

        if (*(v2 + v44))
        {
          OUTLINED_FUNCTION_12_6();
          v58 = *(v57 + 480);

          OUTLINED_FUNCTION_25_60();
          v59 = v58();
          v67 = v59;
          if (*v60)
          {
            v68 = v60;

            MEMORY[0x1E6910BF0](v69);
            sub_1E38C5A18(*((*v68 & 0xFFFFFFFFFFFFFF8) + 0x10));
            v59 = sub_1E4206324();
          }

          v70 = OUTLINED_FUNCTION_34_43(v59, v60, v61, v62, v63, v64, v65, v66, v86[0]);
          v67(v70);
        }
      }

      v71 = OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_topResultsCollectionViewModel;
      if (*(v2 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_topResultsCollectionViewModel))
      {
        OUTLINED_FUNCTION_26();
        v73 = *(v72 + 1208);

        v73(v74);
      }

      OUTLINED_FUNCTION_47_0();
      v83 = OUTLINED_FUNCTION_63_0();
      v84(v83);
      *(v2 + v71) = a1;

      (v41)(v85);
      goto LABEL_32;
    }
  }

  return result;
}

double sub_1E3BAC284()
{
  OUTLINED_FUNCTION_19_74();
  sub_1E3BABB08();
  sub_1E3BABD34(v2);
  v3 = *(v1 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_topResultsCollectionViewModel);
  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_document);
    OUTLINED_FUNCTION_47_0();
    v6 = *(v5 + 656);

    v7 = v6(v4);
    if ((*(*v3 + 1208))(v7))
    {
      swift_getObjectType();
      v8 = OUTLINED_FUNCTION_22_58();
      v9(v8);
      swift_unknownObjectRelease();
    }
  }

  OUTLINED_FUNCTION_12_5();
  (*(v10 + 664))();
  sub_1E3C69720();

  return result;
}

double sub_1E3BAC3E0()
{
  OUTLINED_FUNCTION_19_74();
  v3 = OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_stackViewController;
  if (*&v1[OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_stackViewController])
  {
    OUTLINED_FUNCTION_88_0();
    v5 = *(v4 + 1392);
    v7 = v6;
    v8 = OUTLINED_FUNCTION_26_57();
    v5(v8);
  }

  OUTLINED_FUNCTION_12_5();
  (*(v9 + 736))();
  if (*(v0 + v3))
  {
    OUTLINED_FUNCTION_88_0();
    v11 = *(v10 + 1416);
    v13 = v12;
    v11(0);
  }

  OUTLINED_FUNCTION_47_0();
  v15 = *(v14 + 656);

  v15(v16);
  v17 = objc_opt_self();
  if ([v17 isSearchEnabled] && objc_msgSend(objc_opt_self(), sel_userHasActiveAccount))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E429A240;
    *(inited + 32) = 25705;
    *(inited + 40) = 0xE200000000000000;
    v19 = sub_1E3B58270();
    v20 = v19[1];
    v21 = MEMORY[0x1E69E6158];
    *(inited + 48) = *v19;
    *(inited + 56) = v20;
    *(inited + 72) = v21;
    *(inited + 80) = 0x7475626972747461;
    *(inited + 88) = 0xEA00000000007365;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0, &unk_1E429EC50);
    v22 = swift_initStackObject();
    *(v22 + 16) = xmmword_1E4297BE0;

    v23 = sub_1E3B5827C();
    v25 = *v23;
    v24 = *(v23 + 1);
    *(v22 + 32) = v25;
    *(v22 + 40) = v24;

    v26 = sub_1E3B58264();
    v28 = *v26;
    v27 = v26[1];
    *(v22 + 48) = v28;
    *(v22 + 56) = v27;

    v29 = sub_1E4205CB4();
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C770, &unk_1E4299730);
    *(inited + 96) = v29;
    *(inited + 120) = v30;
    *(inited + 128) = 0x6E6572646C696863;
    *(inited + 136) = 0xE800000000000000;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF311C8, qword_1E42B49E0);
    *(inited + 144) = MEMORY[0x1E69E7CC0];
    *(inited + 168) = v31;
    *(inited + 176) = 0x4B6E65646C696863;
    *(inited + 184) = 0xEA00000000007965;
    *(inited + 192) = 0x6E6572646C696863;
    *(inited + 200) = 0xE800000000000000;
    *(inited + 216) = v21;
    *(inited + 224) = 0xD000000000000015;
    *(inited + 232) = 0x80000001E4274B90;
    *(inited + 264) = MEMORY[0x1E69E6370];
    *(inited + 240) = 1;
    OUTLINED_FUNCTION_63_0();
    v32 = sub_1E4205CB4();
    v33 = *(v0 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_recentlySearchedTemplateViewModel);
    type metadata accessor for UnifiedMessagingBubbleTipViewModel();

    v34 = sub_1E375D8A0(137, v32, v33);
    if (v34)
    {
      OUTLINED_FUNCTION_12_6();
      v36 = *(v35 + 880);
      v37 = swift_unknownObjectRetain();
      v36(v37, &off_1F5D74EB0);
    }
  }

  else
  {
    v34 = 0;
  }

  v38 = OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_recentlySearchedTemplateViewModel;
  v39 = *(v0 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_recentlySearchedTemplateViewModel);
  if (v39)
  {

    v40 = [v17 isSearchEnabled];
    if (v34 && v40)
    {

      v41 = *_s8VideosUIAAC33initializeUnifiedMessagingManageryyFZ_0();
      v42 = OBJC_IVAR____TtC8VideosUI23UnifiedMessagingManager_recentlySearchedBubbleTipViewController;
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      if (*(v41 + v42))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
        swift_allocObject();
        OUTLINED_FUNCTION_38_31();
        *(v43 + 16) = xmmword_1E429DCC0;
        *(v43 + 32) = v34;
        *(v43 + 40) = v2;
        v44 = *(*v39 + 472);

        v45 = OUTLINED_FUNCTION_4_126();
        v44(v45);

LABEL_23:

        sub_1E3BACAA4(v39);

        goto LABEL_24;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
    swift_allocObject();
    OUTLINED_FUNCTION_38_31();
    *(v55 + 16) = xmmword_1E4298880;
    *(v55 + 32) = v2;
    v56 = *(*v39 + 472);

    v57 = OUTLINED_FUNCTION_4_126();
    v56(v57);
    goto LABEL_23;
  }

  type metadata accessor for TemplateViewModel(0);
  sub_1E410D4C8(15, MEMORY[0x1E69E7CC8], 0);
  if (v46)
  {
    v47 = v46;
    v48 = [v17 isSearchEnabled];
    if (v34 && v48)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
      swift_allocObject();
      OUTLINED_FUNCTION_38_31();
      *(v49 + 16) = xmmword_1E429DCC0;
      *(v49 + 32) = v34;
      *(v49 + 40) = v2;
      v50 = *(*v47 + 472);
      swift_retain_n();

      v51 = OUTLINED_FUNCTION_4_126();
      v50(v51);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
      swift_allocObject();
      OUTLINED_FUNCTION_38_31();
      *(v52 + 16) = xmmword_1E4298880;
      *(v52 + 32) = v2;
      v53 = *(*v47 + 472);

      v54 = OUTLINED_FUNCTION_4_126();
      v53(v54);
    }

    sub_1E3BACAA4(v47);

    *(v0 + v38) = v47;
  }

LABEL_24:

  return result;
}

void sub_1E3BACAA4(void *a1)
{
  v2 = v1;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = (v9 - v8);
  v11 = sub_1E324FBDC();
  (*(v6 + 16))(v10, v11, v4);
  v12 = sub_1E41FFC94();
  v13 = sub_1E4206814();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1E323F000, v12, v13, "SearchController::SearchResults:: populateStackTemplate", v14, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  v15 = OUTLINED_FUNCTION_63_0();
  v16(v15);
  v17 = OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_stackViewController;
  v18 = *(v2 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_stackViewController);
  v19 = MEMORY[0x1E69E7D40];
  if (v18)
  {
    v20 = v18;
    OUTLINED_FUNCTION_38();
    sub_1E404BB24();
  }

  else
  {
    type metadata accessor for SearchStackViewController(0);
    OUTLINED_FUNCTION_38();

    v22 = sub_1E3E67BE4(v21);
    v23 = *(v2 + v17);
    *(v2 + v17) = v22;
    a1 = v22;

    v24 = *((*v19 & *a1) + 0x558);
    v25 = swift_unknownObjectRetain();
    v24(v25, &off_1F5D74E98);

    if (*(v2 + v17))
    {
      OUTLINED_FUNCTION_88_0();
      a1 = *(v26 + 416);
      v28 = v27;
      (a1)(v34);
    }

    else
    {
      v35 = 0;
      memset(v34, 0, sizeof(v34));
    }

    OUTLINED_FUNCTION_12_5();
    (*(v29 + 328))(v34);
  }

  v30 = *(v2 + v17);
  if (v30)
  {
    OUTLINED_FUNCTION_4_0();
    v31 = swift_allocObject();
    OUTLINED_FUNCTION_19_6(v31);
    v32 = *((*v19 & *v30) + 0x5B8);
    v33 = v30;
    OUTLINED_FUNCTION_38();

    v32(sub_1E3BADF9C, a1);
  }

  sub_1E3BAD6F4();
}

void sub_1E3BACDC4()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_stackViewController))
  {
    OUTLINED_FUNCTION_88_0();
    v2 = *(v1 + 1528);
    v4 = v3;
    v2();
  }
}

void sub_1E3BACE78()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_stackViewController))
  {
    OUTLINED_FUNCTION_88_0();
    v2 = *(v1 + 1512);
    v4 = v3;
    v2();
  }
}

void sub_1E3BACF20(char a1, char a2)
{
  if (*(v2 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_stackViewController))
  {
    OUTLINED_FUNCTION_88_0();
    v6 = *(v5 + 1520);
    v8 = v7;
    v6(a1 & 1, a2 & 1);
  }
}

uint64_t sub_1E3BAD040()
{
  sub_1E325F748(v0 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_collectionImpressioner, &unk_1ECF296D0, &qword_1E429BAA0);
  sub_1E32AF6F8(v0 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_delegate);

  sub_1E34AF594(*(v0 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_scrollHandler), *(v0 + OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_scrollHandler + 8));
}

id sub_1E3BAD168()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchResultsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1E3BAD37C(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_21();
  v2[4] = (*(v3 + 336))();
  return sub_1E37BCF0C;
}

void sub_1E3BAD41C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = sub_1E324FBDC();
  (*(v6 + 16))(v10, v11, v4);
  v12 = v3;
  v13 = sub_1E41FFC94();
  v14 = sub_1E4206814();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v12;
    *v16 = v12;
    v17 = v12;
    _os_log_impl(&dword_1E323F000, v13, v14, "SearchController::SearchResults:: did host stack cv %@", v15, 0xCu);
    sub_1E325F748(v16, &unk_1ECF28E30, &qword_1E429E820);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  v18 = OUTLINED_FUNCTION_57();
  v19(v18);
  v20 = sub_1E4206934();
  if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x160))(v20))
  {
    v22 = v21;
    ObjectType = swift_getObjectType();
    (*(v22 + 16))(v12, v1, ObjectType, v22);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3BAD634()
{
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_21();
  result = (*(v2 + 352))();
  if (result)
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(v1, v0, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1E3BAD6F4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = *&v1[OBJC_IVAR____TtC8VideosUI27SearchResultsViewController_stackViewController];
  if (!v9)
  {
    goto LABEL_10;
  }

  v26 = v9;
  v10 = [v26 vuiParentViewController];
  if (!v10)
  {
    v13 = sub_1E324FBDC();
    (*(v4 + 16))(v8, v13, v2);
    v14 = v26;
    v15 = sub_1E41FFC94();
    v16 = sub_1E4206814();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v14;
      *v18 = v9;
      v19 = v14;
      _os_log_impl(&dword_1E323F000, v15, v16, "SearchController::SearchResults:: adding stack vc %@", v17, 0xCu);
      sub_1E325F748(v18, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    v20 = OUTLINED_FUNCTION_57();
    v21(v20);
    [v1 vui:v14 addChildViewController:?];
    v22 = v14;
    sub_1E3BAA8D8(v9);

    v23 = OUTLINED_FUNCTION_43_38();
    if (!v23)
    {
      __break(1u);
      return;
    }

    v24 = v23;
    v25 = [v22 vuiView];

    [v24 vui:v25 addSubview:0 oldView:?];
    [v22 vui:v1 didMoveToParentViewController:?];

LABEL_10:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3BAD988(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BD0;
  ViewModelKeys.rawValue.getter(30);
  v5 = MEMORY[0x1E69E6158];
  *(inited + 32) = v6;
  *(inited + 40) = v7;
  *(inited + 72) = v5;
  *(inited + 48) = 0x6572656665726F6ELL;
  *(inited + 56) = 0xEB0000000065636ELL;
  ViewModelKeys.rawValue.getter(7);
  *(inited + 80) = v8;
  *(inited + 88) = v9;
  *(inited + 120) = v5;
  *(inited + 96) = a1;
  *(inited + 104) = a2;

  ViewModelKeys.rawValue.getter(8);
  *(inited + 128) = v10;
  *(inited + 136) = v11;
  v12 = *sub_1E3BA53F4();
  *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C770, &unk_1E4299730);
  *(inited + 144) = v12;

  v13 = sub_1E4205CB4();
  type metadata accessor for CollectionViewModel();
  return sub_1E40B198C(119, v13, 0);
}

uint64_t sub_1E3BADAB4()
{
  v1 = *v0;
  if (!sub_1E32AE9B0(*v0))
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_1E32AE9B0(v1);
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_10:
    v3 = MEMORY[0x1E6911E60](0, v1);
    goto LABEL_6;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = *(v1 + 32);

LABEL_6:
  result = sub_1E32AE9B0(v1);
  if (result)
  {
    sub_1E3882AB0(0, 1);
    return v3;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1E3BADB54(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1E4207384();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v5 = MEMORY[0x1E69E7CC0];
    result = sub_1E4207574();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v4 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E6911E60](v4, a1);
        }

        else
        {
        }

        ++v4;
        type metadata accessor for PagePerformanceReporter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34450, &qword_1E42C0088);
        swift_dynamicCast();
        sub_1E4207544();
        sub_1E4207584();
        sub_1E4207594();
        sub_1E4207554();
      }

      while (v2 != v4);
      return v5;
    }
  }

  return result;
}

void sub_1E3BADC9C()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 navigationBar];

    [v3 frame];
    OUTLINED_FUNCTION_3();
  }

  OUTLINED_FUNCTION_6();
}

double sub_1E3BADD34()
{
  v0 = sub_1E3941780();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return *v0;
}

BOOL sub_1E3BADD8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[3] = &unk_1F5D5DE28;
  v11[4] = &off_1F5D5CA58;
  LOBYTE(v11[0]) = 3;
  v5 = j__OUTLINED_FUNCTION_18();
  v6 = sub_1E39C29F0(v11, v5 & 1);
  __swift_destroy_boxed_opaque_existential_1(v11);
  result = 0;
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_8();
    if ((*(v7 + 464))())
    {

      v8 = sub_1E3F702D8();
      v9 = *v8 == a2 && *(v8 + 1) == a3;
      if (!v9 && (sub_1E42079A4() & 1) == 0)
      {
        return 1;
      }
    }
  }

  return result;
}

unint64_t sub_1E3BADE6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF34440;
  if (!qword_1ECF34440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34440);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchResultsViewController.PageUpdateOperation(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1E3BADF9C(uint64_t a1)
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x250))();
    v6 = v5;

    if (v4)
    {
      v4(a1);
      sub_1E34AF594(v4, v6);
    }
  }
}

void sub_1E3BAE054(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = *v3;
  if (sub_1E32AE9B0(*v3) < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = 1 - v8;
  if (__OFSUB__(1, v8))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_1E32AE9B0(v7);
  v11 = __OFADD__(v10, v9);
  v12 = v10 + v9;
  if (v11)
  {
LABEL_13:
    __break(1u);
    return;
  }

  sub_1E3797CDC(v12, 1);

  sub_1E3BAE104(result, a2, 1, a3);
}

void sub_1E3BAE104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_25;
  }

  v4 = a4;
  v7 = a3;
  v8 = a2;
  v6 = a1;
  v13 = *v5;
  v10 = *v5 & 0xFFFFFFFFFFFFFF8;
  v11 = v10 + 32;
  v9 = v10 + 32 + 8 * a1;
  type metadata accessor for ViewModel();
  swift_arrayDestroy();
  v14 = __OFSUB__(v7, v12);
  v12 = v7 - v12;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v5 = (v9 + 8 * v7);
  if (!v12)
  {
    goto LABEL_17;
  }

  v9 = v13 >> 62;
  if (!(v13 >> 62))
  {
    v15 = *(v10 + 16);
    goto LABEL_6;
  }

LABEL_26:
  v15 = sub_1E4207384();
LABEL_6:
  v16 = v15 - v8;
  if (__OFSUB__(v15, v8))
  {
    __break(1u);
LABEL_28:
    __break(1u);
    return;
  }

  v17 = (v11 + 8 * v8);
  if (v5 != v17 || &v17[8 * v16] <= v5)
  {
    memmove(v5, v17, 8 * v16);
  }

  if (v9)
  {
    v19 = sub_1E4207384();
  }

  else
  {
    v19 = *(v10 + 16);
  }

  if (__OFADD__(v19, v12))
  {
    goto LABEL_28;
  }

  *(v10 + 16) = v19 + v12;
LABEL_17:
  if (v7 < 1)
  {
  }

  else
  {
    v20 = v10 + 8 * v6;
    *(v20 + 32) = v4;
    if (v20 + 40 < v5)
    {

      __break(1u);
    }
  }
}

double sub_1E3BAE27C()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;

    OUTLINED_FUNCTION_8();
    (*(v3 + 240))();
  }

  return result;
}

void sub_1E3BAE308(double a1)
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;

    OUTLINED_FUNCTION_8();
    v5 = (*(v4 + 224))();

    if (v5)
    {
      [v5 setVuiAlpha_];
    }
  }
}

void sub_1E3BAE3B8()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x310))();
  }
}

uint64_t sub_1E3BAE454()
{
  result = sub_1E39C408C();
  if (result)
  {
    type metadata accessor for ImageViewModel();
    result = swift_dynamicCastClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

__objc2_class **sub_1E3BAE4A8()
{
  result = (*(**v0 + 392))();
  if (result)
  {
    if (*result != _TtC8VideosUI27SearchTopResultLockupLayout)
    {

      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for SearchTopResultLockup(uint64_t a1)
{
  result = qword_1EE29B3E0;
  if (!qword_1EE29B3E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3BAE580(uint64_t a1@<X0>, const void *a2@<X1>, void *a3@<X8>)
{
  v7 = sub_1E4201274();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  a3[29] = 0;
  a3[31] = 0;
  v11 = *(type metadata accessor for SearchTopResultLockup(0) + 60);
  *(a3 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  *a3 = a1;
  memcpy(a3 + 1, a2, 0xC3uLL);
  type metadata accessor for ContextMenuModel(0);
  swift_retain_n();
  sub_1E3E6CDBC();

  sub_1E4207414();
  (*(v9 + 104))(v3, *MEMORY[0x1E697E660], v7);
  a3[26] = sub_1E4188148(a1, v3);
  sub_1E39C1F18();
  v13 = v12;
  if (sub_1E32AE9B0(v12))
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x1E6911E60](0, v13);
    }

    else
    {
      if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_50;
      }

      v14 = *(v13 + 32);
    }
  }

  else
  {

    v14 = 0;
  }

  if (TVAppFeature.isEnabled.getter(10, v15, v16))
  {
    sub_1E39C1F18();
    v13 = v17;
    if (!sub_1E32AE9B0(v17))
    {
      goto LABEL_20;
    }

    if ((v13 & 0xC000000000000001) != 0)
    {
LABEL_50:
      v19 = MEMORY[0x1E6911E60](0, v13);
      goto LABEL_17;
    }

    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_16:
      v19 = *(v13 + 32);

LABEL_17:

      a3[32] = v19;
      if ((*(*v19 + 392))(v20))
      {
        type metadata accessor for TextBadgeLayout(0);
        if (!swift_dynamicCastClass())
        {
        }
      }

LABEL_22:
      type metadata accessor for TextBadgePresenter(0);

      a3[33] = sub_1E3789F30(v21);
      type metadata accessor for ImageBadgePresenter(0);

      a3[34] = sub_1E375E078(v22);
      v23 = sub_1E39C408C();
      if (v23)
      {
        v24 = v23;
      }

      else
      {
        v24 = sub_1E39C408C();
        if (!v24)
        {
          goto LABEL_27;
        }
      }

      if (*v24 != _TtC8VideosUI13TextViewModel)
      {

        v24 = 0;
      }

LABEL_27:
      a3[27] = v24;

      v25 = sub_1E39C408C();
      if (v25 && *v25 != _TtC8VideosUI13TextViewModel)
      {

        v25 = 0;
      }

      a3[28] = v25;
      if (sub_1E39C408C())
      {
        v26 = j__OUTLINED_FUNCTION_18();
        sub_1E39C26D0(1, v26 & 1);
        v28 = v27;

        if (!v28 || *v28 == _TtC8VideosUI13TextViewModel)
        {
LABEL_35:
          a3[30] = v28;
          if (v24)
          {

            if (v28)
            {
              OUTLINED_FUNCTION_47_0();
              v30 = (*(v29 + 392))();
              if (v30)
              {
                v31 = v30;
                if (*v30 == _TtC8VideosUI27SearchTopResultLockupLayout)
                {
                  OUTLINED_FUNCTION_25();
                  swift_beginAccess();
                  v32 = v31[16];

                  (v32->isa[51].cache)(1, 0);
                }
              }
            }
          }

          v33 = sub_1E39C408C();

          if (v33)
          {
            v34 = sub_1E39C408C();

            if (!v34 || *v34 == _TtC8VideosUI13TextViewModel)
            {
              goto LABEL_47;
            }
          }

          else
          {
          }

          v34 = 0;
LABEL_47:
          a3[31] = v34;
          return;
        }
      }

      v28 = 0;
      goto LABEL_35;
    }

    __break(1u);
  }

  if (!v14)
  {
LABEL_21:
    a3[32] = 0;
    goto LABEL_22;
  }

  sub_1E39C1F18();
  v13 = v18;

  if (!sub_1E32AE9B0(v13))
  {
LABEL_20:

    goto LABEL_21;
  }

  if ((v13 & 0xC000000000000001) != 0)
  {
    goto LABEL_50;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

  __break(1u);
}

void sub_1E3BAEBBC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v32 = v3;
  v33 = sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v31 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v30 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34458, &qword_1E42C00C8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34460, &qword_1E42C00D0);
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_14_5();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34468, &qword_1E42C00D8);
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v28 - v19;
  sub_1E3BAEEC0();
  v21 = *(v2 + 208);
  v22 = sub_1E3BB35F4();
  sub_1E4187EA8(v21, v8, v22);
  sub_1E325F69C(v11, &qword_1ECF34458);
  v23 = sub_1E3BAE4A8();
  v34 = v8;
  v35 = v22;
  OUTLINED_FUNCTION_3_8();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_8_6();
  LOBYTE(v11) = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_8_6();
  LOBYTE(v2) = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_8_6();
  v25 = OUTLINED_FUNCTION_51_1();
  sub_1E383F6D4(v23, v11 & 1, v2 & 1, 1, v25 & 1, v12, OpaqueTypeConformance2);

  (*(v14 + 8))(v1, v12);
  v26 = v30;
  sub_1E4202474();
  v34 = v12;
  v35 = OpaqueTypeConformance2;
  OUTLINED_FUNCTION_5_15();
  swift_getOpaqueTypeConformance2();
  v27 = v29;
  sub_1E4203224();
  (*(v31 + 8))(v26, v33);
  (*(v17 + 8))(v20, v27);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3BAEEC0()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v30[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF344D8, &qword_1E42C0188);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v30 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF344E0, &qword_1E42C0190);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8_4();
  v30[0] = type metadata accessor for StandardLockupListView(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = sub_1E3BAE4A8();
  if (v15 && (v16 = v15, OUTLINED_FUNCTION_25(), swift_beginAccess(), v17 = *(v16 + 176), , (v17 & 1) == 0))
  {
    memcpy(v33, (v2 + 8), 0xC3uLL);

    sub_1E375C1CC(v33, &v31);
    OUTLINED_FUNCTION_25();
    sub_1E3C6E960();
    sub_1E3BB3A6C(v14, v0);
    swift_storeEnumTagMultiPayload();
    sub_1E3BB37C8();
    v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34488, &qword_1E42C00E8);
    v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34490, &qword_1E42C00F0);
    v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34498, &qword_1E42C00F8);
    v27 = sub_1E3BB3820();
    v31 = v26;
    v32 = v27;
    OUTLINED_FUNCTION_8_3();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v31 = v25;
    v32 = OpaqueTypeConformance2;
    OUTLINED_FUNCTION_3_16();
    v29 = swift_getOpaqueTypeConformance2();
    v31 = v24;
    v32 = v29;
    OUTLINED_FUNCTION_25_61();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_62_16();
    sub_1E3BB3AD0(v14);
  }

  else
  {
    sub_1E3BAF1F4();
    (*(v6 + 16))(v0, v9, v4);
    swift_storeEnumTagMultiPayload();
    sub_1E3BB37C8();
    v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34488, &qword_1E42C00E8);
    v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34490, &qword_1E42C00F0);
    v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34498, &qword_1E42C00F8);
    v21 = sub_1E3BB3820();
    v33[0] = v20;
    v33[1] = v21;
    OUTLINED_FUNCTION_8_3();
    v22 = swift_getOpaqueTypeConformance2();
    v33[0] = v19;
    v33[1] = v22;
    OUTLINED_FUNCTION_3_16();
    v23 = swift_getOpaqueTypeConformance2();
    v33[0] = v18;
    v33[1] = v23;
    OUTLINED_FUNCTION_25_61();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_62_16();
    (*(v6 + 8))(v9, v4);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3BAF1F4()
{
  OUTLINED_FUNCTION_9_4();
  v31 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34498, &qword_1E42C00F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_5();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34490, &qword_1E42C00F0);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34488, &qword_1E42C00E8);
  OUTLINED_FUNCTION_0_10();
  v29 = v12;
  v30 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8_4();
  sub_1E3BAF540();
  if (sub_1E3BAE4A8())
  {
    OUTLINED_FUNCTION_30();
    v15 = (*(v14 + 792))();
  }

  else
  {
    v15 = 11;
  }

  memset(v36, 0, sizeof(v36));
  v37 = 1;
  v16 = sub_1E3BB3820();
  sub_1E3A6929C(v15, 0, 0, 1, v36, v3, v16);
  sub_1E325F69C(v1, &qword_1ECF34498);
  if (sub_1E3BAE4A8())
  {
    OUTLINED_FUNCTION_30();
    v18 = (*(v17 + 744))();
  }

  else
  {
    v18 = 0;
  }

  v34[0] = v3;
  v34[1] = v16;
  OUTLINED_FUNCTION_8_3();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_46_4();
  sub_1E39B87A4(v20, v21, v22);

  (*(v7 + 8))(v10, v5);
  if (sub_1E3BAE4A8())
  {
    OUTLINED_FUNCTION_30();
    (*(v23 + 552))(v34);

    if ((v35 & 1) == 0)
    {
      v24 = OUTLINED_FUNCTION_6();
      sub_1E3952BE8(v24, v25, v26, v27);
    }
  }

  v32 = v5;
  v33 = OpaqueTypeConformance2;
  OUTLINED_FUNCTION_3_16();
  swift_getOpaqueTypeConformance2();
  v28 = v30;
  sub_1E3E361E8();
  (*(v29 + 8))(v0, v28);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3BAF540()
{
  OUTLINED_FUNCTION_31_1();
  v37[1] = v1;
  v37[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29568, &qword_1E429B638);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  v4 = v37 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF344E8, &qword_1E42C0198);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_41();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF344B0, &qword_1E42C0100);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_5();
  v7 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = (v12 - v11);
  type metadata accessor for SearchTopResultLockup(0);
  sub_1E3746E10(v13);
  v14 = sub_1E3B02A04();
  (*(v9 + 8))(v13, v7);
  if (v14)
  {
    sub_1E3BAF800(v0);
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v15, v16, v17, v18);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_27_47();
    OUTLINED_FUNCTION_21_1();
    sub_1E3BB39A8(v19, v20, v21, v22);
    OUTLINED_FUNCTION_26_58();
  }

  else
  {
    sub_1E3BAFA5C(v4);
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v27, v28, v29, v30);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_27_47();
    sub_1E3BB39A8(v31, v32, v33, v34);
    OUTLINED_FUNCTION_26_58();
    OUTLINED_FUNCTION_21_1();
  }

  sub_1E3BB39A8(v23, v24, v25, v26);
  OUTLINED_FUNCTION_31_6();
  sub_1E4201F44();
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v35, v36);
  OUTLINED_FUNCTION_25_2();
}

void *sub_1E3BAF800@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF344C0, &qword_1E42C0108);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_19_2();
  if (sub_1E3BAE4A8())
  {
    OUTLINED_FUNCTION_30();
    (*(v7 + 1152))();
  }

  v8 = sub_1E3BAE4A8();
  if (!v8 || (v9 = v8, OUTLINED_FUNCTION_25(), swift_beginAccess(), v10 = *(v9 + 176), , (v10)) && sub_1E3BAE4A8() && (OUTLINED_FUNCTION_30(), (*(v11 + 176))(v25), v12 = v25[0], v13 = v25[1], v14 = v25[2], v15 = v25[3], , (v26 & 1) == 0))
  {
    v16.n128_u64[0] = v12;
    v17.n128_u64[0] = v13;
    v18.n128_u64[0] = v14;
    v19.n128_u64[0] = v15;
    j_nullsub_1(v16, v17, v18, v19);
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
  }

  OUTLINED_FUNCTION_9_10();
  *v2 = sub_1E4201D54();
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF344F0, &qword_1E42C01A0);
  sub_1E3BAFC38(v3, v2 + *(v20 + 44));
  v21 = sub_1E4202734();
  v22 = (v2 + *(v5 + 36));
  *v22 = v21;
  OUTLINED_FUNCTION_15_3(v22);
  sub_1E4203DA4();
  OUTLINED_FUNCTION_23_3();
  sub_1E42015C4();
  sub_1E3741EA0(v2, a1, &qword_1ECF344C0, &qword_1E42C0108);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF344B0, &qword_1E42C0100);
  return memcpy((a1 + *(v23 + 36)), __src, 0x70uLL);
}

void *sub_1E3BAFA5C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29578, &qword_1E429B640);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_19_2();
  v5 = sub_1E3BAE4A8();
  if (!v5 || (v6 = v5, OUTLINED_FUNCTION_25(), swift_beginAccess(), v7 = *(v6 + 176), , (v7)) && sub_1E3BAE4A8() && (OUTLINED_FUNCTION_30(), (*(v8 + 176))(&v17), , (v18 & 1) == 0))
  {
    v9.n128_f64[0] = OUTLINED_FUNCTION_6();
    j_nullsub_1(v9, v10, v11, v12);
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
  }

  OUTLINED_FUNCTION_3();
  *v1 = sub_1E4201D44();
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29598, &qword_1E429B6D0);
  sub_1E3BB1284();
  v13 = sub_1E4202734();
  v14 = (v1 + *(v3 + 36));
  *v14 = v13;
  OUTLINED_FUNCTION_11_4(v14);
  sub_1E4203DA4();
  OUTLINED_FUNCTION_23_3();
  sub_1E42015C4();
  sub_1E3741EA0(v1, a1, &qword_1ECF29578, &qword_1E429B640);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29568, &qword_1E429B638);
  return memcpy((a1 + *(v15 + 36)), __src, 0x70uLL);
}

uint64_t sub_1E3BAFC38@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v214 = a2;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v228 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v6);
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295A8, &unk_1E42B9500);
  OUTLINED_FUNCTION_0_10();
  v211 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v12);
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295B0, &unk_1E429B6F0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295B8, &unk_1E42B9510);
  v23 = OUTLINED_FUNCTION_17_2(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v27);
  v29 = v203 - v28;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295C0, &unk_1E429B700);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295C8, &qword_1E42B9630);
  v41 = v40 - 8;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v42);
  v44 = v203 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF344F8, &qword_1E42C01A8);
  v46 = OUTLINED_FUNCTION_17_2(v45);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v47);
  v49 = v203 - v48;
  *v49 = sub_1E4201B84();
  *(v49 + 1) = 0;
  v49[16] = 0;
  v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34500, &qword_1E42C01B0) + 44);
  v219 = v49;
  v51 = &v49[v50];
  v52 = sub_1E42036E4();
  v53 = *sub_1E418A524();
  v54 = sub_1E4203D44();
  v56 = v55;
  v57 = &v51[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34508, &qword_1E42C01B8) + 36)];
  sub_1E3BB0CB4();
  v58 = &v57[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34510, &qword_1E42C01C0) + 36)];
  *v58 = v54;
  v58[1] = v56;
  *v51 = v52;
  *(v51 + 4) = 256;
  *(v51 + 2) = v53;
  *(v51 + 12) = 0;
  sub_1E3BB0F34();
  v59 = *(v41 + 44);
  v220 = v44;
  *&v44[v59] = 256;
  v60 = v227;
  v61 = v228;
  v230 = a1;
  if (a1[27])
  {

    v64 = sub_1E3C27528(v62, v63);
    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    v66 = OUTLINED_FUNCTION_0_21(v65);
    v67 = v203[0];
    v68 = v208;
    sub_1E3883AF4(v64, v208, v66);
    (*(v61 + 8))(v60, v68);
    sub_1E4202744();
    v69 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v70)
    {
      v69 = sub_1E4202774();
    }

    v71 = v211;
    if (v64)
    {
      v72 = v29;
      v73 = v68;
      v74 = v211;
      v75 = *(*v64 + 152);

      v75(&v234, v76);
      v71 = v74;
      v68 = v73;
      v29 = v72;

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_9_10();

    v79 = v204;
    v77 = v212;
    (*(v71 + 32))(v204, v67, v212);
    v78 = v210;
    v80 = (v79 + *(v210 + 36));
    *v80 = v69;
    OUTLINED_FUNCTION_15_3(v80);
    a1 = &unk_1E429B6F0;
    OUTLINED_FUNCTION_12_19();
    sub_1E3741EA0(v81, v82, v83, v84);
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v85, v86, v87, v88);
  }

  else
  {
    v77 = v212;
    v71 = v211;
    v78 = v210;
    v68 = v208;
  }

  v89 = v226;
  OUTLINED_FUNCTION_37_6();
  __swift_storeEnumTagSinglePayload(v90, v91, v92, v93);
  sub_1E4202744();
  OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  v94 = v78;
  v95 = v218;
  if (!v70)
  {
    sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_65_16();
  sub_1E3741EA0(v96, v97, v98, v99);
  OUTLINED_FUNCTION_22_59();
  OUTLINED_FUNCTION_15_3(v100);
  sub_1E3741EA0(a1, v221, &qword_1ECF295C0, &unk_1E429B700);
  v101 = v228;
  if (v230[28])
  {

    v104 = sub_1E3C27528(v102, v103);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_47_35();
    sub_1E3F23370();
    v106 = OUTLINED_FUNCTION_0_21(v105);
    OUTLINED_FUNCTION_41_38(v106, v107, v106);
    v108 = OUTLINED_FUNCTION_64_16();
    v109(v108);
    sub_1E4202744();
    v110 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v70)
    {
      v110 = sub_1E4202774();
    }

    if (v104)
    {
      OUTLINED_FUNCTION_47_0();
      v112 = *(v111 + 152);
      v29 = v68;

      v112(&v235, v113);
      v101 = v228;
      OUTLINED_FUNCTION_47_35();

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_9_10();

    v115 = v205;
    (*(v71 + 32))(v205, v215, v77);
    v116 = (v115 + *(v94 + 36));
    *v116 = v110;
    OUTLINED_FUNCTION_15_3(v116);
    a1 = &unk_1E429B6F0;
    OUTLINED_FUNCTION_12_19();
    sub_1E3741EA0(v117, v118, v119, v120);
    v95 = v218;
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v121, v122, v123, v124);
    v114 = 0;
    v89 = v226;
  }

  else
  {
    OUTLINED_FUNCTION_47_35();
  }

  __swift_storeEnumTagSinglePayload(v95, v114, 1, v94);
  sub_1E4202744();
  OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v70)
  {
    sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_65_16();
  sub_1E3741EA0(v125, v126, v127, v128);
  OUTLINED_FUNCTION_22_59();
  OUTLINED_FUNCTION_15_3(v129);
  sub_1E3741EA0(a1, v222, &qword_1ECF295C0, &unk_1E429B700);
  if (v230[30])
  {

    v132 = sub_1E3C27528(v130, v131);
    v133 = OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_42_42(v133);
    v135 = OUTLINED_FUNCTION_0_21(v134);
    OUTLINED_FUNCTION_41_38(v135, v136, v135);
    v137 = OUTLINED_FUNCTION_64_16();
    v138(v137);
    sub_1E4202744();
    v139 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v70)
    {
      v139 = sub_1E4202774();
    }

    if (v132)
    {
      OUTLINED_FUNCTION_47_0();
      v141 = *(v140 + 152);
      v29 = v68;

      v141(&v236, v142);
      v101 = v228;
      OUTLINED_FUNCTION_47_35();

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_9_10();

    v89 = v206;
    (*(v71 + 32))(v206, v216, v77);
    v144 = (v89 + *(v94 + 36));
    *v144 = v139;
    OUTLINED_FUNCTION_15_3(v144);
    a1 = &unk_1E429B6F0;
    OUTLINED_FUNCTION_12_19();
    sub_1E3741EA0(v145, v146, v147, v148);
    OUTLINED_FUNCTION_12_19();
    sub_1E3741EA0(v149, v150, v151, v152);
    v143 = 0;
  }

  else
  {
    v143 = 1;
  }

  __swift_storeEnumTagSinglePayload(v89, v143, 1, v94);
  sub_1E4202744();
  OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v70)
  {
    sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_65_16();
  sub_1E3741EA0(v153, v154, v155, v156);
  OUTLINED_FUNCTION_22_59();
  OUTLINED_FUNCTION_11_4(v157);
  sub_1E3741EA0(a1, v223, &qword_1ECF295C0, &unk_1E429B700);
  v158 = v230[31];
  if (v158)
  {

    v161 = sub_1E3C27528(v159, v160);
    v162 = OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_42_42(v162);
    v164 = OUTLINED_FUNCTION_0_21(v163);
    OUTLINED_FUNCTION_41_38(v164, v165, v164);
    (*(v101 + 8))(v29, v68);
    sub_1E4202744();
    v166 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v70)
    {
      v166 = sub_1E4202774();
    }

    if (v161)
    {
      OUTLINED_FUNCTION_47_0();
      v168 = *(v167 + 152);

      v168(&v237, v169);

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();

    v172 = v207;
    (*(v71 + 32))(v207, v217, v77);
    v173 = (v172 + *(v94 + 36));
    *v173 = v166;
    OUTLINED_FUNCTION_11_4(v173);
    v158 = &qword_1ECF295B0;
    a1 = &unk_1E429B6F0;
    OUTLINED_FUNCTION_12_19();
    sub_1E3741EA0(v174, v175, v176, v177);
    v171 = v209;
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v178, v179, v180, v181);
    v170 = 0;
  }

  else
  {
    v170 = 1;
    v171 = v209;
  }

  __swift_storeEnumTagSinglePayload(v171, v170, 1, v94);
  OUTLINED_FUNCTION_56_6();
  sub_1E3743538(v182, v183, v184, v185);
  v233[0] = v158;
  OUTLINED_FUNCTION_56_6();
  sub_1E3743538(v186, v187, v188, v189);
  v233[1] = v158;
  v190 = v221;
  OUTLINED_FUNCTION_56_6();
  sub_1E3743538(v191, v192, &qword_1ECF295C0, &unk_1E429B700);
  v233[2] = v158;
  v193 = v222;
  OUTLINED_FUNCTION_65_16();
  sub_1E3743538(v194, v195, &qword_1ECF295C0, &unk_1E429B700);
  v233[3] = a1;
  v196 = v223;
  OUTLINED_FUNCTION_56_6();
  sub_1E3743538(v197, v198, &qword_1ECF295C0, &unk_1E429B700);
  v233[4] = v158;
  v199 = v213;
  sub_1E3743538(v171, v213, &qword_1ECF295B8, &unk_1E42B9510);
  v231 = 0;
  v232 = 0;
  v233[5] = v199;
  v233[6] = &v231;
  sub_1E3BB1168(v233, v214);
  sub_1E325F69C(v171, &qword_1ECF295B8);
  OUTLINED_FUNCTION_50_3(v196);
  OUTLINED_FUNCTION_50_3(v193);
  OUTLINED_FUNCTION_50_3(v190);
  sub_1E325F69C(v220, &qword_1ECF295C8);
  sub_1E325F69C(v219, &qword_1ECF344F8);
  sub_1E325F69C(v199, &qword_1ECF295B8);
  OUTLINED_FUNCTION_50_3(v158);
  OUTLINED_FUNCTION_50_3(a1);
  OUTLINED_FUNCTION_50_3(v225);
  sub_1E325F69C(v224, &qword_1ECF295C8);
  OUTLINED_FUNCTION_46_4();
  return sub_1E325F69C(v200, v201);
}

void sub_1E3BB0CB4()
{
  OUTLINED_FUNCTION_9_4();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295E0, &qword_1E429B720);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_41();
  if (sub_1E3BAE454())
  {
    j__OUTLINED_FUNCTION_18();
    j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_55_3();
    OUTLINED_FUNCTION_58_2();
    OUTLINED_FUNCTION_55_27();
    sub_1E3EB9C0C(v5, v6, v7, v8, v9, v10, 0, 2, v11, 0, 1, 0, 1, *&v39[8], v39[16], v39[17], v39[18]);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_30_5();
    sub_1E37E8BE8(v12, v13, v14, v15, v16, v17, v18);
    v19 = sub_1E4203D64();
    v21 = v20;
    v22 = sub_1E3BAE4A8();
    if (v22 && (v23 = v22, OUTLINED_FUNCTION_25(), swift_beginAccess(), v24 = v23[13], , v25 = , (v24->isa[4].cache)(v40, v25), , (v41 & 1) == 0))
    {
      v31.n128_f64[0] = OUTLINED_FUNCTION_6();
      j_nullsub_1(v31, v32, v33, v34);
    }

    else
    {
      OUTLINED_FUNCTION_5_8();
    }

    OUTLINED_FUNCTION_3();
    v35 = v0 + *(v3 + 36);
    *v35 = sub_1E4201D54();
    *(v35 + 8) = 0;
    *(v35 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295E8, &qword_1E429B728);
    sub_1E3BB2F50();
    v36 = sub_1E4202734();
    sub_1E375C31C(v39);

    v37 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295F0, &qword_1E429B730) + 36));
    *v37 = v36;
    OUTLINED_FUNCTION_11_4(v37);
    v38 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295F8, &qword_1E429B738) + 36));
    *v38 = v19;
    v38[1] = v21;
    sub_1E3741EA0(v0, v2, &qword_1ECF295E0, &qword_1E429B720);
    __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
    OUTLINED_FUNCTION_10_3();
  }

  else
  {
    OUTLINED_FUNCTION_48_6();
    OUTLINED_FUNCTION_10_3();

    __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  }
}

void sub_1E3BB0F34()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  type metadata accessor for Monogram(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  if (sub_1E39C408C())
  {
    v4 = sub_1E3BAE4A8();
    if (v4)
    {
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v5 = v4[14];

      (v5->isa[7].vtable)(v6);
    }

    j__OUTLINED_FUNCTION_51_1();
    j__OUTLINED_FUNCTION_18();
    j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_55_3();
    OUTLINED_FUNCTION_58_2();
    OUTLINED_FUNCTION_55_27();
    sub_1E3EB9C0C(v7, v8, v9, v10, v11, v12, v13, 2, v14, 0, 1, 0, 1, v31, v32[0], v32[1], v32[2]);
    OUTLINED_FUNCTION_30_5();
    sub_1E3BD63E4(v15, v16, v17, v18, v19, v20, 0, 0, v21);
    sub_1E3788908(v0, v2, type metadata accessor for Monogram);
    OUTLINED_FUNCTION_35_9();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    OUTLINED_FUNCTION_35_9();
    OUTLINED_FUNCTION_25_2();

    __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  }
}

uint64_t sub_1E3BB1168@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E3743538(*a1, a2, &qword_1ECF344F8, &qword_1E42C01A8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34518, &qword_1E42C01C8);
  sub_1E3743538(a1[1], a2 + v4[12], &qword_1ECF295C8, &qword_1E42B9630);
  sub_1E3743538(a1[2], a2 + v4[16], &qword_1ECF295C0, &unk_1E429B700);
  sub_1E3743538(a1[3], a2 + v4[20], &qword_1ECF295C0, &unk_1E429B700);
  sub_1E3743538(a1[4], a2 + v4[24], &qword_1ECF295C0, &unk_1E429B700);
  result = sub_1E3743538(a1[5], a2 + v4[28], &qword_1ECF295B8, &unk_1E42B9510);
  v6 = a2 + v4[32];
  v7 = a1[6];
  v8 = *v7;
  LOBYTE(v7) = *(v7 + 8);
  *v6 = v8;
  *(v6 + 8) = v7;
  return result;
}

void sub_1E3BB1284()
{
  OUTLINED_FUNCTION_9_4();
  v3 = v2;
  v84 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v77 = v6;
  v78 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295A8, &unk_1E42B9500);
  OUTLINED_FUNCTION_0_10();
  v81 = v9;
  v82 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  v85 = v11;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295B0, &unk_1E429B6F0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_5();
  v80 = v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25_3();
  v79 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295B8, &unk_1E42B9510);
  v17 = OUTLINED_FUNCTION_17_2(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29628, &unk_1E42C01D0);
  v23 = OUTLINED_FUNCTION_17_2(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v77 - v25;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_34_1();
  if (sub_1E3BAE4A8())
  {
    OUTLINED_FUNCTION_30();
    v29 = (*(v28 + 1152))();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 1;
  }

  *v26 = sub_1E4201B84();
  *(v26 + 1) = v29;
  v26[16] = v31 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29630, &unk_1E429B780);
  sub_1E3BB179C();
  sub_1E3741EA0(v26, v0, &qword_1ECF29628, &unk_1E42C01D0);
  if (*(v3 + 248))
  {

    v34 = sub_1E3C27528(v32, v33);
    v35 = OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_42_42(v35);
    v37 = OUTLINED_FUNCTION_0_21(v36);
    v38 = v78;
    sub_1E3883AF4(v34, v78, v37);
    (*(v77 + 8))(v1, v38);
    sub_1E4202744();
    v39 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v40)
    {
      v39 = sub_1E4202774();
    }

    if (v34)
    {
      v41 = *(*v34 + 152);

      v41(&v86, v42);

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();

    v43 = v80;
    (*(v81 + 32))(v80, v85, v82);
    v44 = (v43 + *(v83 + 36));
    *v44 = v39;
    OUTLINED_FUNCTION_11_4(v44);
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v45, v46, v47, v48);
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v49, v50, v51, v52);
  }

  OUTLINED_FUNCTION_37_6();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v57, v58, v59, v60);
  v61 = OUTLINED_FUNCTION_39_3();
  sub_1E3743538(v61, v62, &qword_1ECF295B8, &unk_1E42B9510);
  v63 = v84;
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v64, v65, v66, v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29638, &qword_1E42C01E0);
  sub_1E3743538(v20, v63 + *(v68 + 48), &qword_1ECF295B8, &unk_1E42B9510);
  OUTLINED_FUNCTION_46_4();
  sub_1E325F69C(v69, v70);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v71, v72);
  OUTLINED_FUNCTION_46_4();
  sub_1E325F69C(v73, v74);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v75, v76);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3BB179C()
{
  OUTLINED_FUNCTION_31_1();
  v31 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29640, &unk_1E429B790);
  v3 = OUTLINED_FUNCTION_17_2(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29648, &qword_1E42B70C0);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295D0, &qword_1E429B710);
  v19 = OUTLINED_FUNCTION_17_2(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_6();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_23_8();
  sub_1E3BB1A9C();
  v28 = v17;
  sub_1E3BB0F34();
  *v9 = sub_1E4201D54();
  *(v9 + 1) = 0;
  v9[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29650, &qword_1E429B7A0);
  sub_1E3BB1EEC();
  v30 = v22;
  sub_1E3743538(v0, v22, &qword_1ECF295D0, &qword_1E429B710);
  v29 = v14;
  sub_1E3743538(v17, v14, &qword_1ECF29648, &qword_1E42B70C0);
  sub_1E3743538(v9, v6, &qword_1ECF29640, &unk_1E429B790);
  v24 = v22;
  v25 = v31;
  sub_1E3743538(v24, v31, &qword_1ECF295D0, &qword_1E429B710);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29658, &qword_1E429B7A8);
  sub_1E3743538(v14, v25 + v26[12], &qword_1ECF29648, &qword_1E42B70C0);
  sub_1E3743538(v6, v25 + v26[16], &qword_1ECF29640, &unk_1E429B790);
  v27 = v25 + v26[20];
  *v27 = 0;
  *(v27 + 8) = 0;
  sub_1E325F69C(v9, &qword_1ECF29640);
  sub_1E325F69C(v28, &qword_1ECF29648);
  sub_1E325F69C(v0, &qword_1ECF295D0);
  sub_1E325F69C(v6, &qword_1ECF29640);
  sub_1E325F69C(v29, &qword_1ECF29648);
  sub_1E325F69C(v30, &qword_1ECF295D0);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3BB1A9C()
{
  OUTLINED_FUNCTION_9_4();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295E0, &qword_1E429B720);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8_4();
  if (sub_1E3BAE454())
  {
    v3 = sub_1E3BAE4A8();
    if (v3 && (v4 = v3, OUTLINED_FUNCTION_25(), swift_beginAccess(), v5 = *(v4 + 176), , (v5 & 1) == 0))
    {
      sub_1E3EB9BB4(&v81);
      v79 = v81;
      v80 = v82;
      v22 = v83;
      OUTLINED_FUNCTION_56_23();
      v26 = v84;
      v27 = v85;
    }

    else
    {
      v6 = 0.0;
      v7 = 0.0;
      if (sub_1E3BAE4A8())
      {
        OUTLINED_FUNCTION_30();
        *&v9 = COERCE_DOUBLE((*(v8 + 304))());
        v11 = v10;

        if ((v11 & 1) == 0)
        {
          v7 = *&v9;
        }
      }

      if (sub_1E3BAE4A8())
      {
        OUTLINED_FUNCTION_30();
        (*(v12 + 176))(&v66);

        if (v69)
        {
          v6 = 0.0;
        }

        else
        {
          v6 = *&v66;
        }
      }

      if (sub_1E3BAE4A8())
      {
        OUTLINED_FUNCTION_30();
        (*(v13 + 176))(&v81);

        OUTLINED_FUNCTION_32_1();
        if (!v16)
        {
          v14 = v15;
        }
      }

      else
      {
        v14 = 0.0;
      }

      v22 = v7 - v6 - v14;
      j__OUTLINED_FUNCTION_51_1();
      j__OUTLINED_FUNCTION_18();
      j__OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_55_3();
      OUTLINED_FUNCTION_58_2();
      v26 = 1;
      LOBYTE(v68) = 1;
      v67 = 0;
      BYTE8(v66) = 1;
      *&v66 = 0;
      OUTLINED_FUNCTION_55_27();
      sub_1E3EB9C0C(v28, v29, v30, v31, v32, v33, v34, 2, v35, v66, SBYTE8(v66), v67, v68, v69, v70, v71, v72);
      v79 = v81;
      v80 = v82;
      OUTLINED_FUNCTION_56_23();
      v27 = v85;
      v25 = 1;
      v78 = 0;
    }

    v66 = v79;
    v72 = v76;
    v67 = v80;
    v68 = v23;
    v69 = *&v22;
    v70 = v24;
    v71 = v25;
    *v73 = v77[0];
    *&v73[14] = *(v77 + 14);
    v74 = v26;
    v75 = v27;
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_30_5();
    sub_1E37E8BE8(v36, v37, v38, v39, v40, v41, v42);
    v43 = sub_1E4203D64();
    v45 = v44;
    v46 = sub_1E3BAE4A8();
    if (v46 && (v47 = v46, OUTLINED_FUNCTION_25(), swift_beginAccess(), v48 = v47[13], , v49 = , (v48->isa[4].cache)(&v81, v49), , (LOBYTE(v83) & 1) == 0))
    {
      v50.n128_f64[0] = OUTLINED_FUNCTION_6();
      j_nullsub_1(v50, v51, v52, v53);
    }

    else
    {
      OUTLINED_FUNCTION_5_8();
    }

    OUTLINED_FUNCTION_3();
    v54 = v0 + *(v1 + 36);
    *v54 = sub_1E4201D54();
    *(v54 + 8) = 0;
    *(v54 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295E8, &qword_1E429B728);
    sub_1E3BB2F50();
    v55 = sub_1E4202734();
    sub_1E375C31C(&v66);

    v56 = (v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295F0, &qword_1E429B730) + 36));
    *v56 = v55;
    OUTLINED_FUNCTION_11_4(v56);
    v57 = (v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295F8, &qword_1E429B738) + 36));
    *v57 = v43;
    v57[1] = v45;
    v58 = OUTLINED_FUNCTION_39_3();
    sub_1E3741EA0(v58, v59, v60, v61);
    OUTLINED_FUNCTION_37_6();
    __swift_storeEnumTagSinglePayload(v62, v63, v64, v65);
    OUTLINED_FUNCTION_10_3();
  }

  else
  {
    OUTLINED_FUNCTION_37_6();
    OUTLINED_FUNCTION_10_3();

    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  }
}

void sub_1E3BB1EEC()
{
  OUTLINED_FUNCTION_9_4();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29660, &qword_1E429B7B0);
  v7 = OUTLINED_FUNCTION_17_2(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v112 - v15;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295A8, &unk_1E42B9500);
  OUTLINED_FUNCTION_0_10();
  *&v125 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_23_8();
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295B0, &unk_1E429B6F0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v112 - v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295B8, &unk_1E42B9510);
  v28 = OUTLINED_FUNCTION_17_2(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v112 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v112 - v34;
  v128 = v3;
  v36 = *(v3 + 216);
  v127 = v32;
  v123 = v0;
  v122 = v5;
  v126 = &v112 - v34;
  v116 = v11;
  v115 = v13;
  if (v36)
  {

    v39 = sub_1E3C27528(v37, v38);
    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    v41 = OUTLINED_FUNCTION_0_21(v40);
    v113 = v1;
    sub_1E3883AF4(v39, v11, v41);
    (*(v13 + 8))(v16, v11);
    sub_1E4202744();
    v42 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v43)
    {
      v42 = sub_1E4202774();
    }

    v44 = v118;
    if (v39)
    {
      v45 = *(*v39 + 152);
      v46 = v118;

      v45(&v129, v47);
      v32 = v127;
      v44 = v46;

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();

    (*(v125 + 32))(v24, v113, v44);
    OUTLINED_FUNCTION_47_35();
    v49 = &v24[*(v36 + 36)];
    *v49 = v42;
    OUTLINED_FUNCTION_11_4(v49);
    v50 = v114;
    sub_1E3741EA0(v24, v114, &qword_1ECF295B0, &unk_1E429B6F0);
    v35 = v126;
    sub_1E3741EA0(v50, v126, &qword_1ECF295B0, &unk_1E429B6F0);
    v48 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_47_35();
    v44 = v118;
  }

  v51 = 1;
  __swift_storeEnumTagSinglePayload(v35, v48, 1, v36);
  if (*(v128 + 224))
  {

    v54 = sub_1E3C27528(v52, v53);
    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    v56 = OUTLINED_FUNCTION_0_21(v55);
    v57 = v116;
    sub_1E3883AF4(v54, v116, v56);
    (*(v115 + 8))(v16, v57);
    sub_1E4202744();
    v58 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v43)
    {
      v58 = sub_1E4202774();
    }

    if (v54)
    {
      v59 = *(*v54 + 152);

      v59(&v130, v60);
      v32 = v127;

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();

    v61 = v117;
    (*(v125 + 32))(v117, v124, v44);
    v62 = (v61 + *(v36 + 36));
    *v62 = v58;
    OUTLINED_FUNCTION_11_4(v62);
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v63, v64, v65, v66);
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v67, v68, v69, v70);
    v51 = 0;
  }

  v71 = 1;
  v72 = __swift_storeEnumTagSinglePayload(v32, v51, 1, v36);
  v73 = *(v128 + 256);
  v74 = 0uLL;
  if (v73)
  {
    if ((*(*v73 + 392))(v72, 0))
    {
      OUTLINED_FUNCTION_30();
      (*(v75 + 152))(&v131);
      v125 = v131;
      v77 = v132;
      v76 = v133;
      v71 = v134;

      v74 = v125;
    }

    else
    {
      v77 = 0;
      v76 = 0;
      v74 = 0uLL;
    }
  }

  else
  {
    v77 = 0;
    v76 = 0;
  }

  v135 = v74;
  v136 = v77;
  v137 = v76;
  v78 = v71 & 1;
  v138 = v78;
  if (v78)
  {
    v79 = 0;
  }

  else
  {
    v79 = v76;
  }

  v80 = sub_1E4201B84();
  v81 = v120;
  *v120 = v80;
  v81[1] = v79;
  *(v81 + 16) = v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29668, &qword_1E429B7B8);
  sub_1E3BB27E4();
  v82 = v81;
  v83 = v121;
  sub_1E3741EA0(v82, v121, &qword_1ECF29660, &qword_1E429B7B0);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v84, v85, v86, v87);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v88, v89, v90, v91);
  v92 = v123;
  sub_1E3743538(v83, v123, &qword_1ECF29660, &qword_1E429B7B0);
  OUTLINED_FUNCTION_12_19();
  sub_1E3743538(v93, v94, v95, v96);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29670, &qword_1E429B7C0);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v98, v99, v100, v101);
  sub_1E3743538(v92, &qword_1ECF29660 + *(v97 + 64), &qword_1ECF29660, &qword_1E429B7B0);
  sub_1E325F69C(v83, &qword_1ECF29660);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v102, v103);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v104, v105);
  v106 = OUTLINED_FUNCTION_8_6();
  sub_1E325F69C(v106, v107);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v108, v109);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v110, v111);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3BB27E4()
{
  OUTLINED_FUNCTION_9_4();
  *&v83 = v3;
  v5 = v4;
  v93 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v85 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  v84 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295A8, &unk_1E42B9500);
  OUTLINED_FUNCTION_0_10();
  v89 = v12;
  v90 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44();
  v88 = v14;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295B0, &unk_1E429B6F0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_5();
  v87 = v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_25_3();
  v86 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295B8, &unk_1E42B9510);
  v20 = OUTLINED_FUNCTION_17_2(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_5();
  v92 = v21;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v81 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29610, &qword_1E429B750);
  OUTLINED_FUNCTION_17_2(v25);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_41();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29678, &qword_1E429B7C8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_34_1();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29680, &qword_1E429B7D0);
  v31 = OUTLINED_FUNCTION_17_2(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_4_6();
  v34 = v32 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v81 - v36;
  if (TVAppFeature.isEnabled.getter(10, v38, v39))
  {
    v82 = v7;
    v40 = v5;
    sub_1E3BB2E48(v0);
    v41 = sub_1E4202744();
    v42 = sub_1E4202774();
    sub_1E4202774();
    if (sub_1E4202774() != v41)
    {
      v42 = sub_1E4202774();
    }

    v43 = *(v83 + 32);
    v44 = 0uLL;
    v45 = 0uLL;
    if ((v43 & 1) == 0)
    {
      sub_1E4200A54();
      *(&v45 + 1) = v46;
      *(&v44 + 1) = v47;
    }

    v81 = v45;
    v83 = v44;
    sub_1E3741EA0(v0, v1, &qword_1ECF29610, &qword_1E429B750);
    v48 = v1 + *(v27 + 36);
    *v48 = v42;
    *(v48 + 24) = v81;
    *(v48 + 8) = v83;
    *(v48 + 40) = v43 & 1;
    sub_1E3741EA0(v1, v2, &qword_1ECF29678, &qword_1E429B7C8);
    OUTLINED_FUNCTION_21_1();
    sub_1E3741EA0(v49, v50, v51, &qword_1E429B7C8);
    v52 = 0;
    v7 = v82;
  }

  else
  {
    v40 = v5;
    v52 = 1;
  }

  __swift_storeEnumTagSinglePayload(v37, v52, 1, v27);
  if (*(v40 + 240))
  {

    v55 = sub_1E3C27528(v53, v54);
    OUTLINED_FUNCTION_18();
    v56 = v84;
    sub_1E3F23370();
    OUTLINED_FUNCTION_0_21(v57);
    v58 = v88;
    v59 = OUTLINED_FUNCTION_8_6();
    sub_1E3883AF4(v59, v60, v61);
    (*(v85 + 8))(v56, v7);
    sub_1E4202744();
    v62 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v63)
    {
      v62 = sub_1E4202774();
    }

    if (v55)
    {
      v64 = *(*v55 + 152);

      v64(&v94, v65);

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();

    v66 = v87;
    (*(v89 + 32))(v87, v58, v90);
    v67 = (v66 + *(v91 + 36));
    *v67 = v62;
    OUTLINED_FUNCTION_11_4(v67);
    v68 = v66;
    v69 = v86;
    sub_1E3741EA0(v68, v86, &qword_1ECF295B0, &unk_1E429B6F0);
    sub_1E3741EA0(v69, v24, &qword_1ECF295B0, &unk_1E429B6F0);
  }

  OUTLINED_FUNCTION_37_6();
  __swift_storeEnumTagSinglePayload(v70, v71, v72, v73);
  sub_1E3743538(v37, v34, &qword_1ECF29680, &qword_1E429B7D0);
  v74 = v92;
  sub_1E3743538(v24, v92, &qword_1ECF295B8, &unk_1E42B9510);
  v75 = v93;
  sub_1E3743538(v34, v93, &qword_1ECF29680, &qword_1E429B7D0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29688, &qword_1E429B7D8);
  sub_1E3743538(v74, v75 + *(v76 + 48), &qword_1ECF295B8, &unk_1E42B9510);
  v77 = OUTLINED_FUNCTION_39_3();
  sub_1E325F69C(v77, v78);
  v79 = OUTLINED_FUNCTION_32_0();
  sub_1E325F69C(v79, v80);
  sub_1E325F69C(v74, &qword_1ECF295B8);
  sub_1E325F69C(v34, &qword_1ECF29680);
  OUTLINED_FUNCTION_10_3();
}

uint64_t sub_1E3BB2E48@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for TextBadge(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = *(v1 + 256);
  if (v7)
  {
    v8 = *(v1 + 264);

    OUTLINED_FUNCTION_18();
    sub_1E3FC96D0(v7, v8, v6);
    sub_1E3788908(v6, a1, type metadata accessor for TextBadge);
    OUTLINED_FUNCTION_35_9();
    return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  else
  {
    OUTLINED_FUNCTION_35_9();

    return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  }
}

void sub_1E3BB2F50()
{
  OUTLINED_FUNCTION_31_1();
  v37 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29600, &unk_1E429B740);
  v4 = OUTLINED_FUNCTION_17_2(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_5();
  v6 = v5;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29608, &qword_1E42B96E0);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_5();
  v13 = v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29610, &qword_1E429B750);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_19_2();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29618, &qword_1E429B758);
  v19 = OUTLINED_FUNCTION_17_2(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_6();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_34_1();
  if ((TVAppFeature.isEnabled.getter(10, v24, v25) & 1) == 0)
  {
    sub_1E3BB2E48(v0);
    sub_1E3741EA0(v0, v1, &qword_1ECF29610, &qword_1E429B750);
  }

  OUTLINED_FUNCTION_35_9();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  sub_1E3BB32A0();
  sub_1E3BB3518(v9);
  sub_1E3743538(v1, v22, &qword_1ECF29618, &qword_1E429B758);
  v30 = v13;
  sub_1E3743538(v16, v13, &qword_1ECF29608, &qword_1E42B96E0);
  sub_1E3743538(v9, v6, &qword_1ECF29600, &unk_1E429B740);
  v31 = v37;
  sub_1E3743538(v22, v37, &qword_1ECF29618, &qword_1E429B758);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29620, &unk_1E429B760);
  sub_1E3743538(v30, v31 + v32[12], &qword_1ECF29608, &qword_1E42B96E0);
  v33 = v31 + v32[16];
  *v33 = 0;
  *(v33 + 8) = 1;
  sub_1E3743538(v6, v31 + v32[20], &qword_1ECF29600, &unk_1E429B740);
  sub_1E325F69C(v9, &qword_1ECF29600);
  sub_1E325F69C(v16, &qword_1ECF29608);
  sub_1E325F69C(v1, &qword_1ECF29618);
  v34 = OUTLINED_FUNCTION_39_3();
  sub_1E325F69C(v34, v35);
  sub_1E325F69C(v30, &qword_1ECF29608);
  sub_1E325F69C(v22, &qword_1ECF29618);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3BB32A0()
{
  OUTLINED_FUNCTION_9_4();
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238, &unk_1E42999B0);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8_4();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29240, &unk_1E429B770);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_23_8();
  if (*(v0 + 272) && (v13 = sub_1E37605C4()) != 0)
  {
    v15 = sub_1E37608FC(v13, v14);
    sub_1E3EB9BB4(v39);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_30_5();
    sub_1E37E8BE8(v16, v17, v18, v19, v20, v21, v22);
    sub_1E375C31C(v39);
    if (v15 && (v23 = *(*v15 + 152), v24 = , v23(&v40, v24), , (v41 & 1) == 0))
    {
      v30.n128_f64[0] = OUTLINED_FUNCTION_6();
      j_nullsub_1(v30, v31, v32, v33);
    }

    else
    {
      OUTLINED_FUNCTION_5_8();
    }

    OUTLINED_FUNCTION_3();
    v34 = sub_1E4202734();

    (*(v8 + 32))(v2, v1, v6);
    v35 = (v2 + *(v10 + 36));
    *v35 = v34;
    OUTLINED_FUNCTION_11_4(v35);
    sub_1E3741EA0(v2, v3, &qword_1ECF29240, &unk_1E429B770);
    OUTLINED_FUNCTION_21_1();
    sub_1E3741EA0(v36, v37, v38, &unk_1E429B770);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v10);
    OUTLINED_FUNCTION_10_3();
  }

  else
  {
    OUTLINED_FUNCTION_48_6();
    OUTLINED_FUNCTION_10_3();

    __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  }
}

uint64_t sub_1E3BB3518@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PlaybackStatus(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v4 = sub_1E39C408C();
  if (v4)
  {
    sub_1E413D6F4(v4, v1);
    sub_1E3788908(v1, a1, type metadata accessor for PlaybackStatus);
    OUTLINED_FUNCTION_35_9();
    return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    OUTLINED_FUNCTION_35_9();

    return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }
}

unint64_t sub_1E3BB35F4()
{
  result = qword_1ECF34470;
  if (!qword_1ECF34470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34458, &qword_1E42C00C8);
    sub_1E3BB3678();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34470);
  }

  return result;
}

unint64_t sub_1E3BB3678()
{
  result = qword_1ECF34478;
  if (!qword_1ECF34478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34480, &qword_1E42C00E0);
    sub_1E3BB37C8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34488, &qword_1E42C00E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34490, &qword_1E42C00F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34498, &qword_1E42C00F8);
    sub_1E3BB3820();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF34478);
  }

  return result;
}

unint64_t sub_1E3BB37C8()
{
  result = qword_1EE25EB50;
  if (!qword_1EE25EB50)
  {
    type metadata accessor for StandardLockupListView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE25EB50);
  }

  return result;
}

unint64_t sub_1E3BB3820()
{
  result = qword_1ECF344A0;
  if (!qword_1ECF344A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34498, &qword_1E42C00F8);
    sub_1E3BB39A8(&qword_1ECF344A8, &qword_1ECF344B0, &qword_1E42C0100, sub_1E3BB3904);
    sub_1E3BB39A8(&qword_1ECF29560, &qword_1ECF29568, &qword_1E429B638, sub_1E3788594);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF344A0);
  }

  return result;
}

unint64_t sub_1E3BB3904()
{
  result = qword_1ECF344B8;
  if (!qword_1ECF344B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF344C0, &qword_1E42C0108);
    sub_1E3788638(&qword_1ECF344C8, &unk_1ECF344D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF344B8);
  }

  return result;
}

uint64_t sub_1E3BB39A8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_40_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E3BB3A6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StandardLockupListView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3BB3AD0(uint64_t a1)
{
  v2 = type metadata accessor for StandardLockupListView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 OUTLINED_FUNCTION_56_23()
{
  v2 = *(v1 + 154);
  *(v0 + 128) = *(v1 + 138);
  *(v0 + 144) = v2;
  result = *(v1 + 168);
  *(v1 + 30) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_62_16()
{

  return sub_1E4201F44();
}

__objc2_class **sub_1E3BB3BA4(__objc2_class **result)
{
  if (*result != _TtC8VideosUI34MediaShowcasingScoreboardViewModel)
  {

    return 0;
  }

  return result;
}

uint64_t sub_1E3BB3C04@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    v5 = 0;
    v12 = 0;
    a2 = 0;
    v9 = 0;
    goto LABEL_8;
  }

  v5 = sub_1E4201D54();

  v8 = sub_1E382EF1C(v6, v7);
  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = v8;
  if (*v8 != _TtC8VideosUI31MediaShowcasingScoreboardLayout)
  {

LABEL_5:
    type metadata accessor for MediaShowcasingScoreboardLayout();
    v9 = sub_1E3D318D0();
  }

  type metadata accessor for MediaShowcasingScoreboardViewModel(0);
  OUTLINED_FUNCTION_1_164();
  sub_1E3BBA714(v10, v11, &unk_1E42C03C0);
  OUTLINED_FUNCTION_24_4();
  result = sub_1E42010C4();
LABEL_8:
  *a3 = v5;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = result;
  a3[4] = v12;
  a3[5] = a2;
  a3[6] = v9;
  return result;
}

uint64_t type metadata accessor for MediaShowcasingScoreboardViewModel(uint64_t a1)
{
  result = qword_1EE2913F0;
  if (!qword_1EE2913F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3BB3D7C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34538, &qword_1E42C0290);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_49_2();
  v13 = sub_1E39BDEC8();
  if (v13)
  {
    v15 = sub_1E373E010(239, v13, v14);

    if (v15)
    {
      v17 = (*(*v15 + 464))(v16);

      if (v17)
      {
        if (sub_1E32AE9B0(v17))
        {
          if (_MergedGlobals_212 != -1)
          {
            OUTLINED_FUNCTION_2_132(&_MergedGlobals_212);
          }

          *v0 = qword_1EE28C138;
          *(v0 + 8) = 0;
          *(v0 + 16) = 0;
          v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34540, &qword_1E42C0298);
          sub_1E3BB3F54(v8, v6, v4, v2, v17, v0 + *(v18 + 44));

          sub_1E3782004();
          __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
          OUTLINED_FUNCTION_25_2();
          return;
        }
      }
    }
  }

  OUTLINED_FUNCTION_25_2();

  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
}

void sub_1E3BB3F54(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v81 = a3;
  v82 = a2;
  v80 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF345F0, &qword_1E42C0640);
  OUTLINED_FUNCTION_17_2(v9);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v74 = (v70 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF345F8, &qword_1E42C0648);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v72 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v73 = v70 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34600, &qword_1E42C0650);
  v19 = OUTLINED_FUNCTION_17_2(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_6();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v70 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34608, &qword_1E42C0658);
  v27 = OUTLINED_FUNCTION_17_2(v26);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_4_6();
  v30 = v28 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = v70 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v35 = sub_1E4201D54();
  if (a4)
  {
    v36 = *(a4 + 152);
  }

  else
  {
    v36 = 0;
  }

  *v33 = v35;
  *(v33 + 1) = v36;
  v33[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34610, &qword_1E42C0660);
  v37 = sub_1E32AE9B0(a5);
  if (v37 < 0)
  {
    __break(1u);
  }

  else
  {
    v75 = v30;
    v76 = v25;
    v77 = v12;
    v78 = v22;
    v79 = a6;
    v83 = 0;
    v84 = v37;
    swift_getKeyPath();
    v38 = swift_allocObject();
    v39 = v80;
    v40 = v81;
    v38[2] = a5;
    v38[3] = v39;
    v38[4] = v82;
    v38[5] = v40;
    v38[6] = a4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28AD0, &qword_1E4297FE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34640, &qword_1E42C06B8);
    v41 = sub_1E37432DC();
    v71 = a4;
    v42 = v41;
    sub_1E32752B0(&qword_1ECF34648, &qword_1ECF34640, &qword_1E42C06B8, MEMORY[0x1E69817F8]);
    v70[1] = v42;
    sub_1E4203B34();
    sub_1E3782004();
    if ((sub_1E38271C0() & 1) == 0)
    {
      v46 = 1;
      v47 = v78;
      v49 = v76;
      v48 = v77;
LABEL_16:
      __swift_storeEnumTagSinglePayload(v49, v46, 1, v48);
      OUTLINED_FUNCTION_159();
      OUTLINED_FUNCTION_19_1();
      sub_1E378249C();
      OUTLINED_FUNCTION_96_2();
      sub_1E378249C();
      OUTLINED_FUNCTION_19_1();
      sub_1E378249C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34618, &qword_1E42C0668);
      OUTLINED_FUNCTION_96_2();
      sub_1E378249C();
      sub_1E325F6F0(v49, &qword_1ECF34600, &qword_1E42C0650);
      OUTLINED_FUNCTION_21_1();
      sub_1E325F6F0(v64, v65, v66);
      sub_1E325F6F0(v47, &qword_1ECF34600, &qword_1E42C0650);
      OUTLINED_FUNCTION_21_1();
      sub_1E325F6F0(v67, v68, v69);
      OUTLINED_FUNCTION_10_3();
      return;
    }

    v43 = sub_1E4201D64();
    v44 = v71;
    if (v71)
    {
      v45 = *(v71 + 152);
    }

    else
    {
      v45 = 0;
    }

    v50 = v74;
    v51 = v82;
    *v74 = v43;
    v50[1] = v45;
    *(v50 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34620, &unk_1E42C0670);
    v52 = sub_1E3BB50D8();
    v53 = sub_1E32AE9B0(v52);

    if ((v53 & 0x8000000000000000) == 0)
    {
      v83 = 0;
      v84 = v53;
      swift_getKeyPath();
      OUTLINED_FUNCTION_10_9();
      v54 = swift_allocObject();
      v55 = v81;
      v54[2] = v80;
      v54[3] = v51;
      v54[4] = v55;
      v54[5] = v44;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28AD0, &qword_1E4297FE0);
      v56 = OUTLINED_FUNCTION_24_4();
      __swift_instantiateConcreteTypeFromMangledNameV2(v56, v57);
      sub_1E32752B0(&qword_1ECF34630, &qword_1ECF34628, &unk_1E42C06A0, MEMORY[0x1E6981F48]);
      sub_1E4203B34();
      if (v44 && (OUTLINED_FUNCTION_8(), (*(v58 + 176))(&v83), (v87 & 1) == 0))
      {
        v61.n128_u64[0] = v85;
        v62.n128_u64[0] = v86;
        v59.n128_u64[0] = v83;
        v60.n128_u64[0] = v84;
        j_nullsub_1(v59, v60, v61, v62);
      }

      else
      {
        OUTLINED_FUNCTION_5_8();
      }

      OUTLINED_FUNCTION_3();
      v47 = v78;
      v49 = v76;
      v48 = v77;
      v63 = v72;
      sub_1E4202734();
      sub_1E3782004();
      OUTLINED_FUNCTION_32_4(v63 + *(v48 + 36));
      OUTLINED_FUNCTION_19_1();
      sub_1E3782004();
      OUTLINED_FUNCTION_19_1();
      sub_1E3782004();
      v46 = 0;
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_1E3BB45C0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34658, &qword_1E42C06C8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v37 - v14;
  v16 = (*(*v7 + 488))(v13);
  if (v16)
  {
    v37[1] = v10;
    v18 = sub_1E373E010(39, v16, v17);

    if (v18)
    {
      type metadata accessor for ImageViewModel();
      v19 = swift_dynamicCastClass();
      if (v19)
      {
        v37[0] = v5;
        sub_1E3924DF8();
        if (v20)
        {
          v40[1] = v20;
          v38 = v1;
          v39 = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34668, &qword_1E42C06D8);
          OUTLINED_FUNCTION_0_32();
          sub_1E32752B0(v21, &qword_1ECF34668, &qword_1E42C06D8, v22);
          sub_1E38D2054(&v38, v40);

          v23 = v40[0];
        }

        else
        {
          v23 = 0;
        }

        v24 = (sub_1E3925108() & 1) == 0;
        v26 = v23;

LABEL_13:
        if (v3)
        {
          goto LABEL_14;
        }

        goto LABEL_7;
      }
    }

    else
    {
      v19 = 0;
    }

    v23 = 0;
    v24 = 0;
    goto LABEL_13;
  }

  v19 = 0;
  v23 = 0;
  v24 = 0;
  if (v3)
  {
LABEL_14:
    v25 = (*(*v3 + 248))();
    goto LABEL_15;
  }

LABEL_7:
  v25 = 0;
LABEL_15:
  *v15 = sub_1E3F2793C(v25);
  v15[8] = v27 & 1;
  *(v15 + 2) = v28;

  OUTLINED_FUNCTION_24_4();
  sub_1E3BB48C8();

  OUTLINED_FUNCTION_21_1();
  sub_1E378249C();
  *v9 = v19;
  *(v9 + 8) = v23;
  *(v9 + 16) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34660, &qword_1E42C06D0);
  sub_1E378249C();
  v29 = OUTLINED_FUNCTION_39_9();
  sub_1E3BBA428(v29, v30);
  v31 = OUTLINED_FUNCTION_39_9();
  sub_1E3BBA468(v31, v32);
  sub_1E325F6F0(v15, &qword_1ECF34658, &qword_1E42C06C8);
  v33 = OUTLINED_FUNCTION_32_0();
  sub_1E325F6F0(v33, v34, &qword_1E42C06C8);
  v35 = OUTLINED_FUNCTION_39_9();
  sub_1E3BBA468(v35, v36);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3BB48C8()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_155();
  v86 = v3;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v82 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v6);
  v79 = v72 - v7;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A140, &qword_1E42B7E30);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v72 - v13;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C350, &qword_1E42A6CE8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v72 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v75 = v72 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34678, &qword_1E42C06E0);
  v23 = OUTLINED_FUNCTION_17_2(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v26);
  v28 = v72 - v27;
  v78 = v11;
  if (v1)
  {
    OUTLINED_FUNCTION_8();
    v85 = (*(v29 + 200))();
    v84 = v30;
  }

  else
  {
    v85 = 0;
    v84 = 1;
  }

  v31 = (*v0 + 488);
  v32 = *v31;
  v33 = (*v31)();
  if (!v33)
  {
    goto LABEL_13;
  }

  v35 = sub_1E373E010(23, v33, v34);

  if (!v35)
  {
    goto LABEL_13;
  }

  if (*v35 != _TtC8VideosUI13TextViewModel)
  {

LABEL_13:
    v44 = 1;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_18();
  sub_1E3F23370();
  sub_1E4203DA4();
  OUTLINED_FUNCTION_24_54();
  if ((v38 & 1) == 0)
  {
    v74 = v36;
    v73 = v37;
    v72[1] = sub_1E4206804();
    v39 = sub_1E42026D4();
    sub_1E41FFB84();
  }

  OUTLINED_FUNCTION_53_28();
  v76 = v40;
  v77 = v41;
  OUTLINED_FUNCTION_38_32();
  OUTLINED_FUNCTION_5_129();
  (*(v82 + 32))(v14, v79, v83);
  memcpy(&v14[*(v80 + 36)], v88, 0x70uLL);
  if (_MergedGlobals_212 != -1)
  {
    OUTLINED_FUNCTION_2_132(&_MergedGlobals_212);
  }

  v42 = qword_1EE28C138;

  sub_1E3782004();
  v43 = &v19[*(v87 + 36)];
  *v43 = v42;
  v43[1] = sub_1E374AE08;
  v43[2] = 0;
  sub_1E3782004();
  sub_1E3782004();
  v44 = 0;
LABEL_14:
  v45 = 1;
  v46 = v87;
  v47 = __swift_storeEnumTagSinglePayload(v28, v44, 1, v87);
  v48 = (v32)(v47);
  if (v48)
  {
    v50 = sub_1E373E010(25, v48, v49);

    if (v50)
    {
      if (*v50 == _TtC8VideosUI13TextViewModel)
      {
        OUTLINED_FUNCTION_18();
        sub_1E3F23370();
        v51 = sub_1E4203DA4();
        v53 = v52;
        OUTLINED_FUNCTION_24_54();
        if ((v54 & 1) == 0)
        {
          sub_1E4206804();
          v55 = sub_1E42026D4();
          v46 = v87;
          sub_1E41FFB84();
        }

        OUTLINED_FUNCTION_53_28();
        v76 = v51;
        v77 = v53;
        OUTLINED_FUNCTION_38_32();
        OUTLINED_FUNCTION_5_129();
        v56 = v78;
        (*(v82 + 32))(v78, v81, v83);
        memcpy((v56 + *(v80 + 36)), v89, 0x70uLL);
        if (_MergedGlobals_212 != -1)
        {
          OUTLINED_FUNCTION_2_132(&_MergedGlobals_212);
        }

        v57 = qword_1EE28C138;

        v58 = v77;
        sub_1E3782004();
        v59 = (v58 + *(v46 + 36));
        *v59 = v57;
        v59[1] = sub_1E374AE08;
        v59[2] = 0;
        OUTLINED_FUNCTION_19_1();
        sub_1E3782004();
        OUTLINED_FUNCTION_19_1();
        sub_1E3782004();
        v45 = 0;
      }

      else
      {
      }
    }
  }

  __swift_storeEnumTagSinglePayload(v2, v45, 1, v46);
  OUTLINED_FUNCTION_19_1();
  sub_1E378249C();
  OUTLINED_FUNCTION_19_1();
  sub_1E378249C();
  OUTLINED_FUNCTION_19_1();
  sub_1E378249C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34680, &qword_1E42C06E8);
  OUTLINED_FUNCTION_19_1();
  sub_1E378249C();
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v60, v61, v62);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v63, v64, v65);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v66, v67, v68);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v69, v70, v71);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3BB50D8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_16_0();
  sub_1E4200674();

  return v1;
}

void sub_1E3BB5148()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v39 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v45 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - v8;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A140, &qword_1E42B7E30);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C350, &qword_1E42A6CE8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v14);
  v43 = &v38 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v17 = *v3;
  v18 = sub_1E3BB50D8();
  sub_1E34AF4E4(v17, (v18 & 0xC000000000000001) == 0, v18);
  if ((v18 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x1E6911E60](v17, v18);
  }

  else
  {
    v19 = *(v18 + 8 * v17 + 32);
  }

  if ((TVAppFeature.isEnabled.getter(20, v20, v21) & 1) == 0)
  {
    v22 = 0;
    goto LABEL_12;
  }

  if ((*(*v19 + 392))())
  {
    type metadata accessor for TextLayout();
    v22 = swift_dynamicCastClass();
    if (!v22)
    {
    }
  }

  else
  {
    v22 = 0;
  }

  v47[3] = &unk_1F5D5D528;
  v47[4] = &off_1F5D5C858;
  LOBYTE(v47[0]) = 14;
  v23 = j__OUTLINED_FUNCTION_18();
  v24 = sub_1E39C29F0(v47, v23 & 1);
  __swift_destroy_boxed_opaque_existential_1(v47);
  if ((v24 & 1) == 0)
  {
LABEL_12:
    if (v1)
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  if (v1)
  {
    v22 = *(v1 + 144);

LABEL_13:
    OUTLINED_FUNCTION_8();
    v46 = (*(v25 + 200))();
    goto LABEL_16;
  }

  v22 = 0;
LABEL_15:
  v46 = 0;
LABEL_16:
  OUTLINED_FUNCTION_18();
  v42 = v9;
  v40 = v22;
  sub_1E3F23370();
  sub_1E4203DA4();
  OUTLINED_FUNCTION_5_129();
  (*(v45 + 32))(v12, v42, v5);
  memcpy(&v12[*(v41 + 36)], v47, 0x70uLL);
  if (_MergedGlobals_212 != -1)
  {
    OUTLINED_FUNCTION_2_132(&_MergedGlobals_212);
  }

  v26 = qword_1EE28C138;
  v27 = v43;
  sub_1E3782004();
  v28 = &v27[*(v44 + 36)];
  *v28 = v26;
  v28[1] = sub_1E374AE08;
  v28[2] = 0;
  OUTLINED_FUNCTION_19_1();
  sub_1E3782004();
  OUTLINED_FUNCTION_19_1();
  sub_1E378249C();
  v29 = v39;
  OUTLINED_FUNCTION_19_1();
  sub_1E378249C();
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34638, &qword_1E42C06B0) + 48);

  v31 = v29 + v30;

  *v31 = 0;
  *(v31 + 8) = 0;
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v32, v33, v34);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v35, v36, v37);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3BB5638(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v63) = a3;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34598, &qword_1E42C05E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v57 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF345A0, &qword_1E42C05F0);
  OUTLINED_FUNCTION_0_10();
  v64 = v13;
  v65 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_49_2();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF345A8, &qword_1E42C05F8);
  OUTLINED_FUNCTION_17_2(v15);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_31_2();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF345B0, &qword_1E42C0600);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v21 = v19 - v20;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v57 - v24;
  v26 = (*(*a1 + 392))(v23);
  if (v26)
  {
    v27 = v26;
    v62 = v25;
    type metadata accessor for ImageLayout();
    v28 = swift_dynamicCastClass();
    if (v28)
    {
      v29 = v28;
      v57 = v27;
      v58 = v21;
      v59 = v4;
      v60 = v17;
      v61 = a4;
      (*(*v28 + 2288))(v28);
      sub_1E3BB5B78(a1, a2, v63 & 1, v29);
      sub_1E4203DB4();
      v30 = sub_1E4200D94();
      v31 = &v11[*(v66 + 36)];
      v32 = v68;
      *v31 = v67;
      *(v31 + 1) = v32;
      *(v31 + 2) = v69;
      v33 = *(*a1 + 904);
      v33(v30);
      v34 = sub_1E3BB9CA0();
      v63 = v5;
      sub_1E3E03528();

      v35 = sub_1E325F6F0(v11, &qword_1ECF34598, &qword_1E42C05E8);
      v33(v35);
      if (v36)
      {
      }

      v70 = v66;
      v71 = v34;
      swift_getOpaqueTypeConformance2();
      sub_1E4202ED4();
      v42 = OUTLINED_FUNCTION_16_0();
      v43(v42);
      v44 = *(*v29 + 152);

      v44(&v70, v45);
      v46 = v70;
      v47 = v71;
      v48 = v72;
      v49 = v73;

      v54 = v60;
      v55 = v58;
      if (v74)
      {
        OUTLINED_FUNCTION_5_8();
      }

      else
      {
        v50.n128_u64[0] = v46;
        v51.n128_u64[0] = v47;
        v52.n128_u64[0] = v48;
        v53.n128_u64[0] = v49;
        j_nullsub_1(v50, v51, v52, v53);
      }

      OUTLINED_FUNCTION_3();
      v56 = v61;
      sub_1E4202734();

      OUTLINED_FUNCTION_24_4();
      sub_1E3782004();
      OUTLINED_FUNCTION_32_4(v55 + *(v54 + 36));
      OUTLINED_FUNCTION_19_1();
      sub_1E3782004();
      OUTLINED_FUNCTION_19_1();
      sub_1E3782004();
      __swift_storeEnumTagSinglePayload(v56, 0, 1, v54);
      OUTLINED_FUNCTION_10_3();
      return;
    }
  }

  OUTLINED_FUNCTION_10_3();

  __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
}

uint64_t sub_1E3BB5B78(uint64_t a1, void *a2, char a3, uint64_t a4)
{
  v9 = sub_1E42037D4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3A8, &qword_1E42A9618);
  OUTLINED_FUNCTION_0_10();
  v45 = v17;
  v46 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_31_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF345E0, &unk_1E42C0620);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_35_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238, &unk_1E42999B0);
  OUTLINED_FUNCTION_0_10();
  v21 = v20;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_49_2();
  if (a3)
  {
    v24 = v23;
    j__OUTLINED_FUNCTION_51_1();
    v25 = j__OUTLINED_FUNCTION_18();
    v42 = j__OUTLINED_FUNCTION_18() & 1;
    v26 = OUTLINED_FUNCTION_32_0();
    sub_1E3EB9C0C(v26, v27, 0, 0, 0, 1, v28, 2, v29, 0, 1, 0, 1, 0, 2, v25 & 1, v42);
    v30 = OUTLINED_FUNCTION_18();
    sub_1E37E8BE8(a1, v47, 0, v30 & 1, 0, 0, v6);
    sub_1E375C31C(v47);
    (*(v21 + 16))(v4, v6, v24);
    v31 = swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_19_0(v31);
    OUTLINED_FUNCTION_17_80();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_24_4();
    sub_1E4201F44();
    return (*(v21 + 8))(v6, v24);
  }

  else
  {
    if (a2)
    {
      v33 = a2;
    }

    else
    {
      v33 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
    }

    v34 = a2;
    v35 = v33;
    sub_1E381AC64(v35);
    (*(v11 + 104))(v15, *MEMORY[0x1E6981630], v9);
    OUTLINED_FUNCTION_159();
    v36 = sub_1E4203824();

    (*(v11 + 8))(v15, v9);
    v47[0] = v36;
    v37 = MEMORY[0x1E6981748];
    v38 = MEMORY[0x1E6981710];
    v39 = OUTLINED_FUNCTION_51_1();
    v40 = OUTLINED_FUNCTION_18();
    sub_1E3C8F60C(a4, v39 & 1, v40 & 1, v37, v38);

    (*(v45 + 16))(v4, v5, v46);
    v41 = swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_19_0(v41);
    v47[0] = v37;
    v47[1] = v38;
    OUTLINED_FUNCTION_17_80();
    swift_getOpaqueTypeConformance2();
    sub_1E4201F44();

    return (*(v45 + 8))(v5, v46);
  }
}

uint64_t sub_1E3BB6030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E3BBA4A8(a1, a2, a3);
  result = sub_1E4201B94();
  qword_1EE28C138 = result;
  return result;
}

uint64_t sub_1E3BB6060@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3BB50D8();
  *a1 = result;
  return result;
}

uint64_t sub_1E3BB60B8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_96_2();
  return sub_1E4200684();
}

uint64_t sub_1E3BB6124()
{
  v0 = OUTLINED_FUNCTION_32_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_21_1();
  sub_1E32752B0(v2, v3, v4, v5);
  return sub_1E42006B4();
}

id sub_1E3BB61B0()
{
  v1 = OBJC_IVAR____TtC8VideosUI34MediaShowcasingScoreboardViewModel____lazy_storage___scorecardClockComponentsFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcasingScoreboardViewModel____lazy_storage___scorecardClockComponentsFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcasingScoreboardViewModel____lazy_storage___scorecardClockComponentsFormatter);
  }

  else
  {
    v4 = sub_1E3BB6210();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1E3BB6210()
{
  v0 = sub_1E4205914();
  v1 = OUTLINED_FUNCTION_17_2(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  SportsRunningClockLocalization.init()();
  sub_1E376DC98(v2, v3, v4);
  v5 = objc_allocWithZone(sub_1E4205944());
  v6 = sub_1E4205934();
  sub_1E42058D4();
  sub_1E4205924();
  return v6;
}

void sub_1E3BB6308()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v78 = v3;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34548, &qword_1E42C02F0);
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_31_2();
  v12 = OBJC_IVAR____TtC8VideosUI34MediaShowcasingScoreboardViewModel__scoreTextModels;
  v77 = MEMORY[0x1E69E7CC0];
  v80[0] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B6E8, &qword_1E42A0FA0);
  sub_1E4200634();
  (*(v10 + 32))(&v2[v12], v1, v8);
  v13 = OBJC_IVAR____TtC8VideosUI34MediaShowcasingScoreboardViewModel_contentMetadataUpdateSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0, &qword_1E429D160);
  swift_allocObject();
  *&v2[v13] = sub_1E4200544();
  *&v2[OBJC_IVAR____TtC8VideosUI34MediaShowcasingScoreboardViewModel____lazy_storage___scorecardClockComponentsFormatter] = 0;
  *&v2[OBJC_IVAR____TtC8VideosUI34MediaShowcasingScoreboardViewModel____lazy_storage___liveUpdateProvider] = xmmword_1E42C0270;
  v81 = &type metadata for ViewModelKeys;
  v82 = &off_1F5D7BCA8;
  LOBYTE(v80[0]) = 20;
  v14 = OUTLINED_FUNCTION_8_98();
  sub_1E3F9F164(v14, v5, v15);
  if (!v83[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v80);
    sub_1E325F6F0(v83, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v80);
    goto LABEL_10;
  }

  v16 = v79;
  __swift_destroy_boxed_opaque_existential_1(v80);
  if (!v79)
  {
LABEL_10:
    v16 = 0;
    OUTLINED_FUNCTION_200_0();
    v24 = 1;
    goto LABEL_11;
  }

  v81 = &type metadata for ViewModelKeys.Sports;
  v82 = &off_1F5D7BC68;
  LOBYTE(v80[0]) = 17;

  v17 = OUTLINED_FUNCTION_8_98();
  sub_1E3F9F164(v17, v79, v18);

  OUTLINED_FUNCTION_39_33();
  if (v19)
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    if (OUTLINED_FUNCTION_11_96(v20, v21, v22, v20))
    {
      v23 = v80[0];
    }

    else
    {
      v23 = 0;
    }

    goto LABEL_13;
  }

  v24 = 0;
LABEL_11:
  sub_1E325F6F0(v83, &unk_1ECF296E0, &unk_1E4298030);
  v23 = 0;
  if (v24)
  {
    OUTLINED_FUNCTION_200_0();
LABEL_18:
    v34 = v78;
    sub_1E325F6F0(v83, &unk_1ECF296E0, &unk_1E4298030);
    v31 = 0;
    v32 = 0;
    goto LABEL_19;
  }

LABEL_13:
  v81 = &type metadata for ViewModelKeys.Sports;
  v82 = &off_1F5D7BC68;
  LOBYTE(v80[0]) = 12;
  v25 = OUTLINED_FUNCTION_8_98();
  sub_1E3F9F164(v25, v16, v26);

  v27 = OUTLINED_FUNCTION_39_33();
  if (!v30)
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_11_96(v27, v28, v29, MEMORY[0x1E69E6158]);
  OUTLINED_FUNCTION_19_75();
  if (v33)
  {
    v32 = 0;
  }

  v34 = v78;
LABEL_19:
  *(v2 + 31) = v31;
  *(v2 + 32) = v32;
  if (v23)
  {
    v81 = &type metadata for ViewModelKeys.Sports;
    v82 = &off_1F5D7BC68;
    LOBYTE(v80[0]) = 18;

    v35 = OUTLINED_FUNCTION_8_98();
    sub_1E3F9F164(v35, v23, v36);

    v37 = OUTLINED_FUNCTION_39_33();
    if (v40)
    {
      OUTLINED_FUNCTION_11_96(v37, v38, v39, MEMORY[0x1E69E6158]);
      OUTLINED_FUNCTION_19_75();
      if (v33)
      {
        v42 = 0;
      }

      *(v2 + 33) = v41;
      *(v2 + 34) = v42;
      goto LABEL_27;
    }
  }

  else
  {
    OUTLINED_FUNCTION_200_0();
  }

  sub_1E325F6F0(v83, &unk_1ECF296E0, &unk_1E4298030);
  *(v2 + 33) = 0;
  *(v2 + 34) = 0;
  if (!v23)
  {
    OUTLINED_FUNCTION_200_0();
    goto LABEL_33;
  }

LABEL_27:
  v81 = &type metadata for ViewModelKeys.Sports;
  v82 = &off_1F5D7BC68;
  LOBYTE(v80[0]) = 21;

  v43 = OUTLINED_FUNCTION_8_98();
  sub_1E3F9F164(v43, v23, v44);

  v45 = OUTLINED_FUNCTION_39_33();
  if (v48)
  {
    OUTLINED_FUNCTION_11_96(v45, v46, v47, MEMORY[0x1E69E6158]);
    OUTLINED_FUNCTION_19_75();
    if (v33)
    {
      v50 = 0;
    }

    *(v2 + 35) = v49;
    *(v2 + 36) = v50;
    goto LABEL_34;
  }

LABEL_33:
  sub_1E325F6F0(v83, &unk_1ECF296E0, &unk_1E4298030);
  *(v2 + 35) = 0;
  *(v2 + 36) = 0;
  if (!v23)
  {
    OUTLINED_FUNCTION_200_0();
    goto LABEL_39;
  }

LABEL_34:
  v81 = &type metadata for ViewModelKeys.Sports;
  v82 = &off_1F5D7BC68;
  LOBYTE(v80[0]) = 20;

  v51 = OUTLINED_FUNCTION_8_98();
  sub_1E3F9F164(v51, v23, v52);

  v53 = OUTLINED_FUNCTION_39_33();
  if (v56)
  {
    OUTLINED_FUNCTION_11_96(v53, v54, v55, MEMORY[0x1E69E6158]);
    OUTLINED_FUNCTION_19_75();
    if (v33)
    {
      v58 = 0;
    }

    goto LABEL_40;
  }

LABEL_39:
  sub_1E325F6F0(v83, &unk_1ECF296E0, &unk_1E4298030);
  v57 = 0;
  v58 = 0;
LABEL_40:
  *(v2 + 38) = v57;
  *(v2 + 39) = v58;
  *(v2 + 37) = v23;

  if (!sub_1E39BEDCC(v7, v5, v34))
  {
    goto LABEL_69;
  }

  v59 = sub_1E39BDEC8();
  if (!v59)
  {
    goto LABEL_68;
  }

  v61 = sub_1E373E010(239, v59, v60);

  if (!v61)
  {
    goto LABEL_68;
  }

  v62 = *(*v61 + 464);

  v64 = v62(v63);

  if (!v64)
  {
    goto LABEL_67;
  }

  v80[0] = MEMORY[0x1E69E7CC0];
  v65 = sub_1E32AE9B0(v64);
  v66 = 0;
  while (v65 != v66)
  {
    if ((v64 & 0xC000000000000001) != 0)
    {
      v68 = MEMORY[0x1E6911E60](v66, v64);
      v67 = v68;
    }

    else
    {
      if (v66 >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_72;
      }

      v67 = *(v64 + 8 * v66 + 32);
    }

    if (__OFADD__(v66, 1))
    {
      __break(1u);
LABEL_72:
      __break(1u);
      return;
    }

    v69 = (*(*v67 + 488))(v68);
    if (!v69)
    {
      goto LABEL_56;
    }

    v72 = v69;
    if (!*(v69 + 16) || (v73 = sub_1E3740AE8(237, v70, v71), (v74 & 1) == 0))
    {

      goto LABEL_56;
    }

    v75 = *(*(v72 + 56) + 8 * v73);

    if (*v75 == _TtC8VideosUI13TextViewModel)
    {
      MEMORY[0x1E6910BF0](v76);
      if (*((v80[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      sub_1E4206324();
      v77 = v80[0];
      ++v66;
    }

    else
    {
LABEL_56:

      ++v66;
    }
  }

  if (sub_1E32AE9B0(v77) == 2)
  {
    sub_1E3BB60B8();
  }

  else
  {
  }

LABEL_67:

LABEL_68:

LABEL_69:

  OUTLINED_FUNCTION_25_2();
}