uint64_t sub_22B2A3870()
{
  v1 = *(*v0 + 232);

  return MEMORY[0x2822009F8](sub_22B2A3980, v1, 0);
}

uint64_t sub_22B2A3980()
{
  v53 = v0;
  v1 = v0[52];
  v2 = v0[53];
  v3 = v0[51];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_22B123284(v3, &qword_27D8BAC20, &qword_22B366AC0);
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v5 = v0[34];
    v4 = v0[35];
    v6 = v0[33];
    v7 = __swift_project_value_buffer(v6, qword_28140BD10);
    swift_beginAccess();
    (*(v5 + 16))(v4, v7, v6);

    v8 = sub_22B36050C();
    v9 = sub_22B360D1C();

    v10 = os_log_type_enabled(v8, v9);
    v12 = v0[34];
    v11 = v0[35];
    v13 = v0[33];
    if (v10)
    {
      v15 = v0[20];
      v14 = v0[21];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v52 = v17;
      *v16 = 136380675;
      *(v16 + 4) = sub_22B1A7B20(v15, v14, &v52);
      _os_log_impl(&dword_22B116000, v8, v9, "Failed to fetch energy guidance from server for %{private}s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x23188F650](v17, -1, -1);
      MEMORY[0x23188F650](v16, -1, -1);
    }

    (*(v12 + 8))(v11, v13);

    v18 = v0[1];

    return v18(8);
  }

  else
  {
    v20 = v0[46];
    v22 = v0[43];
    v21 = v0[44];
    v23 = v0[41];
    v47 = v0[42];
    v48 = v0[28];
    v50 = v0[45];
    (*(v2 + 32))(v0[55], v3, v1);
    sub_22B35E2DC();
    sub_22B35D86C();
    (*(v22 + 8))(v21, v47);
    sub_22B170BE0(v48, v23, &qword_27D8BA340, &qword_22B363FB0);
    v24 = *(v20 + 48);
    v0[57] = v24;
    v0[58] = (v20 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v24(v23, 1, v50) == 1)
    {
      sub_22B123284(v0[41], &qword_27D8BA340, &qword_22B363FB0);
    }

    else
    {
      (*(v0[46] + 32))(v0[49], v0[41], v0[45]);
      if (sub_22B35DDFC())
      {
        if (qword_28140A0C8 != -1)
        {
          swift_once();
        }

        v25 = v0[38];
        v26 = v0[33];
        v27 = v0[34];
        v28 = __swift_project_value_buffer(v26, qword_28140BD10);
        swift_beginAccess();
        (*(v27 + 16))(v25, v28, v26);

        v29 = sub_22B36050C();
        v30 = sub_22B360D1C();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = v0[34];
          v49 = v0[33];
          v51 = v0[38];
          v33 = v0[20];
          v32 = v0[21];
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v52 = v35;
          *v34 = 136446467;
          swift_beginAccess();
          sub_22B2A51E0(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
          v36 = sub_22B36131C();
          v38 = sub_22B1A7B20(v36, v37, &v52);

          *(v34 + 4) = v38;
          *(v34 + 12) = 2081;
          *(v34 + 14) = sub_22B1A7B20(v33, v32, &v52);
          _os_log_impl(&dword_22B116000, v29, v30, "Next poll date: %{public}s for gridID: %{private}s violates minimum threshold of 15 minutes. Enforcing minimum threshold.", v34, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x23188F650](v35, -1, -1);
          MEMORY[0x23188F650](v34, -1, -1);

          (*(v31 + 8))(v51, v49);
        }

        else
        {
          v39 = v0[38];
          v40 = v0[33];
          v41 = v0[34];

          (*(v41 + 8))(v39, v40);
        }

        v42 = v0[49];
        v43 = v0[50];
        v44 = v0[45];
        v45 = v0[46];
        swift_beginAccess();
        (*(v45 + 40))(v43, v42, v44);
      }

      else
      {
        (*(v0[46] + 8))(v0[49], v0[45]);
      }
    }

    if (qword_28140B168 != -1)
    {
      swift_once();
    }

    v46 = qword_28140BDC8;
    v0[59] = qword_28140BDC8;

    return MEMORY[0x2822009F8](sub_22B2A4040, v46, 0);
  }
}

uint64_t sub_22B2A4040()
{
  v53 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 432);
  v2 = *(v0 + 440);
  v3 = *(v0 + 416);
  v4 = *(v0 + 424);
  v5 = *(v0 + 296);
  v6 = *(v0 + 264);
  v7 = *(v0 + 272);
  v8 = __swift_project_value_buffer(v6, qword_28140BD10);
  *(v0 + 480) = v8;
  swift_beginAccess();
  v9 = *(v7 + 16);
  *(v0 + 488) = v9;
  *(v0 + 496) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v5, v8, v6);
  (*(v4 + 16))(v1, v2, v3);

  v10 = sub_22B36050C();
  v11 = sub_22B360D2C();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 424);
  v14 = *(v0 + 432);
  v15 = *(v0 + 296);
  v16 = *(v0 + 264);
  v17 = *(v0 + 272);
  if (v12)
  {
    log = v10;
    v18 = *(v0 + 248);
    v19 = *(v0 + 256);
    v50 = *(v0 + 296);
    v20 = *(v0 + 200);
    v42 = *(v0 + 240);
    v43 = *(v0 + 192);
    v40 = *(v0 + 168);
    v41 = *(v0 + 416);
    v44 = v11;
    v21 = *(v0 + 160);
    v48 = *(v0 + 264);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v52 = v23;
    *v22 = 136381187;
    *(v22 + 4) = sub_22B1A7B20(v21, v40, &v52);
    *(v22 + 12) = 512;
    sub_22B35E30C();
    LOWORD(v21) = sub_22B35E1FC();
    (*(v18 + 8))(v19, v42);
    v24 = *(v13 + 8);
    v24(v14, v41);
    *(v22 + 14) = v21;
    *(v22 + 16) = 1024;
    v25 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v25 = v43 & 0xFFFFFFFFFFFFLL;
    }

    *(v22 + 18) = v25 != 0;

    _os_log_impl(&dword_22B116000, log, v44, "Add energy guidance to cache for %{private}s %hd hasUtility: %{BOOL}d", v22, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x23188F650](v23, -1, -1);
    MEMORY[0x23188F650](v22, -1, -1);

    v26 = *(v17 + 8);
    v26(v50, v48);
  }

  else
  {
    v24 = *(v13 + 8);
    v24(*(v0 + 432), *(v0 + 416));

    v26 = *(v17 + 8);
    v26(v15, v16);
  }

  *(v0 + 504) = v26;
  *(v0 + 512) = v24;
  v27 = *(*(v0 + 472) + 112);
  if (v27)
  {
    v28 = *(v0 + 440);
    v45 = *(v0 + 208);
    loga = *(v0 + 216);
    v30 = *(v0 + 192);
    v29 = *(v0 + 200);
    v31 = *(v0 + 176);
    v32 = *(v0 + 184);
    v34 = *(v0 + 160);
    v33 = *(v0 + 168);
    v49 = *(v27 + 48);
    v51 = *(v0 + 232);
    v35 = swift_task_alloc();
    v35[2] = v27;
    v35[3] = v28;
    v35[4] = v34;
    v35[5] = v33;
    v35[6] = v31;
    v35[7] = v32;
    v35[8] = v30;
    v35[9] = v29;
    v35[10] = v45;
    v35[11] = loga;

    v36 = v49;
    sub_22B360E7C();

    *(v0 + 561) = *(v0 + 560);
    v37 = sub_22B2A4424;
    v38 = v51;
  }

  else
  {
    v38 = *(v0 + 232);
    v37 = sub_22B2A47DC;
  }

  return MEMORY[0x2822009F8](v37, v38, 0);
}

uint64_t sub_22B2A4424()
{
  v30 = v0;
  if (*(v0 + 561))
  {
    if (qword_28140AC88 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 400);
    v2 = *(v0 + 384);
    v3 = *(v0 + 360);
    v4 = *(v0 + 368);
    v5 = qword_28140BD80;
    *(v0 + 520) = qword_28140BD80;
    swift_beginAccess();
    v6 = *(v4 + 16);
    *(v0 + 528) = v6;
    *(v0 + 536) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v6(v2, v1, v3);

    return MEMORY[0x2822009F8](sub_22B2A4ABC, v5, 0);
  }

  else
  {
    (*(v0 + 488))(*(v0 + 288), *(v0 + 480), *(v0 + 264));

    v7 = sub_22B36050C();
    v8 = sub_22B360D1C();

    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 512);
    v11 = *(v0 + 440);
    v27 = *(v0 + 504);
    v28 = *(v0 + 416);
    v12 = *(v0 + 400);
    v13 = *(v0 + 360);
    v14 = *(v0 + 368);
    v26 = *(v0 + 288);
    v15 = *(v0 + 264);
    if (v9)
    {
      v24 = *(v0 + 440);
      v25 = *(v0 + 400);
      v16 = *(v0 + 160);
      v17 = *(v0 + 168);
      v23 = *(v0 + 512);
      v18 = swift_slowAlloc();
      v22 = v13;
      v19 = swift_slowAlloc();
      v29 = v19;
      *v18 = 136380675;
      *(v18 + 4) = sub_22B1A7B20(v16, v17, &v29);
      _os_log_impl(&dword_22B116000, v7, v8, "Failed to add energy guidance to cache for %{private}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x23188F650](v19, -1, -1);
      MEMORY[0x23188F650](v18, -1, -1);

      v27(v26, v15);
      v23(v24, v28);
      (*(v14 + 8))(v25, v22);
    }

    else
    {

      v27(v26, v15);
      v10(v11, v28);
      (*(v14 + 8))(v12, v13);
    }

    v20 = *(v0 + 8);

    return v20(5);
  }
}

uint64_t sub_22B2A47DC()
{
  v24 = v0;
  (*(v0 + 488))(*(v0 + 288), *(v0 + 480), *(v0 + 264));

  v1 = sub_22B36050C();
  v2 = sub_22B360D1C();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 512);
  v5 = *(v0 + 440);
  v21 = *(v0 + 504);
  v22 = *(v0 + 416);
  v6 = *(v0 + 400);
  v7 = *(v0 + 360);
  v8 = *(v0 + 368);
  v20 = *(v0 + 288);
  v9 = *(v0 + 264);
  if (v3)
  {
    v18 = *(v0 + 440);
    v19 = *(v0 + 400);
    v10 = *(v0 + 160);
    v11 = *(v0 + 168);
    v17 = *(v0 + 512);
    v12 = swift_slowAlloc();
    v16 = v7;
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136380675;
    *(v12 + 4) = sub_22B1A7B20(v10, v11, &v23);
    _os_log_impl(&dword_22B116000, v1, v2, "Failed to add energy guidance to cache for %{private}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x23188F650](v13, -1, -1);
    MEMORY[0x23188F650](v12, -1, -1);

    v21(v20, v9);
    v17(v18, v22);
    (*(v8 + 8))(v19, v16);
  }

  else
  {

    v21(v20, v9);
    v4(v5, v22);
    (*(v8 + 8))(v6, v7);
  }

  v14 = *(v0 + 8);

  return v14(5);
}

uint64_t sub_22B2A4ABC()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 360);
  v3 = *(v0 + 368);
  v5 = *(v0 + 312);
  v4 = *(v0 + 320);
  (*(v0 + 528))(v5, *(v0 + 384), v2);
  (*(v3 + 56))(v5, 0, 1, v2);
  sub_22B255CFC(v5, v4);
  sub_22B123284(v5, &qword_27D8BA340, &qword_22B363FB0);
  if (v1(v4, 1, v2) == 1)
  {
    v6 = *(v0 + 368);
    v7 = *(v0 + 320);
    v10 = *(v6 + 8);
    v8 = v6 + 8;
    v9 = v10;
    v10(*(v0 + 384), *(v0 + 360));
    sub_22B123284(v7, &qword_27D8BA340, &qword_22B363FB0);
  }

  else
  {
    v12 = *(v0 + 376);
    v11 = *(v0 + 384);
    v13 = *(v0 + 360);
    v14 = *(v0 + 368);
    (*(v14 + 32))(v12, *(v0 + 320), v13);
    sub_22B255B48(v12);
    v15 = *(v14 + 8);
    v8 = v14 + 8;
    v9 = v15;
    v15(v12, v13);
    v15(v11, v13);
  }

  *(v0 + 552) = v9;
  *(v0 + 544) = v8;
  v16 = *(v0 + 232);

  return MEMORY[0x2822009F8](sub_22B2A4C58, v16, 0);
}

uint64_t sub_22B2A4C58()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 400);
  v3 = *(v0 + 360);
  (*(v0 + 512))(*(v0 + 440), *(v0 + 416));
  v1(v2, v3);

  v4 = *(v0 + 8);

  return v4(0);
}

uint64_t sub_22B2A4DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_22B119A60;

  return sub_22B1992BC(a5);
}

uint64_t sub_22B2A4E60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22B119A60;

  return sub_22B2A4DC4(a1, v4, v5, v7, v6);
}

uint64_t sub_22B2A4F58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAC20, &qword_22B366AC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B2A5040(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22B2A50A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22B2A5108(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22B2A51E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_22B2A534C(int a1)
{
  v3 = v1;
  v49 = *MEMORY[0x277D85DE8];
  v5 = sub_22B36052C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v12 = &v41 - v11;
  result = [v3 hasChanges];
  if (result)
  {
    v46 = v8;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v45 = a1;
    v14 = __swift_project_value_buffer(v5, qword_28140BD10);
    swift_beginAccess();
    v41 = *(v6 + 16);
    v42 = v14;
    v41(v12, v14, v5);
    v15 = sub_22B36050C();
    v16 = sub_22B360D0C();
    v17 = os_log_type_enabled(v15, v16);
    v44 = v2;
    v47 = v6;
    if (v17)
    {
      v43 = v5;
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v48 = v19;
      *v18 = 136315138;
      if (v45)
      {
        if (v45 == 1)
        {
          v20 = 0x4F546574656C6564;
        }

        else
        {
          v20 = 0x6144657461647075;
        }

        if (v45 == 1)
        {
          v21 = 0xEE00736B61655055;
        }

        else
        {
          v21 = 0xEA00000000006174;
        }
      }

      else
      {
        v20 = 0x6550554F54646461;
        v21 = 0xEB00000000736B61;
      }

      v23 = sub_22B1A7B20(v20, v21, &v48);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_22B116000, v15, v16, "[CoreDataStack] Saving changes for %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x23188F650](v19, -1, -1);
      MEMORY[0x23188F650](v18, -1, -1);

      v22 = *(v47 + 8);
      v5 = v43;
      v22(v12, v43);
    }

    else
    {

      v22 = *(v6 + 8);
      v22(v12, v5);
    }

    v48 = 0;
    if ([v3 save_])
    {
      return v48;
    }

    else
    {
      v24 = v48;
      v25 = sub_22B35DB9C();

      swift_willThrow();
      v26 = v46;
      v41(v46, v42, v5);
      v27 = v25;
      v28 = sub_22B36050C();
      v29 = sub_22B360D0C();

      if (os_log_type_enabled(v28, v29))
      {
        v43 = v5;
        v30 = v25;
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v48 = v33;
        *v31 = 136315394;
        if (v45)
        {
          if (v45 == 1)
          {
            v34 = 0x4F546574656C6564;
          }

          else
          {
            v34 = 0x6144657461647075;
          }

          if (v45 == 1)
          {
            v35 = 0xEE00736B61655055;
          }

          else
          {
            v35 = 0xEA00000000006174;
          }
        }

        else
        {
          v34 = 0x6550554F54646461;
          v35 = 0xEB00000000736B61;
        }

        v38 = sub_22B1A7B20(v34, v35, &v48);

        *(v31 + 4) = v38;
        *(v31 + 12) = 2112;
        v39 = v30;
        v40 = _swift_stdlib_bridgeErrorToNSError();
        *(v31 + 14) = v40;
        *v32 = v40;
        _os_log_impl(&dword_22B116000, v28, v29, "[CoreDataStack] Error saving changes for %s. %@", v31, 0x16u);
        sub_22B12F10C(v32);
        MEMORY[0x23188F650](v32, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v33);
        MEMORY[0x23188F650](v33, -1, -1);
        MEMORY[0x23188F650](v31, -1, -1);

        v36 = v46;
        v37 = v43;
      }

      else
      {

        v36 = v26;
        v37 = v5;
      }

      v22(v36, v37);
      return swift_willThrow();
    }
  }

  return result;
}

id sub_22B2A5894()
{
  v1 = sub_22B360D5C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_22B35DC4C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v10 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v12 = &v17[-v11];
  result = *(v0 + 56);
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = [result URL];
  if (!result)
  {
    return result;
  }

  v14 = result;
  sub_22B35DC0C();

  (*(v6 + 32))(v12, v8, v5);
  result = *(v0 + 56);
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v15 = [result persistentStoreCoordinator];
  if (v15)
  {
    v16 = v15;
    sub_22B360D4C();
    sub_22B360F2C();

    (*(v2 + 8))(v4, v1);
  }

  return (*(v6 + 8))(v12, v5);
}

void sub_22B2A5AC0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAC38, &unk_22B366B50);
    v2 = sub_22B3612BC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v14 = v13[1];
    v15 = *(*(a1 + 56) + 8 * v12);
    *&v32[0] = *v13;
    *(&v32[0] + 1) = v14;

    v15;
    swift_dynamicCast();
    sub_22B128014(0, &qword_281409270, 0x277D82BB8);
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_22B172454(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_22B172454(v31, v32);
    v16 = sub_22B3610EC();
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v24;
    *(v10 + 16) = v25;
    *(v10 + 32) = v26;
    sub_22B172454(v32, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_22B2A5D90(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAC40, &unk_22B367380);
    v2 = sub_22B3612BC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + 16 * (v12 | (v11 << 6)));
        v15 = *v13;
        v14 = v13[1];

        swift_dynamicCast();
        sub_22B172454(&v22, v24);
        sub_22B172454(v24, v25);
        sub_22B172454(v25, &v23);
        v16 = sub_22B33B28C(v15, v14);
        if (v17)
        {
          v8 = (v2[6] + 16 * v16);
          *v8 = v15;
          v8[1] = v14;
          v9 = v16;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_0(v10);
          sub_22B172454(&v23, v10);
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
          v18 = (v2[6] + 16 * v16);
          *v18 = v15;
          v18[1] = v14;
          sub_22B172454(&v23, (v2[7] + 32 * v16));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_22B2A5FD8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAC38, &unk_22B366B50);
    v2 = sub_22B3612BC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_22B170C58(*(a1 + 56) + 32 * v12, v35);
    *&v34 = v15;
    *(&v34 + 1) = v14;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_22B172454(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_22B172454(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_22B172454(v31, v32);
    v16 = sub_22B3610EC();
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v24;
    *(v10 + 16) = v25;
    *(v10 + 32) = v26;
    sub_22B172454(v32, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_22B2A62A0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

id sub_22B2A632C()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 72);
  }

  else
  {
    v3 = MEMORY[0x23188EEB0]();
    sub_22B2A63AC(v0, &v8);
    objc_autoreleasePoolPop(v3);
    v4 = v8;
    v5 = *(v0 + 72);
    *(v0 + 72) = v8;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

void sub_22B2A63AC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = v3;
  v127 = a2;
  v7 = sub_22B36052C();
  v116 = *(v7 - 8);
  v117 = v7;
  MEMORY[0x28223BE20](v7);
  v115 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA640, &qword_22B366A50);
  MEMORY[0x28223BE20](v9 - 8);
  v121 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v120 = &v115 - v12;
  v132 = sub_22B35DC4C();
  v130 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v14 = &v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v134 = &v115 - v16;
  MEMORY[0x28223BE20](v17);
  v133 = &v115 - v18;
  v19 = sub_22B35EF2C();
  if (!v19)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v2 = v19;
  v4 = *(a1 + 32);
  v131 = a1;
  v20 = sub_22B36081C();
  v21 = sub_22B36081C();
  v22 = [v2 URLForResource:v20 withExtension:v21];

  if (!v22)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  sub_22B35DC0C();

  v23 = objc_allocWithZone(MEMORY[0x277CBE450]);
  v24 = sub_22B35DBDC();
  v2 = [v23 initWithContentsOfURL_];

  if (!v2)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v25 = objc_allocWithZone(MEMORY[0x277CBE4A0]);
  p_aBlock = v2;
  v27 = sub_22B36081C();
  v28 = [v25 initWithName:v27 managedObjectModel:p_aBlock];

  v126 = v28;
  v29 = [v126 persistentStoreDescriptions];
  v4 = sub_22B128014(0, &qword_281409288, 0x277CBE4E0);
  v2 = sub_22B360A5C();

  v30 = v132;
  if (v2 >> 62)
  {
    goto LABEL_45;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22B36109C())
  {
    v32 = v131;
    v124 = p_aBlock;
    v125 = v4;
    if (i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x23188EAC0](0, v2);
        goto LABEL_10;
      }

      if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v33 = *(v2 + 32);
LABEL_10:
        v142 = v33;

        goto LABEL_12;
      }

      __break(1u);
      goto LABEL_48;
    }

    v142 = [objc_allocWithZone(MEMORY[0x277CBE4E0]) init];
LABEL_12:
    v123 = swift_allocBox();
    v35 = v34;
    v4 = "ergy.cloudkitfetch";
    v36 = MEMORY[0x23188EEB0]();
    sub_22B34CE74(0xD000000000000015, 1, v35);
    if (v5)
    {
      objc_autoreleasePoolPop(v36);
      __break(1u);
LABEL_56:
      swift_once();
LABEL_52:
      v100 = v117;
      v101 = __swift_project_value_buffer(v117, qword_28140BD10);
      swift_beginAccess();
      (*(v116 + 16))(v115, v101, v100);
      v102 = v4;
      v103 = sub_22B36050C();
      v104 = sub_22B360D1C();

      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        *&aBlock = v107;
        *v105 = 136315394;
        *(v105 + 4) = sub_22B1A7B20(0xD000000000000013, 0x800000022B36D630, &aBlock);
        *(v105 + 12) = 2112;
        v108 = v4;
        v109 = _swift_stdlib_bridgeErrorToNSError();
        *(v105 + 14) = v109;
        *v106 = v109;
        _os_log_impl(&dword_22B116000, v103, v104, "###%s: Failed to pin background context to the current generation:%@", v105, 0x16u);
        sub_22B12F10C(v106);
        MEMORY[0x23188F650](v106, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v107);
        MEMORY[0x23188F650](v107, -1, -1);
        MEMORY[0x23188F650](v105, -1, -1);
      }

      (*(v116 + 8))(v115, v117);
      v110 = [objc_opt_self() processInfo];
      v111 = [v110 processName];

      v112 = sub_22B36084C();
      v114 = v113;

      LOWORD(aBlock) = 1;
      BYTE2(aBlock) = 9;
      *(&aBlock + 1) = v112;
      v140 = v114;
      static AutoBugCaptureManager.sendIssue(_:)(&aBlock);
      exit(1);
    }

    v122 = 0;
    objc_autoreleasePoolPop(v36);
    v37 = sub_22B36081C();
    v5 = v142;
    [v142 setConfiguration_];

    v38 = v130;
    v118 = *(v130 + 16);
    v119 = v130 + 16;
    v118(v14, v35, v30);
    v39 = v134;
    sub_22B35DBFC();
    v40 = *(v38 + 8);
    v40(v14, v30);
    v41 = sub_22B35DBDC();
    v128 = v40;
    v129 = v38 + 8;
    v40(v39, v30);
    [v5 setURL_];

    sub_22B128014(0, &qword_281409278, 0x277CCABB0);
    v42 = sub_22B360F9C();
    [v5 setOption:v42 forKey:*MEMORY[0x277CBE218]];

    v43 = sub_22B360F8C();
    [v5 setOption:v43 forKey:*MEMORY[0x277CBE280]];

    v44 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v45 = sub_22B36081C();
    [v5 setValue:v44 forPragmaNamed:v45];

    v46 = sub_22B35EE8C();
    *(&v140 + 1) = v46;
    *&v141 = sub_22B2A8600();
    p_aBlock = &aBlock;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
    (*(*(v46 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D07378], v46);
    LOBYTE(v46) = sub_22B35E0CC();
    __swift_destroy_boxed_opaque_existential_0(&aBlock);
    if ((v46 & 1) == 0)
    {
      goto LABEL_42;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA620, &unk_22B3656B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22B364840;
    *(inited + 32) = sub_22B36084C();
    v49 = MEMORY[0x277D839B0];
    *(inited + 40) = v50;
    *(inited + 72) = v49;
    *(inited + 48) = 1;
    *(inited + 80) = sub_22B36084C();
    *(inited + 88) = v51;
    *(inited + 120) = MEMORY[0x277D837D0];
    *(inited + 96) = 0xD00000000000001ELL;
    *(inited + 104) = 0x800000022B36D650;
    *(inited + 128) = sub_22B36084C();
    *(inited + 136) = v52;
    *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA0A0, &qword_22B362BD0);
    *(inited + 144) = &unk_283EF8118;
    *(inited + 176) = sub_22B36084C();
    *(inited + 184) = v53;
    *(inited + 216) = v49;
    *(inited + 192) = 1;
    v2 = sub_22B321AAC(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAD00, &qword_22B3656C0);
    swift_arrayDestroy();
    v54 = 0;
    v4 = (v2 + 64);
    v55 = *(v2 + 64);
    v134 = v2;
    v56 = 1 << *(v2 + 32);
    v57 = -1;
    if (v56 < 64)
    {
      v57 = ~(-1 << v56);
    }

    v58 = v57 & v55;
    v59 = (v56 + 63) >> 6;
    if ((v57 & v55) != 0)
    {
      break;
    }

LABEL_18:
    if (v59 <= (v54 + 1))
    {
      v60 = (v54 + 1);
    }

    else
    {
      v60 = v59;
    }

    v14 = (v60 - 1);
    while (1)
    {
      v30 = (v54 + 1);
      if (__OFADD__(v54, 1))
      {
        break;
      }

      if (v30 >= v59)
      {
        v58 = 0;
        v137 = 0u;
        v138 = 0u;
        v136 = 0u;
        goto LABEL_26;
      }

      v58 = *&v4[8 * v30];
      ++v54;
      if (v58)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_45:
    ;
  }

  while (1)
  {
    v30 = v54;
LABEL_25:
    v61 = __clz(__rbit64(v58));
    v58 &= v58 - 1;
    v62 = v61 | (v30 << 6);
    v63 = (*(v134 + 6) + 16 * v62);
    v64 = *v63;
    v65 = v63[1];
    sub_22B170C58(*(v134 + 7) + 32 * v62, v135);
    *&v136 = v64;
    *(&v136 + 1) = v65;
    sub_22B172454(v135, &v137);

    v14 = v30;
LABEL_26:
    aBlock = v136;
    v140 = v137;
    v141 = v138;
    v5 = *(&v136 + 1);
    if (!*(&v136 + 1))
    {
      break;
    }

    sub_22B172454(&v140, &v136);
    sub_22B128014(0, &qword_281409270, 0x277D82BB8);
    v66 = swift_dynamicCast();
    v2 = *&v135[0];
    p_aBlock = sub_22B36081C();

    if (v66)
    {
      v67 = v2;
    }

    else
    {
      v67 = 0;
    }

    [v142 setOption:v67 forKey:p_aBlock];

    v54 = v14;
    if (!v58)
    {
      goto LABEL_18;
    }
  }

  v68 = [v142 URL];
  if (v68)
  {
    v69 = v120;
    v70 = v68;
    sub_22B35DC0C();

    v71 = 0;
    v32 = v131;
    v72 = v132;
  }

  else
  {
    v71 = 1;
    v32 = v131;
    v72 = v132;
    v69 = v120;
  }

  v73 = v121;
  v74 = v130;
  v75 = *(v130 + 56);
  v75(v69, v71, 1, v72);
  v118(v73, v133, v72);
  v75(v73, 0, 1, v72);
  v76 = [v142 options];
  sub_22B128014(0, &qword_281409270, 0x277D82BB8);
  v77 = sub_22B3606EC();

  sub_22B2A5AC0(v77);
  v131 = v78;

  v134 = [objc_allocWithZone(type metadata accessor for CoreDataServerHandlingPolicy()) init];
  v79 = *(v74 + 48);
  v80 = v79(v69, 1, v72);
  v81 = v69;
  v82 = 0;
  if (v80 != 1)
  {
    v82 = sub_22B35DBDC();
    v128(v81, v72);
  }

  if (v79(v73, 1, v72) == 1)
  {
    v83 = 0;
  }

  else
  {
    v83 = sub_22B35DBDC();
    v128(v73, v72);
  }

  v84 = v134;
  v85 = objc_allocWithZone(MEMORY[0x277CBE510]);
  v86 = sub_22B3606CC();

  v87 = [v85 initForStoreWithURL:v82 usingModelAtURL:v83 options:v86 policy:v84];

  v88 = *(v32 + 64);
  *(v32 + 64) = v87;

  v5 = v142;
LABEL_42:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_22B363650;
  *(v89 + 32) = v5;
  v90 = v5;
  v91 = sub_22B360A3C();

  v92 = v126;
  [v126 setPersistentStoreDescriptions_];

  v93 = swift_allocObject();
  v93[2] = v123;
  v93[3] = v32;
  v93[4] = v92;
  *&v141 = sub_22B2A8658;
  *(&v141 + 1) = v93;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v140 = sub_22B2A62A0;
  *(&v140 + 1) = &block_descriptor_22;
  v94 = _Block_copy(&aBlock);
  v95 = v92;

  [v95 loadPersistentStoresWithCompletionHandler_];
  _Block_release(v94);
  v96 = [v95 newBackgroundContext];

  v97 = *(v32 + 48);
  *(v32 + 48) = v96;
  v98 = v96;

  [v98 setAutomaticallyMergesChangesFromParent_];
  [*(v32 + 48) setMergePolicy_];
  [*(v32 + 48) setUndoManager_];
  [*(v32 + 48) setShouldRefreshAfterSave_];
  [*(v32 + 48) setStalenessInterval_];
  [*(v32 + 48) setShouldDeleteInaccessibleFaults_];
  v2 = *(v32 + 48);
  v99 = v122;
  sub_22B360E7C();
  v4 = v99;
  if (v99)
  {
LABEL_51:

    if (qword_28140A0C8 == -1)
    {
      goto LABEL_52;
    }

    goto LABEL_56;
  }

  v128(v133, v132);

  *v127 = v95;
}

id sub_22B2A73C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_22B36052C();
  v10 = *(v9 - 8);
  v47 = v9;
  v48 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v47 - v14;
  v16 = sub_22B35DC4C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_projectBox();
  if (a2)
  {
    v21 = v20;
    v22 = sub_22B35DB8C();
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v23 = v47;
    v24 = __swift_project_value_buffer(v47, qword_28140BD10);
    swift_beginAccess();
    v25 = v48;
    (*(v48 + 16))(v15, v24, v23);
    v26 = v22;
    v27 = sub_22B36050C();
    v28 = sub_22B360D1C();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138543362;
      *(v29 + 4) = v26;
      *v30 = v26;
      v31 = v26;
      _os_log_impl(&dword_22B116000, v27, v28, "Failed to load persistent stores:%{public}@", v29, 0xCu);
      sub_22B12F10C(v30);
      MEMORY[0x23188F650](v30, -1, -1);
      MEMORY[0x23188F650](v29, -1, -1);
    }

    v32 = (*(v25 + 8))(v15, v23);
    MEMORY[0x23188EEB0](v32);
    sub_22B2A78DC(v21);
  }

  v33 = [a5 persistentStoreCoordinator];
  result = [a1 URL];
  if (result)
  {
    v35 = result;
    sub_22B35DC0C();

    v36 = sub_22B35DBDC();
    (*(v17 + 8))(v19, v16);
    v37 = [v33 persistentStoreForURL_];

    v38 = *(a4 + 56);
    *(a4 + 56) = v37;

    v39 = sub_22B35EE8C();
    v49[3] = v39;
    v49[4] = sub_22B2A8600();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v49);
    (*(*(v39 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D07378], v39);
    LOBYTE(v39) = sub_22B35E0CC();
    result = __swift_destroy_boxed_opaque_existential_0(v49);
    if (v39)
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v41 = v47;
      v42 = __swift_project_value_buffer(v47, qword_28140BD10);
      swift_beginAccess();
      v43 = v48;
      (*(v48 + 16))(v12, v42, v41);
      v44 = sub_22B36050C();
      v45 = sub_22B360D2C();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_22B116000, v44, v45, "[NSXPCStore] Starting XPC Store server", v46, 2u);
        MEMORY[0x23188F650](v46, -1, -1);
      }

      (*(v43 + 8))(v12, v41);
      return [*(a4 + 64) startListening];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22B2A78DC(uint64_t a1)
{
  v39[10] = *MEMORY[0x277D85DE8];
  v2 = sub_22B36052C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  MEMORY[0x28223BE20](v6);
  v8 = v39 - v7 + 24;
  v9 = sub_22B35DC4C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  v13 = [objc_opt_self() defaultManager];
  swift_beginAccess();
  (*(v10 + 16))(v12, a1, v9);
  v14 = sub_22B35DBDC();
  (*(v10 + 8))(v12, v9);
  v39[0] = 0;
  LODWORD(v9) = [v13 removeItemAtURL:v14 error:v39];

  if (v9)
  {
    v15 = qword_28140A0C8;
    v16 = v39[0];
    if (v15 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v2, qword_28140BD10);
    swift_beginAccess();
    (*(v3 + 16))(v8, v17, v2);
    v18 = sub_22B36050C();
    v19 = sub_22B360D1C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_22B116000, v18, v19, "Deleted the persistent store in attempt to recover", v20, 2u);
      MEMORY[0x23188F650](v20, -1, -1);
    }

    (*(v3 + 8))(v8, v2);
    v21 = [objc_opt_self() processInfo];
    v22 = [v21 processName];
  }

  else
  {
    v23 = v39[0];
    v24 = sub_22B35DB9C();

    swift_willThrow();
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v2, qword_28140BD10);
    swift_beginAccess();
    (*(v3 + 16))(v5, v25, v2);
    v26 = v24;
    v27 = sub_22B36050C();
    v28 = sub_22B360D1C();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v39[0] = v30;
      *v29 = 136315138;
      swift_getErrorValue();
      v31 = sub_22B3613EC();
      v33 = sub_22B1A7B20(v31, v32, v39);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_22B116000, v27, v28, "Could not delete persistent store: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x23188F650](v30, -1, -1);
      MEMORY[0x23188F650](v29, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v21 = [objc_opt_self() processInfo];
    v22 = [v21 processName];
  }

  v34 = v22;

  v35 = sub_22B36084C();
  v37 = v36;

  LOWORD(v39[0]) = 513;
  BYTE2(v39[0]) = 4;
  v39[1] = v35;
  v39[2] = v37;
  v39[3] = 0;
  static AutoBugCaptureManager.sendIssue(_:)(v39);
  exit(1);
}

id sub_22B2A7E1C(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 48);
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 currentQueryGenerationToken];
  v8[0] = 0;
  v5 = [v3 setQueryGenerationFromToken:v4 error:v8];

  if (v5)
  {
    return v8[0];
  }

  v7 = v8[0];
  sub_22B35DB9C();

  return swift_willThrow();
}

void *sub_22B2A7F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = 0;
  v4[8] = 0;
  v4[9] = 0;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  v4[6] = [objc_allocWithZone(MEMORY[0x277CBE440]) initWithConcurrencyType_];

  return v4;
}

uint64_t sub_22B2A7F5C()
{

  return swift_deallocClassInstance();
}

id sub_22B2A7FE0(uint64_t a1)
{
  v62 = *MEMORY[0x277D85DE8];
  v2 = sub_22B36052C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v59 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v58 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v58 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v58 - v12;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v2, qword_28140BD10);
  swift_beginAccess();
  v60 = *(v3 + 16);
  v60(v13, v14, v2);
  v15 = sub_22B36050C();
  v16 = sub_22B360D0C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v58 = v7;
    v18 = v10;
    v19 = v2;
    v20 = v3;
    v21 = a1;
    v22 = v17;
    *v17 = 0;
    _os_log_impl(&dword_22B116000, v15, v16, "Preparing to save changes to persistent store", v17, 2u);
    v23 = v22;
    a1 = v21;
    v3 = v20;
    v2 = v19;
    v10 = v18;
    v7 = v58;
    MEMORY[0x23188F650](v23, -1, -1);
  }

  v26 = *(v3 + 8);
  v24 = (v3 + 8);
  v25 = v26;
  v26(v13, v2);
  if ([*(a1 + 48) hasChanges])
  {
    v27 = *(a1 + 48);
    v61[0] = 0;
    v28 = [v27 save_];
    v29 = v61[0];
    if (v28)
    {
      v60(v10, v14, v2);
      v30 = v29;
      v31 = sub_22B36050C();
      v32 = sub_22B360D0C();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = v10;
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_22B116000, v31, v32, "Save complete", v34, 2u);
        MEMORY[0x23188F650](v34, -1, -1);

        v35 = v33;
      }

      else
      {

        v35 = v10;
      }

      v25(v35, v2);
    }

    else
    {
      v58 = v24;
      v40 = v61[0];
      v41 = sub_22B35DB9C();

      swift_willThrow();
      v42 = v59;
      v60(v59, v14, v2);
      v43 = v41;
      v44 = sub_22B36050C();
      v45 = sub_22B360D1C();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v61[0] = v47;
        *v46 = 136446210;
        swift_getErrorValue();
        v48 = sub_22B3613EC();
        v50 = a1;
        v51 = sub_22B1A7B20(v48, v49, v61);

        *(v46 + 4) = v51;
        a1 = v50;
        _os_log_impl(&dword_22B116000, v44, v45, "Error saving to persistent store: %{public}s", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v47);
        MEMORY[0x23188F650](v47, -1, -1);
        MEMORY[0x23188F650](v46, -1, -1);

        v52 = v59;
      }

      else
      {

        v52 = v42;
      }

      v25(v52, v2);
      v53 = [objc_opt_self() processInfo];
      v54 = [v53 processName];

      v55 = sub_22B36084C();
      v57 = v56;

      LOWORD(v61[0]) = 1;
      BYTE2(v61[0]) = 3;
      v61[1] = v55;
      v61[2] = v57;
      v61[3] = 0;
      static AutoBugCaptureManager.sendIssue(_:)(v61);
    }

    return [*(a1 + 48) setTransactionAuthor_];
  }

  else
  {
    v60(v7, v14, v2);
    v36 = sub_22B36050C();
    v37 = sub_22B360D0C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_22B116000, v36, v37, "Context doesn't have any changes, skip saving", v38, 2u);
      MEMORY[0x23188F650](v38, -1, -1);
    }

    return (v25)(v7, v2);
  }
}

unint64_t sub_22B2A8600()
{
  result = qword_281409378;
  if (!qword_281409378)
  {
    sub_22B35EE8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281409378);
  }

  return result;
}

uint64_t sub_22B2A8680()
{
  if (qword_281409EA0 != -1)
  {
    swift_once();
  }

  v0 = byte_28140BC60;
  type metadata accessor for CoreLocationManager();
  v1 = swift_allocObject();
  result = sub_22B2A8C2C((v0 & 1) == 0);
  qword_28140BD00 = v1;
  return result;
}

void sub_22B2A86FC()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_22B36081C();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    v3 = sub_22B36081C();
    v4 = [v2 BOOLForKey_];
  }

  else
  {
    v4 = 0;
  }

  byte_28140BC60 = v4;
}

id sub_22B2A87C4()
{
  v1 = v0;
  v2 = sub_22B36052C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v9 = &v27 - v8;
  if (*(v1 + 128) == 1)
  {
    v10 = *(v1 + 112);
    if (!v10)
    {
      goto LABEL_6;
    }

    v11 = [v10 location];
    if (!v11)
    {
      goto LABEL_6;
    }

    v12 = v11;
    if (sub_22B35EF6C())
    {

LABEL_6:
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v13 = __swift_project_value_buffer(v2, qword_28140BD10);
      swift_beginAccess();
      (*(v3 + 16))(v9, v13, v2);

      v14 = sub_22B36050C();
      v15 = sub_22B360D1C();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v27 = v17;
        *v16 = 136315394;
        *(v16 + 4) = sub_22B1A7B20(0x4C746E6572727563, 0xEF6E6F697461636FLL, &v27);
        *(v16 + 12) = 2080;
        if (*(v1 + 112))
        {
          v18 = 0x64696C6176;
        }

        else
        {
          v18 = 0x3E4C494E3CLL;
        }

        v19 = sub_22B1A7B20(v18, 0xE500000000000000, &v27);

        *(v16 + 14) = v19;
        _os_log_impl(&dword_22B116000, v14, v15, "%s %s Location Manager has no location", v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23188F650](v17, -1, -1);
        MEMORY[0x23188F650](v16, -1, -1);
      }

      (*(v3 + 8))(v9, v2);
      return sub_22B35EF3C();
    }

    return v12;
  }

  else
  {
    if ((sub_22B35EEBC() & 1) == 0)
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v22 = __swift_project_value_buffer(v2, qword_28140BD10);
      swift_beginAccess();
      (*(v3 + 16))(v5, v22, v2);
      v23 = sub_22B36050C();
      v24 = sub_22B360D1C();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v27 = v26;
        *v25 = 136315138;
        *(v25 + 4) = sub_22B1A7B20(0x4C746E6572727563, 0xEF6E6F697461636FLL, &v27);
        _os_log_impl(&dword_22B116000, v23, v24, "%s is only available on Internal builds", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v26);
        MEMORY[0x23188F650](v26, -1, -1);
        MEMORY[0x23188F650](v25, -1, -1);
      }

      (*(v3 + 8))(v5, v2);
      return sub_22B35EF3C();
    }

    v20 = *(v1 + 136);

    return v20;
  }
}

uint64_t sub_22B2A8C2C(char a1)
{
  v2 = v1;
  v4 = sub_22B36052C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  *(v2 + 112) = 0;
  *(v2 + 120) = [objc_allocWithZone(type metadata accessor for LocationManagerDelegate()) init];
  *(v2 + 128) = 257;
  *(v2 + 136) = sub_22B35EF3C();
  *(v2 + 128) = a1;
  if ((a1 & 1) == 0)
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v8 = __swift_project_value_buffer(v4, qword_28140BD10);
    swift_beginAccess();
    (*(v5 + 16))(v7, v8, v4);
    v9 = sub_22B36050C();
    v10 = sub_22B360CFC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_22B116000, v9, v10, "CoreLocationManager set to use mock location data", v11, 2u);
      MEMORY[0x23188F650](v11, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }

  return v2;
}

id LocationManagerDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_22B2A8E54()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22B2A8E9C(__n128 a1)
{
  v2 = v1;
  v61 = sub_22B360D8C();
  v58 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v57 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_22B360EFC();
  MEMORY[0x28223BE20](v55);
  v56 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22B36062C();
  MEMORY[0x28223BE20](v5 - 8);
  v54 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22B36052C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v53 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v63 = &v50 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v50 - v13;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v7, qword_28140BD10);
  swift_beginAccess();
  v16 = *(v8 + 16);
  v62 = v15;
  v59 = v16;
  v60 = v8 + 16;
  v16(v14, v15, v7);

  v17 = sub_22B36050C();
  v18 = sub_22B360CFC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v64 = v20;
    *v19 = 136315394;
    *(v19 + 4) = sub_22B1A7B20(0xD000000000000016, 0x800000022B36D7E0, &v64);
    *(v19 + 12) = 2080;
    if (*(v2 + 128))
    {
      v21 = 0x6E6F697461636F6CLL;
    }

    else
    {
      v21 = 1162559814;
    }

    v22 = v2;
    if (*(v2 + 128))
    {
      v23 = 0xE800000000000000;
    }

    else
    {
      v23 = 0xE400000000000000;
    }

    v24 = v7;
    v25 = v8;
    v26 = sub_22B1A7B20(v21, v23, &v64);
    v2 = v22;

    *(v19 + 14) = v26;
    v8 = v25;
    v7 = v24;
    _os_log_impl(&dword_22B116000, v17, v18, "%s Starting %s updates", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v20, -1, -1);
    MEMORY[0x23188F650](v19, -1, -1);

    v27 = *(v8 + 8);
    v27(v14, v24);
  }

  else
  {

    v27 = *(v8 + 8);
    v27(v14, v7);
  }

  if (*(v2 + 128) != 1)
  {
    return sub_22B2A96E8();
  }

  v51 = v27;
  v52 = v8;
  v50 = "mockCurrentLocations";
  v28 = *(v2 + 120);
  sub_22B128014(0, &qword_281409290, 0x277D85C90);
  v29 = v2;
  v30 = v28;
  sub_22B36060C();
  v64 = MEMORY[0x277D84F90];
  sub_22B2AC1AC(&qword_281409298, 255, MEMORY[0x277D852D8], MEMORY[0x277D852E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BACB0, &unk_22B366C20);
  sub_22B2AC148();
  sub_22B36104C();
  (*(v58 + 104))(v57, *MEMORY[0x277D85268], v61);
  v31 = sub_22B360F0C();
  v32 = objc_allocWithZone(MEMORY[0x277CBFC10]);
  v33 = sub_22B36081C();
  v34 = [v32 initWithEffectiveBundlePath:v33 delegate:v30 onQueue:v31];

  v35 = *(v29 + 112);
  *(v29 + 112) = v34;

  v36 = objc_opt_self();
  v37 = sub_22B36081C();
  [v36 setAuthorizationStatusByType:3 forBundlePath:v37];

  v38 = *(v29 + 112);
  if (v38)
  {
    v39 = v38;
    [v39 setDistanceFilter_];
    [v39 setDesiredAccuracy_];
    [v39 startUpdatingLocation];
    v59(v63, v62, v7);
    v40 = sub_22B36050C();
    v41 = sub_22B360CFC();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v64 = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_22B1A7B20(0xD000000000000016, 0x800000022B36D7E0, &v64);
      _os_log_impl(&dword_22B116000, v40, v41, "%s Started location updates for daemon", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x23188F650](v43, -1, -1);
      MEMORY[0x23188F650](v42, -1, -1);
    }

    v44 = v63;
  }

  else
  {
    v59(v53, v62, v7);
    v46 = sub_22B36050C();
    v47 = sub_22B360D1C();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v64 = v49;
      *v48 = 136315138;
      *(v48 + 4) = sub_22B1A7B20(0xD000000000000016, 0x800000022B36D7E0, &v64);
      _os_log_impl(&dword_22B116000, v46, v47, "%s Could not create Location manager", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x23188F650](v49, -1, -1);
      MEMORY[0x23188F650](v48, -1, -1);
    }

    v44 = v53;
  }

  return v51(v44, v7);
}

uint64_t sub_22B2A96E8()
{
  v1 = sub_22B36052C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18 - v6;
  if (sub_22B35EEBC())
  {
    v8 = sub_22B360B6C();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v10 = sub_22B2AC1AC(&qword_27D8BACB8, v9, type metadata accessor for CoreLocationManager, &unk_22B366BF8);
    v11 = swift_allocObject();
    v11[2] = v0;
    v11[3] = v10;
    v11[4] = v0;
    swift_retain_n();
    sub_22B123DF0(0, 0, v7, &unk_22B366C38, v11);
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v1, qword_28140BD10);
    swift_beginAccess();
    (*(v2 + 16))(v4, v13, v1);
    v14 = sub_22B36050C();
    v15 = sub_22B360D1C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_22B1A7B20(0xD000000000000019, 0x800000022B36D800, &v18);
      _os_log_impl(&dword_22B116000, v14, v15, "%s is only available on Internal builds", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x23188F650](v17, -1, -1);
      MEMORY[0x23188F650](v16, -1, -1);
    }

    return (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_22B2A9A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v6 = sub_22B36052C();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2A9B00, a4, 0);
}

uint64_t sub_22B2A9B00()
{
  v27 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[6];
  v3 = v0[7];
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  v0[12] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[13] = v5;
  v0[14] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_22B36050C();
  v7 = sub_22B360CFC();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[11];
  v10 = v0[6];
  v11 = v0[7];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_22B1A7B20(0xD000000000000019, 0x800000022B36D800, &v26);
    _os_log_impl(&dword_22B116000, v6, v7, "%s faking a location update every 5 seconds", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x23188F650](v13, -1, -1);
    MEMORY[0x23188F650](v12, -1, -1);
  }

  v14 = *(v11 + 8);
  v14(v9, v10);
  v0[15] = v14;
  if (*(v0[5] + 129) == 1)
  {
    v0[16] = -1;
    v15 = swift_task_alloc();
    v0[17] = v15;
    *v15 = v0;
    v15[1] = sub_22B2A9EAC;

    return MEMORY[0x282200480](5000000000);
  }

  else
  {
    (v0[13])(v0[9], v0[12], v0[6]);
    v16 = sub_22B36050C();
    v17 = sub_22B360CFC();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[15];
    v20 = v0[9];
    v21 = v0[6];
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v26 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_22B1A7B20(0xD000000000000019, 0x800000022B36D800, &v26);
      _os_log_impl(&dword_22B116000, v16, v17, "%s no longer faking location updates", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x23188F650](v23, -1, -1);
      MEMORY[0x23188F650](v22, -1, -1);
    }

    v19(v20, v21);

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_22B2A9EAC()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_22B2AA5E8;
  }

  else
  {
    v4 = sub_22B2A9FD8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

void sub_22B2A9FD8()
{
  v27 = v0;
  v1 = v0[16];
  v2 = v1 + 1;
  v0[19] = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = sub_22B35EF4C();
  v4 = v2 % 5;
  if (v2 % 5 < 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v4 >= *(v3 + 16))
  {
LABEL_12:
    __break(1u);
    return;
  }

  v5 = v0[13];
  v6 = v0[12];
  v7 = v0[10];
  v9 = v0[5];
  v8 = v0[6];
  v10 = *(v3 + 24 * v4 + 48);

  v11 = *(v9 + 136);
  *(v9 + 136) = v10;

  v5(v7, v6, v8);

  v12 = sub_22B36050C();
  v13 = sub_22B360CFC();

  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[15];
  v16 = v0[10];
  v17 = v0[6];
  if (v14)
  {
    v18 = v0[5];
    v19 = swift_slowAlloc();
    v25 = v15;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v26 = v21;
    *v19 = 136315394;
    *(v19 + 4) = sub_22B1A7B20(0xD000000000000019, 0x800000022B36D800, &v26);
    *(v19 + 12) = 2112;
    v22 = *(v18 + 136);
    *(v19 + 14) = v22;
    *v20 = v22;
    v23 = v22;
    _os_log_impl(&dword_22B116000, v12, v13, "%s New location = %@", v19, 0x16u);
    sub_22B123284(v20, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v20, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x23188F650](v21, -1, -1);
    MEMORY[0x23188F650](v19, -1, -1);

    v25(v16, v17);
  }

  else
  {

    v15(v16, v17);
  }

  v24 = swift_task_alloc();
  v0[20] = v24;
  *v24 = v0;
  v24[1] = sub_22B2AA29C;

  sub_22B2AA954();
}

uint64_t sub_22B2AA29C()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x2822009F8](sub_22B2AA3AC, v1, 0);
}

uint64_t sub_22B2AA3AC()
{
  v13 = v0;
  if (*(*(v0 + 40) + 129) == 1)
  {
    *(v0 + 128) = *(v0 + 152);
    v1 = swift_task_alloc();
    *(v0 + 136) = v1;
    *v1 = v0;
    v1[1] = sub_22B2A9EAC;

    return MEMORY[0x282200480](5000000000);
  }

  else
  {
    (*(v0 + 104))(*(v0 + 72), *(v0 + 96), *(v0 + 48));
    v2 = sub_22B36050C();
    v3 = sub_22B360CFC();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 120);
    v6 = *(v0 + 72);
    v7 = *(v0 + 48);
    if (v4)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v12 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_22B1A7B20(0xD000000000000019, 0x800000022B36D800, &v12);
      _os_log_impl(&dword_22B116000, v2, v3, "%s no longer faking location updates", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x23188F650](v9, -1, -1);
      MEMORY[0x23188F650](v8, -1, -1);
    }

    v5(v6, v7);

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_22B2AA5E8()
{
  v22 = v0;
  (*(v0 + 104))(*(v0 + 64), *(v0 + 96), *(v0 + 48));
  v1 = sub_22B36050C();
  v2 = sub_22B360CFC();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 144);
  v5 = *(v0 + 120);
  v6 = *(v0 + 64);
  v7 = *(v0 + 48);
  if (v3)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_22B1A7B20(0xD000000000000019, 0x800000022B36D800, &v21);
    _os_log_impl(&dword_22B116000, v1, v2, "%s Could not loop", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23188F650](v9, -1, -1);
    MEMORY[0x23188F650](v8, -1, -1);

    v5(v6, v7);
  }

  else
  {

    v5(v6, v7);
  }

  if (*(*(v0 + 40) + 129))
  {
    v10 = swift_task_alloc();
    *(v0 + 136) = v10;
    *v10 = v0;
    v10[1] = sub_22B2A9EAC;

    return MEMORY[0x282200480](5000000000);
  }

  else
  {
    (*(v0 + 104))(*(v0 + 72), *(v0 + 96), *(v0 + 48));
    v11 = sub_22B36050C();
    v12 = sub_22B360CFC();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 120);
    v15 = *(v0 + 72);
    v16 = *(v0 + 48);
    if (v13)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v21 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_22B1A7B20(0xD000000000000019, 0x800000022B36D800, &v21);
      _os_log_impl(&dword_22B116000, v11, v12, "%s no longer faking location updates", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x23188F650](v18, -1, -1);
      MEMORY[0x23188F650](v17, -1, -1);
    }

    v14(v15, v16);

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_22B2AA954()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v1[5] = swift_task_alloc();
  v2 = sub_22B36052C();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2AAA48, v0, 0);
}

uint64_t sub_22B2AAA48()
{
  v19 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_22B36050C();
  v6 = sub_22B360CFC();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[7];
  v8 = v0[8];
  v10 = v0[6];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_22B1A7B20(0xD00000000000001DLL, 0x800000022B36D820, &v18);
    _os_log_impl(&dword_22B116000, v5, v6, "%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23188F650](v12, -1, -1);
    MEMORY[0x23188F650](v11, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  v13 = v0[5];
  v14 = sub_22B360B6C();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  sub_22B123DF0(0, 0, v13, &unk_22B366C58, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_22B2AACB0()
{
  v1 = sub_22B36052C();
  v0[20] = v1;
  v0[21] = *(v1 - 8);
  v0[22] = swift_task_alloc();
  v0[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2AAD78, 0, 0);
}

uint64_t sub_22B2AAD78()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[21];
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  swift_beginAccess();
  v26 = *(v3 + 16);
  v26(v1, v4, v2);
  v5 = sub_22B36050C();
  v6 = sub_22B360CFC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22B116000, v5, v6, "Updating Client on Current Location Update", v7, 2u);
    MEMORY[0x23188F650](v7, -1, -1);
  }

  v8 = v0[23];
  v9 = v0[20];
  v10 = v0[21];

  v11 = *(v10 + 8);
  v11(v8, v9);
  if (qword_28140B470 != -1)
  {
    swift_once();
  }

  v12 = v0[22];
  v13 = v0[20];
  v14 = *(qword_28140BDD8 + 112);
  sub_22B35EF0C();
  v15 = sub_22B36081C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA960, &qword_22B365F00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B3634B0;
  v0[18] = sub_22B35EECC();
  v0[19] = v17;
  sub_22B36110C();
  *(inited + 96) = MEMORY[0x277D839B0];
  *(inited + 72) = 1;
  sub_22B321BDC(inited);
  swift_setDeallocating();
  sub_22B123284(inited + 32, &unk_27D8BACC0, &unk_22B3662C0);
  v18 = sub_22B3606CC();

  [v14 postNotificationName:v15 object:0 userInfo:v18 deliverImmediately:1];

  v26(v12, v4, v13);
  v19 = sub_22B36050C();
  v20 = sub_22B360CFC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_22B116000, v19, v20, "Updated Client on Current Location Update", v21, 2u);
    MEMORY[0x23188F650](v21, -1, -1);
  }

  v22 = v0[22];
  v23 = v0[20];

  v11(v22, v23);

  v24 = v0[1];

  return v24();
}

uint64_t sub_22B2AB164()
{
  v1 = sub_22B36052C();
  v0[5] = v1;
  v0[6] = *(v1 - 8);
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2AB22C, 0, 0);
}

uint64_t sub_22B2AB22C()
{
  v18 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  v0[9] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[10] = v5;
  v0[11] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_22B36050C();
  v7 = sub_22B360CFC();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[8];
  v10 = v0[5];
  v11 = v0[6];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_22B1A7B20(0xD000000000000026, 0x800000022B36D840, &v17);
    _os_log_impl(&dword_22B116000, v6, v7, "%s posting notifications...", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x23188F650](v13, -1, -1);
    MEMORY[0x23188F650](v12, -1, -1);
  }

  v14 = *(v11 + 8);
  v14(v9, v10);
  v0[12] = v14;
  if (qword_281409E98 != -1)
  {
    swift_once();
  }

  v15 = swift_task_alloc();
  v0[13] = v15;
  *v15 = v0;
  v15[1] = sub_22B2AB478;

  return sub_22B2AA954();
}

uint64_t sub_22B2AB478()
{

  return MEMORY[0x2822009F8](sub_22B2AB574, 0, 0);
}

uint64_t sub_22B2AB574()
{
  v12 = v0;
  (*(v0 + 80))(*(v0 + 56), *(v0 + 72), *(v0 + 40));
  v1 = sub_22B36050C();
  v2 = sub_22B360CFC();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 96);
  v5 = *(v0 + 56);
  v6 = *(v0 + 40);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_22B1A7B20(0xD000000000000026, 0x800000022B36D840, &v11);
    _os_log_impl(&dword_22B116000, v1, v2, "%s reloading widgets...", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x23188F650](v8, -1, -1);
    MEMORY[0x23188F650](v7, -1, -1);
  }

  v4(v5, v6);
  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  *v9 = v0;
  v9[1] = sub_22B2AB758;

  return sub_22B3512F8(0x6E6F697461636F4CLL, 0xEF65746164705520);
}

uint64_t sub_22B2AB758()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id LocationManagerDelegate.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LocationManagerDelegate();
  return objc_msgSendSuper2(&v3, sel_init);
}

id LocationManagerDelegate.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LocationManagerDelegate();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_22B2AB9B8(void *a1)
{
  v2 = sub_22B36052C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = a1;
  v8 = sub_22B36050C();
  v9 = sub_22B360CFC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_22B1A7B20(0xD000000000000029, 0x800000022B36D870, &v13);
    *(v10 + 12) = 1024;
    *(v10 + 14) = [v7 authorizationStatus];

    _os_log_impl(&dword_22B116000, v8, v9, "%s %d", v10, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x23188F650](v11, -1, -1);
    MEMORY[0x23188F650](v10, -1, -1);
  }

  else
  {
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_22B2ABBF4(uint64_t a1)
{
  v32 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v1 - 8);
  v33 = &v31 - v2;
  v3 = sub_22B36052C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v34 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - v7;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  v10 = *(v4 + 16);
  v10(v8, v9, v3);
  v11 = sub_22B36050C();
  v12 = sub_22B360CFC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v31 = v4;
    v15 = v14;
    v35 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_22B1A7B20(0xD000000000000026, 0x800000022B36D840, &v35);
    _os_log_impl(&dword_22B116000, v11, v12, "%s...", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    v16 = v15;
    v4 = v31;
    MEMORY[0x23188F650](v16, -1, -1);
    MEMORY[0x23188F650](v13, -1, -1);
  }

  v17 = *(v4 + 8);
  v17(v8, v3);
  v10(v34, v9, v3);
  v18 = v32;

  v19 = sub_22B36050C();
  v20 = sub_22B360D0C();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v35 = v22;
    *v21 = 136315394;
    *(v21 + 4) = sub_22B1A7B20(0xD000000000000026, 0x800000022B36D840, &v35);
    *(v21 + 12) = 2080;
    v23 = sub_22B128014(0, &qword_2814085C8, 0x277CE41F8);
    v24 = MEMORY[0x23188E390](v18, v23);
    v26 = sub_22B1A7B20(v24, v25, &v35);

    *(v21 + 14) = v26;
    _os_log_impl(&dword_22B116000, v19, v20, "\t...%s%s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v22, -1, -1);
    MEMORY[0x23188F650](v21, -1, -1);
  }

  v17(v34, v3);
  v27 = sub_22B360B6C();
  v28 = v33;
  (*(*(v27 - 8) + 56))(v33, 1, 1, v27);
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  sub_22B123DF0(0, 0, v28, &unk_22B366C68, v29);
}

unint64_t sub_22B2AC148()
{
  result = qword_281409338;
  if (!qword_281409338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8BACB0, &unk_22B366C20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281409338);
  }

  return result;
}

uint64_t sub_22B2AC1AC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22B2AC1F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22B119A60;

  return sub_22B2A9A18(a1, v4, v5, v6);
}

uint64_t sub_22B2AC2A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B124D88;

  return sub_22B2AACB0();
}

uint64_t sub_22B2AC354()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B124D88;

  return sub_22B2AB164();
}

double sub_22B2AC400@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_22B33B28C(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_22B170C58(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

void sub_22B2AC464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_22B172454(a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v3;
    sub_22B33F298(v8, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v7;
  }

  else
  {
    sub_22B123284(a1, &unk_27D8BA950, &qword_22B364940);
    sub_22B2E641C(a2, a3, v8);

    sub_22B123284(v8, &unk_27D8BA950, &qword_22B364940);
  }
}

uint64_t sub_22B2AC534()
{
  type metadata accessor for UtilityDropbox();
  swift_allocObject();
  result = sub_22B2E6D74(0, 0);
  qword_28140BD08 = result;
  return result;
}

uint64_t sub_22B2AC578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 136) = v18;
  *(v9 + 144) = v8;
  *(v9 + 120) = v17;
  *(v9 + 104) = v16;
  *(v9 + 88) = a7;
  *(v9 + 96) = a8;
  *(v9 + 72) = a5;
  *(v9 + 80) = a6;
  *(v9 + 56) = a3;
  *(v9 + 64) = a4;
  *(v9 + 40) = a1;
  *(v9 + 48) = a2;
  v10 = sub_22B36052C();
  *(v9 + 152) = v10;
  *(v9 + 160) = *(v10 - 8);
  *(v9 + 168) = swift_task_alloc();
  *(v9 + 176) = swift_task_alloc();
  *(v9 + 184) = swift_task_alloc();
  *(v9 + 192) = swift_task_alloc();
  *(v9 + 200) = swift_task_alloc();
  *(v9 + 208) = swift_task_alloc();
  v11 = sub_22B35FF9C();
  *(v9 + 216) = v11;
  *(v9 + 224) = *(v11 - 8);
  *(v9 + 232) = swift_task_alloc();
  *(v9 + 240) = swift_task_alloc();
  v12 = sub_22B36008C();
  *(v9 + 248) = v12;
  *(v9 + 256) = *(v12 - 8);
  *(v9 + 264) = swift_task_alloc();
  *(v9 + 272) = swift_task_alloc();
  v13 = sub_22B35DE9C();
  *(v9 + 280) = v13;
  *(v9 + 288) = *(v13 - 8);
  *(v9 + 296) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2AC7C4, v8, 0);
}

uint64_t sub_22B2AC7C4(uint64_t a1)
{
  v2 = *(v1 + 240);
  v3 = *(v1 + 224);
  sub_22B35DE6C();
  *(v1 + 304) = sub_22B3602DC();
  *(v1 + 664) = *MEMORY[0x277D18108];
  v4 = *(v3 + 104);
  *(v1 + 312) = v4;
  *(v1 + 320) = (v3 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v4(v2);
  v5 = swift_task_alloc();
  *(v1 + 328) = v5;
  *v5 = v1;
  v5[1] = sub_22B2AC8C8;
  v6 = *(v1 + 272);
  v7 = *(v1 + 240);
  v8 = *(v1 + 72);
  v9 = *(v1 + 80);
  v10 = *(v1 + 56);
  v11 = *(v1 + 64);
  v12 = *(v1 + 40);
  v13 = *(v1 + 48);

  return MEMORY[0x282172608](v6, v12, v13, v10, v7, v11, v8, v9);
}

uint64_t sub_22B2AC8C8()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *(*v1 + 224);
  v5 = *(*v1 + 216);
  v2[42] = v0;

  v6 = *(v4 + 8);
  v2[43] = v6;
  v2[44] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  v7 = v2[18];
  if (v0)
  {
    v8 = sub_22B2AFA6C;
  }

  else
  {
    v8 = sub_22B2ACA64;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_22B2ACA64()
{
  v1 = sub_22B36007C();
  if (v1 >> 62)
  {
    v2 = sub_22B36109C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v0[45] = v2;

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v3 = v0[26];
  v4 = v0[19];
  v5 = v0[20];
  v6 = __swift_project_value_buffer(v4, qword_28140BD10);
  v0[46] = v6;
  swift_beginAccess();
  v7 = *(v5 + 16);
  v0[47] = v7;
  v0[48] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v3, v6, v4);
  v8 = sub_22B36050C();
  v9 = sub_22B360D2C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134349056;
    *(v10 + 4) = v2;
    _os_log_impl(&dword_22B116000, v8, v9, "[Dropbox] Received %{public}ld records for UsagePoint in this session", v10, 0xCu);
    MEMORY[0x23188F650](v10, -1, -1);
  }

  v11 = v0[26];
  v12 = v0[19];
  v13 = v0[20];

  v14 = *(v13 + 8);
  v0[49] = v14;
  v0[50] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v11, v12);
  v15 = sub_22B36007C();
  if (v15 >> 62)
  {
    v18 = sub_22B36109C();

    if (v18)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v16)
    {
LABEL_9:
      if (qword_2814096B8 != -1)
      {
        swift_once();
      }

      v17 = qword_28140BCE8;
      v0[53] = qword_28140BCE8;
      v0[54] = sub_22B36007C();

      return MEMORY[0x2822009F8](sub_22B2ACFE0, v17, 0);
    }
  }

  if (qword_28140B470 != -1)
  {
    swift_once();
  }

  v19 = swift_task_alloc();
  v0[51] = v19;
  *v19 = v0;
  v19[1] = sub_22B2ACD8C;
  v20 = v0[37];
  v22 = v0[11];
  v21 = v0[12];

  return sub_22B177E54(v22, v21, 0, 0xC000000000000000, v20);
}

uint64_t sub_22B2ACD8C()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  v3 = *(v2 + 144);
  if (v0)
  {
    v4 = sub_22B2AFB74;
  }

  else
  {
    v4 = sub_22B2ACEB8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22B2ACEB8()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  (*(v0[32] + 8))(v0[34], v0[31]);
  (*(v2 + 8))(v1, v3);
  v6 = v0[45];

  v4 = v0[1];

  return v4(v6);
}

uint64_t sub_22B2ACFE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[54];
  if (v4 >> 62)
  {
    v5 = sub_22B36109C();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3[55] = v5;
  v6 = v3[54];
  if (!v5)
  {
    v16 = v3[18];

    v5 = sub_22B2AD134;
    v6 = v16;
    a3 = 0;

    return MEMORY[0x2822009F8](v5, v6, a3);
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x23188EAC0](0);
    goto LABEL_7;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return MEMORY[0x2822009F8](v5, v6, a3);
  }

  v7 = *(v6 + 32);
LABEL_7:
  v8 = v7;
  v3[56] = v7;
  v3[57] = 1;
  v9 = swift_task_alloc();
  v3[58] = v9;
  *v9 = v3;
  v9[1] = sub_22B2AD820;
  v10 = v3[16];
  v11 = v3[17];
  v12 = v3[14];
  v13 = v3[15];
  v14 = v3[13];

  return sub_22B3297C0(v8, v14, v12, v13, v10, v11);
}

uint64_t sub_22B2AD134()
{
  v74 = v0;
  if (sub_22B36005C())
  {
    v1 = sub_22B36006C();
    v3 = v2 >> 62;
    if ((v2 >> 62) > 1)
    {
      if (v3 == 2)
      {
        v10 = *(v1 + 16);
        v11 = *(v1 + 24);
        sub_22B12F174(v1, v2);
        if (v10 == v11)
        {
          goto LABEL_29;
        }

        goto LABEL_19;
      }

      sub_22B12F174(v1, v2);
    }

    else
    {
      if (!v3)
      {
        v4 = v2;
        sub_22B12F174(v1, v2);
        if ((v4 & 0xFF000000000000) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_19;
      }

      v18 = v1;
      sub_22B12F174(v1, v2);
      if (v18 != v18 >> 32)
      {
LABEL_19:
        if (qword_28140B470 != -1)
        {
          swift_once();
        }

        v19 = sub_22B36006C();
        v21 = v20;
        *(v0 + 480) = v19;
        *(v0 + 488) = v20;
        v22 = swift_task_alloc();
        *(v0 + 496) = v22;
        *v22 = v0;
        v22[1] = sub_22B2ADC3C;
        v14 = *(v0 + 96);
        v13 = *(v0 + 56);
        v15 = *(v0 + 88);
        v16 = v19;
        v17 = v21;
LABEL_22:

        return sub_22B177E54(v15, v14, v16, v17, v13);
      }
    }

LABEL_29:
    (*(v0 + 376))(*(v0 + 200), *(v0 + 368), *(v0 + 152));
    v26 = sub_22B36050C();
    v27 = sub_22B360D1C();
    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 392);
    v30 = *(v0 + 288);
    v31 = *(v0 + 296);
    v71 = *(v0 + 280);
    v69 = *(v0 + 272);
    v33 = *(v0 + 248);
    v32 = *(v0 + 256);
    v34 = *(v0 + 200);
    v35 = *(v0 + 152);
    if (v28)
    {
      v67 = *(v0 + 296);
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_22B116000, v26, v27, "[Dropbox] Error: Response indicates more to come, however offset is empty", v36, 2u);
      MEMORY[0x23188F650](v36, -1, -1);

      v29(v34, v35);
      (*(v32 + 8))(v69, v33);
      (*(v30 + 8))(v67, v71);
    }

    else
    {

      v29(v34, v35);
      (*(v32 + 8))(v69, v33);
      (*(v30 + 8))(v31, v71);
    }

    v72 = *(v0 + 360);
    goto LABEL_33;
  }

  if ((sub_22B36005C() & 1) == 0)
  {
    v5 = *(v0 + 360);
    goto LABEL_15;
  }

  v5 = *(v0 + 360);
  *(v0 + 512) = v5;
  v6 = sub_22B36006C();
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v24 = *(v6 + 16);
      v25 = *(v6 + 24);
      sub_22B12F174(v6, v7);
      if (v24 != v25)
      {
        goto LABEL_37;
      }
    }

    else
    {
      sub_22B12F174(v6, v7);
    }

    goto LABEL_15;
  }

  if (v8)
  {
    v38 = v6;
    sub_22B12F174(v6, v7);
    if (v38 != v38 >> 32)
    {
      goto LABEL_37;
    }

LABEL_15:
    *(v0 + 640) = v5;
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v12 = swift_task_alloc();
    *(v0 + 648) = v12;
    *v12 = v0;
    v12[1] = sub_22B2AF818;
    v13 = *(v0 + 296);
    v14 = *(v0 + 96);
    v15 = *(v0 + 88);
    v16 = 0;
    v17 = 0xC000000000000000;
    goto LABEL_22;
  }

  v9 = v7;
  sub_22B12F174(v6, v7);
  if ((v9 & 0xFF000000000000) == 0)
  {
    goto LABEL_15;
  }

LABEL_37:
  if (sub_22B360BFC())
  {
    v72 = v5;
    (*(v0 + 376))(*(v0 + 192), *(v0 + 368), *(v0 + 152));
    v39 = sub_22B36050C();
    v40 = sub_22B360D1C();
    v41 = os_log_type_enabled(v39, v40);
    v68 = *(v0 + 392);
    v42 = *(v0 + 288);
    v43 = *(v0 + 296);
    v44 = *(v0 + 280);
    v70 = *(v0 + 272);
    v46 = *(v0 + 248);
    v45 = *(v0 + 256);
    v47 = *(v0 + 192);
    v48 = *(v0 + 152);
    if (v41)
    {
      v66 = *(v0 + 296);
      v49 = swift_slowAlloc();
      v65 = v44;
      v50 = swift_slowAlloc();
      v73 = v50;
      *v49 = 136315394;
      *(v49 + 4) = sub_22B1A7B20(0xD00000000000005BLL, 0x800000022B36DB50, &v73);
      *(v49 + 12) = 2048;
      *(v49 + 14) = 170;
      _os_log_impl(&dword_22B116000, v39, v40, "[Dropbox] Task is cancelled at marker %s:%ld", v49, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x23188F650](v50, -1, -1);
      MEMORY[0x23188F650](v49, -1, -1);

      v68(v47, v48);
      (*(v45 + 8))(v70, v46);
      (*(v42 + 8))(v66, v65);
    }

    else
    {

      v68(v47, v48);
      (*(v45 + 8))(v70, v46);
      (*(v42 + 8))(v43, v44);
    }

LABEL_33:

    v37 = *(v0 + 8);

    return v37(v72);
  }

  v51 = *(v0 + 312);
  v52 = *(v0 + 664);
  v53 = *(v0 + 232);
  v54 = *(v0 + 216);
  v55 = sub_22B36006C();
  v57 = v56;
  *(v0 + 520) = v55;
  *(v0 + 528) = v56;
  v51(v53, v52, v54);
  v58 = swift_task_alloc();
  *(v0 + 536) = v58;
  *v58 = v0;
  v58[1] = sub_22B2AE248;
  v59 = *(v0 + 264);
  v60 = *(v0 + 232);
  v61 = *(v0 + 80);
  v62 = *(v0 + 48);
  v63 = *(v0 + 56);
  v64 = *(v0 + 40);

  return MEMORY[0x282172608](v59, v64, v62, v63, v60, v55, v57, v61);
}

uint64_t sub_22B2AD820()
{
  v2 = *v1;
  *(*v1 + 472) = v0;

  v3 = *(v2 + 424);
  if (v0)
  {
    v4 = sub_22B2ADAA0;
  }

  else
  {
    v4 = sub_22B2AD94C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22B2AD94C()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 440);

  if (v1 == v2)
  {
    v5 = *(v0 + 144);

    v3 = sub_22B2AD134;
    v6 = v5;
    v4 = 0;

    return MEMORY[0x2822009F8](v3, v6, v4);
  }

  v7 = *(v0 + 456);
  v6 = *(v0 + 432);
  if ((v6 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x23188EAC0](*(v0 + 456));
  }

  else
  {
    if (v7 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_14:
      __break(1u);
      return MEMORY[0x2822009F8](v3, v6, v4);
    }

    v3 = *(v6 + 8 * v7 + 32);
  }

  v8 = v3;
  *(v0 + 448) = v3;
  *(v0 + 456) = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = swift_task_alloc();
  *(v0 + 464) = v9;
  *v9 = v0;
  v9[1] = sub_22B2AD820;
  v10 = *(v0 + 128);
  v11 = *(v0 + 136);
  v12 = *(v0 + 112);
  v13 = *(v0 + 120);
  v14 = *(v0 + 104);

  return sub_22B3297C0(v8, v14, v12, v13, v10, v11);
}

uint64_t sub_22B2ADAA0()
{
  v1 = *(v0 + 144);

  return MEMORY[0x2822009F8](sub_22B2ADB18, v1, 0);
}

uint64_t sub_22B2ADB18()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  (*(v0[32] + 8))(v0[34], v0[31]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22B2ADC3C()
{
  v2 = *v1;
  v3 = *(*v1 + 488);
  v4 = *(*v1 + 480);
  *(*v1 + 504) = v0;

  sub_22B12F174(v4, v3);
  v5 = *(v2 + 144);
  if (v0)
  {
    v6 = sub_22B2AFC98;
  }

  else
  {
    v6 = sub_22B2ADDA4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B2ADDA4()
{
  v46 = v0;
  if ((sub_22B36005C() & 1) == 0)
  {
    v1 = *(v0 + 360);
    goto LABEL_7;
  }

  v1 = *(v0 + 360);
  *(v0 + 512) = v1;
  v2 = sub_22B36006C();
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v12 = *(v2 + 16);
      v11 = *(v2 + 24);
      sub_22B12F174(v2, v3);
      if (v12 != v11)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_22B12F174(v2, v3);
    }

LABEL_7:
    *(v0 + 640) = v1;
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v6 = swift_task_alloc();
    *(v0 + 648) = v6;
    *v6 = v0;
    v6[1] = sub_22B2AF818;
    v7 = *(v0 + 296);
    v9 = *(v0 + 88);
    v8 = *(v0 + 96);

    return sub_22B177E54(v9, v8, 0, 0xC000000000000000, v7);
  }

  if (v4)
  {
    v13 = v2;
    sub_22B12F174(v2, v3);
    if (v13 != v13 >> 32)
    {
      goto LABEL_16;
    }

    goto LABEL_7;
  }

  v5 = v3;
  sub_22B12F174(v2, v3);
  if ((v5 & 0xFF000000000000) == 0)
  {
    goto LABEL_7;
  }

LABEL_16:
  if (sub_22B360BFC())
  {
    (*(v0 + 376))(*(v0 + 192), *(v0 + 368), *(v0 + 152));
    v14 = sub_22B36050C();
    v15 = sub_22B360D1C();
    v16 = os_log_type_enabled(v14, v15);
    v18 = *(v0 + 288);
    v17 = *(v0 + 296);
    v19 = *(v0 + 280);
    v44 = *(v0 + 272);
    v20 = *(v0 + 256);
    v42 = *(v0 + 248);
    v43 = *(v0 + 392);
    v21 = *(v0 + 192);
    v22 = *(v0 + 152);
    if (v16)
    {
      v41 = *(v0 + 296);
      v23 = swift_slowAlloc();
      v40 = v19;
      v24 = swift_slowAlloc();
      v45 = v24;
      *v23 = 136315394;
      *(v23 + 4) = sub_22B1A7B20(0xD00000000000005BLL, 0x800000022B36DB50, &v45);
      *(v23 + 12) = 2048;
      *(v23 + 14) = 170;
      _os_log_impl(&dword_22B116000, v14, v15, "[Dropbox] Task is cancelled at marker %s:%ld", v23, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x23188F650](v24, -1, -1);
      MEMORY[0x23188F650](v23, -1, -1);

      v43(v21, v22);
      (*(v20 + 8))(v44, v42);
      (*(v18 + 8))(v41, v40);
    }

    else
    {

      v43(v21, v22);
      (*(v20 + 8))(v44, v42);
      (*(v18 + 8))(v17, v19);
    }

    v39 = *(v0 + 8);

    return v39(v1);
  }

  else
  {
    v25 = *(v0 + 312);
    v26 = *(v0 + 664);
    v27 = *(v0 + 232);
    v28 = *(v0 + 216);
    v29 = sub_22B36006C();
    v31 = v30;
    *(v0 + 520) = v29;
    *(v0 + 528) = v30;
    v25(v27, v26, v28);
    v32 = swift_task_alloc();
    *(v0 + 536) = v32;
    *v32 = v0;
    v32[1] = sub_22B2AE248;
    v33 = *(v0 + 264);
    v34 = *(v0 + 232);
    v35 = *(v0 + 80);
    v36 = *(v0 + 48);
    v37 = *(v0 + 56);
    v38 = *(v0 + 40);

    return MEMORY[0x282172608](v33, v38, v36, v37, v34, v29, v31, v35);
  }
}

uint64_t sub_22B2AE248()
{
  v2 = *v1;
  *(*v1 + 544) = v0;

  v3 = v2[43];
  v4 = v2[29];
  v5 = v2[27];
  v6 = v2[18];
  v3(v4, v5);
  if (v0)
  {
    v7 = sub_22B2AFDBC;
  }

  else
  {
    v7 = sub_22B2AE3CC;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22B2AE3CC()
{
  (*(*(v0 + 256) + 40))(*(v0 + 272), *(v0 + 264), *(v0 + 248));
  v1 = sub_22B36007C();
  if (v1 >> 62)
  {
    v2 = sub_22B36109C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = *(v0 + 512);

  v7 = v3 + v2;
  *(v0 + 552) = v3 + v2;
  if (__OFADD__(v3, v2))
  {
    __break(1u);
  }

  else
  {
    (*(v0 + 376))(*(v0 + 184), *(v0 + 368), *(v0 + 152));
    v8 = sub_22B36050C();
    v9 = sub_22B360D2C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134349056;
      *(v10 + 4) = v7;
      _os_log_impl(&dword_22B116000, v8, v9, "[Dropbox] Received %{public}ld records for UsagePoint in this session", v10, 0xCu);
      MEMORY[0x23188F650](v10, -1, -1);
    }

    v11 = *(v0 + 424);
    v12 = *(v0 + 392);
    v13 = *(v0 + 184);
    v14 = *(v0 + 152);

    v12(v13, v14);
    *(v0 + 560) = sub_22B36007C();
    v4 = sub_22B2AE568;
    v5 = v11;
    v6 = 0;
  }

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22B2AE568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[70];
  if (v4 >> 62)
  {
    v5 = sub_22B36109C();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3[71] = v5;
  v6 = v3[70];
  if (!v5)
  {
    v16 = v3[18];

    v5 = sub_22B2AE6C0;
    v6 = v16;
    a3 = 0;

    return MEMORY[0x2822009F8](v5, v6, a3);
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x23188EAC0](0);
    goto LABEL_7;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return MEMORY[0x2822009F8](v5, v6, a3);
  }

  v7 = *(v6 + 32);
LABEL_7:
  v8 = v7;
  v3[72] = v7;
  v3[73] = 1;
  v9 = swift_task_alloc();
  v3[74] = v9;
  *v9 = v3;
  v9[1] = sub_22B2AEDE4;
  v10 = v3[16];
  v11 = v3[17];
  v12 = v3[14];
  v13 = v3[15];
  v14 = v3[13];

  return sub_22B3297C0(v8, v14, v12, v13, v10, v11);
}

uint64_t sub_22B2AE6C0()
{
  v76 = v0;
  if (sub_22B36005C())
  {
    v1 = sub_22B36006C();
    v3 = v2 >> 62;
    if ((v2 >> 62) > 1)
    {
      if (v3 == 2)
      {
        v11 = *(v1 + 16);
        v12 = *(v1 + 24);
        sub_22B12F174(v1, v2);
        if (v11 == v12)
        {
          goto LABEL_21;
        }

        goto LABEL_15;
      }

      sub_22B12F174(v1, v2);
    }

    else
    {
      if (!v3)
      {
        v4 = v2;
        sub_22B12F174(v1, v2);
        if ((v4 & 0xFF000000000000) == 0)
        {
          goto LABEL_21;
        }

LABEL_15:
        v14 = *(v0 + 528);
        v15 = *(v0 + 520);
        v16 = sub_22B36006C();
        v18 = v17;
        LOBYTE(v14) = sub_22B2E77BC(v16, v17, v15, v14);
        sub_22B12F174(v16, v18);
        if ((v14 & 1) == 0)
        {
          if (qword_28140B470 != -1)
          {
            swift_once();
          }

          v39 = sub_22B36006C();
          v41 = v40;
          *(v0 + 608) = v39;
          *(v0 + 616) = v40;
          v42 = swift_task_alloc();
          *(v0 + 624) = v42;
          *v42 = v0;
          v42[1] = sub_22B2AF21C;
          v34 = *(v0 + 96);
          v33 = *(v0 + 56);
          v35 = *(v0 + 88);
          v36 = v39;
          v37 = v41;
          goto LABEL_28;
        }

        (*(v0 + 376))(*(v0 + 168), *(v0 + 368), *(v0 + 152));
        v19 = sub_22B36050C();
        v20 = sub_22B360D1C();
        v21 = os_log_type_enabled(v19, v20);
        v22 = *(v0 + 528);
        v23 = *(v0 + 520);
        v24 = *(v0 + 392);
        v25 = *(v0 + 168);
        v26 = *(v0 + 152);
        if (!v21)
        {
          goto LABEL_24;
        }

        v27 = swift_slowAlloc();
        *v27 = 0;
        v28 = "[Dropbox] Error: Response indicates more to come, however offset is same as previous";
        goto LABEL_23;
      }

      v13 = v1;
      sub_22B12F174(v1, v2);
      if (v13 != v13 >> 32)
      {
        goto LABEL_15;
      }
    }

LABEL_21:
    (*(v0 + 376))(*(v0 + 176), *(v0 + 368), *(v0 + 152));
    v19 = sub_22B36050C();
    v20 = sub_22B360D1C();
    v31 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 528);
    v23 = *(v0 + 520);
    v24 = *(v0 + 392);
    v25 = *(v0 + 176);
    v26 = *(v0 + 152);
    if (!v31)
    {
LABEL_24:
      sub_22B12F174(v23, v22);

      v24(v25, v26);
      v6 = *(v0 + 552);
      goto LABEL_25;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = "[Dropbox] Error: Response indicates more to come, however offset is empty";
LABEL_23:
    _os_log_impl(&dword_22B116000, v19, v20, v28, v27, 2u);
    MEMORY[0x23188F650](v27, -1, -1);
    goto LABEL_24;
  }

  sub_22B12F174(*(v0 + 520), *(v0 + 528));
  v5 = sub_22B36005C();
  v6 = *(v0 + 552);
  if ((v5 & 1) == 0)
  {
LABEL_25:
    *(v0 + 640) = v6;
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v32 = swift_task_alloc();
    *(v0 + 648) = v32;
    *v32 = v0;
    v32[1] = sub_22B2AF818;
    v33 = *(v0 + 296);
    v34 = *(v0 + 96);
    v35 = *(v0 + 88);
    v36 = 0;
    v37 = 0xC000000000000000;
LABEL_28:

    return sub_22B177E54(v35, v34, v36, v37, v33);
  }

  *(v0 + 512) = v6;
  v7 = sub_22B36006C();
  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v9 != 2)
    {
      sub_22B12F174(v7, v8);
      goto LABEL_25;
    }

    v30 = *(v7 + 16);
    v29 = *(v7 + 24);
    sub_22B12F174(v7, v8);
  }

  else
  {
    if (!v9)
    {
      v10 = v8;
      sub_22B12F174(v7, v8);
      if ((v10 & 0xFF000000000000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_36;
    }

    v43 = v7;
    sub_22B12F174(v7, v8);
    v30 = v43;
    v29 = v43 >> 32;
  }

  if (v30 == v29)
  {
    goto LABEL_25;
  }

LABEL_36:
  if (sub_22B360BFC())
  {
    (*(v0 + 376))(*(v0 + 192), *(v0 + 368), *(v0 + 152));
    v44 = sub_22B36050C();
    v45 = sub_22B360D1C();
    v46 = os_log_type_enabled(v44, v45);
    v48 = *(v0 + 288);
    v47 = *(v0 + 296);
    v49 = *(v0 + 280);
    v74 = *(v0 + 272);
    v50 = *(v0 + 256);
    v72 = *(v0 + 248);
    v73 = *(v0 + 392);
    v51 = *(v0 + 192);
    v52 = *(v0 + 152);
    if (v46)
    {
      v71 = *(v0 + 296);
      v53 = swift_slowAlloc();
      v70 = v49;
      v54 = swift_slowAlloc();
      v75 = v54;
      *v53 = 136315394;
      *(v53 + 4) = sub_22B1A7B20(0xD00000000000005BLL, 0x800000022B36DB50, &v75);
      *(v53 + 12) = 2048;
      *(v53 + 14) = 170;
      _os_log_impl(&dword_22B116000, v44, v45, "[Dropbox] Task is cancelled at marker %s:%ld", v53, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x23188F650](v54, -1, -1);
      MEMORY[0x23188F650](v53, -1, -1);

      v73(v51, v52);
      (*(v50 + 8))(v74, v72);
      (*(v48 + 8))(v71, v70);
    }

    else
    {

      v73(v51, v52);
      (*(v50 + 8))(v74, v72);
      (*(v48 + 8))(v47, v49);
    }

    v69 = *(v0 + 8);

    return v69(v6);
  }

  else
  {
    v55 = *(v0 + 312);
    v56 = *(v0 + 664);
    v57 = *(v0 + 232);
    v58 = *(v0 + 216);
    v59 = sub_22B36006C();
    v61 = v60;
    *(v0 + 520) = v59;
    *(v0 + 528) = v60;
    v55(v57, v56, v58);
    v62 = swift_task_alloc();
    *(v0 + 536) = v62;
    *v62 = v0;
    v62[1] = sub_22B2AE248;
    v63 = *(v0 + 264);
    v64 = *(v0 + 232);
    v65 = *(v0 + 80);
    v66 = *(v0 + 48);
    v67 = *(v0 + 56);
    v68 = *(v0 + 40);

    return MEMORY[0x282172608](v63, v68, v66, v67, v64, v59, v61, v65);
  }
}

uint64_t sub_22B2AEDE4()
{
  v2 = *v1;
  *(*v1 + 600) = v0;

  v3 = *(v2 + 424);
  if (v0)
  {
    v4 = sub_22B2AF06C;
  }

  else
  {
    v4 = sub_22B2AEF10;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22B2AEF10()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 568);

  if (v1 == v2)
  {
    v5 = *(v0 + 144);

    v3 = sub_22B2AE6C0;
    v6 = v5;
    v4 = 0;

    return MEMORY[0x2822009F8](v3, v6, v4);
  }

  v7 = *(v0 + 584);
  v6 = *(v0 + 560);
  if ((v6 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x23188EAC0](*(v0 + 584));
  }

  else
  {
    if (v7 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_14:
      __break(1u);
      return MEMORY[0x2822009F8](v3, v6, v4);
    }

    v3 = *(v6 + 8 * v7 + 32);
  }

  v8 = v3;
  *(v0 + 576) = v3;
  *(v0 + 584) = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = swift_task_alloc();
  *(v0 + 592) = v9;
  *v9 = v0;
  v9[1] = sub_22B2AEDE4;
  v10 = *(v0 + 128);
  v11 = *(v0 + 136);
  v12 = *(v0 + 112);
  v13 = *(v0 + 120);
  v14 = *(v0 + 104);

  return sub_22B3297C0(v8, v14, v12, v13, v10, v11);
}

uint64_t sub_22B2AF06C()
{
  v1 = *(v0 + 144);

  return MEMORY[0x2822009F8](sub_22B2AF0E4, v1, 0);
}

uint64_t sub_22B2AF0E4()
{
  v2 = v0[36];
  v1 = v0[37];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[31];
  v6 = v0[32];
  sub_22B12F174(v0[65], v0[66]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_22B2AF21C()
{
  v2 = *v1;
  *(*v1 + 632) = v0;

  v3 = v2[77];
  v4 = v2[76];
  v5 = v2[18];
  sub_22B12F174(v4, v3);
  if (v0)
  {
    v6 = sub_22B2AFEF4;
  }

  else
  {
    v6 = sub_22B2AF378;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B2AF378()
{
  v47 = v0;
  sub_22B12F174(*(v0 + 520), *(v0 + 528));
  v1 = sub_22B36005C();
  v2 = *(v0 + 552);
  if ((v1 & 1) == 0)
  {
    goto LABEL_14;
  }

  *(v0 + 512) = v2;
  v3 = sub_22B36006C();
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      sub_22B12F174(v3, v4);
      goto LABEL_14;
    }

    v8 = *(v3 + 16);
    v7 = *(v3 + 24);
    sub_22B12F174(v3, v4);
LABEL_9:
    if (v8 != v7)
    {
      goto LABEL_10;
    }

LABEL_14:
    *(v0 + 640) = v2;
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v21 = swift_task_alloc();
    *(v0 + 648) = v21;
    *v21 = v0;
    v21[1] = sub_22B2AF818;
    v22 = *(v0 + 296);
    v24 = *(v0 + 88);
    v23 = *(v0 + 96);

    return sub_22B177E54(v24, v23, 0, 0xC000000000000000, v22);
  }

  if (v5)
  {
    v9 = v3;
    sub_22B12F174(v3, v4);
    v8 = v9;
    v7 = v9 >> 32;
    goto LABEL_9;
  }

  v6 = v4;
  sub_22B12F174(v3, v4);
  if ((v6 & 0xFF000000000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  if (sub_22B360BFC())
  {
    (*(v0 + 376))(*(v0 + 192), *(v0 + 368), *(v0 + 152));
    v10 = sub_22B36050C();
    v11 = sub_22B360D1C();
    v12 = os_log_type_enabled(v10, v11);
    v14 = *(v0 + 288);
    v13 = *(v0 + 296);
    v15 = *(v0 + 280);
    v45 = *(v0 + 272);
    v16 = *(v0 + 256);
    v43 = *(v0 + 248);
    v44 = *(v0 + 392);
    v17 = *(v0 + 192);
    v18 = *(v0 + 152);
    if (v12)
    {
      v42 = *(v0 + 296);
      v19 = swift_slowAlloc();
      v41 = v15;
      v20 = swift_slowAlloc();
      v46 = v20;
      *v19 = 136315394;
      *(v19 + 4) = sub_22B1A7B20(0xD00000000000005BLL, 0x800000022B36DB50, &v46);
      *(v19 + 12) = 2048;
      *(v19 + 14) = 170;
      _os_log_impl(&dword_22B116000, v10, v11, "[Dropbox] Task is cancelled at marker %s:%ld", v19, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x23188F650](v20, -1, -1);
      MEMORY[0x23188F650](v19, -1, -1);

      v44(v17, v18);
      (*(v16 + 8))(v45, v43);
      (*(v14 + 8))(v42, v41);
    }

    else
    {

      v44(v17, v18);
      (*(v16 + 8))(v45, v43);
      (*(v14 + 8))(v13, v15);
    }

    v40 = *(v0 + 8);

    return v40(v2);
  }

  else
  {
    v26 = *(v0 + 312);
    v27 = *(v0 + 664);
    v28 = *(v0 + 232);
    v29 = *(v0 + 216);
    v30 = sub_22B36006C();
    v32 = v31;
    *(v0 + 520) = v30;
    *(v0 + 528) = v31;
    v26(v28, v27, v29);
    v33 = swift_task_alloc();
    *(v0 + 536) = v33;
    *v33 = v0;
    v33[1] = sub_22B2AE248;
    v34 = *(v0 + 264);
    v35 = *(v0 + 232);
    v36 = *(v0 + 80);
    v37 = *(v0 + 48);
    v38 = *(v0 + 56);
    v39 = *(v0 + 40);

    return MEMORY[0x282172608](v34, v39, v37, v38, v35, v30, v32, v36);
  }
}

uint64_t sub_22B2AF818()
{
  v2 = *v1;
  *(*v1 + 656) = v0;

  v3 = *(v2 + 144);
  if (v0)
  {
    v4 = sub_22B2B002C;
  }

  else
  {
    v4 = sub_22B2AF944;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22B2AF944()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  (*(v0[32] + 8))(v0[34], v0[31]);
  (*(v2 + 8))(v1, v3);
  v6 = v0[80];

  v4 = v0[1];

  return v4(v6);
}

uint64_t sub_22B2AFA6C()
{
  (*(v0[36] + 8))(v0[37], v0[35]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22B2AFB74()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  (*(v0[32] + 8))(v0[34], v0[31]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22B2AFC98()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  (*(v0[32] + 8))(v0[34], v0[31]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22B2AFDBC()
{
  v2 = v0[36];
  v1 = v0[37];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[31];
  v6 = v0[32];
  sub_22B12F174(v0[65], v0[66]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_22B2AFEF4()
{
  v2 = v0[36];
  v1 = v0[37];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[31];
  v6 = v0[32];
  sub_22B12F174(v0[65], v0[66]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_22B2B002C()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  (*(v0[32] + 8))(v0[34], v0[31]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22B2B0150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 136) = v18;
  *(v9 + 144) = v8;
  *(v9 + 120) = v17;
  *(v9 + 104) = v16;
  *(v9 + 88) = a7;
  *(v9 + 96) = a8;
  *(v9 + 72) = a5;
  *(v9 + 80) = a6;
  *(v9 + 56) = a3;
  *(v9 + 64) = a4;
  *(v9 + 40) = a1;
  *(v9 + 48) = a2;
  v10 = sub_22B36052C();
  *(v9 + 152) = v10;
  *(v9 + 160) = *(v10 - 8);
  *(v9 + 168) = swift_task_alloc();
  *(v9 + 176) = swift_task_alloc();
  *(v9 + 184) = swift_task_alloc();
  *(v9 + 192) = swift_task_alloc();
  *(v9 + 200) = swift_task_alloc();
  *(v9 + 208) = swift_task_alloc();
  v11 = sub_22B35FF9C();
  *(v9 + 216) = v11;
  *(v9 + 224) = *(v11 - 8);
  *(v9 + 232) = swift_task_alloc();
  *(v9 + 240) = swift_task_alloc();
  v12 = sub_22B36008C();
  *(v9 + 248) = v12;
  *(v9 + 256) = *(v12 - 8);
  *(v9 + 264) = swift_task_alloc();
  *(v9 + 272) = swift_task_alloc();
  v13 = sub_22B35DE9C();
  *(v9 + 280) = v13;
  *(v9 + 288) = *(v13 - 8);
  *(v9 + 296) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2B039C, v8, 0);
}

uint64_t sub_22B2B039C(uint64_t a1)
{
  v2 = *(v1 + 240);
  v3 = *(v1 + 224);
  sub_22B35DE6C();
  *(v1 + 304) = sub_22B3602DC();
  *(v1 + 616) = *MEMORY[0x277D18110];
  v4 = *(v3 + 104);
  *(v1 + 312) = v4;
  *(v1 + 320) = (v3 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v4(v2);
  v5 = swift_task_alloc();
  *(v1 + 328) = v5;
  *v5 = v1;
  v5[1] = sub_22B2B04A0;
  v6 = *(v1 + 272);
  v7 = *(v1 + 240);
  v8 = *(v1 + 72);
  v9 = *(v1 + 80);
  v10 = *(v1 + 56);
  v11 = *(v1 + 64);
  v12 = *(v1 + 40);
  v13 = *(v1 + 48);

  return MEMORY[0x282172608](v6, v12, v13, v10, v7, v11, v8, v9);
}

uint64_t sub_22B2B04A0()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *(*v1 + 224);
  v5 = *(*v1 + 216);
  v2[42] = v0;

  v6 = *(v4 + 8);
  v2[43] = v6;
  v2[44] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  v7 = v2[18];
  if (v0)
  {
    v8 = sub_22B2EC230;
  }

  else
  {
    v8 = sub_22B2B063C;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_22B2B063C(uint64_t a1)
{
  v2 = sub_22B36007C();
  if (v2 >> 62)
  {
    v3 = sub_22B36109C();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v1[45] = v3;

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v4 = v1[26];
  v5 = v1[19];
  v6 = v1[20];
  v7 = __swift_project_value_buffer(v5, qword_28140BD10);
  v1[46] = v7;
  swift_beginAccess();
  v8 = *(v6 + 16);
  v1[47] = v8;
  v1[48] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v4, v7, v5);
  v9 = sub_22B36050C();
  v10 = sub_22B360D2C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134349056;
    *(v11 + 4) = v3;
    _os_log_impl(&dword_22B116000, v9, v10, "[Dropbox] Received %{public}ld records for UsageSummary in this session", v11, 0xCu);
    MEMORY[0x23188F650](v11, -1, -1);
  }

  v12 = v1[26];
  v13 = v1[19];
  v14 = v1[20];

  v15 = *(v14 + 8);
  v1[49] = v15;
  v1[50] = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v12, v13);
  v16 = sub_22B36007C();
  if (v16 >> 62)
  {
    v26 = sub_22B36109C();

    if (v26)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v17)
    {
LABEL_9:
      if (qword_281409598 != -1)
      {
        swift_once();
      }

      v1[53] = qword_28140BCE0;
      v18 = sub_22B36007C();
      v1[54] = v18;
      v19 = swift_task_alloc();
      v1[55] = v19;
      *v19 = v1;
      v19[1] = sub_22B2B0AD4;
      v20 = v1[16];
      v21 = v1[17];
      v22 = v1[14];
      v23 = v1[15];
      v24 = v1[13];

      return sub_22B1D59F4(v18, v24, v22, v23, v20, v21);
    }
  }

  if (qword_28140B470 != -1)
  {
    swift_once();
  }

  v27 = swift_task_alloc();
  v1[51] = v27;
  *v27 = v1;
  v27[1] = sub_22B2B09A8;
  v28 = v1[37];
  v30 = v1[11];
  v29 = v1[12];

  return sub_22B17877C(v30, v29, 0, 0xC000000000000000, v28);
}

uint64_t sub_22B2B09A8()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  v3 = *(v2 + 144);
  if (v0)
  {
    v4 = sub_22B2EC218;
  }

  else
  {
    v4 = sub_22B2EC214;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22B2B0AD4(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 448) = v1;

  v4 = *(v3 + 144);
  if (v1)
  {
    v5 = sub_22B2B29A8;
  }

  else
  {

    v5 = sub_22B2B0C34;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22B2B0C34(uint64_t a1)
{
  v75 = v1;
  if (sub_22B36005C())
  {
    v2 = sub_22B36006C();
    v4 = v3 >> 62;
    if ((v3 >> 62) > 1)
    {
      if (v4 == 2)
      {
        v11 = *(v2 + 16);
        v12 = *(v2 + 24);
        sub_22B12F174(v2, v3);
        if (v11 == v12)
        {
          goto LABEL_29;
        }

        goto LABEL_19;
      }

      sub_22B12F174(v2, v3);
    }

    else
    {
      if (!v4)
      {
        v5 = v3;
        sub_22B12F174(v2, v3);
        if ((v5 & 0xFF000000000000) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_19;
      }

      v19 = v2;
      sub_22B12F174(v2, v3);
      if (v19 != v19 >> 32)
      {
LABEL_19:
        if (qword_28140B470 != -1)
        {
          swift_once();
        }

        v20 = sub_22B36006C();
        v22 = v21;
        *(v1 + 456) = v20;
        *(v1 + 464) = v21;
        v23 = swift_task_alloc();
        *(v1 + 472) = v23;
        *v23 = v1;
        v23[1] = sub_22B2B131C;
        v15 = *(v1 + 96);
        v14 = *(v1 + 56);
        v16 = *(v1 + 88);
        v17 = v20;
        v18 = v22;
LABEL_22:

        return sub_22B17877C(v16, v15, v17, v18, v14);
      }
    }

LABEL_29:
    (*(v1 + 376))(*(v1 + 200), *(v1 + 368), *(v1 + 152));
    v27 = sub_22B36050C();
    v28 = sub_22B360D1C();
    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v1 + 392);
    v31 = *(v1 + 288);
    v32 = *(v1 + 296);
    v72 = *(v1 + 280);
    v70 = *(v1 + 272);
    v34 = *(v1 + 248);
    v33 = *(v1 + 256);
    v35 = *(v1 + 200);
    v36 = *(v1 + 152);
    if (v29)
    {
      v68 = *(v1 + 296);
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_22B116000, v27, v28, "[Dropbox] Error: Response indicates more to come, however offset is empty", v37, 2u);
      MEMORY[0x23188F650](v37, -1, -1);

      v30(v35, v36);
      (*(v33 + 8))(v70, v34);
      (*(v31 + 8))(v68, v72);
    }

    else
    {

      v30(v35, v36);
      (*(v33 + 8))(v70, v34);
      (*(v31 + 8))(v32, v72);
    }

    v73 = *(v1 + 360);
    goto LABEL_33;
  }

  if ((sub_22B36005C() & 1) == 0)
  {
    v6 = *(v1 + 360);
    goto LABEL_15;
  }

  v6 = *(v1 + 360);
  *(v1 + 488) = v6;
  v7 = sub_22B36006C();
  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v9 == 2)
    {
      v25 = *(v7 + 16);
      v26 = *(v7 + 24);
      sub_22B12F174(v7, v8);
      if (v25 != v26)
      {
        goto LABEL_37;
      }
    }

    else
    {
      sub_22B12F174(v7, v8);
    }

    goto LABEL_15;
  }

  if (v9)
  {
    v39 = v7;
    sub_22B12F174(v7, v8);
    if (v39 != v39 >> 32)
    {
      goto LABEL_37;
    }

LABEL_15:
    *(v1 + 592) = v6;
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v13 = swift_task_alloc();
    *(v1 + 600) = v13;
    *v13 = v1;
    v13[1] = sub_22B2B2754;
    v14 = *(v1 + 296);
    v15 = *(v1 + 96);
    v16 = *(v1 + 88);
    v17 = 0;
    v18 = 0xC000000000000000;
    goto LABEL_22;
  }

  v10 = v8;
  sub_22B12F174(v7, v8);
  if ((v10 & 0xFF000000000000) == 0)
  {
    goto LABEL_15;
  }

LABEL_37:
  if (sub_22B360BFC())
  {
    v73 = v6;
    (*(v1 + 376))(*(v1 + 192), *(v1 + 368), *(v1 + 152));
    v40 = sub_22B36050C();
    v41 = sub_22B360D1C();
    v42 = os_log_type_enabled(v40, v41);
    v69 = *(v1 + 392);
    v43 = *(v1 + 288);
    v44 = *(v1 + 296);
    v45 = *(v1 + 280);
    v71 = *(v1 + 272);
    v47 = *(v1 + 248);
    v46 = *(v1 + 256);
    v48 = *(v1 + 192);
    v49 = *(v1 + 152);
    if (v42)
    {
      v67 = *(v1 + 296);
      v50 = swift_slowAlloc();
      v66 = v45;
      v51 = swift_slowAlloc();
      v74 = v51;
      *v50 = 136315394;
      *(v50 + 4) = sub_22B1A7B20(0xD00000000000005CLL, 0x800000022B36DAF0, &v74);
      *(v50 + 12) = 2048;
      *(v50 + 14) = 323;
      _os_log_impl(&dword_22B116000, v40, v41, "[Dropbox] Task is cancelled at marker %s:%ld", v50, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v51);
      MEMORY[0x23188F650](v51, -1, -1);
      MEMORY[0x23188F650](v50, -1, -1);

      v69(v48, v49);
      (*(v46 + 8))(v71, v47);
      (*(v43 + 8))(v67, v66);
    }

    else
    {

      v69(v48, v49);
      (*(v46 + 8))(v71, v47);
      (*(v43 + 8))(v44, v45);
    }

LABEL_33:

    v38 = *(v1 + 8);

    return v38(v73);
  }

  v52 = *(v1 + 312);
  v53 = *(v1 + 616);
  v54 = *(v1 + 232);
  v55 = *(v1 + 216);
  v56 = sub_22B36006C();
  v58 = v57;
  *(v1 + 496) = v56;
  *(v1 + 504) = v57;
  v52(v54, v53, v55);
  v59 = swift_task_alloc();
  *(v1 + 512) = v59;
  *v59 = v1;
  v59[1] = sub_22B2B1924;
  v60 = *(v1 + 264);
  v61 = *(v1 + 232);
  v62 = *(v1 + 80);
  v63 = *(v1 + 48);
  v64 = *(v1 + 56);
  v65 = *(v1 + 40);

  return MEMORY[0x282172608](v60, v65, v63, v64, v61, v56, v58, v62);
}

uint64_t sub_22B2B131C()
{
  v2 = *v1;
  v3 = *(*v1 + 464);
  v4 = *(*v1 + 456);
  *(*v1 + 480) = v0;

  sub_22B12F174(v4, v3);
  v5 = *(v2 + 144);
  if (v0)
  {
    v6 = sub_22B2B2ACC;
  }

  else
  {
    v6 = sub_22B2B1484;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B2B1484(uint64_t a1)
{
  v47 = v1;
  if ((sub_22B36005C() & 1) == 0)
  {
    v2 = *(v1 + 360);
    goto LABEL_7;
  }

  v2 = *(v1 + 360);
  *(v1 + 488) = v2;
  v3 = sub_22B36006C();
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v13 = *(v3 + 16);
      v12 = *(v3 + 24);
      sub_22B12F174(v3, v4);
      if (v13 != v12)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_22B12F174(v3, v4);
    }

LABEL_7:
    *(v1 + 592) = v2;
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v7 = swift_task_alloc();
    *(v1 + 600) = v7;
    *v7 = v1;
    v7[1] = sub_22B2B2754;
    v8 = *(v1 + 296);
    v10 = *(v1 + 88);
    v9 = *(v1 + 96);

    return sub_22B17877C(v10, v9, 0, 0xC000000000000000, v8);
  }

  if (v5)
  {
    v14 = v3;
    sub_22B12F174(v3, v4);
    if (v14 != v14 >> 32)
    {
      goto LABEL_16;
    }

    goto LABEL_7;
  }

  v6 = v4;
  sub_22B12F174(v3, v4);
  if ((v6 & 0xFF000000000000) == 0)
  {
    goto LABEL_7;
  }

LABEL_16:
  if (sub_22B360BFC())
  {
    (*(v1 + 376))(*(v1 + 192), *(v1 + 368), *(v1 + 152));
    v15 = sub_22B36050C();
    v16 = sub_22B360D1C();
    v17 = os_log_type_enabled(v15, v16);
    v19 = *(v1 + 288);
    v18 = *(v1 + 296);
    v20 = *(v1 + 280);
    v45 = *(v1 + 272);
    v21 = *(v1 + 256);
    v43 = *(v1 + 248);
    v44 = *(v1 + 392);
    v22 = *(v1 + 192);
    v23 = *(v1 + 152);
    if (v17)
    {
      v42 = *(v1 + 296);
      v24 = swift_slowAlloc();
      v41 = v20;
      v25 = swift_slowAlloc();
      v46 = v25;
      *v24 = 136315394;
      *(v24 + 4) = sub_22B1A7B20(0xD00000000000005CLL, 0x800000022B36DAF0, &v46);
      *(v24 + 12) = 2048;
      *(v24 + 14) = 323;
      _os_log_impl(&dword_22B116000, v15, v16, "[Dropbox] Task is cancelled at marker %s:%ld", v24, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x23188F650](v25, -1, -1);
      MEMORY[0x23188F650](v24, -1, -1);

      v44(v22, v23);
      (*(v21 + 8))(v45, v43);
      (*(v19 + 8))(v42, v41);
    }

    else
    {

      v44(v22, v23);
      (*(v21 + 8))(v45, v43);
      (*(v19 + 8))(v18, v20);
    }

    v40 = *(v1 + 8);

    return v40(v2);
  }

  else
  {
    v26 = *(v1 + 312);
    v27 = *(v1 + 616);
    v28 = *(v1 + 232);
    v29 = *(v1 + 216);
    v30 = sub_22B36006C();
    v32 = v31;
    *(v1 + 496) = v30;
    *(v1 + 504) = v31;
    v26(v28, v27, v29);
    v33 = swift_task_alloc();
    *(v1 + 512) = v33;
    *v33 = v1;
    v33[1] = sub_22B2B1924;
    v34 = *(v1 + 264);
    v35 = *(v1 + 232);
    v36 = *(v1 + 80);
    v37 = *(v1 + 48);
    v38 = *(v1 + 56);
    v39 = *(v1 + 40);

    return MEMORY[0x282172608](v34, v39, v37, v38, v35, v30, v32, v36);
  }
}

uint64_t sub_22B2B1924()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  v3 = v2[43];
  v4 = v2[29];
  v5 = v2[27];
  v6 = v2[18];
  v3(v4, v5);
  if (v0)
  {
    v7 = sub_22B2B2BF0;
  }

  else
  {
    v7 = sub_22B2B1AA8;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

void sub_22B2B1AA8()
{
  (*(*(v0 + 256) + 40))(*(v0 + 272), *(v0 + 264), *(v0 + 248));
  v1 = sub_22B36007C();
  if (v1 >> 62)
  {
    v2 = sub_22B36109C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = *(v0 + 488);

  v4 = v3 + v2;
  *(v0 + 528) = v3 + v2;
  if (__OFADD__(v3, v2))
  {
    __break(1u);
  }

  else
  {
    (*(v0 + 376))(*(v0 + 184), *(v0 + 368), *(v0 + 152));
    v5 = sub_22B36050C();
    v6 = sub_22B360D2C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134349056;
      *(v7 + 4) = v4;
      _os_log_impl(&dword_22B116000, v5, v6, "[Dropbox] Received %{public}ld records for UsageSummary in this session", v7, 0xCu);
      MEMORY[0x23188F650](v7, -1, -1);
    }

    v8 = *(v0 + 392);
    v9 = *(v0 + 184);
    v10 = *(v0 + 152);

    v8(v9, v10);
    v11 = sub_22B36007C();
    *(v0 + 536) = v11;
    v12 = swift_task_alloc();
    *(v0 + 544) = v12;
    *v12 = v0;
    v12[1] = sub_22B2B1C7C;
    v13 = *(v0 + 128);
    v14 = *(v0 + 136);
    v15 = *(v0 + 112);
    v16 = *(v0 + 120);
    v17 = *(v0 + 104);

    sub_22B1D59F4(v11, v17, v15, v16, v13, v14);
  }
}

uint64_t sub_22B2B1C7C(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 552) = v1;

  v4 = *(v3 + 144);

  if (v1)
  {
    v5 = sub_22B2B2D24;
  }

  else
  {

    v5 = sub_22B2B1DE4;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22B2B1DE4(uint64_t a1)
{
  if ((sub_22B36005C() & 1) == 0)
  {
    sub_22B12F174(*(v1 + 496), *(v1 + 504));
LABEL_19:
    *(v1 + 592) = *(v1 + 528);
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v25 = swift_task_alloc();
    *(v1 + 600) = v25;
    *v25 = v1;
    v25[1] = sub_22B2B2754;
    v26 = *(v1 + 296);
    v27 = *(v1 + 96);
    v28 = *(v1 + 88);
    v29 = 0;
    v30 = 0xC000000000000000;
    goto LABEL_22;
  }

  v2 = sub_22B36006C();
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      sub_22B12F174(v2, v3);
      goto LABEL_15;
    }

    v6 = *(v2 + 16);
    v7 = *(v2 + 24);
    sub_22B12F174(v2, v3);
    if (v6 == v7)
    {
LABEL_15:
      (*(v1 + 376))(*(v1 + 176), *(v1 + 368), *(v1 + 152));
      v14 = sub_22B36050C();
      v15 = sub_22B360D1C();
      v24 = os_log_type_enabled(v14, v15);
      v18 = *(v1 + 496);
      v17 = *(v1 + 504);
      v19 = *(v1 + 392);
      v20 = *(v1 + 176);
      v21 = *(v1 + 152);
      if (v24)
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        v23 = "[Dropbox] Error: Response indicates more to come, however offset is empty";
        goto LABEL_17;
      }

      goto LABEL_18;
    }
  }

  else if (v4)
  {
    v8 = v2;
    sub_22B12F174(v2, v3);
    if (v8 == v8 >> 32)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = v3;
    sub_22B12F174(v2, v3);
    if ((v5 & 0xFF000000000000) == 0)
    {
      goto LABEL_15;
    }
  }

  v10 = *(v1 + 496);
  v9 = *(v1 + 504);
  v11 = sub_22B36006C();
  v13 = v12;
  LOBYTE(v9) = sub_22B2E77BC(v11, v12, v10, v9);
  sub_22B12F174(v11, v13);
  if (v9)
  {
    (*(v1 + 376))(*(v1 + 168), *(v1 + 368), *(v1 + 152));
    v14 = sub_22B36050C();
    v15 = sub_22B360D1C();
    v16 = os_log_type_enabled(v14, v15);
    v18 = *(v1 + 496);
    v17 = *(v1 + 504);
    v19 = *(v1 + 392);
    v20 = *(v1 + 168);
    v21 = *(v1 + 152);
    if (v16)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = "[Dropbox] Error: Response indicates more to come, however offset is same as previous";
LABEL_17:
      _os_log_impl(&dword_22B116000, v14, v15, v23, v22, 2u);
      MEMORY[0x23188F650](v22, -1, -1);
    }

LABEL_18:
    sub_22B12F174(v18, v17);

    v19(v20, v21);
    goto LABEL_19;
  }

  if (qword_28140B470 != -1)
  {
    swift_once();
  }

  v32 = sub_22B36006C();
  v34 = v33;
  *(v1 + 560) = v32;
  *(v1 + 568) = v33;
  v35 = swift_task_alloc();
  *(v1 + 576) = v35;
  *v35 = v1;
  v35[1] = sub_22B2B2160;
  v27 = *(v1 + 96);
  v26 = *(v1 + 56);
  v28 = *(v1 + 88);
  v29 = v32;
  v30 = v34;
LABEL_22:

  return sub_22B17877C(v28, v27, v29, v30, v26);
}

uint64_t sub_22B2B2160()
{
  v2 = *v1;
  *(*v1 + 584) = v0;

  v3 = v2[71];
  v4 = v2[70];
  v5 = v2[18];
  sub_22B12F174(v4, v3);
  if (v0)
  {
    v6 = sub_22B2B2E58;
  }

  else
  {
    v6 = sub_22B2B22BC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B2B22BC()
{
  v47 = v0;
  sub_22B12F174(*(v0 + 496), *(v0 + 504));
  v1 = sub_22B36005C();
  v2 = *(v0 + 528);
  if ((v1 & 1) == 0)
  {
    goto LABEL_14;
  }

  *(v0 + 488) = v2;
  v3 = sub_22B36006C();
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      sub_22B12F174(v3, v4);
      goto LABEL_14;
    }

    v8 = *(v3 + 16);
    v7 = *(v3 + 24);
    sub_22B12F174(v3, v4);
LABEL_9:
    if (v8 != v7)
    {
      goto LABEL_10;
    }

LABEL_14:
    *(v0 + 592) = v2;
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v21 = swift_task_alloc();
    *(v0 + 600) = v21;
    *v21 = v0;
    v21[1] = sub_22B2B2754;
    v22 = *(v0 + 296);
    v24 = *(v0 + 88);
    v23 = *(v0 + 96);

    return sub_22B17877C(v24, v23, 0, 0xC000000000000000, v22);
  }

  if (v5)
  {
    v9 = v3;
    sub_22B12F174(v3, v4);
    v8 = v9;
    v7 = v9 >> 32;
    goto LABEL_9;
  }

  v6 = v4;
  sub_22B12F174(v3, v4);
  if ((v6 & 0xFF000000000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  if (sub_22B360BFC())
  {
    (*(v0 + 376))(*(v0 + 192), *(v0 + 368), *(v0 + 152));
    v10 = sub_22B36050C();
    v11 = sub_22B360D1C();
    v12 = os_log_type_enabled(v10, v11);
    v14 = *(v0 + 288);
    v13 = *(v0 + 296);
    v15 = *(v0 + 280);
    v45 = *(v0 + 272);
    v16 = *(v0 + 256);
    v43 = *(v0 + 248);
    v44 = *(v0 + 392);
    v17 = *(v0 + 192);
    v18 = *(v0 + 152);
    if (v12)
    {
      v42 = *(v0 + 296);
      v19 = swift_slowAlloc();
      v41 = v15;
      v20 = swift_slowAlloc();
      v46 = v20;
      *v19 = 136315394;
      *(v19 + 4) = sub_22B1A7B20(0xD00000000000005CLL, 0x800000022B36DAF0, &v46);
      *(v19 + 12) = 2048;
      *(v19 + 14) = 323;
      _os_log_impl(&dword_22B116000, v10, v11, "[Dropbox] Task is cancelled at marker %s:%ld", v19, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x23188F650](v20, -1, -1);
      MEMORY[0x23188F650](v19, -1, -1);

      v44(v17, v18);
      (*(v16 + 8))(v45, v43);
      (*(v14 + 8))(v42, v41);
    }

    else
    {

      v44(v17, v18);
      (*(v16 + 8))(v45, v43);
      (*(v14 + 8))(v13, v15);
    }

    v40 = *(v0 + 8);

    return v40(v2);
  }

  else
  {
    v26 = *(v0 + 312);
    v27 = *(v0 + 616);
    v28 = *(v0 + 232);
    v29 = *(v0 + 216);
    v30 = sub_22B36006C();
    v32 = v31;
    *(v0 + 496) = v30;
    *(v0 + 504) = v31;
    v26(v28, v27, v29);
    v33 = swift_task_alloc();
    *(v0 + 512) = v33;
    *v33 = v0;
    v33[1] = sub_22B2B1924;
    v34 = *(v0 + 264);
    v35 = *(v0 + 232);
    v36 = *(v0 + 80);
    v37 = *(v0 + 48);
    v38 = *(v0 + 56);
    v39 = *(v0 + 40);

    return MEMORY[0x282172608](v34, v39, v37, v38, v35, v30, v32, v36);
  }
}

uint64_t sub_22B2B2754()
{
  v2 = *v1;
  *(*v1 + 608) = v0;

  v3 = *(v2 + 144);
  if (v0)
  {
    v4 = sub_22B2B2F8C;
  }

  else
  {
    v4 = sub_22B2B2880;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22B2B2880()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  (*(v0[32] + 8))(v0[34], v0[31]);
  (*(v2 + 8))(v1, v3);
  v6 = v0[74];

  v4 = v0[1];

  return v4(v6);
}

uint64_t sub_22B2B29A8()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  (*(v0[32] + 8))(v0[34], v0[31]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22B2B2ACC()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  (*(v0[32] + 8))(v0[34], v0[31]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22B2B2BF0()
{
  v2 = v0[36];
  v1 = v0[37];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[31];
  v6 = v0[32];
  sub_22B12F174(v0[62], v0[63]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_22B2B2D24()
{
  v2 = v0[36];
  v1 = v0[37];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[31];
  v6 = v0[32];
  sub_22B12F174(v0[62], v0[63]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_22B2B2E58()
{
  v2 = v0[36];
  v1 = v0[37];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[31];
  v6 = v0[32];
  sub_22B12F174(v0[62], v0[63]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_22B2B2F8C()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  (*(v0[32] + 8))(v0[34], v0[31]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22B2B30B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[313] = v8;
  v9[312] = a8;
  v9[311] = a7;
  v9[310] = a6;
  v9[309] = a5;
  v9[308] = a4;
  v9[307] = a3;
  v9[306] = a2;
  v9[305] = a1;
  v10 = sub_22B36033C();
  v9[314] = v10;
  v9[315] = *(v10 - 8);
  v9[316] = swift_task_alloc();
  v9[317] = swift_task_alloc();
  v11 = sub_22B3602FC();
  v9[318] = v11;
  v9[319] = *(v11 - 8);
  v9[320] = swift_task_alloc();
  v12 = sub_22B35DE9C();
  v9[321] = v12;
  v9[322] = *(v12 - 8);
  v9[323] = swift_task_alloc();
  v9[324] = swift_task_alloc();
  v13 = sub_22B36052C();
  v9[325] = v13;
  v9[326] = *(v13 - 8);
  v9[327] = swift_task_alloc();
  v9[328] = swift_task_alloc();
  v9[329] = swift_task_alloc();
  v9[330] = swift_task_alloc();
  v9[331] = swift_task_alloc();
  v9[332] = swift_task_alloc();
  v9[333] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2B3304, v8, 0);
}

uint64_t sub_22B2B3304()
{
  v160 = v0;
  v1 = *(v0 + 2504);
  if (*(v1 + 113) == 1)
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 2664);
    v3 = *(v0 + 2608);
    v4 = *(v0 + 2600);
    v5 = __swift_project_value_buffer(v4, qword_28140BD10);
    swift_beginAccess();
    v6 = *(v3 + 16);
    v6(v2, v5, v4);
    v7 = sub_22B36050C();
    v8 = sub_22B360D1C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_22B116000, v7, v8, "********** WARNING INTERNAL TESTING FLAG IS SET **********: This should not appear in normal use, only occur in testing scenarios Check com.apple.EnergyKit defaults", v9, 2u);
      MEMORY[0x23188F650](v9, -1, -1);
    }

    v158 = (v0 + 2432);
    v10 = *(v0 + 2664);
    v11 = *(v0 + 2656);
    v12 = *(v0 + 2608);
    v13 = *(v0 + 2600);

    v14 = *(v12 + 8);
    v14(v10, v13);
    v6(v11, v5, v13);
    v15 = sub_22B36050C();
    v16 = sub_22B360D2C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_22B116000, v15, v16, "[DropBox] Dropbox disabled. Enable it on DUT to fetch from server", v17, 2u);
      MEMORY[0x23188F650](v17, -1, -1);
    }

    v18 = *(v0 + 2656);
    v19 = *(v0 + 2600);

    v14(v18, v19);
    sub_22B134CDC();
    v20 = swift_allocError();
    *v21 = 27;
    swift_willThrow();
    *(v0 + 2432) = v20;
    v22 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
    if (swift_dynamicCast())
    {
      v23 = (*(*(v0 + 2552) + 88))(*(v0 + 2560), *(v0 + 2544));
      if (v23 == *MEMORY[0x277D182B8])
      {
        v24 = *(v0 + 2560);
        v25 = *(v0 + 2536);
        v26 = *(v0 + 2528);
        v27 = *(v0 + 2520);
        v28 = *(v0 + 2512);
        (*(*(v0 + 2552) + 96))(v24, *(v0 + 2544));
        (*(v27 + 32))(v25, v24, v28);
        (*(v27 + 16))(v26, v25, v28);
        v29 = (*(v27 + 88))(v26, v28);
        if (v29 == *MEMORY[0x277D18310])
        {
          (*(*(v0 + 2520) + 8))(*(v0 + 2536), *(v0 + 2512));
          v30 = 0;
        }

        else if (v29 == *MEMORY[0x277D18308])
        {
          (*(*(v0 + 2520) + 8))(*(v0 + 2536), *(v0 + 2512));
          v30 = 1;
        }

        else if (v29 == *MEMORY[0x277D18318])
        {
          (*(*(v0 + 2520) + 8))(*(v0 + 2536), *(v0 + 2512));
          v30 = 2;
        }

        else if (v29 == *MEMORY[0x277D18300])
        {
          (*(*(v0 + 2520) + 8))(*(v0 + 2536), *(v0 + 2512));
          v30 = 3;
        }

        else
        {
          if (qword_28140A0C8 != -1)
          {
            swift_once();
          }

          v94 = *(v0 + 2648);
          v95 = *(v0 + 2608);
          v96 = *(v0 + 2600);
          v97 = __swift_project_value_buffer(v96, qword_28140BD10);
          swift_beginAccess();
          (*(v95 + 16))(v94, v97, v96);

          v98 = sub_22B36050C();
          v99 = sub_22B360D1C();

          v100 = os_log_type_enabled(v98, v99);
          v101 = *(v0 + 2648);
          v102 = *(v0 + 2608);
          v103 = *(v0 + 2600);
          v104 = *(v0 + 2536);
          v105 = *(v0 + 2520);
          v106 = *(v0 + 2512);
          if (v100)
          {
            v154 = *(v0 + 2648);
            v157 = *(v0 + 2512);
            v107 = *(v0 + 2464);
            v108 = *(v0 + 2456);
            v152 = *(v0 + 2600);
            v109 = swift_slowAlloc();
            v153 = v104;
            v110 = swift_slowAlloc();
            v159[0] = v110;
            *v109 = 136446210;
            *(v109 + 4) = sub_22B1A7B20(v108, v107, v159);
            _os_log_impl(&dword_22B116000, v98, v99, "[Dropbox] Unknown internal error %{public}s", v109, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v110);
            MEMORY[0x23188F650](v110, -1, -1);
            MEMORY[0x23188F650](v109, -1, -1);

            (*(v102 + 8))(v154, v152);
            v111 = *(v105 + 8);
            v111(v153, v157);
          }

          else
          {

            (*(v102 + 8))(v101, v103);
            v111 = *(v105 + 8);
            v111(v104, v106);
          }

          v111(*(v0 + 2528), *(v0 + 2512));
          v30 = 4;
        }

        v53 = 0;
        v52 = 0;
        v54 = 1;
        v55 = 4;
        goto LABEL_64;
      }

      if (v23 == *MEMORY[0x277D182A8])
      {
        v51 = *(v0 + 2560);
        (*(*(v0 + 2552) + 96))(v51, *(v0 + 2544));
        v52 = *v51;

        v53 = 0;
        v54 = 0;
        v55 = 5;
LABEL_63:
        v30 = 4;
LABEL_64:
        if ((*(*(v0 + 2504) + 115) & 1) == 0)
        {
          v126 = *(v0 + 2496);
          v127 = *(v0 + 2488);
          LOBYTE(v159[0]) = 0;
          *(v0 + 1824) = v52;
          *(v0 + 1832) = v54;
          *(v0 + 1840) = 0u;
          *(v0 + 1856) = 0u;
          *(v0 + 1872) = 2;
          *(v0 + 1880) = v127;
          *(v0 + 1888) = v126;
          *(v0 + 1896) = 0;
          *(v0 + 1904) = 1;
          *(v0 + 1912) = 0;
          *(v0 + 1920) = 1;
          *(v0 + 1928) = 0;
          *(v0 + 1936) = 1;
          *(v0 + 1944) = 0;
          *(v0 + 1952) = 0;
          *(v0 + 1960) = v55;
          *(v0 + 1968) = 0;
          *(v0 + 1976) = v30;
          v128 = v159[0];
          *(v0 + 1984) = v159[0];
          *(v0 + 1656) = v52;
          *(v0 + 1664) = v54;
          *(v0 + 1672) = 0u;
          *(v0 + 1688) = 0u;
          *(v0 + 1704) = 2;
          *(v0 + 1712) = v127;
          *(v0 + 1720) = v126;
          *(v0 + 1728) = 0;
          *(v0 + 1736) = 1;
          *(v0 + 1744) = 0;
          *(v0 + 1752) = 1;
          *(v0 + 1760) = 0;
          *(v0 + 1768) = 1;
          *(v0 + 1776) = 0;
          *(v0 + 1784) = 0;
          *(v0 + 1792) = v55;
          *(v0 + 1800) = 0;
          *(v0 + 1808) = v30;
          *(v0 + 1816) = v128;

          sub_22B2556F4(v0 + 1824, v0 + 1992);
          sub_22B2EC164(v0 + 1656);
          v129 = *(v0 + 1968);
          *(v0 + 1616) = *(v0 + 1952);
          *(v0 + 1632) = v129;
          *(v0 + 1648) = *(v0 + 1984);
          v130 = *(v0 + 1904);
          *(v0 + 1552) = *(v0 + 1888);
          *(v0 + 1568) = v130;
          v131 = *(v0 + 1936);
          *(v0 + 1584) = *(v0 + 1920);
          *(v0 + 1600) = v131;
          v132 = *(v0 + 1840);
          *(v0 + 1488) = *(v0 + 1824);
          *(v0 + 1504) = v132;
          v133 = *(v0 + 1872);
          *(v0 + 1520) = *(v0 + 1856);
          *(v0 + 1536) = v133;
          nullsub_1();
          type metadata accessor for EnergyKitAnalyticsEvent();
          v134 = swift_allocObject();
          sub_22B23E8B0(v0 + 1320);
          v135 = *(v0 + 1464);
          *(v0 + 1280) = *(v0 + 1448);
          *(v0 + 1296) = v135;
          v136 = *(v0 + 1400);
          *(v0 + 1216) = *(v0 + 1384);
          *(v0 + 1232) = v136;
          v137 = *(v0 + 1432);
          *(v0 + 1248) = *(v0 + 1416);
          *(v0 + 1264) = v137;
          v138 = *(v0 + 1336);
          *(v0 + 1152) = *(v0 + 1320);
          *(v0 + 1168) = v138;
          v139 = *(v0 + 1368);
          *(v0 + 1184) = *(v0 + 1352);
          *(v0 + 1200) = v139;
          v140 = *(v0 + 1584);
          *(v134 + 136) = *(v0 + 1600);
          v141 = *(v0 + 1632);
          *(v134 + 152) = *(v0 + 1616);
          *(v134 + 168) = v141;
          v142 = *(v0 + 1520);
          *(v134 + 72) = *(v0 + 1536);
          v143 = *(v0 + 1568);
          *(v134 + 88) = *(v0 + 1552);
          *(v134 + 104) = v143;
          *(v134 + 120) = v140;
          v144 = *(v0 + 1504);
          *(v134 + 24) = *(v0 + 1488);
          *(v134 + 40) = v144;
          *(v134 + 16) = 5;
          *(v0 + 1312) = *(v0 + 1480);
          *(v134 + 184) = *(v0 + 1648);
          *(v134 + 56) = v142;
          sub_22B123284(v0 + 1152, &unk_27D8BACF0, &qword_22B3662D0);
          sub_22B1A81C0(v134);

          if (v53)
          {
            v145 = [objc_opt_self() processInfo];
            v146 = [v145 processName];

            v147 = sub_22B36084C();
            v149 = v148;

            LOWORD(v159[0]) = 258;
            BYTE2(v159[0]) = 18;
            v159[1] = v147;
            v159[2] = v149;
            v159[3] = 0;
            static AutoBugCaptureManager.sendIssue(_:)(v159);
          }
        }

        swift_willThrow();

        v150 = *(v0 + 8);

        return v150();
      }

      if (v23 == *MEMORY[0x277D182D0])
      {
        if (qword_28140A0C8 != -1)
        {
          swift_once();
        }

        v56 = *(v0 + 2640);
        v57 = *(v0 + 2608);
        v58 = *(v0 + 2600);
        v59 = __swift_project_value_buffer(v58, qword_28140BD10);
        swift_beginAccess();
        (*(v57 + 16))(v56, v59, v58);

        v60 = sub_22B36050C();
        v61 = sub_22B360D1C();

        v62 = os_log_type_enabled(v60, v61);
        v63 = *(v0 + 2640);
        v64 = *(v0 + 2608);
        v65 = *(v0 + 2600);
        if (v62)
        {
          v66 = *(v0 + 2448);
          v67 = *(v0 + 2440);
          v68 = swift_slowAlloc();
          v155 = v63;
          v69 = swift_slowAlloc();
          v159[0] = v69;
          *v68 = 136446210;
          *(v68 + 4) = sub_22B1A7B20(v67, v66, v159);
          _os_log_impl(&dword_22B116000, v60, v61, "[Dropbox] Failed CK Token %{public}s", v68, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v69);
          MEMORY[0x23188F650](v69, -1, -1);
          MEMORY[0x23188F650](v68, -1, -1);

          (*(v64 + 8))(v155, v65);
        }

        else
        {

          (*(v64 + 8))(v63, v65);
        }

        v55 = 0;
        v52 = 0;
        v53 = 1;
LABEL_38:
        v30 = 4;
        v54 = 1;
        goto LABEL_64;
      }

      if (v23 == *MEMORY[0x277D182E0])
      {
        if (qword_28140A0C8 != -1)
        {
          swift_once();
        }

        v70 = *(v0 + 2624);
        v71 = *(v0 + 2608);
        v72 = *(v0 + 2600);
        v73 = __swift_project_value_buffer(v72, qword_28140BD10);
        swift_beginAccess();
        (*(v71 + 16))(v70, v73, v72);
        v74 = sub_22B36050C();
        v75 = sub_22B360D1C();
        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          *v76 = 0;
          _os_log_impl(&dword_22B116000, v74, v75, "[Dropbox] Re authentication required. Notify user", v76, 2u);
          MEMORY[0x23188F650](v76, -1, -1);
        }

        v77 = *(v0 + 2624);
        v78 = *(v0 + 2608);
        v79 = *(v0 + 2600);

        (*(v78 + 8))(v77, v79);
        v52 = 0;
        v53 = 1;
        v55 = 2;
        goto LABEL_38;
      }

      if (v23 == *MEMORY[0x277D182C8])
      {
        if (qword_28140A0C8 != -1)
        {
          swift_once();
        }

        v80 = *(v0 + 2632);
        v81 = *(v0 + 2608);
        v82 = *(v0 + 2600);
        v83 = __swift_project_value_buffer(v82, qword_28140BD10);
        swift_beginAccess();
        (*(v81 + 16))(v80, v83, v82);

        v84 = sub_22B36050C();
        v85 = sub_22B360D1C();

        v86 = os_log_type_enabled(v84, v85);
        v87 = *(v0 + 2632);
        v88 = *(v0 + 2608);
        v89 = *(v0 + 2600);
        if (v86)
        {
          v90 = *(v0 + 2464);
          v91 = *(v0 + 2456);
          v92 = swift_slowAlloc();
          v156 = v87;
          v93 = swift_slowAlloc();
          v159[0] = v93;
          *v92 = 136446210;
          *(v92 + 4) = sub_22B1A7B20(v91, v90, v159);
          _os_log_impl(&dword_22B116000, v84, v85, "[Dropbox] Failed Refresh Token %{public}s", v92, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v93);
          MEMORY[0x23188F650](v93, -1, -1);
          MEMORY[0x23188F650](v92, -1, -1);

          (*(v88 + 8))(v156, v89);
        }

        else
        {

          (*(v88 + 8))(v87, v89);
        }

        v52 = 0;
        v53 = 1;
        v30 = 4;
        v55 = 1;
        v54 = 1;
        goto LABEL_64;
      }

      if (v23 == *MEMORY[0x277D18298])
      {

        v53 = 0;
        v52 = 0;
        v54 = 1;
        v55 = 3;
        goto LABEL_63;
      }

      (*(*(v0 + 2552) + 8))(*(v0 + 2560), *(v0 + 2544));
    }

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v112 = *(v0 + 2616);
    v113 = *(v0 + 2608);
    v114 = *(v0 + 2600);
    v115 = __swift_project_value_buffer(v114, qword_28140BD10);
    swift_beginAccess();
    (*(v113 + 16))(v112, v115, v114);
    v116 = v20;
    v117 = sub_22B36050C();
    v118 = sub_22B360D1C();

    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      *v119 = 138543362;
      v121 = v20;
      v122 = _swift_stdlib_bridgeErrorToNSError();
      *(v119 + 4) = v122;
      *v120 = v122;
      _os_log_impl(&dword_22B116000, v117, v118, "[Dropbox] Error refreshing access token %{public}@", v119, 0xCu);
      sub_22B123284(v120, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v120, -1, -1);
      MEMORY[0x23188F650](v119, -1, -1);
    }

    v123 = *(v0 + 2616);
    v124 = *(v0 + 2608);
    v125 = *(v0 + 2600);

    (*(v124 + 8))(v123, v125);
    v53 = 0;
    v52 = 0;
    v54 = 1;
    v55 = 6;
    goto LABEL_63;
  }

  if ((*(v1 + 115) & 1) == 0)
  {
    v31 = *(v0 + 2496);
    v32 = *(v0 + 2488);
    LOBYTE(v159[0]) = 1;
    *(v0 + 816) = 0;
    *(v0 + 824) = 1;
    *(v0 + 832) = 0u;
    *(v0 + 848) = 0u;
    *(v0 + 864) = 2;
    *(v0 + 872) = v32;
    *(v0 + 880) = v31;
    *(v0 + 888) = 0;
    *(v0 + 896) = 1;
    *(v0 + 904) = 0;
    *(v0 + 912) = 1;
    *(v0 + 920) = 0;
    *(v0 + 928) = 1;
    *(v0 + 936) = 0;
    *(v0 + 944) = 0;
    *(v0 + 952) = 0;
    *(v0 + 960) = 1;
    *(v0 + 968) = 0;
    v33 = v159[0];
    *(v0 + 976) = v159[0];
    *(v0 + 648) = 0;
    *(v0 + 656) = 1;
    *(v0 + 664) = 0u;
    *(v0 + 680) = 0u;
    *(v0 + 696) = 2;
    *(v0 + 704) = v32;
    *(v0 + 712) = v31;
    *(v0 + 720) = 0;
    *(v0 + 728) = 1;
    *(v0 + 736) = 0;
    *(v0 + 744) = 1;
    *(v0 + 752) = 0;
    *(v0 + 760) = 1;
    *(v0 + 768) = 0;
    *(v0 + 776) = 0;
    *(v0 + 784) = 0;
    *(v0 + 792) = 1;
    *(v0 + 800) = 0;
    *(v0 + 808) = v33;

    sub_22B2556F4(v0 + 816, v0 + 984);
    sub_22B2EC164(v0 + 648);
    v34 = *(v0 + 960);
    *(v0 + 608) = *(v0 + 944);
    *(v0 + 624) = v34;
    *(v0 + 640) = *(v0 + 976);
    v35 = *(v0 + 896);
    *(v0 + 544) = *(v0 + 880);
    *(v0 + 560) = v35;
    v36 = *(v0 + 928);
    *(v0 + 576) = *(v0 + 912);
    *(v0 + 592) = v36;
    v37 = *(v0 + 832);
    *(v0 + 480) = *(v0 + 816);
    *(v0 + 496) = v37;
    v38 = *(v0 + 864);
    *(v0 + 512) = *(v0 + 848);
    *(v0 + 528) = v38;
    nullsub_1();
    type metadata accessor for EnergyKitAnalyticsEvent();
    v39 = swift_allocObject();
    sub_22B23E8B0(v0 + 312);
    v40 = *(v0 + 456);
    *(v0 + 272) = *(v0 + 440);
    *(v0 + 288) = v40;
    v41 = *(v0 + 392);
    *(v0 + 208) = *(v0 + 376);
    *(v0 + 224) = v41;
    v42 = *(v0 + 424);
    *(v0 + 240) = *(v0 + 408);
    *(v0 + 256) = v42;
    v43 = *(v0 + 328);
    *(v0 + 144) = *(v0 + 312);
    *(v0 + 160) = v43;
    v44 = *(v0 + 360);
    *(v0 + 176) = *(v0 + 344);
    *(v0 + 192) = v44;
    v45 = *(v0 + 576);
    *(v39 + 136) = *(v0 + 592);
    v46 = *(v0 + 624);
    *(v39 + 152) = *(v0 + 608);
    *(v39 + 168) = v46;
    v47 = *(v0 + 512);
    *(v39 + 72) = *(v0 + 528);
    v48 = *(v0 + 560);
    *(v39 + 88) = *(v0 + 544);
    *(v39 + 104) = v48;
    *(v39 + 120) = v45;
    v49 = *(v0 + 496);
    *(v39 + 24) = *(v0 + 480);
    *(v39 + 40) = v49;
    *(v39 + 16) = 6;
    *(v0 + 304) = *(v0 + 472);
    *(v39 + 184) = *(v0 + 640);
    *(v39 + 56) = v47;
    sub_22B123284(v0 + 144, &unk_27D8BACF0, &qword_22B3662D0);
    sub_22B1A81C0(v39);
  }

  *(v0 + 2672) = sub_22B36012C();
  if (qword_28140B470 != -1)
  {
    swift_once();
  }

  v50 = qword_28140BDD8;
  *(v0 + 2680) = qword_28140BDD8;

  return MEMORY[0x2822009F8](sub_22B2B45FC, v50, 0);
}

uint64_t sub_22B2B45FC()
{
  v1 = *(v0[335] + 120);
  v0[336] = v1;
  v2 = v1;
  v3 = swift_task_alloc();
  v0[337] = v3;
  *v3 = v0;
  v3[1] = sub_22B2B46C0;
  v4 = v0[312];
  v5 = v0[311];
  v6 = v0[308];
  v7 = v0[307];

  return MEMORY[0x2821724E8](v7, v6, v5, v4, v2);
}

uint64_t sub_22B2B46C0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2704) = a1;
  *(v3 + 2712) = v1;

  if (v1)
  {
    v4 = *(v3 + 2504);
    v5 = sub_22B2B5808;
  }

  else
  {
    v6 = *(v3 + 2680);

    v5 = sub_22B2B47EC;
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22B2B47EC()
{
  v1 = v0[313];
  v2 = *(v0[335] + 120);
  v0[340] = v2;
  v3 = v2;

  return MEMORY[0x2822009F8](sub_22B2B4864, v1, 0);
}

uint64_t sub_22B2B4864()
{
  v1 = v0[340];
  v0[2] = v0;
  v0[3] = sub_22B2B497C;
  v2 = swift_continuation_init();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD20, &qword_22B366250);
  v0[341] = v3;
  v0[277] = v3;
  v0[274] = v2;
  v0[270] = MEMORY[0x277D85DD0];
  v0[271] = 1107296256;
  v0[272] = sub_22B30F28C;
  v0[273] = &block_descriptor_111;
  [v1 resetWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22B2B497C()
{
  v1 = *(*v0 + 2504);

  return MEMORY[0x2822009F8](sub_22B2B4A70, v1, 0);
}

uint64_t sub_22B2B4A70()
{
  v1 = *(v0 + 2592);
  v2 = *(v0 + 2584);
  v3 = *(v0 + 2576);
  v4 = *(v0 + 2568);

  sub_22B35DE6C();
  sub_22B36017C();
  sub_22B35DDCC();
  v5 = *(v3 + 8);
  *(v0 + 2736) = v5;
  *(v0 + 2744) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v4);
  *(v0 + 2752) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA620, &unk_22B3656B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22B364620;
  *(v6 + 32) = 0x6F54737365636361;
  *(v6 + 40) = 0xEB000000006E656BLL;
  v7 = sub_22B36015C();
  v8 = MEMORY[0x277D837D0];
  *(v6 + 48) = v7;
  *(v6 + 56) = v9;
  *(v6 + 72) = v8;
  strcpy((v6 + 80), "refreshToken");
  *(v6 + 93) = 0;
  *(v6 + 94) = -5120;
  *(v6 + 96) = sub_22B36016C();
  *(v6 + 104) = v10;
  *(v6 + 120) = v8;
  *(v6 + 128) = 0xD000000000000019;
  *(v6 + 136) = 0x800000022B36CE80;
  *(v6 + 168) = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v6 + 144));
  v12 = *(v3 + 16);
  *(v0 + 2760) = v12;
  *(v0 + 2768) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(boxed_opaque_existential_1, v1, v4);
  v13 = sub_22B321AAC(v6);
  *(v0 + 2776) = v13;
  swift_setDeallocating();
  *(v0 + 2784) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAD00, &qword_22B3656C0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v14 = swift_task_alloc();
  *(v0 + 2792) = v14;
  *v14 = v0;
  v14[1] = sub_22B2B4CD0;
  v15 = *(v0 + 2480);
  v16 = *(v0 + 2472);

  return sub_22B2244D0(v16, v15, v13);
}

uint64_t sub_22B2B4CD0(void *a1)
{
  v4 = *v2;
  *(*v2 + 2800) = v1;

  v5 = *(v4 + 2504);
  if (v1)
  {

    v6 = sub_22B2B6688;
  }

  else
  {

    v6 = sub_22B2B4E34;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B2B4E34(uint64_t a1)
{
  v2 = v1[335];
  v1[351] = sub_22B36015C();
  v1[352] = v3;

  return MEMORY[0x2822009F8](sub_22B2B4EA8, v2, 0);
}

uint64_t sub_22B2B4EA8()
{
  v1 = *(v0[335] + 120);
  v0[353] = v1;
  v2 = v1;
  v3 = swift_task_alloc();
  v0[354] = v3;
  *v3 = v0;
  v3[1] = sub_22B2B4F74;
  v4 = v0[352];
  v5 = v0[351];
  v6 = v0[312];
  v7 = v0[311];
  v8 = v0[306];
  v9 = v0[305];

  return MEMORY[0x2821724F8](v7, v6, v9, v8, v5, v4, v2);
}

uint64_t sub_22B2B4F74(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[355] = v2;

  v7 = v6[353];
  if (v2)
  {
    v8 = v6[313];

    v9 = sub_22B2B7524;
  }

  else
  {
    v8 = v6[335];

    v6[356] = a2;
    v6[357] = a1;
    v9 = sub_22B2B50F0;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_22B2B50F0()
{
  v1 = v0[313];
  v2 = *(v0[335] + 120);
  v0[358] = v2;
  v3 = v2;

  return MEMORY[0x2822009F8](sub_22B2B5168, v1, 0);
}

uint64_t sub_22B2B5168()
{
  v1 = v0[358];
  v2 = v0[341];
  v0[10] = v0;
  v0[11] = sub_22B2B5268;
  v3 = swift_continuation_init();
  v0[285] = v2;
  v0[282] = v3;
  v0[278] = MEMORY[0x277D85DD0];
  v0[279] = 1107296256;
  v0[280] = sub_22B30F28C;
  v0[281] = &block_descriptor_116;
  [v1 resetWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_22B2B5268()
{
  v1 = *(*v0 + 2504);

  return MEMORY[0x2822009F8](sub_22B2B535C, v1, 0);
}

uint64_t sub_22B2B535C()
{
  v15 = *(v0 + 2848);
  v16 = *(v0 + 2856);
  v1 = *(v0 + 2760);
  v2 = *(v0 + 2592);
  v3 = *(v0 + 2568);

  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22B364840;
  *(v4 + 32) = 0x6F54737365636361;
  *(v4 + 40) = 0xEB000000006E656BLL;
  v5 = sub_22B36015C();
  v6 = MEMORY[0x277D837D0];
  *(v4 + 48) = v5;
  *(v4 + 56) = v7;
  *(v4 + 72) = v6;
  strcpy((v4 + 80), "refreshToken");
  *(v4 + 93) = 0;
  *(v4 + 94) = -5120;
  *(v4 + 96) = sub_22B36016C();
  *(v4 + 104) = v8;
  *(v4 + 120) = v6;
  *(v4 + 128) = 0xD000000000000019;
  *(v4 + 136) = 0x800000022B36CE80;
  *(v4 + 168) = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v4 + 144));
  v1(boxed_opaque_existential_1, v2, v3);
  *(v4 + 176) = 0x6974636E75466B63;
  *(v4 + 184) = 0xEF6E656B6F546E6FLL;
  *(v4 + 216) = v6;
  *(v4 + 192) = v16;
  *(v4 + 200) = v15;
  v10 = sub_22B321AAC(v4);
  *(v0 + 2872) = v10;
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v11 = swift_task_alloc();
  *(v0 + 2880) = v11;
  *v11 = v0;
  v11[1] = sub_22B2B5574;
  v12 = *(v0 + 2480);
  v13 = *(v0 + 2472);

  return sub_22B2244D0(v13, v12, v10);
}

uint64_t sub_22B2B5574(uint64_t a1)
{
  v4 = *v2;
  v4[361] = v1;

  v5 = v4[313];

  if (v1)
  {
    v6 = sub_22B2B83C0;
  }

  else
  {
    v4[362] = a1;
    v6 = sub_22B2B56CC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B2B56CC()
{
  v1 = *(v0 + 2736);
  v2 = *(v0 + 2592);
  v3 = *(v0 + 2568);

  v1(v2, v3);

  v4 = *(v0 + 8);
  v5 = *(v0 + 2896);

  return v4(v5);
}

uint64_t sub_22B2B5808()
{
  v120 = v0;
  v1 = (v0 + 2432);

  v2 = *(v0 + 2712);
  *(v0 + 2432) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
  if (!swift_dynamicCast())
  {
    goto LABEL_44;
  }

  v4 = (*(*(v0 + 2552) + 88))(*(v0 + 2560), *(v0 + 2544));
  if (v4 == *MEMORY[0x277D182B8])
  {
    v5 = *(v0 + 2560);
    v6 = *(v0 + 2536);
    v7 = *(v0 + 2528);
    v8 = *(v0 + 2520);
    v9 = *(v0 + 2512);
    (*(*(v0 + 2552) + 96))(v5, *(v0 + 2544));
    (*(v8 + 32))(v6, v5, v9);
    (*(v8 + 16))(v7, v6, v9);
    v10 = (*(v8 + 88))(v7, v9);
    if (v10 == *MEMORY[0x277D18310])
    {
      (*(*(v0 + 2520) + 8))(*(v0 + 2536), *(v0 + 2512));
      v11 = 0;
    }

    else if (v10 == *MEMORY[0x277D18308])
    {
      (*(*(v0 + 2520) + 8))(*(v0 + 2536), *(v0 + 2512));
      v11 = 1;
    }

    else if (v10 == *MEMORY[0x277D18318])
    {
      (*(*(v0 + 2520) + 8))(*(v0 + 2536), *(v0 + 2512));
      v11 = 2;
    }

    else if (v10 == *MEMORY[0x277D18300])
    {
      (*(*(v0 + 2520) + 8))(*(v0 + 2536), *(v0 + 2512));
      v11 = 3;
    }

    else
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v55 = *(v0 + 2648);
      v56 = *(v0 + 2608);
      v57 = *(v0 + 2600);
      v58 = __swift_project_value_buffer(v57, qword_28140BD10);
      swift_beginAccess();
      (*(v56 + 16))(v55, v58, v57);

      v59 = sub_22B36050C();
      v60 = sub_22B360D1C();

      v61 = os_log_type_enabled(v59, v60);
      v62 = *(v0 + 2648);
      v63 = *(v0 + 2608);
      v64 = *(v0 + 2600);
      v65 = *(v0 + 2536);
      v66 = *(v0 + 2520);
      v67 = *(v0 + 2512);
      if (v61)
      {
        v115 = *(v0 + 2648);
        v118 = *(v0 + 2512);
        v68 = *(v0 + 2464);
        v69 = *(v0 + 2456);
        v113 = *(v0 + 2600);
        v70 = swift_slowAlloc();
        v114 = v65;
        v71 = swift_slowAlloc();
        v119[0] = v71;
        *v70 = 136446210;
        *(v70 + 4) = sub_22B1A7B20(v69, v68, v119);
        _os_log_impl(&dword_22B116000, v59, v60, "[Dropbox] Unknown internal error %{public}s", v70, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v71);
        MEMORY[0x23188F650](v71, -1, -1);
        MEMORY[0x23188F650](v70, -1, -1);

        (*(v63 + 8))(v115, v113);
        v72 = *(v66 + 8);
        v72(v114, v118);
      }

      else
      {

        (*(v63 + 8))(v62, v64);
        v72 = *(v66 + 8);
        v72(v65, v67);
      }

      v72(*(v0 + 2528), *(v0 + 2512));
      v11 = 4;
    }

    v14 = 0;
    v13 = 0;
    v15 = 1;
    v16 = 4;
    goto LABEL_50;
  }

  if (v4 == *MEMORY[0x277D182A8])
  {
    v12 = *(v0 + 2560);
    (*(*(v0 + 2552) + 96))(v12, *(v0 + 2544));
    v13 = *v12;

    v14 = 0;
    v15 = 0;
    v16 = 5;
LABEL_49:
    v11 = 4;
    goto LABEL_50;
  }

  if (v4 == *MEMORY[0x277D182D0])
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v17 = *(v0 + 2640);
    v18 = *(v0 + 2608);
    v19 = *(v0 + 2600);
    v20 = __swift_project_value_buffer(v19, qword_28140BD10);
    swift_beginAccess();
    (*(v18 + 16))(v17, v20, v19);

    v21 = sub_22B36050C();
    v22 = sub_22B360D1C();

    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 2640);
    v25 = *(v0 + 2608);
    v26 = *(v0 + 2600);
    if (v23)
    {
      v27 = *(v0 + 2448);
      v28 = *(v0 + 2440);
      v29 = swift_slowAlloc();
      v116 = v24;
      v30 = swift_slowAlloc();
      v119[0] = v30;
      *v29 = 136446210;
      *(v29 + 4) = sub_22B1A7B20(v28, v27, v119);
      _os_log_impl(&dword_22B116000, v21, v22, "[Dropbox] Failed CK Token %{public}s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x23188F650](v30, -1, -1);
      MEMORY[0x23188F650](v29, -1, -1);

      (*(v25 + 8))(v116, v26);
    }

    else
    {

      (*(v25 + 8))(v24, v26);
    }

    v16 = 0;
    v13 = 0;
    v14 = 1;
LABEL_24:
    v11 = 4;
    v15 = 1;
    goto LABEL_50;
  }

  if (v4 == *MEMORY[0x277D182E0])
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v31 = *(v0 + 2624);
    v32 = *(v0 + 2608);
    v33 = *(v0 + 2600);
    v34 = __swift_project_value_buffer(v33, qword_28140BD10);
    swift_beginAccess();
    (*(v32 + 16))(v31, v34, v33);
    v35 = sub_22B36050C();
    v36 = sub_22B360D1C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_22B116000, v35, v36, "[Dropbox] Re authentication required. Notify user", v37, 2u);
      MEMORY[0x23188F650](v37, -1, -1);
    }

    v38 = *(v0 + 2624);
    v39 = *(v0 + 2608);
    v40 = *(v0 + 2600);

    (*(v39 + 8))(v38, v40);
    v13 = 0;
    v14 = 1;
    v16 = 2;
    goto LABEL_24;
  }

  if (v4 != *MEMORY[0x277D182C8])
  {
    if (v4 == *MEMORY[0x277D18298])
    {

      v14 = 0;
      v13 = 0;
      v15 = 1;
      v16 = 3;
      goto LABEL_49;
    }

    (*(*(v0 + 2552) + 8))(*(v0 + 2560), *(v0 + 2544));
LABEL_44:

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v73 = *(v0 + 2616);
    v74 = *(v0 + 2608);
    v75 = *(v0 + 2600);
    v76 = __swift_project_value_buffer(v75, qword_28140BD10);
    swift_beginAccess();
    (*(v74 + 16))(v73, v76, v75);
    v77 = v2;
    v78 = sub_22B36050C();
    v79 = sub_22B360D1C();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      *v80 = 138543362;
      v82 = v2;
      v83 = _swift_stdlib_bridgeErrorToNSError();
      *(v80 + 4) = v83;
      *v81 = v83;
      _os_log_impl(&dword_22B116000, v78, v79, "[Dropbox] Error refreshing access token %{public}@", v80, 0xCu);
      sub_22B123284(v81, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v81, -1, -1);
      MEMORY[0x23188F650](v80, -1, -1);
    }

    v84 = *(v0 + 2616);
    v85 = *(v0 + 2608);
    v86 = *(v0 + 2600);

    (*(v85 + 8))(v84, v86);
    v14 = 0;
    v13 = 0;
    v15 = 1;
    v16 = 6;
    goto LABEL_49;
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v41 = *(v0 + 2632);
  v42 = *(v0 + 2608);
  v43 = *(v0 + 2600);
  v44 = __swift_project_value_buffer(v43, qword_28140BD10);
  swift_beginAccess();
  (*(v42 + 16))(v41, v44, v43);

  v45 = sub_22B36050C();
  v46 = sub_22B360D1C();

  v47 = os_log_type_enabled(v45, v46);
  v48 = *(v0 + 2632);
  v49 = *(v0 + 2608);
  v50 = *(v0 + 2600);
  if (v47)
  {
    v51 = *(v0 + 2464);
    v52 = *(v0 + 2456);
    v53 = swift_slowAlloc();
    v117 = v48;
    v54 = swift_slowAlloc();
    v119[0] = v54;
    *v53 = 136446210;
    *(v53 + 4) = sub_22B1A7B20(v52, v51, v119);
    _os_log_impl(&dword_22B116000, v45, v46, "[Dropbox] Failed Refresh Token %{public}s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v54);
    MEMORY[0x23188F650](v54, -1, -1);
    MEMORY[0x23188F650](v53, -1, -1);

    (*(v49 + 8))(v117, v50);
  }

  else
  {

    (*(v49 + 8))(v48, v50);
  }

  v13 = 0;
  v14 = 1;
  v11 = 4;
  v16 = 1;
  v15 = 1;
LABEL_50:
  if ((*(*(v0 + 2504) + 115) & 1) == 0)
  {
    v87 = *(v0 + 2496);
    v88 = *(v0 + 2488);
    LOBYTE(v119[0]) = 0;
    *(v0 + 1824) = v13;
    *(v0 + 1832) = v15;
    *(v0 + 1840) = 0u;
    *(v0 + 1856) = 0u;
    *(v0 + 1872) = 2;
    *(v0 + 1880) = v88;
    *(v0 + 1888) = v87;
    *(v0 + 1896) = 0;
    *(v0 + 1904) = 1;
    *(v0 + 1912) = 0;
    *(v0 + 1920) = 1;
    *(v0 + 1928) = 0;
    *(v0 + 1936) = 1;
    *(v0 + 1944) = 0;
    *(v0 + 1952) = 0;
    *(v0 + 1960) = v16;
    *(v0 + 1968) = 0;
    *(v0 + 1976) = v11;
    v89 = v119[0];
    *(v0 + 1984) = v119[0];
    *(v0 + 1656) = v13;
    *(v0 + 1664) = v15;
    *(v0 + 1672) = 0u;
    *(v0 + 1688) = 0u;
    *(v0 + 1704) = 2;
    *(v0 + 1712) = v88;
    *(v0 + 1720) = v87;
    *(v0 + 1728) = 0;
    *(v0 + 1736) = 1;
    *(v0 + 1744) = 0;
    *(v0 + 1752) = 1;
    *(v0 + 1760) = 0;
    *(v0 + 1768) = 1;
    *(v0 + 1776) = 0;
    *(v0 + 1784) = 0;
    *(v0 + 1792) = v16;
    *(v0 + 1800) = 0;
    *(v0 + 1808) = v11;
    *(v0 + 1816) = v89;

    sub_22B2556F4(v0 + 1824, v0 + 1992);
    sub_22B2EC164(v0 + 1656);
    v90 = *(v0 + 1968);
    *(v0 + 1616) = *(v0 + 1952);
    *(v0 + 1632) = v90;
    *(v0 + 1648) = *(v0 + 1984);
    v91 = *(v0 + 1904);
    *(v0 + 1552) = *(v0 + 1888);
    *(v0 + 1568) = v91;
    v92 = *(v0 + 1936);
    *(v0 + 1584) = *(v0 + 1920);
    *(v0 + 1600) = v92;
    v93 = *(v0 + 1840);
    *(v0 + 1488) = *(v0 + 1824);
    *(v0 + 1504) = v93;
    v94 = *(v0 + 1872);
    *(v0 + 1520) = *(v0 + 1856);
    *(v0 + 1536) = v94;
    nullsub_1();
    type metadata accessor for EnergyKitAnalyticsEvent();
    v95 = swift_allocObject();
    sub_22B23E8B0(v0 + 1320);
    v96 = *(v0 + 1464);
    *(v0 + 1280) = *(v0 + 1448);
    *(v0 + 1296) = v96;
    v97 = *(v0 + 1400);
    *(v0 + 1216) = *(v0 + 1384);
    *(v0 + 1232) = v97;
    v98 = *(v0 + 1432);
    *(v0 + 1248) = *(v0 + 1416);
    *(v0 + 1264) = v98;
    v99 = *(v0 + 1336);
    *(v0 + 1152) = *(v0 + 1320);
    *(v0 + 1168) = v99;
    v100 = *(v0 + 1368);
    *(v0 + 1184) = *(v0 + 1352);
    *(v0 + 1200) = v100;
    v101 = *(v0 + 1584);
    *(v95 + 136) = *(v0 + 1600);
    v102 = *(v0 + 1632);
    *(v95 + 152) = *(v0 + 1616);
    *(v95 + 168) = v102;
    v103 = *(v0 + 1520);
    *(v95 + 72) = *(v0 + 1536);
    v104 = *(v0 + 1568);
    *(v95 + 88) = *(v0 + 1552);
    *(v95 + 104) = v104;
    *(v95 + 120) = v101;
    v105 = *(v0 + 1504);
    *(v95 + 24) = *(v0 + 1488);
    *(v95 + 40) = v105;
    *(v95 + 16) = 5;
    *(v0 + 1312) = *(v0 + 1480);
    *(v95 + 184) = *(v0 + 1648);
    *(v95 + 56) = v103;
    sub_22B123284(v0 + 1152, &unk_27D8BACF0, &qword_22B3662D0);
    sub_22B1A81C0(v95);

    if (v14)
    {
      v106 = [objc_opt_self() processInfo];
      v107 = [v106 processName];

      v108 = sub_22B36084C();
      v110 = v109;

      LOWORD(v119[0]) = 258;
      BYTE2(v119[0]) = 18;
      v119[1] = v108;
      v119[2] = v110;
      v119[3] = 0;
      static AutoBugCaptureManager.sendIssue(_:)(v119);
    }
  }

  swift_willThrow();

  v111 = *(v0 + 8);

  return v111();
}

uint64_t sub_22B2B6688()
{
  v123 = v0;
  v1 = (v0 + 2432);
  v2 = *(v0 + 2736);
  v3 = *(v0 + 2592);
  v4 = *(v0 + 2568);

  v2(v3, v4);
  v5 = *(v0 + 2800);
  *(v0 + 2432) = v5;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
  if (!swift_dynamicCast())
  {
    goto LABEL_44;
  }

  v7 = (*(*(v0 + 2552) + 88))(*(v0 + 2560), *(v0 + 2544));
  if (v7 == *MEMORY[0x277D182B8])
  {
    v8 = *(v0 + 2560);
    v9 = *(v0 + 2536);
    v10 = *(v0 + 2528);
    v11 = *(v0 + 2520);
    v12 = *(v0 + 2512);
    (*(*(v0 + 2552) + 96))(v8, *(v0 + 2544));
    (*(v11 + 32))(v9, v8, v12);
    (*(v11 + 16))(v10, v9, v12);
    v13 = (*(v11 + 88))(v10, v12);
    if (v13 == *MEMORY[0x277D18310])
    {
      (*(*(v0 + 2520) + 8))(*(v0 + 2536), *(v0 + 2512));
      v14 = 0;
    }

    else if (v13 == *MEMORY[0x277D18308])
    {
      (*(*(v0 + 2520) + 8))(*(v0 + 2536), *(v0 + 2512));
      v14 = 1;
    }

    else if (v13 == *MEMORY[0x277D18318])
    {
      (*(*(v0 + 2520) + 8))(*(v0 + 2536), *(v0 + 2512));
      v14 = 2;
    }

    else if (v13 == *MEMORY[0x277D18300])
    {
      (*(*(v0 + 2520) + 8))(*(v0 + 2536), *(v0 + 2512));
      v14 = 3;
    }

    else
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v58 = *(v0 + 2648);
      v59 = *(v0 + 2608);
      v60 = *(v0 + 2600);
      v61 = __swift_project_value_buffer(v60, qword_28140BD10);
      swift_beginAccess();
      (*(v59 + 16))(v58, v61, v60);

      v62 = sub_22B36050C();
      v63 = sub_22B360D1C();

      v64 = os_log_type_enabled(v62, v63);
      v65 = *(v0 + 2648);
      v66 = *(v0 + 2608);
      v67 = *(v0 + 2600);
      v68 = *(v0 + 2536);
      v69 = *(v0 + 2520);
      v70 = *(v0 + 2512);
      if (v64)
      {
        v118 = *(v0 + 2648);
        v121 = *(v0 + 2512);
        v71 = *(v0 + 2464);
        v72 = *(v0 + 2456);
        v116 = *(v0 + 2600);
        v73 = swift_slowAlloc();
        v117 = v68;
        v74 = swift_slowAlloc();
        v122[0] = v74;
        *v73 = 136446210;
        *(v73 + 4) = sub_22B1A7B20(v72, v71, v122);
        _os_log_impl(&dword_22B116000, v62, v63, "[Dropbox] Unknown internal error %{public}s", v73, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v74);
        MEMORY[0x23188F650](v74, -1, -1);
        MEMORY[0x23188F650](v73, -1, -1);

        (*(v66 + 8))(v118, v116);
        v75 = *(v69 + 8);
        v75(v117, v121);
      }

      else
      {

        (*(v66 + 8))(v65, v67);
        v75 = *(v69 + 8);
        v75(v68, v70);
      }

      v75(*(v0 + 2528), *(v0 + 2512));
      v14 = 4;
    }

    v17 = 0;
    v16 = 0;
    v18 = 1;
    v19 = 4;
    goto LABEL_50;
  }

  if (v7 == *MEMORY[0x277D182A8])
  {
    v15 = *(v0 + 2560);
    (*(*(v0 + 2552) + 96))(v15, *(v0 + 2544));
    v16 = *v15;

    v17 = 0;
    v18 = 0;
    v19 = 5;
LABEL_49:
    v14 = 4;
    goto LABEL_50;
  }

  if (v7 == *MEMORY[0x277D182D0])
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 2640);
    v21 = *(v0 + 2608);
    v22 = *(v0 + 2600);
    v23 = __swift_project_value_buffer(v22, qword_28140BD10);
    swift_beginAccess();
    (*(v21 + 16))(v20, v23, v22);

    v24 = sub_22B36050C();
    v25 = sub_22B360D1C();

    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 2640);
    v28 = *(v0 + 2608);
    v29 = *(v0 + 2600);
    if (v26)
    {
      v30 = *(v0 + 2448);
      v31 = *(v0 + 2440);
      v32 = swift_slowAlloc();
      v119 = v27;
      v33 = swift_slowAlloc();
      v122[0] = v33;
      *v32 = 136446210;
      *(v32 + 4) = sub_22B1A7B20(v31, v30, v122);
      _os_log_impl(&dword_22B116000, v24, v25, "[Dropbox] Failed CK Token %{public}s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x23188F650](v33, -1, -1);
      MEMORY[0x23188F650](v32, -1, -1);

      (*(v28 + 8))(v119, v29);
    }

    else
    {

      (*(v28 + 8))(v27, v29);
    }

    v19 = 0;
    v16 = 0;
    v17 = 1;
LABEL_24:
    v14 = 4;
    v18 = 1;
    goto LABEL_50;
  }

  if (v7 == *MEMORY[0x277D182E0])
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v34 = *(v0 + 2624);
    v35 = *(v0 + 2608);
    v36 = *(v0 + 2600);
    v37 = __swift_project_value_buffer(v36, qword_28140BD10);
    swift_beginAccess();
    (*(v35 + 16))(v34, v37, v36);
    v38 = sub_22B36050C();
    v39 = sub_22B360D1C();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_22B116000, v38, v39, "[Dropbox] Re authentication required. Notify user", v40, 2u);
      MEMORY[0x23188F650](v40, -1, -1);
    }

    v41 = *(v0 + 2624);
    v42 = *(v0 + 2608);
    v43 = *(v0 + 2600);

    (*(v42 + 8))(v41, v43);
    v16 = 0;
    v17 = 1;
    v19 = 2;
    goto LABEL_24;
  }

  if (v7 != *MEMORY[0x277D182C8])
  {
    if (v7 == *MEMORY[0x277D18298])
    {

      v17 = 0;
      v16 = 0;
      v18 = 1;
      v19 = 3;
      goto LABEL_49;
    }

    (*(*(v0 + 2552) + 8))(*(v0 + 2560), *(v0 + 2544));
LABEL_44:

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v76 = *(v0 + 2616);
    v77 = *(v0 + 2608);
    v78 = *(v0 + 2600);
    v79 = __swift_project_value_buffer(v78, qword_28140BD10);
    swift_beginAccess();
    (*(v77 + 16))(v76, v79, v78);
    v80 = v5;
    v81 = sub_22B36050C();
    v82 = sub_22B360D1C();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      *v83 = 138543362;
      v85 = v5;
      v86 = _swift_stdlib_bridgeErrorToNSError();
      *(v83 + 4) = v86;
      *v84 = v86;
      _os_log_impl(&dword_22B116000, v81, v82, "[Dropbox] Error refreshing access token %{public}@", v83, 0xCu);
      sub_22B123284(v84, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v84, -1, -1);
      MEMORY[0x23188F650](v83, -1, -1);
    }

    v87 = *(v0 + 2616);
    v88 = *(v0 + 2608);
    v89 = *(v0 + 2600);

    (*(v88 + 8))(v87, v89);
    v17 = 0;
    v16 = 0;
    v18 = 1;
    v19 = 6;
    goto LABEL_49;
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v44 = *(v0 + 2632);
  v45 = *(v0 + 2608);
  v46 = *(v0 + 2600);
  v47 = __swift_project_value_buffer(v46, qword_28140BD10);
  swift_beginAccess();
  (*(v45 + 16))(v44, v47, v46);

  v48 = sub_22B36050C();
  v49 = sub_22B360D1C();

  v50 = os_log_type_enabled(v48, v49);
  v51 = *(v0 + 2632);
  v52 = *(v0 + 2608);
  v53 = *(v0 + 2600);
  if (v50)
  {
    v54 = *(v0 + 2464);
    v55 = *(v0 + 2456);
    v56 = swift_slowAlloc();
    v120 = v51;
    v57 = swift_slowAlloc();
    v122[0] = v57;
    *v56 = 136446210;
    *(v56 + 4) = sub_22B1A7B20(v55, v54, v122);
    _os_log_impl(&dword_22B116000, v48, v49, "[Dropbox] Failed Refresh Token %{public}s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v57);
    MEMORY[0x23188F650](v57, -1, -1);
    MEMORY[0x23188F650](v56, -1, -1);

    (*(v52 + 8))(v120, v53);
  }

  else
  {

    (*(v52 + 8))(v51, v53);
  }

  v16 = 0;
  v17 = 1;
  v14 = 4;
  v19 = 1;
  v18 = 1;
LABEL_50:
  if ((*(*(v0 + 2504) + 115) & 1) == 0)
  {
    v90 = *(v0 + 2496);
    v91 = *(v0 + 2488);
    LOBYTE(v122[0]) = 0;
    *(v0 + 1824) = v16;
    *(v0 + 1832) = v18;
    *(v0 + 1840) = 0u;
    *(v0 + 1856) = 0u;
    *(v0 + 1872) = 2;
    *(v0 + 1880) = v91;
    *(v0 + 1888) = v90;
    *(v0 + 1896) = 0;
    *(v0 + 1904) = 1;
    *(v0 + 1912) = 0;
    *(v0 + 1920) = 1;
    *(v0 + 1928) = 0;
    *(v0 + 1936) = 1;
    *(v0 + 1944) = 1;
    *(v0 + 1952) = 0;
    *(v0 + 1960) = v19;
    *(v0 + 1968) = 0;
    *(v0 + 1976) = v14;
    v92 = v122[0];
    *(v0 + 1984) = v122[0];
    *(v0 + 1656) = v16;
    *(v0 + 1664) = v18;
    *(v0 + 1672) = 0u;
    *(v0 + 1688) = 0u;
    *(v0 + 1704) = 2;
    *(v0 + 1712) = v91;
    *(v0 + 1720) = v90;
    *(v0 + 1728) = 0;
    *(v0 + 1736) = 1;
    *(v0 + 1744) = 0;
    *(v0 + 1752) = 1;
    *(v0 + 1760) = 0;
    *(v0 + 1768) = 1;
    *(v0 + 1776) = 1;
    *(v0 + 1784) = 0;
    *(v0 + 1792) = v19;
    *(v0 + 1800) = 0;
    *(v0 + 1808) = v14;
    *(v0 + 1816) = v92;

    sub_22B2556F4(v0 + 1824, v0 + 1992);
    sub_22B2EC164(v0 + 1656);
    v93 = *(v0 + 1968);
    *(v0 + 1616) = *(v0 + 1952);
    *(v0 + 1632) = v93;
    *(v0 + 1648) = *(v0 + 1984);
    v94 = *(v0 + 1904);
    *(v0 + 1552) = *(v0 + 1888);
    *(v0 + 1568) = v94;
    v95 = *(v0 + 1936);
    *(v0 + 1584) = *(v0 + 1920);
    *(v0 + 1600) = v95;
    v96 = *(v0 + 1840);
    *(v0 + 1488) = *(v0 + 1824);
    *(v0 + 1504) = v96;
    v97 = *(v0 + 1872);
    *(v0 + 1520) = *(v0 + 1856);
    *(v0 + 1536) = v97;
    nullsub_1();
    type metadata accessor for EnergyKitAnalyticsEvent();
    v98 = swift_allocObject();
    sub_22B23E8B0(v0 + 1320);
    v99 = *(v0 + 1464);
    *(v0 + 1280) = *(v0 + 1448);
    *(v0 + 1296) = v99;
    v100 = *(v0 + 1400);
    *(v0 + 1216) = *(v0 + 1384);
    *(v0 + 1232) = v100;
    v101 = *(v0 + 1432);
    *(v0 + 1248) = *(v0 + 1416);
    *(v0 + 1264) = v101;
    v102 = *(v0 + 1336);
    *(v0 + 1152) = *(v0 + 1320);
    *(v0 + 1168) = v102;
    v103 = *(v0 + 1368);
    *(v0 + 1184) = *(v0 + 1352);
    *(v0 + 1200) = v103;
    v104 = *(v0 + 1584);
    *(v98 + 136) = *(v0 + 1600);
    v105 = *(v0 + 1632);
    *(v98 + 152) = *(v0 + 1616);
    *(v98 + 168) = v105;
    v106 = *(v0 + 1520);
    *(v98 + 72) = *(v0 + 1536);
    v107 = *(v0 + 1568);
    *(v98 + 88) = *(v0 + 1552);
    *(v98 + 104) = v107;
    *(v98 + 120) = v104;
    v108 = *(v0 + 1504);
    *(v98 + 24) = *(v0 + 1488);
    *(v98 + 40) = v108;
    *(v98 + 16) = 5;
    *(v0 + 1312) = *(v0 + 1480);
    *(v98 + 184) = *(v0 + 1648);
    *(v98 + 56) = v106;
    sub_22B123284(v0 + 1152, &unk_27D8BACF0, &qword_22B3662D0);
    sub_22B1A81C0(v98);

    if (v17)
    {
      v109 = [objc_opt_self() processInfo];
      v110 = [v109 processName];

      v111 = sub_22B36084C();
      v113 = v112;

      LOWORD(v122[0]) = 258;
      BYTE2(v122[0]) = 18;
      v122[1] = v111;
      v122[2] = v113;
      v122[3] = 0;
      static AutoBugCaptureManager.sendIssue(_:)(v122);
    }
  }

  swift_willThrow();

  v114 = *(v0 + 8);

  return v114();
}

uint64_t sub_22B2B7524()
{
  v123 = v0;
  v1 = (v0 + 2432);
  v2 = *(v0 + 2736);
  v3 = *(v0 + 2592);
  v4 = *(v0 + 2568);

  v2(v3, v4);
  v5 = *(v0 + 2840);
  *(v0 + 2432) = v5;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
  if (!swift_dynamicCast())
  {
    goto LABEL_44;
  }

  v7 = (*(*(v0 + 2552) + 88))(*(v0 + 2560), *(v0 + 2544));
  if (v7 == *MEMORY[0x277D182B8])
  {
    v8 = *(v0 + 2560);
    v9 = *(v0 + 2536);
    v10 = *(v0 + 2528);
    v11 = *(v0 + 2520);
    v12 = *(v0 + 2512);
    (*(*(v0 + 2552) + 96))(v8, *(v0 + 2544));
    (*(v11 + 32))(v9, v8, v12);
    (*(v11 + 16))(v10, v9, v12);
    v13 = (*(v11 + 88))(v10, v12);
    if (v13 == *MEMORY[0x277D18310])
    {
      (*(*(v0 + 2520) + 8))(*(v0 + 2536), *(v0 + 2512));
      v14 = 0;
    }

    else if (v13 == *MEMORY[0x277D18308])
    {
      (*(*(v0 + 2520) + 8))(*(v0 + 2536), *(v0 + 2512));
      v14 = 1;
    }

    else if (v13 == *MEMORY[0x277D18318])
    {
      (*(*(v0 + 2520) + 8))(*(v0 + 2536), *(v0 + 2512));
      v14 = 2;
    }

    else if (v13 == *MEMORY[0x277D18300])
    {
      (*(*(v0 + 2520) + 8))(*(v0 + 2536), *(v0 + 2512));
      v14 = 3;
    }

    else
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v58 = *(v0 + 2648);
      v59 = *(v0 + 2608);
      v60 = *(v0 + 2600);
      v61 = __swift_project_value_buffer(v60, qword_28140BD10);
      swift_beginAccess();
      (*(v59 + 16))(v58, v61, v60);

      v62 = sub_22B36050C();
      v63 = sub_22B360D1C();

      v64 = os_log_type_enabled(v62, v63);
      v65 = *(v0 + 2648);
      v66 = *(v0 + 2608);
      v67 = *(v0 + 2600);
      v68 = *(v0 + 2536);
      v69 = *(v0 + 2520);
      v70 = *(v0 + 2512);
      if (v64)
      {
        v118 = *(v0 + 2648);
        v121 = *(v0 + 2512);
        v71 = *(v0 + 2464);
        v72 = *(v0 + 2456);
        v116 = *(v0 + 2600);
        v73 = swift_slowAlloc();
        v117 = v68;
        v74 = swift_slowAlloc();
        v122[0] = v74;
        *v73 = 136446210;
        *(v73 + 4) = sub_22B1A7B20(v72, v71, v122);
        _os_log_impl(&dword_22B116000, v62, v63, "[Dropbox] Unknown internal error %{public}s", v73, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v74);
        MEMORY[0x23188F650](v74, -1, -1);
        MEMORY[0x23188F650](v73, -1, -1);

        (*(v66 + 8))(v118, v116);
        v75 = *(v69 + 8);
        v75(v117, v121);
      }

      else
      {

        (*(v66 + 8))(v65, v67);
        v75 = *(v69 + 8);
        v75(v68, v70);
      }

      v75(*(v0 + 2528), *(v0 + 2512));
      v14 = 4;
    }

    v17 = 0;
    v16 = 0;
    v18 = 1;
    v19 = 4;
    goto LABEL_50;
  }

  if (v7 == *MEMORY[0x277D182A8])
  {
    v15 = *(v0 + 2560);
    (*(*(v0 + 2552) + 96))(v15, *(v0 + 2544));
    v16 = *v15;

    v17 = 0;
    v18 = 0;
    v19 = 5;
LABEL_49:
    v14 = 4;
    goto LABEL_50;
  }

  if (v7 == *MEMORY[0x277D182D0])
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 2640);
    v21 = *(v0 + 2608);
    v22 = *(v0 + 2600);
    v23 = __swift_project_value_buffer(v22, qword_28140BD10);
    swift_beginAccess();
    (*(v21 + 16))(v20, v23, v22);

    v24 = sub_22B36050C();
    v25 = sub_22B360D1C();

    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 2640);
    v28 = *(v0 + 2608);
    v29 = *(v0 + 2600);
    if (v26)
    {
      v30 = *(v0 + 2448);
      v31 = *(v0 + 2440);
      v32 = swift_slowAlloc();
      v119 = v27;
      v33 = swift_slowAlloc();
      v122[0] = v33;
      *v32 = 136446210;
      *(v32 + 4) = sub_22B1A7B20(v31, v30, v122);
      _os_log_impl(&dword_22B116000, v24, v25, "[Dropbox] Failed CK Token %{public}s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x23188F650](v33, -1, -1);
      MEMORY[0x23188F650](v32, -1, -1);

      (*(v28 + 8))(v119, v29);
    }

    else
    {

      (*(v28 + 8))(v27, v29);
    }

    v19 = 0;
    v16 = 0;
    v17 = 1;
LABEL_24:
    v14 = 4;
    v18 = 1;
    goto LABEL_50;
  }

  if (v7 == *MEMORY[0x277D182E0])
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v34 = *(v0 + 2624);
    v35 = *(v0 + 2608);
    v36 = *(v0 + 2600);
    v37 = __swift_project_value_buffer(v36, qword_28140BD10);
    swift_beginAccess();
    (*(v35 + 16))(v34, v37, v36);
    v38 = sub_22B36050C();
    v39 = sub_22B360D1C();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_22B116000, v38, v39, "[Dropbox] Re authentication required. Notify user", v40, 2u);
      MEMORY[0x23188F650](v40, -1, -1);
    }

    v41 = *(v0 + 2624);
    v42 = *(v0 + 2608);
    v43 = *(v0 + 2600);

    (*(v42 + 8))(v41, v43);
    v16 = 0;
    v17 = 1;
    v19 = 2;
    goto LABEL_24;
  }

  if (v7 != *MEMORY[0x277D182C8])
  {
    if (v7 == *MEMORY[0x277D18298])
    {

      v17 = 0;
      v16 = 0;
      v18 = 1;
      v19 = 3;
      goto LABEL_49;
    }

    (*(*(v0 + 2552) + 8))(*(v0 + 2560), *(v0 + 2544));
LABEL_44:

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v76 = *(v0 + 2616);
    v77 = *(v0 + 2608);
    v78 = *(v0 + 2600);
    v79 = __swift_project_value_buffer(v78, qword_28140BD10);
    swift_beginAccess();
    (*(v77 + 16))(v76, v79, v78);
    v80 = v5;
    v81 = sub_22B36050C();
    v82 = sub_22B360D1C();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      *v83 = 138543362;
      v85 = v5;
      v86 = _swift_stdlib_bridgeErrorToNSError();
      *(v83 + 4) = v86;
      *v84 = v86;
      _os_log_impl(&dword_22B116000, v81, v82, "[Dropbox] Error refreshing access token %{public}@", v83, 0xCu);
      sub_22B123284(v84, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v84, -1, -1);
      MEMORY[0x23188F650](v83, -1, -1);
    }

    v87 = *(v0 + 2616);
    v88 = *(v0 + 2608);
    v89 = *(v0 + 2600);

    (*(v88 + 8))(v87, v89);
    v17 = 0;
    v16 = 0;
    v18 = 1;
    v19 = 6;
    goto LABEL_49;
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v44 = *(v0 + 2632);
  v45 = *(v0 + 2608);
  v46 = *(v0 + 2600);
  v47 = __swift_project_value_buffer(v46, qword_28140BD10);
  swift_beginAccess();
  (*(v45 + 16))(v44, v47, v46);

  v48 = sub_22B36050C();
  v49 = sub_22B360D1C();

  v50 = os_log_type_enabled(v48, v49);
  v51 = *(v0 + 2632);
  v52 = *(v0 + 2608);
  v53 = *(v0 + 2600);
  if (v50)
  {
    v54 = *(v0 + 2464);
    v55 = *(v0 + 2456);
    v56 = swift_slowAlloc();
    v120 = v51;
    v57 = swift_slowAlloc();
    v122[0] = v57;
    *v56 = 136446210;
    *(v56 + 4) = sub_22B1A7B20(v55, v54, v122);
    _os_log_impl(&dword_22B116000, v48, v49, "[Dropbox] Failed Refresh Token %{public}s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v57);
    MEMORY[0x23188F650](v57, -1, -1);
    MEMORY[0x23188F650](v56, -1, -1);

    (*(v52 + 8))(v120, v53);
  }

  else
  {

    (*(v52 + 8))(v51, v53);
  }

  v16 = 0;
  v17 = 1;
  v14 = 4;
  v19 = 1;
  v18 = 1;
LABEL_50:
  if ((*(*(v0 + 2504) + 115) & 1) == 0)
  {
    v90 = *(v0 + 2496);
    v91 = *(v0 + 2488);
    LOBYTE(v122[0]) = 0;
    *(v0 + 1824) = v16;
    *(v0 + 1832) = v18;
    *(v0 + 1840) = 0u;
    *(v0 + 1856) = 0u;
    *(v0 + 1872) = 2;
    *(v0 + 1880) = v91;
    *(v0 + 1888) = v90;
    *(v0 + 1896) = 0;
    *(v0 + 1904) = 1;
    *(v0 + 1912) = 0;
    *(v0 + 1920) = 1;
    *(v0 + 1928) = 0;
    *(v0 + 1936) = 1;
    *(v0 + 1944) = 2;
    *(v0 + 1952) = 0;
    *(v0 + 1960) = v19;
    *(v0 + 1968) = 0;
    *(v0 + 1976) = v14;
    v92 = v122[0];
    *(v0 + 1984) = v122[0];
    *(v0 + 1656) = v16;
    *(v0 + 1664) = v18;
    *(v0 + 1672) = 0u;
    *(v0 + 1688) = 0u;
    *(v0 + 1704) = 2;
    *(v0 + 1712) = v91;
    *(v0 + 1720) = v90;
    *(v0 + 1728) = 0;
    *(v0 + 1736) = 1;
    *(v0 + 1744) = 0;
    *(v0 + 1752) = 1;
    *(v0 + 1760) = 0;
    *(v0 + 1768) = 1;
    *(v0 + 1776) = 2;
    *(v0 + 1784) = 0;
    *(v0 + 1792) = v19;
    *(v0 + 1800) = 0;
    *(v0 + 1808) = v14;
    *(v0 + 1816) = v92;

    sub_22B2556F4(v0 + 1824, v0 + 1992);
    sub_22B2EC164(v0 + 1656);
    v93 = *(v0 + 1968);
    *(v0 + 1616) = *(v0 + 1952);
    *(v0 + 1632) = v93;
    *(v0 + 1648) = *(v0 + 1984);
    v94 = *(v0 + 1904);
    *(v0 + 1552) = *(v0 + 1888);
    *(v0 + 1568) = v94;
    v95 = *(v0 + 1936);
    *(v0 + 1584) = *(v0 + 1920);
    *(v0 + 1600) = v95;
    v96 = *(v0 + 1840);
    *(v0 + 1488) = *(v0 + 1824);
    *(v0 + 1504) = v96;
    v97 = *(v0 + 1872);
    *(v0 + 1520) = *(v0 + 1856);
    *(v0 + 1536) = v97;
    nullsub_1();
    type metadata accessor for EnergyKitAnalyticsEvent();
    v98 = swift_allocObject();
    sub_22B23E8B0(v0 + 1320);
    v99 = *(v0 + 1464);
    *(v0 + 1280) = *(v0 + 1448);
    *(v0 + 1296) = v99;
    v100 = *(v0 + 1400);
    *(v0 + 1216) = *(v0 + 1384);
    *(v0 + 1232) = v100;
    v101 = *(v0 + 1432);
    *(v0 + 1248) = *(v0 + 1416);
    *(v0 + 1264) = v101;
    v102 = *(v0 + 1336);
    *(v0 + 1152) = *(v0 + 1320);
    *(v0 + 1168) = v102;
    v103 = *(v0 + 1368);
    *(v0 + 1184) = *(v0 + 1352);
    *(v0 + 1200) = v103;
    v104 = *(v0 + 1584);
    *(v98 + 136) = *(v0 + 1600);
    v105 = *(v0 + 1632);
    *(v98 + 152) = *(v0 + 1616);
    *(v98 + 168) = v105;
    v106 = *(v0 + 1520);
    *(v98 + 72) = *(v0 + 1536);
    v107 = *(v0 + 1568);
    *(v98 + 88) = *(v0 + 1552);
    *(v98 + 104) = v107;
    *(v98 + 120) = v104;
    v108 = *(v0 + 1504);
    *(v98 + 24) = *(v0 + 1488);
    *(v98 + 40) = v108;
    *(v98 + 16) = 5;
    *(v0 + 1312) = *(v0 + 1480);
    *(v98 + 184) = *(v0 + 1648);
    *(v98 + 56) = v106;
    sub_22B123284(v0 + 1152, &unk_27D8BACF0, &qword_22B3662D0);
    sub_22B1A81C0(v98);

    if (v17)
    {
      v109 = [objc_opt_self() processInfo];
      v110 = [v109 processName];

      v111 = sub_22B36084C();
      v113 = v112;

      LOWORD(v122[0]) = 258;
      BYTE2(v122[0]) = 18;
      v122[1] = v111;
      v122[2] = v113;
      v122[3] = 0;
      static AutoBugCaptureManager.sendIssue(_:)(v122);
    }
  }

  swift_willThrow();

  v114 = *(v0 + 8);

  return v114();
}

uint64_t sub_22B2B83C0()
{
  v123 = v0;
  v1 = (v0 + 2432);
  v2 = *(v0 + 2736);
  v3 = *(v0 + 2592);
  v4 = *(v0 + 2568);

  v2(v3, v4);
  v5 = *(v0 + 2888);
  *(v0 + 2432) = v5;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
  if (!swift_dynamicCast())
  {
    goto LABEL_44;
  }

  v7 = (*(*(v0 + 2552) + 88))(*(v0 + 2560), *(v0 + 2544));
  if (v7 == *MEMORY[0x277D182B8])
  {
    v8 = *(v0 + 2560);
    v9 = *(v0 + 2536);
    v10 = *(v0 + 2528);
    v11 = *(v0 + 2520);
    v12 = *(v0 + 2512);
    (*(*(v0 + 2552) + 96))(v8, *(v0 + 2544));
    (*(v11 + 32))(v9, v8, v12);
    (*(v11 + 16))(v10, v9, v12);
    v13 = (*(v11 + 88))(v10, v12);
    if (v13 == *MEMORY[0x277D18310])
    {
      (*(*(v0 + 2520) + 8))(*(v0 + 2536), *(v0 + 2512));
      v14 = 0;
    }

    else if (v13 == *MEMORY[0x277D18308])
    {
      (*(*(v0 + 2520) + 8))(*(v0 + 2536), *(v0 + 2512));
      v14 = 1;
    }

    else if (v13 == *MEMORY[0x277D18318])
    {
      (*(*(v0 + 2520) + 8))(*(v0 + 2536), *(v0 + 2512));
      v14 = 2;
    }

    else if (v13 == *MEMORY[0x277D18300])
    {
      (*(*(v0 + 2520) + 8))(*(v0 + 2536), *(v0 + 2512));
      v14 = 3;
    }

    else
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v58 = *(v0 + 2648);
      v59 = *(v0 + 2608);
      v60 = *(v0 + 2600);
      v61 = __swift_project_value_buffer(v60, qword_28140BD10);
      swift_beginAccess();
      (*(v59 + 16))(v58, v61, v60);

      v62 = sub_22B36050C();
      v63 = sub_22B360D1C();

      v64 = os_log_type_enabled(v62, v63);
      v65 = *(v0 + 2648);
      v66 = *(v0 + 2608);
      v67 = *(v0 + 2600);
      v68 = *(v0 + 2536);
      v69 = *(v0 + 2520);
      v70 = *(v0 + 2512);
      if (v64)
      {
        v118 = *(v0 + 2648);
        v121 = *(v0 + 2512);
        v71 = *(v0 + 2464);
        v72 = *(v0 + 2456);
        v116 = *(v0 + 2600);
        v73 = swift_slowAlloc();
        v117 = v68;
        v74 = swift_slowAlloc();
        v122[0] = v74;
        *v73 = 136446210;
        *(v73 + 4) = sub_22B1A7B20(v72, v71, v122);
        _os_log_impl(&dword_22B116000, v62, v63, "[Dropbox] Unknown internal error %{public}s", v73, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v74);
        MEMORY[0x23188F650](v74, -1, -1);
        MEMORY[0x23188F650](v73, -1, -1);

        (*(v66 + 8))(v118, v116);
        v75 = *(v69 + 8);
        v75(v117, v121);
      }

      else
      {

        (*(v66 + 8))(v65, v67);
        v75 = *(v69 + 8);
        v75(v68, v70);
      }

      v75(*(v0 + 2528), *(v0 + 2512));
      v14 = 4;
    }

    v17 = 0;
    v16 = 0;
    v18 = 1;
    v19 = 4;
    goto LABEL_50;
  }

  if (v7 == *MEMORY[0x277D182A8])
  {
    v15 = *(v0 + 2560);
    (*(*(v0 + 2552) + 96))(v15, *(v0 + 2544));
    v16 = *v15;

    v17 = 0;
    v18 = 0;
    v19 = 5;
LABEL_49:
    v14 = 4;
    goto LABEL_50;
  }

  if (v7 == *MEMORY[0x277D182D0])
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 2640);
    v21 = *(v0 + 2608);
    v22 = *(v0 + 2600);
    v23 = __swift_project_value_buffer(v22, qword_28140BD10);
    swift_beginAccess();
    (*(v21 + 16))(v20, v23, v22);

    v24 = sub_22B36050C();
    v25 = sub_22B360D1C();

    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 2640);
    v28 = *(v0 + 2608);
    v29 = *(v0 + 2600);
    if (v26)
    {
      v30 = *(v0 + 2448);
      v31 = *(v0 + 2440);
      v32 = swift_slowAlloc();
      v119 = v27;
      v33 = swift_slowAlloc();
      v122[0] = v33;
      *v32 = 136446210;
      *(v32 + 4) = sub_22B1A7B20(v31, v30, v122);
      _os_log_impl(&dword_22B116000, v24, v25, "[Dropbox] Failed CK Token %{public}s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x23188F650](v33, -1, -1);
      MEMORY[0x23188F650](v32, -1, -1);

      (*(v28 + 8))(v119, v29);
    }

    else
    {

      (*(v28 + 8))(v27, v29);
    }

    v19 = 0;
    v16 = 0;
    v17 = 1;
LABEL_24:
    v14 = 4;
    v18 = 1;
    goto LABEL_50;
  }

  if (v7 == *MEMORY[0x277D182E0])
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v34 = *(v0 + 2624);
    v35 = *(v0 + 2608);
    v36 = *(v0 + 2600);
    v37 = __swift_project_value_buffer(v36, qword_28140BD10);
    swift_beginAccess();
    (*(v35 + 16))(v34, v37, v36);
    v38 = sub_22B36050C();
    v39 = sub_22B360D1C();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_22B116000, v38, v39, "[Dropbox] Re authentication required. Notify user", v40, 2u);
      MEMORY[0x23188F650](v40, -1, -1);
    }

    v41 = *(v0 + 2624);
    v42 = *(v0 + 2608);
    v43 = *(v0 + 2600);

    (*(v42 + 8))(v41, v43);
    v16 = 0;
    v17 = 1;
    v19 = 2;
    goto LABEL_24;
  }

  if (v7 != *MEMORY[0x277D182C8])
  {
    if (v7 == *MEMORY[0x277D18298])
    {

      v17 = 0;
      v16 = 0;
      v18 = 1;
      v19 = 3;
      goto LABEL_49;
    }

    (*(*(v0 + 2552) + 8))(*(v0 + 2560), *(v0 + 2544));
LABEL_44:

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v76 = *(v0 + 2616);
    v77 = *(v0 + 2608);
    v78 = *(v0 + 2600);
    v79 = __swift_project_value_buffer(v78, qword_28140BD10);
    swift_beginAccess();
    (*(v77 + 16))(v76, v79, v78);
    v80 = v5;
    v81 = sub_22B36050C();
    v82 = sub_22B360D1C();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      *v83 = 138543362;
      v85 = v5;
      v86 = _swift_stdlib_bridgeErrorToNSError();
      *(v83 + 4) = v86;
      *v84 = v86;
      _os_log_impl(&dword_22B116000, v81, v82, "[Dropbox] Error refreshing access token %{public}@", v83, 0xCu);
      sub_22B123284(v84, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v84, -1, -1);
      MEMORY[0x23188F650](v83, -1, -1);
    }

    v87 = *(v0 + 2616);
    v88 = *(v0 + 2608);
    v89 = *(v0 + 2600);

    (*(v88 + 8))(v87, v89);
    v17 = 0;
    v16 = 0;
    v18 = 1;
    v19 = 6;
    goto LABEL_49;
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v44 = *(v0 + 2632);
  v45 = *(v0 + 2608);
  v46 = *(v0 + 2600);
  v47 = __swift_project_value_buffer(v46, qword_28140BD10);
  swift_beginAccess();
  (*(v45 + 16))(v44, v47, v46);

  v48 = sub_22B36050C();
  v49 = sub_22B360D1C();

  v50 = os_log_type_enabled(v48, v49);
  v51 = *(v0 + 2632);
  v52 = *(v0 + 2608);
  v53 = *(v0 + 2600);
  if (v50)
  {
    v54 = *(v0 + 2464);
    v55 = *(v0 + 2456);
    v56 = swift_slowAlloc();
    v120 = v51;
    v57 = swift_slowAlloc();
    v122[0] = v57;
    *v56 = 136446210;
    *(v56 + 4) = sub_22B1A7B20(v55, v54, v122);
    _os_log_impl(&dword_22B116000, v48, v49, "[Dropbox] Failed Refresh Token %{public}s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v57);
    MEMORY[0x23188F650](v57, -1, -1);
    MEMORY[0x23188F650](v56, -1, -1);

    (*(v52 + 8))(v120, v53);
  }

  else
  {

    (*(v52 + 8))(v51, v53);
  }

  v16 = 0;
  v17 = 1;
  v14 = 4;
  v19 = 1;
  v18 = 1;
LABEL_50:
  if ((*(*(v0 + 2504) + 115) & 1) == 0)
  {
    v90 = *(v0 + 2496);
    v91 = *(v0 + 2488);
    LOBYTE(v122[0]) = 0;
    *(v0 + 1824) = v16;
    *(v0 + 1832) = v18;
    *(v0 + 1840) = 0u;
    *(v0 + 1856) = 0u;
    *(v0 + 1872) = 2;
    *(v0 + 1880) = v91;
    *(v0 + 1888) = v90;
    *(v0 + 1896) = 0;
    *(v0 + 1904) = 1;
    *(v0 + 1912) = 0;
    *(v0 + 1920) = 1;
    *(v0 + 1928) = 0;
    *(v0 + 1936) = 1;
    *(v0 + 1944) = 3;
    *(v0 + 1952) = 0;
    *(v0 + 1960) = v19;
    *(v0 + 1968) = 0;
    *(v0 + 1976) = v14;
    v92 = v122[0];
    *(v0 + 1984) = v122[0];
    *(v0 + 1656) = v16;
    *(v0 + 1664) = v18;
    *(v0 + 1672) = 0u;
    *(v0 + 1688) = 0u;
    *(v0 + 1704) = 2;
    *(v0 + 1712) = v91;
    *(v0 + 1720) = v90;
    *(v0 + 1728) = 0;
    *(v0 + 1736) = 1;
    *(v0 + 1744) = 0;
    *(v0 + 1752) = 1;
    *(v0 + 1760) = 0;
    *(v0 + 1768) = 1;
    *(v0 + 1776) = 3;
    *(v0 + 1784) = 0;
    *(v0 + 1792) = v19;
    *(v0 + 1800) = 0;
    *(v0 + 1808) = v14;
    *(v0 + 1816) = v92;

    sub_22B2556F4(v0 + 1824, v0 + 1992);
    sub_22B2EC164(v0 + 1656);
    v93 = *(v0 + 1968);
    *(v0 + 1616) = *(v0 + 1952);
    *(v0 + 1632) = v93;
    *(v0 + 1648) = *(v0 + 1984);
    v94 = *(v0 + 1904);
    *(v0 + 1552) = *(v0 + 1888);
    *(v0 + 1568) = v94;
    v95 = *(v0 + 1936);
    *(v0 + 1584) = *(v0 + 1920);
    *(v0 + 1600) = v95;
    v96 = *(v0 + 1840);
    *(v0 + 1488) = *(v0 + 1824);
    *(v0 + 1504) = v96;
    v97 = *(v0 + 1872);
    *(v0 + 1520) = *(v0 + 1856);
    *(v0 + 1536) = v97;
    nullsub_1();
    type metadata accessor for EnergyKitAnalyticsEvent();
    v98 = swift_allocObject();
    sub_22B23E8B0(v0 + 1320);
    v99 = *(v0 + 1464);
    *(v0 + 1280) = *(v0 + 1448);
    *(v0 + 1296) = v99;
    v100 = *(v0 + 1400);
    *(v0 + 1216) = *(v0 + 1384);
    *(v0 + 1232) = v100;
    v101 = *(v0 + 1432);
    *(v0 + 1248) = *(v0 + 1416);
    *(v0 + 1264) = v101;
    v102 = *(v0 + 1336);
    *(v0 + 1152) = *(v0 + 1320);
    *(v0 + 1168) = v102;
    v103 = *(v0 + 1368);
    *(v0 + 1184) = *(v0 + 1352);
    *(v0 + 1200) = v103;
    v104 = *(v0 + 1584);
    *(v98 + 136) = *(v0 + 1600);
    v105 = *(v0 + 1632);
    *(v98 + 152) = *(v0 + 1616);
    *(v98 + 168) = v105;
    v106 = *(v0 + 1520);
    *(v98 + 72) = *(v0 + 1536);
    v107 = *(v0 + 1568);
    *(v98 + 88) = *(v0 + 1552);
    *(v98 + 104) = v107;
    *(v98 + 120) = v104;
    v108 = *(v0 + 1504);
    *(v98 + 24) = *(v0 + 1488);
    *(v98 + 40) = v108;
    *(v98 + 16) = 5;
    *(v0 + 1312) = *(v0 + 1480);
    *(v98 + 184) = *(v0 + 1648);
    *(v98 + 56) = v106;
    sub_22B123284(v0 + 1152, &unk_27D8BACF0, &qword_22B3662D0);
    sub_22B1A81C0(v98);

    if (v17)
    {
      v109 = [objc_opt_self() processInfo];
      v110 = [v109 processName];

      v111 = sub_22B36084C();
      v113 = v112;

      LOWORD(v122[0]) = 258;
      BYTE2(v122[0]) = 18;
      v122[1] = v111;
      v122[2] = v113;
      v122[3] = 0;
      static AutoBugCaptureManager.sendIssue(_:)(v122);
    }
  }

  swift_willThrow();

  v114 = *(v0 + 8);

  return v114();
}

uint64_t sub_22B2B9260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 568) = v8;
  *(v9 + 560) = v17;
  *(v9 + 544) = v16;
  *(v9 + 536) = a8;
  *(v9 + 528) = a7;
  *(v9 + 520) = a6;
  *(v9 + 504) = a4;
  *(v9 + 512) = a5;
  *(v9 + 488) = a2;
  *(v9 + 496) = a3;
  *(v9 + 480) = a1;
  v10 = sub_22B3602EC();
  *(v9 + 576) = v10;
  *(v9 + 584) = *(v10 - 8);
  *(v9 + 592) = swift_task_alloc();
  v11 = sub_22B3602FC();
  *(v9 + 600) = v11;
  *(v9 + 608) = *(v11 - 8);
  *(v9 + 616) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  *(v9 + 624) = swift_task_alloc();
  v12 = sub_22B35DE9C();
  *(v9 + 632) = v12;
  *(v9 + 640) = *(v12 - 8);
  *(v9 + 648) = swift_task_alloc();
  *(v9 + 656) = swift_task_alloc();
  v13 = sub_22B36052C();
  *(v9 + 664) = v13;
  *(v9 + 672) = *(v13 - 8);
  *(v9 + 680) = swift_task_alloc();
  *(v9 + 688) = swift_task_alloc();
  *(v9 + 696) = swift_task_alloc();
  *(v9 + 704) = swift_task_alloc();
  *(v9 + 712) = swift_task_alloc();
  *(v9 + 720) = swift_task_alloc();
  *(v9 + 728) = swift_task_alloc();
  *(v9 + 736) = swift_task_alloc();
  *(v9 + 744) = swift_task_alloc();
  *(v9 + 752) = swift_task_alloc();
  *(v9 + 760) = swift_task_alloc();
  *(v9 + 768) = swift_task_alloc();
  *(v9 + 776) = swift_task_alloc();
  *(v9 + 784) = swift_task_alloc();
  *(v9 + 792) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2B954C, v8, 0);
}

uint64_t sub_22B2B954C(uint64_t a1)
{
  if (*(*(v1 + 568) + 115) != 1)
  {
    goto LABEL_38;
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = *(v1 + 792);
  v3 = *(v1 + 672);
  v4 = *(v1 + 664);
  v5 = __swift_project_value_buffer(v4, qword_28140BD10);
  swift_beginAccess();
  v6 = *(v3 + 16);
  v6(v2, v5, v4);

  v7 = sub_22B36050C();
  v8 = sub_22B360D2C();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v1 + 568);
  if (v9)
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = *(v10 + 120);

    _os_log_impl(&dword_22B116000, v7, v8, "Token Error Inducer enabled with value %ld", v11, 0xCu);
    MEMORY[0x23188F650](v11, -1, -1);
  }

  else
  {
  }

  v12 = *(v1 + 568);
  v13 = *(*(v1 + 672) + 8);
  v13(*(v1 + 792), *(v1 + 664));
  v14 = *(v12 + 120);
  if (v14 > 4)
  {
    if ((v14 - 996) >= 3)
    {
      if (v14 != 5)
      {
        if (v14 == 999)
        {
          v6(*(v1 + 744), v5, *(v1 + 664));
          v15 = sub_22B36050C();
          v16 = sub_22B360D2C();
          if (os_log_type_enabled(v15, v16))
          {
            v17 = swift_slowAlloc();
            *v17 = 0;
            _os_log_impl(&dword_22B116000, v15, v16, "Token Inducer. Force refresh all tokens", v17, 2u);
            MEMORY[0x23188F650](v17, -1, -1);
          }

          v18 = *(v1 + 744);
          v19 = *(v1 + 664);

          v13(v18, v19);
          v20 = swift_task_alloc();
          *(v1 + 800) = v20;
          *v20 = v1;
          v21 = sub_22B2BAC28;
          goto LABEL_95;
        }

        goto LABEL_34;
      }

      v6(*(v1 + 752), v5, *(v1 + 664));
      v51 = sub_22B36050C();
      v52 = sub_22B360D2C();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_22B116000, v51, v52, "Token Error Inducer throwing NetworkError.subscriptionNotFound", v53, 2u);
        MEMORY[0x23188F650](v53, -1, -1);
      }

      v54 = *(v1 + 752);
      v55 = *(v1 + 664);
      v27 = *(v1 + 608);
      v28 = *(v1 + 600);

      v13(v54, v55);
      sub_22B2EC1B8(&qword_27D8BAD18, MEMORY[0x277D182E8], MEMORY[0x277D182F8]);
      v29 = swift_allocError();
      v31 = v56;
      v32 = MEMORY[0x277D182D8];
LABEL_20:
      (*(v27 + 104))(v31, *v32, v28);
      swift_willThrow();
      goto LABEL_52;
    }

LABEL_17:
    v6(*(v1 + 776), v5, *(v1 + 664));
    v22 = sub_22B36050C();
    v23 = sub_22B360D2C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_22B116000, v22, v23, "Token Error Inducer throwing NetworkError.accessTokenExpired", v24, 2u);
      MEMORY[0x23188F650](v24, -1, -1);
    }

    v25 = *(v1 + 776);
    v26 = *(v1 + 664);
    v27 = *(v1 + 608);
    v28 = *(v1 + 600);

    v13(v25, v26);
    sub_22B2EC1B8(&qword_27D8BAD18, MEMORY[0x277D182E8], MEMORY[0x277D182F8]);
    v29 = swift_allocError();
    v31 = v30;
    v32 = MEMORY[0x277D182C0];
    goto LABEL_20;
  }

  if (v14 > 2)
  {
    if (v14 == 3)
    {
      v6(*(v1 + 768), v5, *(v1 + 664));
      v45 = sub_22B36050C();
      v46 = sub_22B360D2C();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_22B116000, v45, v46, "Token Error Inducer throwing NetworkError.refreshTokenExpired", v47, 2u);
        MEMORY[0x23188F650](v47, -1, -1);
      }

      v48 = *(v1 + 768);
      v49 = *(v1 + 664);
      v27 = *(v1 + 608);
      v28 = *(v1 + 600);

      v13(v48, v49);
      sub_22B2EC1B8(&qword_27D8BAD18, MEMORY[0x277D182E8], MEMORY[0x277D182F8]);
      v29 = swift_allocError();
      v31 = v50;
      v32 = MEMORY[0x277D182C8];
    }

    else
    {
      v6(*(v1 + 760), v5, *(v1 + 664));
      v33 = sub_22B36050C();
      v34 = sub_22B360D2C();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_22B116000, v33, v34, "Token Error Inducer throwing NetworkError.authorizationCodeExpired", v35, 2u);
        MEMORY[0x23188F650](v35, -1, -1);
      }

      v36 = *(v1 + 760);
      v37 = *(v1 + 664);
      v27 = *(v1 + 608);
      v28 = *(v1 + 600);

      v13(v36, v37);
      sub_22B2EC1B8(&qword_27D8BAD18, MEMORY[0x277D182E8], MEMORY[0x277D182F8]);
      v29 = swift_allocError();
      v31 = v38;
      v32 = MEMORY[0x277D182E0];
    }

    goto LABEL_20;
  }

  if (v14 == 1)
  {
    v6(*(v1 + 784), v5, *(v1 + 664));
    v39 = sub_22B36050C();
    v40 = sub_22B360D2C();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_22B116000, v39, v40, "Token Error Inducer throwing NetworkError.unauthorizedRequest", v41, 2u);
      MEMORY[0x23188F650](v41, -1, -1);
    }

    v42 = *(v1 + 784);
    v43 = *(v1 + 664);
    v27 = *(v1 + 608);
    v28 = *(v1 + 600);

    v13(v42, v43);
    sub_22B2EC1B8(&qword_27D8BAD18, MEMORY[0x277D182E8], MEMORY[0x277D182F8]);
    v29 = swift_allocError();
    v31 = v44;
    v32 = MEMORY[0x277D182D0];
    goto LABEL_20;
  }

  if (v14 == 2)
  {
    goto LABEL_17;
  }

LABEL_34:
  v6(*(v1 + 736), v5, *(v1 + 664));

  v57 = sub_22B36050C();
  v58 = sub_22B360D2C();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 134217984;
    *(v59 + 4) = *(v12 + 120);

    _os_log_impl(&dword_22B116000, v57, v58, "Invalid error inducer code %ld. Skipping error inducer", v59, 0xCu);
    MEMORY[0x23188F650](v59, -1, -1);
  }

  else
  {
  }

  v13(*(v1 + 736), *(v1 + 664));
LABEL_38:
  v60 = *(v1 + 640);
  v61 = *(v1 + 632);
  v62 = *(v1 + 624);
  v63 = *(v1 + 560);
  sub_22B35DE6C();
  sub_22B1B05B4(v63, v62);
  v64 = *(v60 + 48);
  if (v64(v62, 1, v61) == 1)
  {
    v65 = *(v1 + 632);
    v66 = *(v1 + 624);
    (*(*(v1 + 640) + 16))(*(v1 + 648), *(v1 + 656), v65);
    if (v64(v66, 1, v65) != 1)
    {
      sub_22B123284(*(v1 + 624), &qword_27D8BA340, &qword_22B363FB0);
    }
  }

  else
  {
    (*(*(v1 + 640) + 32))(*(v1 + 648), *(v1 + 624), *(v1 + 632));
  }

  v67 = *(v1 + 648);
  v68 = *(v1 + 640);
  v69 = *(v1 + 632);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD10, &qword_22B363A30);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_22B3634B0;
  *(v70 + 56) = v69;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v70 + 32));
  (*(v68 + 16))(boxed_opaque_existential_1, v67, v69);
  sub_22B36147C();

  sub_22B2EC1B8(&qword_28140B490, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  if ((sub_22B36074C() & 1) == 0)
  {
    v96 = *(v1 + 656);
    v97 = *(v1 + 648);
    v98 = *(v1 + 640);
    v99 = *(v1 + 632);
    v100 = *(v1 + 608);
    v101 = *(v1 + 600);
    sub_22B2EC1B8(&qword_27D8BAD18, MEMORY[0x277D182E8], MEMORY[0x277D182F8]);
    v29 = swift_allocError();
    (*(v100 + 104))(v102, *MEMORY[0x277D182C0], v101);
    swift_willThrow();
    v103 = *(v98 + 8);
    v103(v97, v99);
    v103(v96, v99);
    goto LABEL_52;
  }

  if (*(*(v1 + 568) + 113) == 1)
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v72 = *(v1 + 728);
    v73 = *(v1 + 672);
    v74 = *(v1 + 664);
    v75 = __swift_project_value_buffer(v74, qword_28140BD10);
    swift_beginAccess();
    v76 = *(v73 + 16);
    v76(v72, v75, v74);
    v77 = sub_22B36050C();
    v78 = sub_22B360D1C();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_22B116000, v77, v78, "********** WARNING INTERNAL TESTING FLAG IS SET **********: This should not appear in normal use, only occur in testing scenarios Check com.apple.EnergyKit defaults", v79, 2u);
      MEMORY[0x23188F650](v79, -1, -1);
    }

    v80 = *(v1 + 728);
    v81 = *(v1 + 720);
    v82 = *(v1 + 672);
    v83 = *(v1 + 664);

    v84 = *(v82 + 8);
    v84(v80, v83);
    v76(v81, v75, v83);
    v85 = sub_22B36050C();
    v86 = sub_22B360D2C();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&dword_22B116000, v85, v86, "[DropBox] Dropbox disabled. Enable it on DUT to fetch from server", v87, 2u);
      MEMORY[0x23188F650](v87, -1, -1);
    }

    v88 = *(v1 + 720);
    v89 = *(v1 + 664);
    v90 = *(v1 + 656);
    v91 = *(v1 + 648);
    v92 = *(v1 + 640);
    v93 = *(v1 + 632);

    v84(v88, v89);
    sub_22B134CDC();
    v29 = swift_allocError();
    *v94 = 27;
    swift_willThrow();
    v95 = *(v92 + 8);
    v95(v91, v93);
    v95(v90, v93);
LABEL_52:
    *(v1 + 904) = v29;
    *(v1 + 464) = v29;
    v104 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
    if (swift_dynamicCast())
    {
      v105 = (*(*(v1 + 608) + 88))(*(v1 + 616), *(v1 + 600));
      if (v105 == *MEMORY[0x277D182D0])
      {
LABEL_54:

        if (qword_28140A0C8 != -1)
        {
          swift_once();
        }

        v106 = *(v1 + 712);
        v107 = *(v1 + 672);
        v108 = *(v1 + 664);
        v109 = __swift_project_value_buffer(v108, qword_28140BD10);
        swift_beginAccess();
        (*(v107 + 16))(v106, v109, v108);
        v110 = sub_22B36050C();
        v111 = sub_22B360D1C();
        if (os_log_type_enabled(v110, v111))
        {
          v112 = swift_slowAlloc();
          *v112 = 0;
          _os_log_impl(&dword_22B116000, v110, v111, "[Dropbox] Access Token Expired. Refresh all tokens", v112, 2u);
          MEMORY[0x23188F650](v112, -1, -1);
        }

        v113 = *(v1 + 712);
        v114 = *(v1 + 672);
        v115 = *(v1 + 664);

        (*(v114 + 8))(v113, v115);
        v20 = swift_task_alloc();
        *(v1 + 912) = v20;
        *v20 = v1;
        v21 = sub_22B2BB794;
        goto LABEL_95;
      }

      if (v105 == *MEMORY[0x277D182D8])
      {
        if (qword_28140A0C8 != -1)
        {
          swift_once();
        }

        v116 = *(v1 + 704);
        v117 = *(v1 + 672);
        v118 = *(v1 + 664);
        v119 = __swift_project_value_buffer(v118, qword_28140BD10);
        swift_beginAccess();
        (*(v117 + 16))(v116, v119, v118);
        v120 = sub_22B36050C();
        v121 = sub_22B360D1C();
        if (os_log_type_enabled(v120, v121))
        {
          v122 = swift_slowAlloc();
          *v122 = 0;
          _os_log_impl(&dword_22B116000, v120, v121, "[Dropbox] Subscription offboarded from server. Notify user", v122, 2u);
          MEMORY[0x23188F650](v122, -1, -1);
        }

        v123 = *(v1 + 704);
LABEL_76:
        v131 = *(v1 + 672);
        v132 = *(v1 + 664);

        (*(v131 + 8))(v123, v132);
        swift_willThrow();

LABEL_91:

        v154 = *(v1 + 8);

        return v154();
      }

      if (v105 == *MEMORY[0x277D182E0])
      {
        if (qword_28140A0C8 != -1)
        {
          swift_once();
        }

        v125 = *(v1 + 688);
        v126 = *(v1 + 672);
        v127 = *(v1 + 664);
        v128 = __swift_project_value_buffer(v127, qword_28140BD10);
        swift_beginAccess();
        (*(v126 + 16))(v125, v128, v127);
        v120 = sub_22B36050C();
        v129 = sub_22B360D1C();
        if (os_log_type_enabled(v120, v129))
        {
          v130 = swift_slowAlloc();
          *v130 = 0;
          _os_log_impl(&dword_22B116000, v120, v129, "[Dropbox] Authorization Code expired. Notify user", v130, 2u);
          MEMORY[0x23188F650](v130, -1, -1);
        }

        v123 = *(v1 + 688);
        goto LABEL_76;
      }

      if (v105 == *MEMORY[0x277D182C0])
      {
        goto LABEL_54;
      }

      if (v105 == *MEMORY[0x277D182C8])
      {
        if (qword_28140A0C8 != -1)
        {
          swift_once();
        }

        v133 = *(v1 + 696);
        v134 = *(v1 + 672);
        v135 = *(v1 + 664);
        v136 = __swift_project_value_buffer(v135, qword_28140BD10);
        swift_beginAccess();
        (*(v134 + 16))(v133, v136, v135);
        v120 = sub_22B36050C();
        v137 = sub_22B360D1C();
        if (os_log_type_enabled(v120, v137))
        {
          v138 = swift_slowAlloc();
          *v138 = 0;
          _os_log_impl(&dword_22B116000, v120, v137, "[Dropbox] Refresh Token expired. Notify user", v138, 2u);
          MEMORY[0x23188F650](v138, -1, -1);
        }

        v123 = *(v1 + 696);
        goto LABEL_76;
      }

      (*(*(v1 + 608) + 8))(*(v1 + 616), *(v1 + 600));
    }

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v139 = *(v1 + 680);
    v140 = *(v1 + 672);
    v141 = *(v1 + 664);
    v142 = __swift_project_value_buffer(v141, qword_28140BD10);
    swift_beginAccess();
    (*(v140 + 16))(v139, v142, v141);
    v143 = v29;
    v144 = sub_22B36050C();
    v145 = sub_22B360D1C();

    if (os_log_type_enabled(v144, v145))
    {
      v146 = swift_slowAlloc();
      v147 = swift_slowAlloc();
      *v146 = 138543362;
      v148 = v29;
      v149 = _swift_stdlib_bridgeErrorToNSError();
      *(v146 + 4) = v149;
      *v147 = v149;
      _os_log_impl(&dword_22B116000, v144, v145, "[Dropbox] Error refreshing authorization token %{public}@", v146, 0xCu);
      sub_22B123284(v147, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v147, -1, -1);
      MEMORY[0x23188F650](v146, -1, -1);
    }

    v150 = *(v1 + 680);
    v151 = *(v1 + 672);
    v152 = *(v1 + 664);

    (*(v151 + 8))(v150, v152);
    *(v1 + 472) = v29;
    v153 = v29;
    if (!swift_dynamicCast())
    {
      v20 = swift_task_alloc();
      *(v1 + 928) = v20;
      *v20 = v1;
      v21 = sub_22B2BBA58;
LABEL_95:
      v20[1] = v21;
      v155 = *(v1 + 552);
      v156 = *(v1 + 544);
      v157 = *(v1 + 536);
      v158 = *(v1 + 528);
      v159 = *(v1 + 520);
      v160 = *(v1 + 512);
      v162 = *(v1 + 480);
      v161 = *(v1 + 488);

      return sub_22B2B30B0(v162, v161, v160, v159, v158, v157, v156, v155);
    }

    (*(*(v1 + 584) + 8))(*(v1 + 592), *(v1 + 576));
    swift_willThrow();
    goto LABEL_91;
  }

  *(v1 + 816) = sub_22B36012C();
  if (qword_28140B470 != -1)
  {
    swift_once();
  }

  v124 = qword_28140BDD8;
  *(v1 + 824) = qword_28140BDD8;

  return MEMORY[0x2822009F8](sub_22B2BAE9C, v124, 0);
}

uint64_t sub_22B2BAC28(uint64_t a1)
{
  v4 = *v2;
  v4[101] = v1;

  if (v1)
  {
    v5 = v4[71];

    return MEMORY[0x2822009F8](sub_22B2BBD1C, v5, 0);
  }

  else
  {

    v6 = v4[1];

    return v6(a1);
  }
}

uint64_t sub_22B2BAE9C()
{
  v1 = *(v0[103] + 120);
  v0[104] = v1;
  v2 = v1;
  v3 = swift_task_alloc();
  v0[105] = v3;
  *v3 = v0;
  v3[1] = sub_22B2BAF60;
  v4 = v0[69];
  v5 = v0[68];
  v6 = v0[62];
  v7 = v0[63];
  v8 = v0[60];
  v9 = v0[61];

  return MEMORY[0x2821724F8](v5, v4, v8, v9, v6, v7, v2);
}

uint64_t sub_22B2BAF60(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[106] = v2;

  v7 = v6[104];
  if (v2)
  {
    v8 = v6[71];

    v9 = sub_22B2BC63C;
  }

  else
  {
    v8 = v6[103];

    v6[107] = a2;
    v6[108] = a1;
    v9 = sub_22B2BB0B8;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_22B2BB0B8()
{
  v1 = v0[71];
  v2 = *(v0[103] + 120);
  v0[109] = v2;
  v3 = v2;

  return MEMORY[0x2822009F8](sub_22B2BB130, v1, 0);
}

uint64_t sub_22B2BB130()
{
  v1 = v0[109];
  v0[2] = v0;
  v0[3] = sub_22B2BB244;
  v2 = swift_continuation_init();
  v0[27] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD20, &qword_22B366250);
  v0[20] = MEMORY[0x277D85DD0];
  v0[21] = 1107296256;
  v0[22] = sub_22B30F28C;
  v0[23] = &block_descriptor_23;
  v0[24] = v2;
  [v1 resetWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22B2BB244()
{
  v1 = *(*v0 + 568);

  return MEMORY[0x2822009F8](sub_22B2BB338, v1, 0);
}

uint64_t sub_22B2BB338()
{
  v1 = *(v0 + 864);
  v2 = *(v0 + 856);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA620, &unk_22B3656B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B3634B0;
  *(inited + 32) = 0x6974636E75466B63;
  v4 = inited + 32;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = 0xEF6E656B6F546E6FLL;
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  v5 = sub_22B321AAC(inited);
  *(v0 + 880) = v5;
  swift_setDeallocating();
  sub_22B123284(v4, &unk_27D8BAD00, &qword_22B3656C0);
  v6 = swift_task_alloc();
  *(v0 + 888) = v6;
  *v6 = v0;
  v6[1] = sub_22B2BB484;
  v7 = *(v0 + 536);
  v8 = *(v0 + 528);

  return sub_22B2244D0(v8, v7, v5);
}

uint64_t sub_22B2BB484(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[49] = v2;
  v4[50] = a1;
  v4[51] = v1;
  v4[112] = v1;

  v5 = v3[71];

  if (v1)
  {
    v6 = sub_22B2BCF94;
  }

  else
  {
    v6 = sub_22B2BB5D4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B2BB5D4()
{
  v1 = v0[82];
  v2 = v0[79];
  v3 = *(v0[80] + 8);
  v3(v0[81], v2);
  v3(v1, v2);
  v6 = v0[50];

  v4 = v0[1];

  return v4(v6);
}

uint64_t sub_22B2BB794(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[52] = v2;
  v4[53] = a1;
  v4[54] = v1;
  v4[115] = v1;

  v5 = v3[71];
  if (v1)
  {
    v6 = sub_22B2BDA78;
  }

  else
  {
    v6 = sub_22B2BB8C8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B2BB8C8()
{
  v3 = *(v0 + 424);

  v1 = *(v0 + 8);

  return v1(v3);
}

uint64_t sub_22B2BBA58(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[55] = v2;
  v4[56] = a1;
  v4[57] = v1;
  v4[117] = v1;

  v5 = v3[71];
  if (v1)
  {
    v6 = sub_22B2BD8EC;
  }

  else
  {
    v6 = sub_22B2BBB8C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B2BBB8C()
{
  v3 = *(v0 + 448);

  v1 = *(v0 + 8);

  return v1(v3);
}

uint64_t sub_22B2BBD1C()
{
  v1 = *(v0 + 808);
  *(v0 + 904) = v1;
  *(v0 + 464) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
  if (swift_dynamicCast())
  {
    v3 = (*(*(v0 + 608) + 88))(*(v0 + 616), *(v0 + 600));
    if (v3 == *MEMORY[0x277D182D0])
    {
LABEL_3:

      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v4 = *(v0 + 712);
      v5 = *(v0 + 672);
      v6 = *(v0 + 664);
      v7 = __swift_project_value_buffer(v6, qword_28140BD10);
      swift_beginAccess();
      (*(v5 + 16))(v4, v7, v6);
      v8 = sub_22B36050C();
      v9 = sub_22B360D1C();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_22B116000, v8, v9, "[Dropbox] Access Token Expired. Refresh all tokens", v10, 2u);
        MEMORY[0x23188F650](v10, -1, -1);
      }

      v11 = *(v0 + 712);
      v12 = *(v0 + 672);
      v13 = *(v0 + 664);

      (*(v12 + 8))(v11, v13);
      v14 = swift_task_alloc();
      *(v0 + 912) = v14;
      *v14 = v0;
      v15 = sub_22B2BB794;
      goto LABEL_39;
    }

    if (v3 == *MEMORY[0x277D182D8])
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v16 = *(v0 + 704);
      v17 = *(v0 + 672);
      v18 = *(v0 + 664);
      v19 = __swift_project_value_buffer(v18, qword_28140BD10);
      swift_beginAccess();
      (*(v17 + 16))(v16, v19, v18);
      v20 = sub_22B36050C();
      v21 = sub_22B360D1C();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_22B116000, v20, v21, "[Dropbox] Subscription offboarded from server. Notify user", v22, 2u);
        MEMORY[0x23188F650](v22, -1, -1);
      }

      v23 = *(v0 + 704);
LABEL_20:
      v30 = *(v0 + 672);
      v31 = *(v0 + 664);

      (*(v30 + 8))(v23, v31);
      swift_willThrow();

      goto LABEL_35;
    }

    if (v3 == *MEMORY[0x277D182E0])
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v24 = *(v0 + 688);
      v25 = *(v0 + 672);
      v26 = *(v0 + 664);
      v27 = __swift_project_value_buffer(v26, qword_28140BD10);
      swift_beginAccess();
      (*(v25 + 16))(v24, v27, v26);
      v20 = sub_22B36050C();
      v28 = sub_22B360D1C();
      if (os_log_type_enabled(v20, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_22B116000, v20, v28, "[Dropbox] Authorization Code expired. Notify user", v29, 2u);
        MEMORY[0x23188F650](v29, -1, -1);
      }

      v23 = *(v0 + 688);
      goto LABEL_20;
    }

    if (v3 == *MEMORY[0x277D182C0])
    {
      goto LABEL_3;
    }

    if (v3 == *MEMORY[0x277D182C8])
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v32 = *(v0 + 696);
      v33 = *(v0 + 672);
      v34 = *(v0 + 664);
      v35 = __swift_project_value_buffer(v34, qword_28140BD10);
      swift_beginAccess();
      (*(v33 + 16))(v32, v35, v34);
      v20 = sub_22B36050C();
      v36 = sub_22B360D1C();
      if (os_log_type_enabled(v20, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_22B116000, v20, v36, "[Dropbox] Refresh Token expired. Notify user", v37, 2u);
        MEMORY[0x23188F650](v37, -1, -1);
      }

      v23 = *(v0 + 696);
      goto LABEL_20;
    }

    (*(*(v0 + 608) + 8))(*(v0 + 616), *(v0 + 600));
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v38 = *(v0 + 680);
  v39 = *(v0 + 672);
  v40 = *(v0 + 664);
  v41 = __swift_project_value_buffer(v40, qword_28140BD10);
  swift_beginAccess();
  (*(v39 + 16))(v38, v41, v40);
  v42 = v1;
  v43 = sub_22B36050C();
  v44 = sub_22B360D1C();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v45 = 138543362;
    v47 = v1;
    v48 = _swift_stdlib_bridgeErrorToNSError();
    *(v45 + 4) = v48;
    *v46 = v48;
    _os_log_impl(&dword_22B116000, v43, v44, "[Dropbox] Error refreshing authorization token %{public}@", v45, 0xCu);
    sub_22B123284(v46, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v46, -1, -1);
    MEMORY[0x23188F650](v45, -1, -1);
  }

  v49 = *(v0 + 680);
  v50 = *(v0 + 672);
  v51 = *(v0 + 664);

  (*(v50 + 8))(v49, v51);
  *(v0 + 472) = v1;
  v52 = v1;
  if (!swift_dynamicCast())
  {
    v14 = swift_task_alloc();
    *(v0 + 928) = v14;
    *v14 = v0;
    v15 = sub_22B2BBA58;
LABEL_39:
    v14[1] = v15;
    v55 = *(v0 + 552);
    v56 = *(v0 + 544);
    v57 = *(v0 + 536);
    v58 = *(v0 + 528);
    v59 = *(v0 + 520);
    v60 = *(v0 + 512);
    v62 = *(v0 + 480);
    v61 = *(v0 + 488);

    return sub_22B2B30B0(v62, v61, v60, v59, v58, v57, v56, v55);
  }

  (*(*(v0 + 584) + 8))(*(v0 + 592), *(v0 + 576));
  swift_willThrow();
LABEL_35:

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_22B2BC63C()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 632);
  v3 = *(*(v0 + 640) + 8);
  v3(*(v0 + 648), v2);
  v3(v1, v2);
  v4 = *(v0 + 848);
  *(v0 + 904) = v4;
  *(v0 + 464) = v4;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
  if (swift_dynamicCast())
  {
    v6 = (*(*(v0 + 608) + 88))(*(v0 + 616), *(v0 + 600));
    if (v6 == *MEMORY[0x277D182D0])
    {
LABEL_3:

      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v7 = *(v0 + 712);
      v8 = *(v0 + 672);
      v9 = *(v0 + 664);
      v10 = __swift_project_value_buffer(v9, qword_28140BD10);
      swift_beginAccess();
      (*(v8 + 16))(v7, v10, v9);
      v11 = sub_22B36050C();
      v12 = sub_22B360D1C();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_22B116000, v11, v12, "[Dropbox] Access Token Expired. Refresh all tokens", v13, 2u);
        MEMORY[0x23188F650](v13, -1, -1);
      }

      v14 = *(v0 + 712);
      v15 = *(v0 + 672);
      v16 = *(v0 + 664);

      (*(v15 + 8))(v14, v16);
      v17 = swift_task_alloc();
      *(v0 + 912) = v17;
      *v17 = v0;
      v18 = sub_22B2BB794;
      goto LABEL_39;
    }

    if (v6 == *MEMORY[0x277D182D8])
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v19 = *(v0 + 704);
      v20 = *(v0 + 672);
      v21 = *(v0 + 664);
      v22 = __swift_project_value_buffer(v21, qword_28140BD10);
      swift_beginAccess();
      (*(v20 + 16))(v19, v22, v21);
      v23 = sub_22B36050C();
      v24 = sub_22B360D1C();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_22B116000, v23, v24, "[Dropbox] Subscription offboarded from server. Notify user", v25, 2u);
        MEMORY[0x23188F650](v25, -1, -1);
      }

      v26 = *(v0 + 704);
LABEL_20:
      v33 = *(v0 + 672);
      v34 = *(v0 + 664);

      (*(v33 + 8))(v26, v34);
      swift_willThrow();

      goto LABEL_35;
    }

    if (v6 == *MEMORY[0x277D182E0])
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v27 = *(v0 + 688);
      v28 = *(v0 + 672);
      v29 = *(v0 + 664);
      v30 = __swift_project_value_buffer(v29, qword_28140BD10);
      swift_beginAccess();
      (*(v28 + 16))(v27, v30, v29);
      v23 = sub_22B36050C();
      v31 = sub_22B360D1C();
      if (os_log_type_enabled(v23, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_22B116000, v23, v31, "[Dropbox] Authorization Code expired. Notify user", v32, 2u);
        MEMORY[0x23188F650](v32, -1, -1);
      }

      v26 = *(v0 + 688);
      goto LABEL_20;
    }

    if (v6 == *MEMORY[0x277D182C0])
    {
      goto LABEL_3;
    }

    if (v6 == *MEMORY[0x277D182C8])
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v35 = *(v0 + 696);
      v36 = *(v0 + 672);
      v37 = *(v0 + 664);
      v38 = __swift_project_value_buffer(v37, qword_28140BD10);
      swift_beginAccess();
      (*(v36 + 16))(v35, v38, v37);
      v23 = sub_22B36050C();
      v39 = sub_22B360D1C();
      if (os_log_type_enabled(v23, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_22B116000, v23, v39, "[Dropbox] Refresh Token expired. Notify user", v40, 2u);
        MEMORY[0x23188F650](v40, -1, -1);
      }

      v26 = *(v0 + 696);
      goto LABEL_20;
    }

    (*(*(v0 + 608) + 8))(*(v0 + 616), *(v0 + 600));
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v41 = *(v0 + 680);
  v42 = *(v0 + 672);
  v43 = *(v0 + 664);
  v44 = __swift_project_value_buffer(v43, qword_28140BD10);
  swift_beginAccess();
  (*(v42 + 16))(v41, v44, v43);
  v45 = v4;
  v46 = sub_22B36050C();
  v47 = sub_22B360D1C();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v48 = 138543362;
    v50 = v4;
    v51 = _swift_stdlib_bridgeErrorToNSError();
    *(v48 + 4) = v51;
    *v49 = v51;
    _os_log_impl(&dword_22B116000, v46, v47, "[Dropbox] Error refreshing authorization token %{public}@", v48, 0xCu);
    sub_22B123284(v49, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v49, -1, -1);
    MEMORY[0x23188F650](v48, -1, -1);
  }

  v52 = *(v0 + 680);
  v53 = *(v0 + 672);
  v54 = *(v0 + 664);

  (*(v53 + 8))(v52, v54);
  *(v0 + 472) = v4;
  v55 = v4;
  if (!swift_dynamicCast())
  {
    v17 = swift_task_alloc();
    *(v0 + 928) = v17;
    *v17 = v0;
    v18 = sub_22B2BBA58;
LABEL_39:
    v17[1] = v18;
    v58 = *(v0 + 552);
    v59 = *(v0 + 544);
    v60 = *(v0 + 536);
    v61 = *(v0 + 528);
    v62 = *(v0 + 520);
    v63 = *(v0 + 512);
    v65 = *(v0 + 480);
    v64 = *(v0 + 488);

    return sub_22B2B30B0(v65, v64, v63, v62, v61, v60, v59, v58);
  }

  (*(*(v0 + 584) + 8))(*(v0 + 592), *(v0 + 576));
  swift_willThrow();
LABEL_35:

  v56 = *(v0 + 8);

  return v56();
}