uint64_t sub_21CD619B4()
{
  v1 = *(v0 + 16);
  v2 = v1[21];
  v3 = v1[22];
  v1[21] = 0;
  v1[22] = 0;
  sub_21CC94F4C(v2, v3);
  v1[23] = 0;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_21CD61A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[17] = a4;
  v5[18] = v4;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  v5[19] = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE19190, &qword_21CD8E260);
  v5[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CD61AF4, v4, 0);
}

uint64_t sub_21CD61AF4()
{
  v1 = *(v0 + 144);
  if (*(v1 + 152) == 1)
  {
    v2 = *(v1 + 128);
    *(v0 + 280) = *(v1 + 112);
    *(v0 + 296) = v2;
    *(v0 + 312) = 0;
    sub_21CD5CD94((v0 + 280), v0 + 16);
    v11 = MobileGestalt_get_current_device();
    if (!v11)
    {
      __break(1u);
      return MEMORY[0x282200430](v11, v12, v13, v14, v15);
    }

    v16 = v11;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    if (deviceClassNumber == 1)
    {
      v18 = *(v0 + 144);
      v19 = *(v18 + 160);
      *(v0 + 168) = v19;
      if (v19)
      {
        if (v19 == 1)
        {
          v21 = *(v0 + 120);
          v20 = *(v0 + 128);
          v22 = *(v0 + 112);
          *(v0 + 216) = *(v18 + 144);
          v23 = swift_allocObject();
          *(v0 + 224) = v23;
          *(v23 + 16) = v22;
          *(v23 + 24) = v21;
          v24 = *(v0 + 136);
          if (v20)
          {
            v25 = swift_allocObject();
            *(v25 + 16) = v20;
            *(v25 + 24) = v24;
            v26 = &unk_21CD984D8;
          }

          else
          {
            v26 = 0;
            v25 = 0;
          }

          *(v0 + 232) = v26;
          *(v0 + 240) = v25;

          sub_21CC91FBC(v20, v24);

          return MEMORY[0x2822009F8](sub_21CD622AC, 0, 0);
        }

        v34 = swift_task_alloc();
        *(v0 + 176) = v34;
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
        *v34 = v0;
        v35 = sub_21CD62054;
      }

      else
      {
        v28 = *(v0 + 160);
        v29 = sub_21CD83D74();
        (*(*(v29 - 8) + 56))(v28, 1, 1, v29);
        v31 = sub_21CD674A8(&qword_27CE1BBC0, v30, type metadata accessor for MobileDocumentReaderSession, &protocol conformance descriptor for MobileDocumentReaderSession);
        v32 = swift_allocObject();
        v32[2] = v18;
        v32[3] = v31;
        v32[4] = v18;
        swift_retain_n();
        v19 = sub_21CD7B7F0(0, 0, v28, &unk_21CD984E0, v32);
        *(v0 + 192) = v19;
        v33 = *(v18 + 160);
        *(v18 + 160) = v19;

        sub_21CD66A88(v33);
        v34 = swift_task_alloc();
        *(v0 + 200) = v34;
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
        *v34 = v0;
        v35 = sub_21CD62180;
      }

      v34[1] = v35;
      v15 = MEMORY[0x277D84950];
      v13 = MEMORY[0x277D84F78] + 8;
      v12 = v19;
      v14 = v11;

      return MEMORY[0x282200430](v11, v12, v13, v14, v15);
    }

    *(v0 + 56) = xmmword_21CD98140;
    *(v0 + 72) = xmmword_21CD98150;
    *(v0 + 88) = 0x800000021CDA1280;
    sub_21CD5D868();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v27 = xmmword_21CD98140;
    *(v27 + 16) = xmmword_21CD98150;
    *(v27 + 32) = 0x800000021CDA1280;
  }

  else
  {
    if (qword_280F77E40 != -1)
    {
      swift_once();
    }

    v3 = sub_21CD839F4();
    __swift_project_value_buffer(v3, qword_280F78E40);
    v4 = sub_21CD839D4();
    v5 = sub_21CD83E14();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_21CC90000, v4, v5, "Calling application is not entitled to use the API", v6, 2u);
      MEMORY[0x21CF18580](v6, -1, -1);
    }

    sub_21CD5D868();
    swift_allocError();
    v8 = v7;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *v7 = xmmword_21CD8F6A0;
    *(v7 + 16) = 0;

    *(v8 + 24) = 0;
    *(v8 + 32) = 0;

    swift_willThrow();
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_21CD62054()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 144);
  if (v0)
  {
    v4 = sub_21CD62854;
  }

  else
  {
    v4 = sub_21CD62760;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_21CD62180()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 144);
  if (v0)
  {
    v4 = sub_21CD626F4;
  }

  else
  {
    v4 = sub_21CD62600;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_21CD622AC()
{
  v2 = v0[29];
  v1 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v5 = swift_task_alloc();
  v0[31] = v5;
  v5[2] = v4;
  v5[3] = &unk_21CD984C0;
  v5[4] = v3;
  v6 = swift_task_alloc();
  v0[32] = v6;
  v6[2] = v2;
  v6[3] = v1;
  v6[4] = v4;
  v7 = swift_task_alloc();
  v0[33] = v7;
  *v7 = v0;
  v7[1] = sub_21CD623DC;
  v8 = MEMORY[0x277D837D0];

  return MEMORY[0x282200830](v0 + 12, &unk_21CD984D0, v5, sub_21CD688E8, v6, 0, 0, v8);
}

uint64_t sub_21CD623DC()
{
  v2 = *v1;
  v2[34] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21CD6256C, 0, 0);
  }

  else
  {
    sub_21CC94F4C(v2[29], v2[30]);

    v4 = v2[12];
    v3 = v2[13];

    v5 = v2[1];

    return v5(v4, v3);
  }
}

uint64_t sub_21CD6256C()
{
  sub_21CC94F4C(v0[29], v0[30]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_21CD62600()
{

  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  v0[27] = *(v0[18] + 144);
  v4 = swift_allocObject();
  v0[28] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v5 = v0[17];
  if (v2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    *(v6 + 24) = v5;
    v7 = &unk_21CD984D8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v0[29] = v7;
  v0[30] = v6;

  sub_21CC91FBC(v2, v5);

  return MEMORY[0x2822009F8](sub_21CD622AC, 0, 0);
}

uint64_t sub_21CD626F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21CD62760()
{
  sub_21CD66A88(v0[21]);
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  v0[27] = *(v0[18] + 144);
  v4 = swift_allocObject();
  v0[28] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v5 = v0[17];
  if (v2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    *(v6 + 24) = v5;
    v7 = &unk_21CD984D8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v0[29] = v7;
  v0[30] = v6;

  sub_21CC91FBC(v2, v5);

  return MEMORY[0x2822009F8](sub_21CD622AC, 0, 0);
}

uint64_t sub_21CD62854()
{
  sub_21CD66A88(*(v0 + 168));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21CD628C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  v6[18] = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE19190, &qword_21CD8E260);
  v6[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CD6298C, v5, 0);
}

uint64_t sub_21CD6298C()
{
  v1 = *(v0 + 136);
  if (*(v1 + 152) == 1)
  {
    v2 = *(v1 + 128);
    *(v0 + 272) = *(v1 + 112);
    *(v0 + 288) = v2;
    *(v0 + 304) = 0;
    sub_21CD5CD94((v0 + 272), v0 + 16);
    v11 = MobileGestalt_get_current_device();
    if (!v11)
    {
      __break(1u);
      return MEMORY[0x282200430](v11, v12, v13, v14, v15);
    }

    v16 = v11;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    if (deviceClassNumber == 1)
    {
      v18 = *(v0 + 136);
      v19 = *(v18 + 160);
      *(v0 + 160) = v19;
      if (v19)
      {
        if (v19 == 1)
        {
          v21 = *(v0 + 112);
          v20 = *(v0 + 120);
          v22 = *(v0 + 104);
          *(v0 + 208) = *(v18 + 144);
          v23 = swift_allocObject();
          *(v0 + 216) = v23;
          *(v23 + 16) = v22;
          *(v23 + 24) = v21;
          v24 = *(v0 + 128);
          if (v20)
          {
            v25 = swift_allocObject();
            *(v25 + 16) = v20;
            *(v25 + 24) = v24;
            v26 = &unk_21CD984A0;
          }

          else
          {
            v26 = 0;
            v25 = 0;
          }

          *(v0 + 224) = v26;
          *(v0 + 232) = v25;

          sub_21CC91FBC(v20, v24);

          return MEMORY[0x2822009F8](sub_21CD63144, 0, 0);
        }

        v34 = swift_task_alloc();
        *(v0 + 168) = v34;
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
        *v34 = v0;
        v35 = sub_21CD62EEC;
      }

      else
      {
        v28 = *(v0 + 152);
        v29 = sub_21CD83D74();
        (*(*(v29 - 8) + 56))(v28, 1, 1, v29);
        v31 = sub_21CD674A8(&qword_27CE1BBC0, v30, type metadata accessor for MobileDocumentReaderSession, &protocol conformance descriptor for MobileDocumentReaderSession);
        v32 = swift_allocObject();
        v32[2] = v18;
        v32[3] = v31;
        v32[4] = v18;
        swift_retain_n();
        v19 = sub_21CD7B7F0(0, 0, v28, &unk_21CD984A8, v32);
        *(v0 + 184) = v19;
        v33 = *(v18 + 160);
        *(v18 + 160) = v19;

        sub_21CD66A88(v33);
        v34 = swift_task_alloc();
        *(v0 + 192) = v34;
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
        *v34 = v0;
        v35 = sub_21CD63018;
      }

      v34[1] = v35;
      v15 = MEMORY[0x277D84950];
      v13 = MEMORY[0x277D84F78] + 8;
      v12 = v19;
      v14 = v11;

      return MEMORY[0x282200430](v11, v12, v13, v14, v15);
    }

    *(v0 + 56) = xmmword_21CD98140;
    *(v0 + 72) = xmmword_21CD98150;
    *(v0 + 88) = 0x800000021CDA1280;
    sub_21CD5D868();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v27 = xmmword_21CD98140;
    *(v27 + 16) = xmmword_21CD98150;
    *(v27 + 32) = 0x800000021CDA1280;
  }

  else
  {
    if (qword_280F77E40 != -1)
    {
      swift_once();
    }

    v3 = sub_21CD839F4();
    __swift_project_value_buffer(v3, qword_280F78E40);
    v4 = sub_21CD839D4();
    v5 = sub_21CD83E14();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_21CC90000, v4, v5, "Calling application is not entitled to use the API", v6, 2u);
      MEMORY[0x21CF18580](v6, -1, -1);
    }

    sub_21CD5D868();
    swift_allocError();
    v8 = v7;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *v7 = xmmword_21CD8F6A0;
    *(v7 + 16) = 0;

    *(v8 + 24) = 0;
    *(v8 + 32) = 0;

    swift_willThrow();
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_21CD62EEC()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 136);
  if (v0)
  {
    v4 = sub_21CD636D8;
  }

  else
  {
    v4 = sub_21CD635E4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_21CD63018()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 136);
  if (v0)
  {
    v4 = sub_21CD63578;
  }

  else
  {
    v4 = sub_21CD63484;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_21CD63144()
{
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v5 = swift_task_alloc();
  v0[30] = v5;
  v5[2] = v4;
  v5[3] = &unk_21CD98490;
  v5[4] = v3;
  v6 = swift_task_alloc();
  v0[31] = v6;
  v6[2] = v2;
  v6[3] = v1;
  v6[4] = v4;
  v7 = swift_task_alloc();
  v0[32] = v7;
  v8 = type metadata accessor for MobileDocumentReaderConfigurationResponse(0);
  *v7 = v0;
  v7[1] = sub_21CD63278;
  v9 = v0[12];

  return MEMORY[0x282200830](v9, &unk_21CD98498, v5, sub_21CD686E4, v6, 0, 0, v8);
}

uint64_t sub_21CD63278()
{
  v2 = *v1;
  v2[33] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21CD633F0, 0, 0);
  }

  else
  {
    sub_21CC94F4C(v2[28], v2[29]);

    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_21CD633F0()
{
  sub_21CC94F4C(v0[28], v0[29]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_21CD63484()
{

  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  v0[26] = *(v0[17] + 144);
  v4 = swift_allocObject();
  v0[27] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v5 = v0[16];
  if (v2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    *(v6 + 24) = v5;
    v7 = &unk_21CD984A0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v0[28] = v7;
  v0[29] = v6;

  sub_21CC91FBC(v2, v5);

  return MEMORY[0x2822009F8](sub_21CD63144, 0, 0);
}

uint64_t sub_21CD63578()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21CD635E4()
{
  sub_21CD66A88(v0[20]);
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  v0[26] = *(v0[17] + 144);
  v4 = swift_allocObject();
  v0[27] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v5 = v0[16];
  if (v2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    *(v6 + 24) = v5;
    v7 = &unk_21CD984A0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v0[28] = v7;
  v0[29] = v6;

  sub_21CC91FBC(v2, v5);

  return MEMORY[0x2822009F8](sub_21CD63144, 0, 0);
}

uint64_t sub_21CD636D8()
{
  sub_21CD66A88(*(v0 + 160));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21CD63744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  v6[18] = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE19190, &qword_21CD8E260);
  v6[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CD63810, v5, 0);
}

uint64_t sub_21CD63810()
{
  v1 = *(v0 + 136);
  if (*(v1 + 152) == 1)
  {
    v2 = *(v1 + 128);
    *(v0 + 272) = *(v1 + 112);
    *(v0 + 288) = v2;
    *(v0 + 304) = 0;
    sub_21CD5CD94((v0 + 272), v0 + 16);
    v11 = MobileGestalt_get_current_device();
    if (!v11)
    {
      __break(1u);
      return MEMORY[0x282200430](v11, v12, v13, v14, v15);
    }

    v16 = v11;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    if (deviceClassNumber == 1)
    {
      v18 = *(v0 + 136);
      v19 = *(v18 + 160);
      *(v0 + 160) = v19;
      if (v19)
      {
        if (v19 == 1)
        {
          v21 = *(v0 + 112);
          v20 = *(v0 + 120);
          v22 = *(v0 + 104);
          *(v0 + 208) = *(v18 + 144);
          v23 = swift_allocObject();
          *(v0 + 216) = v23;
          *(v23 + 16) = v22;
          *(v23 + 24) = v21;
          v24 = *(v0 + 128);
          if (v20)
          {
            v25 = swift_allocObject();
            *(v25 + 16) = v20;
            *(v25 + 24) = v24;
            v26 = &unk_21CD98468;
          }

          else
          {
            v26 = 0;
            v25 = 0;
          }

          *(v0 + 224) = v26;
          *(v0 + 232) = v25;

          sub_21CC91FBC(v20, v24);

          return MEMORY[0x2822009F8](sub_21CD63FC8, 0, 0);
        }

        v34 = swift_task_alloc();
        *(v0 + 168) = v34;
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
        *v34 = v0;
        v35 = sub_21CD63D70;
      }

      else
      {
        v28 = *(v0 + 152);
        v29 = sub_21CD83D74();
        (*(*(v29 - 8) + 56))(v28, 1, 1, v29);
        v31 = sub_21CD674A8(&qword_27CE1BBC0, v30, type metadata accessor for MobileDocumentReaderSession, &protocol conformance descriptor for MobileDocumentReaderSession);
        v32 = swift_allocObject();
        v32[2] = v18;
        v32[3] = v31;
        v32[4] = v18;
        swift_retain_n();
        v19 = sub_21CD7B7F0(0, 0, v28, &unk_21CD98470, v32);
        *(v0 + 184) = v19;
        v33 = *(v18 + 160);
        *(v18 + 160) = v19;

        sub_21CD66A88(v33);
        v34 = swift_task_alloc();
        *(v0 + 192) = v34;
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
        *v34 = v0;
        v35 = sub_21CD63E9C;
      }

      v34[1] = v35;
      v15 = MEMORY[0x277D84950];
      v13 = MEMORY[0x277D84F78] + 8;
      v12 = v19;
      v14 = v11;

      return MEMORY[0x282200430](v11, v12, v13, v14, v15);
    }

    *(v0 + 56) = xmmword_21CD98140;
    *(v0 + 72) = xmmword_21CD98150;
    *(v0 + 88) = 0x800000021CDA1280;
    sub_21CD5D868();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v27 = xmmword_21CD98140;
    *(v27 + 16) = xmmword_21CD98150;
    *(v27 + 32) = 0x800000021CDA1280;
  }

  else
  {
    if (qword_280F77E40 != -1)
    {
      swift_once();
    }

    v3 = sub_21CD839F4();
    __swift_project_value_buffer(v3, qword_280F78E40);
    v4 = sub_21CD839D4();
    v5 = sub_21CD83E14();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_21CC90000, v4, v5, "Calling application is not entitled to use the API", v6, 2u);
      MEMORY[0x21CF18580](v6, -1, -1);
    }

    sub_21CD5D868();
    swift_allocError();
    v8 = v7;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *v7 = xmmword_21CD8F6A0;
    *(v7 + 16) = 0;

    *(v8 + 24) = 0;
    *(v8 + 32) = 0;

    swift_willThrow();
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_21CD63D70()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 136);
  if (v0)
  {
    v4 = sub_21CD68C34;
  }

  else
  {
    v4 = sub_21CD64374;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_21CD63E9C()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 136);
  if (v0)
  {
    v4 = sub_21CD68C30;
  }

  else
  {
    v4 = sub_21CD64280;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_21CD63FC8()
{
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v5 = swift_task_alloc();
  v0[30] = v5;
  v5[2] = v4;
  v5[3] = &unk_21CD98450;
  v5[4] = v3;
  v6 = swift_task_alloc();
  v0[31] = v6;
  v6[2] = v2;
  v6[3] = v1;
  v6[4] = v4;
  v7 = swift_task_alloc();
  v0[32] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F98, &qword_21CD88950);
  *v7 = v0;
  v7[1] = sub_21CD64108;
  v9 = v0[12];

  return MEMORY[0x282200830](v9, &unk_21CD98458, v5, sub_21CD6855C, v6, 0, 0, v8);
}

uint64_t sub_21CD64108()
{
  v2 = *v1;
  v2[33] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21CD68C3C, 0, 0);
  }

  else
  {
    sub_21CC94F4C(v2[28], v2[29]);

    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_21CD64280()
{

  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  v0[26] = *(v0[17] + 144);
  v4 = swift_allocObject();
  v0[27] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v5 = v0[16];
  if (v2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    *(v6 + 24) = v5;
    v7 = &unk_21CD98468;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v0[28] = v7;
  v0[29] = v6;

  sub_21CC91FBC(v2, v5);

  return MEMORY[0x2822009F8](sub_21CD63FC8, 0, 0);
}

uint64_t sub_21CD64374()
{
  sub_21CD66A88(v0[20]);
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  v0[26] = *(v0[17] + 144);
  v4 = swift_allocObject();
  v0[27] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v5 = v0[16];
  if (v2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    *(v6 + 24) = v5;
    v7 = &unk_21CD98468;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v0[28] = v7;
  v0[29] = v6;

  sub_21CC91FBC(v2, v5);

  return MEMORY[0x2822009F8](sub_21CD63FC8, 0, 0);
}

uint64_t sub_21CD64468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  v6[18] = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE19190, &qword_21CD8E260);
  v6[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CD64534, v5, 0);
}

uint64_t sub_21CD64534()
{
  v1 = *(v0 + 136);
  if (*(v1 + 152) == 1)
  {
    v2 = *(v1 + 128);
    *(v0 + 272) = *(v1 + 112);
    *(v0 + 288) = v2;
    *(v0 + 304) = 0;
    sub_21CD5CD94((v0 + 272), v0 + 16);
    v11 = MobileGestalt_get_current_device();
    if (!v11)
    {
      __break(1u);
      return MEMORY[0x282200430](v11, v12, v13, v14, v15);
    }

    v16 = v11;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    if (deviceClassNumber == 1)
    {
      v18 = *(v0 + 136);
      v19 = *(v18 + 160);
      *(v0 + 160) = v19;
      if (v19)
      {
        if (v19 == 1)
        {
          v21 = *(v0 + 112);
          v20 = *(v0 + 120);
          v22 = *(v0 + 104);
          *(v0 + 208) = *(v18 + 144);
          v23 = swift_allocObject();
          *(v0 + 216) = v23;
          *(v23 + 16) = v22;
          *(v23 + 24) = v21;
          v24 = *(v0 + 128);
          if (v20)
          {
            v25 = swift_allocObject();
            *(v25 + 16) = v20;
            *(v25 + 24) = v24;
            v26 = &unk_21CD98438;
          }

          else
          {
            v26 = 0;
            v25 = 0;
          }

          *(v0 + 224) = v26;
          *(v0 + 232) = v25;

          sub_21CC91FBC(v20, v24);

          return MEMORY[0x2822009F8](sub_21CD64CEC, 0, 0);
        }

        v34 = swift_task_alloc();
        *(v0 + 168) = v34;
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
        *v34 = v0;
        v35 = sub_21CD64A94;
      }

      else
      {
        v28 = *(v0 + 152);
        v29 = sub_21CD83D74();
        (*(*(v29 - 8) + 56))(v28, 1, 1, v29);
        v31 = sub_21CD674A8(&qword_27CE1BBC0, v30, type metadata accessor for MobileDocumentReaderSession, &protocol conformance descriptor for MobileDocumentReaderSession);
        v32 = swift_allocObject();
        v32[2] = v18;
        v32[3] = v31;
        v32[4] = v18;
        swift_retain_n();
        v19 = sub_21CD7B7F0(0, 0, v28, &unk_21CD98440, v32);
        *(v0 + 184) = v19;
        v33 = *(v18 + 160);
        *(v18 + 160) = v19;

        sub_21CD66A88(v33);
        v34 = swift_task_alloc();
        *(v0 + 192) = v34;
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
        *v34 = v0;
        v35 = sub_21CD64BC0;
      }

      v34[1] = v35;
      v15 = MEMORY[0x277D84950];
      v13 = MEMORY[0x277D84F78] + 8;
      v12 = v19;
      v14 = v11;

      return MEMORY[0x282200430](v11, v12, v13, v14, v15);
    }

    *(v0 + 56) = xmmword_21CD98140;
    *(v0 + 72) = xmmword_21CD98150;
    *(v0 + 88) = 0x800000021CDA1280;
    sub_21CD5D868();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v27 = xmmword_21CD98140;
    *(v27 + 16) = xmmword_21CD98150;
    *(v27 + 32) = 0x800000021CDA1280;
  }

  else
  {
    if (qword_280F77E40 != -1)
    {
      swift_once();
    }

    v3 = sub_21CD839F4();
    __swift_project_value_buffer(v3, qword_280F78E40);
    v4 = sub_21CD839D4();
    v5 = sub_21CD83E14();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_21CC90000, v4, v5, "Calling application is not entitled to use the API", v6, 2u);
      MEMORY[0x21CF18580](v6, -1, -1);
    }

    sub_21CD5D868();
    swift_allocError();
    v8 = v7;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *v7 = xmmword_21CD8F6A0;
    *(v7 + 16) = 0;

    *(v8 + 24) = 0;
    *(v8 + 32) = 0;

    swift_willThrow();
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_21CD64A94()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 136);
  if (v0)
  {
    v4 = sub_21CD68C34;
  }

  else
  {
    v4 = sub_21CD64F14;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_21CD64BC0()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 136);
  if (v0)
  {
    v4 = sub_21CD68C30;
  }

  else
  {
    v4 = sub_21CD64E20;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_21CD64CEC()
{
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v5 = swift_task_alloc();
  v0[30] = v5;
  v5[2] = v4;
  v5[3] = &unk_21CD98428;
  v5[4] = v3;
  v6 = swift_task_alloc();
  v0[31] = v6;
  v6[2] = v2;
  v6[3] = v1;
  v6[4] = v4;
  v7 = swift_task_alloc();
  v0[32] = v7;
  *v7 = v0;
  v7[1] = sub_21CD64108;
  v8 = v0[12];
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200830](v8, &unk_21CD98430, v5, sub_21CD2B498, v6, 0, 0, v9);
}

uint64_t sub_21CD64E20()
{

  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  v0[26] = *(v0[17] + 144);
  v4 = swift_allocObject();
  v0[27] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v5 = v0[16];
  if (v2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    *(v6 + 24) = v5;
    v7 = &unk_21CD98438;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v0[28] = v7;
  v0[29] = v6;

  sub_21CC91FBC(v2, v5);

  return MEMORY[0x2822009F8](sub_21CD64CEC, 0, 0);
}

uint64_t sub_21CD64F14()
{
  sub_21CD66A88(v0[20]);
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  v0[26] = *(v0[17] + 144);
  v4 = swift_allocObject();
  v0[27] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v5 = v0[16];
  if (v2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    *(v6 + 24) = v5;
    v7 = &unk_21CD98438;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v0[28] = v7;
  v0[29] = v6;

  sub_21CC91FBC(v2, v5);

  return MEMORY[0x2822009F8](sub_21CD64CEC, 0, 0);
}

uint64_t sub_21CD65008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  v6[18] = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE19190, &qword_21CD8E260);
  v6[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CD650D4, v5, 0);
}

uint64_t sub_21CD650D4()
{
  v1 = *(v0 + 136);
  if (*(v1 + 152) == 1)
  {
    v2 = *(v1 + 128);
    *(v0 + 272) = *(v1 + 112);
    *(v0 + 288) = v2;
    *(v0 + 304) = 0;
    sub_21CD5CD94((v0 + 272), v0 + 16);
    v11 = MobileGestalt_get_current_device();
    if (!v11)
    {
      __break(1u);
      return MEMORY[0x282200430](v11, v12, v13, v14, v15);
    }

    v16 = v11;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    if (deviceClassNumber == 1)
    {
      v18 = *(v0 + 136);
      v19 = *(v18 + 160);
      *(v0 + 160) = v19;
      if (v19)
      {
        if (v19 == 1)
        {
          v21 = *(v0 + 112);
          v20 = *(v0 + 120);
          v22 = *(v0 + 104);
          *(v0 + 208) = *(v18 + 144);
          v23 = swift_allocObject();
          *(v0 + 216) = v23;
          *(v23 + 16) = v22;
          *(v23 + 24) = v21;
          v24 = *(v0 + 128);
          if (v20)
          {
            v25 = swift_allocObject();
            *(v25 + 16) = v20;
            *(v25 + 24) = v24;
            v26 = &unk_21CD983D0;
          }

          else
          {
            v26 = 0;
            v25 = 0;
          }

          *(v0 + 224) = v26;
          *(v0 + 232) = v25;

          sub_21CC91FBC(v20, v24);

          return MEMORY[0x2822009F8](sub_21CD6588C, 0, 0);
        }

        v34 = swift_task_alloc();
        *(v0 + 168) = v34;
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
        *v34 = v0;
        v35 = sub_21CD65634;
      }

      else
      {
        v28 = *(v0 + 152);
        v29 = sub_21CD83D74();
        (*(*(v29 - 8) + 56))(v28, 1, 1, v29);
        v31 = sub_21CD674A8(&qword_27CE1BBC0, v30, type metadata accessor for MobileDocumentReaderSession, &protocol conformance descriptor for MobileDocumentReaderSession);
        v32 = swift_allocObject();
        v32[2] = v18;
        v32[3] = v31;
        v32[4] = v18;
        swift_retain_n();
        v19 = sub_21CD7B7F0(0, 0, v28, &unk_21CD983E0, v32);
        *(v0 + 184) = v19;
        v33 = *(v18 + 160);
        *(v18 + 160) = v19;

        sub_21CD66A88(v33);
        v34 = swift_task_alloc();
        *(v0 + 192) = v34;
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
        *v34 = v0;
        v35 = sub_21CD65760;
      }

      v34[1] = v35;
      v15 = MEMORY[0x277D84950];
      v13 = MEMORY[0x277D84F78] + 8;
      v12 = v19;
      v14 = v11;

      return MEMORY[0x282200430](v11, v12, v13, v14, v15);
    }

    *(v0 + 56) = xmmword_21CD98140;
    *(v0 + 72) = xmmword_21CD98150;
    *(v0 + 88) = 0x800000021CDA1280;
    sub_21CD5D868();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v27 = xmmword_21CD98140;
    *(v27 + 16) = xmmword_21CD98150;
    *(v27 + 32) = 0x800000021CDA1280;
  }

  else
  {
    if (qword_280F77E40 != -1)
    {
      swift_once();
    }

    v3 = sub_21CD839F4();
    __swift_project_value_buffer(v3, qword_280F78E40);
    v4 = sub_21CD839D4();
    v5 = sub_21CD83E14();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_21CC90000, v4, v5, "Calling application is not entitled to use the API", v6, 2u);
      MEMORY[0x21CF18580](v6, -1, -1);
    }

    sub_21CD5D868();
    swift_allocError();
    v8 = v7;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *v7 = xmmword_21CD8F6A0;
    *(v7 + 16) = 0;

    *(v8 + 24) = 0;
    *(v8 + 32) = 0;

    swift_willThrow();
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_21CD65634()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 136);
  if (v0)
  {
    v4 = sub_21CD68C34;
  }

  else
  {
    v4 = sub_21CD65AB4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_21CD65760()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 136);
  if (v0)
  {
    v4 = sub_21CD68C30;
  }

  else
  {
    v4 = sub_21CD659C0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_21CD6588C()
{
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v5 = swift_task_alloc();
  v0[30] = v5;
  v5[2] = v4;
  v5[3] = &unk_21CD983B8;
  v5[4] = v3;
  v6 = swift_task_alloc();
  v0[31] = v6;
  v6[2] = v2;
  v6[3] = v1;
  v6[4] = v4;
  v7 = swift_task_alloc();
  v0[32] = v7;
  v8 = type metadata accessor for MobileDocumentReaderResponse(0);
  *v7 = v0;
  v7[1] = sub_21CD64108;
  v9 = v0[12];

  return MEMORY[0x282200830](v9, &unk_21CD983C0, v5, sub_21CD67EC0, v6, 0, 0, v8);
}

uint64_t sub_21CD659C0()
{

  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  v0[26] = *(v0[17] + 144);
  v4 = swift_allocObject();
  v0[27] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v5 = v0[16];
  if (v2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    *(v6 + 24) = v5;
    v7 = &unk_21CD983D0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v0[28] = v7;
  v0[29] = v6;

  sub_21CC91FBC(v2, v5);

  return MEMORY[0x2822009F8](sub_21CD6588C, 0, 0);
}

uint64_t sub_21CD65AB4()
{
  sub_21CD66A88(v0[20]);
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  v0[26] = *(v0[17] + 144);
  v4 = swift_allocObject();
  v0[27] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v5 = v0[16];
  if (v2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    *(v6 + 24) = v5;
    v7 = &unk_21CD983D0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v0[28] = v7;
  v0[29] = v6;

  sub_21CC91FBC(v2, v5);

  return MEMORY[0x2822009F8](sub_21CD6588C, 0, 0);
}

uint64_t sub_21CD65BC8()
{
  *(v0 + 24) = *(*(v0 + 16) + 144);

  return MEMORY[0x2822009F8](sub_21CD65C3C, 0, 0);
}

uint64_t sub_21CD65C3C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  v3[2] = v2;
  v3[3] = &unk_21CD983F0;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_21CD65D5C;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200830](v5, &unk_21CD915F0, v3, sub_21CD2A008, v4, 0, 0, v6);
}

uint64_t sub_21CD65D5C()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_21CD65F10;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 16);

    v3 = sub_21CD65EA0;
    v4 = v5;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_21CD65EA0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 160);
  *(v1 + 160) = 1;
  sub_21CD66A88(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21CD65F10()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2822009F8](sub_21CD65F98, v1, 0);
}

uint64_t sub_21CD65F98()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 160);
  *(v1 + 160) = 0;
  sub_21CD66A88(v2);
  swift_willThrow();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21CD66014(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[20] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F70, &qword_21CD98400);
  v3[21] = v5;
  v3[22] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *a2;
  v3[23] = v6;
  v3[24] = v7;

  return MEMORY[0x2822009F8](sub_21CD660E8, 0, 0);
}

uint64_t sub_21CD660E8()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v4 = v0[23];
  v17 = v0[24];
  v7 = v0 + 21;
  v5 = v0[21];
  v6 = v7[1];
  v8 = v1[20];
  v9 = *(v8 + 128);
  *(v1 + 27) = *(v8 + 112);
  *(v1 + 29) = v9;
  v10 = type metadata accessor for XPCAuditToken();
  v11 = objc_allocWithZone(v10);
  v12 = &v11[OBJC_IVAR____TtC7CoreIDV13XPCAuditToken_value];
  v13 = *(v1 + 29);
  *v12 = *(v1 + 27);
  *(v12 + 1) = v13;
  v1[18] = v11;
  v1[19] = v10;
  v14 = objc_msgSendSuper2(v1 + 9, sel_init);
  v1[25] = v14;
  v1[2] = v1;
  v1[3] = sub_21CD662FC;
  swift_continuation_init();
  v1[17] = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
  sub_21CD83CE4();
  (*(v6 + 32))(boxed_opaque_existential_0, v4, v5);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_21CD5C4C0;
  v1[13] = &block_descriptor_92;
  [v17 registerAuditToken:v14 completionHandler:v3];
  (*(v6 + 8))(boxed_opaque_existential_0, v5);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_21CD662FC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_21CD6647C;
  }

  else
  {
    v2 = sub_21CD6640C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CD6640C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21CD6647C(uint64_t a1)
{
  v2 = *(v1 + 200);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_21CD664F8(uint64_t *a1, int *a2)
{
  v3 = *a1;
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21CCC01B8;

  return v6(v3);
}

unint64_t sub_21CD665EC()
{
  v1 = v0;
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v2 = sub_21CD839F4();
  __swift_project_value_buffer(v2, qword_280F78E40);
  v3 = sub_21CD839D4();
  v4 = sub_21CD83E14();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_21CCC02FC(0xD00000000000001FLL, 0x800000021CDA13B0, &v9);
    _os_log_impl(&dword_21CC90000, v3, v4, "MobileDocumentReaderSession %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x21CF18580](v6, -1, -1);
    MEMORY[0x21CF18580](v5, -1, -1);
  }

  v7 = *(v1 + 160);
  *(v1 + 160) = 0;

  return sub_21CD66A88(v7);
}

void *MobileDocumentReaderSession.deinit()
{

  sub_21CD66A88(*(v0 + 160));
  sub_21CC94F4C(*(v0 + 168), *(v0 + 176));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t MobileDocumentReaderSession.__deallocating_deinit()
{

  sub_21CD66A88(*(v0 + 160));
  sub_21CC94F4C(*(v0 + 168), *(v0 + 176));

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21CD667FC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_21CCC498C;

  return sub_21CD5E914(a1, a2, v6, v7, v8);
}

uint64_t sub_21CD668C0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_21CCC498C;

  return sub_21CD5F09C(a1, a2, v7, v6);
}

uint64_t sub_21CD66974(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_21CCC498C;

  return sub_21CD5F8B0(a1, a2, v2 + 16);
}

unint64_t sub_21CD66A88(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t dispatch thunk of MobileDocumentReaderSession.readerIdentifier()()
{
  v4 = (*(*v0 + 216) + **(*v0 + 216));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_21CD66BF8;

  return v4();
}

uint64_t sub_21CD66BF8(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t dispatch thunk of MobileDocumentReaderSession.prepare(with:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 224) + **(*v2 + 224));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_21CCC498C;

  return v8(a1, a2);
}

uint64_t dispatch thunk of MobileDocumentReaderSession.merchant(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 232) + **(*v3 + 232));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_21CCC498C;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of MobileDocumentReaderSession.canRequestDocument(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 240) + **(*v1 + 240));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21CCC498C;

  return v6(a1);
}

uint64_t get_enum_tag_for_layout_string_7CoreIDV27MobileDocumentReaderSessionC29ConnectionConfigurationStatus33_A09C1655FBF7F2B12074A2126D690456LLO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21CD670C8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21CD6711C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_21CD67178(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_21CD671A8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BBB8, &qword_21CD98338);

  return sub_21CD605C0(a1);
}

uint64_t sub_21CD67224(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BBB8, &qword_21CD98338) - 8);
  v5 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[10];
  v10 = v1[11];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_21CCC498C;

  return sub_21CD60718(a1, v6, v7, v8, (v1 + 5), v9, v10, v1 + v5);
}

uint64_t sub_21CD67340(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BBB8, &qword_21CD98338) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_21CD616C8(a1, v1 + v4, v6, v7);
}

uint64_t sub_21CD673F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21CCC498C;

  return sub_21CD61994(a1, v4, v5, v6);
}

uint64_t sub_21CD674A8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_21CD674F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21CCC498C;

  return sub_21CD021FC(a1, v4);
}

uint64_t sub_21CD675A8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 56);
  v7 = *(v2 + 64);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_21CCC498C;

  return sub_21CD60CB0(a1, a2, v2 + 16, v6, v7);
}

uint64_t sub_21CD67668(uint64_t a1)
{
  v2 = type metadata accessor for MobileDocumentReaderResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21CD676C4(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_21CD677B8;

  return v5(v2 + 32);
}

uint64_t sub_21CD677B8()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_21CD678CC(uint64_t a1, uint64_t *a2, int *a3)
{
  *(v3 + 32) = a1;
  v4 = *a2;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 40) = v5;
  *v5 = v3;
  v5[1] = sub_21CD679CC;

  return v7(v3 + 16, v4);
}

uint64_t sub_21CD679CC()
{
  v2 = *v1;
  v3 = *v1;

  if (!v0)
  {
    v5 = v2[3];
    v4 = v2[4];
    *v4 = v2[2];
    v4[1] = v5;
  }

  v6 = v3[1];

  return v6();
}

uint64_t sub_21CD67ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_21CD67B00, 0, 0);
}

uint64_t sub_21CD67B00()
{
  v1 = *(v0[3] + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v0[6] = v2;
  v2;
  os_unfair_lock_unlock((v1 + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_21CD67BD4;
  v5 = v0[4];
  v4 = v0[5];

  return sub_21CCB5FA0(v5, v4);
}

uint64_t sub_21CD67BD4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 64) = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](sub_21CCB3838, 0, 0);
  }

  else
  {
    v8 = *(v6 + 16);

    *v8 = a1;
    v8[1] = a2;
    v9 = *(v7 + 8);

    return v9();
  }
}

uint64_t sub_21CD67D44(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21CCC498C;

  return sub_21CD0EF58(a1, a2, v6);
}

uint64_t sub_21CD67E0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21CCC498C;

  return sub_21CCB4274(a1, v4, v5, v6);
}

uint64_t sub_21CD67ECC(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21CCC498C;

  return sub_21CD664F8(a1, v4);
}

uint64_t sub_21CD67F80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21CCC498C;

  return sub_21CD65BA8(a1, v4, v5, v6);
}

uint64_t sub_21CD68034(uint64_t a1, uint64_t *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_21CCC498C;

  return sub_21CD66014(a1, a2, v2);
}

uint64_t objectdestroy_44Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BBB8, &qword_21CD98338);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  swift_unknownObjectRelease();

  sub_21CD19C4C(*(v0 + 56), *(v0 + 64), *(v0 + 72));
  v5 = *(v0 + 88);
  if (v5 >> 60 != 15)
  {
    sub_21CCB1880(*(v0 + 80), v5);
  }

  v6 = (v3 + 96) & ~v3;
  (*(v2 + 8))(v0 + v6, v1);

  return MEMORY[0x2821FE8E8](v0, v6 + v4, v3 | 7);
}

uint64_t sub_21CD681FC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BBB8, &qword_21CD98338) - 8);
  v5 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[10];
  v10 = v1[11];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_21CCC01B8;

  return sub_21CD60108(a1, v6, v7, v8, (v1 + 5), v9, v10, v1 + v5);
}

uint64_t sub_21CD68318(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21CCC498C;

  return sub_21CD0EF58(a1, a2, v6);
}

uint64_t sub_21CD683E0(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21CCC498C;

  return sub_21CD0EF58(a1, a2, v6);
}

uint64_t sub_21CD684A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21CCC498C;

  return sub_21CCB4178(a1, v4, v5, v6);
}

uint64_t sub_21CD68568(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21CCC498C;

  return sub_21CD0EF58(a1, a2, v6);
}

uint64_t sub_21CD68630(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21CCC01B8;

  return sub_21CCB407C(a1, v4, v5, v6);
}

uint64_t sub_21CD686F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CD68758(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21CCC498C;

  return sub_21CD678CC(a1, a2, v6);
}

uint64_t sub_21CD68820(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21CCC498C;

  return sub_21CD67ADC(a1, v4, v5, v6);
}

uint64_t objectdestroy_51Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21CD68934(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21CCC498C;

  return sub_21CD5DE0C(a1, v4, v5, v6);
}

uint64_t sub_21CD689E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentReaderSession.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CD68A4C(uint64_t a1)
{
  v4 = *(type metadata accessor for MobileDocumentReaderSession.State(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21CCC498C;

  return sub_21CD5DAF0(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_21CD68B44(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21CCC498C;

  return sub_21CD676C4(a1, v4);
}

__n128 MobileDocumentReaderSession.Error.init(code:underlyingError:debugDescription:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, __n128 *a5@<X8>)
{
  result = *a1;
  *a5 = *a1;
  a5[1].n128_u64[0] = a2;
  a5[1].n128_u64[1] = a3;
  a5[2].n128_u64[0] = a4;
  return result;
}

unint64_t sub_21CD68C5C(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x7469746E45746F6ELL;
      break;
    case 2:
    case 10:
      result = 0x5264696C61766E69;
      break;
    case 3:
      result = 0xD00000000000001DLL;
      break;
    case 4:
      result = 0x656C6C65636E6163;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x626173694463666ELL;
      break;
    case 7:
      result = 0xD00000000000001BLL;
      break;
    case 8:
      result = 0x5464696C61766E69;
      break;
    case 9:
      result = 0xD000000000000024;
      break;
    case 11:
      result = 0x65646F6373736170;
      break;
    case 12:
      result = 0x6173694432617368;
      break;
    case 13:
      result = 0xD000000000000014;
      break;
    case 14:
      result = 0xD00000000000001CLL;
      break;
    case 15:
      result = 0x456E6F6973736573;
      break;
    case 16:
      result = 0xD000000000000012;
      break;
    case 17:
      result = 0x456B726F7774656ELL;
      break;
    case 18:
      result = 0xD000000000000016;
      break;
    case 19:
      result = 0x6F70707553746F6ELL;
      break;
    case 20:
      result = 0x707553746F4E736FLL;
      break;
    case 21:
      result = 0xD00000000000001BLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21CD68F20(uint64_t a1)
{
  v2 = sub_21CD6E018();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD68F5C(uint64_t a1)
{
  v2 = sub_21CD6E018();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD68F98(uint64_t a1)
{
  v2 = sub_21CD6E06C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD68FD4(uint64_t a1)
{
  v2 = sub_21CD6E06C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD69018@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21CD6F734(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21CD6904C(uint64_t a1)
{
  v2 = sub_21CD6DA84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD69088(uint64_t a1)
{
  v2 = sub_21CD6DA84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD690C4(uint64_t a1)
{
  v2 = sub_21CD6E0C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD69100(uint64_t a1)
{
  v2 = sub_21CD6E0C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD6913C(uint64_t a1)
{
  v2 = sub_21CD6DF70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD69178(uint64_t a1)
{
  v2 = sub_21CD6DF70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD691B4(uint64_t a1)
{
  v2 = sub_21CD6DD78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD691F0(uint64_t a1)
{
  v2 = sub_21CD6DD78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD6922C(uint64_t a1)
{
  v2 = sub_21CD6DDCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD69268(uint64_t a1)
{
  v2 = sub_21CD6DDCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD692A4(uint64_t a1)
{
  v2 = sub_21CD6DBD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD692E0(uint64_t a1)
{
  v2 = sub_21CD6DBD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD6931C(uint64_t a1)
{
  v2 = sub_21CD6E114();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD69358(uint64_t a1)
{
  v2 = sub_21CD6E114();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD69394(uint64_t a1)
{
  v2 = sub_21CD6DE74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD693D0(uint64_t a1)
{
  v2 = sub_21CD6DE74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD6940C(uint64_t a1)
{
  v2 = sub_21CD6DF1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD69448(uint64_t a1)
{
  v2 = sub_21CD6DF1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD69484(uint64_t a1)
{
  v2 = sub_21CD6DC28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD694C0(uint64_t a1)
{
  v2 = sub_21CD6DC28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD694FC(uint64_t a1)
{
  v2 = sub_21CD6DFC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD69538(uint64_t a1)
{
  v2 = sub_21CD6DFC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD69574(uint64_t a1)
{
  v2 = sub_21CD6DAD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD695B0(uint64_t a1)
{
  v2 = sub_21CD6DAD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD695EC(uint64_t a1)
{
  v2 = sub_21CD6DD24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD69628(uint64_t a1)
{
  v2 = sub_21CD6DD24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD69664(uint64_t a1)
{
  v2 = sub_21CD6E168();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD696A0(uint64_t a1)
{
  v2 = sub_21CD6E168();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD696DC(uint64_t a1)
{
  v2 = sub_21CD6DB80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD69718(uint64_t a1)
{
  v2 = sub_21CD6DB80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD69754(uint64_t a1)
{
  v2 = sub_21CD6DB2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD69790(uint64_t a1)
{
  v2 = sub_21CD6DB2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD697CC(uint64_t a1)
{
  v2 = sub_21CD6DE20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD69808(uint64_t a1)
{
  v2 = sub_21CD6DE20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD69844(uint64_t a1)
{
  v2 = sub_21CD6DC7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD69880(uint64_t a1)
{
  v2 = sub_21CD6DC7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD698BC(uint64_t a1)
{
  v2 = sub_21CD6DCD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD698F8(uint64_t a1)
{
  v2 = sub_21CD6DCD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD69950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD00000000000001BLL && 0x800000021CDA16C0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_21CD841A4();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_21CD699E4(uint64_t a1)
{
  v2 = sub_21CD6DEC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD69A20(uint64_t a1)
{
  v2 = sub_21CD6DEC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD69A5C(uint64_t a1)
{
  v2 = sub_21CD6E1BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD69A98(uint64_t a1)
{
  v2 = sub_21CD6E1BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentReaderSession.Error.Code.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BC08, &qword_21CD98540);
  v127 = *(v4 - 8);
  v128 = v4;
  MEMORY[0x28223BE20](v4);
  v126 = &v66 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BC10, &qword_21CD98548);
  v124 = *(v6 - 8);
  v125 = v6;
  MEMORY[0x28223BE20](v6);
  v123 = &v66 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BC18, &qword_21CD98550);
  v121 = *(v8 - 8);
  v122 = v8;
  MEMORY[0x28223BE20](v8);
  v120 = &v66 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BC20, &qword_21CD98558);
  v118 = *(v10 - 8);
  v119 = v10;
  MEMORY[0x28223BE20](v10);
  v117 = &v66 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BC28, &qword_21CD98560);
  v115 = *(v12 - 8);
  v116 = v12;
  MEMORY[0x28223BE20](v12);
  v114 = &v66 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BC30, &qword_21CD98568);
  v112 = *(v14 - 8);
  v113 = v14;
  MEMORY[0x28223BE20](v14);
  v111 = &v66 - v15;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BC38, &qword_21CD98570);
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v108 = &v66 - v16;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BC40, &qword_21CD98578);
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v105 = &v66 - v17;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BC48, &qword_21CD98580);
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v102 = &v66 - v18;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BC50, &qword_21CD98588);
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v66 - v19;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BC58, &qword_21CD98590);
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v96 = &v66 - v20;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BC60, &qword_21CD98598);
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v93 = &v66 - v21;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BC68, &qword_21CD985A0);
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v90 = &v66 - v22;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BC70, &qword_21CD985A8);
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v87 = &v66 - v23;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BC78, &qword_21CD985B0);
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v84 = &v66 - v24;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BC80, &qword_21CD985B8);
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v81 = &v66 - v25;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BC88, &qword_21CD985C0);
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v78 = &v66 - v26;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BC90, &qword_21CD985C8);
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v75 = &v66 - v27;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BC98, &qword_21CD985D0);
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v72 = &v66 - v28;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BCA0, &qword_21CD985D8);
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v69 = &v66 - v29;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BCA8, &qword_21CD985E0);
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v31 = &v66 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BCB0, &qword_21CD985E8);
  v66 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v34 = &v66 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BCB8, &qword_21CD985F0);
  v36 = *(v35 - 8);
  v130 = v35;
  v131 = v36;
  MEMORY[0x28223BE20](v35);
  v38 = &v66 - v37;
  v39 = *(v2 + 8);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD6DA84();
  v129 = v38;
  sub_21CD842B4();
  switch(v39)
  {
    case 0:
      v133 = 0;
      sub_21CD6E1BC();
      v41 = v129;
      v40 = v130;
      sub_21CD840E4();
      (*(v66 + 8))(v34, v32);
      goto LABEL_27;
    case 1:
      v133 = 1;
      sub_21CD6E168();
      v41 = v129;
      v40 = v130;
      sub_21CD840E4();
      v46 = *(v67 + 8);
      v47 = v31;
      v48 = &v100;
      goto LABEL_23;
    case 2:
      v133 = 2;
      sub_21CD6E114();
      v53 = v69;
      v41 = v129;
      v40 = v130;
      sub_21CD840E4();
      v46 = *(v70 + 8);
      v47 = v53;
      v48 = &v103;
      goto LABEL_23;
    case 3:
      v133 = 3;
      sub_21CD6E0C0();
      v54 = v72;
      v41 = v129;
      v40 = v130;
      sub_21CD840E4();
      v46 = *(v73 + 8);
      v47 = v54;
      v48 = &v106;
      goto LABEL_23;
    case 4:
      v133 = 4;
      sub_21CD6E06C();
      v50 = v75;
      v41 = v129;
      v40 = v130;
      sub_21CD840E4();
      v46 = *(v76 + 8);
      v47 = v50;
      v48 = &v109;
      goto LABEL_23;
    case 5:
      v133 = 5;
      sub_21CD6E018();
      v56 = v78;
      v41 = v129;
      v40 = v130;
      sub_21CD840E4();
      v46 = *(v79 + 8);
      v47 = v56;
      v48 = &v112;
      goto LABEL_23;
    case 6:
      v133 = 6;
      sub_21CD6DFC4();
      v63 = v81;
      v41 = v129;
      v40 = v130;
      sub_21CD840E4();
      v46 = *(v82 + 8);
      v47 = v63;
      v48 = &v115;
      goto LABEL_23;
    case 7:
      v133 = 7;
      sub_21CD6DF70();
      v55 = v84;
      v41 = v129;
      v40 = v130;
      sub_21CD840E4();
      v46 = *(v85 + 8);
      v47 = v55;
      v48 = &v118;
      goto LABEL_23;
    case 8:
      v133 = 8;
      sub_21CD6DF1C();
      v65 = v87;
      v41 = v129;
      v40 = v130;
      sub_21CD840E4();
      v46 = *(v88 + 8);
      v47 = v65;
      v48 = &v121;
      goto LABEL_23;
    case 9:
      v133 = 10;
      sub_21CD6DE74();
      v52 = v93;
      v41 = v129;
      v40 = v130;
      sub_21CD840E4();
      v46 = *(v94 + 8);
      v47 = v52;
      v48 = &v127;
      goto LABEL_23;
    case 10:
      v133 = 11;
      sub_21CD6DE20();
      v64 = v96;
      v41 = v129;
      v40 = v130;
      sub_21CD840E4();
      v46 = *(v97 + 8);
      v47 = v64;
      v48 = &v130;
      goto LABEL_23;
    case 11:
      v133 = 12;
      sub_21CD6DDCC();
      v49 = v99;
      v41 = v129;
      v40 = v130;
      sub_21CD840E4();
      v46 = *(v100 + 8);
      v47 = v49;
      v48 = &v132;
      goto LABEL_23;
    case 12:
      v133 = 13;
      sub_21CD6DD78();
      v51 = v102;
      v41 = v129;
      v40 = v130;
      sub_21CD840E4();
      v46 = *(v103 + 8);
      v47 = v51;
      v48 = &v134;
      goto LABEL_23;
    case 13:
      v133 = 14;
      sub_21CD6DD24();
      v62 = v105;
      v41 = v129;
      v40 = v130;
      sub_21CD840E4();
      v46 = *(v106 + 8);
      v47 = v62;
      v48 = &v135;
      goto LABEL_23;
    case 14:
      v133 = 15;
      sub_21CD6DCD0();
      v45 = v108;
      v41 = v129;
      v40 = v130;
      sub_21CD840E4();
      v46 = *(v109 + 8);
      v47 = v45;
      v48 = &v136;
LABEL_23:
      v43 = *(v48 - 32);
      goto LABEL_26;
    case 15:
      v133 = 16;
      sub_21CD6DC7C();
      v42 = v111;
      v41 = v129;
      v40 = v130;
      sub_21CD840E4();
      v44 = v112;
      v43 = v113;
      goto LABEL_25;
    case 16:
      v133 = 17;
      sub_21CD6DC28();
      v42 = v114;
      v41 = v129;
      v40 = v130;
      sub_21CD840E4();
      v44 = v115;
      v43 = v116;
      goto LABEL_25;
    case 17:
      v133 = 18;
      sub_21CD6DBD4();
      v42 = v117;
      v41 = v129;
      v40 = v130;
      sub_21CD840E4();
      v44 = v118;
      v43 = v119;
      goto LABEL_25;
    case 18:
      v133 = 19;
      sub_21CD6DB80();
      v42 = v120;
      v41 = v129;
      v40 = v130;
      sub_21CD840E4();
      v44 = v121;
      v43 = v122;
      goto LABEL_25;
    case 19:
      v133 = 20;
      sub_21CD6DB2C();
      v42 = v123;
      v41 = v129;
      v40 = v130;
      sub_21CD840E4();
      v44 = v124;
      v43 = v125;
      goto LABEL_25;
    case 20:
      v133 = 21;
      sub_21CD6DAD8();
      v42 = v126;
      v41 = v129;
      v40 = v130;
      sub_21CD840E4();
      v44 = v127;
      v43 = v128;
LABEL_25:
      v46 = *(v44 + 8);
      v47 = v42;
LABEL_26:
      v46(v47, v43);
LABEL_27:
      result = (*(v131 + 8))(v41, v40);
      break;
    default:
      v133 = 9;
      sub_21CD6DEC8();
      v57 = v90;
      v59 = v129;
      v58 = v130;
      sub_21CD840E4();
      v60 = v92;
      sub_21CD84134();
      (*(v91 + 8))(v57, v60);
      result = (*(v131 + 8))(v59, v58);
      break;
  }

  return result;
}

uint64_t MobileDocumentReaderSession.Error.Code.hash(into:)(uint64_t a1)
{
  switch(*(v1 + 8))
  {
    case 0:
      v2 = 0;
      goto LABEL_26;
    case 1:
      v2 = 1;
      goto LABEL_26;
    case 2:
      v2 = 2;
      goto LABEL_26;
    case 3:
      v2 = 3;
      goto LABEL_26;
    case 4:
      v2 = 4;
      goto LABEL_26;
    case 5:
      v2 = 5;
      goto LABEL_26;
    case 6:
      v2 = 6;
      goto LABEL_26;
    case 7:
      v2 = 7;
      goto LABEL_26;
    case 8:
      v2 = 8;
      goto LABEL_26;
    case 9:
      v2 = 10;
      goto LABEL_26;
    case 0xALL:
      v2 = 11;
      goto LABEL_26;
    case 0xBLL:
      v2 = 12;
      goto LABEL_26;
    case 0xCLL:
      v2 = 13;
      goto LABEL_26;
    case 0xDLL:
      v2 = 14;
      goto LABEL_26;
    case 0xELL:
      v2 = 15;
      goto LABEL_26;
    case 0xFLL:
      v2 = 16;
      goto LABEL_26;
    case 0x10:
      v2 = 17;
      goto LABEL_26;
    case 0x11:
      v2 = 18;
      goto LABEL_26;
    case 0x12:
      v2 = 19;
      goto LABEL_26;
    case 0x13:
      v2 = 20;
      goto LABEL_26;
    case 0x14:
      v2 = 21;
LABEL_26:
      result = MEMORY[0x21CF17CC0](v2);
      break;
    default:
      MEMORY[0x21CF17CC0](9);

      result = sub_21CD83B74();
      break;
  }

  return result;
}

uint64_t MobileDocumentReaderSession.Error.Code.hashValue.getter()
{
  v3 = *v0;
  sub_21CD84264();
  MobileDocumentReaderSession.Error.Code.hash(into:)(v2);
  return sub_21CD84294();
}

uint64_t MobileDocumentReaderSession.Error.Code.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v164 = a2;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BD78, &qword_21CD985F8);
  v142 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v159 = &v96 - v3;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BD80, &qword_21CD98600);
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v158 = &v96 - v4;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BD88, &qword_21CD98608);
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v157 = &v96 - v5;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BD90, &qword_21CD98610);
  v136 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v156 = &v96 - v6;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BD98, &qword_21CD98618);
  v134 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v155 = &v96 - v7;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BDA0, &qword_21CD98620);
  v132 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v154 = &v96 - v8;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BDA8, &qword_21CD98628);
  v130 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v153 = &v96 - v9;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BDB0, &qword_21CD98630);
  v128 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v152 = &v96 - v10;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BDB8, &qword_21CD98638);
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v151 = &v96 - v11;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BDC0, &qword_21CD98640);
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v150 = &v96 - v12;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BDC8, &qword_21CD98648);
  v122 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v149 = &v96 - v13;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BDD0, &qword_21CD98650);
  v119 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v148 = &v96 - v14;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BDD8, &qword_21CD98658);
  v118 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v147 = &v96 - v15;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BDE0, &qword_21CD98660);
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v162 = &v96 - v16;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BDE8, &qword_21CD98668);
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v146 = &v96 - v17;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BDF0, &qword_21CD98670);
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v161 = &v96 - v18;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BDF8, &qword_21CD98678);
  v111 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v145 = &v96 - v19;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BE00, &qword_21CD98680);
  v109 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v144 = &v96 - v20;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BE08, &qword_21CD98688);
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v160 = &v96 - v21;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BE10, &qword_21CD98690);
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v143 = &v96 - v22;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BE18, &qword_21CD98698);
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v24 = &v96 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BE20, &qword_21CD986A0);
  v101 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v27 = &v96 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BE28, &unk_21CD986A8);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v96 - v30;
  v32 = a1[3];
  v166 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v32);
  sub_21CD6DA84();
  v33 = v165;
  sub_21CD842A4();
  if (v33)
  {
LABEL_8:
    v49 = v166;
    return __swift_destroy_boxed_opaque_existential_0(v49);
  }

  v98 = v27;
  v97 = v25;
  v99 = v24;
  v34 = v160;
  v35 = v161;
  v36 = v162;
  v100 = 0;
  v38 = v163;
  v37 = v164;
  v165 = v29;
  v39 = sub_21CD840D4();
  v40 = (2 * *(v39 + 16)) | 1;
  v167 = v39;
  v168 = v39 + 32;
  v169 = 0;
  v170 = v40;
  v41 = sub_21CCCBB98();
  if (v169 != v170 >> 1)
  {
LABEL_6:
    v46 = sub_21CD83FA4();
    swift_allocError();
    v48 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19268, &qword_21CD88F20);
    *v48 = &type metadata for MobileDocumentReaderSession.Error.Code;
    sub_21CD84044();
    sub_21CD83F94();
    (*(*(v46 - 8) + 104))(v48, *MEMORY[0x277D84160], v46);
    swift_willThrow();
LABEL_7:
    (*(v165 + 8))(v31, v28);
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  switch(v41)
  {
    case 0:
      v171 = 0;
      sub_21CD6E1BC();
      v42 = v98;
      v43 = v100;
      sub_21CD84034();
      if (v43)
      {
        goto LABEL_7;
      }

      (*(v101 + 8))(v42, v97);
      (*(v165 + 8))(v31, v28);
      swift_unknownObjectRelease();
      v44 = 0;
      v45 = 0;
      break;
    case 1:
      v171 = 1;
      sub_21CD6E168();
      v73 = v99;
      v74 = v100;
      sub_21CD84034();
      if (v74)
      {
        goto LABEL_7;
      }

      (*(v102 + 8))(v73, v103);
      (*(v165 + 8))(v31, v28);
      swift_unknownObjectRelease();
      v44 = 0;
      v45 = 1;
      break;
    case 2:
      v171 = 2;
      sub_21CD6E114();
      v66 = v143;
      v67 = v100;
      sub_21CD84034();
      if (v67)
      {
        goto LABEL_7;
      }

      (*(v104 + 8))(v66, v105);
      (*(v165 + 8))(v31, v28);
      swift_unknownObjectRelease();
      v44 = 0;
      v45 = 2;
      break;
    case 3:
      v171 = 3;
      sub_21CD6E0C0();
      v70 = v100;
      sub_21CD84034();
      if (v70)
      {
        goto LABEL_7;
      }

      (*(v107 + 8))(v34, v108);
      (*(v165 + 8))(v31, v28);
      swift_unknownObjectRelease();
      v44 = 0;
      v45 = 3;
      break;
    case 4:
      v171 = 4;
      sub_21CD6E06C();
      v57 = v144;
      v58 = v100;
      sub_21CD84034();
      if (v58)
      {
        goto LABEL_7;
      }

      (*(v109 + 8))(v57, v106);
      (*(v165 + 8))(v31, v28);
      swift_unknownObjectRelease();
      v44 = 0;
      v45 = 4;
      break;
    case 5:
      v171 = 5;
      sub_21CD6E018();
      v79 = v145;
      v80 = v100;
      sub_21CD84034();
      if (v80)
      {
        goto LABEL_7;
      }

      (*(v111 + 8))(v79, v110);
      (*(v165 + 8))(v31, v28);
      swift_unknownObjectRelease();
      v44 = 0;
      v45 = 5;
      break;
    case 6:
      v171 = 6;
      sub_21CD6DFC4();
      v85 = v100;
      sub_21CD84034();
      if (v85)
      {
        goto LABEL_7;
      }

      (*(v112 + 8))(v35, v113);
      (*(v165 + 8))(v31, v28);
      swift_unknownObjectRelease();
      v44 = 0;
      v45 = 6;
      break;
    case 7:
      v171 = 7;
      sub_21CD6DF70();
      v71 = v146;
      v72 = v100;
      sub_21CD84034();
      if (v72)
      {
        goto LABEL_7;
      }

      (*(v114 + 8))(v71, v115);
      (*(v165 + 8))(v31, v28);
      swift_unknownObjectRelease();
      v44 = 0;
      v45 = 7;
      break;
    case 8:
      v171 = 8;
      sub_21CD6DF1C();
      v90 = v100;
      sub_21CD84034();
      if (v90)
      {
        goto LABEL_7;
      }

      (*(v116 + 8))(v36, v117);
      (*(v165 + 8))(v31, v28);
      swift_unknownObjectRelease();
      v44 = 0;
      v45 = 8;
      break;
    case 9:
      v171 = 9;
      sub_21CD6DEC8();
      v61 = v147;
      v62 = v100;
      sub_21CD84034();
      if (v62)
      {
        goto LABEL_7;
      }

      v63 = v120;
      v64 = sub_21CD84094();
      v65 = v165;
      v93 = v64;
      v95 = v94;
      (*(v118 + 8))(v61, v63);
      (*(v65 + 8))(v31, v28);
      swift_unknownObjectRelease();
      v45 = v95;
      v44 = v93;
      break;
    case 10:
      v171 = 10;
      sub_21CD6DE74();
      v88 = v148;
      v89 = v100;
      sub_21CD84034();
      if (v89)
      {
        goto LABEL_7;
      }

      (*(v119 + 8))(v88, v121);
      (*(v165 + 8))(v31, v28);
      swift_unknownObjectRelease();
      v44 = 0;
      v45 = 9;
      break;
    case 11:
      v171 = 11;
      sub_21CD6DE20();
      v55 = v149;
      v56 = v100;
      sub_21CD84034();
      if (v56)
      {
        goto LABEL_7;
      }

      (*(v122 + 8))(v55, v123);
      (*(v165 + 8))(v31, v28);
      swift_unknownObjectRelease();
      v44 = 0;
      v45 = 10;
      break;
    case 12:
      v171 = 12;
      sub_21CD6DDCC();
      v59 = v150;
      v60 = v100;
      sub_21CD84034();
      if (v60)
      {
        goto LABEL_7;
      }

      (*(v124 + 8))(v59, v125);
      (*(v165 + 8))(v31, v28);
      swift_unknownObjectRelease();
      v44 = 0;
      v45 = 11;
      break;
    case 13:
      v171 = 13;
      sub_21CD6DD78();
      v83 = v151;
      v84 = v100;
      sub_21CD84034();
      if (v84)
      {
        goto LABEL_7;
      }

      (*(v126 + 8))(v83, v127);
      (*(v165 + 8))(v31, v28);
      swift_unknownObjectRelease();
      v44 = 0;
      v45 = 12;
      break;
    case 14:
      v171 = 14;
      sub_21CD6DD24();
      v53 = v152;
      v54 = v100;
      sub_21CD84034();
      if (v54)
      {
        goto LABEL_7;
      }

      (*(v128 + 8))(v53, v129);
      (*(v165 + 8))(v31, v28);
      swift_unknownObjectRelease();
      v44 = 0;
      v45 = 13;
      break;
    case 15:
      v171 = 15;
      sub_21CD6DCD0();
      v68 = v153;
      v69 = v100;
      sub_21CD84034();
      if (v69)
      {
        goto LABEL_7;
      }

      (*(v130 + 8))(v68, v131);
      (*(v165 + 8))(v31, v28);
      swift_unknownObjectRelease();
      v44 = 0;
      v45 = 14;
      break;
    case 16:
      v171 = 16;
      sub_21CD6DC7C();
      v51 = v154;
      v52 = v100;
      sub_21CD84034();
      if (v52)
      {
        goto LABEL_7;
      }

      (*(v132 + 8))(v51, v133);
      (*(v165 + 8))(v31, v28);
      swift_unknownObjectRelease();
      v44 = 0;
      v45 = 15;
      break;
    case 17:
      v171 = 17;
      sub_21CD6DC28();
      v75 = v155;
      v76 = v100;
      sub_21CD84034();
      if (v76)
      {
        goto LABEL_7;
      }

      (*(v134 + 8))(v75, v135);
      (*(v165 + 8))(v31, v28);
      swift_unknownObjectRelease();
      v44 = 0;
      v45 = 16;
      break;
    case 18:
      v171 = 18;
      sub_21CD6DBD4();
      v86 = v156;
      v87 = v100;
      sub_21CD84034();
      if (v87)
      {
        goto LABEL_7;
      }

      (*(v136 + 8))(v86, v137);
      (*(v165 + 8))(v31, v28);
      swift_unknownObjectRelease();
      v44 = 0;
      v45 = 17;
      break;
    case 19:
      v171 = 19;
      sub_21CD6DB80();
      v91 = v157;
      v92 = v100;
      sub_21CD84034();
      if (v92)
      {
        goto LABEL_7;
      }

      (*(v138 + 8))(v91, v139);
      (*(v165 + 8))(v31, v28);
      swift_unknownObjectRelease();
      v44 = 0;
      v45 = 18;
      break;
    case 20:
      v171 = 20;
      sub_21CD6DB2C();
      v77 = v158;
      v78 = v100;
      sub_21CD84034();
      if (v78)
      {
        goto LABEL_7;
      }

      (*(v140 + 8))(v77, v141);
      (*(v165 + 8))(v31, v28);
      swift_unknownObjectRelease();
      v44 = 0;
      v45 = 19;
      break;
    case 21:
      v171 = 21;
      sub_21CD6DAD8();
      v81 = v159;
      v82 = v100;
      sub_21CD84034();
      if (v82)
      {
        goto LABEL_7;
      }

      (*(v142 + 8))(v81, v38);
      (*(v165 + 8))(v31, v28);
      swift_unknownObjectRelease();
      v44 = 0;
      v45 = 20;
      break;
    default:
      goto LABEL_6;
  }

  v49 = v166;
  *v37 = v44;
  v37[1] = v45;
  return __swift_destroy_boxed_opaque_existential_0(v49);
}

uint64_t sub_21CD6CCD4()
{
  v3 = *v0;
  sub_21CD84264();
  MobileDocumentReaderSession.Error.Code.hash(into:)(v2);
  return sub_21CD84294();
}

uint64_t sub_21CD6CD24()
{
  v3 = *v0;
  sub_21CD84264();
  MobileDocumentReaderSession.Error.Code.hash(into:)(v2);
  return sub_21CD84294();
}

uint64_t MobileDocumentReaderSession.Error.code.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_21CD6E210(v2, v3);
}

void *MobileDocumentReaderSession.Error.underlyingError.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t MobileDocumentReaderSession.Error.debugDescription.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t MobileDocumentReaderSession.Error.debugDescription.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t MobileDocumentReaderSession.Error.init(_bridgedNSError:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 domain];
  v5 = sub_21CD83B24();
  v7 = v6;

  sub_21CD6E224();
  if (v5 == sub_21CD834B4() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_21CD841A4();

    if ((v10 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v12 = [a1 userInfo];
  v13 = sub_21CD83A24();

  if (!*(v13 + 16) || (v14 = sub_21CCA996C(0xD00000000000002ALL, 0x800000021CDA1560), (v15 & 1) == 0))
  {

    goto LABEL_13;
  }

  sub_21CCB15A8(*(v13 + 56) + 32 * v14, v41);

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_13:
    *a2 = 0;
    a2[1] = 0;
    a2[3] = 0;
    a2[4] = 0;
    a2[2] = 1;
    return result;
  }

  sub_21CD83574();
  swift_allocObject();
  sub_21CD83564();
  sub_21CD6E278();
  sub_21CD83554();

  v16 = v41[0];
  v17 = v41[1];
  v18 = [a1 code];
  if (v17 > 0x14)
  {
    if (v18 != 9)
    {
      goto LABEL_16;
    }
  }

  else if (v18 != qword_21CD99B90[v17])
  {
LABEL_16:
    sub_21CD6E2CC(v16, v17);
    result = sub_21CCB1880(v39, v40);
    goto LABEL_13;
  }

  v38 = v16;
  v19 = [a1 userInfo];
  v20 = sub_21CD83A24();

  v21 = sub_21CD83B24();
  if (!*(v20 + 16))
  {

    goto LABEL_24;
  }

  v37 = sub_21CCA996C(v21, v22);
  v24 = v23;

  if ((v24 & 1) == 0)
  {
LABEL_24:

    v25 = 0;
    goto LABEL_25;
  }

  sub_21CCB15A8(*(v20 + 56) + 32 * v37, v41);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
  if (swift_dynamicCast())
  {
    v25 = v39;
  }

  else
  {
    v25 = 0;
  }

LABEL_25:
  v26 = [a1 userInfo];
  v27 = sub_21CD83A24();

  v28 = sub_21CD83B24();
  if (*(v27 + 16))
  {
    v30 = sub_21CCA996C(v28, v29);
    v32 = v31;

    if (v32)
    {
      sub_21CCB15A8(*(v27 + 56) + 32 * v30, v41);
      sub_21CCB1880(v39, v40);

      v33 = swift_dynamicCast();
      v34 = v39;
      if (v33)
      {
        v35 = v40;
      }

      else
      {
        v34 = 0;
        v35 = 0;
      }

      goto LABEL_33;
    }

    sub_21CCB1880(v39, v40);
  }

  else
  {
    sub_21CCB1880(v39, v40);
  }

  v34 = 0;
  v35 = 0;
LABEL_33:
  *a2 = v38;
  a2[1] = v17;
  a2[2] = v25;
  a2[3] = v34;
  a2[4] = v35;
  sub_21CD6E210(v38, v17);
  v36 = v25;

  sub_21CD6E2CC(v38, v17);
}

uint64_t MobileDocumentReaderSession.Error.errorCode.getter()
{
  v1 = *(v0 + 8);
  if (v1 > 0x14)
  {
    return 9;
  }

  else
  {
    return qword_21CD99B90[v1];
  }
}

uint64_t MobileDocumentReaderSession.Error.errorUserInfo.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = MEMORY[0x277D84F98];
  v32 = MEMORY[0x277D84F98];
  sub_21CD835A4();
  swift_allocObject();
  sub_21CD6E210(v1, v2);
  sub_21CD83594();
  *(&v30 + 1) = v2;
  sub_21CD6E2E0();
  v7 = sub_21CD83584();
  v9 = v8;
  sub_21CD6E2CC(v1, *(&v30 + 1));

  v31 = MEMORY[0x277CC9318];
  *&v30 = v7;
  *(&v30 + 1) = v9;
  sub_21CCB2190(&v30, v27);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_21CD113FC(v27, 0xD00000000000002ALL, 0x800000021CDA1560, isUniquelyReferenced_nonNull_native);
  v32 = v6;
  v11 = sub_21CD83B24();
  v13 = v11;
  v14 = v12;
  if (v5)
  {
    v31 = MEMORY[0x277D837D0];
    *&v30 = v4;
    *(&v30 + 1) = v5;
    sub_21CCB2190(&v30, v27);

    v15 = v32;
    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_21CD113FC(v27, v13, v14, v16);

    v32 = v15;
  }

  else
  {
    sub_21CD10E64(v11, v12, &v30);

    sub_21CCC947C(&v30);
  }

  v17 = sub_21CD83B24();
  v19 = v17;
  v20 = v18;
  if (v3)
  {
    swift_getErrorValue();
    v21 = v28;
    v22 = v29;
    v31 = v29;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v30);
    (*(*(v22 - 8) + 16))(boxed_opaque_existential_0, v21, v22);
    sub_21CCB2190(&v30, v27);
    v24 = v32;
    v25 = swift_isUniquelyReferenced_nonNull_native();
    sub_21CD113FC(v27, v19, v20, v25);

    return v24;
  }

  else
  {
    sub_21CD10E64(v17, v18, &v30);

    sub_21CCC947C(&v30);
    return v32;
  }
}

uint64_t sub_21CD6D60C()
{
  v1 = *(v0 + 8);
  if (v1 > 0x14)
  {
    return 9;
  }

  else
  {
    return qword_21CD99B90[v1];
  }
}

uint64_t sub_21CD6D638(uint64_t a1)
{
  v2 = sub_21CD6E224();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_21CD6D674(uint64_t a1)
{
  v2 = sub_21CD6E224();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t _s7CoreIDV27MobileDocumentReaderSessionC5ErrorV4CodeO2eeoiySbAG_AGtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  switch(v3)
  {
    case 0uLL:
      if (v5)
      {
        goto LABEL_50;
      }

      sub_21CD6E2CC(*a1, 0);
      v6 = v4;
      v7 = 0;
      goto LABEL_52;
    case 1uLL:
      if (v5 != 1)
      {
        goto LABEL_50;
      }

      v8 = 1;
      sub_21CD6E2CC(*a1, 1uLL);
      sub_21CD6E2CC(v4, 1uLL);
      return v8;
    case 2uLL:
      if (v5 != 2)
      {
        goto LABEL_50;
      }

      sub_21CD6E2CC(*a1, 2uLL);
      v6 = v4;
      v7 = 2;
      goto LABEL_52;
    case 3uLL:
      if (v5 != 3)
      {
        goto LABEL_50;
      }

      sub_21CD6E2CC(*a1, 3uLL);
      v6 = v4;
      v7 = 3;
      goto LABEL_52;
    case 4uLL:
      if (v5 != 4)
      {
        goto LABEL_50;
      }

      sub_21CD6E2CC(*a1, 4uLL);
      v6 = v4;
      v7 = 4;
      goto LABEL_52;
    case 5uLL:
      if (v5 != 5)
      {
        goto LABEL_50;
      }

      sub_21CD6E2CC(*a1, 5uLL);
      v6 = v4;
      v7 = 5;
      goto LABEL_52;
    case 6uLL:
      if (v5 != 6)
      {
        goto LABEL_50;
      }

      sub_21CD6E2CC(*a1, 6uLL);
      v6 = v4;
      v7 = 6;
      goto LABEL_52;
    case 7uLL:
      if (v5 != 7)
      {
        goto LABEL_50;
      }

      sub_21CD6E2CC(*a1, 7uLL);
      v6 = v4;
      v7 = 7;
      goto LABEL_52;
    case 8uLL:
      if (v5 != 8)
      {
        goto LABEL_50;
      }

      sub_21CD6E2CC(*a1, 8uLL);
      v6 = v4;
      v7 = 8;
      goto LABEL_52;
    case 9uLL:
      if (v5 != 9)
      {
        goto LABEL_50;
      }

      sub_21CD6E2CC(*a1, 9uLL);
      v6 = v4;
      v7 = 9;
      goto LABEL_52;
    case 0xAuLL:
      if (v5 != 10)
      {
        goto LABEL_50;
      }

      sub_21CD6E2CC(*a1, 0xAuLL);
      v6 = v4;
      v7 = 10;
      goto LABEL_52;
    case 0xBuLL:
      if (v5 != 11)
      {
        goto LABEL_50;
      }

      sub_21CD6E2CC(*a1, 0xBuLL);
      v6 = v4;
      v7 = 11;
      goto LABEL_52;
    case 0xCuLL:
      if (v5 != 12)
      {
        goto LABEL_50;
      }

      sub_21CD6E2CC(*a1, 0xCuLL);
      v6 = v4;
      v7 = 12;
      goto LABEL_52;
    case 0xDuLL:
      if (v5 != 13)
      {
        goto LABEL_50;
      }

      sub_21CD6E2CC(*a1, 0xDuLL);
      v6 = v4;
      v7 = 13;
      goto LABEL_52;
    case 0xEuLL:
      if (v5 != 14)
      {
        goto LABEL_50;
      }

      sub_21CD6E2CC(*a1, 0xEuLL);
      v6 = v4;
      v7 = 14;
      goto LABEL_52;
    case 0xFuLL:
      if (v5 != 15)
      {
        goto LABEL_50;
      }

      sub_21CD6E2CC(*a1, 0xFuLL);
      v6 = v4;
      v7 = 15;
      goto LABEL_52;
    case 0x10uLL:
      if (v5 != 16)
      {
        goto LABEL_50;
      }

      sub_21CD6E2CC(*a1, 0x10uLL);
      v6 = v4;
      v7 = 16;
      goto LABEL_52;
    case 0x11uLL:
      if (v5 != 17)
      {
        goto LABEL_50;
      }

      sub_21CD6E2CC(*a1, 0x11uLL);
      v6 = v4;
      v7 = 17;
      goto LABEL_52;
    case 0x12uLL:
      if (v5 != 18)
      {
        goto LABEL_50;
      }

      sub_21CD6E2CC(*a1, 0x12uLL);
      v6 = v4;
      v7 = 18;
      goto LABEL_52;
    case 0x13uLL:
      if (v5 != 19)
      {
        goto LABEL_50;
      }

      sub_21CD6E2CC(*a1, 0x13uLL);
      v6 = v4;
      v7 = 19;
      goto LABEL_52;
    case 0x14uLL:
      if (v5 != 20)
      {
        goto LABEL_50;
      }

      sub_21CD6E2CC(*a1, 0x14uLL);
      v6 = v4;
      v7 = 20;
      goto LABEL_52;
    default:
      if (v5 < 0x15)
      {
LABEL_50:
        sub_21CD6E210(*a2, a2[1]);
        sub_21CD6E210(v2, v3);
        sub_21CD6E2CC(v2, v3);
        sub_21CD6E2CC(v4, v5);
        return 0;
      }

      else
      {
        v9 = *a1;
        if (v2 != v4 || v3 != v5)
        {
          v11 = sub_21CD841A4();
          sub_21CD6E210(v4, v5);
          sub_21CD6E210(v2, v3);
          sub_21CD6E2CC(v2, v3);
          sub_21CD6E2CC(v4, v5);
          return v11 & 1;
        }

        sub_21CD6E210(v9, v3);
        sub_21CD6E210(v2, v3);
        sub_21CD6E2CC(v2, v3);
        v6 = v2;
        v7 = v3;
LABEL_52:
        sub_21CD6E2CC(v6, v7);
        return 1;
      }
  }
}

unint64_t sub_21CD6DA84()
{
  result = qword_27CE1BCC0;
  if (!qword_27CE1BCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BCC0);
  }

  return result;
}

unint64_t sub_21CD6DAD8()
{
  result = qword_27CE1BCC8;
  if (!qword_27CE1BCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BCC8);
  }

  return result;
}

unint64_t sub_21CD6DB2C()
{
  result = qword_27CE1BCD0;
  if (!qword_27CE1BCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BCD0);
  }

  return result;
}

unint64_t sub_21CD6DB80()
{
  result = qword_27CE1BCD8;
  if (!qword_27CE1BCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BCD8);
  }

  return result;
}

unint64_t sub_21CD6DBD4()
{
  result = qword_27CE1BCE0;
  if (!qword_27CE1BCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BCE0);
  }

  return result;
}

unint64_t sub_21CD6DC28()
{
  result = qword_27CE1BCE8;
  if (!qword_27CE1BCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BCE8);
  }

  return result;
}

unint64_t sub_21CD6DC7C()
{
  result = qword_27CE1BCF0;
  if (!qword_27CE1BCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BCF0);
  }

  return result;
}

unint64_t sub_21CD6DCD0()
{
  result = qword_27CE1BCF8;
  if (!qword_27CE1BCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BCF8);
  }

  return result;
}

unint64_t sub_21CD6DD24()
{
  result = qword_27CE1BD00;
  if (!qword_27CE1BD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BD00);
  }

  return result;
}

unint64_t sub_21CD6DD78()
{
  result = qword_27CE1BD08;
  if (!qword_27CE1BD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BD08);
  }

  return result;
}

unint64_t sub_21CD6DDCC()
{
  result = qword_27CE1BD10;
  if (!qword_27CE1BD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BD10);
  }

  return result;
}

unint64_t sub_21CD6DE20()
{
  result = qword_27CE1BD18;
  if (!qword_27CE1BD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BD18);
  }

  return result;
}

unint64_t sub_21CD6DE74()
{
  result = qword_27CE1BD20;
  if (!qword_27CE1BD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BD20);
  }

  return result;
}

unint64_t sub_21CD6DEC8()
{
  result = qword_27CE1BD28;
  if (!qword_27CE1BD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BD28);
  }

  return result;
}

unint64_t sub_21CD6DF1C()
{
  result = qword_27CE1BD30;
  if (!qword_27CE1BD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BD30);
  }

  return result;
}

unint64_t sub_21CD6DF70()
{
  result = qword_27CE1BD38;
  if (!qword_27CE1BD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BD38);
  }

  return result;
}

unint64_t sub_21CD6DFC4()
{
  result = qword_27CE1BD40;
  if (!qword_27CE1BD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BD40);
  }

  return result;
}

unint64_t sub_21CD6E018()
{
  result = qword_27CE1BD48;
  if (!qword_27CE1BD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BD48);
  }

  return result;
}

unint64_t sub_21CD6E06C()
{
  result = qword_27CE1BD50;
  if (!qword_27CE1BD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BD50);
  }

  return result;
}

unint64_t sub_21CD6E0C0()
{
  result = qword_27CE1BD58;
  if (!qword_27CE1BD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BD58);
  }

  return result;
}

unint64_t sub_21CD6E114()
{
  result = qword_27CE1BD60;
  if (!qword_27CE1BD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BD60);
  }

  return result;
}

unint64_t sub_21CD6E168()
{
  result = qword_27CE1BD68;
  if (!qword_27CE1BD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BD68);
  }

  return result;
}

unint64_t sub_21CD6E1BC()
{
  result = qword_27CE1BD70;
  if (!qword_27CE1BD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BD70);
  }

  return result;
}

uint64_t sub_21CD6E210(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x15)
  {
  }

  return result;
}

unint64_t sub_21CD6E224()
{
  result = qword_27CE1BE30;
  if (!qword_27CE1BE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BE30);
  }

  return result;
}

unint64_t sub_21CD6E278()
{
  result = qword_27CE1BE38;
  if (!qword_27CE1BE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BE38);
  }

  return result;
}

uint64_t sub_21CD6E2CC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x15)
  {
  }

  return result;
}

unint64_t sub_21CD6E2E0()
{
  result = qword_27CE1BE40;
  if (!qword_27CE1BE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BE40);
  }

  return result;
}

unint64_t sub_21CD6E338()
{
  result = qword_27CE1BE48;
  if (!qword_27CE1BE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BE48);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7CoreIDV27MobileDocumentReaderSessionC5ErrorV4CodeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21CD6E3A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_21CD6E400(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_21CD6E46C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFEA && *(a1 + 16))
  {
    return (*a1 + 2147483627);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 20;
  if (v4 >= 0x16)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21CD6E4C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFEB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483627;
    if (a3 >= 0x7FFFFFEB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFEB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 20;
    }
  }

  return result;
}

void *sub_21CD6E514(void *result, int a2)
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

unint64_t sub_21CD6E6B8()
{
  result = qword_27CE1BE50;
  if (!qword_27CE1BE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BE50);
  }

  return result;
}

unint64_t sub_21CD6E710()
{
  result = qword_27CE1BE58;
  if (!qword_27CE1BE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BE58);
  }

  return result;
}

unint64_t sub_21CD6E768()
{
  result = qword_27CE1BE60;
  if (!qword_27CE1BE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BE60);
  }

  return result;
}

unint64_t sub_21CD6E7C0()
{
  result = qword_27CE1BE68;
  if (!qword_27CE1BE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BE68);
  }

  return result;
}

unint64_t sub_21CD6E818()
{
  result = qword_27CE1BE70;
  if (!qword_27CE1BE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BE70);
  }

  return result;
}

unint64_t sub_21CD6E870()
{
  result = qword_27CE1BE78;
  if (!qword_27CE1BE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BE78);
  }

  return result;
}

unint64_t sub_21CD6E8C8()
{
  result = qword_27CE1BE80;
  if (!qword_27CE1BE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BE80);
  }

  return result;
}

unint64_t sub_21CD6E920()
{
  result = qword_27CE1BE88;
  if (!qword_27CE1BE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BE88);
  }

  return result;
}

unint64_t sub_21CD6E978()
{
  result = qword_27CE1BE90;
  if (!qword_27CE1BE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BE90);
  }

  return result;
}

unint64_t sub_21CD6E9D0()
{
  result = qword_27CE1BE98;
  if (!qword_27CE1BE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BE98);
  }

  return result;
}

unint64_t sub_21CD6EA28()
{
  result = qword_27CE1BEA0;
  if (!qword_27CE1BEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BEA0);
  }

  return result;
}

unint64_t sub_21CD6EA80()
{
  result = qword_27CE1BEA8;
  if (!qword_27CE1BEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BEA8);
  }

  return result;
}

unint64_t sub_21CD6EAD8()
{
  result = qword_27CE1BEB0;
  if (!qword_27CE1BEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BEB0);
  }

  return result;
}

unint64_t sub_21CD6EB30()
{
  result = qword_27CE1BEB8;
  if (!qword_27CE1BEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BEB8);
  }

  return result;
}

unint64_t sub_21CD6EB88()
{
  result = qword_27CE1BEC0;
  if (!qword_27CE1BEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BEC0);
  }

  return result;
}

unint64_t sub_21CD6EBE0()
{
  result = qword_27CE1BEC8;
  if (!qword_27CE1BEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BEC8);
  }

  return result;
}

unint64_t sub_21CD6EC38()
{
  result = qword_27CE1BED0;
  if (!qword_27CE1BED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BED0);
  }

  return result;
}

unint64_t sub_21CD6EC90()
{
  result = qword_27CE1BED8;
  if (!qword_27CE1BED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BED8);
  }

  return result;
}

unint64_t sub_21CD6ECE8()
{
  result = qword_27CE1BEE0;
  if (!qword_27CE1BEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BEE0);
  }

  return result;
}

unint64_t sub_21CD6ED40()
{
  result = qword_27CE1BEE8;
  if (!qword_27CE1BEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BEE8);
  }

  return result;
}

unint64_t sub_21CD6ED98()
{
  result = qword_27CE1BEF0;
  if (!qword_27CE1BEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BEF0);
  }

  return result;
}

unint64_t sub_21CD6EDF0()
{
  result = qword_27CE1BEF8;
  if (!qword_27CE1BEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BEF8);
  }

  return result;
}

unint64_t sub_21CD6EE48()
{
  result = qword_27CE1BF00;
  if (!qword_27CE1BF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BF00);
  }

  return result;
}

unint64_t sub_21CD6EEA0()
{
  result = qword_27CE1BF08;
  if (!qword_27CE1BF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BF08);
  }

  return result;
}

unint64_t sub_21CD6EEF8()
{
  result = qword_27CE1BF10;
  if (!qword_27CE1BF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BF10);
  }

  return result;
}

unint64_t sub_21CD6EF50()
{
  result = qword_27CE1BF18;
  if (!qword_27CE1BF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BF18);
  }

  return result;
}

unint64_t sub_21CD6EFA8()
{
  result = qword_27CE1BF20;
  if (!qword_27CE1BF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BF20);
  }

  return result;
}

unint64_t sub_21CD6F000()
{
  result = qword_27CE1BF28;
  if (!qword_27CE1BF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BF28);
  }

  return result;
}

unint64_t sub_21CD6F058()
{
  result = qword_27CE1BF30;
  if (!qword_27CE1BF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BF30);
  }

  return result;
}

unint64_t sub_21CD6F0B0()
{
  result = qword_27CE1BF38;
  if (!qword_27CE1BF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BF38);
  }

  return result;
}

unint64_t sub_21CD6F108()
{
  result = qword_27CE1BF40;
  if (!qword_27CE1BF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BF40);
  }

  return result;
}

unint64_t sub_21CD6F160()
{
  result = qword_27CE1BF48;
  if (!qword_27CE1BF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BF48);
  }

  return result;
}

unint64_t sub_21CD6F1B8()
{
  result = qword_27CE1BF50;
  if (!qword_27CE1BF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BF50);
  }

  return result;
}

unint64_t sub_21CD6F210()
{
  result = qword_27CE1BF58;
  if (!qword_27CE1BF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BF58);
  }

  return result;
}

unint64_t sub_21CD6F268()
{
  result = qword_27CE1BF60;
  if (!qword_27CE1BF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BF60);
  }

  return result;
}

unint64_t sub_21CD6F2C0()
{
  result = qword_27CE1BF68;
  if (!qword_27CE1BF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BF68);
  }

  return result;
}

unint64_t sub_21CD6F318()
{
  result = qword_27CE1BF70;
  if (!qword_27CE1BF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BF70);
  }

  return result;
}

unint64_t sub_21CD6F370()
{
  result = qword_27CE1BF78;
  if (!qword_27CE1BF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BF78);
  }

  return result;
}

unint64_t sub_21CD6F3C8()
{
  result = qword_27CE1BF80;
  if (!qword_27CE1BF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BF80);
  }

  return result;
}

unint64_t sub_21CD6F420()
{
  result = qword_27CE1BF88;
  if (!qword_27CE1BF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BF88);
  }

  return result;
}

unint64_t sub_21CD6F478()
{
  result = qword_27CE1BF90;
  if (!qword_27CE1BF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BF90);
  }

  return result;
}

unint64_t sub_21CD6F4D0()
{
  result = qword_27CE1BF98;
  if (!qword_27CE1BF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BF98);
  }

  return result;
}

unint64_t sub_21CD6F528()
{
  result = qword_27CE1BFA0;
  if (!qword_27CE1BFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BFA0);
  }

  return result;
}

unint64_t sub_21CD6F580()
{
  result = qword_27CE1BFA8;
  if (!qword_27CE1BFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BFA8);
  }

  return result;
}

unint64_t sub_21CD6F5D8()
{
  result = qword_27CE1BFB0;
  if (!qword_27CE1BFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BFB0);
  }

  return result;
}

unint64_t sub_21CD6F630()
{
  result = qword_27CE1BFB8;
  if (!qword_27CE1BFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BFB8);
  }

  return result;
}

unint64_t sub_21CD6F688()
{
  result = qword_27CE1BFC0;
  if (!qword_27CE1BFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BFC0);
  }

  return result;
}

unint64_t sub_21CD6F6E0()
{
  result = qword_27CE1BFC8;
  if (!qword_27CE1BFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BFC8);
  }

  return result;
}

uint64_t sub_21CD6F734(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_21CD841A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7469746E45746F6ELL && a2 == 0xEB0000000064656CLL || (sub_21CD841A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5264696C61766E69 && a2 == 0xEE00747365757165 || (sub_21CD841A4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000021CDA1590 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C6C65636E6163 && a2 == 0xE900000000000064 || (sub_21CD841A4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000021CDA15B0 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x626173694463666ELL && a2 == 0xEB0000000064656CLL || (sub_21CD841A4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000021CDA15D0 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x5464696C61766E69 && a2 == 0xEC0000006E656B6FLL || (sub_21CD841A4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000024 && 0x800000021CDA15F0 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x5264696C61766E69 && a2 == 0xEF65736E6F707365 || (sub_21CD841A4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x65646F6373736170 && a2 == 0xEE00746553746F4ELL || (sub_21CD841A4() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6173694432617368 && a2 == 0xEC00000064656C62 || (sub_21CD841A4() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000014 && 0x800000021CDA1620 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000021CDA1640 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x456E6F6973736573 && a2 == 0xEE00646572697078 || (sub_21CD841A4() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000012 && 0x800000021CDA1660 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x456B726F7774656ELL && a2 == 0xEC000000726F7272 || (sub_21CD841A4() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000016 && 0x800000021CDA1680 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x6F70707553746F6ELL && a2 == 0xEC00000064657472 || (sub_21CD841A4() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x707553746F4E736FLL && a2 == 0xEE00646574726F70 || (sub_21CD841A4() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000021CDA16A0 == a2)
  {

    return 21;
  }

  else
  {
    v6 = sub_21CD841A4();

    if (v6)
    {
      return 21;
    }

    else
    {
      return 22;
    }
  }
}

uint64_t sub_21CD6FE2C(uint64_t a1)
{
  v2 = sub_21CD71AE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD6FE68(uint64_t a1)
{
  v2 = sub_21CD71AE8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_21CD6FEA4()
{
  v1 = 0x7964616572;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0x64656873696E6966;
  }

  if (*v0)
  {
    v1 = 0x697463656E6E6F63;
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

uint64_t sub_21CD6FF24@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21CD721CC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21CD6FF4C(uint64_t a1)
{
  v2 = sub_21CD719DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD6FF88(uint64_t a1)
{
  v2 = sub_21CD719DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD6FFC4(uint64_t a1)
{
  v2 = sub_21CD71B3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD70000(uint64_t a1)
{
  v2 = sub_21CD71B3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD7003C(uint64_t a1)
{
  v2 = sub_21CD71A94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD70078(uint64_t a1)
{
  v2 = sub_21CD71A94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD700B4(uint64_t a1)
{
  v2 = sub_21CD71B90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD700F0(uint64_t a1)
{
  v2 = sub_21CD71B90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentReaderSession.State.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BFD0, &qword_21CD99C40);
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x28223BE20](v2);
  v39 = &v30 - v3;
  v4 = type metadata accessor for MobileDocumentReaderResponse(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v38 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BFD8, &qword_21CD99C48);
  v36 = *(v7 - 8);
  v37 = v7;
  MEMORY[0x28223BE20](v7);
  v35 = &v30 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BFE0, &qword_21CD99C50);
  v33 = *(v9 - 8);
  v34 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BFE8, &qword_21CD99C58);
  v31 = *(v12 - 8);
  v32 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - v13;
  v15 = type metadata accessor for MobileDocumentReaderSession.State(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BFF0, &qword_21CD99C60);
  v43 = *(v18 - 8);
  v44 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD719DC();
  sub_21CD842B4();
  sub_21CD71A30(v42, v17);
  v21 = (*(v5 + 48))(v17, 3, v4);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v46 = 1;
      sub_21CD71B3C();
      v27 = v44;
      sub_21CD840E4();
      (*(v33 + 8))(v11, v34);
    }

    else
    {
      v47 = 2;
      sub_21CD71AE8();
      v29 = v35;
      v27 = v44;
      sub_21CD840E4();
      (*(v36 + 8))(v29, v37);
    }

    return (*(v43 + 8))(v20, v27);
  }

  else if (v21)
  {
    v45 = 0;
    sub_21CD71B90();
    v28 = v44;
    sub_21CD840E4();
    (*(v31 + 8))(v14, v32);
    return (*(v43 + 8))(v20, v28);
  }

  else
  {
    v22 = v38;
    sub_21CD71BE4(v17, v38, type metadata accessor for MobileDocumentReaderResponse);
    v48 = 3;
    sub_21CD71A94();
    v23 = v39;
    v24 = v44;
    sub_21CD840E4();
    sub_21CD71C94(&unk_27CE1AA30, type metadata accessor for MobileDocumentReaderResponse, &protocol conformance descriptor for MobileDocumentReaderResponse);
    v25 = v41;
    sub_21CD84164();
    (*(v40 + 8))(v23, v25);
    sub_21CD723A4(v22, type metadata accessor for MobileDocumentReaderResponse);
    return (*(v43 + 8))(v20, v24);
  }
}

uint64_t MobileDocumentReaderSession.State.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MobileDocumentReaderResponse(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MobileDocumentReaderSession.State(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CD71A30(v2, v10);
  v11 = (*(v5 + 48))(v10, 3, v4);
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }
  }

  else
  {
    if (!v11)
    {
      sub_21CD71BE4(v10, v7, type metadata accessor for MobileDocumentReaderResponse);
      MEMORY[0x21CF17CC0](3);
      MobileDocumentReaderResponse.hash(into:)(a1);
      return sub_21CD723A4(v7, type metadata accessor for MobileDocumentReaderResponse);
    }

    v13 = 0;
  }

  return MEMORY[0x21CF17CC0](v13);
}

uint64_t MobileDocumentReaderSession.State.hashValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for MobileDocumentReaderResponse(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MobileDocumentReaderSession.State(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CD84264();
  sub_21CD71A30(v1, v8);
  v9 = (*(v3 + 48))(v8, 3, v2);
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    goto LABEL_8;
  }

  if (v9)
  {
    v10 = 0;
LABEL_8:
    MEMORY[0x21CF17CC0](v10);
    return sub_21CD84294();
  }

  sub_21CD71BE4(v8, v5, type metadata accessor for MobileDocumentReaderResponse);
  MEMORY[0x21CF17CC0](3);
  MobileDocumentReaderResponse.hash(into:)(v13);
  sub_21CD723A4(v5, type metadata accessor for MobileDocumentReaderResponse);
  return sub_21CD84294();
}

uint64_t MobileDocumentReaderSession.State.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C020, &qword_21CD99C68);
  v4 = *(v3 - 8);
  v56 = v3;
  v57 = v4;
  MEMORY[0x28223BE20](v3);
  v62 = &v49 - v5;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C028, &qword_21CD99C70);
  v61 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v60 = &v49 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C030, &qword_21CD99C78);
  v53 = *(v7 - 8);
  v54 = v7;
  MEMORY[0x28223BE20](v7);
  v58 = &v49 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C038, &qword_21CD99C80);
  v10 = *(v9 - 8);
  v51 = v9;
  v52 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v49 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C040, &unk_21CD99C88);
  v63 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v49 - v14;
  v16 = type metadata accessor for MobileDocumentReaderSession.State(0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v49 - v20;
  v22 = a1[3];
  v65 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v22);
  sub_21CD719DC();
  v23 = v64;
  sub_21CD842A4();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_0(v65);
  }

  v24 = v12;
  v49 = v19;
  v50 = v21;
  v26 = v60;
  v25 = v61;
  v27 = v62;
  v64 = 0;
  v28 = sub_21CD840D4();
  v29 = (2 * *(v28 + 16)) | 1;
  v66 = v28;
  v67 = v28 + 32;
  v68 = 0;
  v69 = v29;
  v30 = sub_21CCD18D8();
  if (v30 == 4 || v68 != v69 >> 1)
  {
    v34 = sub_21CD83FA4();
    swift_allocError();
    v36 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19268, &qword_21CD88F20);
    *v36 = v16;
    sub_21CD84044();
    sub_21CD83F94();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D84160], v34);
    swift_willThrow();
    goto LABEL_9;
  }

  if (v30 > 1u)
  {
    v38 = v63;
    if (v30 == 2)
    {
      v70 = 2;
      sub_21CD71AE8();
      v39 = v64;
      sub_21CD84034();
      if (!v39)
      {
        v64 = 0;
        (*(v25 + 8))(v26, v55);
        (*(v38 + 8))(v15, v13);
        swift_unknownObjectRelease();
        v40 = type metadata accessor for MobileDocumentReaderResponse(0);
        v33 = v50;
        (*(*(v40 - 8) + 56))(v50, 3, 3, v40);
        goto LABEL_17;
      }
    }

    else
    {
      v70 = 3;
      sub_21CD71A94();
      v44 = v27;
      v45 = v64;
      sub_21CD84034();
      if (!v45)
      {
        v46 = type metadata accessor for MobileDocumentReaderResponse(0);
        sub_21CD71C94(&qword_27CE1A5D8, type metadata accessor for MobileDocumentReaderResponse, &protocol conformance descriptor for MobileDocumentReaderResponse);
        v47 = v49;
        v48 = v56;
        sub_21CD840C4();
        v64 = 0;
        (*(v57 + 8))(v44, v48);
        (*(v38 + 8))(v15, v13);
        swift_unknownObjectRelease();
        (*(*(v46 - 8) + 56))(v47, 0, 3, v46);
        v33 = v50;
        sub_21CD71BE4(v47, v50, type metadata accessor for MobileDocumentReaderSession.State);
        goto LABEL_17;
      }
    }

    (*(v38 + 8))(v15, v13);
    goto LABEL_10;
  }

  if (v30)
  {
    v70 = 1;
    sub_21CD71B3C();
    v41 = v58;
    v42 = v64;
    sub_21CD84034();
    if (!v42)
    {
      v64 = 0;
      (*(v53 + 8))(v41, v54);
      (*(v63 + 8))(v15, v13);
      swift_unknownObjectRelease();
      v43 = type metadata accessor for MobileDocumentReaderResponse(0);
      v33 = v50;
      (*(*(v43 - 8) + 56))(v50, 2, 3, v43);
      goto LABEL_17;
    }

    goto LABEL_9;
  }

  v70 = 0;
  sub_21CD71B90();
  v31 = v64;
  sub_21CD84034();
  if (v31)
  {
LABEL_9:
    (*(v63 + 8))(v15, v13);
LABEL_10:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v65);
  }

  v64 = 0;
  (*(v52 + 8))(v24, v51);
  (*(v63 + 8))(v15, v13);
  swift_unknownObjectRelease();
  v32 = type metadata accessor for MobileDocumentReaderResponse(0);
  v33 = v50;
  (*(*(v32 - 8) + 56))(v50, 1, 3, v32);
LABEL_17:
  sub_21CD71BE4(v33, v59, type metadata accessor for MobileDocumentReaderSession.State);
  return __swift_destroy_boxed_opaque_existential_0(v65);
}

uint64_t sub_21CD71368(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MobileDocumentReaderResponse(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CD71A30(v2, v10);
  v11 = (*(v5 + 48))(v10, 3, v4);
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }
  }

  else
  {
    if (!v11)
    {
      sub_21CD71BE4(v10, v8, type metadata accessor for MobileDocumentReaderResponse);
      MEMORY[0x21CF17CC0](3);
      MobileDocumentReaderResponse.hash(into:)(a1);
      return sub_21CD723A4(v8, type metadata accessor for MobileDocumentReaderResponse);
    }

    v13 = 0;
  }

  return MEMORY[0x21CF17CC0](v13);
}

uint64_t sub_21CD714F4()
{
  v1 = v0;
  v2 = type metadata accessor for MobileDocumentReaderResponse(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CD84264();
  sub_21CD71A30(v1, v8);
  v9 = (*(v3 + 48))(v8, 3, v2);
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    goto LABEL_8;
  }

  if (v9)
  {
    v10 = 0;
LABEL_8:
    MEMORY[0x21CF17CC0](v10);
    return sub_21CD84294();
  }

  sub_21CD71BE4(v8, v6, type metadata accessor for MobileDocumentReaderResponse);
  MEMORY[0x21CF17CC0](3);
  MobileDocumentReaderResponse.hash(into:)(v13);
  sub_21CD723A4(v6, type metadata accessor for MobileDocumentReaderResponse);
  return sub_21CD84294();
}

BOOL _s7CoreIDV27MobileDocumentReaderSessionC5StateO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentReaderResponse(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for MobileDocumentReaderSession.State(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C0C0, &qword_21CD9A1D8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_21CD71A30(a1, &v20 - v13);
  sub_21CD71A30(a2, &v14[v15]);
  v16 = *(v5 + 48);
  v17 = v16(v14, 3, v4);
  if (v17 > 1)
  {
    if (v17 == 2)
    {
      if (v16(&v14[v15], 3, v4) == 2)
      {
        goto LABEL_9;
      }
    }

    else if (v16(&v14[v15], 3, v4) == 3)
    {
      goto LABEL_9;
    }

LABEL_11:
    sub_21CD7233C(v14);
    return 0;
  }

  if (!v17)
  {
    sub_21CD71A30(v14, v10);
    if (!v16(&v14[v15], 3, v4))
    {
      sub_21CD71BE4(&v14[v15], v7, type metadata accessor for MobileDocumentReaderResponse);
      v18 = _s7CoreIDV28MobileDocumentReaderResponseV2eeoiySbAC_ACtFZ_0(v10, v7);
      sub_21CD723A4(v7, type metadata accessor for MobileDocumentReaderResponse);
      sub_21CD723A4(v10, type metadata accessor for MobileDocumentReaderResponse);
      sub_21CD723A4(v14, type metadata accessor for MobileDocumentReaderSession.State);
      return v18;
    }

    sub_21CD723A4(v10, type metadata accessor for MobileDocumentReaderResponse);
    goto LABEL_11;
  }

  if (v16(&v14[v15], 3, v4) != 1)
  {
    goto LABEL_11;
  }

LABEL_9:
  sub_21CD723A4(v14, type metadata accessor for MobileDocumentReaderSession.State);
  return 1;
}

uint64_t type metadata accessor for MobileDocumentReaderSession.State(uint64_t a1)
{
  result = qword_27CE1C050;
  if (!qword_27CE1C050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21CD719DC()
{
  result = qword_27CE1BFF8;
  if (!qword_27CE1BFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1BFF8);
  }

  return result;
}

uint64_t sub_21CD71A30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentReaderSession.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21CD71A94()
{
  result = qword_27CE1C000;
  if (!qword_27CE1C000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C000);
  }

  return result;
}

unint64_t sub_21CD71AE8()
{
  result = qword_27CE1C008;
  if (!qword_27CE1C008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C008);
  }

  return result;
}

unint64_t sub_21CD71B3C()
{
  result = qword_27CE1C010;
  if (!qword_27CE1C010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C010);
  }

  return result;
}

unint64_t sub_21CD71B90()
{
  result = qword_27CE1C018;
  if (!qword_27CE1C018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C018);
  }

  return result;
}

uint64_t sub_21CD71BE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CD71C94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21CD71D04(uint64_t a1)
{
  v1 = type metadata accessor for MobileDocumentReaderResponse(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

unint64_t sub_21CD71DB0()
{
  result = qword_27CE1C060;
  if (!qword_27CE1C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C060);
  }

  return result;
}

unint64_t sub_21CD71E08()
{
  result = qword_27CE1C068;
  if (!qword_27CE1C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C068);
  }

  return result;
}

unint64_t sub_21CD71E60()
{
  result = qword_27CE1C070;
  if (!qword_27CE1C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C070);
  }

  return result;
}

unint64_t sub_21CD71EB8()
{
  result = qword_27CE1C078;
  if (!qword_27CE1C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C078);
  }

  return result;
}

unint64_t sub_21CD71F10()
{
  result = qword_27CE1C080;
  if (!qword_27CE1C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C080);
  }

  return result;
}

unint64_t sub_21CD71F68()
{
  result = qword_27CE1C088;
  if (!qword_27CE1C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C088);
  }

  return result;
}

unint64_t sub_21CD71FC0()
{
  result = qword_27CE1C090;
  if (!qword_27CE1C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C090);
  }

  return result;
}

unint64_t sub_21CD72018()
{
  result = qword_27CE1C098;
  if (!qword_27CE1C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C098);
  }

  return result;
}

unint64_t sub_21CD72070()
{
  result = qword_27CE1C0A0;
  if (!qword_27CE1C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C0A0);
  }

  return result;
}

unint64_t sub_21CD720C8()
{
  result = qword_27CE1C0A8;
  if (!qword_27CE1C0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C0A8);
  }

  return result;
}

unint64_t sub_21CD72120()
{
  result = qword_27CE1C0B0;
  if (!qword_27CE1C0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C0B0);
  }

  return result;
}

unint64_t sub_21CD72178()
{
  result = qword_27CE1C0B8;
  if (!qword_27CE1C0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C0B8);
  }

  return result;
}

uint64_t sub_21CD721CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7964616572 && a2 == 0xE500000000000000;
  if (v4 || (sub_21CD841A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697463656E6E6F63 && a2 == 0xEA0000000000676ELL || (sub_21CD841A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021CDA16E0 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64656873696E6966 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_21CD841A4();

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

uint64_t sub_21CD7233C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C0C0, &qword_21CD9A1D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21CD723A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21CD72408(uint64_t a1, uint64_t a2)
{
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18E78, &qword_21CD88450);
  MEMORY[0x28223BE20](v71);
  v5 = &v53 - v4;
  v6 = sub_21CD837F4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v65 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v53 - v10;
  v12 = type metadata accessor for MobileDocumentType.Identifier(0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v53 - v16;
  v18 = type metadata accessor for MobileDocumentType(0) - 8;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v66 = &v53 - v23;
  result = MEMORY[0x28223BE20](v22);
  v27 = &v53 - v26;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v28 = 0;
  v29 = a1 + 56;
  v30 = 1 << *(a1 + 32);
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  else
  {
    v31 = -1;
  }

  v32 = v31 & *(a1 + 56);
  v33 = (v30 + 63) >> 6;
  v72 = (v7 + 48);
  v63 = (v7 + 32);
  v67 = (v7 + 8);
  v70 = a2 + 56;
  v59 = a1;
  v58 = v11;
  v62 = v17;
  v57 = v25;
  v56 = v27;
  v55 = a1 + 56;
  v54 = v33;
  if (!v32)
  {
    goto LABEL_8;
  }

  do
  {
    v34 = __clz(__rbit64(v32));
    v60 = (v32 - 1) & v32;
LABEL_13:
    v61 = v28;
    v37 = *(a1 + 48);
    v69 = *(v25 + 72);
    sub_21CD77EA4(v37 + v69 * (v34 | (v28 << 6)), v27, type metadata accessor for MobileDocumentType);
    v38 = v66;
    sub_21CD77FB4(v27, v66, type metadata accessor for MobileDocumentType);
    sub_21CD84264();
    sub_21CD77EA4(v38, v17, type metadata accessor for MobileDocumentType.Identifier);
    v39 = *v72;
    v40 = (*v72)(v17, 2, v6);
    if (v40)
    {
      if (v40 == 1)
      {
        v41 = 0;
      }

      else
      {
        v41 = 2;
      }

      MEMORY[0x21CF17CC0](v41);
    }

    else
    {
      (*v63)(v11, v62, v6);
      MEMORY[0x21CF17CC0](1);
      sub_21CD77F0C(&qword_27CE19380, MEMORY[0x277CC9698], MEMORY[0x277CC96A8]);
      sub_21CD83A64();
      (*v67)(v11, v6);
    }

    v42 = v66;
    v43 = sub_21CD84294();
    v44 = -1 << *(a2 + 32);
    v45 = v43 & ~v44;
    if (((*(v70 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
    {
LABEL_35:
      sub_21CD77F54(v42, type metadata accessor for MobileDocumentType);
      return 0;
    }

    v68 = ~v44;
    while (1)
    {
      v46 = a2;
      sub_21CD77EA4(*(a2 + 48) + v45 * v69, v21, type metadata accessor for MobileDocumentType);
      v47 = *(v71 + 48);
      sub_21CD77EA4(v21, v5, type metadata accessor for MobileDocumentType.Identifier);
      sub_21CD77EA4(v42, &v5[v47], type metadata accessor for MobileDocumentType.Identifier);
      v48 = v39(v5, 2, v6);
      if (v48)
      {
        if (v48 == 1)
        {
          sub_21CD77F54(v21, type metadata accessor for MobileDocumentType);
          if (v39(&v5[v47], 2, v6) == 1)
          {
            goto LABEL_32;
          }
        }

        else
        {
          sub_21CD77F54(v21, type metadata accessor for MobileDocumentType);
          if (v39(&v5[v47], 2, v6) == 2)
          {
            goto LABEL_32;
          }
        }

        goto LABEL_22;
      }

      sub_21CD77EA4(v5, v15, type metadata accessor for MobileDocumentType.Identifier);
      if (!v39(&v5[v47], 2, v6))
      {
        break;
      }

      sub_21CD77F54(v21, type metadata accessor for MobileDocumentType);
      (*v67)(v15, v6);
LABEL_22:
      sub_21CCAC1DC(v5);
LABEL_23:
      a2 = v46;
      v45 = (v45 + 1) & v68;
      if (((*(v70 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    v49 = v15;
    v50 = v65;
    (*v63)(v65, &v5[v47], v6);
    v64 = MEMORY[0x21CF17230](v49, v50);
    v51 = *v67;
    v52 = v50;
    v15 = v49;
    v42 = v66;
    (*v67)(v52, v6);
    sub_21CD77F54(v21, type metadata accessor for MobileDocumentType);
    v51(v15, v6);
    if ((v64 & 1) == 0)
    {
      sub_21CD77F54(v5, type metadata accessor for MobileDocumentType.Identifier);
      goto LABEL_23;
    }

LABEL_32:
    sub_21CD77F54(v5, type metadata accessor for MobileDocumentType.Identifier);
    result = sub_21CD77F54(v42, type metadata accessor for MobileDocumentType);
    a2 = v46;
    a1 = v59;
    v11 = v58;
    v28 = v61;
    v17 = v62;
    v25 = v57;
    v27 = v56;
    v29 = v55;
    v33 = v54;
    v32 = v60;
  }

  while (v60);
LABEL_8:
  v35 = v28;
  while (1)
  {
    v28 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v28 >= v33)
    {
      return 1;
    }

    v36 = *(v29 + 8 * v28);
    ++v35;
    if (v36)
    {
      v34 = __clz(__rbit64(v36));
      v60 = (v36 - 1) & v36;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21CD72C10(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
LABEL_7:
  if (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(v3 + 48) + 16 * (v10 | (v4 << 6));
    v14 = *v13;
    v15 = *(v13 + 8);
    sub_21CD84264();
    MobileDocumentElement.Element.hash(into:)();
    v16 = sub_21CD84294();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if ((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
    {
      v19 = ~v17;
      if (v14 > 0x11)
      {
        v20 = v15;
      }

      else
      {
        v20 = 0;
      }

      v41 = v20;
      if (v14 == 17)
      {
        v21 = v15;
      }

      else
      {
        v21 = 0;
      }

      v40 = v21;
      if (v14 == 16)
      {
        v22 = v15;
      }

      else
      {
        v22 = 0;
      }

      v39 = v22;
      if (v14 == 15)
      {
        v23 = v15;
      }

      else
      {
        v23 = 0;
      }

      v38 = v23;
      if (v14 == 14)
      {
        v24 = v15;
      }

      else
      {
        v24 = 0;
      }

      if (v14 == 13)
      {
        result = v15;
      }

      else
      {
        result = 0;
      }

      if (v14 == 12)
      {
        v25 = v15;
      }

      else
      {
        v25 = 0;
      }

      if (v14 == 11)
      {
        v26 = v15;
      }

      else
      {
        v26 = 0;
      }

      if (v14 == 10)
      {
        v27 = v15;
      }

      else
      {
        v27 = 0;
      }

      if (v14 == 9)
      {
        v28 = v15;
      }

      else
      {
        v28 = 0;
      }

      if (v14 == 8)
      {
        v29 = v15;
      }

      else
      {
        v29 = 0;
      }

      if (v14 == 7)
      {
        v30 = v15;
      }

      else
      {
        v30 = 0;
      }

      if (v14 == 6)
      {
        v31 = v15;
      }

      else
      {
        v31 = 0;
      }

      if (v14 == 5)
      {
        v32 = v15;
      }

      else
      {
        v32 = 0;
      }

      if (v14)
      {
        v33 = 0;
      }

      else
      {
        v33 = v15;
      }

      while (1)
      {
        v35 = *(a2 + 48) + 16 * v18;
        v36 = *v35;
        if (*(v35 + 8) == 1)
        {
          v37 = v14 == 1;
          switch(v36)
          {
            case 1:
              break;
            case 2:
              v37 = v14 == 2;
              break;
            case 3:
              if ((v15 & (v14 == 3)) != 0)
              {
                goto LABEL_7;
              }

              goto LABEL_64;
            case 4:
              if ((v15 & (v14 == 4)) != 0)
              {
                goto LABEL_7;
              }

              goto LABEL_64;
            case 5:
              if (v32)
              {
                goto LABEL_7;
              }

              goto LABEL_64;
            case 6:
              if (v31)
              {
                goto LABEL_7;
              }

              goto LABEL_64;
            case 7:
              if (v30)
              {
                goto LABEL_7;
              }

              goto LABEL_64;
            case 8:
              if (v29)
              {
                goto LABEL_7;
              }

              goto LABEL_64;
            case 9:
              if (v28)
              {
                goto LABEL_7;
              }

              goto LABEL_64;
            case 10:
              if (v27)
              {
                goto LABEL_7;
              }

              goto LABEL_64;
            case 11:
              if (v26)
              {
                goto LABEL_7;
              }

              goto LABEL_64;
            case 12:
              if (v25)
              {
                goto LABEL_7;
              }

              goto LABEL_64;
            case 13:
              if (result)
              {
                goto LABEL_7;
              }

              goto LABEL_64;
            case 14:
              if (v24)
              {
                goto LABEL_7;
              }

              goto LABEL_64;
            case 15:
              if (v38)
              {
                goto LABEL_7;
              }

              goto LABEL_64;
            case 16:
              if (v39)
              {
                goto LABEL_7;
              }

              goto LABEL_64;
            case 17:
              if (v40)
              {
                goto LABEL_7;
              }

              goto LABEL_64;
            case 18:
              if (v41)
              {
                goto LABEL_7;
              }

              goto LABEL_64;
            default:
              if (v33)
              {
                goto LABEL_7;
              }

              goto LABEL_64;
          }

          if (v15 & v37)
          {
            goto LABEL_7;
          }
        }

        else
        {
          if (v36 == v14)
          {
            v34 = v15;
          }

          else
          {
            v34 = 1;
          }

          if ((v34 & 1) == 0)
          {
            goto LABEL_7;
          }
        }

LABEL_64:
        v18 = (v18 + 1) & v19;
        if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          return 0;
        }
      }
    }

    return 0;
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21CD72F34(uint64_t a1, uint64_t a2)
{
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18E78, &qword_21CD88450);
  MEMORY[0x28223BE20](v92);
  v5 = &v72 - v4;
  v6 = sub_21CD837F4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v83 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v81 = &v72 - v10;
  v11 = type metadata accessor for MobileDocumentType.Identifier(0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v85 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v72 - v14;
  v86 = type metadata accessor for MobileDocumentRequest(0);
  v16 = MEMORY[0x28223BE20](v86);
  v17 = MEMORY[0x28223BE20](v16);
  v95 = &v72 - v18;
  result = MEMORY[0x28223BE20](v17);
  v23 = &v72 - v20;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v88 = v5;
  v24 = 0;
  v25 = *(a1 + 56);
  v74 = a1 + 56;
  v26 = 1 << *(a1 + 32);
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  else
  {
    v27 = -1;
  }

  v28 = v27 & v25;
  v73 = (v26 + 63) >> 6;
  v97 = (v7 + 48);
  v80 = (v7 + 32);
  v84 = (v7 + 8);
  v89 = a2 + 56;
  v93 = a2;
  v78 = a1;
  v91 = v6;
  v77 = v15;
  v76 = v21;
  v94 = v22;
  v75 = &v72 - v20;
LABEL_8:
  if (v28)
  {
    v29 = __clz(__rbit64(v28));
    v30 = (v28 - 1) & v28;
  }

  else
  {
    v31 = v24;
    do
    {
      v24 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        goto LABEL_69;
      }

      if (v24 >= v73)
      {
        return 1;
      }

      v32 = *(v74 + 8 * v24);
      ++v31;
    }

    while (!v32);
    v29 = __clz(__rbit64(v32));
    v30 = (v32 - 1) & v32;
  }

  v33 = *(a1 + 48);
  v90 = *(v21 + 72);
  sub_21CD77EA4(v33 + v90 * (v29 | (v24 << 6)), v23, type metadata accessor for MobileDocumentRequest);
  v34 = v95;
  sub_21CD77FB4(v23, v95, type metadata accessor for MobileDocumentRequest);
  sub_21CD84264();
  sub_21CD77EA4(v34, v15, type metadata accessor for MobileDocumentType.Identifier);
  v96 = *v97;
  v35 = v96(v15, 2, v6);
  v82 = v30;
  if (v35)
  {
    if (v35 == 1)
    {
      v36 = 0;
    }

    else
    {
      v36 = 2;
    }

    result = MEMORY[0x21CF17CC0](v36);
  }

  else
  {
    v37 = v81;
    (*v80)(v81, v15, v6);
    MEMORY[0x21CF17CC0](1);
    sub_21CD77F0C(&qword_27CE19380, MEMORY[0x277CC9698], MEMORY[0x277CC96A8]);
    sub_21CD83A64();
    result = (*v84)(v37, v6);
  }

  v38 = 0;
  v39 = 0;
  v40 = *(v95 + *(v86 + 20));
  v41 = 1 << *(v40 + 32);
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  else
  {
    v42 = -1;
  }

  v43 = v42 & *(v40 + 64);
  v44 = (v41 + 63) >> 6;
  while (v43)
  {
LABEL_32:
    v47 = *(v40 + 48) + 16 * (__clz(__rbit64(v43)) | (v39 << 6));
    v45 = *v47;
    LOBYTE(v47) = *(v47 + 8);
    v100 = v105;
    v101 = v106;
    v102 = v107;
    v98 = v103;
    v99 = v104;
    if (v47)
    {
      v45 = qword_21CD9AAE0[v45];
    }

    else
    {
      MEMORY[0x21CF17CC0](5);
    }

    v43 &= v43 - 1;
    MEMORY[0x21CF17CC0](v45);
    sub_21CD84284();
    result = sub_21CD84294();
    v38 ^= result;
  }

  while (1)
  {
    v46 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      __break(1u);
      goto LABEL_68;
    }

    if (v46 >= v44)
    {
      break;
    }

    v43 = *(v40 + 64 + 8 * v46);
    ++v39;
    if (v43)
    {
      v39 = v46;
      goto LABEL_32;
    }
  }

  MEMORY[0x21CF17CC0](v38);
  v48 = sub_21CD84294();
  v49 = v93;
  v50 = -1 << *(v93 + 32);
  v51 = v48 & ~v50;
  v52 = v94;
  if (((*(v89 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) == 0)
  {
LABEL_65:
    sub_21CD77F54(v95, type metadata accessor for MobileDocumentRequest);
    return 0;
  }

  v87 = ~v50;
  while (1)
  {
    sub_21CD77EA4(*(v49 + 48) + v51 * v90, v52, type metadata accessor for MobileDocumentRequest);
    v54 = *(v92 + 48);
    v55 = v88;
    sub_21CD77EA4(v52, v88, type metadata accessor for MobileDocumentType.Identifier);
    sub_21CD77EA4(v95, v55 + v54, type metadata accessor for MobileDocumentType.Identifier);
    v56 = v91;
    v57 = v96(v55, 2, v91);
    if (v57)
    {
      if (v57 == 1)
      {
        if (v96((v55 + v54), 2, v56) != 1)
        {
          goto LABEL_38;
        }
      }

      else if (v96((v55 + v54), 2, v56) != 2)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v53 = v85;
      sub_21CD77EA4(v55, v85, type metadata accessor for MobileDocumentType.Identifier);
      if (v96((v55 + v54), 2, v56))
      {
        (*v84)(v53, v56);
LABEL_38:
        sub_21CCAC1DC(v55);
        goto LABEL_39;
      }

      v58 = v83;
      (*v80)(v83, (v55 + v54), v56);
      v79 = MEMORY[0x21CF17230](v53, v58);
      v59 = *v84;
      (*v84)(v58, v56);
      v59(v53, v56);
      if ((v79 & 1) == 0)
      {
        sub_21CD77F54(v55, type metadata accessor for MobileDocumentType.Identifier);
        goto LABEL_39;
      }
    }

    result = sub_21CD77F54(v55, type metadata accessor for MobileDocumentType.Identifier);
    v60 = *(v52 + *(v86 + 20));
    if (v60 == v40)
    {
LABEL_7:
      sub_21CD77F54(v52, type metadata accessor for MobileDocumentRequest);
      result = sub_21CD77F54(v95, type metadata accessor for MobileDocumentRequest);
      a1 = v78;
      v6 = v91;
      v15 = v77;
      v21 = v76;
      v23 = v75;
      v28 = v82;
      goto LABEL_8;
    }

    if (*(v60 + 16) == *(v40 + 16))
    {
      break;
    }

LABEL_39:
    v52 = v94;
    sub_21CD77F54(v94, type metadata accessor for MobileDocumentRequest);
    v51 = (v51 + 1) & v87;
    v49 = v93;
    if (((*(v89 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  v61 = 0;
  v62 = 1 << *(v60 + 32);
  if (v62 < 64)
  {
    v63 = ~(-1 << v62);
  }

  else
  {
    v63 = -1;
  }

  v64 = v63 & *(v60 + 64);
  v65 = (v62 + 63) >> 6;
  while (v64)
  {
    v66 = __clz(__rbit64(v64));
    v64 &= v64 - 1;
LABEL_60:
    v69 = v66 | (v61 << 6);
    v70 = *(*(v60 + 56) + v69);
    result = sub_21CCAAF0C(*(*(v60 + 48) + 16 * v69), *(*(v60 + 48) + 16 * v69 + 8));
    if ((v71 & 1) == 0 || v70 != *(*(v40 + 56) + result))
    {
      goto LABEL_39;
    }
  }

  v67 = v61;
  v52 = v94;
  while (1)
  {
    v61 = v67 + 1;
    if (__OFADD__(v67, 1))
    {
      break;
    }

    if (v61 >= v65)
    {
      goto LABEL_7;
    }

    v68 = *(v60 + 64 + 8 * v61);
    ++v67;
    if (v68)
    {
      v66 = __clz(__rbit64(v68));
      v64 = (v68 - 1) & v68;
      goto LABEL_60;
    }
  }

LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
  return result;
}

uint64_t sub_21CD7399C()
{
  v1 = 0x6E61725461746164;
  if (*v0 != 1)
  {
    v1 = 0x5261746144776172;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4F79616C70736964;
  }
}

uint64_t sub_21CD73A14@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21CD77D7C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21CD73A3C(uint64_t a1)
{
  v2 = sub_21CD772A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD73A78(uint64_t a1)
{
  v2 = sub_21CD772A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD73AB4(uint64_t a1)
{
  v2 = sub_21CD7734C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD73AF0(uint64_t a1)
{
  v2 = sub_21CD7734C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD73B2C()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_21CD73B48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_21CD841A4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21CD841A4();

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

uint64_t sub_21CD73C14(uint64_t a1)
{
  v2 = sub_21CD773A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD73C50(uint64_t a1)
{
  v2 = sub_21CD773A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD73C8C(uint64_t a1)
{
  v2 = sub_21CD772F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD73CC8(uint64_t a1)
{
  v2 = sub_21CD772F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentRequestType.Storage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C0C8, &qword_21CD9A1E0);
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x28223BE20](v3);
  v28 = &v25 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C0D0, &qword_21CD9A1E8);
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C0D8, &qword_21CD9A1F0);
  v25 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C0E0, &qword_21CD9A1F8);
  v11 = *(v10 - 8);
  v34 = v10;
  v35 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - v12;
  v14 = v1[1];
  v32 = *v1;
  v15 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD772A4();
  sub_21CD842B4();
  if (v15)
  {
    if (v15 == 1)
    {
      LOBYTE(v37) = 1;
      sub_21CD7734C();
      v16 = v34;
      sub_21CD840E4();
      v37 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C0F8, &qword_21CD9A200);
      sub_21CD7746C(&qword_27CE1C100, &qword_27CE1C108, &protocol conformance descriptor for MobileDocumentRequest, MEMORY[0x277D83B50]);
      v17 = v27;
      sub_21CD84164();
      (*(v26 + 8))(v7, v17);
      return (*(v35 + 8))(v13, v16);
    }

    LOBYTE(v37) = 2;
    sub_21CD772F8();
    v23 = v28;
    v20 = v34;
    sub_21CD840E4();
    v37 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C0F8, &qword_21CD9A200);
    sub_21CD7746C(&qword_27CE1C100, &qword_27CE1C108, &protocol conformance descriptor for MobileDocumentRequest, MEMORY[0x277D83B50]);
    v24 = v31;
    sub_21CD84164();
    (*(v30 + 8))(v23, v24);
  }

  else
  {
    v19 = v25;
    LOBYTE(v37) = 0;
    sub_21CD773A0();
    v20 = v34;
    sub_21CD840E4();
    v37 = v32;
    v36 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C120, &qword_21CD9A208);
    sub_21CD77508(&qword_27CE1C128, &qword_27CE1B040, &protocol conformance descriptor for MobileDocumentType, MEMORY[0x277D83B50]);
    v21 = v29;
    v22 = v33;
    sub_21CD84164();
    if (!v22)
    {
      v37 = v14;
      v36 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C130, &qword_21CD9A210);
      sub_21CD773F4(&qword_27CE1C138, sub_21CD3FFB4, MEMORY[0x277D83B50]);
      sub_21CD84164();
    }

    (*(v19 + 8))(v9, v21);
  }

  return (*(v35 + 8))(v13, v20);
}

uint64_t MobileDocumentRequestType.Storage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C140, &qword_21CD9A218);
  v39 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v42 = &v34[-v3];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C148, &qword_21CD9A220);
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v34[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C150, &qword_21CD9A228);
  v40 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v34[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C158, &unk_21CD9A230);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34[-v12];
  v14 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v14);
  sub_21CD772A4();
  v15 = v43;
  sub_21CD842A4();
  if (!v15)
  {
    v16 = v42;
    v43 = v11;
    v17 = sub_21CD840D4();
    v18 = (2 * *(v17 + 16)) | 1;
    v47 = v17;
    v48 = v17 + 32;
    v49 = 0;
    v50 = v18;
    v19 = sub_21CCD18D4();
    if (v19 == 3 || v49 != v50 >> 1)
    {
      v22 = sub_21CD83FA4();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19268, &qword_21CD88F20);
      *v24 = &type metadata for MobileDocumentRequestType.Storage;
      sub_21CD84044();
      sub_21CD83F94();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
      swift_willThrow();
      (*(v43 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v35 = v19;
      if (v19)
      {
        if (v19 == 1)
        {
          LOBYTE(v51) = 1;
          sub_21CD7734C();
          v20 = v6;
          sub_21CD84034();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C0F8, &qword_21CD9A200);
          sub_21CD7746C(&qword_27CE1C160, &qword_27CE1C168, &protocol conformance descriptor for MobileDocumentRequest, MEMORY[0x277D83B70]);
          v21 = v38;
          sub_21CD840C4();
          (*(v37 + 8))(v20, v21);
          (*(v43 + 8))(v13, v10);
        }

        else
        {
          LOBYTE(v51) = 2;
          sub_21CD772F8();
          sub_21CD84034();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C0F8, &qword_21CD9A200);
          sub_21CD7746C(&qword_27CE1C160, &qword_27CE1C168, &protocol conformance descriptor for MobileDocumentRequest, MEMORY[0x277D83B70]);
          v29 = v36;
          sub_21CD840C4();
          v30 = v43;
          (*(v39 + 8))(v16, v29);
          (*(v30 + 8))(v13, v10);
        }

        swift_unknownObjectRelease();
        v33 = 0;
        v32 = v51;
        v27 = v41;
      }

      else
      {
        LOBYTE(v51) = 0;
        sub_21CD773A0();
        v26 = v9;
        sub_21CD84034();
        v27 = v41;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C120, &qword_21CD9A208);
        LOBYTE(v46) = 0;
        sub_21CD77508(&qword_27CE1C170, &qword_27CE1B070, &protocol conformance descriptor for MobileDocumentType, MEMORY[0x277D83B70]);
        sub_21CD840C4();
        v28 = v43;
        v31 = v26;
        v32 = v51;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C130, &qword_21CD9A210);
        v45 = 1;
        sub_21CD773F4(&qword_27CE1C178, sub_21CD400EC, MEMORY[0x277D83B70]);
        v42 = v31;
        sub_21CD840C4();
        (*(v40 + 8))(v42, v7);
        (*(v28 + 8))(v13, v10);
        swift_unknownObjectRelease();
        v33 = v46;
      }

      *v27 = v32;
      *(v27 + 8) = v33;
      *(v27 + 16) = v35;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v44);
}

uint64_t MobileDocumentRequestType.storage.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_21CD19BA8(v2, v3, v4);
}

uint64_t static MobileDocumentRequestType.displayRequest(documentTypes:elements:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  v6 = sub_21CCF0E20(v5);

  sub_21CCEF82C(&unk_282E6D0B8);
  v7 = sub_21CCF0FAC(a2);

  *a3 = v6;
  *(a3 + 8) = v7;
  *(a3 + 16) = 0;
  return result;
}

uint64_t sub_21CD74BD8@<X0>(char a2@<W1>, uint64_t a3@<X8>)
{

  v6 = sub_21CCF1064(v5);

  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = a2;
  return result;
}

uint64_t MobileDocumentRequestType.documentTypes.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MobileDocumentRequestType.requestedElements.getter();

  return sub_21CCE7F44(v3);
}

void *MobileDocumentRequestType.requestedElements.getter()
{
  v1 = type metadata accessor for MobileDocumentRequest(0);
  v60 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MobileDocumentType(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v56 - v10;
  v12 = *v0;
  v13 = *(v0 + 8);
  v14 = *(v0 + 16);
  if (v14)
  {
    sub_21CD19BA8(*v0, *(v0 + 8), *(v0 + 16));
    v15 = sub_21CD7DBB8(MEMORY[0x277D84F90]);
    v16 = 1 << *(v12 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v12 + 56);
    v59 = v13;
    sub_21CD19BA8(v12, v13, v14);
    v19 = 0;
    v20 = (v16 + 63) >> 6;
    while (v18)
    {
      v21 = v19;
LABEL_10:
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      sub_21CD77EA4(*(v12 + 48) + *(v60 + 9) * (v22 | (v21 << 6)), v3, type metadata accessor for MobileDocumentRequest);

      v24 = sub_21CCE7E40(v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v61 = v15;
      sub_21CD11BF0(v24, v3, isUniquelyReferenced_nonNull_native);
      v15 = v61;
      sub_21CD77F54(v3, type metadata accessor for MobileDocumentRequest);
    }

    while (1)
    {
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v21 >= v20)
      {

        sub_21CD19C4C(v12, v59, v14);
        return v15;
      }

      v18 = *(v12 + 56 + 8 * v21);
      ++v19;
      if (v18)
      {
        v19 = v21;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
    v56 = v9;
    sub_21CD19BA8(v12, v13, 0);
    v15 = sub_21CD7DBB8(MEMORY[0x277D84F90]);
    v26 = v12 + 56;
    v27 = 1 << *(v12 + 32);
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    v29 = v28 & *(v12 + 56);
    v59 = (v27 + 63) >> 6;

    v30 = 0;
    v31 = v13;
    v60 = v8;
    v32 = v11;
    v57 = v5;
    v58 = v12 + 56;
    while (v29)
    {
      v33 = v30;
LABEL_23:
      v34 = v12;
      v35 = *(v5 + 72);
      sub_21CD77EA4(*(v12 + 48) + v35 * (__clz(__rbit64(v29)) | (v33 << 6)), v32, type metadata accessor for MobileDocumentType);
      v36 = v32;
      v37 = v32;
      v38 = v60;
      sub_21CD77EA4(v37, v60, type metadata accessor for MobileDocumentType);
      v39 = v31;

      v40 = swift_isUniquelyReferenced_nonNull_native();
      v61 = v15;
      v41 = sub_21CCAB040(v38);
      v43 = v15[2];
      v44 = (v42 & 1) == 0;
      v45 = __OFADD__(v43, v44);
      v46 = v43 + v44;
      if (v45)
      {
        goto LABEL_36;
      }

      v47 = v42;
      if (v15[3] >= v46)
      {
        v32 = v36;
        if ((v40 & 1) == 0)
        {
          v54 = v41;
          sub_21CD76F04();
          v41 = v54;
        }
      }

      else
      {
        sub_21CD76210(v46, v40);
        v41 = sub_21CCAB040(v60);
        if ((v47 & 1) != (v48 & 1))
        {
          goto LABEL_38;
        }

        v32 = v36;
      }

      v31 = v39;
      v26 = v58;
      v29 &= v29 - 1;
      v15 = v61;
      v12 = v34;
      if (v47)
      {
        *(v61[7] + 8 * v41) = v31;

        sub_21CD77F54(v60, type metadata accessor for MobileDocumentType);
        sub_21CD77F54(v32, type metadata accessor for MobileDocumentType);
      }

      else
      {
        v61[(v41 >> 6) + 8] |= 1 << v41;
        v49 = v15[6] + v41 * v35;
        v50 = v41;
        v51 = v60;
        sub_21CD77EA4(v60, v49, type metadata accessor for MobileDocumentType);
        *(v15[7] + 8 * v50) = v31;
        sub_21CD77F54(v51, type metadata accessor for MobileDocumentType);
        sub_21CD77F54(v32, type metadata accessor for MobileDocumentType);
        v52 = v15[2];
        v45 = __OFADD__(v52, 1);
        v53 = v52 + 1;
        if (v45)
        {
          goto LABEL_37;
        }

        v15[2] = v53;
      }

      v30 = v33;
      v5 = v57;
    }

    while (1)
    {
      v33 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v33 >= v59)
      {

        return v15;
      }

      v29 = *(v26 + 8 * v33);
      ++v30;
      if (v29)
      {
        goto LABEL_23;
      }
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = sub_21CD841F4();
  __break(1u);
  return result;
}

uint64_t static MobileDocumentRequestType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  v11 = *a1;
  v12 = v2;
  v13 = v5;
  v8 = v3;
  v9 = v4;
  v10 = v6;
  sub_21CD19BA8(v11, v2, v5);
  sub_21CD19BA8(v3, v4, v6);
  LOBYTE(v3) = _s7CoreIDV25MobileDocumentRequestTypeV7StorageO2eeoiySbAE_AEtFZ_0(&v11, &v8);
  sub_21CD19C4C(v8, v9, v10);
  sub_21CD19C4C(v11, v12, v13);
  return v3 & 1;
}

uint64_t sub_21CD75294(uint64_t a1)
{
  v2 = sub_21CD775A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD752D0(uint64_t a1)
{
  v2 = sub_21CD775A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentRequestType.encode(to:)(void *a1)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C180, &qword_21CD9A240);
  v3 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v5 = &v11 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD19BA8(v6, v7, v8);
  sub_21CD775A4();
  sub_21CD842B4();
  v12 = v6;
  v13 = v7;
  v14 = v8;
  sub_21CD775F8();
  v9 = v11;
  sub_21CD84164();
  sub_21CD19C4C(v12, v13, v14);
  return (*(v3 + 8))(v5, v9);
}

uint64_t sub_21CD75488(__int128 *a1)
{
  v3 = *v1;
  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    MEMORY[0x21CF17CC0](v4);

    return sub_21CD41C30(a1, v3);
  }

  else
  {
    v5 = *(v1 + 8);
    MEMORY[0x21CF17CC0](0);
    sub_21CD4233C(a1, v3);

    return sub_21CD421F0(a1, v5);
  }
}

uint64_t _s7CoreIDV25MobileDocumentRequestTypeV7StorageO9hashValueSivg_0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_21CD84264();
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    MEMORY[0x21CF17CC0](v4);
    sub_21CD41C30(v6, v1);
  }

  else
  {
    MEMORY[0x21CF17CC0](0);
    sub_21CD4233C(v6, v1);
    sub_21CD421F0(v6, v2);
  }

  return sub_21CD84294();
}

uint64_t MobileDocumentRequestType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C198, &qword_21CD9A248);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD775A4();
  sub_21CD842A4();
  if (!v2)
  {
    sub_21CD7764C();
    sub_21CD840C4();
    (*(v6 + 8))(v8, v5);
    v9 = v12;
    *a2 = v11;
    *(a2 + 16) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_21CD7577C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_21CD84264();
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    MEMORY[0x21CF17CC0](v4);
    sub_21CD41C30(v6, v1);
  }

  else
  {
    MEMORY[0x21CF17CC0](0);
    sub_21CD4233C(v6, v1);
    sub_21CD421F0(v6, v2);
  }

  return sub_21CD84294();
}

uint64_t sub_21CD75818(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  v11 = *a1;
  v12 = v2;
  v13 = v5;
  v8 = v3;
  v9 = v4;
  v10 = v6;
  sub_21CD19BA8(v11, v2, v5);
  sub_21CD19BA8(v3, v4, v6);
  LOBYTE(v3) = _s7CoreIDV25MobileDocumentRequestTypeV7StorageO2eeoiySbAE_AEtFZ_0(&v11, &v8);
  sub_21CD19C4C(v8, v9, v10);
  sub_21CD19C4C(v11, v12, v13);
  return v3 & 1;
}

uint64_t sub_21CD758FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, _BYTE *))
{
  v6 = v5;
  v7 = a2;
  v8 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v7;
  result = sub_21CD84004();
  v10 = result;
  if (*(v8 + 16))
  {
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = (*(v8 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v8 + 56) + 32 * v23;
      if (v36)
      {
        a5(v27, v38);
      }

      else
      {
        sub_21CCB15A8(v27, v38);
      }

      sub_21CD84264();
      sub_21CD83B74();
      result = sub_21CD84294();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      result = (a5)(v38, *(v10 + 56) + 32 * v18);
      ++*(v10 + 16);
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v6 = v5;
      goto LABEL_34;
    }

    v35 = 1 << *(v8 + 32);
    v6 = v5;
    if (v35 >= 64)
    {
      bzero((v8 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v6 = v10;
  return result;
}

uint64_t sub_21CD75BC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C248, &unk_21CD9AAD0);
  result = sub_21CD84004();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v4;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = *(v5 + 48) + v22;
      v24 = *(v5 + 56) + v22;
      v25 = *(v23 + 8);
      v26 = *v23;
      v37 = *(v24 + 8);
      v36 = *v24;
      sub_21CD84264();
      IdentityElement.rawValue.getter();
      sub_21CD83B74();

      result = sub_21CD84294();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = *(v7 + 48) + v16;
      *v17 = v26;
      *(v17 + 8) = v25;
      v18 = *(v7 + 56) + v16;
      *v18 = v36;
      *(v18 + 8) = v37;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v35)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_21CD75E98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for SynchronousExtensionPointManager.State(0);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C230, &qword_21CD9AAB8);
  v40 = v4;
  result = sub_21CD84004();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_21CD77FB4(v28, v41, type metadata accessor for SynchronousExtensionPointManager.State);
      }

      else
      {
        sub_21CD77EA4(v28, v41, type metadata accessor for SynchronousExtensionPointManager.State);
      }

      sub_21CD84264();
      sub_21CD83B74();
      result = sub_21CD84294();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_21CD77FB4(v41, *(v9 + 56) + v27 * v17, type metadata accessor for SynchronousExtensionPointManager.State);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_21CD76210(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v53 = sub_21CD837F4();
  v5 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v48 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MobileDocumentType.Identifier(0);
  MEMORY[0x28223BE20](v7 - 8);
  v52 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MobileDocumentType(0);
  v50 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C238, &unk_21CD9AAC0);
  v51 = v4;
  result = sub_21CD84004();
  v14 = result;
  if (*(v12 + 16))
  {
    v44 = v2;
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v49 = (v5 + 48);
    v45 = (v5 + 8);
    v46 = (v5 + 32);
    v21 = result + 64;
    v55 = v11;
    v47 = v12;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v26 = v23 | (v15 << 6);
      v27 = *(v50 + 72);
      v28 = *(v12 + 48) + v27 * v26;
      v29 = v55;
      if (v51)
      {
        sub_21CD77FB4(v28, v55, type metadata accessor for MobileDocumentType);
        v54 = *(*(v12 + 56) + 8 * v26);
      }

      else
      {
        sub_21CD77EA4(v28, v55, type metadata accessor for MobileDocumentType);
        v54 = *(*(v12 + 56) + 8 * v26);
      }

      sub_21CD84264();
      v30 = v52;
      sub_21CD77EA4(v29, v52, type metadata accessor for MobileDocumentType.Identifier);
      v31 = (*v49)(v30, 2, v53);
      if (v31)
      {
        if (v31 == 1)
        {
          v32 = 0;
        }

        else
        {
          v32 = 2;
        }

        MEMORY[0x21CF17CC0](v32);
      }

      else
      {
        v33 = v48;
        v34 = v53;
        (*v46)(v48, v52, v53);
        MEMORY[0x21CF17CC0](1);
        sub_21CD77F0C(&qword_27CE19380, MEMORY[0x277CC9698], MEMORY[0x277CC96A8]);
        sub_21CD83A64();
        v35 = v34;
        v12 = v47;
        (*v45)(v33, v35);
      }

      result = sub_21CD84294();
      v36 = -1 << *(v14 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v21 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v21 + 8 * v38);
          if (v42 != -1)
          {
            v22 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_42:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v37) & ~*(v21 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = sub_21CD77FB4(v55, *(v14 + 48) + v27 * v22, type metadata accessor for MobileDocumentType);
      *(*(v14 + 56) + 8 * v22) = v54;
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v51 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_40;
    }

    v43 = 1 << *(v12 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero(v16, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v43;
    }

    *(v12 + 16) = 0;
  }

LABEL_40:
  *v3 = v14;
  return result;
}

uint64_t sub_21CD7677C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a5[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = a6(a4, a5[7] + 32 * a1);
  v9 = a5[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v11;
  }

  return result;
}

uint64_t sub_21CD767EC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for SynchronousExtensionPointManager.State(0);
  result = sub_21CD77FB4(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for SynchronousExtensionPointManager.State);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_21CD76898(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for MobileDocumentType(0);
  result = sub_21CD77FB4(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for MobileDocumentType);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void *sub_21CD7699C(uint64_t *a1, uint64_t *a2, void (*a3)(_BYTE *, uint64_t))
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v5 = *v3;
  v6 = sub_21CD83FF4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v4;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = 32 * v20;
        sub_21CCB15A8(*(v5 + 56) + 32 * v20, v29);
        v26 = (*(v7 + 48) + v21);
        *v26 = v23;
        v26[1] = v24;
        a3(v29, *(v7 + 56) + v25);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v4 = v27;
        goto LABEL_21;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v7;
  }

  return result;
}

void *sub_21CD76B3C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C248, &unk_21CD9AAD0);
  v2 = *v0;
  v3 = sub_21CD83FF4();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v23 + 8) = v20)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 16 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *v18;
      LOBYTE(v18) = *(v18 + 8);
      v20 = *(v2 + 56) + v17;
      v21 = *v20;
      LOBYTE(v20) = *(v20 + 8);
      v22 = *(v4 + 48) + v17;
      *v22 = v19;
      *(v22 + 8) = v18;
      v23 = *(v4 + 56) + v17;
      *v23 = v21;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_21CD76CAC()
{
  v1 = v0;
  v2 = type metadata accessor for SynchronousExtensionPointManager.State(0);
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C230, &qword_21CD9AAB8);
  v4 = *v0;
  v5 = sub_21CD83FF4();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_21CD77EA4(*(v4 + 56) + v26, v30, type metadata accessor for SynchronousExtensionPointManager.State);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_21CD77FB4(v25, *(v27 + 56) + v26, type metadata accessor for SynchronousExtensionPointManager.State);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
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

void *sub_21CD76F04()
{
  v1 = v0;
  v2 = type metadata accessor for MobileDocumentType(0);
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C238, &unk_21CD9AAC0);
  v5 = *v0;
  v6 = sub_21CD83FF4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_21CD77EA4(*(v5 + 48) + v21, v4, type metadata accessor for MobileDocumentType);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_21CD77FB4(v4, *(v7 + 48) + v21, type metadata accessor for MobileDocumentType);
        *(*(v7 + 56) + 8 * v20) = v22;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
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

uint64_t _s7CoreIDV25MobileDocumentRequestTypeV7StorageO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (v4 == 1)
    {
      if (v7 == 1)
      {
        LOBYTE(v4) = 1;
        sub_21CD19BA8(*a2, *(a2 + 8), 1u);
        v8 = v2;
        v9 = v3;
        v10 = 1;
LABEL_10:
        sub_21CD19BA8(v8, v9, v10);
        v11 = sub_21CD72F34(v2, v5);
        goto LABEL_13;
      }
    }

    else if (v7 == 2)
    {
      LOBYTE(v4) = 2;
      sub_21CD19BA8(*a2, *(a2 + 8), 2u);
      v8 = v2;
      v9 = v3;
      v10 = 2;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (*(a2 + 16))
  {
LABEL_11:
    sub_21CD19BA8(*a2, *(a2 + 8), v7);
    sub_21CD19BA8(v2, v3, v4);
LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  sub_21CD19BA8(*a2, *(a2 + 8), 0);
  sub_21CD19BA8(v2, v3, 0);
  if ((sub_21CD72408(v2, v5) & 1) == 0)
  {
    LOBYTE(v4) = 0;
    LOBYTE(v7) = 0;
    goto LABEL_12;
  }

  v11 = sub_21CD72C10(v3, v6);
  LOBYTE(v4) = 0;
  LOBYTE(v7) = 0;
LABEL_13:
  sub_21CD19C4C(v2, v3, v4);
  sub_21CD19C4C(v5, v6, v7);
  return v11 & 1;
}

unint64_t sub_21CD772A4()
{
  result = qword_27CE1C0E8;
  if (!qword_27CE1C0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C0E8);
  }

  return result;
}

unint64_t sub_21CD772F8()
{
  result = qword_27CE1C0F0;
  if (!qword_27CE1C0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C0F0);
  }

  return result;
}

unint64_t sub_21CD7734C()
{
  result = qword_27CE1C110;
  if (!qword_27CE1C110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C110);
  }

  return result;
}

unint64_t sub_21CD773A0()
{
  result = qword_27CE1C118;
  if (!qword_27CE1C118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C118);
  }

  return result;
}

uint64_t sub_21CD773F4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE1C130, &qword_21CD9A210);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21CD7746C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE1C0F8, &qword_21CD9A200);
    sub_21CD77F0C(a2, type metadata accessor for MobileDocumentRequest, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21CD77508(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE1C120, &qword_21CD9A208);
    sub_21CD77F0C(a2, type metadata accessor for MobileDocumentType, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21CD775A4()
{
  result = qword_27CE1C188;
  if (!qword_27CE1C188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C188);
  }

  return result;
}

unint64_t sub_21CD775F8()
{
  result = qword_27CE1C190;
  if (!qword_27CE1C190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C190);
  }

  return result;
}

unint64_t sub_21CD7764C()
{
  result = qword_27CE1C1A0;
  if (!qword_27CE1C1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C1A0);
  }

  return result;
}

unint64_t sub_21CD776A4()
{
  result = qword_27CE1C1A8;
  if (!qword_27CE1C1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C1A8);
  }

  return result;
}

unint64_t sub_21CD776FC()
{
  result = qword_27CE1C1B0;
  if (!qword_27CE1C1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C1B0);
  }

  return result;
}

uint64_t sub_21CD77760(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21CD777A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_21CD77858()
{
  result = qword_27CE1C1B8;
  if (!qword_27CE1C1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C1B8);
  }

  return result;
}

unint64_t sub_21CD778B0()
{
  result = qword_27CE1C1C0;
  if (!qword_27CE1C1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C1C0);
  }

  return result;
}

unint64_t sub_21CD77908()
{
  result = qword_27CE1C1C8;
  if (!qword_27CE1C1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C1C8);
  }

  return result;
}

unint64_t sub_21CD77960()
{
  result = qword_27CE1C1D0;
  if (!qword_27CE1C1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C1D0);
  }

  return result;
}

unint64_t sub_21CD779B8()
{
  result = qword_27CE1C1D8;
  if (!qword_27CE1C1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C1D8);
  }

  return result;
}

unint64_t sub_21CD77A10()
{
  result = qword_27CE1C1E0;
  if (!qword_27CE1C1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C1E0);
  }

  return result;
}

unint64_t sub_21CD77A68()
{
  result = qword_27CE1C1E8;
  if (!qword_27CE1C1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C1E8);
  }

  return result;
}

unint64_t sub_21CD77AC0()
{
  result = qword_27CE1C1F0;
  if (!qword_27CE1C1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C1F0);
  }

  return result;
}

unint64_t sub_21CD77B18()
{
  result = qword_27CE1C1F8;
  if (!qword_27CE1C1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C1F8);
  }

  return result;
}

unint64_t sub_21CD77B70()
{
  result = qword_27CE1C200;
  if (!qword_27CE1C200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C200);
  }

  return result;
}

unint64_t sub_21CD77BC8()
{
  result = qword_27CE1C208;
  if (!qword_27CE1C208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C208);
  }

  return result;
}

unint64_t sub_21CD77C20()
{
  result = qword_27CE1C210;
  if (!qword_27CE1C210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C210);
  }

  return result;
}

unint64_t sub_21CD77C78()
{
  result = qword_27CE1C218;
  if (!qword_27CE1C218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C218);
  }

  return result;
}

unint64_t sub_21CD77CD0()
{
  result = qword_27CE1C220;
  if (!qword_27CE1C220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C220);
  }

  return result;
}

unint64_t sub_21CD77D28()
{
  result = qword_27CE1C228;
  if (!qword_27CE1C228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C228);
  }

  return result;
}

uint64_t sub_21CD77D7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4F79616C70736964 && a2 == 0xEB00000000796C6ELL;
  if (v4 || (sub_21CD841A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E61725461746164 && a2 == 0xEC00000072656673 || (sub_21CD841A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5261746144776172 && a2 == 0xEE00747365757165)
  {

    return 2;
  }

  else
  {
    v6 = sub_21CD841A4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_21CD77EA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CD77F0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21CD77F54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21CD77FB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CD7803C(uint64_t a1)
{
  v2 = sub_21CD7A5B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD78078(uint64_t a1)
{
  v2 = sub_21CD7A5B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD780B4(uint64_t a1)
{
  v2 = sub_21CD7A6B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD780F0(uint64_t a1)
{
  v2 = sub_21CD7A6B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD7812C(uint64_t a1)
{
  v2 = sub_21CD7A65C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD78168(uint64_t a1)
{
  v2 = sub_21CD7A65C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD781A4(uint64_t a1)
{
  v2 = sub_21CD7A608();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD781E0(uint64_t a1)
{
  v2 = sub_21CD7A608();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentType.Identifier.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C280, &qword_21CD9AB80);
  v29 = *(v2 - 8);
  v30 = v2;
  MEMORY[0x28223BE20](v2);
  v28 = &v25 - v3;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C288, &qword_21CD9AB88);
  v27 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v33 = &v25 - v4;
  v5 = sub_21CD837F4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v32 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C290, &qword_21CD9AB90);
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for MobileDocumentType.Identifier(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C298, &qword_21CD9AB98);
  v14 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v16 = &v25 - v15;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD7A5B4();
  v17 = v6;
  sub_21CD842B4();
  sub_21CCAC174(v34, v13, type metadata accessor for MobileDocumentType.Identifier);
  v18 = (*(v6 + 48))(v13, 2, v5);
  if (v18)
  {
    if (v18 == 1)
    {
      v36 = 0;
      sub_21CD7A6B0();
      v19 = v35;
      sub_21CD840E4();
      (*(v25 + 8))(v10, v26);
    }

    else
    {
      v38 = 2;
      sub_21CD7A608();
      v24 = v28;
      v19 = v35;
      sub_21CD840E4();
      (*(v29 + 8))(v24, v30);
    }

    return (*(v14 + 8))(v16, v19);
  }

  else
  {
    v20 = v27;
    (*(v6 + 32))(v32, v13, v5);
    v37 = 1;
    sub_21CD7A65C();
    v21 = v35;
    sub_21CD840E4();
    sub_21CD7A704(&qword_27CE19428, MEMORY[0x277CC9698], MEMORY[0x277CC96A0]);
    v22 = v31;
    sub_21CD84164();
    (*(v20 + 8))(v33, v22);
    (*(v17 + 8))(v32, v5);
    return (*(v14 + 8))(v16, v21);
  }
}

uint64_t MobileDocumentType.Identifier.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C2C0, &qword_21CD9ABA0);
  v53 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v52 = &v42 - v3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C2C8, &qword_21CD9ABA8);
  v49 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v51 = &v42 - v4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C2D0, &qword_21CD9ABB0);
  v50 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v6 = &v42 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C2D8, &unk_21CD9ABB8);
  v55 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v42 - v8;
  v10 = type metadata accessor for MobileDocumentType.Identifier(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v42 - v14;
  v16 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v16);
  sub_21CD7A5B4();
  v17 = v56;
  sub_21CD842A4();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_0(v57);
  }

  v56 = v10;
  v19 = v50;
  v18 = v51;
  v43 = v13;
  v44 = v15;
  v20 = v52;
  v21 = v53;
  v45 = 0;
  v22 = v54;
  v23 = sub_21CD840D4();
  v24 = (2 * *(v23 + 16)) | 1;
  v58 = v23;
  v59 = v23 + 32;
  v60 = 0;
  v61 = v24;
  v25 = sub_21CCD18D4();
  if (v25 != 3 && v60 == v61 >> 1)
  {
    if (v25)
    {
      v26 = v55;
      if (v25 == 1)
      {
        v62 = 1;
        sub_21CD7A65C();
        v27 = v18;
        v28 = v45;
        sub_21CD84034();
        if (!v28)
        {
          v29 = sub_21CD837F4();
          sub_21CD7A704(&qword_27CE19458, MEMORY[0x277CC9698], MEMORY[0x277CC96B8]);
          v30 = v43;
          v31 = v47;
          sub_21CD840C4();
          (*(v49 + 8))(v27, v31);
          (*(v26 + 8))(v9, v7);
          swift_unknownObjectRelease();
          (*(*(v29 - 8) + 56))(v30, 0, 2, v29);
          v32 = v44;
          sub_21CD7AAC4(v30, v44, type metadata accessor for MobileDocumentType.Identifier);
          goto LABEL_19;
        }

        goto LABEL_16;
      }

      v62 = 2;
      sub_21CD7A608();
      v39 = v45;
      sub_21CD84034();
      if (v39)
      {
LABEL_16:
        (*(v26 + 8))(v9, v7);
        goto LABEL_10;
      }

      (*(v21 + 8))(v20, v48);
      (*(v26 + 8))(v9, v7);
      swift_unknownObjectRelease();
      v41 = sub_21CD837F4();
      v32 = v44;
      (*(*(v41 - 8) + 56))(v44, 2, 2, v41);
    }

    else
    {
      v62 = 0;
      sub_21CD7A6B0();
      v37 = v45;
      sub_21CD84034();
      v38 = v55;
      if (v37)
      {
        (*(v55 + 8))(v9, v7);
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_0(v57);
      }

      (*(v19 + 8))(v6, v46);
      (*(v38 + 8))(v9, v7);
      swift_unknownObjectRelease();
      v40 = sub_21CD837F4();
      v32 = v44;
      (*(*(v40 - 8) + 56))(v44, 1, 2, v40);
    }

LABEL_19:
    sub_21CD7AAC4(v32, v22, type metadata accessor for MobileDocumentType.Identifier);
    return __swift_destroy_boxed_opaque_existential_0(v57);
  }

  v33 = sub_21CD83FA4();
  swift_allocError();
  v35 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19268, &qword_21CD88F20);
  *v35 = v56;
  sub_21CD84044();
  sub_21CD83F94();
  (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D84160], v33);
  swift_willThrow();
  (*(v55 + 8))(v9, v7);
LABEL_10:
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_0(v57);
}

uint64_t sub_21CD78F34(uint64_t a1)
{
  v2 = sub_21CD837F4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CCAC174(v1, v8, type metadata accessor for MobileDocumentType.Identifier);
  v9 = (*(v3 + 48))(v8, 2, v2);
  if (v9)
  {
    if (v9 == 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = 2;
    }

    return MEMORY[0x21CF17CC0](v10);
  }

  else
  {
    (*(v3 + 32))(v6, v8, v2);
    MEMORY[0x21CF17CC0](1);
    sub_21CD7A704(&qword_27CE19380, MEMORY[0x277CC9698], MEMORY[0x277CC96A8]);
    sub_21CD83A64();
    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_21CD7910C()
{
  v1 = v0;
  v2 = sub_21CD837F4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CD84264();
  sub_21CCAC174(v1, v8, type metadata accessor for MobileDocumentType.Identifier);
  v9 = (*(v3 + 48))(v8, 2, v2);
  if (v9)
  {
    if (v9 == 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = 2;
    }

    MEMORY[0x21CF17CC0](v10);
  }

  else
  {
    (*(v3 + 32))(v6, v8, v2);
    MEMORY[0x21CF17CC0](1);
    sub_21CD7A704(&qword_27CE19380, MEMORY[0x277CC9698], MEMORY[0x277CC96A8]);
    sub_21CD83A64();
    (*(v3 + 8))(v6, v2);
  }

  return sub_21CD84294();
}

uint64_t sub_21CD79348(uint64_t a1)
{
  v2 = sub_21CD7AA50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD79384(uint64_t a1)
{
  v2 = sub_21CD7AA50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C2E0, &qword_21CD9ABC8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD7AA50();
  sub_21CD842B4();
  type metadata accessor for MobileDocumentType.Identifier(0);
  sub_21CD7A704(&qword_27CE1C2F0, type metadata accessor for MobileDocumentType.Identifier, &protocol conformance descriptor for MobileDocumentType.Identifier);
  sub_21CD84164();
  return (*(v3 + 8))(v5, v2);
}

uint64_t _s7CoreIDV18MobileDocumentTypeV10IdentifierO4hash4intoys6HasherVz_tF_0(uint64_t a1)
{
  v2 = sub_21CD837F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MobileDocumentType.Identifier(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CCAC174(v1, v8, type metadata accessor for MobileDocumentType.Identifier);
  v9 = (*(v3 + 48))(v8, 2, v2);
  if (v9)
  {
    if (v9 == 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = 2;
    }

    return MEMORY[0x21CF17CC0](v10);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x21CF17CC0](1);
    sub_21CD7A704(&qword_27CE19380, MEMORY[0x277CC9698], MEMORY[0x277CC96A8]);
    sub_21CD83A64();
    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t _s7CoreIDV18MobileDocumentTypeV10IdentifierO9hashValueSivg_0()
{
  v1 = v0;
  v2 = sub_21CD837F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MobileDocumentType.Identifier(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CD84264();
  sub_21CCAC174(v1, v8, type metadata accessor for MobileDocumentType.Identifier);
  v9 = (*(v3 + 48))(v8, 2, v2);
  if (v9)
  {
    if (v9 == 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = 2;
    }

    MEMORY[0x21CF17CC0](v10);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x21CF17CC0](1);
    sub_21CD7A704(&qword_27CE19380, MEMORY[0x277CC9698], MEMORY[0x277CC96A8]);
    sub_21CD83A64();
    (*(v3 + 8))(v5, v2);
  }

  return sub_21CD84294();
}

uint64_t MobileDocumentType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for MobileDocumentType.Identifier(0);
  MEMORY[0x28223BE20](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C2F8, &qword_21CD9ABD0);
  v16 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for MobileDocumentType(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD7AA50();
  sub_21CD842A4();
  if (!v2)
  {
    v12 = v15;
    sub_21CD7A704(&qword_27CE1C300, type metadata accessor for MobileDocumentType.Identifier, &protocol conformance descriptor for MobileDocumentType.Identifier);
    v13 = v17;
    sub_21CD840C4();
    (*(v16 + 8))(v8, v6);
    sub_21CD7AAC4(v13, v11, type metadata accessor for MobileDocumentType.Identifier);
    sub_21CD7AAC4(v11, v12, type metadata accessor for MobileDocumentType);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_21CD79B98(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C2E0, &qword_21CD9ABC8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD7AA50();
  sub_21CD842B4();
  type metadata accessor for MobileDocumentType.Identifier(0);
  sub_21CD7A704(&qword_27CE1C2F0, type metadata accessor for MobileDocumentType.Identifier, &protocol conformance descriptor for MobileDocumentType.Identifier);
  sub_21CD84164();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21CD79D10()
{
  v1 = v0;
  v2 = sub_21CD837F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MobileDocumentType.Identifier(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CD84264();
  sub_21CCAC174(v1, v8, type metadata accessor for MobileDocumentType.Identifier);
  v9 = (*(v3 + 48))(v8, 2, v2);
  if (v9)
  {
    if (v9 == 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = 2;
    }

    MEMORY[0x21CF17CC0](v10);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x21CF17CC0](1);
    sub_21CD7A704(&qword_27CE19380, MEMORY[0x277CC9698], MEMORY[0x277CC96A8]);
    sub_21CD83A64();
    (*(v3 + 8))(v5, v2);
  }

  return sub_21CD84294();
}

uint64_t static MobileDocumentType.isSupportedNationalIDCardRegion(_:)(uint64_t a1)
{
  v2 = type metadata accessor for MobileDocumentType(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21CD837F4();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v4, a1, v5);
  (*(v6 + 56))(v4, 0, 2, v5);
  MobileDocumentType.iso18013Identifier.getter();

  sub_21CCAC244(v4, type metadata accessor for MobileDocumentType);
  return 1;
}

uint64_t static MobileDocumentType.nationalIDCard(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CD837F4();
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 2, v4);
}

uint64_t sub_21CD7A16C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = type metadata accessor for MobileDocumentType(0);
  __swift_allocate_value_buffer(v5, a2);
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = sub_21CD837F4();
  v8 = *(*(v7 - 8) + 56);

  return v8(v6, a3, 2, v7);
}

uint64_t sub_21CD7A22C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for MobileDocumentType(0);
  v7 = __swift_project_value_buffer(v6, a2);
  return sub_21CCAC174(v7, a4, type metadata accessor for MobileDocumentType);
}

uint64_t _s7CoreIDV18MobileDocumentTypeV10IdentifierO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CD837F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MobileDocumentType.Identifier(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18E78, &qword_21CD88450);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_21CCAC174(a1, &v21 - v13, type metadata accessor for MobileDocumentType.Identifier);
  sub_21CCAC174(a2, &v14[v15], type metadata accessor for MobileDocumentType.Identifier);
  v16 = *(v5 + 48);
  v17 = v16(v14, 2, v4);
  if (!v17)
  {
    sub_21CCAC174(v14, v10, type metadata accessor for MobileDocumentType.Identifier);
    if (!v16(&v14[v15], 2, v4))
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      v18 = MEMORY[0x21CF17230](v10, v7);
      v20 = *(v5 + 8);
      v20(v7, v4);
      v20(v10, v4);
      sub_21CCAC244(v14, type metadata accessor for MobileDocumentType.Identifier);
      return v18 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_9;
  }

  if (v17 == 1)
  {
    if (v16(&v14[v15], 2, v4) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v16(&v14[v15], 2, v4) != 2)
  {
LABEL_9:
    sub_21CCAC1DC(v14);
    v18 = 0;
    return v18 & 1;
  }

  sub_21CCAC244(v14, type metadata accessor for MobileDocumentType.Identifier);
  v18 = 1;
  return v18 & 1;
}

unint64_t sub_21CD7A5B4()
{
  result = qword_27CE1C2A0;
  if (!qword_27CE1C2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C2A0);
  }

  return result;
}

unint64_t sub_21CD7A608()
{
  result = qword_27CE1C2A8;
  if (!qword_27CE1C2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C2A8);
  }

  return result;
}

unint64_t sub_21CD7A65C()
{
  result = qword_27CE1C2B0;
  if (!qword_27CE1C2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C2B0);
  }

  return result;
}

unint64_t sub_21CD7A6B0()
{
  result = qword_27CE1C2B8;
  if (!qword_27CE1C2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C2B8);
  }

  return result;
}

uint64_t sub_21CD7A704(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s7CoreIDV18MobileDocumentTypeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CD837F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MobileDocumentType.Identifier(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18E78, &qword_21CD88450);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_21CCAC174(a1, &v21 - v13, type metadata accessor for MobileDocumentType.Identifier);
  sub_21CCAC174(a2, &v14[v15], type metadata accessor for MobileDocumentType.Identifier);
  v16 = *(v5 + 48);
  v17 = v16(v14, 2, v4);
  if (v17)
  {
    if (v17 == 1)
    {
      if (v16(&v14[v15], 2, v4) == 1)
      {
        goto LABEL_10;
      }

LABEL_8:
      sub_21CCAC1DC(v14);
      return 0;
    }

    if (v16(&v14[v15], 2, v4) != 2)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_21CCAC174(v14, v10, type metadata accessor for MobileDocumentType.Identifier);
  if (v16(&v14[v15], 2, v4))
  {
    (*(v5 + 8))(v10, v4);
    goto LABEL_8;
  }

  (*(v5 + 32))(v7, &v14[v15], v4);
  v19 = MEMORY[0x21CF17230](v10, v7);
  v20 = *(v5 + 8);
  v20(v7, v4);
  v20(v10, v4);
  if (v19)
  {
LABEL_10:
    sub_21CCAC244(v14, type metadata accessor for MobileDocumentType.Identifier);
    return 1;
  }

  sub_21CCAC244(v14, type metadata accessor for MobileDocumentType.Identifier);
  return 0;
}

unint64_t sub_21CD7AA50()
{
  result = qword_27CE1C2E8;
  if (!qword_27CE1C2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C2E8);
  }

  return result;
}

uint64_t sub_21CD7AAC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CD7ABE4(uint64_t a1)
{
  result = type metadata accessor for MobileDocumentType.Identifier(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_21CD7ACCC()
{
  result = qword_27CE1C338;
  if (!qword_27CE1C338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C338);
  }

  return result;
}

unint64_t sub_21CD7AD24()
{
  result = qword_27CE1C340;
  if (!qword_27CE1C340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C340);
  }

  return result;
}

unint64_t sub_21CD7AD7C()
{
  result = qword_27CE1C348;
  if (!qword_27CE1C348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C348);
  }

  return result;
}

unint64_t sub_21CD7ADD4()
{
  result = qword_27CE1C350;
  if (!qword_27CE1C350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C350);
  }

  return result;
}

unint64_t sub_21CD7AE2C()
{
  result = qword_27CE1C358;
  if (!qword_27CE1C358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C358);
  }

  return result;
}

unint64_t sub_21CD7AE84()
{
  result = qword_27CE1C360;
  if (!qword_27CE1C360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C360);
  }

  return result;
}

unint64_t sub_21CD7AEDC()
{
  result = qword_27CE1C368;
  if (!qword_27CE1C368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C368);
  }

  return result;
}

unint64_t sub_21CD7AF34()
{
  result = qword_27CE1C370;
  if (!qword_27CE1C370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C370);
  }

  return result;
}

unint64_t sub_21CD7AF8C()
{
  result = qword_27CE1C378;
  if (!qword_27CE1C378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C378);
  }

  return result;
}

unint64_t sub_21CD7AFE4()
{
  result = qword_27CE1C380;
  if (!qword_27CE1C380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C380);
  }

  return result;
}

unint64_t sub_21CD7B03C()
{
  result = qword_27CE1C388;
  if (!qword_27CE1C388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C388);
  }

  return result;
}

unint64_t sub_21CD7B094()
{
  result = qword_27CE1C390;
  if (!qword_27CE1C390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C390);
  }

  return result;
}

unint64_t sub_21CD7B0EC()
{
  result = qword_27CE1C398;
  if (!qword_27CE1C398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C398);
  }

  return result;
}

uint64_t MobileDocumentType.iso18013Identifier.getter()
{
  v1 = sub_21CD837F4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - v6;
  v8 = type metadata accessor for MobileDocumentType.Identifier(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CD7B47C(v0, v10);
  v11 = (*(v2 + 48))(v10, 2, v1);
  if (v11)
  {
    if (v11 == 1)
    {
      return 0xD000000000000015;
    }

    else
    {
      return 0xD000000000000017;
    }
  }

  else
  {
    (*(v2 + 16))(v7, v10, v1);
    sub_21CD837D4();
    sub_21CD7B4E0();
    v13 = sub_21CD83A84();
    v14 = *(v2 + 8);
    v14(v5, v1);
    v14(v7, v1);
    if (v13)
    {
      v14(v10, v1);
      return 0xD000000000000016;
    }

    else
    {
      (*(v2 + 32))(v5, v10, v1);
      v19 = 0;
      v20 = 0xE000000000000000;
      sub_21CD83F74();
      MEMORY[0x21CF175E0](0xD000000000000026, 0x800000021CDA1700);
      v15 = sub_21CD837C4();
      MEMORY[0x21CF175E0](v15);

      MEMORY[0x21CF175E0](0xD000000000000013, 0x800000021CDA1730);
      v16 = v19;
      v17 = v20;
      sub_21CCB14E0();
      swift_allocError();
      *v18 = 9;
      *(v18 + 8) = v16;
      *(v18 + 16) = v17;
      *(v18 + 24) = 0;
      swift_willThrow();
      return (v14)(v5, v1);
    }
  }
}

uint64_t sub_21CD7B47C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentType.Identifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21CD7B4E0()
{
  result = qword_27CE1C3A0;
  if (!qword_27CE1C3A0)
  {
    sub_21CD837F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C3A0);
  }

  return result;
}

uint64_t sub_21CD7B538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE19190, &qword_21CD8E260);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_21CCD1750(a3, v22 - v9, &unk_27CE19190, &qword_21CD8E260);
  v11 = sub_21CD83D74();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_21CCB1928(v10, &unk_27CE19190, &qword_21CD8E260);
  }

  else
  {
    sub_21CD83D64();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_21CD83CD4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = sub_21CD83B54() + 32;
      sub_21CD7DB6C();

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_21CCB1928(a3, &unk_27CE19190, &qword_21CD8E260);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21CCB1928(a3, &unk_27CE19190, &qword_21CD8E260);
  sub_21CD7DB6C();
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_21CD7B7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE19190, &qword_21CD8E260);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_21CCD1750(a3, v22 - v9, &unk_27CE19190, &qword_21CD8E260);
  v11 = sub_21CD83D74();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_21CCB1928(v10, &unk_27CE19190, &qword_21CD8E260);
  }

  else
  {
    sub_21CD83D64();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_21CD83CD4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_21CD83B54() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_21CCB1928(a3, &unk_27CE19190, &qword_21CD8E260);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21CCB1928(a3, &unk_27CE19190, &qword_21CD8E260);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t WalletSettingsAnalyticsReporter.__allocating_init()()
{
  v0 = swift_allocObject();
  WalletSettingsAnalyticsReporter.init()();
  return v0;
}

uint64_t WalletSettingsAnalyticsReporter.sendWalletSettingsToggled(eventType:referralSource:issuerType:)(_BYTE *a1, _BYTE *a2, _BYTE *a3)
{
  *(v4 + 320) = v3;
  *(v4 + 352) = *a1;
  *(v4 + 353) = *a2;
  *(v4 + 354) = *a3;
  return MEMORY[0x2822009F8](sub_21CD7BB0C, 0, 0);
}

uint64_t sub_21CD7BB0C()
{
  v1 = *(v0 + 354);
  v2 = *(v0 + 353);
  v3 = *(v0 + 352);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C3A8, &qword_21CD9B268);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21CD8E2C0;
  *(inited + 32) = 0x707954746E657665;
  v5 = MEMORY[0x277D837D0];
  v6 = 0x656C62616E65;
  if (v3)
  {
    v6 = 0x656C6261736964;
  }

  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = v6;
  v7 = 0xE600000000000000;
  if (v3)
  {
    v8 = 0xE700000000000000;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  *(inited + 56) = v8;
  *(inited + 72) = v5;
  *(inited + 80) = 0x67615465676170;
  *(inited + 88) = 0xE700000000000000;
  strcpy((inited + 96), "IDOnWebsites");
  *(inited + 109) = 0;
  *(inited + 110) = -5120;
  *(inited + 120) = v5;
  *(inited + 128) = 0x54746375646F7270;
  *(inited + 136) = 0xEB00000000657079;
  *(inited + 144) = 0x797469746E656469;
  v9 = 0xE800000000000000;
  *(inited + 152) = 0xE800000000000000;
  *(inited + 168) = v5;
  *(inited + 176) = 0x6C61727265666572;
  v10 = 0x7261506472696874;
  if (v2)
  {
    v10 = 0x73676E6974746573;
  }

  else
  {
    v9 = 0xED00007070417974;
  }

  *(inited + 184) = 0xEE00656372756F53;
  *(inited + 192) = v10;
  *(inited + 200) = v9;
  *(inited + 216) = v5;
  *(inited + 224) = 0x614E726575737369;
  v11 = 20531;
  if (v1)
  {
    v7 = 0xE200000000000000;
  }

  else
  {
    v11 = 0x74656C6C6177;
  }

  *(inited + 264) = v5;
  *(inited + 232) = 0xEA0000000000656DLL;
  *(inited + 240) = v11;
  *(inited + 248) = v7;
  v12 = sub_21CD7D664(inited);
  *(v0 + 328) = v12;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C3B0, &qword_21CD9B270);
  swift_arrayDestroy();
  v13 = swift_task_alloc();
  *(v0 + 336) = v13;
  *v13 = v0;
  v13[1] = sub_21CD7BDA8;

  return sub_21CCAFDC0(v12);
}

uint64_t sub_21CD7BDA8()
{
  v2 = *v1;
  *(v2 + 344) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21CD7BEF8, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_21CD7BEF8()
{
  v16 = v0;
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 344);
  v2 = sub_21CD839F4();
  __swift_project_value_buffer(v2, qword_280F78E40);
  v3 = v1;
  v4 = sub_21CD839D4();
  v5 = sub_21CD83E24();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 344);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_21CD84224();
    v12 = sub_21CCC02FC(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_21CC90000, v4, v5, "Failed to send wallet settings analytics, error: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x21CF18580](v9, -1, -1);
    MEMORY[0x21CF18580](v8, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t WalletSettingsAnalyticsReporter.EventType.rawValue.getter()
{
  if (*v0)
  {
    return 0x656C6261736964;
  }

  else
  {
    return 0x656C62616E65;
  }
}

uint64_t sub_21CD7C138(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656C6261736964;
  }

  else
  {
    v3 = 0x656C62616E65;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x656C6261736964;
  }

  else
  {
    v5 = 0x656C62616E65;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21CD841A4();
  }

  return v8 & 1;
}

uint64_t sub_21CD7C1DC()
{
  sub_21CD84264();
  sub_21CD83B74();

  return sub_21CD84294();
}

uint64_t sub_21CD7C25C(uint64_t a1)
{
  sub_21CD83B74();
}

uint64_t sub_21CD7C2C8()
{
  sub_21CD84264();
  sub_21CD83B74();

  return sub_21CD84294();
}

void sub_21CD7C350(uint64_t *a1@<X8>)
{
  v2 = 0x656C62616E65;
  if (*v1)
  {
    v2 = 0x656C6261736964;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t WalletSettingsAnalyticsReporter.ReferralSource.rawValue.getter()
{
  if (*v0)
  {
    return 0x73676E6974746573;
  }

  else
  {
    return 0x7261506472696874;
  }
}

uint64_t sub_21CD7C3E0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x73676E6974746573;
  }

  else
  {
    v3 = 0x7261506472696874;
  }

  if (v2)
  {
    v4 = 0xED00007070417974;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x73676E6974746573;
  }

  else
  {
    v5 = 0x7261506472696874;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xED00007070417974;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21CD841A4();
  }

  return v8 & 1;
}

uint64_t sub_21CD7C494()
{
  sub_21CD84264();
  sub_21CD83B74();

  return sub_21CD84294();
}

uint64_t sub_21CD7C524(uint64_t a1)
{
  sub_21CD83B74();
}

uint64_t sub_21CD7C5A0()
{
  sub_21CD84264();
  sub_21CD83B74();

  return sub_21CD84294();
}

void sub_21CD7C638(uint64_t *a1@<X8>)
{
  v2 = 0x7261506472696874;
  if (*v1)
  {
    v2 = 0x73676E6974746573;
  }

  v3 = 0xED00007070417974;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_21CD7C690@<X0>(char *a4@<X8>)
{
  v5 = sub_21CD84024();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a4 = v7;
  return result;
}

uint64_t WalletSettingsAnalyticsReporter.IssuerType.rawValue.getter()
{
  if (*v0)
  {
    return 20531;
  }

  else
  {
    return 0x74656C6C6177;
  }
}

uint64_t sub_21CD7C71C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 20531;
  }

  else
  {
    v3 = 0x74656C6C6177;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE200000000000000;
  }

  if (*a2)
  {
    v5 = 20531;
  }

  else
  {
    v5 = 0x74656C6C6177;
  }

  if (*a2)
  {
    v6 = 0xE200000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21CD841A4();
  }

  return v8 & 1;
}

uint64_t sub_21CD7C7B4()
{
  sub_21CD84264();
  sub_21CD83B74();

  return sub_21CD84294();
}

uint64_t sub_21CD7C828(uint64_t a1)
{
  sub_21CD83B74();
}

uint64_t sub_21CD7C888()
{
  sub_21CD84264();
  sub_21CD83B74();

  return sub_21CD84294();
}

uint64_t sub_21CD7C904@<X0>(char *a3@<X8>)
{
  v4 = sub_21CD84024();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void sub_21CD7C960(uint64_t *a1@<X8>)
{
  v2 = 20531;
  if (!*v1)
  {
    v2 = 0x74656C6C6177;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE200000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t WalletSettingsAnalyticsReporter.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE19190, &qword_21CD8E260);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v28[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18EC8, &unk_21CD885C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v28[-v6];
  v8 = sub_21CD83794();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v12 = sub_21CD839F4();
  __swift_project_value_buffer(v12, qword_280F78E40);
  v13 = sub_21CD839D4();
  v14 = sub_21CD83E24();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_21CC90000, v13, v14, "Initing new WalletSettingsAnalyticsReporter", v15, 2u);
    MEMORY[0x21CF18580](v15, -1, -1);
  }

  sub_21CD83784();
  type metadata accessor for IdentityAnalyticsReporter(0);
  v16 = swift_allocObject();
  v17 = OBJC_IVAR____TtC7CoreIDV25IdentityAnalyticsReporter_startTime;
  v18 = sub_21CD83744();
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C3B8, &qword_21CD9B278);
  v19 = swift_allocObject();
  *(v19 + ((*(*v19 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_21CCFEA1C(v7, v19 + *(*v19 + *MEMORY[0x277D841D0] + 16));
  *(v16 + v17) = v19;
  v20 = OBJC_IVAR____TtC7CoreIDV25IdentityAnalyticsReporter_archivedTokenCache;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C3C0, &qword_21CD9B280);
  v21 = swift_allocObject();
  *(v21 + 32) = 0;
  *(v21 + 16) = xmmword_21CD94260;
  *(v16 + v20) = v21;
  v22 = OBJC_IVAR____TtC7CoreIDV25IdentityAnalyticsReporter_sessionStatus;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C3C8, &qword_21CD9B288);
  v23 = swift_allocObject();
  *(v23 + 28) = 0;
  *(v23 + 16) = 0;
  *(v23 + 24) = 2;
  *(v16 + v22) = v23;
  (*(v9 + 16))(v16 + OBJC_IVAR____TtC7CoreIDV25IdentityAnalyticsReporter_samplingUUID, v11, v8);
  v24 = sub_21CD83D74();
  (*(*(v24 - 8) + 56))(v4, 1, 1, v24);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  *(v25 + 32) = v16;
  *(v25 + 40) = 0x74656C6C6177;
  *(v25 + 48) = 0xE600000000000000;
  strcpy((v25 + 56), "walletSettings");
  *(v25 + 71) = -18;
  *(v25 + 72) = sub_21CD7CE84;
  *(v25 + 80) = 0;

  sub_21CD7B538(0, 0, v4, &unk_21CD9B290, v25);
  v26 = *(v16 + OBJC_IVAR____TtC7CoreIDV25IdentityAnalyticsReporter_sessionStatus);
  os_unfair_lock_lock(v26 + 7);
  sub_21CD7D888(&v26[4]);
  os_unfair_lock_unlock(v26 + 7);

  (*(v9 + 8))(v11, v8);
  *(v1 + 16) = v16;
  return v1;
}

void sub_21CD7CE84(void *a1)
{
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v2 = sub_21CD839F4();
  __swift_project_value_buffer(v2, qword_280F78E40);
  v3 = a1;
  oslog = sub_21CD839D4();
  v4 = sub_21CD83E34();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = a1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_21CC90000, oslog, v4, "WalletSettingsAnalyticsReporter failed to initialize %@", v5, 0xCu);
    sub_21CCB1928(v6, &qword_27CE18F68, &unk_21CD88800);
    MEMORY[0x21CF18580](v6, -1, -1);
    MEMORY[0x21CF18580](v5, -1, -1);
  }
}

uint64_t WalletSettingsAnalyticsReporter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21CD7D038(_BYTE *a1, _BYTE *a2, _BYTE *a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21CCC01B8;

  return WalletSettingsAnalyticsReporter.sendWalletSettingsToggled(eventType:referralSource:issuerType:)(a1, a2, a3);
}

unint64_t sub_21CD7D0E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C400, &unk_21CD9B590);
    v3 = sub_21CD84014();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21CCA996C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21CD7D1E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A998, &unk_21CD91CC0);
    v3 = sub_21CD84014();
    v4 = a1 + 32;

    while (1)
    {
      sub_21CCD1750(v4, &v13, &qword_27CE18EE0, &qword_21CD885D0);
      v5 = v13;
      v6 = v14;
      result = sub_21CCA996C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_21CC91EF8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21CD7D314(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C3E8, &unk_21CD9B550);
    v3 = sub_21CD84014();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_21CCA996C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21CD7D428(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C3F8, &unk_21CD9B570);
    v3 = sub_21CD84014();
    v4 = a1 + 32;

    while (1)
    {
      sub_21CCD1750(v4, &v11, &qword_27CE18F28, &qword_21CD88618);
      v5 = v11;
      result = sub_21CCAAF8C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_21CC91EF8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21CD7D550(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C248, &unk_21CD9AAD0);
    v3 = sub_21CD84014();

    for (i = (a1 + 56); ; i += 32)
    {
      v5 = *(i - 3);
      v6 = *(i - 16);
      v7 = *(i - 1);
      v8 = *i;
      result = sub_21CCAAE2C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 16 * result;
      *v11 = v5;
      *(v11 + 8) = v6;
      v12 = v3[7] + 16 * result;
      *v12 = v7;
      *(v12 + 8) = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21CD7D664(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C240, &unk_21CD9B580);
    v3 = sub_21CD84014();
    v4 = a1 + 32;

    while (1)
    {
      sub_21CCD1750(v4, &v13, &qword_27CE1C3B0, &qword_21CD9B270);
      v5 = v13;
      v6 = v14;
      result = sub_21CCA996C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_21CC91EF8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_21CD7D794(uint64_t a1)
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
  v10[1] = sub_21CCC01B8;

  return sub_21CCAD75C(a1, v12, v4, v5, v6, v7, v8, v9);
}

unint64_t sub_21CD7D8A8()
{
  result = qword_27CE1C3D0;
  if (!qword_27CE1C3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C3D0);
  }

  return result;
}

unint64_t sub_21CD7D900()
{
  result = qword_27CE1C3D8;
  if (!qword_27CE1C3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C3D8);
  }

  return result;
}

unint64_t sub_21CD7D958()
{
  result = qword_27CE1C3E0;
  if (!qword_27CE1C3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C3E0);
  }

  return result;
}

uint64_t dispatch thunk of WalletSettingsAnalyticsReporting.sendWalletSettingsToggled(eventType:referralSource:issuerType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_21CCC01B8;

  return v13(a1, a2, a3, a4, a5);
}

unint64_t sub_21CD7DB6C()
{
  result = qword_27CE18EF8;
  if (!qword_27CE18EF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CE18EF8);
  }

  return result;
}

unint64_t sub_21CD7DBB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C3F0, &unk_21CD9B560);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C238, &unk_21CD9AAC0);
    v7 = sub_21CD84014();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_21CCD1750(v9, v5, &qword_27CE1C3F0, &unk_21CD9B560);
      result = sub_21CCAB040(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for MobileDocumentType(0);
      result = sub_21CD3EE50(v5, v14 + *(*(v15 - 8) + 72) * v13);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_21CD7DD88()
{
  v0 = sub_21CD83834();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_21CD83AF4();
  MEMORY[0x28223BE20](v1 - 8);
  sub_21CD83A94();
  if (qword_27CE18BA8 != -1)
  {
    swift_once();
  }

  v2 = qword_27CE3EA38;
  sub_21CD83824();
  result = sub_21CD83B34();
  qword_27CE1C408 = result;
  unk_27CE1C410 = v4;
  return result;
}

uint64_t sub_21CD7DEF8()
{
  v0 = sub_21CD83834();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_21CD83AF4();
  MEMORY[0x28223BE20](v1 - 8);
  sub_21CD83A94();
  if (qword_27CE18BA8 != -1)
  {
    swift_once();
  }

  v2 = qword_27CE3EA38;
  sub_21CD83824();
  result = sub_21CD83B34();
  qword_27CE1C418 = result;
  unk_27CE1C420 = v4;
  return result;
}

uint64_t sub_21CD7E068()
{
  v0 = sub_21CD83834();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_21CD83AF4();
  MEMORY[0x28223BE20](v1 - 8);
  sub_21CD83A94();
  if (qword_27CE18BA8 != -1)
  {
    swift_once();
  }

  v2 = qword_27CE3EA38;
  sub_21CD83824();
  result = sub_21CD83B34();
  qword_27CE1C428 = result;
  unk_27CE1C430 = v4;
  return result;
}

uint64_t sub_21CD7E1D8()
{
  v0 = sub_21CD83834();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_21CD83AF4();
  MEMORY[0x28223BE20](v1 - 8);
  sub_21CD83A94();
  if (qword_27CE18BA8 != -1)
  {
    swift_once();
  }

  v2 = qword_27CE3EA38;
  sub_21CD83824();
  result = sub_21CD83B34();
  qword_27CE1C438 = result;
  unk_27CE1C440 = v4;
  return result;
}

uint64_t sub_21CD7E348()
{
  v0 = sub_21CD83834();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_21CD83AF4();
  MEMORY[0x28223BE20](v1 - 8);
  sub_21CD83A94();
  if (qword_27CE18BA8 != -1)
  {
    swift_once();
  }

  v2 = qword_27CE3EA38;
  sub_21CD83824();
  result = sub_21CD83B34();
  qword_27CE1C448 = result;
  unk_27CE1C450 = v4;
  return result;
}

uint64_t sub_21CD7E4B8()
{
  v0 = sub_21CD83834();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_21CD83AF4();
  MEMORY[0x28223BE20](v1 - 8);
  sub_21CD83A94();
  if (qword_27CE18BA8 != -1)
  {
    swift_once();
  }

  v2 = qword_27CE3EA38;
  sub_21CD83824();
  result = sub_21CD83B34();
  qword_27CE1C458 = result;
  unk_27CE1C460 = v4;
  return result;
}

uint64_t sub_21CD7E628()
{
  v0 = sub_21CD83834();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_21CD83AF4();
  MEMORY[0x28223BE20](v1 - 8);
  sub_21CD83A94();
  if (qword_27CE18BA8 != -1)
  {
    swift_once();
  }

  v2 = qword_27CE3EA38;
  sub_21CD83824();
  result = sub_21CD83B34();
  qword_27CE1C468 = result;
  unk_27CE1C470 = v4;
  return result;
}

uint64_t sub_21CD7E798()
{
  v0 = sub_21CD83834();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_21CD83AF4();
  MEMORY[0x28223BE20](v1 - 8);
  sub_21CD83A94();
  if (qword_27CE18BA8 != -1)
  {
    swift_once();
  }

  v2 = qword_27CE3EA38;
  sub_21CD83824();
  result = sub_21CD83B34();
  qword_27CE1C478 = result;
  unk_27CE1C480 = v4;
  return result;
}

uint64_t sub_21CD7E908()
{
  v0 = sub_21CD83834();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_21CD83654();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21CD83AF4();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_21CD83664();
  MEMORY[0x28223BE20](v6 - 8);
  sub_21CD83A94();
  if (qword_27CE18BB0 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_27CE1C518);
  (*(v2 + 16))(v4, v7, v1);
  sub_21CD83824();
  sub_21CD83684();
  result = sub_21CD83B44();
  qword_27CE1C488 = result;
  unk_27CE1C490 = v9;
  return result;
}

uint64_t sub_21CD7EB7C(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v4 = *a2;

  return v4;
}

uint64_t static WebPresentmentLocalizedString.confirmVerificationBody(deviceName:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CD83664();
  MEMORY[0x28223BE20](v4 - 8);
  sub_21CD8298C(a1, a2);
  return sub_21CD83B44();
}

void *SendableXPCConnection.__allocating_init(machServiceName:interface:invalidationHandler:interruptionHandler:exportedInterface:exportedObject:connectionErrorMapper:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v16 = sub_21CD83B04();

  v17 = [v15 initWithMachServiceName:v16 options:4096];

  sub_21CCB3200(a9, v22);
  swift_allocObject();
  v18 = sub_21CD81E3C(v17, a3, a4, a5, a6, a7, a8, v22, a10, a11);

  sub_21CC94F4C(a6, a7);
  sub_21CC94F4C(a4, a5);

  sub_21CCB1928(a9, &qword_27CE19160, &unk_21CD88740);
  return v18;
}

uint64_t SendableXPCConnection.performWithRemoteObjectProxy<A>(_:onCancel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_21CD7EE00, 0, 0);
}

uint64_t sub_21CD7EE00()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  v6 = *(v0 + 24);
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  *(v5 + 32) = v6;
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  v7[2] = v2;
  v7[3] = v4;
  v7[4] = v3;
  v7[5] = v1;
  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  *v8 = v0;
  v8[1] = sub_21CD7EF20;
  v9 = *(v0 + 56);
  v10 = *(v0 + 16);

  return MEMORY[0x282200830](v10, &unk_21CD9B618, v5, sub_21CD822A8, v7, 0, 0, v9);
}

uint64_t sub_21CD7EF20()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21CD7F068, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_21CD7F068()
{

  v1 = *(v0 + 8);

  return v1();
}

id SendableXPCConnection.wrapped.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

uint64_t SendableXPCConnection.interruptionHandler.setter(uint64_t a1, uint64_t a2)
{
  sub_21CD822B4(a1, a2, &block_descriptor_74, &selRef_setInterruptionHandler_);

  return sub_21CC94F4C(a1, a2);
}

uint64_t SendableXPCConnection.invalidationHandler.setter(uint64_t a1, uint64_t a2)
{
  sub_21CD822B4(a1, a2, &block_descriptor_71, &selRef_setInvalidationHandler_);

  return sub_21CC94F4C(a1, a2);
}

uint64_t SendableXPCConnection.exportedObject.setter(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  sub_21CCB3200(a1, v12);
  v5 = v13;
  if (v13)
  {
    v6 = __swift_project_boxed_opaque_existential_0(v12, v13);
    v7 = *(v5 - 8);
    MEMORY[0x28223BE20](v6);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    v10 = sub_21CD84194();
    (*(v7 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    v10 = 0;
  }

  [v4 setExportedObject_];
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v3 + 24));
  return sub_21CCB1928(a1, &qword_27CE19160, &unk_21CD88740);
}

void SendableXPCConnection.exportedObject.getter(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  if ([*(v3 + 16) exportedObject])
  {
    sub_21CD83EE4();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  *a1 = v4;
  a1[1] = v5;

  os_unfair_lock_unlock((v3 + 24));
}

void (*SendableXPCConnection.exportedObject.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  *(v3 + 64) = v1;
  SendableXPCConnection.exportedObject.getter(v3);
  return sub_21CD7F448;
}

void sub_21CD7F448(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_21CCB3200(*a1, v2 + 32);
    SendableXPCConnection.exportedObject.setter(v2 + 32);
    sub_21CCB1928(v2, &qword_27CE19160, &unk_21CD88740);
  }

  else
  {
    SendableXPCConnection.exportedObject.setter(*a1);
  }

  free(v2);
}

uint64_t (*SendableXPCConnection.interruptionHandler.getter())()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = [*(v1 + 16) interruptionHandler];
  if (v2)
  {
    v3 = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_21CD823BC;
    *(v5 + 24) = v4;
    os_unfair_lock_unlock((v1 + 24));
    v6 = swift_allocObject();
    *(v6 + 16) = sub_21CD823CC;
    *(v6 + 24) = v5;
    return sub_21CD82394;
  }

  else
  {
    os_unfair_lock_unlock((v1 + 24));
    return 0;
  }
}

uint64_t sub_21CD7F5B4@<X0>(uint64_t (**a1)()@<X8>)
{
  result = SendableXPCConnection.interruptionHandler.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_21CD828FC;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_21CD7F624(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_21CD828E4;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_21CC91FBC(v1, v2);
  sub_21CD822B4(v4, v3, &block_descriptor_74, &selRef_setInterruptionHandler_);

  return sub_21CC94F4C(v4, v3);
}

uint64_t (*SendableXPCConnection.interruptionHandler.modify(uint64_t (**a1)()))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  *a1 = SendableXPCConnection.interruptionHandler.getter();
  a1[1] = v3;
  return sub_21CD7F724;
}

uint64_t (*SendableXPCConnection.invalidationHandler.getter())()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = [*(v1 + 16) invalidationHandler];
  if (v2)
  {
    v3 = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_21CD828E0;
    *(v5 + 24) = v4;
    os_unfair_lock_unlock((v1 + 24));
    v6 = swift_allocObject();
    *(v6 + 16) = sub_21CD828FC;
    *(v6 + 24) = v5;
    return sub_21CD828E4;
  }

  else
  {
    os_unfair_lock_unlock((v1 + 24));
    return 0;
  }
}

uint64_t sub_21CD7F82C@<X0>(uint64_t (**a1)()@<X8>)
{
  result = SendableXPCConnection.invalidationHandler.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_21CD828FC;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_21CD7F89C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_21CD828E4;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_21CC91FBC(v1, v2);
  sub_21CD822B4(v4, v3, &block_descriptor_71, &selRef_setInvalidationHandler_);

  return sub_21CC94F4C(v4, v3);
}

uint64_t (*SendableXPCConnection.invalidationHandler.modify(uint64_t (**a1)()))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  *a1 = SendableXPCConnection.invalidationHandler.getter();
  a1[1] = v3;
  return sub_21CD7F99C;
}

uint64_t sub_21CD7F9B0(uint64_t *a1, char a2, uint64_t a3, SEL *a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a1;
  if (a2)
  {
    sub_21CC91FBC(v6, v5);
    sub_21CD822B4(v4, v5, a3, a4);
    sub_21CC94F4C(v4, v5);
  }

  else
  {
    sub_21CD822B4(v6, v5, a3, a4);
  }

  return sub_21CC94F4C(v4, v5);
}

void *SendableXPCConnection.__allocating_init(listenerEndpoint:interface:invalidationHandler:interruptionHandler:exportedInterface:exportedObject:connectionErrorMapper:)(void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = [objc_allocWithZone(MEMORY[0x277CCAE80]) initWithListenerEndpoint_];
  sub_21CCB3200(a8, v21);
  swift_allocObject();
  v17 = sub_21CD81E3C(v16, a2, a3, a4, a5, a6, a7, v21, a9, a10);

  sub_21CC94F4C(a5, a6);
  sub_21CC94F4C(a3, a4);

  sub_21CCB1928(a8, &qword_27CE19160, &unk_21CD88740);
  return v17;
}

uint64_t sub_21CD7FBE0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(void *, void *, uint64_t, uint64_t, uint64_t, uint64_t, void *, uint64_t, uint64_t, uint64_t))
{
  v18 = a11(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);

  sub_21CC94F4C(a5, a6);
  sub_21CC94F4C(a3, a4);

  return v18;
}

uint64_t SendableXPCConnection.deinit()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  [*(v1 + 16) invalidate];
  os_unfair_lock_unlock((v1 + 24));

  return v0;
}

Swift::Void __swiftcall SendableXPCConnection.invalidate()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  [*(v1 + 16) invalidate];

  os_unfair_lock_unlock((v1 + 24));
}

uint64_t SendableXPCConnection.__deallocating_deinit()
{
  SendableXPCConnection.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_21CD7FD5C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = *a2;
  return MEMORY[0x2822009F8](sub_21CD7FDAC, 0, 0);
}

uint64_t sub_21CD7FDAC()
{
  v1 = v0[7];
  v0[8] = SendableXPCConnection.wrapped.getter();
  v2 = *(v1 + 80);
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_21CD7FE64;
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[4];
  v8 = v0[2];

  return NSXPCConnection.performWithRemoteObjectProxy<A, B>(of:_:)(v8, v3, v7, v5, v2, v6);
}

uint64_t sub_21CD7FE64()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21CD7FFA0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_21CD7FFA0()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t NSXPCConnection.performWithRemoteObjectProxy<A, B>(of:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[6] = a6;
  v7[7] = v6;
  v7[4] = a4;
  v7[5] = a5;
  v7[2] = a1;
  v7[3] = a3;
  return MEMORY[0x2822009F8](sub_21CD8002C, 0, 0);
}

uint64_t sub_21CD8002C()
{
  v1 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19170, &unk_21CD8F690);
  v2 = swift_allocObject();
  *(v0 + 64) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = *(v0 + 40);
  *(v3 + 32) = v2;
  *(v3 + 40) = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_21CD80168;
  v7 = *(v0 + 48);
  v8 = *(v0 + 16);

  return MEMORY[0x2822008A0](v8, 0, 0, 0xD000000000000023, 0x800000021CD9E250, sub_21CD823F4, v3, v7);
}

uint64_t sub_21CD80168()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_21CD802E8;
  }

  else
  {

    v2 = sub_21CD80284;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CD80284()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21CD802E8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_21CD80354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE19190, &qword_21CD8E260);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  if (a1)
  {
    v11 = sub_21CD83D74();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = a4;
    v12[5] = a3;
    v12[6] = a1;
    v12[7] = a2;
    sub_21CC91FBC(a1, a2);

    sub_21CD5C550(0, 0, v10, &unk_21CD9B690, v12);
  }

  else
  {
    if (qword_280F77E40 != -1)
    {
      swift_once();
    }

    v13 = sub_21CD839F4();
    __swift_project_value_buffer(v13, qword_280F78E40);
    v18 = sub_21CD839D4();
    v14 = sub_21CD83E24();
    if (os_log_type_enabled(v18, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_21CC90000, v18, v14, "SendableXPCConnection onCancel is nil", v15, 2u);
      MEMORY[0x21CF18580](v15, -1, -1);
    }

    v16 = v18;
  }
}

uint64_t sub_21CD80568(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v7[6] = *a4;
  return MEMORY[0x2822009F8](sub_21CD805B4, 0, 0);
}

uint64_t sub_21CD805B4()
{
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v1 = sub_21CD839F4();
  v0[7] = __swift_project_value_buffer(v1, qword_280F78E40);
  v2 = sub_21CD839D4();
  v3 = sub_21CD83E14();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21CC90000, v2, v3, "SendableXPCConnection executing cancellation handler", v4, 2u);
    MEMORY[0x21CF18580](v4, -1, -1);
  }

  v6 = v0[5];
  v5 = v0[6];
  v8 = v0[3];
  v7 = v0[4];

  v0[8] = SendableXPCConnection.wrapped.getter();
  v9 = swift_allocObject();
  v0[9] = v9;
  v10 = *(v5 + 80);
  v9[2] = v10;
  v9[3] = v6;
  v9[4] = v8;
  v9[5] = v7;

  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = sub_21CD80784;
  v13 = MEMORY[0x277D84F78] + 8;

  return NSXPCConnection.performWithRemoteObjectProxy<A, B>(of:_:)(v11, v12, &unk_21CD9B6A0, v9, v10, v13);
}

uint64_t sub_21CD80784()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_21CD808A4;
  }

  else
  {
    v4 = *(v2 + 64);

    v3 = sub_21CCB78BC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21CD808A4()
{
  v1 = v0[11];
  v2 = v0[8];

  v3 = v1;
  v4 = sub_21CD839D4();
  v5 = sub_21CD83E34();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[11];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_21CC90000, v4, v5, "SendableXPCConnection error occurred when cancelling the task: %@", v8, 0xCu);
    sub_21CCB1928(v9, &qword_27CE18F68, &unk_21CD88800);
    MEMORY[0x21CF18580](v9, -1, -1);
    MEMORY[0x21CF18580](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_21CD80A10(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_21CCC01B8;

  return v7(a2);
}

uint64_t SendableXPCConnection.performSynchronouslyWithRemoteObjectProxy<A>(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a1;
  v26[0] = a3;
  v26[1] = a2;
  v4 = *(*v3 + 80);
  v5 = sub_21CD83EA4();
  v28 = *(v5 - 8);
  v29 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v26 - v7;
  v9 = *(v4 - 8);
  MEMORY[0x28223BE20](v6);
  v11 = v26 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v13 = SendableXPCConnection.wrapped.getter();
  v34 = sub_21CD82404;
  v35 = v12;
  aBlock = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = sub_21CD80FA4;
  v33 = &block_descriptor_9;
  v14 = _Block_copy(&aBlock);
  v36[5] = v12;

  v15 = [v13 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v14);

  sub_21CD83EE4();
  swift_unknownObjectRelease();
  sub_21CCB15A8(v36, &aBlock);
  v16 = swift_dynamicCast();
  v17 = *(v9 + 56);
  if (v16)
  {
    v17(v8, 0, 1, v4);
    (*(v9 + 32))(v11, v8, v4);
    swift_beginAccess();
    v18 = *(v12 + 16);
    if (!v18)
    {
      v27(v11);
      (*(v9 + 8))(v11, v4);
      __swift_destroy_boxed_opaque_existential_0(v36);
    }

    v19 = v3[3];
    v20 = v18;
    v19(v18);
    swift_willThrow();

    (*(v9 + 8))(v11, v4);
  }

  else
  {
    v17(v8, 1, 1, v4);
    (*(v28 + 8))(v8, v29);
    aBlock = 0;
    v31 = 0xE000000000000000;
    sub_21CD83F74();
    MEMORY[0x21CF175E0](0xD000000000000014, 0x800000021CD9E2A0);
    __swift_project_boxed_opaque_existential_0(v36, v36[3]);
    sub_21CD84184();
    MEMORY[0x21CF175E0](0xD000000000000013, 0x800000021CD9E2C0);
    v21 = sub_21CD842E4();
    MEMORY[0x21CF175E0](v21);

    v22 = aBlock;
    v23 = v31;
    sub_21CCB14E0();
    swift_allocError();
    *v24 = 2;
    *(v24 + 8) = v22;
    *(v24 + 16) = v23;
    *(v24 + 24) = 0;
    swift_willThrow();
  }

  __swift_destroy_boxed_opaque_existential_0(v36);
}

id sub_21CD80F50(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;

  return a1;
}

void sub_21CD80FA4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_21CD8100C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a5;
  v24 = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CE191A0, &qword_21CD88650);
  v10 = sub_21CD83D14();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE19190, &qword_21CD8E260);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v23 - v16;
  v18 = sub_21CD83D74();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(v11 + 16))(v14, a1, v10);
  v19 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  *(v20 + 4) = v23;
  *(v20 + 5) = a6;
  *(v20 + 6) = a2;
  (*(v11 + 32))(&v20[v19], v14, v10);
  v21 = &v20[(v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v21 = v24;
  v21[1] = a4;

  sub_21CD5C550(0, 0, v17, &unk_21CD9B680, v20);
}

uint64_t sub_21CD81250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a8;
  v8[17] = v13;
  v8[14] = a6;
  v8[15] = a7;
  v8[12] = a4;
  v8[13] = a5;
  v8[18] = swift_task_alloc();
  v10 = sub_21CD83EA4();
  v8[19] = v10;
  v8[20] = *(v10 - 8);
  v8[21] = swift_task_alloc();
  v8[22] = *(a8 - 8);
  v8[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CD8139C, 0, 0);
}

uint64_t sub_21CD8139C()
{
  v1 = v0[16];
  v2 = v0[17];
  v4 = v0[12];
  v3 = v0[13];
  os_unfair_lock_lock((v4 + 24));
  sub_21CD81A24((v4 + 16), v3, v1, v2, (v0 + 2));
  os_unfair_lock_unlock((v4 + 24));
  v5 = v0[22];
  sub_21CCB15A8((v0 + 2), (v0 + 6));
  v6 = swift_dynamicCast();
  v7 = *(v5 + 56);
  if (v6)
  {
    v9 = v0[22];
    v8 = v0[23];
    v10 = v0[21];
    v11 = v0[16];
    v12 = v0[14];
    v7(v10, 0, 1, v11);
    (*(v9 + 32))(v8, v10, v11);
    v24 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[24] = v13;
    *v13 = v0;
    v13[1] = sub_21CD81738;
    v14 = v0[23];
    v15 = v0[18];

    return v24(v15, v14);
  }

  else
  {
    v18 = v0[20];
    v17 = v0[21];
    v19 = v0[19];
    v7(v17, 1, 1, v0[16]);
    (*(v18 + 8))(v17, v19);
    sub_21CD83F74();
    MEMORY[0x21CF175E0](0xD000000000000014, 0x800000021CD9E2A0);
    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    sub_21CD84184();
    MEMORY[0x21CF175E0](0xD000000000000013, 0x800000021CD9E2C0);
    v20 = sub_21CD842E4();
    MEMORY[0x21CF175E0](v20);

    sub_21CCB14E0();
    v21 = swift_allocError();
    *v22 = 2;
    *(v22 + 8) = 0;
    *(v22 + 16) = 0xE000000000000000;
    *(v22 + 24) = 0;
    v0[10] = v21;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CE191A0, &qword_21CD88650);
    sub_21CD83D14();
    sub_21CD83CF4();
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_21CD81738()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_21CD8193C;
  }

  else
  {
    v2 = sub_21CD8184C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CD8184C()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[16];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CE191A0, &qword_21CD88650);
  sub_21CD83D14();
  sub_21CD83D04();
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_21CD8193C()
{
  v1 = v0[25];
  (*(v0[22] + 8))(v0[23], v0[16]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v0[11] = v1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CE191A0, &qword_21CD88650);
  sub_21CD83D14();
  sub_21CD83CF4();

  v2 = v0[1];

  return v2();
}

uint64_t sub_21CD81A24@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19[1] = a5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CE191A0, &qword_21CD88650);
  v9 = sub_21CD83D14();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v19 - v11;
  v13 = *a1;
  (*(v10 + 16))(v19 - v11, a2, v9);
  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  (*(v10 + 32))(v15 + v14, v12, v9);
  aBlock[4] = sub_21CD82644;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21CD80FA4;
  aBlock[3] = &block_descriptor_62;
  v16 = _Block_copy(aBlock);

  v17 = [v13 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_21CD83EE4();
  return swift_unknownObjectRelease();
}

uint64_t sub_21CD81C30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v5 = sub_21CD839F4();
  __swift_project_value_buffer(v5, qword_280F78E40);
  v6 = a1;
  v7 = sub_21CD839D4();
  v8 = sub_21CD83E34();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = sub_21CD84224();
    v13 = sub_21CCC02FC(v11, v12, &v18);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_21CC90000, v7, v8, "XPC connection error: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x21CF18580](v10, -1, -1);
    MEMORY[0x21CF18580](v9, -1, -1);
  }

  sub_21CCB14E0();
  v14 = swift_allocError();
  *v15 = 4;
  *(v15 + 8) = 0xD000000000000014;
  *(v15 + 16) = 0x800000021CD9E300;
  *(v15 + 24) = a1;
  v18 = v14;
  v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CE191A0, &qword_21CD88650);
  sub_21CD83D14();
  return sub_21CD83CF4();
}

void *sub_21CD81E3C(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  [a1 setRemoteObjectInterface_];
  if (a3)
  {
    v31 = a3;
    v32 = a4;
    aBlock = MEMORY[0x277D85DD0];
    v28 = 1107296256;
    v29 = sub_21CCB3270;
    v30 = &block_descriptor_68;
    a3 = _Block_copy(&aBlock);
  }

  [a1 setInvalidationHandler_];
  _Block_release(a3);
  if (a5)
  {
    v31 = a5;
    v32 = a6;
    aBlock = MEMORY[0x277D85DD0];
    v28 = 1107296256;
    v29 = sub_21CCB3270;
    v30 = &block_descriptor_65_0;
    a5 = _Block_copy(&aBlock);
  }

  [a1 setInterruptionHandler_];
  _Block_release(a5);
  [a1 setExportedInterface_];
  sub_21CCB3200(a8, &aBlock);
  v18 = v30;
  if (v30)
  {
    v19 = __swift_project_boxed_opaque_existential_0(&aBlock, v30);
    v20 = *(v18 - 1);
    MEMORY[0x28223BE20](v19);
    v22 = &aBlock - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v22);
    v23 = sub_21CD84194();
    (*(v20 + 8))(v22, v18);
    __swift_destroy_boxed_opaque_existential_0(&aBlock);
  }

  else
  {
    v23 = 0;
  }

  [a1 setExportedObject_];
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19170, &unk_21CD8F690);
  v24 = swift_allocObject();
  *(v24 + 24) = 0;
  *(v24 + 16) = a1;
  v10[2] = v24;
  v10[3] = a9;
  v10[4] = a10;
  v25 = a1;

  [v25 activate];
  sub_21CCB1928(a8, &qword_27CE19160, &unk_21CD88740);
  return v10;
}

uint64_t sub_21CD821E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21CCC01B8;

  return sub_21CD7FD5C(a1, v5, v7, v6, v4);
}

void sub_21CD822B4(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v9 = *(v4 + 16);
  os_unfair_lock_lock((v9 + 24));
  v10 = *(v9 + 16);
  if (a1)
  {
    v12[4] = a1;
    v12[5] = a2;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = sub_21CCB3270;
    v12[3] = a3;
    v11 = _Block_copy(v12);
  }

  else
  {
    v11 = 0;
  }

  [v10 *a4];
  _Block_release(v11);
  os_unfair_lock_unlock((v9 + 24));
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21CD824C8(uint64_t a1)
{
  v3 = v2;
  v16 = v1[4];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CE191A0, &qword_21CD88650);
  v5 = *(sub_21CD83D14() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[6];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_21CCC498C;

  return sub_21CD81250(a1, v7, v8, v9, v1 + v6, v11, v12, v16);
}

uint64_t sub_21CD82644(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CE191A0, &qword_21CD88650);
  v5 = *(sub_21CD83D14() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_21CD81C30(a1, v6, v3, v4);
}

uint64_t sub_21CD826EC(uint64_t a1)
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
  v10[1] = sub_21CCC01B8;

  return sub_21CD80568(a1, v4, v5, v7, v9, v8, v6);
}

uint64_t sub_21CD827C0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 32);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21CCC498C;

  return sub_21CD80A10(a1, a2, v6);
}

id sub_21CD82900()
{
  type metadata accessor for BundleToken();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27CE3EA38 = result;
  return result;
}

uint64_t sub_21CD8298C(uint64_t a1, uint64_t a2)
{
  v2 = sub_21CD83834();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_21CD83654();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CD83AF4();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_21CD83AD4();
  MEMORY[0x28223BE20](v8 - 8);
  sub_21CD83AC4();
  sub_21CD83AB4();
  sub_21CD83AA4();
  sub_21CD83AB4();
  sub_21CD83AE4();
  if (qword_27CE18BB0 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v3, qword_27CE1C518);
  (*(v4 + 16))(v6, v9, v3);
  sub_21CD83824();
  return sub_21CD83674();
}

uint64_t sub_21CD82C4C()
{
  v0 = sub_21CD83654();
  __swift_allocate_value_buffer(v0, qword_27CE1C518);
  v1 = __swift_project_value_buffer(v0, qword_27CE1C518);
  *v1 = type metadata accessor for ResourceBundleClass();
  v2 = *MEMORY[0x277CC9120];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}