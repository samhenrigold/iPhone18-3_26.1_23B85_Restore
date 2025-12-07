uint64_t sub_225FF5958@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *a1;
  v8 = v7 * *sub_225F7F6FC();
  if (((*&v8 >> 52) & 0x7FFLL) == 0x7FF)
  {
    sub_22609A3B8("Fatal error", 11, 2, "Double value cannot be converted to Int64 because it is either infinite or NaN", 78, 2, "Swift/IntegerTypes.swift", 24, 2, 6876, 0);
    __break(1u);
  }

  if (v8 <= -9.22337204e18)
  {
    sub_22609A3B8("Fatal error", 11, 2, "Double value cannot be converted to Int64 because the result would be less than Int64.min", 89, 2, "Swift/IntegerTypes.swift", 24, 2, 6879, 0);
    __break(1u);
  }

  if (v8 >= 9.22337204e18)
  {
    sub_22609A3B8("Fatal error", 11, 2, "Double value cannot be converted to Int64 because the result would be greater than Int64.max", 92, 2, "Swift/IntegerTypes.swift", 24, 2, 6882, 0);
    __break(1u);
  }

  result = sub_22609A0D8();
  *a2 = result;
  *(a2 + 8) = v3;
  *(a2 + 12) = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t static CoreEmbeddedSpeechAnalyzer.forceCooldownIfIdle()()
{
  v12 = &unk_2260A0C40;
  v13 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862B8, &qword_2260A0310);
  v9 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v11 = &v8 - v9;
  v13 = v0;
  v10 = 0;
  v2 = sub_226099DA8();
  (*(*(v2 - 8) + 56))(v11, 1);
  v3 = swift_allocObject();
  v4 = v10;
  v5 = v11;
  v6 = v12;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  sub_225F38F2C(v4, v4, v5, v6, v3, MEMORY[0x277D84F78] + 8);
}

uint64_t sub_225FF5CF0()
{
  v3 = v0;
  *(v0 + 16) = v0;
  v1 = swift_task_alloc();
  *(v3 + 24) = v1;
  *v1 = *(v3 + 16);
  v1[1] = sub_225F3E5DC;

  return MEMORY[0x28212C0B0]();
}

uint64_t static CoreEmbeddedSpeechAnalyzer.resetCache()()
{
  v12 = &unk_2260A0C50;
  v13 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862B8, &qword_2260A0310);
  v9 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v11 = &v8 - v9;
  v13 = v0;
  v10 = 0;
  v2 = sub_226099DA8();
  (*(*(v2 - 8) + 56))(v11, 1);
  v3 = swift_allocObject();
  v4 = v10;
  v5 = v11;
  v6 = v12;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  sub_225F38F2C(v4, v4, v5, v6, v3, MEMORY[0x277D84F78] + 8);
}

Swift::Void __swiftcall CoreEmbeddedSpeechAnalyzer.invalidate()()
{
  v74 = v0;
  v56 = 0;
  v75 = sub_225F3E198;
  v77 = sub_225F3E1C8;
  v79 = sub_225FF6D8C;
  v80 = sub_225EF7B84;
  v84 = sub_225FF6DBC;
  v87 = sub_225F2D374;
  v89 = sub_225EF7434;
  v91 = sub_225EF7434;
  v93 = sub_225F3E358;
  v95 = sub_225EF7434;
  v97 = sub_225EF7434;
  v99 = sub_225EF7B90;
  v101 = sub_225EF7434;
  v103 = sub_225EF7434;
  v106 = sub_225EF71D0;
  v55 = &unk_2260A0C60;
  ObjectType = swift_getObjectType();
  v117 = 0;
  v58 = 0;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786808, &unk_2260A0840);
  v60 = *(v59 - 8);
  v61 = v59 - 8;
  v62 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v59);
  v63 = &v37 - v62;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786968, &qword_2260A08C0);
  v65 = *(v64 - 8);
  v66 = v64 - 8;
  v67 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v64);
  v68 = &v37 - v67;
  v73 = sub_226098C58();
  v71 = *(v73 - 8);
  v72 = v73 - 8;
  v69 = (*(v71 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v73);
  v1 = &v37 - v69;
  v70 = &v37 - v69;
  v117 = v2;
  v3 = sub_225F7E9BC();
  (*(v71 + 16))(v1, v3, v73);
  MEMORY[0x277D82BE0](v74);
  v86 = 7;
  v76 = swift_allocObject();
  *(v76 + 16) = v74;
  v110 = sub_226098C48();
  v111 = sub_22609A0A8();
  v82 = 17;
  v90 = swift_allocObject();
  *(v90 + 16) = 64;
  v92 = swift_allocObject();
  v83 = 8;
  *(v92 + 16) = 8;
  v85 = 32;
  v4 = swift_allocObject();
  v5 = v76;
  v78 = v4;
  *(v4 + 16) = v75;
  *(v4 + 24) = v5;
  v6 = swift_allocObject();
  v7 = v78;
  v94 = v6;
  *(v6 + 16) = v77;
  *(v6 + 24) = v7;
  v96 = swift_allocObject();
  *(v96 + 16) = 32;
  v98 = swift_allocObject();
  *(v98 + 16) = v83;
  v8 = swift_allocObject();
  v81 = v8;
  *(v8 + 16) = v79;
  *(v8 + 24) = 0;
  v9 = swift_allocObject();
  v10 = v81;
  v100 = v9;
  *(v9 + 16) = v80;
  *(v9 + 24) = v10;
  v102 = swift_allocObject();
  *(v102 + 16) = 0;
  v104 = swift_allocObject();
  *(v104 + 16) = v83;
  v11 = swift_allocObject();
  v88 = v11;
  *(v11 + 16) = v84;
  *(v11 + 24) = 0;
  v12 = swift_allocObject();
  v13 = v88;
  v107 = v12;
  *(v12 + 16) = v87;
  *(v12 + 24) = v13;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v105 = sub_22609A4F8();
  v108 = v14;

  v15 = v90;
  v16 = v108;
  *v108 = v89;
  v16[1] = v15;

  v17 = v92;
  v18 = v108;
  v108[2] = v91;
  v18[3] = v17;

  v19 = v94;
  v20 = v108;
  v108[4] = v93;
  v20[5] = v19;

  v21 = v96;
  v22 = v108;
  v108[6] = v95;
  v22[7] = v21;

  v23 = v98;
  v24 = v108;
  v108[8] = v97;
  v24[9] = v23;

  v25 = v100;
  v26 = v108;
  v108[10] = v99;
  v26[11] = v25;

  v27 = v102;
  v28 = v108;
  v108[12] = v101;
  v28[13] = v27;

  v29 = v104;
  v30 = v108;
  v108[14] = v103;
  v30[15] = v29;

  v31 = v107;
  v32 = v108;
  v108[16] = v106;
  v32[17] = v31;
  sub_225EF5418();

  if (os_log_type_enabled(v110, v111))
  {
    v33 = v58;
    v48 = sub_22609A188();
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v47 = 1;
    v49 = sub_225EF5468(1, v46, v46);
    v50 = sub_225EF5468(v47, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v51 = v116;
    v116[0] = v48;
    v52 = &v115;
    v115 = v49;
    v53 = &v114;
    v114 = v50;
    sub_225EF54BC(2, v116);
    sub_225EF54BC(3, v51);
    v112 = v89;
    v113 = v90;
    sub_225EF73E8(&v112, v51, v52, v53);
    v54 = v33;
    if (v33)
    {

      __break(1u);
    }

    else
    {
      v112 = v91;
      v113 = v92;
      sub_225EF73E8(&v112, v116, &v115, &v114);
      v45 = 0;
      v112 = v93;
      v113 = v94;
      sub_225EF73E8(&v112, v116, &v115, &v114);
      v44 = 0;
      v112 = v95;
      v113 = v96;
      sub_225EF73E8(&v112, v116, &v115, &v114);
      v43 = 0;
      v112 = v97;
      v113 = v98;
      sub_225EF73E8(&v112, v116, &v115, &v114);
      v42 = 0;
      v112 = v99;
      v113 = v100;
      sub_225EF73E8(&v112, v116, &v115, &v114);
      v41 = 0;
      v112 = v101;
      v113 = v102;
      sub_225EF73E8(&v112, v116, &v115, &v114);
      v40 = 0;
      v112 = v103;
      v113 = v104;
      sub_225EF73E8(&v112, v116, &v115, &v114);
      v39 = 0;
      v112 = v106;
      v113 = v107;
      sub_225EF73E8(&v112, v116, &v115, &v114);
      _os_log_impl(&dword_225EEB000, v110, v111, "%@ %s:%ld queue task enqueued", v48, 0x20u);
      v38 = 1;
      sub_225EF7AF4(v49, 1, v46);
      sub_225EF7AF4(v50, v38, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v110);
  (*(v71 + 8))(v70, v73);
  sub_225EF58A0();
  MEMORY[0x277D82BE0](v74);
  v34 = swift_allocObject();
  v35 = ObjectType;
  v36 = v55;
  *(v34 + 16) = v74;
  *(v34 + 24) = v35;
  v116[1] = v36;
  v116[2] = v34;
  sub_226099DD8();
  (*(v60 + 8))(v63, v59);
  (*(v65 + 8))(v68, v64);
}

uint64_t sub_225FF6DC8(uint64_t a1, uint64_t a2)
{
  v2[32] = a2;
  v2[29] = v2;
  v2[30] = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786928, &qword_2260A0888);
  v2[33] = v3;
  v2[34] = *(v3 - 8);
  v2[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A18, &qword_2260A0A08);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v4 = sub_226098C58();
  v2[38] = v4;
  v2[39] = *(v4 - 8);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[30] = a2;

  return MEMORY[0x2822009F8](sub_225FF6FA0, 0, 0);
}

uint64_t sub_225FF6FA0()
{
  v92 = v0;
  v1 = v0[41];
  v62 = v0[39];
  v63 = v0[38];
  v65 = v0[32];
  v0[29] = v0;
  v2 = sub_225F7E9BC();
  v64 = *(v62 + 16);
  v64(v1, v2, v63);
  MEMORY[0x277D82BE0](v65);
  v66 = swift_allocObject();
  *(v66 + 16) = v65;
  v80 = sub_226098C48();
  v81 = sub_22609A0A8();
  v70 = swift_allocObject();
  *(v70 + 16) = 64;
  v71 = swift_allocObject();
  *(v71 + 16) = 8;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_225F3E198;
  *(v67 + 24) = v66;
  v72 = swift_allocObject();
  *(v72 + 16) = sub_225F3E1C8;
  *(v72 + 24) = v67;
  v73 = swift_allocObject();
  *(v73 + 16) = 32;
  v74 = swift_allocObject();
  *(v74 + 16) = 8;
  v68 = swift_allocObject();
  *(v68 + 16) = sub_225FF6D8C;
  *(v68 + 24) = 0;
  v75 = swift_allocObject();
  *(v75 + 16) = sub_225EF7B84;
  *(v75 + 24) = v68;
  v76 = swift_allocObject();
  *(v76 + 16) = 0;
  v77 = swift_allocObject();
  *(v77 + 16) = 8;
  v69 = swift_allocObject();
  *(v69 + 16) = sub_225FF85CC;
  *(v69 + 24) = 0;
  v78 = swift_allocObject();
  *(v78 + 16) = sub_225F2D374;
  *(v78 + 24) = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v79 = v3;

  *v79 = sub_225EF7434;
  v79[1] = v70;

  v79[2] = sub_225EF7434;
  v79[3] = v71;

  v79[4] = sub_225F3E358;
  v79[5] = v72;

  v79[6] = sub_225EF7434;
  v79[7] = v73;

  v79[8] = sub_225EF7434;
  v79[9] = v74;

  v79[10] = sub_225EF7B90;
  v79[11] = v75;

  v79[12] = sub_225EF7434;
  v79[13] = v76;

  v79[14] = sub_225EF7434;
  v79[15] = v77;

  v79[16] = sub_225EF71D0;
  v79[17] = v78;
  sub_225EF5418();

  if (os_log_type_enabled(v80, v81))
  {
    buf = sub_22609A188();
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v59 = sub_225EF5468(1, v57, v57);
    v60 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v87 = buf;
    v88 = v59;
    v89 = v60;
    sub_225EF54BC(2, &v87);
    sub_225EF54BC(3, &v87);
    v90 = sub_225EF7434;
    v91 = v70;
    sub_225EF73E8(&v90, &v87, &v88, &v89);
    v90 = sub_225EF7434;
    v91 = v71;
    sub_225EF73E8(&v90, &v87, &v88, &v89);
    v90 = sub_225F3E358;
    v91 = v72;
    sub_225EF73E8(&v90, &v87, &v88, &v89);
    v90 = sub_225EF7434;
    v91 = v73;
    sub_225EF73E8(&v90, &v87, &v88, &v89);
    v90 = sub_225EF7434;
    v91 = v74;
    sub_225EF73E8(&v90, &v87, &v88, &v89);
    v90 = sub_225EF7B90;
    v91 = v75;
    sub_225EF73E8(&v90, &v87, &v88, &v89);
    v90 = sub_225EF7434;
    v91 = v76;
    sub_225EF73E8(&v90, &v87, &v88, &v89);
    v90 = sub_225EF7434;
    v91 = v77;
    sub_225EF73E8(&v90, &v87, &v88, &v89);
    v90 = sub_225EF71D0;
    v91 = v78;
    sub_225EF73E8(&v90, &v87, &v88, &v89);
    _os_log_impl(&dword_225EEB000, v80, v81, "%@ %s:%ld queue task dequeued", buf, 0x20u);
    sub_225EF7AF4(v59, 1, v57);
    sub_225EF7AF4(v60, 1, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  else
  {
  }

  v51 = v61[41];
  v52 = v61[38];
  v54 = v61[32];
  v50 = v61[39];
  MEMORY[0x277D82BD8](v80);
  v53 = *(v50 + 8);
  v53(v51, v52);
  v55 = (v54 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_preheatingTask);
  swift_beginAccess();
  v56 = *v55;

  swift_endAccess();
  v61[31] = v56;
  if (v61[31])
  {
    sub_225EF5A0C(v61 + 31);
    v4 = v61[40];
    v40 = v61[38];
    v41 = v61[32];
    v5 = sub_225F7E9BC();
    v64(v4, v5, v40);
    MEMORY[0x277D82BE0](v41);
    v42 = swift_allocObject();
    *(v42 + 16) = v41;
    oslog = sub_226098C48();
    v49 = sub_22609A0A8();
    v44 = swift_allocObject();
    *(v44 + 16) = 64;
    v45 = swift_allocObject();
    *(v45 + 16) = 8;
    v43 = swift_allocObject();
    *(v43 + 16) = sub_225F3E198;
    *(v43 + 24) = v42;
    v46 = swift_allocObject();
    *(v46 + 16) = sub_225F3E1C8;
    *(v46 + 24) = v43;
    sub_22609A4F8();
    v47 = v6;

    *v47 = sub_225EF7434;
    v47[1] = v44;

    v47[2] = sub_225EF7434;
    v47[3] = v45;

    v47[4] = sub_225F3E358;
    v47[5] = v46;
    sub_225EF5418();

    if (os_log_type_enabled(oslog, v49))
    {
      v14 = sub_22609A188();
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v15 = sub_225EF5468(1, v13, v13);
      v16 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v82 = v14;
      v83 = v15;
      v84 = v16;
      sub_225EF54BC(2, &v82);
      sub_225EF54BC(1, &v82);
      v85 = sub_225EF7434;
      v86 = v44;
      sub_225EF73E8(&v85, &v82, &v83, &v84);
      v85 = sub_225EF7434;
      v86 = v45;
      sub_225EF73E8(&v85, &v82, &v83, &v84);
      v85 = sub_225F3E358;
      v86 = v46;
      sub_225EF73E8(&v85, &v82, &v83, &v84);
      _os_log_impl(&dword_225EEB000, oslog, v49, "%@ has preheated analyzer; not invalidating", v14, 0xCu);
      sub_225EF7AF4(v15, 1, v13);
      sub_225EF7AF4(v16, 0, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }

    else
    {
    }

    v10 = v61[40];
    v11 = v61[38];
    v12 = v61[32];
    MEMORY[0x277D82BD8](oslog);
    v53(v10, v11);
    sub_225FF85D8(v12);
  }

  else
  {
    sub_225EF5A0C(v61 + 31);
    v38 = v61[37];
    v39 = v61[33];
    v37 = v61[34];
    sub_225EF95B0(v38);
    if ((*(v37 + 48))(v38, 1, v39))
    {
      sub_225EF97AC(v61[37]);
    }

    else
    {
      v33 = v61[37];
      v35 = v61[35];
      v36 = v61[33];
      v34 = v61[34];
      (*(v34 + 16))(v35);
      sub_225EF97AC(v33);
      sub_226099DE8();
      (*(v34 + 8))(v35, v36);
    }

    v32 = (v61[32] + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_analyzerOutputHandlerTask);
    swift_beginAccess();
    if (*v32)
    {

      swift_endAccess();
      sub_226099E38();
    }

    else
    {
      swift_endAccess();
    }

    v26 = v61[36];
    v25 = v61[33];
    v30 = v61[32];
    v24 = v61[34];
    v22 = (v30 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_speechAnalyzer);
    swift_beginAccess();
    *v22 = 0;

    swift_endAccess();
    v23 = (v30 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_transcriber);
    swift_beginAccess();
    *v23 = 0;

    swift_endAccess();
    (*(v24 + 56))(v26, 1, 1, v25);
    sub_225FDA418(v26);
    v27 = (v30 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_analyzerOutputHandlerTask);
    swift_beginAccess();
    *v27 = 0;

    swift_endAccess();
    v28 = (v30 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_evaluationRecord);
    swift_beginAccess();
    *v28 = 0;

    swift_endAccess();
    v29 = (v30 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_messageAppBiomeRecord);
    swift_beginAccess();
    *v29 = 0;

    swift_endAccess();
    v31 = (v30 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_preheatingTask);
    swift_beginAccess();
    if (*v31)
    {

      swift_endAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786990, &qword_2260A0900);
      sub_226099E38();
    }

    else
    {
      swift_endAccess();
    }

    v19 = v61[32];
    v18 = (v19 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_preheatingTask);
    swift_beginAccess();
    *v18 = 0;

    swift_endAccess();
    v21 = *sub_225F827A0();

    MEMORY[0x277D82BE0](v19);
    v20 = swift_task_alloc();
    *(v20 + 16) = v19;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786930, &qword_2260A0890);
    sub_225F8798C(sub_226023898, v20, v21, v7, MEMORY[0x277D84F78] + 8);
    v17 = v61[32];

    MEMORY[0x277D82BD8](v17);

    sub_225FF85D8(v17);
  }

  v8 = *(v61[29] + 8);

  return v8();
}

uint64_t sub_225FF85D8(uint64_t a1)
{
  v51 = a1;
  v52 = sub_225F3E198;
  v54 = sub_225F3E1C8;
  v56 = sub_225FF6D8C;
  v57 = sub_225EF7B84;
  v61 = sub_22601D4BC;
  v64 = sub_225F2D374;
  v66 = sub_225EF7434;
  v68 = sub_225EF7434;
  v70 = sub_225F3E358;
  v72 = sub_225EF7434;
  v74 = sub_225EF7434;
  v76 = sub_225EF7B90;
  v78 = sub_225EF7434;
  v80 = sub_225EF7434;
  v83 = sub_225EF71D0;
  v94 = 0;
  v45 = 0;
  v50 = sub_226098C58();
  v48 = *(v50 - 8);
  v49 = v50 - 8;
  v46 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v51);
  v1 = v35 - v46;
  v47 = v35 - v46;
  v94 = v2;
  v3 = sub_225F7E9BC();
  (*(v48 + 16))(v1, v3, v50);
  MEMORY[0x277D82BE0](v51);
  v63 = 7;
  v53 = swift_allocObject();
  *(v53 + 16) = v51;
  v87 = sub_226098C48();
  v88 = sub_22609A0A8();
  v59 = 17;
  v67 = swift_allocObject();
  *(v67 + 16) = 64;
  v69 = swift_allocObject();
  v60 = 8;
  *(v69 + 16) = 8;
  v62 = 32;
  v4 = swift_allocObject();
  v5 = v53;
  v55 = v4;
  *(v4 + 16) = v52;
  *(v4 + 24) = v5;
  v6 = swift_allocObject();
  v7 = v55;
  v71 = v6;
  *(v6 + 16) = v54;
  *(v6 + 24) = v7;
  v73 = swift_allocObject();
  *(v73 + 16) = 32;
  v75 = swift_allocObject();
  *(v75 + 16) = v60;
  v8 = swift_allocObject();
  v58 = v8;
  *(v8 + 16) = v56;
  *(v8 + 24) = 0;
  v9 = swift_allocObject();
  v10 = v58;
  v77 = v9;
  *(v9 + 16) = v57;
  *(v9 + 24) = v10;
  v79 = swift_allocObject();
  *(v79 + 16) = 0;
  v81 = swift_allocObject();
  *(v81 + 16) = v60;
  v11 = swift_allocObject();
  v65 = v11;
  *(v11 + 16) = v61;
  *(v11 + 24) = 0;
  v12 = swift_allocObject();
  v13 = v65;
  v84 = v12;
  *(v12 + 16) = v64;
  *(v12 + 24) = v13;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v82 = sub_22609A4F8();
  v85 = v14;

  v15 = v67;
  v16 = v85;
  *v85 = v66;
  v16[1] = v15;

  v17 = v69;
  v18 = v85;
  v85[2] = v68;
  v18[3] = v17;

  v19 = v71;
  v20 = v85;
  v85[4] = v70;
  v20[5] = v19;

  v21 = v73;
  v22 = v85;
  v85[6] = v72;
  v22[7] = v21;

  v23 = v75;
  v24 = v85;
  v85[8] = v74;
  v24[9] = v23;

  v25 = v77;
  v26 = v85;
  v85[10] = v76;
  v26[11] = v25;

  v27 = v79;
  v28 = v85;
  v85[12] = v78;
  v28[13] = v27;

  v29 = v81;
  v30 = v85;
  v85[14] = v80;
  v30[15] = v29;

  v31 = v84;
  v32 = v85;
  v85[16] = v83;
  v32[17] = v31;
  sub_225EF5418();

  if (os_log_type_enabled(v87, v88))
  {
    v33 = v45;
    v38 = sub_22609A188();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v37 = 1;
    v39 = sub_225EF5468(1, v36, v36);
    v40 = sub_225EF5468(v37, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v41 = &v93;
    v93 = v38;
    v42 = &v92;
    v92 = v39;
    v43 = &v91;
    v91 = v40;
    sub_225EF54BC(2, &v93);
    sub_225EF54BC(3, v41);
    v89 = v66;
    v90 = v67;
    sub_225EF73E8(&v89, v41, v42, v43);
    v44 = v33;
    if (v33)
    {

      __break(1u);
    }

    else
    {
      v89 = v68;
      v90 = v69;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[7] = 0;
      v89 = v70;
      v90 = v71;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[6] = 0;
      v89 = v72;
      v90 = v73;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[5] = 0;
      v89 = v74;
      v90 = v75;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[4] = 0;
      v89 = v76;
      v90 = v77;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[3] = 0;
      v89 = v78;
      v90 = v79;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[2] = 0;
      v89 = v80;
      v90 = v81;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[1] = 0;
      v89 = v83;
      v90 = v84;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      _os_log_impl(&dword_225EEB000, v87, v88, "%@ %s:%ld queue task complete", v38, 0x20u);
      v35[0] = 1;
      sub_225EF7AF4(v39, 1, v36);
      sub_225EF7AF4(v40, v35[0], MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v87);
  return (*(v48 + 8))(v47, v50);
}

uint64_t sub_225FF91AC(void *a1, uint64_t a2)
{
  v24 = a1;
  v23 = a2;
  v11 = *a1;
  MEMORY[0x277D82BE0](*a1);
  MEMORY[0x277D82BE0](v11);
  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](a2);
  v21 = v11;
  v22 = a2;
  if (v11)
  {
    sub_226023224(&v21, &v15);
    if (v22)
    {
      v14 = v15;
      v13 = v22;
      type metadata accessor for CoreEmbeddedSpeechAnalyzer();
      v8 = sub_22609A118();
      MEMORY[0x277D82BD8](v13);
      MEMORY[0x277D82BD8](v14);
      sub_225EFE834(&v21);
      v9 = v8;
      goto LABEL_7;
    }

    MEMORY[0x277D82BD8](v15);
    goto LABEL_9;
  }

  if (v22)
  {
LABEL_9:
    sub_2260231DC(&v21);
    v9 = 0;
    goto LABEL_7;
  }

  sub_225EFE834(&v21);
  v9 = 1;
LABEL_7:
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](v11);
  if (v9)
  {
    v2 = *a1;
    *a1 = 0;
    MEMORY[0x277D82BD8](v2);
  }

  v7 = a1[1];
  MEMORY[0x277D82BE0](v7);
  MEMORY[0x277D82BE0](v7);
  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](a2);
  v19 = v7;
  v20 = a2;
  if (v7)
  {
    sub_226023224(&v19, &v18);
    if (v20)
    {
      v17 = v18;
      v16 = v20;
      type metadata accessor for CoreEmbeddedSpeechAnalyzer();
      v5 = sub_22609A118();
      MEMORY[0x277D82BD8](v16);
      MEMORY[0x277D82BD8](v17);
      sub_225EFE834(&v19);
      v6 = v5;
      goto LABEL_18;
    }

    MEMORY[0x277D82BD8](v18);
    goto LABEL_20;
  }

  if (v20)
  {
LABEL_20:
    sub_2260231DC(&v19);
    v6 = 0;
    goto LABEL_18;
  }

  sub_225EFE834(&v19);
  v6 = 1;
LABEL_18:
  MEMORY[0x277D82BD8](a2);
  result = MEMORY[0x277D82BD8](v7);
  if (v6)
  {
    v4 = a1[1];
    a1[1] = 0;
    return MEMORY[0x277D82BD8](v4);
  }

  return result;
}

uint64_t sub_225FF9584(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v12 = a2;
  v13 = &unk_2260A0F20;
  v26 = 0;
  v25 = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786808, &unk_2260A0840);
  v15 = *(v18 - 8);
  v16 = v18 - 8;
  v10 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18);
  v17 = &v9 - v10;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786968, &qword_2260A08C0);
  v19 = *(v22 - 8);
  v20 = v22 - 8;
  v11 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14);
  v21 = &v9 - v11;
  v26 = v3;
  v25 = a2;
  sub_225EF58A0();
  MEMORY[0x277D82BE0](v12);
  v4 = swift_allocObject();
  v5 = v13;
  v6 = v4;
  v7 = v14;
  *(v6 + 16) = v12;
  *(v6 + 24) = v7;
  v23 = v5;
  v24 = v6;
  sub_226099DD8();
  (*(v15 + 8))(v17, v18);
  return (*(v19 + 8))(v21, v22);
}

uint64_t sub_225FF9788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a3;
  v3[11] = a2;
  v3[8] = v3;
  v3[9] = 0;
  v3[10] = 0;
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = 0;
  v4 = sub_226098C58();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v3[9] = a2;
  v3[10] = a3;

  return MEMORY[0x2822009F8](sub_225FF98AC, 0, 0);
}

uint64_t sub_225FF98AC()
{
  v38 = v0;
  v1 = v0[15];
  v14 = v0[14];
  v15 = v0[13];
  v16 = v0[11];
  v0[8] = v0;
  v2 = sub_225F7E9BC();
  (*(v14 + 16))(v1, v2, v15);
  MEMORY[0x277D82BE0](v16);
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v31 = sub_226098C48();
  v32 = sub_22609A0A8();
  v21 = swift_allocObject();
  *(v21 + 16) = 64;
  v22 = swift_allocObject();
  *(v22 + 16) = 8;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_225F3E198;
  *(v18 + 24) = v17;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_225F3E1C8;
  *(v23 + 24) = v18;
  v24 = swift_allocObject();
  *(v24 + 16) = 32;
  v25 = swift_allocObject();
  *(v25 + 16) = 8;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_225FF9548;
  *(v19 + 24) = 0;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_225EF7B84;
  *(v26 + 24) = v19;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  v28 = swift_allocObject();
  *(v28 + 16) = 8;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_225FFA648;
  *(v20 + 24) = 0;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_225F2D374;
  *(v29 + 24) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v30 = v3;

  *v30 = sub_225EF7434;
  v30[1] = v21;

  v30[2] = sub_225EF7434;
  v30[3] = v22;

  v30[4] = sub_225F3E358;
  v30[5] = v23;

  v30[6] = sub_225EF7434;
  v30[7] = v24;

  v30[8] = sub_225EF7434;
  v30[9] = v25;

  v30[10] = sub_225EF7B90;
  v30[11] = v26;

  v30[12] = sub_225EF7434;
  v30[13] = v27;

  v30[14] = sub_225EF7434;
  v30[15] = v28;

  v30[16] = sub_225EF71D0;
  v30[17] = v29;
  sub_225EF5418();

  if (os_log_type_enabled(v31, v32))
  {
    buf = sub_22609A188();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v11 = sub_225EF5468(1, v9, v9);
    v12 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v33 = buf;
    v34 = v11;
    v35 = v12;
    sub_225EF54BC(2, &v33);
    sub_225EF54BC(3, &v33);
    v36 = sub_225EF7434;
    v37 = v21;
    sub_225EF73E8(&v36, &v33, &v34, &v35);
    v36 = sub_225EF7434;
    v37 = v22;
    sub_225EF73E8(&v36, &v33, &v34, &v35);
    v36 = sub_225F3E358;
    v37 = v23;
    sub_225EF73E8(&v36, &v33, &v34, &v35);
    v36 = sub_225EF7434;
    v37 = v24;
    sub_225EF73E8(&v36, &v33, &v34, &v35);
    v36 = sub_225EF7434;
    v37 = v25;
    sub_225EF73E8(&v36, &v33, &v34, &v35);
    v36 = sub_225EF7B90;
    v37 = v26;
    sub_225EF73E8(&v36, &v33, &v34, &v35);
    v36 = sub_225EF7434;
    v37 = v27;
    sub_225EF73E8(&v36, &v33, &v34, &v35);
    v36 = sub_225EF7434;
    v37 = v28;
    sub_225EF73E8(&v36, &v33, &v34, &v35);
    v36 = sub_225EF71D0;
    v37 = v29;
    sub_225EF73E8(&v36, &v33, &v34, &v35);
    _os_log_impl(&dword_225EEB000, v31, v32, "%@ %s:%ld queue task dequeued", buf, 0x20u);
    sub_225EF7AF4(v11, 1, v9);
    sub_225EF7AF4(v12, 1, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  else
  {
  }

  v7 = v13[15];
  v8 = v13[13];
  v6 = v13[14];
  MEMORY[0x277D82BD8](v31);
  (*(v6 + 8))(v7, v8);
  v4 = swift_task_alloc();
  v13[16] = v4;
  *v4 = v13[8];
  v4[1] = sub_225FFA3EC;

  return sub_225FC6040();
}

uint64_t sub_225FFA3EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v5[8] = *v3;
  v5[17] = a1;
  v5[18] = a2;
  v5[19] = a3;

  return MEMORY[0x2822009F8](sub_225FFA510, 0, 0);
}

uint64_t sub_225FFA510()
{
  v7 = v0[19];
  v6 = v0[18];
  v5 = v0[17];
  v4 = v0[12];
  v8 = v0[11];
  v0[8] = v0;
  v0[2] = v5;
  v0[3] = v6;
  v0[4] = v7;
  sub_226024B60(v5, v6, v7);
  v0[5] = v5;
  v0[6] = v6;
  v0[7] = v7;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A10, &qword_2260A09F0);
  sub_225FFB228((v0 + 5), v4, v1);
  sub_226024BF4(v5, v6, v7);
  sub_225FFA654(v8);

  v2 = *(v0[8] + 8);

  return v2();
}

uint64_t sub_225FFA654(uint64_t a1)
{
  v51 = a1;
  v52 = sub_225F3E198;
  v54 = sub_225F3E1C8;
  v56 = sub_225FF9548;
  v57 = sub_225EF7B84;
  v61 = sub_22601D4C8;
  v64 = sub_225F2D374;
  v66 = sub_225EF7434;
  v68 = sub_225EF7434;
  v70 = sub_225F3E358;
  v72 = sub_225EF7434;
  v74 = sub_225EF7434;
  v76 = sub_225EF7B90;
  v78 = sub_225EF7434;
  v80 = sub_225EF7434;
  v83 = sub_225EF71D0;
  v94 = 0;
  v45 = 0;
  v50 = sub_226098C58();
  v48 = *(v50 - 8);
  v49 = v50 - 8;
  v46 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v51);
  v1 = v35 - v46;
  v47 = v35 - v46;
  v94 = v2;
  v3 = sub_225F7E9BC();
  (*(v48 + 16))(v1, v3, v50);
  MEMORY[0x277D82BE0](v51);
  v63 = 7;
  v53 = swift_allocObject();
  *(v53 + 16) = v51;
  v87 = sub_226098C48();
  v88 = sub_22609A0A8();
  v59 = 17;
  v67 = swift_allocObject();
  *(v67 + 16) = 64;
  v69 = swift_allocObject();
  v60 = 8;
  *(v69 + 16) = 8;
  v62 = 32;
  v4 = swift_allocObject();
  v5 = v53;
  v55 = v4;
  *(v4 + 16) = v52;
  *(v4 + 24) = v5;
  v6 = swift_allocObject();
  v7 = v55;
  v71 = v6;
  *(v6 + 16) = v54;
  *(v6 + 24) = v7;
  v73 = swift_allocObject();
  *(v73 + 16) = 32;
  v75 = swift_allocObject();
  *(v75 + 16) = v60;
  v8 = swift_allocObject();
  v58 = v8;
  *(v8 + 16) = v56;
  *(v8 + 24) = 0;
  v9 = swift_allocObject();
  v10 = v58;
  v77 = v9;
  *(v9 + 16) = v57;
  *(v9 + 24) = v10;
  v79 = swift_allocObject();
  *(v79 + 16) = 0;
  v81 = swift_allocObject();
  *(v81 + 16) = v60;
  v11 = swift_allocObject();
  v65 = v11;
  *(v11 + 16) = v61;
  *(v11 + 24) = 0;
  v12 = swift_allocObject();
  v13 = v65;
  v84 = v12;
  *(v12 + 16) = v64;
  *(v12 + 24) = v13;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v82 = sub_22609A4F8();
  v85 = v14;

  v15 = v67;
  v16 = v85;
  *v85 = v66;
  v16[1] = v15;

  v17 = v69;
  v18 = v85;
  v85[2] = v68;
  v18[3] = v17;

  v19 = v71;
  v20 = v85;
  v85[4] = v70;
  v20[5] = v19;

  v21 = v73;
  v22 = v85;
  v85[6] = v72;
  v22[7] = v21;

  v23 = v75;
  v24 = v85;
  v85[8] = v74;
  v24[9] = v23;

  v25 = v77;
  v26 = v85;
  v85[10] = v76;
  v26[11] = v25;

  v27 = v79;
  v28 = v85;
  v85[12] = v78;
  v28[13] = v27;

  v29 = v81;
  v30 = v85;
  v85[14] = v80;
  v30[15] = v29;

  v31 = v84;
  v32 = v85;
  v85[16] = v83;
  v32[17] = v31;
  sub_225EF5418();

  if (os_log_type_enabled(v87, v88))
  {
    v33 = v45;
    v38 = sub_22609A188();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v37 = 1;
    v39 = sub_225EF5468(1, v36, v36);
    v40 = sub_225EF5468(v37, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v41 = &v93;
    v93 = v38;
    v42 = &v92;
    v92 = v39;
    v43 = &v91;
    v91 = v40;
    sub_225EF54BC(2, &v93);
    sub_225EF54BC(3, v41);
    v89 = v66;
    v90 = v67;
    sub_225EF73E8(&v89, v41, v42, v43);
    v44 = v33;
    if (v33)
    {

      __break(1u);
    }

    else
    {
      v89 = v68;
      v90 = v69;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[7] = 0;
      v89 = v70;
      v90 = v71;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[6] = 0;
      v89 = v72;
      v90 = v73;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[5] = 0;
      v89 = v74;
      v90 = v75;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[4] = 0;
      v89 = v76;
      v90 = v77;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[3] = 0;
      v89 = v78;
      v90 = v79;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[2] = 0;
      v89 = v80;
      v90 = v81;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[1] = 0;
      v89 = v83;
      v90 = v84;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      _os_log_impl(&dword_225EEB000, v87, v88, "%@ %s:%ld queue task complete", v38, 0x20u);
      v35[0] = 1;
      sub_225EF7AF4(v39, 1, v36);
      sub_225EF7AF4(v40, v35[0], MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v87);
  return (*(v48 + 8))(v47, v50);
}

uint64_t sub_225FFB2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a6;
  v6[13] = a5;
  v6[12] = a4;
  v6[11] = a1;
  v6[10] = v6;
  v6[15] = *(a6 - 8);
  v6[16] = swift_task_alloc();
  v10 = 0;
  v11 = 0;
  if (a2)
  {
    swift_getObjectType();
    v10 = sub_226099D48();
    v11 = v7;
  }

  return MEMORY[0x2822009F8](sub_225FFB3D0, v10, v11);
}

uint64_t sub_225FFB3D0()
{
  v1 = v0[16];
  v4 = v0[12];
  v0[10] = v0;
  v0[2] = v0[10];
  v0[7] = v1;
  v0[3] = sub_225FFB494;
  v2 = swift_continuation_init();
  sub_22601DF3C(v2, v4);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_225FFB494()
{
  v3 = *v0;
  v4 = *v0;
  *(v4 + 80) = *v0;
  (*(*(v3 + 120) + 32))(*(v3 + 88));

  v1 = *(*(v4 + 80) + 8);

  return v1();
}

uint64_t sub_225FFB648(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v12 = a2;
  v13 = &unk_2260A0EF0;
  v26 = 0;
  v25 = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786808, &unk_2260A0840);
  v15 = *(v18 - 8);
  v16 = v18 - 8;
  v10 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18);
  v17 = &v9 - v10;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786968, &qword_2260A08C0);
  v19 = *(v22 - 8);
  v20 = v22 - 8;
  v11 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14);
  v21 = &v9 - v11;
  v26 = v3;
  v25 = a2;
  sub_225EF58A0();
  MEMORY[0x277D82BE0](v12);
  v4 = swift_allocObject();
  v5 = v13;
  v6 = v4;
  v7 = v14;
  *(v6 + 16) = v12;
  *(v6 + 24) = v7;
  v23 = v5;
  v24 = v6;
  sub_226099DD8();
  (*(v15 + 8))(v17, v18);
  return (*(v19 + 8))(v21, v22);
}

uint64_t sub_225FFB84C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[18] = a3;
  v3[17] = a2;
  v3[13] = v3;
  v3[14] = 0;
  v3[15] = 0;
  v3[16] = 0;
  v3[11] = 0;
  v3[12] = 0;
  v4 = sub_226098C58();
  v3[19] = v4;
  v3[20] = *(v4 - 8);
  v3[21] = swift_task_alloc();
  v3[14] = a2;
  v3[15] = a3;

  return MEMORY[0x2822009F8](sub_225FFB970, 0, 0);
}

uint64_t sub_225FFB970()
{
  v52 = v0;
  v1 = v0[21];
  v28 = v0[20];
  v29 = v0[19];
  v30 = v0[17];
  v0[13] = v0;
  v2 = sub_225F7E9BC();
  (*(v28 + 16))(v1, v2, v29);
  MEMORY[0x277D82BE0](v30);
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  v45 = sub_226098C48();
  v46 = sub_22609A0A8();
  v35 = swift_allocObject();
  *(v35 + 16) = 64;
  v36 = swift_allocObject();
  *(v36 + 16) = 8;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_225F3E198;
  *(v32 + 24) = v31;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_225F3E1C8;
  *(v37 + 24) = v32;
  v38 = swift_allocObject();
  *(v38 + 16) = 32;
  v39 = swift_allocObject();
  *(v39 + 16) = 8;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_225FFB60C;
  *(v33 + 24) = 0;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_225EF7B84;
  *(v40 + 24) = v33;
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  v42 = swift_allocObject();
  *(v42 + 16) = 8;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_225FFC8F8;
  *(v34 + 24) = 0;
  v43 = swift_allocObject();
  *(v43 + 16) = sub_225F2D374;
  *(v43 + 24) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v44 = v3;

  *v44 = sub_225EF7434;
  v44[1] = v35;

  v44[2] = sub_225EF7434;
  v44[3] = v36;

  v44[4] = sub_225F3E358;
  v44[5] = v37;

  v44[6] = sub_225EF7434;
  v44[7] = v38;

  v44[8] = sub_225EF7434;
  v44[9] = v39;

  v44[10] = sub_225EF7B90;
  v44[11] = v40;

  v44[12] = sub_225EF7434;
  v44[13] = v41;

  v44[14] = sub_225EF7434;
  v44[15] = v42;

  v44[16] = sub_225EF71D0;
  v44[17] = v43;
  sub_225EF5418();

  if (os_log_type_enabled(v45, v46))
  {
    buf = sub_22609A188();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v25 = sub_225EF5468(1, v23, v23);
    v26 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v47 = buf;
    v48 = v25;
    v49 = v26;
    sub_225EF54BC(2, &v47);
    sub_225EF54BC(3, &v47);
    v50 = sub_225EF7434;
    v51 = v35;
    sub_225EF73E8(&v50, &v47, &v48, &v49);
    v50 = sub_225EF7434;
    v51 = v36;
    sub_225EF73E8(&v50, &v47, &v48, &v49);
    v50 = sub_225F3E358;
    v51 = v37;
    sub_225EF73E8(&v50, &v47, &v48, &v49);
    v50 = sub_225EF7434;
    v51 = v38;
    sub_225EF73E8(&v50, &v47, &v48, &v49);
    v50 = sub_225EF7434;
    v51 = v39;
    sub_225EF73E8(&v50, &v47, &v48, &v49);
    v50 = sub_225EF7B90;
    v51 = v40;
    sub_225EF73E8(&v50, &v47, &v48, &v49);
    v50 = sub_225EF7434;
    v51 = v41;
    sub_225EF73E8(&v50, &v47, &v48, &v49);
    v50 = sub_225EF7434;
    v51 = v42;
    sub_225EF73E8(&v50, &v47, &v48, &v49);
    v50 = sub_225EF71D0;
    v51 = v43;
    sub_225EF73E8(&v50, &v47, &v48, &v49);
    _os_log_impl(&dword_225EEB000, v45, v46, "%@ %s:%ld queue task dequeued", buf, 0x20u);
    sub_225EF7AF4(v25, 1, v23);
    sub_225EF7AF4(v26, 1, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  else
  {
  }

  v18 = v27[21];
  v19 = v27[19];
  v20 = v27[17];
  v17 = v27[20];
  MEMORY[0x277D82BD8](v45);
  (*(v17 + 8))(v18, v19);
  v21 = (v20 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_speechAnalyzer);
  swift_beginAccess();
  v22 = *v21;
  v27[22] = *v21;

  swift_endAccess();
  if (v22)
  {
    v13 = v27[18];
    v14 = v27[17];
    v27[16] = v22;
    v10 = (v14 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_didFinish);
    swift_beginAccess();
    v11 = *v10;
    v27[23] = *v10;
    v12 = v10[1];
    v27[24] = v12;
    sub_2260215BC(v11);
    swift_endAccess();
    v27[11] = v11;
    v27[12] = v12;
    sub_2260215BC(v11);
    v4 = swift_allocObject();
    v4[2] = v11;
    v4[3] = v12;
    v4[4] = v13;
    v16 = v4;
    v15 = (v14 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_didFinish);
    swift_beginAccess();
    v5 = *v15;
    *v15 = sub_226024814;
    v15[1] = v16;
    sub_2260215F0(v5);
    swift_endAccess();
    v6 = swift_task_alloc();
    v27[25] = v6;
    *v6 = v27[13];
    v6[1] = sub_225FFC70C;

    return MEMORY[0x28212BBD8]();
  }

  else
  {
    v9 = v27[17];
    sub_225FFD4D8(v27[18], MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
    sub_225FFC904(v9);

    v7 = *(v27[13] + 8);

    return v7();
  }
}

uint64_t sub_225FFC70C()
{
  *(*v0 + 104) = *v0;

  return MEMORY[0x2822009F8](sub_225FFC824, 0, 0);
}

uint64_t sub_225FFC824()
{
  v1 = v0[23];
  v4 = v0[17];
  v0[13] = v0;
  sub_2260215F0(v1);

  sub_225FFC904(v4);

  v2 = *(v0[13] + 8);

  return v2();
}

uint64_t sub_225FFC904(uint64_t a1)
{
  v51 = a1;
  v52 = sub_225F3E198;
  v54 = sub_225F3E1C8;
  v56 = sub_225FFB60C;
  v57 = sub_225EF7B84;
  v61 = sub_22601D4D4;
  v64 = sub_225F2D374;
  v66 = sub_225EF7434;
  v68 = sub_225EF7434;
  v70 = sub_225F3E358;
  v72 = sub_225EF7434;
  v74 = sub_225EF7434;
  v76 = sub_225EF7B90;
  v78 = sub_225EF7434;
  v80 = sub_225EF7434;
  v83 = sub_225EF71D0;
  v94 = 0;
  v45 = 0;
  v50 = sub_226098C58();
  v48 = *(v50 - 8);
  v49 = v50 - 8;
  v46 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v51);
  v1 = v35 - v46;
  v47 = v35 - v46;
  v94 = v2;
  v3 = sub_225F7E9BC();
  (*(v48 + 16))(v1, v3, v50);
  MEMORY[0x277D82BE0](v51);
  v63 = 7;
  v53 = swift_allocObject();
  *(v53 + 16) = v51;
  v87 = sub_226098C48();
  v88 = sub_22609A0A8();
  v59 = 17;
  v67 = swift_allocObject();
  *(v67 + 16) = 64;
  v69 = swift_allocObject();
  v60 = 8;
  *(v69 + 16) = 8;
  v62 = 32;
  v4 = swift_allocObject();
  v5 = v53;
  v55 = v4;
  *(v4 + 16) = v52;
  *(v4 + 24) = v5;
  v6 = swift_allocObject();
  v7 = v55;
  v71 = v6;
  *(v6 + 16) = v54;
  *(v6 + 24) = v7;
  v73 = swift_allocObject();
  *(v73 + 16) = 32;
  v75 = swift_allocObject();
  *(v75 + 16) = v60;
  v8 = swift_allocObject();
  v58 = v8;
  *(v8 + 16) = v56;
  *(v8 + 24) = 0;
  v9 = swift_allocObject();
  v10 = v58;
  v77 = v9;
  *(v9 + 16) = v57;
  *(v9 + 24) = v10;
  v79 = swift_allocObject();
  *(v79 + 16) = 0;
  v81 = swift_allocObject();
  *(v81 + 16) = v60;
  v11 = swift_allocObject();
  v65 = v11;
  *(v11 + 16) = v61;
  *(v11 + 24) = 0;
  v12 = swift_allocObject();
  v13 = v65;
  v84 = v12;
  *(v12 + 16) = v64;
  *(v12 + 24) = v13;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v82 = sub_22609A4F8();
  v85 = v14;

  v15 = v67;
  v16 = v85;
  *v85 = v66;
  v16[1] = v15;

  v17 = v69;
  v18 = v85;
  v85[2] = v68;
  v18[3] = v17;

  v19 = v71;
  v20 = v85;
  v85[4] = v70;
  v20[5] = v19;

  v21 = v73;
  v22 = v85;
  v85[6] = v72;
  v22[7] = v21;

  v23 = v75;
  v24 = v85;
  v85[8] = v74;
  v24[9] = v23;

  v25 = v77;
  v26 = v85;
  v85[10] = v76;
  v26[11] = v25;

  v27 = v79;
  v28 = v85;
  v85[12] = v78;
  v28[13] = v27;

  v29 = v81;
  v30 = v85;
  v85[14] = v80;
  v30[15] = v29;

  v31 = v84;
  v32 = v85;
  v85[16] = v83;
  v32[17] = v31;
  sub_225EF5418();

  if (os_log_type_enabled(v87, v88))
  {
    v33 = v45;
    v38 = sub_22609A188();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v37 = 1;
    v39 = sub_225EF5468(1, v36, v36);
    v40 = sub_225EF5468(v37, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v41 = &v93;
    v93 = v38;
    v42 = &v92;
    v92 = v39;
    v43 = &v91;
    v91 = v40;
    sub_225EF54BC(2, &v93);
    sub_225EF54BC(3, v41);
    v89 = v66;
    v90 = v67;
    sub_225EF73E8(&v89, v41, v42, v43);
    v44 = v33;
    if (v33)
    {

      __break(1u);
    }

    else
    {
      v89 = v68;
      v90 = v69;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[7] = 0;
      v89 = v70;
      v90 = v71;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[6] = 0;
      v89 = v72;
      v90 = v73;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[5] = 0;
      v89 = v74;
      v90 = v75;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[4] = 0;
      v89 = v76;
      v90 = v77;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[3] = 0;
      v89 = v78;
      v90 = v79;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[2] = 0;
      v89 = v80;
      v90 = v81;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[1] = 0;
      v89 = v83;
      v90 = v84;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      _os_log_impl(&dword_225EEB000, v87, v88, "%@ %s:%ld queue task complete", v38, 0x20u);
      v35[0] = 1;
      sub_225EF7AF4(v39, 1, v36);
      sub_225EF7AF4(v40, v35[0], MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v87);
  return (*(v48 + 8))(v47, v50);
}

uint64_t sub_225FFD51C(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  sub_2260215BC(a1);
  if (a1)
  {
    a1();
  }

  return sub_225FFD4D8(a3, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
}

uint64_t sub_225FFD5C4()
{
  v2 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_didFinish);
  swift_beginAccess();
  v3 = *v2;
  sub_2260215BC(*v2);
  swift_endAccess();
  return v3;
}

uint64_t sub_225FFD638(uint64_t a1, uint64_t a2)
{
  sub_2260215BC(a1);
  v5 = (v2 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_didFinish);
  swift_beginAccess();
  v3 = *v5;
  *v5 = a1;
  v5[1] = a2;
  sub_2260215F0(v3);
  swift_endAccess();
  return sub_2260215F0(a1);
}

double sub_225FFD6D4()
{
  v2 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_recognitionBeginTime);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_225FFD738(double a1)
{
  v3 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_recognitionBeginTime);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

double sub_225FFD7A4()
{
  v2 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_recognitionEndTime);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_225FFD808(double a1)
{
  v3 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_recognitionEndTime);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_225FFD874()
{
  v2 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_messageAppBiomeRecord);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_225FFD8DC(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_messageAppBiomeRecord);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_225FFD95C()
{
  v2 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_evaluationRecord);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_225FFD9C4(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_evaluationRecord);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_225FFDA44()
{
  type metadata accessor for CESAPreviousEvaluationRecordStorage();
  result = sub_225F3DADC();
  qword_280D76448 = result;
  return result;
}

uint64_t *sub_225FFDA78()
{
  if (qword_280D76440 != -1)
  {
    swift_once();
  }

  return &qword_280D76448;
}

uint64_t sub_225FFDAD8()
{
  v1 = *sub_225FFDA78();

  return v1;
}

uint64_t sub_225FFDB10(void *a1)
{
  v8 = [a1 dictationUIInteractionIdentifier];
  if (v8)
  {
    v4 = sub_226099A08();
    v5 = v1;
    MEMORY[0x277D82BD8](v8);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v9 = v6;
  v10 = v7;
  if (v7)
  {
    v11 = v9;
    v12 = v10;
  }

  else
  {
    v11 = sub_226099AA8();
    v12 = v2;
  }

  return v11;
}

id sub_225FFDC20(void *a1, uint64_t a2)
{
  v60 = 0;
  v53 = 0;
  v62 = a1;
  v61 = a2;
  sub_226021624();
  v48 = [a1 language];
  if (v48)
  {
    v43 = sub_226099A08();
    v44 = v2;
    MEMORY[0x277D82BD8](v48);
    v45 = v43;
    v46 = v44;
  }

  else
  {
    v45 = 0;
    v46 = 0;
  }

  if (v46)
  {
    v41 = v45;
    v42 = v46;
  }

  else
  {
    sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 1785, 0);
    __break(1u);
  }

  v40 = [a1 task];
  if (v40)
  {
    v36 = sub_226099A08();
    v37 = v3;
    MEMORY[0x277D82BD8](v40);
    v38 = v36;
    v39 = v37;
  }

  else
  {
    v38 = 0;
    v39 = 0;
  }

  if (v39)
  {
    v34 = v38;
    v35 = v39;
  }

  else
  {
    sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 1786, 0);
    __break(1u);
  }

  v33 = [a1 loggingContext];
  if (v33)
  {
    v31 = sub_226099C88();
    MEMORY[0x277D82BD8](v33);
    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  v58 = v32;
  if (v32)
  {
    v59 = v58;
  }

  else
  {
    v59 = sub_22609A4F8();
  }

  v27 = v59;
  v28 = [a1 narrowband];
  v29 = [a1 farField];
  v30 = [a1 dictationUIInteractionIdentifier];
  if (v30)
  {
    v23 = sub_226099A08();
    v24 = v4;
    MEMORY[0x277D82BD8](v30);
    v25 = v23;
    v26 = v24;
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  v54 = v25;
  v55 = v26;
  if (v26)
  {
    v56 = v54;
    v57 = v55;
  }

  else
  {
    v56 = sub_226099AA8();
    v57 = v5;
  }

  v21 = v56;
  v18 = v57;
  v19 = sub_226098A28();
  v20 = v6;
  v7 = sub_226099AA8();
  v22 = sub_225FFEAB4(v41, v42, v34, v35, v27, v28, v29, v21, v18, v19, v20, v7, v8, 1);
  v53 = v22;
  MEMORY[0x277D82BE0](v22);
  if (v22)
  {
    v17 = [a1 applicationName];
    if (v17)
    {
      v13 = sub_226099A08();
      v14 = v9;
      MEMORY[0x277D82BD8](v17);
      v15 = v13;
      v16 = v14;
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }

    v49 = v15;
    v50 = v16;
    if (v16)
    {
      v51 = v49;
      v52 = v50;
    }

    else
    {
      v51 = sub_226099AA8();
      v52 = v10;
    }

    v12 = sub_2260999F8();

    [v22 setApplicationName_];
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v22);
  }

  return v22;
}

uint64_t sub_225FFE2AC()
{
  v1 = [objc_opt_self() sharedPreferences];
  v2 = [v1 isDictationHIPAACompliant];
  MEMORY[0x277D82BD8](v1);
  return v2;
}

uint64_t sub_225FFE31C(void *a1)
{
  if ([a1 narrowband])
  {
    v29 = 8000;
  }

  else
  {
    v29 = 16000;
  }

  type metadata accessor for CESABiomeDictationUserEditRecord();
  v26 = sub_226098A28();
  v27 = v1;
  v28 = [a1 dictationUIInteractionIdentifier];
  if (v28)
  {
    v22 = sub_226099A08();
    v23 = v2;
    MEMORY[0x277D82BD8](v28);
    v24 = v22;
    v25 = v23;
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  if (v25)
  {
    v20 = v24;
    v21 = v25;
  }

  else
  {
    sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 1803, 0);
    __break(1u);
  }

  v19 = [a1 language];
  if (v19)
  {
    v15 = sub_226099A08();
    v16 = v3;
    MEMORY[0x277D82BD8](v19);
    v17 = v15;
    v18 = v16;
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  if (v18)
  {
    v13 = v17;
    v14 = v18;
  }

  else
  {
    sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 1804, 0);
    __break(1u);
  }

  v12 = [a1 task];
  if (v12)
  {
    v8 = sub_226099A08();
    v9 = v4;
    MEMORY[0x277D82BD8](v12);
    v10 = v8;
    v11 = v9;
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  if (v11)
  {
    return sub_2260308E8(v26, v27, v20, v21, v13, v14, v10, v11, v29);
  }

  sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 1805, 0);
  __break(1u);
  return sub_2260308E8(v26, v27, v20, v21, v13, v14, v6, v7, v29);
}

uint64_t sub_225FFE720(void *a1)
{
  type metadata accessor for CESABiomeSiriDictationRecord(0);
  v26 = [a1 applicationName];
  if (v26)
  {
    v21 = sub_226099A08();
    v22 = v1;
    MEMORY[0x277D82BD8](v26);
    v23 = v21;
    v24 = v22;
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  if (v24)
  {
    v19 = v23;
    v20 = v24;
  }

  else
  {
    sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 1812, 0);
    __break(1u);
  }

  v18 = [a1 dictationUIInteractionIdentifier];
  if (v18)
  {
    v14 = sub_226099A08();
    v15 = v2;
    MEMORY[0x277D82BD8](v18);
    v16 = v14;
    v17 = v15;
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  if (v17)
  {
    v12 = v16;
    v13 = v17;
  }

  else
  {
    sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 1813, 0);
    __break(1u);
  }

  v11 = [a1 task];
  if (v11)
  {
    v7 = sub_226099A08();
    v8 = v3;
    MEMORY[0x277D82BD8](v11);
    v9 = v7;
    v10 = v8;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  if (v10)
  {
    v5 = v9;
    v6 = v10;
  }

  else
  {
    sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 1814, 0);
    __break(1u);
  }

  return sub_226030980(v19, v20, v12, v13, v5, v6);
}

id sub_225FFEAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v22 = sub_2260999F8();
  v21 = sub_2260999F8();
  v20 = sub_226099C78();
  v19 = sub_2260999F8();
  v18 = sub_2260999F8();
  v17 = sub_2260999F8();
  v23 = [swift_getObjCClassFromMetadata() recordWithLanguage:v22 task:v21 context:v20 narrowband:a6 & 1 farField:a7 & 1 interactionIdentifier:v19 asrSelfComponentIdentifier:v18 pluginId:v17 frequency:a14];
  MEMORY[0x277D82BD8](v17);

  MEMORY[0x277D82BD8](v18);

  MEMORY[0x277D82BD8](v19);

  MEMORY[0x277D82BD8](v20);

  MEMORY[0x277D82BD8](v21);

  MEMORY[0x277D82BD8](v22);

  return v23;
}

uint64_t sub_225FFEC88(uint64_t a1)
{
  v2[16] = v1;
  v2[15] = a1;
  v2[11] = v2;
  v2[12] = 0;
  v2[13] = 0;
  v2[14] = 0;
  v2[12] = a1;
  v2[13] = v1;
  return MEMORY[0x2822009F8](sub_225FFECE0, 0, 0);
}

uint64_t sub_225FFECE0()
{
  v1 = *(v0 + 120);
  *(v0 + 88) = v0;
  if (v1)
  {
    goto LABEL_10;
  }

  v8 = (v9[16] + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_messageAppBiomeRecord);
  swift_beginAccess();
  if (*v8)
  {

    swift_endAccess();
    sub_226030FC4();
  }

  else
  {
    swift_endAccess();
  }

  v6 = (v9[16] + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_evaluationRecord);
  swift_beginAccess();
  v7 = *v6;
  v9[17] = *v6;

  swift_endAccess();
  if (!v7)
  {
LABEL_10:
    v3 = *(v9[11] + 8);

    return v3();
  }

  else
  {
    v9[14] = v7;
    v2 = sub_225FFDA78();
    v5 = *v2;
    v9[18] = *v2;

    v9[19] = *(v7 + 112);
    v9[20] = *(v7 + 120);
    sub_2260998E8();

    return MEMORY[0x2822009F8](sub_225FFEF68, v5, 0);
  }
}

uint64_t sub_225FFEF68()
{
  v1 = v0[20];
  v2 = v0[19];
  v0[11] = v0;
  sub_225F39DF4(v2, v1);

  return MEMORY[0x2822009F8](sub_225FFEFFC, 0, 0);
}

uint64_t sub_225FFEFFC()
{
  v1 = *(v0 + 128);
  *(v0 + 88) = v0;
  v4 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_evaluationRecord);
  swift_beginAccess();
  *v4 = 0;

  swift_endAccess();

  v2 = *(*(v0 + 88) + 8);

  return v2();
}

uint64_t sub_225FFF164()
{
  v20 = 0;
  v25 = 0;
  v16 = [objc_opt_self() processInfo];
  [v16 systemUptime];
  v18 = v1;

  v17 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_recognitionEndTime);
  v19 = &v24;
  swift_beginAccess();
  *v17 = v18;
  swift_endAccess();
  v22 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_messageAppBiomeRecord);
  v21 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_messageAppBiomeRecord);
  swift_beginAccess();
  if (!*v22)
  {
    return swift_endAccess();
  }

  v15 = *v21;

  swift_endAccess();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786BA0, &unk_2260A0640) - 8) + 64);
  v14 = &v5;
  MEMORY[0x28223BE20](&v5);
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v5 - v7;
  sub_2260989F8();
  v8 = 0;
  v2 = sub_226098A08();
  (*(*(v2 - 8) + 56))(v13, 0, 1);
  v12 = &v5;
  MEMORY[0x28223BE20](v13);
  v9 = &v5 - v7;
  sub_226021688(v3, &v5 - v7);
  v10 = (v15 + OBJC_IVAR____TtC29CoreEmbeddedSpeechRecognition28CESABiomeSiriDictationRecord_recognitionEndTime);
  v11 = &v23;
  swift_beginAccess();
  sub_2260217B0(v9, v10);
  swift_endAccess();
  sub_2260219D8(v13);
}

uint64_t sub_225FFF3B4()
{
  v1[155] = v0;
  v1[136] = v1;
  v1[137] = 0;
  v1[138] = 0;
  v1[139] = 0;
  v1[140] = 0;
  v1[145] = 0;
  v1[150] = 0;
  v1[152] = 0;
  v1[153] = 0;
  v2 = sub_226098C58();
  v1[156] = v2;
  v1[157] = *(v2 - 8);
  v1[158] = swift_task_alloc();
  v1[137] = v0;

  return MEMORY[0x2822009F8](sub_225FFF4C4, 0, 0);
}

uint64_t sub_225FFF4C4()
{
  v1 = v0[155];
  v0[136] = v0;
  v10 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_transcriber);
  swift_beginAccess();
  v11 = *v10;
  v0[159] = *v10;

  swift_endAccess();
  if (v11)
  {
    v2 = v9[155];
    v9[138] = v11;
    v7 = (v2 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_speechAnalyzer);
    swift_beginAccess();
    v8 = *v7;
    v9[160] = *v7;

    swift_endAccess();
    if (v8)
    {
      v9[139] = v8;

      type metadata accessor for CMTime(0);
      swift_asyncLet_begin();
      v3 = swift_task_alloc();
      v9[161] = v3;
      *v3 = v9[136];
      v3[1] = sub_225FFF7B8;

      return MEMORY[0x28212BDC8]();
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786BA8, &qword_2260A0C80);
  sub_22609A4F8();
  sub_225F2D6D0();
  v6 = sub_2260998A8();
  sub_2260215F0(0);

  v4 = *(v9[136] + 8);

  return v4(v6);
}

uint64_t sub_225FFF7B8(uint64_t a1)
{
  v5 = *v2;
  v5[136] = *v2;
  v5[162] = a1;
  v5[163] = v1;

  if (v1)
  {
    v3 = sub_226001008;
  }

  else
  {
    v3 = sub_225FFF92C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_225FFF92C()
{
  v1 = v0[162];
  v0[136] = v0;
  v0[142] = v1;
  if (v0[142])
  {
    v4[141] = v4[142];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786BB8, &unk_2260A0C98);
    sub_22609A4F8();
    sub_225F27014();
    v4[141] = sub_2260998A8();
    if (v4[142])
    {
      sub_225EFE6E8(v4 + 142);
    }
  }

  v4[164] = sub_225F27014();
  sub_225F2D6D0();
  v4[140] = sub_22609A3E8();

  v2 = swift_task_alloc();
  v4[165] = v2;
  *v2 = v4[136];
  v2[1] = sub_225FFFB34;

  return MEMORY[0x28212BDE8]();
}

uint64_t sub_225FFFB34(uint64_t a1)
{
  v5 = *v2;
  v5[136] = *v2;
  v5[166] = a1;
  v5[167] = v1;

  if (v1)
  {
    v3 = sub_226001170;
  }

  else
  {
    v3 = sub_225FFFCA8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_225FFFCA8()
{
  v65 = v0;
  v1 = v0[166];
  v0[136] = v0;
  v0[144] = v1;
  if (v0[144])
  {
    *(v57 + 1144) = *(v57 + 1152);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786328, &unk_2260A05C0);
    sub_22609A4F8();
    *(v57 + 1144) = sub_2260998A8();
    if (*(v57 + 1152))
    {
      sub_225EFE6E8((v57 + 1152));
    }
  }

  v56 = *(v57 + 1144);
  *(v57 + 1344) = v56;
  *(v57 + 1160) = v56;
  v54 = sub_226099AA8();
  v55 = v2;
  *(v57 + 976) = sub_226099AA8();
  *(v57 + 984) = v3;
  sub_226099938();
  sub_225EFE6BC(v57 + 976);
  if (*(v57 + 968))
  {
    v52 = sub_2260999F8();

    v53 = v52;
  }

  else
  {
    v53 = 0;
  }

  *(v57 + 1168) = v53;
  if (*(v57 + 1168))
  {
    v58 = *(v57 + 1168);
  }

  else
  {
    sub_225F7B844();
    v58 = sub_22609A138();
    if (*(v57 + 1168))
    {
      sub_225EFE834((v57 + 1168));
    }
  }

  *(v57 + 1176) = v58;
  *(v57 + 992) = v54;
  *(v57 + 1000) = v55;
  *(v57 + 1352) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786BC8, &qword_2260A0CA8);
  sub_226099948();
  v50 = sub_226099AA8();
  v51 = v4;
  *(v57 + 1024) = sub_226099AA8();
  *(v57 + 1032) = v5;
  sub_226099938();
  sub_225EFE6BC(v57 + 1024);
  if (*(v57 + 1016))
  {
    v48 = sub_2260999F8();

    v49 = v48;
  }

  else
  {
    v49 = 0;
  }

  *(v57 + 1184) = v49;
  if (*(v57 + 1184))
  {
    v59 = *(v57 + 1184);
  }

  else
  {
    sub_225F7B844();
    v59 = sub_22609A138();
    if (*(v57 + 1184))
    {
      sub_225EFE834((v57 + 1184));
    }
  }

  v44 = *(v57 + 1240);
  *(v57 + 1192) = v59;
  *(v57 + 1040) = v50;
  *(v57 + 1048) = v51;
  sub_226099948();
  v38 = (v44 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_recognitionEndTime);
  swift_beginAccess();
  v41 = *v38;
  swift_endAccess();
  v39 = (v44 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_recognitionBeginTime);
  swift_beginAccess();
  v40 = *v39;
  swift_endAccess();
  v42 = (v41 - v40) * *sub_225F7F6FC();
  *(v57 + 1200) = v42;
  v43 = (v44 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_recognitionBeginTime);
  swift_beginAccess();
  v46 = *v43;
  swift_endAccess();
  v45 = (v44 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_recognitionEndTime);
  swift_beginAccess();
  v47 = *v45;
  swift_endAccess();
  if (v47 < v46)
  {
    v6 = *(v57 + 1264);
    v23 = *(v57 + 1248);
    v24 = *(v57 + 1240);
    v22 = *(v57 + 1256);
    v7 = sub_225F7E9BC();
    (*(v22 + 16))(v6, v7, v23);
    MEMORY[0x277D82BE0](v24);
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    MEMORY[0x277D82BE0](v24);
    v27 = swift_allocObject();
    *(v27 + 16) = v24;
    oslog = sub_226098C48();
    v37 = sub_22609A098();
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    v30 = swift_allocObject();
    *(v30 + 16) = 8;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_226021B3C;
    *(v26 + 24) = v25;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_226021B74;
    *(v31 + 24) = v26;
    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    v33 = swift_allocObject();
    *(v33 + 16) = 8;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_226021B44;
    *(v28 + 24) = v27;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_226021B74;
    *(v34 + 24) = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    sub_22609A4F8();
    v35 = v8;

    *v35 = sub_225EF7434;
    v35[1] = v29;

    v35[2] = sub_225EF7434;
    v35[3] = v30;

    v35[4] = sub_226021BEC;
    v35[5] = v31;

    v35[6] = sub_225EF7434;
    v35[7] = v32;

    v35[8] = sub_225EF7434;
    v35[9] = v33;

    v35[10] = sub_226021BEC;
    v35[11] = v34;
    sub_225EF5418();

    if (os_log_type_enabled(oslog, v37))
    {
      v9 = *(v57 + 1336);
      buf = sub_22609A188();
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v20 = sub_225EF5468(0, v18, v18);
      v21 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v60 = buf;
      v61 = v20;
      v62 = v21;
      sub_225EF54BC(0, &v60);
      sub_225EF54BC(2, &v60);
      v63 = sub_225EF7434;
      v64 = v29;
      sub_225EF73E8(&v63, &v60, &v61, &v62);
      if (v9)
      {
      }

      v63 = sub_225EF7434;
      v64 = v30;
      sub_225EF73E8(&v63, &v60, &v61, &v62);
      v63 = sub_226021BEC;
      v64 = v31;
      sub_225EF73E8(&v63, &v60, &v61, &v62);
      v63 = sub_225EF7434;
      v64 = v32;
      sub_225EF73E8(&v63, &v60, &v61, &v62);
      v63 = sub_225EF7434;
      v64 = v33;
      sub_225EF73E8(&v63, &v60, &v61, &v62);
      v63 = sub_226021BEC;
      v64 = v34;
      sub_225EF73E8(&v63, &v60, &v61, &v62);
      _os_log_impl(&dword_225EEB000, oslog, v37, "recognitionBeginTime (%f is greater than recognitionEndTime (%f", buf, 0x16u);
      sub_225EF7AF4(v20, 0, v18);
      sub_225EF7AF4(v21, 0, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }

    else
    {
    }

    v15 = *(v57 + 1264);
    v16 = *(v57 + 1248);
    v14 = *(v57 + 1256);
    MEMORY[0x277D82BD8](oslog);
    (*(v14 + 8))(v15, v16);
    *(v57 + 1200) = -1.0;
    v17 = -1.0;
  }

  else
  {
    v17 = v42;
  }

  v12 = sub_226099AA8();
  v13 = v11;
  *(v57 + 1208) = sub_225F26494(v17);
  *(v57 + 1056) = v12;
  *(v57 + 1064) = v13;
  sub_226099948();

  return MEMORY[0x282200928](v57 + 16, v57 + 1368, sub_226000D40, v57 + 784);
}

uint64_t sub_226000D70()
{
  *(v0 + 1088) = v0;
  sub_22609A0F8();
  *(v0 + 1216) = v1;
  v4 = v1 * *sub_225F7F6FC();
  *(v0 + 1224) = v4;
  v5 = sub_226099AA8();
  v6 = v2;
  *(v0 + 1232) = sub_225F26494(v4);
  *(v0 + 1072) = v5;
  *(v0 + 1080) = v6;
  sub_226099948();
  *(v0 + 1360) = *(v0 + 1120);
  sub_2260998E8();

  sub_225EFE6E8((v0 + 1120));

  return MEMORY[0x282200920](v7 + 16, v0 + 1368, sub_226000ED4, v7 + 848);
}

uint64_t sub_226000F04()
{
  *(v0 + 1088) = v0;

  v3 = *(v0 + 1360);
  sub_2260215F0(&unk_2260A0C90);

  v1 = *(*(v0 + 1088) + 8);

  return v1(v3);
}

uint64_t sub_226001070()
{
  *(v0 + 1088) = v0;

  sub_2260215F0(&unk_2260A0C90);

  v1 = *(*(v0 + 1088) + 8);

  return v1();
}

uint64_t sub_226001170()
{
  *(v0 + 1088) = v0;
  sub_225EFE6E8((v0 + 1120));

  return MEMORY[0x282200920](v2 + 16, v2 + 1368, sub_2260011F0, v2 + 720);
}

uint64_t sub_226001220()
{
  *(v0 + 1088) = v0;

  sub_2260215F0(&unk_2260A0C90);

  v1 = *(*(v0 + 1088) + 8);

  return v1();
}

uint64_t sub_226001320(uint64_t a1, uint64_t *a2)
{
  v2[5] = a2;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = a2;
  sub_22601FAFC();
  v5 = sub_226099D48();

  return MEMORY[0x2822009F8](sub_2260013E8, v5, v3);
}

uint64_t sub_2260013E8()
{
  *(v0 + 16) = v0;
  sub_226098CC8();

  return MEMORY[0x2822009F8](sub_226001460, 0, 0);
}

uint64_t sub_226001460()
{
  *(v0 + 16) = v0;
  memcpy((v0 + 48), (v0 + 100), 0x31uLL);
  if (*(v0 + 96))
  {
    v7 = 0uLL;
    v8 = 0;
    v9 = 1;
  }

  else
  {
    memcpy(v10 + 19, v10 + 6, 0x30uLL);
    *&v7 = sub_22609A068();
    *(&v7 + 1) = v1;
    v8 = v2;
    v9 = 0;
  }

  if (v9)
  {
    v4 = v10[4];
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 12) = 0;
    *(v4 + 16) = 0;
  }

  else
  {
    v3 = v10[4];
    *v3 = v7;
    *(v3 + 16) = v8;
  }

  v5 = *(v10[2] + 8);

  return v5();
}

double sub_226001644(uint64_t a1)
{
  v2 = (a1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_recognitionBeginTime);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

double sub_2260016A0(uint64_t a1)
{
  v2 = (a1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_recognitionEndTime);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t static CoreEmbeddedSpeechAnalyzer.send(speechCorrectionInfo:interactionIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a1;
  v19 = a2;
  v20 = a3;
  v23 = &unk_2260A0CB8;
  v28 = 0;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v18 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862B8, &qword_2260A0310) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24);
  v22 = &v17 - v18;
  v28 = v4;
  v26 = v5;
  v27 = v6;
  v25 = v3;
  v21 = 0;
  v7 = sub_226099DA8();
  (*(*(v7 - 8) + 56))(v22, 1);
  MEMORY[0x277D82BE0](v24);
  sub_2260998E8();
  v8 = swift_allocObject();
  v9 = v19;
  v10 = v20;
  v11 = v21;
  v12 = v22;
  v13 = v23;
  v14 = v8;
  v15 = v24;
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v15;
  v14[5] = v9;
  v14[6] = v10;
  sub_225F38F2C(v11, v11, v12, v13, v14, MEMORY[0x277D84F78] + 8);
}

uint64_t sub_22600188C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a6;
  v6[7] = a5;
  v6[6] = a4;
  v6[4] = v6;
  v6[5] = 0;
  v6[2] = 0;
  v6[3] = 0;
  v6[5] = a4;
  v6[2] = a5;
  v6[3] = a6;
  return MEMORY[0x2822009F8](sub_2260018E8, 0, 0);
}

uint64_t sub_2260018E8()
{
  *(v0 + 32) = v0;
  *(v0 + 72) = *sub_225FFDA78();

  v1 = swift_task_alloc();
  v6[10] = v1;
  *v1 = v6[4];
  v1[1] = sub_2260019B0;
  v2 = v6[8];
  v3 = v6[7];
  v4 = v6[6];

  return sub_225F3BBE8(v4, v3, v2);
}

uint64_t sub_2260019B0()
{
  v3 = *v0;
  *(v3 + 32) = *v0;

  v1 = *(*(v3 + 32) + 8);

  return v1();
}

uint64_t static CoreEmbeddedSpeechAnalyzer.send(visualContextAndCorrectionsInfo:interactionIdentifier:)(void *a1, uint64_t a2, uint64_t a3)
{
  v437 = a3;
  v425 = a2;
  v424 = a1;
  v422 = 0;
  v478 = 0;
  v477 = 0;
  v476 = 0;
  v475 = 0;
  v423 = 0;
  v470 = 0;
  v469 = 0;
  v468 = 0;
  v462 = 0;
  v461 = 0;
  v460 = 0;
  v454 = 0;
  v453 = 0;
  v426 = sub_226098C58();
  v427 = *(v426 - 8);
  v428 = v427;
  v433 = *(v427 + 64);
  MEMORY[0x28223BE20](v437);
  v435 = (v433 + 15) & 0xFFFFFFFFFFFFFFF0;
  v429 = &v142 - v435;
  MEMORY[0x28223BE20](v4);
  v430 = &v142 - v435;
  MEMORY[0x28223BE20](v5);
  v431 = &v142 - v435;
  MEMORY[0x28223BE20](v6);
  v432 = &v142 - v435;
  MEMORY[0x28223BE20](v7);
  v434 = &v142 - v435;
  MEMORY[0x28223BE20](v8);
  v436 = &v142 - v435;
  v478 = v9;
  v476 = v10;
  v477 = v11;
  v475 = v3;
  sub_2260998E8();
  if (!v437)
  {
    v137 = v429;
    v138 = sub_225F7E9BC();
    (*(v428 + 16))(v137, v138, v426);
    v162 = sub_226098C48();
    v159 = v162;
    v161 = sub_22609A098();
    v160 = v161;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v163 = sub_22609A4F8();
    if (os_log_type_enabled(v162, v161))
    {
      v139 = v423;
      v150 = sub_22609A188();
      v146 = v150;
      v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v148 = 0;
      v151 = sub_225EF5468(0, v147, v147);
      v149 = v151;
      v152 = sub_225EF5468(v148, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v474 = v150;
      v473 = v151;
      v472 = v152;
      v153 = 0;
      v154 = &v474;
      sub_225EF54BC(0, &v474);
      sub_225EF54BC(v153, v154);
      v471 = v163;
      v155 = &v142;
      MEMORY[0x28223BE20](&v142);
      v156 = &v142 - 6;
      *(&v142 - 4) = v140;
      *(&v142 - 3) = &v473;
      *(&v142 - 2) = &v472;
      v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();
      v158 = v139;
      if (v139)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_225EEB000, v159, v160, "interactionIdentifier is nil ..", v146, 2u);
        v144 = 0;
        sub_225EF7AF4(v149, 0, v147);
        sub_225EF7AF4(v152, v144, MEMORY[0x277D84F70] + 8);
        sub_22609A168();

        v145 = v158;
      }
    }

    else
    {

      v145 = v423;
    }

    v143 = v145;

    (*(v428 + 8))(v429, v426);
    return v143;
  }

  v419 = v425;
  v420 = v437;
  v12 = v436;
  v398 = v437;
  v397 = v425;
  v469 = v425;
  v470 = v437;
  v13 = sub_225F7E9BC();
  v395 = *(v428 + 16);
  v396 = (v428 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v395(v12, v13, v426);
  sub_2260998E8();
  v401 = 32;
  v405 = 32;
  v406 = 7;
  v14 = swift_allocObject();
  v15 = v398;
  v407 = v14;
  *(v14 + 16) = v397;
  *(v14 + 24) = v15;
  v418 = sub_226098C48();
  v399 = v418;
  v417 = sub_22609A0A8();
  v400 = v417;
  v402 = 17;
  v411 = swift_allocObject();
  v403 = v411;
  *(v411 + 16) = v401;
  v412 = swift_allocObject();
  v404 = v412;
  *(v412 + 16) = 8;
  v16 = swift_allocObject();
  v17 = v407;
  v408 = v16;
  *(v16 + 16) = sub_226021CE8;
  *(v16 + 24) = v17;
  v18 = swift_allocObject();
  v19 = v408;
  v415 = v18;
  v409 = v18;
  *(v18 + 16) = sub_225EF7B84;
  *(v18 + 24) = v19;
  v416 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v410 = v416;
  v413 = sub_22609A4F8();
  v414 = v20;

  v21 = v411;
  v22 = v414;
  *v414 = sub_225EF7434;
  v22[1] = v21;

  v23 = v412;
  v24 = v414;
  v414[2] = sub_225EF7434;
  v24[3] = v23;

  v25 = v414;
  v26 = v415;
  v414[4] = sub_225EF7B90;
  v25[5] = v26;
  sub_225EF5418();

  if (os_log_type_enabled(v418, v417))
  {
    v27 = v423;
    v388 = sub_22609A188();
    v385 = v388;
    v386 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v389 = sub_225EF5468(0, v386, v386);
    v387 = v389;
    v391 = 1;
    v390 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v442 = v388;
    v441 = v389;
    v440 = v390;
    v392 = &v442;
    sub_225EF54BC(2, &v442);
    sub_225EF54BC(v391, v392);
    v438 = sub_225EF7434;
    v439 = v403;
    sub_225EF73E8(&v438, v392, &v441, &v440);
    v393 = v27;
    v394 = v27;
    if (v27)
    {
      v383 = 0;

      __break(1u);
    }

    else
    {
      v438 = sub_225EF7434;
      v439 = v404;
      sub_225EF73E8(&v438, &v442, &v441, &v440);
      v381 = 0;
      v382 = 0;
      v438 = sub_225EF7B90;
      v439 = v409;
      sub_225EF73E8(&v438, &v442, &v441, &v440);
      v379 = 0;
      v380 = 0;
      _os_log_impl(&dword_225EEB000, v399, v400, "Received visual context for interactionId:%s", v385, 0xCu);
      sub_225EF7AF4(v387, 0, v386);
      sub_225EF7AF4(v390, 1, MEMORY[0x277D84F70] + 8);
      sub_22609A168();

      v384 = v379;
    }
  }

  else
  {
    v28 = v423;

    v384 = v28;
  }

  v29 = v384;

  v360 = *(v428 + 8);
  v361 = (v428 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v360(v436, v426);
  v362 = sub_226098A78();
  v363 = *(v362 - 8);
  v364 = v363;
  v365 = *(v363 + 64);
  v366 = &v142;
  MEMORY[0x28223BE20](&v142);
  v367 = &v142 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v468 = v367;
  v31 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786BD0, &qword_2260A0CC0) - 8) + 64);
  v368 = &v142;
  v369 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v142);
  v370 = &v142 - v369;
  v371 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786BD8, &qword_2260A0CC8);
  v32 = *(*(v371 - 8) + 64);
  v372 = &v142;
  v373 = (v32 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v142);
  v377 = &v142 - v373;
  v374 = &v142 - v373;
  v376 = sub_225F834E0();
  v375 = v376;
  sub_2260998E8();
  os_unfair_lock_lock(v376);
  sub_2260045BC(&v376[2], v397, v398);
  v378 = v29;
  if (v29)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786958, &qword_2260A08B0);
    sub_225F1CB98(v375);

    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786958, &qword_2260A08B0);
    sub_225F1CB98(v375);

    v359 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786950, &qword_2260A08A8);
    if ((*(*(v359 - 8) + 48))(v374, 1) == 1)
    {
      sub_226021CF4(v374);
      v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786BE0, &qword_2260A0CD0);
      (*(*(v119 - 8) + 56))(v370, 1);
      goto LABEL_12;
    }
  }

  v33 = (v374 + *(v359 + 48));
  v355 = *v33;
  v357 = v33[1];
  v358 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786BE0, &qword_2260A0CD0);
  v356 = (v370 + *(v358 + 48));
  (*(v364 + 32))();
  v34 = v356;
  v35 = v357;
  v36 = v358;
  v37 = v370;
  *v356 = v355;
  v34[1] = v35;
  (*(*(v36 - 8) + 56))(v37, 0, 1);
LABEL_12:
  v354 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786BE0, &qword_2260A0CD0);
  if ((*(*(v354 - 8) + 48))(v370, 1) == 1)
  {
    v120 = v430;
    sub_226021DC0(v370);
    v121 = sub_225F7E9BC();
    v395(v120, v121, v426);
    sub_2260998E8();
    v183 = 32;
    v187 = 32;
    v188 = 7;
    v122 = swift_allocObject();
    v123 = v398;
    v189 = v122;
    *(v122 + 16) = v397;
    *(v122 + 24) = v123;
    v198 = sub_226098C48();
    v181 = v198;
    v197 = sub_22609A098();
    v182 = v197;
    v184 = 17;
    v192 = swift_allocObject();
    v185 = v192;
    *(v192 + 16) = v183;
    v193 = swift_allocObject();
    v186 = v193;
    *(v193 + 16) = 8;
    v124 = swift_allocObject();
    v125 = v189;
    v190 = v124;
    *(v124 + 16) = sub_225EF7450;
    *(v124 + 24) = v125;
    v126 = swift_allocObject();
    v127 = v190;
    v196 = v126;
    v191 = v126;
    *(v126 + 16) = sub_225EF7B84;
    *(v126 + 24) = v127;
    v194 = sub_22609A4F8();
    v195 = v128;

    v129 = v192;
    v130 = v195;
    *v195 = sub_225EF7434;
    v130[1] = v129;

    v131 = v193;
    v132 = v195;
    v195[2] = sub_225EF7434;
    v132[3] = v131;

    v133 = v195;
    v134 = v196;
    v195[4] = sub_225EF7B90;
    v133[5] = v134;
    sub_225EF5418();

    if (os_log_type_enabled(v198, v197))
    {
      v135 = v378;
      v174 = sub_22609A188();
      v171 = v174;
      v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v175 = sub_225EF5468(0, v172, v172);
      v173 = v175;
      v177 = 1;
      v176 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v467 = v174;
      v466 = v175;
      v465 = v176;
      v178 = &v467;
      sub_225EF54BC(2, &v467);
      sub_225EF54BC(v177, v178);
      v463 = sub_225EF7434;
      v464 = v185;
      sub_225EF73E8(&v463, v178, &v466, &v465);
      v179 = v135;
      v180 = v135;
      if (v135)
      {
        v169 = 0;

        __break(1u);
      }

      else
      {
        v463 = sub_225EF7434;
        v464 = v186;
        sub_225EF73E8(&v463, &v467, &v466, &v465);
        v167 = 0;
        v168 = 0;
        v463 = sub_225EF7B90;
        v464 = v191;
        sub_225EF73E8(&v463, &v467, &v466, &v465);
        v165 = 0;
        v166 = 0;
        _os_log_impl(&dword_225EEB000, v181, v182, "Could not find asrID for interaction %s", v171, 0xCu);
        sub_225EF7AF4(v173, 0, v172);
        sub_225EF7AF4(v176, 1, MEMORY[0x277D84F70] + 8);
        sub_22609A168();

        v170 = v165;
      }
    }

    else
    {
      v136 = v378;

      v170 = v136;
    }

    v164 = v170;

    v360(v430, v426);

    return v164;
  }

  v38 = (v370 + *(v354 + 48));
  v351 = *v38;
  v347 = v351;
  v352 = v38[1];
  v348 = v352;
  v349 = *(v364 + 32);
  v350 = (v364 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v349(v367);
  v461 = v351;
  v462 = v352;
  v353 = AFDiagnosticsSubmissionAllowed();
  v460 = v353;
  type metadata accessor for CoreEmbeddedSpeechAnalyzer();
  if (sub_225F7E648())
  {
    v346 = v353;
  }

  else
  {
    v346 = 0;
  }

  if ((v346 & 1) == 0)
  {
    v87 = v431;
    v88 = sub_225F7E9BC();
    v395(v87, v88, v426);
    v232 = 17;
    v239 = 7;
    v236 = swift_allocObject();
    *(v236 + 16) = v353 & 1;
    v252 = sub_226098C48();
    v223 = v252;
    v251 = sub_22609A078();
    v224 = v251;
    v243 = swift_allocObject();
    v225 = v243;
    v231 = 0;
    *(v243 + 16) = 0;
    v244 = swift_allocObject();
    v226 = v244;
    v234 = 4;
    *(v244 + 16) = 4;
    v238 = 32;
    v89 = swift_allocObject();
    v227 = v89;
    *(v89 + 16) = sub_22600467C;
    *(v89 + 24) = 0;
    v90 = swift_allocObject();
    v91 = v227;
    v228 = v90;
    *(v90 + 16) = sub_225EF70FC;
    *(v90 + 24) = v91;
    v92 = swift_allocObject();
    v93 = v228;
    v229 = v92;
    *(v92 + 16) = sub_225EF7108;
    *(v92 + 24) = v93;
    v94 = swift_allocObject();
    v95 = v229;
    v245 = v94;
    v230 = v94;
    *(v94 + 16) = sub_225EF7150;
    *(v94 + 24) = v95;
    v246 = swift_allocObject();
    v233 = v246;
    *(v246 + 16) = v231;
    v247 = swift_allocObject();
    v235 = v247;
    *(v247 + 16) = v234;
    v96 = swift_allocObject();
    v97 = v236;
    v237 = v96;
    *(v96 + 16) = sub_225EF3E24;
    *(v96 + 24) = v97;
    v98 = swift_allocObject();
    v99 = v237;
    v240 = v98;
    *(v98 + 16) = sub_225EF70FC;
    *(v98 + 24) = v99;
    v100 = swift_allocObject();
    v101 = v240;
    v241 = v100;
    *(v100 + 16) = sub_225EF7108;
    *(v100 + 24) = v101;
    v102 = swift_allocObject();
    v103 = v241;
    v250 = v102;
    v242 = v102;
    *(v102 + 16) = sub_225EF7150;
    *(v102 + 24) = v103;
    v248 = sub_22609A4F8();
    v249 = v104;

    v105 = v243;
    v106 = v249;
    *v249 = sub_225EF7434;
    v106[1] = v105;

    v107 = v244;
    v108 = v249;
    v249[2] = sub_225EF7434;
    v108[3] = v107;

    v109 = v245;
    v110 = v249;
    v249[4] = sub_225EF715C;
    v110[5] = v109;

    v111 = v246;
    v112 = v249;
    v249[6] = sub_225EF7434;
    v112[7] = v111;

    v113 = v247;
    v114 = v249;
    v249[8] = sub_225EF7434;
    v114[9] = v113;

    v115 = v249;
    v116 = v250;
    v249[10] = sub_225EF715C;
    v115[11] = v116;
    sub_225EF5418();

    if (os_log_type_enabled(v252, v251))
    {
      v117 = v378;
      v217 = sub_22609A188();
      v213 = v217;
      v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v215 = 0;
      v218 = sub_225EF5468(0, v214, v214);
      v216 = v218;
      v219 = sub_225EF5468(v215, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v459 = v217;
      v458 = v218;
      v457 = v219;
      v220 = &v459;
      sub_225EF54BC(0, &v459);
      sub_225EF54BC(2, v220);
      v455 = sub_225EF7434;
      v456 = v225;
      sub_225EF73E8(&v455, v220, &v458, &v457);
      v221 = v117;
      v222 = v117;
      if (v117)
      {
        v211 = 0;

        __break(1u);
      }

      else
      {
        v455 = sub_225EF7434;
        v456 = v226;
        sub_225EF73E8(&v455, &v459, &v458, &v457);
        v209 = 0;
        v210 = 0;
        v455 = sub_225EF715C;
        v456 = v230;
        sub_225EF73E8(&v455, &v459, &v458, &v457);
        v207 = 0;
        v208 = 0;
        v455 = sub_225EF7434;
        v456 = v233;
        sub_225EF73E8(&v455, &v459, &v458, &v457);
        v205 = 0;
        v206 = 0;
        v455 = sub_225EF7434;
        v456 = v235;
        sub_225EF73E8(&v455, &v459, &v458, &v457);
        v203 = 0;
        v204 = 0;
        v455 = sub_225EF715C;
        v456 = v242;
        sub_225EF73E8(&v455, &v459, &v458, &v457);
        v201 = 0;
        v202 = 0;
        _os_log_impl(&dword_225EEB000, v223, v224, "Skipping metrics computation with visual context as both Siri opt-in (%{BOOL}d) and diagnostics submission (%{BOOL}d) must be enabled.", v213, 0xEu);
        v200 = 0;
        sub_225EF7AF4(v216, 0, v214);
        sub_225EF7AF4(v219, v200, MEMORY[0x277D84F70] + 8);
        sub_22609A168();

        v212 = v201;
      }
    }

    else
    {
      v118 = v378;

      v212 = v118;
    }

    v199 = v212;

    v360(v431, v426);

    (*(v364 + 8))(v367, v362);

    return v199;
  }

  v39 = v434;
  v40 = sub_225F7E9BC();
  v395(v39, v40, v426);
  v317 = &v142;
  v41 = MEMORY[0x28223BE20](&v142);
  v316 = &v142 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(v364 + 16);
  v313 = v364 + 16;
  v311 = v43;
  v312 = (v364 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v43(v41);
  v314 = *(v313 + 64);
  v315 = (v314 + 16) & ~v314;
  v318 = swift_allocObject();
  (v349)(v318 + v315, v316, v362);

  v326 = 32;
  v331 = 32;
  v332 = 7;
  v44 = swift_allocObject();
  v45 = v318;
  v323 = v44;
  *(v44 + 16) = sub_225F7CD90;
  *(v44 + 24) = v45;

  sub_2260998E8();
  v46 = swift_allocObject();
  v47 = v348;
  v333 = v46;
  *(v46 + 16) = v347;
  *(v46 + 24) = v47;
  v345 = sub_226098C48();
  v319 = v345;
  v344 = sub_22609A0A8();
  v320 = v344;
  v327 = 17;
  v336 = swift_allocObject();
  v321 = v336;
  *(v336 + 16) = v326;
  v337 = swift_allocObject();
  v322 = v337;
  v329 = 8;
  *(v337 + 16) = 8;
  v48 = swift_allocObject();
  v49 = v323;
  v324 = v48;
  *(v48 + 16) = sub_225F7CE04;
  *(v48 + 24) = v49;
  v50 = swift_allocObject();
  v51 = v324;
  v338 = v50;
  v325 = v50;
  *(v50 + 16) = sub_225EF7B84;
  *(v50 + 24) = v51;
  v339 = swift_allocObject();
  v328 = v339;
  *(v339 + 16) = v326;
  v340 = swift_allocObject();
  v330 = v340;
  *(v340 + 16) = v329;
  v52 = swift_allocObject();
  v53 = v333;
  v334 = v52;
  *(v52 + 16) = sub_225EF7450;
  *(v52 + 24) = v53;
  v54 = swift_allocObject();
  v55 = v334;
  v343 = v54;
  v335 = v54;
  *(v54 + 16) = sub_225EF7B84;
  *(v54 + 24) = v55;
  v341 = sub_22609A4F8();
  v342 = v56;

  v57 = v336;
  v58 = v342;
  *v342 = sub_225EF7434;
  v58[1] = v57;

  v59 = v337;
  v60 = v342;
  v342[2] = sub_225EF7434;
  v60[3] = v59;

  v61 = v338;
  v62 = v342;
  v342[4] = sub_225EF7B90;
  v62[5] = v61;

  v63 = v339;
  v64 = v342;
  v342[6] = sub_225EF7434;
  v64[7] = v63;

  v65 = v340;
  v66 = v342;
  v342[8] = sub_225EF7434;
  v66[9] = v65;

  v67 = v342;
  v68 = v343;
  v342[10] = sub_225EF7B90;
  v67[11] = v68;
  sub_225EF5418();

  if (os_log_type_enabled(v345, v344))
  {
    v69 = v378;
    v304 = sub_22609A188();
    v301 = v304;
    v302 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v305 = sub_225EF5468(0, v302, v302);
    v303 = v305;
    v307 = 2;
    v306 = sub_225EF5468(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v447[0] = v304;
    v446 = v305;
    v445 = v306;
    v308 = v447;
    sub_225EF54BC(v307, v447);
    sub_225EF54BC(v307, v308);
    v443 = sub_225EF7434;
    v444 = v321;
    sub_225EF73E8(&v443, v308, &v446, &v445);
    v309 = v69;
    v310 = v69;
    if (v69)
    {
      v299 = 0;

      __break(1u);
    }

    else
    {
      v443 = sub_225EF7434;
      v444 = v322;
      sub_225EF73E8(&v443, v447, &v446, &v445);
      v297 = 0;
      v298 = 0;
      v443 = sub_225EF7B90;
      v444 = v325;
      sub_225EF73E8(&v443, v447, &v446, &v445);
      v295 = 0;
      v296 = 0;
      v443 = sub_225EF7434;
      v444 = v328;
      sub_225EF73E8(&v443, v447, &v446, &v445);
      v293 = 0;
      v294 = 0;
      v443 = sub_225EF7434;
      v444 = v330;
      sub_225EF73E8(&v443, v447, &v446, &v445);
      v291 = 0;
      v292 = 0;
      v443 = sub_225EF7B90;
      v444 = v335;
      sub_225EF73E8(&v443, v447, &v446, &v445);
      v289 = 0;
      v290 = 0;
      _os_log_impl(&dword_225EEB000, v319, v320, "Using asrID %s and language %s to compute metrics for visual context", v301, 0x16u);
      sub_225EF7AF4(v303, 0, v302);
      sub_225EF7AF4(v306, 2, MEMORY[0x277D84F70] + 8);
      sub_22609A168();

      v300 = v289;
    }
  }

  else
  {
    v70 = v378;

    v300 = v70;
  }

  v71 = v300;

  v360(v434, v426);
  sub_2260998E8();
  v72 = v424;
  v285 = &v142;
  v73 = MEMORY[0x28223BE20](&v142);
  v282 = &v142 - ((v365 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74(v73);
  v281 = (v314 + 40) & ~v314;
  v75 = swift_allocObject();
  v76 = v348;
  v77 = v424;
  v78 = v281;
  v79 = v282;
  v80 = v362;
  v81 = v349;
  v284 = v75;
  v283 = v75;
  v75[2] = v347;
  v75[3] = v76;
  v75[4] = v77;
  v81(v75 + v78, v79, v80);
  v453 = &unk_2260A0CE0;
  v454 = v284;
  v287 = sub_225F835AC();
  v286 = v287;
  os_unfair_lock_lock(v287);
  sub_226005FAC(&v287[2], &v452);
  v288 = v71;
  if (v71)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786960, &qword_2260A08B8);
    sub_225F1CB98(v286);
    __break(1u);
  }

  else
  {
    v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786960, &qword_2260A08B8);
    sub_225F1CB98(v286);
    v451 = v452;
    if (!v452)
    {
      v279 = 1;
      goto LABEL_28;
    }
  }

  v279 = 0;
LABEL_28:
  v278 = v279;
  sub_225EF5A0C(&v451);
  if (v278)
  {
    v82 = v288;
    v276 = sub_225F835AC();
    v275 = v276;

    os_unfair_lock_lock(v276);
    sub_226005FE4(&v276[2], &unk_2260A0CE0, v283, v421);
    v277 = v82;
    if (!v82)
    {
      sub_225F1CB98(v275);

      (*(v364 + 8))(v367, v362);

      return v277;
    }

    sub_225F1CB98(v275);

    __break(1u);
  }

  v83 = v432;
  v84 = sub_225F7E9BC();
  v395(v83, v84, v426);
  v272 = sub_226098C48();
  v269 = v272;
  v271 = sub_22609A0A8();
  v270 = v271;
  v273 = sub_22609A4F8();
  if (os_log_type_enabled(v272, v271))
  {
    v85 = v288;
    v260 = sub_22609A188();
    v256 = v260;
    v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v258 = 0;
    v261 = sub_225EF5468(0, v257, v257);
    v259 = v261;
    v262 = sub_225EF5468(v258, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v450 = v260;
    v449 = v261;
    v448 = v262;
    v263 = 0;
    v264 = &v450;
    sub_225EF54BC(0, &v450);
    sub_225EF54BC(v263, v264);
    v447[1] = v273;
    v265 = &v142;
    MEMORY[0x28223BE20](&v142);
    v266 = &v142 - 6;
    *(&v142 - 4) = v86;
    *(&v142 - 3) = &v449;
    *(&v142 - 2) = &v448;
    v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();
    v268 = v85;
    if (v85)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_225EEB000, v269, v270, "Already processing visual context, skipping", v256, 2u);
      v254 = 0;
      sub_225EF7AF4(v259, 0, v257);
      sub_225EF7AF4(v262, v254, MEMORY[0x277D84F70] + 8);
      sub_22609A168();

      v255 = v268;
    }
  }

  else
  {

    v255 = v288;
  }

  v253 = v255;

  v360(v432, v426);

  (*(v364 + 8))(v367, v362);

  return v253;
}

void sub_2260045BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[4] = a1;
  v6[2] = a2;
  v6[3] = a3;
  sub_2260998E8();
  v6[0] = a2;
  v6[1] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786950, &qword_2260A08A8);
  sub_226099938();
  sub_225EFE6BC(v6);
}

uint64_t sub_2260046AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[30] = a4;
  v4[29] = a3;
  v4[28] = a2;
  v4[27] = a1;
  v4[10] = v4;
  v4[2] = 0;
  v4[3] = 0;
  v4[11] = 0;
  v4[12] = 0;
  v4[13] = 0;
  v4[15] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v4[17] = 0;
  v4[6] = 0;
  v4[7] = 0;
  v4[24] = 0;
  v5 = sub_226098C58();
  v4[31] = v5;
  v4[32] = *(v5 - 8);
  v4[33] = swift_task_alloc();
  v4[2] = a1;
  v4[3] = a2;
  v4[11] = a3;
  v4[12] = a4;

  return MEMORY[0x2822009F8](sub_22600481C, 0, 0);
}

uint64_t sub_22600481C()
{
  v0[10] = v0;
  v65 = objc_opt_self();
  sub_2260998E8();
  v66 = sub_2260999F8();

  v67 = [v65 speechProfilePathsWithLanguage_];
  MEMORY[0x277D82BD8](v66);
  v68 = sub_226099C88();
  v0[34] = v68;
  v0[13] = v68;
  MEMORY[0x277D82BD8](v67);
  v0[14] = v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869D0, &qword_2260A01B0);
  v70 = sub_226098948();
  v1 = sub_225F156F8();
  v72 = sub_225F15970(sub_226005DF4, 0, v69, v70, MEMORY[0x277D84A98], v1, MEMORY[0x277D84AC0], v71);
  v0[35] = v72;
  *(v64 + 120) = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786978, &qword_2260A08D0);
  v62 = swift_task_alloc();
  *(v64 + 128) = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A30, &qword_2260A0A28);
  sub_22601FC04();
  sub_226099FE8();
  v63 = *(v70 - 8);
  if ((*(v63 + 48))(v62, 1) == 1)
  {
    sub_22601F334(v62);

    v60 = 0;
    v61 = 0;
  }

  else
  {
    v58 = sub_226098928();
    v59 = v2;
    (*(v63 + 8))(v62, v70);

    v60 = v58;
    v61 = v59;
  }

  *(v64 + 288) = v61;
  v56 = *(v64 + 232);
  *(v64 + 32) = v60;
  *(v64 + 40) = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786CB8, &qword_2260A0E40);
  *(v64 + 136) = sub_22609A4F8();
  v57 = [v56 messagesContext];
  if (v57)
  {
    sub_22601FA78();
    v54 = sub_226099C88();
    MEMORY[0x277D82BD8](v57);
    v55 = v54;
  }

  else
  {
    v55 = 0;
  }

  if (!v55)
  {
    return sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 1942, 0);
  }

  *(v64 + 144) = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869E8, &qword_2260A09A8);
  sub_22601F9F0();
  sub_22609A028();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786CC0, &qword_2260A0E48);
    sub_22609A388();
    v53 = *(v64 + 152);
    if (!v53)
    {
      break;
    }

    *(v64 + 192) = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786CC8, &qword_2260A0E50);
    sub_22609A4F8();
    v50 = v4;
    *v4 = sub_226099AA8();
    v50[1] = v5;
    sub_22609A4F8();
    v51 = v6;
    v52 = [v53 sender];
    if (v52)
    {
      v41 = sub_226099A08();
      v42 = v9;
      MEMORY[0x277D82BD8](v52);
      v43 = v41;
      v44 = v42;
    }

    else
    {
      v43 = 0;
      v44 = 0;
    }

    *(v64 + 64) = v43;
    *(v64 + 72) = v44;
    if (*(v64 + 72))
    {
      *v51 = *(v64 + 64);
    }

    else
    {
      *v51 = sub_226099AA8();
      *(v51 + 8) = v10;
      if (*(v64 + 72))
      {
        sub_225EFE6BC(v64 + 64);
      }
    }

    sub_225EF5418();
    v50[2] = v11;
    v50[3] = sub_226099AA8();
    v50[4] = v12;
    v40 = [v53 messages];
    if (v40)
    {
      v38 = sub_226099C88();
      MEMORY[0x277D82BD8](v40);
      v39 = v38;
    }

    else
    {
      v39 = 0;
    }

    *(v64 + 200) = v39;
    if (*(v64 + 200))
    {
      v50[5] = *(v64 + 200);
    }

    else
    {
      v50[5] = sub_22609A4F8();
      if (*(v64 + 200))
      {
        sub_225EFE6E8((v64 + 200));
      }
    }

    sub_225EF5418();
    *(v64 + 208) = sub_2260998A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786CD0, &qword_2260A0E58);
    sub_226099CE8();
    MEMORY[0x277D82BD8](v53);
  }

  v7 = *(v64 + 264);
  v46 = *(v64 + 248);
  v45 = *(v64 + 256);
  sub_225EFE6E8((v64 + 48));
  v8 = sub_225F7E9BC();
  (*(v45 + 16))(v7, v8, v46);
  oslog = sub_226098C48();
  v47 = sub_22609A088();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v49 = sub_22609A4F8();
  if (os_log_type_enabled(oslog, v47))
  {
    buf = sub_22609A188();
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v35 = sub_225EF5468(0, v33, v33);
    v36 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v64 + 160) = buf;
    *(v64 + 168) = v35;
    *(v64 + 176) = v36;
    sub_225EF54BC(0, (v64 + 160));
    sub_225EF54BC(0, (v64 + 160));
    *(v64 + 184) = v49;
    v37 = swift_task_alloc();
    v37[2] = v64 + 160;
    v37[3] = v64 + 168;
    v37[4] = v64 + 176;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();

    _os_log_impl(&dword_225EEB000, oslog, v47, "Calling speech framework to compute metrics for visual context and report to SELF", buf, 2u);
    sub_225EF7AF4(v35, 0, v33);
    sub_225EF7AF4(v36, 0, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  v28 = *(v64 + 264);
  v29 = *(v64 + 248);
  v31 = *(v64 + 232);
  v27 = *(v64 + 256);
  MEMORY[0x277D82BD8](oslog);
  (*(v27 + 8))(v28, v29);
  sub_226099648();
  *(v64 + 296) = sub_226099638();
  v30 = *(v64 + 136);
  *(v64 + 304) = v30;
  sub_2260998E8();
  v32 = [v31 recognizedText];
  if (v32)
  {
    v23 = sub_226099A08();
    v24 = v13;
    MEMORY[0x277D82BD8](v32);
    v25 = v23;
    v26 = v24;
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  *(v64 + 312) = v26;
  if (!v26)
  {
    return sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 1948, 0);
  }

  v22 = [*(v64 + 232) correctedText];
  if (v22)
  {
    v18 = sub_226099A08();
    v19 = v14;
    MEMORY[0x277D82BD8](v22);
    v20 = v18;
    v21 = v19;
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  *(v64 + 320) = v21;
  if (!v21)
  {
    return sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 1948, 0);
  }

  v17 = (MEMORY[0x277CDCD68] + *MEMORY[0x277CDCD68]);
  v15 = swift_task_alloc();
  *(v64 + 328) = v15;
  *v15 = *(v64 + 80);
  v15[1] = sub_226005A40;
  v16 = *(v64 + 240);

  return v17(v30, v25, v26, v20, v21, v16, v60, v61);
}

uint64_t sub_226005A40()
{
  v4 = *v1;
  *(v4 + 80) = *v1;
  *(v4 + 336) = v0;

  if (v0)
  {
    v2 = sub_226005CD0;
  }

  else
  {

    v2 = sub_226005BEC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226005BEC()
{
  *(v0 + 80) = v0;
  sub_225EFE6E8((v0 + 136));

  v1 = *(*(v0 + 80) + 8);

  return v1();
}

uint64_t sub_226005CD0()
{
  *(v0 + 80) = v0;

  sub_225EFE6E8((v0 + 136));

  v1 = *(*(v3 + 80) + 8);

  return v1();
}

uint64_t sub_226005DF4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a2;
  v4 = "Fatal error";
  v5 = "Unexpectedly found nil while unwrapping an Optional value";
  v6 = "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift";
  v14 = 0;
  v15 = 0;
  v8 = *a1;
  v7 = a1[1];
  v14 = v8;
  v15 = v7;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786978, &qword_2260A08D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v10 = &v3 - v9;
  sub_226098938();
  v11 = sub_226098948();
  v12 = *(v11 - 8);
  v13 = v11 - 8;
  if ((*(v12 + 48))(v10, 1) == 1)
  {
    sub_22609A3B8(v4, 11, 2, v5, 57, 2, v6, 62, 2, 1937, 0);
    __break(1u);
  }

  return (*(v12 + 32))(v3, v10, v11);
}

uint64_t sub_226005FE4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v23 = &unk_2260A0E38;
  v27 = 0;
  v25 = 0;
  v26 = 0;
  v17 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862B8, &qword_2260A0310) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24);
  v22 = &v17 - v17;
  v27 = v4;
  v25 = v5;
  v26 = v6;
  v21 = 0;
  v7 = sub_226099DA8();
  (*(*(v7 - 8) + 56))(v22, 1);

  v8 = swift_allocObject();
  v9 = v18;
  v10 = v19;
  v11 = v20;
  v12 = v21;
  v13 = v22;
  v14 = v23;
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v9;
  v8[5] = v10;
  v8[6] = v11;
  v15 = sub_225FC40E0(v12, v12, v13, v14, v8, MEMORY[0x277D84F78] + 8);
  *v24 = v15;
}

uint64_t sub_226006178(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5)
{
  v5[5] = a5;
  v5[4] = v5;
  v5[2] = 0;
  v5[3] = 0;
  v5[2] = a4;
  v5[3] = a5;

  v10 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v9 + 48) = v6;
  *v6 = *(v9 + 32);
  v6[1] = sub_2260062B0;

  return v10();
}

uint64_t sub_2260062B0()
{
  v4 = *v1;
  *(v4 + 32) = *v1;
  *(v4 + 56) = v0;

  if (v0)
  {
    v2 = sub_226006580;
  }

  else
  {
    v2 = sub_226006418;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_226006418()
{
  v1 = *(v0 + 56);
  *(v0 + 32) = v0;

  v4 = sub_225F835AC();
  os_unfair_lock_lock(v4);
  sub_22600661C(v4 + 1);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786960, &qword_2260A08B8);
    sub_225F1CB98(v4);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786960, &qword_2260A08B8);
    sub_225F1CB98(v4);
    v2 = *(*(v3 + 32) + 8);

    v2();
  }
}

uint64_t sub_226006580()
{
  *(v0 + 32) = v0;

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

uint64_t sub_22600675C()
{
  v2 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_analyzerOutputHandlerTask);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_2260067C4(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_analyzerOutputHandlerTask);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_226006844()
{
  v2 = (v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_hasRecognizedAnything);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_2260068AC(char a1)
{
  v3 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_hasRecognizedAnything);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_226006920(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786B40, &qword_2260A0B78);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[3] = a2;

  return MEMORY[0x2822009F8](sub_226006A0C, 0, 0);
}

uint64_t sub_226006A0C()
{
  v1 = v0[8];
  v15 = v1;
  v16 = v0[7];
  v6 = v0[6];
  v2 = v0[5];
  v5 = v2;
  v8 = v0[4];
  v0[2] = v0;
  v7 = *(v6 + 48);
  sub_2260245B0(v2, v1);
  v13 = *(v6 + 48);
  v11 = sub_226098FA8();
  v10 = *(v11 - 8);
  (*(v10 + 32))(v8, v15);
  sub_2260245B0(v5, v16);
  v9 = *(v6 + 48);
  v14 = sub_226099458();
  v12 = *(v14 - 8);
  (*(v12 + 32))(v8 + v7, v16 + v9);
  (*(v10 + 8))(v16, v11);
  (*(v12 + 8))(v15 + v13, v14);

  v3 = *(v0[2] + 8);

  return v3();
}

uint64_t sub_226006C04(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786018, &qword_2260A00C0);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D08, &qword_2260A0ED8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[3] = a2;

  return MEMORY[0x2822009F8](sub_226006D6C, 0, 0);
}

uint64_t sub_226006D6C()
{
  v1 = v0[12];
  v24 = v1;
  v25 = v0[11];
  v26 = v0[10];
  v27 = v0[9];
  v7 = v0[8];
  v28 = v0[7];
  v29 = v0[6];
  v2 = v0[5];
  v6 = v2;
  v11 = v0[4];
  v0[2] = v0;
  sub_226024438(v2, v1);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786B40, &qword_2260A0B78);
  v21 = *(v8 + 48);
  v18 = *(v7 + 48);
  sub_226024438(v6, v25);
  v5 = *(v8 + 48);
  v17 = *(v7 + 48);
  v22 = sub_226099458();
  v14 = *(v22 - 8);
  v9 = v14[4];
  v9(v28, v25 + v5);
  v10 = v14[7];
  v10(v28);
  sub_226024438(v6, v26);
  v16 = *(v8 + 48);
  v12 = *(v7 + 48);
  sub_226024438(v6, v27);
  v15 = *(v8 + 48);
  v13 = v27 + *(v7 + 48);
  (v9)(v29, v13 + v15, v22);
  (v10)(v29, 0, 1, v22);
  sub_225F1D2C4(v24, v28, v26 + v12, v29, v11);
  v19 = sub_226098FA8();
  v20 = *(*(v19 - 8) + 8);
  v20(v13);
  v23 = v14[1];
  v23(v27 + v15, v22);
  (v20)(v27, v19);
  v23(v26 + v12 + v16, v22);
  v23(v26 + v16, v22);
  (v20)(v26, v19);
  v23(v25 + v17 + v5, v22);
  (v20)(v25 + v17, v19);
  (v20)(v25, v19);
  v23(v24 + v18 + v21, v22);
  (v20)(v24 + v18, v19);
  v23(v24 + v21, v22);

  v3 = *(v0[2] + 8);

  return v3();
}

uint64_t sub_22600721C(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = a2;
  return MEMORY[0x2822009F8](sub_22600725C, 0, 0);
}

uint64_t sub_22600725C()
{
  v4 = v0[5];
  v5 = v0[4];
  v0[2] = v0;
  v1 = sub_226098FA8();
  (*(*(v1 - 8) + 16))(v5, v4);
  v2 = *(v0[2] + 8);

  return v2();
}

uint64_t sub_22600732C(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786018, &qword_2260A00C0);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D10, &qword_2260A0EE0);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[3] = a2;

  return MEMORY[0x2822009F8](sub_22600746C, 0, 0);
}

uint64_t sub_22600746C()
{
  v1 = v0[10];
  v14 = v1;
  v15 = v0[9];
  v6 = v0[8];
  v16 = v0[7];
  v17 = v0[6];
  v2 = v0[5];
  v5 = v2;
  v9 = v0[4];
  v0[2] = v0;
  sub_22602468C(v2, v1);
  v11 = *(v6 + 48);
  v7 = sub_226099458();
  v8 = *(*(v7 - 8) + 56);
  v8(v16, 1);
  sub_22602468C(v5, v15);
  v10 = *(v6 + 48);
  (v8)(v17, 1, 1, v7);
  sub_225F1D2C4(v14, v16, v15 + v10, v17, v9);
  v12 = sub_226098FA8();
  v13 = *(*(v12 - 8) + 8);
  v13(v15);
  (v13)(v14 + v11, v12);

  v3 = *(v0[2] + 8);

  return v3();
}

uint64_t sub_226007670(uint64_t a1, uint64_t *a2)
{
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v3 = *a2;
  v2[5] = *a2;
  v2[3] = v3;
  return MEMORY[0x2822009F8](sub_2260076B0, 0, 0);
}

uint64_t sub_2260076B0()
{
  v4 = v0[5];
  v3 = v0[4];
  v0[2] = v0;
  sub_2260998E8();
  *v3 = v4;
  v1 = *(v0[2] + 8);

  return v1();
}

uint64_t sub_226007754(uint64_t a1, uint64_t *a2)
{
  v2[5] = a1;
  v2[4] = v2;
  v2[2] = 0;
  v2[3] = 0;
  v3 = *a2;
  v2[6] = *a2;
  v4 = a2[1];
  v2[7] = v4;
  v2[2] = v3;
  v2[3] = v4;
  return MEMORY[0x2822009F8](sub_2260077A4, 0, 0);
}

uint64_t sub_2260077A4()
{
  v7 = *(v0 + 40);
  *(v0 + 32) = v0;
  sub_2260998E8();
  sub_2260998E8();
  sub_2260998E8();
  sub_2260998E8();
  nullsub_1();
  v5 = v1;
  v6 = v2;

  *v7 = v5;
  v7[1] = v6;
  v3 = *(*(v0 + 32) + 8);

  return v3();
}

uint64_t sub_226007898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = v10;
  v8[12] = a8;
  v8[11] = a7;
  v8[10] = a6;
  v8[9] = a5;
  v8[8] = a4;
  v8[2] = v8;
  v8[3] = 0;
  v8[4] = 0;
  v8[5] = 0;
  v8[6] = 0;
  v8[7] = 0;
  v8[3] = a4;
  v8[4] = a5;
  v8[5] = a6;
  v8[6] = a7;
  return MEMORY[0x2822009F8](sub_226007930, 0, 0);
}

uint64_t sub_226007930()
{
  v5 = v0[13];
  v4 = v0[12];
  v9 = v0[11];
  v8 = v0[10];
  v1 = v0[9];
  v7 = v1;
  v6 = v0[8];
  v0[2] = v0;
  MEMORY[0x277D82BE0](v1);
  v11 = swift_task_alloc();
  v0[14] = v11;
  v11[2] = v4;
  v11[3] = v5;
  v11[4] = v6;
  v11[5] = v7;
  v11[6] = v8;
  v11[7] = v9;
  v12 = MEMORY[0x277D84F78] + 8;
  sub_225F819F0();
  v2 = swift_task_alloc();
  *(v10 + 120) = v2;
  *v2 = *(v10 + 16);
  v2[1] = sub_226007AB0;

  return MEMORY[0x2822008A8](v13, v12, 0, 0, &unk_2260A0E88, v11);
}

uint64_t sub_226007AB0()
{
  v5 = *v1;
  v5[2] = *v1;
  v5[16] = v0;

  if (v0)
  {
    v2 = sub_226007CE8;
  }

  else
  {
    v4 = v5[9];

    v2 = sub_226007C3C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226007C3C()
{
  *(v0 + 16) = v0;
  sub_22600D820(0);
  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_226007CE8()
{
  v6 = v0[16];
  v1 = v0[9];
  v0[2] = v0;

  MEMORY[0x277D82BD8](v1);
  v2 = v6;
  v0[7] = v6;
  v3 = v6;
  sub_22600D820(v6);

  v4 = *(v0[2] + 8);

  return v4();
}

uint64_t sub_226007DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[52] = a8;
  v8[51] = a7;
  v8[50] = a6;
  v8[49] = a5;
  v8[48] = a4;
  v8[47] = a3;
  v8[46] = a2;
  v8[32] = v8;
  v8[33] = 0;
  v8[34] = 0;
  v8[35] = 0;
  v8[36] = 0;
  v8[37] = 0;
  v8[53] = sub_22609A198();
  v8[54] = swift_task_alloc();
  v12 = *(a7 - 8);
  v8[55] = v12;
  v8[56] = *(v12 + 64);
  v8[57] = swift_task_alloc();
  v8[58] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862B8, &qword_2260A0310);
  v8[59] = swift_task_alloc();
  v9 = sub_226098C58();
  v8[60] = v9;
  v8[61] = *(v9 - 8);
  v8[62] = swift_task_alloc();
  v8[63] = swift_task_alloc();
  v8[33] = a2;
  v8[34] = a3;
  v8[35] = a4;
  v8[36] = a5;
  v8[37] = a6;

  return MEMORY[0x2822009F8](sub_22600808C, 0, 0);
}

uint64_t sub_22600808C()
{
  v1 = v0[47];
  v0[32] = v0;
  sub_22601FE20(v1, v0 + 7);
  if (v0[10])
  {
    v2 = *(v57 + 504);
    v53 = *(v57 + 480);
    v52 = *(v57 + 488);
    sub_226023D20((v57 + 56), (v57 + 16));
    v3 = sub_225F7E9BC();
    (*(v52 + 16))(v2, v3, v53);
    v55 = sub_226098C48();
    v54 = sub_22609A078();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v56 = sub_22609A4F8();
    if (os_log_type_enabled(v55, v54))
    {
      v48 = sub_22609A188();
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v49 = sub_225EF5468(0, v47, v47);
      v50 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v57 + 336) = v48;
      *(v57 + 344) = v49;
      *(v57 + 352) = v50;
      sub_225EF54BC(0, (v57 + 336));
      sub_225EF54BC(0, (v57 + 336));
      *(v57 + 360) = v56;
      v51 = swift_task_alloc();
      v51[2] = v57 + 336;
      v51[3] = v57 + 344;
      v51[4] = v57 + 352;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();

      _os_log_impl(&dword_225EEB000, v55, v54, "Receiving single-user transcriber results.", v48, 2u);
      sub_225EF7AF4(v49, 0, v47);
      sub_225EF7AF4(v50, 0, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }

    v42 = *(v57 + 504);
    v43 = *(v57 + 480);
    v46 = *(v57 + 472);
    v44 = *(v57 + 384);
    v41 = *(v57 + 488);
    MEMORY[0x277D82BD8](v55);
    (*(v41 + 8))(v42, v43);
    v4 = sub_226099DA8();
    (*(*(v4 - 8) + 56))(v46, 1);
    sub_226023D5C(v57 + 16, v57 + 216);
    MEMORY[0x277D82BE0](v44);
    v45 = swift_allocObject();
    v45[2] = 0;
    v45[3] = 0;
    sub_226023D20((v57 + 216), v45 + 4);
    v45[9] = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786CF0, &qword_2260A0EA0);
    sub_22600AAE8(v46, &unk_2260A0EC0, v45);
    sub_225EF7CF8(v46);
    __swift_destroy_boxed_opaque_existential_0((v57 + 16));
  }

  else
  {
    sub_225F186BC((v57 + 56));
  }

  sub_22601FE20(*(v57 + 392), (v57 + 136));
  if (*(v57 + 160))
  {
    v5 = *(v57 + 496);
    v37 = *(v57 + 480);
    v36 = *(v57 + 488);
    sub_226023D20((v57 + 136), (v57 + 96));
    v6 = sub_225F7E9BC();
    (*(v36 + 16))(v5, v6, v37);
    oslog = sub_226098C48();
    v38 = sub_22609A078();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v40 = sub_22609A4F8();
    if (os_log_type_enabled(oslog, v38))
    {
      buf = sub_22609A188();
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v33 = sub_225EF5468(0, v31, v31);
      v34 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v57 + 304) = buf;
      *(v57 + 312) = v33;
      *(v57 + 320) = v34;
      sub_225EF54BC(0, (v57 + 304));
      sub_225EF54BC(0, (v57 + 304));
      *(v57 + 328) = v40;
      v35 = swift_task_alloc();
      v35[2] = v57 + 304;
      v35[3] = v57 + 312;
      v35[4] = v57 + 320;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();

      _os_log_impl(&dword_225EEB000, oslog, v38, "Receiving multi-user transcriber results.", buf, 2u);
      sub_225EF7AF4(v33, 0, v31);
      sub_225EF7AF4(v34, 0, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }

    v26 = *(v57 + 496);
    v27 = *(v57 + 480);
    v30 = *(v57 + 472);
    v28 = *(v57 + 384);
    v25 = *(v57 + 488);
    MEMORY[0x277D82BD8](oslog);
    (*(v25 + 8))(v26, v27);
    v7 = sub_226099DA8();
    (*(*(v7 - 8) + 56))(v30, 1);
    sub_226023D5C(v57 + 96, v57 + 176);
    MEMORY[0x277D82BE0](v28);
    v29 = swift_allocObject();
    v29[2] = 0;
    v29[3] = 0;
    sub_226023D20((v57 + 176), v29 + 4);
    v29[9] = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786CF0, &qword_2260A0EA0);
    sub_22600AAE8(v30, &unk_2260A0EB0, v29);
    sub_225EF7CF8(v30);
    __swift_destroy_boxed_opaque_existential_0((v57 + 96));
  }

  else
  {
    sub_225F186BC((v57 + 136));
  }

  v24 = *(v57 + 432);
  v23 = *(v57 + 408);
  v22 = *(v57 + 440);
  sub_225F317FC(*(v57 + 400), v24, v23, *(v57 + 424));
  if ((*(v22 + 48))(v24, 1, v23) == 1)
  {
    sub_226023B28(*(v57 + 432), *(v57 + 408));
  }

  else
  {
    v19 = *(v57 + 472);
    v21 = *(v57 + 464);
    v15 = *(v57 + 456);
    v12 = *(v57 + 448);
    v13 = *(v57 + 416);
    v20 = *(v57 + 408);
    v17 = *(v57 + 384);
    v11 = *(v57 + 440);
    v16 = *(v11 + 32);
    v16();
    v8 = sub_226099DA8();
    (*(*(v8 - 8) + 56))(v19, 1);
    (*(v11 + 16))(v15, v21, v20);
    MEMORY[0x277D82BE0](v17);
    v14 = (*(v11 + 80) + 48) & ~*(v11 + 80);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v20;
    v18[5] = v13;
    (v16)(v18 + v14, v15);
    *(v18 + ((v14 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786CF0, &qword_2260A0EA0);
    sub_22600AAE8(v19, &unk_2260A0E98, v18);
    sub_225EF7CF8(v19);
    (*(v11 + 8))(v21, v20);
  }

  v9 = *(*(v57 + 256) + 8);

  return v9();
}

uint64_t sub_226008DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a4;
  v4[14] = a3;
  v4[11] = v4;
  v4[12] = 0;
  v4[13] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786CF8, &qword_2260A0EC8);
  v4[16] = swift_task_alloc();
  v5 = type metadata accessor for CombinedTranscriberOutput(0);
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();
  v4[12] = a3;
  v4[13] = a4;

  return MEMORY[0x2822009F8](sub_226008F38, 0, 0);
}

uint64_t sub_226008F38()
{
  v1 = v0[14];
  v0[11] = v0;
  v8 = v1[3];
  v7 = __swift_project_boxed_opaque_existential_0(v1, v8);
  v6 = *(v8 - 8);
  v9 = swift_task_alloc();
  (*(v6 + 16))(v9, v7, v8);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  sub_226099E98();

  v13 = v0[5];
  v0[20] = v13;
  v14 = v0[6];
  v0[21] = v14;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v13);
  v0[22] = swift_getAssociatedTypeWitness();
  v2 = sub_22609A198();
  v0[23] = v2;
  v0[24] = *(v2 - 8);
  v15 = swift_task_alloc();
  v0[25] = v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[26] = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  v0[27] = v10;
  v0[28] = *(v10 + 64);
  v12 = swift_task_alloc();
  v0[29] = v12;
  v4 = swift_task_alloc();
  *(v11 + 240) = v4;
  *v4 = *(v11 + 88);
  v4[1] = sub_226009258;

  return MEMORY[0x282200310](v15, 0, 0, v12, v13, v14);
}

uint64_t sub_226009258()
{
  *(*v1 + 88) = *v1;

  if (v0)
  {
    v2 = sub_2260098E8;
  }

  else
  {

    v2 = sub_2260093CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2260093CC()
{
  v1 = v0[25];
  v2 = v0[22];
  v0[11] = v0;
  v18 = *(v2 - 8);
  if ((*(v18 + 48))(v1, 1) == 1)
  {
    (*(v17[24] + 8))();

    v17[7] = 0;
    v17[8] = 0;
    v17[9] = 0;
    v17[10] = 0;
  }

  else
  {
    v16 = v17[25];
    v15 = v17[22];
    v17[10] = v15;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17 + 7);
    (*(v18 + 32))(boxed_opaque_existential_0, v16, v15);
  }

  if (v17[10])
  {
    if (swift_dynamicCast())
    {
      (*(v17[18] + 56))(v17[16], 0, 1, v17[17]);
    }

    else
    {
      (*(v17[18] + 56))(v17[16], 1, 1, v17[17]);
    }

    if ((*(v17[18] + 48))(v17[16], 1, v17[17]) == 1)
    {
      sub_226023FF0(v17[16]);
    }

    else
    {
      v9 = v17[19];
      sub_226022294(v17[16], v9);
      sub_226009B80(v9);
      sub_2260241DC(v9);
    }

    v12 = v17[5];
    v17[20] = v12;
    v13 = v17[6];
    v17[21] = v13;
    __swift_mutable_project_boxed_opaque_existential_1((v17 + 2), v12);
    v17[22] = swift_getAssociatedTypeWitness();
    v6 = sub_22609A198();
    v17[23] = v6;
    v17[24] = *(v6 - 8);
    v14 = swift_task_alloc();
    v17[25] = v14;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v17[26] = AssociatedTypeWitness;
    v10 = *(AssociatedTypeWitness - 8);
    v17[27] = v10;
    v17[28] = *(v10 + 64);
    v11 = swift_task_alloc();
    v17[29] = v11;
    v8 = swift_task_alloc();
    v17[30] = v8;
    *v8 = v17[11];
    v8[1] = sub_226009258;

    return MEMORY[0x282200310](v14, 0, 0, v11, v12, v13);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v17 + 2);

    v4 = *(v17[11] + 8);

    return v4();
  }
}

uint64_t sub_2260098E8()
{
  v6 = v0[29];
  v8 = v0[27];
  v10 = v0[26];
  v0[11] = v0;
  v9 = swift_task_alloc();
  v7 = *(v8 + 32);
  v7(v9, v6, v10);
  v11 = swift_task_alloc();
  (*(v8 + 16))(v11, v9, v10);
  swift_getAssociatedConformanceWitness();
  if (sub_22609A498())
  {
    (*(v5[27] + 8))(v9, v5[26]);
  }

  else
  {
    v4 = v5[26];
    swift_allocError();
    v7(v1, v9, v4);
  }

  (*(v5[27] + 8))(v11, v5[26]);

  __swift_destroy_boxed_opaque_existential_0(v5 + 2);

  v2 = *(v5[11] + 8);

  return v2();
}

uint64_t sub_226009B80(uint64_t a1)
{
  v79 = a1;
  v86 = sub_225F3E198;
  v88 = sub_225F3E1C8;
  v90 = sub_226012024;
  v91 = sub_225EF7B84;
  v95 = sub_226012054;
  v98 = sub_225F2D374;
  v100 = sub_225EF7434;
  v102 = sub_225EF7434;
  v104 = sub_225F3E358;
  v106 = sub_225EF7434;
  v108 = sub_225EF7434;
  v110 = sub_225EF7B90;
  v112 = sub_225EF7434;
  v114 = sub_225EF7434;
  v117 = sub_225EF71D0;
  v61 = &unk_2260A0CF8;
  v129 = 0;
  v128 = 0;
  v62 = 0;
  v73 = 0;
  v1 = type metadata accessor for CombinedTranscriberOutput(0);
  v63 = *(v1 - 8);
  v64 = v63;
  v65 = *(v63 + 64);
  v66 = (v65 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v67 = &v41 - v66;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786808, &unk_2260A0840);
  v69 = *(v68 - 8);
  v70 = v68 - 8;
  v71 = (*(v69 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v68);
  v72 = &v41 - v71;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786968, &qword_2260A08C0);
  v75 = *(v74 - 8);
  v76 = v74 - 8;
  v77 = (*(v75 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v73);
  v78 = &v41 - v77;
  v84 = sub_226098C58();
  v82 = *(v84 - 8);
  v83 = v84 - 8;
  v80 = (*(v82 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v79);
  v2 = &v41 - v80;
  v81 = &v41 - v80;
  v129 = v3;
  v128 = v4;
  v5 = sub_225F7E9BC();
  (*(v82 + 16))(v2, v5, v84);
  MEMORY[0x277D82BE0](v85);
  v97 = 7;
  v87 = swift_allocObject();
  *(v87 + 16) = v85;
  v121 = sub_226098C48();
  v122 = sub_22609A0A8();
  v93 = 17;
  v101 = swift_allocObject();
  *(v101 + 16) = 64;
  v103 = swift_allocObject();
  v94 = 8;
  *(v103 + 16) = 8;
  v96 = 32;
  v6 = swift_allocObject();
  v7 = v87;
  v89 = v6;
  *(v6 + 16) = v86;
  *(v6 + 24) = v7;
  v8 = swift_allocObject();
  v9 = v89;
  v105 = v8;
  *(v8 + 16) = v88;
  *(v8 + 24) = v9;
  v107 = swift_allocObject();
  *(v107 + 16) = 32;
  v109 = swift_allocObject();
  *(v109 + 16) = v94;
  v10 = swift_allocObject();
  v92 = v10;
  *(v10 + 16) = v90;
  *(v10 + 24) = 0;
  v11 = swift_allocObject();
  v12 = v92;
  v111 = v11;
  *(v11 + 16) = v91;
  *(v11 + 24) = v12;
  v113 = swift_allocObject();
  *(v113 + 16) = 0;
  v115 = swift_allocObject();
  *(v115 + 16) = v94;
  v13 = swift_allocObject();
  v99 = v13;
  *(v13 + 16) = v95;
  *(v13 + 24) = 0;
  v14 = swift_allocObject();
  v15 = v99;
  v118 = v14;
  *(v14 + 16) = v98;
  *(v14 + 24) = v15;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v116 = sub_22609A4F8();
  v119 = v16;

  v17 = v101;
  v18 = v119;
  *v119 = v100;
  v18[1] = v17;

  v19 = v103;
  v20 = v119;
  v119[2] = v102;
  v20[3] = v19;

  v21 = v105;
  v22 = v119;
  v119[4] = v104;
  v22[5] = v21;

  v23 = v107;
  v24 = v119;
  v119[6] = v106;
  v24[7] = v23;

  v25 = v109;
  v26 = v119;
  v119[8] = v108;
  v26[9] = v25;

  v27 = v111;
  v28 = v119;
  v119[10] = v110;
  v28[11] = v27;

  v29 = v113;
  v30 = v119;
  v119[12] = v112;
  v30[13] = v29;

  v31 = v115;
  v32 = v119;
  v119[14] = v114;
  v32[15] = v31;

  v33 = v118;
  v34 = v119;
  v119[16] = v117;
  v34[17] = v33;
  sub_225EF5418();

  if (os_log_type_enabled(v121, v122))
  {
    v35 = v62;
    v54 = sub_22609A188();
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v53 = 1;
    v55 = sub_225EF5468(1, v52, v52);
    v56 = sub_225EF5468(v53, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v57 = v127;
    v127[0] = v54;
    v58 = &v126;
    v126 = v55;
    v59 = &v125;
    v125 = v56;
    sub_225EF54BC(2, v127);
    sub_225EF54BC(3, v57);
    v123 = v100;
    v124 = v101;
    sub_225EF73E8(&v123, v57, v58, v59);
    v60 = v35;
    if (v35)
    {

      __break(1u);
    }

    else
    {
      v123 = v102;
      v124 = v103;
      sub_225EF73E8(&v123, v127, &v126, &v125);
      v51 = 0;
      v123 = v104;
      v124 = v105;
      sub_225EF73E8(&v123, v127, &v126, &v125);
      v50 = 0;
      v123 = v106;
      v124 = v107;
      sub_225EF73E8(&v123, v127, &v126, &v125);
      v49 = 0;
      v123 = v108;
      v124 = v109;
      sub_225EF73E8(&v123, v127, &v126, &v125);
      v48 = 0;
      v123 = v110;
      v124 = v111;
      sub_225EF73E8(&v123, v127, &v126, &v125);
      v47 = 0;
      v123 = v112;
      v124 = v113;
      sub_225EF73E8(&v123, v127, &v126, &v125);
      v46 = 0;
      v123 = v114;
      v124 = v115;
      sub_225EF73E8(&v123, v127, &v126, &v125);
      v45 = 0;
      v123 = v117;
      v124 = v118;
      sub_225EF73E8(&v123, v127, &v126, &v125);
      _os_log_impl(&dword_225EEB000, v121, v122, "%@ %s:%ld queue task enqueued", v54, 0x20u);
      v44 = 1;
      sub_225EF7AF4(v55, 1, v52);
      sub_225EF7AF4(v56, v44, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v121);
  (*(v82 + 8))(v81, v84);
  sub_225EF58A0();
  MEMORY[0x277D82BE0](v85);
  sub_226021FA4(v79, v67);
  v42 = (*(v64 + 80) + 24) & ~*(v64 + 80);
  v36 = swift_allocObject();
  v37 = v42;
  v38 = v36;
  v39 = v67;
  v43 = v38;
  *(v38 + 16) = v85;
  sub_226022294(v39, v38 + v37);
  v127[1] = v61;
  v127[2] = v43;
  sub_226099DD8();
  (*(v69 + 8))(v72, v68);
  return (*(v75 + 8))(v78, v74);
}

uint64_t sub_22600AAE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a1;
  v24 = a2;
  v25 = a3;
  v28 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862B8, &qword_2260A0310) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v27);
  v29 = &v6 - v28;
  sub_225EF7BD0(v3, &v6 - v28);
  v30 = sub_226099DA8();
  v31 = *(v30 - 8);
  v32 = v30 - 8;
  if ((*(v31 + 48))(v29, 1) == 1)
  {
    sub_225EF7CF8(v29);
    v23 = 0;
  }

  else
  {
    v22 = sub_226099D98();
    (*(v31 + 8))(v29, v30);
    v23 = v22;
  }

  v19 = v23 | 0x7100;
  v21 = *(v25 + 16);
  v20 = *(v25 + 24);
  swift_unknownObjectRetain();
  if (v21)
  {
    v17 = v21;
    v18 = v20;
    v11 = v20;
    v12 = v21;
    swift_getObjectType();
    v13 = sub_226099D48();
    v14 = v4;
    swift_unknownObjectRelease();
    v15 = v13;
    v16 = v14;
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  v9 = v16;
  v8 = v15;
  v7 = *v26;

  v10 = 0;
  if (v8 != 0 || v9 != 0)
  {
    v36[0] = 0;
    v36[1] = 0;
    v36[2] = v8;
    v36[3] = v9;
    v10 = v36;
  }

  v33 = 1;
  v34 = v10;
  v35 = v7;
  swift_task_create();
}

uint64_t sub_22600ADC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a4;
  v4[18] = a3;
  v4[15] = v4;
  v4[16] = 0;
  v4[17] = 0;
  v4[13] = 0;
  v4[14] = 0;
  v4[16] = a3;
  v4[17] = a4;
  return MEMORY[0x2822009F8](sub_22600AE18, 0, 0);
}

uint64_t sub_22600AE18()
{
  v1 = v0[18];
  v0[15] = v0;
  v8 = v1[3];
  v7 = __swift_project_boxed_opaque_existential_0(v1, v8);
  v6 = *(v8 - 8);
  v9 = swift_task_alloc();
  (*(v6 + 16))(v9, v7, v8);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  sub_226099E98();

  v13 = v0[5];
  v0[20] = v13;
  v14 = v0[6];
  v0[21] = v14;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v13);
  v0[22] = swift_getAssociatedTypeWitness();
  v2 = sub_22609A198();
  v0[23] = v2;
  v0[24] = *(v2 - 8);
  v15 = swift_task_alloc();
  v0[25] = v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[26] = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  v0[27] = v10;
  v0[28] = *(v10 + 64);
  v12 = swift_task_alloc();
  v0[29] = v12;
  v4 = swift_task_alloc();
  *(v11 + 240) = v4;
  *v4 = *(v11 + 120);
  v4[1] = sub_22600B138;

  return MEMORY[0x282200310](v15, 0, 0, v12, v13, v14);
}

uint64_t sub_22600B138()
{
  *(*v1 + 120) = *v1;

  if (v0)
  {
    v2 = sub_22600B770;
  }

  else
  {

    v2 = sub_22600B2AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22600B2AC()
{
  v1 = v0[25];
  v2 = v0[22];
  v0[15] = v0;
  v19 = *(v2 - 8);
  if ((*(v19 + 48))(v1, 1) == 1)
  {
    (*(v18[24] + 8))();

    v18[7] = 0;
    v18[8] = 0;
    v18[9] = 0;
    v18[10] = 0;
  }

  else
  {
    v17 = v18[25];
    v16 = v18[22];
    v18[10] = v16;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v18 + 7);
    (*(v19 + 32))(boxed_opaque_existential_0, v17, v16);
  }

  if (v18[10])
  {
    if (swift_dynamicCast())
    {
      v14 = v18[11];
      v15 = v18[12];
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    if (v14)
    {
      v18[13] = v14;
      v18[14] = v15;
      sub_22600B9E8(v14, v15);
    }

    v11 = v18[5];
    v18[20] = v11;
    v12 = v18[6];
    v18[21] = v12;
    __swift_mutable_project_boxed_opaque_existential_1((v18 + 2), v11);
    v18[22] = swift_getAssociatedTypeWitness();
    v6 = sub_22609A198();
    v18[23] = v6;
    v18[24] = *(v6 - 8);
    v13 = swift_task_alloc();
    v18[25] = v13;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v18[26] = AssociatedTypeWitness;
    v9 = *(AssociatedTypeWitness - 8);
    v18[27] = v9;
    v18[28] = *(v9 + 64);
    v10 = swift_task_alloc();
    v18[29] = v10;
    v8 = swift_task_alloc();
    v18[30] = v8;
    *v8 = v18[15];
    v8[1] = sub_22600B138;

    return MEMORY[0x282200310](v13, 0, 0, v10, v11, v12);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v18 + 2);
    v4 = *(v18[15] + 8);

    return v4();
  }
}

uint64_t sub_22600B770()
{
  v6 = v0[29];
  v8 = v0[27];
  v10 = v0[26];
  v0[15] = v0;
  v9 = swift_task_alloc();
  v7 = *(v8 + 32);
  v7(v9, v6, v10);
  v11 = swift_task_alloc();
  (*(v8 + 16))(v11, v9, v10);
  swift_getAssociatedConformanceWitness();
  if (sub_22609A498())
  {
    (*(v5[27] + 8))(v9, v5[26]);
  }

  else
  {
    v4 = v5[26];
    swift_allocError();
    v7(v1, v9, v4);
  }

  (*(v5[27] + 8))(v11, v5[26]);

  __swift_destroy_boxed_opaque_existential_0(v5 + 2);
  v2 = *(v5[15] + 8);

  return v2();
}

uint64_t sub_22600B9E8(uint64_t a1, uint64_t a2)
{
  v73 = a1;
  v72 = a2;
  v80 = sub_225F3E198;
  v82 = sub_225F3E1C8;
  v84 = sub_22600E700;
  v85 = sub_225EF7B84;
  v89 = sub_22600E730;
  v92 = sub_225F2D374;
  v94 = sub_225EF7434;
  v96 = sub_225EF7434;
  v98 = sub_225F3E358;
  v100 = sub_225EF7434;
  v102 = sub_225EF7434;
  v104 = sub_225EF7B90;
  v106 = sub_225EF7434;
  v108 = sub_225EF7434;
  v111 = sub_225EF71D0;
  v60 = &unk_2260A0D08;
  v123 = 0;
  v124 = 0;
  v122 = 0;
  v61 = 0;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786808, &unk_2260A0840);
  v63 = *(v62 - 8);
  v64 = v62 - 8;
  v65 = (*(v63 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v62);
  v66 = &v42 - v65;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786968, &qword_2260A08C0);
  v68 = *(v67 - 8);
  v69 = v67 - 8;
  v70 = (*(v68 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v67);
  v71 = &v42 - v70;
  v78 = sub_226098C58();
  v76 = *(v78 - 8);
  v77 = v78 - 8;
  v74 = (*(v76 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v73);
  v2 = &v42 - v74;
  v75 = &v42 - v74;
  v123 = v3;
  v124 = v4;
  v122 = v5;
  v6 = sub_225F7E9BC();
  (*(v76 + 16))(v2, v6, v78);
  MEMORY[0x277D82BE0](v79);
  v91 = 7;
  v81 = swift_allocObject();
  *(v81 + 16) = v79;
  v115 = sub_226098C48();
  v116 = sub_22609A0A8();
  v87 = 17;
  v95 = swift_allocObject();
  *(v95 + 16) = 64;
  v97 = swift_allocObject();
  v88 = 8;
  *(v97 + 16) = 8;
  v90 = 32;
  v7 = swift_allocObject();
  v8 = v81;
  v83 = v7;
  *(v7 + 16) = v80;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v83;
  v99 = v9;
  *(v9 + 16) = v82;
  *(v9 + 24) = v10;
  v101 = swift_allocObject();
  *(v101 + 16) = 32;
  v103 = swift_allocObject();
  *(v103 + 16) = v88;
  v11 = swift_allocObject();
  v86 = v11;
  *(v11 + 16) = v84;
  *(v11 + 24) = 0;
  v12 = swift_allocObject();
  v13 = v86;
  v105 = v12;
  *(v12 + 16) = v85;
  *(v12 + 24) = v13;
  v107 = swift_allocObject();
  *(v107 + 16) = 0;
  v109 = swift_allocObject();
  *(v109 + 16) = v88;
  v14 = swift_allocObject();
  v93 = v14;
  *(v14 + 16) = v89;
  *(v14 + 24) = 0;
  v15 = swift_allocObject();
  v16 = v93;
  v112 = v15;
  *(v15 + 16) = v92;
  *(v15 + 24) = v16;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v110 = sub_22609A4F8();
  v113 = v17;

  v18 = v95;
  v19 = v113;
  *v113 = v94;
  v19[1] = v18;

  v20 = v97;
  v21 = v113;
  v113[2] = v96;
  v21[3] = v20;

  v22 = v99;
  v23 = v113;
  v113[4] = v98;
  v23[5] = v22;

  v24 = v101;
  v25 = v113;
  v113[6] = v100;
  v25[7] = v24;

  v26 = v103;
  v27 = v113;
  v113[8] = v102;
  v27[9] = v26;

  v28 = v105;
  v29 = v113;
  v113[10] = v104;
  v29[11] = v28;

  v30 = v107;
  v31 = v113;
  v113[12] = v106;
  v31[13] = v30;

  v32 = v109;
  v33 = v113;
  v113[14] = v108;
  v33[15] = v32;

  v34 = v112;
  v35 = v113;
  v113[16] = v111;
  v35[17] = v34;
  sub_225EF5418();

  if (os_log_type_enabled(v115, v116))
  {
    v36 = v61;
    v53 = sub_22609A188();
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v52 = 1;
    v54 = sub_225EF5468(1, v51, v51);
    v55 = sub_225EF5468(v52, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v56 = v121;
    v121[0] = v53;
    v57 = &v120;
    v120 = v54;
    v58 = &v119;
    v119 = v55;
    sub_225EF54BC(2, v121);
    sub_225EF54BC(3, v56);
    v117 = v94;
    v118 = v95;
    sub_225EF73E8(&v117, v56, v57, v58);
    v59 = v36;
    if (v36)
    {

      __break(1u);
    }

    else
    {
      v117 = v96;
      v118 = v97;
      sub_225EF73E8(&v117, v121, &v120, &v119);
      v50 = 0;
      v117 = v98;
      v118 = v99;
      sub_225EF73E8(&v117, v121, &v120, &v119);
      v49 = 0;
      v117 = v100;
      v118 = v101;
      sub_225EF73E8(&v117, v121, &v120, &v119);
      v48 = 0;
      v117 = v102;
      v118 = v103;
      sub_225EF73E8(&v117, v121, &v120, &v119);
      v47 = 0;
      v117 = v104;
      v118 = v105;
      sub_225EF73E8(&v117, v121, &v120, &v119);
      v46 = 0;
      v117 = v106;
      v118 = v107;
      sub_225EF73E8(&v117, v121, &v120, &v119);
      v45 = 0;
      v117 = v108;
      v118 = v109;
      sub_225EF73E8(&v117, v121, &v120, &v119);
      v44 = 0;
      v117 = v111;
      v118 = v112;
      sub_225EF73E8(&v117, v121, &v120, &v119);
      _os_log_impl(&dword_225EEB000, v115, v116, "%@ %s:%ld queue task enqueued", v53, 0x20u);
      v43 = 1;
      sub_225EF7AF4(v54, 1, v51);
      sub_225EF7AF4(v55, v43, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v115);
  (*(v76 + 8))(v75, v78);
  sub_225EF58A0();
  MEMORY[0x277D82BE0](v79);
  sub_2260998E8();
  sub_2260998E8();
  v37 = swift_allocObject();
  v38 = v73;
  v39 = v72;
  v40 = v60;
  *(v37 + 16) = v79;
  *(v37 + 24) = v38;
  *(v37 + 32) = v39;
  v121[1] = v40;
  v121[2] = v37;
  sub_226099DD8();
  (*(v63 + 8))(v66, v62);
  return (*(v68 + 8))(v71, v67);
}

uint64_t sub_22600C890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a6;
  v6[7] = a5;
  v6[6] = a4;
  v6[5] = a3;
  v6[2] = v6;
  v6[3] = 0;
  v6[4] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786D00, &qword_2260A0ED0);
  v6[9] = swift_task_alloc();
  v7 = sub_226099328();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[13] = AssociatedTypeWitness;
  v6[14] = *(AssociatedTypeWitness - 8);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_getAssociatedTypeWitness();
  sub_22609A198();
  v6[19] = swift_task_alloc();
  v6[20] = *(a5 - 8);
  v6[21] = swift_task_alloc();
  v9 = swift_getAssociatedTypeWitness();
  v6[22] = v9;
  v6[23] = *(v9 - 8);
  v6[24] = swift_task_alloc();
  v6[3] = a3;
  v6[4] = a4;

  return MEMORY[0x2822009F8](sub_22600CBE8, 0, 0);
}

uint64_t sub_22600CBE8()
{
  v1 = v0[21];
  v2 = v0[20];
  v3 = v0[5];
  v0[2] = v0;
  (*(v2 + 16))(v1, v3);
  sub_226099E98();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[25] = AssociatedConformanceWitness;
  v4 = swift_task_alloc();
  v9[26] = v4;
  *v4 = v9[2];
  v4[1] = sub_22600CD30;
  v5 = v9[22];
  v6 = v9[19];
  v7 = v9[17];

  return MEMORY[0x282200310](v6, 0, 0, v7, v5, AssociatedConformanceWitness);
}

uint64_t sub_22600CD30()
{
  *(*v1 + 16) = *v1;

  if (v0)
  {
    v2 = sub_22600D248;
  }

  else
  {
    v2 = sub_22600CE90;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22600CE90()
{
  v1 = v0[19];
  v2 = v0[18];
  v0[2] = v0;
  if ((*(*(v2 - 8) + 48))(v1, 1) == 1)
  {
    (*(v13[23] + 8))();

    v3 = *(v13[2] + 8);

    return v3();
  }

  else
  {
    if (swift_dynamicCast())
    {
      (*(v13[11] + 56))(v13[9], 0, 1, v13[10]);
    }

    else
    {
      (*(v13[11] + 56))(v13[9], 1, 1, v13[10]);
    }

    if ((*(v13[11] + 48))(v13[9], 1, v13[10]) == 1)
    {
      sub_226024390(v13[9]);
    }

    else
    {
      v10 = v13[12];
      v11 = v13[10];
      v9 = v13[11];
      (*(v9 + 32))();
      sub_22600D510(v10);
      (*(v9 + 8))(v10, v11);
    }

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v13[25] = AssociatedConformanceWitness;
    v5 = swift_task_alloc();
    v13[26] = v5;
    *v5 = v13[2];
    v5[1] = sub_22600CD30;
    v6 = v13[22];
    v7 = v13[19];
    v8 = v13[17];

    return MEMORY[0x282200310](v7, 0, 0, v8, v6, AssociatedConformanceWitness);
  }
}

uint64_t sub_22600D248()
{
  v12 = v0[16];
  v14 = v0[15];
  v11 = v0[14];
  v13 = v0[13];
  v0[2] = v0;
  v10 = *(v11 + 32);
  v10();
  (*(v11 + 16))(v14, v12, v13);
  swift_getAssociatedConformanceWitness();
  if (sub_22609A498())
  {
    (*(v9[14] + 8))(v9[16], v9[13]);
  }

  else
  {
    v8 = v9[16];
    v7 = v9[13];
    swift_allocError();
    (v10)(v1, v8, v7);
  }

  v6 = v9[24];
  v5 = v9[22];
  v4 = v9[23];
  (*(v9[14] + 8))();
  (*(v4 + 8))(v6, v5);

  v2 = *(v9[2] + 8);

  return v2();
}

uint64_t sub_22600D510(uint64_t a1)
{
  v12 = a1;
  v21 = &unk_2260A0D18;
  v34 = 0;
  v33 = 0;
  v20 = sub_226099328();
  v16 = *(v20 - 8);
  v17 = v20 - 8;
  v13 = v16;
  v14 = *(v16 + 64);
  v9 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20);
  v19 = &v9 - v9;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786808, &unk_2260A0840);
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v10 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v26);
  v25 = &v9 - v10;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786968, &qword_2260A08C0);
  v27 = *(v30 - 8);
  v28 = v30 - 8;
  v11 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v29 = &v9 - v11;
  v34 = v2;
  v33 = v1;
  sub_225EF58A0();
  MEMORY[0x277D82BE0](v15);
  (*(v16 + 16))(v19, v12, v20);
  v18 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v3 = swift_allocObject();
  v4 = v16;
  v5 = v18;
  v6 = v19;
  v7 = v20;
  v22 = v3;
  *(v3 + 16) = v15;
  (*(v4 + 32))(v3 + v5, v6, v7);
  v31 = v21;
  v32 = v22;
  sub_226099DD8();
  (*(v23 + 8))(v25, v26);
  return (*(v27 + 8))(v29, v30);
}

uint64_t sub_22600D820(void *a1)
{
  v74 = a1;
  v80 = v1;
  v61 = 0;
  v81 = sub_225F3E198;
  v83 = sub_225F3E1C8;
  v85 = sub_226016ADC;
  v86 = sub_225EF7B84;
  v90 = sub_226016B0C;
  v93 = sub_225F2D374;
  v95 = sub_225EF7434;
  v97 = sub_225EF7434;
  v99 = sub_225F3E358;
  v101 = sub_225EF7434;
  v103 = sub_225EF7434;
  v105 = sub_225EF7B90;
  v107 = sub_225EF7434;
  v109 = sub_225EF7434;
  v112 = sub_225EF71D0;
  v60 = &unk_2260A0D28;
  ObjectType = swift_getObjectType();
  v124 = 0;
  v123 = 0;
  v63 = 0;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786808, &unk_2260A0840);
  v65 = *(v64 - 8);
  v66 = v64 - 8;
  v67 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v64);
  v68 = &v42 - v67;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786968, &qword_2260A08C0);
  v70 = *(v69 - 8);
  v71 = v69 - 8;
  v72 = (*(v70 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v69);
  v73 = &v42 - v72;
  v79 = sub_226098C58();
  v77 = *(v79 - 8);
  v78 = v79 - 8;
  v75 = (*(v77 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v74);
  v2 = &v42 - v75;
  v76 = &v42 - v75;
  v124 = v3;
  v123 = v4;
  v5 = sub_225F7E9BC();
  (*(v77 + 16))(v2, v5, v79);
  MEMORY[0x277D82BE0](v80);
  v92 = 7;
  v82 = swift_allocObject();
  *(v82 + 16) = v80;
  v116 = sub_226098C48();
  v117 = sub_22609A0A8();
  v88 = 17;
  v96 = swift_allocObject();
  *(v96 + 16) = 64;
  v98 = swift_allocObject();
  v89 = 8;
  *(v98 + 16) = 8;
  v91 = 32;
  v6 = swift_allocObject();
  v7 = v82;
  v84 = v6;
  *(v6 + 16) = v81;
  *(v6 + 24) = v7;
  v8 = swift_allocObject();
  v9 = v84;
  v100 = v8;
  *(v8 + 16) = v83;
  *(v8 + 24) = v9;
  v102 = swift_allocObject();
  *(v102 + 16) = 32;
  v104 = swift_allocObject();
  *(v104 + 16) = v89;
  v10 = swift_allocObject();
  v87 = v10;
  *(v10 + 16) = v85;
  *(v10 + 24) = 0;
  v11 = swift_allocObject();
  v12 = v87;
  v106 = v11;
  *(v11 + 16) = v86;
  *(v11 + 24) = v12;
  v108 = swift_allocObject();
  *(v108 + 16) = 0;
  v110 = swift_allocObject();
  *(v110 + 16) = v89;
  v13 = swift_allocObject();
  v94 = v13;
  *(v13 + 16) = v90;
  *(v13 + 24) = 0;
  v14 = swift_allocObject();
  v15 = v94;
  v113 = v14;
  *(v14 + 16) = v93;
  *(v14 + 24) = v15;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v111 = sub_22609A4F8();
  v114 = v16;

  v17 = v96;
  v18 = v114;
  *v114 = v95;
  v18[1] = v17;

  v19 = v98;
  v20 = v114;
  v114[2] = v97;
  v20[3] = v19;

  v21 = v100;
  v22 = v114;
  v114[4] = v99;
  v22[5] = v21;

  v23 = v102;
  v24 = v114;
  v114[6] = v101;
  v24[7] = v23;

  v25 = v104;
  v26 = v114;
  v114[8] = v103;
  v26[9] = v25;

  v27 = v106;
  v28 = v114;
  v114[10] = v105;
  v28[11] = v27;

  v29 = v108;
  v30 = v114;
  v114[12] = v107;
  v30[13] = v29;

  v31 = v110;
  v32 = v114;
  v114[14] = v109;
  v32[15] = v31;

  v33 = v113;
  v34 = v114;
  v114[16] = v112;
  v34[17] = v33;
  sub_225EF5418();

  if (os_log_type_enabled(v116, v117))
  {
    v35 = v63;
    v53 = sub_22609A188();
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v52 = 1;
    v54 = sub_225EF5468(1, v51, v51);
    v55 = sub_225EF5468(v52, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v56 = v122;
    v122[0] = v53;
    v57 = &v121;
    v121 = v54;
    v58 = &v120;
    v120 = v55;
    sub_225EF54BC(2, v122);
    sub_225EF54BC(3, v56);
    v118 = v95;
    v119 = v96;
    sub_225EF73E8(&v118, v56, v57, v58);
    v59 = v35;
    if (v35)
    {

      __break(1u);
    }

    else
    {
      v118 = v97;
      v119 = v98;
      sub_225EF73E8(&v118, v122, &v121, &v120);
      v50 = 0;
      v118 = v99;
      v119 = v100;
      sub_225EF73E8(&v118, v122, &v121, &v120);
      v49 = 0;
      v118 = v101;
      v119 = v102;
      sub_225EF73E8(&v118, v122, &v121, &v120);
      v48 = 0;
      v118 = v103;
      v119 = v104;
      sub_225EF73E8(&v118, v122, &v121, &v120);
      v47 = 0;
      v118 = v105;
      v119 = v106;
      sub_225EF73E8(&v118, v122, &v121, &v120);
      v46 = 0;
      v118 = v107;
      v119 = v108;
      sub_225EF73E8(&v118, v122, &v121, &v120);
      v45 = 0;
      v118 = v109;
      v119 = v110;
      sub_225EF73E8(&v118, v122, &v121, &v120);
      v44 = 0;
      v118 = v112;
      v119 = v113;
      sub_225EF73E8(&v118, v122, &v121, &v120);
      _os_log_impl(&dword_225EEB000, v116, v117, "%@ %s:%ld queue task enqueued", v53, 0x20u);
      v43 = 1;
      sub_225EF7AF4(v54, 1, v51);
      sub_225EF7AF4(v55, v43, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v116);
  (*(v77 + 8))(v76, v79);
  sub_225EF58A0();
  MEMORY[0x277D82BE0](v80);
  v36 = v74;
  v37 = swift_allocObject();
  v38 = v74;
  v39 = ObjectType;
  v40 = v60;
  *(v37 + 16) = v80;
  *(v37 + 24) = v38;
  *(v37 + 32) = v39;
  v122[1] = v40;
  v122[2] = v37;
  sub_226099DD8();
  (*(v65 + 8))(v68, v64);
  return (*(v70 + 8))(v73, v69);
}

Float64 sub_22600E6BC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 12);
  v3 = *(a1 + 16);
  time.value = *a1;
  time.timescale = v1;
  time.flags = v2;
  time.epoch = v3;
  return CMTimeGetSeconds(&time);
}

uint64_t sub_22600E73C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 448) = a4;
  *(v4 + 440) = a3;
  *(v4 + 432) = a2;
  *(v4 + 336) = v4;
  *(v4 + 344) = 0;
  *(v4 + 240) = 0;
  *(v4 + 248) = 0;
  *(v4 + 352) = 0;
  *(v4 + 376) = 0;
  memset((v4 + 56), 0, 0x28uLL);
  *(v4 + 272) = 0;
  *(v4 + 280) = 0;
  *(v4 + 688) = 0;
  *(v4 + 400) = 0;
  *(v4 + 424) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786058, &qword_2260A0E00);
  *(v4 + 456) = swift_task_alloc();
  *(v4 + 464) = swift_task_alloc();
  *(v4 + 472) = swift_task_alloc();
  *(v4 + 480) = swift_task_alloc();
  *(v4 + 488) = swift_task_alloc();
  v5 = sub_2260990C8();
  *(v4 + 496) = v5;
  *(v4 + 504) = *(v5 - 8);
  *(v4 + 512) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786C80, &qword_2260A0E08);
  *(v4 + 520) = swift_task_alloc();
  *(v4 + 528) = swift_task_alloc();
  *(v4 + 536) = swift_task_alloc();
  *(v4 + 544) = swift_task_alloc();
  *(v4 + 552) = swift_task_alloc();
  v6 = sub_226098C58();
  *(v4 + 560) = v6;
  *(v4 + 568) = *(v6 - 8);
  *(v4 + 576) = swift_task_alloc();
  *(v4 + 584) = swift_task_alloc();
  *(v4 + 344) = a2;
  *(v4 + 240) = a3;
  *(v4 + 248) = a4;

  return MEMORY[0x2822009F8](sub_22600EA3C, 0, 0);
}

uint64_t sub_22600EA3C()
{
  v141 = v0;
  v1 = v0[73];
  v107 = v0[71];
  v108 = v0[70];
  v110 = v0[54];
  v0[42] = v0;
  v2 = sub_225F7E9BC();
  v109 = *(v107 + 16);
  v109(v1, v2, v108);
  MEMORY[0x277D82BE0](v110);
  v111 = swift_allocObject();
  *(v111 + 16) = v110;
  v125 = sub_226098C48();
  v126 = sub_22609A0A8();
  v115 = swift_allocObject();
  *(v115 + 16) = 64;
  v116 = swift_allocObject();
  *(v116 + 16) = 8;
  v112 = swift_allocObject();
  *(v112 + 16) = sub_225F3E198;
  *(v112 + 24) = v111;
  v117 = swift_allocObject();
  *(v117 + 16) = sub_225F3E1C8;
  *(v117 + 24) = v112;
  v118 = swift_allocObject();
  *(v118 + 16) = 32;
  v119 = swift_allocObject();
  *(v119 + 16) = 8;
  v113 = swift_allocObject();
  *(v113 + 16) = sub_22600E700;
  *(v113 + 24) = 0;
  v120 = swift_allocObject();
  *(v120 + 16) = sub_225EF7B84;
  *(v120 + 24) = v113;
  v121 = swift_allocObject();
  *(v121 + 16) = 0;
  v122 = swift_allocObject();
  *(v122 + 16) = 8;
  v114 = swift_allocObject();
  *(v114 + 16) = sub_226011110;
  *(v114 + 24) = 0;
  v123 = swift_allocObject();
  *(v123 + 16) = sub_225F2D374;
  *(v123 + 24) = v114;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v124 = v3;

  *v124 = sub_225EF7434;
  v124[1] = v115;

  v124[2] = sub_225EF7434;
  v124[3] = v116;

  v124[4] = sub_225F3E358;
  v124[5] = v117;

  v124[6] = sub_225EF7434;
  v124[7] = v118;

  v124[8] = sub_225EF7434;
  v124[9] = v119;

  v124[10] = sub_225EF7B90;
  v124[11] = v120;

  v124[12] = sub_225EF7434;
  v124[13] = v121;

  v124[14] = sub_225EF7434;
  v124[15] = v122;

  v124[16] = sub_225EF71D0;
  v124[17] = v123;
  sub_225EF5418();

  if (os_log_type_enabled(v125, v126))
  {
    buf = sub_22609A188();
    v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v104 = sub_225EF5468(1, v102, v102);
    v105 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v136 = buf;
    v137 = v104;
    v138 = v105;
    sub_225EF54BC(2, &v136);
    sub_225EF54BC(3, &v136);
    v139 = sub_225EF7434;
    v140 = v115;
    sub_225EF73E8(&v139, &v136, &v137, &v138);
    v139 = sub_225EF7434;
    v140 = v116;
    sub_225EF73E8(&v139, &v136, &v137, &v138);
    v139 = sub_225F3E358;
    v140 = v117;
    sub_225EF73E8(&v139, &v136, &v137, &v138);
    v139 = sub_225EF7434;
    v140 = v118;
    sub_225EF73E8(&v139, &v136, &v137, &v138);
    v139 = sub_225EF7434;
    v140 = v119;
    sub_225EF73E8(&v139, &v136, &v137, &v138);
    v139 = sub_225EF7B90;
    v140 = v120;
    sub_225EF73E8(&v139, &v136, &v137, &v138);
    v139 = sub_225EF7434;
    v140 = v121;
    sub_225EF73E8(&v139, &v136, &v137, &v138);
    v139 = sub_225EF7434;
    v140 = v122;
    sub_225EF73E8(&v139, &v136, &v137, &v138);
    v139 = sub_225EF71D0;
    v140 = v123;
    sub_225EF73E8(&v139, &v136, &v137, &v138);
    _os_log_impl(&dword_225EEB000, v125, v126, "%@ %s:%ld queue task dequeued", buf, 0x20u);
    sub_225EF7AF4(v104, 1, v102);
    sub_225EF7AF4(v105, 1, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  else
  {
  }

  v97 = *(v106 + 584);
  v98 = *(v106 + 560);
  v100 = *(v106 + 432);
  v96 = *(v106 + 568);
  MEMORY[0x277D82BD8](v125);
  v99 = *(v96 + 8);
  v99(v97, v98);
  v101 = [v100 delegate];
  if (v101)
  {
    v92 = *(v106 + 544);
    v93 = *(v106 + 536);
    v91 = *(v106 + 448);
    v90 = *(v106 + 440);
    *(v106 + 352) = v101;
    sub_2260998E8();
    *(v106 + 360) = v90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786B08, &qword_2260A0B30);
    sub_226023348();
    sub_226099FE8();

    sub_2260998E8();
    *(v106 + 368) = v91;
    sub_226099FE8();

    sub_2260233D0(v92, v93);
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786C90, &qword_2260A0E10);
    v95 = *(*(v94 - 8) + 48);
    if (v95(v93, 1) == 1)
    {
      return sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 2083, 0);
    }

    v87 = *(v106 + 512);
    v88 = *(v106 + 496);
    v86 = *(v106 + 504);
    v82 = *(v106 + 536) + *(v94 + 48);
    sub_226098EE8();
    v83 = sub_226098FA8();
    v84 = *(v83 - 8);
    v85 = *(v84 + 8);
    v85(v82);
    v89 = (*(v86 + 88))(v87, v88);
    if (v89 == *MEMORY[0x277CDCBC0])
    {
      v80 = *(v106 + 544);
      v81 = *(v106 + 528);
      *(v106 + 688) = 0;
      sub_225F27078();
      sub_2260233D0(v80, v81);
      if ((v95)(v81, 1, v94) == 1)
      {
        return sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 2086, 0);
      }

      v79 = *(v106 + 520);
      v78 = *(v106 + 528) + *(v94 + 48);
      sub_2260233D0(*(v106 + 544), v79);
      if ((v95)(v79, 1, v94) == 1)
      {
        return sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 2087, 0);
      }

      v75 = *(v106 + 520) + *(v94 + 48);
      MEMORY[0x22AA72090]();
      (v85)(v75, v83);
      v5 = *(v106 + 648);
      v6 = *(v106 + 652);
      v7 = *(v106 + 656);
      v133 = *(v106 + 640);
      v134 = __PAIR64__(v6, v5);
      v135 = v7;
      v76 = sub_225F1D3FC(v78, v133, __SPAIR64__(v6, v5), v7, 0);

      (v85)(v78, v83);

      *(v106 + 400) = v76;
      *(v106 + 408) = v76;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786CB0, &unk_2260A0300);
      sub_225F3E110();
      sub_226099FE8();
      v77 = *(v106 + 416);
      if (v77)
      {
        v74 = *(v106 + 432);
        *(v106 + 424) = v77;
        swift_getObjectType();
        MEMORY[0x277D82BE0](v74);
        sub_2260998E8();
        sub_225F1E118();
        v73 = sub_226099C78();

        [v101 localSpeechRecognizer:v74 didRecognizeTokens:v73];
        MEMORY[0x277D82BD8](v73);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      if (v89 != *MEMORY[0x277CDCBD0] && v89 != *MEMORY[0x277CDCBB0])
      {
        if (v89 == *MEMORY[0x277CDCBB8] || v89 == *MEMORY[0x277CDCBA0])
        {

          v8 = *(v106 + 576);
          v56 = *(v106 + 560);
          v59 = *(v106 + 448);
          v58 = *(v106 + 440);
          v57 = *(v106 + 432);
          v55 = swift_allocObject();
          *(v106 + 376) = v55 + 16;
          *(v55 + 16) = 0;
          v9 = sub_225F7E9BC();
          v109(v8, v9, v56);
          MEMORY[0x277D82BE0](v57);
          v60 = swift_allocObject();
          *(v60 + 16) = v57;
          sub_2260998E8();
          sub_2260998E8();
          v62 = swift_allocObject();
          *(v62 + 16) = v58;
          *(v62 + 24) = v59;
          oslog = sub_226098C48();
          v72 = sub_22609A088();
          v64 = swift_allocObject();
          *(v64 + 16) = 0;
          v65 = swift_allocObject();
          *(v65 + 16) = 8;
          v61 = swift_allocObject();
          *(v61 + 16) = sub_226023628;
          *(v61 + 24) = v60;
          v66 = swift_allocObject();
          *(v66 + 16) = sub_225F2D374;
          *(v66 + 24) = v61;
          v67 = swift_allocObject();
          *(v67 + 16) = 0;
          v68 = swift_allocObject();
          *(v68 + 16) = 8;
          v63 = swift_allocObject();
          *(v63 + 16) = sub_226023630;
          *(v63 + 24) = v62;
          v69 = swift_allocObject();
          *(v69 + 16) = sub_225F2D374;
          *(v69 + 24) = v63;
          sub_22609A4F8();
          v70 = v10;

          *v70 = sub_225EF7434;
          v70[1] = v64;

          v70[2] = sub_225EF7434;
          v70[3] = v65;

          v70[4] = sub_225EF71D0;
          v70[5] = v66;

          v70[6] = sub_225EF7434;
          v70[7] = v67;

          v70[8] = sub_225EF7434;
          v70[9] = v68;

          v70[10] = sub_225EF71D0;
          v70[11] = v69;
          sub_225EF5418();

          if (os_log_type_enabled(oslog, v72))
          {
            v52 = sub_22609A188();
            v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
            v53 = sub_225EF5468(0, v51, v51);
            v54 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
            v128 = v52;
            v129 = v53;
            v130 = v54;
            sub_225EF54BC(0, &v128);
            sub_225EF54BC(2, &v128);
            v131 = sub_225EF7434;
            v132 = v64;
            sub_225EF73E8(&v131, &v128, &v129, &v130);
            v131 = sub_225EF7434;
            v132 = v65;
            sub_225EF73E8(&v131, &v128, &v129, &v130);
            v131 = sub_225EF71D0;
            v132 = v66;
            sub_225EF73E8(&v131, &v128, &v129, &v130);
            v131 = sub_225EF7434;
            v132 = v67;
            sub_225EF73E8(&v131, &v128, &v129, &v130);
            v131 = sub_225EF7434;
            v132 = v68;
            sub_225EF73E8(&v131, &v128, &v129, &v130);
            v131 = sub_225EF71D0;
            v132 = v69;
            sub_225EF73E8(&v131, &v128, &v129, &v130);
            _os_log_impl(&dword_225EEB000, oslog, v72, "MUX: number of users in userIdMask: %ld, number of users represented in current result: %ld", v52, 0x16u);
            sub_225EF7AF4(v53, 0, v51);
            sub_225EF7AF4(v54, 0, MEMORY[0x277D84F70] + 8);
            sub_22609A168();
          }

          else
          {
          }

          v46 = *(v106 + 576);
          v47 = *(v106 + 560);
          MEMORY[0x277D82BD8](oslog);
          v99(v46, v47);
          sub_2260998E8();
          v49 = MEMORY[0x277D837D0];
          v50 = MEMORY[0x277D837E0];
          v48 = sub_2260998E8();

          MEMORY[0x22AA729D0](v48, v49, v83, v50);
          memcpy((v106 + 56), (v106 + 16), 0x28uLL);
          while (1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786C98, &qword_2260A0E18);
            sub_2260998D8();
            v44 = *(v106 + 256);
            v45 = *(v106 + 264);
            if (!v45)
            {
              sub_225F15874((v106 + 56));

              goto LABEL_41;
            }

            v41 = *(v106 + 480);
            v42 = *(v106 + 472);
            *(v106 + 272) = v44;
            *(v106 + 280) = v45;
            sub_2260998E8();
            sub_2260998E8();
            *(v106 + 288) = v44;
            *(v106 + 296) = v45;
            sub_226099938();
            sub_225EFE6BC(v106 + 288);

            sub_2260998E8();
            sub_2260998E8();
            *(v106 + 304) = v44;
            *(v106 + 312) = v45;
            sub_226099938();
            sub_225EFE6BC(v106 + 304);

            sub_2260998E8();
            sub_225F27078();
            sub_225F2C4E8(v41, v42);
            v43 = *(v84 + 48);
            if (v43(v42, 1, v83) == 1)
            {
              return sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 2099, 0);
            }

            v40 = *(v106 + 464);
            sub_225F2C4E8(*(v106 + 488), v40);
            if (v43(v40, 1, v83) == 1)
            {
              return sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 2100, 0);
            }

            v39 = *(v106 + 456);
            sub_225F2C4E8(*(v106 + 480), v39);
            if (v43(v39, 1, v83) == 1)
            {
              return sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 2101, 0);
            }

            v34 = *(v106 + 472);
            v33 = *(v106 + 464);
            v21 = *(v106 + 456);
            v36 = *(v106 + 432);
            MEMORY[0x22AA72090]();
            (v85)(v21, v83);
            v25 = *(v106 + 592);
            v26 = *(v106 + 600);
            v27 = *(v106 + 608);
            v22 = (v36 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_processedAudioDuration);
            swift_beginAccess();
            v29 = *v22;
            swift_endAccess();
            v23 = (v36 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_modelVersion);
            swift_beginAccess();
            v30 = *v23;
            v32 = v23[1];
            sub_2260998E8();
            swift_endAccess();
            v24 = (v36 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_acousticModelVersion);
            swift_beginAccess();
            v28 = *v24;
            v31 = v24[1];
            sub_2260998E8();
            swift_endAccess();
            v35 = sub_225F1E204(v34, v33, v25, v26, v27, 1, v30, v32, v29, v28, v31, 0, 0);

            (v85)(v33, v83);
            (v85)(v34, v83);
            *(v106 + 384) = v35;
            *(v106 + 320) = v44;
            *(v106 + 328) = v45;
            v127 = sub_226011CF0(v55);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786CA0, &unk_2260A0E20);
            sub_226099948();
            sub_226011DF0(v127, v55);
            v37 = (v36 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_hasRecognizedAnything);
            swift_beginAccess();
            v38 = *v37;
            swift_endAccess();
            if ((v38 & 1) == 0)
            {
              v18 = objc_opt_self();
              *(v106 + 392) = sub_226011CF0(v55);
              sub_22602363C();
              sub_226099FE8();
              v20 = *(v106 + 200);
              v19 = *(v106 + 208);

              if (!v20)
              {
                return sub_22609A3B8("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 62, 2, 2109, 0);
              }

              v15 = *(v106 + 432);
              v17 = [v18 hasRecognizedAnythingInAFSpeechPackage_];
              MEMORY[0x277D82BD8](v19);

              v16 = (v15 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_hasRecognizedAnything);
              swift_beginAccess();
              *v16 = v17;
              swift_endAccess();
            }

            v14 = *(v106 + 488);
            sub_225F2C610(*(v106 + 480));
            sub_225F2C610(v14);
          }
        }

        if (v89 != *MEMORY[0x277CDCBA8] && v89 != *MEMORY[0x277CDCBC8])
        {
          (*(*(v106 + 504) + 8))(*(v106 + 512), *(v106 + 496));
        }
      }
    }

LABEL_41:
    v12 = *(v106 + 552);
    v13 = *(v106 + 432);
    sub_226023554(*(v106 + 544));
    sub_226023554(v12);
    swift_unknownObjectRelease();
    sub_22601111C(v13);
  }

  else
  {
    sub_22601111C(*(v106 + 432));
  }

  v11 = *(*(v106 + 336) + 8);

  return v11();
}

uint64_t sub_22601111C(uint64_t a1)
{
  v51 = a1;
  v52 = sub_225F3E198;
  v54 = sub_225F3E1C8;
  v56 = sub_22600E700;
  v57 = sub_225EF7B84;
  v61 = sub_22601D4E0;
  v64 = sub_225F2D374;
  v66 = sub_225EF7434;
  v68 = sub_225EF7434;
  v70 = sub_225F3E358;
  v72 = sub_225EF7434;
  v74 = sub_225EF7434;
  v76 = sub_225EF7B90;
  v78 = sub_225EF7434;
  v80 = sub_225EF7434;
  v83 = sub_225EF71D0;
  v94 = 0;
  v45 = 0;
  v50 = sub_226098C58();
  v48 = *(v50 - 8);
  v49 = v50 - 8;
  v46 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v51);
  v1 = v35 - v46;
  v47 = v35 - v46;
  v94 = v2;
  v3 = sub_225F7E9BC();
  (*(v48 + 16))(v1, v3, v50);
  MEMORY[0x277D82BE0](v51);
  v63 = 7;
  v53 = swift_allocObject();
  *(v53 + 16) = v51;
  v87 = sub_226098C48();
  v88 = sub_22609A0A8();
  v59 = 17;
  v67 = swift_allocObject();
  *(v67 + 16) = 64;
  v69 = swift_allocObject();
  v60 = 8;
  *(v69 + 16) = 8;
  v62 = 32;
  v4 = swift_allocObject();
  v5 = v53;
  v55 = v4;
  *(v4 + 16) = v52;
  *(v4 + 24) = v5;
  v6 = swift_allocObject();
  v7 = v55;
  v71 = v6;
  *(v6 + 16) = v54;
  *(v6 + 24) = v7;
  v73 = swift_allocObject();
  *(v73 + 16) = 32;
  v75 = swift_allocObject();
  *(v75 + 16) = v60;
  v8 = swift_allocObject();
  v58 = v8;
  *(v8 + 16) = v56;
  *(v8 + 24) = 0;
  v9 = swift_allocObject();
  v10 = v58;
  v77 = v9;
  *(v9 + 16) = v57;
  *(v9 + 24) = v10;
  v79 = swift_allocObject();
  *(v79 + 16) = 0;
  v81 = swift_allocObject();
  *(v81 + 16) = v60;
  v11 = swift_allocObject();
  v65 = v11;
  *(v11 + 16) = v61;
  *(v11 + 24) = 0;
  v12 = swift_allocObject();
  v13 = v65;
  v84 = v12;
  *(v12 + 16) = v64;
  *(v12 + 24) = v13;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v82 = sub_22609A4F8();
  v85 = v14;

  v15 = v67;
  v16 = v85;
  *v85 = v66;
  v16[1] = v15;

  v17 = v69;
  v18 = v85;
  v85[2] = v68;
  v18[3] = v17;

  v19 = v71;
  v20 = v85;
  v85[4] = v70;
  v20[5] = v19;

  v21 = v73;
  v22 = v85;
  v85[6] = v72;
  v22[7] = v21;

  v23 = v75;
  v24 = v85;
  v85[8] = v74;
  v24[9] = v23;

  v25 = v77;
  v26 = v85;
  v85[10] = v76;
  v26[11] = v25;

  v27 = v79;
  v28 = v85;
  v85[12] = v78;
  v28[13] = v27;

  v29 = v81;
  v30 = v85;
  v85[14] = v80;
  v30[15] = v29;

  v31 = v84;
  v32 = v85;
  v85[16] = v83;
  v32[17] = v31;
  sub_225EF5418();

  if (os_log_type_enabled(v87, v88))
  {
    v33 = v45;
    v38 = sub_22609A188();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v37 = 1;
    v39 = sub_225EF5468(1, v36, v36);
    v40 = sub_225EF5468(v37, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v41 = &v93;
    v93 = v38;
    v42 = &v92;
    v92 = v39;
    v43 = &v91;
    v91 = v40;
    sub_225EF54BC(2, &v93);
    sub_225EF54BC(3, v41);
    v89 = v66;
    v90 = v67;
    sub_225EF73E8(&v89, v41, v42, v43);
    v44 = v33;
    if (v33)
    {

      __break(1u);
    }

    else
    {
      v89 = v68;
      v90 = v69;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[7] = 0;
      v89 = v70;
      v90 = v71;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[6] = 0;
      v89 = v72;
      v90 = v73;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[5] = 0;
      v89 = v74;
      v90 = v75;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[4] = 0;
      v89 = v76;
      v90 = v77;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[3] = 0;
      v89 = v78;
      v90 = v79;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[2] = 0;
      v89 = v80;
      v90 = v81;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[1] = 0;
      v89 = v83;
      v90 = v84;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      _os_log_impl(&dword_225EEB000, v87, v88, "%@ %s:%ld queue task complete", v38, 0x20u);
      v35[0] = 1;
      sub_225EF7AF4(v39, 1, v36);
      sub_225EF7AF4(v40, v35[0], MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v87);
  return (*(v48 + 8))(v47, v50);
}

uint64_t sub_226011CF0(uint64_t a1)
{
  v5 = *(a1 + 16);
  sub_2260998E8();
  if (v5)
  {
    return v5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786BF0, qword_2260A0D30);
  sub_22609A4F8();
  sub_225F2C420();
  v2 = sub_2260998A8();
  sub_2260998E8();
  swift_beginAccess();
  *(a1 + 16) = v2;

  swift_endAccess();
  return v2;
}

uint64_t sub_226011DF0(uint64_t a1, uint64_t a2)
{
  sub_2260998E8();
  swift_beginAccess();
  *(a2 + 16) = a1;

  swift_endAccess();
}

uint64_t sub_226011E70(uint64_t a1)
{
  v6 = (a1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_userIdMask);
  swift_beginAccess();
  if (*v6)
  {
    sub_2260998E8();
    swift_endAccess();
    v3 = sub_2260998C8();

    v4 = v3;
    v5 = 0;
  }

  else
  {
    swift_endAccess();
    v4 = 0;
    v5 = 1;
  }

  if (v5)
  {
    return -1;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_226011F98(uint64_t a1)
{
  sub_2260998E8();
  sub_226098FA8();
  sub_2260998E8();

  v2 = sub_2260998C8();

  return v2;
}

uint64_t sub_226012060(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 384) = a4;
  *(v4 + 376) = a3;
  *(v4 + 280) = v4;
  *(v4 + 288) = 0;
  *(v4 + 296) = 0;
  *(v4 + 304) = 0;
  *(v4 + 312) = 0;
  *(v4 + 320) = 0;
  *(v4 + 328) = 0;
  *(v4 + 336) = 0;
  *(v4 + 616) = 0;
  *(v4 + 344) = 0;
  *(v4 + 368) = 0;
  v5 = sub_2260990C8();
  *(v4 + 392) = v5;
  *(v4 + 400) = *(v5 - 8);
  *(v4 + 408) = swift_task_alloc();
  v6 = sub_226098FA8();
  *(v4 + 416) = v6;
  *(v4 + 424) = *(v6 - 8);
  *(v4 + 432) = swift_task_alloc();
  *(v4 + 440) = swift_task_alloc();
  v7 = sub_226098C58();
  *(v4 + 448) = v7;
  *(v4 + 456) = *(v7 - 8);
  *(v4 + 464) = swift_task_alloc();
  *(v4 + 288) = a3;
  *(v4 + 296) = a4;

  return MEMORY[0x2822009F8](sub_226012288, 0, 0);
}

uint64_t sub_226012288()
{
  v148 = v0;
  v1 = v0[58];
  v121 = v0[57];
  v122 = v0[56];
  v123 = v0[47];
  v0[35] = v0;
  v2 = sub_225F7E9BC();
  (*(v121 + 16))(v1, v2, v122);
  MEMORY[0x277D82BE0](v123);
  v124 = swift_allocObject();
  *(v124 + 16) = v123;
  v138 = sub_226098C48();
  v139 = sub_22609A0A8();
  v128 = swift_allocObject();
  *(v128 + 16) = 64;
  v129 = swift_allocObject();
  *(v129 + 16) = 8;
  v125 = swift_allocObject();
  *(v125 + 16) = sub_225F3E198;
  *(v125 + 24) = v124;
  v130 = swift_allocObject();
  *(v130 + 16) = sub_225F3E1C8;
  *(v130 + 24) = v125;
  v131 = swift_allocObject();
  *(v131 + 16) = 32;
  v132 = swift_allocObject();
  *(v132 + 16) = 8;
  v126 = swift_allocObject();
  *(v126 + 16) = sub_226012024;
  *(v126 + 24) = 0;
  v133 = swift_allocObject();
  *(v133 + 16) = sub_225EF7B84;
  *(v133 + 24) = v126;
  v134 = swift_allocObject();
  *(v134 + 16) = 0;
  v135 = swift_allocObject();
  *(v135 + 16) = 8;
  v127 = swift_allocObject();
  *(v127 + 16) = sub_226014E74;
  *(v127 + 24) = 0;
  v136 = swift_allocObject();
  *(v136 + 16) = sub_225F2D374;
  *(v136 + 24) = v127;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v137 = v3;

  *v137 = sub_225EF7434;
  v137[1] = v128;

  v137[2] = sub_225EF7434;
  v137[3] = v129;

  v137[4] = sub_225F3E358;
  v137[5] = v130;

  v137[6] = sub_225EF7434;
  v137[7] = v131;

  v137[8] = sub_225EF7434;
  v137[9] = v132;

  v137[10] = sub_225EF7B90;
  v137[11] = v133;

  v137[12] = sub_225EF7434;
  v137[13] = v134;

  v137[14] = sub_225EF7434;
  v137[15] = v135;

  v137[16] = sub_225EF71D0;
  v137[17] = v136;
  sub_225EF5418();

  if (os_log_type_enabled(v138, v139))
  {
    buf = sub_22609A188();
    v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v118 = sub_225EF5468(1, v116, v116);
    v119 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v143 = buf;
    v144 = v118;
    v145 = v119;
    sub_225EF54BC(2, &v143);
    sub_225EF54BC(3, &v143);
    v146 = sub_225EF7434;
    v147 = v128;
    sub_225EF73E8(&v146, &v143, &v144, &v145);
    v146 = sub_225EF7434;
    v147 = v129;
    sub_225EF73E8(&v146, &v143, &v144, &v145);
    v146 = sub_225F3E358;
    v147 = v130;
    sub_225EF73E8(&v146, &v143, &v144, &v145);
    v146 = sub_225EF7434;
    v147 = v131;
    sub_225EF73E8(&v146, &v143, &v144, &v145);
    v146 = sub_225EF7434;
    v147 = v132;
    sub_225EF73E8(&v146, &v143, &v144, &v145);
    v146 = sub_225EF7B90;
    v147 = v133;
    sub_225EF73E8(&v146, &v143, &v144, &v145);
    v146 = sub_225EF7434;
    v147 = v134;
    sub_225EF73E8(&v146, &v143, &v144, &v145);
    v146 = sub_225EF7434;
    v147 = v135;
    sub_225EF73E8(&v146, &v143, &v144, &v145);
    v146 = sub_225EF71D0;
    v147 = v136;
    sub_225EF73E8(&v146, &v143, &v144, &v145);
    _os_log_impl(&dword_225EEB000, v138, v139, "%@ %s:%ld queue task dequeued", buf, 0x20u);
    sub_225EF7AF4(v118, 1, v116);
    sub_225EF7AF4(v119, 1, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  else
  {
  }

  v112 = *(v120 + 464);
  v113 = *(v120 + 448);
  v114 = *(v120 + 376);
  v111 = *(v120 + 456);
  MEMORY[0x277D82BD8](v138);
  (*(v111 + 8))(v112, v113);
  v115 = [v114 delegate];
  *(v120 + 472) = v115;
  if (v115)
  {
    v4 = *(v120 + 440);
    v5 = *(v120 + 432);
    v6 = *(v120 + 424);
    v104 = *(v120 + 416);
    v108 = *(v120 + 408);
    v109 = *(v120 + 392);
    v103 = *(v120 + 384);
    v107 = *(v120 + 400);
    *(v120 + 304) = v115;
    v105 = *(v6 + 16);
    v105(v4);
    v7 = type metadata accessor for CombinedTranscriberOutput(0);
    (v105)(v5, v103 + *(v7 + 24), v104);
    v106 = swift_allocObject();
    *(v120 + 480) = v106;
    *(v120 + 312) = v106 + 16;
    *(v106 + 16) = 0;
    sub_226098EE8();
    v110 = (*(v107 + 88))(v108, v109);
    if (v110 == *MEMORY[0x277CDCBC0])
    {
      v100 = *(v120 + 432);
      *(v120 + 616) = 0;
      sub_225F27078();
      MEMORY[0x22AA72090]();
      v101 = sub_225F1D3FC(v100, *(v120 + 568), *(v120 + 576), *(v120 + 584), 0);
      *(v120 + 344) = v101;
      *(v120 + 352) = v101;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786CB0, &unk_2260A0300);
      sub_225F3E110();
      sub_226099FE8();
      v102 = *(v120 + 360);
      if (v102)
      {
        v99 = *(v120 + 376);
        *(v120 + 368) = v102;
        swift_getObjectType();
        MEMORY[0x277D82BE0](v99);
        sub_2260998E8();
        sub_225F1E118();
        v98 = sub_226099C78();

        [v115 localSpeechRecognizer:v99 didRecognizeTokens:v98];
        MEMORY[0x277D82BD8](v98);
        swift_unknownObjectRelease();
      }

      goto LABEL_60;
    }

    if (v110 == *MEMORY[0x277CDCBD0])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      if ([v115 respondsToSelector_])
      {
        swift_unknownObjectRetain();
        v97 = swift_allocObject();
        *(v97 + 16) = v115;
        v8 = swift_allocObject();
        *(v8 + 16) = sub_226023744;
        *(v8 + 24) = v97;
        v142 = sub_2260236F0;
      }

      else
      {
        v142 = 0;
      }

      if (v142)
      {
        v94 = *(v120 + 440);
        v93 = *(v120 + 432);
        v96 = *(v120 + 376);
        MEMORY[0x277D82BE0](v96);
        v95 = sub_226015A54(v106, v93, v94, v96, v9);
        (v142)(v96);
        MEMORY[0x277D82BD8](v95);
        swift_unknownObjectRelease();
      }

      goto LABEL_23;
    }

    if (v110 == *MEMORY[0x277CDCBB0])
    {
      v86 = *(v120 + 440);
      v85 = *(v120 + 432);
      v74 = *(v120 + 384);
      v79 = *(v120 + 376);
      sub_225F27078();
      v75 = sub_225F291C0(v74);
      *(v120 + 328) = v75;
      MEMORY[0x22AA72090]();
      v81 = *(v120 + 520);
      v82 = *(v120 + 528);
      v83 = *(v120 + 536);
      v76 = (v79 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_processedAudioDuration);
      swift_beginAccess();
      v87 = *v76;
      swift_endAccess();
      v77 = (v79 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_speechProfileUsed);
      swift_beginAccess();
      v88 = *v77;
      swift_endAccess();
      v78 = (v79 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_modelVersion);
      swift_beginAccess();
      v89 = *v78;
      v91 = v78[1];
      sub_2260998E8();
      swift_endAccess();
      v80 = (v79 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_acousticModelVersion);
      swift_beginAccess();
      v84 = *v80;
      v90 = v80[1];
      sub_2260998E8();
      swift_endAccess();
      v92 = sub_225F1E204(v85, v86, v81, v82, v83, v88 & 1, v89, v91, v87, v84, v90, 1u, 0);

      *(v120 + 336) = v92;
      swift_getObjectType();
      swift_unknownObjectRetain();
      if ([v115 respondsToSelector_])
      {
        swift_unknownObjectRetain();
        v73 = swift_allocObject();
        *(v73 + 16) = v115;
        v10 = swift_allocObject();
        *(v10 + 16) = sub_2260236FC;
        *(v10 + 24) = v73;
        v141 = sub_226023738;
      }

      else
      {
        v141 = 0;
      }

      if (v141)
      {
        v72 = *(v120 + 376);
        MEMORY[0x277D82BE0](v72);
        MEMORY[0x277D82BE0](v92);
        MEMORY[0x277D82BE0](v75);
        v141(v72, v92, v75);
        MEMORY[0x277D82BD8](v75);
        MEMORY[0x277D82BD8](v92);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      MEMORY[0x277D82BD8](v92);
      MEMORY[0x277D82BD8](v75);
      goto LABEL_60;
    }

    if (v110 == *MEMORY[0x277CDCBB8] || v110 == *MEMORY[0x277CDCBA0])
    {
      v67 = *(v120 + 440);
      v66 = *(v120 + 432);
      v68 = *(v120 + 376);
      v69 = objc_opt_self();
      v70 = sub_226015A54(v106, v66, v67, v68, v11);
      v71 = [v69 hasRecognizedAnythingInAFSpeechPackage_];
      MEMORY[0x277D82BD8](v70);
      if (v71)
      {
        v65 = (*(v120 + 376) + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_messageAppBiomeRecord);
        swift_beginAccess();
        if (*v65)
        {

          swift_endAccess();
          sub_226030F64();
        }

        else
        {
          swift_endAccess();
        }

        v64 = (*(v120 + 376) + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_evaluationRecord);
        swift_beginAccess();
        if (*v64)
        {
          v62 = *v64;
          *(v120 + 488) = *v64;

          swift_endAccess();
          v12 = v62;
          v13 = sub_22601440C;

          return MEMORY[0x2822009F8](v13, v12, 0);
        }

        swift_endAccess();
        v63 = (*(v120 + 376) + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_hasRecognizedAnything);
        swift_beginAccess();
        *v63 = 1;
        swift_endAccess();
      }

      v58 = *(v120 + 480);
      v57 = *(v120 + 440);
      v56 = *(v120 + 432);
      v61 = *(v120 + 376);
      v59 = *(v120 + 472);
      swift_getObjectType();
      MEMORY[0x277D82BE0](v61);
      v60 = sub_226015A54(v58, v56, v57, v61, v14);
      [v59 localSpeechRecognizer:v61 didRecognizePackage:?];
      MEMORY[0x277D82BD8](v60);
      swift_unknownObjectRelease();
      goto LABEL_60;
    }

    if (v110 != *MEMORY[0x277CDCBA8])
    {
      if (v110 != *MEMORY[0x277CDCBC8])
      {
        (*(*(v120 + 400) + 8))(*(v120 + 408), *(v120 + 392));
LABEL_60:
        v25 = *(v120 + 440);
        v24 = *(v120 + 432);
        v26 = *(v120 + 416);
        v28 = *(v120 + 376);
        v23 = *(v120 + 424);

        v27 = *(v23 + 8);
        v27(v24, v26);
        v27(v25, v26);
        swift_unknownObjectRelease();
        sub_226014E80(v28);
        goto LABEL_61;
      }

      v41 = (*(v120 + 376) + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_evaluationRecord);
      swift_beginAccess();
      if (!*v41)
      {
        swift_endAccess();
        v40 = *(v120 + 472);
        swift_getObjectType();
        swift_unknownObjectRetain();
        if ([v40 respondsToSelector_])
        {
          v34 = *(v120 + 472);
          swift_unknownObjectRetain();
          v35 = swift_allocObject();
          *(v35 + 16) = v34;
          v19 = swift_allocObject();
          *(v19 + 16) = sub_2260236C4;
          *(v19 + 24) = v35;
          v140 = sub_2260236F0;
        }

        else
        {
          v140 = 0;
        }

        if (v140)
        {
          v31 = *(v120 + 480);
          v30 = *(v120 + 440);
          v29 = *(v120 + 432);
          v33 = *(v120 + 376);
          MEMORY[0x277D82BE0](v33);
          v32 = sub_226015A54(v31, v29, v30, v33, v20);
          (v140)(v33);
          MEMORY[0x277D82BD8](v32);
          swift_unknownObjectRelease();
        }

LABEL_23:
        swift_unknownObjectRelease();
        goto LABEL_60;
      }

      v37 = *(v120 + 440);
      v36 = *(v120 + 432);
      v38 = *(v120 + 376);
      v39 = *v41;
      *(v120 + 504) = *v41;

      swift_endAccess();
      v18 = sub_226015A54(v106, v36, v37, v38, v17);
      v12 = v39;
      *(v120 + 512) = v18;
      v13 = sub_226014A04;

      return MEMORY[0x2822009F8](v13, v12, 0);
    }

    v51 = *(v120 + 440);
    v50 = *(v120 + 432);
    v52 = *(v120 + 376);
    v53 = objc_opt_self();
    v54 = sub_226015A54(v106, v50, v51, v52, v15);
    v55 = [v53 hasRecognizedAnythingInAFSpeechPackage_];
    MEMORY[0x277D82BD8](v54);
    if (v55)
    {
      v49 = (*(v120 + 376) + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_messageAppBiomeRecord);
      swift_beginAccess();
      if (*v49)
      {

        swift_endAccess();
        sub_226030F64();
      }

      else
      {
        swift_endAccess();
      }

      v48 = (*(v120 + 376) + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_evaluationRecord);
      swift_beginAccess();
      if (*v48)
      {
        v46 = *v48;
        *(v120 + 496) = *v48;

        swift_endAccess();
        v12 = v46;
        v13 = sub_2260146F4;

        return MEMORY[0x2822009F8](v13, v12, 0);
      }

      swift_endAccess();
      v47 = (*(v120 + 376) + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_hasRecognizedAnything);
      swift_beginAccess();
      *v47 = 1;
      swift_endAccess();
    }

    v42 = *(v120 + 432);
    v44 = *(v120 + 376);
    v43 = *(v120 + 472);
    sub_225F27078();
    v45 = sub_225F265F4(v42, v16);
    *(v120 + 320) = v45;
    swift_getObjectType();
    MEMORY[0x277D82BE0](v44);
    MEMORY[0x277D82BE0](v45);
    [v43 localSpeechRecognizer:v44 didRecognizePackage:v45];
    MEMORY[0x277D82BD8](v45);
    swift_unknownObjectRelease();
    MEMORY[0x277D82BD8](v45);
    goto LABEL_60;
  }

  sub_226014E80(*(v120 + 376));
LABEL_61:

  v21 = *(*(v120 + 280) + 8);

  return v21();
}

uint64_t sub_22601440C()
{
  *(v0 + 280) = v0;
  sub_225F32504();

  return MEMORY[0x2822009F8](sub_22601448C, 0, 0);
}

uint64_t sub_22601448C()
{
  v0[35] = v0;
  v4 = (v0[47] + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_hasRecognizedAnything);
  swift_beginAccess();
  *v4 = 1;
  swift_endAccess();
  v7 = v0[60];
  v8 = v0[59];
  v6 = v0[55];
  v5 = v0[54];
  v10 = v0[47];
  swift_getObjectType();
  MEMORY[0x277D82BE0](v10);
  v9 = sub_226015A54(v7, v5, v6, v10, v1);
  [v8 localSpeechRecognizer:v10 didRecognizePackage:?];
  MEMORY[0x277D82BD8](v9);
  swift_unknownObjectRelease();
  v13 = v0[55];
  v12 = v0[54];
  v11 = v0[53];
  v14 = v0[52];
  v16 = v0[47];

  v15 = *(v11 + 8);
  v15(v12, v14);
  v15(v13, v14);
  swift_unknownObjectRelease();
  sub_226014E80(v16);

  v2 = *(v0[35] + 8);

  return v2();
}

uint64_t sub_2260146F4()
{
  *(v0 + 280) = v0;
  sub_225F32504();

  return MEMORY[0x2822009F8](sub_226014774, 0, 0);
}

uint64_t sub_226014774()
{
  v0[35] = v0;
  v4 = (v0[47] + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_hasRecognizedAnything);
  swift_beginAccess();
  *v4 = 1;
  swift_endAccess();
  v6 = v0[59];
  v5 = v0[54];
  v7 = v0[47];
  sub_225F27078();
  v8 = sub_225F265F4(v5, v1);
  v0[40] = v8;
  swift_getObjectType();
  MEMORY[0x277D82BE0](v7);
  MEMORY[0x277D82BE0](v8);
  [v6 localSpeechRecognizer:v7 didRecognizePackage:v8];
  MEMORY[0x277D82BD8](v8);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v8);
  v11 = v0[55];
  v10 = v0[54];
  v9 = v0[53];
  v12 = v0[52];
  v14 = v0[47];

  v13 = *(v9 + 8);
  v13(v10, v12);
  v13(v11, v12);
  swift_unknownObjectRelease();
  sub_226014E80(v14);

  v2 = *(v0[35] + 8);

  return v2();
}

uint64_t sub_226014A04()
{
  v1 = *(v0 + 512);
  v3 = v1;
  *(v0 + 280) = v0;
  sub_225F325D4(v1);
  MEMORY[0x277D82BD8](v3);

  return MEMORY[0x2822009F8](sub_226014A9C, 0, 0);
}

uint64_t sub_226014A9C()
{
  *(v0 + 280) = v0;
  v19 = *(v0 + 472);
  swift_getObjectType();
  swift_unknownObjectRetain();
  if ([v19 respondsToSelector_])
  {
    v16 = v18[59];
    swift_unknownObjectRetain();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    v1 = swift_allocObject();
    *(v1 + 16) = sub_2260236C4;
    *(v1 + 24) = v17;
    v20 = sub_2260236F0;
  }

  else
  {
    v20 = 0;
  }

  if (v20)
  {
    v13 = v18[60];
    v12 = v18[55];
    v11 = v18[54];
    v15 = v18[47];
    MEMORY[0x277D82BE0](v15);
    v14 = sub_226015A54(v13, v11, v12, v15, v2);
    (v20)(v15);
    MEMORY[0x277D82BD8](v14);
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  v7 = v18[55];
  v6 = v18[54];
  v8 = v18[52];
  v10 = v18[47];
  v5 = v18[53];

  v9 = *(v5 + 8);
  v9(v6, v8);
  v9(v7, v8);
  swift_unknownObjectRelease();
  sub_226014E80(v10);

  v3 = *(v18[35] + 8);

  return v3();
}

uint64_t sub_226014E80(uint64_t a1)
{
  v51 = a1;
  v52 = sub_225F3E198;
  v54 = sub_225F3E1C8;
  v56 = sub_226012024;
  v57 = sub_225EF7B84;
  v61 = sub_22601D4EC;
  v64 = sub_225F2D374;
  v66 = sub_225EF7434;
  v68 = sub_225EF7434;
  v70 = sub_225F3E358;
  v72 = sub_225EF7434;
  v74 = sub_225EF7434;
  v76 = sub_225EF7B90;
  v78 = sub_225EF7434;
  v80 = sub_225EF7434;
  v83 = sub_225EF71D0;
  v94 = 0;
  v45 = 0;
  v50 = sub_226098C58();
  v48 = *(v50 - 8);
  v49 = v50 - 8;
  v46 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v51);
  v1 = v35 - v46;
  v47 = v35 - v46;
  v94 = v2;
  v3 = sub_225F7E9BC();
  (*(v48 + 16))(v1, v3, v50);
  MEMORY[0x277D82BE0](v51);
  v63 = 7;
  v53 = swift_allocObject();
  *(v53 + 16) = v51;
  v87 = sub_226098C48();
  v88 = sub_22609A0A8();
  v59 = 17;
  v67 = swift_allocObject();
  *(v67 + 16) = 64;
  v69 = swift_allocObject();
  v60 = 8;
  *(v69 + 16) = 8;
  v62 = 32;
  v4 = swift_allocObject();
  v5 = v53;
  v55 = v4;
  *(v4 + 16) = v52;
  *(v4 + 24) = v5;
  v6 = swift_allocObject();
  v7 = v55;
  v71 = v6;
  *(v6 + 16) = v54;
  *(v6 + 24) = v7;
  v73 = swift_allocObject();
  *(v73 + 16) = 32;
  v75 = swift_allocObject();
  *(v75 + 16) = v60;
  v8 = swift_allocObject();
  v58 = v8;
  *(v8 + 16) = v56;
  *(v8 + 24) = 0;
  v9 = swift_allocObject();
  v10 = v58;
  v77 = v9;
  *(v9 + 16) = v57;
  *(v9 + 24) = v10;
  v79 = swift_allocObject();
  *(v79 + 16) = 0;
  v81 = swift_allocObject();
  *(v81 + 16) = v60;
  v11 = swift_allocObject();
  v65 = v11;
  *(v11 + 16) = v61;
  *(v11 + 24) = 0;
  v12 = swift_allocObject();
  v13 = v65;
  v84 = v12;
  *(v12 + 16) = v64;
  *(v12 + 24) = v13;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v82 = sub_22609A4F8();
  v85 = v14;

  v15 = v67;
  v16 = v85;
  *v85 = v66;
  v16[1] = v15;

  v17 = v69;
  v18 = v85;
  v85[2] = v68;
  v18[3] = v17;

  v19 = v71;
  v20 = v85;
  v85[4] = v70;
  v20[5] = v19;

  v21 = v73;
  v22 = v85;
  v85[6] = v72;
  v22[7] = v21;

  v23 = v75;
  v24 = v85;
  v85[8] = v74;
  v24[9] = v23;

  v25 = v77;
  v26 = v85;
  v85[10] = v76;
  v26[11] = v25;

  v27 = v79;
  v28 = v85;
  v85[12] = v78;
  v28[13] = v27;

  v29 = v81;
  v30 = v85;
  v85[14] = v80;
  v30[15] = v29;

  v31 = v84;
  v32 = v85;
  v85[16] = v83;
  v32[17] = v31;
  sub_225EF5418();

  if (os_log_type_enabled(v87, v88))
  {
    v33 = v45;
    v38 = sub_22609A188();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v37 = 1;
    v39 = sub_225EF5468(1, v36, v36);
    v40 = sub_225EF5468(v37, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v41 = &v93;
    v93 = v38;
    v42 = &v92;
    v92 = v39;
    v43 = &v91;
    v91 = v40;
    sub_225EF54BC(2, &v93);
    sub_225EF54BC(3, v41);
    v89 = v66;
    v90 = v67;
    sub_225EF73E8(&v89, v41, v42, v43);
    v44 = v33;
    if (v33)
    {

      __break(1u);
    }

    else
    {
      v89 = v68;
      v90 = v69;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[7] = 0;
      v89 = v70;
      v90 = v71;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[6] = 0;
      v89 = v72;
      v90 = v73;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[5] = 0;
      v89 = v74;
      v90 = v75;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[4] = 0;
      v89 = v76;
      v90 = v77;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[3] = 0;
      v89 = v78;
      v90 = v79;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[2] = 0;
      v89 = v80;
      v90 = v81;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[1] = 0;
      v89 = v83;
      v90 = v84;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      _os_log_impl(&dword_225EEB000, v87, v88, "%@ %s:%ld queue task complete", v38, 0x20u);
      v35[0] = 1;
      sub_225EF7AF4(v39, 1, v36);
      sub_225EF7AF4(v40, v35[0], MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v87);
  return (*(v48 + 8))(v47, v50);
}

void *sub_226015A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v47 = a1;
  v46 = a2;
  v44 = a3;
  v45 = a4;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v48 = sub_2260990C8();
  v49 = *(v48 - 8);
  v50 = v48 - 8;
  v51 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v47);
  v52 = v13 - v51;
  v53 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v54 = v13 - v53;
  v68 = v7 + 16;
  v67 = v8;
  v66 = v9;
  v65 = v10;
  v55 = *(v7 + 16);
  MEMORY[0x277D82BE0](v55);
  if (v55)
  {
    v43 = v55;
    return v55;
  }

  else
  {
    v19 = sub_225F27078();
    MEMORY[0x22AA72090](v69);
    v20 = v69[0];
    v21 = v69[1];
    v22 = v69[2];
    v23 = (v45 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_processedAudioDuration);
    v24 = &v64;
    v33 = 32;
    v34 = 0;
    swift_beginAccess();
    v25 = *v23;
    swift_endAccess();
    v26 = (v45 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_speechProfileUsed);
    v27 = &v63;
    swift_beginAccess();
    v28 = *v26;
    swift_endAccess();
    v29 = (v45 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_modelVersion);
    v32 = &v62;
    swift_beginAccess();
    v30 = *v29;
    v31 = v29[1];
    sub_2260998E8();
    swift_endAccess();
    v35 = (v45 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_acousticModelVersion);
    v38 = &v61;
    swift_beginAccess();
    v36 = *v35;
    v37 = v35[1];
    sub_2260998E8();
    swift_endAccess();
    sub_226098EE8();
    (*(v49 + 104))(v52, *MEMORY[0x277CDCBC8], v48);
    v41 = sub_2260990B8();
    v40 = *(v49 + 8);
    v39 = v49 + 8;
    v40(v52, v48);
    v40(v54, v48);
    if (v41)
    {
      v18 = 0;
    }

    else
    {
      v15 = (v45 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_phoneticEmbedder);
      v16 = &v60;
      swift_beginAccess();
      v17 = *v15;

      swift_endAccess();
      v18 = v17;
    }

    v13[1] = v18;
    v57 = v20;
    v58 = v21;
    v59 = v22;
    v14 = sub_225F1E204(v46, v44, v20, v21, v22, v28 & 1, v30, v31, v25, v36, v37, 0, v18);

    MEMORY[0x277D82BE0](v14);
    v13[2] = &v56;
    swift_beginAccess();
    v11 = *(v47 + 16);
    *(v47 + 16) = v14;
    MEMORY[0x277D82BD8](v11);
    swift_endAccess();
    return v14;
  }
}

uint64_t sub_2260160D0(uint64_t a1, uint64_t a2)
{
  MEMORY[0x277D82BE0](a1);
  swift_beginAccess();
  v2 = *(a2 + 16);
  *(a2 + 16) = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  return MEMORY[0x277D82BD8](a1);
}

uint64_t sub_2260161B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a3;
  v3[10] = a2;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[5] = 0;
  v3[24] = 0;
  v3[25] = 0;
  v3[26] = 0;
  v3[6] = 0;
  v3[7] = 0;
  v3[8] = 0;
  v3[3] = a2;
  v3[4] = a3;
  return MEMORY[0x2822009F8](sub_22601622C, 0, 0);
}

uint64_t sub_22601622C()
{
  v1 = *(v0 + 80);
  *(v0 + 16) = v0;
  v24 = [v1 delegate];
  if (v24)
  {
    *(v23 + 40) = v24;
    sub_226099308();
    v25 = sub_22609A0C8();
    *(v23 + 192) = v25;
    *(v23 + 200) = v2;
    *(v23 + 204) = v3;
    *(v23 + 208) = v4;
    *(v23 + 48) = v25;
    sub_226099308();
    sub_22609A068();
    sub_22609A0F8();
    *(v23 + 56) = v5;
    v22 = v5 * *sub_225F7F6FC();
    if (((*&v22 >> 52) & 0x7FFLL) == 0x7FF)
    {
      return sub_22609A3B8("Fatal error", 11, 2, "Double value cannot be converted to Int because it is either infinite or NaN", 76, 2, "Swift/IntegerTypes.swift", 24, 2, 8835, 0);
    }

    if (v22 <= -9.22337204e18)
    {
      return sub_22609A3B8("Fatal error", 11, 2, "Double value cannot be converted to Int because the result would be less than Int.min", 85, 2, "Swift/IntegerTypes.swift", 24, 2, 8838, 0);
    }

    if (v22 >= 9.22337204e18)
    {
      return sub_22609A3B8("Fatal error", 11, 2, "Double value cannot be converted to Int because the result would be greater than Int.max", 88, 2, "Swift/IntegerTypes.swift", 24, 2, 8841, 0);
    }

    *(v23 + 64) = v22;
    swift_getObjectType();
    swift_unknownObjectRetain();
    if ([v24 respondsToSelector_])
    {
      swift_unknownObjectRetain();
      v21 = swift_allocObject();
      *(v21 + 16) = v24;
      v7 = swift_allocObject();
      *(v7 + 16) = sub_2260232EC;
      *(v7 + 24) = v21;
      v26 = sub_22602333C;
    }

    else
    {
      v26 = 0;
    }

    if (v26)
    {
      v14 = *(v23 + 80);
      MEMORY[0x277D82BE0](v14);
      v15 = sub_226099318();
      sub_2260992D8();
      v16 = v8;
      *(v23 + 72) = sub_2260992C8();
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786478, &unk_2260A0DF0);
      v18 = sub_225F27014();
      v9 = sub_226023264();
      v20 = sub_225F15970(sub_225F27F18, 0, v17, v18, MEMORY[0x277D84A98], v9, MEMORY[0x277D84AC0], v19);
      sub_225EFE6E8((v23 + 72));
      sub_2260992E8();
      v13 = v10;
      sub_2260992F8();
      v26(v14, v15, v25, v20, v22, v16, v13, v11);

      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  v12 = *(*(v23 + 16) + 8);

  return v12();
}

uint64_t sub_2260169E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, uint64_t a8, void (*a9)(uint64_t, uint64_t, uint64_t, double, double, double))
{
  sub_2260998E8();
  if (a4)
  {
    sub_225F27014();
    v10 = sub_226099C78();

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  a9(a1, a2, a3, a5, a6, a7);
  return MEMORY[0x277D82BD8](v11);
}

uint64_t sub_226016B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 552) = a3;
  *(v3 + 544) = a2;
  *(v3 + 408) = v3;
  *(v3 + 416) = 0;
  *(v3 + 424) = 0;
  *(v3 + 448) = 0;
  *(v3 + 312) = 0;
  *(v3 + 320) = 0;
  *(v3 + 328) = 0;
  *(v3 + 336) = 0;
  *(v3 + 344) = 0;
  *(v3 + 352) = 0;
  *(v3 + 824) = 0;
  *(v3 + 456) = 0;
  *(v3 + 480) = 0;
  *(v3 + 536) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A50, &qword_2260A0A90);
  *(v3 + 560) = swift_task_alloc();
  v4 = sub_226098DD8();
  *(v3 + 568) = v4;
  *(v3 + 576) = *(v4 - 8);
  *(v3 + 584) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869A8, &unk_2260A0930);
  *(v3 + 592) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786C60, &qword_2260A0DD8);
  *(v3 + 600) = swift_task_alloc();
  *(v3 + 608) = swift_task_alloc();
  *(v3 + 616) = swift_task_alloc();
  v5 = sub_226098C58();
  *(v3 + 624) = v5;
  *(v3 + 632) = *(v5 - 8);
  *(v3 + 640) = swift_task_alloc();
  *(v3 + 648) = swift_task_alloc();
  *(v3 + 656) = swift_task_alloc();
  *(v3 + 416) = a2;
  *(v3 + 424) = a3;

  return MEMORY[0x2822009F8](sub_226016DD4, 0, 0);
}

uint64_t sub_226016DD4()
{
  v69 = v0;
  v1 = v0[82];
  v39 = v0[79];
  v40 = v0[78];
  v42 = v0[68];
  v0[51] = v0;
  v2 = sub_225F7E9BC();
  v41 = *(v39 + 16);
  v0[83] = v41;
  v0[84] = (v39 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v41(v1, v2, v40);
  MEMORY[0x277D82BE0](v42);
  v43 = swift_allocObject();
  *(v43 + 16) = v42;
  v57 = sub_226098C48();
  v58 = sub_22609A0A8();
  v47 = swift_allocObject();
  *(v47 + 16) = 64;
  v48 = swift_allocObject();
  *(v48 + 16) = 8;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_225F3E198;
  *(v44 + 24) = v43;
  v49 = swift_allocObject();
  *(v49 + 16) = sub_225F3E1C8;
  *(v49 + 24) = v44;
  v50 = swift_allocObject();
  *(v50 + 16) = 32;
  v51 = swift_allocObject();
  *(v51 + 16) = 8;
  v45 = swift_allocObject();
  *(v45 + 16) = sub_226016ADC;
  *(v45 + 24) = 0;
  v52 = swift_allocObject();
  *(v52 + 16) = sub_225EF7B84;
  *(v52 + 24) = v45;
  v53 = swift_allocObject();
  *(v53 + 16) = 0;
  v54 = swift_allocObject();
  *(v54 + 16) = 8;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_22601C414;
  *(v46 + 24) = 0;
  v55 = swift_allocObject();
  *(v55 + 16) = sub_225F2D374;
  *(v55 + 24) = v46;
  v0[85] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  sub_22609A4F8();
  v56 = v3;

  *v56 = sub_225EF7434;
  v56[1] = v47;

  v56[2] = sub_225EF7434;
  v56[3] = v48;

  v56[4] = sub_225F3E358;
  v56[5] = v49;

  v56[6] = sub_225EF7434;
  v56[7] = v50;

  v56[8] = sub_225EF7434;
  v56[9] = v51;

  v56[10] = sub_225EF7B90;
  v56[11] = v52;

  v56[12] = sub_225EF7434;
  v56[13] = v53;

  v56[14] = sub_225EF7434;
  v56[15] = v54;

  v56[16] = sub_225EF71D0;
  v56[17] = v55;
  sub_225EF5418();

  if (os_log_type_enabled(v57, v58))
  {
    buf = sub_22609A188();
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v36 = sub_225EF5468(1, v34, v34);
    v37 = sub_225EF5468(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v64 = buf;
    v65 = v36;
    v66 = v37;
    sub_225EF54BC(2, &v64);
    sub_225EF54BC(3, &v64);
    v67 = sub_225EF7434;
    v68 = v47;
    sub_225EF73E8(&v67, &v64, &v65, &v66);
    v67 = sub_225EF7434;
    v68 = v48;
    sub_225EF73E8(&v67, &v64, &v65, &v66);
    v67 = sub_225F3E358;
    v68 = v49;
    sub_225EF73E8(&v67, &v64, &v65, &v66);
    v67 = sub_225EF7434;
    v68 = v50;
    sub_225EF73E8(&v67, &v64, &v65, &v66);
    v67 = sub_225EF7434;
    v68 = v51;
    sub_225EF73E8(&v67, &v64, &v65, &v66);
    v67 = sub_225EF7B90;
    v68 = v52;
    sub_225EF73E8(&v67, &v64, &v65, &v66);
    v67 = sub_225EF7434;
    v68 = v53;
    sub_225EF73E8(&v67, &v64, &v65, &v66);
    v67 = sub_225EF7434;
    v68 = v54;
    sub_225EF73E8(&v67, &v64, &v65, &v66);
    v67 = sub_225EF71D0;
    v68 = v55;
    sub_225EF73E8(&v67, &v64, &v65, &v66);
    _os_log_impl(&dword_225EEB000, v57, v58, "%@ %s:%ld queue task dequeued", buf, 0x20u);
    sub_225EF7AF4(v36, 1, v34);
    sub_225EF7AF4(v37, 1, MEMORY[0x277D84F70] + 8);
    sub_22609A168();
  }

  else
  {
  }

  v30 = v38[82];
  v31 = v38[78];
  v33 = v38[69];
  v29 = v38[79];
  MEMORY[0x277D82BD8](v57);
  v32 = *(v29 + 8);
  v38[86] = v32;
  v38[87] = (v29 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v32(v30, v31);
  v4 = v33;
  if (v33)
  {
    v19 = v38[69];
    v5 = v38[81];
    v18 = v38[78];
    v38[67] = v19;
    v6 = sub_225F7E9BC();
    v41(v5, v6, v18);
    v7 = v19;
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    sub_225F3EAE8();

    oslog = sub_226098C48();
    v28 = sub_22609A098();
    v23 = swift_allocObject();
    *(v23 + 16) = 64;
    v24 = swift_allocObject();
    *(v24 + 16) = 8;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_225F3EA68;
    *(v21 + 24) = v20;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_225F3EA70;
    *(v22 + 24) = v21;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_225F3E1C8;
    *(v25 + 24) = v22;
    sub_22609A4F8();
    v26 = v8;

    *v26 = sub_225EF7434;
    v26[1] = v23;

    v26[2] = sub_225EF7434;
    v26[3] = v24;

    v26[4] = sub_225F3E358;
    v26[5] = v25;
    sub_225EF5418();

    if (os_log_type_enabled(oslog, v28))
    {
      v15 = sub_22609A188();
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v16 = sub_225EF5468(1, v14, v14);
      v17 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v59 = v15;
      v60 = v16;
      v61 = v17;
      sub_225EF54BC(2, &v59);
      sub_225EF54BC(1, &v59);
      v62 = sub_225EF7434;
      v63 = v23;
      sub_225EF73E8(&v62, &v59, &v60, &v61);
      v62 = sub_225EF7434;
      v63 = v24;
      sub_225EF73E8(&v62, &v59, &v60, &v61);
      v62 = sub_225F3E358;
      v63 = v25;
      sub_225EF73E8(&v62, &v59, &v60, &v61);
      _os_log_impl(&dword_225EEB000, oslog, v28, "Analyzer results produced error: %@", v15, 0xCu);
      sub_225EF7AF4(v16, 1, v14);
      sub_225EF7AF4(v17, 0, MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }

    else
    {
    }

    v12 = v38[81];
    v13 = v38[78];
    MEMORY[0x277D82BD8](oslog);
    v32(v12, v13);
  }

  v38[88] = 0;
  sub_225FFF164();
  v9 = swift_task_alloc();
  v38[89] = v9;
  *v9 = v38[51];
  v9[1] = sub_226017F90;
  v10 = v38[69];

  return sub_225FFEC88(v10);
}

uint64_t sub_226017F90()
{
  *(*v0 + 408) = *v0;

  return MEMORY[0x2822009F8](sub_2260180A8, 0, 0);
}

uint64_t sub_2260180A8()
{
  v104 = *(v0 + 544);
  *(v0 + 408) = v0;
  [objc_opt_self() noteSuccessfulUse];
  v105 = (v104 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_hasRecognizedAnything);
  swift_beginAccess();
  v106 = *v105;
  swift_endAccess();
  if (v106)
  {
    *(v103 + 432) = 0;
    v90 = *(v103 + 704);
    v91 = 0;
  }

  else
  {
    v99 = *(v103 + 664);
    v1 = *(v103 + 640);
    v98 = *(v103 + 624);
    v2 = sub_225F7E9BC();
    v99(v1, v2, v98);
    v101 = sub_226098C48();
    v100 = sub_22609A078();
    v102 = sub_22609A4F8();
    if (os_log_type_enabled(v101, v100))
    {
      v3 = *(v103 + 704);
      buf = sub_22609A188();
      v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v95 = sub_225EF5468(0, v93, v93);
      v96 = sub_225EF5468(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v103 + 504) = buf;
      *(v103 + 512) = v95;
      *(v103 + 520) = v96;
      sub_225EF54BC(0, (v103 + 504));
      sub_225EF54BC(0, (v103 + 504));
      *(v103 + 528) = v102;
      v97 = swift_task_alloc();
      v97[2] = v103 + 504;
      v97[3] = v103 + 512;
      v97[4] = v103 + 520;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();
      if (v3)
      {
      }

      _os_log_impl(&dword_225EEB000, v101, v100, "No speech recognized, synthesizing local speech error", buf, 2u);
      sub_225EF7AF4(v95, 0, v93);
      sub_225EF7AF4(v96, 0, MEMORY[0x277D84F70] + 8);
      sub_22609A168();

      v92 = 0;
    }

    else
    {

      v92 = *(v103 + 704);
    }

    v88 = *(v103 + 688);
    v86 = *(v103 + 640);
    v87 = *(v103 + 624);
    MEMORY[0x277D82BD8](v101);
    v88(v86, v87);
    type metadata accessor for AFError(0);
    *(v103 + 496) = 1110;
    sub_225F1A478();
    sub_22601CFF4();
    sub_2260988C8();
    v89 = *(v103 + 488);
    MEMORY[0x277D82BE0](v89);
    v5 = v89;
    *(v103 + 432) = v89;
    MEMORY[0x277D82BD8](v89);
    v90 = v92;
    v91 = v89;
  }

  *(v103 + 440) = sub_225FCEF44(*(v103 + 552));
  if (*(v103 + 440))
  {
    v107 = *(v103 + 440);
  }

  else
  {
    v6 = v91;
    v7 = v91;
    v107 = v91;

    if (*(v103 + 440))
    {
      sub_226022DA8((v103 + 440));
    }
  }

  v84 = *(v103 + 544);

  *(v103 + 720) = v107;
  *(v103 + 448) = v107;
  v85 = (v84 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_speechAnalyzer);
  swift_beginAccess();
  if (*v85)
  {
    v81 = *(v103 + 592);

    swift_endAccess();
    sub_226098CD8();

    v82 = sub_226099288();
    v83 = *(v82 - 8);
    if ((*(v83 + 48))(v81, 1) != 1)
    {
      v80 = *(v103 + 616);
      v79 = *(v103 + 592);
      sub_226099268();
      (*(v83 + 8))(v79, v82);
      v8 = sub_226099258();
      (*(*(v8 - 8) + 56))(v80, 0, 1);
      goto LABEL_19;
    }

    sub_226023074(*(v103 + 592));
  }

  else
  {
    swift_endAccess();
  }

  v28 = *(v103 + 616);
  v26 = sub_226099258();
  (*(*(v26 - 8) + 56))(v28, 1);
LABEL_19:
  v78 = (*(v103 + 544) + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_transcriber);
  swift_beginAccess();
  if (*v78)
  {

    swift_endAccess();
    v72 = sub_226098AB8();
    v71 = *(v72 - 8);
    v73 = swift_task_alloc();
    sub_226099048();

    v74 = sub_226098A98();
    v75 = v9;
    (*(v71 + 8))(v73, v72);

    v76 = v74;
    v77 = v75;
  }

  else
  {
    swift_endAccess();
    v76 = 0;
    v77 = 0;
  }

  *(v103 + 736) = v77;
  *(v103 + 728) = v76;
  v10 = *(v103 + 544);
  *(v103 + 312) = v76;
  *(v103 + 320) = v77;
  v70 = (v10 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_speechAnalyzer);
  swift_beginAccess();
  if (*v70)
  {
    v64 = *(v103 + 584);
    v65 = *(v103 + 568);
    v63 = *(v103 + 576);

    swift_endAccess();
    sub_226098C98();

    v66 = sub_226098DC8();
    v67 = v11;
    (*(v63 + 8))(v64, v65);
    v68 = v66;
    v69 = v67;
  }

  else
  {
    swift_endAccess();
    v68 = 0;
    v69 = 0;
  }

  *(v103 + 752) = v69;
  *(v103 + 744) = v68;
  v60 = *(v103 + 544);
  *(v103 + 328) = v68;
  *(v103 + 336) = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786978, &qword_2260A08D0);
  v61 = swift_task_alloc();
  *(v103 + 760) = v61;
  v62 = (v60 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_transcriber);
  swift_beginAccess();
  if (*v62)
  {
    v57 = *(v103 + 560);

    swift_endAccess();
    sub_226098E78();

    v58 = sub_226098E68();
    v59 = *(v58 - 8);
    if ((*(v59 + 48))(v57, 1) != 1)
    {
      v56 = *(v103 + 560);
      sub_226098E48();
      (*(v59 + 8))(v56, v58);
      goto LABEL_30;
    }

    sub_226022FCC(*(v103 + 560));
  }

  else
  {
    swift_endAccess();
  }

  v25 = sub_226098948();
  (*(*(v25 - 8) + 56))(v61, 1);
LABEL_30:
  v55 = [*(v103 + 544) delegate];
  *(v103 + 768) = v55;
  if (v55)
  {
    *(v103 + 456) = v55;
    v12 = swift_task_alloc();
    *(v103 + 776) = v12;
    *v12 = *(v103 + 408);
    v12[1] = sub_226019AC8;

    return sub_225FFF3B4();
  }

  v52 = *(v103 + 544);
  v50 = (v52 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_speechAnalyzer);
  swift_beginAccess();
  *v50 = 0;

  swift_endAccess();
  v51 = (v52 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_transcriber);
  swift_beginAccess();
  *v51 = 0;

  swift_endAccess();
  v54 = *sub_225F827A0();

  MEMORY[0x277D82BE0](v52);
  v53 = swift_task_alloc();
  *(v53 + 16) = v52;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786930, &qword_2260A0890);
  sub_225F8798C(sub_226022DD4, v53, v54, v13, MEMORY[0x277D84F78] + 8);
  if (v90)
  {
    v27 = *(v103 + 544);

    return MEMORY[0x277D82BD8](v27);
  }

  v48 = *(v103 + 544);

  MEMORY[0x277D82BD8](v48);

  v49 = (v48 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_didFinish);
  swift_beginAccess();
  if (*v49)
  {
    v47 = *v49;

    v14 = swift_endAccess();
    v47(v14);
  }

  else
  {
    swift_endAccess();
  }

  v46 = *(v103 + 736);
  v45 = (*(v103 + 544) + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_didFinish);
  swift_beginAccess();
  v15 = *v45;
  *v45 = 0;
  v45[1] = 0;
  sub_2260215F0(v15);
  swift_endAccess();
  sub_2260998E8();
  if (!v46)
  {
    goto LABEL_62;
  }

  v16 = *(v103 + 736);
  v17 = *(v103 + 752);
  v18 = *(v103 + 744);
  *(v103 + 344) = *(v103 + 728);
  *(v103 + 352) = v16;
  *(v103 + 360) = v18;
  *(v103 + 368) = v17;
  MEMORY[0x277D82BE0](@"Dictation");
  v44 = sub_226099A08();
  v43 = v19;
  sub_2260998E8();
  sub_225F4C5E0((v103 + 360), (v103 + 16));
  *(v103 + 32) = v44;
  *(v103 + 40) = v43;
  if (*(v103 + 24))
  {
    sub_225F4C5E0((v103 + 16), (v103 + 376));
    if (*(v103 + 40))
    {
      *(v103 + 392) = *(v103 + 32);
      v41 = MEMORY[0x22AA72BD0](*(v103 + 376), *(v103 + 384), *(v103 + 392), *(v103 + 400));
      sub_225EFE6BC(v103 + 392);
      sub_225EFE6BC(v103 + 376);
      sub_225EFE6BC(v103 + 16);
      v42 = v41;
      goto LABEL_47;
    }

    sub_225EFE6BC(v103 + 376);
    goto LABEL_49;
  }

  if (*(v103 + 40))
  {
LABEL_49:
    sub_225F4C1C0(v103 + 16);
    v42 = 0;
    goto LABEL_47;
  }

  sub_225EFE6BC(v103 + 16);
  v42 = 1;
LABEL_47:

  MEMORY[0x277D82BD8](@"Dictation");
  if (v42)
  {
    goto LABEL_61;
  }

  v38 = *(v103 + 608);
  sub_226022EA4(*(v103 + 616), v38);
  v39 = sub_226099258();
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(v38, 1))
  {
    goto LABEL_60;
  }

  v36 = *(v103 + 600);
  sub_226022EA4(*(v103 + 608), v36);
  v37 = (*(v40 + 88))(v36, v39);
  if (v37 != *MEMORY[0x277CDCC18] && v37 != *MEMORY[0x277CDCC28])
  {
    (*(v40 + 8))(*(v103 + 600), v39);
LABEL_60:
    sub_226022DFC(*(v103 + 608));
    goto LABEL_61;
  }

  sub_226022DFC(*(v103 + 608));
  v35 = (*(v103 + 544) + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_geoLMRegionIDUpdateTask);
  swift_beginAccess();
  if (!*v35)
  {
    swift_endAccess();
LABEL_61:

LABEL_62:
    v30 = *(v103 + 760);
    v31 = *(v103 + 720);
    v33 = *(v103 + 616);
    v32 = *(v103 + 544);
    v29 = (v32 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_geoLMRegionIDUpdateTask);
    swift_beginAccess();
    *v29 = 0;

    swift_endAccess();
    sub_22601F334(v30);

    sub_226022DFC(v33);

    sub_226022DA8((v103 + 432));
    sub_22601C420(v32);

    v24 = *(*(v103 + 408) + 8);

    return v24();
  }

  v34 = *v35;
  *(v103 + 800) = *v35;

  swift_endAccess();
  v20 = swift_task_alloc();
  *(v103 + 808) = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786300, &unk_2260A0480);
  *v20 = *(v103 + 408);
  v20[1] = sub_22601AC18;
  v22 = MEMORY[0x277D839B0];
  v23 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v103 + 825, v34, v22, v21, v23);
}

uint64_t sub_226019AC8(uint64_t a1)
{
  v5 = *v2;
  v5[51] = *v2;
  v5[98] = a1;
  v5[99] = v1;

  if (v1)
  {
    v3 = sub_22601B0F0;
  }

  else
  {
    v3 = sub_226019C3C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226019C3C()
{
  v1 = v0[98];
  v0[51] = v0;
  v50 = v0[99];
  v0[59] = v1;
  if (v0[59])
  {
    *(v49 + 464) = *(v49 + 472);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786BA8, &qword_2260A0C80);
    sub_22609A4F8();
    sub_225F2D6D0();
    *(v49 + 464) = sub_2260998A8();
    if (*(v49 + 472))
    {
      sub_225EFE6E8((v49 + 472));
    }
  }

  v48 = *(v49 + 720);
  v46 = *(v49 + 544);
  *(v49 + 480) = *(v49 + 464);
  swift_getObjectType();
  MEMORY[0x277D82BE0](v46);
  sub_2260998E8();
  sub_225F2D6D0();
  sub_22609A3E8();
  v47 = sub_226099868();

  v2 = v48;
  if (v48)
  {
    v43 = *(v49 + 720);
    v44 = sub_2260988D8();

    v45 = v44;
  }

  else
  {
    v45 = 0;
  }

  [*(v49 + 768) localSpeechRecognizer:v46 didCompletionRecognitionWithStatistics:v47 error:?];
  MEMORY[0x277D82BD8](v45);
  MEMORY[0x277D82BD8](v47);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v40 = *(v49 + 544);
  v38 = (v40 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_speechAnalyzer);
  swift_beginAccess();
  *v38 = 0;

  swift_endAccess();
  v39 = (v40 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_transcriber);
  swift_beginAccess();
  *v39 = 0;

  swift_endAccess();
  v42 = *sub_225F827A0();

  MEMORY[0x277D82BE0](v40);
  v41 = swift_task_alloc();
  *(v41 + 16) = v40;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786930, &qword_2260A0890);
  sub_225F8798C(sub_226022DD4, v41, v42, v3, MEMORY[0x277D84F78] + 8);
  if (v50)
  {
    v16 = *(v49 + 544);

    return MEMORY[0x277D82BD8](v16);
  }

  v36 = *(v49 + 544);

  MEMORY[0x277D82BD8](v36);

  v37 = (v36 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_didFinish);
  swift_beginAccess();
  if (*v37)
  {
    v35 = *v37;

    v4 = swift_endAccess();
    v35(v4);
  }

  else
  {
    swift_endAccess();
  }

  v34 = *(v49 + 736);
  v33 = (*(v49 + 544) + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_didFinish);
  swift_beginAccess();
  v5 = *v33;
  *v33 = 0;
  v33[1] = 0;
  sub_2260215F0(v5);
  swift_endAccess();
  sub_2260998E8();
  if (!v34)
  {
    goto LABEL_37;
  }

  v6 = *(v49 + 736);
  v7 = *(v49 + 752);
  v8 = *(v49 + 744);
  *(v49 + 344) = *(v49 + 728);
  *(v49 + 352) = v6;
  *(v49 + 360) = v8;
  *(v49 + 368) = v7;
  MEMORY[0x277D82BE0](@"Dictation");
  v32 = sub_226099A08();
  v31 = v9;
  sub_2260998E8();
  sub_225F4C5E0((v49 + 360), (v49 + 16));
  *(v49 + 32) = v32;
  *(v49 + 40) = v31;
  if (*(v49 + 24))
  {
    sub_225F4C5E0((v49 + 16), (v49 + 376));
    if (*(v49 + 40))
    {
      *(v49 + 392) = *(v49 + 32);
      v29 = MEMORY[0x22AA72BD0](*(v49 + 376), *(v49 + 384), *(v49 + 392), *(v49 + 400));
      sub_225EFE6BC(v49 + 392);
      sub_225EFE6BC(v49 + 376);
      sub_225EFE6BC(v49 + 16);
      v30 = v29;
      goto LABEL_22;
    }

    sub_225EFE6BC(v49 + 376);
    goto LABEL_24;
  }

  if (*(v49 + 40))
  {
LABEL_24:
    sub_225F4C1C0(v49 + 16);
    v30 = 0;
    goto LABEL_22;
  }

  sub_225EFE6BC(v49 + 16);
  v30 = 1;
LABEL_22:

  MEMORY[0x277D82BD8](@"Dictation");
  if (v30)
  {
    goto LABEL_36;
  }

  v26 = *(v49 + 608);
  sub_226022EA4(*(v49 + 616), v26);
  v27 = sub_226099258();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v26, 1))
  {
    goto LABEL_35;
  }

  v24 = *(v49 + 600);
  sub_226022EA4(*(v49 + 608), v24);
  v25 = (*(v28 + 88))(v24, v27);
  if (v25 != *MEMORY[0x277CDCC18] && v25 != *MEMORY[0x277CDCC28])
  {
    (*(v28 + 8))(*(v49 + 600), v27);
LABEL_35:
    sub_226022DFC(*(v49 + 608));
    goto LABEL_36;
  }

  sub_226022DFC(*(v49 + 608));
  v23 = (*(v49 + 544) + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_geoLMRegionIDUpdateTask);
  swift_beginAccess();
  if (!*v23)
  {
    swift_endAccess();
LABEL_36:

LABEL_37:
    v18 = *(v49 + 760);
    v19 = *(v49 + 720);
    v21 = *(v49 + 616);
    v20 = *(v49 + 544);
    v17 = (v20 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_geoLMRegionIDUpdateTask);
    swift_beginAccess();
    *v17 = 0;

    swift_endAccess();
    sub_22601F334(v18);

    sub_226022DFC(v21);

    sub_226022DA8((v49 + 432));
    sub_22601C420(v20);

    v14 = *(*(v49 + 408) + 8);

    return v14();
  }

  v22 = *v23;
  *(v49 + 800) = *v23;

  swift_endAccess();
  v10 = swift_task_alloc();
  *(v49 + 808) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786300, &unk_2260A0480);
  *v10 = *(v49 + 408);
  v10[1] = sub_22601AC18;
  v12 = MEMORY[0x277D839B0];
  v13 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v49 + 825, v22, v12, v11, v13);
}

uint64_t sub_22601AC18()
{
  v4 = *v1;
  *(v4 + 408) = *v1;
  *(v4 + 816) = v0;

  if (v0)
  {
    v2 = sub_22601C0C4;
  }

  else
  {
    v2 = sub_22601AD84;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22601AD84()
{
  *(v0 + 408) = v0;
  v9 = *(v0 + 825);

  if ((v9 & 1) != 2)
  {
    *(v8 + 824) = v9 & 1;
    if (v9)
    {
      sub_225F88E74(*(v8 + 728), *(v8 + 736), *(v8 + 744), *(v8 + 752), *(v8 + 760));
    }
  }

  v4 = *(v8 + 760);
  v5 = *(v8 + 720);
  v7 = *(v8 + 616);
  v6 = *(v8 + 544);
  v3 = (v6 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_geoLMRegionIDUpdateTask);
  swift_beginAccess();
  *v3 = 0;

  swift_endAccess();
  sub_22601F334(v4);

  sub_226022DFC(v7);

  sub_226022DA8((v8 + 432));
  sub_22601C420(v6);

  v1 = *(*(v8 + 408) + 8);

  return v1();
}

uint64_t sub_22601B0F0()
{
  v1 = v0[99];
  v0[51] = v0;

  v0[59] = 0;
  if (v0[59])
  {
    *(v48 + 464) = *(v48 + 472);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786BA8, &qword_2260A0C80);
    sub_22609A4F8();
    sub_225F2D6D0();
    *(v48 + 464) = sub_2260998A8();
    if (*(v48 + 472))
    {
      sub_225EFE6E8((v48 + 472));
    }
  }

  v47 = *(v48 + 720);
  v45 = *(v48 + 544);
  *(v48 + 480) = *(v48 + 464);
  swift_getObjectType();
  MEMORY[0x277D82BE0](v45);
  sub_2260998E8();
  sub_225F2D6D0();
  sub_22609A3E8();
  v46 = sub_226099868();

  v2 = v47;
  if (v47)
  {
    v42 = *(v48 + 720);
    v43 = sub_2260988D8();

    v44 = v43;
  }

  else
  {
    v44 = 0;
  }

  [*(v48 + 768) localSpeechRecognizer:v45 didCompletionRecognitionWithStatistics:v46 error:?];
  MEMORY[0x277D82BD8](v44);
  MEMORY[0x277D82BD8](v46);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v39 = *(v48 + 544);
  v37 = (v39 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_speechAnalyzer);
  swift_beginAccess();
  *v37 = 0;

  swift_endAccess();
  v38 = (v39 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_transcriber);
  swift_beginAccess();
  *v38 = 0;

  swift_endAccess();
  v41 = *sub_225F827A0();

  MEMORY[0x277D82BE0](v39);
  v40 = swift_task_alloc();
  *(v40 + 16) = v39;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786930, &qword_2260A0890);
  sub_225F8798C(sub_226022DD4, v40, v41, v3, MEMORY[0x277D84F78] + 8);
  v35 = *(v48 + 544);

  MEMORY[0x277D82BD8](v35);

  v36 = (v35 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_didFinish);
  swift_beginAccess();
  if (*v36)
  {
    v34 = *v36;

    v4 = swift_endAccess();
    v34(v4);
  }

  else
  {
    swift_endAccess();
  }

  v33 = *(v48 + 736);
  v32 = (*(v48 + 544) + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_didFinish);
  swift_beginAccess();
  v5 = *v32;
  *v32 = 0;
  v32[1] = 0;
  sub_2260215F0(v5);
  swift_endAccess();
  sub_2260998E8();
  if (!v33)
  {
    goto LABEL_36;
  }

  v6 = *(v48 + 736);
  v7 = *(v48 + 752);
  v8 = *(v48 + 744);
  *(v48 + 344) = *(v48 + 728);
  *(v48 + 352) = v6;
  *(v48 + 360) = v8;
  *(v48 + 368) = v7;
  MEMORY[0x277D82BE0](@"Dictation");
  v31 = sub_226099A08();
  v30 = v9;
  sub_2260998E8();
  sub_225F4C5E0((v48 + 360), (v48 + 16));
  *(v48 + 32) = v31;
  *(v48 + 40) = v30;
  if (*(v48 + 24))
  {
    sub_225F4C5E0((v48 + 16), (v48 + 376));
    if (*(v48 + 40))
    {
      *(v48 + 392) = *(v48 + 32);
      v28 = MEMORY[0x22AA72BD0](*(v48 + 376), *(v48 + 384), *(v48 + 392), *(v48 + 400));
      sub_225EFE6BC(v48 + 392);
      sub_225EFE6BC(v48 + 376);
      sub_225EFE6BC(v48 + 16);
      v29 = v28;
      goto LABEL_21;
    }

    sub_225EFE6BC(v48 + 376);
    goto LABEL_23;
  }

  if (*(v48 + 40))
  {
LABEL_23:
    sub_225F4C1C0(v48 + 16);
    v29 = 0;
    goto LABEL_21;
  }

  sub_225EFE6BC(v48 + 16);
  v29 = 1;
LABEL_21:

  MEMORY[0x277D82BD8](@"Dictation");
  if (v29)
  {
    goto LABEL_35;
  }

  v25 = *(v48 + 608);
  sub_226022EA4(*(v48 + 616), v25);
  v26 = sub_226099258();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v25, 1))
  {
    goto LABEL_34;
  }

  v23 = *(v48 + 600);
  sub_226022EA4(*(v48 + 608), v23);
  v24 = (*(v27 + 88))(v23, v26);
  if (v24 != *MEMORY[0x277CDCC18] && v24 != *MEMORY[0x277CDCC28])
  {
    (*(v27 + 8))(*(v48 + 600), v26);
LABEL_34:
    sub_226022DFC(*(v48 + 608));
    goto LABEL_35;
  }

  sub_226022DFC(*(v48 + 608));
  v22 = (*(v48 + 544) + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_geoLMRegionIDUpdateTask);
  swift_beginAccess();
  if (!*v22)
  {
    swift_endAccess();
LABEL_35:

LABEL_36:
    v17 = *(v48 + 760);
    v18 = *(v48 + 720);
    v20 = *(v48 + 616);
    v19 = *(v48 + 544);
    v16 = (v19 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_geoLMRegionIDUpdateTask);
    swift_beginAccess();
    *v16 = 0;

    swift_endAccess();
    sub_22601F334(v17);

    sub_226022DFC(v20);

    sub_226022DA8((v48 + 432));
    sub_22601C420(v19);

    v14 = *(*(v48 + 408) + 8);

    return v14();
  }

  v21 = *v22;
  *(v48 + 800) = *v22;

  swift_endAccess();
  v10 = swift_task_alloc();
  *(v48 + 808) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786300, &unk_2260A0480);
  *v10 = *(v48 + 408);
  v10[1] = sub_22601AC18;
  v12 = MEMORY[0x277D839B0];
  v13 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v48 + 825, v21, v12, v11, v13);
}

uint64_t sub_22601C0C4()
{
  v9 = *(v0 + 816);
  *(v0 + 408) = v0;

  v4 = *(v8 + 760);
  v5 = *(v8 + 720);
  v7 = *(v8 + 616);
  v6 = *(v8 + 544);
  v3 = (v6 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_geoLMRegionIDUpdateTask);
  swift_beginAccess();
  *v3 = 0;

  swift_endAccess();
  sub_22601F334(v4);

  sub_226022DFC(v7);

  sub_226022DA8((v8 + 432));
  sub_22601C420(v6);

  v1 = *(*(v8 + 408) + 8);

  return v1();
}

uint64_t sub_22601C420(uint64_t a1)
{
  v51 = a1;
  v52 = sub_225F3E198;
  v54 = sub_225F3E1C8;
  v56 = sub_226016ADC;
  v57 = sub_225EF7B84;
  v61 = sub_22601D4F8;
  v64 = sub_225F2D374;
  v66 = sub_225EF7434;
  v68 = sub_225EF7434;
  v70 = sub_225F3E358;
  v72 = sub_225EF7434;
  v74 = sub_225EF7434;
  v76 = sub_225EF7B90;
  v78 = sub_225EF7434;
  v80 = sub_225EF7434;
  v83 = sub_225EF71D0;
  v94 = 0;
  v45 = 0;
  v50 = sub_226098C58();
  v48 = *(v50 - 8);
  v49 = v50 - 8;
  v46 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v51);
  v1 = v35 - v46;
  v47 = v35 - v46;
  v94 = v2;
  v3 = sub_225F7E9BC();
  (*(v48 + 16))(v1, v3, v50);
  MEMORY[0x277D82BE0](v51);
  v63 = 7;
  v53 = swift_allocObject();
  *(v53 + 16) = v51;
  v87 = sub_226098C48();
  v88 = sub_22609A0A8();
  v59 = 17;
  v67 = swift_allocObject();
  *(v67 + 16) = 64;
  v69 = swift_allocObject();
  v60 = 8;
  *(v69 + 16) = 8;
  v62 = 32;
  v4 = swift_allocObject();
  v5 = v53;
  v55 = v4;
  *(v4 + 16) = v52;
  *(v4 + 24) = v5;
  v6 = swift_allocObject();
  v7 = v55;
  v71 = v6;
  *(v6 + 16) = v54;
  *(v6 + 24) = v7;
  v73 = swift_allocObject();
  *(v73 + 16) = 32;
  v75 = swift_allocObject();
  *(v75 + 16) = v60;
  v8 = swift_allocObject();
  v58 = v8;
  *(v8 + 16) = v56;
  *(v8 + 24) = 0;
  v9 = swift_allocObject();
  v10 = v58;
  v77 = v9;
  *(v9 + 16) = v57;
  *(v9 + 24) = v10;
  v79 = swift_allocObject();
  *(v79 + 16) = 0;
  v81 = swift_allocObject();
  *(v81 + 16) = v60;
  v11 = swift_allocObject();
  v65 = v11;
  *(v11 + 16) = v61;
  *(v11 + 24) = 0;
  v12 = swift_allocObject();
  v13 = v65;
  v84 = v12;
  *(v12 + 16) = v64;
  *(v12 + 24) = v13;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v82 = sub_22609A4F8();
  v85 = v14;

  v15 = v67;
  v16 = v85;
  *v85 = v66;
  v16[1] = v15;

  v17 = v69;
  v18 = v85;
  v85[2] = v68;
  v18[3] = v17;

  v19 = v71;
  v20 = v85;
  v85[4] = v70;
  v20[5] = v19;

  v21 = v73;
  v22 = v85;
  v85[6] = v72;
  v22[7] = v21;

  v23 = v75;
  v24 = v85;
  v85[8] = v74;
  v24[9] = v23;

  v25 = v77;
  v26 = v85;
  v85[10] = v76;
  v26[11] = v25;

  v27 = v79;
  v28 = v85;
  v85[12] = v78;
  v28[13] = v27;

  v29 = v81;
  v30 = v85;
  v85[14] = v80;
  v30[15] = v29;

  v31 = v84;
  v32 = v85;
  v85[16] = v83;
  v32[17] = v31;
  sub_225EF5418();

  if (os_log_type_enabled(v87, v88))
  {
    v33 = v45;
    v38 = sub_22609A188();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v37 = 1;
    v39 = sub_225EF5468(1, v36, v36);
    v40 = sub_225EF5468(v37, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v41 = &v93;
    v93 = v38;
    v42 = &v92;
    v92 = v39;
    v43 = &v91;
    v91 = v40;
    sub_225EF54BC(2, &v93);
    sub_225EF54BC(3, v41);
    v89 = v66;
    v90 = v67;
    sub_225EF73E8(&v89, v41, v42, v43);
    v44 = v33;
    if (v33)
    {

      __break(1u);
    }

    else
    {
      v89 = v68;
      v90 = v69;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[7] = 0;
      v89 = v70;
      v90 = v71;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[6] = 0;
      v89 = v72;
      v90 = v73;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[5] = 0;
      v89 = v74;
      v90 = v75;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[4] = 0;
      v89 = v76;
      v90 = v77;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[3] = 0;
      v89 = v78;
      v90 = v79;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[2] = 0;
      v89 = v80;
      v90 = v81;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      v35[1] = 0;
      v89 = v83;
      v90 = v84;
      sub_225EF73E8(&v89, &v93, &v92, &v91);
      _os_log_impl(&dword_225EEB000, v87, v88, "%@ %s:%ld queue task complete", v38, 0x20u);
      v35[0] = 1;
      sub_225EF7AF4(v39, 1, v36);
      sub_225EF7AF4(v40, v35[0], MEMORY[0x277D84F70] + 8);
      sub_22609A168();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v87);
  return (*(v48 + 8))(v47, v50);
}