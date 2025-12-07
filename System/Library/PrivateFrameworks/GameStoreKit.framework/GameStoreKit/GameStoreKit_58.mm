double sub_24EBEC00C@<D0>(uint64_t a1@<X8>)
{
  sub_24EBEBC44(v1 + 112, v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

__n128 __swift_memcpy153_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_24EBEC088(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 153))
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

uint64_t sub_24EBEC0D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 153) = 1;
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

    *(result + 153) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t PresentPromptActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for PresentPromptAction(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_24EBF1DF4(a1, &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PresentPromptAction);
  v12 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = *(a3 + 16);
  sub_24EBEE8D8(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  *(v13 + ((v11 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);

  v14 = sub_24F92A9E8();
  v15 = sub_24F92B858();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24F98B1B0;
  v16[5] = v13;
  v16[6] = v14;

  sub_24E6959D8(0, 0, v8, &unk_24F94D7B0, v16);

  return v14;
}

uint64_t sub_24EBEC3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[29] = a3;
  v4[30] = a4;
  v4[27] = a1;
  v4[28] = a2;
  v5 = sub_24F928AE8();
  v4[31] = v5;
  v4[32] = *(v5 - 8);
  v4[33] = swift_task_alloc();
  v4[34] = type metadata accessor for PresentPromptV2ActionIntent(0);
  v4[35] = swift_task_alloc();
  v6 = sub_24F9294C8();
  v4[36] = v6;
  v4[37] = *(v6 - 8);
  v4[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EBEC4F4, 0, 0);
}

uint64_t sub_24EBEC4F4()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[36];
  v4 = v0[28];
  v5 = *(type metadata accessor for PresentPromptAction(0) + 20);
  v6 = *(v2 + 16);
  v0[39] = v6;
  v0[40] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4 + v5, v3);
  v7 = swift_task_alloc();
  v0[41] = v7;
  *v7 = v0;
  v7[1] = sub_24EBEC5D4;
  v8 = v0[38];

  return sub_24EBF12C0(v8);
}

uint64_t sub_24EBEC5D4()
{
  v2 = *v1;
  v2[42] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24EBEC8E4, 0, 0);
  }

  else
  {
    v3 = v2[30];
    v4 = swift_task_alloc();
    v2[43] = v4;
    v7 = type metadata accessor for PresentPromptActionImplementation(0, v3, v5, v6);
    v2[44] = v7;
    *v4 = v2;
    v4[1] = sub_24EBEC76C;
    v8 = v2[38];
    v9 = v2[29];

    return sub_24EBEEA58(v8, v9, v7);
  }
}

uint64_t sub_24EBEC76C()
{
  v2 = *v1;
  v2[45] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24EBEDCD0, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[46] = v3;
    *v3 = v2;
    v3[1] = sub_24EBECAF8;
    v4 = v2[44];
    v5 = v2[29];
    v6 = v2[38];

    return sub_24EBEF4FC(v6, v5, v4);
  }
}

uint64_t sub_24EBEC8E4()
{
  v1 = v0[42];
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8E0);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[37];
  v7 = v0[38];
  v9 = v0[36];
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_24E5DD000, v4, v5, "PresentPrompt: Failed, reason: %@", v10, 0xCu);
    sub_24E601704(v11, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v11, -1, -1);
    MEMORY[0x2530542D0](v10, -1, -1);
  }

  else
  {
  }

  (*(v8 + 8))(v7, v9);
  (*(v0[32] + 104))(v0[27], *MEMORY[0x277D21CA8], v0[31]);

  v14 = v0[1];

  return v14();
}

uint64_t sub_24EBECAF8()
{
  v2 = *v1;
  v2[47] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24EBEDEE4, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[48] = v3;
    *v3 = v2;
    v3[1] = sub_24EBECC6C;
    v4 = v2[38];

    return sub_24EBF1404(v4);
  }
}

uint64_t sub_24EBECC6C()
{
  v2 = *v1;
  v2[49] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24EBECF84, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[50] = v3;
    *v3 = v2;
    v3[1] = sub_24EBECDE0;
    v4 = v2[29];
    v5 = v2[38];

    return sub_24EBF16D0(v5, v4);
  }
}

uint64_t sub_24EBECDE0()
{
  v2 = *v1;
  *(v2 + 408) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24EBED2AC, 0, 0);
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030, &qword_24F93B050);
    v4 = swift_task_alloc();
    *(v2 + 416) = v4;
    *v4 = v2;
    v4[1] = sub_24EBED198;

    return MEMORY[0x28217F228](v2 + 16, v3, v3);
  }
}

uint64_t sub_24EBECF84()
{
  v1 = v0[49];
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8E0);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[37];
  v7 = v0[38];
  v9 = v0[36];
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_24E5DD000, v4, v5, "PresentPrompt: Failed, reason: %@", v10, 0xCu);
    sub_24E601704(v11, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v11, -1, -1);
    MEMORY[0x2530542D0](v10, -1, -1);
  }

  else
  {
  }

  (*(v8 + 8))(v7, v9);
  (*(v0[32] + 104))(v0[27], *MEMORY[0x277D21CA8], v0[31]);

  v14 = v0[1];

  return v14();
}

uint64_t sub_24EBED198()
{
  *(*v1 + 424) = v0;

  if (v0)
  {
    v2 = sub_24EBEE0F8;
  }

  else
  {
    v2 = sub_24EBED4C0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EBED2AC()
{
  v1 = v0[51];
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8E0);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[37];
  v7 = v0[38];
  v9 = v0[36];
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_24E5DD000, v4, v5, "PresentPrompt: Failed, reason: %@", v10, 0xCu);
    sub_24E601704(v11, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v11, -1, -1);
    MEMORY[0x2530542D0](v10, -1, -1);
  }

  else
  {
  }

  (*(v8 + 8))(v7, v9);
  (*(v0[32] + 104))(v0[27], *MEMORY[0x277D21CA8], v0[31]);

  v14 = v0[1];

  return v14();
}

uint64_t sub_24EBED4C0()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 224);
  v4 = *v2;
  v3 = v2[1];
  (*(v0 + 312))(&v1[*(*(v0 + 272) + 20)], *(v0 + 304), *(v0 + 288));
  *v1 = v4;
  *(v1 + 1) = v3;
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v5);

  v7 = swift_task_alloc();
  *(v0 + 432) = v7;
  v8 = sub_24EBF1DAC(&qword_27F21D5F8, type metadata accessor for PresentPromptV2ActionIntent, &protocol conformance descriptor for PresentPromptV2ActionIntent);
  *v7 = v0;
  v7[1] = sub_24EBED5FC;
  v10 = *(v0 + 272);
  v9 = *(v0 + 280);
  v11 = *(v0 + 232);

  return MEMORY[0x28217F4B0](v0 + 96, v9, v11, v10, v8, v5, v6);
}

uint64_t sub_24EBED5FC()
{
  *(*v1 + 440) = v0;

  if (v0)
  {
    v2 = sub_24EBEE30C;
  }

  else
  {
    v2 = sub_24EBED710;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EBED710()
{
  v1 = *(v0 + 112);
  *(v0 + 56) = *(v0 + 96);
  *(v0 + 72) = v1;
  *(v0 + 88) = *(v0 + 128);
  sub_24E60169C(v0 + 56, v0 + 176, qword_27F21B590, &unk_24F93BE30);
  if (*(v0 + 200))
  {
    sub_24E612C80((v0 + 176), v0 + 136);
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v2 = sub_24F9220D8();
    __swift_project_value_buffer(v2, qword_27F39E8E0);
    v3 = sub_24F9220B8();
    v4 = sub_24F92BD98();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_24E5DD000, v3, v4, "PresentPrompt: An action will be performed.", v5, 2u);
      MEMORY[0x2530542D0](v5, -1, -1);
    }

    v6 = swift_task_alloc();
    *(v0 + 448) = v6;
    WitnessTable = swift_getWitnessTable();
    *v6 = v0;
    v6[1] = sub_24EBEDA94;
    v8 = *(v0 + 352);
    v9 = *(v0 + 264);
    v10 = *(v0 + 232);

    return sub_24F1487B0(v9, v0 + 136, v10, v8, WitnessTable);
  }

  else
  {
    sub_24E601704(v0 + 176, qword_27F21B590, &unk_24F93BE30);
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v12 = sub_24F9220D8();
    __swift_project_value_buffer(v12, qword_27F39E8E0);
    v13 = sub_24F9220B8();
    v14 = sub_24F92BD98();
    v15 = os_log_type_enabled(v13, v14);
    v17 = *(v0 + 296);
    v16 = *(v0 + 304);
    v19 = *(v0 + 280);
    v18 = *(v0 + 288);
    if (v15)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_24E5DD000, v13, v14, "PresentPrompt: No prompt.", v20, 2u);
      MEMORY[0x2530542D0](v20, -1, -1);
    }

    sub_24E601704(v0 + 56, qword_27F21B590, &unk_24F93BE30);
    sub_24EBF1E5C(v19, type metadata accessor for PresentPromptV2ActionIntent);
    (*(v17 + 8))(v16, v18);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    (*(*(v0 + 256) + 104))(*(v0 + 216), *MEMORY[0x277D21CA8], *(v0 + 248));

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_24EBEDA94()
{
  v2 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v3 = sub_24EBEE544;
  }

  else
  {
    (*(v2[32] + 8))(v2[33], v2[31]);
    v3 = sub_24EBEDBC0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24EBEDBC0()
{
  v2 = v0[37];
  v1 = v0[38];
  v4 = v0[35];
  v3 = v0[36];
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  sub_24E601704((v0 + 7), qword_27F21B590, &unk_24F93BE30);
  sub_24EBF1E5C(v4, type metadata accessor for PresentPromptV2ActionIntent);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  (*(v0[32] + 104))(v0[27], *MEMORY[0x277D21CA8], v0[31]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24EBEDCD0()
{
  v1 = v0[45];
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8E0);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[37];
  v7 = v0[38];
  v9 = v0[36];
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_24E5DD000, v4, v5, "PresentPrompt: Failed, reason: %@", v10, 0xCu);
    sub_24E601704(v11, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v11, -1, -1);
    MEMORY[0x2530542D0](v10, -1, -1);
  }

  else
  {
  }

  (*(v8 + 8))(v7, v9);
  (*(v0[32] + 104))(v0[27], *MEMORY[0x277D21CA8], v0[31]);

  v14 = v0[1];

  return v14();
}

uint64_t sub_24EBEDEE4()
{
  v1 = v0[47];
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8E0);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[37];
  v7 = v0[38];
  v9 = v0[36];
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_24E5DD000, v4, v5, "PresentPrompt: Failed, reason: %@", v10, 0xCu);
    sub_24E601704(v11, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v11, -1, -1);
    MEMORY[0x2530542D0](v10, -1, -1);
  }

  else
  {
  }

  (*(v8 + 8))(v7, v9);
  (*(v0[32] + 104))(v0[27], *MEMORY[0x277D21CA8], v0[31]);

  v14 = v0[1];

  return v14();
}

uint64_t sub_24EBEE0F8()
{
  v1 = v0[53];
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8E0);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[37];
  v7 = v0[38];
  v9 = v0[36];
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_24E5DD000, v4, v5, "PresentPrompt: Failed, reason: %@", v10, 0xCu);
    sub_24E601704(v11, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v11, -1, -1);
    MEMORY[0x2530542D0](v10, -1, -1);
  }

  else
  {
  }

  (*(v8 + 8))(v7, v9);
  (*(v0[32] + 104))(v0[27], *MEMORY[0x277D21CA8], v0[31]);

  v14 = v0[1];

  return v14();
}

uint64_t sub_24EBEE30C()
{
  sub_24EBF1E5C(v0[35], type metadata accessor for PresentPromptV2ActionIntent);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[55];
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8E0);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[37];
  v7 = v0[38];
  v9 = v0[36];
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_24E5DD000, v4, v5, "PresentPrompt: Failed, reason: %@", v10, 0xCu);
    sub_24E601704(v11, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v11, -1, -1);
    MEMORY[0x2530542D0](v10, -1, -1);
  }

  else
  {
  }

  (*(v8 + 8))(v7, v9);
  (*(v0[32] + 104))(v0[27], *MEMORY[0x277D21CA8], v0[31]);

  v14 = v0[1];

  return v14();
}

uint64_t sub_24EBEE544()
{
  v1 = v0[35];
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  sub_24E601704((v0 + 7), qword_27F21B590, &unk_24F93BE30);
  sub_24EBF1E5C(v1, type metadata accessor for PresentPromptV2ActionIntent);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[57];
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v3 = sub_24F9220D8();
  __swift_project_value_buffer(v3, qword_27F39E8E0);
  v4 = v2;
  v5 = sub_24F9220B8();
  v6 = sub_24F92BDB8();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[37];
  v8 = v0[38];
  v10 = v0[36];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v2;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_24E5DD000, v5, v6, "PresentPrompt: Failed, reason: %@", v11, 0xCu);
    sub_24E601704(v12, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v12, -1, -1);
    MEMORY[0x2530542D0](v11, -1, -1);
  }

  else
  {
  }

  (*(v9 + 8))(v8, v10);
  (*(v0[32] + 104))(v0[27], *MEMORY[0x277D21CA8], v0[31]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_24EBEE7A0()
{
  v1 = (type metadata accessor for PresentPromptAction(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 24) & ~*(*v1 + 80));

  v3 = v1[7];
  v4 = sub_24F9294C8();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v1[8];
  v6 = sub_24F928AD8();
  (*(*(v6 - 8) + 8))(v2 + v5, v6);

  return swift_deallocObject();
}

uint64_t sub_24EBEE8D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PresentPromptAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EBEE93C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(type metadata accessor for PresentPromptAction(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E6541E4;

  return sub_24EBEC3A4(a1, v1 + v6, v7, v4);
}

uint64_t sub_24EBEEA58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[189] = a3;
  v3[188] = a2;
  v3[187] = a1;
  v4 = sub_24F920868();
  v3[190] = v4;
  v3[191] = *(v4 - 8);
  v3[192] = swift_task_alloc();
  v3[193] = swift_task_alloc();
  v5 = sub_24F9207F8();
  v3[194] = v5;
  v3[195] = *(v5 - 8);
  v3[196] = swift_task_alloc();
  v3[197] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  v3[198] = swift_task_alloc();
  v3[199] = swift_task_alloc();
  type metadata accessor for Player(0);
  v3[200] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EBEEC04, 0, 0);
}

uint64_t sub_24EBEEC04()
{
  *(v0 + 1608) = sub_24F92B7F8();
  *(v0 + 1616) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24EBEEC9C, v2, v1);
}

uint64_t sub_24EBEEC9C()
{

  type metadata accessor for LocalPlayerProvider(0);
  sub_24F928F28();
  *(v0 + 1624) = *(v0 + 1400);

  return MEMORY[0x2822009F8](sub_24EBEED24, 0, 0);
}

uint64_t sub_24EBEED24(uint64_t a1)
{
  *(v1 + 1632) = sub_24F92B7E8();
  v3 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24EBEEDB0, v3, v2);
}

uint64_t sub_24EBEEDB0()
{
  v1 = v0[203];
  v2 = v0[200];

  swift_getKeyPath();
  v0[181] = v1;
  sub_24EBF1DAC(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
  sub_24F91FD88();

  v3 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__current;
  swift_beginAccess();
  sub_24EBF1DF4(v1 + v3, v2, type metadata accessor for Player);

  return MEMORY[0x2822009F8](sub_24EBEEED8, 0, 0);
}

uint64_t sub_24EBEEED8()
{
  v1 = v0[199];
  v2 = v0[198];
  v3 = v0[189];
  v4 = objc_opt_self();
  v5 = [v4 standardUserDefaults];
  sub_24F005EC8(v5);

  v6 = *(v3 + 16);
  sub_24F929468();
  v7 = [v4 standardUserDefaults];
  sub_24F005F70(v1);

  sub_24E60169C(v1, v2, &unk_27F22EC30, &qword_24F939880);
  v8 = sub_24F91F648();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v2, 1, v8);
  v11 = v0[198];
  if (v10 == 1)
  {
    sub_24E601704(v0[198], &unk_27F22EC30, &qword_24F939880);
  }

  else
  {
    sub_24F91F5E8();
    (*(v9 + 8))(v11, v8);
  }

  v12 = v0[200];
  sub_24F929488();
  v13 = swift_task_alloc();
  v0[205] = v13;
  *(v13 + 16) = v6;
  *(v13 + 24) = v12;
  swift_asyncLet_begin();
  v14 = swift_task_alloc();
  v0[206] = v14;
  *(v14 + 16) = v6;
  *(v14 + 24) = v12;
  swift_asyncLet_begin();
  v15 = v0[197];

  return MEMORY[0x282200928](v0 + 2, v15, sub_24EBEF170, v0 + 162);
}

uint64_t sub_24EBEF170()
{
  (*(v0[195] + 16))(v0[196], v0[197], v0[194]);
  v1 = v0[193];

  return MEMORY[0x282200928](v0 + 82, v1, sub_24EBEF1F4, v0 + 170);
}

uint64_t sub_24EBEF210()
{
  v1 = v0[196];
  v2 = v0[195];
  v3 = v0[194];
  v4 = v0[192];
  v5 = v0[191];
  v6 = v0[190];
  (*(v5 + 16))(v4, v0[193], v6);
  sub_24F9207E8();
  sub_24F9294A8();
  sub_24F920858();
  sub_24F9294A8();
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v7 = v0[193];

  return MEMORY[0x282200920](v0 + 82, v7, sub_24EBEF354, v0 + 176);
}

uint64_t sub_24EBEF370()
{

  v1 = *(v0 + 1576);

  return MEMORY[0x282200920](v0 + 16, v1, sub_24EBEF3DC, v0 + 1456);
}

uint64_t sub_24EBEF3F8()
{
  v1 = v0[200];
  v2 = v0[199];

  sub_24E601704(v2, &unk_27F22EC30, &qword_24F939880);
  sub_24EBF1E5C(v1, type metadata accessor for Player);

  v3 = v0[1];

  return v3();
}

uint64_t sub_24EBEF4FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v4 = sub_24F920EA8();
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  type metadata accessor for Player(0);
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EBEF660, 0, 0);
}

uint64_t sub_24EBEF660()
{
  *(v0 + 160) = sub_24F92B7F8();
  *(v0 + 168) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24EBEF6F8, v2, v1);
}

uint64_t sub_24EBEF6F8()
{

  type metadata accessor for LocalPlayerProvider(0);
  sub_24F928F28();
  *(v0 + 176) = *(v0 + 40);

  return MEMORY[0x2822009F8](sub_24EBEF780, 0, 0);
}

uint64_t sub_24EBEF780(uint64_t a1)
{
  *(v1 + 184) = sub_24F92B7E8();
  v3 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24EBEF80C, v3, v2);
}

uint64_t sub_24EBEF80C()
{
  v1 = v0[22];
  v2 = v0[19];

  swift_getKeyPath();
  v0[6] = v1;
  sub_24EBF1DAC(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
  sub_24F91FD88();

  v3 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__current;
  swift_beginAccess();
  sub_24EBF1DF4(v1 + v3, v2, type metadata accessor for Player);

  v4 = swift_task_alloc();
  v0[24] = v4;
  *v4 = v0;
  v4[1] = sub_24EBEF980;
  v5 = v0[18];

  return sub_24EBF0858(v5);
}

uint64_t sub_24EBEF980()
{

  return MEMORY[0x2822009F8](sub_24EBEFA7C, 0, 0);
}

uint64_t sub_24EBEFA7C()
{
  v2 = v0[14];
  v1 = v0[15];
  sub_24F920E98();
  sub_24F9294A8();
  v3 = objc_opt_self();
  v4 = [v3 standardUserDefaults];
  sub_24F0060A8(v4);

  sub_24F929468();
  v33 = v3;
  v5 = [v3 standardUserDefaults];
  sub_24F006150(v1);

  sub_24E60169C(v1, v2, &unk_27F22EC30, &qword_24F939880);
  v6 = sub_24F91F648();
  v7 = *(v6 - 8);
  v32 = *(v7 + 48);
  v8 = v32(v2, 1, v6);
  v9 = v0[14];
  if (v8 == 1)
  {
    sub_24E601704(v9, &unk_27F22EC30, &qword_24F939880);
  }

  else
  {
    sub_24F91F5E8();
    (*(v7 + 8))(v9, v6);
  }

  v10 = v0[12];
  v11 = v0[13];
  sub_24F929488();
  v12 = [v33 standardUserDefaults];
  sub_24F006288(v12);

  sub_24F929468();
  v13 = [v33 standardUserDefaults];
  sub_24F006330(v11);

  sub_24E60169C(v11, v10, &unk_27F22EC30, &qword_24F939880);
  v14 = v32(v10, 1, v6);
  v15 = v0[12];
  if (v14 == 1)
  {
    sub_24E601704(v0[12], &unk_27F22EC30, &qword_24F939880);
  }

  else
  {
    sub_24F91F5E8();
    (*(v7 + 8))(v15, v6);
  }

  v16 = v0[10];
  v17 = v0[11];
  sub_24F929488();
  v18 = [v33 standardUserDefaults];
  sub_24F006468(v18);

  sub_24F929468();
  v19 = [v33 standardUserDefaults];
  sub_24F006510(v17);

  sub_24E60169C(v17, v16, &unk_27F22EC30, &qword_24F939880);
  v20 = v32(v16, 1, v6);
  v21 = v0[10];
  if (v20 == 1)
  {
    sub_24E601704(v0[10], &unk_27F22EC30, &qword_24F939880);
  }

  else
  {
    sub_24F91F5E8();
    (*(v7 + 8))(v21, v6);
  }

  v23 = v0[18];
  v22 = v0[19];
  v24 = v0[17];
  v25 = v0[15];
  v31 = v0[16];
  v30 = v0[13];
  v26 = v0[11];
  sub_24F929488();
  v27 = [v33 standardUserDefaults];
  sub_24F006648(v27);

  sub_24F929468();
  sub_24E601704(v26, &unk_27F22EC30, &qword_24F939880);
  sub_24E601704(v30, &unk_27F22EC30, &qword_24F939880);
  sub_24E601704(v25, &unk_27F22EC30, &qword_24F939880);
  (*(v24 + 8))(v23, v31);
  sub_24EBF1E5C(v22, type metadata accessor for Player);

  v28 = v0[1];

  return v28();
}

uint64_t sub_24EBF0054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_24EBF0078, 0, 0);
}

uint64_t sub_24EBF0078()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *v1;
  v4 = v1[1];
  v5 = swift_task_alloc();
  v0[5] = v5;
  type metadata accessor for PresentPromptActionImplementation(0, v2, v6, v7);
  *v5 = v0;
  v5[1] = sub_24EBF0134;
  v8 = v0[2];

  return sub_24EBF022C(v8, v3, v4);
}

uint64_t sub_24EBF0134()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24EBF022C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  return MEMORY[0x2822009F8](sub_24EBF0250, 0, 0);
}

uint64_t sub_24EBF0250()
{
  v1 = [objc_opt_self() proxyForLocalPlayer];
  v2 = [v1 accountServicePrivate];
  v0[21] = v2;

  v3 = sub_24F92B098();
  v0[22] = v3;
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_24EBF03D8;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229BE0, &unk_24F9866B0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24EBF219C;
  v0[13] = &block_descriptor_38_1;
  v0[14] = v4;
  [v2 getAccountAgeCategoryForPlayerID:v3 withCompletion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24EBF03D8()
{

  return MEMORY[0x2822009F8](sub_24EBF04B8, 0, 0);
}

uint64_t sub_24EBF04B8()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);
  v3 = *(v0 + 184);
  swift_unknownObjectRelease();

  sub_24EBF0B2C(v3, v2);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24EBF0538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_24EBF055C, 0, 0);
}

uint64_t sub_24EBF055C()
{
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  type metadata accessor for PresentPromptActionImplementation(0, v1, v3, v4);
  *v2 = v0;
  v2[1] = sub_24EBF2198;
  v5 = v0[2];

  return sub_24EBF0618(v5);
}

uint64_t sub_24EBF0618(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  type metadata accessor for GKProfilePrivacyVisibility(0);
  *v2 = v1;
  v2[1] = sub_24EBF06F8;

  return MEMORY[0x2822007B8](v1 + 32, 0, 0, 0xD00000000000001CLL, 0x800000024FA56390, sub_24EBF0C8C, 0, v3);
}

uint64_t sub_24EBF06F8()
{

  return MEMORY[0x2822009F8](sub_24EBF07F4, 0, 0);
}

uint64_t sub_24EBF07F4()
{
  sub_24EBF0ED4(*(v0 + 32), *(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EBF0878()
{
  v1 = [objc_opt_self() proxyForLocalPlayer];
  v2 = [v1 profileServicePrivate];
  v0[19] = v2;

  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_24EBF09DC;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B368, &qword_24F98B298);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24EBF219C;
  v0[13] = &block_descriptor_58;
  v0[14] = v3;
  [v2 getContactsIntegrationConsentWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24EBF09DC()
{

  return MEMORY[0x2822009F8](sub_24EBF0ABC, 0, 0);
}

uint64_t sub_24EBF0ABC()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 160);
  swift_unknownObjectRelease();
  sub_24EBF109C(v2, v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24EBF0B2C@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 >= 4)
  {
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v5 = sub_24F9220D8();
    __swift_project_value_buffer(v5, qword_27F39E8E0);
    v6 = sub_24F9220B8();
    v7 = sub_24F92BDB8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = a1;
      _os_log_impl(&dword_24E5DD000, v6, v7, "Unknown age category: %d. Falling back to child.", v8, 8u);
      MEMORY[0x2530542D0](v8, -1, -1);
    }

    v4 = MEMORY[0x277D0CEB0];
  }

  else
  {
    v4 = qword_27968CDF8[a1];
  }

  v9 = *v4;
  v10 = sub_24F9207F8();
  v11 = *(*(v10 - 8) + 104);

  return v11(a2, v9, v10);
}

uint64_t sub_24EBF0C8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B370, &qword_24F98B2C8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - v4;
  v6 = [objc_opt_self() proxyForLocalPlayer];
  v7 = [v6 profileServicePrivate];

  (*(v3 + 16))(v5, a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v5, v2);
  aBlock[4] = sub_24EBF20D4;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EBF0E80;
  aBlock[3] = &block_descriptor_34_0;
  v10 = _Block_copy(aBlock);

  [v7 getProfilePrivacyWithHandler_];
  _Block_release(v10);
  return swift_unknownObjectRelease();
}

double sub_24EBF0E80(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

uint64_t sub_24EBF0ED4@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 >= 3)
  {
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v5 = sub_24F9220D8();
    __swift_project_value_buffer(v5, qword_27F39E8E0);
    v6 = sub_24F9220B8();
    v7 = sub_24F92BDB8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = a1;
      _os_log_impl(&dword_24E5DD000, v6, v7, "Unknown profile privacy visibility: %d. Falling back to meOnly.", v8, 8u);
      MEMORY[0x2530542D0](v8, -1, -1);
    }

    v4 = MEMORY[0x277D0CF60];
  }

  else
  {
    v4 = qword_27968CE18[a1];
  }

  v9 = *v4;
  v10 = sub_24F920868();
  v11 = *(*(v10 - 8) + 104);

  return v11(a2, v9, v10);
}

uint64_t sub_24EBF1034(uint64_t a1, int a2)
{
  sub_24F928FD8();
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  **(*(v4 + 64) + 40) = a2;

  return MEMORY[0x282200948](v4);
}

uint64_t sub_24EBF109C@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  if ((a1 + 1) >= 4)
  {
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v5 = sub_24F9220D8();
    __swift_project_value_buffer(v5, qword_27F39E8E0);
    v6 = sub_24F9220B8();
    v7 = sub_24F92BDB8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = a1;
      _os_log_impl(&dword_24E5DD000, v6, v7, "Unknown contacts integration consent: %d. Falling back to notSet.", v8, 8u);
      MEMORY[0x2530542D0](v8, -1, -1);
    }

    v3 = MEMORY[0x277D0D498];
  }

  else
  {
    v3 = qword_27968CE30[a1 + 1];
  }

  v9 = *v3;
  v10 = sub_24F920EA8();
  v11 = *(*(v10 - 8) + 104);

  return v11(a2, v9, v10);
}

uint64_t sub_24EBF1218()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24EBF12E0()
{
  v1 = [objc_opt_self() standardUserDefaults];
  NSUserDefaults.appLaunchCount.getter();

  sub_24F929468();
  v2 = [objc_opt_self() mainBundle];
  sub_24F76084C();

  sub_24F9294A8();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24EBF1404(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EBF14AC, 0, 0);
}

uint64_t sub_24EBF14AC()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = objc_opt_self();
  v4 = [v3 standardUserDefaults];
  sub_24F0066F0(v4);

  sub_24F929468();
  v5 = [v3 standardUserDefaults];
  sub_24F006798(v2);

  sub_24E60169C(v2, v1, &unk_27F22EC30, &qword_24F939880);
  v6 = sub_24F91F648();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v1, 1, v6);
  v9 = v0[3];
  if (v8 == 1)
  {
    sub_24E601704(v0[3], &unk_27F22EC30, &qword_24F939880);
  }

  else
  {
    sub_24F91F5E8();
    (*(v7 + 8))(v9, v6);
  }

  v10 = v0[4];
  sub_24F929488();
  sub_24E601704(v10, &unk_27F22EC30, &qword_24F939880);

  v11 = v0[1];

  return v11();
}

uint64_t sub_24EBF16D0(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0, &unk_24F969070);
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EBF17E0, 0, 0);
}

uint64_t sub_24EBF17E0()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = objc_opt_self();
  v4 = [v3 standardUserDefaults];
  sub_24F0068D0();

  sub_24F929468();
  v5 = [v3 standardUserDefaults];
  sub_24F00699C(v5);

  sub_24F9294A8();
  v6 = [v3 standardUserDefaults];
  sub_24F006A50(v2);

  sub_24E60169C(v2, v1, &unk_27F22EC30, &qword_24F939880);
  v7 = sub_24F91F648();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v1, 1, v7);
  v10 = v0[10];
  if (v9 == 1)
  {
    sub_24E601704(v0[10], &unk_27F22EC30, &qword_24F939880);
  }

  else
  {
    sub_24F91F5E8();
    (*(v8 + 8))(v10, v7);
  }

  sub_24F929488();
  v11 = type metadata accessor for ASKBagContract(0);
  v12 = swift_task_alloc();
  v0[12] = v12;
  *v12 = v0;
  v12[1] = sub_24EBF1A84;

  return MEMORY[0x28217F228](v0 + 4, v11, v11);
}

uint64_t sub_24EBF1A84()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_24EBF1D08;
  }

  else
  {
    v2 = sub_24EBF1B98;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EBF1B98()
{
  if (qword_27F210A70 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  sub_24F92A448();
  sub_24F92A408();
  (*(v3 + 8))(v2, v4);
  sub_24F9294A8();

  sub_24E601704(v1, &unk_27F22EC30, &qword_24F939880);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24EBF1D08()
{
  sub_24E601704(*(v0 + 88), &unk_27F22EC30, &qword_24F939880);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EBF1DAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EBF1DF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EBF1E5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24EBF1EE8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24E614970;

  return sub_24EBF0054(a1, v4, v5);
}

uint64_t sub_24EBF1F94(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24E6541E4;

  return sub_24EBF0538(a1, v4, v5);
}

uint64_t sub_24EBF2040()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B370, &qword_24F98B2C8);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24EBF20D4(int a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B370, &qword_24F98B2C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B370, &qword_24F98B2C8);
  return sub_24F92B798();
}

uint64_t block_copy_helper_32_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EBF21B4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for LeaderboardEntry(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B380, &unk_24F98B2E0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[8];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[11];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_24EBF2354(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for LeaderboardEntry(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B380, &unk_24F98B2E0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[8];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[11];

  return v16(v17, a2, a2, v15);
}

uint64_t type metadata accessor for StickyPlayerRowView(uint64_t a1)
{
  result = qword_27F22B388;
  if (!qword_27F22B388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EBF252C(uint64_t a1)
{
  type metadata accessor for LeaderboardEntry(319);
  if (v1 <= 0x3F)
  {
    sub_24E6C5550();
    if (v2 <= 0x3F)
    {
      sub_24EBF26B0(319, &qword_27F22B398, type metadata accessor for LeaderboardEntry, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_24EBF26B0(319, &qword_27F22B3A0, type metadata accessor for Page, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_24E746BEC(319, &qword_27F215590, MEMORY[0x277D85048]);
          if (v5 <= 0x3F)
          {
            sub_24E746BEC(319, &qword_27F254DF0, MEMORY[0x277CDF310]);
            if (v6 <= 0x3F)
            {
              sub_24E684120(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_24EBF26B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_24EBF2730(uint64_t *a1)
{
  v2 = *(type metadata accessor for LeaderboardEntry(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_24E86178C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_24EBF4150(v5);
  *a1 = v3;
}

uint64_t sub_24EBF27D8@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v38 = sub_24F924BE8();
  v36 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v35 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24F9240F8();
  v4 = *(v3 - 8);
  v30 = v3;
  v31 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B3A8, &qword_24F98B360);
  v28 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B3B0, &qword_24F98B368);
  v11 = *(v10 - 8);
  v32 = v10;
  v33 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - v12;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B3B8, &qword_24F98B370);
  MEMORY[0x28223BE20](v34);
  v15 = &v27 - v14;
  type metadata accessor for StickyPlayerRowView(0);
  v29 = v1;
  v39 = v1;
  type metadata accessor for BaseLeaderboardRowView(0);
  sub_24EBF5478(&qword_27F21C168, type metadata accessor for BaseLeaderboardRowView, &unk_24F97CC10);

  sub_24F926F88();
  sub_24F9240E8();
  v16 = sub_24E602068(&qword_27F22B3C0, &qword_27F22B3A8, &qword_24F98B360, MEMORY[0x277CDF028]);
  v17 = sub_24EBF5478(&qword_27F22B3C8, MEMORY[0x277CDDA98], MEMORY[0x277CDDA90]);
  v18 = v30;
  sub_24F926178();
  (*(v31 + 8))(v6, v18);
  (*(v28 + 8))(v9, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B3D0, &qword_24F98B378);
  v40 = v7;
  v41 = v18;
  v42 = v16;
  v43 = v17;
  swift_getOpaqueTypeConformance2();
  sub_24E6A4C1C();
  sub_24EBF3DA8();
  v19 = v32;
  sub_24F926B08();
  (*(v33 + 8))(v13, v19);
  LOBYTE(v6) = sub_24F9257F8();
  sub_24EBF2FB8();
  sub_24F923318();
  v20 = &v15[*(v34 + 36)];
  *v20 = v6;
  *(v20 + 1) = v21;
  *(v20 + 2) = v22;
  *(v20 + 3) = v23;
  *(v20 + 4) = v24;
  v20[40] = 0;
  v25 = v35;
  sub_24F924BC8();
  sub_24EBF3F20();
  sub_24F9266E8();
  (*(v36 + 8))(v25, v38);
  return sub_24EBF40E8(v15);
}

uint64_t sub_24EBF2CF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E6C2DEC(a1, a2);
  v4 = *(a1 + *(type metadata accessor for LeaderboardEntry(0) + 24));
  v5 = sub_24EBF3A6C();
  v7 = v6;
  v8 = sub_24F37B534();
  v10 = v9;

  v11 = sub_24EBF3BB8();
  v13 = v12;
  if (qword_27F210150 != -1)
  {
    swift_once();
  }

  v23[4] = xmmword_27F39BAA0;
  v23[5] = unk_27F39BAB0;
  v23[6] = xmmword_27F39BAC0;
  v23[0] = xmmword_27F39BA60;
  v23[1] = *&qword_27F39BA70;
  v23[2] = xmmword_27F39BA80;
  v23[3] = unk_27F39BA90;
  v14 = type metadata accessor for BaseLeaderboardRowView(0);
  v15 = a2 + v14[5];
  *v15 = v4 < 100;
  *(v15 + 8) = v5;
  *(v15 + 16) = v7;
  *(v15 + 24) = v8;
  *(v15 + 32) = v10;
  *(v15 + 40) = 0;
  *(v15 + 48) = 0;
  *(v15 + 56) = 1;
  *(v15 + 64) = v11;
  *(v15 + 72) = v13;
  *(v15 + 80) = 0;
  *(v15 + 88) = 0;
  *(v15 + 96) = 0;
  *(v15 + 97) = 2;
  v16 = (a2 + v14[6]);
  v17 = unk_27F39BAB0;
  v16[4] = xmmword_27F39BAA0;
  v16[5] = v17;
  v16[6] = xmmword_27F39BAC0;
  v18 = *&qword_27F39BA70;
  *v16 = xmmword_27F39BA60;
  v16[1] = v18;
  v19 = unk_27F39BA90;
  v16[2] = xmmword_27F39BA80;
  v16[3] = v19;
  v20 = v14[7];
  *(a2 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  swift_storeEnumTagMultiPayload();
  return sub_24E784FF8(v23, &v22);
}

uint64_t sub_24EBF2EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B3D0, &qword_24F98B378) + 36));
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212858, &qword_24F950980) + 28);
  v6 = *MEMORY[0x277CDF3C0];
  v7 = sub_24F9234D8();
  (*(*(v7 - 8) + 104))(v4 + v5, v6, v7);
  *v4 = swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B3B0, &qword_24F98B368);
  v9 = *(*(v8 - 8) + 16);

  return v9(a2, a1, v8);
}

uint64_t sub_24EBF2FB8()
{
  v1 = v0;
  v2 = sub_24F925218();
  v57 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v54 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20, &qword_24F940790);
  MEMORY[0x28223BE20](v56);
  v5 = &v51 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v6 - 8);
  v55 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v61 = &v51 - v9;
  MEMORY[0x28223BE20](v10);
  v62 = (&v51 - v11);
  v12 = sub_24F924848();
  v59 = *(v12 - 8);
  v60 = v12;
  MEMORY[0x28223BE20](v12);
  v58 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B380, &unk_24F98B2E0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v51 - v15;
  v17 = type metadata accessor for Page(0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for StickyPlayerRowView(0);
  sub_24E60169C(v1 + *(v21 + 32), v16, &qword_27F22B380, &unk_24F98B2E0);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    return sub_24E601704(v16, &qword_27F22B380, &unk_24F98B2E0);
  }

  sub_24EBF5350(v16, v20, type metadata accessor for Page);
  v23 = *(v17 + 84);
  v53 = v20;
  v24 = 8 * v20[v23];
  v25 = v1 + *(v21 + 36);
  v26 = *v25;
  if (*(v25 + 8) == 1)
  {
    v27 = *v25;
  }

  else
  {

    sub_24F92BDC8();
    v28 = sub_24F9257A8();
    sub_24F921FD8();

    v29 = v58;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v26, 0);
    (*(v59 + 8))(v29, v60);
    v27 = v63;
  }

  v30 = v57;
  v31 = v61;
  v32 = v62;
  v52 = 0x5040302010001uLL >> v24;
  v57 = v21;
  sub_24F769764(v62);
  (*(v30 + 104))(v31, *MEMORY[0x277CE0558], v2);
  (*(v30 + 56))(v31, 0, 1, v2);
  v33 = *(v56 + 48);
  sub_24E60169C(v32, v5, &qword_27F215598, &qword_24F945EF0);
  sub_24E60169C(v31, &v5[v33], &qword_27F215598, &qword_24F945EF0);
  v34 = *(v30 + 48);
  if (v34(v5, 1, v2) == 1)
  {
    sub_24E601704(v31, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v32, &qword_27F215598, &qword_24F945EF0);
    v35 = v34(&v5[v33], 1, v2);
    v36 = v57;
    if (v35 == 1)
    {
      sub_24E601704(v5, &qword_27F215598, &qword_24F945EF0);
      v37 = 1;
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v38 = v55;
  sub_24E60169C(v5, v55, &qword_27F215598, &qword_24F945EF0);
  if (v34(&v5[v33], 1, v2) == 1)
  {
    sub_24E601704(v61, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v62, &qword_27F215598, &qword_24F945EF0);
    (*(v30 + 8))(v38, v2);
    v36 = v57;
LABEL_11:
    sub_24E601704(v5, &unk_27F254F20, &qword_24F940790);
    v37 = 0;
    goto LABEL_13;
  }

  v39 = v54;
  (*(v30 + 32))(v54, &v5[v33], v2);
  sub_24EBF5478(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v40 = v38;
  v37 = sub_24F92AFF8();
  v41 = *(v30 + 8);
  v41(v39, v2);
  sub_24E601704(v61, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v62, &qword_27F215598, &qword_24F945EF0);
  v41(v40, v2);
  sub_24E601704(v5, &qword_27F215598, &qword_24F945EF0);
  v36 = v57;
LABEL_13:
  v42 = v1 + *(v36 + 40);
  v43 = *(v42 + 8);
  v44 = *(v42 + 24);
  if (*(v42 + 32) != 1)
  {
    v45 = *v42;
    v46 = *(v42 + 16);

    sub_24F92BDC8();
    v47 = sub_24F9257A8();
    sub_24F921FD8();

    v48 = v58;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E669FC4(v45, v43, v46, v44, 0);
    (*(v59 + 8))(v48, v60);
  }

  if (v27 > 1580.0)
  {
    v27 = 1580.0;
  }

  v49 = v53;
  if (v52 <= 2u)
  {
    if (v52)
    {
      if (v52 == 1)
      {
        result = sub_24EBF52F0(v53, type metadata accessor for Page);
        if (v37)
        {
          return result;
        }

        return sub_24E6B00B4(v27);
      }

      v50 = 2;
      goto LABEL_37;
    }

    return sub_24EBF52F0(v49, type metadata accessor for Page);
  }

  if (v52 == 3)
  {
    if (sub_24E6B00B4(v27) >= 4u)
    {
      v50 = 3;
LABEL_37:
      LOBYTE(v63) = v50;
      sub_24F422FFC(v37 & 1, v27);
    }

    return sub_24EBF52F0(v49, type metadata accessor for Page);
  }

  if (v52 != 4)
  {
    if (qword_27F210748 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if ((byte_27F2301A8 & 1) != 0 && (v37 & 1) != 0 && qword_27F210D60 != -1)
    {
      swift_once();
    }

    return sub_24EBF52F0(v49, type metadata accessor for Page);
  }

  result = sub_24EBF52F0(v53, type metadata accessor for Page);
  if ((v37 & 1) == 0)
  {
    return sub_24E6B00B4(v27);
  }

  return result;
}

uint64_t sub_24EBF3A6C()
{
  v1 = *(v0 + *(type metadata accessor for LeaderboardEntry(0) + 24));
  if (v1 > 99)
  {
    if (qword_27F2103C0 != -1)
    {
      swift_once();
    }

    v4 = qword_27F22B378;
    v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v6 = [v4 stringFromNumber_];

    if (v6)
    {
      v7 = sub_24F92B0D8();
      v9 = v8;

      v10 = v7;
    }

    else
    {
      v10 = sub_24F92CD88();
      v9 = v11;
    }

    MEMORY[0x253050C20](v10, v9);

    return 35;
  }

  else
  {
    sub_24F37B534();
    v3 = v2;
  }

  return v3;
}

uint64_t sub_24EBF3BB8()
{
  v1 = type metadata accessor for LeaderboardEntry(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + *(type metadata accessor for StickyPlayerRowView(0) + 28));
  if (*(v5 + 16))
  {
    v8 = v5;

    sub_24EBF2730(&v8);
    if (*(v8 + 16))
    {
      sub_24E6C2DEC(v8 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v4);

      sub_24EBF52F0(v4, type metadata accessor for LeaderboardEntry);
    }

    else
    {
    }
  }

  return 0x2E6E6F7276656863;
}

id sub_24EBF3D4C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  result = [v0 setNumberStyle_];
  qword_27F22B378 = v0;
  return result;
}

unint64_t sub_24EBF3DA8()
{
  result = qword_27F22B3D8;
  if (!qword_27F22B3D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22B3D0, &qword_24F98B378);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22B3A8, &qword_24F98B360);
    sub_24F9240F8();
    sub_24E602068(&qword_27F22B3C0, &qword_27F22B3A8, &qword_24F98B360, MEMORY[0x277CDF028]);
    sub_24EBF5478(&qword_27F22B3C8, MEMORY[0x277CDDA98], MEMORY[0x277CDDA90]);
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F21B308, &qword_27F212858, &qword_24F950980, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B3D8);
  }

  return result;
}

unint64_t sub_24EBF3F20()
{
  result = qword_27F22B3E0;
  if (!qword_27F22B3E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22B3B8, &qword_24F98B370);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22B3B0, &qword_24F98B368);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22B3D0, &qword_24F98B378);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22B3A8, &qword_24F98B360);
    sub_24F9240F8();
    sub_24E602068(&qword_27F22B3C0, &qword_27F22B3A8, &qword_24F98B360, MEMORY[0x277CDF028]);
    sub_24EBF5478(&qword_27F22B3C8, MEMORY[0x277CDDA98], MEMORY[0x277CDDA90]);
    swift_getOpaqueTypeConformance2();
    sub_24E6A4C1C();
    sub_24EBF3DA8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B3E0);
  }

  return result;
}

uint64_t sub_24EBF40E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B3B8, &qword_24F98B370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_24EBF4150(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_24F92CD78();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for LeaderboardEntry(0);
        v6 = sub_24F92B618();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for LeaderboardEntry(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_24EBF44C4(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_24EBF427C(0, v2, 1, a1);
  }
}

void sub_24EBF427C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for LeaderboardEntry(0);
  MEMORY[0x28223BE20](v8);
  v38 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - v15;
  v31 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v36 = -v18;
    v37 = v17;
    v20 = a1 - a3;
    v30 = v18;
    v21 = v17 + v18 * a3;
LABEL_5:
    v34 = v19;
    v35 = a3;
    v32 = v21;
    v33 = v20;
    while (1)
    {
      sub_24E6C2DEC(v21, v16);
      sub_24E6C2DEC(v19, v12);
      v22 = *(v8 + 24);
      v23 = v8;
      v24 = *&v16[v22];
      v25 = *&v12[v22];
      sub_24EBF52F0(v12, type metadata accessor for LeaderboardEntry);
      sub_24EBF52F0(v16, type metadata accessor for LeaderboardEntry);
      v26 = v24 < v25;
      v8 = v23;
      if (!v26)
      {
LABEL_4:
        a3 = v35 + 1;
        v19 = v34 + v30;
        v20 = v33 - 1;
        v21 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v37)
      {
        break;
      }

      v27 = v38;
      sub_24EBF5350(v21, v38, type metadata accessor for LeaderboardEntry);
      swift_arrayInitWithTakeFrontToBack();
      sub_24EBF5350(v27, v19, type metadata accessor for LeaderboardEntry);
      v19 += v36;
      v21 += v36;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_24EBF44C4(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v116 = a1;
  v129 = type metadata accessor for LeaderboardEntry(0);
  v9 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v112 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v126 = &v110 - v12;
  MEMORY[0x28223BE20](v13);
  v128 = &v110 - v14;
  MEMORY[0x28223BE20](v15);
  v127 = &v110 - v16;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = MEMORY[0x277D84F90];
LABEL_96:
    v5 = *v116;
    if (!*v116)
    {
      goto LABEL_136;
    }

    a4 = v19;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v105 = a4;
LABEL_99:
      v130 = v105;
      a4 = *(v105 + 2);
      if (a4 >= 2)
      {
        v106 = v9;
        while (*a3)
        {
          v107 = *&v105[16 * a4];
          v108 = v105;
          v9 = *&v105[16 * a4 + 24];
          sub_24EBF4DD8(*a3 + *(v106 + 72) * v107, *a3 + *(v106 + 72) * *&v105[16 * a4 + 16], *a3 + *(v106 + 72) * v9, v5);
          if (v6)
          {
            goto LABEL_108;
          }

          if (v9 < v107)
          {
            goto LABEL_123;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v108 = sub_24E86164C(v108);
          }

          if (a4 - 2 >= *(v108 + 2))
          {
            goto LABEL_124;
          }

          v109 = &v108[16 * a4];
          *v109 = v107;
          *(v109 + 1) = v9;
          v130 = v108;
          sub_24E8615C0(a4 - 1);
          v105 = v130;
          a4 = *(v130 + 2);
          if (a4 <= 1)
          {
            goto LABEL_108;
          }
        }

        goto LABEL_134;
      }

LABEL_108:

      return;
    }

LABEL_130:
    v105 = sub_24E86164C(a4);
    goto LABEL_99;
  }

  v18 = 0;
  v19 = MEMORY[0x277D84F90];
  v115 = a4;
  v117 = a3;
  v113 = v9;
  while (1)
  {
    v20 = v18;
    v21 = v18 + 1;
    v119 = v19;
    if (v21 >= v17)
    {
      v30 = v21;
    }

    else
    {
      v124 = v17;
      v22 = *a3;
      v23 = *(v9 + 72);
      v5 = *a3 + v23 * v21;
      v24 = v127;
      sub_24E6C2DEC(v5, v127);
      v25 = v128;
      sub_24E6C2DEC(v22 + v23 * v20, v128);
      v26 = *(v129 + 24);
      v27 = *(v24 + v26);
      v121 = *(v25 + v26);
      v122 = v27;
      sub_24EBF52F0(v25, type metadata accessor for LeaderboardEntry);
      sub_24EBF52F0(v24, type metadata accessor for LeaderboardEntry);
      v114 = v20;
      v28 = v20 + 2;
      v123 = v23;
      v29 = v22 + v23 * v28;
      while (1)
      {
        v30 = v124;
        if (v124 == v28)
        {
          break;
        }

        LODWORD(v125) = v122 < v121;
        v31 = v127;
        sub_24E6C2DEC(v29, v127);
        v32 = v6;
        v33 = v128;
        sub_24E6C2DEC(v5, v128);
        v34 = *(v129 + 24);
        v35 = *(v31 + v34);
        v36 = *(v33 + v34);
        v37 = v33;
        v6 = v32;
        sub_24EBF52F0(v37, type metadata accessor for LeaderboardEntry);
        sub_24EBF52F0(v31, type metadata accessor for LeaderboardEntry);
        ++v28;
        v29 += v123;
        v5 += v123;
        if (((v125 ^ (v35 >= v36)) & 1) == 0)
        {
          v30 = v28 - 1;
          break;
        }
      }

      a3 = v117;
      v9 = v113;
      v20 = v114;
      a4 = v115;
      if (v122 < v121)
      {
        if (v30 < v114)
        {
          goto LABEL_127;
        }

        if (v114 < v30)
        {
          v38 = v123 * (v30 - 1);
          v39 = v30 * v123;
          v124 = v30;
          v40 = v30;
          v41 = v114;
          v42 = v114 * v123;
          v43 = v112;
          do
          {
            if (v41 != --v40)
            {
              v5 = *v117;
              if (!*v117)
              {
                goto LABEL_133;
              }

              sub_24EBF5350(v5 + v42, v43, type metadata accessor for LeaderboardEntry);
              if (v42 < v38 || v5 + v42 >= v5 + v39)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v42 != v38)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_24EBF5350(v43, v5 + v38, type metadata accessor for LeaderboardEntry);
            }

            ++v41;
            v38 -= v123;
            v39 -= v123;
            v42 += v123;
          }

          while (v41 < v40);
          a3 = v117;
          v9 = v113;
          v20 = v114;
          a4 = v115;
          v30 = v124;
        }
      }
    }

    v44 = a3[1];
    if (v30 >= v44)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v30, v20))
    {
      goto LABEL_126;
    }

    if (v30 - v20 >= a4)
    {
LABEL_32:
      v46 = v30;
      if (v30 < v20)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v20, a4))
    {
      goto LABEL_128;
    }

    if ((v20 + a4) >= v44)
    {
      v45 = a3[1];
    }

    else
    {
      v45 = v20 + a4;
    }

    if (v45 < v20)
    {
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    if (v30 == v45)
    {
      goto LABEL_32;
    }

    v111 = v6;
    v91 = *a3;
    v92 = *(v9 + 72);
    v93 = *a3 + v92 * (v30 - 1);
    v94 = v20;
    v95 = -v92;
    v114 = v94;
    v96 = v94 - v30;
    v125 = v91;
    v118 = v92;
    v5 = v91 + v30 * v92;
    v97 = v129;
    v120 = v45;
LABEL_86:
    v123 = v93;
    v124 = v30;
    v121 = v5;
    v122 = v96;
    v98 = v93;
LABEL_87:
    a4 = v127;
    sub_24E6C2DEC(v5, v127);
    v99 = v128;
    sub_24E6C2DEC(v98, v128);
    v100 = *(v97 + 24);
    v101 = *(a4 + v100);
    v102 = *(v99 + v100);
    sub_24EBF52F0(v99, type metadata accessor for LeaderboardEntry);
    sub_24EBF52F0(a4, type metadata accessor for LeaderboardEntry);
    if (v101 < v102)
    {
      break;
    }

    v97 = v129;
LABEL_85:
    v30 = v124 + 1;
    v93 = v123 + v118;
    v96 = v122 - 1;
    v5 = v121 + v118;
    v46 = v120;
    if (v124 + 1 != v120)
    {
      goto LABEL_86;
    }

    v6 = v111;
    a3 = v117;
    v9 = v113;
    v20 = v114;
    if (v120 < v114)
    {
      goto LABEL_125;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v19 = v119;
    }

    else
    {
      v19 = sub_24E615ED8(0, *(v119 + 2) + 1, 1, v119);
    }

    a4 = *(v19 + 2);
    v47 = *(v19 + 3);
    v5 = a4 + 1;
    if (a4 >= v47 >> 1)
    {
      v19 = sub_24E615ED8((v47 > 1), a4 + 1, 1, v19);
    }

    *(v19 + 2) = v5;
    v48 = &v19[16 * a4];
    *(v48 + 4) = v20;
    *(v48 + 5) = v46;
    v49 = *v116;
    if (!*v116)
    {
      goto LABEL_135;
    }

    v120 = v46;
    if (a4)
    {
      while (2)
      {
        v50 = v5 - 1;
        if (v5 >= 4)
        {
          v55 = &v19[16 * v5 + 32];
          v56 = *(v55 - 64);
          v57 = *(v55 - 56);
          v61 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          if (v61)
          {
            goto LABEL_112;
          }

          v60 = *(v55 - 48);
          v59 = *(v55 - 40);
          v61 = __OFSUB__(v59, v60);
          v53 = v59 - v60;
          v54 = v61;
          if (v61)
          {
            goto LABEL_113;
          }

          v62 = &v19[16 * v5];
          v64 = *v62;
          v63 = *(v62 + 1);
          v61 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v61)
          {
            goto LABEL_115;
          }

          v61 = __OFADD__(v53, v65);
          v66 = v53 + v65;
          if (v61)
          {
            goto LABEL_118;
          }

          if (v66 >= v58)
          {
            v84 = &v19[16 * v50 + 32];
            v86 = *v84;
            v85 = *(v84 + 1);
            v61 = __OFSUB__(v85, v86);
            v87 = v85 - v86;
            if (v61)
            {
              goto LABEL_122;
            }

            if (v53 < v87)
            {
              v50 = v5 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v54)
            {
              goto LABEL_114;
            }

            v67 = &v19[16 * v5];
            v69 = *v67;
            v68 = *(v67 + 1);
            v70 = __OFSUB__(v68, v69);
            v71 = v68 - v69;
            v72 = v70;
            if (v70)
            {
              goto LABEL_117;
            }

            v73 = &v19[16 * v50 + 32];
            v75 = *v73;
            v74 = *(v73 + 1);
            v61 = __OFSUB__(v74, v75);
            v76 = v74 - v75;
            if (v61)
            {
              goto LABEL_120;
            }

            if (__OFADD__(v71, v76))
            {
              goto LABEL_121;
            }

            if (v71 + v76 < v53)
            {
              goto LABEL_66;
            }

            if (v53 < v76)
            {
              v50 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v51 = *(v19 + 4);
            v52 = *(v19 + 5);
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
            goto LABEL_52;
          }

          v77 = &v19[16 * v5];
          v79 = *v77;
          v78 = *(v77 + 1);
          v61 = __OFSUB__(v78, v79);
          v71 = v78 - v79;
          v72 = v61;
LABEL_66:
          if (v72)
          {
            goto LABEL_116;
          }

          v80 = &v19[16 * v50];
          v82 = *(v80 + 4);
          v81 = *(v80 + 5);
          v61 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v61)
          {
            goto LABEL_119;
          }

          if (v83 < v71)
          {
            break;
          }
        }

        a4 = v50 - 1;
        if (v50 - 1 >= v5)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v88 = v19;
        v89 = *&v19[16 * a4 + 32];
        v5 = *&v19[16 * v50 + 40];
        sub_24EBF4DD8(*a3 + *(v9 + 72) * v89, *a3 + *(v9 + 72) * *&v19[16 * v50 + 32], *a3 + *(v9 + 72) * v5, v49);
        if (v6)
        {
          goto LABEL_108;
        }

        if (v5 < v89)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v88 = sub_24E86164C(v88);
        }

        if (a4 >= *(v88 + 2))
        {
          goto LABEL_111;
        }

        v90 = &v88[16 * a4];
        *(v90 + 4) = v89;
        *(v90 + 5) = v5;
        v130 = v88;
        sub_24E8615C0(v50);
        v19 = v130;
        v5 = *(v130 + 2);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v17 = a3[1];
    v18 = v120;
    a4 = v115;
    if (v120 >= v17)
    {
      goto LABEL_96;
    }
  }

  if (v125)
  {
    v103 = v126;
    sub_24EBF5350(v5, v126, type metadata accessor for LeaderboardEntry);
    v97 = v129;
    swift_arrayInitWithTakeFrontToBack();
    sub_24EBF5350(v103, v98, type metadata accessor for LeaderboardEntry);
    v98 += v95;
    v5 += v95;
    if (__CFADD__(v96++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
}

void sub_24EBF4DD8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for LeaderboardEntry(0);
  MEMORY[0x28223BE20](v8);
  v52 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v51 = &v42 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v15 = (a2 - a1) / v13;
  v55 = a1;
  v54 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v25 = a4 + v17;
    if (v17 >= 1)
    {
      v26 = -v13;
      v27 = v25;
      v45 = a4;
      v46 = a1;
      v44 = -v13;
      do
      {
        v42 = v25;
        v28 = a2;
        v29 = a2 + v26;
        v49 = a2 + v26;
        v47 = a2;
        while (1)
        {
          if (v28 <= a1)
          {
            v55 = v28;
            v53 = v42;
            goto LABEL_60;
          }

          v30 = a3;
          v43 = v25;
          a3 += v26;
          v31 = v27 + v26;
          v32 = v8;
          v33 = v51;
          v34 = v27;
          sub_24E6C2DEC(v27 + v26, v51);
          v35 = v52;
          sub_24E6C2DEC(v29, v52);
          v36 = v32;
          v37 = *(v32 + 24);
          v50 = *(v33 + v37);
          v38 = *(v35 + v37);
          sub_24EBF52F0(v35, type metadata accessor for LeaderboardEntry);
          sub_24EBF52F0(v33, type metadata accessor for LeaderboardEntry);
          if (v50 < v38)
          {
            break;
          }

          v25 = v31;
          if (v30 < v34 || a3 >= v34)
          {
            v8 = v36;
            swift_arrayInitWithTakeFrontToBack();
            v29 = v49;
            v26 = v44;
          }

          else
          {
            v29 = v49;
            v8 = v36;
            v26 = v44;
            if (v30 != v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v31;
          a1 = v46;
          v28 = v47;
          if (v31 <= v45)
          {
            a2 = v47;
            goto LABEL_59;
          }
        }

        v39 = v45;
        if (v30 < v47 || a3 >= v47)
        {
          a2 = v49;
          v8 = v32;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v43;
          v26 = v44;
        }

        else
        {
          v40 = v30 == v47;
          a2 = v49;
          v8 = v32;
          v25 = v43;
          v26 = v44;
          if (!v40)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v27 = v34;
        v41 = v34 > v39;
        a1 = v46;
      }

      while (v41);
    }

LABEL_59:
    v55 = a2;
    v53 = v25;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v50 = a4 + v16;
    v53 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      v48 = v8;
      v49 = a3;
      do
      {
        v19 = v51;
        sub_24E6C2DEC(a2, v51);
        v20 = v52;
        sub_24E6C2DEC(a4, v52);
        v21 = *(v8 + 24);
        v22 = *(v19 + v21);
        v23 = *(v20 + v21);
        sub_24EBF52F0(v20, type metadata accessor for LeaderboardEntry);
        sub_24EBF52F0(v19, type metadata accessor for LeaderboardEntry);
        if (v22 >= v23)
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            v8 = v48;
            swift_arrayInitWithTakeFrontToBack();
            v24 = v49;
          }

          else
          {
            v8 = v48;
            v24 = v49;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v54 = a4 + v13;
          a4 += v13;
        }

        else if (a1 < a2 || a1 >= a2 + v13)
        {
          v8 = v48;
          swift_arrayInitWithTakeFrontToBack();
          a2 += v13;
          v24 = v49;
        }

        else
        {
          v8 = v48;
          v24 = v49;
          if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v13;
        }

        a1 += v13;
        v55 = a1;
      }

      while (a4 < v50 && a2 < v24);
    }
  }

LABEL_60:
  sub_24F8FB008(&v55, &v54, &v53);
}

uint64_t sub_24EBF52F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24EBF5350(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24EBF53BC()
{
  result = qword_27F22B3E8;
  if (!qword_27F22B3E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22B3F0, &unk_24F98B3E8);
    sub_24EBF3F20();
    sub_24EBF5478(&qword_27F2141E0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B3E8);
  }

  return result;
}

uint64_t sub_24EBF5478(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EBF54C0(uint64_t a1)
{
  v1 = sub_24F925198();
  v2 = sub_24F9251B8();
  result = sub_24F925198();
  dword_27F22B3F8 = v1;
  byte_27F22B3FC = 0;
  LODWORD(qword_27F22B400) = v2;
  HIDWORD(qword_27F22B400) = result;
  byte_27F22B408 = 0;
  return result;
}

uint64_t sub_24EBF5508(uint64_t a1)
{
  result = sub_24F925188();
  dword_27F22B40C = 0;
  byte_27F22B410 = 1;
  qword_27F22B414 = result;
  byte_27F22B41C = 1;
  return result;
}

double sub_24EBF553C()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 72);
  if (*(v0 + 80) == 1)
  {
    return *(v0 + 72);
  }

  sub_24F92BDC8();
  v7 = sub_24F9257A8();
  sub_24F921FD8();

  sub_24F924838();
  swift_getAtKeyPath();
  sub_24E62A5EC(v5, 0);
  (*(v2 + 8))(v4, v1);
  return *&v8[1];
}

uint64_t sub_24EBF5688@<X0>(void *a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for MediaScrubber(0);
  sub_24E60169C(v1 + *(v10 + 40), v9, &qword_27F214D90, &qword_24F93E920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24F923F78();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_24F92BDC8();
    v13 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

double MediaScrubber.init(value:in:onEditingChanged:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>)
{
  sub_24F926F28();
  *(a5 + 56) = v20;
  *(a5 + 64) = v21;
  *(a5 + 72) = swift_getKeyPath();
  *(a5 + 80) = 0;
  *(a5 + 88) = swift_getKeyPath();
  *(a5 + 96) = 0;
  v16 = type metadata accessor for MediaScrubber(0);
  v17 = *(v16 + 40);
  *(a5 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  swift_storeEnumTagMultiPayload();
  v18 = (a5 + *(v16 + 44));
  *v18 = xmmword_24F98B440;
  v18[1] = xmmword_24F98B440;
  result = 4.0;
  v18[2] = xmmword_24F98B450;
  v18[3] = xmmword_24F98B460;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a6;
  *(a5 + 24) = a7;
  *(a5 + 32) = a8;
  *(a5 + 40) = a3;
  *(a5 + 48) = a4;
  return result;
}

uint64_t sub_24EBF59D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24F9247C8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24EBF5A50()
{
  v1 = *(v0 + 2);
  v2 = *v0;
  v3 = *(v0 + 1);
  if (v0[4] - v0[3] > 0.0)
  {
    v12 = *v0;
    v13 = v3;
    v14 = v1;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2361D0, &qword_24F9BA090);
    MEMORY[0x25304CAF0](&v11, v4);
  }

  v12 = v2;
  v13 = v3;
  v14 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2361D0, &qword_24F9BA090);
  MEMORY[0x25304CAF0](&v11, v5);
  if ((~v11 & 0x7FF0000000000000) == 0)
  {
    return 0;
  }

  v7 = objc_opt_self();
  v8 = sub_24F91FDF8();
  v9 = [v7 localizedStringFromNumber:v8 numberStyle:3];

  v10 = sub_24F92B0D8();
  return v10;
}

void *sub_24EBF5B8C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, char a6)
{
  v7 = v6;
  v13 = sub_24F923F78();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v39 - v18;
  sub_24EBF5688((&v39 - v18));
  (*(v14 + 104))(v16, *MEMORY[0x277CDFA88], v13);
  v20 = sub_24F923F68();
  v21 = *(v14 + 8);
  v21(v16, v13);
  v21(v19, v13);
  if (v20)
  {
    sub_24F923558();
    v23 = v22;
    v43.origin.x = a1;
    v43.origin.y = a2;
    v43.size.width = a3;
    v43.size.height = a4;
    v24 = v23 - CGRectGetMinX(v43);
  }

  else
  {
    v44.origin.x = a1;
    v44.origin.y = a2;
    v44.size.width = a3;
    v44.size.height = a4;
    MaxX = CGRectGetMaxX(v44);
    sub_24F923558();
    v24 = MaxX - v26;
  }

  v28 = v7[3];
  v27 = v7[4];
  v29 = *(v7 + 2);
  v30 = v24 / a3 * (v27 - v28);
  v31 = v28 + v30;
  v32 = v30 > 0.0;
  v33 = v28 + 0.0;
  if (v32)
  {
    v28 = v31;
    v33 = v31;
  }

  v34 = *(v7 + 1);
  v40 = *v7;
  v41 = v34;
  if (v27 < v28)
  {
    v33 = v27;
  }

  v42 = v29;
  v39 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2361D0, &qword_24F9BA090);
  sub_24F927178();
  v35 = *(v7 + 56);
  v36 = *(v7 + 8);
  LOBYTE(v40) = v35;
  v41 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  result = sub_24F926F38();
  v38 = a6 & 1;
  if (LOBYTE(v39) != v38)
  {
    LOBYTE(v40) = v35;
    v41 = v36;
    LOBYTE(v39) = v38;
    sub_24F926F48();
    return (*(v7 + 5))(v38);
  }

  return result;
}

uint64_t sub_24EBF5E28@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v2 = type metadata accessor for MediaScrubber(0);
  v41 = *(v2 - 8);
  v3 = *(v41 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F923568();
  v6 = *(v5 - 8);
  v43 = v5;
  v44 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218B50, &qword_24F95ACA0);
  v10 = *(v9 - 8);
  v45 = v9;
  v46 = v10;
  MEMORY[0x28223BE20](v9);
  v39 = &v38 - v11;
  v12 = sub_24F923E28();
  v42 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v38 - v18;
  (*(v13 + 104))(&v38 - v18, *MEMORY[0x277CDF968], v12, v17);
  sub_24F9239A8();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  (*(v13 + 16))(v15, v19, v12);
  sub_24F923508();
  sub_24EBF794C(v1, v4);
  v28 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v29 = (v3 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  sub_24EBF7B08(v4, v30 + v28);
  v31 = (v30 + v29);
  *v31 = v21;
  v31[1] = v23;
  v31[2] = v25;
  v31[3] = v27;
  sub_24EBF8F80(&unk_27F236560, MEMORY[0x277CDD730], MEMORY[0x277CDD728]);
  sub_24EBF8F80(&qword_27F2180A0, MEMORY[0x277CDD708], MEMORY[0x277CDD710]);
  v32 = v43;
  sub_24F927278();

  (*(v44 + 8))(v8, v32);
  sub_24EBF794C(v40, v4);
  v33 = swift_allocObject();
  sub_24EBF7B08(v4, v33 + v28);
  v34 = (v33 + v29);
  *v34 = v21;
  v34[1] = v23;
  v34[2] = v25;
  v34[3] = v27;
  sub_24E602068(&qword_27F218C18, &qword_27F218B50, &qword_24F95ACA0, MEMORY[0x277CDFB18]);
  v35 = v45;
  v36 = v39;
  sub_24F927268();

  (*(v46 + 8))(v36, v35);
  return (*(v13 + 8))(v19, v42);
}

double sub_24EBF62F0@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v10 = sub_24F924B38();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F923F78();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MediaScrubber.TrackShape(0);
  (*(v15 + 104))(v17, *MEMORY[0x277CDFA88], v14);
  v18 = sub_24F923F68();
  (*(v15 + 8))(v17, v14);
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  if (v18)
  {
    CGRectGetMinX(*&v19);
  }

  else
  {
    CGRectGetMaxX(*&v19);
  }

  (*(v11 + 104))(v13, *MEMORY[0x277CE0118], v10);
  sub_24F925AD8();
  result = *&v26;
  v24 = v27;
  *a1 = v26;
  *(a1 + 16) = v24;
  *(a1 + 32) = v28;
  return result;
}

double sub_24EBF655C@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  sub_24EBF62F0(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

void (*sub_24EBF65A4(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_24F923238();
  return sub_24EA092C8;
}

uint64_t sub_24EBF662C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24EBF8F80(&qword_27F22B4F8, type metadata accessor for MediaScrubber.TrackShape, &unk_24F98B6E0);

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_24EBF66C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24EBF8F80(&qword_27F22B4F8, type metadata accessor for MediaScrubber.TrackShape, &unk_24F98B6E0);

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_24EBF6754(uint64_t a1)
{
  v2 = sub_24EBF8F80(&qword_27F22B4F8, type metadata accessor for MediaScrubber.TrackShape, &unk_24F98B6E0);

  return MEMORY[0x282133738](a1, v2);
}

double sub_24EBF67D0@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v10 = sub_24F924B38();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F923F78();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MediaScrubber.KnobShape(0);
  (*(v15 + 104))(v17, *MEMORY[0x277CDFA88], v14);
  v18 = sub_24F923F68();
  (*(v15 + 8))(v17, v14);
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  if (v18)
  {
    CGRectGetMinX(*&v19);
  }

  else
  {
    CGRectGetMaxX(*&v19);
  }

  (*(v11 + 104))(v13, *MEMORY[0x277CE0118], v10);
  sub_24F925AD8();
  result = *&v26;
  v24 = v27;
  *a1 = v26;
  *(a1 + 16) = v24;
  *(a1 + 32) = v28;
  return result;
}

double sub_24EBF6A64@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  sub_24EBF67D0(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

void (*sub_24EBF6AA8(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_24F923238();
  return sub_24EBF959C;
}

uint64_t sub_24EBF6B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24EBF8F80(&qword_27F22B4F0, type metadata accessor for MediaScrubber.KnobShape, &unk_24F98B7D8);

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_24EBF6BC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24EBF8F80(&qword_27F22B4F0, type metadata accessor for MediaScrubber.KnobShape, &unk_24F98B7D8);

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_24EBF6C58(uint64_t a1)
{
  v2 = sub_24EBF8F80(&qword_27F22B4F0, type metadata accessor for MediaScrubber.KnobShape, &unk_24F98B7D8);

  return MEMORY[0x282133738](a1, v2);
}

unint64_t sub_24EBF6CD4()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 88);
  if (*(v0 + 96) == 1)
  {
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if (qword_27F2103D0 != -1)
      {
        swift_once();
      }

      v6 = &dword_27F22B40C;
      return *v6 | (*(v6 + 4) << 32);
    }
  }

  else
  {

    sub_24F92BDC8();
    v7 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v5, 0);
    (*(v2 + 8))(v4, v1);
    if (v9[15] != 1)
    {
      goto LABEL_3;
    }
  }

  if (qword_27F2103C8 != -1)
  {
    swift_once();
  }

  v6 = &dword_27F22B3F8;
  return *v6 | (*(v6 + 4) << 32);
}

uint64_t MediaScrubber.body.getter@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v40 = type metadata accessor for MediaScrubber(0);
  v2 = *(v40 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v40);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B420, &qword_24F98B508);
  MEMORY[0x28223BE20](v5);
  v7 = (&v38 - v6);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B428, &qword_24F98B510);
  MEMORY[0x28223BE20](v41);
  v42 = &v38 - v8;
  v9 = sub_24EBF6CD4();
  v11 = v10;
  v39 = v12;
  v38 = HIDWORD(v10);
  v13 = sub_24EBF553C();
  v14 = *(v1 + 24);
  v15 = *(v1 + 32) - v14;
  v16 = 0.0;
  if (v15 > 0.0)
  {
    v17 = *(v1 + 8);
    v18 = *(v1 + 16);
    *&v45 = *v1;
    *(&v45 + 1) = v17;
    *&v46 = v18;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2361D0, &qword_24F9BA090);
    MEMORY[0x25304CAF0](&v44, v19);
    v16 = (v44 - v14) / v15;
  }

  sub_24EBF794C(v1, &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v21 = (v20 + v3 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v22 = (v20 + v3 + 27) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = v13;
  sub_24EBF7B08(v4, v23 + v20);
  v24 = v23 + v21;
  *v24 = v9;
  *(v24 + 4) = BYTE4(v9) & 1;
  v25 = v38;
  *(v24 + 8) = v11;
  *(v24 + 12) = v25;
  *(v24 + 16) = v39 & 1;
  *(v23 + v22) = v16;
  KeyPath = swift_getKeyPath();
  v27 = (v7 + *(v5 + 36));
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B430, &qword_24F98B548) + 28);
  sub_24F927458();
  v29 = sub_24F927538();
  (*(*(v29 - 8) + 56))(v27 + v28, 0, 1, v29);
  *v27 = KeyPath;
  *v7 = sub_24EBF7B6C;
  v7[1] = v23;
  sub_24F927618();
  sub_24F9242E8();
  v30 = v42;
  sub_24E6009C8(v7, v42, &qword_27F22B420, &qword_24F98B508);
  v31 = (v30 + *(v41 + 36));
  v32 = v50;
  v31[4] = v49;
  v31[5] = v32;
  v31[6] = v51;
  v33 = v46;
  *v31 = v45;
  v31[1] = v33;
  v34 = v48;
  v31[2] = v47;
  v31[3] = v34;
  v35 = v30;
  v36 = v43;
  sub_24E6009C8(v35, v43, &qword_27F22B428, &qword_24F98B510);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B438, &unk_24F98B550);
  *(v36 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_24EBF7324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  v47 = a5;
  v49 = a4;
  v9 = BYTE4(a3);
  v53 = a1;
  v56 = a6;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218B58, &qword_24F94A080);
  v55 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v45 - v12;
  v13 = sub_24F925508();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B508, &qword_24F98B838);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = (&v45 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B510, &qword_24F98B840);
  MEMORY[0x28223BE20](v20);
  v22 = &v45 - v21;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B518, &qword_24F98B848);
  v51 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B520, &qword_24F98B850);
  MEMORY[0x28223BE20](v25 - 8);
  v46 = &v45 - v26;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B528, &qword_24F98B858);
  MEMORY[0x28223BE20](v48);
  v28 = &v45 - v27;
  *v19 = sub_24F927618();
  v19[1] = v29;
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B530, &unk_24F98B860) + 44);
  LOBYTE(v59) = v9 & 1;
  LOBYTE(v57) = v47 & 1;
  sub_24EBF7C54(a2, v49, v47 & 1, v19 + v30, a7, a8);
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v19, v22, &qword_27F22B508, &qword_24F98B838);
  v31 = &v22[*(v20 + 36)];
  v32 = v64;
  *(v31 + 4) = v63;
  *(v31 + 5) = v32;
  *(v31 + 6) = v65;
  v33 = v60;
  *v31 = v59;
  *(v31 + 1) = v33;
  v34 = v62;
  *(v31 + 2) = v61;
  *(v31 + 3) = v34;
  sub_24F9254D8();
  v35 = sub_24EBF909C();
  sub_24F926678();
  (*(v14 + 8))(v16, v13);
  sub_24E601704(v22, &qword_27F22B510, &qword_24F98B840);
  v36 = sub_24EBF5A50();
  v38 = v37;
  LOBYTE(a2) = v39;
  v57 = v20;
  v58 = v35;
  swift_getOpaqueTypeConformance2();
  v40 = v46;
  v41 = v50;
  sub_24F926548();
  sub_24E600B40(v36, v38, a2 & 1);

  (*(v51 + 8))(v24, v41);
  sub_24E6009C8(v40, v28, &qword_27F22B520, &qword_24F98B850);
  v28[*(v48 + 36)] = 0;
  v42 = v52;
  sub_24EBF5E28(v52);
  sub_24F9235A8();
  sub_24EBF9154();
  sub_24E602068(&qword_27F218C50, &qword_27F218B58, &qword_24F94A080, MEMORY[0x277CDF728]);
  v43 = v54;
  sub_24F9269D8();
  (*(v55 + 8))(v42, v43);
  return sub_24EBF9304(v28);
}

uint64_t sub_24EBF794C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaScrubber(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EBF79B0()
{
  v1 = (type metadata accessor for MediaScrubber(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 24) & ~*(*v1 + 80));

  sub_24E62A5EC(*(v2 + 72), *(v2 + 80));
  sub_24E62A5EC(*(v2 + 88), *(v2 + 96));
  v3 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F923F78();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24EBF7B08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaScrubber(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EBF7B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for MediaScrubber(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(v2 + 16);
  v9 = (v2 + ((v7 + 3) & 0xFFFFFFFFFFFFFFFCLL));
  v10 = *(v9 + 1);
  v11 = *v9 | (*(v9 + 4) << 32);
  v12 = *(v9 + 16);
  v13 = *(v2 + ((v7 + 27) & 0xFFFFFFFFFFFFFFF8));

  return sub_24EBF7324(a1, v2 + v6, v11, v10, v12, a2, v8, v13);
}

uint64_t sub_24EBF7C54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  LODWORD(v76) = a3;
  v81 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B558, &qword_24F98B870);
  v79 = *(v10 - 8);
  v80 = v10;
  MEMORY[0x28223BE20](v10);
  v74 = &v69 - v11;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B560, &qword_24F98B878);
  MEMORY[0x28223BE20](v70);
  v73 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v72 = (&v69 - v14);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B568, &qword_24F98B880);
  MEMORY[0x28223BE20](v69);
  v71 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = (&v69 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B570, &qword_24F98B888);
  MEMORY[0x28223BE20](v19 - 8);
  v78 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v83 = &v69 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B578, &qword_24F98B890);
  MEMORY[0x28223BE20](v23 - 8);
  v77 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v69 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B580, &qword_24F98B898);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v69 - v33;
  v35 = a1 + *(type metadata accessor for MediaScrubber(0) + 44);
  v36 = *(v35 + 48);
  v37 = type metadata accessor for MediaScrubber.TrackShape(0);
  sub_24EBF5688(&v34[*(v37 + 24)]);
  *v34 = a5;
  *(v34 + 1) = v36;
  *&v34[*(v37 + 28)] = 0x3FF0000000000000;
  *&v34[*(v28 + 52)] = a2;
  *&v34[*(v28 + 56)] = 256;
  v82 = v27;
  if (v76)
  {
    v38 = 1;
  }

  else
  {
    sub_24EBF5688(&v31[*(v37 + 24)]);
    *v31 = a5;
    *(v31 + 1) = v36;
    *&v31[*(v37 + 28)] = a6;
    *&v31[*(v28 + 52)] = HIDWORD(a2);
    v27 = v82;
    *&v31[*(v28 + 56)] = 256;
    sub_24E6009C8(v31, v27, &qword_27F22B580, &qword_24F98B898);
    v38 = 0;
  }

  v39 = 1;
  (*(v29 + 56))(v27, v38, 1, v28);
  v40 = sub_24EBF6CD4();
  if ((v40 & 0x100000000) == 0)
  {
    v41 = v40;
    v42 = type metadata accessor for MediaScrubber.KnobShape(0);
    sub_24EBF5688((v18 + v42[5]));
    v44 = *(v35 + 32);
    v43 = *(v35 + 40);
    *v18 = a5;
    v45 = (v18 + v42[6]);
    *v45 = v44;
    v45[1] = v43;
    *(v18 + v42[7]) = a6;
    v46 = sub_24F926C88();
    v47 = v31;
    KeyPath = swift_getKeyPath();
    v49 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B590, &qword_24F98B8D8) + 36));
    *v49 = KeyPath;
    v49[1] = v46;
    v31 = v47;
    v50 = *(v69 + 36);
    v51 = *MEMORY[0x277CE13C0];
    v52 = sub_24F927748();
    (*(*(v52 - 8) + 104))(v18 + v50, v51, v52);
    v53 = v72;
    sub_24EBF5688((v72 + v42[5]));
    v54 = v44 - (*(v35 + 8) + *(v35 + 24));
    v55 = v43 - (*v35 + *(v35 + 16));
    *v53 = a5;
    v56 = (v53 + v42[6]);
    *v56 = v54;
    v56[1] = v55;
    *(v53 + v42[7]) = a6;
    v57 = v70;
    v58 = v71;
    *(v53 + *(v70 + 52)) = v41;
    *(v53 + *(v57 + 56)) = 256;
    v76 = v18;
    sub_24E60169C(v18, v58, &qword_27F22B568, &qword_24F98B880);
    v59 = v73;
    sub_24E60169C(v53, v73, &qword_27F22B560, &qword_24F98B878);
    v60 = v74;
    sub_24E60169C(v58, v74, &qword_27F22B568, &qword_24F98B880);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B598, &qword_24F98B8E0);
    sub_24E60169C(v59, v60 + *(v61 + 48), &qword_27F22B560, &qword_24F98B878);
    sub_24E601704(v53, &qword_27F22B560, &qword_24F98B878);
    sub_24E601704(v76, &qword_27F22B568, &qword_24F98B880);
    sub_24E601704(v59, &qword_27F22B560, &qword_24F98B878);
    sub_24E601704(v58, &qword_27F22B568, &qword_24F98B880);
    sub_24E6009C8(v60, v83, &qword_27F22B558, &qword_24F98B870);
    v39 = 0;
  }

  v62 = v83;
  (*(v79 + 56))(v83, v39, 1, v80);
  v80 = v34;
  v75 = v31;
  sub_24E60169C(v34, v31, &qword_27F22B580, &qword_24F98B898);
  v63 = v82;
  v64 = v77;
  sub_24E60169C(v82, v77, &qword_27F22B578, &qword_24F98B890);
  v65 = v78;
  sub_24E60169C(v62, v78, &qword_27F22B570, &qword_24F98B888);
  v66 = v81;
  sub_24E60169C(v31, v81, &qword_27F22B580, &qword_24F98B898);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B588, &qword_24F98B8A0);
  sub_24E60169C(v64, v66 + *(v67 + 48), &qword_27F22B578, &qword_24F98B890);
  sub_24E60169C(v65, v66 + *(v67 + 64), &qword_27F22B570, &qword_24F98B888);
  sub_24E601704(v62, &qword_27F22B570, &qword_24F98B888);
  sub_24E601704(v63, &qword_27F22B578, &qword_24F98B890);
  sub_24E601704(v80, &qword_27F22B580, &qword_24F98B898);
  sub_24E601704(v65, &qword_27F22B570, &qword_24F98B888);
  sub_24E601704(v64, &qword_27F22B578, &qword_24F98B890);
  return sub_24E601704(v75, &qword_27F22B580, &qword_24F98B898);
}

uint64_t sub_24EBF8468(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B500, &unk_24F98B828);
  MEMORY[0x28223BE20](v2 - 8);
  sub_24E60169C(a1, &v5 - v3, &qword_27F22B500, &unk_24F98B828);
  return sub_24F924688();
}

uint64_t sub_24EBF8548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8, &qword_24F943480);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24EBF8618(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8, &qword_24F943480);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24EBF86C8(uint64_t a1)
{
  sub_24EBF88B4(319, &qword_27F22B450, MEMORY[0x277D839F8], MEMORY[0x277CE11F8]);
  if (v1 <= 0x3F)
  {
    sub_24EBF885C();
    if (v2 <= 0x3F)
    {
      sub_24E6C5550();
      if (v3 <= 0x3F)
      {
        sub_24EBF88B4(319, &qword_27F254E10, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_24EBF88B4(319, &qword_27F215590, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_24EBF88B4(319, &qword_27F2362D0, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              sub_24E6C55A0(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_24EBF885C()
{
  if (!qword_27F22B458)
  {
    v0 = sub_24F92AFD8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F22B458);
    }
  }
}

void sub_24EBF88B4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_24EBF8908()
{
  result = qword_27F22B460;
  if (!qword_27F22B460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22B438, &unk_24F98B550);
    sub_24EBF8994();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B460);
  }

  return result;
}

unint64_t sub_24EBF8994()
{
  result = qword_27F22B468;
  if (!qword_27F22B468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22B428, &qword_24F98B510);
    sub_24EBF8A20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B468);
  }

  return result;
}

unint64_t sub_24EBF8A20()
{
  result = qword_27F22B470;
  if (!qword_27F22B470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22B420, &qword_24F98B508);
    sub_24E602068(&qword_27F22B478, &qword_27F22B480, &qword_24F98B5D0, MEMORY[0x277CDF7D8]);
    sub_24E602068(&qword_27F22B488, &qword_27F22B430, &qword_24F98B548, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B470);
  }

  return result;
}

uint64_t sub_24EBF8B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_24F923F78();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_24EBF8BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_24F923F78();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_24EBF8C50(uint64_t a1)
{
  sub_24F923F78();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24EBF8D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_24F923F78();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_24EBF8D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_24F923F78();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_24EBF8E28(uint64_t a1)
{
  result = sub_24F923F78();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24EBF8F80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24EBF909C()
{
  result = qword_27F22B538;
  if (!qword_27F22B538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22B510, &qword_24F98B840);
    sub_24E602068(&qword_27F22B540, &qword_27F22B508, &qword_24F98B838, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B538);
  }

  return result;
}

unint64_t sub_24EBF9154()
{
  result = qword_27F22B548;
  if (!qword_27F22B548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22B528, &qword_24F98B858);
    sub_24EBF920C();
    sub_24E602068(&qword_27F212A60, &qword_27F223340, &qword_24F939830, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B548);
  }

  return result;
}

unint64_t sub_24EBF920C()
{
  result = qword_27F22B550;
  if (!qword_27F22B550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22B520, &qword_24F98B850);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22B510, &qword_24F98B840);
    sub_24EBF909C();
    swift_getOpaqueTypeConformance2();
    sub_24EBF8F80(&qword_27F2141E0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B550);
  }

  return result;
}

uint64_t sub_24EBF9304(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B528, &qword_24F98B858);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_39Tm()
{
  v1 = (type metadata accessor for MediaScrubber(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  sub_24E62A5EC(*(v2 + 72), *(v2 + 80));
  sub_24E62A5EC(*(v2 + 88), *(v2 + 96));
  v3 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F923F78();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

void *sub_24EBF94D8(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for MediaScrubber(0) - 8);
  v6 = (v2 + ((*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_24EBF5B8C(*v6, v6[1], v6[2], v6[3], a1, a2);
}

uint64_t ArcadeLockup.__allocating_init(id:title:subscribedSubtitle:nonsubscribedSubtitle:unsubscribedButtonAction:subscribedButtonAction:offerDisplayProperties:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v35 = a11;
  v36 = a2;
  v38 = a3;
  v39 = a10;
  v37 = a9;
  v17 = sub_24F91F6B8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  sub_24E60169C(a1, &v42, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v43 + 1))
  {
    v22 = v43;
    *(v21 + 88) = v42;
    *(v21 + 104) = v22;
    *(v21 + 120) = v44;
  }

  else
  {
    sub_24F91F6A8();
    v23 = sub_24F91F668();
    v33 = a4;
    v34 = a5;
    v24 = a6;
    v25 = a8;
    v26 = v23;
    v27 = a7;
    v29 = v28;
    (*(v18 + 8))(v20, v17);
    v40 = v26;
    v41 = v29;
    a8 = v25;
    a6 = v24;
    a7 = v27;
    a4 = v33;
    a5 = v34;
    sub_24F92C7F8();
    sub_24E601704(&v42, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  sub_24E65E0D4(v35, v21 + OBJC_IVAR____TtC12GameStoreKit12ArcadeLockup_impressionMetrics);
  v30 = v37;
  v31 = v38;
  *(v21 + 16) = v36;
  *(v21 + 24) = v31;
  *(v21 + 32) = a4;
  *(v21 + 40) = a5;
  *(v21 + 48) = a6;
  *(v21 + 56) = a7;
  *(v21 + 64) = a8;
  *(v21 + 72) = v30;
  *(v21 + 80) = v39;
  return v21;
}

uint64_t ArcadeLockup.init(id:title:subscribedSubtitle:nonsubscribedSubtitle:unsubscribedButtonAction:subscribedButtonAction:offerDisplayProperties:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v36 = a11;
  v37 = a2;
  v39 = a3;
  v40 = a10;
  v38 = a9;
  v19 = sub_24F91F6B8();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a1, &v43, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v44 + 1))
  {
    v46 = v43;
    v47 = v44;
    v48 = v45;
  }

  else
  {
    sub_24F91F6A8();
    v23 = sub_24F91F668();
    v34 = a4;
    v35 = a5;
    v24 = a6;
    v25 = a8;
    v26 = v23;
    v27 = a7;
    v29 = v28;
    (*(v20 + 8))(v22, v19);
    v41 = v26;
    v42 = v29;
    a8 = v25;
    a6 = v24;
    a7 = v27;
    a4 = v34;
    a5 = v35;
    sub_24F92C7F8();
    sub_24E601704(&v43, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  v30 = v47;
  *(v12 + 88) = v46;
  *(v12 + 104) = v30;
  *(v12 + 120) = v48;
  sub_24E65E0D4(v36, v12 + OBJC_IVAR____TtC12GameStoreKit12ArcadeLockup_impressionMetrics);
  v31 = v38;
  v32 = v39;
  *(v12 + 16) = v37;
  *(v12 + 24) = v32;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  *(v12 + 48) = a6;
  *(v12 + 56) = a7;
  *(v12 + 64) = a8;
  *(v12 + 72) = v31;
  *(v12 + 80) = v40;
  return v12;
}

char *ArcadeLockup.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v98 = a2;
  v79 = sub_24F91F6B8();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v77 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v4 - 8);
  v83 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v86 = &v69 - v7;
  v8 = sub_24F9285B8();
  v91 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v80 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F928388();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v81 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v84 = &v69 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v69 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v69 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v69 - v22;
  v24 = a1;
  sub_24F928398();
  v82 = sub_24F928348();
  v26 = v25;
  v29 = *(v11 + 8);
  v28 = v11 + 8;
  v27 = v29;
  v29(v23, v10);
  if (!v26)
  {
    v35 = sub_24F92AC38();
    sub_24EBFA624(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v36 = 0x656C746974;
    v37 = v89;
    v36[1] = 0xE500000000000000;
    v36[2] = v37;
    (*(*(v35 - 8) + 104))(v36, *MEMORY[0x277D22530], v35);
    swift_willThrow();
    (*(v91 + 8))(v98, v8);
    v34 = v24;
    goto LABEL_5;
  }

  v85 = v26;
  v88 = v8;
  sub_24F928398();
  v76 = sub_24F928348();
  v89 = v30;
  v27(v20, v10);
  sub_24F928398();
  v75 = sub_24F928348();
  v87 = v31;
  v27(v20, v10);
  type metadata accessor for Action(0);
  sub_24F928398();
  v32 = v90;
  v33 = static Action.makeInstance(byDeserializing:using:)(v17, v98);
  if (v32)
  {

    (*(v91 + 8))(v98, v88);
    v27(v24, v10);
    v34 = v17;
LABEL_5:
    v27(v34, v10);
    return v20;
  }

  v74 = v33;
  v73 = v28;
  v27(v17, v10);
  v39 = v24;
  v40 = v84;
  v90 = v39;
  sub_24F928398();
  v41 = v98;
  v42 = static Action.makeInstance(byDeserializing:using:)(v40, v98);
  v43 = v27;
  v44 = v91;
  v71 = v42;
  v72 = 0;
  v69 = v43;
  v43(v40, v10);
  type metadata accessor for OfferDisplayProperties();
  sub_24F928398();
  v45 = *(v44 + 16);
  v46 = v80;
  v70 = v10;
  v47 = v88;
  v45(v80, v41, v88);
  sub_24EBFA624(&qword_27F225B10, type metadata accessor for OfferDisplayProperties, &protocol conformance descriptor for OfferDisplayProperties);
  sub_24F929548();
  v84 = v97[0];
  sub_24F929608();
  sub_24F928398();
  v45(v46, v41, v47);
  sub_24F929548();
  v48 = v81;
  sub_24F928398();
  v49 = sub_24F928348();
  if (v50)
  {
    *&v94 = v49;
    *(&v94 + 1) = v50;
  }

  else
  {
    v51 = v77;
    sub_24F91F6A8();
    v52 = sub_24F91F668();
    v54 = v53;
    (*(v78 + 8))(v51, v79);
    *&v94 = v52;
    *(&v94 + 1) = v54;
  }

  sub_24F92C7F8();
  v55 = v70;
  v56 = v69;
  v69(v48, v70);
  v57 = v87;
  v58 = v83;
  sub_24E60169C(v86, v83, &qword_27F213E68, &unk_24F93BC80);
  type metadata accessor for ArcadeLockup(0);
  v20 = swift_allocObject();
  sub_24E60169C(v97, &v94, &qword_27F235830, &qword_24F93B8C0);
  v59 = v98;
  v60 = v91;
  v61 = v89;
  if (*(&v95 + 1))
  {
    v62 = v95;
    *(v20 + 88) = v94;
    *(v20 + 104) = v62;
    *(v20 + 15) = v96;
  }

  else
  {
    v63 = v77;
    sub_24F91F6A8();
    v64 = sub_24F91F668();
    v66 = v65;
    (*(v78 + 8))(v63, v79);
    v92 = v64;
    v93 = v66;
    v57 = v87;
    v58 = v83;
    v61 = v89;
    sub_24F92C7F8();
    sub_24E601704(&v94, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v60 + 8))(v59, v88);
  v56(v90, v55);
  sub_24E601704(v97, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v86, &qword_27F213E68, &unk_24F93BC80);
  sub_24E65E0D4(v58, &v20[OBJC_IVAR____TtC12GameStoreKit12ArcadeLockup_impressionMetrics]);
  v67 = v85;
  *(v20 + 2) = v82;
  *(v20 + 3) = v67;
  *(v20 + 4) = v76;
  *(v20 + 5) = v61;
  *(v20 + 6) = v75;
  *(v20 + 7) = v57;
  v68 = v71;
  *(v20 + 8) = v74;
  *(v20 + 9) = v68;
  *(v20 + 10) = v84;
  return v20;
}

uint64_t type metadata accessor for ArcadeLockup(uint64_t a1)
{
  result = qword_27F22B5A8;
  if (!qword_27F22B5A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ArcadeLockup.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ArcadeLockup.subscribedSubtitle.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ArcadeLockup.nonsubscribedSubtitle.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void *ArcadeLockup.deinit()
{

  sub_24E6585F8(v0 + 88);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12ArcadeLockup_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  return v0;
}

uint64_t ArcadeLockup.__deallocating_deinit()
{
  ArcadeLockup.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24EBFA624(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_24EBFA67C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  result = ArcadeLockup.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void sub_24EBFA6EC(uint64_t a1)
{
  sub_24E61C938(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t (*static NSBundle.appStoreKit.modify(uint64_t a1))(void)
{
  if (qword_27F2103D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_24EBFA944(uint64_t a1, void *a2)
{
  type metadata accessor for ThisFramework();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  *a2 = result;
  return result;
}

id sub_24EBFA9C0(void *a1, void **a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = *a2;

  return v4;
}

void sub_24EBFAA4C(void *a1, void *a2, void **a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = *a3;
  *a3 = a1;
}

uint64_t (*static NSBundle.currentStoreKit.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27F2103E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

id sub_24EBFAB60(void *a1, uint64_t a2, uint64_t a3, id a4, id a5, void *a6)
{
  v19[2] = *MEMORY[0x277D85DE8];
  if (a5)
  {
    return [a5 paragraphStyleWithBaseWritingDirection_];
  }

  v19[0] = 0;
  v19[1] = 0;
  v11 = [a1 paragraphStyleAtIndex:a2 effectiveRange:v19];
  if (!v11)
  {
    return a6;
  }

  v12 = v11;
  v14 = sub_24F92C438();
  result = v12;
  if ((v15 & 1) != 0 || v14 != a2 || v13 != a3)
  {
    goto LABEL_11;
  }

  if ([v12 baseWritingDirection] == a4)
  {
    return v12;
  }

  result = v12;
  if (a4 != -1 || (v18 = [v12 baseWritingDirection], result = v12, v18 == -1))
  {
LABEL_11:
    v16 = result;
    v17 = [result paragraphStyleWithBaseWritingDirection_];

    return v17;
  }

  return result;
}

void sub_24EBFACC8(id a1@<X0>, void *a2@<X1>, void *a3@<X2>, char a4@<W3>, unint64_t a5@<X8>)
{
  if (a1)
  {
    v9 = [a1 mutableString];
  }

  else
  {
    if (!a2)
    {
      if (qword_27F211050 != -1)
      {
        goto LABEL_325;
      }

      goto LABEL_296;
    }

    v9 = a2;
  }

  v10 = v9;
  v11 = [v9 length];
  if (v11 < 1)
  {
    if (qword_27F211050 != -1)
    {
LABEL_314:
      swift_once();
    }

    v81 = qword_27F23D658;

    goto LABEL_297;
  }

  v12 = v11;
  v89 = a3;
  v98 = a5;
  a5 = MEMORY[0x277D84F90];
  v93 = a1;
  v13 = a1 == 0;
  v97 = v10;
  sub_24EF20144(v97, 0, v12, &v125);
  v14 = sub_24F91E8A8();
  v15 = sub_24F91E8A8();
  v112 = 0;
  v113 = 0;
  v105 = 0;
  v100 = 0;
  v101 = 0;
  v17 = 0;
  v116 = 0;
  v117 = 0;
  v120 = 0;
  v102 = 0;
  v18 = 0;
  v123 = a5;
  v124 = a5;
  v92 = *MEMORY[0x277D74200];
  v103 = a4;
  v90 = v13 | a4;
  v88 = *MEMORY[0x277D74118];
  v119 = v14;
  v111 = v14;
  v121 = v14;
  v107 = a5;
  v19 = a5;
  v99 = a5;
  v104 = a5;
LABEL_7:
  v94 = 0;
  v20 = 0;
  v95 = 0;
  v96 = 0;
  v21 = 0;
  v91 = v17;
  v106 = v17;
  while (2)
  {
    v108 = v20;
    v109 = v15;
    v110 = v18;
    v114 = 0;
    v22 = 0;
    v118 = -1;
    while (1)
    {
      while (1)
      {
        if (v17 < 0 || (v10 = v126, v17 >= v126))
        {
          v10 = 0;
LABEL_16:
          v24 = 1;
          v25 = __OFADD__(v17++, 1);
          if (v25)
          {
            goto LABEL_300;
          }

          goto LABEL_17;
        }

        if (*(&v126 + 1))
        {
          if (__OFADD__(v17, *(&v125 + 1)))
          {
            goto LABEL_302;
          }

          LOWORD(v23) = *(*(&v126 + 1) + 2 * (v17 + *(&v125 + 1)));
        }

        else if (v127)
        {
          if (__OFADD__(v17, *(&v125 + 1)))
          {
            goto LABEL_304;
          }

          LODWORD(v23) = *(v127 + v17 + *(&v125 + 1));
          if ((v23 & 0x80000000) != 0)
          {
            goto LABEL_305;
          }
        }

        else
        {
          if (v17 >= *(&v128 + 1) || (a5 = v128, v17 < v128))
          {
            if (v17 >= 4)
            {
              a5 = v17 - 4;
            }

            else
            {
              a5 = 0;
            }

            *&v128 = a5;
            v47 = a5 + 2048;
            if (__OFADD__(a5, 2048))
            {
              goto LABEL_312;
            }

            if (v126 < v47)
            {
              v47 = v126;
            }

            *(&v128 + 1) = v47;
            if (__OFADD__(*(&v125 + 1), a5))
            {
              goto LABEL_313;
            }

            v129.length = v47 - a5;
            v23 = *(&v127 + 1);
            v129.location = *(&v125 + 1) + a5;
            CFStringGetCharacters(v125, v129, *(&v127 + 1));
          }

          else
          {
            v23 = *(&v127 + 1);
          }

          if (!v23)
          {
            goto LABEL_337;
          }

          if (__OFSUB__(v17, a5))
          {
            goto LABEL_307;
          }

          LOWORD(v23) = *(v23 + 2 * (v17 - a5));
        }

        if (((v23 + 9216) >> 10) < 0x3Fu)
        {
          if (((v23 + 0x2000) >> 11) >= 0x1Fu)
          {
            goto LABEL_157;
          }

          v10 = v23;
          goto LABEL_16;
        }

        if (v17 >= (v10 - 1) || (v10 = &v125, v48 = sub_24EF20044(v17 + 1), ((v48 + 0x2000) >> 10) < 0x3Fu))
        {
LABEL_157:
          LODWORD(v28) = 0;
          ++v17;
          v44 = 1;
          v38 = 1;
          v45 = 1;
          v24 = 1;
          goto LABEL_202;
        }

        v10 = ((v23 + 10240) << 10) + (v48 + 9216) + 0x10000;
        v24 = 2;
        v25 = __OFADD__(v17, 2);
        v17 += 2;
        if (v25)
        {
          goto LABEL_300;
        }

LABEL_17:
        v26 = AMPGetBidiClass(v10, v16);
        v27 = v26;
        LODWORD(v28) = 0;
        if (v26 > 10)
        {
          if (v26 > 12)
          {
            if (v26 == 13)
            {
              goto LABEL_176;
            }

            if (v26 == 14)
            {
              if (v10 > 0x7F)
              {
                v60 = (v10 & 0x3F) << 8;
                if (v10 >= 0x800)
                {
                  v61 = (v60 | (v10 >> 6) & 0x3F) << 8;
                  v62 = (((v61 | (v10 >> 12) & 0x3F) << 8) | (v10 >> 18)) - 2122219023;
                  v30 = (v10 >> 12) + v61 + 8487393;
                  if (WORD1(v10))
                  {
                    v30 = v62;
                  }
                }

                else
                {
                  v30 = (v10 >> 6) + v60 + 33217;
                }
              }

              else
              {
                v30 = v10 + 1;
              }

              *&v122[0] = (v30 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v30) >> 3))));
              v31 = sub_24F92B208();
              v33 = sub_24F26DAFC(v31, v32);
              if ((v33 & 0x100000000) != 0)
              {
                goto LABEL_336;
              }

              v34 = v33;

              if ((v34 - 14) > 0xFFFFFFFB || (v34 - 8232) < 2 || v34 == 133)
              {
LABEL_40:
                if (v10 == 8232)
                {
                  v10 = v17 - v24;
                  if (__OFSUB__(v17, v24))
                  {
                    goto LABEL_303;
                  }

                  v35 = v113;
                  if (!v113)
                  {
                    v35 = MEMORY[0x277D84F90];
                  }

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v35 = sub_24E615EC4(0, *(v35 + 2) + 1, 1, v35);
                  }

                  a5 = *(v35 + 2);
                  v36 = *(v35 + 3);
                  v113 = v35;
                  if (a5 >= v36 >> 1)
                  {
                    v113 = sub_24E615EC4((v36 > 1), a5 + 1, 1, v35);
                  }

                  *(v113 + 2) = a5 + 1;
                  *&v113[8 * a5 + 32] = v10;
                  LODWORD(v28) = 1;
                }

                else
                {
                  LODWORD(v28) = 1;
                  if (v12 > v17 && v10 == 13)
                  {
                    v10 = &v125;
                    v43 = sub_24EF20044(v17);
                    if (((v43 + 9216) >> 10) > 0x3Eu)
                    {
                      if (__OFSUB__(v126, 1))
                      {
                        goto LABEL_311;
                      }

                      if (v17 < v126 - 1)
                      {
                        sub_24EF20044(v17 + 1);
                      }
                    }

                    else if (v43 == 10)
                    {
                      ++v24;
                      ++v17;
                      LODWORD(v28) = 1;
                      goto LABEL_176;
                    }

                    LODWORD(v28) = 1;
                  }
                }
              }

              else
              {
                LODWORD(v28) = 0;
              }

LABEL_176:
              v44 = 1;
LABEL_177:
              v38 = 1;
              v45 = 1;
              goto LABEL_202;
            }

LABEL_61:
            v38 = 0;
            goto LABEL_97;
          }

          if (v26 != 11)
          {
            goto LABEL_40;
          }

          v28 = *(v19 + 2);
          if (!v28)
          {
            goto LABEL_96;
          }

          if ((*&v19[4 * v28 + 28] - 8294) > 2)
          {
            goto LABEL_85;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v39 = *(v19 + 2);
            if (!v39)
            {
              goto LABEL_310;
            }
          }

          else
          {
            v19 = sub_24ECDE19C(v19);
            v39 = *(v19 + 2);
            if (!v39)
            {
              goto LABEL_310;
            }
          }

          goto LABEL_74;
        }

        if (v26 != 8)
        {
          if (v26 != 9)
          {
            if (v26 != 10)
            {
              goto LABEL_61;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v19 = sub_24E616274(0, *(v19 + 2) + 1, 1, v19);
            }

            a5 = *(v19 + 2);
            v29 = *(v19 + 3);
            if (a5 >= v29 >> 1)
            {
              v19 = sub_24E616274((v29 > 1), a5 + 1, 1, v19);
            }

            *(v19 + 2) = a5 + 1;
            *&v19[4 * a5 + 32] = v10;
            switch(v10)
            {
              case 0x2068:
                v117 = 0;
                v120 = 0;
                LOBYTE(v28) = v116 ^ 1;
                v116 = 1;
                break;
              case 0x2067:
                v116 = 0;
                v120 = 0;
                LOBYTE(v28) = v117 ^ 1;
                v117 = 1;
                break;
              case 0x2066:
                v116 = 0;
                v117 = 0;
                LOBYTE(v28) = v120 ^ 1;
                v120 = 1;
                break;
              default:
LABEL_85:
                LOBYTE(v28) = 0;
                break;
            }

            goto LABEL_96;
          }

          v28 = *(v19 + 2);
          if (!v28)
          {
            goto LABEL_96;
          }

          v40 = *&v19[4 * v28 + 28] - 8234;
          if (v40 > 4 || v40 == 2)
          {
            goto LABEL_85;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v39 = *(v19 + 2);
            if (!v39)
            {
              goto LABEL_306;
            }
          }

          else
          {
            v19 = sub_24ECDE19C(v19);
            v39 = *(v19 + 2);
            if (!v39)
            {
              goto LABEL_306;
            }
          }

LABEL_74:
          *(v19 + 2) = v39 - 1;
          if (v39 != 1)
          {
            LOBYTE(v28) = 0;
            v38 = 1;
            v42 = (*&v19[4 * v39 + 24] - 8234);
            if (v42 > 0x3E)
            {
              goto LABEL_97;
            }

            if (((1 << v42) & 0x1000000000000009) != 0)
            {
              goto LABEL_88;
            }

            if (((1 << v42) & 0x2000000000000012) != 0)
            {
              goto LABEL_89;
            }

            if (v42 == 62)
            {
              v117 = 0;
              v120 = 0;
              LOBYTE(v28) = v116 ^ 1;
              v116 = 1;
            }

            goto LABEL_97;
          }

          LOBYTE(v28) = 1;
LABEL_96:
          v38 = 1;
          goto LABEL_97;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_24E616274(0, *(v19 + 2) + 1, 1, v19);
        }

        a5 = *(v19 + 2);
        v37 = *(v19 + 3);
        if (a5 >= v37 >> 1)
        {
          v19 = sub_24E616274((v37 > 1), a5 + 1, 1, v19);
        }

        LOBYTE(v28) = 0;
        *(v19 + 2) = a5 + 1;
        *&v19[4 * a5 + 32] = v10;
        v38 = 1;
        if (v10 > 8236)
        {
          if (v10 != 8238)
          {
            if (v10 != 8237)
            {
              goto LABEL_97;
            }

LABEL_88:
            v116 = 0;
            v117 = 0;
            LOBYTE(v28) = v120 ^ 1;
            v120 = 1;
            goto LABEL_97;
          }

LABEL_89:
          v116 = 0;
          v120 = 0;
          LOBYTE(v28) = v117 ^ 1;
          v117 = 1;
          goto LABEL_97;
        }

        if (v10 == 8234)
        {
          goto LABEL_88;
        }

        if (v10 == 8235)
        {
          goto LABEL_89;
        }

LABEL_97:
        v25 = __OFADD__(v22, v24);
        v22 += v24;
        if (v25)
        {
          goto LABEL_301;
        }

        if ((*(v19 + 2) != 0) | v28 & 1)
        {
          if (v120)
          {
            LODWORD(v28) = 0;
            v44 = 0;
            v114 = v118 != 0;
            v120 = 1;
            v45 = v38;
            v118 = 0;
            goto LABEL_202;
          }

          if (v117)
          {
            v120 = 0;
            LODWORD(v28) = 0;
            v44 = 0;
            v114 = v118 != 1;
            v117 = 1;
            v118 = 1;
          }

          else
          {
            if ((v116 & 1) == 0)
            {
              v116 = 0;
              v117 = 0;
              v120 = 0;
              goto LABEL_200;
            }

            v120 = 0;
            LODWORD(v28) = 0;
            v44 = 0;
            v114 = v118 != -1;
            v117 = 0;
            v118 = -1;
            v116 = 1;
          }

          goto LABEL_201;
        }

        LODWORD(v28) = 0;
        v45 = 1;
        if (v27 > 6)
        {
          if (v27 > 9)
          {
            if ((v27 - 15) < 2)
            {
LABEL_120:
              v44 = 0;
              v38 = 1;
              goto LABEL_202;
            }

            if (v27 != 10 && v27 != 11)
            {
              goto LABEL_338;
            }
          }

          else if (v27 == 7)
          {
            if (sub_24F91E8A8() == v119)
            {
              if (sub_24F91E8A8() != v121)
              {
                v25 = __OFADD__(v112, v24);
                v112 += v24;
                if (v25)
                {
                  goto LABEL_327;
                }
              }
            }

            else
            {
              v25 = __OFADD__(v110, v24);
              v110 += v24;
              if (v25)
              {
                goto LABEL_316;
              }
            }
          }

          goto LABEL_200;
        }

        if (v27 <= 2)
        {
          switch(v27)
          {
            case 0:
              goto LABEL_120;
            case 1:
              if (v118 == -1)
              {
                v118 = 0;
                LODWORD(v28) = 0;
                v44 = 0;
                goto LABEL_177;
              }

              LODWORD(v28) = 0;
              v44 = 0;
              v46 = v118 == 0;
              break;
            case 2:
              if (v118 == -1)
              {
                LODWORD(v28) = 0;
                v44 = 0;
                v118 = 1;
                goto LABEL_177;
              }

              LODWORD(v28) = 0;
              v44 = 0;
              v46 = v118 == 1;
              break;
            default:
              goto LABEL_338;
          }

          v49 = !v46;
          v114 |= v49;
          goto LABEL_177;
        }

        if ((v27 - 3) >= 2)
        {
          if (v27 == 5)
          {
            if (sub_24F91E8A8() == v119)
            {
              if (sub_24F91E8A8() != v121)
              {
                LODWORD(v28) = 0;
                v44 = 0;
                v45 = 1;
                goto LABEL_202;
              }

              v121 = v17 - v24;
              if (__OFSUB__(v17, v24))
              {
                goto LABEL_329;
              }

              v25 = __OFADD__(v112, v24);
              v112 += v24;
              if (v25)
              {
                goto LABEL_332;
              }
            }

            else
            {
              v25 = __OFADD__(v110, v24);
              v110 += v24;
              if (v25)
              {
                goto LABEL_319;
              }
            }
          }

          else
          {
            if (v27 != 6)
            {
              goto LABEL_338;
            }

            if (sub_24F91E8A8() == v119)
            {
              if (sub_24F91E8A8() == v121)
              {
                v121 = v17 - v24;
                if (__OFSUB__(v17, v24))
                {
                  goto LABEL_328;
                }

                v25 = __OFADD__(v112, v24);
                v112 += v24;
                if (v25)
                {
                  goto LABEL_331;
                }
              }

              else
              {
                v25 = __OFADD__(v112, v24);
                v112 += v24;
                if (v25)
                {
                  goto LABEL_330;
                }
              }
            }

            else
            {
              v25 = __OFADD__(v110, v24);
              v110 += v24;
              if (v25)
              {
                goto LABEL_321;
              }
            }
          }

LABEL_200:
          LODWORD(v28) = 0;
          v44 = 0;
LABEL_201:
          v45 = v38;
          goto LABEL_202;
        }

        if (sub_24F91E8A8() == v119)
        {
          if (sub_24F91E8A8() != v121)
          {
            v110 = v112 + v24;
            if (__OFADD__(v112, v24))
            {
              goto LABEL_320;
            }

            v45 = 1;
            v119 = v121;
            goto LABEL_183;
          }

          v119 = v17 - v24;
          if (__OFSUB__(v17, v24))
          {
            goto LABEL_322;
          }
        }

        v45 = v38;
LABEL_183:
        v50 = v110 + v24;
        if (__OFADD__(v110, v24))
        {
          goto LABEL_308;
        }

        v110 += v24;
        v51 = v50 + v119;
        v109 = v51 - 1;
        if (__OFSUB__(v51, 1))
        {
          goto LABEL_309;
        }

        if (v118 == -1)
        {
          LODWORD(v28) = 0;
          v44 = 0;
          v52 = 1;
          if (v27 != 4)
          {
            v52 = -1;
          }

          v118 = v52;
        }

        else
        {
          LODWORD(v28) = 0;
          v44 = 0;
        }

LABEL_202:
        v25 = __OFADD__(v21, v24);
        v21 += v24;
        if (v25)
        {
          __break(1u);
LABEL_300:
          __break(1u);
LABEL_301:
          __break(1u);
LABEL_302:
          __break(1u);
LABEL_303:
          __break(1u);
LABEL_304:
          __break(1u);
LABEL_305:
          __break(1u);
LABEL_306:
          __break(1u);
LABEL_307:
          __break(1u);
LABEL_308:
          __break(1u);
LABEL_309:
          __break(1u);
LABEL_310:
          __break(1u);
LABEL_311:
          __break(1u);
LABEL_312:
          __break(1u);
LABEL_313:
          __break(1u);
          goto LABEL_314;
        }

        a5 = v17 == v12;
        if (v17 == v12)
        {
          v45 = 1;
          v53 = 1;
        }

        else
        {
          v53 = v28;
        }

        v54 = v17 == v12 ? 1 : v44;
        v55 = v17 == v12 ? 1 : v38;
        if (v45 != 1)
        {
          break;
        }

        if (sub_24F91E8A8() == v121)
        {
          LODWORD(v28) = v53;
          v44 = v54;
          v38 = v55;
          break;
        }

        if (v55)
        {
          v112 = 0;
          v121 = v111;
          goto LABEL_219;
        }

        v112 = 0;
        v121 = v111;
        if (v54)
        {
          a5 = 0;
          v121 = v111;
          goto LABEL_245;
        }
      }

      v53 = v28;
      v54 = v44;
      if (!v38)
      {
        goto LABEL_220;
      }

LABEL_219:
      if (sub_24F91E8A8() == v119)
      {
LABEL_220:
        if (v54)
        {
          goto LABEL_245;
        }

        goto LABEL_221;
      }

      if (__OFSUB__(v119 + v110, 1))
      {
        __break(1u);
LABEL_316:
        __break(1u);
LABEL_317:
        __break(1u);
        goto LABEL_318;
      }

      if (v109 < v119 + v110 - 1)
      {
        v56 = v109 - v119;
        if (__OFSUB__(v109, v119))
        {
          goto LABEL_323;
        }

        v110 = v56 + 1;
        if (__OFADD__(v56, 1))
        {
          goto LABEL_324;
        }
      }

      if (v103)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_24E616164(0, *(v107 + 2) + 1, 1, v107);
        }

        v58 = *(v107 + 2);
        v57 = *(v107 + 3);
        if (v58 >= v57 >> 1)
        {
          v107 = sub_24E616164((v57 > 1), v58 + 1, 1, v107);
        }

        *(v107 + 2) = v58 + 1;
        v59 = &v107[16 * v58];
        *(v59 + 4) = v119;
        *(v59 + 5) = v110;
      }

      v109 = sub_24F91E8A8();
      if (v54)
      {
        break;
      }

      v110 = 0;
      v119 = v111;
LABEL_221:
      if (v17 == v12)
      {
        goto LABEL_290;
      }
    }

    v110 = 0;
    v119 = v111;
LABEL_245:
    if (v118 == 1)
    {
      v63 = __CFADD__(v95++, 1);
      if (!v63)
      {
        goto LABEL_251;
      }

      goto LABEL_317;
    }

    if (v118)
    {
      if (v22 < 1)
      {
        goto LABEL_263;
      }

      v63 = __CFADD__(v108++, 1);
      if (v63)
      {
        __break(1u);
LABEL_327:
        __break(1u);
LABEL_328:
        __break(1u);
LABEL_329:
        __break(1u);
LABEL_330:
        __break(1u);
LABEL_331:
        __break(1u);
LABEL_332:
        __break(1u);
LABEL_333:
        __break(1u);
LABEL_334:
        __break(1u);
LABEL_335:
        __break(1u);
LABEL_336:
        __break(1u);
LABEL_337:
        __break(1u);
LABEL_338:
        sub_24F92C888();

        v87 = sub_24F92CD88();
        MEMORY[0x253050C20](v87);

        sub_24F92CA88();
        __break(1u);
        return;
      }

LABEL_255:
      if (v103)
      {
        v64 = [objc_opt_self() valueWithRange:v106 direction:v22 hasMixedDirectionality:{v118, v114 & 1}];
        MEMORY[0x253050F00]();
        if (*((v124 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v124 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24F92B5E8();
        }

        sub_24F92B638();

        v104 = v124;
      }

      if (v114)
      {
        if (v93)
        {
          v65 = objc_allocWithZone(MEMORY[0x277CCABB0]);
          v115 = v93;
          v66 = [v65 initWithInteger_];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
          v67 = swift_allocObject();
          *(v67 + 16) = xmmword_24F941C80;
          *(v67 + 32) = v66;
          sub_24E9421D0();
          v68 = v66;
          v69 = sub_24F92B588();

          [v115 addAttribute:v92 value:v69 range:{v106, v22}];
        }

        v105 = 1;
        v94 = 1;
      }

LABEL_263:
      v15 = v109;
      v18 = v110;
      v20 = v108;
      if (!v53)
      {
        v106 = v17;
        if ((a5 & 1) == 0)
        {
          continue;
        }

LABEL_290:

        if (*(&v127 + 1))
        {
          MEMORY[0x2530542D0](*(&v127 + 1), -1, -1);
        }

        *(&v127 + 1) = 0;
        v80 = objc_allocWithZone(type metadata accessor for WritingDirectionsCounts());
        v81 = WritingDirectionsCounts.init(natural:leftToRight:rightToLeft:)(v100, v102, v101);

        v122[0] = v125;
        v122[1] = v126;
        v122[2] = v127;
        v122[3] = v128;
        sub_24EBFC10C(v122);
        a5 = v98;
        v82 = v99;
        v83 = v113;
        v84 = v105;
        v85 = v107;
        v86 = v104;
        goto LABEL_298;
      }

      if (__CFADD__(v102, v96))
      {
        goto LABEL_333;
      }

      if (__CFADD__(v101, v95))
      {
        goto LABEL_334;
      }

      v101 += v95;
      v102 += v96;
      v63 = __CFADD__(v100, v108);
      v100 = &v108[v100];
      if (v63)
      {
        goto LABEL_335;
      }

      v70 = objc_allocWithZone(type metadata accessor for WritingDirectionsCounts());
      v71 = WritingDirectionsCounts.init(natural:leftToRight:rightToLeft:)(v108, v96, v95);
      v72 = v71;
      if (v71[OBJC_IVAR___AMPWritingDirectionsCounts_isRTLEnough])
      {
        v73 = 1;
      }

      else
      {
        v73 = v71[OBJC_IVAR___AMPWritingDirectionsCounts_hasStronglyTypedCounts] - 1;
      }

      if ((v90 & 1) == 0)
      {
        goto LABEL_277;
      }

      v74 = [objc_opt_self() valueWithRange:v91 direction:v21 hasMixedDirectionality:{v73, v94 & 1}];
      MEMORY[0x253050F00]();
      if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      sub_24F92B638();

      v99 = v123;
      if (!v93)
      {
      }

      else
      {
LABEL_277:
        if (v73 == -1)
        {
          v75 = &qword_27F39D390;
          if (qword_27F210DE0 != -1)
          {
            swift_once();
            v75 = &qword_27F39D390;
          }
        }

        else if (v73 == 1)
        {
          v75 = &qword_27F39D398;
          if (qword_27F210DE8 != -1)
          {
            swift_once();
            v75 = &qword_27F39D398;
          }
        }

        else
        {
          v75 = &qword_27F39D388;
          if (qword_27F210DD8 != -1)
          {
            swift_once();
            v75 = &qword_27F39D388;
          }
        }

        v76 = *v75;
        v77 = sub_24EBFAB60(v93, v91, v21, v73, v89, v76);
        v79 = v78;

        if (v79)
        {
          [v93 addAttribute:v88 value:v77 range:{v91, v21}];
        }

        else
        {
        }
      }

      v15 = v109;
      v18 = v110;
      if (a5)
      {
        goto LABEL_290;
      }

      goto LABEL_7;
    }

    break;
  }

  v63 = __CFADD__(v96++, 1);
  if (!v63)
  {
LABEL_251:
    if (v22 < 1)
    {
      goto LABEL_263;
    }

    goto LABEL_255;
  }

LABEL_318:
  __break(1u);
LABEL_319:
  __break(1u);
LABEL_320:
  __break(1u);
LABEL_321:
  __break(1u);
LABEL_322:
  __break(1u);
LABEL_323:
  __break(1u);
LABEL_324:
  __break(1u);
LABEL_325:
  swift_once();
LABEL_296:
  v81 = qword_27F23D658;
LABEL_297:
  v84 = 0;
  v83 = 0;
  v85 = MEMORY[0x277D84F90];
  v86 = MEMORY[0x277D84F90];
  v82 = MEMORY[0x277D84F90];
LABEL_298:
  *a5 = v85;
  *(a5 + 8) = v86;
  *(a5 + 16) = v82;
  *(a5 + 24) = v81;
  *(a5 + 32) = v84 & 1;
  *(a5 + 40) = v83;
}

void MetricsPagePresenter.observe(lifecycleEvent:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B5C8, &qword_24F98BA80);
  MEMORY[0x28223BE20](v5 - 8);
  v60 = &v59 - v6;
  v64 = sub_24F9287F8();
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F929FB8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F91F648();
  v61 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v59 - v17;
  v19 = type metadata accessor for StoreViewControllerLifecycleEvent(0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24EBFE108(a1, v22, v20);
  v62 = v10;
  v23 = (*(v10 + 48))(v22, 11, v9);
  if (v23 > 6)
  {
    if (v23 <= 8)
    {
      v27 = v65;
      if (v23 == 7)
      {
        sub_24F928798();
        (*(*(v27 + 8) + 8))(v8, a2);
        goto LABEL_50;
      }

      (*(v65 + 80))(a2, v65);
      ImpressionsCalculator.isVisible.setter(1);

      if (qword_27F210278 != -1)
      {
        swift_once();
      }

      v26 = off_27F229AB8;
      v26[9] = (*(v27 + 40))(a2, v27);
      v26[10] = v28;
    }

    else
    {
      v25 = v65;
      if (v23 == 9)
      {
        sub_24EBFDE4C(a2, v65);
        if (!(*(v25 + 136))(a2, v25))
        {
          return;
        }

        MetricsPageEnterGate.hasAppeared.setter(1);
        goto LABEL_46;
      }

      if (v23 == 10)
      {
        v56 = (*(v65 + 136))(a2, v65);
        if (v56)
        {
          v57 = v56;
          swift_beginAccess();
          *(v57 + 32) = 0;
        }

        sub_24F9287C8();
        (*(*(v25 + 8) + 8))(v8, a2);
        (*(v63 + 8))(v8, v64);
        if (qword_27F210278 != -1)
        {
          swift_once();
        }

        sub_24EB6AC9C(0, v58);
        return;
      }

      if (v23 != 11)
      {
LABEL_56:
        sub_24EBFE16C(v22, v24);
        return;
      }

      (*(v65 + 80))(a2, v65);
      ImpressionsCalculator.isVisible.setter(0);

      if (qword_27F210278 != -1)
      {
        swift_once();
      }

      v26 = off_27F229AB8;
      *(off_27F229AB8 + 9) = 0;
      v26[10] = 0;
    }

    swift_beginAccess();
    *(v26 + 88) = 2;
    return;
  }

  if (v23 <= 2)
  {
    if (!v23)
    {
      v29 = v12;
      (*(v62 + 32))(v12, v22, v9);
      v30 = v65;
      v31 = (*(v65 + 136))(a2, v65);
      if (v31)
      {
        v32 = v31;
        swift_beginAccess();
        *(v32 + 32) = 0;
      }

      sub_24F9287C8();
      (*(*(v30 + 8) + 8))(v8, a2);
      (*(v63 + 8))(v8, v64);
      if (qword_27F210278 != -1)
      {
        swift_once();
      }

      v34 = off_27F229AB8;
      sub_24EB6AC9C(0, v33);
      v35 = (*(v30 + 96))(a2, v30);
      if (v35)
      {
        v36 = v35;
        v37 = v60;
        (*(v62 + 16))(v60, v29, v9);
        sub_24F91F638();
        sub_24F91F5E8();
        v39 = v38;
        (*(v61 + 8))(v15, v13);
        v40 = type metadata accessor for PendingPageRender.DisappearTimeAndReason(0);
        *(v37 + *(v40 + 20)) = v39;
        (*(*(v40 - 8) + 56))(v37, 0, 1, v40);
        v41 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_disappearTime;
        swift_beginAccess();
        sub_24EBFE1C8(v37, v36 + v41);
        swift_endAccess();
        sub_24ED71208();

        sub_24E601704(v37, &qword_27F22B5C8, &qword_24F98BA80);
      }

      v42 = v65;
      if ((*(v65 + 104))(a2, v65))
      {
        sub_24F92A0B8();
      }

      (*(v42 + 80))(a2, v42);
      ImpressionsCalculator.isVisible.setter(0);

      v34[9] = 0;
      v34[10] = 0;

      swift_beginAccess();
      *(v34 + 88) = 2;
      (*(v62 + 8))(v29, v9);
      v67 = 0;
      memset(v66, 0, sizeof(v66));
      swift_beginAccess();
      sub_24EB6B058(v66, (v34 + 13));
      swift_endAccess();
      return;
    }

    if (v23 == 1)
    {
      sub_24EBFDE4C(a2, v65);
      return;
    }

    goto LABEL_56;
  }

  if (v23 != 3)
  {
    if (v23 != 5)
    {
      if (v23 == 6)
      {
        if (!(*(v65 + 136))(a2))
        {
          return;
        }

        MetricsPageEnterGate.hasExitedWhileAppeared.setter(0);
LABEL_46:

        return;
      }

      goto LABEL_56;
    }

    v53 = v65;
    v54 = (*(v65 + 136))(a2, v65);
    if (v54)
    {
      v55 = v54;
      swift_beginAccess();
      *(v55 + 33) = 1;
    }

    sub_24F9287A8();
    (*(*(v53 + 8) + 8))(v8, a2);
LABEL_50:
    (*(v63 + 8))(v8, v64);
    return;
  }

  v43 = v65;
  sub_24EBFDE4C(a2, v65);
  if ((*(v43 + 136))(a2, v43))
  {
    MetricsPageEnterGate.hasAppeared.setter(1);
  }

  v44 = (*(v65 + 96))(a2);
  if (v44)
  {
    v45 = v44;
    sub_24F91F638();
    sub_24F91F5E8();
    v47 = v46;
    (*(v61 + 8))(v18, v13);
    v48 = v45 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_appearTime;
    swift_beginAccess();
    *v48 = v47;
    *(v48 + 8) = 0;
    v49 = *(v45 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasAppearTime);
    swift_beginAccess();
    *(v49 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24EA6BFA0();
    }
  }

  v50 = v65;
  if ((*(v65 + 104))(a2, v65))
  {
    sub_24F92A0A8();
  }

  (*(v50 + 80))(a2, v50);
  ImpressionsCalculator.isVisible.setter(1);

  if (qword_27F210278 != -1)
  {
    swift_once();
  }

  v51 = off_27F229AB8;
  v51[9] = (*(v50 + 40))(a2, v50);
  v51[10] = v52;

  (*(v50 + 160))(v66, a2, v50);
  swift_beginAccess();
  sub_24EB6B058(v66, (v51 + 13));
  swift_endAccess();
}

void sub_24EBFCDC0(unint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  MetricsPagePresenter.sendEventsFor(invocationPoint:)(a1, a2, WitnessTable);
}

void MetricsPagePresenter.sendEventsFor(invocationPoint:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v117 = a1;
  v111 = sub_24F927D88();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v108 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_24F927DC8();
  v107 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v106 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_24F927D98();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v103 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F929158();
  v114 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v119 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v94 - v12;
  v14 = sub_24F9287F8();
  v118 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v94 - v18;
  v120 = sub_24F928818();
  v20 = *(v120 - 8);
  v21 = MEMORY[0x28223BE20](v120);
  v23 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a3 + 32);
  v123 = v3;
  v124 = a2;
  v122 = a3;
  v116 = a3 + 32;
  v115 = v24;
  (v24)(&aBlock, a2, a3, v21);
  if (!v130)
  {
    sub_24E601704(&aBlock, &qword_27F224F98, &unk_24F974A70);
    return;
  }

  v121 = v13;
  v102 = v9;
  __swift_project_boxed_opaque_existential_1(&aBlock, v130);
  sub_24F92AD48();
  v101 = sub_24F928768();
  v25 = v120;
  v96 = *(v20 + 8);
  v96(v23, v120);
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v26 = v118;
  v27 = *(v118 + 16);
  v100 = v118 + 16;
  v99 = v27;
  v27(v19, v117, v14);
  sub_24F9287E8();
  sub_24EC004D4(&qword_27F21E610, MEMORY[0x277D21BE0], MEMORY[0x277D21BF0]);
  v98 = v19;
  v28 = v14;
  v29 = sub_24F92AFF8();
  v30 = *(v26 + 8);
  v30(v16, v14);
  v95 = v23;
  v94 = v20 + 8;
  if (v29)
  {
    v31 = v25;
    v32 = v23;
    v33 = v98;
    v98 = v28;
    v30(v33, v28);
    if (qword_27F210278 != -1)
    {
      swift_once();
      v32 = v95;
      v31 = v120;
    }

    v34 = off_27F229AB8;
    v115(&aBlock);
    if (v130)
    {
      __swift_project_boxed_opaque_existential_1(&aBlock, v130);
      sub_24F92AD48();
      v35 = sub_24F9286C8();
      v96(v32, v31);
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
    }

    else
    {
      sub_24E601704(&aBlock, &qword_27F224F98, &unk_24F974A70);
      v35 = 0;
    }

    v39 = &qword_27F210000;
    v14 = v98;
    sub_24EB6AC9C(v35, v36);
    swift_beginAccess();
    v48 = v34[20];
    if (v48 != 2 && (v48 != 1 || v34[26] != 1))
    {
      v50 = sub_24EB6B1B0(v125);
      if (*(v49 + 8) != 2)
      {
        *(v49 + 90) = 1;
      }

      (v50)(v125, 0);
    }

LABEL_31:
    v41 = v122;
    goto LABEL_32;
  }

  sub_24F9287C8();
  v37 = v98;
  v38 = sub_24F92AFF8();
  v30(v16, v14);
  if (v38)
  {
    v30(v37, v14);
    v39 = &qword_27F210000;
    if (qword_27F210278 != -1)
    {
      swift_once();
    }

    sub_24EB6CB08();
    goto LABEL_31;
  }

  v39 = &qword_27F210000;
  if (qword_27F210040 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v14, qword_27F2230B8);
  v40 = sub_24F92AFF8();
  v30(v37, v14);
  v41 = v122;
  if ((v40 & 1) == 0)
  {
    goto LABEL_32;
  }

  if (*(*((*(v122 + 80))(v124, v122) + 16) + 16))
  {

    v42 = sub_24F929BA8();

    v41 = v122;

    if (v42)
    {
      if (qword_27F210278 != -1)
      {
        swift_once();
      }

      (v115)(&aBlock, v124, v122);
      v43 = v120;
      if (v130)
      {
        __swift_project_boxed_opaque_existential_1(&aBlock, v130);
        v44 = v95;
        sub_24F92AD48();
        v45 = sub_24F9286C8();
        v46 = v44;
        v39 = &qword_27F210000;
        v96(v46, v43);
        __swift_destroy_boxed_opaque_existential_1(&aBlock);
      }

      else
      {
        sub_24E601704(&aBlock, &qword_27F224F98, &unk_24F974A70);
        v45 = 0;
      }

      sub_24EB6AC9C(v45, v47);
      goto LABEL_31;
    }
  }

  else
  {
  }

LABEL_32:
  v51 = v14;
  v52 = v117;
  if (v39[79] != -1)
  {
    swift_once();
  }

  v53 = off_27F229AB8;
  swift_beginAccess();
  v54 = *(v53 + 242);
  v55 = v53[20] != 2;
  v56 = v124;
  (*(v41 + 88))(v124, v41);
  v57 = *(v41 + 64);
  v58 = v57(v56, v41);
  swift_getObjectType();
  v59 = swift_conformsToProtocol2();
  if (v59 && v58)
  {
    v60 = v59;
    ObjectType = swift_getObjectType();
    v62 = (*(v60 + 16))(ObjectType, v60);
    v98 = v63;
    swift_unknownObjectRelease();
    v64 = v122;
    v65 = v124;
  }

  else
  {
    swift_unknownObjectRelease();
    v65 = v124;
    v64 = v122;
    v62 = v57(v124, v122);
    v98 = v66;
  }

  v67 = v120;
  v97 = v55 & v54;
  swift_unknownObjectRetain();
  (v115)(&aBlock, v65, v64);
  v120 = v62;
  if (v130)
  {
    __swift_project_boxed_opaque_existential_1(&aBlock, v130);
    v68 = v95;
    sub_24F92AD48();
    v116 = sub_24F9286C8();
    v96(v68, v67);
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {
    sub_24E601704(&aBlock, &qword_27F224F98, &unk_24F974A70);
    v116 = 0;
  }

  v69 = v51;
  v99(v16, v52, v51);
  v70 = v114;
  v71 = v102;
  (*(v114 + 16))(v119, v121, v102);
  v72 = v118;
  v73 = (*(v118 + 80) + 40) & ~*(v118 + 80);
  v74 = (v112 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
  v117 = (v74 + 15) & 0xFFFFFFFFFFFFFFF8;
  v75 = (v74 + 39) & 0xFFFFFFFFFFFFFFF8;
  v76 = (*(v70 + 80) + v75 + 8) & ~*(v70 + 80);
  v77 = swift_allocObject();
  v78 = v122;
  *(v77 + 2) = v124;
  *(v77 + 3) = v78;
  *(v77 + 4) = v101;
  (*(v72 + 32))(&v77[v73], v16, v69);
  *&v77[v74] = v123;
  v79 = &v77[v117];
  v80 = v119;
  v81 = v98;
  *v79 = v120;
  *(v79 + 1) = v81;
  v79[16] = v97;
  *&v77[v75] = v116;
  (*(v70 + 32))(&v77[v76], v80, v71);
  swift_unknownObjectRetain();
  if (ASKBuildTypeIsUnitTesting())
  {
    sub_24E74EC40();
    v82 = v104;
    v83 = v103;
    v84 = v105;
    (*(v104 + 104))(v103, *MEMORY[0x277D851C8], v105);
    v124 = sub_24F92BF48();
    (*(v82 + 8))(v83, v84);
    v85 = swift_allocObject();
    *(v85 + 16) = sub_24EBFFEF4;
    *(v85 + 24) = v77;
    v131 = sub_24EC00064;
    v132 = v85;
    aBlock = MEMORY[0x277D85DD0];
    v128 = 1107296256;
    v129 = sub_24EAF8248;
    v130 = &block_descriptor_6_2;
    v86 = _Block_copy(&aBlock);

    v87 = v106;
    sub_24F927DA8();
    v126 = MEMORY[0x277D84F90];
    sub_24EC004D4(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
    sub_24E8582A8();
    v88 = v108;
    v89 = v111;
    sub_24F92C6A8();
    v90 = v124;
    MEMORY[0x2530518B0](0, v87, v88, v86);
    _Block_release(v86);

    swift_unknownObjectRelease();

    (*(v110 + 8))(v88, v89);
    (*(v107 + 8))(v87, v109);
    (*(v70 + 8))(v121, v71);
  }

  else
  {
    v91 = [objc_opt_self() processInfo];
    v92 = sub_24F92B098();
    v131 = sub_24EBFFEF4;
    v132 = v77;
    aBlock = MEMORY[0x277D85DD0];
    v128 = 1107296256;
    v129 = sub_24EBFFB64;
    v130 = &block_descriptor_59;
    v93 = _Block_copy(&aBlock);

    [v91 performExpiringActivityWithReason:v92 usingBlock:v93];
    swift_unknownObjectRelease();
    _Block_release(v93);

    (*(v70 + 8))(v121, v71);
  }
}

uint64_t sub_24EBFDE4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F929AB8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 112);
  v9(a1, a2, v6);
  if (v10)
  {
LABEL_2:
  }

  v21 = v5;
  v22 = v4;
  if (qword_27F210278 != -1)
  {
    swift_once();
  }

  v12 = *(off_27F229AB8 + 3);
  v13 = *(off_27F229AB8 + 4);
  v14 = *(a2 + 120);

  v14(v12, v13, a1, a2);
  result = (v9)(a1, a2);
  if (v15)
  {
    v16 = result;
    v17 = v15;
    v18 = (*(a2 + 104))(a1, a2);
    v19 = v22;
    if (!v18)
    {
      goto LABEL_2;
    }

    if (qword_27F210658 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v19, qword_27F22E3B8);
    v23 = v16;
    v24 = v17;
    if (qword_27F210670 != -1)
    {
      swift_once();
    }

    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910, &unk_24F974C00);
    __swift_project_value_buffer(v20, qword_27F22E400);
    sub_24F929A48();

    sub_24F92A098();

    return (*(v21 + 8))(v8, v19);
  }

  return result;
}

uint64_t sub_24EBFE108(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for StoreViewControllerLifecycleEvent(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EBFE16C(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for StoreViewControllerLifecycleEvent(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24EBFE1C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B5C8, &qword_24F98BA80);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_24EBFE238(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v81 = a8;
  LODWORD(v97) = a7;
  v80 = a6;
  v79 = a5;
  v93 = a4;
  v100 = a3;
  v78 = sub_24F927D88();
  v13 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v77 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_24F927DC8();
  v96 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v75 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_24F929158();
  v82 = *(v92 - 8);
  v16 = *(v82 + 64);
  MEMORY[0x28223BE20](v92);
  v91 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24F9287F8();
  v59 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24F928738();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v90 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v58 - v24;
  if ((a1 & 1) == 0)
  {
    v89 = dispatch_group_create();
    v88 = *(a2 + 16);
    if (v88)
    {
      v26 = 0;
      v29 = *(v21 + 16);
      v27 = v21 + 16;
      v28 = v29;
      v30 = *(v27 + 64);
      v73 = ~v30;
      v87 = a2 + ((v30 + 32) & ~v30);
      v98 = (v59 + 8);
      v99 = v59 + 16;
      v86 = (v27 - 8);
      v72 = a11;
      v71 = a11 + 160;
      v70 = a10;
      v69 = a9;
      v68 = v82 + 16;
      v74 = v30;
      v67 = v16 + v30;
      v66 = v22 + 7;
      v65 = v97 & 1;
      v64 = v82 + 32;
      v63 = (v27 + 16);
      v62 = v102;
      v61 = (v13 + 8);
      v60 = (v96 + 8);
      v85 = *(v27 + 56);
      v96 = v27;
      v95 = v25;
      v94 = v29;
      v84 = v20;
      while (1)
      {
        v97 = v26;
        v28(v25, v87 + v85 * v26, v20);
        v31 = *(sub_24F9286D8() + 16);

        if (!v31)
        {
          goto LABEL_14;
        }

        v32 = sub_24F9286D8();
        if (*(v32 + 16))
        {
          sub_24EC004D4(&qword_27F21E608, MEMORY[0x277D21BE0], MEMORY[0x277D21BE8]);
          v33 = sub_24F92AEE8();
          v34 = -1 << *(v32 + 32);
          v35 = v33 & ~v34;
          if ((*(v32 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35))
          {
            break;
          }
        }

LABEL_4:

        v25 = v95;
        (*v86)(v95, v20);
LABEL_5:
        v26 = v97 + 1;
        v28 = v94;
        if (v97 + 1 == v88)
        {
          goto LABEL_15;
        }
      }

      v36 = ~v34;
      v37 = *(v59 + 72);
      v38 = *(v59 + 16);
      while (1)
      {
        v38(v19, *(v32 + 48) + v37 * v35, v17);
        sub_24EC004D4(&qword_27F21E610, MEMORY[0x277D21BE0], MEMORY[0x277D21BF0]);
        v39 = sub_24F92AFF8();
        (*v98)(v19, v17);
        if (v39)
        {
          break;
        }

        v35 = (v35 + 1) & v36;
        if (((*(v32 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      v25 = v95;
      v28 = v94;
LABEL_14:
      dispatch_group_enter(v89);
      v40 = v72;
      v41 = v70;
      (*(v72 + 160))(&v105, v70, v72);
      sub_24E74EC40();
      v83 = sub_24F92BEF8();
      sub_24E60169C(&v105, v103, &qword_27F224FA0, &qword_24F975FD0);
      v42 = v82;
      (*(v82 + 16))(v91, v69, v92);
      v28(v90, v25, v84);
      v43 = (*(v42 + 80) + 112) & ~*(v42 + 80);
      v44 = (v67 + v43) & v73;
      v45 = (v66 + v44) & 0xFFFFFFFFFFFFFFF8;
      v46 = swift_allocObject();
      v47 = v103[1];
      *(v46 + 72) = v103[0];
      *(v46 + 16) = v41;
      *(v46 + 24) = v40;
      v48 = v80;
      *(v46 + 32) = v79;
      *(v46 + 40) = v48;
      *(v46 + 48) = v93;
      *(v46 + 56) = v65;
      *(v46 + 64) = v81;
      *(v46 + 88) = v47;
      *(v46 + 104) = v104;
      v49 = *(v42 + 32);
      v20 = v84;
      v49(v46 + v43, v91, v92);
      (*v63)(v46 + v44, v90, v20);
      v50 = v89;
      *(v46 + v45) = v89;
      v102[2] = sub_24EC003B8;
      v102[3] = v46;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v102[0] = sub_24EAF8248;
      v102[1] = &block_descriptor_12_4;
      v51 = _Block_copy(aBlock);
      v25 = v95;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      v52 = v50;

      v53 = v75;
      sub_24F927DA8();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_24EC004D4(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
      sub_24E8582A8();
      v54 = v77;
      v55 = v78;
      sub_24F92C6A8();
      v56 = v83;
      MEMORY[0x2530518B0](0, v53, v54, v51);
      _Block_release(v51);

      (*v61)(v54, v55);
      (*v60)(v53, v76);
      sub_24E601704(&v105, &qword_27F224FA0, &qword_24F975FD0);
      (*v86)(v25, v20);
      goto LABEL_5;
    }

LABEL_15:
    v57 = v89;
    sub_24F92BE58();
  }
}

uint64_t sub_24EBFEC94(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11)
{
  v73 = a8;
  v74 = a7;
  v68 = a5;
  v66 = a4;
  v64 = a2;
  v72 = sub_24F928698();
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v70 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225030, &unk_24F98A430);
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v59 = &v57 - v15;
  v16 = sub_24F929AB8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v57 - v21;
  v24 = MEMORY[0x28223BE20](v23);
  v69 = &v57 - v25;
  v57 = (*(a11 + 112))(a10, a11, v24);
  v78 = v26;
  v58 = (*(a11 + 40))(a10, a11);
  v77 = v27;
  if (qword_27F210278 != -1)
  {
    swift_once();
  }

  v28 = off_27F229AB8;
  swift_beginAccess();
  v65 = *(v28 + 88);
  sub_24E60169C(a6, &v83, &qword_27F224FA0, &qword_24F975FD0);
  if (v84)
  {
    sub_24E612C80(&v83, v85);
  }

  else
  {
    (*(a11 + 160))(v85, a10, a11);
    if (v84)
    {
      sub_24E601704(&v83, &qword_27F224FA0, &qword_24F975FD0);
    }
  }

  (*(a11 + 168))(&v83, a10, a11);
  swift_beginAccess();
  v29 = v28[18];
  v30 = *(a11 + 184);
  v76 = v29;

  v67 = v30(a10, a11);
  v63 = v31;
  v75 = (*(a11 + 176))(a10, a11);
  v62 = v32;
  sub_24F929AA8();
  v33 = qword_27F210660;
  swift_unknownObjectRetain();
  if (v33 != -1)
  {
    swift_once();
  }

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225038, &unk_24F974C10);
  __swift_project_value_buffer(v34, qword_27F22E3D0);
  v81 = a1;
  v82 = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225040, &qword_24F975FC0);
  sub_24F929A48();
  v35 = *(v17 + 8);
  v35(v22, v16);
  swift_unknownObjectRelease();
  v36 = *(v17 + 32);
  v36(v22, v19, v16);
  if (v78)
  {
    v81 = v57;
    v82 = v78;
    if (qword_27F210670 != -1)
    {
      swift_once();
    }

    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910, &unk_24F974C00);
    __swift_project_value_buffer(v37, qword_27F22E400);
    sub_24F929A48();
    v35(v22, v16);
    v36(v22, v19, v16);
  }

  if (v77)
  {
    v81 = v58;
    v82 = v77;
    if (qword_27F210678 != -1)
    {
      swift_once();
    }

    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910, &unk_24F974C00);
    __swift_project_value_buffer(v38, qword_27F22E418);
    sub_24F929A48();
    v35(v22, v16);
    v36(v22, v19, v16);
  }

  LOBYTE(v81) = v66 & 1;
  if (qword_27F210680 != -1)
  {
    swift_once();
  }

  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225048, &unk_24F974C20);
  __swift_project_value_buffer(v39, qword_27F22E430);
  sub_24F929A48();
  v35(v22, v16);
  v36(v22, v19, v16);
  if (v68)
  {
    v81 = v68;
    v40 = v59;
    sub_24F929A78();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0);
    sub_24F929A48();
    (*(v60 + 8))(v40, v61);
    v35(v22, v16);
    v36(v22, v19, v16);
  }

  if (v65 != 2)
  {
    LOBYTE(v81) = v65 & 1;
    if (qword_27F210688 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v39, qword_27F22E448);
    sub_24F929A48();
    v35(v22, v16);
    v36(v22, v19, v16);
  }

  sub_24E60169C(v85, &v79, &qword_27F224FA0, &qword_24F975FD0);
  if (v80)
  {
    sub_24E612C80(&v79, &v81);
    v41 = v67;
    if (qword_27F210690 != -1)
    {
      swift_once();
    }

    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225078, &unk_24F976000);
    __swift_project_value_buffer(v42, qword_27F22E460);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225080, &unk_24F974C50);
    sub_24F929A48();
    __swift_destroy_boxed_opaque_existential_1(&v81);
    v35(v22, v16);
    v36(v22, v19, v16);
  }

  else
  {
    sub_24E601704(&v79, &qword_27F224FA0, &qword_24F975FD0);
    v41 = v67;
  }

  v43 = v76;
  sub_24E60169C(&v83, &v79, qword_27F224FA8, &qword_24F974A80);
  if (!v80)
  {
    sub_24E601704(&v79, qword_27F224FA8, &qword_24F974A80);
    if (!v43)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  sub_24E612C80(&v79, &v81);
  if (qword_27F210698 != -1)
  {
    swift_once();
  }

  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225068, &unk_24F975FF0);
  __swift_project_value_buffer(v44, qword_27F22E478);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225070, &unk_24F974C40);
  sub_24F929A48();
  __swift_destroy_boxed_opaque_existential_1(&v81);
  v35(v22, v16);
  v36(v22, v19, v16);
  if (v43)
  {
LABEL_36:
    v81 = v43;
    v45 = qword_27F2106B0;

    if (v45 != -1)
    {
      swift_once();
    }

    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224460, &unk_24F971A10);
    __swift_project_value_buffer(v46, qword_27F22E4C0);
    type metadata accessor for Action(0);
    sub_24F929A48();
    v35(v22, v16);

    v36(v22, v19, v16);
  }

LABEL_39:
  if (v75)
  {
    v81 = v75;
    v82 = v62;
    v47 = qword_27F2106A8;
    swift_unknownObjectRetain();
    if (v47 != -1)
    {
      swift_once();
    }

    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225058, &unk_24F974C30);
    __swift_project_value_buffer(v48, qword_27F22E4A8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225060, &unk_24F98A440);
    sub_24F929A48();
    v35(v22, v16);
    swift_unknownObjectRelease();
    v36(v22, v19, v16);
  }

  if (v41)
  {
    v81 = v41;
    v82 = v63;
    v49 = qword_27F2106A0;
    swift_unknownObjectRetain();
    if (v49 != -1)
    {
      swift_once();
    }

    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225050, &unk_24F975FE0);
    __swift_project_value_buffer(v50, qword_27F22E490);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F90, &qword_24F989D00);
    sub_24F929A48();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v35(v22, v16);
    sub_24E601704(&v83, qword_27F224FA8, &qword_24F974A80);
    sub_24E601704(v85, &qword_27F224FA0, &qword_24F975FD0);
    swift_unknownObjectRelease();
    v36(v22, v19, v16);
  }

  else
  {

    swift_unknownObjectRelease();

    sub_24E601704(&v83, qword_27F224FA8, &qword_24F974A80);
    sub_24E601704(v85, &qword_27F224FA0, &qword_24F975FD0);
  }

  v51 = v69;
  v36(v69, v22, v16);
  v52 = v70;
  sub_24F928718();
  sub_24F929138();
  (*(v71 + 8))(v52, v72);
  *(swift_allocObject() + 16) = a9;
  v53 = sub_24E74EC40();
  v54 = a9;
  v55 = sub_24F92BEF8();
  v85[3] = v53;
  v85[4] = MEMORY[0x277D225C0];
  v85[0] = v55;
  sub_24F92A998();

  v35(v51, v16);
  return __swift_destroy_boxed_opaque_existential_1(v85);
}

double sub_24EBFFB64(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

uint64_t MetricsPagePresenter.prepareToObserveAssets(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(a4 + 96))(a3, a4))
  {
    PendingPageRender.observeAssets(_:)(a1, a2);
  }

  ObjectType = swift_getObjectType();
  v9 = (*(a4 + 104))(a3, a4);
  (*(a2 + 56))(v9, ObjectType, a2);
  return (*(a2 + 72))(ObjectType, a2);
}

void sub_24EBFFCF8(unint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  MetricsPagePresenter.sendEventsFor(invocationPoint:)(a1, a2, WitnessTable);
}

uint64_t sub_24EBFFD58()
{
  v1 = sub_24F9287F8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_24F929158();
  v6 = *(v5 - 8);
  v7 = (((v4 + 39) & 0xFFFFFFFFFFFFFFF8) + *(v6 + 80) + 8) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

void sub_24EBFFEF4(char a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(sub_24F9287F8() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_24F929158() - 8);
  sub_24EBFE238(a1, v1[4], v1 + v6, *(v1 + v7), *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 16), *(v1 + ((v7 + 39) & 0xFFFFFFFFFFFFFFF8)), v1 + ((((v7 + 39) & 0xFFFFFFFFFFFFFFF8) + *(v8 + 80) + 8) & ~*(v8 + 80)), v3, v4);
}

uint64_t block_copy_helper_59(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EC0002C()
{

  return swift_deallocObject();
}

uint64_t sub_24EC00234()
{
  v1 = sub_24F929158();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_24F928738();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (*(v0 + 96))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  }

  v9 = (v3 + 112) & ~v3;
  v10 = (v9 + v4 + v7) & ~v7;
  (*(v2 + 8))(v0 + v9, v1);
  (*(v6 + 8))(v0 + v10, v5);

  return swift_deallocObject();
}

uint64_t sub_24EC003B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(sub_24F929158() - 8);
  v4 = (*(v3 + 80) + 112) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_24F928738() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  return sub_24EBFEC94(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v0 + 72, v0 + v4, v0 + v7, *(v0 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8)), v1, v2);
}

uint64_t sub_24EC004D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EC0051C()
{

  return swift_deallocObject();
}

uint64_t MSODiffablePageContentPresenter.__allocating_init(objectGraph:pageUrl:sidePackedPage:pendingPageRender:pageRenderMetrics:context:personalizationProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6, uint64_t a7)
{
  v75 = a3;
  v81 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v74 - v13;
  v76 = &v74 - v13;
  v15 = swift_allocObject();
  v16 = (v15 + qword_27F22B5D0);
  v17 = a6[1];
  *v16 = *a6;
  v16[1] = v17;
  *(v15 + qword_27F22B5D8) = a7;
  v80 = a2;
  sub_24E99091C(a2, v14);
  *(v15 + qword_27F22F198) = 0;
  v18 = MEMORY[0x277D84F90];
  *(v15 + qword_27F22F1A0) = MEMORY[0x277D84F90];
  v19 = qword_27F39C780;
  v79 = a5;

  v77 = a7;

  v78 = a4;

  *(v15 + v19) = sub_24E60986C(v18);
  v20 = (v15 + qword_27F22F1A8);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v15 + qword_27F22F1B0);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v15 + qword_27F22F1B8);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v15 + qword_27F22F1C0);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v15 + qword_27F22F1C8);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v15 + qword_27F39C788);
  *v25 = 0u;
  v25[1] = 0u;
  *(v25 + 25) = 0u;
  *(v15 + qword_27F39C790) = 0;
  *(v15 + qword_27F22F1D0) = 0;
  *(v15 + qword_27F22F1D8) = MEMORY[0x277D84FA0];
  *(v15 + qword_27F39C798) = 0;
  v26 = qword_27F39C7A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A40, &unk_24F96B688);
  swift_allocObject();
  *(v15 + v26) = sub_24F92ADA8();
  v27 = qword_27F39C7A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8, &unk_24F96A5F0);
  swift_allocObject();
  *(v15 + v27) = sub_24F92ADA8();
  v28 = qword_27F39C7B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A48, &qword_24F96B698);
  swift_allocObject();
  *(v15 + v28) = sub_24F92ADA8();
  v29 = qword_27F39C7B8;
  swift_allocObject();
  *(v15 + v29) = sub_24F92ADA8();
  v30 = qword_27F39C7C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
  swift_allocObject();
  *(v15 + v30) = sub_24F92ADA8();
  v31 = qword_27F39C7C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0, &unk_24F989C70);
  swift_allocObject();
  *(v15 + v31) = sub_24F92ADA8();
  v32 = qword_27F22F1E0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8, &unk_24F96A610);
  v34 = *(*(v33 - 8) + 56);
  v34(v15 + v32, 1, 1, v33);
  v34(v15 + qword_27F22F1E8, 1, 1, v33);
  *(v15 + 16) = v81;
  sub_24E911D90(v76, v15 + qword_27F39C7D0);
  v35 = *v20;
  v36 = v20[1];
  *v20 = 0;
  v20[1] = 0;
  v37 = v75;
  sub_24E824448(v35, v36);
  v38 = *v22;
  v39 = v22[1];
  *v22 = 0;
  v22[1] = 0;
  sub_24E824448(v38, v39);
  if (v37)
  {
    v40 = swift_allocObject();
    *(v40 + 16) = v37;
    v41 = sub_24E965688;
  }

  else
  {
    v41 = 0;
    v40 = 0;
  }

  v43 = *v21;
  v42 = v21[1];
  *v21 = v41;
  v21[1] = v40;
  sub_24E824448(v43, v42);
  v44 = *v23;
  v45 = v23[1];
  *v23 = 0;
  v23[1] = 0;
  sub_24E824448(v44, v45);
  v46 = *v24;
  v47 = v24[1];
  *v24 = 0;
  v24[1] = 0;
  sub_24E824448(v46, v47);
  v48 = v79;
  *(v15 + qword_27F22F1F0) = v78;
  *(v15 + qword_27F39C7D8) = v48;
  v49 = swift_allocObject();
  *(v49 + 16) = v37;
  v50 = swift_allocObject();
  swift_weakInit();
  v51 = swift_allocObject();
  *(v51 + 16) = sub_24EC026C4;
  *(v51 + 24) = v50;
  v52 = swift_allocObject();
  *(v52 + 16) = sub_24E94DEE8;
  *(v52 + 24) = v51;
  v53 = (v15 + qword_27F22F1A8);
  v54 = *(v15 + qword_27F22F1A8);
  v55 = *(v15 + qword_27F22F1A8 + 8);
  *v53 = sub_24E965630;
  v53[1] = v52;

  sub_24E824448(v54, v55);
  v56 = swift_allocObject();
  *(v56 + 16) = sub_24E94E064;
  *(v56 + 24) = v49;
  v57 = swift_allocObject();
  *(v57 + 16) = sub_24E94DF50;
  *(v57 + 24) = v56;
  v58 = (v15 + qword_27F22F1B0);
  v59 = *(v15 + qword_27F22F1B0);
  v60 = *(v15 + qword_27F22F1B0 + 8);
  *v58 = sub_24E965648;
  v58[1] = v57;

  sub_24E824448(v59, v60);
  v61 = (v15 + qword_27F22F1B8);
  v63 = *(v15 + qword_27F22F1B8);
  v62 = *(v15 + qword_27F22F1B8 + 8);
  if (v63)
  {
    v64 = swift_allocObject();
    *(v64 + 16) = v63;
    *(v64 + 24) = v62;
    v65 = swift_allocObject();
    *(v65 + 16) = sub_24E94DFB8;
    *(v65 + 24) = v64;
    v66 = sub_24E965640;
  }

  else
  {
    v66 = 0;
    v65 = *(v15 + qword_27F22F1B8 + 8);
  }

  *v61 = v66;
  v61[1] = v65;
  sub_24E5FCA4C(v63, v62);
  sub_24E824448(v63, v62);
  v67 = (v15 + qword_27F22F1C8);
  v69 = *(v15 + qword_27F22F1C8);
  v68 = *(v15 + qword_27F22F1C8 + 8);
  if (v69)
  {
    v70 = swift_allocObject();
    *(v70 + 16) = v69;
    *(v70 + 24) = v68;
    v71 = swift_allocObject();
    *(v71 + 16) = sub_24E94DEE8;
    *(v71 + 24) = v70;
    v72 = sub_24E965630;
  }

  else
  {
    v72 = 0;
    v71 = *(v15 + qword_27F22F1C8 + 8);
  }

  *v67 = v72;
  v67[1] = v71;
  sub_24E5FCA4C(v69, v68);
  sub_24E824448(v69, v68);

  sub_24E601704(v80, &qword_27F228530, &unk_24F93C6E0);
  return v15;
}

uint64_t MSODiffablePageContentPresenter.init(objectGraph:pageUrl:sidePackedPage:pendingPageRender:pageRenderMetrics:context:personalizationProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6, uint64_t a7)
{
  v8 = v7;
  v76 = a3;
  v82 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v75 - v15;
  v77 = &v75 - v15;
  v17 = (v8 + qword_27F22B5D0);
  v18 = a6[1];
  *v17 = *a6;
  v17[1] = v18;
  *(v8 + qword_27F22B5D8) = a7;
  v81 = a2;
  sub_24E99091C(a2, v16);
  *(v8 + qword_27F22F198) = 0;
  v19 = MEMORY[0x277D84F90];
  *(v8 + qword_27F22F1A0) = MEMORY[0x277D84F90];
  v20 = qword_27F39C780;
  v80 = a5;

  v78 = a7;

  v79 = a4;

  *(v8 + v20) = sub_24E60986C(v19);
  v21 = (v8 + qword_27F22F1A8);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v8 + qword_27F22F1B0);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v8 + qword_27F22F1B8);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v8 + qword_27F22F1C0);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v8 + qword_27F22F1C8);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v8 + qword_27F39C788);
  *v26 = 0u;
  v26[1] = 0u;
  *(v26 + 25) = 0u;
  *(v8 + qword_27F39C790) = 0;
  *(v8 + qword_27F22F1D0) = 0;
  *(v8 + qword_27F22F1D8) = MEMORY[0x277D84FA0];
  *(v8 + qword_27F39C798) = 0;
  v27 = qword_27F39C7A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A40, &unk_24F96B688);
  swift_allocObject();
  *(v8 + v27) = sub_24F92ADA8();
  v28 = qword_27F39C7A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8, &unk_24F96A5F0);
  swift_allocObject();
  *(v8 + v28) = sub_24F92ADA8();
  v29 = qword_27F39C7B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A48, &qword_24F96B698);
  swift_allocObject();
  *(v8 + v29) = sub_24F92ADA8();
  v30 = qword_27F39C7B8;
  swift_allocObject();
  *(v8 + v30) = sub_24F92ADA8();
  v31 = qword_27F39C7C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
  swift_allocObject();
  *(v8 + v31) = sub_24F92ADA8();
  v32 = qword_27F39C7C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0, &unk_24F989C70);
  swift_allocObject();
  *(v8 + v32) = sub_24F92ADA8();
  v33 = qword_27F22F1E0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8, &unk_24F96A610);
  v35 = *(*(v34 - 8) + 56);
  v35(v8 + v33, 1, 1, v34);
  v35(v8 + qword_27F22F1E8, 1, 1, v34);
  *(v8 + 16) = v82;
  sub_24E911D90(v77, v8 + qword_27F39C7D0);
  v36 = *v21;
  v37 = v21[1];
  *v21 = 0;
  v21[1] = 0;
  sub_24E824448(v36, v37);
  v38 = *v23;
  v39 = v23[1];
  *v23 = 0;
  v23[1] = 0;
  v40 = v76;
  sub_24E824448(v38, v39);
  if (v40)
  {
    v41 = swift_allocObject();
    *(v41 + 16) = v40;
    v42 = sub_24EC02BCC;
  }

  else
  {
    v42 = 0;
    v41 = 0;
  }

  v44 = *v22;
  v43 = v22[1];
  *v22 = v42;
  v22[1] = v41;
  sub_24E824448(v44, v43);
  v45 = *v24;
  v46 = v24[1];
  *v24 = 0;
  v24[1] = 0;
  sub_24E824448(v45, v46);
  v47 = *v25;
  v48 = v25[1];
  *v25 = 0;
  v25[1] = 0;
  sub_24E824448(v47, v48);
  v49 = v80;
  *(v8 + qword_27F22F1F0) = v79;
  *(v8 + qword_27F39C7D8) = v49;
  v50 = swift_allocObject();
  *(v50 + 16) = v40;
  v51 = swift_allocObject();
  swift_weakInit();
  v52 = swift_allocObject();
  *(v52 + 16) = sub_24EC02BD0;
  *(v52 + 24) = v51;
  v53 = swift_allocObject();
  *(v53 + 16) = sub_24EC02BC0;
  *(v53 + 24) = v52;
  v54 = (v8 + qword_27F22F1A8);
  v55 = *(v8 + qword_27F22F1A8);
  v56 = *(v8 + qword_27F22F1A8 + 8);
  *v54 = sub_24EC02BFC;
  v54[1] = v53;

  sub_24E824448(v55, v56);
  v57 = swift_allocObject();
  *(v57 + 16) = sub_24EC02BD4;
  *(v57 + 24) = v50;
  v58 = swift_allocObject();
  *(v58 + 16) = sub_24EC02BC4;
  *(v58 + 24) = v57;
  v59 = (v8 + qword_27F22F1B0);
  v60 = *(v8 + qword_27F22F1B0);
  v61 = *(v8 + qword_27F22F1B0 + 8);
  *v59 = sub_24EC02BC8;
  v59[1] = v58;

  sub_24E824448(v60, v61);
  v62 = (v8 + qword_27F22F1B8);
  v64 = *(v8 + qword_27F22F1B8);
  v63 = *(v8 + qword_27F22F1B8 + 8);
  if (v64)
  {
    v65 = swift_allocObject();
    *(v65 + 16) = v64;
    *(v65 + 24) = v63;
    v66 = swift_allocObject();
    *(v66 + 16) = sub_24EC02B74;
    *(v66 + 24) = v65;
    v67 = sub_24EC02C00;
  }

  else
  {
    v67 = 0;
    v66 = *(v8 + qword_27F22F1B8 + 8);
  }

  *v62 = v67;
  v62[1] = v66;
  sub_24E5FCA4C(v64, v63);
  sub_24E824448(v64, v63);
  v68 = (v8 + qword_27F22F1C8);
  v70 = *(v8 + qword_27F22F1C8);
  v69 = *(v8 + qword_27F22F1C8 + 8);
  if (v70)
  {
    v71 = swift_allocObject();
    *(v71 + 16) = v70;
    *(v71 + 24) = v69;
    v72 = swift_allocObject();
    *(v72 + 16) = sub_24EC02BC0;
    *(v72 + 24) = v71;
    v73 = sub_24EC02BFC;
  }

  else
  {
    v73 = 0;
    v72 = *(v8 + qword_27F22F1C8 + 8);
  }

  *v68 = v73;
  v68[1] = v72;
  sub_24E5FCA4C(v70, v69);
  sub_24E824448(v70, v69);

  sub_24E601704(v81, &qword_27F228530, &unk_24F93C6E0);
  return v8;
}

uint64_t sub_24EC01448(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v21 - v4;
  v6 = sub_24F91F4A8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v21 - v11;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  v14 = Strong;
  sub_24E99091C(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {

    sub_24E601704(v5, &qword_27F228530, &unk_24F93C6E0);
LABEL_4:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A60, &qword_24F96B6A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A68, &qword_24F96B6A8);
    sub_24E602068(&qword_27F222A70, &qword_27F222A68, &qword_24F96B6A8, &protocol conformance descriptor for DiffablePageContentPresenter<A>.FetchError);
    swift_allocError();
    *v15 = 0;
    return sub_24F92A978();
  }

  v17 = *(v7 + 32);
  v17(v12, v5, v6);
  sub_24EC017DC();
  (*(v7 + 16))(v9, v12, v6);
  v18 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v14;
  v17((v19 + v18), v9, v6);
  v21[3] = sub_24F929638();
  v21[4] = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v21);

  sub_24F929628();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A60, &qword_24F96B6A0);
  sub_24E602068(&qword_27F22B5F0, &qword_27F222A60, &qword_24F96B6A0, MEMORY[0x277D224B8]);
  v20 = sub_24F92A9B8();

  (*(v7 + 8))(v12, v6);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return v20;
}

uint64_t sub_24EC017DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v15 - v3;
  v5 = (v0 + qword_27F22B5D0);
  v6 = *(v0 + qword_27F22B5D0 + 8);
  if (v6)
  {
    v8 = v5[2];
    v7 = v5[3];
    v9 = *v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B5F8, &qword_24F98BB28);
    *&v15 = v9;
    *(&v15 + 1) = v6;
    *&v16 = v8;
    *(&v16 + 1) = v7;

    return sub_24F92A988();
  }

  if (!*(v0 + qword_27F22B5D8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B5F8, &qword_24F98BB28);
    v15 = 0u;
    v16 = 0u;
    return sub_24F92A988();
  }

  v11 = sub_24F45DB90(&unk_2861C0838);
  sub_24EBDFF44(v11);

  sub_24E99091C(v0 + qword_27F39C7D0, v4);
  v12 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v13 = swift_allocObject();
  sub_24E911D90(v4, v13 + v12);
  *(&v16 + 1) = sub_24F929638();
  v17 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(&v15);
  sub_24F929628();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B600, &unk_24F98BB30);
  v14 = sub_24F92A938();

  __swift_destroy_boxed_opaque_existential_1(&v15);
  return v14;
}

uint64_t sub_24EC01A2C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v5 = sub_24F91F4A8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MSOPageIntent(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[1];
  v26 = *a1;
  v13 = a1[2];
  v23 = a1[3];
  type metadata accessor for JSIntentDispatcher();
  v25 = a2;
  v14 = *(a2 + 16);
  sub_24F928FD8();
  sub_24F92A758();
  v24 = v27[0];
  (*(v6 + 16))(v8, v22, v5);
  if (v12)
  {

    v15 = v13;
    v16 = v26;
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  strcpy(v11, "MSOPageIntent");
  *(v11 + 7) = -4864;
  (*(v6 + 32))(&v11[v9[5]], v8, v5);
  v17 = &v11[v9[6]];
  *v17 = v16;
  *(v17 + 1) = v12;
  *&v11[v9[7]] = v15;
  sub_24EB47FE0(v11, v14, "GameStoreKit/MSODiffablePageContentPresenter.swift", 50, 2);
  v18 = swift_allocObject();
  v19 = v26;
  v18[2] = v25;
  v18[3] = v19;
  v18[4] = v12;
  v18[5] = v13;
  v18[6] = v23;
  v27[3] = sub_24F929638();
  v27[4] = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v27);

  sub_24EBDFD34(v19, v12);
  sub_24F929628();
  type metadata accessor for GenericPage(0);
  v20 = sub_24F92A938();

  sub_24EC02978(v11);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return v20;
}

uint64_t sub_24EC01D20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v30 = a6;
  v31 = a3;
  v32 = a5;
  v33 = a7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FAD8, &qword_24F961870);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v30 - v14;
  v16 = sub_24F91F4A8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  if (a4)
  {
    sub_24E99091C(a2 + qword_27F39C7D0, v15);
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      sub_24E601704(v15, &qword_27F228530, &unk_24F93C6E0);
    }

    else
    {
      (*(v17 + 32))(v19, v15, v16);

      v21 = v30;

      v36 = sub_24F91F398();
      v37 = v22;
      v34 = v31;
      v35 = a4;
      v23 = sub_24F91F7C8();
      (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
      sub_24E600AEC();

      sub_24F92C5B8();
      v25 = v24;
      sub_24E601704(v12, &qword_27F21FAD8, &qword_24F961870);
      (*(v17 + 8))(v19, v16);

      if ((v25 & 1) == 0)
      {
        v27 = *(v21 + OBJC_IVAR____TtC12GameStoreKit15MSOProviderData_roomUber);

        sub_24EBDFDB8(v31, a4, v32, v21);
        goto LABEL_7;
      }

      sub_24EBDFDB8(v31, a4, v32, v21);
    }
  }

  v26 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
  swift_beginAccess();
  v27 = *(v20 + v26);

LABEL_7:
  v28 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
  swift_beginAccess();
  *(v20 + v28) = v27;

  *v33 = v20;
}

void sub_24EC020C0(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FAD8, &qword_24F961870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v25 - v10;
  v12 = sub_24F91F4A8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[1];
  if (v16)
  {
    v17 = *a1;
    v18 = a1[2];
    v19 = a1[3];
    v25 = v17;
    v26 = v18;
    sub_24E99091C(a2, v11);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_24E601704(v11, &qword_27F228530, &unk_24F93C6E0);
    }

    else
    {
      (*(v13 + 32))(v15, v11, v12);

      v29 = sub_24F91F398();
      v30 = v20;
      v27 = v25;
      v28 = v16;
      v21 = sub_24F91F7C8();
      (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
      sub_24E600AEC();

      sub_24F92C5B8();
      v23 = v22;
      sub_24E601704(v8, &qword_27F21FAD8, &qword_24F961870);
      (*(v13 + 8))(v15, v12);

      if ((v23 & 1) == 0)
      {
        v24 = v26;
        *a3 = v25;
        a3[1] = v16;
        a3[2] = v24;
        a3[3] = v19;
        return;
      }

      sub_24EBDFDB8(v25, v16, v26, v19);
    }
  }

  *a3 = 0u;
  *(a3 + 1) = 0u;
}

double sub_24EC02404()
{
  sub_24EBDFDB8(*(v0 + qword_27F22B5D0), *(v0 + qword_27F22B5D0 + 8), *(v0 + qword_27F22B5D0 + 16), *(v0 + qword_27F22B5D0 + 24));

  return result;
}

uint64_t MSODiffablePageContentPresenter.deinit()
{
  v0 = _s12GameStoreKit39TopChartDiffableSegmentContentPresenterCfd_0();
  sub_24EBDFDB8(*(v0 + qword_27F22B5D0), *(v0 + qword_27F22B5D0 + 8), *(v0 + qword_27F22B5D0 + 16), *(v0 + qword_27F22B5D0 + 24));

  return v0;
}

uint64_t MSODiffablePageContentPresenter.__deallocating_deinit()
{
  v0 = _s12GameStoreKit39TopChartDiffableSegmentContentPresenterCfd_0();
  v1 = *(v0 + qword_27F22B5D0);
  v2 = *(v0 + qword_27F22B5D0 + 8);
  v3 = *(v0 + qword_27F22B5D0 + 16);
  v4 = *(v0 + qword_27F22B5D0 + 24);

  sub_24EBDFDB8(v1, v2, v3, v4);

  return swift_deallocClassInstance();
}

void sub_24EC02558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_24E824448(a10, a11);
  sub_24E824448(a6, a7);
  sub_24E824448(a4, a5);
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_24EC025C0@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_24EC025F0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_24EC02620@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  return result;
}

uint64_t sub_24EC02654()
{

  return swift_deallocObject();
}

uint64_t sub_24EC0268C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24EC026CC()
{

  return swift_deallocObject();
}

uint64_t type metadata accessor for MSODiffablePageContentPresenter(uint64_t a1)
{
  result = qword_27F22B5E0;
  if (!qword_27F22B5E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EC027C8()
{
  v1 = sub_24F91F4A8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24EC0288C(uint64_t *a1)
{
  v3 = *(sub_24F91F4A8() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_24EC01A2C(a1, v4, v5);
}

uint64_t sub_24EC02900()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24EC02978(uint64_t a1)
{
  v2 = type metadata accessor for MSOPageIntent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EC029D4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_24F91F4A8();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

__n128 SearchResultsPageIntent.init(with:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0xD000000000000017;
  *(a2 + 8) = 0x800000024F98BB20;
  v2 = *(a1 + 144);
  *(a2 + 144) = *(a1 + 128);
  *(a2 + 160) = v2;
  *(a2 + 176) = *(a1 + 160);
  v3 = *(a1 + 80);
  *(a2 + 80) = *(a1 + 64);
  *(a2 + 96) = v3;
  v4 = *(a1 + 112);
  *(a2 + 112) = *(a1 + 96);
  *(a2 + 128) = v4;
  v5 = *(a1 + 16);
  *(a2 + 16) = *a1;
  *(a2 + 32) = v5;
  result = *(a1 + 48);
  *(a2 + 48) = *(a1 + 32);
  *(a2 + 64) = result;
  return result;
}

uint64_t SearchResultsPageIntent.kind.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SearchResultsPageIntent.requestDescriptor.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[8];
  v3 = v1[10];
  v25 = v1[9];
  v26 = v3;
  v4 = v1[10];
  v27 = v1[11];
  v5 = v1[4];
  v6 = v1[6];
  v21 = v1[5];
  v7 = v21;
  v22 = v6;
  v8 = v1[6];
  v9 = v1[8];
  v23 = v1[7];
  v10 = v23;
  v24 = v9;
  v11 = v1[2];
  v18[0] = v1[1];
  v18[1] = v11;
  v12 = v1[4];
  v14 = v1[1];
  v13 = v1[2];
  v19 = v1[3];
  v15 = v19;
  v20 = v12;
  a1[8] = v25;
  a1[9] = v4;
  a1[10] = v1[11];
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v10;
  a1[7] = v2;
  *a1 = v14;
  a1[1] = v13;
  a1[2] = v15;
  a1[3] = v5;
  return sub_24E7B6680(v18, &v17);
}

JSValue __swiftcall SearchResultsPageIntent.makeValue(in:)(JSContext in)
{
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v56 = *(v1 + 81);
  v55 = *(v1 + 82);
  v49 = *(v1 + 96);
  v50 = *(v1 + 56);
  v53 = *(v1 + 104);
  v54 = *(v1 + 88);
  v48 = *(v1 + 168);
  v51 = *(v1 + 176);
  v52 = *(v1 + 112);
  v8 = *(v1 + 184);
  v9 = objc_opt_self();
  result.super.isa = [v9 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_44;
  }

  isa = result.super.isa;
  v57 = v4;
  v58 = v3;

  v12 = [v9 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v12)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  sub_24F92C328();
  v57 = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221930, &unk_24F9674B0);
  v13 = [v9 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v13)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  sub_24F92C328();
  if (v7 <= 1)
  {
    if (v7)
    {
      v14 = 0xE500000000000000;
      v15 = 0x79726F7473;
    }

    else
    {
      v14 = 0xE900000000000072;
      v15 = 0x65706F6C65766564;
    }
  }

  else if (v7 == 2)
  {
    v14 = 0xE600000000000000;
    v15 = 0x656461637261;
  }

  else
  {
    if (v7 != 3)
    {
      v16 = in.super.isa;
      v17 = 0;
      goto LABEL_14;
    }

    v14 = 0xE500000000000000;
    v15 = 0x6863746177;
  }

  v57 = v15;
  v58 = v14;
  v18 = in.super.isa;
  v17 = sub_24F92CDE8();
  sub_24EB715C4(&v57);
LABEL_14:
  v19 = [v9 valueWithObject:v17 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v19)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  sub_24F92C328();
  if (v8)
  {
    v57 = v8;
    v20 = in.super.isa;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20, &qword_24F9482B0);
    v21 = sub_24F92CDE8();
    sub_24E601704(&v57, &qword_27F227A20, &qword_24F9482B0);
  }

  else
  {
    v22 = in.super.isa;
    v21 = 0;
  }

  v23 = [v9 valueWithObject:v21 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v23)
  {
    goto LABEL_47;
  }

  sub_24F92C328();
  v57 = SearchOrigin.rawValue.getter();
  v58 = v24;
  v25 = [v9 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v25)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  sub_24F92C328();
  if (v5)
  {
    v57 = v50;
    v58 = v5;
    v26 = in.super.isa;

    v27 = sub_24F92CDE8();
    sub_24EB715C4(&v57);
  }

  else
  {
    v28 = in.super.isa;
    v27 = 0;
  }

  v29 = [v9 valueWithObject:v27 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v29)
  {
    goto LABEL_49;
  }

  sub_24F92C328();
  LOBYTE(v57) = v56;
  v30 = [v9 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v30)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  sub_24F92C328();
  LOBYTE(v57) = v55;
  v31 = [v9 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v31)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  sub_24F92C328();
  v32 = v54;
  if (v54)
  {
    v57 = v54;
    v33 = in.super.isa;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
    v32 = sub_24F92CDE8();
    sub_24E601704(&v57, &unk_27F2285F0, &qword_24F93B070);
  }

  else
  {
    v34 = in.super.isa;
  }

  v35 = [v9 valueWithObject:v32 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v35)
  {
    goto LABEL_52;
  }

  sub_24F92C328();
  v36 = v53;
  if (v53)
  {
    v57 = v49;
    v58 = v53;
    v37 = in.super.isa;

    v36 = sub_24F92CDE8();
    sub_24EB715C4(&v57);
  }

  else
  {
    v38 = in.super.isa;
  }

  v39 = [v9 valueWithObject:v36 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v39)
  {
    goto LABEL_53;
  }

  sub_24F92C328();
  v40 = v52;
  if (v52)
  {
    v57 = v52;
    v41 = in.super.isa;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
    v40 = sub_24F92CDE8();
    sub_24E601704(&v57, &unk_27F2285F0, &qword_24F93B070);
  }

  else
  {
    v42 = in.super.isa;
  }

  v43 = [v9 valueWithObject:v40 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v43)
  {
    goto LABEL_54;
  }

  sub_24F92C328();
  v44 = v51;
  if (v51)
  {
    v57 = v48;
    v58 = v51;
    v45 = in.super.isa;

    v44 = sub_24F92CDE8();
    sub_24EB715C4(&v57);
  }

  else
  {
    v46 = in.super.isa;
  }

  v47 = [v9 valueWithObject:v44 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (v47)
  {
    sub_24F92C328();
    return isa;
  }

LABEL_55:
  __break(1u);
  return result;
}

unint64_t sub_24EC0350C()
{
  result = qword_27F22B608;
  if (!qword_27F22B608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B608);
  }

  return result;
}

unint64_t sub_24EC03568()
{
  result = qword_27F22B610;
  if (!qword_27F22B610)
  {
    type metadata accessor for SearchResultsPage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B610);
  }

  return result;
}

uint64_t sub_24EC035C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
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

uint64_t sub_24EC0360C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t FastImpressionsV5Tracker.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*FastImpressionsV5Tracker.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_24EC037BC;
}

void sub_24EC037BC(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t FastImpressionsV5Tracker.__allocating_init(mainQueueName:fastQueueName:impressionableThreshold:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_24F929EB8();
  swift_allocObject();
  *(v6 + 40) = sub_24F929E98();
  swift_allocObject();
  *(v6 + 48) = sub_24F929E98();
  *(v6 + 32) = a5;
  return v6;
}

uint64_t FastImpressionsV5Tracker.init(mainQueueName:fastQueueName:impressionableThreshold:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_24F929EB8();
  swift_allocObject();
  *(v5 + 40) = sub_24F929E98();
  swift_allocObject();
  *(v5 + 48) = sub_24F929E98();
  *(v5 + 32) = a5;
  return v5;
}

uint64_t FastImpressionsV5Tracker.elementDidEnterView(_:on:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = sub_24F9294C8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F9295D8();
  v9 = sub_24F929478();
  result = (*(v6 + 8))(v8, v5);
  if (v9 != 2 && (v9 & 1) != 0)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v11 = *(v4 + 24);
      sub_24F929E68();
      ObjectType = swift_getObjectType();
      (*(v11 + 8))(ObjectType, v11);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t FastImpressionsV5Tracker.elementDidLeaveView(_:on:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_24F9294C8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F9295D8();
  v7 = sub_24F929478();
  result = (*(v4 + 8))(v6, v3);
  if (v7 != 2 && (v7 & 1) != 0)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      swift_unknownObjectRelease();
      return sub_24F929E78();
    }
  }

  return result;
}

uint64_t FastImpressionsV5Tracker.deinit()
{
  sub_24E883630(v0 + 16);

  return v0;
}

uint64_t FastImpressionsV5Tracker.__deallocating_deinit()
{
  sub_24E883630(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_24EC03F28@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24EC03F78(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t RibbonBar.__allocating_init(id:items:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  sub_24E60169C(a1, &v17, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v18 + 1))
  {
    sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
    v20 = v17;
    v21 = v18;
    v22 = v19;
  }

  else
  {
    sub_24F91F6A8();
    v11 = sub_24F91F668();
    v13 = v12;
    (*(v7 + 8))(v9, v6);
    v16[1] = v11;
    v16[2] = v13;
    sub_24F92C7F8();
    sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
    sub_24E601704(&v17, &qword_27F235830, &qword_24F93B8C0);
  }

  v14 = v21;
  *(v10 + 24) = v20;
  *(v10 + 40) = v14;
  *(v10 + 56) = v22;
  *(v10 + 16) = a2;
  sub_24E65E0D4(a3, v10 + OBJC_IVAR____TtC12GameStoreKit9RibbonBar_impressionMetrics);
  return v10;
}

uint64_t RibbonBar.init(id:items:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a1, &v18, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v19 + 1))
  {
    sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
    v21 = v18;
    v22 = v19;
    v23 = v20;
  }

  else
  {
    sub_24F91F6A8();
    v12 = sub_24F91F668();
    v14 = v13;
    (*(v9 + 8))(v11, v8);
    v17[1] = v12;
    v17[2] = v14;
    sub_24F92C7F8();
    sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
    sub_24E601704(&v18, &qword_27F235830, &qword_24F93B8C0);
  }

  v15 = v22;
  *(v4 + 24) = v21;
  *(v4 + 40) = v15;
  *(v4 + 56) = v23;
  *(v4 + 16) = a2;
  sub_24E65E0D4(a3, v4 + OBJC_IVAR____TtC12GameStoreKit9RibbonBar_impressionMetrics);
  return v4;
}

uint64_t RibbonBar.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v62 = a1;
  v3 = sub_24F91F6B8();
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x28223BE20](v3);
  v46 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F9285B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v58 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v46 - v9;
  v11 = sub_24F928388();
  v52 = *(v11 - 8);
  v53 = v11;
  MEMORY[0x28223BE20](v11);
  v49 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v14 - 8);
  v50 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v46 - v17;
  sub_24F929608();
  sub_24F928398();
  v54 = v6;
  v19 = *(v6 + 16);
  v51 = v10;
  v19(v10, a2, v5);
  v55 = v18;
  sub_24F929548();
  v20 = v58;
  v57 = a2;
  v21 = v5;
  v19(v58, a2, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B618, &qword_24F98BE00);
  sub_24F928398();
  v22 = v20;
  v19(v51, v20, v5);
  sub_24EC04A20();
  sub_24F929548();
  v23 = v61[0];
  if (v61[0])
  {
    v25 = v52;
    v24 = v53;
    v26 = v54;
    v27 = v49;
    sub_24F928398();
    v28 = sub_24F928348();
    if (v29)
    {
      v59 = v28;
      v60 = v29;
    }

    else
    {
      v34 = v46;
      sub_24F91F6A8();
      v35 = sub_24F91F668();
      v37 = v36;
      (*(v47 + 8))(v34, v48);
      v59 = v35;
      v60 = v37;
    }

    sub_24F92C7F8();
    v38 = *(v25 + 8);
    v39 = v27;
    v40 = v24;
    v38(v39, v24);
    v41 = v26;
    v42 = v55;
    v43 = v50;
    sub_24E60169C(v55, v50, &qword_27F213E68, &unk_24F93BC80);
    v33 = swift_allocObject();
    RibbonBar.init(id:items:impressionMetrics:)(v61, v23, v43);
    v44 = *(v41 + 8);
    v44(v57, v21);
    v38(v62, v40);
    v44(v58, v21);
    sub_24E601704(v42, &qword_27F213E68, &unk_24F93BC80);
  }

  else
  {
    v30 = sub_24F92AC38();
    sub_24EC04BE8(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v31 = 0x736D657469;
    v31[1] = 0xE500000000000000;
    v31[2] = v56;
    (*(*(v30 - 8) + 104))(v31, *MEMORY[0x277D22530], v30);
    swift_willThrow();
    v33 = v54 + 8;
    v32 = *(v54 + 8);
    v32(v57, v5);
    (*(v52 + 8))(v62, v53);
    v32(v22, v5);
    sub_24E601704(v55, &qword_27F213E68, &unk_24F93BC80);
  }

  return v33;
}

unint64_t sub_24EC04A20()
{
  result = qword_27F22B620;
  if (!qword_27F22B620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22B618, &qword_24F98BE00);
    sub_24EC04BE8(&qword_27F221030, type metadata accessor for RibbonBarItem, &protocol conformance descriptor for RibbonBarItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B620);
  }

  return result;
}

uint64_t RibbonBar.deinit()
{

  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit9RibbonBar_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  return v0;
}

uint64_t RibbonBar.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit9RibbonBar_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return swift_deallocClassInstance();
}

uint64_t sub_24EC04BE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for RibbonBar(uint64_t a1)
{
  result = qword_27F22B630;
  if (!qword_27F22B630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EC04C7C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = RibbonBar.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void sub_24EC04CEC(uint64_t a1)
{
  sub_24E61C938(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24EC04DFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_24E635714;

  return sub_24EC04EB4(a2, a3);
}

uint64_t sub_24EC04EB4(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8D0, &qword_24F951650);
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v4 = sub_24F928AE8();
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580, &unk_24F965710);
  v2[20] = v5;
  v2[21] = *(v5 - 8);
  v2[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  v2[23] = swift_task_alloc();
  v6 = sub_24F91F648();
  v2[24] = v6;
  v2[25] = *(v6 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EC050E4, 0, 0);
}

uint64_t sub_24EC050E4()
{
  v43 = v0;
  v1 = objc_opt_self();
  *(v0 + 224) = v1;
  v2 = [v1 standardUserDefaults];
  v3 = sub_24F006648(v2);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    sub_24F006B88(v5);

    if (qword_27F211430 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v6 = sub_24F9220D8();
  __swift_project_value_buffer(v6, qword_27F39E8E0);
  v7 = sub_24F9220B8();
  v8 = sub_24F92BD98();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    v10 = [v1 standardUserDefaults];
    v11 = sub_24F006648(v10);

    *(v9 + 4) = v11;
    _os_log_impl(&dword_24E5DD000, v7, v8, "Increased the friend requests page visit count to %ld", v9, 0xCu);
    MEMORY[0x2530542D0](v9, -1, -1);
  }

  v13 = *(v0 + 208);
  v12 = *(v0 + 216);
  v14 = *(v0 + 192);
  v15 = *(v0 + 200);
  v16 = *(v0 + 184);

  sub_24F91F638();
  v17 = [v1 standardUserDefaults];
  v18 = *(v15 + 16);
  v18(v16, v12, v14);
  (*(v15 + 56))(v16, 0, 1, v14);
  sub_24F006C88(v16);

  v18(v13, v12, v14);
  v19 = sub_24F9220B8();
  v20 = sub_24F92BD98();
  v21 = os_log_type_enabled(v19, v20);
  v23 = *(v0 + 200);
  v22 = *(v0 + 208);
  v24 = *(v0 + 192);
  if (v21)
  {
    v25 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = v41;
    *v25 = 136315138;
    sub_24EC05C80();
    v26 = sub_24F92CD88();
    v28 = v27;
    v29 = *(v23 + 8);
    v29(v22, v24);
    v30 = sub_24E7620D4(v26, v28, &v42);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_24E5DD000, v19, v20, "Last friend requests page visit is %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x2530542D0](v41, -1, -1);
    MEMORY[0x2530542D0](v25, -1, -1);
  }

  else
  {

    v29 = *(v23 + 8);
    v29(v22, v24);
  }

  *(v0 + 232) = v29;
  sub_24EC05C10(*(v0 + 96), v0 + 56);
  if (*(v0 + 80))
  {
    sub_24E612C80((v0 + 56), v0 + 16);
    v31 = swift_task_alloc();
    *(v0 + 240) = v31;
    *v31 = v0;
    v31[1] = sub_24EC05584;
    v32 = *(v0 + 176);
    v33 = *(v0 + 160);

    return MEMORY[0x28217F228](v32, v33, v33);
  }

  else
  {
    sub_24EA418B4(v0 + 56);
    v34 = *(v0 + 232);
    v35 = *(v0 + 216);
    v36 = *(v0 + 192);
    v37 = [*(v0 + 224) standardUserDefaults];
    v38 = sub_24F006648(v37);

    v34(v35, v36);

    v39 = *(v0 + 8);

    return v39(v38, 0);
  }
}

uint64_t sub_24EC05584()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_24EC05A20;
  }

  else
  {
    v2 = sub_24EC05698;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EC05698()
{
  (*(v0[15] + 104))(v0[16], *MEMORY[0x277D21E18], v0[14]);
  v1 = swift_task_alloc();
  v0[32] = v1;
  *v1 = v0;
  v1[1] = sub_24EC05764;
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[16];
  v5 = v0[13];

  return MEMORY[0x28217F468](v2, v0 + 2, v4, v5, v3);
}

uint64_t sub_24EC05764()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 112);
  *(*v1 + 264) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_24EC05B0C;
  }

  else
  {
    (*(v2[18] + 8))(v2[19], v2[17]);
    v6 = sub_24EC058F4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24EC058F4()
{
  (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = [*(v0 + 224) standardUserDefaults];
  v5 = sub_24F006648(v4);

  v1(v2, v3);

  v6 = *(v0 + 8);

  return v6(v5, 0);
}

uint64_t sub_24EC05A20()
{
  v1 = v0[29];
  v2 = v0[27];
  v3 = v0[24];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24EC05B0C()
{
  (*(v0[21] + 8))(v0[22], v0[20]);
  v1 = v0[29];
  v2 = v0[27];
  v3 = v0[24];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24EC05C10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EC05C80()
{
  result = qword_27F229EE8;
  if (!qword_27F229EE8)
  {
    sub_24F91F648();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229EE8);
  }

  return result;
}

id WeakNotificationObserver.__allocating_init(forName:object:scheduler:block:center:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = a3[3];
  v14 = a3[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a3, v13);
  v16 = sub_24EC06680(a1, a2, v15, a4, a5, a6, v6, v13, v14);

  __swift_destroy_boxed_opaque_existential_1(a3);
  return v16;
}

id WeakNotificationObserver.init(forName:object:scheduler:block:center:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v14 = a3[3];
  v15 = a3[4];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a3, v14);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v17);
  v21 = sub_24EC06420(a1, a2, v19, a4, a5, a6, v7, v14, v15);

  __swift_destroy_boxed_opaque_existential_1(a3);
  return v21;
}

id WeakNotificationObserver.__deallocating_deinit()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong removeObserver_];
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for WeakNotificationObserver();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_24EC06148()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong removeObserver_];
  }
}

id WeakNotificationObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_24EC06420(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, char *a7, uint64_t a8, uint64_t a9)
{
  v36[3] = a8;
  v36[4] = a9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
  (*(*(a8 - 8) + 32))(boxed_opaque_existential_1, a3, a8);
  swift_unknownObjectWeakInit();
  sub_24E615E00(v36, &a7[OBJC_IVAR____TtC12GameStoreKit24WeakNotificationObserver_scheduler]);
  v18 = &a7[OBJC_IVAR____TtC12GameStoreKit24WeakNotificationObserver_block];
  *v18 = a4;
  *(v18 + 1) = a5;
  swift_unknownObjectWeakAssign();
  v35.receiver = a7;
  v35.super_class = type metadata accessor for WeakNotificationObserver();

  v19 = objc_msgSendSuper2(&v35, sel_init);
  sub_24E94E17C(a2, v33);
  v20 = v34;
  if (v34)
  {
    v21 = __swift_project_boxed_opaque_existential_1(v33, v34);
    v22 = *(v20 - 8);
    v23 = MEMORY[0x28223BE20](v21);
    v25 = &v33[-1] - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v22 + 16))(v25, v23);
    v26 = v19;
    v27 = a1;
    v28 = sub_24F92CDE8();
    (*(v22 + 8))(v25, v20);
    __swift_destroy_boxed_opaque_existential_1(v33);
  }

  else
  {
    v29 = v19;
    v30 = a1;
    v28 = 0;
  }

  [a6 addObserver:v19 selector:sel_didReceiveWithNotification_ name:a1 object:v28];

  swift_unknownObjectRelease();
  sub_24E857CC8(a2);
  __swift_destroy_boxed_opaque_existential_1(v36);
  return v19;
}