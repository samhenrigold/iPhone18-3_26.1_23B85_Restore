void sub_24B61AC2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AppleConnectClientLibraryCore(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v1 = AppleConnectClientLibraryCore_frameworkLibrary;
  v6 = AppleConnectClientLibraryCore_frameworkLibrary;
  if (!AppleConnectClientLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_27900CCA8;
    v4[3] = _sl_dlopen();
    AppleConnectClientLibraryCore_frameworkLibrary = v4[3];
    v1 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_24B61AEB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __AppleConnectClientLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  AppleConnectClientLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getACMobileAuthenticationContextClass_block_invoke(uint64_t a1)
{
  AppleConnectClientLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ACMobileAuthenticationContext");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getACMobileAuthenticationContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getACMobileAuthenticationContextClass_block_invoke_cold_1();
    AppleConnectClientLibrary();
  }
}

void AppleConnectClientLibrary()
{
  v2 = 0;
  v0 = AppleConnectClientLibraryCore(&v2);
  v1 = v2;
  if (!v0)
  {
    v1 = abort_report_np("%s", v2);
    goto LABEL_5;
  }

  if (v2)
  {
LABEL_5:
    free(v1);
  }
}

Class __getACAuthenticationRequestClass_block_invoke(uint64_t a1)
{
  AppleConnectClientLibrary();
  result = objc_getClass("ACAuthenticationRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getACAuthenticationRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getACAuthenticationRequestClass_block_invoke_cold_1();
    return InferenceRecordFeedbackView.inferenceRecord.getter(v3);
  }

  return result;
}

uint64_t InferenceRecordFeedbackView.inferenceRecord.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24B638BE4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t InferenceRecordFeedbackView.inferenceRecord.setter(uint64_t a1)
{
  v3 = sub_24B638BE4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t InferenceRecordFeedbackView.inferenceClient.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for InferenceRecordFeedbackView(0) + 20);

  return sub_24B61B1DC(v3, a1);
}

uint64_t type metadata accessor for InferenceRecordFeedbackView(uint64_t a1)
{
  result = qword_27F02ADF8;
  if (!qword_27F02ADF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B61B1DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_24B61B28C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t _s27FitnessIntelligenceFeedback015InferenceRecordC4ViewV09inferenceE00G6ClientAC0aB00dE0V_AF0dH8Protocol_ptcfC_0@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a1;
  v36 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AD80, &qword_24B639D30);
  v4 = MEMORY[0x28223BE20](v34);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AD88, &qword_24B639D38);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  v15 = type metadata accessor for InferenceRecordFeedbackView(0);
  v16 = sub_24B638D14();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  sub_24B6283BC(v14, v12, &qword_27F02AD88, &qword_24B639D38);
  sub_24B639324();
  sub_24B628424(v14, &qword_27F02AD88, &qword_24B639D38);
  v17 = a3 + v15[7];
  v37 = 0;
  v38 = 0xE000000000000000;
  sub_24B639324();
  v18 = v41;
  *v17 = v40;
  *(v17 + 16) = v18;
  v19 = sub_24B638DD4();
  (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
  sub_24B6283BC(v8, v6, &qword_27F02AD80, &qword_24B639D30);
  sub_24B639324();
  sub_24B628424(v8, &qword_27F02AD80, &qword_24B639D30);
  v20 = a3 + v15[9];
  LOBYTE(v37) = 0;
  sub_24B639324();
  v21 = *(&v40 + 1);
  *v20 = v40;
  *(v20 + 8) = v21;
  v22 = a3 + v15[10];
  v37 = 0;
  v38 = 0;
  v39 = 2;
  sub_24B639324();
  v23 = v41;
  v24 = v42;
  *v22 = v40;
  *(v22 + 16) = v23;
  *(v22 + 24) = v24;
  v25 = a3 + v15[11];
  LOBYTE(v37) = 0;
  sub_24B639324();
  v26 = *(&v40 + 1);
  *v25 = v40;
  *(v25 + 8) = v26;
  v27 = a3 + v15[12];
  *v27 = sub_24B638ED4() & 1;
  *(v27 + 8) = v28;
  *(v27 + 16) = v29 & 1;
  v30 = a3 + v15[13];
  LOBYTE(v37) = 0;
  sub_24B639324();
  v31 = *(&v40 + 1);
  *v30 = v40;
  *(v30 + 8) = v31;
  v32 = sub_24B638BE4();
  (*(*(v32 - 8) + 32))(a3, v35, v32);
  return sub_24B61B28C(v36, a3 + v15[5]);
}

uint64_t InferenceRecordFeedbackView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = sub_24B639184();
  v34 = *(v2 - 8);
  v35 = v2;
  MEMORY[0x28223BE20](v2);
  v31 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24B638F34();
  v30 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AD90, &qword_24B639D40);
  v28 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AD98, &qword_24B639D48);
  v29 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02ADA0, &qword_24B639D50);
  v14 = *(v13 - 8);
  v32 = v13;
  v33 = v14;
  MEMORY[0x28223BE20](v13);
  v26 = &v25 - v15;
  v38 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02ADA8, &qword_24B639D58);
  sub_24B628F28(&qword_27F02ADB0, &qword_27F02ADA8, &qword_24B639D58, MEMORY[0x277CE14C0]);
  sub_24B6391C4();
  sub_24B638F24();
  v16 = sub_24B628F28(&qword_27F02ADB8, &qword_27F02AD90, &qword_24B639D40, MEMORY[0x277CDE5A0]);
  v17 = MEMORY[0x277CDD980];
  sub_24B6392C4();
  (*(v30 + 8))(v6, v4);
  (*(v28 + 8))(v9, v7);
  v18 = v31;
  sub_24B639174();
  v39 = v7;
  v40 = v4;
  v41 = v16;
  v42 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = v26;
  sub_24B639284();
  (*(v34 + 8))(v18, v35);
  (*(v29 + 8))(v12, v10);
  v37 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02ADC0, &qword_24B639D60);
  v39 = v10;
  v40 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02ADC8, &unk_24B639D68);
  v22 = sub_24B628F28(&qword_27F02ADD0, &qword_27F02ADC8, &unk_24B639D68, MEMORY[0x277CDDB60]);
  v39 = v21;
  v40 = v22;
  swift_getOpaqueTypeConformance2();
  v23 = v32;
  sub_24B6392A4();
  return (*(v33 + 8))(v20, v23);
}

uint64_t sub_24B61BBC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AE88, &qword_24B639F18);
  v96 = *(v115 - 8);
  v3 = MEMORY[0x28223BE20](v115);
  v114 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v112 = &v83 - v5;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AE90, &qword_24B639F20);
  v92 = *(v94 - 1);
  MEMORY[0x28223BE20](v94);
  v91 = &v83 - v6;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AE98, &qword_24B639F28);
  v119 = *(v113 - 8);
  v7 = MEMORY[0x28223BE20](v113);
  v111 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v109 = &v83 - v9;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AEA0, &qword_24B639F30);
  v89 = *(v90 - 1);
  MEMORY[0x28223BE20](v90);
  v88 = &v83 - v10;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AEA8, &qword_24B639F38);
  v118 = *(v110 - 8);
  v11 = MEMORY[0x28223BE20](v110);
  v108 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v106 = &v83 - v13;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AEB0, &qword_24B639F40);
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v85 = &v83 - v14;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AEB8, &qword_24B639F48);
  v117 = *(v107 - 8);
  v15 = MEMORY[0x28223BE20](v107);
  v105 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v104 = &v83 - v17;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AEC0, &qword_24B639F50);
  v18 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v20 = &v83 - v19;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AEC8, &qword_24B639F58);
  v116 = *(v103 - 8);
  v21 = MEMORY[0x28223BE20](v103);
  v102 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v101 = &v83 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AED0, &qword_24B639F60);
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v83 - v26;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AED8, &qword_24B639F68);
  v99 = *(v100 - 8);
  v28 = MEMORY[0x28223BE20](v100);
  v98 = &v83 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v83 - v30;
  sub_24B639524();
  v93 = sub_24B639514();
  sub_24B6394D4();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  sub_24B6393C4();
  sub_24B638F14();
  sub_24B6273CC();
  sub_24B639274();
  v33 = (*(v25 + 8))(v27, v24);
  v97 = v31;
  MEMORY[0x28223BE20](v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AEE8, &qword_24B639F70);
  v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02AEF0, &qword_24B639F78);
  v35 = a1;
  v36 = sub_24B6390D4();
  v37 = sub_24B628F28(&qword_27F02AEF8, &qword_27F02AEF0, &qword_24B639F78, MEMORY[0x277CDF038]);
  v122 = v34;
  v123 = v36;
  v124 = v37;
  v125 = MEMORY[0x277CDE058];
  swift_getOpaqueTypeConformance2();
  sub_24B6393C4();
  sub_24B638F14();
  sub_24B62745C();
  v38 = v84;
  sub_24B639274();
  v39 = (*(v18 + 8))(v20, v38);
  MEMORY[0x28223BE20](v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AF08, &qword_24B639F80);
  v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02AF10, &qword_24B639F88);
  v41 = sub_24B639164();
  v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02AF18, &qword_24B639F90);
  v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02AF20, &qword_24B639F98);
  v44 = sub_24B628F28(&qword_27F02AF28, &qword_27F02AF20, &qword_24B639F98, MEMORY[0x277CDF1A8]);
  v122 = v43;
  v123 = v44;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v122 = v42;
  v123 = OpaqueTypeConformance2;
  v46 = swift_getOpaqueTypeConformance2();
  v47 = sub_24B6278EC(&qword_27F02AF30, MEMORY[0x277CDE3C8], MEMORY[0x277CDE3C0]);
  v122 = v40;
  v123 = v41;
  v124 = v46;
  v125 = v47;
  swift_getOpaqueTypeConformance2();
  v48 = v85;
  sub_24B6393C4();
  sub_24B638F14();
  sub_24B627584();
  v49 = v87;
  sub_24B639274();
  v50 = (*(v86 + 8))(v48, v49);
  MEMORY[0x28223BE20](v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AF40, &qword_24B639FA0);
  sub_24B628F28(&qword_27F02AF48, &qword_27F02AF40, &qword_24B639FA0, MEMORY[0x277CDF068]);
  v51 = v88;
  sub_24B6393C4();
  sub_24B638F14();
  sub_24B62775C();
  v52 = v90;
  sub_24B639274();
  v53 = (*(v89 + 8))(v51, v52);
  MEMORY[0x28223BE20](v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AF58, &qword_24B639FA8);
  sub_24B628F28(&qword_27F02AF60, &qword_27F02AF58, &qword_24B639FA8, MEMORY[0x277CE1138]);
  v54 = v91;
  sub_24B6393C4();
  sub_24B638F14();
  sub_24B627820();
  v55 = v94;
  sub_24B639274();
  (*(v92 + 8))(v54, v55);
  v56 = v35 + *(type metadata accessor for InferenceRecordFeedbackView(0) + 52);
  v57 = *v56;
  v58 = *(v56 + 8);
  v120 = v57;
  v121 = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AE78, &qword_24B639EE0);
  v59 = sub_24B639354();
  v94 = &v83;
  v92 = v122;
  v91 = v123;
  LODWORD(v90) = v124;
  v60 = MEMORY[0x28223BE20](v59);
  MEMORY[0x28223BE20](v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AF70, &qword_24B639FB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AF78, &qword_24B639FB8);
  v61 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02AF80, &qword_24B639FC0);
  v62 = sub_24B638F64();
  v63 = sub_24B628F28(&qword_27F02AF88, &qword_27F02AF80, &qword_24B639FC0, MEMORY[0x277CDF028]);
  v64 = sub_24B6278EC(&qword_27F02AF90, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v122 = v61;
  v123 = v62;
  v124 = v63;
  v125 = v64;
  swift_getOpaqueTypeConformance2();
  sub_24B628F28(&qword_27F02AF98, &qword_27F02AF78, &qword_24B639FB8, MEMORY[0x277CE14C0]);
  sub_24B6393B4();
  v88 = *(v99 + 16);
  v65 = v98;
  v66 = v100;
  (v88)(v98, v97, v100);
  v94 = *(v116 + 16);
  (v94)(v102, v101, v103);
  v92 = *(v117 + 16);
  (v92)(v105, v104, v107);
  v91 = *(v118 + 16);
  (v91)(v108, v106, v110);
  v90 = *(v119 + 16);
  (v90)(v111, v109, v113);
  v67 = v96;
  v89 = *(v96 + 16);
  (v89)(v114, v112, v115);
  v68 = v95;
  (v88)(v95, v65, v66);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AFA0, &qword_24B639FC8);
  (v94)(v68 + v69[12], v102, v103);
  v70 = v107;
  (v92)(v68 + v69[16], v105, v107);
  v71 = v110;
  (v91)(v68 + v69[20], v108, v110);
  v72 = v113;
  (v90)(v68 + v69[24], v111, v113);
  v73 = v115;
  (v89)(v68 + v69[28], v114, v115);
  v74 = *(v67 + 8);
  v74(v112, v73);
  v75 = *(v119 + 8);
  v119 += 8;
  v75(v109, v72);
  v76 = *(v118 + 8);
  v118 += 8;
  v76(v106, v71);
  v77 = *(v117 + 8);
  v117 += 8;
  v77(v104, v70);
  v78 = *(v116 + 8);
  v116 += 8;
  v79 = v103;
  v78(v101, v103);
  v80 = *(v99 + 8);
  v81 = v100;
  v80(v97, v100);
  v74(v114, v115);
  v75(v111, v113);
  v76(v108, v110);
  v77(v105, v107);
  v78(v102, v79);
  v80(v98, v81);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_24B61CF1C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24B638C54();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B639524();
  sub_24B639514();
  sub_24B6394D4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B638BB4();
  v6 = sub_24B638C34();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v16[0] = v6;
  v16[1] = v8;
  sub_24B6279B8();
  v9 = sub_24B639204();
  v11 = v10;
  LOBYTE(v8) = v12;
  v14 = v13;

  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v14;
  return result;
}

uint64_t sub_24B61D0AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[0] = a1;
  v17[2] = a2;
  v18 = sub_24B6390D4();
  v2 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B168, &qword_24B63A1A8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v17 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AEF0, &qword_24B639F78);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v17 - v13;
  sub_24B639524();
  v17[1] = sub_24B639514();
  sub_24B6394D4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for InferenceRecordFeedbackView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02ADE8, &qword_24B639DF0);
  sub_24B639354();
  sub_24B6283BC(v10, v8, &qword_27F02B168, &qword_24B63A1A8);
  sub_24B639514();
  sub_24B6394D4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AD88, &qword_24B639D38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B170, &qword_24B63A1B0);
  sub_24B628D7C();
  sub_24B628E30();
  sub_24B639384();
  sub_24B628424(v10, &qword_27F02B168, &qword_24B63A1A8);
  sub_24B6390C4();
  sub_24B628F28(&qword_27F02AEF8, &qword_27F02AEF0, &qword_24B639F78, MEMORY[0x277CDF038]);
  v15 = v18;
  sub_24B639244();
  (*(v2 + 8))(v4, v15);
  (*(v12 + 8))(v14, v11);
}

uint64_t sub_24B61D488()
{
  sub_24B639524();
  sub_24B639514();
  sub_24B6394D4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B638CF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B190, &qword_24B63A1B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B198, &qword_24B63A1C0);
  sub_24B628F28(&qword_27F02B1A0, &qword_27F02B190, &qword_24B63A1B8, MEMORY[0x277D83980]);
  sub_24B638D14();
  v0 = MEMORY[0x277D0A190];
  sub_24B6278EC(&qword_27F02B180, MEMORY[0x277D0A190], MEMORY[0x277D0A198]);
  swift_getOpaqueTypeConformance2();
  sub_24B6278EC(&qword_27F02B1A8, v0, MEMORY[0x277D0A1B0]);
  sub_24B6393A4();
}

uint64_t sub_24B61D678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24B638D14();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B198, &qword_24B63A1C0);
  v33 = *(v8 - 8);
  v34 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  sub_24B639524();
  v32 = sub_24B639514();
  sub_24B6394D4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = *(v5 + 16);
  v11(v7, a1, v4);
  v12 = (*(v5 + 88))(v7, v4);
  v13 = *MEMORY[0x277D0A188];
  v36 = a1;
  v37 = a2;
  v35 = v4;
  v31 = v11;
  if (v12 == v13)
  {
    v14 = 0xA400000000000000;
    v15 = 2375131120;
LABEL_9:
    v38 = v15;
    v39 = v14;
    sub_24B6279B8();
    v16 = sub_24B639204();
    v18 = v17;
    v20 = v19;
    sub_24B6391B4();
    v21 = sub_24B6391E4();
    v23 = v22;
    v25 = v24;
    v30 = v26;

    sub_24B627954(v16, v18, v20 & 1);

    v27 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02ADD8, &qword_24B639D78) + 36)];
    v31(v27, v36, v35);
    v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02ADE0, &qword_24B639D80) + 36)] = 1;
    *v10 = v21;
    *(v10 + 1) = v23;
    v10[16] = v25 & 1;
    *(v10 + 3) = v30;
    (*(v33 + 32))(v37, v10, v34);
  }

  if (v12 == *MEMORY[0x277D0A180])
  {
    v14 = 0xA400000000000000;
    v15 = 2391908336;
    goto LABEL_9;
  }

  if (v12 == *MEMORY[0x277D0A178])
  {
    v14 = 0xAD00008FB8EF8299;
    v15 = 0xE28D80E2B7A49FF0;
    goto LABEL_9;
  }

  result = sub_24B6395A4();
  __break(1u);
  return result;
}

uint64_t sub_24B61DA2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_24B639164();
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AF20, &qword_24B639F98);
  v28 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AF18, &qword_24B639F90);
  v29 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AF10, &qword_24B639F88);
  v32 = *(v11 - 8);
  v33 = v11;
  MEMORY[0x28223BE20](v11);
  v31 = &v28 - v12;
  sub_24B639524();
  v30 = sub_24B639514();
  sub_24B6394D4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v43 = sub_24B61DF50();
  v44 = v13;
  v14 = type metadata accessor for InferenceRecordFeedbackView(0);
  v15 = (a1 + *(v14 + 28));
  v16 = *v15;
  v17 = *(v15 + 2);
  v41 = v16;
  v42 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B128, &qword_24B63A160);
  sub_24B639354();
  sub_24B6279B8();
  sub_24B6393E4();
  v18 = sub_24B628F28(&qword_27F02AF28, &qword_27F02AF20, &qword_24B639F98, MEMORY[0x277CDF1A8]);
  sub_24B6392B4();
  (*(v28 + 8))(v7, v5);
  v19 = (a1 + *(v14 + 48));
  v20 = *v19;
  v21 = *(v19 + 1);
  LOBYTE(v19) = v19[16];
  LOBYTE(v38) = v20;
  v39 = v21;
  LOBYTE(v40) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B150, &qword_24B63A188);
  sub_24B638EC4();
  v38 = v5;
  v39 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = v31;
  sub_24B639294();

  (*(v29 + 8))(v10, v8);
  v24 = v34;
  sub_24B639154();
  v38 = v8;
  v39 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_24B6278EC(&qword_27F02AF30, MEMORY[0x277CDE3C8], MEMORY[0x277CDE3C0]);
  v25 = v33;
  v26 = v37;
  sub_24B639264();
  (*(v36 + 8))(v24, v26);
  (*(v32 + 8))(v23, v25);
}

unint64_t sub_24B61DF50()
{
  v0 = sub_24B638D14();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v23 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B158, &qword_24B63A1A0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AD88, &qword_24B639D38);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v24 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  type metadata accessor for InferenceRecordFeedbackView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02ADE8, &qword_24B639DF0);
  sub_24B639334();
  (*(v1 + 104))(v12, *MEMORY[0x277D0A178], v0);
  (*(v1 + 56))(v12, 0, 1, v0);
  v15 = *(v4 + 56);
  sub_24B6283BC(v14, v6, &qword_27F02AD88, &qword_24B639D38);
  sub_24B6283BC(v12, &v6[v15], &qword_27F02AD88, &qword_24B639D38);
  v16 = *(v1 + 48);
  if (v16(v6, 1, v0) != 1)
  {
    sub_24B6283BC(v6, v24, &qword_27F02AD88, &qword_24B639D38);
    if (v16(&v6[v15], 1, v0) != 1)
    {
      v18 = &v6[v15];
      v19 = v23;
      (*(v1 + 32))(v23, v18, v0);
      sub_24B6278EC(&qword_27F02B160, MEMORY[0x277D0A190], MEMORY[0x277D0A1A0]);
      v20 = v24;
      v21 = sub_24B639424();
      v22 = *(v1 + 8);
      v22(v19, v0);
      sub_24B628424(v12, &qword_27F02AD88, &qword_24B639D38);
      sub_24B628424(v14, &qword_27F02AD88, &qword_24B639D38);
      v22(v20, v0);
      sub_24B628424(v6, &qword_27F02AD88, &qword_24B639D38);
      if (v21)
      {
        return 0xD00000000000002ELL;
      }

      return 0xD000000000000039;
    }

    sub_24B628424(v12, &qword_27F02AD88, &qword_24B639D38);
    sub_24B628424(v14, &qword_27F02AD88, &qword_24B639D38);
    (*(v1 + 8))(v24, v0);
LABEL_6:
    sub_24B628424(v6, &qword_27F02B158, &qword_24B63A1A0);
    return 0xD000000000000039;
  }

  sub_24B628424(v12, &qword_27F02AD88, &qword_24B639D38);
  sub_24B628424(v14, &qword_27F02AD88, &qword_24B639D38);
  if (v16(&v6[v15], 1, v0) != 1)
  {
    goto LABEL_6;
  }

  sub_24B628424(v6, &qword_27F02AD88, &qword_24B639D38);
  return 0xD00000000000002ELL;
}

uint64_t sub_24B61E3EC(uint64_t a1)
{
  sub_24B639524();
  sub_24B639514();
  sub_24B6394D4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for InferenceRecordFeedbackView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AE78, &qword_24B639EE0);
  sub_24B639354();
  sub_24B639394();
}

uint64_t sub_24B61E504@<X0>(uint64_t a1@<X8>)
{
  sub_24B639524();
  sub_24B639514();
  sub_24B6394D4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B639084();
  v2 = sub_24B6391F4();
  v4 = v3;
  v6 = v5;
  v8 = v7;

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_24B61E5FC@<X0>(uint64_t a2@<X8>)
{
  sub_24B639524();
  sub_24B639514();
  sub_24B6394D4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_24B639024();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AFF8, &qword_24B639FF8);
  sub_24B61E6D0(a2 + *(v3 + 44));
}

uint64_t sub_24B61E6D0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B000, &qword_24B63A000);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = (&v11 - v6);
  sub_24B639524();
  sub_24B639514();
  sub_24B6394D4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B61E880(v7);
  sub_24B6283BC(v7, v5, &qword_27F02B000, &qword_24B63A000);
  *a1 = 0;
  *(a1 + 8) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B008, &qword_24B63A008);
  sub_24B6283BC(v5, a1 + *(v8 + 48), &qword_27F02B000, &qword_24B63A000);
  v9 = a1 + *(v8 + 64);
  *v9 = 0;
  *(v9 + 8) = 1;
  sub_24B628424(v7, &qword_27F02B000, &qword_24B63A000);
  sub_24B628424(v5, &qword_27F02B000, &qword_24B63A000);
}

uint64_t sub_24B61E880@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v82 = a1;
  v3 = sub_24B639074();
  MEMORY[0x28223BE20](v3 - 8);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AE58, "J+");
  v73 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v72 = &v67 - v4;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B010, &qword_24B63A010);
  MEMORY[0x28223BE20](v79);
  v81 = &v67 - v5;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B018, &qword_24B63A018);
  MEMORY[0x28223BE20](v75);
  v76 = &v67 - v6;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B020, &qword_24B63A020);
  MEMORY[0x28223BE20](v80);
  v77 = &v67 - v7;
  v8 = sub_24B6391A4();
  v69 = *(v8 - 8);
  v70 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for InferenceRecordFeedbackView(0);
  v12 = v11 - 8;
  v67 = *(v11 - 8);
  v13 = *(v67 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B028, &qword_24B63A028);
  v68 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v67 - v15;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B030, &qword_24B63A030);
  MEMORY[0x28223BE20](v74);
  v71 = &v67 - v17;
  v18 = v2;
  v19 = v2 + *(v12 + 48);
  v20 = *(v19 + 16);
  v21 = *(v19 + 24);
  v94 = *v19;
  LOBYTE(v95) = v20;
  *(&v95 + 1) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B038, &qword_24B63A038);
  sub_24B639334();
  v22 = v89;
  if (v90)
  {
    if (v90 == 1)
    {
      v23 = *(&v89 + 1);
      sub_24B639064();
      sub_24B639054();
      sub_24B6392F4();
      sub_24B639034();

      sub_24B639054();
      sub_24B639044();
      sub_24B626F54(v22, v23, 1);
      sub_24B639054();
      sub_24B639094();
      v24 = sub_24B6391F4();
      v26 = v25;
      v28 = v27 & 1;
      v101 = v27 & 1;
      v99 = 1;
      *&v89 = v24;
      *(&v89 + 1) = v25;
      LOBYTE(v90) = v27 & 1;
      *(&v90 + 1) = v100[0];
      DWORD1(v90) = *(v100 + 3);
      *(&v90 + 1) = v29;
      v91 = v83;
      v92 = v84;
      LOBYTE(v93) = v85;
      HIBYTE(v93) = 1;
      sub_24B6264D4(v24, v25, v27 & 1);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B040, &qword_24B63A040);
      sub_24B627A0C();
      sub_24B6390B4();
      v30 = v97;
      v31 = v81;
      *(v81 + 32) = v96;
      *(v31 + 48) = v30;
      *(v31 + 64) = v98;
      v32 = v95;
      *v31 = v94;
      *(v31 + 16) = v32;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B080, &qword_24B63A060);
      sub_24B627B7C();
      sub_24B627E64();
      sub_24B6390B4();
      sub_24B627954(v24, v26, v28);
    }

    else if (v89 == 0)
    {
      sub_24B626EA0(v18, &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
      v54 = (*(v67 + 80) + 16) & ~*(v67 + 80);
      v55 = swift_allocObject();
      v56 = sub_24B626F74(&v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v55 + v54);
      MEMORY[0x28223BE20](v56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B0E0, &qword_24B63A0E0);
      sub_24B628224();
      sub_24B639374();
      sub_24B639194();
      sub_24B628F28(&qword_27F02B0A8, &qword_27F02B028, &qword_24B63A028, MEMORY[0x277CDF028]);
      sub_24B6278EC(&qword_27F02B0B0, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
      v57 = v70;
      v58 = v71;
      sub_24B639234();
      (*(v69 + 8))(v10, v57);
      (*(v68 + 8))(v16, v14);
      v59 = (v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B0A0, &qword_24B63A068) + 36));
      v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B0C0, &qword_24B63A070) + 28);
      v61 = *MEMORY[0x277CDF420];
      v62 = sub_24B638EF4();
      (*(*(v62 - 8) + 104))(v59 + v60, v61, v62);
      *v59 = swift_getKeyPath();
      LOBYTE(v61) = sub_24B622CB4();
      KeyPath = swift_getKeyPath();
      v64 = swift_allocObject();
      *(v64 + 16) = (v61 & 1) == 0;
      v65 = (v58 + *(v74 + 36));
      *v65 = KeyPath;
      v65[1] = sub_24B6283A4;
      v65[2] = v64;
      sub_24B6283BC(v58, v76, &qword_27F02B030, &qword_24B63A030);
      swift_storeEnumTagMultiPayload();
      sub_24B627C34();
      sub_24B628F28(&qword_27F02AE50, &qword_27F02AE58, "J+", MEMORY[0x277CDD7F8]);
      v66 = v77;
      sub_24B6390B4();
      sub_24B6283BC(v66, v81, &qword_27F02B020, &qword_24B63A020);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B080, &qword_24B63A060);
      sub_24B627B7C();
      sub_24B627E64();
      sub_24B6390B4();
      sub_24B628424(v66, &qword_27F02B020, &qword_24B63A020);
      return sub_24B628424(v58, &qword_27F02B030, &qword_24B63A030);
    }

    else
    {
      v50 = v72;
      sub_24B638F04();
      v51 = v73;
      v52 = v78;
      (*(v73 + 16))(v76, v50, v78);
      swift_storeEnumTagMultiPayload();
      sub_24B627C34();
      sub_24B628F28(&qword_27F02AE50, &qword_27F02AE58, "J+", MEMORY[0x277CDD7F8]);
      v53 = v77;
      sub_24B6390B4();
      sub_24B6283BC(v53, v81, &qword_27F02B020, &qword_24B63A020);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B080, &qword_24B63A060);
      sub_24B627B7C();
      sub_24B627E64();
      sub_24B6390B4();
      sub_24B628424(v53, &qword_27F02B020, &qword_24B63A020);
      return (*(v51 + 8))(v50, v52);
    }
  }

  else
  {
    v34 = *(&v89 + 1);
    sub_24B639064();
    sub_24B639054();
    ErrorValue = swift_getErrorValue();
    MEMORY[0x28223BE20](ErrorValue);
    (*(v37 + 16))(&v67 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_24B639474();
    sub_24B639044();

    sub_24B639054();
    sub_24B639094();
    v38 = sub_24B6391F4();
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v45 = swift_getKeyPath();
    v46 = swift_getKeyPath();
    v101 = 1;
    *&v83 = v38;
    *(&v83 + 1) = v40;
    LOBYTE(v84) = v42 & 1;
    *(&v84 + 1) = v94;
    DWORD1(v84) = *(&v94 + 3);
    *(&v84 + 1) = v44;
    *&v85 = v45;
    BYTE8(v85) = 1;
    *(&v85 + 9) = v89;
    HIDWORD(v85) = *(&v89 + 3);
    v86 = v46;
    v87 = 0;
    v88 = 1;
    v91 = v85;
    v92 = v46;
    v93 = 1;
    v89 = v83;
    v90 = v84;
    LOBYTE(v100[0]) = 0;
    sub_24B6283BC(&v83, &v94, &qword_27F02B040, &qword_24B63A040);
    sub_24B6283BC(&v83, &v94, &qword_27F02B040, &qword_24B63A040);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B040, &qword_24B63A040);
    sub_24B627A0C();
    sub_24B6390B4();
    v47 = v97;
    v48 = v81;
    *(v81 + 32) = v96;
    *(v48 + 48) = v47;
    *(v48 + 64) = v98;
    v49 = v95;
    *v48 = v94;
    *(v48 + 16) = v49;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B080, &qword_24B63A060);
    sub_24B627B7C();
    sub_24B627E64();
    sub_24B6390B4();
    sub_24B626F54(v22, v34, 0);
    sub_24B628424(&v83, &qword_27F02B040, &qword_24B63A040);
    return sub_24B628424(&v83, &qword_27F02B040, &qword_24B63A040);
  }
}

uint64_t sub_24B61F690@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(*a1 + 16);
  v112[0] = **a1;
  v112[1] = v6;
  v8 = *(v4 + 48);
  v7 = *(v4 + 64);
  v9 = *(v4 + 32);
  v113 = *(v4 + 80);
  v112[4] = v7;
  v112[2] = v9;
  v112[3] = v8;
  v10 = *(v4 + 16);
  __src[0] = *v4;
  __src[1] = v10;
  v11 = *(v4 + 32);
  v12 = *(v4 + 48);
  v13 = *(v4 + 64);
  v14 = *(v4 + 80);
  __src[3] = v12;
  __src[4] = v13;
  __src[2] = v11;
  v15 = *v5;
  v114[1] = v5[1];
  v114[0] = v15;
  v16 = v5[2];
  v17 = v5[3];
  v18 = v5[4];
  v115 = *(v5 + 10);
  v114[4] = v18;
  v114[3] = v17;
  v114[2] = v16;
  v19 = *v5;
  *(&__src[6] + 8) = v5[1];
  *(&__src[5] + 8) = v19;
  v20 = v5[2];
  v21 = v5[3];
  v22 = v5[4];
  v23 = *(v5 + 10);
  *&__src[5] = v14;
  *(&__src[10] + 1) = v23;
  *(&__src[9] + 8) = v22;
  *(&__src[8] + 8) = v21;
  *(&__src[7] + 8) = v20;
  v24 = a1[2];
  v25 = a1[3];
  v26 = *(v24 + 16);
  v116[0] = *v24;
  v116[1] = v26;
  v27 = *(v24 + 32);
  v28 = *(v24 + 48);
  v29 = *(v24 + 64);
  v117 = *(v24 + 80);
  v116[4] = v29;
  v116[3] = v28;
  v116[2] = v27;
  v30 = *(v24 + 16);
  __src[11] = *v24;
  __src[12] = v30;
  v31 = *(v24 + 32);
  v32 = *(v24 + 48);
  v33 = *(v24 + 64);
  v34 = *(v24 + 80);
  __src[14] = v32;
  __src[15] = v33;
  __src[13] = v31;
  v35 = *(v25 + 16);
  v118[0] = *v25;
  v118[1] = v35;
  v36 = *(v25 + 32);
  v37 = *(v25 + 48);
  v38 = *(v25 + 64);
  v119 = *(v25 + 80);
  v118[4] = v38;
  v118[3] = v37;
  v118[2] = v36;
  v39 = *(v25 + 16);
  *(&__src[16] + 8) = *v25;
  *(&__src[17] + 8) = v39;
  v40 = *(v25 + 32);
  v41 = *(v25 + 48);
  v42 = *(v25 + 64);
  v43 = *(v25 + 80);
  *(&__src[19] + 8) = v41;
  *(&__src[20] + 8) = v42;
  *(&__src[18] + 8) = v40;
  *&__src[16] = v34;
  *(&__src[21] + 1) = v43;
  v44 = a1[4];
  v45 = a1[5];
  v46 = v44[1];
  v120[0] = *v44;
  v120[1] = v46;
  v47 = v44[2];
  v48 = v44[3];
  v49 = v44[4];
  *(v121 + 9) = *(v44 + 73);
  v121[0] = v49;
  v120[3] = v48;
  v120[2] = v47;
  v50 = v44[2];
  v51 = v44[3];
  v52 = v44[4];
  *(&__src[26] + 9) = *(v44 + 73);
  v53 = v44[1];
  __src[22] = *v44;
  __src[23] = v53;
  __src[24] = v50;
  __src[25] = v51;
  v54 = v45[1];
  v122[0] = *v45;
  v122[1] = v54;
  v55 = v45[2];
  v56 = v45[3];
  v57 = v45[4];
  *(v123 + 9) = *(v45 + 73);
  v123[0] = v57;
  v122[3] = v56;
  v122[2] = v55;
  v58 = v45[2];
  v59 = v45[3];
  v60 = v45[4];
  *(&__src[32] + 9) = *(v45 + 73);
  v61 = *v45;
  v62 = v45[1];
  __src[26] = v52;
  __src[28] = v61;
  __src[29] = v62;
  __src[31] = v59;
  __src[32] = v60;
  __src[30] = v58;
  v63 = a1[6];
  v64 = a1[7];
  v65 = v63[1];
  v124[0] = *v63;
  v124[1] = v65;
  v66 = v63[2];
  v67 = v63[3];
  v68 = v63[4];
  *(v125 + 9) = *(v63 + 73);
  v125[0] = v68;
  v124[3] = v67;
  v124[2] = v66;
  v69 = v63[2];
  v70 = v63[3];
  v71 = v63[4];
  *(&__src[38] + 9) = *(v63 + 73);
  v72 = v63[1];
  __src[34] = *v63;
  __src[35] = v72;
  __src[36] = v69;
  __src[37] = v70;
  v73 = v64[1];
  v126[0] = *v64;
  v126[1] = v73;
  v74 = v64[2];
  v75 = v64[3];
  v76 = v64[4];
  *(v127 + 9) = *(v64 + 73);
  v127[0] = v76;
  v126[3] = v75;
  v126[2] = v74;
  v77 = v64[2];
  v78 = v64[3];
  v79 = v64[4];
  *(&__src[44] + 9) = *(v64 + 73);
  v80 = *v64;
  v81 = v64[1];
  __src[38] = v71;
  __src[40] = v80;
  __src[41] = v81;
  __src[43] = v78;
  __src[44] = v79;
  __src[42] = v77;
  v82 = a1[8];
  v83 = a1[9];
  v84 = *v82;
  v128[1] = v82[1];
  v85 = v82[2];
  v86 = v82[3];
  v87 = v82[4];
  v129 = *(v82 + 10);
  v128[4] = v87;
  v128[3] = v86;
  v128[2] = v85;
  v128[0] = v84;
  v88 = v82[1];
  __src[46] = *v82;
  __src[47] = v88;
  v89 = v82[2];
  v90 = v82[3];
  v91 = v82[4];
  *&__src[51] = *(v82 + 10);
  __src[49] = v90;
  __src[50] = v91;
  __src[48] = v89;
  v92 = *(v83 + 16);
  v130[0] = *v83;
  v130[1] = v92;
  v93 = *(v83 + 32);
  v94 = *(v83 + 48);
  v95 = *(v83 + 64);
  v131 = *(v83 + 80);
  v130[3] = v94;
  v130[4] = v95;
  v130[2] = v93;
  v96 = *(v83 + 16);
  *(&__src[51] + 8) = *v83;
  *(&__src[52] + 8) = v96;
  v97 = *(v83 + 80);
  v98 = *(v83 + 32);
  v99 = *(v83 + 64);
  *(&__src[54] + 8) = *(v83 + 48);
  *(&__src[55] + 8) = v99;
  *(&__src[53] + 8) = v98;
  *(&__src[56] + 1) = v97;
  v100 = a1[10];
  v101 = *(v100 + 16);
  v132[0] = *v100;
  v132[1] = v101;
  v102 = *(v100 + 32);
  v103 = *(v100 + 48);
  v104 = *(v100 + 64);
  v133 = *(v100 + 80);
  v132[3] = v103;
  v132[4] = v104;
  v132[2] = v102;
  v105 = *(v100 + 16);
  __src[57] = *v100;
  __src[58] = v105;
  v106 = *(v100 + 32);
  v107 = *(v100 + 48);
  v108 = *(v100 + 64);
  *&__src[62] = *(v100 + 80);
  __src[61] = v108;
  __src[60] = v107;
  __src[59] = v106;
  memcpy(a2, __src, 0x3E8uLL);
  sub_24B6283BC(v112, v110, &qword_27F02AFC0, &qword_24B639FE0);
  sub_24B6283BC(v114, v110, &qword_27F02AFC0, &qword_24B639FE0);
  sub_24B6283BC(v116, v110, &qword_27F02AFC0, &qword_24B639FE0);
  sub_24B6283BC(v118, v110, &qword_27F02AFC0, &qword_24B639FE0);
  sub_24B6283BC(v120, v110, &qword_27F02AFC8, &qword_24B639FE8);
  sub_24B6283BC(v122, v110, &qword_27F02AFC8, &qword_24B639FE8);
  sub_24B6283BC(v124, v110, &qword_27F02AFC8, &qword_24B639FE8);
  sub_24B6283BC(v126, v110, &qword_27F02AFC8, &qword_24B639FE8);
  sub_24B6283BC(v128, v110, &qword_27F02AFC0, &qword_24B639FE0);
  sub_24B6283BC(v130, v110, &qword_27F02AFC0, &qword_24B639FE0);
  return sub_24B6283BC(v132, v110, &qword_27F02AFC0, &qword_24B639FE0);
}

uint64_t sub_24B61FB24@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v99 = a1;
  v93 = a2;
  v2 = sub_24B638B54();
  v91 = *(v2 - 8);
  v92 = v2;
  MEMORY[0x28223BE20](v2);
  v89 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AFB8, &qword_24B639FD8);
  MEMORY[0x28223BE20](v4 - 8);
  v69 = &v69 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AD80, &qword_24B639D30);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v78 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v75 = &v69 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v73 = &v69 - v12;
  MEMORY[0x28223BE20](v11);
  v70 = &v69 - v13;
  v14 = sub_24B638C54();
  v97 = *(v14 - 8);
  v98 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v76 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v74 = &v69 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v72 = &v69 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v96 = &v69 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v69 - v23;
  v25 = sub_24B638C94();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B639524();
  v94 = sub_24B639514();
  sub_24B6394D4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B638BC4();
  sub_24B638C64();
  v29 = *(v26 + 8);
  v79 = v28;
  v80 = v26 + 8;
  v81 = v25;
  v77 = v29;
  v29(v28, v25);
  v90 = sub_24B6390A4();
  LOBYTE(v193[0]) = 1;
  sub_24B622A38(v189);

  *&v188[7] = v189[0];
  *&v188[23] = v189[1];
  *&v188[39] = v189[2];
  *&v188[55] = v189[3];
  v88 = LOBYTE(v193[0]);
  sub_24B638B94();
  v87 = sub_24B6390A4();
  LOBYTE(v193[0]) = 1;
  sub_24B622A38(v190);

  *&v187[7] = v190[0];
  *&v187[23] = v190[1];
  *&v187[39] = v190[2];
  *&v187[55] = v190[3];
  v86 = LOBYTE(v193[0]);
  sub_24B638BB4();
  sub_24B638C14();
  v30 = v98;
  v31 = v97 + 8;
  v32 = *(v97 + 8);
  v32(v24, v98);
  v85 = sub_24B6390A4();
  LOBYTE(v193[0]) = 1;
  sub_24B622A38(v191);

  *&v186[7] = v191[0];
  *&v186[23] = v191[1];
  *&v186[39] = v191[2];
  *&v186[55] = v191[3];
  v33 = v31;
  v84 = LOBYTE(v193[0]);
  sub_24B638BB4();
  sub_24B638C04();
  v32(v24, v30);
  v83 = sub_24B6390A4();
  LOBYTE(v193[0]) = 1;
  sub_24B622A38(v192);

  *&v185[7] = v192[0];
  *&v185[23] = v192[1];
  v34 = v32;
  *&v185[39] = v192[2];
  *&v185[55] = v192[3];
  v82 = LOBYTE(v193[0]);
  sub_24B638BB4();
  sub_24B638C24();
  v36 = v35;
  v32(v24, v30);
  sub_24B620D88(0xD000000000000012, 0x800000024B63B660, v36, 0, v193);
  v37 = v96;
  sub_24B638BB4();
  v38 = v70;
  sub_24B638BF4();
  v34(v37, v30);
  v39 = sub_24B638DD4();
  v40 = *(v39 - 8);
  v96 = *(v40 + 48);
  v41 = (v96)(v38, 1, v39);
  v95 = v40;
  if (v41 == 1)
  {
    sub_24B628424(v38, &qword_27F02AD80, &qword_24B639D30);
    v42 = 0;
  }

  else
  {
    sub_24B638DC4();
    v44 = v43;
    (*(v40 + 8))(v38, v39);
    v42 = v44;
  }

  v45 = v73;
  sub_24B620D88(0xD000000000000012, 0x800000024B63B680, v42, v41 == 1, v183);
  v180 = v183[2];
  v181 = v183[3];
  v182[0] = v184[0];
  *(v182 + 9) = *(v184 + 9);
  v178 = v183[0];
  v179 = v183[1];
  v46 = v72;
  sub_24B638BB4();
  sub_24B638BF4();
  v34(v46, v98);
  v47 = (v96)(v45, 1, v39);
  v48 = v75;
  if (v47 == 1)
  {
    sub_24B628424(v45, &qword_27F02AD80, &qword_24B639D30);
    v49 = 0;
  }

  else
  {
    sub_24B638DB4();
    v51 = v50;
    (*(v95 + 8))(v45, v39);
    v49 = v51;
  }

  sub_24B620D88(0xD000000000000011, 0x800000024B63B6A0, v49, v47 == 1, v176);
  v173 = v176[2];
  v174 = v176[3];
  v175[0] = v177[0];
  *(v175 + 9) = *(v177 + 9);
  v171 = v176[0];
  v172 = v176[1];
  v52 = v74;
  sub_24B638BB4();
  sub_24B638BF4();
  v34(v52, v98);
  v53 = (v96)(v48, 1, v39);
  v97 = v33;
  v71 = v34;
  if (v53 == 1)
  {
    sub_24B628424(v48, &qword_27F02AD80, &qword_24B639D30);
    v54 = 2;
  }

  else
  {
    v54 = sub_24B638D84();
    (*(v95 + 8))(v48, v39);
  }

  sub_24B6211DC(v54, v169);
  v166 = v169[2];
  v167 = v169[3];
  v168[0] = v170[0];
  *(v168 + 9) = *(v170 + 9);
  v164 = v169[0];
  v165 = v169[1];
  v55 = v76;
  sub_24B638BB4();
  v56 = v78;
  sub_24B638BF4();
  v71(v55, v98);
  if ((v96)(v56, 1, v39) == 1)
  {
    v57 = &qword_27F02AD80;
    v58 = &qword_24B639D30;
    v59 = v56;
  }

  else
  {
    v60 = v69;
    sub_24B638DA4();
    v61 = v60;
    (*(v95 + 8))(v56, v39);
    v62 = sub_24B638DF4();
    v63 = *(v62 - 8);
    if ((*(v63 + 48))(v61, 1, v62) != 1)
    {
      sub_24B638DE4();
      (*(v63 + 8))(v61, v62);
      goto LABEL_18;
    }

    v57 = &qword_27F02AFB8;
    v58 = &qword_24B639FD8;
    v59 = v61;
  }

  sub_24B628424(v59, v57, v58);
LABEL_18:
  v98 = sub_24B6390A4();
  LOBYTE(v154[0]) = 1;
  sub_24B622A38(v141);

  *&v140[7] = v141[0];
  *&v140[23] = v141[1];
  *&v140[39] = v141[2];
  *&v140[55] = v141[3];
  LODWORD(v97) = LOBYTE(v154[0]);
  v64 = v79;
  sub_24B638BC4();
  sub_24B638C74();
  v77(v64, v81);
  v96 = sub_24B6390A4();
  LOBYTE(v154[0]) = 1;
  sub_24B622A38(v138);

  *&v139[7] = v138[0];
  *&v139[23] = v138[1];
  *&v139[39] = v138[2];
  *&v139[55] = v138[3];
  LODWORD(v95) = LOBYTE(v154[0]);
  v66 = v89;
  MEMORY[0x24C244690](v65);
  sub_24B638B34();
  (*(v91 + 8))(v66, v92);
  v67 = sub_24B6390A4();
  LOBYTE(v154[0]) = 1;
  sub_24B622A38(v135);

  *&v137[7] = v135[0];
  *&v137[23] = v135[1];
  *&v137[39] = v135[2];
  *&v137[55] = v136;
  *&v133[17] = *&v188[16];
  *&v133[33] = *&v188[32];
  *&v133[49] = *&v188[48];
  *&v133[1] = *v188;
  *&v131[17] = *&v187[16];
  *&v131[33] = *&v187[32];
  *&v131[49] = *&v187[48];
  *&v131[1] = *v187;
  *&v129[17] = *&v186[16];
  *&v129[33] = *&v186[32];
  *&v129[49] = *&v186[48];
  *&v129[1] = *v186;
  *&v127[17] = *&v185[16];
  *&v127[33] = *&v185[32];
  *&v127[49] = *&v185[48];
  *&v127[1] = *v185;
  v123 = v193[2];
  v124 = v193[3];
  v125[0] = v194[0];
  *(v125 + 9) = *(v194 + 9);
  v121 = v193[0];
  v122 = v193[1];
  v118 = v180;
  v119 = v181;
  v120[0] = v182[0];
  *(v120 + 9) = *(v182 + 9);
  v116 = v178;
  v117 = v179;
  v113 = v173;
  v114 = v174;
  v115[0] = v175[0];
  *(v115 + 9) = *(v175 + 9);
  v111 = v171;
  v112 = v172;
  v108 = v166;
  v109 = v167;
  v110[0] = v168[0];
  *(v110 + 9) = *(v168 + 9);
  v106 = v164;
  v107 = v165;
  *&v105[17] = *&v140[16];
  *&v105[33] = *&v140[32];
  *&v105[49] = *&v140[48];
  *&v105[1] = *v140;
  *&v103[17] = *&v139[16];
  *&v103[33] = *&v139[32];
  *&v103[49] = *&v139[48];
  *&v103[1] = *v139;
  *&v101[17] = *&v137[16];
  *&v101[33] = *&v137[32];
  *&v101[49] = *&v137[48];
  v132 = v90;
  v133[0] = v88;
  *&v133[64] = *&v188[63];
  v130 = v87;
  v131[0] = v86;
  *&v131[64] = *&v187[63];
  v134[0] = &v132;
  v134[1] = &v130;
  v128 = v85;
  v129[0] = v84;
  *&v129[64] = *&v186[63];
  v126 = v83;
  v127[0] = v82;
  *&v127[64] = *&v185[63];
  v134[2] = &v128;
  v134[3] = &v126;
  v134[4] = &v121;
  v134[5] = &v116;
  v134[6] = &v111;
  v134[7] = &v106;
  v104 = v98;
  v105[0] = v97;
  *&v105[64] = *&v140[63];
  v102 = v96;
  v103[0] = v95;
  *&v103[64] = *&v139[63];
  v134[8] = &v104;
  v134[9] = &v102;
  v100 = v67;
  v101[0] = v154[0];
  *&v101[64] = *(&v136 + 1);
  *&v101[1] = *v137;
  v134[10] = &v100;
  sub_24B61F690(v134, v93);
  v142[2] = *&v101[16];
  v142[3] = *&v101[32];
  v142[4] = *&v101[48];
  v143 = *&v101[64];
  v142[0] = v100;
  v142[1] = *v101;
  sub_24B628424(v142, &qword_27F02AFC0, &qword_24B639FE0);
  v144[2] = *&v103[16];
  v144[3] = *&v103[32];
  v144[4] = *&v103[48];
  v145 = *&v103[64];
  v144[0] = v102;
  v144[1] = *v103;
  sub_24B628424(v144, &qword_27F02AFC0, &qword_24B639FE0);
  v146[2] = *&v105[16];
  v146[3] = *&v105[32];
  v146[4] = *&v105[48];
  v147 = *&v105[64];
  v146[0] = v104;
  v146[1] = *v105;
  sub_24B628424(v146, &qword_27F02AFC0, &qword_24B639FE0);
  v148[2] = v108;
  v148[3] = v109;
  v149[0] = v110[0];
  *(v149 + 9) = *(v110 + 9);
  v148[0] = v106;
  v148[1] = v107;
  sub_24B628424(v148, &qword_27F02AFC8, &qword_24B639FE8);
  v150[2] = v113;
  v150[3] = v114;
  v151[0] = v115[0];
  *(v151 + 9) = *(v115 + 9);
  v150[0] = v111;
  v150[1] = v112;
  sub_24B628424(v150, &qword_27F02AFC8, &qword_24B639FE8);
  v152[2] = v118;
  v152[3] = v119;
  v153[0] = v120[0];
  *(v153 + 9) = *(v120 + 9);
  v152[0] = v116;
  v152[1] = v117;
  sub_24B628424(v152, &qword_27F02AFC8, &qword_24B639FE8);
  v154[2] = v123;
  v154[3] = v124;
  v155[0] = v125[0];
  *(v155 + 9) = *(v125 + 9);
  v154[0] = v121;
  v154[1] = v122;
  sub_24B628424(v154, &qword_27F02AFC8, &qword_24B639FE8);
  v156[2] = *&v127[16];
  v156[3] = *&v127[32];
  v156[4] = *&v127[48];
  v157 = *&v127[64];
  v156[0] = v126;
  v156[1] = *v127;
  sub_24B628424(v156, &qword_27F02AFC0, &qword_24B639FE0);
  v158[2] = *&v129[16];
  v158[3] = *&v129[32];
  v158[4] = *&v129[48];
  v159 = *&v129[64];
  v158[0] = v128;
  v158[1] = *v129;
  sub_24B628424(v158, &qword_27F02AFC0, &qword_24B639FE0);
  v160[2] = *&v131[16];
  v160[3] = *&v131[32];
  v160[4] = *&v131[48];
  v161 = *&v131[64];
  v160[0] = v130;
  v160[1] = *v131;
  sub_24B628424(v160, &qword_27F02AFC0, &qword_24B639FE0);
  v162[2] = *&v133[16];
  v162[3] = *&v133[32];
  v162[4] = *&v133[48];
  v163 = *&v133[64];
  v162[0] = v132;
  v162[1] = *v133;
  sub_24B628424(v162, &qword_27F02AFC0, &qword_24B639FE0);
}

double sub_24B620D88@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, _OWORD *a5@<X8>)
{
  v25[0] = a3;
  v25[1] = a1;
  v25[2] = a2;
  v26 = a5;
  v6 = sub_24B638A64();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24B638B74();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AFD8, &qword_24B639FF0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v25 - v16;
  if (a4)
  {
    v18 = sub_24B6390A4();
    LOBYTE(v41) = 1;
    sub_24B622A38(&v36);
    *&v35[55] = v39;
    *&v35[39] = v38;
    *&v35[23] = v37;
    *&v35[7] = v36;
    v31 = *&v35[16];
    v32 = *&v35[32];
    *v33 = *&v35[48];
    v40 = 1;
    v28 = v18;
    v29 = v41;
    *&v33[15] = *(&v39 + 1);
    v30 = *v35;
    v34 = 1;
  }

  else
  {
    *&v28 = v25[0];
    sub_24B638B64();
    sub_24B627964();
    sub_24B638A34();
    sub_24B638A54();
    MEMORY[0x24C244530](v9, v11);
    (*(v7 + 8))(v9, v6);
    v19 = *(v12 + 8);
    v19(v15, v11);
    sub_24B628F28(&qword_27F02AFE8, &qword_27F02AFD8, &qword_24B639FF0, MEMORY[0x277CC9168]);
    sub_24B6393F4();
    v19(v17, v11);
    v28 = v41;

    MEMORY[0x24C244F90](0x7363657320, 0xE500000000000000);

    v20 = sub_24B6390A4();
    LOBYTE(v41) = 1;
    sub_24B622A38(&v36);

    *&v27[55] = v39;
    *&v27[39] = v38;
    *&v27[23] = v37;
    *&v27[7] = v36;
    v31 = *&v27[16];
    v32 = *&v27[32];
    *v33 = *&v27[48];
    v40 = 0;
    v28 = v20;
    v29 = v41;
    *&v33[15] = *(&v39 + 1);
    v30 = *v27;
    v34 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AFC0, &qword_24B639FE0);
  sub_24B628F28(&qword_27F02AFD0, &qword_27F02AFC0, &qword_24B639FE0, MEMORY[0x277CE1198]);
  sub_24B6390B4();
  v21 = v44;
  v22 = v26;
  v26[2] = v43;
  v22[3] = v21;
  v22[4] = v45[0];
  *(v22 + 73) = *(v45 + 9);
  result = *&v41;
  v24 = v42;
  *v22 = v41;
  v22[1] = v24;
  return result;
}

double sub_24B6211DC@<D0>(char a3@<W2>, _OWORD *a4@<X8>)
{
  if (a3 == 2)
  {
    sub_24B6390A4();
    LOBYTE(v10) = 1;
    sub_24B622A38(&v8);
    v9 = 1;
  }

  else
  {
    sub_24B6390A4();
    LOBYTE(v10) = 1;
    sub_24B622A38(&v8);

    v9 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AFC0, &qword_24B639FE0);
  sub_24B628F28(&qword_27F02AFD0, &qword_27F02AFC0, &qword_24B639FE0, MEMORY[0x277CE1198]);
  sub_24B6390B4();
  v5 = v13;
  a4[2] = v12;
  a4[3] = v5;
  a4[4] = v14[0];
  *(a4 + 73) = *(v14 + 9);
  result = *&v10;
  v7 = v11;
  *a4 = v10;
  a4[1] = v7;
  return result;
}

uint64_t sub_24B621414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v3 = sub_24B638F64();
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for InferenceRecordFeedbackView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AF80, &qword_24B639FC0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v18 - v11;
  sub_24B639524();
  v18[0] = sub_24B639514();
  sub_24B6394D4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B626EA0(a1, v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  v15 = sub_24B626F74(v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  MEMORY[0x28223BE20](v15);
  v18[-2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AFA8, &qword_24B639FD0);
  sub_24B628F28(&qword_27F02AFB0, &qword_27F02AFA8, &qword_24B639FD0, MEMORY[0x277CE1138]);
  sub_24B639374();
  sub_24B638F54();
  sub_24B628F28(&qword_27F02AF88, &qword_27F02AF80, &qword_24B639FC0, MEMORY[0x277CDF028]);
  sub_24B6278EC(&qword_27F02AF90, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v16 = v20;
  sub_24B639234();
  (*(v19 + 8))(v5, v16);
  (*(v10 + 8))(v12, v9);
}

uint64_t sub_24B6217E0(uint64_t a1)
{
  sub_24B639524();
  sub_24B639514();
  sub_24B6394D4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for InferenceRecordFeedbackView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AE78, &qword_24B639EE0);
  sub_24B639334();
  sub_24B639344();
}

__n128 sub_24B6218F8@<Q0>(uint64_t a2@<X8>)
{
  sub_24B639524();
  sub_24B639514();
  sub_24B6394D4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = sub_24B639024();
  v15 = 1;
  sub_24B6219EC(&v10);

  v4 = v11;
  v5 = v13;
  v6 = v14;
  result = v10;
  v8 = v12;
  v9 = v15;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v9;
  *(a2 + 24) = result;
  *(a2 + 40) = v4;
  *(a2 + 48) = v8;
  *(a2 + 64) = v5;
  *(a2 + 72) = v6;
  return result;
}

uint64_t sub_24B6219EC@<X0>(uint64_t a1@<X8>)
{
  sub_24B639524();
  sub_24B639514();
  sub_24B6394D4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B639084();
  v2 = sub_24B6391F4();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  type metadata accessor for InferenceRecordFeedbackView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AE78, &qword_24B639EE0);
  sub_24B639334();
  v9 = sub_24B6392F4();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  sub_24B6264D4(v2, v4, v6 & 1);

  sub_24B627954(v2, v4, v6 & 1);
}

uint64_t sub_24B621BAC(uint64_t a1)
{
  v2 = sub_24B6390F4();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02ADC8, &unk_24B639D68);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  sub_24B639524();
  sub_24B639514();
  sub_24B6394D4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_24B6390E4();
  MEMORY[0x28223BE20](v7);
  *(&v10 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AE40, "0+");
  sub_24B626DBC();
  sub_24B638F84();
  v8 = sub_24B628F28(&qword_27F02ADD0, &qword_27F02ADC8, &unk_24B639D68, MEMORY[0x277CDDB60]);
  MEMORY[0x24C244BF0](v6, v3, v8);
  (*(v4 + 8))(v6, v3);
}

uint64_t sub_24B621DF8(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_24B639144();

    return sub_24B638F44();
  }

  else
  {
    sub_24B638F74();
    swift_getWitnessTable();
    sub_24B639114();
    sub_24B638F44();
    sub_24B639564();
    swift_getWitnessTable();
    sub_24B638F74();
    swift_getWitnessTable();
    sub_24B639114();
    return sub_24B638F44();
  }
}

uint64_t sub_24B621F5C(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_24B639144();
    sub_24B638F44();
  }

  else
  {
    sub_24B638F74();
    swift_getWitnessTable();
    sub_24B639114();
    sub_24B638F44();
    sub_24B639564();
    swift_getWitnessTable();
    sub_24B638F74();
    swift_getWitnessTable();
    sub_24B639114();
    sub_24B638F44();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_24B62215C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v32 = a2;
  v2 = type metadata accessor for InferenceRecordFeedbackView(0);
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AE68, &qword_24B639ED0);
  v27 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v26 = &v24 - v4;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AE70, &qword_24B639ED8);
  MEMORY[0x28223BE20](v29);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AE58, "J+");
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AE40, "0+");
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v24 - v12;
  sub_24B639524();
  v30 = sub_24B639514();
  sub_24B6394D4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = v28;
  v15 = v28 + *(v2 + 44);
  v16 = *v15;
  v17 = *(v15 + 8);
  v34 = v16;
  v35 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AE78, &qword_24B639EE0);
  sub_24B639334();
  if (v33 == 1)
  {
    sub_24B638F04();
    (*(v8 + 16))(v6, v10, v7);
    swift_storeEnumTagMultiPayload();
    sub_24B628F28(&qword_27F02AE50, &qword_27F02AE58, "J+", MEMORY[0x277CDD7F8]);
    sub_24B628F28(&qword_27F02AE60, &qword_27F02AE68, &qword_24B639ED0, MEMORY[0x277CDF028]);
    sub_24B6390B4();
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    sub_24B626EA0(v14, &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    v18 = (*(v25 + 80) + 16) & ~*(v25 + 80);
    v19 = swift_allocObject();
    sub_24B626F74(&v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
    v20 = v26;
    sub_24B639374();
    v21 = v27;
    v22 = v31;
    (*(v27 + 16))(v6, v20, v31);
    swift_storeEnumTagMultiPayload();
    sub_24B628F28(&qword_27F02AE50, &qword_27F02AE58, "J+", MEMORY[0x277CDD7F8]);
    sub_24B628F28(&qword_27F02AE60, &qword_27F02AE68, &qword_24B639ED0, MEMORY[0x277CDF028]);
    sub_24B6390B4();
    (*(v21 + 8))(v20, v22);
  }

  sub_24B6284FC(v13, v32, &qword_27F02AE40, "0+");
}

uint64_t sub_24B6226BC()
{
  sub_24B639524();
  sub_24B639514();
  sub_24B6394D4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B62275C();
}

uint64_t sub_24B62275C()
{
  v1 = v0;
  v2 = type metadata accessor for InferenceRecordFeedbackView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AE80, &qword_24B639EE8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19[-v8];
  v10 = v1 + *(v3 + 52);
  v11 = *v10;
  v12 = *(v10 + 8);
  v21 = *v10;
  v22 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AE78, &qword_24B639EE0);
  result = sub_24B639334();
  if ((v20 & 1) == 0)
  {
    v21 = v11;
    v22 = v12;
    v20 = 1;
    sub_24B639344();
    v14 = sub_24B639544();
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
    sub_24B626EA0(v1, &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    sub_24B639524();
    v15 = sub_24B639514();
    v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    *(v17 + 16) = v15;
    *(v17 + 24) = v18;
    sub_24B626F74(v6, v17 + v16);
    sub_24B623954(0, 0, v9, &unk_24B639EF8, v17);
  }

  return result;
}

uint64_t sub_24B62298C@<X0>(uint64_t *a1@<X8>)
{
  sub_24B639524();
  sub_24B639514();
  sub_24B6394D4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_24B6392F4();

  *a1 = v2;
  return result;
}

uint64_t sub_24B622A38@<X0>(uint64_t a5@<X8>)
{
  sub_24B639524();
  sub_24B639514();
  sub_24B6394D4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_24B6279B8();

  v6 = sub_24B639204();
  v8 = v7;
  v10 = v9;
  sub_24B639124();
  v29 = sub_24B6391D4();
  v30 = v11;
  v13 = v12;
  v28 = v14;
  sub_24B627954(v6, v8, v10 & 1);

  v15 = sub_24B639204();
  v17 = v16;
  v19 = v18;
  sub_24B639134();
  v20 = sub_24B6391D4();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_24B627954(v15, v17, v19 & 1);

  *a5 = v29;
  *(a5 + 8) = v13;
  *(a5 + 16) = v28 & 1;
  *(a5 + 24) = v30;
  *(a5 + 32) = v20;
  *(a5 + 40) = v22;
  *(a5 + 48) = v24 & 1;
  *(a5 + 56) = v26;
  sub_24B6264D4(v29, v13, v28 & 1);

  sub_24B6264D4(v20, v22, v24 & 1);

  sub_24B627954(v20, v22, v24 & 1);

  sub_24B627954(v29, v13, v28 & 1);
}

uint64_t sub_24B622CB4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AD88, &qword_24B639D38);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v23 - v2;
  v4 = sub_24B638D14();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  v11 = type metadata accessor for InferenceRecordFeedbackView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02ADE8, &qword_24B639DF0);
  sub_24B639334();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_24B628424(v3, &qword_27F02AD88, &qword_24B639D38);
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
    (*(v5 + 104))(v8, *MEMORY[0x277D0A178], v4);
    sub_24B6278EC(&qword_27F02B120, MEMORY[0x277D0A190], MEMORY[0x277D0A1A8]);
    sub_24B6394C4();
    sub_24B6394C4();
    if (v26 == v24)
    {
      v12 = 1;
    }

    else
    {
      v12 = sub_24B639634();
    }

    v13 = *(v5 + 8);
    v13(v8, v4);

    if ((v12 & 1) == 0)
    {
      goto LABEL_10;
    }

    v14 = (v0 + *(v11 + 28));
    v15 = *v14;
    v16 = *(v14 + 2);
    v26 = v15;
    v27 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B128, &qword_24B63A160);
    sub_24B639334();
    v17 = v24;

    v18 = HIBYTE(*(&v17 + 1)) & 0xFLL;
    if ((*(&v17 + 1) & 0x2000000000000000) == 0)
    {
      v18 = v17 & 0xFFFFFFFFFFFFLL;
    }

    if (!v18)
    {
      v13(v10, v4);
    }

    else
    {
LABEL_10:
      v19 = (v0 + *(v11 + 40));
      v20 = *(v19 + 16);
      v21 = *(v19 + 3);
      v26 = *v19;
      LOBYTE(v27) = v20;
      v28 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B038, &qword_24B63A038);
      sub_24B639334();
      v13(v10, v4);
      if (v25 == 2 && v24 == 0)
      {
        return 1;
      }

      sub_24B626F54(v24, *(&v24 + 1), v25);
    }
  }

  return 0;
}

uint64_t sub_24B623048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AD80, &qword_24B639D30);
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();
  v5 = sub_24B638E04();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  sub_24B638E54();
  v4[10] = swift_task_alloc();
  sub_24B638D74();
  v4[11] = swift_task_alloc();
  v6 = sub_24B638C54();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v7 = sub_24B638E44();
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();
  sub_24B639524();
  v4[18] = sub_24B639514();
  v9 = sub_24B6394D4();
  v4[19] = v9;
  v4[20] = v8;

  return MEMORY[0x2822009F8](sub_24B623290, v9, v8);
}

uint64_t sub_24B623290(uint64_t a1)
{
  v2 = v1[13];
  v3 = v1[14];
  v4 = v1[12];
  v6 = v1[9];
  v5 = v1[10];
  v7 = v1[8];
  v18 = v1[7];
  v8 = v1[4];
  sub_24B638BB4();
  sub_24B638C34();
  (*(v2 + 8))(v3, v4);
  v9 = sub_24B638D54();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  (*(v7 + 104))(v6, *MEMORY[0x277D0A4D8], v18);
  sub_24B638D64();
  sub_24B638E34();
  v10 = type metadata accessor for InferenceRecordFeedbackView(0);
  v1[21] = v10;
  v11 = (v8 + *(v10 + 20));
  v12 = v11[3];
  v13 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v14 = swift_task_alloc();
  v1[22] = v14;
  *v14 = v1;
  v14[1] = sub_24B623460;
  v15 = v1[17];
  v16 = v1[6];

  return MEMORY[0x282160F88](v16, v15, v12, v13);
}

uint64_t sub_24B623460()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 152);
    v4 = *(v2 + 160);
    v5 = sub_24B62376C;
  }

  else
  {
    v3 = *(v2 + 152);
    v4 = *(v2 + 160);
    v5 = sub_24B623584;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24B623584()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 136);
  v3 = *(v0 + 128);
  v12 = *(v0 + 120);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 32);

  v7 = sub_24B638DD4();
  (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
  sub_24B6283BC(v5, v4, &qword_27F02AD80, &qword_24B639D30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02ADF0, &qword_24B639DF8);
  sub_24B639344();
  sub_24B628424(v5, &qword_27F02AD80, &qword_24B639D30);
  v8 = v6 + *(v1 + 44);
  v9 = *(v8 + 8);
  *(v0 + 16) = *v8;
  *(v0 + 24) = v9;
  *(v0 + 184) = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AE78, &qword_24B639EE0);
  sub_24B639344();
  (*(v3 + 8))(v2, v12);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_24B62376C()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 136);
  v3 = *(v0 + 128);
  v12 = *(v0 + 120);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 32);

  v7 = sub_24B638DD4();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_24B6283BC(v5, v4, &qword_27F02AD80, &qword_24B639D30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02ADF0, &qword_24B639DF8);
  sub_24B639344();
  sub_24B628424(v5, &qword_27F02AD80, &qword_24B639D30);
  v8 = v6 + *(v1 + 44);
  v9 = *(v8 + 8);
  *(v0 + 16) = *v8;
  *(v0 + 24) = v9;
  *(v0 + 184) = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AE78, &qword_24B639EE0);
  sub_24B639344();
  (*(v3 + 8))(v2, v12);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_24B623954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AE80, &qword_24B639EE8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_24B6283BC(a3, v25 - v10, &qword_27F02AE80, &qword_24B639EE8);
  v12 = sub_24B639544();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24B628424(v11, &qword_27F02AE80, &qword_24B639EE8);
  }

  else
  {
    sub_24B639534();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24B6394D4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_24B639484() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_24B628424(a3, &qword_27F02AE80, &qword_24B639EE8);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24B628424(a3, &qword_27F02AE80, &qword_24B639EE8);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_24B623C54()
{
  v1 = type metadata accessor for InferenceRecordFeedbackView(0);
  v34 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v35 = v2;
  v3 = v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AE80, &qword_24B639EE8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AD88, &qword_24B639D38);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v31 - v8;
  v10 = sub_24B638D14();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v33 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v31 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02ADE8, &qword_24B639DF0);
  sub_24B639334();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_24B628424(v9, &qword_27F02AD88, &qword_24B639D38);
  }

  v17 = *(v11 + 32);
  v31[0] = v3;
  v31[1] = v11 + 32;
  v32 = v17;
  v17(v15, v9, v10);
  v18 = v0 + *(v1 + 40);
  v19 = *(v18 + 16);
  v20 = *(v18 + 24);
  v38 = *v18;
  v39 = v19;
  v40 = v20;
  v36 = xmmword_24B639D20;
  v37 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B038, &qword_24B63A038);
  sub_24B639344();
  v21 = v0 + *(v1 + 48);
  v22 = *v21;
  v23 = *(v21 + 8);
  LOBYTE(v21) = *(v21 + 16);
  LOBYTE(v38) = v22;
  *(&v38 + 1) = v23;
  v39 = v21;
  LOBYTE(v36) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B150, &qword_24B63A188);
  sub_24B638EB4();
  v24 = sub_24B639544();
  (*(*(v24 - 8) + 56))(v6, 1, 1, v24);
  sub_24B626EA0(v0, v3);
  v25 = v33;
  (*(v11 + 16))(v33, v15, v10);
  sub_24B639524();
  v26 = sub_24B639514();
  v27 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v28 = (v35 + *(v11 + 80) + v27) & ~*(v11 + 80);
  v29 = swift_allocObject();
  v30 = MEMORY[0x277D85700];
  *(v29 + 16) = v26;
  *(v29 + 24) = v30;
  sub_24B626F74(v31[0], v29 + v27);
  v32(v29 + v28, v25, v10);
  sub_24B623954(0, 0, v6, &unk_24B63A198, v29);

  return (*(v11 + 8))(v15, v10);
}

uint64_t sub_24B6240B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v6 = sub_24B638B54();
  v5[24] = v6;
  v5[25] = *(v6 - 8);
  v5[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AD80, &qword_24B639D30);
  v5[27] = swift_task_alloc();
  v7 = sub_24B638D14();
  v5[28] = v7;
  v5[29] = *(v7 - 8);
  v5[30] = swift_task_alloc();
  v8 = sub_24B638BE4();
  v5[31] = v8;
  v5[32] = *(v8 - 8);
  v5[33] = swift_task_alloc();
  v9 = sub_24B638D34();
  v5[34] = v9;
  v5[35] = *(v9 - 8);
  v5[36] = swift_task_alloc();
  sub_24B639524();
  v5[37] = sub_24B639514();
  v11 = sub_24B6394D4();
  v5[38] = v11;
  v5[39] = v10;

  return MEMORY[0x2822009F8](sub_24B6242F4, v11, v10);
}

uint64_t sub_24B6242F4()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);
  v4 = *(v0 + 176);
  v5 = *(v0 + 184);
  (*(*(v0 + 256) + 16))(*(v0 + 264), v4, *(v0 + 248));
  (*(v3 + 16))(v1, v5, v2);
  v6 = type metadata accessor for InferenceRecordFeedbackView(0);
  *(v0 + 320) = v6;
  v7 = (v4 + *(v6 + 28));
  v8 = *v7;
  v9 = *(v7 + 2);
  *(v0 + 80) = v8;
  *(v0 + 96) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B128, &qword_24B63A160);
  sub_24B639334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02ADF0, &qword_24B639DF8);
  sub_24B639334();
  sub_24B638CC4();
  v10 = swift_task_alloc();
  *(v0 + 328) = v10;
  *v10 = v0;
  v10[1] = sub_24B624488;
  v11 = *(v0 + 288);

  return sub_24B62B5C8(1756458, v11, 0);
}

uint64_t sub_24B624488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v4;
  *(*v4 + 336) = v3;

  if (v3)
  {
    v8 = v7[38];
    v9 = v7[39];
    v10 = sub_24B6248C4;
  }

  else
  {
    v7[43] = a3;
    v7[44] = a1;
    v10 = sub_24B6245C8;
    v8 = 0;
    v9 = 0;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_24B6245C8()
{
  v0[21] = v0[44];
  v1 = sub_24B639624();
  v3 = v2;

  v0[45] = v1;
  v0[46] = v3;
  v4 = v0[38];
  v5 = v0[39];

  return MEMORY[0x2822009F8](sub_24B624660, v4, v5);
}

uint64_t sub_24B624660()
{
  v1 = (v0[22] + *(v0[40] + 20));
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  MEMORY[0x24C244690]();
  v4 = swift_task_alloc();
  v0[47] = v4;
  *v4 = v0;
  v4[1] = sub_24B624744;
  v6 = v0[45];
  v5 = v0[46];
  v7 = v0[26];

  return MEMORY[0x282160F80](v6, v5, v7, v2, v3);
}

uint64_t sub_24B624744()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *(*v1 + 200);
  v5 = *(*v1 + 192);
  *(*v1 + 384) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    v6 = *(v2 + 304);
    v7 = *(v2 + 312);
    v8 = sub_24B624B4C;
  }

  else
  {
    v6 = *(v2 + 304);
    v7 = *(v2 + 312);
    v8 = sub_24B6249E4;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_24B6248C4()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 320);
  v3 = *(v0 + 288);
  v4 = *(v0 + 272);
  v5 = *(v0 + 280);
  v6 = *(v0 + 176);

  (*(v5 + 8))(v3, v4);
  v7 = v6 + *(v2 + 40);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  *(v0 + 16) = *v7;
  *(v0 + 32) = v8;
  *(v0 + 40) = v9;
  *(v0 + 104) = v1;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B038, &qword_24B63A038);
  sub_24B639344();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_24B6249E4()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  v3 = *(v0 + 320);
  v4 = *(v0 + 280);
  v13 = *(v0 + 272);
  v14 = *(v0 + 288);
  v5 = *(v0 + 176);

  v6 = v5 + *(v3 + 40);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 24);
  v10 = *(v6 + 16);
  *(v0 + 48) = *v6;
  *(v0 + 56) = v8;
  *(v0 + 64) = v10;
  *(v0 + 72) = v9;
  *(v0 + 128) = v1;
  *(v0 + 136) = v2;
  *(v0 + 144) = 1;
  sub_24B628D5C(v7, v8, v10);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B038, &qword_24B63A038);
  sub_24B639344();
  (*(v4 + 8))(v14, v13);
  sub_24B626F54(v7, v8, v10);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_24B624B4C()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 320);
  v3 = *(v0 + 288);
  v4 = *(v0 + 272);
  v5 = *(v0 + 280);
  v6 = *(v0 + 176);

  (*(v5 + 8))(v3, v4);
  v7 = v6 + *(v2 + 40);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  *(v0 + 16) = *v7;
  *(v0 + 32) = v8;
  *(v0 + 40) = v9;
  *(v0 + 104) = v1;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B038, &qword_24B63A038);
  sub_24B639344();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_24B624C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AD80, &qword_24B639D30);
  v4[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AD88, &qword_24B639D38);
  v4[9] = swift_task_alloc();
  v5 = sub_24B638D14();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = sub_24B638BE4();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v7 = sub_24B638D34();
  v4[16] = v7;
  v4[17] = *(v7 - 8);
  v4[18] = swift_task_alloc();
  sub_24B639524();
  v4[19] = sub_24B639514();
  v9 = sub_24B6394D4();
  v4[20] = v9;
  v4[21] = v8;

  return MEMORY[0x2822009F8](sub_24B624E88, v9, v8);
}

uint64_t sub_24B624E88()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  (*(*(v0 + 112) + 16))(*(v0 + 120), *(v0 + 56), *(v0 + 104));
  v4 = type metadata accessor for InferenceRecordFeedbackView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02ADE8, &qword_24B639DF0);
  sub_24B639334();
  v5 = *(v2 + 48);
  v6 = v5(v3, 1, v1);
  v8 = *(v0 + 88);
  v7 = *(v0 + 96);
  v9 = *(v0 + 72);
  v10 = *(v0 + 80);
  if (v6 == 1)
  {
    (*(v8 + 104))(v7, *MEMORY[0x277D0A178], *(v0 + 80));
    if (v5(v9, 1, v10) != 1)
    {
      sub_24B628424(*(v0 + 72), &qword_27F02AD88, &qword_24B639D38);
    }
  }

  else
  {
    (*(v8 + 32))(v7, *(v0 + 72), *(v0 + 80));
  }

  v11 = (*(v0 + 56) + *(v4 + 28));
  v12 = *v11;
  v13 = *(v11 + 2);
  *(v0 + 16) = v12;
  *(v0 + 32) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B128, &qword_24B63A160);
  sub_24B639334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02ADF0, &qword_24B639DF8);
  sub_24B639334();
  sub_24B638CC4();
  v14 = swift_task_alloc();
  *(v0 + 176) = v14;
  *v14 = v0;
  v14[1] = sub_24B6250D8;
  v15 = *(v0 + 144);

  return sub_24B62A390(v15);
}

uint64_t sub_24B6250D8()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 160);
    v4 = *(v2 + 168);
    v5 = sub_24B6290C0;
  }

  else
  {
    v3 = *(v2 + 160);
    v4 = *(v2 + 168);
    v5 = sub_24B6251FC;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24B6251FC()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[17];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24B6252C4(uint64_t a1)
{
  v2 = type metadata accessor for InferenceRecordFeedbackView(0);
  v16 = *(v2 - 8);
  v3 = *(v16 + 64);
  MEMORY[0x28223BE20](v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AE80, &qword_24B639EE8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  sub_24B639524();
  sub_24B639514();
  v7 = MEMORY[0x277D85700];
  sub_24B6394D4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = (a1 + *(v2 + 36));
  v9 = *v8;
  v10 = *(v8 + 1);
  v18 = v9;
  v19 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AE78, &qword_24B639EE0);
  sub_24B639334();
  if (v17 == 1)
  {
    v11 = sub_24B639544();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    sub_24B626EA0(a1, &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    v12 = sub_24B639514();
    v13 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    *(v14 + 24) = v7;
    sub_24B626F74(&v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
    sub_24B623954(0, 0, v6, &unk_24B63A180, v14);
  }

  else
  {
    sub_24B623C54();
  }
}

uint64_t sub_24B625550@<X0>(uint64_t a2@<X8>)
{
  v24 = a2;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B108, &qword_24B63A0F0);
  v21 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v18 = &v16 - v2;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B0F8, &qword_24B63A0E8);
  MEMORY[0x28223BE20](v17);
  v4 = &v16 - v3;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B0E0, &qword_24B63A0E0);
  MEMORY[0x28223BE20](v20);
  v19 = &v16 - v5;
  sub_24B639524();
  v22 = sub_24B639514();
  sub_24B6394D4();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v16 = &v16;
  v7 = MEMORY[0x28223BE20](isCurrentExecutor);
  MEMORY[0x28223BE20](v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B130, &qword_24B63A168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B138, &qword_24B63A170);
  sub_24B628494(&qword_27F02B140, &qword_27F02B130, &qword_24B63A168);
  sub_24B628494(&qword_27F02B148, &qword_27F02B138, &qword_24B63A170);
  v8 = v18;
  sub_24B639314();
  sub_24B6392D4();
  sub_24B622CB4();
  v9 = sub_24B6392E4();

  (*(v21 + 32))(v4, v8, v23);
  *&v4[*(v17 + 36)] = v9;
  sub_24B6393D4();
  sub_24B638F94();
  v10 = v19;
  sub_24B6284FC(v4, v19, &qword_27F02B0F8, &qword_24B63A0E8);
  v11 = (v10 + *(v20 + 36));
  v12 = v30;
  v11[4] = v29;
  v11[5] = v12;
  v11[6] = v31;
  v13 = v26;
  *v11 = v25;
  v11[1] = v13;
  v14 = v28;
  v11[2] = v27;
  v11[3] = v14;
  sub_24B6284FC(v10, v24, &qword_27F02B0E0, &qword_24B63A0E0);
}

double sub_24B625988@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24B639524();
  sub_24B639514();
  sub_24B6394D4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a1 + *(type metadata accessor for InferenceRecordFeedbackView(0) + 36);
  LOBYTE(v6) = *v4;
  *(&v6 + 1) = *(v4 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AE78, &qword_24B639EE0);
  sub_24B639334();
  sub_24B639084();
  sub_24B6391F4();
  sub_24B6390B4();

  result = *&v6;
  *a2 = v6;
  *(a2 + 16) = v7;
  *(a2 + 32) = v8;
  return result;
}

uint64_t sub_24B625B58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24B639524();
  sub_24B639514();
  sub_24B6394D4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a1 + *(type metadata accessor for InferenceRecordFeedbackView(0) + 36);
  LOBYTE(v6) = *v4;
  v7 = *(v4 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AE78, &qword_24B639EE0);
  sub_24B639334();
  sub_24B639304();
  sub_24B6390B4();

  *a2 = v6;
  *(a2 + 8) = v7;
  return result;
}

uint64_t sub_24B625CF0(uint64_t a1, id *a2)
{
  result = sub_24B639444();
  *a2 = 0;
  return result;
}

uint64_t sub_24B625D68(uint64_t a1, id *a2)
{
  v3 = sub_24B639454();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_24B625DE8@<X0>(uint64_t *a1@<X8>)
{
  sub_24B639464();
  v2 = sub_24B639434();

  *a1 = v2;
  return result;
}

uint64_t sub_24B625E2C()
{
  v0 = sub_24B639464();
  v1 = MEMORY[0x24C244FA0](v0);

  return v1;
}

uint64_t sub_24B625E68(uint64_t a1)
{
  sub_24B639464();
  sub_24B639494();
}

uint64_t sub_24B625EBC(uint64_t a1)
{
  sub_24B639464();
  sub_24B639684();
  sub_24B639494();
  v1 = sub_24B6396A4();

  return v1;
}

uint64_t sub_24B625F30(void *a1, uint64_t *a2)
{
  v2 = sub_24B639464();
  v4 = v3;
  if (v2 == sub_24B639464() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_24B639634();
  }

  return v7 & 1;
}

uint64_t sub_24B625FB8@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_24B639434();

  *a2 = v3;
  return result;
}

uint64_t sub_24B626000@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24B639464();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24B62602C(uint64_t a1)
{
  v2 = sub_24B6278EC(&qword_27F02B1D0, type metadata accessor for OpenExternalURLOptionsKey, &unk_24B63A354);
  v3 = sub_24B6278EC(&qword_27F02B1D8, type metadata accessor for OpenExternalURLOptionsKey, &unk_24B63A2A8);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_24B6260E8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B6261E0;

  return v6(a1);
}

uint64_t sub_24B6261E0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24B6262FC(uint64_t a1)
{
  v2 = sub_24B638EF4();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return MEMORY[0x24C244AA0](v4);
}

uint64_t sub_24B6263C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24B638FE4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24B62641C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24B638FC4();
  *a1 = result;
  return result;
}

uint64_t sub_24B626470@<X0>(uint64_t a1@<X8>)
{
  result = sub_24B639004();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_24B6264D4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_24B626514(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_24B638BE4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5] + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02ADE8, &qword_24B639DF0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02ADF0, &qword_24B639DF8);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_24B6266B8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_24B638BE4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 24) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02ADE8, &qword_24B639DF0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02ADF0, &qword_24B639DF8);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

void sub_24B626848(uint64_t a1)
{
  sub_24B638BE4();
  if (v1 <= 0x3F)
  {
    sub_24B6269FC();
    if (v2 <= 0x3F)
    {
      sub_24B626A60(319, &qword_27F02AE10, &qword_27F02AD88, &qword_24B639D38);
      if (v3 <= 0x3F)
      {
        sub_24B628F98(319, &qword_27F02AE18, MEMORY[0x277D837D0], MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_24B626A60(319, &qword_27F02AE20, &qword_27F02AD80, &qword_24B639D30);
          if (v5 <= 0x3F)
          {
            sub_24B628F98(319, &qword_27F02AE28, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
            if (v6 <= 0x3F)
            {
              sub_24B628F98(319, &qword_27F02AE30, &type metadata for InferenceRecordFeedbackView.SubmitState, MEMORY[0x277CE10B8]);
              if (v7 <= 0x3F)
              {
                sub_24B626AB4();
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_24B6269FC()
{
  result = qword_27F02AE08;
  if (!qword_27F02AE08)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F02AE08);
  }

  return result;
}

void sub_24B626A60(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_24B639364();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_24B626AB4()
{
  if (!qword_27F02AE38)
  {
    v0 = sub_24B638EE4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F02AE38);
    }
  }
}

uint64_t sub_24B626B0C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02ADA0, &qword_24B639D50);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02ADC0, &qword_24B639D60);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02AD98, &qword_24B639D48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02AD90, &qword_24B639D40);
  sub_24B638F34();
  sub_24B628F28(&qword_27F02ADB8, &qword_27F02AD90, &qword_24B639D40, MEMORY[0x277CDE5A0]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02ADC8, &unk_24B639D68);
  sub_24B628F28(&qword_27F02ADD0, &qword_27F02ADC8, &unk_24B639D68, MEMORY[0x277CDDB60]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t get_enum_tag_for_layout_string_27FitnessIntelligenceFeedback015InferenceRecordC4ViewV11SubmitState33_057968A32584189FAE94FEDCF982E2DELLO(uint64_t a1)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_24B626D00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24B626D48(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_24B626D8C(uint64_t result, unsigned int a2)
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

unint64_t sub_24B626DBC()
{
  result = qword_27F02AE48;
  if (!qword_27F02AE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02AE40, "0+");
    sub_24B628F28(&qword_27F02AE50, &qword_27F02AE58, "J+", MEMORY[0x277CDD7F8]);
    sub_24B628F28(&qword_27F02AE60, &qword_27F02AE68, &qword_24B639ED0, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02AE48);
  }

  return result;
}

uint64_t sub_24B626EA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InferenceRecordFeedbackView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void sub_24B626F54(void *a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t sub_24B626F74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InferenceRecordFeedbackView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B626FF4(uint64_t a1)
{
  v4 = *(type metadata accessor for InferenceRecordFeedbackView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24B6290D4;

  return sub_24B623048(a1, v6, v7, v1 + v5);
}

uint64_t sub_24B6270E4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24B62711C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24B6290D4;

  return sub_24B6260E8(a1, v4);
}

uint64_t sub_24B6271D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24B62728C;

  return sub_24B6260E8(a1, v4);
}

uint64_t sub_24B62728C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_24B6273CC()
{
  result = qword_27F02AEE0;
  if (!qword_27F02AEE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02AED0, &qword_24B639F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02AEE0);
  }

  return result;
}

unint64_t sub_24B62745C()
{
  result = qword_27F02AF00;
  if (!qword_27F02AF00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02AEC0, &qword_24B639F50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02AEF0, &qword_24B639F78);
    sub_24B6390D4();
    sub_24B628F28(&qword_27F02AEF8, &qword_27F02AEF0, &qword_24B639F78, MEMORY[0x277CDF038]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02AF00);
  }

  return result;
}

unint64_t sub_24B627584()
{
  result = qword_27F02AF38;
  if (!qword_27F02AF38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02AEB0, &qword_24B639F40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02AF10, &qword_24B639F88);
    sub_24B639164();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02AF18, &qword_24B639F90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02AF20, &qword_24B639F98);
    sub_24B628F28(&qword_27F02AF28, &qword_27F02AF20, &qword_24B639F98, MEMORY[0x277CDF1A8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24B6278EC(&qword_27F02AF30, MEMORY[0x277CDE3C8], MEMORY[0x277CDE3C0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02AF38);
  }

  return result;
}

unint64_t sub_24B62775C()
{
  result = qword_27F02AF50;
  if (!qword_27F02AF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02AEA0, &qword_24B639F30);
    sub_24B628F28(&qword_27F02AF48, &qword_27F02AF40, &qword_24B639FA0, MEMORY[0x277CDF068]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02AF50);
  }

  return result;
}

unint64_t sub_24B627820()
{
  result = qword_27F02AF68;
  if (!qword_27F02AF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02AE90, &qword_24B639F20);
    sub_24B628F28(&qword_27F02AF60, &qword_27F02AF58, &qword_24B639FA8, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02AF68);
  }

  return result;
}

uint64_t sub_24B6278EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B627954(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_24B627964()
{
  result = qword_27F02AFE0;
  if (!qword_27F02AFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02AFE0);
  }

  return result;
}

unint64_t sub_24B6279B8()
{
  result = qword_27F02AFF0;
  if (!qword_27F02AFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02AFF0);
  }

  return result;
}

unint64_t sub_24B627A0C()
{
  result = qword_27F02B048;
  if (!qword_27F02B048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02B040, &qword_24B63A040);
    sub_24B627AC4();
    sub_24B628F28(&qword_27F02B070, &qword_27F02B078, &qword_24B63A058, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B048);
  }

  return result;
}

unint64_t sub_24B627AC4()
{
  result = qword_27F02B050;
  if (!qword_27F02B050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02B058, &qword_24B63A048);
    sub_24B628F28(&qword_27F02B060, &qword_27F02B068, &qword_24B63A050, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B050);
  }

  return result;
}

unint64_t sub_24B627B7C()
{
  result = qword_27F02B088;
  if (!qword_27F02B088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02B020, &qword_24B63A020);
    sub_24B627C34();
    sub_24B628F28(&qword_27F02AE50, &qword_27F02AE58, "J+", MEMORY[0x277CDD7F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B088);
  }

  return result;
}

unint64_t sub_24B627C34()
{
  result = qword_27F02B090;
  if (!qword_27F02B090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02B030, &qword_24B63A030);
    sub_24B627CEC();
    sub_24B628F28(&qword_27F02B0C8, &qword_27F02B0D0, &qword_24B63A078, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B090);
  }

  return result;
}

unint64_t sub_24B627CEC()
{
  result = qword_27F02B098;
  if (!qword_27F02B098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02B0A0, &qword_24B63A068);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02B028, &qword_24B63A028);
    sub_24B6391A4();
    sub_24B628F28(&qword_27F02B0A8, &qword_27F02B028, &qword_24B63A028, MEMORY[0x277CDF028]);
    sub_24B6278EC(&qword_27F02B0B0, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
    swift_getOpaqueTypeConformance2();
    sub_24B628F28(&qword_27F02B0B8, &qword_27F02B0C0, &qword_24B63A070, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B098);
  }

  return result;
}

unint64_t sub_24B627E64()
{
  result = qword_27F02B0D8;
  if (!qword_27F02B0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02B080, &qword_24B63A060);
    sub_24B627A0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B0D8);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for InferenceRecordFeedbackView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_24B638BE4();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  __swift_destroy_boxed_opaque_existential_1((v0 + v3 + v1[5]));
  v7 = v0 + v3 + v1[6];
  v8 = sub_24B638D14();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v7, 1, v8))
  {
    (*(v9 + 8))(v7, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02ADE8, &qword_24B639DF0);

  v10 = v5 + v1[8];
  v11 = sub_24B638DD4();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v10, 1, v11))
  {
    (*(v12 + 8))(v10, v11);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02ADF0, &qword_24B639DF8);

  sub_24B626F54(*(v5 + v1[10]), *(v5 + v1[10] + 8), *(v5 + v1[10] + 16));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24B6281A8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for InferenceRecordFeedbackView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_24B628224()
{
  result = qword_27F02B0E8;
  if (!qword_27F02B0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02B0E0, &qword_24B63A0E0);
    sub_24B6282B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B0E8);
  }

  return result;
}

unint64_t sub_24B6282B0()
{
  result = qword_27F02B0F0;
  if (!qword_27F02B0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02B0F8, &qword_24B63A0E8);
    sub_24B628F28(&qword_27F02B100, &qword_27F02B108, &qword_24B63A0F0, MEMORY[0x277CDEFF0]);
    sub_24B628F28(&qword_27F02B110, &qword_27F02B118, &qword_24B63A0F8, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B0F0);
  }

  return result;
}

uint64_t sub_24B6283BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_24B628424(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24B628494(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B6284FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_23Tm()
{
  v1 = type metadata accessor for InferenceRecordFeedbackView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  v6 = sub_24B638BE4();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  __swift_destroy_boxed_opaque_existential_1((v0 + v3 + v1[5]));
  v7 = v0 + v3 + v1[6];
  v8 = sub_24B638D14();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v7, 1, v8))
  {
    (*(v9 + 8))(v7, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02ADE8, &qword_24B639DF0);

  v10 = v5 + v1[8];
  v11 = sub_24B638DD4();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v10, 1, v11))
  {
    (*(v12 + 8))(v10, v11);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02ADF0, &qword_24B639DF8);

  sub_24B626F54(*(v5 + v1[10]), *(v5 + v1[10] + 8), *(v5 + v1[10] + 16));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24B62880C(uint64_t a1)
{
  v4 = *(type metadata accessor for InferenceRecordFeedbackView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24B6290D4;

  return sub_24B624C6C(a1, v6, v7, v1 + v5);
}

uint64_t sub_24B6288FC()
{
  v1 = type metadata accessor for InferenceRecordFeedbackView(0);
  v2 = *(*(v1 - 1) + 80);
  v15 = *(*(v1 - 1) + 64);
  v3 = sub_24B638D14();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v16 = *(v4 + 64);
  swift_unknownObjectRelease();
  v6 = v0 + ((v2 + 32) & ~v2);
  v7 = sub_24B638BE4();
  (*(*(v7 - 8) + 8))(v6, v7);
  __swift_destroy_boxed_opaque_existential_1((v6 + v1[5]));
  v8 = v6 + v1[6];
  if (!(*(v4 + 48))(v8, 1, v3))
  {
    (*(v4 + 8))(v8, v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02ADE8, &qword_24B639DF0);

  v9 = v6 + v1[8];
  v10 = sub_24B638DD4();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v9, 1, v10))
  {
    (*(v11 + 8))(v9, v10);
  }

  v12 = v2 | v5;
  v13 = (((v2 + 32) & ~v2) + v15 + v5) & ~v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02ADF0, &qword_24B639DF8);

  sub_24B626F54(*(v6 + v1[10]), *(v6 + v1[10] + 8), *(v6 + v1[10] + 16));

  (*(v4 + 8))(v0 + v13, v3);

  return MEMORY[0x2821FE8E8](v0, v13 + v16, v12 | 7);
}

uint64_t sub_24B628C0C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for InferenceRecordFeedbackView(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_24B638D14() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_24B62728C;

  return sub_24B6240B4(a1, v10, v11, v1 + v6, v1 + v9);
}

id sub_24B628D5C(id result, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  if (!a3)
  {
    return result;
  }

  return result;
}

unint64_t sub_24B628D7C()
{
  result = qword_27F02B178;
  if (!qword_27F02B178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02AD88, &qword_24B639D38);
    sub_24B6278EC(&qword_27F02B180, MEMORY[0x277D0A190], MEMORY[0x277D0A198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B178);
  }

  return result;
}

unint64_t sub_24B628E30()
{
  result = qword_27F02B188;
  if (!qword_27F02B188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02B170, &qword_24B63A1B0);
    sub_24B638D14();
    sub_24B6278EC(&qword_27F02B180, MEMORY[0x277D0A190], MEMORY[0x277D0A198]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B188);
  }

  return result;
}

uint64_t sub_24B628F28(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_24B628F98(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t static FeedbackRouter.submitToRadar(inferenceFeedback:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_24B62917C;

  return sub_24B62B5C8(1756458, a1, 0);
}

uint64_t sub_24B62917C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v4;
  v8 = *v4;

  if (v3)
  {
    v9 = *(v8 + 8);

    return v9();
  }

  else
  {
    *(v7 + 32) = a3;
    *(v7 + 40) = a1;

    return MEMORY[0x2822009F8](sub_24B6292D8, 0, 0);
  }
}

uint64_t sub_24B6292D8()
{
  v0[2] = v0[5];
  v1 = sub_24B639624();
  v3 = v2;

  v4 = v0[1];

  return v4(v1, v3);
}

uint64_t static FeedbackRouter.launchTapToRadar(inferenceFeedback:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24B62728C;

  return sub_24B62A390(a1);
}

uint64_t sub_24B62941C()
{
  v1 = v0;
  v2 = sub_24B638D14();
  v109 = *(v2 - 8);
  v110 = v2;
  MEMORY[0x28223BE20](v2);
  v108 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B210, &unk_24B63A440);
  MEMORY[0x28223BE20](v4 - 8);
  v107 = &v94 - v5;
  v114 = sub_24B638C94();
  v116 = *(v114 - 8);
  v6 = MEMORY[0x28223BE20](v114);
  v111 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v104 = &v94 - v8;
  v9 = sub_24B638B24();
  v10 = *(v9 - 8);
  v98 = v9;
  v99 = v10;
  MEMORY[0x28223BE20](v9);
  v95 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_24B638C54();
  v115 = *(v113 - 8);
  v12 = MEMORY[0x28223BE20](v113);
  v105 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v112 = &v94 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v102 = &v94 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v94 - v18;
  v20 = sub_24B638BE4();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v106 = &v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v103 = &v94 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v100 = &v94 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v97 = &v94 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v94 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v94 - v33;
  v117 = 0;
  v118 = 0xE000000000000000;
  sub_24B639594();
  MEMORY[0x24C244F90](0x636E657265666E69, 0xEC00000022203A65);
  sub_24B638CD4();
  sub_24B638BB4();
  v35 = *(v21 + 8);
  v35(v34, v20);
  v36 = sub_24B638C34();
  v38 = v37;
  v39 = *(v115 + 8);
  v115 += 8;
  v96 = v39;
  v39(v19, v113);
  MEMORY[0x24C244F90](v36, v38);

  MEMORY[0x24C244F90](0x203A657461640A22, 0xE800000000000000);
  sub_24B638CD4();
  v40 = v95;
  sub_24B638BD4();
  v101 = v34;
  v41 = v34;
  v42 = v20;
  v35(v41, v20);
  sub_24B62B580(&qword_27F02B218, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
  v43 = v98;
  v44 = sub_24B639624();
  MEMORY[0x24C244F90](v44);

  (*(v99 + 8))(v40, v43);
  MEMORY[0x24C244F90](0xD000000000000013, 0x800000024B63B920);
  sub_24B638CD4();
  v45 = v104;
  sub_24B638BC4();
  v35(v32, v42);
  v46 = sub_24B638C64();
  v48 = v47;
  v49 = *(v116 + 8);
  v116 += 8;
  v104 = v49;
  (v49)(v45, v114);
  if (v48)
  {
    v50 = v46;
  }

  else
  {
    v50 = 6369134;
  }

  if (v48)
  {
    v51 = v48;
  }

  else
  {
    v51 = 0xE300000000000000;
  }

  MEMORY[0x24C244F90](v50, v51);

  MEMORY[0x24C244F90](0xD000000000000015, 0x800000024B63B940);
  v52 = v97;
  sub_24B638CD4();
  v53 = sub_24B638B94();
  v55 = v54;
  v35(v52, v42);
  if (v55)
  {
    v56 = v53;
  }

  else
  {
    v56 = 6369134;
  }

  if (v55)
  {
    v57 = v55;
  }

  else
  {
    v57 = 0xE300000000000000;
  }

  MEMORY[0x24C244F90](v56, v57);

  MEMORY[0x24C244F90](0xD000000000000010, 0x800000024B63B960);
  v58 = v100;
  sub_24B638CD4();
  v59 = v102;
  sub_24B638BB4();
  v35(v58, v42);
  v60 = v59;
  v61 = sub_24B638C14();
  v63 = v62;
  v64 = v113;
  v65 = v96;
  v96(v60, v113);
  if (v63)
  {
    v66 = v61;
  }

  else
  {
    v66 = 6369134;
  }

  if (v63)
  {
    v67 = v63;
  }

  else
  {
    v67 = 0xE300000000000000;
  }

  MEMORY[0x24C244F90](v66, v67);

  MEMORY[0x24C244F90](0x65566C65646F6D0ALL, 0xEF203A6E6F697372);
  v68 = v103;
  sub_24B638CD4();
  v69 = v112;
  sub_24B638BB4();
  v35(v68, v42);
  v70 = sub_24B638C04();
  v72 = v71;
  v65(v69, v64);
  v112 = 6369134;
  if (v72)
  {
    v73 = v70;
  }

  else
  {
    v73 = 6369134;
  }

  if (v72)
  {
    v74 = v72;
  }

  else
  {
    v74 = 0xE300000000000000;
  }

  MEMORY[0x24C244F90](v73, v74);

  MEMORY[0x24C244F90](0x203A6563696F760ALL, 0xE800000000000000);
  v75 = v106;
  v102 = v1;
  sub_24B638CD4();
  v76 = v105;
  sub_24B638BB4();
  v103 = v42;
  v106 = v35;
  v35(v75, v42);
  v77 = v107;
  sub_24B638C44();
  v78 = v77;
  v65(v76, v64);
  v79 = sub_24B638D54();
  v80 = *(v79 - 8);
  if ((*(v80 + 48))(v78, 1, v79) == 1)
  {
    sub_24B628424(v78, &qword_27F02B210, &unk_24B63A440);
    v81 = 0xE300000000000000;
  }

  else
  {
    v112 = sub_24B638D44();
    v81 = v82;
    (*(v80 + 8))(v78, v79);
  }

  MEMORY[0x24C244F90](v112, v81);

  MEMORY[0x24C244F90](0x656D69746E65730ALL, 0xEC000000203A746ELL);
  v83 = v108;
  sub_24B638D24();
  v84 = sub_24B638D04();
  v86 = v85;
  (*(v109 + 8))(v83, v110);
  MEMORY[0x24C244F90](v84, v86);

  MEMORY[0x24C244F90](0xD000000000000012, 0x800000024B63B980);
  v87 = sub_24B629F08();
  MEMORY[0x24C244F90](v87);

  MEMORY[0x24C244F90](0x74706D6F72700A0ALL, 0xEA00000000000A3ALL);
  v88 = v101;
  sub_24B638CD4();
  v89 = v111;
  sub_24B638BC4();
  (v106)(v88, v103);
  v90 = sub_24B638C74();
  v92 = v91;
  (v104)(v89, v114);
  MEMORY[0x24C244F90](v90, v92);

  return v117;
}

uint64_t sub_24B629F08()
{
  v0 = 6369134;
  v1 = sub_24B638974();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24B638CA4();
  if (v6)
  {
    v7 = v6;
    v8 = v5;
    v14 = v5;
    v15 = v6;
    sub_24B638964();
    sub_24B6279B8();
    v9 = sub_24B639574();
    v11 = v10;
    (*(v2 + 8))(v4, v1);

    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      v14 = 34;
      v15 = 0xE100000000000000;
      MEMORY[0x24C244F90](v8, v7);

      MEMORY[0x24C244F90](34, 0xE100000000000000);
      return v14;
    }

    else
    {
    }
  }

  return v0;
}

char *sub_24B62A080(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B200, &qword_24B63A430);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24B62A1B4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_24B62A390(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_24B638B54();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02AD80, &qword_24B639D30);
  v1[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B1E0, &qword_24B63A418);
  v1[7] = swift_task_alloc();
  v1[8] = type metadata accessor for TapToRadarDraft(0);
  v1[9] = swift_task_alloc();
  v3 = sub_24B638E94();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  v4 = sub_24B638B84();
  v1[13] = v4;
  v1[14] = *(v4 - 8);
  v1[15] = swift_task_alloc();
  v5 = sub_24B638AF4();
  v1[16] = v5;
  v1[17] = *(v5 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B62A634, 0, 0);
}

id sub_24B62A634()
{
  v1 = v0[21];
  v2 = v0[20];
  v3 = v0[16];
  v4 = v0[17];
  v5 = [objc_opt_self() defaultManager];
  v6 = [v5 temporaryDirectory];

  sub_24B638AB4();
  sub_24B638A94();
  v7 = *(v4 + 8);
  v0[23] = v7;
  v0[24] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v2, v3);
  sub_24B638AA4();
  v7(v1, v3);
  sub_24B638CE4();
  v72 = v7;
  v9 = v0[14];
  v8 = v0[15];
  v11 = v0[12];
  v10 = v0[13];
  v12 = v0[10];
  v13 = v0[11];
  sub_24B638E84();
  sub_24B62B580(&qword_27F02B1E8, MEMORY[0x277D09EC8], MEMORY[0x277D09EC0]);
  v0[25] = sub_24B638EA4();
  v0[26] = v14;
  (*(v13 + 8))(v11, v12);
  (*(v9 + 8))(v8, v10);
  sub_24B638B04();
  v15 = v0[22];
  v16 = v0[17];
  v71 = v0[16];
  v18 = v0[8];
  v17 = v0[9];
  v73 = v0[6];
  *v17 = 0x4449656C646E7542;
  *(v17 + 8) = 0xE800000000000000;
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  strcpy((v17 + 72), "Classification");
  *(v17 + 87) = -18;
  *(v17 + 88) = 10;
  *(v17 + 96) = 0x6375646F72706552;
  *(v17 + 104) = 0xEF7974696C696269;
  *(v17 + 112) = 6;
  *(v17 + 120) = 0x656C746954;
  *(v17 + 128) = 0xE500000000000000;
  *(v17 + 136) = 0;
  *(v17 + 144) = 0;
  *(v17 + 152) = 0x7470697263736544;
  *(v17 + 160) = 0xEB000000006E6F69;
  *(v17 + 168) = 0;
  *(v17 + 176) = 0;
  *(v17 + 184) = 0x7364726F7779654BLL;
  *(v17 + 192) = 0xE800000000000000;
  v19 = MEMORY[0x277D84F90];
  *(v17 + 200) = MEMORY[0x277D84F90];
  v20 = (v17 + v18[11]);
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B1F0, &qword_24B63A420) + 36);
  v22 = sub_24B638B24();
  (*(*(v22 - 8) + 56))(&v20[v21], 1, 1, v22);
  *v20 = 0x7349664F656D6954;
  *(v20 + 1) = 0xEB00000000657573;
  v23 = (v17 + v18[12]);
  *v23 = 0x656D686361747441;
  v23[1] = 0xEB0000000073746ELL;
  v70 = v23;
  v23[2] = v19;
  v24 = (v17 + v18[13]);
  *v24 = 0xD000000000000011;
  v24[1] = 0x800000024B63B820;
  v24[2] = v19;
  v25 = (v17 + v18[14]);
  *v25 = 0xD000000000000014;
  v25[1] = 0x800000024B63B840;
  v25[2] = v19;
  v26 = (v17 + v18[15]);
  strcpy(v26, "DeleteOnAttach");
  v26[15] = -18;
  v26[16] = 0;
  v27 = (v17 + v18[16]);
  *v27 = 0x4449656369766544;
  v27[1] = 0xE900000000000073;
  v69 = v27;
  v27[2] = v19;
  v28 = v17 + v18[17];
  strcpy(v28, "DeviceClasses");
  *(v28 + 14) = -4864;
  *(v28 + 16) = v19;
  v29 = v17 + v18[18];
  strcpy(v29, "DeviceModels");
  *(v29 + 13) = 0;
  *(v29 + 14) = -5120;
  *(v29 + 16) = v19;
  v30 = (v17 + v18[19]);
  *v30 = 0xD000000000000016;
  v30[1] = 0x800000024B63B860;
  v30[2] = 0;
  v31 = v17 + v18[20];
  *v31 = 0xD00000000000001ALL;
  *(v31 + 8) = 0x800000024B63B880;
  *(v31 + 16) = 0;
  v32 = v17 + v18[21];
  *v32 = 0x676169446F747541;
  *(v32 + 8) = 0xEF73636974736F6ELL;
  *(v32 + 16) = 0;
  v33 = (v17 + v18[22]);
  *v33 = 0xD00000000000001BLL;
  v33[1] = 0x800000024B63B8A0;
  v33[2] = v19;
  v34 = (v17 + v18[23]);
  *v34 = 0xD000000000000018;
  v34[1] = 0x800000024B63B8C0;
  v34[2] = 0;
  v34[3] = 0;
  v35 = (v17 + v18[24]);
  *v35 = 0xD000000000000012;
  v35[1] = 0x800000024B63B8E0;
  v35[2] = 0;
  v35[3] = 0;
  *(v17 + 32) = xmmword_24B63A3A0;
  *(v17 + 48) = xmmword_24B63A3B0;
  *(v17 + 64) = 0x800000024B63B900;
  *(v17 + 88) = 6;
  *(v17 + 136) = sub_24B638CA4();
  *(v17 + 144) = v36;
  *(v17 + 168) = sub_24B62941C();
  *(v17 + 176) = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B1F8, &qword_24B63A428);
  v38 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v68 = *(v16 + 72);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_24B63A3C0;
  v40 = *(v16 + 16);
  v41 = v39;
  v67 = v38;
  v40(v39 + v38, v15, v71);
  sub_24B638CB4();
  v42 = sub_24B638DD4();
  v43 = *(v42 - 8);
  v44 = (*(v43 + 48))(v73, 1, v42);
  v45 = v0[16];
  v46 = v0[17];
  v47 = v0[6];
  v48 = v0[7];
  if (v44 == 1)
  {
    sub_24B628424(v0[6], &qword_27F02AD80, &qword_24B639D30);
    (*(v46 + 56))(v48, 1, 1, v45);
LABEL_4:
    sub_24B628424(v0[7], &qword_27F02B1E0, &qword_24B63A418);
    goto LABEL_8;
  }

  sub_24B638D94();
  (*(v43 + 8))(v47, v42);
  if ((*(v46 + 48))(v48, 1, v45) == 1)
  {
    goto LABEL_4;
  }

  v50 = v0[18];
  v49 = v0[19];
  v51 = v0[16];
  v52 = *(v0[17] + 32);
  v52(v49, v0[7], v51);
  v40(v50, v49, v51);
  v54 = v41[2];
  v53 = v41[3];
  if (v54 >= v53 >> 1)
  {
    v41 = sub_24B62A1B4((v53 > 1), v54 + 1, 1, v41, &qword_27F02B1F8, &qword_24B63A428, MEMORY[0x277CC9260]);
  }

  v55 = v0[18];
  v56 = v0[16];
  v72(v0[19], v56);
  v41[2] = v54 + 1;
  v52(v41 + v67 + v54 * v68, v55, v56);
LABEL_8:
  result = [objc_opt_self() sharedInstance];
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v58 = result;
  v59 = [result getActivePairedDevice];

  if (v59)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B200, &qword_24B63A430);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_24B63A3C0;
    result = [v59 pairingID];
    if (result)
    {
      v61 = result;
      v62 = v0[4];
      v63 = v0[5];
      v64 = v0[3];
      sub_24B638B44();

      *(v60 + 32) = sub_24B638B34();
      *(v60 + 40) = v65;
      (*(v62 + 8))(v63, v64);

      v69[2] = v60;
      goto LABEL_12;
    }

LABEL_16:
    __break(1u);
    return result;
  }

LABEL_12:
  v70[2] = v41;
  v66 = swift_task_alloc();
  v0[27] = v66;
  *v66 = v0;
  v66[1] = sub_24B62B090;

  return sub_24B630A40();
}

uint64_t sub_24B62B090()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_24B62B2C4;
  }

  else
  {
    v2 = sub_24B62B1A4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B62B1A4()
{
  v1 = v0[23];
  v2 = v0[22];
  v3 = v0[16];
  v4 = v0[9];
  sub_24B62B4CC(v0[25], v0[26]);
  v1(v2, v3);
  sub_24B62B520(v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24B62B2C4()
{
  v1 = v0[23];
  v2 = v0[22];
  v3 = v0[16];
  v4 = v0[9];
  sub_24B62B4CC(v0[25], v0[26]);
  v1(v2, v3);
  sub_24B62B520(v4);

  v5 = v0[1];

  return v5();
}

uint64_t getEnumTagSinglePayload for FeedbackRouter(unsigned int *a1, int a2)
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

  return *a1;
}

_WORD *storeEnumTagSinglePayload for FeedbackRouter(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_24B62B4CC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_24B62B520(uint64_t a1)
{
  v2 = type metadata accessor for TapToRadarDraft(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B62B580(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B62B5C8(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 376) = a3;
  *(v3 + 96) = a1;
  *(v3 + 104) = a2;
  v4 = sub_24B6388F4();
  *(v3 + 112) = v4;
  *(v3 + 120) = *(v4 - 8);
  *(v3 + 128) = swift_task_alloc();
  v5 = sub_24B638E74();
  *(v3 + 136) = v5;
  *(v3 + 144) = *(v5 - 8);
  *(v3 + 152) = swift_task_alloc();
  v6 = sub_24B638C94();
  *(v3 + 160) = v6;
  *(v3 + 168) = *(v6 - 8);
  *(v3 + 176) = swift_task_alloc();
  v7 = sub_24B638BE4();
  *(v3 + 184) = v7;
  *(v3 + 192) = *(v7 - 8);
  *(v3 + 200) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B1E0, &qword_24B63A418);
  *(v3 + 208) = swift_task_alloc();
  v8 = sub_24B638AF4();
  *(v3 + 216) = v8;
  *(v3 + 224) = *(v8 - 8);
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B62B840, 0, 0);
}

uint64_t sub_24B62B840()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v3 = *(v0 + 208);
  v4 = *(v0 + 376);
  sub_24B62C874(0, 0, 1, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_24B62CB0C(*(v0 + 208));
    sub_24B62CB74();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    (*(*(v0 + 224) + 32))(*(v0 + 240), *(v0 + 208), *(v0 + 216));
    v8 = swift_task_alloc();
    *(v0 + 248) = v8;
    *v8 = v0;
    v8[1] = sub_24B62BA0C;

    return sub_24B62DBDC(v4 & 1);
  }
}

uint64_t sub_24B62BA0C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[32] = a1;
  v4[33] = a2;
  v4[34] = v2;

  if (v2)
  {
    v5 = sub_24B62C574;
  }

  else
  {
    v5 = sub_24B62BB24;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24B62BB24()
{
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[21];
  v6 = v0[18];
  v7 = v0[19];
  v26 = v0[20];
  v27 = v0[17];
  v28 = v0[12];
  v29 = v0[34];
  sub_24B639594();

  sub_24B638CD4();
  sub_24B638BC4();
  (*(v2 + 8))(v1, v3);
  sub_24B638C84();
  (*(v5 + 8))(v4, v26);
  v8 = sub_24B638E64();
  v10 = v9;
  (*(v6 + 8))(v7, v27);
  MEMORY[0x24C244F90](v8, v10);

  MEMORY[0x24C244F90](0x746E656D6F6D20, 0xE700000000000000);
  v11 = sub_24B62941C();
  v13 = v12;
  sub_24B638954();
  swift_allocObject();
  sub_24B638944();
  v0[2] = 0xD000000000000020;
  v0[3] = 0x800000024B63B9A0;
  v0[4] = v11;
  v0[5] = v13;
  v0[6] = 1802723668;
  v0[7] = 0xE400000000000000;
  v0[8] = v28;
  sub_24B62E828();
  v14 = sub_24B638934();
  v0[35] = v14;
  v0[36] = v15;
  if (v29)
  {
    (*(v0[28] + 8))(v0[30], v0[27]);

    v16 = v0[1];

    return v16();
  }

  else
  {
    v19 = v0[29];
    v18 = v0[30];
    v20 = v0[27];
    v21 = v0[28];
    v22 = v14;
    v23 = v15;

    (*(v21 + 16))(v19, v18, v20);
    sub_24B6388C4();
    sub_24B6388B4();
    sub_24B6388D4();
    sub_24B6388D4();
    sub_24B6388D4();
    sub_24B62E87C(v22, v23);
    sub_24B6388E4();
    v0[37] = [objc_opt_self() sharedSession];
    v24 = swift_task_alloc();
    v0[38] = v24;
    *v24 = v0;
    v24[1] = sub_24B62BF7C;
    v25 = v0[16];

    return MEMORY[0x28211ECF8](v25, 0);
  }
}

uint64_t sub_24B62BF7C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v4;
  v7 = *v4;
  v7[39] = a1;
  v7[40] = a2;
  v7[41] = v3;

  v8 = v6[37];
  if (v3)
  {

    v9 = sub_24B62C648;
  }

  else
  {

    v9 = sub_24B62C0DC;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_24B62C0DC()
{
  v1 = *(v0 + 328);
  sub_24B638924();
  swift_allocObject();
  sub_24B638914();
  sub_24B62E8D0();
  sub_24B638904();
  if (v1)
  {
    v3 = *(v0 + 312);
    v2 = *(v0 + 320);
    v4 = *(v0 + 280);
    v18 = *(v0 + 240);
    v5 = *(v0 + 224);
    v16 = *(v0 + 288);
    v17 = *(v0 + 216);
    v6 = *(v0 + 120);
    v7 = *(v0 + 128);
    v8 = *(v0 + 112);

    sub_24B62B4CC(v3, v2);
    sub_24B62B4CC(v4, v16);
    (*(v6 + 8))(v7, v8);
    (*(v5 + 8))(v18, v17);

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = *(v0 + 376);

    v19 = *(v0 + 72);
    *(v0 + 336) = v19;
    *(v0 + 352) = *(v0 + 88);
    v12 = swift_task_alloc();
    *(v0 + 360) = v12;
    *v12 = v0;
    v12[1] = sub_24B62C318;
    v13 = *(v0 + 256);
    v14 = *(v0 + 264);
    v15 = *(v0 + 104);

    return sub_24B62E9D0(v15, v19, v13, v14, v11 & 1);
  }
}

uint64_t sub_24B62C318()
{
  *(*v1 + 368) = v0;

  if (v0)
  {
    v2 = sub_24B62C74C;
  }

  else
  {
    v2 = sub_24B62C44C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B62C44C()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[30];
  v4 = v0[27];
  v5 = v0[28];
  v6 = v0[15];
  v7 = v0[16];
  v8 = v0[14];
  sub_24B62B4CC(v0[39], v0[40]);
  sub_24B62B4CC(v1, v2);
  (*(v6 + 8))(v7, v8);
  (*(v5 + 8))(v3, v4);

  v9 = v0[1];
  v10 = v0[43];
  v11 = v0[44];
  v12 = v0[42];

  return v9(v12, v10, v11);
}

uint64_t sub_24B62C574()
{
  (*(v0[28] + 8))(v0[30], v0[27]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24B62C648()
{
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[28];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[14];
  sub_24B62B4CC(v0[35], v0[36]);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_24B62C74C()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[30];
  v4 = v0[27];
  v5 = v0[28];
  v7 = v0[15];
  v6 = v0[16];
  v8 = v0[14];
  sub_24B62B4CC(v0[39], v0[40]);

  sub_24B62B4CC(v2, v1);
  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v3, v4);

  v9 = v0[1];

  return v9();
}

uint64_t sub_24B62C874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a5@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B1E0, &qword_24B63A418);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v23[-v10];
  v12 = sub_24B638AF4();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v23[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v18 = &v23[-v17];
  sub_24B638AD4();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_24B62CB0C(v11);
    return (*(v13 + 56))(a5, 1, 1, v12);
  }

  else
  {
    (*(v13 + 32))(v18, v11, v12);
    v20 = *(v13 + 16);
    v20(v16, v18, v12);
    v21 = sub_24B62CBC8(a1, a2, a3);
    sub_24B62CCCC(v21, v16);

    v22 = *(v13 + 8);
    v22(v18, v12);
    v20(a5, v16, v12);
    (*(v13 + 56))(a5, 0, 1, v12);
    return (v22)(v16, v12);
  }
}

uint64_t sub_24B62CB0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B1E0, &qword_24B63A418);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24B62CB74()
{
  result = qword_27F02B220;
  if (!qword_27F02B220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B220);
  }

  return result;
}

void *sub_24B62CBC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return &unk_285E8D718;
  }

  if (a3 == 1)
  {
    return &unk_285E8D748;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B200, &qword_24B63A430);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24B63A450;
  *(v6 + 32) = 0x736D656C626F7270;
  *(v6 + 40) = 0xE800000000000000;

  v7 = sub_24B639624();
  result = v6;
  *(v6 + 48) = v7;
  *(v6 + 56) = v8;
  *(v6 + 64) = 0x656D686361747461;
  *(v6 + 72) = 0xEB0000000073746ELL;
  *(v6 + 80) = a2;
  *(v6 + 88) = a3;
  return result;
}

uint64_t sub_24B62CCCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B638A74();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24B638AF4();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v15 = &v23 - v14;
  v16 = *(a1 + 16);
  if (v16)
  {
    v29 = *(v13 + 16);
    v28 = *MEMORY[0x277CC91D8];
    v26 = (v5 + 8);
    v27 = (v5 + 104);
    v30 = v13 + 16;
    v24 = (v13 + 40);
    v25 = (v13 + 8);
    v17 = (a1 + 40);
    do
    {
      v33 = v16;
      v18 = v7;
      v19 = v15;
      v20 = v4;
      v22 = *(v17 - 1);
      v21 = *v17;
      v29(v11, a2, v8);
      v31 = v22;
      v32 = v21;
      v4 = v20;
      v15 = v19;
      v7 = v18;
      (*v27)(v18, v28, v4);
      sub_24B6279B8();

      sub_24B638AE4();
      (*v26)(v18, v4);
      (*v25)(v11, v8);
      (*v24)(a2, v15, v8);

      v17 += 2;
      v16 = v33 - 1;
    }

    while (v33 != 1);
  }

  return result;
}

uint64_t sub_24B62CFC0()
{
  sub_24B639684();
  MEMORY[0x24C245180](0);
  return sub_24B6396A4();
}

uint64_t sub_24B62D02C(uint64_t a1)
{
  sub_24B639684();
  MEMORY[0x24C245180](0);
  return sub_24B6396A4();
}

uint64_t sub_24B62D08C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F54737365636361 && a2 == 0xEB000000006E656BLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B639634();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B62D130(uint64_t a1)
{
  v2 = sub_24B62FD8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B62D16C(uint64_t a1)
{
  v2 = sub_24B62FD8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B62D1A8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B258, &qword_24B63A738);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B62F6E8();
  sub_24B6396C4();
  v8[15] = 0;
  sub_24B639604();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_24B639604();
  v8[13] = 2;
  sub_24B639604();
  v8[12] = 3;
  sub_24B639614();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24B62D368(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B290, &qword_24B63A758);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B62FD38();
  sub_24B6396C4();
  v13 = 0;
  sub_24B639614();
  if (!v4)
  {
    v12 = 1;
    sub_24B639604();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_24B62D4FC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B278, &qword_24B63A748);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B62FD8C();
  sub_24B6396B4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = sub_24B6395E4();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_24B62D678(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B288, &qword_24B63A750);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B62FD8C();
  sub_24B6396C4();
  sub_24B639604();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24B62D7C8()
{
  v1 = *v0;
  sub_24B639684();
  MEMORY[0x24C245180](v1);
  return sub_24B6396A4();
}

uint64_t sub_24B62D810(uint64_t a1)
{
  v2 = *v1;
  sub_24B639684();
  MEMORY[0x24C245180](v2);
  return sub_24B6396A4();
}

uint64_t sub_24B62D854()
{
  v1 = 0x656C746974;
  v2 = 0x6966697373616C63;
  if (*v0 != 2)
  {
    v2 = 0x6E656E6F706D6F63;
  }

  if (*v0)
  {
    v1 = 0x7470697263736564;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24B62D8E8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B62F73C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B62D91C(uint64_t a1)
{
  v2 = sub_24B62F6E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B62D958(uint64_t a1)
{
  v2 = sub_24B62F6E8();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24B62D994@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_24B62F8AC(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_24B62D9FC()
{
  if (*v0)
  {
    return 0x656C746974;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_24B62DA28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_24B639634() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B639634();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24B62DB04(uint64_t a1)
{
  v2 = sub_24B62FD38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B62DB40(uint64_t a1)
{
  v2 = sub_24B62FD38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B62DB7C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_24B62FB8C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_24B62DBDC(char a1)
{
  *(v1 + 312) = a1;
  v2 = sub_24B6388F4();
  *(v1 + 176) = v2;
  *(v1 + 184) = *(v2 - 8);
  *(v1 + 192) = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B238, &qword_24B63A490);
  *(v1 + 200) = v3;
  *(v1 + 208) = *(v3 - 8);
  *(v1 + 216) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B1E0, &qword_24B63A418);
  *(v1 + 224) = swift_task_alloc();
  v4 = sub_24B638AF4();
  *(v1 + 232) = v4;
  *(v1 + 240) = *(v4 - 8);
  *(v1 + 248) = swift_task_alloc();
  *(v1 + 256) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B62DDA4, 0, 0);
}

uint64_t sub_24B62DDA4()
{
  v1 = objc_opt_self();
  if (![v1 isAppleConnectAvailable])
  {
    v6 = 0;
    goto LABEL_5;
  }

  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  v4 = *(v0 + 224);
  v5 = *(v0 + 312) & 1;
  sub_24B62C874(0, 0, 0, v4);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_24B62CB0C(*(v0 + 224));
    v6 = 1;
LABEL_5:
    sub_24B62CB74();
    swift_allocError();
    *v7 = v6;
    swift_willThrow();

    v8 = *(v0 + 8);

    return v8();
  }

  v10 = *(v0 + 216);
  v11 = *(v0 + 200);
  v12 = *(v0 + 208);
  (*(*(v0 + 240) + 32))(*(v0 + 256), *(v0 + 224), *(v0 + 232));
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_24B62E08C;
  swift_continuation_init();
  *(v0 + 136) = v11;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 112));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B240, &unk_24B63A498);
  sub_24B6394E4();
  (*(v12 + 32))(boxed_opaque_existential_0, v10, v11);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_24B62E924;
  *(v0 + 104) = &block_descriptor;
  [v1 authenticateWithEnvironment:v5 completionHandler:?];
  (*(v12 + 8))(boxed_opaque_existential_0, v11);

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_24B62E08C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 264) = v1;
  if (v1)
  {
    v2 = sub_24B62E694;
  }

  else
  {
    v2 = sub_24B62E19C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B62E19C()
{
  v1 = v0[18];
  v2 = v0[19];
  (*(v0[30] + 16))(v0[31], v0[32], v0[29]);
  sub_24B6388C4();
  sub_24B6388B4();
  MEMORY[0x24C244F90](v1, v2);

  sub_24B6388D4();

  v0[34] = [objc_opt_self() sharedSession];
  v3 = swift_task_alloc();
  v0[35] = v3;
  *v3 = v0;
  v3[1] = sub_24B62E314;
  v4 = v0[24];

  return MEMORY[0x28211ECF8](v4, 0);
}

uint64_t sub_24B62E314(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v4;
  v7 = *v4;
  v7[36] = a1;
  v7[37] = a2;
  v7[38] = v3;

  v8 = v6[34];
  if (v3)
  {

    v9 = sub_24B62E754;
  }

  else
  {

    v9 = sub_24B62E460;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_24B62E460()
{
  v1 = v0[38];
  sub_24B638924();
  swift_allocObject();
  sub_24B638914();
  sub_24B62F414();
  sub_24B638904();
  v3 = v0[36];
  v2 = v0[37];
  v4 = v0[32];
  if (v1)
  {
    v5 = v0[30];
    v19 = v0[29];
    v6 = v0[23];
    v7 = v0[24];
    v8 = v0[22];

    sub_24B62B4CC(v3, v2);
    (*(v6 + 8))(v7, v8);
    (*(v5 + 8))(v4, v19);

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[30];
    v12 = v0[29];
    v13 = v0[23];
    v14 = v0[24];
    v15 = v0[22];

    sub_24B62B4CC(v3, v2);
    (*(v13 + 8))(v14, v15);
    (*(v11 + 8))(v4, v12);
    v16 = v0[20];
    v17 = v0[21];

    v18 = v0[1];

    return v18(v16, v17);
  }
}

uint64_t sub_24B62E694()
{
  v1 = v0[32];
  v2 = v0[29];
  v3 = v0[30];
  swift_willThrow();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24B62E754()
{
  v1 = v0[32];
  v2 = v0[29];
  v3 = v0[30];
  (*(v0[23] + 8))(v0[24], v0[22]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

unint64_t sub_24B62E828()
{
  result = qword_27F02B228;
  if (!qword_27F02B228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B228);
  }

  return result;
}

uint64_t sub_24B62E87C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_24B62E8D0()
{
  result = qword_27F02B230;
  if (!qword_27F02B230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B230);
  }

  return result;
}

void sub_24B62E924(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B238, &qword_24B63A490);
    sub_24B6394F4();
  }

  else
  {
    sub_24B639464();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B238, &qword_24B63A490);
    sub_24B639504();
  }
}

uint64_t sub_24B62E9D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 200) = a5;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = sub_24B6388F4();
  *(v5 + 48) = v6;
  *(v5 + 56) = *(v6 - 8);
  *(v5 + 64) = swift_task_alloc();
  v7 = sub_24B638E94();
  *(v5 + 72) = v7;
  *(v5 + 80) = *(v7 - 8);
  *(v5 + 88) = swift_task_alloc();
  v8 = sub_24B638B84();
  *(v5 + 96) = v8;
  *(v5 + 104) = *(v8 - 8);
  *(v5 + 112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B1E0, &qword_24B63A418);
  *(v5 + 120) = swift_task_alloc();
  v9 = sub_24B638AF4();
  *(v5 + 128) = v9;
  *(v5 + 136) = *(v9 - 8);
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B62EBF0, 0, 0);
}

uint64_t sub_24B62EBF0()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  sub_24B62C874(v0[3], 0xD000000000000016, 0x800000024B63BA10, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_24B62CB0C(v0[15]);
    sub_24B62CB74();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();

    v15 = v0[1];

    return v15();
  }

  else
  {
    (*(v0[17] + 32))(v0[19], v0[15], v0[16]);
    sub_24B638CE4();
    v6 = v0[13];
    v5 = v0[14];
    v8 = v0[11];
    v7 = v0[12];
    v10 = v0[9];
    v9 = v0[10];
    sub_24B638E84();
    sub_24B62F2D0();
    v11 = sub_24B638EA4();
    v13 = v12;
    v14 = v11;
    v0[20] = v11;
    v0[21] = v12;
    (*(v9 + 8))(v8, v10);
    (*(v6 + 8))(v5, v7);
    (*(v0[17] + 16))(v0[18], v0[19], v0[16]);
    sub_24B6388C4();
    sub_24B6388B4();
    sub_24B6388D4();
    sub_24B6388D4();
    sub_24B62E87C(v14, v13);
    sub_24B6388E4();
    v0[22] = [objc_opt_self() sharedSession];
    v17 = swift_task_alloc();
    v0[23] = v17;
    *v17 = v0;
    v17[1] = sub_24B62EF84;
    v18 = v0[8];

    return MEMORY[0x28211ECF8](v18, 0);
  }
}

uint64_t sub_24B62EF84(uint64_t a1, unint64_t a2, void *a3)
{
  v8 = *v4;
  *(*v4 + 192) = v3;

  v9 = *(v8 + 176);
  if (v3)
  {

    v10 = sub_24B62F1E0;
  }

  else
  {
    sub_24B62B4CC(a1, a2);

    v10 = sub_24B62F0E0;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_24B62F0E0()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[6];
  sub_24B62B4CC(v0[20], v0[21]);
  (*(v4 + 8))(v5, v6);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_24B62F1E0()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];
  sub_24B62B4CC(v0[20], v0[21]);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

unint64_t sub_24B62F2D0()
{
  result = qword_27F02B1E8;
  if (!qword_27F02B1E8)
  {
    sub_24B638B84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B1E8);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_24B62F39C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_24B62F414()
{
  result = qword_27F02B248;
  if (!qword_27F02B248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B248);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_24B62F474(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24B62F4BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_24B62F51C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24B62F564(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_24B62F5D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24B62F618(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24B62F694()
{
  result = qword_27F02B250;
  if (!qword_27F02B250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B250);
  }

  return result;
}

unint64_t sub_24B62F6E8()
{
  result = qword_27F02B260;
  if (!qword_27F02B260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B260);
  }

  return result;
}

uint64_t sub_24B62F73C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_24B639634() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_24B639634() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6966697373616C63 && a2 == 0xEE006E6F69746163 || (sub_24B639634() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E656E6F706D6F63 && a2 == 0xEB00000000444974)
  {

    return 3;
  }

  else
  {
    v6 = sub_24B639634();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_24B62F8AC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B298, &qword_24B63A760);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B62F6E8();
  sub_24B6396B4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = 0;
  v9 = sub_24B6395E4();
  v25 = v10;
  v28 = 1;
  v11 = sub_24B6395E4();
  v24 = v12;
  v22 = v11;
  v27 = 2;
  v21 = sub_24B6395E4();
  v23 = v13;
  v26 = 3;
  v14 = sub_24B6395F4();
  (*(v6 + 8))(v8, v5);
  v15 = v25;

  v16 = v24;

  v17 = v23;

  __swift_destroy_boxed_opaque_existential_1(a1);

  *a2 = v9;
  a2[1] = v15;
  v19 = v21;
  a2[2] = v22;
  a2[3] = v16;
  a2[4] = v19;
  a2[5] = v17;
  a2[6] = v14;
  return result;
}

uint64_t sub_24B62FB8C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B268, &qword_24B63A740);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_24B62FD38();
  sub_24B6396B4();
  if (!v1)
  {
    v9[15] = 0;
    v7 = sub_24B6395F4();
    v9[14] = 1;
    sub_24B6395E4();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_24B62FD38()
{
  result = qword_27F02B270;
  if (!qword_27F02B270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B270);
  }

  return result;
}

unint64_t sub_24B62FD8C()
{
  result = qword_27F02B280;
  if (!qword_27F02B280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B280);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RadarService.CreateProblemRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RadarService.CreateProblemRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_24B62FF8C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_24B63001C(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B6300E0()
{
  result = qword_27F02B2A0;
  if (!qword_27F02B2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B2A0);
  }

  return result;
}

unint64_t sub_24B630138()
{
  result = qword_27F02B2A8;
  if (!qword_27F02B2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B2A8);
  }

  return result;
}

unint64_t sub_24B630190()
{
  result = qword_27F02B2B0;
  if (!qword_27F02B2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B2B0);
  }

  return result;
}

unint64_t sub_24B6301E8()
{
  result = qword_27F02B2B8;
  if (!qword_27F02B2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B2B8);
  }

  return result;
}

unint64_t sub_24B630240()
{
  result = qword_27F02B2C0;
  if (!qword_27F02B2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B2C0);
  }

  return result;
}

unint64_t sub_24B630298()
{
  result = qword_27F02B2C8;
  if (!qword_27F02B2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B2C8);
  }

  return result;
}

unint64_t sub_24B6302F0()
{
  result = qword_27F02B2D0;
  if (!qword_27F02B2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B2D0);
  }

  return result;
}

unint64_t sub_24B630348()
{
  result = qword_27F02B2D8;
  if (!qword_27F02B2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B2D8);
  }

  return result;
}

unint64_t sub_24B6303A0()
{
  result = qword_27F02B2E0;
  if (!qword_27F02B2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B2E0);
  }

  return result;
}

unint64_t sub_24B6303F8()
{
  result = qword_27F02B2E8;
  if (!qword_27F02B2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02B2E8);
  }

  return result;
}

uint64_t sub_24B63046C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656C62616E55;
  v6 = 0x74276E6469442049;
  v7 = 0xEC00000079725420;
  if (a1 != 4)
  {
    v6 = 0x6C70704120746F4ELL;
    v7 = 0xEE00656C62616369;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x656D6974656D6F53;
  v9 = 0xE900000000000073;
  if (a1 != 1)
  {
    v8 = 0x796C65726152;
    v9 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x737961776C41;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x656C62616E55)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEC00000079725420;
      if (v10 != 0x74276E6469442049)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEE00656C62616369;
      if (v10 != 0x6C70704120746F4ELL)
      {
LABEL_34:
        v13 = sub_24B639634();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE900000000000073;
      if (v10 != 0x656D6974656D6F53)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x796C65726152)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x737961776C41)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_24B630670(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 2u)
  {
    v8 = 0xE100000000000000;
    v9 = 48;
    if (a1 != 1)
    {
      v9 = 12589;
      v8 = 0xE200000000000000;
    }

    if (a1)
    {
      v6 = v9;
    }

    else
    {
      v6 = 7105633;
    }

    if (v2)
    {
      v7 = v8;
    }

    else
    {
      v7 = 0xE300000000000000;
    }
  }

  else
  {
    v3 = 0x800000024B63B560;
    v4 = 0xD00000000000001CLL;
    if (a1 == 5)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v3 = 0x800000024B63B580;
    }

    v5 = 0x800000024B63B520;
    if (a1 != 3)
    {
      v5 = 0x800000024B63B540;
    }

    if (a1 <= 4u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v4;
    }

    if (v2 <= 4)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v10 = 0xE100000000000000;
        if (v6 != 48)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v10 = 0xE200000000000000;
        if (v6 != 12589)
        {
LABEL_45:
          v12 = sub_24B639634();
          goto LABEL_46;
        }
      }
    }

    else
    {
      v10 = 0xE300000000000000;
      if (v6 != 7105633)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xD000000000000010;
    }

    else
    {
      v11 = 0xD00000000000001CLL;
    }

    if (a2 == 5)
    {
      v10 = 0x800000024B63B560;
    }

    else
    {
      v10 = 0x800000024B63B580;
    }

    if (v6 != v11)
    {
      goto LABEL_45;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v10 = 0x800000024B63B520;
    }

    else
    {
      v10 = 0x800000024B63B540;
    }

    if (v6 != 0xD000000000000010)
    {
      goto LABEL_45;
    }
  }

  if (v7 != v10)
  {
    goto LABEL_45;
  }

  v12 = 1;
LABEL_46:

  return v12 & 1;
}

uint64_t sub_24B630848(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE300000000000000;
  v5 = 6512973;
  if (a1 != 5)
  {
    v5 = 0x6E6F69736956;
    v4 = 0xE600000000000000;
  }

  v6 = 0x5654656C707041;
  if (a1 != 3)
  {
    v6 = 0x646F50656D6F48;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = 0xE700000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1684099177;
  if (a1 != 1)
  {
    v8 = 0x6863746157;
    v7 = 0xE500000000000000;
  }

  if (a1)
  {
    v3 = v7;
  }

  else
  {
    v8 = 0x656E6F685069;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v11 = 0xE400000000000000;
        if (v9 != 1684099177)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v11 = 0xE500000000000000;
        if (v9 != 0x6863746157)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x656E6F685069)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xE300000000000000;
      if (v9 != 6512973)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x6E6F69736956)
      {
LABEL_39:
        v12 = sub_24B639634();
        goto LABEL_40;
      }
    }
  }

  else
  {
    v11 = 0xE700000000000000;
    if (a2 == 3)
    {
      if (v9 != 0x5654656C707041)
      {
        goto LABEL_39;
      }
    }

    else if (v9 != 0x646F50656D6F48)
    {
      goto LABEL_39;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_39;
  }

  v12 = 1;
LABEL_40:

  return v12 & 1;
}

uint64_t sub_24B630A40()
{
  v1[18] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B2F0, &qword_24B63ABE0);
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  v3 = sub_24B638AF4();
  v1[22] = v3;
  v1[23] = *(v3 - 8);
  v1[24] = swift_task_alloc();
  sub_24B639524();
  v1[25] = sub_24B639514();
  v5 = sub_24B6394D4();
  v1[26] = v5;
  v1[27] = v4;

  return MEMORY[0x2822009F8](sub_24B630B9C, v5, v4);
}

uint64_t sub_24B630B9C()
{
  sub_24B631004(v0[24]);
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  v4 = [objc_opt_self() sharedApplication];
  v0[28] = v4;
  v5 = sub_24B638A84();
  v0[29] = v5;
  sub_24B63672C(MEMORY[0x277D84F90]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_24B636854();
  v6 = sub_24B639404();
  v0[30] = v6;

  v0[2] = v0;
  v0[7] = v0 + 31;
  v0[3] = sub_24B630E3C;
  swift_continuation_init();
  v0[17] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  sub_24B6394E4();
  (*(v1 + 32))(boxed_opaque_existential_0, v2, v3);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24B633C70;
  v0[13] = &block_descriptor_0;
  [v4 openURL:v5 options:v6 completionHandler:?];
  (*(v1 + 8))(boxed_opaque_existential_0, v3);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24B630E3C()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);

  return MEMORY[0x2822009F8](sub_24B630F44, v2, v1);
}

uint64_t sub_24B630F44()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  v4 = v0[24];
  v5 = v0[22];
  v6 = v0[23];

  (*(v6 + 8))(v4, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_24B631004@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B1E0, &qword_24B63A418);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_24B6389F4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B6389E4();
  sub_24B6389D4();
  MEMORY[0x24C2444B0](7824750, 0xE300000000000000);
  sub_24B631254();
  sub_24B6389A4();
  sub_24B6389B4();
  v9 = sub_24B638AF4();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {
    sub_24B628424(v4, &qword_27F02B1E0, &qword_24B63A418);
    sub_24B6368D4();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    (*(v6 + 8))(v8, v5);
    return (*(v10 + 32))(a1, v4, v9);
  }
}

char *sub_24B631254()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B310, &unk_24B63AC00);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v331 = &v295 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v330 = &v295 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v329 = &v295 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v326 = &v295 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v323 = &v295 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v320 = &v295 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v319 = &v295 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v295 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v295 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v295 - v23;
  v25 = sub_24B638994();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v298 = &v295 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v297 = &v295 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v314 = &v295 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v313 = &v295 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v350 = &v295 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v312 = &v295 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v349 = &v295 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v348 = &v295 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v311 = &v295 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v347 = &v295 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v328 = &v295 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v327 = &v295 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v346 = &v295 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v310 = &v295 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v345 = &v295 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v344 = &v295 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v309 = &v295 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v343 = &v295 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v342 = &v295 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v308 = &v295 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v341 = &v295 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v340 = &v295 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v307 = &v295 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v339 = &v295 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v325 = &v295 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v324 = &v295 - v78;
  v79 = MEMORY[0x28223BE20](v77);
  v351 = &v295 - v80;
  v81 = MEMORY[0x28223BE20](v79);
  v306 = &v295 - v82;
  v83 = MEMORY[0x28223BE20](v81);
  v338 = &v295 - v84;
  v85 = MEMORY[0x28223BE20](v83);
  v337 = &v295 - v86;
  v87 = MEMORY[0x28223BE20](v85);
  v305 = &v295 - v88;
  v89 = MEMORY[0x28223BE20](v87);
  v336 = &v295 - v90;
  v91 = MEMORY[0x28223BE20](v89);
  v335 = &v295 - v92;
  v93 = MEMORY[0x28223BE20](v91);
  v304 = &v295 - v94;
  v95 = MEMORY[0x28223BE20](v93);
  v334 = &v295 - v96;
  v97 = MEMORY[0x28223BE20](v95);
  v322 = &v295 - v98;
  v99 = MEMORY[0x28223BE20](v97);
  v321 = &v295 - v100;
  v101 = MEMORY[0x28223BE20](v99);
  v333 = &v295 - v102;
  v103 = MEMORY[0x28223BE20](v101);
  v303 = &v295 - v104;
  v105 = MEMORY[0x28223BE20](v103);
  v332 = &v295 - v106;
  v107 = MEMORY[0x28223BE20](v105);
  v302 = &v295 - v108;
  v109 = MEMORY[0x28223BE20](v107);
  v301 = &v295 - v110;
  v111 = MEMORY[0x28223BE20](v109);
  v300 = &v295 - v112;
  v113 = MEMORY[0x28223BE20](v111);
  v299 = &v295 - v114;
  v115 = MEMORY[0x28223BE20](v113);
  v318 = &v295 - v116;
  v117 = MEMORY[0x28223BE20](v115);
  v317 = &v295 - v118;
  v119 = MEMORY[0x28223BE20](v117);
  v316 = &v295 - v120;
  v121 = MEMORY[0x28223BE20](v119);
  v315 = &v295 - v122;
  v123 = MEMORY[0x28223BE20](v121);
  v125 = &v295 - v124;
  MEMORY[0x28223BE20](v123);
  v127 = &v295 - v126;
  v355 = v26;
  v356 = MEMORY[0x277D84F90];
  v128 = *(v1 + 24);
  v352 = v1;
  if (!v128)
  {
    v353 = *(v26 + 56);
    v353(v24, 1, 1, v25);
LABEL_5:
    sub_24B628424(v24, &qword_27F02B310, &unk_24B63AC00);
    v129 = *(v1 + 48);
    if (!v129)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v26 = v355;
  sub_24B638984();
  v353 = *(v26 + 56);
  v353(v24, 0, 1, v25);

  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    v1 = v352;
    goto LABEL_5;
  }

  v354 = *(v26 + 32);
  v354(v127, v24, v25);
  (*(v26 + 16))(v125, v127, v25);
  v152 = sub_24B62A18C(0, 1, 1, MEMORY[0x277D84F90]);
  v154 = *(v152 + 2);
  v153 = *(v152 + 3);
  v296 = v19;
  if (v154 >= v153 >> 1)
  {
    v152 = sub_24B62A18C((v153 > 1), v154 + 1, 1, v152);
  }

  v155 = v355;
  v156 = v355 + 8;
  (*(v355 + 8))(v127, v25);
  *(v152 + 2) = v154 + 1;
  v157 = &v152[((*(v156 + 72) + 32) & ~*(v156 + 72)) + *(v156 + 64) * v154];
  v26 = v155;
  v354(v157, v125, v25);
  v356 = v152;
  v1 = v352;
  v19 = v296;
  v129 = *(v352 + 48);
  if (v129)
  {
LABEL_6:
    v131 = *(v1 + 56);
    v130 = *(v1 + 64);
    v357 = *(v1 + 32);
    v358 = v129;
    v359 = v131;
    v360 = v130;
    v132 = sub_24B633CCC();
    sub_24B635DF4(v132);
  }

LABEL_7:
  v133 = *(v1 + 88);

  sub_24B6357DC(v133, v22);

  v354 = *(v26 + 48);
  if (v354(v22, 1, v25) == 1)
  {
    sub_24B628424(v22, &qword_27F02B310, &unk_24B63AC00);
  }

  else
  {
    v134 = *(v26 + 32);
    v135 = v315;
    v134(v315, v22, v25);
    (*(v26 + 16))(v316, v135, v25);
    v136 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v136 = sub_24B62A18C(0, *(v136 + 2) + 1, 1, v136);
    }

    v138 = *(v136 + 2);
    v137 = *(v136 + 3);
    if (v138 >= v137 >> 1)
    {
      v136 = sub_24B62A18C((v137 > 1), v138 + 1, 1, v136);
    }

    (*(v26 + 8))(v315, v25);
    *(v136 + 2) = v138 + 1;
    v134(&v136[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v138], v316, v25);
    v356 = v136;
    v1 = v352;
  }

  v139 = *(v1 + 112);

  sub_24B6359D0(v139, v19);

  if (v354(v19, 1, v25) == 1)
  {
    sub_24B628424(v19, &qword_27F02B310, &unk_24B63AC00);
    if (*(v1 + 144))
    {
      goto LABEL_16;
    }

LABEL_28:
    v140 = v319;
    v353(v319, 1, 1, v25);
    goto LABEL_29;
  }

  v147 = *(v26 + 32);
  v148 = v317;
  v147(v317, v19, v25);
  (*(v26 + 16))(v318, v148, v25);
  v149 = v356;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v149 = sub_24B62A18C(0, *(v149 + 2) + 1, 1, v149);
  }

  v151 = *(v149 + 2);
  v150 = *(v149 + 3);
  if (v151 >= v150 >> 1)
  {
    v149 = sub_24B62A18C((v150 > 1), v151 + 1, 1, v149);
  }

  (*(v26 + 8))(v317, v25);
  *(v149 + 2) = v151 + 1;
  v147(&v149[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v151], v318, v25);
  v356 = v149;
  if (!*(v1 + 144))
  {
    goto LABEL_28;
  }

LABEL_16:

  v140 = v319;
  sub_24B638984();
  v353(v140, 0, 1, v25);

  if (v354(v140, 1, v25) != 1)
  {
    v141 = *(v26 + 32);
    v142 = v299;
    v141(v299, v140, v25);
    (*(v26 + 16))(v300, v142, v25);
    v143 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v143 = sub_24B62A18C(0, *(v143 + 2) + 1, 1, v143);
    }

    v145 = *(v143 + 2);
    v144 = *(v143 + 3);
    if (v145 >= v144 >> 1)
    {
      v143 = sub_24B62A18C((v144 > 1), v145 + 1, 1, v143);
    }

    (*(v26 + 8))(v299, v25);
    *(v143 + 2) = v145 + 1;
    v141(&v143[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v145], v300, v25);
    v356 = v143;
    if (!*(v1 + 176))
    {
      goto LABEL_22;
    }

    goto LABEL_30;
  }

LABEL_29:
  sub_24B628424(v140, &qword_27F02B310, &unk_24B63AC00);
  if (!*(v1 + 176))
  {
LABEL_22:
    v146 = v320;
    v353(v320, 1, 1, v25);
LABEL_31:
    sub_24B628424(v146, &qword_27F02B310, &unk_24B63AC00);
    goto LABEL_41;
  }

LABEL_30:

  v146 = v320;
  sub_24B638984();
  v353(v146, 0, 1, v25);

  if (v354(v146, 1, v25) == 1)
  {
    goto LABEL_31;
  }

  v158 = *(v26 + 32);
  v159 = v301;
  v158(v301, v146, v25);
  (*(v26 + 16))(v302, v159, v25);
  v160 = v356;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v160 = sub_24B62A18C(0, *(v160 + 2) + 1, 1, v160);
  }

  v162 = *(v160 + 2);
  v161 = *(v160 + 3);
  if (v162 >= v161 >> 1)
  {
    v160 = sub_24B62A18C((v161 > 1), v162 + 1, 1, v160);
  }

  (*(v26 + 8))(v301, v25);
  *(v160 + 2) = v162 + 1;
  v158(&v160[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v162], v302, v25);
  v356 = v160;
LABEL_41:

  sub_24B63643C(v163);
  if (v164)
  {
    v165 = v303;
    sub_24B638984();

    v166 = *(v26 + 32);
    v167 = v332;
    v166(v332, v165, v25);
    (*(v26 + 16))(v333, v167, v25);
    v168 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v168 = sub_24B62A18C(0, *(v168 + 2) + 1, 1, v168);
    }

    v170 = *(v168 + 2);
    v169 = *(v168 + 3);
    if (v170 >= v169 >> 1)
    {
      v168 = sub_24B62A18C((v169 > 1), v170 + 1, 1, v168);
    }

    (*(v26 + 8))(v332, v25);
    *(v168 + 2) = v170 + 1;
    v166(&v168[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v170], v333, v25);
    v356 = v168;
  }

  else
  {
  }

  v171 = type metadata accessor for TapToRadarDraft(0);
  v172 = v323;
  sub_24B635B28(v323);
  if (v354(v172, 1, v25) == 1)
  {
    sub_24B628424(v172, &qword_27F02B310, &unk_24B63AC00);
  }

  else
  {
    v173 = *(v26 + 32);
    v174 = v321;
    v173(v321, v172, v25);
    (*(v26 + 16))(v322, v174, v25);
    v175 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v175 = sub_24B62A18C(0, *(v175 + 2) + 1, 1, v175);
    }

    v177 = *(v175 + 2);
    v176 = *(v175 + 3);
    if (v177 >= v176 >> 1)
    {
      v175 = sub_24B62A18C((v176 > 1), v177 + 1, 1, v175);
    }

    (*(v26 + 8))(v321, v25);
    *(v175 + 2) = v177 + 1;
    v173(&v175[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v177], v322, v25);
    v356 = v175;
    v1 = v352;
  }

  sub_24B636228(v178);
  if (v179)
  {
    v180 = v304;
    sub_24B638984();

    v181 = *(v26 + 32);
    v182 = v334;
    v181(v334, v180, v25);
    (*(v26 + 16))(v335, v182, v25);
    v183 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v183 = sub_24B62A18C(0, *(v183 + 2) + 1, 1, v183);
    }

    v185 = *(v183 + 2);
    v184 = *(v183 + 3);
    if (v185 >= v184 >> 1)
    {
      v183 = sub_24B62A18C((v184 > 1), v185 + 1, 1, v183);
    }

    (*(v26 + 8))(v334, v25);
    *(v183 + 2) = v185 + 1;
    v181(&v183[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v185], v335, v25);
    v356 = v183;
    v1 = v352;
  }

  else
  {
  }

  sub_24B636228(v186);
  if (v187)
  {
    v188 = v305;
    sub_24B638984();

    v189 = *(v26 + 32);
    v190 = v336;
    v189(v336, v188, v25);
    (*(v26 + 16))(v337, v190, v25);
    v191 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v191 = sub_24B62A18C(0, *(v191 + 2) + 1, 1, v191);
    }

    v193 = *(v191 + 2);
    v192 = *(v191 + 3);
    if (v193 >= v192 >> 1)
    {
      v191 = sub_24B62A18C((v192 > 1), v193 + 1, 1, v191);
    }

    (*(v26 + 8))(v336, v25);
    *(v191 + 2) = v193 + 1;
    v189(&v191[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v193], v337, v25);
    v356 = v191;
    v1 = v352;
  }

  else
  {
  }

  sub_24B6360F8(v194);
  if (v195)
  {
    v196 = v306;
    sub_24B638984();

    v197 = *(v26 + 32);
    v198 = v338;
    v197(v338, v196, v25);
    (*(v26 + 16))(v351, v198, v25);
    v199 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v199 = sub_24B62A18C(0, *(v199 + 2) + 1, 1, v199);
    }

    v201 = *(v199 + 2);
    v200 = *(v199 + 3);
    if (v201 >= v200 >> 1)
    {
      v199 = sub_24B62A18C((v200 > 1), v201 + 1, 1, v199);
    }

    (*(v26 + 8))(v338, v25);
    *(v199 + 2) = v201 + 1;
    v197(&v199[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v201], v351, v25);
    v356 = v199;
    v1 = v352;
  }

  else
  {
  }

  v202 = v326;
  sub_24B638984();

  v351 = (v26 + 56);
  v353(v202, 0, 1, v25);

  if (v354(v202, 1, v25) == 1)
  {
    sub_24B628424(v202, &qword_27F02B310, &unk_24B63AC00);
  }

  else
  {
    v203 = *(v26 + 32);
    v204 = v324;
    v203(v324, v202, v25);
    (*(v26 + 16))(v325, v204, v25);
    v205 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v205 = sub_24B62A18C(0, *(v205 + 2) + 1, 1, v205);
    }

    v207 = *(v205 + 2);
    v206 = *(v205 + 3);
    if (v207 >= v206 >> 1)
    {
      v205 = sub_24B62A18C((v206 > 1), v207 + 1, 1, v205);
    }

    v208 = v355 + 8;
    (*(v355 + 8))(v324, v25);
    *(v205 + 2) = v207 + 1;
    v203(&v205[((*(v208 + 72) + 32) & ~*(v208 + 72)) + *(v208 + 64) * v207], v325, v25);
    v356 = v205;
  }

  sub_24B6360F8(v209);
  if (v210)
  {
    v211 = v307;
    sub_24B638984();

    v212 = v355;
    v213 = *(v355 + 32);
    v214 = v339;
    v213(v339, v211, v25);
    (*(v212 + 16))(v340, v214, v25);
    v215 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v215 = sub_24B62A18C(0, *(v215 + 2) + 1, 1, v215);
    }

    v217 = *(v215 + 2);
    v216 = *(v215 + 3);
    if (v217 >= v216 >> 1)
    {
      v215 = sub_24B62A18C((v216 > 1), v217 + 1, 1, v215);
    }

    v218 = v355 + 8;
    (*(v355 + 8))(v339, v25);
    *(v215 + 2) = v217 + 1;
    v213(&v215[((*(v218 + 72) + 32) & ~*(v218 + 72)) + *(v218 + 64) * v217], v340, v25);
    v356 = v215;
  }

  else
  {
  }

  sub_24B635F20(v219);
  if (v220)
  {
    v221 = v308;
    sub_24B638984();

    v222 = v355;
    v223 = *(v355 + 32);
    v224 = v341;
    v223(v341, v221, v25);
    (*(v222 + 16))(v342, v224, v25);
    v225 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v225 = sub_24B62A18C(0, *(v225 + 2) + 1, 1, v225);
    }

    v227 = *(v225 + 2);
    v226 = *(v225 + 3);
    if (v227 >= v226 >> 1)
    {
      v225 = sub_24B62A18C((v226 > 1), v227 + 1, 1, v225);
    }

    v228 = v355 + 8;
    (*(v355 + 8))(v341, v25);
    *(v225 + 2) = v227 + 1;
    v223(&v225[((*(v228 + 72) + 32) & ~*(v228 + 72)) + *(v228 + 64) * v227], v342, v25);
    v356 = v225;
  }

  else
  {
  }

  sub_24B6360F8(v229);
  if (v230)
  {
    v231 = v309;
    sub_24B638984();

    v232 = v355;
    v233 = *(v355 + 32);
    v234 = v343;
    v233(v343, v231, v25);
    (*(v232 + 16))(v344, v234, v25);
    v235 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v235 = sub_24B62A18C(0, *(v235 + 2) + 1, 1, v235);
    }

    v237 = *(v235 + 2);
    v236 = *(v235 + 3);
    if (v237 >= v236 >> 1)
    {
      v235 = sub_24B62A18C((v236 > 1), v237 + 1, 1, v235);
    }

    v238 = v355 + 8;
    (*(v355 + 8))(v343, v25);
    *(v235 + 2) = v237 + 1;
    v233(&v235[((*(v238 + 72) + 32) & ~*(v238 + 72)) + *(v238 + 64) * v237], v344, v25);
    v356 = v235;
  }

  else
  {
  }

  v239 = *(v1 + v171[19] + 16);

  sub_24B634C20(v239);
  if (v240)
  {
    v241 = v310;
    sub_24B638984();

    v242 = v355;
    v243 = *(v355 + 32);
    v244 = v345;
    v243(v345, v241, v25);
    (*(v242 + 16))(v346, v244, v25);
    v245 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v245 = sub_24B62A18C(0, *(v245 + 2) + 1, 1, v245);
    }

    v247 = *(v245 + 2);
    v246 = *(v245 + 3);
    if (v247 >= v246 >> 1)
    {
      v245 = sub_24B62A18C((v246 > 1), v247 + 1, 1, v245);
    }

    v248 = v355 + 8;
    (*(v355 + 8))(v345, v25);
    *(v245 + 2) = v247 + 1;
    v243(&v245[((*(v248 + 72) + 32) & ~*(v248 + 72)) + *(v248 + 64) * v247], v346, v25);
    v356 = v245;
  }

  else
  {
  }

  v249 = v329;
  sub_24B638984();

  v353(v249, 0, 1, v25);
  v250 = v249;

  if (v354(v249, 1, v25) == 1)
  {
    sub_24B628424(v249, &qword_27F02B310, &unk_24B63AC00);
  }

  else
  {
    v251 = v355;
    v252 = *(v355 + 32);
    v253 = v327;
    v252(v327, v250, v25);
    (*(v251 + 16))(v328, v253, v25);
    v254 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v254 = sub_24B62A18C(0, *(v254 + 2) + 1, 1, v254);
    }

    v256 = *(v254 + 2);
    v255 = *(v254 + 3);
    if (v256 >= v255 >> 1)
    {
      v254 = sub_24B62A18C((v255 > 1), v256 + 1, 1, v254);
    }

    v257 = v355 + 8;
    (*(v355 + 8))(v327, v25);
    *(v254 + 2) = v256 + 1;
    v252(&v254[((*(v257 + 72) + 32) & ~*(v257 + 72)) + *(v257 + 64) * v256], v328, v25);
    v356 = v254;
  }

  v258 = *(v1 + v171[21] + 16);

  sub_24B6353A4(v258);
  if (v259)
  {
    v260 = v311;
    sub_24B638984();

    v261 = v355;
    v262 = *(v355 + 32);
    v263 = v347;
    v262(v347, v260, v25);
    (*(v261 + 16))(v348, v263, v25);
    v264 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v264 = sub_24B62A18C(0, *(v264 + 2) + 1, 1, v264);
    }

    v266 = *(v264 + 2);
    v265 = *(v264 + 3);
    if (v266 >= v265 >> 1)
    {
      v264 = sub_24B62A18C((v265 > 1), v266 + 1, 1, v264);
    }

    v267 = v355 + 8;
    (*(v355 + 8))(v347, v25);
    *(v264 + 2) = v266 + 1;
    v262(&v264[((*(v267 + 72) + 32) & ~*(v267 + 72)) + *(v267 + 64) * v266], v348, v25);
    v356 = v264;
  }

  else
  {
  }

  sub_24B6360F8(v268);
  if (v269)
  {
    v270 = v312;
    sub_24B638984();

    v271 = v355;
    v272 = *(v355 + 32);
    v273 = v349;
    v272(v349, v270, v25);
    (*(v271 + 16))(v350, v273, v25);
    v274 = v356;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v274 = sub_24B62A18C(0, *(v274 + 2) + 1, 1, v274);
    }

    v276 = *(v274 + 2);
    v275 = *(v274 + 3);
    if (v276 >= v275 >> 1)
    {
      v274 = sub_24B62A18C((v275 > 1), v276 + 1, 1, v274);
    }

    v277 = v355 + 8;
    (*(v355 + 8))(v349, v25);
    *(v274 + 2) = v276 + 1;
    v272(&v274[((*(v277 + 72) + 32) & ~*(v277 + 72)) + *(v277 + 64) * v276], v350, v25);
    v356 = v274;
  }

  else
  {
  }

  if (!*(v1 + v171[23] + 24))
  {
    v278 = v330;
    v353(v330, 1, 1, v25);
    v280 = v355;
    goto LABEL_140;
  }

  v278 = v330;
  sub_24B638984();
  v353(v278, 0, 1, v25);

  v279 = v354(v278, 1, v25);
  v280 = v355;
  if (v279 == 1)
  {
LABEL_140:
    sub_24B628424(v278, &qword_27F02B310, &unk_24B63AC00);
    goto LABEL_141;
  }

  v281 = *(v355 + 32);
  v282 = v313;
  v281(v313, v278, v25);
  (*(v280 + 16))(v314, v282, v25);
  v283 = v356;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v283 = sub_24B62A18C(0, *(v283 + 2) + 1, 1, v283);
  }

  v285 = *(v283 + 2);
  v284 = *(v283 + 3);
  if (v285 >= v284 >> 1)
  {
    v283 = sub_24B62A18C((v284 > 1), v285 + 1, 1, v283);
  }

  v280 = v355;
  v286 = v355 + 8;
  (*(v355 + 8))(v313, v25);
  *(v283 + 2) = v285 + 1;
  v281(&v283[((*(v286 + 72) + 32) & ~*(v286 + 72)) + *(v286 + 64) * v285], v314, v25);
  v356 = v283;
LABEL_141:
  if (!*(v352 + v171[24] + 24))
  {
    v287 = v331;
    v353(v331, 1, 1, v25);
    goto LABEL_149;
  }

  v287 = v331;
  sub_24B638984();
  v353(v287, 0, 1, v25);

  if (v354(v287, 1, v25) == 1)
  {
LABEL_149:
    sub_24B628424(v287, &qword_27F02B310, &unk_24B63AC00);
    return v356;
  }

  v288 = *(v280 + 32);
  v289 = v297;
  v288(v297, v287, v25);
  v290 = v298;
  (*(v280 + 16))(v298, v289, v25);
  v291 = v356;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v291 = sub_24B62A18C(0, *(v291 + 2) + 1, 1, v291);
  }

  v293 = *(v291 + 2);
  v292 = *(v291 + 3);
  if (v293 >= v292 >> 1)
  {
    v291 = sub_24B62A18C((v292 > 1), v293 + 1, 1, v291);
  }

  (*(v280 + 8))(v289, v25);
  *(v291 + 2) = v293 + 1;
  v288(&v291[((*(v280 + 80) + 32) & ~*(v280 + 80)) + *(v280 + 72) * v293], v290, v25);
  return v291;
}

uint64_t sub_24B633C70(uint64_t a1, char a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B2F0, &qword_24B63ABE0);
  return sub_24B639504();
}

uint64_t sub_24B633CCC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B208, &qword_24B63A438);
  sub_24B638994();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24B63AB10;
  sub_24B639624();
  sub_24B638984();

  sub_24B638984();
  sub_24B638984();
  return v0;
}

uint64_t sub_24B633E48()
{
  v1 = *v0;
  sub_24B639684();
  MEMORY[0x24C245180](v1);
  sub_24B639494();
  sub_24B639494();
  return sub_24B6396A4();
}

uint64_t sub_24B633EC8(uint64_t a1)
{
  MEMORY[0x24C245180](*v1);
  sub_24B639494();

  return sub_24B639494();
}

uint64_t sub_24B633F38(uint64_t a1)
{
  v2 = *v1;
  sub_24B639684();
  MEMORY[0x24C245180](v2);
  sub_24B639494();
  sub_24B639494();
  return sub_24B6396A4();
}

uint64_t sub_24B633FB4(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (sub_24B639634() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_24B639634();
}

unint64_t sub_24B634068(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x2065727574616546;
    v6 = 0x6D65636E61686E45;
    if (a1 != 8)
    {
      v6 = 1802723668;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x2073756F69726553;
    if (a1 != 5)
    {
      v7 = 0x754220726568744FLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x7974697275636553;
    v2 = 0x7265776F50;
    v3 = 0x616D726F66726550;
    if (a1 != 3)
    {
      v3 = 0x69626173552F4955;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24B6341CC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_24B634068(*a1);
  v5 = v4;
  if (v3 == sub_24B634068(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24B639634();
  }

  return v8 & 1;
}

uint64_t sub_24B634254()
{
  v1 = *v0;
  sub_24B639684();
  sub_24B634068(v1);
  sub_24B639494();

  return sub_24B6396A4();
}

uint64_t sub_24B6342B8(unsigned __int8 a1)
{
  sub_24B639684();
  sub_24B639494();

  return sub_24B6396A4();
}

uint64_t sub_24B6343CC(uint64_t a1)
{
  sub_24B634068(*v1);
  sub_24B639494();
}

uint64_t sub_24B634420(uint64_t a1)
{
  v2 = *v1;
  sub_24B639684();
  sub_24B634068(v2);
  sub_24B639494();

  return sub_24B6396A4();
}

uint64_t sub_24B634480(uint64_t a1, unsigned __int8 a2)
{
  sub_24B639684();
  sub_24B639494();

  return sub_24B6396A4();
}

uint64_t sub_24B634588(uint64_t a1, unsigned __int8 a2)
{
  sub_24B639684();
  sub_24B639494();

  return sub_24B6396A4();
}

uint64_t sub_24B634698(uint64_t a1, unsigned __int8 a2)
{
  sub_24B639684();
  sub_24B639494();

  return sub_24B6396A4();
}

unint64_t sub_24B6347A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24B6381F0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_24B6347D8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_24B634068(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24B634818(uint64_t a1)
{
  sub_24B639494();
}

unint64_t sub_24B63491C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24B63823C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24B63494C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x737961776C41;
  v5 = 0xE600000000000000;
  v6 = 0x656C62616E55;
  v7 = 0xEC00000079725420;
  v8 = 0x74276E6469442049;
  if (v2 != 4)
  {
    v8 = 0x6C70704120746F4ELL;
    v7 = 0xEE00656C62616369;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000073;
  v10 = 0x656D6974656D6F53;
  if (v2 != 1)
  {
    v10 = 0x796C65726152;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_24B634A30(uint64_t a1)
{
  sub_24B639494();
}

unint64_t sub_24B634B2C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24B638288(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24B634B5C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x656E6F685069;
  v5 = 0xE300000000000000;
  v6 = 6512973;
  if (v2 != 5)
  {
    v6 = 0x6E6F69736956;
    v5 = 0xE600000000000000;
  }

  v7 = 0x5654656C707041;
  if (v2 != 3)
  {
    v7 = 0x646F50656D6F48;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = 0xE700000000000000;
  }

  v8 = 0xE400000000000000;
  v9 = 1684099177;
  if (v2 != 1)
  {
    v9 = 0x6863746157;
    v8 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_24B634C20(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    if (a1)
    {
      v2 = sub_24B62A080(0, 1, 1, MEMORY[0x277D84F90]);
      v4 = *(v2 + 2);
      v3 = *(v2 + 3);
      if (v4 >= v3 >> 1)
      {
        v2 = sub_24B62A080((v3 > 1), v4 + 1, 1, v2);
      }

      *(v2 + 2) = v4 + 1;
      v5 = &v2[16 * v4];
      *(v5 + 4) = 0x79616C50726941;
      *(v5 + 5) = 0xE700000000000000;
      if ((v1 & 2) == 0)
      {
LABEL_14:
        if ((v1 & 4) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_24B62A080(0, *(v2 + 2) + 1, 1, v2);
          }

          v10 = *(v2 + 2);
          v9 = *(v2 + 3);
          if (v10 >= v9 >> 1)
          {
            v2 = sub_24B62A080((v9 > 1), v10 + 1, 1, v2);
          }

          *(v2 + 2) = v10 + 1;
          v11 = &v2[16 * v10];
          strcpy(v11 + 32, "MediaSystems");
          v11[45] = 0;
          *(v11 + 23) = -5120;
        }

        if ((v1 & 8) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_24B62A080(0, *(v2 + 2) + 1, 1, v2);
          }

          v13 = *(v2 + 2);
          v12 = *(v2 + 3);
          if (v13 >= v12 >> 1)
          {
            v2 = sub_24B62A080((v12 > 1), v13 + 1, 1, v2);
          }

          *(v2 + 2) = v13 + 1;
          v14 = &v2[16 * v13];
          *(v14 + 4) = 0x616C506572616853;
          *(v14 + 5) = 0xE900000000000079;
          if ((v1 & 0x10) == 0)
          {
LABEL_22:
            if ((v1 & 0x20) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_36;
          }
        }

        else if ((v1 & 0x10) == 0)
        {
          goto LABEL_22;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_24B62A080(0, *(v2 + 2) + 1, 1, v2);
        }

        v16 = *(v2 + 2);
        v15 = *(v2 + 3);
        if (v16 >= v15 >> 1)
        {
          v2 = sub_24B62A080((v15 > 1), v16 + 1, 1, v2);
        }

        *(v2 + 2) = v16 + 1;
        v17 = &v2[16 * v16];
        *(v17 + 4) = 0x79627261654ELL;
        *(v17 + 5) = 0xE600000000000000;
        if ((v1 & 0x20) == 0)
        {
LABEL_23:
          if ((v1 & 0x40) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_41;
        }

LABEL_36:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_24B62A080(0, *(v2 + 2) + 1, 1, v2);
        }

        v19 = *(v2 + 2);
        v18 = *(v2 + 3);
        if (v19 >= v18 >> 1)
        {
          v2 = sub_24B62A080((v18 > 1), v19 + 1, 1, v2);
        }

        *(v2 + 2) = v19 + 1;
        v20 = &v2[16 * v19];
        *(v20 + 4) = 0x657463656E6E6F43;
        *(v20 + 5) = 0xE900000000000064;
        if ((v1 & 0x40) == 0)
        {
LABEL_24:
          if ((v1 & 0x80) == 0)
          {
LABEL_51:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B318, &qword_24B63AC10);
            sub_24B636974();
            v1 = sub_24B639414();

            return v1;
          }

LABEL_46:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_24B62A080(0, *(v2 + 2) + 1, 1, v2);
          }

          v25 = *(v2 + 2);
          v24 = *(v2 + 3);
          if (v25 >= v24 >> 1)
          {
            v2 = sub_24B62A080((v24 > 1), v25 + 1, 1, v2);
          }

          *(v2 + 2) = v25 + 1;
          v26 = &v2[16 * v25];
          *(v26 + 4) = 0xD000000000000016;
          *(v26 + 5) = 0x800000024B63BB30;
          goto LABEL_51;
        }

LABEL_41:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_24B62A080(0, *(v2 + 2) + 1, 1, v2);
        }

        v22 = *(v2 + 2);
        v21 = *(v2 + 3);
        if (v22 >= v21 >> 1)
        {
          v2 = sub_24B62A080((v21 > 1), v22 + 1, 1, v2);
        }

        *(v2 + 2) = v22 + 1;
        v23 = &v2[16 * v22];
        *(v23 + 4) = 0x61656854656D6F48;
        *(v23 + 5) = 0xEB00000000726574;
        if ((v1 & 0x80) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_46;
      }
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
      if ((a1 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_24B62A080(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_24B62A080((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x4874694B656D6F48;
    *(v8 + 5) = 0xEB00000000656D6FLL;
    goto LABEL_14;
  }

  return v1;
}

uint64_t sub_24B6350F0()
{
  v1 = *v0;
  sub_24B639684();
  MEMORY[0x24C245180](v1);
  return sub_24B6396A4();
}

uint64_t sub_24B635164(uint64_t a1)
{
  v2 = *v1;
  sub_24B639684();
  MEMORY[0x24C245180](v2);
  return sub_24B6396A4();
}

BOOL sub_24B6351EC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_24B63521C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_24B635248@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_24B635334@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_24B635364@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_24B6381B8(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_24B6353A4(unsigned __int8 a1)
{
  if (!a1)
  {

    return 0;
  }

  v2 = sub_24B639634();

  if (v2)
  {
    return 0;
  }

  if (a1 > 3u)
  {
    if (a1 == 4)
    {
      return 0xD000000000000010;
    }

    else if (a1 == 5)
    {
      return 0xD000000000000010;
    }

    else
    {
      return 0xD00000000000001CLL;
    }
  }

  else if (a1 == 1)
  {
    return 48;
  }

  else if (a1 == 2)
  {
    return 12589;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_24B635574(uint64_t a1)
{
  sub_24B639494();
}

unint64_t sub_24B635678@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24B6382D4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24B6356A8(void *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xE300000000000000;
    v9 = 0xE100000000000000;
    v10 = 48;
    if (v2 != 1)
    {
      v10 = 12589;
      v9 = 0xE200000000000000;
    }

    v11 = v2 == 0;
    if (*v1)
    {
      v12 = v10;
    }

    else
    {
      v12 = 7105633;
    }

    if (!v11)
    {
      v8 = v9;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xD000000000000010;
    v4 = 0x800000024B63B560;
    if (v2 != 5)
    {
      v3 = 0xD00000000000001CLL;
      v4 = 0x800000024B63B580;
    }

    v5 = 0x800000024B63B520;
    if (v2 != 3)
    {
      v5 = 0x800000024B63B540;
    }

    if (*v1 <= 4u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v3;
    }

    if (*v1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    *a1 = v6;
    a1[1] = v7;
  }
}

unint64_t sub_24B635778()
{
  v1 = 0xD00000000000001DLL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000002DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000028;
  }
}

uint64_t sub_24B6357DC@<X0>(unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  if (a3 > 9u)
  {
    v5 = 1;
  }

  else
  {
    sub_24B638984();

    v5 = 0;
  }

  v6 = sub_24B638994();
  v7 = *(*(v6 - 8) + 56);

  return v7(a4, v5, 1, v6);
}

uint64_t sub_24B6359D0@<X0>(unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  if (a3 > 5u)
  {
    v5 = 1;
  }

  else
  {
    sub_24B638984();

    v5 = 0;
  }

  v6 = sub_24B638994();
  v7 = *(*(v6 - 8) + 56);

  return v7(a4, v5, 1, v6);
}

uint64_t sub_24B635B28@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F02B328, &unk_24B63AC18);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_24B638B24();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B1F0, &qword_24B63A420);
  sub_24B6283BC(v2 + *(v11 + 36), v6, qword_27F02B328, &unk_24B63AC18);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_24B628424(v6, qword_27F02B328, &unk_24B63AC18);
    v12 = 1;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v13 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v14 = sub_24B639434();
    [v13 setDateFormat_];

    [v13 setDoesRelativeDateFormatting_];
    v15 = sub_24B638B14();
    v16 = [v13 stringFromDate_];

    sub_24B639464();
    (*(v8 + 8))(v10, v7);
    sub_24B638984();

    v12 = 0;
  }

  v17 = sub_24B638994();
  return (*(*(v17 - 8) + 56))(a1, v12, 1, v17);
}

uint64_t sub_24B635DF4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_24B62A18C(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_24B638994();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_24B635F20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 32);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v5 = *v2++;
    v4 = v5;
    v6 = v5 == 5;
    v7 = 6512973;
    if (v5 != 5)
    {
      v7 = 0x6E6F69736956;
    }

    v8 = 0xE300000000000000;
    if (!v6)
    {
      v8 = 0xE600000000000000;
    }

    v9 = 0x5654656C707041;
    if (v4 != 3)
    {
      v9 = 0x646F50656D6F48;
    }

    if (v4 <= 4)
    {
      v7 = v9;
      v8 = 0xE700000000000000;
    }

    v10 = 1684099177;
    if (v4 != 1)
    {
      v10 = 0x6863746157;
    }

    v11 = 0xE400000000000000;
    if (v4 != 1)
    {
      v11 = 0xE500000000000000;
    }

    if (!v4)
    {
      v10 = 0x656E6F685069;
      v11 = 0xE600000000000000;
    }

    if (v4 <= 2)
    {
      v12 = v10;
    }

    else
    {
      v12 = v7;
    }

    if (v4 <= 2)
    {
      v13 = v11;
    }

    else
    {
      v13 = v8;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_24B62A080(0, *(v3 + 2) + 1, 1, v3);
    }

    v15 = *(v3 + 2);
    v14 = *(v3 + 3);
    if (v15 >= v14 >> 1)
    {
      v3 = sub_24B62A080((v14 > 1), v15 + 1, 1, v3);
    }

    *(v3 + 2) = v15 + 1;
    v16 = &v3[16 * v15];
    *(v16 + 4) = v12;
    *(v16 + 5) = v13;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B318, &qword_24B63AC10);
  sub_24B636974();
  v17 = sub_24B639414();

  return v17;
}

uint64_t sub_24B6360F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 40);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v5 = *(v2 - 1);
    v4 = *v2;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_24B62A080(0, *(v3 + 2) + 1, 1, v3);
    }

    v7 = *(v3 + 2);
    v6 = *(v3 + 3);
    if (v7 >= v6 >> 1)
    {
      v3 = sub_24B62A080((v6 > 1), v7 + 1, 1, v3);
    }

    *(v3 + 2) = v7 + 1;
    v8 = &v3[16 * v7];
    *(v8 + 4) = v5;
    *(v8 + 5) = v4;
    v2 += 2;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B318, &qword_24B63AC10);
  sub_24B636974();
  v9 = sub_24B639414();

  return v9;
}

uint64_t sub_24B636228(uint64_t a1)
{
  v23 = sub_24B638AF4();
  MEMORY[0x28223BE20](v23);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  if (!v5)
  {
    return 0;
  }

  v7 = *(v2 + 16);
  v6 = v2 + 16;
  v8 = a1 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
  v21 = *(v6 + 56);
  v22 = v7;
  v9 = (v6 - 8);
  v10 = MEMORY[0x277D84F90];
  do
  {
    v11 = v23;
    v12 = v6;
    v22(v4, v8, v23);
    v13 = sub_24B638AC4();
    v15 = v14;
    (*v9)(v4, v11);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_24B62A080(0, *(v10 + 2) + 1, 1, v10);
    }

    v17 = *(v10 + 2);
    v16 = *(v10 + 3);
    if (v17 >= v16 >> 1)
    {
      v10 = sub_24B62A080((v16 > 1), v17 + 1, 1, v10);
    }

    *(v10 + 2) = v17 + 1;
    v18 = &v10[16 * v17];
    *(v18 + 4) = v13;
    *(v18 + 5) = v15;
    v8 += v21;
    --v5;
    v6 = v12;
  }

  while (v5);
  v24 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02B318, &qword_24B63AC10);
  sub_24B636974();
  v19 = sub_24B639414();

  return v19;
}