uint64_t sub_20B674BA8()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {

    v3 = sub_20B674F0C;
  }

  else
  {
    v5 = v2[19];
    v4 = v2[20];
    v6 = v2[18];
    v2[35] = v2[7];

    (*(v5 + 8))(v4, v6);
    v3 = sub_20B674D08;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20B674D08()
{
  v22 = v0;
  v1 = v0[11];
  v2 = OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_currentAudibleMediaSelectionOption;
  v0[36] = OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_currentAudibleMediaSelectionOption;
  v3 = *(v1 + v2);
  v0[37] = v3;
  v4 = v3;
  sub_20C13B574();

  v5 = sub_20C13BB74();
  v6 = sub_20C13D1F4();

  if (os_log_type_enabled(v5, v6))
  {
    v20 = v0[27];
    v7 = v0[25];
    v8 = v0[21];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315138;
    v0[9] = *(v1 + v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763238, &qword_20C153C80);
    v11 = sub_20C13D8F4();
    v13 = sub_20B51E694(v11, v12, &v21);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_20B517000, v5, v6, "previousAudibleMediaSelectionOption: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x20F2F6A40](v10, -1, -1);
    MEMORY[0x20F2F6A40](v9, -1, -1);

    v20(v7, v8);
  }

  else
  {
    v14 = v0[27];
    v15 = v0[25];
    v16 = v0[21];

    v14(v15, v16);
  }

  v0[38] = sub_20C13CD94();
  v18 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20B674FE8, v18, v17);
}

uint64_t sub_20B674F0C()
{
  v1 = v0[31];
  (*(v0[19] + 8))(v0[20], v0[18]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_20B674FE8()
{
  v1 = *(v0 + 80);

  *(v0 + 312) = [v1 currentMediaSelection];

  return MEMORY[0x2822009F8](sub_20B675070, 0, 0);
}

uint64_t sub_20B675070()
{
  v87 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 288);
  v3 = *(v0 + 88);
  v4 = [v1 selectedMediaOptionInMediaSelectionGroup_];

  v5 = *(v3 + v2);
  *(v3 + v2) = v4;

  sub_20C13B574();

  v6 = sub_20C13BB74();
  v7 = sub_20C13D1F4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 288);
    v9 = *(v0 + 216);
    v10 = *(v0 + 192);
    v11 = *(v0 + 168);
    v12 = *(v0 + 88);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v86 = v14;
    *v13 = 136315138;
    *(v0 + 64) = *(v12 + v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763238, &qword_20C153C80);
    v15 = sub_20C13D8F4();
    v17 = sub_20B51E694(v15, v16, &v86);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_20B517000, v6, v7, "currentAudibleMediaSelectionOption: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x20F2F6A40](v14, -1, -1);
    MEMORY[0x20F2F6A40](v13, -1, -1);

    v9(v10, v11);
  }

  else
  {
    v18 = *(v0 + 216);
    v19 = *(v0 + 192);
    v20 = *(v0 + 168);

    v18(v19, v20);
  }

  v22 = *(v0 + 288);
  v21 = *(v0 + 296);
  v23 = *(v0 + 88);
  if (!v21)
  {
    v33 = *(v23 + v22);
    if (v33)
    {
      v34 = v33;
      AVMediaSelectionOption.languageCodeIdentifier.getter();
      v36 = v35;

      if (v36)
      {
        v38 = *(v0 + 128);
        v37 = *(v0 + 136);
        v39 = *(v0 + 120);
        swift_getObjectType();
        sub_20C139464();
        sub_20B682E60(&qword_27C763228, MEMORY[0x277D543C0], MEMORY[0x277D543B8]);
        sub_20C13A764();
        (*(v38 + 8))(v37, v39);
      }

      v40 = *(*(v0 + 88) + *(v0 + 288));
      if (v40)
      {
        v41 = qword_27C7607D0;
        v42 = v40;
        if (v41 != -1)
        {
          swift_once();
        }

        if ([v42 hasMediaCharacteristic_])
        {

LABEL_51:
          v65 = *(v0 + 280);
          v66 = *(v0 + 248);
          v68 = *(v0 + 104);
          v67 = *(v0 + 112);
          v69 = *(v0 + 96);
          swift_getObjectType();
          sub_20C13B064();
          sub_20C13A764();

          (*(v68 + 8))(v67, v69);
LABEL_74:

          v85 = *(v0 + 8);

          return v85();
        }

        if (qword_27C7607D8 != -1)
        {
          swift_once();
        }

        v64 = [v42 hasMediaCharacteristic_];

        if (v64)
        {
          goto LABEL_51;
        }
      }
    }

    v70 = *(v0 + 248);

LABEL_73:
    goto LABEL_74;
  }

  v24 = v21;
  v25 = AVMediaSelectionOption.languageCodeIdentifier.getter();
  v27 = v26;

  v28 = *(v23 + v22);
  if (!v28)
  {
    if (!v27)
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  v29 = v28;
  v30 = AVMediaSelectionOption.languageCodeIdentifier.getter();
  v32 = v31;

  if (!v27)
  {
    if (!v32)
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  if (!v32)
  {
LABEL_22:

    goto LABEL_23;
  }

  if (v25 == v30 && v27 == v32)
  {

    goto LABEL_29;
  }

  v50 = sub_20C13DFF4();

  if (v50)
  {
LABEL_29:
    v51 = qword_27C7607D0;
    v52 = *(v0 + 296);
    if (v51 != -1)
    {
      swift_once();
      v52 = *(v0 + 296);
    }

    v53 = qword_27C79AB00;
    if ([v52 hasMediaCharacteristic_])
    {
      v54 = *(v0 + 288);
      v55 = *(v0 + 88);

      v56 = *(v55 + v54);
      if (v56)
      {
        v57 = 0;
LABEL_40:
        v62 = v56;
        if ([v62 hasMediaCharacteristic_])
        {

          if (v57 == 2)
          {
            goto LABEL_62;
          }

LABEL_56:
          v73 = sub_20C135464();
          v75 = v74;
          if (v73 == sub_20C135464() && v75 == v76)
          {
            v77 = *(v0 + 280);
            v78 = *(v0 + 248);

LABEL_61:

            goto LABEL_74;
          }

          v79 = sub_20C13DFF4();

          if (v79)
          {
            v77 = *(v0 + 280);
            v78 = *(v0 + 248);
            goto LABEL_61;
          }

LABEL_62:
          v80 = *(*(v0 + 88) + *(v0 + 288));
          if (v80)
          {
            v81 = v80;
            v82 = [v81 hasMediaCharacteristic_];
            if (v82)
            {

LABEL_68:
              v84 = swift_task_alloc();
              *(v0 + 344) = v84;
              *v84 = v0;
              v84[1] = sub_20B675B70;

              return sub_20B675E24(v82 ^ 1u);
            }

            if (qword_27C7607D8 != -1)
            {
              swift_once();
            }

            v83 = [v81 hasMediaCharacteristic_];

            if (v83)
            {
              goto LABEL_68;
            }
          }

          goto LABEL_71;
        }

        if (qword_27C7607D8 != -1)
        {
          swift_once();
        }

        v63 = [v62 hasMediaCharacteristic_];

        if (v57 != 2)
        {
          if ((v63 & 1) == 0)
          {
            goto LABEL_62;
          }

          goto LABEL_56;
        }

        if (v63)
        {
          goto LABEL_62;
        }

LABEL_54:
        v70 = *(v0 + 296);
        v71 = *(v0 + 280);
        v72 = *(v0 + 248);
LABEL_72:

        goto LABEL_73;
      }
    }

    else
    {
      if (qword_27C7607D8 != -1)
      {
        swift_once();
      }

      v59 = *(v0 + 288);
      v58 = *(v0 + 296);
      v60 = *(v0 + 88);
      v61 = [v58 hasMediaCharacteristic_];

      if (v61)
      {
        v57 = 1;
      }

      else
      {
        v57 = 2;
      }

      v56 = *(v60 + v59);
      if (v56)
      {
        goto LABEL_40;
      }

      if ((v61 & 1) == 0)
      {
        goto LABEL_54;
      }
    }

LABEL_71:
    v70 = *(v0 + 296);
    v72 = *(v0 + 280);
    v71 = *(v0 + 248);
    goto LABEL_72;
  }

LABEL_23:
  v43 = *(*(v0 + 88) + *(v0 + 288));
  if (!v43)
  {
    goto LABEL_71;
  }

  v44 = v43;
  v45 = AVMediaSelectionOption.languageCodeIdentifier.getter();
  v47 = v46;

  *(v0 + 320) = v47;
  if (!v47)
  {
    goto LABEL_71;
  }

  v48 = swift_task_alloc();
  *(v0 + 328) = v48;
  *v48 = v0;
  v48[1] = sub_20B67596C;

  return sub_20B6823A0(v45, v47);
}

uint64_t sub_20B67596C()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_20B675A9C;
  }

  else
  {
    v2 = sub_20B683088;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B675A9C()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 248);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_20B675B70()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_20B675D50;
  }

  else
  {
    v2 = sub_20B675C84;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B675C84()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 248);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_20B675D50()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 248);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_20B675E24(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 96) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v3 - 8);
  *(v2 + 40) = swift_task_alloc();
  v4 = sub_20C13BB84();
  *(v2 + 48) = v4;
  *(v2 + 56) = *(v4 - 8);
  *(v2 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B675F50, 0, 0);
}

uint64_t sub_20B675F50(__n128 a1)
{
  v20 = v1;
  sub_20C13B574();
  v2 = sub_20C13BB74();
  v3 = sub_20C13D1F4();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[7];
  v6 = v1[8];
  v7 = v1[6];
  if (v4)
  {
    v18 = v1[8];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    v10 = sub_20C135464();
    v12 = sub_20B51E694(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_20B517000, v2, v3, "Updating audio focus preference: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x20F2F6A40](v9, -1, -1);
    MEMORY[0x20F2F6A40](v8, -1, -1);

    (*(v5 + 8))(v18, v7);
  }

  else
  {

    (*(v5 + 8))(v6, v7);
  }

  v13 = v1[5];
  __swift_project_boxed_opaque_existential_1((v1[2] + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_sessionPreferenceClient), *(v1[2] + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_sessionPreferenceClient + 24));
  sub_20C139D24();
  v14 = swift_task_alloc();
  v1[9] = v14;
  *(v14 + 16) = "SeymourUI/SessionMediaPlayerPresenter.swift";
  *(v14 + 24) = 43;
  *(v14 + 32) = 2;
  *(v14 + 40) = 421;
  *(v14 + 48) = v13;
  v15 = swift_task_alloc();
  v1[10] = v15;
  *v15 = v1;
  v15[1] = sub_20B6761CC;
  v16 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v15, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B5269EC, v14, v16);
}

uint64_t sub_20B6761CC()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_20B67638C;
  }

  else
  {
    (*(v2[4] + 8))(v2[5], v2[3]);
    v3 = sub_20B67631C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20B67631C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B67638C()
{
  (*(v0[4] + 8))(v0[5], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20B676418(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_20C139474();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_20C1391E4();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  sub_20C134C44();
  v2[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C70, &unk_20C153C40);
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7678F0, &unk_20C157210);
  v2[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C80, &unk_20C153C50);
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767900, &unk_20C157220);
  v2[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C90, &unk_20C153C60);
  v2[15] = swift_task_alloc();
  v5 = sub_20C135D24();
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();
  v6 = sub_20C134F74();
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0, &unk_20C151A00);
  v2[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0, &unk_20C14D9C0);
  v2[24] = swift_task_alloc();
  v7 = sub_20C1333A4();
  v2[25] = v7;
  v2[26] = *(v7 - 8);
  v2[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90, &unk_20C1586D0);
  v2[28] = swift_task_alloc();
  v8 = sub_20C1352E4();
  v2[29] = v8;
  v2[30] = *(v8 - 8);
  v2[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  v2[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  v2[33] = swift_task_alloc();
  v9 = sub_20C134F24();
  v2[34] = v9;
  v2[35] = *(v9 - 8);
  v2[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0, &unk_20C14FCF0);
  v2[37] = swift_task_alloc();
  v10 = sub_20C133654();
  v2[38] = v10;
  v2[39] = *(v10 - 8);
  v2[40] = swift_task_alloc();
  v11 = sub_20C13BB84();
  v2[41] = v11;
  v2[42] = *(v11 - 8);
  v2[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B676A58, 0, 0);
}

uint64_t sub_20B676A58(__n128 a1)
{
  v3 = v1[42];
  v2 = v1[43];
  v4 = v1[41];
  v43 = v1[40];
  v62 = v1[39];
  v63 = v1[38];
  v5 = v1[36];
  v6 = v1[37];
  v8 = v1[34];
  v7 = v1[35];
  v9 = v1[33];
  v48 = v1[32];
  v56 = v1[31];
  v32 = v1[30];
  v33 = v1[29];
  v58 = v1[28];
  v44 = v1[27];
  v47 = v1[26];
  v49 = v1[25];
  v50 = v1[24];
  v52 = v1[23];
  v61 = v1[21];
  v59 = v1[22];
  v60 = v1[20];
  v37 = v1[19];
  v45 = v1[18];
  v34 = v1[17];
  v35 = v1[16];
  v46 = v1[15];
  v51 = v1[14];
  v53 = v1[13];
  v54 = v1[12];
  v55 = v1[11];
  v57 = v1[10];
  v38 = v1[7];
  v39 = v1[6];
  v41 = v1[5];
  v42 = v1[8];
  v40 = v1[4];
  v36 = v1[9];
  sub_20C13B574();
  sub_20C13BB64();
  (*(v3 + 8))(v2, v4);
  v10 = *MEMORY[0x277D52B38];
  v11 = sub_20C136664();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v6, v10, v11);
  (*(v12 + 56))(v6, 0, 1, v11);
  (*(v7 + 104))(v5, *MEMORY[0x277D51450], v8);
  v31 = sub_20C132C14();
  v30 = *(*(v31 - 8) + 56);
  v30(v9, 1, 1, v31);
  sub_20C136184();
  v13 = *MEMORY[0x277D523A8];
  v14 = sub_20C135ED4();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v48, v13, v14);
  v29 = *(v15 + 56);
  v29(v48, 0, 1, v14);
  (*(v32 + 104))(v56, *MEMORY[0x277D51768], v33);
  v16 = sub_20C136E94();
  (*(*(v16 - 8) + 56))(v58, 1, 1, v16);
  v17 = v9;
  sub_20C133644();
  v18 = *MEMORY[0x277D517C0];
  v19 = sub_20C1352F4();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v50, v18, v19);
  (*(v20 + 56))(v50, 0, 1, v19);
  v30(v17, 1, 1, v31);
  v29(v48, 1, 1, v14);
  v21 = sub_20C136914();
  (*(*(v21 - 8) + 56))(v52, 1, 1, v21);
  sub_20C133384();
  (*(v62 + 16))(v45, v43, v63);
  (*(v34 + 104))(v45, *MEMORY[0x277D52120], v35);
  (*(v47 + 16))(v46, v44, v49);
  (*(v47 + 56))(v46, 0, 1, v49);
  v22 = sub_20C135664();
  (*(*(v22 - 8) + 56))(v51, 1, 1, v22);
  v23 = sub_20C135674();
  (*(*(v23 - 8) + 56))(v53, 1, 1, v23);
  sub_20C134F94();
  v24 = sub_20C134FB4();
  (*(*(v24 - 8) + 56))(v54, 0, 1, v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766CA0, &qword_20C157230);
  (*(*(v25 - 8) + 56))(v55, 1, 1, v25);
  v26 = sub_20C135F14();
  (*(*(v26 - 8) + 56))(v57, 1, 1, v26);
  sub_20C134F54();
  (*(v60 + 16))(v61, v59, v37);
  sub_20C1391F4();
  swift_getObjectType();
  sub_20B682E60(&qword_281103B30, MEMORY[0x277D542C0], MEMORY[0x277D542B8]);
  sub_20C13A764();
  sub_20C136184();
  sub_20C139464();
  sub_20B682E60(&qword_27C763228, MEMORY[0x277D543C0], MEMORY[0x277D543B8]);
  sub_20C13A764();
  (*(v41 + 8))(v39, v40);
  (*(v42 + 8))(v36, v38);
  (*(v60 + 8))(v59, v37);
  (*(v47 + 8))(v44, v49);
  (*(v62 + 8))(v43, v63);

  v27 = v1[1];

  return v27();
}

uint64_t sub_20B67740C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0, &unk_20C14F3E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24[-v4];
  v6 = sub_20C13B604();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_20C1380C4();
  (*(v7 + 104))(v9, *MEMORY[0x277D4F920], v6);
  v11 = sub_20B8D7248(v9, v10);

  (*(v7 + 8))(v9, v6);
  if (v11)
  {
    (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter__preventTimeJumpEnabled, v2);
    sub_20C13A344();
    (*(v3 + 8))(v5, v2);
    v12 = v24[15] ^ 1;
  }

  else
  {
    v12 = 1;
  }

  v13 = *(v1 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_currentSessionRouteCategory);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_externalOverlayPresenter + 24);
  v15 = *(v1 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_externalOverlayPresenter + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_externalOverlayPresenter), v14);
  v16 = (*(v15 + 8))(v14, v15);
  v17 = sub_20C1344B4();
  v19 = v18;
  v21 = v20;
  v22 = sub_20C133B84();
  sub_20B583F4C(v17, v19, v21 & 1);
  swift_getObjectType();
  if (v12 & 1) != 0 || v13 || (v16 & 1) == 0 || (v22)
  {
    return sub_20C138654();
  }

  else
  {
    return sub_20C138684();
  }
}

double sub_20B6776DC(char a1)
{
  v2 = v1;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B554();
  sub_20C13BB64();
  (*(v5 + 8))(v7, v4);
  v8 = *(v2 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_platform);
  if (v8 >= 2)
  {
    if (v8 != 2)
    {
      if (!swift_unknownObjectWeakLoadStrong())
      {
        return result;
      }

      v10 = *(v2 + 24);
      goto LABEL_13;
    }

LABEL_8:
    if (!swift_unknownObjectWeakLoadStrong())
    {
      return result;
    }

    v11 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v11 + 264))(0, ObjectType, v11);
    goto LABEL_14;
  }

  if (((1 << *(v2 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_currentSessionRouteCategory)) & 0x16) == 0)
  {
    goto LABEL_8;
  }

  if (*(v2 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_state) == 2)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_20C13DFF4();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v2 + 24);
    a1 &= v13;
LABEL_13:
    v14 = swift_getObjectType();
    (*(v10 + 264))(a1 & 1, v14, v10);
LABEL_14:
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20B677958(void *a1, double a2)
{
  v3 = v2;
  v137 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AC0, &unk_20C1523B0);
  MEMORY[0x28223BE20](v4 - 8);
  v143 = &v129 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765070, &unk_20C157440);
  MEMORY[0x28223BE20](v6 - 8);
  v142 = &v129 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0, &unk_20C1523C0);
  MEMORY[0x28223BE20](v8 - 8);
  v141 = &v129 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765080, &unk_20C157450);
  MEMORY[0x28223BE20](v10 - 8);
  v140 = &v129 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AD0, &unk_20C1523D0);
  MEMORY[0x28223BE20](v12 - 8);
  v139 = &v129 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765090, &unk_20C157460);
  MEMORY[0x28223BE20](v14 - 8);
  v153 = &v129 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AE0, &unk_20C1523E0);
  MEMORY[0x28223BE20](v16 - 8);
  v138 = &v129 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650A0, &unk_20C157470);
  MEMORY[0x28223BE20](v18 - 8);
  v152 = &v129 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AF0, &unk_20C1523F0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v129 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650B0, &unk_20C153BF0);
  MEMORY[0x28223BE20](v23 - 8);
  v151 = &v129 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B00, &unk_20C152400);
  MEMORY[0x28223BE20](v25 - 8);
  v150 = &v129 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650C0, &unk_20C153C00);
  MEMORY[0x28223BE20](v27 - 8);
  v149 = &v129 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B10, &unk_20C152410);
  MEMORY[0x28223BE20](v29 - 8);
  v167 = &v129 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650D0, &unk_20C157480);
  MEMORY[0x28223BE20](v31 - 8);
  v166 = &v129 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B20, &unk_20C152420);
  MEMORY[0x28223BE20](v33 - 8);
  v165 = &v129 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650E0, &unk_20C157490);
  MEMORY[0x28223BE20](v35 - 8);
  v164 = &v129 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767260, &unk_20C152430);
  MEMORY[0x28223BE20](v37 - 8);
  v163 = &v129 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650F0, &unk_20C1574A0);
  MEMORY[0x28223BE20](v39 - 8);
  v162 = &v129 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B30, &unk_20C152440);
  MEMORY[0x28223BE20](v41 - 8);
  v161 = &v129 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765050, &unk_20C153C10);
  MEMORY[0x28223BE20](v43 - 8);
  v160 = &v129 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765100, &unk_20C152450);
  MEMORY[0x28223BE20](v45 - 8);
  v159 = &v129 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7687F0, &unk_20C153C20);
  MEMORY[0x28223BE20](v47 - 8);
  v158 = &v129 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765110, &unk_20C152460);
  MEMORY[0x28223BE20](v49 - 8);
  v157 = &v129 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BBF0, &unk_20C1574B0);
  MEMORY[0x28223BE20](v51 - 8);
  v156 = &v129 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120, &unk_20C152470);
  MEMORY[0x28223BE20](v53 - 8);
  v155 = &v129 - v54;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763220, &unk_20C153C30);
  MEMORY[0x28223BE20](v136);
  v56 = &v129 - v55;
  v148 = sub_20C138184();
  v147 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v146 = &v129 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_20C138144();
  v154 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v144 = &v129 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_20C13BB84();
  v60 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v62 = &v129 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63);
  v65 = &v129 - v64;
  sub_20C13B574();
  sub_20C13BB64();
  v135 = *(v60 + 8);
  v135(v65, v59);
  v66 = OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_currentSessionRouteCategory;
  v67 = *(v3 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_currentSessionRouteCategory);
  v68 = v3;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v69 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    v71 = *(v69 + 168);
    v72 = v69;
    v68 = v3;
    v71(v67 != 2, ObjectType, v72);
    swift_unknownObjectRelease();
  }

  if (sub_20B66F1B0())
  {
    v73 = *(v68 + v66);
    if (swift_unknownObjectWeakLoadStrong() && (v74 = *(v68 + 24), v75 = swift_getObjectType(), LOBYTE(v74) = (*(v74 + 48))(v75, v74), swift_unknownObjectRelease(), (v74 & 1) != 0))
    {
      v76 = v144;
      v77 = v145;
      (*(v154 + 104))(v144, *MEMORY[0x277D53C08], v145);
    }

    else
    {
      v77 = v145;
      if (v73)
      {
        v86 = MEMORY[0x277D53C18];
      }

      else
      {
        v86 = MEMORY[0x277D53C10];
      }

      v76 = v144;
      (*(v154 + 104))(v144, *v86, v145);
    }

    (*(v154 + 16))(v56, v76, v77);
    swift_storeEnumTagMultiPayload();
    sub_20C13CE94();
    v87 = v146;
    sub_20C138124();
    sub_20BA7CBC0(v87);
    v134 = v68;
    v133 = *(v68 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_sessionClient + 24);
    v135 = *(v68 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_sessionClient + 32);
    v137 = __swift_project_boxed_opaque_existential_1((v68 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_sessionClient), v133);
    v136 = sub_20C13A464();
    v88 = sub_20C133D84();
    (*(*(v88 - 8) + 56))(v155, 1, 1, v88);
    v89 = sub_20C135854();
    (*(*(v89 - 8) + 56))(v156, 1, 1, v89);
    v90 = sub_20C136194();
    (*(*(v90 - 8) + 56))(v157, 1, 1, v90);
    v91 = sub_20C133DD4();
    (*(*(v91 - 8) + 56))(v158, 1, 1, v91);
    v92 = sub_20C135274();
    (*(*(v92 - 8) + 56))(v159, 1, 1, v92);
    v93 = sub_20C134514();
    (*(*(v93 - 8) + 56))(v160, 1, 1, v93);
    v94 = sub_20C133B04();
    (*(*(v94 - 8) + 56))(v161, 1, 1, v94);
    v95 = sub_20C134C04();
    (*(*(v95 - 8) + 56))(v162, 1, 1, v95);
    v96 = sub_20C1368F4();
    (*(*(v96 - 8) + 56))(v163, 1, 1, v96);
    v97 = sub_20C134914();
    (*(*(v97 - 8) + 56))(v164, 1, 1, v97);
    v98 = sub_20C133374();
    (*(*(v98 - 8) + 56))(v165, 1, 1, v98);
    v99 = sub_20C135B74();
    (*(*(v99 - 8) + 56))(v166, 1, 1, v99);
    v100 = sub_20C134CD4();
    (*(*(v100 - 8) + 56))(v167, 1, 1, v100);
    v101 = sub_20C136EB4();
    (*(*(v101 - 8) + 56))(v149, 1, 1, v101);
    v102 = sub_20C133494();
    (*(*(v102 - 8) + 56))(v150, 1, 1, v102);
    v103 = sub_20C134594();
    (*(*(v103 - 8) + 56))(v151, 1, 1, v103);
    v104 = v147;
    v105 = v87;
    v106 = v148;
    (*(v147 + 16))(v22, v105, v148);
    v107 = *(v104 + 56);
    v131 = v104 + 56;
    v132 = v107;
    v130 = v22;
    v107(v22, 0, 1, v106);
    v108 = sub_20C1363D4();
    (*(*(v108 - 8) + 56))(v152, 1, 1, v108);
    v109 = sub_20C1337A4();
    v110 = v138;
    (*(*(v109 - 8) + 56))(v138, 1, 1, v109);
    v111 = sub_20C1337D4();
    (*(*(v111 - 8) + 56))();
    v112 = sub_20C134A94();
    v113 = v139;
    (*(*(v112 - 8) + 56))(v139, 1, 1, v112);
    v114 = sub_20C135364();
    v115 = v140;
    (*(*(v114 - 8) + 56))(v140, 1, 1, v114);
    v116 = sub_20C136484();
    v117 = v141;
    (*(*(v116 - 8) + 56))(v141, 1, 1, v116);
    v118 = sub_20C136784();
    v119 = v142;
    (*(*(v118 - 8) + 56))(v142, 1, 1, v118);
    v120 = sub_20C137FE4();
    v121 = v143;
    (*(*(v120 - 8) + 56))(v143, 1, 1, v120);
    v122 = v152;
    v123 = v151;
    sub_20C13A174();

    sub_20B520158(v121, &unk_27C768AC0, &unk_20C1523B0);
    sub_20B520158(v119, &unk_27C765070, &unk_20C157440);
    sub_20B520158(v117, &unk_27C765CB0, &unk_20C1523C0);
    sub_20B520158(v115, &unk_27C765080, &unk_20C157450);
    sub_20B520158(v113, &unk_27C768AD0, &unk_20C1523D0);
    sub_20B520158(v153, &unk_27C765090, &unk_20C157460);
    sub_20B520158(v110, &unk_27C768AE0, &unk_20C1523E0);
    sub_20B520158(v122, &unk_27C7650A0, &unk_20C157470);
    v124 = v130;
    sub_20B520158(v130, &unk_27C768AF0, &unk_20C1523F0);
    sub_20B520158(v123, &unk_27C7650B0, &unk_20C153BF0);
    sub_20B520158(v150, &unk_27C768B00, &unk_20C152400);
    sub_20B520158(v149, &unk_27C7650C0, &unk_20C153C00);
    sub_20B520158(v167, &unk_27C768B10, &unk_20C152410);
    sub_20B520158(v166, &unk_27C7650D0, &unk_20C157480);
    sub_20B520158(v165, &unk_27C768B20, &unk_20C152420);
    sub_20B520158(v164, &unk_27C7650E0, &unk_20C157490);
    sub_20B520158(v163, &unk_27C767260, &unk_20C152430);
    sub_20B520158(v162, &unk_27C7650F0, &unk_20C1574A0);
    sub_20B520158(v161, &qword_27C768B30, &unk_20C152440);
    sub_20B520158(v160, &unk_27C765050, &unk_20C153C10);
    sub_20B520158(v159, &unk_27C765100, &unk_20C152450);
    sub_20B520158(v158, &unk_27C7687F0, &unk_20C153C20);
    sub_20B520158(v157, &unk_27C765110, &unk_20C152460);
    sub_20B520158(v156, &unk_27C76BBF0, &unk_20C1574B0);
    sub_20B520158(v155, &unk_27C765120, &unk_20C152470);
    (*(v154 + 8))(v144, v145);
    v125 = v148;
    (*(v147 + 32))(v124, v146, v148);
    v126 = v124;
    v132(v124, 0, 1, v125);
    v127 = OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_playbackSnapshot;
    v128 = v134;
    swift_beginAccess();
    sub_20B5DF2D4(v126, v128 + v127, &unk_27C768AF0, &unk_20C1523F0);
    return swift_endAccess();
  }

  else
  {
    sub_20C13B574();

    v78 = sub_20C13BB74();
    v79 = sub_20C13D1F4();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v168 = v81;
      *v80 = 136446210;
      v169 = *(v68 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_state);
      v82 = sub_20C13C9D4();
      v84 = sub_20B51E694(v82, v83, &v168);

      *(v80 + 4) = v84;
      _os_log_impl(&dword_20B517000, v78, v79, "Player state is not active, not updating session playback, state: %{public}s", v80, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v81);
      MEMORY[0x20F2F6A40](v81, -1, -1);
      MEMORY[0x20F2F6A40](v80, -1, -1);
    }

    return (v135)(v62, v59);
  }
}

uint64_t sub_20B67919C(uint64_t a1)
{
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - v10;
  sub_20C13B574();
  sub_20C13BB64();
  v12 = *(v3 + 8);
  v12(v11, v2);
  if ((sub_20B66F1B0() & 1) == 0)
  {
    sub_20C13B574();
    v17 = sub_20C13BB74();
    v18 = sub_20C13D1D4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_20B517000, v17, v18, "Playback intent for inactive media player presenter", v19, 2u);
      MEMORY[0x20F2F6A40](v19, -1, -1);
    }

    v16 = v5;
    return (v12)(v16, v2);
  }

  if ((a1 & 0x100000000) == 0)
  {
    sub_20C13B574();
    v13 = sub_20C13BB74();
    v14 = sub_20C13D1D4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_20B517000, v13, v14, "Encountered unknown playback intent state", v15, 2u);
      MEMORY[0x20F2F6A40](v15, -1, -1);
    }

    v16 = v8;
    return (v12)(v16, v2);
  }

  if (!a1)
  {
    return sub_20B679750();
  }

  if (a1 == 1)
  {
    return sub_20B679A9C();
  }

  return sub_20B679434();
}

uint64_t sub_20B679434()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v20[-v7];
  if (sub_20B66F1B0())
  {
    sub_20C13B574();
    sub_20C13BB64();
    (*(v3 + 8))(v8, v2);
    swift_getObjectType();
    sub_20C138624();
    v20[4] = 1;
    sub_20B677958(0x100000003, v9);
    sub_20C138634();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v10 = *(v0 + 24);
      ObjectType = swift_getObjectType();
      (*(v10 + 128))(ObjectType, v10);
      swift_unknownObjectRelease();
    }

    *(v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_state) = 3;
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_nowPlayingUpdater), *(v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_nowPlayingUpdater + 24));
    return sub_20C138AB4();
  }

  else
  {
    sub_20C13B574();

    v13 = sub_20C13BB74();
    v14 = sub_20C13D1F4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136446210;
      v20[7] = *(v1 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_state);
      v17 = sub_20C13C9D4();
      v19 = sub_20B51E694(v17, v18, &v21);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_20B517000, v13, v14, "Cannot end playback when state is not active, state: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x20F2F6A40](v16, -1, -1);
      MEMORY[0x20F2F6A40](v15, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_20B679750()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v19 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650F0, &unk_20C1574A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  v8 = sub_20C134C04();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_gymKitConnectionSnapshot;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v12, v7, &unk_27C7650F0, &unk_20C1574A0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_20B520158(v7, &unk_27C7650F0, &unk_20C1574A0);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    if ((sub_20C134BF4() & 0x100000000) != 0)
    {
      v13 = sub_20C134BE4();
      if (v13 == sub_20C134BE4() || (v14 = sub_20C134BE4(), v14 == sub_20C134BE4()))
      {
        sub_20C13B594();
        v15 = sub_20C13BB74();
        v16 = sub_20C13D1F4();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
          _os_log_impl(&dword_20B517000, v15, v16, "GymKit: Resuming sync playback", v17, 2u);
          MEMORY[0x20F2F6A40](v17, -1, -1);
        }

        (*(v19 + 8))(v4, v2);
        swift_getObjectType();
        sub_20C1386A4();
      }
    }

    (*(v9 + 8))(v11, v8);
  }

  swift_getObjectType();
  return sub_20C138724();
}

uint64_t sub_20B679A9C()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v39 = *(v2 - 8);
  v40 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650F0, &unk_20C1574A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v37 - v9;
  v11 = sub_20C134C04();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_gymKitConnectionSnapshot;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v15, v10, &unk_27C7650F0, &unk_20C1574A0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_20B520158(v10, &unk_27C7650F0, &unk_20C1574A0);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    if ((sub_20C134BF4() & 0x100000000) != 0)
    {
      v16 = sub_20C134BE4();
      if (v16 == sub_20C134BE4() || (v17 = sub_20C134BE4(), v17 == sub_20C134BE4()))
      {
        sub_20C13B594();
        v18 = sub_20C13BB74();
        v19 = sub_20C13D1F4();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&dword_20B517000, v18, v19, "GymKit: Suspending sync playback for pause", v20, 2u);
          MEMORY[0x20F2F6A40](v20, -1, -1);
        }

        v21 = v40;
        v39 = *(v39 + 8);
        (v39)(v7, v40);
        swift_getObjectType();
        sub_20C1386D4();
        sub_20C13B534();
        v22 = sub_20C13BB74();
        v23 = sub_20C13D1F4();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v37 = v24;
          v38 = swift_slowAlloc();
          v41 = v38;
          *v24 = 136446210;
          v25 = sub_20C134BD4();
          v27 = sub_20B51E694(v25, v26, &v41);

          v28 = v37;
          *(v37 + 1) = v27;
          v29 = v23;
          v30 = v28;
          _os_log_impl(&dword_20B517000, v22, v29, "Pause intent with GymKit connection state: %{public}s", v28, 0xCu);
          v31 = v38;
          __swift_destroy_boxed_opaque_existential_1(v38);
          MEMORY[0x20F2F6A40](v31, -1, -1);
          MEMORY[0x20F2F6A40](v30, -1, -1);

          v32 = v4;
          v33 = v40;
        }

        else
        {

          v32 = v4;
          v33 = v21;
        }

        (v39)(v32, v33);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v34 = *(v1 + 24);
          ObjectType = swift_getObjectType();
          (*(v34 + 152))(1, ObjectType, v34);
          swift_unknownObjectRelease();
        }
      }
    }

    (*(v12 + 8))(v14, v11);
  }

  swift_getObjectType();
  return sub_20C138714();
}

uint64_t sub_20B679F54(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = sub_20C134C04();
  v39 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v38 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650F0, &unk_20C1574A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v38 - v12;
  v14 = sub_20C138184();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AF0, &unk_20C1523F0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v38 - v19;
  result = sub_20B66F1B0();
  if (result)
  {
    v22 = OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_playbackSnapshot;
    swift_beginAccess();
    sub_20B52F9E8(v3 + v22, v20, &unk_27C768AF0, &unk_20C1523F0);
    if ((*(v15 + 48))(v20, 1, v14))
    {
      sub_20B520158(v20, &unk_27C768AF0, &unk_20C1523F0);
      v23 = a1;
    }

    else
    {
      (*(v15 + 16))(v17, v20, v14);
      sub_20B520158(v20, &unk_27C768AF0, &unk_20C1523F0);
      v24 = sub_20C138174();
      (*(v15 + 8))(v17, v14);
      v23 = a1;
      if ((v24 & 0x100000000) != 0)
      {
        v25 = sub_20C138164();
        if (v25 != sub_20C138164() && a1 == 2 && swift_unknownObjectWeakLoadStrong())
        {
          v26 = *(v3 + 24);
          ObjectType = swift_getObjectType();
          (*(v26 + 152))(0, ObjectType, v26);
          swift_unknownObjectRelease();
        }
      }
    }

    v28 = sub_20C13CDF4();
    (*(*(v28 - 8) + 56))(v13, 1, 1, v28);
    v29 = swift_allocObject();
    swift_weakInit();
    sub_20C13CDA4();

    v30 = sub_20C13CD94();
    v31 = swift_allocObject();
    v32 = MEMORY[0x277D85700];
    v31[2] = v30;
    v31[3] = v32;
    v31[4] = v29;

    sub_20B6380FC(0, 0, v13, &unk_20C153BE8, v31);

    v33 = sub_20C138154();
    v40[0] = 1;
    sub_20B677958((v33 | 0x100000000), a2);
    v34 = OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_gymKitConnectionSnapshot;
    swift_beginAccess();
    sub_20B52F9E8(v3 + v34, v10, &unk_27C7650F0, &unk_20C1574A0);
    v35 = v39;
    if ((*(v39 + 48))(v10, 1, v6))
    {
      return sub_20B520158(v10, &unk_27C7650F0, &unk_20C1574A0);
    }

    else
    {
      v36 = v38;
      (*(v35 + 16))(v38, v10, v6);
      sub_20B520158(v10, &unk_27C7650F0, &unk_20C1574A0);
      v37 = sub_20C134BF4();
      result = (*(v35 + 8))(v36, v6);
      if (v23 == 2 && (v37 & 0x1000000FFLL) == 0x100000004)
      {
        swift_getObjectType();
        return sub_20C138714();
      }
    }
  }

  return result;
}

uint64_t sub_20B67A4F4(double a1)
{
  v2 = v1;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = sub_20B66F1B0();
  if (result)
  {
    sub_20C13B574();
    v9 = sub_20C13BB74();
    v10 = sub_20C13D1F4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_20B517000, v9, v10, "Playback finished", v11, 2u);
      MEMORY[0x20F2F6A40](v11, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v12[12] = 1;
    result = sub_20B677958(0x100000003, a1);
    *(v2 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_state) = 3;
  }

  return result;
}

double sub_20B67A67C(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_20C13BB84();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  sub_20C13BB64();
  (*(v8 + 8))(v10, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v12 = Strong, v13 = sub_20C138AD4(), v12, v13))
  {
    if (a1)
    {
      [v13 hidePlaybackControlsImmediately];
    }
  }

  else
  {
    if (a1)
    {
      v14 = sub_20C138104();
      v15 = v14 == sub_20C138104();
    }

    else
    {
      v15 = 1;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v16 = *(v2 + 24);
      ObjectType = swift_getObjectType();
      (*(v16 + 160))(v15, ObjectType, v16);
      swift_unknownObjectRelease();
    }

    if (a1)
    {
      v18 = sub_20C138104();
      if (v18 != sub_20C138104())
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          v19 = *(v2 + 24);
          v20 = swift_getObjectType();
          (*(v19 + 192))(v20, v19);
          swift_unknownObjectRelease();
        }
      }
    }
  }

  v21 = OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_state;
  if (*(v2 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_state) <= 1u && *(v2 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_state))
  {

    if ((a1 & 1) == 0)
    {
      return sub_20B6776DC(1);
    }
  }

  else
  {
    v22 = sub_20C13DFF4();

    if ((v22 & 1) == 0 || (a1 & 1) == 0)
    {
      return sub_20B6776DC(1);
    }
  }

  *(v2 + v21) = 2;
  swift_getObjectType();
  v23 = sub_20C138644();
  if (v23)
  {
    v24 = v23;
    v25 = [v23 currentItem];

    if (v25)
    {
      v26 = sub_20C13CDF4();
      (*(*(v26 - 8) + 56))(v6, 1, 1, v26);
      v27 = swift_allocObject();
      v27[2] = 0;
      v27[3] = 0;
      v27[4] = v2;
      v27[5] = v25;

      sub_20B614F94(0, 0, v6, &unk_20C153BD0, v27);
    }
  }

  return sub_20B6776DC(1);
}

uint64_t sub_20B67AA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_20B52A9D4;

  return sub_20B674394(a5);
}

uint64_t sub_20B67AB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_20C13CDA4();
  v4[7] = sub_20C13CD94();
  v6 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20B67ABB4, v6, v5);
}

uint64_t sub_20B67ABB4()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v2 = Strong, v3 = swift_unknownObjectWeakLoadStrong(), v4 = *(v2 + 24), , v3))
  {
    ObjectType = swift_getObjectType();
    (*(v4 + 112))(ObjectType, v4);
    swift_unknownObjectRelease();
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  **(v0 + 40) = v6;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_20B67AC98()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B10, &unk_20C152410);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650F0, &unk_20C1574A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_20C13BB84();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  sub_20C13BB64();
  (*(v9 + 8))(v11, v8);
  sub_20C137DE4();
  v12 = OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_gymKitConnectionSnapshot;
  swift_beginAccess();
  sub_20B5DF2D4(v7, v1 + v12, &unk_27C7650F0, &unk_20C1574A0);
  swift_endAccess();
  sub_20C137CE4();
  sub_20B67AEC4(v4);
  return sub_20B520158(v4, &unk_27C768B10, &unk_20C152410);
}

uint64_t sub_20B67AEC4(uint64_t a1)
{
  v77 = sub_20C13BB84();
  v2 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v4 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v76 = &v67 - v6;
  MEMORY[0x28223BE20](v7);
  v74 = &v67 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v67 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B10, &unk_20C152410);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v67 - v13;
  v15 = sub_20C134CD4();
  MEMORY[0x28223BE20](v15);
  v73 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v72 = &v67 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v67 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v67 - v23;
  v26 = v25;
  sub_20B52F9E8(a1, v14, &unk_27C768B10, &unk_20C152410);
  if ((*(v26 + 48))(v14, 1, v15) == 1)
  {
    sub_20B520158(v14, &unk_27C768B10, &unk_20C152410);
    sub_20C13B594();
    v27 = sub_20C13BB74();
    v28 = sub_20C13D1F4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_20B517000, v27, v28, "Client: No MultiUserSession on Session", v29, 2u);
      MEMORY[0x20F2F6A40](v29, -1, -1);
    }

    return (*(v2 + 8))(v4, v77);
  }

  (*(v26 + 32))(v24, v14, v15);
  sub_20C13B594();
  v68 = *(v26 + 16);
  v69 = v26 + 16;
  v68(v21, v24, v15);
  v31 = sub_20C13BB74();
  v32 = sub_20C13D1F4();
  v33 = v24;
  if (os_log_type_enabled(v31, v32))
  {
    v34 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v79[0] = v67;
    *v34 = 136315138;
    sub_20B682E60(&qword_27C763200, MEMORY[0x277D50FB0], MEMORY[0x277D50FB8]);
    v35 = sub_20C13DFA4();
    v36 = v2;
    v37 = v33;
    v70 = v36;
    v38 = v26;
    v40 = v39;
    v71 = *(v38 + 8);
    v71(v21, v15);
    v41 = sub_20B51E694(v35, v40, v79);
    v42 = v77;
    v33 = v37;
    v2 = v70;

    *(v34 + 4) = v41;
    _os_log_impl(&dword_20B517000, v31, v32, "Client: MultiUserSession on Session %s", v34, 0xCu);
    v43 = v67;
    __swift_destroy_boxed_opaque_existential_1(v67);
    MEMORY[0x20F2F6A40](v43, -1, -1);
    MEMORY[0x20F2F6A40](v34, -1, -1);

    v44 = *(v2 + 8);
    v44(v11, v42);
  }

  else
  {

    v71 = *(v26 + 8);
    v71(v21, v15);
    v44 = *(v2 + 8);
    v44(v11, v77);
  }

  v45 = sub_20C134CB4();
  v47 = v76;
  if (v48)
  {
    if (v45 == 1)
    {
      v70 = v2;
      v49 = v68;
      v68(v72, v33, v15);
      v50 = v75;
      sub_20B51CC64(v75 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_multiUserClient, v79);
      sub_20B51CC64(v50 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_sessionClient, v78);
      sub_20C1384B4();
      swift_allocObject();
      swift_unknownObjectRetain();
      v76 = sub_20C1384A4();
      v51 = v74;
      sub_20C13B594();
      v52 = v73;
      v49(v73, v33, v15);
      v53 = sub_20C13BB74();
      v54 = sub_20C13D1F4();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = v52;
        v56 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v79[0] = v72;
        *v56 = 136315138;
        sub_20B682E60(&qword_27C763200, MEMORY[0x277D50FB0], MEMORY[0x277D50FB8]);
        v57 = v55;
        v58 = sub_20C13DFA4();
        v60 = v59;
        v71(v57, v15);
        v61 = sub_20B51E694(v58, v60, v79);

        *(v56 + 4) = v61;
        _os_log_impl(&dword_20B517000, v53, v54, "Client: SessionMediaPlayerPresenter will coordinate playback for %s", v56, 0xCu);
        v62 = v72;
        __swift_destroy_boxed_opaque_existential_1(v72);
        MEMORY[0x20F2F6A40](v62, -1, -1);
        MEMORY[0x20F2F6A40](v56, -1, -1);

        v63 = v74;
      }

      else
      {

        v71(v52, v15);
        v63 = v51;
      }

      v44(v63, v77);
      swift_getObjectType();
      sub_20C1386B4();

      return (v71)(v33, v15);
    }
  }

  else
  {
    sub_20B583F4C(v45, v46, 0);
  }

  sub_20C13B594();
  v64 = sub_20C13BB74();
  v65 = sub_20C13D1F4();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&dword_20B517000, v64, v65, "Client: SessionMediaPlayerPresenter ignoring session update because state isn't joined", v66, 2u);
    MEMORY[0x20F2F6A40](v66, -1, -1);
  }

  v44(v47, v77);
  return (v71)(v33, v15);
}

double sub_20B67B77C()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  sub_20C13BB64();
  (*(v3 + 8))(v5, v2);
  *(v1 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_state) = 3;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 176))(0, ObjectType, v6);
    swift_unknownObjectRelease();
  }

  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_nowPlayingUpdater), *(v1 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_nowPlayingUpdater + 24));
  sub_20C138AB4();
  swift_getObjectType();
  sub_20C138634();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v1 + 24);
    v9 = swift_getObjectType();
    (*(v8 + 128))(v9, v8);
    swift_unknownObjectRelease();
  }

  if (sub_20C1386F4())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = *(v1 + 24);
      v12 = swift_getObjectType();
      (*(v11 + 232))(v12, v11);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_20B67B9A4(uint64_t a1, uint64_t a2)
{
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  swift_getObjectType();
  sub_20C138624();
  v10 = v9;
  sub_20C134464();
  v12 = v11;
  sub_20C13B574();
  v13 = sub_20C13BB74();
  v14 = sub_20C13D1F4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134218240;
    *(v15 + 4) = v10;
    *(v15 + 12) = 2048;
    *(v15 + 14) = v12;
    _os_log_impl(&dword_20B517000, v13, v14, "[SessionMediaPlayerPresenter] seekBy complete, currentTime: %f, %f", v15, 0x16u);
    MEMORY[0x20F2F6A40](v15, -1, -1);
  }

  v16 = *(v3 + 8);
  result = v16(v8, v2);
  if (v12 <= v10)
  {
    sub_20C13B574();
    v18 = sub_20C13BB74();
    v19 = sub_20C13D1F4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_20B517000, v18, v19, "[SessionMediaPlayerPresenter] seekBy has reached the end, ending playback", v20, 2u);
      MEMORY[0x20F2F6A40](v20, -1, -1);
    }

    v16(v5, v2);
    return sub_20B679434();
  }

  return result;
}

uint64_t sub_20B67BBFC@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v136 = a2;
  v4 = a1;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762350, &qword_20C16DB10);
  v118 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v116 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = v5;
  MEMORY[0x28223BE20](v6);
  v117 = &v106 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764600, &qword_20C153B88);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v121 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = v10;
  MEMORY[0x28223BE20](v11);
  v122 = &v106 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762370, &qword_20C153BB0);
  MEMORY[0x28223BE20](v13 - 8);
  v128 = &v106 - v14;
  v126 = sub_20C135334();
  v125 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v124 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_20C135D54();
  v132 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v114 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = v16;
  MEMORY[0x28223BE20](v17);
  v129 = &v106 - v18;
  v127 = sub_20C13BB84();
  v131 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v112 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v123 = &v106 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00, &unk_20C1500B0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v106 - v23;
  v25 = sub_20C135174();
  v134 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v27 = &v106 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v133 = &v106 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v106 - v31;
  v33 = sub_20C136C64();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v135 = &v106 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B51CC64(v3 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_remoteKeyDeliveryClient, &v144);
  sub_20B51CC64(v3 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_keyDeliveryClient, &v141);
  if (v4 != 3)
  {
    v41 = v142;
    v42 = v143;
    v43 = __swift_project_boxed_opaque_existential_1(&v141, v142);
    v139 = v41;
    v140 = *(v42 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v138);
    (*(*(v41 - 8) + 16))(boxed_opaque_existential_1, v43, v41);
    sub_20B51CC64(&v138, &v137);
    v45 = swift_allocObject();
    sub_20B51C710(&v137, v45 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763210, &unk_20C153BB8);
LABEL_8:
    sub_20C137CA4();
    goto LABEL_9;
  }

  v109 = v9;
  v110 = v8;
  v36 = v25;
  v111 = v3;
  v37 = (v3 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_remoteBrowsingSource);
  __swift_project_boxed_opaque_existential_1(v37, v37[3]);
  sub_20C13B174();
  if ((*(v34 + 48))(v32, 1, v33) == 1)
  {
    v38 = &qword_27C768690;
    v39 = &unk_20C14FD90;
    v40 = v32;
LABEL_7:
    sub_20B520158(v40, v38, v39);
    v48 = v145;
    v49 = v146;
    v50 = __swift_project_boxed_opaque_existential_1(&v144, v145);
    v139 = v48;
    v140 = *(v49 + 8);
    v51 = __swift_allocate_boxed_opaque_existential_1(&v138);
    (*(*(v48 - 8) + 16))(v51, v50, v48);
    sub_20B51CC64(&v138, &v137);
    v52 = swift_allocObject();
    sub_20B51C710(&v137, v52 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763210, &unk_20C153BB8);
    goto LABEL_8;
  }

  v46 = v135;
  (*(v34 + 32))(v135, v32, v33);
  __swift_project_boxed_opaque_existential_1(v37, v37[3]);
  sub_20C13B184();
  v47 = v134;
  if ((*(v134 + 48))(v24, 1, v25) == 1)
  {
    (*(v34 + 8))(v46, v33);
    v38 = &unk_27C76BC00;
    v39 = &unk_20C1500B0;
    v40 = v24;
    goto LABEL_7;
  }

  v107 = v34;
  v108 = v33;
  v54 = v133;
  (*(v47 + 32))(v133, v24, v25);
  v55 = v123;
  sub_20C13B574();
  (*(v47 + 16))(v27, v54, v25);
  v56 = sub_20C13BB74();
  v57 = sub_20C13D1F4();
  v58 = os_log_type_enabled(v56, v57);
  v106 = v25;
  if (v58)
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *&v138 = v60;
    *v59 = 136446210;
    sub_20B682E60(&unk_27C76B9B0, MEMORY[0x277D515D0], MEMORY[0x277D515E8]);
    v61 = sub_20C13DFA4();
    v63 = v62;
    v64 = *(v47 + 8);
    v64(v27, v36);
    v65 = sub_20B51E694(v61, v63, &v138);

    *(v59 + 4) = v65;
    _os_log_impl(&dword_20B517000, v56, v57, "We have an active participant: %{public}s. Checking if local account matches!", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v60);
    MEMORY[0x20F2F6A40](v60, -1, -1);
    MEMORY[0x20F2F6A40](v59, -1, -1);
  }

  else
  {

    v64 = *(v47 + 8);
    v64(v27, v25);
  }

  v66 = *(v131 + 8);
  v67 = v127;
  v66(v55, v127);
  v68 = v135;
  v69 = v130;
  v70 = v132;
  v71 = v111;
  v72 = v124;
  sub_20C136C24();
  v73 = v128;
  sub_20C135314();
  (*(v125 + 8))(v72, v126);
  if ((*(v70 + 48))(v73, 1, v69) != 1)
  {
    v83 = *(v70 + 32);
    v84 = v129;
    v83(v129, v73, v69);
    __swift_project_boxed_opaque_existential_1((v71 + 200), *(v71 + 224));
    v85 = v117;
    sub_20C13B934();
    v86 = v114;
    (*(v70 + 16))(v114, v84, v69);
    sub_20B51CC64(&v141, &v138);
    v87 = (*(v70 + 80) + 16) & ~*(v70 + 80);
    v88 = (v113 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
    v89 = swift_allocObject();
    v83((v89 + v87), v86, v69);
    sub_20B51C710(&v138, v89 + v88);
    v90 = v118;
    v91 = v116;
    v92 = v120;
    (*(v118 + 16))(v116, v85, v120);
    v93 = (*(v90 + 80) + 16) & ~*(v90 + 80);
    v94 = (v115 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
    v95 = swift_allocObject();
    (*(v90 + 32))(v95 + v93, v91, v92);
    v96 = (v95 + v94);
    *v96 = sub_20B682040;
    v96[1] = v89;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763210, &unk_20C153BB8);
    v97 = v122;
    sub_20C137C94();
    (*(v90 + 8))(v85, v92);
    sub_20B51CC64(&v144, &v138);
    v98 = swift_allocObject();
    sub_20B51C710(&v138, v98 + 16);
    v99 = v109;
    v100 = v121;
    v101 = v110;
    (*(v109 + 16))(v121, v97, v110);
    v102 = (*(v99 + 80) + 16) & ~*(v99 + 80);
    v103 = (v119 + v102 + 7) & 0xFFFFFFFFFFFFFFF8;
    v104 = swift_allocObject();
    (*(v99 + 32))(v104 + v102, v100, v101);
    v105 = (v104 + v103);
    *v105 = sub_20B682114;
    v105[1] = v98;
    sub_20C137C94();
    (*(v99 + 8))(v97, v101);
    (*(v132 + 8))(v129, v69);
    (*(v134 + 8))(v133, v106);
    (*(v107 + 8))(v135, v108);
    goto LABEL_10;
  }

  sub_20B520158(v73, &unk_27C762370, &qword_20C153BB0);
  v74 = v112;
  sub_20C13B574();
  v75 = sub_20C13BB74();
  v76 = sub_20C13D1F4();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    *v77 = 0;
    _os_log_impl(&dword_20B517000, v75, v76, "No local subscriber account. Using remote key delivery client!", v77, 2u);
    MEMORY[0x20F2F6A40](v77, -1, -1);
  }

  v66(v74, v67);
  v78 = v145;
  v79 = v146;
  v80 = __swift_project_boxed_opaque_existential_1(&v144, v145);
  v139 = v78;
  v140 = *(v79 + 8);
  v81 = __swift_allocate_boxed_opaque_existential_1(&v138);
  (*(*(v78 - 8) + 16))(v81, v80, v78);
  sub_20B51CC64(&v138, &v137);
  v82 = swift_allocObject();
  sub_20B51C710(&v137, v82 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763210, &unk_20C153BB8);
  sub_20C137CA4();
  v64(v133, v106);
  (*(v107 + 8))(v68, v108);
LABEL_9:
  __swift_destroy_boxed_opaque_existential_1(&v138);
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(&v141);
  return __swift_destroy_boxed_opaque_existential_1(&v144);
}

uint64_t sub_20B67CC8C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a3;
  v7 = sub_20C135D54();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C13BB84();
  v37 = *(v11 - 8);
  v38 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  sub_20C13B574();
  (*(v8 + 16))(v10, a2, v7);
  v15 = v14;
  v16 = sub_20C13BB74();
  v17 = sub_20C13D1F4();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v36 = a4;
    v19 = v18;
    v20 = swift_slowAlloc();
    v34 = v20;
    v35 = swift_slowAlloc();
    v41[0] = v35;
    *v19 = 141558786;
    *(v19 + 4) = 1752392040;
    *(v19 + 12) = 2112;
    *(v19 + 14) = v15;
    *v20 = v15;
    *(v19 + 22) = 2160;
    *(v19 + 24) = 1752392040;
    *(v19 + 32) = 2080;
    sub_20B682E60(&qword_27C763218, MEMORY[0x277D52180], MEMORY[0x277D52188]);
    v21 = v15;
    v22 = sub_20C13DFA4();
    v24 = v23;
    (*(v8 + 8))(v10, v7);
    v25 = sub_20B51E694(v22, v24, v41);

    *(v19 + 34) = v25;
    _os_log_impl(&dword_20B517000, v16, v17, "Local account (%{mask.hash}@) matches remote participant account (%{mask.hash}s. Using local key delivery client!", v19, 0x2Au);
    v26 = v34;
    sub_20B520158(v34, &unk_27C762E30, &unk_20C150580);
    MEMORY[0x20F2F6A40](v26, -1, -1);
    v27 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x20F2F6A40](v27, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  (*(v37 + 8))(v13, v38);
  v28 = v39[3];
  v29 = v39[4];
  v30 = __swift_project_boxed_opaque_existential_1(v39, v28);
  v41[3] = v28;
  v41[4] = *(v29 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v41);
  (*(*(v28 - 8) + 16))(boxed_opaque_existential_1, v30, v28);
  sub_20B51CC64(v41, v40);
  v32 = swift_allocObject();
  sub_20B51C710(v40, v32 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763210, &unk_20C153BB8);
  sub_20C137CA4();
  return __swift_destroy_boxed_opaque_existential_1(v41);
}

uint64_t sub_20B67D0B0@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  v10 = a1;
  v11 = sub_20C13BB74();
  v12 = sub_20C13D1F4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v25[1] = a3;
    v14 = v13;
    v15 = swift_slowAlloc();
    v27[0] = v15;
    *v14 = 136446210;
    swift_getErrorValue();
    v16 = MEMORY[0x20F2F5850](v25[3], v25[4]);
    v18 = sub_20B51E694(v16, v17, v27);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_20B517000, v11, v12, "Failed to match local and remote participant account. Using remote key delivery client! %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x20F2F6A40](v15, -1, -1);
    MEMORY[0x20F2F6A40](v14, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v20 = a2[3];
  v19 = a2[4];
  v21 = __swift_project_boxed_opaque_existential_1(a2, v20);
  v27[3] = v20;
  v27[4] = *(v19 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  (*(*(v20 - 8) + 16))(boxed_opaque_existential_1, v21, v20);
  sub_20B51CC64(v27, v26);
  v23 = swift_allocObject();
  sub_20B51C710(v26, v23 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763210, &unk_20C153BB8);
  sub_20C137CA4();
  return __swift_destroy_boxed_opaque_existential_1(v27);
}

void sub_20B67D354(uint64_t a1)
{
  v2 = sub_20C132614();
  v48 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C13BB84();
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x28223BE20](v5);
  v49 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v45 = &v45 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v45 - v10;
  v12 = sub_20C1344B4();
  v14 = v13;
  v16 = v15;
  v17 = sub_20C133B84();
  sub_20B583F4C(v12, v14, v16 & 1);
  if ((v17 & 1) == 0)
  {
    sub_20C13B574();
    (*(v48 + 16))(v4, a1, v2);

    v26 = sub_20C13BB74();
    v27 = sub_20C13D1F4();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v52[0] = v29;
      *v28 = 141558530;
      *(v28 + 4) = 1752392040;
      *(v28 + 12) = 2080;
      sub_20C1344C4();
      sub_20B682E60(&qword_27C769BF0, MEMORY[0x277D50820], MEMORY[0x277D50838]);
      v30 = sub_20C13DFA4();
      v32 = sub_20B51E694(v30, v31, v52);

      *(v28 + 14) = v32;
      *(v28 + 22) = 2082;
      sub_20B682E60(&qword_27C763208, MEMORY[0x277CC8900], MEMORY[0x277CC8910]);
      v33 = sub_20C13DFA4();
      v35 = v34;
      (*(v48 + 8))(v4, v2);
      v36 = sub_20B51E694(v33, v35, v52);

      *(v28 + 24) = v36;
      _os_log_impl(&dword_20B517000, v26, v27, "Audio interruption not handled for non audio only workout %{mask.hash}s: %{public}s", v28, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F2F6A40](v29, -1, -1);
      MEMORY[0x20F2F6A40](v28, -1, -1);
    }

    else
    {

      (*(v48 + 8))(v4, v2);
    }

    (*(v46 + 8))(v49, v47);
    return;
  }

  v18 = sub_20C132604();
  if (!v18)
  {
    return;
  }

  v19 = v18;
  v50 = sub_20C13C954();
  v51 = v20;
  sub_20C13DC04();
  if (!*(v19 + 16))
  {
    goto LABEL_20;
  }

  v21 = sub_20B65B190(v52);
  if ((v22 & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_20B51F1D8(*(v19 + 56) + 32 * v21, v53);
  sub_20B51D9C4(v52);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

  v23 = v50;
  sub_20C13B574();
  sub_20C13BB64();
  v24 = v47;
  v25 = *(v46 + 8);
  v25(v11, v47);
  if (v23)
  {
    if (v23 == 1)
    {

      swift_getObjectType();
LABEL_9:
      sub_20C138714();
      return;
    }

    v41 = v45;
    sub_20C13B574();
    v42 = sub_20C13BB74();
    v43 = sub_20C13D1F4();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 134349056;
      *(v44 + 4) = v23;
      _os_log_impl(&dword_20B517000, v42, v43, "[SessionMediaPlayerPresenter] Ignoring unknown interruption of type: %{public}lu", v44, 0xCu);
      MEMORY[0x20F2F6A40](v44, -1, -1);
    }

    v25(v41, v24);
    return;
  }

  v50 = sub_20C13C954();
  v51 = v37;
  sub_20C13DC04();
  if (!*(v19 + 16) || (v38 = sub_20B65B190(v52), (v39 & 1) == 0))
  {
LABEL_20:

    sub_20B51D9C4(v52);
    return;
  }

  sub_20B51F1D8(*(v19 + 56) + 32 * v38, v53);
  sub_20B51D9C4(v52);

  if (swift_dynamicCast())
  {
    v40 = v50;
    swift_getObjectType();
    if ((v40 & 1) == 0)
    {
      goto LABEL_9;
    }

    sub_20C138724();
  }
}

uint64_t *sub_20B67DAE4()
{
  sub_20B583E6C((v0 + 2));
  MEMORY[0x20F2F6B80](v0 + 4);
  sub_20B583ECC(v0[5], v0[6]);
  sub_20B583ECC(v0[7], v0[8]);
  sub_20B583ECC(v0[9], v0[10]);
  sub_20B583ECC(v0[11], v0[12]);
  sub_20B583ECC(v0[13], v0[14]);
  sub_20B583ECC(v0[15], v0[16]);
  sub_20B583ECC(v0[17], v0[18]);
  sub_20B583ECC(v0[19], v0[20]);
  sub_20B583ECC(v0[21], v0[22]);
  sub_20B583ECC(v0[23], v0[24]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 25);
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_catalogWorkout;
  v2 = sub_20C1344C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_externalOverlayPresenter));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_keyDeliveryClient));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_mediaTagStringBuilder));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_nowPlayingUpdater));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_remoteBrowsingSource));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_remoteKeyDeliveryClient));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_sessionClient));
  sub_20B64B688(v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_sessionOrigin);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_sessionPreferenceClient));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_sessionRouteMonitor));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_storefrontLocalizer));

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_multiUserClient));
  swift_unknownObjectRelease();
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_playbackSnapshot, &unk_27C768AF0, &unk_20C1523F0);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_lastForegroundPlaybackSnapshot, &unk_27C768AF0, &unk_20C1523F0);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_gymKitConnectionSnapshot, &unk_27C7650F0, &unk_20C1574A0);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_currentMusicTrack, &qword_27C763248, &unk_20C153CA0);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_outputDeviceChangedObserver, &unk_27C768A00, &qword_20C152F90);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_outputDevicesChangedObserver, &unk_27C768A00, &qword_20C152F90);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_multiUserSessionRequiringResync, &unk_27C768B10, &unk_20C152410);
  v3 = OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_activityTypeBehavior;
  v4 = sub_20C137254();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter__preventTimeJumpEnabled;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0, &unk_20C14F3E0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t sub_20B67DE30()
{
  sub_20B67DAE4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SessionMediaPlayerPresenter(uint64_t a1)
{
  result = qword_27C7631C0;
  if (!qword_27C7631C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B67DEDC(uint64_t a1)
{
  sub_20C1344C4();
  if (v1 <= 0x3F)
  {
    sub_20C13A484();
    if (v2 <= 0x3F)
    {
      sub_20B67E248(319, &qword_27C7631D0, MEMORY[0x277D53C58]);
      if (v3 <= 0x3F)
      {
        sub_20B67E248(319, &qword_27C7631D8, MEMORY[0x277D50E70]);
        if (v4 <= 0x3F)
        {
          sub_20B67E248(319, &qword_27C7631E0, MEMORY[0x277D4FEC8]);
          if (v5 <= 0x3F)
          {
            sub_20B67E248(319, &qword_27C7631E8, MEMORY[0x277D50FB0]);
            if (v6 <= 0x3F)
            {
              sub_20C137254();
              if (v7 <= 0x3F)
              {
                sub_20B52432C();
                if (v8 <= 0x3F)
                {
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_20B67E248(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20C13D914();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for DownloadButtonAddStyle(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DownloadButtonAddStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_20B67E3F0()
{
  result = qword_27C7631F0;
  if (!qword_27C7631F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7631F0);
  }

  return result;
}

uint64_t sub_20B67E444(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v7 + 8))(v9, v6);
  v10 = v3[5];
  v11 = v3[6];
  v3[5] = a1;
  v3[6] = a2;

  result = sub_20B583ECC(v10, v11);
  v13 = v3[13];
  if (v13)
  {
    v14 = v3[14];

    v13(v15);
    return sub_20B583ECC(v13, v14);
  }

  return result;
}

uint64_t sub_20B67E598()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764600, &qword_20C153B88);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v66 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v10 = *(v9 - 8);
  v74 = v9;
  v75 = v10;
  MEMORY[0x28223BE20](v9);
  v69 = v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v70 = v66 - v13;
  MEMORY[0x28223BE20](v14);
  v71 = v66 - v15;
  MEMORY[0x28223BE20](v16);
  v72 = v66 - v17;
  v78 = v18;
  MEMORY[0x28223BE20](v19);
  v73 = v66 - v20;
  v21 = sub_20C13BB84();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  sub_20C13BB64();
  (*(v22 + 8))(v24, v21);
  v25 = [objc_allocWithZone(sub_20C138AF4()) init];
  sub_20B682E60(&qword_27C7631F8, type metadata accessor for SessionMediaPlayerPresenter, &unk_20C153B60);
  swift_unknownObjectRetain();
  v26 = v25;
  sub_20C138AE4();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v27 = *(v1 + 24);
    swift_getObjectType();
    v76 = v1;
    v67 = v3;
    v28 = v2;
    v29 = *(v27 + 72);
    v30 = v25;
    v31 = v5;
    v32 = v8;
    v33 = v30;
    v29();
    v2 = v28;
    v3 = v67;
    v1 = v76;

    v8 = v32;
    v5 = v31;
    swift_unknownObjectRelease();
  }

  v68 = v26;
  swift_unknownObjectWeakAssign();
  sub_20B67BBFC(*(v1 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_platform), v8);
  (*(v3 + 16))(v5, v8, v2);
  v34 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v35 = (v77 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  (*(v3 + 32))(v36 + v34, v5, v2);
  v37 = (v36 + v35);
  *v37 = sub_20B681E38;
  v37[1] = v1;

  v38 = v70;
  sub_20C137C94();
  (*(v3 + 8))(v8, v2);
  v39 = swift_allocObject();
  swift_weakInit();
  v40 = swift_allocObject();
  *(v40 + 16) = sub_20B681E68;
  *(v40 + 24) = v39;
  v41 = v74;
  v42 = v75;
  v43 = *(v75 + 16);
  v67 = v75 + 16;
  v44 = v69;
  v43(v69, v38, v74);
  v45 = v43;
  v46 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v66[1] = *(v42 + 80);
  v77 = v46;
  v47 = (v78 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  v49 = *(v42 + 32);
  v76 = v42 + 32;
  v78 = v49;
  v49(v48 + v46, v44, v41);
  v50 = (v48 + v47);
  *v50 = sub_20B64B960;
  v50[1] = v40;
  v51 = v71;
  sub_20C137C94();
  v75 = *(v42 + 8);
  (v75)(v38, v41);
  v52 = swift_allocObject();
  swift_weakInit();
  v53 = swift_allocObject();
  *(v53 + 16) = sub_20B681E70;
  *(v53 + 24) = v52;
  v54 = swift_allocObject();
  *(v54 + 16) = sub_20B5DF3B8;
  *(v54 + 24) = v53;
  v45(v38, v51, v41);
  v55 = swift_allocObject();
  v78(v55 + v77, v38, v41);
  v56 = (v55 + v47);
  *v56 = sub_20B5DF3D4;
  v56[1] = v54;
  v57 = v72;
  sub_20C137C94();
  (v75)(v51, v41);
  v58 = swift_allocObject();
  *(v58 + 16) = sub_20B680A00;
  *(v58 + 24) = 0;
  v45(v51, v57, v41);
  v59 = swift_allocObject();
  v78(v59 + v77, v51, v41);
  v60 = (v59 + v47);
  *v60 = sub_20B5DF204;
  v60[1] = v58;
  v61 = v73;
  sub_20C137C94();
  v62 = v75;
  (v75)(v57, v41);
  v63 = sub_20C137CB4();
  v64 = swift_allocObject();
  *(v64 + 16) = 0;
  *(v64 + 24) = 0;
  v63(sub_20B52347C, v64);

  return v62(v61, v41);
}

void sub_20B67EE28(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v128 = a1;
  v129 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BBF0, &unk_20C1574B0);
  MEMORY[0x28223BE20](v4 - 8);
  v117 = v108 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765110, &unk_20C152460);
  MEMORY[0x28223BE20](v6 - 8);
  v116 = v108 - v7;
  v130 = sub_20C136194();
  v115 = *(v130 - 1);
  MEMORY[0x28223BE20](v130);
  v125 = v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C137EA4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764610, &unk_20C18EFE0);
  v122 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v119 = v13;
  v120 = v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v121 = v108 - v15;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD40, &unk_20C153BA0);
  v113 = *(v114 - 8);
  v16 = *(v113 + 64);
  MEMORY[0x28223BE20](v114);
  v17 = v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v108 - v19;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v133 = *(v124 - 8);
  v21 = *(v133 + 64);
  MEMORY[0x28223BE20](v124);
  v123 = v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v127 = v108 - v23;
  MEMORY[0x28223BE20](v24);
  v132 = v108 - v25;
  MEMORY[0x28223BE20](v26);
  v131 = v108 - v27;
  v28 = sub_20C13A484();
  MEMORY[0x28223BE20](v28);
  v30 = v108 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B64B624(a2 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_sessionOrigin, v30);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v126 = a2;
  if (EnumCaseMultiPayload != 1)
  {
    sub_20B64B688(v30);
    v41 = swift_allocBox();
    MEMORY[0x20F2ED8D0]();
    v115 = swift_allocObject();
    *(v115 + 16) = sub_20C135444() & 1;
    v111 = (a2 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_sessionPreferenceClient);
    __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_sessionPreferenceClient), *(a2 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_sessionPreferenceClient + 24));
    sub_20C139C94();
    v42 = swift_allocObject();
    *(v42 + 16) = sub_20B681F28;
    *(v42 + 24) = v41;
    v112 = v41;
    v43 = v113;
    v44 = v114;
    (*(v113 + 16))(v17, v20, v114);
    v45 = (*(v43 + 80) + 16) & ~*(v43 + 80);
    v46 = swift_allocObject();
    (*(v43 + 32))(v46 + v45, v17, v44);
    v47 = (v46 + ((v16 + v45 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v47 = sub_20B681F44;
    v47[1] = v42;

    v48 = v132;
    sub_20C137C94();
    (*(v43 + 8))(v20, v44);
    v110 = 0x800000020C195F10;
    v49 = swift_allocObject();
    v49[2] = 0xD00000000000002BLL;
    v49[3] = 0x800000020C195F10;
    v49[4] = 779;
    v50 = swift_allocObject();
    *(v50 + 16) = sub_20B5D9EA0;
    *(v50 + 24) = v49;
    v51 = v133;
    v52 = *(v133 + 16);
    v108[1] = v133 + 16;
    v109 = v52;
    v53 = v127;
    v54 = v124;
    v52(v127, v48, v124);
    v55 = *(v51 + 80);
    v114 = v55;
    v56 = (v55 + 16) & ~v55;
    v117 = v56;
    v57 = (v21 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
    v113 = v57;
    v58 = swift_allocObject();
    v59 = *(v51 + 32);
    v116 = (v51 + 32);
    v125 = v59;
    (v59)(v58 + v56, v53, v54);
    v60 = (v58 + v57);
    *v60 = sub_20B5D9EC0;
    v60[1] = v50;
    sub_20C137C94();
    v61 = *(v51 + 8);
    v133 = v51 + 8;
    v130 = v61;
    v61(v48, v54);
    __swift_project_boxed_opaque_existential_1(v111, v111[3]);
    v62 = v121;
    sub_20C139D14();
    v63 = swift_allocObject();
    v64 = v115;
    *(v63 + 16) = sub_20B681F9C;
    *(v63 + 24) = v64;
    v65 = v122;
    v66 = v120;
    v67 = v118;
    (*(v122 + 16))(v120, v62, v118);
    v68 = (*(v65 + 80) + 16) & ~*(v65 + 80);
    v69 = (v119 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
    v70 = swift_allocObject();
    (*(v65 + 32))(v70 + v68, v66, v67);
    v71 = (v70 + v69);
    *v71 = sub_20B681FE4;
    v71[1] = v63;

    v72 = v127;
    sub_20C137C94();
    (*(v65 + 8))(v62, v67);
    v73 = swift_allocObject();
    v73[2] = 0xD00000000000002BLL;
    v73[3] = v110;
    v73[4] = 783;
    v74 = swift_allocObject();
    *(v74 + 16) = sub_20B5DF5EC;
    *(v74 + 24) = v73;
    v75 = v123;
    v76 = v72;
    v77 = v109;
    v109(v123, v72, v54);
    v78 = v113;
    v79 = v114;
    v80 = swift_allocObject();
    (v125)(&v117[v80], v75, v54);
    v81 = (v80 + v78);
    *v81 = sub_20B5DF4B0;
    v81[1] = v74;
    v82 = v132;
    sub_20C137C94();
    v83 = v133;
    v130(v76, v54);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368, &unk_20C14FD80);
    v84 = *(v83 + 64);
    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_20C14F320;
    v86 = v85 + ((v79 + 32) & ~v79);
    v77(v86, v131, v54);
    v77(v86 + v84, v82, v54);
    sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
    v87 = sub_20C13D374();
    sub_20C13A7C4();
    v88 = v76;
    sub_20C137C74();

    sub_20B51CC64(v128, &v134);
    v89 = swift_allocObject();
    v89[2] = v126;
    sub_20B51C710(&v134, (v89 + 3));
    v90 = v115;
    v89[8] = v112;
    v89[9] = v90;
    v91 = swift_allocObject();
    *(v91 + 16) = sub_20B682014;
    *(v91 + 24) = v89;
    v77(v75, v88, v54);
    v92 = v113;
    v93 = swift_allocObject();
    (v125)(&v117[v93], v75, v54);
    v94 = (v93 + v92);
    *v94 = sub_20B683080;
    v94[1] = v91;

    sub_20C137C94();
    v95 = v130;
    v130(v88, v54);
    v95(v132, v54);
    v95(v131, v54);

    return;
  }

  v32 = v9;
  (*(v10 + 32))(v12, v30, v9);
  v33 = v116;
  sub_20C137E34();
  v34 = v115;
  v35 = *(v115 + 48);
  v36 = v130;
  v37 = v35(v33, 1, v130);
  v38 = v36;
  v39 = v12;
  if (v37 == 1)
  {
    v40 = v38;
    MEMORY[0x20F2ED8D0]();
    if (v35(v33, 1, v40) != 1)
    {
      sub_20B520158(v33, &unk_27C765110, &unk_20C152460);
    }
  }

  else
  {
    (*(v34 + 32))(v125, v33, v38);
  }

  v133 = v10;
  v96 = v117;
  v97 = v39;
  sub_20C137E14();
  v98 = sub_20C135854();
  v99 = *(v98 - 8);
  if ((*(v99 + 48))(v96, 1, v98) == 1)
  {
    sub_20B520158(v96, &unk_27C76BBF0, &unk_20C1574B0);
LABEL_10:
    sub_20C135444();
    goto LABEL_11;
  }

  v100 = sub_20C135844();
  v101 = v96;
  v102 = v100;
  v104 = v103;
  v106 = v105;
  (*(v99 + 8))(v101, v98);
  *&v134 = v102;
  *(&v134 + 1) = v104;
  v135 = v106 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768A40, &unk_20C18DAF0);
  sub_20C133BD4();
  sub_20B583F4C(v102, v104, v106 & 1);
  if (v136 == 2)
  {
    goto LABEL_10;
  }

LABEL_11:
  swift_getObjectType();
  v107 = v125;
  sub_20C138744();
  (*(v34 + 8))(v107, v130);
  (*(v133 + 8))(v97, v32);
}

uint64_t sub_20B67FD54(uint64_t a1, uint64_t a2)
{
  v3 = sub_20C136194();
  v4 = swift_projectBox();
  swift_beginAccess();
  return (*(*(v3 - 8) + 24))(v4, a1, v3);
}

uint64_t sub_20B67FDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_20C136194();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = swift_projectBox();
  swift_getObjectType();
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  swift_beginAccess();
  sub_20C138744();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_20B67FF64(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_unknownObjectRetain();

    swift_getObjectType();
    v1 = sub_20C138644();
    swift_unknownObjectRelease();
    if (v1)
    {
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v3 = Strong;
        v4 = swift_unknownObjectWeakLoadStrong();
        v5 = *(v3 + 24);

        if (v4)
        {
          ObjectType = swift_getObjectType();
          (*(v5 + 120))(v1, ObjectType, v5);
          swift_unknownObjectRelease();
        }
      }

      swift_beginAccess();
      v7 = swift_weakLoadStrong();

      if (v7)
      {
        *(v7 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_state) = 1;
      }
    }
  }

  return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
}

uint64_t sub_20B6800BC(uint64_t a1)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B10, &unk_20C152410);
  MEMORY[0x28223BE20](v40);
  v43 = &v37 - v1;
  v2 = sub_20C13BB84();
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C137EA4();
  v44 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - v9;
  v11 = sub_20C13A484();
  MEMORY[0x28223BE20](v11);
  v13 = (&v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v37 - v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B64B624(result + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_sessionOrigin, v16);

    sub_20B681E78(v16, v19);
    sub_20B64B624(v19, v13);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v21 = v44;
      (*(v44 + 32))(v10, v13, v5);
      sub_20C13B594();
      (*(v21 + 16))(v7, v10, v5);
      v22 = sub_20C13BB74();
      v23 = sub_20C13D1F4();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v37 = v24;
        v39 = swift_slowAlloc();
        v45[0] = v39;
        *v24 = 136315138;
        v25 = v43;
        v38 = v22;
        sub_20C137CE4();
        v26 = sub_20C13D8F4();
        LODWORD(v40) = v23;
        v28 = v27;
        sub_20B520158(v25, &unk_27C768B10, &unk_20C152410);
        v29 = *(v21 + 8);
        v29(v7, v5);
        v30 = sub_20B51E694(v26, v28, v45);

        v31 = v37;
        v32 = v38;
        *(v37 + 1) = v30;
        v33 = v31;
        _os_log_impl(&dword_20B517000, v32, v40, "Client: Using session origin to sync MultiUserSession %s", v31, 0xCu);
        v34 = v39;
        __swift_destroy_boxed_opaque_existential_1(v39);
        MEMORY[0x20F2F6A40](v34, -1, -1);
        MEMORY[0x20F2F6A40](v33, -1, -1);
      }

      else
      {

        v29 = *(v21 + 8);
        v29(v7, v5);
      }

      (*(v41 + 8))(v4, v42);
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v36 = v43;
        sub_20C137CE4();
        sub_20B67AEC4(v36);

        sub_20B520158(v36, &unk_27C768B10, &unk_20C152410);
      }

      v29(v10, v5);
    }

    else
    {
      v35 = *v13;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_20B6805DC(v35);
      }
    }

    return sub_20B64B688(v19);
  }

  return result;
}

uint64_t sub_20B6805DC(uint64_t a1)
{
  v2 = v1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AA0, &unk_20C153B90);
  v4 = *(v27 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v27);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v10 = *(v9 - 8);
  v29 = v9;
  v30 = v10;
  MEMORY[0x28223BE20](v9);
  v28 = &v27 - v11;
  v12 = sub_20C13BB84();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B594();
  sub_20C13BB64();
  (*(v13 + 8))(v15, v12);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_sessionClient), *(v2 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_sessionClient + 24));
  sub_20C13A0E4();
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = v2;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_20B681EDC;
  *(v17 + 24) = v16;
  v18 = v27;
  (*(v4 + 16))(&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8, v27);
  v19 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v20 = swift_allocObject();
  (*(v4 + 32))(v20 + v19, &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
  v21 = (v20 + ((v5 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = sub_20B681EF8;
  v21[1] = v17;

  v22 = v28;
  sub_20C137C94();
  (*(v4 + 8))(v8, v18);
  v23 = v29;
  v24 = sub_20C137CB4();
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  v24(sub_20B5DF6DC, v25);

  return (*(v30 + 8))(v22, v23);
}

uint64_t sub_20B680A00(void *a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  v7 = a1;
  v8 = sub_20C13BB74();
  v9 = sub_20C13D1D4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v17[1] = v1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136446210;
    swift_getErrorValue();
    v13 = MEMORY[0x20F2F5850](v17[3], v17[4]);
    v15 = sub_20B51E694(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_20B517000, v8, v9, "Unable to activate media player presenter: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x20F2F6A40](v12, -1, -1);
    MEMORY[0x20F2F6A40](v11, -1, -1);
  }

  return (*(v4 + 8))(v6, v3);
}

void sub_20B680BDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[1] = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B10, &unk_20C152410);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v18 - v7;
  v9 = sub_20C134CD4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C13A324();
  v15 = v14;
  if (v13 == sub_20C137D24() && v15 == v16)
  {
  }

  else
  {
    v17 = sub_20C13DFF4();

    if ((v17 & 1) == 0)
    {
      return;
    }
  }

  sub_20C137CE4();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_20B520158(v8, &unk_27C768B10, &unk_20C152410);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    (*(v10 + 16))(v5, v12, v9);
    (*(v10 + 56))(v5, 0, 1, v9);
    sub_20B67AEC4(v5);
    sub_20B520158(v5, &unk_27C768B10, &unk_20C152410);
    (*(v10 + 8))(v12, v9);
  }
}

double sub_20B680E78()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  sub_20C13BB64();
  (*(v3 + 8))(v5, v2);
  swift_getObjectType();
  sub_20C138614();
  *(v1 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_state) = 0;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v7 + 128))(ObjectType, v7);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20B680FD8(char a1)
{
  v2 = v1;
  v4 = sub_20C13B104();
  v29 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C13A484();
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C13BB84();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v30 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  sub_20C13B574();
  sub_20C13BB64();
  v16 = *(v11 + 8);
  v32 = v11 + 8;
  v33 = v10;
  v31 = v16;
  v16(v15, v10);
  sub_20B64B624(v2 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_sessionOrigin, v9);
  LODWORD(v15) = swift_getEnumCaseMultiPayload();
  sub_20B64B688(v9);
  if (v15 != 1)
  {
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_nowPlayingUpdater), *(v2 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_nowPlayingUpdater + 24));
    sub_20C138AC4();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v17 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v17 + 176))(a1 & 1, ObjectType, v17);
    swift_unknownObjectRelease();
  }

  swift_getObjectType();
  swift_allocObject();
  swift_weakInit();

  sub_20C138674();

  swift_getObjectType();
  sub_20C1386C4();
  sub_20C13B0F4();
  sub_20C13A764();
  (*(v29 + 8))(v6, v4);
  v19 = sub_20C138664();
  if (v19)
  {
    sub_20C138674();
  }

  v20 = v30;
  sub_20C13B574();
  v21 = sub_20C13BB74();
  v22 = sub_20C13D1F4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 67109120;
    *(v23 + 4) = v19 & 1;
    _os_log_impl(&dword_20B517000, v21, v22, "[SessionMediaPlayerPresenter] Media Player configure playback, readyToPlay: %{BOOL}d", v23, 8u);
    MEMORY[0x20F2F6A40](v23, -1, -1);
  }

  v31(v20, v33);
  sub_20B67A67C(v19 & 1);
  if ((v19 & 1) != 0 && (v24 = sub_20C138644()) != 0)
  {
    v25 = v24;
    [v24 timeControlStatus];

    v26 = sub_20C138154();
  }

  else
  {
    v26 = 2;
  }

  sub_20C13CEC4();
  v34 = 1;
  return sub_20B677958((v26 | 0x100000000), v27);
}

double sub_20B6814B0(uint64_t a1)
{
  v1 = sub_20C13BB84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  v5 = sub_20C13BB74();
  v6 = sub_20C13D1F4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_20B517000, v5, v6, "[SessionMediaPlayerPresenter] Media Player readyToPlay event observed, configure playback, readyToPlay: true", v7, 2u);
    MEMORY[0x20F2F6A40](v7, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20B67A67C(1);
  }

  return result;
}

double sub_20B681628(uint64_t a1)
{
  v2 = v1;
  if ((*(*(v1 + 240) + OBJC_IVAR____TtC9SeymourUI27SessionAudioPlayerPresenter_state) & 1) == 0)
  {
    sub_20BF74170();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v3 + 88))(ObjectType, v3);
    swift_unknownObjectRelease();
  }

  v5 = sub_20C138104();
  if (v5 == sub_20C138104() && swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v2 + 24);
    v8 = swift_getObjectType();
    (*(v7 + 144))(1, v8, v7);

    swift_unknownObjectRelease();
  }

  return result;
}

double sub_20B681720()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763250, &qword_20C153CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  sub_20BF73830();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v5 + 80))(ObjectType, v5);
    swift_unknownObjectRelease();
  }

  if (_UISolariumEnabled() && swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v0 + 24);
    v8 = swift_getObjectType();
    (*(v7 + 224))(v8, v7);
    swift_unknownObjectRelease();
  }

  v9 = sub_20C138104();
  if (v9 == sub_20C138104())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = *(v1 + 24);
      v12 = swift_getObjectType();
      (*(v11 + 144))(0, v12, v11);

      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_20C134414();
    v13 = sub_20C135B04();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v4, 1, v13) == 1)
    {
      sub_20B520158(v4, &qword_27C763250, &qword_20C153CB0);
      v15 = &unk_282288300;
    }

    else
    {
      sub_20C135AF4();
      (*(v14 + 8))(v4, v13);

      v15 = &unk_2822882D8;
    }

    v16 = sub_20BE8D564(v15);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v17 = *(v1 + 24);
      v18 = swift_getObjectType();
      (*(v17 + 136))(v16, v18, v17);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

double sub_20B6819CC()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  sub_20C13BB64();
  (*(v3 + 8))(v5, v2);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = v1[3];
    ObjectType = swift_getObjectType();
    (*(v6 + 280))(ObjectType, v6);
    swift_unknownObjectRelease();
  }

  v8 = v1[5];
  if (v8)
  {
    v9 = v1[6];

    v8(v10);
    sub_20B583ECC(v8, v9);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = v1[3];
    v12 = swift_getObjectType();
    (*(v11 + 232))(v12, v11);
    swift_unknownObjectRelease();
  }

  return sub_20B680E78();
}

void sub_20B681B64()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_state) == 2)
  {
  }

  else
  {
    v6 = sub_20C13DFF4();

    if ((v6 & 1) == 0)
    {
      return;
    }
  }

  sub_20C13B574();
  sub_20C13BB64();
  (*(v3 + 8))(v5, v2);
  swift_getObjectType();
  sub_20C138694();
}

uint64_t sub_20B681D48(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 32) = v5;

  return sub_20C137C94();
}

unint64_t sub_20B681DE4(uint64_t a1, uint64_t a2)
{
  v2 = sub_20C13DEA4();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_20B681E78(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C13A484();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B681F9C(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_20B682040@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_20C135D54() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_20B67CC8C(a1, v2 + v6, v7, a2);
}

uint64_t sub_20B682144(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20B68220C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20B52AC14;

  return sub_20B67AA80(a1, v4, v5, v7, v6);
}

uint64_t sub_20B6822CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20B67AB1C(a1, v4, v5, v6);
}

uint64_t sub_20B6823A0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_20C136194();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_20C13BB84();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B682528, 0, 0);
}

uint64_t sub_20B682528(__n128 a1)
{
  v19 = v1;
  sub_20C13B574();

  v2 = sub_20C13BB74();
  v3 = sub_20C13D1F4();

  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[12];
  v5 = v1[13];
  v7 = v1[11];
  if (v4)
  {
    v9 = v1[2];
    v8 = v1[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_20B51E694(v9, v8, &v18);
    _os_log_impl(&dword_20B517000, v2, v3, "Updating audio language preference: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x20F2F6A40](v11, -1, -1);
    MEMORY[0x20F2F6A40](v10, -1, -1);
  }

  (*(v6 + 8))(v5, v7);
  v12 = v1[7];
  v13 = v1[4];

  sub_20C13CE94();
  sub_20C136174();
  __swift_project_boxed_opaque_existential_1((v13 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_sessionPreferenceClient), *(v13 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_sessionPreferenceClient + 24));
  sub_20C139CC4();
  v14 = swift_task_alloc();
  v1[14] = v14;
  *(v14 + 16) = "SeymourUI/SessionMediaPlayerPresenter.swift";
  *(v14 + 24) = 43;
  *(v14 + 32) = 2;
  *(v14 + 40) = 414;
  *(v14 + 48) = v12;
  v15 = swift_task_alloc();
  v1[15] = v15;
  *v15 = v1;
  v15[1] = sub_20B6827A4;
  v16 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v15, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B6830A8, v14, v16);
}

uint64_t sub_20B6827A4()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_20B682AA0;
  }

  else
  {
    (*(v2[6] + 8))(v2[7], v2[5]);
    v3 = sub_20B6828F4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20B6828F4()
{
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_20B68298C;
  v2 = *(v0 + 80);

  return sub_20B676418(v2);
}

uint64_t sub_20B68298C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_20B682BF0;
  }

  else
  {
    v2 = sub_20B682B54;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B682AA0()
{
  (*(v0[6] + 8))(v0[7], v0[5]);
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20B682B54()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20B682BF0()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

unint64_t sub_20B682CA4()
{
  result = qword_27C763240;
  if (!qword_27C763240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C763240);
  }

  return result;
}

unint64_t sub_20B682CF8()
{
  result = qword_27C76BB30;
  if (!qword_27C76BB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76BB30);
  }

  return result;
}

uint64_t sub_20B682D4C(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_20B52A9D4;

  return sub_20B673148(v7, v8, v9, v10, a1, v4, v5, v6);
}

uint64_t sub_20B682E60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_20B682EA8()
{
  result = qword_2811005A0;
  if (!qword_2811005A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C766280, &qword_20C15A2D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811005A0);
  }

  return result;
}

uint64_t sub_20B682F0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20B672474(a1, v4, v5, v6);
}

unint64_t sub_20B682FCC()
{
  result = qword_27C763258;
  if (!qword_27C763258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C763258);
  }

  return result;
}

unint64_t sub_20B683020()
{
  result = qword_27C763260;
  if (!qword_27C763260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C763260);
  }

  return result;
}

unint64_t sub_20B6830CC()
{
  result = qword_27C763268;
  if (!qword_27C763268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C763268);
  }

  return result;
}

void sub_20B68316C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a3 + 8);
  v47 = v7(a2, a3);
  v53 = v3;
  v8 = v7(a2, a3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  sub_20C133AA4();

  v9 = objc_allocWithZone(type metadata accessor for UpNextQueueViewController());
  v10 = sub_20B6837D4(v47, v8, v51, v52, v51, 37, 0, 11, v9);
  v54 = v53;
  v11 = (*(a3 + 16))(a2, a3);
  if (v11 <= 1)
  {
    if (v11)
    {
      v39 = [objc_allocWithZone(type metadata accessor for UpNextPopoverNavigationController()) initWithRootViewController_];
      [v39 setModalPresentationStyle_];
      v40 = [v39 popoverPresentationController];
      if (v40)
      {
        v41 = v40;
        [v40 setPermittedArrowDirections_];
      }

      v42 = [v39 popoverPresentationController];
      if (v42)
      {
        v43 = v42;
        type metadata accessor for UpNextQueuePopOverBackgroundView();
        [v43 setPopoverBackgroundViewClass_];
      }

      v44 = [v39 popoverPresentationController];

      [v44 setSourceView_];
      [v4 presentViewController:v39 animated:1 completion:0];
    }

    else
    {
      v12 = [v10 sheetPresentationController];
      if (v12)
      {
        v13 = v12;
        [v12 setPrefersScrollingExpandsWhenScrolledToEdge_];
        [v13 setSmu:1 wantsFullScreen:?];
        [v13 setSmu:1 allowsInteractiveDismissWhenFullScreen:?];
        [v13 setWidthFollowsPreferredContentSizeWhenEdgeAttached_];
        [v13 setPrefersGrabberVisible_];
      }

      [v4 presentViewController:v10 animated:1 completion:0];
    }

    goto LABEL_20;
  }

  if (v11 == 3)
  {
    v53 = v4;
    v48 = v4;
    v14 = v7(a2, a3);
    v50 = v48;
    v15 = v7(a2, a3);

    sub_20C133AA4();
    v16 = v52;
    v46 = v51;
    sub_20C133AA4();

    v17 = v51;
    QueueViewController = type metadata accessor for TVUpNextQueueViewController();
    v19 = objc_allocWithZone(QueueViewController);
    v20 = &v19[OBJC_IVAR____TtC9SeymourUI27TVUpNextQueueViewController_layout];
    *v20 = xmmword_20C153DC0;
    *(v20 + 1) = xmmword_20C153DD0;
    type metadata accessor for TVUpNextQueuePresenter();
    swift_allocObject();

    v22 = sub_20B91BCA8(v21, 0, 0xB);
    *&v19[OBJC_IVAR____TtC9SeymourUI27TVUpNextQueueViewController_presenter] = v22;
    v23 = *(v22 + 24);
    v24 = objc_allocWithZone(type metadata accessor for TVUpNextQueueListViewController(0));

    v25 = sub_20B683F5C(v14, v23, v15, v46, v16, v17, v24);

    *&v19[OBJC_IVAR____TtC9SeymourUI27TVUpNextQueueViewController_listViewController] = v25;
    objc_allocWithZone(type metadata accessor for TVQueueFocusedWorkoutViewController());

    *&v19[OBJC_IVAR____TtC9SeymourUI27TVUpNextQueueViewController_focusedWorkoutController] = sub_20BC1C728(v26);
    v49.receiver = v19;
    v49.super_class = QueueViewController;
    v27 = objc_msgSendSuper2(&v49, sel_initWithNibName_bundle_, 0, 0);

    v28 = [v48 view];
    if (v28)
    {
      v29 = v28;
      v30 = [v28 snapshotViewAfterScreenUpdates_];

      objc_allocWithZone(type metadata accessor for BlurViewController());
      v31 = v27;
      sub_20BADB764(v31, v30);
      v33 = v32;

      v34 = [v48 splitViewController];
      if (!v34 || (v35 = v34, v36 = [v34 navigationController], v35, !v36))
      {
        v37 = [v48 navigationController];
        if (!v37)
        {

          goto LABEL_19;
        }

        v36 = v37;
      }

      v38 = v36;
      [v38 pushViewController:v33 animated:1];

LABEL_19:
      v10 = v31;
LABEL_20:

      return;
    }

    __break(1u);
  }

  sub_20C13DE24();
  __break(1u);
}

char *sub_20B6837D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  v11 = a6;
  ObjectType = swift_getObjectType();
  v45[3] = &type metadata for CatalogPageNavigator;
  v45[4] = &off_2822FB218;
  v17 = swift_allocObject();
  v45[0] = v17;
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  *(v17 + 32) = a4;
  *(v17 + 40) = a5;
  a9[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_visibility] = 1;
  v18 = &a9[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_currentContentInsetBehavior];
  *v18 = 0;
  *(v18 + 1) = 0;
  v18[16] = -4;
  a9[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_isTransitioningContentInset] = 0;
  *&a9[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_resignActiveObserver] = 0;
  v19 = &a9[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_layout];
  sub_20BC3A3D8(v46);
  v20 = v46[1];
  *v19 = v46[0];
  *(v19 + 1) = v20;
  *(v19 + 2) = v46[2];
  *(v19 + 6) = v47;
  *&a9[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_dependencies] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A980, &qword_20C153E20);
  sub_20C133AA4();
  sub_20B51C710(&v43, &a9[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_contentAvailabilityFilter]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0, &qword_20C152E60);
  sub_20C133AA4();
  v21 = OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_mediaTagStringBuilder;
  sub_20B51C710(&v43, &a9[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_mediaTagStringBuilder]);
  sub_20B51CC64(v45, &a9[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_pageNavigator]);
  sub_20C133AA4();
  a9[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_platform] = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *&a9[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_eventHub] = v43;
  v22 = &a9[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_contentInsetInitialBehavior];
  *v22 = *(v19 + 3);
  v22[8] = 0;
  *&a9[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_menuOptions] = &unk_282287FA8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50, &unk_20C14D9F0);
  sub_20C133AA4();
  sub_20B51C710(&v43, &a9[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_bookmarkClient]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();
  v23 = OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_storefrontLocalizer;
  sub_20B51C710(&v43, &a9[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_storefrontLocalizer]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360, &unk_20C1538B0);
  sub_20C133AA4();
  sub_20B51C710(&v43, &a9[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_subscriptionCache]);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *&a9[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_subscriptionToken] = sub_20C13A914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A80, &unk_20C14DA20);
  sub_20C133AA4();
  sub_20B51C710(&v43, &a9[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_upNextQueueClient]);
  type metadata accessor for UpNextQueueGalleryDataProvider(0);
  swift_allocObject();

  v25 = sub_20BE76468(v24, v11, a7, a8);

  *&a9[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_dataProvider] = v25;
  type metadata accessor for QueueActionsViewPresenter(0);
  v26 = swift_allocObject();

  v27 = sub_20BF91C50(a1, 0, 0, v25, v26);
  *&a9[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_queueActionsViewPresenter] = v27;
  sub_20B51CC64(&a9[v21], &v43);
  v28 = objc_allocWithZone(type metadata accessor for QueueActionsView());

  v29 = sub_20BF91514(a1, v27, &v43, 1, v28);
  [v29 setTranslatesAutoresizingMaskIntoConstraints_];
  *&a9[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_queueActionsView] = v29;
  sub_20B51CC64(&a9[v23], &v43);
  __swift_project_boxed_opaque_existential_1(&v43, v44);
  v30 = sub_20C138D34();
  v31 = &a9[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_galleryTitle];
  *v31 = v30;
  v31[1] = v32;
  __swift_destroy_boxed_opaque_existential_1(&v43);
  v42.receiver = a9;
  v42.super_class = ObjectType;
  v33 = objc_msgSendSuper2(&v42, sel_initWithNibName_bundle_, 0, 0);
  v34 = *&v33[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_queueActionsViewPresenter];
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = (v34 + OBJC_IVAR____TtC9SeymourUI25QueueActionsViewPresenter_onStartQueue);
  v37 = *(v34 + OBJC_IVAR____TtC9SeymourUI25QueueActionsViewPresenter_onStartQueue);
  v38 = *(v34 + OBJC_IVAR____TtC9SeymourUI25QueueActionsViewPresenter_onStartQueue + 8);
  *v36 = sub_20B68426C;
  v36[1] = v35;
  v39 = v33;

  sub_20B583ECC(v37, v38);

  swift_getObjectType();
  sub_20C13AF44();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();

  sub_20C13A7A4();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&v43);

  swift_getObjectType();
  sub_20C137384();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();

  sub_20C13A7A4();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&v43);
  __swift_destroy_boxed_opaque_existential_1(v45);

  return v39;
}

id sub_20B683F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, _BYTE *a7)
{
  v25[3] = &type metadata for TVCatalogPageNavigator;
  v25[4] = &off_2822C80E8;
  v14 = swift_allocObject();
  v25[0] = v14;
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  *(v14 + 32) = a5;
  *(v14 + 40) = a6;
  v15 = OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_dynamicOfferCoordinator;
  *&a7[v15] = [objc_allocWithZone(type metadata accessor for MarketingDynamicOfferCoordinator()) init];
  v16 = OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_purchaseCoordinator;
  *&a7[v16] = [objc_allocWithZone(type metadata accessor for MarketingPurchaseCoordinator()) init];
  v17 = OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_purchaseHandler;
  *&a7[v17] = [objc_allocWithZone(type metadata accessor for MarketingPurchaseHandler()) init];
  v18 = OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_webUserInterfaceCoordinator;
  *&a7[v18] = [objc_allocWithZone(type metadata accessor for MarketingWebUserInterfaceCoordinator()) init];
  a7[OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_visibility] = 1;
  *&a7[OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_resignActiveObserver] = 0;
  v19 = OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_lastFocusedIndexPath;
  v20 = sub_20C133244();
  (*(*(v20 - 8) + 56))(&a7[v19], 1, 1, v20);
  *&a7[OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_settlingTimer] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762080, &unk_20C14F930);
  sub_20C133AA4();
  *&a7[OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_bag] = v24;
  *&a7[OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_dependencies] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620A0, &unk_20C14F950);
  sub_20C133AA4();
  sub_20B51C710(&v24, &a7[OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_timerProvider]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *&a7[OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_eventHub] = v24;
  *&a7[OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_dataProvider] = a2;
  sub_20B51CC64(v25, &a7[OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_pageNavigator]);
  v23.receiver = a7;
  v23.super_class = type metadata accessor for TVUpNextQueueListViewController(0);
  v21 = objc_msgSendSuper2(&v23, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return v21;
}

uint64_t objectdestroyTm_0()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_20B684288(uint64_t a1)
{
  sub_20C1380F4();
  v1 = objc_opt_self();
  v2 = [v1 mainScreen];
  [v2 nativeBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v18.origin.x = v4;
  v18.origin.y = v6;
  v18.size.width = v8;
  v18.size.height = v10;
  Width = CGRectGetWidth(v18);
  v12 = [v1 mainScreen];
  [v12 nativeScale];
  v14 = v13;

  v15 = sub_20C138104();
  result = sub_20C138104();
  if (v15 == result)
  {
    v17 = 62.0;
  }

  else
  {
    v17 = 25.0;
    if (Width / v14 > 375.0)
    {
      v17 = 38.0;
      if (Width / v14 < 834.0)
      {
        v17 = 28.0;
      }
    }
  }

  qword_27C763270 = *&v17;
  return result;
}

uint64_t sub_20B6843BC(uint64_t a1)
{
  sub_20C1380F4();
  v1 = objc_opt_self();
  v2 = [v1 mainScreen];
  [v2 nativeBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v18.origin.x = v4;
  v18.origin.y = v6;
  v18.size.width = v8;
  v18.size.height = v10;
  Width = CGRectGetWidth(v18);
  v12 = [v1 mainScreen];
  [v12 nativeScale];
  v14 = v13;

  v15 = sub_20C138104();
  result = sub_20C138104();
  v17 = 17.0;
  if (v15 != result)
  {
    v17 = 6.0;
    if (Width / v14 > 375.0)
    {
      v17 = 10.0;
      if (Width / v14 < 834.0)
      {
        v17 = 8.0;
      }
    }
  }

  qword_27C763278 = *&v17;
  return result;
}

void sub_20B684590()
{
  v1 = v0;
  v2 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20C14FE90;
  v4 = *&v1[OBJC_IVAR____TtC9SeymourUI18SessionBurnBarView_burnBar];
  v5 = [v4 topAnchor];
  v6 = [v1 topAnchor];
  v7 = [v5 constraintEqualToAnchor_];

  *(v3 + 32) = v7;
  v8 = [v4 bottomAnchor];
  v9 = [v1 bottomAnchor];
  if (qword_27C760688 != -1)
  {
    swift_once();
  }

  v10 = [v8 constraintEqualToAnchor:v9 constant:-*&qword_27C763278];

  *(v3 + 40) = v10;
  v11 = [v4 leadingAnchor];
  v12 = [v1 leadingAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v3 + 48) = v13;
  v14 = [v4 trailingAnchor];
  v15 = [v1 trailingAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v3 + 56) = v16;
  sub_20B5E29D0();
  v17 = sub_20C13CC54();

  [v2 activateConstraints_];
}

id sub_20B6848EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionBurnBarView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_20B6849BC(uint64_t a1, char a2, double a3)
{
  sub_20BAEC8CC(a1, a2, a3);
  v4 = sub_20C136FB4();

  return [v3 accessibilityUpdateBurnBar_];
}

void sub_20B684A4C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI18SessionBurnBarView_burnBar);

  sub_20BC1688C();

  v2 = *(*(v1 + OBJC_IVAR____TtC9SeymourUI7BurnBar_modalityIconPlatter) + OBJC_IVAR____TtC9SeymourUI26BurnBarModalityIconPlatter_modalityIconView);
  sub_20B91909C();
}

char *sub_20B684B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC9SeymourUI18SessionBurnBarView_burnBar;
  type metadata accessor for BurnBar(0);
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v3[v6] = v7;
  *&v3[OBJC_IVAR____TtC9SeymourUI18SessionBurnBarView_presenter] = a1;
  v24.receiver = v3;
  v24.super_class = type metadata accessor for SessionBurnBarView();

  v8 = objc_msgSendSuper2(&v24, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  *(a1 + 24) = &off_28229C650;
  swift_unknownObjectWeakAssign();
  v9 = OBJC_IVAR____TtC9SeymourUI18SessionBurnBarView_burnBar;
  v10 = *&v8[OBJC_IVAR____TtC9SeymourUI18SessionBurnBarView_burnBar];
  v11 = v8;
  [v11 addSubview_];
  v12 = sub_20C1371C4();
  v13 = *(*&v8[v9] + OBJC_IVAR____TtC9SeymourUI7BurnBar_modalityIconPlatter);
  v14 = OBJC_IVAR____TtC9SeymourUI26BurnBarModalityIconPlatter_modalityIconView;
  v15 = *&v13[OBJC_IVAR____TtC9SeymourUI26BurnBarModalityIconPlatter_modalityIconView];
  v16 = v13;
  [v15 removeFromSuperview];
  v17 = sub_20B9194AC(v12);
  v18 = objc_allocWithZone(MEMORY[0x277D75348]);
  v19 = v17;
  v20 = [v18 initWithRed:0.945098039 green:0.843137255 blue:0.894117647 alpha:1.0];
  [(objc_super *)v19 setTintColor:v20];

  v21 = *&v13[v14];
  *&v13[v14] = v19;

  [v16 addSubview_];
  [v16 setNeedsLayout];

  sub_20B684590();
  v22 = sub_20C137254();
  (*(*(v22 - 8) + 8))(a2, v22);
  return v11;
}

char *sub_20B684D34(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC9SeymourUI20ProductPlacementView_textLabel;
  v11 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  [v11 setNumberOfLines_];
  v12 = [objc_opt_self() secondaryLabelColor];
  [v11 setTextColor_];

  v13 = [objc_opt_self() smu:*MEMORY[0x277D76968] preferredFontForTextStyle:0 variant:?];
  [v11 setFont_];

  [v11 setTextAlignment_];
  *&v4[v10] = v11;
  v47.receiver = v4;
  v47.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v47, sel_initWithFrame_, a1, a2, a3, a4);
  v15 = OBJC_IVAR____TtC9SeymourUI20ProductPlacementView_textLabel;
  v16 = *&v14[OBJC_IVAR____TtC9SeymourUI20ProductPlacementView_textLabel];
  v17 = v14;
  [v17 addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260, &unk_20C1569E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v20 = *MEMORY[0x277D768C8];
  v19 = *(MEMORY[0x277D768C8] + 8);
  v21 = *(MEMORY[0x277D768C8] + 16);
  v22 = *(MEMORY[0x277D768C8] + 24);
  v23 = *&v14[v15];
  v24 = [v23 leadingAnchor];
  v25 = [v17 leadingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:v19];

  LODWORD(v27) = 1148846080;
  [v26 setPriority_];
  v28 = v26;
  v29 = [v23 trailingAnchor];
  v30 = [v17 trailingAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:-v22];

  LODWORD(v32) = 1148846080;
  [v31 setPriority_];
  v33 = v31;
  v34 = [v23 topAnchor];
  v35 = [v17 topAnchor];
  v36 = [v34 constraintEqualToAnchor:v35 constant:v20];

  LODWORD(v37) = 1148846080;
  [v36 setPriority_];
  v38 = [v23 bottomAnchor];
  v39 = [v17 bottomAnchor];
  v40 = [v38 constraintEqualToAnchor:v39 constant:-v21];

  LODWORD(v41) = 1148846080;
  [v40 setPriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_20C14FE90;
  *(v42 + 32) = v28;
  *(v42 + 40) = v33;
  *(v42 + 48) = v36;
  *(v42 + 56) = v40;
  v43 = v36;

  *(inited + 32) = v42;
  v44 = objc_opt_self();
  sub_20BE54D20(inited);
  swift_setDeallocating();
  sub_20B68537C(inited + 32);
  sub_20B5E29D0();
  v45 = sub_20C13CC54();

  [v44 activateConstraints_];

  return v17;
}

void sub_20B685230()
{
  v1 = OBJC_IVAR____TtC9SeymourUI20ProductPlacementView_textLabel;
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setNumberOfLines_];
  v3 = [objc_opt_self() secondaryLabelColor];
  [v2 setTextColor_];

  v4 = [objc_opt_self() smu:*MEMORY[0x277D76968] preferredFontForTextStyle:0 variant:?];
  [v2 setFont_];

  [v2 setTextAlignment_];
  *(v0 + v1) = v2;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B68537C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0, &unk_20C15AA30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20B6853E4()
{
  v1[8] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769A80, &unk_20C155CB0);
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  sub_20C13CDA4();
  v1[12] = sub_20C13CD94();
  v4 = sub_20C13CD24();
  v1[13] = v4;
  v1[14] = v3;

  return MEMORY[0x2822009F8](sub_20B6854E4, v4, v3);
}

uint64_t sub_20B6854E4()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 64) + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_assetClient), *(*(v0 + 64) + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_assetClient + 24));
  sub_20C139DF4();

  return MEMORY[0x2822009F8](sub_20B685580, 0, 0);
}

uint64_t sub_20B685580()
{
  v1 = v0[11];
  v2 = swift_task_alloc();
  v0[15] = v2;
  *(v2 + 16) = "SeymourUI/MyLibraryShelf.swift";
  *(v2 + 24) = 30;
  *(v2 + 32) = 2;
  *(v2 + 40) = 54;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[16] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763350, &qword_20C154090);
  v0[17] = v4;
  *v3 = v0;
  v3[1] = sub_20B6856A8;

  return MEMORY[0x2822008A0](v0 + 7, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B68D6A4, v2, v4);
}

uint64_t sub_20B6856A8()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {

    v3 = sub_20B685A40;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = v2[10];
    v6 = v2[11];
    v8 = v2[9];
    v2[19] = v2[7];

    (*(v7 + 8))(v6, v8);
    v4 = v2[13];
    v5 = v2[14];
    v3 = sub_20B685814;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_20B685814()
{
  v1 = v0[19];
  v2 = v0[17];
  __swift_project_boxed_opaque_existential_1((v0[8] + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_contentAvailabilityFilter), *(v0[8] + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_contentAvailabilityFilter + 24));
  v0[5] = v2;
  v0[6] = sub_20B68D6D4(&qword_27C763358, &qword_27C763350, &qword_20C154090);
  v0[2] = v1;
  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v3[1] = sub_20B685914;

  return sub_20C0A57E4((v0 + 2));
}

uint64_t sub_20B685914(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v5 = v4[13];
    v6 = v4[14];
    v7 = sub_20B685BB4;
  }

  else
  {
    v4[22] = a1;
    __swift_destroy_boxed_opaque_existential_1(v4 + 2);
    v5 = v4[13];
    v6 = v4[14];
    v7 = sub_20B685B20;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_20B685A40()
{
  (*(v0[10] + 8))(v0[11], v0[9]);
  v1 = v0[13];
  v2 = v0[14];

  return MEMORY[0x2822009F8](sub_20B685AB4, v1, v2);
}

uint64_t sub_20B685AB4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B685B20()
{
  v1 = v0[22];
  v2 = v0[8];

  v3 = *(v1 + 16);

  *(v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_downloadCount) = v3;

  v4 = v0[1];

  return v4();
}

uint64_t sub_20B685BB4()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B685C28()
{
  v1[24] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763330, &qword_20C155CD0);
  v1[25] = v2;
  v3 = *(v2 - 8);
  v1[26] = v3;
  v1[27] = *(v3 + 64);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763338, &qword_20C180620);
  v1[30] = v4;
  v1[31] = *(v4 - 8);
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  sub_20C13CDA4();
  v1[34] = sub_20C13CD94();
  v6 = sub_20C13CD24();
  v1[35] = v6;
  v1[36] = v5;

  return MEMORY[0x2822009F8](sub_20B685DB0, v6, v5);
}

uint64_t sub_20B685DB0()
{
  v1 = sub_20B716148(&unk_282288350);
  sub_20C1380F4();
  v2 = sub_20C138104();
  if (v2 == sub_20C138104())
  {
    v3 = sub_20BE8BF14(&unk_282288328);
    sub_20B722BD4(v3, v1);
  }

  v5 = *(v0 + 224);
  v4 = *(v0 + 232);
  v6 = *(v0 + 208);
  v24 = *(v0 + 216);
  v8 = *(v0 + 192);
  v7 = *(v0 + 200);
  v9 = OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_bookmarkClient;
  *(v0 + 296) = OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_bookmarkClient;
  __swift_project_boxed_opaque_existential_1((v8 + v9), *(v8 + v9 + 24));
  sub_20C13A1B4();

  v10 = OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_contentAvailabilityFilter;
  *(v0 + 304) = OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_contentAvailabilityFilter;
  v11 = *__swift_project_boxed_opaque_existential_1((v8 + v10), *(v8 + v10 + 24));
  v12 = type metadata accessor for ContentAvailabilityFilter();
  *(v0 + 312) = v12;
  *(v0 + 40) = v12;
  *(v0 + 48) = &off_2822C8E88;
  *(v0 + 16) = v11;
  sub_20B51CC64(v0 + 16, v0 + 56);
  v13 = swift_allocObject();
  sub_20B51C710((v0 + 56), v13 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v14 = swift_allocObject();
  *(v14 + 16) = sub_20B68D360;
  *(v14 + 24) = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_20B68D3B4;
  *(v15 + 24) = v14;
  v16 = *(v6 + 16);
  *(v0 + 320) = v16;
  *(v0 + 328) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v16(v5, v4, v7);
  v17 = *(v6 + 80);
  *(v0 + 456) = v17;
  v18 = (v17 + 16) & ~v17;
  v19 = swift_allocObject();
  v20 = *(v6 + 32);
  *(v0 + 336) = v20;
  *(v0 + 344) = (v6 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v20(v19 + v18, v5, v7);
  v21 = (v19 + ((v24 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = sub_20B6331FC;
  v21[1] = v15;
  *(v0 + 352) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763340, &qword_20C154068);
  sub_20C137C94();
  v22 = *(v6 + 8);
  *(v0 + 360) = v22;
  *(v0 + 368) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v22(v4, v7);

  return MEMORY[0x2822009F8](sub_20B6860A4, 0, 0);
}

uint64_t sub_20B6860A4()
{
  v1 = v0[33];
  v2 = swift_task_alloc();
  v0[47] = v2;
  *(v2 + 16) = "SeymourUI/MyLibraryShelf.swift";
  *(v2 + 24) = 30;
  *(v2 + 32) = 2;
  *(v2 + 40) = 73;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[48] = v3;
  *v3 = v0;
  v3[1] = sub_20B6861B4;
  v4 = v0[44];

  return MEMORY[0x2822008A0](v0 + 22, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B68D3C0, v2, v4);
}

uint64_t sub_20B6861B4()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {

    v3 = sub_20B68632C;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v6 = v2[33];
    v7 = v2[30];
    v8 = v2[31];
    v2[50] = v2[22];

    v9 = *(v8 + 8);
    v2[51] = v9;
    v2[52] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v6, v7);
    v4 = v2[35];
    v5 = v2[36];
    v3 = sub_20B68643C;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_20B68632C()
{
  (*(v0[31] + 8))(v0[33], v0[30]);
  v1 = v0[35];
  v2 = v0[36];

  return MEMORY[0x2822009F8](sub_20B6863A0, v1, v2);
}

uint64_t sub_20B6863A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B68643C()
{
  v18 = *(v0 + 360);
  v17 = *(v0 + 336);
  v1 = *(v0 + 312);
  v16 = *(v0 + 320);
  v2 = *(v0 + 232);
  v14 = *(v0 + 224);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v15 = (*(v0 + 456) + 16) & ~*(v0 + 456);
  v13 = (v15 + *(v0 + 216) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v3 + *(v0 + 304));
  __swift_project_boxed_opaque_existential_1((v3 + *(v0 + 296)), *(v3 + *(v0 + 296) + 24));
  sub_20BE8BF14(&unk_282288378);
  sub_20C13A1B4();

  v6 = *__swift_project_boxed_opaque_existential_1(v5, v5[3]);
  *(v0 + 120) = v1;
  *(v0 + 128) = &off_2822C8E88;
  *(v0 + 96) = v6;
  sub_20B51CC64(v0 + 96, v0 + 136);
  v7 = swift_allocObject();
  sub_20B51C710((v0 + 136), v7 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  v8 = swift_allocObject();
  *(v8 + 16) = sub_20B68D3D8;
  *(v8 + 24) = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_20B68D72C;
  *(v9 + 24) = v8;
  v16(v14, v2, v4);
  v10 = swift_allocObject();
  v17(v10 + v15, v14, v4);
  v11 = (v10 + v13);
  *v11 = sub_20B68D730;
  v11[1] = v9;
  sub_20C137C94();
  v18(v2, v4);

  return MEMORY[0x2822009F8](sub_20B6866A8, 0, 0);
}

uint64_t sub_20B6866A8()
{
  v1 = v0[32];
  v2 = swift_task_alloc();
  v0[53] = v2;
  *(v2 + 16) = "SeymourUI/MyLibraryShelf.swift";
  *(v2 + 24) = 30;
  *(v2 + 32) = 2;
  *(v2 + 40) = 76;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[54] = v3;
  *v3 = v0;
  v3[1] = sub_20B6867B0;
  v4 = v0[44];

  return MEMORY[0x2822008A0](v0 + 23, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B68D734, v2, v4);
}

uint64_t sub_20B6867B0()
{
  v2 = *v1;
  *(*v1 + 440) = v0;

  if (v0)
  {

    v3 = sub_20B686A0C;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v6 = v2[51];
    v7 = v2[32];
    v8 = v2[30];
    v2[56] = v2[23];

    v6(v7, v8);
    v4 = v2[35];
    v5 = v2[36];
    v3 = sub_20B68692C;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_20B68692C()
{
  v1 = v0[56];
  v2 = v0[50];
  v3 = v0[24];

  v4 = *(v2 + 16);

  *(v3 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_workoutCount) = v4;
  v5 = *(v1 + 16);

  *(v3 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_meditationCount) = v5;

  v6 = v0[1];

  return v6();
}

uint64_t sub_20B686A0C()
{
  (*(v0 + 408))(*(v0 + 256), *(v0 + 240));
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);

  return MEMORY[0x2822009F8](sub_20B686A78, v1, v2);
}

uint64_t sub_20B686A78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B686B14(uint64_t a1, void (*a2)(void *, __n128))
{
  v5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D60, &qword_20C154080);
  v5[4] = sub_20B68D6D4(&qword_27C763348, &unk_27C765D60, &qword_20C154080);
  v5[0] = a1;

  (a2)(v5);
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t sub_20B686BB4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *__swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_20B51CC64(a1, v12);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  sub_20B51C710(v12, v9 + 24);
  v10 = swift_allocObject();
  *(v10 + 16) = "SeymourUI/ContentAvailabilityFilter.swift";
  *(v10 + 24) = 41;
  *(v10 + 32) = 2;
  *(v10 + 40) = 25;
  *(v10 + 48) = a5;
  *(v10 + 56) = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763340, &qword_20C154068);
  return sub_20C137C94();
}

uint64_t sub_20B686CB4()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764170, &qword_20C180610);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  sub_20C13CDA4();
  v1[7] = sub_20C13CD94();
  v4 = sub_20C13CD24();
  v1[8] = v4;
  v1[9] = v3;

  return MEMORY[0x2822009F8](sub_20B686DB4, v4, v3);
}

uint64_t sub_20B686DB4()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 24) + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_bookmarkClient), *(*(v0 + 24) + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_bookmarkClient + 24));
  sub_20C13A214();

  return MEMORY[0x2822009F8](sub_20B686E50, 0, 0);
}

uint64_t sub_20B686E50()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[10] = v2;
  *(v2 + 16) = "SeymourUI/MyLibraryShelf.swift";
  *(v2 + 24) = 30;
  *(v2 + 32) = 2;
  *(v2 + 40) = 84;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[11] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763310, &qword_20C176BE0);
  *v3 = v0;
  v3[1] = sub_20B686F74;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B68D16C, v2, v4);
}

uint64_t sub_20B686F74()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {

    v3 = sub_20B687320;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = v2[5];
    v6 = v2[6];
    v8 = v2[4];
    v2[13] = v2[2];

    (*(v7 + 8))(v6, v8);
    v4 = v2[8];
    v5 = v2[9];
    v3 = sub_20B6870E0;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_20B6870E0()
{

  v1 = swift_task_alloc();
  v0[14] = v1;
  v2 = sub_20C138204();
  v3 = sub_20B68D318(&qword_27C763318, MEMORY[0x277D53C88], MEMORY[0x277D53C90]);
  *v1 = v0;
  v1[1] = sub_20B6871E4;
  v4 = v0[13];
  v5 = v0[3];

  return MEMORY[0x2821AFAF0](&unk_20C154060, v5, v4, v2, v3);
}

uint64_t sub_20B6871E4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_20B687494;
  }

  else
  {

    v4[16] = a1;
    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_20B687400;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_20B687320()
{
  (*(v0[5] + 8))(v0[6], v0[4]);
  v1 = v0[8];
  v2 = v0[9];

  return MEMORY[0x2822009F8](sub_20B687394, v1, v2);
}

uint64_t sub_20B687394()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B687400()
{
  v1 = v0[16];
  v2 = v0[3];

  v3 = *(v1 + 16);

  *(v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_stackCount) = v3;

  v4 = v0[1];

  return v4();
}

uint64_t sub_20B687494()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B687514(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  sub_20C13CDA4();
  v2[9] = sub_20C13CD94();
  v4 = sub_20C13CD24();
  v2[10] = v4;
  v2[11] = v3;

  return MEMORY[0x2822009F8](sub_20B6875AC, v4, v3);
}

uint64_t sub_20B6875AC(uint64_t a1)
{
  v2 = v1[8];
  v3 = sub_20C1381E4();
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_contentAvailabilityFilter), *(v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_contentAvailabilityFilter + 24));
  v1[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763320, &unk_20C15A2F0);
  v1[6] = sub_20B68D6D4(&qword_27C763328, &qword_27C763320, &unk_20C15A2F0);
  v1[2] = v3;
  v4 = swift_task_alloc();
  v1[12] = v4;
  *v4 = v1;
  v4[1] = sub_20B6876C4;

  return sub_20C0A6C2C((v1 + 2));
}

uint64_t sub_20B6876C4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_20B68786C;
  }

  else
  {
    v4[14] = a1;
    __swift_destroy_boxed_opaque_existential_1(v4 + 2);
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_20B6877F0;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_20B6877F0()
{
  v1 = *(v0 + 112);

  v2 = *(v1 + 16);

  v3 = *(v0 + 8);

  return v3(v2 != 0);
}

uint64_t sub_20B68786C()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_20B6878DC()
{
  v1[14] = v0;
  v2 = sub_20C13BB84();
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = sub_20C13CDA4();
  v1[21] = sub_20C13CD94();
  v3 = swift_task_alloc();
  v1[22] = v3;
  *v3 = v1;
  v3[1] = sub_20B687A00;

  return sub_20B6853E4();
}

uint64_t sub_20B687A00()
{
  v2 = *v1;
  *(v2 + 184) = v0;

  if (v0)
  {
    v4 = sub_20C13CD24();

    return MEMORY[0x2822009F8](sub_20B688220, v4, v3);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v2 + 192) = v5;
    *v5 = v2;
    v5[1] = sub_20B687B84;

    return sub_20B685C28();
  }
}

uint64_t sub_20B687B84()
{
  v2 = *v1;
  *(v2 + 200) = v0;

  if (v0)
  {
    v4 = sub_20C13CD24();

    return MEMORY[0x2822009F8](sub_20B688428, v4, v3);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v2 + 208) = v5;
    *v5 = v2;
    v5[1] = sub_20B687D08;

    return sub_20B686CB4();
  }
}

uint64_t sub_20B687D08()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_20C13CD24();
    v5 = v4;
    v6 = sub_20B688630;
    v7 = v3;
    v8 = v5;
  }

  else
  {
    v2[28] = sub_20C13CD94();
    v9 = sub_20C13CD24();
    v8 = v10;
    v2[29] = v9;
    v2[30] = v10;
    v6 = sub_20B687E7C;
    v7 = v9;
  }

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_20B687E7C()
{
  v1 = (*(v0 + 112) + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_workoutPlanClient);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  *(v0 + 248) = v4;
  *v4 = v0;
  v4[1] = sub_20B687F3C;

  return MEMORY[0x2821ADF38](v2, v3);
}

uint64_t sub_20B687F3C(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = v4[29];
    v6 = v4[30];
    v7 = sub_20B688110;
  }

  else
  {
    v4[32] = a1;
    v5 = v4[29];
    v6 = v4[30];
    v7 = sub_20B688068;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_20B688068()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 112);

  v3 = *(v1 + 16);

  *(v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_planCount) = v3;
  v5 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20B688190, v5, v4);
}

uint64_t sub_20B688110()
{

  v1 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20B688190, v1, v0);
}

uint64_t sub_20B688190()
{

  sub_20B688834();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B688220(uint64_t a1)
{
  v21 = v1;
  v2 = *(v1 + 184);
  sub_20C13B4A4();
  v3 = v2;
  v4 = sub_20C13BB74();
  v5 = sub_20C13D1F4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 184);
    v19 = *(v1 + 152);
    v8 = *(v1 + 120);
    v7 = *(v1 + 128);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = sub_20C13E094();
    v13 = sub_20B51E694(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_20B517000, v4, v5, "Failed to update download count with error %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x20F2F6A40](v10, -1, -1);
    MEMORY[0x20F2F6A40](v9, -1, -1);

    (*(v7 + 8))(v19, v8);
  }

  else
  {
    v14 = *(v1 + 152);
    v15 = *(v1 + 120);
    v16 = *(v1 + 128);

    (*(v16 + 8))(v14, v15);
  }

  v17 = swift_task_alloc();
  *(v1 + 192) = v17;
  *v17 = v1;
  v17[1] = sub_20B687B84;

  return sub_20B685C28();
}

uint64_t sub_20B688428(uint64_t a1)
{
  v21 = v1;
  v2 = *(v1 + 200);
  sub_20C13B4A4();
  v3 = v2;
  v4 = sub_20C13BB74();
  v5 = sub_20C13D1F4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 200);
    v19 = *(v1 + 144);
    v8 = *(v1 + 120);
    v7 = *(v1 + 128);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = sub_20C13E094();
    v13 = sub_20B51E694(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_20B517000, v4, v5, "Failed to update bookmark count with error %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x20F2F6A40](v10, -1, -1);
    MEMORY[0x20F2F6A40](v9, -1, -1);

    (*(v7 + 8))(v19, v8);
  }

  else
  {
    v14 = *(v1 + 144);
    v15 = *(v1 + 120);
    v16 = *(v1 + 128);

    (*(v16 + 8))(v14, v15);
  }

  v17 = swift_task_alloc();
  *(v1 + 208) = v17;
  *v17 = v1;
  v17[1] = sub_20B687D08;

  return sub_20B686CB4();
}

uint64_t sub_20B688630(uint64_t a1)
{
  v22 = v1;
  v2 = *(v1 + 216);
  sub_20C13B4A4();
  v3 = v2;
  v4 = sub_20C13BB74();
  v5 = sub_20C13D1F4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 216);
    v7 = *(v1 + 128);
    v20 = *(v1 + 136);
    v8 = *(v1 + 120);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = sub_20C13E094();
    v13 = sub_20B51E694(v11, v12, &v21);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_20B517000, v4, v5, "Failed to update stack count with error %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x20F2F6A40](v10, -1, -1);
    MEMORY[0x20F2F6A40](v9, -1, -1);

    (*(v7 + 8))(v20, v8);
  }

  else
  {
    v15 = *(v1 + 128);
    v14 = *(v1 + 136);
    v16 = *(v1 + 120);

    (*(v15 + 8))(v14, v16);
  }

  *(v1 + 224) = sub_20C13CD94();
  v18 = sub_20C13CD24();
  *(v1 + 232) = v18;
  *(v1 + 240) = v17;

  return MEMORY[0x2822009F8](sub_20B687E7C, v18, v17);
}

void sub_20B688834()
{
  v1 = v0;
  v2 = sub_20C13C554();
  v37 = *(v2 - 8);
  v38 = v2;
  MEMORY[0x28223BE20](v2);
  v36 = (&v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_20B688B6C();
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_mediaTagStringBuilder), *(v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_mediaTagStringBuilder + 24));
  sub_20C135E04();
  v5 = sub_20C138544();

  v6 = [v5 string];

  v7 = sub_20C13C954();
  v9 = v8;

  v10 = sub_20C135D64();
  v39 = 0uLL;
  LOBYTE(v40) = 1;
  *(&v40 + 1) = 0;
  *&v41 = 0;
  WORD4(v41) = 128;
  v42 = 0uLL;
  *&v43 = v10;
  *(&v43 + 1) = v11;
  v44 = xmmword_20C153F00;
  LOBYTE(v45) = 1;
  *(&v45 + 1) = v4;
  v46 = MEMORY[0x277D84F90];
  *&v47 = 0;
  *(&v47 + 1) = v7;
  *v48 = v9;
  *&v48[8] = xmmword_20C150190;
  nullsub_1();
  v12 = v1 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row;
  v13 = *(v1 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 144);
  v49[8] = *(v1 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 128);
  v49[9] = v13;
  v50 = *(v1 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 160);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 80);
  v49[4] = *(v1 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 64);
  v49[5] = v14;
  v15 = *(v1 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 112);
  v49[6] = *(v1 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 96);
  v49[7] = v15;
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 16);
  v49[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row);
  v49[1] = v16;
  v17 = *(v1 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 48);
  v49[2] = *(v1 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 32);
  v49[3] = v17;
  v18 = *v48;
  *(v12 + 128) = v47;
  *(v12 + 144) = v18;
  *(v12 + 160) = *&v48[16];
  v19 = v44;
  *(v12 + 64) = v43;
  *(v12 + 80) = v19;
  v20 = v46;
  *(v12 + 96) = v45;
  *(v12 + 112) = v20;
  v21 = v40;
  *v12 = v39;
  *(v12 + 16) = v21;
  v22 = v42;
  *(v12 + 32) = v41;
  *(v12 + 48) = v22;
  sub_20B520158(v49, &qword_27C762340, &unk_20C150290);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    if (!*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      sub_20B61D888(v1, Strong);
      if (v26)
      {
        v28 = v25;
        v29 = v26;
        v30 = v27;
        sub_20B5E2E18();
        v31 = sub_20C13D374();
        v33 = v36;
        v32 = v37;
        *v36 = v31;
        v34 = v38;
        (*(v32 + 104))(v33, *MEMORY[0x277D85200], v38);
        v35 = sub_20C13C584();
        (*(v32 + 8))(v33, v34);
        if ((v35 & 1) == 0)
        {
          __break(1u);
          return;
        }

        sub_20B620C6C(v28, v29, v30, v1, 0, v24);
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    swift_unknownObjectRelease();
  }
}

char *sub_20B688B6C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  MEMORY[0x28223BE20](v1 - 8);
  v75 = &v69 - v2;
  v3 = sub_20C136F94();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v71 = &v69 - v8;
  MEMORY[0x28223BE20](v9);
  v76 = &v69 - v10;
  v11 = (v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_storefrontLocalizer);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_storefrontLocalizer), *(v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_storefrontLocalizer + 24));
  v12 = OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_downloadCount;
  v88 = *(v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_downloadCount);
  v13 = sub_20C138CA4();
  if (!v14)
  {
    v88 = *(v0 + v12);
    v13 = sub_20C13DFA4();
  }

  v83 = v14;
  v84 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  v15 = OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_meditationCount;
  v88 = *(v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_meditationCount);
  v16 = sub_20C138CA4();
  if (!v17)
  {
    v88 = *(v0 + v15);
    v16 = sub_20C13DFA4();
  }

  v81 = v16;
  v87 = v17;
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  v18 = OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_planCount;
  v88 = *(v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_planCount);
  v19 = sub_20C138CA4();
  v74 = v6;
  v86 = v20;
  v73 = v3;
  if (v20)
  {
    v82 = v19;
  }

  else
  {
    v88 = *(v0 + v18);
    v82 = sub_20C13DFA4();
    v86 = v21;
  }

  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  v22 = OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_stackCount;
  v88 = *(v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_stackCount);
  v23 = sub_20C138CA4();
  v72 = v4;
  if (!v24)
  {
    v88 = *(v0 + v22);
    v23 = sub_20C13DFA4();
  }

  v79 = v23;
  v85 = v24;
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  v25 = OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_workoutCount;
  v88 = *(v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_workoutCount);
  v26 = sub_20C138CA4();
  v70 = v18;
  v80 = v0;
  if (!v27)
  {
    v88 = *(v0 + v25);
    v26 = sub_20C13DFA4();
  }

  v28 = v26;
  v78 = v27;
  v29 = v27;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90, &unk_20C14FD30);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_20C14F320;
  v31 = swift_allocObject();
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  *(v31 + 16) = sub_20C138D34();
  *(v31 + 24) = v32;
  *(v31 + 32) = v28;
  *(v31 + 40) = v29;
  *(v31 + 48) = 4;
  *(v30 + 32) = v31 | 0x5000000000000002;
  v33 = swift_allocObject();
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);

  *(v33 + 16) = sub_20C138D34();
  *(v33 + 24) = v34;
  v35 = v87;
  *(v33 + 32) = v81;
  *(v33 + 40) = v35;
  *(v33 + 48) = 1;
  *(v30 + 40) = v33 | 0x5000000000000002;
  v88 = v30;
  v36 = swift_allocObject();
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  v87 = v35;

  *(v36 + 16) = sub_20C138D34();
  *(v36 + 24) = v37;
  v38 = v85;
  *(v36 + 32) = v79;
  *(v36 + 40) = v38;
  v81 = v36 | 0x5000000000000002;
  *(v36 + 48) = 3;
  v39 = swift_allocObject();
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);

  *(v39 + 16) = sub_20C138D34();
  *(v39 + 24) = v40;
  v41 = v86;
  *(v39 + 32) = v82;
  *(v39 + 40) = v41;
  v82 = v39 | 0x5000000000000002;
  *(v39 + 48) = 2;
  v42 = swift_allocObject();
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);

  *(v42 + 16) = sub_20C138D34();
  *(v42 + 24) = v43;
  v44 = v83;
  *(v42 + 32) = v84;
  *(v42 + 40) = v44;
  *(v42 + 48) = 0;
  v45 = v80;
  v46 = *(v80 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_platform);
  if (v46 < 2)
  {

    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C1517D0;
    v48 = v82;
    *(inited + 32) = v81;
    *(inited + 40) = v48;
    *(inited + 48) = v42 | 0x5000000000000002;
    sub_20B8D921C(inited);
    return v88;
  }

  v84 = v30;
  if (v46 == 3)
  {

    __swift_project_boxed_opaque_existential_1((v45 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_remoteBrowsingSource), *(v45 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_remoteBrowsingSource + 24));
    v50 = v75;
    sub_20C13B174();
    v51 = sub_20C136C64();
    v52 = *(v51 - 8);
    v53 = (*(v52 + 48))(v50, 1, v51);
    v54 = v76;
    if (v53 == 1)
    {

      sub_20B520158(v50, &qword_27C768690, &unk_20C14FD90);
      return v84;
    }

    v87 = v36;
    v55 = v71;
    sub_20C1369E4();
    (*(v52 + 8))(v50, v51);
    v56 = v72;
    v57 = v73;
    (*(v72 + 32))(v54, v55, v73);
    v58 = v74;
    sub_20C136F34();
    sub_20B68D318(&qword_27C767AF0, MEMORY[0x277D53030], MEMORY[0x277D53040]);
    v59 = v54;
    v60 = sub_20C13DA74();
    v61 = *(v56 + 8);
    v61(v58, v57);
    if (v60)
    {

      v62 = sub_20BC05D3C(1, 3, 1, v84);
      *(v62 + 2) = 3;
      v84 = v62;
      *(v62 + 6) = v81;
    }

    v63 = v74;
    sub_20C136F54();
    v64 = sub_20C13DA74();
    v61(v63, v57);
    if ((v64 & 1) == 0 || (sub_20C136F44(), v65 = sub_20C13DA74(), v61(v63, v57), (v65 & 1) == 0))
    {
      if (!*(v45 + v70))
      {
        v61(v59, v57);

        return v84;
      }
    }

    v67 = *(v84 + 2);
    v66 = *(v84 + 3);
    if (v67 >= v66 >> 1)
    {
      v84 = sub_20BC05D3C((v66 > 1), v67 + 1, 1, v84);
    }

    v68 = v82;

    v61(v59, v57);
    result = v84;
    *(v84 + 2) = v67 + 1;
    *&result[8 * v67 + 32] = v68;
  }

  else
  {
    result = sub_20C13DE24();
    __break(1u);
  }

  return result;
}

uint64_t sub_20B6895E0(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v36 - v3;
  v38 = &v36 - v3;
  v5 = sub_20C134F24();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0, &unk_20C14FCF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v36 - v10;
  v12 = type metadata accessor for ShelfMetricAction(0);
  v13 = (v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20C136664();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  (*(v6 + 104))(v8, *MEMORY[0x277D51488], v5);
  v17 = sub_20C132C14();
  (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
  v18 = *&aDownloadmedita[8 * a1];
  v36 = *&aWorkoutsed[8 * a1 + 8];
  v37 = v18;
  v19 = v13[10];
  v20 = *MEMORY[0x277D523F0];
  v21 = sub_20C135ED4();
  v22 = *(v21 - 8);
  (*(v22 + 104))(&v15[v19], v20, v21);
  (*(v22 + 56))(&v15[v19], 0, 1, v21);
  v23 = v13[12];
  v24 = *MEMORY[0x277D51768];
  v25 = sub_20C1352E4();
  (*(*(v25 - 8) + 104))(&v15[v23], v24, v25);
  v26 = v13[13];
  v27 = sub_20C136E94();
  v28 = &v15[v26];
  v29 = v39;
  (*(*(v27 - 8) + 56))(v28, 1, 1, v27);
  v30 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  sub_20B5DF134(v11, v15, &unk_27C7622E0, &unk_20C14FCF0);
  (*(v6 + 32))(&v15[v13[7]], v8, v5);
  sub_20B5DF134(v38, &v15[v13[8]], &unk_27C7617F0, &unk_20C151A10);
  v31 = &v15[v13[9]];
  v32 = v36;
  *v31 = v37;
  *(v31 + 1) = v32;
  v33 = &v15[v13[11]];
  *v33 = 0;
  *(v33 + 1) = 0;
  *&v15[v13[14]] = v30;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_20BF9FEE0(v29, v15, Strong);
    swift_unknownObjectRelease();
  }

  return sub_20B68D110(v15);
}

uint64_t sub_20B689A28()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_assetClient));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_bookmarkClient));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_contentAvailabilityFilter));
  v3 = OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_descriptor;
  v4 = sub_20C135E14();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_mediaTagStringBuilder));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_remoteBrowsingSource));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_storefrontLocalizer));

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_workoutPlanClient));
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 144);
  v11[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 128);
  v11[9] = v5;
  v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 160);
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 80);
  v11[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 64);
  v11[5] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 112);
  v11[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 96);
  v11[7] = v7;
  v8 = *(v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 16);
  v11[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row);
  v11[1] = v8;
  v9 = *(v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 48);
  v11[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 32);
  v11[3] = v9;
  sub_20B520158(v11, &qword_27C762340, &unk_20C150290);
  return v0;
}

uint64_t sub_20B689BBC()
{
  sub_20B689A28();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MyLibraryShelf(uint64_t a1)
{
  result = qword_27C7632F0;
  if (!qword_27C7632F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B689C68(uint64_t a1)
{
  result = sub_20C132EE4();
  if (v2 <= 0x3F)
  {
    result = sub_20C135E14();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_20B689D94()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9[-1] - v3;
  v5 = sub_20C13CDF4();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v1;

  sub_20B6383D0(0, 0, v4, &unk_20C153FF0, v6);

  swift_getObjectType();
  sub_20C13A994();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A774();

  __swift_destroy_boxed_opaque_existential_1(v9);
  sub_20C137384();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A794();

  __swift_destroy_boxed_opaque_existential_1(v9);

  sub_20C13A714();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A794();

  __swift_destroy_boxed_opaque_existential_1(v9);

  sub_20C13A7B4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A774();

  __swift_destroy_boxed_opaque_existential_1(v9);
  sub_20C13AB84();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A774();

  __swift_destroy_boxed_opaque_existential_1(v9);
  sub_20C13A4E4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A774();

  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_20B68A1D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52A9D4;

  return sub_20B6878DC();
}

uint64_t sub_20B68A264(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v3 = sub_20C133524();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B68A324, 0, 0);
}

uint64_t sub_20B68A324()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);
  sub_20C13A984();
  v4 = sub_20C1334E4();
  v6 = v5;
  v7 = *(v2 + 8);
  v7(v1, v3);
  *(v0 + 64) = v4;
  *(v0 + 72) = v6 & 1;
  *(v0 + 73) = 5;
  sub_20B68CCB0();
  sub_20B68CD04();
  if ((sub_20C133C04() & 1) == 0)
  {
    v8 = *(v0 + 128);
    v9 = *(v0 + 112);
    sub_20C13A984();
    v10 = sub_20C1334E4();
    v12 = v11;
    v7(v8, v9);
    *(v0 + 80) = v10;
    *(v0 + 88) = v12 & 1;
    *(v0 + 74) = 8;
    if ((sub_20C133C04() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 136) = Strong;
  if (Strong)
  {
    v14 = swift_task_alloc();
    *(v0 + 144) = v14;
    *v14 = v0;
    v14[1] = sub_20B68A5E0;

    return sub_20B6853E4();
  }

  swift_beginAccess();
  v16 = swift_weakLoadStrong();
  *(v0 + 160) = v16;
  if (v16)
  {
    sub_20C13CDA4();
    *(v0 + 168) = sub_20C13CD94();
    v18 = sub_20C13CD24();

    return MEMORY[0x2822009F8](sub_20B68A7F4, v18, v17);
  }

  else
  {
LABEL_11:

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_20B68A5E0()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_20B68A86C;
  }

  else
  {

    v2 = sub_20B68A6FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B68A6FC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[20] = Strong;
  if (Strong)
  {
    sub_20C13CDA4();
    v0[21] = sub_20C13CD94();
    v3 = sub_20C13CD24();

    return MEMORY[0x2822009F8](sub_20B68A7F4, v3, v2);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_20B68A7F4()
{

  sub_20B688834();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B68A86C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B68A8F8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_20B68AA78;

    return sub_20B6878DC();
  }

  else
  {
    swift_beginAccess();
    v4 = swift_weakLoadStrong();
    v0[11] = v4;
    if (v4)
    {
      sub_20C13CDA4();
      v0[12] = sub_20C13CD94();
      v6 = sub_20C13CD24();

      return MEMORY[0x2822009F8](sub_20B68AC80, v6, v5);
    }

    else
    {
      v7 = v0[1];

      return v7();
    }
  }
}

uint64_t sub_20B68AA78()
{

  return MEMORY[0x2822009F8](sub_20B68AB90, 0, 0);
}

uint64_t sub_20B68AB90()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    sub_20C13CDA4();
    v0[12] = sub_20C13CD94();
    v3 = sub_20C13CD24();

    return MEMORY[0x2822009F8](sub_20B68AC80, v3, v2);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_20B68AC80()
{

  sub_20B688834();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B68AD10()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_20B68AE90;

    return sub_20B685C28();
  }

  else
  {
    swift_beginAccess();
    v4 = swift_weakLoadStrong();
    v0[12] = v4;
    if (v4)
    {
      sub_20C13CDA4();
      v0[13] = sub_20C13CD94();
      v6 = sub_20C13CD24();

      return MEMORY[0x2822009F8](sub_20B68D728, v6, v5);
    }

    else
    {
      v7 = v0[1];

      return v7();
    }
  }
}

uint64_t sub_20B68AE90()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_20B68D740;
  }

  else
  {

    v2 = sub_20B68AFAC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B68AFAC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    sub_20C13CDA4();
    v0[13] = sub_20C13CD94();
    v3 = sub_20C13CD24();

    return MEMORY[0x2822009F8](sub_20B68D728, v3, v2);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_20B68B0BC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_20B68AE90;

    return sub_20B686CB4();
  }

  else
  {
    swift_beginAccess();
    v4 = swift_weakLoadStrong();
    v0[12] = v4;
    if (v4)
    {
      sub_20C13CDA4();
      v0[13] = sub_20C13CD94();
      v6 = sub_20C13CD24();

      return MEMORY[0x2822009F8](sub_20B68D728, v6, v5);
    }

    else
    {
      v7 = v0[1];

      return v7();
    }
  }
}

uint64_t sub_20B68B25C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    sub_20C13CDA4();
    v0[10] = sub_20C13CD94();
    v2 = sub_20C13CD24();
    v4 = v3;
    v0[11] = v2;
    v0[12] = v3;
    v5 = sub_20B68B3C4;
    v6 = v2;
LABEL_5:

    return MEMORY[0x2822009F8](v5, v6, v4);
  }

  swift_beginAccess();
  v7 = swift_weakLoadStrong();
  v0[15] = v7;
  if (v7)
  {
    sub_20C13CDA4();
    v0[16] = sub_20C13CD94();
    v8 = sub_20C13CD24();
    v10 = v9;
    v5 = sub_20B68B7A4;
    v6 = v8;
    v4 = v10;
    goto LABEL_5;
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_20B68B3C4()
{
  v1 = (*(v0 + 72) + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_workoutPlanClient);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = sub_20B68B484;

  return MEMORY[0x2821ADF38](v2, v3);
}

uint64_t sub_20B68B484(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = v4[11];
    v6 = v4[12];
    v7 = sub_20B68B644;
  }

  else
  {
    v4[14] = a1;
    v5 = v4[11];
    v6 = v4[12];
    v7 = sub_20B68B5B0;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_20B68B5B0()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 72);

  v3 = *(v1 + 16);

  *(v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_planCount) = v3;

  return MEMORY[0x2822009F8](sub_20B68B6B4, 0, 0);
}

uint64_t sub_20B68B644()
{

  return MEMORY[0x2822009F8](sub_20B68B6B4, 0, 0);
}

uint64_t sub_20B68B6B4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    sub_20C13CDA4();
    v0[16] = sub_20C13CD94();
    v3 = sub_20C13CD24();

    return MEMORY[0x2822009F8](sub_20B68B7A4, v3, v2);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_20B68B7A4()
{

  sub_20B688834();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B68B834()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_20B68B9B4;

    return sub_20B685C28();
  }

  else
  {
    swift_beginAccess();
    v4 = swift_weakLoadStrong();
    v0[12] = v4;
    if (v4)
    {
      sub_20C13CDA4();
      v0[13] = sub_20C13CD94();
      v6 = sub_20C13CD24();

      return MEMORY[0x2822009F8](sub_20B68BBC0, v6, v5);
    }

    else
    {
      v7 = v0[1];

      return v7();
    }
  }
}

uint64_t sub_20B68B9B4()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_20B68BC30;
  }

  else
  {

    v2 = sub_20B68BAD0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B68BAD0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    sub_20C13CDA4();
    v0[13] = sub_20C13CD94();
    v3 = sub_20C13CD24();

    return MEMORY[0x2822009F8](sub_20B68BBC0, v3, v2);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_20B68BBC0()
{

  sub_20B688834();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B68BC30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B68BC94(unsigned __int8 a1)
{
  v1 = a1;
  v2 = 8;
  result = 34;
  if (v1 <= 1)
  {
    if (!v1)
    {
      return result;
    }
  }

  else
  {
    if (v1 == 2)
    {
      return result;
    }

    if (v1 == 3)
    {
      v2 = 25;
    }

    else
    {
      v2 = 8;
    }
  }

  v4 = sub_20C138104();
  if (v4 == sub_20C138104())
  {
    return v2;
  }

  else
  {
    return 34;
  }
}

uint64_t sub_20B68BD10@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20B68BD88@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 32);
  v17 = v7;
  sub_20B5EAED4(&v14, v13);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20B68BE6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_20B68BF24;

  return sub_20C0A62B0(a3);
}

uint64_t sub_20B68BF24(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_20B68C070, 0, 0);
  }
}

double sub_20B68C094(unint64_t a1)
{
  v2 = v1;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v83 - v9;
  sub_20C13B534();
  sub_20C13BB64();
  v11 = *(v5 + 8);
  v11(v10, v4);
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x2A)
  {
    v12 = a1 & 0xFFFFFFFFFFFFFF8;
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v13 = *(v12 + 24);
    v15 = *(v12 + 48);
    sub_20B6895E0(*(v12 + 48));
    v16 = sub_20B68BC94(v15);
    Strong = swift_unknownObjectWeakLoadStrong();
    v19 = Strong;
    if (v15 <= 1)
    {
      if (v15)
      {
        if (!Strong)
        {
          return result;
        }

        v84 = v13;
        __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_mediaTagStringBuilder), *(v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_mediaTagStringBuilder + 24));
        sub_20C135DD4();
        v72 = sub_20C138544();

        v73 = [v72 string];

        v74 = sub_20C13C954();
        v76 = v75;

        v77 = sub_20C135D64();
        v79 = v78;
        v80 = v19 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_25;
        }

        v81 = *(v80 + 8);
        ObjectType = swift_getObjectType();
        (*(v81 + 96))(v19, v14, v84, v74, v76, v77, v79, 5, v16, MEMORY[0x277D84F90], ObjectType, v81);
      }

      else
      {
        if (!Strong)
        {
          return result;
        }

        v84 = v13;
        __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_mediaTagStringBuilder), *(v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_mediaTagStringBuilder + 24));
        sub_20C135DD4();
        v39 = sub_20C138544();

        v40 = [v39 string];

        v41 = sub_20C13C954();
        v43 = v42;

        v44 = sub_20C135D64();
        v46 = v45;
        v47 = v19 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_25;
        }

        v48 = *(v47 + 8);
        v49 = swift_getObjectType();
        (*(v48 + 96))(v19, v14, v84, v41, v43, v44, v46, 1, v16, MEMORY[0x277D84F90], v49, v48);
      }
    }

    else if (v15 == 2)
    {
      if (!Strong)
      {
        return result;
      }

      v84 = v13;
      __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_mediaTagStringBuilder), *(v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_mediaTagStringBuilder + 24));
      sub_20C135DD4();
      v50 = sub_20C138544();

      v51 = [v50 string];

      v52 = sub_20C13C954();
      v54 = v53;

      v55 = sub_20C135D64();
      v57 = v56;
      v58 = v19 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
      if (!swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_25;
      }

      v59 = *(v58 + 8);
      v60 = swift_getObjectType();
      (*(v59 + 96))(v19, v14, v84, v52, v54, v55, v57, 7, v16, MEMORY[0x277D84F90], v60, v59);
    }

    else if (v15 == 3)
    {
      if (!Strong)
      {
        return result;
      }

      v84 = v13;
      __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_mediaTagStringBuilder), *(v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_mediaTagStringBuilder + 24));
      sub_20C135DD4();
      v20 = sub_20C138544();

      v21 = [v20 string];

      v22 = sub_20C13C954();
      v24 = v23;

      v25 = sub_20C135D64();
      v27 = v26;
      v28 = v19 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
      if (!swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_25;
      }

      v29 = *(v28 + 8);
      v30 = swift_getObjectType();
      (*(v29 + 96))(v19, v14, v84, v22, v24, v25, v27, 8, v16, MEMORY[0x277D84F90], v30, v29);
    }

    else
    {
      if (!Strong)
      {
        return result;
      }

      v84 = v13;
      __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_mediaTagStringBuilder), *(v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_mediaTagStringBuilder + 24));
      sub_20C135DD4();
      v61 = sub_20C138544();

      v62 = [v61 string];

      v63 = sub_20C13C954();
      v65 = v64;

      v66 = sub_20C135D64();
      v68 = v67;
      v69 = v19 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
      if (!swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_25;
      }

      v70 = *(v69 + 8);
      v71 = swift_getObjectType();
      (*(v70 + 96))(v19, v14, v84, v63, v65, v66, v68, 0, v16, MEMORY[0x277D84F90], v71, v70);
    }

    swift_unknownObjectRelease();
LABEL_25:
    swift_unknownObjectRelease();

    return result;
  }

  sub_20C13B534();

  v31 = sub_20C13BB74();
  v32 = sub_20C13D1D4();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v85 = a1;
    v86 = v34;
    *v33 = 136446210;
    v35 = sub_20B5F66D0();
    v36 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v35);
    v38 = sub_20B51E694(v36, v37, &v86);

    *(v33 + 4) = v38;
    _os_log_impl(&dword_20B517000, v31, v32, "Attempted to handleSelectedItem with item: %{public}s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x20F2F6A40](v34, -1, -1);
    MEMORY[0x20F2F6A40](v33, -1, -1);
  }

  v11(v7, v4);
  return result;
}

uint64_t sub_20B68C87C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52A9D4;

  return sub_20B68A1D4();
}

uint64_t sub_20B68C930(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20B52AC14;

  return sub_20B68A264(a1, v1);
}

uint64_t sub_20B68C9C8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20B52AC14;

  return sub_20B68A8D8(v0);
}

uint64_t sub_20B68CA58()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20B52AC14;

  return sub_20B68ACF0(v0);
}

uint64_t sub_20B68CAE8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20B52AC14;

  return sub_20B68B09C(a1, v1);
}

uint64_t sub_20B68CB80(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20B52AC14;

  return sub_20B68B23C(a1, v1);
}

uint64_t sub_20B68CC18(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20B52A9D4;

  return sub_20B68B814(a1, v1);
}

unint64_t sub_20B68CCB0()
{
  result = qword_27C763300;
  if (!qword_27C763300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C763300);
  }

  return result;
}

unint64_t sub_20B68CD04()
{
  result = qword_27C763308;
  if (!qword_27C763308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C763308);
  }

  return result;
}

uint64_t sub_20B68CD58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v5 = v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row;
  sub_20B5D8060(v17);
  v6 = v17[9];
  *(v5 + 128) = v17[8];
  *(v5 + 144) = v6;
  *(v5 + 160) = v18;
  v7 = v17[5];
  *(v5 + 64) = v17[4];
  *(v5 + 80) = v7;
  v8 = v17[7];
  *(v5 + 96) = v17[6];
  *(v5 + 112) = v8;
  v9 = v17[1];
  *v5 = v17[0];
  *(v5 + 16) = v9;
  v10 = v17[3];
  *(v5 + 32) = v17[2];
  *(v5 + 48) = v10;
  *(v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_downloadCount) = 0;
  *(v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_meditationCount) = 0;
  *(v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_planCount) = 0;
  *(v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_stackCount) = 0;
  *(v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_workoutCount) = 0;
  sub_20C133AA4();
  *(v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_platform) = v16[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769590, &unk_20C152E50);
  sub_20C133AA4();
  sub_20B51C710(v16, v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_assetClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50, &unk_20C14D9F0);
  sub_20C133AA4();
  sub_20B51C710(v16, v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_bookmarkClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A980, &qword_20C153E20);
  sub_20C133AA4();
  sub_20B51C710(v16, v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_contentAvailabilityFilter);
  v11 = OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_descriptor;
  v12 = sub_20C135E14();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v2 + v11, a2, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *(v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_eventHub) = v16[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0, &qword_20C152E60);
  sub_20C133AA4();
  sub_20B51C710(v16, v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_mediaTagStringBuilder);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70, &unk_20C14DA10);
  sub_20C133AA4();
  sub_20B51C710(v16, v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_remoteBrowsingSource);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();
  sub_20B51C710(v16, v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_storefrontLocalizer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621C0, &unk_20C151240);
  sub_20C133AA4();
  sub_20B51C710(v16, v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_workoutPlanClient);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  v14 = sub_20C13A914();
  (*(v13 + 8))(a2, v12);
  *(v3 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_subscriptionToken) = v14;
  return v3;
}

uint64_t sub_20B68D110(uint64_t a1)
{
  v2 = type metadata accessor for ShelfMetricAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20B68D184(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20B68D21C;

  return sub_20B687514(a1, v1);
}

uint64_t sub_20B68D21C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_20B68D318(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_78Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763330, &qword_20C155CD0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B68D4D8(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763330, &qword_20C155CD0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_20B6E17D8(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_20B68D594(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20B52AC14;

  return sub_20B68BE6C(a1, v4, v1 + 24);
}

uint64_t objectdestroy_102Tm()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20B68D6D4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

id sub_20B68D76C(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

uint64_t sub_20B68D7B0(double a1)
{
  v2 = v1;
  v5 = sub_20C1327F4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    sub_20B68D908(a1);
    v10 = sub_20C132764();
    v11 = [v2 stringForObjectValue_];

    if (v11)
    {
      v9 = sub_20C13C954();
    }

    else
    {
      v9 = 0;
    }

    (*(v6 + 8))(v8, v5);
  }

  return v9;
}

void sub_20B68D908(double a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763388, &unk_20C18DE90);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763390, qword_20C154110);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = round(a1);
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v8 < 9.22337204e18)
  {
    v9 = sub_20C133154();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    v10 = sub_20C1331A4();
    (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
    sub_20C1327E4();
    sub_20C1327A4();
    sub_20C1327C4();
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_20B68DB6C()
{
  v1 = OBJC_IVAR____TtC9SeymourUI13PaceFormatter_isLocaleAware;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20B68DBB0(char a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI13PaceFormatter_isLocaleAware;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_20B68DC60(uint64_t a1)
{
  v3 = sub_20C132FD4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763368, &qword_20C1540E8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v50 - v8;
  v10 = sub_20C1327F4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B68E264(a1, v52);
  if (v53)
  {
    v14 = swift_dynamicCast();
    (*(v11 + 56))(v9, v14 ^ 1u, 1, v10);
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      (*(v11 + 32))(v13, v9, v10);
      v15 = OBJC_IVAR____TtC9SeymourUI13PaceFormatter_isLocaleAware;
      swift_beginAccess();
      v16 = v1;
      if (*(v1 + v15) == 1)
      {
        sub_20C132F94();
        v17 = sub_20C132F04();
        v19 = v18;
        (*(v4 + 8))(v6, v3);
        if (v17 == 0x53555F6E65 && v19 == 0xE500000000000000)
        {
        }

        else
        {
          v20 = sub_20C13DFF4();

          if ((v20 & 1) == 0)
          {
            v46 = *(v16 + OBJC_IVAR____TtC9SeymourUI13PaceFormatter_componentsFormatter);
            v47 = sub_20C132764();
            v48 = [v46 stringFromDateComponents_];

            if (v48)
            {
              v49 = sub_20C13C954();

              (*(v11 + 8))(v13, v10);
              return v49;
            }

LABEL_17:
            (*(v11 + 8))(v13, v10);
            return 0;
          }
        }
      }

      v21 = sub_20C132794();
      if ((v22 & 1) == 0)
      {
        v23 = v21;
        v24 = sub_20C1327B4();
        if ((v25 & 1) == 0)
        {
          v26 = v24;
          v27 = *(v16 + OBJC_IVAR____TtC9SeymourUI13PaceFormatter_minutesFormatter);
          v28 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
          v29 = [v27 stringFromNumber_];

          if (v29)
          {
            v30 = sub_20C13C954();
            v32 = v31;

            v33 = *(v16 + OBJC_IVAR____TtC9SeymourUI13PaceFormatter_secondsFormatter);
            v34 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
            v35 = [v33 stringFromNumber_];

            if (v35)
            {
              v51 = sub_20C13C954();
              v37 = v36;

              type metadata accessor for SeymourLocalizationBundle();
              ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
              v39 = [objc_opt_self() bundleForClass_];
              sub_20C132964();

              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60, &qword_20C14FC50);
              v40 = swift_allocObject();
              *(v40 + 16) = xmmword_20C14F320;
              v41 = MEMORY[0x277D837D0];
              *(v40 + 56) = MEMORY[0x277D837D0];
              v42 = sub_20B5D91B8();
              *(v40 + 32) = v30;
              *(v40 + 40) = v32;
              *(v40 + 96) = v41;
              *(v40 + 104) = v42;
              v43 = v51;
              *(v40 + 64) = v42;
              *(v40 + 72) = v43;
              *(v40 + 80) = v37;
              v44 = sub_20C13C924();

              (*(v11 + 8))(v13, v10);
              return v44;
            }

            (*(v11 + 8))(v13, v10);

            return 0;
          }
        }
      }

      goto LABEL_17;
    }
  }

  else
  {
    sub_20B520158(v52, &unk_27C768A00, &qword_20C152F90);
    (*(v11 + 56))(v9, 1, 1, v10);
  }

  sub_20B520158(v9, &qword_27C763368, &qword_20C1540E8);
  return 0;
}

uint64_t sub_20B68E264(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768A00, &qword_20C152F90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id PaceFormatter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PaceFormatter.init()()
{
  v1 = OBJC_IVAR____TtC9SeymourUI13PaceFormatter_componentsFormatter;
  v2 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v2 setUnitsStyle_];
  *&v0[v1] = v2;
  v3 = OBJC_IVAR____TtC9SeymourUI13PaceFormatter_secondsFormatter;
  v4 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v4 setMinimumIntegerDigits_];
  [v4 setMaximumFractionDigits_];
  [v4 setRoundingMode_];
  *&v0[v3] = v4;
  v5 = OBJC_IVAR____TtC9SeymourUI13PaceFormatter_minutesFormatter;
  v6 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v6 setMaximumFractionDigits_];
  [v6 setRoundingMode_];
  *&v0[v5] = v6;
  v0[OBJC_IVAR____TtC9SeymourUI13PaceFormatter_isLocaleAware] = 1;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for PaceFormatter();
  return objc_msgSendSuper2(&v8, sel_init);
}

id PaceFormatter.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PaceFormatter.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI13PaceFormatter_componentsFormatter;
  v4 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v4 setUnitsStyle_];
  *&v1[v3] = v4;
  v5 = OBJC_IVAR____TtC9SeymourUI13PaceFormatter_secondsFormatter;
  v6 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v6 setMinimumIntegerDigits_];
  [v6 setMaximumFractionDigits_];
  [v6 setRoundingMode_];
  *&v1[v5] = v6;
  v7 = OBJC_IVAR____TtC9SeymourUI13PaceFormatter_minutesFormatter;
  v8 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v8 setMaximumFractionDigits_];
  [v8 setRoundingMode_];
  *&v1[v7] = v8;
  v1[OBJC_IVAR____TtC9SeymourUI13PaceFormatter_isLocaleAware] = 1;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for PaceFormatter();
  v9 = objc_msgSendSuper2(&v11, sel_initWithCoder_, a1);

  if (v9)
  {
  }

  return v9;
}

id PaceFormatter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaceFormatter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_20B68E884()
{
  v0 = *MEMORY[0x277D769D0];
  v1 = *MEMORY[0x277D74368];
  v2 = *MEMORY[0x277D76838];
  v3 = MEMORY[0x277D84FA0];
  v143 = MEMORY[0x277D84FA0];
  sub_20C13E164();
  v128 = v1;
  v4 = v0;
  v5 = v2;
  sub_20C13CA64();
  v6 = sub_20C13E1B4();
  v7 = -1 << *(v3 + 32);
  v8 = v6 & ~v7;
  if ((*(v3 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(*(v3 + 48) + v8);
      if (v10 <= 2 && v10 != 1 && v10 != 2)
      {
        break;
      }

      v11 = sub_20C13DFF4();

      if (v11)
      {
        goto LABEL_10;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v3 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v8) & 1) == 0)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v142 = v3;
    sub_20B706478(0, v8, isUniquelyReferenced_nonNull_native);
    v143 = v3;
  }

LABEL_10:
  v13 = v5;
  sub_20B6FF83C(v142, 1);
  v145 = 0;
  v14 = v143;
  sub_20C13E164();
  v124 = v4;
  sub_20C13CA64();
  v15 = sub_20C13E1B4();
  v16 = v14 + 56;
  v17 = v14;
  v18 = -1 << *(v14 + 32);
  v19 = v15 & ~v18;
  if ((*(v16 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
  {
    v20 = ~v18;
    while (1)
    {
      v21 = *(*(v17 + 48) + v19);
      if (v21 > 1 && v21 != 3 && v21 != 4)
      {
        break;
      }

      v22 = sub_20C13DFF4();

      if (v22)
      {
        goto LABEL_18;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v16 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
LABEL_17:
    v23 = swift_isUniquelyReferenced_nonNull_native();
    *v142 = v17;
    sub_20B706478(2u, v19, v23);
    v17 = *v142;
    v143 = *v142;
  }

LABEL_18:
  v144 = 0;
  sub_20C13E164();
  sub_20C13CA64();
  v24 = sub_20C13E1B4();
  v25 = -1 << *(v17 + 32);
  v26 = v24 & ~v25;
  if ((*(v17 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
  {
    v27 = ~v25;
    while (1)
    {
      v28 = *(*(v17 + 48) + v26);
      if (v28 >= 4)
      {
        break;
      }

      v29 = sub_20C13DFF4();

      if (v29)
      {
        goto LABEL_26;
      }

      v26 = (v26 + 1) & v27;
      if (((*(v17 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

LABEL_26:
    v123 = v17;
    v31 = v128;
  }

  else
  {
LABEL_23:
    v30 = swift_isUniquelyReferenced_nonNull_native();
    *v142 = v17;
    sub_20B706478(4u, v26, v30);
    v31 = v128;

    v123 = *v142;
  }

  v121 = v145;
  v122 = v144;
  v32 = *MEMORY[0x277D76918];
  v139 = v3;
  sub_20C13E164();
  v119 = v31;
  v33 = v32;
  v34 = v13;
  sub_20C13CA64();
  v35 = sub_20C13E1B4();
  v36 = -1 << *(v3 + 32);
  v37 = v35 & ~v36;
  if ((*(v3 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v37))
  {
    v38 = ~v36;
    while (1)
    {
      v39 = *(*(v3 + 48) + v37);
      if (v39 <= 2 && v39 != 1 && v39 != 2)
      {
        break;
      }

      v40 = sub_20C13DFF4();

      if (v40)
      {
        goto LABEL_36;
      }

      v37 = (v37 + 1) & v38;
      if (((*(v3 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v37) & 1) == 0)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
LABEL_35:
    v41 = swift_isUniquelyReferenced_nonNull_native();
    *v142 = v3;
    sub_20B706478(0, v37, v41);
    v139 = *v142;
  }

LABEL_36:
  v42 = v34;
  sub_20B6FF83C(v142, 1);
  v141 = 0;
  v43 = v139;
  sub_20C13E164();
  v126 = v33;
  sub_20C13CA64();
  v44 = sub_20C13E1B4();
  v45 = -1 << *(v139 + 32);
  v46 = v44 & ~v45;
  if ((*(v139 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46))
  {
    v47 = ~v45;
    while (1)
    {
      v48 = *(*(v43 + 48) + v46);
      if (v48 > 1 && v48 != 3 && v48 != 4)
      {
        break;
      }

      v49 = sub_20C13DFF4();

      if (v49)
      {
        v43 = v139;
        goto LABEL_46;
      }

      v46 = (v46 + 1) & v47;
      v43 = v139;
      if (((*(v139 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
      {
        goto LABEL_43;
      }
    }
  }

  else
  {
LABEL_43:
    v50 = swift_isUniquelyReferenced_nonNull_native();
    *v142 = v43;
    sub_20B706478(2u, v46, v50);
    v43 = *v142;
    v139 = *v142;
  }

LABEL_46:
  v140 = 0;
  sub_20C13E164();
  sub_20C13CA64();
  v51 = sub_20C13E1B4();
  v52 = v43 + 56;
  v53 = -1 << *(v43 + 32);
  v54 = v51 & ~v53;
  if ((*(v43 + 56 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54))
  {
    v55 = ~v53;
    v129 = v43;
    while (1)
    {
      v56 = *(*(v43 + 48) + v54);
      if (v56 >= 4)
      {
        break;
      }

      v57 = sub_20C13DFF4();

      if (v57)
      {
        goto LABEL_53;
      }

      v54 = (v54 + 1) & v55;
      v43 = v129;
      if (((*(v52 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
      {
        goto LABEL_51;
      }
    }

LABEL_53:

    v59 = v119;
  }

  else
  {
LABEL_51:
    v58 = swift_isUniquelyReferenced_nonNull_native();
    *v142 = v43;
    sub_20B706478(4u, v54, v58);

    v59 = v119;
    v129 = *v142;
  }

  v118 = v141;
  v120 = v140;
  v136 = v3;
  sub_20C13E164();
  v116 = v59;
  v60 = v124;
  v61 = v42;
  sub_20C13CA64();
  v62 = sub_20C13E1B4();
  v63 = -1 << *(v3 + 32);
  v64 = v62 & ~v63;
  if ((*(v3 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v64))
  {
    v65 = ~v63;
    while (1)
    {
      v66 = *(*(v3 + 48) + v64);
      if (v66 <= 2 && v66 != 1 && v66 != 2)
      {
        break;
      }

      v67 = sub_20C13DFF4();

      if (v67)
      {
        goto LABEL_63;
      }

      v64 = (v64 + 1) & v65;
      if (((*(v3 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v64) & 1) == 0)
      {
        goto LABEL_62;
      }
    }
  }

  else
  {
LABEL_62:
    v68 = swift_isUniquelyReferenced_nonNull_native();
    *v142 = v3;
    sub_20B706478(0, v64, v68);
    v136 = *v142;
  }

LABEL_63:
  v114 = v61;
  sub_20B6FF83C(v142, 1);
  v138 = 0;
  v69 = v136;
  sub_20C13E164();
  v125 = v60;
  sub_20C13CA64();
  v70 = sub_20C13E1B4();
  v71 = -1 << *(v136 + 32);
  v72 = v70 & ~v71;
  if ((*(v136 + 56 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v72))
  {
    v73 = ~v71;
    while (1)
    {
      v74 = *(*(v136 + 48) + v72);
      if (v74 > 1 && v74 != 3 && v74 != 4)
      {
        break;
      }

      v75 = sub_20C13DFF4();

      if (v75)
      {
        goto LABEL_71;
      }

      v72 = (v72 + 1) & v73;
      if (((*(v136 + 56 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v72) & 1) == 0)
      {
        goto LABEL_70;
      }
    }
  }

  else
  {
LABEL_70:
    v76 = swift_isUniquelyReferenced_nonNull_native();
    *v142 = v136;
    sub_20B706478(2u, v72, v76);
    v69 = *v142;
    v136 = *v142;
  }

LABEL_71:
  v137 = 0;
  sub_20C13E164();
  sub_20C13CA64();
  v77 = sub_20C13E1B4();
  v78 = -1 << *(v69 + 32);
  v79 = v77 & ~v78;
  if ((*(v69 + 56 + ((v79 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v79))
  {
    v80 = ~v78;
    while (1)
    {
      v81 = *(*(v69 + 48) + v79);
      if (v81 >= 4)
      {
        break;
      }

      v82 = sub_20C13DFF4();

      if (v82)
      {
        goto LABEL_79;
      }

      v79 = (v79 + 1) & v80;
      if (((*(v69 + 56 + ((v79 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v79) & 1) == 0)
      {
        goto LABEL_76;
      }
    }

LABEL_79:

    v84 = v116;
    v85 = v114;
  }

  else
  {
LABEL_76:
    v83 = swift_isUniquelyReferenced_nonNull_native();
    *v142 = v69;
    sub_20B706478(4u, v79, v83);

    v84 = v116;
    v85 = v114;

    v69 = *v142;
  }

  v113 = v138;
  v117 = v137;
  v133 = v3;
  sub_20C13E164();
  v115 = v84;
  v86 = v126;
  v87 = v85;
  sub_20C13CA64();
  v88 = sub_20C13E1B4();
  v89 = -1 << *(v3 + 32);
  v90 = v88 & ~v89;
  if ((*(v3 + ((v90 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v90))
  {
    v91 = ~v89;
    while (1)
    {
      v92 = *(*(v3 + 48) + v90);
      if (v92 <= 2 && v92 != 1 && v92 != 2)
      {
        break;
      }

      v93 = sub_20C13DFF4();

      if (v93)
      {
        goto LABEL_89;
      }

      v90 = (v90 + 1) & v91;
      if (((*(v3 + ((v90 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v90) & 1) == 0)
      {
        goto LABEL_88;
      }
    }
  }

  else
  {
LABEL_88:
    v94 = swift_isUniquelyReferenced_nonNull_native();
    *v142 = v3;
    sub_20B706478(0, v90, v94);
    v133 = *v142;
  }

LABEL_89:
  v127 = *MEMORY[0x277D74410];
  v112 = v87;
  sub_20B6FF83C(v142, 1);
  v135 = 0;
  sub_20C13E164();
  v111 = v86;
  sub_20C13CA64();
  v95 = sub_20C13E1B4();
  v96 = -1 << *(v133 + 32);
  v97 = v95 & ~v96;
  if ((*(v133 + 56 + ((v97 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v97))
  {
    v98 = ~v96;
    while (1)
    {
      v99 = *(*(v133 + 48) + v97);
      if (v99 > 1 && v99 != 3 && v99 != 4)
      {
        break;
      }

      v100 = sub_20C13DFF4();

      if (v100)
      {
        goto LABEL_97;
      }

      v97 = (v97 + 1) & v98;
      if (((*(v133 + 56 + ((v97 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v97) & 1) == 0)
      {
        goto LABEL_96;
      }
    }
  }

  else
  {
LABEL_96:
    v101 = swift_isUniquelyReferenced_nonNull_native();
    *v142 = v133;
    sub_20B706478(2u, v97, v101);
    v133 = *v142;
  }

LABEL_97:
  v134 = 0;
  sub_20B6FF83C(v142, 4);

  v110 = v133;
  v102 = v135;
  v103 = *MEMORY[0x277D76A28];
  *v142 = v3;
  v104 = v115;
  v105 = v103;
  v106 = v112;
  sub_20B6FF83C(v132, 0);
  v107 = v106;
  sub_20B6FF83C(v132, 1);
  v132[0] = 0;
  v108 = v105;
  sub_20B6FF83C(v131, 2);
  v131[0] = 0;
  sub_20B6FF83C(&v130, 4);

  *&xmmword_27C763398 = v115;
  *(&xmmword_27C763398 + 1) = v112;
  qword_27C7633A8 = v125;
  dword_27C7633B0 = 0x8000;
  byte_27C7633B4 = v121;
  byte_27C7633B5 = 9;
  *&xmmword_27C7633B8 = v127;
  BYTE8(xmmword_27C7633B8) = v122;
  qword_27C7633C8 = v123;
  result = 0.0;
  unk_27C7633D0 = 0u;
  *(&xmmword_27C7633D8 + 8) = 0u;
  unk_27C7633F0 = 0u;
  qword_27C763400 = 0;
  unk_27C763408 = v115;
  qword_27C763410 = v112;
  unk_27C763418 = v111;
  dword_27C763420 = 0x8000;
  byte_27C763424 = v118;
  byte_27C763425 = 9;
  qword_27C763428 = v127;
  byte_27C763430 = v120;
  *&xmmword_27C763438 = v129;
  *(&xmmword_27C763438 + 1) = v115;
  qword_27C763448 = v112;
  unk_27C763450 = v125;
  *&xmmword_27C763458 = (v113 << 32) | 0x90000008000;
  *(&xmmword_27C763458 + 1) = v127;
  qword_27C763468 = v117;
  unk_27C763470 = v69;
  *&xmmword_27C763478 = v115;
  *(&xmmword_27C763478 + 1) = v112;
  qword_27C763488 = v111;
  dword_27C763490 = 0x8000;
  byte_27C763494 = v102;
  byte_27C763495 = 9;
  *&xmmword_27C763498 = v127;
  BYTE8(xmmword_27C763498) = 0;
  qword_27C7634A8 = v110;
  xmmword_27C7634C0 = 0u;
  unk_27C7634D0 = 0u;
  xmmword_27C7634B0 = 0u;
  qword_27C7634E0 = 0;
  unk_27C7634E8 = v115;
  qword_27C7634F0 = v112;
  unk_27C7634F8 = v108;
  dword_27C763500 = 0x8000;
  byte_27C763504 = v132[0];
  byte_27C763505 = 9;
  qword_27C763508 = v127;
  byte_27C763510 = v131[0];
  *&xmmword_27C763518 = *v142;
  qword_27C763550 = 0;
  xmmword_27C763530 = 0u;
  unk_27C763540 = 0u;
  *(&xmmword_27C763518 + 8) = 0u;
  return result;
}

double sub_20B68FCA8()
{
  v0 = *MEMORY[0x277D76A28];
  v1 = *MEMORY[0x277D74368];
  v2 = *MEMORY[0x277D76838];
  v3 = MEMORY[0x277D84FA0];
  v143 = MEMORY[0x277D84FA0];
  sub_20C13E164();
  v128 = v1;
  v4 = v0;
  v5 = v2;
  sub_20C13CA64();
  v6 = sub_20C13E1B4();
  v7 = -1 << *(v3 + 32);
  v8 = v6 & ~v7;
  if ((*(v3 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(*(v3 + 48) + v8);
      if (v10 <= 2 && v10 != 1 && v10 != 2)
      {
        break;
      }

      v11 = sub_20C13DFF4();

      if (v11)
      {
        goto LABEL_10;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v3 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v8) & 1) == 0)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v142 = v3;
    sub_20B706478(0, v8, isUniquelyReferenced_nonNull_native);
    v143 = v3;
  }

LABEL_10:
  v13 = v5;
  sub_20B6FF83C(v142, 1);
  v145 = 0;
  v14 = v143;
  sub_20C13E164();
  v125 = v4;
  sub_20C13CA64();
  v15 = sub_20C13E1B4();
  v16 = v14 + 56;
  v17 = v14;
  v18 = -1 << *(v14 + 32);
  v19 = v15 & ~v18;
  if ((*(v16 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
  {
    v20 = ~v18;
    while (1)
    {
      v21 = *(*(v17 + 48) + v19);
      if (v21 > 1 && v21 != 3 && v21 != 4)
      {
        break;
      }

      v22 = sub_20C13DFF4();

      if (v22)
      {
        goto LABEL_18;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v16 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
LABEL_17:
    v23 = swift_isUniquelyReferenced_nonNull_native();
    *v142 = v17;
    sub_20B706478(2u, v19, v23);
    v17 = *v142;
    v143 = *v142;
  }

LABEL_18:
  v144 = 0;
  sub_20C13E164();
  sub_20C13CA64();
  v24 = sub_20C13E1B4();
  v25 = -1 << *(v17 + 32);
  v26 = v24 & ~v25;
  if ((*(v17 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
  {
    v27 = ~v25;
    while (1)
    {
      v28 = *(*(v17 + 48) + v26);
      if (v28 >= 4)
      {
        break;
      }

      v29 = sub_20C13DFF4();

      if (v29)
      {
        goto LABEL_26;
      }

      v26 = (v26 + 1) & v27;
      if (((*(v17 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

LABEL_26:
    v124 = v17;
    v31 = v128;
  }

  else
  {
LABEL_23:
    v30 = swift_isUniquelyReferenced_nonNull_native();
    *v142 = v17;
    sub_20B706478(4u, v26, v30);
    v31 = v128;

    v124 = *v142;
  }

  v122 = v145;
  v123 = v144;
  v32 = *MEMORY[0x277D76A08];
  v139 = v3;
  sub_20C13E164();
  v120 = v31;
  v33 = v32;
  v34 = v13;
  sub_20C13CA64();
  v35 = sub_20C13E1B4();
  v36 = -1 << *(v3 + 32);
  v37 = v35 & ~v36;
  if ((*(v3 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v37))
  {
    v38 = ~v36;
    while (1)
    {
      v39 = *(*(v3 + 48) + v37);
      if (v39 <= 2 && v39 != 1 && v39 != 2)
      {
        break;
      }

      v40 = sub_20C13DFF4();

      if (v40)
      {
        goto LABEL_36;
      }

      v37 = (v37 + 1) & v38;
      if (((*(v3 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v37) & 1) == 0)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
LABEL_35:
    v41 = swift_isUniquelyReferenced_nonNull_native();
    *v142 = v3;
    sub_20B706478(0, v37, v41);
    v139 = *v142;
  }

LABEL_36:
  v42 = v34;
  sub_20B6FF83C(v142, 1);
  v141 = 0;
  v43 = v139;
  sub_20C13E164();
  v127 = v33;
  sub_20C13CA64();
  v44 = sub_20C13E1B4();
  v45 = -1 << *(v139 + 32);
  v46 = v44 & ~v45;
  if ((*(v139 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46))
  {
    v47 = ~v45;
    while (1)
    {
      v48 = *(*(v43 + 48) + v46);
      if (v48 > 1 && v48 != 3 && v48 != 4)
      {
        break;
      }

      v49 = sub_20C13DFF4();

      if (v49)
      {
        v43 = v139;
        goto LABEL_46;
      }

      v46 = (v46 + 1) & v47;
      v43 = v139;
      if (((*(v139 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
      {
        goto LABEL_43;
      }
    }
  }

  else
  {
LABEL_43:
    v50 = swift_isUniquelyReferenced_nonNull_native();
    *v142 = v43;
    sub_20B706478(2u, v46, v50);
    v43 = *v142;
    v139 = *v142;
  }

LABEL_46:
  v140 = 0;
  sub_20C13E164();
  sub_20C13CA64();
  v51 = sub_20C13E1B4();
  v52 = v43 + 56;
  v53 = -1 << *(v43 + 32);
  v54 = v51 & ~v53;
  if ((*(v43 + 56 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54))
  {
    v55 = ~v53;
    v129 = v43;
    while (1)
    {
      v56 = *(*(v43 + 48) + v54);
      if (v56 >= 4)
      {
        break;
      }

      v57 = sub_20C13DFF4();

      if (v57)
      {
        goto LABEL_53;
      }

      v54 = (v54 + 1) & v55;
      v43 = v129;
      if (((*(v52 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
      {
        goto LABEL_51;
      }
    }

LABEL_53:

    v59 = v120;
  }

  else
  {
LABEL_51:
    v58 = swift_isUniquelyReferenced_nonNull_native();
    *v142 = v43;
    sub_20B706478(4u, v54, v58);

    v59 = v120;
    v129 = *v142;
  }

  v119 = v141;
  v121 = v140;
  v136 = v3;
  sub_20C13E164();
  v117 = v59;
  v60 = v125;
  v61 = v42;
  sub_20C13CA64();
  v62 = sub_20C13E1B4();
  v63 = -1 << *(v3 + 32);
  v64 = v62 & ~v63;
  if ((*(v3 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v64))
  {
    v65 = ~v63;
    while (1)
    {
      v66 = *(*(v3 + 48) + v64);
      if (v66 <= 2 && v66 != 1 && v66 != 2)
      {
        break;
      }

      v67 = sub_20C13DFF4();

      if (v67)
      {
        goto LABEL_63;
      }

      v64 = (v64 + 1) & v65;
      if (((*(v3 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v64) & 1) == 0)
      {
        goto LABEL_62;
      }
    }
  }

  else
  {
LABEL_62:
    v68 = swift_isUniquelyReferenced_nonNull_native();
    *v142 = v3;
    sub_20B706478(0, v64, v68);
    v136 = *v142;
  }

LABEL_63:
  v115 = v61;
  sub_20B6FF83C(v142, 1);
  v138 = 0;
  v69 = v136;
  sub_20C13E164();
  v126 = v60;
  sub_20C13CA64();
  v70 = sub_20C13E1B4();
  v71 = -1 << *(v136 + 32);
  v72 = v70 & ~v71;
  if ((*(v136 + 56 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v72))
  {
    v73 = ~v71;
    while (1)
    {
      v74 = *(*(v136 + 48) + v72);
      if (v74 > 1 && v74 != 3 && v74 != 4)
      {
        break;
      }

      v75 = sub_20C13DFF4();

      if (v75)
      {
        goto LABEL_71;
      }

      v72 = (v72 + 1) & v73;
      if (((*(v136 + 56 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v72) & 1) == 0)
      {
        goto LABEL_70;
      }
    }
  }

  else
  {
LABEL_70:
    v76 = swift_isUniquelyReferenced_nonNull_native();
    *v142 = v136;
    sub_20B706478(2u, v72, v76);
    v69 = *v142;
    v136 = *v142;
  }

LABEL_71:
  v137 = 0;
  sub_20C13E164();
  sub_20C13CA64();
  v77 = sub_20C13E1B4();
  v78 = -1 << *(v69 + 32);
  v79 = v77 & ~v78;
  if ((*(v69 + 56 + ((v79 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v79))
  {
    v80 = ~v78;
    while (1)
    {
      v81 = *(*(v69 + 48) + v79);
      if (v81 >= 4)
      {
        break;
      }

      v82 = sub_20C13DFF4();

      if (v82)
      {
        goto LABEL_79;
      }

      v79 = (v79 + 1) & v80;
      if (((*(v69 + 56 + ((v79 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v79) & 1) == 0)
      {
        goto LABEL_76;
      }
    }

LABEL_79:
    v84 = v117;

    v85 = v115;
  }

  else
  {
LABEL_76:
    v83 = swift_isUniquelyReferenced_nonNull_native();
    *v142 = v69;
    sub_20B706478(4u, v79, v83);
    v84 = v117;

    v85 = v115;
    v69 = *v142;
  }

  v114 = v138;
  v118 = v137;
  v86 = *MEMORY[0x277D76A20];
  v133 = v3;
  sub_20C13E164();
  v116 = v84;
  v87 = v86;
  v88 = v85;
  sub_20C13CA64();
  v89 = sub_20C13E1B4();
  v90 = -1 << *(v3 + 32);
  v91 = v89 & ~v90;
  if ((*(v3 + ((v91 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v91))
  {
    v92 = ~v90;
    while (1)
    {
      v93 = *(*(v3 + 48) + v91);
      if (v93 <= 2 && v93 != 1 && v93 != 2)
      {
        break;
      }

      v94 = sub_20C13DFF4();

      if (v94)
      {
        goto LABEL_89;
      }

      v91 = (v91 + 1) & v92;
      if (((*(v3 + ((v91 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v91) & 1) == 0)
      {
        goto LABEL_88;
      }
    }
  }

  else
  {
LABEL_88:
    v95 = swift_isUniquelyReferenced_nonNull_native();
    *v142 = v3;
    sub_20B706478(0, v91, v95);
    v133 = *v142;
  }

LABEL_89:
  v113 = *MEMORY[0x277D74410];
  v112 = v88;
  sub_20B6FF83C(v142, 1);
  v135 = 0;
  sub_20C13E164();
  v111 = v87;
  sub_20C13CA64();
  v96 = sub_20C13E1B4();
  v97 = -1 << *(v133 + 32);
  v98 = v96 & ~v97;
  if ((*(v133 + 56 + ((v98 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v98))
  {
    v99 = ~v97;
    while (1)
    {
      v100 = *(*(v133 + 48) + v98);
      if (v100 > 1 && v100 != 3 && v100 != 4)
      {
        break;
      }

      v101 = sub_20C13DFF4();

      if (v101)
      {
        goto LABEL_97;
      }

      v98 = (v98 + 1) & v99;
      if (((*(v133 + 56 + ((v98 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v98) & 1) == 0)
      {
        goto LABEL_96;
      }
    }
  }

  else
  {
LABEL_96:
    v102 = swift_isUniquelyReferenced_nonNull_native();
    *v142 = v133;
    sub_20B706478(2u, v98, v102);
    v133 = *v142;
  }

LABEL_97:
  v134 = 0;
  sub_20B6FF83C(v142, 4);

  v110 = v133;
  v103 = v135;
  *v142 = v3;
  v104 = v116;
  v105 = v127;
  v106 = v112;
  sub_20B6FF83C(v132, 0);
  v107 = v106;
  sub_20B6FF83C(v132, 1);
  v132[0] = 0;
  v108 = v105;
  sub_20B6FF83C(v131, 2);
  v131[0] = 0;
  sub_20B6FF83C(&v130, 4);

  *&xmmword_27C763558 = v116;
  *(&xmmword_27C763558 + 1) = v112;
  qword_27C763568 = v126;
  dword_27C763570 = 0x8000;
  byte_27C763574 = v122;
  byte_27C763575 = 9;
  *&xmmword_27C763578 = v113;
  BYTE8(xmmword_27C763578) = v123;
  qword_27C763588 = v124;
  result = 0.0;
  unk_27C763590 = 0u;
  *(&xmmword_27C763598 + 8) = 0u;
  unk_27C7635B0 = 0u;
  qword_27C7635C0 = 0;
  unk_27C7635C8 = v116;
  qword_27C7635D0 = v112;
  unk_27C7635D8 = v108;
  dword_27C7635E0 = 0x8000;
  byte_27C7635E4 = v119;
  byte_27C7635E5 = 9;
  qword_27C7635E8 = v113;
  byte_27C7635F0 = v121;
  *&xmmword_27C7635F8 = v129;
  *(&xmmword_27C7635F8 + 1) = v116;
  qword_27C763608 = v112;
  unk_27C763610 = v126;
  *&xmmword_27C763618 = (v114 << 32) | 0x90000008000;
  *(&xmmword_27C763618 + 1) = v113;
  qword_27C763628 = v118;
  unk_27C763630 = v69;
  *&xmmword_27C763638 = v116;
  *(&xmmword_27C763638 + 1) = v112;
  qword_27C763648 = v111;
  dword_27C763650 = 0x8000;
  byte_27C763654 = v103;
  byte_27C763655 = 9;
  *&xmmword_27C763658 = v113;
  BYTE8(xmmword_27C763658) = 0;
  qword_27C763668 = v110;
  xmmword_27C763680 = 0u;
  unk_27C763690 = 0u;
  xmmword_27C763670 = 0u;
  qword_27C7636A0 = 0;
  unk_27C7636A8 = v116;
  qword_27C7636B0 = v112;
  unk_27C7636B8 = v108;
  dword_27C7636C0 = 0x8000;
  byte_27C7636C4 = v132[0];
  byte_27C7636C5 = 9;
  qword_27C7636C8 = v113;
  byte_27C7636D0 = v131[0];
  *&xmmword_27C7636D8 = *v142;
  qword_27C763710 = 0;
  xmmword_27C7636F0 = 0u;
  unk_27C763700 = 0u;
  *(&xmmword_27C7636D8 + 8) = 0u;
  return result;
}

void sub_20B6910D8()
{
  if (*(v0 + 8))
  {
    v1 = [objc_opt_self() mainScreen];
    [v1 bounds];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;

    v14.origin.x = v3;
    v14.origin.y = v5;
    v14.size.width = v7;
    v14.size.height = v9;
    Width = CGRectGetWidth(v14);
    v15.origin.x = v3;
    v15.origin.y = v5;
    v15.size.width = v7;
    v15.size.height = v9;
    Height = CGRectGetHeight(v15);
    if (Height >= Width)
    {
      v12 = Width;
    }

    else
    {
      v12 = Height;
    }

    if (qword_27C7606D0 != -1)
    {
      swift_once();
    }

    v13 = v12 - *&qword_27C799F40;
    if (qword_27C7606E0 != -1)
    {
      swift_once();
    }

    *v0 = v13 - *&qword_27C799F50;
    *(v0 + 8) = 0;
  }
}

double sub_20B691214()
{
  if ((*(v0 + 24) & 1) == 0)
  {
    return *(v0 + 16);
  }

  sub_20B6910D8();
  result = v1 * 0.668656716;
  *(v0 + 16) = result;
  *(v0 + 24) = 0;
  return result;
}

id sub_20B691254()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.168627451 green:0.164705882 blue:0.164705882 alpha:1.0];
  qword_27C763718 = result;
  return result;
}

id sub_20B6912A0()
{
  result = [objc_opt_self() blackColor];
  qword_27C763720 = result;
  return result;
}

void sub_20B691540()
{
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI37ShelfGradientBackgroundDecorationItem_gradientLayer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768250, &unk_20C16EFA0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_20C14F320;
  if (qword_27C7606B8 != -1)
  {
    swift_once();
  }

  v3 = [qword_27C763720 CGColor];
  type metadata accessor for CGColor(0);
  v5 = v4;
  *(v2 + 56) = v4;
  *(v2 + 32) = v3;
  if (qword_27C7606B0 != -1)
  {
    swift_once();
  }

  v6 = [qword_27C763718 CGColor];
  *(v2 + 88) = v5;
  *(v2 + 64) = v6;
  v7 = sub_20C13CC54();

  [v1 setColors_];

  [v1 setStartPoint_];
  [v1 setEndPoint_];
  v8 = [v0 layer];
  [v8 addSublayer_];
}

id sub_20B69170C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ShelfGradientBackgroundDecorationItem();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_20B691774(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20B691794(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
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

  *(result + 25) = v3;
  return result;
}

uint64_t sub_20B6917D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x277D84F90];
  v24 = *(a1 + 16);
  sub_20BB5DBE0(0, v1, 0);
  v2 = v25;
  v4 = a1 + 56;
  result = sub_20C13DAA4();
  v6 = v24;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(*(a1 + 48) + result);
    v12 = *(a1 + 36);
    v14 = *(v25 + 16);
    v13 = *(v25 + 24);
    if (v14 >= v13 >> 1)
    {
      v22 = *(a1 + 36);
      v23 = result;
      sub_20BB5DBE0((v13 > 1), v14 + 1, 1);
      v6 = v24;
      v12 = v22;
      result = v23;
    }

    *(v25 + 16) = v14 + 1;
    *(v25 + v14 + 32) = v11;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v15 = *(v4 + 8 * v9);
    if ((v15 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_20B526EA4(result, v12, 0);
          v6 = v24;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_20B526EA4(result, v12, 0);
      v6 = v24;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_20B6919F0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20C132EE4();
  MEMORY[0x28223BE20](v3 - 8);
  if (*(v1 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_modalityShelf) && *(v1 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_scheduleShelf))
  {

    sub_20C0BE348();
    sub_20C132ED4();
    swift_beginAccess();

    v5 = sub_20B6917D4(v4);

    sub_20B716770(v5);

    sub_20C137004();

    v6 = sub_20C137054();
    return (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
  }

  else
  {
    v8 = sub_20C137054();
    v9 = *(*(v8 - 8) + 56);

    return v9(a1, 1, 1, v8);
  }
}

uint64_t sub_20B691C18(__int128 *a1)
{
  v2 = v1;
  v4 = sub_20C1367D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WorkoutPlanSurveyPageDataProvider.State(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B6983F8(v2, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7637A0, &qword_20C1542B0);
  v12 = (*(*(v11 - 8) + 48))(v10, 3, v11);
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v15 = 2;
    }

    else
    {
      v15 = 3;
    }
  }

  else
  {
    if (!v12)
    {
      v13 = *v10;
      (*(v5 + 32))(v7, v10 + *(v11 + 48), v4);
      MEMORY[0x20F2F58E0](0);
      sub_20BBA7DBC(a1, v13);

      sub_20B6983B0(&qword_27C7637C8, MEMORY[0x277D52CA8], MEMORY[0x277D52CB0]);
      sub_20C13C7C4();
      return (*(v5 + 8))(v7, v4);
    }

    v15 = 1;
  }

  return MEMORY[0x20F2F58E0](v15);
}

uint64_t sub_20B691E40()
{
  sub_20C13E164();
  sub_20B691C18(v1);
  return sub_20C13E1B4();
}

uint64_t sub_20B691E84(uint64_t a1)
{
  sub_20C13E164();
  sub_20B691C18(v2);
  return sub_20C13E1B4();
}

uint64_t sub_20B691EC4()
{
  v1 = v0;
  v2 = sub_20C1333A4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_activeShelves);
  if (*(v7 + 16))
  {
  }

  else
  {
    v8 = *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_dependencies);
    v9 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_metricPage;
    v10 = *(v3 + 16);
    v10(v6, v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_metricPage, v2, v4);
    type metadata accessor for WorkoutPlanSurveyModalityPickerShelf(0);
    swift_allocObject();

    v12 = sub_20C0C0424(v11, v6);
    v13 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_modalityShelf;
    *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_modalityShelf) = v12;

    (v10)(v6, v0 + v9, v2);
    type metadata accessor for WorkoutPlanSurveySchedulePickerShelf(0);
    swift_allocObject();
    v14 = sub_20B5EA1D0(v8, v6);

    v15 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_scheduleShelf;
    *(v1 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_scheduleShelf) = v14;

    v16 = *(v1 + v13);
    if (v16 && (v17 = *(v1 + v15)) != 0)
    {
      v18 = swift_allocObject();
      swift_weakInit();
      v19 = (v16 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveyModalityPickerShelf_onRowUpdated);
      v20 = *(v16 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveyModalityPickerShelf_onRowUpdated);
      v21 = *(v16 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveyModalityPickerShelf_onRowUpdated + 8);
      *v19 = sub_20B6988B0;
      v19[1] = v18;

      sub_20B583ECC(v20, v21);

      v22 = swift_allocObject();
      swift_weakInit();
      v23 = (v17 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_onRowUpdated);
      v24 = *(v17 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_onRowUpdated);
      v25 = *(v17 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_onRowUpdated + 8);
      *v23 = sub_20B698684;
      v23[1] = v22;

      sub_20B583ECC(v24, v25);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766A00, &qword_20C1538C0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_20C1517D0;
      type metadata accessor for WorkoutPlanSurveyHeaderShelf(0);
      v26 = swift_allocObject();
      *(v26 + 24) = 0;
      swift_unknownObjectWeakInit();
      sub_20C132ED4();
      v27 = v26 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanSurveyHeaderShelf_row;
      sub_20B5D8060(v35);
      v28 = v35[9];
      *(v27 + 128) = v35[8];
      *(v27 + 144) = v28;
      *(v27 + 160) = v36;
      v29 = v35[5];
      *(v27 + 64) = v35[4];
      *(v27 + 80) = v29;
      v30 = v35[7];
      *(v27 + 96) = v35[6];
      *(v27 + 112) = v30;
      v31 = v35[1];
      *v27 = v35[0];
      *(v27 + 16) = v31;
      v32 = v35[3];
      *(v27 + 32) = v35[2];
      *(v27 + 48) = v32;
      type metadata accessor for WorkoutPlanStringBuilder(0);
      sub_20C133AA4();
      *(v26 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanSurveyHeaderShelf_workoutPlanStringBuilder) = v34;
      *(v7 + 32) = v26;
      *(v7 + 40) = &off_2822C9CD8;
      *(v7 + 48) = v17;
      *(v7 + 56) = &off_2822965A8;
      *(v7 + 64) = v16;
      *(v7 + 72) = &off_282306BA0;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v7;
}

double sub_20B69228C(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20B693BD4();
  }

  return result;
}

uint64_t sub_20B6922E4(uint64_t a1, int a2)
{
  v3 = v2;
  v59 = a2;
  v5 = *(v2 + 32);
  v6 = *(v5 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_identifier + 8);
  v63 = *(v5 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_identifier);
  v7 = *(v5 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
  sub_20B51CC64(v5 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker, v75);
  v62 = v6;

  v61 = v7;
  v60 = sub_20C1380F4();
  v8 = type metadata accessor for MetricLocationStore();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D84F90];
  v11 = MEMORY[0x277D84F98];
  *(v9 + 16) = MEMORY[0x277D84F90];
  *(v9 + 24) = v11;
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v75, v76);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = (&v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15, v13);
  v17 = *v15;
  v18 = type metadata accessor for CatalogPageImpressionTracker();
  v74[3] = v18;
  v19 = sub_20B6983B0(&qword_27C761A90, type metadata accessor for CatalogPageImpressionTracker, &unk_20C167088);
  v74[4] = v19;
  v74[0] = v17;
  v73[3] = v8;
  v73[4] = &off_2822B6968;
  v73[0] = v9;
  v20 = *(a1 + 16);
  if (v20)
  {
    v57 = v18;
    v58 = v8;
    v72[0] = v10;
    sub_20BB5D394(0, v20, 0);
    v10 = v72[0];
    v21 = (a1 + 32);
    do
    {
      v22 = *v21;
      v72[0] = v10;
      v24 = *(v10 + 16);
      v23 = *(v10 + 24);
      v64 = v22;
      swift_unknownObjectRetain();
      if (v24 >= v23 >> 1)
      {
        sub_20BB5D394((v23 > 1), v24 + 1, 1);
        v10 = v72[0];
      }

      *(v10 + 16) = v24 + 1;
      v25 = v10 + 24 * v24;
      *(v25 + 32) = v64;
      *(v25 + 48) = 0;
      ++v21;
      --v20;
    }

    while (v20);
    v18 = v57;
    v8 = v58;
  }

  sub_20B51CC64(v74, v72);
  sub_20B51CC64(v73, v71);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(v72, v72[3]);
  *&v64 = &v57;
  v27 = MEMORY[0x28223BE20](v26);
  v29 = (&v57 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29, v27);
  v31 = __swift_mutable_project_boxed_opaque_existential_1(v71, v71[3]);
  v32 = MEMORY[0x28223BE20](v31);
  v34 = (&v57 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34, v32);
  v36 = *v29;
  v37 = *v34;
  v69 = v18;
  v70 = v19;
  v68[0] = v36;
  v66 = v8;
  v67 = &off_2822B6968;
  v65[0] = v37;
  v38 = objc_allocWithZone(type metadata accessor for CatalogPage());
  v39 = __swift_mutable_project_boxed_opaque_existential_1(v68, v69);
  v40 = MEMORY[0x28223BE20](v39);
  v42 = (&v57 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v43 + 16))(v42, v40);
  v44 = __swift_mutable_project_boxed_opaque_existential_1(v65, v66);
  v45 = MEMORY[0x28223BE20](v44);
  v47 = (&v57 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v48 + 16))(v47, v45);
  v49 = sub_20BE3AA74(v63, v62, v10, v60, v61, *v42, *v47, 2, v38);
  __swift_destroy_boxed_opaque_existential_1(v73);
  __swift_destroy_boxed_opaque_existential_1(v74);
  __swift_destroy_boxed_opaque_existential_1(v65);
  __swift_destroy_boxed_opaque_existential_1(v68);
  __swift_destroy_boxed_opaque_existential_1(v71);
  __swift_destroy_boxed_opaque_existential_1(v72);
  __swift_destroy_boxed_opaque_existential_1(v75);
  v50 = *(v3 + 32);
  *(v3 + 32) = v49;

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v52 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    v76 = type metadata accessor for WorkoutPlanSurveyPageDataProvider(0);
    v77 = &off_28229CA48;
    v75[0] = v3;
    v54 = *(v3 + 32);
    v55 = *(v52 + 24);

    v56 = v54;
    v55(v75, v56, v59 & 1, ObjectType, v52);

    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v75);
  }

  return result;
}

uint64_t sub_20B692928()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764630, &unk_20C16BB70);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_20C1367D4();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30, &unk_20C14D9D0);
  v1[10] = v4;
  v1[11] = *(v4 - 8);
  v1[12] = swift_task_alloc();
  v5 = sub_20C134104();
  v1[13] = v5;
  v1[14] = *(v5 - 8);
  v1[15] = swift_task_alloc();
  sub_20C13CDA4();
  v1[16] = sub_20C13CD94();
  v7 = sub_20C13CD24();
  v1[17] = v7;
  v1[18] = v6;

  return MEMORY[0x2822009F8](sub_20B692B48, v7, v6);
}

uint64_t sub_20B692B48()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 24) + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_configurationClient), *(*(v0 + 24) + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_configurationClient + 24));
  sub_20C1398E4();

  return MEMORY[0x2822009F8](sub_20B692BE4, 0, 0);
}

uint64_t sub_20B692BE4()
{
  v1 = v0[12];
  v2 = swift_task_alloc();
  v0[19] = v2;
  *(v2 + 16) = "SeymourUI/WorkoutPlanSurveyPageDataProvider.swift";
  *(v2 + 24) = 49;
  *(v2 + 32) = 2;
  *(v2 + 40) = 155;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v3[1] = sub_20B692CF4;
  v4 = v0[15];
  v5 = v0[13];

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B698634, v2, v5);
}

uint64_t sub_20B692CF4()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {

    v3 = sub_20B693188;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = v2[11];
    v6 = v2[12];
    v8 = v2[10];

    (*(v7 + 8))(v6, v8);
    v4 = v2[17];
    v5 = v2[18];
    v3 = sub_20B692E58;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_20B692E58()
{
  v1 = *(v0 + 24);
  sub_20C134064();
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_catalogClient), *(v1 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_catalogClient + 24));
  sub_20C139FD4();

  return MEMORY[0x2822009F8](sub_20B692F00, 0, 0);
}

uint64_t sub_20B692F00()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[22] = v2;
  *(v2 + 16) = "SeymourUI/WorkoutPlanSurveyPageDataProvider.swift";
  *(v2 + 24) = 49;
  *(v2 + 32) = 2;
  *(v2 + 40) = 159;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[23] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770C10, &qword_20C1542C0);
  *v3 = v0;
  v3[1] = sub_20B69301C;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B69864C, v2, v4);
}

uint64_t sub_20B69301C()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {

    v3 = sub_20B6933EC;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = v2[5];
    v6 = v2[6];
    v8 = v2[4];
    v2[25] = v2[2];

    (*(v7 + 8))(v6, v8);
    v4 = v2[17];
    v5 = v2[18];
    v3 = sub_20B6932A8;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_20B693188()
{
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1 = v0[17];
  v2 = v0[18];

  return MEMORY[0x2822009F8](sub_20B6931FC, v1, v2);
}

uint64_t sub_20B6931FC()
{

  v1 = *(v0 + 168);
  sub_20B693954(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20B6932A8()
{
  v1 = v0[25];
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[14];
  v6 = v0[8];
  v5 = v0[9];
  v12 = v0[7];

  v7 = swift_task_alloc();
  *(v7 + 16) = v5;
  v9 = sub_20BEE0CD8(sub_20B698664, v8, v7, v1);

  sub_20B6935D4(v9, v5);

  (*(v4 + 8))(v2, v3);
  (*(v6 + 8))(v5, v12);

  v10 = v0[1];

  return v10();
}