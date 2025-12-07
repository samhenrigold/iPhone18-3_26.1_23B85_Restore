uint64_t sub_26769E7F8(uint64_t *a1, char a2, uint64_t a3)
{
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D0, &unk_2676D37C0);
  v5 = *(v28 - 8);
  v6 = MEMORY[0x28223BE20](v28);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8B8, &unk_2676CFC60);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v26 - v16;
  v18 = *a1;
  v26[1] = a3;
  v26[2] = v18;
  sub_26761D288();
  v27 = (v5 + 8);
  swift_getKeyPath();
  sub_2676C97EC();

  v19 = *(v12 + 8);
  v19(v17, v11);
  sub_26761D288();
  swift_getKeyPath();
  sub_2676C97EC();

  v19(v15, v11);
  v20 = sub_2676A21D8();
  v21 = *v27;
  v22 = v8;
  v23 = v28;
  (*v27)(v22, v28);
  v29 = v20;

  sub_2676A1FA0(v24);
  sub_2676C984C();

  return v21(v10, v23);
}

uint64_t sub_26769EAD8(uint64_t *a1, char a2, uint64_t a3)
{
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D0, &unk_2676D37C0);
  v5 = *(v28 - 8);
  v6 = MEMORY[0x28223BE20](v28);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8B8, &unk_2676CFC60);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v25 - v16;
  v18 = *a1;
  v25[1] = a3;
  v26 = v18;
  sub_26761D288();
  v27 = (v5 + 8);
  swift_getKeyPath();
  sub_2676C97EC();

  v19 = *(v12 + 8);
  v19(v17, v11);
  sub_26761D288();
  swift_getKeyPath();
  sub_2676C97EC();

  v19(v15, v11);
  v20 = sub_2676A21D8();
  v21 = v28;
  v22 = *v27;
  (*v27)(v8, v28);
  v23 = sub_2675DEC6C(v26, v20);

  v29 = v23;
  sub_2676C984C();

  return (v22)(v10, v21);
}

void sub_26769EDB4()
{
  OUTLINED_FUNCTION_21_1();
  v105 = v0;
  v3 = v2;
  LODWORD(v5) = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC068, &unk_2676D4E00);
  OUTLINED_FUNCTION_4_1(v6);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_50_3();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
  OUTLINED_FUNCTION_3();
  v106 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4();
  v112 = v11;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v102[-v13];
  if (qword_2801CBAA0 != -1)
  {
LABEL_55:
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v113 = v14;
  v15 = sub_2676CBE4C();
  __swift_project_value_buffer(v15, qword_2801CDC90);

  v16 = sub_2676CBE2C();
  v17 = sub_2676CC23C();

  v18 = os_log_type_enabled(v16, v17);
  v103 = v5;
  if (v18)
  {
    v19 = v1;
    v20 = swift_slowAlloc();
    v115[0] = swift_slowAlloc();
    *v20 = 136315394;
    v21 = v3;
    v22 = MEMORY[0x26D5FDDD0](v3, v8);
    v24 = sub_2676B0B84(v22, v23, v115);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    if (v5)
    {
      OUTLINED_FUNCTION_42_5();
      if (v25)
      {
        v27 = 17219;
      }

      else
      {
        v27 = 4408130;
      }

      if (v25)
      {
        v28 = v26;
      }

      else
      {
        v28 = 0xE300000000000000;
      }
    }

    else
    {
      v28 = 0xE200000000000000;
      v27 = 20308;
    }

    v29 = sub_2676B0B84(v27, v28, v115);

    *(v20 + 14) = v29;
    OUTLINED_FUNCTION_54_7();
    _os_log_impl(v30, v31, v32, v33, v34, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_33_6();
    OUTLINED_FUNCTION_36_10();

    v3 = v21;
    v1 = v19;
  }

  else
  {
  }

  v5 = *(v3 + 16);
  v35 = MEMORY[0x277D84F90];
  v114 = v8;
  v104 = v3;
  if (v5)
  {
    v115[0] = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_93_1();
    v36 = *(v106 + 16);
    v35 = v115[0];
    v37 = v3 + ((*(v106 + 80) + 32) & ~*(v106 + 80));
    v108 = *(v106 + 72);
    v109 = v36;
    v110 = v106 + 16;
    v111 = v5;
    v107 = (v106 + 8);
    v38 = v5;
    do
    {
      v39 = v113;
      v109(v113, v37, v8);
      swift_getKeyPath();
      OUTLINED_FUNCTION_8_25();
      sub_2676A15C4(&qword_2801CBF70, v40, MEMORY[0x277D5C6A8]);
      sub_2676A15C4(&qword_2801CC2D0, MEMORY[0x277D5C640], MEMORY[0x277D5C618]);
      sub_2676CA87C();

      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
      v42 = OUTLINED_FUNCTION_86_1();
      OUTLINED_FUNCTION_21_3(v42, v43, v41);
      if (v25)
      {
        v44 = OUTLINED_FUNCTION_55_2();
        v45(v44);
        sub_267662EC4(v1, &qword_2801CC068, &unk_2676D4E00);
        v46 = 0;
        v48 = 0;
      }

      else
      {
        swift_getKeyPath();
        v46 = sub_2676CA89C();
        v48 = v47;

        (*v107)(v39, v8);
        OUTLINED_FUNCTION_14_2();
        (*(v49 + 8))(v1, v41);
      }

      v115[0] = v35;
      v51 = *(v35 + 16);
      v50 = *(v35 + 24);
      v52 = v51 + 1;
      v5 = v111;
      if (v51 >= v50 >> 1)
      {
        v54 = OUTLINED_FUNCTION_23_1(v50);
        sub_2676C2B08(v54, v51 + 1, 1);
        v35 = v115[0];
      }

      *(v35 + 16) = v52;
      v53 = v35 + 16 * v51;
      *(v53 + 32) = v46;
      *(v53 + 40) = v48;
      v37 += v108;
      --v38;
      v8 = v114;
    }

    while (v38);
  }

  else
  {
    v52 = *(MEMORY[0x277D84F90] + 16);
  }

  v3 = 0;
  v8 = MEMORY[0x277D84F90];
  v14 = MEMORY[0x277D84F90];
LABEL_24:
  v55 = 16 * v3 + 40;
  while (v52 != v3)
  {
    if (v3 >= *(v35 + 16))
    {
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    ++v3;
    v56 = v55 + 16;
    v57 = *(v35 + v55);
    v55 += 16;
    if (v57)
    {
      v58 = *(v35 + v56 - 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26760719C(0, *(v14 + 2) + 1, 1, v14);
        v14 = v61;
      }

      v1 = *(v14 + 2);
      v59 = *(v14 + 3);
      if (v1 >= v59 >> 1)
      {
        v62 = OUTLINED_FUNCTION_23_1(v59);
        sub_26760719C(v62, v1 + 1, 1, v14);
        v14 = v63;
      }

      *(v14 + 2) = v1 + 1;
      v60 = &v14[16 * v1];
      *(v60 + 4) = v58;
      *(v60 + 5) = v57;
      goto LABEL_24;
    }
  }

  v64 = sub_2676A1BFC(v14);
  v65 = v64;
  if (v5)
  {
    v109 = v64;
    v115[0] = v8;
    OUTLINED_FUNCTION_93_1();
    v8 = v115[0];
    v113 = *(v106 + 16);
    v66 = v104 + ((*(v106 + 80) + 32) & ~*(v106 + 80));
    v110 = *(v106 + 72);
    v67 = (v106 + 8);
    do
    {
      v68 = v112;
      v69 = v114;
      v113(v112, v66, v114);
      swift_getKeyPath();
      OUTLINED_FUNCTION_8_25();
      sub_2676A15C4(&qword_2801CBF70, v70, MEMORY[0x277D5C6A8]);
      v71 = sub_2676CA89C();
      v1 = v72;

      (*v67)(v68, v69);
      v115[0] = v8;
      v74 = *(v8 + 16);
      v73 = *(v8 + 24);
      v14 = (v74 + 1);
      if (v74 >= v73 >> 1)
      {
        v76 = OUTLINED_FUNCTION_23_1(v73);
        sub_2676C2B08(v76, v74 + 1, 1);
        v8 = v115[0];
      }

      *(v8 + 16) = v14;
      v75 = v8 + 16 * v74;
      *(v75 + 32) = v71;
      *(v75 + 40) = v1;
      v66 += v110;
      --v5;
    }

    while (v5);
    v65 = v109;
  }

  else
  {
    v14 = *(v8 + 16);
  }

  v3 = 0;
  v77 = MEMORY[0x277D84F90];
LABEL_41:
  v78 = 16 * v3 + 40;
  while (v14 != v3)
  {
    if (v3 >= *(v8 + 16))
    {
      goto LABEL_54;
    }

    ++v3;
    v79 = v78 + 16;
    v80 = *(v8 + v78);
    v78 += 16;
    if (v80)
    {
      v81 = *(v8 + v79 - 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26760719C(0, *(v77 + 16) + 1, 1, v77);
        v77 = v85;
      }

      v83 = *(v77 + 16);
      v82 = *(v77 + 24);
      v5 = v83 + 1;
      if (v83 >= v82 >> 1)
      {
        v86 = OUTLINED_FUNCTION_23_1(v82);
        sub_26760719C(v86, v83 + 1, 1, v77);
        v77 = v87;
      }

      *(v77 + 16) = v5;
      v84 = v77 + 16 * v83;
      *(v84 + 32) = v81;
      *(v84 + 40) = v80;
      goto LABEL_41;
    }
  }

  v88 = sub_2676A1BFC(v77);
  swift_getKeyPath();
  v89 = sub_26769965C(v115);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC658, &qword_2676D45A0);
  OUTLINED_FUNCTION_0_28();
  sub_2676A15C4(v90, v91, MEMORY[0x277D5C7F0]);
  OUTLINED_FUNCTION_1_30();
  sub_2676A15C4(v92, v93, MEMORY[0x277D5C780]);
  v94 = sub_2676CA3DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
  v95 = OUTLINED_FUNCTION_33_4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v95, v96, v97);
  if (!EnumTagSinglePayload)
  {
    MEMORY[0x28223BE20](EnumTagSinglePayload);
    *&v102[-32] = v65;
    v99 = v103;
    v102[-24] = v103;
    *&v102[-16] = v88;
    sub_2675E0008(v99);
  }

  v100 = OUTLINED_FUNCTION_29_9();
  v94(v100);

  v101 = OUTLINED_FUNCTION_30_8();
  v89(v101);
  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_26769F6B0(uint64_t a1, void *a2, int a3, void *a4)
{
  HIDWORD(v35) = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC068, &unk_2676D4E00);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v35 - v7;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
  sub_2676A15C4(&qword_2801CBF70, MEMORY[0x277D5C6D0], MEMORY[0x277D5C6A8]);
  sub_2676A15C4(&qword_2801CC2D0, MEMORY[0x277D5C640], MEMORY[0x277D5C618]);
  sub_2676CA87C();

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_267662EC4(v8, &qword_2801CC068, &unk_2676D4E00);
    goto LABEL_16;
  }

  swift_getKeyPath();
  v10 = sub_2676CA89C();
  v12 = v11;

  (*(*(v9 - 8) + 8))(v8, v9);
  if (!v12)
  {
LABEL_16:
    swift_getKeyPath();
    v21 = sub_2676CA89C();
    v23 = v22;

    if (v23)
    {
      if (sub_2676A1CB8(v21, v23, a4))
      {
        if (qword_2801CBAA0 != -1)
        {
          swift_once();
        }

        v24 = sub_2676CBE4C();
        __swift_project_value_buffer(v24, qword_2801CDC90);

        v15 = sub_2676CBE2C();
        v25 = sub_2676CC23C();

        if (os_log_type_enabled(v15, v25))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v36 = v18;
          *v17 = 136315394;
          if (BYTE4(v35))
          {
            if (BYTE4(v35) == 1)
            {
              v26 = 17219;
            }

            else
            {
              v26 = 4408130;
            }

            if (BYTE4(v35) == 1)
            {
              v27 = 0xE200000000000000;
            }

            else
            {
              v27 = 0xE300000000000000;
            }
          }

          else
          {
            v27 = 0xE200000000000000;
            v26 = 20308;
          }

          v29 = sub_2676B0B84(v26, v27, &v36);

          *(v17 + 4) = v29;
          *(v17 + 12) = 2080;
          v30 = sub_2676B0B84(v21, v23, &v36);

          *(v17 + 14) = v30;
          v31 = "#SendMailPlan Removing %s recipient with name %s";
          v32 = v25;
LABEL_35:
          _os_log_impl(&dword_2675D4000, v15, v32, v31, v17, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D5FEA80](v18, -1, -1);
          MEMORY[0x26D5FEA80](v17, -1, -1);
          goto LABEL_36;
        }

        goto LABEL_30;
      }
    }

    return 0;
  }

  if (!sub_2676A1CB8(v10, v12, a2))
  {

    goto LABEL_16;
  }

  v13 = v10;
  if (qword_2801CBAA0 != -1)
  {
    swift_once();
  }

  v14 = sub_2676CBE4C();
  __swift_project_value_buffer(v14, qword_2801CDC90);

  v15 = sub_2676CBE2C();
  v16 = sub_2676CC23C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v36 = v18;
    *v17 = 136315394;
    if (BYTE4(v35))
    {
      if (BYTE4(v35) == 1)
      {
        v19 = 17219;
      }

      else
      {
        v19 = 4408130;
      }

      if (BYTE4(v35) == 1)
      {
        v20 = 0xE200000000000000;
      }

      else
      {
        v20 = 0xE300000000000000;
      }
    }

    else
    {
      v20 = 0xE200000000000000;
      v19 = 20308;
    }

    v33 = sub_2676B0B84(v19, v20, &v36);

    *(v17 + 4) = v33;
    *(v17 + 12) = 2080;
    v34 = sub_2676B0B84(v13, v12, &v36);

    *(v17 + 14) = v34;
    v31 = "#SendMailPlan Removing %s recipient with email %s";
    v32 = v16;
    goto LABEL_35;
  }

LABEL_30:

LABEL_36:

  return 1;
}

void sub_26769FC0C()
{
  OUTLINED_FUNCTION_21_1();
  v2 = v0;
  v43 = v3;
  v4 = sub_2676CB48C();
  v5 = OUTLINED_FUNCTION_4_1(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_2();
  v44 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD3B8, &unk_2676D3E60);
  OUTLINED_FUNCTION_4_1(v8);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9_1();
  v45 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD3C0, &unk_2676D4DF0);
  OUTLINED_FUNCTION_3();
  v41 = v12;
  v42 = v11;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_50_3();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  OUTLINED_FUNCTION_4_1(v14);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_9_1();
  v46 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC658, &qword_2676D45A0);
  OUTLINED_FUNCTION_3();
  v19 = v18;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v20);
  v22 = &v41 - v21;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v23 = sub_2676CBE4C();
  __swift_project_value_buffer(v23, qword_2801CDC90);
  v24 = sub_2676CBE2C();
  v25 = sub_2676CC23C();
  if (OUTLINED_FUNCTION_5_7(v25))
  {
    v26 = OUTLINED_FUNCTION_17_3();
    *v26 = 0;
    _os_log_impl(&dword_2675D4000, v24, v25, "#SendMailPlan making ConfirmationPrompt", v26, 2u);
    OUTLINED_FUNCTION_2_5();
  }

  swift_getKeyPath();
  sub_2676994A0();
  OUTLINED_FUNCTION_0_28();
  sub_2676A15C4(v27, v28, MEMORY[0x277D5C7F0]);
  OUTLINED_FUNCTION_1_30();
  sub_2676A15C4(v29, v30, MEMORY[0x277D5C780]);
  sub_2676CA3EC();

  (*(v19 + 8))(v22, v17);
  sub_2676CBA1C();
  sub_2676C98BC();
  swift_getKeyPath();
  v31 = v42;
  sub_2676C988C();

  (*(v41 + 8))(v1, v31);
  v32 = *(v2 + OBJC_IVAR____TtC16SiriMailInternal12SendMailPlan_confirmIntentOptions);
  v33 = type metadata accessor for ConfirmSendProducer(0);
  v50[3] = v33;
  v50[4] = sub_2676A15C4(&qword_2801CD220, type metadata accessor for ConfirmSendProducer, &unk_2676CD948);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v50);
  v35 = *(v33 + 24);
  sub_2676C8D8C();
  OUTLINED_FUNCTION_2_6();
  (*(v36 + 16))(boxed_opaque_existential_1 + v35, v43);
  LOBYTE(v31) = SendMailPlan.isSnippetInFocus.getter();
  type metadata accessor for SendMailCATsSimple(0);
  sub_2676CB47C();
  v37 = sub_2676CB42C();
  boxed_opaque_existential_1[1] = v32;
  *(boxed_opaque_existential_1 + *(v33 + 28)) = v31 & 1;
  *boxed_opaque_existential_1 = v37;
  v38 = sub_2676C9B9C();
  OUTLINED_FUNCTION_7_13(v38);
  v39 = sub_2676C9B8C();
  v48 = v38;
  v49 = MEMORY[0x277D5BD58];
  v47 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDBC0, &qword_2676D48C0);
  OUTLINED_FUNCTION_7_13(v40);
  sub_2676C9BEC();
  OUTLINED_FUNCTION_20_1();
}

uint64_t SendMailPlan.isSnippetInFocus.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
  OUTLINED_FUNCTION_3();
  v2 = v1;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v3);
  v5 = &v7[-v4];
  sub_26761D2C0();
  sub_2676C97FC();
  (*(v2 + 8))(v5, v0);
  return v7[15] & 1;
}

uint64_t sub_2676A0184()
{
  v1 = OBJC_IVAR____TtC16SiriMailInternal12SendMailPlan__sendMessageTask;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC720, &qword_2676CF7D0);
  OUTLINED_FUNCTION_8_2();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

uint64_t SendMailPlan.deinit()
{
  v0 = MailSendingPlan.deinit();
  v1 = OBJC_IVAR____TtC16SiriMailInternal12SendMailPlan__sendMessageTask;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC720, &qword_2676CF7D0);
  OUTLINED_FUNCTION_8_2();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t SendMailPlan.__deallocating_deinit()
{
  v0 = MailSendingPlan.deinit();
  v1 = OBJC_IVAR____TtC16SiriMailInternal12SendMailPlan__sendMessageTask;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC720, &qword_2676CF7D0);
  OUTLINED_FUNCTION_8_2();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_2676A031C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SendMailPlan(0);

  return sub_2676C950C();
}

uint64_t sub_2676A0390(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821BA568](a1, WitnessTable);
}

void SendMailPlan.snippet.getter()
{
  OUTLINED_FUNCTION_21_1();
  v124 = v2;
  v3 = type metadata accessor for MailStateChangeEventHandler(0);
  v4 = *(v3 - 8);
  v118 = (v3 - 8);
  v123 = v4;
  v122 = *(v4 + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v121 = &v110[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_24_1();
  v131 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC980, &unk_2676CFE10);
  OUTLINED_FUNCTION_3();
  v119 = v9;
  v120 = v8;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v11);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDB68, &qword_2676D4B60);
  OUTLINED_FUNCTION_3();
  v115 = v12;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v14);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
  OUTLINED_FUNCTION_3();
  v116 = v15;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8C8, &unk_2676D1C40);
  OUTLINED_FUNCTION_4_1(v18);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_9_1();
  v136 = v20;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D8, &unk_2676CFE60);
  OUTLINED_FUNCTION_3();
  v111 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_4();
  v127 = v23;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_24_1();
  v135 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
  OUTLINED_FUNCTION_3();
  v129 = v27;
  v130 = v26;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_4();
  v125 = v28;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_24_1();
  v134 = v30;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D0, &unk_2676D37C0);
  OUTLINED_FUNCTION_3();
  v128 = v31;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_4();
  v139 = v33;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_10_4();
  v138 = v35;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_10_4();
  v137 = v37;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_10_4();
  v133 = v39;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_10_4();
  v132 = v41;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v42);
  v113 = &v110[-v43];
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8B8, &unk_2676CFC60);
  OUTLINED_FUNCTION_3();
  v46 = v45;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  v54 = MEMORY[0x28223BE20](v53);
  v56 = &v110[-v55];
  v57 = MEMORY[0x28223BE20](v54);
  v59 = &v110[-v58];
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_55_3();
  MEMORY[0x28223BE20](v60);
  v62 = &v110[-v61];
  sub_26761D288();
  swift_getKeyPath();
  sub_2676C97EC();

  v63 = *(v46 + 8);
  (v63)(v62, v44);
  sub_26761D288();
  swift_getKeyPath();
  sub_2676C97EC();

  (v63)(v1, v44);
  v64 = v0;
  sub_26761D288();
  KeyPath = swift_getKeyPath();
  sub_2676C97EC();

  (v63)(v59, v44);
  sub_26761D288();
  swift_getKeyPath();
  sub_2676C97EC();

  (v63)(v56, v44);
  OUTLINED_FUNCTION_34_7();
  sub_26761D288();
  swift_getKeyPath();
  sub_2676C97EC();

  (v63)(v56, v44);
  sub_26761D2A4();
  OUTLINED_FUNCTION_23_8();
  sub_26761D288();
  v66 = swift_getKeyPath();
  OUTLINED_FUNCTION_69_1(v66);

  v67 = OUTLINED_FUNCTION_55_2();
  v63(v67);
  OUTLINED_FUNCTION_23_8();
  sub_26761D288();
  v68 = swift_getKeyPath();
  OUTLINED_FUNCTION_69_1(v68);

  v69 = OUTLINED_FUNCTION_55_2();
  v63(v69);
  OUTLINED_FUNCTION_23_8();
  sub_26761D288();
  v70 = swift_getKeyPath();
  OUTLINED_FUNCTION_69_1(v70);

  v71 = OUTLINED_FUNCTION_55_2();
  v63(v71);
  OUTLINED_FUNCTION_23_8();
  sub_26761D288();
  v72 = swift_getKeyPath();
  v73 = v125;
  OUTLINED_FUNCTION_69_1(v72);

  v74 = OUTLINED_FUNCTION_55_2();
  v63(v74);
  OUTLINED_FUNCTION_23_8();
  sub_26761D288();
  v75 = swift_getKeyPath();
  OUTLINED_FUNCTION_69_1(v75);

  v76 = OUTLINED_FUNCTION_55_2();
  v63(v76);
  OUTLINED_FUNCTION_60_0();
  sub_26761D2C0();
  OUTLINED_FUNCTION_23_8();
  sub_267699750();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_28();
  sub_2676A15C4(v77, v78, MEMORY[0x277D5C7F0]);
  OUTLINED_FUNCTION_1_30();
  sub_2676A15C4(v79, v80, MEMORY[0x277D5C780]);
  OUTLINED_FUNCTION_51_2();
  v81 = v114;
  sub_2676C9A2C();

  OUTLINED_FUNCTION_27_5();
  v82(KeyPath, v81);
  v83 = *(v128 + 16);
  v84 = v131;
  v85 = v126;
  v83(v131, v137, v126);
  v86 = v118;
  v83(v84 + v118[7], v138, v85);
  v83(v84 + v86[8], v139, v85);
  v87 = OUTLINED_FUNCTION_73_1(v86[9]);
  v88(v87, v73);
  v89 = v111;
  v90 = OUTLINED_FUNCTION_73_1(v86[10]);
  v91 = v127;
  v92 = v112;
  v93(v90, v127, v112);
  v94 = v120;
  v95 = OUTLINED_FUNCTION_73_1(v86[11]);
  v96(v95, &unk_2676D46E0, v94);
  v97 = v116;
  OUTLINED_FUNCTION_73_1(v86[12]);
  OUTLINED_FUNCTION_75_2();
  v98();
  v99 = type metadata accessor for MetricsSnippetEventHandler(0);
  v100 = OUTLINED_FUNCTION_7_13(v99);
  swift_defaultActor_initialize();
  sub_2676C958C();
  v101 = OUTLINED_FUNCTION_29_0();
  v102(v101);
  (*(v97 + 8))(v64, v64);
  (*(v89 + 8))(v91, v92);
  (*(v129 + 8))(v125, v130);
  v103 = *(v128 + 8);
  v104 = v126;
  v103(v139, v126);
  v103(v138, v104);
  v103(v137, v104);
  v105 = v121;
  sub_267662B28(v131, v121);
  v106 = (*(v123 + 80) + 16) & ~*(v123 + 80);
  v107 = (v122 + v106 + 7) & 0xFFFFFFFFFFFFFFF8;
  v108 = swift_allocObject();
  sub_267662B28(v105, v108 + v106);
  *(v108 + v107) = v100;
  sub_2676C916C();
  sub_2676CAFDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9F8, &unk_2676CFE90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9B0, &unk_2676CFE50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE0, &qword_2676D1070);
  sub_2676CB0DC();
  sub_2676A15C4(&qword_2801CD1E0, MEMORY[0x277D5C900], MEMORY[0x277D5C8F0]);
  v109 = MEMORY[0x277D5C970];
  sub_2676A15C4(&qword_2801CD1E8, MEMORY[0x277D5C970], MEMORY[0x277D5C980]);
  sub_2676A15C4(&qword_2801CD1F0, v109, MEMORY[0x277D5C978]);
  sub_2676C9BAC();
  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_2676A1194()
{
  OUTLINED_FUNCTION_12_1();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_63_4(v1);

  return sub_26765EC58();
}

uint64_t sub_2676A1234()
{
  OUTLINED_FUNCTION_12_1();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_63_4(v1);

  return sub_26769B9B8(v2, v3, v4);
}

uint64_t type metadata accessor for SendMailPlan(uint64_t a1)
{
  result = qword_2801CDBB0;
  if (!qword_2801CDBB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2676A14A4(uint64_t a1)
{
  sub_267697368(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2676A15C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2676A1628()
{
  result = qword_2801CDBD8;
  if (!qword_2801CDBD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801CDBD0, &unk_2676D4EC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CDBD8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_34_10(uint64_t a1)
{
  *(v2 - 184) = v1;

  return sub_2676C97EC();
}

void OUTLINED_FUNCTION_36_10()
{

  JUMPOUT(0x26D5FEA80);
}

void OUTLINED_FUNCTION_41_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_2676A2C60(a1, 0x6E65697069636572, 0xEA00000000007374, a4, v4 - 136, v4 - 208);
}

BOOL OUTLINED_FUNCTION_70_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_72_1()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_91_1()
{

  return sub_2676C983C();
}

void *OUTLINED_FUNCTION_93_1()
{

  return sub_2676C2B08(0, v0, 0);
}

uint64_t OUTLINED_FUNCTION_94_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_96_1()
{
}

void sub_2676A1944()
{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_116_0();
  sub_2676C8C8C();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_79_3();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_78_4();
  sub_2676AFE00(&qword_2801CBF50, MEMORY[0x277CBA2E0], MEMORY[0x277CBA2E8]);
  v6 = OUTLINED_FUNCTION_38_0();
  MEMORY[0x26D5FDED0](v6);
  v7 = *(v0 + 16);
  if (v7)
  {
    OUTLINED_FUNCTION_50_5();
    do
    {
      OUTLINED_FUNCTION_59_4();
      v2();
      v8 = OUTLINED_FUNCTION_86_2();
      sub_2676AC6B4(v8, v9);
      v10 = OUTLINED_FUNCTION_58_4();
      v11(v10);
      v1 += v3;
      --v7;
    }

    while (v7);
  }

  OUTLINED_FUNCTION_20_1();
}

void sub_2676A1AA0()
{
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_116_0();
  sub_2676CB14C();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_79_3();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_78_4();
  sub_2676AFE00(&qword_2801CBF40, MEMORY[0x277D5CA58], MEMORY[0x277D5CA60]);
  v6 = OUTLINED_FUNCTION_38_0();
  MEMORY[0x26D5FDED0](v6);
  v7 = *(v0 + 16);
  if (v7)
  {
    OUTLINED_FUNCTION_50_5();
    do
    {
      OUTLINED_FUNCTION_59_4();
      v2();
      v8 = OUTLINED_FUNCTION_86_2();
      sub_2676AC97C(v8, v9);
      v10 = OUTLINED_FUNCTION_58_4();
      v11(v10);
      v1 += v3;
      --v7;
    }

    while (v7);
  }

  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_2676A1BFC(uint64_t a1)
{
  result = MEMORY[0x26D5FDED0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v7 = result;
  v4 = *(a1 + 16);
  for (i = a1 + 40; ; i += 16)
  {
    if (v4 == v3)
    {

      return v7;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;

    OUTLINED_FUNCTION_113_0();
    sub_2676ACEBC(v6);
  }

  __break(1u);
  return result;
}

BOOL sub_2676A1CB8(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3[2])
  {
    return 0;
  }

  sub_2676CC64C();
  OUTLINED_FUNCTION_113_0();
  sub_2676CBFFC();
  sub_2676CC67C();
  OUTLINED_FUNCTION_104_1();
  v8 = ~v7;
  do
  {
    v9 = v6 & v8;
    v10 = (1 << (v6 & v8)) & *(a3 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (a3[6] + 16 * v9);
    v13 = v12[1];
    if (*v12 == a1 && v13 == a2)
    {
      break;
    }

    v15 = OUTLINED_FUNCTION_95_2(*v12, v13);
    v6 = v9 + 1;
  }

  while ((v15 & 1) == 0);
  return v11;
}

uint64_t sub_2676A1D90(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_2675E0434(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_2676A1EF4(unint64_t a1)
{
  v3 = sub_267630B8C();
  v4 = sub_267630B8C();
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_2675E047C(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_2676AFE48(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2676A1FCC(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t (*a3)(void))
{
  v5 = *(a1 + 16);
  v6 = *(*v3 + 16);
  result = v6 + v5;
  if (__OFADD__(v6, v5))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  a2(result, 1);
  v9 = *v3;
  if (!*(a1 + 16))
  {

    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = a3(0);
  if (v10 < v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_8:
    *v3 = v9;
    return result;
  }

  v11 = *(v9 + 16);
  v12 = __OFADD__(v11, v5);
  v13 = v11 + v5;
  if (!v12)
  {
    *(v9 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_2676A2108(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_49_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_4_1(v3);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_91_2();
  sub_2675F95E4(v5, v6, v7, &unk_2676D4EB0);
  return sub_2676CB83C();
}

uint64_t sub_2676A2198()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB75C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2676A21D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDC58, &unk_2676D4EE8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_54_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D0, &unk_2676D37C0);
  sub_2676C97DC();
  v2 = OUTLINED_FUNCTION_58_1();
  if (v3(v2) == *MEMORY[0x277D5B9E0])
  {
    v4 = OUTLINED_FUNCTION_58_1();
    v5(v4);
    return *v0;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_58_1();
    v8(v7);
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v9 = sub_2676CBE4C();
    OUTLINED_FUNCTION_24_2(v9, qword_2801CDC90);
    v10 = sub_2676CBE2C();
    v11 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_5_5(v11))
    {
      OUTLINED_FUNCTION_5_3();
      v17 = OUTLINED_FUNCTION_12_2();
      *v0 = 136315138;
      *(v0 + 4) = sub_2676B0B84(0xD00000000000001DLL, 0x80000002676D7E50, &v17);
      OUTLINED_FUNCTION_3_7();
      _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
      OUTLINED_FUNCTION_43_7();
      OUTLINED_FUNCTION_4_6();
    }

    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_2676A239C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDC48, &qword_2676D4ED0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_54_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC968, &unk_2676CFDF0);
  sub_2676C97DC();
  v2 = OUTLINED_FUNCTION_58_1();
  if (v3(v2) == *MEMORY[0x277D5B9E0])
  {
    v4 = OUTLINED_FUNCTION_58_1();
    v5(v4);
    return *v0;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_58_1();
    v8(v7);
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v9 = sub_2676CBE4C();
    OUTLINED_FUNCTION_24_2(v9, qword_2801CDC90);
    v10 = sub_2676CBE2C();
    v11 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_5_5(v11))
    {
      OUTLINED_FUNCTION_5_3();
      v17 = OUTLINED_FUNCTION_12_2();
      *v0 = 136315138;
      *(v0 + 4) = sub_2676B0B84(0x63413C7961727241, 0xEE003E746E756F63, &v17);
      OUTLINED_FUNCTION_3_7();
      _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
      OUTLINED_FUNCTION_43_7();
      OUTLINED_FUNCTION_4_6();
    }

    return MEMORY[0x277D84F90];
  }
}

uint64_t SendMailSceneHostPlan.__allocating_init()()
{
  v0 = swift_allocObject();
  SendMailSceneHostPlan.init()();
  return v0;
}

BOOL sub_2676A25A0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_2676A2650(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  result = sub_267630B8C();
  v6 = result;
  v7 = 0;
  while (1)
  {
    v8 = v7;
    if (v6 == v7)
    {
      return v6 != v8;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v11 = OUTLINED_FUNCTION_47_4();
      result = MEMORY[0x26D5FE0E0](v11);
      v9 = result;
    }

    else
    {
      if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v9 = *(a3 + 8 * v7 + 32);
    }

    if (__OFADD__(v8, 1))
    {
      break;
    }

    v13 = v9;
    v10 = a1(&v13);

    if (!v3)
    {
      v7 = v8 + 1;
      if ((v10 & 1) == 0)
      {
        continue;
      }
    }

    return v6 != v8;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

BOOL sub_2676A2748(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = sub_2676C8C8C();
    OUTLINED_FUNCTION_1_0(v9);
    v12 = a1(a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v11 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v12 & 1) == 0);
  return v7 != v8;
}

uint64_t sub_2676A2814()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB16C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2676A2854()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB05C();
  *v0 = result;
  return result;
}

uint64_t sub_2676A28A0()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB02C();
  *v0 = result;
  return result;
}

uint64_t sub_2676A28EC()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB07C();
  *v0 = result;
  return result;
}

uint64_t sub_2676A2938()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CB09C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2676A2978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{

  v6 = OUTLINED_FUNCTION_49_1();
  return a5(v6);
}

uint64_t sub_2676A29E0()
{
  OUTLINED_FUNCTION_116_0();
  sub_2676CB0DC();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_3_2();
  v1 = OUTLINED_FUNCTION_58_1();
  v2(v1);
  return sub_2676CB0FC();
}

uint64_t sub_2676A2A8C()
{
  OUTLINED_FUNCTION_5_6();
  result = sub_2676CAFEC();
  *v0 = result;
  return result;
}

uint64_t sub_2676A2B24(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v14 = MEMORY[0x277D84F90];
    sub_2676C2AC8(0, v1, 0);
    v2 = v14;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
    OUTLINED_FUNCTION_1_0(v4);
    v6 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v8 = *(v7 + 72);
    do
    {
      sub_26767699C(v6, &v13);
      v9 = v13;
      v14 = v2;
      v11 = *(v2 + 16);
      v10 = *(v2 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_2676C2AC8((v10 > 1), v11 + 1, 1);
        v2 = v14;
      }

      *(v2 + 16) = v11 + 1;
      *(v2 + 8 * v11 + 32) = v9;
      v6 += v8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_2676A2C6C()
{
  OUTLINED_FUNCTION_21_1();
  v1 = v0;
  v3 = v2;
  v57 = v5;
  v58 = v4;
  v7 = v6;
  v59 = v8;
  v10 = v9;
  v11 = sub_2676CAB6C();
  OUTLINED_FUNCTION_3();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_5();
  v56 = v15;
  OUTLINED_FUNCTION_7_3();
  sub_2676CAC6C();
  OUTLINED_FUNCTION_3();
  v53 = v17;
  v54 = v16;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_5();
  v55 = v18;
  OUTLINED_FUNCTION_7_3();
  v19 = sub_2676CAC1C();
  v20 = OUTLINED_FUNCTION_4_1(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_7_3();
  v21 = sub_2676C911C();
  v22 = OUTLINED_FUNCTION_4_1(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_5();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD4F0, &qword_2676D3250);
  OUTLINED_FUNCTION_4_1(v23);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_9_1();
  v49 = v25;
  OUTLINED_FUNCTION_7_3();
  v52 = sub_2676CABFC();
  OUTLINED_FUNCTION_3();
  v50 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1_5();
  v48 = v28;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = -1;
  v29 = v0 + qword_2801D3EB0;
  *(v29 + 32) = 0;
  *v29 = 0u;
  *(v29 + 16) = 0u;
  v51 = v29;
  v30 = (v0 + qword_2801CD3D0);
  *v30 = 0;
  v30[1] = 0;
  v31 = (v0 + qword_2801CD3D8);
  *v31 = 0;
  v31[1] = 0;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v32 = sub_2676CBE4C();
  OUTLINED_FUNCTION_24_2(v32, qword_2801CDC90);

  v33 = sub_2676CBE2C();
  v34 = sub_2676CC23C();

  if (os_log_type_enabled(v33, v34))
  {
    v47 = v34;
    v35 = OUTLINED_FUNCTION_126();
    v60[0] = OUTLINED_FUNCTION_125_0();
    *v35 = 136315394;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
    v37 = MEMORY[0x26D5FDDD0](v10, v36);
    v39 = v7;
    v40 = v3;
    v41 = sub_2676B0B84(v37, v38, v60);

    *(v35 + 4) = v41;
    v3 = v40;
    v7 = v39;
    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_2676B0B84(v59, v39, v60);
    _os_log_impl(&dword_2675D4000, v33, v47, "#ResolveRecipientsFlow init with %s and parameter %s", v35, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_36_10();
    OUTLINED_FUNCTION_4_6();
  }

  else
  {
  }

  v42 = sub_2676A2B24(v10);

  *(v1 + 16) = v42;
  *(v1 + 24) = 0;
  sub_2676CACCC();
  v43 = sub_2676CACDC();
  __swift_storeEnumTagSinglePayload(v49, 0, 1, v43);
  sub_2676C910C();
  sub_2676CAC0C();
  (*(v53 + 104))(v55, *MEMORY[0x277D56148], v54);
  (*(v13 + 104))(v56, *MEMORY[0x277D560D0], v11);
  sub_2676CABEC();
  (*(v50 + 32))(v1 + qword_2801D3EA0, v48, v52);
  v44 = (v1 + qword_2801D3EA8);
  *v44 = v59;
  v44[1] = v7;
  swift_beginAccess();
  sub_26767D854(v57, v51);
  swift_endAccess();
  v45 = v1 + qword_2801D3EB8;
  v46 = *(v3 + 16);
  *v45 = *v3;
  *(v45 + 16) = v46;
  *(v45 + 32) = *(v3 + 32);
  *(v1 + qword_2801D3EC0) = v58;
  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_2676A31F0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC658, &qword_2676D45A0);
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC720, &qword_2676CF7D0);
  OUTLINED_FUNCTION_3();
  v11 = v10;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v12);
  v14 = &v18 - v13;
  (*(v11 + 16))(&v18 - v13, v1 + OBJC_IVAR____TtC16SiriMailInternal21SendMailSceneHostPlan__sendMessageTask, v9);
  (*(v5 + 16))(v8, a1, v3);
  sub_2676C97AC();
  v15 = OUTLINED_FUNCTION_45();
  v16(v15);
  return (*(v11 + 8))(v14, v9);
}

uint64_t (*sub_2676A3390(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v2;
  v2[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC720, &qword_2676CF7D0);
  OUTLINED_FUNCTION_3();
  v4 = v3;
  v2[5] = v3;
  v2[6] = __swift_coroFrameAllocStub(*(v5 + 64));
  (*(v4 + 16))();
  OUTLINED_FUNCTION_49_1();
  v2[7] = sub_2676C978C();
  return sub_2676A3484;
}

void sub_2676A3484(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  (*(*a1 + 56))(*a1, 0);
  v3 = OUTLINED_FUNCTION_38_0();
  v4(v3);
  free(v2);

  free(v1);
}

uint64_t sub_2676A3510(uint64_t (*a1)(uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC720, &qword_2676CF7D0);
  OUTLINED_FUNCTION_3();
  v6 = v5;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_19_1();
  (*(v6 + 16))(v2, v1 + OBJC_IVAR____TtC16SiriMailInternal21SendMailSceneHostPlan__sendMessageTask, v4);
  a1(v4);
  v8 = OUTLINED_FUNCTION_86_2();
  return v9(v8);
}

uint64_t SendMailSceneHostPlan.init()()
{
  sub_2676CBA1C();
  OUTLINED_FUNCTION_0_29();
  sub_2676AFE00(v1, v2, MEMORY[0x277D5C7F0]);
  sub_2676C97BC();
  *(v0 + OBJC_IVAR____TtC16SiriMailInternal21SendMailSceneHostPlan_confirmIntentOptions) = 0;
  sub_2676CB38C();
  v3 = sub_2676CB37C();
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  v13 = &type metadata for LinkServicesProvider;
  v14 = &protocol witness table for LinkServicesProvider;
  v4 = sub_2676C9B9C();
  OUTLINED_FUNCTION_7_13(v4);
  v11[3] = v4;
  v11[4] = &protocol witness table for ResponseFactory;
  v11[0] = sub_2676C9B8C();

  sub_2676C981C();
  sub_2676C981C();
  sub_2676CB18C();
  sub_2676C981C();
  v5 = v0 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_resolverOverride;
  *(v5 + 32) = 0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v0 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_globals) = v3;
  swift_beginAccess();
  v6 = v3;
  sub_267614854(v19, v5);
  swift_endAccess();
  sub_2676149CC(v12, v0 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_linkServicesProvider);
  sub_2675F95E4(v17, v0 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_skContactManagerOverride, &qword_2801CC6B0, &qword_2676CFC80);
  sub_2676149CC(v11, v0 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_responseFactory);
  sub_2675F95E4(v15, &v8, &off_2801CC6B8, &unk_2676CF600);
  if (v9)
  {

    sub_267662EC4(v15, &off_2801CC6B8, &unk_2676CF600);
    sub_267662EC4(v17, &qword_2801CC6B0, &qword_2676CFC80);
    sub_267662EC4(v19, &qword_2801CC6A8, &unk_2676CF5F0);
    __swift_destroy_boxed_opaque_existential_1(v12);
    __swift_destroy_boxed_opaque_existential_1(v11);
    sub_267614E14(&v8, v10);
  }

  else
  {
    sub_2676C964C();

    sub_267662EC4(v15, &off_2801CC6B8, &unk_2676CF600);
    sub_267662EC4(v17, &qword_2801CC6B0, &qword_2676CFC80);
    sub_267662EC4(v19, &qword_2801CC6A8, &unk_2676CF5F0);
    __swift_destroy_boxed_opaque_existential_1(v12);
    __swift_destroy_boxed_opaque_existential_1(v11);
    if (v9)
    {
      sub_267662EC4(&v8, &off_2801CC6B8, &unk_2676CF600);
    }
  }

  sub_267614E14(v10, v0 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_eventSender);
  return v0;
}

void sub_2676A3948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21_1();
  v291 = v20;
  v24 = v23;
  v294 = v25;
  v289 = sub_2676C9E6C();
  OUTLINED_FUNCTION_3();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1_5();
  v287 = v29;
  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
  OUTLINED_FUNCTION_3();
  v273 = v30;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v32);
  v281 = sub_2676CB0DC();
  OUTLINED_FUNCTION_3();
  v280 = v33;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_11_5(v35);
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8C8, &unk_2676D1C40);
  OUTLINED_FUNCTION_3();
  v278 = v36;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v38);
  v286 = sub_2676C9EAC();
  OUTLINED_FUNCTION_3();
  v40 = v39;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_1_5();
  v284 = v42;
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
  OUTLINED_FUNCTION_3();
  v260 = v43;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v45);
  v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC940, &unk_2676D4A50);
  OUTLINED_FUNCTION_3();
  v282 = v46;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  v50 = OUTLINED_FUNCTION_4_1(v49);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  v52 = MEMORY[0x28223BE20](v51);
  v54 = &v253 - v53;
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v55);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD290, &qword_2676D24C0);
  OUTLINED_FUNCTION_4_1(v56);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v58);
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD298, &unk_2676D1FC0);
  OUTLINED_FUNCTION_3();
  v265 = v59;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v61);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC650, &unk_2676CF560);
  OUTLINED_FUNCTION_4_1(v62);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_50_3();
  v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC658, &qword_2676D45A0);
  OUTLINED_FUNCTION_3();
  v267 = v64;
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC640, &unk_2676CF550);
  OUTLINED_FUNCTION_4_1(v68);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_9_1();
  v290 = v70;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC648, &qword_2676CF990);
  OUTLINED_FUNCTION_3();
  v272 = v72;
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v75);
  sub_2676C9EBC();
  OUTLINED_FUNCTION_3();
  v295 = v77;
  v296 = v76;
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_1_7();
  v80 = v78 - v79;
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_79_3();
  MEMORY[0x28223BE20](v83);
  v85 = &v253 - v84;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v270 = v22;
  v256 = v54;
  v292 = v71;
  v288 = v27;
  v285 = v40;
  v86 = sub_2676CBE4C();
  v293 = __swift_project_value_buffer(v86, qword_2801CDC90);
  v87 = sub_2676CBE2C();
  v88 = sub_2676CC23C();
  if (OUTLINED_FUNCTION_5_7(v88))
  {
    v89 = OUTLINED_FUNCTION_17_3();
    *v89 = 0;
    _os_log_impl(&dword_2675D4000, v87, v88, "#SendMailSceneHostPlan accept(input:)", v89, 2u);
    OUTLINED_FUNCTION_2_5();
  }

  sub_2676C9E5C();
  v91 = v295;
  v90 = v296;
  v93 = v295 + 88;
  v92 = *(v295 + 88);
  v94 = (v92)(v85, v296);
  v95 = v24;
  v96 = *MEMORY[0x277D5C160];
  v97 = v85;
  v98 = *(v91 + 8);
  v98(v97, v90);
  v132 = v94 == v96;
  v99 = v95;
  if (!v132)
  {
LABEL_14:
    sub_2676C9E5C();
    v121 = OUTLINED_FUNCTION_45();
    if ((v92)(v121) != *MEMORY[0x277D5C150])
    {
      v148 = OUTLINED_FUNCTION_45();
      (v98)(v148);
      goto LABEL_27;
    }

    v122 = OUTLINED_FUNCTION_45();
    v123(v122);
    (*(v285 + 32))(v284, v80, v286);
    v124 = sub_2676C9E8C();
    v126 = v125;
    v127 = sub_2676C96CC();
    v128 = [v127 identifier];

    v129 = sub_2676CBF6C();
    v131 = v130;

    v132 = v124 == v129 && v126 == v131;
    if (v132)
    {
    }

    else
    {
      v133 = OUTLINED_FUNCTION_11_16();
      OUTLINED_FUNCTION_95_2(v133, v134);
      OUTLINED_FUNCTION_96_1();

      if ((v124 & 1) == 0)
      {
        v135 = sub_2676C9E8C();
        v137 = v136;
        v138 = sub_2676C96BC();
        v139 = [v138 identifier];

        v140 = sub_2676CBF6C();
        v142 = v141;

        if (v135 == v140 && v137 == v142)
        {
        }

        else
        {
          v144 = OUTLINED_FUNCTION_11_16();
          OUTLINED_FUNCTION_95_2(v144, v145);
          OUTLINED_FUNCTION_96_1();

          if ((v135 & 1) == 0)
          {
            v146 = OUTLINED_FUNCTION_42_6();
            v147(v146);
            v90 = v296;
LABEL_27:
            (*(v288 + 16))(v287, v99, v289);
            v149 = sub_2676CBE2C();
            v150 = sub_2676CC23C();
            if (OUTLINED_FUNCTION_70_2(v150))
            {
              OUTLINED_FUNCTION_5_3();
              v151 = OUTLINED_FUNCTION_12_2();
              v297[0] = v151;
              *v90 = 136315138;
              OUTLINED_FUNCTION_85_2();
              sub_2676C9E5C();
              v152 = sub_2676CBFBC();
              v154 = v153;
              v155 = OUTLINED_FUNCTION_42_6();
              v156(v155);
              v157 = sub_2676B0B84(v152, v154, v297);

              *(v90 + 4) = v157;
              _os_log_impl(&dword_2675D4000, v149, v150, "#SendMailSceneHostPlan accept(input:): got a non USO parse, rejecting parse: %s", v90, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v151);
              OUTLINED_FUNCTION_2_5();
              OUTLINED_FUNCTION_4_6();
            }

            else
            {

              v158 = OUTLINED_FUNCTION_42_6();
              v159(v158);
            }

            sub_2676C973C();
            goto LABEL_36;
          }
        }

        v191 = sub_2676CBE2C();
        v192 = sub_2676CC23C();
        if (OUTLINED_FUNCTION_5_5(v192))
        {
          v193 = OUTLINED_FUNCTION_17_3();
          OUTLINED_FUNCTION_9_4(v193);
          OUTLINED_FUNCTION_3_7();
          _os_log_impl(v194, v195, v196, v197, v198, 2u);
          OUTLINED_FUNCTION_4_6();
        }

        OUTLINED_FUNCTION_23_8();
        sub_26761F9A8();
        swift_getKeyPath();
        OUTLINED_FUNCTION_60_0();
        v199 = v283;
        sub_2676C97EC();

        v200 = OUTLINED_FUNCTION_16_15();
        v201(v200, v199);
        OUTLINED_FUNCTION_34_7();
        v203 = v277;
        v204 = v281;
        (*(v202 + 104))(v277);
        v205 = v279;
        sub_2676C984C();
        (*(v199 + 8))(v203, v204);
        OUTLINED_FUNCTION_27_5();
        v177 = &off_279C11000;
        v179 = v205;
LABEL_35:
        v178(v177, v179);
        sub_2676C974C();
        v180 = OUTLINED_FUNCTION_42_6();
        v181(v180);
        goto LABEL_36;
      }
    }

    v160 = sub_2676CBE2C();
    v161 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_5_5(v161))
    {
      v162 = OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_9_4(v162);
      OUTLINED_FUNCTION_3_7();
      _os_log_impl(v163, v164, v165, v166, v167, 2u);
      OUTLINED_FUNCTION_4_6();
    }

    OUTLINED_FUNCTION_51_2();
    sub_26761F9A8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_85_2();
    v168 = v283;
    sub_2676C97EC();

    OUTLINED_FUNCTION_27_5();
    v169 = OUTLINED_FUNCTION_86_2();
    v170(v169);
    OUTLINED_FUNCTION_23_8();
    v172 = v277;
    v173 = v281;
    (*(v171 + 104))(v277);
    v174 = v279;
    sub_2676C984C();
    (*(v168 + 8))(v172, v173);
    OUTLINED_FUNCTION_27_5();
    v175(v99, v174);
    OUTLINED_FUNCTION_23_8();
    sub_26761F98C();
    LOBYTE(v297[0]) = 1;
    v176 = v274;
    sub_2676C984C();
    v177 = OUTLINED_FUNCTION_16_15();
    v179 = v176;
    goto LABEL_35;
  }

  sub_2676C9E5C();
  sub_2676371E0();
  if (!v100)
  {
    v98(v21, v90);
    v102 = v290;
    v119 = OUTLINED_FUNCTION_33_4();
    __swift_storeEnumTagSinglePayload(v119, v120, 1, v292);
    goto LABEL_13;
  }

  v101 = sub_2676CA77C();

  v102 = v290;
  sub_267698EA0(v101);
  v90 = v296;

  v98(v21, v90);
  v103 = OUTLINED_FUNCTION_33_4();
  v104 = v292;
  if (__swift_getEnumTagSinglePayload(v103, v105, v292) == 1)
  {
LABEL_13:
    sub_267662EC4(v102, &qword_2801CC640, &unk_2676CF550);
    goto LABEL_14;
  }

  v254 = v99;
  v255 = v98;
  OUTLINED_FUNCTION_23_8();
  v107 = v276;
  (*(v106 + 32))(v276, v102, v104);
  v108 = v21 + 16;
  v109 = v269;
  v290 = *(v21 + 16);
  v290(v269, v107, v104);
  sub_2676CBA1C();
  OUTLINED_FUNCTION_0_29();
  sub_2676AFE00(v110, v111, MEMORY[0x277D5C7F0]);
  OUTLINED_FUNCTION_36_5();
  v253 = v112;
  sub_2676CA3FC();
  v113 = v271;
  if (__swift_getEnumTagSinglePayload(v107, 1, v271) != 1)
  {
    OUTLINED_FUNCTION_51_2();
    v183 = v263;
    (*(v182 + 32))(v263, v107, v113);
    v184 = v275;
    sub_2676C9E5C();
    sub_2676A6DE4(v183, v184, v185, v186, v187, v188, v189, v190, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264);
    v255(v184, v296);
    (*(v92 + 8))(v183, v113);
    (*(v21 + 8))(v276, v104);
    goto LABEL_36;
  }

  sub_267662EC4(v107, &qword_2801CC650, &unk_2676CF560);
  v290(v109, v276, v104);
  sub_2676CBADC();
  sub_2676AFE00(&qword_2801CCA48, MEMORY[0x277D5C8A8], MEMORY[0x277D5C890]);
  OUTLINED_FUNCTION_34_7();
  v115 = v114;
  sub_2676CA3FC();
  v116 = v268;
  if (__swift_getEnumTagSinglePayload(v108, 1, v268) == 1)
  {
    v117 = OUTLINED_FUNCTION_16_15();
    v118(v117, v104);
    sub_267662EC4(v108, &qword_2801CD290, &qword_2676D24C0);
    v90 = v296;
    v98 = v255;
    v99 = v254;
    goto LABEL_14;
  }

  v206 = OUTLINED_FUNCTION_38_0();
  v207(v206);
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_31();
  sub_2676AFE00(v208, v209, MEMORY[0x277D5C780]);
  OUTLINED_FUNCTION_51_2();
  sub_2676CA3EC();

  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
  v211 = OUTLINED_FUNCTION_64_2(v92);
  sub_267662EC4(v92, &qword_2801CC428, &unk_2676CEDD0);
  if (v211 == 1)
  {
    v296 = v115;
    OUTLINED_FUNCTION_36_5();
    sub_26761F9A8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_43_3();
    v212 = v283;
    sub_2676C97EC();

    OUTLINED_FUNCTION_27_5();
    v213(v116, v212);
    v214 = v261;
    sub_2676C983C();
    OUTLINED_FUNCTION_27_5();
    v215(v93, v214);
    swift_getKeyPath();
    v216 = sub_2676A3390(v297);
    OUTLINED_FUNCTION_100_1();
    v217 = sub_2676CA3DC();
    if (OUTLINED_FUNCTION_64_2(v218))
    {
      v219 = OUTLINED_FUNCTION_29_9();
      v217(v219);

      v220 = OUTLINED_FUNCTION_30_8();
      (v216)(v220);
    }

    else
    {
      KeyPath = swift_getKeyPath();
      swift_getKeyPath();
      OUTLINED_FUNCTION_43_3();
      sub_2676CA3EC();

      OUTLINED_FUNCTION_39_6(v297);
      if (v132)
      {
        sub_267662EC4(v297, &qword_2801CC428, &unk_2676CEDD0);
      }

      else
      {
        swift_getKeyPath();
        sub_2676CA89C();
        v296 = KeyPath;

        OUTLINED_FUNCTION_14_2();
        (*(v237 + 8))(v297, v210);
      }

      sub_2676CA8AC();
      v238 = OUTLINED_FUNCTION_29_9();
      v217(v238);

      v239 = OUTLINED_FUNCTION_30_8();
      (v216)(v239);
    }

    v240 = v272;
    v241 = sub_2676CBE2C();
    v242 = sub_2676CC23C();
    v243 = OUTLINED_FUNCTION_5_5(v242);
    v244 = v268;
    v245 = v292;
    if (v243)
    {
      v246 = OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_9_4(v246);
      OUTLINED_FUNCTION_3_7();
      _os_log_impl(v247, v248, v249, v250, v251, 2u);
      OUTLINED_FUNCTION_4_6();
    }

    sub_2676C974C();
    OUTLINED_FUNCTION_27_5();
    v252(v266, v244);
    (*(v240 + 8))(v276, v245);
  }

  else
  {
    v221 = sub_2676CBE2C();
    v222 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_5_7(v222))
    {
      v223 = OUTLINED_FUNCTION_17_3();
      *v223 = 0;
      _os_log_impl(&dword_2675D4000, v221, v222, "#SendMailSceneHostPlan accept(input:) processed update message task, returning .yes", v223, 2u);
      OUTLINED_FUNCTION_2_5();
    }

    v224 = swift_getKeyPath();
    OUTLINED_FUNCTION_51_2();
    v225 = v266;
    sub_2676CA3EC();

    OUTLINED_FUNCTION_60_0();
    sub_2676CA3BC();
    OUTLINED_FUNCTION_34_7();
    sub_2676C9E5C();
    sub_2676A6DE4(v210, v224, v226, v227, v228, v229, v230, v231, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264);
    v255(v224, v296);
    OUTLINED_FUNCTION_27_5();
    v232(v210, v271);
    OUTLINED_FUNCTION_27_5();
    v233(v225, v116);
    v234 = OUTLINED_FUNCTION_16_15();
    v235(v234, v292);
  }

LABEL_36:
  OUTLINED_FUNCTION_20_1();
}

void sub_2676A4EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21_1();
  v138 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD230, &unk_2676D4670);
  OUTLINED_FUNCTION_4_1(v23);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC940, &unk_2676D4A50);
  OUTLINED_FUNCTION_3();
  v139 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v34);
  v36 = &v121 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDB68, &qword_2676D4B60);
  OUTLINED_FUNCTION_3();
  v39 = v38;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_50_3();
  v41 = type metadata accessor for ResolveSiriMailMessageIntent(0);
  OUTLINED_FUNCTION_2_6();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_3_2();
  v45 = v44 - v43;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDBF0, &qword_2676D4B68);
  OUTLINED_FUNCTION_3();
  v126 = v46;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDBF8, &qword_2676D4B70);
  OUTLINED_FUNCTION_3();
  v128 = v49;
  v129 = v50;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDC00, &qword_2676D4B78);
  OUTLINED_FUNCTION_3();
  v130 = v53;
  v131 = v54;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDC08, &qword_2676D4B80);
  OUTLINED_FUNCTION_3();
  v132 = v57;
  v133 = v58;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDC10, &qword_2676D4B88);
  OUTLINED_FUNCTION_3();
  v134 = v61;
  v135 = v62;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDC18, &qword_2676D4B90);
  OUTLINED_FUNCTION_3();
  v136 = v65;
  v137 = v66;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_9_1();
  v127 = v68;
  sub_2676A34F8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_29();
  v124 = sub_2676AFE00(v69, v70, MEMORY[0x277D5C7F0]);
  OUTLINED_FUNCTION_1_31();
  sub_2676AFE00(v71, v72, MEMORY[0x277D5C780]);
  sub_2676C9A2C();

  (*(v39 + 8))(v21, v37);
  v73 = v36;
  sub_26761F9A8();
  swift_getKeyPath();
  v123 = v36;
  sub_2676C97EC();

  v75 = v139 + 8;
  v74 = *(v139 + 8);
  v74(v73, v26);
  OUTLINED_FUNCTION_43_3();
  sub_26761F9A8();
  swift_getKeyPath();
  v76 = v26;
  sub_2676C97EC();

  v74(v21, v26);
  OUTLINED_FUNCTION_23_8();
  sub_26761F9A8();
  swift_getKeyPath();
  sub_2676C97EC();

  v74(v26, v26);
  OUTLINED_FUNCTION_60_0();
  sub_26761F9A8();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_44_4(KeyPath);

  v78 = OUTLINED_FUNCTION_78_2();
  (v74)(v78);
  OUTLINED_FUNCTION_60_0();
  sub_26761F9A8();
  v79 = swift_getKeyPath();
  OUTLINED_FUNCTION_44_4(v79);

  v80 = OUTLINED_FUNCTION_78_2();
  (v74)(v80);
  OUTLINED_FUNCTION_60_0();
  sub_26761F9A8();
  v81 = swift_getKeyPath();
  OUTLINED_FUNCTION_44_4(v81);

  v82 = OUTLINED_FUNCTION_78_2();
  (v74)(v82);
  v139 = v75;
  v122 = v74;
  OUTLINED_FUNCTION_60_0();
  sub_26761F9A8();
  v83 = swift_getKeyPath();
  OUTLINED_FUNCTION_44_4(v83);

  v84 = OUTLINED_FUNCTION_78_2();
  (v74)(v84);
  v85 = v41;
  v86 = v41[12];
  v87 = sub_2676C8BFC();
  v121 = v45;
  __swift_storeEnumTagSinglePayload(v45 + v86, 1, 1, v87);
  v88 = OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_resolverOverride;
  swift_beginAccess();
  sub_2675F95E4(v20 + v88, v45 + v41[13], &qword_2801CC6A8, &unk_2676CF5F0);
  sub_2675F95E4(v20 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_skContactManagerOverride, v45 + v41[14], &qword_2801CC6B0, &qword_2676CFC80);
  v89 = *(v20 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_globals);
  *(v45 + v41[15]) = v89;
  v90 = v89;
  OUTLINED_FUNCTION_85_2();
  sub_26761F98C();
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
  __swift_storeEnumTagSinglePayload(v75, 0, 1, v91);
  v92 = sub_2676CBA1C();

  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  OUTLINED_FUNCTION_37_9();
  v96 = sub_2676AFE00(v94, v95, &unk_2676D39F8);
  OUTLINED_FUNCTION_43_3();
  v97 = v85;
  v98 = v124;
  v99 = v121;
  sub_2676C955C();

  sub_267662EC4(v75, &qword_2801CD230, &unk_2676D4670);
  sub_26766B21C(v99);
  OUTLINED_FUNCTION_85_2();
  sub_26761F9A8();
  v140 = v97;
  v141 = v92;
  v142 = v93;
  v143 = v96;
  v144 = v98;
  OUTLINED_FUNCTION_21_8();
  v100 = OUTLINED_FUNCTION_72_1();
  OUTLINED_FUNCTION_12_18();
  v103 = sub_2676AFE00(v101, v102, MEMORY[0x277D5CA90]);
  OUTLINED_FUNCTION_36_5();
  v104 = v125;
  sub_2676C94EC();
  v122(v75, v76);
  OUTLINED_FUNCTION_27_5();
  v105 = OUTLINED_FUNCTION_14_3();
  v106(v105);

  v140 = v104;
  v141 = v100;
  v142 = v103;
  OUTLINED_FUNCTION_19_4();
  v107 = OUTLINED_FUNCTION_72_1();
  OUTLINED_FUNCTION_60_0();
  v108 = v128;
  OUTLINED_FUNCTION_75_1();
  sub_2676C952C();

  v109 = OUTLINED_FUNCTION_47_4();
  v110(v109);

  v140 = v108;
  v141 = &type metadata for SendMailResult;
  v142 = v107;
  OUTLINED_FUNCTION_27_8();
  v111 = OUTLINED_FUNCTION_72_1();
  OUTLINED_FUNCTION_36_5();
  v112 = v130;
  sub_2676C954C();

  (*(v131 + 8))(v104, v112);
  v140 = v112;
  v141 = v111;
  OUTLINED_FUNCTION_26_7();
  v113 = OUTLINED_FUNCTION_72_1();
  OUTLINED_FUNCTION_60_0();
  v114 = v132;
  OUTLINED_FUNCTION_75_1();
  sub_2676C951C();
  v115 = OUTLINED_FUNCTION_47_4();
  v116(v115);

  v140 = v114;
  v141 = &type metadata for SendMailResult;
  v142 = v113;
  OUTLINED_FUNCTION_25_10();
  v117 = OUTLINED_FUNCTION_72_1();
  v118 = v127;
  v119 = v134;
  sub_2676C94FC();

  (*(v135 + 8))(v104, v119);
  v140 = v119;
  v141 = v117;
  OUTLINED_FUNCTION_24_7();
  OUTLINED_FUNCTION_72_1();
  v120 = v136;
  sub_2676C933C();
  (*(v137 + 8))(v118, v120);
  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_2676A5AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D0, &qword_2676D1D80);
  v3[4] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_2676CB0DC();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA20, &qword_2676CFEB8);
  v3[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8C8, &unk_2676D1C40);
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC940, &unk_2676D4A50);
  v3[16] = v7;
  v3[17] = *(v7 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  sub_2676CC1CC();
  v3[20] = sub_2676CC1BC();
  v9 = sub_2676CC18C();
  v3[21] = v9;
  v3[22] = v8;

  return MEMORY[0x2822009F8](sub_2676A5D84, v9, v8);
}

uint64_t sub_2676A5D84()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v5 = *(v0 + 88);
  v36 = *(v0 + 64);
  sub_26761F9A8();
  swift_getKeyPath();
  sub_2676C97EC();

  v6 = *(v1 + 8);
  v7 = OUTLINED_FUNCTION_45();
  v6(v7);
  sub_2676C97FC();
  v8 = *(v4 + 8);
  v8(v2, v3);
  if (__swift_getEnumTagSinglePayload(v5, 1, v36) == 1)
  {
    sub_267662EC4(*(v0 + 88), &qword_2801CCA20, &qword_2676CFEB8);
  }

  else
  {
    v9 = *(v0 + 72);
    v10 = OUTLINED_FUNCTION_11_16();
    v12 = v11(v10);
    v13 = *MEMORY[0x277D5CA08];
    v14 = *(v9 + 8);
    v15 = OUTLINED_FUNCTION_11_16();
    v14(v15);
    if (v12 == v13)
    {
      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_2801CBAA0);
      }

      v34 = v6;
      v35 = v14;
      v37 = v8;
      v16 = sub_2676CBE4C();
      OUTLINED_FUNCTION_24_2(v16, qword_2801CDC90);
      v17 = sub_2676CBE2C();
      v18 = sub_2676CC26C();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_9_4(v19);
        _os_log_impl(&dword_2675D4000, v17, v18, "#SendMailSceneHostPlan confirmed via voice, sending email now", v12, 2u);
        OUTLINED_FUNCTION_4_6();
      }

      v20 = *(v0 + 144);
      v21 = *(v0 + 128);
      v22 = *(v0 + 72);
      v23 = *(v0 + 80);
      v24 = *(v0 + 64);

      sub_26761F9A8();
      swift_getKeyPath();
      sub_2676C97EC();

      (v34)(v20, v21);
      (*(v22 + 104))(v23, *MEMORY[0x277D5CA00], v24);
      sub_2676C984C();
      (v35)(v23, v24);
      v25 = OUTLINED_FUNCTION_58_1();
      v37(v25);
      sub_26761F98C();
      *(v0 + 192) = 1;
      sub_2676C984C();
      v26 = OUTLINED_FUNCTION_45();
      v27(v26);
    }
  }

  sub_2676C8BFC();
  v28 = OUTLINED_FUNCTION_33_4();
  __swift_storeEnumTagSinglePayload(v28, v29, 1, v30);
  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  *(v0 + 184) = v31;
  *v31 = v32;
  v31[1] = sub_267665C10;

  return sub_26761FD10();
}

uint64_t sub_2676A6114(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return sub_26761FAAC(&v3, 0);
}

uint64_t sub_2676A6158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v3[20] = a1;
  v4 = sub_2676CB0DC();
  v3[23] = v4;
  v3[24] = *(v4 - 8);
  v3[25] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8C8, &unk_2676D1C40);
  v3[26] = v5;
  v3[27] = *(v5 - 8);
  v3[28] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC940, &unk_2676D4A50);
  v3[29] = v6;
  v3[30] = *(v6 - 8);
  v3[31] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD310, &unk_2676D4F10);
  v3[32] = v7;
  v3[33] = *(v7 - 8);
  v3[34] = swift_task_alloc();
  v8 = sub_2676C9CCC();
  v3[35] = v8;
  v3[36] = *(v8 - 8);
  v3[37] = swift_task_alloc();
  sub_2676CC1CC();
  v3[38] = sub_2676CC1BC();
  v10 = sub_2676CC18C();
  v3[39] = v10;
  v3[40] = v9;

  return MEMORY[0x2822009F8](sub_2676A63E4, v10, v9);
}

uint64_t sub_2676A63E4()
{
  v61 = v0;
  v1 = (v0 + 128);
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v2 = sub_2676CBE4C();
  OUTLINED_FUNCTION_24_2(v2, qword_2801CDC90);
  v3 = sub_2676CBE2C();
  v4 = sub_2676CC26C();
  if (OUTLINED_FUNCTION_70_2(v4))
  {
    v5 = OUTLINED_FUNCTION_17_3();
    *v5 = 0;
    _os_log_impl(&dword_2675D4000, v3, v4, "#SendMailSceneHostPlan handling error", v5, 2u);
    OUTLINED_FUNCTION_2_5();
  }

  v6 = *(v0 + 168);

  *(v0 + 128) = v6;
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCE70, &unk_2676D1300);
  OUTLINED_FUNCTION_58_4();
  if (swift_dynamicCast())
  {
    v8 = (v0 + 296);
    v9 = (v0 + 280);
    v10 = 288;
LABEL_9:
    (*(*(v0 + v10) + 8))(*v8, *v9);

    v14 = *(v0 + 240);
    v13 = *(v0 + 248);
    v15 = *(v0 + 224);
    v16 = *(v0 + 232);
    v17 = *(v0 + 216);
    v18 = *(v0 + 192);
    v19 = *(v0 + 200);
    v57 = *(v0 + 184);
    v58 = *(v0 + 208);
    sub_26761F9A8();
    swift_getKeyPath();
    sub_2676C97EC();

    (*(v14 + 8))(v13, v16);
    (*(v18 + 104))(v19, *MEMORY[0x277D5CA20], v57);
    sub_2676C984C();
    (*(v18 + 8))(v19, v57);
    (*(v17 + 8))(v15, v58);
    v20 = sub_2676CBE2C();
    v21 = sub_2676CC26C();
    if (OUTLINED_FUNCTION_5_7(v21))
    {
      v22 = OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_9_4(v22);
      _os_log_impl(&dword_2675D4000, v20, v21, "#SendMailSceneHostPlan user cancelled or rejected, returning IntentCancelled", v15, 2u);
      OUTLINED_FUNCTION_4_6();
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_15_3();
    *(v0 + 328) = v23;
    *v23 = v24;
    OUTLINED_FUNCTION_57_6(v23);
    OUTLINED_FUNCTION_87_2();

    return sub_26762E11C();
  }

  v1 = (v0 + 136);
  v11 = *(v0 + 168);

  *(v0 + 136) = v11;
  v12 = v11;
  OUTLINED_FUNCTION_58_4();
  if (swift_dynamicCast())
  {
    v8 = (v0 + 272);
    v9 = (v0 + 256);
    v10 = 264;
    goto LABEL_9;
  }

  v27 = *(v0 + 168);

  *(v0 + 144) = v27;
  v28 = v27;
  if (swift_dynamicCast())
  {
    v29 = *(v0 + 88);
    v30 = *(v0 + 96);
    *(v0 + 344) = v29;
    *(v0 + 352) = v30;
    v31 = *(v0 + 104);
    if (v31 == 1)
    {
      v32 = sub_2676CBE2C();
      v33 = sub_2676CC26C();
      if (OUTLINED_FUNCTION_5_7(v33))
      {
        v34 = OUTLINED_FUNCTION_17_3();
        *v34 = 0;
        _os_log_impl(&dword_2675D4000, v32, v33, "#SendMailSceneHostPlan RecipientResolutionError.contactMatchWithoutEmailHandle, returning UnsupportedContactNoEmailAddress", v34, 2u);
        OUTLINED_FUNCTION_2_5();
      }

      v35 = *(v0 + 176);

      sub_2676149CC(v35 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_responseFactory, v0 + 24);
      *(v0 + 16) = v29;
      sub_267651D60(v29, v30, 1);
      swift_task_alloc();
      OUTLINED_FUNCTION_15_3();
      *(v0 + 360) = v36;
      *v36 = v37;
      OUTLINED_FUNCTION_57_6(v36);
      OUTLINED_FUNCTION_87_2();

      return sub_2676BFAF0();
    }

    sub_267651D40(v29, v30, v31);
  }

  v40 = *(v0 + 240);
  v39 = *(v0 + 248);
  v41 = *(v0 + 232);
  v42 = *(v0 + 192);
  v43 = *(v0 + 200);
  v56 = *(v0 + 184);
  v59 = *(v0 + 168);

  sub_26761F9A8();
  swift_getKeyPath();
  sub_2676C97EC();

  (*(v40 + 8))(v39, v41);
  (*(v42 + 104))(v43, *MEMORY[0x277D5CA10], v56);
  sub_2676C984C();
  (*(v42 + 8))(v43, v56);
  v44 = OUTLINED_FUNCTION_58_4();
  v45(v44);
  v46 = v59;
  v47 = sub_2676CBE2C();
  v48 = sub_2676CC26C();

  if (os_log_type_enabled(v47, v48))
  {
    OUTLINED_FUNCTION_5_3();
    v49 = OUTLINED_FUNCTION_12_2();
    v60 = v49;
    *v59 = 136315138;
    swift_getErrorValue();
    v50 = sub_2676CC5FC();
    v52 = sub_2676B0B84(v50, v51, &v60);

    *(v59 + 1) = v52;
    _os_log_impl(&dword_2675D4000, v47, v48, "#SendMailSceneHostPlan error: %s", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v49);
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_4_6();
  }

  type metadata accessor for GenericError();
  *(v0 + 376) = swift_initStackObject();
  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  *(v0 + 384) = v53;
  *v53 = v54;
  OUTLINED_FUNCTION_57_6(v53);
  OUTLINED_FUNCTION_87_2();

  return sub_2676C1B78();
}

uint64_t sub_2676A6A60()
{
  OUTLINED_FUNCTION_12_1();
  v2 = *v1;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 336) = v0;

  v5 = *(v2 + 320);
  v6 = *(v2 + 312);
  if (v0)
  {
    v7 = sub_2676A6DAC;
  }

  else
  {
    v7 = sub_267666894;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2676A6B90()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v6 = v5;
  v3[46] = v0;

  sub_267662E0C((v3 + 2));
  v7 = v3[39];
  v8 = v3[40];
  if (v0)
  {
    v9 = sub_2676A6D90;
  }

  else
  {
    v9 = sub_267666A1C;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_2676A6C94()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v6 = v5;
  v3[49] = v0;

  v7 = v3[39];
  v8 = v3[40];
  if (v0)
  {
    v9 = sub_2676A6DC8;
  }

  else
  {
    v9 = sub_26766B3F0;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

void sub_2676A6DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21_1();
  v211 = v22;
  v212 = v20;
  v201 = v24;
  v202 = v23;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC658, &qword_2676D45A0);
  OUTLINED_FUNCTION_3();
  v193 = v25;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v27);
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC968, &unk_2676CFDF0);
  OUTLINED_FUNCTION_3();
  v195 = v28;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDBE0, &qword_2676D4F20);
  v32 = OUTLINED_FUNCTION_4_1(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v35);
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD510, &unk_2676D4970);
  OUTLINED_FUNCTION_3();
  v203 = v36;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v38);
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  OUTLINED_FUNCTION_2_6();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v42);
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
  OUTLINED_FUNCTION_3();
  v197 = v43;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC940, &unk_2676D4A50);
  OUTLINED_FUNCTION_3();
  v207 = v47;
  v208 = v46;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_9_1();
  v206 = v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD9A8, &qword_2676D3E40);
  OUTLINED_FUNCTION_3();
  v52 = v51;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v53);
  v55 = &v181 - v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD3C0, &unk_2676D4DF0);
  OUTLINED_FUNCTION_3();
  v58 = v57;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v59);
  v61 = &v181 - v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD3B8, &unk_2676D3E60);
  OUTLINED_FUNCTION_3();
  v200 = v63;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_50_3();
  sub_2676CBA1C();
  OUTLINED_FUNCTION_0_29();
  v204 = sub_2676AFE00(v65, v66, MEMORY[0x277D5C7F0]);
  sub_2676C98BC();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_31();
  v69 = sub_2676AFE00(v67, v68, MEMORY[0x277D5C780]);
  OUTLINED_FUNCTION_91_2();
  sub_2676C988C();
  v70 = v62;
  v71 = v211;

  (*(v58 + 8))(v61, v56);
  swift_getKeyPath();
  OUTLINED_FUNCTION_59_4();
  v210 = v21;
  sub_2676C989C();

  LOBYTE(v61) = sub_2676C987C();
  v74 = *(v52 + 8);
  v73 = v52 + 8;
  v72 = v74;
  v74(v55, v50);
  v199 = v70;
  if (v61)
  {
    v186 = v73;
    v187 = v72;
    sub_26761F9A8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_36_5();
    sub_2676C97EC();

    OUTLINED_FUNCTION_107_0();
    v75 = OUTLINED_FUNCTION_14_3();
    v76(v75);
    sub_2676C983C();
    v77 = OUTLINED_FUNCTION_47_4();
    v78(v77);
    swift_getKeyPath();
    v79 = sub_2676A3390(v213);
    v80 = sub_2676CA3DC();
    v82 = v81;
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
    if (OUTLINED_FUNCTION_64_2(v82))
    {
      v83 = OUTLINED_FUNCTION_29_9();
      v80(v83);

      v84 = OUTLINED_FUNCTION_30_8();
      (v79)(v84);
      OUTLINED_FUNCTION_101_0();
      v71 = v211;
      v72 = v187;
    }

    else
    {
      v183 = v82;
      v184 = v80;
      v185 = v79;
      KeyPath = swift_getKeyPath();
      swift_getKeyPath();
      OUTLINED_FUNCTION_36_5();
      sub_2676CA3EC();

      OUTLINED_FUNCTION_39_6(v79);
      if (v85)
      {
        sub_267662EC4(v79, &qword_2801CC428, &unk_2676CEDD0);
      }

      else
      {
        swift_getKeyPath();
        OUTLINED_FUNCTION_59_4();
        sub_2676CA89C();

        OUTLINED_FUNCTION_14_2();
        (*(v86 + 8))(v79, v70);
      }

      v72 = v187;
      sub_2676CA8AC();
      v87 = OUTLINED_FUNCTION_29_9();
      v184(v87);

      v88 = OUTLINED_FUNCTION_30_8();
      (v185)(v88);
      OUTLINED_FUNCTION_101_0();
      v71 = v211;
    }

    v73 = v186;
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_59_4();
  v89 = v210;
  sub_2676C989C();

  v90 = sub_2676C987C();
  v72(v55, v50);
  v91 = v203;
  v92 = v69;
  if (v90)
  {
    v93 = v206;
    sub_26761F9A8();
    swift_getKeyPath();
    OUTLINED_FUNCTION_60_0();
    v94 = v208;
    sub_2676C97EC();

    OUTLINED_FUNCTION_107_0();
    v95(v93, v94);
    v96 = v198;
    sub_2676C983C();
    OUTLINED_FUNCTION_27_5();
    v97(v70, v96);
    swift_getKeyPath();
    v98 = sub_2676A3390(v213);
    OUTLINED_FUNCTION_100_1();
    v99 = sub_2676CA3DC();
    v100 = v92;
    v102 = v101;
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
    if (OUTLINED_FUNCTION_64_2(v102))
    {
      v104 = OUTLINED_FUNCTION_29_9();
      v99(v104);

      v105 = OUTLINED_FUNCTION_30_8();
      (v98)(v105);
      OUTLINED_FUNCTION_101_0();
      v89 = v210;
      v71 = v211;
    }

    else
    {
      v198 = v99;
      v73 = swift_getKeyPath();
      swift_getKeyPath();
      v106 = v189;
      sub_2676CA3EC();

      OUTLINED_FUNCTION_39_6(v106);
      if (v85)
      {
        sub_267662EC4(v106, &qword_2801CC428, &unk_2676CEDD0);
      }

      else
      {
        swift_getKeyPath();
        OUTLINED_FUNCTION_59_4();
        sub_2676CA89C();

        OUTLINED_FUNCTION_14_2();
        (*(v107 + 8))(v106, v103);
      }

      sub_2676CA8AC();
      v108 = OUTLINED_FUNCTION_29_9();
      v198(v108);

      v109 = OUTLINED_FUNCTION_30_8();
      (v98)(v109);
      OUTLINED_FUNCTION_101_0();
      v89 = v210;
      v71 = v211;
      v91 = v203;
    }

    v92 = v100;
  }

  v110 = swift_getKeyPath();
  OUTLINED_FUNCTION_11_29();
  v113 = sub_2676AFE00(v111, v112, MEMORY[0x277D5C6A8]);
  OUTLINED_FUNCTION_85_2();
  OUTLINED_FUNCTION_122_0(v110);

  v114 = v209;
  v115 = sub_2676C987C();
  v116 = *(v91 + 8);
  v116(v73, v114);
  if (v115)
  {
    v203 = v113;
    v122 = v194;
    sub_2676A7F58(0, v202, v71, v117, v118, v119, v120, v121, v181, KeyPath, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192);
    v123 = sub_2676C976C();
    if (__swift_getEnumTagSinglePayload(v122, 1, v123) != 1)
    {
      v168 = OUTLINED_FUNCTION_19_9();
      v169(v168);
      OUTLINED_FUNCTION_14_2();
      v171 = *(v170 + 32);
      v172 = v201;
      v173 = v122;
LABEL_33:
      v177 = v123;
      goto LABEL_35;
    }

    sub_267662EC4(v122, &qword_2801CDBE0, &qword_2676D4F20);
    v124 = v206;
    sub_26761F9A8();
    v125 = swift_getKeyPath();
    v198 = v116;
    v126 = v125;
    OUTLINED_FUNCTION_51_2();
    OUTLINED_FUNCTION_119_0(v127);

    OUTLINED_FUNCTION_107_0();
    v128 = v92;
    v92 = v116;
    v129(v124, v128);
    OUTLINED_FUNCTION_118_0();
    v116 = v198;
    (*(v195 + 8))(v89, v126);
    v113 = v203;
  }

  v130 = swift_getKeyPath();
  OUTLINED_FUNCTION_122_0(v130);
  v131 = v209;

  v132 = sub_2676C987C();
  v116(v73, v131);
  if ((v132 & 1) == 0)
  {
    goto LABEL_23;
  }

  v198 = v116;
  OUTLINED_FUNCTION_23_8();
  sub_2676A7F58(1, v202, v71, v133, v134, v135, v136, v137, v181, KeyPath, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192);
  v123 = sub_2676C976C();
  if (__swift_getEnumTagSinglePayload(v131, 1, v123) != 1)
  {
    v174 = OUTLINED_FUNCTION_19_9();
    v175(v174);
    OUTLINED_FUNCTION_14_2();
    v171 = *(v176 + 32);
    v172 = v201;
    v173 = v131;
    goto LABEL_33;
  }

  sub_267662EC4(v131, &qword_2801CDBE0, &qword_2676D4F20);
  v203 = v113;
  v138 = v206;
  sub_26761F9A8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_119_0(v139);

  OUTLINED_FUNCTION_107_0();
  v140 = v92;
  v92 = v116;
  v141(v138, v140);
  OUTLINED_FUNCTION_118_0();
  v142 = OUTLINED_FUNCTION_86_2();
  v131 = v209;
  v143(v142);
  v116 = v198;
LABEL_23:
  swift_getKeyPath();
  v209 = v92;
  sub_2676C98AC();

  v144 = sub_2676C987C();
  v116(v73, v131);
  v145 = v205;
  if (v144)
  {
    OUTLINED_FUNCTION_34_7();
    sub_2676A7F58(2, v202, v71, v146, v147, v148, v149, v150, v181, KeyPath, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192);
    v151 = sub_2676C976C();
    if (__swift_getEnumTagSinglePayload(v116, 1, v151) == 1)
    {
      sub_267662EC4(v116, &qword_2801CDBE0, &qword_2676D4F20);
      v152 = v206;
      sub_26761F9A8();
      swift_getKeyPath();
      OUTLINED_FUNCTION_34_7();
      v153 = v208;
      sub_2676C97EC();

      (*(v207 + 8))(v152, v153);
      sub_2676C983C();
      OUTLINED_FUNCTION_27_5();
      v154 = OUTLINED_FUNCTION_58_1();
      v155(v154);
      goto LABEL_26;
    }

    v178 = OUTLINED_FUNCTION_19_9();
    v179(v178);
    OUTLINED_FUNCTION_14_2();
    v171 = *(v180 + 32);
    v172 = v201;
    v173 = v116;
    v177 = v151;
LABEL_35:
    v171(v172, v173, v177);
    goto LABEL_36;
  }

LABEL_26:
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v156 = sub_2676CBE4C();
  OUTLINED_FUNCTION_24_2(v156, qword_2801CDC90);
  v157 = v212;

  v158 = sub_2676CBE2C();
  v159 = sub_2676CC23C();

  if (os_log_type_enabled(v158, v159))
  {
    v160 = OUTLINED_FUNCTION_5_3();
    v161 = OUTLINED_FUNCTION_41_1();
    v213[0] = v161;
    *v160 = 136315138;
    swift_getKeyPath();
    OUTLINED_FUNCTION_34_7();
    sub_2676A31D8();
    OUTLINED_FUNCTION_43_3();
    sub_2676CA3EC();

    OUTLINED_FUNCTION_27_5();
    v162(v157, v145);
    v163 = sub_2676CBFBC();
    v165 = sub_2676B0B84(v163, v164, v213);

    *(v160 + 4) = v165;
    _os_log_impl(&dword_2675D4000, v158, v159, "#SendMailSceneHostPlan accept(input:) returning .yes() with updated target: %s", v160, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v161);
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
  }

  sub_2676C974C();
  v166 = OUTLINED_FUNCTION_19_9();
  v167(v166);
LABEL_36:
  OUTLINED_FUNCTION_20_1();
}

void sub_2676A7F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21_1();
  v198 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDBC8, &unk_2676D4960);
  OUTLINED_FUNCTION_3();
  v191 = v29;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v31);
  v193 = sub_2676CA43C();
  OUTLINED_FUNCTION_3();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_3_2();
  v37 = v36 - v35;
  v38 = sub_2676C9EBC();
  OUTLINED_FUNCTION_3();
  v195 = v39;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v41);
  v43 = &v180 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  OUTLINED_FUNCTION_4_1(v44);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_50_3();
  v200 = v25;
  v197 = v23;
  v46 = sub_26762F80C(v25);
  v199 = v27;
  if ((v46 & 1) == 0)
  {
    swift_getKeyPath();
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC658, &qword_2676D45A0);
    OUTLINED_FUNCTION_0_29();
    sub_2676AFE00(v63, v64, MEMORY[0x277D5C7F0]);
    OUTLINED_FUNCTION_1_31();
    sub_2676AFE00(v65, v66, MEMORY[0x277D5C780]);
    sub_2676CA3EC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
    OUTLINED_FUNCTION_39_6(v21);
    if (v58)
    {
      sub_267662EC4(v21, &qword_2801CC428, &unk_2676CEDD0);
      v71 = MEMORY[0x277D84F90];
    }

    else
    {
      v71 = sub_2675DFE20(v200);
      OUTLINED_FUNCTION_14_2();
      v72 = OUTLINED_FUNCTION_14_3();
      v73(v72);
    }

    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v74 = sub_2676CBE4C();
    OUTLINED_FUNCTION_24_2(v74, qword_2801CDC90);

    v75 = sub_2676CBE2C();
    v76 = sub_2676CC23C();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = OUTLINED_FUNCTION_126();
      v203[0] = OUTLINED_FUNCTION_125_0();
      *v77 = 136315394;
      v197 = v62;
      if (v200)
      {
        OUTLINED_FUNCTION_42_5();
        if (v78)
        {
          v80 = 17219;
        }

        else
        {
          v80 = 4408130;
        }

        if (v78)
        {
          v81 = v79;
        }

        else
        {
          v81 = 0xE300000000000000;
        }
      }

      else
      {
        v81 = 0xE200000000000000;
        v80 = 20308;
      }

      v122 = sub_2676B0B84(v80, v81, v203);

      *(v77 + 4) = v122;
      *(v77 + 12) = 2080;
      v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
      v124 = MEMORY[0x26D5FDDD0](v71, v123);
      v126 = sub_2676B0B84(v124, v125, v203);

      *(v77 + 14) = v126;
      _os_log_impl(&dword_2675D4000, v75, v76, "#SendMailSceneHostPlan Replacing %s recipients with these recipients: %s", v77, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_2_5();
    }

    else
    {
    }

    swift_getKeyPath();
    v127 = sub_2676A3390(v203);
    v128 = sub_2676CA3DC();
    if (!OUTLINED_FUNCTION_64_2(v129))
    {
      sub_2675E025C(v200, v71);
    }

    v128(v201, 0);

    (v127)(v203, 0);
    goto LABEL_61;
  }

  v196 = v33;
  v186 = v28;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v47 = sub_2676CBE4C();
  v48 = __swift_project_value_buffer(v47, qword_2801CDC90);
  v49 = v195;
  v50 = *(v195 + 16);
  v51 = v197;
  v50(v43, v197, v38);
  v52 = v194;
  v50(v194, v51, v38);
  v189 = v48;
  v53 = sub_2676CBE2C();
  v54 = sub_2676CC23C();
  v55 = os_log_type_enabled(v53, v54);
  v56 = MEMORY[0x277D5E478];
  if (v55)
  {
    v184 = v54;
    v57 = swift_slowAlloc();
    v183 = OUTLINED_FUNCTION_41_1();
    v203[0] = v183;
    *v57 = 136315650;
    v185 = v53;
    v188 = v38;
    if (v200)
    {
      OUTLINED_FUNCTION_42_5();
      if (v58)
      {
        v60 = 17219;
      }

      else
      {
        v60 = 4408130;
      }

      if (v58)
      {
        v61 = v59;
      }

      else
      {
        v61 = 0xE300000000000000;
      }
    }

    else
    {
      v61 = 0xE200000000000000;
      v60 = 20308;
    }

    v82 = sub_2676B0B84(v60, v61, v203);

    *(v57 + 4) = v82;
    *(v57 + 12) = 1024;
    v182 = *v56;
    v190 = *(v196 + 104);
    v192 = (v196 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v187 = v57;
    v83 = v196;
    OUTLINED_FUNCTION_105_0();
    v84();
    v85 = v200;
    v86 = sub_2676308A4(v200);
    MEMORY[0x28223BE20](v86);
    OUTLINED_FUNCTION_14_20();
    v88 = sub_2676A2650(sub_267630B90, v87, v86);

    v181 = *(v83 + 8);
    v89 = OUTLINED_FUNCTION_47_4();
    v90(v89);
    v195 = *(v195 + 8);
    (v195)(v43, v188);
    v91 = v187;
    *(v187 + 14) = v88 & 1;
    *(v91 + 18) = 1024;
    v190(v37, *MEMORY[0x277D5E470], v33);
    v92 = v194;
    LOBYTE(v86) = v194;
    v93 = sub_2676308A4(v85);
    MEMORY[0x28223BE20](v93);
    OUTLINED_FUNCTION_14_20();
    sub_2676A2650(sub_267630B90, v94, v93);
    OUTLINED_FUNCTION_96_1();
    v69 = v192;
    v95 = OUTLINED_FUNCTION_47_4();
    v181(v95);
    v68 = v190;
    (v195)(v92, v188);
    v51 = v187;
    *(v187 + 20) = v86 & 1;
    v96 = v185;
    _os_log_impl(&dword_2675D4000, v185, v184, "#SendMailSceneHostPlan %s recipients has a list operation add recipients? %{BOOL}d, remove recipients? %{BOOL}d", v51, 0x18u);
    __swift_destroy_boxed_opaque_existential_1(v183);
    OUTLINED_FUNCTION_36_10();
    OUTLINED_FUNCTION_2_5();

    v70 = v182;
    LOBYTE(v51) = v197;
  }

  else
  {
    v67 = *(v49 + 8);
    v67(v52, v38);
    v67(v43, v38);

    v68 = *(v196 + 104);
    v69 = (v196 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    OUTLINED_FUNCTION_105_0();
  }

  v192 = v69;
  v68(v37, v70, v33);
  v97 = v200;
  v98 = sub_2676308A4(v200);
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_14_20();
  sub_2676A2650(sub_267630B6C, v99, v98);
  OUTLINED_FUNCTION_96_1();
  v100 = v196 + 8;
  v101 = *(v196 + 8);
  v102 = OUTLINED_FUNCTION_47_4();
  v101(v102);
  v103 = v97;
  if (v51)
  {
    v195 = v37;
    v196 = v100;
    v33 = sub_26762F9DC(v97);
    if (!*(v33 + 16))
    {

      v115 = sub_2676CBE2C();
      v116 = sub_2676CC23C();
      if (OUTLINED_FUNCTION_70_2(v116))
      {
        v117 = OUTLINED_FUNCTION_5_3();
        v203[0] = OUTLINED_FUNCTION_41_1();
        *v117 = 136315138;
        if (v97)
        {
          OUTLINED_FUNCTION_42_5();
          if (v118)
          {
            v120 = 17219;
          }

          else
          {
            v120 = 4408130;
          }

          if (v118)
          {
            v121 = v119;
          }

          else
          {
            v121 = 0xE300000000000000;
          }
        }

        else
        {
          v121 = 0xE200000000000000;
          v120 = 20308;
        }

        v154 = sub_2676B0B84(v120, v121, v203);

        *(v117 + 4) = v154;
        OUTLINED_FUNCTION_54_7();
        _os_log_impl(v155, v156, v157, v158, v159, 0xCu);
        OUTLINED_FUNCTION_43_7();
        OUTLINED_FUNCTION_36_10();
      }

      goto LABEL_76;
    }

    v190 = v68;
    v104 = sub_2676CBE2C();
    v105 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_70_2(v105))
    {
      v106 = OUTLINED_FUNCTION_126();
      v203[0] = OUTLINED_FUNCTION_125_0();
      *v106 = 136315394;
      v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
      v108 = MEMORY[0x26D5FDDD0](v33, v107);
      v110 = sub_2676B0B84(v108, v109, v203);

      *(v106 + 4) = v110;
      *(v106 + 12) = 2080;
      if (v200)
      {
        OUTLINED_FUNCTION_42_5();
        if (v111)
        {
          v113 = 17219;
        }

        else
        {
          v113 = 4408130;
        }

        if (v111)
        {
          v114 = v112;
        }

        else
        {
          v114 = 0xE300000000000000;
        }
      }

      else
      {
        v114 = 0xE200000000000000;
        v113 = 20308;
      }

      v130 = sub_2676B0B84(v113, v114, v203);

      *(v106 + 14) = v130;
      _os_log_impl(&dword_2675D4000, v104, v105, "#SendMailSceneHostPlan Adding these recipients %s to %s", v106, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_36_10();
    }

    swift_getKeyPath();
    v131 = sub_2676A3390(v203);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC658, &qword_2676D45A0);
    OUTLINED_FUNCTION_0_29();
    sub_2676AFE00(v132, v133, MEMORY[0x277D5C7F0]);
    OUTLINED_FUNCTION_1_31();
    sub_2676AFE00(v134, v135, MEMORY[0x277D5C780]);
    v136 = sub_2676CA3DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
    v137 = OUTLINED_FUNCTION_33_4();
    if (__swift_getEnumTagSinglePayload(v137, v138, v139))
    {

      v136(v201, 0);

      (v131)(v203, 0);
      v103 = v200;
    }

    else
    {
      v140 = v200;
      sub_2675DFEE4(v200, v33);

      v136(v201, 0);
      v103 = v140;

      (v131)(v203, 0);
    }

    OUTLINED_FUNCTION_105_0();
    v37 = v195;
    v68 = v190;
  }

  v68(v37, *MEMORY[0x277D5E470], v33);
  v141 = sub_2676308A4(v103);
  MEMORY[0x28223BE20](v141);
  OUTLINED_FUNCTION_14_20();
  v143 = sub_2676A2650(sub_267630B90, v142, v141);

  v144 = OUTLINED_FUNCTION_47_4();
  v101(v144);
  if (v143)
  {
    if (*(sub_267630350(v103) + 16))
    {
      sub_2676A9B64();

      goto LABEL_61;
    }

    v115 = sub_2676CBE2C();
    v148 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_70_2(v148))
    {
      v149 = OUTLINED_FUNCTION_5_3();
      v203[0] = OUTLINED_FUNCTION_41_1();
      *v149 = 136315138;
      if (v103)
      {
        OUTLINED_FUNCTION_42_5();
        if (v150)
        {
          v152 = 17219;
        }

        else
        {
          v152 = 4408130;
        }

        if (v150)
        {
          v153 = v151;
        }

        else
        {
          v153 = 0xE300000000000000;
        }
      }

      else
      {
        v153 = 0xE200000000000000;
        v152 = 20308;
      }

      v160 = sub_2676B0B84(v152, v153, v203);

      *(v149 + 4) = v160;
      OUTLINED_FUNCTION_54_7();
      _os_log_impl(v161, v162, v163, v164, v165, 0xCu);
      OUTLINED_FUNCTION_43_7();
      OUTLINED_FUNCTION_36_10();
    }

LABEL_76:

    v166 = v198;
    v167 = *(v198 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_globals);
    v168 = OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_resolverOverride;
    OUTLINED_FUNCTION_121_0();
    sub_2675F95E4(v166 + v168, v203, &qword_2801CC6A8, &unk_2676CF5F0);
    v202 = 0;
    memset(v201, 0, sizeof(v201));
    v169 = OUTLINED_FUNCTION_49_1();
    v171 = __swift_instantiateConcreteTypeFromMangledNameV2(v169, v170);
    OUTLINED_FUNCTION_7_13(v171);
    v172 = v167;
    OUTLINED_FUNCTION_60_3();
    v203[0] = v173;
    v174 = swift_allocObject();
    *(v174 + 16) = v103;
    *(v174 + 24) = v166;

    v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9F8, &unk_2676CFE90);
    v176 = OUTLINED_FUNCTION_38_5(&qword_2801CDBD8);
    OUTLINED_FUNCTION_23_8();
    sub_2676C942C();

    v203[0] = v171;
    v203[1] = v175;
    v203[2] = v176;
    swift_getOpaqueTypeConformance2();
    v146 = v199;
    v177 = v186;
    sub_2676C975C();
    v178 = OUTLINED_FUNCTION_16_15();
    v179(v178, v177);
    v145 = 0;
    goto LABEL_62;
  }

LABEL_61:
  v145 = 1;
  v146 = v199;
LABEL_62:
  v147 = sub_2676C976C();
  __swift_storeEnumTagSinglePayload(v146, v145, 1, v147);
  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_2676A90A8(uint64_t *a1, int a2, uint64_t a3)
{
  v45 = a3;
  v43 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC968, &unk_2676CFDF0);
  v42 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v48 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - v7;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC940, &unk_2676D4A50);
  v9 = *(v47 - 8);
  v10 = MEMORY[0x28223BE20](v47);
  v46 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v44 = &v38 - v12;
  v55 = sub_2676C8C8C();
  v13 = *(v55 - 1);
  MEMORY[0x28223BE20](v55);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_2676CB14C();
  v16 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v41 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = *(*a1 + 16);
  v20 = MEMORY[0x277D84F90];
  if (v19)
  {
    v38 = v9;
    v39 = v8;
    v40 = v4;
    v56 = MEMORY[0x277D84F90];
    sub_2676C27D0(0, v19, 0);
    v21 = v56;
    v23 = *(v13 + 16);
    v22 = v13 + 16;
    v24 = v18 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
    v51 = *(v22 + 56);
    v52 = v23;
    v53 = v22;
    v49 = v16 + 32;
    v50 = (v22 - 8);
    v25 = v41;
    do
    {
      v26 = v55;
      v52(v15, v24, v55);
      sub_2676C8C1C();
      sub_2676C8C4C();
      sub_2676CB11C();
      (*v50)(v15, v26);
      v56 = v21;
      v28 = *(v21 + 16);
      v27 = *(v21 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_2676C27D0((v27 > 1), v28 + 1, 1);
        v25 = v41;
        v21 = v56;
      }

      *(v21 + 16) = v28 + 1;
      (*(v16 + 32))(v21 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v28, v25, v54);
      v24 += v51;
      --v19;
    }

    while (v19);
    v20 = v21;
    v8 = v39;
    v4 = v40;
    v9 = v38;
  }

  v29 = v44;
  sub_26761F9A8();
  v30 = (v9 + 8);
  v55 = (v42 + 8);
  swift_getKeyPath();
  v31 = v47;
  sub_2676C97EC();

  v32 = *v30;
  (*v30)(v29, v31);
  v33 = v46;
  sub_26761F9A8();
  swift_getKeyPath();
  v34 = v48;
  sub_2676C97EC();

  v32(v33, v31);
  v35 = sub_2676A239C();
  v36 = *v55;
  (*v55)(v34, v4);
  v56 = v35;
  sub_2676A1FCC(v20, sub_2675E0534, MEMORY[0x277D5CA58]);
  sub_2676C984C();

  return v36(v8, v4);
}

uint64_t sub_2676A9614(uint64_t *a1, int a2, uint64_t a3)
{
  v46 = a3;
  v44 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC968, &unk_2676CFDF0);
  v43 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v49 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - v7;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC940, &unk_2676D4A50);
  v9 = *(v48 - 8);
  v10 = MEMORY[0x28223BE20](v48);
  v47 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v45 = &v39 - v12;
  v56 = sub_2676C8C8C();
  v13 = *(v56 - 1);
  MEMORY[0x28223BE20](v56);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_2676CB14C();
  v16 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v42 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = *(*a1 + 16);
  v20 = MEMORY[0x277D84F90];
  if (v19)
  {
    v39 = v9;
    v40 = v8;
    v41 = v4;
    v57 = MEMORY[0x277D84F90];
    sub_2676C27D0(0, v19, 0);
    v21 = v57;
    v23 = *(v13 + 16);
    v22 = v13 + 16;
    v24 = v18 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
    v52 = *(v22 + 56);
    v53 = v23;
    v54 = v22;
    v50 = v16 + 32;
    v51 = (v22 - 8);
    v25 = v42;
    do
    {
      v26 = v56;
      v53(v15, v24, v56);
      sub_2676C8C1C();
      sub_2676C8C4C();
      sub_2676CB11C();
      (*v51)(v15, v26);
      v57 = v21;
      v28 = *(v21 + 16);
      v27 = *(v21 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_2676C27D0((v27 > 1), v28 + 1, 1);
        v25 = v42;
        v21 = v57;
      }

      *(v21 + 16) = v28 + 1;
      (*(v16 + 32))(v21 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v28, v25, v55);
      v24 += v52;
      --v19;
    }

    while (v19);
    v20 = v21;
    v8 = v40;
    v4 = v41;
    v9 = v39;
  }

  v29 = v45;
  sub_26761F9A8();
  v30 = (v9 + 8);
  v56 = (v43 + 8);
  swift_getKeyPath();
  v31 = v48;
  sub_2676C97EC();

  v32 = *v30;
  (*v30)(v29, v31);
  v33 = v47;
  sub_26761F9A8();
  swift_getKeyPath();
  v34 = v49;
  sub_2676C97EC();

  v32(v33, v31);
  v35 = sub_2676A239C();
  v36 = *v56;
  (*v56)(v34, v4);
  v37 = sub_2675DEEA4(v20, v35);

  v57 = v37;
  sub_2676C984C();

  return v36(v8, v4);
}

void sub_2676A9B64()
{
  OUTLINED_FUNCTION_21_1();
  v103 = v0;
  v3 = v2;
  LODWORD(v5) = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC068, &unk_2676D4E00);
  OUTLINED_FUNCTION_4_1(v6);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_50_3();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
  OUTLINED_FUNCTION_3();
  v104 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4();
  v110 = v11;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v100[-v13];
  if (qword_2801CBAA0 != -1)
  {
LABEL_55:
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v111 = v14;
  v15 = sub_2676CBE4C();
  OUTLINED_FUNCTION_24_2(v15, qword_2801CDC90);

  v16 = sub_2676CBE2C();
  v17 = sub_2676CC23C();

  v18 = os_log_type_enabled(v16, v17);
  v101 = v5;
  if (v18)
  {
    v19 = v1;
    v20 = OUTLINED_FUNCTION_126();
    v113[0] = OUTLINED_FUNCTION_125_0();
    *v20 = 136315394;
    v21 = v3;
    v22 = MEMORY[0x26D5FDDD0](v3, v8);
    v24 = sub_2676B0B84(v22, v23, v113);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    if (v5)
    {
      OUTLINED_FUNCTION_42_5();
      if (v25)
      {
        v27 = 17219;
      }

      else
      {
        v27 = 4408130;
      }

      if (v25)
      {
        v28 = v26;
      }

      else
      {
        v28 = 0xE300000000000000;
      }
    }

    else
    {
      v28 = 0xE200000000000000;
      v27 = 20308;
    }

    v29 = sub_2676B0B84(v27, v28, v113);

    *(v20 + 14) = v29;
    OUTLINED_FUNCTION_54_7();
    _os_log_impl(v30, v31, v32, v33, v34, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_36_10();

    v3 = v21;
    v1 = v19;
  }

  else
  {
  }

  v5 = *(v3 + 16);
  v35 = MEMORY[0x277D84F90];
  v112 = v8;
  v102 = v3;
  if (v5)
  {
    v113[0] = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_93_1();
    v36 = *(v104 + 16);
    v35 = v113[0];
    v37 = v3 + ((*(v104 + 80) + 32) & ~*(v104 + 80));
    v106 = *(v104 + 72);
    v107 = v36;
    v108 = v104 + 16;
    v109 = v5;
    v105 = (v104 + 8);
    v38 = v5;
    do
    {
      v39 = v111;
      v107(v111, v37, v8);
      swift_getKeyPath();
      OUTLINED_FUNCTION_11_29();
      sub_2676AFE00(&qword_2801CBF70, v40, MEMORY[0x277D5C6A8]);
      sub_2676AFE00(&qword_2801CC2D0, MEMORY[0x277D5C640], MEMORY[0x277D5C618]);
      sub_2676CA87C();

      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
      OUTLINED_FUNCTION_39_6(v1);
      if (v25)
      {
        (*v105)(v39, v8);
        sub_267662EC4(v1, &qword_2801CC068, &unk_2676D4E00);
        v42 = 0;
        v44 = 0;
      }

      else
      {
        swift_getKeyPath();
        OUTLINED_FUNCTION_59_4();
        v42 = sub_2676CA89C();
        v44 = v43;

        (*v105)(v39, v8);
        OUTLINED_FUNCTION_14_2();
        (*(v45 + 8))(v1, v41);
      }

      v113[0] = v35;
      v47 = *(v35 + 16);
      v46 = *(v35 + 24);
      v48 = v47 + 1;
      v5 = v109;
      if (v47 >= v46 >> 1)
      {
        v50 = OUTLINED_FUNCTION_23_1(v46);
        sub_2676C2B08(v50, v47 + 1, 1);
        v35 = v113[0];
      }

      *(v35 + 16) = v48;
      v49 = v35 + 16 * v47;
      *(v49 + 32) = v42;
      *(v49 + 40) = v44;
      v37 += v106;
      --v38;
      v8 = v112;
    }

    while (v38);
  }

  else
  {
    v48 = *(MEMORY[0x277D84F90] + 16);
  }

  v3 = 0;
  v8 = MEMORY[0x277D84F90];
  v14 = MEMORY[0x277D84F90];
LABEL_24:
  v51 = 16 * v3 + 40;
  while (v48 != v3)
  {
    if (v3 >= *(v35 + 16))
    {
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    ++v3;
    v52 = v51 + 16;
    v53 = *(v35 + v51);
    v51 += 16;
    if (v53)
    {
      v54 = *(v35 + v52 - 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26760719C(0, *(v14 + 2) + 1, 1, v14);
        v14 = v57;
      }

      v1 = *(v14 + 2);
      v55 = *(v14 + 3);
      if (v1 >= v55 >> 1)
      {
        v58 = OUTLINED_FUNCTION_23_1(v55);
        sub_26760719C(v58, v1 + 1, 1, v14);
        v14 = v59;
      }

      *(v14 + 2) = v1 + 1;
      v56 = &v14[16 * v1];
      *(v56 + 4) = v54;
      *(v56 + 5) = v53;
      goto LABEL_24;
    }
  }

  v60 = sub_2676A1BFC(v14);
  v61 = v60;
  if (v5)
  {
    v107 = v60;
    v113[0] = v8;
    OUTLINED_FUNCTION_93_1();
    v8 = v113[0];
    v111 = *(v104 + 16);
    v62 = v102 + ((*(v104 + 80) + 32) & ~*(v104 + 80));
    v108 = *(v104 + 72);
    v63 = (v104 + 8);
    do
    {
      v64 = v110;
      v65 = OUTLINED_FUNCTION_38_0();
      v66 = v112;
      v67(v65);
      swift_getKeyPath();
      OUTLINED_FUNCTION_11_29();
      sub_2676AFE00(&qword_2801CBF70, v68, MEMORY[0x277D5C6A8]);
      v69 = sub_2676CA89C();
      v1 = v70;

      (*v63)(v64, v66);
      v113[0] = v8;
      v72 = *(v8 + 16);
      v71 = *(v8 + 24);
      v14 = (v72 + 1);
      if (v72 >= v71 >> 1)
      {
        v74 = OUTLINED_FUNCTION_23_1(v71);
        sub_2676C2B08(v74, v72 + 1, 1);
        v8 = v113[0];
      }

      *(v8 + 16) = v14;
      v73 = v8 + 16 * v72;
      *(v73 + 32) = v69;
      *(v73 + 40) = v1;
      v62 += v108;
      --v5;
    }

    while (v5);
    v61 = v107;
  }

  else
  {
    v14 = *(v8 + 16);
  }

  v3 = 0;
  v75 = MEMORY[0x277D84F90];
LABEL_41:
  v76 = 16 * v3 + 40;
  while (v14 != v3)
  {
    if (v3 >= *(v8 + 16))
    {
      goto LABEL_54;
    }

    ++v3;
    v77 = v76 + 16;
    v78 = *(v8 + v76);
    v76 += 16;
    if (v78)
    {
      v79 = *(v8 + v77 - 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26760719C(0, *(v75 + 16) + 1, 1, v75);
        v75 = v83;
      }

      v81 = *(v75 + 16);
      v80 = *(v75 + 24);
      v5 = v81 + 1;
      if (v81 >= v80 >> 1)
      {
        v84 = OUTLINED_FUNCTION_23_1(v80);
        sub_26760719C(v84, v81 + 1, 1, v75);
        v75 = v85;
      }

      *(v75 + 16) = v5;
      v82 = v75 + 16 * v81;
      *(v82 + 32) = v79;
      *(v82 + 40) = v78;
      goto LABEL_41;
    }
  }

  v86 = sub_2676A1BFC(v75);
  swift_getKeyPath();
  v87 = sub_2676A3390(v113);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC658, &qword_2676D45A0);
  OUTLINED_FUNCTION_0_29();
  sub_2676AFE00(v88, v89, MEMORY[0x277D5C7F0]);
  OUTLINED_FUNCTION_1_31();
  sub_2676AFE00(v90, v91, MEMORY[0x277D5C780]);
  v92 = sub_2676CA3DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
  v93 = OUTLINED_FUNCTION_33_4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v93, v94, v95);
  if (!EnumTagSinglePayload)
  {
    MEMORY[0x28223BE20](EnumTagSinglePayload);
    *&v100[-32] = v61;
    v97 = v101;
    v100[-24] = v101;
    *&v100[-16] = v86;
    sub_2675E0008(v97);
  }

  v98 = OUTLINED_FUNCTION_29_9();
  v92(v98);

  v99 = OUTLINED_FUNCTION_30_8();
  (v87)(v99);
  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_2676AA448(uint64_t a1, void *a2, int a3, void *a4)
{
  HIDWORD(v35) = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC068, &unk_2676D4E00);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v35 - v7;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
  sub_2676AFE00(&qword_2801CBF70, MEMORY[0x277D5C6D0], MEMORY[0x277D5C6A8]);
  sub_2676AFE00(&qword_2801CC2D0, MEMORY[0x277D5C640], MEMORY[0x277D5C618]);
  sub_2676CA87C();

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_267662EC4(v8, &qword_2801CC068, &unk_2676D4E00);
    goto LABEL_16;
  }

  swift_getKeyPath();
  v10 = sub_2676CA89C();
  v12 = v11;

  (*(*(v9 - 8) + 8))(v8, v9);
  if (!v12)
  {
LABEL_16:
    swift_getKeyPath();
    v21 = sub_2676CA89C();
    v23 = v22;

    if (v23)
    {
      if (sub_2676A1CB8(v21, v23, a4))
      {
        if (qword_2801CBAA0 != -1)
        {
          swift_once();
        }

        v24 = sub_2676CBE4C();
        __swift_project_value_buffer(v24, qword_2801CDC90);

        v15 = sub_2676CBE2C();
        v25 = sub_2676CC23C();

        if (os_log_type_enabled(v15, v25))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v36 = v18;
          *v17 = 136315394;
          if (BYTE4(v35))
          {
            if (BYTE4(v35) == 1)
            {
              v26 = 17219;
            }

            else
            {
              v26 = 4408130;
            }

            if (BYTE4(v35) == 1)
            {
              v27 = 0xE200000000000000;
            }

            else
            {
              v27 = 0xE300000000000000;
            }
          }

          else
          {
            v27 = 0xE200000000000000;
            v26 = 20308;
          }

          v29 = sub_2676B0B84(v26, v27, &v36);

          *(v17 + 4) = v29;
          *(v17 + 12) = 2080;
          v30 = sub_2676B0B84(v21, v23, &v36);

          *(v17 + 14) = v30;
          v31 = "#SendMailSceneHostPlan Removing %s recipient with name %s";
          v32 = v25;
LABEL_35:
          _os_log_impl(&dword_2675D4000, v15, v32, v31, v17, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D5FEA80](v18, -1, -1);
          MEMORY[0x26D5FEA80](v17, -1, -1);
          goto LABEL_36;
        }

        goto LABEL_30;
      }
    }

    return 0;
  }

  if (!sub_2676A1CB8(v10, v12, a2))
  {

    goto LABEL_16;
  }

  v13 = v10;
  if (qword_2801CBAA0 != -1)
  {
    swift_once();
  }

  v14 = sub_2676CBE4C();
  __swift_project_value_buffer(v14, qword_2801CDC90);

  v15 = sub_2676CBE2C();
  v16 = sub_2676CC23C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v36 = v18;
    *v17 = 136315394;
    if (BYTE4(v35))
    {
      if (BYTE4(v35) == 1)
      {
        v19 = 17219;
      }

      else
      {
        v19 = 4408130;
      }

      if (BYTE4(v35) == 1)
      {
        v20 = 0xE200000000000000;
      }

      else
      {
        v20 = 0xE300000000000000;
      }
    }

    else
    {
      v20 = 0xE200000000000000;
      v19 = 20308;
    }

    v33 = sub_2676B0B84(v19, v20, &v36);

    *(v17 + 4) = v33;
    *(v17 + 12) = 2080;
    v34 = sub_2676B0B84(v13, v12, &v36);

    *(v17 + 14) = v34;
    v31 = "#SendMailSceneHostPlan Removing %s recipient with email %s";
    v32 = v16;
    goto LABEL_35;
  }

LABEL_30:

LABEL_36:

  return 1;
}

void sub_2676AA9A4()
{
  OUTLINED_FUNCTION_21_1();
  v2 = v0;
  v42 = v3;
  v4 = sub_2676CB48C();
  v5 = OUTLINED_FUNCTION_4_1(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_5();
  v43 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD3B8, &unk_2676D3E60);
  OUTLINED_FUNCTION_4_1(v7);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_9_1();
  v44 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD3C0, &unk_2676D4DF0);
  OUTLINED_FUNCTION_3();
  v40 = v11;
  v41 = v10;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_50_3();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  OUTLINED_FUNCTION_4_1(v13);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_9_1();
  v45 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC658, &qword_2676D45A0);
  OUTLINED_FUNCTION_3();
  v18 = v17;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v19);
  v21 = &v40 - v20;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v22 = sub_2676CBE4C();
  OUTLINED_FUNCTION_24_2(v22, qword_2801CDC90);
  v23 = sub_2676CBE2C();
  v24 = sub_2676CC23C();
  if (OUTLINED_FUNCTION_5_7(v24))
  {
    v25 = OUTLINED_FUNCTION_17_3();
    *v25 = 0;
    _os_log_impl(&dword_2675D4000, v23, v24, "#SendMailSceneHostPlan making ConfirmationPrompt", v25, 2u);
    OUTLINED_FUNCTION_2_5();
  }

  swift_getKeyPath();
  sub_2676A31D8();
  OUTLINED_FUNCTION_0_29();
  sub_2676AFE00(v26, v27, MEMORY[0x277D5C7F0]);
  OUTLINED_FUNCTION_1_31();
  sub_2676AFE00(v28, v29, MEMORY[0x277D5C780]);
  sub_2676CA3EC();

  (*(v18 + 8))(v21, v16);
  sub_2676CBA1C();
  sub_2676C98BC();
  swift_getKeyPath();
  v30 = v41;
  sub_2676C988C();

  (*(v40 + 8))(v1, v30);
  v31 = *(v2 + OBJC_IVAR____TtC16SiriMailInternal21SendMailSceneHostPlan_confirmIntentOptions);
  v32 = type metadata accessor for ConfirmSendSceneHostProducer(0);
  v49[3] = v32;
  v49[4] = sub_2676AFE00(&qword_2801CD2D0, type metadata accessor for ConfirmSendSceneHostProducer, &unk_2676CD978);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v49);
  v34 = *(v32 + 24);
  sub_2676CB18C();
  OUTLINED_FUNCTION_2_6();
  (*(v35 + 16))(boxed_opaque_existential_1 + v34, v42);
  LOBYTE(v30) = SendMailSceneHostPlan.isSnippetInFocus.getter();
  type metadata accessor for SendMailCATsSimple(0);
  sub_2676CB47C();
  v36 = sub_2676CB42C();
  boxed_opaque_existential_1[1] = v31;
  *(boxed_opaque_existential_1 + *(v32 + 28)) = v30 & 1;
  *boxed_opaque_existential_1 = v36;
  v37 = sub_2676C9B9C();
  OUTLINED_FUNCTION_7_13(v37);
  v38 = sub_2676C9B8C();
  v47 = v37;
  v48 = MEMORY[0x277D5BD58];
  v46 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDBC0, &qword_2676D48C0);
  OUTLINED_FUNCTION_7_13(v39);
  sub_2676C9BEC();
  OUTLINED_FUNCTION_20_1();
}

uint64_t SendMailSceneHostPlan.isSnippetInFocus.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_54_5();
  sub_26761F970();
  sub_2676C97FC();
  v1 = OUTLINED_FUNCTION_58_1();
  v2(v1);
  return v4 & 1;
}

uint64_t sub_2676AAF08()
{
  v1 = OBJC_IVAR____TtC16SiriMailInternal21SendMailSceneHostPlan__sendMessageTask;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC720, &qword_2676CF7D0);
  OUTLINED_FUNCTION_8_2();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

uint64_t SendMailSceneHostPlan.deinit()
{
  v0 = MailSendingSceneHostPlan.deinit();
  v1 = OBJC_IVAR____TtC16SiriMailInternal21SendMailSceneHostPlan__sendMessageTask;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC720, &qword_2676CF7D0);
  OUTLINED_FUNCTION_8_2();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t SendMailSceneHostPlan.__deallocating_deinit()
{
  v0 = MailSendingSceneHostPlan.deinit();
  v1 = OBJC_IVAR____TtC16SiriMailInternal21SendMailSceneHostPlan__sendMessageTask;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC720, &qword_2676CF7D0);
  OUTLINED_FUNCTION_8_2();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_2676AB0A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SendMailSceneHostPlan(0);

  return sub_2676C950C();
}

uint64_t sub_2676AB114(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821BA568](a1, WitnessTable);
}

void SendMailSceneHostPlan.snippet.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21_1();
  v169 = v22;
  v23 = type metadata accessor for MailSceneHostStateChangeEventHandler(0);
  v24 = *(v23 - 8);
  v164 = (v23 - 8);
  v168 = v24;
  v167 = *(v24 + 64);
  MEMORY[0x28223BE20](v23 - 8);
  OUTLINED_FUNCTION_11_5(v156 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v27);
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC980, &unk_2676CFE10);
  OUTLINED_FUNCTION_3();
  v165 = v28;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v30);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDB68, &qword_2676D4B60);
  OUTLINED_FUNCTION_3();
  v158 = v31;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v33);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
  OUTLINED_FUNCTION_3();
  v161 = v34;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v36);
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8C8, &unk_2676D1C40);
  OUTLINED_FUNCTION_3();
  v159 = v37;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_4();
  v172 = v39;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_24_1();
  v183 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC978, &unk_2676CFE00);
  OUTLINED_FUNCTION_3();
  v176 = v43;
  v177 = v42;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_4();
  v170 = v44;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_24_1();
  v182 = v46;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
  OUTLINED_FUNCTION_3();
  v175 = v47;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_4();
  v188 = v49;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_10_4();
  v187 = v51;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_10_4();
  v181 = v53;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_24_1();
  v180 = v55;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC968, &unk_2676CFDF0);
  OUTLINED_FUNCTION_3();
  v174 = v56;
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_4();
  v186 = v58;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_10_4();
  v185 = v60;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_10_4();
  v184 = v62;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_10_4();
  v179 = v64;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_10_4();
  v178 = v66;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v67);
  v156[12] = v156 - v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC940, &unk_2676D4A50);
  OUTLINED_FUNCTION_3();
  v71 = v70;
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  v83 = MEMORY[0x28223BE20](v82);
  v85 = v156 - v84;
  v86 = MEMORY[0x28223BE20](v83);
  v88 = v156 - v87;
  v89 = MEMORY[0x28223BE20](v86);
  v91 = v156 - v90;
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_78_4();
  sub_26761F9A8();
  swift_getKeyPath();
  sub_2676C97EC();

  v92 = *(v71 + 8);
  v92(v21, v69);
  sub_26761F9A8();
  swift_getKeyPath();
  sub_2676C97EC();

  v92(v91, v69);
  v93 = v20;
  sub_26761F9A8();
  swift_getKeyPath();
  sub_2676C97EC();

  v92(v88, v69);
  sub_26761F9A8();
  KeyPath = swift_getKeyPath();
  sub_2676C97EC();

  v92(v85, v69);
  OUTLINED_FUNCTION_34_7();
  sub_26761F9A8();
  swift_getKeyPath();
  sub_2676C97EC();

  v92(KeyPath, v69);
  OUTLINED_FUNCTION_34_7();
  sub_26761F9A8();
  swift_getKeyPath();
  sub_2676C97EC();

  v92(KeyPath, v69);
  OUTLINED_FUNCTION_23_8();
  sub_26761F9A8();
  v95 = swift_getKeyPath();
  OUTLINED_FUNCTION_58_2(v95);

  v96 = OUTLINED_FUNCTION_85_0();
  (v92)(v96);
  OUTLINED_FUNCTION_23_8();
  sub_26761F9A8();
  v97 = swift_getKeyPath();
  OUTLINED_FUNCTION_58_2(v97);

  v98 = OUTLINED_FUNCTION_85_0();
  (v92)(v98);
  OUTLINED_FUNCTION_23_8();
  sub_26761F9A8();
  v99 = swift_getKeyPath();
  OUTLINED_FUNCTION_58_2(v99);

  v100 = OUTLINED_FUNCTION_85_0();
  (v92)(v100);
  OUTLINED_FUNCTION_23_8();
  sub_26761F9A8();
  v101 = swift_getKeyPath();
  OUTLINED_FUNCTION_58_2(v101);

  v102 = OUTLINED_FUNCTION_85_0();
  (v92)(v102);
  OUTLINED_FUNCTION_23_8();
  sub_26761F9A8();
  v103 = swift_getKeyPath();
  OUTLINED_FUNCTION_58_2(v103);

  v104 = OUTLINED_FUNCTION_85_0();
  (v92)(v104);
  OUTLINED_FUNCTION_23_8();
  sub_26761F9A8();
  v105 = swift_getKeyPath();
  OUTLINED_FUNCTION_58_2(v105);

  v106 = OUTLINED_FUNCTION_85_0();
  (v92)(v106);
  OUTLINED_FUNCTION_23_8();
  sub_26761F9A8();
  v107 = swift_getKeyPath();
  v108 = v170;
  OUTLINED_FUNCTION_58_2(v107);

  v109 = OUTLINED_FUNCTION_85_0();
  (v92)(v109);
  OUTLINED_FUNCTION_23_8();
  sub_26761F9A8();
  v110 = swift_getKeyPath();
  v111 = v172;
  OUTLINED_FUNCTION_58_2(v110);

  v112 = OUTLINED_FUNCTION_85_0();
  (v92)(v112);
  OUTLINED_FUNCTION_43_3();
  sub_26761F970();
  OUTLINED_FUNCTION_23_8();
  sub_2676A34F8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_29();
  sub_2676AFE00(v113, v114, MEMORY[0x277D5C7F0]);
  OUTLINED_FUNCTION_1_31();
  sub_2676AFE00(v115, v116, MEMORY[0x277D5C780]);
  OUTLINED_FUNCTION_51_2();
  v117 = v157;
  sub_2676C9A2C();

  v118 = OUTLINED_FUNCTION_16_15();
  v119(v118, v117);
  v120 = *(v174 + 16);
  v121 = v162;
  v122 = v171;
  v120(v162, v184, v171);
  v123 = v164;
  v120(v121 + v164[7], v185, v122);
  v120(v121 + v123[8], v186, v122);
  v124 = *(v175 + 16);
  v125 = v173;
  v124(v121 + v123[9], v187, v173);
  v124(v121 + v123[10], v188, v125);
  v126 = OUTLINED_FUNCTION_73_1(v123[11]);
  v127(v126, v108);
  v128 = v159;
  v129 = OUTLINED_FUNCTION_73_1(v123[12]);
  v130 = v160;
  v131(v129, v111, v160);
  v132 = v123[13];
  v133 = v123;
  v134 = v165;
  v135 = OUTLINED_FUNCTION_73_1(v132);
  v136 = v166;
  v137(v135, v93, v166);
  v138 = OUTLINED_FUNCTION_73_1(v133[14]);
  v139(v138, v92, v163);
  v140 = type metadata accessor for MetricsSnippetEventHandler(0);
  v141 = OUTLINED_FUNCTION_7_13(v140);
  swift_defaultActor_initialize();
  sub_2676C958C();
  (*(v134 + 8))(v93, v136);
  v142 = OUTLINED_FUNCTION_14_3();
  v143(v142);
  (*(v128 + 8))(v172, v130);
  (*(v176 + 8))(v170, v177);
  v144 = *(v175 + 8);
  v145 = v173;
  v144(v188, v173);
  v144(v187, v145);
  v147 = v174 + 8;
  v146 = *(v174 + 8);
  v148 = v171;
  v146(v186, v171);
  v146(v185, v148);
  v146(v184, v148);
  OUTLINED_FUNCTION_105_0();
  sub_26766B0E4(v149, v147);
  v150 = (*(v168 + 80) + 16) & ~*(v168 + 80);
  v151 = (v167 + v150 + 7) & 0xFFFFFFFFFFFFFFF8;
  v152 = swift_allocObject();
  sub_26766B0E4(v147, v152 + v150);
  *(v152 + v151) = v141;
  v188 = sub_2676C916C();
  sub_2676CAFDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9A0, &unk_2676D22B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9B0, &unk_2676CFE50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9C0, &unk_2676D22C0);
  sub_2676CB0DC();
  sub_2676CB18C();
  sub_2676AFE00(&qword_2801CD1E0, MEMORY[0x277D5C900], MEMORY[0x277D5C8F0]);
  v153 = MEMORY[0x277D5C970];
  sub_2676AFE00(&qword_2801CD1E8, MEMORY[0x277D5C970], MEMORY[0x277D5C980]);
  sub_2676AFE00(&qword_2801CD1F0, v153, MEMORY[0x277D5C978]);
  OUTLINED_FUNCTION_12_18();
  sub_2676AFE00(v154, v155, MEMORY[0x277D5CA90]);
  sub_2676C9BBC();
  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_2676AC1EC()
{
  OUTLINED_FUNCTION_12_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_63_4(v1);

  return sub_2676A5AD0(v3, v4, v5);
}

uint64_t sub_2676AC288()
{
  OUTLINED_FUNCTION_12_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_63_4(v1);

  return sub_2676A6158(v3, v4, v5);
}

void sub_2676AC31C()
{
  v2 = OUTLINED_FUNCTION_116_0();
  v3 = type metadata accessor for MailSceneHostStateChangeEventHandler(v2);
  OUTLINED_FUNCTION_1_0(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_2676B2964(v0, v1 + v8, v9);
}

uint64_t type metadata accessor for SendMailSceneHostPlan(uint64_t a1)
{
  result = qword_2801CDC30;
  if (!qword_2801CDC30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2676AC584(uint64_t a1)
{
  sub_267697368(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

BOOL sub_2676AC6B4(char *a1, char *a2)
{
  v22 = a1;
  v4 = sub_2676C8C8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v8 = *v2;
  sub_2676AFE00(&qword_2801CBF50, MEMORY[0x277CBA2E0], MEMORY[0x277CBA2E8]);
  v27 = a2;
  v9 = sub_2676CBF0C();
  v24 = v8;
  v25 = v8 + 56;
  v10 = ~(-1 << *(v8 + 32));
  v26 = v5 + 16;
  v23 = v5 + 8;
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v25 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      v17 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v27;
      (*(v5 + 16))(v7, v27, v4);
      v28 = *v17;
      sub_2676ADFFC(v7, v11, isUniquelyReferenced_nonNull_native);
      *v17 = v28;
      (*(v5 + 32))(v22, v19, v4);
      return v12 == 0;
    }

    v13 = *(v5 + 72) * v11;
    v14 = *(v5 + 16);
    v14(v7, *(v24 + 48) + v13, v4);
    sub_2676AFE00(&qword_2801CBF58, MEMORY[0x277CBA2E0], MEMORY[0x277CBA2F0]);
    v15 = sub_2676CBF1C();
    v16 = *(v5 + 8);
    v16(v7, v4);
    if (v15)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16(v27, v4);
  v14(v22, *(v24 + 48) + v13, v4);
  return v12 == 0;
}

BOOL sub_2676AC97C(char *a1, char *a2)
{
  v22 = a1;
  v4 = sub_2676CB14C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v8 = *v2;
  sub_2676AFE00(&qword_2801CBF40, MEMORY[0x277D5CA58], MEMORY[0x277D5CA60]);
  v27 = a2;
  v9 = sub_2676CBF0C();
  v24 = v8;
  v25 = v8 + 56;
  v10 = ~(-1 << *(v8 + 32));
  v26 = v5 + 16;
  v23 = v5 + 8;
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v25 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      v17 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v27;
      (*(v5 + 16))(v7, v27, v4);
      v28 = *v17;
      sub_2676AE2AC(v7, v11, isUniquelyReferenced_nonNull_native);
      *v17 = v28;
      (*(v5 + 32))(v22, v19, v4);
      return v12 == 0;
    }

    v13 = *(v5 + 72) * v11;
    v14 = *(v5 + 16);
    v14(v7, *(v24 + 48) + v13, v4);
    sub_2676AFE00(&qword_2801CBF48, MEMORY[0x277D5CA58], MEMORY[0x277D5CA68]);
    v15 = sub_2676CBF1C();
    v16 = *(v5 + 8);
    v16(v7, v4);
    if (v15)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16(v27, v4);
  v14(v22, *(v24 + 48) + v13, v4);
  return v12 == 0;
}

void sub_2676ACC44()
{
  OUTLINED_FUNCTION_21_1();
  v2 = v1;
  v27 = v3;
  v4 = sub_2676CAABC();
  OUTLINED_FUNCTION_3();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_2();
  v10 = v9 - v8;
  v26 = v0;
  v11 = *v0;
  OUTLINED_FUNCTION_30_10();
  sub_2676AFE00(v12, v13, MEMORY[0x277D56028]);
  sub_2676CBF0C();
  v28 = v11;
  v29 = v11 + 56;
  OUTLINED_FUNCTION_104_1();
  v16 = ~v15;
  while (1)
  {
    v17 = v14 & v16;
    if (((1 << (v14 & v16)) & *(v29 + (((v14 & v16) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_113_0();
      v24();
      v30 = *v26;
      sub_2676AE55C(v10, v17, isUniquelyReferenced_nonNull_native);
      *v26 = v30;
      OUTLINED_FUNCTION_113_0();
      v25();
      goto LABEL_7;
    }

    v18 = v6[9] * v17;
    v19 = v6[2];
    v19(v10, *(v28 + 48) + v18, v4);
    OUTLINED_FUNCTION_30_10();
    sub_2676AFE00(&qword_2801CDC70, v20, MEMORY[0x277D56030]);
    v21 = sub_2676CBF1C();
    v22 = v6[1];
    v22(v10, v4);
    if (v21)
    {
      break;
    }

    v14 = v17 + 1;
  }

  v22(v2, v4);
  v19(v27, *(v28 + 48) + v18, v4);
LABEL_7:
  OUTLINED_FUNCTION_20_1();
}

BOOL sub_2676ACEBC(uint64_t a1)
{
  OUTLINED_FUNCTION_70_3(a1);
  OUTLINED_FUNCTION_91_2();
  sub_2676CBFFC();
  sub_2676CC67C();
  OUTLINED_FUNCTION_104_1();
  v8 = ~v7;
  while (1)
  {
    v9 = v6 & v8;
    v10 = (1 << (v6 & v8)) & *(v5 + 56 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      break;
    }

    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == v4 && v11[1] == v2;
    if (v12 || (sub_2676CC59C() & 1) != 0)
    {

      v13 = (*(v5 + 48) + 16 * v9);
      v14 = v13[1];
      *v1 = *v13;
      v1[1] = v14;

      return v10 == 0;
    }

    v6 = v9 + 1;
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_123_0();
  v15 = OUTLINED_FUNCTION_58_4();
  sub_2676AE80C(v15, v16, v9, v5);
  *v3 = v18;
  *v1 = v4;
  v1[1] = v2;
  return v10 == 0;
}

uint64_t sub_2676ACFD0(uint64_t a1)
{
  OUTLINED_FUNCTION_70_3(a1);
  sub_2676CC66C();
  if (v2)
  {
    OUTLINED_FUNCTION_91_2();
    sub_2676CBFFC();
  }

  sub_2676CC67C();
  OUTLINED_FUNCTION_104_1();
  v8 = v7 & ~v6;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_15:
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_123_0();
    v14 = OUTLINED_FUNCTION_58_4();
    sub_2676AE974(v14, v15, v8, v5);
    *v3 = v17;
    *v1 = v4;
    v1[1] = v2;
    return 1;
  }

  v9 = ~v6;
  v10 = *(v5 + 48);
  while (1)
  {
    v11 = (v10 + 16 * v8);
    v12 = v11[1];
    if (v12)
    {
      break;
    }

    if (!v2)
    {
      goto LABEL_17;
    }

LABEL_14:
    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if (!v2)
  {
    goto LABEL_14;
  }

  v13 = *v11 == v4 && v12 == v2;
  if (!v13 && (sub_2676CC59C() & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_17:
  *v1 = *(*(v5 + 48) + 16 * v8);

  return 0;
}

uint64_t sub_2676AD120(uint64_t a1)
{
  v2 = v1;
  v36 = sub_2676C8C8C();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDC60, &qword_2676D4EF8);
  result = sub_2676CC3DC();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_2676AEB30(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_2676AFE00(&qword_2801CBF50, MEMORY[0x277CBA2E0], MEMORY[0x277CBA2E8]);
    result = sub_2676CBF0C();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_2676AD478(uint64_t a1)
{
  v2 = v1;
  v36 = sub_2676CB14C();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDC50, &unk_2676D4ED8);
  result = sub_2676CC3DC();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_2676AEB30(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_2676AFE00(&qword_2801CBF40, MEMORY[0x277D5CA58], MEMORY[0x277D5CA60]);
    result = sub_2676CBF0C();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_2676AD7D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDC40, &qword_2676D4EA8);
  result = sub_2676CC3DC();
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
      sub_2676AEB30(0, (v28 + 63) >> 6, v3 + 56);
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
    sub_2676CC64C();
    sub_2676CBFFC();
    result = sub_2676CC67C();
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

uint64_t sub_2676ADA2C(uint64_t a1)
{
  v2 = v1;
  v36 = sub_2676CAABC();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDC78, &unk_2676D4F00);
  result = sub_2676CC3DC();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_2676AEB30(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_2676AFE00(&qword_2801CDC68, MEMORY[0x277D56020], MEMORY[0x277D56028]);
    result = sub_2676CBF0C();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_2676ADD84(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDC88, &qword_2676D4FE8);
  result = sub_2676CC3DC();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

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
        goto LABEL_31;
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
      sub_2676AEB30(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v18 = *v16;
    v17 = v16[1];
    sub_2676CC64C();
    sub_2676CC66C();
    if (v17)
    {
      sub_2676CBFFC();
    }

    result = sub_2676CC67C();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v18;
    v27[1] = v17;
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
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2676ADFFC(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_2676C8C8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_2676AD120(v10 + 1);
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_2676AF01C(v10 + 1);
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_2676AFE00(&qword_2801CBF50, MEMORY[0x277CBA2E0], MEMORY[0x277CBA2E8]);
      v13 = sub_2676CBF0C();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_2676AFE00(&qword_2801CBF58, MEMORY[0x277CBA2E0], MEMORY[0x277CBA2F0]);
        v15 = sub_2676CBF1C();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_2676AECD4();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = sub_2676CC5DC();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

uint64_t sub_2676AE2AC(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_2676CB14C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_2676AD478(v10 + 1);
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_2676AF334(v10 + 1);
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_2676AFE00(&qword_2801CBF40, MEMORY[0x277D5CA58], MEMORY[0x277D5CA60]);
      v13 = sub_2676CBF0C();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_2676AFE00(&qword_2801CBF48, MEMORY[0x277D5CA58], MEMORY[0x277D5CA68]);
        v15 = sub_2676CBF1C();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_2676AECD4();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = sub_2676CC5DC();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

uint64_t sub_2676AE55C(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_2676CAABC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_2676ADA2C(v10 + 1);
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_2676AF898(v10 + 1);
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_2676AFE00(&qword_2801CDC68, MEMORY[0x277D56020], MEMORY[0x277D56028]);
      v13 = sub_2676CBF0C();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_2676AFE00(&qword_2801CDC70, MEMORY[0x277D56020], MEMORY[0x277D56030]);
        v15 = sub_2676CBF1C();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_2676AECD4();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = sub_2676CC5DC();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

void sub_2676AE80C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_2676AD7D0(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_2676AF64C(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_2676CC64C();
      sub_2676CBFFC();
      v16 = sub_2676CC67C();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == result && v18[1] == a2;
        if (v19 || (sub_2676CC59C() & 1) != 0)
        {
          goto LABEL_19;
        }

        v16 = a3 + 1;
      }
    }

    sub_2676AEB94();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = result;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    sub_2676CC5DC();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

uint64_t sub_2676AE974(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 <= v9 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_2676ADD84(v9 + 1);
    }

    else
    {
      if (v10 > v9)
      {
        result = sub_2676AEEC8();
        goto LABEL_22;
      }

      sub_2676AFBB0(v9 + 1);
    }

    v11 = *v4;
    sub_2676CC64C();
    sub_2676CC66C();
    if (a2)
    {
      sub_2676CBFFC();
    }

    result = sub_2676CC67C();
    v12 = v11 + 56;
    v13 = -1 << *(v11 + 32);
    a3 = result & ~v13;
    if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v14 = ~v13;
      v15 = *(v11 + 48);
      do
      {
        v16 = (v15 + 16 * a3);
        v17 = v16[1];
        if (v17)
        {
          if (a2)
          {
            if (*v16 == v8 && v17 == a2)
            {
              goto LABEL_25;
            }

            result = sub_2676CC59C();
            if (result)
            {
              goto LABEL_25;
            }
          }
        }

        else if (!a2)
        {
          goto LABEL_25;
        }

        a3 = (a3 + 1) & v14;
      }

      while (((*(v12 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
    }
  }

LABEL_22:
  v19 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v20 = (*(v19 + 48) + 16 * a3);
  *v20 = v8;
  v20[1] = a2;
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
LABEL_25:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9B0, &unk_2676CFE50);
    result = sub_2676CC5DC();
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v23;
  }

  return result;
}

uint64_t sub_2676AEB30(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_2676D4A40;
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

void sub_2676AEB94()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDC40, &qword_2676D4EA8);
  v2 = *v0;
  v3 = sub_2676CC3CC();
  if (v2[2])
  {
    v4 = OUTLINED_FUNCTION_112_0();
    v6 = (v5 + 63) >> 6;
    if (v3 != v2 || v4 >= &v2[v6 + 7])
    {
      memmove(v4, v2 + 7, 8 * v6);
    }

    v8 = 0;
    *(v3 + 16) = v2[2];
    OUTLINED_FUNCTION_111_0();
    v11 = v10 & v9;
    v13 = (v12 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_15:
        v17 = v14 | (v8 << 6);
        v18 = (v2[6] + 16 * v17);
        v19 = v18[1];
        v20 = (*(v3 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v11);
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
        goto LABEL_17;
      }

      v16 = v2[v8 + 7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v1 = v3;
  }
}

void sub_2676AECD4()
{
  OUTLINED_FUNCTION_21_1();
  v3 = v2;
  v5 = v4;
  v6 = v0;
  v8 = v7(0);
  OUTLINED_FUNCTION_3();
  v10 = v9;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v3);
  v12 = *v0;
  v13 = sub_2676CC3CC();
  if (v12[2])
  {
    v14 = OUTLINED_FUNCTION_112_0();
    v16 = (v15 + 63) >> 6;
    if (v13 != v12 || v14 >= &v12[v16 + 7])
    {
      memmove(v14, v12 + 7, 8 * v16);
    }

    v18 = 0;
    *(v13 + 16) = v12[2];
    OUTLINED_FUNCTION_111_0();
    v21 = v20 & v19;
    v23 = (v22 + 63) >> 6;
    if ((v20 & v19) != 0)
    {
      do
      {
        v24 = __clz(__rbit64(v21));
        v21 &= v21 - 1;
LABEL_15:
        (*(v10 + 16))(v1, v12[6] + *(v10 + 72) * (v24 | (v18 << 6)), v8);
        OUTLINED_FUNCTION_91_2();
        v27();
      }

      while (v21);
    }

    v25 = v18;
    while (1)
    {
      v18 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v18 >= v23)
      {
        goto LABEL_17;
      }

      v26 = v12[v18 + 7];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v21 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v6 = v13;
    OUTLINED_FUNCTION_20_1();
  }
}

void *sub_2676AEEC8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDC88, &qword_2676D4FE8);
  v2 = *v0;
  v3 = sub_2676CC3CC();
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
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
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

uint64_t sub_2676AF01C(uint64_t a1)
{
  v2 = v1;
  v33 = sub_2676C8C8C();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDC60, &qword_2676D4EF8);
  v7 = sub_2676CC3DC();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_2676AFE00(&qword_2801CBF50, MEMORY[0x277CBA2E0], MEMORY[0x277CBA2E8]);
        result = sub_2676CBF0C();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_2676AF334(uint64_t a1)
{
  v2 = v1;
  v33 = sub_2676CB14C();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDC50, &unk_2676D4ED8);
  v7 = sub_2676CC3DC();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_2676AFE00(&qword_2801CBF40, MEMORY[0x277D5CA58], MEMORY[0x277D5CA60]);
        result = sub_2676CBF0C();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_2676AF64C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDC40, &qword_2676D4EA8);
  result = sub_2676CC3DC();
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
        sub_2676CC64C();

        sub_2676CBFFC();
        result = sub_2676CC67C();
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

uint64_t sub_2676AF898(uint64_t a1)
{
  v2 = v1;
  v33 = sub_2676CAABC();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDC78, &unk_2676D4F00);
  v7 = sub_2676CC3DC();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_2676AFE00(&qword_2801CDC68, MEMORY[0x277D56020], MEMORY[0x277D56028]);
        result = sub_2676CBF0C();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_2676AFBB0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDC88, &qword_2676D4FE8);
  result = sub_2676CC3DC();
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
        v17 = *v15;
        v16 = v15[1];
        sub_2676CC64C();
        sub_2676CC66C();
        if (v16)
        {

          sub_2676CBFFC();
        }

        result = sub_2676CC67C();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v17;
        v26[1] = v16;
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
          goto LABEL_23;
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
          goto LABEL_27;
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

LABEL_27:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_2676AFE00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2676AFE48(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_2676CC4EC();
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
    result = sub_267630B8C();
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_2676AFFD0();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_2676148C4(&qword_2801CDC80, &qword_2801CCD70, &qword_2676D1058, MEMORY[0x277D83988]);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCD70, &qword_2676D1058);
          v9 = sub_2676460F0(v12, i, a3);
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

unint64_t sub_2676AFFD0()
{
  result = qword_2801CCD80;
  if (!qword_2801CCD80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2801CCD80);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_38_5(unint64_t *a1)
{

  return sub_2676148C4(a1, v1, v2, &unk_2676D3198);
}

void OUTLINED_FUNCTION_43_7()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x26D5FEA80);
}

void OUTLINED_FUNCTION_60_3()
{

  sub_2676A2C6C();
}

void *OUTLINED_FUNCTION_70_3(uint64_t a1, ...)
{

  return sub_2676CC64C();
}

uint64_t OUTLINED_FUNCTION_95_2(uint64_t a1, uint64_t a2)
{

  return sub_2676CC59C();
}

uint64_t OUTLINED_FUNCTION_118_0()
{

  return sub_2676C983C();
}

uint64_t OUTLINED_FUNCTION_119_0(uint64_t a1)
{

  return sub_2676C97EC();
}

uint64_t OUTLINED_FUNCTION_121_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_122_0(uint64_t a1)
{

  return sub_2676C98AC();
}

uint64_t OUTLINED_FUNCTION_123_0()
{
}

uint64_t OUTLINED_FUNCTION_124_0(uint64_t *a1)
{
}

uint64_t OUTLINED_FUNCTION_125_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_126()
{

  return swift_slowAlloc();
}

unint64_t SiriMailError.errorDescription.getter()
{
  v1 = v0[1];
  result = 0x6C706D6920746F4ELL;
  switch(v1)
  {
    case 0:
      result = 0xD000000000000021;
      break;
    case 1:
      v4 = 18;
      goto LABEL_8;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000021;
      break;
    case 4:
      OUTLINED_FUNCTION_0_30();
      result = v3 - 1;
      break;
    case 5:
      OUTLINED_FUNCTION_0_30();
      result = v5 | 6;
      break;
    case 6:
      OUTLINED_FUNCTION_0_30();
      result = v6 + 23;
      break;
    case 7:
      v4 = 70;
LABEL_8:
      result = v4 | 0xD000000000000021;
      break;
    default:
      v7 = *v0;
      sub_2676CC3FC();
      MEMORY[0x26D5FDD00](0xD00000000000006DLL, 0x80000002676D8020);
      MEMORY[0x26D5FDD00](v7, v1);
      result = 0;
      break;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16SiriMailInternal0aB5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2676B0580(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF8 && *(a1 + 16))
  {
    return (*a1 + 2147483640);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 7;
  if (v4 >= 9)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2676B05D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFF7)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483640;
    if (a3 >= 0x7FFFFFF8)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF8)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 7;
    }
  }

  return result;
}

void *sub_2676B0630(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t static Logger.logAndCrash(_:file:line:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDCA8, &qword_2676D5100);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - v14;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_1_8();
    swift_once();
  }

  v16 = sub_2676CBE4C();
  v17 = __swift_project_value_buffer(v16, qword_2801CDC90);
  v18 = *(v16 - 8);
  (*(v18 + 16))(v15, v17, v16);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v16);
  sub_2676B0A10(v15, v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v16) == 1)
  {
    sub_2676B0A80(v13);
  }

  else
  {

    v19 = sub_2676CBE2C();
    v20 = sub_2676CC24C();

    v34 = v20;
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v35 = a6;
      v22 = v21;
      v32 = swift_slowAlloc();
      v37 = v32;
      *v22 = 136315650;
      v23 = sub_2676CC40C();
      v33 = a4;
      v25 = sub_2676B0B84(v23, v24, &v37);
      v31 = v19;
      v26 = v25;

      *(v22 + 4) = v26;
      *(v22 + 12) = 2048;
      *(v22 + 14) = v35;
      *(v22 + 22) = 2080;
      *(v22 + 24) = sub_2676B0B84(a1, a2, &v37);
      v27 = v31;
      _os_log_impl(&dword_2675D4000, v31, v34, "FatalError at %s:%lu - %s", v22, 0x20u);
      v28 = v32;
      swift_arrayDestroy();
      MEMORY[0x26D5FEA80](v28, -1, -1);
      MEMORY[0x26D5FEA80](v22, -1, -1);
    }

    else
    {
    }

    (*(v18 + 8))(v13, v16);
  }

  sub_2676C972C();
  result = sub_2676CC4CC();
  __break(1u);
  return result;
}

uint64_t sub_2676B0998()
{
  v0 = sub_2676CBE4C();
  __swift_allocate_value_buffer(v0, qword_2801CDC90);
  __swift_project_value_buffer(v0, qword_2801CDC90);
  return sub_2676CBE3C();
}

uint64_t sub_2676B0A10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDCA8, &qword_2676D5100);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2676B0A80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDCA8, &qword_2676D5100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static Logger.siriMail.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_1_8();
    swift_once();
  }

  v2 = sub_2676CBE4C();
  v3 = __swift_project_value_buffer(v2, qword_2801CDC90);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_2676B0B84(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2676B0CF4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_2675EB89C(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

_BYTE *storeEnumTagSinglePayload for Logger(_BYTE *result, int a2, int a3)
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

unint64_t sub_2676B0CF4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2676B0DF4(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_2676CC43C();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2676B0DF4(uint64_t a1, unint64_t a2)
{
  v3 = sub_2676B0E40(a1, a2);
  sub_2676B0F58(&unk_2878ACE48);
  return v3;
}

uint64_t sub_2676B0E40(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_2676CC04C())
  {
    result = sub_2676B103C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_2676CC3EC();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_2676CC43C();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2676B0F58(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_2676B10AC(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2676B103C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDCB0, &qword_2676D5118);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2676B10AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDCB0, &qword_2676D5118);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t type metadata accessor for Signpost.OpenSignpost(uint64_t a1)
{
  result = qword_2801CDCB8;
  if (!qword_2801CDCB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2676B1278(uint64_t a1)
{
  result = sub_2676CBE1C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SignpostName(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SignpostName(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 17) = v3;
  return result;
}

uint64_t sub_2676B1348()
{
  sub_2676B13A8();
  result = sub_2676CC2DC();
  qword_2801D3F18 = result;
  return result;
}

unint64_t sub_2676B13A8()
{
  result = qword_2801CDCC8;
  if (!qword_2801CDCC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2801CDCC8);
  }

  return result;
}

void sub_2676B13EC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v50 = a8;
  v51 = a7;
  v52 = a6;
  v53 = a5;
  v54 = a3;
  v55 = a9;
  v13 = sub_2676CB0DC();
  OUTLINED_FUNCTION_3();
  v56 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_5();
  v58 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA08, &unk_2676CFEA0);
  OUTLINED_FUNCTION_4_1(v17);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_9_1();
  v57 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA20, &qword_2676CFEB8);
  v21 = OUTLINED_FUNCTION_4_1(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_7();
  v24 = v22 - v23;
  v26 = MEMORY[0x28223BE20](v25);
  v28 = v48 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = v48 - v29;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v31 = sub_2676CBE4C();
  __swift_project_value_buffer(v31, qword_2801CDC90);
  v49 = a10;
  sub_2675F95E4(a10, v30, &qword_2801CCA20, &qword_2676CFEB8);
  v32 = sub_2676CBE2C();
  v33 = sub_2676CC26C();
  if (os_log_type_enabled(v32, v33))
  {
    v48[0] = a4;
    v48[1] = a2;
    v48[2] = a1;
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v61 = v35;
    *v34 = 136315138;
    sub_2675F95E4(v30, v28, &qword_2801CCA20, &qword_2676CFEB8);
    if (__swift_getEnumTagSinglePayload(v28, 1, v13) == 1)
    {
      sub_2675EB7EC(v28, &qword_2801CCA20, &qword_2676CFEB8);
      v36 = 0;
      v37 = 0;
    }

    else
    {
      v36 = sub_2676CB0CC();
      v37 = v38;
      (*(v56 + 8))(v28, v13);
    }

    v59 = v36;
    v60 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9B0, &unk_2676CFE50);
    v39 = sub_2676CBFBC();
    v41 = v40;
    sub_2675EB7EC(v30, &qword_2801CCA20, &qword_2676CFEB8);
    v42 = sub_2676B0B84(v39, v41, &v61);

    *(v34 + 4) = v42;
    _os_log_impl(&dword_2675D4000, v32, v33, "#reducer returning _SiriMailMessage, state: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
  }

  else
  {

    sub_2675EB7EC(v30, &qword_2801CCA20, &qword_2676CFEB8);
  }

  sub_2676CB0AC();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
  sub_2675F95E4(v49, v24, &qword_2801CCA20, &qword_2676CFEB8);
  if (__swift_getEnumTagSinglePayload(v24, 1, v13) == 1)
  {
    (*(v56 + 104))(v58, *MEMORY[0x277D5CA08], v13);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v24, 1, v13);

    OUTLINED_FUNCTION_11_30();
    if (EnumTagSinglePayload != 1)
    {
      sub_2675EB7EC(v24, &qword_2801CCA20, &qword_2676CFEB8);
    }
  }

  else
  {
    (*(v56 + 32))(v58, v24, v13);

    OUTLINED_FUNCTION_11_30();
  }

  if (qword_2801CBA70 != -1)
  {
    OUTLINED_FUNCTION_7_1(&qword_2801CBA70);
  }

  sub_2676CB04C();
  OUTLINED_FUNCTION_20_1();
}

void sub_2676B192C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v171 = a7;
  v168 = a6;
  v176 = a5;
  v169 = a4;
  v166 = a3;
  v165 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA20, &qword_2676CFEB8);
  OUTLINED_FUNCTION_4_1(v10);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_9_1();
  v173 = v12;
  v186 = sub_2676CB0DC();
  OUTLINED_FUNCTION_3();
  v170 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_5();
  v172 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA08, &unk_2676CFEA0);
  OUTLINED_FUNCTION_4_1(v16);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_9_1();
  v177 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDCD0, &qword_2676D5188);
  OUTLINED_FUNCTION_4_1(v19);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_9_1();
  v175 = v21;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE0, &qword_2676D1070);
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_9_1();
  v178 = v23;
  v24 = sub_2676CB18C();
  OUTLINED_FUNCTION_3();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1_7();
  v164 = (v28 - v29);
  OUTLINED_FUNCTION_12_0();
  v31 = MEMORY[0x28223BE20](v30);
  v33 = v156 - v32;
  MEMORY[0x28223BE20](v31);
  v174 = v156 - v34;
  v194 = sub_2676CB14C();
  OUTLINED_FUNCTION_3();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_1_7();
  v163 = (v38 - v39);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v40);
  v183 = v156 - v41;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v42);
  v44 = v156 - v43;
  v45 = sub_2676C8C8C();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_1_7();
  v182 = (v47 - v48);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v49);
  v181 = v156 - v50;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v51);
  v193 = v156 - v52;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v53);
  v56 = v156 - v55;
  if (a1 && (v57 = *(a1 + 16)) != 0)
  {
    v159 = v33;
    v160 = v26;
    v161 = v24;
    v162 = a8;
    v59 = *(v54 + 16);
    v58 = v54 + 16;
    v191 = v59;
    v157 = (*(v58 + 64) + 32) & ~*(v58 + 64);
    v60 = (a1 + v157);
    v61 = *(v58 + 56);
    v192 = v58;
    v189 = (v58 - 8);
    v190 = v61;
    v188 = v36 + 32;
    v62 = MEMORY[0x277D84F90];
    do
    {
      v63 = v191;
      v191(v56, v60, v45);
      v63(v193, v56, v45);
      sub_2676CB15C();
      v187 = *v189;
      v187(v56, v45);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_18_4();
        sub_2676077B8();
        v62 = v69;
      }

      v64 = *(v62 + 16);
      if (v64 >= *(v62 + 24) >> 1)
      {
        sub_2676077B8();
        v62 = v70;
      }

      *(v62 + 16) = v64 + 1;
      v65 = (*(v36 + 80) + 32) & ~*(v36 + 80);
      v66 = *(v36 + 72);
      v67 = v62 + v65 + v66 * v64;
      v68 = *(v36 + 32);
      v68(v67, v44, v194);
      v60 += v190;
      --v57;
    }

    while (v57);
    if (v165)
    {
      v180 = v45;
      v76 = *(v165 + 16);
      v77 = v186;
      if (v76)
      {
        v78 = v165 + v157;
        v79 = MEMORY[0x277D84F90];
        v179 = v65;
        v184 = v68;
        v185 = v66;
        do
        {
          v81 = v180;
          v80 = v181;
          v82 = v191;
          v191(v181, v78, v180);
          v82(v193, v80, v81);
          sub_2676CB15C();
          v187(v80, v81);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_18_4();
            sub_2676077B8();
            v79 = v85;
          }

          v84 = *(v79 + 2);
          v83 = *(v79 + 3);
          v65 = v179;
          v68 = v184;
          v66 = v185;
          if (v84 >= v83 >> 1)
          {
            OUTLINED_FUNCTION_14_21(v83);
            sub_2676077B8();
            v79 = v86;
          }

          *(v79 + 2) = v84 + 1;
          v68(&v79[v65 + v84 * v66], v183, v194);
          v78 += v190;
          --v76;
          v77 = v186;
        }

        while (v76);
      }

      else
      {
        v79 = MEMORY[0x277D84F90];
      }

      v45 = v180;
    }

    else
    {
      v79 = 0;
      v77 = v186;
    }

    v87 = v178;
    v158 = v62;
    if (v166)
    {
      v184 = v68;
      v185 = v66;
      v183 = v79;
      v88 = *(v166 + 16);
      if (v88)
      {
        v89 = v166 + v157;
        v90 = MEMORY[0x277D84F90];
        v91 = v163;
        do
        {
          v92 = v182;
          v93 = v90;
          v94 = v191;
          v191(v182, v89, v45);
          v94(v193, v92, v45);
          v90 = v93;
          sub_2676CB15C();
          v187(v92, v45);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_18_4();
            sub_2676077B8();
            v90 = v97;
          }

          v96 = *(v90 + 16);
          v95 = *(v90 + 24);
          if (v96 >= v95 >> 1)
          {
            OUTLINED_FUNCTION_14_21(v95);
            sub_2676077B8();
            v90 = v98;
          }

          *(v90 + 16) = v96 + 1;
          v184(v90 + v65 + v96 * v185, v91, v194);
          v89 += v190;
          --v88;
          v77 = v186;
        }

        while (v88);
      }

      else
      {
        v90 = MEMORY[0x277D84F90];
      }

      v99 = v90;
      v87 = v178;
      v79 = v183;
    }

    else
    {
      v99 = 0;
    }

    v101 = v175;
    v100 = v176;
    if (qword_2801CBA70 != -1)
    {
      OUTLINED_FUNCTION_7_1(&qword_2801CBA70);
    }

    v102 = *(qword_2801D3CD0 + 96);
    v103 = *(qword_2801D3CD0 + 104);
    v104 = *(qword_2801D3CD0 + 112);
    v189 = *(qword_2801D3CD0 + 120);
    v183 = *(qword_2801D3CD0 + 128);
    v184 = v104;
    v105 = *(qword_2801D3CD0 + 144);
    v188 = *(qword_2801D3CD0 + 136);
    v182 = v105;
    v106 = *(qword_2801D3CD0 + 152);
    v186 = v102;
    v187 = v106;
    v107 = *(qword_2801D3CD0 + 56);
    v181 = *(qword_2801D3CD0 + 48);
    v108 = *(qword_2801D3CD0 + 88);
    v179 = *(qword_2801D3CD0 + 80);
    v109 = *(qword_2801D3CD0 + 40);
    v165 = *(qword_2801D3CD0 + 32);
    v110 = *(qword_2801D3CD0 + 72);
    v157 = *(qword_2801D3CD0 + 64);
    v156[2] = v110;
    v111 = *(qword_2801D3CD0 + 232);
    v156[13] = *(qword_2801D3CD0 + 224);
    v156[1] = v111;
    v112 = *(qword_2801D3CD0 + 264);
    v156[12] = *(qword_2801D3CD0 + 256);
    v156[0] = v112;
    v113 = *(qword_2801D3CD0 + 280);
    v156[11] = *(qword_2801D3CD0 + 272);
    v194 = v113;
    v114 = *(qword_2801D3CD0 + 296);
    v156[10] = *(qword_2801D3CD0 + 288);
    v193 = v114;
    v115 = *(qword_2801D3CD0 + 312);
    v156[9] = *(qword_2801D3CD0 + 304);
    v192 = v115;
    v116 = MEMORY[0x277D84F90];
    if (v79)
    {
      v117 = v79;
    }

    else
    {
      v117 = MEMORY[0x277D84F90];
    }

    v156[6] = v117;
    v156[8] = *(qword_2801D3CD0 + 320);
    v191 = *(qword_2801D3CD0 + 328);
    if (v99)
    {
      v116 = v99;
    }

    v156[5] = v116;
    v118 = *(qword_2801D3CD0 + 248);
    v156[7] = *(qword_2801D3CD0 + 240);
    v190 = v118;
    v119 = v169;
    if (v100 == 1)
    {
      v120 = 0;
    }

    else
    {
      v120 = v169;
    }

    v156[4] = v120;
    if (v100 == 1)
    {
      v121 = 0;
    }

    else
    {
      v121 = v100;
    }

    v156[3] = v121;
    sub_2675F95E4(v168, v101, &qword_2801CDCD0, &qword_2676D5188);
    v122 = v167;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v101, 1, v167);
    v185 = v103;
    v180 = v107;
    v166 = v108;
    v163 = v109;
    if (EnumTagSinglePayload == 1)
    {
      sub_2676C8EBC();
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v124, v125, v126, v127);
      v128 = __swift_getEnumTagSinglePayload(v101, 1, v122);

      v87 = v178;
      sub_2676B2ED0(v119, v176);
      if (v128 != 1)
      {
        sub_2675EB7EC(v175, &qword_2801CDCD0, &qword_2676D5188);
      }
    }

    else
    {
      sub_2676B3074(v101, v87);

      sub_2676B2ED0(v119, v176);
    }

    sub_26762D208();
    sub_2675EB7EC(v87, &qword_2801CBFE0, &qword_2676D1070);
    sub_2676CB0AC();
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v129, v130, v131, v132);
    v133 = v173;
    sub_2675F95E4(v171, v173, &qword_2801CCA20, &qword_2676CFEB8);
    if (__swift_getEnumTagSinglePayload(v133, 1, v77) == 1)
    {
      (*(v170 + 104))(v172, *MEMORY[0x277D5CA08], v77);
      if (__swift_getEnumTagSinglePayload(v133, 1, v77) != 1)
      {
        sub_2675EB7EC(v133, &qword_2801CCA20, &qword_2676CFEB8);
      }
    }

    else
    {
      (*(v170 + 32))(v172, v133, v77);
    }

    v134 = v174;
    sub_2676CB17C();
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v135 = sub_2676CBE4C();
    __swift_project_value_buffer(v135, qword_2801CDC90);
    v136 = v160;
    v137 = *(v160 + 16);
    v138 = v159;
    v139 = v161;
    v137(v159, v134, v161);
    v140 = sub_2676CBE2C();
    v141 = sub_2676CC26C();
    if (os_log_type_enabled(v140, v141))
    {
      v142 = swift_slowAlloc();
      v194 = swift_slowAlloc();
      v195 = v194;
      *v142 = 136315138;
      v137(v164, v138, v139);
      sub_2676CBFBC();
      v143 = objc_opt_self();
      v144 = sub_2676CBF3C();

      v145 = [v143 partiallyRedactedStringForString_];

      v146 = sub_2676CBF6C();
      v148 = v147;

      v149 = OUTLINED_FUNCTION_16_16();
      v150(v149);
      v151 = sub_2676B0B84(v146, v148, &v195);

      *(v142 + 4) = v151;
      _os_log_impl(&dword_2675D4000, v140, v141, "Publishing new snippet: %s", v142, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v194);
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_2_5();
    }

    else
    {

      v152 = OUTLINED_FUNCTION_16_16();
      v153(v152);
    }

    v154 = v162;
    (*(v136 + 32))(v162, v134, v139);
    v155 = sub_2676C916C();
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v154, 0, 1, v155);
    OUTLINED_FUNCTION_20_1();
  }

  else
  {
    sub_2676C916C();
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_20_1();

    __swift_storeEnumTagSinglePayload(v71, v72, v73, v74);
  }
}

uint64_t sub_2676B2998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_2676B30E4;

  return sub_267626A88(a5);
}

uint64_t sub_2676B2A34()
{
  v1 = sub_2676CAFDC();
  OUTLINED_FUNCTION_4_1(v1);
  OUTLINED_FUNCTION_13_21();
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_6_22(v2);

  return sub_2676B2998(v3, v4, v5, v6, v7);
}

uint64_t sub_2676B2B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v4 = sub_2676CBE4C();
  __swift_project_value_buffer(v4, qword_2801CDC90);
  v5 = sub_2676CBE2C();
  v6 = sub_2676CC23C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2675D4000, v5, v6, "#modelTransformer returning MailPluginModel", v7, 2u);
    OUTLINED_FUNCTION_2_5();
  }

  sub_2676CB18C();
  OUTLINED_FUNCTION_2_6();
  (*(v8 + 16))(a2, a1);
  v9 = sub_2676C916C();
  swift_storeEnumTagMultiPayload();

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v9);
}

void sub_2676B2C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  v22[1] = a6;
  v9 = sub_2676CAFDC();
  OUTLINED_FUNCTION_3();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC770, &unk_2676CF800);
  OUTLINED_FUNCTION_4_1(v15);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v16);
  v18 = v22 - v17;
  a4(a1);
  sub_2676CC1DC();
  v19 = sub_2676CC1FC();
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v19);
  (*(v11 + 16))(v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v20 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 4) = a3;
  (*(v11 + 32))(&v21[v20], v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v9);

  sub_26760E138();

  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_2676B2E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_26762C5D8;

  return sub_267626A88(a5);
}

uint64_t sub_2676B2ED0(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t objectdestroyTm_2()
{
  v1 = sub_2676CAFDC();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_2676B2FA4()
{
  v1 = sub_2676CAFDC();
  OUTLINED_FUNCTION_4_1(v1);
  OUTLINED_FUNCTION_13_21();
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_6_22(v2);

  return sub_2676B2E34(v3, v4, v5, v6, v7);
}

uint64_t sub_2676B3074(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE0, &qword_2676D1070);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_11_30()
{
  sub_2676B2ED0(v1, v2);
  sub_2676B2ED0(v0, v3);
}

uint64_t sub_2676B3184(uint64_t a1, uint64_t a2, unint64_t a3)
{

  sub_2676B334C(1, a2, a3);
  sub_2676B340C();
  v5 = sub_2676CC32C();

  sub_2676B3278(1uLL, a2, a3);
  sub_2676B3460();

  sub_2676CC02C();

  return v5;
}

unint64_t sub_2676B3278(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_2676CC01C();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_2676CC0AC();

      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2676B334C(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2676CC01C();
    v3 = sub_2676CC0AC();

    return v3;
  }

  return result;
}

unint64_t sub_2676B340C()
{
  result = qword_2801CDCD8;
  if (!qword_2801CDCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CDCD8);
  }

  return result;
}

unint64_t sub_2676B3460()
{
  result = qword_2801CDCE0;
  if (!qword_2801CDCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CDCE0);
  }

  return result;
}

uint64_t sub_2676B34D8(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = objc_opt_self();
  v5 = sub_2676CBF3C();
  v6 = [v4 *a3];

  v7 = sub_2676CBF6C();
  return v7;
}

uint64_t type metadata accessor for UnresolvedContactInfo(uint64_t a1)
{
  result = qword_2801CDCE8;
  if (!qword_2801CDCE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2676B35D8(uint64_t a1)
{
  sub_2676CAA9C();
  if (v1 <= 0x3F)
  {
    sub_2675FEE64();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2676B366C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2676C9ECC();
  sub_2676C9CEC();
  sub_2675ED65C(a1, &v7, &qword_2801CC6B0, &qword_2676CFC80);
  if (v8)
  {
    sub_2675ED6C0(a1, &qword_2801CC6B0, &qword_2676CFC80);
    sub_2675DD73C(&v7, &v9);
  }

  else
  {
    sub_2676C977C();
    v4 = sub_2676C9C7C();
    swift_allocObject();
    v5 = sub_2676C9C6C();
    v10 = v4;
    v11 = MEMORY[0x277D5BF00];
    *&v9 = v5;
    sub_2675ED6C0(a1, &qword_2801CC6B0, &qword_2676CFC80);
    if (v8)
    {
      sub_2675ED6C0(&v7, &qword_2801CC6B0, &qword_2676CFC80);
    }
  }

  return sub_2675DD73C(&v9, a2);
}

void sub_2676B377C()
{
  OUTLINED_FUNCTION_21_1();
  v2 = v1;
  v27 = v3;
  v31 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD4A0, &unk_2676D3210);
  OUTLINED_FUNCTION_3();
  v29 = v5;
  v30 = v6;
  MEMORY[0x28223BE20](v5);
  v28 = &v26 - v7;
  v8 = sub_2676C9BDC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_7();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = (&v26 - v14);
  v16 = sub_2676CB48C();
  v17 = OUTLINED_FUNCTION_4_1(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3_2();
  v18 = sub_2676C9B9C();
  swift_allocObject();
  v19 = sub_2676C9B8C();
  v36[3] = v18;
  v36[4] = MEMORY[0x277D5BD58];
  v36[0] = v19;
  type metadata accessor for SendMailCATsSimple(0);
  sub_2676CB47C();
  v36[5] = sub_2676CB42C();
  type metadata accessor for ContactResolutionCATsSimple(0);
  sub_2676CB47C();
  v36[6] = sub_2676CB42C();
  sub_2676C9ECC();
  *v15 = v27;
  v15[1] = v2;
  v20 = *MEMORY[0x277D5BD88];
  v21 = *(v9 + 104);
  v26 = v8;
  v21(v15, v20, v8);
  sub_2676B3B6C(v36, v35);
  (*(v9 + 16))(v12, v15, v8);
  sub_2676149CC(v0, &v34);
  sub_2676149CC(v0 + 40, &v33);
  sub_2676149CC(v0 + 80, &v32);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD4B0, &qword_2676D3220);
  swift_allocObject();
  sub_2676B3BA4();

  v35[0] = sub_2676C932C();
  v23 = sub_2676148C4(&qword_2801CD4B8, &qword_2801CD4B0, &qword_2676D3220, MEMORY[0x277D5B570]);
  v24 = v28;
  sub_2676C95AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD4A8, &qword_2676D51C0);
  v35[0] = v22;
  v35[1] = v23;
  swift_getOpaqueTypeConformance2();
  v25 = v29;
  sub_2676C93CC();

  (*(v30 + 8))(v24, v25);
  (*(v9 + 8))(v15, v26);
  sub_2676B445C(v36);
  OUTLINED_FUNCTION_20_1();
}

unint64_t sub_2676B3BA4()
{
  result = qword_2801CDCF8;
  if (!qword_2801CDCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CDCF8);
  }

  return result;
}

uint64_t sub_2676B3BF8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDD00, &qword_2676D51C8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v49 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDD08, &qword_2676D51D0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v49 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDD10, &unk_2676D51D8);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = (&v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v19 = &v49 - v18;
  v20 = *(v7 + 16);
  v49 = a1;
  v21 = a1;
  v23 = v22;
  v20(v12, v21, v6);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v23);
    sub_2675ED6C0(v5, &qword_2801CDD00, &qword_2676D51C8);
    v51 = 0;
    v52 = 0xE000000000000000;
    sub_2676CC3FC();
    MEMORY[0x26D5FDD00](0xD000000000000036, 0x80000002676D80F0);
    v20(v10, v49, v6);
    v25 = sub_2676CBFBC();
    MEMORY[0x26D5FDD00](v25);

    MEMORY[0x26D5FDD00](41, 0xE100000000000000);
    v26 = v51;
    v27 = v52;
    if (qword_2801CBAA0 != -1)
    {
      swift_once();
    }

    v28 = sub_2676CBE4C();
    __swift_project_value_buffer(v28, qword_2801CDC90);

    v29 = sub_2676CBE2C();
    v30 = sub_2676CC24C();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v51 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_2676B0B84(v26, v27, &v51);
      _os_log_impl(&dword_2675D4000, v29, v30, "#UnsetRelationshipFlowFactory: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x26D5FEA80](v32, -1, -1);
      MEMORY[0x26D5FEA80](v31, -1, -1);
    }

    sub_2676B448C();
    v33 = swift_allocError();
    *v34 = v26;
    v34[1] = v27;
    *v50 = v33;
    goto LABEL_9;
  }

  __swift_storeEnumTagSinglePayload(v5, 0, 1, v23);
  (*(v14 + 32))(v19, v5, v23);
  (*(v14 + 16))(v17, v19, v23);
  v24 = (*(v14 + 88))(v17, v23);
  if (v24 == *MEMORY[0x277D5BC38])
  {
    (*(v14 + 96))(v17, v23);
    sub_2675E9FD8(*v17);
    (*(v14 + 8))(v19, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD4A8, &qword_2676D51C0);
    return swift_storeEnumTagMultiPayload();
  }

  if (v24 == *MEMORY[0x277D5BC30])
  {
    (*(v14 + 8))(v19, v23);
    (*(v14 + 96))(v17, v23);
    *v50 = *v17;
LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD4A8, &qword_2676D51C0);
    return swift_storeEnumTagMultiPayload();
  }

  if (v24 == *MEMORY[0x277D5BC40])
  {
    sub_2676C9CCC();
    sub_2676BA488(&qword_2801CD480, MEMORY[0x277D5BF90], MEMORY[0x277D5BF98]);
    v36 = swift_allocError();
    sub_2676C9CBC();
LABEL_17:
    (*(v14 + 8))(v19, v23);
    *v50 = v36;
    goto LABEL_9;
  }

  if (v24 == *MEMORY[0x277D5BC28])
  {
    sub_2676B448C();
    v36 = swift_allocError();
    *v37 = 0;
    v37[1] = 0;
    goto LABEL_17;
  }

  v51 = 0;
  v52 = 0xE000000000000000;
  sub_2676CC3FC();

  v51 = 0xD00000000000002ELL;
  v52 = 0x80000002676D8130;
  sub_2676148C4(&qword_2801CDD20, &qword_2801CDD10, &unk_2676D51D8, MEMORY[0x277D5BC48]);
  v38 = sub_2676CC56C();
  MEMORY[0x26D5FDD00](v38);

  MEMORY[0x26D5FDD00](41, 0xE100000000000000);
  v39 = v51;
  v40 = v52;
  if (qword_2801CBAA0 != -1)
  {
    swift_once();
  }

  v41 = sub_2676CBE4C();
  __swift_project_value_buffer(v41, qword_2801CDC90);

  v42 = sub_2676CBE2C();
  v43 = sub_2676CC24C();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v51 = v45;
    *v44 = 136315138;
    *(v44 + 4) = sub_2676B0B84(v39, v40, &v51);
    _os_log_impl(&dword_2675D4000, v42, v43, "#UnsetRelationshipFlowFactory: %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x26D5FEA80](v45, -1, -1);
    MEMORY[0x26D5FEA80](v44, -1, -1);
  }

  sub_2676B448C();
  v46 = swift_allocError();
  *v47 = v39;
  v47[1] = v40;
  v48 = *(v14 + 8);
  v48(v19, v23);
  *v50 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD4A8, &qword_2676D51C0);
  swift_storeEnumTagMultiPayload();
  return (v48)(v17, v23);
}

unint64_t sub_2676B448C()
{
  result = qword_2801CDD18;
  if (!qword_2801CDD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CDD18);
  }

  return result;
}

uint64_t sub_2676B44E0()
{
  OUTLINED_FUNCTION_3_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_2676C90FC();
  v1[5] = v4;
  OUTLINED_FUNCTION_1_0(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_2_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  OUTLINED_FUNCTION_4_1(v6);
  v1[8] = OUTLINED_FUNCTION_2_0();
  v7 = sub_2676CAF8C();
  OUTLINED_FUNCTION_4_1(v7);
  v1[9] = OUTLINED_FUNCTION_2_0();
  v8 = sub_2676C99CC();
  v1[10] = v8;
  OUTLINED_FUNCTION_1_0(v8);
  v1[11] = v9;
  v1[12] = OUTLINED_FUNCTION_19();
  v1[13] = swift_task_alloc();
  v10 = sub_2676C9DDC();
  v1[14] = v10;
  OUTLINED_FUNCTION_1_0(v10);
  v1[15] = v11;
  v1[16] = OUTLINED_FUNCTION_2_0();
  v12 = sub_2676C9B3C();
  v1[17] = v12;
  OUTLINED_FUNCTION_1_0(v12);
  v1[18] = v13;
  v1[19] = OUTLINED_FUNCTION_2_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  OUTLINED_FUNCTION_4_1(v14);
  v1[20] = OUTLINED_FUNCTION_2_0();
  v15 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_2676B46F0()
{
  v1 = sub_2675E9CDC();
  OUTLINED_FUNCTION_62_4(v1);
  sub_2676CB3FC();
  OUTLINED_FUNCTION_17_2();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = swift_task_alloc();
  *(v0 + 168) = v6;
  *v6 = v0;
  v6[1] = sub_2676B47C0;

  return sub_2675ECFA0();
}

uint64_t sub_2676B47C0()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_8_6();
  *v3 = v2;
  v5 = *(v4 + 160);
  v6 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v7 = v6;
  *(v9 + 176) = v8;
  *(v9 + 184) = v0;

  sub_2675ED6C0(v5, &qword_2801CBFD0, &qword_2676CDEA0);
  if (v0)
  {
    v10 = sub_2676B4DE0;
  }

  else
  {
    v10 = sub_2676B48F0;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}