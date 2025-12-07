uint64_t sub_223654040()
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B680);
  v3 = v1;
  v4 = sub_22372AC88();
  v5 = sub_22372B268();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 16);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    _os_log_impl(&dword_223620000, v4, v5, "ChildRequestController received %@", v8, 0xCu);
    sub_223626478(v9, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v9, -1, -1);
    MEMORY[0x223DE8A80](v8, -1, -1);
  }

  v11 = *(v0 + 16);
  sub_2236572D0();
  swift_allocError();
  *v12 = v7;
  swift_willThrow();
  v15 = *(v0 + 8);
  v13 = v11;

  return v15();
}

uint64_t sub_2236541F8(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_2237287C8();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9C0, &qword_223731E30);
  v2[12] = swift_task_alloc();
  v4 = sub_22372A098();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22365434C, v1, 0);
}

uint64_t sub_22365434C()
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B680);
  v3 = v1;
  v4 = sub_22372AC88();
  v5 = sub_22372B268();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[7];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_223620000, v4, v5, "ChildRequestController received %@", v7, 0xCu);
    sub_223626478(v8, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v8, -1, -1);
    MEMORY[0x223DE8A80](v7, -1, -1);
  }

  v10 = v0[13];
  v11 = v0[14];
  v13 = v0[11];
  v12 = v0[12];
  v14 = v0[9];
  v15 = v0[10];

  sub_2237287D8();
  sub_223654AA0(v13, v12);
  (*(v15 + 8))(v13, v14);
  if ((*(v11 + 48))(v12, 1, v10) == 1)
  {
    sub_223626478(v0[12], &unk_27D08E9C0, &qword_223731E30);
  }

  else
  {
    v16 = v0[15];
    v17 = v0[8];
    (*(v0[14] + 32))(v16, v0[12], v0[13]);
    sub_223623934(*(v17 + 192) + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_requestStateInfoManager, (v0 + 2));
    v18 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v19 = sub_223729D38();
    v21 = v20;
    v22 = *v18;
    v23 = *(*v18 + 24);
    v24 = swift_task_alloc();
    v24[2] = v16;
    v24[3] = v19;
    v24[4] = v21;
    v24[5] = v22;
    v25 = swift_task_alloc();
    *(v25 + 16) = sub_223657594;
    *(v25 + 24) = v24;
    os_unfair_lock_lock(v23 + 4);
    sub_223637034(v26);
    os_unfair_lock_unlock(v23 + 4);
    v28 = v0[14];
    v27 = v0[15];
    v29 = v0[13];

    (*(v28 + 8))(v27, v29);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  }

  v30 = v0[1];

  return v30();
}

uint64_t sub_223654698(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9C0, &qword_223731E30);
  v2[9] = swift_task_alloc();
  v3 = sub_22372A098();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_223654790, v1, 0);
}

uint64_t sub_223654790()
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B680);
  v3 = v1;
  v4 = sub_22372AC88();
  v5 = sub_22372B268();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[7];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_223620000, v4, v5, "ChildRequestController received %@", v7, 0xCu);
    sub_223626478(v8, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v8, -1, -1);
    MEMORY[0x223DE8A80](v7, -1, -1);
  }

  v10 = v0[10];
  v11 = v0[11];
  v12 = v0[9];

  sub_223729A28();
  if ((*(v11 + 48))(v12, 1, v10) == 1)
  {
    sub_223626478(v0[9], &unk_27D08E9C0, &qword_223731E30);
  }

  else
  {
    v13 = v0[12];
    v14 = v0[8];
    (*(v0[11] + 32))(v13, v0[9], v0[10]);
    sub_223623934(*(v14 + 192) + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_requestStateInfoManager, (v0 + 2));
    v15 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v16 = sub_223729D38();
    v18 = v17;
    v19 = *v15;
    v20 = *(*v15 + 24);
    v21 = swift_task_alloc();
    v21[2] = v13;
    v21[3] = v16;
    v21[4] = v18;
    v21[5] = v19;
    v22 = swift_task_alloc();
    *(v22 + 16) = sub_2236572B0;
    *(v22 + 24) = v21;
    os_unfair_lock_lock(v20 + 4);
    sub_22363107C(v23);
    os_unfair_lock_unlock(v20 + 4);
    v25 = v0[11];
    v24 = v0[12];
    v26 = v0[10];

    (*(v25 + 8))(v24, v26);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  }

  v27 = v0[1];

  return v27();
}

uint64_t sub_223654AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v58 = sub_22372A0B8();
  v55 = *(v58 - 8);
  MEMORY[0x28223BE20](v58, v3);
  v54 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22372A2D8();
  v59 = *(v5 - 8);
  v60 = v5;
  v7 = MEMORY[0x28223BE20](v5, v6);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v53 - v11;
  v13 = sub_223729FB8();
  v56 = *(v13 - 8);
  v57 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2237287C8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22372A098();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21, a1, v17);
  v27 = (*(v18 + 88))(v21, v17);
  v28 = 0x281328000uLL;
  if (v27 == *MEMORY[0x277D5CB78] || v27 == *MEMORY[0x277D5CB70])
  {
    (*(v18 + 8))(v21, v17);
LABEL_4:
    v29 = MEMORY[0x277D5D010];
LABEL_5:
    (*(v23 + 104))(v26, *v29, v22);
    goto LABEL_6;
  }

  if (v27 == *MEMORY[0x277D5CB88])
  {
    (*(v18 + 96))(v21, v17);
    (*(v56 + 32))(v16, v21, v57);
    sub_223729F18();
    v41 = v59;
    v40 = v60;
    (*(v59 + 16))(v9, v12, v60);
    v42 = (*(v41 + 88))(v9, v40);
    if (v42 == *MEMORY[0x277D5D100])
    {
      v44 = v54;
      v43 = v55;
      (*(v55 + 104))(v54, *MEMORY[0x277D5D038], v58);
    }

    else
    {
      v44 = v54;
      v43 = v55;
      if (v42 == *MEMORY[0x277D5D110])
      {
        v45 = MEMORY[0x277D5D048];
      }

      else
      {
        if (v42 != *MEMORY[0x277D5D0F8])
        {
          v50 = *(v55 + 104);
          if (v42 == *MEMORY[0x277D5D108])
          {
            v50(v54, *MEMORY[0x277D5D040], v58);
          }

          else
          {
            v50(v54, *MEMORY[0x277D5D050], v58);
            (*(v59 + 8))(v9, v60);
          }

          v43 = v55;
          goto LABEL_33;
        }

        v45 = MEMORY[0x277D5D038];
      }

      (*(v55 + 104))(v54, *v45, v58);
    }

LABEL_33:
    v51 = sub_22372A088();
    MEMORY[0x28223BE20](v51, v52);
    *(&v53 - 2) = v44;
    sub_2236573E0(&qword_27D08E9B0, MEMORY[0x277D5CFF8], MEMORY[0x277D5CFE8]);
    sub_223727A28();
    (*(v59 + 8))(v12, v60);
    (*(v56 + 8))(v16, v57);
    (*(v23 + 104))(v26, *MEMORY[0x277D5D000], v22);
    (*(v43 + 8))(v44, v58);
    v28 = 0x281328000;
    goto LABEL_6;
  }

  if (v27 == *MEMORY[0x277D5CB80])
  {
    goto LABEL_4;
  }

  if (v27 == *MEMORY[0x277D5CBA0])
  {
    sub_22372A088();
    sub_2236573E0(&qword_27D08E9B0, MEMORY[0x277D5CFF8], MEMORY[0x277D5CFE8]);
    sub_223727A38();
    sub_223727A18();

    v29 = MEMORY[0x277D5D000];
    goto LABEL_5;
  }

  if (v27 == *MEMORY[0x277D5CB98])
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v46 = sub_22372AC98();
    __swift_project_value_buffer(v46, qword_28132B680);
    v47 = sub_22372AC88();
    v48 = sub_22372B278();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_223620000, v47, v48, "Unexpected routing decision: .search", v49, 2u);
      MEMORY[0x223DE8A80](v49, -1, -1);
    }

    v29 = MEMORY[0x277D5D020];
    goto LABEL_5;
  }

  (*(v23 + 104))(v26, *MEMORY[0x277D5D020], v22);
  (*(v18 + 8))(v21, v17);
LABEL_6:
  if (*(v28 + 3672) != -1)
  {
    swift_once();
  }

  v30 = sub_22372AC98();
  __swift_project_value_buffer(v30, qword_28132B680);
  v31 = sub_22372AC88();
  v32 = sub_22372B268();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v62[0] = v34;
    *v33 = 136315394;
    *(v33 + 4) = sub_223623274(0xD000000000000016, 0x8000000223734760, v62);
    *(v33 + 12) = 2080;
    swift_beginAccess();
    sub_2236573E0(&qword_28132B528, MEMORY[0x277D5D028], MEMORY[0x277D5D030]);
    v35 = sub_22372AF88();
    v37 = sub_223623274(v35, v36, v62);

    *(v33 + 14) = v37;
    _os_log_impl(&dword_223620000, v31, v32, "%s executionSource: %s", v33, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v34, -1, -1);
    MEMORY[0x223DE8A80](v33, -1, -1);
  }

  swift_beginAccess();
  v38 = v61;
  (*(v23 + 16))(v61, v26, v22);
  (*(v23 + 56))(v38, 0, 1, v22);
  return (*(v23 + 8))(v26, v22);
}

uint64_t sub_223655480(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E9B8, &qword_22372D190);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v10 - v5;
  swift_getKeyPath();
  v7 = sub_22372A0B8();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a2, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  return sub_223727A08();
}

void sub_2236555A8(void *a1)
{
  v3 = v1;
  v5 = sub_223727F38();
  MEMORY[0x28223BE20](v5, v6);
  v7 = sub_2237282B8();
  v8 = sub_2236F5150(v7);
  v10 = v9;
  v12 = v11;

  if (v10)
  {

    if (v12)
    {
      v45 = v3;
      v46 = v2;
      MEMORY[0x28223BE20](v13, v14);
      *&v42[-32] = a1;
      *&v42[-24] = v8;
      *&v42[-16] = v10;
      *&v42[-8] = v12;
      v15 = objc_allocWithZone(sub_223728028());
      v16 = v12;
      v17 = sub_223727F78();

      if (v17)
      {
        v44 = v16;
        v47 = v8;
        if (qword_281328E58 != -1)
        {
          swift_once();
        }

        v18 = sub_22372AC98();
        __swift_project_value_buffer(v18, qword_28132B680);
        v19 = v17;
        v20 = sub_22372AC88();
        v21 = sub_22372B288();

        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v48 = v23;
          *v22 = 136446466;
          v43 = v21;
          sub_223727F48();
          v24 = sub_22372B038();
          v26 = sub_223623274(v24, v25, &v48);

          *(v22 + 4) = v26;
          *(v22 + 12) = 2082;
          v27 = sub_223728CF8();
          v29 = sub_223623274(v27, v28, &v48);

          *(v22 + 14) = v29;
          _os_log_impl(&dword_223620000, v20, v43, "Posting TTResponseMessage with mitigationDecision: %{public}s for trpId: %{public}s", v22, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223DE8A80](v23, -1, -1);
          MEMORY[0x223DE8A80](v22, -1, -1);
        }

        __swift_project_boxed_opaque_existential_1((v45 + 144), *(v45 + 168));
        sub_223729D88();

        sub_223657130(v47, v10, v12);
      }

      else
      {
        sub_223657180();
        swift_allocError();
        *v41 = xmmword_22372CE90;
        *(v41 + 16) = 4;
        swift_willThrow();

        sub_223657130(v8, v10, v12);
      }

      return;
    }
  }

  v47 = v8;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v30 = sub_22372AC98();
  __swift_project_value_buffer(v30, qword_28132B680);
  v31 = a1;
  v32 = sub_22372AC88();
  v33 = sub_22372B278();

  if (os_log_type_enabled(v32, v33))
  {
    v46 = v2;
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v48 = v35;
    *v34 = 136315138;
    v36 = [v31 debugDescription];
    v37 = sub_22372AFE8();
    v39 = v38;

    v40 = sub_223623274(v37, v39, &v48);

    *(v34 + 4) = v40;
    _os_log_impl(&dword_223620000, v32, v33, "Could not find tcuId and nlResponse in the message: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x223DE8A80](v35, -1, -1);
    MEMORY[0x223DE8A80](v34, -1, -1);
  }

  sub_223657130(v47, v10, v12);
}

uint64_t sub_223655A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v39 = a4;
  v40 = a5;
  v41 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E978, &qword_22372D170);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v42 = &v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E980, &qword_22372D178);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v39 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F7A0, &unk_22372D180);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v39 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v39 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v23 = &v39 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  MEMORY[0x28223BE20](v24 - 8, v25);
  v27 = &v39 - v26;
  v28 = *MEMORY[0x277D5CDE8];
  v29 = sub_223729DE8();
  v30 = *(v29 - 8);
  (*(v30 + 104))(v27, v28, v29);
  (*(v30 + 56))(v27, 0, 1, v29);
  sub_223727FE8();
  sub_223729D98();
  sub_223727F88();
  sub_223729D58();
  v31 = sub_223727408();
  (*(*(v31 - 8) + 56))(v23, 0, 1, v31);
  sub_223728018();
  sub_223729D38();
  sub_223728008();
  sub_223728D08();
  v32 = sub_22372A548();
  (*(*(v32 - 8) + 56))(v19, 0, 1, v32);
  sub_223727FF8();
  sub_223728CF8();
  sub_223727FA8();
  v33 = *MEMORY[0x277D5CAE8];
  v34 = sub_223727F38();
  v35 = *(v34 - 8);
  (*(v35 + 104))(v15, v33, v34);
  (*(v35 + 56))(v15, 0, 1, v34);
  sub_223727FB8();

  v36 = v40;
  sub_22372A338();
  v37 = sub_22372A358();
  (*(*(v37 - 8) + 56))(v11, 0, 1, v37);
  sub_223727FC8();
  sub_22368F33C(MEMORY[0x277D84F90]);
  sub_223727F98();
  sub_2237282C8();
  return sub_223727FD8();
}

void sub_223655F2C(uint64_t a1)
{
  sub_223656000(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_223656000(uint64_t a1)
{
  if (!qword_28132B530)
  {
    sub_223729F08();
    v1 = sub_22372B3A8();
    if (!v2)
    {
      atomic_store(v1, &qword_28132B530);
    }
  }
}

uint64_t sub_223656058(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_223653638(a1);
}

uint64_t sub_2236560EC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_223652CE8(a1);
}

uint64_t sub_223656180(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_223652CE8(a1);
}

uint64_t sub_223656214(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_223652CE8(a1);
}

uint64_t sub_2236562A8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_223651EF8(a1);
}

uint64_t sub_22365633C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_2236522C8(a1);
}

uint64_t sub_2236563D0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_223653AAC(a1);
}

uint64_t sub_223656464(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_223653AAC(a1);
}

uint64_t sub_2236564F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_2236525A0(a1);
}

uint64_t sub_22365658C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_223653ACC(a1);
}

uint64_t sub_223656620(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_223653AAC(a1);
}

uint64_t sub_2236566B4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_223653AAC(a1);
}

uint64_t sub_223656748(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_223652B48(a1);
}

uint64_t sub_2236567DC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_223624EA4;

  return sub_223654020(a1);
}

uint64_t sub_223656870(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_223652D08(a1);
}

uint64_t sub_223656904(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_223652F90(a1);
}

uint64_t sub_223656998(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_223653814(a1);
}

uint64_t sub_223656A2C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_223652CE8(a1);
}

uint64_t sub_223656AC0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_2236541F8(a1);
}

uint64_t sub_223656B54(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_223652CE8(a1);
}

uint64_t sub_223656BE8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_223653AAC(a1);
}

uint64_t sub_223656C7C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_223654698(a1);
}

uint64_t sub_223656D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19[1] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = v19 - v12;
  v14 = *MEMORY[0x277D5CDE8];
  v15 = sub_223729DE8();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v13, v14, v15);
  (*(v16 + 56))(v13, 0, 1, v15);
  sub_223728258();
  sub_223729D98();
  sub_223728238();
  sub_223729D58();
  v17 = sub_223727408();
  (*(*(v17 - 8) + 56))(v9, 0, 1, v17);
  sub_223728278();

  sub_223728268();

  return sub_223728248();
}

uint64_t sub_223656F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v17 - v10;
  v12 = *MEMORY[0x277D5CDE8];
  v13 = sub_223729DE8();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v11, v12, v13);
  (*(v14 + 56))(v11, 0, 1, v13);
  sub_223729E98();
  sub_223729D98();
  sub_223729E78();
  sub_223729D58();
  v15 = sub_223727408();
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  sub_223729EB8();

  sub_223729EA8();
  sub_223729E38();
  sub_223729E68();
  sub_223729E48();
  return sub_223729E88();
}

void sub_223657130(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }
}

unint64_t sub_223657180()
{
  result = qword_28132AF90[0];
  if (!qword_28132AF90[0])
  {
    result = swift_getWitnessTable(byte_223733004, &type metadata for RootRequestControllerErrors, v0, v1);
    atomic_store(result, qword_28132AF90);
  }

  return result;
}

uint64_t sub_2236571D4(unint64_t a1, unint64_t a2)
{
  v2 = a1 >> 62;
  if ((a1 >> 62) > 1)
  {
    if (v2 == 2)
    {
      if (a2 >> 62 == 2)
      {
        goto LABEL_9;
      }
    }

    else if (a2 == 0xC000000000000000)
    {
      return 1;
    }
  }

  else
  {
    if (!v2)
    {
      if (!(a2 >> 62))
      {
        goto LABEL_9;
      }

      return 0;
    }

    if (a2 >> 62 == 1)
    {
LABEL_9:
      sub_223657548();
      return sub_22372B368() & 1;
    }
  }

  return 0;
}

unint64_t sub_2236572D0()
{
  result = qword_28132AD60[0];
  if (!qword_28132AD60[0])
  {
    result = swift_getWitnessTable(byte_22372D2B8, &type metadata for ChildRequestControllerErrors, v0, v1);
    atomic_store(result, qword_28132AD60);
  }

  return result;
}

uint64_t sub_223657370(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E9D0, &qword_22372D1E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2236573E0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_24RequestDispatcherBridges05ChildA16ControllerErrorsO(void *a1)
{
  v1 = *a1 >> 62;
  if (v1 == 3)
  {
    return (*a1 >> 3) + 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_223657450(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 8))
  {
    return (*a1 + 125);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2236574AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_22365750C(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 3)) | 0xC000000000000000;
  }

  return result;
}

unint64_t sub_223657548()
{
  result = qword_281328D10;
  if (!qword_281328D10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281328D10);
  }

  return result;
}

uint64_t sub_2236575F4()
{
  v0 = sub_22372AC98();
  __swift_allocate_value_buffer(v0, qword_28132B6E0);
  v1 = __swift_project_value_buffer(v0, qword_28132B6E0);
  if (qword_281328E50 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_28132B668);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_2236576BC()
{
  if (qword_27D08E2D8 != -1)
  {
    swift_once();
  }

  v1 = qword_27D0970A0;

  return v1;
}

uint64_t sub_223657738()
{
  if (qword_27D08E2E0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_223657794@<X0>(uint64_t a1@<X8>)
{
  if (qword_281328F58 != -1)
  {
    swift_once();
  }

  v2 = sub_22372AC98();
  v3 = __swift_project_value_buffer(v2, qword_28132B6E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_223657840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  sub_223657890(a1, v6, a3);
  return v5;
}

void *sub_223657890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v20 = a3;
  v18 = sub_22372B2B8();
  v4 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v5);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22372B2A8();
  MEMORY[0x28223BE20](v8, v9);
  v10 = sub_22372AEB8();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v12 = sub_223630584(0, &qword_281328D38, 0x277D85C78);
  v17[0] = "messageDispatchTask";
  v17[1] = v12;
  sub_22372AEA8();
  v21 = MEMORY[0x277D84F90];
  sub_22365BAD4(&unk_281328D50, 255, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EA28, &qword_22372D6F0);
  sub_223660728(&qword_281328DC0, &qword_27D08EA28, &qword_22372D6F0, MEMORY[0x277D83970]);
  sub_22372B3E8();
  (*(v4 + 104))(v7, *MEMORY[0x277D85260], v18);
  v3[2] = sub_22372B2E8();
  v13 = sub_22368F438(MEMORY[0x277D84F90]);
  v15 = v19;
  v14 = v20;
  v3[3] = v13;
  v3[4] = v15;
  v3[5] = v14;
  return v3;
}

uint64_t sub_223657B28()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_223657B98(uint64_t a1)
{
  v3 = sub_22372AE88();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22372AEB8();
  v8 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v9);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *(v1 + 16);
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = sub_2236606FC;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22365ACE8;
  aBlock[3] = &block_descriptor;
  v13 = _Block_copy(aBlock);

  sub_22372AEA8();
  v17 = MEMORY[0x277D84F90];
  sub_22365BAD4(&qword_281328E38, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08EA30, &qword_22372D6F8);
  sub_223660728(&qword_281328DE8, &unk_27D08EA30, &qword_22372D6F8, MEMORY[0x277D83970]);
  sub_22372B3E8();
  MEMORY[0x223DE7D20](0, v11, v7, v13);
  _Block_release(v13);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v16);
}

uint64_t sub_223657E6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22372AE88();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22372AEB8();
  v11 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v12);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(v3 + 16);
  v15 = swift_allocObject();
  v15[2] = v3;
  v15[3] = a2;
  v15[4] = a1;
  aBlock[4] = sub_22366071C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22365ACE8;
  aBlock[3] = &block_descriptor_22;
  v16 = _Block_copy(aBlock);

  sub_22372AEA8();
  v20 = MEMORY[0x277D84F90];
  sub_22365BAD4(&qword_281328E38, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08EA30, &qword_22372D6F8);
  sub_223660728(&qword_281328DE8, &unk_27D08EA30, &qword_22372D6F8, MEMORY[0x277D83970]);
  sub_22372B3E8();
  MEMORY[0x223DE7D20](0, v14, v10, v16);
  _Block_release(v16);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v19);
}

uint64_t sub_223658154(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCO24RequestDispatcherBridges16IFSessionService6Server_clientProxy;
  if (*(v1 + OBJC_IVAR____TtCO24RequestDispatcherBridges16IFSessionService6Server_clientProxy))
  {
    sub_223657B98(v1);
  }

  *(v1 + v3) = a1;

  if (a1)
  {
    sub_223657E6C(a1, v1);
  }

  return result;
}

uint64_t (*sub_22365820C(void *a1))(uint64_t *a1, char a2)
{
  v2 = OBJC_IVAR____TtCO24RequestDispatcherBridges16IFSessionService6Server_clientProxy;
  a1[2] = OBJC_IVAR____TtCO24RequestDispatcherBridges16IFSessionService6Server_clientProxy;
  *a1 = *(v1 + v2);
  a1[1] = v1;

  return sub_223658264;
}

uint64_t sub_223658264(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {

    sub_223658154(v3);
LABEL_7:
  }

  v4 = a1[1];
  v5 = a1[2];
  if (*(v4 + v5))
  {
    sub_223657B98(a1[1]);
  }

  *(v4 + v5) = v2;

  if (v2)
  {
    sub_223657E6C(v2, v4);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_22365832C(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtCO24RequestDispatcherBridges16IFSessionService6Server__sessionClientBox) = a2;

  if (a2)
  {
    return sub_223658394(*(a1 + OBJC_IVAR____TtCO24RequestDispatcherBridges16IFSessionService6Server_context));
  }

  return result;
}

uint64_t sub_223658394(uint64_t a1)
{
  v32 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F640, &unk_22372D770);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v30 - v4;
  v6 = sub_22372AC98();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v11 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v30 - v13;
  if (qword_281328F58 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v6, qword_28132B6E0);
  v16 = *(v7 + 16);
  v16(v14, v15, v6);
  v17 = OBJC_IVAR____TtC24RequestDispatcherBridges16SessionClientBox_messageDispatchTask;
  if (*(v1 + OBJC_IVAR____TtC24RequestDispatcherBridges16SessionClientBox_messageDispatchTask))
  {
    v18 = sub_22372AC88();
    v19 = sub_22372B258();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v33 = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_223623274(0xD00000000000001BLL, 0x8000000223734A90, &v33);
      _os_log_impl(&dword_223620000, v18, v19, "%{public}s: Calling startMessageDispatch more than once is a no-op", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x223DE8A80](v21, -1, -1);
      MEMORY[0x223DE8A80](v20, -1, -1);
    }

    return (*(v7 + 8))(v14, v6);
  }

  else
  {
    sub_22372B188();
    v23 = sub_22372B1A8();
    (*(*(v23 - 8) + 56))(v5, 0, 1, v23);
    v24 = swift_allocObject();
    v31 = v5;
    v25 = v24;
    swift_weakInit();
    v16(v11, v14, v6);
    v26 = (*(v7 + 80) + 40) & ~*(v7 + 80);
    v27 = (v8 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
    v28 = swift_allocObject();
    *(v28 + 2) = 0;
    *(v28 + 3) = 0;
    *(v28 + 4) = v25;
    (*(v7 + 32))(&v28[v26], v11, v6);
    *&v28[v27] = v32;

    v29 = sub_223667A54(0, 0, v31, &unk_22372D798, v28);
    (*(v7 + 8))(v14, v6);
    *(v1 + v17) = v29;
  }
}

id sub_223658750()
{
  ObjectType = swift_getObjectType();

  sub_223657B98(v0);

  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_2236588F8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtCO24RequestDispatcherBridges16IFSessionService6Server_jsonDecoder;
  sub_223727148();
  swift_allocObject();
  *(v0 + v2) = sub_223727138();
  *(v0 + OBJC_IVAR____TtCO24RequestDispatcherBridges16IFSessionService6Server_clientProxy) = 0;
  v3 = OBJC_IVAR____TtCO24RequestDispatcherBridges16IFSessionService6Server_logger;
  if (qword_281328F58 != -1)
  {
    swift_once();
  }

  v4 = sub_22372AC98();
  v5 = __swift_project_value_buffer(v4, qword_28132B6E0);
  (*(*(v4 - 8) + 16))(v1 + v3, v5, v4);
  v6 = OBJC_IVAR____TtCO24RequestDispatcherBridges16IFSessionService6Server_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EA50, &qword_22372D710);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v1 + v6) = v7;
  *(v1 + OBJC_IVAR____TtCO24RequestDispatcherBridges16IFSessionService6Server__sessionClientBox) = 0;
  sub_22372B538();
  __break(1u);
}

id sub_223658A68(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtCO24RequestDispatcherBridges16IFSessionService6Server_jsonDecoder;
  sub_223727148();
  swift_allocObject();
  *&v1[v5] = sub_223727138();
  *&v1[OBJC_IVAR____TtCO24RequestDispatcherBridges16IFSessionService6Server_clientProxy] = 0;
  v6 = OBJC_IVAR____TtCO24RequestDispatcherBridges16IFSessionService6Server_logger;
  if (qword_281328F58 != -1)
  {
    swift_once();
  }

  v7 = sub_22372AC98();
  v8 = __swift_project_value_buffer(v7, qword_28132B6E0);
  (*(*(v7 - 8) + 16))(&v2[v6], v8, v7);
  v9 = OBJC_IVAR____TtCO24RequestDispatcherBridges16IFSessionService6Server_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EA50, &qword_22372D710);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *&v2[v9] = v10;
  *&v2[OBJC_IVAR____TtCO24RequestDispatcherBridges16IFSessionService6Server__sessionClientBox] = 0;
  *&v2[OBJC_IVAR____TtCO24RequestDispatcherBridges16IFSessionService6Server_context] = a1;
  v12.receiver = v2;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t sub_223658BC4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  sub_22372AC38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EA48, &qword_22372D708);
  type metadata accessor for IFSessionService.Context();
  swift_dynamicCast();
  v7 = objc_allocWithZone(v3);
  v8 = sub_223658A68(v11);

  v9 = sub_22372AC48();
  result = (*(*(v9 - 8) + 8))(a1, v9);
  *a3 = v8;
  return result;
}

uint64_t (*sub_223658CF0(void *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_22365820C(v2);
  return sub_223658D64;
}

void sub_223658D64(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_223658DB4(void *a1, uint64_t a2)
{
  v4 = v2;
  *(v4 + 16) = 0u;
  *(v4 + 48) = 0;
  *(v4 + 32) = 0u;
  sub_22365BAD4(&qword_27D08EA58, a2, type metadata accessor for IFSessionService.ReverseClient, asc_22372D5AC);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EA60, &qword_22372D718);
  swift_allocObject();
  v7 = a1;
  swift_unknownObjectRetain();

  v8 = sub_22372ABC8();
  if (v3)
  {

    swift_unknownObjectRelease();
  }

  else
  {
    v9 = v8;
    v12 = v6;
    v13 = sub_223660728(&qword_27D08EA68, &qword_27D08EA60, &qword_22372D718, MEMORY[0x277D41D80]);

    swift_unknownObjectRelease();
    *&v11 = v9;
    swift_beginAccess();
    if (*(v4 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1Tm((v4 + 16));
    }

    sub_2236241E8(&v11, v4 + 16);
    swift_endAccess();
  }

  return v4;
}

uint64_t sub_223658F5C()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  return swift_deallocClassInstance();
}

uint64_t sub_223658F9C()
{
  swift_beginAccess();
  v0 = qword_28132B7D8;
  v1 = qword_28132B7D8;
  return v0;
}

void sub_223658FE8(uint64_t a1)
{
  swift_beginAccess();
  v2 = qword_28132B7D8;
  qword_28132B7D8 = a1;
}

uint64_t sub_2236590D8(uint64_t a1)
{
  swift_beginAccess();
  qword_28132B7E0 = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_223659184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a8;
  v8[11] = v12;
  v8[8] = a6;
  v8[9] = a7;
  v8[6] = a4;
  v8[7] = a5;
  v9 = sub_223727D38();
  v8[12] = v9;
  v8[13] = *(v9 - 8);
  v8[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_223659254, 0, 0);
}

uint64_t sub_223659254()
{
  sub_22365BAD4(&qword_27D08EAE8, 255, MEMORY[0x277D1CE68], MEMORY[0x277D1CE78]);
  sub_223727128();
  v1 = v0[9];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v7 = (*(v3 + 40) + **(v3 + 40));
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_223659570;
  v5 = v0[14];

  return v7(v5, v2, v3);
}

uint64_t sub_223659570()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_22365975C;
  }

  else
  {
    v2 = sub_223659684;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_223659684()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[10];
  sub_223630584(0, &qword_27D08EAE0, 0x277CCABB0);
  v5 = sub_22372B348();
  v4(v5, 0);

  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_22365975C()
{
  v15 = v0;
  (*(v0[13] + 8))(v0[14], v0[12]);
  v1 = v0[16];
  v2 = v1;
  v3 = sub_22372AC88();
  v4 = sub_22372B278();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_22372B738();
    v9 = sub_223623274(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_223620000, v3, v4, "Sending message to SessionConnection failed with error %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x223DE8A80](v6, -1, -1);
    MEMORY[0x223DE8A80](v5, -1, -1);
  }

  v10 = v0[10];
  v11 = v1;
  v10(0, v1);

  v12 = v0[1];

  return v12();
}

uint64_t sub_2236599C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v7[11] = swift_task_alloc();
  v7[12] = type metadata accessor for IntelligenceFlowSessionBridge.Error(0);
  v7[13] = swift_task_alloc();
  v8 = sub_22372A548();
  v7[14] = v8;
  v7[15] = *(v8 - 8);
  v7[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_223659AF0, 0, 0);
}

uint64_t sub_223659AF0()
{
  v1 = *(v0[7] + OBJC_IVAR____TtCO24RequestDispatcherBridges16IFSessionService6Server_context);
  v0[17] = v1;
  v0[18] = *(v1 + 32);
  v2 = *(v1 + 40);
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  sub_2237273B8();
  sub_22372A508();
  v8 = (*(v2 + 80) + **(v2 + 80));
  v4 = swift_task_alloc();
  v0[19] = v4;
  *v4 = v0;
  v4[1] = sub_223659C5C;
  v5 = v0[16];
  v6 = v0[13];

  return v8(v5, v6, ObjectType, v2);
}

uint64_t sub_223659C5C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[20] = a1;
  v4[21] = v1;

  (*(v3[15] + 8))(v3[16], v3[14]);
  swift_unknownObjectRelease();
  if (v1)
  {
    v5 = sub_223659FD0;
  }

  else
  {
    v5 = sub_223659DE8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_223659DE8()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[7];
  v4 = *(v3 + OBJC_IVAR____TtCO24RequestDispatcherBridges16IFSessionService6Server_lock);
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v1;
  v6 = swift_task_alloc();
  *(v6 + 16) = sub_223661068;
  *(v6 + 24) = v5;

  os_unfair_lock_lock(v4 + 4);
  sub_22363107C(v7);
  os_unfair_lock_unlock(v4 + 4);
  if (v2)
  {
  }

  else
  {
    v9 = v0[20];
    v10 = v0[11];
    v11 = v0[9];

    v12 = OBJC_IVAR____TtC24RequestDispatcherBridges16SessionClientBox_intelligenceFlowSessionID;
    v13 = sub_223727408();
    v14 = *(v13 - 8);
    (*(v14 + 16))(v10, v9 + v12, v13);
    (*(v14 + 56))(v10, 0, 1, v13);
    v11(v10, 0);

    sub_223660FAC(v10);

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_223659FD0()
{
  v21 = v0;
  v1 = v0[13];
  sub_22365BAD4(&unk_281329528, 255, type metadata accessor for IntelligenceFlowSessionBridge.Error, protocol conformance descriptor for IntelligenceFlowSessionBridge.Error);
  v2 = swift_allocError();
  v0[22] = v2;
  sub_2236417C0(v1, v3, type metadata accessor for IntelligenceFlowSessionBridge.Error);
  v4 = v2;
  v5 = sub_22372AC88();
  v6 = sub_22372B278();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136446466;
    *(v7 + 4) = sub_223623274(0xD000000000000022, 0x8000000223734A60, &v20);
    *(v7 + 12) = 2080;
    swift_getErrorValue();
    v9 = sub_22372B738();
    v11 = sub_223623274(v9, v10, &v20);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_223620000, v5, v6, "%{public}s: Getting client session box failed with error %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v8, -1, -1);
    MEMORY[0x223DE8A80](v7, -1, -1);
  }

  v12 = v0[17];
  sub_223661014();
  v0[23] = swift_allocError();
  *v13 = 2;
  *(v13 + 8) = 2;
  v0[24] = *(v12 + 32);
  v14 = *(v12 + 40);
  ObjectType = swift_getObjectType();
  v16 = *(v14 + 88);
  swift_unknownObjectRetain();
  v19 = (v16 + *v16);
  v17 = swift_task_alloc();
  v0[25] = v17;
  *v17 = v0;
  v17[1] = sub_22365A2EC;

  return (v19)(v0 + 5, ObjectType, v14);
}

uint64_t sub_22365A2EC()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_22365A428, 0, 0);
}

uint64_t sub_22365A428()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[11];
  v4 = v0[9];
  v5 = sub_223727408();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = v1;
  v4(v3, v1);

  sub_223660FAC(v3);

  v7 = v0[1];

  return v7();
}

void sub_22365A654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v14 - v8;
  sub_22364FCB0(a1, &v14 - v8);
  v10 = sub_223727408();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    v12 = sub_2237273C8();
    (*(v11 + 8))(v9, v10);
  }

  if (a2)
  {
    v13 = sub_2237272E8();
  }

  else
  {
    v13 = 0;
  }

  (*(a3 + 16))(a3, v12, v13);
}

uint64_t sub_22365A7A0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = sub_223658DB4(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_22365A8D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[1] = a2;
  v20[2] = a3;
  swift_beginAccess();
  v4 = *(a1 + 24);
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  v8 = 1 << *(*(a1 + 24) + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v21 = *(a1 + 24);

  v13 = 0;
  if (v10)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
    }

    v10 = *(v6 + 8 * v14);
    ++v13;
    if (v10)
    {
      while (1)
      {
        v15 = *(*(v21 + 56) + ((v14 << 9) | (8 * __clz(__rbit64(v10)))));
        result = swift_beginAccess();
        if (*(v15 + 40))
        {
          result = sub_223623934(v15 + 16, &v25);
          v16 = *(&v26 + 1);
          if (!*(&v26 + 1))
          {
            goto LABEL_18;
          }
        }

        else
        {
          v17 = *(v15 + 32);
          v25 = *(v15 + 16);
          v26 = v17;
          v27 = *(v15 + 48);
          v16 = *(&v17 + 1);
          if (!*(&v17 + 1))
          {
            goto LABEL_18;
          }
        }

        v10 &= v10 - 1;
        v22 = v27;
        v18 = __swift_project_boxed_opaque_existential_1(&v25, v16);
        v23 = v20;
        MEMORY[0x28223BE20](v18, v19);
        sub_223630584(0, &qword_27D08EAE0, 0x277CCABB0);

        sub_22372ABB8();

        result = __swift_destroy_boxed_opaque_existential_1Tm(&v25);
        v13 = v14;
        if (!v10)
        {
          break;
        }

LABEL_10:
        v14 = v13;
      }
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void sub_22365AB18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;

  v9 = sub_223727348();
  v11[4] = sub_22366132C;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_22365AC5C;
  v11[3] = &block_descriptor_55;
  v10 = _Block_copy(v11);

  [a1 sendWithMessageData:v9 reply:v10];
  _Block_release(v10);
}

void sub_22365AC5C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_22365ACE8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_22365AD2C(void *a1)
{
  v2 = v1;
  v4 = sub_22372AE88();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22372AEB8();
  v9 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v10);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *(v2 + 16);
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = a1;
  aBlock[4] = sub_223661364;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22365ACE8;
  aBlock[3] = &block_descriptor_61;
  v14 = _Block_copy(aBlock);

  v15 = a1;
  sub_22372AEA8();
  v19 = MEMORY[0x277D84F90];
  sub_22365BAD4(&qword_281328E38, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08EA30, &qword_22372D6F8);
  sub_223660728(&qword_281328DE8, &unk_27D08EA30, &qword_22372D6F8, MEMORY[0x277D83970]);
  sub_22372B3E8();
  MEMORY[0x223DE7D20](0, v12, v8, v14);
  _Block_release(v14);
  (*(v5 + 8))(v8, v4);
  (*(v9 + 8))(v12, v18);
}

uint64_t sub_22365B00C(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  swift_beginAccess();
  v3 = *(a1 + 24);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v7 = 1 << *(*(a1 + 24) + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v10 = (v7 + 63) >> 6;
  v20 = *(a1 + 24);

  v12 = 0;
  if (v9)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
    }

    v9 = *(v5 + 8 * v13);
    ++v12;
    if (v9)
    {
      while (1)
      {
        v14 = *(*(v20 + 56) + ((v13 << 9) | (8 * __clz(__rbit64(v9)))));
        result = swift_beginAccess();
        if (*(v14 + 40))
        {
          result = sub_223623934(v14 + 16, &v24);
          v15 = *(&v25 + 1);
          if (!*(&v25 + 1))
          {
            goto LABEL_18;
          }
        }

        else
        {
          v16 = *(v14 + 32);
          v24 = *(v14 + 16);
          v25 = v16;
          v26 = *(v14 + 48);
          v15 = *(&v16 + 1);
          if (!*(&v16 + 1))
          {
            goto LABEL_18;
          }
        }

        v9 &= v9 - 1;
        v21 = v26;
        v17 = __swift_project_boxed_opaque_existential_1(&v24, v15);
        v22 = &v19;
        MEMORY[0x28223BE20](v17, v18);
        sub_223630584(0, &qword_27D08EAE0, 0x277CCABB0);

        sub_22372ABB8();

        result = __swift_destroy_boxed_opaque_existential_1Tm(&v24);
        v12 = v13;
        if (!v9)
        {
          break;
        }

LABEL_10:
        v13 = v12;
      }
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void sub_22365B250(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;

  v8 = sub_2237272E8();
  v10[4] = sub_22366156C;
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_22365AC5C;
  v10[3] = &block_descriptor_68;
  v9 = _Block_copy(v10);

  [a1 sessionDidFailWithError:v8 reply:v9];
  _Block_release(v9);
}

uint64_t sub_22365B354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a1 + 24);
  *(a1 + 24) = 0x8000000000000000;
  sub_22368D740(a3, a2, isUniquelyReferenced_nonNull_native);
  *(a1 + 24) = v8;
  return swift_endAccess();
}

uint64_t sub_22365B3E4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = sub_2236AF76C(a2);
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(a1 + 24);
    *(a1 + 24) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22365ED00();
    }

    sub_22365E618(v6, v8);
    *(a1 + 24) = v8;
  }

  return swift_endAccess();
}

uint64_t sub_22365B510@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t SessionClientBox.deinit()
{
  if (*(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges16SessionClientBox_messageDispatchTask))
  {

    sub_22372B1B8();
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = OBJC_IVAR____TtC24RequestDispatcherBridges16SessionClientBox_conversationSessionID;
  v2 = sub_223727408();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges16SessionClientBox_intelligenceFlowSessionID, v2);
  v4 = OBJC_IVAR____TtC24RequestDispatcherBridges16SessionClientBox_userID;
  v5 = sub_22372A548();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  return v0;
}

uint64_t sub_22365B704(uint64_t a1)
{
  result = sub_22372AC98();
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

uint64_t sub_22365B7E8(uint64_t a1)
{
  result = sub_223727408();
  if (v2 <= 0x3F)
  {
    result = sub_22372A548();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_22365B914()
{
  result = qword_27D08E9F0;
  if (!qword_27D08E9F0)
  {
    result = swift_getWitnessTable(aQf, &type metadata for IFSessionServiceXPCClientInterfaceDefinition, v0, v1);
    atomic_store(result, &qword_27D08E9F0);
  }

  return result;
}

unint64_t sub_22365B9B8()
{
  result = qword_27D08EA00;
  if (!qword_27D08EA00)
  {
    result = swift_getWitnessTable(byte_223733E20, &type metadata for IFSessionServiceXPCClientInterfaceDefinition, v0, v1);
    atomic_store(result, &qword_27D08EA00);
  }

  return result;
}

unint64_t sub_22365BA0C(uint64_t a1)
{
  result = sub_22365BA34();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22365BA34()
{
  result = qword_281328F48;
  if (!qword_281328F48)
  {
    result = swift_getWitnessTable(asc_22372D538, &type metadata for IFSessionServiceXPCServerInterfaceDefinition, v0, v1);
    atomic_store(result, &qword_281328F48);
  }

  return result;
}

uint64_t sub_22365BAD4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22365BBB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[61] = a5;
  v6[62] = a6;
  v6[60] = a4;
  v7 = sub_223727C58();
  v6[63] = v7;
  v6[64] = *(v7 - 8);
  v6[65] = swift_task_alloc();
  v8 = sub_22372AE88();
  v6[66] = v8;
  v6[67] = *(v8 - 8);
  v6[68] = swift_task_alloc();
  v9 = sub_22372AEB8();
  v6[69] = v9;
  v6[70] = *(v9 - 8);
  v6[71] = swift_task_alloc();
  v10 = sub_223727408();
  v6[72] = v10;
  v6[73] = *(v10 - 8);
  v6[74] = swift_task_alloc();
  v11 = sub_223727E38();
  v6[75] = v11;
  v6[76] = *(v11 - 8);
  v6[77] = swift_task_alloc();
  v6[78] = swift_task_alloc();
  v6[79] = swift_task_alloc();
  v6[80] = swift_task_alloc();
  v6[81] = swift_task_alloc();
  v6[82] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EAC8, &unk_22372D7A0);
  v6[83] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22365BE58, 0, 0);
}

uint64_t sub_22365BE58()
{
  v15 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[84] = Strong;
  if (Strong)
  {
    v2 = Strong[5];
    v3 = Strong[6];
    __swift_project_boxed_opaque_existential_1(Strong + 2, v2);
    v4 = *(v3 + 56);
    v0[16] = swift_getAssociatedTypeWitness();
    v0[17] = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 13);
    v13 = (v4 + *v4);
    v6 = swift_task_alloc();
    v0[85] = v6;
    *v6 = v0;
    v6[1] = sub_22365C1A8;

    return v13(boxed_opaque_existential_1, v2, v3);
  }

  else
  {
    v8 = sub_22372AC88();
    v9 = sub_22372B278();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v10 = 136446210;
      *(v10 + 4) = sub_223623274(0xD00000000000001BLL, 0x8000000223734A90, &v14);
      _os_log_impl(&dword_223620000, v8, v9, "%{public}s: SessionClientBox scope ended even before subscription was started", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x223DE8A80](v11, -1, -1);
      MEMORY[0x223DE8A80](v10, -1, -1);
    }

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_22365C1A8()
{
  *(*v1 + 688) = v0;

  if (v0)
  {
    v2 = sub_22365DA20;
  }

  else
  {
    v2 = sub_22365C2BC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22365C2BC()
{

  sub_2236241E8((v0 + 104), v0 + 64);
  v1 = *(v0 + 88);
  v2 = __swift_project_boxed_opaque_existential_1((v0 + 64), v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  *(v0 + 168) = swift_getAssociatedTypeWitness();
  *(v0 + 176) = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1((v0 + 144));
  sub_22372B1E8();

  swift_beginAccess();
  *(v0 + 412) = *MEMORY[0x277D1C8C0];
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 144, v5);
  v7 = swift_task_alloc();
  *(v0 + 696) = v7;
  *v7 = v0;
  v7[1] = sub_22365C4B8;
  v8 = *(v0 + 664);

  return MEMORY[0x282200310](v8, 0, 0, v0 + 424, v5, v6);
}

uint64_t sub_22365C4B8()
{
  *(*v1 + 704) = v0;

  if (v0)
  {
    v2 = sub_22365DC88;
  }

  else
  {
    v2 = sub_22365C5CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22365C5CC()
{
  v117 = v0;
  v1 = v0[83];
  v2 = v0[76];
  v3 = v0[75];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
LABEL_22:
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 18);
    v81 = sub_22372AC88();
    v82 = sub_22372B268();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v116[0] = v84;
      *v83 = 136446210;
      *(v83 + 4) = sub_223623274(0xD00000000000001BLL, 0x8000000223734A90, v116);
      _os_log_impl(&dword_223620000, v81, v82, "%{public}s: SessionClient subscription ended", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v84);
      MEMORY[0x223DE8A80](v84, -1, -1);
      MEMORY[0x223DE8A80](v83, -1, -1);
    }

    if (qword_281328E50 != -1)
    {
      swift_once();
    }

    v85 = sub_22372AC98();
    v0[89] = __swift_project_value_buffer(v85, qword_28132B668);
    v86 = sub_22372AC88();
    v87 = sub_22372B268();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v116[0] = v89;
      *v88 = 136315138;
      *(v88 + 4) = sub_223623274(0xD00000000000001BLL, 0x8000000223734A90, v116);
      _os_log_impl(&dword_223620000, v86, v87, "%s: IFessionService Cleanup session", v88, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v89);
      MEMORY[0x223DE8A80](v89, -1, -1);
      MEMORY[0x223DE8A80](v88, -1, -1);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      sub_223623934(Strong + 16, (v0 + 23));

      v91 = v0[26];
      v92 = v0[27];
      __swift_project_boxed_opaque_existential_1(v0 + 23, v91);
      v114 = (*(v92 + 64) + **(v92 + 64));
      v93 = swift_task_alloc();
      v0[90] = v93;
      *v93 = v0;
      v93[1] = sub_22365D5BC;

      return v114(v91, v92);
    }

    else
    {
      v94 = *(v0[62] + 40);
      ObjectType = swift_getObjectType();
      v115 = (*(v94 + 88) + **(v94 + 88));
      v96 = swift_task_alloc();
      v0[92] = v96;
      *v96 = v0;
      v96[1] = sub_22365D804;

      return v115(v0 + 57, ObjectType, v94);
    }
  }

  (*(v2 + 32))(v0[82], v1, v3);
  if (!swift_weakLoadStrong())
  {
    v36 = sub_22372AC88();
    v37 = sub_22372B268();
    v38 = os_log_type_enabled(v36, v37);
    v39 = v0[82];
    v40 = v0[76];
    v41 = v0[75];
    if (v38)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v116[0] = v43;
      *v42 = 136446210;
      *(v42 + 4) = sub_223623274(0xD00000000000001BLL, 0x8000000223734A90, v116);
      _os_log_impl(&dword_223620000, v36, v37, "%{public}s: SessionClientBox scope ended, ending subscription", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      MEMORY[0x223DE8A80](v43, -1, -1);
      MEMORY[0x223DE8A80](v42, -1, -1);
    }

    (*(v40 + 8))(v39, v41);
    goto LABEL_22;
  }

  v4 = v0[82];
  v5 = v0[80];
  v6 = v0[79];
  v7 = v0[78];
  v8 = v0[75];
  v9 = *(v0[76] + 16);
  v9(v0[81], v4, v8);
  v9(v5, v4, v8);
  v9(v6, v4, v8);
  v9(v7, v4, v8);
  v10 = sub_22372AC88();
  v11 = sub_22372B268();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[81];
  v112 = v0[80];
  v14 = v0[79];
  v15 = v0[78];
  if (v12)
  {
    v102 = v0[78];
    v103 = v0[77];
    v99 = v0[76];
    v16 = v0[74];
    v108 = v0[75];
    v110 = v0[73];
    v17 = v0[72];
    v107 = v11;
    v101 = v0[79];
    v18 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v116[0] = v105;
    *v18 = 136447235;
    *(v18 + 4) = sub_223623274(0xD00000000000001BLL, 0x8000000223734A90, v116);
    *(v18 + 12) = 2080;
    sub_223727E28();
    sub_22365BAD4(&qword_28132B600, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v19 = sub_22372B6B8();
    v21 = v20;
    v98 = *(v110 + 8);
    v98(v16, v17);
    v100 = v9;
    v22 = *(v99 + 8);
    v22(v13, v108);
    v23 = sub_223623274(v19, v21, v116);

    *(v18 + 14) = v23;
    *(v18 + 22) = 2080;
    sub_223727E08();
    v24 = sub_22372B6B8();
    v26 = v25;
    v98(v16, v17);
    v22(v112, v108);
    v27 = sub_223623274(v24, v26, v116);

    *(v18 + 24) = v27;
    *(v18 + 32) = 2080;
    v28 = sub_223727DF8();
    v30 = v29;
    v22(v101, v108);
    v31 = sub_223623274(v28, v30, v116);

    *(v18 + 34) = v31;
    *(v18 + 42) = 2081;
    v100(v103, v102, v108);
    v32 = sub_22372B038();
    v34 = v33;
    v22(v102, v108);
    v35 = sub_223623274(v32, v34, v116);

    *(v18 + 44) = v35;
    _os_log_impl(&dword_223620000, v10, v107, "%{public}s: Message received from IntelligenceFlow with sessionId: %s, eventId: %s and clientRequestId: %s with message: %{private}s", v18, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v105, -1, -1);
    MEMORY[0x223DE8A80](v18, -1, -1);
  }

  else
  {
    v44 = v0[76];
    v45 = v0[75];

    v22 = *(v44 + 8);
    v22(v15, v45);
    v22(v14, v45);
    v22(v112, v45);
    v22(v13, v45);
  }

  v46 = v0[88];
  sub_22365BAD4(&qword_28132B5E0, 255, MEMORY[0x277D1CEE8], MEMORY[0x277D1CEF0]);

  v47 = sub_223727158();
  if (v46)
  {

    v49 = v46;
    v50 = sub_22372AC88();
    v51 = sub_22372B278();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v116[0] = v53;
      *v52 = 136446466;
      *(v52 + 4) = sub_223623274(0xD00000000000001BLL, 0x8000000223734A90, v116);
      *(v52 + 12) = 2080;
      swift_getErrorValue();
      v54 = sub_22372B738();
      v56 = sub_223623274(v54, v55, v116);

      *(v52 + 14) = v56;
      _os_log_impl(&dword_223620000, v50, v51, "%{public}s: Failed to dispatch SessionServerMessage with error %s", v52, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE8A80](v53, -1, -1);
      MEMORY[0x223DE8A80](v52, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v111 = v0[70];
    v113 = v0[69];
    v104 = v0[71];
    v106 = v0[68];
    v109 = v0[67];
    v57 = v0[66];
    v58 = v0[62];
    v59 = v47;
    v60 = v48;

    v61 = swift_allocObject();
    v61[2] = v58;
    v61[3] = v59;
    v61[4] = v60;
    v0[6] = sub_2236612C4;
    v0[7] = v61;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_22365ACE8;
    v0[5] = &block_descriptor_49;
    v62 = _Block_copy(v0 + 2);

    sub_2236612D0(v59, v60);
    sub_22372AEA8();
    v0[59] = MEMORY[0x277D84F90];
    sub_22365BAD4(&qword_281328E38, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08EA30, &qword_22372D6F8);
    sub_223660728(&qword_281328DE8, &unk_27D08EA30, &qword_22372D6F8, MEMORY[0x277D83970]);
    sub_22372B3E8();
    MEMORY[0x223DE7D20](0, v104, v106, v62);
    _Block_release(v62);
    sub_223661270(v59, v60);
    (*(v109 + 8))(v106, v57);
    (*(v111 + 8))(v104, v113);
  }

  v63 = *(v0 + 103);
  v64 = v0[65];
  v65 = v0[63];
  v66 = v0[64];
  sub_223727E18();
  if ((*(v66 + 88))(v64, v65) == v63)
  {
    (*(v0[64] + 8))(v0[65], v0[63]);
    v67 = sub_22372AC88();
    v68 = sub_22372B268();
    v69 = os_log_type_enabled(v67, v68);
    v70 = v0[82];
    v71 = v0[75];
    if (v69)
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v116[0] = v73;
      *v72 = 136446210;
      *(v72 + 4) = sub_223623274(0xD00000000000001BLL, 0x8000000223734A90, v116);
      _os_log_impl(&dword_223620000, v67, v68, "%{public}s: SessionClient session terminated", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v73);
      MEMORY[0x223DE8A80](v73, -1, -1);
      MEMORY[0x223DE8A80](v72, -1, -1);
    }

    else
    {
    }

    v22(v70, v71);
    goto LABEL_22;
  }

  v74 = v0[65];
  v75 = v0[63];
  v76 = v0[64];
  v22(v0[82], v0[75]);

  (*(v76 + 8))(v74, v75);
  v77 = v0[21];
  v78 = v0[22];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 18), v77);
  v79 = swift_task_alloc();
  v0[87] = v79;
  *v79 = v0;
  v79[1] = sub_22365C4B8;
  v80 = v0[83];

  return MEMORY[0x282200310](v80, 0, 0, v0 + 53, v77, v78);
}

uint64_t sub_22365D5BC()
{
  *(*v1 + 728) = v0;

  if (v0)
  {
    v2 = sub_22365E400;
  }

  else
  {
    v2 = sub_22365D6D0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22365D6D0()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 23);
  v1 = *(v0[62] + 40);
  ObjectType = swift_getObjectType();
  v5 = (*(v1 + 88) + **(v1 + 88));
  v3 = swift_task_alloc();
  v0[92] = v3;
  *v3 = v0;
  v3[1] = sub_22365D804;

  return v5(v0 + 57, ObjectType, v1);
}

uint64_t sub_22365D804()
{

  return MEMORY[0x2822009F8](sub_22365D91C, 0, 0);
}

uint64_t sub_22365D91C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22365DA20()
{
  v15 = v0;
  v1 = *(v0 + 688);
  __swift_deallocate_boxed_opaque_existential_1(v0 + 104);
  v2 = v1;
  v3 = sub_22372AC88();
  v4 = sub_22372B278();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 688);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_223623274(0xD00000000000001BLL, 0x8000000223734A90, &v14);
    *(v6 + 12) = 2080;
    swift_getErrorValue();
    v8 = sub_22372B738();
    v10 = sub_223623274(v8, v9, &v14);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_223620000, v3, v4, "%{public}s: Failed to materialize subscription to IntelligenceFlow messages with error %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v7, -1, -1);
    MEMORY[0x223DE8A80](v6, -1, -1);
  }

  else
  {
    v11 = *(v0 + 688);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_22365DC88()
{
  v41 = v0;
  v1 = *(v0 + 424);
  *(v0 + 744) = v1;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
  v2 = v1;
  v3 = sub_22372AC88();
  v4 = sub_22372B278();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v40 = v6;
    *v5 = 136446466;
    *(v5 + 4) = sub_223623274(0xD00000000000001BLL, 0x8000000223734A90, &v40);
    *(v5 + 12) = 2080;
    swift_getErrorValue();
    v7 = sub_22372B738();
    v9 = sub_223623274(v7, v8, &v40);

    *(v5 + 14) = v9;
    _os_log_impl(&dword_223620000, v3, v4, "%{public}s: IntelligenceFlow subcription ended with error %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v6, -1, -1);
    MEMORY[0x223DE8A80](v5, -1, -1);
  }

  sub_223661014();
  v10 = swift_allocError();
  *v11 = v1;
  *(v11 + 8) = 0;
  *(v0 + 432) = v1;
  v12 = v1;
  v13 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EAD0, &qword_22372CA80);
  if (swift_dynamicCast())
  {
    v15 = *(v0 + 392);
    v14 = *(v0 + 400);
    v16 = *(v0 + 408);
    if (!*(v0 + 408))
    {
      *(v0 + 409) = 2;
      sub_22366121C();
      v17 = sub_22372B748();
      v18 = v15;
      v19 = v14;
      v20 = 0;
      goto LABEL_8;
    }

    if (v16 == 2)
    {
      *(v0 + 410) = 4;
      sub_22366121C();
      v17 = sub_22372B748();
      v18 = v15;
      v19 = v14;
      v20 = 2;
LABEL_8:
      sub_223661204(v18, v19, v20);

      v10 = v17;
      goto LABEL_10;
    }

    sub_223661204(*(v0 + 392), *(v0 + 400), v16);
  }

LABEL_10:
  *(v0 + 752) = v10;
  v21 = v10;
  v22 = sub_22372AC88();
  v23 = sub_22372B278();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v40 = v38;
    *v24 = 136446466;
    *(v24 + 4) = sub_223623274(0xD00000000000001BLL, 0x8000000223734A90, &v40);
    *(v24 + 12) = 2080;
    swift_getErrorValue();
    v25 = *(v0 + 296);
    v26 = *(v0 + 304);
    v27 = *(v26 - 8);
    v28 = swift_task_alloc();
    (*(v27 + 16))(v28, v25, v26);
    v29 = sub_22372B738();
    v31 = v30;
    (*(v27 + 8))(v28, v26);

    v32 = sub_223623274(v29, v31, &v40);

    *(v24 + 14) = v32;
    _os_log_impl(&dword_223620000, v22, v23, "%{public}s: IntelligenceFlow returning error %s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v38, -1, -1);
    MEMORY[0x223DE8A80](v24, -1, -1);
  }

  v33 = *(v0 + 496);
  sub_22365AD2C(v10);
  v34 = *(v33 + 40);
  ObjectType = swift_getObjectType();
  v39 = (*(v34 + 72) + **(v34 + 72));
  v36 = swift_task_alloc();
  *(v0 + 760) = v36;
  *v36 = v0;
  v36[1] = sub_22365E1EC;

  return v39(ObjectType, v34);
}

uint64_t sub_22365E1EC()
{

  return MEMORY[0x2822009F8](sub_22365E2E8, 0, 0);
}

uint64_t sub_22365E2E8()
{
  v1 = *(v0 + 752);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22365E400()
{
  v13 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 23);
  v1 = sub_22372AC88();
  v2 = sub_22372B268();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[91];
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_223623274(0xD00000000000001BLL, 0x8000000223734A90, &v12);
    _os_log_impl(&dword_223620000, v1, v2, "%s: IFessionService Cleanup session failed", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x223DE8A80](v6, -1, -1);
    MEMORY[0x223DE8A80](v5, -1, -1);
  }

  v7 = *(v0[62] + 40);
  ObjectType = swift_getObjectType();
  v11 = (*(v7 + 88) + **(v7 + 88));
  v9 = swift_task_alloc();
  v0[92] = v9;
  *v9 = v0;
  v9[1] = sub_22365D804;

  return v11(v0 + 57, ObjectType, v7);
}

uint64_t sub_22365E618(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22372B408() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_22372B798();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22365E788(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22372B408() + 1) & ~v5;
    do
    {
      sub_22372B7A8();

      sub_22372B078();
      v10 = sub_22372B7C8();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = v15 + 24 * v3;
        v17 = (v15 + 24 * v6);
        if (v3 != v6 || v16 >= v17 + 24)
        {
          v9 = *v17;
          *(v16 + 16) = *(v17 + 2);
          *v16 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22365E944(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22372B408() + 1) & ~v5;
    do
    {
      sub_22372B7A8();

      sub_22372B078();
      v9 = sub_22372B7C8();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_22365EB3C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22372B408() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_22372B798();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E8A8, &qword_22372CB20) - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_22365ED00()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EA40, &qword_22372D700);
  v2 = *v0;
  v3 = sub_22372B578();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_22365EEAC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F1D0, &qword_22372D7F8);
  v2 = *v0;
  v3 = sub_22372B578();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_2236227C8(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_223661514(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

char *sub_22365F050()
{
  v1 = v0;
  v32 = sub_22372A548();
  v34 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v2);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F170, &qword_22372D7D8);
  v4 = *v0;
  v5 = sub_22372B578();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        result = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_22365F2C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F190, &qword_22372FBA0);
  v2 = *v0;
  v3 = sub_22372B578();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v23 = *(v22 + 16);
        v24 = (*(v4 + 48) + v18);
        v25 = *v22;
        *v24 = v21;
        v24[1] = v20;
        v26 = *(v4 + 56) + v17;
        *v26 = v25;
        *(v26 + 16) = v23;

        swift_unknownObjectRetain();
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_22365F478(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22372B578();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_22365F628(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v44 = a1(0);
  v46 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v7);
  v43 = &v38 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *v3;
  v10 = sub_22372B578();
  v11 = v10;
  if (*(v9 + 16))
  {
    v39 = v6;
    result = (v10 + 64);
    v13 = v9 + 64;
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 64 + 8 * v14)
    {
      result = memmove(result, (v9 + 64), 8 * v14);
    }

    v16 = 0;
    v17 = *(v9 + 16);
    v45 = v11;
    *(v11 + 16) = v17;
    v18 = 1 << *(v9 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v9 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = v46 + 32;
    v41 = v46 + 16;
    v42 = v9;
    if (v20)
    {
      do
      {
        v22 = __clz(__rbit64(v20));
        v47 = (v20 - 1) & v20;
LABEL_17:
        v25 = v22 | (v16 << 6);
        v26 = 16 * v25;
        v27 = *(v9 + 56);
        v28 = (*(v9 + 48) + 16 * v25);
        v29 = *v28;
        v30 = v28[1];
        v31 = v46;
        v32 = *(v46 + 72) * v25;
        v33 = v43;
        v34 = v44;
        (*(v46 + 16))(v43, v27 + v32, v44);
        v35 = v45;
        v36 = (*(v45 + 48) + v26);
        *v36 = v29;
        v36[1] = v30;
        v37 = *(v35 + 56) + v32;
        v9 = v42;
        (*(v31 + 32))(v37, v33, v34);

        v20 = v47;
      }

      while (v47);
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v6 = v39;
        v11 = v45;
        goto LABEL_21;
      }

      v24 = *(v13 + 8 * v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v47 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v11;
  }

  return result;
}

void *sub_22365F8C4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22372B578();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_22365FA24()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F120, &unk_22372FB50);
  v2 = *v0;
  v3 = sub_22372B578();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_22365FB9C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08EA90, &unk_22372FB60);
  v2 = *v0;
  v3 = sub_22372B578();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = sub_22363038C(v22, *(&v22 + 1));
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_22365FD20()
{
  v1 = v0;
  v2 = type metadata accessor for RootRequestController.TRPCache(0);
  v32 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08EA70, &unk_22372D720);
  v5 = *v0;
  v6 = sub_22372B578();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_2236614AC(*(v5 + 56) + v27, v31, type metadata accessor for RootRequestController.TRPCache);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_2236417C0(v26, *(v28 + 56) + v27, type metadata accessor for RootRequestController.TRPCache);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_22365FF78()
{
  v1 = v0;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E8A8, &qword_22372CB20);
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v2);
  v29 = &v25 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08EB00, &qword_22372D7D0);
  v4 = *v0;
  v5 = sub_22372B578();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v4 + 64;
    for (i = v32 + 32; v13; result = (*(v20 + 32))(*(v24 + 56) + v21, v23, v22))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = *(*(v4 + 48) + 8 * v18);
      v20 = v32;
      v21 = *(v32 + 72) * v18;
      v23 = v29;
      v22 = v30;
      (*(v32 + 16))(v29, *(v4 + 56) + v21, v30);
      v24 = v31;
      *(*(v31 + 48) + 8 * v18) = v19;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v25;
        v6 = v31;
        goto LABEL_18;
      }

      v17 = *(v26 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_2236601E8()
{
  v1 = v0;
  v2 = type metadata accessor for RequestState(0);
  v32 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08EAF0, &unk_22372D7C0);
  v5 = *v0;
  v6 = sub_22372B578();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_2236614AC(*(v5 + 56) + v27, v31, type metadata accessor for RequestState);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_2236417C0(v26, *(v28 + 56) + v27, type metadata accessor for RequestState);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void sub_223660440()
{
  v9 = sub_22372B2B8();
  v0 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v1);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22372B2A8();
  MEMORY[0x28223BE20](v4, v5);
  v6 = sub_22372AEB8();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v8[1] = sub_223630584(0, &qword_281328D38, 0x277D85C78);
  sub_22372AEA8();
  v10 = MEMORY[0x277D84F90];
  sub_22365BAD4(&unk_281328D50, 255, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EA28, &qword_22372D6F0);
  sub_223660728(&qword_281328DC0, &qword_27D08EA28, &qword_22372D6F0, MEMORY[0x277D83970]);
  sub_22372B3E8();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v9);

  sub_22368F438(MEMORY[0x277D84F90]);

  sub_22372B538();
  __break(1u);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_223660728(unint64_t *a1, uint64_t *a2, uint64_t *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_223660770(uint64_t a1, unint64_t a2, char *a3, void (**a4)(void, void, void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F640, &unk_22372D770);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v21[-v10];
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  v13 = *&a3[OBJC_IVAR____TtCO24RequestDispatcherBridges16IFSessionService6Server_lock];
  v25 = a3;
  v22 = sub_223661570;
  v23 = &v24;
  _Block_copy(a4);
  os_unfair_lock_lock(v13 + 4);
  sub_223661538(&v26);
  os_unfair_lock_unlock(v13 + 4);
  if (v26)
  {
    sub_223623934(v26 + 16, v27);

    sub_2236241E8(v27, v28);
    sub_22372B188();
    v14 = sub_22372B1A8();
    (*(*(v14 - 8) + 56))(v11, 0, 1, v14);
    sub_223623934(v28, v27);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = a3;
    v15[5] = a1;
    v15[6] = a2;
    sub_2236241E8(v27, (v15 + 7));
    v15[12] = sub_223661374;
    v15[13] = v12;
    v16 = a3;
    sub_2236612D0(a1, a2);

    sub_223667A54(0, 0, v11, &unk_22372D7B8, v15);

    __swift_destroy_boxed_opaque_existential_1Tm(v28);
  }

  else
  {
    sub_223661014();
    v17 = swift_allocError();
    *v18 = 1;
    *(v18 + 8) = 2;
    v19 = sub_2237272E8();
    (a4)[2](a4, 0, v19);
  }
}

uint64_t sub_223660A08(uint64_t a1, char *a2, void (**a3)(void, void, void))
{
  v31 = a1;
  v5 = sub_223727408();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v32 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F640, &unk_22372D770);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v33 = &v31 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v31 - v18;
  v34 = swift_allocObject();
  *(v34 + 16) = a3;
  v20 = *&a2[OBJC_IVAR____TtCO24RequestDispatcherBridges16IFSessionService6Server_lock];
  v38 = a2;
  v35 = sub_223660E2C;
  v36 = &v37;
  _Block_copy(a3);
  os_unfair_lock_lock(v20 + 4);
  sub_223660E58(&v39);
  os_unfair_lock_unlock(v20 + 4);
  if (v39)
  {
    (*(v6 + 16))(v19, v39 + OBJC_IVAR____TtC24RequestDispatcherBridges16SessionClientBox_intelligenceFlowSessionID, v5);
    (*(v6 + 56))(v19, 0, 1, v5);
    sub_22364FCB0(v19, v16);
    if ((*(v6 + 48))(v16, 1, v5) == 1)
    {
      v21 = 0;
    }

    else
    {
      v21 = sub_2237273C8();
      (*(v6 + 8))(v16, v5);
    }

    (a3)[2](a3, v21, 0);

    sub_223660FAC(v19);
  }

  else
  {
    v22 = v33;
    sub_22372B188();
    v23 = sub_22372B1A8();
    (*(*(v23 - 8) + 56))(v22, 0, 1, v23);
    v24 = v32;
    (*(v6 + 16))(v32, v31, v5);
    v25 = (*(v6 + 80) + 40) & ~*(v6 + 80);
    v26 = swift_allocObject();
    *(v26 + 2) = 0;
    *(v26 + 3) = 0;
    *(v26 + 4) = a2;
    (*(v6 + 32))(&v26[v25], v24, v5);
    v27 = &v26[(v7 + v25 + 7) & 0xFFFFFFFFFFFFFFF8];
    v28 = v34;
    *v27 = sub_223660E24;
    v27[1] = v28;
    v29 = a2;

    sub_223667A54(0, 0, v22, &unk_22372D788, v26);
  }
}

uint64_t sub_223660E70(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_223727408() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_223624EA4;

  return sub_2236599C4(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_223660FAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_223661014()
{
  result = qword_27D08EAC0;
  if (!qword_27D08EAC0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IFSessionServiceClient.Error, &type metadata for IFSessionServiceClient.Error, v0, v1);
    atomic_store(result, &qword_27D08EAC0);
  }

  return result;
}

uint64_t sub_223661084(uint64_t a1)
{
  v4 = *(sub_22372AC98() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2236242EC;

  return sub_22365BBB0(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x223DE8A80);
  }

  return result;
}

uint64_t sub_223661204(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 8u)
  {
  }

  return result;
}

unint64_t sub_22366121C()
{
  result = qword_27D08EAD8;
  if (!qword_27D08EAD8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IFSessionServiceClient.RelayError, &type metadata for IFSessionServiceClient.RelayError, v0, v1);
    atomic_store(result, &qword_27D08EAD8);
  }

  return result;
}

uint64_t sub_223661270(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_2236612D0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_22366132C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

void *sub_22366137C@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_2236613C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[12];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2236242EC;

  return sub_223659184(a1, v4, v5, v6, v7, v8, (v1 + 7), v9);
}

uint64_t sub_2236614AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

_OWORD *sub_223661514(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_223661588(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2236242EC;

  return v7(a1, a2);
}

uint64_t sub_2236616A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2236242EC;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_2236617D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 32) + **(a5 + 32));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_223624EA4;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_223661910(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 40) + **(a2 + 40));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2236242EC;

  return v7(a1, a2);
}

uint64_t sub_223661A28()
{
  v1[10] = v0;
  v2 = sub_223727558();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_223661AE8, v0, 0);
}

uint64_t sub_223661AE8()
{
  if (*(v0[10] + 128))
  {

    v1 = v0[1];

    return v1();
  }

  else
  {
    if (qword_281328E50 != -1)
    {
      swift_once();
    }

    v3 = sub_22372AC98();
    v0[14] = __swift_project_value_buffer(v3, qword_28132B668);
    v4 = sub_22372AC88();
    v5 = sub_22372B288();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_223620000, v4, v5, "Starting RemoteIFClientTransport", v6, 2u);
      MEMORY[0x223DE8A80](v6, -1, -1);
    }

    v7 = v0[10];

    sub_2236633EC();
    inited = swift_initStackObject();
    v0[15] = inited;
    v9 = type metadata accessor for StartedRemoteIntelligenceSessionMessage(0);
    inited[4] = v9;
    v10 = type metadata accessor for RemoteIntelligenceSessionServerMessage(0);
    v0[16] = v10;
    inited[5] = v10;
    v11 = type metadata accessor for RemoteIntelligenceFlowErrorMessage(0);
    v0[17] = v11;
    inited[6] = v11;
    v0[18] = *(v7 + 112);
    v12 = *(v7 + 120);
    v0[19] = v12;
    ObjectType = swift_getObjectType();
    v0[20] = ObjectType;
    v14 = sub_223663464(&qword_27D08EB30, 255, MEMORY[0x277D5DF30], MEMORY[0x277D5DF28]);
    v0[21] = v14;
    v15 = swift_task_alloc();
    v0[22] = v15;
    *v15 = v0;
    v15[1] = sub_223661D4C;

    return MEMORY[0x2821C0310](v9, v14, ObjectType, v12);
  }
}

uint64_t sub_223661D4C()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[23] = v3;
  *v3 = v2;
  v3[1] = sub_223661EE4;
  v4 = v1[21];
  v5 = v1[20];
  v6 = v1[19];
  v7 = v1[16];

  return MEMORY[0x2821C0310](v7, v4, v5, v6);
}

uint64_t sub_223661EE4()
{
  v1 = *(*v0 + 80);

  return MEMORY[0x2822009F8](sub_223661FF4, v1, 0);
}

uint64_t sub_223661FF4()
{
  swift_setDeallocating();
  v1 = swift_task_alloc();
  v0[24] = v1;
  *v1 = v0;
  v1[1] = sub_22366209C;
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];
  v5 = v0[17];

  return MEMORY[0x2821C0310](v5, v2, v3, v4);
}

uint64_t sub_22366209C()
{
  v1 = *(*v0 + 80);

  return MEMORY[0x2822009F8](sub_2236621AC, v1, 0);
}

uint64_t sub_2236621AC()
{
  v1 = swift_task_alloc();
  v0[25] = v1;
  *v1 = v0;
  v1[1] = sub_223662248;
  v2 = v0[19];
  v3 = v0[20];

  return MEMORY[0x2821C0308](v3, v2);
}

uint64_t sub_223662248()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 80);
  if (v0)
  {
    v4 = sub_2236623E4;
  }

  else
  {
    v4 = sub_223662374;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_223662374()
{
  *(*(v0 + 80) + 128) = 1;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2236623E4()
{
  v1 = *(v0 + 208);
  *(v0 + 72) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EAD0, &qword_22372CA80);
  if (swift_dynamicCast())
  {
    if ((*(*(v0 + 96) + 88))(*(v0 + 104), *(v0 + 88)) == *MEMORY[0x277D5DF48])
    {

      v3 = sub_22372AC88();
      v4 = sub_22372B268();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&dword_223620000, v3, v4, "Message center already started", v5, 2u);
        MEMORY[0x223DE8A80](v5, -1, -1);
      }

      v6 = *(v0 + 8);
      goto LABEL_10;
    }

    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  }

  v7 = *(v0 + 208);

  v8 = v7;
  v9 = sub_22372AC88();
  v10 = sub_22372B278();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 208);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v11;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_223620000, v9, v10, "Failed to start message center. Error=%@", v12, 0xCu);
    sub_223651020(v13);
    MEMORY[0x223DE8A80](v13, -1, -1);
    MEMORY[0x223DE8A80](v12, -1, -1);
  }

  v16 = *(v0 + 80);

  *(v16 + 128) = 0;
  swift_willThrow();

  v6 = *(v0 + 8);
LABEL_10:

  return v6();
}

uint64_t sub_223662668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = swift_task_alloc();
  v4[9] = v5;
  *v5 = v4;
  v5[1] = sub_2236626FC;

  return sub_223661A28();
}

uint64_t sub_2236626FC()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 64);

    return MEMORY[0x2822009F8](sub_223662840, v6, 0);
  }
}

uint64_t sub_223662840()
{
  v18 = v0;
  if (qword_281328E50 != -1)
  {
    swift_once();
  }

  v1 = sub_22372AC98();
  v0[10] = __swift_project_value_buffer(v1, qword_28132B668);

  v2 = sub_22372AC88();
  v3 = sub_22372B268();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[5];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315138;
    v0[4] = v4;
    sub_223727528();

    v7 = sub_22372B038();
    v9 = sub_223623274(v7, v8, &v17);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_223620000, v2, v3, "RemoteIF send message started. %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x223DE8A80](v6, -1, -1);
    MEMORY[0x223DE8A80](v5, -1, -1);
  }

  v10 = *(v0[8] + 120);
  ObjectType = swift_getObjectType();
  v12 = swift_task_alloc();
  v0[11] = v12;
  *v12 = v0;
  v12[1] = sub_223662A54;
  v13 = v0[6];
  v14 = v0[7];
  v15 = v0[5];

  return MEMORY[0x2821C02F8](v15, v13, v14, ObjectType, v10);
}

uint64_t sub_223662A54()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 64);
  if (v0)
  {
    v4 = sub_223662CF4;
  }

  else
  {
    v4 = sub_223662B80;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_223662B80()
{
  v12 = v0;

  v1 = sub_22372AC88();
  v2 = sub_22372B268();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[5];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v0[3] = v3;
    sub_223727528();

    v6 = sub_22372B038();
    v8 = sub_223623274(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_223620000, v1, v2, "RemoteIF send message finished.  %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DE8A80](v5, -1, -1);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_223662CF4()
{
  v18 = v0;
  v1 = v0[12];

  v2 = v1;
  v3 = sub_22372AC88();
  v4 = sub_22372B278();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[12];
    v6 = v0[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v7 = 136315394;
    v0[2] = v6;
    sub_223727528();

    v10 = sub_22372B038();
    v12 = sub_223623274(v10, v11, &v17);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    v13 = v5;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v8 = v14;
    _os_log_impl(&dword_223620000, v3, v4, "RemoteIF send message failed. %s. Error: %@", v7, 0x16u);
    sub_223651020(v8);
    MEMORY[0x223DE8A80](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x223DE8A80](v9, -1, -1);
    MEMORY[0x223DE8A80](v7, -1, -1);
  }

  swift_willThrow();
  v15 = v0[1];

  return v15();
}

uint64_t sub_223662EF8()
{
  v11 = v0;
  if (qword_281328E50 != -1)
  {
    swift_once();
  }

  v1 = sub_22372AC98();
  v0[3] = __swift_project_value_buffer(v1, qword_28132B668);
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_223623274(0xD000000000000010, 0x8000000223734B30, &v10);
    _os_log_impl(&dword_223620000, v2, v3, "%s: RemoteIFClientTransport Cleanup session", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DE8A80](v5, -1, -1);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v6 = *(v0[2] + 120);
  ObjectType = swift_getObjectType();
  v8 = swift_task_alloc();
  v0[4] = v8;
  *v8 = v0;
  v8[1] = sub_2236630C4;

  return MEMORY[0x2821C0300](ObjectType, v6);
}

uint64_t sub_2236630C4()
{
  v2 = *v1;
  v2[5] = v0;

  if (v0)
  {
    v3 = v2[2];

    return MEMORY[0x2822009F8](sub_2236631F8, v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_2236631F8(uint64_t a1)
{
  v11 = v1;
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 40);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_223623274(0xD000000000000010, 0x8000000223734B30, &v10);
    _os_log_impl(&dword_223620000, v2, v3, "%s: RemoteIFClientTransport Cleanup session failed", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x223DE8A80](v7, -1, -1);
    MEMORY[0x223DE8A80](v6, -1, -1);
  }

  v8 = *(v1 + 8);

  return v8();
}

uint64_t sub_223663338()
{
  swift_unknownObjectRelease();
  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_223663394(uint64_t a1, uint64_t a2)
{
  result = sub_223663464(&qword_27D08EB28, a2, type metadata accessor for RemoteIFClientTransport, asc_22372D8CC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2236633EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EB38, &qword_22372D8F8);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_27D08EB40;
    v3 = &unk_22372D900;
  }

  else
  {
    v2 = &qword_27D08EB48;
    v3 = qword_2237329D0;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

uint64_t sub_223663464(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t CurareBridge.__allocating_init(_:_:_:_:_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v9 = sub_22372AC98();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a3;
  sub_223623934(a3, v26);
  sub_223623934(a6, v25);
  v24[3] = &type metadata for DefaultFeatureStoreService;
  v24[4] = &off_2836C4B68;
  type metadata accessor for CurareBridge(0);
  v14 = swift_allocObject();
  sub_223623934(v24, v14 + qword_28132A128);
  sub_223623934(v26, v23);
  sub_223623934(v25, v22);
  v15 = qword_281328E78;
  swift_unknownObjectRetain();
  v16 = a5;
  if (v15 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v9, qword_28132B6B0);
  (*(v10 + 16))(v13, v17, v9);
  v18 = sub_22372A9A8();
  sub_223729DC8();

  sub_22372A938();
  sub_223728DF8();
  sub_22372A938();
  sub_223729188();
  sub_22372A938();
  sub_223728F88();
  sub_22372A938();
  sub_2237292E8();
  sub_22372A938();
  sub_2237298B8();
  sub_22372A938();
  sub_223728CE8();
  sub_22372A938();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(a6);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  return v18;
}

uint64_t type metadata accessor for CurareBridge(uint64_t a1)
{
  result = qword_28132A118;
  if (!qword_28132A118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_223663880(void *a1)
{
  v2 = sub_223727408();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_223729D58();
  v7 = sub_2237273B8();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v10 = sub_223729D38();
  sub_223664C70(v7, v9, v10, v11, v12, v13, v14, v15, v16[0], v16[1]);

  sub_223664970(a1);
}

void sub_223663A28(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v6 = v5;
  v7 = sub_223729D38();
  sub_223664CAC(v4, v6, v7, v8);

  sub_223664970(a1);
}

void sub_223663B84(uint64_t a1)
{
  v73 = sub_223727408();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73, v2);
  v71 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22368F548(MEMORY[0x277D84F90]);
  v77 = a1;
  v5 = sub_2237298A8();
  v6 = 0;
  v8 = v5 + 64;
  v7 = *(v5 + 64);
  v76 = v5;
  v9 = 1 << *(v5 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v7;
  v12 = (v9 + 63) >> 6;
  v75 = v12;
  while (v11)
  {
    v13 = v6;
LABEL_11:
    v14 = (v76[6] + ((v13 << 10) | (16 * __clz(__rbit64(v11)))));
    v16 = *v14;
    v15 = v14[1];

    v17 = sub_2237298A8();
    if (*(v17 + 16) && (v18 = sub_2236261A0(v16, v15), (v19 & 1) != 0))
    {
      v74 = v15;
      v20 = *(*(v17 + 56) + 8 * v18);

      v21 = sub_223728C58();

      v22 = *(v21 + 16);
      if (v22)
      {
        v67 = v16;
        v68 = v8;
        v69 = v4;
        v83 = MEMORY[0x277D84F90];
        sub_22372B4F8();
        v23 = v21 + 32;
        do
        {
          sub_2236665CC(v23, v78);
          sub_2236665CC(v78, &v81);
          v24 = v81;
          v79 = v81;
          sub_2236241E8(&v82, &v80);
          v25 = v24;
          sub_22366663C(&v79);
          sub_22366663C(v78);
          sub_22372B4D8();
          sub_22372B508();
          sub_22372B518();
          sub_22372B4E8();
          v23 += 48;
          --v22;
        }

        while (v22);

        v26 = v83;
        v4 = v69;
        v8 = v68;
        v15 = v74;
        v16 = v67;
      }

      else
      {

        v26 = MEMORY[0x277D84F90];
        v15 = v74;
      }
    }

    else
    {

      v26 = MEMORY[0x277D84F90];
    }

    v27 = sub_2236666A4(v26);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v78[0] = v4;
    v29 = v16;
    v30 = v16;
    v31 = v15;
    v32 = sub_2236261A0(v30, v15);
    v34 = v4[2];
    v35 = (v33 & 1) == 0;
    v36 = __OFADD__(v34, v35);
    v37 = v34 + v35;
    if (v36)
    {
LABEL_32:
      __break(1u);
LABEL_33:
      swift_once();
      goto LABEL_28;
    }

    v38 = v33;
    if (v4[3] >= v37)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v41 = v32;
        sub_22365EE5C();
        v32 = v41;
      }
    }

    else
    {
      sub_22368C148(v37, isUniquelyReferenced_nonNull_native);
      v32 = sub_2236261A0(v29, v31);
      if ((v38 & 1) != (v39 & 1))
      {
        sub_22372B708();
        __break(1u);
        return;
      }
    }

    v11 &= v11 - 1;
    v4 = v78[0];
    if (v38)
    {
      v40 = v78[0];
      *(v78[0][7] + 8 * v32) = v27;

      v4 = v40;
    }

    else
    {
      sub_22368E7E8(v32, v29, v31, v27, v78[0]);
    }

    v6 = v13;
    v12 = v75;
  }

  while (1)
  {
    v13 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    if (v13 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v13);
    ++v6;
    if (v11)
    {
      goto LABEL_11;
    }
  }

  v42 = *(v70 + qword_28132A128 + 24);
  v43 = *(v70 + qword_28132A128 + 32);
  v76 = __swift_project_boxed_opaque_existential_1((v70 + qword_28132A128), v42);
  v13 = v77;
  v75 = sub_223728CF8();
  v45 = v44;
  v46 = v71;
  sub_223729D58();
  v47 = sub_2237273B8();
  v49 = v48;
  (*(v72 + 8))(v46, v73);
  v50 = sub_223729D38();
  v52 = v51;
  v53 = sub_223728CF8();
  v78[0] = v4;
  v78[1] = v47;
  v78[2] = v49;
  v78[3] = v50;
  v78[4] = v52;
  v78[5] = v53;
  v78[6] = v54;
  v55 = *(v43 + 8);
  v56 = sub_2236668D0();
  v57 = sub_223666924();
  v55(v75, v45, v78, &type metadata for SerializedMultiUserTRPMessage, v56, v57, v42, v43);

  if (qword_281328E78 != -1)
  {
    goto LABEL_33;
  }

LABEL_28:
  v58 = sub_22372AC98();
  __swift_project_value_buffer(v58, qword_28132B6B0);
  v59 = v13;
  v60 = sub_22372AC88();
  v61 = sub_22372B268();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v78[0] = v63;
    *v62 = 136315138;
    swift_getObjectType();
    v64 = sub_22372B818();
    v66 = sub_223623274(v64, v65, v78);

    *(v62 + 4) = v66;
    _os_log_impl(&dword_223620000, v60, v61, "Logged ASROutput from %s to FeatureStore", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v63);
    MEMORY[0x223DE8A80](v63, -1, -1);
    MEMORY[0x223DE8A80](v62, -1, -1);
  }
}

void sub_2236641F4(void *a1)
{
  v3 = sub_223727408();
  v41 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_223728C58();
  v8 = *(v7 + 16);
  if (v8)
  {
    v39 = v3;
    v40 = a1;
    v47 = MEMORY[0x277D84F90];
    sub_22372B4F8();
    v9 = v7 + 32;
    do
    {
      sub_2236665CC(v9, v42);
      sub_2236665CC(v42, &v45);
      v10 = v45;
      v43 = v45;
      sub_2236241E8(&v46, &v44);
      v11 = v10;
      sub_22366663C(&v43);
      sub_22366663C(v42);
      sub_22372B4D8();
      sub_22372B508();
      sub_22372B518();
      sub_22372B4E8();
      v9 += 48;
      --v8;
    }

    while (v8);

    v12 = v47;
    a1 = v40;
    v3 = v39;
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
  }

  v13 = *(v1 + qword_28132A128 + 24);
  v14 = *(v1 + qword_28132A128 + 32);
  v40 = __swift_project_boxed_opaque_existential_1((v1 + qword_28132A128), v13);
  v39 = sub_223728CF8();
  v16 = v15;
  v17 = sub_2236666A4(v12);

  sub_223729D58();
  v18 = sub_2237273B8();
  v20 = v19;
  (*(v41 + 8))(v6, v3);
  v21 = sub_223729D38();
  v22 = a1;
  v24 = v23;
  v25 = sub_223728CF8();
  v42[0] = v17;
  v42[1] = v18;
  v42[2] = v20;
  v42[3] = v21;
  v42[4] = v24;
  v42[5] = v25;
  v42[6] = v26;
  v27 = *(v14 + 8);
  v28 = sub_223666828();
  v29 = sub_22366687C();
  v27(v39, v16, v42, &type metadata for SerializedTRPMessage, v28, v29, v13, v14);

  if (qword_281328E78 != -1)
  {
    swift_once();
  }

  v30 = sub_22372AC98();
  __swift_project_value_buffer(v30, qword_28132B6B0);
  v31 = v22;
  v32 = sub_22372AC88();
  v33 = sub_22372B268();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v42[0] = v35;
    *v34 = 136315138;
    swift_getObjectType();
    v36 = sub_22372B818();
    v38 = sub_223623274(v36, v37, v42);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_223620000, v32, v33, "Logged ASROutput from %s to FeatureStore", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x223DE8A80](v35, -1, -1);
    MEMORY[0x223DE8A80](v34, -1, -1);
  }
}

void sub_2236645F4(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = sub_22372B028();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v6 = *a1;
  v7 = [v6 speechPackage];
  if (!v7)
  {
    __break(1u);
  }

  v8 = v7;
  v9 = [v7 dictionaryRepresentation];

  if (v9)
  {
    sub_22372AF58();

    v10 = objc_opt_self();
    v11 = sub_22372AF48();

    v33 = 0;
    v12 = [v10 dataWithJSONObject:v11 options:0 error:&v33];

    v13 = v33;
    if (v12)
    {
      v14 = sub_223727358();
      v16 = v15;

      sub_22372B018();
      v17 = sub_22372AFF8();
      v19 = v18;
      sub_223661270(v14, v16);
      if (v19)
      {
LABEL_14:
        *a2 = v17;
        a2[1] = v19;
        return;
      }
    }

    else
    {
      v20 = v13;
      v21 = sub_2237272F8();

      swift_willThrow();
    }
  }

  if (qword_281328E78 != -1)
  {
    swift_once();
  }

  v22 = sub_22372AC98();
  __swift_project_value_buffer(v22, qword_28132B6B0);
  v23 = v6;
  v24 = sub_22372AC88();
  v25 = sub_22372B278();
  if (!os_log_type_enabled(v24, v25))
  {

    goto LABEL_13;
  }

  v26 = swift_slowAlloc();
  v27 = swift_slowAlloc();
  v33 = v27;
  *v26 = 136315138;
  v28 = [v23 tcuId];

  if (v28)
  {
    v29 = sub_22372AFE8();
    v31 = v30;

    v32 = sub_223623274(v29, v31, &v33);

    *(v26 + 4) = v32;
    _os_log_impl(&dword_223620000, v24, v25, "Failed to convert TCU to JSON, tcuId: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x223DE8A80](v27, -1, -1);
    MEMORY[0x223DE8A80](v26, -1, -1);
LABEL_13:

    v17 = 0;
    v19 = 0xE000000000000000;
    goto LABEL_14;
  }

  __break(1u);
}

void sub_223664970(void *a1)
{
  v2 = v1;
  v4 = sub_223727408();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_223729D48();
  if (swift_dynamicCastClass())
  {
    v9 = a1;
    v10 = sub_223729D38();
    v12 = v11;
  }

  else
  {
    sub_223729DB8();
    v10 = sub_2237273B8();
    v12 = v13;
    (*(v5 + 8))(v8, v4);
  }

  v14 = (v2 + qword_28132A128);
  v15 = *(v2 + qword_28132A128 + 24);
  v16 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v31 = a1;
  v17 = *(v16 + 8);
  v18 = sub_223729DC8();
  v19 = sub_2236242F4(&qword_28132B558, MEMORY[0x277D5CDC0]);
  v20 = sub_2236242F4(&qword_28132B560, MEMORY[0x277D5CDB8]);
  v17(v10, v12, &v31, v18, v19, v20, v15, v16);

  if (qword_281328E78 != -1)
  {
    swift_once();
  }

  v21 = sub_22372AC98();
  __swift_project_value_buffer(v21, qword_28132B6B0);
  v22 = a1;
  v23 = sub_22372AC88();
  v24 = sub_22372B268();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v31 = v26;
    *v25 = 136315138;
    swift_getObjectType();
    v27 = sub_22372B818();
    v29 = sub_223623274(v27, v28, &v31);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_223620000, v23, v24, "Logged %s to FeatureStore", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x223DE8A80](v26, -1, -1);
    MEMORY[0x223DE8A80](v25, -1, -1);
  }
}

void sub_223664CE8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t a7, const char *a8, ...)
{
  v16 = *(v8 + qword_28132A128 + 24);
  v15 = *(v8 + qword_28132A128 + 32);
  __swift_project_boxed_opaque_existential_1((v8 + qword_28132A128), v16);
  v29[0] = a1;
  v29[1] = a2;
  v26 = a3;
  v29[2] = a3;
  v29[3] = a4;
  v17 = *(v15 + 8);
  v18 = a5();
  v19 = a6();

  v25 = a1;
  v17(a1, a2, v29, a7, v18, v19, v16, v15);

  if (qword_281328E78 != -1)
  {
    swift_once();
  }

  v20 = sub_22372AC98();
  __swift_project_value_buffer(v20, qword_28132B6B0);

  v21 = sub_22372AC88();
  v22 = sub_22372B268();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v29[0] = v24;
    *v23 = 136315394;
    *(v23 + 4) = sub_223623274(v25, a2, v29);
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_223623274(v26, a4, v29);
    _os_log_impl(&dword_223620000, v21, v22, a8, v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v24, -1, -1);
    MEMORY[0x223DE8A80](v23, -1, -1);
  }
}

uint64_t CurareBridge.deinit()
{
  v0 = sub_22372A998();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_28132A128));
  return v0;
}

uint64_t CurareBridge.__deallocating_deinit()
{
  v0 = sub_22372A998();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_28132A128));

  return swift_deallocClassInstance();
}

uint64_t SiriOrchestrationRootToChildRequestIdLink.rootRequestId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SiriOrchestrationRootToChildRequestIdLink.childRequestId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_223665064()
{
  if (*v0)
  {
    return 0x716552646C696863;
  }

  else
  {
    return 0x75716552746F6F72;
  }
}

uint64_t sub_2236650B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x75716552746F6F72 && a2 == 0xED00006449747365;
  if (v6 || (sub_22372B6E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x716552646C696863 && a2 == 0xEE00644974736575)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22372B6E8();

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

uint64_t sub_2236651A4(uint64_t a1)
{
  v2 = sub_223665260();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2236651E0(uint64_t a1)
{
  v2 = sub_223665260();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_223665260()
{
  result = qword_28132B4C0;
  if (!qword_28132B4C0)
  {
    result = swift_getWitnessTable(asc_22372DCCC, &type metadata for SiriOrchestrationRootToChildRequestIdLink.CodingKeys, v0, v1);
    atomic_store(result, &qword_28132B4C0);
  }

  return result;
}

uint64_t sub_223665328()
{
  if (*v0)
  {
    return 0x75716552746F6F72;
  }

  else
  {
    return 0x496E6F6973736573;
  }
}

uint64_t sub_223665374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064;
  if (v6 || (sub_22372B6E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x75716552746F6F72 && a2 == 0xED00006449747365)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22372B6E8();

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

uint64_t sub_223665460(uint64_t a1)
{
  v2 = sub_2236656B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22366549C(uint64_t a1)
{
  v2 = sub_2236656B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22366551C(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t a5)
{
  v15 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v17 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = v14 - v9;
  v11 = *(v5 + 16);
  v14[1] = *(v5 + 24);
  v14[2] = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15();
  sub_22372B7E8();
  v19 = 0;
  v12 = v16;
  sub_22372B688();
  if (!v12)
  {
    v18 = 1;
    sub_22372B688();
  }

  return (*(v17 + 8))(v10, v7);
}

unint64_t sub_2236656B8()
{
  result = qword_28132B498;
  if (!qword_28132B498)
  {
    result = swift_getWitnessTable(byte_22372DC7C, &type metadata for SiriOrchestrationSessionToRootRequestIdLink.CodingKeys, v0, v1);
    atomic_store(result, &qword_28132B498);
  }

  return result;
}

uint64_t sub_223665750@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a6@<X8>)
{
  v25 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v24 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v22 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_22372B7D8();
  if (v6)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v13 = v24;
  v14 = v25;
  v27 = 0;
  v15 = sub_22372B628();
  v17 = v16;
  v23 = v15;
  v26 = 1;
  v18 = sub_22372B628();
  v20 = v19;
  (*(v13 + 8))(v12, v9);
  *v14 = v23;
  v14[1] = v17;
  v14[2] = v18;
  v14[3] = v20;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_223665954(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EBD0, &qword_22372DE70);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2236674D4();
  sub_22372B7E8();
  v12 = *v3;
  v11[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EBC0, &qword_22372DE68);
  sub_2236675D4();
  sub_22372B6A8();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v11[6] = 1;
  sub_22372B688();
  v11[5] = 2;
  sub_22372B688();
  v11[4] = 3;
  sub_22372B688();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_223665B40(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EBA8, &qword_22372DE58);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223667414();
  sub_22372B7E8();
  v12 = *v3;
  v11[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EB98, &qword_22372DE50);
  sub_223667468(&unk_281328DD0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_22372B6A8();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v11[6] = 1;
  sub_22372B688();
  v11[5] = 2;
  sub_22372B688();
  v11[4] = 3;
  sub_22372B688();
  return (*(v6 + 8))(v9, v5);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_223665E1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_223665E64(uint64_t result, int a2, int a3)
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

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_223665EE8()
{
  result = qword_27D08EB70;
  if (!qword_27D08EB70)
  {
    result = swift_getWitnessTable(aUL, &type metadata for SiriOrchestrationRootToChildRequestIdLink.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D08EB70);
  }

  return result;
}

unint64_t sub_223665F40()
{
  result = qword_27D08EB78;
  if (!qword_27D08EB78)
  {
    result = swift_getWitnessTable(aUi, &type metadata for SiriOrchestrationSessionToRootRequestIdLink.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D08EB78);
  }

  return result;
}

unint64_t sub_223665F98()
{
  result = qword_28132B488;
  if (!qword_28132B488)
  {
    result = swift_getWitnessTable(byte_22372DBC4, &type metadata for SiriOrchestrationSessionToRootRequestIdLink.CodingKeys, v0, v1);
    atomic_store(result, &qword_28132B488);
  }

  return result;
}

unint64_t sub_223665FF0()
{
  result = qword_28132B490;
  if (!qword_28132B490)
  {
    result = swift_getWitnessTable(byte_22372DBEC, &type metadata for SiriOrchestrationSessionToRootRequestIdLink.CodingKeys, v0, v1);
    atomic_store(result, &qword_28132B490);
  }

  return result;
}

unint64_t sub_223666048()
{
  result = qword_28132B4B0;
  if (!qword_28132B4B0)
  {
    result = swift_getWitnessTable(byte_22372DB0C, &type metadata for SiriOrchestrationRootToChildRequestIdLink.CodingKeys, v0, v1);
    atomic_store(result, &qword_28132B4B0);
  }

  return result;
}

unint64_t sub_2236660A0()
{
  result = qword_28132B4B8;
  if (!qword_28132B4B8)
  {
    result = swift_getWitnessTable(byte_22372DB34, &type metadata for SiriOrchestrationRootToChildRequestIdLink.CodingKeys, v0, v1);
    atomic_store(result, &qword_28132B4B8);
  }

  return result;
}

unint64_t sub_2236660F4()
{
  v1 = 0x496E6F6973736573;
  v2 = 0x4974736575716572;
  if (*v0 != 2)
  {
    v2 = 0x6449707274;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000017;
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

uint64_t sub_223666170@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_223666ACC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_223666198(uint64_t a1)
{
  v2 = sub_2236674D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2236661D4(uint64_t a1)
{
  v2 = sub_2236674D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223666254()
{
  v1 = 0x7473694C756374;
  v2 = 0x4974736575716572;
  if (*v0 != 2)
  {
    v2 = 0x6449707274;
  }

  if (*v0)
  {
    v1 = 0x496E6F6973736573;
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

uint64_t sub_2236662D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_223666F64(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2236662FC(uint64_t a1)
{
  v2 = sub_223667414();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223666338(uint64_t a1)
{
  v2 = sub_223667414();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2236663A0@<D0>(void (*a1)(_OWORD *__return_ptr)@<X3>, uint64_t a2@<X8>)
{
  a1(v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

unint64_t sub_22366647C()
{
  result = qword_28132B4A0;
  if (!qword_28132B4A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SiriOrchestrationRootToChildRequestIdLink, &type metadata for SiriOrchestrationRootToChildRequestIdLink, v0, v1);
    atomic_store(result, &qword_28132B4A0);
  }

  return result;
}

unint64_t sub_2236664D0()
{
  result = qword_28132B4A8;
  if (!qword_28132B4A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SiriOrchestrationRootToChildRequestIdLink, &type metadata for SiriOrchestrationRootToChildRequestIdLink, v0, v1);
    atomic_store(result, &qword_28132B4A8);
  }

  return result;
}

unint64_t sub_223666524()
{
  result = qword_28132B478;
  if (!qword_28132B478)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SiriOrchestrationSessionToRootRequestIdLink, &type metadata for SiriOrchestrationSessionToRootRequestIdLink, v0, v1);
    atomic_store(result, &qword_28132B478);
  }

  return result;
}

unint64_t sub_223666578()
{
  result = qword_28132B480;
  if (!qword_28132B480)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SiriOrchestrationSessionToRootRequestIdLink, &type metadata for SiriOrchestrationSessionToRootRequestIdLink, v0, v1);
    atomic_store(result, &qword_28132B480);
  }

  return result;
}

uint64_t sub_2236665CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7B0, &qword_22372DD30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22366663C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7B0, &qword_22372DD30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_2236666A4(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22372B558())
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x223DE7ED0](v3, a1);
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v6 = *(a1 + 8 * v3 + 32);
      }

      v7 = v6;
      v8 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v17 = v6;
      sub_2236645F4(&v17, &v15);

      v9 = v16;
      if (v16)
      {
        v10 = i;
        v11 = v15;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_223637D3C(0, *(v4 + 2) + 1, 1, v4);
        }

        v13 = *(v4 + 2);
        v12 = *(v4 + 3);
        if (v13 >= v12 >> 1)
        {
          v4 = sub_223637D3C((v12 > 1), v13 + 1, 1, v4);
        }

        *(v4 + 2) = v13 + 1;
        v5 = &v4[16 * v13];
        *(v5 + 4) = v11;
        *(v5 + 5) = v9;
        i = v10;
      }

      ++v3;
      if (v8 == i)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_223666828()
{
  result = qword_2813296D0;
  if (!qword_2813296D0)
  {
    result = swift_getWitnessTable(byte_22372DE20, &type metadata for SerializedTRPMessage, v0, v1);
    atomic_store(result, &qword_2813296D0);
  }

  return result;
}

unint64_t sub_22366687C()
{
  result = qword_2813296D8;
  if (!qword_2813296D8)
  {
    result = swift_getWitnessTable(aD, &type metadata for SerializedTRPMessage, v0, v1);
    atomic_store(result, &qword_2813296D8);
  }

  return result;
}

unint64_t sub_2236668D0()
{
  result = qword_27D08EB80;
  if (!qword_27D08EB80)
  {
    result = swift_getWitnessTable(a9iP, &type metadata for SerializedMultiUserTRPMessage, v0, v1);
    atomic_store(result, &qword_27D08EB80);
  }

  return result;
}

unint64_t sub_223666924()
{
  result = qword_27D08EB88;
  if (!qword_27D08EB88)
  {
    result = swift_getWitnessTable(a1, &type metadata for SerializedMultiUserTRPMessage, v0, v1);
    atomic_store(result, &qword_27D08EB88);
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

uint64_t sub_223666A28(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_223666A70(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_223666ACC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000017 && 0x8000000223734BF0 == a2 || (sub_22372B6E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064 || (sub_22372B6E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4974736575716572 && a2 == 0xE900000000000064 || (sub_22372B6E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6449707274 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_22372B6E8();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_223666C48@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EBB0, &qword_22372DE60);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v24 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2236674D4();
  sub_22372B7D8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EBC0, &qword_22372DE68);
  v32 = 0;
  sub_223667528();
  sub_22372B648();
  v10 = v33;
  v31 = 1;
  v11 = sub_22372B628();
  v28 = v12;
  v26 = v11;
  v30 = 2;
  v25 = sub_22372B628();
  v27 = v13;
  v29 = 3;
  v14 = sub_22372B628();
  v16 = v15;
  v17 = *(v6 + 8);
  v24 = v14;
  v17(v9, v5);

  v18 = v28;

  v19 = v27;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);

  v21 = v25;
  v22 = v26;
  *a2 = v10;
  a2[1] = v22;
  a2[2] = v18;
  a2[3] = v21;
  v23 = v24;
  a2[4] = v19;
  a2[5] = v23;
  a2[6] = v16;
  return result;
}

uint64_t sub_223666F64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7473694C756374 && a2 == 0xE700000000000000;
  if (v4 || (sub_22372B6E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064 || (sub_22372B6E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4974736575716572 && a2 == 0xE900000000000064 || (sub_22372B6E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6449707274 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_22372B6E8();

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

uint64_t sub_2236670D4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EB90, &qword_22372DE48);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v24 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223667414();
  sub_22372B7D8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EB98, &qword_22372DE50);
  v32 = 0;
  sub_223667468(&qword_27D08EBA0, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_22372B648();
  v28 = a2;
  v10 = v33;
  v31 = 1;
  v11 = sub_22372B628();
  v13 = v12;
  v26 = v11;
  v30 = 2;
  v25 = sub_22372B628();
  v27 = v14;
  v29 = 3;
  v15 = sub_22372B628();
  v17 = v16;
  v18 = v15;
  (*(v6 + 8))(v9, v5);

  v19 = v27;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);

  v21 = v28;
  v22 = v25;
  v23 = v26;
  *v28 = v10;
  v21[1] = v23;
  v21[2] = v13;
  v21[3] = v22;
  v21[4] = v19;
  v21[5] = v18;
  v21[6] = v17;
  return result;
}

unint64_t sub_223667414()
{
  result = qword_2813296F0;
  if (!qword_2813296F0)
  {
    result = swift_getWitnessTable(byte_22372E038, &type metadata for SerializedTRPMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_2813296F0);
  }

  return result;
}

uint64_t sub_223667468(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D08EB98, &qword_22372DE50);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2236674D4()
{
  result = qword_27D08EBB8;
  if (!qword_27D08EBB8)
  {
    result = swift_getWitnessTable(aA, &type metadata for SerializedMultiUserTRPMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D08EBB8);
  }

  return result;
}

unint64_t sub_223667528()
{
  result = qword_27D08EBC8;
  if (!qword_27D08EBC8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D08EBC0, &qword_22372DE68);
    v4[0] = MEMORY[0x277D83808];
    v4[1] = sub_223667468(&qword_27D08EBA0, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    result = swift_getWitnessTable(MEMORY[0x277D83528], v3, v4);
    atomic_store(result, &qword_27D08EBC8);
  }

  return result;
}

unint64_t sub_2236675D4()
{
  result = qword_27D08EBD8;
  if (!qword_27D08EBD8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D08EBC0, &qword_22372DE68);
    v4[0] = MEMORY[0x277D837D8];
    v4[1] = sub_223667468(&unk_281328DD0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    result = swift_getWitnessTable(MEMORY[0x277D83508], v3, v4);
    atomic_store(result, &qword_27D08EBD8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MUXCandidateContextState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MUXCandidateContextState(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2236677E4()
{
  result = qword_27D08EBE0;
  if (!qword_27D08EBE0)
  {
    result = swift_getWitnessTable(byte_22372DF08, &type metadata for SerializedTRPMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D08EBE0);
  }

  return result;
}

unint64_t sub_22366783C()
{
  result = qword_27D08EBE8;
  if (!qword_27D08EBE8)
  {
    result = swift_getWitnessTable(asc_22372DFC0, &type metadata for SerializedMultiUserTRPMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D08EBE8);
  }

  return result;
}

unint64_t sub_223667894()
{
  result = qword_27D08EBF0;
  if (!qword_27D08EBF0)
  {
    result = swift_getWitnessTable(aQaP, &type metadata for SerializedMultiUserTRPMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D08EBF0);
  }

  return result;
}

unint64_t sub_2236678EC()
{
  result = qword_27D08EBF8;
  if (!qword_27D08EBF8)
  {
    result = swift_getWitnessTable(byte_22372DF58, &type metadata for SerializedMultiUserTRPMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D08EBF8);
  }

  return result;
}

unint64_t sub_223667944()
{
  result = qword_2813296E0;
  if (!qword_2813296E0)
  {
    result = swift_getWitnessTable(asc_22372DE78, &type metadata for SerializedTRPMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_2813296E0);
  }

  return result;
}

unint64_t sub_22366799C()
{
  result = qword_2813296E8;
  if (!qword_2813296E8)
  {
    result = swift_getWitnessTable(a9, &type metadata for SerializedTRPMessage.CodingKeys, v0, v1);
    atomic_store(result, &qword_2813296E8);
  }

  return result;
}

uint64_t sub_223667A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F640, &unk_22372D770);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v26 - v11;
  sub_223634890(a3, v26 - v11, &qword_27D08F640, &unk_22372D770);
  v13 = sub_22372B1A8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_223626478(v12, &qword_27D08F640, &unk_22372D770);
  }

  else
  {
    sub_22372B198();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_22372B168();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_22372B058() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_223626478(a3, &qword_27D08F640, &unk_22372D770);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_223626478(a3, &qword_27D08F640, &unk_22372D770);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_223667D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F640, &unk_22372D770);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v26 - v11;
  sub_223634890(a3, v26 - v11, &qword_27D08F640, &unk_22372D770);
  v13 = sub_22372B1A8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_223626478(v12, &qword_27D08F640, &unk_22372D770);
  }

  else
  {
    sub_22372B198();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_22372B168();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_22372B058() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_223626478(a3, &qword_27D08F640, &unk_22372D770);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_223626478(a3, &qword_27D08F640, &unk_22372D770);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_22366804C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 112) = v2;
}

uint64_t sub_2236680AC@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 112);
}

uint64_t sub_2236680F4(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 112) = v2;
}

uint64_t IntelligenceFlowSessionController.deinit()
{
  swift_beginAccess();
  if (*(v0 + 112))
  {
    type metadata accessor for SessionClientBox(0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EAD0, &qword_22372CA80);
    sub_22372B1B8();
  }

  sub_223626478(v0 + 120, &qword_27D08EC00, &unk_22372E0B8);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 160));
  sub_2236682C0(v0 + 200);
  v1 = OBJC_IVAR____TtC24RequestDispatcherBridges33IntelligenceFlowSessionController_logger;
  v2 = sub_22372AC98();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t IntelligenceFlowSessionController.__deallocating_deinit()
{
  swift_beginAccess();
  if (*(v0 + 112))
  {
    type metadata accessor for SessionClientBox(0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EAD0, &qword_22372CA80);
    sub_22372B1B8();
  }

  sub_223626478(v0 + 120, &qword_27D08EC00, &unk_22372E0B8);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 160));
  sub_2236682C0(v0 + 200);
  v1 = OBJC_IVAR____TtC24RequestDispatcherBridges33IntelligenceFlowSessionController_logger;
  v2 = sub_22372AC98();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();
  return swift_defaultActor_deallocate();
}

uint64_t IntelligenceFlowSessionController.__allocating_init<A, B>(clientProvider:delegate:logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_allocObject();
  v14 = sub_22366E488(a1, a2, a3, a4, a5, a6, a7);
  swift_unknownObjectRelease();
  return v14;
}

uint64_t IntelligenceFlowSessionController.init<A, B>(clientProvider:delegate:logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = sub_22366E488(a1, a2, a3, a4, a5, a6, a7);
  swift_unknownObjectRelease();
  return v7;
}

void sub_2236684C8(uint64_t a1)
{
  swift_beginAccess();
  sub_223634890(v1 + 120, v8, &qword_27D08EC00, &unk_22372E0B8);
  v3 = v8[3];
  sub_223626478(v8, &qword_27D08EC00, &unk_22372E0B8);
  if (v3)
  {
    v4 = sub_22372AC88();
    v5 = sub_22372B278();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8[0] = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_223623274(0xD000000000000022, 0x8000000223734C10, v8);
      _os_log_impl(&dword_223620000, v4, v5, "%{public}s Conversation session is already in progress. This situation should not be possible", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x223DE8A80](v7, -1, -1);
      MEMORY[0x223DE8A80](v6, -1, -1);
    }
  }

  else
  {
    sub_223623934(a1, v8);
    swift_beginAccess();
    sub_22366E58C(v8, v1 + 120);
    swift_endAccess();
  }
}

uint64_t sub_223668658()
{
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  swift_beginAccess();
  sub_22366E58C(v2, v0 + 120);
  return swift_endAccess();
}

uint64_t sub_2236686A8(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_2236686C8, v1, 0);
}

uint64_t sub_2236686C8()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (v2)
  {
    *(v1 + 112) = 0;
    type metadata accessor for SessionClientBox(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EAD0, &qword_22372CA80);
    sub_22372B1B8();
  }

  **(v0 + 40) = v2;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_223668784()
{
  v1 = v0[32];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  sub_223623934(v1 + 16, (v0 + 2));
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  (*(v3 + 16))(v2, v1 + OBJC_IVAR____TtC24RequestDispatcherBridges16SessionClientBox_intelligenceFlowSessionID, v4);
  v10 = (*(v6 + 32) + **(v6 + 32));
  v7 = swift_task_alloc();
  v0[33] = v7;
  *v7 = v0;
  v7[1] = sub_223668904;
  v8 = v0[20];

  return v10(v8, v5, v6);
}

uint64_t sub_223668904()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  v5 = *(*v1 + 144);
  *(*v1 + 272) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 136);
  if (v0)
  {
    v7 = sub_223669024;
  }

  else
  {
    v7 = sub_223668E60;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_223668A8C()
{
  v23 = v0;
  sub_22366E5FC(v0[27], v0[28]);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v1 = sub_22372AC88();
    v2 = sub_22372B268();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v22 = v4;
      *v3 = 136446210;
      *(v3 + 4) = sub_223623274(0xD000000000000024, 0x8000000223734C70, &v22);
      _os_log_impl(&dword_223620000, v1, v2, "%{public}s Intelligence Flow session creation was canceled, nothing to end", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v4);
      MEMORY[0x223DE8A80](v4, -1, -1);
      MEMORY[0x223DE8A80](v3, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v5 = v0[24];
    v6 = v0[25];
    sub_22366FCFC(v0[28], v6, type metadata accessor for IntelligenceFlowSessionBridge.Error);
    sub_22366FCFC(v6, v5, type metadata accessor for IntelligenceFlowSessionBridge.Error);
    v7 = sub_22372AC88();
    v8 = sub_22372B268();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[24];
      v21 = v0[25];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v22 = v11;
      *v10 = 136446466;
      *(v10 + 4) = sub_223623274(0xD000000000000024, 0x8000000223734C70, &v22);
      *(v10 + 12) = 2082;
      v12 = sub_22372B738();
      v14 = v13;
      sub_223640240(v9, type metadata accessor for IntelligenceFlowSessionBridge.Error);
      v15 = sub_223623274(v12, v14, &v22);

      *(v10 + 14) = v15;
      _os_log_impl(&dword_223620000, v7, v8, "%{public}s Can not end Intelligence Flow session because it's creation has failed with error %{public}s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE8A80](v11, -1, -1);
      MEMORY[0x223DE8A80](v10, -1, -1);

      v16 = v21;
    }

    else
    {
      v18 = v0[24];
      v17 = v0[25];

      sub_223640240(v18, type metadata accessor for IntelligenceFlowSessionBridge.Error);
      v16 = v17;
    }

    sub_223640240(v16, type metadata accessor for IntelligenceFlowSessionBridge.Error);
  }

  sub_223640240(v0[28], type metadata accessor for IntelligenceFlowSessionBridge.Error);

  v19 = v0[1];

  return v19();
}

uint64_t sub_223668E60()
{
  v8 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = sub_22372AC88();
  v2 = sub_22372B268();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136446210;
    *(v3 + 4) = sub_223623274(0xD000000000000024, 0x8000000223734C70, &v7);
    _os_log_impl(&dword_223620000, v1, v2, "%{public}s Ended Intelligence Flow session", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x223DE8A80](v4, -1, -1);
    MEMORY[0x223DE8A80](v3, -1, -1);
  }

  else
  {
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_223669024()
{
  v15 = v0;
  v1 = v0[34];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v2 = v1;
  v3 = sub_22372AC88();
  v4 = sub_22372B278();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[34];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_223623274(0xD000000000000024, 0x8000000223734C70, &v14);
    *(v6 + 12) = 2082;
    swift_getErrorValue();
    v8 = sub_22372B738();
    v10 = sub_223623274(v8, v9, &v14);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_223620000, v3, v4, "%{public}s Call to end Intelligence Flow session failed with error %{public}s. Just cleaning the state", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v7, -1, -1);
    MEMORY[0x223DE8A80](v6, -1, -1);
  }

  else
  {
    v11 = v0[34];
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_223669270()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *(*v1 + 272);
  v5 = *(*v1 + 264);
  v2[50] = v0;

  v6 = *(v4 + 8);
  v2[51] = v6;
  v2[52] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  if (v0)
  {
    v7 = sub_223669958;
  }

  else
  {
    v7 = sub_2236693F4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2236693F4()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  type metadata accessor for IntelligenceFlowSessionBridge.Error(0);
  swift_storeEnumTagMultiPayload();
  sub_22366FDD0(&unk_281329528, type metadata accessor for IntelligenceFlowSessionBridge.Error, protocol conformance descriptor for IntelligenceFlowSessionBridge.Error);
  swift_willThrowTypedImpl();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2236694F8()
{
  v27 = v0;
  v1 = *(v0 + 336);
  *(v0 + 200) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EAD0, &qword_22372CA80);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 336);
  if (v3)
  {

    v5 = *(v0 + 152);
    v6 = *(v0 + 160);
    v7 = *(v0 + 168);
    sub_22366FD64(v5, v6, v7);
    v8 = sub_22372AC88();
    v9 = sub_22372B278();
    sub_223661204(v5, v6, v7);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v26 = v11;
      *v10 = 136446466;
      *(v10 + 4) = sub_223623274(0xD00000000000001FLL, 0x8000000223734D60, &v26);
      *(v10 + 12) = 2082;
      *(v0 + 176) = v5;
      *(v0 + 184) = v6;
      *(v0 + 192) = v7;
      sub_22366FD7C();
      v12 = sub_22372B738();
      v14 = sub_223623274(v12, v13, &v26);

      *(v10 + 14) = v14;
      _os_log_impl(&dword_223620000, v8, v9, "%{public}s Failed to start Remote Intelligence Session with error: %{public}s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE8A80](v11, -1, -1);
      MEMORY[0x223DE8A80](v10, -1, -1);
    }

    v15 = *(v0 + 256);
    *v15 = v5;
    *(v15 + 8) = v6;
    *(v15 + 16) = v7;
    type metadata accessor for IntelligenceFlowSessionBridge.Error(0);
    swift_storeEnumTagMultiPayload();
    sub_22366FDD0(&unk_281329528, type metadata accessor for IntelligenceFlowSessionBridge.Error, protocol conformance descriptor for IntelligenceFlowSessionBridge.Error);
    swift_willThrowTypedImpl();
  }

  else
  {

    v16 = v4;
    v17 = sub_22372AC88();
    v18 = sub_22372B278();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = v20;
      *v19 = 136446466;
      *(v19 + 4) = sub_223623274(0xD00000000000001FLL, 0x8000000223734D60, &v26);
      *(v19 + 12) = 2082;
      swift_getErrorValue();
      v21 = sub_22372B738();
      v23 = sub_223623274(v21, v22, &v26);

      *(v19 + 14) = v23;
      _os_log_impl(&dword_223620000, v17, v18, "%{public}s Failed to start Intelligence Flow Session with error: %{public}s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE8A80](v20, -1, -1);
      MEMORY[0x223DE8A80](v19, -1, -1);
    }

    **(v0 + 256) = *(v0 + 336);
    type metadata accessor for IntelligenceFlowSessionBridge.Error(0);
    swift_storeEnumTagMultiPayload();
    sub_22366FDD0(&unk_281329528, type metadata accessor for IntelligenceFlowSessionBridge.Error, protocol conformance descriptor for IntelligenceFlowSessionBridge.Error);
    swift_willThrowTypedImpl();
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_223669958()
{
  v25 = v0;
  v1 = v0[50];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v2 = v1;
  v3 = sub_22372AC88();
  v4 = sub_22372B278();

  if (os_log_type_enabled(v3, v4))
  {
    v21 = v0[51];
    v22 = v0[50];
    v5 = v0[47];
    v6 = v0[46];
    v7 = v0[41];
    v8 = v0[35];
    v9 = v0[33];
    v10 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v10 = 136446722;
    *(v10 + 4) = sub_223623274(0xD00000000000001FLL, 0x8000000223734D60, &v24);
    *(v10 + 12) = 2080;
    v5(v8, v7 + v6, v9);
    sub_22366FDD0(&qword_28132B600, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v11 = sub_22372B6B8();
    v13 = v12;
    v21(v8, v9);
    v14 = sub_223623274(v11, v13, &v24);

    *(v10 + 14) = v14;
    *(v10 + 22) = 2082;
    swift_getErrorValue();
    v15 = sub_22372B738();
    v17 = sub_223623274(v15, v16, &v24);

    *(v10 + 24) = v17;
    _os_log_impl(&dword_223620000, v3, v4, "%{public}s Intelligence Flow session with id %s refused to end with error: %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v23, -1, -1);
    MEMORY[0x223DE8A80](v10, -1, -1);
  }

  else
  {
    v18 = v0[50];
  }

  type metadata accessor for IntelligenceFlowSessionBridge.Error(0);
  swift_storeEnumTagMultiPayload();
  sub_22366FDD0(&unk_281329528, type metadata accessor for IntelligenceFlowSessionBridge.Error, protocol conformance descriptor for IntelligenceFlowSessionBridge.Error);
  swift_willThrowTypedImpl();

  v19 = v0[1];

  return v19();
}

uint64_t sub_223669C88(uint64_t a1, uint64_t a2)
{
  v3[9] = v2;
  v3[10] = a2;
  v3[8] = a1;
  v3[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EC08, &qword_22372E0D0);
  v3[12] = swift_task_alloc();
  v3[13] = type metadata accessor for IntelligenceFlowSessionBridge.Error(0);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_223669D68, v2, 0);
}

uint64_t sub_223669D68()
{
  v10 = v0;
  v1 = *(v0 + 72);
  swift_beginAccess();
  if (*(v1 + 112))
  {
    v2 = *(v1 + 112);
  }

  else
  {
    sub_223624734(*(v0 + 64), &v9);
    v2 = v9;
    *(v1 + 112) = v9;
  }

  *(v0 + 128) = v2;

  if (sub_22372B1D8())
  {
    swift_storeEnumTagMultiPayload();
    sub_22366FDD0(&unk_281329528, type metadata accessor for IntelligenceFlowSessionBridge.Error, protocol conformance descriptor for IntelligenceFlowSessionBridge.Error);
    swift_willThrowTypedImpl();

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 136) = v3;
    v4 = type metadata accessor for SessionClientBox(0);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EAD0, &qword_22372CA80);
    *(v0 + 144) = v5;
    *v3 = v0;
    v3[1] = sub_223669F84;
    v6 = MEMORY[0x277D84950];

    return MEMORY[0x282200440](v0 + 40, v2, v4, v5, v6);
  }
}

uint64_t sub_223669F84()
{

  return MEMORY[0x2822009F8](sub_22366A080, 0, 0);
}

uint64_t sub_22366A080()
{
  v1 = *(v0 + 40);
  if (*(v0 + 48))
  {
    *(v0 + 56) = v1;
    swift_dynamicCast();
  }

  else
  {
    **(v0 + 96) = v1;
  }

  swift_storeEnumTagMultiPayload();
  v2 = *(v0 + 96);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = *(v0 + 112);
    v5 = *(v0 + 72);
    v4 = *(v0 + 80);
    sub_22366E5FC(v2, v3);
    sub_22366FCFC(v3, v4, type metadata accessor for IntelligenceFlowSessionBridge.Error);
    sub_22366FDD0(&unk_281329528, type metadata accessor for IntelligenceFlowSessionBridge.Error, protocol conformance descriptor for IntelligenceFlowSessionBridge.Error);
    swift_willThrowTypedImpl();
    sub_223640240(v3, type metadata accessor for IntelligenceFlowSessionBridge.Error);
    v6 = sub_22366A3E4;
    v7 = v5;
  }

  else
  {
    v7 = *(v0 + 72);
    *(v0 + 152) = *v2;
    v6 = sub_22366A1FC;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_22366A1FC()
{
  v9 = v0;
  sub_22372A548();
  sub_22366FDD0(qword_27D08EC10, MEMORY[0x277D5D298], MEMORY[0x277D5D2B0]);
  if (sub_22372AFC8())
  {
  }

  else
  {
    v1 = sub_22372AC88();
    v2 = sub_22372B278();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v8 = v4;
      *v3 = 136446210;
      *(v3 + 4) = sub_223623274(0xD000000000000016, 0x8000000223734CA0, &v8);
      _os_log_impl(&dword_223620000, v1, v2, "%{public}s XPC requested client session is for the different user from the one create earlier. This is possible in current design but is an opening for a privacy issue if Siri is allowed to interact with multiple users simultaneously", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v4);
      MEMORY[0x223DE8A80](v4, -1, -1);
      MEMORY[0x223DE8A80](v3, -1, -1);
    }
  }

  v5 = *(v0 + 8);
  v6 = *(v0 + 152);

  return v5(v6);
}

uint64_t sub_22366A3E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22366A464(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F640, &unk_22372D770);
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22366A504, v2, 0);
}

uint64_t sub_22366A504()
{
  v1 = v0[7];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (v2)
  {
    v3 = v0[8];
    v5 = v0[5];
    v4 = v0[6];
    v6 = sub_22372B1A8();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v2;
    v7[5] = v5;
    v7[6] = v4;

    sub_223667D54(0, 0, v3, &unk_22372E0F8, v7);
  }

  else
  {
    if (qword_281328E50 != -1)
    {
      swift_once();
    }

    v8 = sub_22372AC98();
    __swift_project_value_buffer(v8, qword_28132B668);
    v9 = sub_22372AC88();
    v10 = sub_22372B278();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_223620000, v9, v10, "GenAI prewarm is called before client future is created", v11, 2u);
      MEMORY[0x223DE8A80](v11, -1, -1);
    }
  }

  v12 = v0[1];

  return v12(v2 != 0);
}

uint64_t sub_22366A700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[25] = a5;
  v6[26] = a6;
  v6[24] = a1;
  v8 = sub_22372AD58();
  v6[27] = v8;
  v6[28] = *(v8 - 8);
  v6[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EC98, &qword_22372E380);
  v6[30] = swift_task_alloc();
  v9 = sub_22372AD08();
  v6[31] = v9;
  v6[32] = *(v9 - 8);
  v6[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08ECA0, &qword_22372E388);
  v6[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08ECA8, &qword_22372E390);
  v6[35] = swift_task_alloc();
  v10 = sub_22372ADB8();
  v6[36] = v10;
  v6[37] = *(v10 - 8);
  v6[38] = swift_task_alloc();
  v11 = sub_223727448();
  v6[39] = v11;
  v6[40] = *(v11 - 8);
  v6[41] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08ECB0, &qword_22372E398);
  v6[42] = v12;
  v6[43] = *(v12 - 8);
  v6[44] = swift_task_alloc();
  v13 = sub_22372AD48();
  v6[45] = v13;
  v6[46] = *(v13 - 8);
  v6[47] = swift_task_alloc();
  v6[48] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08ECB8, &unk_22372E3A0);
  v6[49] = swift_task_alloc();
  v14 = sub_22372ACE8();
  v6[50] = v14;
  v6[51] = *(v14 - 8);
  v6[52] = swift_task_alloc();
  v6[53] = swift_task_alloc();
  v15 = sub_22372AF38();
  v6[54] = v15;
  v6[55] = *(v15 - 8);
  v6[56] = swift_task_alloc();
  v16 = sub_22372AF28();
  v6[57] = v16;
  v6[58] = *(v16 - 8);
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();
  v17 = sub_223727408();
  v6[61] = v17;
  v6[62] = *(v17 - 8);
  v6[63] = swift_task_alloc();
  v6[64] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EC08, &qword_22372E0D0);
  v6[65] = swift_task_alloc();
  v6[66] = type metadata accessor for IntelligenceFlowSessionBridge.Error(0);
  v6[67] = swift_task_alloc();
  v6[68] = swift_task_alloc();
  v18 = swift_task_alloc();
  v6[69] = v18;
  v19 = type metadata accessor for SessionClientBox(0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EAD0, &qword_22372CA80);
  v6[70] = v20;
  *v18 = v6;
  v18[1] = sub_22366AD04;
  v21 = MEMORY[0x277D84950];

  return MEMORY[0x282200440](v6 + 20, a4, v19, v20, v21);
}

uint64_t sub_22366AD04()
{

  return MEMORY[0x2822009F8](sub_22366AE00, 0, 0);
}

uint64_t sub_22366AE00()
{
  v1 = *(v0 + 160);
  if (*(v0 + 168))
  {
    *(v0 + 176) = v1;
    swift_dynamicCast();
  }

  else
  {
    **(v0 + 520) = v1;
  }

  swift_storeEnumTagMultiPayload();
  v2 = *(v0 + 520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = *(v0 + 544);
    v4 = *(v0 + 536);
    sub_22366E5FC(v2, v4);
    sub_22366FCFC(v4, v3, type metadata accessor for IntelligenceFlowSessionBridge.Error);
    sub_22366FDD0(&unk_281329528, type metadata accessor for IntelligenceFlowSessionBridge.Error, protocol conformance descriptor for IntelligenceFlowSessionBridge.Error);
    swift_willThrowTypedImpl();
    sub_223640240(v4, type metadata accessor for IntelligenceFlowSessionBridge.Error);
    v5 = swift_allocError();
    sub_22366E5FC(v3, v6);
    if (qword_281328E50 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_34;
  }

  v7 = *(v0 + 496);
  v8 = *(v0 + 504);
  v10 = *(v0 + 480);
  v9 = *(v0 + 488);
  v78 = *(v0 + 472);
  v74 = *(v0 + 464);
  v11 = *(v0 + 448);
  v76 = *(v0 + 456);
  v13 = *(v0 + 432);
  v12 = *(v0 + 440);
  v14 = *v2;
  *(v0 + 568) = *v2;
  (*(v7 + 16))(v8, v14 + OBJC_IVAR____TtC24RequestDispatcherBridges16SessionClientBox_intelligenceFlowSessionID, v9);
  v15 = sub_2237273B8();
  v17 = sub_22366CBC4(v15, v16);
  v19 = v18;
  sub_22366FDD0(&qword_27D08ECC0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  sub_22372AF18();
  sub_2236612D0(v17, v19);
  sub_22366E178(v17, v19, v11);
  sub_223661270(v17, v19);
  sub_22372AF08();
  sub_223661270(v17, v19);
  (*(v12 + 8))(v11, v13);
  (*(v74 + 16))(v78, v10, v76);
  sub_22366FDD0(&qword_27D08ECC8, MEMORY[0x277CC5290], MEMORY[0x277CC52A8]);
  sub_22372B0E8();
  v20 = *(v0 + 144);
  v21 = *(v0 + 152);
  v22 = *(v20 + 16);
  if (v21 != v22)
  {
    if ((v21 & 0x8000000000000000) == 0)
    {
      v5 = (v20 + 32);
      v23 = MEMORY[0x277D84F90];
      while (v21 < *(v20 + 16))
      {
        v27 = v5[v21];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08ECD0, &unk_22372E3B0);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_22372E090;
        *(v28 + 56) = MEMORY[0x277D84B78];
        *(v28 + 64) = MEMORY[0x277D84BC0];
        *(v28 + 32) = v27;
        v29 = sub_22372B008();
        v31 = v30;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_223637D3C(0, *(v23 + 2) + 1, 1, v23);
        }

        v33 = *(v23 + 2);
        v32 = *(v23 + 3);
        if (v33 >= v32 >> 1)
        {
          v23 = sub_223637D3C((v32 > 1), v33 + 1, 1, v23);
        }

        ++v21;
        *(v23 + 2) = v33 + 1;
        v34 = &v23[16 * v33];
        *(v34 + 4) = v29;
        *(v34 + 5) = v31;
        if (v22 == v21)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_34:
      swift_once();
LABEL_19:
      v44 = sub_22372AC98();
      __swift_project_value_buffer(v44, qword_28132B668);
      v45 = v5;
      v46 = sub_22372AC88();
      v47 = sub_22372B278();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *v48 = 138412290;
        v50 = v5;
        v51 = _swift_stdlib_bridgeErrorToNSError();
        *(v48 + 4) = v51;
        *v49 = v51;
        _os_log_impl(&dword_223620000, v46, v47, "Error during GenAI prewarming: %@", v48, 0xCu);
        sub_223626478(v49, &unk_27D08F250, &unk_22372D1D0);
        MEMORY[0x223DE8A80](v49, -1, -1);
        MEMORY[0x223DE8A80](v48, -1, -1);
      }

      else
      {
      }

LABEL_22:
      **(v0 + 192) = 0;

      v52 = *(v0 + 8);

      return v52();
    }

    __break(1u);
    goto LABEL_36;
  }

  v23 = MEMORY[0x277D84F90];
LABEL_8:

  *(v0 + 184) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EB98, &qword_22372DE50);
  sub_223660728(&qword_281328DC8, &qword_27D08EB98, &qword_22372DE50, MEMORY[0x277D83958]);
  v24 = sub_22372AFA8();
  v26 = v25;

  *(v0 + 576) = v26;
  sub_22372ADE8();
  sub_22372ADD8();
  v77 = v26;
  v36 = *(v0 + 368);
  v35 = *(v0 + 376);
  v37 = *(v0 + 352);
  v79 = *(v0 + 360);
  v39 = *(v0 + 336);
  v38 = *(v0 + 344);
  v73 = v24;
  v40 = *(v0 + 200);
  v41 = *(v0 + 208);
  sub_22372AD18();
  swift_getKeyPath();
  v42 = swift_allocObject();
  *(v42 + 16) = v40;
  *(v42 + 24) = v41;
  *v37 = v42;
  (*(v38 + 104))(v37, *MEMORY[0x277D721C8], v39);
  sub_22366FDD0(&qword_27D08ECD8, MEMORY[0x277D724B8], MEMORY[0x277D724A0]);
  sub_223660728(&qword_27D08ECE0, &qword_27D08ECB0, &qword_22372E398, MEMORY[0x277D721D8]);

  sub_22372AE08();

  (*(v38 + 8))(v37, v39);
  v43 = *(v36 + 8);
  v43(v35, v79);
  sub_223727438();
  sub_22372ADC8();
  v54 = *(v0 + 408);
  v75 = *(v0 + 400);
  v55 = *(v0 + 384);
  v56 = *(v0 + 392);
  v57 = *(v0 + 360);
  v58 = *(v0 + 320);
  v59 = *(v0 + 328);
  v60 = *(v0 + 312);

  (*(v58 + 8))(v59, v60);
  v43(v55, v57);
  if ((*(v54 + 48))(v56, 1, v75) == 1)
  {
    v61 = *(v0 + 392);

    sub_223626478(v61, &qword_27D08ECB8, &unk_22372E3A0);
    if (qword_281328E50 == -1)
    {
LABEL_27:
      v62 = sub_22372AC98();
      __swift_project_value_buffer(v62, qword_28132B668);
      v63 = sub_22372AC88();
      v64 = sub_22372B278();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&dword_223620000, v63, v64, "Unable to retrieve genAI tool for prewarming. Performance impact expected.", v65, 2u);
        MEMORY[0x223DE8A80](v65, -1, -1);
      }

      v67 = *(v0 + 496);
      v66 = *(v0 + 504);
      v69 = *(v0 + 480);
      v68 = *(v0 + 488);
      v70 = *(v0 + 456);
      v71 = *(v0 + 464);

      (*(v71 + 8))(v69, v70);
      (*(v67 + 8))(v66, v68);
      goto LABEL_22;
    }

LABEL_36:
    swift_once();
    goto LABEL_27;
  }

  (*(*(v0 + 408) + 32))(*(v0 + 424), *(v0 + 392), *(v0 + 400));
  v72 = swift_task_alloc();
  *(v0 + 584) = v72;
  *v72 = v0;
  v72[1] = sub_22366B9A0;

  return MEMORY[0x2821DADB8](v73, v77);
}

uint64_t sub_22366B9A0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 592) = a1;
  *(v3 + 600) = v1;

  if (v1)
  {
    v4 = sub_22366C558;
  }

  else
  {
    v4 = sub_22366BAE0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22366BAE0()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 408);
  v39 = *(v0 + 400);
  v40 = *(v0 + 424);
  v3 = *(v0 + 296);
  v4 = *(v0 + 280);
  v45 = *(v0 + 288);
  v5 = *(v0 + 272);
  v48 = *(v0 + 600);
  v41 = *(v0 + 304);
  v43 = *(v0 + 240);
  v6 = *MEMORY[0x277D72630];
  v7 = sub_22372AD98();
  v8 = *(v7 - 8);
  (*(v8 + 104))(v4, v6, v7);
  (*(v8 + 56))(v4, 0, 1, v7);
  v9 = sub_22372AD88();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_22372ADA8();
  (*(v2 + 16))(v1, v40, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08ECE8, &unk_22372E3F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22372E090;
  *(inited + 32) = 0x646E616D6D6F63;
  *(inited + 40) = 0xE700000000000000;
  v11 = sub_22372AE48();
  v12 = swift_allocBox();
  *v13 = 0x70756D726177;
  v13[1] = 0xE600000000000000;
  (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D729B8], v11);
  v14 = sub_22372AE58();
  v15 = MEMORY[0x277D72A68];
  *(inited + 72) = v14;
  *(inited + 80) = v15;
  *__swift_allocate_boxed_opaque_existential_1((inited + 48)) = v12;
  (*(*(v14 - 8) + 104))();
  sub_22368F55C(inited);
  swift_setDeallocating();
  sub_223626478(inited + 32, &qword_27D08ECF0, &unk_22372FBE0);
  (*(v3 + 16))(v43, v41, v45);
  (*(v3 + 56))(v43, 0, 1, v45);
  sub_22372ACF8();
  if (v48)
  {
    v16 = *(v0 + 496);
    v47 = *(v0 + 504);
    v44 = *(v0 + 480);
    v46 = *(v0 + 488);
    v17 = *(v0 + 464);
    v42 = *(v0 + 456);
    v18 = *(v0 + 424);
    v20 = *(v0 + 400);
    v19 = *(v0 + 408);
    v21 = *(v0 + 296);
    v22 = *(v0 + 304);
    v23 = *(v0 + 288);
    swift_unknownObjectRelease();

    (*(v21 + 8))(v22, v23);
    (*(v19 + 8))(v18, v20);
    (*(v17 + 8))(v44, v42);
    (*(v16 + 8))(v47, v46);
    if (qword_281328E50 != -1)
    {
      swift_once();
    }

    v24 = sub_22372AC98();
    __swift_project_value_buffer(v24, qword_28132B668);
    v25 = v48;
    v26 = sub_22372AC88();
    v27 = sub_22372B278();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      v30 = v48;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v31;
      *v29 = v31;
      _os_log_impl(&dword_223620000, v26, v27, "Error during GenAI prewarming: %@", v28, 0xCu);
      sub_223626478(v29, &unk_27D08F250, &unk_22372D1D0);
      MEMORY[0x223DE8A80](v29, -1, -1);
      MEMORY[0x223DE8A80](v28, -1, -1);
    }

    else
    {
    }

    **(v0 + 192) = 0;

    v37 = *(v0 + 8);

    return v37();
  }

  else
  {
    *(v0 + 136) = 0;
    *(v0 + 120) = 0u;
    *(v0 + 104) = 0u;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08ECF8, &qword_22372E400);
    *(v0 + 608) = v32;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *(v0 + 616) = OpaqueTypeConformance2;
    v34 = swift_task_alloc();
    *(v0 + 624) = v34;
    *v34 = v0;
    v34[1] = sub_22366C1BC;
    v35 = *(v0 + 264);
    v36 = *(v0 + 232);

    return MEMORY[0x2821DAA58](v36, v35, v0 + 104, v32, OpaqueTypeConformance2);
  }
}

uint64_t sub_22366C1BC()
{
  v2 = *v1;
  *(*v1 + 632) = v0;

  if (v0)
  {
    sub_223626478((v2 + 13), &qword_27D08ED00, &qword_22372E408);
    v3 = sub_22366C860;
  }

  else
  {
    v5 = v2[28];
    v4 = v2[29];
    v6 = v2[27];
    sub_223626478((v2 + 13), &qword_27D08ED00, &qword_22372E408);
    (*(v5 + 8))(v4, v6);
    v3 = sub_22366C328;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22366C328()
{
  v1 = *(v0 + 496);
  v16 = *(v0 + 488);
  v17 = *(v0 + 504);
  v2 = *(v0 + 464);
  v14 = *(v0 + 456);
  v15 = *(v0 + 480);
  v3 = *(v0 + 408);
  v12 = *(v0 + 400);
  v13 = *(v0 + 424);
  v4 = *(v0 + 296);
  v10 = *(v0 + 288);
  v11 = *(v0 + 304);
  v5 = *(v0 + 256);
  v6 = *(v0 + 264);
  v7 = *(v0 + 248);
  sub_22372AD68();
  swift_unknownObjectRelease();

  (*(v5 + 8))(v6, v7);
  (*(v4 + 8))(v11, v10);
  (*(v3 + 8))(v13, v12);
  (*(v2 + 8))(v15, v14);
  (*(v1 + 8))(v17, v16);
  **(v0 + 192) = 1;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_22366C558()
{
  v2 = *(v0 + 496);
  v1 = *(v0 + 504);
  v4 = *(v0 + 480);
  v3 = *(v0 + 488);
  v5 = *(v0 + 456);
  v6 = *(v0 + 464);
  v7 = *(v0 + 424);
  v8 = *(v0 + 400);
  v9 = *(v0 + 408);

  (*(v9 + 8))(v7, v8);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v10 = *(v0 + 600);
  if (qword_281328E50 != -1)
  {
    swift_once();
  }

  v11 = sub_22372AC98();
  __swift_project_value_buffer(v11, qword_28132B668);
  v12 = v10;
  v13 = sub_22372AC88();
  v14 = sub_22372B278();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    v17 = v10;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v18;
    *v16 = v18;
    _os_log_impl(&dword_223620000, v13, v14, "Error during GenAI prewarming: %@", v15, 0xCu);
    sub_223626478(v16, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v16, -1, -1);
    MEMORY[0x223DE8A80](v15, -1, -1);
  }

  else
  {
  }

  **(v0 + 192) = 0;

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_22366C860()
{
  v1 = *(v0 + 496);
  v25 = *(v0 + 488);
  v26 = *(v0 + 504);
  v2 = *(v0 + 464);
  v23 = *(v0 + 456);
  v24 = *(v0 + 480);
  v3 = *(v0 + 408);
  v21 = *(v0 + 400);
  v22 = *(v0 + 424);
  v4 = *(v0 + 296);
  v19 = *(v0 + 288);
  v20 = *(v0 + 304);
  v5 = *(v0 + 256);
  v6 = *(v0 + 264);
  v7 = *(v0 + 248);
  sub_22372AD68();
  swift_unknownObjectRelease();

  (*(v5 + 8))(v6, v7);
  (*(v4 + 8))(v20, v19);
  (*(v3 + 8))(v22, v21);
  (*(v2 + 8))(v24, v23);
  (*(v1 + 8))(v26, v25);
  v8 = *(v0 + 632);
  if (qword_281328E50 != -1)
  {
    swift_once();
  }

  v9 = sub_22372AC98();
  __swift_project_value_buffer(v9, qword_28132B668);
  v10 = v8;
  v11 = sub_22372AC88();
  v12 = sub_22372B278();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = v8;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_223620000, v11, v12, "Error during GenAI prewarming: %@", v13, 0xCu);
    sub_223626478(v14, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v14, -1, -1);
    MEMORY[0x223DE8A80](v13, -1, -1);
  }

  else
  {
  }

  **(v0 + 192) = 0;

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_22366CBC4(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08ED08, &qword_22372E410);
  if (swift_dynamicCast())
  {
    sub_2236241E8(__src, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_2237272A8();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_1Tm(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_223626478(__src, &qword_27D08ED10, &qword_22372E418);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_22372B4C8();
  }

  sub_22366D8D4(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_22366F9AC(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0], v9);
  v34[2] = v39;
  v10 = sub_22366D99C(sub_22366FA4C, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_223727328();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_22366DEF4(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_22372B098();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_22372B0C8();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_22372B4C8();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_22366DEF4(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_22372B0A8();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_223727338();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_223727338();
    sub_22366FAB4(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_22366FAB4(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_2236612D0(*&__src[0], *(&__src[0] + 1));

  sub_223661270(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_22366D0E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08ECB0, &qword_22372E398);
  MEMORY[0x28223BE20](v2, v3);
  (*(v5 + 16))(&v7 - v4, a1);
  return sub_22372AD38();
}

void sub_22366D1E4(char *a1, uint64_t a2)
{
  v5 = type metadata accessor for IntelligenceFlowSessionBridge.Error(0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22362457C(a1, v8);
  if (v2)
  {
    sub_22366E5FC(v8, a2);
  }
}

uint64_t sub_22366D280()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_223624EA4;

  return sub_22362BF58();
}

uint64_t sub_22366D30C(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  type metadata accessor for IntelligenceFlowSessionBridge.Error(0);
  v4 = swift_task_alloc();
  v2[3] = v4;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_22366D3E0;

  return sub_223669C88(a1, v4);
}

uint64_t sub_22366D3E0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    sub_22366E5FC(*(v4 + 24), *(v4 + 16));

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {

    v8 = *(v5 + 8);

    return v8(a1);
  }
}

uint64_t sub_22366D544(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22366D5E8;

  return sub_22366A464(a1, a2);
}

uint64_t sub_22366D5E8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_22366D6E4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22366D7DC;

  return v6(a1);
}

uint64_t sub_22366D7DC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t *sub_22366D8D4@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_22366F8F4(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_223727208();
      swift_allocObject();
      v8 = sub_2237271B8();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_223727318();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

char *sub_22366D99C(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_223661270(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_223661270(v7, v6);
    *v4 = xmmword_22372E0A0;
    sub_223661270(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_2237271C8() && __OFSUB__(v7, sub_2237271F8()))
      {
LABEL_26:
        __break(1u);
      }

      sub_223727208();
      swift_allocObject();
      v14 = sub_2237271A8();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_22366DE40(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_223661270(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_22372E0A0;
    sub_223661270(0, 0xC000000000000000);
    sub_223727308();
    result = sub_22366DE40(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

_BYTE *sub_22366DD40@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_22366F8F4(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_22366FAC8(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_22366FB44(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_22366DDD4(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_22366DE40(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_2237271C8();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_2237271F8();
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

  v12 = sub_2237271E8();
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

unint64_t sub_22366DEF4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_22372B0D8();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x223DE7B00](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_22366DF70(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_22366E064;

  return v5(v2 + 32);
}

uint64_t sub_22366E064()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_22366E178(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_22372AF38();
      sub_22366FDD0(&qword_27D08ECC0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_22372AEF8();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_22366E358(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_22366E358(v5, v6);
  }

  sub_22372AF38();
  sub_22366FDD0(&qword_27D08ECC0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  return sub_22372AEF8();
}

uint64_t sub_22366E358(uint64_t a1, uint64_t a2)
{
  result = sub_2237271C8();
  if (!result || (result = sub_2237271F8(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_2237271E8();
      sub_22372AF38();
      sub_22366FDD0(&qword_27D08ECC0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_22372AEF8();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22366E438@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_22372B468();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22366E488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_defaultActor_initialize();
  *(v7 + 208) = 0;
  *(v7 + 112) = 0u;
  *(v7 + 128) = 0u;
  *(v7 + 144) = 0u;
  swift_unknownObjectWeakInit();
  *(v7 + 184) = a4;
  *(v7 + 192) = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v7 + 160));
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  *(v7 + 208) = a7;
  swift_unknownObjectWeakAssign();
  v14 = OBJC_IVAR____TtC24RequestDispatcherBridges33IntelligenceFlowSessionController_logger;
  v15 = sub_22372AC98();
  (*(*(v15 - 8) + 32))(v7 + v14, a3, v15);
  return v7;
}

uint64_t sub_22366E58C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EC00, &unk_22372E0B8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22366E5FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceFlowSessionBridge.Error(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22366E660(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2236242EC;

  return sub_22366A700(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22366E770(uint64_t a1)
{
  result = sub_22366FDD0(&qword_2813291F0, type metadata accessor for IntelligenceFlowSessionController, ")ڰ^p");
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for IntelligenceFlowSessionController(uint64_t a1)
{
  result = qword_2813291D8;
  if (!qword_2813291D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of IntelligenceFlowSessionControllerProtocol.endIntelligenceFlowSessionIfNeeded()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 72) + **(a2 + 72));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2236242EC;

  return v7(a1, a2);
}

uint64_t _s24RequestDispatcherBridges41IntelligenceFlowSessionControllerProtocolP16sessionClientBox3forAA0fjK0C16SiriMessageTypes6UserIDV_tYa5ErrorQzYKFTj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 80) + **(a4 + 80));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22366FE48;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of IntelligenceFlowSessionControllerProtocol.cancelFutureIfExists()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 88) + **(a3 + 88));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2236242EC;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of IntelligenceFlowSessionControllerProtocol.prewarmIntent(withIntentId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 96) + **(a4 + 96));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22366FE4C;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_22366ED4C(uint64_t a1)
{
  result = sub_22372AC98();
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

uint64_t dispatch thunk of IntelligenceFlowSessionController.cancelFutureIfExists()(uint64_t a1)
{
  v6 = (*(*v1 + 232) + **(*v1 + 232));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2236242EC;

  return v6(a1);
}

uint64_t dispatch thunk of IntelligenceFlowSessionController.endIntelligenceFlowSessionIfNeeded()()
{
  v4 = (*(*v0 + 240) + **(*v0 + 240));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_223624EA4;

  return v4();
}

uint64_t _s24RequestDispatcherBridges33IntelligenceFlowSessionControllerC16sessionClientBox3forAA0fiJ0C16SiriMessageTypes6UserIDV_tYaAA0deF6BridgeC5ErrorOYKFTj(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 256) + **(*v2 + 256));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22366F28C;

  return v8(a1, a2);
}

uint64_t sub_22366F28C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of IntelligenceFlowSessionController.prewarmIntent(withIntentId:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 264) + **(*v2 + 264));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22366D5E8;

  return v8(a1, a2);
}

uint64_t dispatch thunk of IntelligenceFlowSessionController.Delegate.sessionController(_:didEstablishSessionWithClientBox:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2236242EC;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_22366F5F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}