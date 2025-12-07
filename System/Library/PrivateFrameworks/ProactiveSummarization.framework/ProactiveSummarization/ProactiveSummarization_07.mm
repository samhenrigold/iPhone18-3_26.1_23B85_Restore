void sub_231D49574()
{
  v1 = sub_231E10E30();
  OUTLINED_FUNCTION_24();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_1();
  v7 = v6 - v5;
  sub_231CC1784(0, &unk_2814CBD88, 0x277D42588);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73FB0, &qword_231E23560);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_231E13420;
  *(v8 + 32) = v0;
  v9 = v0;
  v10 = sub_231D49954(v8);
  v11 = [v10 migrateDatabases];
  v12 = v11;
  switch(v11)
  {
    case 0u:
    case 1u:
      goto LABEL_12;
    case 2u:
      sub_231D526EC();
      OUTLINED_FUNCTION_22_7();
      swift_allocError();
      OUTLINED_FUNCTION_89_3();
      goto LABEL_7;
    case 3u:
      sub_231D526EC();
      OUTLINED_FUNCTION_22_7();
      swift_allocError();
      OUTLINED_FUNCTION_89_3();
      v15 = 3;
      goto LABEL_11;
    case 4u:
      sub_231D526EC();
      OUTLINED_FUNCTION_22_7();
      swift_allocError();
      OUTLINED_FUNCTION_89_3();
      v15 = 4;
      goto LABEL_11;
    case 5u:
      sub_231D526EC();
      OUTLINED_FUNCTION_22_7();
      swift_allocError();
      OUTLINED_FUNCTION_89_3();
      v15 = 5;
      goto LABEL_11;
    case 6u:
      sub_231D526EC();
      OUTLINED_FUNCTION_22_7();
      swift_allocError();
      OUTLINED_FUNCTION_89_3();
      v15 = 6;
      goto LABEL_11;
    default:
      v16 = sub_231DC4C74();
      (*(v3 + 16))(v7, v16, v1);
      v17 = sub_231E10E10();
      v18 = sub_231E11AE0();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 16777472;
        v19[4] = v12;
        _os_log_impl(&dword_231CAE000, v17, v18, "Unknown migration result: %hhu", v19, 5u);
        OUTLINED_FUNCTION_12_11();
        MEMORY[0x23837E1D0]();
      }

      (*(v3 + 8))(v7, v1);
      sub_231D526EC();
      OUTLINED_FUNCTION_22_7();
      swift_allocError();
      v14 = 1;
LABEL_7:
      v15 = 2;
LABEL_11:
      *v13 = v15;
      v13[1] = v14;
      swift_willThrow();
LABEL_12:

      return;
  }
}

id sub_231D49850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v6 = sub_231E115F0();

  v11[0] = 0;
  v7 = [swift_getObjCClassFromMetadata() sqliteDatabaseWithFilename:v6 contentProtection:a3 errorHandler:a4 error:v11];

  if (v7)
  {
    v8 = v11[0];
  }

  else
  {
    v9 = v11[0];
    sub_231E0F6F0();

    swift_willThrow();
  }

  swift_unknownObjectRelease();
  return v7;
}

id sub_231D49954(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E18, &qword_231E1CAD8);
  v2 = sub_231E11850();

  v3 = [v1 initWithMigrationObjects_];

  return v3;
}

uint64_t sub_231D499D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74D38, &qword_231E1C988);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231E1C960;
  sub_231CC1784(0, &qword_2814CBD70, 0x277CCABB0);
  *(inited + 32) = sub_231E11BC0();
  *(inited + 40) = &unk_2846F2DF0;
  *(inited + 48) = sub_231E11BC0();
  *(inited + 56) = &unk_2846F2E30;
  *(inited + 64) = sub_231E11BC0();
  *(inited + 72) = &unk_2846F2E70;
  *(inited + 80) = sub_231E11BC0();
  *(inited + 88) = &unk_2846F2EA0;
  *(inited + 96) = sub_231E11BC0();
  *(inited + 104) = &unk_2846F2EE0;
  *(inited + 112) = sub_231E11BC0();
  *(inited + 120) = &unk_2846F2F40;
  *(inited + 128) = sub_231E11BC0();
  *(inited + 136) = &unk_2846F2FA0;
  *(inited + 144) = sub_231E11BC0();
  *(inited + 152) = &unk_2846F2FF0;
  *(inited + 160) = sub_231E11BC0();
  *(inited + 168) = &unk_2846F3040;
  *(inited + 176) = sub_231E11BC0();
  *(inited + 184) = &unk_2846F3090;
  *(inited + 192) = sub_231E11BC0();
  *(inited + 200) = &unk_2846F30C0;
  *(inited + 208) = sub_231E11BC0();
  *(inited + 216) = &unk_2846F3110;
  *(inited + 224) = sub_231E11BC0();
  *(inited + 232) = &unk_2846F3170;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74460, &qword_231E1C990);
  sub_231D5235C();
  OUTLINED_FUNCTION_59_0();
  return sub_231E11530();
}

id sub_231D49C8C()
{
  result = *(v0 + OBJC_IVAR____TtC22ProactiveSummarization29SummarizationPipelineDatabase_database);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

void sub_231D49CD8(uint64_t a1)
{
  OUTLINED_FUNCTION_40_6();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_231E10E30();
  OUTLINED_FUNCTION_24();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_1();
  v16 = v15 - v14;
  v17 = *(v1 + OBJC_IVAR____TtC22ProactiveSummarization29SummarizationPipelineDatabase_database);
  if (v17)
  {
    v47 = xmmword_231E13680;
    v49 = 0;
    v48 = 0uLL;
    v18 = v17;
    OUTLINED_FUNCTION_90_4();
    v39 = sub_231E115F0();
    v19 = swift_allocObject();
    *(v19 + 16) = v7;
    *(v19 + 24) = v5;
    *(v19 + 32) = v3;
    OUTLINED_FUNCTION_19_8();
    v20 = swift_allocObject();
    *(v20 + 16) = sub_231D523C4;
    *(v20 + 24) = v19;
    v45 = sub_231CC1714;
    v46 = v20;
    v41 = MEMORY[0x277D85DD0];
    v42 = 1107296256;
    v43 = sub_231D4A118;
    v44 = &block_descriptor_4;
    v21 = _Block_copy(&v41);

    v22 = swift_allocObject();
    *(v22 + 16) = &v47;
    *(v22 + 24) = v7;
    *(v22 + 32) = v5;
    *(v22 + 40) = v3;
    OUTLINED_FUNCTION_19_8();
    v23 = swift_allocObject();
    *(v23 + 16) = sub_231D52480;
    *(v23 + 24) = v22;
    v45 = sub_231D52558;
    v46 = v23;
    v41 = MEMORY[0x277D85DD0];
    v42 = 1107296256;
    v43 = sub_231D4A164;
    v44 = &block_descriptor_25;
    v24 = _Block_copy(&v41);
    v25 = v46;

    OUTLINED_FUNCTION_26_7();
    OUTLINED_FUNCTION_20_9();
    v26 = swift_allocObject();
    OUTLINED_FUNCTION_90_4();
    *(v27 + 16) = v28;
    *(v27 + 24) = v25;
    OUTLINED_FUNCTION_21_7(v27);
    OUTLINED_FUNCTION_19_8();
    v29 = swift_allocObject();
    *(v29 + 16) = sub_231D52584;
    *(v29 + 24) = v26;
    v45 = sub_231D52590;
    v46 = v29;
    v41 = MEMORY[0x277D85DD0];
    v42 = 1107296256;
    v43 = sub_231D4994C;
    v44 = &block_descriptor_34;
    v30 = _Block_copy(&v41);

    [v18 prepAndRunQuery:v39 onPrep:v21 onRow:v24 onError:v30];

    _Block_release(v30);
    _Block_release(v24);
    _Block_release(v21);

    v38 = v48;
    v40 = v47;
    v31 = v49;

    v33 = v38;
    v32 = v40;
  }

  else
  {
    v34 = sub_231DC4C74();
    (*(v12 + 16))(v16, v34, v10);
    v35 = sub_231E10E10();
    v36 = sub_231E11AE0();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_231CAE000, v35, v36, "getPowerBudgetState failed to load database", v37, 2u);
      OUTLINED_FUNCTION_12_11();
      MEMORY[0x23837E1D0]();
    }

    (*(v12 + 8))(v16, v10);
    v31 = 0;
    v32 = xmmword_231E13680;
    v33 = 0uLL;
  }

  *v9 = v32;
  *(v9 + 16) = v33;
  *(v9 + 32) = v31;
  OUTLINED_FUNCTION_39_5();
}

void sub_231D4A118(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_231D4A16C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

void sub_231D4A69C(uint64_t a1)
{
  OUTLINED_FUNCTION_40_6();
  OUTLINED_FUNCTION_65_4();
  v3 = sub_231E10E30();
  OUTLINED_FUNCTION_24();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_1();
  v9 = v8 - v7;
  v10 = sub_231E0F950();
  OUTLINED_FUNCTION_24();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_12_12();
  v16 = *(v1 + OBJC_IVAR____TtC22ProactiveSummarization29SummarizationPipelineDatabase_database);
  if (v16)
  {
    v17 = v16;
    v18 = sub_231E115F0();
    OUTLINED_FUNCTION_64_3();
    v19();
    v20 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v21 = swift_allocObject();
    (*(v12 + 32))(v21 + v20, v2, v10);
    OUTLINED_FUNCTION_19_8();
    v22 = swift_allocObject();
    *(v22 + 16) = sub_231D54B78;
    *(v22 + 24) = v21;
    v35 = sub_231D54B84;
    v36 = v22;
    OUTLINED_FUNCTION_5_18();
    OUTLINED_FUNCTION_4_14();
    v33 = v23;
    v34 = &block_descriptor_86;
    _Block_copy(v32);
    OUTLINED_FUNCTION_105_4();
    OUTLINED_FUNCTION_26_7();
    OUTLINED_FUNCTION_20_9();
    v24 = swift_allocObject();
    OUTLINED_FUNCTION_15_12(v24);
    OUTLINED_FUNCTION_19_8();
    v25 = swift_allocObject();
    *(v25 + 16) = sub_231D549F4;
    *(v25 + 24) = v2;
    v35 = sub_231D54B88;
    v36 = v25;
    v32[0] = MEMORY[0x277D85DD0];
    OUTLINED_FUNCTION_6_16();
    v33 = v26;
    v34 = &block_descriptor_97;
    _Block_copy(v32);
    v27 = OUTLINED_FUNCTION_106_4();
    OUTLINED_FUNCTION_8_13(v27, sel_prepAndRunQuery_onPrep_onRow_onError_);
    _Block_release(v14);
    _Block_release(v10);
  }

  else
  {
    v28 = sub_231DC4C74();
    (*(v5 + 16))(v9, v28, v3);
    v29 = sub_231E10E10();
    v30 = sub_231E11AE0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_231CAE000, v29, v30, "setPowerBudgetState failed to load database", v31, 2u);
      OUTLINED_FUNCTION_12_11();
      MEMORY[0x23837E1D0]();
    }

    (*(v5 + 8))(v9, v3);
  }

  OUTLINED_FUNCTION_39_5();
}

uint64_t sub_231D4A9F4(uint64_t a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC22ProactiveSummarization29SummarizationPipelineDatabase_database);
  if (v4)
  {
    v5 = a1;
    v28 = 0;
    v22 = v4;
    v21 = sub_231E115F0();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    OUTLINED_FUNCTION_19_8();
    v7 = swift_allocObject();
    *(v7 + 16) = sub_231D52740;
    *(v7 + 24) = v6;
    v26 = sub_231D54B84;
    v27 = v7;
    OUTLINED_FUNCTION_33_11();
    OUTLINED_FUNCTION_32_6();
    v24 = v8;
    v25 = &block_descriptor_107;
    v9 = _Block_copy(aBlock);

    OUTLINED_FUNCTION_27();
    v10 = swift_allocObject();
    *(v10 + 16) = &v28;
    OUTLINED_FUNCTION_19_8();
    v11 = swift_allocObject();
    *(v11 + 16) = sub_231D549FC;
    *(v11 + 24) = v10;
    v26 = sub_231D54B8C;
    v27 = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    OUTLINED_FUNCTION_50_5();
    v24 = v12;
    v25 = &block_descriptor_117;
    v13 = _Block_copy(aBlock);

    OUTLINED_FUNCTION_92_3();
    OUTLINED_FUNCTION_20_9();
    v14 = swift_allocObject();
    *(v14 + 16) = 0xD00000000000002DLL;
    *(v14 + 24) = v3;
    OUTLINED_FUNCTION_21_7(v14);
    OUTLINED_FUNCTION_19_8();
    v15 = swift_allocObject();
    *(v15 + 16) = sub_231D549F4;
    *(v15 + 24) = v14;
    v26 = sub_231D54B88;
    v27 = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    OUTLINED_FUNCTION_49_7();
    v24 = v16;
    v25 = &block_descriptor_128;
    v17 = _Block_copy(aBlock);

    OUTLINED_FUNCTION_71_4(v22, sel_prepAndRunQuery_onPrep_onRow_onError_, v21);

    _Block_release(v17);
    _Block_release(v13);
    _Block_release(v9);

    v2 = v28;
  }

  else
  {
    sub_231D526EC();
    OUTLINED_FUNCTION_22_7();
    v18 = swift_allocError();
    OUTLINED_FUNCTION_7_16(v18, v19);
    swift_willThrow();
  }

  return v2;
}

void sub_231D4ACC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_60_5();
  v26 = v25;
  v72 = v27;
  v73 = v28;
  v30 = v29;
  v32 = v31;
  v80 = v34;
  v81 = v33;
  v71 = v35;
  v36 = sub_231E0F950();
  OUTLINED_FUNCTION_24();
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_62_2();
  v74 = v22;
  v42 = *(v22 + OBJC_IVAR____TtC22ProactiveSummarization29SummarizationPipelineDatabase_database);
  if (v42)
  {
    v43 = *(v32 + 16);
    v70 = v42;
    v44 = sub_231D4B0A8(v32 + 32, v43);
    v76 = v45;
    v78 = v44;
    v75 = sub_231D4B0A8(v30 + 32, *(v30 + 16));
    v47 = v46;
    v69 = sub_231E115F0();
    (*(v38 + 16))(v24, v26, v36);
    v48 = (*(v38 + 80) + 88) & ~*(v38 + 80);
    v49 = swift_allocObject();
    *(v49 + 2) = v71;
    *(v49 + 3) = v81;
    *(v49 + 4) = v72;
    *(v49 + 5) = v80;
    *(v49 + 6) = v78;
    *(v49 + 7) = v76;
    *(v49 + 8) = v75;
    *(v49 + 9) = v47;
    *(v49 + 10) = v73;
    (*(v38 + 32))(&v49[v48], v24, v36);
    v50 = &v49[(v40 + v48 + 7) & 0xFFFFFFFFFFFFFFF8];
    *v50 = a21;
    *(v50 + 1) = a22;
    OUTLINED_FUNCTION_19_8();
    v51 = swift_allocObject();
    *(v51 + 16) = sub_231D52790;
    *(v51 + 24) = v49;
    v86 = sub_231D54B84;
    v87 = v51;
    v82 = MEMORY[0x277D85DD0];
    v83 = 1107296256;
    v84 = sub_231D4A118;
    v85 = &block_descriptor_138;
    v52 = _Block_copy(&v82);

    sub_231CF4400(v78, v76);
    v53 = v75;
    sub_231CF4400(v75, v47);

    OUTLINED_FUNCTION_20_9();
    v54 = swift_allocObject();
    *(v54 + 16) = 0xD00000000000004ELL;
    *(v54 + 24) = 0x8000000231E34070;
    OUTLINED_FUNCTION_21_7(v54);
    OUTLINED_FUNCTION_19_8();
    v55 = swift_allocObject();
    *(v55 + 16) = sub_231D549F4;
    *(v55 + 24) = v54;
    v86 = sub_231D54B88;
    v87 = v55;
    v82 = MEMORY[0x277D85DD0];
    v83 = 1107296256;
    v84 = sub_231D4994C;
    v85 = &block_descriptor_149;
    v56 = _Block_copy(&v82);

    v57 = v70;
    [v70 prepAndRunQuery:v69 onPrep:v52 onRow:0 onError:v56];
    _Block_release(v56);
    _Block_release(v52);

    v58 = sub_231D13248();
    sub_231D4B180(v58, v59, v60, v61, v62, v63, v64, v65, v68, a21, a22, v69, v70, v23, v71, v72, v73, v74, v75, v76, v78, v80, v81, v82, v83, v84, v85, v86);
    sub_231CF4354(v53, v47);
    sub_231CF4354(v79, v77);
  }

  else
  {
    sub_231D526EC();
    OUTLINED_FUNCTION_22_7();
    v66 = swift_allocError();
    OUTLINED_FUNCTION_7_16(v66, v67);
    swift_willThrow();
  }

  OUTLINED_FUNCTION_58_6();
}

uint64_t sub_231D4B0A8(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if ((a2 - 0x1000000000000000) >> 61 == 7)
    {
      v3 = 8 * a2;
      if (8 * a2)
      {
        if (v3 <= 14)
        {
          return sub_231E0F790();
        }

        else
        {
          sub_231E0F560();
          swift_allocObject();
          sub_231E0F520();
          if (v3 >= 0x7FFFFFFF)
          {
            sub_231E0F7E0();
            result = swift_allocObject();
            *(result + 16) = 0;
            *(result + 24) = v3;
          }

          else
          {
            return a2 << 35;
          }
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_231D4B324(uint64_t a1)
{
  if (*(v2 + OBJC_IVAR____TtC22ProactiveSummarization29SummarizationPipelineDatabase_database))
  {
    OUTLINED_FUNCTION_115_3();
    v5 = 0xD00000000000002BLL;
    v105 = MEMORY[0x277D84F90];
    v96 = v7;
    if (v8)
    {
      v9 = v6;
      v10 = "ckHistory(bundleId:sender:)";
      v93 = v7;

      v11 = sub_231E115F0();
      OUTLINED_FUNCTION_20_9();
      v12 = swift_allocObject();
      v12[2] = v3;
      v12[3] = v1;
      v12[4] = v9;
      v12[5] = v4;
      OUTLINED_FUNCTION_19_8();
      v13 = swift_allocObject();
      *(v13 + 16) = sub_231D54B70;
      *(v13 + 24) = v12;
      v103 = sub_231D54B84;
      v104 = v13;
      OUTLINED_FUNCTION_38_7();
      OUTLINED_FUNCTION_35_7();
      v101 = v14;
      v102 = &block_descriptor_211;
      _Block_copy(&aBlock);
      OUTLINED_FUNCTION_73_3();

      OUTLINED_FUNCTION_27();
      v15 = swift_allocObject();
      OUTLINED_FUNCTION_61_5(v15);
      OUTLINED_FUNCTION_19_8();
      v16 = swift_allocObject();
      *(v16 + 16) = sub_231D52940;
      *(v16 + 24) = v1;
      v103 = sub_231D54B8C;
      v104 = v16;
      aBlock = MEMORY[0x277D85DD0];
      OUTLINED_FUNCTION_54_6();
      v101 = v17;
      v102 = &block_descriptor_221;
      _Block_copy(&aBlock);

      OUTLINED_FUNCTION_67_5();
      OUTLINED_FUNCTION_20_9();
      v18 = swift_allocObject();
      *(v18 + 16) = 0xD00000000000002BLL;
      *(v18 + 24) = v1;
      OUTLINED_FUNCTION_21_7(v18);
      OUTLINED_FUNCTION_19_8();
      v19 = swift_allocObject();
      *(v19 + 16) = sub_231D549F4;
      *(v19 + 24) = v18;
      v103 = sub_231D54B88;
      v104 = v19;
      aBlock = MEMORY[0x277D85DD0];
      OUTLINED_FUNCTION_52_6();
      v101 = v20;
      v102 = &block_descriptor_232;
      v21 = _Block_copy(&aBlock);
      v29 = OUTLINED_FUNCTION_118_4(v21, v22, v23, v24, v25, v26, v27, v28, sub_231D52940, v74, v1, v82, sub_231D54B70, v90, v93, v96, v98, aBlock, v100, v101, v102, v103, v104);
      OUTLINED_FUNCTION_80_2(v29, sel_prepAndRunQuery_onPrep_onRow_onError_, v30, v31, v32, v33, v34, v35, v71, v75, v79, v83, v86, v91, v94);
      OUTLINED_FUNCTION_96_4();
    }

    else
    {
      v88 = v7;
      v10 = sub_231E115F0();
      OUTLINED_FUNCTION_19_8();
      v11 = swift_allocObject();
      v11[2] = v3;
      v11[3] = v1;
      OUTLINED_FUNCTION_19_8();
      v38 = swift_allocObject();
      *(v38 + 16) = sub_231D54B90;
      *(v38 + 24) = v11;
      v103 = sub_231D54B84;
      v104 = v38;
      OUTLINED_FUNCTION_37_8();
      OUTLINED_FUNCTION_36_6();
      v101 = v39;
      v102 = &block_descriptor_180;
      _Block_copy(&aBlock);
      OUTLINED_FUNCTION_73_3();

      OUTLINED_FUNCTION_27();
      v40 = swift_allocObject();
      OUTLINED_FUNCTION_61_5(v40);
      OUTLINED_FUNCTION_19_8();
      v41 = swift_allocObject();
      *(v41 + 16) = sub_231D54B94;
      *(v41 + 24) = v1;
      v103 = sub_231D54B8C;
      v104 = v41;
      aBlock = MEMORY[0x277D85DD0];
      OUTLINED_FUNCTION_53_6();
      v101 = v42;
      v102 = &block_descriptor_190;
      _Block_copy(&aBlock);

      OUTLINED_FUNCTION_67_5();
      OUTLINED_FUNCTION_20_9();
      v43 = swift_allocObject();
      *(v43 + 16) = 0xD00000000000002BLL;
      *(v43 + 24) = v1;
      OUTLINED_FUNCTION_21_7(v43);
      OUTLINED_FUNCTION_19_8();
      v44 = swift_allocObject();
      *(v44 + 16) = sub_231D549F4;
      *(v44 + 24) = v43;
      v103 = sub_231D54B88;
      v104 = v44;
      aBlock = MEMORY[0x277D85DD0];
      OUTLINED_FUNCTION_55_4();
      v101 = v45;
      v102 = &block_descriptor_201;
      v46 = _Block_copy(&aBlock);
      v54 = OUTLINED_FUNCTION_118_4(v46, v47, v48, v49, v50, v51, v52, v53, v70, sub_231D54B94, v78, v1, v88, sub_231D54B90, v11, v96, v98, aBlock, v100, v101, v102, v103, v104);
      OUTLINED_FUNCTION_69_4(v54, sel_prepAndRunQuery_onPrep_onRow_onError_, v55, v56, v57, v58, v59, v60, v73, v77, v81, v85, v89);
      OUTLINED_FUNCTION_79_2();
    }

    _Block_release(0xD00000000000002BLL);
    _Block_release(v3);
    _Block_release(v10);

    OUTLINED_FUNCTION_57_5(v61, v62, v63, v64, v65, v66, v67, v68, v72, v76, v80, v84, v87, v92, v95);
  }

  else
  {
    sub_231D526EC();
    OUTLINED_FUNCTION_22_7();
    v36 = swift_allocError();
    OUTLINED_FUNCTION_7_16(v36, v37);
    swift_willThrow();
  }

  return v5;
}

uint64_t sub_231D4B7CC()
{
  v1 = sub_231E0F950();
  v2 = OUTLINED_FUNCTION_47(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_1();
  v3 = OUTLINED_FUNCTION_83_3();
  v4 = type metadata accessor for UrgencyFeedbackHistoryEntry(v3);
  v5 = OUTLINED_FUNCTION_6(v4);
  v7 = v6;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_1();
  v10 = v9 - v8;
  v11 = OUTLINED_FUNCTION_86_4();
  v13 = [v11 v12];
  if (v13)
  {
    v14 = v13;
    sub_231E11620();
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = OUTLINED_FUNCTION_86_4();
  v19 = [v17 v18];
  v20 = OUTLINED_FUNCTION_86_4();
  [v20 v21];
  if (v16)
  {
    sub_231E0F860();
    v22 = OUTLINED_FUNCTION_80();
    sub_231D61FBC(v22, v23, v0, v19, v24);
    sub_231D51D14(&unk_27DD74E08, &unk_231E1CAC8, type metadata accessor for UrgencyFeedbackHistoryEntry, type metadata accessor for UrgencyFeedbackHistoryEntry);
    OUTLINED_FUNCTION_74_1();
    OUTLINED_FUNCTION_82_1();
    sub_231D547D8(v10, v25 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19, type metadata accessor for UrgencyFeedbackHistoryEntry);
  }

  return *MEMORY[0x277D42690];
}

unint64_t sub_231D4B9C8(uint64_t a1)
{
  if (*(v2 + OBJC_IVAR____TtC22ProactiveSummarization29SummarizationPipelineDatabase_database))
  {
    OUTLINED_FUNCTION_115_3();
    v5 = 0xD000000000000025;
    v105 = MEMORY[0x277D84F90];
    v96 = v7;
    if (v8)
    {
      v9 = v6;
      v10 = "ors(bundleId:sender:)";
      v93 = v7;

      v11 = sub_231E115F0();
      OUTLINED_FUNCTION_20_9();
      v12 = swift_allocObject();
      v12[2] = v3;
      v12[3] = v1;
      v12[4] = v9;
      v12[5] = v4;
      OUTLINED_FUNCTION_19_8();
      v13 = swift_allocObject();
      *(v13 + 16) = sub_231D52974;
      *(v13 + 24) = v12;
      v103 = sub_231D54B84;
      v104 = v13;
      OUTLINED_FUNCTION_38_7();
      OUTLINED_FUNCTION_35_7();
      v101 = v14;
      v102 = &block_descriptor_273;
      _Block_copy(&aBlock);
      OUTLINED_FUNCTION_73_3();

      OUTLINED_FUNCTION_27();
      v15 = swift_allocObject();
      OUTLINED_FUNCTION_61_5(v15);
      OUTLINED_FUNCTION_19_8();
      v16 = swift_allocObject();
      *(v16 + 16) = sub_231D529DC;
      *(v16 + 24) = v1;
      v103 = sub_231D54B8C;
      v104 = v16;
      aBlock = MEMORY[0x277D85DD0];
      OUTLINED_FUNCTION_54_6();
      v101 = v17;
      v102 = &block_descriptor_283;
      _Block_copy(&aBlock);

      OUTLINED_FUNCTION_67_5();
      OUTLINED_FUNCTION_20_9();
      v18 = swift_allocObject();
      *(v18 + 16) = 0xD000000000000025;
      *(v18 + 24) = v1;
      OUTLINED_FUNCTION_21_7(v18);
      OUTLINED_FUNCTION_19_8();
      v19 = swift_allocObject();
      *(v19 + 16) = sub_231D549F4;
      *(v19 + 24) = v18;
      v103 = sub_231D54B88;
      v104 = v19;
      aBlock = MEMORY[0x277D85DD0];
      OUTLINED_FUNCTION_52_6();
      v101 = v20;
      v102 = &block_descriptor_294;
      v21 = _Block_copy(&aBlock);
      v29 = OUTLINED_FUNCTION_118_4(v21, v22, v23, v24, v25, v26, v27, v28, sub_231D529DC, v74, v1, v82, sub_231D52974, v90, v93, v96, v98, aBlock, v100, v101, v102, v103, v104);
      OUTLINED_FUNCTION_80_2(v29, sel_prepAndRunQuery_onPrep_onRow_onError_, v30, v31, v32, v33, v34, v35, v71, v75, v79, v83, v86, v91, v94);
      OUTLINED_FUNCTION_96_4();
    }

    else
    {
      v88 = v7;
      v10 = sub_231E115F0();
      OUTLINED_FUNCTION_19_8();
      v11 = swift_allocObject();
      v11[2] = v3;
      v11[3] = v1;
      OUTLINED_FUNCTION_19_8();
      v38 = swift_allocObject();
      *(v38 + 16) = sub_231D52960;
      *(v38 + 24) = v11;
      v103 = sub_231D54B84;
      v104 = v38;
      OUTLINED_FUNCTION_37_8();
      OUTLINED_FUNCTION_36_6();
      v101 = v39;
      v102 = &block_descriptor_242;
      _Block_copy(&aBlock);
      OUTLINED_FUNCTION_73_3();

      OUTLINED_FUNCTION_27();
      v40 = swift_allocObject();
      OUTLINED_FUNCTION_61_5(v40);
      OUTLINED_FUNCTION_19_8();
      v41 = swift_allocObject();
      *(v41 + 16) = sub_231D54B74;
      *(v41 + 24) = v1;
      v103 = sub_231D54B8C;
      v104 = v41;
      aBlock = MEMORY[0x277D85DD0];
      OUTLINED_FUNCTION_53_6();
      v101 = v42;
      v102 = &block_descriptor_252;
      _Block_copy(&aBlock);

      OUTLINED_FUNCTION_67_5();
      OUTLINED_FUNCTION_20_9();
      v43 = swift_allocObject();
      *(v43 + 16) = 0xD000000000000025;
      *(v43 + 24) = v1;
      OUTLINED_FUNCTION_21_7(v43);
      OUTLINED_FUNCTION_19_8();
      v44 = swift_allocObject();
      *(v44 + 16) = sub_231D549F4;
      *(v44 + 24) = v43;
      v103 = sub_231D54B88;
      v104 = v44;
      aBlock = MEMORY[0x277D85DD0];
      OUTLINED_FUNCTION_55_4();
      v101 = v45;
      v102 = &block_descriptor_263;
      v46 = _Block_copy(&aBlock);
      v54 = OUTLINED_FUNCTION_118_4(v46, v47, v48, v49, v50, v51, v52, v53, v70, sub_231D54B74, v78, v1, v88, sub_231D52960, v11, v96, v98, aBlock, v100, v101, v102, v103, v104);
      OUTLINED_FUNCTION_69_4(v54, sel_prepAndRunQuery_onPrep_onRow_onError_, v55, v56, v57, v58, v59, v60, v73, v77, v81, v85, v89);
      OUTLINED_FUNCTION_79_2();
    }

    _Block_release(0xD000000000000025);
    _Block_release(v3);
    _Block_release(v10);

    OUTLINED_FUNCTION_57_5(v61, v62, v63, v64, v65, v66, v67, v68, v72, v76, v80, v84, v87, v92, v95);
  }

  else
  {
    sub_231D526EC();
    OUTLINED_FUNCTION_22_7();
    v36 = swift_allocError();
    OUTLINED_FUNCTION_7_16(v36, v37);
    swift_willThrow();
  }

  return v5;
}

void *sub_231D4BE70(const void *a1, uint64_t a2)
{
  if (!a2)
  {
    return MEMORY[0x277D84F90];
  }

  if (a2 <= 0)
  {
    v4 = 8 * a2;
    v5 = MEMORY[0x277D84F90];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E00, &qword_231E1CAC0);
    v4 = 8 * a2;
    v5 = swift_allocObject();
    v6 = _swift_stdlib_malloc_size(v5);
    v5[2] = a2;
    v5[3] = 2 * ((v6 - 32) / 8);
  }

  memcpy(v5 + 4, a1, v4);
  return v5;
}

uint64_t sub_231D4BF18(uint64_t result, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v5 = result >> 32;
      if (result >> 32 >= result)
      {
        result = result;
        v4 = v5;
        goto LABEL_9;
      }

      __break(1u);
      break;
    case 2uLL:
      v3 = *(result + 24);
      result = *(result + 16);
      v4 = v3;
LABEL_9:
      result = sub_231D53D2C(result, v4);
      break;
    case 3uLL:
      result = 0;
      v2 = 0;
      goto LABEL_5;
    default:
      v2 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      result = sub_231D53CB4(result, v2);
      break;
  }

  return result;
}

uint64_t sub_231D4BFA4(uint64_t result, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      if (result >> 32 >= result)
      {
        result = result;
        goto LABEL_5;
      }

      __break(1u);
      break;
    case 2uLL:
      result = *(result + 16);
LABEL_5:
      result = sub_231D53DC4(result);
      break;
    case 3uLL:
      result = 0;
      break;
    default:
      return result;
  }

  return result;
}

void sub_231D4C01C(uint64_t a1, unint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC22ProactiveSummarization29SummarizationPipelineDatabase_database);
  if (v3)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v6 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v6 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v7 = v3;
    if (v6)
    {
      v21 = sub_231E115F0();
      OUTLINED_FUNCTION_19_8();
      v8 = swift_allocObject();
      *(v8 + 16) = a1;
      *(v8 + 24) = a2;
      OUTLINED_FUNCTION_19_8();
      v9 = swift_allocObject();
      *(v9 + 16) = sub_231D54B90;
      *(v9 + 24) = v8;
      v26 = sub_231D54B84;
      v27 = v9;
      aBlock = MEMORY[0x277D85DD0];
      v23 = 1107296256;
      OUTLINED_FUNCTION_43_9();
      v24 = v10;
      v25 = &block_descriptor_304;
      v11 = _Block_copy(&aBlock);

      OUTLINED_FUNCTION_20_9();
      v12 = swift_allocObject();
      *(v12 + 16) = 0xD00000000000001FLL;
      *(v12 + 24) = 0x8000000231E343A0;
      OUTLINED_FUNCTION_21_7(v12);
      OUTLINED_FUNCTION_19_8();
      v13 = swift_allocObject();
      *(v13 + 16) = sub_231D549F4;
      *(v13 + 24) = v12;
      v26 = sub_231D54B88;
      v27 = v13;
      aBlock = MEMORY[0x277D85DD0];
      v23 = 1107296256;
      v24 = sub_231D4994C;
      v25 = &block_descriptor_315;
      v14 = _Block_copy(&aBlock);

      v15 = v21;
      [v7 prepAndRunQuery:v21 onPrep:v11 onRow:0 onError:v14];

      _Block_release(v14);
      _Block_release(v11);
    }

    else
    {
      v15 = sub_231E115F0();
      OUTLINED_FUNCTION_20_9();
      v18 = swift_allocObject();
      *(v18 + 16) = 0xD00000000000001FLL;
      *(v18 + 24) = 0x8000000231E343A0;
      OUTLINED_FUNCTION_21_7(v18);
      OUTLINED_FUNCTION_19_8();
      v19 = swift_allocObject();
      *(v19 + 16) = sub_231D549F4;
      *(v19 + 24) = v18;
      v26 = sub_231D54B88;
      v27 = v19;
      aBlock = MEMORY[0x277D85DD0];
      v23 = 1107296256;
      v24 = sub_231D4994C;
      v25 = &block_descriptor_326;
      v20 = _Block_copy(&aBlock);

      [v7 prepAndRunQuery:v15 onPrep:0 onRow:0 onError:v20];

      _Block_release(v20);
    }
  }

  else
  {
    sub_231D526EC();
    OUTLINED_FUNCTION_22_7();
    v16 = swift_allocError();
    OUTLINED_FUNCTION_7_16(v16, v17);
    swift_willThrow();
  }
}

void sub_231D4C6B8()
{
  OUTLINED_FUNCTION_118();
  v3 = v2;
  OUTLINED_FUNCTION_65_4();
  sub_231E11500();
  OUTLINED_FUNCTION_24();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_83_3();
  v5 = sub_231E114D0();
  v6 = OUTLINED_FUNCTION_47(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_1();
  v9 = v8 - v7;

  sub_231D51648(v0, v3);
  sub_231D534E8(&qword_27DD74B98, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  sub_231E114B0();
  v10 = OUTLINED_FUNCTION_80();
  sub_231CF4400(v10, v11);
  v12 = OUTLINED_FUNCTION_80();
  sub_231D27708(v12, v13, v1);
  v14 = OUTLINED_FUNCTION_80();
  sub_231CF4354(v14, v15);
  sub_231E114A0();
  v16 = OUTLINED_FUNCTION_88_4();
  v17(v16);
  v18 = OUTLINED_FUNCTION_80();
  sub_231CF4354(v18, v19);
  v20 = sub_231D51B50(v9);
  sub_231D4BFA4(v20, v21);
  v22 = OUTLINED_FUNCTION_59_0();
  sub_231CF4354(v22, v23);
  OUTLINED_FUNCTION_113();
}

void sub_231D4CA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_60_5();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_231E10E30();
  OUTLINED_FUNCTION_24();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_1();
  v20 = v19 - v18;
  v21 = *&v6[OBJC_IVAR____TtC22ProactiveSummarization29SummarizationPipelineDatabase_database];
  if (v21)
  {
    v55 = v20;
    v56 = v17;
    v57 = v16;
    v69 = 0;
    v70 = 1;
    v67 = 0;
    v68 = 1;
    v60 = v21;
    v59 = sub_231E115F0();
    OUTLINED_FUNCTION_108_3();
    v22 = swift_allocObject();
    v22[2] = v6;
    v22[3] = v14;
    v22[4] = v12;
    v22[5] = v10;
    v22[6] = v8;
    OUTLINED_FUNCTION_19_8();
    v23 = swift_allocObject();
    *(v23 + 16) = sub_231D52C2C;
    *(v23 + 24) = v22;
    v65 = sub_231D54B84;
    v66 = v23;
    v61 = MEMORY[0x277D85DD0];
    v62 = 1107296256;
    v63 = sub_231D4A118;
    v64 = &block_descriptor_378;
    v58 = v14;
    v24 = _Block_copy(&v61);
    v25 = v6;

    OUTLINED_FUNCTION_27();
    v26 = swift_allocObject();
    *(v26 + 16) = &v67;
    OUTLINED_FUNCTION_19_8();
    v27 = swift_allocObject();
    *(v27 + 16) = sub_231D52CAC;
    *(v27 + 24) = v26;
    v65 = sub_231D54B8C;
    v66 = v27;
    v61 = MEMORY[0x277D85DD0];
    OUTLINED_FUNCTION_44_7();
    v63 = v28;
    v64 = &block_descriptor_388;
    v29 = _Block_copy(&v61);

    OUTLINED_FUNCTION_20_9();
    v30 = swift_allocObject();
    *(v30 + 16) = 0xD000000000000029;
    *(v30 + 24) = 0x8000000231E34570;
    OUTLINED_FUNCTION_21_7(v30);
    OUTLINED_FUNCTION_19_8();
    v31 = swift_allocObject();
    *(v31 + 16) = sub_231D549F4;
    *(v31 + 24) = v30;
    v65 = sub_231D54B88;
    v66 = v31;
    v61 = MEMORY[0x277D85DD0];
    OUTLINED_FUNCTION_45_3();
    v63 = v32;
    v64 = &block_descriptor_399;
    v33 = _Block_copy(&v61);

    [v60 prepAndRunQuery:v59 onPrep:v24 onRow:v29 onError:v33];
    _Block_release(v33);
    _Block_release(v29);
    _Block_release(v24);

    v34 = sub_231E115F0();
    v35 = swift_allocObject();
    v35[2] = v25;
    v35[3] = v58;
    v35[4] = v12;
    OUTLINED_FUNCTION_19_8();
    v36 = swift_allocObject();
    *(v36 + 16) = sub_231D52CF0;
    *(v36 + 24) = v35;
    v65 = sub_231D54B84;
    v66 = v36;
    v61 = MEMORY[0x277D85DD0];
    v62 = 1107296256;
    v63 = sub_231D4A118;
    v64 = &block_descriptor_409;
    v37 = _Block_copy(&v61);
    v38 = v25;

    OUTLINED_FUNCTION_27();
    v39 = swift_allocObject();
    *(v39 + 16) = &v69;
    OUTLINED_FUNCTION_19_8();
    v40 = swift_allocObject();
    *(v40 + 16) = sub_231D54B6C;
    *(v40 + 24) = v39;
    v65 = sub_231D54B8C;
    v66 = v40;
    v61 = MEMORY[0x277D85DD0];
    OUTLINED_FUNCTION_44_7();
    v63 = v41;
    v64 = &block_descriptor_419;
    v42 = _Block_copy(&v61);

    OUTLINED_FUNCTION_20_9();
    v43 = swift_allocObject();
    v43[2] = 0xD000000000000029;
    v43[3] = 0x8000000231E34570;
    v43[4] = 0;
    v43[5] = 0xE000000000000000;
    OUTLINED_FUNCTION_19_8();
    v44 = swift_allocObject();
    *(v44 + 16) = sub_231D549F4;
    *(v44 + 24) = v43;
    v65 = sub_231D54B88;
    v66 = v44;
    v61 = MEMORY[0x277D85DD0];
    OUTLINED_FUNCTION_45_3();
    v63 = v45;
    v64 = &block_descriptor_430;
    v46 = _Block_copy(&v61);

    [v60 prepAndRunQuery:v34 onPrep:v37 onRow:v42 onError:v46];
    _Block_release(v46);
    _Block_release(v42);
    _Block_release(v37);

    if ((v70 & 1) != 0 || (v68 & 1) != 0 || (v49 = v69, v69 < 1))
    {
    }

    else
    {
      v50 = v67;
      v51 = sub_231DC4C74();
      (*(v56 + 16))(v55, v51, v57);
      v52 = sub_231E10E10();
      v53 = sub_231E11AF0();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 134218240;
        *(v54 + 4) = v50;
        *(v54 + 12) = 2048;
        *(v54 + 14) = v49;
        _os_log_impl(&dword_231CAE000, v52, v53, "Notification title rate: %ld/%ld", v54, 0x16u);
        OUTLINED_FUNCTION_12_11();
        MEMORY[0x23837E1D0]();
      }

      (*(v56 + 8))(v55, v57);
    }
  }

  else
  {
    sub_231D526EC();
    OUTLINED_FUNCTION_22_7();
    v47 = swift_allocError();
    OUTLINED_FUNCTION_7_16(v47, v48);
    swift_willThrow();
  }

  OUTLINED_FUNCTION_58_6();
}

uint64_t sub_231D4D150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(v10 + OBJC_IVAR____TtC22ProactiveSummarization29SummarizationPipelineDatabase_database);
  if (v11)
  {
    v41 = 0;
    v42 = 1;
    if (a9 <= 0)
    {
      v17 = 0x203D206874706564;
    }

    else
    {
      v17 = 0x203C206874706564;
    }

    v34 = v11;
    sub_231E11D70();
    MEMORY[0x23837CC20](0xD000000000000095, 0x8000000231E345F0);
    MEMORY[0x23837CC20](v17, 0xEE0068747065643ALL);

    MEMORY[0x23837CC20](0xD00000000000001BLL, 0x8000000231E34690);
    v18 = sub_231E115F0();

    v19 = swift_allocObject();
    v19[2] = a1;
    v19[3] = a2;
    v19[4] = a3;
    v19[5] = a4;
    v19[6] = a5;
    v19[7] = a6;
    v19[8] = a7;
    v19[9] = a8;
    v19[10] = a9;
    OUTLINED_FUNCTION_19_8();
    v20 = swift_allocObject();
    *(v20 + 16) = sub_231D52D40;
    *(v20 + 24) = v19;
    v39 = sub_231D54B84;
    v40 = v20;
    aBlock = MEMORY[0x277D85DD0];
    v36 = 1107296256;
    v37 = sub_231D4A118;
    v38 = &block_descriptor_440;
    v21 = _Block_copy(&aBlock);

    OUTLINED_FUNCTION_27();
    v22 = swift_allocObject();
    *(v22 + 16) = &v41;
    OUTLINED_FUNCTION_19_8();
    v23 = swift_allocObject();
    *(v23 + 16) = sub_231D52E04;
    *(v23 + 24) = v22;
    v39 = sub_231D54B8C;
    v40 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v36 = 1107296256;
    v37 = sub_231D4A164;
    v38 = &block_descriptor_450;
    v24 = _Block_copy(&aBlock);

    OUTLINED_FUNCTION_26_7();
    OUTLINED_FUNCTION_20_9();
    v25 = swift_allocObject();
    *(v25 + 16) = 0xD000000000000044;
    *(v25 + 24) = a4;
    OUTLINED_FUNCTION_21_7(v25);
    OUTLINED_FUNCTION_19_8();
    v26 = swift_allocObject();
    *(v26 + 16) = sub_231D549F4;
    *(v26 + 24) = v25;
    v39 = sub_231D54B88;
    v40 = v26;
    aBlock = MEMORY[0x277D85DD0];
    v36 = 1107296256;
    v37 = sub_231D4994C;
    v38 = &block_descriptor_461;
    v27 = _Block_copy(&aBlock);

    [v34 prepAndRunQuery:v18 onPrep:v21 onRow:v24 onError:v27];

    _Block_release(v27);
    _Block_release(v24);
    _Block_release(v21);

    v9 = v41;
  }

  else
  {
    sub_231D526EC();
    OUTLINED_FUNCTION_22_7();
    v28 = swift_allocError();
    OUTLINED_FUNCTION_7_16(v28, v29);
    swift_willThrow();
  }

  return v9;
}

void sub_231D4D588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10)
{
  v11 = *(v10 + OBJC_IVAR____TtC22ProactiveSummarization29SummarizationPipelineDatabase_database);
  if (v11)
  {
    v42 = v11;
    v41 = sub_231E115F0();
    v21 = swift_allocObject();
    *(v21 + 16) = a9;
    *(v21 + 24) = a1;
    *(v21 + 32) = a2;
    *(v21 + 40) = a3;
    *(v21 + 48) = a4;
    *(v21 + 56) = a5;
    *(v21 + 64) = a6;
    *(v21 + 72) = a7;
    *(v21 + 80) = a8;
    *(v21 + 88) = a10;
    OUTLINED_FUNCTION_19_8();
    v22 = swift_allocObject();
    *(v22 + 16) = sub_231D52E50;
    *(v22 + 24) = v21;
    v49 = sub_231D54B84;
    v50 = v22;
    aBlock = MEMORY[0x277D85DD0];
    v46 = 1107296256;
    v47 = sub_231D4A118;
    v48 = &block_descriptor_471;
    v23 = _Block_copy(&aBlock);

    OUTLINED_FUNCTION_20_9();
    v24 = swift_allocObject();
    *(v24 + 16) = 0xD000000000000051;
    *(v24 + 24) = 0x8000000231E347A0;
    OUTLINED_FUNCTION_21_7(v24);
    OUTLINED_FUNCTION_19_8();
    v25 = swift_allocObject();
    *(v25 + 16) = sub_231D549F4;
    *(v25 + 24) = v24;
    v49 = sub_231D54B88;
    v50 = v25;
    aBlock = MEMORY[0x277D85DD0];
    v46 = 1107296256;
    v47 = sub_231D4994C;
    v48 = &block_descriptor_482;
    v26 = _Block_copy(&aBlock);

    v27 = v42;
    OUTLINED_FUNCTION_114_1();
    [v28 v29];
    _Block_release(v26);
    _Block_release(v23);

    v30 = sub_231D13370();
    sub_231D4D864(v30, v31, v32, v33, v34, v35, v36, v37, v40, a10, v41, v42, v43, v44, aBlock, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58);
  }

  else
  {
    sub_231D526EC();
    OUTLINED_FUNCTION_22_7();
    v38 = swift_allocError();
    OUTLINED_FUNCTION_7_16(v38, v39);
    swift_willThrow();
  }
}

void sub_231D4D9FC(uint64_t a1)
{
  OUTLINED_FUNCTION_40_6();
  OUTLINED_FUNCTION_65_4();
  v4 = sub_231E0F950();
  OUTLINED_FUNCTION_24();
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_12();
  v8 = *(v1 + OBJC_IVAR____TtC22ProactiveSummarization29SummarizationPipelineDatabase_database);
  if (v8)
  {
    v9 = v8;
    sub_231E115F0();
    v10 = OUTLINED_FUNCTION_14_8();
    v11(v10);
    OUTLINED_FUNCTION_63_4();
    v12 = OUTLINED_FUNCTION_119_2();
    v13 = OUTLINED_FUNCTION_18_9(v12);
    v14(v13);
    OUTLINED_FUNCTION_19_8();
    v15 = swift_allocObject();
    *(v15 + 16) = sub_231D54B78;
    *(v15 + 24) = v2;
    v24 = sub_231D54B84;
    v25 = v15;
    OUTLINED_FUNCTION_5_18();
    OUTLINED_FUNCTION_4_14();
    v22 = v16;
    v23 = &block_descriptor_513;
    _Block_copy(v21);
    OUTLINED_FUNCTION_105_4();
    OUTLINED_FUNCTION_26_7();
    OUTLINED_FUNCTION_20_9();
    v17 = swift_allocObject();
    OUTLINED_FUNCTION_15_12(v17);
    OUTLINED_FUNCTION_19_8();
    v18 = swift_allocObject();
    *(v18 + 16) = sub_231D549F4;
    *(v18 + 24) = v3;
    v24 = sub_231D54B88;
    v25 = v18;
    v21[0] = MEMORY[0x277D85DD0];
    OUTLINED_FUNCTION_6_16();
    v22 = v19;
    v23 = &block_descriptor_524;
    _Block_copy(v21);
    v20 = OUTLINED_FUNCTION_106_4();
    OUTLINED_FUNCTION_8_13(v20, sel_prepAndRunQuery_onPrep_onRow_onError_);
    _Block_release(v6);
    _Block_release(v4);
  }

  OUTLINED_FUNCTION_39_5();
}

uint64_t sub_231D4DC14(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC22ProactiveSummarization29SummarizationPipelineDatabase_database);
  if (v5)
  {
    v32 = MEMORY[0x277D84F90];
    v26 = v5;
    OUTLINED_FUNCTION_113_3();
    v25 = sub_231E115F0();
    OUTLINED_FUNCTION_19_8();
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    OUTLINED_FUNCTION_19_8();
    v9 = swift_allocObject();
    *(v9 + 16) = sub_231D54B90;
    *(v9 + 24) = v8;
    v30 = sub_231D54B84;
    v31 = v9;
    OUTLINED_FUNCTION_33_11();
    OUTLINED_FUNCTION_32_6();
    v28 = v10;
    v29 = &block_descriptor_534;
    v11 = _Block_copy(aBlock);

    OUTLINED_FUNCTION_27();
    v12 = swift_allocObject();
    *(v12 + 16) = &v32;
    OUTLINED_FUNCTION_19_8();
    v13 = swift_allocObject();
    *(v13 + 16) = sub_231D52F2C;
    *(v13 + 24) = v12;
    v30 = sub_231D54B8C;
    v31 = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    OUTLINED_FUNCTION_50_5();
    v28 = v14;
    v29 = &block_descriptor_544;
    v15 = _Block_copy(aBlock);

    OUTLINED_FUNCTION_92_3();
    OUTLINED_FUNCTION_20_9();
    v16 = swift_allocObject();
    OUTLINED_FUNCTION_113_3();
    *(v17 + 16) = v18;
    *(v17 + 24) = v4;
    OUTLINED_FUNCTION_21_7(v17);
    OUTLINED_FUNCTION_19_8();
    v19 = swift_allocObject();
    *(v19 + 16) = sub_231D549F4;
    *(v19 + 24) = v16;
    v30 = sub_231D54B88;
    v31 = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    OUTLINED_FUNCTION_49_7();
    v28 = v20;
    v29 = &block_descriptor_555;
    v21 = _Block_copy(aBlock);

    OUTLINED_FUNCTION_71_4(v26, sel_prepAndRunQuery_onPrep_onRow_onError_, v25);

    _Block_release(v21);
    _Block_release(v15);
    _Block_release(v11);

    v3 = v32;
  }

  else
  {
    sub_231D526EC();
    OUTLINED_FUNCTION_22_7();
    v22 = swift_allocError();
    OUTLINED_FUNCTION_7_16(v22, v23);
    swift_willThrow();
  }

  return v3;
}

void sub_231D4DEF0()
{
  OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_111_3();
  v2 = sub_231E0F950();
  OUTLINED_FUNCTION_24();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_1();
  v8 = v7 - v6;
  [v0 getDoubleForColumnName:"date" table:0];
  sub_231E0F860();
  sub_231D51D14(&unk_27DD74DD0, &qword_231E16E00, MEMORY[0x277CC9578], MEMORY[0x277CC9578]);
  OUTLINED_FUNCTION_74_1();
  OUTLINED_FUNCTION_82_1();
  (*(v4 + 32))(v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v1, v8, v2);
  OUTLINED_FUNCTION_113();
}

void sub_231D4E03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_60_5();
  v8 = v7;
  OUTLINED_FUNCTION_75_2();
  OUTLINED_FUNCTION_24();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_94_4();
  v12 = *(v6 + OBJC_IVAR____TtC22ProactiveSummarization29SummarizationPipelineDatabase_database);
  if (v12)
  {
    v41 = 0;
    v35 = v12;
    OUTLINED_FUNCTION_107_4();
    v13 = sub_231E115F0();
    v14 = OUTLINED_FUNCTION_70_4(v13);
    v15(v14);
    v16 = swift_allocObject();
    v17 = OUTLINED_FUNCTION_72_3(v16);
    v18(v17);
    OUTLINED_FUNCTION_19_8();
    v19 = swift_allocObject();
    *(v19 + 16) = sub_231D54B7C;
    *(v19 + 24) = v8;
    v39 = sub_231D54B84;
    v40 = v19;
    OUTLINED_FUNCTION_34_8();
    OUTLINED_FUNCTION_31_7();
    v37 = v20;
    v38 = &block_descriptor_565;
    v21 = _Block_copy(v36);

    OUTLINED_FUNCTION_27();
    v22 = swift_allocObject();
    *(v22 + 16) = &v41;
    OUTLINED_FUNCTION_19_8();
    v23 = swift_allocObject();
    *(v23 + 16) = sub_231D549FC;
    *(v23 + 24) = v22;
    v39 = sub_231D54B8C;
    v40 = v23;
    v36[0] = MEMORY[0x277D85DD0];
    OUTLINED_FUNCTION_48_6();
    v37 = v24;
    v38 = &block_descriptor_575;
    v25 = _Block_copy(v36);

    OUTLINED_FUNCTION_92_3();
    OUTLINED_FUNCTION_20_9();
    v26 = swift_allocObject();
    OUTLINED_FUNCTION_107_4();
    *(v27 + 16) = v28;
    *(v27 + 24) = v10;
    OUTLINED_FUNCTION_21_7(v27);
    OUTLINED_FUNCTION_19_8();
    v29 = swift_allocObject();
    *(v29 + 16) = sub_231D549F4;
    *(v29 + 24) = v26;
    v39 = sub_231D54B88;
    v40 = v29;
    v36[0] = MEMORY[0x277D85DD0];
    OUTLINED_FUNCTION_47_6();
    v37 = v30;
    v38 = &block_descriptor_586;
    v31 = _Block_copy(v36);

    OUTLINED_FUNCTION_71_4(v35, sel_prepAndRunQuery_onPrep_onRow_onError_, v34);

    _Block_release(v31);
    _Block_release(v25);
    _Block_release(v21);
  }

  else
  {
    sub_231D526EC();
    OUTLINED_FUNCTION_22_7();
    v32 = swift_allocError();
    OUTLINED_FUNCTION_7_16(v32, v33);
    swift_willThrow();
  }

  OUTLINED_FUNCTION_91_4();
  OUTLINED_FUNCTION_58_6();
}

void sub_231D4E36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_60_5();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_231E0F950();
  OUTLINED_FUNCTION_24();
  v15 = v14;
  v17 = *(v16 + 64);
  v19 = MEMORY[0x28223BE20](v18);
  v20 = (&v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v6 + OBJC_IVAR____TtC22ProactiveSummarization29SummarizationPipelineDatabase_database);
  if (!v21)
  {
    sub_231D526EC();
    OUTLINED_FUNCTION_22_7();
    v27 = swift_allocError();
    OUTLINED_FUNCTION_7_16(v27, v28);
    swift_willThrow();
    goto LABEL_13;
  }

  v99 = v19;
  v22 = v21;
  sub_231D4E03C(v13, v11, v9, v23, v24, v25);
  if (v7)
  {

LABEL_13:
    OUTLINED_FUNCTION_91_4();
    OUTLINED_FUNCTION_58_6();
    return;
  }

  v29 = v13;
  v30 = v26;
  v96 = v9;
  v97 = v29;
  v98 = v22;
  v95 = v26;
  if (!v26)
  {

    OUTLINED_FUNCTION_109_3();
LABEL_12:
    sub_231CB7448(v67, v30);
    sub_231CB7448(v20, v15);
    sub_231CB7448(v6, v11);
    goto LABEL_13;
  }

  v82 = 0;
  v31 = sub_231E115F0();
  v86 = (&v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v87 = v31;
  v32 = v15;
  v33 = v15[2];
  v93 = v15 + 2;
  v89 = v33;
  v34 = v86;
  v35 = v99;
  v33(v86, v96, v99);
  v36 = *(v32 + 80);
  v91 = ((v36 + 32) & ~v36) + v17;
  v92 = v36;
  v37 = (v36 + 32) & ~v36;
  v94 = v37;
  v38 = (v91 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  *(v39 + 16) = v97;
  *(v39 + 24) = v11;
  v40 = v32[4];
  v40(v39 + v37, v34, v35);
  *(v39 + v38) = v30;
  OUTLINED_FUNCTION_19_8();
  v41 = swift_allocObject();
  *(v41 + 16) = sub_231D52F34;
  *(v41 + 24) = v39;
  v85 = v39;
  v105 = sub_231D54B84;
  v106 = v41;
  v101 = MEMORY[0x277D85DD0];
  v102 = 1107296256;
  v15 = &v103;
  v103 = sub_231D4A118;
  v104 = &block_descriptor_596;
  v42 = _Block_copy(&v101);

  OUTLINED_FUNCTION_92_3();
  v90 = v37;
  OUTLINED_FUNCTION_20_9();
  v43 = swift_allocObject();
  OUTLINED_FUNCTION_90_4();
  v88 = v44 + 26;
  v45[2] = v44 + 26;
  v45[3] = v37;
  v45[4] = v44;
  v45[5] = 0x8000000231E34AE0;
  v81 = 0x8000000231E34AE0;
  OUTLINED_FUNCTION_19_8();
  v46 = swift_allocObject();
  *(v46 + 16) = sub_231D549F4;
  *(v46 + 24) = v43;
  v84 = v43;
  v105 = sub_231D54B88;
  v106 = v46;
  v101 = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_46_5();
  v103 = v47;
  v104 = &block_descriptor_607;
  v48 = _Block_copy(&v101);

  v49 = v87;
  OUTLINED_FUNCTION_114_1();
  [v50 v51];
  _Block_release(v48);
  _Block_release(v42);

  v100 = 0;
  v87 = sub_231E115F0();
  v20 = v86;
  v89(v86, v96, v35);
  v52 = swift_allocObject();
  *(v52 + 16) = v97;
  *(v52 + 24) = v11;
  v53 = OUTLINED_FUNCTION_87_4(v52);
  *(v54 - 256) = v32 + 4;
  v80 = v40;
  (v40)(v53);
  OUTLINED_FUNCTION_19_8();
  v55 = swift_allocObject();
  *(v55 + 16) = sub_231D53014;
  *(v55 + 24) = v52;
  v83 = v52;
  v105 = sub_231D54B84;
  v106 = v55;
  OUTLINED_FUNCTION_28_6();
  v103 = sub_231D4A118;
  v104 = &block_descriptor_617;
  v56 = _Block_copy(&v101);
  v79 = v11;

  OUTLINED_FUNCTION_27();
  v11 = swift_allocObject();
  v11[2] = &v100;
  OUTLINED_FUNCTION_19_8();
  v57 = swift_allocObject();
  *(v57 + 16) = sub_231D549FC;
  *(v57 + 24) = v11;
  v105 = sub_231D54B8C;
  v106 = v57;
  v101 = MEMORY[0x277D85DD0];
  v102 = 1107296256;
  v103 = sub_231D4A164;
  v104 = &block_descriptor_627;
  v58 = _Block_copy(&v101);

  OUTLINED_FUNCTION_20_9();
  v30 = swift_allocObject();
  v59 = v90;
  *(v30 + 16) = v88;
  *(v30 + 24) = v59;
  OUTLINED_FUNCTION_90_4();
  *(v60 + 32) = v61;
  *(v60 + 40) = 0x8000000231E34B70;
  OUTLINED_FUNCTION_19_8();
  v62 = swift_allocObject();
  *(v62 + 16) = sub_231D549F4;
  *(v62 + 24) = v30;
  v105 = sub_231D54B88;
  v106 = v62;
  v101 = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_46_5();
  v103 = v63;
  v104 = &block_descriptor_638;
  v64 = _Block_copy(&v101);

  v65 = v87;
  [v98 prepAndRunQuery:v87 onPrep:v56 onRow:v58 onError:v64];
  _Block_release(v64);
  _Block_release(v58);
  _Block_release(v56);

  v6 = v100;
  v66 = sub_231D128E4();
  if ((v66 * 10) >> 64 == (10 * v66) >> 63)
  {
    if (v6 >= 10 * v66)
    {
      v68 = sub_231E115F0();
      v89(v20, v96, v35);
      v15 = swift_allocObject();
      v69 = v97;
      v97 = v11;
      v70 = v79;
      v15[2] = v69;
      v15[3] = v70;
      v71 = OUTLINED_FUNCTION_87_4(v15);
      v80(v71);
      OUTLINED_FUNCTION_19_8();
      v72 = swift_allocObject();
      v20 = sub_231D53020;
      *(v72 + 16) = sub_231D53020;
      *(v72 + 24) = v15;
      v105 = sub_231D54B84;
      v106 = v72;
      OUTLINED_FUNCTION_28_6();
      v103 = sub_231D4A118;
      v104 = &block_descriptor_648;
      v73 = _Block_copy(&v101);

      OUTLINED_FUNCTION_20_9();
      v11 = swift_allocObject();
      v74 = v90;
      v11[2] = 0xD000000000000044;
      v11[3] = v74;
      v75 = v81;
      v11[4] = 0xD00000000000002ALL;
      v11[5] = v75;
      OUTLINED_FUNCTION_19_8();
      v76 = swift_allocObject();
      v6 = sub_231D549F4;
      *(v76 + 16) = sub_231D549F4;
      *(v76 + 24) = v11;
      v105 = sub_231D54B88;
      v106 = v76;
      v101 = MEMORY[0x277D85DD0];
      v102 = 1107296256;
      v103 = sub_231D4994C;
      v104 = &block_descriptor_659;
      v77 = _Block_copy(&v101);

      v78 = v98;
      [v98 prepAndRunQuery:v68 onPrep:v73 onRow:0 onError:v77];

      _Block_release(v77);
      _Block_release(v73);
    }

    else
    {

      OUTLINED_FUNCTION_109_3();
    }

    v67 = sub_231D549F4;
    goto LABEL_12;
  }

  __break(1u);
}

void sub_231D4EC98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = OUTLINED_FUNCTION_75_2();
  OUTLINED_FUNCTION_24();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_62_2();
  v14 = *(v3 + OBJC_IVAR____TtC22ProactiveSummarization29SummarizationPipelineDatabase_database);
  if (v14)
  {
    v50 = v4;
    v43 = v14;
    OUTLINED_FUNCTION_113_3();
    v15 = sub_231E115F0();
    v16 = OUTLINED_FUNCTION_78_2(v15);
    v17(v16);
    OUTLINED_FUNCTION_77_2();
    v18 = swift_allocObject();
    v19 = OUTLINED_FUNCTION_93_4(v18);
    v20(v19);
    v21 = (a3 + v12);
    *v21 = v6;
    v21[1] = v5;
    OUTLINED_FUNCTION_19_8();
    v22 = swift_allocObject();
    *(v22 + 16) = sub_231D530D4;
    *(v22 + 24) = a3;
    v47 = sub_231D54B84;
    v48 = v22;
    OUTLINED_FUNCTION_30_8();
    OUTLINED_FUNCTION_29_7();
    v45 = v23;
    v46 = &block_descriptor_669;
    v24 = _Block_copy(aBlock);

    OUTLINED_FUNCTION_67_5();
    OUTLINED_FUNCTION_20_9();
    v25 = swift_allocObject();
    OUTLINED_FUNCTION_113_3();
    *(v26 + 16) = v27;
    *(v26 + 24) = "ASC LIMIT :limit";
    OUTLINED_FUNCTION_21_7(v26);
    OUTLINED_FUNCTION_19_8();
    v28 = swift_allocObject();
    *(v28 + 16) = sub_231D549F4;
    *(v28 + 24) = v25;
    v47 = sub_231D54B88;
    v48 = v28;
    aBlock[0] = MEMORY[0x277D85DD0];
    OUTLINED_FUNCTION_42_7();
    v45 = v29;
    v46 = &block_descriptor_680;
    v30 = _Block_copy(aBlock);

    OUTLINED_FUNCTION_84_3(v31, sel_prepAndRunQuery_onPrep_onRow_onError_);
    _Block_release(v30);
    _Block_release(v24);

    v32 = sub_231D13404();
    sub_231D4EF38(v32, v33, v34, v35, v36, v37, v38, v39, v42, v43, aBlock[0], aBlock[1], v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, vars0, vars8);
  }

  else
  {
    sub_231D526EC();
    OUTLINED_FUNCTION_22_7();
    v40 = swift_allocError();
    OUTLINED_FUNCTION_7_16(v40, v41);
    swift_willThrow();
  }

  OUTLINED_FUNCTION_91_4();
}

void sub_231D4F0D0(uint64_t a1)
{
  OUTLINED_FUNCTION_40_6();
  OUTLINED_FUNCTION_65_4();
  v4 = sub_231E0F950();
  OUTLINED_FUNCTION_24();
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_12();
  v8 = *(v1 + OBJC_IVAR____TtC22ProactiveSummarization29SummarizationPipelineDatabase_database);
  if (v8)
  {
    v9 = v8;
    sub_231E115F0();
    v10 = OUTLINED_FUNCTION_14_8();
    v11(v10);
    OUTLINED_FUNCTION_63_4();
    v12 = OUTLINED_FUNCTION_119_2();
    v13 = OUTLINED_FUNCTION_18_9(v12);
    v14(v13);
    OUTLINED_FUNCTION_19_8();
    v15 = swift_allocObject();
    *(v15 + 16) = sub_231D54B78;
    *(v15 + 24) = v2;
    v24 = sub_231D54B84;
    v25 = v15;
    OUTLINED_FUNCTION_5_18();
    OUTLINED_FUNCTION_4_14();
    v22 = v16;
    v23 = &block_descriptor_711;
    _Block_copy(v21);
    OUTLINED_FUNCTION_105_4();
    OUTLINED_FUNCTION_26_7();
    OUTLINED_FUNCTION_20_9();
    v17 = swift_allocObject();
    OUTLINED_FUNCTION_15_12(v17);
    OUTLINED_FUNCTION_19_8();
    v18 = swift_allocObject();
    *(v18 + 16) = sub_231D549F4;
    *(v18 + 24) = v3;
    v24 = sub_231D54B88;
    v25 = v18;
    v21[0] = MEMORY[0x277D85DD0];
    OUTLINED_FUNCTION_6_16();
    v22 = v19;
    v23 = &block_descriptor_722;
    _Block_copy(v21);
    v20 = OUTLINED_FUNCTION_106_4();
    OUTLINED_FUNCTION_8_13(v20, sel_prepAndRunQuery_onPrep_onRow_onError_);
    _Block_release(v6);
    _Block_release(v4);
  }

  OUTLINED_FUNCTION_39_5();
}

void sub_231D4F2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_60_5();
  v8 = v7;
  OUTLINED_FUNCTION_75_2();
  OUTLINED_FUNCTION_24();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_94_4();
  v12 = *(v6 + OBJC_IVAR____TtC22ProactiveSummarization29SummarizationPipelineDatabase_database);
  if (v12)
  {
    v39 = 0;
    v33 = v12;
    v13 = sub_231E115F0();
    v14 = OUTLINED_FUNCTION_70_4(v13);
    v15(v14);
    v16 = swift_allocObject();
    v17 = OUTLINED_FUNCTION_72_3(v16);
    v18(v17);
    OUTLINED_FUNCTION_19_8();
    v19 = swift_allocObject();
    *(v19 + 16) = sub_231D53184;
    *(v19 + 24) = v8;
    v37 = sub_231D54B84;
    v38 = v19;
    OUTLINED_FUNCTION_34_8();
    OUTLINED_FUNCTION_31_7();
    v35 = v20;
    v36 = &block_descriptor_732;
    v21 = _Block_copy(v34);

    OUTLINED_FUNCTION_27();
    v22 = swift_allocObject();
    *(v22 + 16) = &v39;
    OUTLINED_FUNCTION_19_8();
    v23 = swift_allocObject();
    *(v23 + 16) = sub_231D53228;
    *(v23 + 24) = v22;
    v37 = sub_231D54B8C;
    v38 = v23;
    v34[0] = MEMORY[0x277D85DD0];
    OUTLINED_FUNCTION_48_6();
    v35 = v24;
    v36 = &block_descriptor_742;
    v25 = _Block_copy(v34);

    OUTLINED_FUNCTION_92_3();
    OUTLINED_FUNCTION_20_9();
    v26 = swift_allocObject();
    *(v26 + 16) = 0xD000000000000038;
    *(v26 + 24) = v10;
    OUTLINED_FUNCTION_21_7(v26);
    OUTLINED_FUNCTION_19_8();
    v27 = swift_allocObject();
    *(v27 + 16) = sub_231D549F4;
    *(v27 + 24) = v26;
    v37 = sub_231D54B88;
    v38 = v27;
    v34[0] = MEMORY[0x277D85DD0];
    OUTLINED_FUNCTION_47_6();
    v35 = v28;
    v36 = &block_descriptor_753;
    v29 = _Block_copy(v34);

    OUTLINED_FUNCTION_71_4(v33, sel_prepAndRunQuery_onPrep_onRow_onError_, v32);

    _Block_release(v29);
    _Block_release(v25);
    _Block_release(v21);
  }

  else
  {
    sub_231D526EC();
    OUTLINED_FUNCTION_22_7();
    v30 = swift_allocError();
    OUTLINED_FUNCTION_7_16(v30, v31);
    swift_willThrow();
  }

  OUTLINED_FUNCTION_91_4();
  OUTLINED_FUNCTION_58_6();
}

void sub_231D4F620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = OUTLINED_FUNCTION_75_2();
  OUTLINED_FUNCTION_24();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_62_2();
  v14 = *(v3 + OBJC_IVAR____TtC22ProactiveSummarization29SummarizationPipelineDatabase_database);
  if (v14)
  {
    v48 = v4;
    v41 = v14;
    v15 = sub_231E115F0();
    v16 = OUTLINED_FUNCTION_78_2(v15);
    v17(v16);
    OUTLINED_FUNCTION_77_2();
    v18 = swift_allocObject();
    v19 = OUTLINED_FUNCTION_93_4(v18);
    v20(v19);
    v21 = (a3 + v12);
    *v21 = v6;
    v21[1] = v5;
    OUTLINED_FUNCTION_19_8();
    v22 = swift_allocObject();
    *(v22 + 16) = sub_231D54B80;
    *(v22 + 24) = a3;
    v45 = sub_231D54B84;
    v46 = v22;
    OUTLINED_FUNCTION_30_8();
    OUTLINED_FUNCTION_29_7();
    v43 = v23;
    v44 = &block_descriptor_763;
    v24 = _Block_copy(aBlock);

    OUTLINED_FUNCTION_67_5();
    OUTLINED_FUNCTION_20_9();
    v25 = swift_allocObject();
    *(v25 + 16) = 0xD000000000000036;
    *(v25 + 24) = "Exists(bundleId:before:)";
    OUTLINED_FUNCTION_21_7(v25);
    OUTLINED_FUNCTION_19_8();
    v26 = swift_allocObject();
    *(v26 + 16) = sub_231D549F4;
    *(v26 + 24) = v25;
    v45 = sub_231D54B88;
    v46 = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    OUTLINED_FUNCTION_42_7();
    v43 = v27;
    v44 = &block_descriptor_774;
    v28 = _Block_copy(aBlock);

    OUTLINED_FUNCTION_84_3(v29, sel_prepAndRunQuery_onPrep_onRow_onError_);
    _Block_release(v28);
    _Block_release(v24);

    v30 = sub_231D13498();
    sub_231D4F8C8(v30, v31, v32, v33, v34, v35, v36, v37, v40, v41, aBlock[0], aBlock[1], v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, vars0, vars8);
  }

  else
  {
    sub_231D526EC();
    OUTLINED_FUNCTION_22_7();
    v38 = swift_allocError();
    OUTLINED_FUNCTION_7_16(v38, v39);
    swift_willThrow();
  }

  OUTLINED_FUNCTION_91_4();
}

void sub_231D4FA60(uint64_t a1)
{
  OUTLINED_FUNCTION_40_6();
  OUTLINED_FUNCTION_65_4();
  v4 = sub_231E0F950();
  OUTLINED_FUNCTION_24();
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_12();
  v8 = *(v1 + OBJC_IVAR____TtC22ProactiveSummarization29SummarizationPipelineDatabase_database);
  if (v8)
  {
    v9 = v8;
    sub_231E115F0();
    v10 = OUTLINED_FUNCTION_14_8();
    v11(v10);
    OUTLINED_FUNCTION_63_4();
    v12 = OUTLINED_FUNCTION_119_2();
    v13 = OUTLINED_FUNCTION_18_9(v12);
    v14(v13);
    OUTLINED_FUNCTION_19_8();
    v15 = swift_allocObject();
    *(v15 + 16) = sub_231D54B78;
    *(v15 + 24) = v2;
    v24 = sub_231D54B84;
    v25 = v15;
    OUTLINED_FUNCTION_5_18();
    OUTLINED_FUNCTION_4_14();
    v22 = v16;
    v23 = &block_descriptor_805;
    _Block_copy(v21);
    OUTLINED_FUNCTION_105_4();
    OUTLINED_FUNCTION_26_7();
    OUTLINED_FUNCTION_20_9();
    v17 = swift_allocObject();
    OUTLINED_FUNCTION_15_12(v17);
    OUTLINED_FUNCTION_19_8();
    v18 = swift_allocObject();
    *(v18 + 16) = sub_231D549F4;
    *(v18 + 24) = v3;
    v24 = sub_231D54B88;
    v25 = v18;
    v21[0] = MEMORY[0x277D85DD0];
    OUTLINED_FUNCTION_6_16();
    v22 = v19;
    v23 = &block_descriptor_816;
    _Block_copy(v21);
    v20 = OUTLINED_FUNCTION_106_4();
    OUTLINED_FUNCTION_8_13(v20, sel_prepAndRunQuery_onPrep_onRow_onError_);
    _Block_release(v6);
    _Block_release(v4);
  }

  OUTLINED_FUNCTION_39_5();
}

void sub_231D4FC7C(uint64_t a1)
{
  OUTLINED_FUNCTION_40_6();
  v4 = v3;
  OUTLINED_FUNCTION_111_3();
  v5 = sub_231E10E30();
  OUTLINED_FUNCTION_24();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_1();
  v11 = v10 - v9;
  v12 = *(v1 + OBJC_IVAR____TtC22ProactiveSummarization29SummarizationPipelineDatabase_database);
  if (v12)
  {
    v51 = MEMORY[0x277D84F90];
    v52 = MEMORY[0x277D84F90];
    v44 = v12;
    v13 = sub_231E115F0();
    v14 = swift_allocObject();
    *(v14 + 16) = v2;
    *(v14 + 24) = v4 & 1;
    OUTLINED_FUNCTION_19_8();
    v15 = swift_allocObject();
    *(v15 + 16) = sub_231D5339C;
    *(v15 + 24) = v14;
    v49 = sub_231D54B84;
    v50 = v15;
    v45 = MEMORY[0x277D85DD0];
    v46 = 1107296256;
    v47 = sub_231D4A118;
    v48 = &block_descriptor_826;
    v16 = _Block_copy(&v45);

    OUTLINED_FUNCTION_19_8();
    v17 = swift_allocObject();
    *(v17 + 16) = &v51;
    *(v17 + 24) = &v52;
    OUTLINED_FUNCTION_19_8();
    v18 = swift_allocObject();
    *(v18 + 16) = sub_231D53400;
    *(v18 + 24) = v17;
    v49 = sub_231D54B8C;
    v50 = v18;
    v45 = MEMORY[0x277D85DD0];
    v46 = 1107296256;
    v47 = sub_231D4A164;
    v48 = &block_descriptor_836;
    v19 = _Block_copy(&v45);

    OUTLINED_FUNCTION_20_9();
    v20 = swift_allocObject();
    v20[2] = 0xD000000000000021;
    v20[3] = 0x8000000231E35050;
    v20[4] = 0xD000000000000017;
    v20[5] = 0x8000000231E35080;
    OUTLINED_FUNCTION_19_8();
    v21 = swift_allocObject();
    *(v21 + 16) = sub_231D549F4;
    *(v21 + 24) = v20;
    v49 = sub_231D54B88;
    v50 = v21;
    OUTLINED_FUNCTION_11_13();
    v47 = sub_231D4994C;
    v48 = &block_descriptor_847;
    v22 = _Block_copy(&v45);

    [v44 prepAndRunQuery:v13 onPrep:v16 onRow:v19 onError:v22];
    _Block_release(v22);
    _Block_release(v19);
    _Block_release(v16);

    v23 = sub_231E115F0();
    OUTLINED_FUNCTION_27();
    v24 = swift_allocObject();
    *(v24 + 16) = &v51;
    OUTLINED_FUNCTION_19_8();
    v25 = swift_allocObject();
    *(v25 + 16) = sub_231D53408;
    *(v25 + 24) = v24;
    v49 = sub_231D54B84;
    v50 = v25;
    OUTLINED_FUNCTION_11_13();
    v47 = sub_231D4A118;
    v48 = &block_descriptor_857;
    v26 = _Block_copy(&v45);

    OUTLINED_FUNCTION_20_9();
    v27 = swift_allocObject();
    v27[2] = 0xD000000000000021;
    v27[3] = 0x8000000231E35050;
    v27[4] = 0xD000000000000019;
    v27[5] = 0x8000000231E350E0;
    OUTLINED_FUNCTION_19_8();
    v28 = swift_allocObject();
    v29 = sub_231D549F4;
    *(v28 + 16) = sub_231D549F4;
    *(v28 + 24) = v27;
    v49 = sub_231D54B88;
    v50 = v28;
    OUTLINED_FUNCTION_11_13();
    v47 = sub_231D4994C;
    v48 = &block_descriptor_868;
    v30 = _Block_copy(&v45);

    OUTLINED_FUNCTION_114_1();
    [v31 v32];

    _Block_release(v30);
    _Block_release(v26);
  }

  else
  {
    sub_231D526EC();
    OUTLINED_FUNCTION_22_7();
    v33 = swift_allocError();
    OUTLINED_FUNCTION_7_16(v33, v34);
    swift_willThrow();
    v35 = v33;
    v36 = sub_231DC4C74();
    (*(v7 + 16))(v11, v36, v5);
    v37 = v33;
    v38 = sub_231E10E10();
    v39 = sub_231E11AD0();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = OUTLINED_FUNCTION_53();
      *v40 = 138412290;
      v42 = v33;
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 4) = v43;
      *v41 = v43;
      _os_log_impl(&dword_231CAE000, v38, v39, "Could not load requests from disk: %@", v40, 0xCu);
      sub_231CC154C(v41, &qword_27DD74D30, &unk_231E13480);
      OUTLINED_FUNCTION_12_11();
      MEMORY[0x23837E1D0]();
      OUTLINED_FUNCTION_12_11();
      MEMORY[0x23837E1D0]();
    }

    (*(v7 + 8))(v11, v5);
    v29 = 0;
    v27 = 0;
  }

  sub_231CB7448(v29, v27);
  OUTLINED_FUNCTION_39_5();
}

void sub_231D502D0()
{
  OUTLINED_FUNCTION_118();
  v29 = v0;
  v2 = v1;
  v4 = v3;
  sub_231E10E30();
  OUTLINED_FUNCTION_24();
  v30 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_1();
  v7 = OUTLINED_FUNCTION_83_3();
  type metadata accessor for SummarizationPipeline.Request(v7);
  OUTLINED_FUNCTION_24();
  v28 = v8;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  v15 = [v4 getInt64ForColumnName:"pk" table:0];
  sub_231D51D90(sub_231D520AC);
  v16 = *(*v2 + 16);
  sub_231D51E3C(v16, sub_231D520AC);
  v17 = *v2;
  *(v17 + 16) = v16 + 1;
  *(v17 + 8 * v16 + 32) = v15;
  v18 = [v4 getNSDataForColumnName:"payload" table:0];
  if (v18)
  {
    v19 = v18;
    v20 = sub_231E0F840();
    v22 = v21;

    sub_231E0F440();
    swift_allocObject();
    sub_231E0F430();
    OUTLINED_FUNCTION_51_4();
    sub_231D534E8(v23, v24, &unk_231E1ECF8);
    sub_231E0F420();

    sub_231D546C8(v14, v12, type metadata accessor for SummarizationPipeline.Request);
    v25 = v29;
    sub_231D51D14(&qword_27DD74DC0, &qword_231E1CA90, type metadata accessor for SummarizationPipeline.Request, type metadata accessor for SummarizationPipeline.Request);
    v26 = *(*v25 + 16);
    sub_231D51DEC(v26, &qword_27DD74DC0, &qword_231E1CA90, type metadata accessor for SummarizationPipeline.Request, type metadata accessor for SummarizationPipeline.Request);
    sub_231CF4354(v20, v22);
    sub_231D53530(v14);
    OUTLINED_FUNCTION_82_1();
    sub_231D547D8(v12, v27 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v26, type metadata accessor for SummarizationPipeline.Request);
  }

  OUTLINED_FUNCTION_113();
}

uint64_t sub_231D50730(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_231D54470(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_231D54470((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_231CE1044(&v8, (v2 + 32 * v6 + 32));
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_231D50EC8(uint64_t a1)
{
  OUTLINED_FUNCTION_40_6();
  OUTLINED_FUNCTION_65_4();
  v4 = sub_231E0F950();
  OUTLINED_FUNCTION_24();
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_12();
  v8 = *(v1 + OBJC_IVAR____TtC22ProactiveSummarization29SummarizationPipelineDatabase_database);
  if (v8)
  {
    v9 = v8;
    sub_231E115F0();
    v10 = OUTLINED_FUNCTION_14_8();
    v11(v10);
    OUTLINED_FUNCTION_63_4();
    v12 = OUTLINED_FUNCTION_119_2();
    v13 = OUTLINED_FUNCTION_18_9(v12);
    v14(v13);
    OUTLINED_FUNCTION_19_8();
    v15 = swift_allocObject();
    *(v15 + 16) = sub_231D5380C;
    *(v15 + 24) = v2;
    v24 = sub_231D54B84;
    v25 = v15;
    OUTLINED_FUNCTION_5_18();
    OUTLINED_FUNCTION_4_14();
    v22 = v16;
    v23 = &block_descriptor_920;
    _Block_copy(v21);
    OUTLINED_FUNCTION_105_4();
    OUTLINED_FUNCTION_26_7();
    OUTLINED_FUNCTION_20_9();
    v17 = swift_allocObject();
    OUTLINED_FUNCTION_15_12(v17);
    OUTLINED_FUNCTION_19_8();
    v18 = swift_allocObject();
    *(v18 + 16) = sub_231D549F4;
    *(v18 + 24) = v3;
    v24 = sub_231D54B88;
    v25 = v18;
    v21[0] = MEMORY[0x277D85DD0];
    OUTLINED_FUNCTION_6_16();
    v22 = v19;
    v23 = &block_descriptor_931;
    _Block_copy(v21);
    v20 = OUTLINED_FUNCTION_106_4();
    OUTLINED_FUNCTION_8_13(v20, sel_prepAndRunQuery_onPrep_onRow_onError_);
    _Block_release(v6);
    _Block_release(v4);
  }

  OUTLINED_FUNCTION_39_5();
}

uint64_t sub_231D510E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_231E11D70();

  aBlock = 0xD000000000000015;
  v21 = 0x8000000231E352C0;
  MEMORY[0x23837CC20](a1, a2);
  v6 = *(v2 + OBJC_IVAR____TtC22ProactiveSummarization29SummarizationPipelineDatabase_database);
  if (v6)
  {
    v26 = 0;
    v7 = v6;
    v19 = sub_231E115F0();

    OUTLINED_FUNCTION_27();
    v8 = swift_allocObject();
    *(v8 + 16) = &v26;
    OUTLINED_FUNCTION_19_8();
    v9 = swift_allocObject();
    *(v9 + 16) = sub_231D53888;
    *(v9 + 24) = v8;
    v24 = sub_231D54B8C;
    v25 = v9;
    aBlock = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = sub_231D4A164;
    v23 = &block_descriptor_941;
    v10 = _Block_copy(&aBlock);

    aBlock = 0x6D614E656C626174;
    v21 = 0xEB00000000203A65;
    MEMORY[0x23837CC20](a1, a2);
    v11 = aBlock;
    v12 = v21;
    OUTLINED_FUNCTION_20_9();
    v13 = swift_allocObject();
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x8000000231E352E0;
    v13[4] = v11;
    v13[5] = v12;
    OUTLINED_FUNCTION_19_8();
    v14 = swift_allocObject();
    *(v14 + 16) = sub_231D549F4;
    *(v14 + 24) = v13;
    v24 = sub_231D54B88;
    v25 = v14;
    aBlock = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = sub_231D4994C;
    v23 = &block_descriptor_952;
    v15 = _Block_copy(&aBlock);

    [v7 prepAndRunQuery:v19 onPrep:0 onRow:v10 onError:v15];

    _Block_release(v15);
    _Block_release(v10);

    v3 = v26;
  }

  else
  {

    sub_231D526EC();
    OUTLINED_FUNCTION_22_7();
    v16 = swift_allocError();
    OUTLINED_FUNCTION_7_16(v16, v17);
    swift_willThrow();
  }

  return v3;
}

void sub_231D513E8()
{
  OUTLINED_FUNCTION_118();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_111_3();
  v9 = sub_231E10E30();
  OUTLINED_FUNCTION_24();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_1();
  v15 = v14 - v13;
  v16 = sub_231DC4C74();
  (*(v11 + 16))(v15, v16, v9);

  v17 = v0;
  v18 = sub_231E10E10();
  v19 = sub_231E11AE0();

  if (os_log_type_enabled(v18, v19))
  {
    v24 = v8;
    v20 = swift_slowAlloc();
    v25 = v4;
    v21 = OUTLINED_FUNCTION_53();
    v26 = swift_slowAlloc();
    *v20 = 136315650;
    *(v20 + 4) = sub_231CB5000(v24, v6, &v26);
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_231CB5000(v25, v2, &v26);
    *(v20 + 22) = 2112;
    v22 = v0;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 24) = v23;
    *v21 = v23;
    _os_log_impl(&dword_231CAE000, v18, v19, "%s: %s failed: %@", v20, 0x20u);
    sub_231CC154C(v21, &qword_27DD74D30, &unk_231E13480);
    OUTLINED_FUNCTION_12_11();
    MEMORY[0x23837E1D0]();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12_11();
    MEMORY[0x23837E1D0]();
    OUTLINED_FUNCTION_12_11();
    MEMORY[0x23837E1D0]();

    (*(v11 + 8))(v15, v9);
  }

  else
  {

    (*(v11 + 8))(v15, v9);
  }

  OUTLINED_FUNCTION_113();
}

uint64_t sub_231D51648(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  v45 = *MEMORY[0x277D85DE8];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74DE8, &qword_231E1CAA8);
  if (swift_dynamicCast())
  {
    sub_231CB6D84(v40, &v43);
    __swift_project_boxed_opaque_existential_0(&v43, v44);
    sub_231E0F5B0();
    v40[0] = v42;
    __swift_destroy_boxed_opaque_existential_0(&v43);
    goto LABEL_59;
  }

  v41 = 0;
  memset(v40, 0, sizeof(v40));
  sub_231CC154C(v40, &qword_27DD74DF0, &qword_231E1CAB0);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v40[0] = a1;
    *(&v40[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v5 = v40;
    v6 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = sub_231E11DF0();
  }

  sub_231D53E30(v5, v6, &v43);
  v7 = *(&v43 + 1);
  v8 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    v40[0] = v43;
    goto LABEL_59;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v40[0] = MEMORY[0x23837AD00](v9);
  *(&v40[0] + 1) = v10;
  MEMORY[0x28223BE20](*&v40[0]);
  v34[2] = v39;
  v11 = sub_231D53F4C(sub_231D5475C, v34);
  v13 = *(&v40[0] + 1) >> 62;
  v14 = v11;
  v16 = v15;
  v18 = v17;
  v19 = BYTE14(v40[0]);
  switch(*(&v40[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v20) = DWORD1(v40[0]) - LODWORD(v40[0]);
      if (__OFSUB__(DWORD1(v40[0]), v40[0]))
      {
        goto LABEL_66;
      }

      v20 = v20;
LABEL_22:
      if (v12 == v20)
      {
        goto LABEL_23;
      }

      if (v13 == 2)
      {
        v19 = *(*&v40[0] + 24);
      }

      else if (v13 == 1)
      {
        v19 = *&v40[0] >> 32;
      }

      goto LABEL_56;
    case 2:
      v22 = *(*&v40[0] + 16);
      v21 = *(*&v40[0] + 24);
      v23 = __OFSUB__(v21, v22);
      v20 = v21 - v22;
      if (!v23)
      {
        goto LABEL_22;
      }

      __break(1u);
LABEL_18:
      if (v12)
      {
        v19 = 0;
LABEL_56:
        if (v19 < v12)
        {
          __break(1u);
LABEL_66:
          __break(1u);
        }

        sub_231E0F7F0();
LABEL_58:

        goto LABEL_59;
      }

LABEL_23:
      v34[4] = v4;
      v35 = v8;
      v36 = v7;
      LOBYTE(v24) = 0;
      if ((v16 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(v16) & 0xF;
      }

      else
      {
        v25 = v11 & 0xFFFFFFFFFFFFLL;
      }

      v26 = (v11 >> 59) & 1;
      if ((v16 & 0x1000000000000000) == 0)
      {
        LOBYTE(v26) = 1;
      }

      v27 = 4 << v26;
      v37 = (v16 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v38 = v16 & 0xFFFFFFFFFFFFFFLL;
      *(&v42 + 7) = 0;
      *&v42 = 0;
      break;
    case 3:
      goto LABEL_18;
    default:
      v20 = BYTE14(v40[0]);
      goto LABEL_22;
  }

  while (4 * v25 != v18 >> 14)
  {
    v4 = v18 & 0xC;
    v28 = v18;
    if (v4 == v27)
    {
      v28 = sub_231CC140C(v18, v14, v16);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v25)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v9 = sub_231E11730();
      v8 = 0;
      v7 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v16 & 0x1000000000000000) != 0)
    {
      v31 = sub_231E11760();
    }

    else if ((v16 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_231E11DF0();
      }

      v31 = *(v30 + v29);
    }

    if (v4 == v27)
    {
      v18 = sub_231CC140C(v18, v14, v16);
      if ((v16 & 0x1000000000000000) == 0)
      {
LABEL_41:
        v18 = (v18 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_46;
      }
    }

    else if ((v16 & 0x1000000000000000) == 0)
    {
      goto LABEL_41;
    }

    if (v25 <= v18 >> 16)
    {
      goto LABEL_62;
    }

    v18 = sub_231E11740();
LABEL_46:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_61;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_231E0F810();
      LOBYTE(v24) = 0;
    }
  }

  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_231E0F810();
    sub_231CF4340(v35, v36);
    goto LABEL_58;
  }

  sub_231CF4340(v35, v36);
LABEL_59:
  v32 = v40[0];
  sub_231CF4400(*&v40[0], *(&v40[0] + 1));

  sub_231CF4354(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_231D51B50(uint64_t a1)
{
  v2 = sub_231E114D0();
  v8 = v2;
  v9 = sub_231D534E8(&qword_27DD74DE0, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  v4 = *(v2 - 8);
  (*(v4 + 16))(boxed_opaque_existential_1, a1, v2);
  __swift_project_boxed_opaque_existential_0(v7, v8);
  sub_231E0F5B0();
  __swift_destroy_boxed_opaque_existential_0(v7);
  (*(v4 + 8))(a1, v2);
  return v6;
}

uint64_t sub_231D51CD0()
{
  swift_arrayDestroy();

  return swift_deallocClassInstance();
}

void *sub_231D51D14(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  v9 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v9;
  if (!result)
  {
    result = sub_231D51F9C(result, *(v9 + 16) + 1, 1, v9, a1, a2, a3, a4);
    *v4 = result;
  }

  return result;
}

uint64_t sub_231D51D90(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

void *sub_231D51DEC(void *result, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void))
{
  v6 = *(*v5 + 24);
  if (result + 1 > (v6 >> 1))
  {
    result = sub_231D51F9C((v6 > 1), result + 1, 1, *v5, a2, a3, a4, a5);
    *v5 = result;
  }

  return result;
}

uint64_t sub_231D51E3C(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

char *sub_231D51E84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74DF8, &qword_231E1CAB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_231D51F9C(void *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t), uint64_t (*a8)(void))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  v15 = sub_231D521AC(v14, v13, a5, a6, a7);
  v16 = *(a8(0) - 8);
  if (v11)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    sub_231D5229C(a4 + v17, v14, v15 + v17, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v15;
}

char *sub_231D520AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74DC8, &unk_231E1CA98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

void *sub_231D521AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = OUTLINED_FUNCTION_65_4();
  v9 = a5(v8);
  OUTLINED_FUNCTION_6(v9);
  v11 = *(v10 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v14);
  if (v11)
  {
    if ((result - v13) != 0x8000000000000000 || v11 != -1)
    {
      v14[2] = a1;
      v14[3] = 2 * ((result - v13) / v11);
      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_231D5229C(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (a4(0), OUTLINED_FUNCTION_12(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_58();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_58();

    swift_arrayInitWithTakeBackToFront();
  }
}

unint64_t sub_231D5235C()
{
  result = qword_2814CBD60;
  if (!qword_2814CBD60)
  {
    sub_231CC1784(255, &qword_2814CBD70, 0x277CCABB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814CBD60);
  }

  return result;
}

id sub_231D523C4(void *a1)
{
  v3 = *(v1 + 32);
  v4 = OUTLINED_FUNCTION_81_4();
  [a1 bindNamedParam:":kind" toInteger:{sub_231E0B5A4(v4, v5)}];
  v6 = OUTLINED_FUNCTION_81_4();
  v8 = sub_231E0B568(v6, v7);
  OUTLINED_FUNCTION_103_2(":bundleId", v9, v8, v9);
  v10 = sub_231CE6BB8(v3);

  return [a1 bindNamedParam:":computationType" toInteger:v10];
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_231D52480(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 40);

  [a1 getDoubleForColumnName:"tokenCount" table:0];
  v6 = v5;
  [a1 getDoubleForColumnName:"timestampLastReplenished" table:0];
  v7 = OUTLINED_FUNCTION_81_4();
  sub_231E0B5EC(v7, v8, v4, v9, v6, v10);
  v11 = *v3;
  v12 = *(v3 + 8);
  *v3 = v14;
  *(v3 + 16) = v15;
  *(v3 + 24) = v16;
  sub_231D54834(v11, v12);
  return *MEMORY[0x277D42698];
}

id sub_231D525BC(void *a1)
{
  v3 = OUTLINED_FUNCTION_81_4();
  [a1 bindNamedParam:":kind" toInteger:{sub_231E0B5A4(v3, v4)}];
  v5 = OUTLINED_FUNCTION_81_4();
  v7 = sub_231E0B568(v5, v6);
  OUTLINED_FUNCTION_103_2(":bundleId", v8, v7, v8);
  [a1 bindNamedParam:":computationType" toInteger:sub_231CE6BB8(*(v1 + 32))];
  [a1 bindNamedParam:":tokenCount" toDouble:*(v1 + 40)];
  v9 = *(v1 + 48);

  return [a1 bindNamedParam:":timestampLastReplenished" toDouble:v9];
}

unint64_t sub_231D526EC()
{
  result = qword_2814CD038[0];
  if (!qword_2814CD038[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814CD038);
  }

  return result;
}

id sub_231D52740(void *a1)
{
  v3 = sub_231CE6BB8(*(v1 + 16));

  return [a1 bindNamedParam:":computationType" toInteger:v3];
}

void sub_231D52790()
{
  v2 = OUTLINED_FUNCTION_102_2();
  OUTLINED_FUNCTION_6(v2);
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = v1[9];
  v10 = (v1 + ((*(v4 + 64) + ((*(v3 + 80) + 88) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = v10[1];
  v13 = *v10;
  v14 = v1[10];
  sub_231D54608(":bundleId", v1[2], v1[3], v0);
  if (v5)
  {
    v5 = sub_231E115F0();
  }

  [v0 bindNamedParam:":sender" toNSString:{v5, v13}];

  sub_231D54668(":title", v6, v7, v0);
  sub_231D54668(":body", v8, v9, v0);
  [v0 bindNamedParam:":label" toInteger:v14];
  sub_231E0F870();
  [v0 bindNamedParam:":timestamp" toDouble:?];
  if (v11)
  {
    v12 = sub_231E115F0();
  }

  else
  {
    v12 = 0;
  }

  v15 = v12;
  [v0 bindNamedParam:":textContent" toNSString:?];
}

id sub_231D52978(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  sub_231D54608(":bundleId", v3, v4, a1);

  return sub_231D54608(":sender", v6, v5, a1);
}

uint64_t sub_231D529E0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = [a1 getNSDataForColumnName:"title" table:0];
  if (v3)
  {
    v4 = v3;
    sub_231E0F840();

    v5 = OUTLINED_FUNCTION_86_4();
    v7 = [v5 v6];
    if (v7)
    {
      v8 = v7;
      sub_231E0F840();

      v9 = OUTLINED_FUNCTION_88_4();
      sub_231D4BF18(v9, v10);
      v11 = OUTLINED_FUNCTION_80();
      sub_231D4BF18(v11, v12);
      v13 = OUTLINED_FUNCTION_86_4();
      [v13 v14];
      nullsub_1();
      v16 = v15;
      v18 = v17;
      v20 = v19;
      sub_231D51D90(sub_231D51E84);
      v21 = *(*v2 + 16);
      sub_231D51E3C(v21, sub_231D51E84);
      v22 = OUTLINED_FUNCTION_88_4();
      sub_231CF4354(v22, v23);
      v24 = OUTLINED_FUNCTION_80();
      sub_231CF4354(v24, v25);
      v26 = *v2;
      *(v26 + 16) = v21 + 1;
      v27 = (v26 + 24 * v21);
      v27[4] = v16;
      v27[5] = v18;
      v27[6] = v20;
    }

    else
    {
      v28 = OUTLINED_FUNCTION_88_4();
      sub_231CF4354(v28, v29);
    }
  }

  return *MEMORY[0x277D42690];
}

id sub_231D52B5C()
{
  v1 = OUTLINED_FUNCTION_102_2();
  OUTLINED_FUNCTION_47(v1);
  sub_231D4C6B8();
  [v0 bindNamedParam:":bundleId" toInteger:v2];
  OUTLINED_FUNCTION_81_4();
  sub_231D4C6B8();
  [v0 bindNamedParam:":title" toInteger:v3];
  sub_231E0F870();

  return [v0 bindNamedParam:":timestamp" toDouble:?];
}

id sub_231D52C2C(void *a1)
{
  sub_231D4C6B8();
  [a1 bindNamedParam:":bundleId" toInteger:v2];
  sub_231D4C6B8();

  return [a1 bindNamedParam:":title" toInteger:v3];
}

uint64_t sub_231D52CAC(void *a1)
{
  v2 = *(v1 + 16);
  *v2 = [a1 getIntegerForColumn_];
  *(v2 + 8) = 0;
  return *MEMORY[0x277D42698];
}

id sub_231D52CF0(void *a1)
{
  sub_231D4C6B8();

  return [a1 bindNamedParam:":bundleId" toInteger:v2];
}

id sub_231D52D40(void *a1)
{
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  v6 = v1[9];
  sub_231D54608(":bundleId", v1[2], v1[3], a1);
  OUTLINED_FUNCTION_64_3();
  sub_231D54608(v7, v8, v9, a1);
  sub_231D54608(":domainId", v3, v4, a1);
  sub_231D54608(":sectionId", v5, v6, a1);
  v10 = OUTLINED_FUNCTION_99_3();

  return [v10 v11];
}

uint64_t sub_231D52E04(void *a1)
{
  v2 = *(v1 + 16);
  [a1 getDoubleForColumnName:"date" table:0];
  *v2 = v3;
  *(v2 + 8) = 0;
  return *MEMORY[0x277D42690];
}

id sub_231D52E50()
{
  OUTLINED_FUNCTION_118();
  v2 = v1;
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v8 = *(v0 + 80);
  [v1 bindNamedParam:":date" toDouble:*(v0 + 16)];
  OUTLINED_FUNCTION_64_3();
  sub_231D54608(v9, v10, v11, v2);
  sub_231D54608(":threadId", v3, v4, v2);
  sub_231D54608(":domainId", v5, v6, v2);
  sub_231D54608(":sectionId", v7, v8, v2);
  OUTLINED_FUNCTION_99_3();
  OUTLINED_FUNCTION_113();

  return [v12 v13];
}

id sub_231D52F34()
{
  v2 = OUTLINED_FUNCTION_102_2();
  OUTLINED_FUNCTION_6(v2);
  v5 = *(v1 + ((*(v4 + 64) + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_231D54608(":bundleId", *(v1 + 16), *(v1 + 24), v0);
  sub_231E0F870();
  result = [v0 bindNamedParam:":threshold" toDouble:?];
  if (__OFSUB__(v5, 1))
  {
    __break(1u);
  }

  else
  {

    return [v0 bindNamedParam:":limit" toInteger:v5 - 1];
  }

  return result;
}

id sub_231D53020()
{
  v2 = OUTLINED_FUNCTION_102_2();
  OUTLINED_FUNCTION_47(v2);
  sub_231D54608(":bundleId", *(v1 + 16), *(v1 + 24), v0);
  sub_231E0F870();
  [v0 bindNamedParam:":threshold" toDouble:?];
  v3 = sub_231D128E4();

  return [v0 bindNamedParam:":limit" toInteger:v3];
}

uint64_t objectdestroy_557Tm()
{
  sub_231E0F950();
  OUTLINED_FUNCTION_24();

  v0 = OUTLINED_FUNCTION_59_6();
  v1(v0);
  v2 = OUTLINED_FUNCTION_110_3();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

id sub_231D53190(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_65_4();
  v5 = sub_231E0F950();
  OUTLINED_FUNCTION_47(v5);
  sub_231D54608(":bundleId", *(v2 + 16), *(v2 + 24), v3);
  sub_231E0F870();

  return [v3 bindNamedParam:a2 toDouble:?];
}

uint64_t objectdestroy_661Tm()
{
  sub_231E0F950();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

id sub_231D532DC()
{
  v1 = OUTLINED_FUNCTION_102_2();
  OUTLINED_FUNCTION_6(v1);
  sub_231E0F870();
  [v0 bindNamedParam:":date" toDouble:?];
  OUTLINED_FUNCTION_64_3();

  return sub_231D54608(v2, v3, v4, v0);
}

id sub_231D5339C(void *a1)
{
  [a1 bindNamedParam:":n" toInteger:*(v1 + 16)];
  v2 = OUTLINED_FUNCTION_99_3();

  return [v2 v3];
}

void sub_231D53408(void *a1)
{

  sub_231D50730(v2);

  v3 = sub_231E11850();

  [a1 bindNamedParam:":pks" toNSArray:v3];
}

double sub_231D534A8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_231D534E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_231D53530(uint64_t a1)
{
  v2 = type metadata accessor for SummarizationPipeline.Request(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_231D5358C()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_102_2();
  OUTLINED_FUNCTION_6(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = type metadata accessor for EntityKind(0);
  OUTLINED_FUNCTION_6(v8);
  v11 = v2 + ((*(v10 + 64) + ((v5 + v7 + *(v9 + 80)) & ~*(v9 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = *(v11 + 16);
  sub_231E0F870();
  [v0 bindNamedParam:":date" toDouble:?];
  sub_231DBDCD8();
  OUTLINED_FUNCTION_103_2(":spotlightUniqueId", v16, v15, v16);
  sub_231DBDFFC();
  if (v17)
  {
    v18 = sub_231E115F0();
  }

  else
  {
    v18 = 0;
  }

  v19 = OUTLINED_FUNCTION_99_3();
  [v19 v20];

  sub_231DBE320();
  if (v21)
  {
    v22 = sub_231E115F0();
  }

  else
  {
    v22 = 0;
  }

  v23 = OUTLINED_FUNCTION_99_3();
  [v23 v24];

  sub_231D54668(":payload", v12, v13, v0);

  return [v0 bindNamedParam:":isRetry" toInteger:v14];
}

uint64_t objectdestroy_78Tm()
{
  sub_231E0F950();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

id sub_231D53810()
{
  v1 = OUTLINED_FUNCTION_102_2();
  OUTLINED_FUNCTION_47(v1);
  sub_231E0F870();

  return [v0 bindNamedParam:":threshold" toDouble:?];
}

uint64_t sub_231D53888(void *a1)
{
  v2 = *(v1 + 16);
  *v2 = [a1 getIntegerForColumn_];
  return *MEMORY[0x277D42698];
}

uint64_t objectdestroy_27Tm()
{

  OUTLINED_FUNCTION_20_9();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

unsigned __int16 *getEnumTagSinglePayload for SummarizationPipelineDatabaseError(unsigned __int16 *result, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2 + 0xFFFF;
  if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  switch(v4)
  {
    case 1:
      v4 = *(result + 2);
      if (!*(result + 2))
      {
        return v4;
      }

      goto LABEL_17;
    case 2:
      v4 = result[1];
      if (!result[1])
      {
        return v4;
      }

      goto LABEL_17;
    case 3:
      __break(1u);
      return result;
    case 4:
      v4 = *(result + 1);
      if (!v4)
      {
        return v4;
      }

LABEL_17:
      v4 = (*result | (v4 << 16)) - 0xFFFF;
      break;
    default:
      return v4;
  }

  return v4;
}

uint64_t storeEnumTagSinglePayload for SummarizationPipelineDatabaseError(uint64_t result, int a2, int a3)
{
  v3 = a3 + 0xFFFF;
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2)
  {
    v7 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    switch(v6)
    {
      case 1:
        *(result + 2) = v7;
        break;
      case 2:
        *(result + 2) = v7;
        break;
      case 3:
        goto LABEL_21;
      case 4:
        *(result + 2) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        *(result + 2) = 0;
        break;
      case 2:
        *(result + 2) = 0;
        break;
      case 3:
LABEL_21:
        __break(1u);
        break;
      case 4:
        *(result + 2) = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_231D53A64(unsigned __int8 *a1)
{
  if (a1[1])
  {
    return (*a1 | (a1[1] << 8)) - 255;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_231D53A84(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    v2 = ((a2 - 1) >> 8) + 1;
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  result[1] = v2;
  return result;
}

uint64_t sub_231D53AF0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_231D53B88(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_231D53C68(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void *sub_231D53CB4(uint64_t a1, unint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v5 = WORD2(a2);
  v4 = a2;
  return sub_231D4BE70(&v3, (a2 >> 51) & 0x1F);
}

char *sub_231D53D2C(uint64_t a1, uint64_t a2)
{
  result = sub_231E0F530();
  v5 = result;
  if (result)
  {
    result = sub_231E0F550();
    if (__OFSUB__(a1, result))
    {
LABEL_12:
      __break(1u);
      return result;
    }

    v5 += a1 - result;
  }

  v6 = __OFSUB__(a2, a1);
  v7 = a2 - a1;
  if (v6)
  {
    __break(1u);
    goto LABEL_12;
  }

  v8 = sub_231E0F540();
  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  return sub_231D4BE70(v5, v9 / 8);
}

uint64_t sub_231D53DC4(uint64_t a1)
{
  v2 = sub_231E0F530();
  if (v2)
  {
    v3 = v2;
    result = sub_231E0F550();
    if (__OFSUB__(a1, result))
    {
      __break(1u);
      goto LABEL_8;
    }

    v5 = a1 - result + v3;
  }

  else
  {
    v5 = 0;
  }

  result = sub_231E0F540();
  if (v5)
  {
    return *v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_231D53E30@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_231E0F790();
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_231E0F560();
      swift_allocObject();
      v8 = sub_231E0F520();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_231E0F7E0();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_231D53EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_231D54358(sub_231D547B8, v5, a1, a2);
}

uint64_t sub_231D53F4C(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v5 = v2;
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  switch(v6 >> 62)
  {
    case 1uLL:
      v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_231CF4354(v7, v6);
      *v5 = xmmword_231E1C970;
      sub_231CF4354(0, 0xC000000000000000);
      v13 = v7 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v13 < v7)
      {
        goto LABEL_23;
      }

      if (sub_231E0F530() && __OFSUB__(v7, sub_231E0F550()))
      {
        goto LABEL_24;
      }

      sub_231E0F560();
      swift_allocObject();
      v14 = sub_231E0F510();

      v12 = v14;
LABEL_16:
      if (v13 < v7)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v4 = sub_231D543BC(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (v3)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v4 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_231CF4354(v7, v6);
      v17 = v7;
      v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *v5 = xmmword_231E1C970;
      sub_231CF4354(0, 0xC000000000000000);
      sub_231E0F7A0();
      v7 = v17;
      v10 = sub_231D543BC(*(v17 + 16), *(v17 + 24), a1);
      if (v3)
      {
        v11 = v18 | 0x8000000000000000;
LABEL_18:
        *v5 = v7;
        v5[1] = v11;
      }

      else
      {
        v4 = v10;
        v11 = v18 | 0x8000000000000000;
LABEL_20:
        *v5 = v7;
        v5[1] = v11;
      }

      return v4;
    case 3uLL:
      memset(v19, 0, 15);
      a1(&v17, v19, v19);
      if (!v3)
      {
        return v17;
      }

      return v4;
    default:
      v4 = v7 >> 8;
      sub_231CF4354(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        v4 = v17;
      }

      v9 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v5 = v19[0];
      v5[1] = v9;
      return v4;
  }
}

uint64_t sub_231D54310(uint64_t result)
{
  if (result)
  {
    result = sub_231E11D80();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_231D54358(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_231D543BC(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_231E0F530();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_231E0F550();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_231E0F540();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

char *sub_231D54470(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_231D54490(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_231D54490(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD74DB0, &qword_231E1CA88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id sub_231D5459C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_231E115F0();

  v7 = [a4 bindNamedParam:a1 toNSString:v6];

  return v7;
}

id sub_231D54608(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_231E115F0();
  v7 = [a4 bindNamedParam:a1 toNSString:v6];

  return v7;
}

id sub_231D54668(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_231E0F820();
  v7 = [a4 bindNamedParam:a1 toNSData:v6];

  return v7;
}

uint64_t sub_231D546C8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  v4 = OUTLINED_FUNCTION_59_0();
  v5(v4);
  return a2;
}

void *sub_231D54724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_231D53EF8(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_231D54778@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_231D54310(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_231D547D8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  v4 = OUTLINED_FUNCTION_59_0();
  v5(v4);
  return a2;
}

uint64_t sub_231D54834(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_231D54848(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *v2;
  *v2 = a1;
  v4 = a1;

  return *MEMORY[0x277D42698];
}

id OUTLINED_FUNCTION_8_13(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

void *OUTLINED_FUNCTION_10_12(void *result)
{
  result[2] = v1;
  result[3] = v2;
  result[4] = 0;
  result[5] = 0xE000000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_21_7(uint64_t result)
{
  *(result + 32) = 0;
  *(result + 40) = 0xE000000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_56_7()
{
  v3 = *(v1 - 136);

  return sub_231D546C8(v3, v0, type metadata accessor for EntityKind);
}

uint64_t OUTLINED_FUNCTION_57_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  sub_231CB7448(a13, v16);
  sub_231CB7448(a9, a11);
  sub_231CB7448(v15, v18);
  sub_231CB7448(a14, a15);
  sub_231CB7448(a10, a12);
  return sub_231CB7448(v19, v17);
}

id OUTLINED_FUNCTION_69_4(int a1, const char *a2, int a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id a13)
{

  return [a13 a2];
}

id OUTLINED_FUNCTION_71_4(id a1, SEL a2, uint64_t a3)
{

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_72_3(uint64_t a1)
{
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
  return a1 + v1;
}

double OUTLINED_FUNCTION_73_3()
{

  return result;
}

void *OUTLINED_FUNCTION_74_1()
{
  v6 = *(*v0 + 16);

  return sub_231D51DEC(v6, v1, v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_75_2()
{

  return sub_231E0F950();
}

id OUTLINED_FUNCTION_80_2(int a1, const char *a2, int a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id a15)
{

  return [a15 a2];
}

id OUTLINED_FUNCTION_84_3(uint64_t a1, const char *a2)
{
  v6 = *(v4 - 136);
  v7 = *(v4 - 144);

  return [v6 a2];
}

uint64_t OUTLINED_FUNCTION_100_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
}

uint64_t OUTLINED_FUNCTION_101_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
}

uint64_t OUTLINED_FUNCTION_102_2()
{

  return sub_231E0F950();
}

id OUTLINED_FUNCTION_103_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_231D5459C(a1, a3, a4, v4);
}

uint64_t OUTLINED_FUNCTION_104_3()
{

  return sub_231E115F0();
}

uint64_t OUTLINED_FUNCTION_105_4()
{
}

uint64_t OUTLINED_FUNCTION_106_4()
{
}

uint64_t OUTLINED_FUNCTION_116_4()
{
}

uint64_t OUTLINED_FUNCTION_118_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
}

uint64_t OUTLINED_FUNCTION_119_2()
{

  return swift_allocObject();
}

uint64_t sub_231D553F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a1;
  v5[5] = a3;
  v6 = sub_231E0F950();
  v5[8] = v6;
  OUTLINED_FUNCTION_6(v6);
  v5[9] = v7;
  v5[10] = OUTLINED_FUNCTION_55();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74A88, &unk_231E231A0);
  OUTLINED_FUNCTION_47(v8);
  v5[11] = OUTLINED_FUNCTION_55();
  v9 = sub_231E10370();
  v5[12] = v9;
  OUTLINED_FUNCTION_6(v9);
  v5[13] = v10;
  v5[14] = OUTLINED_FUNCTION_69();
  v5[15] = swift_task_alloc();
  v11 = sub_231E106A0();
  v5[16] = v11;
  OUTLINED_FUNCTION_6(v11);
  v5[17] = v12;
  v5[18] = OUTLINED_FUNCTION_69();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v13 = sub_231E107F0();
  v5[22] = v13;
  OUTLINED_FUNCTION_6(v13);
  v5[23] = v14;
  v5[24] = OUTLINED_FUNCTION_69();
  v5[25] = swift_task_alloc();
  v15 = sub_231E104A0();
  v5[26] = v15;
  OUTLINED_FUNCTION_6(v15);
  v5[27] = v16;
  v5[28] = OUTLINED_FUNCTION_55();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E28, &unk_231E1CAF0);
  v5[29] = v17;
  OUTLINED_FUNCTION_47(v17);
  v5[30] = OUTLINED_FUNCTION_55();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74A80, &unk_231E230E0);
  OUTLINED_FUNCTION_47(v18);
  v5[31] = OUTLINED_FUNCTION_69();
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231D556B0, 0, 0);
}

void *sub_231D556B0()
{
  v1 = sub_231D56880(1, *(v0 + 48));
  if (v1)
  {
    OUTLINED_FUNCTION_8_14();
    v2 = 40;
    goto LABEL_3;
  }

  if ((sub_231D6DA98(v1) & 1) == 0)
  {
    v3 = sub_231E10550();
    if (v3 != 2 && (v3 & 1) != 0)
    {
      OUTLINED_FUNCTION_8_14();
      v2 = 15;
LABEL_3:
      v169 = v2;
LABEL_99:

      v130 = *(v0 + 8);

      return v130(v169, 0, v174);
    }

    v4 = *(v0 + 256);
    v6 = *(v0 + 232);
    v5 = *(v0 + 240);
    v7 = *(v0 + 208);
    v8 = *(v0 + 216);
    sub_231E10510();
    (*(v8 + 104))(v4, *MEMORY[0x277D42330], v7);
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v7);
    v9 = *(v6 + 48);
    v10 = OUTLINED_FUNCTION_57();
    sub_231D56C68(v10, v11);
    sub_231D56C68(v4, v5 + v9);
    if (__swift_getEnumTagSinglePayload(v5, 1, v7) == 1)
    {
      v12 = *(v0 + 264);
      v13 = *(v0 + 208);
      sub_231CE1118(*(v0 + 256), &qword_27DD74A80, &unk_231E230E0);
      sub_231CE1118(v12, &qword_27DD74A80, &unk_231E230E0);
      if (__swift_getEnumTagSinglePayload(v5 + v9, 1, v13) == 1)
      {
        sub_231CE1118(*(v0 + 240), &qword_27DD74A80, &unk_231E230E0);
LABEL_111:
        OUTLINED_FUNCTION_8_14();
        v2 = 16;
        goto LABEL_3;
      }

      goto LABEL_13;
    }

    v14 = *(v0 + 208);
    sub_231D56C68(*(v0 + 240), *(v0 + 248));
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5 + v9, 1, v14);
    v17 = *(v0 + 256);
    v16 = *(v0 + 264);
    if (EnumTagSinglePayload == 1)
    {
      sub_231CE1118(*(v0 + 256), &qword_27DD74A80, &unk_231E230E0);
      sub_231CE1118(v16, &qword_27DD74A80, &unk_231E230E0);
      v18 = OUTLINED_FUNCTION_102_0();
      v19(v18);
LABEL_13:
      sub_231CE1118(*(v0 + 240), &qword_27DD74E28, &unk_231E1CAF0);
      goto LABEL_14;
    }

    v174 = *(v0 + 240);
    v149 = *(v0 + 216);
    v148 = *(v0 + 224);
    v150 = *(v0 + 208);
    (*(v149 + 32))(v148, v5 + v9, v150);
    sub_231D57154(&qword_2814CB018, MEMORY[0x277D42338], MEMORY[0x277D42340]);
    v151 = sub_231E115D0();
    v152 = *(v149 + 8);
    v152(v148, v150);
    sub_231CE1118(v17, &qword_27DD74A80, &unk_231E230E0);
    sub_231CE1118(v16, &qword_27DD74A80, &unk_231E230E0);
    v153 = OUTLINED_FUNCTION_102_0();
    (v152)(v153);
    sub_231CE1118(v174, &qword_27DD74A80, &unk_231E230E0);
    if (v151)
    {
      goto LABEL_111;
    }
  }

LABEL_14:
  v162 = **(v0 + 32);
  v20 = *(v162 + 16);
  v21 = *(sub_231E104C0() + 16);
  v163 = v20;
  if (v21)
  {
    v22 = *(v0 + 184);
    v24 = *(v22 + 16);
    v23 = v22 + 16;
    v175 = v24;
    OUTLINED_FUNCTION_79();
    v27 = v25 + v26;
    v170 = *(v23 + 56);
    v28 = MEMORY[0x277D84F90];
    do
    {
      v29 = *(v0 + 200);
      v30 = *(v0 + 176);
      v175(v29, v27, v30);
      v31 = sub_231E107A0();
      v33 = v32;
      (*(v23 - 8))(v29, v30);
      if (v33)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_231CE0B9C(0, *(v28 + 2) + 1, 1, v28);
        }

        v35 = *(v28 + 2);
        v34 = *(v28 + 3);
        if (v35 >= v34 >> 1)
        {
          v28 = sub_231CE0B9C((v34 > 1), v35 + 1, 1, v28);
        }

        *(v28 + 2) = v35 + 1;
        v36 = &v28[16 * v35];
        *(v36 + 4) = v31;
        *(v36 + 5) = v33;
      }

      v27 += v170;
      --v21;
    }

    while (v21);

    v20 = v163;
  }

  else
  {

    v28 = MEMORY[0x277D84F90];
  }

  v157 = sub_231DC3C70(v28);

  if (sub_231D56968())
  {
    sub_231E10640();
    v156 = sub_231E116F0();

    if (v20)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v156 = 0;
    if (v20)
    {
LABEL_27:
      v171 = *(*(v0 + 136) + 16);
      OUTLINED_FUNCTION_79();
      v38 = v162 + v37;
      v166 = *(v39 + 56);
      v40 = (v39 - 8);
      v41 = MEMORY[0x277D84F90];
      do
      {
        v42 = *(v0 + 168);
        v43 = *(v0 + 128);
        v171(v42, v38, v43);
        v44 = sub_231E104C0();
        result = (*v40)(v42, v43);
        v46 = *(v44 + 16);
        v47 = *(v41 + 16);
        v48 = v47 + v46;
        if (__OFADD__(v47, v46))
        {
          goto LABEL_113;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (!result || v48 > *(v41 + 24) >> 1)
        {
          if (v47 <= v48)
          {
            v49 = v47 + v46;
          }

          else
          {
            v49 = v47;
          }

          result = sub_231D2E2AC(result, v49, 1, v41);
          v41 = result;
        }

        if (*(v44 + 16))
        {
          if ((*(v41 + 24) >> 1) - *(v41 + 16) < v46)
          {
            goto LABEL_115;
          }

          swift_arrayInitWithCopy();

          if (v46)
          {
            v50 = *(v41 + 16);
            v51 = __OFADD__(v50, v46);
            v52 = v50 + v46;
            if (v51)
            {
              goto LABEL_116;
            }

            *(v41 + 16) = v52;
          }
        }

        else
        {

          if (v46)
          {
            goto LABEL_114;
          }
        }

        v38 += v166;
        --v20;
      }

      while (v20);
      goto LABEL_45;
    }
  }

  v41 = MEMORY[0x277D84F90];
LABEL_45:
  v53 = *(v41 + 16);
  if (v53)
  {
    v172 = *(*(v0 + 184) + 16);
    OUTLINED_FUNCTION_79();
    v55 = v41 + v54;
    v167 = *(v56 + 56);
    v57 = (v56 - 8);
    v58 = MEMORY[0x277D84F90];
    do
    {
      v59 = *(v0 + 192);
      v60 = *(v0 + 176);
      v172(v59, v55, v60);
      v61 = sub_231E107A0();
      v63 = v62;
      (*v57)(v59, v60);
      if (v63)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v58 = sub_231CE0B9C(0, *(v58 + 2) + 1, 1, v58);
        }

        v65 = *(v58 + 2);
        v64 = *(v58 + 3);
        if (v65 >= v64 >> 1)
        {
          v58 = sub_231CE0B9C((v64 > 1), v65 + 1, 1, v58);
        }

        *(v58 + 2) = v65 + 1;
        v66 = &v58[16 * v65];
        *(v66 + 4) = v61;
        *(v66 + 5) = v63;
      }

      v55 += v167;
      --v53;
    }

    while (v53);
  }

  else
  {

    v58 = MEMORY[0x277D84F90];
  }

  v67 = *(v0 + 136);
  v68 = *(v0 + 104);
  v154 = sub_231DC3C70(v58);

  v69 = 0;
  v159 = (v68 + 32);
  v160 = (v68 + 8);
  v161 = (v68 + 104);
  v70 = (v67 + 8);
  v164 = *MEMORY[0x277D422D8];
  v155 = (v67 + 32);
  v158 = MEMORY[0x277D84F90];
  v72 = v162;
  v71 = v163;
  while (v71 != v69)
  {
    if (v69 >= *(v72 + 16))
    {
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
      goto LABEL_119;
    }

    v73 = *(v0 + 160);
    OUTLINED_FUNCTION_79();
    v165 = v74;
    v76 = *(v75 + 72);
    (*(v75 + 16))(v73, v72 + v74 + v76 * v69);
    v77 = sub_231E104D0();
    v79 = v78;
    v80 = sub_231E11620();
    if (!v79)
    {

      goto LABEL_67;
    }

    if (v77 == v80 && v79 == v81)
    {

      goto LABEL_73;
    }

    v83 = sub_231E12100();

    if (v83)
    {
LABEL_73:
      result = (*v70)(*(v0 + 160), *(v0 + 128));
      ++v69;
    }

    else
    {
LABEL_67:
      v85 = *(v0 + 88);
      v84 = *(v0 + 96);
      sub_231E104E0();
      v86 = __swift_getEnumTagSinglePayload(v85, 1, v84);
      v87 = *(v0 + 120);
      v89 = *(v0 + 88);
      v88 = *(v0 + 96);
      if (v86 == 1)
      {
        v90 = *v161;
        (*v161)(v87, v164, *(v0 + 96));
        if (__swift_getEnumTagSinglePayload(v89, 1, v88) != 1)
        {
          sub_231CE1118(*(v0 + 88), &qword_27DD74A88, &unk_231E231A0);
        }
      }

      else
      {
        (*v159)(v87, *(v0 + 88), *(v0 + 96));
        v90 = *v161;
      }

      v92 = *(v0 + 112);
      v91 = *(v0 + 120);
      v93 = *(v0 + 96);
      v90(v92, v164, v93);
      OUTLINED_FUNCTION_1_20();
      sub_231D57154(&qword_2814CB020, v94, MEMORY[0x277D42320]);
      sub_231E117E0();
      sub_231E117E0();
      v95 = *v160;
      (*v160)(v92, v93);
      v95(v91, v93);
      v72 = v162;
      v71 = v163;
      if (*(v0 + 16) != *(v0 + 24))
      {
        goto LABEL_73;
      }

      v96 = *v155;
      (*v155)(*(v0 + 152), *(v0 + 160), *(v0 + 128));
      v97 = v158;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_231D56E94(0, *(v158 + 16) + 1, 1);
        v97 = v158;
      }

      v99 = *(v97 + 16);
      v98 = *(v97 + 24);
      if (v99 >= v98 >> 1)
      {
        v102 = OUTLINED_FUNCTION_4_15(v98);
        sub_231D56E94(v102, v103, v104);
        v97 = v158;
      }

      ++v69;
      v100 = *(v0 + 152);
      v101 = *(v0 + 128);
      *(v97 + 16) = v99 + 1;
      v158 = v97;
      result = v96(v97 + v165 + v99 * v76, v100, v101);
    }
  }

  v105 = *(v158 + 16);
  if (v105)
  {
    v177 = MEMORY[0x277D84F90];
    sub_231CC686C(0, v105, 0);
    v106 = v177;
    OUTLINED_FUNCTION_79();
    v108 = v158 + v107;
    v168 = *(v109 + 72);
    v173 = *(v109 + 16);
    do
    {
      v110 = *(v0 + 144);
      v111 = *(v0 + 128);
      v173(v110, v108, v111);
      v112 = sub_231E10640();
      v114 = v113;
      (*v70)(v110, v111);
      v116 = *(v177 + 16);
      v115 = *(v177 + 24);
      if (v116 >= v115 >> 1)
      {
        v118 = OUTLINED_FUNCTION_4_15(v115);
        sub_231CC686C(v118, v119, v120);
      }

      *(v177 + 16) = v116 + 1;
      v117 = v177 + 16 * v116;
      *(v117 + 32) = v112;
      *(v117 + 40) = v114;
      v108 += v168;
      --v105;
    }

    while (v105);

    v71 = v163;
  }

  else
  {

    v106 = MEMORY[0x277D84F90];
  }

  v121 = sub_231DC3C70(v106);

  v122 = v156 + v157;
  if (__OFADD__(v156, v157))
  {
    goto LABEL_117;
  }

  v51 = __OFADD__(v122, v121);
  v123 = v122 + v121;
  if (v51)
  {
    goto LABEL_118;
  }

  v124 = v123 + v154;
  if (__OFADD__(v123, v154))
  {
LABEL_119:
    __break(1u);
  }

  else
  {
    if (v71)
    {
      v125 = sub_231CC8B48();
      if (v126)
      {
        v125 = sub_231D117E8();
      }

      if (v124 < v125)
      {
        v127 = 2;
LABEL_98:
        LODWORD(v174) = v127;
        v169 = v124;
        goto LABEL_99;
      }
    }

    else
    {
      v128 = sub_231CC8B18();
      if (v129)
      {
        v128 = sub_231D11754();
      }

      if (v124 < v128)
      {
        v127 = 1;
        goto LABEL_98;
      }
    }

    v131 = sub_231E10520();
    if (v132)
    {
      v133 = v131;
      v134 = v132;
      v136 = *(v0 + 72);
      v135 = *(v0 + 80);
      v174 = *(v0 + 64);
      v137 = *(v0 + 32);
      v138 = v137[4];
      v139 = v137[5];
      __swift_project_boxed_opaque_existential_0(v137 + 1, v138);
      v140 = sub_231DE8A04(0);
      v142 = v141;
      sub_231D11E04();
      sub_231E0F8F0();
      LOBYTE(v133) = (*(v139 + 16))(v133, v134, v140, v142, v135, v138, v139);

      (*(v136 + 8))(v135, v174);
      if (v133)
      {
        OUTLINED_FUNCTION_8_14();
        v2 = 17;
        goto LABEL_3;
      }
    }

    v143 = sub_231E10580();
    if (!v144)
    {
      v143 = sub_231DE8A04(0);
    }

    *(v0 + 272) = v144;
    v145 = *(v0 + 40);
    sub_231DB0818(v143);
    v176 = (*(*v145 + 136) + **(*v145 + 136));
    v146 = swift_task_alloc();
    *(v0 + 280) = v146;
    *v146 = v0;
    v146[1] = sub_231D5655C;
    v147 = OUTLINED_FUNCTION_57();

    return v176(v147);
  }

  return result;
}

uint64_t sub_231D5655C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = *(*v3 + 80);
  v5 = *(*v3 + 72);
  v6 = *(*v3 + 64);
  v9 = *v3;

  (*(v5 + 8))(v4, v6);
  OUTLINED_FUNCTION_3_17();
  OUTLINED_FUNCTION_3_17();
  OUTLINED_FUNCTION_3_17();
  OUTLINED_FUNCTION_3_17();
  OUTLINED_FUNCTION_3_17();

  v7 = *(v9 + 8);

  return v7(a1, a2, a3);
}

BOOL sub_231D56880(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_231D2D37C();
  v3 = sub_231E11550();
  v4 = ~(-1 << *(a2 + 32));
  do
  {
    v5 = v3 & v4;
    v6 = (1 << (v3 & v4)) & *(a2 + 56 + (((v3 & v4) >> 3) & 0xFFFFFFFFFFFFFF8));
    v7 = v6 != 0;
    if (!v6)
    {
      break;
    }

    sub_231D2D3D0();
    v8 = sub_231E115D0();
    v3 = v5 + 1;
  }

  while ((v8 & 1) == 0);
  return v7;
}

BOOL sub_231D56968()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74A88, &unk_231E231A0);
  v1 = OUTLINED_FUNCTION_47(v0);
  MEMORY[0x28223BE20](v1);
  v3 = v25 - v2;
  v4 = sub_231E10370();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v25 - v9;
  v11 = sub_231E104D0();
  v13 = v12;
  v14 = sub_231E11620();
  if (!v13)
  {

LABEL_9:
    sub_231E104E0();
    if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
    {
      v19 = *MEMORY[0x277D422D8];
      v20 = *(v5 + 104);
      v20(v10, v19, v4);
      if (__swift_getEnumTagSinglePayload(v3, 1, v4) != 1)
      {
        sub_231CE1118(v3, &qword_27DD74A88, &unk_231E231A0);
      }
    }

    else
    {
      (*(v5 + 32))(v10, v3, v4);
      v19 = *MEMORY[0x277D422D8];
      v20 = *(v5 + 104);
    }

    v20(v8, v19, v4);
    OUTLINED_FUNCTION_1_20();
    sub_231D57154(v21, v22, MEMORY[0x277D42320]);
    sub_231E117E0();
    sub_231E117E0();
    v23 = *(v5 + 8);
    v24 = OUTLINED_FUNCTION_57();
    v23(v24);
    (v23)(v10, v4);
    return v25[1] == v25[0];
  }

  if (v11 == v14 && v13 == v15)
  {

    return 0;
  }

  v17 = sub_231E12100();

  result = 0;
  if ((v17 & 1) == 0)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_231D56C68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74A80, &unk_231E230E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_231D56CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_231D56D84;

  return sub_231D553F0(a1, v9, a3, a4);
}

uint64_t sub_231D56D84()
{

  v0 = OUTLINED_FUNCTION_57();

  return v1(v0);
}

void *sub_231D56E94(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_231D56EB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_231D56EB4(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E30, &qword_231E1CB80);
  v10 = *(sub_231E106A0() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_231E106A0() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_231D5707C(a4 + v16, v8, v13 + v16, MEMORY[0x277D42368]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_231D5707C(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (result = (a4)(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_102_0();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_102_0();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_231D57154(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_231D571BC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_231D571FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_231D57288()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *sub_231D572BC()
{
  v1 = OBJC_IVAR____TtC22ProactiveSummarization24UserNotificationSettings_unSettingsCenter;
  *&v0[v1] = [objc_opt_self() currentNotificationSettingsCenter];
  v2 = &v0[OBJC_IVAR____TtC22ProactiveSummarization24UserNotificationSettings_state];
  *v2 = 0;
  *(v2 + 2) = 514;
  v2[6] = 2;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for UserNotificationSettings();
  v3 = objc_msgSendSuper2(&v5, sel_init);
  [*&v3[OBJC_IVAR____TtC22ProactiveSummarization24UserNotificationSettings_unSettingsCenter] addObserver_];
  return v3;
}

uint64_t sub_231D573E4(uint64_t (*a1)(void))
{
  v2 = sub_231D5742C();
  if (v2 == 2 || (v2 & 1) == 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = a1();
  }

  return v3 & 1;
}

void sub_231D57444()
{
  OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_24();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_25();
  v5 = *v1;
  if (v5 == 2)
  {
    v6 = [*(v2 + OBJC_IVAR____TtC22ProactiveSummarization24UserNotificationSettings_unSettingsCenter) notificationSystemSettings];
    v7 = [v6 prioritizationSetting];

    LOBYTE(v5) = v7 == 2;
    *v1 = v7 == 2;
    sub_231DC4B64();
    v8 = OUTLINED_FUNCTION_2_19();
    v9(v8);
    v10 = sub_231E10E10();
    v11 = sub_231E11AF0();
    if (OUTLINED_FUNCTION_7_17(v11))
    {
      v12 = OUTLINED_FUNCTION_5_19();
      *v12 = 67109120;
      v12[1] = v3;
      OUTLINED_FUNCTION_3_18(&dword_231CAE000, v13, v14, "NotificationSettings: updated globalPriorityEnabled: %{BOOL}d");
      OUTLINED_FUNCTION_30();
    }

    v15 = OUTLINED_FUNCTION_140_0();
    v16(v15);
  }

  *v0 = v5;
  OUTLINED_FUNCTION_113();
}

void sub_231D575B4()
{
  OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_24();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_25();
  LODWORD(v5) = *(v1 + 1);
  if (v5 == 2)
  {
    v6 = *(v2 + OBJC_IVAR____TtC22ProactiveSummarization24UserNotificationSettings_unSettingsCenter);
    sub_231DE8A04(0);
    v7 = sub_231E115F0();

    v8 = [v6 notificationSourceWithIdentifier_];

    v9 = [v8 sourceSettings];
    v5 = [v9 notificationSettings];

    v10 = [v5 prioritizationSetting];
    LOBYTE(v5) = v10 == 2;
    *(v1 + 1) = v10 == 2;
    sub_231DC4B64();
    v11 = OUTLINED_FUNCTION_2_19();
    v12(v11);
    v13 = sub_231E10E10();
    v14 = sub_231E11AF0();
    if (OUTLINED_FUNCTION_7_17(v14))
    {
      v15 = OUTLINED_FUNCTION_5_19();
      *v15 = 67109120;
      v15[1] = v3;
      OUTLINED_FUNCTION_3_18(&dword_231CAE000, v16, v17, "NotificationSettings: updated messagesPriorityEnabled: %{BOOL}d");
      OUTLINED_FUNCTION_30();
    }

    v18 = OUTLINED_FUNCTION_140_0();
    v19(v18);
  }

  *v0 = v5;
  OUTLINED_FUNCTION_113();
}

uint64_t sub_231D57790(void (*a1)(uint64_t *__return_ptr, os_unfair_lock_s *, uint64_t))
{
  v3 = (v1 + OBJC_IVAR____TtC22ProactiveSummarization24UserNotificationSettings_state);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC22ProactiveSummarization24UserNotificationSettings_state));
  a1(&v5, v3 + 1, v1);
  os_unfair_lock_unlock(v3);
  return v5;
}

void sub_231D577F4()
{
  OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_24();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_25();
  LODWORD(v5) = *(v1 + 2);
  if (v5 == 2)
  {
    v6 = *(v2 + OBJC_IVAR____TtC22ProactiveSummarization24UserNotificationSettings_unSettingsCenter);
    sub_231DE8A04(1);
    v7 = sub_231E115F0();

    v8 = [v6 notificationSourceWithIdentifier_];

    v9 = [v8 sourceSettings];
    v5 = [v9 notificationSettings];

    v10 = [v5 prioritizationSetting];
    LOBYTE(v5) = v10 == 2;
    *(v1 + 2) = v10 == 2;
    sub_231DC4B64();
    v11 = OUTLINED_FUNCTION_2_19();
    v12(v11);
    v13 = sub_231E10E10();
    v14 = sub_231E11AF0();
    if (OUTLINED_FUNCTION_7_17(v14))
    {
      v15 = OUTLINED_FUNCTION_5_19();
      *v15 = 67109120;
      v15[1] = v3;
      OUTLINED_FUNCTION_3_18(&dword_231CAE000, v16, v17, "NotificationSettings: updated mailPriorityEnabled: %{BOOL}d");
      OUTLINED_FUNCTION_30();
    }

    v18 = OUTLINED_FUNCTION_140_0();
    v19(v18);
  }

  *v0 = v5;
  OUTLINED_FUNCTION_113();
}

void sub_231D579B8()
{
  OUTLINED_FUNCTION_118();
  v1 = v0;
  v3 = v2;
  v4 = sub_231E10E30();
  OUTLINED_FUNCTION_24();
  v6 = v5;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = sub_231DE8A04(0);
  v13 = sub_231D24924(v11, v12, v3);

  v14 = &qword_2814CB000;
  if (v13)
  {
    v42 = v3;
    sub_231DC4B64();
    v15 = OUTLINED_FUNCTION_2_19();
    v16(v15);
    v17 = sub_231E10E10();
    v18 = sub_231E11AF0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v41 = v0;
      v21 = v20;
      v43 = v20;
      *v19 = 136315138;
      v22 = sub_231DE8A04(0);
      v24 = sub_231CB5000(v22, v23, &v43);
      v14 = &qword_2814CB000;

      *(v19 + 4) = v24;
      _os_log_impl(&dword_231CAE000, v17, v18, "NotificationSettings: didUpdateNotificationSourceIdentifiers for %s, invalidating cache", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      v1 = v41;
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();
    }

    v25 = OUTLINED_FUNCTION_140_0();
    v26(v25);
    v27 = v1 + v14[401];
    os_unfair_lock_lock(v27);
    *(v27 + 5) = 2;
    os_unfair_lock_unlock(v27);
    v3 = v42;
  }

  v28 = sub_231DE8A04(1);
  v30 = sub_231D24924(v28, v29, v3);

  if (v30)
  {
    v31 = sub_231DC4B64();
    (*(v6 + 16))(v10, v31, v4);
    v32 = sub_231E10E10();
    v33 = sub_231E11AF0();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v43 = v35;
      *v34 = 136315138;
      v36 = sub_231DE8A04(1);
      v38 = sub_231CB5000(v36, v37, &v43);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_231CAE000, v32, v33, "NotificationSettings: didUpdateNotificationSourceIdentifiers for %s, invalidating cache", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      OUTLINED_FUNCTION_30();
      v14 = &qword_2814CB000;
      OUTLINED_FUNCTION_30();
    }

    (*(v6 + 8))(v10, v4);
    v39 = v1 + v14[401];
    os_unfair_lock_lock(v39);
    *(v39 + 6) = 2;
    os_unfair_lock_unlock(v39);
  }

  OUTLINED_FUNCTION_113();
}

void sub_231D57D94(uint64_t a1, void *a2)
{
  v4 = v2 + OBJC_IVAR____TtC22ProactiveSummarization24UserNotificationSettings_state;
  os_unfair_lock_lock(v4);
  sub_231D57DE8((v4 + 4), a2);

  os_unfair_lock_unlock(v4);
}

uint64_t sub_231D57DE8(BOOL *a1, void *a2)
{
  v5 = sub_231E10E30();
  OUTLINED_FUNCTION_24();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_25();
  v9 = [a2 prioritizationSetting];
  *a1 = v9 == 2;
  v10 = sub_231DC4B64();
  (*(v7 + 16))(v2, v10, v5);
  v11 = sub_231E10E10();
  v12 = sub_231E11AF0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = v9 == 2;
    _os_log_impl(&dword_231CAE000, v11, v12, "NotificationSettings: didUpdate systemSettings, globalPriorityEnabled: %{BOOL}d", v13, 8u);
    OUTLINED_FUNCTION_30();
  }

  return (*(v7 + 8))(v2, v5);
}

id sub_231D57FCC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserNotificationSettings();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for UserNotificationSettings.State(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v3 = -1;
    return (v3 + 1);
  }

  if (a2 >= 0xFE)
  {
    if ((a2 + 33554178) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
LABEL_5:
        v3 = (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776963;
        return (v3 + 1);
      }
    }
  }

  v4 = *a1;
  if (v4 >= 2)
  {
    v3 = ((v4 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v3 = -2;
  }

  if (v3 < 0)
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for UserNotificationSettings.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554178) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFD)
  {
    v3 = 0;
  }

  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 2) = (a2 - 254) >> 16;
    if (v3)
    {
      v4 = ((a2 - 254) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 2;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_3_18(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 8u);
}

BOOL OUTLINED_FUNCTION_7_17(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

unint64_t sub_231D58230(uint64_t a1, uint64_t a2)
{
  v2 = sub_231E11F20();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_231D5827C(char a1)
{
  result = 1818845549;
  switch(a1)
  {
    case 1:
      result = 0x6567617373656DLL;
      break;
    case 2:
      result = 0x6163696669746F6ELL;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x6172546F69647561;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_231D58334(unsigned __int8 a1, char a2)
{
  v2 = 1818845549;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1818845549;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x6567617373656DLL;
      break;
    case 2:
      v5 = 0x6163696669746F6ELL;
      v3 = 0xEC0000006E6F6974;
      break;
    case 3:
      v5 = 0xD000000000000011;
      v3 = 0x8000000231E35630;
      break;
    case 4:
      v5 = 0x6172546F69647561;
      v3 = 0xEF7470697263736ELL;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      v2 = 0x6567617373656DLL;
      break;
    case 2:
      v2 = 0x6163696669746F6ELL;
      v6 = 0xEC0000006E6F6974;
      break;
    case 3:
      v2 = 0xD000000000000011;
      v6 = 0x8000000231E35630;
      break;
    case 4:
      v2 = 0x6172546F69647561;
      v6 = 0xEF7470697263736ELL;
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
    v8 = sub_231E12100();
  }

  return v8 & 1;
}

uint64_t sub_231D584DC(char a1)
{
  sub_231E12220();
  sub_231D5827C(a1);
  sub_231E116E0();

  return sub_231E12250();
}

uint64_t sub_231D58548(uint64_t a1, char a2)
{
  sub_231E116E0();
}

uint64_t sub_231D58630(uint64_t a1, char a2)
{
  sub_231E12220();
  sub_231D5827C(a2);
  sub_231E116E0();

  return sub_231E12250();
}

unint64_t sub_231D58690@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_231D58230(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_231D586C0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_231D5827C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_231D586EC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a2)
  {

    v5 = a3;

    v6 = a4;
  }
}

uint64_t sub_231D58740()
{
  switch(*(v0 + 8))
  {
    case 2:
    case 3:
      v3 = [*v0 attributeSet];

      result = sub_231D59468(v3);
      break;
    default:
      v1 = *v0;

      result = sub_231D59404(v1);
      break;
  }

  return result;
}

uint64_t sub_231D587BC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v65 = a2;
  v67 = a1;
  v68 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74EA0, &unk_231E1CC10);
  v5 = OUTLINED_FUNCTION_47(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v66 = v6 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v65 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74478, &qword_231E15D98);
  v12 = OUTLINED_FUNCTION_47(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v65 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BE0, &qword_231E1CC20);
  v20 = OUTLINED_FUNCTION_47(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v65 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74510, &qword_231E1E2D0);
  v28 = OUTLINED_FUNCTION_47(v27);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_3();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v65 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74580, &qword_231E17110);
  v36 = OUTLINED_FUNCTION_47(v35);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_3();
  v39 = v37 - v38;
  MEMORY[0x28223BE20](v40);
  v42 = &v65 - v41;
  v43 = *(v3 + 8);
  v44 = *v3;
  switch(v43)
  {
    case 1:
      sub_231D164A4(v67, 0, v34);
      sub_231D594D8(v34, v31, &qword_27DD74510, &qword_231E1E2D0);
      v47 = sub_231E106A0();
      OUTLINED_FUNCTION_7_18(v31);
      if (v48)
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_16();
      v62 = OUTLINED_FUNCTION_9_11();
      v63(v62, v31, v47);
      type metadata accessor for EntityKind(0);
      OUTLINED_FUNCTION_5_20();
      goto LABEL_13;
    case 2:
      sub_231D1E298(v67, 0, v26);
      sub_231D594D8(v26, v23, &qword_27DD74BE0, &qword_231E1CC20);
      v47 = sub_231E10A30();
      OUTLINED_FUNCTION_7_18(v23);
      if (v48)
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_16();
      v55 = OUTLINED_FUNCTION_9_11();
      v56(v55, v23, v47);
      type metadata accessor for EntityKind(0);
      OUTLINED_FUNCTION_5_20();
      goto LABEL_13;
    case 3:
      sub_231D179CC(v18);
      sub_231D594D8(v18, v15, &qword_27DD74478, &qword_231E15D98);
      v47 = sub_231E10BE0();
      OUTLINED_FUNCTION_7_18(v15);
      if (v48)
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_16();
      v57 = OUTLINED_FUNCTION_9_11();
      v58(v57, v15, v47);
      type metadata accessor for EntityKind(0);
      OUTLINED_FUNCTION_5_20();
      goto LABEL_13;
    case 4:
      v51 = OUTLINED_FUNCTION_155();
      sub_231D6FAE4(v51 & 1, v10);
      v52 = v66;
      sub_231D594D8(v10, v66, &qword_27DD74EA0, &unk_231E1CC10);
      v47 = sub_231E10AE0();
      OUTLINED_FUNCTION_7_18(v52);
      if (v48)
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_16();
      v53 = OUTLINED_FUNCTION_9_11();
      v54(v53, v52, v47);
      type metadata accessor for EntityKind(0);
      OUTLINED_FUNCTION_5_20();
      goto LABEL_13;
    default:
      v45 = OUTLINED_FUNCTION_155();
      v46 = sub_231D27B60();
      sub_231D27B64(v67, v45 & 1, v65, v46);
      sub_231D594D8(v42, v39, &qword_27DD74580, &qword_231E17110);
      v47 = sub_231E10340();
      OUTLINED_FUNCTION_7_18(v39);
      if (v48)
      {
LABEL_12:
        v59 = type metadata accessor for EntityKind(0);
        v60 = v68;
        v61 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_16();
        v49 = OUTLINED_FUNCTION_9_11();
        v50(v49, v39, v47);
        type metadata accessor for EntityKind(0);
        OUTLINED_FUNCTION_5_20();
LABEL_13:
        swift_storeEnumTagMultiPayload();
        v60 = v44;
        v61 = 0;
        v59 = v47;
      }

      return __swift_storeEnumTagSinglePayload(v60, v61, 1, v59);
  }
}

uint64_t sub_231D58CFC()
{
  switch(*(v0 + 8))
  {
    case 1:
      v7 = swift_task_alloc();
      v1[3] = v7;
      *v7 = v1;
      OUTLINED_FUNCTION_0_26(v7);

      result = sub_231D20408();
      break;
    case 2:
      v5 = swift_task_alloc();
      v1[4] = v5;
      *v5 = v1;
      OUTLINED_FUNCTION_0_26(v5);

      result = sub_231D21DC8();
      break;
    case 3:
      v6 = swift_task_alloc();
      v1[5] = v6;
      *v6 = v1;
      OUTLINED_FUNCTION_0_26(v6);

      result = sub_231D24A10();
      break;
    case 4:
      v4 = swift_task_alloc();
      v1[6] = v4;
      *v4 = v1;
      OUTLINED_FUNCTION_0_26(v4);

      result = sub_231D25400();
      break;
    default:
      v2 = swift_task_alloc();
      v1[2] = v2;
      *v2 = v1;
      OUTLINED_FUNCTION_0_26(v2);

      result = sub_231D1EDF0();
      break;
  }

  return result;
}

uint64_t sub_231D58F8C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_3_19();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_8_8();

  return v4(v3);
}

uint64_t sub_231D5906C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_3_19();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_8_8();

  return v4(v3);
}

uint64_t sub_231D5914C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_3_19();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_8_8();

  return v4(v3);
}

uint64_t sub_231D5922C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_3_19();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_8_8();

  return v4(v3);
}

uint64_t sub_231D5930C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_3_19();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_8_8();

  return v4(v3);
}

uint64_t sub_231D593EC@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 9) = a3;
  *(a8 + 16) = a4;
  *(a8 + 24) = a5;
  *(a8 + 32) = a6;
  *(a8 + 40) = a7;
  return result;
}

uint64_t sub_231D59404(void *a1)
{
  v1 = [a1 bundleID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_231E11620();

  return v3;
}

uint64_t sub_231D59468(void *a1)
{
  v2 = [a1 creator];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_231E11620();

  return v3;
}

uint64_t sub_231D594D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_231D59544()
{
  result = qword_27DD74EA8;
  if (!qword_27DD74EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD74EA8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22ProactiveSummarization14SpotlightIndexVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

_BYTE *storeEnumTagSinglePayload for SearchableItem.Kind(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_231D596CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a2;
  v5 = sub_231E0F950();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231D59790, 0, 0);
}

uint64_t sub_231D59790()
{
  if ((sub_231CBA180() & 1) != 0 && sub_231D56880(1, v0[3]))
  {
    v1 = 13;
    v2 = 55;
LABEL_8:

    v6 = v0[1];

    return v6(v2, 0, v1);
  }

  sub_231E10AA0();
  v3 = sub_231E116F0();

  v4 = sub_231CC8B18();
  if (v5)
  {
    v4 = sub_231D11754();
  }

  if (v3 < v4)
  {
    sub_231E10AA0();
    v2 = sub_231E116F0();

    v1 = 8;
    goto LABEL_8;
  }

  v8 = sub_231E10A70();
  if (!v9)
  {
    v8 = sub_231DE8A04(2);
  }

  v10 = v8;
  v11 = v9;
  v0[8] = v9;
  v12 = v0[2];
  sub_231DB0818(v8);
  v15 = (*(*v12 + 136) + **(*v12 + 136));
  v13 = swift_task_alloc();
  v0[9] = v13;
  *v13 = v0;
  v13[1] = sub_231D599A4;
  v14 = v0[7];

  return v15(v10, v11, v14, 0);
}

uint64_t sub_231D599A4()
{
  OUTLINED_FUNCTION_1_15();
  v1 = v0[7];
  v2 = v0[6];
  v3 = v0[5];

  (*(v2 + 8))(v1, v3);

  v4 = OUTLINED_FUNCTION_0_20();

  return v5(v4);
}

uint64_t sub_231D59B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_231D2D128;

  return sub_231D596CC(v7, a3, a4);
}

uint64_t sub_231D59BE0(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_231D59C14()
{
  OUTLINED_FUNCTION_18();
  v0[5] = v1;
  v0[6] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74EB0, &unk_231E1CDB8);
  OUTLINED_FUNCTION_47(v3);
  v0[7] = OUTLINED_FUNCTION_69();
  v0[8] = swift_task_alloc();
  v4 = sub_231E0FAD0();
  v0[9] = v4;
  OUTLINED_FUNCTION_6(v4);
  v0[10] = v5;
  v0[11] = OUTLINED_FUNCTION_55();
  v6 = sub_231E0FAB0();
  v0[12] = v6;
  OUTLINED_FUNCTION_6(v6);
  v0[13] = v7;
  v0[14] = OUTLINED_FUNCTION_69();
  v0[15] = swift_task_alloc();
  v8 = sub_231E10B00();
  v0[16] = v8;
  OUTLINED_FUNCTION_6(v8);
  v0[17] = v9;
  v0[18] = OUTLINED_FUNCTION_55();
  v10 = sub_231E10C70();
  v0[19] = v10;
  OUTLINED_FUNCTION_6(v10);
  v0[20] = v11;
  v0[21] = OUTLINED_FUNCTION_55();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74BD8, &unk_231E1C5E0);
  v0[22] = v12;
  OUTLINED_FUNCTION_6(v12);
  v0[23] = v13;
  v0[24] = OUTLINED_FUNCTION_55();
  v14 = sub_231E10AF0();
  v0[25] = v14;
  OUTLINED_FUNCTION_6(v14);
  v0[26] = v15;
  v0[27] = OUTLINED_FUNCTION_69();
  v0[28] = swift_task_alloc();
  v16 = sub_231E10B30();
  v0[29] = v16;
  OUTLINED_FUNCTION_6(v16);
  v0[30] = v17;
  v0[31] = OUTLINED_FUNCTION_55();
  v18 = sub_231E0FAE0();
  v0[32] = v18;
  OUTLINED_FUNCTION_6(v18);
  v0[33] = v19;
  v0[34] = OUTLINED_FUNCTION_69();
  v0[35] = swift_task_alloc();
  v20 = sub_231E0FEA0();
  v0[36] = v20;
  OUTLINED_FUNCTION_47(v20);
  v0[37] = OUTLINED_FUNCTION_55();
  v21 = sub_231E0FEC0();
  v0[38] = v21;
  OUTLINED_FUNCTION_6(v21);
  v0[39] = v22;
  v0[40] = OUTLINED_FUNCTION_69();
  v0[41] = swift_task_alloc();
  v23 = sub_231E0FEE0();
  v0[42] = v23;
  OUTLINED_FUNCTION_6(v23);
  v0[43] = v24;
  v0[44] = OUTLINED_FUNCTION_69();
  v0[45] = swift_task_alloc();
  v25 = sub_231E0FF00();
  v0[46] = v25;
  OUTLINED_FUNCTION_6(v25);
  v0[47] = v26;
  v0[48] = OUTLINED_FUNCTION_69();
  v0[49] = swift_task_alloc();
  v0[50] = swift_task_alloc();
  v27 = sub_231E10720();
  v0[51] = v27;
  OUTLINED_FUNCTION_6(v27);
  v0[52] = v28;
  v0[53] = OUTLINED_FUNCTION_69();
  v0[54] = swift_task_alloc();
  v0[55] = swift_task_alloc();
  v0[56] = swift_task_alloc();
  v0[57] = swift_task_alloc();
  v29 = sub_231E10E30();
  v0[58] = v29;
  OUTLINED_FUNCTION_6(v29);
  v0[59] = v30;
  v0[60] = OUTLINED_FUNCTION_69();
  v0[61] = swift_task_alloc();
  v31 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v31, v32, v33);
}

uint64_t sub_231D5A140()
{
  v154 = v0;
  v1 = v0[61];
  v2 = v0[59];
  v4 = v0[56];
  v3 = v0[57];
  v5 = v0[55];
  v6 = v0[51];
  v7 = v0[52];
  v8 = v0[6];
  v144 = sub_231CB4EEC();
  v139 = *(v2 + 16);
  v139(v1);
  v9 = *(v7 + 16);
  v9(v3, v8, v6);
  v9(v4, v8, v6);
  v150 = v9;
  v9(v5, v8, v6);
  v10 = sub_231E10E10();
  v11 = sub_231E11AF0();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[61];
  v14 = v0[59];
  v132 = v0[56];
  v135 = v0[55];
  v16 = v0[51];
  v15 = v0[52];
  if (v12)
  {
    v120 = v0[58];
    v17 = v0[50];
    v128 = v0[47];
    v123 = v0[46];
    v117 = OUTLINED_FUNCTION_67();
    v152 = swift_slowAlloc();
    *v117 = 136315650;
    sub_231E10700();
    sub_231E0FEF0();
    v125 = *(v128 + 8);
    v125(v17, v123);
    sub_231E11680();
    OUTLINED_FUNCTION_14_9();
    log = v10;
    v18 = *(v15 + 8);
    v19 = OUTLINED_FUNCTION_20_10();
    v18(v19);
    v20 = OUTLINED_FUNCTION_48();
    sub_231CB5000(v20, v21, v22);
    OUTLINED_FUNCTION_10_1();
    *(v117 + 4) = v17;
    *(v117 + 12) = 2080;
    sub_231E10700();
    sub_231E0FED0();
    v125(v17, v123);
    sub_231E11680();
    OUTLINED_FUNCTION_14_9();
    v23 = OUTLINED_FUNCTION_20_10();
    v18(v23);
    v24 = OUTLINED_FUNCTION_48();
    sub_231CB5000(v24, v25, v26);
    OUTLINED_FUNCTION_10_1();
    *(v117 + 14) = v17;
    *(v117 + 22) = 2080;
    sub_231E10700();
    sub_231E0FEB0();
    v125(v17, v123);
    sub_231E11680();
    OUTLINED_FUNCTION_14_9();
    v27 = OUTLINED_FUNCTION_20_10();
    v18(v27);
    v28 = OUTLINED_FUNCTION_48();
    sub_231CB5000(v28, v29, v30);
    OUTLINED_FUNCTION_10_1();
    *(v117 + 24) = v17;
    _os_log_impl(&dword_231CAE000, log, v11, "SummarizationFeedbackManager: Handling feedback request; sentiment: %s feature: %s uiKind: %s", v117, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();

    v31 = *(v14 + 8);
    v31(v13, v120);
  }

  else
  {

    v18 = *(v15 + 8);
    (v18)(v135, v16);
    (v18)(v132, v16);
    v32 = OUTLINED_FUNCTION_20_10();
    v18(v32);
    v31 = *(v14 + 8);
    v33 = OUTLINED_FUNCTION_90_0();
    (v31)(v33);
  }

  (v139)(v0[60], v144, v0[58]);
  v34 = OUTLINED_FUNCTION_90_0();
  v150(v34);
  v35 = sub_231E10E10();
  v36 = sub_231E11AC0();
  v37 = os_log_type_enabled(v35, v36);
  v38 = v0[60];
  v147 = v0[58];
  v39 = v0[54];
  if (v37)
  {
    v140 = v0[60];
    v40 = v0[53];
    v41 = v0[51];
    v129 = v18;
    v42 = OUTLINED_FUNCTION_9_1();
    v136 = v31;
    v43 = OUTLINED_FUNCTION_67();
    v152 = v43;
    *v42 = 136315138;
    (v150)(v40, v39, v41);
    v44 = sub_231E11680();
    v46 = v45;
    (v129)(v39, v41);
    v47 = sub_231CB5000(v44, v46, &v152);

    *(v42 + 4) = v47;
    _os_log_impl(&dword_231CAE000, v35, v36, "SummarizationFeedbackManager: Handling feedback request: %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();

    v136(v140, v147);
  }

  else
  {
    v48 = v0[51];

    (v18)(v39, v48);
    v31(v38, v147);
  }

  sub_231E10710();
  v49 = OUTLINED_FUNCTION_25();
  v51 = v50(v49);
  if (v51 == *MEMORY[0x277D42468])
  {
    v52 = OUTLINED_FUNCTION_27_7();
    v53(v52);
    OUTLINED_FUNCTION_0();
    v54 = 0xD000000000000012;
LABEL_9:
    MEMORY[0x23837BD00](v54);
    goto LABEL_10;
  }

  if (v51 != *MEMORY[0x277D42470])
  {
    if (v51 == *MEMORY[0x277D42460])
    {
      v79 = OUTLINED_FUNCTION_27_7();
      v80(v79);
      v54 = 0xD00000000000001ALL;
    }

    else
    {
      if (v51 != *MEMORY[0x277D42458])
      {
        v104 = v0[28];
        v105 = v0[25];
        v106 = v0[26];
        OUTLINED_FUNCTION_2_20();
        sub_231E10710();
        OUTLINED_FUNCTION_33();
        sub_231E11680();
        OUTLINED_FUNCTION_38_8();

        MEMORY[0x23837BD00](v152, v153);
        (*(v106 + 8))(v104, v105);
        goto LABEL_10;
      }

      OUTLINED_FUNCTION_19_9();
      v54 = v84 + 6;
    }

    goto LABEL_9;
  }

  v57 = v0[49];
  v58 = v0[47];
  v60 = v0[39];
  v59 = v0[40];
  v148 = v0[38];
  v151 = v0[46];
  (*(v0[26] + 96))(v0[28], v0[25]);
  v61 = OUTLINED_FUNCTION_20_10();
  v62(v61);
  sub_231E10700();
  sub_231E0FED0();
  v63 = *(v58 + 8);
  v63(v57, v151);
  v64 = (*(v60 + 88))(v59, v148);
  if (v64 != *MEMORY[0x277D42200])
  {
    if (v64 == *MEMORY[0x277D42208])
    {
      OUTLINED_FUNCTION_19_9();
      v83 = v82 | 0x20;
    }

    else
    {
      if (v64 != *MEMORY[0x277D421F8])
      {
        v108 = v0[38];
        v107 = v0[39];
        v109 = v0[23];
        v146 = v0[24];
        v149 = v0[40];
        v142 = v0[22];
        OUTLINED_FUNCTION_2_20();
        sub_231E10700();
        sub_231E0FED0();
        v110 = OUTLINED_FUNCTION_70();
        (v63)(v110);
        v111 = sub_231E11680();
        MEMORY[0x23837CC20](v111);

        MEMORY[0x23837BD00](v152, v153);
        (*(v109 + 8))(v146, v142);
        (*(v107 + 8))(v149, v108);
        goto LABEL_10;
      }

      OUTLINED_FUNCTION_19_9();
      v83 = v101 + 35;
    }

    MEMORY[0x23837BD00](v83, v81 | 0x8000000000000000);
    v102 = OUTLINED_FUNCTION_48();
    v103(v102);
LABEL_10:
    OUTLINED_FUNCTION_3_20();

    OUTLINED_FUNCTION_19();

    return v55();
  }

  v126 = v0[48];
  v133 = v0[46];
  v130 = v0[44];
  v137 = v0[43];
  v141 = v0[42];
  v119 = v0[35];
  v145 = v63;
  v66 = v0[32];
  v65 = v0[33];
  v67 = v0[23];
  v121 = v0[24];
  v68 = v0[21];
  v69 = v0[19];
  v70 = v0[20];
  v71 = v0[17];
  v72 = v0[18];
  v73 = v0[16];
  v124 = v0[22];
  sub_231DE8A04(0);
  (*(v65 + 104))(v119, *MEMORY[0x277D085A8], v66);
  (*(v70 + 104))(v68, *MEMORY[0x277D424B0], v69);
  (*(v71 + 104))(v72, *MEMORY[0x277D42488], v73);
  sub_231E108C0();
  (*(v71 + 8))(v72, v73);
  (*(v70 + 8))(v68, v69);
  (*(v67 + 8))(v121, v124);
  sub_231E10700();
  sub_231E0FEF0();
  v145(v126, v133);
  v74 = (*(v137 + 88))(v130, v141);
  if (v74 == *MEMORY[0x277D42220])
  {
    v75 = v0[15];
    v76 = v0[12];
    v77 = v0[13];
    v78 = MEMORY[0x277D08510];
  }

  else
  {
    if (v74 == *MEMORY[0x277D42210])
    {
      v85 = v0[14];
      v86 = v0[12];
      v87 = v0[13];
      v88 = [objc_opt_self() isInternalBuild];
      v89 = MEMORY[0x277D084E8];
      if (!v88)
      {
        v89 = MEMORY[0x277D084F8];
      }

      (*(v87 + 104))(v85, *v89, v86);
      v90 = OUTLINED_FUNCTION_48();
      v91(v90);
      goto LABEL_28;
    }

    if (v74 != *MEMORY[0x277D42218])
    {
      v112 = v0[50];
      v113 = v0[46];
      v114 = v0[43];
      v143 = v0[44];
      v122 = v0[42];
      v115 = v0[33];
      v134 = v0[32];
      v138 = v0[35];
      v116 = v0[30];
      v127 = v0[29];
      v131 = v0[31];

      OUTLINED_FUNCTION_2_20();
      sub_231E10700();
      sub_231E0FEF0();
      v145(v112, v113);
      sub_231E11680();
      OUTLINED_FUNCTION_38_8();

      MEMORY[0x23837BD00](v152, v153);
      (*(v116 + 8))(v131, v127);
      (*(v115 + 8))(v138, v134);
      (*(v114 + 8))(v143, v122);
      goto LABEL_10;
    }

    v75 = v0[15];
    v76 = v0[12];
    v77 = v0[13];
    v78 = MEMORY[0x277D084F8];
  }

  (*(v77 + 104))(v75, *v78, v76);
LABEL_28:
  v92 = v0[10];
  v93 = v0[11];
  v95 = v0[8];
  v94 = v0[9];
  v96 = v0[7];
  (*(v0[33] + 16))(v0[34], v0[35], v0[32]);
  sub_231E10B10();
  v97 = sub_231E0FB20();
  __swift_storeEnumTagSinglePayload(v95, 0, 1, v97);
  sub_231E10B20();
  __swift_storeEnumTagSinglePayload(v96, 0, 1, v97);
  v98 = objc_allocWithZone(sub_231E0FB40());
  *v93 = sub_231E0FAF0();
  (*(v92 + 104))(v93, *MEMORY[0x277D08530], v94);
  v99 = swift_task_alloc();
  v0[62] = v99;
  *v99 = v0;
  v99[1] = sub_231D5AFC0;
  v100 = v0[15];

  return MEMORY[0x28215E828](v100, 1);
}

uint64_t sub_231D5AFC0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_15();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_15();
  *v5 = v4;
  *(v6 + 504) = v0;

  if (v0)
  {
    v7 = sub_231D5B2AC;
  }

  else
  {
    v7 = sub_231D5B0C8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_231D5B0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_34_9();
  v31 = v30[33];
  v55 = v30[32];
  v57 = v30[35];
  v32 = v30[30];
  v53 = v30[31];
  v33 = v30[29];
  v34 = v30[15];
  v36 = v30[12];
  v35 = v30[13];
  v37 = v30[10];
  v38 = v30[11];
  v39 = v30[9];
  sub_231E10810();
  (*(v37 + 8))(v38, v39);
  (*(v35 + 8))(v34, v36);
  (*(v32 + 8))(v53, v33);
  (*(v31 + 8))(v57, v55);
  OUTLINED_FUNCTION_3_20();
  OUTLINED_FUNCTION_4_17();
  v50 = v40;
  v51 = v30[15];
  v52 = v30[14];
  v54 = v30[11];
  v56 = v30[8];
  v58 = v30[7];

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_13_12();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, v50, v51, v52, v54, v56, v58, a28, a29, a30);
}

uint64_t sub_231D5B2AC()
{
  v1 = v0[63];
  v2 = v0[33];
  v11 = v0[32];
  v12 = v0[35];
  v3 = v0[30];
  v10 = v0[31];
  v9 = v0[29];
  v4 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  (*(v0[10] + 8))(v0[11], v0[9]);
  sub_231E11D70();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  OUTLINED_FUNCTION_0();
  MEMORY[0x23837CC20](0xD000000000000027);
  v0[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73F90, &qword_231E16840);
  sub_231E11E90();
  MEMORY[0x23837BD00](v0[2], v0[3]);

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v10, v9);
  (*(v2 + 8))(v12, v11);
  OUTLINED_FUNCTION_3_20();
  OUTLINED_FUNCTION_4_17();

  OUTLINED_FUNCTION_19();

  return v7();
}

uint64_t sub_231D5B538()
{
  OUTLINED_FUNCTION_18();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  v4 = sub_231E0F950();
  v1[15] = v4;
  OUTLINED_FUNCTION_6(v4);
  v1[16] = v5;
  v1[17] = OUTLINED_FUNCTION_69();
  v1[18] = swift_task_alloc();
  v6 = sub_231E0F4A0();
  v1[19] = v6;
  OUTLINED_FUNCTION_6(v6);
  v1[20] = v7;
  v1[21] = OUTLINED_FUNCTION_55();
  v8 = sub_231E10D30();
  v1[22] = v8;
  OUTLINED_FUNCTION_6(v8);
  v1[23] = v9;
  v1[24] = OUTLINED_FUNCTION_69();
  v1[25] = swift_task_alloc();
  v10 = sub_231E10C60();
  v1[26] = v10;
  OUTLINED_FUNCTION_6(v10);
  v1[27] = v11;
  v1[28] = OUTLINED_FUNCTION_69();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v12 = sub_231E10E30();
  v1[31] = v12;
  OUTLINED_FUNCTION_6(v12);
  v1[32] = v13;
  v1[33] = OUTLINED_FUNCTION_69();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_231D5C358()
{
  OUTLINED_FUNCTION_18();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231D5C47C()
{
  sub_231E10810();
  OUTLINED_FUNCTION_9_12();

  OUTLINED_FUNCTION_19();

  return v0();
}

uint64_t sub_231D5C55C()
{
  OUTLINED_FUNCTION_18();
  v1[111] = v0;
  v1[110] = v2;
  v1[109] = v3;
  v1[108] = v4;
  v1[107] = v5;
  v1[106] = v6;
  v7 = sub_231E10E30();
  v1[112] = v7;
  OUTLINED_FUNCTION_6(v7);
  v1[113] = v8;
  v1[114] = OUTLINED_FUNCTION_69();
  v1[115] = swift_task_alloc();
  v1[116] = swift_task_alloc();
  v9 = sub_231E0F4C0();
  v1[117] = v9;
  OUTLINED_FUNCTION_6(v9);
  v1[118] = v10;
  v1[119] = OUTLINED_FUNCTION_55();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74EB8, &qword_231E1CE00);
  OUTLINED_FUNCTION_47(v11);
  v1[120] = OUTLINED_FUNCTION_55();
  v12 = sub_231E0F500();
  v1[121] = v12;
  OUTLINED_FUNCTION_6(v12);
  v1[122] = v13;
  v1[123] = OUTLINED_FUNCTION_55();
  v14 = sub_231E11670();
  v1[124] = v14;
  OUTLINED_FUNCTION_6(v14);
  v1[125] = v15;
  v1[126] = OUTLINED_FUNCTION_55();
  v16 = sub_231E0F710();
  v1[127] = v16;
  OUTLINED_FUNCTION_6(v16);
  v1[128] = v17;
  v1[129] = OUTLINED_FUNCTION_55();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD745C0, &qword_231E17240);
  OUTLINED_FUNCTION_47(v18);
  v1[130] = OUTLINED_FUNCTION_69();
  v1[131] = swift_task_alloc();
  v19 = sub_231E0F780();
  v1[132] = v19;
  OUTLINED_FUNCTION_6(v19);
  v1[133] = v20;
  v1[134] = OUTLINED_FUNCTION_55();
  v21 = sub_231E0F950();
  v1[135] = v21;
  OUTLINED_FUNCTION_6(v21);
  v1[136] = v22;
  v1[137] = OUTLINED_FUNCTION_55();
  v23 = type metadata accessor for UrgencyFeedbackHistoryEntry(0);
  v1[138] = v23;
  OUTLINED_FUNCTION_6(v23);
  v1[139] = v24;
  v1[140] = OUTLINED_FUNCTION_55();
  v25 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v25, v26, v27);
}

uint64_t sub_231D5C8A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_34_9();
  sub_231E11D70();
  MEMORY[0x23837CC20](0xD00000000000010BLL, 0x8000000231E35850);
  *(v30 + 808) = 12;
  OUTLINED_FUNCTION_33();
  v31 = sub_231E120D0();
  MEMORY[0x23837CC20](v31);

  MEMORY[0x23837CC20](0xD000000000000054, 0x8000000231E35960);
  *(v30 + 832) = 3;
  OUTLINED_FUNCTION_33();
  sub_231E120D0();
  OUTLINED_FUNCTION_38_8();

  OUTLINED_FUNCTION_0();
  MEMORY[0x23837CC20](0x1000000000000212);
  OUTLINED_FUNCTION_51_3();
  *(v30 + 760) = 0xD0000000000000C4;
  *(v30 + 768) = v32;
  v187 = 0;
  v189 = 0xE000000000000000;
  sub_231E11D70();
  MEMORY[0x23837CC20](0x4920656C646E7542, 0xEB00000000203A44);
  v33 = sub_231E10C40();
  MEMORY[0x23837CC20](v33);

  MEMORY[0x23837CC20](0x203A656C7469540ALL, 0xE800000000000000);
  v34 = sub_231E10C30();
  MEMORY[0x23837CC20](v34);

  MEMORY[0x23837CC20](0x6C7469746275530ALL, 0xEB00000000203A65);
  v35 = sub_231E10C50();
  if (v36)
  {
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0xE000000000000000;
  }

  MEMORY[0x23837CC20](v35, v37);

  MEMORY[0x23837CC20](0x203A79646F420ALL, 0xE700000000000000);
  sub_231E10C10();
  OUTLINED_FUNCTION_38_8();

  MEMORY[0x23837CC20](0x67696C686769480ALL, 0xEC000000203A7468);
  v38 = sub_231E10C20();
  if (__OFSUB__(1, v38))
  {
    __break(1u);
    goto LABEL_58;
  }

  *(v30 + 824) = 1 - v38;
  v39 = sub_231E120D0();
  MEMORY[0x23837CC20](v39);

  MEMORY[0x23837CC20](2570, 0xE200000000000000);
  MEMORY[0x23837CC20](0, 0xE000000000000000);

  MEMORY[0x23837CC20](0xD000000000000032, 0x8000000231E35CB0);
  v180 = v30;
  if (sub_231CC8CC4())
  {
    v40 = *(v30 + 856);
    OUTLINED_FUNCTION_0();
    MEMORY[0x23837CC20](0xD000000000000014);
    v41 = sub_231D4B324(v40);
    v42 = *(v41 + 16);
    if (v42)
    {
      v43 = *(v30 + 1120);
      v44 = *(v30 + 1112);
      v45 = *(*(v30 + 1104) + 24);
      v46 = v41 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
      v47 = *(v44 + 72);
      do
      {
        v48 = *(v30 + 1120);
        sub_231D5E9E4(v46, v48);
        *(v30 + 840) = *(v43 + v45);
        v187 = sub_231E120D0();
        v189 = v49;
        MEMORY[0x23837CC20](58, 0xE100000000000000);
        v50 = sub_231E0F930();
        MEMORY[0x23837CC20](v50);

        MEMORY[0x23837CC20](58, 0xE100000000000000);
        MEMORY[0x23837CC20](*v48, *(v43 + 8));
        MEMORY[0x23837CC20](10, 0xE100000000000000);
        MEMORY[0x23837CC20](v187, v189);

        sub_231D5EA48(v48);
        v46 += v47;
        --v42;
      }

      while (v42);
    }
  }

  v51 = sub_231E10C40();
  v53 = sub_231D4DC14(v51, v52);

  v65 = *(v53 + 16);
  if (v65)
  {
    v66 = *(v30 + 1088);
    MEMORY[0x23837CC20](0xD000000000000033, 0x8000000231E35CF0);
    MEMORY[0x23837CC20](0xD000000000000022, 0x8000000231E35D30);
    v67 = *(v66 + 16);
    v66 += 16;
    v183 = v67;
    v68 = v53 + ((*(v66 + 64) + 32) & ~*(v66 + 64));
    v69 = *(v66 + 56);
    v70 = (v66 - 8);
    do
    {
      v71 = *(v30 + 1096);
      v72 = *(v30 + 1080);
      v183(v71, v68, v72);
      v73 = sub_231E0F930();
      v75 = v74;
      (*v70)(v71, v72);
      v187 = v73;
      v189 = v75;
      MEMORY[0x23837CC20](10, 0xE100000000000000);
      MEMORY[0x23837CC20](v73, v75);

      v68 += v69;
      --v65;
    }

    while (v65);
  }

  v76 = *(v30 + 1056);
  v77 = *(v30 + 1048);
  v78 = *(v30 + 1032);
  v79 = *(v30 + 1024);
  v80 = *(v30 + 1016);
  v176 = *(v30 + 1008);
  v177 = *(v30 + 1000);
  v184 = *(v30 + 992);
  v81 = NSTemporaryDirectory();
  sub_231E11620();

  __swift_storeEnumTagSinglePayload(v77, 1, 1, v76);
  v82 = *MEMORY[0x277CC91D8];
  v83 = *(v79 + 104);
  v83(v78, v82, v80);
  sub_231E0F770();
  OUTLINED_FUNCTION_51_3();
  *(v30 + 728) = 0xD000000000000011;
  *(v30 + 736) = v84;
  v83(v78, v82, v80);
  sub_231CE11D8();
  sub_231E0F750();
  (*(v79 + 8))(v78, v80);
  v85 = *(v30 + 760);
  v86 = *(v30 + 768);
  sub_231E11660();
  v87 = sub_231E11630();
  v89 = v88;
  *(v30 + 1128) = v87;
  *(v30 + 1136) = v88;
  (*(v177 + 8))(v176, v184);
  if (v89 >> 60 != 15)
  {
    sub_231E0F850();
    a11 = v87;
    a12 = v89;
    v185 = *(v30 + 968);
    v102 = *(v30 + 960);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD744D0, &qword_231E16C28);
    v103 = swift_allocObject();
    *(v103 + 16) = xmmword_231E1C960;
    OUTLINED_FUNCTION_51_3();
    v104[4] = 0xD00000000000001ALL;
    v104[5] = v105;
    v104[6] = 49;
    v104[7] = 0xE100000000000000;
    v104[8] = 0x656C746954;
    v104[9] = 0xE500000000000000;
    v104[10] = 0xD00000000000002BLL;
    v104[11] = 0x8000000231E35DA0;
    v104[12] = 0x7470697263736544;
    v104[13] = 0xEB000000006E6F69;
    v187 = v85;
    v189 = v86;

    MEMORY[0x23837CC20](0, 0xE000000000000000);
    *(v103 + 112) = v85;
    *(v103 + 120) = v86;
    strcpy((v103 + 128), "Classification");
    *(v103 + 143) = -18;
    *(v103 + 144) = 1802723668;
    *(v103 + 152) = 0xE400000000000000;
    *(v103 + 160) = 0x6375646F72706552;
    *(v103 + 168) = 0xEF7974696C696269;
    strcpy((v103 + 176), "Not Applicable");
    *(v103 + 191) = -18;
    strcpy((v103 + 192), "ComponentName");
    *(v103 + 206) = -4864;
    *(v103 + 208) = 0x70556863746143;
    *(v103 + 216) = 0xE700000000000000;
    *(v103 + 224) = 0xD000000000000010;
    *(v103 + 232) = 0x8000000231E35DD0;
    *(v103 + 240) = 0x6B63616264656546;
    *(v103 + 248) = 0xE800000000000000;
    *(v103 + 256) = 0x6E656E6F706D6F43;
    *(v103 + 264) = 0xEB00000000444974;
    *(v103 + 272) = 0x32383731363631;
    *(v103 + 280) = 0xE700000000000000;
    *(v103 + 288) = 0x7364726F7779654BLL;
    *(v103 + 296) = 0xE800000000000000;
    *(v103 + 304) = 0;
    *(v103 + 312) = 0xE000000000000000;
    *(v103 + 320) = 0x676169446F747541;
    *(v103 + 328) = 0xEF73636974736F6ELL;
    *(v103 + 336) = 49;
    *(v103 + 344) = 0xE100000000000000;
    strcpy((v103 + 352), "DeleteOnAttach");
    *(v103 + 367) = -18;
    *(v103 + 368) = 49;
    *(v103 + 376) = 0xE100000000000000;
    OUTLINED_FUNCTION_51_3();
    *(v103 + 384) = 0xD000000000000014;
    *(v103 + 392) = v106;
    OUTLINED_FUNCTION_51_3();
    *(v103 + 400) = 0xD000000000000056;
    *(v103 + 408) = v107;
    *(v103 + 416) = 0x656D686361747441;
    *(v103 + 424) = 0xEB0000000073746ELL;
    *(v103 + 432) = sub_231E0F740();
    *(v103 + 440) = v108;
    v82 = sub_231E11530();
    sub_231E0F4F0();
    if (__swift_getEnumTagSinglePayload(v102, 1, v185) == 1)
    {
      v109 = *(v30 + 960);
      v110 = *(v30 + 928);
      v111 = *(v30 + 904);
      v112 = *(v180 + 896);

      sub_231CE1118(v109, &qword_27DD74EB8, &qword_231E1CE00);
      v113 = sub_231DC4B64();
      (*(v111 + 16))(v110, v113, v112);
      v92 = sub_231E10E10();
      v114 = sub_231E11AE0();
      if (OUTLINED_FUNCTION_18_10(v114))
      {
        v115 = OUTLINED_FUNCTION_16_1();
        OUTLINED_FUNCTION_15_6(v115);
        OUTLINED_FUNCTION_25_0(&dword_231CAE000, v116, v117, "Failed to create URL. Unable to open Tap to Radar.");
        OUTLINED_FUNCTION_30();
      }

      OUTLINED_FUNCTION_25_8();
      sub_231CF4340(a11, a12);
      goto LABEL_21;
    }

    a10 = v86;
    (*(*(v30 + 976) + 32))(*(v30 + 984), *(v30 + 960), *(v30 + 968));
    v118 = *(v82 + 16);
    if (!v118)
    {
LABEL_46:

      v141 = *(v30 + 1056);
      v142 = *(v30 + 1040);
      sub_231E0F4D0();
      v143 = sub_231E11530();
      *(v30 + 712) = sub_231E11620();
      *(v30 + 720) = v144;
      v145 = MEMORY[0x277D837D0];
      sub_231E11D20();
      sub_231E0F4E0();
      if (__swift_getEnumTagSinglePayload(v142, 1, v141) == 1)
      {
        sub_231CE1118(*(v30 + 1040), &qword_27DD745C0, &qword_231E17240);
        v146 = sub_231CF44AC(v30 + 304);
        if (v147)
        {
          v148 = v146;
          swift_isUniquelyReferenced_nonNull_native();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74ED0, &qword_231E1CE10);
          sub_231E11EA0();
          sub_231CF4458(*(v143 + 48) + 40 * v148);
          sub_231CE1044((*(v143 + 56) + 32 * v148), (v30 + 376));
          sub_231E11EB0();
        }

        else
        {
          *(v30 + 376) = 0u;
          *(v30 + 392) = 0u;
        }

        sub_231CF4458(v30 + 304);
        sub_231CE1118(v30 + 376, &dword_27DD741E0, &qword_231E15D70);
      }

      else
      {
        v149 = *(v180 + 1064);
        v150 = *(v180 + 1056);
        v151 = *(v180 + 1040);
        *(v180 + 432) = v150;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v180 + 408));
        (*(v149 + 32))(boxed_opaque_existential_1, v151, v150);
        v30 = v180;
        sub_231CE1044((v180 + 408), (v180 + 600));
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_231D5E598((v30 + 600), v30 + 304, isUniquelyReferenced_nonNull_native);
        sub_231CF4458(v180 + 304);
      }

      *(v30 + 696) = sub_231E11620();
      *(v30 + 704) = v154;
      OUTLINED_FUNCTION_36_7();
      *(v30 + 464) = MEMORY[0x277D83B88];
      *(v30 + 440) = 3;
      sub_231CE1044((v30 + 440), (v30 + 344));
      v155 = swift_isUniquelyReferenced_nonNull_native();
      sub_231D5E598((v30 + 344), v30 + 144, v155);
      sub_231CF4458(v30 + 144);
      *(v30 + 744) = sub_231E11620();
      *(v30 + 752) = v156;
      OUTLINED_FUNCTION_36_7();
      v157 = MEMORY[0x277D839B0];
      *(v180 + 496) = MEMORY[0x277D839B0];
      *(v180 + 472) = 1;
      sub_231CE1044((v180 + 472), (v180 + 504));
      v158 = swift_isUniquelyReferenced_nonNull_native();
      sub_231D5E598((v180 + 504), v180 + 264, v158);
      sub_231CF4458(v180 + 264);
      *(v180 + 776) = sub_231E11620();
      *(v180 + 784) = v159;
      OUTLINED_FUNCTION_36_7();
      *(v180 + 560) = v157;
      v160 = v180;
      *(v180 + 536) = 1;
      sub_231CE1044((v180 + 536), (v180 + 568));
      v161 = swift_isUniquelyReferenced_nonNull_native();
      sub_231D5E598((v160 + 568), v160 + 224, v161);
      sub_231CF4458(v180 + 224);
      *(v180 + 792) = sub_231E11620();
      *(v180 + 800) = v162;
      OUTLINED_FUNCTION_36_7();
      OUTLINED_FUNCTION_51_3();
      *(v180 + 656) = v145;
      *(v180 + 632) = 0xD000000000000017;
      *(v180 + 640) = v163;
      sub_231CE1044((v160 + 632), (v160 + 664));
      v164 = swift_isUniquelyReferenced_nonNull_native();
      v187 = v143;
      sub_231D5E598((v160 + 664), v160 + 184, v164);
      v165 = v143;
      sub_231CF4458(v180 + 184);
      v166 = [objc_opt_self() serviceWithDefaultShellEndpoint];
      *(v180 + 1144) = v166;
      if (!v166)
      {
        sub_231CF4340(a11, a12);

        v172 = OUTLINED_FUNCTION_70();
        v173(v172);
        v174 = OUTLINED_FUNCTION_25();
        v175(v174);
        v101 = v180;
        goto LABEL_11;
      }

      v167 = v166;
      OUTLINED_FUNCTION_0();
      v168 = sub_231E115F0();
      *(v180 + 1152) = v168;
      sub_231D5E968();
      v169 = sub_231D5E384(v165);
      *(v180 + 1160) = v169;
      *(v180 + 16) = v180;
      *(v180 + 56) = v180 + 816;
      *(v180 + 24) = sub_231D5DEA0;
      v170 = swift_continuation_init();
      *(v180 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74EC8, &qword_231E1CE08);
      *(v180 + 80) = MEMORY[0x277D85DD0];
      *(v180 + 88) = 1107296256;
      *(v180 + 96) = sub_231D5E410;
      *(v180 + 104) = &block_descriptor_5;
      *(v180 + 112) = v170;
      [v167 openApplication:v168 withOptions:v169 completion:v180 + 80];
      OUTLINED_FUNCTION_13_12();

      return MEMORY[0x282200938](v38);
    }

    v119 = *(v30 + 944);
    v188 = MEMORY[0x277D84F90];
    sub_231D5E754(0, v118, 0);
    v38 = sub_231D5E928(v82);
    v122 = v38;
    v123 = 0;
    v124 = v82 + 64;
    a18 = v119 + 32;
    v176 = v119;
    a14 = v118;
    a15 = v120;
    a13 = v82 + 72;
    a16 = v82 + 64;
    a17 = v82;
    while ((v122 & 0x8000000000000000) == 0 && v122 < 1 << *(v82 + 32))
    {
      v125 = v122 >> 6;
      if ((*(v124 + 8 * (v122 >> 6)) & (1 << v122)) == 0)
      {
        goto LABEL_59;
      }

      if (*(v82 + 36) != v120)
      {
        goto LABEL_60;
      }

      v186 = v120;
      LODWORD(v177) = v121;
      v179 = v123;

      sub_231E0F4B0();

      v126 = v30;
      v128 = *(v188 + 16);
      v127 = *(v188 + 24);
      if (v128 >= v127 >> 1)
      {
        sub_231D5E754((v127 > 1), v128 + 1, 1);
      }

      v129 = *(v126 + 952);
      v130 = *(v126 + 936);
      *(v188 + 16) = v128 + 1;
      v38 = (*(v176 + 32))(v188 + ((*(v176 + 80) + 32) & ~*(v176 + 80)) + *(v176 + 72) * v128, v129, v130);
      v82 = a17;
      v131 = 1 << *(a17 + 32);
      if (v122 >= v131)
      {
        goto LABEL_61;
      }

      v124 = a16;
      v132 = *(a16 + 8 * v125);
      if ((v132 & (1 << v122)) == 0)
      {
        goto LABEL_62;
      }

      if (*(a17 + 36) != v186)
      {
        goto LABEL_63;
      }

      v133 = v132 & (-2 << (v122 & 0x3F));
      if (v133)
      {
        v131 = __clz(__rbit64(v133)) | v122 & 0x7FFFFFFFFFFFFFC0;
        v134 = a14;
        v135 = v179;
      }

      else
      {
        v136 = v125 << 6;
        v134 = a14;
        v137 = (a13 + 8 * v125);
        v138 = v125 + 1;
        while (v138 < (v131 + 63) >> 6)
        {
          v140 = *v137++;
          v139 = v140;
          v136 += 64;
          ++v138;
          if (v140)
          {
            v38 = sub_231D5E9D8(v122, v186, v177 & 1);
            v131 = __clz(__rbit64(v139)) + v136;
            goto LABEL_44;
          }
        }

        v38 = sub_231D5E9D8(v122, v186, v177 & 1);
LABEL_44:
        v135 = v179;
      }

      v121 = 0;
      v123 = v135 + 1;
      v122 = v131;
      v120 = a15;
      v30 = v180;
      if (v123 == v134)
      {
        goto LABEL_46;
      }
    }

LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return MEMORY[0x282200938](v38);
  }

  sub_231DC4B64();
  v90 = OUTLINED_FUNCTION_2_0();
  v91(v90);
  v92 = sub_231E10E10();
  v93 = sub_231E11AE0();
  if (OUTLINED_FUNCTION_18_10(v93))
  {
    v94 = OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_15_6(v94);
    OUTLINED_FUNCTION_25_0(&dword_231CAE000, v95, v96, "Failed to encode string. Unable to send user feedback.");
    OUTLINED_FUNCTION_30();
  }

  OUTLINED_FUNCTION_25_8();
LABEL_21:

  v97 = OUTLINED_FUNCTION_70();
  v98(v97);
  v99 = OUTLINED_FUNCTION_25();
  v100(v99);
  v101 = v82;
LABEL_11:
  OUTLINED_FUNCTION_1_21();
  v178 = v55;
  v181 = v54;
  v182 = *(v101 + 912);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_13_12();

  return v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v176, v177, 0xE000000000000000, v178, v181, v182, v187, v189, a27, a28, a29, a30);
}

uint64_t sub_231D5DEA0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_15();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 1168) = v4;
  if (v4)
  {
    v5 = sub_231D5E0FC;
  }

  else
  {
    v5 = sub_231D5DFA8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_231D5DFA8()
{
  v1 = *(v0 + 1160);
  v2 = *(v0 + 1152);
  v3 = *(v0 + 1144);
  sub_231CF4340(*(v0 + 1128), *(v0 + 1136));
  v4 = OUTLINED_FUNCTION_33();
  v5(v4);
  v6 = OUTLINED_FUNCTION_48();
  v7(v6);

  OUTLINED_FUNCTION_1_21();

  OUTLINED_FUNCTION_19();

  return v8();
}

uint64_t sub_231D5E0FC(uint64_t a1)
{
  v26 = v1[145];
  v27 = v1[144];
  v25 = v1[143];
  v2 = v1[142];
  v3 = v1[141];
  v4 = v1[123];
  v5 = v1[122];
  v6 = v1[121];
  swift_willThrow();
  sub_231CF4340(v3, v2);
  (*(v5 + 8))(v4, v6);
  v7 = OUTLINED_FUNCTION_70();
  v8(v7);

  v9 = v1[146];
  v10 = v1[114];
  v11 = v1[113];
  v12 = v1[112];
  v13 = sub_231DC4B64();
  (*(v11 + 16))(v10, v13, v12);
  v14 = v9;
  v15 = sub_231E10E10();
  v16 = sub_231E11AE0();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = OUTLINED_FUNCTION_9_1();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    v19 = v9;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v20;
    *v18 = v20;
    _os_log_impl(&dword_231CAE000, v15, v16, "Failed to launch Tap to Radar; error: %@", v17, 0xCu);
    sub_231CE1118(v18, &qword_27DD74D30, &unk_231E13480);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();
  }

  else
  {
  }

  v21 = OUTLINED_FUNCTION_31_8();
  v22(v21);
  OUTLINED_FUNCTION_1_21();

  OUTLINED_FUNCTION_19();

  return v23();
}

id sub_231D5E384(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_231E11520();
  }

  else
  {
    v1 = 0;
  }

  v2 = [swift_getObjCClassFromMetadata() optionsWithDictionary_];

  return v2;
}

uint64_t *sub_231D5E410(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_231CBF8D4(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return sub_231CBF940(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_231D5E4A0(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_231E0F4C0(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_231E0F4C0();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

_OWORD *sub_231D5E598(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_231CF44AC(a2);
  if (__OFADD__(v7[2], (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = v8;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74ED0, &qword_231E1CE10);
  if ((sub_231E11EA0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = sub_231CF44AC(a2);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_11:
    result = sub_231E12160();
    __break(1u);
    return result;
  }

  v10 = v12;
LABEL_5:
  v14 = *v4;
  if (v11)
  {
    v15 = (v14[7] + 32 * v10);
    __swift_destroy_boxed_opaque_existential_0(v15);

    return sub_231CE1044(a1, v15);
  }

  else
  {
    sub_231CF45B4(a2, v17);
    return sub_231D5E6D8(v10, v17, a1, v14);
  }
}

_OWORD *sub_231D5E6D8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_231CE1044(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

void *sub_231D5E754(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_231D5E774(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_231D5E774(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74ED8, &qword_231E1CE18);
  v10 = *(sub_231E0F4C0() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_231E0F4C0() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_231D5E4A0(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_231D5E968()
{
  result = qword_27DD74EC0;
  if (!qword_27DD74EC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DD74EC0);
  }

  return result;
}

uint64_t sub_231D5E9D8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_231D5E9E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UrgencyFeedbackHistoryEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_231D5EA48(uint64_t a1)
{
  v2 = type metadata accessor for UrgencyFeedbackHistoryEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *OUTLINED_FUNCTION_36_7()
{

  return sub_231E11D20();
}

void OUTLINED_FUNCTION_38_8()
{

  JUMPOUT(0x23837CC20);
}

void sub_231D5EBAC(void *a1@<X0>, void *a2@<X1>, id a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = sub_231CC78CC();
  v10 = v9[1];
  v67 = *v9;

  sub_231CC78E4();

  v11 = *sub_231CC79CC();
  v66 = a2;
  v70 = a3;
  v63 = v11;
  if (a1)
  {
    v62 = a1;
    v12 = v11;
  }

  else
  {
    v13 = objc_opt_self();
    v14 = v11;

    a3 = v14;
    v15 = sub_231E115F0();

    sub_231E11620();

    v16 = OUTLINED_FUNCTION_3_21();
    v17 = v13;
    a2 = v66;
    v62 = sub_231D5F99C(v16, v18, v19, v67, v10, v17);
  }

  v20 = sub_231CC7B14();
  v22 = *v20;
  v21 = v20[1];

  sub_231CC7BA0();

  v23 = *sub_231CC7964();
  v64 = a1;
  v65 = v21;
  v61 = v22;
  if (a2)
  {
    v59 = a2;
    v24 = v23;
  }

  else
  {
    v25 = objc_opt_self();
    v26 = v23;

    a3 = v26;
    v27 = sub_231E115F0();

    sub_231E11620();

    v28 = OUTLINED_FUNCTION_3_21();
    v59 = sub_231D5F99C(v28, v29, v30, v22, v21, v25);
  }

  v60 = v23;
  v31 = sub_231CC7C18();
  v33 = *v31;
  v32 = v31[1];

  sub_231CC7CA4();

  v34 = *sub_231CC7A34();
  v57 = v34;
  if (a3)
  {
    v56 = a3;
    v35 = v34;
  }

  else
  {
    v36 = objc_opt_self();
    v37 = v34;

    v38 = v37;
    v39 = sub_231E115F0();

    v40 = sub_231E11620();
    v42 = v41;

    v56 = sub_231D5F99C(v39, v40, v42, v33, v32, v36);
  }

  v58 = v33;
  v43 = sub_231CC7D1C();
  v44 = *v43;
  v45 = v43[1];

  sub_231CC7DA8();

  v46 = *sub_231CC7A9C();
  if (a4)
  {
    v47 = v46;

    v48 = a4;
  }

  else
  {
    v69 = objc_opt_self();
    v49 = v10;
    v50 = v46;

    v51 = v50;
    v52 = sub_231E115F0();

    v53 = sub_231E11620();
    v55 = v54;

    v10 = v49;
    v48 = sub_231D5F99C(v52, v53, v55, v44, v45, v69);
  }

  *a5 = v67;
  a5[1] = v10;
  a5[2] = v63;
  a5[3] = v62;
  a5[4] = v61;
  a5[5] = v65;
  a5[6] = v60;
  a5[7] = v59;
  a5[8] = v58;
  a5[9] = v32;
  a5[10] = v57;
  a5[11] = v56;
  a5[12] = v44;
  a5[13] = v45;
  a5[14] = v46;
  a5[15] = v48;
}

uint64_t sub_231D5EF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (a6)
  {
  }

  else
  {
    v9 = objc_opt_self();

    v10 = a5;
    v11 = sub_231E115F0();

    v12 = sub_231E11620();
    v14 = v13;

    sub_231D5F99C(v11, v12, v14, a1, a2, v9);
  }

  return a1;
}

uint64_t sub_231D5F05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[21] = a3;
  v6[22] = a4;
  v6[19] = a1;
  v6[20] = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231D5F078()
{
  v1 = v0[23];
  v8 = v0[24];
  v2 = sub_231E11850();
  v0[25] = v2;
  v3 = v1;
  v4 = sub_231E115F0();
  v0[26] = v4;
  v5 = sub_231E11850();
  v0[27] = v5;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_231D5F210;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74EE0, &qword_231E1CE28);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_231D5F374;
  v0[13] = &block_descriptor_6;
  v0[14] = v6;
  [v8 slowFetchAttributes:v2 protectionClass:v3 bundleID:v4 identifiers:v5 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_231D5F210()
{

  return MEMORY[0x2822009F8](sub_231D5F2F0, 0, 0);
}

uint64_t sub_231D5F2F0()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);
  v4 = *(v0 + 144);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_231D5F374(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_231CC1784(0, &qword_2814CAEB0, 0x277D82BB8);
    v4 = sub_231E11870();
  }

  else
  {
    v4 = 0;
  }

  return sub_231D5F3EC(v3, v4);
}

uint64_t sub_231D5F40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_231D5F428()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v4 = v0[22];
  v5 = v1[21];
  sub_231CC1784(0, &qword_2814CAF28, 0x277CC34B0);
  v6 = sub_231E11850();
  v1[23] = v6;
  v7 = v5;
  v8 = sub_231E115F0();
  v1[24] = v8;
  v1[2] = v1;
  v1[3] = sub_231D5F5B8;
  v9 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74EE8, &qword_231E1CE38);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_231D5F7C0;
  v1[13] = &block_descriptor_3;
  v1[14] = v9;
  [v4 indexSearchableItems:v6 deleteSearchableItemsWithIdentifiers:0 clientState:0 protectionClass:v7 forBundleID:v8 options:66125 completionHandler:v3];

  return MEMORY[0x282200938](v2);
}

uint64_t sub_231D5F5B8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_231D5F738;
  }

  else
  {
    v2 = sub_231D5F6C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_231D5F6C8()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_231D5F738(uint64_t a1)
{
  v2 = v1[24];
  v3 = v1[23];
  v4 = v1[21];
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

uint64_t sub_231D5F7C0(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    v5 = a2;

    return sub_231CBF8D4(v4, v5);
  }

  else
  {
    v7 = *v3;

    return j__swift_continuation_throwingResume(v7);
  }
}

uint64_t sub_231D5F844@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_231D5FE00(a2);
  *a1 = result;
  return result;
}

uint64_t sub_231D5F86C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_231E115F0();

  *a2 = v3;
  return result;
}

uint64_t sub_231D5F8B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231D5F058(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_231D5F8E0(uint64_t a1)
{
  v2 = sub_231D5FF38(&qword_27DD74F10, &unk_231E1D040);
  v3 = sub_231D5FF38(&qword_27DD74F18, &unk_231E1CFE0);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

id sub_231D5F99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = sub_231E115F0();

  v9 = sub_231E115F0();

  v10 = [a6 psu:a1 criticalIndexWithName:v8 protectionClass:v9 bundleIdentifier:?];

  return v10;
}

uint64_t sub_231D5FA58(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_231D5FA98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

      return OUTLINED_FUNCTION_2_21(result, a2);
    }

    *(result + 128) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_2_21(result, a2);
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_231D5FB0C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_231D5FB4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

      return OUTLINED_FUNCTION_2_21(result, a2);
    }

    *(result + 32) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_2_21(result, a2);
    }
  }

  return result;
}

void type metadata accessor for FileProtectionType()
{
  if (!qword_27DD74EF0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27DD74EF0);
    }
  }
}

uint64_t sub_231D5FC80(uint64_t a1, uint64_t a2)
{
  v2 = sub_231E11620();
  v4 = v3;
  if (v2 == sub_231E11620() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_231E12100();
  }

  return v7 & 1;
}

uint64_t sub_231D5FD08(uint64_t a1, id *a2)
{
  result = sub_231E11600();
  *a2 = 0;
  return result;
}

uint64_t sub_231D5FD80(uint64_t a1, id *a2)
{
  v3 = sub_231E11610();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_231D5FE00(uint64_t a1)
{
  sub_231E11620();
  v1 = sub_231E115F0();

  return v1;
}

uint64_t sub_231D5FE38(uint64_t a1)
{
  v1 = sub_231E11620();
  v2 = MEMORY[0x23837CC90](v1);

  return v2;
}

uint64_t sub_231D5FE70(uint64_t a1, uint64_t a2)
{
  sub_231E11620();
  sub_231E116E0();
}

uint64_t sub_231D5FEC4(uint64_t a1, uint64_t a2)
{
  sub_231E11620();
  sub_231E12220();
  sub_231E116E0();
  v2 = sub_231E12250();

  return v2;
}

uint64_t sub_231D5FF38(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FileProtectionType();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_231D5FF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    if (!a5)
    {
      return 0;
    }

    v8 = a1 == a4 && a2 == a5;
    if (!v8 && (sub_231E12100() & 1) == 0)
    {
      return 0;
    }
  }

  else if (a5)
  {
    return 0;
  }

  if (a3)
  {
    if (a6 && (sub_231D61218(a3, a6) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!a6)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_231D60014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    sub_231E12240();
    if (a4)
    {
      goto LABEL_3;
    }

    return sub_231E12240();
  }

  sub_231E12240();
  sub_231E116E0();
  if (!a4)
  {
    return sub_231E12240();
  }

LABEL_3:
  sub_231E12240();

  return sub_231D61744(a1, a4);
}

uint64_t sub_231D600AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_231E12220();
  sub_231D60014(v7, a1, a2, a3);
  return sub_231E12250();
}

uint64_t sub_231D60124(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_231E12220();
  sub_231D60014(v6, v2, v3, v4);
  return sub_231E12250();
}

uint64_t sub_231D60198()
{
  type metadata accessor for AvailabilityManager();
  v0 = swift_allocObject();
  result = sub_231D611A0();
  qword_2814CE7D8 = v0;
  return result;
}

uint64_t sub_231D601D4()
{
  v0 = swift_allocObject();
  sub_231D611A0();
  return v0;
}

uint64_t *sub_231D6020C()
{
  if (qword_2814CE0E0 != -1)
  {
    OUTLINED_FUNCTION_2_22(&qword_2814CE0E0);
  }

  return &qword_2814CE7D8;
}

uint64_t sub_231D6024C(uint64_t a1, uint64_t a2, os_unfair_lock_s *a3, uint64_t a4)
{
  v48 = a3;
  sub_231E0F950();
  OUTLINED_FUNCTION_24();
  v46 = v9;
  v47 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v41 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74F20, &qword_231E1D0D8);
  MEMORY[0x28223BE20](v16 - 8);
  OUTLINED_FUNCTION_3();
  v45 = v17 - v18;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v19);
  v21 = &v41 - v20;
  v22 = type metadata accessor for AvailabilityManager.Result(0);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v41 - v27;
  os_unfair_lock_lock(v4 + 6);
  v29 = sub_231D605C0(a1, a2, v48);
  v48 = v4;
  v30 = *&v4[8]._os_unfair_lock_opaque;
  v43 = v4 + 8;
  sub_231D60814(v30, v21, v29);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, 1, v22);
  v42 = a4;
  v44 = v29;
  if (EnumTagSinglePayload == 1)
  {
    sub_231E0F920();
    v28[*(v22 + 20)] = sub_231D608C4(v29, a4) & 1;
    if (__swift_getEnumTagSinglePayload(v21, 1, v22) != 1)
    {
      sub_231CE1118(v21, &qword_27DD74F20, &qword_231E1D0D8);
    }
  }

  else
  {
    sub_231D61944(v21, v28);
  }

  sub_231D61884(v28, v25);
  sub_231E0F920();
  sub_231E0F8B0();
  v33 = v46;
  v32 = v47;
  v34 = *(v46 + 8);
  v34(v12, v47);
  v35 = sub_231E0F8E0();
  v34(v15, v32);
  v34(v25, v32);
  v36 = v44;
  if (v35)
  {
    sub_231E0F920();
    v37 = sub_231D608C4(v36, v42);
    sub_231D618E8(v28);
    (*(v33 + 32))(v28, v15, v32);
    v28[*(v22 + 20)] = v37 & 1;
  }

  v38 = v45;
  sub_231D61884(v28, v45);
  __swift_storeEnumTagSinglePayload(v38, 0, 1, v22);
  sub_231D60FE0(v38, v36);
  v39 = v28[*(v22 + 20)];
  sub_231D618E8(v28);
  os_unfair_lock_unlock(v48 + 6);
  return v39;
}

void *sub_231D605C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_231CC7C18();
  if (a2)
  {
    v6 = OUTLINED_FUNCTION_1_22(v5);
    v8 = v8 && v7 == a2;
    if (v8 || (OUTLINED_FUNCTION_5_8(v6, v7) & 1) != 0)
    {
      return &unk_2846F62C0;
    }
  }

  v10 = sub_231CC7B14();
  if (a2)
  {
    v11 = OUTLINED_FUNCTION_1_22(v10);
    v13 = v8 && v12 == a2;
    if (v13 || (OUTLINED_FUNCTION_5_8(v11, v12) & 1) != 0)
    {
      return &unk_2846F6310;
    }
  }

  v14 = sub_231CC78CC();
  if (a2)
  {
    v15 = OUTLINED_FUNCTION_1_22(v14);
    v17 = v8 && v16 == a2;
    if (v17 || (OUTLINED_FUNCTION_5_8(v15, v16) & 1) != 0)
    {
      return &unk_2846F6360;
    }
  }

  v18 = sub_231CC7D1C();
  if (!a2)
  {
    return MEMORY[0x277D84F90];
  }

  v19 = OUTLINED_FUNCTION_1_22(v18);
  v21 = v8 && v20 == a2;
  if (v21 || (OUTLINED_FUNCTION_5_8(v19, v20) & 1) != 0)
  {
    return &unk_2846F63B0;
  }

  if (!a3)
  {
    return MEMORY[0x277D84F90];
  }

  v22 = sub_231CC7E14();
  v23 = OUTLINED_FUNCTION_8_15(v22);
  MEMORY[0x28223BE20](v23);
  v32 = v33;

  v24 = sub_231D162D0(sub_231D163AC, v31, a3);

  if (v24)
  {
    return &unk_2846F63E0;
  }

  v25 = sub_231CC7F78();
  v26 = OUTLINED_FUNCTION_8_15(v25);
  MEMORY[0x28223BE20](v26);
  v32 = v33;

  v27 = sub_231D162D0(sub_231D266B0, v31, a3);

  if (v27)
  {
    return &unk_2846F6430;
  }

  v28 = sub_231CC7FC8();
  v29 = OUTLINED_FUNCTION_8_15(v28);
  MEMORY[0x28223BE20](v29);
  v32 = v33;

  v30 = sub_231D162D0(sub_231D266B0, v31, a3);

  if (v30)
  {
    return &unk_2846F6480;
  }

  else
  {
    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_231D60814@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_231D612A4(a3), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(a1 + 56);
    v9 = type metadata accessor for AvailabilityManager.Result(0);
    sub_231D61884(v8 + *(*(v9 - 8) + 72) * v7, a2);
    v10 = a2;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v12 = type metadata accessor for AvailabilityManager.Result(0);
    v10 = a2;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

uint64_t sub_231D608C4(uint64_t a1, uint64_t a2)
{
  v91 = sub_231E0FB50();
  OUTLINED_FUNCTION_24();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_1();
  v9 = (v8 - v7);
  v10 = sub_231E0FB70();
  OUTLINED_FUNCTION_24();
  v86 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_1();
  v85 = v14 - v13;
  sub_231E0FBA0();
  OUTLINED_FUNCTION_24();
  v88 = v15;
  v89 = v16;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_1();
  v90 = v18 - v17;
  v19 = sub_231E10E30();
  OUTLINED_FUNCTION_24();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3();
  v79 = (v23 - v24);
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v25);
  v80 = &v75 - v26;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v27);
  v81 = &v75 - v28;
  OUTLINED_FUNCTION_95();
  MEMORY[0x28223BE20](v29);
  v31 = &v75 - v30;
  v32 = sub_231CB4EEC();
  v33 = *(v21 + 16);
  v82 = v32;
  v83 = v33;
  v84 = v21 + 16;
  v33(v31);

  v34 = sub_231E10E10();
  v35 = sub_231E11AF0();

  v36 = os_log_type_enabled(v34, v35);
  v87 = a2;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v77 = v9;
    v38 = v37;
    v39 = swift_slowAlloc();
    v78 = v5;
    v92 = v39;
    *v38 = 136446466;
    v40 = sub_231DE2398(a2);
    v76 = v10;
    v42 = v21;
    v43 = v19;
    v44 = sub_231CB5000(v40, v41, &v92);

    *(v38 + 4) = v44;
    *(v38 + 12) = 2082;
    v45 = MEMORY[0x23837CD80](a1, MEMORY[0x277D837D0]);
    v47 = sub_231CB5000(v45, v46, &v92);
    v19 = v43;
    v21 = v42;

    *(v38 + 14) = v47;
    v10 = v76;
    _os_log_impl(&dword_231CAE000, v34, v35, "%{public}s AvailabilityManager: Fetching model availability for: %{public}s", v38, 0x16u);
    swift_arrayDestroy();
    v5 = v78;
    OUTLINED_FUNCTION_30();
    v9 = v77;
    OUTLINED_FUNCTION_30();

    v48 = v42;
  }

  else
  {

    v48 = v21;
  }

  v49 = *(v48 + 8);
  v49(v31, v19);

  v50 = v85;
  sub_231E0FB60();
  v51 = v90;
  sub_231E0FB90();
  (*(v86 + 8))(v50, v10);
  sub_231E0FB80();
  v52 = (*(v5 + 88))(v9, v91);
  if (v52 != *MEMORY[0x277D0DFA8])
  {
    v54 = v87;
    if (v52 == *MEMORY[0x277D0DFB0])
    {
      v86 = v21;
      v53 = v80;
      v62 = OUTLINED_FUNCTION_12_13();
      v63(v62);

      v55 = sub_231E10E10();
      v56 = sub_231E11AF0();

      if (os_log_type_enabled(v55, v56))
      {
        swift_slowAlloc();
        v64 = OUTLINED_FUNCTION_6_1();
        OUTLINED_FUNCTION_3_22(v64);
        *v10 = 136446210;
        v66 = sub_231DE2398(v65);
        OUTLINED_FUNCTION_10_13(v66, v67);
        OUTLINED_FUNCTION_5_21();
        *(v10 + 4) = v9;
        v9 = v49;
        v61 = "%{public}s AvailabilityManager: Generative models unavailable";
        goto LABEL_14;
      }
    }

    else
    {
      if (v52 == *MEMORY[0x277D0E278])
      {
        (*(v89 + 8))(v51, v88);
        return 1;
      }

      v86 = v21;
      v53 = v79;
      v69 = OUTLINED_FUNCTION_12_13();
      v70(v69);

      v55 = sub_231E10E10();
      v56 = sub_231E11AE0();

      if (os_log_type_enabled(v55, v56))
      {
        swift_slowAlloc();
        v71 = OUTLINED_FUNCTION_6_1();
        OUTLINED_FUNCTION_3_22(v71);
        *v10 = 136446210;
        v73 = sub_231DE2398(v72);
        OUTLINED_FUNCTION_10_13(v73, v74);
        OUTLINED_FUNCTION_5_21();
        *(v10 + 4) = v9;
        v9 = v49;
        v61 = "%{public}s AvailabilityManager: Generative models unavailable: unhandled case";
        goto LABEL_14;
      }
    }

LABEL_15:

    v49(v53, v19);
    (*(v89 + 8))(v51, v88);
    goto LABEL_16;
  }

  v86 = v21;
  v53 = v81;
  v83(v81, v82, v19);
  v54 = v87;

  v55 = sub_231E10E10();
  v56 = sub_231E11AF0();

  if (!os_log_type_enabled(v55, v56))
  {
    goto LABEL_15;
  }

  swift_slowAlloc();
  v57 = OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_3_22(v57);
  *v10 = 136446210;
  v59 = sub_231DE2398(v58);
  OUTLINED_FUNCTION_10_13(v59, v60);
  OUTLINED_FUNCTION_5_21();
  *(v10 + 4) = v9;
  v9 = v49;
  v61 = "%{public}s AvailabilityManager: Generative models restricted";
LABEL_14:
  _os_log_impl(&dword_231CAE000, v55, v56, v61, v10, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v5);
  v5 = v54;
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_30();

  v19(v53, v87);
  (*(v89 + 8))(v90, v88);
LABEL_16:
  (*(v5 + 8))(v9, v91);
  return 0;
}

uint64_t sub_231D60FE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74F20, &qword_231E1D0D8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for AvailabilityManager.Result(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__swift_getEnumTagSinglePayload(a1, 1, v12) == 1)
  {
    sub_231CE1118(a1, &qword_27DD74F20, &qword_231E1D0D8);
    sub_231D61418(a2, v8);

    return sub_231CE1118(v8, &qword_27DD74F20, &qword_231E1D0D8);
  }

  else
  {
    sub_231D61944(a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    sub_231D6155C(v11, a2, isUniquelyReferenced_nonNull_native);

    *v3 = v16;
  }

  return result;
}

uint64_t sub_231D61158()
{
  sub_231CE1118(v0 + 32, &qword_27DD74F28, qword_231E1D0E0);

  return swift_deallocClassInstance();
}

uint64_t sub_231D611A0()
{
  *(v0 + 16) = 0x404E000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74460, &qword_231E1C990);
  type metadata accessor for AvailabilityManager.Result(0);
  sub_231D61808();
  v1 = sub_231E11530();
  *(v0 + 24) = 0;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t sub_231D61218(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_231E12100() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_231D612A4(uint64_t a1)
{
  sub_231E12220();
  sub_231D61744(v4, a1);
  v2 = sub_231E12250();

  return sub_231D61310(a1, v2);
}

unint64_t sub_231D61310(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v7 = ~v4;
    v8 = *(a1 + 16);
    v9 = *(v2 + 48);
    v10 = (a1 + 40);
    do
    {
      v11 = *(v9 + 8 * v5);
      if (*(v11 + 16) == v8)
      {
        if (!v8 || v11 == a1)
        {
          return v5;
        }

        v12 = (v11 + 40);
        v13 = v10;
        v14 = v8;
        while (1)
        {
          v15 = *(v12 - 1) == *(v13 - 1) && *v12 == *v13;
          if (!v15 && (sub_231E12100() & 1) == 0)
          {
            break;
          }

          v12 += 2;
          v13 += 2;
          if (!--v14)
          {
            return v5;
          }
        }
      }

      v5 = (v5 + 1) & v7;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_231D61418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_231D612A4(a1);
  if (v5)
  {
    v6 = v4;
    swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74F40, &qword_231E1D1B8);
    sub_231E11EA0();

    v7 = *(v13 + 56);
    v8 = type metadata accessor for AvailabilityManager.Result(0);
    sub_231D61944(v7 + *(*(v8 - 8) + 72) * v6, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74460, &qword_231E1C990);
    sub_231D61808();
    sub_231E11EB0();
    *v2 = v13;
    v9 = a2;
    v10 = 0;
    v11 = v8;
  }

  else
  {
    v11 = type metadata accessor for AvailabilityManager.Result(0);
    v9 = a2;
    v10 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v9, v10, 1, v11);
}