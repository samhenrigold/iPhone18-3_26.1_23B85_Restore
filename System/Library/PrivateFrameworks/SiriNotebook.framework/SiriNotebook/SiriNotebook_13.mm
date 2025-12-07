uint64_t sub_268224B98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = sub_2683CD418();
    OUTLINED_FUNCTION_1();
    (*(v7 + 16))(a2, a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5, v6);
    v8 = a2;
    v9 = 0;
    v10 = v6;
  }

  else
  {
    v10 = sub_2683CD418();
    v8 = a2;
    v9 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v8, v9, 1, v10);
}

uint64_t sub_268224C58(uint64_t a1)
{
  if (*(a1 + 16))
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_268224C8C(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t))
{
  v27 = a2;
  v26[0] = a7;
  v26[1] = a8;
  v30 = a9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FCD0, &qword_2683DE620);
  v13 = OUTLINED_FUNCTION_23(v12);
  MEMORY[0x28223BE20](v13);
  v15 = v26 - v14;
  sub_2683CCB78();
  OUTLINED_FUNCTION_1_7();
  v28 = v17;
  v29 = v16;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_14_3();
  v20 = v19 - v18;
  sub_2682228F8(a4);
  sub_2683CCB58();
  v30(v20, a4);
  v30 = a1;
  if (!a1)
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FCD8, &qword_2683DE628);
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v25);
    goto LABEL_6;
  }

  result = sub_2683CCB68();
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else if (!__OFSUB__(a5, 1))
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FCD8, &qword_2683DE628);
    v23 = &v15[*(v22 + 48)];
    sub_2683CCB58();
    v24 = v27;
    *v23 = v30;
    v23[1] = v24;
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v22);
LABEL_6:
    swift_unknownObjectRetain();
    sub_268223518();

    sub_268228838(v15);
    (*(v28 + 8))(v20, v29);
    return OUTLINED_FUNCTION_41_6();
  }

  __break(1u);
  return result;
}

void sub_268224EF8()
{
  v1 = v0;
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v2 = sub_2683CF7E8();
  __swift_project_value_buffer(v2, qword_28027C958);

  oslog = sub_2683CF7C8();
  v3 = sub_2683CFE68();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    v6 = *(v1 + 16);
    v7 = *(v1 + 24);
    sub_2682291F0(v6, *(v1 + 24));
    v8 = sub_26822741C(v6, v7);
    v10 = v9;

    sub_2682286D4(v6, v7);
    v11 = sub_2681610A0(v8, v10, &v13);

    *(v4 + 4) = v11;
    _os_log_impl(&dword_2680EB000, oslog, v3, "[SFNI.ReadingFlow] transitioned to state %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x26D617A40](v5, -1, -1);
    MEMORY[0x26D617A40](v4, -1, -1);
  }

  else
  {
  }
}

void *sub_2682250CC()
{
  v1 = *(v0 + 16);
  sub_2682291F0(v1, *(v0 + 24));
  return v1;
}

void sub_268225104(void *a1, uint64_t a2)
{
  v3 = a2;
  v5 = *(v2 + 16);
  *(v2 + 16) = a1;
  v6 = *(v2 + 24);
  *(v2 + 24) = a2;
  sub_2682291F0(a1, a2);
  sub_2682286D4(v5, v6);
  sub_268224EF8();

  sub_2682286D4(a1, v3);
}

void sub_268225174()
{
  OUTLINED_FUNCTION_30_0();
  sub_2683CCC18();
  OUTLINED_FUNCTION_1_7();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_14_3();
  v3 = v2 - v1;
  v4 = sub_2683CCBD8();
  OUTLINED_FUNCTION_1_7();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14_3();
  v10 = v9 - v8;
  sub_2683CCB88();
  v11 = OUTLINED_FUNCTION_44_7();
  if (v12(v11) != *MEMORY[0x277D5C150])
  {
    v24 = OUTLINED_FUNCTION_44_7();
    v25(v24);
    goto LABEL_17;
  }

  v13 = OUTLINED_FUNCTION_44_7();
  v14(v13);
  (*(v6 + 32))(v10, v3, v4);
  v15 = sub_2683CCBB8();
  v17 = v16;
  if (qword_28024CB48 != -1)
  {
    swift_once();
  }

  v18 = qword_280253420;
  v19 = unk_280253428;
  v32 = qword_280253410;
  v33 = *algn_280253418;

  MEMORY[0x26D616690](46, 0xE100000000000000);
  MEMORY[0x26D616690](v18, v19);
  if (v15 == v32 && v17 == v33)
  {
  }

  else
  {
    OUTLINED_FUNCTION_44_7();
    v21 = sub_2683D0598();

    if ((v21 & 1) == 0)
    {
      v22 = OUTLINED_FUNCTION_69();
      v23(v22);
      goto LABEL_17;
    }
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v26 = sub_2683CF7E8();
  OUTLINED_FUNCTION_67(v26, qword_28027C958);
  v27 = sub_2683CF7C8();
  v28 = sub_2683CFE98();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = OUTLINED_FUNCTION_21_5();
    *v29 = 0;
    _os_log_impl(&dword_2680EB000, v27, v28, "[SFNI.ReadingFlow got SeeAll DI. Showing snippet and finishing.", v29, 2u);
    OUTLINED_FUNCTION_38();
  }

  sub_268225104(2, 3);
  v30 = OUTLINED_FUNCTION_69();
  v31(v30);
LABEL_17:
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_268225490()
{
  OUTLINED_FUNCTION_14();
  v1[16] = v2;
  v1[17] = v0;
  v3 = *v0;
  v1[18] = *v0;
  v1[19] = *(v3 + 80);
  OUTLINED_FUNCTION_1_7();
  v1[20] = v4;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268225594);
}

uint64_t sub_268225594()
{
  v77 = v0;
  v1 = sub_2682250CC();
  v2 = v1;
  switch(v3)
  {
    case 1:
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
      }

      v20 = sub_2683CF7E8();
      OUTLINED_FUNCTION_67(v20, qword_28027C958);
      v21 = sub_2683CF7C8();
      v22 = sub_2683CFE98();
      if (OUTLINED_FUNCTION_17_5(v22))
      {
        *OUTLINED_FUNCTION_21_5() = 0;
        OUTLINED_FUNCTION_13_10(&dword_2680EB000, v23, v24, "[SFNI.ReadingFlow] Pushing task list reading flow");
        OUTLINED_FUNCTION_38();
      }

      OUTLINED_FUNCTION_33_8();
      v25 = OUTLINED_FUNCTION_17_15();
      v26(v25);
      if (!sub_2683ABE58() && !sub_2683ABE58())
      {
        OUTLINED_FUNCTION_14_16();
        OUTLINED_FUNCTION_36_9();
        swift_beginAccess();
        sub_2683ABE58();
      }

      v27 = v0[22];
      v28 = v0[19];
      v29 = v0[20];
      v30 = v0[17];
      sub_2682268E4();
      OUTLINED_FUNCTION_30_9();
      sub_268226018();
      v32 = v31;
      (*(v29 + 8))(v27, v28);
      v0[14] = v32;
      v33 = sub_268226428(v30);
      v35 = v34;
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FCA8, &qword_2683DE600);
      OUTLINED_FUNCTION_5_26();
      v39 = sub_26818A0C8(v37, &qword_28024FCA8, &qword_2683DE600, v38);
      sub_268226A98((v0 + 14), v33, v35, v36, v39);
      sub_2682286D4(v2, 1);
LABEL_24:

      goto LABEL_30;
    case 2:
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
      }

      v11 = sub_2683CF7E8();
      OUTLINED_FUNCTION_67(v11, qword_28027C958);
      v12 = sub_2683CF7C8();
      v13 = sub_2683CFE98();
      if (OUTLINED_FUNCTION_17_5(v13))
      {
        *OUTLINED_FUNCTION_21_5() = 0;
        OUTLINED_FUNCTION_13_10(&dword_2680EB000, v14, v15, "[SFNI.ReadingFlow] Pushing tasks reading flow");
        OUTLINED_FUNCTION_38();
      }

      OUTLINED_FUNCTION_33_8();
      v16 = OUTLINED_FUNCTION_17_15();
      v17(v16);
      OUTLINED_FUNCTION_33_8();
      OUTLINED_FUNCTION_36_9();
      swift_beginAccess();
      if (!sub_2683ABE58())
      {
        sub_2683ABE58();
      }

      v40 = v0[17];
      sub_2682268E4();
      OUTLINED_FUNCTION_30_9();
      OUTLINED_FUNCTION_23_15();
      sub_268226468();
      v42 = v41;
      sub_2682286D4(v2, 2);
      v43 = OUTLINED_FUNCTION_32_3();
      v44(v43);
      v0[13] = v42;
      v45 = sub_26822670C(v40);
      v47 = v46;
      v48 = OUTLINED_FUNCTION_32_3();
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(v48, v49);
      OUTLINED_FUNCTION_5_26();
      v53 = sub_26818A0C8(v51, &qword_28024FCA8, &qword_2683DE600, v52);
      v54 = (v0 + 13);
      goto LABEL_29;
    case 3:
      switch(v1)
      {
        case 1uLL:
          goto LABEL_41;
        case 2uLL:
          sub_268226E4C(v76);
          v0[12] = v76[0];
          sub_2683CB948();

          sub_2683CC378();
          goto LABEL_24;
        case 3uLL:
          if (qword_28024C8E0 != -1)
          {
            OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
          }

          v72 = sub_2683CF7E8();
          OUTLINED_FUNCTION_67(v72, qword_28027C958);
          v73 = sub_2683CF7C8();
          v74 = sub_2683CFE98();
          if (os_log_type_enabled(v73, v74))
          {
            v75 = OUTLINED_FUNCTION_21_5();
            *v75 = 0;
            _os_log_impl(&dword_2680EB000, v73, v74, "[SFNI.ReadingFlow] Finished reading completing flow", v75, 2u);
            OUTLINED_FUNCTION_38();
          }

          sub_2683CC3F8();
          goto LABEL_31;
        case 4uLL:

          sub_2683CC868();
          v71 = sub_2683CB948();
          OUTLINED_FUNCTION_42_3(v71);
          v0[11] = sub_2683CB938();

          sub_2683CC398();

          goto LABEL_30;
        default:
          v18 = sub_268227310();
          sub_268225104(v18, v19);
LABEL_41:
          sub_2683CC388();
          break;
      }

      goto LABEL_31;
    default:
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
      }

      v4 = sub_2683CF7E8();
      OUTLINED_FUNCTION_67(v4, qword_28027C958);
      v5 = sub_2683CF7C8();
      v6 = sub_2683CFE98();
      if (OUTLINED_FUNCTION_17_5(v6))
      {
        *OUTLINED_FUNCTION_21_5() = 0;
        OUTLINED_FUNCTION_13_10(&dword_2680EB000, v7, v8, "[SFNI.ReadingFlow] Pushing notes reading flow");
        OUTLINED_FUNCTION_38();
      }

      OUTLINED_FUNCTION_33_8();
      v9 = OUTLINED_FUNCTION_17_15();
      v10(v9);
      OUTLINED_FUNCTION_33_8();
      if (!sub_2683ABE58())
      {
        OUTLINED_FUNCTION_14_16();
        OUTLINED_FUNCTION_36_9();
        swift_beginAccess();
        sub_2683ABE58();
      }

      v55 = v0[17];
      sub_2682268E4();
      OUTLINED_FUNCTION_30_9();
      v56 = OUTLINED_FUNCTION_23_15();
      v61 = sub_268225DE0(v56, v57, v58, v59, v60);
      sub_2682286D4(v2, 0);
      v62 = OUTLINED_FUNCTION_32_3();
      v63(v62);
      v0[15] = v61;
      v45 = sub_268225FD8(v55);
      v47 = v64;
      v65 = OUTLINED_FUNCTION_32_3();
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(v65, v66);
      OUTLINED_FUNCTION_5_26();
      v53 = sub_26818A0C8(v67, &qword_28024FCA8, &qword_2683DE600, v68);
      v54 = (v0 + 15);
LABEL_29:
      sub_268226A98(v54, v45, v47, v50, v53);

LABEL_30:

LABEL_31:

      OUTLINED_FUNCTION_40();

      return v69();
  }
}

uint64_t *sub_268225DE0(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(a5 + 8))(a4, a5);
  v10 = (*(a5 + 16))(a4, a5);
  v11 = OUTLINED_FUNCTION_41_6();
  v13 = sub_268227B20(v11, v12, a5);
  v15 = v14;
  v16 = (*(a5 + 96))(a3, a2 & 0x101, a4, a5);
  v18 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FCB8, &qword_2683DE608);
  v19 = swift_allocObject();
  v20 = OUTLINED_FUNCTION_2_30(v19);
  v20[2] = v9;
  v20[3] = v10;
  *(v20 + 32) = (a2 & 1) == 0;
  v20[5] = 0;
  v20[6] = 0;
  v20[7] = v13;
  v20[8] = v15;
  v20[9] = v16;
  v20[10] = v18;
  v21 = type metadata accessor for NotebookPaginatedConversationFlowSource();
  OUTLINED_FUNCTION_50_4(v21);

  v22 = OUTLINED_FUNCTION_0_0();
  sub_268223D00(v22, v23);
  OUTLINED_FUNCTION_4_27();
  sub_268228AC4(v24, v25, &unk_2683D9B18);
  OUTLINED_FUNCTION_3_28();
  sub_26818A0C8(v26, &qword_28024FCB8, &qword_2683DE608, v27);
  v28 = sub_2683CBD18();
  OUTLINED_FUNCTION_42_3(v28);

  v31 = OUTLINED_FUNCTION_46_5(v29);
  sub_2683CBF38();
  OUTLINED_FUNCTION_42_8();

  return &v31;
}

void sub_268226018()
{
  OUTLINED_FUNCTION_30_0();
  v2 = v1;
  v4 = v3;
  v63 = v5;
  v59 = v6;
  v8 = v7;
  v10 = v9;
  sub_2683CB528();
  OUTLINED_FUNCTION_1_7();
  v61 = v12;
  v62 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_14_3();
  v60 = v14 - v13;
  OUTLINED_FUNCTION_1_7();
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19);
  v20 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OUTLINED_FUNCTION_69();
  v58 = v22(v21);
  v23 = OUTLINED_FUNCTION_69();
  v57 = v24(v23);
  v25 = 0;
  v26 = 0;
  if (v8)
  {
    (*(v16 + 16))(&v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v0, v4);
    v27 = v10;
    v28 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v29 = (v18 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    *(v26 + 16) = v4;
    *(v26 + 24) = v2;
    v30 = v26 + v28;
    v10 = v27;
    (*(v16 + 32))(v30, v20, v4);
    *(v26 + v29) = v27;
    v31 = v27;
    v25 = &unk_2683DE670;
  }

  v32 = OUTLINED_FUNCTION_41_6();
  v34 = sub_2682280FC(v32, v33, v2);
  v55 = v35;
  v56 = v34;
  v36 = v59;
  v37 = v10;
  v38 = (*(v2 + 112))(v10, v63, v59 & 0x101, v4, v2);
  v40 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD18, &qword_2683DE660);
  v41 = swift_allocObject();
  v42 = OUTLINED_FUNCTION_2_30(v41);
  v43 = v57;
  v42[2] = v58;
  v42[3] = v43;
  *(v42 + 32) = (v36 & 1) == 0;
  v42[5] = v25;
  v42[6] = v26;
  v44 = v55;
  v42[7] = v56;
  v42[8] = v44;
  v42[9] = v38;
  v42[10] = v40;
  v45 = [v37 tasks];
  sub_268129504(0, &qword_280253310, 0x277CD4220);
  v46 = sub_2683CFCA8();

  v47 = v60;
  sub_2683CB508();
  v48 = (*(v2 + 120))(v46, v63, v47, v4, v2);

  (*(v61 + 8))(v47, v62);
  v49 = type metadata accessor for NotebookPaginatedConversationFlowSource();
  OUTLINED_FUNCTION_50_4(v49);

  sub_268224084(v48, v41);
  OUTLINED_FUNCTION_4_27();
  sub_268228AC4(v50, v51, &unk_2683D9B18);
  OUTLINED_FUNCTION_3_28();
  sub_26818A0C8(v52, &qword_28024FD18, &qword_2683DE660, v53);
  v54 = sub_2683CBD18();
  OUTLINED_FUNCTION_42_3(v54);

  v64 = sub_2683CBD08();
  sub_2683CBF38();

  OUTLINED_FUNCTION_29_0();
}

void sub_268226468()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v38 = v4;
  v7 = v6;
  v40 = v8;
  v41 = sub_2683CB528();
  OUTLINED_FUNCTION_1_7();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_14_3();
  v14 = v13 - v12;
  v15 = OUTLINED_FUNCTION_69();
  v39 = v16(v15);
  v17 = OUTLINED_FUNCTION_69();
  v37 = v18(v17);
  v19 = OUTLINED_FUNCTION_41_6();
  v36 = sub_268227D70(v19, v20, v1);
  v22 = v21;
  v23 = (*(v1 + 104))(v5, v7 & 0x101, v3, v1);
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD18, &qword_2683DE660);
  v26 = swift_allocObject();
  v27 = OUTLINED_FUNCTION_2_30(v26);
  v27[2] = v39;
  v27[3] = v37;
  *(v27 + 32) = (v7 & 1) == 0;
  v27[5] = 0;
  v27[6] = 0;
  v27[7] = v36;
  v27[8] = v22;
  v27[9] = v23;
  v27[10] = v25;
  sub_2683CB508();
  v28 = (*(v1 + 120))(v40, v38, v14, v3, v1);
  (*(v10 + 8))(v14, v41);
  v29 = type metadata accessor for NotebookPaginatedConversationFlowSource();
  OUTLINED_FUNCTION_50_4(v29);

  sub_268224084(v28, v26);
  OUTLINED_FUNCTION_4_27();
  sub_268228AC4(v30, v31, &unk_2683D9B18);
  OUTLINED_FUNCTION_3_28();
  sub_26818A0C8(v32, &qword_28024FD18, &qword_2683DE660, v33);
  v34 = sub_2683CBD18();
  OUTLINED_FUNCTION_42_3(v34);

  OUTLINED_FUNCTION_46_5(v35);
  sub_2683CBF38();
  OUTLINED_FUNCTION_42_8();

  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_268226778(uint64_t a1, uint64_t a2)
{
  v4 = *(*a2 + 88);
  v5 = *(*a2 + 80);
  v8 = (*(v4 + 88) + **(v4 + 88));
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2681342AC;

  return v8(a1, v5, v4);
}

void sub_2682268E4()
{
  OUTLINED_FUNCTION_14_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAA0, &qword_2683D4370);
  v0 = sub_2683CC818();
  v1 = [v0 tasks];
  v4 = 0;
  if (v1)
  {
    v2 = v1;
    sub_268129504(0, &qword_280253310, 0x277CD4220);
    OUTLINED_FUNCTION_40_6();
    sub_2683CFCA8();

    v3 = sub_2683ABE58();

    if (v3)
    {
      v4 = 1;
    }
  }

  v5 = [v0 notes];
  v8 = 0;
  if (v5)
  {
    v6 = v5;
    sub_268129504(0, &qword_28024D350, 0x277CD3E00);
    OUTLINED_FUNCTION_40_6();
    sub_2683CFCA8();

    v7 = sub_2683ABE58();

    if (v7)
    {
      v8 = 1;
    }
  }

  v9 = [v0 taskLists];
  if (v9)
  {
    sub_268129504(0, &qword_280253320, 0x277CD4228);
    OUTLINED_FUNCTION_40_6();
    v10 = sub_2683CFCA8();

    v9 = sub_2682228F8(v10);
  }

  if (__OFADD__(v8 + v4, v9))
  {
    __break(1u);
  }
}

uint64_t sub_268226A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = v5;
  v10[5] = a2;
  v10[6] = a3;

  sub_2683CC398();
}

void sub_268226B58(void **a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = *a1;
  if (!*a1)
  {
    goto LABEL_11;
  }

  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
  if (swift_dynamicCast() && (v16 & 1) == 0)
  {
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v12 = sub_2683CF7E8();
    __swift_project_value_buffer(v12, qword_28027C958);
    v13 = sub_2683CF7C8();
    v14 = sub_2683CFE98();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2680EB000, v13, v14, "Reading flow finished with userWantsToStop error. Stopping", v15, 2u);
      MEMORY[0x26D617A40](v15, -1, -1);
    }

    v11 = 4;
    goto LABEL_17;
  }

  v6 = v4;
  if (!swift_dynamicCast() || (v16 & 1) == 0)
  {
LABEL_11:
    a3();
    return;
  }

  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v7 = sub_2683CF7E8();
  __swift_project_value_buffer(v7, qword_28027C958);
  v8 = sub_2683CF7C8();
  v9 = sub_2683CFE98();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2680EB000, v8, v9, "Reading flow finished with userWantsToCancel error. Stopping", v10, 2u);
    MEMORY[0x26D617A40](v10, -1, -1);
  }

  v11 = 3;
LABEL_17:
  sub_268225104(v11, 3);
}

uint64_t sub_268226DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s11ReadingFlowCMa(0, *(*v4 + 80), *(*v4 + 88), a4);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_0();
  return sub_2683CBF48();
}

uint64_t sub_268226E4C@<X0>(uint64_t *a1@<X8>)
{

  sub_2683CC868();
  v2 = sub_2683CB948();
  OUTLINED_FUNCTION_42_3(v2);
  result = sub_2683CB938();
  *a1 = result;
  return result;
}

uint64_t sub_268226EBC(uint64_t a1, void *a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = *a2;
  v3 = sub_2683CB528();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268226FA4);
}

uint64_t sub_268226FA4()
{
  OUTLINED_FUNCTION_12_2();
  v1 = v0[3];
  v2 = v0[4];
  v3 = *(*v1 + 120);
  sub_2683CB508();
  v6 = v2 + 80;
  v5 = *(v2 + 80);
  v4 = *(v6 + 8);
  OUTLINED_FUNCTION_3_18();
  v12 = (v7 + *v7);
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_268227104;
  v9 = v0[7];
  v10 = v0[2];

  return v12(v10, v1 + v3, v9, v5, v4);
}

uint64_t sub_268227104()
{
  OUTLINED_FUNCTION_42();
  v2 = v1[7];
  v3 = v1[6];
  v4 = v1[5];
  v5 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;

  (*(v3 + 8))(v2, v4);

  OUTLINED_FUNCTION_40();

  return v7();
}

void sub_268227250()
{
  OUTLINED_FUNCTION_14_16();
  *(v0 + *(v1 + 128)) = MEMORY[0x277D84F90];

  v2 = sub_268227310();

  sub_268225104(v2, v3);
}

void sub_26822729C(uint64_t a1)
{
  v1 = sub_268227310();

  sub_268225104(v1, v2);
}

void sub_2682272C4()
{
  OUTLINED_FUNCTION_14_16();
  *(v0 + *(v1 + 144)) = MEMORY[0x277D84F90];

  v2 = sub_268227310();

  sub_268225104(v2, v3);
}

uint64_t sub_268227310()
{
  OUTLINED_FUNCTION_14_16();
  v2 = *(v1 + 128);
  v3 = *(v0 + v2);
  if (v3 >> 62)
  {
    if (sub_2683D00A8())
    {
      goto LABEL_8;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_8:
    v4 = *(v0 + v2);

    return v4;
  }

  OUTLINED_FUNCTION_14_16();
  OUTLINED_FUNCTION_36_9();
  swift_beginAccess();
  if (!sub_2683ABE58())
  {
    OUTLINED_FUNCTION_14_16();
    v2 = *(v5 + 144);
    if (!sub_2683ABE58())
    {
      return 1;
    }

    goto LABEL_8;
  }

  swift_beginAccess();
  v4 = sub_268222A68();
  swift_endAccess();
  return v4;
}

unint64_t sub_26822741C(void *a1, uint64_t a2)
{
  switch(a2)
  {
    case 1:
      sub_2683D0178();

      strcpy(v13, "readTaskList [");
      HIBYTE(v13[1]) = -18;
      v5 = [a1 title];
      v6 = [v5 description];
      v7 = sub_2683CFA78();
      v9 = v8;

      MEMORY[0x26D616690](v7, v9);

      MEMORY[0x26D616690](10333, 0xE200000000000000);
      v10 = [a1 tasks];
      sub_268129504(0, &qword_280253310, 0x277CD4220);
      v11 = sub_2683CFCA8();

      sub_2682228F8(v11);

      goto LABEL_8;
    case 2:
      v3 = 0x6B73615464616572;
      goto LABEL_4;
    case 3:
      result = 0x64656873696E6966;
      switch(a1)
      {
        case 1uLL:
          result = 0xD000000000000011;
          break;
        case 2uLL:
          result = 0xD000000000000017;
          break;
        case 3uLL:
          return result;
        case 4uLL:
          result = 0x676E6970706F7473;
          break;
        default:
          result = 0xD000000000000010;
          break;
      }

      return result;
    default:
      v3 = 0x65746F4E64616572;
LABEL_4:
      v13[0] = v3;
      v13[1] = 0xEB00000000282073;
      sub_2682228F8(a1);
LABEL_8:
      v12 = sub_2683D0568();
      MEMORY[0x26D616690](v12);

      MEMORY[0x26D616690](41, 0xE100000000000000);
      return v13[0];
  }
}

uint64_t *sub_2682276D8()
{
  v1 = *v0;
  sub_2682286D4(v0[2], *(v0 + 24));
  OUTLINED_FUNCTION_14_16();
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(v2 + 104));
  OUTLINED_FUNCTION_14_16();
  v4 = *(v3 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAA0, &qword_2683D4370);
  OUTLINED_FUNCTION_1();
  (*(v5 + 8))(v0 + v4);
  OUTLINED_FUNCTION_14_16();

  OUTLINED_FUNCTION_14_16();

  OUTLINED_FUNCTION_14_16();

  return v0;
}

uint64_t sub_2682277EC()
{
  sub_2682276D8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_26822785C(uint64_t a1)
{
  if (!qword_28024FC20[0])
  {
    sub_268129504(255, &qword_28024D340, 0x277CD4058);
    sub_268129504(255, &qword_28024D348, 0x277CD4060);
    v1 = sub_2683CC858();
    if (!v2)
    {
      atomic_store(v1, qword_28024FC20);
    }
  }
}

uint64_t sub_2682278E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_12SiriNotebook09SearchForB5ItemsO11ReadingFlowC5State33_F3ED04642321D2047642E16DA4EA0ADCLLOy_x_G(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_26822793C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 9))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 3)
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

uint64_t sub_26822797C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_2682279C0(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_268227A3C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268133EC8;

  return sub_268225490();
}

uint64_t sub_268227AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s11ReadingFlowCMa(0, *(a1 + 80), *(a1 + 88), a4);

  return sub_2683CBF88();
}

void *sub_268227B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  (*(v5 + 32))(v9 + v8, v7, a2);
  return &unk_2683DE658;
}

uint64_t sub_268227C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = (*(a4 + 72) + **(a4 + 72));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_2681342AC;

  return v10(a1, a3, a4);
}

void *sub_268227D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  (*(v5 + 32))(v9 + v8, v7, a2);
  return &unk_2683DE6B0;
}

uint64_t sub_268227E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = (*(a4 + 80) + **(a4 + 80));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_2681342AC;

  return v10(a1, a3, a4);
}

uint64_t sub_268227FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = (*(a6 + 48) + **(a6 + 48));
  v11 = swift_task_alloc();
  *(v6 + 16) = v11;
  *v11 = v6;
  v11[1] = sub_268133EC8;

  return v13(a1, a4, a5, a6);
}

void *sub_2682280FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  (*(v5 + 32))(v9 + v8, v7, a2);
  return &unk_2683DE6A0;
}

uint64_t sub_26822821C(uint64_t result, uint64_t a2)
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

  sub_2682C2138(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 40 * v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD30, &qword_2683DE6B8);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_2681232F8((v9 + 40 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_268228310(uint64_t result, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = result;
  v8 = *v4;
  result = sub_2682228F8(*v4);
  if (result < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (__OFSUB__(a2, v7))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = v7 - a2;
  if (__OFSUB__(0, a2 - v7))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_2682228F8(v8);
  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  a3(result, 1);
  v12 = OUTLINED_FUNCTION_0_0();

  return a4(v12);
}

uint64_t sub_2682283CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_2683CBC28();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v9)
  {
    goto LABEL_12;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    goto LABEL_6;
  }

LABEL_16:
  result = sub_2683D00A8();
LABEL_6:
  if (__OFSUB__(result, v6))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_2683922FC(&v7[v6], result - v6, (v5 + 8 * v3));
  if (v8)
  {
    result = sub_2683D00A8();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_18;
  }

  v4[2] = result + v9;
LABEL_12:
  if (v3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_2682284B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_268129504(0, &qword_280253320, 0x277CD4228);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v9)
  {
    goto LABEL_12;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    goto LABEL_6;
  }

LABEL_16:
  result = sub_2683D00A8();
LABEL_6:
  if (__OFSUB__(result, v6))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_2683922FC(&v7[v6], result - v6, (v5 + 8 * v3));
  if (v8)
  {
    result = sub_2683D00A8();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_18;
  }

  v4[2] = result + v9;
LABEL_12:
  if (v3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_2682285AC()
{
  OUTLINED_FUNCTION_14();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_1_3(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_19_18(v2);

  return sub_268226EBC(v4, v0);
}

uint64_t sub_268228644()
{
  OUTLINED_FUNCTION_14();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_1_3(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_19_18(v2);

  return sub_268226778(v4, v0);
}

void sub_2682286D4(void *a1, char a2)
{
  if (a2 == 2)
  {
LABEL_4:

    return;
  }

  if (a2 != 1)
  {
    if (a2)
    {
      return;
    }

    goto LABEL_4;
  }
}

uint64_t sub_2682286FC(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2683D00A8();
  }

  return sub_2683D01B8();
}

uint64_t sub_268228788(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_2683D00A8();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_268228838(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FCD0, &qword_2683DE620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2682288A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FCD0, &qword_2683DE620);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268228910(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FCD0, &qword_2683DE620);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_268228984()
{
  result = qword_28024FCE8;
  if (!qword_28024FCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024FCE8);
  }

  return result;
}

uint64_t sub_2682289D8(int64_t a1, int64_t a2, uint64_t a3)
{
  result = 0;
  while (1)
  {
    v5 = a1 <= a2;
    if (a3 > 0)
    {
      v5 = a1 >= a2;
    }

    if (v5)
    {
      break;
    }

    v6 = __OFADD__(a1, a3);
    a1 += a3;
    if (v6)
    {
      a1 = (a1 >> 63) ^ 0x8000000000000000;
    }

    v6 = __OFADD__(result++, 1);
    if (v6)
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

uint64_t sub_268228A20()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_1_3(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_19_18(v5);

  return sub_268222E00(v7, v1, v2, v3);
}

uint64_t sub_268228AC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_268228B0C()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_20_18();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_17(v1);

  return sub_268227C40(v3, v4, v5, v6);
}

uint64_t sub_268228BCC()
{
  OUTLINED_FUNCTION_12_2();
  v2 = v1;
  v4 = v3;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  OUTLINED_FUNCTION_1_7();
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = *(v0 + ((*(v9 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_1_3(v11);
  *v12 = v13;
  v12[1] = sub_2681342AC;

  return sub_268227FC0(v4, v2, v0 + v8, v10, v5, v6);
}

uint64_t sub_268228CE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(uint64_t, uint64_t)@<X6>, uint64_t *a8@<X8>)
{
  result = sub_268224C8C(*a1, *(a1 + 8), *a2, a2[1], a3, *a4, a5, a6, a7);
  if (!v8)
  {
    *a8 = result;
    a8[1] = v11;
  }

  return result;
}

uint64_t objectdestroy_15Tm()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FCD0, &qword_2683DE620);
  OUTLINED_FUNCTION_3_18();
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v5 = *(v4 + 64);

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FCD8, &qword_2683DE628);
  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v6))
  {
    sub_2683CCB78();
    OUTLINED_FUNCTION_1();
    (*(v7 + 8))(v0 + v3);
    swift_unknownObjectRelease();
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v5, v2 | 7);
}

uint64_t sub_268228EBC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FCD0, &qword_2683DE620);
  OUTLINED_FUNCTION_23(v1);
  return sub_268223B00(*(v0 + 16), v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80)));
}

uint64_t objectdestroy_18Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_268228F5C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_1_3(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_19_18(v5);

  return sub_268222E00(v7, v1, v2, v3);
}

uint64_t sub_268229000()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_20_18();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_17(v1);

  return sub_268227E90(v3, v4, v5, v6);
}

uint64_t objectdestroy_24Tm()
{
  OUTLINED_FUNCTION_39_7();
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_268229134()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_20_18();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_10_17(v1);

  return sub_268227E90(v3, v4, v5, v6);
}

id sub_2682291F0(id result, char a2)
{
  if (a2 == 2)
  {
  }

  if (a2 != 1)
  {
    if (a2)
    {
      return result;
    }
  }

  return result;
}

_BYTE *_s13ReadingErrorsOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2682292F4()
{
  result = qword_28024FD38;
  if (!qword_28024FD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024FD38);
  }

  return result;
}

void *OUTLINED_FUNCTION_2_30(void *result)
{
  result[11] = sub_2681B86A4;
  result[12] = 0;
  result[13] = 0;
  result[14] = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_46_5(uint64_t a1)
{

  return sub_2683CBD08();
}

uint64_t OUTLINED_FUNCTION_49_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t *a21, void *a22)
{

  return sub_268129504(0, a21, a22);
}

uint64_t OUTLINED_FUNCTION_50_4(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_268229538@<X0>(uint64_t *a2@<X8>)
{
  sub_2683CD6F8();
  if (v15)
  {

    v3 = sub_2683CD688();
    v5 = v4;

    v6 = sub_2683CD668();
    v8 = v7;

    v9 = sub_2683CD698();

    if (v9)
    {
      v10 = sub_2683CD908();
      v12 = v11;
    }

    else
    {
      v12 = 0;
      v10 = 0;
    }

    v13 = sub_2683CD4E8();
  }

  else
  {
    v12 = 0;
    v10 = 0;
    v8 = 0;
    v6 = 0;
    v5 = 0;
    v3 = 0;
    v13 = 0;
  }

  *a2 = v3;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v8;
  a2[4] = v10;
  a2[5] = v12;
  a2[6] = v15;
  a2[7] = v13;
  return result;
}

uint64_t sub_268229654(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_2682296A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_26822971C()
{
  sub_2683CDB98();
  OUTLINED_FUNCTION_2_31();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD40, &unk_2683DE830);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD48, &qword_2683F6940);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_29();
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  if (*(v1 + 48) && sub_2683CD4F8())
  {
    sub_2683CDB88();
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v18, 1, 1, v0);
  }

  (*(v4 + 104))(v2, *MEMORY[0x277D5EE50], v0);
  OUTLINED_FUNCTION_4_28();
  v19 = *(v8 + 48);
  sub_26822A08C(v18, v11);
  sub_26822A08C(v2, &v11[v19]);
  OUTLINED_FUNCTION_2_6(v11);
  if (!v21)
  {
    sub_26822A08C(v11, v15);
    OUTLINED_FUNCTION_2_6(&v11[v19]);
    if (!v21)
    {
      (*(v4 + 32))(v7, &v11[v19], v0);
      sub_26822A0FC();
      v20 = sub_2683CFA58();
      v22 = *(v4 + 8);
      v22(v7, v0);
      sub_26812D9E0(v2, &qword_28024FD48, &qword_2683F6940);
      sub_26812D9E0(v18, &qword_28024FD48, &qword_2683F6940);
      v22(v15, v0);
      sub_26812D9E0(v11, &qword_28024FD48, &qword_2683F6940);
      return v20 & 1;
    }

    OUTLINED_FUNCTION_9_12(v2);
    OUTLINED_FUNCTION_9_12(v18);
    (*(v4 + 8))(v15, v0);
LABEL_13:
    sub_26812D9E0(v11, &qword_28024FD40, &unk_2683DE830);
    v20 = 0;
    return v20 & 1;
  }

  OUTLINED_FUNCTION_9_12(v2);
  OUTLINED_FUNCTION_9_12(v18);
  OUTLINED_FUNCTION_2_6(&v11[v19]);
  if (!v21)
  {
    goto LABEL_13;
  }

  sub_26812D9E0(v11, &qword_28024FD48, &qword_2683F6940);
  v20 = 1;
  return v20 & 1;
}

uint64_t sub_268229A90()
{
  sub_2683CDB98();
  OUTLINED_FUNCTION_2_31();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD40, &unk_2683DE830);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD48, &qword_2683F6940);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_29();
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  v16 = sub_268229F10();
  if (!v16)
  {
    return 0;
  }

  v17 = v16;
  result = sub_2683ABE58();
  v19 = 0;
  v36 = v17 & 0xC000000000000001;
  v37 = result;
  v35 = v17 & 0xFFFFFFFFFFFFFF8;
  v34 = *MEMORY[0x277D5EE50];
  v32 = v17;
  v33 = (v3 + 104);
  v27 = (v3 + 32);
  v30 = v15;
  v31 = (v3 + 8);
  v20 = &qword_2683F6940;
  while (1)
  {
    v21 = v37 != v19;
    if (v37 == v19)
    {
      goto LABEL_24;
    }

    if (v36)
    {
      result = MEMORY[0x26D616C90](v19, v17);
    }

    else
    {
      if (v19 >= *(v35 + 16))
      {
        goto LABEL_27;
      }
    }

    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (sub_2683CD4F8())
    {
      sub_2683CDB88();
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v15, 1, 1, v0);
    }

    (*v33)(v1, v34, v0);
    OUTLINED_FUNCTION_4_28();
    v22 = *(v38 + 48);
    sub_26822A08C(v15, v8);
    sub_26822A08C(v1, &v8[v22]);
    OUTLINED_FUNCTION_2_6(v8);
    if (v23)
    {

      sub_26812D9E0(v1, &qword_28024FD48, v20);
      sub_26812D9E0(v15, &qword_28024FD48, v20);
      OUTLINED_FUNCTION_2_6(&v8[v22]);
      if (v23)
      {
        sub_26812D9E0(v8, &qword_28024FD48, &qword_2683F6940);
LABEL_24:

        return v21;
      }

      goto LABEL_19;
    }

    sub_26822A08C(v8, v12);
    OUTLINED_FUNCTION_2_6(&v8[v22]);
    if (v23)
    {

      sub_26812D9E0(v1, &qword_28024FD48, v20);
      sub_26812D9E0(v15, &qword_28024FD48, v20);
      (*v31)(v12, v0);
LABEL_19:
      result = sub_26812D9E0(v8, &qword_28024FD40, &unk_2683DE830);
      v17 = v32;
      goto LABEL_21;
    }

    v24 = v20;
    v25 = v28;
    (*v27)(v28, &v8[v22], v0);
    sub_26822A0FC();
    v29 = sub_2683CFA58();

    v26 = *v31;
    (*v31)(v25, v0);
    sub_26812D9E0(v1, &qword_28024FD48, v24);
    sub_26812D9E0(v30, &qword_28024FD48, v24);
    v26(v12, v0);
    v20 = v24;
    v15 = v30;
    result = sub_26812D9E0(v8, &qword_28024FD48, v20);
    v17 = v32;
    if (v29)
    {
      goto LABEL_24;
    }

LABEL_21:
    ++v19;
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_268229F10()
{
  v1 = *(v0 + 48);
  if (!v1)
  {
    return v1;
  }

  v2 = sub_2683CD658();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  swift_getKeyPath();
  v1 = MEMORY[0x277D84F90];
  v9 = MEMORY[0x277D84F90];
  result = sub_2683ABE58();
  v5 = result;
  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {

      return v1;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D616C90](v6, v3);
    }

    else
    {
      if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }
    }

    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    swift_getAtKeyPath();

    ++v6;
    if (v8)
    {
      MEMORY[0x26D616770](result);
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2683CFCD8();
      }

      result = sub_2683CFD08();
      v1 = v9;
      v6 = v7;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_26822A08C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD48, &qword_2683F6940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26822A0FC()
{
  result = qword_28024FD50;
  if (!qword_28024FD50)
  {
    sub_2683CDB98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024FD50);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_28()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

uint64_t sub_26822A1A0(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_268129B00;

  return v7(0, a1, a2);
}

uint64_t sub_26822A2CC@<X0>(void (*a1)(void *__return_ptr, char *, uint64_t, uint64_t)@<X4>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  v19 = a2;
  v20 = a1;
  v21 = a3;
  v3 = sub_2683CCC18();
  OUTLINED_FUNCTION_0_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2683CC748();
  OUTLINED_FUNCTION_0_3();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D470, &qword_2683DEA10);
  sub_2683CC9E8();
  v15 = sub_2683CC738();
  v17 = v16;
  (*(v11 + 8))(v14, v9);
  sub_2683CCB88();
  v20(v22, v8, v15, v17);

  (*(v5 + 8))(v8, v3);
  sub_26813954C(v22);
  return sub_2681433DC(v22, &qword_28024D458, &unk_2683D2C60);
}

uint64_t sub_26822A4A8()
{
  OUTLINED_FUNCTION_14();
  v0[27] = v1;
  v0[28] = v2;
  v0[25] = v3;
  v0[26] = v4;
  v0[24] = v5;
  v6 = sub_2683CCBA8();
  v0[29] = v6;
  OUTLINED_FUNCTION_3_1(v6);
  v0[30] = v7;
  v0[31] = OUTLINED_FUNCTION_15_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5B0, &qword_2683D97C0);
  OUTLINED_FUNCTION_23(v8);
  v0[32] = OUTLINED_FUNCTION_15_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D470, &qword_2683DEA10);
  v0[33] = v9;
  OUTLINED_FUNCTION_3_1(v9);
  v0[34] = v10;
  v0[35] = OUTLINED_FUNCTION_15_1();
  v11 = sub_2683CCC18();
  v0[36] = v11;
  OUTLINED_FUNCTION_3_1(v11);
  v0[37] = v12;
  v0[38] = OUTLINED_FUNCTION_15_1();
  v13 = sub_2683CC748();
  v0[39] = v13;
  OUTLINED_FUNCTION_3_1(v13);
  v0[40] = v14;
  v0[41] = OUTLINED_FUNCTION_55();
  v0[42] = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v15);
}

uint64_t sub_26822A67C()
{
  v92 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 312);
  v3 = *(v0 + 320);
  v5 = *(v0 + 296);
  v4 = *(v0 + 304);
  v90 = *(v0 + 288);
  v89 = *(v0 + 216);
  sub_2683CC9E8();
  v6 = sub_2683CC738();
  v8 = v7;
  v88 = *(v3 + 8);
  v88(v1, v2);
  sub_2683CCB88();
  v89(v4, v6, v8);

  (*(v5 + 8))(v4, v90);
  sub_2681340E8(v0 + 16, v0 + 88, &qword_28024D458, &unk_2683D2C60);
  v9 = *(v0 + 88);
  if (v9 == 2)
  {
    sub_268143388(v0 + 88);
    goto LABEL_5;
  }

  if (v9 == 3)
  {
    sub_2681433DC(v0 + 88, &qword_28024D458, &unk_2683D2C60);
LABEL_5:
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v10 = sub_2683CF7E8();
    __swift_project_value_buffer(v10, qword_28027C958);
    OUTLINED_FUNCTION_21();
    v11();
    v12 = sub_2683CF7C8();
    v13 = sub_2683CFE78();
    if (os_log_type_enabled(v12, v13))
    {
      v15 = *(v0 + 240);
      v14 = *(v0 + 248);
      v16 = *(v0 + 232);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v91[0] = v18;
      *v17 = 136315138;
      sub_2683CCB88();
      v19 = sub_2683CFAD8();
      v21 = v20;
      (*(v15 + 8))(v14, v16);
      v22 = sub_2681610A0(v19, v21, v91);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_2680EB000, v12, v13, "[CreateNote.NeedsConfirmation parseResponse] Did not get ConfirmationTask from parse: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {
      v24 = *(v0 + 240);
      v23 = *(v0 + 248);
      v25 = *(v0 + 232);

      (*(v24 + 8))(v23, v25);
    }

    sub_26812C6B8();
    swift_allocError();
    *v26 = 0u;
    *(v26 + 16) = 0u;
    v27 = 4;
    goto LABEL_11;
  }

  sub_2681433DC(v0 + 96, &qword_28024D460, &qword_2683D5050);
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v30 = sub_2683CF7E8();
  __swift_project_value_buffer(v30, qword_28027C958);
  OUTLINED_FUNCTION_21();
  v31();
  v32 = sub_2683CF7C8();
  v33 = sub_2683CFE98();
  v34 = os_log_type_enabled(v32, v33);
  v36 = *(v0 + 272);
  v35 = *(v0 + 280);
  v37 = *(v0 + 264);
  if (v34)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v38 = 138412290;
    v40 = sub_2683CC9C8();
    (*(v36 + 8))(v35, v37);
    *(v38 + 4) = v40;
    *v39 = v40;
    _os_log_impl(&dword_2680EB000, v32, v33, "[CreateNote.NeedsConfirmation parseResponse] Original Intent: %@", v38, 0xCu);
    sub_2681433DC(v39, &qword_28024DCD8, &qword_2683D5060);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {

    (*(v36 + 8))(v35, v37);
  }

  v41 = *(v0 + 328);
  v42 = *(v0 + 312);
  sub_2683CC9E8();
  v43 = sub_2683CC738();
  v45 = v44;
  v88(v41, v42);

  v46 = OUTLINED_FUNCTION_0_0();
  v47 = sub_2683B48FC(v46);
  if (v47 == 3)
  {
    sub_26812C6B8();
    swift_allocError();
    *v26 = v43;
    *(v26 + 8) = v45;
    *(v26 + 16) = 0;
    *(v26 + 24) = 0;
    v27 = 1;
LABEL_11:
    *(v26 + 32) = v27;
    swift_willThrow();
    sub_2681433DC(v0 + 16, &qword_28024D458, &unk_2683D2C60);

    OUTLINED_FUNCTION_40();
    goto LABEL_12;
  }

  v48 = v47;

  v49 = sub_2683CC9C8();
  if (v9)
  {
    v50 = sub_2682EFFA4(v48);

    v51 = v50;
    v52 = sub_2683CF7C8();
    v53 = sub_2683CFE98();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v91[0] = swift_slowAlloc();
      *v54 = 136315394;
      if (v48)
      {
        if (v48 == 1)
        {
          v55 = 0x746E65746E6F63;
        }

        else
        {
          v55 = 0x6D614E70756F7267;
        }

        if (v48 == 1)
        {
          v48 = 0xE700000000000000;
        }

        else
        {
          v48 = 0xE900000000000065;
        }
      }

      else
      {
        v55 = OUTLINED_FUNCTION_40_7();
      }

      v66 = sub_2681610A0(v55, v48, v91);

      *(v54 + 4) = v66;
      *(v54 + 12) = 2080;
      v67 = v51;
      v68 = [v67 description];
      v69 = sub_2683CFA78();
      v71 = v70;

      v72 = sub_2681610A0(v69, v71, v91);

      *(v54 + 14) = v72;
      OUTLINED_FUNCTION_45_3(&dword_2680EB000, v73, v74, "[CreateNote.NeedsConfirmation parseResponse] Rejected %s. Updated intent: %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();

      v58 = MEMORY[0x277D5BED0];
    }

    else
    {

      v58 = MEMORY[0x277D5BED0];
    }
  }

  else
  {
    v56 = sub_2683CC9D8();
    v57 = [v56 itemToConfirm];

    sub_2683D0038();
    swift_unknownObjectRelease();
    v59 = sub_2682EFEFC(v48, (v0 + 160));
    __swift_destroy_boxed_opaque_existential_0((v0 + 160));

    v60 = v59;
    v61 = sub_2683CF7C8();
    v62 = sub_2683CFE98();

    if (os_log_type_enabled(v61, v62))
    {
      v64 = swift_slowAlloc();
      v91[0] = swift_slowAlloc();
      *v64 = 136315394;
      if (v48)
      {
        if (v48 == 1)
        {
          v65 = 0x746E65746E6F63;
        }

        else
        {
          v65 = 0x6D614E70756F7267;
        }

        if (v48 == 1)
        {
          v48 = 0xE700000000000000;
        }

        else
        {
          v48 = 0xE900000000000065;
        }
      }

      else
      {
        v65 = OUTLINED_FUNCTION_40_7();
      }

      v75 = sub_2681610A0(v65, v48, v91);

      *(v64 + 4) = v75;
      *(v64 + 12) = 2080;
      v76 = v60;
      v77 = [v76 description];
      v78 = sub_2683CFA78();
      v80 = v79;

      v81 = sub_2681610A0(v78, v80, v91);

      *(v64 + 14) = v81;
      OUTLINED_FUNCTION_45_3(&dword_2680EB000, v82, v83, "[CreateNote.NeedsConfirmation parseResponse] Confirmed %s. Updated intent: %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();

      v58 = MEMORY[0x277D5BED8];
    }

    else
    {

      v58 = MEMORY[0x277D5BED8];
    }
  }

  v84 = *(v0 + 256);
  v85 = *v58;
  v86 = sub_2683CC758();
  OUTLINED_FUNCTION_1();
  (*(v87 + 104))(v84, v85, v86);
  __swift_storeEnumTagSinglePayload(v84, 0, 1, v86);
  sub_268129504(0, &qword_28024CDB0, 0x277CD3B30);
  sub_2683CC8D8();
  sub_2681433DC(v0 + 16, &qword_28024D458, &unk_2683D2C60);

  OUTLINED_FUNCTION_7_4();
LABEL_12:

  return v28();
}

uint64_t sub_26822B080()
{
  OUTLINED_FUNCTION_14();
  v0[32] = v1;
  v0[33] = v2;
  v0[30] = v3;
  v0[31] = v4;
  v0[28] = v5;
  v0[29] = v6;
  v0[27] = v7;
  v8 = type metadata accessor for Snippet(0);
  v0[34] = v8;
  OUTLINED_FUNCTION_23(v8);
  v0[35] = OUTLINED_FUNCTION_55();
  v0[36] = swift_task_alloc();
  v0[37] = swift_task_alloc();
  v0[38] = swift_task_alloc();
  v9 = sub_2683CC9A8();
  v0[39] = v9;
  OUTLINED_FUNCTION_3_1(v9);
  v0[40] = v10;
  v0[41] = OUTLINED_FUNCTION_15_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E760, &unk_2683D2BF0);
  OUTLINED_FUNCTION_23(v11);
  v0[42] = OUTLINED_FUNCTION_15_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D588, &unk_2683D8DB0);
  OUTLINED_FUNCTION_23(v12);
  v0[43] = OUTLINED_FUNCTION_15_1();
  v13 = sub_2683CC138();
  v0[44] = v13;
  OUTLINED_FUNCTION_3_1(v13);
  v0[45] = v14;
  v0[46] = OUTLINED_FUNCTION_55();
  v0[47] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460);
  OUTLINED_FUNCTION_23(v15);
  v0[48] = OUTLINED_FUNCTION_15_1();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_3_1(v16);
  v0[49] = v17;
  v0[50] = *(v18 + 64);
  v0[51] = OUTLINED_FUNCTION_55();
  v0[52] = swift_task_alloc();
  v0[53] = swift_task_alloc();
  v0[54] = swift_task_alloc();
  v0[55] = swift_task_alloc();
  v0[56] = swift_task_alloc();
  v0[57] = swift_task_alloc();
  v0[58] = swift_task_alloc();
  v19 = sub_2683CC748();
  v0[59] = v19;
  OUTLINED_FUNCTION_3_1(v19);
  v0[60] = v20;
  v0[61] = OUTLINED_FUNCTION_15_1();
  v21 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v21);
}

uint64_t sub_26822B350()
{
  v2 = *(v0 + 480);
  v1 = *(v0 + 488);
  v3 = *(v0 + 472);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D470, &qword_2683DEA10);
  sub_2683CC9E8();
  v4 = sub_2683CC738();
  v6 = v5;
  (*(v2 + 8))(v1, v3);

  v7 = OUTLINED_FUNCTION_0_0();
  v8 = sub_2683B48FC(v7);
  *(v0 + 560) = v8;
  if (v8 == 3)
  {
    sub_26812C6B8();
    swift_allocError();
    *v9 = v4;
    *(v9 + 8) = v6;
    *(v9 + 16) = 0;
    *(v9 + 24) = 0;
    *(v9 + 32) = 1;
    swift_willThrow();

    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_48_3();

    __asm { BRAA            X1, X16 }
  }

  v12 = swift_task_alloc();
  *(v0 + 496) = v12;
  *v12 = v0;
  v12[1] = sub_26822B5BC;
  OUTLINED_FUNCTION_39_4(*(v0 + 224));
  OUTLINED_FUNCTION_48_3();

  return sub_26822C92C(v13, v14, v15);
}

uint64_t sub_26822B5BC()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 504) = v5;

  if (v0)
  {

    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_48_3();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_48_3();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_26822B7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_82_0();
  v25 = *(v24 + 504);
  v26 = *(v24 + 560);
  v27 = *(v24 + 456);
  v28 = *(v24 + 384);
  v29 = *(v24 + 336);
  v30 = *(v24 + 272);
  __swift_storeEnumTagSinglePayload(*(v24 + 464), 1, 1, v30);
  *v27 = 1541;
  swift_storeEnumTagMultiPayload();
  v31 = OUTLINED_FUNCTION_25_14();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v30);
  *(v24 + 16) = v26;
  *(v24 + 40) = &type metadata for CreateNote.Parameter;
  *(v24 + 48) = &off_28790DD70;
  sub_2681686A4((v24 + 16));
  __swift_destroy_boxed_opaque_existential_0((v24 + 16));
  v34 = sub_2683CC528();
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v34);
  sub_2683CC118();
  sub_2683CED08();
  v35 = OUTLINED_FUNCTION_33_1();
  __swift_storeEnumTagSinglePayload(v35, v36, 1, v37);
  v38 = sub_2683CC1D8();
  __swift_storeEnumTagSinglePayload(v29, 1, 1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v39 = swift_allocObject();
  *(v24 + 512) = v39;
  *(v39 + 16) = xmmword_2683D2250;
  *(v39 + 32) = v25;
  v40 = v25;
  v128 = v39;
  if (sub_2683ABE58())
  {
    sub_2683ABE60();
    if ((v39 & 0xC000000000000001) != 0)
    {
      v41 = MEMORY[0x26D616C90](0, v39);
    }

    else
    {
      v41 = *(v39 + 32);
    }

    v42 = v41;
    v43 = [v41 catId];

    v124 = sub_2683CFA78();
    v127 = v44;
  }

  else
  {
    v124 = 0;
    v127 = 0;
  }

  v45 = *(v24 + 464);
  v123 = v45;
  v47 = *(v24 + 440);
  v46 = *(v24 + 448);
  v49 = *(v24 + 392);
  v48 = *(v24 + 400);
  v118 = *(v24 + 376);
  v119 = *(v24 + 384);
  v50 = *(v24 + 360);
  v116 = *(v24 + 368);
  v117 = *(v24 + 352);
  v120 = *(v24 + 344);
  v121 = *(v24 + 336);
  v122 = *(v24 + 328);
  v125 = *(v24 + 272);
  v126 = *(v24 + 432);
  v51 = *(v24 + 248);
  sub_2681340E8(*(v24 + 456), v46, &qword_28024E770, &qword_2683D80D0);
  sub_2681340E8(v45, v47, &qword_28024E770, &qword_2683D80D0);
  v52 = *(v49 + 80);
  v53 = (v52 + 24) & ~v52;
  v54 = (v48 + v52 + v53) & ~v52;
  v55 = swift_allocObject();
  *(v24 + 520) = v55;
  *(v55 + 16) = v51;
  sub_2681430AC(v46, v55 + v53);
  sub_2681430AC(v47, v55 + v54);
  (*(v50 + 16))(v116, v118, v117);
  v56 = swift_task_alloc();
  *(v56 + 16) = 0;
  *(v56 + 24) = 0;
  *(v56 + 32) = 0;
  *(v56 + 40) = v124;
  *(v56 + 48) = v127;
  *(v56 + 56) = v119;
  *(v56 + 64) = 257;
  *(v56 + 72) = sub_26814311C;
  *(v56 + 80) = v55;
  *(v56 + 88) = 0;
  *(v56 + 96) = v120;
  *(v56 + 104) = 2;
  *(v56 + 112) = v121;

  sub_2683CC8E8();

  sub_2681340E8(v123, v126, &qword_28024E770, &qword_2683D80D0);
  if (__swift_getEnumTagSinglePayload(v126, 1, v125) == 1)
  {
    v57 = (v24 + 432);
  }

  else
  {
    v58 = *(v24 + 456);
    v59 = *(v24 + 424);
    v60 = *(v24 + 272);
    sub_26814320C(*(v24 + 432), *(v24 + 304));
    sub_2681340E8(v58, v59, &qword_28024E770, &qword_2683D80D0);
    if (__swift_getEnumTagSinglePayload(v59, 1, v60) != 1)
    {
      v87 = *(v24 + 296);
      v88 = *(v24 + 304);
      v89 = *(v24 + 272);
      sub_26814320C(*(v24 + 424), v87);
      *(v24 + 160) = v89;
      v90 = sub_268143270();
      *(v24 + 168) = v90;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v24 + 136));
      sub_2681432C8(v88, boxed_opaque_existential_0);
      *(v24 + 200) = v89;
      *(v24 + 208) = v90;
      v92 = __swift_allocate_boxed_opaque_existential_0((v24 + 176));
      sub_2681432C8(v87, v92);
      OUTLINED_FUNCTION_15_4();
      OUTLINED_FUNCTION_10_2();
      *(v24 + 528) = v93;
      *v93 = v94;
      v93[1] = sub_26822BEB8;
      OUTLINED_FUNCTION_34_9();
      OUTLINED_FUNCTION_24_3();

      return v100(v95, v96, v97, v98, v99, v100, v101, v102, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, a22, a23, a24);
    }

    v57 = (v24 + 424);
    sub_26814332C(*(v24 + 304));
  }

  v61 = *v57;
  v62 = *(v24 + 464);
  v63 = *(v24 + 416);
  v64 = *(v24 + 272);
  sub_2681433DC(v61, &qword_28024E770, &qword_2683D80D0);
  sub_2681340E8(v62, v63, &qword_28024E770, &qword_2683D80D0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v63, 1, v64);
  v66 = *(v24 + 416);
  v67 = *(v24 + 272);
  if (EnumTagSinglePayload == 1)
  {
    v68 = *(v24 + 456);
    v69 = *(v24 + 408);
    sub_2681433DC(v66, &qword_28024E770, &qword_2683D80D0);
    sub_2681340E8(v68, v69, &qword_28024E770, &qword_2683D80D0);
    v70 = OUTLINED_FUNCTION_33_1();
    if (__swift_getEnumTagSinglePayload(v70, v71, v67) == 1)
    {
      sub_2681433DC(*(v24 + 408), &qword_28024E770, &qword_2683D80D0);
      OUTLINED_FUNCTION_15_4();
      OUTLINED_FUNCTION_10_2();
      *(v24 + 552) = v72;
      *v72 = v73;
      v72[1] = sub_26822C69C;
      OUTLINED_FUNCTION_34_9();
      OUTLINED_FUNCTION_24_3();

      return v77(v74, v75, v76, v77, v78, v79, v80, v81, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, a22, a23, a24);
    }

    v103 = *(v24 + 272);
    v104 = *(v24 + 280);
    sub_26814320C(*(v24 + 408), v104);
    *(v24 + 80) = v103;
    *(v24 + 88) = sub_268143270();
    v105 = __swift_allocate_boxed_opaque_existential_0((v24 + 56));
    sub_2681432C8(v104, v105);
    OUTLINED_FUNCTION_15_4();
    OUTLINED_FUNCTION_10_2();
    *(v24 + 544) = v106;
    *v106 = v107;
    v106[1] = sub_26822C400;
    OUTLINED_FUNCTION_34_9();
  }

  else
  {
    v83 = *(v24 + 288);
    sub_26814320C(v66, v83);
    *(v24 + 120) = v67;
    *(v24 + 128) = sub_268143270();
    v84 = __swift_allocate_boxed_opaque_existential_0((v24 + 96));
    sub_2681432C8(v83, v84);
    OUTLINED_FUNCTION_15_4();
    OUTLINED_FUNCTION_10_2();
    *(v24 + 536) = v85;
    *v85 = v86;
    v85[1] = sub_26822C164;
    OUTLINED_FUNCTION_34_9();
  }

  OUTLINED_FUNCTION_24_3();

  return v112(v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, a22, a23, a24);
}

uint64_t sub_26822BEB8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 176));
  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_26822BFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_82_0();
  v27 = *(v24 + 296);
  v28 = *(v24 + 304);

  sub_26814332C(v27);
  sub_26814332C(v28);
  v29 = OUTLINED_FUNCTION_1_36();
  v30(v29);
  v31 = OUTLINED_FUNCTION_17_16();
  v32(v31);
  OUTLINED_FUNCTION_21();
  sub_2681433DC(v33, v34, v35);
  OUTLINED_FUNCTION_21();
  sub_2681433DC(v36, v37, v38);
  sub_2681433DC(v25, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v26, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v28, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_24_3();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_26822C164()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_26822C264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_82_0();
  v27 = *(v24 + 288);

  sub_26814332C(v27);
  v28 = OUTLINED_FUNCTION_1_36();
  v29(v28);
  v30 = OUTLINED_FUNCTION_17_16();
  v31(v30);
  OUTLINED_FUNCTION_21();
  sub_2681433DC(v32, v33, v34);
  OUTLINED_FUNCTION_21();
  sub_2681433DC(v35, v36, v37);
  sub_2681433DC(v25, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v26, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v27, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_24_3();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_26822C400()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_26822C500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_82_0();
  v27 = *(v24 + 280);

  sub_26814332C(v27);
  v28 = OUTLINED_FUNCTION_1_36();
  v29(v28);
  v30 = OUTLINED_FUNCTION_17_16();
  v31(v30);
  OUTLINED_FUNCTION_21();
  sub_2681433DC(v32, v33, v34);
  OUTLINED_FUNCTION_21();
  sub_2681433DC(v35, v36, v37);
  sub_2681433DC(v25, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v26, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v27, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_24_3();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_26822C69C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_26822C79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_82_0();

  v27 = OUTLINED_FUNCTION_1_36();
  v28(v27);
  v29 = OUTLINED_FUNCTION_17_16();
  v30(v29);
  OUTLINED_FUNCTION_21();
  sub_2681433DC(v31, v32, v33);
  OUTLINED_FUNCTION_21();
  sub_2681433DC(v34, v35, v36);
  sub_2681433DC(v25, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v26, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v24, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_24_3();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_26822C92C(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 280) = a2;
  *(v3 + 160) = a1;
  *(v3 + 168) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26822C9E4);
}

uint64_t sub_26822C9E4()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 160);
  if (*(v0 + 280))
  {
    if (*(v0 + 280) == 1)
    {
      v2 = sub_2681DF490(v1);
      *(v0 + 224) = v2;
      v3 = v2;
      *(v0 + 40) = sub_268129504(0, &qword_28024D4C0, 0x277CD3E08);
      *(v0 + 16) = v3;
      sub_26813CC6C(v0 + 16, v0 + 48);
      sub_268129504(0, &qword_28024CDC0, 0x277CD4250);
      v4 = v3;
      if (swift_dynamicCast())
      {
        v5 = *(v0 + 152);
        *(v0 + 232) = v5;
        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
        sub_26813CCC8(v5);
        if (v6)
        {
          sub_2683CFB38();

          v7 = 0;
        }

        else
        {
          v7 = 1;
        }

        v20 = *(v0 + 184);
        v21 = sub_2683CF168();
        __swift_storeEnumTagSinglePayload(v20, v7, 1, v21);
        v22 = swift_task_alloc();
        *(v0 + 240) = v22;
        *v22 = v0;
        v22[1] = sub_26822CECC;
        OUTLINED_FUNCTION_39_4(*(v0 + 184));

        return sub_26812AAD0();
      }

      else
      {
        sub_26822D394();
        swift_willThrow();

        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
        OUTLINED_FUNCTION_33_9();

        OUTLINED_FUNCTION_40();

        return v14();
      }
    }

    else
    {
      *(v0 + 256) = sub_2681DF4C8(v1);
      sub_2683CFEA8();
      sub_2683CF168();
      v15 = OUTLINED_FUNCTION_25_14();
      __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
      v19 = swift_task_alloc();
      *(v0 + 264) = v19;
      *v19 = v0;
      v19[1] = sub_26822D07C;
      OUTLINED_FUNCTION_39_4(*(v0 + 176));

      return sub_26812ADF8();
    }
  }

  else
  {
    *(v0 + 200) = sub_2681DF4C8(v1);
    sub_2683CFEA8();
    sub_2683CF168();
    v8 = OUTLINED_FUNCTION_25_14();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
    v12 = swift_task_alloc();
    *(v0 + 208) = v12;
    *v12 = v0;
    v12[1] = sub_26822CD20;
    OUTLINED_FUNCTION_39_4(*(v0 + 192));

    return sub_26812AFF4();
  }
}

uint64_t sub_26822CD20()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v2[10] = v1;
  v2[11] = v4;
  v2[12] = v0;
  OUTLINED_FUNCTION_24_11();
  *v5 = *v1;
  *(v6 + 216) = v0;

  OUTLINED_FUNCTION_24_11();
  sub_2681433DC(*(v7 + 192), &unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_26822CE54()
{
  OUTLINED_FUNCTION_7();

  OUTLINED_FUNCTION_33_9();

  v1 = OUTLINED_FUNCTION_37_0();

  return v2(v1);
}

uint64_t sub_26822CECC()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v2[13] = v1;
  v2[14] = v4;
  v2[15] = v0;
  OUTLINED_FUNCTION_24_11();
  *v5 = *v1;
  *(v6 + 248) = v0;

  OUTLINED_FUNCTION_24_11();
  sub_2681433DC(*(v7 + 184), &unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_26822D000()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 232);

  OUTLINED_FUNCTION_33_9();

  v2 = OUTLINED_FUNCTION_37_0();

  return v3(v2);
}

uint64_t sub_26822D07C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v2[16] = v1;
  v2[17] = v4;
  v2[18] = v0;
  OUTLINED_FUNCTION_24_11();
  *v5 = *v1;
  *(v6 + 272) = v0;

  OUTLINED_FUNCTION_24_11();
  sub_2681433DC(*(v7 + 176), &unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_26822D1B0()
{
  OUTLINED_FUNCTION_7();

  OUTLINED_FUNCTION_33_9();

  v1 = OUTLINED_FUNCTION_37_0();

  return v2(v1);
}

uint64_t sub_26822D228()
{
  OUTLINED_FUNCTION_7();

  OUTLINED_FUNCTION_33_9();

  OUTLINED_FUNCTION_40();

  return v1();
}

uint64_t sub_26822D2A0()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 232);

  OUTLINED_FUNCTION_33_9();

  OUTLINED_FUNCTION_40();

  return v2();
}

uint64_t sub_26822D31C()
{
  OUTLINED_FUNCTION_7();

  OUTLINED_FUNCTION_33_9();

  OUTLINED_FUNCTION_40();

  return v1();
}

uint64_t sub_26822D394()
{
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v0 = sub_2683CF7E8();
  __swift_project_value_buffer(v0, qword_28027C958);
  v1 = sub_2683CF7C8();
  v2 = sub_2683CFE78();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2680EB000, v1, v2, "[CreateNote NeedsConfirmationStrategy] Item to confirm is an INImageNoteContent and is not supported", v3, 2u);
    MEMORY[0x26D617A40](v3, -1, -1);
  }

  sub_26813CD2C();

  return swift_allocError();
}

uint64_t sub_26822D49C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2681342AC;

  return sub_26822A4A8();
}

uint64_t sub_26822D560()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268133EC8;

  return sub_26822B080();
}

unint64_t sub_26822D63C()
{
  result = qword_28024FD58;
  if (!qword_28024FD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024FD58);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_36()
{
  v2 = *(v0 + 328);
  *(v1 - 80) = *(v0 + 280);
  return v2;
}

uint64_t OUTLINED_FUNCTION_33_9()
{
}

void OUTLINED_FUNCTION_45_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_26822D774(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2822009F8](sub_26822D794);
}

uint64_t sub_26822D794()
{
  OUTLINED_FUNCTION_14();
  __swift_project_boxed_opaque_existential_1((*(v0 + 40) + 24), *(*(v0 + 40) + 48));
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_26822D838;

  return sub_2681DDBD0();
}

uint64_t sub_26822D838()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;
  *(v4 + 56) = v0;

  if (v0)
  {
    v5 = sub_26822DA14;
  }

  else
  {
    v5 = sub_26822D93C;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_26822D93C()
{

  sub_2683CC868();
  sub_2683CB948();
  swift_allocObject();
  *(v0 + 24) = sub_2683CB938();
  sub_2683CC3D8();

  OUTLINED_FUNCTION_40();

  return v1();
}

uint64_t sub_26822DA14()
{
  v1 = *(v0 + 56);

  sub_2683CC868();
  sub_2683CB948();
  swift_allocObject();
  *(v0 + 16) = sub_2683CB938();
  sub_2683CC3D8();

  OUTLINED_FUNCTION_40();

  return v2();
}

uint64_t sub_26822DB00(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_26822DB20);
}

uint64_t sub_26822DB20()
{
  OUTLINED_FUNCTION_14();
  __swift_project_boxed_opaque_existential_1((*(v0 + 24) + 24), *(*(v0 + 24) + 48));
  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  *(v0 + 32) = v1;
  *v1 = v2;
  v1[1] = sub_26822DF9C;

  return sub_2681DE84C();
}

uint64_t sub_26822DBC0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_26822DBE0);
}

uint64_t sub_26822DBE0()
{
  OUTLINED_FUNCTION_14();
  __swift_project_boxed_opaque_existential_1((*(v0 + 24) + 24), *(*(v0 + 24) + 48));
  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  *(v0 + 32) = v1;
  *v1 = v2;
  v1[1] = sub_268188BA8;

  return sub_2681DECA4();
}

uint64_t sub_26822DC80(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UndoAndSendOutputFlow();
  sub_26822DE38();
  return sub_2683CBF48();
}

uint64_t sub_26822DCDC()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_26822DD64(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_268133EC8;

  return sub_26822D774(a1);
}

uint64_t sub_26822DE00(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UndoAndSendOutputFlow();

  return sub_2683CBF88();
}

unint64_t sub_26822DE38()
{
  result = qword_28024E378;
  if (!qword_28024E378)
  {
    type metadata accessor for UndoAndSendOutputFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E378);
  }

  return result;
}

uint64_t sub_26822DE8C()
{
  OUTLINED_FUNCTION_14();
  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_29(v1);

  return sub_26822DBC0(v3, v4);
}

uint64_t sub_26822DF14()
{
  OUTLINED_FUNCTION_14();
  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_29(v1);

  return sub_26822DB00(v3, v4);
}

uint64_t type metadata accessor for SetTaskAttributeIntentWrapper(uint64_t a1)
{
  result = qword_28024FD60;
  if (!qword_28024FD60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26822E028(uint64_t a1)
{
  result = sub_26812EB34(319, &qword_28024FD70, &protocol descriptor for SetTaskAttributeIntentModel);
  if (v2 <= 0x3F)
  {
    result = sub_26812EB34(319, &qword_28024CDA0, &protocol descriptor for NotebookReferenceResolving);
    if (v3 <= 0x3F)
    {
      result = sub_26812EB34(319, &qword_28024D380, &protocol descriptor for NotebookDateTimeResolving);
      if (v4 <= 0x3F)
      {
        result = sub_26812EB34(319, &qword_28024D388, &protocol descriptor for NotebookLocationResolving);
        if (v5 <= 0x3F)
        {
          result = sub_26812EB34(319, &qword_28024F9E8, &protocol descriptor for SiriKitContactResolving);
          if (v6 <= 0x3F)
          {
            result = sub_2683CB668();
            if (v7 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_26822E15C()
{
  v1 = v0;
  v2 = type metadata accessor for IntentTriggerModel(0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = (&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EA58, &unk_2683DEB50);
  v7 = OUTLINED_FUNCTION_23(v6);
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  v10 = OUTLINED_FUNCTION_21_14(v1, v1[3]);
  sub_2681C326C(v10, 0, v5);
  sub_2681340E8(v5 + *(v3 + 28), v9, &qword_28024EA58, &unk_2683DEB50);
  OUTLINED_FUNCTION_0_46();
  sub_26822F8E8(v5, v11);
  v12 = type metadata accessor for LocationQuery(0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v12) == 1)
  {
    sub_26812D9E0(v9, &qword_28024EA58, &unk_2683DEB50);
    return 2;
  }

  else
  {
    v13 = v9[*(v12 + 24)];
    OUTLINED_FUNCTION_1_37();
    sub_26822F8E8(v9, v14);
  }

  return v13;
}

uint64_t sub_26822E2C0(char a1)
{
  *(v2 + 96) = v1;
  *(v2 + 272) = a1;
  v3 = sub_2683CEBD8();
  *(v2 + 104) = v3;
  *(v2 + 112) = *(v3 - 8);
  *(v2 + 120) = OUTLINED_FUNCTION_15_1();
  Type = type metadata accessor for LocationQuery.QueryType(0);
  OUTLINED_FUNCTION_23(Type);
  *(v2 + 128) = OUTLINED_FUNCTION_15_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EA58, &unk_2683DEB50);
  OUTLINED_FUNCTION_23(v5);
  *(v2 + 136) = OUTLINED_FUNCTION_15_1();
  v6 = type metadata accessor for LocationQuery(0);
  *(v2 + 144) = v6;
  OUTLINED_FUNCTION_23(v6);
  *(v2 + 152) = OUTLINED_FUNCTION_15_1();
  v7 = type metadata accessor for IntentTriggerModel(0);
  *(v2 + 160) = v7;
  OUTLINED_FUNCTION_23(v7);
  *(v2 + 168) = swift_task_alloc();
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  *(v2 + 192) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26822E43C);
}

uint64_t sub_26822EB58()
{
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;
  *(v4 + 232) = v3;

  return MEMORY[0x2822009F8](sub_26822EC70);
}

uint64_t sub_26822F158(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v4 + 256) = v1;

  if (v1)
  {
    v7 = sub_26822F57C;
  }

  else
  {
    *(v4 + 264) = a1;
    v7 = sub_26822F278;
  }

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_26822F57C()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 208);
  v3 = *(v0 + 152);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v6 = *(v0 + 104);

  (*(v5 + 8))(v4, v6);
  OUTLINED_FUNCTION_1_37();
  sub_26822F8E8(v3, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_26822F690(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26822F724;

  return sub_26822E2C0(a1);
}

uint64_t sub_26822F724(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v1)
  {
    v6 = a1;
  }

  return v7(v6);
}

uint64_t sub_26822F820(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationQuery(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26822F884(uint64_t a1, uint64_t a2)
{
  Type = type metadata accessor for LocationQuery.QueryType(0);
  (*(*(Type - 8) + 16))(a2, a1, Type);
  return a2;
}

uint64_t sub_26822F8E8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_1();
  (*(v3 + 8))(a1);
  return a1;
}

id OUTLINED_FUNCTION_3_30()
{

  return sub_2683882E8(v0, v1, v2, v3, v4, v5);
}

id OUTLINED_FUNCTION_6_25()
{

  return sub_26821AD1C();
}

uint64_t OUTLINED_FUNCTION_7_18(uint64_t a1)
{

  return sub_2681BA404(a1);
}

id OUTLINED_FUNCTION_9_21(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_268176D1C(v6, (v5 + 160), a3, v4, v3);
}

void OUTLINED_FUNCTION_11_25(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_14_17()
{
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
}

void OUTLINED_FUNCTION_15_19()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x26D617A40);
}

uint64_t OUTLINED_FUNCTION_16_23()
{
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);

  return sub_268196F0C();
}

unint64_t OUTLINED_FUNCTION_19_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return sub_2681610A0(v12, v13, va);
}

uint64_t OUTLINED_FUNCTION_20_19()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_21_14(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a2);
}

uint64_t OUTLINED_FUNCTION_25_15()
{
  v2 = *(v0 + 136);
  v3 = *(v0 + 152);

  return sub_26822F820(v2, v3);
}

SiriNotebook::Common::Number::DefinedValue_optional __swiftcall Common.Number.DefinedValue.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_12_16();
  sub_2683D0408();
  result.value = OUTLINED_FUNCTION_89_0();
  v4 = 15;
  if (v2 < 0xF)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

void sub_26822FDA4(uint64_t *a1@<X8>)
{
  Common.Number.DefinedValue.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

SiriNotebook::Common::Number::Operator_optional __swiftcall Common.Number.Operator.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_12_16();
  sub_2683D0408();
  OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_949();
  if (!v5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t Common.Number.definedValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD80, &qword_2683DEB60);

  return sub_2683CE228();
}

uint64_t (*Common.Number.definedValue.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_14_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD80, &qword_2683DEB60);
  *(v0 + 32) = OUTLINED_FUNCTION_86_1(v3);
  return sub_268151B78;
}

uint64_t Common.Number.$definedValue.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD80, &qword_2683DEB60);

  return MEMORY[0x2821C3550](v0);
}

uint64_t Common.Number.$definedValue.modify()
{
  v1 = OUTLINED_FUNCTION_34_10();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD88, &qword_2683DEB68);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_21_15(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD80, &qword_2683DEB60);
  OUTLINED_FUNCTION_85_0(v11);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t (*Common.Number.name.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.Number(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.Number.$name.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD98, &qword_2683DEB78);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.Number(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.Number.$name.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD98, &qword_2683DEB78);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.Number(v11);
  OUTLINED_FUNCTION_33_10(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.Number.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.Number(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEB88);
}

uint64_t (*Common.Number.usoAssociatedApp.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.Number(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t sub_268230540()
{
  v1 = OUTLINED_FUNCTION_2_32();
  v2(v1);
  v3 = OUTLINED_FUNCTION_69();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_67_1();
  return v0();
}

uint64_t Common.Number.$usoAssociatedApp.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB0, &qword_2683DEB90);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.Number(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.Number.$usoAssociatedApp.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB0, &qword_2683DEB90);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.Number(v11);
  OUTLINED_FUNCTION_32_9(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.Number.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.Number(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEBA0);
}

uint64_t (*Common.Number.usoListPosition.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.Number(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t sub_268230938()
{
  v1 = OUTLINED_FUNCTION_2_32();
  v2(v1);
  v3 = OUTLINED_FUNCTION_69();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_67_1();
  return v0();
}

uint64_t Common.Number.$usoListPosition.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDC8, &qword_2683DEBA8);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.Number(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.Number.$usoListPosition.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDC8, &qword_2683DEBA8);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.Number(v11);
  OUTLINED_FUNCTION_31_7(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.Number.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.Number(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEBB8);
}

uint64_t (*Common.Number.usoQuantifier.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.Number(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t sub_268230D30()
{
  v1 = OUTLINED_FUNCTION_2_32();
  v2(v1);
  v3 = OUTLINED_FUNCTION_69();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_67_1();
  return v0();
}

uint64_t Common.Number.$usoQuantifier.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE0, &qword_2683DEBC0);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.Number(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.Number.$usoQuantifier.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE0, &qword_2683DEBC0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.Number(v11);
  OUTLINED_FUNCTION_30_10(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.Number.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.Number(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE8, &qword_2683DEBC8);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEBD0);
}

uint64_t (*Common.Number.usoSameAs.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.Number(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE8, &qword_2683DEBC8);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t sub_268231128()
{
  v1 = OUTLINED_FUNCTION_2_32();
  v2(v1);
  v3 = OUTLINED_FUNCTION_69();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_67_1();
  return v0();
}

uint64_t Common.Number.$usoSameAs.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDF8, &qword_2683DEBD8);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.Number(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE8, &qword_2683DEBC8);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.Number.$usoSameAs.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDF8, &qword_2683DEBD8);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.Number(v11);
  OUTLINED_FUNCTION_29_11(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE8, &qword_2683DEBC8);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.Number.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.Number(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEBE8);
}

uint64_t (*Common.Number.usoSearchQualifier.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.Number(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t sub_268231520()
{
  v1 = OUTLINED_FUNCTION_2_32();
  v2(v1);
  v3 = OUTLINED_FUNCTION_69();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_67_1();
  return v0();
}

uint64_t Common.Number.$usoSearchQualifier.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE10, &qword_2683DEBF0);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.Number(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.Number.$usoSearchQualifier.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE10, &qword_2683DEBF0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.Number(v11);
  OUTLINED_FUNCTION_39_8(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

void sub_2682317F8(uint64_t *a1@<X8>)
{
  Common.SortOrder.DefinedValue.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t Common.SortOrder.definedValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE18, &qword_2683DEBF8);

  return sub_2683CE228();
}

uint64_t (*Common.SortOrder.definedValue.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_14_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE18, &qword_2683DEBF8);
  *(v0 + 32) = OUTLINED_FUNCTION_86_1(v3);
  return sub_268151B78;
}

uint64_t Common.SortOrder.$definedValue.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE18, &qword_2683DEBF8);

  return MEMORY[0x2821C3550](v0);
}

uint64_t Common.SortOrder.$definedValue.modify()
{
  v1 = OUTLINED_FUNCTION_34_10();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE20, &qword_2683DEC00);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_21_15(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE18, &qword_2683DEBF8);
  OUTLINED_FUNCTION_85_0(v11);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t sub_268231AB0()
{
  v1 = OUTLINED_FUNCTION_2_32();
  v2(v1);
  v3 = OUTLINED_FUNCTION_69();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_67_1();
  return v0();
}

uint64_t Common.SortOrder.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.SortOrder(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEB88);
}

uint64_t (*Common.SortOrder.usoAssociatedApp.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.SortOrder(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.SortOrder.$usoAssociatedApp.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB0, &qword_2683DEB90);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.SortOrder(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.SortOrder.$usoAssociatedApp.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB0, &qword_2683DEB90);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.SortOrder(v11);
  OUTLINED_FUNCTION_33_10(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.SortOrder.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.SortOrder(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEBA0);
}

uint64_t (*Common.SortOrder.usoListPosition.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.SortOrder(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.SortOrder.$usoListPosition.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDC8, &qword_2683DEBA8);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.SortOrder(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.SortOrder.$usoListPosition.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDC8, &qword_2683DEBA8);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.SortOrder(v11);
  OUTLINED_FUNCTION_32_9(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.SortOrder.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.SortOrder(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEBB8);
}

uint64_t (*Common.SortOrder.usoQuantifier.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.SortOrder(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.SortOrder.$usoQuantifier.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE0, &qword_2683DEBC0);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.SortOrder(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.SortOrder.$usoQuantifier.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE0, &qword_2683DEBC0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.SortOrder(v11);
  OUTLINED_FUNCTION_31_7(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.SortOrder.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.SortOrder(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE28, &qword_2683DEC08);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEC10);
}

uint64_t (*Common.SortOrder.usoSameAs.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.SortOrder(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE28, &qword_2683DEC08);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.SortOrder.$usoSameAs.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE38, &qword_2683DEC18);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.SortOrder(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE28, &qword_2683DEC08);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.SortOrder.$usoSameAs.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE38, &qword_2683DEC18);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.SortOrder(v11);
  OUTLINED_FUNCTION_30_10(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE28, &qword_2683DEC08);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.SortOrder.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.SortOrder(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEBE8);
}

uint64_t (*Common.SortOrder.usoSearchQualifier.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.SortOrder(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.SortOrder.$usoSearchQualifier.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE10, &qword_2683DEBF0);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.SortOrder(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.SortOrder.$usoSearchQualifier.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE10, &qword_2683DEBF0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.SortOrder(v11);
  OUTLINED_FUNCTION_29_11(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.PointOfInterest.address.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE40, &qword_2683DEC20);

  return sub_2683CE228();
}

uint64_t (*Common.PointOfInterest.address.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_14_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE40, &qword_2683DEC20);
  *(v0 + 32) = OUTLINED_FUNCTION_86_1(v3);
  return sub_268151B78;
}

uint64_t Common.PointOfInterest.$address.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE40, &qword_2683DEC20);

  return MEMORY[0x2821C3550](v0);
}

uint64_t Common.PointOfInterest.$address.modify()
{
  v1 = OUTLINED_FUNCTION_34_10();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE50, &qword_2683DEC30);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_21_15(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE40, &qword_2683DEC20);
  OUTLINED_FUNCTION_85_0(v11);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.PointOfInterest.associatedPerson.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.PointOfInterest(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE58, &qword_2683DEC38);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEC40);
}

uint64_t (*Common.PointOfInterest.associatedPerson.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.PointOfInterest(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE58, &qword_2683DEC38);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.PointOfInterest.$associatedPerson.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE68, &qword_2683DEC48);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.PointOfInterest(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE58, &qword_2683DEC38);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.PointOfInterest.$associatedPerson.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE68, &qword_2683DEC48);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.PointOfInterest(v11);
  OUTLINED_FUNCTION_33_10(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE58, &qword_2683DEC38);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t (*Common.PointOfInterest.categories.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.PointOfInterest(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE70, &qword_2683DEC50);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.PointOfInterest.$categories.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE78, &qword_2683DEC58);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.PointOfInterest(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE70, &qword_2683DEC50);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.PointOfInterest.$categories.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE78, &qword_2683DEC58);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.PointOfInterest(v11);
  OUTLINED_FUNCTION_32_9(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE70, &qword_2683DEC50);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.PointOfInterest.containedIn.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.PointOfInterest(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE80, &qword_2683DEC60);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEC68);
}

uint64_t (*Common.PointOfInterest.containedIn.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.PointOfInterest(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE80, &qword_2683DEC60);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.PointOfInterest.$containedIn.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE90, &qword_2683DEC70);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.PointOfInterest(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE80, &qword_2683DEC60);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.PointOfInterest.$containedIn.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE90, &qword_2683DEC70);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.PointOfInterest(v11);
  OUTLINED_FUNCTION_31_7(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE80, &qword_2683DEC60);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t (*Common.PointOfInterest.name.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.PointOfInterest(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.PointOfInterest.$name.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD98, &qword_2683DEB78);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.PointOfInterest(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.PointOfInterest.$name.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD98, &qword_2683DEB78);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.PointOfInterest(v11);
  OUTLINED_FUNCTION_30_10(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.PointOfInterest.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.PointOfInterest(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEB88);
}

uint64_t (*Common.PointOfInterest.usoAssociatedApp.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.PointOfInterest(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.PointOfInterest.$usoAssociatedApp.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB0, &qword_2683DEB90);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.PointOfInterest(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.PointOfInterest.$usoAssociatedApp.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB0, &qword_2683DEB90);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.PointOfInterest(v11);
  OUTLINED_FUNCTION_29_11(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.PointOfInterest.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.PointOfInterest(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEBA0);
}

uint64_t (*Common.PointOfInterest.usoListPosition.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.PointOfInterest(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.PointOfInterest.$usoListPosition.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDC8, &qword_2683DEBA8);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.PointOfInterest(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.PointOfInterest.$usoListPosition.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDC8, &qword_2683DEBA8);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.PointOfInterest(v11);
  OUTLINED_FUNCTION_39_8(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.PointOfInterest.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.PointOfInterest(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEBB8);
}

uint64_t (*Common.PointOfInterest.usoQuantifier.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.PointOfInterest(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t sub_2682345E8()
{
  v1 = OUTLINED_FUNCTION_2_32();
  v2(v1);
  v3 = OUTLINED_FUNCTION_69();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_67_1();
  return v0();
}

uint64_t Common.PointOfInterest.$usoQuantifier.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE0, &qword_2683DEBC0);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.PointOfInterest(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.PointOfInterest.$usoQuantifier.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE0, &qword_2683DEBC0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.PointOfInterest(v11);
  OUTLINED_FUNCTION_57_2(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.PointOfInterest.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.PointOfInterest(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE98, &qword_2683DEC78);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEC80);
}

uint64_t (*Common.PointOfInterest.usoSameAs.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.PointOfInterest(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE98, &qword_2683DEC78);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t sub_2682349E0()
{
  v1 = OUTLINED_FUNCTION_2_32();
  v2(v1);
  v3 = OUTLINED_FUNCTION_69();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_67_1();
  return v0();
}

uint64_t Common.PointOfInterest.$usoSameAs.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEA8, &qword_2683DEC88);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.PointOfInterest(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE98, &qword_2683DEC78);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.PointOfInterest.$usoSameAs.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEA8, &qword_2683DEC88);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.PointOfInterest(v11);
  OUTLINED_FUNCTION_62_0(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE98, &qword_2683DEC78);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.PointOfInterest.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.PointOfInterest(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEBE8);
}

uint64_t (*Common.PointOfInterest.usoSearchQualifier.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.PointOfInterest(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t sub_268234DD8()
{
  v1 = OUTLINED_FUNCTION_2_32();
  v2(v1);
  v3 = OUTLINED_FUNCTION_69();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_67_1();
  return v0();
}

uint64_t Common.PointOfInterest.$usoSearchQualifier.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE10, &qword_2683DEBF0);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.PointOfInterest(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.PointOfInterest.$usoSearchQualifier.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE10, &qword_2683DEBF0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.PointOfInterest(v11);
  OUTLINED_FUNCTION_68_1(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

void sub_2682350B0(uint64_t *a1@<X8>)
{
  Common.OffsetDirection.DefinedValue.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t Common.OffsetDirection.definedValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEB0, &qword_2683DEC90);

  return sub_2683CE228();
}

uint64_t (*Common.OffsetDirection.definedValue.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_14_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEB0, &qword_2683DEC90);
  *(v0 + 32) = OUTLINED_FUNCTION_86_1(v3);
  return sub_268151B78;
}

uint64_t Common.OffsetDirection.$definedValue.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEB0, &qword_2683DEC90);

  return MEMORY[0x2821C3550](v0);
}

uint64_t Common.OffsetDirection.$definedValue.modify()
{
  v1 = OUTLINED_FUNCTION_34_10();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEB8, &qword_2683DEC98);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_21_15(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEB0, &qword_2683DEC90);
  OUTLINED_FUNCTION_85_0(v11);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.OffsetDirection.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.OffsetDirection(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEB88);
}

uint64_t (*Common.OffsetDirection.usoAssociatedApp.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.OffsetDirection(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.OffsetDirection.$usoAssociatedApp.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB0, &qword_2683DEB90);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.OffsetDirection(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.OffsetDirection.$usoAssociatedApp.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB0, &qword_2683DEB90);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.OffsetDirection(v11);
  OUTLINED_FUNCTION_33_10(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.OffsetDirection.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.OffsetDirection(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEBA0);
}

uint64_t (*Common.OffsetDirection.usoListPosition.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.OffsetDirection(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.OffsetDirection.$usoListPosition.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDC8, &qword_2683DEBA8);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.OffsetDirection(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.OffsetDirection.$usoListPosition.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDC8, &qword_2683DEBA8);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.OffsetDirection(v11);
  OUTLINED_FUNCTION_32_9(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.OffsetDirection.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.OffsetDirection(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEBB8);
}

uint64_t (*Common.OffsetDirection.usoQuantifier.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.OffsetDirection(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.OffsetDirection.$usoQuantifier.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE0, &qword_2683DEBC0);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.OffsetDirection(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.OffsetDirection.$usoQuantifier.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE0, &qword_2683DEBC0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.OffsetDirection(v11);
  OUTLINED_FUNCTION_31_7(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.OffsetDirection.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.OffsetDirection(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEC0, &qword_2683DECA0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DECA8);
}

uint64_t (*Common.OffsetDirection.usoSameAs.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.OffsetDirection(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEC0, &qword_2683DECA0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.OffsetDirection.$usoSameAs.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FED0, &qword_2683DECB0);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.OffsetDirection(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEC0, &qword_2683DECA0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.OffsetDirection.$usoSameAs.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FED0, &qword_2683DECB0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.OffsetDirection(v11);
  OUTLINED_FUNCTION_30_10(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEC0, &qword_2683DECA0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.OffsetDirection.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.OffsetDirection(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEBE8);
}

uint64_t (*Common.OffsetDirection.usoSearchQualifier.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.OffsetDirection(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.OffsetDirection.$usoSearchQualifier.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE10, &qword_2683DEBF0);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.OffsetDirection(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.OffsetDirection.$usoSearchQualifier.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE10, &qword_2683DEBF0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.OffsetDirection(v11);
  OUTLINED_FUNCTION_29_11(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

SiriNotebook::Common::Integer::Operator_optional __swiftcall Common.Integer.Operator.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_12_16();
  sub_2683D0408();
  OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_949();
  if (!v5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t Common.Integer.integerValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FED8, &qword_2683DECB8);
  sub_2683CE228();
  return v1;
}

uint64_t Common.Integer.integerValue.setter()
{
  OUTLINED_FUNCTION_585();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FED8, &qword_2683DECB8);
  return sub_2683CE238();
}

uint64_t (*Common.Integer.integerValue.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_14_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FED8, &qword_2683DECB8);
  *(v0 + 32) = OUTLINED_FUNCTION_86_1(v3);
  return sub_268151B78;
}

uint64_t Common.Integer.$integerValue.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FED8, &qword_2683DECB8);

  return MEMORY[0x2821C3550](v0);
}

uint64_t Common.Integer.$integerValue.modify()
{
  v1 = OUTLINED_FUNCTION_34_10();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEE0, &qword_2683DECC0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_21_15(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FED8, &qword_2683DECB8);
  OUTLINED_FUNCTION_85_0(v11);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t sub_26823687C()
{
  v0 = OUTLINED_FUNCTION_74_1();
  v1(v0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  OUTLINED_FUNCTION_581(v2);
  return v4;
}

uint64_t sub_268236904()
{
  v0 = OUTLINED_FUNCTION_81_0();
  v1(v0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  return OUTLINED_FUNCTION_63_2(v2, v3, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t (*Common.Integer.name.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.Integer(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.Integer.$name.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD98, &qword_2683DEB78);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.Integer(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.Integer.$name.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD98, &qword_2683DEB78);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.Integer(v11);
  OUTLINED_FUNCTION_33_10(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.Integer.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.Integer(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEB88);
}

uint64_t (*Common.Integer.usoAssociatedApp.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.Integer(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.Integer.$usoAssociatedApp.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB0, &qword_2683DEB90);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.Integer(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.Integer.$usoAssociatedApp.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB0, &qword_2683DEB90);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.Integer(v11);
  OUTLINED_FUNCTION_32_9(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.Integer.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.Integer(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEBA0);
}

uint64_t (*Common.Integer.usoListPosition.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.Integer(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.Integer.$usoListPosition.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDC8, &qword_2683DEBA8);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.Integer(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.Integer.$usoListPosition.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDC8, &qword_2683DEBA8);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.Integer(v11);
  OUTLINED_FUNCTION_31_7(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.Integer.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.Integer(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEBB8);
}

uint64_t (*Common.Integer.usoQuantifier.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.Integer(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.Integer.$usoQuantifier.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE0, &qword_2683DEBC0);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.Integer(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.Integer.$usoQuantifier.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE0, &qword_2683DEBC0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.Integer(v11);
  OUTLINED_FUNCTION_30_10(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.Integer.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.Integer(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEE8, &qword_2683DECC8);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DECD0);
}

uint64_t (*Common.Integer.usoSameAs.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.Integer(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEE8, &qword_2683DECC8);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.Integer.$usoSameAs.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEF8, &qword_2683DECD8);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.Integer(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEE8, &qword_2683DECC8);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.Integer.$usoSameAs.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEF8, &qword_2683DECD8);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.Integer(v11);
  OUTLINED_FUNCTION_29_11(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEE8, &qword_2683DECC8);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.Integer.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.Integer(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEBE8);
}

uint64_t (*Common.Integer.usoSearchQualifier.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.Integer(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.Integer.$usoSearchQualifier.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE10, &qword_2683DEBF0);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.Integer(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.Integer.$usoSearchQualifier.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE10, &qword_2683DEBF0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.Integer(v11);
  OUTLINED_FUNCTION_39_8(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

SiriNotebook::Common::DateTimeRangeQualifier::DefinedValue_optional __swiftcall Common.DateTimeRangeQualifier.DefinedValue.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_12_16();
  sub_2683D0408();
  result.value = OUTLINED_FUNCTION_89_0();
  v4 = 8;
  if (v2 < 8)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

void sub_268237F90(uint64_t *a1@<X8>)
{
  Common.DateTimeRangeQualifier.DefinedValue.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t Common.DateTimeRangeQualifier.definedValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF00, &qword_2683DECE0);

  return sub_2683CE228();
}

uint64_t (*Common.DateTimeRangeQualifier.definedValue.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_14_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF00, &qword_2683DECE0);
  *(v0 + 32) = OUTLINED_FUNCTION_86_1(v3);
  return sub_268151B78;
}

uint64_t Common.DateTimeRangeQualifier.$definedValue.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF00, &qword_2683DECE0);

  return MEMORY[0x2821C3550](v0);
}

uint64_t Common.DateTimeRangeQualifier.$definedValue.modify()
{
  v1 = OUTLINED_FUNCTION_34_10();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF08, &qword_2683DECE8);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_21_15(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF00, &qword_2683DECE0);
  OUTLINED_FUNCTION_85_0(v11);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.DateTimeRangeQualifier.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.DateTimeRangeQualifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEB88);
}

uint64_t (*Common.DateTimeRangeQualifier.usoAssociatedApp.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.DateTimeRangeQualifier(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.DateTimeRangeQualifier.$usoAssociatedApp.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB0, &qword_2683DEB90);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.DateTimeRangeQualifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.DateTimeRangeQualifier.$usoAssociatedApp.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB0, &qword_2683DEB90);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.DateTimeRangeQualifier(v11);
  OUTLINED_FUNCTION_33_10(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.DateTimeRangeQualifier.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.DateTimeRangeQualifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEBA0);
}

uint64_t (*Common.DateTimeRangeQualifier.usoListPosition.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.DateTimeRangeQualifier(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.DateTimeRangeQualifier.$usoListPosition.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDC8, &qword_2683DEBA8);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.DateTimeRangeQualifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.DateTimeRangeQualifier.$usoListPosition.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDC8, &qword_2683DEBA8);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.DateTimeRangeQualifier(v11);
  OUTLINED_FUNCTION_32_9(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.DateTimeRangeQualifier.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.DateTimeRangeQualifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEBB8);
}

uint64_t (*Common.DateTimeRangeQualifier.usoQuantifier.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.DateTimeRangeQualifier(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.DateTimeRangeQualifier.$usoQuantifier.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE0, &qword_2683DEBC0);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.DateTimeRangeQualifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.DateTimeRangeQualifier.$usoQuantifier.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE0, &qword_2683DEBC0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.DateTimeRangeQualifier(v11);
  OUTLINED_FUNCTION_31_7(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.DateTimeRangeQualifier.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.DateTimeRangeQualifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF10, &qword_2683DECF0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DECF8);
}

uint64_t (*Common.DateTimeRangeQualifier.usoSameAs.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.DateTimeRangeQualifier(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF10, &qword_2683DECF0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.DateTimeRangeQualifier.$usoSameAs.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF20, &qword_2683DED00);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.DateTimeRangeQualifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF10, &qword_2683DECF0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.DateTimeRangeQualifier.$usoSameAs.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF20, &qword_2683DED00);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.DateTimeRangeQualifier(v11);
  OUTLINED_FUNCTION_30_10(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF10, &qword_2683DECF0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.DateTimeRangeQualifier.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.DateTimeRangeQualifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEBE8);
}

uint64_t (*Common.DateTimeRangeQualifier.usoSearchQualifier.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.DateTimeRangeQualifier(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.DateTimeRangeQualifier.$usoSearchQualifier.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE10, &qword_2683DEBF0);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.DateTimeRangeQualifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.DateTimeRangeQualifier.$usoSearchQualifier.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE10, &qword_2683DEBF0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.DateTimeRangeQualifier(v11);
  OUTLINED_FUNCTION_29_11(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

void sub_2682394EC(uint64_t *a1@<X8>)
{
  Common.GeographicArea.DefinedValue.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t (*Common.GeographicArea.areaType.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_14_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  *(v0 + 32) = OUTLINED_FUNCTION_86_1(v3);
  return sub_268151B78;
}

uint64_t Common.GeographicArea.$areaType.modify()
{
  v1 = OUTLINED_FUNCTION_34_10();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD98, &qword_2683DEB78);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_21_15(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  OUTLINED_FUNCTION_85_0(v11);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.GeographicArea.associatedPerson.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.GeographicArea(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE58, &qword_2683DEC38);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEC40);
}

uint64_t (*Common.GeographicArea.associatedPerson.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.GeographicArea(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE58, &qword_2683DEC38);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.GeographicArea.$associatedPerson.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE68, &qword_2683DEC48);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.GeographicArea(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE58, &qword_2683DEC38);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.GeographicArea.$associatedPerson.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE68, &qword_2683DEC48);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.GeographicArea(v11);
  OUTLINED_FUNCTION_33_10(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE58, &qword_2683DEC38);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.GeographicArea.containedIn.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.GeographicArea(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE80, &qword_2683DEC60);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEC68);
}

uint64_t (*Common.GeographicArea.containedIn.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.GeographicArea(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE80, &qword_2683DEC60);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.GeographicArea.$containedIn.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE90, &qword_2683DEC70);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.GeographicArea(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE80, &qword_2683DEC60);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.GeographicArea.$containedIn.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE90, &qword_2683DEC70);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.GeographicArea(v11);
  OUTLINED_FUNCTION_32_9(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE80, &qword_2683DEC60);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.GeographicArea.contains.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.GeographicArea(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF28, &qword_2683DED08);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DED10);
}

uint64_t (*Common.GeographicArea.contains.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.GeographicArea(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF28, &qword_2683DED08);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.GeographicArea.$contains.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF38, &qword_2683DED18);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.GeographicArea(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF28, &qword_2683DED08);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.GeographicArea.$contains.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF38, &qword_2683DED18);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.GeographicArea(v11);
  OUTLINED_FUNCTION_31_7(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF28, &qword_2683DED08);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.GeographicArea.definedValue.getter()
{
  type metadata accessor for Common.GeographicArea(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF40, &qword_2683DED20);
  return sub_2683CE228();
}

uint64_t Common.GeographicArea.definedValue.setter()
{
  v0 = OUTLINED_FUNCTION_58_2();
  type metadata accessor for Common.GeographicArea(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF40, &qword_2683DED20);
  OUTLINED_FUNCTION_583(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, SWORD2(v11), SBYTE6(v11), SHIBYTE(v11));
  return sub_2683CE238();
}

uint64_t (*Common.GeographicArea.definedValue.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.GeographicArea(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF40, &qword_2683DED20);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.GeographicArea.$definedValue.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF48, &qword_2683DED28);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.GeographicArea(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF40, &qword_2683DED20);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.GeographicArea.$definedValue.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF48, &qword_2683DED28);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.GeographicArea(v11);
  OUTLINED_FUNCTION_30_10(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF40, &qword_2683DED20);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t (*Common.GeographicArea.name.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.GeographicArea(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.GeographicArea.$name.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD98, &qword_2683DEB78);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.GeographicArea(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.GeographicArea.$name.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD98, &qword_2683DEB78);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.GeographicArea(v11);
  OUTLINED_FUNCTION_29_11(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.GeographicArea.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.GeographicArea(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEB88);
}

uint64_t (*Common.GeographicArea.usoAssociatedApp.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.GeographicArea(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.GeographicArea.$usoAssociatedApp.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB0, &qword_2683DEB90);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.GeographicArea(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.GeographicArea.$usoAssociatedApp.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB0, &qword_2683DEB90);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.GeographicArea(v11);
  OUTLINED_FUNCTION_39_8(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.GeographicArea.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.GeographicArea(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEBA0);
}

uint64_t (*Common.GeographicArea.usoListPosition.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.GeographicArea(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.GeographicArea.$usoListPosition.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDC8, &qword_2683DEBA8);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.GeographicArea(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.GeographicArea.$usoListPosition.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDC8, &qword_2683DEBA8);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.GeographicArea(v11);
  OUTLINED_FUNCTION_57_2(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.GeographicArea.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.GeographicArea(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEBB8);
}

uint64_t (*Common.GeographicArea.usoQuantifier.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.GeographicArea(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.GeographicArea.$usoQuantifier.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE0, &qword_2683DEBC0);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.GeographicArea(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.GeographicArea.$usoQuantifier.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE0, &qword_2683DEBC0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.GeographicArea(v11);
  OUTLINED_FUNCTION_62_0(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.GeographicArea.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.GeographicArea(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE80, &qword_2683DEC60);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEC68);
}

uint64_t (*Common.GeographicArea.usoSameAs.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.GeographicArea(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE80, &qword_2683DEC60);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.GeographicArea.$usoSameAs.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE90, &qword_2683DEC70);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.GeographicArea(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE80, &qword_2683DEC60);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.GeographicArea.$usoSameAs.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE90, &qword_2683DEC70);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.GeographicArea(v11);
  OUTLINED_FUNCTION_68_1(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE80, &qword_2683DEC60);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.GeographicArea.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.GeographicArea(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEBE8);
}

uint64_t (*Common.GeographicArea.usoSearchQualifier.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.GeographicArea(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t sub_26823B81C()
{
  v1 = OUTLINED_FUNCTION_2_32();
  v2(v1);
  v3 = OUTLINED_FUNCTION_69();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_67_1();
  return v0();
}

uint64_t Common.GeographicArea.$usoSearchQualifier.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE10, &qword_2683DEBF0);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.GeographicArea(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.GeographicArea.$usoSearchQualifier.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE10, &qword_2683DEBF0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.GeographicArea(v11);
  OUTLINED_FUNCTION_70_0(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

void sub_26823BAF8(uint64_t *a1@<X8>)
{
  Common.DateType.DefinedValue.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t Common.DateType.definedValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF50, &qword_2683DED30);

  return sub_2683CE228();
}

uint64_t (*Common.DateType.definedValue.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_14_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF50, &qword_2683DED30);
  *(v0 + 32) = OUTLINED_FUNCTION_86_1(v3);
  return sub_268151B78;
}

uint64_t Common.DateType.$definedValue.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF50, &qword_2683DED30);

  return MEMORY[0x2821C3550](v0);
}

uint64_t Common.DateType.$definedValue.modify()
{
  v1 = OUTLINED_FUNCTION_34_10();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF58, &qword_2683DED38);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_21_15(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF50, &qword_2683DED30);
  OUTLINED_FUNCTION_85_0(v11);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.DateType.religion.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.DateType(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF60, &qword_2683DED40);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DED48);
}

uint64_t (*Common.DateType.religion.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.DateType(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF60, &qword_2683DED40);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.DateType.$religion.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF70, &qword_2683DED50);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.DateType(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF60, &qword_2683DED40);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.DateType.$religion.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF70, &qword_2683DED50);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.DateType(v11);
  OUTLINED_FUNCTION_33_10(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF60, &qword_2683DED40);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.DateType.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.DateType(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEB88);
}

uint64_t (*Common.DateType.usoAssociatedApp.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.DateType(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.DateType.$usoAssociatedApp.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB0, &qword_2683DEB90);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.DateType(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.DateType.$usoAssociatedApp.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB0, &qword_2683DEB90);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.DateType(v11);
  OUTLINED_FUNCTION_32_9(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.DateType.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.DateType(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEBA0);
}

uint64_t (*Common.DateType.usoListPosition.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.DateType(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.DateType.$usoListPosition.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDC8, &qword_2683DEBA8);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.DateType(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.DateType.$usoListPosition.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDC8, &qword_2683DEBA8);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.DateType(v11);
  OUTLINED_FUNCTION_31_7(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.DateType.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.DateType(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEBB8);
}

uint64_t (*Common.DateType.usoQuantifier.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.DateType(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.DateType.$usoQuantifier.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE0, &qword_2683DEBC0);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.DateType(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.DateType.$usoQuantifier.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE0, &qword_2683DEBC0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.DateType(v11);
  OUTLINED_FUNCTION_30_10(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.DateType.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.DateType(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF78, &qword_2683DED58);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DED60);
}

uint64_t (*Common.DateType.usoSameAs.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.DateType(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF78, &qword_2683DED58);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.DateType.$usoSameAs.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF88, &qword_2683DED68);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.DateType(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF78, &qword_2683DED58);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.DateType.$usoSameAs.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF88, &qword_2683DED68);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.DateType(v11);
  OUTLINED_FUNCTION_29_11(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF78, &qword_2683DED58);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.DateType.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.DateType(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEBE8);
}

uint64_t (*Common.DateType.usoSearchQualifier.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.DateType(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.DateType.$usoSearchQualifier.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE10, &qword_2683DEBF0);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.DateType(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.DateType.$usoSearchQualifier.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE10, &qword_2683DEBF0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.DateType(v11);
  OUTLINED_FUNCTION_39_8(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t (*Common.ContactAddress.label.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_14_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  *(v0 + 32) = OUTLINED_FUNCTION_86_1(v3);
  return sub_268151B78;
}

uint64_t Common.ContactAddress.$label.modify()
{
  v1 = OUTLINED_FUNCTION_34_10();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD98, &qword_2683DEB78);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_21_15(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  OUTLINED_FUNCTION_85_0(v11);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.ContactAddress.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.ContactAddress(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEB88);
}

uint64_t (*Common.ContactAddress.usoAssociatedApp.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.ContactAddress(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.ContactAddress.$usoAssociatedApp.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB0, &qword_2683DEB90);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.ContactAddress(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.ContactAddress.$usoAssociatedApp.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB0, &qword_2683DEB90);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.ContactAddress(v11);
  OUTLINED_FUNCTION_33_10(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.ContactAddress.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.ContactAddress(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEBA0);
}

uint64_t (*Common.ContactAddress.usoListPosition.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.ContactAddress(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.ContactAddress.$usoListPosition.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDC8, &qword_2683DEBA8);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.ContactAddress(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.ContactAddress.$usoListPosition.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDC8, &qword_2683DEBA8);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.ContactAddress(v11);
  OUTLINED_FUNCTION_32_9(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.ContactAddress.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.ContactAddress(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEBB8);
}

uint64_t (*Common.ContactAddress.usoQuantifier.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.ContactAddress(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.ContactAddress.$usoQuantifier.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE0, &qword_2683DEBC0);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.ContactAddress(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.ContactAddress.$usoQuantifier.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE0, &qword_2683DEBC0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.ContactAddress(v11);
  OUTLINED_FUNCTION_31_7(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.ContactAddress.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.ContactAddress(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF90, &qword_2683DED70);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DED78);
}

uint64_t (*Common.ContactAddress.usoSameAs.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.ContactAddress(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF90, &qword_2683DED70);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.ContactAddress.$usoSameAs.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFA0, &qword_2683DED80);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.ContactAddress(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF90, &qword_2683DED70);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.ContactAddress.$usoSameAs.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFA0, &qword_2683DED80);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.ContactAddress(v11);
  OUTLINED_FUNCTION_30_10(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FF90, &qword_2683DED70);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.ContactAddress.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.ContactAddress(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEBE8);
}

uint64_t (*Common.ContactAddress.usoSearchQualifier.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.ContactAddress(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.ContactAddress.$usoSearchQualifier.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE10, &qword_2683DEBF0);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.ContactAddress(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.ContactAddress.$usoSearchQualifier.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE10, &qword_2683DEBF0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.ContactAddress(v11);
  OUTLINED_FUNCTION_29_11(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t (*Common.ContactAddress.value.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.ContactAddress(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.ContactAddress.$value.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD98, &qword_2683DEB78);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.ContactAddress(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.ContactAddress.$value.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD98, &qword_2683DEB78);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.ContactAddress(v11);
  OUTLINED_FUNCTION_39_8(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

SiriNotebook::Common::SearchQualifier::DefinedValue_optional __swiftcall Common.SearchQualifier.DefinedValue.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_12_16();
  sub_2683D0408();
  result.value = OUTLINED_FUNCTION_89_0();
  v4 = 6;
  if (v2 < 6)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

void sub_26823EB50(uint64_t *a1@<X8>)
{
  Common.SearchQualifier.DefinedValue.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t Common.SearchQualifier.definedValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFA8, &qword_2683DED88);

  return sub_2683CE228();
}

uint64_t (*Common.SearchQualifier.definedValue.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_14_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFA8, &qword_2683DED88);
  *(v0 + 32) = OUTLINED_FUNCTION_86_1(v3);
  return sub_268151B78;
}

uint64_t Common.SearchQualifier.$definedValue.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFA8, &qword_2683DED88);

  return MEMORY[0x2821C3550](v0);
}

uint64_t Common.SearchQualifier.$definedValue.modify()
{
  v1 = OUTLINED_FUNCTION_34_10();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFB0, &qword_2683DED90);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_21_15(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFA8, &qword_2683DED88);
  OUTLINED_FUNCTION_85_0(v11);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.SearchQualifier.similarity.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.SearchQualifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFB8, &qword_2683DED98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEDA0);
}

uint64_t (*Common.SearchQualifier.similarity.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.SearchQualifier(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFB8, &qword_2683DED98);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.SearchQualifier.$similarity.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFC8, &qword_2683DEDA8);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.SearchQualifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFB8, &qword_2683DED98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.SearchQualifier.$similarity.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFC8, &qword_2683DEDA8);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.SearchQualifier(v11);
  OUTLINED_FUNCTION_33_10(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFB8, &qword_2683DED98);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t sub_26823F1BC()
{
  OUTLINED_FUNCTION_588();
  v0 = OUTLINED_FUNCTION_74_1();
  v1(v0);
  OUTLINED_FUNCTION_582();
  sub_2683CE228();
  return v3;
}

uint64_t sub_26823F238()
{
  OUTLINED_FUNCTION_61_2();
  v0 = OUTLINED_FUNCTION_580();
  v1(v0);
  v2 = OUTLINED_FUNCTION_582();
  OUTLINED_FUNCTION_93_1(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
  return sub_2683CE238();
}

uint64_t (*Common.SearchQualifier.sortDirections.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.SearchQualifier(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFD0, &qword_2683DEDB0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.SearchQualifier.$sortDirections.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFD8, &qword_2683DEDB8);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.SearchQualifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFD0, &qword_2683DEDB0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.SearchQualifier.$sortDirections.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFD8, &qword_2683DEDB8);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.SearchQualifier(v11);
  OUTLINED_FUNCTION_32_9(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFD0, &qword_2683DEDB0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.SearchQualifier.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.SearchQualifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEB88);
}

uint64_t (*Common.SearchQualifier.usoAssociatedApp.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.SearchQualifier(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.SearchQualifier.$usoAssociatedApp.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB0, &qword_2683DEB90);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.SearchQualifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.SearchQualifier.$usoAssociatedApp.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB0, &qword_2683DEB90);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.SearchQualifier(v11);
  OUTLINED_FUNCTION_31_7(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.SearchQualifier.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.SearchQualifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEBA0);
}

uint64_t (*Common.SearchQualifier.usoListPosition.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.SearchQualifier(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.SearchQualifier.$usoListPosition.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDC8, &qword_2683DEBA8);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.SearchQualifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.SearchQualifier.$usoListPosition.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDC8, &qword_2683DEBA8);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.SearchQualifier(v11);
  OUTLINED_FUNCTION_30_10(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.SearchQualifier.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.SearchQualifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEBB8);
}

uint64_t (*Common.SearchQualifier.usoQuantifier.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.SearchQualifier(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.SearchQualifier.$usoQuantifier.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE0, &qword_2683DEBC0);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.SearchQualifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.SearchQualifier.$usoQuantifier.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE0, &qword_2683DEBC0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.SearchQualifier(v11);
  OUTLINED_FUNCTION_29_11(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.SearchQualifier.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.SearchQualifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEBE8);
}

uint64_t (*Common.SearchQualifier.usoSameAs.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.SearchQualifier(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.SearchQualifier.$usoSameAs.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE10, &qword_2683DEBF0);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.SearchQualifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.SearchQualifier.$usoSameAs.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE10, &qword_2683DEBF0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.SearchQualifier(v11);
  OUTLINED_FUNCTION_39_8(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.SearchQualifier.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.SearchQualifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEBE8);
}

uint64_t (*Common.SearchQualifier.usoSearchQualifier.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.SearchQualifier(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.SearchQualifier.$usoSearchQualifier.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE10, &qword_2683DEBF0);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.SearchQualifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.SearchQualifier.$usoSearchQualifier.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE10, &qword_2683DEBF0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.SearchQualifier(v11);
  OUTLINED_FUNCTION_57_2(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t (*Common.SortValue.name.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_14_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  *(v0 + 32) = OUTLINED_FUNCTION_86_1(v3);
  return sub_268151B78;
}

uint64_t Common.SortValue.$name.modify()
{
  v1 = OUTLINED_FUNCTION_34_10();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD98, &qword_2683DEB78);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_21_15(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  OUTLINED_FUNCTION_85_0(v11);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.SortValue.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.SortValue(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEB88);
}

uint64_t (*Common.SortValue.usoAssociatedApp.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.SortValue(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.SortValue.$usoAssociatedApp.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB0, &qword_2683DEB90);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.SortValue(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.SortValue.$usoAssociatedApp.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB0, &qword_2683DEB90);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.SortValue(v11);
  OUTLINED_FUNCTION_33_10(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.SortValue.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.SortValue(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEBA0);
}

uint64_t (*Common.SortValue.usoListPosition.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.SortValue(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.SortValue.$usoListPosition.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDC8, &qword_2683DEBA8);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.SortValue(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.SortValue.$usoListPosition.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDC8, &qword_2683DEBA8);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.SortValue(v11);
  OUTLINED_FUNCTION_32_9(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.SortValue.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.SortValue(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEBB8);
}

uint64_t (*Common.SortValue.usoQuantifier.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.SortValue(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.SortValue.$usoQuantifier.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE0, &qword_2683DEBC0);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.SortValue(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.SortValue.$usoQuantifier.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE0, &qword_2683DEBC0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.SortValue(v11);
  OUTLINED_FUNCTION_31_7(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.SortValue.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.SortValue(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFE0, &qword_2683DEDC0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEDC8);
}

uint64_t (*Common.SortValue.usoSameAs.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.SortValue(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFE0, &qword_2683DEDC0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.SortValue.$usoSameAs.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFF0, &qword_2683DEDD0);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.SortValue(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFE0, &qword_2683DEDC0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.SortValue.$usoSameAs.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFF0, &qword_2683DEDD0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.SortValue(v11);
  OUTLINED_FUNCTION_30_10(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFE0, &qword_2683DEDC0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.SortValue.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.SortValue(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEBE8);
}

uint64_t (*Common.SortValue.usoSearchQualifier.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.SortValue(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.SortValue.$usoSearchQualifier.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE10, &qword_2683DEBF0);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.SortValue(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.SortValue.$usoSearchQualifier.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE10, &qword_2683DEBF0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.SortValue(v11);
  OUTLINED_FUNCTION_29_11(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t sub_268241B68(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = OUTLINED_FUNCTION_946(a1, a2, a3);
  OUTLINED_FUNCTION_23(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v7);
  sub_26812C2A8(a1, &v10 - v8, a2, a3);
  OUTLINED_FUNCTION_582();
  sub_2683CE238();
  return sub_26829A3E4(a1, a2, a3);
}

uint64_t (*Common.Note.associatedDateTime.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_14_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFF8, &qword_2683DEDD8);
  *(v0 + 32) = OUTLINED_FUNCTION_86_1(v3);
  return sub_268151B78;
}

uint64_t Common.Note.$associatedDateTime.modify()
{
  v1 = OUTLINED_FUNCTION_34_10();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250008, &qword_2683DEDE8);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_21_15(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FFF8, &qword_2683DEDD8);
  OUTLINED_FUNCTION_85_0(v11);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.Note.attachments.getter()
{
  type metadata accessor for Common.Note(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250010, &qword_2683DEDF0);
  sub_2683CE228();
  return v1;
}

uint64_t Common.Note.attachments.setter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_580();
  type metadata accessor for Common.Note(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250010, &qword_2683DEDF0);
  OUTLINED_FUNCTION_93_1(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
  return sub_2683CE238();
}

uint64_t (*Common.Note.attachments.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.Note(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250010, &qword_2683DEDF0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.Note.$attachments.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250018, &qword_2683DEDF8);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.Note(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250010, &qword_2683DEDF0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.Note.$attachments.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250018, &qword_2683DEDF8);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.Note(v11);
  OUTLINED_FUNCTION_33_10(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250010, &qword_2683DEDF0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.Note.folder.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.Note(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250020, &qword_2683DEE00);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEE08);
}

uint64_t (*Common.Note.folder.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.Note(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250020, &qword_2683DEE00);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.Note.$folder.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250030, &qword_2683DEE10);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.Note(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250020, &qword_2683DEE00);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.Note.$folder.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250030, &qword_2683DEE10);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.Note(v11);
  OUTLINED_FUNCTION_32_9(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250020, &qword_2683DEE00);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t (*Common.Note.name.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.Note(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.Note.$name.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD98, &qword_2683DEB78);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.Note(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.Note.$name.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD98, &qword_2683DEB78);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.Note(v11);
  OUTLINED_FUNCTION_31_7(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t sub_2682427B8(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_74_1();
  v2(v1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  OUTLINED_FUNCTION_581(v3);
  return v5;
}

uint64_t sub_268242820()
{
  v0 = OUTLINED_FUNCTION_81_0();
  v1(v0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  return OUTLINED_FUNCTION_63_2(v2, v3, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t (*Common.Note.stringContent.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.Note(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.Note.$stringContent.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD98, &qword_2683DEB78);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.Note(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.Note.$stringContent.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD98, &qword_2683DEB78);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.Note(v11);
  OUTLINED_FUNCTION_30_10(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t (*Common.Note.tags.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.Note(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250038, &qword_2683DEE18);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.Note.$tags.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250040, &qword_2683DEE20);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.Note(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250038, &qword_2683DEE18);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.Note.$tags.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250040, &qword_2683DEE20);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.Note(v11);
  OUTLINED_FUNCTION_29_11(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250038, &qword_2683DEE18);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.Note.usoAssociatedApp.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.Note(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEB88);
}

uint64_t (*Common.Note.usoAssociatedApp.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.Note(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.Note.$usoAssociatedApp.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB0, &qword_2683DEB90);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.Note(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.Note.$usoAssociatedApp.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB0, &qword_2683DEB90);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.Note(v11);
  OUTLINED_FUNCTION_39_8(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDA0, &qword_2683DEB80);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.Note.usoListPosition.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.Note(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEBA0);
}

uint64_t (*Common.Note.usoListPosition.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.Note(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.Note.$usoListPosition.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDC8, &qword_2683DEBA8);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.Note(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.Note.$usoListPosition.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDC8, &qword_2683DEBA8);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.Note(v11);
  OUTLINED_FUNCTION_57_2(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDB8, &qword_2683DEB98);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.Note.usoQuantifier.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.Note(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEBB8);
}

uint64_t (*Common.Note.usoQuantifier.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.Note(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.Note.$usoQuantifier.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE0, &qword_2683DEBC0);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.Note(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.Note.$usoQuantifier.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDE0, &qword_2683DEBC0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.Note(v11);
  OUTLINED_FUNCTION_62_0(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FDD0, &qword_2683DEBB0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.Note.usoSameAs.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.Note(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250048, &qword_2683DEE28);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEE30);
}

uint64_t (*Common.Note.usoSameAs.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.Note(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250048, &qword_2683DEE28);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.Note.$usoSameAs.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250058, &qword_2683DEE38);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.Note(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250048, &qword_2683DEE28);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.Note.$usoSameAs.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250058, &qword_2683DEE38);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.Note(v11);
  OUTLINED_FUNCTION_68_1(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250048, &qword_2683DEE28);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.Note.usoSearchQualifier.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.Note(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DEBE8);
}

uint64_t (*Common.Note.usoSearchQualifier.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.Note(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.Note.$usoSearchQualifier.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE10, &qword_2683DEBF0);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.Note(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.Note.$usoSearchQualifier.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE10, &qword_2683DEBF0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.Note(v11);
  OUTLINED_FUNCTION_70_0(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FE00, &qword_2683DEBE0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

void Common.DateTime.DefinedValue.init(rawValue:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_12_16();
  sub_2683D0408();
  OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_13_23();
}

void Common.DateTime.Operator.init(rawValue:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_12_16();
  sub_2683D0408();
  OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_13_23();
}

uint64_t Common.DateTime.date.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250060, &qword_2683DEE40);

  return sub_2683CE228();
}

uint64_t (*Common.DateTime.date.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_14_18(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250060, &qword_2683DEE40);
  *(v0 + 32) = OUTLINED_FUNCTION_86_1(v3);
  return sub_268151B78;
}

uint64_t Common.DateTime.$date.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250060, &qword_2683DEE40);

  return MEMORY[0x2821C3550](v0);
}

uint64_t Common.DateTime.$date.modify()
{
  v1 = OUTLINED_FUNCTION_34_10();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250070, &qword_2683DEE50);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_21_15(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250060, &qword_2683DEE40);
  OUTLINED_FUNCTION_85_0(v11);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t (*Common.DateTime.definedValue.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.DateTime(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250078, &qword_2683DEE58);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.DateTime.$definedValue.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250080, &qword_2683DEE60);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.DateTime(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250078, &qword_2683DEE58);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.DateTime.$definedValue.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250080, &qword_2683DEE60);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.DateTime(v11);
  OUTLINED_FUNCTION_33_10(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280250078, &qword_2683DEE58);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t Common.DateTime.direction.setter()
{
  v0 = OUTLINED_FUNCTION_113();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_23(v2);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_31(v4, v8);
  type metadata accessor for Common.DateTime(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEC0, &qword_2683DECA0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE238();
  v5 = OUTLINED_FUNCTION_55_0();
  return sub_26829A3E4(v5, v6, &qword_2683DECA8);
}

uint64_t (*Common.DateTime.direction.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.DateTime(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEC0, &qword_2683DECA0);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.DateTime.$direction.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FED0, &qword_2683DECB0);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.DateTime(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEC0, &qword_2683DECA0);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}

uint64_t Common.DateTime.$direction.modify()
{
  v1 = OUTLINED_FUNCTION_26_13();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_7_19(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FED0, &qword_2683DECB0);
  OUTLINED_FUNCTION_3_31(v3);
  *(v0 + 16) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_22_14(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = OUTLINED_FUNCTION_24_12(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_8_24(v10);
  v12 = type metadata accessor for Common.DateTime(v11);
  OUTLINED_FUNCTION_32_9(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FEC0, &qword_2683DECA0);
  OUTLINED_FUNCTION_18_21(v13);
  return OUTLINED_FUNCTION_23_17();
}

uint64_t sub_268244AD4(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_74_1();
  v2(v1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  OUTLINED_FUNCTION_581(v3);
  return v5;
}

uint64_t sub_268244B3C()
{
  v0 = OUTLINED_FUNCTION_81_0();
  v1(v0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  return OUTLINED_FUNCTION_63_2(v2, v3, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t (*Common.DateTime.name.modify())()
{
  v1 = OUTLINED_FUNCTION_59_0();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_21_2(v2);
  type metadata accessor for Common.DateTime(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  *(v0 + 32) = OUTLINED_FUNCTION_19_20(v4);
  return sub_268151B78;
}

uint64_t Common.DateTime.$name.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD98, &qword_2683DEB78);
  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_47(v1, v7);
  v3(v2);
  type metadata accessor for Common.DateTime(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024FD90, &qword_2683DEB70);
  OUTLINED_FUNCTION_17_17();
  sub_2683CE258();
  v4 = OUTLINED_FUNCTION_10_18();
  return v5(v4);
}