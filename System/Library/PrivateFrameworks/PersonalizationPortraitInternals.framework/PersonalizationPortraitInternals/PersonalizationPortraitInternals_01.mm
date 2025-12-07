uint64_t sub_232268638()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_59();
  v1 = *v0;
  OUTLINED_FUNCTION_19();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_51_0();
  v4(v3);
  v5 = OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_232268784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_92();
  if (!v12)
  {
    v29 = *(v10 + 176);
LABEL_7:
    *(v10 + 184) = v11;
    OUTLINED_FUNCTION_12_0();
    v29();
    v30 = swift_task_alloc();
    *(v10 + 192) = v30;
    *v30 = v10;
    v30[1] = sub_232268638;
    OUTLINED_FUNCTION_24_0();
    OUTLINED_FUNCTION_36_0();

    return sub_2322602B4();
  }

  v13 = *(v10 + 152);
  v14 = *(v10 + 136);
  swift_getKeyPath();
  v15 = OUTLINED_FUNCTION_17_0();
  v19 = sub_23226AEDC(v15, v16, v17, v18);
  *(v10 + 144) = v19;
  *(v10 + 152) = v13;

  if (v13)
  {
    goto LABEL_4;
  }

  v32 = *(v19 + 2);
  *(v10 + 160) = v32;
  if (v32)
  {
    v33 = *(v10 + 112);
    *(v10 + 424) = *(v33 + 80);
    *(v10 + 168) = *(v33 + 72);
    v29 = *(v33 + 16);
    *(v10 + 176) = v29;

    v11 = 0;
    goto LABEL_7;
  }

  if (qword_2814C7F18 != -1)
  {
    OUTLINED_FUNCTION_9_0(&qword_2814C7F18);
  }

  v34 = sub_232400DB8();
  *(v10 + 200) = v34;
  OUTLINED_FUNCTION_34_0();
  *(v10 + 208) = sub_23226E3A0(v35, v36, MEMORY[0x277D20398]);
  swift_getKeyPath();
  v37 = OUTLINED_FUNCTION_2_2();
  v41 = sub_23226B5A8(v37, v38, v39, v40);
  *(v10 + 216) = v41;
  *(v10 + 224) = v34;

  if (v34)
  {
    goto LABEL_4;
  }

  v42 = *(v41 + 2);
  *(v10 + 232) = v42;
  if (v42)
  {
    OUTLINED_FUNCTION_38_0();
    *(v10 + 428) = v43;
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_80_0(v44);
    v45 = OUTLINED_FUNCTION_14_0();
    v14(v45);
    v46 = swift_task_alloc();
    *(v10 + 264) = v46;
    *v46 = v10;
    OUTLINED_FUNCTION_8_0(v46);
    OUTLINED_FUNCTION_36_0();

    return sub_23226118C();
  }

  if (qword_2814C7F38 != -1)
  {
    OUTLINED_FUNCTION_9_0(&qword_2814C7F38);
  }

  v48 = sub_232400DC8();
  *(v10 + 272) = v48;
  OUTLINED_FUNCTION_11_0();
  v51 = sub_23226E3A0(v49, v50, MEMORY[0x277D203C8]);
  OUTLINED_FUNCTION_66_0(v51);
  swift_getKeyPath();
  v52 = OUTLINED_FUNCTION_2_2();
  v56 = sub_23226BC74(v52, v53, v54, v55);
  OUTLINED_FUNCTION_79_0(v56);
  if (v48)
  {
LABEL_4:
    OUTLINED_FUNCTION_31_0();

    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_36_0();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
  }

  OUTLINED_FUNCTION_86_0();
  if (v57)
  {
    OUTLINED_FUNCTION_38_0();
    *(v10 + 432) = v58;
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_42_0(v59);
    v60 = OUTLINED_FUNCTION_14_0();
    v14(v60);
    v61 = swift_task_alloc();
    v62 = OUTLINED_FUNCTION_89(v61);
    *v62 = v63;
    OUTLINED_FUNCTION_4_2(v62);
    OUTLINED_FUNCTION_36_0();

    return sub_232261884();
  }

  else
  {

    if (qword_2814C7F20 != -1)
    {
      OUTLINED_FUNCTION_9_0(&qword_2814C7F20);
    }

    v65 = sub_232400DE8();
    OUTLINED_FUNCTION_93(v65);
    OUTLINED_FUNCTION_5_0();
    v68 = sub_23226E3A0(v66, v67, MEMORY[0x277D203F8]);
    OUTLINED_FUNCTION_49_0(v68);
    swift_getKeyPath();
    v69 = OUTLINED_FUNCTION_2_2();
    v73 = sub_23226C340(v69, v70, v71, v72);
    OUTLINED_FUNCTION_60_0(v73);
    OUTLINED_FUNCTION_73_0();
    if (v74)
    {
      OUTLINED_FUNCTION_38_0();
      *(v10 + 436) = v75;
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_27_0(v76);
      v77 = OUTLINED_FUNCTION_14_0();
      v14(v77);
      v78 = swift_task_alloc();
      v79 = OUTLINED_FUNCTION_74_0(v78);
      *v79 = v80;
      OUTLINED_FUNCTION_1_3(v79);
      OUTLINED_FUNCTION_36_0();

      return sub_232261F20();
    }

    else
    {

      v82 = swift_task_alloc();
      v83 = OUTLINED_FUNCTION_75_0(v82);
      *v83 = v84;
      OUTLINED_FUNCTION_3_2(v83);
      OUTLINED_FUNCTION_36_0();

      return sub_232260BE4(v85);
    }
  }
}

uint64_t sub_232268C58()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_59();
  v1 = *v0;
  OUTLINED_FUNCTION_19();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_51_0();
  v4(v3);
  v5 = OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_232268DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_92();
  if (!v12)
  {
    v29 = *(v10 + 248);
LABEL_7:
    *(v10 + 256) = v11;
    OUTLINED_FUNCTION_12_0();
    v29();
    v30 = swift_task_alloc();
    *(v10 + 264) = v30;
    *v30 = v10;
    OUTLINED_FUNCTION_8_0(v30);
    OUTLINED_FUNCTION_36_0();

    return sub_23226118C();
  }

  v13 = *(v10 + 224);
  v14 = *(v10 + 208);
  swift_getKeyPath();
  v15 = OUTLINED_FUNCTION_17_0();
  v19 = sub_23226B5A8(v15, v16, v17, v18);
  *(v10 + 216) = v19;
  *(v10 + 224) = v13;

  if (v13)
  {
    goto LABEL_4;
  }

  v32 = *(v19 + 2);
  *(v10 + 232) = v32;
  if (v32)
  {
    v33 = *(v10 + 88);
    *(v10 + 428) = *(v33 + 80);
    *(v10 + 240) = *(v33 + 72);
    v29 = *(v33 + 16);
    *(v10 + 248) = v29;

    v11 = 0;
    goto LABEL_7;
  }

  if (qword_2814C7F38 != -1)
  {
    OUTLINED_FUNCTION_9_0(&qword_2814C7F38);
  }

  v34 = sub_232400DC8();
  *(v10 + 272) = v34;
  OUTLINED_FUNCTION_11_0();
  v37 = sub_23226E3A0(v35, v36, MEMORY[0x277D203C8]);
  OUTLINED_FUNCTION_66_0(v37);
  swift_getKeyPath();
  v38 = OUTLINED_FUNCTION_2_2();
  v42 = sub_23226BC74(v38, v39, v40, v41);
  OUTLINED_FUNCTION_79_0(v42);
  if (v34)
  {
LABEL_4:
    OUTLINED_FUNCTION_31_0();

    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_36_0();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
  }

  else
  {
    OUTLINED_FUNCTION_86_0();
    if (v43)
    {
      OUTLINED_FUNCTION_38_0();
      *(v10 + 432) = v44;
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_42_0(v45);
      v46 = OUTLINED_FUNCTION_14_0();
      v14(v46);
      v47 = swift_task_alloc();
      v48 = OUTLINED_FUNCTION_89(v47);
      *v48 = v49;
      OUTLINED_FUNCTION_4_2(v48);
      OUTLINED_FUNCTION_36_0();

      return sub_232261884();
    }

    else
    {

      if (qword_2814C7F20 != -1)
      {
        OUTLINED_FUNCTION_9_0(&qword_2814C7F20);
      }

      v51 = sub_232400DE8();
      OUTLINED_FUNCTION_93(v51);
      OUTLINED_FUNCTION_5_0();
      v54 = sub_23226E3A0(v52, v53, MEMORY[0x277D203F8]);
      OUTLINED_FUNCTION_49_0(v54);
      swift_getKeyPath();
      v55 = OUTLINED_FUNCTION_2_2();
      v59 = sub_23226C340(v55, v56, v57, v58);
      OUTLINED_FUNCTION_60_0(v59);
      OUTLINED_FUNCTION_73_0();
      if (v60)
      {
        OUTLINED_FUNCTION_38_0();
        *(v10 + 436) = v61;
        OUTLINED_FUNCTION_7_0();
        OUTLINED_FUNCTION_27_0(v62);
        v63 = OUTLINED_FUNCTION_14_0();
        v14(v63);
        v64 = swift_task_alloc();
        v65 = OUTLINED_FUNCTION_74_0(v64);
        *v65 = v66;
        OUTLINED_FUNCTION_1_3(v65);
        OUTLINED_FUNCTION_36_0();

        return sub_232261F20();
      }

      else
      {

        v68 = swift_task_alloc();
        v69 = OUTLINED_FUNCTION_75_0(v68);
        *v69 = v70;
        OUTLINED_FUNCTION_3_2(v69);
        OUTLINED_FUNCTION_36_0();

        return sub_232260BE4(v71);
      }
    }
  }
}

uint64_t sub_232269148()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_59();
  v1 = *v0;
  OUTLINED_FUNCTION_19();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_51_0();
  v4(v3);
  v5 = OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_232269294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_92();
  if (!v12)
  {
    v28 = *(v10 + 320);
LABEL_7:
    *(v10 + 328) = v11;
    OUTLINED_FUNCTION_12_0();
    v28();
    v29 = swift_task_alloc();
    v30 = OUTLINED_FUNCTION_89(v29);
    *v30 = v31;
    OUTLINED_FUNCTION_4_2(v30);
    OUTLINED_FUNCTION_36_0();

    return sub_232261884();
  }

  v13 = *(v10 + 296);
  v14 = *(v10 + 280);
  swift_getKeyPath();
  v15 = OUTLINED_FUNCTION_17_0();
  *(v10 + 288) = sub_23226BC74(v15, v16, v17, v18);
  *(v10 + 296) = v13;

  if (v13)
  {
    OUTLINED_FUNCTION_31_0();

    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_36_0();

    return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
  }

  else
  {
    OUTLINED_FUNCTION_86_0();
    if (v33)
    {
      v34 = *(v10 + 64);
      *(v10 + 432) = *(v34 + 80);
      *(v10 + 312) = *(v34 + 72);
      v28 = *(v34 + 16);
      *(v10 + 320) = v28;

      v11 = 0;
      goto LABEL_7;
    }

    if (qword_2814C7F20 != -1)
    {
      OUTLINED_FUNCTION_9_0(&qword_2814C7F20);
    }

    v35 = sub_232400DE8();
    OUTLINED_FUNCTION_93(v35);
    OUTLINED_FUNCTION_5_0();
    v38 = sub_23226E3A0(v36, v37, MEMORY[0x277D203F8]);
    OUTLINED_FUNCTION_49_0(v38);
    swift_getKeyPath();
    v39 = OUTLINED_FUNCTION_2_2();
    v43 = sub_23226C340(v39, v40, v41, v42);
    OUTLINED_FUNCTION_60_0(v43);
    OUTLINED_FUNCTION_73_0();
    if (v44)
    {
      OUTLINED_FUNCTION_38_0();
      *(v10 + 436) = v45;
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_27_0(v46);
      v47 = OUTLINED_FUNCTION_14_0();
      v14(v47);
      v48 = swift_task_alloc();
      v49 = OUTLINED_FUNCTION_74_0(v48);
      *v49 = v50;
      OUTLINED_FUNCTION_1_3(v49);
      OUTLINED_FUNCTION_36_0();

      return sub_232261F20();
    }

    else
    {

      v52 = swift_task_alloc();
      v53 = OUTLINED_FUNCTION_75_0(v52);
      *v53 = v54;
      OUTLINED_FUNCTION_3_2(v53);
      OUTLINED_FUNCTION_36_0();

      return sub_232260BE4(v55);
    }
  }
}

uint64_t sub_232269540()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_59();
  v1 = *v0;
  OUTLINED_FUNCTION_19();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_51_0();
  v4(v3);
  v5 = OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23226968C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_92();
  if (!v12)
  {
    v27 = *(v10 + 392);
LABEL_7:
    *(v10 + 400) = v11;
    OUTLINED_FUNCTION_12_0();
    v27();
    v28 = swift_task_alloc();
    v29 = OUTLINED_FUNCTION_74_0(v28);
    *v29 = v30;
    OUTLINED_FUNCTION_1_3(v29);
    OUTLINED_FUNCTION_36_0();

    return sub_232261F20();
  }

  v13 = *(v10 + 368);
  swift_getKeyPath();
  v14 = OUTLINED_FUNCTION_17_0();
  *(v10 + 360) = sub_23226C340(v14, v15, v16, v17);
  *(v10 + 368) = v13;

  if (v13)
  {
    OUTLINED_FUNCTION_31_0();

    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_36_0();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
  }

  else
  {
    OUTLINED_FUNCTION_73_0();
    if (v32)
    {
      v33 = *(v10 + 40);
      *(v10 + 436) = *(v33 + 80);
      *(v10 + 384) = *(v33 + 72);
      v27 = *(v33 + 16);
      *(v10 + 392) = v27;

      v11 = 0;
      goto LABEL_7;
    }

    v34 = swift_task_alloc();
    v35 = OUTLINED_FUNCTION_75_0(v34);
    *v35 = v36;
    OUTLINED_FUNCTION_3_2(v35);
    OUTLINED_FUNCTION_36_0();

    return sub_232260BE4(v37);
  }
}

uint64_t sub_23226984C()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_59();
  v1 = *v0;
  OUTLINED_FUNCTION_19();
  *v2 = v1;

  OUTLINED_FUNCTION_15();

  return v3();
}

uint64_t sub_2322699A8()
{
  OUTLINED_FUNCTION_12();
  v1[8] = v0;
  v1[9] = *v0;
  v2 = sub_232400C98();
  v1[10] = v2;
  OUTLINED_FUNCTION_2_0(v2);
  v1[11] = v3;
  v1[12] = OUTLINED_FUNCTION_61();
  v1[13] = swift_task_alloc();
  v4 = sub_232401128();
  v1[14] = v4;
  OUTLINED_FUNCTION_2_0(v4);
  v1[15] = v5;
  v1[16] = OUTLINED_FUNCTION_61();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_232269B08()
{
  OUTLINED_FUNCTION_87_0();
  v1 = v0[8];
  v2 = *(v1 + 112);
  if (!v2)
  {
    *(v1 + 112) = sub_232267664();

    v2 = *(v1 + 112);
    if (!v2)
    {
      if (qword_2814C7F00 != -1)
      {
        OUTLINED_FUNCTION_0_4(&qword_2814C7F00);
      }

      __swift_project_value_buffer(v0[14], qword_2814C8D98);
      v56 = OUTLINED_FUNCTION_23_0();
      v57(v56);
      v58 = sub_232401108();
      v59 = sub_232401348();
      if (OUTLINED_FUNCTION_59_0(v59))
      {
        *OUTLINED_FUNCTION_57_0() = 0;
        OUTLINED_FUNCTION_58_0(&dword_23224A000, v60, v61, "PPTextUnderstandingObserver: failed to create importer.");
        OUTLINED_FUNCTION_52_0();
      }

      v62 = OUTLINED_FUNCTION_47();
      v63(v62);
LABEL_28:
      OUTLINED_FUNCTION_25_0();

      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_70_0();

      __asm { BRAA            X1, X16 }
    }

    v1 = v0[8];
  }

  v0[22] = v2;
  v3 = OBJC_IVAR____TtC32PersonalizationPortraitInternals25TextUnderstandingObserver_delayedDeletionNotificationInProgress;
  if (*(v1 + OBJC_IVAR____TtC32PersonalizationPortraitInternals25TextUnderstandingObserver_delayedDeletionNotificationInProgress) == 1)
  {
    v4 = qword_2814C7F00;

    if (v4 != -1)
    {
      v5 = OUTLINED_FUNCTION_0_4(&qword_2814C7F00);
    }

    v6 = OUTLINED_FUNCTION_16_0(v5, qword_2814C8D98);
    v7(v6);
    v8 = sub_232401108();
    v9 = sub_232401338();
    if (OUTLINED_FUNCTION_59_0(v9))
    {
      *OUTLINED_FUNCTION_57_0() = 0;
      OUTLINED_FUNCTION_96(&dword_23224A000, v10, v11, "PPTextUnderstandingObserver: delayedDeletionNotificationInProgress = true");
      OUTLINED_FUNCTION_54();
    }

    v12 = OUTLINED_FUNCTION_37_0();
    v13(v12);
    goto LABEL_28;
  }

  v14 = v0[13];
  v15 = v0[10];
  v16 = v0[11];

  sub_232400C78();
  OUTLINED_FUNCTION_81_0();
  v17 = OUTLINED_FUNCTION_72_0();
  v18(v17);
  sub_232400C58();
  v20 = v19;
  v21 = *(v16 + 8);
  v22 = OUTLINED_FUNCTION_37_0();
  v21(v22);
  v23 = (v21)(v14, v15);
  if (v20 < 2.0)
  {
    if (qword_2814C7F00 != -1)
    {
      v23 = OUTLINED_FUNCTION_0_4(&qword_2814C7F00);
    }

    v24 = OUTLINED_FUNCTION_16_0(v23, qword_2814C8D98);
    v25(v24);
    v26 = sub_232401108();
    v27 = sub_232401338();
    if (OUTLINED_FUNCTION_53_0(v27))
    {
      v28 = OUTLINED_FUNCTION_57_0();
      OUTLINED_FUNCTION_64_0(v28);
      OUTLINED_FUNCTION_19_0();
      _os_log_impl(v29, v30, v31, v32, v33, 2u);
      OUTLINED_FUNCTION_30();
    }

    v34 = v0[8];
    v35 = v0[9];

    v36 = OUTLINED_FUNCTION_37_0();
    v37(v36);
    *(v1 + v3) = 1;
    v38 = swift_allocObject();
    *(v38 + 16) = v34;
    *(v38 + 24) = v35;

    sub_232400D18();

    goto LABEL_28;
  }

  if (qword_2814C7F00 != -1)
  {
    v23 = OUTLINED_FUNCTION_0_4(&qword_2814C7F00);
  }

  v39 = OUTLINED_FUNCTION_28_0(v23, qword_2814C8D98);
  v40 = OUTLINED_FUNCTION_55_0(v39);
  v41(v40);
  v42 = sub_232401108();
  v43 = sub_232401328();
  if (OUTLINED_FUNCTION_53_0(v43))
  {
    v44 = OUTLINED_FUNCTION_57_0();
    OUTLINED_FUNCTION_64_0(v44);
    OUTLINED_FUNCTION_19_0();
    _os_log_impl(v45, v46, v47, v48, v49, 2u);
    OUTLINED_FUNCTION_30();
  }

  v50 = v0[15];

  v0[27] = *(v50 + 8);
  v51 = OUTLINED_FUNCTION_37_0();
  v52(v51);
  v53 = swift_task_alloc();
  v0[28] = v53;
  *v53 = v0;
  v53[1] = sub_232269FD0;
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_70_0();

  return sub_23226A888();
}

uint64_t sub_232269FD0()
{
  OUTLINED_FUNCTION_22();
  v2 = *v1;
  OUTLINED_FUNCTION_31();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 232) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_23226A21C;
  }

  else
  {
    v6 = sub_23226A0F4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_23226A0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_79();
  v10 = OUTLINED_FUNCTION_76_0();
  v11(v10);
  v12 = sub_232401108();
  v13 = sub_232401328();
  if (OUTLINED_FUNCTION_59_0(v13))
  {
    v14 = OUTLINED_FUNCTION_57_0();
    OUTLINED_FUNCTION_94(v14);
    OUTLINED_FUNCTION_40_0(&dword_23224A000, v15, v16, "PPTextUnderstandingObserver: deletion handler finished");
    OUTLINED_FUNCTION_54();
  }

  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_46_0();
  v17();
  sub_232400C78();

  OUTLINED_FUNCTION_39_0();
  v18 = OUTLINED_FUNCTION_22_0();
  v19(v18);
  swift_endAccess();
  OUTLINED_FUNCTION_25_0();

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_36_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

uint64_t sub_23226A21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_79();
  v13 = OUTLINED_FUNCTION_61_0();
  v14(v13);
  v15 = v10;
  v16 = sub_232401108();
  v17 = sub_232401348();

  v18 = os_log_type_enabled(v16, v17);
  v19 = *(v11 + 232);
  if (v18)
  {
    OUTLINED_FUNCTION_97();
    v20 = OUTLINED_FUNCTION_74();
    *v12 = 138412290;
    v21 = v19;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v22;
    *v20 = v22;
    OUTLINED_FUNCTION_19_0();
    _os_log_impl(v23, v24, v25, v26, v27, 0xCu);
    sub_232257C68(v20, &qword_27DD91290, &qword_232417860);
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_30();
  }

  else
  {
  }

  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_46_0();
  v28();
  sub_232400C78();

  OUTLINED_FUNCTION_39_0();
  v29 = OUTLINED_FUNCTION_22_0();
  v30(v29);
  swift_endAccess();
  OUTLINED_FUNCTION_25_0();

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_36_0();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10);
}

uint64_t sub_23226A3BC(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_232401128();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v3 = sub_2324014D8();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23226A4E4, 0, 0);
}

uint64_t sub_23226A4E4()
{
  OUTLINED_FUNCTION_22();
  sub_232401618();
  sub_232401578();
  v1 = OUTLINED_FUNCTION_50();
  *(v0 + 80) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_45_0(v1);

  return v3(v2);
}

uint64_t sub_23226A58C()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_19();
  *v5 = v4;
  *(v6 + 88) = v0;

  v7 = OUTLINED_FUNCTION_47();
  v8(v7);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_23226A6E0()
{
  OUTLINED_FUNCTION_65_0();
  if (qword_2814C7F00 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_2814C7F00);
  }

  __swift_project_value_buffer(*(v0 + 24), qword_2814C8D98);
  v1 = OUTLINED_FUNCTION_23_0();
  v2(v1);
  v3 = sub_232401108();
  v4 = sub_232401338();
  if (OUTLINED_FUNCTION_59_0(v4))
  {
    v5 = OUTLINED_FUNCTION_57_0();
    OUTLINED_FUNCTION_94(v5);
    OUTLINED_FUNCTION_40_0(&dword_23224A000, v6, v7, "PPTextUnderstandingObserver: re-posting distributedDeletion");
    OUTLINED_FUNCTION_54();
  }

  v8 = *(v0 + 16);

  v9 = OUTLINED_FUNCTION_47();
  v10(v9);

  return MEMORY[0x2822009F8](sub_23226A7F4, v8, 0);
}

uint64_t sub_23226A7F4()
{
  OUTLINED_FUNCTION_12();
  *(*(v0 + 16) + OBJC_IVAR____TtC32PersonalizationPortraitInternals25TextUnderstandingObserver_delayedDeletionNotificationInProgress) = 0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_90(v1);
  *v2 = v3;
  v2[1] = sub_23226E3F0;
  OUTLINED_FUNCTION_24_0();

  return sub_2322699A8();
}

uint64_t sub_23226A888()
{
  OUTLINED_FUNCTION_12();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_2324010B8();
  v1[4] = v3;
  OUTLINED_FUNCTION_2_0(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_62();
  v5 = OUTLINED_FUNCTION_18();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23226A92C()
{
  OUTLINED_FUNCTION_87_0();
  if (qword_2814C7F08 != -1)
  {
    swift_once();
  }

  v1 = sub_232400DF8();
  v0[7] = v1;
  v2 = sub_23226E3A0(&qword_2814C7F70, MEMORY[0x277D20410], MEMORY[0x277D20408]);
  v3 = 0;
  v0[8] = v2;
  while (1)
  {
    v4 = v0[2];
    KeyPath = swift_getKeyPath();
    v6 = sub_23226CA0C(v1, v2, v4, KeyPath);
    v0[9] = v6;

    if (v3)
    {
    }

    v7 = *(v6 + 2);
    v0[10] = v7;
    v0[11] = 0;

    v9 = v0[9];
    if (v7)
    {
      break;
    }

    if (!*(v9 + 16))
    {

      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_71_0();

      __asm { BRAA            X1, X16 }
    }

    v1 = v0[7];
    v2 = v0[8];
    v3 = 1;
  }

  if (*(v9 + 16))
  {
    (*(v0[5] + 16))(v0[6], v9 + ((*(v0[5] + 80) + 32) & ~*(v0[5] + 80)), v0[4]);
    v10 = swift_task_alloc();
    v11 = OUTLINED_FUNCTION_90(v10);
    *v11 = v12;
    OUTLINED_FUNCTION_6_0(v11);
    OUTLINED_FUNCTION_71_0();

    return sub_23225F900();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23226AB60()
{
  OUTLINED_FUNCTION_65_0();
  OUTLINED_FUNCTION_59();
  v3 = v2;
  OUTLINED_FUNCTION_31();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v3[13] = v0;

  if (v0)
  {
    v7 = v3[3];

    v8 = OUTLINED_FUNCTION_37_0();
    v9(v8);

    v10 = sub_23226AE80;
    v11 = v7;
  }

  else
  {
    v12 = v3[3];
    (*(v3[5] + 8))(v3[6], v3[4]);
    v10 = sub_23226ACC0;
    v11 = v12;
  }

  return MEMORY[0x2822009F8](v10, v11, 0);
}

void sub_23226ACC0()
{
  OUTLINED_FUNCTION_87_0();
  v1 = v0[13];
  v2 = v0[10];
  for (i = v0[11] + 1; ; i = 0)
  {
    v0[11] = i;
    v4 = v0[9];
    if (i != v2)
    {
      break;
    }

    if (!*(v4 + 16))
    {

      OUTLINED_FUNCTION_15();
      goto LABEL_12;
    }

    v5 = v0[7];
    v6 = v0[8];
    v7 = v0[2];
    KeyPath = swift_getKeyPath();
    v9 = sub_23226CA0C(v5, v6, v7, KeyPath);
    v0[9] = v9;

    if (v1)
    {

      OUTLINED_FUNCTION_20_0();
LABEL_12:
      OUTLINED_FUNCTION_71_0();

      __asm { BRAA            X1, X16 }
    }

    v2 = *(v9 + 2);
    v0[10] = v2;
  }

  if (i >= *(v4 + 16))
  {
    __break(1u);
  }

  else
  {
    (*(v0[5] + 16))(v0[6], v4 + ((*(v0[5] + 80) + 32) & ~*(v0[5] + 80)) + *(v0[5] + 72) * i, v0[4]);
    v10 = swift_task_alloc();
    v11 = OUTLINED_FUNCTION_90(v10);
    *v11 = v12;
    OUTLINED_FUNCTION_6_0(v11);
    OUTLINED_FUNCTION_71_0();

    sub_23225F900();
  }
}

uint64_t sub_23226AE80()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_15();

  return v0();
}

char *sub_23226AEDC(uint64_t a1, char *a2, uint64_t a3, void *a4)
{
  v57 = a1;
  v58 = a2;
  v50 = *v4;
  v6 = sub_232401128();
  v52 = *(v6 - 8);
  v53 = v6;
  MEMORY[0x28223BE20](v6);
  v54 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_232400C98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TextUnderstandingBookmarks(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v56 = v15;
  *(v15 + 16) = MEMORY[0x277D84F90];
  v16 = v15 + 16;
  sub_23226EB94();
  v51 = a4;
  v17 = swift_readAtKeyPath();
  v19 = *v18;
  v17(v60, 0);
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  v21 = [objc_allocWithZone(MEMORY[0x277CF1A50]) init];
  sub_232400C28();
  v22 = sub_232400C68();
  (*(v9 + 8))(v11, v8);
  [v21 setStartDate_];

  [v21 setMaxEvents_];
  v23 = "otificationInProgress";
  v24 = v21;
  v25 = v55;
  sub_232400E18();
  if (v25)
  {
    sub_23226DADC(v14);
  }

  else
  {
    v49 = 0;
    v55 = v16;
    v48 = v24;

    v47[1] = v60[4];
    __swift_project_boxed_opaque_existential_1(v60, v60[3]);
    v26 = swift_allocObject();
    v27 = v50;
    *(v26 + 16) = v50;
    v28 = swift_allocObject();
    v28[2] = v19;
    v29 = v56;
    v28[3] = v56;
    v28[4] = v20;
    v28[5] = v27;

    sub_232401138();

    swift_beginAccess();
    v59[0] = *(v20 + 16);
    swift_setAtWritableKeyPath();
    v30 = v14;
    v31 = v29;
    if (qword_2814C7F00 != -1)
    {
      swift_once();
    }

    v32 = v53;
    v33 = __swift_project_value_buffer(v53, qword_2814C8D98);
    v34 = v52;
    v35 = v54;
    (*(v52 + 16))(v54, v33, v32);

    v36 = sub_232401108();
    v37 = sub_232401368();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v59[0] = v51;
      *v38 = 134218242;
      swift_beginAccess();
      *(v38 + 4) = *(*(v31 + 16) + 16);

      *(v38 + 12) = 2080;
      LODWORD(v50) = v37;
      v39 = sub_232400E08();
      v40 = [v39 streamIdentifier];

      v41 = sub_232401178();
      v58 = v30;
      v43 = v42;

      v44 = sub_23224ED04(v41, v43, v59);

      *(v38 + 14) = v44;
      _os_log_impl(&dword_23224A000, v36, v50, "PPTextUnderstandingObserver: importEventBatch returning %ld events from %s", v38, 0x16u);
      v45 = v51;
      __swift_destroy_boxed_opaque_existential_0Tm(v51);
      MEMORY[0x2383841F0](v45, -1, -1);
      MEMORY[0x2383841F0](v38, -1, -1);

      (*(v34 + 8))(v54, v53);
      sub_23226DADC(v58);
    }

    else
    {

      (*(v34 + 8))(v35, v32);
      sub_23226DADC(v30);
    }

    swift_beginAccess();
    v23 = *(v31 + 16);

    __swift_destroy_boxed_opaque_existential_0Tm(v60);
  }

  return v23;
}

char *sub_23226B5A8(uint64_t a1, char *a2, uint64_t a3, void *a4)
{
  v57 = a1;
  v58 = a2;
  v50 = *v4;
  v6 = sub_232401128();
  v52 = *(v6 - 8);
  v53 = v6;
  MEMORY[0x28223BE20](v6);
  v54 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_232400C98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TextUnderstandingBookmarks(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v56 = v15;
  *(v15 + 16) = MEMORY[0x277D84F90];
  v16 = v15 + 16;
  sub_23226EB94();
  v51 = a4;
  v17 = swift_readAtKeyPath();
  v19 = *v18;
  v17(v60, 0);
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  v21 = [objc_allocWithZone(MEMORY[0x277CF1A50]) init];
  sub_232400C28();
  v22 = sub_232400C68();
  (*(v9 + 8))(v11, v8);
  [v21 setStartDate_];

  [v21 setMaxEvents_];
  v23 = "otificationInProgress";
  v24 = v21;
  v25 = v55;
  sub_232400E18();
  if (v25)
  {
    sub_23226DADC(v14);
  }

  else
  {
    v49 = 0;
    v55 = v16;
    v48 = v24;

    v47[1] = v60[4];
    __swift_project_boxed_opaque_existential_1(v60, v60[3]);
    v26 = swift_allocObject();
    v27 = v50;
    *(v26 + 16) = v50;
    v28 = swift_allocObject();
    v28[2] = v19;
    v29 = v56;
    v28[3] = v56;
    v28[4] = v20;
    v28[5] = v27;

    sub_232401138();

    swift_beginAccess();
    v59[0] = *(v20 + 16);
    swift_setAtWritableKeyPath();
    v30 = v14;
    v31 = v29;
    if (qword_2814C7F00 != -1)
    {
      swift_once();
    }

    v32 = v53;
    v33 = __swift_project_value_buffer(v53, qword_2814C8D98);
    v34 = v52;
    v35 = v54;
    (*(v52 + 16))(v54, v33, v32);

    v36 = sub_232401108();
    v37 = sub_232401368();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v59[0] = v51;
      *v38 = 134218242;
      swift_beginAccess();
      *(v38 + 4) = *(*(v31 + 16) + 16);

      *(v38 + 12) = 2080;
      LODWORD(v50) = v37;
      v39 = sub_232400E08();
      v40 = [v39 streamIdentifier];

      v41 = sub_232401178();
      v58 = v30;
      v43 = v42;

      v44 = sub_23224ED04(v41, v43, v59);

      *(v38 + 14) = v44;
      _os_log_impl(&dword_23224A000, v36, v50, "PPTextUnderstandingObserver: importEventBatch returning %ld events from %s", v38, 0x16u);
      v45 = v51;
      __swift_destroy_boxed_opaque_existential_0Tm(v51);
      MEMORY[0x2383841F0](v45, -1, -1);
      MEMORY[0x2383841F0](v38, -1, -1);

      (*(v34 + 8))(v54, v53);
      sub_23226DADC(v58);
    }

    else
    {

      (*(v34 + 8))(v35, v32);
      sub_23226DADC(v30);
    }

    swift_beginAccess();
    v23 = *(v31 + 16);

    __swift_destroy_boxed_opaque_existential_0Tm(v60);
  }

  return v23;
}

char *sub_23226BC74(uint64_t a1, char *a2, uint64_t a3, void *a4)
{
  v57 = a1;
  v58 = a2;
  v50 = *v4;
  v6 = sub_232401128();
  v52 = *(v6 - 8);
  v53 = v6;
  MEMORY[0x28223BE20](v6);
  v54 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_232400C98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TextUnderstandingBookmarks(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v56 = v15;
  *(v15 + 16) = MEMORY[0x277D84F90];
  v16 = v15 + 16;
  sub_23226EB94();
  v51 = a4;
  v17 = swift_readAtKeyPath();
  v19 = *v18;
  v17(v60, 0);
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  v21 = [objc_allocWithZone(MEMORY[0x277CF1A50]) init];
  sub_232400C28();
  v22 = sub_232400C68();
  (*(v9 + 8))(v11, v8);
  [v21 setStartDate_];

  [v21 setMaxEvents_];
  v23 = "otificationInProgress";
  v24 = v21;
  v25 = v55;
  sub_232400E18();
  if (v25)
  {
    sub_23226DADC(v14);
  }

  else
  {
    v49 = 0;
    v55 = v16;
    v48 = v24;

    v47[1] = v60[4];
    __swift_project_boxed_opaque_existential_1(v60, v60[3]);
    v26 = swift_allocObject();
    v27 = v50;
    *(v26 + 16) = v50;
    v28 = swift_allocObject();
    v28[2] = v19;
    v29 = v56;
    v28[3] = v56;
    v28[4] = v20;
    v28[5] = v27;

    sub_232401138();

    swift_beginAccess();
    v59[0] = *(v20 + 16);
    swift_setAtWritableKeyPath();
    v30 = v14;
    v31 = v29;
    if (qword_2814C7F00 != -1)
    {
      swift_once();
    }

    v32 = v53;
    v33 = __swift_project_value_buffer(v53, qword_2814C8D98);
    v34 = v52;
    v35 = v54;
    (*(v52 + 16))(v54, v33, v32);

    v36 = sub_232401108();
    v37 = sub_232401368();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v59[0] = v51;
      *v38 = 134218242;
      swift_beginAccess();
      *(v38 + 4) = *(*(v31 + 16) + 16);

      *(v38 + 12) = 2080;
      LODWORD(v50) = v37;
      v39 = sub_232400E08();
      v40 = [v39 streamIdentifier];

      v41 = sub_232401178();
      v58 = v30;
      v43 = v42;

      v44 = sub_23224ED04(v41, v43, v59);

      *(v38 + 14) = v44;
      _os_log_impl(&dword_23224A000, v36, v50, "PPTextUnderstandingObserver: importEventBatch returning %ld events from %s", v38, 0x16u);
      v45 = v51;
      __swift_destroy_boxed_opaque_existential_0Tm(v51);
      MEMORY[0x2383841F0](v45, -1, -1);
      MEMORY[0x2383841F0](v38, -1, -1);

      (*(v34 + 8))(v54, v53);
      sub_23226DADC(v58);
    }

    else
    {

      (*(v34 + 8))(v35, v32);
      sub_23226DADC(v30);
    }

    swift_beginAccess();
    v23 = *(v31 + 16);

    __swift_destroy_boxed_opaque_existential_0Tm(v60);
  }

  return v23;
}

char *sub_23226C340(uint64_t a1, char *a2, uint64_t a3, void *a4)
{
  v57 = a1;
  v58 = a2;
  v50 = *v4;
  v6 = sub_232401128();
  v52 = *(v6 - 8);
  v53 = v6;
  MEMORY[0x28223BE20](v6);
  v54 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_232400C98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TextUnderstandingBookmarks(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v56 = v15;
  *(v15 + 16) = MEMORY[0x277D84F90];
  v16 = v15 + 16;
  sub_23226EB94();
  v51 = a4;
  v17 = swift_readAtKeyPath();
  v19 = *v18;
  v17(v60, 0);
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  v21 = [objc_allocWithZone(MEMORY[0x277CF1A50]) init];
  sub_232400C28();
  v22 = sub_232400C68();
  (*(v9 + 8))(v11, v8);
  [v21 setStartDate_];

  [v21 setMaxEvents_];
  v23 = "otificationInProgress";
  v24 = v21;
  v25 = v55;
  sub_232400E18();
  if (v25)
  {
    sub_23226DADC(v14);
  }

  else
  {
    v49 = 0;
    v55 = v16;
    v48 = v24;

    v47[1] = v60[4];
    __swift_project_boxed_opaque_existential_1(v60, v60[3]);
    v26 = swift_allocObject();
    v27 = v50;
    *(v26 + 16) = v50;
    v28 = swift_allocObject();
    v28[2] = v19;
    v29 = v56;
    v28[3] = v56;
    v28[4] = v20;
    v28[5] = v27;

    sub_232401138();

    swift_beginAccess();
    v59[0] = *(v20 + 16);
    swift_setAtWritableKeyPath();
    v30 = v14;
    v31 = v29;
    if (qword_2814C7F00 != -1)
    {
      swift_once();
    }

    v32 = v53;
    v33 = __swift_project_value_buffer(v53, qword_2814C8D98);
    v34 = v52;
    v35 = v54;
    (*(v52 + 16))(v54, v33, v32);

    v36 = sub_232401108();
    v37 = sub_232401368();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v59[0] = v51;
      *v38 = 134218242;
      swift_beginAccess();
      *(v38 + 4) = *(*(v31 + 16) + 16);

      *(v38 + 12) = 2080;
      LODWORD(v50) = v37;
      v39 = sub_232400E08();
      v40 = [v39 streamIdentifier];

      v41 = sub_232401178();
      v58 = v30;
      v43 = v42;

      v44 = sub_23224ED04(v41, v43, v59);

      *(v38 + 14) = v44;
      _os_log_impl(&dword_23224A000, v36, v50, "PPTextUnderstandingObserver: importEventBatch returning %ld events from %s", v38, 0x16u);
      v45 = v51;
      __swift_destroy_boxed_opaque_existential_0Tm(v51);
      MEMORY[0x2383841F0](v45, -1, -1);
      MEMORY[0x2383841F0](v38, -1, -1);

      (*(v34 + 8))(v54, v53);
      sub_23226DADC(v58);
    }

    else
    {

      (*(v34 + 8))(v35, v32);
      sub_23226DADC(v30);
    }

    swift_beginAccess();
    v23 = *(v31 + 16);

    __swift_destroy_boxed_opaque_existential_0Tm(v60);
  }

  return v23;
}

char *sub_23226CA0C(uint64_t a1, char *a2, uint64_t a3, void *a4)
{
  v57 = a1;
  v58 = a2;
  v50 = *v4;
  v6 = sub_232401128();
  v52 = *(v6 - 8);
  v53 = v6;
  MEMORY[0x28223BE20](v6);
  v54 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_232400C98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TextUnderstandingBookmarks(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v56 = v15;
  *(v15 + 16) = MEMORY[0x277D84F90];
  v16 = v15 + 16;
  sub_23226EB94();
  v51 = a4;
  v17 = swift_readAtKeyPath();
  v19 = *v18;
  v17(v60, 0);
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  v21 = [objc_allocWithZone(MEMORY[0x277CF1A50]) init];
  sub_232400C28();
  v22 = sub_232400C68();
  (*(v9 + 8))(v11, v8);
  [v21 setStartDate_];

  [v21 setMaxEvents_];
  v23 = "otificationInProgress";
  v24 = v21;
  v25 = v55;
  sub_232400E18();
  if (v25)
  {
    sub_23226DADC(v14);
  }

  else
  {
    v49 = 0;
    v55 = v16;
    v48 = v24;

    v47[1] = v60[4];
    __swift_project_boxed_opaque_existential_1(v60, v60[3]);
    v26 = swift_allocObject();
    v27 = v50;
    *(v26 + 16) = v50;
    v28 = swift_allocObject();
    v28[2] = v19;
    v29 = v56;
    v28[3] = v56;
    v28[4] = v20;
    v28[5] = v27;

    sub_232401138();

    swift_beginAccess();
    v59[0] = *(v20 + 16);
    swift_setAtWritableKeyPath();
    v30 = v14;
    v31 = v29;
    if (qword_2814C7F00 != -1)
    {
      swift_once();
    }

    v32 = v53;
    v33 = __swift_project_value_buffer(v53, qword_2814C8D98);
    v34 = v52;
    v35 = v54;
    (*(v52 + 16))(v54, v33, v32);

    v36 = sub_232401108();
    v37 = sub_232401368();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v59[0] = v51;
      *v38 = 134218242;
      swift_beginAccess();
      *(v38 + 4) = *(*(v31 + 16) + 16);

      *(v38 + 12) = 2080;
      LODWORD(v50) = v37;
      v39 = sub_232400E08();
      v40 = [v39 streamIdentifier];

      v41 = sub_232401178();
      v58 = v30;
      v43 = v42;

      v44 = sub_23224ED04(v41, v43, v59);

      *(v38 + 14) = v44;
      _os_log_impl(&dword_23224A000, v36, v50, "PPTextUnderstandingObserver: importEventBatch returning %ld events from %s", v38, 0x16u);
      v45 = v51;
      __swift_destroy_boxed_opaque_existential_0Tm(v51);
      MEMORY[0x2383841F0](v45, -1, -1);
      MEMORY[0x2383841F0](v38, -1, -1);

      (*(v34 + 8))(v54, v53);
      sub_23226DADC(v58);
    }

    else
    {

      (*(v34 + 8))(v35, v32);
      sub_23226DADC(v30);
    }

    swift_beginAccess();
    v23 = *(v31 + 16);

    __swift_destroy_boxed_opaque_existential_0Tm(v60);
  }

  return v23;
}

uint64_t sub_23226D0D8(void **a1)
{
  v2 = sub_232401128();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  v9 = *a1;
  if (!*a1)
  {
    if (qword_2814C7F00 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v2, qword_2814C8D98);
    (*(v3 + 16))(v8, v18, v2);
    v12 = sub_232401108();
    v19 = sub_232401328();
    if (!os_log_type_enabled(v12, v19))
    {
      v6 = v8;
      goto LABEL_12;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_23224A000, v12, v19, "PPTextUnderstandingObserver: importEventBatch finished", v14, 2u);
    v6 = v8;
    goto LABEL_10;
  }

  if (qword_2814C7F00 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v2, qword_2814C8D98);
  (*(v3 + 16))(v6, v10, v2);
  v11 = v9;
  v12 = sub_232401108();
  v13 = sub_232401348();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = v9;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_23224A000, v12, v13, "PPTextUnderstandingObserver: importEventBatch failed: %@", v14, 0xCu);
    sub_232257C68(v15, &qword_27DD91290, &qword_232417860);
    MEMORY[0x2383841F0](v15, -1, -1);
LABEL_10:
    MEMORY[0x2383841F0](v14, -1, -1);
  }

LABEL_12:

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_23226D3CC(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5, void (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a8)(void))
{
  v44 = a8;
  v45 = a3;
  v13 = sub_232401128();
  OUTLINED_FUNCTION_40();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_68_0();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v43 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91248, &qword_2324176E0);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v26 = &v43 - v25;
  a6(v24);
  v27 = sub_232400C98();
  if (__swift_getEnumTagSinglePayload(v26, 1, v27) == 1)
  {
    sub_232257C68(v26, &qword_27DD91248, &qword_2324176E0);
    if (qword_2814C7F00 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_2814C7F00);
    }

    v28 = __swift_project_value_buffer(v13, qword_2814C8D98);
    (*(v15 + 16))(v22, v28, v13);
    v29 = sub_232401108();
    v30 = sub_232401348();
    if (OUTLINED_FUNCTION_53_0(v30))
    {
      v31 = OUTLINED_FUNCTION_57_0();
      *v31 = 0;
      _os_log_impl(&dword_23224A000, v29, v19, "PPTextUnderstandingObserver: importEventBatch: event missing writeTimestamp", v31, 2u);
      OUTLINED_FUNCTION_54();
    }

    return (*(v15 + 8))(v22, v13);
  }

  else
  {
    sub_232400C38();
    v34 = v33;
    (*(*(v27 - 8) + 8))(v26, v27);
    if (v34 <= a4)
    {
      if (qword_2814C7F00 != -1)
      {
        OUTLINED_FUNCTION_0_4(&qword_2814C7F00);
      }

      v39 = __swift_project_value_buffer(v13, qword_2814C8D98);
      (*(v15 + 16))(v19, v39, v13);
      v40 = sub_232401108();
      v41 = sub_232401338();
      if (OUTLINED_FUNCTION_59_0(v41))
      {
        v42 = OUTLINED_FUNCTION_97();
        *v42 = 134217984;
        *(v42 + 4) = v34;
        _os_log_impl(&dword_23224A000, v40, v41, "PPTextUnderstandingObserver: importEventBatch: skipping event at %f", v42, 0xCu);
        OUTLINED_FUNCTION_30();
      }

      return (*(v15 + 8))(v19, v13);
    }

    else
    {
      swift_beginAccess();
      sub_23226E000(a7);
      v35 = *(*(a2 + 16) + 16);
      sub_23226E088(v35, a7);
      v36 = *(a2 + 16);
      *(v36 + 16) = v35 + 1;
      v44(0);
      OUTLINED_FUNCTION_69_0();
      (*(v37 + 16))(v36 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v35, a1);
      *(a2 + 16) = v36;
      swift_endAccess();
      v38 = v45;
      result = swift_beginAccess();
      *(v38 + 16) = v34;
    }
  }

  return result;
}

uint64_t sub_23226D7C8()
{

  v1 = OBJC_IVAR____TtC32PersonalizationPortraitInternals25TextUnderstandingObserver_lastResultsPostTime;
  v2 = sub_232400C98();
  OUTLINED_FUNCTION_69_0();
  v4 = *(v3 + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtC32PersonalizationPortraitInternals25TextUnderstandingObserver_lastDeletionPostTime, v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_23226D868()
{
  sub_23226D7C8();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for TextUnderstandingObserver(uint64_t a1)
{
  result = qword_2814C7908;
  if (!qword_2814C7908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23226D8E0()
{
  OUTLINED_FUNCTION_12();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_36(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_63_0(v1);

  return sub_23226616C();
}

uint64_t sub_23226D968()
{
  OUTLINED_FUNCTION_12();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_36(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_63_0(v1);

  return sub_232266450();
}

uint64_t sub_23226DA1C(uint64_t a1)
{
  result = sub_232400C98();
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

uint64_t sub_23226DADC(uint64_t a1)
{
  v2 = type metadata accessor for TextUnderstandingBookmarks(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23226DB98()
{
  OUTLINED_FUNCTION_65_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  *(v1 + 56) = v0;
  v12 = sub_2324014C8();
  *(v1 + 64) = v12;
  OUTLINED_FUNCTION_2_0(v12);
  *(v1 + 72) = v13;
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 40) = v11;
  *(v1 + 48) = v9;
  *(v1 + 16) = v7;
  *(v1 + 24) = v5;
  *(v1 + 32) = v3 & 1;
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_23226DC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_79();
  v11 = v10[10];
  v12 = v10[8];
  v13 = v10[9];
  sub_2324014D8();
  sub_23226E3A0(&qword_2814C7748, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  OUTLINED_FUNCTION_47();
  sub_232401558();
  sub_23226E3A0(&qword_2814C7750, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_2324014E8();
  v14 = *(v13 + 8);
  v10[12] = v14;
  v10[13] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v11, v12);
  v15 = swift_task_alloc();
  v10[14] = v15;
  *v15 = v10;
  v15[1] = sub_23226DE00;
  OUTLINED_FUNCTION_36_0();

  return MEMORY[0x2822008C8](v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_23226DE00()
{
  OUTLINED_FUNCTION_65_0();
  OUTLINED_FUNCTION_59();
  v3 = v2;
  OUTLINED_FUNCTION_31();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_19();
  *v8 = v7;
  *(v3 + 120) = v0;

  v9 = OUTLINED_FUNCTION_37_0();
  v6(v9);
  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }

  else
  {

    OUTLINED_FUNCTION_15();

    return v13();
  }
}

uint64_t sub_23226DF9C()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_15();

  return v0();
}

uint64_t sub_23226E000(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
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

uint64_t sub_23226E05C(uint64_t result)
{
  v2 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (result + 1 > (v2 >> 1))
  {
    return MEMORY[0x2821FC280](v2 > 1);
  }

  return result;
}

uint64_t sub_23226E088(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_23226E0D0()
{
  OUTLINED_FUNCTION_12();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_36(v0);
  *v1 = v2;
  v1[1] = sub_232264398;
  v3 = OUTLINED_FUNCTION_62_0();

  return sub_23226A3BC(v3);
}

uint64_t objectdestroy_46Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23226E2FC()
{
  OUTLINED_FUNCTION_12();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_36(v0);
  *v1 = v2;
  v1[1] = sub_2322638D8;
  v3 = OUTLINED_FUNCTION_62_0();

  return sub_232267804(v3);
}

uint64_t sub_23226E3A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_27_0@<X0>(uint64_t a1@<X8>)
{
  v1[48] = a1;
  v1[49] = v2;
  v1[50] = 0;
}

uint64_t OUTLINED_FUNCTION_31_0()
{
}

void OUTLINED_FUNCTION_40_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_48_0(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_52_0()
{

  JUMPOUT(0x2383841F0);
}

BOOL OUTLINED_FUNCTION_53_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_55_0(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = *(v3 + 16);
  v2[26] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v1;
}

uint64_t OUTLINED_FUNCTION_57_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_58_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

BOOL OUTLINED_FUNCTION_59_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_60_0(uint64_t a1)
{
  *(v2 + 360) = a1;
  *(v2 + 368) = v1;
}

uint64_t OUTLINED_FUNCTION_79_0(uint64_t a1)
{
  *(v2 + 288) = a1;
  *(v2 + 296) = v1;
}

uint64_t OUTLINED_FUNCTION_81_0()
{
  *(v0 + 184) = v1;

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_96(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_97()
{

  return swift_slowAlloc();
}

double sub_23226E88C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91468, &unk_232417B80);
  sub_232400D48();
  return v1;
}

double sub_23226E908()
{
  type metadata accessor for TextUnderstandingBookmarks(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91468, &unk_232417B80);
  OUTLINED_FUNCTION_3_3();
  return v1;
}

uint64_t sub_23226E954()
{
  OUTLINED_FUNCTION_2_3();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91468, &unk_232417B80);
  return OUTLINED_FUNCTION_0_5(v0, v1);
}

double sub_23226E998()
{
  type metadata accessor for TextUnderstandingBookmarks(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91468, &unk_232417B80);
  OUTLINED_FUNCTION_3_3();
  return v1;
}

uint64_t sub_23226E9E4()
{
  OUTLINED_FUNCTION_2_3();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91468, &unk_232417B80);
  return OUTLINED_FUNCTION_0_5(v0, v1);
}

double sub_23226EA28()
{
  type metadata accessor for TextUnderstandingBookmarks(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91468, &unk_232417B80);
  OUTLINED_FUNCTION_3_3();
  return v1;
}

uint64_t sub_23226EA74()
{
  OUTLINED_FUNCTION_2_3();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91468, &unk_232417B80);
  return OUTLINED_FUNCTION_0_5(v0, v1);
}

double sub_23226EAB8()
{
  type metadata accessor for TextUnderstandingBookmarks(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91468, &unk_232417B80);
  OUTLINED_FUNCTION_3_3();
  return v1;
}

uint64_t sub_23226EB04()
{
  OUTLINED_FUNCTION_2_3();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91468, &unk_232417B80);
  return OUTLINED_FUNCTION_0_5(v0, v1);
}

uint64_t type metadata accessor for TextUnderstandingBookmarks(uint64_t a1)
{
  result = qword_2814C78D0;
  if (!qword_2814C78D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23226EB94()
{
  v4 = 0;
  v0 = sub_23226ECD0();
  OUTLINED_FUNCTION_1_4(v0, 0x8000000232419140, &v4, v0);
  type metadata accessor for TextUnderstandingBookmarks(0);
  v4 = 0;
  sub_23226ECD0();
  sub_232400D68();
  v4 = 0;
  v1 = sub_23226ECD0();
  OUTLINED_FUNCTION_1_4(v1, 0x8000000232419180, &v4, v1);
  v4 = 0;
  sub_23226ECD0();
  sub_232400D68();
  v4 = 0;
  v2 = sub_23226ECD0();
  return OUTLINED_FUNCTION_1_4(v2, 0x80000002324191C0, &v4, v2);
}

uint64_t sub_23226ECD0()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  result = sub_23226ED7C(0xD00000000000003BLL, 0x8000000232419100);
  if (!result)
  {
    result = sub_232401508();
    __break(1u);
  }

  return result;
}

id sub_23226ED7C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_232401168();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

void sub_23226EE08(uint64_t a1)
{
  sub_23226EE80();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23226EE80()
{
  if (!qword_2814C7C38)
  {
    v0 = sub_232400D78();
    if (!v1)
    {
      atomic_store(v0, &qword_2814C7C38);
    }
  }
}

uint64_t OUTLINED_FUNCTION_2_3()
{

  return type metadata accessor for TextUnderstandingBookmarks(0);
}

void sub_23226EEE8()
{
  v10[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultStore];
  v1 = [v0 meCard];

  if (v1)
  {
    v10[0] = 0;
    v2 = [v1 contactsContactIdentifierWithError_];

    v3 = v10[0];
    if (v2)
    {
      v4 = sub_232401178();
      v6 = v5;
      v7 = v3;

      qword_2814C7C28 = v4;
      qword_2814C7C30 = v6;
      return;
    }

    v8 = v10[0];
    v9 = sub_232400C18();

    swift_willThrow();
  }

  qword_2814C7C28 = 0;
  qword_2814C7C30 = 0;
}

uint64_t sub_23226F010()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 donationBlockedApps];

  v2 = sub_232401268();
  result = sub_23226F094(v2);
  qword_2814C7C10 = result;
  return result;
}

uint64_t sub_23226F094(uint64_t a1)
{
  result = MEMORY[0x238382890](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_232270B30(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_23226F154(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = [v1 subject];
    sub_232401178();
    OUTLINED_FUNCTION_7_1();

    MEMORY[0x238382770](2570, 0xE200000000000000);
    v4 = [v2 textContent];
    sub_232401178();
    OUTLINED_FUNCTION_7_1();

    OUTLINED_FUNCTION_6_1();

    v5 = OUTLINED_FUNCTION_0_6();
    v8 = sub_232279678(v5, v6, v7);
    MEMORY[0x238382730](v8);
    OUTLINED_FUNCTION_3_4();
  }

  else
  {
    v9 = sub_232271428(v1, &selRef_textContent);
    if (v10)
    {
      v11 = v9;
      v12 = v10;
      v13 = [v1 subject];
      sub_232401178();

      OUTLINED_FUNCTION_1_5();
      MEMORY[0x238382770](v11, v12);

      v14 = OUTLINED_FUNCTION_0_6();
      v17 = sub_232279678(v14, v15, v16);
      MEMORY[0x238382730](v17);
      OUTLINED_FUNCTION_3_4();

      return OUTLINED_FUNCTION_5_1();
    }

    v2 = [v1 subject];
    sub_232401178();
    OUTLINED_FUNCTION_3_4();
  }

  return OUTLINED_FUNCTION_5_1();
}

uint64_t sub_23226F2D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  sub_232400D08();
  OUTLINED_FUNCTION_9_1();
  v5 = v4;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v35 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v35 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  if (a1)
  {
    v18 = a1;
    v19 = [v18 textContent];
    v20 = sub_232401178();
    v22 = v21;

    v23 = MEMORY[0x238382790](v20, v22);

    if (v23 < 0)
    {
      __break(1u);
    }

    else
    {
      sub_232400CD8();
      v25 = [v18 quotedRegions];
      v35 = v15;
      sub_232400CF8();

      sub_23226F5F4(v15, v12);
      v26 = *(v5 + 8);
      v27 = OUTLINED_FUNCTION_60();
      v26(v27);
      v28 = *(v5 + 32);
      v28(v17, v12, v2);
      v29 = [v18 tabularRegions];
      sub_232400CF8();

      sub_23226F5F4(v9, v12);
      (v26)(v9, v2);
      v30 = OUTLINED_FUNCTION_60();
      v26(v30);
      v28(v17, v12, v2);
      v31 = [v18 signatureRegions];
      sub_232400CF8();

      v32 = v36;
      sub_23226F5F4(v12, v36);

      (v26)(v12, v2);
      (v26)(v35, v2);
      v33 = OUTLINED_FUNCTION_60();
      v26(v33);
      return __swift_storeEnumTagSinglePayload(v32, 0, 1, v2);
    }
  }

  else
  {
    v34 = v36;

    return __swift_storeEnumTagSinglePayload(v34, 1, 1, v2);
  }

  return result;
}

uint64_t sub_23226F5F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v19[1] = a2;
  v5 = sub_232400D08();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v19 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v19 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = *(v6 + 16);
  v16(v19 - v17, v3, v5);
  v16(v12, v3, v5);
  v16(v9, a1, v5);
  sub_232271774();
  sub_2324013F8();
  sub_2324013E8();
  return (*(v6 + 8))(v15, v5);
}

uint64_t sub_23226F7BC()
{
  sub_232400CC8();
  OUTLINED_FUNCTION_9_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() sharedInstance];
  v8 = [v7 isMultilingual];

  if (v8 && (v9 = [v1 subject], sub_232401178(), v9, v10 = sub_2324011C8(), , v10 >= 51))
  {
    v11 = objc_opt_self();
    v12 = [v1 subject];
    sub_232401178();
    OUTLINED_FUNCTION_7_1();

    v17[0] = v6;
    v17[1] = v10;
    sub_232401218();
    v13 = sub_232401168();

    v14 = [v11 detectLanguageFromTextHeuristically_];

    if (v14)
    {
      v15 = sub_232401178();
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_232400CB8();
    v15 = sub_232400CA8();
    (*(v3 + 8))(v6, v0);
  }

  return v15;
}

id sub_23226F9D8()
{
  sub_232401178();
  if (qword_2814C7C08 != -1)
  {
    swift_once();
  }

  v0 = OUTLINED_FUNCTION_60();
  if (sub_23225375C(v0, v1, v2))
  {

    return 0;
  }

  else
  {
    v4 = [objc_opt_self() defaultPolicy];
    OUTLINED_FUNCTION_60();
    v5 = sub_232401168();

    v3 = [v4 bundleIdentifierIsAllowedForSearchableItems_];
  }

  return v3;
}

void *sub_23226FAC4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91478, &unk_232418240);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_232417BB0;
  *(inited + 32) = [v1 fromHandle];
  v3 = sub_2322713CC(v1, &selRef_toHandles);
  v4 = MEMORY[0x277D84F90];
  v5 = OUTLINED_FUNCTION_12_1(v3);
  sub_23227B74C(v5);
  v6 = sub_2322713CC(v1, &selRef_ccHandles);
  v7 = OUTLINED_FUNCTION_12_1(v6);
  sub_23227B74C(v7);
  v8 = sub_2322713CC(v1, &selRef_bccHandles);
  v9 = OUTLINED_FUNCTION_12_1(v8);
  sub_23227B74C(v9);
  v10 = inited;
  v11 = sub_232252E38(inited);
  if (!v11)
  {

    return MEMORY[0x277D84F90];
  }

  v12 = v11;
  result = sub_2322708D8(0, v11 & ~(v11 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v14 = v4;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x2383829D0](0, v10);
      }

      else
      {
        v15 = *(v10 + 32);
      }

      v16 = v15;
      v17 = [v15 handle];
      sub_232401178();

      v19 = *(v4 + 16);
      v18 = *(v4 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_2322708D8((v18 > 1), v19 + 1, 1);
      }

      OUTLINED_FUNCTION_10_0();
    }

    while (!v20);

    return v14;
  }

  __break(1u);
  return result;
}

void sub_23226FCA4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91248, &qword_2324176E0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v28 - v2;
  v31 = sub_232400C98();
  MEMORY[0x28223BE20](v31);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814C7C20 != -1)
  {
    OUTLINED_FUNCTION_4_3(&qword_2814C7C20);
  }

  v6 = qword_2814C7C30;
  if (qword_2814C7C30 && (v7 = qword_2814C7C28, v8 = sub_232253088([v0 fromHandle], &selRef_contactIdentifier), v9))
  {
    if (v7 == v8 && v6 == v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = sub_232401528();
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_23226FAC4();
  v13 = sub_232401178();
  v15 = v14;
  if (([v0 respondsToSelector_] & 1) != 0 && (v16 = objc_msgSend(v0, sel_domainId)) != 0)
  {
    v17 = v16;
    v18 = sub_232401178();
    v30 = v19;
  }

  else
  {
    v18 = 0;
    v30 = 0;
  }

  if (v12[2] >> 16)
  {
    __break(1u);
  }

  else
  {
    v29 = [objc_allocWithZone(MEMORY[0x277D3A4E0]) initWithDwellTimeSeconds:0 lengthSeconds:0 lengthCharacters:0 donationCount:0 contactHandleCount:v12[2] flags:v11 & 1];
    v20 = [v0 uniqueId];
    v21 = sub_232401178();
    v23 = v22;

    [v0 absoluteTimestamp];
    sub_232400C28();
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v31);

    v24 = sub_23226F7BC();
    v26 = v25;
    v27 = objc_allocWithZone(MEMORY[0x277D3A4D8]);
    sub_232253BEC(v13, v15, v18, v30, v21, v23, v5, v3, v12, v24, v26, v29, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, vars0, vars8);
  }
}

uint64_t sub_23226FFDC()
{
  v1 = v0;
  v2 = sub_232271428(v0, &selRef_title);
  OUTLINED_FUNCTION_2_4(v2, v3);
  OUTLINED_FUNCTION_11_1();

  OUTLINED_FUNCTION_1_5();
  v4 = [v0 summary];
  sub_232401178();
  OUTLINED_FUNCTION_7_1();

  OUTLINED_FUNCTION_6_1();

  OUTLINED_FUNCTION_1_5();
  v5 = [v1 content];
  sub_232401178();
  OUTLINED_FUNCTION_7_1();

  OUTLINED_FUNCTION_6_1();

  v6 = OUTLINED_FUNCTION_0_6();
  v9 = sub_232279678(v6, v7, v8);
  MEMORY[0x238382730](v9);
  OUTLINED_FUNCTION_3_4();

  return OUTLINED_FUNCTION_5_1();
}

uint64_t sub_2322700EC()
{
  v1 = sub_232271428(v0, &selRef_title);
  OUTLINED_FUNCTION_2_4(v1, v2);
  OUTLINED_FUNCTION_11_1();

  OUTLINED_FUNCTION_1_5();
  v3 = [v0 content];
  sub_232401178();
  OUTLINED_FUNCTION_7_1();

  OUTLINED_FUNCTION_6_1();

  v4 = OUTLINED_FUNCTION_0_6();
  v7 = sub_232279678(v4, v5, v6);
  MEMORY[0x238382730](v7);
  OUTLINED_FUNCTION_3_4();

  return OUTLINED_FUNCTION_5_1();
}

uint64_t sub_2322701C4()
{
  v1 = sub_232271428(v0, &selRef_title);
  OUTLINED_FUNCTION_2_4(v1, v2);
  OUTLINED_FUNCTION_11_1();

  OUTLINED_FUNCTION_1_5();
  v3 = sub_232271428(v0, &selRef_notes);
  v5 = OUTLINED_FUNCTION_2_4(v3, v4);
  if (v7)
  {
    v8 = 0xE000000000000000;
  }

  else
  {
    v8 = v6;
  }

  MEMORY[0x238382770](v5, v8);

  v9 = OUTLINED_FUNCTION_0_6();
  v12 = sub_232279678(v9, v10, v11);
  MEMORY[0x238382730](v12);
  OUTLINED_FUNCTION_3_4();

  return OUTLINED_FUNCTION_5_1();
}

uint64_t sub_232270294()
{
  v1 = sub_232271428(v0, &selRef_title);
  OUTLINED_FUNCTION_2_4(v1, v2);
  OUTLINED_FUNCTION_11_1();

  OUTLINED_FUNCTION_1_5();
  v3 = sub_232271428(v0, &selRef_desc);
  OUTLINED_FUNCTION_2_4(v3, v4);
  OUTLINED_FUNCTION_11_1();

  OUTLINED_FUNCTION_1_5();
  v5 = sub_232271428(v0, &selRef_comment);
  OUTLINED_FUNCTION_2_4(v5, v6);
  OUTLINED_FUNCTION_11_1();

  OUTLINED_FUNCTION_1_5();
  v7 = sub_232271428(v0, &selRef_content);
  v9 = OUTLINED_FUNCTION_2_4(v7, v8);
  if (v11)
  {
    v12 = 0xE000000000000000;
  }

  else
  {
    v12 = v10;
  }

  MEMORY[0x238382770](v9, v12);

  v13 = OUTLINED_FUNCTION_0_6();
  v16 = sub_232279678(v13, v14, v15);
  MEMORY[0x238382730](v16);
  OUTLINED_FUNCTION_3_4();

  return OUTLINED_FUNCTION_5_1();
}

uint64_t sub_232270448()
{
  if ([v0 contentIsReaderText])
  {
    v1 = sub_232271428(v0, &selRef_title);
    OUTLINED_FUNCTION_2_4(v1, v2);
    OUTLINED_FUNCTION_11_1();

    MEMORY[0x238382770](2570, 0xE200000000000000);
    v3 = [v0 content];
    sub_232401178();
    OUTLINED_FUNCTION_7_1();

    OUTLINED_FUNCTION_6_1();

    v4 = OUTLINED_FUNCTION_0_6();
  }

  else
  {
    v7 = sub_232271428(v0, &selRef_title);
    if (v8)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    if (v8)
    {
      v6 = v8;
    }

    else
    {
      v6 = 0xE000000000000000;
    }

    v4 = 819200;
    v5 = v9;
  }

  v10 = sub_232279678(v4, v5, v6);
  MEMORY[0x238382730](v10);
  OUTLINED_FUNCTION_3_4();

  return OUTLINED_FUNCTION_5_1();
}

uint64_t sub_232270570(SEL *a1)
{
  v2 = [v1 *a1];
  sub_232401178();
  OUTLINED_FUNCTION_3_4();

  return OUTLINED_FUNCTION_5_1();
}

void *sub_2322705BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91478, &unk_232418240);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_232417BB0;
  *(inited + 32) = [v0 fromHandle];
  v2 = sub_2322713CC(v0, &selRef_toHandles);
  v3 = MEMORY[0x277D84F90];
  v4 = OUTLINED_FUNCTION_12_1(v2);
  sub_23227B74C(v4);
  v5 = sub_232252E38(inited);
  if (!v5)
  {

    return MEMORY[0x277D84F90];
  }

  v6 = v5;
  v15 = v3;
  result = sub_2322708D8(0, v5 & ~(v5 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = v3;
    do
    {
      if ((inited & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2383829D0](0, inited);
      }

      else
      {
        v9 = *(inited + 32);
      }

      v10 = v9;
      v11 = [v9 handle];
      sub_232401178();

      v15 = v3;
      v13 = *(v3 + 16);
      v12 = *(v3 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2322708D8((v12 > 1), v13 + 1, 1);
      }

      OUTLINED_FUNCTION_10_0();
    }

    while (!v14);

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_232270760()
{
  if (qword_2814C7C20 != -1)
  {
    OUTLINED_FUNCTION_4_3(&qword_2814C7C20);
  }

  v1 = qword_2814C7C30;
  if (qword_2814C7C30)
  {
    v2 = qword_2814C7C28;
    v3 = sub_232253088([v0 fromHandle], &selRef_contactIdentifier);
    if (v4)
    {
      if (v2 != v3 || v1 != v4)
      {
        sub_232401528();
      }
    }
  }

  sub_2322705BC();
  v6 = OUTLINED_FUNCTION_5_1();
  sub_2322714CC(v6, v7, v8);
  v10 = v9;

  return v10;
}

uint64_t sub_232270874(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_232417BC0;
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

void *sub_2322708D8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_232270918(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2322708F8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_232270A18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_232270918(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD915C0, &qword_232417E40);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_23227B63C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_232270A18(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91488, &qword_232417E48);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_23227B65C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91490, &unk_232417E50);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

BOOL sub_232270B30(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  sub_2324015D8();
  sub_2324011B8();
  v8 = sub_232401608();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_232401528() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_232270ED8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_232270C7C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91470, &qword_232417E38);
  result = sub_232401418();
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
      sub_232270874(0, (v28 + 63) >> 6, v3 + 56);
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
    sub_2324015D8();
    sub_2324011B8();
    result = sub_232401608();
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

unint64_t sub_232270ED8(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_232270C7C(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_232271198(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_2324015D8();
      sub_2324011B8();
      result = sub_232401608();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_232401528() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_232271040();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_232401538();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_232271040()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91470, &qword_232417E38);
  v2 = *v0;
  v3 = sub_232401408();
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

  return result;
}

uint64_t sub_232271198(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91470, &qword_232417E38);
  result = sub_232401418();
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
        sub_2324015D8();

        sub_2324011B8();
        result = sub_232401608();
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

uint64_t sub_2322713CC(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  sub_232271488();
  v4 = sub_232401268();

  return v4;
}

uint64_t sub_232271428(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_232401178();

  return v4;
}

unint64_t sub_232271488()
{
  result = qword_2814C7800;
  if (!qword_2814C7800)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814C7800);
  }

  return result;
}

void sub_2322714CC(void *a1, uint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91248, &qword_2324176E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v31 - v7;
  v9 = sub_232400C98();
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 content];
  sub_232401178();

  v13 = sub_2324011C8();

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (HIDWORD(v13))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  v14 = sub_23227C038();
  if (v15)
  {
    v16 = v15;
    v34 = v14;
    if (([a1 respondsToSelector_] & 1) != 0 && (v17 = objc_msgSend(a1, sel_domainId)) != 0)
    {
      v18 = v17;
      v19 = sub_232401178();
      v32 = v20;
      v33 = v19;

      if (!a2)
      {
LABEL_7:
        LOWORD(v21) = 0;
LABEL_10:
        v22 = [objc_allocWithZone(MEMORY[0x277D3A4E0]) initWithDwellTimeSeconds:0 lengthSeconds:0 lengthCharacters:v13 donationCount:0 contactHandleCount:v21 flags:a3 & 1];
        v23 = [a1 uniqueId];
        v24 = sub_232401178();
        v26 = v25;

        [a1 absoluteTimestamp];
        sub_232400C28();
        __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);

        v27 = sub_232279280();
        v29 = v28;
        v30 = objc_allocWithZone(MEMORY[0x277D3A4D8]);
        sub_232253BEC(v34, v16, v33, v32, v24, v26, v11, v8, a2, v27, v29, v22, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, vars0, vars8);
        return;
      }
    }

    else
    {
      v32 = 0;
      v33 = 0;
      if (!a2)
      {
        goto LABEL_7;
      }
    }

    v21 = *(a2 + 16);
    if (!(v21 >> 16))
    {
      goto LABEL_10;
    }

    goto LABEL_14;
  }
}

unint64_t sub_232271774()
{
  result = qword_27DD91480;
  if (!qword_27DD91480)
  {
    sub_232400D08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD91480);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_3(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_232271804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_232273828(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_232271854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_232273828(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

uint64_t sub_232271B08()
{
  v1 = (v0 + OBJC_IVAR___PPSWStringDonation_uniqueId);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_232271B78(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___PPSWStringDonation_uniqueId);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_232271BD8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_232271B78(v1, v2);
}

double sub_232271C8C()
{
  v1 = OBJC_IVAR___PPSWStringDonation_absoluteTimestamp;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_232271CF4(double a1)
{
  v3 = OBJC_IVAR___PPSWStringDonation_absoluteTimestamp;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *sub_232271DCC()
{
  v1 = *(v0 + OBJC_IVAR___PPSWStringDonation_source);
  v2 = v1;
  return v1;
}

id sub_232271E84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3();
  v3 = sub_232401168();

  return v3;
}

uint64_t sub_232271ED4()
{
  v1 = *(v0 + OBJC_IVAR___PPSWStringDonation_extractionContent);

  return v1;
}

void sub_232271F28(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = sub_232401178();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_232271FA0(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___PPSWStringDonation_extractionContent);
  *v3 = a1;
  v3[1] = a2;
}

unint64_t sub_23227253C()
{
  result = qword_2814C7820;
  if (!qword_2814C7820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD914B8, &qword_232417E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814C7820);
  }

  return result;
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

id StringDonation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StringDonationConsumer.__allocating_init(topicStore:entityStore:locationStore:entityDissector:topicDissector:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_allocWithZone(v5);
  v11 = OUTLINED_FUNCTION_40_1();
  return sub_2322780EC(v11, a2, a3, 0, a4, a5);
}

id StringDonationConsumer.init()()
{
  v1 = [objc_opt_self() defaultStore];
  v2 = [objc_opt_self() defaultStore];
  v3 = [objc_opt_self() defaultStore];
  v4 = [objc_opt_self() sharedInstance];
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v0 initWithTopicStore:v1 entityStore:v2 locationStore:v3 entityDissector:v4 topicDissector:v5];

  return v6;
}

uint64_t sub_2322729F8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_232272A18, 0, 0);
}

uint64_t sub_232272A18()
{
  v36 = v0;
  v1 = *(*(v0 + 16) + OBJC_IVAR___PPSWStringDonation_source);
  if (!v1)
  {
    if (qword_2814C7F68 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2814C7F68);
    }

    v10 = sub_232401128();
    OUTLINED_FUNCTION_31_1(v10, qword_2814C8DC8);
    v11 = sub_232401108();
    v12 = sub_232401358();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_23224A000, v11, v12, "StringDonationConsumer: encountered a sourceless donation", v13, 2u);
      OUTLINED_FUNCTION_7_2();
    }

    goto LABEL_33;
  }

  v2 = v1;
  v3 = sub_232273BBC(v2);
  v5 = v4;
  v6 = sub_232401178();
  if (!v5)
  {

    goto LABEL_19;
  }

  if (v3 == v6 && v5 == v7)
  {
  }

  else
  {
    v9 = sub_232401528();

    if ((v9 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v5 = [objc_opt_self() sharedInstance];
  v14 = [v5 notificationExtractionEnabled];

  if (!v14)
  {
    goto LABEL_23;
  }

  v15 = [objc_opt_self() defaultPolicy];
  OUTLINED_FUNCTION_39_1();
  v17 = [v2 v16];
  if (!v17)
  {
    sub_232401178();
    sub_232401168();
    OUTLINED_FUNCTION_38_1();
  }

  v18 = [v5 bundleIdentifierIsAllowedForNotifications_];

  if ((v18 & 1) == 0)
  {
LABEL_23:
    if (qword_2814C7F68 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2814C7F68);
    }

    v23 = sub_232401128();
    OUTLINED_FUNCTION_31_1(v23, qword_2814C8DC8);
    v11 = sub_232401108();
    v24 = sub_232401368();
    if (!os_log_type_enabled(v11, v24))
    {
      goto LABEL_32;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_23224A000, v11, v24, "StringDonationConsumer: ignoring notification as notification consumption is not enabled either globally or for this bundle ID.", v25, 2u);
LABEL_31:
    OUTLINED_FUNCTION_30();
LABEL_32:

LABEL_33:
    goto LABEL_36;
  }

LABEL_19:
  v19 = [objc_opt_self() sharedInstance];
  OUTLINED_FUNCTION_39_1();
  v21 = [v2 v20];
  if (!v21)
  {
    sub_232401178();
    sub_232401168();
    OUTLINED_FUNCTION_38_1();
  }

  v22 = [v5 bundleIdentifierIsEnabledForDonation_];

  if ((v22 & 1) == 0)
  {
    if (qword_2814C7F68 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2814C7F68);
    }

    v26 = sub_232401128();
    OUTLINED_FUNCTION_31_1(v26, qword_2814C8DC8);
    v2 = v2;
    v11 = sub_232401108();
    v27 = sub_232401368();

    if (!os_log_type_enabled(v11, v27))
    {

      goto LABEL_35;
    }

    OUTLINED_FUNCTION_97();
    v35 = OUTLINED_FUNCTION_21_0();
    *v22 = 136315138;
    v28 = [v2 bundleId];
    v29 = sub_232401178();
    v31 = v30;

    v32 = sub_23224ED04(v29, v31, &v35);

    *(v22 + 4) = v32;
    _os_log_impl(&dword_23224A000, v11, v27, "StringDonationConsumer: _donateNotificationFromLabeledStrings: ignoring notification string from %s due to settings.", v22, 0xCu);
    OUTLINED_FUNCTION_11_2();
    goto LABEL_31;
  }

LABEL_35:
LABEL_36:
  OUTLINED_FUNCTION_15();

  return v33();
}

uint64_t sub_232272F34(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_232272FF8;

  return sub_2322729F8(v6);
}

uint64_t sub_232272FF8()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_59();
  v2 = v1[4];
  v3 = v1[3];
  v4 = v1[2];
  v5 = *v0;
  OUTLINED_FUNCTION_19();
  *v6 = v5;

  v2[2](v2);
  _Block_release(v2);
  OUTLINED_FUNCTION_15();

  return v7();
}

uint64_t sub_23227313C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91288, &qword_232417830);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_2324012B8();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_232417F20;
  v9[5] = v8;
  sub_232273508(0, 0, v6, &unk_232417F30, v9);
}

id sub_2322732DC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_232273338(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_232264398;

  return v6();
}

uint64_t sub_232273420(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_2322638D8;

  return v7();
}

uint64_t sub_232273508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91288, &qword_232417830);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v22 - v10;
  sub_232276FE4(a3, v22 - v10, &qword_27DD91288, &qword_232417830);
  v12 = sub_2324012B8();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_232257C68(v11, &qword_27DD91288, &qword_232417830);
  }

  else
  {
    sub_2324012A8();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_232401298();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_232401198() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_232257C68(a3, &qword_27DD91288, &qword_232417830);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_232257C68(a3, &qword_27DD91288, &qword_232417830);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

unint64_t sub_2322737E4(uint64_t a1)
{
  v2 = sub_2324013A8();

  return sub_232273970(a1, v2);
}

unint64_t sub_232273828(uint64_t a1, uint64_t a2)
{
  sub_2324015D8();
  sub_2324011B8();
  v4 = sub_232401608();

  return sub_232273A48(a1, a2, v4);
}

unint64_t sub_2322738A0(uint64_t a1)
{
  sub_2324015D8();
  MEMORY[0x238382B70](a1);
  sub_232401608();
  v2 = OUTLINED_FUNCTION_46_1();
  return sub_232273AFC(v2, v3);
}

unint64_t sub_232273904(uint64_t a1)
{
  v1 = a1;
  sub_2324015D8();
  sub_2324015F8();
  v2 = sub_232401608();

  return sub_232273B5C(v1, v2);
}

unint64_t sub_232273970(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_232252D0C(0, &qword_27DD91280, 0x277D3A4D8);
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_2324013B8();

    if (v8)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_232273A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_232401528() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_232273AFC(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_232273B5C(unsigned __int16 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

uint64_t sub_232273BBC(void *a1)
{
  v1 = [a1 groupId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_232401178();

  return v3;
}

id sub_232273C20(char *a1, int a2, unsigned __int8 a3, uint64_t (*a4)(void), void *a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v130 = a6;
  v132 = a5;
  v133 = a4;
  v131 = a2;
  ObjectType = swift_getObjectType();
  v13 = sub_232400CC8();
  v128 = *(v13 - 8);
  v129 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD914C8, &unk_232417F50);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v120 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v120 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = v120 - v23;
  if (a1[OBJC_IVAR___PPSWStringDonation_shouldConsume] == 1)
  {
    v25 = *&a1[OBJC_IVAR___PPSWStringDonation_source];
    if (v25)
    {
      v127 = a8;
      v26 = v25;
      if (v133())
      {
        v126 = v24;
        v139 = MEMORY[0x277D84F90];
        v27 = swift_getObjectType();
        *&v134 = a1;
        v28 = a1;
        v29 = sub_2322538EC(&v134, a7, ObjectType, v27, &off_284754880);
        v31 = v30;

        if (v31)
        {
          v32 = v26;
          v123 = v29;
          LODWORD(v125) = a3;
          v33 = sub_232400D08();
          v34 = v126;
          v124 = v33;
          __swift_storeEnumTagSinglePayload(v126, 1, 1, v33);
          v137 = v28;
          v138 = &off_284754880;
          v35 = v28;
          v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD914D0, &qword_232417F60);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD914D8, &qword_232417F68);
          v37 = swift_dynamicCast();
          v122 = v36;
          v121 = v35;
          if (v37)
          {
            __swift_destroy_boxed_opaque_existential_0Tm(&v134);
            v137 = v35;
            v138 = &off_284754880;
            v38 = v35;
            v39 = swift_dynamicCast();
            v40 = v132;
            if (v39)
            {
              v41 = v31;
              v42 = *(&v135 + 1);
              v43 = v136;
              __swift_project_boxed_opaque_existential_1(&v134, *(&v135 + 1));
              v44 = *(v43 + 24);
              v45 = v42;
              v34 = v126;
              v46 = v43;
              v31 = v41;
              v47 = v32;
              v44(0, v45, v46);
              sub_232257C68(v34, &qword_27DD914C8, &unk_232417F50);
              __swift_destroy_boxed_opaque_existential_0Tm(&v134);
              v48 = v127;
            }

            else
            {
              sub_232257C68(v34, &qword_27DD914C8, &unk_232417F50);
              v134 = 0u;
              v135 = 0u;
              v136 = 0;
              sub_232257C68(&v134, &qword_27DD914E8, &qword_2324181A0);
              __swift_storeEnumTagSinglePayload(v22, 1, 1, v124);
              v48 = v127;
              v47 = v32;
            }

            v37 = sub_232277044(v22, v34);
          }

          else
          {
            v48 = v127;
            v40 = v132;
            v47 = v32;
          }

          v81 = v125;
          if ((v125 | 2) == 2)
          {
            v82 = *(v48 + OBJC_IVAR____TtC32PersonalizationPortraitInternals8Consumer_entityDissector);
            if (v82)
            {
              v83 = v82;
              v125 = v31;
              v84 = sub_232401168();
              sub_232276FE4(v34, v19, &qword_27DD914C8, &unk_232417F50);
              v85 = v124;
              if (__swift_getEnumTagSinglePayload(v19, 1, v124) == 1)
              {
                v86 = 0;
              }

              else
              {
                v86 = sub_232400CE8();
                (*(*(v85 - 1) + 8))(v19, v85);
              }

              v87 = [v83 entitiesInPlainText:v84 eligibleRegions:v86 source:v47 cloudSync:v131 & 1];

              sub_232252D0C(0, &qword_2814C7790, off_27896FD30);
              v88 = sub_232401268();

              sub_232252D4C(v88);
              v34 = v126;
              v31 = v125;
            }
          }

          if ((v133)(v37))
          {
            if ((v81 - 1) < 2 && (v89 = *(v127 + OBJC_IVAR____TtC32PersonalizationPortraitInternals8Consumer_topicDissector)) != 0)
            {
              v125 = v31;
              v90 = objc_opt_self();
              v124 = v89;
              v91 = [v90 sharedInstance];
              v92 = [v47 bundleId];
              if (!v92)
              {
                sub_232401178();
                v92 = sub_232401168();
              }

              sub_232263718(v47);
              if (v93)
              {
                v94 = sub_232401168();
              }

              else
              {
                v94 = 0;
              }

              v97 = [v91 extractionAlgorithmsForBundleId:v92 sourceLanguage:v94 conservative:0 domain:0];

              sub_232252D0C(0, &unk_2814C7760, 0x277CCABB0);
              sub_232253ABC();
              v120[1] = sub_2324012F8();

              v98 = [v90 sharedInstance];
              v99 = [v47 bundleId];
              if (!v99)
              {
                sub_232401178();
                v99 = sub_232401168();
              }

              sub_232263718(v47);
              if (v100)
              {
                v101 = sub_232401168();
              }

              else
              {
                v101 = 0;
              }

              v102 = [v98 extractionAlgorithmsForBundleId:v99 sourceLanguage:v101 conservative:0 domain:1];

              sub_2324012F8();
              v103 = sub_232401168();

              v137 = v121;
              v138 = &off_284754880;
              v104 = v121;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD914E0, &unk_232417F70);
              v105 = swift_dynamicCast();
              if (v105)
              {
                __swift_destroy_boxed_opaque_existential_0Tm(&v134);
              }

              sub_232263718(v47);
              v106 = v132;
              if (v107 || (sub_232400CB8(), sub_232400CA8(), v109 = v108, (*(v128 + 8))(v15, v129), v109))
              {
                v110 = v106;
              }

              else
              {
                v110 = v106;
              }

              v111 = sub_232401168();

              v112 = sub_2324012E8();

              v113 = sub_2324012E8();

              v114 = v124;
              v115 = [v124 topicsInText:v103 isPlainText:v105 source:v47 cloudSync:v131 & 1 language:v111 topicAlgorithms:v112 namedEntityAlgorithms:1.0 weight:v113];

              sub_232252D0C(0, &qword_2814C7790, off_27896FD30);
              v116 = sub_232401268();

              sub_232252D4C(v116);
              v34 = v126;
              v40 = v110;
            }

            else
            {
            }

            v117 = v133;
            if ((v133)(v96))
            {
              sub_23225764C(v139, v117, v40, v130);
              v119 = v118;
              sub_232257C68(v126, &qword_27DD914C8, &unk_232417F50);

              return v119;
            }

            v95 = [objc_opt_self() interrupted];
          }

          else
          {

            v95 = [objc_opt_self() interrupted];
          }

          v80 = v95;

          sub_232257C68(v34, &qword_27DD914C8, &unk_232417F50);
          return v80;
        }

        if (qword_2814C7F68 != -1)
        {
          swift_once();
        }

        v69 = sub_232401128();
        __swift_project_value_buffer(v69, qword_2814C8DC8);
        v70 = v28;
        v71 = sub_232401108();
        v72 = sub_232401368();

        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          *&v134 = v74;
          *v73 = 136315138;
          v75 = [v70 uniqueId];
          v76 = sub_232401178();
          v78 = v77;

          v79 = sub_23224ED04(v76, v78, &v134);

          *(v73 + 4) = v79;
          _os_log_impl(&dword_23224A000, v71, v72, "Consumer: ignoring item with no content with id %s", v73, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v74);
          MEMORY[0x2383841F0](v74, -1, -1);
          MEMORY[0x2383841F0](v73, -1, -1);
        }

        v65 = [objc_opt_self() ignored];
      }

      else
      {
        v65 = [objc_opt_self() interrupted];
      }

      v80 = v65;

      return v80;
    }
  }

  if (qword_2814C7F68 != -1)
  {
    swift_once();
  }

  v49 = sub_232401128();
  __swift_project_value_buffer(v49, qword_2814C8DC8);
  v50 = a1;
  v51 = sub_232401108();
  v52 = sub_232401368();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *&v134 = v54;
    *v53 = 136315394;
    v55 = [v50 uniqueId];
    v56 = sub_232401178();
    v58 = v57;

    v59 = sub_23224ED04(v56, v58, &v134);

    *(v53 + 4) = v59;
    *(v53 + 12) = 2080;
    v60 = *&v50[OBJC_IVAR___PPSWStringDonation_source];
    if (v60)
    {
      v61 = [v60 bundleId];
      v62 = sub_232401178();
      v64 = v63;
    }

    else
    {
      v64 = 0xEC00000044492065;
      v62 = 0x6C646E7542206F4ELL;
    }

    v66 = sub_23224ED04(v62, v64, &v134);

    *(v53 + 14) = v66;
    _os_log_impl(&dword_23224A000, v51, v52, "Consumer: ignoring ineligible item %s from %s.", v53, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2383841F0](v54, -1, -1);
    MEMORY[0x2383841F0](v53, -1, -1);
  }

  v67 = [objc_opt_self() ignored];

  return v67;
}

uint64_t dispatch thunk of StringDonationConsumer.consume(donation:)()
{
  OUTLINED_FUNCTION_22();
  v2 = v1;
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0xC8);
  v8 = (v3 + *v3);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_36(v4);
  *v5 = v6;
  v5[1] = sub_2322638D8;

  return v8(v2);
}

uint64_t sub_232274E64()
{
  OUTLINED_FUNCTION_22();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_36(v0);
  *v1 = v2;
  v1[1] = sub_232264398;
  v3 = OUTLINED_FUNCTION_47();

  return v4(v3);
}

uint64_t sub_232274F0C()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_36(v0);
  *v1 = v2;
  v1[1] = sub_232264398;
  v3 = OUTLINED_FUNCTION_47();

  return v4(v3);
}

uint64_t objectdestroy_20Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_232275004(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_36(v6);
  *v7 = v8;
  v7[1] = sub_232264398;

  return sub_232273420(a1, v3, v4, v5);
}

uint64_t sub_2322750CC()
{
  OUTLINED_FUNCTION_22();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_36(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_48(v1);

  return v4(v3);
}

uint64_t sub_232275164()
{
  OUTLINED_FUNCTION_22();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_36(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_48(v1);

  return v4(v3);
}

void sub_2322752C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t (*a21)(void), uint64_t (*a22)(void), void *a23)
{
  OUTLINED_FUNCTION_36_1();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v153 = v27;
  v158 = v29;
  v159 = v28;
  v31 = v30;
  v154 = v32;
  v34 = v33;
  v35 = a22;
  v156 = v36;
  v157 = a23;
  v37 = a21;
  ObjectType = swift_getObjectType();
  v39 = sub_232400CC8();
  v40 = OUTLINED_FUNCTION_5_2(v39, &a18);
  v151 = v41;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_1_6();
  v150 = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD914C8, &unk_232417F50);
  v44 = OUTLINED_FUNCTION_70(v43);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_10_1();
  v155 = v45;
  OUTLINED_FUNCTION_45_1();
  v47 = MEMORY[0x28223BE20](v46);
  v49 = &v143 - v48;
  MEMORY[0x28223BE20](v47);
  v51 = &v143 - v50;
  v52 = swift_getObjectType();
  if (v37())
  {
    v53 = v35();
    if (v53)
    {
      v54 = v53;
      if ((v159)())
      {
        v163 = MEMORY[0x277D84F90];
        v160[0] = v34;
        v55 = v34;
        v56 = v52;
        v57 = v157;
        v58 = sub_2322538EC(v160, v26, ObjectType, v56, v157);
        v60 = v59;

        if (v60)
        {
          v149 = v54;
          v148 = v58;
          v61 = v31;
          sub_232400D08();
          OUTLINED_FUNCTION_8_1();
          v63 = v62;
          __swift_storeEnumTagSinglePayload(v64, v65, v66, v62);
          v161 = v55;
          v162 = v57;
          v67 = v55;
          v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD914D0, &qword_232417F60);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD914D8, &qword_232417F68);
          v69 = OUTLINED_FUNCTION_2_5();
          v147 = v68;
          v146 = v67;
          if (v69)
          {
            __swift_destroy_boxed_opaque_existential_0Tm(v160);
            v161 = v67;
            v162 = v57;
            v70 = v67;
            v71 = OUTLINED_FUNCTION_2_5();
            v72 = v158;
            v73 = v155;
            if (v71)
            {
              OUTLINED_FUNCTION_50_0();
              v74(0, v57, v60);
              sub_232257C68(v51, &qword_27DD914C8, &unk_232417F50);
              __swift_destroy_boxed_opaque_existential_0Tm(v160);
            }

            else
            {
              sub_232257C68(v51, &qword_27DD914C8, &unk_232417F50);
              OUTLINED_FUNCTION_24_1();
              sub_232257C68(v160, &qword_27DD914E8, &qword_2324181A0);
              OUTLINED_FUNCTION_8_1();
              __swift_storeEnumTagSinglePayload(v106, v107, v108, v63);
            }

            v69 = sub_232277044(v49, v51);
          }

          else
          {
            v72 = v158;
            v73 = v155;
          }

          if ((v61 | 2) == 2)
          {
            v109 = *(v156 + OBJC_IVAR____TtC32PersonalizationPortraitInternals8Consumer_entityDissector);
            if (v109)
            {
              v110 = v109;
              v111 = v60;
              v112 = sub_232401168();
              sub_232276FE4(v51, v73, &qword_27DD914C8, &unk_232417F50);
              if (__swift_getEnumTagSinglePayload(v73, 1, v63) == 1)
              {
                v113 = 0;
              }

              else
              {
                v113 = sub_232400CE8();
                (*(*(v63 - 8) + 8))(v73, v63);
              }

              v114 = [v110 entitiesInPlainText:v112 eligibleRegions:v113 source:v149 cloudSync:v154 & 1];

              sub_232252D0C(0, &qword_2814C7790, off_27896FD30);
              v57 = sub_232401268();

              sub_232252D4C(v57);
              v60 = v111;
            }
          }

          if (v159(v69))
          {
            if ((v61 - 1) >= 2)
            {

              v116 = v149;
            }

            else
            {
              v115 = *(v156 + OBJC_IVAR____TtC32PersonalizationPortraitInternals8Consumer_topicDissector);
              v116 = v149;
              if (v115)
              {
                v145 = v60;
                v117 = objc_opt_self();
                v144 = v115;
                v118 = OUTLINED_FUNCTION_49_1();
                v119 = [v116 bundleId];
                if (!v119)
                {
                  sub_232401178();
                  v57 = v120;
                  v119 = sub_232401168();
                }

                sub_232263718(v116);
                if (v121)
                {
                  sub_232401168();
                  OUTLINED_FUNCTION_38_1();
                }

                else
                {
                  v57 = 0;
                }

                v123 = [v118 extractionAlgorithmsForBundleId:v119 sourceLanguage:v57 conservative:0 domain:0];

                v124 = sub_232252D0C(0, &unk_2814C7760, 0x277CCABB0);
                sub_232253ABC();
                v155 = v124;
                OUTLINED_FUNCTION_43_0();
                v143 = sub_2324012F8();

                v125 = OUTLINED_FUNCTION_49_1();
                OUTLINED_FUNCTION_39_1();
                v127 = [v116 v126];
                if (!v127)
                {
                  sub_232401178();
                  v124 = v128;
                  v127 = sub_232401168();
                }

                sub_232263718(v116);
                v72 = v158;
                if (v129)
                {
                  sub_232401168();
                  OUTLINED_FUNCTION_38_1();
                }

                else
                {
                  v124 = 0;
                }

                v130 = [v117 extractionAlgorithmsForBundleId:v127 sourceLanguage:v124 conservative:0 domain:1];

                sub_2324012F8();
                v148 = sub_232401168();

                v161 = v146;
                v162 = v157;
                v131 = v146;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD914E0, &unk_232417F70);
                OUTLINED_FUNCTION_9_2();
                v132 = swift_dynamicCast();
                if (v132)
                {
                  __swift_destroy_boxed_opaque_existential_0Tm(v160);
                }

                sub_232263718(v116);
                if (!v133)
                {
                  v134 = v150;
                  sub_232400CB8();
                  sub_232400CA8();
                  (*(v151 + 8))(v134, v152);
                }

                v135 = sub_232401168();

                OUTLINED_FUNCTION_43_0();
                v136 = sub_2324012E8();

                OUTLINED_FUNCTION_43_0();
                v137 = sub_2324012E8();

                v138 = v144;
                v139 = v148;
                v140 = [v144 topicsInText:v148 isPlainText:v132 source:v116 cloudSync:v154 & 1 language:v135 topicAlgorithms:v136 namedEntityAlgorithms:1.0 weight:v137];

                sub_232252D0C(0, &qword_2814C7790, off_27896FD30);
                OUTLINED_FUNCTION_46_1();
                v141 = sub_232401268();

                sub_232252D4C(v141);
              }

              else
              {
              }
            }

            v142 = v159;
            if (v159(v122))
            {
              sub_23225764C(v163, v142, v72, v153);
              sub_232257C68(v51, &qword_27DD914C8, &unk_232417F50);

              goto LABEL_59;
            }

            [objc_opt_self() interrupted];
          }

          else
          {

            [objc_opt_self() interrupted];
          }

          sub_232257C68(v51, &qword_27DD914C8, &unk_232417F50);
          goto LABEL_59;
        }

        if (qword_2814C7F68 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_2814C7F68);
        }

        v96 = sub_232401128();
        __swift_project_value_buffer(v96, qword_2814C8DC8);
        v97 = v55;
        v98 = sub_232401108();
        v99 = sub_232401368();

        if (os_log_type_enabled(v98, v99))
        {
          v100 = OUTLINED_FUNCTION_97();
          v101 = OUTLINED_FUNCTION_26_0();
          v160[0] = v101;
          *v100 = 136315138;
          v102 = [v97 uniqueId];
          sub_232401178();
          OUTLINED_FUNCTION_30_1();

          v103 = OUTLINED_FUNCTION_23_1();

          *(v100 + 4) = v103;
          OUTLINED_FUNCTION_15_0(&dword_23224A000, v104, v105, "Consumer: ignoring item with no content with id %s");
          __swift_destroy_boxed_opaque_existential_0Tm(v101);
          OUTLINED_FUNCTION_54();
          OUTLINED_FUNCTION_7_2();
        }

        v90 = [objc_opt_self() ignored];
      }

      else
      {
        v90 = [objc_opt_self() interrupted];
      }

      v90;

LABEL_59:
      OUTLINED_FUNCTION_18_0();
      return;
    }
  }

  v75 = v35;
  if (qword_2814C7F68 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2814C7F68);
  }

  v76 = sub_232401128();
  OUTLINED_FUNCTION_31_1(v76, qword_2814C8DC8);
  v77 = v34;
  v78 = sub_232401108();
  v79 = sub_232401368();

  if (OUTLINED_FUNCTION_37_1())
  {
    swift_slowAlloc();
    v160[0] = OUTLINED_FUNCTION_34_1();
    *v52 = 136315394;
    v80 = [v77 uniqueId];
    v81 = sub_232401178();
    v83 = v82;

    sub_23224ED04(v81, v83, v160);

    OUTLINED_FUNCTION_25_1();
    v84 = v75();
    if (v84)
    {
      v85 = v84;
      v86 = [v84 bundleId];

      v87 = sub_232401178();
      v89 = v88;
    }

    else
    {
      v89 = 0xEC00000044492065;
      v87 = 0x6C646E7542206F4ELL;
    }

    v91 = sub_23224ED04(v87, v89, v160);

    *(v52 + 14) = v91;
    OUTLINED_FUNCTION_35_0(&dword_23224A000, v92, v79, "Consumer: ignoring ineligible item %s from %s.");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_7_2();
  }

  [objc_opt_self() ignored];
  OUTLINED_FUNCTION_18_0();

  v95 = v93;
}

void sub_2322760A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19, uint64_t a20, uint64_t a21, uint64_t (*a22)(void), uint64_t a23, uint64_t a24, void *a25, uint64_t a26)
{
  OUTLINED_FUNCTION_36_1();
  a20 = v26;
  a21 = v27;
  v165 = v28;
  v160 = v29;
  v167 = v30;
  v168 = v31;
  LODWORD(v162) = v32;
  v161 = v33;
  v35 = v34;
  v36 = a25;
  v166 = a26;
  v38 = a23;
  v37 = a24;
  v39 = a22;
  v164 = v40;
  ObjectType = swift_getObjectType();
  v42 = sub_232400CC8();
  v43 = OUTLINED_FUNCTION_5_2(v42, &a16);
  v158 = v44;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_1_6();
  v157 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD914C8, &unk_232417F50);
  v47 = OUTLINED_FUNCTION_70(v46);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_10_1();
  v163 = v48;
  OUTLINED_FUNCTION_45_1();
  v50 = MEMORY[0x28223BE20](v49);
  v52 = v155 - v51;
  MEMORY[0x28223BE20](v50);
  v54 = v155 - v53;
  v55 = swift_getObjectType();
  if (v39())
  {
    v56 = sub_2322718AC(v38, v37, v36);
    if (v56)
    {
      v57 = v56;
      if ((v167)())
      {
        v172 = MEMORY[0x277D84F90];
        v169[0] = v35;
        v58 = v35;
        v59 = ObjectType;
        v60 = v166;
        v61 = sub_2322538EC(v169, v165, v59, v55, v166);
        v63 = v62;

        if (v63)
        {
          v165 = v57;
          v64 = v162;
          v65 = sub_232400D08();
          v66 = v54;
          OUTLINED_FUNCTION_8_1();
          __swift_storeEnumTagSinglePayload(v67, v68, v69, v65);
          v170 = v58;
          v171 = v60;
          v70 = v58;
          v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD914D0, &qword_232417F60);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD914D8, &qword_232417F68);
          OUTLINED_FUNCTION_9_2();
          v72 = swift_dynamicCast();
          v162 = v71;
          v156 = v70;
          if (v72)
          {
            __swift_destroy_boxed_opaque_existential_0Tm(v169);
            v170 = v70;
            v171 = v60;
            v73 = v70;
            OUTLINED_FUNCTION_9_2();
            if (swift_dynamicCast())
            {
              __swift_project_boxed_opaque_existential_1(v169, v169[3]);
              OUTLINED_FUNCTION_32_1();
              v74();
              v75 = v66;
              sub_232257C68(v66, &qword_27DD914C8, &unk_232417F50);
              __swift_destroy_boxed_opaque_existential_0Tm(v169);
            }

            else
            {
              v75 = v66;
              sub_232257C68(v66, &qword_27DD914C8, &unk_232417F50);
              OUTLINED_FUNCTION_24_1();
              sub_232257C68(v169, &qword_27DD914E8, &qword_2324181A0);
              OUTLINED_FUNCTION_8_1();
              __swift_storeEnumTagSinglePayload(v109, v110, v111, v65);
            }

            v108 = v163;
            v72 = sub_232277044(v52, v75);
          }

          else
          {
            v75 = v66;
            v108 = v163;
          }

          if ((v64 | 2) == 2)
          {
            v112 = *(v164 + OBJC_IVAR____TtC32PersonalizationPortraitInternals8Consumer_entityDissector);
            if (v112)
            {
              v113 = v112;
              v114 = v61;
              v115 = sub_232401168();
              sub_232276FE4(v75, v108, &qword_27DD914C8, &unk_232417F50);
              if (__swift_getEnumTagSinglePayload(v108, 1, v65) == 1)
              {
                v116 = 0;
              }

              else
              {
                v116 = sub_232400CE8();
                (*(*(v65 - 8) + 8))(v108, v65);
              }

              v117 = OUTLINED_FUNCTION_27_1();
              v119 = [v117 v118];

              sub_232252D0C(0, &qword_2814C7790, off_27896FD30);
              v120 = sub_232401268();

              sub_232252D4C(v120);
              v61 = v114;
            }
          }

          v122 = v167;
          v121 = v168;
          if (v167(v72))
          {
            if ((v64 - 1) >= 2)
            {

              v123 = v165;
            }

            else
            {
              v123 = v165;
              v124 = *(v164 + OBJC_IVAR____TtC32PersonalizationPortraitInternals8Consumer_topicDissector);
              if (v124)
              {
                v125 = objc_opt_self();
                v163 = v124;
                v126 = OUTLINED_FUNCTION_49_1();
                v127 = [v123 bundleId];
                if (!v127)
                {
                  sub_232401178();
                  v127 = sub_232401168();
                }

                v155[2] = v61;
                sub_232263718(v123);
                v155[3] = v63;
                if (v128)
                {
                  v129 = sub_232401168();
                }

                else
                {
                  v129 = 0;
                }

                v131 = [v126 extractionAlgorithmsForBundleId:v127 sourceLanguage:v129 conservative:0 domain:0];

                sub_232252D0C(0, &unk_2814C7760, 0x277CCABB0);
                sub_232253ABC();
                OUTLINED_FUNCTION_43_0();
                v155[1] = sub_2324012F8();

                v132 = OUTLINED_FUNCTION_49_1();
                OUTLINED_FUNCTION_39_1();
                v134 = [v123 v133];
                if (!v134)
                {
                  sub_232401178();
                  v134 = sub_232401168();
                }

                sub_232263718(v123);
                v135 = v156;
                if (v136)
                {
                  v137 = sub_232401168();
                }

                else
                {
                  v137 = 0;
                }

                v138 = [v125 extractionAlgorithmsForBundleId:v134 sourceLanguage:v137 conservative:0 domain:1];

                sub_2324012F8();
                v139 = sub_232401168();

                v170 = v135;
                v171 = v166;
                v140 = v135;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD914E0, &unk_232417F70);
                OUTLINED_FUNCTION_9_2();
                v141 = swift_dynamicCast();
                if (v141)
                {
                  __swift_destroy_boxed_opaque_existential_0Tm(v169);
                }

                v142 = sub_232263718(v123);
                if (v143)
                {
                  v144 = v142;
                }

                else
                {
                  v145 = v157;
                  sub_232400CB8();
                  v144 = sub_232400CA8();
                  v147 = v146;
                  (*(v158 + 8))(v145, v159);
                  if (!v147)
                  {
                    v144 = 0;
                  }
                }

                sub_232401168();
                OUTLINED_FUNCTION_40_1();

                v148 = sub_2324012E8();

                v149 = sub_2324012E8();

                v150 = v163;
                v151 = [v163 topicsInText:v139 isPlainText:v141 source:v123 cloudSync:v161 & 1 language:v144 topicAlgorithms:v148 namedEntityAlgorithms:1.0 weight:v149];

                sub_232252D0C(0, &qword_2814C7790, off_27896FD30);
                OUTLINED_FUNCTION_46_1();
                v152 = sub_232401268();

                sub_232252D4C(v152);
                v122 = v167;
                v121 = v168;
              }

              else
              {
              }
            }

            if (v122(v130))
            {
              v153 = OUTLINED_FUNCTION_47();
              sub_23225764C(v153, v154, v121, v160);
              sub_232257C68(v75, &qword_27DD914C8, &unk_232417F50);

              goto LABEL_61;
            }

            [objc_opt_self() interrupted];
          }

          else
          {

            [objc_opt_self() interrupted];
          }

          sub_232257C68(v75, &qword_27DD914C8, &unk_232417F50);
          goto LABEL_61;
        }

        if (qword_2814C7F68 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_2814C7F68);
        }

        v98 = sub_232401128();
        __swift_project_value_buffer(v98, qword_2814C8DC8);
        v99 = v58;
        v100 = sub_232401108();
        v101 = sub_232401368();

        if (os_log_type_enabled(v100, v101))
        {
          v102 = OUTLINED_FUNCTION_97();
          v103 = OUTLINED_FUNCTION_26_0();
          v169[0] = v103;
          *v102 = 136315138;
          v104 = [v99 uniqueId];
          sub_232401178();
          OUTLINED_FUNCTION_30_1();

          v105 = OUTLINED_FUNCTION_23_1();

          *(v102 + 4) = v105;
          OUTLINED_FUNCTION_15_0(&dword_23224A000, v106, v107, "Consumer: ignoring item with no content with id %s");
          __swift_destroy_boxed_opaque_existential_0Tm(v103);
          OUTLINED_FUNCTION_54();
          OUTLINED_FUNCTION_7_2();
        }

        v92 = [objc_opt_self() ignored];
      }

      else
      {
        v92 = [objc_opt_self() interrupted];
      }

      v92;

LABEL_61:
      OUTLINED_FUNCTION_18_0();
      return;
    }
  }

  v76 = v38;
  v168 = v36;
  if (qword_2814C7F68 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2814C7F68);
  }

  v77 = sub_232401128();
  OUTLINED_FUNCTION_31_1(v77, qword_2814C8DC8);
  v78 = v35;
  v79 = sub_232401108();
  v80 = sub_232401368();

  if (OUTLINED_FUNCTION_37_1())
  {
    swift_slowAlloc();
    v81 = OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_44_0(v81);
    *v76 = 136315394;
    v82 = [v78 uniqueId];
    v83 = sub_232401178();
    v85 = v84;

    sub_23224ED04(v83, v85, v169);

    OUTLINED_FUNCTION_25_1();
    v86 = sub_2322718AC(v76, v37, v168);
    if (v86)
    {
      v87 = v86;
      v88 = [v86 bundleId];

      v89 = sub_232401178();
      v91 = v90;
    }

    else
    {
      v91 = 0xEC00000044492065;
      v89 = 0x6C646E7542206F4ELL;
    }

    v93 = sub_23224ED04(v89, v91, v169);

    *(v76 + 14) = v93;
    OUTLINED_FUNCTION_35_0(&dword_23224A000, v94, v80, "Consumer: ignoring ineligible item %s from %s.");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_7_2();
  }

  [objc_opt_self() ignored];
  OUTLINED_FUNCTION_18_0();

  v97 = v95;
}

uint64_t sub_232276FE4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_69_0();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_232277044(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD914C8, &unk_232417F50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_2_5()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_7_2()
{

  JUMPOUT(0x2383841F0);
}

void OUTLINED_FUNCTION_15_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_16_1(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

void OUTLINED_FUNCTION_17_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_21_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_26_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_35_0(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_38_1()
{
}

uint64_t OUTLINED_FUNCTION_48_1()
{

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_49_1()
{

  return [v0 (v1 + 744)];
}

uint64_t sub_2322772A0(uint64_t a1)
{
  result = sub_2322773A8(&unk_2814C7780, type metadata accessor for PPNamedEntityAlgorithm, &unk_232417418);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2322772F8(uint64_t a1)
{
  result = sub_2322773A8(&qword_2814C77E8, type metadata accessor for PPTopicAlgorithm, &unk_2324173D8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_232277350(uint64_t a1)
{
  result = sub_2322773A8(&qword_2814C77C0, type metadata accessor for PPLocationAlgorithm, &unk_232417398);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2322773A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_2322773F0()
{
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_3_5(v1, *MEMORY[0x277D85DE8], v15, v17, v19, v20, v21, v22, v23, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD914F0, &qword_2324180A8);
  type metadata accessor for PPNamedEntityAlgorithm(0);
  OUTLINED_FUNCTION_2_6(v2, v3, v4, v5, v6, v7, v8, v9, v16, v18);
  result = swift_dynamicCast();
  if (result)
  {
    result = sub_23227762C(v0);
    if (result)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD91540, &qword_2324174D0);
      v11 = sub_232401248();

      v12 = OUTLINED_FUNCTION_0_7();
      v14 = [v12 v13];

      result = 0;
      if (!v14)
      {
        OUTLINED_FUNCTION_4_4();

        return swift_willThrow();
      }
    }
  }

  return result;
}

uint64_t sub_232277520(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_232401498();
  v3 = a1 + 32;
  if (!v2)
  {
    return v6;
  }

  while (1)
  {
    sub_2322533B0(v3, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91490, &unk_232417E50);
    sub_232277A74();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_232401478();
    sub_2324014A8();
    sub_2324014B8();
    sub_232401488();
    v3 += 40;
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_23227762C(uint64_t a1)
{
  v16 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_232401498();
  v3 = a1 + 32;
  if (!v2)
  {
    return v16;
  }

  while (1)
  {
    sub_2322533B0(v3, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91490, &unk_232417E50);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD91540, &qword_2324174D0);
    OUTLINED_FUNCTION_2_6(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_232401478();
    sub_2324014A8();
    sub_2324014B8();
    sub_232401488();
    v3 += 40;
    if (!--v2)
    {
      return v16;
    }
  }

  return 0;
}

id sub_2322777B0()
{
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_3_5(v1, *MEMORY[0x277D85DE8], v15, v17, v19, v20, v21, v22, v23, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD914F0, &qword_2324180A8);
  type metadata accessor for PPTopicAlgorithm(0);
  OUTLINED_FUNCTION_2_6(v2, v3, v4, v5, v6, v7, v8, v9, v16, v18);
  result = swift_dynamicCast();
  if (result)
  {
    result = sub_23227762C(v0);
    if (result)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD91540, &qword_2324174D0);
      v11 = sub_232401248();

      v12 = OUTLINED_FUNCTION_0_7();
      v14 = [v12 v13];

      result = 0;
      if (!v14)
      {
        OUTLINED_FUNCTION_4_4();

        return swift_willThrow();
      }
    }
  }

  return result;
}

id sub_232277948()
{
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_3_5(v1, *MEMORY[0x277D85DE8], v7, v8, v9, v10, v11, v12, v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD914F0, &qword_2324180A8);
  type metadata accessor for PPLocationAlgorithm(0);
  result = swift_dynamicCast();
  if (result)
  {
    result = sub_232277520(v0);
    if (result)
    {
      sub_232277A74();
      v3 = sub_232401248();

      v4 = OUTLINED_FUNCTION_0_7();
      v6 = [v4 v5];

      result = 0;
      if (!v6)
      {
        OUTLINED_FUNCTION_4_4();

        return swift_willThrow();
      }
    }
  }

  return result;
}

unint64_t sub_232277A74()
{
  result = qword_2814C77F0;
  if (!qword_2814C77F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814C77F0);
  }

  return result;
}

id sub_232277B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5, SEL *a6, SEL *a7)
{
  v19[1] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v9 = sub_232401168();
    v10 = sub_232401248();
    v19[0] = 0;
    v11 = [v7 *a5];
  }

  else
  {
    if (a3)
    {
      v15 = sub_232401168();
      v16 = sub_232401248();
      v19[0] = 0;
      v9 = [v7 *a6];

      v12 = v19[0];
      if (v9)
      {
        return v12;
      }

      goto LABEL_7;
    }

    v9 = sub_232401168();
    v19[0] = 0;
    v11 = [v7 *a7];
  }

  v12 = v19[0];
  if (v11)
  {
    return v12;
  }

LABEL_7:
  v17 = v12;
  OUTLINED_FUNCTION_4_4();

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_4_4()
{

  return sub_232400C18();
}

uint64_t SpotlightAttributes.init(score:featureVector:featureVectorVersion:scoredNamedEntities:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  *a4 = a5;
  *(a4 + 8) = result;
  *(a4 + 16) = a2;
  *(a4 + 24) = a6;
  *(a4 + 32) = a3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_232277D04(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_232277D44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_232277D9C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_4_5();
  v6 = v6 && v5 == 0xE700000000000000;
  if (v6 || (OUTLINED_FUNCTION_0_3(v4, 0xE700000000000000) & 1) != 0)
  {

    return 2;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_1_8();
    v10 = v6 && a2 == v9;
    if (v10 || (OUTLINED_FUNCTION_0_3(v8, v9) & 1) != 0)
    {

      return 4;
    }

    else
    {
      OUTLINED_FUNCTION_3_6();
      v12 = a1 == 0xD000000000000016 && v11 == a2;
      if (v12 || (OUTLINED_FUNCTION_0_3(0xD000000000000016, v11) & 1) != 0)
      {

        return 5;
      }

      else
      {
        v13 = OUTLINED_FUNCTION_2_7();
        v15 = v6 && a2 == v14;
        if (v15 || (OUTLINED_FUNCTION_0_3(v13, 0xEA00000000007469) & 1) != 0)
        {

          return 15;
        }

        else
        {
          OUTLINED_FUNCTION_3_6();
          if (a1 == 0xD000000000000012 && v16 == a2)
          {

            return 16;
          }

          else
          {
            v18 = OUTLINED_FUNCTION_0_3(0xD000000000000012, v16);

            if (v18)
            {
              return 16;
            }

            else
            {
              return 0;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_232277ED0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_2_7();
  v7 = v7 && v5 == v6;
  if (v7 || (OUTLINED_FUNCTION_0_3(v4, 0xEA00000000007469) & 1) != 0)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_3_6();
    v10 = a1 == 0xD000000000000018 && v9 == a2;
    if (v10 || (OUTLINED_FUNCTION_0_3(0xD000000000000018, v9) & 1) != 0)
    {

      return 6;
    }

    else
    {
      OUTLINED_FUNCTION_3_6();
      if (a1 == 0xD000000000000012 && v11 == a2)
      {

        return 10;
      }

      else
      {
        v13 = OUTLINED_FUNCTION_0_3(0xD000000000000012, v11);

        if (v13)
        {
          return 10;
        }

        else
        {
          return 0;
        }
      }
    }
  }
}

uint64_t sub_232277FB0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_6();
  v5 = v3 == 0xD000000000000012 && v4 == a2;
  if (v5 || (v6 = v3, (OUTLINED_FUNCTION_0_3(0xD000000000000012, v4) & 1) != 0))
  {

    return 11;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_5();
    v9 = v5 && a2 == 0xE700000000000000;
    if (v9 || (OUTLINED_FUNCTION_0_3(v8, 0xE700000000000000) & 1) != 0)
    {

      return 2;
    }

    else
    {
      v10 = OUTLINED_FUNCTION_1_8();
      v12 = v5 && a2 == v11;
      if (v12 || (OUTLINED_FUNCTION_0_3(v10, v11) & 1) != 0)
      {

        return 4;
      }

      else
      {
        OUTLINED_FUNCTION_3_6();
        if (v6 == 0xD000000000000016 && v13 == a2)
        {

          return 5;
        }

        else
        {
          v15 = OUTLINED_FUNCTION_0_3(0xD000000000000016, v13);

          if (v15)
          {
            return 5;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }
}

id sub_2322780EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v6[OBJC_IVAR____TtC32PersonalizationPortraitInternals8Consumer_topicStoreOverride] = a1;
  *&v6[OBJC_IVAR____TtC32PersonalizationPortraitInternals8Consumer_entityStoreOverride] = a2;
  *&v6[OBJC_IVAR____TtC32PersonalizationPortraitInternals8Consumer_locationStoreOverride] = a3;
  *&v6[OBJC_IVAR____TtC32PersonalizationPortraitInternals8Consumer_writebackDissector] = a4;
  *&v6[OBJC_IVAR____TtC32PersonalizationPortraitInternals8Consumer_entityDissector] = a5;
  *&v6[OBJC_IVAR____TtC32PersonalizationPortraitInternals8Consumer_topicDissector] = a6;
  v8.receiver = v6;
  v8.super_class = type metadata accessor for Consumer();
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_232278168(uint64_t a1)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v1 = sub_23224F160();
  if (v1)
  {
    v2 = v1;
    v3 = sub_232401168();
    v10 = OUTLINED_FUNCTION_2_8(v3, sel_deleteAllTopicsFromSourcesWithBundleId_deletedCount_error_, v4, v5, v6, v7, v8, v9, 0);

    v11 = v30[0];
    if (!v10)
    {
      goto LABEL_10;
    }

    v12 = v30[0];
  }

  v13 = sub_23224FDAC();
  if (v13)
  {
    v14 = v13;
    v15 = sub_232401168();
    v22 = OUTLINED_FUNCTION_2_8(v15, sel_deleteAllNamedEntitiesFromSourcesWithBundleId_deletedCount_error_, v16, v17, v18, v19, v20, v21, 0);

    v11 = v30[0];
    if (v22)
    {
      v23 = v30[0];
      goto LABEL_7;
    }

LABEL_10:
    v28 = v11;
    sub_232400C18();

    return swift_willThrow();
  }

LABEL_7:
  result = sub_23224FDC0();
  if (!result)
  {
    return result;
  }

  v25 = result;
  v26 = sub_232401168();
  v30[0] = 0;
  v27 = [v25 deleteAllLocationsFromSourcesWithBundleId:v26 deletedCount:0 error:v30];

  if (v27)
  {
    return v30[0];
  }

  v29 = v30[0];
  sub_232400C18();

  return swift_willThrow();
}

uint64_t sub_2322782FC(uint64_t a1)
{
  v1 = *(a1 + 32);

  LOBYTE(v1) = v1(v2);

  return v1 & 1;
}

id sub_23227833C(uint64_t a1, unint64_t a2)
{
  if (qword_2814C7F68 != -1)
  {
    swift_once();
  }

  v4 = sub_232401128();
  __swift_project_value_buffer(v4, qword_2814C8DC8);

  v5 = sub_232401108();
  v6 = sub_232401368();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_23224ED04(a1, a2, &v10);
    _os_log_impl(&dword_23224A000, v5, v6, "Consumer: beginning deletion from from %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x2383841F0](v8, -1, -1);
    MEMORY[0x2383841F0](v7, -1, -1);
  }

  return sub_232278168(a1);
}

uint64_t sub_232278638(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_232401178();
  v2(v3);
}

void sub_232278688(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void **a5)
{
  v43[1] = *MEMORY[0x277D85DE8];
  if (qword_2814C7F68 != -1)
  {
    swift_once();
  }

  v9 = sub_232401128();
  __swift_project_value_buffer(v9, qword_2814C8DC8);

  v10 = sub_232401108();
  v11 = sub_232401368();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v43[0] = v13;
    *v12 = 134218242;
    *(v12 + 4) = *(a3 + 16);

    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_23224ED04(a1, a2, v43);
    _os_log_impl(&dword_23224A000, v10, v11, "Consumer: beginning deletion from %ld documents from %s", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x2383841F0](v13, -1, -1);
    MEMORY[0x2383841F0](v12, -1, -1);
  }

  else
  {
  }

  sub_23224EE94(v14);
  v15 = sub_23224F160();
  if (v15)
  {
    v16 = v15;
    v17 = sub_232401168();
    v18 = sub_232401248();
    v43[0] = 0;
    v19 = [v16 deleteAllTopicsFromSourcesWithBundleId:v17 documentIds:v18 deletedCount:0 error:v43];

    v20 = v43[0];
    if (!v19)
    {
      goto LABEL_17;
    }

    v21 = v43[0];
  }

  v22 = sub_23224FDAC();
  if (v22)
  {
    v23 = v22;
    v24 = sub_232401168();
    v25 = sub_232401248();
    v43[0] = 0;
    v26 = [v23 deleteAllNamedEntitiesFromSourcesWithBundleId:v24 documentIds:v25 deletedCount:0 error:v43];

    v20 = v43[0];
    if (v26)
    {
      v27 = v43[0];
      goto LABEL_12;
    }

LABEL_17:
    v35 = v20;

    v36 = sub_232400C18();

    goto LABEL_20;
  }

LABEL_12:
  v28 = sub_23224FDC0();
  if (!v28)
  {

    return;
  }

  v29 = v28;
  v30 = sub_232401168();
  v31 = sub_232401248();

  v43[0] = 0;
  v32 = [v29 deleteAllLocationsFromSourcesWithBundleId:v30 documentIds:v31 deletedCount:0 error:v43];

  v33 = v43[0];
  if (v32)
  {

    v34 = v33;
    return;
  }

  v37 = v43[0];
  v36 = sub_232400C18();

LABEL_20:
  swift_willThrow();
  v38 = *a5;
  *a5 = v36;
  v39 = v36;

  v40 = sub_232401108();
  v41 = sub_232401348();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_23224A000, v40, v41, "Consumer: failed to delete data on request to delete by group IDs from ", v42, 2u);
    MEMORY[0x2383841F0](v42, -1, -1);
  }
}

uint64_t sub_232278AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = sub_232401178();
  v6 = v5;
  v7 = sub_2324012F8();
  v3(v4, v6, v7);
}

id Consumer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Consumer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Consumer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_232278CE8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id OUTLINED_FUNCTION_2_8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return [v9 a2];
}

id sub_232278DD0()
{
  v1 = objc_opt_self();
  if (!OUTLINED_FUNCTION_10_2(v1))
  {
    v2 = objc_opt_self();
    if (!OUTLINED_FUNCTION_10_2(v2))
    {
      v3 = objc_opt_self();
      OUTLINED_FUNCTION_10_2(v3);
    }
  }

  sub_232401178();
  OUTLINED_FUNCTION_19_1();
  if (qword_2814C7C08 != -1)
  {
    OUTLINED_FUNCTION_1_10(&qword_2814C7C08);
  }

  v4 = OUTLINED_FUNCTION_60();
  if (sub_23225375C(v4, v5, v6))
  {

    return 0;
  }

  else
  {
    v8 = [objc_opt_self() defaultPolicy];
    OUTLINED_FUNCTION_60();
    sub_232401168();
    OUTLINED_FUNCTION_9_3();

    v9 = OUTLINED_FUNCTION_7_3();
    v7 = [v9 v10];
  }

  return v7;
}

id sub_232278F00()
{
  v1 = objc_opt_self();
  OUTLINED_FUNCTION_10_2(v1);
  sub_232401178();
  OUTLINED_FUNCTION_19_1();
  if (qword_2814C7C08 != -1)
  {
    OUTLINED_FUNCTION_1_10(&qword_2814C7C08);
  }

  v2 = OUTLINED_FUNCTION_60();
  if (sub_23225375C(v2, v3, v4))
  {

    return 0;
  }

  else
  {
    v6 = [objc_opt_self() defaultPolicy];
    OUTLINED_FUNCTION_60();
    sub_232401168();
    OUTLINED_FUNCTION_9_3();

    v7 = OUTLINED_FUNCTION_7_3();
    v5 = [v7 v8];
  }

  return v5;
}

id sub_232278FF0()
{
  v1 = objc_opt_self();
  if (!OUTLINED_FUNCTION_10_2(v1))
  {
    v2 = objc_opt_self();
    if (!OUTLINED_FUNCTION_10_2(v2))
    {
      v3 = objc_opt_self();
      if (!OUTLINED_FUNCTION_10_2(v3))
      {
        v4 = objc_opt_self();
        OUTLINED_FUNCTION_10_2(v4);
      }
    }
  }

  sub_232401178();
  OUTLINED_FUNCTION_19_1();
  if (qword_2814C7C08 != -1)
  {
    OUTLINED_FUNCTION_1_10(&qword_2814C7C08);
  }

  v5 = OUTLINED_FUNCTION_60();
  if (sub_23225375C(v5, v6, v7))
  {

    return 0;
  }

  else
  {
    v9 = [objc_opt_self() defaultPolicy];
    OUTLINED_FUNCTION_60();
    sub_232401168();
    OUTLINED_FUNCTION_9_3();

    v10 = OUTLINED_FUNCTION_7_3();
    v8 = [v10 v11];
  }

  return v8;
}

id sub_232279140()
{
  v1 = objc_opt_self();
  if (!OUTLINED_FUNCTION_10_2(v1))
  {
    v2 = objc_opt_self();
    OUTLINED_FUNCTION_10_2(v2);
  }

  sub_232401178();
  OUTLINED_FUNCTION_19_1();
  if (qword_2814C7C08 != -1)
  {
    OUTLINED_FUNCTION_1_10(&qword_2814C7C08);
  }

  v3 = OUTLINED_FUNCTION_60();
  if (sub_23225375C(v3, v4, v5))
  {

    return 0;
  }

  else
  {
    v7 = [objc_opt_self() defaultPolicy];
    OUTLINED_FUNCTION_60();
    sub_232401168();
    OUTLINED_FUNCTION_9_3();

    v8 = OUTLINED_FUNCTION_7_3();
    v6 = [v8 v9];
  }

  return v6;
}

uint64_t sub_232279280()
{
  v1 = sub_232400CC8();
  OUTLINED_FUNCTION_40();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_67();
  v7 = v6 - v5;
  v8 = [v0 content];
  sub_232401178();

  v9 = sub_2324011C8();

  if (v9 < 51)
  {
    sub_232400CB8();
    v15 = sub_232400CA8();
    (*(v3 + 8))(v7, v1);
  }

  else
  {
    v10 = objc_opt_self();
    v11 = [v0 content];
    sub_232401178();
    OUTLINED_FUNCTION_7_1();

    v12 = sub_232279678(500, v7, v9);
    MEMORY[0x238382730](v12);
    OUTLINED_FUNCTION_7_1();

    v13 = sub_232401168();

    v14 = [v10 detectLanguageFromTextHeuristically_];

    if (v14)
    {
      v15 = sub_232401178();
    }

    else
    {
      return 0;
    }
  }

  return v15;
}

uint64_t sub_2322794D4(uint64_t (*a1)(void))
{
  v2 = sub_232400CC8();
  OUTLINED_FUNCTION_40();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_67();
  v8 = v7 - v6;
  a1();
  v9 = sub_2324011C8();

  if (v9 < 51)
  {
    sub_232400CB8();
    v16 = sub_232400CA8();
    (*(v4 + 8))(v8, v2);
  }

  else
  {
    v10 = objc_opt_self();
    v11 = a1();
    v13 = sub_232279678(500, v11, v12);
    MEMORY[0x238382730](v13);
    OUTLINED_FUNCTION_7_1();

    v14 = sub_232401168();

    v15 = [v10 detectLanguageFromTextHeuristically_];

    if (v15)
    {
      v16 = sub_232401178();
    }

    else
    {
      return 0;
    }
  }

  return v16;
}

uint64_t sub_232279678(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2324011D8();
    v3 = sub_232401228();

    return v3;
  }

  return result;
}

void sub_232279738()
{
  v0 = [objc_opt_self() defaultStore];
  v1 = [objc_opt_self() defaultStore];
  v2 = [objc_opt_self() defaultStore];
  v3 = objc_allocWithZone(type metadata accessor for StructuredConsumer());
  v4 = OUTLINED_FUNCTION_18_1();
  sub_2322797E4(v4, v5, v2);
  qword_2814C8DC0 = v6;
}

void sub_2322797E4(void *a1, void *a2, void *a3)
{
  v6 = sub_232400D88();
  OUTLINED_FUNCTION_40();
  v8 = v7;
  v10 = MEMORY[0x28223BE20](v9);
  v26 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - v12;
  v14 = objc_opt_self();
  v29 = a3;
  v28 = a1;
  v27 = a2;
  v15 = [v14 sharedInstance];
  v16 = [objc_opt_self() sharedInstance];
  v17 = sub_2322780EC(a1, a2, a3, 0, v15, v16);
  v18 = *(v8 + 104);
  v18(v13, *MEMORY[0x277D3A208], v6);
  sub_23227C6A4();
  LOBYTE(v15) = sub_232400DA8();
  v19 = *(v8 + 8);
  v19(v13, v6);
  if (v15 & 1) != 0 && (v20 = v26, v18(v26, *MEMORY[0x277D3A210], v6), v21 = sub_232400DA8(), v19(v20, v6), (v21))
  {
    if (qword_2814C7F68 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2814C7F68);
    }

    v22 = sub_232401128();
    __swift_project_value_buffer(v22, qword_2814C8DC8);
    v23 = sub_232401108();
    v24 = sub_232401368();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_23224A000, v23, v24, "StructuredConsumer: TextUnderstanding flags enabled, not registering for interactions.", v25, 2u);
      OUTLINED_FUNCTION_54();
    }
  }

  else
  {
    v23 = [objc_opt_self() defaultCoordinator];
    [v23 registerInteractionConsumer:v17 levelOfService:3];
  }

  OUTLINED_FUNCTION_18_0();
}

id sub_232279AE0(char *a1)
{
  v142 = *MEMORY[0x277D85DE8];
  v3 = sub_232400C98();
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_67();
  v6 = v5 - v4;
  v137 = sub_232400CC8();
  OUTLINED_FUNCTION_40();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_67();
  v136 = v11 - v10;
  v12 = [a1 interaction];
  v13 = [v12 intent];

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = v14;
    v133 = v6;
    v16 = OUTLINED_FUNCTION_4_6();
    if ((sub_2322519D0(v16) & 1) == 0)
    {
      v36 = [objc_opt_self() ignored];

      return v36;
    }

    v17 = sub_23227BA50(v15);
    v130 = a1;
    v131 = v13;
    v132 = v15;
    if (v17)
    {
      v18 = v17;
      v134 = v8;
      v19 = sub_232252E40(v17);
      v20 = 0;
      v21 = MEMORY[0x277D84F90];
      while (v19 != v20)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x2383829D0](v20, v18);
        }

        else
        {
          if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_94;
          }

          v22 = *(v18 + 8 * v20 + 32);
        }

        v23 = v22;
        a1 = (v20 + 1);
        if (__OFADD__(v20, 1))
        {
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
          goto LABEL_100;
        }

        v24 = sub_23227BB24(v22, &selRef_namedEntities);

        ++v20;
        if (v24)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_23227B410(0, v21[2] + 1, 1, v21);
          }

          v26 = v21[2];
          v25 = v21[3];
          if (v26 >= v25 >> 1)
          {
            v27 = OUTLINED_FUNCTION_14_1(v25);
            v21 = sub_23227B410(v27, v28, v29, v21);
          }

          v21[2] = v26 + 1;
          v21[v26 + 4] = v24;
          v20 = a1;
        }
      }

      v37 = 0;
      v38 = MEMORY[0x277D84F90];
      v140 = MEMORY[0x277D84F90];
      v39 = v21[2];
      while (v39 != v37)
      {
        if (v37 >= v21[2])
        {
          goto LABEL_95;
        }

        a1 = v37 + 1;

        sub_23227B778(v40);
        v37 = a1;
      }

      v41 = v140;
      v42 = v140[2];
      if (v42)
      {
        v139 = v38;
        sub_232401498();
        v43 = 0;
        v135 = (v134 + 8);
        v44 = (v140 + 6);
        while (v43 < v41[2])
        {
          v46 = *(v44 - 2);
          v45 = *(v44 - 1);
          v47 = *v44;
          v44 += 3;
          swift_bridgeObjectRetain_n();
          v48 = v47;
          sub_232400CB8();
          v49 = sub_232400CA8();
          v51 = v50;
          (*v135)(v136, v137);
          if (v51)
          {
            v52 = v49;
          }

          else
          {
            v52 = 0;
          }

          if (!v51)
          {
            v51 = 0xE000000000000000;
          }

          v53 = objc_allocWithZone(MEMORY[0x277D3A420]);
          v54 = sub_23227AEF8(v46, v45, 6, v52, v51);
          v140 = 0;
          v141 = 1;
          MEMORY[0x238382860](v48, &v140);
          OUTLINED_FUNCTION_16_2();
          ++v43;
          [objc_allocWithZone(MEMORY[0x277D3A498]) initWithItem:v54 score:v1];

          sub_232401478();
          a1 = *(v139 + 16);
          sub_2324014A8();
          sub_2324014B8();
          sub_232401488();
          if (v42 == v43)
          {

            v55 = v139;
            goto LABEL_40;
          }
        }

        goto LABEL_99;
      }

      v55 = MEMORY[0x277D84F90];
LABEL_40:
      v13 = v131;
      v15 = v132;
    }

    else
    {
      v55 = MEMORY[0x277D84F90];
    }

    v56 = sub_23227BA50(v15);
    if (v56)
    {
      v57 = v56;
      v138 = v55;
      v58 = sub_232252E40(v56);
      v59 = 0;
      v60 = MEMORY[0x277D84F90];
      while (v58 != v59)
      {
        if ((v57 & 0xC000000000000001) != 0)
        {
          v61 = MEMORY[0x2383829D0](v59, v57);
        }

        else
        {
          if (v59 >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_97;
          }

          v61 = *(v57 + 8 * v59 + 32);
        }

        v62 = v61;
        v63 = v59 + 1;
        if (__OFADD__(v59, 1))
        {
          goto LABEL_96;
        }

        v64 = sub_23227BB24(v61, &selRef_topics);

        ++v59;
        if (v64)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v60 = sub_23227B410(0, v60[2] + 1, 1, v60);
          }

          v66 = v60[2];
          v65 = v60[3];
          if (v66 >= v65 >> 1)
          {
            v67 = OUTLINED_FUNCTION_14_1(v65);
            v60 = sub_23227B410(v67, v68, v69, v60);
          }

          v60[2] = v66 + 1;
          v60[v66 + 4] = v64;
          v59 = v63;
        }
      }

      v70 = 0;
      v71 = MEMORY[0x277D84F90];
      v140 = MEMORY[0x277D84F90];
      v72 = v60[2];
      v13 = v131;
      v15 = v132;
      while (v72 != v70)
      {
        if (v70 >= v60[2])
        {
          goto LABEL_98;
        }

        v73 = v70 + 1;

        sub_23227B778(v74);
        v70 = v73;
      }

      v75 = v140;
      a1 = v140[2];
      if (a1)
      {
        sub_232401498();
        sub_232252D0C(0, &qword_27DD91250, 0x277D3A530);
        v76 = (v75 + 6);
        do
        {
          v77 = *(v76 - 2);
          v78 = *(v76 - 1);
          v79 = *v76;
          v76 += 3;
          swift_bridgeObjectRetain_n();
          v80 = v79;
          v81 = sub_232261EAC(v77, v78);
          v140 = 0;
          v141 = 1;
          MEMORY[0x238382860](v80, &v140);
          OUTLINED_FUNCTION_16_2();
          [objc_allocWithZone(MEMORY[0x277D3A498]) initWithItem:v81 score:v1];

          sub_232401478();
          sub_2324014A8();
          sub_2324014B8();
          sub_232401488();
          --a1;
        }

        while (a1);

        v82 = v71;
        v13 = v131;
        v15 = v132;
      }

      else
      {

        v82 = MEMORY[0x277D84F90];
      }

      v55 = v138;
    }

    else
    {
      v82 = MEMORY[0x277D84F90];
    }

    if (qword_2814C7F68 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2814C7F68);
    }

    v83 = sub_232401128();
    v84 = __swift_project_value_buffer(v83, qword_2814C8DC8);

    v85 = v13;
    v86 = sub_232401108();
    v87 = sub_232401368();
    if (os_log_type_enabled(v86, v87))
    {
      a1 = OUTLINED_FUNCTION_26_0();
      *a1 = 134218496;
      *(a1 + 4) = sub_232252E38(v55);

      v13 = 2048;
      *(a1 + 6) = 2048;
      *(a1 + 14) = sub_232252E38(v82);

      *(a1 + 11) = 2048;
      v88 = sub_23227BA50(v15);
      if (v88)
      {
        v13 = v88;
        v89 = sub_232252E38(v88);
      }

      else
      {
        v89 = 0;
      }

      *(a1 + 3) = v89;
      v90 = v85;

      _os_log_impl(&dword_23224A000, v86, v87, "StructuredConsumer: identified %ld entities and %ld topics in %ld Podcasts items", a1, 0x20u);
      OUTLINED_FUNCTION_54();
    }

    else
    {

      v90 = v85;
      v86 = v85;
    }

    v91 = v55;

    sub_232401178();
    OUTLINED_FUNCTION_12_2();
    sub_23227BAC0(v130);
    OUTLINED_FUNCTION_7_1();
    v92 = [v130 uniqueId];
    v93 = sub_232401178();
    v95 = v94;

    [v130 absoluteTimestamp];
    sub_232400C28();
    v96 = objc_allocWithZone(MEMORY[0x277D3A4D8]);
    v97 = OUTLINED_FUNCTION_18_1();
    v99 = sub_23227AF88(v97, v98, a1, v13, v93, v95, v133);
    if (sub_232252E40(v91))
    {
      v100 = sub_23224FDAC();
      if (v100)
      {
        v101 = v100;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD91540, &qword_2324174D0);
        v102 = sub_232401248();
        v140 = 0;
        v103 = [v101 donateNamedEntities:v102 source:v99 algorithm:13 cloudSync:0 sentimentScore:&v140 error:0.0];

        if (!v103)
        {
          v111 = v140;

LABEL_90:

          v118 = sub_232400C18();

          swift_willThrow();
          v119 = v118;
          v120 = v84;
          v121 = sub_232401108();
          v122 = sub_232401348();

          if (os_log_type_enabled(v121, v122))
          {
            v123 = swift_slowAlloc();
            v124 = OUTLINED_FUNCTION_26_0();
            v140 = v124;
            *v123 = 136315138;
            swift_getErrorValue();
            v125 = sub_232401588();
            v120 = v126;
            v127 = sub_23224ED04(v125, v126, &v140);

            *(v123 + 4) = v127;
            _os_log_impl(&dword_23224A000, v121, v122, "StructuredConsumer: failed to write podcast entities to the database: %s", v123, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v124);
            OUTLINED_FUNCTION_54();
            OUTLINED_FUNCTION_54();
          }

          objc_opt_self();
          OUTLINED_FUNCTION_9_3();
          v128 = sub_232400C08();
          v129 = [v120 failedWithError_];

          return v129;
        }

        v104 = v140;
      }

      v105 = sub_23224F160();
      if (v105)
      {
        v106 = v105;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD91540, &qword_2324174D0);
        v107 = sub_232401248();

        v140 = 0;
        v108 = [v106 donateTopics:v107 source:v99 algorithm:8 cloudSync:0 sentimentScore:0 exactMatchesInSourceText:&v140 error:0.0];

        v109 = v140;
        if (!v108)
        {
LABEL_89:
          v111 = v109;
          goto LABEL_90;
        }

        v110 = v140;
      }

      else
      {
      }

      v112 = sub_23224FDAC();
      if (v112)
      {
        v113 = v112;
        v140 = 0;
        v114 = [v112 flushDonationsWithError_];

        v109 = v140;
        if (v114)
        {
          v115 = v140;
          goto LABEL_87;
        }

        goto LABEL_89;
      }
    }

    else
    {
    }

LABEL_87:
    v116 = objc_opt_self();
    sub_232252E38(v91);

    v117 = sub_232401318();
    v36 = [v116 successWithNumberOfExtractions_];

    return v36;
  }

  if (qword_2814C7F68 != -1)
  {
LABEL_100:
    OUTLINED_FUNCTION_0(&qword_2814C7F68);
  }

  v30 = sub_232401128();
  __swift_project_value_buffer(v30, qword_2814C8DC8);
  v31 = sub_232401108();
  v32 = sub_232401328();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_23224A000, v31, v32, "StructuredConsumer: ignoring non PlayMedia intent from Podcasts.", v33, 2u);
    OUTLINED_FUNCTION_54();
  }

  v34 = [objc_opt_self() ignored];

  return v34;
}

void sub_23227A83C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91248, &qword_2324176E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v61 - v3;
  v5 = sub_232400C98();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_67();
  v8 = v7 - v6;
  sub_232253174();
  v10 = v9;
  v11 = sub_2324011C8();

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    OUTLINED_FUNCTION_0(&qword_2814C7F68);
    v44 = sub_232401128();
    __swift_project_value_buffer(v44, qword_2814C8DC8);
    v45 = v10;
    v46 = sub_232401108();
    v47 = sub_232401348();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = OUTLINED_FUNCTION_26_0();
      v68[0] = v49;
      *v48 = 136315138;
      swift_getErrorValue();
      v50 = sub_232401588();
      v52 = sub_23224ED04(v50, v51, v68);

      *(v48 + 4) = v52;
      _os_log_impl(&dword_23224A000, v46, v47, "StructuredConsumer: could not donate maps interactions to stores %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v49);
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_54();
    }

    v53 = objc_opt_self();
    v54 = sub_232400C08();
    [v53 failedWithError_];

    goto LABEL_22;
  }

  if (HIDWORD(v11))
  {
    goto LABEL_24;
  }

  v12 = sub_23227BE3C(a1);
  if (v13)
  {
    v14 = v12;
    v15 = v13;
    v16 = [a1 respondsToSelector_];
    v63 = v14;
    if ((v16 & 1) != 0 && (v17 = [a1 domainId]) != 0)
    {
      v18 = v17;
      v62 = sub_232401178();
      v20 = v19;
    }

    else
    {
      v62 = 0;
      v20 = 0;
    }

    v21 = [objc_allocWithZone(MEMORY[0x277D3A4E0]) initWithDwellTimeSeconds:0 lengthSeconds:0 lengthCharacters:v11 donationCount:0 contactHandleCount:0 flags:0];
    v22 = [a1 uniqueId];
    v23 = sub_232401178();
    v25 = v24;

    [a1 absoluteTimestamp];
    sub_232400C28();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
    v26 = sub_2322794D4(sub_232253174);
    v28 = v27;
    v29 = objc_allocWithZone(MEMORY[0x277D3A4D8]);
    sub_232253BEC(v63, v15, v62, v20, v23, v25, v8, v4, 0, v26, v28, v21, v61[0], v61[1], v62, v63, v64, v65, v66, v67, v68[0], v68[1], v68[2], v68[3], v68[4], v68[5], v68[6], v68[7]);
    if (v30)
    {
      v31 = v30;
      v32 = OUTLINED_FUNCTION_4_6();
      if (sub_2322519D0(v32))
      {
        v33 = objc_opt_self();
        v34 = [a1 interaction];
        v35 = [v34 intent];

        v36 = [v33 scoredEntitiesFromMapsIntent_];
        v37 = v36;
        if (!v36)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD91540, &qword_2324174D0);
          sub_232401268();
          v37 = sub_232401248();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD91540, &qword_2324174D0);
        v38 = sub_232401268();
        v39 = sub_232252E40(v38);

        if (v39)
        {
          v40 = [objc_allocWithZone(PPScoredExtractionSet) init];
          [v40 setEntities_];

          [v40 setEntityAlgorithm_];
          [v40 setSource_];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91478, &unk_232418240);
          v41 = swift_allocObject();
          *(v41 + 16) = xmmword_232417BB0;
          *(v41 + 32) = v40;
          v42 = *MEMORY[0x277CCA1B8];
          v43 = v40;
          sub_23225764C(v41, sub_232259614, 0, v42);
        }

        else
        {

          objc_opt_self();
          sub_232252D0C(0, &unk_2814C7760, 0x277CCABB0);
          v58 = sub_232401398();
          v59 = OUTLINED_FUNCTION_7_3();
          [v59 v60];
        }

LABEL_22:
        OUTLINED_FUNCTION_18_0();
        return;
      }
    }
  }

  [objc_opt_self() ignored];
  OUTLINED_FUNCTION_18_0();

  v57 = v55;
}

id sub_23227AE9C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StructuredConsumer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23227AEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_232401168();

  v8 = sub_232401168();

  v9 = [v5 initWithName:v7 category:a3 language:v8];

  return v9;
}

id sub_23227AF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v11 = sub_232401168();

  if (a4)
  {
    v12 = sub_232401168();
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_232401168();

  v14 = sub_232400C68();
  v15 = [v8 initWithBundleId:v11 groupId:v12 documentId:v13 date:v14];

  v16 = sub_232400C98();
  (*(*(v16 - 8) + 8))(a7, v16);
  return v15;
}

void *sub_23227B114(void *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
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
  v15 = sub_23227B540(v14, v13, a5, a6, a7);
  v16 = *(a8(0) - 8);
  if (v11)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    sub_23227B684(a4 + v17, v14, v15 + v17, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v15;
}

void *sub_23227B2D8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91550, &qword_2324181D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91558, &qword_2324181D8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_23227B410(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91560, &qword_2324181E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91568, &qword_2324181E8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_23227B540(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_23227B63C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_5_3(a3, result);
  }

  return result;
}

char *sub_23227B65C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_5_3(a3, result);
  }

  return result;
}

uint64_t sub_23227B684(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  if (a3 < a1 || (result = a4(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    a4(0);
    v10 = OUTLINED_FUNCTION_15_1();

    return MEMORY[0x2821FE828](v10);
  }

  else if (a3 != a1)
  {
    v9 = OUTLINED_FUNCTION_15_1();

    return MEMORY[0x2821FE820](v9);
  }

  return result;
}

void *sub_23227B778(uint64_t a1)
{
  v5 = a1;
  v6 = *(a1 + 16);
  v7 = *(*v2 + 16);
  result = (v7 + v6);
  if (__OFADD__(v7, v6))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_23227B9E8(result, 1);
  v1 = *v2;
  v9 = *(*v2 + 16);
  v10 = ((*(*v2 + 24) >> 1) - v9);
  result = sub_23227C4D8(v32, (*v2 + 24 * v9 + 32), v10, v5);
  if (result < v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (result)
  {
    v12 = v1[2];
    v13 = __OFADD__(v12, result);
    v14 = result + v12;
    if (v13)
    {
      __break(1u);
LABEL_13:
      v17 = (v11 + 64) >> 6;
      while (1)
      {
        v18 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_33;
        }

        if (v18 >= v17)
        {
          v34 = v4;
          v35 = 0;
          goto LABEL_7;
        }

        v19 = v10[v18];
        ++v4;
        if (v19)
        {
          v15 = (v19 - 1) & v19;
          v16 = __clz(__rbit64(v19)) | (v18 << 6);
          v4 = v18;
          goto LABEL_18;
        }
      }
    }

    v1[2] = v14;
  }

  v5 = v32[0];
  if (result != v10)
  {
LABEL_7:
    result = sub_23224F158(v5);
    *v2 = v1;
    return result;
  }

LABEL_10:
  v3 = v1[2];
  v10 = v32[1];
  v11 = v33;
  v4 = v34;
  v29 = v33;
  if (!v35)
  {
    goto LABEL_13;
  }

  v15 = (v35 - 1) & v35;
  v16 = __clz(__rbit64(v35)) | (v34 << 6);
  v17 = (v33 + 64) >> 6;
LABEL_18:
  v20 = (*(v5 + 48) + 16 * v16);
  v21 = v20[1];
  v31 = *v20;
  v22 = *(*(v5 + 56) + 8 * v16);

  result = v22;
LABEL_19:
  v23 = v1[3];
  v30 = v23 >> 1;
  if ((v23 >> 1) < v3 + 1)
  {
    result = sub_23227B2D8((v23 > 1), v3 + 1, 1, v1);
    v1 = result;
    v30 = result[3] >> 1;
  }

  while (1)
  {
    if (v3 >= v30)
    {
      v1[2] = v3;
      goto LABEL_19;
    }

    v24 = &v1[3 * v3 + 4];
    *v24 = v31;
    v24[1] = v21;
    v24[2] = v22;
    ++v3;
    if (!v15)
    {
      break;
    }

    v25 = v4;
LABEL_28:
    v26 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v27 = v26 | (v25 << 6);
    v28 = (*(v5 + 48) + 16 * v27);
    v21 = v28[1];
    v31 = *v28;
    v22 = *(*(v5 + 56) + 8 * v27);

    result = v22;
  }

  while (1)
  {
    v25 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v25 >= v17)
    {
      v33 = v29;
      v34 = v4;
      v35 = 0;
      v1[2] = v3;
      goto LABEL_7;
    }

    v15 = v10[v25];
    ++v4;
    if (v15)
    {
      v4 = v25;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

void *sub_23227B9E8(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > v5[3] >> 1)
  {
    if (v5[2] <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = v5[2];
    }

    result = sub_23227B2D8(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

uint64_t sub_23227BA50(void *a1)
{
  v1 = [a1 mediaItems];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_232252D0C(0, &qword_27DD91570, 0x277CD3DB8);
  v3 = sub_232401268();

  return v3;
}

uint64_t sub_23227BAC0(void *a1)
{
  v1 = [a1 domainId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_232401178();

  return v3;
}

uint64_t sub_23227BB24(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  sub_232252D0C(0, &unk_2814C7760, 0x277CCABB0);
  v4 = sub_232401148();

  return v4;
}

uint64_t sub_23227BBA0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_232401518();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_232252E38(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_232252D0C(0, &qword_2814C7800, 0x277CF19E8);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_23227C650(&qword_2814C7818, &unk_27DD915B0, &unk_232418220);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD915B0, &unk_232418220);
          v9 = sub_23227BD24(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_23227BD24(void *a1, uint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_232258704(a3);
  v7 = OUTLINED_FUNCTION_7_3();
  sub_232258710(v7, v8, v9);
  if (v6)
  {
    v10 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v10 = MEMORY[0x2383829D0](a2, a3);
  }

  *a1 = v10;
  return sub_23227BDAC;
}

void (*sub_23227BDB4(void *a1, uint64_t a2, uint64_t a3))(id *)
{
  v6 = sub_232258704(a3);
  v7 = OUTLINED_FUNCTION_7_3();
  sub_232258710(v7, v8, v9);
  if (v6)
  {
    v10 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v10 = MEMORY[0x2383829D0](a2, a3);
  }

  *a1 = v10;
  return sub_23227C700;
}

uint64_t sub_23227BE3C(void *a1)
{
  v2 = objc_opt_self();
  if (!OUTLINED_FUNCTION_8_2(v2))
  {
    v3 = objc_opt_self();
    if (!OUTLINED_FUNCTION_8_2(v3))
    {
      v4 = objc_opt_self();
      if (!OUTLINED_FUNCTION_8_2(v4))
      {
        v5 = objc_opt_self();
        if (!OUTLINED_FUNCTION_8_2(v5))
        {
          v6 = objc_opt_self();
          if (!OUTLINED_FUNCTION_8_2(v6))
          {
            v7 = objc_opt_self();
            if (!OUTLINED_FUNCTION_8_2(v7))
            {
              v9 = objc_opt_self();
              v10 = OUTLINED_FUNCTION_8_2(v9);
              if (!v10)
              {
                v14 = objc_opt_self();
                v15 = OUTLINED_FUNCTION_8_2(v14);
                if (v15)
                {
                  v16 = v15;
                  v12 = a1;
                  v13 = [v16 bundleID];
                  goto LABEL_17;
                }

                v17 = objc_opt_self();
                v10 = OUTLINED_FUNCTION_8_2(v17);
                if (!v10)
                {
                  v18 = objc_opt_self();
                  v19 = OUTLINED_FUNCTION_8_2(v18);
                  v20 = a1;
                  v12 = v20;
                  if (v19)
                  {
                    v13 = [v19 bundleId];
                  }

                  else
                  {
                    v13 = [v20 bundleId];
                  }

                  goto LABEL_17;
                }
              }

              v11 = v10;
              v12 = a1;
              v13 = [v11 bundleId];
LABEL_17:
              v21 = v13;
              sub_232401178();
              OUTLINED_FUNCTION_12_2();

              return OUTLINED_FUNCTION_18_1();
            }
          }
        }
      }
    }
  }

  sub_232401178();
  OUTLINED_FUNCTION_12_2();
  return OUTLINED_FUNCTION_18_1();
}

uint64_t sub_23227C038()
{
  v0 = objc_opt_self();
  OUTLINED_FUNCTION_8_2(v0);

  return sub_232401178();
}

uint64_t sub_23227C094()
{
  v0 = objc_opt_self();
  if (!OUTLINED_FUNCTION_8_2(v0))
  {
    v1 = objc_opt_self();
    if (!OUTLINED_FUNCTION_8_2(v1))
    {
      v2 = objc_opt_self();
      OUTLINED_FUNCTION_8_2(v2);
    }
  }

  return sub_232401178();
}

uint64_t sub_23227C130()
{
  v0 = objc_opt_self();
  if (!OUTLINED_FUNCTION_8_2(v0))
  {
    v1 = objc_opt_self();
    if (!OUTLINED_FUNCTION_8_2(v1))
    {
      v2 = objc_opt_self();
      if (!OUTLINED_FUNCTION_8_2(v2))
      {
        v3 = objc_opt_self();
        OUTLINED_FUNCTION_8_2(v3);
      }
    }
  }

  return sub_232401178();
}

uint64_t sub_23227C1EC()
{
  v0 = objc_opt_self();
  if (!OUTLINED_FUNCTION_8_2(v0))
  {
    v1 = objc_opt_self();
    OUTLINED_FUNCTION_8_2(v1);
  }

  return sub_232401178();
}

uint64_t sub_23227C268()
{
  v0 = objc_opt_self();
  if (!OUTLINED_FUNCTION_8_2(v0))
  {
    v1 = objc_opt_self();
    if (!OUTLINED_FUNCTION_8_2(v1))
    {
      v2 = objc_opt_self();
      if (!OUTLINED_FUNCTION_8_2(v2))
      {
        v3 = objc_opt_self();
        if (!OUTLINED_FUNCTION_8_2(v3))
        {
          v4 = objc_opt_self();
          OUTLINED_FUNCTION_8_2(v4);
        }
      }
    }
  }

  return sub_232401178();
}

uint64_t sub_23227C344(void *a1)
{
  v2 = objc_opt_self();
  if (OUTLINED_FUNCTION_8_2(v2) || (v3 = objc_opt_self(), OUTLINED_FUNCTION_8_2(v3)) || (v4 = objc_opt_self(), OUTLINED_FUNCTION_8_2(v4)) || (v5 = objc_opt_self(), OUTLINED_FUNCTION_8_2(v5)) || (v6 = objc_opt_self(), OUTLINED_FUNCTION_8_2(v6)) || (v7 = objc_opt_self(), OUTLINED_FUNCTION_8_2(v7)))
  {
    sub_232401178();
    OUTLINED_FUNCTION_12_2();
  }

  else
  {
    v9 = objc_opt_self();
    v10 = OUTLINED_FUNCTION_8_2(v9);
    if (v10)
    {
      v11 = v10;
      v12 = a1;
      v13 = [v11 bundleId];
    }

    else
    {
      v14 = objc_opt_self();
      v15 = OUTLINED_FUNCTION_8_2(v14);
      v16 = a1;
      v12 = v16;
      if (v15)
      {
        v13 = [v15 bundleID];
      }

      else
      {
        v13 = [v16 bundleId];
      }
    }

    v17 = v13;
    sub_232401178();
    OUTLINED_FUNCTION_12_2();
  }

  return OUTLINED_FUNCTION_18_1();
}

void *sub_23227C4D8(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_21:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    v22 = -1 << *(a4 + 32);
    v14 = (63 - v7) >> 6;
    while (1)
    {
      if (v12 >= v10)
      {
        goto LABEL_24;
      }

      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_25;
      }

      if (!v9)
      {
        while (1)
        {
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v16);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v16 = v13;
LABEL_15:
      v17 = __clz(__rbit64(v9)) | (v16 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v15 == v10)
      {
        break;
      }

      v11 += 3;

      result = v20;
      v12 = v15;
      v13 = v16;
    }

    v21 = v20;
    v13 = v16;
LABEL_19:
    v7 = v22;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_23227C650(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_23227C6A4()
{
  result = qword_2814C7FA0;
  if (!qword_2814C7FA0)
  {
    sub_232400D88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814C7FA0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13_0(uint64_t a1)
{

  return sub_232401528();
}

void static HarvestingSystem.start()()
{
  if (qword_2814C7F68 != -1)
  {
    swift_once();
  }

  v0 = sub_232401128();
  __swift_project_value_buffer(v0, qword_2814C8DC8);
  v1 = sub_232401108();
  v2 = sub_232401328();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_23224A000, v1, v2, "HarvestingSystem: beginning bring up of consumers", v3, 2u);
    MEMORY[0x2383841F0](v3, -1, -1);
  }

  if (qword_2814C7F60 != -1)
  {
    swift_once();
  }

  v4 = qword_2814C8DC0;
  if (qword_2814C7F50 != -1)
  {
    swift_once();
  }

  v5 = qword_2814C8DB8;
  if (qword_2814C7F48 != -1)
  {
    swift_once();
  }

  v6 = qword_2814C8DB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD91478, &unk_232418240);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_232418230;
  *(v7 + 32) = v4;
  *(v7 + 40) = v5;
  *(v7 + 48) = v6;
  v8 = v4;
  v9 = v5;
  v10 = v6;

  oslog = sub_232401108();
  v11 = sub_232401328();
  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    v13 = sub_232252E40(v7);

    *(v12 + 4) = v13;

    _os_log_impl(&dword_23224A000, oslog, v11, "HarvestingSystem: completed consumer bring up of %ld consumers", v12, 0xCu);
    MEMORY[0x2383841F0](v12, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }
}

id HarvestingSystem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HarvestingSystem.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HarvestingSystem();
  return objc_msgSendSuper2(&v2, sel_init);
}

id HarvestingSystem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HarvestingSystem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t PPM2DatabaseRemoteRecordCountReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v21 = PBReaderReadString();
        v22 = 8;
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 1)
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 32) |= 1u;
            while (1)
            {
              v27 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v27 & 0x7F) << v14;
              if ((v27 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_37;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_37:
            *(a1 + 16) = v20;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_38;
        }

        v21 = PBReaderReadString();
        v22 = 24;
      }

      v23 = *(a1 + v22);
      *(a1 + v22) = v21;

LABEL_38:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t PPM2NamedEntitiesPerDonationReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v33 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 4)
      {
        if (v13 == 5)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          *(a1 + 32) |= 1u;
          while (1)
          {
            v34 = 0;
            v28 = [a2 position] + 1;
            if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
            {
              v30 = [a2 data];
              [v30 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v27 |= (v34 & 0x7F) << v25;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v11 = v26++ >= 9;
            if (v11)
            {
              v24 = 0;
              goto LABEL_52;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v27;
          }

LABEL_52:
          v31 = 16;
          goto LABEL_53;
        }

        if (v13 != 6)
        {
LABEL_25:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_54;
        }

        v14 = PBReaderReadString();
        v15 = 8;
      }

      else
      {
        if (v13 == 3)
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 32) |= 2u;
          while (1)
          {
            v35 = 0;
            v21 = [a2 position] + 1;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
            {
              v23 = [a2 data];
              [v23 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v20 |= (v35 & 0x7F) << v18;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v11 = v19++ >= 9;
            if (v11)
            {
              v24 = 0;
              goto LABEL_48;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v20;
          }

LABEL_48:
          v31 = 20;
LABEL_53:
          *(a1 + v31) = v24;
          goto LABEL_54;
        }

        if (v13 != 4)
        {
          goto LABEL_25;
        }

        v14 = PBReaderReadString();
        v15 = 24;
      }

      v16 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_54:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_232280830(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void ___getNotificationDispatchQueue_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_BACKGROUND, 0);
  v3 = dispatch_queue_create("com.apple.proactive.PersonalizationPortrait.PPNamedEntityDissector.NotificationQueue", v2);
  v4 = _getNotificationDispatchQueue__pasExprOnceResult;
  _getNotificationDispatchQueue__pasExprOnceResult = v3;

  objc_autoreleasePoolPop(v0);
}

uint64_t PPSocialHighlightFeedbackReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v30[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v30 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v30[0] & 0x7F) << v5;
        if ((v30[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 == 3)
      {
        *(a1 + 48) |= 1u;
        v30[0] = 0;
        v23 = [a2 position] + 8;
        if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 8, v24 <= objc_msgSend(a2, "length")))
        {
          v27 = [a2 data];
          [v27 getBytes:v30 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v30[0];
        goto LABEL_49;
      }

      if (v13 != 4)
      {
        if (v13 == 5)
        {
          v14 = PBReaderReadString();
          v15 = 40;
LABEL_40:
          v26 = *(a1 + v15);
          *(a1 + v15) = v14;

          goto LABEL_49;
        }

LABEL_41:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_49;
      }

      v25 = objc_alloc_init(PPRankableSocialHighlight);
      objc_storeStrong((a1 + 32), v25);
      v30[0] = 0;
      v30[1] = 0;
      if (!PBReaderPlaceMark() || !PPRankableSocialHighlightReadFrom(v25, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_49:
      v28 = [a2 position];
      if (v28 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v14 = PBReaderReadString();
      v15 = 16;
      goto LABEL_40;
    }

    if (v13 == 2)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      *(a1 + 48) |= 2u;
      while (1)
      {
        LOBYTE(v30[0]) = 0;
        v19 = [a2 position] + 1;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:v30 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v18 |= (v30[0] & 0x7F) << v16;
        if ((v30[0] & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v11 = v17++ >= 9;
        if (v11)
        {
          v22 = 0;
          goto LABEL_46;
        }
      }

      if ([a2 hasError])
      {
        v22 = 0;
      }

      else
      {
        v22 = v18;
      }

LABEL_46:
      *(a1 + 24) = v22;
      goto LABEL_49;
    }

    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

void std::priority_queue<PPTokenCount * {__strong},std::vector<PPTokenCount * {__strong}>,PPTokenCountCompareLess>::pop(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = (v3 - *a1) >> 3;
  if (v4 >= 2)
  {
    v5 = 0;
    v20 = *v2;
    *v2 = 0;
    v6 = v2;
    do
    {
      v7 = &v6[v5 + 1];
      v8 = (2 * v5) | 1;
      v9 = 2 * v5 + 2;
      if (v9 < v4)
      {
        v10 = PPTokenCountCompareLess::operator()(*v7, v6[v5 + 2]);
        if (v10)
        {
          v11 = 8;
        }

        else
        {
          v11 = 0;
        }

        v7 = (v7 + v11);
        if (v10)
        {
          v8 = v9;
        }
      }

      v12 = *v7;
      *v7 = 0;
      v13 = *v6;
      *v6 = v12;

      v6 = v7;
      v5 = v8;
    }

    while (v8 <= ((v4 - 2) >> 1));
    v14 = (v3 - 8);
    if ((v3 - 8) == v7)
    {
      v18 = *v7;
      *v7 = v20;
    }

    else
    {
      v15 = *v14;
      *v14 = 0;
      v16 = *v7;
      *v7 = v15;

      v17 = *v14;
      *v14 = v20;

      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,PPTokenCountCompareLess &,std::__wrap_iter<PPTokenCount * {__strong}*>>(v2, (v7 + 1), v7 + 1 - v2);
    }
  }

  v19 = *(a1 + 8);

  *(a1 + 8) = v19 - 8;
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,PPTokenCountCompareLess &,std::__wrap_iter<PPTokenCount * {__strong}*>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = v3 >> 1;
    v6 = (a1 + 8 * (v3 >> 1));
    v7 = (a2 - 8);
    if (PPTokenCountCompareLess::operator()(*v6, *(a2 - 8)))
    {
      v8 = *v7;
      *v7 = 0;
      do
      {
        v9 = v6;
        v10 = *v6;
        *v6 = 0;
        v11 = *v7;
        *v7 = v10;

        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = (a1 + 8 * v5);
        v7 = v9;
      }

      while (PPTokenCountCompareLess::operator()(*v6, v8));
      v12 = *v9;
      *v9 = v8;
    }
  }
}

BOOL PPTokenCountCompareLess::operator()(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 count];
  v6 = v5 < [v4 count];

  return v6;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_2789710F8, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

uint64_t PPM2LocationItemDonationReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v54 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v54 & 0x7F) << v5;
        if ((v54 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 7)
      {
        break;
      }

      if (v13 <= 9)
      {
        if (v13 == 8)
        {
          v38 = 0;
          v39 = 0;
          v40 = 0;
          *(a1 + 44) |= 2u;
          while (1)
          {
            v55 = 0;
            v41 = [a2 position] + 1;
            if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
            {
              v43 = [a2 data];
              [v43 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v40 |= (v55 & 0x7F) << v38;
            if ((v55 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v11 = v39++ >= 9;
            if (v11)
            {
              v36 = 0;
              goto LABEL_83;
            }
          }

          if ([a2 hasError])
          {
            v36 = 0;
          }

          else
          {
            v36 = v40;
          }

LABEL_83:
          v51 = 24;
LABEL_84:
          *(a1 + v51) = v36;
          goto LABEL_94;
        }

        if (v13 != 9)
        {
          goto LABEL_54;
        }

        v14 = PBReaderReadString();
        v15 = 16;
LABEL_75:
        v50 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_94;
      }

      if (v13 == 10)
      {
        v44 = 0;
        v45 = 0;
        v46 = 0;
        *(a1 + 44) |= 0x10u;
        while (1)
        {
          v57 = 0;
          v47 = [a2 position] + 1;
          if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
          {
            v49 = [a2 data];
            [v49 getBytes:&v57 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v46 |= (v57 & 0x7F) << v44;
          if ((v57 & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v11 = v45++ >= 9;
          if (v11)
          {
            LOBYTE(v22) = 0;
            goto LABEL_86;
          }
        }

        v22 = (v46 != 0) & ~[a2 hasError];
LABEL_86:
        v52 = 41;
LABEL_93:
        *(a1 + v52) = v22;
        goto LABEL_94;
      }

      if (v13 != 11)
      {
LABEL_54:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_94;
      }

      v23 = 0;
      v24 = 0;
      v25 = 0;
      *(a1 + 44) |= 1u;
      while (1)
      {
        v59 = 0;
        v26 = [a2 position] + 1;
        if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
        {
          v28 = [a2 data];
          [v28 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v25 |= (v59 & 0x7F) << v23;
        if ((v59 & 0x80) == 0)
        {
          break;
        }

        v23 += 7;
        v11 = v24++ >= 9;
        if (v11)
        {
          v29 = 0;
          goto LABEL_90;
        }
      }

      if ([a2 hasError])
      {
        v29 = 0;
      }

      else
      {
        v29 = v25;
      }

LABEL_90:
      *(a1 + 8) = v29;
LABEL_94:
      v53 = [a2 position];
      if (v53 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 3)
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
      *(a1 + 44) |= 4u;
      while (1)
      {
        v56 = 0;
        v33 = [a2 position] + 1;
        if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
        {
          v35 = [a2 data];
          [v35 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v32 |= (v56 & 0x7F) << v30;
        if ((v56 & 0x80) == 0)
        {
          break;
        }

        v30 += 7;
        v11 = v31++ >= 9;
        if (v11)
        {
          v36 = 0;
          goto LABEL_79;
        }
      }

      if ([a2 hasError])
      {
        v36 = 0;
      }

      else
      {
        v36 = v32;
      }

LABEL_79:
      v51 = 28;
      goto LABEL_84;
    }

    if (v13 != 6)
    {
      if (v13 != 7)
      {
        goto LABEL_54;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      *(a1 + 44) |= 8u;
      while (1)
      {
        v58 = 0;
        v19 = [a2 position] + 1;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v18 |= (v58 & 0x7F) << v16;
        if ((v58 & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v11 = v17++ >= 9;
        if (v11)
        {
          LOBYTE(v22) = 0;
          goto LABEL_92;
        }
      }

      v22 = (v18 != 0) & ~[a2 hasError];
LABEL_92:
      v52 = 40;
      goto LABEL_93;
    }

    v14 = PBReaderReadString();
    v15 = 32;
    goto LABEL_75;
  }

  return [a2 hasError] ^ 1;
}

void sub_232289CBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t PPM2FeedbackPortraitRegisteredReadFrom(_BYTE *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v40[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v40[0] & 0x7F) << v5;
        if ((v40[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 4)
      {
        break;
      }

      if (v13 > 7)
      {
        if (v13 == 8)
        {
          v28 = PBReaderReadString();
          v29 = 8;
          goto LABEL_52;
        }

        if (v13 == 9)
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          a1[52] |= 2u;
          while (1)
          {
            LOBYTE(v40[0]) = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:v40 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v40[0] & 0x7F) << v22;
            if ((v40[0] & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v11 = v23++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_65;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v24;
          }

LABEL_65:
          v37 = 28;
LABEL_74:
          *&a1[v37] = v21;
          goto LABEL_75;
        }

LABEL_48:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_75;
      }

      if (v13 == 5)
      {
        v28 = PBReaderReadString();
        v29 = 32;
        goto LABEL_52;
      }

      if (v13 != 7)
      {
        goto LABEL_48;
      }

      v14 = objc_alloc_init(PPM2SourceAlgPair);
      [a1 addRecords:v14];
      v40[0] = 0;
      v40[1] = 0;
      if (!PBReaderPlaceMark() || !PPM2SourceAlgPairReadFrom(v14, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_75:
      v38 = [a2 position];
      if (v38 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 1:
        v28 = PBReaderReadString();
        v29 = 16;
LABEL_52:
        v30 = *&a1[v29];
        *&a1[v29] = v28;

        goto LABEL_75;
      case 3:
        v31 = 0;
        v32 = 0;
        v33 = 0;
        a1[52] |= 1u;
        while (1)
        {
          LOBYTE(v40[0]) = 0;
          v34 = [a2 position] + 1;
          if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
          {
            v36 = [a2 data];
            [v36 getBytes:v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v33 |= (v40[0] & 0x7F) << v31;
          if ((v40[0] & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v11 = v32++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_73;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v33;
        }

LABEL_73:
        v37 = 24;
        goto LABEL_74;
      case 4:
        v15 = 0;
        v16 = 0;
        v17 = 0;
        a1[52] |= 4u;
        while (1)
        {
          LOBYTE(v40[0]) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v40[0] & 0x7F) << v15;
          if ((v40[0] & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_69;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v17;
        }

LABEL_69:
        v37 = 48;
        goto LABEL_74;
    }

    goto LABEL_48;
  }

  return [a2 hasError] ^ 1;
}