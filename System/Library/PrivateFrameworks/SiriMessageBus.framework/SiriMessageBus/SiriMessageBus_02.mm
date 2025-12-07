uint64_t sub_22378CC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19[0] = a5;
  v19[1] = a7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v19 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v19 - v13;
  v15 = *MEMORY[0x277D5CDC8];
  v16 = sub_2237B540C();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v16);
  sub_2237B521C();

  sub_2237B520C();
  v17 = sub_2237B412C();
  (*(*(v17 - 8) + 16))(v11, a4, v17);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v17);
  sub_2237B524C();

  sub_2237B523C();

  return sub_2237B522C();
}

void sub_22378CE78()
{
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_6(v7, v62);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097C80, &unk_2237B9260);
  v9 = OUTLINED_FUNCTION_1(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_5(v10, v63);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_20_4();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  OUTLINED_FUNCTION_1(v12);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_15_4();
  v14 = objc_allocWithZone(sub_2237B4BFC());
  v15 = sub_2237B451C();
  v16 = v15;
  if (v15)
  {
    v17 = *(v3 + OBJC_IVAR___SRDRequestDispatcherInternal_broker);
    sub_2237654A4(v15);
    v18 = OUTLINED_FUNCTION_55(OBJC_IVAR___SRDRequestDispatcherInternal_instrumentationUtil);
    OUTLINED_FUNCTION_4();
    (*(v19 + 16))(v4, v0, v18);
    OUTLINED_FUNCTION_12_4();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v18);
    v65 = AFDeviceSupportsSiriUOD();
    v64 = AFShouldRunAsrOnServerForUOD();
    v23 = OBJC_IVAR___SRDRequestDispatcherInternal_serverFallbackDisablingUtils;
    sub_223781B5C(v3 + OBJC_IVAR___SRDRequestDispatcherInternal_serverFallbackDisablingUtils, v68);
    OUTLINED_FUNCTION_14_5(v68[4]);
    v24 = OBJC_IVAR___SRDRequestDispatcherInternal_sessionContext;
    OUTLINED_FUNCTION_31(v3 + OBJC_IVAR___SRDRequestDispatcherInternal_sessionContext);
    sub_22378EED8(v3 + v24, v5, &unk_27D097C80, &unk_2237B9260);
    if (OUTLINED_FUNCTION_21_2())
    {
      sub_2237710FC(v5, &unk_27D097C80, &unk_2237B9260);
      v2 = 0;
      v18 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_40();
      sub_2237710FC(v5, &unk_27D097C80, &unk_2237B9260);
      OUTLINED_FUNCTION_54();
      sub_223771D44(v17);
    }

    v39 = OUTLINED_FUNCTION_6_5();
    v42 = OUTLINED_FUNCTION_42(v39, v40, v41);
    OUTLINED_FUNCTION_58(v42, v43, v44, v45, v46, v47, v48, v49);
    sub_223781B5C(v3 + v23, &v67);
    OUTLINED_FUNCTION_19_4();
    OUTLINED_FUNCTION_45(v3 + v24, v50, &unk_27D097C80, &unk_2237B9260);
    if (OUTLINED_FUNCTION_43())
    {
      sub_2237710FC(v18, &unk_27D097C80, &unk_2237B9260);
      OUTLINED_FUNCTION_34();
    }

    else
    {
      OUTLINED_FUNCTION_27_0();
      sub_2237710FC(v18, &unk_27D097C80, &unk_2237B9260);
      OUTLINED_FUNCTION_28_0();
      sub_223771D44(v16);
    }

    v51 = OUTLINED_FUNCTION_4_7(1, v66);
    OUTLINED_FUNCTION_56(v51, v52, v53, v54, v55, v56, v57, v58);
    v59 = OUTLINED_FUNCTION_7_4();
    sub_223771484(v59, v66, v2, 4, v65, v64, v60, v61, OS_LOG_TYPE_DEFAULT);

    sub_2237710FC(v18, &qword_27D097A50, &unk_2237B7800);
    OUTLINED_FUNCTION_51();
  }

  else
  {
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_28131AA10);
    }

    v25 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v25, qword_28131B550);

    v26 = sub_2237B5C8C();
    sub_2237B5FFC();
    v1, v27, v28, v29, v30, v31, v32, v33;
    if (OUTLINED_FUNCTION_57())
    {
      OUTLINED_FUNCTION_20();
      v34 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_50(v34);
      v35 = OUTLINED_FUNCTION_23_1(4.8149e-34);
      *(v0 + 4) = sub_223763694(v35, v1, v36);
      OUTLINED_FUNCTION_17_3(&dword_22375F000, v37, v38, "Failed to create StartDirectActionRequestMessage for request Id: %s");
      OUTLINED_FUNCTION_22_0();
      OUTLINED_FUNCTION_8();
    }
  }

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_14_2();
}

void sub_22378D280()
{
  OUTLINED_FUNCTION_16_3();
  v2 = v1;
  v35 = v3;
  v36 = v4;
  v34 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C70, &qword_2237B9250);
  OUTLINED_FUNCTION_1(v6);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  OUTLINED_FUNCTION_1(v10);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  OUTLINED_FUNCTION_1(v14);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_39();
  v16 = *MEMORY[0x277D5CDC8];
  v17 = sub_2237B540C();
  OUTLINED_FUNCTION_4();
  (*(v18 + 104))(v0, v16, v17);
  OUTLINED_FUNCTION_12_4();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v17);
  sub_2237B437C();

  sub_2237B434C();
  v22 = sub_2237B412C();
  OUTLINED_FUNCTION_4();
  (*(v23 + 16))(v13, v34, v22);
  OUTLINED_FUNCTION_12_4();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v22);
  sub_2237B439C();

  sub_2237B438C();
  v27 = sub_2237B544C();
  OUTLINED_FUNCTION_4();
  (*(v28 + 16))(v9, v36, v27);
  OUTLINED_FUNCTION_12_4();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v27);
  sub_2237B435C();
  v32 = v2;
  sub_2237B436C();
  OUTLINED_FUNCTION_14_2();
}

void sub_22378D52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, char *), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_53();
  a33 = v38;
  a34 = v39;
  OUTLINED_FUNCTION_11_5();
  v40 = OUTLINED_FUNCTION_33_0();
  objc_allocWithZone(v34(v40));
  v41 = a10(a9, &a11);
  if (v41)
  {
    OUTLINED_FUNCTION_46();
    OUTLINED_FUNCTION_47();
  }

  else
  {
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_28131AA10);
    }

    v42 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v42, qword_28131B550);

    v43 = sub_2237B5C8C();
    sub_2237B5FFC();
    v37, v44, v45, v46, v47, v48, v49, v50;
    if (OUTLINED_FUNCTION_41())
    {
      OUTLINED_FUNCTION_20();
      v51 = OUTLINED_FUNCTION_44();
      a22 = v51;
      *v36 = 136315138;
      *(v36 + 4) = sub_223763694(v35, v37, &a22);
      OUTLINED_FUNCTION_24_1(&dword_22375F000);
      __swift_destroy_boxed_opaque_existential_0Tm(v51);
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_13_5();
    }
  }

  OUTLINED_FUNCTION_52();
}

uint64_t sub_22378D66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21 = a5;
  v22 = a7;
  v20 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v19 - v13;
  v15 = *MEMORY[0x277D5CDC8];
  v16 = sub_2237B540C();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v16);
  sub_2237B508C();

  sub_2237B506C();
  v17 = sub_2237B412C();
  (*(*(v17 - 8) + 16))(v11, v20, v17);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v17);
  sub_2237B50AC();

  sub_2237B509C();
  sub_2237B505C();

  sub_2237B504C();

  return sub_2237B507C();
}

void sub_22378D880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  OUTLINED_FUNCTION_53();
  v36 = v35;
  OUTLINED_FUNCTION_30_0();
  swift_getObjectType();
  objc_allocWithZone(sub_2237B4E4C());
  v37 = sub_2237B4DBC();
  if (v37)
  {
    OUTLINED_FUNCTION_46();
    v38 = OUTLINED_FUNCTION_9_6();
    sub_223786204(v38, v39, v40, v41);
  }

  else
  {
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_28131AA10);
    }

    v42 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v42, qword_28131B550);

    v43 = sub_2237B5C8C();
    v44 = sub_2237B5FFC();
    OUTLINED_FUNCTION_48(v44, v45, v46, v47, v48, v49, v50, v51);
    if (OUTLINED_FUNCTION_41())
    {
      OUTLINED_FUNCTION_20();
      v57 = OUTLINED_FUNCTION_29_0();
      *v36 = 136315138;
      v52 = OUTLINED_FUNCTION_16_5();
      *(v36 + 4) = sub_223763694(v52, v53, v54);
      OUTLINED_FUNCTION_19(&dword_22375F000, v55, v56, "Failed to create DirectActionResultCandidateMessage for request Id: %s");
      __swift_destroy_boxed_opaque_existential_0Tm(v57);
      OUTLINED_FUNCTION_13_5();
      OUTLINED_FUNCTION_8();
    }
  }

  OUTLINED_FUNCTION_52();
}

uint64_t sub_22378DA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v26 = a5;
  v27 = a7;
  v24[1] = a2;
  v25 = a4;
  v28 = a10;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097900, &qword_2237B8860);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v24 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v24 - v17;
  v19 = *MEMORY[0x277D5CDC8];
  v20 = sub_2237B540C();
  (*(*(v20 - 8) + 104))(v18, v19, v20);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v20);
  sub_2237B4E0C();

  sub_2237B4DEC();
  v21 = sub_2237B412C();
  (*(*(v21 - 8) + 16))(v15, v25, v21);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v21);
  sub_2237B4E3C();

  sub_2237B4E2C();
  sub_2237B4DDC();

  sub_2237B4DCC();

  sub_2237B4DFC();
  v22 = sub_2237B56DC();
  (*(*(v22 - 8) + 16))(v12, v28, v22);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v22);
  return sub_2237B4E1C();
}

BOOL sub_22378DD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, void *), const char *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  OUTLINED_FUNCTION_30_0();
  v46[2] = v22;
  v46[3] = v23;
  v46[4] = v24;
  v47 = v18;
  v48 = v17;
  ObjectType = swift_getObjectType();
  v25 = objc_allocWithZone((a6)(0));
  v26 = a8(a7, v46);
  if (v26)
  {
    OUTLINED_FUNCTION_46();
    v27 = OUTLINED_FUNCTION_9_6();
    sub_223786220(v27, v28, v29, v30);
  }

  else
  {
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_28131AA10);
    }

    v31 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v31, qword_28131B550);

    v32 = sub_2237B5C8C();
    v33 = sub_2237B5FFC();
    OUTLINED_FUNCTION_48(v33, v34, v35, v36, v37, v38, v39, v40);
    if (OUTLINED_FUNCTION_41())
    {
      OUTLINED_FUNCTION_20();
      v41 = OUTLINED_FUNCTION_44();
      v50 = v41;
      *a6 = 136315138;
      v42 = OUTLINED_FUNCTION_16_5();
      *(a6 + 4) = sub_223763694(v42, v43, v44);
      OUTLINED_FUNCTION_24_1(&dword_22375F000);
      __swift_destroy_boxed_opaque_existential_0Tm(v41);
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_13_5();
    }
  }

  return v26 != 0;
}

void sub_22378DEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_30_0();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  OUTLINED_FUNCTION_1(v23);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v24);
  v26 = &a9 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  OUTLINED_FUNCTION_1(v27);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v28);
  v30 = &a9 - v29;
  v31 = *MEMORY[0x277D5CDC8];
  v32 = sub_2237B540C();
  OUTLINED_FUNCTION_4();
  (*(v33 + 104))(v30, v31, v32);
  OUTLINED_FUNCTION_12_4();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v32);
  sub_2237B447C();

  sub_2237B443C();
  v37 = sub_2237B412C();
  OUTLINED_FUNCTION_4();
  (*(v38 + 16))(v26, v20, v37);
  OUTLINED_FUNCTION_12_4();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v37);
  sub_2237B449C();

  sub_2237B448C();
  sub_2237B446C();
  sub_2237B444C();
  sub_2237B445C();
  OUTLINED_FUNCTION_14_2();
}

void sub_22378E068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_16_3();
  v23 = v21;
  v110 = v24;
  v109 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v107 = type metadata accessor for RequestDispatcher.SessionContext(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v38);
  v106 = &v101[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097C80, &unk_2237B9260);
  v41 = OUTLINED_FUNCTION_1(v40);
  v42 = MEMORY[0x28223BE20](v41);
  v108 = &v101[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_20_4();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  OUTLINED_FUNCTION_1(v44);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v45);
  v47 = &v101[-v46];
  v113 = v37;
  v48 = v33;
  v114 = v35;
  v115 = v33;
  v116 = v31;
  v111 = v31;
  v112 = v29;
  v117 = v29;
  v118 = v27;
  v119 = v109;
  v120 = v110;
  v121 = a21;
  v49 = objc_allocWithZone(sub_2237B4F4C());
  v50 = sub_2237B4ECC();
  if (v50)
  {
    v51 = *(v23 + OBJC_IVAR___SRDRequestDispatcherInternal_broker);
    v110 = v50;
    sub_2237654A4(v50);
    v104 = *(v23 + OBJC_IVAR___SRDRequestDispatcherInternal_instrumentationUtil);
    v52 = sub_2237B412C();
    OUTLINED_FUNCTION_4();
    (*(v53 + 16))(v47, v48, v52);
    v109 = v47;
    OUTLINED_FUNCTION_12_4();
    __swift_storeEnumTagSinglePayload(v54, v55, v56, v52);
    v103 = AFDeviceSupportsSiriUOD();
    v102 = AFShouldRunAsrOnServerForUOD();
    v57 = OBJC_IVAR___SRDRequestDispatcherInternal_serverFallbackDisablingUtils;
    sub_223781B5C(v23 + OBJC_IVAR___SRDRequestDispatcherInternal_serverFallbackDisablingUtils, v123);
    v58 = v124;
    OUTLINED_FUNCTION_14_5(v125);
    v59 = OBJC_IVAR___SRDRequestDispatcherInternal_sessionContext;
    OUTLINED_FUNCTION_31(v23 + OBJC_IVAR___SRDRequestDispatcherInternal_sessionContext);
    v105 = v23;
    sub_22378EED8(v23 + v59, v22, &unk_27D097C80, &unk_2237B9260);
    v60 = v107;
    if (__swift_getEnumTagSinglePayload(v22, 1, v107))
    {
      sub_2237710FC(v22, &unk_27D097C80, &unk_2237B9260);
      OUTLINED_FUNCTION_34();
    }

    else
    {
      v76 = v106;
      sub_22378ED08(v22, v106);
      sub_2237710FC(v22, &unk_27D097C80, &unk_2237B9260);

      sub_223771D44(v76);
    }

    v77 = v111;
    v78 = sub_2237B58AC();
    OUTLINED_FUNCTION_58(v78, v79, v80, v81, v82, v83, v84, v85);
    v86 = v105;
    sub_223781B5C(v105 + v57, &v122);
    OUTLINED_FUNCTION_19_4();
    v87 = v86 + v59;
    v88 = v108;
    sub_22378EED8(v87, v108, &unk_27D097C80, &unk_2237B9260);
    if (__swift_getEnumTagSinglePayload(v88, 1, v60))
    {
      sub_2237710FC(v88, &unk_27D097C80, &unk_2237B9260);
      OUTLINED_FUNCTION_34();
    }

    else
    {
      v89 = v106;
      sub_22378ED08(v88, v106);
      sub_2237710FC(v88, &unk_27D097C80, &unk_2237B9260);

      sub_223771D44(v89);
    }

    v90 = v110;
    v91 = v109;
    v92 = v112;
    v93 = sub_2237B58AC();
    OUTLINED_FUNCTION_56(v93, v94, v95, v96, v97, v98, v99, v100);
    sub_223771484(v91, v77, v92, 3, v103, v102, v58 & 1, v51 & 1, OS_LOG_TYPE_DEFAULT);

    sub_2237710FC(v91, &qword_27D097A50, &unk_2237B7800);
    OUTLINED_FUNCTION_51();
  }

  else
  {
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_28131AA10);
    }

    v61 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v61, qword_28131B550);
    v62 = v112;

    v63 = sub_2237B5C8C();
    sub_2237B5FFC();
    v62, v64, v65, v66, v67, v68, v69, v70;
    v71 = OUTLINED_FUNCTION_57();
    v72 = v111;
    if (v71)
    {
      OUTLINED_FUNCTION_20();
      v73 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_50(v73);
      *v31 = 136315138;
      *(v31 + 4) = sub_223763694(v72, v62, v123);
      OUTLINED_FUNCTION_17_3(&dword_22375F000, v74, v75, "Failed to create StartCorrectedSpeechRequestMessage for request Id: %s");
      OUTLINED_FUNCTION_22_0();
      OUTLINED_FUNCTION_8();
    }
  }

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_14_2();
}

uint64_t sub_22378E60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v27 = a5;
  v28 = a7;
  v26 = a4;
  v29 = a10;
  v30 = a8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C70, &qword_2237B9250);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v25 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v25 - v17;
  v19 = *MEMORY[0x277D5CDC8];
  v20 = sub_2237B540C();
  (*(*(v20 - 8) + 104))(v18, v19, v20);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v20);
  sub_2237B4F1C();

  sub_2237B4EDC();
  v21 = sub_2237B412C();
  (*(*(v21 - 8) + 16))(v15, v26, v21);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v21);
  sub_2237B4F3C();

  sub_2237B4F2C();
  v22 = sub_2237B544C();
  (*(*(v22 - 8) + 16))(v12, v28, v22);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v22);
  sub_2237B4EEC();

  sub_2237B4EFC();
  v23 = v29;
  return sub_2237B4F0C();
}

void sub_22378E920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, char *), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_53();
  a33 = v38;
  a34 = v39;
  OUTLINED_FUNCTION_11_5();
  v40 = OUTLINED_FUNCTION_33_0();
  objc_allocWithZone(v34(v40));
  v41 = a10(a9, &a11);
  if (v41)
  {
    OUTLINED_FUNCTION_46();
    OUTLINED_FUNCTION_47();
  }

  else
  {
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_28131AA10);
    }

    v42 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v42, qword_28131B550);

    v43 = sub_2237B5C8C();
    sub_2237B5FFC();
    v37, v44, v45, v46, v47, v48, v49, v50;
    if (OUTLINED_FUNCTION_41())
    {
      OUTLINED_FUNCTION_20();
      v51 = OUTLINED_FUNCTION_29_0();
      a22 = v51;
      *v36 = 136315138;
      *(v36 + 4) = sub_223763694(v35, v37, &a22);
      OUTLINED_FUNCTION_19(&dword_22375F000, v52, v53, "Failed to create TextBasedResultCandidateMessage for request Id: %s");
      __swift_destroy_boxed_opaque_existential_0Tm(v51);
      OUTLINED_FUNCTION_13_5();
      OUTLINED_FUNCTION_8();
    }
  }

  OUTLINED_FUNCTION_52();
}

void sub_22378EA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_16_3();
  v51[1] = v22;
  v51[2] = v23;
  v51[0] = v24;
  v52 = a21;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097900, &qword_2237B8860);
  OUTLINED_FUNCTION_1(v25);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_39();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  OUTLINED_FUNCTION_1(v27);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v28);
  v30 = v51 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  OUTLINED_FUNCTION_1(v31);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v32);
  v34 = v51 - v33;
  v35 = *MEMORY[0x277D5CDC8];
  v36 = sub_2237B540C();
  OUTLINED_FUNCTION_4();
  (*(v37 + 104))(v34, v35, v36);
  OUTLINED_FUNCTION_12_4();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v36);
  sub_2237B4C3C();

  sub_2237B4C2C();
  v41 = sub_2237B412C();
  OUTLINED_FUNCTION_4();
  (*(v42 + 16))(v30, v51[0], v41);
  OUTLINED_FUNCTION_12_4();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v41);
  sub_2237B4C6C();

  sub_2237B4C5C();
  sub_2237B4C1C();

  sub_2237B4C7C();
  v46 = sub_2237B56DC();
  OUTLINED_FUNCTION_4();
  (*(v47 + 16))(v21, v52, v46);
  OUTLINED_FUNCTION_12_4();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v46);
  sub_2237B4C4C();
  OUTLINED_FUNCTION_14_2();
}

uint64_t sub_22378ED08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RequestDispatcher.SessionContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22378EED8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_25_1()
{

  return type metadata accessor for RequestDispatcher.SessionContext(0);
}

double OUTLINED_FUNCTION_28_0()
{

  return result;
}

uint64_t OUTLINED_FUNCTION_40()
{
  *(v2 - 352) = v0;
  v4 = *(v2 - 312);

  return sub_22378ED08(v1, v4);
}

uint64_t OUTLINED_FUNCTION_44()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_45(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *(v4 - 296);

  return sub_22378EED8(a1, v6, a3, a4);
}

uint64_t OUTLINED_FUNCTION_46()
{

  return sub_2237654A4(v0);
}

void OUTLINED_FUNCTION_47()
{

  sub_223786204(v0, v1, 48, 0xE100000000000000);
}

void OUTLINED_FUNCTION_48(uint64_t a1, const char *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{

  v8, a2, a3, a4, a5, a6, a7, a8;
}

uint64_t OUTLINED_FUNCTION_51()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 - 192));

  return __swift_destroy_boxed_opaque_existential_0Tm((v0 - 128));
}

uint64_t OUTLINED_FUNCTION_55@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 328) = *(v1 + a1);

  return sub_2237B412C();
}

BOOL OUTLINED_FUNCTION_57()
{

  return os_log_type_enabled(v1, v0);
}

void OUTLINED_FUNCTION_58(uint64_t a1, const char *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{

  v8, a2, a3, a4, a5, a6, a7, a8;
}

void sub_22378F2E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  sub_223761B80();
  sub_2237B572C();
  v7 = sub_22378F394(a2, 0, ObjectType);
  sub_22379114C(v7, a3, 1);

  v7, v8, v9, v10, v11, v12, v13, v14;
}

void *sub_22378F394(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_2237B576C() & 1) != 0 || (__swift_project_boxed_opaque_existential_1(a1, a1[3]), (sub_2237B57FC()))
  {
    v12 = sub_2237A6AAC(0, 1, 1, MEMORY[0x277D84F90], v4, v5, v6, v7);
    v14 = v12[2];
    v13 = v12[3];
    if (v14 >= v13 >> 1)
    {
      v12 = sub_2237A6AAC((v13 > 1), (v14 + 1), 1, v12, v8, v9, v10, v11);
    }

    v15 = sub_2237B419C();
    v16 = sub_223766F90(&qword_28131B4A0, MEMORY[0x277CF3B38], MEMORY[0x277D600A0]);
    v12[2] = v14 + 1;
    v17 = &v12[5 * v14];
    v17[4] = 19534;
    v17[5] = 0xE200000000000000;
    v17[6] = v15;
    v17[7] = v16;
    *(v17 + 64) = 0;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v18 = sub_2237B580C();
    v23 = v12[2];
    if (v18)
    {
      v24 = v12[3];
      v25 = v23 + 1;
      if (v23 >= v24 >> 1)
      {
        v12 = sub_2237A6AAC((v24 > 1), (v23 + 1), 1, v12, v19, v20, v21, v22);
      }

      v26 = sub_2237B418C();
      v27 = sub_223766F90(&unk_28131B4A8, MEMORY[0x277CF3B30], MEMORY[0x277D600A0]);
      v12[2] = v25;
      v28 = &v12[5 * v23];
      v28[4] = 0x726574756F524C4ELL;
      v28[5] = 0xE800000000000000;
      v28[6] = v26;
      v28[7] = v27;
      *(v28 + 64) = 0;
    }

    else
    {
      v25 = v12[2];
    }

    v29 = v12[3];
    if (v25 >= v29 >> 1)
    {
      v12 = sub_2237A6AAC((v29 > 1), (v25 + 1), 1, v12, v19, v20, v21, v22);
    }

    v30 = sub_2237B56FC();
    v31 = sub_223766F90(&qword_28131A868, MEMORY[0x277D565F0], MEMORY[0x277D600A0]);
    v12[2] = v25 + 1;
    v32 = &v12[5 * v25];
    v32[4] = 0x53454D4D4F50;
    v32[5] = 0xE600000000000000;
    v32[6] = v30;
    v32[7] = v31;
    *(v32 + 64) = 0;
    if (sub_2237B576C())
    {
      v38 = v12[2];
      v37 = v12[3];
      if (v38 >= v37 >> 1)
      {
        v12 = sub_2237A6AAC((v37 > 1), (v38 + 1), 1, v12, v33, v34, v35, v36);
      }

      v39 = sub_2237B416C();
      v40 = sub_223766F90(&qword_28131B4C0, MEMORY[0x277D55F98], MEMORY[0x277D600A0]);
      v12[2] = v38 + 1;
      v41 = &v12[5 * v38];
      v41[4] = 0x6C66726574747542;
      v41[5] = 0xE900000000000079;
      v41[6] = v39;
      v41[7] = v40;
      *(v41 + 64) = 0;
    }

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    if (sub_2237B579C())
    {
      v47 = v12[2];
      v46 = v12[3];
      v48 = v47 + 1;
      if (v47 >= v46 >> 1)
      {
        v12 = sub_2237A6AAC((v46 > 1), (v47 + 1), 1, v12, v42, v43, v44, v45);
      }

      v49 = sub_2237B593C();
      v50 = sub_223766F90(&unk_28131A850, MEMORY[0x277D46AF0], MEMORY[0x277D600A0]);
      v12[2] = v48;
      v55 = &v12[5 * v47];
      v55[4] = 0xD000000000000011;
      v55[5] = 0x80000002237BB170;
      v55[6] = v49;
      v55[7] = v50;
      *(v55 + 64) = 0;
      v56 = v12[3];
      v57 = v47 + 2;
      if ((v47 + 2) > (v56 >> 1))
      {
        v12 = sub_2237A6AAC((v56 > 1), (v47 + 2), 1, v12, v51, v52, v53, v54);
      }

      v58 = sub_2237B417C();
      v59 = sub_223766F90(&qword_28131B4B8, MEMORY[0x277D61A10], MEMORY[0x277D600A0]);
      v12[2] = v57;
      v60 = &v12[5 * v48];
      v60[4] = 18773;
      v60[5] = 0xE200000000000000;
      v60[6] = v58;
      v60[7] = v59;
      *(v60 + 64) = 1;
    }
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v61 = sub_2237B57AC();
  v62 = sub_22378FE54(v61 & 1);
  if (v62)
  {
    v64 = v62;
    v65 = v63;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_2237A6AAC(0, (v12[2] + 1), 1, v12, v66, v67, v68, v69);
    }

    v71 = v12[2];
    v70 = v12[3];
    if (v71 >= v70 >> 1)
    {
      v12 = sub_2237A6AAC((v70 > 1), (v71 + 1), 1, v12, v66, v67, v68, v69);
    }

    v12[2] = v71 + 1;
    v72 = &v12[5 * v71];
    v72[4] = 5526357;
    v72[5] = 0xE300000000000000;
    v72[6] = v64;
    v72[7] = v65;
    *(v72 + 64) = 0;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_2237B57EC() & 1) != 0 || (sub_2237B576C() & 1) != 0 || (__swift_project_boxed_opaque_existential_1(a1, a1[3]), (sub_2237B57FC()))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_2237A6AAC(0, (v12[2] + 1), 1, v12, v73, v74, v75, v76);
    }

    v78 = v12[2];
    v77 = v12[3];
    if (v78 >= v77 >> 1)
    {
      v12 = sub_2237A6AAC((v77 > 1), (v78 + 1), 1, v12, v73, v74, v75, v76);
    }

    v79 = sub_2237B5D9C();
    v80 = sub_223766F90(&qword_28131A838, MEMORY[0x277CE53E8], MEMORY[0x277D600A0]);
    v12[2] = v78 + 1;
    v81 = &v12[5 * v78];
    v81[4] = 5395265;
    v81[5] = 0xE300000000000000;
    v81[6] = v79;
    v81[7] = v80;
    *(v81 + 64) = 0;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_2237B57CC())
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_2237A6AAC(0, (v12[2] + 1), 1, v12, v82, v83, v84, v85);
    }

    v87 = v12[2];
    v86 = v12[3];
    if (v87 >= v86 >> 1)
    {
      v12 = sub_2237A6AAC((v86 > 1), (v87 + 1), 1, v12, v82, v83, v84, v85);
    }

    v88 = sub_2237B56EC();
    v89 = sub_223766F90(&qword_28131A870, MEMORY[0x277D55F90], MEMORY[0x277D600A0]);
    v12[2] = v87 + 1;
    v90 = &v12[5 * v87];
    v90[4] = 0x65727574736547;
    v90[5] = 0xE700000000000000;
    v90[6] = v88;
    v90[7] = v89;
    *(v90 + 64) = 0;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_2237A6AAC(0, (v12[2] + 1), 1, v12, v91, v92, v93, v94);
  }

  v96 = v12[2];
  v95 = v12[3];
  if (v96 >= v95 >> 1)
  {
    v12 = sub_2237A6AAC((v95 > 1), (v96 + 1), 1, v12, v91, v92, v93, v94);
  }

  v97 = sub_2237B41AC();
  v98 = sub_223766F90(&unk_28131B490, MEMORY[0x277D5C2F0], MEMORY[0x277D5C2E8]);
  v12[2] = v96 + 1;
  v99 = &v12[5 * v96];
  strcpy(v99 + 32, "Conversation");
  v99[45] = 0;
  *(v99 + 23) = -5120;
  *(v99 + 6) = v97;
  *(v99 + 7) = v98;
  v99[64] = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_2237B57AC())
  {
    v105 = v12[2];
    v104 = v12[3];
    if (v105 >= v104 >> 1)
    {
      v12 = sub_2237A6AAC((v104 > 1), (v105 + 1), 1, v12, v100, v101, v102, v103);
    }

    v106 = sub_2237B594C();
    v107 = sub_223766F90(&qword_28131A848, MEMORY[0x277D46AF8], MEMORY[0x277D600A0]);
    v12[2] = v105 + 1;
    v108 = &v12[5 * v105];
    v108[4] = 0x657261727543;
    v108[5] = 0xE600000000000000;
    v108[6] = v106;
    v108[7] = v107;
    *(v108 + 64) = 0;
  }

  return v12;
}

id RequestDispatcher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RequestDispatcher(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_22378FDE0(uint64_t a1, SRDRequestDispatcherInternal *a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4 = sub_2237B5E1C();
  a2, v5, v6, v7, v8, v9, v10, v11;
  v12 = [v3 initWithPath_];

  return v12;
}

uint64_t sub_22378FE54(char a1)
{
  if (qword_28131AA10 != -1)
  {
    swift_once();
  }

  v2 = sub_2237B5C9C();
  __swift_project_value_buffer(v2, qword_28131B550);
  v3 = sub_2237B5C8C();
  v4 = sub_2237B601C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_22375F000, v3, v4, "Attempting to load the USTBridge framework.", v5, 2u);
    MEMORY[0x223DEB690](v5, -1, -1);
  }

  if ((a1 & 1) == 0)
  {
    v7 = sub_2237B5C8C();
    v13 = sub_2237B601C();
    if (os_log_type_enabled(v7, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "Not loading USTBridge in an external build.";
LABEL_16:
      _os_log_impl(&dword_22375F000, v7, v13, v15, v14, 2u);
      MEMORY[0x223DEB690](v14, -1, -1);
    }

LABEL_23:

    return 0;
  }

  sub_223766240(0, &unk_28131A7C0, 0x277CCA8D8);
  v6 = sub_22378FDE0(0xD000000000000036, 0x80000002237BB190);
  if (!v6)
  {
    v7 = sub_2237B5C8C();
    v13 = sub_2237B5FFC();
    if (os_log_type_enabled(v7, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "Can't locate the USTBridge framework.";
      goto LABEL_16;
    }

    goto LABEL_23;
  }

  v7 = v6;
  if (![v6 principalClass])
  {
    v10 = sub_2237B5C8C();
    v16 = sub_2237B5FFC();
    if (os_log_type_enabled(v10, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "USTBridge bundle didn't have a principal class.";
LABEL_21:
      _os_log_impl(&dword_22375F000, v10, v16, v18, v17, 2u);
      MEMORY[0x223DEB690](v17, -1, -1);
    }

LABEL_22:

    goto LABEL_23;
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  v9 = dynamic_cast_existential_1_conditional(ObjCClassMetadata, ObjCClassMetadata, MEMORY[0x277D5D138]);
  v10 = sub_2237B5C8C();
  if (!v9)
  {
    v16 = sub_2237B5FFC();
    if (os_log_type_enabled(v10, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "USTBridge's principal class had unexpected type.";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v11 = sub_2237B601C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_22375F000, v10, v11, "Successfully loaded the USTBridge class.", v12, 2u);
    MEMORY[0x223DEB690](v12, -1, -1);
  }

  return v9;
}

void sub_2237901A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v25;
  a20 = v26;
  v268 = v21;
  v28 = v27;
  OUTLINED_FUNCTION_297();
  v29 = sub_2237B59CC();
  v30 = OUTLINED_FUNCTION_8_6(v29, &v282);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_69();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_69();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_69();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_25_2(v34);
  sub_2237B603C();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_25_2(v36);
  v37 = sub_2237B605C();
  v38 = OUTLINED_FUNCTION_8_6(v37, &a12);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_25_2(v39);
  v40 = sub_2237B5D0C();
  v41 = OUTLINED_FUNCTION_1(v40);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_25_2(v42);
  v43 = sub_2237B5C7C();
  v44 = OUTLINED_FUNCTION_8_6(v43, &v284);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_62(v45);
  v273 = v20;
  v280 = *(v20 + 16);
  v50 = sub_223776EFC(0, v280, 0, MEMORY[0x277D84F90], v46, v47, v48, v49);
  OUTLINED_FUNCTION_243(v50);
  v278 = sub_2237A688C(v28);
  if (!v278)
  {
    v52 = MEMORY[0x277D84F98];
LABEL_20:
    sub_223761B80();
    sub_2237B574C();
    if (!v280)
    {
LABEL_49:
      v208 = &v268[OBJC_IVAR___SRDRequestDispatcherInternal_featureChecker];
      v209 = *&v268[OBJC_IVAR___SRDRequestDispatcherInternal_featureChecker + 24];
      v210 = *&v268[OBJC_IVAR___SRDRequestDispatcherInternal_featureChecker + 32];
      v211 = OUTLINED_FUNCTION_1_1();
      __swift_project_boxed_opaque_existential_1(v211, v212);
      OUTLINED_FUNCTION_20_1();
      OUTLINED_FUNCTION_0();
      MEMORY[0x28223BE20](v213);
      OUTLINED_FUNCTION_226();
      (*(v214 + 16))(v23);
      OUTLINED_FUNCTION_283();
      sub_2237B3DA4(v215, v216, v217, v23, v209, v210, v218);
      v219 = OUTLINED_FUNCTION_349();
      __swift_project_boxed_opaque_existential_1(v219, v220);
      OUTLINED_FUNCTION_8_2();

      swift_unknownObjectRetain();

      OUTLINED_FUNCTION_356();
      if (sub_2237B580C())
      {
        v221 = OUTLINED_FUNCTION_349();
        OUTLINED_FUNCTION_259(v221, v222);
        if (sub_2237B577C())
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097D08, qword_2237B92C0);
          sub_2237A91D4(&v286, &v281);
          sub_2237A9230();
          v208 = sub_2237B581C();
          OUTLINED_FUNCTION_211();
          v249 = *(v247 + 16);
          v248 = *(v247 + 24);
          if (v249 >= v248 >> 1)
          {
            v263 = OUTLINED_FUNCTION_306((v248 > 1), (v249 + 1), v241, v242, v243, v244, v245, v246);
            OUTLINED_FUNCTION_243(v263);
          }

          sub_223766FD8(&qword_28131A860, &unk_27D097D08, qword_2237B92C0, MEMORY[0x277D60058]);
          OUTLINED_FUNCTION_211();
          *(v250 + 16) = v249 + 1;
          v251 = v250 + 16 * v249;
          *(v251 + 32) = v208;
          *(v251 + 40) = v252;
        }
      }

      goto LABEL_58;
    }

    v271 = sub_223766240(0, &qword_28131A7D8, 0x277D85C78);
    v267 = OBJC_IVAR___SRDRequestDispatcherInternal_serviceHelper;
    OUTLINED_FUNCTION_206();
    v270 = (v80 + 104);
    v266 = OBJC_IVAR___SRDRequestDispatcherInternal_sessionsManager;
    v81 = (v273 + 64);
    v269 = *v82;
    while (1)
    {
      v84 = *(v81 - 4);
      v83 = *(v81 - 3);
      v277 = *(v81 - 2);
      v279 = v81;
      v275 = *v81;
      v85 = qword_28131AA10;
      swift_bridgeObjectRetain_n();
      if (v85 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v86 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v86, qword_28131B550);

      v87 = sub_2237B5C8C();
      v88 = sub_2237B5FEC();
      v83, v89, v90, v91, v92, v93, v94, v95;
      if (os_log_type_enabled(v87, v88))
      {
        v96 = OUTLINED_FUNCTION_20();
        v286 = OUTLINED_FUNCTION_19_0();
        *v96 = 136315138;
        *(v96 + 4) = sub_223763694(v84, v83, &v286);
        _os_log_impl(&dword_22375F000, v87, v88, "Creating Bridge: %s...", v96, 0xCu);
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_135();
      }

      v286 = 0;
      v287 = 0xE000000000000000;
      sub_2237B613C();
      v287, v97, v98, v99, v100, v101, v102, v103;
      v286 = 0xD00000000000001DLL;
      OUTLINED_FUNCTION_183();
      v287 = v104;
      MEMORY[0x223DEAAD0](v84, v83);
      v23 = v287;
      OUTLINED_FUNCTION_287();
      sub_2237B5CFC();
      v52 = v272;
      (*v270)(v272, v269);
      v286 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_140();
      sub_223766F90(&qword_28131A7E0, v105, MEMORY[0x277D85238]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0979A8, &qword_2237B8500);
      OUTLINED_FUNCTION_4_8();
      sub_223766FD8(&qword_28131A810, &qword_27D0979A8, &qword_2237B8500, v106);
      sub_2237B60FC();
      OUTLINED_FUNCTION_293();
      v114 = sub_2237B608C();
      if (v275)
      {
        v83, v107, v108, v109, v110, v111, v112, v113;
        if (!dynamic_cast_existential_1_conditional(v277, v277, MEMORY[0x277D5D120]))
        {
          v83, v115, v116, v117, v118, v119, v120, v121;
          OUTLINED_FUNCTION_343();
          v202 = sub_2237B5C8C();
          v203 = sub_2237B600C();
          OUTLINED_FUNCTION_5(v203);
          OUTLINED_FUNCTION_337();
          if (v204)
          {
            v205 = OUTLINED_FUNCTION_7_3();
            *v205 = 0;
            _os_log_impl(&dword_22375F000, v202, v271, "isXPCListening set but bridge does not implement required interface", v205, 2u);
            OUTLINED_FUNCTION_3_0();
          }

          goto LABEL_44;
        }

        OUTLINED_FUNCTION_337();
        if (!*(v272 + 16) || (v23 = v122, OUTLINED_FUNCTION_136(), v123 = sub_22376504C(), (v124 & 1) == 0))
        {

          OUTLINED_FUNCTION_343();
          v175 = sub_2237B5C8C();
          v176 = sub_2237B5FFC();
          v83, v177, v178, v179, v180, v181, v182, v183;
          if (OUTLINED_FUNCTION_318())
          {
            OUTLINED_FUNCTION_20();
            v286 = OUTLINED_FUNCTION_44();
            *v23 = 136315138;
            v191 = OUTLINED_FUNCTION_136();
            v194 = sub_223763694(v191, v192, v193);
            v83, v195, v196, v197, v198, v199, v200, v201;
            *(v23 + 4) = v194;
            OUTLINED_FUNCTION_308(&dword_22375F000, v175, v176, "Could not find XpcConnectionListener for Bridge: %s", v264);
            OUTLINED_FUNCTION_109();
            OUTLINED_FUNCTION_13_5();
          }

          else
          {
            v83, v184, v185, v186, v187, v188, v189, v190;
          }

LABEL_44:
          goto LABEL_45;
        }

        v52 = *(*(v272 + 56) + 8 * v123);
        OUTLINED_FUNCTION_286();
        v126 = *&v268[v125];
        v127 = type metadata accessor for MessagePublisher();
        OUTLINED_FUNCTION_132(v127);
        v288 = sub_223766F90(&qword_28131B488, v128, &unk_2237B90F4);
        v286 = v126;
        v129 = *&v268[v266];
        v130 = type metadata accessor for SessionsManager(0);
        OUTLINED_FUNCTION_131(v130);
        v283 = sub_223766F90(&qword_28131B2B0, v131, &unk_2237B9448);
        v281 = v129;
        v132 = v52;

        swift_unknownObjectRetain();
        v133 = v114;

        OUTLINED_FUNCTION_136();
        v134 = sub_2237B554C();
        OUTLINED_FUNCTION_211();
        v136 = *(v135 + 16);
        v137 = *(v135 + 24);
        swift_unknownObjectRetain();
        if (v136 >= v137 >> 1)
        {
          v144 = v136 + 1;
          v207 = OUTLINED_FUNCTION_306((v137 > 1), (v136 + 1), v138, v139, v140, v141, v142, v143);
          OUTLINED_FUNCTION_243(v207);

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
          v144 = v136 + 1;
        }

        OUTLINED_FUNCTION_227();
        *(v146 + 16) = v144;
        v147 = v146 + 16 * v136;
        *(v147 + 32) = v134;
      }

      else
      {
        OUTLINED_FUNCTION_286();
        v149 = *&v268[v148];
        v150 = type metadata accessor for MessagePublisher();
        OUTLINED_FUNCTION_132(v150);
        v288 = sub_223766F90(&qword_28131B488, v151, &unk_2237B90F4);
        v286 = v149;
        v23 = *&v268[v267];
        v152 = *&v268[v266];
        v153 = type metadata accessor for SessionsManager(0);
        OUTLINED_FUNCTION_131(v153);
        v283 = sub_223766F90(&qword_28131B2B0, v154, &unk_2237B9448);
        v281 = v152;
        v155 = v114;
        OUTLINED_FUNCTION_370();
        swift_unknownObjectRetain();

        v156 = sub_2237B556C();
        v83, v157, v158, v159, v160, v161, v162, v163;
        OUTLINED_FUNCTION_211();
        v165 = *(v164 + 16);
        v166 = *(v164 + 24);
        swift_unknownObjectRetain();
        if (v165 >= v166 >> 1)
        {
          v173 = v165 + 1;
          v206 = OUTLINED_FUNCTION_306((v166 > 1), (v165 + 1), v167, v168, v169, v170, v171, v172);
          OUTLINED_FUNCTION_243(v206);

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
          v173 = v165 + 1;
        }

        OUTLINED_FUNCTION_227();
        *(v174 + 16) = v173;
        v147 = v174 + 16 * v165;
        *(v147 + 32) = v156;
      }

      *(v147 + 40) = v145;
      OUTLINED_FUNCTION_337();
LABEL_45:
      v81 = v279 + 40;
      if (!--v280)
      {
        goto LABEL_49;
      }
    }
  }

  v51 = 0;
  v276 = v28 & 0xC000000000000001;
  v52 = MEMORY[0x277D84F98];
  v274 = v28;
  while (1)
  {
    if (v276)
    {
      v53 = MEMORY[0x223DEADA0](v51, v28);
    }

    else
    {
      OUTLINED_FUNCTION_290();
      if (v51 >= *(v54 + 16))
      {
        goto LABEL_62;
      }

      v53 = *(v28 + 8 * v51 + 32);
    }

    v55 = v53;
    v56 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      break;
    }

    v57 = [v53 bridgeName];
    v58 = sub_2237B5E2C();
    v24 = v59;

    v60 = v55;
    swift_isUniquelyReferenced_nonNull_native();
    v286 = v52;
    OUTLINED_FUNCTION_100();
    v61 = sub_22376504C();
    v63 = *(v52 + 16);
    v64 = (v62 & 1) == 0;
    v52 = v63 + v64;
    if (__OFADD__(v63, v64))
    {
      goto LABEL_60;
    }

    v23 = v61;
    v22 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097D00, &unk_2237B92B0);
    if (sub_2237B618C())
    {
      OUTLINED_FUNCTION_100();
      sub_22376504C();
      OUTLINED_FUNCTION_269();
      if (!v73)
      {
        sub_2237B62CC();
        __break(1u);
        return;
      }

      v23 = v72;
    }

    if (v22)
    {
      v24, v65, v66, v67, v68, v69, v70, v71;
      v52 = v286;
      v74 = *(v286 + 56);
      v75 = *(v74 + 8 * v23);
      *(v74 + 8 * v23) = v60;
    }

    else
    {
      v52 = v286;
      OUTLINED_FUNCTION_266(v286 + 8 * (v23 >> 6));
      v76 = (*(v52 + 48) + 16 * v23);
      *v76 = v58;
      v76[1] = v24;
      *(*(v52 + 56) + 8 * v23) = v60;

      v77 = *(v52 + 16);
      v78 = __OFADD__(v77, 1);
      v79 = v77 + 1;
      if (v78)
      {
        goto LABEL_61;
      }

      *(v52 + 16) = v79;
    }

    ++v51;
    v28 = v274;
    if (v56 == v278)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
  OUTLINED_FUNCTION_0_6();
  swift_once();
  v223 = sub_2237B5C9C();
  OUTLINED_FUNCTION_13(v223, qword_28131B550);
  OUTLINED_FUNCTION_216();
  v224();
  v208 = sub_2237B5C8C();
  v225 = sub_2237B600C();
  if (os_log_type_enabled(v208, v225))
  {
    OUTLINED_FUNCTION_20();
    v226 = OUTLINED_FUNCTION_32();
    v281 = v226;
    *v22 = 136446210;
    sub_223766F90(&unk_27D097920, MEMORY[0x277D46B30], MEMORY[0x277D46B38]);
    sub_2237B62FC();
    v227 = OUTLINED_FUNCTION_148();
    v52 = v23 + 8;
    v228 = *(v23 + 8);
    v228(v227, v24);
    v229 = OUTLINED_FUNCTION_256();
    sub_223763694(v229, v230, v231);
    v232 = OUTLINED_FUNCTION_148();
    v232, v233, v234, v235, v236, v237, v238, v239;
    *(v22 + 4) = v265;
    OUTLINED_FUNCTION_217(&dword_22375F000, v208, v225, "Failed to instantiate IntelligenceFlowSessionBridge bridge with error %{public}s");
    __swift_destroy_boxed_opaque_existential_0Tm(v226);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_3_0();

    v240 = OUTLINED_FUNCTION_100();
    (v228)(v240);
    OUTLINED_FUNCTION_337();
  }

  else
  {

    v208 = *(v23 + 8);
    v253 = OUTLINED_FUNCTION_332();
    (v208)(v253);
    v254 = OUTLINED_FUNCTION_100();
    (v208)(v254);
  }

LABEL_58:
  OUTLINED_FUNCTION_155(&v285);
  sub_2237B572C();
  sub_2237A9180(&v286);
  OUTLINED_FUNCTION_96();
  v255(v208);
  v52, v256, v257, v258, v259, v260, v261, v262;
  OUTLINED_FUNCTION_14_2();
}

void sub_2237912BC(SRDRequestDispatcherInternal *a1, SRDRequestDispatcherInternal *a2)
{
  v4 = v2;
  if (qword_28131AA10 != -1)
  {
LABEL_60:
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v7 = sub_2237B5C9C();
  OUTLINED_FUNCTION_13(v7, qword_28131B550);
  swift_unknownObjectRetain();
  v213 = v2;
  v8 = sub_2237B5C8C();
  v9 = sub_2237B5FEC();
  swift_unknownObjectRelease();
  v214 = a1;
  v215 = a2;
  if (os_log_type_enabled(v8, v9))
  {
    OUTLINED_FUNCTION_20();
    v10 = OUTLINED_FUNCTION_32();
    v219[0] = v10;
    *v3 = 136315138;
    swift_getObjectType();
    v11 = sub_2237B568C();
    v13 = v12;
    v14 = sub_223763694(v11, v12, v219);
    v13, v15, v16, v17, v18, v19, v20, v21;
    *(v3 + 4) = v14;
    a2 = v215;
    OUTLINED_FUNCTION_217(&dword_22375F000, v8, v9, "About to register bridge %s to message bus...");
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    a1 = v214;
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_3_0();
  }

  v22 = OUTLINED_FUNCTION_240();
  if (sub_223782228(v22, v23))
  {
    v2 = a1;
    swift_getObjectType();
    v24 = sub_2237B567C();
    v32 = v24;
    v206 = *(v24 + 16);
    if (v206)
    {
      v33 = OBJC_IVAR___SRDRequestDispatcherInternal_aceCommandDispatcher;
      v205 = v24 + 32;
      OUTLINED_FUNCTION_14_3();
      swift_beginAccess();
      v3 = 0;
      v202 = v32;
      v203 = v33;
      v204 = v4;
      do
      {
        if (v3 >= *(v32 + 16))
        {
          goto LABEL_57;
        }

        v34 = (v205 + 16 * v3);
        v36 = *v34;
        v35 = v34[1];

        v209 = v36;
        v37 = sub_2237B566C();
        v2 = *(v4 + v33);
        v207 = v3;
        if (v2[2])
        {

          v38 = sub_22376504C();
          if (v39)
          {
            v46 = *(v2[7] + 8 * v38);

            v2, v47, v48, v49, v50, v51, v52, v53;
            goto LABEL_13;
          }

          v2, v39, v40, v41, v42, v43, v44, v45;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097980, &qword_2237B8320);
        v46 = sub_2237B5DBC();
LABEL_13:
        v208 = v35;
        v212 = *(v37 + 16);
        if (v212)
        {
          v4 = 0;
          v61 = (v37 + 40);
          v211 = v37;
          while (v4 < *(v37 + 16))
          {
            v62 = *(v61 - 1);
            v63 = *v61;

            swift_isUniquelyReferenced_nonNull_native();
            v218[0] = v46;
            v216 = v62;
            OUTLINED_FUNCTION_350();
            v2 = v46;
            v64 = sub_22376504C();
            v66 = *(v46 + 16);
            v67 = (v65 & 1) == 0;
            a1 = (v66 + v67);
            if (__OFADD__(v66, v67))
            {
              goto LABEL_55;
            }

            v68 = v64;
            v3 = v65;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097CF0, &qword_2237B92A0);
            v2 = v218;
            if (sub_2237B618C())
            {
              v2 = v218[0];
              sub_22376504C();
              OUTLINED_FUNCTION_269();
              a1 = v214;
              if (!v70)
              {
                goto LABEL_61;
              }

              v68 = v69;
            }

            else
            {
              a1 = v214;
            }

            v46 = v218[0];
            if (v3)
            {
              v71 = (*(v218[0] + 56) + 16 * v68);
              v3 = v71[1];
              *v71 = a1;
              v71[1] = a2;
              swift_unknownObjectRetain();

              swift_unknownObjectRetain();
              v72 = sub_2237B5C8C();
              v73 = sub_2237B5FFC();
              v63, v74, v75, v76, v77, v78, v79, v80;
              swift_unknownObjectRelease();
              if (os_log_type_enabled(v72, v73))
              {
                v210 = v73;
                v81 = OUTLINED_FUNCTION_19_0();
                v218[0] = swift_slowAlloc();
                *v81 = 136315650;
                swift_getObjectType();
                v82 = sub_2237B568C();
                OUTLINED_FUNCTION_371(v82, v83);
                v84 = OUTLINED_FUNCTION_254();
                v84, v85, v86, v87, v88, v89, v90, v91;
                *(v81 + 4) = v3;
                *(v81 + 12) = 2080;
                *(v81 + 14) = sub_223763694(v216, v63, v218);
                *(v81 + 22) = 2080;
                v92 = sub_2237B568C();
                OUTLINED_FUNCTION_371(v92, v93);
                v94 = OUTLINED_FUNCTION_254();
                v94, v95, v96, v97, v98, v99, v100, v101;
                *(v81 + 24) = v3;
                _os_log_impl(&dword_22375F000, v72, v210, "There is already a bridge: %s consuming %s. Replacing with %s", v81, 0x20u);
                swift_arrayDestroy();
                OUTLINED_FUNCTION_74();
                OUTLINED_FUNCTION_116();

                swift_unknownObjectRelease();
              }

              else
              {
                swift_unknownObjectRelease();
              }
            }

            else
            {
              OUTLINED_FUNCTION_266(v218[0] + 8 * (v68 >> 6));
              v102 = (*(v46 + 48) + 16 * v68);
              *v102 = v216;
              v102[1] = v63;
              v103 = (*(v46 + 56) + 16 * v68);
              *v103 = a1;
              v103[1] = a2;
              v104 = *(v46 + 16);
              v105 = __OFADD__(v104, 1);
              v106 = v104 + 1;
              if (v105)
              {
                goto LABEL_56;
              }

              *(v46 + 16) = v106;
              swift_unknownObjectRetain();
            }

            swift_unknownObjectRetain();

            v2 = v213;
            v107 = sub_2237B5C8C();
            v108 = sub_2237B5FEC();
            v63, v109, v110, v111, v112, v113, v114, v115;
            swift_unknownObjectRelease();
            if (os_log_type_enabled(v107, v108))
            {
              v123 = OUTLINED_FUNCTION_25_0();
              v3 = OUTLINED_FUNCTION_198();
              v218[0] = v3;
              *v123 = 136315394;
              v124 = a1;
              v125 = sub_2237B568C();
              v127 = OUTLINED_FUNCTION_371(v125, v126);
              v124, v128, v129, v130, v131, v132, v133, v134;
              *(v123 + 4) = v127;
              a1 = v214;
              *(v123 + 12) = 2080;
              v2 = sub_223763694(v216, v63, v218);
              v63, v135, v136, v137, v138, v139, v140, v141;
              *(v123 + 14) = v2;
              _os_log_impl(&dword_22375F000, v107, v108, "Registered bridge:%s for command:%s", v123, 0x16u);
              OUTLINED_FUNCTION_98();
              OUTLINED_FUNCTION_3_0();
              OUTLINED_FUNCTION_71();
            }

            else
            {
              v63, v116, v117, v118, v119, v120, v121, v122;
            }

            v37 = v211;
            v4 = (v4 + 1);
            v61 += 2;
            a2 = v215;
            if (v212 == v4)
            {
              goto LABEL_32;
            }
          }

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
          goto LABEL_60;
        }

LABEL_32:
        v37, v54, v55, v56, v57, v58, v59, v60;
        if (*(v46 + 16))
        {
          v33 = v203;
          v4 = v204;
          swift_beginAccess();
          swift_isUniquelyReferenced_nonNull_native();
          v2 = *(v204 + v203);
          v149 = v208;
          v150 = sub_22376504C();
          v152 = v2[2];
          v153 = (v151 & 1) == 0;
          a1 = (v152 + v153);
          if (__OFADD__(v152, v153))
          {
            goto LABEL_58;
          }

          v154 = v150;
          v3 = v151;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097CF8, &qword_2237B92A8);
          if (sub_2237B618C())
          {
            sub_22376504C();
            OUTLINED_FUNCTION_269();
            a1 = v214;
            if (!v70)
            {
LABEL_61:
              sub_2237B62CC();
              __break(1u);
              return;
            }

            v154 = v162;
          }

          else
          {
            a1 = v214;
          }

          if (v3)
          {
            v171 = v2[7];
            v172 = *(v171 + 8 * v154);
            *(v171 + 8 * v154) = v46;
          }

          else
          {
            OUTLINED_FUNCTION_266(&v2[v154 >> 6]);
            v173 = (v2[6] + 16 * v154);
            *v173 = v209;
            v173[1] = v208;
            *(v2[7] + 8 * v154) = v46;
            v174 = v2[2];
            v105 = __OFADD__(v174, 1);
            v175 = v174 + 1;
            if (v105)
            {
              goto LABEL_59;
            }

            v2[2] = v175;

            v172 = 0;
          }

          *(v204 + v203) = v2;
          v172, v155, v156, v157, v158, v159, v160, v161;
          swift_endAccess();
          v32 = v202;
          v170 = v207;
        }

        else
        {
          v46, v142, v143, v144, v145, v146, v147, v148;
          v33 = v203;
          v4 = v204;
          v32 = v202;
          v170 = v207;
          v149 = v208;
        }

        v3 = v170 + 1;
        v149, v163, v164, v165, v166, v167, v168, v169;
      }

      while (v3 != v206);
    }

    v32, v25, v26, v27, v28, v29, v30, v31;
    swift_unknownObjectRetain();
    v176 = sub_2237B5C8C();
    v177 = sub_2237B601C();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v176, v177))
    {
      OUTLINED_FUNCTION_20();
      v178 = a1;
      v179 = OUTLINED_FUNCTION_32();
      v218[0] = v179;
      *v3 = 136446210;
      v180 = sub_2237B568C();
      v182 = OUTLINED_FUNCTION_371(v180, v181);
      v178, v183, v184, v185, v186, v187, v188, v189;
      *(v3 + 4) = v182;
      OUTLINED_FUNCTION_217(&dword_22375F000, v176, v177, "%{public}s Bridge was registered to the MessageBus");
      __swift_destroy_boxed_opaque_existential_0Tm(v179);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_3_0();
    }
  }

  else
  {
    swift_unknownObjectRetain();
    v217 = sub_2237B5C8C();
    v190 = sub_2237B5FFC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v217, v190))
    {
      OUTLINED_FUNCTION_20();
      v219[0] = OUTLINED_FUNCTION_32();
      *v3 = 136315138;
      swift_getObjectType();
      v191 = sub_2237B568C();
      v193 = v192;
      v194 = sub_223763694(v191, v192, v219);
      v193, v195, v196, v197, v198, v199, v200, v201;
      *(v3 + 4) = v194;
      OUTLINED_FUNCTION_217(&dword_22375F000, v217, v190, "Unable to register %s Bridge...");
      OUTLINED_FUNCTION_22_0();
      OUTLINED_FUNCTION_3_0();
    }

    else
    {
    }
  }
}

void sub_223791BE0()
{
  OUTLINED_FUNCTION_16_3();
  v3 = sub_2237B5C7C();
  OUTLINED_FUNCTION_0_2();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_112();
  v11 = (v9 - v10);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_35();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_27_1();
  v40 = MEMORY[0x277D84F90];
  v37[2] = &v40;
  v38 = v0;
  v15 = sub_223761B80();
  v36 = v1;
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_14_6();
  sub_2237B573C(v16, v17, v18, v19, &type metadata for Logger, v15);
  v35 = *(v0 + OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue);
  v20 = *(v5 + 16);
  v21 = OUTLINED_FUNCTION_184();
  (v20)(v21);
  OUTLINED_FUNCTION_147();
  v20();
  v22 = *(v5 + 80);
  v23 = (v22 + 16) & ~v22;
  v24 = (v7 + v22 + v23) & ~v22;
  v25 = (v7 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = OUTLINED_FUNCTION_305();
  v27 = *(v5 + 32);
  v27(v26 + v23, v2, v3);
  v27(v26 + v24, v11, v3);
  v28 = (v26 + v25);
  *v28 = 0x28736E69616D6F64;
  v28[1] = 0xE900000000000029;
  v29 = (v26 + ((v25 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v29 = sub_2237A7C58;
  v29[1] = v37;
  OUTLINED_FUNCTION_5_3();
  v30 = swift_allocObject();
  *(v30 + 16) = sub_223761F90;
  *(v30 + 24) = v26;
  v39[4] = sub_223761F50;
  v39[5] = v30;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v39[2] = v31;
  v39[3] = &block_descriptor_2;
  _Block_copy(v39);
  OUTLINED_FUNCTION_125();

  dispatch_sync(v35, v11);
  _Block_release(v11);
  v32 = *(v5 + 8);
  v33 = OUTLINED_FUNCTION_231();
  v32(v33);
  v34 = (v32)(v36, v3);
  OUTLINED_FUNCTION_22_1(v34, "");
  OUTLINED_FUNCTION_90();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

void sub_223791F10(SRDRequestDispatcherInternal **a1, uint64_t a2)
{
  v4 = OBJC_IVAR___SRDRequestDispatcherInternal_aceCommandDispatcher;
  swift_beginAccess();
  v12 = *(a2 + v4);
  v13 = *(v12 + 16);
  if (!v13)
  {
    goto LABEL_4;
  }

  v14 = sub_2237A6BE0(*(v12 + 16), 0);
  sub_2237A6F60();
  v16 = v15;

  sub_2237A92AC();
  if (v16 != v13)
  {
    __break(1u);
LABEL_4:
    v14 = MEMORY[0x277D84F90];
  }

  v17 = *a1;
  *a1 = v14;
  v17, v5, v6, v7, v8, v9, v10, v11;
}

void *sub_223791FF8(uint64_t a1, __n128 a2, const char *a3, void *a4, void *a5, uint64_t a6, void *a7, void *a8, void *a9)
{
  v9 = a1;
  v10 = *(a1 + 16);
  if (!v10)
  {
    goto LABEL_4;
  }

  v11 = sub_2237A6BE0(*(a1 + 16), 0);
  sub_2237A6F60();
  v9 = v12;
  sub_2237A92AC();
  if (v9 != v10)
  {
    __break(1u);
LABEL_4:
    v9, a3, a4, a5, a6, a7, a8, a9;
    return MEMORY[0x277D84F90];
  }

  return v11;
}

void sub_2237920E8()
{
  OUTLINED_FUNCTION_16_3();
  v4 = v1;
  v6 = v5;
  OUTLINED_FUNCTION_188();
  v38 = sub_2237B5C7C();
  OUTLINED_FUNCTION_0_2();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_246();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_24_2();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_27_1();
  v44 = MEMORY[0x277D84F90];
  v39[2] = v4;
  v40 = v3;
  v41 = v6;
  v42 = &v44;
  v13 = sub_223761B80();
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_363(v14, v15, v16, v17, v18, v19, 20);
  v20 = OUTLINED_FUNCTION_203();
  (v13)(v20, v2, v38);
  OUTLINED_FUNCTION_170();
  v13();
  v21 = v8;
  OUTLINED_FUNCTION_11_6();
  v23 = (v22 & 0xFFFFFFFFFFFFFFF8);
  v24 = ((v22 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = *(v21 + 32);
  OUTLINED_FUNCTION_139();
  v26();
  v27 = OUTLINED_FUNCTION_52_0();
  (v26)(v27);
  OUTLINED_FUNCTION_76((v23 + v25));
  *(v28 + 8) = 0x80000002237BA1E0;
  v29 = (v25 + v24);
  *v29 = sub_2237A7C60;
  v29[1] = v39;
  OUTLINED_FUNCTION_5_3();
  v30 = swift_allocObject();
  *(v30 + 16) = sub_223761F8C;
  *(v30 + 24) = v25;
  v43[4] = sub_223761F78;
  v43[5] = v30;
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 1107296256;
  OUTLINED_FUNCTION_0_5();
  v43[2] = v31;
  v43[3] = &block_descriptor_14;
  v32 = _Block_copy(v43);

  v33 = OUTLINED_FUNCTION_285();
  dispatch_sync(v33, v34);
  _Block_release(v32);
  v35 = OUTLINED_FUNCTION_160();
  v23(v35);
  v36 = OUTLINED_FUNCTION_202();
  v37 = (v23)(v36);
  OUTLINED_FUNCTION_22_1(v37, "");
  OUTLINED_FUNCTION_121();

  if (v0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_159();
    OUTLINED_FUNCTION_14_2();
  }
}

void sub_223792408(uint64_t a1, uint64_t a2, uint64_t a3, SRDRequestDispatcherInternal **a4)
{
  v6 = OBJC_IVAR___SRDRequestDispatcherInternal_aceCommandDispatcher;
  swift_beginAccess();
  v7 = *(a1 + v6);
  if (*(v7 + 16))
  {

    v8 = sub_22376504C();
    if (v9)
    {
      v16 = *(*(v7 + 56) + 8 * v8);

      v7, v17, v18, v19, v20, v21, v22, v23;
      v32 = sub_223791FF8(v16, v31, v24, v25, v26, v27, v28, v29, v30);
      v33 = *a4;
      *a4 = v32;
      v34 = v33;
    }

    else
    {
      v34 = v7;
    }

    v34, v9, v10, v11, v12, v13, v14, v15;
  }
}

void sub_223792554()
{
  OUTLINED_FUNCTION_16_3();
  v6 = v5;
  v8 = v7;
  v35 = v9;
  OUTLINED_FUNCTION_174();
  v33 = sub_2237B5C7C();
  OUTLINED_FUNCTION_0_2();
  v36 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_158(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_24_2();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_27_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_274();
  v45 = 0;
  v38 = v0;
  v39 = v8;
  v40 = v6;
  v41 = &v45;
  v42 = v1;
  v43 = v35;
  v16 = sub_223761B80();
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  v34 = v2;
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_223(v17, v18, v19, v20, v21, v22, 31);
  v23 = OUTLINED_FUNCTION_203();
  (v6)(v23, v4, v33);
  v24 = OUTLINED_FUNCTION_151();
  (v6)(v24);
  OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_105();
  v25 = OUTLINED_FUNCTION_260();
  v26 = *(v36 + 32);
  v26(v25 + v36, v3, v33);
  v26(&v6[v25], v32, v33);
  OUTLINED_FUNCTION_41_0(&v16[v25]);
  v27 = (v25 + v36);
  *v27 = sub_2237A7C6C;
  v27[1] = &v37;
  OUTLINED_FUNCTION_5_3();
  v28 = swift_allocObject();
  *(v28 + 16) = sub_223761F8C;
  *(v28 + 24) = v25;
  v44[4] = sub_223761F78;
  v44[5] = v28;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v44[2] = v29;
  v44[3] = &block_descriptor_25;
  _Block_copy(v44);
  OUTLINED_FUNCTION_252();

  OUTLINED_FUNCTION_362();
  _Block_release(v16);
  v30 = *(v36 + 8);
  v30(v34, v33);
  v31 = (v30)(v4, v33);
  OUTLINED_FUNCTION_22_1(v31, "");
  OUTLINED_FUNCTION_121();

  if ((v36 + 8))
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

void sub_223792860(uint64_t a1, uint64_t a2, uint64_t a3, BOOL *a4, uint64_t a5, uint64_t a6)
{
  v10 = OBJC_IVAR___SRDRequestDispatcherInternal_aceCommandDispatcher;
  swift_beginAccess();
  v11 = *(a1 + v10);
  if (*(v11 + 16))
  {

    v12 = sub_22376504C();
    if (v13)
    {
      v20 = *(*(v11 + 56) + 8 * v12);

      v11, v21, v22, v23, v24, v25, v26, v27;
      v28 = sub_2237725B0(a5, a6, v20);
      v20, v29, v30, v31, v32, v33, v34, v35;
      if (v28)
      {
        swift_unknownObjectRelease();
      }

      *a4 = v28 != 0;
    }

    else
    {
      v11, v13, v14, v15, v16, v17, v18, v19;
    }
  }
}

void sub_2237929D8()
{
  OUTLINED_FUNCTION_16_3();
  v2 = v1;
  OUTLINED_FUNCTION_191();
  sub_2237B412C();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_299();
  if (v2)
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D47208]) init];
    sub_2237B411C();
    sub_2237B40FC();
    v5 = OUTLINED_FUNCTION_19_2();
    v6(v5);
    v7 = OUTLINED_FUNCTION_234();
    sub_2237A6EFC(v7, v8, v4);
    v9 = v4;
    sub_223767020(v0, &selRef_aceId);
    if (v10)
    {
      v11 = v10;
      v12 = sub_2237B5E1C();
      v11, v13, v14, v15, v16, v17, v18, v19;
    }

    else
    {
      v12 = 0;
    }

    [v9 setRefId_];

    v20 = objc_opt_self();
    v21 = v9;
    v22 = [v20 errorWithCode_];
    v23 = OUTLINED_FUNCTION_19_3();
    v2(v23);
  }

  OUTLINED_FUNCTION_14_2();
}

void sub_223792B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v24;
  a20 = v25;
  v27 = v26;
  v58 = v28;
  OUTLINED_FUNCTION_174();
  sub_2237B5C7C();
  OUTLINED_FUNCTION_0_2();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_31_0();
  v57 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_24_2();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_27_1();
  v36 = sub_223761B80();
  sub_2237B575C();
  v60 = v20;
  v61 = v21;
  OUTLINED_FUNCTION_189(&a18);
  v62 = v58;
  v63 = v27;
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_320(v37, v38, v39, v40, v41, v42, 48);
  v43 = OUTLINED_FUNCTION_154(OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue);
  v36(v43);
  v44 = OUTLINED_FUNCTION_119();
  v36(v44);
  OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_79();
  v45 = OUTLINED_FUNCTION_221();
  v46 = OUTLINED_FUNCTION_46_0(v45);
  v23(v46);
  v47 = OUTLINED_FUNCTION_52_0();
  v23(v47);
  OUTLINED_FUNCTION_76((&type metadata for Logger + v45));
  OUTLINED_FUNCTION_84(v48);
  v49 = (v45 + v22);
  *v49 = sub_2237A7C7C;
  v49[1] = &v59;
  OUTLINED_FUNCTION_5_3();
  v50 = swift_allocObject();
  *(v50 + 16) = sub_223761F8C;
  *(v50 + 24) = v45;
  v64[4] = sub_223761F78;
  v64[5] = v50;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v64[2] = v51;
  v64[3] = &block_descriptor_47;
  _Block_copy(v64);
  OUTLINED_FUNCTION_195();

  v52 = OUTLINED_FUNCTION_285();
  dispatch_sync(v52, v53);
  _Block_release(v57);
  v54 = OUTLINED_FUNCTION_160();
  (type metadata for Logger.Kind)(v54);
  v55 = OUTLINED_FUNCTION_202();
  v56 = (type metadata for Logger.Kind)(v55);
  OUTLINED_FUNCTION_22_1(v56, "");
  OUTLINED_FUNCTION_121();

  if (v30)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

void sub_223792F08()
{
  OUTLINED_FUNCTION_16_3();
  v3 = v1;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097A40, &unk_2237B8850);
  OUTLINED_FUNCTION_1(v14);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_233();
  sub_22376F45C();
  if (v16)
  {
    MEMORY[0x28223BE20](v16);
    OUTLINED_FUNCTION_278();
    *(v17 - 48) = v13;
    *(v17 - 40) = v11;
    *(v17 - 32) = v18;
    *(v17 - 24) = v9;
    *(v17 - 16) = v7;
    *(v17 - 8) = v5;
    v19 = objc_allocWithZone(sub_2237B440C());
    OUTLINED_FUNCTION_34_0();
    v20 = sub_2237B43AC();
    if (v20)
    {
      v21 = v20;
      v22 = *(v1 + OBJC_IVAR___SRDRequestDispatcherInternal_broker);
      sub_2237654A4(v20);
      sub_22376F91C(v3 + OBJC_IVAR___SRDRequestDispatcherInternal_activeUserSessionObserver, v69, &qword_27D097C38, "&-");
      v23 = v70;
      if (v70)
      {
        v24 = v71;
        __swift_project_boxed_opaque_existential_1(v69, v70);
        v68 = &v68;
        OUTLINED_FUNCTION_20_1();
        v26 = v25;
        MEMORY[0x28223BE20](v27);
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_299();
        (*(v26 + 16))(v22);
        sub_2237710FC(v69, &qword_27D097C38, "&-");
        (*(v24 + 8))(v23, v24);
        (*(v26 + 8))(v22, v23);
        sub_2237B551C();
        OUTLINED_FUNCTION_12_4();
        __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
      }

      else
      {
        sub_2237710FC(v69, &qword_27D097C38, "&-");
        v63 = sub_2237B551C();
        OUTLINED_FUNCTION_2_1(v2, v64, v65, v63);
      }

      v66 = OUTLINED_FUNCTION_19_3();
      sub_223770A64(v66, v67, v7, 1);
      sub_2237710FC(v2, &unk_27D097A40, &unk_2237B8850);
      OUTLINED_FUNCTION_16_5();
      sub_223786408();
    }

    else
    {
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v46 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v46, qword_28131B550);

      v47 = sub_2237B5C8C();
      v48 = sub_2237B5FFC();
      v7, v49, v50, v51, v52, v53, v54, v55;
      if (os_log_type_enabled(v47, v48))
      {
        v56 = OUTLINED_FUNCTION_20();
        v69[0] = OUTLINED_FUNCTION_19_0();
        *v56 = 136315138;
        v57 = OUTLINED_FUNCTION_16_5();
        *(v56 + 4) = sub_223763694(v57, v58, v59);
        OUTLINED_FUNCTION_239(&dword_22375F000, v60, v48, "Failed to create CancelRequestMessage for request Id: %s");
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_13_1();
      }
    }

    goto LABEL_19;
  }

  if (qword_28131AA10 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v32 = sub_2237B5C9C();
  OUTLINED_FUNCTION_13(v32, qword_28131B550);

  v68 = sub_2237B5C8C();
  sub_2237B5FFC();
  v33 = OUTLINED_FUNCTION_90();
  v33, v34, v35, v36, v37, v38, v39, v40;
  if (os_log_type_enabled(v68, v0))
  {
    v41 = OUTLINED_FUNCTION_20();
    v42 = OUTLINED_FUNCTION_19_0();
    v69[0] = v42;
    *v41 = 136315138;
    v43 = OUTLINED_FUNCTION_233();
    *(v41 + 4) = sub_223763694(v43, v44, v45);
    OUTLINED_FUNCTION_360(&dword_22375F000, v68, v0, "No active session for assistantId: %s cannot post CancelRequest message", v68);
    __swift_destroy_boxed_opaque_existential_0Tm(v42);
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_74();

LABEL_19:
    OUTLINED_FUNCTION_14_2();
    return;
  }

  OUTLINED_FUNCTION_14_2();
}

uint64_t sub_223793384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19[1] = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v19 - v12;
  v14 = *MEMORY[0x277D5CDC8];
  v15 = sub_2237B540C();
  (*(*(v15 - 8) + 104))(v13, v14, v15);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v15);
  sub_2237B43DC();

  sub_2237B43BC();
  v16 = OBJC_IVAR____TtC14SiriMessageBus7Session_sessionId;
  v17 = sub_2237B412C();
  (*(*(v17 - 8) + 16))(v10, a4 + v16, v17);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v17);
  sub_2237B43FC();

  sub_2237B43EC();
  return sub_2237B43CC();
}

void sub_223793580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v25;
  a20 = v26;
  v27 = v21;
  v71 = v28;
  OUTLINED_FUNCTION_244(v29, v30, v31, v32, v33, v34, v35);
  v37 = v36;
  v39 = v38;
  v70 = a21;
  swift_getObjectType();
  OUTLINED_FUNCTION_174();
  v40 = sub_2237B5C7C();
  v41 = OUTLINED_FUNCTION_8_6(v40, &a15);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_28_1(v46);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_32_0();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_59();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_20_4();
  v72[2] = v27;
  v72[3] = v39;
  OUTLINED_FUNCTION_206();
  v72[4] = v37;
  v72[5] = v50;
  OUTLINED_FUNCTION_114();
  v72[6] = v52;
  v72[7] = v51;
  OUTLINED_FUNCTION_108();
  v73 = v71;
  v74 = v70;
  v75 = v22;
  v53 = sub_223761B80();
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_323();
  OUTLINED_FUNCTION_12_5();
  sub_2237B573C(v54, v55, v56, v57);
  OUTLINED_FUNCTION_129(*(v27 + OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue));
  v58 = *(v43 + 16);
  v58(v23, v24);
  v59 = OUTLINED_FUNCTION_142();
  (v58)(v59);
  OUTLINED_FUNCTION_23_2();
  v60 = OUTLINED_FUNCTION_305();
  v61 = *(v43 + 32);
  v61(v58 + v60, v23);
  (v61)(v60 + v24);
  OUTLINED_FUNCTION_76((v60 + v45));
  OUTLINED_FUNCTION_84(v62);
  v63 = &v53[v60];
  *v63 = sub_2237A7C94;
  v63[1] = v72;
  OUTLINED_FUNCTION_5_3();
  v64 = swift_allocObject();
  *(v64 + 16) = sub_223761F8C;
  *(v64 + 24) = v60;
  v76[4] = sub_223761F78;
  v76[5] = v64;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v76[2] = v65;
  v76[3] = &block_descriptor_69_0;
  _Block_copy(v76);
  OUTLINED_FUNCTION_253();

  v66 = OUTLINED_FUNCTION_101();
  dispatch_sync(v66, v53);
  _Block_release(v53);
  OUTLINED_FUNCTION_351();
  v67 = OUTLINED_FUNCTION_145(&a16);
  (v61)(v67);
  v68 = OUTLINED_FUNCTION_143();
  v69 = (v61)(v68);
  OUTLINED_FUNCTION_22_1(v69, "");
  OUTLINED_FUNCTION_90();

  if (v23)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

uint64_t sub_2237938F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SRDRequestDispatcherInternal *a7, uint64_t a8, char a9, uint64_t a10)
{
  v21 = a4;
  v22 = a5;
  v23 = a1;
  v14 = sub_2237B544C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22376E3D4(a7, v17);
  if (a8)
  {
    v18 = sub_2237B5FDC();
  }

  else
  {
    v18 = 0;
  }

  sub_223793B3C(a2, a3, v21, v22, v17, v18, a9 & 1, a10, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);

  return (*(v15 + 8))(v17, v14);
}

void sub_223793B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v24;
  a20 = v25;
  v26 = v20;
  v243 = v27;
  v242 = v28;
  v241 = v29;
  v240 = v30;
  v247 = v31;
  v248 = v32;
  v34 = v33;
  v36 = v35;
  v37 = sub_2237B5CCC();
  v38 = OUTLINED_FUNCTION_8_6(v37, &a13);
  v236 = v39;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_25_2(v40);
  v41 = sub_2237B5D0C();
  v42 = OUTLINED_FUNCTION_8_6(v41, &a11);
  v234 = v43;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_62(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  OUTLINED_FUNCTION_1(v45);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_25_2(v47);
  sub_2237B412C();
  OUTLINED_FUNCTION_0_2();
  v244 = v49;
  v245 = v48;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_62(v50);
  OUTLINED_FUNCTION_204(&v253);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_20_0();
  v246 = v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097A40, &unk_2237B8850);
  OUTLINED_FUNCTION_1(v53);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_25_2(v55);
  v56 = sub_2237B563C();
  OUTLINED_FUNCTION_0_2();
  v58 = v57;
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_264();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_29_1();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097C80, &unk_2237B9260);
  OUTLINED_FUNCTION_1(v61);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_122();
  v63 = type metadata accessor for RequestDispatcher.SessionContext(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_3_4();
  v249 = v36;
  v250 = v65;
  v66 = v34;
  sub_22376F45C();
  if (v67)
  {
    v68 = v67;
    v69 = OBJC_IVAR___SRDRequestDispatcherInternal_sessionContext;
    OUTLINED_FUNCTION_14_3();
    swift_beginAccess();
    OUTLINED_FUNCTION_347();
    sub_22376F91C(v26 + v69, v23, v70, v71);
    OUTLINED_FUNCTION_312(v23, 1, v63);
    if (v72)
    {
      sub_2237710FC(v23, &unk_27D097C80, &unk_2237B9260);
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v73 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v73, qword_28131B550);

      v74 = sub_2237B5C8C();
      sub_2237B5FFC();
      v248, v75, v76, v77, v78, v79, v80, v81;
      v66, v82, v83, v84, v85, v86, v87, v88;
      if (OUTLINED_FUNCTION_218())
      {
        OUTLINED_FUNCTION_25_0();
        v252[0] = OUTLINED_FUNCTION_137();
        OUTLINED_FUNCTION_302(4.8151e-34);
        v90 = sub_223763694(v249, v66, v89);
        OUTLINED_FUNCTION_56_0(v90);
        *(v21 + 14) = sub_223763694(v247, v248, v252);
        OUTLINED_FUNCTION_33();
        _os_log_impl(v91, v92, v93, v94, v95, 0x16u);
        OUTLINED_FUNCTION_149();
        OUTLINED_FUNCTION_71();
        OUTLINED_FUNCTION_3_0();
      }
    }

    else
    {
      sub_22376F978(v23, v250);
      v107 = OUTLINED_FUNCTION_81();
      v108(v107);
      v109 = *(v58 + 104);
      LODWORD(v228) = *MEMORY[0x277D5D258];
      v227 = v109;
      v109(v21);
      OUTLINED_FUNCTION_16_5();
      v110 = sub_223766744();
      v111 = *(v58 + 8);
      v112 = OUTLINED_FUNCTION_356();
      v111(v112);
      (v111)(v22, v56);
      v229 = v68;
      if (v110)
      {
        v118 = v230;
        sub_22376F9F8(v68, v249, v66, v113, v114, v115, v116, v117, v223, *(&v223 + 1), v224, v225, v66, v227, v228, v229, v230, v231, v232, v233);
        v228 = *(v118 + OBJC_IVAR___SRDRequestDispatcherInternal_instrumentationUtil);
        v119 = OBJC_IVAR____TtC14SiriMessageBus7Session_userSessionState;
        OUTLINED_FUNCTION_14_3();
        swift_beginAccess();
        v120 = sub_2237B551C();
        OUTLINED_FUNCTION_4();
        v122 = v68;
        (*(v121 + 16))(v238, v68 + v119, v120);
        OUTLINED_FUNCTION_12_4();
        __swift_storeEnumTagSinglePayload(v123, v124, v125, v120);
        v126 = v248;
        sub_223770A64(v238, v247, v248, 0);
        sub_2237710FC(v238, &unk_27D097A40, &unk_2237B8850);
        v127 = OBJC_IVAR____TtC14SiriMessageBus7Session_sessionId;
        v128 = *(v244 + 16);
        v128(v246, v122 + OBJC_IVAR____TtC14SiriMessageBus7Session_sessionId, v245);
        v224 = v244 + 16;
        *(&v223 + 1) = v128;
        v128(v239, v122 + v127, v245);
        OUTLINED_FUNCTION_12_4();
        __swift_storeEnumTagSinglePayload(v129, v130, v131, v245);
        LODWORD(v238) = AFDeviceSupportsSiriUOD();
        LODWORD(v227) = AFShouldRunAsrOnServerForUOD();
        v132 = v118 + OBJC_IVAR___SRDRequestDispatcherInternal_serverFallbackDisablingUtils;
        v133 = OUTLINED_FUNCTION_293();
        OUTLINED_FUNCTION_259(v133, v134);
        v135 = v247;
        HIDWORD(v225) = OUTLINED_FUNCTION_280(0);
        v136 = OUTLINED_FUNCTION_293();
        OUTLINED_FUNCTION_259(v136, v137);
        OUTLINED_FUNCTION_280(1);
        v138 = v250;
        v222 = *(&v250->isa + *(v63 + 24));
        LODWORD(v118) = v222;
        v139 = OUTLINED_FUNCTION_332();
        sub_223771484(v139, v140, v248, 1, v238, v227, v141, v142, v222);
        v143 = sub_2237710FC(v239, &qword_27D097A50, &unk_2237B7800);
        MEMORY[0x28223BE20](v143);
        v144 = v226;
        *(&v223 - 10) = v249;
        *(&v223 - 9) = v144;
        *(&v223 - 8) = v246;
        *(&v223 - 7) = v135;
        OUTLINED_FUNCTION_227();
        *(v145 - 48) = v126;
        *(v145 - 40) = v146;
        OUTLINED_FUNCTION_210();
        *(v147 - 32) = v148;
        *(v147 - 24) = v242 & 1;
        *(v147 - 16) = v243;
        if (v118 == 1)
        {
          objc_allocWithZone(sub_2237B4B1C());
          OUTLINED_FUNCTION_144();
          v149 = sub_2237B4A8C();
        }

        else
        {
          objc_allocWithZone(sub_2237B47BC());
          OUTLINED_FUNCTION_144();
          v149 = sub_2237B472C();
        }

        v169 = v245;
        if (v149)
        {
          v170 = v149;
          v171 = v246;
          v172 = v230;
          sub_2237654A4(v149);

          v173 = *(v172 + OBJC_IVAR___SRDRequestDispatcherInternal_assetLogger);
          if ((*(v173 + 32) & 1) != 0 || (OUTLINED_FUNCTION_138(), v72))
          {
            v249 = *(v173 + 16);
            v174 = v232;
            OUTLINED_FUNCTION_295();
            (*(&v223 + 1))();
            v221 = v244;
            OUTLINED_FUNCTION_228();
            v177 = v176 & ~v175;
            OUTLINED_FUNCTION_85();
            v178 = OUTLINED_FUNCTION_309();
            v179 = OUTLINED_FUNCTION_89(v178);
            v180(v179 + v177, v174, v169);
            v181 = &v171[v132];
            v182 = v248;
            *v181 = v247;
            *(v181 + 1) = v182;
            OUTLINED_FUNCTION_127();
            v252[1] = 1107296256;
            OUTLINED_FUNCTION_6_6();
            v252[2] = v183;
            v252[3] = &block_descriptor_442;
            _Block_copy(v252);
            OUTLINED_FUNCTION_358();

            v184 = v138;
            v185 = v233;
            sub_2237B5CEC();
            v251 = MEMORY[0x277D84F90];
            OUTLINED_FUNCTION_5_5();
            sub_223766F90(v186, v187, MEMORY[0x277D851A0]);
            v188 = OUTLINED_FUNCTION_19_2();
            __swift_instantiateConcreteTypeFromMangledNameV2(v188, v189);
            OUTLINED_FUNCTION_4_8();
            OUTLINED_FUNCTION_209();
            sub_223766FD8(v190, v191, v192, v193);
            OUTLINED_FUNCTION_263();
            v194 = v237;
            OUTLINED_FUNCTION_197(v195, v196);
            OUTLINED_FUNCTION_230();
            MEMORY[0x223DEACD0]();
            v197 = v171;
            v171 = v246;
            _Block_release(v197);

            OUTLINED_FUNCTION_96();
            v198(v169, v194);
            OUTLINED_FUNCTION_96();
            v199 = v185;
            v138 = v184;
            v200(v199, v235);
          }

          else
          {

            v221 = v244;
          }

          sub_223771D44(v138);
          (*(v221 + 8))(v171, v169);
        }

        else
        {
          if (qword_28131AA10 != -1)
          {
            OUTLINED_FUNCTION_0_6();
            swift_once();
          }

          v201 = sub_2237B5C9C();
          OUTLINED_FUNCTION_13(v201, qword_28131B550);

          v202 = sub_2237B5C8C();
          v203 = sub_2237B5FFC();
          OUTLINED_FUNCTION_26_0(v203, v204, v205, v206, v207, v208, v209, v210);
          if (OUTLINED_FUNCTION_218())
          {
            OUTLINED_FUNCTION_20();
            v252[0] = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_302(4.8149e-34);
            v211 = OUTLINED_FUNCTION_285();
            *(&v223 + 4) = sub_223763694(v211, v212, v213);
            OUTLINED_FUNCTION_33();
            _os_log_impl(v214, v215, v216, v217, v218, 0xCu);
            OUTLINED_FUNCTION_22_0();
            OUTLINED_FUNCTION_3_0();
          }

          sub_223771D44(v138);
          v219 = OUTLINED_FUNCTION_350();
          v220(v219);
        }
      }

      else
      {
        if (qword_28131AA10 != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v152 = sub_2237B5C9C();
        OUTLINED_FUNCTION_13(v152, qword_28131B550);
        v153 = sub_2237B5C8C();
        v154 = sub_2237B5FFC();
        if (os_log_type_enabled(v153, v154))
        {
          v155 = OUTLINED_FUNCTION_20();
          v156 = OUTLINED_FUNCTION_19_0();
          v252[0] = v156;
          *v155 = 136315138;
          OUTLINED_FUNCTION_286();
          v157();
          sub_2237B562C();
          OUTLINED_FUNCTION_298();
          (v111)(v22, v56);
          v158 = OUTLINED_FUNCTION_19_2();
          v161 = sub_223763694(v158, v159, v160);
          (v58 + 104), v162, v163, v164, v165, v166, v167, v168;
          *(v155 + 4) = v161;
          _os_log_impl(&dword_22375F000, v153, v154, "Current session is not of type %s, cannot start speech request", v155, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v156);
          OUTLINED_FUNCTION_13_1();
          OUTLINED_FUNCTION_8();
        }

        sub_223771D44(v250);
      }
    }

    goto LABEL_36;
  }

  if (qword_28131AA10 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v96 = sub_2237B5C9C();
  OUTLINED_FUNCTION_13(v96, qword_28131B550);

  v250 = sub_2237B5C8C();
  sub_2237B600C();
  v97 = OUTLINED_FUNCTION_90();
  v97, v98, v99, v100, v101, v102, v103, v104;
  if (os_log_type_enabled(v250, v20))
  {
    v105 = OUTLINED_FUNCTION_20();
    v106 = OUTLINED_FUNCTION_19_0();
    v252[0] = v106;
    *v105 = 136315138;
    *(v105 + 4) = sub_223763694(v249, v34, v252);
    OUTLINED_FUNCTION_360(&dword_22375F000, v250, v26, "No active session for assistantId: %s cannot start speech request", v223);
    __swift_destroy_boxed_opaque_existential_0Tm(v106);
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_74();

LABEL_36:
    OUTLINED_FUNCTION_14_2();
    return;
  }

  OUTLINED_FUNCTION_14_2();
}

uint64_t sub_2237948B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, void *a10)
{
  v29 = a5;
  v30 = a7;
  v28 = a4;
  v31 = a10;
  v32 = a9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C70, &qword_2237B9250);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v27 - v17;
  v19 = *MEMORY[0x277D5CDC8];
  v20 = sub_2237B540C();
  (*(*(v20 - 8) + 104))(v18, v19, v20);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v20);
  sub_2237B4ADC();

  sub_2237B4AAC();
  v21 = sub_2237B412C();
  (*(*(v21 - 8) + 16))(v15, v28, v21);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v21);
  sub_2237B4B0C();

  sub_2237B4AFC();
  v22 = sub_2237B544C();
  (*(*(v22 - 8) + 16))(v12, v30, v22);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v22);
  sub_2237B4ABC();

  v23 = v31;
  sub_2237B4AEC();
  result = sub_2237B4A9C();
  if (v23)
  {
    v25 = objc_allocWithZone(sub_2237B553C());
    v26 = v23;
    sub_2237B552C();
    return sub_2237B4ACC();
  }

  return result;
}

uint64_t sub_223794B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, void *a10)
{
  v29 = a5;
  v30 = a7;
  v28 = a4;
  v31 = a10;
  v32 = a9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C70, &qword_2237B9250);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v27 - v17;
  v19 = *MEMORY[0x277D5CDC8];
  v20 = sub_2237B540C();
  (*(*(v20 - 8) + 104))(v18, v19, v20);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v20);
  sub_2237B477C();

  sub_2237B474C();
  v21 = sub_2237B412C();
  (*(*(v21 - 8) + 16))(v15, v28, v21);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v21);
  sub_2237B47AC();

  sub_2237B479C();
  v22 = sub_2237B544C();
  (*(*(v22 - 8) + 16))(v12, v30, v22);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v22);
  sub_2237B475C();

  v23 = v31;
  sub_2237B478C();
  result = sub_2237B473C();
  if (v23)
  {
    v25 = objc_allocWithZone(sub_2237B553C());
    v26 = v23;
    sub_2237B552C();
    return sub_2237B476C();
  }

  return result;
}

void sub_223794E80()
{
  OUTLINED_FUNCTION_16_3();
  v4 = v1;
  v6 = v5;
  OUTLINED_FUNCTION_188();
  v31 = sub_2237B5C7C();
  OUTLINED_FUNCTION_0_2();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_246();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_24_2();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_29_1();
  v37 = 0;
  v33[2] = &v37;
  v33[3] = v4;
  v34 = v3;
  v35 = v6;
  v13 = sub_223761B80();
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_364(v14, v15, v16, v17, v18, v19, 30);
  v32 = *(v4 + OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue);
  v20 = OUTLINED_FUNCTION_203();
  (v13)(v20, v2, v31);
  OUTLINED_FUNCTION_170();
  v13();
  OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_79();
  v21 = OUTLINED_FUNCTION_221();
  v22 = OUTLINED_FUNCTION_46_0(v21);
  v8(v22);
  v23 = OUTLINED_FUNCTION_52_0();
  v8(v23);
  OUTLINED_FUNCTION_76((v31 + v21));
  *(v24 + 8) = 0x80000002237BA310;
  v25 = (v21 + v2);
  *v25 = sub_2237A7CC8;
  v25[1] = v33;
  OUTLINED_FUNCTION_5_3();
  v26 = swift_allocObject();
  *(v26 + 16) = sub_223761F8C;
  *(v26 + 24) = v21;
  v36[4] = sub_223761F78;
  v36[5] = v26;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v36[2] = v27;
  v36[3] = &block_descriptor_80;
  _Block_copy(v36);
  OUTLINED_FUNCTION_195();

  dispatch_sync(v32, v0);
  _Block_release(v0);
  v28 = OUTLINED_FUNCTION_162();
  v31(v28);
  v29 = OUTLINED_FUNCTION_231();
  v30 = (v31)(v29);
  OUTLINED_FUNCTION_22_1(v30, "");
  OUTLINED_FUNCTION_121();

  if (v0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

uint64_t sub_22379515C(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_2237951F8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2237951F8()
{
  sub_2237B563C();
  OUTLINED_FUNCTION_0_2();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_264();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_29_1();
  v5 = OUTLINED_FUNCTION_151();
  if (sub_223762CDC(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_81();
    v8(v7);
    OUTLINED_FUNCTION_304();
    v9(v0);
    OUTLINED_FUNCTION_16_5();
    v10 = sub_223766744();
    v11 = *(v2 + 8);
    v12 = OUTLINED_FUNCTION_136();
    v11(v12);
    v13 = OUTLINED_FUNCTION_16();
    v11(v13);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

void sub_223795364()
{
  OUTLINED_FUNCTION_16_3();
  v27 = v3;
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_158(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_24_2();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_27_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_82("prewarm(withAssistantId:languageCode:prewarmOptions:sharedUserId:)");
  v29 = v1;
  v30 = v27;
  v9 = sub_223761B80();
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_223(v10, v11, v12, v13, v14, v15, 66);
  v16 = OUTLINED_FUNCTION_48_0(OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue);
  v2(v16);
  v17 = OUTLINED_FUNCTION_151();
  v2(v17);
  OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_105();
  v18 = OUTLINED_FUNCTION_260();
  v19 = v9[4];
  v20 = OUTLINED_FUNCTION_49_0(v18);
  v19(v20);
  v21 = OUTLINED_FUNCTION_52_0();
  v19(v21);
  OUTLINED_FUNCTION_41_0((v9 + v18));
  v22 = (&type metadata for Logger + v18);
  *v22 = sub_2237A7CD4;
  v22[1] = &v28;
  OUTLINED_FUNCTION_5_3();
  v23 = swift_allocObject();
  *(v23 + 16) = sub_223761F8C;
  *(v23 + 24) = v18;
  v31[4] = sub_223761F78;
  v31[5] = v23;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v31[2] = v24;
  v31[3] = &block_descriptor_91;
  _Block_copy(v31);
  OUTLINED_FUNCTION_252();

  OUTLINED_FUNCTION_362();
  _Block_release(v9);
  v25 = OUTLINED_FUNCTION_156();
  (type metadata for Logger.Kind)(v25);
  v26 = (type metadata for Logger.Kind)(v2, v0);
  OUTLINED_FUNCTION_22_1(v26, "");
  OUTLINED_FUNCTION_121();

  if (v0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

void sub_2237956CC(uint64_t a1, SRDRequestDispatcherInternal *a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 2) != 0)
  {
    MEMORY[0x28223BE20](a1);
    OUTLINED_FUNCTION_275();
    *(v8 - 32) = v6;
    *(v8 - 24) = v7;
    *(v8 - 16) = v9;
    *(v8 - 8) = v10;
    v11 = objc_allocWithZone(sub_2237B54FC());
    OUTLINED_FUNCTION_34_0();
    v12 = sub_2237B54AC();
    if (v12)
    {
      v13 = v12;
      sub_2237654A4(v12);
    }

    else
    {
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v14 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v14, qword_28131B550);

      v15 = sub_2237B5C8C();
      sub_2237B5FFC();
      a2, v16, v17, v18, v19, v20, v21, v22;
      if (OUTLINED_FUNCTION_318())
      {
        v23 = OUTLINED_FUNCTION_20();
        v32 = OUTLINED_FUNCTION_19_0();
        *v23 = 136315138;
        v24 = OUTLINED_FUNCTION_136();
        *(v23 + 4) = sub_223763694(v24, v25, v26);
        OUTLINED_FUNCTION_157();
        _os_log_impl(v27, v28, v29, v30, v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v32);
        OUTLINED_FUNCTION_13_1();
        OUTLINED_FUNCTION_10();
      }
    }
  }
}

uint64_t sub_223795840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097CD0, &qword_2237B9288);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - v9;
  v11 = *MEMORY[0x277D5CDC8];
  v12 = sub_2237B540C();
  (*(*(v12 - 8) + 104))(v10, v11, v12);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v12);
  sub_2237B54EC();

  sub_2237B54BC();

  sub_2237B54CC();
  v13 = *MEMORY[0x277D5D258];
  v14 = sub_2237B563C();
  (*(*(v14 - 8) + 104))(v7, v13, v14);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v14);
  return sub_2237B54DC();
}

void sub_223795A24()
{
  OUTLINED_FUNCTION_16_3();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_174();
  sub_2237B5C7C();
  OUTLINED_FUNCTION_0_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_112();
  OUTLINED_FUNCTION_344(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_274();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_336("endSession(withAssistantId:withDelay:)");
  v34[4] = v5;
  v35 = v3;
  v13 = sub_223761B80();
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_320(v14, v15, v16, v17, v18, v19, 38);
  v20 = OUTLINED_FUNCTION_165(OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue);
  (v13)(v20);
  OUTLINED_FUNCTION_139();
  v13();
  OUTLINED_FUNCTION_47_0();
  v21 = OUTLINED_FUNCTION_221();
  v22 = OUTLINED_FUNCTION_46_0(v21);
  v1(v22);
  v23 = OUTLINED_FUNCTION_67();
  v1(v23);
  OUTLINED_FUNCTION_76((&type metadata for Logger + v21));
  *(v24 + 8) = v31;
  v25 = (v21 + v0);
  *v25 = sub_2237A7D1C;
  v25[1] = v34;
  OUTLINED_FUNCTION_5_3();
  v26 = swift_allocObject();
  *(v26 + 16) = sub_223761F8C;
  *(v26 + 24) = v21;
  v36[4] = sub_223761F78;
  v36[5] = v26;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v36[2] = v27;
  v36[3] = &block_descriptor_113;
  _Block_copy(v36);
  OUTLINED_FUNCTION_125();

  dispatch_sync(v33, v32);
  _Block_release(v32);
  v28 = OUTLINED_FUNCTION_162();
  (type metadata for Logger.Kind)(v28);
  v29 = OUTLINED_FUNCTION_231();
  v30 = (type metadata for Logger.Kind)(v29);
  OUTLINED_FUNCTION_22_1(v30, "");
  OUTLINED_FUNCTION_90();

  if (v7)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

uint64_t sub_223795E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097CD0, &qword_2237B9288);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = *MEMORY[0x277D5CDC8];
  v10 = sub_2237B540C();
  (*(*(v10 - 8) + 104))(v8, v9, v10);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v10);
  sub_2237B55DC();

  sub_2237B55BC();
  v11 = *MEMORY[0x277D5D258];
  v12 = sub_2237B563C();
  (*(*(v12 - 8) + 104))(v5, v11, v12);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v12);
  return sub_2237B55CC();
}

void sub_223796054()
{
  OUTLINED_FUNCTION_16_3();
  v4 = v3;
  v32 = v5;
  v31 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C70, &qword_2237B9250);
  OUTLINED_FUNCTION_1(v7);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_122();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  OUTLINED_FUNCTION_1(v9);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_348();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  OUTLINED_FUNCTION_1(v11);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_299();
  v13 = *MEMORY[0x277D5CDC8];
  v14 = sub_2237B540C();
  OUTLINED_FUNCTION_4();
  (*(v15 + 104))(v0, v13, v14);
  OUTLINED_FUNCTION_12_4();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v14);
  sub_2237B437C();

  sub_2237B434C();
  v19 = sub_2237B412C();
  OUTLINED_FUNCTION_4();
  (*(v20 + 16))(v1, v31, v19);
  OUTLINED_FUNCTION_12_4();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v19);
  sub_2237B439C();

  sub_2237B438C();
  v24 = sub_2237B544C();
  OUTLINED_FUNCTION_4();
  (*(v25 + 16))(v2, v32, v24);
  OUTLINED_FUNCTION_12_4();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v24);
  sub_2237B435C();
  if (v4)
  {
    v29 = objc_allocWithZone(sub_2237B553C());
    v30 = v4;
    sub_2237B552C();
    sub_2237B436C();
  }

  OUTLINED_FUNCTION_14_2();
}

void sub_2237962B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v27;
  a20 = v28;
  OUTLINED_FUNCTION_208(v29, v30, v31, v32, v33, v34, v35, v36);
  v72 = v37;
  OUTLINED_FUNCTION_214(v38, &v83);
  OUTLINED_FUNCTION_167(a23);
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_316(ObjectType, v84);
  OUTLINED_FUNCTION_0_2();
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_28_1(v43);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_32_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_236(&a14);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_27_1();
  v47 = sub_223761B80();
  OUTLINED_FUNCTION_64();
  sub_2237B575C();
  v75 = v25;
  v76 = v23;
  OUTLINED_FUNCTION_286();
  v77 = v49;
  v78 = v48;
  OUTLINED_FUNCTION_338();
  v79 = v50;
  v80 = v72;
  OUTLINED_FUNCTION_190(&a12);
  OUTLINED_FUNCTION_110(&a15);
  OUTLINED_FUNCTION_334();
  v81 = v52;
  v82 = v51;
  v83 = v71;
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_223(v53, v54, v55, v56, v57, v58, 129);
  OUTLINED_FUNCTION_134(*(v25 + OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue));
  v59 = OUTLINED_FUNCTION_16_6();
  v47(v59);
  v60 = OUTLINED_FUNCTION_61(&a13);
  v47(v60);
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_9_7();
  v61 = OUTLINED_FUNCTION_221();
  v62 = OUTLINED_FUNCTION_30_1(v61);
  v24(v62);
  v63 = OUTLINED_FUNCTION_80();
  v24(v63);
  OUTLINED_FUNCTION_76((v25 + v41));
  OUTLINED_FUNCTION_78(v64);
  *v65 = sub_2237A7D2C;
  v65[1] = &v74;
  OUTLINED_FUNCTION_5_3();
  v66 = swift_allocObject();
  *(v66 + 16) = sub_223761F8C;
  *(v66 + 24) = v25;
  v84[4] = sub_223761F78;
  v84[5] = v66;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v84[2] = v67;
  v84[3] = &block_descriptor_135;
  _Block_copy(v84);
  OUTLINED_FUNCTION_125();

  dispatch_sync(v73, v26);
  _Block_release(v26);
  OUTLINED_FUNCTION_133();
  v68 = OUTLINED_FUNCTION_146(&a14);
  (type metadata for Logger.Kind)(v68);
  v69 = OUTLINED_FUNCTION_146(&a16);
  v70 = (type metadata for Logger.Kind)(v69);
  OUTLINED_FUNCTION_22_1(v70, "");
  OUTLINED_FUNCTION_90();

  if (0x237BA440)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

uint64_t sub_223796620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, SRDRequestDispatcherInternal *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  HIDWORD(v23) = a6;
  v25 = a4;
  v26 = a5;
  v24 = a3;
  v27 = a1;
  v22 = a10;
  v15 = sub_2237B544C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22376E3D4(a8, v18);
  if (a9)
  {
    v19 = sub_2237B5FDC();
  }

  else
  {
    v19 = 0;
  }

  sub_2237968C8(a2, v24, v25, v26, BYTE4(v23) & 1, v18, v19, v22, a11, a12, a13, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);

  return (*(v16 + 8))(v18, v15);
}

void sub_2237968C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_16_3();
  v125 = v26;
  v126 = v27;
  HIDWORD(v123) = v28;
  v30 = v29;
  v134 = v31;
  v33 = v32;
  v35 = v34;
  v124 = v36;
  sub_2237B412C();
  OUTLINED_FUNCTION_0_2();
  v127 = v38;
  v129 = v37;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_3_4();
  v131 = v39;
  OUTLINED_FUNCTION_12();
  v40 = sub_2237B563C();
  OUTLINED_FUNCTION_0_2();
  v42 = v41;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_264();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_29_1();
  v45 = *(v23 + OBJC_IVAR___SRDRequestDispatcherInternal_sessionsManager);
  OUTLINED_FUNCTION_215();
  sub_22376F45C();
  if (v46)
  {
    v47 = v46;
    v121 = v30;
    v48 = OUTLINED_FUNCTION_81();
    v49(v48);
    HIDWORD(v120) = *MEMORY[0x277D5D258];
    v119 = *(v42 + 104);
    v119(v24);
    OUTLINED_FUNCTION_16_5();
    v50 = sub_223766744();
    v51 = *(v42 + 8);
    v51(v24, v40);
    v52 = OUTLINED_FUNCTION_352();
    (v51)(v52);
    if (v50)
    {
      sub_22376F9F8(v47, v35, v33, v53, v54, v55, v56, v57, v119, v120, v121, a21, a22, v123, a23, v124, v125, v126, v127, v129);
      v58 = (*(v128 + 16))(v131, v47 + OBJC_IVAR____TtC14SiriMessageBus7Session_sessionId, v130);
      MEMORY[0x28223BE20](v58);
      v59 = objc_allocWithZone(sub_2237B4BDC());
      OUTLINED_FUNCTION_34_0();
      v60 = sub_2237B4B2C();
      if (v60)
      {
        v61 = v60;
        sub_2237654A4(v60);
      }

      else
      {
        if (qword_28131AA10 != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v98 = sub_2237B5C9C();
        OUTLINED_FUNCTION_13(v98, qword_28131B550);

        v99 = sub_2237B5C8C();
        sub_2237B5FFC();
        v122, v100, v101, v102, v103, v104, v105, v106;
        if (OUTLINED_FUNCTION_28())
        {
          v107 = OUTLINED_FUNCTION_20();
          v108 = OUTLINED_FUNCTION_19_0();
          OUTLINED_FUNCTION_325(v108);
          *v107 = 136315138;
          v109 = OUTLINED_FUNCTION_233();
          *(v107 + 4) = sub_223763694(v109, v110, v111);
          OUTLINED_FUNCTION_163();
          _os_log_impl(v112, v113, v114, v115, v116, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v47);
          OUTLINED_FUNCTION_10();
          OUTLINED_FUNCTION_8();
        }
      }

      v117 = OUTLINED_FUNCTION_171();
      v118(v117);
    }

    else
    {
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v81 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v81, qword_28131B550);
      v82 = sub_2237B5C8C();
      v83 = sub_2237B5FFC();
      if (os_log_type_enabled(v82, v83))
      {
        OUTLINED_FUNCTION_20();
        v133 = OUTLINED_FUNCTION_44();
        v135 = v133;
        *v33 = 136315138;
        (v119)(v25, HIDWORD(v120), v40);
        sub_2237B562C();
        OUTLINED_FUNCTION_298();
        v84 = OUTLINED_FUNCTION_352();
        (v51)(v84);
        v85 = OUTLINED_FUNCTION_19_2();
        v88 = sub_223763694(v85, v86, v87);
        v47, v89, v90, v91, v92, v93, v94, v95;
        *(v33 + 4) = v88;
        OUTLINED_FUNCTION_308(&dword_22375F000, v82, v83, "Current session is not of type %s, cannot start test speech request", v119);
        __swift_destroy_boxed_opaque_existential_0Tm(v133);
        OUTLINED_FUNCTION_116();
        OUTLINED_FUNCTION_13_5();
      }
    }

    goto LABEL_23;
  }

  if (qword_28131AA10 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v62 = sub_2237B5C9C();
  OUTLINED_FUNCTION_13(v62, qword_28131B550);

  v132 = sub_2237B5C8C();
  v63 = sub_2237B5FFC();
  OUTLINED_FUNCTION_321(v63, v64, v65, v66, v67, v68, v69, v70);
  v33, v71, v72, v73, v74, v75, v76, v77;
  if (os_log_type_enabled(v132, v35))
  {
    OUTLINED_FUNCTION_25_0();
    v78 = OUTLINED_FUNCTION_99();
    OUTLINED_FUNCTION_301(v78);
    OUTLINED_FUNCTION_212(4.8151e-34);
    v80 = sub_223763694(v35, v33, v79);
    OUTLINED_FUNCTION_45_0(v80);
    *(v45 + 14) = sub_223763694(v134, v30, &v135);
    OUTLINED_FUNCTION_257(&dword_22375F000, v132, v35, "No active session for assistantId: %s cannot start test speech request for request id: %s");
    OUTLINED_FUNCTION_98();
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_74();

LABEL_23:
    OUTLINED_FUNCTION_14_2();
    return;
  }

  OUTLINED_FUNCTION_14_2();
}

uint64_t sub_223796EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v30 = a7;
  v29[0] = a4;
  v29[1] = a5;
  v34 = a12;
  v35 = a11;
  v33 = a10;
  v31 = a8;
  v32 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C70, &qword_2237B9250);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v29 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v29 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v29 - v20;
  v22 = *MEMORY[0x277D5CDC8];
  v23 = sub_2237B540C();
  (*(*(v23 - 8) + 104))(v21, v22, v23);
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v23);
  sub_2237B4B8C();

  sub_2237B4B4C();
  v24 = sub_2237B412C();
  (*(*(v24 - 8) + 16))(v18, v29[0], v24);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v24);
  sub_2237B4BCC();

  sub_2237B4BBC();
  sub_2237B4BAC();
  v25 = sub_2237B544C();
  (*(*(v25 - 8) + 16))(v15, v31, v25);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v25);
  sub_2237B4B5C();

  sub_2237B4B9C();

  sub_2237B4B3C();

  result = sub_2237B4B6C();
  if (a13)
  {
    v27 = objc_allocWithZone(sub_2237B553C());
    v28 = a13;
    sub_2237B552C();
    return sub_2237B4B7C();
  }

  return result;
}

void sub_2237971D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v24;
  a20 = v25;
  v26 = v20;
  v28 = v27;
  v66 = v29;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  OUTLINED_FUNCTION_188();
  v65 = sub_2237B5C7C();
  OUTLINED_FUNCTION_0_2();
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_28_1(v41);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_28_1(v43);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_27_1();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_35();
  v69[2] = v26;
  v70 = v23;
  v71 = v35;
  v72 = v33;
  OUTLINED_FUNCTION_207();
  v73 = v31;
  v74 = v46;
  v75 = v66;
  v76 = v28;
  v47 = sub_223761B80();
  v48 = v22;
  v68 = v22;
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_14_6();
  sub_2237B573C(v49, v50, v51, v52, &type metadata for Logger, v47);
  v67 = *(v26 + OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue);
  v53 = *(v37 + 16);
  v54 = OUTLINED_FUNCTION_155(&a16);
  v53(v54, v48, v65);
  v55 = OUTLINED_FUNCTION_151();
  (v53)(v55);
  OUTLINED_FUNCTION_21_3();
  v56 = OUTLINED_FUNCTION_260();
  v57 = OUTLINED_FUNCTION_54_0(v56);
  v21(v57);
  (v21)(&v47[v56], v64, v65);
  OUTLINED_FUNCTION_76((v56 + v39));
  OUTLINED_FUNCTION_84(v58);
  v59 = (&type metadata for Logger + v56);
  *v59 = sub_2237A7D70;
  v59[1] = v69;
  OUTLINED_FUNCTION_5_3();
  v60 = swift_allocObject();
  *(v60 + 16) = sub_223761F8C;
  *(v60 + 24) = v56;
  v77[4] = sub_223761F78;
  v77[5] = v60;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v77[2] = v61;
  v77[3] = &block_descriptor_146;
  _Block_copy(v77);
  OUTLINED_FUNCTION_175();

  dispatch_sync(v67, v47);
  _Block_release(v47);
  OUTLINED_FUNCTION_133();
  v62 = OUTLINED_FUNCTION_324();
  (type metadata for Logger.Kind)(v62);
  v63 = (type metadata for Logger.Kind)(v68, v65);
  OUTLINED_FUNCTION_22_1(v63, "");
  OUTLINED_FUNCTION_121();

  if (v37)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

void sub_223797518()
{
  OUTLINED_FUNCTION_16_3();
  v5 = v4;
  v90 = v6;
  v91 = v7;
  v9 = v8;
  v11 = v10;
  OUTLINED_FUNCTION_262();
  v12 = sub_2237B412C();
  OUTLINED_FUNCTION_0_2();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_17_4();
  v16 = *(v0 + OBJC_IVAR___SRDRequestDispatcherInternal_sessionsManager);
  OUTLINED_FUNCTION_120();
  sub_22376F45C();
  if (v17)
  {
    v87 = v11;
    v88 = v14;
    OUTLINED_FUNCTION_241();
    v89 = v12;
    v18(v1);
    sub_223766240(0, &qword_27D097CA8, 0x277CEF470);
    v19 = objc_allocWithZone(MEMORY[0x277CEF440]);
    v20 = v5;
    v21 = [v19 init];
    v22 = v20;
    v23 = sub_2237979CC(v5, v5, v21, 1, 0.0);
    if (v23)
    {
      v24 = v23;
      MEMORY[0x28223BE20](v23);
      OUTLINED_FUNCTION_276();
      *(v25 - 64) = v3;
      *(v25 - 56) = v2;
      *(v25 - 48) = v1;
      *(v25 - 40) = v87;
      v26 = v9;
      *(v25 - 32) = v9;
      *(v25 - 24) = v90;
      *(v25 - 16) = v91;
      *(v25 - 8) = v27;
      v28 = objc_allocWithZone(sub_2237B466C());
      OUTLINED_FUNCTION_34_0();
      v29 = sub_2237B45EC();
      if (!v29)
      {
        if (qword_28131AA10 != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v71 = sub_2237B5C9C();
        OUTLINED_FUNCTION_13(v71, qword_28131B550);

        v72 = sub_2237B5C8C();
        sub_2237B5FFC();
        v26, v73, v74, v75, v76, v77, v78, v79;
        if (OUTLINED_FUNCTION_218())
        {
          OUTLINED_FUNCTION_20();
          v80 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_300(v80);
          OUTLINED_FUNCTION_303(4.8149e-34);
          sub_223763694(v87, v26, v81);
          OUTLINED_FUNCTION_33();
          _os_log_impl(v82, v83, v84, v85, v86, 0xCu);
          OUTLINED_FUNCTION_22_0();
          OUTLINED_FUNCTION_3_0();
        }

        v68 = v89;
        v31 = *(v88 + 8);
        v32 = v1;
        goto LABEL_23;
      }

      v30 = v29;
      sub_2237654A4(v29);

      v31 = *(v88 + 8);
      v32 = v1;
    }

    else
    {
      v59 = v1;
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v60 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v60, qword_28131B550);
      v61 = v22;
      v62 = sub_2237B5C8C();
      v63 = sub_2237B5FFC();

      if (OUTLINED_FUNCTION_218())
      {
        v64 = OUTLINED_FUNCTION_20();
        v65 = swift_slowAlloc();
        *v64 = 138412290;
        *(v64 + 4) = v61;
        *v65 = v5;
        v66 = v61;
        OUTLINED_FUNCTION_317(&dword_22375F000, v67, v63, "Failed to create SpeechPackage for recognition: %@");
        sub_2237710FC(v65, &qword_27D097BE0, &qword_2237B88D0);
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_71();
      }

      v31 = *(v88 + 8);
      v32 = v59;
    }

    v68 = v89;
LABEL_23:
    v31(v32, v68);
    goto LABEL_24;
  }

  if (qword_28131AA10 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v33 = sub_2237B5C9C();
  OUTLINED_FUNCTION_13(v33, qword_28131B550);

  v92 = sub_2237B5C8C();
  v34 = sub_2237B5FFC();
  OUTLINED_FUNCTION_282(v34, v35, v36, v37, v38, v39, v40, v41);
  v2, v42, v43, v44, v45, v46, v47, v48;
  if (OUTLINED_FUNCTION_368())
  {
    OUTLINED_FUNCTION_25_0();
    v49 = OUTLINED_FUNCTION_99();
    OUTLINED_FUNCTION_301(v49);
    OUTLINED_FUNCTION_212(4.8151e-34);
    v50 = OUTLINED_FUNCTION_120();
    v53 = sub_223763694(v50, v51, v52);
    OUTLINED_FUNCTION_45_0(v53);
    v54 = OUTLINED_FUNCTION_342();
    *(v16 + 14) = sub_223763694(v54, v55, v56);
    OUTLINED_FUNCTION_152(&dword_22375F000, v57, v58, "No active session for assistantId: %s cannot post test result candidate for request id: %s");
    OUTLINED_FUNCTION_98();
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_74();

LABEL_24:
    OUTLINED_FUNCTION_14_2();
    return;
  }

  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_14_2();
}

id sub_2237979CC(void *a1, void *a2, void *a3, char a4, double a5)
{
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRecognition:a1 rawRecognition:a2 audioAnalytics:a3 isFinal:a4 & 1 utteranceStart:a5];

  return v8;
}

uint64_t sub_223797A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v26 = a5;
  v27 = a7;
  v24 = a2;
  v25 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097900, &qword_2237B8860);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v24 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v24 - v16;
  v18 = *MEMORY[0x277D5CDC8];
  v19 = sub_2237B540C();
  (*(*(v19 - 8) + 104))(v17, v18, v19);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v19);
  sub_2237B462C();

  sub_2237B460C();
  v20 = sub_2237B412C();
  (*(*(v20 - 8) + 16))(v14, v25, v20);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v20);
  sub_2237B465C();

  sub_2237B464C();

  sub_2237B45FC();
  v21 = a9;
  sub_2237B461C();
  sub_2237B56CC();
  v22 = sub_2237B56DC();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v22);
  return sub_2237B463C();
}

void sub_223797CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v24;
  a20 = v25;
  v70 = v26;
  v67[3] = v27;
  v67[1] = v28;
  v30 = v29;
  v32 = v31;
  OUTLINED_FUNCTION_188();
  v33 = sub_2237B5C7C();
  v34 = OUTLINED_FUNCTION_8_6(v33, &a18);
  v72 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_62(v38);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_24_2();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_27_1();
  MEMORY[0x28223BE20](v41);
  v43 = v67 - v42;
  v74 = v20;
  v75 = v23;
  v67[2] = 0x80000002237BA520;
  v76 = v32;
  v77 = v30;
  OUTLINED_FUNCTION_189(&a16);
  v78 = v70;
  v44 = sub_223761B80();
  v45 = v43;
  v71 = v43;
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  v69 = v21;
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_223(v46, v47, v48, v49, v50, v51, 55);
  v70 = *(v20 + OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue);
  v52 = v72;
  v53 = *(v72 + 16);
  v54 = v68;
  v53(v22, v45, v68);
  v55 = v67[4];
  v56 = OUTLINED_FUNCTION_151();
  (v53)(v56);
  v57 = (v37 + *(v52 + 80) + ((*(v52 + 80) + 16) & ~*(v52 + 80))) & ~*(v52 + 80);
  OUTLINED_FUNCTION_105();
  v58 = OUTLINED_FUNCTION_260();
  v59 = OUTLINED_FUNCTION_54_0(v58);
  (v21)(v59);
  (v21)(v58 + v57, v55, v54);
  OUTLINED_FUNCTION_76(&v44[v58]);
  OUTLINED_FUNCTION_84(v60);
  v61 = (v58 + v52);
  *v61 = sub_2237A7D98;
  v61[1] = &v73;
  OUTLINED_FUNCTION_5_3();
  v62 = swift_allocObject();
  *(v62 + 16) = sub_223761F8C;
  *(v62 + 24) = v58;
  v79[4] = sub_223761F78;
  v79[5] = v62;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v79[2] = v63;
  v79[3] = &block_descriptor_157;
  _Block_copy(v79);
  OUTLINED_FUNCTION_175();

  dispatch_sync(v70, v44);
  _Block_release(v44);
  v64 = v72 + 8;
  v65 = *(v72 + 8);
  v65(v69, v54);
  v66 = v65(v71, v54);
  OUTLINED_FUNCTION_22_1(v66, "");
  OUTLINED_FUNCTION_121();

  if (v64)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

void sub_223798040()
{
  OUTLINED_FUNCTION_16_3();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_188();
  v11 = sub_2237B412C();
  OUTLINED_FUNCTION_0_2();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_226();
  v15 = *(v0 + OBJC_IVAR___SRDRequestDispatcherInternal_sessionsManager);
  OUTLINED_FUNCTION_100();
  sub_22376F45C();
  if (v16)
  {
    OUTLINED_FUNCTION_241();
    v18 = v17(v1);
    MEMORY[0x28223BE20](v18);
    OUTLINED_FUNCTION_276();
    *(v19 - 64) = v2;
    *(v19 - 56) = v10;
    *(v19 - 48) = v1;
    *(v19 - 40) = v8;
    *(v19 - 32) = v6;
    *(v19 - 24) = v4;
    OUTLINED_FUNCTION_225(v19);
    v20 = objc_allocWithZone(sub_2237B442C());
    OUTLINED_FUNCTION_34_0();
    v21 = sub_2237B441C();
    if (v21)
    {
      v22 = v21;
      sub_2237654A4(v21);

      (*(v13 + 8))(v1, v11);
    }

    else
    {
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v44 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v44, qword_28131B550);

      v45 = sub_2237B5C8C();
      sub_2237B5FFC();
      v6, v46, v47, v48, v49, v50, v51, v52;
      if (OUTLINED_FUNCTION_28())
      {
        OUTLINED_FUNCTION_20();
        v60 = OUTLINED_FUNCTION_44();
        *v1 = 136315138;
        *(v1 + 4) = sub_223763694(v8, v6, &v60);
        OUTLINED_FUNCTION_181();
        OUTLINED_FUNCTION_308(v53, v54, v55, v56);
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_8();
      }

      (*(v13 + 8))(v1, v11);
    }

    goto LABEL_13;
  }

  if (qword_28131AA10 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v23 = sub_2237B5C9C();
  OUTLINED_FUNCTION_13(v23, qword_28131B550);

  v59 = sub_2237B5C8C();
  v24 = sub_2237B5FFC();
  OUTLINED_FUNCTION_361(v24, v25, v26, v27, v28, v29, v30, v31);
  v10, v32, v33, v34, v35, v36, v37, v38;
  if (os_log_type_enabled(v59, v15))
  {
    OUTLINED_FUNCTION_25_0();
    v39 = OUTLINED_FUNCTION_137();
    OUTLINED_FUNCTION_300(v39);
    OUTLINED_FUNCTION_303(4.8151e-34);
    v40 = OUTLINED_FUNCTION_100();
    v43 = sub_223763694(v40, v41, v42);
    OUTLINED_FUNCTION_56_0(v43);
    *(v4 + 14) = sub_223763694(v8, v6, &v60);
    OUTLINED_FUNCTION_281(&dword_22375F000, v59, v15, "No active session for assistantId: %s cannot post test result selected for request id: %s");
    OUTLINED_FUNCTION_149();
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_3_0();

LABEL_13:
    OUTLINED_FUNCTION_14_2();
    return;
  }

  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_14_2();
}

uint64_t sub_2237983B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19[0] = a5;
  v19[1] = a7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v19 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v19 - v13;
  v15 = *MEMORY[0x277D5CDC8];
  v16 = sub_2237B540C();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v16);
  sub_2237B447C();

  sub_2237B443C();
  v17 = sub_2237B412C();
  (*(*(v17 - 8) + 16))(v11, a4, v17);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v17);
  sub_2237B449C();

  sub_2237B448C();

  sub_2237B446C();
  return sub_2237B444C();
}

void sub_2237985B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v24;
  a20 = v25;
  v57 = v26;
  OUTLINED_FUNCTION_214(v27, &a14);
  ObjectType = swift_getObjectType();
  v29 = OUTLINED_FUNCTION_316(ObjectType, &a13);
  OUTLINED_FUNCTION_0_2();
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_158(v33);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_32_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_27_1();
  v37 = sub_223761B80();
  OUTLINED_FUNCTION_64();
  sub_2237B575C();
  v61 = v21;
  v62 = v20;
  OUTLINED_FUNCTION_207();
  v63 = v39;
  v64 = v38;
  OUTLINED_FUNCTION_189(&a17);
  v65 = v57;
  v66 = v55;
  v59 = v23;
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_223(v40, v41, v42, v43, v44, v45, 73);
  v58 = *(v21 + OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue);
  v46 = OUTLINED_FUNCTION_16_6();
  v37(v46);
  (v37)(v56, v22, v29);
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_9_7();
  v47 = OUTLINED_FUNCTION_221();
  v48 = OUTLINED_FUNCTION_30_1(v47);
  v23(v48);
  v49 = OUTLINED_FUNCTION_80();
  v23(v49);
  OUTLINED_FUNCTION_76((v21 + v31));
  OUTLINED_FUNCTION_78(v50);
  *v51 = sub_2237A7DCC;
  v51[1] = &v60;
  OUTLINED_FUNCTION_5_3();
  v52 = swift_allocObject();
  *(v52 + 16) = sub_223761F8C;
  *(v52 + 24) = v21;
  v67[4] = sub_223761F78;
  v67[5] = v52;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v67[2] = v53;
  v67[3] = &block_descriptor_168;
  _Block_copy(v67);
  OUTLINED_FUNCTION_125();

  dispatch_sync(v58, v56);
  _Block_release(v56);
  OUTLINED_FUNCTION_133();
  (type metadata for Logger.Kind)(v22, 0x80000002237BA560);
  v54 = (type metadata for Logger.Kind)(v59, 0x80000002237BA560);
  OUTLINED_FUNCTION_22_1(v54, "");
  OUTLINED_FUNCTION_90();

  if (0x237BA560)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

uint64_t sub_2237988EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SRDRequestDispatcherInternal *a7)
{
  v12 = sub_2237B544C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = var50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22376E3D4(a7, v15);
  sub_223798AE0(a2, a3, a4, a5, v15, v16, v17, v18, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], var50[11]);
  return (*(v13 + 8))(v15, v12);
}

void sub_223798A1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  sub_2237B5E2C();
  v9 = v8;
  sub_2237B5E2C();
  v11 = v10;
  sub_2237B5E2C();
  v13 = v12;
  v14 = a1;
  v15 = OUTLINED_FUNCTION_240();
  a6(v15);

  v9, v16, v17, v18, v19, v20, v21, v22;
  v11, v23, v24, v25, v26, v27, v28, v29;

  v13, v30, v31, v32, v33, v34, v35, v36;
}

void sub_223798AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v24;
  a20 = v25;
  v213 = v26;
  v220 = v27;
  v221 = v28;
  v30 = v29;
  v31 = OUTLINED_FUNCTION_191();
  v32 = type metadata accessor for RequestDispatcher.SessionContext(v31);
  OUTLINED_FUNCTION_243(v32);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_226();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097C80, &unk_2237B9260);
  v35 = OUTLINED_FUNCTION_1(v34);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_69();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_62(v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  OUTLINED_FUNCTION_1(v38);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_168();
  v40 = sub_2237B5CCC();
  v41 = OUTLINED_FUNCTION_8_6(v40, &a13);
  v208 = v42;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_25_2(v43);
  v44 = sub_2237B5D0C();
  v45 = OUTLINED_FUNCTION_8_6(v44, &a11);
  v205 = v46;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_25_2(v47);
  v219 = sub_2237B412C();
  OUTLINED_FUNCTION_0_2();
  v217 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_62(&v201[-((v50 + 15) & 0xFFFFFFFFFFFFFFF0) - 4]);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_20_0();
  v218 = v53;
  OUTLINED_FUNCTION_12();
  v54 = sub_2237B563C();
  OUTLINED_FUNCTION_0_2();
  v56 = v55;
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_3();
  v60 = v58 - v59;
  MEMORY[0x28223BE20](v61);
  v63 = &v201[-v62 - 4];
  v215 = v20;
  v64 = *(v20 + OBJC_IVAR___SRDRequestDispatcherInternal_sessionsManager);
  v214 = v21;
  v216 = v30;
  sub_22376F45C();
  if (v65)
  {
    v66 = v65;
    *&v201[4] = v23;
    v203 = v22;
    OUTLINED_FUNCTION_141();
    v67(v63);
    v68 = v66;
    v69 = *MEMORY[0x277D5D258];
    v202 = *(v56 + 104);
    v202(v60, v69, v54);
    LOBYTE(v66) = sub_223766744();
    v70 = *(v56 + 8);
    v70(v60, v54);
    v71 = OUTLINED_FUNCTION_186();
    (v70)(v71);
    if (v66)
    {
      v72 = v218;
      v73 = *(v217 + 16);
      v74 = v73(v218, v68 + OBJC_IVAR____TtC14SiriMessageBus7Session_sessionId, v219);
      MEMORY[0x28223BE20](v74);
      v75 = v216;
      *(&v200 - 6) = v214;
      *(&v200 - 5) = v75;
      v77 = v220;
      v76 = v221;
      *(&v200 - 4) = v72;
      *(&v200 - 3) = v77;
      OUTLINED_FUNCTION_210();
      *(v78 - 16) = v76;
      *(v78 - 8) = v79;
      v80 = objc_allocWithZone(sub_2237B515C());
      OUTLINED_FUNCTION_144();
      v81 = sub_2237B451C();
      if (v81)
      {
        v216 = v68;
        v82 = v215;
        v214 = v81;
        sub_2237654A4(v81);
        v83 = *(v82 + OBJC_IVAR___SRDRequestDispatcherInternal_assetLogger);
        if ((*(v83 + 32) & 1) != 0 || (OUTLINED_FUNCTION_138(), v84))
        {
          OUTLINED_FUNCTION_129(*(v83 + 16));
          v85 = OUTLINED_FUNCTION_185(&v228);
          v73(v85, v218, v219);
          OUTLINED_FUNCTION_329();
          v86 = OUTLINED_FUNCTION_221();
          OUTLINED_FUNCTION_354(v86);
          OUTLINED_FUNCTION_283();
          v87();
          v88 = v70 + v82;
          v89 = v221;
          *v88 = v220;
          *(v88 + 1) = v89;
          v224 = sub_2237A93F0;
          v225 = v82;
          v222[0] = MEMORY[0x277D85DD0];
          v222[1] = 1107296256;
          OUTLINED_FUNCTION_6_6();
          v222[2] = v90;
          v223 = &block_descriptor_415;
          _Block_copy(v222);
          OUTLINED_FUNCTION_370();

          v91 = v204;
          sub_2237B5CEC();
          v226[0] = MEMORY[0x277D84F90];
          OUTLINED_FUNCTION_5_5();
          sub_223766F90(v92, v93, MEMORY[0x277D851A0]);
          v94 = OUTLINED_FUNCTION_256();
          __swift_instantiateConcreteTypeFromMangledNameV2(v94, v95);
          OUTLINED_FUNCTION_4_8();
          sub_223766FD8(v96, &unk_27D097C90, qword_2237B7940, v97);
          v98 = v206;
          v99 = v209;
          sub_2237B60FC();
          OUTLINED_FUNCTION_343();
          MEMORY[0x223DEACD0]();
          _Block_release(v70);
          OUTLINED_FUNCTION_96();
          v100(v98, v99);
          OUTLINED_FUNCTION_96();
          v101(v91, v207);
        }

        v102 = v215;
        OUTLINED_FUNCTION_129(*(v215 + OBJC_IVAR___SRDRequestDispatcherInternal_instrumentationUtil));
        v103 = v219;
        v73(v203, v218, v219);
        OUTLINED_FUNCTION_12_4();
        __swift_storeEnumTagSinglePayload(v104, v105, v106, v103);
        LODWORD(v209) = AFDeviceSupportsSiriUOD();
        AFShouldRunAsrOnServerForUOD();
        v107 = OBJC_IVAR___SRDRequestDispatcherInternal_serverFallbackDisablingUtils;
        sub_223781B5C(v102 + OBJC_IVAR___SRDRequestDispatcherInternal_serverFallbackDisablingUtils, v222);
        OUTLINED_FUNCTION_259(v222, v223);
        v108 = OBJC_IVAR___SRDRequestDispatcherInternal_sessionContext;
        OUTLINED_FUNCTION_14_3();
        swift_beginAccess();
        v109 = v210;
        sub_22376F91C(v102 + v108, v210, &unk_27D097C80, &unk_2237B9260);
        v110 = v212;
        if (__swift_getEnumTagSinglePayload(v109, 1, v212))
        {
          sub_2237710FC(v109, &unk_27D097C80, &unk_2237B9260);
          v111 = 0;
        }

        else
        {
          v170 = *&v201[4];
          sub_22378ED08(v109, *&v201[4]);
          sub_2237710FC(v109, &unk_27D097C80, &unk_2237B9260);
          v111 = *(v170 + *(v110 + 20) + 8);

          sub_223771D44(v170);
        }

        v171 = sub_2237B58AC();
        v111, v172, v173, v174, v175, v176, v177, v178;
        v179 = v215;
        sub_223781B5C(v215 + v107, v226);
        OUTLINED_FUNCTION_259(v226, v226[3]);
        v180 = v211;
        sub_22376F91C(v179 + v108, v211, &unk_27D097C80, &unk_2237B9260);
        if (__swift_getEnumTagSinglePayload(v180, 1, v110))
        {
          sub_2237710FC(v180, &unk_27D097C80, &unk_2237B9260);
          v181 = 0;
        }

        else
        {
          v182 = *&v201[4];
          sub_22378ED08(v180, *&v201[4]);
          sub_2237710FC(v180, &unk_27D097C80, &unk_2237B9260);
          v181 = *(v182 + *(v110 + 20) + 8);

          sub_223771D44(v182);
        }

        sub_2237B58AC();
        v181, v183, v184, v185, v186, v187, v188, v189;
        v199 = OS_LOG_TYPE_DEFAULT;
        OUTLINED_FUNCTION_185(&v227);
        OUTLINED_FUNCTION_343();
        sub_223771484(v190, v191, v192, v193, v194, v195, v196, v197, v199);

        OUTLINED_FUNCTION_290();

        sub_2237710FC(v171, &qword_27D097A50, &unk_2237B7800);
        __swift_destroy_boxed_opaque_existential_0Tm(v226);
        __swift_destroy_boxed_opaque_existential_0Tm(v222);
      }

      else
      {
        if (qword_28131AA10 != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v153 = sub_2237B5C9C();
        OUTLINED_FUNCTION_13(v153, qword_28131B550);

        v154 = sub_2237B5C8C();
        sub_2237B5FFC();
        v76, v155, v156, v157, v158, v159, v160, v161;
        if (OUTLINED_FUNCTION_218())
        {
          OUTLINED_FUNCTION_20();
          v222[0] = OUTLINED_FUNCTION_32();
          v200 = 136315138;
          v162 = OUTLINED_FUNCTION_151();
          *v201 = sub_223763694(v162, v163, v164);
          OUTLINED_FUNCTION_33();
          _os_log_impl(v165, v166, v167, v168, v169, 0xCu);
          OUTLINED_FUNCTION_22_0();
          OUTLINED_FUNCTION_3_0();
        }
      }

      (*(v217 + 8))(v218, v219);
    }

    else
    {
      v216 = v68;
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v135 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v135, qword_28131B550);
      v136 = sub_2237B5C8C();
      v137 = sub_2237B5FFC();
      if (os_log_type_enabled(v136, v137))
      {
        v138 = OUTLINED_FUNCTION_20();
        v221 = OUTLINED_FUNCTION_19_0();
        v222[0] = v221;
        *v138 = 136315138;
        v202(v63, v69, v54);
        sub_2237B562C();
        OUTLINED_FUNCTION_357();
        v139 = OUTLINED_FUNCTION_186();
        (v70)(v139);
        v140 = OUTLINED_FUNCTION_256();
        sub_223763694(v140, v141, v142);
        v143 = OUTLINED_FUNCTION_148();
        v143, v144, v145, v146, v147, v148, v149, v150;
        *(v138 + 4) = v63;
        _os_log_impl(&dword_22375F000, v136, v137, "Current session is not of type %s, cannot start remote server request", v138, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v221);
        OUTLINED_FUNCTION_74();
        OUTLINED_FUNCTION_116();
      }
    }

    goto LABEL_33;
  }

  if (qword_28131AA10 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v112 = sub_2237B5C9C();
  OUTLINED_FUNCTION_13(v112, qword_28131B550);

  v113 = v216;

  v219 = sub_2237B5C8C();
  v114 = sub_2237B5FFC();
  OUTLINED_FUNCTION_282(v114, v115, v116, v117, v118, v119, v120, v121);
  v113, v122, v123, v124, v125, v126, v127, v128;
  if (os_log_type_enabled(v219, v60))
  {
    OUTLINED_FUNCTION_25_0();
    v222[0] = OUTLINED_FUNCTION_99();
    *v64 = 136315394;
    v129 = OUTLINED_FUNCTION_143();
    v131 = sub_223763694(v129, v113, v130);
    OUTLINED_FUNCTION_45_0(v131);
    v132 = OUTLINED_FUNCTION_119();
    *(v64 + 14) = sub_223763694(v132, v133, v134);
    OUTLINED_FUNCTION_257(&dword_22375F000, v219, v60, "No active session for assistantId: %s cannot start remote server request for request id: %s");
    OUTLINED_FUNCTION_98();
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_74();

LABEL_33:
    OUTLINED_FUNCTION_14_2();
    return;
  }

  OUTLINED_FUNCTION_14_2();
}

uint64_t sub_22379974C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a5;
  v23 = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C70, &qword_2237B9250);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v22 - v15;
  v17 = *MEMORY[0x277D5CDC8];
  v18 = sub_2237B540C();
  (*(*(v18 - 8) + 104))(v16, v17, v18);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v18);
  sub_2237B437C();

  sub_2237B434C();
  v19 = sub_2237B412C();
  (*(*(v19 - 8) + 16))(v13, a4, v19);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v19);
  sub_2237B439C();

  sub_2237B438C();
  v20 = sub_2237B544C();
  (*(*(v20 - 8) + 16))(v10, v23, v20);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v20);
  return sub_2237B435C();
}

void sub_2237999D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v24;
  a20 = v25;
  OUTLINED_FUNCTION_267(v26, v27, v28, v29, v30, v31, v32, v33);
  OUTLINED_FUNCTION_68(v34, v35, v36, v37, &a13);
  v41 = OUTLINED_FUNCTION_196(v38, v39, v40);
  OUTLINED_FUNCTION_316(v41, &v77);
  OUTLINED_FUNCTION_0_2();
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_28_1(v45);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_32_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_236(&a16);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_27_1();
  v49 = sub_223761B80();
  OUTLINED_FUNCTION_64();
  sub_2237B575C();
  OUTLINED_FUNCTION_265();
  OUTLINED_FUNCTION_347();
  OUTLINED_FUNCTION_115();
  v75[4] = v51;
  v75[5] = v50;
  OUTLINED_FUNCTION_190(&a11);
  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_114();
  v75[10] = v53;
  v75[11] = v52;
  OUTLINED_FUNCTION_206();
  v75[12] = v54;
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_223(v55, v56, v57, v58, v59, v60, 106);
  OUTLINED_FUNCTION_129(*(v22 + OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue));
  v61 = OUTLINED_FUNCTION_16_6();
  v49(v61);
  v62 = OUTLINED_FUNCTION_61(&a15);
  v49(v62);
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_9_7();
  v63 = OUTLINED_FUNCTION_221();
  v64 = OUTLINED_FUNCTION_30_1(v63);
  v21(v64);
  v65 = OUTLINED_FUNCTION_80();
  v21(v65);
  OUTLINED_FUNCTION_76((v22 + v43));
  OUTLINED_FUNCTION_78(v66);
  *v67 = sub_2237A7DE4;
  v67[1] = v75;
  OUTLINED_FUNCTION_5_3();
  v68 = swift_allocObject();
  *(v68 + 16) = sub_223761F8C;
  *(v68 + 24) = v22;
  v76[4] = sub_223761F78;
  v76[5] = v68;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v76[2] = v69;
  v76[3] = &block_descriptor_179;
  _Block_copy(v76);
  OUTLINED_FUNCTION_125();

  v70 = OUTLINED_FUNCTION_57_0();
  dispatch_sync(v70, v71);
  _Block_release(v23);
  v72 = OUTLINED_FUNCTION_86();
  (type metadata for Logger.Kind)(v72, v20);
  v73 = OUTLINED_FUNCTION_143();
  v74 = (type metadata for Logger.Kind)(v73, v20);
  OUTLINED_FUNCTION_22_1(v74, "");
  OUTLINED_FUNCTION_90();

  if (v20)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

uint64_t sub_223799CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SRDRequestDispatcherInternal *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v21 = a1;
  v22 = a8;
  v20 = a5;
  v14 = sub_2237B544C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22376E3D4(a7, v17);
  sub_223799E14(a2, a3, a4, v20, v17, v22, a9, a10, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
  return (*(v15 + 8))(v17, v14);
}

void sub_223799E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v23;
  a20 = v24;
  v25 = v20;
  v294 = v26;
  v291 = v27;
  v290 = v28;
  v293 = v29;
  v302 = v30;
  v299 = v31;
  v33 = v32;
  v35 = v34;
  ObjectType = swift_getObjectType();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  OUTLINED_FUNCTION_1(v36);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_25_2(v38);
  v39 = sub_2237B5CCC();
  v40 = OUTLINED_FUNCTION_8_6(v39, &a15);
  v287 = v41;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_25_2(v42);
  v43 = sub_2237B5D0C();
  v44 = OUTLINED_FUNCTION_8_6(v43, &a13);
  v285 = v45;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_25_2(v46);
  v47 = sub_2237B412C();
  OUTLINED_FUNCTION_0_2();
  v295 = v48;
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_62(v50);
  OUTLINED_FUNCTION_204(&v305);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_20_0();
  v297 = v52;
  OUTLINED_FUNCTION_12();
  v296 = sub_2237B563C();
  OUTLINED_FUNCTION_0_2();
  v300 = v53;
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_3();
  v57 = v55 - v56;
  MEMORY[0x28223BE20](v58);
  v60 = &v278 - v59;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097C80, &unk_2237B9260);
  OUTLINED_FUNCTION_1(v61);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_168();
  v63 = type metadata accessor for RequestDispatcher.SessionContext(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_17_4();
  v65 = *(v20 + OBJC_IVAR___SRDRequestDispatcherInternal_sessionsManager);
  v301 = v35;
  v66 = v33;
  sub_22376F45C();
  if (v67)
  {
    v298 = v67;
    v68 = OBJC_IVAR___SRDRequestDispatcherInternal_sessionContext;
    OUTLINED_FUNCTION_14_3();
    swift_beginAccess();
    v281 = v25;
    sub_22376F91C(v25 + v68, v22, &unk_27D097C80, &unk_2237B9260);
    OUTLINED_FUNCTION_312(v22, 1, v63);
    if (v69)
    {
      sub_2237710FC(v22, &unk_27D097C80, &unk_2237B9260);
      v70 = v301;
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v71 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v71, qword_28131B550);
      v72 = v302;

      v73 = sub_2237B5C8C();
      sub_2237B5FFC();
      v72, v74, v75, v76, v77, v78, v79, v80;
      v33, v81, v82, v83, v84, v85, v86, v87;
      if (OUTLINED_FUNCTION_218())
      {
        OUTLINED_FUNCTION_25_0();
        v88 = OUTLINED_FUNCTION_137();
        OUTLINED_FUNCTION_251(v88);
        OUTLINED_FUNCTION_255(4.8151e-34);
        v90 = sub_223763694(v70, v33, v89);
        OUTLINED_FUNCTION_56_0(v90);
        *(v63 + 14) = sub_223763694(v299, v72, v304);
        OUTLINED_FUNCTION_33();
        _os_log_impl(v91, v92, v93, v94, v95, 0x16u);
        OUTLINED_FUNCTION_149();
        OUTLINED_FUNCTION_71();
        OUTLINED_FUNCTION_3_0();
      }

      goto LABEL_50;
    }

    *(&v278 + 1) = v63;
    v282 = v47;
    v283 = v21;
    sub_22376F978(v22, v21);
    v116 = v298;
    v117 = v300;
    OUTLINED_FUNCTION_141();
    v118 = v296;
    v119(v60);
    v121 = &v117[13];
    isa = v117[13].isa;
    v280 = *MEMORY[0x277D5D258];
    v279 = isa;
    isa(v57);
    OUTLINED_FUNCTION_215();
    v122 = sub_223766744();
    v123 = v117[1].isa;
    v124 = OUTLINED_FUNCTION_142();
    v123(v124);
    v125 = OUTLINED_FUNCTION_349();
    v300 = v117 + 1;
    v123(v125);
    v126 = v301;
    if ((v122 & 1) == 0)
    {
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v180 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v180, qword_28131B550);
      v181 = sub_2237B5C8C();
      v182 = sub_2237B5FFC();
      if (os_log_type_enabled(v181, v182))
      {
        OUTLINED_FUNCTION_20();
        v304[0] = OUTLINED_FUNCTION_44();
        *v57 = 136315138;
        v279(v60, v280, v118);
        sub_2237B562C();
        OUTLINED_FUNCTION_298();
        v183 = OUTLINED_FUNCTION_349();
        v123(v183);
        v184 = OUTLINED_FUNCTION_19_2();
        v187 = sub_223763694(v184, v185, v186);
        v121, v188, v189, v190, v191, v192, v193, v194;
        *(v57 + 4) = v187;
        OUTLINED_FUNCTION_308(&dword_22375F000, v181, v182, "Current session is not of type %s, cannot start server text request request", v278);
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_13_5();
      }

      goto LABEL_48;
    }

    v127 = (v295 + 16);
    v128 = v297;
    v296 = *(v295 + 16);
    v129 = (v296)(v297, v116 + OBJC_IVAR____TtC14SiriMessageBus7Session_sessionId, v282);
    MEMORY[0x28223BE20](v129);
    OUTLINED_FUNCTION_277();
    *(v130 - 64) = v126;
    *(v130 - 56) = v66;
    v131 = v299;
    *(v130 - 48) = v128;
    *(v130 - 40) = v131;
    v132 = v302;
    v133 = v293;
    *(v130 - 32) = v302;
    *(v130 - 24) = v133;
    OUTLINED_FUNCTION_225(v130);
    objc_allocWithZone(sub_2237B527C());
    OUTLINED_FUNCTION_144();
    v134 = sub_2237B451C();
    if (!v134)
    {
      v195 = v283;
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v196 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v196, qword_28131B550);
      OUTLINED_FUNCTION_366();
      v197 = sub_2237B5C8C();
      v198 = sub_2237B5FFC();
      OUTLINED_FUNCTION_26_0(v198, v199, v200, v201, v202, v203, v204, v205);
      if (OUTLINED_FUNCTION_218())
      {
        OUTLINED_FUNCTION_20();
        v206 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_251(v206);
        OUTLINED_FUNCTION_255(4.8149e-34);
        v207 = OUTLINED_FUNCTION_233();
        *(&v278 + 4) = sub_223763694(v207, v208, v209);
        OUTLINED_FUNCTION_33();
        _os_log_impl(v210, v211, v212, v213, v214, 0xCu);
        OUTLINED_FUNCTION_22_0();
        OUTLINED_FUNCTION_3_0();
      }

      v215 = OUTLINED_FUNCTION_186();
      v216(v215);
      v217 = v195;
      goto LABEL_49;
    }

    v300 = v134;
    MEMORY[0x28223BE20](v134);
    *(&v278 - 10) = v126;
    *(&v278 - 9) = v66;
    *(&v278 - 8) = v128;
    *(&v278 - 7) = v131;
    OUTLINED_FUNCTION_210();
    *(v135 - 48) = v132;
    *(v135 - 40) = v136;
    v137 = v283;
    *(v135 - 32) = v291;
    *(v135 - 24) = v137;
    *(v135 - 16) = ObjectType;
    objc_allocWithZone(sub_2237B4C8C());
    OUTLINED_FUNCTION_144();
    v138 = sub_2237B4C0C();
    if (v138)
    {
      v294 = v138;
      MEMORY[0x28223BE20](v138);
      OUTLINED_FUNCTION_213();
      objc_allocWithZone(sub_2237B45BC());
      OUTLINED_FUNCTION_144();
      v139 = sub_2237B453C();
      v293 = v139;
      if (v139)
      {
        MEMORY[0x28223BE20](v139);
        OUTLINED_FUNCTION_213();
        objc_allocWithZone(sub_2237B442C());
        OUTLINED_FUNCTION_144();
        v140 = sub_2237B441C();
        v141 = v128;
        if (v140)
        {
          v142 = v140;
          v143 = v281;
          sub_2237654A4(v300);
          sub_2237654A4(v294);
          sub_2237654A4(v293);
          v301 = v142;
          sub_2237654A4(v142);
          v144 = *(v143 + OBJC_IVAR___SRDRequestDispatcherInternal_assetLogger);
          v145 = v282;
          v146 = v283;
          if ((*(v144 + 32) & 1) != 0 || (OUTLINED_FUNCTION_138(), v69))
          {
            ObjectType = *(v144 + 16);
            v147 = OUTLINED_FUNCTION_155(&a9);
            (v296)(v147, v141, v145);
            OUTLINED_FUNCTION_228();
            v150 = v149 & ~v148;
            OUTLINED_FUNCTION_329();
            v151 = OUTLINED_FUNCTION_221();
            v152 = OUTLINED_FUNCTION_89(v151);
            v153(v152 + v150, v146, v145);
            v154 = (&v278 + v66);
            v155 = v302;
            *v154 = v299;
            v154[1] = v155;
            v304[4] = sub_2237A93F0;
            v304[5] = &v278;
            OUTLINED_FUNCTION_44_0();
            v304[1] = 1107296256;
            OUTLINED_FUNCTION_6_6();
            v304[2] = v156;
            v304[3] = &block_descriptor_408;
            _Block_copy(v304);
            OUTLINED_FUNCTION_254();

            v157 = v284;
            sub_2237B5CEC();
            v303 = MEMORY[0x277D84F90];
            OUTLINED_FUNCTION_5_5();
            sub_223766F90(v158, v159, MEMORY[0x277D851A0]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097C90, qword_2237B7940);
            OUTLINED_FUNCTION_4_8();
            sub_223766FD8(v160, &unk_27D097C90, qword_2237B7940, v161);
            OUTLINED_FUNCTION_296();
            v162 = v288;
            sub_2237B60FC();
            MEMORY[0x223DEACD0](0, v157, v146, &v278);
            _Block_release(&v278);
            OUTLINED_FUNCTION_96();
            v163(v146, v162);
            OUTLINED_FUNCTION_96();
            v164(v157, v286);
          }

          ObjectType = *(v143 + OBJC_IVAR___SRDRequestDispatcherInternal_instrumentationUtil);
          v165 = v289;
          v166 = OUTLINED_FUNCTION_171();
          v296(v166);
          OUTLINED_FUNCTION_12_4();
          __swift_storeEnumTagSinglePayload(v167, v168, v169, v145);
          LODWORD(v296) = AFDeviceSupportsSiriUOD();
          LODWORD(v291) = AFShouldRunAsrOnServerForUOD();
          v170 = (v143 + OBJC_IVAR___SRDRequestDispatcherInternal_serverFallbackDisablingUtils);
          v171 = OUTLINED_FUNCTION_234();
          OUTLINED_FUNCTION_259(v171, v172);
          OUTLINED_FUNCTION_286();
          sub_2237B58AC();
          OUTLINED_FUNCTION_259(v170, v170[3]);
          OUTLINED_FUNCTION_147();
          sub_2237B58AC();
          v277 = OS_LOG_TYPE_DEFAULT;
          OUTLINED_FUNCTION_147();
          sub_223771484(v173, v174, v175, 2, v296, v291, v176, v177, v277);

          sub_2237710FC(v165, &qword_27D097A50, &unk_2237B7800);
          (*(v295 + 8))(v297, v282);
          goto LABEL_48;
        }

        if (qword_28131AA10 != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v260 = sub_2237B5C9C();
        OUTLINED_FUNCTION_13(v260, qword_28131B550);
        OUTLINED_FUNCTION_366();
        v261 = sub_2237B5C8C();
        v262 = sub_2237B5FFC();
        OUTLINED_FUNCTION_26_0(v262, v263, v264, v265, v266, v267, v268, v269);
        if (OUTLINED_FUNCTION_218())
        {
          OUTLINED_FUNCTION_20();
          v270 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_251(v270);
          OUTLINED_FUNCTION_255(4.8149e-34);
          *(&v278 + 4) = sub_223763694(v131, v127, v271);
          OUTLINED_FUNCTION_33();
          _os_log_impl(v272, v273, v274, v275, v276, 0xCu);
          OUTLINED_FUNCTION_22_0();
          OUTLINED_FUNCTION_3_0();
        }

        v258 = OUTLINED_FUNCTION_120();
LABEL_47:
        v259(v258);
LABEL_48:
        v217 = v283;
LABEL_49:
        sub_223771D44(v217);
        goto LABEL_50;
      }

      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v239 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v239, qword_28131B550);
      OUTLINED_FUNCTION_366();
      v219 = sub_2237B5C8C();
      v240 = sub_2237B5FFC();
      OUTLINED_FUNCTION_26_0(v240, v241, v242, v243, v244, v245, v246, v247);
      OUTLINED_FUNCTION_218();
      OUTLINED_FUNCTION_289();
      if (v248)
      {
        OUTLINED_FUNCTION_20();
        v249 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_251(v249);
        OUTLINED_FUNCTION_255(4.8149e-34);
        v250 = OUTLINED_FUNCTION_240();
        *(&v278 + 4) = sub_223763694(v250, v251, v252);
        OUTLINED_FUNCTION_33();
        _os_log_impl(v253, v254, v255, v256, v257, 0xCu);
        OUTLINED_FUNCTION_22_0();
        OUTLINED_FUNCTION_3_0();
      }

      v238 = v294;
    }

    else
    {
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v218 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v218, qword_28131B550);
      OUTLINED_FUNCTION_366();
      v219 = sub_2237B5C8C();
      v220 = sub_2237B5FFC();
      OUTLINED_FUNCTION_26_0(v220, v221, v222, v223, v224, v225, v226, v227);
      OUTLINED_FUNCTION_218();
      OUTLINED_FUNCTION_289();
      if (v228)
      {
        OUTLINED_FUNCTION_20();
        v229 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_251(v229);
        OUTLINED_FUNCTION_255(4.8149e-34);
        v230 = OUTLINED_FUNCTION_240();
        *(&v278 + 4) = sub_223763694(v230, v231, v232);
        OUTLINED_FUNCTION_33();
        _os_log_impl(v233, v234, v235, v236, v237, 0xCu);
        OUTLINED_FUNCTION_22_0();
        OUTLINED_FUNCTION_3_0();
      }

      v238 = v300;
    }

    v258 = OUTLINED_FUNCTION_234();
    goto LABEL_47;
  }

  if (qword_28131AA10 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v96 = sub_2237B5C9C();
  OUTLINED_FUNCTION_13(v96, qword_28131B550);
  v97 = v302;

  v300 = sub_2237B5C8C();
  v98 = sub_2237B5FFC();
  OUTLINED_FUNCTION_282(v98, v99, v100, v101, v102, v103, v104, v105);
  v66, v106, v107, v108, v109, v110, v111, v112;
  v113 = os_log_type_enabled(v300, v60);
  v114 = v301;
  if (v113)
  {
    OUTLINED_FUNCTION_25_0();
    v304[0] = OUTLINED_FUNCTION_99();
    *v65 = 136315394;
    v115 = sub_223763694(v114, v66, v304);
    OUTLINED_FUNCTION_45_0(v115);
    *(v65 + 14) = sub_223763694(v299, v97, v304);
    OUTLINED_FUNCTION_257(&dword_22375F000, v300, v60, "No active session for assistantId: %s cannot start remote server text request for request id: %s");
    OUTLINED_FUNCTION_98();
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_74();

LABEL_50:
    OUTLINED_FUNCTION_14_2();
    return;
  }

  OUTLINED_FUNCTION_14_2();
}

uint64_t sub_22379AE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v23[1] = a5;
  v23[2] = a7;
  v23[0] = a4;
  v24 = a9;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097900, &qword_2237B8860);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v23 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v23 - v16;
  v18 = *MEMORY[0x277D5CDC8];
  v19 = sub_2237B540C();
  (*(*(v19 - 8) + 104))(v17, v18, v19);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v19);
  sub_2237B4C3C();

  sub_2237B4C2C();
  v20 = sub_2237B412C();
  (*(*(v20 - 8) + 16))(v14, v23[0], v20);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v20);
  sub_2237B4C6C();

  sub_2237B4C5C();
  sub_2237B4C1C();

  sub_2237B4C7C();
  v21 = sub_2237B56DC();
  (*(*(v21 - 8) + 16))(v11, v24, v21);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v21);
  return sub_2237B4C4C();
}

uint64_t sub_22379B0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097CA0, &qword_2237B9270);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v22 - v14;
  v16 = *MEMORY[0x277D5CDC8];
  v17 = sub_2237B540C();
  (*(*(v17 - 8) + 104))(v15, v16, v17);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v17);
  sub_2237B458C();

  sub_2237B454C();
  v18 = sub_2237B412C();
  (*(*(v18 - 8) + 16))(v12, a4, v18);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v18);
  sub_2237B45AC();

  sub_2237B459C();
  sub_2237B456C();
  sub_2237B457C();
  v19 = *MEMORY[0x277D5D188];
  v20 = sub_2237B557C();
  (*(*(v20 - 8) + 104))(v9, v19, v20);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v20);
  return sub_2237B455C();
}

uint64_t sub_22379B3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17 - v11;
  v13 = *MEMORY[0x277D5CDC8];
  v14 = sub_2237B540C();
  (*(*(v14 - 8) + 104))(v12, v13, v14);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v14);
  sub_2237B447C();

  sub_2237B443C();
  v15 = sub_2237B412C();
  (*(*(v15 - 8) + 16))(v9, a4, v15);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v15);
  sub_2237B449C();

  sub_2237B448C();
  sub_2237B446C();
  return sub_2237B444C();
}

void sub_22379B594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v24;
  a20 = v25;
  OUTLINED_FUNCTION_267(v26, v27, v28, v29, v30, v31, v32, v33);
  OUTLINED_FUNCTION_68(v34, v35, v36, v37, &a13);
  v41 = OUTLINED_FUNCTION_196(v38, v39, v40);
  OUTLINED_FUNCTION_316(v41, &v77);
  OUTLINED_FUNCTION_0_2();
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_28_1(v45);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_32_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_236(&a16);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_27_1();
  v49 = sub_223761B80();
  OUTLINED_FUNCTION_64();
  sub_2237B575C();
  OUTLINED_FUNCTION_265();
  OUTLINED_FUNCTION_347();
  OUTLINED_FUNCTION_115();
  v75[4] = v51;
  v75[5] = v50;
  OUTLINED_FUNCTION_190(&a11);
  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_114();
  v75[10] = v53;
  v75[11] = v52;
  OUTLINED_FUNCTION_206();
  v75[12] = v54;
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_223(v55, v56, v57, v58, v59, v60, 85);
  OUTLINED_FUNCTION_129(*(v22 + OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue));
  v61 = OUTLINED_FUNCTION_16_6();
  v49(v61);
  v62 = OUTLINED_FUNCTION_61(&a15);
  v49(v62);
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_9_7();
  v63 = OUTLINED_FUNCTION_221();
  v64 = OUTLINED_FUNCTION_30_1(v63);
  v21(v64);
  v65 = OUTLINED_FUNCTION_80();
  v21(v65);
  OUTLINED_FUNCTION_76((v22 + v43));
  OUTLINED_FUNCTION_78(v66);
  *v67 = sub_2237A7DFC;
  v67[1] = v75;
  OUTLINED_FUNCTION_5_3();
  v68 = swift_allocObject();
  *(v68 + 16) = sub_223761F8C;
  *(v68 + 24) = v22;
  v76[4] = sub_223761F78;
  v76[5] = v68;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v76[2] = v69;
  v76[3] = &block_descriptor_190;
  _Block_copy(v76);
  OUTLINED_FUNCTION_125();

  v70 = OUTLINED_FUNCTION_57_0();
  dispatch_sync(v70, v71);
  _Block_release(v23);
  v72 = OUTLINED_FUNCTION_86();
  (type metadata for Logger.Kind)(v72, v20);
  v73 = OUTLINED_FUNCTION_143();
  v74 = (type metadata for Logger.Kind)(v73, v20);
  OUTLINED_FUNCTION_22_1(v74, "");
  OUTLINED_FUNCTION_90();

  if (v20)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

uint64_t sub_22379B894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SRDRequestDispatcherInternal *a7, uint64_t a8, uint64_t a9, void *a10)
{
  v30 = a5;
  v31 = a8;
  v28 = a9;
  v29 = a4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097900, &qword_2237B8860);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v28 - v15;
  v17 = sub_2237B544C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22376E3D4(a7, v20);
  v21 = objc_allocWithZone(sub_2237B553C());
  v22 = a10;
  v23 = sub_2237B552C();
  LOBYTE(a7) = *(a1 + OBJC_IVAR___SRDRequestDispatcherInternal_isMUXEnabled);
  v24 = sub_2237B56DC();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v24);
  LOBYTE(v26) = a7;
  sub_22379D19C(a2, a3, v29, v30, v20, v31, v28, v23, v26, v16, 0, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);

  sub_2237710FC(v16, &qword_27D097900, &qword_2237B8860);
  return (*(v18 + 8))(v20, v17);
}

void sub_22379BA90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void (*a8)(uint64_t, SRDRequestDispatcherInternal *, uint64_t, SRDRequestDispatcherInternal *, uint64_t, SRDRequestDispatcherInternal *, uint64_t, SRDRequestDispatcherInternal *, id))
{
  v51 = sub_2237B5E2C();
  v11 = v10;
  v12 = sub_2237B5E2C();
  v14 = v13;
  v15 = sub_2237B5E2C();
  v17 = v16;
  v18 = sub_2237B5E2C();
  v20 = v19;
  v21 = a7;
  v22 = a1;
  a8(v51, v11, v12, v14, v15, v17, v18, v20, v21);

  v11, v23, v24, v25, v26, v27, v28, v29;
  v14, v30, v31, v32, v33, v34, v35, v36;
  v17, v37, v38, v39, v40, v41, v42, v43;

  v20, v44, v45, v46, v47, v48, v49, v50;
}

void sub_22379BB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v24;
  a20 = v25;
  v75 = v26;
  v72 = v27;
  v71 = v28;
  v70 = v29;
  v69 = v30;
  v68 = v31;
  v33 = v32;
  OUTLINED_FUNCTION_188();
  v76 = sub_2237B5C7C();
  OUTLINED_FUNCTION_0_2();
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_28_1(v39);
  v41 = MEMORY[0x28223BE20](v40);
  v43 = &v67 - v42;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_236(&a17);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_27_1();
  sub_223761B80();
  OUTLINED_FUNCTION_64();
  sub_2237B575C();
  v79 = v23;
  v80 = v33;
  v67 = 0x80000002237BA620;
  v81 = v20;
  v82 = v68;
  OUTLINED_FUNCTION_108();
  OUTLINED_FUNCTION_189(&a14);
  OUTLINED_FUNCTION_290();
  v83 = v45;
  v77 = v22;
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_320(v46, v47, v48, v49, v50, v51, 85);
  v75 = *(v20 + OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue);
  v52 = v35;
  v53 = *(v35 + 16);
  v54 = v43;
  v55 = v76;
  v53(v43, v22, v76);
  v56 = v74;
  v57 = OUTLINED_FUNCTION_119();
  (v53)(v57);
  v73 = v52;
  OUTLINED_FUNCTION_9_7();
  v58 = OUTLINED_FUNCTION_221();
  v59 = *(v52 + 32);
  v59(v53 + v58, v54, v55);
  v59(&type metadata for Logger + v58, v56, v55);
  OUTLINED_FUNCTION_76((v58 + v37));
  OUTLINED_FUNCTION_84(v60);
  v61 = (v58 + v21);
  *v61 = sub_2237A7E50;
  v61[1] = &v78;
  OUTLINED_FUNCTION_5_3();
  v62 = swift_allocObject();
  *(v62 + 16) = sub_223761F8C;
  *(v62 + 24) = v58;
  v84[4] = sub_223761F78;
  v84[5] = v62;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v84[2] = v63;
  v84[3] = &block_descriptor_201;
  _Block_copy(v84);
  OUTLINED_FUNCTION_195();

  v64 = OUTLINED_FUNCTION_143();
  dispatch_sync(v64, v56);
  _Block_release(v56);
  OUTLINED_FUNCTION_133();
  v65 = OUTLINED_FUNCTION_101();
  (type metadata for Logger.Kind)(v65, v55);
  v66 = (type metadata for Logger.Kind)(v77, v55);
  OUTLINED_FUNCTION_22_1(v66, "");
  OUTLINED_FUNCTION_121();

  if (v55)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

void sub_22379BF18(uint64_t a1, SRDRequestDispatcherInternal *a2, uint64_t a3, NSObject *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v37 = a4;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097900, &qword_2237B8860);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v36 - v17;
  if (a2)
  {
    v36 = a9;
    v19 = a2;
LABEL_5:
    v21 = *(a3 + OBJC_IVAR___SRDRequestDispatcherInternal_isMUXEnabled);
    v22 = sub_2237B56DC();
    __swift_storeEnumTagSinglePayload(v18, 1, 1, v22);

    LOBYTE(v34) = v21;
    sub_22379D19C(a1, v19, v37, a5, a6, a7, a8, v36, v34, v18, 0, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46);
    v19, v23, v24, v25, v26, v27, v28, v29;
    sub_2237710FC(v18, &qword_27D097900, &qword_2237B8860);
    return;
  }

  v20 = *(a3 + OBJC_IVAR___SRDRequestDispatcherInternal_sessionsManager);
  v19 = *(v20 + 64);
  if (v19)
  {
    v36 = a9;
    a1 = *(v20 + 56);

    goto LABEL_5;
  }

  if (qword_28131AA10 != -1)
  {
    swift_once();
  }

  v30 = sub_2237B5C9C();
  __swift_project_value_buffer(v30, qword_28131B550);
  v37 = sub_2237B5C8C();
  v31 = sub_2237B5FFC();
  if (os_log_type_enabled(v37, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_22375F000, v37, v31, "Failed to start text request: no current assistant id", v32, 2u);
    MEMORY[0x223DEB690](v32, -1, -1);
  }

  v33 = v37;
}

void sub_22379C168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_16_3();
  v81 = v23;
  v82 = v24;
  v26 = v25;
  v28 = v27;
  sub_2237B5CCC();
  OUTLINED_FUNCTION_0_2();
  v79 = v30;
  v80 = v29;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_3_4();
  v77 = v31;
  OUTLINED_FUNCTION_12();
  v78 = sub_2237B5D0C();
  OUTLINED_FUNCTION_0_2();
  v76 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_3_4();
  v75 = v34;
  OUTLINED_FUNCTION_12();
  sub_2237B412C();
  OUTLINED_FUNCTION_0_2();
  v73 = v36;
  v74 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  v39 = &v73 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_117();
  sub_22378AFF8();
  if (v40)
  {
    v41 = OUTLINED_FUNCTION_117();
    if (sub_22378BBC8(v41, v42, v43, v44))
    {
      v45 = OUTLINED_FUNCTION_117();
      sub_22378BE44(v45, v46, v47, v48, v49, v50);
      OUTLINED_FUNCTION_294();
      if ((v51 & 1) != 0 || (OUTLINED_FUNCTION_138(), v52))
      {
        v53 = v73;
        v54 = OUTLINED_FUNCTION_292();
        v55 = v74;
        v56(v54);
        v57 = (*(v53 + 80) + 24) & ~*(v53 + 80);
        OUTLINED_FUNCTION_329();
        v58 = OUTLINED_FUNCTION_221();
        *(v58 + 2) = v22;
        (*(v53 + 32))(&v58[v57], v39, v55);
        v59 = &v58[a22];
        *v59 = v28;
        *(v59 + 1) = v26;
        v84[4] = sub_2237A93F0;
        v84[5] = v58;
        OUTLINED_FUNCTION_7_5();
        v84[1] = 1107296256;
        OUTLINED_FUNCTION_6_6();
        v84[2] = v60;
        v84[3] = &block_descriptor_401;
        _Block_copy(v84);
        OUTLINED_FUNCTION_249();

        sub_2237B5CEC();
        v83 = MEMORY[0x277D84F90];
        OUTLINED_FUNCTION_5_5();
        sub_223766F90(v61, v62, MEMORY[0x277D851A0]);
        v63 = OUTLINED_FUNCTION_193();
        __swift_instantiateConcreteTypeFromMangledNameV2(v63, v64);
        OUTLINED_FUNCTION_4_8();
        OUTLINED_FUNCTION_291();
        sub_223766FD8(v65, v66, v67, v68);
        OUTLINED_FUNCTION_229(&v83);
        OUTLINED_FUNCTION_322();
        MEMORY[0x223DEACD0]();
        _Block_release(v58);
        v69 = OUTLINED_FUNCTION_119();
        v70(v69);
        v71 = OUTLINED_FUNCTION_326();
        v72(v71);
      }
    }
  }

  OUTLINED_FUNCTION_14_2();
}

void sub_22379C4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_177(v24, v25, v26, v27, v28, v29, v30, v31);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_25_2(v33);
  v124 = sub_2237B5D0C();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_25_2(v35);
  sub_2237B412C();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v36);
  v37 = OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_355();
  v39(v21);
  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_219();
  v41 = v40;
  v42 = OUTLINED_FUNCTION_142();
  v43(v42);
  if (v41)
  {
    sub_2237B411C();
    v44 = sub_2237B40FC();
    v45 = OUTLINED_FUNCTION_235(v44);
    v46(v45);
    v47 = v22;
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v48 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v48, qword_28131B550);

    v49 = sub_2237B5C8C();
    sub_2237B5FEC();
    v20, v50, v51, v52, v53, v54, v55, v56;
    v23, v57, v58, v59, v60, v61, v62, v63;
    if (OUTLINED_FUNCTION_365())
    {
      OUTLINED_FUNCTION_25_0();
      v129[0] = OUTLINED_FUNCTION_137();
      *v37 = 136315394;
      v64 = v128;
      v65 = OUTLINED_FUNCTION_186();
      v68 = sub_223763694(v65, v66, v67);
      OUTLINED_FUNCTION_56_0(v68);
      v69 = OUTLINED_FUNCTION_238();
      *(v37 + 14) = sub_223763694(v69, v70, v71);
      OUTLINED_FUNCTION_331();
      OUTLINED_FUNCTION_281(v72, v73, v74, v75);
      OUTLINED_FUNCTION_311();
      OUTLINED_FUNCTION_116();
      OUTLINED_FUNCTION_3_0();

      v76 = v20;
    }

    else
    {

      v76 = v20;
      v64 = v128;
    }

    v77 = OUTLINED_FUNCTION_55_0();
    if (sub_22378C294(v77, v78, v79, v80, v81, v125, v126, v82, v64, v23))
    {
      v90 = OUTLINED_FUNCTION_55_0();
      sub_22378CAE0(v90, v91, v92, v93, v94, v64, v23);
      v23, v95, v96, v97, v98, v99, v100, v101;
      OUTLINED_FUNCTION_294();
      if ((v102 & 1) != 0 || (OUTLINED_FUNCTION_138(), v103))
      {
        v104 = OUTLINED_FUNCTION_242();
        v105(v104);
        OUTLINED_FUNCTION_161();
        v106 = OUTLINED_FUNCTION_309();
        v107 = OUTLINED_FUNCTION_192(v106);
        v108 = OUTLINED_FUNCTION_328(v107);
        v109(v108);
        v110 = (&v20->super.isa + v76);
        *v110 = v127;
        v110[1] = v47;
        v129[4] = sub_2237A93F0;
        v129[5] = v76;
        OUTLINED_FUNCTION_7_5();
        v129[1] = 1107296256;
        OUTLINED_FUNCTION_6_6();
        v129[2] = v111;
        v129[3] = &block_descriptor_394;
        _Block_copy(v129);
        OUTLINED_FUNCTION_358();

        sub_2237B5CEC();
        OUTLINED_FUNCTION_5_5();
        sub_223766F90(v112, v113, MEMORY[0x277D851A0]);
        v114 = OUTLINED_FUNCTION_19_2();
        __swift_instantiateConcreteTypeFromMangledNameV2(v114, v115);
        OUTLINED_FUNCTION_4_8();
        OUTLINED_FUNCTION_209();
        sub_223766FD8(v116, v117, v118, v119);
        OUTLINED_FUNCTION_178();
        OUTLINED_FUNCTION_173();
        _Block_release(v76);
        v120 = OUTLINED_FUNCTION_184();
        v121(v120);
        OUTLINED_FUNCTION_96();
        v122(v123, v124);
      }
    }

    else
    {
      v23, v83, v84, v85, v86, v87, v88, v89;
    }
  }

  OUTLINED_FUNCTION_14_2();
}

void sub_22379C978()
{
  OUTLINED_FUNCTION_16_3();
  v60 = v1;
  v61 = v2;
  v4 = v3;
  v6 = v5;
  v59 = v7;
  v9 = v8;
  sub_2237B5CCC();
  OUTLINED_FUNCTION_0_2();
  v57 = v11;
  v58 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_4();
  v55 = v12;
  OUTLINED_FUNCTION_12();
  v56 = sub_2237B5D0C();
  OUTLINED_FUNCTION_0_2();
  v54 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_4();
  v53 = v15;
  OUTLINED_FUNCTION_12();
  sub_2237B412C();
  OUTLINED_FUNCTION_0_2();
  v51 = v17;
  v52 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_118();
  sub_22378AFF8();
  if (v20)
  {
    v21 = OUTLINED_FUNCTION_118();
    if (sub_22378C234(v21, v22, v23))
    {
      v24 = OUTLINED_FUNCTION_118();
      sub_22378CA74(v24, v25, v26, v27, v28);
      OUTLINED_FUNCTION_294();
      if ((v29 & 1) != 0 || (OUTLINED_FUNCTION_138(), v30))
      {
        v61 = *(v0 + 16);
        v32 = v51;
        v31 = v52;
        OUTLINED_FUNCTION_216();
        v33();
        v34 = (*(v32 + 80) + 24) & ~*(v32 + 80);
        OUTLINED_FUNCTION_329();
        v35 = OUTLINED_FUNCTION_221();
        v36 = OUTLINED_FUNCTION_192(v35);
        (*(v32 + 32))(v36 + v34, &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v31);
        v37 = (v9 + v19);
        *v37 = v6;
        v37[1] = v4;
        v63[4] = sub_2237A93F0;
        v63[5] = v9;
        v63[0] = MEMORY[0x277D85DD0];
        v63[1] = 1107296256;
        OUTLINED_FUNCTION_6_6();
        v63[2] = v38;
        v63[3] = &block_descriptor_387;
        _Block_copy(v63);
        OUTLINED_FUNCTION_249();

        sub_2237B5CEC();
        v62 = MEMORY[0x277D84F90];
        OUTLINED_FUNCTION_5_5();
        sub_223766F90(v39, v40, MEMORY[0x277D851A0]);
        v41 = OUTLINED_FUNCTION_193();
        __swift_instantiateConcreteTypeFromMangledNameV2(v41, v42);
        OUTLINED_FUNCTION_4_8();
        OUTLINED_FUNCTION_291();
        sub_223766FD8(v43, v44, v45, v46);
        OUTLINED_FUNCTION_229(&v62);
        OUTLINED_FUNCTION_322();
        MEMORY[0x223DEACD0]();
        _Block_release(&v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
        v47 = OUTLINED_FUNCTION_119();
        v48(v47);
        v49 = OUTLINED_FUNCTION_326();
        v50(v49);
      }
    }
  }

  OUTLINED_FUNCTION_14_2();
}

void sub_22379CCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_177(v24, v25, v26, v27, v28, v29, v30, v31);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_25_2(v33);
  v124 = sub_2237B5D0C();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_25_2(v35);
  sub_2237B412C();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v36);
  v37 = OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_355();
  v39(v21);
  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_219();
  v41 = v40;
  v42 = OUTLINED_FUNCTION_142();
  v43(v42);
  if (v41)
  {
    sub_2237B411C();
    v44 = sub_2237B40FC();
    v45 = OUTLINED_FUNCTION_235(v44);
    v46(v45);
    v47 = v22;
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v48 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v48, qword_28131B550);

    v49 = sub_2237B5C8C();
    sub_2237B5FEC();
    v20, v50, v51, v52, v53, v54, v55, v56;
    v23, v57, v58, v59, v60, v61, v62, v63;
    if (OUTLINED_FUNCTION_365())
    {
      OUTLINED_FUNCTION_25_0();
      v129[0] = OUTLINED_FUNCTION_137();
      *v37 = 136315394;
      v64 = v128;
      v65 = OUTLINED_FUNCTION_186();
      v68 = sub_223763694(v65, v66, v67);
      OUTLINED_FUNCTION_56_0(v68);
      v69 = OUTLINED_FUNCTION_238();
      *(v37 + 14) = sub_223763694(v69, v70, v71);
      OUTLINED_FUNCTION_331();
      OUTLINED_FUNCTION_281(v72, v73, v74, v75);
      OUTLINED_FUNCTION_311();
      OUTLINED_FUNCTION_116();
      OUTLINED_FUNCTION_3_0();

      v76 = v20;
    }

    else
    {

      v76 = v20;
      v64 = v128;
    }

    v77 = OUTLINED_FUNCTION_55_0();
    if (sub_22378C5C8(v77, v78, v79, v80, v81, v125, v126, v82, v64, v23))
    {
      v90 = OUTLINED_FUNCTION_55_0();
      sub_22378CAE0(v90, v91, v92, v93, v94, v64, v23);
      v23, v95, v96, v97, v98, v99, v100, v101;
      OUTLINED_FUNCTION_294();
      if ((v102 & 1) != 0 || (OUTLINED_FUNCTION_138(), v103))
      {
        v104 = OUTLINED_FUNCTION_242();
        v105(v104);
        OUTLINED_FUNCTION_161();
        v106 = OUTLINED_FUNCTION_309();
        v107 = OUTLINED_FUNCTION_192(v106);
        v108 = OUTLINED_FUNCTION_328(v107);
        v109(v108);
        v110 = (&v20->super.isa + v76);
        *v110 = v127;
        v110[1] = v47;
        v129[4] = sub_2237A93F0;
        v129[5] = v76;
        OUTLINED_FUNCTION_7_5();
        v129[1] = 1107296256;
        OUTLINED_FUNCTION_6_6();
        v129[2] = v111;
        v129[3] = &block_descriptor_380;
        _Block_copy(v129);
        OUTLINED_FUNCTION_358();

        sub_2237B5CEC();
        OUTLINED_FUNCTION_5_5();
        sub_223766F90(v112, v113, MEMORY[0x277D851A0]);
        v114 = OUTLINED_FUNCTION_19_2();
        __swift_instantiateConcreteTypeFromMangledNameV2(v114, v115);
        OUTLINED_FUNCTION_4_8();
        OUTLINED_FUNCTION_209();
        sub_223766FD8(v116, v117, v118, v119);
        OUTLINED_FUNCTION_178();
        OUTLINED_FUNCTION_173();
        _Block_release(v76);
        v120 = OUTLINED_FUNCTION_184();
        v121(v120);
        OUTLINED_FUNCTION_96();
        v122(v123, v124);
      }
    }

    else
    {
      v23, v83, v84, v85, v86, v87, v88, v89;
    }
  }

  OUTLINED_FUNCTION_14_2();
}

void sub_22379D19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_16_3();
  v167 = v23;
  v150 = v27;
  v152 = v26;
  v156 = v28;
  v148 = v29;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = sub_2237B56DC();
  OUTLINED_FUNCTION_0_2();
  v162 = v39;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_17_4();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097C80, &unk_2237B9260);
  OUTLINED_FUNCTION_1(v41);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_4_6();
  v160 = v43;
  v44 = OUTLINED_FUNCTION_12();
  v158 = type metadata accessor for RequestDispatcher.SessionContext(v44);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_3_4();
  v146 = v46;
  OUTLINED_FUNCTION_12();
  v47 = sub_2237B412C();
  OUTLINED_FUNCTION_0_2();
  v164 = v48;
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_3_4();
  v166 = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097A40, &unk_2237B8850);
  OUTLINED_FUNCTION_1(v51);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_232();
  if (qword_28131AA10 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v53 = sub_2237B5C9C();
  v144 = __swift_project_value_buffer(v53, qword_28131B550);
  v54 = sub_2237B5C8C();
  v55 = sub_2237B5FEC();
  v165 = v47;
  v154 = v25;
  if (OUTLINED_FUNCTION_5(v55))
  {
    v56 = OUTLINED_FUNCTION_20();
    v57 = v38;
    v58 = v37;
    v59 = v35;
    v60 = v33;
    v61 = v31;
    v62 = OUTLINED_FUNCTION_19_0();
    v168[0] = v62;
    *v56 = 136315138;
    *(v56 + 4) = sub_223763694(0xD00000000000008ELL, 0x80000002237BAFF0, v168);
    OUTLINED_FUNCTION_317(&dword_22375F000, v63, v144, "%s");
    __swift_destroy_boxed_opaque_existential_0Tm(v62);
    v31 = v61;
    v33 = v60;
    v35 = v59;
    v37 = v58;
    v38 = v57;
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_71();
  }

  OUTLINED_FUNCTION_234();
  sub_2237A5FA4();
  if (v64)
  {
    v70 = v64;
    sub_22376F9F8(v64, v37, v35, v65, v66, v67, v68, v69, v37, v143, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162);
    v71 = v35;
    v72 = v31;
    v73 = OBJC_IVAR____TtC14SiriMessageBus7Session_userSessionState;
    OUTLINED_FUNCTION_14_3();
    swift_beginAccess();
    v74 = sub_2237B551C();
    OUTLINED_FUNCTION_4();
    (*(v75 + 16))(v24, v70 + v73, v74);
    OUTLINED_FUNCTION_12_4();
    __swift_storeEnumTagSinglePayload(v76, v77, v78, v74);
    OUTLINED_FUNCTION_216();
    sub_223770A64(v79, v80, v81, 0);
    sub_2237710FC(v24, &unk_27D097A40, &unk_2237B8850);
    (*(v164 + 16))(v166, v70 + OBJC_IVAR____TtC14SiriMessageBus7Session_sessionId, v165);
    v82 = OBJC_IVAR___SRDRequestDispatcherInternal_sessionContext;
    OUTLINED_FUNCTION_14_3();
    swift_beginAccess();
    sub_22376F91C(v167 + v82, v161, &unk_27D097C80, &unk_2237B9260);
    OUTLINED_FUNCTION_312(v161, 1, v159);
    if (v83)
    {
      sub_2237710FC(v161, &unk_27D097C80, &unk_2237B9260);

      v84 = sub_2237B5C8C();
      sub_2237B5FFC();
      v72, v85, v86, v87, v88, v89, v90, v91;
      v71, v92, v93, v94, v95, v96, v97, v98;
      if (OUTLINED_FUNCTION_28())
      {
        v99 = OUTLINED_FUNCTION_25_0();
        OUTLINED_FUNCTION_198();
        *v99 = 136315394;
        v100 = OUTLINED_FUNCTION_57_0();
        v103 = sub_223763694(v100, v101, v102);
        OUTLINED_FUNCTION_271(v103);
        v104 = OUTLINED_FUNCTION_143();
        *(v99 + 14) = sub_223763694(v104, v72, v105);
        OUTLINED_FUNCTION_181();
        _os_log_impl(v106, v107, v108, v109, v99, 0x16u);
        OUTLINED_FUNCTION_149();
        OUTLINED_FUNCTION_71();
        OUTLINED_FUNCTION_10();
      }

      else
      {
      }

      (*(v164 + 8))(v166, v165);
    }

    else
    {
      v110 = v147;
      sub_22376F978(v161, v147);
      v111 = v155;
      v112 = OUTLINED_FUNCTION_292();
      v113(v112);
      if (a21)
      {
        if (*(v147 + *(v159 + 24)))
        {
          OUTLINED_FUNCTION_38();
          OUTLINED_FUNCTION_37();
          sub_22379C4B0(v114, v115, v116, v117, v118, v119, v120, v121, v138, v139, v140, v141, v142, v33, v145, v147, v149, v151, v153, v155);
        }

        else
        {
          OUTLINED_FUNCTION_38();
          OUTLINED_FUNCTION_37();
          sub_22379C168(v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, a22, a23, v142, v33, v145, v147, v149, v151, v153, v155, v157, v159);
        }
      }

      else if (*(v147 + *(v159 + 24)))
      {
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_37();
        sub_22379CCD4(v122, v123, v124, v125, v126, v127, v128, v129, v140, v141, v142, v33, v145, v147, v149, v151, v153, v155, v157, v159);
      }

      else
      {
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_37();
        sub_22379C978();
      }

      (*(v163 + 8))(v111, v38);
      sub_223771D44(v110);
      (*(v164 + 8))(v166, v165);
    }
  }

  OUTLINED_FUNCTION_14_2();
}

void sub_22379D7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v25;
  a20 = v26;
  OUTLINED_FUNCTION_267(v27, v28, v29, v30, v31, v32, v33, v34);
  OUTLINED_FUNCTION_68(v35, v36, v37, v38, &a14);
  OUTLINED_FUNCTION_214(v39, &v77);
  OUTLINED_FUNCTION_205(a21);
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_316(ObjectType, v78);
  OUTLINED_FUNCTION_0_2();
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_28_1(v44);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_32_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_236(&a16);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_27_1();
  v48 = sub_223761B80();
  OUTLINED_FUNCTION_64();
  sub_2237B575C();
  OUTLINED_FUNCTION_265();
  OUTLINED_FUNCTION_206();
  v75[4] = v50;
  v75[5] = v49;
  OUTLINED_FUNCTION_190(&a11);
  OUTLINED_FUNCTION_87(&a14);
  OUTLINED_FUNCTION_183();
  v75[10] = v52;
  v75[11] = v51;
  OUTLINED_FUNCTION_338();
  v75[12] = v54;
  v75[13] = v53;
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_223(v55, v56, v57, v58, v59, v60, 123);
  OUTLINED_FUNCTION_129(*(v23 + OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue));
  v61 = OUTLINED_FUNCTION_16_6();
  v48(v61);
  v62 = OUTLINED_FUNCTION_61(&a15);
  v48(v62);
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_9_7();
  v63 = OUTLINED_FUNCTION_221();
  v64 = OUTLINED_FUNCTION_30_1(v63);
  v22(v64);
  v65 = OUTLINED_FUNCTION_80();
  v22(v65);
  OUTLINED_FUNCTION_76((v23 + v42));
  OUTLINED_FUNCTION_78(v66);
  *v67 = sub_2237A7E7C;
  v67[1] = v75;
  OUTLINED_FUNCTION_5_3();
  v68 = swift_allocObject();
  *(v68 + 16) = sub_223761F8C;
  *(v68 + 24) = v23;
  v77 = sub_223761F78;
  v78[0] = v68;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v76[2] = v69;
  v76[3] = &block_descriptor_212;
  _Block_copy(v76);
  OUTLINED_FUNCTION_125();

  v70 = OUTLINED_FUNCTION_57_0();
  dispatch_sync(v70, v71);
  _Block_release(v24);
  v72 = OUTLINED_FUNCTION_86();
  (type metadata for Logger.Kind)(v72, v21);
  v73 = OUTLINED_FUNCTION_143();
  v74 = (type metadata for Logger.Kind)(v73, v21);
  OUTLINED_FUNCTION_22_1(v74, "");
  OUTLINED_FUNCTION_90();

  if (v21)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

uint64_t sub_22379DB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SRDRequestDispatcherInternal *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v23 = a5;
  v24 = a8;
  v21 = a9;
  v22 = a4;
  v15 = sub_2237B544C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22376E3D4(a7, v18);
  LOBYTE(v20) = *(a1 + OBJC_IVAR___SRDRequestDispatcherInternal_isMUXEnabled);
  sub_22379DDA4(a2, a3, v22, v23, v18, v24, v21, a10, a11, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
  return (*(v16 + 8))(v18, v15);
}

void sub_22379DDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, char a22)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v24;
  a20 = v25;
  v26 = v22;
  v164 = v27;
  v165 = v28;
  v163 = v29;
  v167 = v30;
  v171 = v31;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_2237B5CCC();
  OUTLINED_FUNCTION_0_2();
  v161 = v39;
  v162 = v38;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_25_2(v40);
  v41 = sub_2237B5D0C();
  v42 = OUTLINED_FUNCTION_8_6(v41, &a18);
  v158 = v43;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_25_2(v44);
  v45 = sub_2237B412C();
  OUTLINED_FUNCTION_0_2();
  v170 = v46;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_62(v48);
  OUTLINED_FUNCTION_204(&a13);
  MEMORY[0x28223BE20](v49);
  v51 = &v153 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097C80, &unk_2237B9260);
  OUTLINED_FUNCTION_1(v52);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_226();
  v54 = type metadata accessor for RequestDispatcher.SessionContext(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_3_4();
  v169 = v56;
  if (qword_28131AA10 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v57 = sub_2237B5C9C();
  v166 = __swift_project_value_buffer(v57, qword_28131B550);
  v58 = sub_2237B5C8C();
  v59 = sub_2237B5FEC();
  if (OUTLINED_FUNCTION_261(v59))
  {
    OUTLINED_FUNCTION_20();
    v168 = v33;
    v60 = OUTLINED_FUNCTION_32();
    v154 = v54;
    v61 = v35;
    v62 = v51;
    v63 = v26;
    v64 = v45;
    v65 = v37;
    v66 = v60;
    v173 = v60;
    *v33 = 136315138;
    *(v33 + 4) = sub_223763694(0xD000000000000087, 0x80000002237BAF60, &v173);
    OUTLINED_FUNCTION_217(&dword_22375F000, v58, v59, "%s");
    __swift_destroy_boxed_opaque_existential_0Tm(v66);
    v37 = v65;
    v45 = v64;
    v26 = v63;
    v51 = v62;
    v35 = v61;
    v54 = v154;
    OUTLINED_FUNCTION_8();
    v33 = v168;
    OUTLINED_FUNCTION_8();
  }

  sub_2237A5FA4();
  if (!v67)
  {
    goto LABEL_25;
  }

  v68 = v67;
  v69 = OBJC_IVAR___SRDRequestDispatcherInternal_sessionContext;
  OUTLINED_FUNCTION_14_3();
  swift_beginAccess();
  sub_22376F91C(v26 + v69, v23, &unk_27D097C80, &unk_2237B9260);
  OUTLINED_FUNCTION_312(v23, 1, v54);
  if (v70)
  {
    sub_2237710FC(v23, &unk_27D097C80, &unk_2237B9260);

    v71 = v166;
    v72 = sub_2237B5C8C();
    v73 = sub_2237B5FFC();
    OUTLINED_FUNCTION_361(v73, v74, v75, v76, v77, v78, v79, v80);
    v35, v81, v82, v83, v84, v85, v86, v87;
    if (OUTLINED_FUNCTION_218())
    {
      v88 = v35;
      v89 = OUTLINED_FUNCTION_25_0();
      v173 = OUTLINED_FUNCTION_198();
      *v89 = 136315394;
      v90 = sub_223763694(v37, v88, &v173);
      OUTLINED_FUNCTION_271(v90);
      *(v89 + 14) = sub_223763694(v33, v171, &v173);
      _os_log_impl(&dword_22375F000, v72, v71, "sessionContext is not set for assistantId: %s during request: %s", v89, 0x16u);
      OUTLINED_FUNCTION_98();
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_10();
    }

    goto LABEL_25;
  }

  v91 = a21;
  v92 = v23;
  v93 = v169;
  sub_22376F978(v92, v169);
  v94 = *(v170 + 16);
  v166 = v170 + 16;
  v154 = v94;
  v94(v51, v68 + OBJC_IVAR____TtC14SiriMessageBus7Session_sessionId, v45);
  v95 = objc_allocWithZone(sub_2237B553C());
  v96 = v91;
  v97 = sub_2237B552C();
  OUTLINED_FUNCTION_283();
  v168 = v33;
  sub_22378CE78();
  v99 = v98;

  if ((v99 & 1) == 0)
  {
    goto LABEL_15;
  }

  v167 = v68;
  if (a22)
  {
    OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_200();
    if ((sub_22378D4C4(v100, v101, v102, v103) & 1) == 0)
    {
LABEL_23:

      v149 = OUTLINED_FUNCTION_119();
      v150(v149);
      v111 = v169;
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_322();
    v108 = sub_22378DCBC(v104, v105, v106, v107, v171);
    goto LABEL_18;
  }

  v93 = v169;
  v151 = v169;
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_200();
  sub_22378D880(v112, v113, v114, v115, v116, v117, v118, v119, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177);
  if ((v120 & 1) == 0)
  {
LABEL_15:

    v109 = OUTLINED_FUNCTION_119();
    v110(v109);
    v111 = v93;
LABEL_24:
    sub_223771D44(v111);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_322();
  v108 = sub_22378CA74(v121, v122, v123, v124, v171);
LABEL_18:
  if ((v108 & 1) == 0)
  {
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_294();
  if ((v125 & 1) == 0)
  {
    OUTLINED_FUNCTION_138();
    if (!v70)
    {
      goto LABEL_23;
    }
  }

  v167 = *(v99 + 16);
  v126 = OUTLINED_FUNCTION_155(&a14);
  v154(v126, v51, v45);
  v127 = v170;
  OUTLINED_FUNCTION_228();
  v128 = v45;
  v153 = v45;
  v131 = (v130 & ~v129);
  OUTLINED_FUNCTION_85();
  v132 = OUTLINED_FUNCTION_309();
  v133 = OUTLINED_FUNCTION_89(v132);
  v134(&v131[v133], v97, v128);
  v135 = (&v35->super.isa + v26);
  v136 = v171;
  *v135 = v168;
  v135[1] = v136;
  v177 = sub_2237A93F0;
  v178 = v26;
  OUTLINED_FUNCTION_44_0();
  v174 = 1107296256;
  OUTLINED_FUNCTION_6_6();
  v175 = v137;
  v176 = &block_descriptor_373;
  _Block_copy(&v173);
  OUTLINED_FUNCTION_370();

  v138 = v157;
  sub_2237B5CEC();
  v172 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_5_5();
  sub_223766F90(v139, v140, MEMORY[0x277D851A0]);
  v141 = OUTLINED_FUNCTION_19_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(v141, v142);
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_209();
  sub_223766FD8(v143, v144, v145, v146);
  OUTLINED_FUNCTION_296();
  v147 = v162;
  OUTLINED_FUNCTION_327();
  sub_2237B60FC();
  MEMORY[0x223DEACD0](0, v138, v136, v131);
  _Block_release(v131);

  (*(v161 + 8))(v136, v147);
  OUTLINED_FUNCTION_96();
  v148(v138, v160);
  (*(v127 + 8))(v51, v153);
  sub_223771D44(v169);

LABEL_25:
  OUTLINED_FUNCTION_14_2();
}

void sub_22379E59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, uint64_t a22)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v26;
  a20 = v27;
  OUTLINED_FUNCTION_208(v28, v29, v30, v31, v32, v33, v34, v35);
  v70 = v36;
  OUTLINED_FUNCTION_214(v37, &v86);
  OUTLINED_FUNCTION_205(a22);
  v71 = a21;
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_316(ObjectType, v87);
  OUTLINED_FUNCTION_0_2();
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_28_1(v42);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_32_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_236(&a14);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_27_1();
  v46 = sub_223761B80();
  OUTLINED_FUNCTION_64();
  sub_2237B575C();
  v75 = v24;
  v76 = v22;
  v77 = v68;
  v78 = v70;
  OUTLINED_FUNCTION_334();
  v79 = v48;
  v80 = v47;
  OUTLINED_FUNCTION_190(&a12);
  OUTLINED_FUNCTION_207();
  v81 = v49;
  v82 = v71;
  v83 = v72;
  v84 = v69;
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_223(v50, v51, v52, v53, v54, v55, 115);
  OUTLINED_FUNCTION_134(*(v24 + OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue));
  v56 = OUTLINED_FUNCTION_16_6();
  v46(v56);
  v57 = OUTLINED_FUNCTION_61(&a13);
  v46(v57);
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_9_7();
  v58 = OUTLINED_FUNCTION_221();
  v59 = OUTLINED_FUNCTION_30_1(v58);
  v23(v59);
  v60 = OUTLINED_FUNCTION_80();
  v23(v60);
  OUTLINED_FUNCTION_76((v24 + v40));
  OUTLINED_FUNCTION_78(v61);
  *v62 = sub_2237A7EB0;
  v62[1] = &v74;
  OUTLINED_FUNCTION_5_3();
  v63 = swift_allocObject();
  *(v63 + 16) = sub_223761F8C;
  *(v63 + 24) = v24;
  v87[2] = sub_223761F78;
  v87[3] = v63;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v87[0] = v64;
  v87[1] = &block_descriptor_223;
  _Block_copy(&v85);
  OUTLINED_FUNCTION_125();

  dispatch_sync(v73, v25);
  _Block_release(v25);
  OUTLINED_FUNCTION_133();
  v65 = OUTLINED_FUNCTION_146(&a14);
  (type metadata for Logger.Kind)(v65);
  v66 = OUTLINED_FUNCTION_146(&a16);
  v67 = (type metadata for Logger.Kind)(v66);
  OUTLINED_FUNCTION_22_1(v67, "");
  OUTLINED_FUNCTION_90();

  if (0x237BA700)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

uint64_t sub_22379E904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SRDRequestDispatcherInternal *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v24 = a1;
  v25 = a8;
  v22 = a4;
  v23 = a5;
  v21 = a9;
  v15 = sub_2237B544C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22376E3D4(a7, v18);
  sub_22379EB68(a2, a3, v22, v23, v18, v25, v21, a10, a11, a12, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
  return (*(v16 + 8))(v18, v15);
}

void sub_22379EB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v25;
  a20 = v26;
  v27 = v22;
  OUTLINED_FUNCTION_104(v28, v29, v30, &a18);
  v275 = v31;
  v286 = v32;
  v284 = v33;
  v35 = v34;
  v37 = v36;
  OUTLINED_FUNCTION_134(a22);
  OUTLINED_FUNCTION_129(a21);
  v38 = sub_2237B5CCC();
  v39 = OUTLINED_FUNCTION_8_6(v38, v296);
  v266 = v40;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_25_2(v41);
  v42 = sub_2237B5D0C();
  v43 = OUTLINED_FUNCTION_8_6(v42, v295);
  v263 = v44;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_25_2(v45);
  v46 = sub_2237B549C();
  v47 = OUTLINED_FUNCTION_8_6(v46, &v297);
  v270 = v48;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_62(v49);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C78, &qword_2237B9258);
  OUTLINED_FUNCTION_1(v50);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_25_2(v52);
  v53 = sub_2237B548C();
  v54 = OUTLINED_FUNCTION_8_6(v53, &a14);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_62(v55);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097C80, &unk_2237B9260);
  OUTLINED_FUNCTION_1(v56);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_4_6();
  v281 = v58;
  v59 = OUTLINED_FUNCTION_12();
  v279 = type metadata accessor for RequestDispatcher.SessionContext(v59);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_3_4();
  v278 = v61;
  OUTLINED_FUNCTION_12();
  v285 = sub_2237B412C();
  OUTLINED_FUNCTION_0_2();
  v282 = v62;
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_62(v64);
  OUTLINED_FUNCTION_204(&v293);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_20_0();
  v283 = v66;
  OUTLINED_FUNCTION_12();
  v67 = sub_2237B563C();
  OUTLINED_FUNCTION_0_2();
  v69 = v68;
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_272();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_35();
  if (qword_28131AA10 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v72 = sub_2237B5C9C();
  v287 = __swift_project_value_buffer(v72, qword_28131B550);
  v73 = sub_2237B5C8C();
  v74 = sub_2237B5FEC();
  v288 = v37;
  v290 = v27;
  if (OUTLINED_FUNCTION_261(v74))
  {
    v75 = v35;
    v76 = OUTLINED_FUNCTION_20();
    v27 = OUTLINED_FUNCTION_19_0();
    v294[0] = v27;
    *v76 = 136315138;
    *(v76 + 4) = sub_223763694(0xD000000000000072, 0x80000002237BAEE0, v294);
    _os_log_impl(&dword_22375F000, v73, v74, "%s", v76, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    OUTLINED_FUNCTION_116();
    v35 = v75;
    LOBYTE(v27) = v290;
    OUTLINED_FUNCTION_8();
  }

  sub_22376F45C();
  if (v77)
  {
    v78 = v77;
    v260 = v35;
    OUTLINED_FUNCTION_141();
    v79(v24);
    v80 = *MEMORY[0x277D5D258];
    v81 = *(v69 + 104);
    v81(v23, v80, v67);
    OUTLINED_FUNCTION_184();
    v82 = sub_223766744();
    v83 = *(v69 + 8);
    v83(v23, v67);
    v83(v24, v67);
    if ((v82 & 1) == 0)
    {
      v128 = sub_2237B5C8C();
      v129 = sub_2237B5FFC();
      if (os_log_type_enabled(v128, v129))
      {
        v292 = v128;
        v130 = OUTLINED_FUNCTION_20();
        v289 = OUTLINED_FUNCTION_19_0();
        v294[0] = v289;
        *v130 = 136315138;
        v81(v24, v80, v67);
        sub_2237B562C();
        OUTLINED_FUNCTION_357();
        v83(v24, v67);
        v131 = OUTLINED_FUNCTION_256();
        sub_223763694(v131, v132, v133);
        v134 = OUTLINED_FUNCTION_148();
        v134, v135, v136, v137, v138, v139, v140, v141;
        *(v130 + 4) = v24;
        _os_log_impl(&dword_22375F000, v292, v129, "Current session is not of type %s, cannot start correction speech request", v130, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v289);
        OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_116();
      }

      else
      {
      }

      goto LABEL_38;
    }

    v84 = v282;
    v85 = *(v282 + 16);
    v86 = v285;
    (v85)(v283, v78 + OBJC_IVAR____TtC14SiriMessageBus7Session_sessionId, v285);
    v87 = OBJC_IVAR___SRDRequestDispatcherInternal_sessionContext;
    OUTLINED_FUNCTION_14_3();
    swift_beginAccess();
    sub_22376F91C(v290 + v87, v281, &unk_27D097C80, &unk_2237B9260);
    OUTLINED_FUNCTION_312(v281, 1, v279);
    if (v88)
    {
      sub_2237710FC(v281, &unk_27D097C80, &unk_2237B9260);

      v89 = sub_2237B5C8C();
      sub_2237B5FFC();
      v286, v90, v91, v92, v93, v94, v95, v96;
      v260, v97, v98, v99, v100, v101, v102, v103;
      if (OUTLINED_FUNCTION_218())
      {
        OUTLINED_FUNCTION_25_0();
        v104 = OUTLINED_FUNCTION_137();
        OUTLINED_FUNCTION_251(v104);
        OUTLINED_FUNCTION_255(4.8151e-34);
        v106 = sub_223763694(v288, v260, v105);
        OUTLINED_FUNCTION_56_0(v106);
        *(v285 + 14) = sub_223763694(v284, v286, v294);
        OUTLINED_FUNCTION_33();
        _os_log_impl(v107, v108, v109, v110, v111, 0x16u);
        OUTLINED_FUNCTION_149();
        OUTLINED_FUNCTION_71();
        OUTLINED_FUNCTION_3_0();

        (*(v282 + 8))(v283, v285);
        goto LABEL_38;
      }
    }

    else
    {
      v144 = sub_22376F978(v281, v278);
      if (*(v278 + *(v279 + 24)) == 1)
      {
        MEMORY[0x28223BE20](v144);
        OUTLINED_FUNCTION_279();
        OUTLINED_FUNCTION_210();
        *(v145 - 16) = v147;
        *(v145 - 8) = v146;
        OUTLINED_FUNCTION_287();
        sub_2237B546C();
        OUTLINED_FUNCTION_312(v67, 1, v274);
        if (!v88)
        {
          v280 = v85;
          OUTLINED_FUNCTION_296();
          (*(v173 + 32))(v273, v67);
          v174 = objc_allocWithZone(sub_2237B553C());
          OUTLINED_FUNCTION_207();
          v176 = v175;
          v177 = sub_2237B552C();
          v178 = OUTLINED_FUNCTION_350();
          v179(v178);
          OUTLINED_FUNCTION_287();
          (*(v180 + 104))();
          v181 = v177;
          sub_22378B3F0();
          v183 = v182;

          v184 = OUTLINED_FUNCTION_350();
          v185(v184);
          if (v183)
          {
            sub_2237B411C();
            v186 = sub_2237B40FC();
            v188 = v187;
            OUTLINED_FUNCTION_129(*(v282 + 8));
            v189();

            v190 = sub_2237B5C8C();
            sub_2237B5FEC();
            v286, v191, v192, v193, v194, v195, v196, v197;
            v188, v198, v199, v200, v201, v202, v203, v204;
            if (OUTLINED_FUNCTION_28())
            {
              v205 = OUTLINED_FUNCTION_25_0();
              v294[0] = OUTLINED_FUNCTION_198();
              *v205 = 136315394;
              v206 = OUTLINED_FUNCTION_342();
              *(v205 + 4) = sub_223763694(v206, v207, v208);
              *(v205 + 12) = 2080;
              v209 = v284;
              *(v205 + 14) = sub_223763694(v284, v286, v294);
              OUTLINED_FUNCTION_181();
              _os_log_impl(v210, v211, v212, v213, v205, 0x16u);
              OUTLINED_FUNCTION_311();
              OUTLINED_FUNCTION_116();
              OUTLINED_FUNCTION_13_1();
            }

            else
            {

              v209 = v284;
            }

            v155 = v290;
            v164 = v260;
            if (sub_22378C5C8(v288, v260, v283, v209, v286, v278, v271, v272, v186, v188))
            {
              v223 = v209;
              v156 = v283;
              v224 = sub_22378CAE0(v288, v260, v283, v223, v286, v186, v188);
              OUTLINED_FUNCTION_282(v224, v225, v226, v227, v228, v229, v230, v231);
              v232 = OUTLINED_FUNCTION_284();
              v233(v232);
              v86 = v285;
              v84 = v282;
              if (v260)
              {
LABEL_42:
                if ((*(*(v155 + OBJC_IVAR___SRDRequestDispatcherInternal_assetLogger) + 32) & 1) != 0 || (OUTLINED_FUNCTION_138(), v88))
                {
                  OUTLINED_FUNCTION_216();
                  v280();
                  v234 = (*(v84 + 80) + 24) & ~*(v84 + 80);
                  OUTLINED_FUNCTION_85();
                  v235 = OUTLINED_FUNCTION_309();
                  v236 = OUTLINED_FUNCTION_354(v235);
                  v237(v236 + v234, v268, v86);
                  v238 = (v164 + v156);
                  *v238 = v284;
                  v238[1] = v286;
                  v295[1] = sub_22376D08C;
                  v296[0] = v164;
                  OUTLINED_FUNCTION_44_0();
                  v294[1] = 1107296256;
                  OUTLINED_FUNCTION_6_6();
                  v294[2] = v239;
                  v295[0] = &block_descriptor_366;
                  v240 = _Block_copy(v294);

                  sub_2237B5CEC();
                  v293 = MEMORY[0x277D84F90];
                  OUTLINED_FUNCTION_5_5();
                  sub_223766F90(v241, v242, MEMORY[0x277D851A0]);
                  v243 = OUTLINED_FUNCTION_19_2();
                  __swift_instantiateConcreteTypeFromMangledNameV2(v243, v244);
                  OUTLINED_FUNCTION_4_8();
                  OUTLINED_FUNCTION_209();
                  sub_223766FD8(v245, v246, v247, v248);
                  OUTLINED_FUNCTION_263();
                  OUTLINED_FUNCTION_197(v249, v250);
                  OUTLINED_FUNCTION_295();
                  MEMORY[0x223DEACD0]();
                  _Block_release(v240);

                  OUTLINED_FUNCTION_96();
                  v251 = OUTLINED_FUNCTION_238();
                  v252(v251);
                  OUTLINED_FUNCTION_96();
                  v253(v262, v265);
                  sub_223771D44(v278);
                  v254 = OUTLINED_FUNCTION_100();
                  v255(v254);

                  goto LABEL_38;
                }

                sub_223771D44(v278);
                v148 = *(v84 + 8);
                v149 = v283;
                goto LABEL_25;
              }

              sub_223771D44(v278);
            }

            else
            {
              v188, v216, v217, v218, v219, v220, v221, v222;

              v256 = OUTLINED_FUNCTION_284();
              v257(v256);
              sub_223771D44(v278);
            }

            OUTLINED_FUNCTION_290();
            OUTLINED_FUNCTION_210();
            v258();
            goto LABEL_38;
          }

          OUTLINED_FUNCTION_96();
          v215();
          v214 = v278;
LABEL_36:
          sub_223771D44(v214);
          v148 = *(v282 + 8);
          v149 = v283;
          v150 = v285;
          goto LABEL_37;
        }

        sub_223771D44(v278);
        (*(v282 + 8))(v283, v285);
        sub_2237710FC(v67, &qword_27D097C78, &qword_2237B9258);
LABEL_38:
        OUTLINED_FUNCTION_14_2();
        return;
      }

      v280 = v85;
      v151 = objc_allocWithZone(sub_2237B553C());
      OUTLINED_FUNCTION_207();
      v153 = v152;
      v154 = sub_2237B552C();
      v155 = v290;
      OUTLINED_FUNCTION_216();
      v156 = v284;
      OUTLINED_FUNCTION_327();
      sub_22378E068(v157, v158, v159, v160, v161, v275, v277, v276, v154, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270);
      v163 = v162;

      if ((v163 & 1) == 0 || (OUTLINED_FUNCTION_216(), OUTLINED_FUNCTION_327(), v164 = v278, (sub_22378E8C0(v165, v166, v167) & 1) == 0))
      {

        v214 = v278;
        goto LABEL_36;
      }

      OUTLINED_FUNCTION_216();
      OUTLINED_FUNCTION_327();
      v86 = v285;
      if (sub_22378CA74(v168, v169, v170, v171, v172))
      {
        goto LABEL_42;
      }

      sub_223771D44(v278);
    }

    v148 = *(v282 + 8);
    v149 = v283;
LABEL_25:
    v150 = v86;
LABEL_37:
    v148(v149, v150);
    goto LABEL_38;
  }

  v291 = sub_2237B5C8C();
  v112 = sub_2237B5FFC();
  OUTLINED_FUNCTION_282(v112, v113, v114, v115, v116, v117, v118, v119);
  v35, v120, v121, v122, v123, v124, v125, v126;
  if (os_log_type_enabled(v291, v27))
  {
    OUTLINED_FUNCTION_25_0();
    v294[0] = OUTLINED_FUNCTION_99();
    *v287 = 136315394;
    v127 = sub_223763694(v288, v35, v294);
    OUTLINED_FUNCTION_45_0(v127);
    *(v287 + 14) = sub_223763694(v284, v286, v294);
    OUTLINED_FUNCTION_257(&dword_22375F000, v291, v27, "No active session for assistantId: %s cannot start correction speech request for request id: %s");
    OUTLINED_FUNCTION_98();
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_74();

    goto LABEL_38;
  }

  OUTLINED_FUNCTION_14_2();
}

void sub_22379FBDC()
{
  OUTLINED_FUNCTION_16_3();
  v27 = v3;
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_158(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_24_2();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_27_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_82("startSpeechDictationSession(withAssistantId:languageCode:recognitionOnDevice:)");
  v29 = v1;
  v30 = v27;
  v9 = sub_223761B80();
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_223(v10, v11, v12, v13, v14, v15, 78);
  v16 = OUTLINED_FUNCTION_48_0(OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue);
  v2(v16);
  v17 = OUTLINED_FUNCTION_151();
  v2(v17);
  OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_105();
  v18 = OUTLINED_FUNCTION_260();
  v19 = v9[4];
  v20 = OUTLINED_FUNCTION_49_0(v18);
  v19(v20);
  v21 = OUTLINED_FUNCTION_52_0();
  v19(v21);
  OUTLINED_FUNCTION_41_0((v9 + v18));
  v22 = (&type metadata for Logger + v18);
  *v22 = sub_2237A7EC8;
  v22[1] = &v28;
  OUTLINED_FUNCTION_5_3();
  v23 = swift_allocObject();
  *(v23 + 16) = sub_223761F8C;
  *(v23 + 24) = v18;
  v31[4] = sub_223761F78;
  v31[5] = v23;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v31[2] = v24;
  v31[3] = &block_descriptor_234;
  _Block_copy(v31);
  OUTLINED_FUNCTION_252();

  OUTLINED_FUNCTION_362();
  _Block_release(v9);
  v25 = OUTLINED_FUNCTION_156();
  (type metadata for Logger.Kind)(v25);
  v26 = (type metadata for Logger.Kind)(v2, v0);
  OUTLINED_FUNCTION_22_1(v26, "");
  OUTLINED_FUNCTION_121();

  if (v0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

void sub_22379FEA0()
{
  OUTLINED_FUNCTION_16_3();
  v6 = OUTLINED_FUNCTION_237(v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_0_2();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v12 = v11 - v10;
  sub_2237B412C();
  OUTLINED_FUNCTION_0_2();
  v45 = v14;
  v47 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_232();
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_14_3();
  sub_223764358(v15, v16, v17, v18, 1, 0, v19, v20, v43, v44, v45, v47, v49, v50, v51, v52, v53, v54, v55, v56);
  OUTLINED_FUNCTION_304();
  v21(v12);
  v22 = OUTLINED_FUNCTION_19_3();
  sub_223763E48(v22, v23, v12);
  (*(v8 + 8))(v12, v6);
  OUTLINED_FUNCTION_224();
  v24 = objc_allocWithZone(sub_2237B503C());
  v25 = sub_2237B4FDC();
  if (v25)
  {
    v26 = v25;
    sub_2237654A4(v25);
  }

  else
  {
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v27 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v27, qword_28131B550);

    v28 = sub_2237B5C8C();
    v29 = sub_2237B5FFC();
    OUTLINED_FUNCTION_282(v29, v30, v31, v32, v33, v34, v35, v36);
    if (OUTLINED_FUNCTION_57())
    {
      v37 = OUTLINED_FUNCTION_20();
      v38 = OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_339(v38);
      *v37 = 136315138;
      v39 = OUTLINED_FUNCTION_19_3();
      *(v37 + 4) = sub_223763694(v39, v40, v41);
      OUTLINED_FUNCTION_239(&dword_22375F000, v42, v12, "Cannot create StartSpeechDictationSessionMessage for assistantId: %s");
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_13_1();
    }
  }

  (*(v46 + 8))(v0, v48);
  OUTLINED_FUNCTION_14_2();
}

uint64_t sub_2237A0108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v18[3] = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v18 - v12;
  v14 = *MEMORY[0x277D5CDC8];
  v15 = sub_2237B540C();
  (*(*(v15 - 8) + 104))(v13, v14, v15);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v15);
  sub_2237B501C();

  sub_2237B4FEC();
  v16 = sub_2237B412C();
  (*(*(v16 - 8) + 16))(v10, a4, v16);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v16);
  sub_2237B502C();

  sub_2237B4FFC();
  return sub_2237B500C();
}

void sub_2237A02F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v24;
  a20 = v25;
  OUTLINED_FUNCTION_51_0(v26, v27, v28, v29, v30, v31);
  OUTLINED_FUNCTION_250();
  v32 = sub_2237B5C7C();
  v33 = OUTLINED_FUNCTION_8_6(v32, &a17);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_28_1(v38);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_28_1(v40);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_27_1();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_29_1();
  v65 = v22;
  v66 = v23;
  v67 = v20;
  v68 = v63;
  OUTLINED_FUNCTION_42_0();
  v43 = OUTLINED_FUNCTION_313();
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_364(v44, v45, v46, v47, v48, v49, 84);
  v50 = OUTLINED_FUNCTION_43_0(OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue);
  v22(v50);
  v51 = OUTLINED_FUNCTION_111();
  v22(v51);
  OUTLINED_FUNCTION_21_3();
  v52 = OUTLINED_FUNCTION_260();
  v53 = OUTLINED_FUNCTION_54_0(v52);
  (v21)(v53);
  OUTLINED_FUNCTION_230();
  v21();
  OUTLINED_FUNCTION_76((v52 + v37));
  OUTLINED_FUNCTION_84(v54);
  v55 = (&type metadata for Logger + v52);
  *v55 = sub_2237A7EE0;
  v55[1] = &v64;
  OUTLINED_FUNCTION_5_3();
  v56 = swift_allocObject();
  *(v56 + 16) = sub_223761F8C;
  *(v56 + 24) = v52;
  v69[4] = sub_223761F78;
  v69[5] = v56;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v69[2] = v57;
  v69[3] = &block_descriptor_245;
  _Block_copy(v69);
  OUTLINED_FUNCTION_175();

  v58 = OUTLINED_FUNCTION_335();
  dispatch_sync(v58, v59);
  _Block_release(v43);
  v60 = OUTLINED_FUNCTION_83();
  (type metadata for Logger.Kind)(v60);
  v61 = OUTLINED_FUNCTION_324();
  v62 = (type metadata for Logger.Kind)(v61);
  OUTLINED_FUNCTION_22_1(v62, "");
  OUTLINED_FUNCTION_90();

  if (v35)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

uint64_t sub_2237A05BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SRDRequestDispatcherInternal *a7, uint64_t a8)
{
  v25 = a5;
  v26 = a8;
  v12 = sub_2237B544C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a7)
  {
    v16 = a7;
  }

  else
  {
    v16 = 0xE000000000000000;
  }

  sub_22376E3D4(v16, v15);
  v16, v17, v18, v19, v20, v21, v22, v23;
  sub_2237A07D4(a2, a3, a4, v25, v15, v26);
  return (*(v13 + 8))(v15, v12);
}

void sub_2237A0C38()
{
  OUTLINED_FUNCTION_16_3();
  v27 = v3;
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_158(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_24_2();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_27_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_82("startUnderstandingDictationSession(withAssistantId:languageCode:understandingOnDevice:)");
  v29 = v1;
  v30 = v27;
  v9 = sub_223761B80();
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_223(v10, v11, v12, v13, v14, v15, 87);
  v16 = OUTLINED_FUNCTION_48_0(OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue);
  v2(v16);
  v17 = OUTLINED_FUNCTION_151();
  v2(v17);
  OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_105();
  v18 = OUTLINED_FUNCTION_260();
  v19 = v9[4];
  v20 = OUTLINED_FUNCTION_49_0(v18);
  v19(v20);
  v21 = OUTLINED_FUNCTION_52_0();
  v19(v21);
  OUTLINED_FUNCTION_41_0((v9 + v18));
  v22 = (&type metadata for Logger + v18);
  *v22 = sub_2237A7EF8;
  v22[1] = &v28;
  OUTLINED_FUNCTION_5_3();
  v23 = swift_allocObject();
  *(v23 + 16) = sub_223761F8C;
  *(v23 + 24) = v18;
  v31[4] = sub_223761F78;
  v31[5] = v23;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v31[2] = v24;
  v31[3] = &block_descriptor_256;
  _Block_copy(v31);
  OUTLINED_FUNCTION_252();

  OUTLINED_FUNCTION_362();
  _Block_release(v9);
  v25 = OUTLINED_FUNCTION_156();
  (type metadata for Logger.Kind)(v25);
  v26 = (type metadata for Logger.Kind)(v2, v0);
  OUTLINED_FUNCTION_22_1(v26, "");
  OUTLINED_FUNCTION_121();

  if (v0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

void sub_2237A0EFC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  sub_2237B5E2C();
  v9 = v8;
  sub_2237B5E2C();
  v11 = v10;
  v12 = a1;
  v13 = OUTLINED_FUNCTION_240();
  a6(v13);

  v9, v14, v15, v16, v17, v18, v19, v20;

  v11, v21, v22, v23, v24, v25, v26, v27;
}

void sub_2237A0FA4()
{
  OUTLINED_FUNCTION_16_3();
  v6 = OUTLINED_FUNCTION_237(v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_0_2();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v12 = v11 - v10;
  sub_2237B412C();
  OUTLINED_FUNCTION_0_2();
  v45 = v14;
  v47 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_232();
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_14_3();
  sub_223764358(v15, v16, v17, v18, 1, 0, v19, v20, v43, v44, v45, v47, v49, v50, v51, v52, v53, v54, v55, v56);
  OUTLINED_FUNCTION_304();
  v21(v12);
  v22 = OUTLINED_FUNCTION_19_3();
  sub_223763E48(v22, v23, v12);
  (*(v8 + 8))(v12, v6);
  OUTLINED_FUNCTION_224();
  v24 = objc_allocWithZone(sub_2237B51EC());
  v25 = sub_2237B518C();
  if (v25)
  {
    v26 = v25;
    sub_2237654A4(v25);
  }

  else
  {
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v27 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v27, qword_28131B550);

    v28 = sub_2237B5C8C();
    v29 = sub_2237B5FFC();
    OUTLINED_FUNCTION_282(v29, v30, v31, v32, v33, v34, v35, v36);
    if (OUTLINED_FUNCTION_57())
    {
      v37 = OUTLINED_FUNCTION_20();
      v38 = OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_339(v38);
      *v37 = 136315138;
      v39 = OUTLINED_FUNCTION_19_3();
      *(v37 + 4) = sub_223763694(v39, v40, v41);
      OUTLINED_FUNCTION_239(&dword_22375F000, v42, v12, "Cannot create StartUnderstandingDictationSessionMessage for assistantId: %s");
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_13_1();
    }
  }

  (*(v46 + 8))(v0, v48);
  OUTLINED_FUNCTION_14_2();
}

uint64_t sub_2237A120C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v18[3] = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v18 - v12;
  v14 = *MEMORY[0x277D5CDC8];
  v15 = sub_2237B540C();
  (*(*(v15 - 8) + 104))(v13, v14, v15);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v15);
  sub_2237B51CC();

  sub_2237B519C();
  v16 = sub_2237B412C();
  (*(*(v16 - 8) + 16))(v10, a4, v16);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v16);
  sub_2237B51DC();

  sub_2237B51AC();
  return sub_2237B51BC();
}

void sub_2237A13F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v24;
  a20 = v25;
  OUTLINED_FUNCTION_51_0(v26, v27, v28, v29, v30, v31);
  OUTLINED_FUNCTION_250();
  v32 = sub_2237B5C7C();
  v33 = OUTLINED_FUNCTION_8_6(v32, &a17);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_28_1(v38);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_28_1(v40);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_27_1();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_29_1();
  v65 = v22;
  v66 = v23;
  v67 = v20;
  v68 = v63;
  OUTLINED_FUNCTION_42_0();
  v43 = OUTLINED_FUNCTION_313();
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_364(v44, v45, v46, v47, v48, v49, 91);
  v50 = OUTLINED_FUNCTION_43_0(OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue);
  v22(v50);
  v51 = OUTLINED_FUNCTION_111();
  v22(v51);
  OUTLINED_FUNCTION_21_3();
  v52 = OUTLINED_FUNCTION_260();
  v53 = OUTLINED_FUNCTION_54_0(v52);
  (v21)(v53);
  OUTLINED_FUNCTION_230();
  v21();
  OUTLINED_FUNCTION_76((v52 + v37));
  OUTLINED_FUNCTION_84(v54);
  v55 = (&type metadata for Logger + v52);
  *v55 = sub_2237A7F44;
  v55[1] = &v64;
  OUTLINED_FUNCTION_5_3();
  v56 = swift_allocObject();
  *(v56 + 16) = sub_223761F8C;
  *(v56 + 24) = v52;
  v69[4] = sub_223761F78;
  v69[5] = v56;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v69[2] = v57;
  v69[3] = &block_descriptor_267;
  _Block_copy(v69);
  OUTLINED_FUNCTION_175();

  v58 = OUTLINED_FUNCTION_335();
  dispatch_sync(v58, v59);
  _Block_release(v43);
  v60 = OUTLINED_FUNCTION_83();
  (type metadata for Logger.Kind)(v60);
  v61 = OUTLINED_FUNCTION_324();
  v62 = (type metadata for Logger.Kind)(v61);
  OUTLINED_FUNCTION_22_1(v62, "");
  OUTLINED_FUNCTION_90();

  if (v35)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

uint64_t sub_2237A16C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SRDRequestDispatcherInternal *a7, uint64_t a8)
{
  v14[1] = a8;
  v9 = sub_2237B544C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22376E3D4(a7, v12);
  sub_2237A17FC();
  return (*(v10 + 8))(v12, v9);
}

void sub_2237A17FC()
{
  OUTLINED_FUNCTION_16_3();
  v103 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_188();
  sub_2237B412C();
  OUTLINED_FUNCTION_0_2();
  v104 = v12;
  v105 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_4();
  v106 = v13;
  OUTLINED_FUNCTION_12();
  v14 = sub_2237B563C();
  OUTLINED_FUNCTION_0_2();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_272();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_50_0();
  v19 = *(v0 + OBJC_IVAR___SRDRequestDispatcherInternal_sessionsManager);
  OUTLINED_FUNCTION_340();
  sub_22376F45C();
  if (v20)
  {
    v101 = v3;
    v102 = v8;
    OUTLINED_FUNCTION_141();
    v22 = v21;
    v23(v1);
    v24 = *MEMORY[0x277D5D250];
    v100 = *(v16 + 104);
    v100(v2, v24, v14);
    v25 = sub_223766744();
    v26 = *(v16 + 8);
    v26(v2, v14);
    v26(v1, v14);
    if (v25)
    {
      v27 = (*(v104 + 16))(v106, v22 + OBJC_IVAR____TtC14SiriMessageBus7Session_sessionId, v105);
      MEMORY[0x28223BE20](v27);
      OUTLINED_FUNCTION_277();
      *(v28 - 64) = v101;
      *(v28 - 56) = v10;
      *(v28 - 48) = v106;
      *(v28 - 40) = v102;
      *(v28 - 32) = v6;
      *(v28 - 24) = v103;
      OUTLINED_FUNCTION_225(v28);
      objc_allocWithZone(sub_2237B517C());
      OUTLINED_FUNCTION_144();
      v29 = sub_2237B4F5C();
      if (v29)
      {
        v30 = v29;
        sub_2237654A4(v29);
      }

      else
      {
        if (qword_28131AA10 != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v79 = sub_2237B5C9C();
        OUTLINED_FUNCTION_13(v79, qword_28131B550);

        v80 = sub_2237B5C8C();
        v81 = sub_2237B5FFC();
        OUTLINED_FUNCTION_361(v81, v82, v83, v84, v85, v86, v87, v88);
        if (OUTLINED_FUNCTION_218())
        {
          OUTLINED_FUNCTION_20();
          v89 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_325(v89);
          OUTLINED_FUNCTION_303(4.8149e-34);
          v90 = OUTLINED_FUNCTION_119();
          sub_223763694(v90, v91, v92);
          OUTLINED_FUNCTION_33();
          _os_log_impl(v93, v94, v95, v96, v97, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v106);
          OUTLINED_FUNCTION_8();
          OUTLINED_FUNCTION_3_0();
        }
      }

      v98 = OUTLINED_FUNCTION_292();
      v99(v98);
    }

    else
    {
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v54 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v54, qword_28131B550);

      v55 = sub_2237B5C8C();
      v56 = sub_2237B5FFC();
      v6, v57, v58, v59, v60, v61, v62, v63;
      if (os_log_type_enabled(v55, v56))
      {
        v64 = OUTLINED_FUNCTION_25_0();
        v108 = OUTLINED_FUNCTION_198();
        *v64 = 136315394;
        v100(v1, v24, v14);
        v65 = sub_2237B562C();
        v26(v1, v14);
        v66 = OUTLINED_FUNCTION_1_1();
        sub_223763694(v66, v67, v68);
        v69 = OUTLINED_FUNCTION_249();
        v69, v70, v71, v72, v73, v74, v75, v76;
        *(v64 + 4) = v65;
        *(v64 + 12) = 2080;
        *(v64 + 14) = sub_223763694(v102, v6, &v108);
        _os_log_impl(&dword_22375F000, v55, v56, "Current session type is not of type %s, cannot start understanding dictation request for requestId: %s", v64, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_116();
        OUTLINED_FUNCTION_13_5();
      }

      else
      {
      }
    }

    goto LABEL_23;
  }

  if (qword_28131AA10 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v31 = sub_2237B5C9C();
  OUTLINED_FUNCTION_13(v31, qword_28131B550);

  v107 = sub_2237B5C8C();
  sub_2237B5FFC();
  v32 = OUTLINED_FUNCTION_90();
  v32, v33, v34, v35, v36, v37, v38, v39;
  v10, v40, v41, v42, v43, v44, v45, v46;
  if (OUTLINED_FUNCTION_368())
  {
    OUTLINED_FUNCTION_25_0();
    v47 = OUTLINED_FUNCTION_99();
    OUTLINED_FUNCTION_301(v47);
    OUTLINED_FUNCTION_212(4.8151e-34);
    v48 = OUTLINED_FUNCTION_340();
    v51 = sub_223763694(v48, v49, v50);
    OUTLINED_FUNCTION_45_0(v51);
    *(v19 + 14) = sub_223763694(v8, v6, &v108);
    OUTLINED_FUNCTION_152(&dword_22375F000, v52, v53, "No active session for assistantId: %s cannot start understanding dictation request for request id: %s");
    OUTLINED_FUNCTION_98();
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_74();

LABEL_23:
    OUTLINED_FUNCTION_14_2();
    return;
  }

  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_14_2();
}

void sub_2237A1DE0()
{
  OUTLINED_FUNCTION_16_3();
  v4 = v3;
  v31 = v5;
  v30 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C70, &qword_2237B9250);
  OUTLINED_FUNCTION_1(v7);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_348();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  OUTLINED_FUNCTION_1(v9);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_113();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  OUTLINED_FUNCTION_1(v11);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_232();
  v13 = *MEMORY[0x277D5CDC8];
  v14 = sub_2237B540C();
  OUTLINED_FUNCTION_4();
  (*(v15 + 104))(v0, v13, v14);
  OUTLINED_FUNCTION_12_4();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v14);
  sub_2237B4F9C();

  OUTLINED_FUNCTION_13_3();
  sub_2237B4F6C();
  v19 = sub_2237B412C();
  OUTLINED_FUNCTION_4();
  (*(v20 + 16))(v2, v30, v19);
  OUTLINED_FUNCTION_12_4();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v19);
  sub_2237B4FBC();

  sub_2237B4FAC();
  v24 = sub_2237B544C();
  OUTLINED_FUNCTION_4();
  (*(v25 + 16))(v1, v31, v24);
  OUTLINED_FUNCTION_12_4();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v24);
  sub_2237B4F7C();
  v29 = v4;
  sub_2237B4F8C();
  OUTLINED_FUNCTION_14_2();
}

void sub_2237A2018()
{
  OUTLINED_FUNCTION_16_3();
  v3 = v0;
  v5 = v4;
  OUTLINED_FUNCTION_188();
  sub_2237B5C7C();
  OUTLINED_FUNCTION_0_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_112();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_35();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_27_1();
  v40[2] = v3;
  v41 = v2;
  v42 = v5;
  v15 = sub_223761B80();
  v39 = v1;
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_363(v16, v17, v18, v19, v20, v21, 37);
  v22 = OUTLINED_FUNCTION_169(OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue);
  (v15)(v22);
  OUTLINED_FUNCTION_170();
  v15();
  v23 = v7;
  v37 = v7;
  OUTLINED_FUNCTION_53_0();
  v25 = v24 & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v27 = *(v23 + 32);
  OUTLINED_FUNCTION_139();
  v27();
  v28 = OUTLINED_FUNCTION_67();
  (v27)(v28);
  OUTLINED_FUNCTION_76((&type metadata for Logger + v26));
  *(v29 + 8) = 0x80000002237BA8F0;
  v30 = (v26 + v25);
  *v30 = sub_2237A7F5C;
  v30[1] = v40;
  OUTLINED_FUNCTION_5_3();
  v31 = swift_allocObject();
  *(v31 + 16) = sub_223761F8C;
  *(v31 + 24) = v26;
  v43[4] = sub_223761F78;
  v43[5] = v31;
  OUTLINED_FUNCTION_7_5();
  v43[1] = 1107296256;
  OUTLINED_FUNCTION_0_5();
  v43[2] = v32;
  v43[3] = &block_descriptor_278;
  v33 = _Block_copy(v43);

  dispatch_sync(v38, v33);
  _Block_release(v33);
  v34 = *(v37 + 8);
  v35 = OUTLINED_FUNCTION_231();
  v34(v35);
  v36 = (v34)(v39, v11);
  OUTLINED_FUNCTION_22_1(v36, "");
  OUTLINED_FUNCTION_90();

  if (v11)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

uint64_t sub_2237A2318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097D20, &qword_2237B92E0);
  v5 = sub_2237B563C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2237B9140;
  v10 = v9 + v8;
  v11 = *(v6 + 104);
  v11(v10, *MEMORY[0x277D5D260], v5);
  v11(v10 + v7, *MEMORY[0x277D5D250], v5);
  sub_223764358(a2, a3, v9, 0, 1, 0, v12, v13, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, vars0, vars8);
  swift_setDeallocating();
  return sub_2237A67E4();
}

void sub_2237A24D0()
{
  OUTLINED_FUNCTION_16_3();
  v4 = v0;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_174();
  sub_2237B5C7C();
  OUTLINED_FUNCTION_0_2();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_31_0();
  v38 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_24_2();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_27_1();
  v39[2] = v4;
  v40 = v1;
  v41 = v10;
  v42 = v8;
  v43 = v6;
  v18 = sub_223761B80();
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_320(v19, v20, v21, v22, v23, v24, 53);
  v25 = OUTLINED_FUNCTION_154(OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue);
  v18(v25);
  v26 = OUTLINED_FUNCTION_119();
  v18(v26);
  OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_79();
  v27 = OUTLINED_FUNCTION_221();
  v28 = OUTLINED_FUNCTION_46_0(v27);
  v3(v28);
  v29 = OUTLINED_FUNCTION_52_0();
  v3(v29);
  OUTLINED_FUNCTION_41_0((&type metadata for Logger + v27));
  v30 = (v27 + v2);
  *v30 = sub_2237A7F68;
  v30[1] = v39;
  OUTLINED_FUNCTION_5_3();
  v31 = swift_allocObject();
  *(v31 + 16) = sub_223761F8C;
  *(v31 + 24) = v27;
  v44[4] = sub_223761F78;
  v44[5] = v31;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v44[2] = v32;
  v44[3] = &block_descriptor_289;
  _Block_copy(v44);
  OUTLINED_FUNCTION_195();

  v33 = OUTLINED_FUNCTION_285();
  dispatch_sync(v33, v34);
  _Block_release(v38);
  v35 = OUTLINED_FUNCTION_160();
  (type metadata for Logger.Kind)(v35);
  v36 = OUTLINED_FUNCTION_202();
  v37 = (type metadata for Logger.Kind)(v36);
  OUTLINED_FUNCTION_22_1(v37, "");
  OUTLINED_FUNCTION_121();

  if (v12)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

void sub_2237A27A8()
{
  OUTLINED_FUNCTION_16_3();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_262();
  v7 = sub_2237B412C();
  OUTLINED_FUNCTION_0_2();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17_4();
  OUTLINED_FUNCTION_120();
  sub_22376F45C();
  if (v11)
  {
    OUTLINED_FUNCTION_241();
    v13 = v12(v0);
    MEMORY[0x28223BE20](v13);
    OUTLINED_FUNCTION_278();
    *(v14 - 48) = v2;
    *(v14 - 40) = v1;
    *(v14 - 32) = v0;
    *(v14 - 24) = v6;
    *(v14 - 16) = v4;
    v15 = objc_allocWithZone(sub_2237B496C());
    OUTLINED_FUNCTION_34_0();
    v16 = sub_2237B44FC();
    if (v16)
    {
      v17 = v16;
      sub_2237654A4(v16);

      (*(v9 + 8))(v0, v7);
    }

    else
    {
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v42 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v42, qword_28131B550);

      v43 = sub_2237B5C8C();
      sub_2237B5FFC();
      v4, v44, v45, v46, v47, v48, v49, v50;
      if (OUTLINED_FUNCTION_365())
      {
        v51 = OUTLINED_FUNCTION_20();
        v64 = OUTLINED_FUNCTION_19_0();
        *v51 = 136315138;
        v52 = OUTLINED_FUNCTION_136();
        *(v51 + 4) = sub_223763694(v52, v53, v54);
        OUTLINED_FUNCTION_331();
        _os_log_impl(v55, v56, v57, v58, v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v64);
        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_135();
      }

      v59 = OUTLINED_FUNCTION_19_3();
      v60(v59);
    }

    goto LABEL_13;
  }

  if (qword_28131AA10 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v18 = sub_2237B5C9C();
  OUTLINED_FUNCTION_13(v18, qword_28131B550);

  v63 = sub_2237B5C8C();
  v19 = sub_2237B5FFC();
  v4, v20, v21, v22, v23, v24, v25, v26;
  v1, v27, v28, v29, v30, v31, v32, v33;
  if (os_log_type_enabled(v63, v19))
  {
    v34 = OUTLINED_FUNCTION_25_0();
    v35 = OUTLINED_FUNCTION_198();
    OUTLINED_FUNCTION_325(v35);
    *v34 = 136315394;
    v36 = OUTLINED_FUNCTION_120();
    *(v34 + 4) = sub_223763694(v36, v37, v38);
    *(v34 + 12) = 2080;
    v39 = OUTLINED_FUNCTION_136();
    *(v34 + 14) = sub_223763694(v39, v40, v41);
    _os_log_impl(&dword_22375F000, v63, v19, "No active session for assistantId: %s, cannot pause dictation recognition for requestId: %s", v34, 0x16u);
    OUTLINED_FUNCTION_310();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_71();

LABEL_13:
    OUTLINED_FUNCTION_14_2();
    return;
  }

  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_14_2();
}

void sub_2237A2B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v24;
  a20 = v25;
  OUTLINED_FUNCTION_244(v26, v27, v28, v29, v30, v31, v32);
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v75 = a22;
  OUTLINED_FUNCTION_205(a21);
  v41 = sub_2237B5C7C();
  OUTLINED_FUNCTION_0_2();
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_28_1(v47);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_28_1(v49);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_20_4();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_35();
  v78 = v22;
  v79 = v40;
  v80 = v38;
  v81 = v36;
  v82 = v34;
  v83 = v76;
  OUTLINED_FUNCTION_87(&a12);
  OUTLINED_FUNCTION_183();
  v84 = v53;
  v85 = v52;
  v86 = v75;
  sub_223761B80();
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_363(v54, v55, v56, v57, v58, v59, 90);
  OUTLINED_FUNCTION_129(*(v22 + OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue));
  v60 = *(v43 + 16);
  OUTLINED_FUNCTION_155(&a13);
  OUTLINED_FUNCTION_283();
  v60();
  v61 = OUTLINED_FUNCTION_185(&a15);
  (v60)(v61, v23, v41);
  v62 = *(v43 + 80);
  v63 = (v62 + 16) & ~v62;
  v64 = (v45 + ((v45 + v62 + v63) & ~v62) + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = OUTLINED_FUNCTION_305();
  v66 = *(v43 + 32);
  (v66)(v65 + v63, v43, v41);
  OUTLINED_FUNCTION_283();
  v66();
  OUTLINED_FUNCTION_76((v65 + v64));
  OUTLINED_FUNCTION_84(v67);
  v68 = (v65 + ((v64 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v68 = sub_2237A7F80;
  v68[1] = &v77;
  OUTLINED_FUNCTION_5_3();
  v69 = swift_allocObject();
  *(v69 + 16) = sub_223761F8C;
  *(v69 + 24) = v65;
  v87[4] = sub_223761F78;
  v87[5] = v69;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v87[2] = v70;
  v87[3] = &block_descriptor_300;
  _Block_copy(v87);
  OUTLINED_FUNCTION_175();

  v71 = OUTLINED_FUNCTION_101();
  dispatch_sync(v71, ((v64 + 23) & 0xFFFFFFFFFFFFFFF8));
  _Block_release(((v64 + 23) & 0xFFFFFFFFFFFFFFF8));
  v72 = OUTLINED_FUNCTION_86();
  (v66)(v72, v41);
  v73 = OUTLINED_FUNCTION_143();
  v74 = (v66)(v73, v41);
  OUTLINED_FUNCTION_22_1(v74, "");
  OUTLINED_FUNCTION_121();

  if (v43)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

void sub_2237A2FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_16_3();
  v94 = v24;
  v95 = v25;
  v92 = v26;
  v93 = v27;
  v29 = v28;
  v91 = a22;
  v30 = sub_2237B412C();
  OUTLINED_FUNCTION_0_2();
  v32 = v31;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_232();
  v34 = *(v22 + OBJC_IVAR___SRDRequestDispatcherInternal_sessionsManager);
  OUTLINED_FUNCTION_215();
  sub_22376F45C();
  if (v35)
  {
    OUTLINED_FUNCTION_241();
    v89 = v36;
    v38 = v37(v23);
    v90 = v30;
    MEMORY[0x28223BE20](v38);
    OUTLINED_FUNCTION_225(&v89);
    v39 = objc_allocWithZone(sub_2237B4A7C());
    OUTLINED_FUNCTION_34_0();
    v40 = sub_2237B49FC();
    if (v40)
    {
      v41 = v40;
      sub_2237654A4(v40);

      (*(v32 + 8))(v23, v90);
    }

    else
    {
      v68 = v90;
      v95 = v23;
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v69 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v69, qword_28131B550);

      v70 = sub_2237B5C8C();
      v71 = sub_2237B5FFC();
      OUTLINED_FUNCTION_321(v71, v72, v73, v74, v75, v76, v77, v78);
      if (OUTLINED_FUNCTION_57())
      {
        OUTLINED_FUNCTION_20();
        v79 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_300(v79);
        OUTLINED_FUNCTION_303(4.8149e-34);
        v80 = OUTLINED_FUNCTION_100();
        *(v23 + 4) = sub_223763694(v80, v81, v82);
        OUTLINED_FUNCTION_247();
        OUTLINED_FUNCTION_217(v83, v84, v85, v86);
        OUTLINED_FUNCTION_22_0();
        OUTLINED_FUNCTION_3_0();
      }

      (*(v32 + 8))(v95, v68);
    }

    goto LABEL_13;
  }

  if (qword_28131AA10 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v42 = sub_2237B5C9C();
  OUTLINED_FUNCTION_13(v42, qword_28131B550);

  v95 = sub_2237B5C8C();
  v43 = sub_2237B5FFC();
  OUTLINED_FUNCTION_321(v43, v44, v45, v46, v47, v48, v49, v50);
  v29, v51, v52, v53, v54, v55, v56, v57;
  if (OUTLINED_FUNCTION_368())
  {
    OUTLINED_FUNCTION_25_0();
    v58 = OUTLINED_FUNCTION_99();
    OUTLINED_FUNCTION_301(v58);
    OUTLINED_FUNCTION_212(4.8151e-34);
    v59 = OUTLINED_FUNCTION_293();
    v62 = sub_223763694(v59, v60, v61);
    OUTLINED_FUNCTION_45_0(v62);
    v63 = OUTLINED_FUNCTION_171();
    *(v34 + 14) = sub_223763694(v63, v64, v65);
    OUTLINED_FUNCTION_152(&dword_22375F000, v66, v67, "No active session for assistantId: %s, cannot resume dictation recognition for requestId: %s");
    OUTLINED_FUNCTION_98();
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_74();

LABEL_13:
    OUTLINED_FUNCTION_14_2();
    return;
  }

  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_14_2();
}

uint64_t sub_2237A3354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v22[1] = a5;
  v22[2] = a7;
  v22[0] = a4;
  v22[4] = a12;
  v22[5] = a11;
  v22[3] = a9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v22 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v22 - v16;
  v18 = *MEMORY[0x277D5CDC8];
  v19 = sub_2237B540C();
  (*(*(v19 - 8) + 104))(v17, v18, v19);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v19);
  sub_2237B4A4C();

  sub_2237B4A1C();
  v20 = sub_2237B412C();
  (*(*(v20 - 8) + 16))(v14, v22[0], v20);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v20);
  sub_2237B4A6C();

  sub_2237B4A5C();

  sub_2237B4A0C();

  sub_2237B4A2C();

  return sub_2237B4A3C();
}

void sub_2237A3588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22, __int128 a23)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v27;
  a20 = v28;
  v67 = v29;
  OUTLINED_FUNCTION_288(v30, v85);
  v65 = a23;
  v64 = a22;
  v63 = a21;
  sub_2237B5C7C();
  OUTLINED_FUNCTION_0_2();
  v69 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_28_1(v35);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_28_1(v37);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_59();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_20_4();
  v71 = v23;
  v72 = v24;
  v73 = v26;
  v74 = v25;
  v75 = v23;
  v76 = v66;
  OUTLINED_FUNCTION_183();
  v77 = v41;
  v78 = v40;
  v79 = v67;
  v80 = v63;
  v81 = v64;
  v82 = v65;
  OUTLINED_FUNCTION_338();
  v83 = v42;
  v43 = sub_223761B80();
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_323();
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_223(v44, v45, v46, v47, v48, v49, 188);
  v68 = *(v23 + OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue);
  v50 = *(v69 + 16);
  v51 = OUTLINED_FUNCTION_107(&a9);
  v50(v51);
  v52 = OUTLINED_FUNCTION_65();
  v50(v52);
  OUTLINED_FUNCTION_23_2();
  v53 = OUTLINED_FUNCTION_305();
  v54 = OUTLINED_FUNCTION_103(v53);
  (type metadata for Logger.Kind)(v54);
  v55 = OUTLINED_FUNCTION_67();
  (type metadata for Logger.Kind)(v55);
  OUTLINED_FUNCTION_76((v69 + 16 + v33));
  OUTLINED_FUNCTION_84(v56);
  v57 = &v43[v69 + 16];
  *v57 = sub_2237A7FBC;
  v57[1] = &v70;
  OUTLINED_FUNCTION_5_3();
  v58 = swift_allocObject();
  *(v58 + 16) = sub_223761F8C;
  *(v58 + 24) = v69 + 16;
  v85[0] = sub_223761F78;
  v85[1] = v58;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v84[2] = v59;
  v84[3] = &block_descriptor_311;
  _Block_copy(v84);
  OUTLINED_FUNCTION_253();

  dispatch_sync(v68, v43);
  _Block_release(v43);
  OUTLINED_FUNCTION_351();
  v60 = OUTLINED_FUNCTION_145(&a11);
  (type metadata for Logger.Kind)(v60);
  v61 = OUTLINED_FUNCTION_145(&a13);
  v62 = (type metadata for Logger.Kind)(v61);
  OUTLINED_FUNCTION_22_1(v62, "");
  OUTLINED_FUNCTION_90();

  if (0x237BA9C0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

void sub_2237A3AD4()
{
  OUTLINED_FUNCTION_16_3();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_2237B412C();
  OUTLINED_FUNCTION_0_2();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_17_4();
  v14 = *(v0 + OBJC_IVAR___SRDRequestDispatcherInternal_sessionsManager);
  OUTLINED_FUNCTION_215();
  sub_22376F45C();
  if (v15)
  {
    OUTLINED_FUNCTION_241();
    v17 = v16(v1);
    MEMORY[0x28223BE20](v17);
    v18 = objc_allocWithZone(sub_2237B489C());
    OUTLINED_FUNCTION_34_0();
    v19 = sub_2237B47CC();
    if (v19)
    {
      v20 = v19;
      sub_2237654A4(v19);

      (*(v12 + 8))(v1, v10);
    }

    else
    {
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v41 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v41, qword_28131B550);

      v42 = sub_2237B5C8C();
      sub_2237B5FFC();
      v43 = OUTLINED_FUNCTION_90();
      v43, v44, v45, v46, v47, v48, v49, v50;
      if (OUTLINED_FUNCTION_57())
      {
        OUTLINED_FUNCTION_20();
        v61 = OUTLINED_FUNCTION_32();
        *v10 = 136315138;
        v51 = OUTLINED_FUNCTION_184();
        *(v10 + 4) = sub_223763694(v51, v52, v53);
        OUTLINED_FUNCTION_247();
        OUTLINED_FUNCTION_217(v54, v55, v56, v57);
        OUTLINED_FUNCTION_22_0();
        OUTLINED_FUNCTION_3_0();
      }

      (*(v12 + 8))(v1, v10);
    }

    goto LABEL_13;
  }

  if (qword_28131AA10 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v21 = sub_2237B5C9C();
  OUTLINED_FUNCTION_13(v21, qword_28131B550);

  v60 = sub_2237B5C8C();
  sub_2237B5FFC();
  v22 = OUTLINED_FUNCTION_90();
  v22, v23, v24, v25, v26, v27, v28, v29;
  v7, v30, v31, v32, v33, v34, v35, v36;
  if (os_log_type_enabled(v60, v9))
  {
    OUTLINED_FUNCTION_25_0();
    v61 = OUTLINED_FUNCTION_99();
    *v14 = 136315394;
    v37 = OUTLINED_FUNCTION_293();
    v40 = sub_223763694(v37, v38, v39);
    OUTLINED_FUNCTION_45_0(v40);
    *(v14 + 14) = sub_223763694(v5, v3, &v61);
    OUTLINED_FUNCTION_257(&dword_22375F000, v60, v9, "No active session for assistantId: %s, cannot send voice command context for requestId: %s");
    OUTLINED_FUNCTION_98();
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_74();

LABEL_13:
    OUTLINED_FUNCTION_14_2();
    return;
  }

  OUTLINED_FUNCTION_14_2();
}

uint64_t sub_2237A3EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, void *a17)
{
  v27[0] = a4;
  v27[1] = a5;
  v28 = a13;
  v29 = a14;
  v27[5] = a11;
  v27[3] = a7;
  v27[4] = a12;
  v27[2] = a9;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v27 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = v27 - v21;
  v23 = *MEMORY[0x277D5CDC8];
  v24 = sub_2237B540C();
  (*(*(v24 - 8) + 104))(v22, v23, v24);
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v24);
  sub_2237B485C();

  sub_2237B480C();
  v25 = sub_2237B412C();
  (*(*(v25 - 8) + 16))(v19, v27[0], v25);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v25);
  sub_2237B487C();

  sub_2237B486C();

  sub_2237B47FC();

  sub_2237B481C();

  sub_2237B482C();
  if (v28)
  {
    [v28 BOOLValue];
  }

  sub_2237B484C();
  if (v29)
  {
    [v29 BOOLValue];
  }

  sub_2237B483C();
  if (a15)
  {
    [a15 BOOLValue];
  }

  sub_2237B47EC();
  if (a16)
  {
    [a16 BOOLValue];
  }

  sub_2237B47DC();
  if (a17)
  {
    [a17 BOOLValue];
  }

  return sub_2237B488C();
}

void sub_2237A4184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v25;
  a20 = v26;
  v27 = v24;
  OUTLINED_FUNCTION_104(v28, v29, v30, &a15);
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  OUTLINED_FUNCTION_205(a24);
  OUTLINED_FUNCTION_167(a23);
  sub_2237B5C7C();
  OUTLINED_FUNCTION_0_2();
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_28_1(v44);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_28_1(v46);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_59();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_20_4();
  v73[2] = v27;
  v73[3] = v38;
  v73[4] = v36;
  v73[5] = v34;
  OUTLINED_FUNCTION_206();
  v73[6] = v32;
  v73[7] = v49;
  OUTLINED_FUNCTION_114();
  v73[8] = v51;
  v73[9] = v50;
  OUTLINED_FUNCTION_110(&a15);
  OUTLINED_FUNCTION_115();
  v73[13] = v53;
  v73[14] = v52;
  v54 = sub_223761B80();
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_323();
  OUTLINED_FUNCTION_12_5();
  sub_2237B573C(v55, v56, v57, v58);
  OUTLINED_FUNCTION_134(*(v27 + OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue));
  v59 = *(v40 + 16);
  v60 = OUTLINED_FUNCTION_107(&a11);
  v59(v60);
  v61 = OUTLINED_FUNCTION_65();
  v59(v61);
  OUTLINED_FUNCTION_23_2();
  v62 = OUTLINED_FUNCTION_305();
  v63 = OUTLINED_FUNCTION_103(v62);
  (type metadata for Logger.Kind)(v63);
  v64 = OUTLINED_FUNCTION_67();
  (type metadata for Logger.Kind)(v64);
  OUTLINED_FUNCTION_76((v40 + 16 + v42));
  OUTLINED_FUNCTION_84(v65);
  v66 = &v54[v40 + 16];
  *v66 = sub_2237A800C;
  v66[1] = v73;
  OUTLINED_FUNCTION_5_3();
  v67 = swift_allocObject();
  *(v67 + 16) = sub_223761F8C;
  *(v67 + 24) = v40 + 16;
  v74[4] = sub_223761F78;
  v74[5] = v67;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v74[2] = v68;
  v74[3] = &block_descriptor_322;
  _Block_copy(v74);
  OUTLINED_FUNCTION_253();

  dispatch_sync(v72, v54);
  _Block_release(v54);
  OUTLINED_FUNCTION_351();
  v69 = OUTLINED_FUNCTION_145(&a14);
  (type metadata for Logger.Kind)(v69);
  v70 = OUTLINED_FUNCTION_145(&a16);
  v71 = (type metadata for Logger.Kind)(v70);
  OUTLINED_FUNCTION_22_1(v71, "");
  OUTLINED_FUNCTION_90();

  if (v40)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

void sub_2237A46A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v29;
  a20 = v30;
  OUTLINED_FUNCTION_104(v31, v32, v33, &a14);
  OUTLINED_FUNCTION_288(v34, &v85);
  v69 = a25;
  OUTLINED_FUNCTION_167(a23);
  sub_2237B5C7C();
  OUTLINED_FUNCTION_0_2();
  v71 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_28_1(v39);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_28_1(v41);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_59();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_20_4();
  v73 = v25;
  v74 = v26;
  v75 = v28;
  v76 = v27;
  OUTLINED_FUNCTION_206();
  v77 = v25;
  v78 = v44;
  OUTLINED_FUNCTION_114();
  v79 = v46;
  v80 = v45;
  OUTLINED_FUNCTION_110(&a14);
  OUTLINED_FUNCTION_338();
  v81 = v48;
  v82 = v47;
  v83 = v69;
  v49 = sub_223761B80();
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_323();
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_223(v50, v51, v52, v53, v54, v55, 146);
  v70 = *(v25 + OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue);
  v56 = *(v71 + 16);
  v57 = OUTLINED_FUNCTION_107(&a11);
  v56(v57);
  OUTLINED_FUNCTION_245();
  v58 = OUTLINED_FUNCTION_65();
  v56(v58);
  OUTLINED_FUNCTION_23_2();
  v59 = OUTLINED_FUNCTION_305();
  v60 = OUTLINED_FUNCTION_103(v59);
  (type metadata for Logger.Kind)(v60);
  v61 = OUTLINED_FUNCTION_67();
  (type metadata for Logger.Kind)(v61);
  OUTLINED_FUNCTION_76((v71 + 16 + v37));
  OUTLINED_FUNCTION_84(v62);
  v63 = &v49[v71 + 16];
  *v63 = sub_2237A8060;
  *(v63 + 1) = &v72;
  OUTLINED_FUNCTION_5_3();
  v64 = swift_allocObject();
  *(v64 + 16) = sub_223761F8C;
  *(v64 + 24) = v71 + 16;
  v84[4] = sub_223761F78;
  v84[5] = v64;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v84[2] = v65;
  v84[3] = &block_descriptor_333;
  _Block_copy(v84);
  OUTLINED_FUNCTION_253();

  dispatch_sync(v70, v49);
  _Block_release(v49);
  OUTLINED_FUNCTION_351();
  v66 = OUTLINED_FUNCTION_145(&a13);
  (type metadata for Logger.Kind)(v66);
  v67 = OUTLINED_FUNCTION_145(&a15);
  v68 = (type metadata for Logger.Kind)(v67);
  OUTLINED_FUNCTION_22_1(v68, "");
  OUTLINED_FUNCTION_90();

  if (0x237BAB00)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

void sub_2237A4B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, unsigned __int8 a25)
{
  OUTLINED_FUNCTION_16_3();
  v139 = v27;
  v140 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v133 = a25;
  v137 = a24;
  v138 = v37;
  v135 = a23;
  v136 = v38;
  v134 = a22;
  v39 = sub_2237B412C();
  OUTLINED_FUNCTION_0_2();
  v41 = v40;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_232();
  v43 = *(v25 + OBJC_IVAR___SRDRequestDispatcherInternal_sessionsManager);
  OUTLINED_FUNCTION_151();
  sub_22376F45C();
  if (v44)
  {
    v131 = v41;
    v132 = v39;
    v45 = *(v41 + 16);
    v129[1] = v44;
    v46 = v45(v26, v44 + OBJC_IVAR____TtC14SiriMessageBus7Session_sessionId, v39);
    MEMORY[0x28223BE20](v46);
    v129[0] = v34;
    v130 = v26;
    OUTLINED_FUNCTION_225(v129);
    v47 = objc_allocWithZone(sub_2237B471C());
    OUTLINED_FUNCTION_34_0();
    v48 = sub_2237B467C();
    if (!v48)
    {
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v86 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v86, qword_28131B550);

      v87 = sub_2237B5C8C();
      v88 = sub_2237B5FFC();
      OUTLINED_FUNCTION_321(v88, v89, v90, v91, v92, v93, v94, v95);
      v96 = OUTLINED_FUNCTION_57();
      v98 = v131;
      v97 = v132;
      v99 = v130;
      if (v96)
      {
        v100 = OUTLINED_FUNCTION_20();
        v101 = OUTLINED_FUNCTION_19_0();
        OUTLINED_FUNCTION_339(v101);
        *v100 = 136315138;
        v102 = OUTLINED_FUNCTION_13_3();
        *(v100 + 4) = sub_223763694(v102, v103, v104);
        OUTLINED_FUNCTION_247();
        _os_log_impl(v105, v106, v107, v108, v100, 0xCu);
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_10();
      }

      (*(v98 + 8))(v99, v97);
      goto LABEL_24;
    }

    v49 = v48;
    v50 = v30;
    v51 = sub_2237654A4(v48);
    v52 = v130;
    if (v133)
    {
      MEMORY[0x28223BE20](v51);
      OUTLINED_FUNCTION_278();
      v53 = v129[0];
      *(v54 - 48) = v36;
      *(v54 - 40) = v53;
      *(v54 - 32) = v52;
      *(v54 - 24) = v32;
      *(v54 - 16) = v50;
      v55 = objc_allocWithZone(sub_2237B542C());
      OUTLINED_FUNCTION_34_0();
      v56 = sub_2237B541C();
      if (!v56)
      {
        if (qword_28131AA10 != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v111 = sub_2237B5C9C();
        OUTLINED_FUNCTION_13(v111, qword_28131B550);

        v112 = sub_2237B5C8C();
        sub_2237B5FFC();
        v53, v113, v114, v115, v116, v117, v118, v119;
        if (OUTLINED_FUNCTION_57())
        {
          v120 = OUTLINED_FUNCTION_20();
          v121 = OUTLINED_FUNCTION_19_0();
          OUTLINED_FUNCTION_339(v121);
          *v120 = 136315138;
          *(v120 + 4) = sub_223763694(v36, v53, &v141);
          OUTLINED_FUNCTION_247();
          _os_log_impl(v122, v123, v124, v125, v120, 0xCu);
          OUTLINED_FUNCTION_66();
          OUTLINED_FUNCTION_10();
        }

        v126 = OUTLINED_FUNCTION_186();
        v128(v126, v127);
        goto LABEL_24;
      }

      v57 = v56;
      sub_2237654A4(v56);
    }

    v58 = OUTLINED_FUNCTION_186();
    v59(v58);
LABEL_24:
    OUTLINED_FUNCTION_14_2();
    return;
  }

  if (qword_28131AA10 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v60 = sub_2237B5C9C();
  OUTLINED_FUNCTION_13(v60, qword_28131B550);

  v140 = sub_2237B5C8C();
  v61 = sub_2237B5FFC();
  OUTLINED_FUNCTION_321(v61, v62, v63, v64, v65, v66, v67, v68);
  v34, v69, v70, v71, v72, v73, v74, v75;
  if (OUTLINED_FUNCTION_368())
  {
    OUTLINED_FUNCTION_25_0();
    v76 = OUTLINED_FUNCTION_99();
    OUTLINED_FUNCTION_301(v76);
    OUTLINED_FUNCTION_212(4.8151e-34);
    v77 = OUTLINED_FUNCTION_119();
    v80 = sub_223763694(v77, v78, v79);
    OUTLINED_FUNCTION_45_0(v80);
    v81 = OUTLINED_FUNCTION_234();
    *(v43 + 14) = sub_223763694(v81, v82, v83);
    OUTLINED_FUNCTION_152(&dword_22375F000, v84, v85, "No active session for assistantId: %s, cannot send voice command context for requestId: %s");
    OUTLINED_FUNCTION_98();
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_74();

    goto LABEL_24;
  }

  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_14_2();
}

uint64_t sub_2237A5098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v30 = a4;
  v31 = a5;
  v29[1] = a2;
  v36 = a14;
  v37 = a13;
  v35 = a11;
  v33 = a7;
  v34 = a12;
  v32 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C68, &qword_2237B9248);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v29 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v29 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = v29 - v21;
  v23 = *MEMORY[0x277D5CDC8];
  v24 = sub_2237B540C();
  (*(*(v24 - 8) + 104))(v22, v23, v24);
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v24);
  sub_2237B46CC();

  sub_2237B468C();
  v25 = sub_2237B412C();
  (*(*(v25 - 8) + 16))(v19, v30, v25);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v25);
  sub_2237B470C();

  sub_2237B46FC();

  sub_2237B46EC();

  sub_2237B46BC();

  sub_2237B46DC();

  sub_2237B46AC();
  v26 = *MEMORY[0x277D5D010];
  v27 = sub_2237B545C();
  (*(*(v27 - 8) + 104))(v16, v26, v27);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v27);
  return sub_2237B469C();
}

void sub_2237A53A0()
{
  OUTLINED_FUNCTION_16_3();
  v5 = v4;
  OUTLINED_FUNCTION_187(v6, v7, v8, v9, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  OUTLINED_FUNCTION_1(v11);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_168();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  OUTLINED_FUNCTION_1(v13);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_113();
  v15 = *MEMORY[0x277D5CDC8];
  v16 = sub_2237B540C();
  OUTLINED_FUNCTION_4();
  (*(v17 + 104))(v3, v15, v16);
  OUTLINED_FUNCTION_12_4();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v16);
  v2(v3);

  v21 = OUTLINED_FUNCTION_120();
  v5(v21);
  v22 = sub_2237B412C();
  OUTLINED_FUNCTION_4();
  (*(v23 + 16))(v1, v27, v22);
  OUTLINED_FUNCTION_12_4();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v22);
  v28(v1);

  v29(v30, v0);
  OUTLINED_FUNCTION_14_2();
}

void sub_2237A5538()
{
  OUTLINED_FUNCTION_16_3();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_174();
  sub_2237B5C7C();
  OUTLINED_FUNCTION_0_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_112();
  OUTLINED_FUNCTION_344(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_274();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_336("announceNotificationHandlingStateUpdated(withAssistantId:toState:)");
  v34[4] = v5;
  v34[5] = v3;
  v13 = sub_223761B80();
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_320(v14, v15, v16, v17, v18, v19, 66);
  v20 = OUTLINED_FUNCTION_165(OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue);
  (v13)(v20);
  OUTLINED_FUNCTION_139();
  v13();
  OUTLINED_FUNCTION_47_0();
  v21 = OUTLINED_FUNCTION_221();
  v22 = OUTLINED_FUNCTION_46_0(v21);
  v1(v22);
  v23 = OUTLINED_FUNCTION_67();
  v1(v23);
  OUTLINED_FUNCTION_76((&type metadata for Logger + v21));
  *(v24 + 8) = v31;
  v25 = (v21 + v0);
  *v25 = sub_2237A80AC;
  v25[1] = v34;
  OUTLINED_FUNCTION_5_3();
  v26 = swift_allocObject();
  *(v26 + 16) = sub_223761F8C;
  *(v26 + 24) = v21;
  v35[4] = sub_223761F78;
  v35[5] = v26;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v35[2] = v27;
  v35[3] = &block_descriptor_344;
  _Block_copy(v35);
  OUTLINED_FUNCTION_125();

  dispatch_sync(v33, v32);
  _Block_release(v32);
  v28 = OUTLINED_FUNCTION_162();
  (type metadata for Logger.Kind)(v28);
  v29 = OUTLINED_FUNCTION_231();
  v30 = (type metadata for Logger.Kind)(v29);
  OUTLINED_FUNCTION_22_1(v30, "");
  OUTLINED_FUNCTION_90();

  if (v7)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

void sub_2237A5864()
{
  OUTLINED_FUNCTION_16_3();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_174();
  sub_2237B412C();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17_4();
  v8 = *(v0 + OBJC_IVAR___SRDRequestDispatcherInternal_sessionsManager);
  OUTLINED_FUNCTION_136();
  sub_22376F45C();
  if (v9)
  {
    OUTLINED_FUNCTION_241();
    v11 = v10(v2);
    MEMORY[0x28223BE20](v11);
    OUTLINED_FUNCTION_275();
    *(v12 - 32) = v1;
    *(v12 - 24) = v6;
    *(v12 - 16) = v2;
    *(v12 - 8) = v4;
    v13 = objc_allocWithZone(sub_2237B52DC());
    OUTLINED_FUNCTION_34_0();
    v14 = sub_2237B528C();
    if (v14)
    {
      v15 = v14;
      sub_2237654A4(v14);
    }

    else
    {
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v43 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v43, qword_28131B550);

      v44 = sub_2237B5C8C();
      sub_2237B5FFC();
      v6, v45, v46, v47, v48, v49, v50, v51;
      if (OUTLINED_FUNCTION_365())
      {
        v52 = OUTLINED_FUNCTION_20();
        v53 = OUTLINED_FUNCTION_19_0();
        v66 = v53;
        *v52 = 136315138;
        v54 = OUTLINED_FUNCTION_136();
        *(v52 + 4) = sub_223763694(v54, v55, v56);
        OUTLINED_FUNCTION_331();
        _os_log_impl(v57, v58, v59, v60, v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v53);
        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_135();
      }
    }

    v61 = OUTLINED_FUNCTION_19_3();
    v62(v61);
    goto LABEL_15;
  }

  if (qword_28131AA10 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v16 = sub_2237B5C9C();
  OUTLINED_FUNCTION_13(v16, qword_28131B550);

  v65 = sub_2237B5C8C();
  v17 = sub_2237B5FFC();
  v6, v18, v19, v20, v21, v22, v23, v24;
  if (os_log_type_enabled(v65, v17))
  {
    OUTLINED_FUNCTION_25_0();
    v25 = OUTLINED_FUNCTION_99();
    OUTLINED_FUNCTION_325(v25);
    OUTLINED_FUNCTION_212(4.8151e-34);
    v26 = OUTLINED_FUNCTION_136();
    v29 = sub_223763694(v26, v27, v28);
    OUTLINED_FUNCTION_45_0(v29);
    v30 = AFExternalNotificationRequestHandlerStateGetName();
    if (v30)
    {
      v31 = v30;
      v32 = sub_2237B5E2C();
      v34 = v33;

      v35 = sub_223763694(v32, v34, &v66);
      v34, v36, v37, v38, v39, v40, v41, v42;
      *(v8 + 14) = v35;
      OUTLINED_FUNCTION_257(&dword_22375F000, v65, v17, "No active session for assistantId: %s, cannot update announce notification handling state: %s");
      OUTLINED_FUNCTION_310();
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_74();

LABEL_15:
      OUTLINED_FUNCTION_14_2();
      return;
    }

    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_159();
    OUTLINED_FUNCTION_14_2();
  }
}

uint64_t sub_2237A5BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  v12 = *MEMORY[0x277D5CDC8];
  v13 = sub_2237B540C();
  (*(*(v13 - 8) + 104))(v11, v12, v13);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v13);
  sub_2237B52BC();

  sub_2237B52AC();
  v14 = sub_2237B412C();
  (*(*(v14 - 8) + 16))(v8, a4, v14);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v14);
  sub_2237B52CC();
  return sub_2237B529C();
}

void sub_2237A5DAC(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if (qword_28131AA10 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v6 = sub_2237B5C9C();
  OUTLINED_FUNCTION_13(v6, qword_28131B550);
  v7 = a3;
  v8 = sub_2237B5C8C();
  v9 = sub_2237B5FEC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v7;
    *v11 = v7;
    *(v10 + 12) = 1024;
    *(v10 + 14) = a4 & 1;
    v12 = v7;
    _os_log_impl(&dword_22375F000, v8, v9, "Received MultiUserInfo command: %@, isRMVEnabled=%{BOOL}d", v10, 0x12u);
    sub_2237710FC(v11, &qword_27D097BE0, &qword_2237B88D0);
    OUTLINED_FUNCTION_13_5();
    OUTLINED_FUNCTION_13_1();
  }

  v29 = sub_2237B5C8C();
  v13 = sub_2237B5FFC();
  if (OUTLINED_FUNCTION_315(v13, v14, v15, v16, v17, v18, v19, v20, v27, v29))
  {
    *OUTLINED_FUNCTION_7_3() = 0;
    OUTLINED_FUNCTION_222(&dword_22375F000, v21, v22, "Ignoring MultiUserInfo on this device platform", v23, v24, v25, v26, v28, v30);
    OUTLINED_FUNCTION_74();
  }
}

void sub_2237A5FA4()
{
  OUTLINED_FUNCTION_16_3();
  v4 = v3;
  OUTLINED_FUNCTION_262();
  v5 = sub_2237B563C();
  OUTLINED_FUNCTION_0_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_29_1();
  v13 = *(v0 + OBJC_IVAR___SRDRequestDispatcherInternal_sessionsManager);
  OUTLINED_FUNCTION_120();
  sub_22376F45C();
  if (v14)
  {
    v15 = OUTLINED_FUNCTION_81();
    v16(v15);
    v17 = *MEMORY[0x277D5D258];
    v18 = *(v7 + 104);
    v18(v11, v17, v5);
    v19 = sub_223766744();
    v20 = *(v7 + 8);
    v20(v11, v5);
    v21 = OUTLINED_FUNCTION_16_5();
    (v20)(v21);
    if ((v19 & 1) == 0)
    {
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v22 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v22, qword_28131B550);
      v23 = sub_2237B5C8C();
      v24 = sub_2237B5FFC();
      if (OUTLINED_FUNCTION_261(v24))
      {
        v63 = v24;
        v25 = OUTLINED_FUNCTION_20();
        v64 = OUTLINED_FUNCTION_19_0();
        *v25 = 136315138;
        v18(v1, v17, v5);
        sub_2237B562C();
        OUTLINED_FUNCTION_357();
        v26 = OUTLINED_FUNCTION_16_5();
        (v20)(v26);
        v27 = OUTLINED_FUNCTION_256();
        sub_223763694(v27, v28, v29);
        v30 = OUTLINED_FUNCTION_148();
        v30, v31, v32, v33, v34, v35, v36, v37;
        *(v25 + 4) = v1;
        _os_log_impl(&dword_22375F000, v23, v63, "Current session is not of type %s, cannot start speech request", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v64);
        OUTLINED_FUNCTION_74();
        OUTLINED_FUNCTION_8();
      }
    }
  }

  else
  {
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v38 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v38, qword_28131B550);

    v39 = sub_2237B5C8C();
    v40 = sub_2237B600C();
    v4, v41, v42, v43, v44, v45, v46, v47;
    v2, v48, v49, v50, v51, v52, v53, v54;
    if (os_log_type_enabled(v39, v40))
    {
      OUTLINED_FUNCTION_25_0();
      v55 = OUTLINED_FUNCTION_99();
      OUTLINED_FUNCTION_300(v55);
      OUTLINED_FUNCTION_212(4.8151e-34);
      v56 = OUTLINED_FUNCTION_120();
      v59 = sub_223763694(v56, v57, v58);
      OUTLINED_FUNCTION_45_0(v59);
      v60 = OUTLINED_FUNCTION_151();
      *(v13 + 14) = sub_223763694(v60, v61, v62);
      OUTLINED_FUNCTION_257(&dword_22375F000, v39, v40, "No active session for assistantId: %s cannot start a request for request id: %s");
      OUTLINED_FUNCTION_149();
      OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_74();
    }
  }

  OUTLINED_FUNCTION_14_2();
}