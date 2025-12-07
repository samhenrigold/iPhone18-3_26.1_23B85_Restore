uint64_t sub_25803DC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x2822009F8](sub_25803DC28, 0, 0);
}

uint64_t sub_25803DC28()
{
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_25803DAB0;
  v3 = v0[3];
  v2 = v0[4];

  return ManagedAppsServer.disableAppConfig(for:)(v3, v2);
}

uint64_t sub_25803DD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x2822009F8](sub_25803DD2C, 0, 0);
}

uint64_t sub_25803DD2C()
{
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_25803DAB0;
  v3 = v0[3];
  v2 = v0[4];

  return ManagedAppsServer.completeRemovalOfAppConfig(for:)(v3, v2);
}

uint64_t sub_25803DE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_25803DE2C, 0, 0);
}

uint64_t sub_25803DE2C()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_25803DEC4;

  return ManagedAppsServer.getAllAppConfigState()();
}

uint64_t sub_25803DEC4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_25803E074;
  }

  else
  {
    *(v4 + 56) = a1;
    v5 = sub_25803DFEC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25803DFEC()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = v1;
  v2(v1, 0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25803E074()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v1;
  v2(0, v1);

  v4 = v0[1];

  return v4();
}

void sub_25803E11C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_2580499A0();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_25803E18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_25803E230;

  return sub_2580378A4();
}

uint64_t sub_25803E230()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_25803E3AC;
  }

  else
  {
    v2 = sub_25803E344;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25803E344()
{
  (*(v0 + 16))(0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25803E3AC()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = v1;
  v2(v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25803E474(uint64_t a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = _Block_copy(aBlock);
  _Block_copy(v11);

  sub_2580419C0(v12, v11, a4, a5, a6, a7);
  _Block_release(v11);
  _Block_release(v11);
}

uint64_t sub_25803E508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_25803E52C, 0, 0);
}

uint64_t sub_25803E52C()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_25803E5C4;

  return ManagedAppsServer.dumpDatabase()();
}

uint64_t sub_25803E5C4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_25803E764;
  }

  else
  {
    *(v4 + 56) = a1;
    v5 = sub_25803E6EC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25803E6EC()
{
  (*(v0 + 24))(*(v0 + 56), 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25803E764()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v1;
  v2(0, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25803E80C(uint64_t a1, int a2, void *aBlock, void (*a4)(uint64_t, void *))
{
  v5 = _Block_copy(aBlock);
  _Block_copy(v5);

  a4(v6, v5);
  _Block_release(v5);
  _Block_release(v5);
}

void sub_25803E880(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AB0, &qword_25804E958);
    v5 = sub_25804A0D0();
  }

  if (a2)
  {
    v6 = sub_2580499A0();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_25803E938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_25803E95C, 0, 0);
}

uint64_t sub_25803E95C()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_25803E9F4;

  return ManagedAppsServer.eraseDatabase()();
}

uint64_t sub_25803E9F4()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_25803EB70;
  }

  else
  {
    v2 = sub_25803EB08;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25803EB08()
{
  (*(v0 + 24))(0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25803EB70()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v1;
  v2(v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25803EC38(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25803ED30;

  return v6(a1);
}

uint64_t sub_25803ED30()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25803EE28(uint64_t a1, void (**a2)(void, void, void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AF8, &qword_25804FCD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = sub_25804A270();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v8;
    v10[5] = a1;
    v10[6] = sub_258043368;
    v10[7] = v7;
    _Block_copy(a2);
    v11 = v8;

    sub_258038E50(0, 0, v6, &unk_25804F8D8, v10);
  }

  else
  {
    _Block_copy(a2);
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v13 = sub_258049D30();
    __swift_project_value_buffer(v13, qword_27F919E48);
    v14 = sub_258049D10();
    v15 = sub_25804A2D0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_257FD4000, v14, v15, "getConfigDetailsData called by invalid client", v16, 2u);
      MEMORY[0x259C77210](v16, -1, -1);
    }

    v17 = sub_258049C50();
    sub_258042A24();
    v18 = swift_allocError();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D25AA0], v17);
    v20 = sub_2580499A0();
    (a2)[2](a2, 0, v20);
  }
}

uint64_t sub_25803F118(uint64_t a1, void (**a2)(void, void, void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AF8, &qword_25804FCD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = sub_25804A270();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v8;
    v10[5] = a1;
    v10[6] = sub_258043370;
    v10[7] = v7;
    _Block_copy(a2);
    v11 = v8;

    sub_258038E50(0, 0, v6, &unk_25804F8C8, v10);
  }

  else
  {
    _Block_copy(a2);
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v13 = sub_258049D30();
    __swift_project_value_buffer(v13, qword_27F919E48);
    v14 = sub_258049D10();
    v15 = sub_25804A2D0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_257FD4000, v14, v15, "getPasswordIdentifiers called by invalid client", v16, 2u);
      MEMORY[0x259C77210](v16, -1, -1);
    }

    v17 = sub_258049C50();
    sub_258042A24();
    v18 = swift_allocError();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D25AA0], v17);
    v20 = sub_2580499A0();
    (a2)[2](a2, 0, v20);
  }
}

uint64_t sub_25803F408(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AF8, &qword_25804FCD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  v12 = *(a3 + 40);
  if (v12)
  {
    v13 = sub_25804A270();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v12;
    v14[5] = a3;
    v14[6] = a1;
    v14[7] = a2;
    v14[8] = sub_258042F60;
    v14[9] = v11;
    _Block_copy(a4);
    v15 = v12;

    sub_258038E50(0, 0, v10, &unk_25804F8B8, v14);
  }

  else
  {
    _Block_copy(a4);
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v17 = sub_258049D30();
    __swift_project_value_buffer(v17, qword_27F919E48);
    v18 = sub_258049D10();
    v19 = sub_25804A2D0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_257FD4000, v18, v19, "getPassword called by invalid client", v20, 2u);
      MEMORY[0x259C77210](v20, -1, -1);
    }

    v21 = sub_258049C50();
    sub_258042A24();
    v22 = swift_allocError();
    (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D25AA0], v21);
    v24 = sub_2580499A0();
    (a4)[2](a4, 0, v24);
  }
}

uint64_t sub_25803F718(uint64_t a1, void (**a2)(void, void, void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AF8, &qword_25804FCD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = sub_25804A270();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v8;
    v10[5] = a1;
    v10[6] = sub_258043370;
    v10[7] = v7;
    _Block_copy(a2);
    v11 = v8;

    sub_258038E50(0, 0, v6, &unk_25804F8A8, v10);
  }

  else
  {
    _Block_copy(a2);
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v13 = sub_258049D30();
    __swift_project_value_buffer(v13, qword_27F919E48);
    v14 = sub_258049D10();
    v15 = sub_25804A2D0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_257FD4000, v14, v15, "getCertificateIdentifiers called by invalid client", v16, 2u);
      MEMORY[0x259C77210](v16, -1, -1);
    }

    v17 = sub_258049C50();
    sub_258042A24();
    v18 = swift_allocError();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D25AA0], v17);
    v20 = sub_2580499A0();
    (a2)[2](a2, 0, v20);
  }
}

uint64_t sub_25803FA08(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AF8, &qword_25804FCD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  v12 = *(a3 + 40);
  if (v12)
  {
    v13 = sub_25804A270();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v12;
    v14[5] = a3;
    v14[6] = a1;
    v14[7] = a2;
    v14[8] = sub_258042D98;
    v14[9] = v11;
    _Block_copy(a4);
    v15 = v12;

    sub_258038E50(0, 0, v10, &unk_25804F898, v14);
  }

  else
  {
    _Block_copy(a4);
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v17 = sub_258049D30();
    __swift_project_value_buffer(v17, qword_27F919E48);
    v18 = sub_258049D10();
    v19 = sub_25804A2D0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_257FD4000, v18, v19, "getCertificate called by invalid client", v20, 2u);
      MEMORY[0x259C77210](v20, -1, -1);
    }

    v21 = sub_258049C50();
    sub_258042A24();
    v22 = swift_allocError();
    (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D25AA0], v21);
    v24 = sub_2580499A0();
    (a4)[2](a4, 0, v24);
  }
}

uint64_t sub_25803FD18(uint64_t a1, void (**a2)(void, void, void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AF8, &qword_25804FCD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = sub_25804A270();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v8;
    v10[5] = a1;
    v10[6] = sub_258042CB8;
    v10[7] = v7;
    _Block_copy(a2);
    v11 = v8;

    sub_258038E50(0, 0, v6, &unk_25804F888, v10);
  }

  else
  {
    _Block_copy(a2);
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v13 = sub_258049D30();
    __swift_project_value_buffer(v13, qword_27F919E48);
    v14 = sub_258049D10();
    v15 = sub_25804A2D0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_257FD4000, v14, v15, "getIdentityIdentifiers called by invalid client", v16, 2u);
      MEMORY[0x259C77210](v16, -1, -1);
    }

    v17 = sub_258049C50();
    sub_258042A24();
    v18 = swift_allocError();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D25AA0], v17);
    v20 = sub_2580499A0();
    (a2)[2](a2, 0, v20);
  }
}

uint64_t sub_258040008(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AF8, &qword_25804FCD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  v12 = *(a3 + 40);
  if (v12)
  {
    v13 = sub_25804A270();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v12;
    v14[5] = a3;
    v14[6] = a1;
    v14[7] = a2;
    v14[8] = sub_25804336C;
    v14[9] = v11;
    _Block_copy(a4);
    v15 = v12;

    sub_258038E50(0, 0, v10, &unk_25804F878, v14);
  }

  else
  {
    _Block_copy(a4);
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v17 = sub_258049D30();
    __swift_project_value_buffer(v17, qword_27F919E48);
    v18 = sub_258049D10();
    v19 = sub_25804A2D0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_257FD4000, v18, v19, "getIdentity called by invalid client", v20, 2u);
      MEMORY[0x259C77210](v20, -1, -1);
    }

    v21 = sub_258049C50();
    sub_258042A24();
    v22 = swift_allocError();
    (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D25AA0], v21);
    v24 = sub_2580499A0();
    (a4)[2](a4, 0, v24);
  }
}

uint64_t sub_258040318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AF8, &qword_25804FCD0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v23 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a5;
  v14 = *(a4 + 40);
  if (v14)
  {
    v15 = sub_25804A270();
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v14;
    v16[5] = a4;
    v16[6] = a1;
    v16[7] = a2;
    v16[8] = a3;
    v16[9] = sub_258043384;
    v16[10] = v13;
    _Block_copy(a5);

    v17 = v14;

    sub_258038E50(0, 0, v12, &unk_25804F868, v16);
  }

  else
  {
    v19 = sub_258049C50();
    sub_258042A24();
    v20 = swift_allocError();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D25AA0], v19);
    _Block_copy(a5);
    v22 = sub_2580499A0();
    (a5)[2](a5, v22);
  }
}

void sub_258040584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *))
{
  v8 = sub_258049D00();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 40);
  if (v12)
  {
    sub_2580432A4(0, &qword_27F915C98, 0x277D03550);
    v13 = v12;
    sub_25804A2F0();
    v18 = v13;
    sub_258049CC0();
    v19 = sub_258049CD0();
    a4(a3, v19);

    v20 = sub_25804A100();
    (*(a2 + 16))(a2, v20, 0);

    (*(v9 + 8))(v11, v8);
  }

  else
  {
    v14 = sub_258049C50();
    sub_258042A24();
    v15 = swift_allocError();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D25AA0], v14);
    v17 = sub_2580499A0();
    (*(a2 + 16))(a2, 0, v17);
  }
}

uint64_t sub_258040840(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void (**a7)(void, void))
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AF8, &qword_25804FCD0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v29 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a7;
  if (*(a6 + 32) == 1)
  {
    v18 = sub_25804A270();
    (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = a6;
    v19[5] = a1;
    v19[6] = a2;
    v19[7] = a3;
    v19[8] = a4;
    v19[9] = a5;
    v19[10] = sub_258043384;
    v19[11] = v17;
    _Block_copy(a7);

    v20 = a3;
    sub_258038E50(0, 0, v16, &unk_25804F858, v19);
  }

  else
  {
    _Block_copy(a7);
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v22 = sub_258049D30();
    __swift_project_value_buffer(v22, qword_27F919E48);
    v23 = sub_258049D10();
    v24 = sub_25804A2D0();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_257FD4000, v23, v24, "Client doesn't have app config entitlement", v25, 2u);
      MEMORY[0x259C77210](v25, -1, -1);
    }

    sub_258036E5C();
    v26 = swift_allocError();
    *v27 = 0xD000000000000037;
    *(v27 + 8) = 0x8000000258051980;
    *(v27 + 16) = 0;
    v28 = sub_2580499A0();
    (a7)[2](a7, v28);
  }
}

uint64_t sub_258040B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (**a6)(void, void))
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AF8, &qword_25804FCD0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v26 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a6;
  if (*(a5 + 32) == 1)
  {
    v16 = sub_25804A270();
    (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = a5;
    v17[5] = a1;
    v17[6] = a2;
    v17[7] = a3;
    v17[8] = a4;
    v17[9] = sub_258043384;
    v17[10] = v15;
    _Block_copy(a6);

    sub_258038E50(0, 0, v14, &unk_25804F838, v17);
  }

  else
  {
    _Block_copy(a6);
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v19 = sub_258049D30();
    __swift_project_value_buffer(v19, qword_27F919E48);
    v20 = sub_258049D10();
    v21 = sub_25804A2D0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_257FD4000, v20, v21, "Client doesn't have app config entitlement", v22, 2u);
      MEMORY[0x259C77210](v22, -1, -1);
    }

    sub_258036E5C();
    v23 = swift_allocError();
    *v24 = 0xD000000000000037;
    *(v24 + 8) = 0x8000000258051980;
    *(v24 + 16) = 0;
    v25 = sub_2580499A0();
    (a6)[2](a6, v25);
  }
}

uint64_t sub_258040E50(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (**a6)(void, void))
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AF8, &qword_25804FCD0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a6;
  if (*(a5 + 32) == 1)
  {
    v16 = sub_25804A270();
    (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = a5;
    v17[5] = a1;
    v17[6] = a2;
    v17[7] = a3;
    v17[8] = a4;
    v17[9] = sub_258043384;
    v17[10] = v15;
    _Block_copy(a6);

    v18 = a3;

    sub_258038E50(0, 0, v14, &unk_25804F828, v17);
  }

  else
  {
    _Block_copy(a6);
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v20 = sub_258049D30();
    __swift_project_value_buffer(v20, qword_27F919E48);
    v21 = sub_258049D10();
    v22 = sub_25804A2D0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_257FD4000, v21, v22, "Client doesn't have app config entitlement", v23, 2u);
      MEMORY[0x259C77210](v23, -1, -1);
    }

    sub_258036E5C();
    v24 = swift_allocError();
    *v25 = 0xD000000000000037;
    *(v25 + 8) = 0x8000000258051980;
    *(v25 + 16) = 0;
    v26 = sub_2580499A0();
    (a6)[2](a6, v26);
  }
}

uint64_t sub_258041158(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AF8, &qword_25804FCD0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v28 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  if (*(a3 + 32) == 1)
  {
    v18 = sub_25804A270();
    (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = a3;
    v19[5] = a1;
    v19[6] = a2;
    v19[7] = a7;
    v19[8] = v17;
    _Block_copy(a4);

    sub_258038E50(0, 0, v16, a8, v19);
  }

  else
  {
    _Block_copy(a4);
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v21 = sub_258049D30();
    __swift_project_value_buffer(v21, qword_27F919E48);
    v22 = sub_258049D10();
    v23 = sub_25804A2D0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_257FD4000, v22, v23, "Client doesn't have app config entitlement", v24, 2u);
      MEMORY[0x259C77210](v24, -1, -1);
    }

    sub_258036E5C();
    v25 = swift_allocError();
    *v26 = 0xD000000000000037;
    *(v26 + 8) = 0x8000000258051980;
    *(v26 + 16) = 0;
    v27 = sub_2580499A0();
    (a4)[2](a4, v27);
  }
}

uint64_t sub_258041430(uint64_t a1, void (**a2)(void, void, void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AF8, &qword_25804FCD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  if (*(a1 + 32) == 1)
  {
    v8 = sub_25804A270();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = a1;
    v9[5] = sub_258042134;
    v9[6] = v7;
    _Block_copy(a2);

    sub_258038E50(0, 0, v6, &unk_25804F7E8, v9);
  }

  else
  {
    _Block_copy(a2);
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v11 = sub_258049D30();
    __swift_project_value_buffer(v11, qword_27F919E48);
    v12 = sub_258049D10();
    v13 = sub_25804A2D0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_257FD4000, v12, v13, "Client doesn't have app config entitlement", v14, 2u);
      MEMORY[0x259C77210](v14, -1, -1);
    }

    sub_258036E5C();
    v15 = swift_allocError();
    *v16 = 0xD000000000000037;
    *(v16 + 8) = 0x8000000258051980;
    *(v16 + 16) = 0;
    v17 = sub_2580499A0();
    (a2)[2](a2, 0, v17);
  }
}

uint64_t sub_2580416F8(uint64_t a1, void (**a2)(void, void, void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AF8, &qword_25804FCD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  if (*(a1 + 33) == 1)
  {
    v8 = sub_25804A270();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = a1;
    v9[5] = sub_258041F9C;
    v9[6] = v7;
    _Block_copy(a2);

    sub_258038E50(0, 0, v6, &unk_25804F7C0, v9);
  }

  else
  {
    _Block_copy(a2);
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v11 = sub_258049D30();
    __swift_project_value_buffer(v11, qword_27F919E48);
    v12 = sub_258049D10();
    v13 = sub_25804A2D0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_257FD4000, v12, v13, "Client doesn't have internal entitlement", v14, 2u);
      MEMORY[0x259C77210](v14, -1, -1);
    }

    sub_258036E5C();
    v15 = swift_allocError();
    *v16 = 0xD000000000000036;
    *(v16 + 8) = 0x8000000258051940;
    *(v16 + 16) = 0;
    v17 = sub_2580499A0();
    (a2)[2](a2, 0, v17);
  }
}

uint64_t sub_2580419C0(uint64_t a1, void (**a2)(void, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AF8, &qword_25804FCD0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  if (*(a1 + 33) == 1)
  {
    v14 = sub_25804A270();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = a1;
    v15[5] = a5;
    v15[6] = v13;
    _Block_copy(a2);

    sub_258038E50(0, 0, v12, a6, v15);
  }

  else
  {
    _Block_copy(a2);
    if (qword_27F915188 != -1)
    {
      swift_once();
    }

    v17 = sub_258049D30();
    __swift_project_value_buffer(v17, qword_27F919E48);
    v18 = sub_258049D10();
    v19 = sub_25804A2D0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_257FD4000, v18, v19, "Client doesn't have internal entitlement", v20, 2u);
      MEMORY[0x259C77210](v20, -1, -1);
    }

    sub_258036E5C();
    v21 = swift_allocError();
    *v22 = 0xD000000000000036;
    *(v22 + 8) = 0x8000000258051940;
    *(v22 + 16) = 0;
    v23 = sub_2580499A0();
    (a2)[2](a2, v23);
  }
}

uint64_t sub_258041C78()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_258041CBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_257FDAFFC;

  return sub_25803E938(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_258041D84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AF8, &qword_25804FCD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258041DF4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_258041E2C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_257FDAFFC;

  return sub_25803EC38(a1, v4);
}

uint64_t sub_258041EE4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_257FD8590;

  return sub_25803EC38(a1, v4);
}

uint64_t sub_258041FA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_257FDAFFC;

  return sub_25803E508(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_25804206C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_257FDAFFC;

  return sub_25803E18C(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_12Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_258042198(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_257FDAFFC;

  return sub_25803DE08(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_258042260(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_257FDAFFC;

  return sub_25803DD04(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_25804233C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_257FDAFFC;

  return sub_25803DC00(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_258042418(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_257FDAFFC;

  return sub_25803D9E8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2580424F4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_258042554(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_257FDAFFC;

  return sub_25803D710(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_258042648()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2580426A0(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_257FDAFFC;

  return sub_25803D36C(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t objectdestroy_56Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2580427E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_257FDAFFC;

  return sub_25803CF98(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2580428C4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_258042924(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_257FDAFFC;

  return sub_25803CBC0(a1, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_258042A24()
{
  result = qword_27F915C90;
  if (!qword_27F915C90)
  {
    sub_258049C50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915C90);
  }

  return result;
}

uint64_t sub_258042A7C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_258042AD4(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_257FDAFFC;

  return sub_25803C4D8(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_258042BCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_257FD8590;

  return sub_25803BFA0(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_258042CC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_257FDAFFC;

  return sub_25803B9B4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_258042DA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_257FDAFFC;

  return sub_25803B38C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_258042E8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_257FDAFFC;

  return sub_25803AE7C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroy_127Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_258042FC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_257FDAFFC;

  return sub_25803A8B0(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2580430AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_257FDAFFC;

  return sub_25803A308(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroy_135Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2580431D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_257FDAFFC;

  return sub_258039C84(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_2580432A4(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

double ManagedAppsServiceProvider.__allocating_init(scope:server:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  result = 0.0;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = a2;
  *(v4 + 56) = a1;
  return result;
}

uint64_t ManagedAppsServiceProvider.init(scope:server:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = a2;
  *(v2 + 56) = a1;
  return v2;
}

void sub_2580433E4()
{
  v1 = v0;
  v2 = v0[7];
  v3 = sub_258049B20();
  v4 = sub_258049B20();
  sub_258049B00();
  if (v3 == v4)
  {
    sub_258049AF0();
  }

  else
  {
    sub_258049AE0();
  }

  v5 = sub_258049B20();
  if (v5 == sub_258049B20())
  {
    sub_258049AD0();
  }

  else
  {
    sub_258049AC0();
  }

  v6 = v0[6];
  v7 = type metadata accessor for ManagedAppsServiceDelegate();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC15ManagedAppsCore26ManagedAppsServiceDelegate_scope] = v2;
  *&v8[OBJC_IVAR____TtC15ManagedAppsCore26ManagedAppsServiceDelegate_server] = v6;
  v8[OBJC_IVAR____TtC15ManagedAppsCore26ManagedAppsServiceDelegate_serviceType] = 0;
  v23.receiver = v8;
  v23.super_class = v7;

  v9 = objc_msgSendSuper2(&v23, sel_init);
  v10 = objc_allocWithZone(MEMORY[0x277CCAE98]);
  v11 = sub_25804A100();

  v12 = [v10 initWithMachServiceName_];

  [v12 setDelegate_];
  [v12 resume];
  v13 = objc_allocWithZone(v7);
  *&v13[OBJC_IVAR____TtC15ManagedAppsCore26ManagedAppsServiceDelegate_scope] = v2;
  *&v13[OBJC_IVAR____TtC15ManagedAppsCore26ManagedAppsServiceDelegate_server] = v6;
  v13[OBJC_IVAR____TtC15ManagedAppsCore26ManagedAppsServiceDelegate_serviceType] = 1;
  v22.receiver = v13;
  v22.super_class = v7;

  v14 = objc_msgSendSuper2(&v22, sel_init);
  v15 = objc_allocWithZone(MEMORY[0x277CCAE98]);
  v16 = sub_25804A100();

  v17 = [v15 initWithMachServiceName_];

  [v17 setDelegate_];
  [v17 resume];
  v18 = v1[2];
  v1[2] = v12;

  v19 = v1[3];
  v1[3] = v9;

  v20 = v1[4];
  v1[4] = v17;

  v21 = v1[5];
  v1[5] = v14;
}

uint64_t ManagedAppsServiceProvider.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_258043768()
{
  v1 = v0;
  if (qword_27F915178 != -1)
  {
LABEL_16:
    swift_once();
  }

  v2 = sub_258049D30();
  __swift_project_value_buffer(v2, qword_27F919E18);

  v3 = sub_258049D10();
  v4 = sub_25804A2C0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v28[0] = v6;
    *v5 = 136315138;
    swift_beginAccess();

    v7 = sub_25804A290();
    v9 = v8;

    v10 = sub_258032C5C(v7, v9, v28);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_257FD4000, v3, v4, "Sending notifications: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x259C77210](v6, -1, -1);
    MEMORY[0x259C77210](v5, -1, -1);
  }

  swift_beginAccess();
  v11 = *(v1 + 56);
  v25 = v1;
  sub_257FDA854(v1 + 16, v28);
  v12 = v11 + 56;
  v13 = 1 << *(v11 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v11 + 56);
  v1 = (v13 + 63) >> 6;
  v26 = v11;
  swift_bridgeObjectRetain_n();
  v16 = 0;
  if (v15)
  {
    while (1)
    {
      v17 = v16;
LABEL_12:
      v18 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v19 = (*(v26 + 48) + ((v17 << 10) | (16 * v18)));
      v20 = *v19;
      v21 = v19[1];
      v23 = v29;
      v22 = v30;
      __swift_project_boxed_opaque_existential_1(v28, v29);
      v27 = *(v22 + 8);

      v27(v20, v21, v23, v22);

      if (!v15)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v17 >= v1)
    {
      break;
    }

    v15 = *(v12 + 8 * v17);
    ++v16;
    if (v15)
    {
      v16 = v17;
      goto LABEL_12;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v28);

  *(v25 + 56) = MEMORY[0x277D84FA0];
}

uint64_t sub_258043A60()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_258043AC4(char a1, void *a2)
{
  sub_25804A3B0();
  v4 = [a2 codeSigningID];
  v5 = sub_25804A110();

  MEMORY[0x259C76670](95, 0xE100000000000000);
  v6 = [a2 teamID];
  v7 = sub_25804A110();
  v9 = v8;

  MEMORY[0x259C76670](v7, v9);

  MEMORY[0x259C76670](95, 0xE100000000000000);
  if (a1)
  {
    if (a1 == 1)
    {
      v10 = 0x65446769666E6F63;
    }

    else
    {
      v10 = 0x704179636167656CLL;
    }

    if (a1 == 1)
    {
      v11 = 0xED0000736C696174;
    }

    else
    {
      v11 = 0xEF6769666E6F4370;
    }
  }

  else
  {
    v11 = 0xE700000000000000;
    v10 = 0x6E776F6E6B6E75;
  }

  MEMORY[0x259C76670](v10, v11);

  MEMORY[0x259C76670](0x6465676E6168635FLL, 0xE800000000000000);
  return v5;
}

uint64_t sub_258043C54(unsigned __int8 a1, void *a2)
{
  sub_25804A3B0();
  v4 = [a2 codeSigningID];
  v5 = sub_25804A110();

  MEMORY[0x259C76670](95, 0xE100000000000000);
  v6 = [a2 teamID];
  v7 = sub_25804A110();
  v9 = v8;

  MEMORY[0x259C76670](v7, v9);

  MEMORY[0x259C76670](95, 0xE100000000000000);
  v10 = 0xE700000000000000;
  v11 = 0x6E776F6E6B6E75;
  v12 = 0xEB00000000657461;
  v13 = 0x6369666974726563;
  if (a1 != 2)
  {
    v13 = 0x797469746E656469;
    v12 = 0xE800000000000000;
  }

  if (a1)
  {
    v11 = 0x64726F7773736170;
    v10 = 0xE800000000000000;
  }

  if (a1 <= 1u)
  {
    v14 = v11;
  }

  else
  {
    v14 = v13;
  }

  if (a1 <= 1u)
  {
    v15 = v10;
  }

  else
  {
    v15 = v12;
  }

  MEMORY[0x259C76670](v14, v15);

  MEMORY[0x259C76670](0x6465676E6168635FLL, 0xE800000000000000);
  return v5;
}

uint64_t sub_258043E14(uint64_t a1, unint64_t a2)
{
  if (qword_27F915178 != -1)
  {
    swift_once();
  }

  v4 = sub_258049D30();
  __swift_project_value_buffer(v4, qword_27F919E18);

  v5 = sub_258049D10();
  v6 = sub_25804A2C0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_258032C5C(a1, a2, &v11);
    _os_log_impl(&dword_257FD4000, v5, v6, "Posting Darwin notification: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x259C77210](v8, -1, -1);
    MEMORY[0x259C77210](v7, -1, -1);
  }

  v9 = sub_25804A130();
  notify_post((v9 + 32));
}

void sub_258043F88(uint64_t a1, unint64_t a2)
{
  if (qword_27F915178 != -1)
  {
    swift_once();
  }

  v4 = sub_258049D30();
  __swift_project_value_buffer(v4, qword_27F919E18);

  v5 = sub_258049D10();
  v6 = sub_25804A2C0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_258032C5C(a1, a2, &v11);
    _os_log_impl(&dword_257FD4000, v5, v6, "Posting DistributedNotificationCenter notification: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x259C77210](v8, -1, -1);
    MEMORY[0x259C77210](v7, -1, -1);
  }

  v9 = sub_25804A100();
  v10 = [objc_opt_self() defaultCenter];
  [v10 postNotificationName:v9 object:0];
}

uint64_t sub_258044130(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915540, &qword_25804BBB0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v19[-v7];
  v9 = [a1 codeSigningID];
  v10 = sub_25804A110();
  v12 = v11;

  v24 = v10;
  v25 = v12;
  v26 = type metadata accessor for AppRecord(0);
  sub_258049A70();

  v13 = [a1 teamID];
  v14 = sub_25804A110();
  v16 = v15;

  v22 = v14;
  v23 = v16;
  sub_258049A70();

  v20 = v8;
  v21 = v6;
  sub_258049A70();
  v17 = *(v3 + 8);
  v17(v6, v2);
  return (v17)(v8, v2);
}

uint64_t sub_258044380@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v29 = a4;
  v32 = a2;
  v33 = a3;
  v34 = a5;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915CB8, &qword_25804F9D0);
  v6 = *(v5 - 8);
  v35 = v5;
  v36 = v6;
  MEMORY[0x28223BE20](v5);
  v28 = &v27 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915548, &qword_25804BBB8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915CC0, &qword_25804F9D8);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915CC8, &qword_25804F9E0);
  v17 = *(v16 - 8);
  v30 = v16;
  v31 = v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v27 - v18;
  sub_257FECB0C(&qword_27F915558, &qword_27F915548, &qword_25804BBB8, MEMORY[0x277CC90F8]);
  sub_258049990();
  swift_getKeyPath();
  sub_258049930();

  (*(v9 + 8))(v11, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915CD0, &qword_25804FA10);
  type metadata accessor for AppCodeIdentityRecord(0);
  v20 = MEMORY[0x277CC90C0];
  sub_257FECB0C(&qword_27F915CD8, &qword_27F915CC0, &qword_25804F9D8, MEMORY[0x277CC90C0]);
  sub_257FECB0C(&qword_27F915CE0, &qword_27F915CD0, &qword_25804FA10, v20);
  sub_258049940();
  (*(v13 + 8))(v15, v12);
  v37 = v32;
  v38 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915528, &qword_25804BFA0);
  v21 = v28;
  sub_258049980();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915CE8, &qword_25804FA18);
  v23 = v34;
  v34[3] = v22;
  v23[4] = sub_258044A1C();
  __swift_allocate_boxed_opaque_existential_1(v23);
  sub_257FECB0C(&qword_27F915D18, &qword_27F915CC8, &qword_25804F9E0, MEMORY[0x277CC8F70]);
  sub_257FECB0C(&qword_27F915D20, &qword_27F915CB8, &qword_25804F9D0, MEMORY[0x277CC9080]);
  sub_258012034(&qword_27F915D28, MEMORY[0x277D837F8], MEMORY[0x277D84F50]);
  v24 = v30;
  v25 = v35;
  sub_258049920();
  (*(v36 + 8))(v21, v25);
  return (*(v31 + 8))(v19, v24);
}

uint64_t sub_2580448BC(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9154C8, &qword_25804BAF8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  sub_257FECB0C(&qword_27F9154D8, &qword_27F9154C8, &qword_25804BAF8, MEMORY[0x277CC90F8]);
  sub_258049990();
  swift_getKeyPath();
  sub_258049930();

  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_258044A1C()
{
  result = qword_27F915CF0;
  if (!qword_27F915CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F915CE8, &qword_25804FA18);
    sub_258044AA8();
    sub_258044C94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915CF0);
  }

  return result;
}

unint64_t sub_258044AA8()
{
  result = qword_27F915CF8;
  if (!qword_27F915CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F915CC8, &qword_25804F9E0);
    sub_258044B34();
    sub_258044BE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915CF8);
  }

  return result;
}

unint64_t sub_258044B34()
{
  result = qword_27F915D00;
  if (!qword_27F915D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F915CC0, &qword_25804F9D8);
    sub_257FECB0C(&qword_27F915578, &qword_27F915548, &qword_25804BBB8, MEMORY[0x277CC90F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915D00);
  }

  return result;
}

unint64_t sub_258044BE4()
{
  result = qword_27F915D08;
  if (!qword_27F915D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F915CD0, &qword_25804FA10);
    sub_257FECB0C(&qword_27F9154F8, &qword_27F9154C8, &qword_25804BAF8, MEMORY[0x277CC90F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915D08);
  }

  return result;
}

unint64_t sub_258044C94()
{
  result = qword_27F915D10;
  if (!qword_27F915D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F915CB8, &qword_25804F9D0);
    sub_258012034(&qword_27F915520, MEMORY[0x277D83808], MEMORY[0x277D84F58]);
    sub_258012034(&qword_27F9159E0, MEMORY[0x277D837D8], MEMORY[0x277D84F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915D10);
  }

  return result;
}

uint64_t sub_258044D78(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915428, &qword_25804BA88);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v19[-v7];
  v9 = [a1 codeSigningID];
  v10 = sub_25804A110();
  v12 = v11;

  v24 = v10;
  v25 = v12;
  v26 = type metadata accessor for ExtensionCodeIdentityRecord(0);
  sub_258049A70();

  v13 = [a1 teamID];
  v14 = sub_25804A110();
  v16 = v15;

  v22 = v14;
  v23 = v16;
  sub_258049A70();

  v20 = v8;
  v21 = v6;
  sub_258049A70();
  v17 = *(v3 + 8);
  v17(v6, v2);
  return (v17)(v8, v2);
}

uint64_t sub_258044FB0@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v21 = a4;
  v22 = a2;
  v23 = a3;
  v24 = a5;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915340, &qword_25804B890);
  v6 = *(v5 - 8);
  v25 = v5;
  v26 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915440, &qword_25804BA98);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915D80, &qword_25804FA88);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v21 - v15;
  sub_257FECB0C(&qword_27F915450, &qword_27F915440, &qword_25804BA98, MEMORY[0x277CC90F8]);
  sub_258049990();
  swift_getKeyPath();
  sub_258049930();

  (*(v10 + 8))(v12, v9);
  v27 = v22;
  v28 = v23;
  sub_258049980();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915D88, &qword_25804FAB8);
  v18 = v24;
  v24[3] = v17;
  v18[4] = sub_258045DCC();
  __swift_allocate_boxed_opaque_existential_1(v18);
  sub_257FECB0C(&qword_27F915DA0, &qword_27F915D80, &qword_25804FA88, MEMORY[0x277CC90C0]);
  sub_257FECB0C(&qword_27F915370, &qword_27F915340, &qword_25804B890, MEMORY[0x277CC9080]);
  v19 = v25;
  sub_258049920();
  (*(v26 + 8))(v8, v19);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_258045340@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v31 = a3;
  v34 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915548, &qword_25804BBB8);
  v30 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915DA8, &qword_25804FAE8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915DB0, &qword_25804FAF0);
  v13 = *(v12 - 8);
  v32 = v12;
  v33 = v13;
  v14 = MEMORY[0x28223BE20](v12);
  v29 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v27[2] = *a1;
  v28 = v27 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915540, &qword_25804BBB0);
  sub_258049980();
  v17 = sub_257FECB0C(&qword_27F915558, &qword_27F915548, &qword_25804BBB8, MEMORY[0x277CC90F8]);
  sub_258049990();
  v37 = v5;
  v38 = v7;
  sub_257FECB0C(&qword_27F915DB8, &qword_27F915DA8, &qword_25804FAE8, MEMORY[0x277CC9080]);
  v36 = v17;
  sub_258049950();
  v18 = *(v9 + 8);
  v27[1] = v9 + 8;
  v18(v11, v8);
  v19 = *(v30 + 8);
  v19(v7, v5);
  sub_258049980();
  sub_258049990();
  v35 = v7;
  v20 = v29;
  sub_258049950();
  v18(v11, v8);
  v19(v7, v5);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915DC0, &qword_25804FAF8);
  v22 = v34;
  v34[3] = v21;
  v22[4] = sub_258045F10(&qword_27F915DC8, &qword_27F915DC0, &qword_25804FAF8, sub_258045F8C);
  __swift_allocate_boxed_opaque_existential_1(v22);
  sub_257FECB0C(&qword_27F915DF0, &qword_27F915DB0, &qword_25804FAF0, MEMORY[0x277CC8E98]);
  v23 = v28;
  v24 = v32;
  sub_258049970();
  v25 = *(v33 + 8);
  v25(v20, v24);
  return (v25)(v23, v24);
}

uint64_t sub_2580457A8@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v31 = a3;
  v34 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915440, &qword_25804BA98);
  v30 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915D30, &qword_25804FA70);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915D38, &qword_25804FA78);
  v13 = *(v12 - 8);
  v32 = v12;
  v33 = v13;
  v14 = MEMORY[0x28223BE20](v12);
  v29 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v27[2] = *a1;
  v28 = v27 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915428, &qword_25804BA88);
  sub_258049980();
  v17 = sub_257FECB0C(&qword_27F915450, &qword_27F915440, &qword_25804BA98, MEMORY[0x277CC90F8]);
  sub_258049990();
  v37 = v5;
  v38 = v7;
  sub_257FECB0C(&qword_27F915D40, &qword_27F915D30, &qword_25804FA70, MEMORY[0x277CC9080]);
  v36 = v17;
  sub_258049950();
  v18 = *(v9 + 8);
  v27[1] = v9 + 8;
  v18(v11, v8);
  v19 = *(v30 + 8);
  v19(v7, v5);
  sub_258049980();
  sub_258049990();
  v35 = v7;
  v20 = v29;
  sub_258049950();
  v18(v11, v8);
  v19(v7, v5);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915D48, &qword_25804FA80);
  v22 = v34;
  v34[3] = v21;
  v22[4] = sub_258045F10(&qword_27F915D50, &qword_27F915D48, &qword_25804FA80, sub_258045C18);
  __swift_allocate_boxed_opaque_existential_1(v22);
  sub_257FECB0C(&qword_27F915D78, &qword_27F915D38, &qword_25804FA78, MEMORY[0x277CC8E98]);
  v23 = v28;
  v24 = v32;
  sub_258049970();
  v25 = *(v33 + 8);
  v25(v20, v24);
  return (v25)(v23, v24);
}

unint64_t sub_258045C18()
{
  result = qword_27F915D58;
  if (!qword_27F915D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F915D38, &qword_25804FA78);
    sub_258045CD8();
    sub_257FECB0C(&qword_27F915470, &qword_27F915440, &qword_25804BA98, MEMORY[0x277CC90F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915D58);
  }

  return result;
}

unint64_t sub_258045CD8()
{
  result = qword_27F915D60;
  if (!qword_27F915D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F915D30, &qword_25804FA70);
    sub_257FECB0C(&qword_27F915D68, &qword_27F915428, &qword_25804BA88, MEMORY[0x277CC9B50]);
    sub_257FECB0C(&qword_27F915D70, &qword_27F915428, &qword_25804BA88, MEMORY[0x277CC9B48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915D60);
  }

  return result;
}

unint64_t sub_258045DCC()
{
  result = qword_27F915D90;
  if (!qword_27F915D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F915D88, &qword_25804FAB8);
    sub_258045E58();
    sub_257FEB3A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915D90);
  }

  return result;
}

unint64_t sub_258045E58()
{
  result = qword_27F915D98;
  if (!qword_27F915D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F915D80, &qword_25804FA88);
    sub_257FECB0C(&qword_27F915470, &qword_27F915440, &qword_25804BA98, MEMORY[0x277CC90F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915D98);
  }

  return result;
}

uint64_t sub_258045F10(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_258045F8C()
{
  result = qword_27F915DD0;
  if (!qword_27F915DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F915DB0, &qword_25804FAF0);
    sub_25804604C();
    sub_257FECB0C(&qword_27F915578, &qword_27F915548, &qword_25804BBB8, MEMORY[0x277CC90F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915DD0);
  }

  return result;
}

unint64_t sub_25804604C()
{
  result = qword_27F915DD8;
  if (!qword_27F915DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F915DA8, &qword_25804FAE8);
    sub_257FECB0C(&qword_27F915DE0, &qword_27F915540, &qword_25804BBB0, MEMORY[0x277CC9B50]);
    sub_257FECB0C(&qword_27F915DE8, &qword_27F915540, &qword_25804BBB0, MEMORY[0x277CC9B48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915DD8);
  }

  return result;
}

uint64_t sub_258046138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[23] = a6;
  v7[24] = v6;
  v7[21] = a4;
  v7[22] = a5;
  v7[19] = a2;
  v7[20] = a3;
  v7[18] = a1;
  v8 = sub_258049A20();
  v7[25] = v8;
  v7[26] = *(v8 - 8);
  v7[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258046204, 0, 0);
}

uint64_t sub_258046204()
{
  v30 = v0;
  if (qword_27F915160 != -1)
  {
    swift_once();
  }

  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = v0[22];
  v5 = sub_258049D30();
  __swift_project_value_buffer(v5, qword_27F919DD0);
  (*(v2 + 16))(v1, v4, v3);

  v6 = sub_258049D10();
  v7 = sub_25804A2C0();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[26];
  v9 = v0[27];
  v11 = v0[25];
  if (v8)
  {
    v27 = v0[20];
    v28 = v0[21];
    v12 = v0[18];
    v26 = v0[19];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v29 = v14;
    *v13 = 136315906;
    *(v13 + 4) = sub_258032C5C(0xD00000000000003FLL, 0x8000000258052020, &v29);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_258032C5C(v12, v26, &v29);
    *(v13 + 22) = 2080;
    *(v13 + 24) = sub_258032C5C(v27, v28, &v29);
    *(v13 + 32) = 2080;
    sub_258047CCC();
    v15 = sub_25804A550();
    v17 = v16;
    (*(v10 + 8))(v9, v11);
    v18 = sub_258032C5C(v15, v17, &v29);

    *(v13 + 34) = v18;
    _os_log_impl(&dword_257FD4000, v6, v7, "%s - resolving data asset: %s configurationIdentifier: %s to: %s", v13, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v14, -1, -1);
    MEMORY[0x259C77210](v13, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v19 = sub_258049B20();
  v0[28] = v19;
  v20 = sub_258049B20();
  v0[29] = v20;
  v21 = v19 == v20;
  v22 = swift_task_alloc();
  v0[30] = v22;
  *v22 = v0;
  v22[1] = sub_25804650C;
  v24 = v0[20];
  v23 = v0[21];

  return sub_2580474D4(v24, v23, v21);
}

uint64_t sub_25804650C(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 248) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_25804665C, 0, 0);
  }
}

uint64_t sub_25804665C()
{
  v1 = objc_opt_self();
  v2 = sub_25804A100();
  v3 = [v1 newAssetKey_];
  v0[32] = v3;

  v4 = [v3 assetIdentifier];
  if (!v4)
  {
    sub_25804A110();
    v4 = sub_25804A100();
  }

  v0[33] = v4;
  v5 = v0[31];
  v6 = v0[28] == v0[29];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = sub_25804A100();
  v0[34] = v8;
  v9 = sub_2580499E0();
  v0[35] = v9;
  v0[2] = v0;
  v0[7] = v0 + 37;
  v0[3] = sub_258046874;
  v10 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915E10, &unk_25804FBB0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_258046AC4;
  v0[13] = &block_descriptor_17;
  v0[14] = v10;
  [ObjCClassFromMetadata resolveDataAssetWithAssetIdentifier:v4 configurationIdentifier:v8 downloadURL:v9 subscriberStore:v5 scope:v6 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_258046874()
{
  v1 = *(*v0 + 48);
  *(*v0 + 288) = v1;
  if (v1)
  {
    v2 = sub_258046A20;
  }

  else
  {
    v2 = sub_258046984;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_258046984()
{
  v2 = v0[34];
  v1 = v0[35];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[31];

  v6 = v0[1];

  return v6();
}

uint64_t sub_258046A20(uint64_t a1)
{
  v2 = v1[35];
  v4 = v1[33];
  v3 = v1[34];
  v6 = v1[31];
  v5 = v1[32];
  swift_willThrow();

  v7 = v1[1];

  return v7();
}

uint64_t sub_258046AC4(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_258046B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[26] = a7;
  v8[27] = v7;
  v8[24] = a5;
  v8[25] = a6;
  v8[22] = a3;
  v8[23] = a4;
  v8[20] = a1;
  v8[21] = a2;
  return MEMORY[0x2822009F8](sub_258046BBC, 0, 0);
}

uint64_t sub_258046BBC()
{
  v20 = v0;
  if (qword_27F915160 != -1)
  {
    swift_once();
  }

  v1 = sub_258049D30();
  __swift_project_value_buffer(v1, qword_27F919DD0);

  v2 = sub_258049D10();
  v3 = sub_25804A2C0();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[24];
    v18 = v0[25];
    v5 = v0[22];
    v4 = v0[23];
    v6 = v0[20];
    v7 = v0[21];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315906;
    *(v8 + 4) = sub_258032C5C(0xD000000000000040, 0x8000000258051FB0, &v19);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_258032C5C(v6, v7, &v19);
    *(v8 + 22) = 2080;
    *(v8 + 24) = sub_258032C5C(v5, v4, &v19);
    *(v8 + 32) = 2080;
    *(v8 + 34) = sub_258032C5C(v17, v18, &v19);
    _os_log_impl(&dword_257FD4000, v2, v3, "%s - resolving credential asset: %s configurationIdentifier: %s, accessGroup: %s", v8, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v9, -1, -1);
    MEMORY[0x259C77210](v8, -1, -1);
  }

  v10 = sub_258049B20();
  v0[28] = v10;
  v11 = sub_258049B20();
  v0[29] = v11;
  v12 = v10 == v11;
  v13 = swift_task_alloc();
  v0[30] = v13;
  *v13 = v0;
  v13[1] = sub_258046E4C;
  v15 = v0[22];
  v14 = v0[23];

  return sub_2580474D4(v15, v14, v12);
}

uint64_t sub_258046E4C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 248) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_258046F80, 0, 0);
  }
}

uint64_t sub_258046F80()
{
  v1 = objc_opt_self();
  v2 = sub_25804A100();
  v3 = [v1 newAssetKey_];
  v0[32] = v3;

  v4 = [v3 assetIdentifier];
  if (!v4)
  {
    sub_25804A110();
    v4 = sub_25804A100();
  }

  v0[33] = v4;
  v5 = v0[31];
  v11 = v0[28] == v0[29];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = sub_25804A100();
  v0[34] = v7;
  v8 = sub_25804A100();
  v0[35] = v8;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2580471A4;
  v9 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915E08, &qword_25804FBA8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2580473EC;
  v0[13] = &block_descriptor_12;
  v0[14] = v9;
  [ObjCClassFromMetadata resolveKeychainAssetWithAssetIdentifier:v4 configurationIdentifier:v7 accessGroup:v8 subscriberStore:v5 scope:v11 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2580471A4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 288) = v1;
  if (v1)
  {
    v2 = sub_258047350;
  }

  else
  {
    v2 = sub_2580472B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2580472B4()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[32];
  v4 = v0[33];
  v5 = v0[31];

  v7 = v0[18];
  v6 = v0[19];

  v8 = v0[1];

  return v8(v7, v6);
}

uint64_t sub_258047350(uint64_t a1)
{
  v2 = v1[35];
  v4 = v1[33];
  v3 = v1[34];
  v6 = v1[31];
  v5 = v1[32];
  swift_willThrow();

  v7 = v1[1];

  return v7();
}

uint64_t sub_2580473EC(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    v9 = a2;
    v10 = sub_258049A60();
    v12 = v11;

    v13 = *(*(v5 + 64) + 40);
    *v13 = v10;
    v13[1] = v12;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_2580474D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[24] = a3;
  v4[25] = v3;
  v4[22] = a1;
  v4[23] = a2;
  return MEMORY[0x2822009F8](sub_2580474F8, 0, 0);
}

uint64_t sub_2580474F8()
{
  v1 = objc_opt_self();
  v2 = sub_25804A100();
  v3 = [v1 newDeclarationKey_];
  v0[26] = v3;

  if ([v3 isValid])
  {
    v4 = [v3 storeIdentifier];
    if (!v4)
    {
      sub_25804A110();
      v4 = sub_25804A100();
    }

    v0[27] = v4;
    v5 = v0[25];
    v6 = sub_25804A110();
    v8 = v7;
    v0[28] = v6;
    v0[29] = v7;
    swift_beginAccess();
    if (*(*(v5 + 16) + 16) && (, sub_2580337E4(v6, v8), v10 = v9, , (v10 & 1) != 0))
    {

      v12 = *(v0[25] + 16);
      if (*(v12 + 16))
      {
        v13 = v0[28];
        v14 = v0[29];

        v15 = sub_2580337E4(v13, v14);
        v17 = v16;

        if (v17)
        {
          v18 = v0[26];
          v19 = *(*(v12 + 56) + 8 * v15);

          v20 = v0[1];

          return v20(v19);
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }

    else
    {
      v23 = v0[24];
      v24 = objc_opt_self();
      v0[2] = v0;
      v0[7] = v0 + 21;
      v0[3] = sub_258047848;
      v25 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915E00, &unk_25804FB98);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_258047B2C;
      v0[13] = &block_descriptor;
      v0[14] = v25;
      [v24 storeWithIdentifier:v4 scope:v23 completionHandler:v0 + 10];
      v11 = (v0 + 2);
    }

    return MEMORY[0x282200938](v11);
  }

  sub_258047C60();
  swift_allocError();
  swift_willThrow();

  v22 = v0[1];

  return v22();
}

uint64_t sub_258047848()
{
  v1 = *(*v0 + 48);
  *(*v0 + 240) = v1;
  if (v1)
  {

    v2 = sub_258047AB4;
  }

  else
  {
    v2 = sub_258047960;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_258047960()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  v4 = v0[25];
  v5 = v0[21];
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v4 + 16);
  *(v4 + 16) = 0x8000000000000000;
  sub_258035054(v5, v2, v1, isUniquelyReferenced_nonNull_native);

  *(v4 + 16) = v16;
  swift_endAccess();

  v7 = *(v0[25] + 16);
  if (!*(v7 + 16))
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = v0[28];
  v9 = v0[29];

  v10 = sub_2580337E4(v8, v9);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v13 = v0[26];
  v14 = *(*(v7 + 56) + 8 * v10);

  v15 = v0[1];

  v15(v14);
}

uint64_t sub_258047AB4(uint64_t a1)
{
  v2 = v1[26];
  v3 = v1[27];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_258047B2C(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_258047C04()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

unint64_t sub_258047C60()
{
  result = qword_27F915DF8;
  if (!qword_27F915DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915DF8);
  }

  return result;
}

unint64_t sub_258047CCC()
{
  result = qword_27F915740;
  if (!qword_27F915740)
  {
    sub_258049A20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915740);
  }

  return result;
}

unint64_t sub_258047D38()
{
  result = qword_27F915E18;
  if (!qword_27F915E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F915E18);
  }

  return result;
}

uint64_t sub_258047D9C()
{
  v1 = v0;
  if (qword_27F915180 != -1)
  {
LABEL_16:
    swift_once();
  }

  v2 = sub_258049D30();
  __swift_project_value_buffer(v2, qword_27F919E30);
  v3 = sub_258049D10();
  v4 = sub_25804A2C0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_257FD4000, v3, v4, "Invalidating all SecKeyProxy objects", v5, 2u);
    MEMORY[0x259C77210](v5, -1, -1);
  }

  swift_beginAccess();
  v6 = *(v1 + 112);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_12:
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      [*(*(v6 + 56) + ((v12 << 9) | (8 * v13))) invalidate];
      if (!v9)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v6 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_12;
    }
  }

  v14 = *(v1 + 120);
  *(v1 + 120) = 0;

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_258047F78()
{
  sub_258047D9C();

  return MEMORY[0x282200960](v0);
}

id sub_258047FC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = *(v3 + 112);
  if (*(v8 + 16))
  {

    v9 = sub_2580337E4(a1, a2);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);

      return v11;
    }
  }

  if (!*(v4 + 120))
  {
    v13 = objc_allocWithZone(MEMORY[0x277D03560]);
    v14 = sub_25804A100();
    v15 = [v13 initWithReason_];

    v16 = *(v4 + 120);
    *(v4 + 120) = v15;
  }

  v17 = [objc_allocWithZone(MEMORY[0x277CDBD80]) initWithIdentity_];
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  v30 = sub_258048AB0;
  v31 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_2580484A4;
  v29 = &block_descriptor_0;
  v19 = _Block_copy(&aBlock);

  [v17 setClientConnectionHandler_];
  _Block_release(v19);
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = a2;
  v21[4] = v20;
  v30 = sub_258048B48;
  v31 = v21;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_2580484A4;
  v29 = &block_descriptor_19;
  v22 = _Block_copy(&aBlock);

  [v17 setClientDisconnectionHandler_];
  _Block_release(v22);
  swift_beginAccess();

  v23 = v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(v4 + 112);
  *(v4 + 112) = 0x8000000000000000;
  sub_258035334(v23, a1, a2, isUniquelyReferenced_nonNull_native);

  *(v4 + 112) = v25;
  swift_endAccess();
  return v23;
}

void sub_2580482DC(char a1, uint64_t a2, unint64_t a3)
{
  if (qword_27F915180 != -1)
  {
    swift_once();
  }

  v6 = sub_258049D30();
  __swift_project_value_buffer(v6, qword_27F919E30);

  oslog = sub_258049D10();
  v7 = sub_25804A2C0();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315394;
    if (a1)
    {
      v10 = 0x7473726946;
    }

    else
    {
      v10 = 0x726568746F6E41;
    }

    if (a1)
    {
      v11 = 0xE500000000000000;
    }

    else
    {
      v11 = 0xE700000000000000;
    }

    v12 = sub_258032C5C(v10, v11, &v14);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_258032C5C(a2, a3, &v14);
    _os_log_impl(&dword_257FD4000, oslog, v7, "%s client connected: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v9, -1, -1);
    MEMORY[0x259C77210](v8, -1, -1);
  }
}

uint64_t sub_2580484A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_2580484F8(int a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AF8, &qword_25804FCD0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v25[-1] - v8;
  if (qword_27F915180 != -1)
  {
    swift_once();
  }

  v10 = sub_258049D30();
  __swift_project_value_buffer(v10, qword_27F919E30);

  v11 = sub_258049D10();
  v12 = sub_25804A2C0();

  v13 = os_log_type_enabled(v11, v12);
  HIDWORD(v24) = a1;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25[0] = v15;
    *v14 = 136315394;
    if (a1)
    {
      v16 = 1953718604;
    }

    else
    {
      v16 = 0x726568746F6E41;
    }

    v17 = a2;
    if (a1)
    {
      v18 = 0xE400000000000000;
    }

    else
    {
      v18 = 0xE700000000000000;
    }

    v19 = sub_258032C5C(v16, v18, v25);
    a2 = v17;

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_258032C5C(v17, a3, v25);
    _os_log_impl(&dword_257FD4000, v11, v12, "%s client has disconnected: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C77210](v15, -1, -1);
    MEMORY[0x259C77210](v14, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((v24 & 0x100000000) != 0)
    {
      v21 = result;
      sub_25804A250();
      v22 = sub_25804A270();
      (*(*(v22 - 8) + 56))(v9, 0, 1, v22);
      v23 = swift_allocObject();
      v23[2] = 0;
      v23[3] = 0;
      v23[4] = v21;
      v23[5] = a2;
      v23[6] = a3;

      sub_258038E50(0, 0, v9, &unk_25804FCE0, v23);
    }
  }

  return result;
}

uint64_t sub_2580487DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_258048800, a4, 0);
}

uint64_t sub_258048800()
{
  sub_258048864(v0[3], v0[4]);
  v1 = v0[1];

  return v1();
}

void sub_258048864(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_27F915180 != -1)
  {
    swift_once();
  }

  v6 = sub_258049D30();
  __swift_project_value_buffer(v6, qword_27F919E30);

  v7 = sub_258049D10();
  v8 = sub_25804A2C0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_258032C5C(a1, a2, v16);
    _os_log_impl(&dword_257FD4000, v7, v8, "Invalidating and removing: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x259C77210](v10, -1, -1);
    MEMORY[0x259C77210](v9, -1, -1);
  }

  swift_beginAccess();
  v11 = *(v3 + 112);
  if (*(v11 + 16))
  {

    v12 = sub_2580337E4(a1, a2);
    if (v13)
    {
      v14 = *(*(v11 + 56) + 8 * v12);

      [v14 invalidate];
    }

    else
    {
    }
  }

  swift_beginAccess();

  sub_25801C8F0(0, a1, a2);
  swift_endAccess();
  if (!*(*(v3 + 112) + 16))
  {
    v15 = *(v3 + 120);
    *(v3 + 120) = 0;
  }
}

uint64_t sub_258048A78()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_258048AD0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_258048B08()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_258048B54()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_258048B9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_257FD8590;

  return sub_2580487DC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_258048C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[17] = a4;
  v5[18] = v4;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915AF8, &qword_25804FCD0);
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258048D10, v4, 0);
}

uint64_t sub_258048D10()
{
  v36 = v0;
  v1 = v0[18];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[14];
    v3 = v0[15];

    v5 = sub_2580337E4(v4, v3);
    if (v6)
    {
      v7 = *(*(v2 + 56) + 8 * v5);

      if (qword_27F915188 != -1)
      {
        swift_once();
      }

      v8 = sub_258049D30();
      __swift_project_value_buffer(v8, qword_27F919E48);

      v9 = sub_258049D10();
      v10 = sub_25804A2C0();

      if (os_log_type_enabled(v9, v10))
      {
        v12 = v0[14];
        v11 = v0[15];
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v35 = v14;
        *v13 = 136315138;
        *(v13 + 4) = sub_258032C5C(v12, v11, &v35);
        _os_log_impl(&dword_257FD4000, v9, v10, "SerializedTask: Existing task %s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v14);
        MEMORY[0x259C77210](v14, -1, -1);
        MEMORY[0x259C77210](v13, -1, -1);
      }

      goto LABEL_14;
    }
  }

  if (qword_27F915188 != -1)
  {
    swift_once();
  }

  v15 = sub_258049D30();
  __swift_project_value_buffer(v15, qword_27F919E48);

  v16 = sub_258049D10();
  v17 = sub_25804A2C0();

  if (os_log_type_enabled(v16, v17))
  {
    v19 = v0[14];
    v18 = v0[15];
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v35 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_258032C5C(v19, v18, &v35);
    _os_log_impl(&dword_257FD4000, v16, v17, "SerializedTask: New task %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x259C77210](v21, -1, -1);
    MEMORY[0x259C77210](v20, -1, -1);
  }

  v22 = v0[19];
  v24 = v0[16];
  v23 = v0[17];
  v26 = v0[14];
  v25 = v0[15];
  v27 = sub_25804A270();
  (*(*(v27 - 8) + 56))(v22, 1, 1, v27);
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v28[4] = v24;
  v28[5] = v23;

  v7 = sub_25802E704(0, 0, v22, &unk_25804FD58, v28);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = *(v1 + 112);
  *(v1 + 112) = 0x8000000000000000;
  sub_258034ED8(v7, v26, v25, isUniquelyReferenced_nonNull_native);

  *(v1 + 112) = v35;
  swift_endAccess();
LABEL_14:
  v0[20] = v7;
  v30 = swift_task_alloc();
  v0[21] = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F915510, &qword_25804BB40);
  *v30 = v0;
  v30[1] = sub_258049188;
  v32 = MEMORY[0x277D84950];
  v33 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v31, v7, v33, v31, v32);
}

uint64_t sub_258049188()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 144);
  if (v0)
  {
    v4 = sub_258049490;
  }

  else
  {
    v4 = sub_2580492B4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2580492B4()
{
  v13 = v0;
  if (qword_27F915188 != -1)
  {
    swift_once();
  }

  v1 = sub_258049D30();
  __swift_project_value_buffer(v1, qword_27F919E48);

  v2 = sub_258049D10();
  v3 = sub_25804A2C0();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[14];
    v4 = v0[15];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_258032C5C(v5, v4, &v12);
    _os_log_impl(&dword_257FD4000, v2, v3, "SerializedTask: Completed task %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x259C77210](v7, -1, -1);
    MEMORY[0x259C77210](v6, -1, -1);
  }

  v9 = v0[14];
  v8 = v0[15];
  swift_beginAccess();

  sub_25801C678(0, v9, v8);
  swift_endAccess();

  v10 = v0[1];

  return v10();
}

uint64_t sub_258049490()
{
  v13 = v0;
  if (qword_27F915188 != -1)
  {
    swift_once();
  }

  v1 = sub_258049D30();
  __swift_project_value_buffer(v1, qword_27F919E48);

  v2 = sub_258049D10();
  v3 = sub_25804A2C0();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[14];
    v4 = v0[15];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_258032C5C(v5, v4, &v12);
    _os_log_impl(&dword_257FD4000, v2, v3, "SerializedTask: Completed task %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x259C77210](v7, -1, -1);
    MEMORY[0x259C77210](v6, -1, -1);
  }

  v9 = v0[14];
  v8 = v0[15];
  swift_beginAccess();

  sub_25801C678(0, v9, v8);
  swift_endAccess();

  v10 = v0[1];

  return v10();
}

uint64_t sub_25804966C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_257FD8590;

  return v7();
}

uint64_t sub_258049754()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2580497B0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2580497F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_257FD8590;

  return sub_25804966C(a1, v4, v5, v6);
}