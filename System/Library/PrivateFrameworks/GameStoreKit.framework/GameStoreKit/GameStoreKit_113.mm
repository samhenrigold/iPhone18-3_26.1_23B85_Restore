uint64_t sub_24F180DBC(char a1)
{
  *(*v1 + 480) = a1;

  return MEMORY[0x2822009F8](sub_24F180EDC, 0, 0);
}

uint64_t sub_24F180EDC(uint64_t a1)
{
  v2 = *(v1 + 480);
  v3 = sub_24F9220B8();
  v4 = sub_24F92BD98();
  v5 = os_log_type_enabled(v3, v4);
  if (v2 == 1)
  {
    if (v5)
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_24E5DD000, v3, v4, "CompleteWelcomeMoltresActionImplementation: The player is an adult.", v6, 2u);
      MEMORY[0x2530542D0](v6, -1, -1);
    }

    v8 = *(v1 + 152);
    v7 = *(v1 + 160);

    v9 = *(type metadata accessor for CompleteWelcomeMoltresAction(0) + 20);
    v10 = type metadata accessor for SetContactsIntegrationConsentAction(0);
    *(v1 + 80) = v10;
    *(v1 + 88) = sub_24F1835EC(&qword_27F216388, type metadata accessor for SetContactsIntegrationConsentAction, &unk_24F9742BC);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v1 + 56));
    v12 = *(v10 + 20);
    v13 = sub_24F928AD8();
    (*(*(v13 - 8) + 16))(boxed_opaque_existential_1 + v12, v8 + v9, v13);
    *boxed_opaque_existential_1 = 2;
    v14 = swift_task_alloc();
    *(v1 + 464) = v14;
    v17 = type metadata accessor for CompleteWelcomeMoltresActionImplementation(0, v7, v15, v16);
    WitnessTable = swift_getWitnessTable();
    *v14 = v1;
    v14[1] = sub_24F1812C0;
    v19 = *(v1 + 184);
    v20 = *(v1 + 144);

    return sub_24F1487B0(v19, v1 + 56, v20, v17, WitnessTable);
  }

  else
  {
    if (v5)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_24E5DD000, v3, v4, "CompleteWelcomeMoltresActionImplementation: The player is not an adult.", v22, 2u);
      MEMORY[0x2530542D0](v22, -1, -1);
    }

    v23 = *(v1 + 152);
    if ((*(v23 + 8) & 1) == 0)
    {
      v24 = *v23;
      v25 = [*(v1 + 320) standardUserDefaults];
      sub_24F005DA4(v24);
    }

    v26 = *(v1 + 304);
    v27 = *(v1 + 312);
    v28 = *(v1 + 288);
    v29 = *(v1 + 296);
    v30 = *(v1 + 176);
    v31 = *(v1 + 168);
    v32 = *(v1 + 136);
    sub_24E601704(*(v1 + 264), &qword_27F22D4D8, &qword_24F9CF7D0);
    (*(v30 + 104))(v32, *MEMORY[0x277D21CA8], v31);
    sub_24E601704(v28, &qword_27F22D4E0, &unk_24F994C00);
    (*(v26 + 8))(v27, v29);

    v33 = *(v1 + 8);

    return v33();
  }
}

uint64_t sub_24F1812C0()
{
  v2 = *v1;
  *(*v1 + 472) = v0;

  if (v0)
  {
    v3 = sub_24F1822E0;
  }

  else
  {
    (*(v2[22] + 8))(v2[23], v2[21]);
    __swift_destroy_boxed_opaque_existential_1(v2 + 7);
    v3 = sub_24F1813F4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24F1813F4()
{
  v1 = *(v0 + 152);
  if ((*(v1 + 8) & 1) == 0)
  {
    v2 = *v1;
    v3 = [*(v0 + 320) standardUserDefaults];
    sub_24F005DA4(v2);
  }

  v4 = *(v0 + 304);
  v5 = *(v0 + 312);
  v6 = *(v0 + 288);
  v7 = *(v0 + 296);
  v8 = *(v0 + 176);
  v9 = *(v0 + 168);
  v10 = *(v0 + 136);
  sub_24E601704(*(v0 + 264), &qword_27F22D4D8, &qword_24F9CF7D0);
  (*(v8 + 104))(v10, *MEMORY[0x277D21CA8], v9);
  sub_24E601704(v6, &qword_27F22D4E0, &unk_24F994C00);
  (*(v4 + 8))(v5, v7);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_24F1815A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F181698()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 400);
  v2 = v1;
  v3 = sub_24F9220B8();
  v4 = sub_24F92BDB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_24E5DD000, v3, v4, "CompleteWelcomeMoltresActionImplementation: Could not get the player or onboarding state, reason: %@", v5, 0xCu);
    sub_24E601704(v6, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v6, -1, -1);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  else
  {
  }

  *(v0 + 424) = 0;
  v9 = *(v0 + 248);
  v10 = *(v0 + 192);
  v11 = *(v0 + 200);
  sub_24E60169C(*(v0 + 264), v9, &qword_27F22D4D8, &qword_24F9CF7D0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_24E601704(*(v0 + 248), &qword_27F22D4D8, &qword_24F9CF7D0);
    v12 = *(v0 + 288);
    v13 = *(v0 + 216);
    v14 = *(v0 + 224);
    if ((*(v14 + 48))(v12, 1, v13))
    {
LABEL_6:
      v15 = *(v0 + 152);
      if ((*(v15 + 8) & 1) == 0)
      {
        v16 = *v15;
        v17 = [*(v0 + 320) standardUserDefaults];
        sub_24F005DA4(v16);
      }

      v18 = *(v0 + 304);
      v19 = *(v0 + 312);
      v20 = *(v0 + 288);
      v21 = *(v0 + 296);
      v22 = *(v0 + 176);
      v23 = *(v0 + 168);
      v24 = *(v0 + 136);
      sub_24E601704(*(v0 + 264), &qword_27F22D4D8, &qword_24F9CF7D0);
      (*(v22 + 104))(v24, *MEMORY[0x277D21CA8], v23);
      sub_24E601704(v20, &qword_27F22D4E0, &unk_24F994C00);
      (*(v18 + 8))(v19, v21);

      v25 = *(v0 + 8);

      return v25();
    }

    v36 = *(v0 + 424);
    (*(v14 + 16))(*(v0 + 232), v12, v13);
    v38 = sub_24F920FD8();
    v40 = *(v0 + 224);
    v39 = *(v0 + 232);
    v41 = *(v0 + 216);
    if (v36)
    {
      (*(v40 + 8))(v39, *(v0 + 216));
      v42 = v36;
      v43 = sub_24F9220B8();
      v44 = sub_24F92BD98();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = 138412290;
        v47 = v36;
        v48 = _swift_stdlib_bridgeErrorToNSError();
        *(v45 + 4) = v48;
        *v46 = v48;
        _os_log_impl(&dword_24E5DD000, v43, v44, "CompleteWelcomeMoltresActionImplementation: Error checking and setting the contacts integration consent, reason: %@", v45, 0xCu);
        sub_24E601704(v46, &qword_27F227B20, &qword_24F944D30);
        MEMORY[0x2530542D0](v46, -1, -1);
        MEMORY[0x2530542D0](v45, -1, -1);
      }

      else
      {
      }

      goto LABEL_6;
    }

    *(v0 + 448) = v37;
    v49 = v37;
    (*(v40 + 8))(v39, v41);
    v50 = swift_task_alloc();
    *(v0 + 456) = v50;
    *v50 = v0;
    v50[1] = sub_24F180DBC;

    return sub_24F183444(v38, v49);
  }

  else
  {
    v27 = *(v0 + 312);
    v28 = *(v0 + 288);
    v29 = *(v0 + 208);
    v30 = *(v0 + 160);
    (*(*(v0 + 200) + 32))(v29, *(v0 + 248), *(v0 + 192));
    v31 = swift_task_alloc();
    *(v0 + 432) = v31;
    v31[2] = v30;
    v31[3] = v28;
    v31[4] = v27;
    v31[5] = v29;
    v32 = swift_task_alloc();
    *(v0 + 440) = v32;
    *v32 = v0;
    v32[1] = sub_24F1808CC;
    v33 = MEMORY[0x277D84F78] + 8;
    v34 = MEMORY[0x277D84F78] + 8;
    v35 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200600](v32, v33, v34, 0, 0, &unk_24F9CF7E8, v31, v35);
  }
}

uint64_t sub_24F181CB0()
{
  (*(*(v0 + 224) + 8))(*(v0 + 240), *(v0 + 216));
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  v1 = *(v0 + 416);
  v2 = v1;
  v3 = sub_24F9220B8();
  v4 = sub_24F92BDB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_24E5DD000, v3, v4, "CompleteWelcomeMoltresActionImplementation: Could not get the player or onboarding state, reason: %@", v5, 0xCu);
    sub_24E601704(v6, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v6, -1, -1);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  else
  {
  }

  *(v0 + 424) = 0;
  v9 = *(v0 + 248);
  v10 = *(v0 + 192);
  v11 = *(v0 + 200);
  sub_24E60169C(*(v0 + 264), v9, &qword_27F22D4D8, &qword_24F9CF7D0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_24E601704(*(v0 + 248), &qword_27F22D4D8, &qword_24F9CF7D0);
    v12 = *(v0 + 288);
    v13 = *(v0 + 216);
    v14 = *(v0 + 224);
    if ((*(v14 + 48))(v12, 1, v13))
    {
LABEL_6:
      v15 = *(v0 + 152);
      if ((*(v15 + 8) & 1) == 0)
      {
        v16 = *v15;
        v17 = [*(v0 + 320) standardUserDefaults];
        sub_24F005DA4(v16);
      }

      v18 = *(v0 + 304);
      v19 = *(v0 + 312);
      v20 = *(v0 + 288);
      v21 = *(v0 + 296);
      v22 = *(v0 + 176);
      v23 = *(v0 + 168);
      v24 = *(v0 + 136);
      sub_24E601704(*(v0 + 264), &qword_27F22D4D8, &qword_24F9CF7D0);
      (*(v22 + 104))(v24, *MEMORY[0x277D21CA8], v23);
      sub_24E601704(v20, &qword_27F22D4E0, &unk_24F994C00);
      (*(v18 + 8))(v19, v21);

      v25 = *(v0 + 8);

      return v25();
    }

    v36 = *(v0 + 424);
    (*(v14 + 16))(*(v0 + 232), v12, v13);
    v38 = sub_24F920FD8();
    v40 = *(v0 + 224);
    v39 = *(v0 + 232);
    v41 = *(v0 + 216);
    if (v36)
    {
      (*(v40 + 8))(v39, *(v0 + 216));
      v42 = v36;
      v43 = sub_24F9220B8();
      v44 = sub_24F92BD98();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = 138412290;
        v47 = v36;
        v48 = _swift_stdlib_bridgeErrorToNSError();
        *(v45 + 4) = v48;
        *v46 = v48;
        _os_log_impl(&dword_24E5DD000, v43, v44, "CompleteWelcomeMoltresActionImplementation: Error checking and setting the contacts integration consent, reason: %@", v45, 0xCu);
        sub_24E601704(v46, &qword_27F227B20, &qword_24F944D30);
        MEMORY[0x2530542D0](v46, -1, -1);
        MEMORY[0x2530542D0](v45, -1, -1);
      }

      else
      {
      }

      goto LABEL_6;
    }

    *(v0 + 448) = v37;
    v49 = v37;
    (*(v40 + 8))(v39, v41);
    v50 = swift_task_alloc();
    *(v0 + 456) = v50;
    *v50 = v0;
    v50[1] = sub_24F180DBC;

    return sub_24F183444(v38, v49);
  }

  else
  {
    v27 = *(v0 + 312);
    v28 = *(v0 + 288);
    v29 = *(v0 + 208);
    v30 = *(v0 + 160);
    (*(*(v0 + 200) + 32))(v29, *(v0 + 248), *(v0 + 192));
    v31 = swift_task_alloc();
    *(v0 + 432) = v31;
    v31[2] = v30;
    v31[3] = v28;
    v31[4] = v27;
    v31[5] = v29;
    v32 = swift_task_alloc();
    *(v0 + 440) = v32;
    *v32 = v0;
    v32[1] = sub_24F1808CC;
    v33 = MEMORY[0x277D84F78] + 8;
    v34 = MEMORY[0x277D84F78] + 8;
    v35 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200600](v32, v33, v34, 0, 0, &unk_24F9CF7E8, v31, v35);
  }
}

uint64_t sub_24F1822E0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v1 = *(v0 + 472);
  v2 = v1;
  v3 = sub_24F9220B8();
  v4 = sub_24F92BD98();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_24E5DD000, v3, v4, "CompleteWelcomeMoltresActionImplementation: Error checking and setting the contacts integration consent, reason: %@", v5, 0xCu);
    sub_24E601704(v6, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v6, -1, -1);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  else
  {
  }

  v9 = *(v0 + 152);
  if ((*(v9 + 8) & 1) == 0)
  {
    v10 = *v9;
    v11 = [*(v0 + 320) standardUserDefaults];
    sub_24F005DA4(v10);
  }

  v12 = *(v0 + 304);
  v13 = *(v0 + 312);
  v14 = *(v0 + 288);
  v15 = *(v0 + 296);
  v16 = *(v0 + 176);
  v17 = *(v0 + 168);
  v18 = *(v0 + 136);
  sub_24E601704(*(v0 + 264), &qword_27F22D4D8, &qword_24F9CF7D0);
  (*(v16 + 104))(v18, *MEMORY[0x277D21CA8], v17);
  sub_24E601704(v14, &qword_27F22D4E0, &unk_24F994C00);
  (*(v12 + 8))(v13, v15);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_24F182590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  v7 = sub_24F920958();
  v6[7] = v7;
  v8 = *(v7 - 8);
  v6[8] = v8;
  v6[9] = *(v8 + 64);
  v6[10] = swift_task_alloc();
  v9 = sub_24F921338();
  v6[11] = v9;
  v10 = *(v9 - 8);
  v6[12] = v10;
  v6[13] = *(v10 + 64);
  v6[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  v6[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D4E0, &unk_24F994C00);
  v6[16] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8, &qword_24F93B580);
  v6[17] = v11;
  v12 = *(v11 - 8);
  v6[18] = v12;
  v6[19] = *(v12 + 64);
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F1827B0, 0, 0);
}

uint64_t sub_24F1827B0()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  sub_24E60169C(v0[3], v3, &qword_27F22D4E0, &unk_24F994C00);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_24E601704(v0[16], &qword_27F22D4E0, &unk_24F994C00);
  }

  else
  {
    v4 = v0[21];
    v40 = v0[20];
    v5 = v0[18];
    v34 = v0[19];
    v6 = v0[17];
    v7 = v0[14];
    v8 = v0[15];
    v37 = v8;
    v9 = v0[12];
    v33 = v0[13];
    v10 = v0[11];
    v30 = v10;
    v31 = v7;
    v39 = v0[10];
    v11 = v0[8];
    v32 = v0[7];
    v35 = v0[6];
    v29 = v0[5];
    v28 = v0[4];
    v38 = *(v5 + 32);
    v36 = v4;
    v38(v4, v0[16], v6);
    v12 = sub_24F92B858();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
    (*(v9 + 16))(v7, v28, v10);
    (*(v5 + 16))(v40, v4, v6);
    (*(v11 + 16))(v39, v29, v32);
    v13 = (*(v9 + 80) + 40) & ~*(v9 + 80);
    v14 = (v33 + *(v5 + 80) + v13) & ~*(v5 + 80);
    v15 = (v34 + *(v11 + 80) + v14) & ~*(v11 + 80);
    v16 = swift_allocObject();
    *(v16 + 2) = 0;
    *(v16 + 3) = 0;
    *(v16 + 4) = v35;
    (*(v9 + 32))(&v16[v13], v31, v30);
    v38(&v16[v14], v40, v6);
    (*(v11 + 32))(&v16[v15], v39, v32);
    sub_24F17EEF4(v37, &unk_24F9CF808, v16);
    sub_24E601704(v37, &unk_27F21B570, &qword_24F93B020);
    (*(v5 + 8))(v36, v6);
  }

  v17 = v0[15];
  v18 = v0[10];
  v20 = v0[7];
  v19 = v0[8];
  v22 = v0[5];
  v21 = v0[6];
  v23 = sub_24F92B858();
  (*(*(v23 - 8) + 56))(v17, 1, 1, v23);
  (*(v19 + 16))(v18, v22, v20);
  v24 = (*(v19 + 80) + 40) & ~*(v19 + 80);
  v25 = swift_allocObject();
  *(v25 + 2) = 0;
  *(v25 + 3) = 0;
  *(v25 + 4) = v21;
  (*(v19 + 32))(&v25[v24], v18, v20);
  sub_24F17EEF4(v17, &unk_24F9CF7F8, v25);
  sub_24E601704(v17, &unk_27F21B570, &qword_24F93B020);

  v26 = v0[1];

  return v26();
}

uint64_t sub_24F182BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_24E6541E4;

  return sub_24F183D48(a4, a5, a6);
}

uint64_t sub_24F182CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_24E614970;

  return sub_24F1847EC(a4);
}

void sub_24F182D48(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23ADD8, &unk_24F9CF830);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  v10 = sub_24F92BB08();
  v11 = [a2 acknowledgePrivacy_];

  (*(v7 + 16))(v9, a1, v6);
  v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  (*(v7 + 32))(v13 + v12, v9, v6);
  aBlock[4] = sub_24F184D48;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E9F9FFC;
  aBlock[3] = &block_descriptor_123;
  v14 = _Block_copy(aBlock);

  [v11 addFinishBlock_];
  _Block_release(v14);
}

uint64_t sub_24F182F34(char a1, id a2, uint64_t a3)
{
  if (a2)
  {
    v5 = a2;
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v6 = sub_24F9220D8();
    __swift_project_value_buffer(v6, qword_27F39E8E0);
    v7 = a2;
    v8 = sub_24F9220B8();
    v9 = sub_24F92BDB8();

    if (!os_log_type_enabled(v8, v9))
    {

      goto LABEL_12;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 134218242;
    *(v10 + 4) = a3;
    *(v10 + 12) = 2112;
    v12 = a2;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v13;
    *v11 = v13;
    _os_log_impl(&dword_24E5DD000, v8, v9, "CompleteWelcomeMoltresActionImplementation: (AS) Failed to acknowledge Games GDPR (version %ld) , reason: %@", v10, 0x16u);
    sub_24E601704(v11, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v11, -1, -1);
    MEMORY[0x2530542D0](v10, -1, -1);
  }

  else
  {
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v15 = sub_24F9220D8();
    __swift_project_value_buffer(v15, qword_27F39E8E0);
    v8 = sub_24F9220B8();
    v16 = sub_24F92BD98();
    if (os_log_type_enabled(v8, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134218240;
      *(v17 + 4) = a3;
      *(v17 + 12) = 1024;
      *(v17 + 14) = a1 & 1;
      _os_log_impl(&dword_24E5DD000, v8, v16, "CompleteWelcomeMoltresActionImplementation: (AS) Acknowledged Games GDPR (version %ld), success: %{BOOL}d", v17, 0x12u);
      MEMORY[0x2530542D0](v17, -1, -1);
    }
  }

LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23ADD8, &unk_24F9CF830);
  return sub_24F92B798();
}

uint64_t sub_24F1831BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompleteWelcomeMoltresAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F183220()
{
  v1 = (type metadata accessor for CompleteWelcomeMoltresAction(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);

  v3 = v0 + v1[7];
  v4 = sub_24F928AD8();
  (*(*(v4 - 8) + 8))(v3 + v2, v4);

  return swift_deallocObject();
}

uint64_t sub_24F183308(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(type metadata accessor for CompleteWelcomeMoltresAction(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E614970;

  return sub_24F17F33C(a1, v7, v1 + v6, v4);
}

uint64_t sub_24F1833FC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F183444(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return MEMORY[0x2822009F8](sub_24F183464, 0, 0);
}

uint64_t sub_24F183464()
{
  v1 = [objc_opt_self() proxyForLocalPlayer];
  v2 = [v1 accountServicePrivate];
  v0[20] = v2;

  v3 = sub_24F92B098();
  v0[21] = v3;
  v0[2] = v0;
  v0[7] = v0 + 22;
  v0[3] = sub_24EB78FBC;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229BE0, &unk_24F9866B0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24EBF219C;
  v0[13] = &block_descriptor_35;
  v0[14] = v4;
  [v2 getAccountAgeCategoryForPlayerID:v3 withCompletion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24F1835EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F183634(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_24E614970;

  return sub_24F182590(a1, a2, v7, v9, v8, v6);
}

uint64_t sub_24F1836FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D4E0, &unk_24F994C00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F18376C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D4D8, &qword_24F9CF7D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F1837DC()
{
  v1 = sub_24F920958();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24F1838A0(uint64_t a1)
{
  v4 = v1[4];
  v5 = *(sub_24F920958() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24E6541E4;

  return sub_24F182CAC(a1, v7, v8, v1 + v6, v4);
}

uint64_t sub_24F183998()
{
  v1 = sub_24F921338();
  v2 = *(v1 - 8);
  v12 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v13 = v1;
  v3 = v12 + *(v2 + 64);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8, &qword_24F93B580);
  v5 = *(v4 - 8);
  v6 = (v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = sub_24F920958();
  v9 = *(v8 - 8);
  v10 = (v6 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v12, v13);
  (*(v5 + 8))(v0 + v6, v4);
  (*(v9 + 8))(v0 + v10, v8);

  return swift_deallocObject();
}

uint64_t sub_24F183B80(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  v6 = *(sub_24F921338() - 8);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v8 = v7 + *(v6 + 64);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8, &qword_24F93B580) - 8);
  v10 = (v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_24F920958() - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = v1[2];
  v15 = v1[3];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_24E6541E4;

  return sub_24F182BF8(a1, v14, v15, v1 + v7, v1 + v10, v1 + v13, v5);
}

uint64_t sub_24F183D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  v4 = sub_24F920988();
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  v5 = sub_24F9208F8();
  v3[17] = v5;
  v3[18] = *(v5 - 8);
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F183E68, 0, 0);
}

uint64_t sub_24F183E68()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);
  v4 = sub_24F920908();
  *(v0 + 160) = MEMORY[0x253046260](v4);
  *(v0 + 65) = v5;
  v6 = *(v1 + 8);
  v6(v2, v3);
  v7 = sub_24F920918();
  *(v0 + 168) = MEMORY[0x253046260](v7);
  *(v0 + 66) = v8;
  v6(v2, v3);
  sub_24F9212E8();
  v9 = *(v0 + 40);
  v10 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v9);
  sub_24F920978();
  v11 = swift_task_alloc();
  *(v0 + 176) = v11;
  *v11 = v0;
  v11[1] = sub_24F183FF4;
  v12 = *(v0 + 128);
  v13 = *(v0 + 96);

  return MEMORY[0x282165200](v12, v13, v9, v10);
}

uint64_t sub_24F183FF4()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  *(*v1 + 184) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_24F184444;
  }

  else
  {
    v5 = sub_24F184164;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24F184164()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  __swift_project_value_buffer(v1, qword_27F39E8E0);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "CompleteWelcomeMoltresActionImplementation: Call to setProfileSettings completed.", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  v5 = *(v0 + 65);

  v6 = sub_24F9220B8();
  if (v5)
  {
    v7 = sub_24F92BDB8();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_11;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "CompleteWelcomeMoltresActionImplementation: (GC) Unable to acknowledge Game Center GDPR because the obtained OnboardingState has a nil version.";
    v10 = v7;
    v11 = v6;
    v12 = v8;
    v13 = 2;
  }

  else
  {
    v14 = sub_24F92BD98();
    if (!os_log_type_enabled(v6, v14))
    {
      goto LABEL_11;
    }

    v15 = *(v0 + 160);
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = v15;
    v9 = "CompleteWelcomeMoltresActionImplementation: (GC) Acknowledged Game Center GDPR (version %ld)";
    v10 = v14;
    v11 = v6;
    v12 = v8;
    v13 = 12;
  }

  _os_log_impl(&dword_24E5DD000, v11, v10, v9, v12, v13);
  MEMORY[0x2530542D0](v8, -1, -1);
LABEL_11:
  v16 = *(v0 + 66);

  v17 = sub_24F9220B8();
  if (v16)
  {
    v18 = sub_24F92BDB8();
    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_17;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = "CompleteWelcomeMoltresActionImplementation: (GC) Unable to acknowledge Games GDPR because the obtained OnboardingState has a nil version.";
    v21 = v18;
    v22 = v17;
    v23 = v19;
    v24 = 2;
  }

  else
  {
    v25 = sub_24F92BD98();
    if (!os_log_type_enabled(v17, v25))
    {
      goto LABEL_17;
    }

    v26 = *(v0 + 168);
    v19 = swift_slowAlloc();
    *v19 = 134217984;
    *(v19 + 4) = v26;
    v20 = "CompleteWelcomeMoltresActionImplementation: (GC) Acknowledged Games GDPR (version %ld)";
    v21 = v25;
    v22 = v17;
    v23 = v19;
    v24 = 12;
  }

  _os_log_impl(&dword_24E5DD000, v22, v21, v20, v23, v24);
  MEMORY[0x2530542D0](v19, -1, -1);
LABEL_17:

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_24F184444()
{
  v26 = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 184);
  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8E0);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 184);
  if (v6)
  {
    v24 = *(v0 + 66);
    v8 = *(v0 + 65);
    v9 = *(v0 + 160);
    v23 = *(v0 + 168);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v10 = 136315650;
    *(v0 + 56) = v9;
    *(v0 + 64) = v8 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215390, &qword_24F93FC50);
    v13 = sub_24F92B188();
    v15 = sub_24E7620D4(v13, v14, &v25);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    *(v0 + 72) = v23;
    *(v0 + 80) = v24 & 1;
    v16 = sub_24F92B188();
    v18 = sub_24E7620D4(v16, v17, &v25);

    *(v10 + 14) = v18;
    *(v10 + 22) = 2112;
    v19 = v7;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v20;
    *v11 = v20;
    _os_log_impl(&dword_24E5DD000, v4, v5, "CompleteWelcomeMoltresActionImplementation: (GC) Failed to acknowledge GDPRs (Game Center: %s | Games: %s, reason: %@", v10, 0x20u);
    sub_24E601704(v11, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v11, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x2530542D0](v12, -1, -1);
    MEMORY[0x2530542D0](v10, -1, -1);
  }

  else
  {
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_24F1846FC()
{

  return swift_deallocObject();
}

uint64_t sub_24F184734(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24E6541E4;

  return sub_24E7B1F20(a1, v4);
}

uint64_t sub_24F1847EC(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_24F9208F8();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F1848AC, 0, 0);
}

uint64_t sub_24F1848AC(uint64_t a1)
{
  v3 = v1[4];
  v2 = v1[5];
  v4 = v1[3];
  v5 = sub_24F920918();
  v6 = MEMORY[0x253046260](v5);
  v8 = v7;
  (*(v3 + 8))(v2, v4);
  if (v8)
  {
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v9 = sub_24F9220D8();
    __swift_project_value_buffer(v9, qword_27F39E8E0);
    v10 = sub_24F9220B8();
    v11 = sub_24F92BDB8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_24E5DD000, v10, v11, "CompleteWelcomeMoltresActionImplementation: (AS) Unable to acknowledge Games GDPR because its version is nil from OnboardingState.", v12, 2u);
      MEMORY[0x2530542D0](v12, -1, -1);
    }

    v13 = v1[1];

    return v13();
  }

  else
  {
    v15 = objc_allocWithZone(MEMORY[0x277CEE3D0]);
    v16 = sub_24F92B098();
    v17 = [v15 initWithPrivacyIdentifier_];
    v1[6] = v17;

    v18 = swift_task_alloc();
    v1[7] = v18;
    *(v18 + 16) = v17;
    *(v18 + 24) = v6;
    v19 = swift_task_alloc();
    v1[8] = v19;
    *v19 = v1;
    v19[1] = sub_24F184B2C;
    v20 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822007B8](v19, 0, 0, 0xD00000000000003BLL, 0x800000024FA6E030, sub_24F184CAC, v18, v20);
  }
}

uint64_t sub_24F184B2C()
{

  return MEMORY[0x2822009F8](sub_24F184C44, 0, 0);
}

uint64_t sub_24F184C44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F184CB4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23ADD8, &unk_24F9CF830);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24F184D48(char a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23ADD8, &unk_24F9CF830);
  v5 = *(v2 + 16);

  return sub_24F182F34(a1, a2, v5);
}

uint64_t block_copy_helper_123(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F184E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AchievementDetails(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 88);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24F184F04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AchievementDetails(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 88) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for UnifiedSingleColumnViewWithGameLockup(uint64_t a1)
{
  result = qword_27F23ADE0;
  if (!qword_27F23ADE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F18500C(uint64_t a1)
{
  result = type metadata accessor for AchievementDetails(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24F1850AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254F40, &qword_24F984790);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23ADF8, &qword_24F9CF8C8);
  MEMORY[0x28223BE20](v7);
  v9 = v16 - v8;
  v16[8] = a1;
  sub_24F9257D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AE00, &qword_24F9CF8D0);
  sub_24F186048(&qword_27F23AE08, &qword_27F23AE00, &qword_24F9CF8D0, sub_24F186018);
  sub_24F923438();
  type metadata accessor for UnifiedSingleColumnViewWithGameLockup(0);

  sub_24F927878();
  sub_24F927898();
  sub_24F923BD8();
  v10 = sub_24F925818();
  v11 = sub_24F924058();
  v12 = &v9[*(v7 + 36)];
  *v12 = v16[11];
  v13 = v18;
  *(v12 + 8) = v17;
  *(v12 + 24) = v13;
  *(v12 + 5) = v11;
  v12[48] = v10;
  v14 = sub_24E6A4C1C();
  sub_24F924B68();
  v16[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AE40, &qword_24F9CF8F0);
  sub_24F18618C();
  v16[9] = &type metadata for GameOverlayViewPredicate;
  v16[10] = v14;
  swift_getOpaqueTypeConformance2();
  sub_24F186270();
  sub_24F926B08();
  (*(v4 + 8))(v6, v3);
  return sub_24E601704(v9, &qword_27F23ADF8, &qword_24F9CF8C8);
}

uint64_t sub_24F1853B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AE38, &qword_24F9CF8E8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v40 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AE28, &qword_24F9CF8E0);
  MEMORY[0x28223BE20](v6);
  v8 = v40 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AE18, &qword_24F9CF8D8);
  MEMORY[0x28223BE20](v9);
  v11 = v40 - v10;
  *v5 = sub_24F924C88();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v12 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AEA8, &qword_24F9CF970) + 44)];
  v40[1] = a1;
  sub_24F186330(a1, v12, type metadata accessor for AchievementDetails);
  v13 = *(type metadata accessor for AchievementDetailsSingleColumnView(0) + 20);
  if (qword_27F210E90 != -1)
  {
    swift_once();
  }

  memcpy(v43, &xmmword_27F237800, 0x178uLL);
  memcpy((v12 + v13), &xmmword_27F237800, 0x178uLL);
  sub_24E76A93C(v43, v42);
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v5, v8, &qword_27F23AE38, &qword_24F9CF8E8);
  v14 = &v8[*(v6 + 36)];
  v15 = v42[5];
  *(v14 + 4) = v42[4];
  *(v14 + 5) = v15;
  *(v14 + 6) = v42[6];
  v16 = v42[1];
  *v14 = v42[0];
  *(v14 + 1) = v16;
  v17 = v42[3];
  *(v14 + 2) = v42[2];
  *(v14 + 3) = v17;
  v18 = sub_24F925828();
  sub_24F923318();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_24E6009C8(v8, v11, &qword_27F23AE28, &qword_24F9CF8E0);
  v27 = &v11[*(v9 + 36)];
  *v27 = v18;
  *(v27 + 1) = v20;
  *(v27 + 2) = v22;
  *(v27 + 3) = v24;
  *(v27 + 4) = v26;
  v27[40] = 0;
  v28 = sub_24F9257F8();
  type metadata accessor for UnifiedSingleColumnViewWithGameLockup(0);
  sub_24F923318();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = v41;
  sub_24E6009C8(v11, v41, &qword_27F23AE18, &qword_24F9CF8D8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AE00, &qword_24F9CF8D0);
  v39 = v37 + *(result + 36);
  *v39 = v28;
  *(v39 + 8) = v30;
  *(v39 + 16) = v32;
  *(v39 + 24) = v34;
  *(v39 + 32) = v36;
  *(v39 + 40) = 0;
  return result;
}

uint64_t sub_24F185734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24F924C88();
  v7 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AE40, &qword_24F9CF8F0) + 36);
  sub_24F18580C(a2, v7);
  v8 = sub_24F923868();
  LOBYTE(a2) = MEMORY[0x25304B200]((2 * v8));
  v9 = sub_24F924068();
  v10 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AE80, &qword_24F9CF908) + 36);
  *v10 = v9;
  *(v10 + 8) = 0;
  *(v10 + 16) = 1;
  *(v10 + 17) = a2;
  *(v10 + 24) = v6;
  return sub_24E60169C(a1, a3, &qword_27F23ADF8, &qword_24F9CF8C8);
}

uint64_t sub_24F18580C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AE88, &qword_24F9CF910);
  MEMORY[0x28223BE20](v73);
  v4 = &v70 - v3;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AE90, &qword_24F9CF918);
  MEMORY[0x28223BE20](v74);
  v6 = &v70 - v5;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AE98, &qword_24F9CF920);
  MEMORY[0x28223BE20](v75);
  v77 = &v70 - v7;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AEA0, &qword_24F9CF928);
  v8 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v71 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v76 = &v70 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221FC0, &unk_24F9CF930);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v70 - v13;
  v15 = type metadata accessor for GameLockup(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(type metadata accessor for AchievementDetails(0) + 20);
  v72 = a1;
  sub_24E60169C(a1 + v19, v14, &qword_27F221FC0, &unk_24F9CF930);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_24E601704(v14, &qword_27F221FC0, &unk_24F9CF930);
    v20 = 1;
    v21 = v79;
    v22 = v78;
  }

  else
  {
    sub_24E7A3ED0(v14, v18);
    *&v82[8] = v15;
    *&v82[16] = sub_24EC5F38C(&qword_27F216AD0, type metadata accessor for GameLockup, &unk_24F943740);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v81);
    sub_24F186330(v18, boxed_opaque_existential_1, type metadata accessor for GameLockup);
    type metadata accessor for GSKComponentContentBuilder(0);
    sub_24EC5F38C(&qword_27F21C648, type metadata accessor for GSKComponentContentBuilder, &unk_24F9FB114);
    *&v80 = sub_24F923598();
    BYTE8(v80) = v24 & 1;
    *&v82[24] = 256;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217E08, &qword_24F9476F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93A400;
    v26 = sub_24F925838();
    *(inited + 32) = v26;
    v27 = sub_24F925858();
    *(inited + 33) = v27;
    v28 = sub_24F925848();
    sub_24F925848();
    if (sub_24F925848() != v26)
    {
      v28 = sub_24F925848();
    }

    sub_24F925848();
    if (sub_24F925848() != v27)
    {
      v28 = sub_24F925848();
    }

    v29 = v72 + *(type metadata accessor for UnifiedSingleColumnViewWithGameLockup(0) + 24);
    sub_24F923318();
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v84 = v80;
    v85 = v81;
    *v86 = *v82;
    *&v86[10] = *&v82[10];
    v83 = 0;
    v38 = &v4[*(v73 + 36)];
    v39 = *(v29 + 8);
    v40 = *(type metadata accessor for ComponentBackgroundModifier(0) + 40);
    v41 = type metadata accessor for GradientBackground(0);
    (*(*(v41 - 8) + 56))(&v38[v40], 1, 1, v41);
    *v38 = swift_getKeyPath();
    v38[8] = 0;
    *(v38 + 2) = v39;
    *(v38 + 3) = 0;
    *(v38 + 4) = 0;
    *(v38 + 20) = 257;
    v42 = v85;
    *v4 = v84;
    *(v4 + 1) = v42;
    v43 = *&v86[16];
    *(v4 + 2) = *v86;
    *(v4 + 3) = v43;
    v4[64] = v28;
    *(v4 + 65) = v80;
    *(v4 + 17) = *(&v80 + 3);
    *(v4 + 9) = v31;
    *(v4 + 10) = v33;
    *(v4 + 11) = v35;
    *(v4 + 12) = v37;
    v4[104] = v83;
    sub_24F926C88();
    v44 = sub_24F926D08();

    sub_24E6009C8(v4, v6, &qword_27F23AE88, &qword_24F9CF910);
    v45 = &v6[*(v74 + 36)];
    *v45 = v44;
    *(v45 + 8) = xmmword_24F94D5F0;
    *(v45 + 3) = 0x4020000000000000;
    LOBYTE(v38) = sub_24F9257F8();
    sub_24F923318();
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v54 = v77;
    sub_24E6009C8(v6, v77, &qword_27F23AE90, &qword_24F9CF918);
    v55 = v54 + *(v75 + 36);
    *v55 = v38;
    *(v55 + 8) = v47;
    *(v55 + 16) = v49;
    *(v55 + 24) = v51;
    *(v55 + 32) = v53;
    *(v55 + 40) = 0;
    LOBYTE(v38) = sub_24F925828();
    sub_24F923318();
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v63 = v62;
    sub_24EC5F3DC(v18);
    v64 = v71;
    sub_24E6009C8(v54, v71, &qword_27F23AE98, &qword_24F9CF920);
    v22 = v78;
    v65 = v64 + *(v78 + 36);
    *v65 = v38;
    *(v65 + 8) = v57;
    *(v65 + 16) = v59;
    *(v65 + 24) = v61;
    *(v65 + 32) = v63;
    *(v65 + 40) = 0;
    v66 = v64;
    v67 = v76;
    sub_24E6009C8(v66, v76, &qword_27F23AEA0, &qword_24F9CF928);
    v68 = v67;
    v21 = v79;
    sub_24E6009C8(v68, v79, &qword_27F23AEA0, &qword_24F9CF928);
    v20 = 0;
  }

  return (*(v8 + 56))(v21, v20, 1, v22);
}

uint64_t sub_24F185FC0@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_24F924C88();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23ADF0, &unk_24F9CF8B8);
  return sub_24F1850AC(v2, a2 + *(v4 + 44));
}

uint64_t sub_24F186048(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F1860CC()
{
  result = qword_27F23AE20;
  if (!qword_27F23AE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AE28, &qword_24F9CF8E0);
    sub_24E602068(&qword_27F23AE30, &qword_27F23AE38, &qword_24F9CF8E8, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AE20);
  }

  return result;
}

unint64_t sub_24F18618C()
{
  result = qword_27F23AE48;
  if (!qword_27F23AE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23ADF8, &qword_24F9CF8C8);
    sub_24E602068(&qword_27F23AE50, &qword_27F23AE58, &qword_24F9CF8F8, MEMORY[0x277CDD6E0]);
    sub_24E602068(&qword_27F23AE60, &qword_27F23AE68, &qword_24F9CF900, MEMORY[0x277CDF520]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AE48);
  }

  return result;
}

unint64_t sub_24F186270()
{
  result = qword_27F23AE70;
  if (!qword_27F23AE70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AE40, &qword_24F9CF8F0);
    sub_24F18618C();
    sub_24E602068(&qword_27F23AE78, &qword_27F23AE80, &qword_24F9CF908, MEMORY[0x277CE01C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AE70);
  }

  return result;
}

uint64_t sub_24F186330(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id static BundleImage.load(_:bundle:with:compatibleWith:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v10 = a3;
  }

  else
  {
    if (qword_27F2103D8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v10 = qword_27F22B5B8;
  }

  v11 = a3;
  v12 = sub_24F92B098();
  v13 = [objc_opt_self() imageNamed:v12 inBundle:v10 compatibleWithTraitCollection:a5];

  if (v13)
  {
    if (a4)
    {
      v14 = [v13 imageWithConfiguration_];

      return v14;
    }
  }

  else
  {
    if (qword_27F210568 != -1)
    {
      swift_once();
    }

    v16 = sub_24F92AAE8();
    __swift_project_value_buffer(v16, qword_27F39C398);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    v17[3] = MEMORY[0x277D837D0];
    v17[0] = a1;
    v17[1] = a2;

    sub_24F928458();
    sub_24E601704(v17, &qword_27F2129B0, &unk_24F945320);
    sub_24F92A5A8();

    return [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  }

  return v13;
}

id _s12GameStoreKit11BundleImageC4load7artwork4withSo7UIImageCSgAA7ArtworkC_So0I19SymbolConfigurationCSgtFZ_0(uint64_t a1, id a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_24F91F4A8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91F488();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_24E601704(v6, &qword_27F228530, &unk_24F93C6E0);
    return 0;
  }

  (*(v8 + 32))(v10, v6, v7);
  v11 = sub_24F91F438();
  if (!v12)
  {
    (*(v8 + 8))(v10, v7);
    return 0;
  }

  v13 = v11;
  v14 = v12;
  v15 = *(a1 + 24);
  v30 = *(a1 + 16);
  v31 = v15;
  if (!Artwork.URLTemplate.isBundleImage.getter())
  {
    (*(v8 + 8))(v10, v7);

    return 0;
  }

  if (*(a1 + 96) > 1u)
  {
    if (*(a1 + 96) != 2)
    {
      goto LABEL_18;
    }

    v16 = 3;
  }

  else if (*(a1 + 96))
  {
    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  v18 = [objc_opt_self() configurationWithScale_];
  if (v18)
  {
    v19 = v18;
    if (a2)
    {
      v20 = a2;
      a2 = [v19 configurationByApplyingConfiguration_];

      goto LABEL_19;
    }
  }

LABEL_18:
  v21 = a2;
LABEL_19:
  if (qword_27F2103D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v22 = qword_27F22B5B8;
  v23 = sub_24F92B098();
  v24 = [objc_opt_self() imageNamed:v23 inBundle:v22 compatibleWithTraitCollection:0];

  if (!v24)
  {
    if (qword_27F210568 != -1)
    {
      swift_once();
    }

    v28 = sub_24F92AAE8();
    v29 = __swift_project_value_buffer(v28, qword_27F39C398);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    v32 = MEMORY[0x277D837D0];
    v30 = v13;
    v31 = v14;
    sub_24F928458();
    sub_24E601704(&v30, &qword_27F2129B0, &unk_24F945320);
    sub_24F92A5A8();

    v25 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    v27 = a2;
    goto LABEL_27;
  }

  v25 = v24;

  if (a2)
  {
    v26 = a2;
    v27 = v24;
    v25 = [v24 imageWithConfiguration_];

LABEL_27:
  }

  (*(v8 + 8))(v10, v7);
  return v25;
}

id sub_24F186C18(uint64_t a1)
{
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  if (Artwork.URLTemplate.isSystemImage.getter())
  {
    _s12GameStoreKit11SystemImageO4name3forSSSgAA7ArtworkC_tFZ_0(a1);
    if (v2)
    {
      if (*(a1 + 96) > 1u)
      {
        if (*(a1 + 96) != 2)
        {
LABEL_15:
          v5 = sub_24F92B098();

          v6 = [objc_opt_self() _systemImageNamed_withConfiguration_];

          return v6;
        }

        v3 = 3;
      }

      else if (*(a1 + 96))
      {
        v3 = 2;
      }

      else
      {
        v3 = 1;
      }

      goto LABEL_15;
    }

    return 0;
  }

  if (!Artwork.URLTemplate.isBundleImage.getter())
  {
    return 0;
  }

  return _s12GameStoreKit11BundleImageC4load7artwork4withSo7UIImageCSgAA7ArtworkC_So0I19SymbolConfigurationCSgtFZ_0(a1, 0);
}

uint64_t sub_24F186D5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24F186DA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24F186E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2387A8, &qword_24F9CFD50);
  sub_24F924038();
  sub_24F09B638();
  sub_24E602068(&qword_27F2387B8, &qword_27F2387A8, &qword_24F9CFD50, MEMORY[0x277CDFC88]);
  swift_getWitnessTable();
  return sub_24F926B08();
}

uint64_t sub_24F186F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215A98, &qword_24F940DC0);
  sub_24F924038();
  sub_24E6695B8();
  sub_24E602068(&qword_27F2551A0, &qword_27F215A98, &qword_24F940DC0, MEMORY[0x277CDFC88]);
  swift_getWitnessTable();
  return sub_24F926B08();
}

uint64_t sub_24F187068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>)
{
  v33[1] = a1;
  v34 = a8;
  v35 = a9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215A98, &qword_24F940DC0);
  v22 = sub_24F924038();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v33 - v27;
  v36 = a2;
  v37 = a3;
  v38 = a4;
  v39 = a5;
  v40 = a10;
  v41 = a11;
  v42 = a12;
  v43 = a13;
  v44 = a6;
  sub_24F927618();
  sub_24EB1FC40();
  v29 = v34;
  sub_24F926A08();
  v30 = sub_24E602068(&qword_27F2551A0, &qword_27F215A98, &qword_24F940DC0, MEMORY[0x277CDFC88]);
  v45 = v29;
  v46 = v30;
  swift_getWitnessTable();
  sub_24E7896B8();
  v31 = *(v23 + 8);
  v31(v25, v22);
  sub_24E7896B8();
  return (v31)(v28, v22);
}

uint64_t sub_24F1872B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>)
{
  if (qword_27F210F78 != -1)
  {
    swift_once();
  }

  if (byte_27F39DBC0 == 1)
  {
  }

  else
  {
    a1 = 0;
    a2 = 0;
  }

  if (qword_27F210F80 != -1)
  {
    swift_once();
  }

  v20 = byte_27F39DBC1;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a7;
  *(a6 + 40) = a8;
  *(a6 + 48) = a9;
  *(a6 + 56) = a10;
  *(a6 + 64) = a5;
  *(a6 + 72) = 0x4024000000000000;
  *(a6 + 80) = v20;
}

uint64_t sub_24F1873D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a9@<X8>, uint64_t a10)
{
  v28 = a1;
  v29 = a9;
  v26 = a7;
  v27 = a10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2387A8, &qword_24F9CFD50);
  v15 = sub_24F924038();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v26 - v20;
  v30 = a2;
  v31 = a3;
  v32 = a4 & 1;
  v33 = a5;
  v34 = a6;
  v35 = v26;
  sub_24F927618();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AF58, &qword_24F9CFD58);
  sub_24F18AB54();
  v22 = v27;
  sub_24F926A08();
  v23 = sub_24E602068(&qword_27F2387B8, &qword_27F2387A8, &qword_24F9CFD50, MEMORY[0x277CDFC88]);
  v36 = v22;
  v37 = v23;
  swift_getWitnessTable();
  sub_24E7896B8();
  v24 = *(v16 + 8);
  v24(v18, v15);
  sub_24E7896B8();
  return (v24)(v21, v15);
}

double sub_24F187614@<D0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v26[0] = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v26 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F92ADC8();
  v16 = sub_24F929608();
  if ((*(*(v16 - 8) + 48))(v15, 1, v16) != 1)
  {
    sub_24E601704(v15, &qword_27F213E68, &unk_24F93BC80);
    if (a3)
    {
      v20 = a1[3];
      v21 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v20);
      v22 = sub_24E6438B4(v20, v21);
      if (v23)
      {
        goto LABEL_3;
      }

      v26[0] = v22;
    }

    v26[1] = v26[0];
    v17 = sub_24F92CD88();
    v18 = v24;

    v19 = 0x4024000000000000;
    goto LABEL_8;
  }

  sub_24E601704(v15, &qword_27F213E68, &unk_24F93BC80);
LABEL_3:
  v17 = 0;
  v18 = 0;
  a4 = 0;
  a5 = 0;
  a6 = 0;
  v19 = 0;
LABEL_8:
  *a7 = v17;
  *(a7 + 8) = v18;
  *(a7 + 16) = a4;
  *(a7 + 24) = a5;
  result = 0.0;
  *(a7 + 32) = 0u;
  *(a7 + 48) = 0u;
  *(a7 + 64) = a6;
  *(a7 + 72) = v19;
  *(a7 + 80) = 0;
  return result;
}

uint64_t sub_24F1877E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24F924848();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_getKeyPath();
  v10 = result;
  v11 = *(v2 + 40);
  if (*(v2 + 48) == 1)
  {
    v42[0] = *(v2 + 40);
  }

  else
  {

    sub_24F92BDC8();
    v23 = v5;
    v12 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v11, 0);
    result = (*(v6 + 8))(v8, v23);
    v11 = v42[0];
  }

  if (__OFADD__(v11, 1))
  {
    __break(1u);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AF40, &qword_24F9CFD30);
    (*(*(v13 - 8) + 16))(a2, a1, v13);
    v14 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AF48, &qword_24F9CFD38) + 36));
    *v14 = v10;
    v14[1] = v11 + 1;
    v15 = sub_24F927618();
    v17 = v16;
    sub_24F187B00(v2, &v25);
    v33 = v27;
    v34 = v28;
    v35 = v29;
    v31 = v25;
    v32 = v26;
    *&v36 = v30;
    *(&v36 + 1) = v15;
    v37 = v17;
    v18 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AF50, &unk_24F9CFD40) + 36);
    v19 = v36;
    *(v18 + 64) = v35;
    *(v18 + 80) = v19;
    *(v18 + 96) = v37;
    v20 = v32;
    *v18 = v31;
    *(v18 + 16) = v20;
    v21 = v34;
    *(v18 + 32) = v33;
    *(v18 + 48) = v21;
    v38[0] = v25;
    v38[1] = v26;
    v38[3] = v28;
    v38[4] = v29;
    v38[2] = v27;
    v39 = v30;
    v40 = v15;
    v41 = v17;
    sub_24E60169C(&v31, &v24, &qword_27F215A98, &qword_24F940DC0);
    return sub_24E601704(v38, &qword_27F215A98, &qword_24F940DC0);
  }

  return result;
}

uint64_t sub_24F187AC4()
{
  sub_24F189AF8();
  sub_24F924868();
  return v1;
}

double sub_24F187B00@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210F78 != -1)
  {
    swift_once();
  }

  v30 = byte_27F39DBC0;
  if (qword_27F210F80 != -1)
  {
    swift_once();
  }

  v8 = byte_27F39DBC1;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = v9;
  if ((v10 & 1) == 0)
  {

    sub_24F92BDC8();
    v12 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v9, 0);
    (*(v5 + 8))(v7, v4);
    v11 = v31;
  }

  if (v11 < 1)
  {
    v13 = sub_24F9275A8();
  }

  else
  {
    v13 = sub_24F9275B8();
  }

  v15 = v13;
  v16 = v14;
  if ((v10 & 1) == 0)
  {

    sub_24F92BDC8();
    v17 = sub_24F9257A8();
    v29 = v4;
    v18 = v16;
    v19 = v15;
    v20 = v8;
    v21 = v17;
    sub_24F921FD8();

    v8 = v20;
    v15 = v19;
    v16 = v18;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v9, 0);
    (*(v5 + 8))(v7, v29);
    v9 = v31;
  }

  if (v9 < 1)
  {
    v22 = sub_24F926C68();
  }

  else
  {
    v22 = sub_24F926CC8();
  }

  v23 = v22;
  if (v30)
  {
    v24 = *(a1 + 24);
    __swift_project_boxed_opaque_existential_1(a1, v24);
    v25 = sub_24F187E00(v24);
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  *a2 = v25;
  *(a2 + 8) = v26;
  *(a2 + 16) = v15;
  *(a2 + 24) = v16;
  result = 0.0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = v23;
  *(a2 + 72) = 0x4024000000000000;
  *(a2 + 80) = v8;
  return result;
}

uint64_t sub_24F187E00(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D988, &qword_24F995CE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v28 - v5;
  v7 = *(a1 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ComponentGrid(0);
  v12 = *(v11 - 1);
  MEMORY[0x28223BE20](v11);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  DynamicType = swift_getDynamicType();
  swift_getMetatypeMetadata();
  v15 = sub_24F92B188();
  v17 = v16;
  (*(v7 + 16))(v10, v2, a1);
  v18 = swift_dynamicCast();
  v19 = *(v12 + 56);
  if (v18)
  {
    v19(v6, 0, 1, v11);
    sub_24F18AA48(v6, v14);
    v20 = v14[v11[9]];
    if (v20 <= 4)
    {
      if (v14[v11[9]] <= 1u)
      {
        v21 = 0xE700000000000000;
        if (v14[v11[9]])
        {
          v22 = 0x426E6769736564;
        }

        else
        {
          v22 = 0x416E6769736564;
        }
      }

      else if (v20 == 2)
      {
        v21 = 0xE700000000000000;
        v22 = 0x436E6769736564;
      }

      else if (v20 == 3)
      {
        v21 = 0xE700000000000000;
        v22 = 0x446E6769736564;
      }

      else
      {
        v21 = 0xEC00000065736E65;
        v22 = 0x44446E6769736564;
      }
    }

    else
    {
      v21 = 0xE700000000000000;
      if (v14[v11[9]] > 7u)
      {
        if (v20 == 8)
        {
          v22 = 0x486E6769736564;
        }

        else if (v20 == 9)
        {
          v22 = 0x496E6769736564;
        }

        else
        {
          v22 = 0x6E776F6E6B6E75;
        }
      }

      else if (v20 == 5)
      {
        v22 = 0x456E6769736564;
      }

      else if (v20 == 6)
      {
        v22 = 0x466E6769736564;
      }

      else
      {
        v22 = 0x476E6769736564;
      }
    }

    v23 = v14[v11[11]];
    if (v14[v11[10]])
    {
      DynamicType = v22;
      v30 = v21;
      if (v23)
      {
        v24 = 0x29522C524628;
        v25 = 0xE600000000000000;
      }

      else
      {
        v24 = 693257768;
        v25 = 0xE400000000000000;
      }
    }

    else
    {
      if (!v14[v11[11]])
      {
LABEL_31:
        DynamicType = v15;
        v30 = v17;
        MEMORY[0x253050C20](0x3A736D6574690ALL, 0xE700000000000000);
        v28[1] = *(*&v14[v11[8]] + 16);
        v26 = sub_24F92CD88();
        MEMORY[0x253050C20](v26);

        MEMORY[0x253050C20](10, 0xE100000000000000);
        MEMORY[0x253050C20](v22, v21);

        v15 = DynamicType;
        sub_24F18AAAC(v14);
        return v15;
      }

      DynamicType = v22;
      v30 = v21;
      v24 = 2708008;
      v25 = 0xE300000000000000;
    }

    MEMORY[0x253050C20](v24, v25);
    v22 = DynamicType;
    v21 = v30;
    goto LABEL_31;
  }

  v19(v6, 1, 1, v11);
  sub_24E601704(v6, &qword_27F22D988, &qword_24F995CE0);
  return v15;
}

void *sub_24F188298@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = a1;
  if (sub_24F9257C8() == a1)
  {
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231730, &qword_24F9CFEA0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24F93A400;
  v7 = sub_24F9257B8();
  *(v6 + 32) = v7;
  v8 = sub_24F9257D8();
  *(v6 + 33) = v8;
  v9 = sub_24F9257C8();
  sub_24F9257C8();
  if (sub_24F9257C8() != v7)
  {
    v9 = sub_24F9257C8();
  }

  sub_24F9257C8();
  if (sub_24F9257C8() != v8)
  {
    v9 = sub_24F9257C8();
  }

  if (v9 == v4)
  {
LABEL_7:
    sub_24F923998();
    sub_24F188528(v10, v11);
  }

  else
  {
    if (sub_24F9257B8() == v4)
    {
      sub_24F923998();
      v18 = v17;
    }

    else
    {
      if (sub_24F9257D8() != v4)
      {
        goto LABEL_8;
      }

      sub_24F923998();
      v18 = v19;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218A0, &qword_24F9876F0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_24F93DE60;
    *(v20 + 56) = MEMORY[0x277D85048];
    *(v20 + 64) = sub_24E99D9C8();
    *(v20 + 32) = v18;
    sub_24F92B118();
  }

LABEL_8:
  v12 = sub_24F926C98();
  v13 = sub_24F927618();
  v15 = v14;
  sub_24F188624(a2, __src);

  memcpy(__dst, __src, 0x128uLL);
  __dst[37] = v13;
  __dst[38] = v15;
  memcpy(v27, __dst, sizeof(v27));
  memcpy(v24, __src, sizeof(v24));
  v25 = v13;
  v26 = v15;
  sub_24E60169C(__dst, v21, &qword_27F23AF90, &qword_24F9CFEA8);
  sub_24E601704(v24, &qword_27F23AF90, &qword_24F9CFEA8);
  *a3 = v12;
  result = memcpy((a3 + 8), v27, 0x138uLL);
  *(a3 + 320) = 0;
  return result;
}

uint64_t sub_24F188528(double a1, double a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218A0, &qword_24F9876F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24F93DE60;
  v5 = MEMORY[0x277D85048];
  *(v4 + 56) = MEMORY[0x277D85048];
  v6 = sub_24E99D9C8();
  *(v4 + 64) = v6;
  *(v4 + 32) = a1;
  v10 = sub_24F92B118();
  MEMORY[0x253050C20](120, 0xE100000000000000);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24F93DE60;
  *(v7 + 56) = v5;
  *(v7 + 64) = v6;
  *(v7 + 32) = a2;
  v8 = sub_24F92B118();
  MEMORY[0x253050C20](v8);

  return v10;
}

uint64_t sub_24F188624@<X0>(uint64_t a4@<X3>, uint64_t a5@<X8>)
{

  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v6 = sub_24F925C48();
  v8 = v7;
  v10 = v9;

  sub_24F9259E8();
  v11 = sub_24F925C98();
  v13 = v12;
  v15 = v14;

  sub_24E600B40(v6, v8, v10 & 1);

  v16 = sub_24F925B88();
  v44 = v17;
  v45 = v16;
  v19 = v18;
  v43 = v20;
  sub_24E600B40(v11, v13, v15 & 1);

  KeyPath = swift_getKeyPath();
  v22 = swift_getKeyPath();
  v23 = v19 & 1;
  v24 = sub_24F925868();
  sub_24F9257B8();
  sub_24F9257C8();
  sub_24F9257C8();
  sub_24F923318();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  LOBYTE(v11) = sub_24F9257F8();
  sub_24F9257D8();
  sub_24F9257C8();
  sub_24F9257C8();
  sub_24F923318();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_24F9257B8();
  sub_24F9257C8();
  sub_24F9257C8();
  sub_24F9257D8();
  sub_24F9257C8();
  sub_24F9257C8();
  sub_24F927618();
  sub_24F9242E8();
  *&v47[55] = v51;
  *&v47[71] = v52;
  *&v47[87] = v53;
  *&v47[103] = v54;
  *&v47[7] = v48;
  *&v47[23] = v49;
  *&v47[39] = v50;
  v41 = sub_24F925808();
  *a5 = v45;
  *(a5 + 8) = v44;
  *(a5 + 16) = v23;
  *(a5 + 24) = v43;
  *(a5 + 32) = KeyPath;
  *(a5 + 40) = 0x3FE0000000000000;
  *(a5 + 48) = v22;
  *(a5 + 56) = 1;
  *(a5 + 64) = 0;
  *(a5 + 72) = v24;
  *(a5 + 80) = v26;
  *(a5 + 88) = v28;
  *(a5 + 96) = v30;
  *(a5 + 104) = v32;
  *(a5 + 112) = 0;
  *(a5 + 120) = v11;
  *(a5 + 128) = v34;
  *(a5 + 136) = v36;
  *(a5 + 144) = v38;
  *(a5 + 152) = v40;
  *(a5 + 160) = 0;
  *(a5 + 225) = *&v47[64];
  *(a5 + 241) = *&v47[80];
  *(a5 + 257) = *&v47[96];
  *(a5 + 161) = *v47;
  *(a5 + 177) = *&v47[16];
  *(a5 + 193) = *&v47[32];
  *(a5 + 209) = *&v47[48];
  *(a5 + 272) = *(&v54 + 1);
  *(a5 + 280) = a4;
  *(a5 + 288) = v41;
}

uint64_t sub_24F1889AC@<X0>(void *(**a1)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a1 = sub_24F18ADFC;
  a1[1] = v5;
}

__n128 sub_24F188A20@<Q0>(__n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v108 = *a2;
  if (v108.n128_u64[1])
  {
    if ((a2[5].n128_u8[0] & 1) == 0)
    {
      v15 = a2[1].n128_u64[0];
      v16 = a2[1].n128_u64[1];
      sub_24F18964C(a2, &v109);
      v31 = v117;
      v32 = v118;
      v33 = v119;
      v27 = v113;
      v28 = v114;
      v29 = v115;
      v30 = v116;
      v23 = v109;
      v24 = v110;
      v25 = v111;
      v26 = v112;
      v42 = v117;
      v43 = v118;
      v44 = v119;
      v38 = v113;
      v39 = v114;
      v40 = v115;
      v41 = v116;
      v34 = v109;
      v35 = v110;
      v36 = v111;
      v37 = v112;
      sub_24E60169C(&v23, &v96, &unk_27F23AF08, &unk_24F9CFA78);
      sub_24E601704(&v34, &unk_27F23AF08, &unk_24F9CFA78);
      v54 = v31;
      v55 = v32;
      v56 = v33;
      v50 = v27;
      v51 = v28;
      v52 = v29;
      v53 = v30;
      v46 = v23;
      v47 = v24;
      v48 = v25;
      v49 = v26;
      v45.n128_u64[0] = v15;
      v45.n128_u64[1] = v16;
      v57 = 0;
      LOBYTE(v95) = 0;
      v93 = v32;
      v94 = v33;
      v89 = v28;
      v90 = v29;
      v92 = v31;
      v91 = v30;
      v85 = v24;
      v86 = v25;
      v88 = v27;
      v87 = v26;
      v83 = v45;
      v84 = v23;
      sub_24F189D68(&v83);
      v119 = v93;
      *v120 = v94;
      *&v120[16] = v95;
      v115 = v89;
      v116 = v90;
      v118 = v92;
      v117 = v91;
      v111 = v85;
      v112 = v86;
      v114 = v88;
      v113 = v87;
      v110 = v84;
      v109 = v83;
      sub_24E60169C(&v45, &v96, &qword_27F23AEC8, &qword_24F9CFA58);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AEC8, &qword_24F9CFA58);
      sub_24F189B94();
      sub_24F924E28();
      v106 = v80;
      *v107 = v81;
      *&v107[16] = v82;
      v102 = v76;
      v103 = v77;
      v105 = v79;
      v104 = v78;
      v98 = v72;
      v99 = v73;
      v101 = v75;
      v100 = v74;
      v97 = v71;
      v96 = v70;
      sub_24F189D74(&v96);
      v119 = v106;
      *v120 = *v107;
      *&v120[15] = *&v107[15];
      v115 = v102;
      v116 = v103;
      v118 = v105;
      v117 = v104;
      v111 = v98;
      v112 = v99;
      v114 = v101;
      v113 = v100;
      v110 = v97;
      v109 = v96;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AEE8, &qword_24F9CFA68);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AEF0, &qword_24F9CFA70);
      sub_24F189C58();
      sub_24F189CDC();
      sub_24F924E28();
      sub_24E601704(&v45, &qword_27F23AEC8, &qword_24F9CFA58);
      v119 = v68;
      *v120 = *v69;
      v14 = *&v69[15];
      goto LABEL_8;
    }

    v109 = v108;
    sub_24E60169C(&v108, &v96, &unk_27F23B740, &qword_24F93EC10);
    MEMORY[0x253050C20](10, 0xE100000000000000);
    sub_24F923998();
    v7 = sub_24F188528(v5, v6);
    MEMORY[0x253050C20](v7);

    v9 = a2[1].n128_u64[0];
    v8 = a2[1].n128_u64[1];
    sub_24F18964C(a2, &v109);
    v31 = v117;
    v32 = v118;
    v33 = v119;
    v27 = v113;
    v28 = v114;
    v29 = v115;
    v30 = v116;
    v23 = v109;
    v24 = v110;
    v25 = v111;
    v26 = v112;
    v42 = v117;
    v43 = v118;
    v44 = v119;
    v38 = v113;
    v39 = v114;
    v40 = v115;
    v41 = v116;
    v34 = v109;
    v35 = v110;
    v36 = v111;
    v37 = v112;
    sub_24E60169C(&v23, &v96, &unk_27F23AF08, &unk_24F9CFA78);
    sub_24E601704(&v34, &unk_27F23AF08, &unk_24F9CFA78);

    v54 = v31;
    v55 = v32;
    v56 = v33;
    v50 = v27;
    v51 = v28;
    v52 = v29;
    v53 = v30;
    v46 = v23;
    v47 = v24;
    v48 = v25;
    v49 = v26;
    v45.n128_u64[0] = v9;
    v45.n128_u64[1] = v8;
    v57 = 0;
    LOBYTE(v95) = 0;
    v93 = v32;
    v94 = v33;
    v89 = v28;
    v90 = v29;
    v92 = v31;
    v91 = v30;
    v85 = v24;
    v86 = v25;
    v88 = v27;
    v87 = v26;
    v83 = v45;
    v84 = v23;
    sub_24F189D7C(&v83);
    v119 = v93;
    *v120 = v94;
    *&v120[16] = v95;
    v115 = v89;
    v116 = v90;
    v118 = v92;
    v117 = v91;
    v111 = v85;
    v112 = v86;
    v114 = v88;
    v113 = v87;
    v110 = v84;
    v109 = v83;
    sub_24E60169C(&v45, &v96, &qword_27F23AEC8, &qword_24F9CFA58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AEC8, &qword_24F9CFA58);
    sub_24F189B94();
    sub_24F924E28();
    v106 = v80;
    *v107 = v81;
    *&v107[16] = v82;
    v102 = v76;
    v103 = v77;
    v105 = v79;
    v104 = v78;
    v98 = v72;
    v99 = v73;
    v101 = v75;
    v100 = v74;
    v97 = v71;
    v96 = v70;
    sub_24F189D74(&v96);
  }

  else
  {
    if ((a2[5].n128_u8[0] & 1) == 0)
    {
      sub_24F189D68(&v83);
      v119 = v93;
      *v120 = v94;
      *&v120[16] = v95;
      v115 = v89;
      v116 = v90;
      v118 = v92;
      v117 = v91;
      v111 = v85;
      v112 = v86;
      v114 = v88;
      v113 = v87;
      v110 = v84;
      v109 = v83;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AEC8, &qword_24F9CFA58);
      sub_24F189B94();
      sub_24F924E28();
      v106 = v80;
      *v107 = v81;
      *&v107[16] = v82;
      v102 = v76;
      v103 = v77;
      v105 = v79;
      v104 = v78;
      v98 = v72;
      v99 = v73;
      v101 = v75;
      v100 = v74;
      v97 = v71;
      v96 = v70;
      sub_24F189C4C(&v96);
      v68 = v106;
      *v69 = *v107;
      *&v69[15] = *&v107[15];
      v64 = v102;
      v65 = v103;
      v66 = v104;
      v67 = v105;
      v60 = v98;
      v61 = v99;
      v62 = v100;
      v63 = v101;
      v58 = v96;
      v59 = v97;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AEE8, &qword_24F9CFA68);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AEF0, &qword_24F9CFA70);
      sub_24F189C58();
      sub_24F189CDC();
      sub_24F924E28();
      goto LABEL_9;
    }

    sub_24F923998();
    sub_24F188528(v10, v11);
    v12 = a2[1].n128_u64[0];
    v13 = a2[1].n128_u64[1];
    sub_24F18964C(a2, &v109);
    v31 = v117;
    v32 = v118;
    v33 = v119;
    v27 = v113;
    v28 = v114;
    v29 = v115;
    v30 = v116;
    v23 = v109;
    v24 = v110;
    v25 = v111;
    v26 = v112;
    v42 = v117;
    v43 = v118;
    v44 = v119;
    v38 = v113;
    v39 = v114;
    v40 = v115;
    v41 = v116;
    v34 = v109;
    v35 = v110;
    v36 = v111;
    v37 = v112;
    sub_24E60169C(&v23, &v96, &unk_27F23AF08, &unk_24F9CFA78);
    sub_24E601704(&v34, &unk_27F23AF08, &unk_24F9CFA78);

    v54 = v31;
    v55 = v32;
    v56 = v33;
    v50 = v27;
    v51 = v28;
    v52 = v29;
    v53 = v30;
    v46 = v23;
    v47 = v24;
    v48 = v25;
    v49 = v26;
    v45.n128_u64[0] = v12;
    v45.n128_u64[1] = v13;
    v57 = 0;
    LOBYTE(v95) = 0;
    v93 = v32;
    v94 = v33;
    v89 = v28;
    v90 = v29;
    v92 = v31;
    v91 = v30;
    v85 = v24;
    v86 = v25;
    v88 = v27;
    v87 = v26;
    v83 = v45;
    v84 = v23;
    sub_24F189D7C(&v83);
    v119 = v93;
    *v120 = v94;
    *&v120[16] = v95;
    v115 = v89;
    v116 = v90;
    v118 = v92;
    v117 = v91;
    v111 = v85;
    v112 = v86;
    v114 = v88;
    v113 = v87;
    v110 = v84;
    v109 = v83;
    sub_24E60169C(&v45, &v96, &qword_27F23AEC8, &qword_24F9CFA58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AEC8, &qword_24F9CFA58);
    sub_24F189B94();
    sub_24F924E28();
    v106 = v80;
    *v107 = v81;
    *&v107[16] = v82;
    v102 = v76;
    v103 = v77;
    v105 = v79;
    v104 = v78;
    v98 = v72;
    v99 = v73;
    v101 = v75;
    v100 = v74;
    v97 = v71;
    v96 = v70;
    sub_24F189C4C(&v96);
  }

  v119 = v106;
  *v120 = *v107;
  *&v120[15] = *&v107[15];
  v115 = v102;
  v116 = v103;
  v118 = v105;
  v117 = v104;
  v111 = v98;
  v112 = v99;
  v114 = v101;
  v113 = v100;
  v110 = v97;
  v109 = v96;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AEE8, &qword_24F9CFA68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AEF0, &qword_24F9CFA70);
  sub_24F189C58();
  sub_24F189CDC();
  sub_24F924E28();
  sub_24E601704(&v45, &qword_27F23AEC8, &qword_24F9CFA58);
  v119 = v68;
  *v120 = *v69;
  v14 = *&v69[15];
LABEL_8:
  *&v120[15] = v14;
  v115 = v64;
  v116 = v65;
  v118 = v67;
  v117 = v66;
  v111 = v60;
  v112 = v61;
  v114 = v63;
  v113 = v62;
  v110 = v59;
  v109 = v58;
LABEL_9:
  v17 = *v120;
  *(a3 + 160) = v119;
  *(a3 + 176) = v17;
  *(a3 + 191) = *&v120[15];
  v18 = v116;
  *(a3 + 96) = v115;
  *(a3 + 112) = v18;
  v19 = v118;
  *(a3 + 128) = v117;
  *(a3 + 144) = v19;
  v20 = v112;
  *(a3 + 32) = v111;
  *(a3 + 48) = v20;
  v21 = v114;
  *(a3 + 64) = v113;
  *(a3 + 80) = v21;
  result = v110;
  *a3 = v109;
  *(a3 + 16) = result;
  return result;
}

uint64_t sub_24F18964C@<X0>(uint64_t a3@<X2>, _OWORD *a4@<X8>)
{

  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v5 = sub_24F925C48();
  v7 = v6;
  v9 = v8;

  sub_24F9259E8();
  v10 = sub_24F925C98();
  v12 = v11;
  v14 = v13;

  sub_24E600B40(v5, v7, v9 & 1);

  v15 = sub_24F925B88();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_24E600B40(v10, v12, v14 & 1);

  v22 = sub_24F925808();
  sub_24F923318();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = v19 & 1;
  LOBYTE(v70[0]) = v19 & 1;
  LOBYTE(v53) = 0;
  v32 = *(a3 + 64);
  v33 = sub_24F925808();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AE0, &unk_24F9FAA40);
  result = swift_allocObject();
  *(result + 16) = xmmword_24F93DE60;
  v35 = *(a3 + 72);
  *(result + 32) = v35;
  if (v35 < 0.0)
  {
    __break(1u);
  }

  else if ((*&v35 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {

    sub_24EFB3288(0x20000000000001uLL);
    sub_24F923658();
    v36 = v82;
    v37 = v83;
    v38 = DWORD1(v83);
    v39 = *(&v83 + 1);
    v40 = v84;
    v41 = sub_24F927618();
    *&v53 = v15;
    *(&v53 + 1) = v17;
    LOBYTE(v54) = v31;
    *(&v54 + 1) = v21;
    LOBYTE(v55) = v22;
    *(&v55 + 1) = v24;
    *&v56 = v26;
    *(&v56 + 1) = v28;
    *v57 = v30;
    v57[8] = 0;
    *&v57[16] = v32;
    v57[24] = v33;
    *&v57[25] = 0;
    *&v47[11] = *&v57[11];
    v45 = v55;
    v46 = v56;
    *v58 = v82 * 0.5;
    *(v58 + 1) = v82;
    v58[1] = v83;
    v58[2] = v84;
    LOWORD(v59) = 256;
    *(&v59 + 1) = v41;
    *&v60 = v42;
    *(&v60 + 1) = v32;
    *v47 = *v57;
    v48 = v58[0];
    v49 = v83;
    v51 = v59;
    v52 = v60;
    v50 = v84;
    v43 = v54;
    *a4 = v53;
    a4[1] = v43;
    a4[4] = *v47;
    a4[5] = *&v47[16];
    a4[2] = v45;
    a4[3] = v46;
    a4[9] = v51;
    a4[10] = v52;
    a4[7] = v49;
    a4[8] = v50;
    a4[6] = v48;
    v61[0] = v36 * 0.5;
    v61[1] = v36;
    v62 = v37;
    v63 = v38;
    v64 = v39;
    v65 = v40;
    v66 = 256;
    v67 = v41;
    v68 = v42;
    v69 = v32;

    sub_24E60169C(&v53, v70, &qword_27F23AF10, &qword_24F9CFA80);
    sub_24E60169C(v58, v70, &qword_27F23AF18, &qword_24F9CFA88);
    sub_24E601704(v61, &qword_27F23AF18, &qword_24F9CFA88);
    v70[0] = v15;
    v70[1] = v17;
    v71 = v31;
    v72 = v21;
    v73 = v22;
    v74 = v24;
    v75 = v26;
    v76 = v28;
    v77 = v30;
    v78 = 0;
    v79 = v32;
    v80 = v33;
    v81 = 0;
    return sub_24E601704(v70, &qword_27F23AF10, &qword_24F9CFA80);
  }

  __break(1u);
  return result;
}

__n128 sub_24F189A24@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 64);
  v16 = *(v1 + 48);
  v17 = v4;
  v18 = *(v1 + 80);
  v5 = *(v1 + 16);
  v14[0] = *v1;
  v14[1] = v5;
  v15 = v3;
  v6 = swift_allocObject();
  v7 = *(v1 + 48);
  *(v6 + 48) = *(v1 + 32);
  *(v6 + 64) = v7;
  *(v6 + 80) = *(v1 + 64);
  *(v6 + 96) = *(v1 + 80);
  v8 = *(v1 + 16);
  *(v6 + 16) = *v1;
  *(v6 + 32) = v8;
  v11 = v16;
  v12 = v15;
  sub_24EB1FB58(v14, v13);
  v9 = sub_24F925808();
  *a1 = sub_24F189B8C;
  *(a1 + 8) = v6;
  *(a1 + 16) = v9;
  result = v12;
  *(a1 + 40) = v11;
  *(a1 + 24) = v12;
  *(a1 + 56) = 0;
  return result;
}

unint64_t sub_24F189AF8()
{
  result = qword_27F23AEC0;
  if (!qword_27F23AEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AEC0);
  }

  return result;
}

uint64_t sub_24F189B4C()
{

  return swift_deallocObject();
}

unint64_t sub_24F189B94()
{
  result = qword_27F23AED0;
  if (!qword_27F23AED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AEC8, &qword_24F9CFA58);
    sub_24E602068(&qword_27F23AED8, &qword_27F23AEE0, &qword_24F9CFA60, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AED0);
  }

  return result;
}

unint64_t sub_24F189C58()
{
  result = qword_27F23AEF8;
  if (!qword_27F23AEF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AEE8, &qword_24F9CFA68);
    sub_24F189B94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AEF8);
  }

  return result;
}

unint64_t sub_24F189CDC()
{
  result = qword_27F23AF00;
  if (!qword_27F23AF00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AEF0, &qword_24F9CFA70);
    sub_24F189B94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AF00);
  }

  return result;
}

uint64_t sub_24F189D84(uint64_t a1)
{
  v2 = ASKBuildTypeGetCurrent(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249E0, &qword_24F973100);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24F9479A0;
  *(v3 + 32) = @"debug";
  *(v3 + 40) = @"internal";
  *(v3 + 48) = @"convergence";
  type metadata accessor for BuildType(0);
  v4 = @"debug";
  v5 = @"internal";
  v6 = @"convergence";
  v7 = sub_24F92B588();

  IsAnyOf = ASKBuildTypeIsAnyOf(v2, v7);

  if (IsAnyOf && (v9 = sub_24F92B098(), v10 = [v1 arrayForKey_], v9, v10) && (v11 = sub_24F92B5A8(), v10, v12 = sub_24E9E2340(v11), v13 = , v12))
  {
    v17[0] = 0xD00000000000001FLL;
    v17[1] = 0x800000024FA6E0D0;
    MEMORY[0x28223BE20](v13);
    v16[2] = v17;
    v14 = sub_24E6159B8(sub_24E7FAFB0, v16, v12);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_24F189F74(uint64_t a1)
{
  v2 = ASKBuildTypeGetCurrent(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249E0, &qword_24F973100);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24F9479A0;
  *(v3 + 32) = @"debug";
  *(v3 + 40) = @"internal";
  *(v3 + 48) = @"convergence";
  type metadata accessor for BuildType(0);
  v4 = @"debug";
  v5 = @"internal";
  v6 = @"convergence";
  v7 = sub_24F92B588();

  IsAnyOf = ASKBuildTypeIsAnyOf(v2, v7);

  if (IsAnyOf && (v9 = sub_24F92B098(), v10 = [v1 arrayForKey_], v9, v10) && (v11 = sub_24F92B5A8(), v10, v12 = sub_24E9E2340(v11), v13 = , v12))
  {
    v17[0] = 0xD000000000000016;
    v17[1] = 0x800000024FA6E0F0;
    MEMORY[0x28223BE20](v13);
    v16[2] = v17;
    v14 = sub_24E6159B8(sub_24E7FAFB0, v16, v12);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_24F18A164(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v7 = ASKBuildTypeGetCurrent(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249E0, &qword_24F973100);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_24F9479A0;
  *(v8 + 32) = @"debug";
  *(v8 + 40) = @"internal";
  *(v8 + 48) = @"convergence";
  type metadata accessor for BuildType(0);
  v9 = @"debug";
  v10 = @"internal";
  v11 = @"convergence";
  v12 = sub_24F92B588();

  IsAnyOf = ASKBuildTypeIsAnyOf(v7, v12);

  if (IsAnyOf && (v14 = sub_24F92B098(), v15 = [v3 arrayForKey_], v14, v15) && (v16 = sub_24F92B5A8(), v15, v17 = sub_24E9E2340(v16), v18 = , v17))
  {
    v22[0] = a1;
    v22[1] = a2;
    MEMORY[0x28223BE20](v18);
    v21[2] = v22;
    v19 = sub_24E6159B8(a3, v21, v17);
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

id sub_24F18A344(uint64_t a1)
{
  v2 = ASKBuildTypeGetCurrent(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249E0, &qword_24F973100);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24F9479A0;
  *(v3 + 32) = @"debug";
  *(v3 + 40) = @"internal";
  *(v3 + 48) = @"convergence";
  type metadata accessor for BuildType(0);
  v4 = @"debug";
  v5 = @"internal";
  v6 = @"convergence";
  v7 = sub_24F92B588();

  IsAnyOf = ASKBuildTypeIsAnyOf(v2, v7);

  if (!IsAnyOf)
  {
    return 0;
  }

  v9 = sub_24F92B098();
  v10 = [v1 BOOLForKey_];

  return v10;
}

void sub_24F18A51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *), _BYTE *a5)
{
  v9 = [objc_opt_self() standardUserDefaults];
  LOBYTE(a4) = sub_24F18A164(a2, a3, a4);

  *a5 = a4 & 1;
}

uint64_t sub_24F18A59C()
{
  if (qword_27F210F78 != -1)
  {
    result = swift_once();
  }

  if (byte_27F39DBC0)
  {
    v0 = 1;
  }

  else
  {
    if (qword_27F210F80 != -1)
    {
      result = swift_once();
    }

    v0 = byte_27F39DBC1;
  }

  byte_27F39DBC2 = v0;
  return result;
}

void sub_24F18A67C(uint64_t a1, uint64_t (*a2)(void), _BYTE *a3)
{
  v5 = [objc_opt_self() standardUserDefaults];
  LOBYTE(a2) = a2();

  *a3 = a2 & 1;
}

uint64_t sub_24F18A7F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unsigned __int8 *a5, uint64_t a6)
{
  if (*a4 == -1)
  {
    return *a5;
  }

  swift_once();
  return *a5;
}

uint64_t sub_24F18A8B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24F18A8F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24F18A96C()
{
  result = qword_27F23AF20;
  if (!qword_27F23AF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AF28, &qword_24F9CFBE0);
    sub_24E602068(&qword_27F23AF30, &qword_27F23AF38, &qword_24F9CFBE8, MEMORY[0x277CDF7D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AF20);
  }

  return result;
}

uint64_t sub_24F18AA48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComponentGrid(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F18AAAC(uint64_t a1)
{
  v2 = type metadata accessor for ComponentGrid(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24F18AB54()
{
  result = qword_27F23AF60;
  if (!qword_27F23AF60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AF58, &qword_24F9CFD58);
    sub_24EB1FC40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AF60);
  }

  return result;
}

unint64_t sub_24F18AC0C()
{
  result = qword_27F23AF68;
  if (!qword_27F23AF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AF50, &unk_24F9CFD40);
    sub_24F18ACC4();
    sub_24E602068(&qword_27F2551A0, &qword_27F215A98, &qword_24F940DC0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AF68);
  }

  return result;
}

unint64_t sub_24F18ACC4()
{
  result = qword_27F23AF70;
  if (!qword_27F23AF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AF48, &qword_24F9CFD38);
    sub_24E602068(&qword_27F23AF78, &qword_27F23AF40, &qword_24F9CFD30, MEMORY[0x277CE04B0]);
    sub_24E602068(&qword_27F23AF80, &qword_27F23AF88, &qword_24F9CFDE8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AF70);
  }

  return result;
}

uint64_t sub_24F18ADC4()
{

  return swift_deallocObject();
}

__n128 OffsetGridLayout.__allocating_init(metrics:views:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  *(v4 + 48) = result;
  *(v4 + 64) = v7;
  *(v4 + 80) = a2;
  return result;
}

uint64_t OffsetGridLayout.init(metrics:views:)(_OWORD *a1, uint64_t a2)
{
  v3 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  v4 = a1[3];
  *(v2 + 48) = a1[2];
  *(v2 + 64) = v4;
  *(v2 + 80) = a2;
  return v2;
}

__n128 OffsetGridLayout.metrics.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v2;
  result = *(v1 + 48);
  v4 = *(v1 + 64);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t OffsetGridLayout.Metrics.init(itemSize:interItemSpacing:lineSpacing:numberOfRows:originOffset:interRowHorizontalOffset:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>, double a8@<D5>, double a9@<D6>)
{
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  *(a2 + 32) = result;
  *(a2 + 40) = a7;
  *(a2 + 48) = a8;
  *(a2 + 56) = a9;
  return result;
}

double static OffsetGridLayout.Metrics.centerOffsetLayout(with:interItemSpacing:lineSpacing:numberOfRows:originOffset:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>, double a8@<D5>)
{
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  *(a2 + 32) = a1;
  result = (a3 + a5) * 0.5;
  *(a2 + 40) = a7;
  *(a2 + 48) = a8;
  *(a2 + 56) = result;
  return result;
}

uint64_t static OffsetGridLayout.numberOfViewsNeeded(toFill:with:)(_OWORD *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v5 = a1[1];
  v9[0] = *a1;
  v9[1] = v5;
  v6 = a1[3];
  v9[2] = a1[2];
  v9[3] = v6;
  v7 = *(sub_24F18B240(v9, a2, a3, a4, a5) + 2);

  return v7;
}

uint64_t sub_24F18AFB0(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v6 = *(v4 + 32);
  v17 = *(v4 + 16);
  v18 = v6;
  v7 = *(v4 + 64);
  v19 = *(v4 + 48);
  v20 = v7;
  result = sub_24F18B240(&v17, a1, a2, a3, a4);
  v9 = result;
  v10 = *(v4 + 80);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = v10 + 32;
    v14 = result + 56;
    while (v12 < *(v10 + 16))
    {
      result = sub_24E615E00(v13, v16);
      v15 = *(v9 + 16);
      if (v12 == v15)
      {

        __swift_destroy_boxed_opaque_existential_1(v16);
        return sub_24F922128();
      }

      if (v12 >= v15)
      {
        goto LABEL_11;
      }

      ++v12;
      sub_24E612E28(v16, &v17);
      __swift_project_boxed_opaque_existential_1(&v17, *(&v18 + 1));
      sub_24F922228();
      result = __swift_destroy_boxed_opaque_existential_1(&v17);
      v13 += 40;
      v14 += 32;
      if (v11 == v12)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
LABEL_7:

    return sub_24F922128();
  }

  return result;
}

uint64_t OffsetGridLayout.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24F18B1A4(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  WitnessTable = swift_getWitnessTable();
  v11.n128_f64[0] = a4;
  v12.n128_f64[0] = a5;

  return MEMORY[0x282180FC8](a1, a2, WitnessTable, a3, v11, v12);
}

__n128 sub_24F18B228@<Q0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  *a1 = *(*v1 + 16);
  *(a1 + 16) = v3;
  result = *(v2 + 48);
  v5 = *(v2 + 64);
  *(a1 + 32) = result;
  *(a1 + 48) = v5;
  return result;
}

char *sub_24F18B240(char *result, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v5 = *(result + 4);
  if (v5 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!v5)
    {
      return MEMORY[0x277D84F90];
    }

    v9 = 0;
    v10 = *result;
    v11 = *(result + 1);
    v18 = v11 + *(result + 3);
    v12 = *result + *(result + 2);
    v19 = *(result + 5) - v12 * trunc(*(result + 5) / v12);
    v20 = *(result + 7);
    v13 = MEMORY[0x277D84F90];
    do
    {
      v14 = v19 + v20 * v9 - v12 * ceil((v19 + v20 * v9) / v12);
      v22.origin.x = a2;
      v22.origin.y = a3;
      v22.size.width = a4;
      v22.size.height = a5;
      if (v14 < CGRectGetMaxX(v22))
      {
        do
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = sub_24E617B8C(0, *(v13 + 2) + 1, 1, v13);
          }

          v16 = *(v13 + 2);
          v15 = *(v13 + 3);
          if (v16 >= v15 >> 1)
          {
            v13 = sub_24E617B8C((v15 > 1), v16 + 1, 1, v13);
          }

          *(v13 + 2) = v16 + 1;
          v17 = &v13[32 * v16];
          *(v17 + 4) = v14;
          *(v17 + 5) = v18 * v9;
          *(v17 + 6) = v10;
          *(v17 + 7) = v11;
          v14 = v12 + v14;
          v23.origin.x = a2;
          v23.origin.y = a3;
          v23.size.width = a4;
          v23.size.height = a5;
        }

        while (v14 < CGRectGetMaxX(v23));
      }

      ++v9;
    }

    while (v9 != v5);
    return v13;
  }

  return result;
}

uint64_t _s12GameStoreKit16OffsetGridLayoutC21estimatedMeasurements7fitting5using2inSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(void *a1, uint64_t a2, double a3, double a4)
{
  v23 = a2;
  v5 = sub_24F9225E8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F922618();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[1];
  v15 = a1[3];
  v16 = a1[4];
  (*(v6 + 104))(v8, *MEMORY[0x277D22788], v5, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B3F0, &unk_24F93B6B0);
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85048];
  v19 = MEMORY[0x277D225F8];
  *(v17 + 16) = xmmword_24F93A400;
  v25 = v18;
  v26 = v19;
  v24 = v14;
  v20 = sub_24F9229A8();
  v21 = MEMORY[0x277D228E0];
  *(v17 + 56) = v20;
  *(v17 + 64) = v21;
  __swift_allocate_boxed_opaque_existential_1((v17 + 32));
  result = sub_24F9229B8();
  v25 = v18;
  v26 = v19;
  v24 = v15;
  if (__OFSUB__(v16, 1))
  {
    __break(1u);
  }

  else
  {
    *(v17 + 96) = v20;
    *(v17 + 104) = v21;
    __swift_allocate_boxed_opaque_existential_1((v17 + 72));
    sub_24F9229B8();
    sub_24F9225F8();
    sub_24F9225D8();
    return (*(v10 + 8))(v13, v9);
  }

  return result;
}

unint64_t sub_24F18B684(uint64_t a1, uint64_t a2)
{
  result = qword_27F23AFA8;
  if (!qword_27F23AFA8)
  {
    type metadata accessor for OffsetGridLayout();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AFA8);
  }

  return result;
}

uint64_t ImpedimentFlowConfig.UseCase.rawValue.getter()
{
  v1 = 0x736572746C6F6DLL;
  if (*v0 != 1)
  {
    v1 = 0x42656D6F636C6577;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656D61476E69;
  }
}

uint64_t sub_24F18B7C0()
{
  result = sub_24F92B098();
  qword_27F39DBC8 = result;
  return result;
}

uint64_t sub_24F18B7F8(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_24F18B818, 0, 0);
}

uint64_t sub_24F18B818()
{
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  *(v0 + 40) = __swift_project_value_buffer(v1, qword_27F39E8E0);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "Resetting impediments and rebootstrap...", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  v5 = type metadata accessor for ImpedimentFlowDestinationStates(0);
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_24F18B988;

  return MEMORY[0x28217F228](v0 + 16, v5, v5);
}

uint64_t sub_24F18B988()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_24F18BB18;
  }

  else
  {
    v2 = sub_24F18BA9C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F18BA9C()
{
  v1 = *(v0 + 32);
  ImpedimentFlowDestinationStates.reset()();
  [v1 notify];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24F18BB18()
{
  v1 = *(v0 + 56);
  v2 = v1;
  v3 = sub_24F9220B8();
  v4 = sub_24F92BDB8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 56);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24E5DD000, v3, v4, "Failed to reset impediments and rebootstrap, reason: %@", v7, 0xCu);
    sub_24E601704(v8, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

void ImpedimentFlowView.init<>(objectGraph:window:config:inAppSettings:content:)(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v31 = a3[1];
  v32 = *a3;
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v17 = sub_24F9220D8();
  __swift_project_value_buffer(v17, qword_27F39E8E0);
  v18 = sub_24F9220B8();
  v19 = sub_24F92BD98();
  if (os_log_type_enabled(v18, v19))
  {
    v30 = a8;
    v20 = a7;
    v21 = a9;
    v22 = a1;
    v23 = a2;
    v24 = a4;
    v25 = a5;
    v26 = a6;
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_24E5DD000, v18, v19, "Initializing ImpedimentFlowView requiring authenticated players..", v27, 2u);
    v28 = v27;
    a6 = v26;
    a5 = v25;
    a4 = v24;
    a2 = v23;
    a1 = v22;
    a9 = v21;
    a7 = v20;
    a8 = v30;
    MEMORY[0x2530542D0](v28, -1, -1);
  }

  v33[0] = v32;
  v33[1] = v31;
  *&v29 = a7;
  *(&v29 + 1) = MEMORY[0x277CE1428];
  sub_24F18BE28(a1, a2, v33, a4, a5, a6, 0, 0, a9, v29, a8, MEMORY[0x277CE1410]);
}

void sub_24F18BE28(uint64_t a1@<X0>, void *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12)
{
  v57 = a7;
  v58 = a8;
  v59 = a6;
  v55 = a4;
  v56 = a5;
  v53 = a1;
  v54 = a2;
  v44 = a10;
  v52 = type metadata accessor for ImpedimentFlowAction(0);
  MEMORY[0x28223BE20](v52);
  v15 = (&v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B3A0, &qword_24FA174D0);
  v50 = *(v16 - 8);
  v51 = v16;
  MEMORY[0x28223BE20](v16);
  v49 = &v44 - v17;
  v18 = sub_24F928188();
  v47 = *(v18 - 8);
  v48 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a3;
  v22 = a3[1];
  swift_unknownObjectWeakInit();
  v60 = v44;
  v61 = a11;
  v62 = a12;
  v23 = type metadata accessor for ImpedimentFlowView(0, &v60);
  v24 = [objc_opt_self() defaultCenter];
  if (qword_27F210FB0 != -1)
  {
    swift_once();
  }

  sub_24F92C0F8();

  v25 = *(v23 + 80);
  *(a9 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235CD8, &qword_24F9B9820);
  swift_storeEnumTagMultiPayload();
  swift_unknownObjectWeakAssign();
  v45 = v22;
  v46 = v21;
  *(a9 + 32) = v21;
  *(a9 + 33) = v22;
  v27 = v55;
  v26 = v56;
  v29 = v58;
  v28 = v59;
  *(a9 + 40) = v56;
  *(a9 + 48) = v28;
  v30 = v57;
  *(a9 + 56) = v57;
  *(a9 + 64) = v29;
  *(a9 + 72) = v27;
  type metadata accessor for ASKBagContract(0);

  sub_24E5FCA4C(v26, v28);
  sub_24E5FCA4C(v30, v29);
  sub_24F928F28();
  v31 = v60;
  type metadata accessor for NetworkConnectionMonitor(0);
  swift_allocObject();
  v32 = NetworkConnectionMonitor.init(bagContract:)(v31);
  v33 = sub_24F921338();
  MEMORY[0x25304DAD0](v33, &unk_24F9D0728, 0, v33);
  sub_24F928F88();
  v34 = v48;
  v35 = *(v47 + 8);
  v35(v20, v48);
  *&v60 = v32;

  sub_24F928168();
  v36 = sub_24F928F88();

  v35(v20, v34);
  type metadata accessor for ImpedimentFlowAuthorityProvider(0);
  v37 = swift_allocObject();
  v38 = v52;

  sub_24F928A98();
  type metadata accessor for ImpedimentFlowDestination(0);
  swift_storeEnumTagMultiPayload();
  v39 = sub_24F929D28();
  *v15 = 1953460082;
  v15[1] = 0xE400000000000000;
  v40 = (v15 + *(v38 + 28));
  *v40 = v39;
  v40[1] = v41;
  sub_24F199FC4(&qword_27F23AFD0, type metadata accessor for ImpedimentFlowAction, &unk_24F9F06BC);
  sub_24F199FC4(&qword_27F23AFD8, type metadata accessor for ImpedimentFlowAction, &unk_24F9F0684);
  v42 = v49;
  sub_24F921878();
  (*(v50 + 32))(v37 + OBJC_IVAR____TtC12GameStoreKit31ImpedimentFlowAuthorityProvider__flowAuthority, v42, v51);
  type metadata accessor for ImpedimentFlowAuthorityProvider.State(0);
  swift_storeEnumTagMultiPayload();
  sub_24F91FDB8();
  *(v37 + 16) = v36;
  v43 = v45;
  *(v37 + 24) = v46;
  *(v37 + 25) = v43;
  *(v37 + OBJC_IVAR____TtC12GameStoreKit31ImpedimentFlowAuthorityProvider_inAppSettings) = v55;

  sub_24E824448(v57, v58);
  sub_24E824448(v56, v59);

  *a9 = v37;
  *(a9 + 8) = 0;
  *(a9 + 16) = v36;
}

void ImpedimentFlowView.init<>(objectGraph:window:config:content:)(uint64_t a1@<X0>, void *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = *a3;
  v30 = a3[1];
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v16 = sub_24F9220D8();
  __swift_project_value_buffer(v16, qword_27F39E8E0);
  v17 = sub_24F9220B8();
  v18 = sub_24F92BD98();
  if (os_log_type_enabled(v17, v18))
  {
    v29 = v15;
    v19 = a7;
    v20 = a6;
    v21 = a8;
    v22 = a1;
    v23 = a2;
    v24 = a4;
    v25 = a5;
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_24E5DD000, v17, v18, "Initializing ImpedimentFlowView allowing unauthenticated players..", v26, 2u);
    v27 = v26;
    a5 = v25;
    a4 = v24;
    a2 = v23;
    a1 = v22;
    a8 = v21;
    a6 = v20;
    a7 = v19;
    v15 = v29;
    MEMORY[0x2530542D0](v27, -1, -1);
  }

  v31[0] = v15;
  v31[1] = v30;
  *&v28 = MEMORY[0x277CE1428];
  *(&v28 + 1) = a6;
  sub_24F18BE28(a1, a2, v31, 0, 0, 0, a4, a5, a8, v28, MEMORY[0x277CE1410], a7);
}

uint64_t sub_24F18C548()
{
  v1 = [objc_opt_self() daemonProxy];
  sub_24F9212F8();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24F18C5E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B3A8, &qword_24F9D06F0);
  sub_24F926F38();
  return v1;
}

uint64_t sub_24F18C638()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B3A8, &qword_24F9D06F0);
  sub_24F926F58();
  return v1;
}

uint64_t sub_24F18C68C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_24F924848();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235CD8, &qword_24F9B9820);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_24E60169C(v2 + *(a1 + 80), &v15 - v10, &qword_27F235CD8, &qword_24F9B9820);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_24F923418();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_24F92BDC8();
    v14 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t ImpedimentFlowView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v227 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AFB0, &qword_24F9D00B0);
  MEMORY[0x28223BE20](v3 - 8);
  v221 = &v181 - v4;
  v5 = type metadata accessor for ImpedimentFlowAction(255);
  v236 = a1;
  v6 = a1[3];
  v8 = a1[4];
  v7 = a1[5];
  v241 = a1[2];
  v242 = v8;
  v240 = v7;
  v261 = v241;
  v262 = v6;
  v263 = v8;
  v264 = v7;
  type metadata accessor for ImpedimentFlowView.StartView(255, &v261);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AFB8, &qword_24F9D00B8);
  sub_24F924E38();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AFC0, &qword_24F9D00C0);
  sub_24F924E38();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AFC8, &qword_24F9D00C8);
  sub_24F924E38();
  v9 = sub_24F926DC8();
  v10 = sub_24F199FC4(&qword_27F23AFD0, type metadata accessor for ImpedimentFlowAction, &unk_24F9F06BC);
  v11 = sub_24F199FC4(&qword_27F23AFD8, type metadata accessor for ImpedimentFlowAction, &unk_24F9F0684);
  WitnessTable = swift_getWitnessTable();
  v13 = sub_24F195940();
  v273 = WitnessTable;
  v274 = v13;
  v14 = MEMORY[0x277CE0340];
  v15 = swift_getWitnessTable();
  v16 = sub_24F195A50();
  v271 = v15;
  v272 = v16;
  v234 = v14;
  v17 = swift_getWitnessTable();
  v18 = sub_24F195C54();
  v269 = v17;
  v270 = v18;
  v268 = swift_getWitnessTable();
  v238 = MEMORY[0x277CE0FB0];
  v19 = swift_getWitnessTable();
  v212 = v9;
  v213 = v5;
  v261 = v5;
  v262 = MEMORY[0x277CE1428];
  v263 = v9;
  v264 = v10;
  v211 = v10;
  v210 = v11;
  v265 = v11;
  v266 = MEMORY[0x277CE1410];
  v203 = v19;
  v267 = v19;
  v20 = sub_24F921CE8();
  v207 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v206 = &v181 - v21;
  v22 = sub_24F928FD8();
  v23 = swift_getWitnessTable();
  v261 = v20;
  v262 = v22;
  v263 = v23;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v202 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v199 = &v181 - v25;
  v200 = v22;
  v209 = v20;
  v261 = v20;
  v262 = v22;
  v201 = v23;
  v263 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = sub_24F19602C();
  v239 = OpaqueTypeMetadata2;
  v261 = OpaqueTypeMetadata2;
  v262 = &type metadata for PlayerMonogramProtocol;
  v232 = v27;
  v233 = OpaqueTypeConformance2;
  v263 = OpaqueTypeConformance2;
  v264 = v27;
  v237 = swift_getOpaqueTypeMetadata2();
  v208 = *(v237 - 8);
  MEMORY[0x28223BE20](v237);
  v205 = &v181 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v204 = &v181 - v30;
  v31 = type metadata accessor for ImpedimentFlowDestination(0);
  v194 = *(v31 - 8);
  MEMORY[0x28223BE20](v31 - 8);
  v195 = v32;
  v196 = &v181 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v220 = (&v181 - v34);
  v243 = sub_24F923418();
  v198 = *(v243 - 8);
  MEMORY[0x28223BE20](v243);
  v197 = (&v181 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24F924E38();
  sub_24F92C4A8();
  v235 = v6;
  sub_24F92C4A8();
  v36 = sub_24F924E38();
  v37 = sub_24F926DC8();
  v191 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v190 = &v181 - v38;
  v39 = sub_24F92C0E8();
  v40 = sub_24F199FC4(&qword_27F21F480, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
  v41 = v240;
  v259 = v242;
  v260 = v240;
  v258 = swift_getWitnessTable();
  v42 = swift_getWitnessTable();
  v257 = v41;
  v43 = swift_getWitnessTable();
  v255 = v42;
  v256 = v43;
  v186 = v36;
  v184 = swift_getWitnessTable();
  v254 = v184;
  v44 = v230;
  v45 = swift_getWitnessTable();
  v188 = v40;
  v189 = v39;
  v261 = v39;
  v262 = v37;
  v193 = v37;
  v263 = v40;
  v264 = v45;
  v185 = v45;
  v46 = sub_24F924288();
  v187 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v48 = &v181 - v47;
  v49 = swift_getWitnessTable();
  v50 = sub_24F199FC4(&qword_27F235EA0, MEMORY[0x277CDD6C8], MEMORY[0x277CDD6D0]);
  v231 = v46;
  v261 = v46;
  v262 = v243;
  v234 = v49;
  v263 = v49;
  v264 = v50;
  v238 = v50;
  v51 = swift_getOpaqueTypeMetadata2();
  v192 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v217 = &v181 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v216 = &v181 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  MEMORY[0x28223BE20](v55 - 8);
  v214 = &v181 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23B0A8, &qword_24F9D0110);
  v58 = sub_24F924E38();
  v219 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v218 = &v181 - v59;
  v222 = *(v236 - 1);
  MEMORY[0x28223BE20](v60);
  v228 = v61;
  v229 = &v181 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = v57;
  MEMORY[0x28223BE20](v62);
  v64 = &v181 - v63;
  v65 = type metadata accessor for ImpedimentFlowAuthorityProvider.State(0);
  MEMORY[0x28223BE20](v65);
  v67 = &v181 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = v58;
  v68 = sub_24F924E38();
  v224 = *(v68 - 8);
  v225 = v68;
  MEMORY[0x28223BE20](v68);
  v223 = &v181 - v69;
  v70 = v44;
  v71 = sub_24F18C5E8();
  swift_getKeyPath();
  v261 = v71;
  sub_24F199FC4(&qword_27F23B0B0, type metadata accessor for ImpedimentFlowAuthorityProvider, &unk_24FA174B0);
  sub_24F91FD88();

  v72 = OBJC_IVAR____TtC12GameStoreKit31ImpedimentFlowAuthorityProvider__state;
  swift_beginAccess();
  sub_24F199F30(v71 + v72, v67, type metadata accessor for ImpedimentFlowAuthorityProvider.State);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v117 = *&v67[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B110, &qword_24F9D01B0) + 48)];
    v118 = v214;
    v119 = sub_24E6009C8(v67, v214, &unk_27F23E1F0, &unk_24F9549C0);
    MEMORY[0x28223BE20](v119);
    v221 = v51;
    v120 = v235;
    *(&v181 - 8) = v241;
    *(&v181 - 7) = v120;
    v121 = v240;
    *(&v181 - 6) = v242;
    *(&v181 - 5) = v121;
    *(&v181 - 4) = v118;
    *(&v181 - 3) = v70;
    *(&v181 - 2) = vand_s8(v117, 0x101010101010101);
    v122 = v190;
    sub_24F926DB8();
    v123 = v236;
    v213 = *(v236 + 19);
    v124 = v222;
    v183 = v48;
    v220 = *(v222 + 16);
    v125 = v229;
    (v220)(v229, v70, v236);
    v126 = (*(v124 + 80) + 48) & ~*(v124 + 80);
    v127 = swift_allocObject();
    v128 = v235;
    v127[2] = v241;
    v127[3] = v128;
    v129 = v240;
    v127[4] = v242;
    v127[5] = v129;
    v222 = *(v124 + 32);
    (v222)(v127 + v126, v125, v123);
    v130 = v193;
    sub_24F926BC8();

    (*(v191 + 8))(v122, v130);
    v131 = v197;
    sub_24F18C68C(v123, v197);
    v132 = v229;
    (v220)(v229, v70, v123);
    v133 = swift_allocObject();
    v134 = v235;
    v133[2] = v241;
    v133[3] = v134;
    v135 = v240;
    v133[4] = v242;
    v133[5] = v135;
    (v222)(v133 + v126, v132, v123);
    v136 = v217;
    v137 = v231;
    v138 = v243;
    v139 = v234;
    v140 = v238;
    v141 = v183;
    sub_24F926AB8();

    (*(v198 + 8))(v131, v138);
    (*(v187 + 8))(v141, v137);
    v261 = v137;
    v262 = v138;
    v263 = v139;
    v264 = v140;
    v142 = swift_getOpaqueTypeConformance2();
    v143 = v221;
    sub_24E7896B8();
    v242 = *(v192 + 8);
    v242(v136, v143);
    sub_24E7896B8();
    v144 = sub_24F197290();
    v145 = v218;
    sub_24ECCCC98(v136, v215, v143, v144, v142);
    v246 = v144;
    v247 = v142;
    v146 = v226;
    v147 = swift_getWitnessTable();
    v261 = v239;
    v115 = v232;
    v114 = v233;
    v262 = &type metadata for PlayerMonogramProtocol;
    v263 = v233;
    v264 = v232;
    v148 = swift_getOpaqueTypeConformance2();
    v109 = v223;
    sub_24ECCCBA0(v145, v146, v237, v147, v148);
    v149 = v145;
    v116 = v234;
    (*(v219 + 1))(v149, v146);
    v150 = v242;
    v242(v217, v143);
    v150(v216, v143);
    v111 = v231;
    v151 = v214;
    v152 = &unk_27F23E1F0;
    v153 = &unk_24F9549C0;
LABEL_6:
    sub_24E601704(v151, v152, v153);
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v154 = v70;
    v221 = v51;
    v155 = v241;
    v156 = v242;
    v157 = v235;
    v158 = v240;
    sub_24F18E068(v70);
    v159 = v222;
    v160 = *(v222 + 16);
    v182 = v64;
    v161 = v229;
    v162 = v236;
    v160(v229, v154, v236);
    v163 = (*(v159 + 80) + 48) & ~*(v159 + 80);
    v164 = swift_allocObject();
    *(v164 + 2) = v155;
    *(v164 + 3) = v157;
    *(v164 + 4) = v156;
    *(v164 + 5) = v158;
    (*(v159 + 32))(&v164[v163], v161, v162);
    v165 = v215;
    v166 = v182;
    v167 = &v182[*(v215 + 36)];
    sub_24F923AD8();
    sub_24F92B818();
    *v167 = &unk_24F9D01C0;
    *(v167 + 1) = v164;
    v168 = sub_24F197290();
    v111 = v231;
    v261 = v231;
    v262 = v243;
    v169 = v234;
    v263 = v234;
    v264 = v238;
    v170 = swift_getOpaqueTypeConformance2();
    v171 = v218;
    sub_24ECCCBA0(v166, v165, v221, v168, v170);
    v244 = v168;
    v245 = v170;
    v172 = v226;
    v173 = swift_getWitnessTable();
    v261 = v239;
    v115 = v232;
    v114 = v233;
    v262 = &type metadata for PlayerMonogramProtocol;
    v263 = v233;
    v264 = v232;
    v174 = swift_getOpaqueTypeConformance2();
    v109 = v223;
    sub_24ECCCBA0(v171, v172, v237, v173, v174);
    (*(v219 + 1))(v171, v172);
    v152 = &qword_27F23B0A8;
    v153 = &qword_24F9D0110;
    v151 = v182;
    v116 = v169;
    goto LABEL_6;
  }

  v219 = type metadata accessor for ImpedimentFlowDestination;
  v74 = v220;
  sub_24F19A00C(v67, v220, type metadata accessor for ImpedimentFlowDestination);
  v75 = v70;
  v76 = sub_24F18C638();
  v78 = v77;
  v80 = v79;
  swift_getKeyPath();
  v261 = v76;
  v262 = v78;
  v263 = v80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B0B8, &qword_24F9D0168);
  sub_24F927188();

  v81 = v196;
  sub_24F199F30(v74, v196, type metadata accessor for ImpedimentFlowDestination);
  v82 = v222;
  v83 = v229;
  v84 = v236;
  (*(v222 + 16))(v229, v75, v236);
  v85 = (*(v194 + 80) + 48) & ~*(v194 + 80);
  v86 = (v195 + *(v82 + 80) + v85) & ~*(v82 + 80);
  v87 = swift_allocObject();
  v88 = v240;
  v89 = v235;
  *(v87 + 2) = v241;
  *(v87 + 3) = v89;
  *(v87 + 4) = v242;
  *(v87 + 5) = v88;
  v90 = v239;
  sub_24F19A00C(v81, &v87[v85], v219);
  (*(v82 + 32))(&v87[v86], v83, v84);
  v91 = v206;
  v92 = sub_24F921CD8();
  MEMORY[0x28223BE20](v92);
  v93 = v235;
  *(&v181 - 6) = v241;
  *(&v181 - 5) = v93;
  *(&v181 - 4) = v242;
  *(&v181 - 3) = v88;
  *(&v181 - 2) = v94;
  swift_checkMetadataState();
  v95 = v199;
  v96 = v209;
  sub_24F925EB8();
  (*(v207 + 8))(v91, v96);
  v97 = v205;
  v98 = v233;
  v99 = v232;
  sub_24F925F08();
  (*(v202 + 8))(v95, v90);
  v261 = v90;
  v262 = &type metadata for PlayerMonogramProtocol;
  v263 = v98;
  v264 = v99;
  v100 = swift_getOpaqueTypeConformance2();
  v101 = v204;
  v102 = v237;
  sub_24E7896B8();
  v103 = *(v208 + 8);
  v103(v97, v102);
  sub_24E7896B8();
  v104 = sub_24F197290();
  v105 = v231;
  v261 = v231;
  v262 = v243;
  v263 = v234;
  v264 = v238;
  v106 = swift_getOpaqueTypeConformance2();
  v252 = v104;
  v253 = v106;
  v107 = v226;
  v108 = swift_getWitnessTable();
  v109 = v223;
  sub_24ECCCC98(v97, v107, v102, v108, v100);
  v110 = v97;
  v111 = v105;
  v103(v110, v102);
  v112 = v101;
  v113 = v102;
  v115 = v232;
  v114 = v233;
  v103(v112, v113);
  v116 = v234;
  sub_24F19A0B4(v220, type metadata accessor for ImpedimentFlowDestination);
LABEL_7:
  v175 = sub_24F197290();
  v261 = v111;
  v262 = v243;
  v263 = v116;
  v264 = v238;
  v176 = swift_getOpaqueTypeConformance2();
  v250 = v175;
  v251 = v176;
  v177 = swift_getWitnessTable();
  v261 = v239;
  v262 = &type metadata for PlayerMonogramProtocol;
  v263 = v114;
  v264 = v115;
  v178 = swift_getOpaqueTypeConformance2();
  v248 = v177;
  v249 = v178;
  v179 = v225;
  swift_getWitnessTable();
  sub_24E7896B8();
  return (*(v224 + 8))(v109, v179);
}

uint64_t sub_24F18E068(uint64_t a1)
{
  v2 = sub_24F921AA8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B298, &unk_24F9D0500);
  MEMORY[0x28223BE20](v6);
  v8 = (&v10 - v7);
  if (*(a1 + 32) == 1)
  {
    sub_24F921A98();
    (*(v3 + 16))(v8, v5, v2);
    swift_storeEnumTagMultiPayload();
    sub_24F199FC4(&qword_27F215638, MEMORY[0x277D7EBB0], MEMORY[0x277D7EBA8]);
    sub_24F924E28();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    *v8 = sub_24F926C98();
    swift_storeEnumTagMultiPayload();
    sub_24F199FC4(&qword_27F215638, MEMORY[0x277D7EBB0], MEMORY[0x277D7EBA8]);
    return sub_24F924E28();
  }
}

uint64_t sub_24F18E29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  sub_24F92B7F8();
  v5[11] = sub_24F92B7E8();
  v7 = sub_24F92B778();
  v5[12] = v7;
  v5[13] = v6;

  return MEMORY[0x2822009F8](sub_24F18E33C, v7, v6);
}

uint64_t sub_24F18E33C()
{
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 32) = *(v0 + 72);
  type metadata accessor for ImpedimentFlowView(0, v0 + 16);
  *(v0 + 112) = sub_24F18C5E8();
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_24F18E3F4;

  return sub_24F64BEDC();
}

uint64_t sub_24F18E3F4()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_24E70AEC8, v3, v2);
}

uint64_t sub_24F18E538@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v109 = a6;
  v111 = a5;
  v92 = a3;
  v103 = a2;
  v110 = a7;
  v101 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v95 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v93 = &v87 - v11;
  v91 = *(v12 - 8);
  MEMORY[0x28223BE20](v13);
  v90 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v89 = &v87 - v16;
  v94 = v17;
  v112 = sub_24F924E38();
  v18 = sub_24F92C4A8();
  v100 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v99 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v98 = &v87 - v21;
  v22 = sub_24F92C4A8();
  v97 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v96 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v102 = &v87 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v87 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v87 - v30;
  v32 = type metadata accessor for Player(0);
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v87 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = v18;
  v107 = v22;
  v106 = sub_24F924E38();
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v104 = &v87 - v36;
  sub_24E60169C(a1, v31, &unk_27F23E1F0, &unk_24F9549C0);
  if ((*(v33 + 48))(v31, 1, v32) == 1)
  {
    sub_24E601704(v31, &unk_27F23E1F0, &unk_24F9549C0);
    v37 = v103[7];
    if (v37)
    {
      v38 = v103[8];
      v116[0] = v92;

      v39 = v95;
      v37(a1, v116);
      sub_24E824448(v37, v38);
      v40 = v93;
      v41 = v109;
      sub_24E7896B8();
      v42 = v101;
      v43 = *(v101 + 8);
      v43(v39, a4);
      sub_24E7896B8();
      v43(v40, a4);
      v44 = v96;
      (*(v42 + 32))(v96, v39, a4);
      v45 = 0;
      v46 = v111;
      v47 = v108;
      v48 = v107;
    }

    else
    {
      v45 = 1;
      v41 = v109;
      v46 = v111;
      v47 = v108;
      v48 = v107;
      v42 = v101;
      v44 = v96;
    }

    (*(v42 + 56))(v44, v45, 1, a4);
    sub_24E8D5004(v44, v102);
    v63 = *(v97 + 8);
    v63(v44, v48);
    v116[10] = v41;
    WitnessTable = swift_getWitnessTable();
    sub_24E7896B8();
    v116[8] = v46;
    v116[9] = v41;
    v116[7] = swift_getWitnessTable();
    v65 = swift_getWitnessTable();
    v66 = v104;
    sub_24ECCCC98(v44, v47, v48, v65, WitnessTable);
    v67 = v44;
    v68 = v46;
    v63(v67, v48);
    v63(v102, v48);
  }

  else
  {
    sub_24F19A00C(v31, v35, type metadata accessor for Player);
    v49 = v103[5];
    v50 = v35;
    v88 = v35;
    if (v49)
    {
      v51 = v103[6];

      v52 = v90;
      v49(v50);
      v53 = v89;
      v54 = v94;
      v55 = v111;
      sub_24E7896B8();
      v56 = *(v91 + 8);
      v56(v52, v54);
      sub_24E7896B8();
      v57 = v99;
      v58 = a4;
      v59 = v109;
      sub_24ECCCBA0(v52, v54, v58, v55, v109);
      v60 = sub_24E824448(v49, v51);
      (v56)(v52, v54, v60);
      v56(v53, v54);
      (*(*(v112 - 8) + 56))(v57, 0, 1, v112);
      v61 = v55;
      v113 = v55;
      v62 = &v113;
    }

    else
    {
      v69 = v103[7];
      v70 = v109;
      v71 = v111;
      v57 = v99;
      if (v69)
      {
        v72 = v103[8];
        sub_24F199F30(v35, v28, type metadata accessor for Player);
        (*(v33 + 56))(v28, 0, 1, v32);
        v116[0] = v92;

        v73 = v95;
        v69(v28, v116);
        sub_24E601704(v28, &unk_27F23E1F0, &unk_24F9549C0);
        v74 = v93;
        sub_24E7896B8();
        v75 = *(v101 + 8);
        v75(v73, a4);
        sub_24E7896B8();
        sub_24ECCCC98(v73, v94, a4, v71, v70);
        v76 = sub_24E824448(v69, v72);
        (v75)(v73, a4, v76);
        v75(v74, a4);
        (*(*(v112 - 8) + 56))(v57, 0, 1, v112);
        v61 = v71;
        v114[0] = v71;
        v62 = v114;
      }

      else
      {
        (*(*(v112 - 8) + 56))(v99, 1, 1, v112);
        v61 = v71;
        v115 = v71;
        v62 = &v115;
      }

      v59 = v70;
    }

    v62[1] = v59;
    swift_getWitnessTable();
    v77 = v98;
    sub_24E8D5004(v57, v98);
    v78 = *(v100 + 8);
    v79 = v108;
    v78(v57, v108);
    v41 = v59;
    v114[4] = v61;
    v114[5] = v59;
    v114[3] = swift_getWitnessTable();
    v80 = swift_getWitnessTable();
    sub_24E7896B8();
    v114[2] = v59;
    v81 = v107;
    v82 = swift_getWitnessTable();
    v66 = v104;
    sub_24ECCCBA0(v57, v79, v81, v80, v82);
    v68 = v111;
    v78(v57, v79);
    v78(v77, v79);
    sub_24F19A0B4(v88, type metadata accessor for Player);
  }

  v116[5] = v68;
  v116[6] = v41;
  v116[4] = swift_getWitnessTable();
  v83 = swift_getWitnessTable();
  v116[3] = v41;
  v84 = swift_getWitnessTable();
  v116[1] = v83;
  v116[2] = v84;
  v85 = v106;
  swift_getWitnessTable();
  sub_24E7896B8();
  return (*(v105 + 8))(v66, v85);
}

double sub_24F18F24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a4;
  v7 = a3;
  v38[0] = a3;
  v38[1] = a4;
  v36 = a5;
  v37 = a6;
  v38[2] = a5;
  v38[3] = a6;
  v9 = type metadata accessor for ImpedimentFlowView(0, v38);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v34 - v14;
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v16 = sub_24F9220D8();
  __swift_project_value_buffer(v16, qword_27F39E8E0);
  v17 = sub_24F9220B8();
  v18 = sub_24F92BD98();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v35 = v15;
    v20 = v12;
    v21 = v9;
    v22 = v7;
    v23 = v6;
    v24 = a2;
    v25 = v19;
    *v19 = 0;
    _os_log_impl(&dword_24E5DD000, v17, v18, "Received a request to rebootstrap with impediments.", v19, 2u);
    v26 = v25;
    a2 = v24;
    v6 = v23;
    v7 = v22;
    v9 = v21;
    v12 = v20;
    v15 = v35;
    MEMORY[0x2530542D0](v26, -1, -1);
  }

  v27 = sub_24F92B858();
  (*(*(v27 - 8) + 56))(v15, 1, 1, v27);
  (*(v10 + 16))(v12, a2, v9);
  sub_24F92B7F8();
  v28 = sub_24F92B7E8();
  v29 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v30 = swift_allocObject();
  v31 = MEMORY[0x277D85700];
  *(v30 + 2) = v28;
  *(v30 + 3) = v31;
  *(v30 + 4) = v7;
  *(v30 + 5) = v6;
  v32 = v37;
  *(v30 + 6) = v36;
  *(v30 + 7) = v32;
  (*(v10 + 32))(&v30[v29], v12, v9);
  sub_24EA998B8(0, 0, v15, &unk_24F9D0540, v30);

  return result;
}

uint64_t sub_24F18F554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_24F92B7F8();
  v4[3] = sub_24F92B7E8();
  v6 = sub_24F92B778();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_24F18F5EC, v6, v5);
}

uint64_t sub_24F18F5EC()
{
  v1 = v0[2];
  v0[6] = [objc_opt_self() sharedCoordinator];
  v2 = *(v1 + 16);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_24F18F6AC;

  return sub_24F18B7F8(v2);
}

uint64_t sub_24F18F6AC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_24E8FAD8C, v4, v3);
}

double sub_24F18F7EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = a3;
  v34 = a4;
  v38[0] = a4;
  v38[1] = a5;
  v35 = a5;
  v36 = a6;
  v38[2] = a6;
  v38[3] = a7;
  v37 = a7;
  v7 = type metadata accessor for ImpedimentFlowView(0, v38);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v32 - v12;
  v14 = sub_24F923418();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v18, *MEMORY[0x277CDD6B8], v14, v16);
  v19 = sub_24F923408();
  (*(v15 + 8))(v18, v14);
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v20 = sub_24F9220D8();
  __swift_project_value_buffer(v20, qword_27F39E8E0);
  v21 = sub_24F9220B8();
  v22 = sub_24F92BD98();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 67109120;
    *(v23 + 4) = v19 & 1;
    _os_log_impl(&dword_24E5DD000, v21, v22, "App is foregrounded: %{BOOL}d", v23, 8u);
    MEMORY[0x2530542D0](v23, -1, -1);
  }

  if (v19)
  {
    v25 = sub_24F92B858();
    (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
    (*(v8 + 16))(v10, v33, v7);
    sub_24F92B7F8();
    v26 = sub_24F92B7E8();
    v27 = (*(v8 + 80) + 64) & ~*(v8 + 80);
    v28 = swift_allocObject();
    v29 = MEMORY[0x277D85700];
    *(v28 + 2) = v26;
    *(v28 + 3) = v29;
    v30 = v35;
    *(v28 + 4) = v34;
    *(v28 + 5) = v30;
    v31 = v37;
    *(v28 + 6) = v36;
    *(v28 + 7) = v31;
    (*(v8 + 32))(&v28[v27], v10, v7);
    sub_24EA998B8(0, 0, v13, &unk_24F9D0518, v28);
  }

  return result;
}

uint64_t sub_24F18FB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = sub_24F92B7F8();
  v8[7] = sub_24F92B7E8();
  v13 = swift_task_alloc();
  v8[8] = v13;
  v8[2] = a5;
  v8[3] = a6;
  v8[4] = a7;
  v8[5] = a8;
  v14 = type metadata accessor for ImpedimentFlowView(0, (v8 + 2));
  *v13 = v8;
  v13[1] = sub_24F18FC84;

  return sub_24F18FDC0(v14);
}

uint64_t sub_24F18FC84()
{

  v1 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24E7AFF18, v1, v0);
}

uint64_t sub_24F18FDC0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_24F92B7F8();
  v2[4] = sub_24F92B7E8();
  v4 = sub_24F92B778();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_24F18FE58, v4, v3);
}

uint64_t sub_24F18FE58()
{
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  v0[7] = __swift_project_value_buffer(v1, qword_27F39E8E0);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "Checking if the impediment flow needs to reset...", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  v0[8] = sub_24F18C5E8();
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_24F18FFB4;

  return sub_24F64CB34();
}

uint64_t sub_24F18FFB4(char a1)
{
  v2 = *v1;
  *(*v1 + 96) = a1;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);

  return MEMORY[0x2822009F8](sub_24F190100, v4, v3);
}

uint64_t sub_24F190100(uint64_t a1)
{
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 96);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_24E5DD000, v2, v3, "Need to reset the impediment flow: %{BOOL}d", v5, 8u);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  v6 = *(v1 + 96);

  if (v6 == 1)
  {
    v7 = *(v1 + 24);
    *(v1 + 80) = [objc_opt_self() sharedCoordinator];
    v8 = *(v7 + 16);
    v9 = swift_task_alloc();
    *(v1 + 88) = v9;
    *v9 = v1;
    v9[1] = sub_24F190290;

    return sub_24F18B7F8(v8);
  }

  else
  {

    v11 = *(v1 + 8);

    return v11();
  }
}

uint64_t sub_24F190290()
{
  v1 = *v0;
  v2 = *(*v0 + 80);

  v3 = *(v1 + 48);
  v4 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_24EA9C5F8, v4, v3);
}

uint64_t sub_24F1903D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F199FC4(&qword_27F23B0B0, type metadata accessor for ImpedimentFlowAuthorityProvider, &unk_24FA174B0);
  sub_24F91FD88();

  v4 = OBJC_IVAR____TtC12GameStoreKit31ImpedimentFlowAuthorityProvider__flowAuthority;
  swift_beginAccess();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B3A0, &qword_24FA174D0);
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_24F1904D4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B3A0, &qword_24FA174D0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v11[-v7];
  (*(v5 + 16))(&v11[-v7], a1, v4, v6);
  v9 = *a2;
  swift_getKeyPath();
  v12 = v9;
  v13 = v8;
  v14 = v9;
  sub_24F199FC4(&qword_27F23B0B0, type metadata accessor for ImpedimentFlowAuthorityProvider, &unk_24FA174B0);
  sub_24F91FD78();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_24F190664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v27 = a7;
  v26 = a6;
  v30 = a3;
  v29 = a2;
  v28 = a1;
  v31 = a8;
  v46[0] = a4;
  v46[1] = a5;
  v46[2] = a6;
  v46[3] = a7;
  type metadata accessor for ImpedimentFlowView.StartView(255, v46);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AFB8, &qword_24F9D00B8);
  sub_24F924E38();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AFC0, &qword_24F9D00C0);
  sub_24F924E38();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AFC8, &qword_24F9D00C8);
  sub_24F924E38();
  v10 = sub_24F926DC8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - v15;
  v32 = a4;
  v33 = a5;
  v34 = v26;
  v35 = v27;
  v36 = v28;
  v37 = v29;
  v38 = v30;
  WitnessTable = swift_getWitnessTable();
  v18 = sub_24F195940();
  v44 = WitnessTable;
  v45 = v18;
  v19 = swift_getWitnessTable();
  v20 = sub_24F195A50();
  v42 = v19;
  v43 = v20;
  v21 = swift_getWitnessTable();
  v22 = sub_24F195C54();
  v40 = v21;
  v41 = v22;
  v23 = swift_getWitnessTable();
  sub_24F926DB8();
  v39 = v23;
  swift_getWitnessTable();
  sub_24E7896B8();
  v24 = *(v11 + 8);
  v24(v13, v10);
  sub_24E7896B8();
  return (v24)(v16, v10);
}

uint64_t sub_24F190974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v338 = a3;
  v304 = a2;
  *&v340 = a1;
  v347 = a8;
  v313 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B380, &qword_24F9D05C8);
  MEMORY[0x28223BE20](v313);
  v316 = &v298 - v12;
  v334 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B080, &qword_24F9D00F8);
  MEMORY[0x28223BE20](v334);
  v322 = &v298 - v13;
  v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B090, &unk_24F9D0100);
  MEMORY[0x28223BE20](v312);
  v307 = &v298 - v14;
  v15 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v15 - 8);
  v321 = &v298 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v328 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B068, &qword_24F9D00F0);
  MEMORY[0x28223BE20](v328);
  v308 = &v298 - v17;
  *&v330 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B388, &qword_24F9D05D0);
  MEMORY[0x28223BE20](v330);
  v332 = &v298 - v18;
  v323 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B390, &qword_24F9D05D8);
  MEMORY[0x28223BE20](v323);
  v325 = &v298 - v19;
  *&v331 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B040, &qword_24F9D00E0);
  MEMORY[0x28223BE20](v331);
  v327 = &v298 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AFC8, &qword_24F9D00C8);
  MEMORY[0x28223BE20](v21);
  *&v337 = &v298 - v22;
  v319 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B050, &qword_24F9D00E8);
  MEMORY[0x28223BE20](v319);
  v306 = &v298 - v23;
  v324 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B020, &qword_24F9D00D8);
  MEMORY[0x28223BE20](v324);
  v305 = &v298 - v24;
  v318 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B398, &qword_24F9D05E0);
  MEMORY[0x28223BE20](v318);
  v320 = &v298 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AFC0, &qword_24F9D00C0);
  MEMORY[0x28223BE20](v26);
  v326 = &v298 - v27;
  v317 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B008, &qword_24F9D00D0);
  MEMORY[0x28223BE20](v317);
  v29 = &v298 - v28;
  v350 = sub_24F928818();
  v348 = *(v350 - 1);
  MEMORY[0x28223BE20](v350);
  v349 = &v298 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v299 = type metadata accessor for CancelSignInAction(0);
  MEMORY[0x28223BE20](v299);
  v300 = &v298 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v302 = type metadata accessor for SignInGameCenterView(0);
  MEMORY[0x28223BE20](v302);
  v33 = &v298 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AFB8, &qword_24F9D00B8);
  MEMORY[0x28223BE20](v34);
  v301 = &v298 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v303 = &v298 - v37;
  *&v314 = a4;
  *(&v314 + 1) = a5;
  *&v387 = a4;
  *(&v387 + 1) = a5;
  *&v315 = a6;
  *(&v315 + 1) = a7;
  *&v388 = a6;
  *(&v388 + 1) = a7;
  started = type metadata accessor for ImpedimentFlowView.StartView(255, &v387);
  v309 = v34;
  v39 = sub_24F924E38();
  v311 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v310 = &v298 - v40;
  v346 = v41;
  *&v336 = v26;
  v42 = sub_24F924E38();
  *&v335 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v333 = &v298 - v43;
  v345 = started;
  v329 = *(started - 8);
  MEMORY[0x28223BE20](v44);
  v46 = &v298 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v49 = &v298 - v48;
  v50 = type metadata accessor for ImpedimentFlowDestination(0);
  MEMORY[0x28223BE20](v50);
  v52 = &v298 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v55 = &v298 - v54;
  v343 = v21;
  v344 = v42;
  v56 = sub_24F924E38();
  v342 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v341 = &v298 - v57;
  sub_24F199F30(v340, v55, type metadata accessor for ImpedimentFlowDestination);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    v339 = v56;
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        swift_storeEnumTagMultiPayload();
        sub_24F195F70();
        v142 = v322;
        sub_24F924E28();
        sub_24E60169C(v142, v332, &qword_27F23B080, &qword_24F9D00F8);
        swift_storeEnumTagMultiPayload();
        sub_24F195CE0();
        sub_24F195EE4();
        v143 = v337;
        sub_24F924E28();
        sub_24E601704(v142, &qword_27F23B080, &qword_24F9D00F8);
        WitnessTable = swift_getWitnessTable();
        v145 = sub_24F195940();
        v398 = WitnessTable;
        v399 = v145;
        v146 = swift_getWitnessTable();
        v147 = sub_24F195A50();
        v396 = v146;
        v397 = v147;
        v148 = v344;
        v149 = swift_getWitnessTable();
        v150 = sub_24F195C54();
        v106 = v341;
        sub_24ECCCC98(v143, v148, v343, v149, v150);
        sub_24E601704(v143, &qword_27F23AFC8, &qword_24F9D00C8);
        v151 = &unk_27F23E1F0;
        v152 = &unk_24F9549C0;
        v153 = v55;
LABEL_22:
        sub_24E601704(v153, v151, v152);
        goto LABEL_23;
      }

      sub_24F199F30(v304, v52, type metadata accessor for ImpedimentFlowDestination);
      sub_24F192CE8(v52, v314, *(&v314 + 1), v315, *(&v315 + 1), v46);
      v251 = v345;
      v252 = swift_getWitnessTable();
      sub_24E7896B8();
      v253 = *(v329 + 8);
      v329 += 8;
      v350 = v253;
      v253(v46, v251);
      sub_24E7896B8();
      v254 = sub_24F195940();
      v255 = v310;
      sub_24ECCCBA0(v46, v251, v309, v252, v254);
      v353 = v252;
      v354 = v254;
      v256 = v346;
      v257 = swift_getWitnessTable();
      v258 = sub_24F195A50();
      v259 = v333;
      sub_24ECCCBA0(v255, v256, v336, v257, v258);
      (*(v311 + 8))(v255, v256);
      v351 = v257;
      v352 = v258;
      v260 = v344;
      v261 = swift_getWitnessTable();
      v262 = sub_24F195C54();
      v263 = v341;
      sub_24ECCCBA0(v259, v260, v343, v261, v262);
      (*(v335 + 8))(v259, v260);
      v264 = v350;
      v350(v46, v251);
      v265 = v49;
      v106 = v263;
      v264(v265, v251);
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        v72 = *(v55 + 1);
        v340 = *v55;
        v336 = v72;
        *&v335 = *(v55 + 4);
        v73 = *(v55 + 11);
        v333 = *(v55 + 10);
        v329 = v73;
        v74 = *(v55 + 17);
        v75 = *(v55 + 18);
        v76 = v55[152];
        v77 = *(v55 + 21);
        v326 = *(v55 + 20);
        v324 = v77;
        v78 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B0D8, &qword_24F9D0188) + 176);
        v79 = *(v55 + 56);
        v387 = *(v55 + 40);
        v388 = v79;
        v389 = *(v55 + 9);
        v80 = *(v55 + 7);
        v380 = *(v55 + 6);
        v381 = v80;
        v382 = *(v55 + 16);
        v81 = v348;
        v82 = &v55[v78];
        v83 = v349;
        v84 = v350;
        (*(v348 + 32))(v349, v82, v350);
        v85 = v308;
        sub_24E615E00(&v387, (v308 + 40));
        sub_24E60169C(&v380, v85 + 96, qword_27F21B590, &unk_24F93BE30);
        v86 = *(v338 + 16);
        v87 = type metadata accessor for OnboardingCrossUseConsentView(0);
        (*(v81 + 16))(v85 + v87[14], v83, v84);
        v88 = v336;
        *v85 = v340;
        *(v85 + 16) = v88;
        *(v85 + 32) = v335;
        v89 = v329;
        *(v85 + 80) = v333;
        *(v85 + 88) = v89;
        *(v85 + 136) = v74;
        *(v85 + 144) = v75;
        *(v85 + 152) = v76;
        v90 = v324;
        *(v85 + 160) = v326;
        *(v85 + 168) = v90;
        *(v85 + 176) = v86;
        v91 = v87[15];
        *(v85 + v91) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
        swift_storeEnumTagMultiPayload();
        v92 = v87[16];
        *(v85 + v92) = swift_getKeyPath();
        swift_storeEnumTagMultiPayload();
        v93 = v87[17];
        *(v85 + v93) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
        swift_storeEnumTagMultiPayload();
        v94 = v85 + v87[18];
        LOBYTE(v360) = 0;

        sub_24F926F28();
        v95 = *(&v361 + 1);
        *v94 = v361;
        *(v94 + 8) = v95;
        v96 = &qword_24F9D00F0;
        sub_24E60169C(v85, v325, &qword_27F23B068, &qword_24F9D00F0);
        swift_storeEnumTagMultiPayload();
        sub_24F195D6C();
        sub_24F195E28();
        v97 = v327;
        sub_24F924E28();
        sub_24E60169C(v97, v332, &qword_27F23B040, &qword_24F9D00E0);
        swift_storeEnumTagMultiPayload();
        sub_24F195CE0();
        sub_24F195EE4();
        v98 = v337;
        sub_24F924E28();
        sub_24E601704(v97, &qword_27F23B040, &qword_24F9D00E0);
        v99 = swift_getWitnessTable();
        v100 = sub_24F195940();
        v378 = v99;
        v379 = v100;
        v101 = swift_getWitnessTable();
        v102 = sub_24F195A50();
        v376 = v101;
        v377 = v102;
        v103 = v344;
        v104 = swift_getWitnessTable();
        v105 = sub_24F195C54();
        v106 = v341;
        sub_24ECCCC98(v98, v103, v343, v104, v105);
        sub_24E601704(v98, &qword_27F23AFC8, &qword_24F9D00C8);
        v107 = v85;
        v108 = &qword_27F23B068;
        goto LABEL_14;
      }

      v193 = *(v55 + 1);
      v340 = *v55;
      v335 = *(v55 + 2);
      v336 = v193;
      v194 = *(v55 + 7);
      v333 = *(v55 + 6);
      v329 = v194;
      v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B0E0, &unk_24F9D0190);
      v196 = &v55[v195[28]];
      v197 = &v55[v195[32]];
      v198 = *v197;
      v199 = *(v197 + 1);
      v200 = v195[36];
      v201 = v321;
      sub_24F19A00C(&v55[v195[24]], v321, type metadata accessor for Player);
      v202 = *(v196 + 1);
      v387 = *v196;
      v388 = v202;
      v389 = *(v196 + 4);
      v203 = v348;
      v204 = &v55[v200];
      v205 = v349;
      v206 = v350;
      (*(v348 + 32))(v349, v204, v350);
      v207 = type metadata accessor for GSKOnboardingProfileCreationView(0);
      v208 = v307;
      sub_24F199F30(v201, &v307[v207[8]], type metadata accessor for Player);
      sub_24E615E00(&v387, v208 + v207[9]);
      v209 = *(v338 + 16);
      (*(v203 + 16))(v208 + v207[12], v205, v206);
      v210 = v335;
      v211 = v336;
      *v208 = v340;
      *(v208 + 16) = v211;
      *(v208 + 32) = v210;
      v212 = v329;
      *(v208 + 48) = v333;
      *(v208 + 56) = v212;
      v213 = (v208 + v207[10]);
      *v213 = v198;
      v213[1] = v199;
      *(v208 + v207[11]) = v209;
      sub_24E60169C(v208, v316, &qword_27F23B090, &unk_24F9D0100);
      swift_storeEnumTagMultiPayload();
      sub_24F195F70();

      v214 = v322;
      sub_24F924E28();
      sub_24E60169C(v214, v332, &qword_27F23B080, &qword_24F9D00F8);
      swift_storeEnumTagMultiPayload();
      sub_24F195CE0();
      sub_24F195EE4();
      v215 = v337;
      sub_24F924E28();
      sub_24E601704(v214, &qword_27F23B080, &qword_24F9D00F8);
      v216 = swift_getWitnessTable();
      v217 = sub_24F195940();
      v385 = v216;
      v386 = v217;
      v218 = swift_getWitnessTable();
      v219 = sub_24F195A50();
      v383 = v218;
      v384 = v219;
      v220 = v344;
      v221 = swift_getWitnessTable();
      v222 = sub_24F195C54();
      v106 = v341;
      sub_24ECCCC98(v215, v220, v343, v221, v222);
      sub_24E601704(v215, &qword_27F23AFC8, &qword_24F9D00C8);
      sub_24E601704(v208, &qword_27F23B090, &unk_24F9D0100);
      (*(v203 + 8))(v349, v350);
      sub_24E601704(&v387, &qword_27F2169E8, &qword_24F943600);
      sub_24F19A0B4(v321, type metadata accessor for Player);
    }

LABEL_23:
    v56 = v339;
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v339 = v56;
    if (!EnumCaseMultiPayload)
    {
      v59 = *v55;
      v60 = *(v55 + 1);
      v61 = *(v55 + 2);
      v62 = *(v55 + 3);
      v64 = *(v55 + 10);
      v63 = *(v55 + 11);
      v349 = *(v55 + 4);
      v350 = v63;
      v65 = *(v55 + 56);
      v387 = *(v55 + 40);
      v388 = v65;
      v389 = *(v55 + 9);
      v66 = v338;
      Strong = swift_unknownObjectWeakLoadStrong();
      v68 = [Strong rootViewController];

      v69 = [v68 presentedViewController];
      sub_24E615E00(&v387, &v380);
      v361 = v314;
      v362 = v315;
      type metadata accessor for ImpedimentFlowView(0, &v361);
      if (*(v66 + 56))
      {
        v70 = v300;
        sub_24F928A98();
        *(&v362 + 1) = v299;
        v363 = sub_24F199FC4(&qword_27F216248, type metadata accessor for CancelSignInAction, &unk_24F9BBAA4);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v361);
        sub_24F19A00C(v70, boxed_opaque_existential_1, type metadata accessor for CancelSignInAction);
      }

      else
      {
        v363 = 0;
        v361 = 0u;
        v362 = 0u;
      }

      v266 = *(v66 + 16);
      *v33 = v69;
      *(v33 + 1) = v59;
      *(v33 + 2) = v60;
      *(v33 + 3) = v61;
      v267 = v349;
      *(v33 + 4) = v62;
      *(v33 + 5) = v267;
      sub_24E612C80(&v380, (v33 + 48));
      v268 = v350;
      *(v33 + 11) = v64;
      *(v33 + 12) = v268;
      v269 = v362;
      *(v33 + 104) = v361;
      *(v33 + 120) = v269;
      *(v33 + 17) = v363;
      *(v33 + 18) = v266;
      v270 = v302;
      v271 = *(v302 + 48);
      *&v33[v271] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
      swift_storeEnumTagMultiPayload();
      v272 = v270[13];
      *&v33[v272] = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      v273 = &v33[v270[14]];
      LOBYTE(v359) = 0;

      sub_24F926F28();
      v274 = *(&v360 + 1);
      *v273 = v360;
      *(v273 + 1) = v274;
      v275 = v270[15];
      v359 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F237670, &qword_24F989C80);
      sub_24F926F28();
      *&v33[v275] = v360;
      v276 = v33;
      v277 = v301;
      sub_24F19A00C(v276, v301, type metadata accessor for SignInGameCenterView);
      v278 = v277;
      v279 = v303;
      sub_24E6009C8(v278, v303, &qword_27F23AFB8, &qword_24F9D00B8);
      v280 = v345;
      v281 = swift_getWitnessTable();
      v282 = sub_24F195940();
      v283 = v310;
      sub_24ECCCC98(v279, v280, v309, v281, v282);
      v357 = v281;
      v358 = v282;
      v284 = v346;
      v285 = swift_getWitnessTable();
      v286 = sub_24F195A50();
      v287 = v333;
      sub_24ECCCBA0(v283, v284, v336, v285, v286);
      (*(v311 + 8))(v283, v284);
      v355 = v285;
      v356 = v286;
      v288 = v344;
      v289 = swift_getWitnessTable();
      v290 = sub_24F195C54();
      v106 = v341;
      sub_24ECCCBA0(v287, v288, v343, v289, v290);
      (*(v335 + 8))(v287, v288);
      v192 = v279;
      v190 = &qword_27F23AFB8;
      v191 = &qword_24F9D00B8;
      goto LABEL_21;
    }

    v154 = *(v55 + 1);
    v340 = *v55;
    v337 = v154;
    v334 = *(v55 + 4);
    v155 = *(v55 + 11);
    v332 = *(v55 + 10);
    v156 = *(v55 + 136);
    v330 = *(v55 + 152);
    v331 = v156;
    v157 = *(v55 + 21);
    v158 = *(v55 + 22);
    v159 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B0C0, &qword_24F9D0170) + 176);
    v160 = *(v55 + 56);
    v387 = *(v55 + 40);
    v388 = v160;
    v389 = *(v55 + 9);
    v161 = *(v55 + 7);
    v380 = *(v55 + 6);
    v381 = v161;
    v382 = *(v55 + 16);
    v162 = v348;
    v163 = &v55[v159];
    v164 = v349;
    v165 = v350;
    (*(v348 + 32))(v349, v163, v350);
    sub_24E615E00(&v387, (v29 + 40));
    sub_24E60169C(&v380, (v29 + 96), qword_27F21B590, &unk_24F93BE30);
    v166 = *(v338 + 16);
    v167 = type metadata accessor for WelcomeGameCenterView(0);
    (*(v162 + 16))(&v29[v167[14]], v164, v165);
    v168 = v337;
    *v29 = v340;
    *(v29 + 1) = v168;
    *(v29 + 4) = v334;
    *(v29 + 10) = v332;
    *(v29 + 11) = v155;
    v169 = v330;
    *(v29 + 136) = v331;
    *(v29 + 152) = v169;
    *(v29 + 21) = v157;
    *(v29 + 22) = v158;
    *(v29 + 23) = v166;
    v170 = v167[15];
    *&v29[v170] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
    swift_storeEnumTagMultiPayload();
    v171 = v167[16];
    *&v29[v171] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v172 = &v29[v167[17]];
    LOBYTE(v360) = 0;

    sub_24F926F28();
    v173 = *(&v361 + 1);
    *v172 = v361;
    *(v172 + 1) = v173;
    v174 = &v29[v167[18]];
    LOBYTE(v360) = 0;
    sub_24F926F28();
    v175 = *(&v361 + 1);
    *v174 = v361;
    *(v174 + 1) = v175;
    v176 = &v29[v167[19]];
    sub_24F929EB8();
    *&v360 = sub_24F929EA8();
    sub_24F926F28();
    v177 = *(&v361 + 1);
    *v176 = v361;
    *(v176 + 1) = v177;
    v178 = &v29[v167[20]];
    *&v360 = 0;
    sub_24F926F28();
    v179 = *(&v361 + 1);
    *v178 = v361;
    *(v178 + 1) = v179;
    v96 = &qword_24F9D00D0;
    sub_24E60169C(v29, v320, &qword_27F23B008, &qword_24F9D00D0);
    swift_storeEnumTagMultiPayload();
    sub_24F195ADC();
    sub_24F195B98();
    v180 = v326;
    sub_24F924E28();
    v181 = swift_getWitnessTable();
    v182 = sub_24F195940();
    v366 = v181;
    v367 = v182;
    v183 = v346;
    v184 = swift_getWitnessTable();
    v185 = sub_24F195A50();
    v186 = v333;
    sub_24ECCCC98(v180, v183, v336, v184, v185);
    sub_24E601704(v180, &qword_27F23AFC0, &qword_24F9D00C0);
    v364 = v184;
    v365 = v185;
    v187 = v344;
    v188 = swift_getWitnessTable();
    v189 = sub_24F195C54();
    v106 = v341;
    sub_24ECCCBA0(v186, v187, v343, v188, v189);
    (*(v335 + 8))(v186, v187);
    v107 = v29;
    v108 = &qword_27F23B008;
LABEL_14:
    sub_24E601704(v107, v108, v96);
    (*(v348 + 8))(v349, v350);
    v190 = &qword_27F213EA8;
    v191 = &unk_24F93D030;
    v192 = &v380;
LABEL_21:
    sub_24E601704(v192, v190, v191);
    v151 = &qword_27F2169E8;
    v152 = &qword_24F943600;
    v153 = &v387;
    goto LABEL_22;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v109 = *(v55 + 1);
    v340 = *v55;
    v337 = v109;
    v334 = *(v55 + 4);
    v110 = *(v55 + 11);
    v332 = *(v55 + 10);
    *&v331 = v110;
    v111 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B0C8, &qword_24F9D0178) + 112);
    v112 = *(v55 + 56);
    v387 = *(v55 + 40);
    v388 = v112;
    v389 = *(v55 + 9);
    v113 = v348;
    v114 = v349;
    v115 = v350;
    (*(v348 + 32))(v349, &v55[v111], v350);
    v116 = v338;
    v117 = swift_unknownObjectWeakLoadStrong();
    v118 = [v117 rootViewController];

    v119 = [v118 presentedViewController];
    v120 = v305;
    sub_24E615E00(&v387, (v305 + 48));
    v121 = *(v116 + 16);
    v122 = type metadata accessor for SignInMoltresView(0);
    (*(v113 + 16))(v120 + v122[11], v114, v115);
    *v120 = v119;
    *(v120 + 8) = v340;
    *(v120 + 24) = v337;
    *(v120 + 40) = v334;
    v123 = v331;
    *(v120 + 88) = v332;
    *(v120 + 96) = v123;
    *(v120 + 104) = v121;
    v124 = v122[12];
    *(v120 + v124) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
    swift_storeEnumTagMultiPayload();
    v125 = v122[13];
    *(v120 + v125) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v126 = v120 + v122[14];
    LOBYTE(v361) = 0;

    sub_24F926F28();
    v127 = *(&v380 + 1);
    *v126 = v380;
    *(v126 + 8) = v127;
    v128 = v122[15];
    *&v361 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F237670, &qword_24F989C80);
    sub_24F926F28();
    *(v120 + v128) = v380;
    sub_24E60169C(v120, v320, &qword_27F23B020, &qword_24F9D00D8);
    swift_storeEnumTagMultiPayload();
    sub_24F195ADC();
    sub_24F195B98();
    v129 = v326;
    sub_24F924E28();
    v130 = swift_getWitnessTable();
    v131 = sub_24F195940();
    v370 = v130;
    v371 = v131;
    v132 = v346;
    v133 = swift_getWitnessTable();
    v134 = sub_24F195A50();
    v135 = v333;
    sub_24ECCCC98(v129, v132, v336, v133, v134);
    sub_24E601704(v129, &qword_27F23AFC0, &qword_24F9D00C0);
    v368 = v133;
    v369 = v134;
    v136 = v344;
    v137 = swift_getWitnessTable();
    v138 = sub_24F195C54();
    v106 = v341;
    sub_24ECCCBA0(v135, v136, v343, v137, v138);
    (*(v335 + 8))(v135, v136);
    v139 = v120;
    v140 = &qword_27F23B020;
    v141 = &qword_24F9D00D8;
  }

  else
  {
    v223 = *v55;
    v224 = *(v55 + 1);
    v225 = *(v55 + 10);
    *&v340 = *(v55 + 9);
    v226 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B0D0, &qword_24F9D0180) + 112);
    v228 = *(v55 + 2);
    v227 = *(v55 + 3);
    v336 = *(v55 + 1);
    v387 = v228;
    v388 = v227;
    v389 = *(v55 + 8);
    v229 = v348;
    v230 = &v55[v226];
    v231 = v349;
    v232 = v350;
    (*(v348 + 32))(v349, v230, v350);
    v233 = v306;
    sub_24E615E00(&v387, (v306 + 32));
    v234 = *(v338 + 16);
    v235 = type metadata accessor for GamesOnboardingWelcomeView(0);
    v339 = v56;
    v236 = v235;
    (*(v229 + 16))(v233 + *(v235 + 40), v231, v232);
    *v233 = v223;
    *(v233 + 8) = v224;
    *(v233 + 16) = v336;
    *(v233 + 72) = v340;
    *(v233 + 80) = v225;
    *(v233 + 88) = v234;
    v237 = v236[11];
    *(v233 + v237) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
    swift_storeEnumTagMultiPayload();
    v238 = v236[12];
    *(v233 + v238) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v239 = v236[13];
    *(v233 + v239) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
    swift_storeEnumTagMultiPayload();
    v240 = v233 + v236[14];
    LOBYTE(v361) = 0;

    sub_24F926F28();
    v241 = *(&v380 + 1);
    *v240 = v380;
    *(v240 + 8) = v241;
    sub_24E60169C(v233, v325, &qword_27F23B050, &qword_24F9D00E8);
    swift_storeEnumTagMultiPayload();
    sub_24F195D6C();
    sub_24F195E28();
    v242 = v327;
    sub_24F924E28();
    sub_24E60169C(v242, v332, &qword_27F23B040, &qword_24F9D00E0);
    swift_storeEnumTagMultiPayload();
    sub_24F195CE0();
    sub_24F195EE4();
    v243 = v337;
    sub_24F924E28();
    sub_24E601704(v242, &qword_27F23B040, &qword_24F9D00E0);
    v244 = swift_getWitnessTable();
    v245 = sub_24F195940();
    v374 = v244;
    v375 = v245;
    v246 = swift_getWitnessTable();
    v247 = sub_24F195A50();
    v372 = v246;
    v373 = v247;
    v248 = v344;
    v249 = swift_getWitnessTable();
    v250 = sub_24F195C54();
    v106 = v341;
    sub_24ECCCC98(v243, v248, v343, v249, v250);
    sub_24E601704(v243, &qword_27F23AFC8, &qword_24F9D00C8);
    v139 = v233;
    v140 = &qword_27F23B050;
    v141 = &qword_24F9D00E8;
    v56 = v339;
  }

  sub_24E601704(v139, v140, v141);
  (*(v348 + 8))(v349, v350);
  sub_24E601704(&v387, &qword_27F2169E8, &qword_24F943600);
LABEL_24:
  v291 = swift_getWitnessTable();
  v292 = sub_24F195940();
  v394 = v291;
  v395 = v292;
  v293 = swift_getWitnessTable();
  v294 = sub_24F195A50();
  v392 = v293;
  v393 = v294;
  v295 = swift_getWitnessTable();
  v296 = sub_24F195C54();
  v390 = v295;
  v391 = v296;
  swift_getWitnessTable();
  sub_24E7896B8();
  return (*(v342 + 8))(v106, v56);
}

uint64_t sub_24F192CE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = swift_getKeyPath();
  *(a6 + 40) = 0;
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  started = type metadata accessor for ImpedimentFlowView.StartView(0, v15);
  v13 = *(started + 52);
  *(a6 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
  swift_storeEnumTagMultiPayload();
  return sub_24F19A00C(a1, a6 + *(started + 56), type metadata accessor for ImpedimentFlowDestination);
}

uint64_t sub_24F192DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v107 = a5;
  v106 = a4;
  v105 = a3;
  v104 = a2;
  v130 = a1;
  v116 = a6;
  v115 = type metadata accessor for FlowBackActionImplementation(0);
  MEMORY[0x28223BE20](v115);
  v114 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AFB0, &qword_24F9D00B0);
  MEMORY[0x28223BE20](v7 - 8);
  v113 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v108 = &v103 - v10;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B2A0, &unk_24F9D0548);
  v111 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v109 = &v103 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580, &unk_24F965710);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v112 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v127 = &v103 - v16;
  MEMORY[0x28223BE20](v17);
  v124 = &v103 - v18;
  MEMORY[0x28223BE20](v19);
  v122 = &v103 - v20;
  MEMORY[0x28223BE20](v21);
  v121 = &v103 - v22;
  MEMORY[0x28223BE20](v23);
  v123 = &v103 - v24;
  MEMORY[0x28223BE20](v25);
  v125 = &v103 - v26;
  MEMORY[0x28223BE20](v27);
  v131 = &v103 - v28;
  MEMORY[0x28223BE20](v29);
  v126 = &v103 - v30;
  MEMORY[0x28223BE20](v31);
  v128 = &v103 - v32;
  MEMORY[0x28223BE20](v33);
  v129 = &v103 - v34;
  MEMORY[0x28223BE20](v35);
  v132 = &v103 - v36;
  MEMORY[0x28223BE20](v37);
  v133 = &v103 - v38;
  MEMORY[0x28223BE20](v39);
  v41 = &v103 - v40;
  MEMORY[0x28223BE20](v42);
  v44 = &v103 - v43;
  MEMORY[0x28223BE20](v45);
  v47 = &v103 - v46;
  v135 = sub_24F928FD8();
  sub_24F929298();
  v137 = *(v13 + 16);
  v119 = v47;
  v137(v47, v44, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B2A8, &qword_24F9D0558);
  sub_24E602068(&qword_27F23B2B0, &qword_27F23B2A8, &qword_24F9D0558, &unk_24F9787F0);
  sub_24F929238();
  v48 = *(v13 + 8);
  v48(v44, v12);
  sub_24F929298();
  v118 = v44;
  v136 = v13 + 16;
  v49 = v137;
  v137(v44, v41, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B2B8, &qword_24F9D0560);
  sub_24E602068(&qword_27F23B2C0, &qword_27F23B2B8, &qword_24F9D0560, &unk_24F968F38);
  sub_24F929238();
  v48(v41, v12);
  v50 = v133;
  sub_24F929298();
  v117 = v41;
  v49(v41, v50, v12);
  v51 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B2C8, &qword_24F9D0568);
  sub_24E602068(&qword_27F23B2D0, &qword_27F23B2C8, &qword_24F9D0568, &unk_24F986650);
  sub_24F929238();
  v52 = v133;
  v48(v133, v12);
  v134 = v13 + 8;
  v53 = v132;
  sub_24F929298();
  v51(v52, v53, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B2D8, &qword_24F9D0570);
  sub_24E602068(&qword_27F23B2E0, &qword_27F23B2D8, &qword_24F9D0570, &unk_24F9CF770);
  sub_24F929238();
  v54 = v132;
  v48(v132, v12);
  v138 = v104;
  v139 = v105;
  v140 = v106;
  v141 = v107;
  type metadata accessor for ImpedimentFlowView(0, &v138);
  v55 = sub_24F18C5E8();
  v56 = v129;
  sub_24F929298();
  v138 = v55;
  v57 = v56;
  v51(v54, v56, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B2E8, &qword_24F9D0578);
  sub_24E602068(&qword_27F23B2F0, &qword_27F23B2E8, &qword_24F9D0578, &unk_24FA1F9C8);
  sub_24F929238();
  v48(v56, v12);

  v58 = sub_24F18C5E8();
  v59 = v128;
  sub_24F929298();
  v138 = v58;
  v60 = v59;
  v137(v57, v59, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B2F8, &qword_24F9D0580);
  sub_24E602068(&qword_27F23B300, &qword_27F23B2F8, &qword_24F9D0580, &unk_24F984FE0);
  sub_24F929238();
  v48(v59, v12);

  v61 = v126;
  sub_24F929298();
  v62 = v61;
  v63 = v137;
  v137(v60, v61, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B308, &qword_24F9D0588);
  sub_24E602068(&qword_27F23B310, &qword_27F23B308, &qword_24F9D0588, &unk_24FA37C68);
  sub_24F929238();
  v48(v61, v12);
  v64 = v131;
  sub_24F929298();
  v63(v62, v64, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B318, &qword_24F9D0590);
  sub_24E602068(&qword_27F23B320, &qword_27F23B318, &qword_24F9D0590, &unk_24F9B2F38);
  sub_24F929238();
  v65 = v131;
  v48(v131, v12);
  v66 = v125;
  sub_24F929298();
  v67 = v137;
  v137(v65, v66, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B328, &qword_24F9D0598);
  sub_24E602068(&qword_27F23B330, &qword_27F23B328, &qword_24F9D0598, &unk_24FA12CF0);
  sub_24F929238();
  v120 = v48;
  v48(v66, v12);
  v68 = v123;
  sub_24F929298();
  v67(v66, v68, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B338, &qword_24F9D05A0);
  sub_24E602068(&qword_27F23B340, &qword_27F23B338, &qword_24F9D05A0, &unk_24FA078C8);
  sub_24F929238();
  v48(v68, v12);
  v69 = sub_24F18C5E8();
  v70 = v121;
  sub_24F929298();
  v138 = v69;
  v67(v68, v70, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B348, &qword_24F9D05A8);
  sub_24E602068(&qword_27F23B350, &qword_27F23B348, &qword_24F9D05A8, &unk_24F9B2DE0);
  sub_24F929238();
  v71 = v70;
  v72 = v70;
  v73 = v120;
  v120(v72, v12);

  v74 = v122;
  sub_24F929298();
  v75 = v74;
  v76 = v137;
  v137(v71, v74, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B358, &qword_24F9D05B0);
  sub_24E602068(&qword_27F23B360, &qword_27F23B358, &qword_24F9D05B0, &unk_24F9E5ED0);
  sub_24F929238();
  v73(v74, v12);
  v77 = v124;
  sub_24F929298();
  v76(v75, v77, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B368, &unk_24F9D05B8);
  sub_24E602068(&qword_27F23B370, &qword_27F23B368, &unk_24F9D05B8, &unk_24FA0D798);
  sub_24F929238();
  v73(v77, v12);
  v78 = sub_24F18C638();
  v80 = v79;
  v82 = v81;
  swift_getKeyPath();
  v138 = v78;
  v139 = v80;
  v140 = v82;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B0B8, &qword_24F9D0168);
  v83 = v108;
  sub_24F927188();

  v106 = type metadata accessor for ImpedimentFlowAction(0);
  v105 = sub_24F199FC4(&qword_27F23AFD0, type metadata accessor for ImpedimentFlowAction, &unk_24F9F06BC);
  sub_24F199FC4(&qword_27F23AFD8, type metadata accessor for ImpedimentFlowAction, &unk_24F9F0684);
  v84 = v109;
  sub_24F921AB8();
  v85 = v127;
  sub_24F929298();
  v137(v77, v85, v12);
  sub_24E602068(&qword_27F23B378, &qword_27F23B2A0, &unk_24F9D0548, MEMORY[0x277D7EBB8]);
  v86 = v110;
  sub_24F929238();
  v87 = v120;
  v120(v85, v12);
  (*(v111 + 8))(v84, v86);
  v88 = sub_24F18C638();
  v90 = v89;
  v92 = v91;
  swift_getKeyPath();
  v138 = v88;
  v139 = v90;
  v140 = v92;
  sub_24F927188();

  sub_24E60169C(v83, v113, &qword_27F23AFB0, &qword_24F9D00B0);
  v93 = v114;
  sub_24F921B78();
  sub_24E601704(v83, &qword_27F23AFB0, &qword_24F9D00B0);
  v94 = v112;
  sub_24F929298();
  v95 = v137;
  v137(v85, v94, v12);
  sub_24F199FC4(&qword_27F227DB0, type metadata accessor for FlowBackActionImplementation, &unk_24F979960);
  v96 = v93;
  sub_24F929238();
  v97 = v134;
  v87(v94, v12);
  sub_24F19A0B4(v96, type metadata accessor for FlowBackActionImplementation);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220FF8, &qword_24F9C34B0);
  v98 = *(v97 + 64);
  v99 = (*(v97 + 72) + 32) & ~*(v97 + 72);
  v130 = swift_allocObject();
  v100 = v130 + v99;
  (v95)(v130 + v99, v119, v12);
  (v95)(v100 + v98, v118, v12);
  (v95)(v100 + 2 * v98, v117, v12);
  v115 = 3 * v98;
  (v95)(v100 + 3 * v98, v133, v12);
  (v95)(v100 + 4 * v98, v132, v12);
  v114 = 5 * v98;
  (v95)(v100 + 5 * v98, v129, v12);
  v113 = v100 + 6 * v98;
  v95();
  v112 = 7 * v98;
  (v95)(v100 + 7 * v98, v126, v12);
  (v95)(v100 + 8 * v98, v131, v12);
  v111 = 9 * v98;
  (v95)(v100 + 9 * v98, v125, v12);
  v110 = v100 + 10 * v98;
  v95();
  v109 = (v100 + 11 * v98);
  v95();
  v108 = (v100 + 12 * v98);
  v95();
  (v95)(v100 + 13 * v98, v124, v12);
  (v95)(v100 + 14 * v98, v127, v12);
  sub_24F929298();
  sub_24F929228();
  sub_24F929228();
  sub_24F929228();
  sub_24F929228();
  sub_24F929228();
  sub_24F929228();
  sub_24F929228();
  sub_24F929228();
  sub_24F929228();
  sub_24F929228();
  sub_24F929228();
  sub_24F929228();
  sub_24F929228();
  sub_24F929228();
  sub_24F929228();
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v101 = v120;
  v120(v127, v12);
  v101(v124, v12);
  v101(v122, v12);
  v101(v121, v12);
  v101(v123, v12);
  v101(v125, v12);
  v101(v131, v12);
  v101(v126, v12);
  v101(v128, v12);
  v101(v129, v12);
  v101(v132, v12);
  v101(v133, v12);
  v101(v117, v12);
  v101(v118, v12);
  return (v101)(v119, v12);
}

uint64_t sub_24F194334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v19[1] = a2;
  v20 = sub_24F9255B8();
  v19[0] = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A448, &qword_24F987258);
  MEMORY[0x28223BE20](v10);
  v12 = (v19 - v11);
  v13 = sub_24F926C98();
  (*(v7 + 16))(v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v14 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v15 = swift_allocObject();
  v16 = *(a1 + 32);
  *(v15 + 16) = *(a1 + 16);
  *(v15 + 32) = v16;
  (*(v7 + 32))(v15 + v14, v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v17 = (v12 + *(v10 + 36));
  sub_24F923AD8();
  sub_24F92B818();
  *v17 = &unk_24F9D04B0;
  v17[1] = v15;
  *v12 = v13;
  v21 = sub_24F926C98();
  sub_24F9255A8();
  sub_24EB91A0C();
  sub_24F9265F8();
  (*(v19[0] + 8))(v6, v20);

  return sub_24E601704(v12, &qword_27F22A448, &qword_24F987258);
}

uint64_t sub_24F1945E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v5[17] = a2;
  v5[18] = a3;
  v5[16] = a1;
  v6 = sub_24F921B58();
  v5[21] = v6;
  v5[22] = *(v6 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = type metadata accessor for ImpedimentFlowAction(0);
  v5[25] = swift_task_alloc();
  sub_24F92B7F8();
  v5[26] = sub_24F92B7E8();
  v8 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F19470C, v8, v7);
}

uint64_t sub_24F19470C()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 192);
  v3 = *(v0 + 128);
  v16 = *(v0 + 136);
  v17 = *(v0 + 152);

  sub_24F928A98();
  *(v0 + 96) = v16;
  *(v0 + 112) = v17;
  started = type metadata accessor for ImpedimentFlowView.StartView(0, v0 + 96);
  sub_24F199F30(v3 + *(started + 56), v1 + *(v2 + 24), type metadata accessor for ImpedimentFlowDestination);
  v5 = sub_24F929D08();
  *v1 = 0x656D696465706D69;
  v1[1] = 0xEA0000000000746ELL;
  v6 = (v1 + *(v2 + 28));
  *v6 = v5;
  v6[1] = v7;
  sub_24F7695C8(v0 + 16);
  v8 = *(v0 + 40);
  if (v8)
  {
    v9 = *(v0 + 192);
    v10 = *(v0 + 200);
    v12 = *(v0 + 176);
    v11 = *(v0 + 184);
    v18 = *(v0 + 168);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v8);
    *(v0 + 80) = v9;
    *(v0 + 88) = sub_24F199FC4(&qword_27F23B230, type metadata accessor for ImpedimentFlowAction, &unk_24F9F065C);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    sub_24F199F30(v10, boxed_opaque_existential_1, type metadata accessor for ImpedimentFlowAction);
    sub_24F76973C(v11);
    sub_24F9218A8();
    (*(v12 + 8))(v11, v18);
    sub_24F19A0B4(v10, type metadata accessor for ImpedimentFlowAction);
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  else
  {
    sub_24F19A0B4(*(v0 + 200), type metadata accessor for ImpedimentFlowAction);
    sub_24E601704(v0 + 16, &unk_27F212740, &unk_24F940730);
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_24F194984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[1] = a1;
  v31 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B238, &qword_24F9D04B8);
  v25 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = v23 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B240, &qword_24F9D04C0);
  v26 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B248, &qword_24F9D04C8);
  v9 = *(v8 - 8);
  v27 = v8;
  v28 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = v23 - v10;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B250, &qword_24F9D04D0);
  MEMORY[0x28223BE20](v24);
  v13 = v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B258, &qword_24F9D04D8);
  v29 = *(v14 - 8);
  v30 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = v23 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B260, &unk_24F9D04E0);
  v18 = sub_24E602068(&qword_27F23B268, &qword_27F23B260, &unk_24F9D04E0, MEMORY[0x277CE04B0]);
  sub_24F926858();
  v32 = v17;
  v33 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_24F926808();
  (*(v25 + 8))(v4, v2);
  v32 = v2;
  v33 = OpaqueTypeConformance2;
  v20 = swift_getOpaqueTypeConformance2();
  MEMORY[0x25304C400](1, MEMORY[0x277D84F90], v5, v20);
  (*(v26 + 8))(v7, v5);
  v32 = v5;
  v33 = v20;
  swift_getOpaqueTypeConformance2();
  v21 = v27;
  sub_24F925F48();
  (*(v28 + 8))(v11, v21);
  v13[*(v24 + 36)] = sub_24F925808();
  v32 = 0x4083800000000000;
  LOBYTE(v33) = 0;
  v34 = 0x4087500000000000;
  v35 = 0;
  sub_24F19982C();
  sub_24F199A18();
  sub_24F926598();
  sub_24F199A6C(v13);
  sub_24F194E28(v31);
  return (*(v29 + 8))(v16, v30);
}

uint64_t sub_24F194E28@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = sub_24F923E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B280, &qword_24F9D04F0);
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B288, &qword_24F9D04F8);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  v12 = [objc_opt_self() standardUserDefaults];
  v13 = sub_24F92B098();
  v14 = [v12 BOOLForKey_];

  if (v14)
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B258, &qword_24F9D04D8);
    (*(*(v15 - 8) + 16))(v11, v1, v15);
    swift_storeEnumTagMultiPayload();
    v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23B250, &qword_24F9D04D0);
    v17 = sub_24F19982C();
    v18 = sub_24F199A18();
    v32 = v16;
    v33 = &type metadata for FixedPresentationSizing;
    v34 = v17;
    v35 = v18;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v32 = v15;
    v33 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    return sub_24F924E28();
  }

  else
  {
    (*(v3 + 104))(v5, *MEMORY[0x277CDF9D8], v2);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B258, &qword_24F9D04D8);
    v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23B250, &qword_24F9D04D0);
    v23 = sub_24F19982C();
    v24 = sub_24F199A18();
    v32 = v22;
    v33 = &type metadata for FixedPresentationSizing;
    v34 = v23;
    v35 = v24;
    v25 = swift_getOpaqueTypeConformance2();
    sub_24F9263E8();
    (*(v3 + 8))(v5, v2);
    v27 = v29;
    v26 = v30;
    (*(v29 + 16))(v11, v8, v30);
    swift_storeEnumTagMultiPayload();
    v32 = v21;
    v33 = v25;
    swift_getOpaqueTypeConformance2();
    sub_24F924E28();
    return (*(v27 + 8))(v8, v26);
  }
}

GameStoreKit::ImpedimentFlowConfig::UseCase_optional __swiftcall ImpedimentFlowConfig.UseCase.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24F1952C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x736572746C6F6DLL;
  if (v2 != 1)
  {
    v4 = 0x42656D6F636C6577;
    v3 = 0xED000072656E6E61;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x656D61476E69;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x736572746C6F6DLL;
  if (*a2 != 1)
  {
    v8 = 0x42656D6F636C6577;
    v7 = 0xED000072656E6E61;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656D61476E69;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F1953DC()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F195488(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F195520()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F1955D4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x736572746C6F6DLL;
  if (v2 != 1)
  {
    v5 = 0x42656D6F636C6577;
    v4 = 0xED000072656E6E61;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656D61476E69;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

GameStoreKit::ImpedimentFlowConfig __swiftcall ImpedimentFlowConfig.init(useCase:suppressImpediments:)(GameStoreKit::ImpedimentFlowConfig::UseCase useCase, Swift::Bool suppressImpediments)
{
  *v2 = *useCase;
  v2[1] = suppressImpediments;
  result.useCase = useCase;
  return result;
}

uint64_t sub_24F1956FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F199FC4(&qword_27F23B0B0, type metadata accessor for ImpedimentFlowAuthorityProvider, &unk_24FA174B0);
  sub_24F91FD88();

  v4 = OBJC_IVAR____TtC12GameStoreKit31ImpedimentFlowAuthorityProvider__state;
  swift_beginAccess();
  return sub_24F199F30(v3 + v4, a2, type metadata accessor for ImpedimentFlowAuthorityProvider.State);
}

uint64_t sub_24F1957D8(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for ImpedimentFlowAuthorityProvider.State(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24F199F30(a1, v6, type metadata accessor for ImpedimentFlowAuthorityProvider.State);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_24F199FC4(&qword_27F23B0B0, type metadata accessor for ImpedimentFlowAuthorityProvider, &unk_24FA174B0);
  sub_24F91FD78();

  return sub_24F19A0B4(v6, type metadata accessor for ImpedimentFlowAuthorityProvider.State);
}

unint64_t sub_24F195940()
{
  result = qword_27F23AFE0;
  if (!qword_27F23AFE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AFB8, &qword_24F9D00B8);
    sub_24F199FC4(&qword_27F23AFE8, type metadata accessor for SignInGameCenterView, &unk_24F9E6380);
    sub_24F1959FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AFE0);
  }

  return result;
}

unint64_t sub_24F1959FC()
{
  result = qword_27F23AFF0;
  if (!qword_27F23AFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AFF0);
  }

  return result;
}

unint64_t sub_24F195A50()
{
  result = qword_27F23AFF8;
  if (!qword_27F23AFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AFC0, &qword_24F9D00C0);
    sub_24F195ADC();
    sub_24F195B98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AFF8);
  }

  return result;
}

unint64_t sub_24F195ADC()
{
  result = qword_27F23B000;
  if (!qword_27F23B000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23B008, &qword_24F9D00D0);
    sub_24F199FC4(&qword_27F23B010, type metadata accessor for WelcomeGameCenterView, &unk_24F9D5428);
    sub_24F1959FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B000);
  }

  return result;
}

unint64_t sub_24F195B98()
{
  result = qword_27F23B018;
  if (!qword_27F23B018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23B020, &qword_24F9D00D8);
    sub_24F199FC4(&qword_27F23B028, type metadata accessor for SignInMoltresView, &unk_24F9DA348);
    sub_24F1959FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B018);
  }

  return result;
}

unint64_t sub_24F195C54()
{
  result = qword_27F23B030;
  if (!qword_27F23B030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AFC8, &qword_24F9D00C8);
    sub_24F195CE0();
    sub_24F195EE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B030);
  }

  return result;
}

unint64_t sub_24F195CE0()
{
  result = qword_27F23B038;
  if (!qword_27F23B038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23B040, &qword_24F9D00E0);
    sub_24F195D6C();
    sub_24F195E28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B038);
  }

  return result;
}

unint64_t sub_24F195D6C()
{
  result = qword_27F23B048;
  if (!qword_27F23B048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23B050, &qword_24F9D00E8);
    sub_24F199FC4(&qword_27F23B058, type metadata accessor for GamesOnboardingWelcomeView, &unk_24F9B8E30);
    sub_24F1959FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B048);
  }

  return result;
}

unint64_t sub_24F195E28()
{
  result = qword_27F23B060;
  if (!qword_27F23B060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23B068, &qword_24F9D00F0);
    sub_24F199FC4(&qword_27F23B070, type metadata accessor for OnboardingCrossUseConsentView, &unk_24F947CC0);
    sub_24F1959FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B060);
  }

  return result;
}

unint64_t sub_24F195EE4()
{
  result = qword_27F23B078;
  if (!qword_27F23B078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23B080, &qword_24F9D00F8);
    sub_24F195F70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B078);
  }

  return result;
}

unint64_t sub_24F195F70()
{
  result = qword_27F23B088;
  if (!qword_27F23B088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23B090, &unk_24F9D0100);
    sub_24F199FC4(&qword_27F23B098, type metadata accessor for GSKOnboardingProfileCreationView, &unk_24F9BE484);
    sub_24F1959FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B088);
  }

  return result;
}

unint64_t sub_24F19602C()
{
  result = qword_27F23B0A0;
  if (!qword_27F23B0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B0A0);
  }

  return result;
}

uint64_t sub_24F196090()
{
  v1 = *(type metadata accessor for ImpedimentFlowDestination(0) - 8);
  v2 = *(v1 + 64);
  v3 = *(v0 + 32);
  v4 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v83[0] = *(v0 + 16);
  v83[1] = v3;
  v5 = type metadata accessor for ImpedimentFlowView(0, v83);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v4 + v2 + v6) & ~v6;
  v8 = (v0 + v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {

      __swift_destroy_boxed_opaque_existential_1(v8 + 5);

      goto LABEL_76;
    }

    if (EnumCaseMultiPayload == 1)
    {

      __swift_destroy_boxed_opaque_existential_1(v8 + 5);

      if (*(v8 + 15))
      {
        __swift_destroy_boxed_opaque_existential_1(v8 + 12);
      }

      v10 = &qword_27F23B0C0;
      v11 = &qword_24F9D0170;
      goto LABEL_74;
    }

    if (EnumCaseMultiPayload != 2)
    {
      goto LABEL_76;
    }

    __swift_destroy_boxed_opaque_existential_1(v8 + 5);

    v12 = &qword_27F23B0C8;
    v13 = &qword_24F9D0178;
LABEL_42:
    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v12, v13) + 112);
LABEL_75:
    v64 = sub_24F928818();
    (*(*(v64 - 8) + 8))(&v8[v37], v64);
    goto LABEL_76;
  }

  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload != 3)
    {

      __swift_destroy_boxed_opaque_existential_1(v8 + 5);

      if (*(v8 + 15))
      {
        __swift_destroy_boxed_opaque_existential_1(v8 + 12);
      }

      v10 = &qword_27F23B0D8;
      v11 = &qword_24F9D0188;
LABEL_74:
      v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v10, v11) + 176);
      goto LABEL_75;
    }

    __swift_destroy_boxed_opaque_existential_1(v8 + 4);

    v12 = &qword_27F23B0D0;
    v13 = &qword_24F9D0180;
    goto LABEL_42;
  }

  if (EnumCaseMultiPayload == 5)
  {
    v82 = v7;

    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B0E0, &unk_24F9D0190);
    v38 = &v8[v75[24]];

    v39 = type metadata accessor for Player(0);
    v40 = v39[6];
    v41 = sub_24F9289E8();
    v77 = *(v41 - 8);
    v79 = v41;
    v81 = *(v77 + 8);
    v81(&v38[v40]);

    if (*&v38[v39[9] + 8] != 1)
    {
    }

    v42 = &v38[v39[13]];
    v43 = type metadata accessor for CallProviderConversationHandleSet(0);
    if (!(*(*(v43 - 8) + 48))(v42, 1, v43))
    {
      v44 = type metadata accessor for CallProviderConversationHandle(0);
      v45 = *(*(v44 - 8) + 48);
      if (!(v45)(v42, 1, v44))
      {

        v46 = *(type metadata accessor for CallProvider(0) + 24);
        if (!(*(v77 + 48))(&v42[v46], 1, v79))
        {
          (v81)(&v42[v46], v79);
        }
      }

      v71 = &v42[*(v43 + 20)];
      if (!v45())
      {

        v47 = *(type metadata accessor for CallProvider(0) + 24);
        if (!(*(v77 + 48))(&v71[v47], 1, v79))
        {
          (v81)(&v71[v47], v79);
        }
      }
    }

    if (*&v38[v39[15] + 8])
    {
    }

    v48 = &v38[v39[16]];
    PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
    if (!(*(*(PlayedTogetherInfo - 8) + 48))(v48, 1, PlayedTogetherInfo))
    {
      v72 = v5;

      v50 = type metadata accessor for Game(0);
      (v81)(&v48[v50[18]], v79);
      v51 = v50[19];
      if (!(*(v77 + 48))(&v48[v51], 1, v79))
      {
        (v81)(&v48[v51], v79);
      }

      v52 = v50[21];
      v53 = sub_24F920818();
      v54 = *(v53 - 8);
      if (!(*(v54 + 48))(&v48[v52], 1, v53))
      {
        (*(v54 + 8))(&v48[v52], v53);
      }

      v5 = v72;
    }

    v55 = &v38[v39[17]];
    ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
    if (!(*(*(ChallengeInfo - 8) + 48))(v55, 1, ChallengeInfo))
    {

      v57 = type metadata accessor for Game(0);
      (v81)(&v55[v57[18]], v79);
      v58 = v57[19];
      if (!(*(v77 + 48))(&v55[v58], 1, v79))
      {
        (v81)(&v55[v58], v79);
      }

      v59 = v57[21];
      v60 = sub_24F920818();
      v61 = *(v60 - 8);
      if (!(*(v61 + 48))(&v55[v59], 1, v60))
      {
        (*(v61 + 8))(&v55[v59], v60);
      }
    }

    __swift_destroy_boxed_opaque_existential_1(&v8[v75[28]]);

    v62 = v75[36];
    v63 = sub_24F928818();
    (*(*(v63 - 8) + 8))(&v8[v62], v63);
    goto LABEL_70;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v14 = type metadata accessor for Player(0);
    if (!(*(*(v14 - 1) + 48))(v8, 1, v14))
    {
      v82 = v7;

      v15 = v14[6];
      v16 = sub_24F9289E8();
      v78 = (*(v16 - 8) + 8);
      v80 = *(v16 - 8);
      v76 = *v78;
      (*v78)(&v8[v15], v16);

      if (*&v8[v14[9] + 8] != 1)
      {
      }

      v17 = &v8[v14[13]];
      v18 = type metadata accessor for CallProviderConversationHandleSet(0);
      if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
      {
        v19 = type metadata accessor for CallProviderConversationHandle(0);
        v20 = *(*(v19 - 8) + 48);
        if (!(v20)(v17, 1, v19))
        {

          v21 = *(type metadata accessor for CallProvider(0) + 24);
          if (!(*(v80 + 48))(&v17[v21], 1, v16))
          {
            v76(&v17[v21], v16);
          }
        }

        v73 = &v17[*(v18 + 20)];
        if (!v20())
        {

          v22 = *(type metadata accessor for CallProvider(0) + 24);
          if (!(*(v80 + 48))(&v73[v22], 1, v16))
          {
            v76(&v73[v22], v16);
          }
        }
      }

      if (*&v8[v14[15] + 8])
      {
      }

      v23 = &v8[v14[16]];
      v24 = type metadata accessor for Player.LastPlayedTogetherInfo(0);
      if (!(*(*(v24 - 8) + 48))(v23, 1, v24))
      {

        v25 = type metadata accessor for Game(0);
        v76(&v23[v25[18]], v16);
        v26 = v25[19];
        if (!(*(v80 + 48))(&v23[v26], 1, v16))
        {
          v76(&v23[v26], v16);
        }

        v74 = v16;

        v27 = v25[21];
        v28 = sub_24F920818();
        v29 = *(v28 - 8);
        if (!(*(v29 + 48))(&v23[v27], 1, v28))
        {
          (*(v29 + 8))(&v23[v27], v28);
        }

        v16 = v74;
      }

      v30 = &v8[v14[17]];
      v31 = type metadata accessor for Player.LastChallengeInfo(0);
      v7 = v82;
      if (!(*(*(v31 - 8) + 48))(v30, 1, v31))
      {

        v32 = type metadata accessor for Game(0);
        v76(&v30[v32[18]], v16);
        v33 = v32[19];
        if (!(*(v80 + 48))(&v30[v33], 1, v16))
        {
          v76(&v30[v33], v16);
        }

        v34 = v32[21];
        v35 = sub_24F920818();
        v36 = *(v35 - 8);
        if (!(*(v36 + 48))(&v30[v34], 1, v35))
        {
          (*(v36 + 8))(&v30[v34], v35);
        }

LABEL_70:
        v7 = v82;
      }
    }
  }

LABEL_76:
  v65 = v0 + v7;

  MEMORY[0x2530543E0](v0 + v7 + 24);
  if (*(v0 + v7 + 40))
  {
  }

  if (*(v65 + 56))
  {
  }

  v66 = *(v5 + 76);
  v67 = sub_24F92C0E8();
  (*(*(v67 - 8) + 8))(v65 + v66, v67);
  v68 = *(v5 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235CD8, &qword_24F9B9820);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v69 = sub_24F923418();
    (*(*(v69 - 8) + 8))(v65 + v68, v69);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24F197160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for ImpedimentFlowDestination(0) - 8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 64);
  v16[0] = v5;
  v16[1] = v6;
  v12 = (v10 + 48) & ~v10;
  v16[2] = v7;
  v16[3] = v8;
  v13 = *(type metadata accessor for ImpedimentFlowView(0, v16) - 8);
  v14 = v2 + ((v12 + v11 + *(v13 + 80)) & ~*(v13 + 80));

  return sub_24F190664(a1, v2 + v12, v14, v5, v6, v7, v8, a2);
}

unint64_t sub_24F197290()
{
  result = qword_27F23B0E8;
  if (!qword_27F23B0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23B0A8, &qword_24F9D0110);
    sub_24F19734C();
    sub_24F199FC4(&qword_27F211A48, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B0E8);
  }

  return result;
}

unint64_t sub_24F19734C()
{
  result = qword_27F23B0F0;
  if (!qword_27F23B0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23B0F8, &qword_24F9D01A0);
    sub_24F1973D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B0F0);
  }

  return result;
}

unint64_t sub_24F1973D0()
{
  result = qword_27F23B100;
  if (!qword_27F23B100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23B108, &qword_24F9D01A8);
    sub_24F199FC4(&qword_27F215638, MEMORY[0x277D7EBB0], MEMORY[0x277D7EBA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B100);
  }

  return result;
}

uint64_t sub_24F19748C@<X0>(uint64_t a1@<X8>)
{
  v2 = 0x100000000000000;
  if (!*(v1 + 71))
  {
    v2 = 0;
  }

  v3 = 0x1000000000000;
  if (!*(v1 + 70))
  {
    v3 = 0;
  }

  v4 = 0x10000000000;
  if (!*(v1 + 69))
  {
    v4 = 0;
  }

  v5 = 0x100000000;
  if (!*(v1 + 68))
  {
    v5 = 0;
  }

  v6 = 0x1000000;
  if (!*(v1 + 67))
  {
    v6 = 0;
  }

  v7 = 0x10000;
  if (!*(v1 + 66))
  {
    v7 = 0;
  }

  v8 = 256;
  if (!*(v1 + 65))
  {
    v8 = 0;
  }

  return sub_24F18E538(*(v1 + 48), *(v1 + 56), v8 | *(v1 + 64) | v7 | v6 | v5 | v4 | v3 | v2, *(v1 + 24), *(v1 + 32), *(v1 + 40), a1);
}

double sub_24F19752C(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v10[0] = v1[2];
  v3 = v10[0];
  v10[1] = v4;
  v10[2] = v5;
  v10[3] = v6;
  v7 = *(type metadata accessor for ImpedimentFlowView(0, v10) - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_24F18F24C(a1, v8, v3, v4, v5, v6);
}

double sub_24F1975D8(uint64_t a1, uint64_t a2)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v12[0] = v2[2];
  v5 = v12[0];
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v9 = *(type metadata accessor for ImpedimentFlowView(0, v12) - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_24F18F7EC(a1, a2, v10, v5, v6, v7, v8);
}

uint64_t objectdestroy_6Tm_1()
{
  v1 = *(v0 + 32);
  v9[0] = *(v0 + 16);
  v9[1] = v1;
  v2 = type metadata accessor for ImpedimentFlowView(0, v9);
  v3 = v0 + ((*(*(v2 - 8) + 80) + 48) & ~*(*(v2 - 8) + 80));

  MEMORY[0x2530543E0](v3 + 24);
  if (*(v3 + 40))
  {
  }

  if (*(v3 + 56))
  {
  }

  v4 = *(v2 + 76);
  v5 = sub_24F92C0E8();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);
  v6 = *(v2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235CD8, &qword_24F9B9820);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_24F923418();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24F197844()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v1[2] = v2;
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = v5;
  v6 = *(type metadata accessor for ImpedimentFlowView(0, (v1 + 2)) - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  v1[6] = v8;
  *v8 = v1;
  v8[1] = sub_24F19A2BC;

  return sub_24F18E29C(v0 + v7, v2, v3, v4, v5);
}

unint64_t sub_24F197964()
{
  result = qword_27F23B118[0];
  if (!qword_27F23B118[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F23B118);
  }

  return result;
}

void sub_24F1979B8(uint64_t a1)
{
  sub_24F198720(319, &qword_27F23B1A0, type metadata accessor for ImpedimentFlowAuthorityProvider, MEMORY[0x277CE10B8]);
  if (v1 <= 0x3F)
  {
    sub_24F928FD8();
    if (v2 <= 0x3F)
    {
      sub_24E6CAEE4(319, &qword_27F22EB18, &unk_27F22EB20, qword_24F9C4E60, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_24F198720(319, qword_27F23B1A8, type metadata accessor for GamesSettings, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_24F92C0E8();
          if (v5 <= 0x3F)
          {
            sub_24F198720(319, &qword_27F235C80, MEMORY[0x277CDD6C8], MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_24F197B88(unint64_t *a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_24F92C0E8();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 76);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235C68, &unk_24F9B9740);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 80);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_24F197CCC(void *result, uint64_t a2, int a3, uint64_t a4, __n128 a5)
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v9 = sub_24F92C0E8();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = *(v10 + 56);
      v13 = v6 + *(a4 + 76);

      return v12(v13, a2, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235C68, &unk_24F9B9740);
      v15 = *(*(v14 - 8) + 56);
      v16 = v6 + *(a4 + 80);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_24F197E1C(uint64_t *a1)
{
  v1 = a1[1];
  v24 = *a1;
  v2 = a1[2];
  v3 = a1[3];
  v22 = v2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23B0A8, &qword_24F9D0110);
  sub_24F92C0E8();
  sub_24F924E38();
  sub_24F92C4A8();
  sub_24F92C4A8();
  sub_24F924E38();
  sub_24F926DC8();
  sub_24F199FC4(&qword_27F21F480, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
  v47 = v2;
  v48 = v3;
  WitnessTable = swift_getWitnessTable();
  v45 = v3;
  v43 = swift_getWitnessTable();
  v44 = swift_getWitnessTable();
  v42 = swift_getWitnessTable();
  swift_getWitnessTable();
  v4 = sub_24F924288();
  v27 = sub_24F923418();
  v26 = swift_getWitnessTable();
  v25 = sub_24F199FC4(&qword_27F235EA0, MEMORY[0x277CDD6C8], MEMORY[0x277CDD6D0]);
  swift_getOpaqueTypeMetadata2();
  sub_24F924E38();
  v23 = type metadata accessor for ImpedimentFlowAction(255);
  v28 = v24;
  v29 = v1;
  v30 = v22;
  v31 = v3;
  type metadata accessor for ImpedimentFlowView.StartView(255, &v28);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AFB8, &qword_24F9D00B8);
  sub_24F924E38();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AFC0, &qword_24F9D00C0);
  sub_24F924E38();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AFC8, &qword_24F9D00C8);
  sub_24F924E38();
  v5 = sub_24F926DC8();
  v6 = sub_24F199FC4(&qword_27F23AFD0, type metadata accessor for ImpedimentFlowAction, &unk_24F9F06BC);
  v7 = sub_24F199FC4(&qword_27F23AFD8, type metadata accessor for ImpedimentFlowAction, &unk_24F9F0684);
  v8 = swift_getWitnessTable();
  v9 = sub_24F195940();
  v40 = v8;
  v41 = v9;
  v10 = swift_getWitnessTable();
  v11 = sub_24F195A50();
  v38 = v10;
  v39 = v11;
  v12 = swift_getWitnessTable();
  v13 = sub_24F195C54();
  v36 = v12;
  v37 = v13;
  v35 = swift_getWitnessTable();
  v14 = swift_getWitnessTable();
  v28 = v23;
  v29 = MEMORY[0x277CE1428];
  v30 = v5;
  v31 = v6;
  v32 = v7;
  v33 = MEMORY[0x277CE1410];
  v34 = v14;
  v15 = sub_24F921CE8();
  v16 = sub_24F928FD8();
  v17 = swift_getWitnessTable();
  v28 = v15;
  v29 = v16;
  v30 = v17;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v28 = v15;
  v29 = v16;
  v30 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = sub_24F19602C();
  v28 = OpaqueTypeMetadata2;
  v29 = &type metadata for PlayerMonogramProtocol;
  v30 = OpaqueTypeConformance2;
  v31 = v20;
  swift_getOpaqueTypeMetadata2();
  sub_24F924E38();
  sub_24F197290();
  v28 = v4;
  v29 = v27;
  v30 = v26;
  v31 = v25;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  v28 = OpaqueTypeMetadata2;
  v29 = &type metadata for PlayerMonogramProtocol;
  v30 = OpaqueTypeConformance2;
  v31 = v20;
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

void sub_24F1983AC(uint64_t a1)
{
  sub_24E6CAEE4(319, &qword_27F22C050, &unk_27F212740, &unk_24F940730, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_24F198720(319, &qword_27F22C060, MEMORY[0x277D7EC08], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ImpedimentFlowDestination(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24F1984B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 40);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710, &unk_24F940700);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 52);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ImpedimentFlowDestination(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 56);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F1985F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 40) = -a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710, &unk_24F940700);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 52);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ImpedimentFlowDestination(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 56);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24F198720(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_24F1987B8()
{
  v1 = *(v0 + 32);
  v75[0] = *(v0 + 16);
  v75[1] = v1;
  started = type metadata accessor for ImpedimentFlowView.StartView(0, v75);
  v3 = *(*(started - 8) + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = v0 + v4;
  if (*(v0 + v4 + 40))
  {
    if (*(v5 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1((v0 + v4));
    }
  }

  else
  {
  }

  v6 = *(started + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_24F921B58();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = (v5 + *(started + 56));
  type metadata accessor for ImpedimentFlowDestination(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {

        __swift_destroy_boxed_opaque_existential_1(v8 + 5);

        if (*(v8 + 15))
        {
          __swift_destroy_boxed_opaque_existential_1(v8 + 12);
        }

        v10 = &qword_27F23B0C0;
        v11 = &qword_24F9D0170;
        goto LABEL_80;
      }

      if (EnumCaseMultiPayload == 2)
      {

        __swift_destroy_boxed_opaque_existential_1(v8 + 5);

        v12 = &qword_27F23B0C8;
        v13 = &qword_24F9D0178;
        goto LABEL_49;
      }
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v8 + 5);
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload != 3)
      {

        __swift_destroy_boxed_opaque_existential_1(v8 + 5);

        if (*(v8 + 15))
        {
          __swift_destroy_boxed_opaque_existential_1(v8 + 12);
        }

        v10 = &qword_27F23B0D8;
        v11 = &qword_24F9D0188;
LABEL_80:
        v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v10, v11) + 176);
        goto LABEL_81;
      }

      __swift_destroy_boxed_opaque_existential_1(v8 + 4);

      v12 = &qword_27F23B0D0;
      v13 = &qword_24F9D0180;
LABEL_49:
      v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v12, v13) + 112);
LABEL_81:
      v63 = sub_24F928818();
      (*(*(v63 - 8) + 8))(&v8[v38], v63);
      return swift_deallocObject();
    }

    if (EnumCaseMultiPayload == 5)
    {

      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B0E0, &unk_24F9D0190);
      v39 = &v8[v70[24]];

      v40 = type metadata accessor for Player(0);
      v41 = v40[6];
      v42 = sub_24F9289E8();
      v72 = *(v42 - 8);
      v74 = v42;
      v66 = *(v72 + 8);
      v66(&v39[v41]);

      if (*&v39[v40[9] + 8] != 1)
      {
      }

      v43 = &v39[v40[13]];
      v44 = type metadata accessor for CallProviderConversationHandleSet(0);
      if (!(*(*(v44 - 8) + 48))(v43, 1, v44))
      {
        v45 = type metadata accessor for CallProviderConversationHandle(0);
        v46 = *(*(v45 - 8) + 48);
        if (!(v46)(v43, 1, v45))
        {

          v47 = *(type metadata accessor for CallProvider(0) + 24);
          if (!(*(v72 + 48))(&v43[v47], 1, v74))
          {
            (v66)(&v43[v47], v74);
          }
        }

        v65 = &v43[*(v44 + 20)];
        if (!v46())
        {

          v48 = *(type metadata accessor for CallProvider(0) + 24);
          if (!(*(v72 + 48))(&v65[v48], 1, v74))
          {
            (v66)(&v65[v48], v74);
          }
        }
      }

      if (*&v39[v40[15] + 8])
      {
      }

      v49 = &v39[v40[16]];
      PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
      if (!(*(*(PlayedTogetherInfo - 8) + 48))(v49, 1, PlayedTogetherInfo))
      {

        v51 = type metadata accessor for Game(0);
        (v66)(&v49[v51[18]], v74);
        v52 = v51[19];
        if (!(*(v72 + 48))(&v49[v52], 1, v74))
        {
          (v66)(&v49[v52], v74);
        }

        v53 = v51[21];
        v54 = sub_24F920818();
        v55 = *(v54 - 8);
        if (!(*(v55 + 48))(&v49[v53], 1, v54))
        {
          (*(v55 + 8))(&v49[v53], v54);
        }
      }

      v56 = &v39[v40[17]];
      ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
      if (!(*(*(ChallengeInfo - 8) + 48))(v56, 1, ChallengeInfo))
      {

        v58 = type metadata accessor for Game(0);
        (v66)(&v56[v58[18]], v74);
        v59 = v58[19];
        if (!(*(v72 + 48))(&v56[v59], 1, v74))
        {
          (v66)(&v56[v59], v74);
        }

        v60 = v58[21];
        v61 = sub_24F920818();
        v62 = *(v61 - 8);
        if (!(*(v62 + 48))(&v56[v60], 1, v61))
        {
          (*(v62 + 8))(&v56[v60], v61);
        }
      }

      __swift_destroy_boxed_opaque_existential_1(&v8[v70[28]]);

      v38 = v70[36];
      goto LABEL_81;
    }

    if (EnumCaseMultiPayload == 6)
    {
      v14 = type metadata accessor for Player(0);
      if (!(*(*(v14 - 1) + 48))(v8, 1, v14))
      {

        v15 = v14[6];
        v16 = sub_24F9289E8();
        v71 = (*(v16 - 8) + 8);
        v73 = *(v16 - 8);
        v69 = *v71;
        (*v71)(&v8[v15], v16);

        if (*&v8[v14[9] + 8] != 1)
        {
        }

        v17 = &v8[v14[13]];
        v18 = type metadata accessor for CallProviderConversationHandleSet(0);
        if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
        {
          v67 = v16;
          v19 = type metadata accessor for CallProviderConversationHandle(0);
          v20 = *(*(v19 - 8) + 48);
          if (!v20(v17, 1, v19))
          {

            v21 = *(type metadata accessor for CallProvider(0) + 24);
            if (!(*(v73 + 48))(&v17[v21], 1, v67))
            {
              v69(&v17[v21], v67);
            }
          }

          v22 = &v17[*(v18 + 20)];
          if (!v20(v22, 1, v19))
          {

            v23 = *(type metadata accessor for CallProvider(0) + 24);
            if (!(*(v73 + 48))(&v22[v23], 1, v67))
            {
              v69(&v22[v23], v67);
            }
          }

          v16 = v67;
        }

        if (*&v8[v14[15] + 8])
        {
        }

        v24 = &v8[v14[16]];
        v25 = type metadata accessor for Player.LastPlayedTogetherInfo(0);
        if (!(*(*(v25 - 8) + 48))(v24, 1, v25))
        {

          v26 = type metadata accessor for Game(0);
          v69(&v24[v26[18]], v16);
          v27 = v26[19];
          if (!(*(v73 + 48))(&v24[v27], 1, v16))
          {
            v69(&v24[v27], v16);
          }

          v68 = v16;

          v28 = v26[21];
          v29 = sub_24F920818();
          v30 = *(v29 - 8);
          if (!(*(v30 + 48))(&v24[v28], 1, v29))
          {
            (*(v30 + 8))(&v24[v28], v29);
          }

          v16 = v68;
        }

        v31 = &v8[v14[17]];
        v32 = type metadata accessor for Player.LastChallengeInfo(0);
        if (!(*(*(v32 - 8) + 48))(v31, 1, v32))
        {

          v33 = type metadata accessor for Game(0);
          v69(&v31[v33[18]], v16);
          v34 = v33[19];
          if (!(*(v73 + 48))(&v31[v34], 1, v16))
          {
            v69(&v31[v34], v16);
          }

          v35 = v33[21];
          v36 = sub_24F920818();
          v37 = *(v36 - 8);
          if (!(*(v37 + 48))(&v31[v35], 1, v36))
          {
            (*(v37 + 8))(&v31[v35], v36);
          }
        }
      }
    }
  }

  return swift_deallocObject();
}

uint64_t sub_24F199728()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v1[2] = v2;
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = v5;
  v6 = *(type metadata accessor for ImpedimentFlowView.StartView(0, (v1 + 2)) - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  v1[6] = v8;
  *v8 = v1;
  v8[1] = sub_24F073C78;

  return sub_24F1945E0(v0 + v7, v2, v3, v4, v5);
}

unint64_t sub_24F19982C()
{
  result = qword_27F23B270;
  if (!qword_27F23B270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23B250, &qword_24F9D04D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23B248, &qword_24F9D04C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23B240, &qword_24F9D04C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23B238, &qword_24F9D04B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23B260, &unk_24F9D04E0);
    sub_24E602068(&qword_27F23B268, &qword_27F23B260, &unk_24F9D04E0, MEMORY[0x277CE04B0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F21E230, &qword_27F21E238, &unk_24F9A9110, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B270);
  }

  return result;
}

unint64_t sub_24F199A18()
{
  result = qword_27F23B278;
  if (!qword_27F23B278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B278);
  }

  return result;
}

uint64_t sub_24F199A6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B250, &qword_24F9D04D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24F199AD4()
{
  result = qword_27F23B290;
  if (!qword_27F23B290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B290);
  }

  return result;
}

uint64_t sub_24F199B2C(uint64_t a1)
{
  v5 = v1[4];
  v4 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v2[2] = v5;
  v2[3] = v4;
  v2[4] = v6;
  v2[5] = v7;
  v8 = *(type metadata accessor for ImpedimentFlowView(0, (v2 + 2)) - 8);
  v9 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = swift_task_alloc();
  v2[6] = v12;
  *v12 = v2;
  v12[1] = sub_24F19A2BC;

  return sub_24F18FB9C(a1, v10, v11, v1 + v9, v5, v4, v6, v7);
}

uint64_t objectdestroy_48Tm_0()
{
  v1 = *(v0 + 48);
  v10[0] = *(v0 + 32);
  v10[1] = v1;
  v2 = type metadata accessor for ImpedimentFlowView(0, v10);
  v3 = (*(*(v2 - 8) + 80) + 64) & ~*(*(v2 - 8) + 80);
  swift_unknownObjectRelease();
  v4 = v0 + v3;

  MEMORY[0x2530543E0](v0 + v3 + 24);
  if (*(v0 + v3 + 40))
  {
  }

  if (*(v4 + 56))
  {
  }

  v5 = *(v2 + 76);
  v6 = sub_24F92C0E8();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);
  v7 = *(v2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235CD8, &qword_24F9B9820);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_24F923418();
    (*(*(v8 - 8) + 8))(v4 + v7, v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24F199E08(uint64_t a1)
{
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v2[2] = v1[4];
  v2[3] = v4;
  v2[4] = v5;
  v2[5] = v6;
  v7 = *(type metadata accessor for ImpedimentFlowView(0, (v2 + 2)) - 8);
  v8 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = swift_task_alloc();
  v2[6] = v11;
  *v11 = v2;
  v11[1] = sub_24F19A2BC;

  return sub_24F18F554(a1, v9, v10, v1 + v8);
}

uint64_t sub_24F199F30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F199FC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F19A00C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F19A0B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F19A11C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22A448, &qword_24F987258);
  sub_24EB91A0C();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24F19A198()
{
  result = qword_27F23B3B0;
  if (!qword_27F23B3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23B3B8, &unk_24F9D0730);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23B250, &qword_24F9D04D0);
    sub_24F19982C();
    sub_24F199A18();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23B258, &qword_24F9D04D8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B3B0);
  }

  return result;
}

uint64_t MSODiffablePagePresenter.__allocating_init(objectGraph:personalizationProvider:pageUrl:context:)(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  swift_allocObject();
  v8 = sub_24F19AD18(a1, a2, a3, a4);

  return v8;
}

uint64_t MSODiffablePagePresenter.init(objectGraph:personalizationProvider:pageUrl:context:)(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v4 = sub_24F19AD18(a1, a2, a3, a4);

  return v4;
}

uint64_t sub_24F19A384(uint64_t a1)
{
  v74 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v73 - v6;
  v78 = v1[2];
  sub_24E60169C(v1 + qword_27F39CBF8, &v73 - v6, &qword_27F228530, &unk_24F93C6E0);
  swift_beginAccess();
  v8 = v1[3];
  swift_beginAccess();
  v9 = v1[4];
  v10 = *(v1 + qword_27F23B3C0);
  v11 = *(v1 + qword_27F23B3C0 + 8);
  v12 = *(v1 + qword_27F23B3C0 + 16);
  v13 = *(v1 + qword_27F23B3C0 + 24);
  v14 = *(v1 + qword_27F23B3C8);
  type metadata accessor for MSODiffablePageContentPresenter(0);
  v15 = swift_allocObject();
  v16 = (v15 + qword_27F22B5D0);
  *v16 = v10;
  v16[1] = v11;
  v16[2] = v12;
  v16[3] = v13;
  *(v15 + qword_27F22B5D8) = v14;
  v77 = v7;
  sub_24E60169C(v7, v4, &qword_27F228530, &unk_24F93C6E0);
  *(v15 + qword_27F22F198) = 0;
  v17 = MEMORY[0x277D84F90];
  *(v15 + qword_27F22F1A0) = MEMORY[0x277D84F90];
  v18 = qword_27F39C780;
  v75 = v9;
  swift_retain_n();
  v76 = v8;
  swift_retain_n();

  sub_24EBDFD34(v10, v11);

  *(v15 + v18) = sub_24E60986C(v17);
  v19 = (v15 + qword_27F22F1A8);
  *v19 = 0;
  v19[1] = 0;
  v20 = (v15 + qword_27F22F1B0);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v15 + qword_27F22F1B8);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v15 + qword_27F22F1C0);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v15 + qword_27F22F1C8);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v15 + qword_27F39C788);
  *v24 = 0u;
  v24[1] = 0u;
  *(v24 + 25) = 0u;
  *(v15 + qword_27F39C790) = 0;
  *(v15 + qword_27F22F1D0) = 0;
  *(v15 + qword_27F22F1D8) = MEMORY[0x277D84FA0];
  *(v15 + qword_27F39C798) = 0;
  v25 = qword_27F39C7A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A40, &unk_24F96B688);
  swift_allocObject();
  *(v15 + v25) = sub_24F92ADA8();
  v26 = qword_27F39C7A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8, &unk_24F96A5F0);
  swift_allocObject();
  *(v15 + v26) = sub_24F92ADA8();
  v27 = qword_27F39C7B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A48, &qword_24F96B698);
  swift_allocObject();
  *(v15 + v27) = sub_24F92ADA8();
  v28 = qword_27F39C7B8;
  swift_allocObject();
  *(v15 + v28) = sub_24F92ADA8();
  v29 = qword_27F39C7C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
  swift_allocObject();
  *(v15 + v29) = sub_24F92ADA8();
  v30 = qword_27F39C7C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0, &unk_24F989C70);
  swift_allocObject();
  *(v15 + v30) = sub_24F92ADA8();
  v31 = qword_27F22F1E0;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8, &unk_24F96A610);
  v33 = *(*(v32 - 8) + 56);
  v33(v15 + v31, 1, 1, v32);
  v33(v15 + qword_27F22F1E8, 1, 1, v32);
  *(v15 + 16) = v78;
  sub_24E911D90(v73, v15 + qword_27F39C7D0);
  v34 = *v19;
  v35 = v19[1];
  *v19 = 0;
  v19[1] = 0;
  sub_24E824448(v34, v35);
  v36 = *v21;
  v37 = v21[1];
  *v21 = 0;
  v21[1] = 0;
  v38 = v74;
  sub_24E824448(v36, v37);
  if (v38)
  {
    v39 = swift_allocObject();
    *(v39 + 16) = v38;
    v40 = sub_24E965688;
  }

  else
  {
    v40 = 0;
    v39 = 0;
  }

  v41 = *v20;
  v42 = v20[1];
  *v20 = v40;
  v20[1] = v39;

  sub_24E824448(v41, v42);
  v43 = *v22;
  v44 = v22[1];
  *v22 = 0;
  v22[1] = 0;
  sub_24E824448(v43, v44);
  v45 = *v23;
  v46 = v23[1];
  *v23 = 0;
  v23[1] = 0;
  sub_24E824448(v45, v46);
  v47 = v75;
  *(v15 + qword_27F22F1F0) = v76;
  *(v15 + qword_27F39C7D8) = v47;
  v48 = swift_allocObject();
  *(v48 + 16) = v38;
  v49 = swift_allocObject();
  swift_weakInit();
  v50 = swift_allocObject();
  *(v50 + 16) = sub_24EC026C4;
  *(v50 + 24) = v49;
  v51 = swift_allocObject();
  *(v51 + 16) = sub_24E965628;
  *(v51 + 24) = v50;
  v52 = (v15 + qword_27F22F1A8);
  v53 = *(v15 + qword_27F22F1A8);
  v54 = *(v15 + qword_27F22F1A8 + 8);
  *v52 = sub_24E965630;
  v52[1] = v51;

  sub_24E824448(v53, v54);
  v55 = swift_allocObject();
  *(v55 + 16) = sub_24F19B628;
  *(v55 + 24) = v48;
  v56 = swift_allocObject();
  *(v56 + 16) = sub_24E8D23E0;
  *(v56 + 24) = v55;
  v57 = (v15 + qword_27F22F1B0);
  v58 = *(v15 + qword_27F22F1B0);
  v59 = *(v15 + qword_27F22F1B0 + 8);
  *v57 = sub_24E965648;
  v57[1] = v56;

  sub_24E824448(v58, v59);
  v60 = (v15 + qword_27F22F1B8);
  v61 = *(v15 + qword_27F22F1B8);
  v62 = *(v15 + qword_27F22F1B8 + 8);
  if (v61)
  {
    v63 = swift_allocObject();
    *(v63 + 16) = v61;
    *(v63 + 24) = v62;
    v64 = swift_allocObject();
    *(v64 + 16) = sub_24E965638;
    *(v64 + 24) = v63;
    v65 = sub_24E965640;
  }

  else
  {
    v65 = 0;
    v64 = *(v15 + qword_27F22F1B8 + 8);
  }

  *v60 = v65;
  v60[1] = v64;
  sub_24E5FCA4C(v61, v62);
  sub_24E824448(v61, v62);
  v66 = (v15 + qword_27F22F1C8);
  v67 = *(v15 + qword_27F22F1C8);
  v68 = *(v15 + qword_27F22F1C8 + 8);
  if (v67)
  {
    v69 = swift_allocObject();
    *(v69 + 16) = v67;
    *(v69 + 24) = v68;
    v70 = swift_allocObject();
    *(v70 + 16) = sub_24E965628;
    *(v70 + 24) = v69;
    v71 = sub_24E965630;
  }

  else
  {
    v71 = 0;
    v70 = *(v15 + qword_27F22F1C8 + 8);
  }

  *v66 = v71;
  v66[1] = v70;
  sub_24E5FCA4C(v67, v68);
  sub_24E824448(v67, v68);

  sub_24E601704(v77, &qword_27F228530, &unk_24F93C6E0);
  return v15;
}

double sub_24F19ABC4()
{
  sub_24EBDFDB8(*(v0 + qword_27F23B3C0), *(v0 + qword_27F23B3C0 + 8), *(v0 + qword_27F23B3C0 + 16), *(v0 + qword_27F23B3C0 + 24));

  return result;
}

uint64_t MSODiffablePagePresenter.deinit()
{
  v0 = sub_24EBBE8A8();
  sub_24EBDFDB8(*(v0 + qword_27F23B3C0), *(v0 + qword_27F23B3C0 + 8), *(v0 + qword_27F23B3C0 + 16), *(v0 + qword_27F23B3C0 + 24));

  return v0;
}

uint64_t MSODiffablePagePresenter.__deallocating_deinit()
{
  v0 = sub_24EBBE8A8();
  v1 = *(v0 + qword_27F23B3C0);
  v2 = *(v0 + qword_27F23B3C0 + 8);
  v3 = *(v0 + qword_27F23B3C0 + 16);
  v4 = *(v0 + qword_27F23B3C0 + 24);

  sub_24EBDFDB8(v1, v2, v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_24F19AD18(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v5 = v4;
  v50 = a3;
  v51 = a1;
  v44[1] = a2;
  v9 = sub_24F92BEE8();
  v46 = *(v9 - 8);
  v47 = v9;
  MEMORY[0x28223BE20](v9);
  v45 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F92BE88();
  MEMORY[0x28223BE20](v11);
  v12 = sub_24F927DC8();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v44 - v14;
  v48 = v44 - v14;
  v16 = (v4 + qword_27F23B3C0);
  v17 = a4[1];
  *v16 = *a4;
  v16[1] = v17;
  *(v4 + qword_27F23B3C8) = a2;
  v18 = sub_24F91F4A8();
  v49 = v18;
  v19 = *(v18 - 8);
  (*(v19 + 16))(v15, a3, v18);
  (*(v19 + 56))(v15, 0, 1, v18);
  v55 = 0;
  memset(v54, 0, sizeof(v54));
  *(v4 + qword_27F39CC00) = 0;
  *(v4 + qword_27F39CC10) = MEMORY[0x277D84F90];
  *(v4 + qword_27F2326C8) = 0;
  v20 = *(*v4 + 640);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB88, &unk_24F989B60);
  v22 = *(*(v21 - 8) + 56);
  v22(v4 + v20, 1, 1, v21);
  v23 = *(*v4 + 648);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB90, &unk_24F9B1AC0);
  (*(*(v24 - 8) + 56))(v4 + v23, 1, 1, v24);
  v25 = *(*v4 + 656);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AB98, &unk_24F989B70);
  (*(*(v26 - 8) + 56))(v4 + v25, 1, 1, v26);
  v22(v5 + *(*v5 + 664), 1, 1, v21);
  v27 = *(*v4 + 672);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0, &unk_24F9AA740);
  (*(*(v28 - 8) + 56))(v4 + v27, 1, 1, v28);
  v29 = *(*v4 + 680);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA8, &unk_24F989B80);
  (*(*(v30 - 8) + 56))(v4 + v29, 1, 1, v30);
  v31 = *(*v4 + 688);
  sub_24E74EC40();

  sub_24F927DA8();
  v53 = MEMORY[0x277D84F90];
  sub_24EBD4288(v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30, &qword_24F95FB10);
  sub_24EC3122C();
  sub_24F92C6A8();
  (*(v46 + 104))(v45, *MEMORY[0x277D85260], v47);
  *(v4 + v31) = sub_24F92BF38();
  sub_24EBD3128(v5 + *(*v5 + 696));
  v33 = (v5 + *(*v5 + 704));
  *v33 = 0u;
  v33[1] = 0u;
  *(v33 + 25) = 0u;
  v34 = *(*v4 + 712);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB0, &unk_24F989B90);
  swift_allocObject();
  *(v4 + v34) = sub_24F92ADA8();
  v35 = *(*v4 + 720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB8, &unk_24F9AA7A0);
  swift_allocObject();
  *(v4 + v35) = sub_24F92ADA8();
  v36 = *(*v4 + 728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
  swift_allocObject();
  *(v4 + v36) = sub_24F92ADA8();
  *(v4 + *(*v4 + 736)) = 0;
  v37 = (v5 + *(*v5 + 752));
  *v37 = 0;
  v37[1] = 0;
  v38 = v48;
  sub_24E60169C(v48, v4 + qword_27F39CBF8, &qword_27F228530, &unk_24F93C6E0);
  sub_24E60169C(v54, v5 + *(*v5 + 744), &qword_27F229490, &unk_24F984C40);
  v39 = type metadata accessor for InlineUnifiedMessagePresenter();
  v52.receiver = objc_allocWithZone(v39);
  v52.super_class = v39;
  *(v5 + qword_27F39CC08) = objc_msgSendSuper2(&v52, sel_init);

  v41 = sub_24EBB9A04(v40, 0, 0, 0);
  v42 = *(*v41 + 1112);

  *(v41 + qword_27F39CC00) = v42(0);

  sub_24EBC0494(0);

  (*(v19 + 8))(v50, v49);
  sub_24E601704(v54, &qword_27F229490, &unk_24F984C40);
  sub_24E601704(v38, &qword_27F228530, &unk_24F93C6E0);
  return v41;
}

uint64_t type metadata accessor for MSODiffablePagePresenter(uint64_t a1)
{
  result = qword_27F23B3D0;
  if (!qword_27F23B3D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F19B5F0()
{

  return swift_deallocObject();
}

uint64_t sub_24F19B630()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24F19B668()
{

  return swift_deallocObject();
}

void static ArcadeDebugSubscriptionStateManager.state.getter(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = ASKBuildTypeGetCurrent(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249E0, &qword_24F973100);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24F9479A0;
  *(v4 + 32) = @"debug";
  *(v4 + 40) = @"convergence";
  *(v4 + 48) = @"internal";
  type metadata accessor for BuildType(0);
  v5 = @"debug";
  v6 = @"convergence";
  v7 = @"internal";
  v8 = sub_24F92B588();

  IsAnyOf = ASKBuildTypeIsAnyOf(v3, v8);

  v10 = byte_27F23B3E0;
  if (!IsAnyOf)
  {
    v10 = 7;
  }

  *a2 = v10;
}

void (*static ArcadeDebugSubscriptionStateManager.state.modify(uint64_t **a1))(uint64_t **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x30uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = ASKBuildTypeGetCurrent(v2);
  *v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249E0, &qword_24F973100);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24F9479A0;
  v3[1] = @"debug";
  *(v5 + 32) = @"debug";
  v3[2] = @"convergence";
  *(v5 + 40) = @"convergence";
  v3[3] = @"internal";
  *(v5 + 48) = @"internal";
  type metadata accessor for BuildType(0);
  v3[4] = v6;
  v7 = @"debug";
  v8 = @"convergence";
  v9 = @"internal";
  v10 = sub_24F92B588();

  IsAnyOf = ASKBuildTypeIsAnyOf(v4, v10);

  v12 = byte_27F23B3E0;
  if (!IsAnyOf)
  {
    v12 = 7;
  }

  *(v3 + 40) = v12;
  return sub_24F19B940;
}

void sub_24F19B940(uint64_t **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = (*a1)[3];
  v5 = (*a1)[1];
  v4 = (*a1)[2];
  v6 = ASKBuildTypeGetCurrent(a1);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24F9479A0;
  *(v7 + 32) = v5;
  *(v7 + 40) = v4;
  *(v7 + 48) = v3;
  v8 = v5;
  v9 = v4;
  v10 = v3;
  v11 = sub_24F92B588();

  IsAnyOf = ASKBuildTypeIsAnyOf(v6, v11);

  if (IsAnyOf)
  {
    byte_27F23B3E0 = v2;
  }

  free(v1);
}

void _s12GameStoreKit35ArcadeDebugSubscriptionStateManagerO5stateAA0defG0OSgvsZ_0(char *a1)
{
  v1 = *a1;
  v2 = ASKBuildTypeGetCurrent(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249E0, &qword_24F973100);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24F9479A0;
  *(v3 + 32) = @"debug";
  *(v3 + 40) = @"convergence";
  *(v3 + 48) = @"internal";
  type metadata accessor for BuildType(0);
  v4 = @"debug";
  v5 = @"convergence";
  v6 = @"internal";
  v7 = sub_24F92B588();

  IsAnyOf = ASKBuildTypeIsAnyOf(v2, v7);

  if (IsAnyOf)
  {
    byte_27F23B3E0 = v1;
  }
}

uint64_t JSError.describeForMetricsEvent(using:)(void (*a1)(uint64_t, unint64_t, void *))
{
  v2 = sub_24F92A7D8();
  if ((v3 & 1) == 0)
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v11 = sub_24E9421D0();
    v10[0] = v4;
    a1(0x6E694C726F727265, 0xE900000000000065, v10);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  v5 = sub_24F92A7E8();
  if ((v6 & 1) == 0)
  {
    v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v11 = sub_24E9421D0();
    v10[0] = v7;
    a1(0x6C6F43726F727265, 0xEB000000006E6D75, v10);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  result = sub_24F92A858();
  if (v9)
  {
    v11 = MEMORY[0x277D837D0];
    v10[0] = result;
    v10[1] = v9;
    a1(0x5255656372756F73, 0xE90000000000004CLL, v10);
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  return result;
}

unint64_t sub_24F19BD1C(uint64_t a1)
{
  result = sub_24E979414();
  *(a1 + 8) = result;
  return result;
}

uint64_t InstallPagePreInstallPaidLayout.init(metrics:iconView:titleText:subtitleText:separator:descriptionText:bottomLockupView:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X8>)
{
  v14 = *(a1 + 208);
  *(a8 + 432) = *(a1 + 192);
  *(a8 + 448) = v14;
  *(a8 + 464) = *(a1 + 224);
  *(a8 + 480) = *(a1 + 240);
  v15 = *(a1 + 144);
  *(a8 + 368) = *(a1 + 128);
  *(a8 + 384) = v15;
  v16 = *(a1 + 176);
  *(a8 + 400) = *(a1 + 160);
  *(a8 + 416) = v16;
  v17 = *(a1 + 80);
  *(a8 + 304) = *(a1 + 64);
  *(a8 + 320) = v17;
  v18 = *(a1 + 112);
  *(a8 + 336) = *(a1 + 96);
  *(a8 + 352) = v18;
  v19 = *(a1 + 16);
  *(a8 + 240) = *a1;
  *(a8 + 256) = v19;
  v20 = *(a1 + 48);
  *(a8 + 272) = *(a1 + 32);
  *(a8 + 288) = v20;
  sub_24E612C80(a2, a8);
  sub_24E612C80(a3, a8 + 40);
  sub_24E612C80(a4, a8 + 80);
  sub_24E612C80(a5, a8 + 120);
  sub_24E612C80(a6, a8 + 160);

  return sub_24E612C80(a7, a8 + 200);
}

uint64_t InstallPagePreInstallPaidLayout.Metrics.init(titleSpace:subtitleSpace:separatorSpace:descriptionSpace:iconViewMargin:bottomLockupMargin:horizontalMargin:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v14 = *a7;
  sub_24E612C80(a1, a8);
  sub_24E612C80(a2, a8 + 40);
  sub_24E612C80(a3, a8 + 80);
  sub_24E612C80(a4, a8 + 120);
  sub_24E612C80(a5, a8 + 160);
  result = sub_24E612C80(a6, a8 + 200);
  *(a8 + 240) = v14;
  return result;
}

uint64_t InstallPagePreInstallPaidLayout.Metrics.titleSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_24E612C80(a1, v1);
}

uint64_t InstallPagePreInstallPaidLayout.Metrics.subtitleSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 40));

  return sub_24E612C80(a1, v1 + 40);
}

uint64_t InstallPagePreInstallPaidLayout.Metrics.separatorSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 80));

  return sub_24E612C80(a1, v1 + 80);
}

uint64_t InstallPagePreInstallPaidLayout.Metrics.descriptionSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 120));

  return sub_24E612C80(a1, v1 + 120);
}

uint64_t InstallPagePreInstallPaidLayout.Metrics.iconViewMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 160));

  return sub_24E612C80(a1, v1 + 160);
}

uint64_t InstallPagePreInstallPaidLayout.Metrics.bottomLockupMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 200));

  return sub_24E612C80(a1, v1 + 200);
}

void InstallPagePreInstallPaidLayout.Metrics.horizontalMargin.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 240) = v2;
}

double InstallPagePreInstallPaidLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v49 = a1;
  v6 = sub_24F9225E8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v9;
  v10 = sub_24F922618();
  v50 = *(v10 - 8);
  v51 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v47 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v3[60];
  v55[0] = a1;
  (*(*v13 + 104))(v56, v55, v11);
  (*(v7 + 104))(v9, *MEMORY[0x277D22788], v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B3F0, &unk_24F93B6B0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_24F979FB0;
  sub_24E615E00((v4 + 50), v56);
  v15 = sub_24F9229A8();
  v16 = MEMORY[0x277D228E0];
  *(v14 + 56) = v15;
  *(v14 + 64) = v16;
  __swift_allocate_boxed_opaque_existential_1((v14 + 32));
  sub_24F9229B8();
  v18 = v4[3];
  v17 = v4[4];
  v19 = __swift_project_boxed_opaque_existential_1(v4, v18);
  *(v14 + 96) = v18;
  *(v14 + 104) = *(v17 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v14 + 72));
  (*(*(v18 - 8) + 16))(boxed_opaque_existential_1, v19, v18);
  v22 = v4[8];
  v21 = v4[9];
  v23 = __swift_project_boxed_opaque_existential_1(v4 + 5, v22);
  v57 = v22;
  v58 = *(*(v21 + 8) + 8);
  v24 = __swift_allocate_boxed_opaque_existential_1(v56);
  (*(*(v22 - 8) + 16))(v24, v23, v22);
  sub_24E615E00((v4 + 30), v55);
  v25 = sub_24F922418();
  v26 = MEMORY[0x277D226F0];
  v53 = v25;
  v54 = MEMORY[0x277D226F0];
  __swift_allocate_boxed_opaque_existential_1(v52);
  sub_24F922408();
  v27 = sub_24F9229F8();
  v28 = MEMORY[0x277D22900];
  *(v14 + 136) = v27;
  *(v14 + 144) = v28;
  __swift_allocate_boxed_opaque_existential_1((v14 + 112));
  sub_24F9229E8();
  v30 = v4[13];
  v29 = v4[14];
  v31 = __swift_project_boxed_opaque_existential_1(v4 + 10, v30);
  v57 = v30;
  v58 = *(*(v29 + 8) + 8);
  v32 = __swift_allocate_boxed_opaque_existential_1(v56);
  (*(*(v30 - 8) + 16))(v32, v31, v30);
  sub_24E615E00((v4 + 35), v55);
  v53 = v25;
  v54 = v26;
  __swift_allocate_boxed_opaque_existential_1(v52);
  sub_24F922408();
  *(v14 + 176) = v27;
  *(v14 + 184) = v28;
  __swift_allocate_boxed_opaque_existential_1((v14 + 152));
  sub_24F9229E8();
  sub_24E615E00((v4 + 40), v56);
  *(v14 + 216) = v15;
  v33 = MEMORY[0x277D228E0];
  *(v14 + 224) = MEMORY[0x277D228E0];
  __swift_allocate_boxed_opaque_existential_1((v14 + 192));
  sub_24F9229B8();
  v34 = v4[23];
  v35 = v4[24];
  v36 = __swift_project_boxed_opaque_existential_1(v4 + 20, v34);
  v57 = v34;
  v58 = *(*(v35 + 8) + 8);
  v37 = __swift_allocate_boxed_opaque_existential_1(v56);
  (*(*(v34 - 8) + 16))(v37, v36, v34);
  sub_24E615E00((v4 + 45), v55);
  v53 = v25;
  v54 = MEMORY[0x277D226F0];
  __swift_allocate_boxed_opaque_existential_1(v52);
  sub_24F922408();
  *(v14 + 256) = v27;
  *(v14 + 264) = v28;
  __swift_allocate_boxed_opaque_existential_1((v14 + 232));
  sub_24F9229E8();
  sub_24E615E00((v4 + 55), v56);
  *(v14 + 296) = v15;
  *(v14 + 304) = v33;
  __swift_allocate_boxed_opaque_existential_1((v14 + 272));
  sub_24F9229B8();
  v38 = v4[28];
  v39 = v4[29];
  v40 = __swift_project_boxed_opaque_existential_1(v4 + 25, v38);
  *(v14 + 336) = v38;
  *(v14 + 344) = *(v39 + 8);
  v41 = __swift_allocate_boxed_opaque_existential_1((v14 + 312));
  (*(*(v38 - 8) + 16))(v41, v40, v38);
  v42 = v47;
  sub_24F9225F8();
  sub_24F9225D8();
  v44 = v43;
  (*(v50 + 8))(v42, v51);
  return v44;
}

uint64_t InstallPagePreInstallPaidLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>, CGFloat a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = v6;
  v91 = a1;
  v11 = a3.n128_f64[0];
  v92 = a2;
  v87 = sub_24F9228C8();
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v88 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v84 = &v74 - v14;
  v90 = sub_24F9228E8();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v85 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24F9227F8();
  v105 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24F922838();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_24F922868();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v26;
  v82 = sub_24F922888();
  v83 = *(v82 - 8);
  v27 = MEMORY[0x28223BE20](v82);
  v81 = &v74 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 104))(v26, *MEMORY[0x277D22868], v23, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235740, &unk_24F965BC0);
  v29 = *(sub_24F922848() - 8);
  v101 = *(v29 + 72);
  v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v31 = swift_allocObject();
  v79 = v31;
  *(v31 + 16) = xmmword_24F93FC20;
  v95 = v31 + v30;
  v32 = v7[8];
  v33 = v7[9];
  v34 = __swift_project_boxed_opaque_existential_1(v7 + 5, v32);
  v111 = v32;
  v112 = *(v33 + 8);
  v35 = __swift_allocate_boxed_opaque_existential_1(&v110);
  (*(*(v32 - 8) + 16))(v35, v34, v32);
  v99 = *MEMORY[0x277D22858];
  v98 = *(v20 + 104);
  v100 = v20 + 104;
  v36 = v19;
  v37.n128_f64[0] = v98(v22);
  v109 = MEMORY[0x277D84F90];
  v104 = sub_24E8EF510(v37);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235750, &qword_24F98AA50);
  v97 = sub_24E8EF568();
  sub_24F92C6A8();
  v38 = v22;
  sub_24F922818();
  v96 = *(v105 + 8);
  v105 += 8;
  v96(v18, v16);
  v39 = *(v20 + 8);
  v94 = v20 + 8;
  v103 = v39;
  v40 = v36;
  v77 = v36;
  v39(v22, v36);
  __swift_destroy_boxed_opaque_existential_1(&v110);
  v93 = v7;
  v42 = v7[13];
  v41 = v7[14];
  v43 = __swift_project_boxed_opaque_existential_1(v7 + 10, v42);
  v111 = v42;
  v112 = *(v41 + 8);
  v44 = __swift_allocate_boxed_opaque_existential_1(&v110);
  (*(*(v42 - 8) + 16))(v44, v43, v42);
  v45 = v22;
  v46 = v99;
  v47 = v40;
  v48 = v98;
  (v98)(v45, v99, v47);
  v109 = MEMORY[0x277D84F90];
  v76 = v18;
  sub_24F92C6A8();
  v49 = v101;
  sub_24F922818();
  v50 = v96;
  v96(v18, v16);
  v51 = v77;
  v103(v38, v77);
  __swift_destroy_boxed_opaque_existential_1(&v110);
  v75 = 2 * v49;
  v52 = v51;
  v48(v38, v46, v51);
  v110 = MEMORY[0x277D84F90];
  v53 = v76;
  v54 = v16;
  v78 = v16;
  sub_24F92C6A8();
  v55 = v75;
  v56 = v93;
  sub_24F922818();
  v57 = v53;
  v50(v53, v54);
  v58 = v52;
  v103(v38, v52);
  v101 += v55;
  v59 = v56;
  v60 = v56[23];
  v61 = v56[24];
  v62 = __swift_project_boxed_opaque_existential_1(v56 + 20, v60);
  v111 = v60;
  v112 = *(v61 + 8);
  v63 = __swift_allocate_boxed_opaque_existential_1(&v110);
  (*(*(v60 - 8) + 16))(v63, v62, v60);
  (v98)(v38, v99, v58);
  v109 = MEMORY[0x277D84F90];
  v64 = v78;
  sub_24F92C6A8();
  sub_24F922818();
  v96(v57, v64);
  v103(v38, v58);
  __swift_destroy_boxed_opaque_existential_1(&v110);
  v111 = sub_24F922418();
  v112 = MEMORY[0x277D226F0];
  __swift_allocate_boxed_opaque_existential_1(&v110);
  sub_24F922408();
  v65 = v81;
  sub_24F922878();
  v66 = v82;
  v111 = v82;
  v112 = MEMORY[0x277D22878];
  v67 = __swift_allocate_boxed_opaque_existential_1(&v110);
  v68 = v83;
  (*(v83 + 16))(v67, v65, v66);
  sub_24E615E00(v56, &v109);
  v69 = *MEMORY[0x277D228A0];
  v70 = *(v86 + 104);
  v71 = v87;
  v70(v84, v69, v87);
  sub_24E615E00((v59 + 50), v108);
  sub_24E615E00((v59 + 25), v107);
  v70(v88, v69, v71);
  sub_24E615E00((v59 + 55), v106);
  v72 = v85;
  sub_24F9228D8();
  InstallPagePreInstallPaidLayout.measurements(fitting:in:)(v91, a5, a6);
  v113.origin.x = v11;
  v113.origin.y = a4;
  v113.size.width = a5;
  v113.size.height = a6;
  CGRectGetMidX(v113);
  v114.origin.x = v11;
  v114.origin.y = a4;
  v114.size.width = a5;
  v114.size.height = a6;
  CGRectGetMinY(v114);
  sub_24F9228B8();
  (*(v89 + 8))(v72, v90);
  return (*(v68 + 8))(v65, v66);
}

uint64_t sub_24F19D4B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 488))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24F19D4FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 456) = 0u;
    *(result + 472) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 488) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 488) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy248_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_24F19D614(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 248))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24F19D65C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 248) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 248) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Void __swiftcall ImpedimentFlowDestinationStates.reset()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D4E0, &unk_24F994C00);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - v2;
  *(v0 + 16) = 0;
  *(v0 + 18) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8, &qword_24F93B580);
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC12GameStoreKit31ImpedimentFlowDestinationStates_lastRecordedSignedInPlayer;
  swift_beginAccess();
  sub_24F1836FC(v3, v0 + v5);
  swift_endAccess();
  v6 = v0 + OBJC_IVAR____TtC12GameStoreKit31ImpedimentFlowDestinationStates_lastRecordedSignedInAppStoreDSID;
  *v6 = 0;
  *(v6 + 8) = 1;
}

_BYTE *ImpedimentFlowDestinationStates.__allocating_init(completedWelcome:completedCrossUse:completedProfileCreation:lastRecordedSignedInPlayer:lastRecordedSignedInAppStoreDSID:)(char a1, char a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v12 = swift_allocObject();
  v13 = OBJC_IVAR____TtC12GameStoreKit31ImpedimentFlowDestinationStates_lastRecordedSignedInPlayer;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8, &qword_24F93B580);
  (*(*(v14 - 8) + 56))(&v12[v13], 1, 1, v14);
  v15 = &v12[OBJC_IVAR____TtC12GameStoreKit31ImpedimentFlowDestinationStates_lastRecordedSignedInAppStoreDSID];
  *v15 = 0;
  v15[8] = 1;
  v12[16] = a1;
  v12[17] = a2;
  v12[18] = a3;
  swift_beginAccess();
  sub_24F1836FC(a4, &v12[v13]);
  swift_endAccess();
  *v15 = a5;
  v15[8] = a6 & 1;
  return v12;
}

_BYTE *ImpedimentFlowDestinationStates.init(completedWelcome:completedCrossUse:completedProfileCreation:lastRecordedSignedInPlayer:lastRecordedSignedInAppStoreDSID:)(char a1, char a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v13 = OBJC_IVAR____TtC12GameStoreKit31ImpedimentFlowDestinationStates_lastRecordedSignedInPlayer;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8, &qword_24F93B580);
  (*(*(v14 - 8) + 56))(&v6[v13], 1, 1, v14);
  v15 = &v6[OBJC_IVAR____TtC12GameStoreKit31ImpedimentFlowDestinationStates_lastRecordedSignedInAppStoreDSID];
  *v15 = 0;
  v15[8] = 1;
  v6[16] = a1;
  v6[17] = a2;
  v6[18] = a3;
  swift_beginAccess();
  sub_24F1836FC(a4, &v6[v13]);
  swift_endAccess();
  *v15 = a5;
  v15[8] = a6 & 1;
  return v6;
}

uint64_t ImpedimentFlowDestinationStates.debugDescription.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D4E0, &unk_24F994C00);
  MEMORY[0x28223BE20](v2);
  v4 = v16 - v3;
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_24F92C888();
  v20 = v18;
  v21 = v19;
  MEMORY[0x253050C20](0xD000000000000036, 0x800000024FA6E1D0);
  if (v0[16])
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v0[16])
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x253050C20](v5, v6);

  MEMORY[0x253050C20](0xD000000000000017, 0x800000024FA6E210);
  if (v0[17])
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v0[17])
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x253050C20](v7, v8);

  MEMORY[0x253050C20](0xD00000000000001ELL, 0x800000024FA6E230);
  if (v0[18])
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v0[18])
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x253050C20](v9, v10);

  MEMORY[0x253050C20](0xD000000000000020, 0x800000024FA6E250);
  v11 = OBJC_IVAR____TtC12GameStoreKit31ImpedimentFlowDestinationStates_lastRecordedSignedInPlayer;
  swift_beginAccess();
  sub_24EF525F4(&v1[v11], v4);
  v12 = sub_24F92B188();
  MEMORY[0x253050C20](v12);

  MEMORY[0x253050C20](0xD000000000000026, 0x800000024FA6E280);
  v13 = v1[OBJC_IVAR____TtC12GameStoreKit31ImpedimentFlowDestinationStates_lastRecordedSignedInAppStoreDSID + 8];
  v16[1] = *&v1[OBJC_IVAR____TtC12GameStoreKit31ImpedimentFlowDestinationStates_lastRecordedSignedInAppStoreDSID];
  v17 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215390, &qword_24F93FC50);
  v14 = sub_24F92B188();
  MEMORY[0x253050C20](v14);

  return v20;
}

uint64_t ImpedimentFlowDestinationStates.__deallocating_deinit()
{
  sub_24EF52664(v0 + OBJC_IVAR____TtC12GameStoreKit31ImpedimentFlowDestinationStates_lastRecordedSignedInPlayer);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ImpedimentFlowDestinationStates(uint64_t a1)
{
  result = qword_27F23B3F8;
  if (!qword_27F23B3F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F19DD84(uint64_t a1)
{
  sub_24ECCA178(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t VideoControls.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_24F928388();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v50 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v48 = &v42 - v9;
  MEMORY[0x28223BE20](v10);
  v47 = &v42 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v42 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v42 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v42 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v42 - v22;
  sub_24E615E00(a1, v49);
  sub_24F928298();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v44 = 0;
  v45 = a1;
  v46 = a2;
  sub_24F928398();
  v25 = sub_24F928278();
  v26 = v25;
  v43 = v25;
  v27 = *(v6 + 8);
  v27(v20, v5);
  sub_24F928398();
  v28 = sub_24F928278();
  v27(v17, v5);
  v29 = v43 & 1 | 2;
  if ((v28 & 1) == 0)
  {
    v29 = v26 & 1;
  }

  if (v28 == 2)
  {
    v30 = v26 & 1;
  }

  else
  {
    v30 = v29;
  }

  sub_24F928398();
  v31 = sub_24F928278();
  v27(v14, v5);
  v32 = v30 | 4;
  if ((v31 & 1) == 0)
  {
    v32 = v30;
  }

  if (v31 != 2)
  {
    v30 = v32;
  }

  v33 = v47;
  sub_24F928398();
  v34 = sub_24F928278();
  v27(v33, v5);
  v35 = v30 | 8;
  if ((v34 & 1) == 0)
  {
    v35 = v30;
  }

  if (v34 != 2)
  {
    v30 = v35;
  }

  v36 = v48;
  sub_24F928398();
  v37 = sub_24F928278();
  v27(v36, v5);
  v38 = v30 | 0x10;
  if ((v37 & 1) == 0)
  {
    v38 = v30;
  }

  if (v37 == 2)
  {
    v39 = v30;
  }

  else
  {
    v39 = v38;
  }

  v40 = v50;
  sub_24F928398();
  v41 = sub_24F928278();
  v27(v40, v5);
  if (v41 == 2 || (v41 & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v45);
    result = (v27)(v23, v5);
    *v46 = v39;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v45);
    result = (v27)(v23, v5);
    *v46 = v39 | 0x20;
  }

  return result;
}