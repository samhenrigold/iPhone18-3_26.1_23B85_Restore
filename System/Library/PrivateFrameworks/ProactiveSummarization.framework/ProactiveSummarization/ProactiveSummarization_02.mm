uint64_t sub_231CDC510()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 552) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231CDC610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_51_0();
  v21 = *(v16 + 424);
  v22 = *(v16 + 376);
  sub_231CB4EEC();
  v23 = OUTLINED_FUNCTION_18_2();
  v24(v23);

  v25 = sub_231E10E10();
  sub_231E11AF0();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_104();
  if (v26)
  {
    a11 = v18;
    a12 = v17;
    OUTLINED_FUNCTION_30_1();
    swift_slowAlloc();
    a10 = v19;
    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_134();
    *(v19 + 4) = OUTLINED_FUNCTION_53_0(4.8751e-34, v27, v28, v29, v30, v31, v32, v33, v34);
    OUTLINED_FUNCTION_20_2(&dword_231CAE000, v35, v36, "Transferred summarization attributes from message to notification; id: %{public}s");
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_14();

    (*(v20 + 8))(v17, v18);
  }

  else
  {

    v37 = OUTLINED_FUNCTION_80();
    v39(v37, v38);
  }

  OUTLINED_FUNCTION_71_0();

  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_37();

  return v42(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_231CDC75C()
{
  OUTLINED_FUNCTION_18();
  *(v1 + 376) = v2;
  *(v1 + 384) = v0;
  *(v1 + 640) = v3;
  *(v1 + 368) = v4;
  *(v1 + 392) = *v0;
  v5 = sub_231E0FD90();
  OUTLINED_FUNCTION_47(v5);
  *(v1 + 400) = OUTLINED_FUNCTION_55();
  v6 = sub_231E10E30();
  *(v1 + 408) = v6;
  OUTLINED_FUNCTION_6(v6);
  *(v1 + 416) = v7;
  *(v1 + 424) = OUTLINED_FUNCTION_69();
  *(v1 + 432) = swift_task_alloc();
  v8 = swift_task_alloc();
  *(v1 + 448) = OUTLINED_FUNCTION_155_0(v8);
  *(v1 + 456) = swift_task_alloc();
  *(v1 + 464) = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_231CDC884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_59_1();
  v16 = *(v14 + 376);
  v17 = *(v14 + 368);
  type metadata accessor for SpotlightReader();
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_121();
  *(v14 + 472) = sub_231DF7564();
  *(v14 + 480) = sub_231CDBB24(v17, v16);
  *(v14 + 488) = v18;
  if (!v18)
  {
    sub_231CB4EEC();
    v26 = OUTLINED_FUNCTION_46_0();
    v27(v26);

    v28 = sub_231E10E10();
    sub_231E11AE0();

    v29 = OUTLINED_FUNCTION_39_0();
    v30 = *(v14 + 416);
    v31 = *(v14 + 424);
    v32 = *(v14 + 408);
    if (v29)
    {
      a10 = *(v14 + 424);
      OUTLINED_FUNCTION_30_1();
      swift_slowAlloc();
      a11 = OUTLINED_FUNCTION_49_0();
      *(v15 + 4) = OUTLINED_FUNCTION_52_0(4.8751e-34, a11, v33, v34, v35);
      OUTLINED_FUNCTION_43_1(&dword_231CAE000, v36, v37, "Unable to obtain notification request id for mail notification id: %{public}s during transfer");
      OUTLINED_FUNCTION_15_3();
      OUTLINED_FUNCTION_31_1();

      (*(v30 + 8))(a10, v32);
    }

    else
    {

      (*(v30 + 8))(v31, v32);
    }

LABEL_11:
    OUTLINED_FUNCTION_71_0();

    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_35();

    return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14);
  }

  v19 = (*(**(*(v14 + 384) + 144) + 136))(*(v14 + 368), *(v14 + 376));
  if (v19)
  {
    v20 = v19;
    *(v14 + 592) = v19;
    v21 = v19;
    if ([v21 summarizationStatus])
    {
      v22 = *(v14 + 400);
      v23 = *(v14 + 640);
      sub_231CC1784(0, &qword_2814CAED0, 0x277CC34B8);
      sub_231E0FD40();
      v24 = sub_231CD6B44(v22);
      *(v14 + 600) = v24;
      [v24 setUrgencyStatus_];
      v25 = [v21 isUrgent];
      OUTLINED_FUNCTION_87(v25, sel_setIsUrgent_);

      if (v23 == 5)
      {
        [v24 setSummarizationStatus_];
      }

      else
      {
        [v24 setSummarizationStatus_];
        v76 = [v21 summarizationContentTopic];
        OUTLINED_FUNCTION_87(v76, sel_setSummarizationContentTopic_);

        v77 = [v21 summarizationContentTopLine];
        OUTLINED_FUNCTION_87(v77, sel_setSummarizationContentTopLine_);

        v78 = [v21 summarizationContentSynopsis];
        OUTLINED_FUNCTION_87(v78, sel_setSummarizationContentSynopsis_);

        v79 = sub_231CE122C(v21, &selRef_summarizedIdentifiers);
        if (v79)
        {
          v80 = sub_231E11850();
        }

        else
        {
          v80 = 0;
        }

        OUTLINED_FUNCTION_87(v79, sel_setSummarizedIdentifiers_);

        v87 = sub_231CE122C(v21, &selRef_attachmentCaptions);
        if (v87)
        {
          v88 = sub_231E11850();
        }

        else
        {
          v88 = 0;
        }

        OUTLINED_FUNCTION_87(v87, sel_setAttachmentCaptions_);
      }

      v90 = *(v14 + 368);
      v89 = *(v14 + 376);
      OUTLINED_FUNCTION_12_2(xmmword_231E13680);
      v91 = v21;
      v92 = OUTLINED_FUNCTION_2_4();
      sub_231DE9728(v92, v93, v94, v20);
      v95 = OUTLINED_FUNCTION_1_5();
      sub_231DE9728(v95, v96, v97, v20);

      v98 = sub_231CC78B4();
      v99 = *v98;
      v100 = v98[1];
      v101 = objc_allocWithZone(MEMORY[0x277CC34B0]);

      v102 = v24;

      v103 = sub_231CE0AF0(v90, v89, v99, v100, v102);
      *(v14 + 608) = v103;
      [v103 setIsUpdate_];
      v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73FB0, &qword_231E23560);
      v105 = OUTLINED_FUNCTION_76(v104);
      *(v14 + 616) = v105;
      OUTLINED_FUNCTION_48_0(v105, xmmword_231E13420);
      v106 = v103;
      v107 = swift_task_alloc();
      *(v14 + 624) = v107;
      *v107 = v14;
      OUTLINED_FUNCTION_28_0(v107);
      OUTLINED_FUNCTION_35();

      return sub_231D5F40C(v108, v109, v110, v111, v112);
    }

    sub_231CB4EEC();
    v63 = OUTLINED_FUNCTION_103();
    v64(v63);

    v65 = sub_231E10E10();
    sub_231E11AF0();

    if (OUTLINED_FUNCTION_154())
    {
      v66 = *(v14 + 416);
      a9 = *(v14 + 408);
      a10 = *(v14 + 440);
      OUTLINED_FUNCTION_30_1();
      v67 = swift_slowAlloc();
      a11 = OUTLINED_FUNCTION_67();
      v71 = OUTLINED_FUNCTION_146(4.8751e-34, a11, v68, v69, v70);

      *(v67 + 4) = v71;
      OUTLINED_FUNCTION_137();
      _os_log_impl(v72, v73, v74, v75, v67, 0xCu);
      OUTLINED_FUNCTION_60_0();
      OUTLINED_FUNCTION_30();

      (*(v66 + 8))(a10, a9);
    }

    else
    {

      v85 = OUTLINED_FUNCTION_70();
      v86(v85);
    }

    goto LABEL_11;
  }

  v38 = *(v14 + 416);
  *(v14 + 496) = sub_231CB4EEC();
  *(v14 + 504) = *(v38 + 16);
  *(v14 + 512) = (v38 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v39 = OUTLINED_FUNCTION_46_0();
  v40(v39);

  v41 = sub_231E10E10();
  sub_231E11AF0();

  v42 = OUTLINED_FUNCTION_154();
  v43 = *(v14 + 464);
  v45 = *(v14 + 408);
  v44 = *(v14 + 416);
  if (v42)
  {
    OUTLINED_FUNCTION_30_1();
    swift_slowAlloc();
    OUTLINED_FUNCTION_49_0();
    *v43 = 136446210;
    v46 = OUTLINED_FUNCTION_70();
    *(v43 + 4) = sub_231CB5000(v46, v47, v48);
    OUTLINED_FUNCTION_137();
    _os_log_impl(v49, v50, v51, v52, v43, 0xCu);
    OUTLINED_FUNCTION_15_3();
    OUTLINED_FUNCTION_31_1();
  }

  v53 = *(v44 + 8);
  v53(v43, v45);
  *(v14 + 520) = v53;
  v81 = swift_task_alloc();
  *(v14 + 528) = v81;
  *v81 = v14;
  v81[1] = sub_231CDD058;
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_35();

  return sub_231DFB0B0(v82, v83);
}

uint64_t sub_231CDD058()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  *v4 = *v1;
  v3[67] = v5;
  v3[68] = v6;
  v3[69] = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231CDD168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t), uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_59_1();
  (*(v12 + 504))(*(v12 + 456), *(v12 + 496), *(v12 + 408));

  v14 = sub_231E10E10();
  sub_231E11AF0();

  if (OUTLINED_FUNCTION_85())
  {
    v35 = *(v12 + 520);
    OUTLINED_FUNCTION_30_1();
    swift_slowAlloc();
    OUTLINED_FUNCTION_28();
    *v13 = 136446210;
    v15 = OUTLINED_FUNCTION_54_0();
    *(v13 + 4) = sub_231CB5000(v15, v16, v17);
    OUTLINED_FUNCTION_20_2(&dword_231CAE000, v18, v19, "Looking up summarized searchable item for mail message id: %{public}s during transfer");
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_14();

    v20 = OUTLINED_FUNCTION_25();
    v35(v20);
  }

  else
  {
    v21 = *(v12 + 520);

    v22 = OUTLINED_FUNCTION_25();
    v21(v22);
  }

  v23 = *(v12 + 544);
  v24 = *(v12 + 536);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
  v26 = OUTLINED_FUNCTION_123(v25);
  *(v12 + 560) = v26;
  *(v26 + 16) = xmmword_231E138E0;
  *(v26 + 32) = v24;
  *(v26 + 40) = v23;
  v27 = swift_task_alloc();
  *(v12 + 568) = v27;
  *v27 = v12;
  v27[1] = sub_231CDD33C;
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_35();

  return sub_231DFA158(v28, v29, v30, v31, v32);
}

uint64_t sub_231CDD33C()
{
  OUTLINED_FUNCTION_29();
  v2 = *v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7_0();
  *v5 = v4;
  *(v2 + 576) = v6;
  *(v2 + 584) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_231CDD474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_59_1();
  v16 = sub_231CBA138(*(v14 + 576));
  v17 = *(v14 + 576);
  if (!v16)
  {

LABEL_10:
    (*(v14 + 504))(*(v14 + 432), *(v14 + 496), *(v14 + 408));

    v26 = sub_231E10E10();
    sub_231E11AF0();

    v27 = OUTLINED_FUNCTION_39_0();
    v28 = *(v14 + 520);
    if (v27)
    {
      a9 = *(v14 + 408);
      a10 = *(v14 + 432);
      OUTLINED_FUNCTION_30_1();
      swift_slowAlloc();
      a11 = OUTLINED_FUNCTION_49_0();
      v32 = OUTLINED_FUNCTION_52_0(4.8751e-34, a11, v29, v30, v31);

      *(v15 + 4) = v32;
      OUTLINED_FUNCTION_43_1(&dword_231CAE000, v33, v34, "Not transferring summarization attributes from mail to notification (no attributes); id: %{public}s");
      OUTLINED_FUNCTION_15_3();
      OUTLINED_FUNCTION_31_1();

      v36 = a9;
      v35 = a10;
    }

    else
    {

      v35 = OUTLINED_FUNCTION_25();
    }

    v28(v35, v36);
    goto LABEL_14;
  }

  if ((v17 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_151();
    v19 = v89;
  }

  else
  {
    OUTLINED_FUNCTION_140();
    if (!v18)
    {
      __break(1u);
      return;
    }

    v19 = *(v17 + 32);
  }

  v20 = [v19 attributeSet];

  if (!v20)
  {
    goto LABEL_10;
  }

  *(v14 + 592) = v20;
  v21 = v20;
  if ([v21 summarizationStatus])
  {
    v22 = *(v14 + 640);
    v23 = sub_231CC1784(0, &qword_2814CAED0, 0x277CC34B8);
    OUTLINED_FUNCTION_156_0(v23);
    v24 = OUTLINED_FUNCTION_152();
    *(v14 + 600) = v24;
    [v24 setUrgencyStatus_];
    v25 = [v21 isUrgent];
    OUTLINED_FUNCTION_96(v25, sel_setIsUrgent_);

    if (v22 == 5)
    {
      [v24 setSummarizationStatus_];
    }

    else
    {
      [v24 setSummarizationStatus_];
      v58 = [v21 summarizationContentTopic];
      OUTLINED_FUNCTION_96(v58, sel_setSummarizationContentTopic_);

      v59 = [v21 summarizationContentTopLine];
      OUTLINED_FUNCTION_96(v59, sel_setSummarizationContentTopLine_);

      v60 = [v21 summarizationContentSynopsis];
      OUTLINED_FUNCTION_96(v60, sel_setSummarizationContentSynopsis_);

      v61 = sub_231CE122C(v21, &selRef_summarizedIdentifiers);
      if (v61)
      {
        sub_231E11850();
        v61 = OUTLINED_FUNCTION_157();
      }

      else
      {
        v60 = 0;
      }

      OUTLINED_FUNCTION_96(v61, sel_setSummarizedIdentifiers_);

      v64 = sub_231CE122C(v21, &selRef_attachmentCaptions);
      if (v64)
      {
        sub_231E11850();
        v64 = OUTLINED_FUNCTION_157();
      }

      else
      {
        v60 = 0;
      }

      OUTLINED_FUNCTION_96(v64, sel_setAttachmentCaptions_);
    }

    OUTLINED_FUNCTION_12_2(xmmword_231E13680);
    v65 = v21;
    v66 = OUTLINED_FUNCTION_2_4();
    sub_231DE9728(v66, v67, v68, v21);
    v69 = OUTLINED_FUNCTION_1_5();
    sub_231DE9728(v69, v70, v71, v21);

    v72 = *(sub_231CC78B4() + 1);
    v73 = objc_allocWithZone(MEMORY[0x277CC34B0]);

    v74 = v24;

    v75 = OUTLINED_FUNCTION_86();
    v78 = sub_231CE0AF0(v75, v76, v77, v72, v74);
    *(v14 + 608) = v78;
    [v78 setIsUpdate_];
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73FB0, &qword_231E23560);
    v80 = OUTLINED_FUNCTION_76(v79);
    *(v14 + 616) = v80;
    OUTLINED_FUNCTION_48_0(v80, xmmword_231E13420);
    v81 = v78;
    v82 = swift_task_alloc();
    *(v14 + 624) = v82;
    *v82 = v14;
    OUTLINED_FUNCTION_28_0(v82);
    OUTLINED_FUNCTION_35();

    sub_231D5F40C(v83, v84, v85, v86, v87);
    return;
  }

  sub_231CB4EEC();
  v45 = OUTLINED_FUNCTION_103();
  v46(v45);

  v47 = sub_231E10E10();
  sub_231E11AF0();

  if (OUTLINED_FUNCTION_154())
  {
    v48 = *(v14 + 416);
    a9 = *(v14 + 408);
    a10 = *(v14 + 440);
    OUTLINED_FUNCTION_30_1();
    v49 = swift_slowAlloc();
    a11 = OUTLINED_FUNCTION_67();
    v53 = OUTLINED_FUNCTION_146(4.8751e-34, a11, v50, v51, v52);

    *(v49 + 4) = v53;
    OUTLINED_FUNCTION_137();
    _os_log_impl(v54, v55, v56, v57, v49, 0xCu);
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_30();

    (*(v48 + 8))(a10, a9);
  }

  else
  {

    v62 = OUTLINED_FUNCTION_70();
    v63(v62);
  }

LABEL_14:
  OUTLINED_FUNCTION_71_0();

  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_35();

  v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_231CDDAC8()
{
  OUTLINED_FUNCTION_29();
  v2 = *v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 632) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_231CDDC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_50();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_51_0();
  a22 = v24;
  sub_231CB4EEC();
  v27 = OUTLINED_FUNCTION_18_2();
  v28(v27);

  v29 = sub_231E10E10();
  v30 = sub_231E11AF0();

  v31 = os_log_type_enabled(v29, v30);
  v32 = v24[76];
  v33 = v24[75];
  v34 = v24[74];
  v35 = v24[61];
  if (v31)
  {
    v36 = v24[60];
    a12 = v24[56];
    v37 = v24[52];
    a10 = v24[59];
    a11 = v24[51];
    OUTLINED_FUNCTION_30_1();
    swift_slowAlloc();
    a9 = v32;
    OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_130();
    *v32 = 136446210;
    v38 = sub_231CB5000(v36, v35, &a13);

    *(v32 + 4) = v38;
    _os_log_impl(&dword_231CAE000, v29, v30, "Transferred summarization attributes from mail to notification; id: %{public}s", v32, 0xCu);
    OUTLINED_FUNCTION_15_3();
    OUTLINED_FUNCTION_31_1();

    (*(v37 + 8))(a12, a11);
  }

  else
  {

    v39 = OUTLINED_FUNCTION_54_0();
    v40(v39);
  }

  OUTLINED_FUNCTION_71_0();

  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_37();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_231CDDE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_47_0();

  OUTLINED_FUNCTION_73();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_66_0();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_231CDDEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_47_0();

  OUTLINED_FUNCTION_73();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_66_0();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_231CDDF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_47_0();
  v11 = *(v10 + 608);
  v12 = *(v10 + 600);

  OUTLINED_FUNCTION_73();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_66_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_231CDDFEC()
{
  OUTLINED_FUNCTION_18();
  v8 = OUTLINED_FUNCTION_91(v1, v2, v3, v4, v5, v6, v7);
  v0[53] = v8;
  OUTLINED_FUNCTION_6(v8);
  v0[54] = v9;
  v10 = OUTLINED_FUNCTION_69();
  v0[56] = OUTLINED_FUNCTION_155_0(v10);
  v0[57] = swift_task_alloc();
  v11 = sub_231E0FD90();
  OUTLINED_FUNCTION_47(v11);
  v0[58] = OUTLINED_FUNCTION_55();
  v12 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_231CDE0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_29();
  v14 = v12[46];
  v13 = v12[47];
  type metadata accessor for SpotlightReader();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_121();
  v12[59] = sub_231DF7564();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
  v16 = OUTLINED_FUNCTION_123(v15);
  v12[60] = v16;
  *(v16 + 16) = xmmword_231E138E0;
  *(v16 + 32) = v14;
  *(v16 + 40) = v13;

  v17 = swift_task_alloc();
  v12[61] = v17;
  *v17 = v12;
  v18 = OUTLINED_FUNCTION_98(v17);

  return sub_231DFA158(v18, v19, v20, v21, v22);
}

uint64_t sub_231CDE1AC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 496) = v5;
  *(v3 + 504) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_231CDE2BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_59_1();
  v17 = sub_231CBA138(*(v14 + 496));
  v18 = *(v14 + 496);
  if (v17)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_151();
      v20 = v96;
    }

    else
    {
      OUTLINED_FUNCTION_140();
      if (!v19)
      {
        __break(1u);
        return;
      }

      v20 = *(v18 + 32);
    }

    *(v14 + 512) = v20;

    v21 = OUTLINED_FUNCTION_84();
    v22 = [v21 summarizationStatus];

    if (v22 == 1)
    {
      v23 = OUTLINED_FUNCTION_84();
      v24 = [v23 urgencyStatus];

      if (v24 == 1)
      {
        v25 = *(v14 + 560);
        v26 = sub_231CC1784(0, &qword_2814CAED0, 0x277CC34B8);
        OUTLINED_FUNCTION_156_0(v26);
        v27 = OUTLINED_FUNCTION_152();
        *(v14 + 520) = v27;
        v28 = OUTLINED_FUNCTION_84();
        v29 = [v28 urgencyStatus];

        [v27 setUrgencyStatus_];
        v30 = OUTLINED_FUNCTION_84();
        v31 = [v30 isUrgent];

        [v27 setIsUrgent_];
        if (v25 == 5)
        {
          [v27 setSummarizationStatus_];
        }

        else
        {
          v62 = OUTLINED_FUNCTION_84();
          v63 = [v62 summarizationStatus];

          [v27 setSummarizationStatus_];
          v64 = OUTLINED_FUNCTION_84();
          v65 = sub_231CE1178(v64, &selRef_summarizedIdentifiers);
          if (v65)
          {
            sub_231E11850();
            v65 = OUTLINED_FUNCTION_157();
          }

          else
          {
            v62 = 0;
          }

          OUTLINED_FUNCTION_96(v65, sel_setSummarizedIdentifiers_);

          v66 = OUTLINED_FUNCTION_84();
          v67 = [v66 summarizationContentTopLine];

          [v27 setSummarizationContentTopLine_];
          v68 = OUTLINED_FUNCTION_84();
          v69 = sub_231CE1178(v68, &selRef_attachmentCaptions);
          if (v69)
          {
            sub_231E11850();
            v69 = OUTLINED_FUNCTION_157();
          }

          else
          {
            v66 = 0;
          }

          OUTLINED_FUNCTION_96(v69, sel_setAttachmentCaptions_);
        }

        OUTLINED_FUNCTION_12_2(xmmword_231E13680);
        v70 = OUTLINED_FUNCTION_84();
        v71 = OUTLINED_FUNCTION_2_4();
        sub_231DE9728(v71, v72, v73, v70);

        v74 = OUTLINED_FUNCTION_110();
        v75 = OUTLINED_FUNCTION_1_5();
        sub_231DE9728(v75, v76, v77, v74);

        v78 = *(sub_231CC78B4() + 1);
        v79 = objc_allocWithZone(MEMORY[0x277CC34B0]);

        v80 = v27;
        v81 = OUTLINED_FUNCTION_86();
        v85 = sub_231CE0AF0(v81, v82, v83, v78, v84);
        *(v14 + 528) = v85;
        [v85 setIsUpdate_];
        v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73FB0, &qword_231E23560);
        v87 = OUTLINED_FUNCTION_76(v86);
        *(v14 + 536) = v87;
        OUTLINED_FUNCTION_48_0(v87, xmmword_231E13420);
        v88 = v85;
        v89 = swift_task_alloc();
        *(v14 + 544) = v89;
        *v89 = v14;
        OUTLINED_FUNCTION_28_0(v89);
        OUTLINED_FUNCTION_35();

        sub_231D5F40C(v90, v91, v92, v93, v94);
        return;
      }
    }

    sub_231CB4EEC();
    v32 = OUTLINED_FUNCTION_46_0();
    v33(v32);

    v34 = sub_231E10E10();
    sub_231E11AF0();

    v35 = OUTLINED_FUNCTION_39_0();
    v36 = *(v14 + 448);
    v38 = *(v14 + 424);
    v37 = *(v14 + 432);
    if (v35)
    {
      OUTLINED_FUNCTION_30_1();
      swift_slowAlloc();
      a10 = v20;
      a11 = OUTLINED_FUNCTION_49_0();
      *(v16 + 4) = OUTLINED_FUNCTION_52_0(4.8751e-34, a11, v39, v40, v41);
      OUTLINED_FUNCTION_43_1(&dword_231CAE000, v42, v43, "Not transferring summarization attributes from mail to notification (status is not succeeded); id: %{public}s");
      OUTLINED_FUNCTION_15_3();
      OUTLINED_FUNCTION_31_1();
    }

    (*(v37 + 8))(v36, v38);
  }

  else
  {
    OUTLINED_FUNCTION_149();
    sub_231CB4EEC();
    v44 = OUTLINED_FUNCTION_136();
    v45(v44);

    v46 = sub_231E10E10();
    sub_231E11AF0();

    if (OUTLINED_FUNCTION_85())
    {
      OUTLINED_FUNCTION_30_1();
      swift_slowAlloc();
      a11 = OUTLINED_FUNCTION_28();
      *v15 = 136446210;
      v47 = OUTLINED_FUNCTION_54_0();
      *(v15 + 4) = sub_231CB5000(v47, v48, v49);
      OUTLINED_FUNCTION_20_2(&dword_231CAE000, v50, v51, "Not transferring summarization attributes from mail to notification (no searchable item); id: %{public}s");
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_14();
    }

    v52 = OUTLINED_FUNCTION_25();
    v53(v52);
  }

  OUTLINED_FUNCTION_71_0();

  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_35();

  v56(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_231CDE890()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 552) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231CDE990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_51_0();
  v21 = *(v16 + 424);
  v22 = *(v16 + 376);
  sub_231CB4EEC();
  v23 = OUTLINED_FUNCTION_18_2();
  v24(v23);

  v25 = sub_231E10E10();
  sub_231E11AF0();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_104();
  if (v26)
  {
    a11 = v18;
    a12 = v17;
    OUTLINED_FUNCTION_30_1();
    swift_slowAlloc();
    a10 = v19;
    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_134();
    *(v19 + 4) = OUTLINED_FUNCTION_53_0(4.8751e-34, v27, v28, v29, v30, v31, v32, v33, v34);
    OUTLINED_FUNCTION_20_2(&dword_231CAE000, v35, v36, "Transferred summarization attributes from mail to notification; id: %{public}s");
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_14();

    (*(v20 + 8))(v17, v18);
  }

  else
  {

    v37 = OUTLINED_FUNCTION_80();
    v39(v37, v38);
  }

  OUTLINED_FUNCTION_71_0();

  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_37();

  return v42(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_231CDEADC()
{
  OUTLINED_FUNCTION_50_0();

  OUTLINED_FUNCTION_125();

  v0 = OUTLINED_FUNCTION_61_0();

  return v1(v0);
}

uint64_t sub_231CDEB74()
{
  OUTLINED_FUNCTION_50_0();
  v1 = *(v0 + 520);
  v2 = *(v0 + 512);

  OUTLINED_FUNCTION_125();

  v3 = OUTLINED_FUNCTION_61_0();

  return v4(v3);
}

uint64_t sub_231CDEC1C()
{
  OUTLINED_FUNCTION_18();
  v1[50] = v2;
  v1[51] = v0;
  v1[48] = v3;
  v1[49] = v4;
  v1[46] = v5;
  v1[47] = v6;
  v1[52] = *v0;
  v7 = sub_231E10E30();
  v1[53] = v7;
  OUTLINED_FUNCTION_6(v7);
  v1[54] = v8;
  v9 = OUTLINED_FUNCTION_69();
  v1[56] = OUTLINED_FUNCTION_155_0(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74458, &qword_231E15D38);
  OUTLINED_FUNCTION_47(v10);
  v1[57] = OUTLINED_FUNCTION_69();
  v1[58] = swift_task_alloc();
  v11 = sub_231E0FD90();
  v1[59] = v11;
  OUTLINED_FUNCTION_6(v11);
  v1[60] = v12;
  v1[61] = OUTLINED_FUNCTION_55();
  v13 = sub_231E0F950();
  v1[62] = v13;
  OUTLINED_FUNCTION_6(v13);
  v1[63] = v14;
  v1[64] = OUTLINED_FUNCTION_55();
  v15 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_231CDEDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_57_0();
  v13 = v12[50];
  type metadata accessor for SpotlightReader();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_121();
  v12[65] = sub_231DF7564();
  sub_231D126F0();
  result = sub_231E0F8F0();
  v15 = 0;
  v16 = *(v13 + 16);
  v17 = v13 + 40;
  v18 = MEMORY[0x277D84F90];
LABEL_2:
  v12[66] = v18;
  v19 = (v17 + 16 * v15);
  while (v16 != v15)
  {
    if (v15 >= v16)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

    v20 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_16;
    }

    v21 = *(v19 - 1);
    v22 = *v19;

    v23 = sub_231CDBB24(v21, v22);
    v25 = v24;

    v19 += 2;
    ++v15;
    if (v25)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_231CE0B9C(0, *(v18 + 16) + 1, 1, v18);
        v18 = result;
      }

      v27 = *(v18 + 16);
      v26 = *(v18 + 24);
      if (v27 >= v26 >> 1)
      {
        result = sub_231CE0B9C((v26 > 1), v27 + 1, 1, v18);
        v18 = result;
      }

      *(v18 + 16) = v27 + 1;
      v28 = v18 + 16 * v27;
      *(v28 + 32) = v23;
      *(v28 + 40) = v25;
      v15 = v20;
      goto LABEL_2;
    }
  }

  v29 = swift_task_alloc();
  v12[67] = v29;
  *v29 = v12;
  v29[1] = sub_231CDEF80;
  OUTLINED_FUNCTION_27_1(v12[48]);
  OUTLINED_FUNCTION_44();

  return sub_231DFBC14();
}

uint64_t sub_231CDEF80()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 544) = v7;
  *(v3 + 552) = v8;
  *(v3 + 560) = v0;

  if (!v0)
  {
    *(v3 + 568) = *(v3 + 80);
    *(v3 + 576) = *(v3 + 88);
    *(v3 + 592) = *(v3 + 104);
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_231CDF0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_29();
  v13 = v12[69];
  v14 = v12[68];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
  v16 = OUTLINED_FUNCTION_123(v15);
  v12[75] = v16;
  *(v16 + 16) = xmmword_231E138E0;
  *(v16 + 32) = v14;
  *(v16 + 40) = v13;

  v17 = swift_task_alloc();
  v12[76] = v17;
  *v17 = v12;
  v17[1] = sub_231CDF1B0;
  v18 = v12[74];
  v19 = v12[73];
  v20 = v12[72];
  v21 = v12[71];

  return sub_231DFA158(v16, v21, v20, v19, v18);
}

uint64_t sub_231CDF1B0()
{
  OUTLINED_FUNCTION_29();
  v2 = *v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7_0();
  *v5 = v4;
  *(v2 + 616) = v6;
  *(v2 + 624) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_231CDF2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_50();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_51_0();
  a22 = v24;
  v27 = sub_231CBA138(v24[77]);
  v28 = v24[77];
  if (v27)
  {
    if ((v28 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_151();
      v30 = v116;
    }

    else
    {
      OUTLINED_FUNCTION_140();
      if (!v29)
      {
        __break(1u);
        return;
      }

      v30 = *(v28 + 32);
    }

    v24[79] = v30;

    v31 = OUTLINED_FUNCTION_95_0();
    v32 = [v31 summarizationStatus];

    if (v32)
    {
      v34 = v24[58];
      v33 = v24[59];
      v35 = *sub_231CC78D8();

      OUTLINED_FUNCTION_80();
      sub_231E0FDA0();
      if (__swift_getEnumTagSinglePayload(v34, 1, v33) == 1)
      {
        v35 = v24[58];
        v36 = v24[59];
        OUTLINED_FUNCTION_105();
        __swift_storeEnumTagSinglePayload(v37, v38, v39, v36);

        sub_231E0FD10();
        if (__swift_getEnumTagSinglePayload(v35, 1, v36) != 1)
        {
          sub_231CE1118(v24[58], &qword_27DD74458, &qword_231E15D38);
        }
      }

      else
      {
        v66 = OUTLINED_FUNCTION_126();
        v67(v66);
      }

      v68 = v24[61];
      sub_231CC1784(0, &qword_2814CAED0, 0x277CC34B8);
      v69 = sub_231CD6B44(v68);
      v24[80] = v69;
      v70 = OUTLINED_FUNCTION_95_0();
      v71 = [v70 summarizationStatus];

      [v69 setSummarizationStatus_];
      v72 = OUTLINED_FUNCTION_95_0();
      v73 = [v72 summarizationContentTopic];

      v74 = OUTLINED_FUNCTION_103();
      [v74 v75];

      v76 = OUTLINED_FUNCTION_95_0();
      v77 = [v76 summarizationContentTopLine];

      v78 = OUTLINED_FUNCTION_103();
      [v78 v79];

      v80 = OUTLINED_FUNCTION_95_0();
      v81 = [v80 summarizationContentSynopsis];

      v82 = OUTLINED_FUNCTION_103();
      [v82 v83];

      v84 = OUTLINED_FUNCTION_95_0();
      if (sub_231CE1178(v84, &selRef_summarizedIdentifiers))
      {
        sub_231E11850();
        OUTLINED_FUNCTION_49();
      }

      else
      {
        v35 = 0;
      }

      v85 = v24[49];
      v86 = v24[50];
      v87 = v24[48];
      [v69 setSummarizedIdentifiers_];

      sub_231DE93AC();
      OUTLINED_FUNCTION_122(v88, sel_setIsUrgent_);
      OUTLINED_FUNCTION_12_2(xmmword_231E13680);
      v89 = OUTLINED_FUNCTION_95_0();
      v90 = OUTLINED_FUNCTION_2_4();
      sub_231DE9728(v90, v91, v92, v89);

      v93 = OUTLINED_FUNCTION_95_0();
      v94 = OUTLINED_FUNCTION_1_5();
      sub_231DE9728(v94, v95, v96, v93);

      v97 = sub_231DE8A04(0);
      sub_231CE1280(v97, v98, v69);
      sub_231CE12E4(v87, v85, v69);
      sub_231CE133C(v86, v69);
      v99 = *(sub_231CC78C0() + 1);
      v100 = objc_allocWithZone(MEMORY[0x277CC34B0]);
      OUTLINED_FUNCTION_141();

      v101 = v69;

      v102 = OUTLINED_FUNCTION_86();
      v105 = sub_231CE0AF0(v102, v103, v104, v99, v101);
      v24[81] = v105;
      [v105 setIsUpdate_];
      v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73FB0, &qword_231E23560);
      v107 = OUTLINED_FUNCTION_76(v106);
      v24[82] = v107;
      OUTLINED_FUNCTION_48_0(v107, xmmword_231E13420);
      v108 = v105;
      v109 = swift_task_alloc();
      v24[83] = v109;
      *v109 = v24;
      OUTLINED_FUNCTION_28_0(v109);
      OUTLINED_FUNCTION_37();

      sub_231D5F40C(v110, v111, v112, v113, v114);
      return;
    }
  }

  else
  {
  }

  sub_231CB4EEC();
  v40 = OUTLINED_FUNCTION_18_2();
  v41(v40);

  v42 = sub_231E10E10();
  sub_231E11AF0();

  v43 = OUTLINED_FUNCTION_154();
  v44 = v24[69];
  if (v43)
  {
    v45 = v24[68];
    v46 = v24[63];
    a11 = v24[62];
    a12 = v24[64];
    v47 = v24[54];
    a9 = v24[53];
    a10 = v24[55];
    OUTLINED_FUNCTION_30_1();
    v48 = swift_slowAlloc();
    a13 = OUTLINED_FUNCTION_67();
    *v48 = 136446210;
    v49 = sub_231CB5000(v45, v44, &a13);

    *(v48 + 4) = v49;
    OUTLINED_FUNCTION_137();
    _os_log_impl(v50, v51, v52, v53, v48, 0xCu);
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_30();

    (*(v47 + 8))(a10, a9);
    (*(v46 + 8))(a12, a11);
  }

  else
  {

    v54 = OUTLINED_FUNCTION_70();
    v55(v54);
    v56 = OUTLINED_FUNCTION_25();
    v57(v56);
  }

  OUTLINED_FUNCTION_125();

  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_37();

  v59(v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_231CDF950()
{
  OUTLINED_FUNCTION_29();
  v2 = *v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 672) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_231CDFA84()
{
  v27 = v0;
  sub_231CB4EEC();
  v1 = OUTLINED_FUNCTION_18_2();
  v2(v1);

  v3 = sub_231E10E10();
  v4 = sub_231E11AF0();

  v5 = os_log_type_enabled(v3, v4);
  v24 = v0[81];
  v25 = v0[80];
  v6 = v0[79];
  v7 = v0[69];
  if (v5)
  {
    v8 = v0[68];
    v9 = v0[63];
    v21 = v0[62];
    v22 = v0[64];
    v20 = v0[56];
    v10 = v0[54];
    v19 = v0[53];
    OUTLINED_FUNCTION_30_1();
    v11 = swift_slowAlloc();
    v26 = OUTLINED_FUNCTION_67();
    *v11 = 136446210;
    v12 = sub_231CB5000(v8, v7, &v26);

    *(v11 + 4) = v12;
    _os_log_impl(&dword_231CAE000, v3, v4, "Transferred summarization attributes from message to notification stack; id: %{public}s", v11, 0xCu);
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_30();

    (*(v10 + 8))(v20, v19);
    (*(v9 + 8))(v22, v21);
  }

  else
  {
    v13 = v0[63];
    v23 = v0[64];
    v14 = v0[62];

    v15 = OUTLINED_FUNCTION_80();
    v16(v15);
    (*(v13 + 8))(v23, v14);
  }

  OUTLINED_FUNCTION_125();

  OUTLINED_FUNCTION_14_0();

  return v17();
}

uint64_t sub_231CDFCE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_47_0();

  v10 = OUTLINED_FUNCTION_29_1();
  v11(v10);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_66_0();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_231CDFD8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_47_0();

  v10 = OUTLINED_FUNCTION_29_1();
  v11(v10);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_66_0();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_231CDFE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_47_0();
  v11 = *(v10 + 648);
  v12 = *(v10 + 640);

  v13 = OUTLINED_FUNCTION_29_1();
  v14(v13);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_66_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

void sub_231CDFEF0(void *a1)
{
  v14 = MEMORY[0x277D84F90];
  v1 = sub_231CE139C(a1);
  if (v1)
  {
    v2 = v1;
    v3 = sub_231CBA138(v1);
    v4 = 0;
    v5 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v3 == v4)
      {

        sub_231CC1784(0, &qword_2814CAEF8, 0x277CC34C8);
        sub_231CE0138(v5);
        return;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x23837D2A0](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = sub_231CE1718(v6);
      if (!v9)
      {
        goto LABEL_16;
      }

      v10 = v8;
      v11 = v9;
      sub_231CC1784(0, &unk_2814CAF10, 0x277CCA898);
      v12 = sub_231CE00C4(v10, v11);
      v13 = [v7 isRichSmartReply];
      [objc_allocWithZone(MEMORY[0x277CC34D0]) initWithResponseText:v12 isRichSmartReply:v13];

      MEMORY[0x23837CD40]();
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_231E11890();
      }

      sub_231E118C0();

      v5 = v14;
      ++v4;
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
}

id sub_231CE00C4(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_231E115F0();

  v4 = [v2 initWithString_];

  return v4;
}

id sub_231CE0138(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_231CC1784(0, &unk_2814CAF38, 0x277CC34D0);
  v2 = sub_231E11850();

  v3 = [v1 initWithResponses_];

  return v3;
}

uint64_t sub_231CE01C0()
{
  OUTLINED_FUNCTION_18();
  v1[3] = v2;
  v1[4] = v0;
  OUTLINED_FUNCTION_127(v3);
  v4 = sub_231E10E30();
  v1[5] = v4;
  OUTLINED_FUNCTION_6(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_55();
  v6 = sub_231E0FD90();
  OUTLINED_FUNCTION_47(v6);
  v1[8] = OUTLINED_FUNCTION_55();
  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

unint64_t sub_231CE0284()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_47_0();
  v2 = v0[8];
  v3 = v0[2];
  sub_231CC1784(0, &qword_2814CAED0, 0x277CC34B8);
  sub_231E0FD20();
  v4 = sub_231CD6B44(v2);
  v0[9] = v4;
  sub_231CDFEF0(v3);
  v6 = v5;
  [v4 setSmartRepliesResponse_];

  result = sub_231CE139C(v3);
  if (result)
  {
    sub_231CBA138(result);
    OUTLINED_FUNCTION_141();

    if (v1)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    [v4 setSmartRepliesStatus_];
    sub_231E10000();
    sub_231E102F0();
    v9 = objc_allocWithZone(MEMORY[0x277CC34B0]);
    v10 = OUTLINED_FUNCTION_92(v4);
    v0[10] = v10;
    [v10 setIsUpdate_];
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73FB0, &qword_231E23560);
    v12 = OUTLINED_FUNCTION_76(v11);
    v0[11] = v12;
    OUTLINED_FUNCTION_48_0(v12, xmmword_231E13420);
    v13 = v10;
    v14 = swift_task_alloc();
    v0[12] = v14;
    *v14 = v0;
    OUTLINED_FUNCTION_8_3(v14);
    OUTLINED_FUNCTION_66_0();

    return sub_231D5F40C(v15, v16, v17, v18, v19);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_231CE043C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231CE053C()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_19();

  return v2();
}

uint64_t sub_231CE05A8()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_50_0();
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[9];

  sub_231DC4AB8();
  v4 = OUTLINED_FUNCTION_17_4();
  v5(v4);
  v6 = v1;
  v7 = sub_231E10E10();
  sub_231E11AD0();
  OUTLINED_FUNCTION_118_0();
  v8 = OUTLINED_FUNCTION_117();
  v9 = v0[13];
  if (v8)
  {
    OUTLINED_FUNCTION_30_1();
    swift_slowAlloc();
    v10 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_116(5.7779e-34);
    v11 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_97(v11);
    OUTLINED_FUNCTION_40_0(&dword_231CAE000, v12, v13, "Could not write Smart Replies response with error: %@");
    sub_231CE1118(v10, &qword_27DD74D30, &unk_231E13480);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();
  }

  else
  {
  }

  (*(v0[6] + 8))(v0[7], v0[5]);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_106();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_231CE0700()
{
  OUTLINED_FUNCTION_18();
  v1[3] = v2;
  v1[4] = v0;
  OUTLINED_FUNCTION_127(v3);
  v4 = sub_231E10E30();
  v1[5] = v4;
  OUTLINED_FUNCTION_6(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_55();
  v6 = sub_231E0FD90();
  OUTLINED_FUNCTION_47(v6);
  v1[8] = OUTLINED_FUNCTION_55();
  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

unint64_t sub_231CE07C4()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_47_0();
  v2 = v0[8];
  v3 = v0[2];
  sub_231CC1784(0, &qword_2814CAED0, 0x277CC34B8);
  sub_231E0FD70();
  v4 = sub_231CD6B44(v2);
  v0[9] = v4;
  sub_231CDFEF0(v3);
  v6 = v5;
  [v4 setSmartRepliesResponse_];

  result = sub_231CE139C(v3);
  if (result)
  {
    sub_231CBA138(result);
    OUTLINED_FUNCTION_141();

    if (v1)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    [v4 setSmartRepliesStatus_];
    sub_231E10690();
    sub_231E10660();
    v9 = objc_allocWithZone(MEMORY[0x277CC34B0]);
    v10 = OUTLINED_FUNCTION_92(v4);
    v0[10] = v10;
    [v10 setIsUpdate_];
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73FB0, &qword_231E23560);
    v12 = OUTLINED_FUNCTION_76(v11);
    v0[11] = v12;
    OUTLINED_FUNCTION_48_0(v12, xmmword_231E13420);
    v13 = v10;
    v14 = swift_task_alloc();
    v0[12] = v14;
    *v14 = v0;
    OUTLINED_FUNCTION_8_3(v14);
    OUTLINED_FUNCTION_66_0();

    return sub_231D5F40C(v15, v16, v17, v18, v19);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_231CE097C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231CE0A7C()
{
  memcpy(v2, (v0 + 16), sizeof(v2));
  sub_231CE140C(v2);

  return v0;
}

uint64_t sub_231CE0ABC()
{
  sub_231CE0A7C();

  return swift_deallocClassInstance();
}

id sub_231CE0AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a2)
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = sub_231E115F0();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = sub_231E115F0();

LABEL_6:
  v10 = [v5 initWithUniqueIdentifier:v8 domainIdentifier:v9 attributeSet:a5];

  return v10;
}

char *sub_231CE0B9C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_231CE0CA4(uint64_t a1, uint64_t a2)
{
  sub_231E12220();
  sub_231E116E0();
  v4 = sub_231E12250();

  return sub_231CE0D1C(a1, a2, v4);
}

unint64_t sub_231CE0D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_231E12100() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

_OWORD *sub_231CE0DD0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_231CE0CA4(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74468, &qword_231E15D78);
  if ((sub_231E11EA0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_231CE0CA4(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_231E12160();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = (v16[7] + 32 * v12);
    __swift_destroy_boxed_opaque_existential_0(v17);

    return sub_231CE1044(a1, v17);
  }

  else
  {
    sub_231CE0F18(v12, a2, a3, a1, v16);
  }
}

_OWORD *sub_231CE0F18(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_231CE1044(a4, (a5[7] + 32 * a1));
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

void sub_231CE0F84(uint64_t a1, void *a2)
{
  v3 = sub_231E11850();
  [a2 setSummarizedIdentifiers_];
}

void sub_231CE0FE4(uint64_t a1, void *a2)
{
  v3 = sub_231E11850();
  [a2 setAttachmentCaptions_];
}

_OWORD *sub_231CE1044(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_231CE1054(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_231CE1118(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_231CE1178(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_231E11870();

  return v4;
}

unint64_t sub_231CE11D8()
{
  result = qword_2814CAFD8;
  if (!qword_2814CAFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814CAFD8);
  }

  return result;
}

uint64_t sub_231CE122C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_231E11870();

  return v4;
}

void sub_231CE1280(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_231E115F0();

  [a3 setCreator_];
}

void sub_231CE12E4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_231E115F0();
  [a3 setThreadIdentifier_];
}

void sub_231CE133C(uint64_t a1, void *a2)
{
  v3 = sub_231E11850();
  [a2 setProviderDataTypeIdentifiers_];
}

uint64_t sub_231CE139C(void *a1)
{
  v1 = [a1 responses];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_231CC1784(0, &qword_2814CAF30, 0x277D6F240);
  v3 = sub_231E11870();

  return v3;
}

uint64_t get_enum_tag_for_layout_string_22ProactiveSummarization12FilterResultO6ReasonOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 0xD)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_22ProactiveSummarization0B6StatusO(uint64_t a1)
{
  if ((*(a1 + 17) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 17) & 3;
  }
}

uint64_t sub_231CE14BC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 272))
    {
      return OUTLINED_FUNCTION_108(*a1 + 2147483646);
    }

    v3 = *(a1 + 256);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    v4 = v3 - 1;
    if (v4 < 0)
    {
      return OUTLINED_FUNCTION_108(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_108(v4);
}

uint64_t sub_231CE150C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 264) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 272) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 272) = 0;
    }

    if (a2)
    {
      *(result + 256) = a2;
    }
  }

  return result;
}

uint64_t sub_231CE15BC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 120))
    {
      return OUTLINED_FUNCTION_108(*a1 + 2147483645);
    }

    OUTLINED_FUNCTION_114();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_108(v3);
}

void sub_231CE1604(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    OUTLINED_FUNCTION_115(result);
    *v3 = v4;
    if (v5 > v6)
    {
      *(v3 + 120) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      OUTLINED_FUNCTION_113_0(result, a2);
    }
  }
}

uint64_t sub_231CE166C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 121))
    {
      return OUTLINED_FUNCTION_108(*a1 + 2147483645);
    }

    OUTLINED_FUNCTION_114();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_108(v3);
}

void sub_231CE16B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    OUTLINED_FUNCTION_115(result);
    *(v3 + 120) = 0;
    *v3 = v4;
    if (v5 > v6)
    {
      *(v3 + 121) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 121) = 0;
    }

    if (a2)
    {
      OUTLINED_FUNCTION_113_0(result, a2);
    }
  }
}

uint64_t sub_231CE1718(void *a1)
{
  v1 = [a1 responseText];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_231E11620();

  return v3;
}

void OUTLINED_FUNCTION_12_2(__n128 a1)
{
  *(v1 + 272) = a1;
  *(v1 + 288) = 0u;
  *(v1 + 304) = 0u;
  *(v1 + 320) = 0u;
  *(v1 + 336) = 0u;
  *(v1 + 352) = 0u;
}

double OUTLINED_FUNCTION_21_1(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = *(v2 + 32);
  *(v5 + 48) = v4;
  *(v5 + 56) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_2(uint64_t a1)
{
  *(a1 + 8) = sub_231CD975C;
  v7 = v3[224];
  v8 = v3[220];
  v9 = v3[196];
  v6[6] = v1;
  v6[7] = v2;
  v6[4] = v5;
  v6[5] = v4;
  v6[2] = v7;
  v6[3] = v8;
  return v9;
}

void OUTLINED_FUNCTION_31_1()
{

  JUMPOUT(0x23837E1D0);
}

uint64_t OUTLINED_FUNCTION_33_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2822009F8](a1, a2, a3);
}

void OUTLINED_FUNCTION_40_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_43_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

__n128 *OUTLINED_FUNCTION_48_0(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_49_0()
{

  return swift_slowAlloc();
}

unint64_t OUTLINED_FUNCTION_52_0(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *v7 = a1;

  return sub_231CB5000(v6, v5, va);
}

unint64_t OUTLINED_FUNCTION_53_0(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  *v11 = a1;

  return sub_231CB5000(v10, v9, va);
}

uint64_t OUTLINED_FUNCTION_55_0()
{
}

void OUTLINED_FUNCTION_60_0()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x23837E1D0);
}

uint64_t OUTLINED_FUNCTION_65_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_73()
{
}

void *OUTLINED_FUNCTION_75()
{

  return memcpy((v1 + 16), (v0 + 16), 0x80uLL);
}

uint64_t OUTLINED_FUNCTION_76(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_77()
{

  return sub_231CB4EEC();
}

id OUTLINED_FUNCTION_83_0()
{

  return [v1 (v0 + 116)];
}

id OUTLINED_FUNCTION_84()
{

  return [v1 (v0 + 116)];
}

BOOL OUTLINED_FUNCTION_85()
{

  return os_log_type_enabled(v0, v1);
}

id OUTLINED_FUNCTION_87(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_91(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 408) = a7;
  *(v8 + 416) = v7;
  *(v8 + 392) = a5;
  *(v8 + 400) = a6;
  *(v8 + 376) = a2;
  *(v8 + 384) = a4;
  *(v8 + 560) = a3;
  *(v8 + 368) = a1;

  return sub_231E10E30();
}

id OUTLINED_FUNCTION_92(void *a1)
{

  return sub_231CE0AF0(v2, v3, v1, v4, a1);
}

id OUTLINED_FUNCTION_93(void *a1)
{

  return sub_231CE0AF0(v3, v4, v2, v1, a1);
}

id OUTLINED_FUNCTION_94()
{

  return sub_231CE0AF0(v3, v2, v0, v1, v4);
}

id OUTLINED_FUNCTION_95_0()
{

  return [v0 (v1 + 116)];
}

id OUTLINED_FUNCTION_96(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_97(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_99(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  *(v9 + 72) = a7;
  *(v9 + 80) = a8;
  *(v9 + 56) = a5;
  *(v9 + 64) = a6;
  *(v9 + 40) = a3;
  *(v9 + 48) = a4;
  *(v9 + 32) = a9;
  *(v9 + 16) = result;
  *(v9 + 24) = a2;
  return result;
}

void OUTLINED_FUNCTION_109_0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, os_log_t log)
{

  _os_log_impl(a1, log, v9, a4, v10, 0xCu);
}

id OUTLINED_FUNCTION_110()
{

  return [v0 (v1 + 116)];
}

uint64_t OUTLINED_FUNCTION_111()
{
}

uint64_t OUTLINED_FUNCTION_112()
{
}

double OUTLINED_FUNCTION_115(uint64_t a1)
{
  result = 0.0;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  return result;
}

id OUTLINED_FUNCTION_116(float a1)
{
  *v2 = a1;

  return v1;
}

BOOL OUTLINED_FUNCTION_117()
{

  return os_log_type_enabled(v0, v1);
}

void OUTLINED_FUNCTION_118_0()
{
}

id OUTLINED_FUNCTION_119()
{

  return [v0 (v1 + 116)];
}

uint64_t OUTLINED_FUNCTION_121()
{

  return sub_231CE10BC(v0 + 16, v0 + 144);
}

id OUTLINED_FUNCTION_122(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_123(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_143(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
}

uint64_t OUTLINED_FUNCTION_144(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2822009F8](a1, a2, a3);
}

void *OUTLINED_FUNCTION_145()
{

  return memcpy((v1 + 16), (v0 + 16), 0x80uLL);
}

unint64_t OUTLINED_FUNCTION_146(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *v7 = a1;

  return sub_231CB5000(v6, v5, va);
}

uint64_t OUTLINED_FUNCTION_147(uint64_t a1)
{

  return sub_231E11EA0();
}

void *OUTLINED_FUNCTION_148(int a1, int a2, int a3, void *__src, int a5, int a6, int a7, int a8, uint64_t a9, __int16 a10, char a11, uint64_t a12)
{

  return memcpy(&a12, __src, 0x60uLL);
}

uint64_t OUTLINED_FUNCTION_149()
{
}

id OUTLINED_FUNCTION_150(uint64_t a1)
{
  *(v2 + 64) = a1;

  return sub_231DE938C(v1);
}

void OUTLINED_FUNCTION_151()
{

  JUMPOUT(0x23837D2A0);
}

id OUTLINED_FUNCTION_152()
{

  return sub_231CD6B44(v0);
}

uint64_t OUTLINED_FUNCTION_153()
{
}

BOOL OUTLINED_FUNCTION_154()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_155_0(uint64_t a1)
{
  *(v1 + 440) = a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_156_0(uint64_t a1)
{

  return sub_231E0FD40();
}

uint64_t OUTLINED_FUNCTION_157()
{
}

uint64_t sub_231CE2244()
{
  v0 = sub_231E10140();
  v2 = sub_231CE227C(v0, v1);

  return v2 & 1;
}

uint64_t sub_231CE227C(uint64_t a1, uint64_t a2)
{
  v4 = sub_231CC7B14();
  if (a2)
  {
    if (*v4 == a1 && v4[1] == a2)
    {
      v6 = 0;
    }

    else
    {
      v6 = sub_231E12100() ^ 1;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

uint64_t sub_231CE22E0(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return qword_231E167C8[a1];
  }
}

uint64_t sub_231CE2318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  if (HIBYTE(a3))
  {
    if (HIBYTE(a3) == 1)
    {
      v5 = MEMORY[0x277D421C0];
    }

    else if (a2 | a1 || a3)
    {
      if (a1 != 1 || a2 || a3)
      {
        if (a3)
        {
          v6 = 0;
        }

        else
        {
          v6 = a2 == 0;
        }

        v7 = v6 && a1 == 2;
        v5 = MEMORY[0x277D421C8];
        if (v7)
        {
          v5 = MEMORY[0x277D421E8];
        }
      }

      else
      {
        v5 = MEMORY[0x277D421E0];
      }
    }

    else
    {
      v5 = MEMORY[0x277D421D8];
    }
  }

  else
  {
    v5 = MEMORY[0x277D421D0];
  }

  v8 = *v5;
  v9 = sub_231E0FE20();
  v10 = *(*(v9 - 8) + 104);

  return v10(a4, v8, v9);
}

BOOL sub_231CE2438(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  if (HIBYTE(a3))
  {
    if (HIBYTE(a3) == 1)
    {
      v6 = 4;
    }

    else if (a2 | a1 || a3)
    {
      if (a1 != 1 || a2 || a3)
      {
        if (a3)
        {
          v7 = 0;
        }

        else
        {
          v7 = a2 == 0;
        }

        v8 = v7 && a1 == 2;
        v6 = 5;
        if (v8)
        {
          v6 = 3;
        }
      }

      else
      {
        v6 = 1;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 2;
  }

  if (HIBYTE(a6))
  {
    if (HIBYTE(a6) == 1)
    {
      v9 = 4;
    }

    else if (a5 | a4 || a6)
    {
      if (a4 != 1 || a5 || a6)
      {
        if (a6)
        {
          v10 = 0;
        }

        else
        {
          v10 = a5 == 0;
        }

        v11 = v10 && a4 == 2;
        v9 = 5;
        if (v11)
        {
          v9 = 3;
        }
      }

      else
      {
        v9 = 1;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 2;
  }

  return v6 == v9;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_231CE254C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 18))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 17);
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

uint64_t sub_231CE258C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = -a2;
    }
  }

  return result;
}

uint64_t sub_231CE25D0(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
  }

  *(result + 17) = a2;
  return result;
}

void *sub_231CE25FC@<X0>(void *__src@<X4>, char a2@<W0>, uint64_t a3@<X1>, uint64_t a4@<X2>, unsigned int a5@<W3>, uint64_t a6@<X8>)
{
  v6 = a5;
  v11 = a5 >> 8;
  memcpy(&__srca[6], __src, 0x60uLL);
  *a6 = a2;
  *(a6 + 8) = a3;
  *(a6 + 16) = a4;
  *(a6 + 24) = v6;
  *(a6 + 25) = v11;
  return memcpy((a6 + 26), __srca, 0x66uLL);
}

uint64_t sub_231CE267C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74480, &qword_231E16838);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v18 - v2;
  v4 = sub_231E0FC90();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - v9;
  if (*(v0 + 25))
  {
    return 0;
  }

  v11 = *(v0 + 8);
  if (!v11)
  {
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
    v16 = 0;
    goto LABEL_7;
  }

  v18[1] = *(v0 + 8);
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73F90, &qword_231E16840);
  v13 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v3, v13 ^ 1u, 1, v4);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
LABEL_7:
    sub_231CE28F0(v3);
    return 0;
  }

  v14 = *(v5 + 32);
  v14(v10, v3, v4);
  v14(v8, v10, v4);
  v15 = (*(v5 + 88))(v8, v4);
  if (v15 == *MEMORY[0x277D29D50])
  {
    (*(v5 + 8))(v8, v4);
    return 1;
  }

  if (v15 == *MEMORY[0x277D29D40])
  {
    return 1;
  }

  (*(v5 + 8))(v8, v4);
  return 0;
}

uint64_t sub_231CE28F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74480, &qword_231E16838);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_22ProactiveSummarization13UrgencyStatusO(uint64_t a1)
{
  if ((*(a1 + 17) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 17) & 3;
  }
}

uint64_t sub_231CE297C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 128))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_231CE29DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata accessor for InMemoryContactNameCache.Result(uint64_t a1)
{
  result = qword_2814CD580;
  if (!qword_2814CD580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_231CE2AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for InMemoryContactNameCache.Result(0);
  return sub_231E0F920();
}

uint64_t sub_231CE2AE0(uint64_t a1, double a2)
{
  result = swift_allocObject();
  *(result + 32) = 0;
  v5 = MEMORY[0x277D84F90];
  *(result + 40) = 0;
  *(result + 48) = v5;
  *(result + 56) = v5;
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

void sub_231CE2B38()
{
  os_unfair_lock_lock((v0 + 32));
  sub_231CE2B74((v0 + 40), v0);

  os_unfair_lock_unlock((v0 + 32));
}

unint64_t sub_231CE2B74(void *a1, uint64_t a2)
{
  v81 = a2;
  sub_231E10E30();
  OUTLINED_FUNCTION_24();
  v67 = v4;
  v68 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_1();
  v66 = v6 - v5;
  v80 = sub_231E0F950();
  OUTLINED_FUNCTION_24();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_139();
  v79 = v10;
  MEMORY[0x28223BE20](v11);
  v78 = &v65 - v12;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD744B8, &qword_231E16B98);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_139();
  v71 = v14;
  MEMORY[0x28223BE20](v15);
  v17 = (&v65 - v16);
  v18 = &qword_27DD744C0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD744C0, &qword_231E16BA0);
  MEMORY[0x28223BE20](v19 - 8);
  OUTLINED_FUNCTION_139();
  v82 = v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v65 - v22;
  v24 = *a1;
  v25 = a1[1];
  v69 = a1;
  v70 = v24;
  v26 = a1[2];
  v83 = *(v26 + 16);
  v72 = v25 + 32;
  v76 = (v8 + 8);
  v77 = (v8 + 16);

  v74 = v25;

  v28 = 0;
  v29 = 0;
  v75 = v17;
  do
  {
    if (v29 >= v83)
    {
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD744C8, &unk_231E16BA8);
      v42 = v82;
      __swift_storeEnumTagSinglePayload(v82, 1, 1, v44);
    }

    else
    {
      if ((v29 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      if (v29 >= *(v74 + 16))
      {
        goto LABEL_19;
      }

      v30 = v73;
      v31 = *(v73 + 48);
      v32 = (v72 + 16 * v29);
      v33 = v32[1];
      *v17 = *v32;
      v17[1] = v33;
      if (v29 >= *(v26 + 16))
      {
        goto LABEL_20;
      }

      v34 = v18;
      v35 = v30;
      v36 = *(type metadata accessor for InMemoryContactNameCache.Result(0) - 8);
      sub_231CE3448(v26 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v29++, v17 + v31);
      v37 = v71;
      sub_231CE4738(v17, v71, &qword_27DD744B8, &qword_231E16B98);
      v38 = *(v35 + 48);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD744C8, &unk_231E16BA8);
      v40 = *(v39 + 48);
      v41 = v37[1];
      v42 = v82;
      *v82 = *v37;
      v42[1] = v41;
      v43 = v37 + v38;
      v18 = v34;
      sub_231CE4600(v43, v42 + v40);
      __swift_storeEnumTagSinglePayload(v42, 0, 1, v39);
    }

    sub_231CE4738(v42, v23, v18, &qword_231E16BA0);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD744C8, &unk_231E16BA8);
    if (__swift_getEnumTagSinglePayload(v23, 1, v45) == 1)
    {
      goto LABEL_13;
    }

    v46 = &v23[*(v45 + 48)];
    v47 = type metadata accessor for InMemoryContactNameCache.Result(0);
    v48 = v78;
    v49 = v80;
    (*v77)(v78, v46 + *(v47 + 20), v80);
    sub_231CE3DD8(v46);
    sub_231E0F870();
    v51 = v50;
    v52 = *v76;
    (*v76)(v48, v49);
    v53 = v79;
    sub_231E0F920();
    sub_231E0F870();
    v55 = v54;
    result = v52(v53, v49);
    if (v55 - *(v81 + 24) < v51)
    {
      goto LABEL_13;
    }

    v56 = __OFADD__(v28++, 1);
    v17 = v75;
  }

  while (!v56);
  __break(1u);
LABEL_13:

  if (v28 >= 1)
  {
    v57 = *(v26 + 16);
    v58 = sub_231CB4EEC();
    v60 = v66;
    v59 = v67;
    v61 = v68;
    (*(v67 + 16))(v66, v58, v68);
    v62 = sub_231E10E10();
    v63 = sub_231E11AF0();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 134218240;
      *(v64 + 4) = v28;
      *(v64 + 12) = 2048;
      *(v64 + 14) = v57;
      _os_log_impl(&dword_231CAE000, v62, v63, "InMemoryContactCache: Removing %ld/%ld items", v64, 0x16u);
      MEMORY[0x23837E1D0](v64, -1, -1);
    }

    (*(v59 + 8))(v60, v61);
    return sub_231CE315C(v28);
  }

  return result;
}

unint64_t sub_231CE315C(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = result;
  if (*(*(v1 + 16) + 16) < result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (*(*(v1 + 8) + 16) >= result)
  {
    sub_231CB54B0(0, result);
    return sub_231CE4110(v2);
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_231CE31D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_231E10E30();
  OUTLINED_FUNCTION_24();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_1();
  v14 = v13 - v12;
  v15 = type metadata accessor for InMemoryContactNameCache.Result(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4_1();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74488, &qword_231E16A60);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v28 - v21;
  os_unfair_lock_lock((v4 + 32));
  sub_231CE3448(a1, v22);
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v15);

  sub_231CE34AC(v22, a2, a3);
  v23 = *(*(v4 + 56) + 16);
  if (*(v4 + 16) < v23)
  {
    sub_231CE3894(v19);

    sub_231CE3DD8(v19);
    v23 = *(*(v4 + 56) + 16);
  }

  v24 = sub_231CB4EEC();
  (*(v10 + 16))(v14, v24, v8);
  v25 = sub_231E10E10();
  v26 = sub_231E11AF0();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 134217984;
    *(v27 + 4) = v23;
    _os_log_impl(&dword_231CAE000, v25, v26, "InMemoryContactCache: Adding item, count: %ld", v27, 0xCu);
    MEMORY[0x23837E1D0](v27, -1, -1);
  }

  (*(v10 + 8))(v14, v8);
  os_unfair_lock_unlock((v4 + 32));
}

uint64_t sub_231CE3448(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InMemoryContactNameCache.Result(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_231CE34AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for InMemoryContactNameCache.Result(0);
  v44 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v43 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v42 = &v40 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v40 - v13;
  MEMORY[0x28223BE20](v12);
  v41 = &v40 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD744B0, &qword_231E16B90);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v40 - v18;
  v21 = *v3;
  v20 = v3[1];
  v40 = a2;
  v50[0] = a2;
  v50[1] = a3;
  v47 = v21;
  v48 = v20;
  v49 = v50;
  v22 = sub_231CC5DC8(sub_231CC6BE0, v46, v20);
  v24 = v23;
  v26 = v25;
  v27 = *(v17 + 56);
  v45 = a1;
  sub_231CE4664(a1, &v19[v27]);
  if (v24)
  {
    if (__swift_getEnumTagSinglePayload(&v19[v27], 1, v7) == 1)
    {
      sub_231CC154C(v45, &qword_27DD74488, &qword_231E16A60);
    }

    else
    {
      v29 = v42;
      sub_231CE4600(&v19[v27], v42);
      sub_231CC5F44(v40, a3, v26);

      v30 = v43;
      sub_231CE3448(v29, v43);
      v33 = v3[2];
      v32 = v3 + 2;
      v31 = v33;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v32 = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_231CE442C(0, *(v31 + 16) + 1, 1);
        v31 = *v32;
      }

      v36 = *(v31 + 16);
      v35 = *(v31 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_231CE442C((v35 > 1), v36 + 1, 1);
      }

      sub_231CC154C(v45, &qword_27DD74488, &qword_231E16A60);
      sub_231CE3DD8(v29);
      v37 = *v32;
      *(v37 + 16) = v36 + 1;
      result = sub_231CE4600(v30, v37 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v36);
      *v32 = v37;
    }
  }

  else
  {

    if (__swift_getEnumTagSinglePayload(&v19[v27], 1, v7) == 1)
    {
      sub_231CC60A8(v22, v26);

      sub_231CE4178(v22, v14);
      sub_231CC154C(v45, &qword_27DD74488, &qword_231E16A60);
      return sub_231CE3DD8(v14);
    }

    v38 = v41;
    sub_231CE4600(&v19[v27], v41);
    v39 = v3[2];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = sub_231CE4264(v39);
    }

    result = sub_231CC154C(v45, &qword_27DD74488, &qword_231E16A60);
    if ((v22 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v22 < v39[2])
    {
      result = sub_231CE46D4(v38, v39 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v22);
      v3[2] = v39;
      return result;
    }

    __break(1u);
  }

  return result;
}

void sub_231CE3894(uint64_t a1)
{
  if (*(v1[2] + 16))
  {
    v3 = *v1;
    if (*v1)
    {
      v4 = v1[1];

      v5 = sub_231CC66B0((v3 + 16), v3 + 32, v3, v4, 0);
    }

    else
    {
      v5 = 0;
    }

    sub_231CC60A8(0, v5);
    sub_231CE4178(0, a1);
  }

  else
  {
    __break(1u);
  }
}

void sub_231CE3950(uint64_t a1, uint64_t a2)
{
  (*(*v2 + 112))();
  os_unfair_lock_lock((v2 + 32));
  sub_231CE39FC((v2 + 40), a1, a2, &v5, &v6);
  os_unfair_lock_unlock((v2 + 32));
}

uint64_t sub_231CE39FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v26 = a4;
  v32 = a5;
  v8 = type metadata accessor for InMemoryContactNameCache.Result(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_1();
  v25 = (v11 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74488, &qword_231E16A60);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v25 - v13;
  v15 = *a1;
  v16 = a1[1];
  v31[0] = a2;
  v31[1] = a3;
  v28 = v15;
  v29 = v16;
  v30 = v31;

  sub_231CC5DC8(sub_231CC69D0, v27, v16);
  v18 = v17;

  if (v18)
  {
    sub_231CE45AC();
    v19 = swift_allocError();
    result = swift_willThrow();
    *v26 = v19;
  }

  else
  {
    sub_231CE3C1C(a2, a3, v15, v16, a1[2], v14);
    if (__swift_getEnumTagSinglePayload(v14, 1, v8))
    {
      result = sub_231CC154C(v14, &qword_27DD74488, &qword_231E16A60);
      v21 = 0;
      v22 = 0;
    }

    else
    {
      v23 = v25;
      sub_231CE3448(v14, v25);
      sub_231CC154C(v14, &qword_27DD74488, &qword_231E16A60);
      v21 = *v23;
      v22 = v23[1];

      result = sub_231CE3DD8(v23);
    }

    v24 = v32;
    *v32 = v21;
    v24[1] = v22;
  }

  return result;
}

uint64_t sub_231CE3C1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v14[0] = a1;
  v14[1] = a2;
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v14;
  v8 = sub_231CC5DC8(sub_231CC6BE0, v13, a4);
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    sub_231CE4058(v8, a5, a6);
    v10 = 0;
  }

  v11 = type metadata accessor for InMemoryContactNameCache.Result(0);
  return __swift_storeEnumTagSinglePayload(a6, v10, 1, v11);
}

uint64_t sub_231CE3CBC()
{
  sub_231CC154C(v0 + 40, &qword_27DD74490, &qword_231E16A68);

  return swift_deallocClassInstance();
}

uint64_t sub_231CE3D04(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for InMemoryContactNameCache.Result(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    type metadata accessor for InMemoryContactNameCache.Result(0);

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_231CE3DD8(uint64_t a1)
{
  v2 = type metadata accessor for InMemoryContactNameCache.Result(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_231CE3E38()
{
  result = qword_27DD74498;
  if (!qword_27DD74498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD74498);
  }

  return result;
}

void sub_231CE3ED8(uint64_t a1)
{
  sub_231CE3F5C();
  if (v1 <= 0x3F)
  {
    sub_231E0F950();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_231CE3F5C()
{
  if (!qword_2814CAF90)
  {
    v0 = sub_231E11BF0();
    if (!v1)
    {
      atomic_store(v0, &qword_2814CAF90);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for InMemoryContactNameCache.InMemoryContactNameCacheError(_BYTE *result, int a2, int a3)
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

unint64_t sub_231CE4058@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  if (*(a2 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = *(type metadata accessor for InMemoryContactNameCache.Result(0) - 8);
  v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v4;

  return sub_231CE3448(v7, a3);
}

uint64_t sub_231CE4110(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  result = sub_231CB5794(0, result, *(*v1 + 16));
  if (v2)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if (result < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  return sub_231CE444C(0, result);
}

uint64_t sub_231CE4178@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_231CE4264(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = *(type metadata accessor for InMemoryContactNameCache.Result(0) - 8);
    v9 = *(v8 + 72);
    v10 = v5 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + v9 * a1;
    sub_231CE4600(v10, a2);
    result = sub_231CE3D04(v10 + v9, v7 - 1 - a1, v10);
    *(v5 + 16) = v7 - 1;
    *v2 = v5;
  }

  return result;
}

void *sub_231CE4278(void *result, int64_t a2, char a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD744A8, &unk_231E16B80);
  v10 = *(type metadata accessor for InMemoryContactNameCache.Result(0) - 8);
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
  v15 = *(type metadata accessor for InMemoryContactNameCache.Result(0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_231CE3D04(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_231CE442C(void *a1, int64_t a2, char a3)
{
  result = sub_231CE4278(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_231CE444C(uint64_t result, int64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = result;
  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v8 = result - a2;
  if (__OFSUB__(0, v7))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v9 = v5 - v7;
  if (__OFADD__(v5, v8))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v9 <= *(v4 + 24) >> 1)
    {
      goto LABEL_15;
    }

    if (v5 <= v9)
    {
      v11 = v5 + v8;
    }

    else
    {
      v11 = v5;
    }
  }

  else if (v5 <= v9)
  {
    v11 = v5 + v8;
  }

  else
  {
    v11 = v5;
  }

  sub_231CE442C(isUniquelyReferenced_nonNull_native, v11, 1);
  v4 = *v2;
LABEL_15:
  v12 = *(type metadata accessor for InMemoryContactNameCache.Result(0) - 8);
  v13 = v4 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v14 = *(v12 + 72);
  v15 = v13 + v14 * v6;
  result = swift_arrayDestroy();
  if (!v7)
  {
LABEL_19:
    *v2 = v4;
    return result;
  }

  v16 = *(v4 + 16);
  if (__OFSUB__(v16, a2))
  {
    goto LABEL_25;
  }

  result = sub_231CE3D04(v13 + v14 * a2, v16 - a2, v15);
  v17 = *(v4 + 16);
  v18 = __OFADD__(v17, v8);
  v19 = v17 - v7;
  if (!v18)
  {
    *(v4 + 16) = v19;
    goto LABEL_19;
  }

LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_231CE45AC()
{
  result = qword_2814CB370[0];
  if (!qword_2814CB370[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814CB370);
  }

  return result;
}

uint64_t sub_231CE4600(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InMemoryContactNameCache.Result(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_231CE4664(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74488, &qword_231E16A60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_231CE46D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InMemoryContactNameCache.Result(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_231CE4738(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_12();
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_231CE4798()
{
  OUTLINED_FUNCTION_18();
  v0[11] = v1;
  v2 = sub_231E0F9A0();
  v0[12] = v2;
  OUTLINED_FUNCTION_6(v2);
  v0[13] = v3;
  v0[14] = OUTLINED_FUNCTION_69();
  v0[15] = swift_task_alloc();
  v4 = sub_231E0FB30();
  v0[16] = v4;
  OUTLINED_FUNCTION_6(v4);
  v0[17] = v5;
  v0[18] = OUTLINED_FUNCTION_69();
  v0[19] = swift_task_alloc();
  v6 = sub_231E0FAE0();
  v0[20] = v6;
  OUTLINED_FUNCTION_6(v6);
  v0[21] = v7;
  v0[22] = OUTLINED_FUNCTION_55();
  v8 = sub_231E0FB00();
  v0[23] = v8;
  OUTLINED_FUNCTION_6(v8);
  v0[24] = v9;
  v0[25] = OUTLINED_FUNCTION_55();
  v10 = sub_231E10340();
  v0[26] = v10;
  OUTLINED_FUNCTION_6(v10);
  v0[27] = v11;
  v0[28] = OUTLINED_FUNCTION_69();
  v0[29] = swift_task_alloc();
  v0[30] = swift_task_alloc();
  v12 = sub_231E10E30();
  v0[31] = v12;
  OUTLINED_FUNCTION_6(v12);
  v0[32] = v13;
  v0[33] = OUTLINED_FUNCTION_69();
  v0[34] = swift_task_alloc();
  v0[35] = swift_task_alloc();
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_231CE4F00()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  *(v4 + 360) = v0;

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231CE5288()
{
  v38 = v0;
  v6 = *(v0 + 192);
  v5 = *(v0 + 200);
  v7 = *(v0 + 184);

  (*(v6 + 8))(v5, v7);
  v8 = *(v0 + 360);
  OUTLINED_FUNCTION_2_5();
  v9 = OUTLINED_FUNCTION_15_4();
  v10(v9);
  v11 = OUTLINED_FUNCTION_10_5();
  (v3)(v11);
  v12 = v8;
  v13 = sub_231E10E10();
  v14 = sub_231E11AD0();

  if (os_log_type_enabled(v13, v14))
  {
    OUTLINED_FUNCTION_17_5();
    v35 = OUTLINED_FUNCTION_27_2();
    v37 = v35;
    *v3 = 136446466;
    sub_231E10000();
    v15 = OUTLINED_FUNCTION_26_2();
    v16(v15);
    sub_231CB5000(v1, v2, &v37);
    OUTLINED_FUNCTION_41_1();
    OUTLINED_FUNCTION_11_4();
    *(v0 + 80) = v8;
    v17 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73F90, &qword_231E16840);
    v18 = sub_231E11680();
    v20 = sub_231CB5000(v18, v19, &v37);

    *(v3 + 14) = v20;
    OUTLINED_FUNCTION_53_1(&dword_231CAE000, v21, v22, "Mail Summarization Feedback donation failed: %{public}s, error: %{public}s");
    OUTLINED_FUNCTION_54_1(v23, v24, v25, v26, v27, v28, v29, v30, v34, v35);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();

    v36();
  }

  else
  {
    OUTLINED_FUNCTION_31_2();

    (v3)(v2, v14);
    v31 = OUTLINED_FUNCTION_18_0();
    v4(v31);
  }

  OUTLINED_FUNCTION_0_8();

  OUTLINED_FUNCTION_19();

  return v32();
}

uint64_t sub_231CE54F8()
{
  OUTLINED_FUNCTION_18();
  sub_231E10340();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38(v0);
  *v1 = v2;
  v1[1] = sub_231CBFF60;

  return sub_231CE4798();
}

uint64_t sub_231CE55B8(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  v6 = a2(0);
  OUTLINED_FUNCTION_24();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75180, &qword_231E13690);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v19 - v13;
  if ([objc_opt_self() isInternalBuild] & 1) != 0 || (result = OUTLINED_FUNCTION_155(), (result))
  {
    v16 = sub_231E119F0();
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v16);
    (*(v8 + 16))(v11, a1, v6);
    v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    (*(v8 + 32))(v18 + v17, v11, v6);
    sub_231CC3BE0(0, 0, v14, a4, v18);
  }

  return result;
}

uint64_t sub_231CE5774()
{
  OUTLINED_FUNCTION_18();
  v0[11] = v1;
  v2 = sub_231E0F9A0();
  v0[12] = v2;
  OUTLINED_FUNCTION_6(v2);
  v0[13] = v3;
  v0[14] = OUTLINED_FUNCTION_69();
  v0[15] = swift_task_alloc();
  v4 = sub_231E0FB30();
  v0[16] = v4;
  OUTLINED_FUNCTION_6(v4);
  v0[17] = v5;
  v0[18] = OUTLINED_FUNCTION_69();
  v0[19] = swift_task_alloc();
  v6 = sub_231E0FAE0();
  v0[20] = v6;
  OUTLINED_FUNCTION_6(v6);
  v0[21] = v7;
  v0[22] = OUTLINED_FUNCTION_55();
  v8 = sub_231E0FB00();
  v0[23] = v8;
  OUTLINED_FUNCTION_6(v8);
  v0[24] = v9;
  v0[25] = OUTLINED_FUNCTION_55();
  v10 = sub_231E106A0();
  v0[26] = v10;
  OUTLINED_FUNCTION_6(v10);
  v0[27] = v11;
  v0[28] = OUTLINED_FUNCTION_69();
  v0[29] = swift_task_alloc();
  v0[30] = swift_task_alloc();
  v12 = sub_231E10E30();
  v0[31] = v12;
  OUTLINED_FUNCTION_6(v12);
  v0[32] = v13;
  v0[33] = OUTLINED_FUNCTION_69();
  v0[34] = swift_task_alloc();
  v0[35] = swift_task_alloc();
  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_231CE5ED4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  *(v4 + 360) = v0;

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231CE625C()
{
  v38 = v0;
  v6 = *(v0 + 192);
  v5 = *(v0 + 200);
  v7 = *(v0 + 184);

  (*(v6 + 8))(v5, v7);
  v8 = *(v0 + 360);
  OUTLINED_FUNCTION_2_5();
  v9 = OUTLINED_FUNCTION_15_4();
  v10(v9);
  v11 = OUTLINED_FUNCTION_10_5();
  (v3)(v11);
  v12 = v8;
  v13 = sub_231E10E10();
  v14 = sub_231E11AD0();

  if (os_log_type_enabled(v13, v14))
  {
    OUTLINED_FUNCTION_17_5();
    v35 = OUTLINED_FUNCTION_27_2();
    v37 = v35;
    *v3 = 136446466;
    sub_231E10690();
    v15 = OUTLINED_FUNCTION_26_2();
    v16(v15);
    sub_231CB5000(v1, v2, &v37);
    OUTLINED_FUNCTION_41_1();
    OUTLINED_FUNCTION_11_4();
    *(v0 + 80) = v8;
    v17 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73F90, &qword_231E16840);
    v18 = sub_231E11680();
    v20 = sub_231CB5000(v18, v19, &v37);

    *(v3 + 14) = v20;
    OUTLINED_FUNCTION_53_1(&dword_231CAE000, v21, v22, "Message Summarization Feedback donation failed: %{public}s, error: %{public}s");
    OUTLINED_FUNCTION_54_1(v23, v24, v25, v26, v27, v28, v29, v30, v34, v35);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();

    v36();
  }

  else
  {
    OUTLINED_FUNCTION_31_2();

    (v3)(v2, v14);
    v31 = OUTLINED_FUNCTION_18_0();
    v4(v31);
  }

  OUTLINED_FUNCTION_0_8();

  OUTLINED_FUNCTION_19();

  return v32();
}

uint64_t objectdestroyTm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  OUTLINED_FUNCTION_24();
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 32) & ~v5;
  v8 = *(v7 + 64);
  swift_unknownObjectRelease();
  (*(v4 + 8))(v1 + v6, v2);

  return MEMORY[0x2821FE8E8](v1, v6 + v8, v5 | 7);
}

uint64_t sub_231CE658C()
{
  OUTLINED_FUNCTION_18();
  sub_231E106A0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_38(v0);
  *v1 = v2;
  v1[1] = sub_231CC6BF8;

  return sub_231CE5774();
}

unint64_t sub_231CE6700()
{
  result = qword_2814CBC50;
  if (!qword_2814CBC50)
  {
    sub_231E0F9A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814CBC50);
  }

  return result;
}

uint64_t sub_231CE6758(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75180, &qword_231E13690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_8_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{

  return MEMORY[0x28215E7F0](a18, 0, 0, 0, a17, v18, 0, 0, 0, 0, 0);
}

uint64_t OUTLINED_FUNCTION_17_5()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_27_2()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_31_2()
{
}

uint64_t OUTLINED_FUNCTION_37_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  a22 = a1;
  a19 = v22;

  return MEMORY[0x28215E8A0](&a19);
}

void OUTLINED_FUNCTION_38_0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, os_log_type_t a17)
{

  _os_log_impl(a1, v17, a17, a4, v18, 0x16u);
}

uint64_t OUTLINED_FUNCTION_39_1()
{

  return sub_231CB4EEC();
}

void OUTLINED_FUNCTION_40_1(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, os_log_type_t a16)
{

  _os_log_impl(a1, v16, a16, a4, v17, 0xCu);
}

uint64_t OUTLINED_FUNCTION_41_1()
{
}

uint64_t OUTLINED_FUNCTION_52_1()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_53_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_54_1(void x0_0, void x1_0, void x2_0, void a4, void a5, void a6, void a7, void a8, uint64_t a2, uint64_t a3)
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_55_1(void x0_0, void x1_0, void x2_0, void x3_0, void a5, void a6, void a7, void a8, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_56_1(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void x5_0, void a7, void a8, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_57_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_58_2()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_59_2(uint64_t a1)
{

  return sub_231E120D0();
}

unint64_t sub_231CE6BA8(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_231CE6BC8(uint64_t a1, unsigned __int8 a2)
{
  sub_231E12220();
  MEMORY[0x23837D730](a2);
  return sub_231E12250();
}

unint64_t sub_231CE6C0C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_231CE6BA8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_231CE6C38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231CE6BB8(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_231CE6C64(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = swift_allocObject();
  sub_231CE6CB4(v3, v2);
  return v4;
}

uint64_t sub_231CE6CB4(unsigned __int8 a1, char a2)
{
  v5 = a1;
  v6 = sub_231E10E30();
  OUTLINED_FUNCTION_24();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  *(v2 + OBJC_IVAR____TtC22ProactiveSummarization12PowerTracker_executionDates) = MEMORY[0x277D84F90];
  v12 = v2 + OBJC_IVAR____TtC22ProactiveSummarization12PowerTracker_overridenThermalState;
  *v12 = 0;
  *(v12 + 8) = 1;
  *(v2 + OBJC_IVAR____TtC22ProactiveSummarization12PowerTracker_overridenIsLowPowerMode) = 2;
  v13 = OBJC_IVAR____TtC22ProactiveSummarization12PowerTracker_overridenDate;
  v14 = sub_231E0F950();
  __swift_storeEnumTagSinglePayload(v2 + v13, 1, 1, v14);
  *(v2 + 112) = a1;
  if (v5 == 2)
  {
    v15 = sub_231CB4EEC();
  }

  else
  {
    v15 = sub_231DC4AB8();
  }

  (*(v8 + 16))(v11, v15, v6);
  (*(v8 + 32))(v2 + OBJC_IVAR____TtC22ProactiveSummarization12PowerTracker__logger, v11, v6);
  if (*(v2 + 112) == 2)
  {
    v16 = sub_231D12534();
  }

  else
  {
    v16 = sub_231D125C8();
  }

  *(v2 + OBJC_IVAR____TtC22ProactiveSummarization12PowerTracker_maxallowedExecutionsPerMinute) = v16;
  *(v2 + 113) = a2 & 1;
  return v2;
}

uint64_t sub_231CE6E50()
{
  v1 = v0;
  v2 = sub_231E0F950();
  OUTLINED_FUNCTION_24();
  v4 = v3;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v35 - v9;
  if (*(v0 + OBJC_IVAR____TtC22ProactiveSummarization12PowerTracker_overridenThermalState + 8) == 1)
  {
    v11 = [objc_opt_self() processInfo];
    v12 = [v11 thermalState];
  }

  else
  {
    v12 = *(v0 + OBJC_IVAR____TtC22ProactiveSummarization12PowerTracker_overridenThermalState);
  }

  sub_231CE72E0(v8);
  sub_231E0F8B0();
  v37 = *(v4 + 8);
  v38 = v2;
  v13 = v37(v8, v2);
  MEMORY[0x28223BE20](v13);
  *(&v35 - 2) = v10;
  v14 = OBJC_IVAR____TtC22ProactiveSummarization12PowerTracker_executionDates;
  swift_beginAccess();
  v15 = sub_231CE7850(sub_231CE7400, (&v35 - 4));
  v16 = *(*(v1 + v14) + 16);
  if (v16 < v15)
  {
    __break(1u);
    result = swift_endAccess();
    __break(1u);
  }

  else
  {
    sub_231CE7CC4(v15, v16);
    swift_endAccess();
    v17 = *(*(v1 + v14) + 16);
    switch(v12)
    {
      case 0uLL:
        goto LABEL_15;
      case 1uLL:
        goto LABEL_7;
      case 2uLL:
      case 3uLL:
        if (*(v1 + 112) != 2)
        {
          goto LABEL_11;
        }

LABEL_7:
        if (v17 < *(v1 + OBJC_IVAR____TtC22ProactiveSummarization12PowerTracker_maxallowedExecutionsPerMinute))
        {
LABEL_15:
          v28 = *(v1 + OBJC_IVAR____TtC22ProactiveSummarization12PowerTracker_overridenIsLowPowerMode);
          if (v28 == 2)
          {
            v29 = [objc_opt_self() processInfo];
            LOBYTE(v28) = [v29 isLowPowerModeEnabled];
          }

          v21 = 0;
          if (*(v1 + 113) == 1 && (v28 & 1) != 0)
          {
            if (v17 >= *(v1 + OBJC_IVAR____TtC22ProactiveSummarization12PowerTracker_maxallowedExecutionsPerMinute))
            {
              v21 = 44;
            }

            else
            {
              v21 = 0;
            }
          }

          sub_231CE72E0(v8);
          sub_231CE7508();
          v30 = *(*(v1 + v14) + 16);
          sub_231CE7554(v30);
          v31 = *(v1 + v14);
          *(v31 + 16) = v30 + 1;
          v32 = v8;
          v33 = v38;
          (*(v4 + 32))(v31 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v30, v32, v38);
          *(v1 + v14) = v31;
          v22 = v33;
        }

        else
        {
          v18 = sub_231E10E10();
          v19 = sub_231E11AF0();
          if (os_log_type_enabled(v18, v19))
          {
            v20 = swift_slowAlloc();
            *v20 = 0;
            _os_log_impl(&dword_231CAE000, v18, v19, "Item is not eligible for execution (summarization / smartReplies) (thermal state >= fair)", v20, 2u);
            MEMORY[0x23837E1D0](v20, -1, -1);
          }

LABEL_11:
          v21 = 28;
          v22 = v38;
        }

        v37(v10, v22);
        result = v21;
        break;
      default:
        v23 = sub_231E10E10();
        v24 = sub_231E11AE0();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v36 = v17;
          v26 = v25;
          *v25 = 134217984;
          *(v25 + 4) = v12;
          _os_log_impl(&dword_231CAE000, v23, v24, "Unhandled thermal state: %ld", v25, 0xCu);
          v27 = v26;
          v17 = v36;
          MEMORY[0x23837E1D0](v27, -1, -1);
        }

        goto LABEL_15;
    }
  }

  return result;
}

uint64_t sub_231CE72E0@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD74AD0, &qword_231E16C40);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_0_9();
  v5 = OBJC_IVAR____TtC22ProactiveSummarization12PowerTracker_overridenDate;
  swift_beginAccess();
  sub_231CE82A8(v1 + v5, v2);
  v6 = sub_231E0F950();
  if (__swift_getEnumTagSinglePayload(v2, 1, v6) != 1)
  {
    return (*(*(v6 - 8) + 32))(a1, v2, v6);
  }

  sub_231E0F920();
  result = __swift_getEnumTagSinglePayload(v2, 1, v6);
  if (result != 1)
  {
    return sub_231CE7DF4(v2);
  }

  return result;
}

uint64_t sub_231CE7430()
{
  v1 = OBJC_IVAR____TtC22ProactiveSummarization12PowerTracker__logger;
  sub_231E10E30();
  OUTLINED_FUNCTION_12();
  (*(v2 + 8))(v0 + v1);

  sub_231CE7DF4(v0 + OBJC_IVAR____TtC22ProactiveSummarization12PowerTracker_overridenDate);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_231CE74B4()
{
  sub_231CE7430();

  return MEMORY[0x282200960](v0);
}

void *sub_231CE7508()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_231CE7594(result, *(v1 + 16) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

void *sub_231CE7554(void *result)
{
  v2 = *(*v1 + 24);
  if (result + 1 > (v2 >> 1))
  {
    result = sub_231CE7594((v2 > 1), result + 1, 1, *v1);
    *v1 = result;
  }

  return result;
}

void *sub_231CE7594(void *result, int64_t a2, char a3, uint64_t a4)
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
  v9 = sub_231CE7680(v8, v7);
  v10 = *(sub_231E0F950() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_231CE777C(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void *sub_231CE7680(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD74DD0, &qword_231E16E00);
  v4 = *(sub_231E0F950() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_231CE777C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_231E0F950(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_231E0F950();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_231CE7850(uint64_t (*a1)(unint64_t), uint64_t a2)
{
  v4 = v2;
  v7 = sub_231E0F950();
  v49 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v40 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - v14;
  v16 = *v4;
  result = sub_231CE7BE0(a1, a2, *v4);
  if (!v3)
  {
    v45 = a2;
    v46 = v15;
    v50 = v7;
    if (v18)
    {
      return *(v16 + 16);
    }

    else
    {
      v40 = v4;
      v52 = result;
      v19 = result + 1;
      if (!__OFADD__(result, 1))
      {
        v53 = 0;
        v20 = v49;
        v21 = v50;
        v48 = v49 + 16;
        v43 = v13;
        v44 = (v49 + 8);
        v41 = (v49 + 40);
        v42 = v10;
        v22 = v46;
        while (1)
        {
          v23 = *(v16 + 16);
          if (v19 == v23)
          {
            return v52;
          }

          if (v19 >= v23)
          {
            break;
          }

          v24 = v16;
          v47 = (*(v20 + 80) + 32) & ~*(v20 + 80);
          v25 = v16 + v47;
          v26 = *(v20 + 72);
          v54 = v19;
          v27 = *(v20 + 16);
          v51 = v26 * v19;
          v27(v22, v16 + v47 + v26 * v19, v21);
          v28 = v53;
          v29 = a1;
          v30 = a1(v22);
          v53 = v28;
          if (v28)
          {
            return (*v44)(v22, v21);
          }

          v31 = v30;
          result = (*v44)(v22, v21);
          if (v31)
          {
            a1 = v29;
            v20 = v49;
            v21 = v50;
            v22 = v46;
            v16 = v24;
            v32 = v54;
          }

          else
          {
            v32 = v54;
            if (v54 == v52)
            {
              a1 = v29;
              v20 = v49;
              v21 = v50;
              v22 = v46;
            }

            else
            {
              if ((v52 & 0x8000000000000000) != 0)
              {
                goto LABEL_26;
              }

              v33 = *(v24 + 2);
              if (v52 >= v33)
              {
                goto LABEL_27;
              }

              v34 = v26 * v52;
              v35 = v50;
              result = (v27)(v43, v25 + v34, v50);
              if (v54 >= v33)
              {
                goto LABEL_28;
              }

              v36 = v25 + v51;
              v37 = v42;
              v27(v42, v36, v35);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v24 = sub_231CE8294(v24);
              }

              a1 = v29;
              v38 = &v24[v47];
              v39 = *v41;
              v21 = v50;
              result = (*v41)(&v24[v47 + v34], v37, v50);
              v22 = v46;
              if (v54 >= *(v24 + 2))
              {
                goto LABEL_29;
              }

              result = v39(&v38[v51], v43, v21);
              v32 = v54;
              *v40 = v24;
              v20 = v49;
            }

            v16 = v24;
            ++v52;
          }

          v19 = v32 + 1;
        }

        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_231CE7BE0(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  while (1)
  {
    if (v7 == v6)
    {
      return 0;
    }

    v8 = *(sub_231E0F950() - 8);
    result = a1(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v6;
  }

  return v6;
}

uint64_t sub_231CE7CC4(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_231CE822C(result, 1);
  v8 = *v2;
  v9 = *(sub_231E0F950() - 8);
  v10 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  v12 = v10 + v11 * v5;
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v13 = *(v8 + 16);
  if (__OFSUB__(v13, a2))
  {
    goto LABEL_16;
  }

  result = sub_231CE777C(v10 + v11 * a2, v13 - a2, v12);
  v14 = *(v8 + 16);
  v15 = __OFADD__(v14, v7);
  v16 = v14 - v6;
  if (!v15)
  {
    *(v8 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_231CE7DF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD74AD0, &qword_231E16C40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_231CE7E60()
{
  result = qword_27DD744E0;
  if (!qword_27DD744E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD744E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ComputationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ComputationType(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t type metadata accessor for PowerTracker(uint64_t a1)
{
  result = qword_2814CE190;
  if (!qword_2814CE190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_231CE806C(uint64_t a1)
{
  sub_231E10E30();
  if (v1 <= 0x3F)
  {
    sub_231CE8184(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_231CE8184(uint64_t a1)
{
  if (!qword_2814CD0F8)
  {
    sub_231E0F950();
    v1 = sub_231E11BF0();
    if (!v2)
    {
      atomic_store(v1, &qword_2814CD0F8);
    }
  }
}

void type metadata accessor for ThermalState()
{
  if (!qword_27DD744E8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27DD744E8);
    }
  }
}

void *sub_231CE822C(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_231CE7594(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

uint64_t sub_231CE82A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD74AD0, &qword_231E16C40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_231CE8318(void *a1, void *a2, void *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  sub_231CE8380(a1, a2, a3, a4);
  return v8;
}

uint64_t sub_231CE8380(void *a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  sub_231CE8434(a1, v5 + 16);
  sub_231CE8434(a2, v5 + 56);
  sub_231CE8434(a3, v5 + 96);
  *(v5 + 136) = a4;
  v10 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v11 = sub_231CC8DEC(0xD00000000000002BLL, 0x8000000231E2E230);
  __swift_destroy_boxed_opaque_existential_0(a3);
  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  *(v5 + 144) = v11;
  return v5;
}

uint64_t sub_231CE8434(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_231CE8498()
{
  OUTLINED_FUNCTION_18();
  v1[60] = v2;
  v1[61] = v0;
  v1[58] = v3;
  v1[59] = v4;
  v5 = sub_231E10E30();
  v1[62] = v5;
  OUTLINED_FUNCTION_6(v5);
  v1[63] = v6;
  v1[64] = OUTLINED_FUNCTION_69();
  v1[65] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231CE854C()
{
  v63 = v0;
  v2 = *(v0 + 520);
  v4 = *(v0 + 496);
  v3 = *(v0 + 504);
  v5 = sub_231DC4B64();
  v6 = *(v3 + 16);
  v6(v2, v5, v4);

  v7 = sub_231E10E10();
  sub_231E11AF0();
  OUTLINED_FUNCTION_148_0();
  v8 = OUTLINED_FUNCTION_176();
  v9 = *(v0 + 520);
  v11 = *(v0 + 496);
  v10 = *(v0 + 504);
  if (v8)
  {
    v59 = *(v0 + 520);
    OUTLINED_FUNCTION_9_1();
    v60 = v6;
    v12 = OUTLINED_FUNCTION_28();
    __src[0] = v12;
    *v5 = 136446210;
    v13 = sub_231DDB1E8();
    OUTLINED_FUNCTION_174(v13, v14, v15, v16, v17, v18, v19, v20, v57, v59);
    OUTLINED_FUNCTION_117_0();
    *(v5 + 4) = &off_231E13000;
    OUTLINED_FUNCTION_67_1();
    _os_log_impl(v21, v22, v23, v24, v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    v6 = v60;
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();

    v26 = *(v10 + 8);
    v26(v58, v11);
  }

  else
  {

    v26 = *(v10 + 8);
    v26(v9, v11);
  }

  sub_231E10250();
  OUTLINED_FUNCTION_8_1();
  if (v28 || (v27 & 1) == 0)
  {
    v47 = *(v0 + 472);
    v48 = swift_task_alloc();
    *(v0 + 528) = v48;
    *(v48 + 16) = *(v0 + 480);
    *(v48 + 32) = v47;
    swift_task_alloc();
    OUTLINED_FUNCTION_58_0();
    *(v0 + 536) = v49;
    *v49 = v50;
    v49[1] = sub_231CE88E4;
    OUTLINED_FUNCTION_122_0();

    return sub_231DDB61C();
  }

  else
  {
    v6(*(v0 + 512), v5, *(v0 + 496));

    v29 = sub_231E10E10();
    sub_231E11AF0();
    OUTLINED_FUNCTION_116_0();
    v30 = OUTLINED_FUNCTION_91_0();
    v31 = *(v0 + 512);
    v32 = *(v0 + 496);
    if (v30)
    {
      v61 = *(v0 + 512);
      OUTLINED_FUNCTION_9_1();
      __src[0] = OUTLINED_FUNCTION_17_1();
      *v1 = 136446210;
      v33 = sub_231DDB1E8();
      OUTLINED_FUNCTION_174(v33, v34, v35, v36, v37, v38, v39, v40, v57, v58);
      OUTLINED_FUNCTION_87_0();
      *(v1 + 4) = v6;
      OUTLINED_FUNCTION_3_7();
      _os_log_impl(v41, v42, v43, v44, v45, 0xCu);
      OUTLINED_FUNCTION_2_6();
      OUTLINED_FUNCTION_11();

      v46 = v61;
    }

    else
    {

      v46 = v31;
    }

    v26(v46, v32);
    *(v0 + 272) = xmmword_231E13680;
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    sub_231CE25FC((v0 + 272), 1, 1, 0, 0x200u, v0 + 16);
    v52 = *(v0 + 40);
    v53 = *(v0 + 16);
    v54 = *(v0 + 464);
    memcpy(__src + 6, (v0 + 48), 0x60uLL);
    v55 = *(v0 + 24);
    *v54 = v53;
    *(v54 + 8) = v55;
    *(v54 + 24) = v52;
    memcpy((v54 + 26), __src, 0x66uLL);

    OUTLINED_FUNCTION_19();

    return v56();
  }
}

void sub_231CE88E4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;

  if (v0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_31();

    MEMORY[0x2822009F8](v4, v5, v6);
  }
}

uint64_t sub_231CE89F4()
{
  v9 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  memcpy((v0 + 368), (v0 + 176), 0x60uLL);

  v5 = *(v0 + 464);
  memcpy(&__src[6], (v0 + 368), 0x60uLL);
  *v5 = v1;
  *(v5 + 8) = v2;
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  memcpy((v5 + 26), __src, 0x66uLL);

  OUTLINED_FUNCTION_19();

  return v6();
}

uint64_t sub_231CE8AD4()
{
  OUTLINED_FUNCTION_18();
  v0[110] = v1;
  v0[109] = v2;
  v0[108] = v3;
  v0[107] = v4;
  v5 = sub_231E10E30();
  v0[111] = v5;
  OUTLINED_FUNCTION_6(v5);
  v0[112] = v6;
  v0[113] = OUTLINED_FUNCTION_69();
  v0[114] = swift_task_alloc();
  v0[115] = swift_task_alloc();
  v0[116] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_231CE8BA8()
{
  sub_231CC8780();
  OUTLINED_FUNCTION_8_1();
  if (!v2)
  {
    sub_231DC4B64();
    v8 = OUTLINED_FUNCTION_73_0();
    v9(v8);

    v10 = sub_231E10E10();
    sub_231E11AF0();
    OUTLINED_FUNCTION_148_0();
    v11 = OUTLINED_FUNCTION_176();
    v12 = v0[112];
    v13 = v0[111];
    if (v11)
    {
      v30 = v0[116];
      swift_slowAlloc();
      OUTLINED_FUNCTION_28();
      *v1 = 136446466;
      v14 = sub_231DDB1E8();
      OUTLINED_FUNCTION_175(v14, v15, v16, v17, v18, v19);
      OUTLINED_FUNCTION_117_0();
      OUTLINED_FUNCTION_41_2();
      OUTLINED_FUNCTION_67_1();
      _os_log_impl(v20, v21, v22, v23, v24, 0x12u);
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_14();

      (*(v12 + 8))(v30, v13);
    }

    else
    {

      v25 = OUTLINED_FUNCTION_126_0();
      v26(v25);
    }

    v0[75] = 0;
    v0[76] = 1;
    OUTLINED_FUNCTION_1_6(v0 + 77);
    OUTLINED_FUNCTION_101_0(v0 + 75, (v0 + 34));
    v27 = OUTLINED_FUNCTION_16_5();
    memcpy(v27, v0 + 34, 0x80uLL);

    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_35();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_74_0();
  OUTLINED_FUNCTION_164();
  v0[117] = v3;
  OUTLINED_FUNCTION_34_2();
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  v0[118] = v4;
  *v4 = v5;
  v4[1] = sub_231CE8E54;
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_35();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_231CE8E54()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_15();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 952) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231CE8F58()
{
  v2 = *(v0 + 400);
  *(v0 + 1024) = v2;
  v3 = sub_231CC886C();
  if ((v3 & 0x100000000) != 0)
  {
    v4 = 0.478;
  }

  else
  {
    v4 = *&v3;
    sub_231DC4B64();
    v5 = OUTLINED_FUNCTION_32_2();
    v6(v5);

    v7 = sub_231E10E10();
    sub_231E11AF0();
    OUTLINED_FUNCTION_116_0();
    if (OUTLINED_FUNCTION_91_0())
    {
      OUTLINED_FUNCTION_98_0();
      OUTLINED_FUNCTION_17_1();
      *v1 = 136446466;
      v8 = sub_231DDB1E8();
      OUTLINED_FUNCTION_175(v8, v9, v10, v11, v12, v13);
      OUTLINED_FUNCTION_87_0();
      OUTLINED_FUNCTION_131_0();
      OUTLINED_FUNCTION_3_7();
      _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
      OUTLINED_FUNCTION_2_6();
      OUTLINED_FUNCTION_11();
    }

    v19 = OUTLINED_FUNCTION_33();
    v20(v19);
  }

  *(v0 + 1028) = v4;
  v21 = *(v0 + 896);
  *(v0 + 960) = sub_231DC4B64();
  *(v0 + 968) = *(v21 + 16);
  *(v0 + 976) = (v21 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v22 = OUTLINED_FUNCTION_82();
  v23(v22);

  v24 = sub_231E10E10();
  sub_231E11AF0();
  OUTLINED_FUNCTION_116_0();
  v25 = OUTLINED_FUNCTION_91_0();
  v26 = *(v0 + 896);
  if (v25)
  {
    OUTLINED_FUNCTION_141_0();
    OUTLINED_FUNCTION_17_1();
    *v1 = 136446722;
    v27 = sub_231DDB1E8();
    OUTLINED_FUNCTION_175(v27, v28, v29, v30, v31, v32);
    v33 = OUTLINED_FUNCTION_87_0();
    OUTLINED_FUNCTION_20_4(v33, v34, v35, v36, v37, v38, v39, v40, v64, v65, v4 < v2);
    *(v1 + 20) = v2;
    OUTLINED_FUNCTION_3_7();
    _os_log_impl(v41, v42, v43, v44, v45, 0x1Cu);
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_11();
  }

  v46 = *(v26 + 8);
  v47 = OUTLINED_FUNCTION_33();
  v46(v47);
  *(v0 + 984) = v46;
  *(v0 + 816) = &unk_2846F07A0;
  v48 = sub_231CC7270();
  v49 = OUTLINED_FUNCTION_167(v48);
  __swift_destroy_boxed_opaque_existential_0((v0 + 792));
  if (v49)
  {
    v50 = sub_231E10140();
    *(v0 + 992) = v51;
    if (v51)
    {
      v52 = v50;
      v53 = v51;
      v54 = [objc_opt_self() sentenceEmbeddingForLanguage_];
      *(v0 + 1000) = v54;
      if (v54)
      {
        v55 = v54;
        v56 = *(v0 + 880);
        v57 = *(v0 + 872);
        v58 = *(v0 + 864);
        v59 = swift_task_alloc();
        *(v0 + 1008) = v59;
        v59[2] = v0 + 1024;
        v59[3] = v57;
        v59[4] = v52;
        v59[5] = v53;
        v59[6] = v56;
        v59[7] = v55;
        v59[8] = v58;
        v60 = swift_task_alloc();
        *(v0 + 1016) = v60;
        *v60 = v0;
        v60[1] = sub_231CE9324;
        OUTLINED_FUNCTION_28_1();

        return sub_231DDB61C();
      }
    }
  }

  OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_22_3();
  v62 = OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_173(v62);

  OUTLINED_FUNCTION_14_0();

  return v63();
}

uint64_t sub_231CE9324()
{
  OUTLINED_FUNCTION_29();
  v2 = *v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  *v3 = *v1;

  if (v0)
  {
  }

  else
  {

    OUTLINED_FUNCTION_31();

    return MEMORY[0x2822009F8](v5, v6, v7);
  }
}

uint64_t sub_231CE9470()
{
  v1 = *(v0 + 968);
  v2 = *(v0 + 1028);
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  v3 = *(v0 + 1024);
  v4 = OUTLINED_FUNCTION_11_5();
  v1(v4);

  v5 = sub_231E10E10();
  sub_231E11AF0();
  OUTLINED_FUNCTION_105_0();
  v6 = OUTLINED_FUNCTION_91_0();
  v7 = *(v0 + 1000);
  v8 = *(v0 + 984);
  v9 = *(v0 + 904);
  v10 = *(v0 + 888);
  if (v6)
  {
    HIDWORD(v38) = v2 < v3;
    OUTLINED_FUNCTION_141_0();
    OUTLINED_FUNCTION_17_1();
    *v9 = 136446722;
    v11 = sub_231DDB1E8();
    OUTLINED_FUNCTION_174(v11, v12, v13, v14, v15, v16, v17, v18, v36, v38);
    v19 = OUTLINED_FUNCTION_87_0();
    OUTLINED_FUNCTION_20_4(v19, v20, v21, v22, v23, v24, v25, v26, v37, v39, v40);
    *(v9 + 20) = v3;
    OUTLINED_FUNCTION_3_7();
    _os_log_impl(v27, v28, v29, v30, v31, 0x1Cu);
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_11();

    v8(v9, v10);
  }

  else
  {

    v32 = OUTLINED_FUNCTION_127_0();
    (v8)(v32);
  }

  OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_22_3();
  v33 = OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_173(v33);

  OUTLINED_FUNCTION_14_0();

  return v34();
}

uint64_t sub_231CE9640()
{
  OUTLINED_FUNCTION_50_0();
  v2 = *(v0 + 880);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD744F8, &qword_231E16F08);
  type metadata accessor for EntityKind(0);
  OUTLINED_FUNCTION_7_4();
  v3 = OUTLINED_FUNCTION_129_0();
  OUTLINED_FUNCTION_89_0(v3, xmmword_231E138E0);
  sub_231E10340();
  OUTLINED_FUNCTION_6_0();
  (*(v4 + 16))(v3 + v1, v2);
  swift_storeEnumTagMultiPayload();
  v5 = OUTLINED_FUNCTION_59_0();
  sub_231CEAA30(v5, v6, v3);
  swift_setDeallocating();
  sub_231CF0D6C();
  *(v0 + 504) = 0;
  *(v0 + 512) = 1;
  OUTLINED_FUNCTION_1_6((v0 + 520));
  OUTLINED_FUNCTION_128_0();
  v7 = OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_178(v7);

  OUTLINED_FUNCTION_14_0();

  return v8();
}

uint64_t sub_231CE97B8()
{
  OUTLINED_FUNCTION_18();
  v0[13] = v1;
  v0[14] = v2;
  v0[11] = v3;
  v0[12] = v4;
  v0[9] = v5;
  v0[10] = v6;
  v0[8] = v7;
  v8 = sub_231E10400();
  v0[15] = v8;
  OUTLINED_FUNCTION_6(v8);
  v0[16] = v9;
  v0[17] = OUTLINED_FUNCTION_55();
  v10 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_231CE9868()
{
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  sub_231E102D0();
  v0[18] = v1;
  sub_231E100E0();
  sub_231E103E0();
  v0[19] = v2;
  v3 = OUTLINED_FUNCTION_70();
  v4(v3);
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_231CE9990;
  OUTLINED_FUNCTION_135_0();
  OUTLINED_FUNCTION_121_0();
  OUTLINED_FUNCTION_81();

  return sub_231CE9B24();
}

uint64_t sub_231CE9990()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  *(v5 + 168) = v6;

  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231CE9AAC()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 168);
  v2 = *(v0 + 64);
  OUTLINED_FUNCTION_43_3(v3, v0 + 40);
  *v2 = v1;

  OUTLINED_FUNCTION_14_0();

  return v4();
}

uint64_t sub_231CE9B24()
{
  OUTLINED_FUNCTION_18();
  *(v1 + 88) = v20;
  *(v1 + 96) = v0;
  *(v1 + 180) = v19;
  *(v1 + 72) = v2;
  *(v1 + 80) = v18;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 40) = v5;
  *(v1 + 48) = v6;
  *(v1 + 24) = v7;
  *(v1 + 32) = v8;
  *(v1 + 176) = v9;
  *(v1 + 16) = v10;
  v11 = sub_231E10E30();
  *(v1 + 104) = v11;
  OUTLINED_FUNCTION_6(v11);
  *(v1 + 112) = v12;
  *(v1 + 120) = OUTLINED_FUNCTION_69();
  *(v1 + 128) = swift_task_alloc();
  *(v1 + 136) = swift_task_alloc();
  *(v1 + 144) = swift_task_alloc();
  *(v1 + 152) = swift_task_alloc();
  *(v1 + 160) = swift_task_alloc();
  *(v1 + 168) = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_231CE9C3C()
{
  v212 = v0;
  v1 = sub_231CC8C34();
  if (v2)
  {
    v3 = 2;
  }

  else
  {
    v3 = v1;
  }

  v4 = COERCE_DOUBLE(sub_231CC8C64());
  if (v5)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = v4;
  }

  v7 = sub_231CC8C94();
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_231DBCD4C(v7);
  }

  if (!sub_231E11AA0())
  {
    goto LABEL_17;
  }

  v10 = *(*(v0 + 96) + 136);
  v11 = sub_231D4B9C8(*(v0 + 16));
  v207 = v3;
  v12 = *(v11 + 16);
  v13 = MEMORY[0x277D84F90];
  v208 = v11;
  v205 = v12;
  v206 = v10;
  if (v12)
  {
    v211[0] = MEMORY[0x277D84F90];
    sub_231CF130C(0, v12, 0);
    v13 = v211[0];
    v14 = v11 + 48;
    do
    {

      v15 = OUTLINED_FUNCTION_70();
      sub_231DBCE10(v15, v16, v17);
      nullsub_1();
      v19 = v18;
      v21 = v20;

      v211[0] = v13;
      v23 = *(v13 + 2);
      v22 = *(v13 + 3);
      if (v23 >= v22 >> 1)
      {
        v25 = OUTLINED_FUNCTION_45_0(v22);
        sub_231CF130C(v25, v23 + 1, 1);
        v13 = v211[0];
      }

      v14 += 24;
      *(v13 + 2) = v23 + 1;
      v24 = &v13[16 * v23];
      *(v24 + 4) = v19;
      *(v24 + 5) = v21;
      --v12;
    }

    while (v12);
  }

  v211[0] = v13;

  sub_231CF12A0(v211);
  v28 = *(v0 + 168);
  v29 = *(v0 + 112);
  v30 = *(v0 + 88);

  v31 = v211[0];

  v32 = sub_231DC4B64();
  v34 = *(v29 + 16);
  v33 = v29 + 16;
  v199 = v32;
  v200 = v34;
  v34(v28);

  v35 = sub_231E10E10();
  v36 = sub_231E11AF0();

  LODWORD(v202) = v36;
  v37 = os_log_type_enabled(v35, v36);
  v38 = *(v0 + 168);
  v39 = *(v0 + 104);
  v40 = *(v0 + 112);
  v201 = v33;
  if (v37)
  {
    v197 = *(v0 + 104);
    v41 = OUTLINED_FUNCTION_98_0();
    v30 = OUTLINED_FUNCTION_67();
    v211[0] = v30;
    *v41 = 136446466;
    v42 = sub_231DDB1E8();
    v50 = OUTLINED_FUNCTION_118_1(v42, v43, v44, v45, v46, v47, v48, v49, v197, v38, v199, v200, v33, v202, v205, v206, v207, v208);

    *(v41 + 4) = v50;
    *(v41 + 12) = 2050;
    v51 = *(v31 + 2);

    *(v41 + 14) = v51;

    _os_log_impl(&dword_231CAE000, v35, v203, "%{public}s Found %{public}ld samples in urgency feedback", v41, 0x16u);
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_30();

    v52 = *(v40 + 8);
    v54 = v196;
    v53 = v198;
  }

  else
  {

    v52 = *(v40 + 8);
    v53 = v38;
    v54 = v39;
  }

  v204 = v52;
  *&result = COERCE_DOUBLE((v52)(v53, v54));
  v56 = *(v31 + 2);
  v57 = &dword_231E16000;
  if (!v56)
  {
    if (v207 <= 0 && (*(v0 + 180) & 1) == 0)
    {
      goto LABEL_43;
    }

    v76 = MEMORY[0x277D84F90];
LABEL_31:

    v77 = *(v76 + 2);
    if (v77)
    {
      v78 = 40;
      v57 = &dword_231E16000;
      do
      {
        OUTLINED_FUNCTION_138_0(v78);
      }

      while (!v79);

      v80 = 0.0 / v77;
      if (v80 > 0.9 || v80 < 0.1)
      {
        OUTLINED_FUNCTION_143_0();

        v81 = OUTLINED_FUNCTION_76_0();
        v82(v81);

        v83 = sub_231E10E10();
        sub_231E11AF0();
        OUTLINED_FUNCTION_116_0();
        v84 = OUTLINED_FUNCTION_91_0();
        v85 = *(v0 + 152);
        v86 = *(v0 + 104);
        if (!v84)
        {
LABEL_39:

          v100 = v85;
LABEL_40:
          v204(v100, v86);
          goto LABEL_17;
        }

LABEL_38:
        OUTLINED_FUNCTION_84_0();
        OUTLINED_FUNCTION_17_1();
        OUTLINED_FUNCTION_111_0();
        *v9 = 136446210;
        v87 = sub_231DDB1E8();
        OUTLINED_FUNCTION_118_1(v87, v88, v89, v90, v91, v92, v93, v94, v196, v198, v199, v200, v201, v204, v205, v206, v207, v208);
        OUTLINED_FUNCTION_87_0();
        *(v9 + 4) = v30;
        OUTLINED_FUNCTION_3_7();
        _os_log_impl(v95, v96, v97, v98, v99, 0xCu);
        OUTLINED_FUNCTION_2_6();
        OUTLINED_FUNCTION_11();
        goto LABEL_39;
      }
    }

    else
    {

      v57 = &dword_231E16000;
    }

LABEL_68:
    if ((*(v0 + 180) & 1) != 0 || (v125 = *(v0 + 40)) == 0 || (v126 = sub_231E11AA0()) == 0)
    {

LABEL_73:

      goto LABEL_17;
    }

    v129 = v126;
    sub_231D4CA04(*(v0 + 16), *(v0 + 24), *(v0 + 32), v125, v127, v128);
    if ((v131 & 1) != 0 || v130 <= 0.0 || v130 > 0.5)
    {

      goto LABEL_73;
    }

    v150 = MEMORY[0x277D84F90];
    v151 = v205;
    if (v205)
    {
      v211[0] = MEMORY[0x277D84F90];
      sub_231CF130C(0, v205, 0);
      v150 = v211[0];
      v30 = v208 + 48;
      do
      {
        v152 = v151;
        v153 = *(v30 - 16);

        sub_231DBCE10(v129, v153, v9 & 1);
        nullsub_1();
        v155 = v154;
        v157 = v156;

        v211[0] = v150;
        v159 = *(v150 + 2);
        v158 = *(v150 + 3);
        if (v159 >= v158 >> 1)
        {
          v161 = OUTLINED_FUNCTION_45_0(v158);
          sub_231CF130C(v161, v159 + 1, 1);
          v150 = v211[0];
        }

        v30 += 24;
        *(v150 + 2) = v159 + 1;
        v160 = &v150[16 * v159];
        *(v160 + 4) = v155;
        *(v160 + 5) = v157;
        v151 = v152 - 1;
      }

      while (v152 != 1);
      v57 = &dword_231E16000;
    }

    v211[0] = v150;

    sub_231CF12A0(v211);

    v162 = v211[0];
    v163 = *(v211[0] + 2);
    if (v163)
    {
      v164 = v211[0] + 40;
      v165 = MEMORY[0x277D84F90];
      v166 = *(v57 + 449);
      v9 = *(v211[0] + 2);
      do
      {
        v167 = *(v164 - 1);
        if (v167 < v166)
        {
          v168 = *v164;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v211[0] = v165;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            OUTLINED_FUNCTION_69_1();
            v165 = v211[0];
          }

          v30 = *(v165 + 2);
          v170 = *(v165 + 3);
          if (v30 >= v170 >> 1)
          {
            v172 = OUTLINED_FUNCTION_45_0(v170);
            sub_231CF130C(v172, v30 + 1, 1);
            v165 = v211[0];
          }

          *(v165 + 2) = v30 + 1;
          v171 = &v165[16 * v30];
          *(v171 + 4) = v167;
          *(v171 + 5) = v168;
        }

        v164 += 16;
        --v9;
      }

      while (v9);
    }

    else
    {
      v165 = MEMORY[0x277D84F90];
    }

    v173 = *(v165 + 2);
    if (v173)
    {

      v174 = 0.0;
      v175 = 40;
      do
      {
        v174 = v174 + *&v165[v175];
        v175 += 16;
        --v173;
      }

      while (v173);
      v176 = *(v165 + 2);

      v177 = v174 / v176;
      if (v177 <= 0.9 && v177 >= 0.1)
      {
        goto LABEL_17;
      }

      v178 = OUTLINED_FUNCTION_132_0();
      v179(v178);

      v83 = sub_231E10E10();
      sub_231E11AF0();
      OUTLINED_FUNCTION_116_0();
      v180 = OUTLINED_FUNCTION_91_0();
      v85 = *(v0 + 136);
      v86 = *(v0 + 104);
      if (!v180)
      {
        goto LABEL_39;
      }
    }

    else
    {

      if (v163)
      {
        v181 = v6 * 0.5;
        v182 = (v162 + 40);
        v183 = MEMORY[0x277D84F90];
        do
        {
          v184 = *(v182 - 1);
          if (v184 < v181)
          {
            v9 = *v182;
            v185 = swift_isUniquelyReferenced_nonNull_native();
            v211[0] = v183;
            if ((v185 & 1) == 0)
            {
              OUTLINED_FUNCTION_69_1();
              v183 = v211[0];
            }

            v187 = *(v183 + 2);
            v186 = *(v183 + 3);
            if (v187 >= v186 >> 1)
            {
              v189 = OUTLINED_FUNCTION_45_0(v186);
              sub_231CF130C(v189, v187 + 1, 1);
              v183 = v211[0];
            }

            *(v183 + 2) = v187 + 1;
            v188 = &v183[16 * v187];
            *(v188 + 4) = v184;
            *(v188 + 5) = v9;
          }

          v182 += 2;
          --v163;
        }

        while (v163);
      }

      else
      {
        v183 = MEMORY[0x277D84F90];
      }

      v190 = *(v183 + 2);
      if (!v190)
      {

        goto LABEL_17;
      }

      v191 = 40;
      do
      {
        OUTLINED_FUNCTION_138_0(v191);
      }

      while (!v79);

      v192 = 0.0 / v190;
      if (v192 <= 0.9 && v192 >= 0.1)
      {
        goto LABEL_17;
      }

      v193 = OUTLINED_FUNCTION_132_0();
      v194(v193);

      v83 = sub_231E10E10();
      sub_231E11AF0();
      OUTLINED_FUNCTION_116_0();
      v195 = OUTLINED_FUNCTION_91_0();
      v85 = *(v0 + 128);
      v86 = *(v0 + 104);
      if (!v195)
      {
        goto LABEL_39;
      }
    }

    goto LABEL_38;
  }

  if (*(v31 + 4) < 0.01)
  {
    v58 = *(v31 + 5);
    OUTLINED_FUNCTION_143_0();

    v59 = OUTLINED_FUNCTION_76_0();
    v60(v59);

    v61 = sub_231E10E10();
    sub_231E11AF0();
    OUTLINED_FUNCTION_116_0();
    if (OUTLINED_FUNCTION_91_0())
    {
      OUTLINED_FUNCTION_84_0();
      OUTLINED_FUNCTION_17_1();
      OUTLINED_FUNCTION_111_0();
      *v58 = 136446210;
      v62 = sub_231DDB1E8();
      OUTLINED_FUNCTION_118_1(v62, v63, v64, v65, v66, v67, v68, v69, v196, v198, v199, v200, v201, v204, v205, v206, v207, v58);
      OUTLINED_FUNCTION_87_0();
      *(v58 + 4) = v30;
      OUTLINED_FUNCTION_3_7();
      _os_log_impl(v70, v71, v72, v73, v74, 0xCu);
      OUTLINED_FUNCTION_2_6();
      OUTLINED_FUNCTION_30();
    }

    v75 = OUTLINED_FUNCTION_9_4();
    (v204)(v75);
LABEL_17:

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_179();

    __asm { BRAA            X1, X16 }
  }

  if (v56 < v207 || *(v0 + 180))
  {
    v118 = (v31 + 40);
    v76 = MEMORY[0x277D84F90];
    do
    {
      v119 = *(v118 - 1);
      if (v119 < v6 * 0.5)
      {
        v30 = *v118;
        v120 = swift_isUniquelyReferenced_nonNull_native();
        v211[0] = v76;
        if ((v120 & 1) == 0)
        {
          OUTLINED_FUNCTION_69_1();
          v76 = v211[0];
        }

        v122 = *(v76 + 2);
        v121 = *(v76 + 3);
        if (v122 >= v121 >> 1)
        {
          v124 = OUTLINED_FUNCTION_45_0(v121);
          sub_231CF130C(v124, v122 + 1, 1);
          v76 = v211[0];
        }

        *(v76 + 2) = v122 + 1;
        v123 = &v76[16 * v122];
        *(v123 + 4) = v119;
        *(v123 + 5) = v30;
      }

      v118 += 2;
      --v56;
    }

    while (v56);
    goto LABEL_31;
  }

LABEL_43:
  if (v207 < 0)
  {
    __break(1u);
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  v101 = sub_231CF0BB8(0, v207, v31);
  v103 = v102;
  v105 = v104;
  v107 = v106;

  *&result = COERCE_DOUBLE(sub_231CF0C24(v101, v103, v105, v107));
  if ((v108 & 1) != 0 || (v6 >= 0.0 ? (v109 = v6 <= *&result) : (v109 = 0), v109))
  {
LABEL_56:
    swift_unknownObjectRelease();
    goto LABEL_68;
  }

  v110 = v107 >> 1;
  v111 = 0.0;
  v112 = (v107 >> 1) - v105;
  if (v107 >> 1 == v105)
  {
LABEL_53:
    v115 = __OFSUB__(v110, v105);
    v116 = v110 - v105;
    if (!v115)
    {
      v117 = v111 / v116;
      if (v117 > 0.9 || v117 < 0.1)
      {
        OUTLINED_FUNCTION_143_0();

        v132 = OUTLINED_FUNCTION_76_0();
        v133(v132);

        v134 = sub_231E10E10();
        sub_231E11AF0();
        OUTLINED_FUNCTION_116_0();
        v135 = OUTLINED_FUNCTION_91_0();
        v136 = *(v0 + 144);
        v86 = *(v0 + 104);
        if (v135)
        {
          v209 = *(v0 + 144);
          OUTLINED_FUNCTION_84_0();
          OUTLINED_FUNCTION_17_1();
          OUTLINED_FUNCTION_111_0();
          *v9 = 136446210;
          v137 = sub_231DDB1E8();
          OUTLINED_FUNCTION_118_1(v137, v138, v139, v140, v141, v142, v143, v144, v196, v198, v199, v200, v201, v204, v205, v206, v207, v209);
          OUTLINED_FUNCTION_87_0();
          *(v9 + 4) = v30;
          OUTLINED_FUNCTION_3_7();
          _os_log_impl(v145, v146, v147, v148, v149, 0xCu);
          OUTLINED_FUNCTION_2_6();
          OUTLINED_FUNCTION_11();

          swift_unknownObjectRelease();
          v100 = v210;
        }

        else
        {
          swift_unknownObjectRelease();

          v100 = v136;
        }

        goto LABEL_40;
      }

      goto LABEL_56;
    }

    goto LABEL_126;
  }

  if ((v107 >> 1) > v105)
  {
    v113 = (v103 + 16 * v105 + 8);
    do
    {
      v114 = *v113;
      v113 += 2;
      v111 = v111 + v114;
      --v112;
    }

    while (v112);
    goto LABEL_53;
  }

LABEL_127:
  __break(1u);
  return result;
}

uint64_t sub_231CEAA30(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EntityKind(0);
  v7 = OUTLINED_FUNCTION_6(v6);
  v9 = v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_231E10E30();
  OUTLINED_FUNCTION_24();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_231DC4B64();
  (*(v14 + 16))(v17, v18, v12);

  v19 = a1;

  v20 = sub_231E10E10();
  v21 = sub_231E11AD0();

  if (os_log_type_enabled(v20, v21))
  {
    v52 = v9;
    v55 = v21;
    v57 = v20;
    v58 = v17;
    v22 = OUTLINED_FUNCTION_67();
    v23 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v60 = v54;
    *v22 = 136446722;
    v24 = sub_231DDB1E8();
    v26 = sub_231CB5000(v24, v25, &v60);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2112;
    v27 = a1;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 14) = v28;
    v53 = v23;
    *v23 = v28;
    v56 = v22;
    *(v22 + 22) = 2080;
    v29 = *(a3 + 16);
    v30 = MEMORY[0x277D84F90];
    if (v29)
    {
      v48 = v14;
      v49 = v12;
      v50 = a1;
      v51 = a2;
      v59 = MEMORY[0x277D84F90];
      sub_231CC686C(0, v29, 0);
      v30 = v59;
      v31 = a3 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
      v32 = *(v52 + 72);
      do
      {
        sub_231CD3AE0(v31, v11);
        sub_231DBD6D4();
        v34 = v33;
        v36 = v35;
        sub_231CF1D74(v11);
        v59 = v30;
        v38 = *(v30 + 16);
        v37 = *(v30 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_231CC686C((v37 > 1), v38 + 1, 1);
          v30 = v59;
        }

        *(v30 + 16) = v38 + 1;
        v39 = v30 + 16 * v38;
        *(v39 + 32) = v34;
        *(v39 + 40) = v36;
        v31 += v32;
        --v29;
      }

      while (v29);
      a1 = v50;
      v14 = v48;
      v12 = v49;
    }

    MEMORY[0x23837CD80](v30, MEMORY[0x277D837D0]);

    v40 = OUTLINED_FUNCTION_59_0();
    v43 = sub_231CB5000(v40, v41, v42);

    v44 = v56;
    *(v56 + 24) = v43;
    v45 = v57;
    _os_log_impl(&dword_231CAE000, v57, v55, "%{public}s Urgency determination failed with error: %@; for: %s", v44, 0x20u);
    sub_231CE1118(v53, &qword_27DD74D30, &unk_231E13480);
    OUTLINED_FUNCTION_30();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();

    (*(v14 + 8))(v58, v12);
  }

  else
  {

    (*(v14 + 8))(v17, v12);
  }

  return sub_231DDB4B4(a1);
}

uint64_t sub_231CEAE1C()
{
  OUTLINED_FUNCTION_18();
  v1[25] = v2;
  v1[26] = v0;
  v1[23] = v3;
  v1[24] = v4;
  v5 = sub_231E10A30();
  v1[27] = v5;
  OUTLINED_FUNCTION_6(v5);
  v1[28] = v6;
  v1[29] = *(v7 + 64);
  v1[30] = OUTLINED_FUNCTION_55();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75180, &qword_231E13690);
  v1[31] = OUTLINED_FUNCTION_55();
  v8 = sub_231E10E30();
  v1[32] = v8;
  OUTLINED_FUNCTION_6(v8);
  v1[33] = v9;
  v1[34] = OUTLINED_FUNCTION_55();
  v10 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_231CEAF48()
{
  OUTLINED_FUNCTION_57_0();
  v35 = v0;
  sub_231DC4B64();
  v3 = OUTLINED_FUNCTION_32_2();
  v4(v3);

  v5 = sub_231E10E10();
  sub_231E11AF0();
  OUTLINED_FUNCTION_116_0();
  if (OUTLINED_FUNCTION_91_0())
  {
    OUTLINED_FUNCTION_9_1();
    v34 = OUTLINED_FUNCTION_17_1();
    *v1 = 136446210;
    v6 = sub_231DDB1E8();
    sub_231CB5000(v6, v7, &v34);
    OUTLINED_FUNCTION_87_0();
    *(v1 + 4) = v2;
    OUTLINED_FUNCTION_3_7();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_11();
  }

  v13 = OUTLINED_FUNCTION_33();
  v14(v13);
  v0[21] = &unk_2846F07A0;
  v0[22] = sub_231CC7270();
  *(v0 + 144) = 7;
  v15 = sub_231E0FA80();
  __swift_destroy_boxed_opaque_existential_0(v0 + 18);
  if (v15)
  {
    sub_231E108E0();
    OUTLINED_FUNCTION_8_1();
    if (v17 || (v16 & 1) == 0)
    {
      v18 = v0[30];
      v19 = v0[31];
      v21 = v0[28];
      v20 = v0[29];
      v23 = v0[26];
      v22 = v0[27];
      v24 = v0[24];
      v25 = sub_231E119F0();
      __swift_storeEnumTagSinglePayload(v19, 1, 1, v25);
      (*(v21 + 16))(v18, v24, v22);
      v26 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = 0;
      *(v27 + 24) = 0;
      (*(v21 + 32))(v27 + v26, v18, v22);
      *(v27 + ((v20 + v26 + 7) & 0xFFFFFFFFFFFFFFF8)) = v23;

      sub_231CEB77C(0, 0, v19, &unk_231E16EA8, v27);
    }
  }

  v28 = v0[26];
  v29 = v0[24];
  v30 = swift_task_alloc();
  v0[35] = v30;
  *(v30 + 16) = v28;
  *(v30 + 24) = v29;
  v31 = swift_task_alloc();
  v0[36] = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD744F0, &qword_231E16E88);
  *v31 = v0;
  v31[1] = sub_231CEB21C;
  OUTLINED_FUNCTION_44();

  return sub_231DDB61C();
}

void sub_231CEB21C()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_15();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    OUTLINED_FUNCTION_31();

    MEMORY[0x2822009F8](v7, v8, v9);
  }
}

uint64_t sub_231CEB340()
{
  OUTLINED_FUNCTION_29();
  v1 = v0[13].i64[0];
  v2 = v0[19].i8[8];
  v3 = swift_task_alloc();
  v0[18].i64[1] = v3;
  v3[1] = vextq_s8(v0[12], v0[12], 8uLL);
  v3[2].i64[0] = v1;
  v3[2].i8[8] = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  v0[19].i64[0] = v4;
  *v4 = v5;
  v4[1] = sub_231CEB424;
  OUTLINED_FUNCTION_122_0();

  return sub_231DDB61C();
}

void sub_231CEB424()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;

  if (v0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_31();

    MEMORY[0x2822009F8](v4, v5, v6);
  }
}

uint64_t sub_231CEB534()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_178(*(v0 + 184));

  OUTLINED_FUNCTION_19();

  return v1();
}

uint64_t sub_231CEB5C0()
{
  OUTLINED_FUNCTION_18();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_231E0F950();
  v0[4] = v3;
  OUTLINED_FUNCTION_6(v3);
  v0[5] = v4;
  v0[6] = OUTLINED_FUNCTION_55();
  v5 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231CEB664()
{
  OUTLINED_FUNCTION_57_0();
  v1 = sub_231E109C0();
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    v5 = sub_231E10910();
    if (v6)
    {
      v7 = v5;
      v8 = v6;
      v10 = v0[5];
      v9 = v0[6];
      v11 = v0[4];
      sub_231E0F920();
      sub_231D4C3A0(v7, v8, v3, v4, v9);
      (*(v10 + 8))(v9, v11);
    }
  }

  OUTLINED_FUNCTION_14_0();

  return v12();
}

uint64_t sub_231CEB77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75180, &qword_231E13690);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v21 - v9;
  sub_231CE6758(a3, v21 - v9);
  v11 = sub_231E119F0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_231CE1118(v10, &qword_27DD75180, &qword_231E13690);
  }

  else
  {
    sub_231E119E0();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_231E11920();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_231E116A0() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_231CE1118(a3, &qword_27DD75180, &qword_231E13690);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_231CE1118(a3, &qword_27DD75180, &qword_231E13690);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_231CEB9FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = OUTLINED_FUNCTION_10();
  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_231CEBA28()
{
  OUTLINED_FUNCTION_50_0();
  v1 = v0[3];
  v2 = v1[10];
  v3 = v1[11];
  __swift_project_boxed_opaque_existential_0(v1 + 7, v2);
  OUTLINED_FUNCTION_34_2();
  v8 = (v4 + *v4);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_231CEBB50;
  v6 = v0[4];

  return v8(v6, v2, v3);
}

uint64_t sub_231CEBB50()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 48) = v3;

  v4 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_231CEBC3C()
{
  **(v0 + 16) = *(v0 + 48);
  OUTLINED_FUNCTION_14_0();
  return v1();
}

uint64_t sub_231CEBC68()
{
  OUTLINED_FUNCTION_18();
  *(v0 + 2520) = v1;
  *(v0 + 2152) = v2;
  *(v0 + 2144) = v3;
  *(v0 + 2136) = v4;
  *(v0 + 2128) = v5;
  v6 = sub_231E0F950();
  *(v0 + 2160) = v6;
  OUTLINED_FUNCTION_6(v6);
  *(v0 + 2168) = v7;
  *(v0 + 2176) = OUTLINED_FUNCTION_69();
  *(v0 + 2184) = swift_task_alloc();
  *(v0 + 2192) = swift_task_alloc();
  *(v0 + 2200) = swift_task_alloc();
  *(v0 + 2208) = swift_task_alloc();
  v8 = sub_231E0F4A0();
  *(v0 + 2216) = v8;
  OUTLINED_FUNCTION_6(v8);
  *(v0 + 2224) = v9;
  *(v0 + 2232) = OUTLINED_FUNCTION_55();
  v10 = sub_231E10E30();
  *(v0 + 2240) = v10;
  OUTLINED_FUNCTION_6(v10);
  *(v0 + 2248) = v11;
  *(v0 + 2256) = OUTLINED_FUNCTION_69();
  *(v0 + 2264) = swift_task_alloc();
  *(v0 + 2272) = swift_task_alloc();
  *(v0 + 2280) = swift_task_alloc();
  *(v0 + 2288) = swift_task_alloc();
  *(v0 + 2296) = swift_task_alloc();
  *(v0 + 2304) = swift_task_alloc();
  *(v0 + 2312) = swift_task_alloc();
  *(v0 + 2320) = swift_task_alloc();
  *(v0 + 2328) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74510, &qword_231E1E2D0);
  *(v0 + 2336) = OUTLINED_FUNCTION_55();
  v12 = sub_231E106A0();
  *(v0 + 2344) = v12;
  OUTLINED_FUNCTION_6(v12);
  *(v0 + 2352) = v13;
  *(v0 + 2360) = OUTLINED_FUNCTION_55();
  v14 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_231CEBECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_166();
  a27 = v30;
  a28 = v31;
  a26 = v28;
  sub_231CC8780();
  OUTLINED_FUNCTION_8_1();
  if (v32)
  {
    v33 = *(v28 + 2344);
    v34 = *(v28 + 2336);
    sub_231E108F0();
    if (__swift_getEnumTagSinglePayload(v34, 1, v33) == 1)
    {
      sub_231CE1118(*(v28 + 2336), &qword_27DD74510, &qword_231E1E2D0);
      OUTLINED_FUNCTION_74_0();
      OUTLINED_FUNCTION_164();
      *(v28 + 2368) = v35;
      v87 = v34 + 24;
      OUTLINED_FUNCTION_34_2();
      v89 = v36 + *v36;
      swift_task_alloc();
      OUTLINED_FUNCTION_58_0();
      *(v28 + 2376) = v37;
      *v37 = v38;
      v37[1] = sub_231CEC370;
      OUTLINED_FUNCTION_31_3();
      OUTLINED_FUNCTION_72_0();
      OUTLINED_FUNCTION_95_1();
    }

    else
    {
      (*(*(v28 + 2352) + 32))(*(v28 + 2360), *(v28 + 2336), *(v28 + 2344));
      OUTLINED_FUNCTION_74_0();
      OUTLINED_FUNCTION_164();
      *(v28 + 2392) = v63;
      v87 = v34 + 32;
      OUTLINED_FUNCTION_34_2();
      v89 = v64 + *v64;
      swift_task_alloc();
      OUTLINED_FUNCTION_58_0();
      *(v28 + 2400) = v65;
      *v65 = v66;
      v65[1] = sub_231CEC488;
      OUTLINED_FUNCTION_31_3();
      OUTLINED_FUNCTION_72_0();
      OUTLINED_FUNCTION_95_1();
    }

    return v47(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, v87, v89, a17, a18, a19, a20);
  }

  else
  {
    sub_231DC4B64();
    v50 = OUTLINED_FUNCTION_73_0();
    v51(v50);

    v52 = sub_231E10E10();
    sub_231E11AF0();
    OUTLINED_FUNCTION_148_0();
    v53 = OUTLINED_FUNCTION_176();
    v54 = *(v28 + 2248);
    v55 = *(v28 + 2240);
    if (v53)
    {
      v90 = *(v28 + 2328);
      swift_slowAlloc();
      a17 = OUTLINED_FUNCTION_28();
      *v29 = 136446466;
      v56 = sub_231DDB1E8();
      sub_231CB5000(v56, v57, &a17);
      OUTLINED_FUNCTION_117_0();
      OUTLINED_FUNCTION_41_2();
      OUTLINED_FUNCTION_67_1();
      _os_log_impl(v58, v59, v60, v61, v62, 0x12u);
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_14();

      (*(v54 + 8))(v90, v55);
    }

    else
    {

      v68 = OUTLINED_FUNCTION_126_0();
      v69(v68);
    }

    v70 = *(v28 + 2128);
    *(v28 + 1304) = 0;
    *(v28 + 1312) = 1;
    OUTLINED_FUNCTION_1_6((v28 + 1320));
    OUTLINED_FUNCTION_101_0((v28 + 1304), v28 + 144);
    memcpy(v70, (v28 + 144), 0x80uLL);
    OUTLINED_FUNCTION_0_10();
    v81 = v72;
    v82 = v71;
    v83 = *(v28 + 2232);
    v84 = *(v28 + 2208);
    v85 = *(v28 + 2200);
    v86 = *(v28 + 2192);
    v88 = *(v28 + 2184);
    v91 = *(v28 + 2176);

    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_95_1();

    return v74(v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v88, v91, a17, a18, a19, a20);
  }
}

uint64_t sub_231CEC370()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_15();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  v3[298] = v0;

  if (!v0)
  {
    memcpy(v3 + 150, v3 + 124, 0x68uLL);
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231CEC488()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_15();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  v3[301] = v0;

  if (!v0)
  {
    memcpy(v3 + 98, v3 + 111, 0x68uLL);
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231CEC5A8()
{
  v5 = OUTLINED_FUNCTION_156_1();
  v6(v5);
  v7 = *(v0 + 888);
  *(v0 + 2512) = v7;
  memcpy((v0 + 1096), (v0 + 784), 0x68uLL);
  v342 = *(v0 + 2408);
  v8 = sub_231CC886C();
  if ((v8 & 0x100000000) != 0)
  {
    v4 = 0.478;
  }

  else
  {
    OUTLINED_FUNCTION_154_0(v8);
    v9 = OUTLINED_FUNCTION_82();
    v10(v9);

    v11 = sub_231E10E10();
    sub_231E11AF0();
    OUTLINED_FUNCTION_148_0();
    if (OUTLINED_FUNCTION_177())
    {
      OUTLINED_FUNCTION_38_1();
      v2 = OUTLINED_FUNCTION_28();
      *v1 = 136446466;
      v12 = sub_231DDB1E8();
      OUTLINED_FUNCTION_93_0(v12, v13, v14, v15, v16, v17, v18, v19, v287, v293, v299, v305, v310, v315, v320, v325, v329, v333, v338, v342);
      OUTLINED_FUNCTION_117_0();
      OUTLINED_FUNCTION_133_0();
      OUTLINED_FUNCTION_66_1();
      _os_log_impl(v20, v21, v22, v23, v24, 0x16u);
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_14();
    }

    v25 = OUTLINED_FUNCTION_70();
    v8 = v26(v25);
  }

  v27 = OUTLINED_FUNCTION_153_0(v8);
  v28 = OUTLINED_FUNCTION_60_1(v27);
  v29(v28);

  v30 = sub_231E10E10();
  v31 = sub_231E11AF0();

  v32 = os_log_type_enabled(v30, v31);
  v33 = *(v0 + 2312);
  v34 = *(v0 + 2248);
  v35 = *(v0 + 2240);
  if (v32)
  {
    v2 = OUTLINED_FUNCTION_106_0();
    v3 = OUTLINED_FUNCTION_67();
    *v2 = 136446722;
    v36 = sub_231DDB1E8();
    OUTLINED_FUNCTION_93_0(v36, v37, v38, v39, v40, v41, v42, v43, v287, v293, v299, v305, v310, v315, v320, v325, v329, v333, v338, v342);

    OUTLINED_FUNCTION_71_1(v44, v45, v46, v47, v48, v49, v50, v51, v288, v294, v300, v306, v311, v316, v321, v326);
    OUTLINED_FUNCTION_169(&dword_231CAE000, v52, v53, "%{public}s Notification urgency: %{BOOL}d; with score: %f");
    __swift_destroy_boxed_opaque_existential_0(v3);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();

    v54 = *(v34 + 8);
    (v54)(v329, v35);
  }

  else
  {

    v54 = *(v34 + 8);
    (v54)(v33, v35);
  }

  *(v0 + 2440) = v54;
  v55 = &unk_2846F07A0;
  *(v0 + 1904) = &unk_2846F07A0;
  v56 = sub_231CC7270();
  v57 = OUTLINED_FUNCTION_150_0(v56);
  __swift_destroy_boxed_opaque_existential_0((v0 + 1880));
  if ((v57 & 1) == 0 || (sub_231E10910(), (*(v0 + 2456) = v58) == 0))
  {
LABEL_19:
    if (v4 >= v7)
    {
      goto LABEL_34;
    }

    sub_231E108E0();
    OUTLINED_FUNCTION_8_1();
    if (!v98 && (v97 & 1) != 0)
    {
      goto LABEL_34;
    }

    v99 = *(v0 + 2448);
    *(v0 + 1944) = &unk_2846F07A0;
    v100 = OUTLINED_FUNCTION_100_0(v99);
    __swift_destroy_boxed_opaque_existential_0((v0 + 1920));
    if ((v100 & 1) == 0)
    {
      goto LABEL_34;
    }

    v101 = sub_231E10910();
    if (!v102)
    {
      goto LABEL_34;
    }

    v103 = v101;
    OUTLINED_FUNCTION_65_1();
    OUTLINED_FUNCTION_168(v104);
    v105 = sub_231D12834();
    OUTLINED_FUNCTION_144_0(v106, v105);
    v109 = *(v2 + 8);
    v108 = v2 + 8;
    v107 = v109;
    v110 = OUTLINED_FUNCTION_140_0();
    (v109)(v110);
    v111 = OUTLINED_FUNCTION_33_3();
    v112 = v342;
    sub_231D4E36C(v111, v113, v114, v115, v116, v117);
    v336 = v103;
    v340 = v109;
    v331 = v54;
    if (v342)
    {
      v343 = v108;
      v323 = 0;
      OUTLINED_FUNCTION_124_0();
      v121 = *(v0 + 2432);
      v122 = *(v0 + 2424);
      OUTLINED_FUNCTION_40_2();
      v340();
      v123 = OUTLINED_FUNCTION_59_0();
      v122(v123);

      v124 = v112;
      v125 = sub_231E10E10();
      v126 = sub_231E11AD0();

      os_log_type_enabled(v125, v126);
      OUTLINED_FUNCTION_158();
      if (v127)
      {
        OUTLINED_FUNCTION_38_1();
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_39_2();
        OUTLINED_FUNCTION_115_0();
        *v121 = 136446466;
        v128 = sub_231DDB1E8();
        OUTLINED_FUNCTION_93_0(v128, v129, v130, v131, v132, v133, v134, v135, v287, v125, v299, v103, v310, v121, 0, v325, v54, v103, v340, v343);
        v299 = v54;
        OUTLINED_FUNCTION_117_0();
        OUTLINED_FUNCTION_68_2();
        v136 = _swift_stdlib_bridgeErrorToNSError();
        *(v121 + 14) = v136;
        *v30 = v136;
        OUTLINED_FUNCTION_142_0(&dword_231CAE000, v293, v126, "%{public}s Error accessing urgent notification database: %@");
        sub_231CE1118(v30, &qword_27DD74D30, &unk_231E13480);
        OUTLINED_FUNCTION_49_2();
        OUTLINED_FUNCTION_17_0();
        OUTLINED_FUNCTION_14();

        v310(v305, v54);
      }

      else
      {

        (v30)(v103, v54);
      }

      v107 = v340;
      v108 = v343;
      v54 = v331;
    }

    else
    {
      LODWORD(v325) = v119;
      v323 = v118;
      v120 = OUTLINED_FUNCTION_123_0();
      (v107)(v120);
      sub_231E0F920();
      OUTLINED_FUNCTION_171();
      (v107)(*(v0 + 2192), *(v0 + 2160));
    }

    v137 = *(v0 + 2448);
    *(v0 + 1984) = &unk_2846F07A0;
    v138 = OUTLINED_FUNCTION_96_0(v137);
    __swift_destroy_boxed_opaque_existential_0((v0 + 1960));
    if (v138)
    {

LABEL_34:
      OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_24_1((v0 + 1400), v0 + 656);
      v139 = (v0 + 656);
LABEL_35:
      v140 = v30;
      goto LABEL_36;
    }

    if (sub_231CC86C4())
    {
      v344 = v3;
      v143 = OUTLINED_FUNCTION_19_2();
      v144(v143);

      v145 = sub_231E10E10();
      v146 = sub_231E11AF0();

      os_log_type_enabled(v145, v146);
      OUTLINED_FUNCTION_120();
      v147 = *(v0 + 2240);
      if (v148)
      {
        OUTLINED_FUNCTION_47_1();
        OUTLINED_FUNCTION_39_2();
        OUTLINED_FUNCTION_110_0();
        *v30 = 136446210;
        v149 = sub_231DDB1E8();
        OUTLINED_FUNCTION_93_0(v149, v150, v151, v152, v153, v154, v155, v156, v287, v293, v299, v305, v310, v138, v323, v325, v331, v336, v340, v3);
        LOBYTE(v55) = v108;
        OUTLINED_FUNCTION_87_0();
        *(v30 + 4) = v108;
        OUTLINED_FUNCTION_94_0(&dword_231CAE000, v157, v158, "%{public}s Bypassing the observation period for urgent notifications");
        __swift_destroy_boxed_opaque_existential_0(v107);
        v107 = v340;
        OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_49_2();

        v159 = v315(v310, v147);
      }

      else
      {

        v159 = (v138)(v30, v147);
      }

      v54 = v331;
      v3 = v344;
      if (v325)
      {
        goto LABEL_67;
      }
    }

    else if (v325)
    {
      OUTLINED_FUNCTION_12_4();
      v194 = *(v0 + 2288);
      OUTLINED_FUNCTION_46_1();

      v195 = OUTLINED_FUNCTION_11_5();
      (v54)(v195);

      v196 = v194;
      v197 = sub_231E10E10();
      sub_231E11AF0();
      OUTLINED_FUNCTION_105_0();
      OUTLINED_FUNCTION_91_0();
      OUTLINED_FUNCTION_62();
      if (v198)
      {
        OUTLINED_FUNCTION_47_1();
        OUTLINED_FUNCTION_17_1();
        OUTLINED_FUNCTION_110_0();
        *v54 = 136446210;
        v199 = sub_231DDB1E8();
        OUTLINED_FUNCTION_93_0(v199, v200, v201, v202, v203, v204, v205, v206, v287, v293, v299, v305, v310, v315, v323, v325, v331, v336, v340, v196);
        OUTLINED_FUNCTION_87_0();
        *(v54 + 4) = v108;
        OUTLINED_FUNCTION_3_7();
        _os_log_impl(v207, v208, v209, v210, v211, 0xCu);
        OUTLINED_FUNCTION_2_6();
        OUTLINED_FUNCTION_11();

        v212 = OUTLINED_FUNCTION_9_4();
        v346(v212);
      }

      else
      {

        v266 = OUTLINED_FUNCTION_9_4();
        v196(v266);
      }

      OUTLINED_FUNCTION_113_1();
      OUTLINED_FUNCTION_112_0();
      OUTLINED_FUNCTION_43_3(v267, v0 + 2000);
      OUTLINED_FUNCTION_18_4(*v197, v197[1], xmmword_231E16E10);
      *(v0 + 1784) = 0;
      *(v0 + 1792) = v112;
      OUTLINED_FUNCTION_1_6((v0 + 1800));
      OUTLINED_FUNCTION_54_2();
      v139 = (v0 + 272);
      goto LABEL_81;
    }

    v159 = sub_231D128E4();
    if (v323 >= v159)
    {
      v347 = v3;
      OUTLINED_FUNCTION_12_4();
      v30 = *(v0 + 2272);
      OUTLINED_FUNCTION_46_1();
      v222 = OUTLINED_FUNCTION_11_5();
      (v54)(v222);

      v223 = sub_231E10E10();
      sub_231E11AF0();
      OUTLINED_FUNCTION_105_0();
      os_log_type_enabled(v223, v55);
      OUTLINED_FUNCTION_64_0();
      if (v224)
      {
        OUTLINED_FUNCTION_38_1();
        OUTLINED_FUNCTION_48_2();
        OUTLINED_FUNCTION_115_0();
        *v30 = 136446466;
        v225 = sub_231DDB1E8();
        OUTLINED_FUNCTION_93_0(v225, v226, v227, v228, v229, v230, v231, v232, v287, v293, v299, v305, v310, v30, v323, v30, v331, v336, v340, v3);
        OUTLINED_FUNCTION_87_0();
        OUTLINED_FUNCTION_61_1();
        *(v30 + 14) = v323;
        OUTLINED_FUNCTION_97_0(&dword_231CAE000, v233, v234, "%{public}s Urgent notification count %ld exceeds frequency threshold allowed");
        OUTLINED_FUNCTION_17_0();
        OUTLINED_FUNCTION_49_2();

        v243 = OUTLINED_FUNCTION_163(v235, v236, v237, v238, v239, v240, v241, v242, v292, v298, v304, v309, v314, v319);
        v244(v243);
      }

      else
      {

        v268 = OUTLINED_FUNCTION_75_0();
        (v30)(v268);
      }

      v269 = sub_231E0F920();
      OUTLINED_FUNCTION_151_0(v269, v270, v271, v272, v273, v274, v275, v276, v287, v293, v299, v305, v310, v315, v323, v325, v331, v336, v340, v347);
      v277 = OUTLINED_FUNCTION_125_0();
      if (v223)
      {
        v278(v277);

        OUTLINED_FUNCTION_42_2();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD744F8, &qword_231E16F08);
        OUTLINED_FUNCTION_155_1();
        OUTLINED_FUNCTION_7_4();
        v279 = OUTLINED_FUNCTION_14_1();
        OUTLINED_FUNCTION_89_0(v279, xmmword_231E138E0);
        sub_231E10A30();
        OUTLINED_FUNCTION_6_0();
        v280 = OUTLINED_FUNCTION_136_0();
        v281(v280);
        OUTLINED_FUNCTION_85_0();
        OUTLINED_FUNCTION_86_0();
        swift_setDeallocating();
        sub_231CF0D6C();
        *(v0 + 1592) = 0;
        *(v0 + 1600) = 1;
        OUTLINED_FUNCTION_1_6((v0 + 1608));
        OUTLINED_FUNCTION_13_4();
        v139 = (v0 + 16);
        goto LABEL_35;
      }

      v282 = *(v0 + 2136);
      v196 = *(v0 + 2128);
      v278(v277);

      v284 = (v282 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_ineligibleForUrgencyReason);
      OUTLINED_FUNCTION_43_3(v283, v0 + 2024);
      OUTLINED_FUNCTION_18_4(*v284, v284[1], xmmword_231E16E20);
      *(v0 + 1688) = 0;
      *(v0 + 1696) = 1;
      OUTLINED_FUNCTION_1_6((v0 + 1704));
      OUTLINED_FUNCTION_53_2();
      v139 = (v0 + 400);
      goto LABEL_81;
    }

LABEL_67:
    OUTLINED_FUNCTION_99_0(v159);
    v213 = sub_231D12978();
    OUTLINED_FUNCTION_144_0(v214, v213);
    v215 = OUTLINED_FUNCTION_140_0();
    (v107)(v215);
    v216 = OUTLINED_FUNCTION_33_3();
    sub_231D4F2E8(v216, v217, v218, v219, v220, v221);
    v30 = *(v0 + 2176);
    v246 = v245;
    v247 = OUTLINED_FUNCTION_90_0();
    (v107)(v247);

    if ((v246 & 1) == 0)
    {
      goto LABEL_34;
    }

    OUTLINED_FUNCTION_12_4();
    v248 = *(v0 + 2264);
    OUTLINED_FUNCTION_46_1();
    v249 = OUTLINED_FUNCTION_11_5();
    (v54)(v249);

    v196 = v248;
    v250 = sub_231E10E10();
    sub_231E11AF0();
    OUTLINED_FUNCTION_105_0();
    OUTLINED_FUNCTION_91_0();
    OUTLINED_FUNCTION_63_0();
    if (v251)
    {
      OUTLINED_FUNCTION_47_1();
      OUTLINED_FUNCTION_17_1();
      OUTLINED_FUNCTION_110_0();
      *v54 = 136446210;
      v252 = sub_231DDB1E8();
      OUTLINED_FUNCTION_93_0(v252, v253, v254, v255, v256, v257, v258, v259, v287, v293, v299, v305, v310, v315, v323, v325, v331, v336, v340, v196);
      OUTLINED_FUNCTION_87_0();
      *(v54 + 4) = v108;
      OUTLINED_FUNCTION_3_7();
      _os_log_impl(v260, v261, v262, v263, v264, 0xCu);
      OUTLINED_FUNCTION_2_6();
      OUTLINED_FUNCTION_11();

      v265 = OUTLINED_FUNCTION_9_4();
      v348(v265);
    }

    else
    {

      v285 = OUTLINED_FUNCTION_9_4();
      v196(v285);
    }

    OUTLINED_FUNCTION_113_1();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_43_3(v286, v0 + 2048);
    OUTLINED_FUNCTION_18_4(*v250, v250[1], xmmword_231E16E30);
    *(v0 + 1496) = 0;
    *(v0 + 1504) = 0;
    OUTLINED_FUNCTION_1_6((v0 + 1512));
    OUTLINED_FUNCTION_52_2();
    v139 = (v0 + 528);
LABEL_81:
    v140 = v196;
LABEL_36:
    memcpy(v140, v139, 0x80uLL);
    OUTLINED_FUNCTION_0_10();
    OUTLINED_FUNCTION_79_0();

    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_88_0();

    __asm { BRAA            X1, X16 }
  }

  v30 = v58;
  v59 = sub_231E109B0();
  if (!v60)
  {
LABEL_18:

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_159(v59, v60);
  v61 = [objc_opt_self() sentenceEmbeddingForLanguage_];
  *(v0 + 2464) = v61;
  if (!v61)
  {

    goto LABEL_18;
  }

  v62 = OUTLINED_FUNCTION_108_0();
  v63 = sub_231D12FF8();
  if (v63 < v62)
  {
    v71 = OUTLINED_FUNCTION_134_0();
    v72(v71);

    v73 = sub_231E10E10();
    v74 = sub_231E11AF0();

    LODWORD(v338) = v74;
    v75 = os_log_type_enabled(v73, v74);
    v76 = *(v0 + 2248);
    v77 = *(v0 + 2240);
    if (v75)
    {
      v334 = *(v0 + 2304);
      v78 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_115_0();
      *v78 = 136446466;
      v79 = sub_231DDB1E8();
      v87 = OUTLINED_FUNCTION_93_0(v79, v80, v81, v82, v83, v84, v85, v86, v287, v293, v299, v305, v310, v77, v320, v325, v329, v334, v338, v342);
      v312 = v76;
      v88 = v87;

      *(v78 + 4) = v88;
      *(v78 + 12) = 2048;
      *(v78 + 14) = sub_231D12FF8();
      OUTLINED_FUNCTION_147_0(&dword_231CAE000, v89, v90, "%{public}s Truncating notification body content to %ld characters", v91, v92, v93, v94, v289, v295, v301, v307, v312, v317, v322, v327, v330, v335, v339);
      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_30();

      v95 = v315;
      v96 = v333;
    }

    else
    {

      v96 = OUTLINED_FUNCTION_18_0();
    }

    (v54)(v96, v95);

    v160 = sub_231D12FF8();
    v161 = sub_231CEF250(v160, v2, v31);
    MEMORY[0x23837CBB0](v161);
    OUTLINED_FUNCTION_149_0();

    *(v0 + 2096) = v73;
    *(v0 + 2104) = v77;
  }

  v162 = OUTLINED_FUNCTION_130_0(v63, v64, v65, v66, v67, v68, v69, v70, v287, v293, v299);
  if (v163)
  {
    v164 = v162;
  }

  else
  {
    v164 = 0;
  }

  v165 = 0xE000000000000000;
  if (v163)
  {
    v166 = v163;
  }

  else
  {
    v166 = 0xE000000000000000;
  }

  v349 = v164;

  MEMORY[0x23837CC20](32, 0xE100000000000000);

  v167 = sub_231E109F0();
  if (v168)
  {
    v169 = v167;
  }

  else
  {
    v169 = 0;
  }

  if (v168)
  {
    v165 = v168;
  }

  MEMORY[0x23837CC20](v169, v165);

  OUTLINED_FUNCTION_172(v170, v171, v172, v173, v174, v175, v176, v177, v290, v296, v302, v305, v310, v315, v320, v325, v329, v333, v338, v342, v349, v166);
  sub_231CE11D8();
  v178 = sub_231E11C30();
  v180 = OUTLINED_FUNCTION_107_0(v178, v179);
  v181(v180);

  sub_231E108E0();
  OUTLINED_FUNCTION_8_1();
  if (!v98 && (v182 & 1) != 0)
  {
    sub_231E109C0();
  }

  v183 = OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_56_2(v183, v184, v185, v186, v187, v188, v189, v190, v291, v297, v303, v308, v313, v318, v324, v328, v332, v337, v341, v345);
  v191 = swift_task_alloc();
  *(v0 + 2496) = v191;
  *v191 = v0;
  OUTLINED_FUNCTION_50_2(v191);
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_88_0();

  return sub_231DDB61C();
}

uint64_t sub_231CED3F8()
{
  v5 = *(v0 + 992);
  *(v0 + 2512) = v5;
  memcpy((v0 + 1096), (v0 + 1200), 0x68uLL);
  v340 = *(v0 + 2384);
  v6 = sub_231CC886C();
  if ((v6 & 0x100000000) != 0)
  {
    v4 = 0.478;
  }

  else
  {
    OUTLINED_FUNCTION_154_0(v6);
    v7 = OUTLINED_FUNCTION_82();
    v8(v7);

    v9 = sub_231E10E10();
    sub_231E11AF0();
    OUTLINED_FUNCTION_148_0();
    if (OUTLINED_FUNCTION_177())
    {
      OUTLINED_FUNCTION_38_1();
      v2 = OUTLINED_FUNCTION_28();
      *v1 = 136446466;
      v10 = sub_231DDB1E8();
      OUTLINED_FUNCTION_93_0(v10, v11, v12, v13, v14, v15, v16, v17, v285, v291, v297, v303, v308, v313, v318, v323, v327, v331, v336, v340);
      OUTLINED_FUNCTION_117_0();
      OUTLINED_FUNCTION_133_0();
      OUTLINED_FUNCTION_66_1();
      _os_log_impl(v18, v19, v20, v21, v22, 0x16u);
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_14();
    }

    v23 = OUTLINED_FUNCTION_70();
    v6 = v24(v23);
  }

  v25 = OUTLINED_FUNCTION_153_0(v6);
  v26 = OUTLINED_FUNCTION_60_1(v25);
  v27(v26);

  v28 = sub_231E10E10();
  v29 = sub_231E11AF0();

  v30 = os_log_type_enabled(v28, v29);
  v31 = *(v0 + 2312);
  v32 = *(v0 + 2248);
  v33 = *(v0 + 2240);
  if (v30)
  {
    v2 = OUTLINED_FUNCTION_106_0();
    v3 = OUTLINED_FUNCTION_67();
    *v2 = 136446722;
    v34 = sub_231DDB1E8();
    OUTLINED_FUNCTION_93_0(v34, v35, v36, v37, v38, v39, v40, v41, v285, v291, v297, v303, v308, v313, v318, v323, v327, v331, v336, v340);

    OUTLINED_FUNCTION_71_1(v42, v43, v44, v45, v46, v47, v48, v49, v286, v292, v298, v304, v309, v314, v319, v324);
    OUTLINED_FUNCTION_169(&dword_231CAE000, v50, v51, "%{public}s Notification urgency: %{BOOL}d; with score: %f");
    __swift_destroy_boxed_opaque_existential_0(v3);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();

    v52 = *(v32 + 8);
    (v52)(v327, v33);
  }

  else
  {

    v52 = *(v32 + 8);
    (v52)(v31, v33);
  }

  *(v0 + 2440) = v52;
  v53 = &unk_2846F07A0;
  *(v0 + 1904) = &unk_2846F07A0;
  v54 = sub_231CC7270();
  v55 = OUTLINED_FUNCTION_150_0(v54);
  __swift_destroy_boxed_opaque_existential_0((v0 + 1880));
  if ((v55 & 1) == 0 || (sub_231E10910(), (*(v0 + 2456) = v56) == 0))
  {
LABEL_19:
    if (v4 >= v5)
    {
      goto LABEL_34;
    }

    sub_231E108E0();
    OUTLINED_FUNCTION_8_1();
    if (!v96 && (v95 & 1) != 0)
    {
      goto LABEL_34;
    }

    v97 = *(v0 + 2448);
    *(v0 + 1944) = &unk_2846F07A0;
    v98 = OUTLINED_FUNCTION_100_0(v97);
    __swift_destroy_boxed_opaque_existential_0((v0 + 1920));
    if ((v98 & 1) == 0)
    {
      goto LABEL_34;
    }

    v99 = sub_231E10910();
    if (!v100)
    {
      goto LABEL_34;
    }

    v101 = v99;
    OUTLINED_FUNCTION_65_1();
    OUTLINED_FUNCTION_168(v102);
    v103 = sub_231D12834();
    OUTLINED_FUNCTION_144_0(v104, v103);
    v107 = *(v2 + 8);
    v106 = v2 + 8;
    v105 = v107;
    v108 = OUTLINED_FUNCTION_140_0();
    (v107)(v108);
    v109 = OUTLINED_FUNCTION_33_3();
    v110 = v340;
    sub_231D4E36C(v109, v111, v112, v113, v114, v115);
    v334 = v101;
    v338 = v107;
    v329 = v52;
    if (v340)
    {
      v341 = v106;
      v321 = 0;
      OUTLINED_FUNCTION_124_0();
      v119 = *(v0 + 2432);
      v120 = *(v0 + 2424);
      OUTLINED_FUNCTION_40_2();
      v338();
      v121 = OUTLINED_FUNCTION_59_0();
      v120(v121);

      v122 = v110;
      v123 = sub_231E10E10();
      v124 = sub_231E11AD0();

      os_log_type_enabled(v123, v124);
      OUTLINED_FUNCTION_158();
      if (v125)
      {
        OUTLINED_FUNCTION_38_1();
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_39_2();
        OUTLINED_FUNCTION_115_0();
        *v119 = 136446466;
        v126 = sub_231DDB1E8();
        OUTLINED_FUNCTION_93_0(v126, v127, v128, v129, v130, v131, v132, v133, v285, v123, v297, v101, v308, v119, 0, v323, v52, v101, v338, v341);
        v297 = v52;
        OUTLINED_FUNCTION_117_0();
        OUTLINED_FUNCTION_68_2();
        v134 = _swift_stdlib_bridgeErrorToNSError();
        *(v119 + 14) = v134;
        *v28 = v134;
        OUTLINED_FUNCTION_142_0(&dword_231CAE000, v291, v124, "%{public}s Error accessing urgent notification database: %@");
        sub_231CE1118(v28, &qword_27DD74D30, &unk_231E13480);
        OUTLINED_FUNCTION_49_2();
        OUTLINED_FUNCTION_17_0();
        OUTLINED_FUNCTION_14();

        v308(v303, v52);
      }

      else
      {

        (v28)(v101, v52);
      }

      v105 = v338;
      v106 = v341;
      v52 = v329;
    }

    else
    {
      LODWORD(v323) = v117;
      v321 = v116;
      v118 = OUTLINED_FUNCTION_123_0();
      (v105)(v118);
      sub_231E0F920();
      OUTLINED_FUNCTION_171();
      (v105)(*(v0 + 2192), *(v0 + 2160));
    }

    v135 = *(v0 + 2448);
    *(v0 + 1984) = &unk_2846F07A0;
    v136 = OUTLINED_FUNCTION_96_0(v135);
    __swift_destroy_boxed_opaque_existential_0((v0 + 1960));
    if (v136)
    {

LABEL_34:
      OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_24_1((v0 + 1400), v0 + 656);
      v137 = (v0 + 656);
LABEL_35:
      v138 = v28;
      goto LABEL_36;
    }

    if (sub_231CC86C4())
    {
      v342 = v3;
      v141 = OUTLINED_FUNCTION_19_2();
      v142(v141);

      v143 = sub_231E10E10();
      v144 = sub_231E11AF0();

      os_log_type_enabled(v143, v144);
      OUTLINED_FUNCTION_120();
      v145 = *(v0 + 2240);
      if (v146)
      {
        OUTLINED_FUNCTION_47_1();
        OUTLINED_FUNCTION_39_2();
        OUTLINED_FUNCTION_110_0();
        *v28 = 136446210;
        v147 = sub_231DDB1E8();
        OUTLINED_FUNCTION_93_0(v147, v148, v149, v150, v151, v152, v153, v154, v285, v291, v297, v303, v308, v136, v321, v323, v329, v334, v338, v3);
        LOBYTE(v53) = v106;
        OUTLINED_FUNCTION_87_0();
        *(v28 + 4) = v106;
        OUTLINED_FUNCTION_94_0(&dword_231CAE000, v155, v156, "%{public}s Bypassing the observation period for urgent notifications");
        __swift_destroy_boxed_opaque_existential_0(v105);
        v105 = v338;
        OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_49_2();

        v157 = v313(v308, v145);
      }

      else
      {

        v157 = (v136)(v28, v145);
      }

      v52 = v329;
      v3 = v342;
      if (v323)
      {
        goto LABEL_67;
      }
    }

    else if (v323)
    {
      OUTLINED_FUNCTION_12_4();
      v192 = *(v0 + 2288);
      OUTLINED_FUNCTION_46_1();

      v193 = OUTLINED_FUNCTION_11_5();
      (v52)(v193);

      v194 = v192;
      v195 = sub_231E10E10();
      sub_231E11AF0();
      OUTLINED_FUNCTION_105_0();
      OUTLINED_FUNCTION_91_0();
      OUTLINED_FUNCTION_62();
      if (v196)
      {
        OUTLINED_FUNCTION_47_1();
        OUTLINED_FUNCTION_17_1();
        OUTLINED_FUNCTION_110_0();
        *v52 = 136446210;
        v197 = sub_231DDB1E8();
        OUTLINED_FUNCTION_93_0(v197, v198, v199, v200, v201, v202, v203, v204, v285, v291, v297, v303, v308, v313, v321, v323, v329, v334, v338, v194);
        OUTLINED_FUNCTION_87_0();
        *(v52 + 4) = v106;
        OUTLINED_FUNCTION_3_7();
        _os_log_impl(v205, v206, v207, v208, v209, 0xCu);
        OUTLINED_FUNCTION_2_6();
        OUTLINED_FUNCTION_11();

        v210 = OUTLINED_FUNCTION_9_4();
        v344(v210);
      }

      else
      {

        v264 = OUTLINED_FUNCTION_9_4();
        v194(v264);
      }

      OUTLINED_FUNCTION_113_1();
      OUTLINED_FUNCTION_112_0();
      OUTLINED_FUNCTION_43_3(v265, v0 + 2000);
      OUTLINED_FUNCTION_18_4(*v195, v195[1], xmmword_231E16E10);
      *(v0 + 1784) = 0;
      *(v0 + 1792) = v110;
      OUTLINED_FUNCTION_1_6((v0 + 1800));
      OUTLINED_FUNCTION_54_2();
      v137 = (v0 + 272);
      goto LABEL_81;
    }

    v157 = sub_231D128E4();
    if (v321 >= v157)
    {
      v345 = v3;
      OUTLINED_FUNCTION_12_4();
      v28 = *(v0 + 2272);
      OUTLINED_FUNCTION_46_1();
      v220 = OUTLINED_FUNCTION_11_5();
      (v52)(v220);

      v221 = sub_231E10E10();
      sub_231E11AF0();
      OUTLINED_FUNCTION_105_0();
      os_log_type_enabled(v221, v53);
      OUTLINED_FUNCTION_64_0();
      if (v222)
      {
        OUTLINED_FUNCTION_38_1();
        OUTLINED_FUNCTION_48_2();
        OUTLINED_FUNCTION_115_0();
        *v28 = 136446466;
        v223 = sub_231DDB1E8();
        OUTLINED_FUNCTION_93_0(v223, v224, v225, v226, v227, v228, v229, v230, v285, v291, v297, v303, v308, v28, v321, v28, v329, v334, v338, v3);
        OUTLINED_FUNCTION_87_0();
        OUTLINED_FUNCTION_61_1();
        *(v28 + 14) = v321;
        OUTLINED_FUNCTION_97_0(&dword_231CAE000, v231, v232, "%{public}s Urgent notification count %ld exceeds frequency threshold allowed");
        OUTLINED_FUNCTION_17_0();
        OUTLINED_FUNCTION_49_2();

        v241 = OUTLINED_FUNCTION_163(v233, v234, v235, v236, v237, v238, v239, v240, v290, v296, v302, v307, v312, v317);
        v242(v241);
      }

      else
      {

        v266 = OUTLINED_FUNCTION_75_0();
        (v28)(v266);
      }

      v267 = sub_231E0F920();
      OUTLINED_FUNCTION_151_0(v267, v268, v269, v270, v271, v272, v273, v274, v285, v291, v297, v303, v308, v313, v321, v323, v329, v334, v338, v345);
      v275 = OUTLINED_FUNCTION_125_0();
      if (v221)
      {
        v276(v275);

        OUTLINED_FUNCTION_42_2();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD744F8, &qword_231E16F08);
        OUTLINED_FUNCTION_155_1();
        OUTLINED_FUNCTION_7_4();
        v277 = OUTLINED_FUNCTION_14_1();
        OUTLINED_FUNCTION_89_0(v277, xmmword_231E138E0);
        sub_231E10A30();
        OUTLINED_FUNCTION_6_0();
        v278 = OUTLINED_FUNCTION_136_0();
        v279(v278);
        OUTLINED_FUNCTION_85_0();
        OUTLINED_FUNCTION_86_0();
        swift_setDeallocating();
        sub_231CF0D6C();
        *(v0 + 1592) = 0;
        *(v0 + 1600) = 1;
        OUTLINED_FUNCTION_1_6((v0 + 1608));
        OUTLINED_FUNCTION_13_4();
        v137 = (v0 + 16);
        goto LABEL_35;
      }

      v280 = *(v0 + 2136);
      v194 = *(v0 + 2128);
      v276(v275);

      v282 = (v280 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_ineligibleForUrgencyReason);
      OUTLINED_FUNCTION_43_3(v281, v0 + 2024);
      OUTLINED_FUNCTION_18_4(*v282, v282[1], xmmword_231E16E20);
      *(v0 + 1688) = 0;
      *(v0 + 1696) = 1;
      OUTLINED_FUNCTION_1_6((v0 + 1704));
      OUTLINED_FUNCTION_53_2();
      v137 = (v0 + 400);
      goto LABEL_81;
    }

LABEL_67:
    OUTLINED_FUNCTION_99_0(v157);
    v211 = sub_231D12978();
    OUTLINED_FUNCTION_144_0(v212, v211);
    v213 = OUTLINED_FUNCTION_140_0();
    (v105)(v213);
    v214 = OUTLINED_FUNCTION_33_3();
    sub_231D4F2E8(v214, v215, v216, v217, v218, v219);
    v28 = *(v0 + 2176);
    v244 = v243;
    v245 = OUTLINED_FUNCTION_90_0();
    (v105)(v245);

    if ((v244 & 1) == 0)
    {
      goto LABEL_34;
    }

    OUTLINED_FUNCTION_12_4();
    v246 = *(v0 + 2264);
    OUTLINED_FUNCTION_46_1();
    v247 = OUTLINED_FUNCTION_11_5();
    (v52)(v247);

    v194 = v246;
    v248 = sub_231E10E10();
    sub_231E11AF0();
    OUTLINED_FUNCTION_105_0();
    OUTLINED_FUNCTION_91_0();
    OUTLINED_FUNCTION_63_0();
    if (v249)
    {
      OUTLINED_FUNCTION_47_1();
      OUTLINED_FUNCTION_17_1();
      OUTLINED_FUNCTION_110_0();
      *v52 = 136446210;
      v250 = sub_231DDB1E8();
      OUTLINED_FUNCTION_93_0(v250, v251, v252, v253, v254, v255, v256, v257, v285, v291, v297, v303, v308, v313, v321, v323, v329, v334, v338, v194);
      OUTLINED_FUNCTION_87_0();
      *(v52 + 4) = v106;
      OUTLINED_FUNCTION_3_7();
      _os_log_impl(v258, v259, v260, v261, v262, 0xCu);
      OUTLINED_FUNCTION_2_6();
      OUTLINED_FUNCTION_11();

      v263 = OUTLINED_FUNCTION_9_4();
      v346(v263);
    }

    else
    {

      v283 = OUTLINED_FUNCTION_9_4();
      v194(v283);
    }

    OUTLINED_FUNCTION_113_1();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_43_3(v284, v0 + 2048);
    OUTLINED_FUNCTION_18_4(*v248, v248[1], xmmword_231E16E30);
    *(v0 + 1496) = 0;
    *(v0 + 1504) = 0;
    OUTLINED_FUNCTION_1_6((v0 + 1512));
    OUTLINED_FUNCTION_52_2();
    v137 = (v0 + 528);
LABEL_81:
    v138 = v194;
LABEL_36:
    memcpy(v138, v137, 0x80uLL);
    OUTLINED_FUNCTION_0_10();
    OUTLINED_FUNCTION_79_0();

    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_88_0();

    __asm { BRAA            X1, X16 }
  }

  v28 = v56;
  v57 = sub_231E109B0();
  if (!v58)
  {
LABEL_18:

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_159(v57, v58);
  v59 = [objc_opt_self() sentenceEmbeddingForLanguage_];
  *(v0 + 2464) = v59;
  if (!v59)
  {

    goto LABEL_18;
  }

  v60 = OUTLINED_FUNCTION_108_0();
  v61 = sub_231D12FF8();
  if (v61 < v60)
  {
    v69 = OUTLINED_FUNCTION_134_0();
    v70(v69);

    v71 = sub_231E10E10();
    v72 = sub_231E11AF0();

    LODWORD(v336) = v72;
    v73 = os_log_type_enabled(v71, v72);
    v74 = *(v0 + 2248);
    v75 = *(v0 + 2240);
    if (v73)
    {
      v332 = *(v0 + 2304);
      v76 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_115_0();
      *v76 = 136446466;
      v77 = sub_231DDB1E8();
      v85 = OUTLINED_FUNCTION_93_0(v77, v78, v79, v80, v81, v82, v83, v84, v285, v291, v297, v303, v308, v75, v318, v323, v327, v332, v336, v340);
      v310 = v74;
      v86 = v85;

      *(v76 + 4) = v86;
      *(v76 + 12) = 2048;
      *(v76 + 14) = sub_231D12FF8();
      OUTLINED_FUNCTION_147_0(&dword_231CAE000, v87, v88, "%{public}s Truncating notification body content to %ld characters", v89, v90, v91, v92, v287, v293, v299, v305, v310, v315, v320, v325, v328, v333, v337);
      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_30();

      v93 = v313;
      v94 = v331;
    }

    else
    {

      v94 = OUTLINED_FUNCTION_18_0();
    }

    (v52)(v94, v93);

    v158 = sub_231D12FF8();
    v159 = sub_231CEF250(v158, v2, v29);
    MEMORY[0x23837CBB0](v159);
    OUTLINED_FUNCTION_149_0();

    *(v0 + 2096) = v71;
    *(v0 + 2104) = v75;
  }

  v160 = OUTLINED_FUNCTION_130_0(v61, v62, v63, v64, v65, v66, v67, v68, v285, v291, v297);
  if (v161)
  {
    v162 = v160;
  }

  else
  {
    v162 = 0;
  }

  v163 = 0xE000000000000000;
  if (v161)
  {
    v164 = v161;
  }

  else
  {
    v164 = 0xE000000000000000;
  }

  v347 = v162;

  MEMORY[0x23837CC20](32, 0xE100000000000000);

  v165 = sub_231E109F0();
  if (v166)
  {
    v167 = v165;
  }

  else
  {
    v167 = 0;
  }

  if (v166)
  {
    v163 = v166;
  }

  MEMORY[0x23837CC20](v167, v163);

  OUTLINED_FUNCTION_172(v168, v169, v170, v171, v172, v173, v174, v175, v288, v294, v300, v303, v308, v313, v318, v323, v327, v331, v336, v340, v347, v164);
  sub_231CE11D8();
  v176 = sub_231E11C30();
  v178 = OUTLINED_FUNCTION_107_0(v176, v177);
  v179(v178);

  sub_231E108E0();
  OUTLINED_FUNCTION_8_1();
  if (!v96 && (v180 & 1) != 0)
  {
    sub_231E109C0();
  }

  v181 = OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_56_2(v181, v182, v183, v184, v185, v186, v187, v188, v289, v295, v301, v306, v311, v316, v322, v326, v330, v335, v339, v343);
  v189 = swift_task_alloc();
  *(v0 + 2496) = v189;
  *v189 = v0;
  OUTLINED_FUNCTION_50_2(v189);
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_88_0();

  return sub_231DDB61C();
}

uint64_t sub_231CEE238()
{
  OUTLINED_FUNCTION_29();
  v2 = *v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 2504) = v0;

  if (v0)
  {
  }

  else
  {

    OUTLINED_FUNCTION_31();

    return MEMORY[0x2822009F8](v5, v6, v7);
  }
}

uint64_t sub_231CEE3A0(uint64_t a1)
{
  OUTLINED_FUNCTION_12_4();
  v4 = *(v1 + 2516);
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  v5 = *(v1 + 2512);
  v6 = OUTLINED_FUNCTION_11_5();
  v2(v6);

  v7 = sub_231E10E10();
  sub_231E11AF0();
  OUTLINED_FUNCTION_105_0();
  v8 = OUTLINED_FUNCTION_91_0();
  v9 = *(v1 + 2464);
  v10 = *(v1 + 2440);
  v11 = *(v1 + 2296);
  v12 = *(v1 + 2248);
  v13 = *(v1 + 2240);
  if (v8)
  {
    LODWORD(v175) = v4 < v5;
    OUTLINED_FUNCTION_141_0();
    OUTLINED_FUNCTION_17_1();
    OUTLINED_FUNCTION_160();
    *v11 = 136446722;
    v14 = sub_231DDB1E8();
    OUTLINED_FUNCTION_145_0(v14, v15, v16, v17, v18, v19, v20, v21, v161, v162, v163, v164, v165, v168, v171, v173, v175, v11, v10);
    OUTLINED_FUNCTION_87_0();
    *(v11 + 4) = v3;
    *(v11 + 12) = 1024;
    *(v11 + 14) = v175;
    *(v11 + 18) = 2048;
    *(v11 + 20) = v5;
    OUTLINED_FUNCTION_3_7();
    _os_log_impl(v22, v23, v24, v25, v26, 0x1Cu);
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_11();

    v179(v177, v13);
  }

  else
  {

    v27 = OUTLINED_FUNCTION_127_0();
    v10(v27);
  }

  if (v4 >= v5)
  {
    goto LABEL_18;
  }

  v28 = *(v1 + 2504);
  sub_231E108E0();
  OUTLINED_FUNCTION_8_1();
  if (!v30 && (v29 & 1) != 0)
  {
    goto LABEL_18;
  }

  v31 = *(v1 + 2448);
  *(v1 + 1944) = &unk_2846F07A0;
  v32 = OUTLINED_FUNCTION_100_0(v31);
  __swift_destroy_boxed_opaque_existential_0((v1 + 1920));
  if ((v32 & 1) == 0)
  {
    goto LABEL_18;
  }

  v33 = sub_231E10910();
  if (!v34)
  {
    goto LABEL_18;
  }

  v35 = v33;
  OUTLINED_FUNCTION_65_1();
  v36 = *(*(v1 + 2152) + 136);
  sub_231E0F920();
  v37 = sub_231D12834();
  OUTLINED_FUNCTION_144_0(v38, v37);
  v41 = *(v3 + 8);
  v40 = v3 + 8;
  v39 = v41;
  v42 = OUTLINED_FUNCTION_18_0();
  (v41)(v42);
  sub_231D4E36C(v35, v12, v7, v43, v44, v45);
  v178 = v35;
  v180 = v41;
  v172 = v36;
  if (v28)
  {
    v169 = 0;
    OUTLINED_FUNCTION_124_0();
    v36 = *(v1 + 2424);
    OUTLINED_FUNCTION_40_2();
    v175 = v40;
    v180();
    v49 = OUTLINED_FUNCTION_59_0();
    (v36)(v49);

    v50 = v28;
    v51 = sub_231E10E10();
    v52 = sub_231E11AD0();

    v53 = os_log_type_enabled(v51, v52);
    v54 = *(v1 + 2440);
    v7 = *(v1 + 2256);
    v55 = *(v1 + 2248);
    v56 = *(v1 + 2240);
    if (v53)
    {
      v166 = *(v1 + 2440);
      OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_48_2();
      *v36 = 136446466;
      v57 = sub_231DDB1E8();
      OUTLINED_FUNCTION_145_0(v57, v58, v59, v60, v61, v62, v63, v64, v161, v162, v56, v7, v166, 0, v172, v173, v175, v178, v180);
      v162 = v55;
      OUTLINED_FUNCTION_117_0();
      OUTLINED_FUNCTION_68_2();
      v65 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 14) = v65;
      *v7 = v65;
      OUTLINED_FUNCTION_142_0(&dword_231CAE000, v51, v52, "%{public}s Error accessing urgent notification database: %@");
      sub_231CE1118(v7, &qword_27DD74D30, &unk_231E13480);
      OUTLINED_FUNCTION_49_2();
      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_14();

      v165(v164, v163);
    }

    else
    {

      v66 = OUTLINED_FUNCTION_90_0();
      v54(v66);
    }

    v40 = v175;
    v35 = v178;
    v39 = v180;
  }

  else
  {
    LODWORD(v173) = v47;
    v169 = v46;
    v48 = OUTLINED_FUNCTION_123_0();
    (v39)(v48);
    sub_231E0F920();
    sub_231D4EC98(v35, v12, v36);
    (v39)(*(v1 + 2192), *(v1 + 2160));
  }

  v67 = *(v1 + 2448);
  *(v1 + 1984) = &unk_2846F07A0;
  v68 = OUTLINED_FUNCTION_96_0(v67);
  __swift_destroy_boxed_opaque_existential_0((v1 + 1960));
  if (v68)
  {

LABEL_18:
    OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_24_1((v1 + 1400), v1 + 656);
    v69 = (v1 + 656);
    v70 = v7;
    goto LABEL_19;
  }

  if (sub_231CC86C4())
  {
    v175 = v12;
    v73 = OUTLINED_FUNCTION_19_2();
    v74(v73);

    v75 = sub_231E10E10();
    v76 = sub_231E11AF0();

    os_log_type_enabled(v75, v76);
    OUTLINED_FUNCTION_120();
    v36 = *(v1 + 2240);
    if (v77)
    {
      OUTLINED_FUNCTION_47_1();
      OUTLINED_FUNCTION_48_2();
      OUTLINED_FUNCTION_160();
      *v7 = 136446210;
      v78 = sub_231DDB1E8();
      OUTLINED_FUNCTION_145_0(v78, v79, v80, v81, v82, v83, v84, v85, v161, v162, v36, v7, v68, v169, v172, v173, v12, v178, v180);
      v162 = v12;
      OUTLINED_FUNCTION_87_0();
      *(v7 + 4) = v40;
      OUTLINED_FUNCTION_94_0(&dword_231CAE000, v86, v87, "%{public}s Bypassing the observation period for urgent notifications");
      OUTLINED_FUNCTION_2_6();
      OUTLINED_FUNCTION_49_2();

      v88 = (v165)(v164, v163);
    }

    else
    {

      v108 = OUTLINED_FUNCTION_75_0();
      v88 = (v68)(v108);
    }

    v12 = v175;
    if (v173)
    {
      goto LABEL_32;
    }
  }

  else if (v173)
  {
    OUTLINED_FUNCTION_12_4();
    v89 = *(v1 + 2288);
    OUTLINED_FUNCTION_46_1();

    v90 = OUTLINED_FUNCTION_11_5();
    (v35)(v90);

    v91 = v89;
    v92 = sub_231E10E10();
    sub_231E11AF0();
    OUTLINED_FUNCTION_105_0();
    OUTLINED_FUNCTION_91_0();
    OUTLINED_FUNCTION_62();
    if (v93)
    {
      OUTLINED_FUNCTION_47_1();
      OUTLINED_FUNCTION_17_1();
      OUTLINED_FUNCTION_160();
      *v35 = 136446210;
      v94 = sub_231DDB1E8();
      OUTLINED_FUNCTION_145_0(v94, v95, v96, v97, v98, v99, v100, v101, v161, v162, v163, v164, v165, v169, v172, v173, v175, v178, v91);
      OUTLINED_FUNCTION_87_0();
      *(v35 + 4) = v40;
      OUTLINED_FUNCTION_3_7();
      _os_log_impl(v102, v103, v104, v105, v106, 0xCu);
      OUTLINED_FUNCTION_2_6();
      OUTLINED_FUNCTION_11();

      v107 = OUTLINED_FUNCTION_9_4();
      v181(v107);
    }

    else
    {

      v150 = OUTLINED_FUNCTION_9_4();
      v91(v150);
    }

    OUTLINED_FUNCTION_113_1();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_43_3(v151, v1 + 2000);
    OUTLINED_FUNCTION_18_4(*v92, v92[1], xmmword_231E16E10);
    *(v1 + 1784) = 0;
    *(v1 + 1792) = v28;
    OUTLINED_FUNCTION_1_6((v1 + 1800));
    OUTLINED_FUNCTION_54_2();
    v69 = (v1 + 272);
    goto LABEL_44;
  }

  v88 = sub_231D128E4();
  if (v169 >= v88)
  {
    v176 = v12;
    OUTLINED_FUNCTION_12_4();
    v115 = *(v1 + 2272);
    OUTLINED_FUNCTION_46_1();
    v116 = OUTLINED_FUNCTION_11_5();
    (v35)(v116);

    v117 = sub_231E10E10();
    sub_231E11AF0();
    OUTLINED_FUNCTION_105_0();
    os_log_type_enabled(v117, v39);
    OUTLINED_FUNCTION_64_0();
    if (v118)
    {
      OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_39_2();
      *v115 = 136446466;
      v119 = sub_231DDB1E8();
      OUTLINED_FUNCTION_145_0(v119, v120, v121, v122, v123, v124, v125, v126, v161, v162, v163, v164, v165, v169, v172, v115, v12, v178, v180);
      OUTLINED_FUNCTION_87_0();
      OUTLINED_FUNCTION_61_1();
      *(v115 + 14) = v170;
      OUTLINED_FUNCTION_97_0(&dword_231CAE000, v127, v128, "%{public}s Urgent notification count %ld exceeds frequency threshold allowed");
      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_49_2();

      v174(v167, v36);
    }

    else
    {

      v152 = OUTLINED_FUNCTION_75_0();
      (v115)(v152);
    }

    v153 = *(v1 + 2184);
    sub_231E0F920();
    sub_231D4F620(v178, v176, v153);
    v154 = OUTLINED_FUNCTION_125_0();
    v155 = *(v1 + 2136);
    v91 = *(v1 + 2128);
    v156(v154);

    v158 = (v155 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_ineligibleForUrgencyReason);
    OUTLINED_FUNCTION_43_3(v157, v1 + 2024);
    OUTLINED_FUNCTION_18_4(*v158, v158[1], xmmword_231E16E20);
    *(v1 + 1688) = 0;
    *(v1 + 1696) = 1;
    OUTLINED_FUNCTION_1_6((v1 + 1704));
    OUTLINED_FUNCTION_53_2();
    v69 = (v1 + 400);
    goto LABEL_44;
  }

LABEL_32:
  OUTLINED_FUNCTION_99_0(v88);
  v109 = sub_231D12978();
  OUTLINED_FUNCTION_144_0(v110, v109);
  v111 = OUTLINED_FUNCTION_140_0();
  (v39)(v111);
  sub_231D4F2E8(v35, v12, v7, v112, v113, v114);
  v7 = *(v1 + 2176);
  v130 = v129;
  v131 = OUTLINED_FUNCTION_90_0();
  (v39)(v131);

  if ((v130 & 1) == 0)
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_12_4();
  v132 = *(v1 + 2264);
  OUTLINED_FUNCTION_46_1();
  v133 = OUTLINED_FUNCTION_11_5();
  (v35)(v133);

  v91 = v132;
  v134 = sub_231E10E10();
  sub_231E11AF0();
  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_63_0();
  if (v135)
  {
    OUTLINED_FUNCTION_47_1();
    OUTLINED_FUNCTION_17_1();
    OUTLINED_FUNCTION_160();
    *v35 = 136446210;
    v136 = sub_231DDB1E8();
    OUTLINED_FUNCTION_145_0(v136, v137, v138, v139, v140, v141, v142, v143, v161, v162, v163, v164, v165, v169, v172, v173, v175, v178, v91);
    OUTLINED_FUNCTION_87_0();
    *(v35 + 4) = v40;
    OUTLINED_FUNCTION_3_7();
    _os_log_impl(v144, v145, v146, v147, v148, 0xCu);
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_11();

    v149 = OUTLINED_FUNCTION_9_4();
    v182(v149);
  }

  else
  {

    v159 = OUTLINED_FUNCTION_9_4();
    v91(v159);
  }

  OUTLINED_FUNCTION_113_1();
  OUTLINED_FUNCTION_112_0();
  OUTLINED_FUNCTION_43_3(v160, v1 + 2048);
  OUTLINED_FUNCTION_18_4(*v134, v134[1], xmmword_231E16E30);
  *(v1 + 1496) = 0;
  *(v1 + 1504) = 0;
  OUTLINED_FUNCTION_1_6((v1 + 1512));
  OUTLINED_FUNCTION_52_2();
  v69 = (v1 + 528);
LABEL_44:
  v70 = v91;
LABEL_19:
  memcpy(v70, v69, 0x80uLL);
  OUTLINED_FUNCTION_0_10();

  OUTLINED_FUNCTION_14_0();

  return v71();
}

uint64_t sub_231CEEEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_166();
  v21 = OUTLINED_FUNCTION_156_1();
  v22(v21);
  OUTLINED_FUNCTION_42_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD744F8, &qword_231E16F08);
  OUTLINED_FUNCTION_155_1();
  OUTLINED_FUNCTION_7_4();
  v23 = OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_89_0(v23, xmmword_231E138E0);
  sub_231E10A30();
  OUTLINED_FUNCTION_6_0();
  v24 = OUTLINED_FUNCTION_136_0();
  v25(v24);
  OUTLINED_FUNCTION_85_0();
  OUTLINED_FUNCTION_86_0();
  swift_setDeallocating();
  sub_231CF0D6C();
  *(v20 + 1592) = 0;
  *(v20 + 1600) = 1;
  OUTLINED_FUNCTION_1_6((v20 + 1608));
  OUTLINED_FUNCTION_13_4();
  v26 = OUTLINED_FUNCTION_161();
  memcpy(v26, v27, 0x80uLL);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_78_0();

  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_95_1();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_231CEF088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_166();

  OUTLINED_FUNCTION_42_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD744F8, &qword_231E16F08);
  OUTLINED_FUNCTION_155_1();
  OUTLINED_FUNCTION_7_4();
  v21 = OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_89_0(v21, xmmword_231E138E0);
  sub_231E10A30();
  OUTLINED_FUNCTION_6_0();
  v22 = OUTLINED_FUNCTION_136_0();
  v23(v22);
  OUTLINED_FUNCTION_85_0();
  OUTLINED_FUNCTION_86_0();
  swift_setDeallocating();
  sub_231CF0D6C();
  *(v20 + 1592) = 0;
  *(v20 + 1600) = 1;
  OUTLINED_FUNCTION_1_6((v20 + 1608));
  OUTLINED_FUNCTION_13_4();
  v24 = OUTLINED_FUNCTION_161();
  memcpy(v24, v25, 0x80uLL);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_78_0();

  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_95_1();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_231CEF250(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_231E11700();
    v3 = sub_231E117C0();

    return v3;
  }

  return result;
}

uint64_t sub_231CEF310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 172) = v15;
  *(v8 + 136) = v14;
  *(v8 + 144) = v16;
  *(v8 + 120) = v13;
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a5;
  *(v8 + 96) = a6;
  *(v8 + 72) = a3;
  *(v8 + 80) = a4;
  *(v8 + 64) = a2;
  v9 = OUTLINED_FUNCTION_10();
  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_231CEF364()
{
  OUTLINED_FUNCTION_50_0();
  v1 = v0[14];
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  v0[19] = *(v1 + 8);

  v2 = swift_task_alloc();
  v0[20] = v2;
  *v2 = v0;
  v2[1] = sub_231CEF458;
  OUTLINED_FUNCTION_121_0();

  return sub_231CE9B24();
}

uint64_t sub_231CEF458()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_15();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  *(v5 + 168) = v6;

  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231CEF558()
{
  OUTLINED_FUNCTION_18();
  v2 = *(v1 + 168);
  OUTLINED_FUNCTION_146_0();
  *v0 = v2;
  OUTLINED_FUNCTION_14_0();

  return v3();
}

uint64_t sub_231CEF5B4()
{
  OUTLINED_FUNCTION_18();
  v1[20] = v2;
  v1[21] = v0;
  v1[18] = v3;
  v1[19] = v4;
  v5 = sub_231E10E30();
  v1[22] = v5;
  OUTLINED_FUNCTION_6(v5);
  v1[23] = v6;
  v1[24] = OUTLINED_FUNCTION_55();
  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231CEF65C()
{
  OUTLINED_FUNCTION_57_0();
  v22 = v0;
  sub_231DC4B64();
  v3 = OUTLINED_FUNCTION_32_2();
  v4(v3);

  v5 = sub_231E10E10();
  sub_231E11AF0();
  OUTLINED_FUNCTION_116_0();
  if (OUTLINED_FUNCTION_91_0())
  {
    OUTLINED_FUNCTION_9_1();
    v21 = OUTLINED_FUNCTION_17_1();
    *v1 = 136446210;
    v6 = sub_231DDB1E8();
    sub_231CB5000(v6, v7, &v21);
    OUTLINED_FUNCTION_87_0();
    *(v1 + 4) = v2;
    OUTLINED_FUNCTION_3_7();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_11();
  }

  v13 = OUTLINED_FUNCTION_33();
  v14(v13);
  v15 = *(v0 + 152);
  v16 = swift_task_alloc();
  *(v0 + 200) = v16;
  *(v16 + 16) = *(v0 + 160);
  *(v16 + 32) = v15;
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v0 + 208) = v17;
  *v17 = v18;
  v17[1] = sub_231CEF7FC;
  OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_44();

  return sub_231DDB61C();
}

void sub_231CEF7FC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;

  if (v0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_31();

    MEMORY[0x2822009F8](v4, v5, v6);
  }
}

uint64_t sub_231CEF90C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_178(*(v0 + 144));

  OUTLINED_FUNCTION_19();

  return v1();
}

uint64_t sub_231CEF978()
{
  OUTLINED_FUNCTION_18();
  v0[112] = v1;
  v0[111] = v2;
  v0[110] = v3;
  v0[109] = v4;
  v5 = sub_231E10400();
  v0[113] = v5;
  OUTLINED_FUNCTION_6(v5);
  v0[114] = v6;
  v0[115] = OUTLINED_FUNCTION_55();
  v7 = sub_231E10E30();
  v0[116] = v7;
  OUTLINED_FUNCTION_6(v7);
  v0[117] = v8;
  v0[118] = OUTLINED_FUNCTION_69();
  v0[119] = swift_task_alloc();
  v0[120] = swift_task_alloc();
  v0[121] = swift_task_alloc();
  v0[122] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_231CEFAA4()
{
  sub_231CC8780();
  OUTLINED_FUNCTION_8_1();
  if (!v2)
  {
    sub_231DC4B64();
    v8 = OUTLINED_FUNCTION_73_0();
    v9(v8);

    v10 = sub_231E10E10();
    sub_231E11AF0();
    OUTLINED_FUNCTION_148_0();
    v11 = OUTLINED_FUNCTION_176();
    v12 = v0[117];
    v13 = v0[116];
    if (v11)
    {
      v30 = v0[122];
      swift_slowAlloc();
      OUTLINED_FUNCTION_28();
      *v1 = 136446466;
      v14 = sub_231DDB1E8();
      OUTLINED_FUNCTION_175(v14, v15, v16, v17, v18, v19);
      OUTLINED_FUNCTION_117_0();
      OUTLINED_FUNCTION_41_2();
      OUTLINED_FUNCTION_67_1();
      _os_log_impl(v20, v21, v22, v23, v24, 0x12u);
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_14();

      (*(v12 + 8))(v30, v13);
    }

    else
    {

      v25 = OUTLINED_FUNCTION_126_0();
      v26(v25);
    }

    v0[75] = 0;
    v0[76] = 1;
    OUTLINED_FUNCTION_1_6(v0 + 77);
    OUTLINED_FUNCTION_101_0(v0 + 75, (v0 + 34));
    v27 = OUTLINED_FUNCTION_8_5();
    memcpy(v27, v0 + 34, 0x80uLL);

    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_35();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_74_0();
  OUTLINED_FUNCTION_164();
  v0[123] = v3;
  OUTLINED_FUNCTION_34_2();
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  v0[124] = v4;
  *v4 = v5;
  v4[1] = sub_231CEFD60;
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_35();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_231CEFD60()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_15();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 1000) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231CEFE64()
{
  v4 = *(v0 + 400);
  *(v0 + 1080) = v4;
  v5 = sub_231CC886C();
  if ((v5 & 0x100000000) != 0)
  {
    v6 = 0.478;
  }

  else
  {
    v6 = *&v5;
    sub_231DC4B64();
    v7 = OUTLINED_FUNCTION_32_2();
    v8(v7);

    v9 = sub_231E10E10();
    sub_231E11AF0();
    OUTLINED_FUNCTION_116_0();
    v10 = OUTLINED_FUNCTION_91_0();
    v11 = *(v0 + 936);
    if (v10)
    {
      OUTLINED_FUNCTION_98_0();
      OUTLINED_FUNCTION_17_1();
      OUTLINED_FUNCTION_111_0();
      *v1 = 136446466;
      v12 = sub_231DDB1E8();
      OUTLINED_FUNCTION_118_1(v12, v13, v14, v15, v16, v17, v18, v19, v94, v96, v98, v99, v101, v103, v105, v108, v111, v115);
      OUTLINED_FUNCTION_87_0();
      OUTLINED_FUNCTION_131_0();
      OUTLINED_FUNCTION_3_7();
      _os_log_impl(v20, v21, v22, v23, v24, 0x16u);
      OUTLINED_FUNCTION_2_6();
      OUTLINED_FUNCTION_11();
    }

    v3 = v11 + 8;
    v25 = OUTLINED_FUNCTION_33();
    v26(v25);
  }

  *(v0 + 1084) = v6;
  v27 = *(v0 + 960);
  v28 = *(v0 + 936);
  v29 = sub_231DC4B64();
  *(v0 + 1008) = v29;
  v30 = *(v28 + 16);
  *(v0 + 1016) = v30;
  *(v0 + 1024) = (v28 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v112 = v30;
  v116 = v29;
  v30(v27);

  v31 = sub_231E10E10();
  sub_231E11AF0();

  v32 = OUTLINED_FUNCTION_177();
  v33 = *(v0 + 960);
  v34 = *(v0 + 936);
  v35 = *(v0 + 928);
  if (v32)
  {
    LODWORD(v105) = v6 < v4;
    OUTLINED_FUNCTION_141_0();
    OUTLINED_FUNCTION_28();
    *v2 = 136446722;
    v36 = sub_231DDB1E8();
    OUTLINED_FUNCTION_118_1(v36, v37, v38, v39, v40, v41, v42, v43, v94, v96, v98, v99, v101, v103, v105, v33, v112, v116);
    OUTLINED_FUNCTION_117_0();
    *(v2 + 4) = v3;
    *(v2 + 12) = 1024;
    *(v2 + 14) = v106;
    *(v2 + 18) = 2048;
    *(v2 + 20) = v4;
    OUTLINED_FUNCTION_66_1();
    _os_log_impl(v44, v45, v46, v47, v48, 0x1Cu);
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_14();

    v49 = *(v34 + 8);
    v49(v109, v35);
  }

  else
  {

    v49 = *(v34 + 8);
    v49(v33, v35);
  }

  *(v0 + 1032) = v49;
  *(v0 + 816) = &unk_2846F07A0;
  v50 = sub_231CC7270();
  v51 = OUTLINED_FUNCTION_167(v50);
  __swift_destroy_boxed_opaque_existential_0((v0 + 792));
  if (v51)
  {
    v52 = sub_231E10580();
    *(v0 + 1040) = v53;
    if (v53)
    {
      v54 = v52;
      v55 = v53;
      v56 = [objc_opt_self() sentenceEmbeddingForLanguage_];
      *(v0 + 1048) = v56;
      if (v56)
      {
        v57 = v56;
        v107 = v0 + 856;
        v110 = v54;
        v104 = v0 + 1080;
        v58 = *(v0 + 920);
        v59 = *(v0 + 912);
        v60 = *(v0 + 904);
        sub_231E104F0();
        v61 = sub_231E103E0();
        v100 = v62;
        v102 = v61;
        *(v0 + 1056) = v62;
        (*(v59 + 8))(v58, v60);
        v63 = sub_231E10640();
        v65 = v64;
        *(v0 + 856) = v63;
        *(v0 + 864) = v64;

        v66 = sub_231E116F0();

        if (sub_231D12FF8() < v66)
        {
          v112(*(v0 + 952), v116, *(v0 + 928));

          v67 = sub_231E10E10();
          v68 = sub_231E11AF0();

          LODWORD(v116) = v68;
          v69 = os_log_type_enabled(v67, v68);
          v70 = *(v0 + 952);
          v71 = *(v0 + 936);
          v72 = *(v0 + 928);
          if (v69)
          {
            v113 = *(v0 + 952);
            OUTLINED_FUNCTION_98_0();
            v118 = OUTLINED_FUNCTION_28();
            *v71 = 136446466;
            v73 = sub_231DDB1E8();
            v81 = OUTLINED_FUNCTION_118_1(v73, v74, v75, v76, v77, v78, v79, v80, v118, v96, v71, v100, v102, v104, v107, v110, v113, v116);
            v97 = v72;
            v82 = v81;

            *(v71 + 4) = v82;
            *(v71 + 12) = 2048;
            *(v71 + 14) = sub_231D12FF8();
            OUTLINED_FUNCTION_142_0(&dword_231CAE000, v67, v117, "%{public}s Truncating notification body content to %ld characters");
            __swift_destroy_boxed_opaque_existential_0(v95);
            OUTLINED_FUNCTION_30();
            OUTLINED_FUNCTION_14();

            v83 = v97;
            v84 = v114;
          }

          else
          {

            v84 = v70;
            v83 = v72;
          }

          v49(v84, v83);

          v88 = sub_231D12FF8();
          v89 = sub_231CEF250(v88, v63, v65);
          MEMORY[0x23837CBB0](v89);
          OUTLINED_FUNCTION_149_0();

          *(v0 + 856) = v63;
          *(v0 + 864) = v67;
        }

        v90 = *(v0 + 888);
        v91 = *(v0 + 880);
        v92 = swift_task_alloc();
        *(v0 + 1064) = v92;
        v92[2] = v104;
        v92[3] = v90;
        v92[4] = v110;
        v92[5] = v55;
        v92[6] = v107;
        v92[7] = v57;
        v92[8] = v102;
        v92[9] = v100;
        v92[10] = v91;
        v93 = swift_task_alloc();
        *(v0 + 1072) = v93;
        *v93 = v0;
        v93[1] = sub_231CF046C;
        OUTLINED_FUNCTION_28_1();

        return sub_231DDB61C();
      }
    }
  }

  OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_22_3();
  v85 = OUTLINED_FUNCTION_8_5();
  OUTLINED_FUNCTION_173(v85);

  OUTLINED_FUNCTION_14_0();

  return v86();
}

uint64_t sub_231CF046C()
{
  OUTLINED_FUNCTION_29();
  v2 = *v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  *v3 = *v1;

  if (v0)
  {
  }

  else
  {

    OUTLINED_FUNCTION_31();

    return MEMORY[0x2822009F8](v5, v6, v7);
  }
}

uint64_t sub_231CF05C4()
{
  v1 = *(v0 + 1016);
  v2 = *(v0 + 1084);
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  v3 = *(v0 + 1080);
  v4 = OUTLINED_FUNCTION_11_5();
  v1(v4);

  v5 = sub_231E10E10();
  sub_231E11AF0();
  OUTLINED_FUNCTION_105_0();
  v6 = OUTLINED_FUNCTION_91_0();
  v7 = *(v0 + 1048);
  v8 = *(v0 + 1032);
  v9 = *(v0 + 944);
  v10 = *(v0 + 928);
  if (v6)
  {
    HIDWORD(v38) = v2 < v3;
    OUTLINED_FUNCTION_141_0();
    OUTLINED_FUNCTION_17_1();
    *v9 = 136446722;
    v11 = sub_231DDB1E8();
    OUTLINED_FUNCTION_174(v11, v12, v13, v14, v15, v16, v17, v18, v36, v38);
    v19 = OUTLINED_FUNCTION_87_0();
    OUTLINED_FUNCTION_20_4(v19, v20, v21, v22, v23, v24, v25, v26, v37, v39, v40);
    *(v9 + 20) = v3;
    OUTLINED_FUNCTION_3_7();
    _os_log_impl(v27, v28, v29, v30, v31, 0x1Cu);
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_11();

    v8(v9, v10);
  }

  else
  {

    v32 = OUTLINED_FUNCTION_127_0();
    (v8)(v32);
  }

  OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_22_3();
  v33 = OUTLINED_FUNCTION_8_5();
  OUTLINED_FUNCTION_173(v33);

  OUTLINED_FUNCTION_14_0();

  return v34();
}