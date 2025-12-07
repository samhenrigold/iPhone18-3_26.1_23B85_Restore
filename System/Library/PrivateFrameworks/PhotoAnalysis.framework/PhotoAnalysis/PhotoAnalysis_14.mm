uint64_t sub_22FB6C804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v6 + 56) = a4;
  *(v6 + 64) = a5;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  *(v6 + 32) = a6;
  *(v6 + 24) = a1;
  v7 = sub_22FCC8CF4();
  *(v6 + 72) = v7;
  *(v6 + 80) = *(v7 - 8);
  *(v6 + 88) = swift_task_alloc();
  v8 = sub_22FCC8684();
  *(v6 + 96) = v8;
  v9 = *(v8 - 8);
  *(v6 + 104) = v9;
  *(v6 + 112) = *(v9 + 64);
  *(v6 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  *(v6 + 128) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB6C96C, 0, 0);
}

uint64_t sub_22FB6C96C(uint64_t a1)
{
  v2 = sub_22FCC8664();
  v3 = sub_22FCC8F34();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[4];
    v5 = swift_slowAlloc();
    *v5 = 134349056;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_22FA28000, v2, v3, "Executing task with timeout %{public}fs", v5, 0xCu);
    MEMORY[0x23190A000](v5, -1, -1);
  }

  v6 = v1[16];
  v7 = v1[13];
  v28 = v1[15];
  v29 = v1[14];
  v8 = v1[7];
  v9 = v1[8];
  v26 = v1[6];
  v27 = v1[12];
  v10 = v1[4];

  type metadata accessor for PromptSuggestionExecutionUtils.InternalTimeout();
  v11 = swift_allocObject();
  v1[17] = v11;
  swift_defaultActor_initialize();
  *(v11 + 112) = 0;
  v12 = sub_22FCC8D14();
  v13 = *(*(v12 - 8) + 56);
  v13(v6, 1, 1, v12);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v8;
  v14[5] = v9;

  v25 = v6;
  v15 = sub_22FB22A48(0, 0, v6, &unk_22FCD1BC0, v14);
  v1[18] = v15;
  v13(v6, 1, 1, v12);
  (*(v7 + 16))(v28, v26, v27);
  v16 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = v10;
  *(v17 + 5) = v11;
  (*(v7 + 32))(&v17[v16], v28, v27);
  *&v17[(v29 + v16 + 7) & 0xFFFFFFFFFFFFFFF8] = v15;

  v18 = sub_22FB22A48(0, 0, v25, &unk_22FCD1BC8, v17);
  v1[19] = v18;
  v19 = swift_task_alloc();
  v1[20] = v19;
  v19[2] = v15;
  v19[3] = v18;
  v19[4] = v26;
  v20 = swift_task_alloc();
  v1[21] = v20;
  *(v20 + 16) = v15;
  *(v20 + 24) = v18;
  v21 = swift_task_alloc();
  v1[22] = v21;
  *v21 = v1;
  v21[1] = sub_22FB6CCE4;
  v22 = v1[3];
  v23 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200830](v22, &unk_22FCD1BD0, v19, sub_22FA4F83C, v20, 0, 0, v23);
}

uint64_t sub_22FB6CCE4()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_22FB6CE08;
  }

  else
  {

    v2 = sub_22FB79F50;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FB6CE08()
{
  v1 = *(v0 + 184);

  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 136);

    return MEMORY[0x2822009F8](sub_22FB6CF60, v3, 0);
  }

  else
  {

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_22FB6CF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v6 + 56) = a4;
  *(v6 + 64) = a5;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  *(v6 + 32) = a6;
  *(v6 + 24) = a1;
  v7 = sub_22FCC8CF4();
  *(v6 + 72) = v7;
  *(v6 + 80) = *(v7 - 8);
  *(v6 + 88) = swift_task_alloc();
  v8 = sub_22FCC8684();
  *(v6 + 96) = v8;
  v9 = *(v8 - 8);
  *(v6 + 104) = v9;
  *(v6 + 112) = *(v9 + 64);
  *(v6 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  *(v6 + 128) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB6D0F0, 0, 0);
}

uint64_t sub_22FB6D0F0(uint64_t a1)
{
  v2 = sub_22FCC8664();
  v3 = sub_22FCC8F34();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[4];
    v5 = swift_slowAlloc();
    *v5 = 134349056;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_22FA28000, v2, v3, "Executing task with timeout %{public}fs", v5, 0xCu);
    MEMORY[0x23190A000](v5, -1, -1);
  }

  v6 = v1[16];
  v7 = v1[13];
  v28 = v1[15];
  v29 = v1[14];
  v8 = v1[7];
  v9 = v1[8];
  v26 = v1[6];
  v27 = v1[12];
  v10 = v1[4];

  type metadata accessor for PromptSuggestionExecutionUtils.InternalTimeout();
  v11 = swift_allocObject();
  v1[17] = v11;
  swift_defaultActor_initialize();
  *(v11 + 112) = 0;
  v12 = sub_22FCC8D14();
  v13 = *(*(v12 - 8) + 56);
  v13(v6, 1, 1, v12);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v8;
  v14[5] = v9;

  v25 = v6;
  v15 = sub_22FB22A58(0, 0, v6, &unk_22FCD9C50, v14);
  v1[18] = v15;
  v13(v6, 1, 1, v12);
  (*(v7 + 16))(v28, v26, v27);
  v16 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = v10;
  *(v17 + 5) = v11;
  (*(v7 + 32))(&v17[v16], v28, v27);
  *&v17[(v29 + v16 + 7) & 0xFFFFFFFFFFFFFFF8] = v15;

  v18 = sub_22FB22A48(0, 0, v25, &unk_22FCD9C60, v17);
  v1[19] = v18;
  v19 = swift_task_alloc();
  v1[20] = v19;
  v19[2] = v15;
  v19[3] = v18;
  v19[4] = v26;
  v20 = swift_task_alloc();
  v1[21] = v20;
  *(v20 + 16) = v15;
  *(v20 + 24) = v18;
  v21 = swift_task_alloc();
  v1[22] = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD86C0, &qword_22FCD71A8);
  *v21 = v1;
  v21[1] = sub_22FB6CCE4;
  v23 = v1[3];

  return MEMORY[0x282200830](v23, &unk_22FCD9C70, v19, sub_22FB79D50, v20, 0, 0, v22);
}

uint64_t sub_22FB6D474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v6 + 56) = a4;
  *(v6 + 64) = a5;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  *(v6 + 32) = a6;
  *(v6 + 24) = a1;
  v7 = sub_22FCC8CF4();
  *(v6 + 72) = v7;
  *(v6 + 80) = *(v7 - 8);
  *(v6 + 88) = swift_task_alloc();
  v8 = sub_22FCC8684();
  *(v6 + 96) = v8;
  v9 = *(v8 - 8);
  *(v6 + 104) = v9;
  *(v6 + 112) = *(v9 + 64);
  *(v6 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  *(v6 + 128) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB6D5DC, 0, 0);
}

uint64_t sub_22FB6D5DC(uint64_t a1)
{
  v2 = sub_22FCC8664();
  v3 = sub_22FCC8F34();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[4];
    v5 = swift_slowAlloc();
    *v5 = 134349056;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_22FA28000, v2, v3, "Executing task with timeout %{public}fs", v5, 0xCu);
    MEMORY[0x23190A000](v5, -1, -1);
  }

  v6 = v1[16];
  v7 = v1[13];
  v28 = v1[15];
  v29 = v1[14];
  v8 = v1[7];
  v9 = v1[8];
  v26 = v1[6];
  v27 = v1[12];
  v10 = v1[4];

  type metadata accessor for PromptSuggestionExecutionUtils.InternalTimeout();
  v11 = swift_allocObject();
  v1[17] = v11;
  swift_defaultActor_initialize();
  *(v11 + 112) = 0;
  v12 = sub_22FCC8D14();
  v13 = *(*(v12 - 8) + 56);
  v13(v6, 1, 1, v12);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v8;
  v14[5] = v9;

  v25 = v6;
  v15 = sub_22FB22D18(0, 0, v6, &unk_22FCD9BF0, v14);
  v1[18] = v15;
  v13(v6, 1, 1, v12);
  (*(v7 + 16))(v28, v26, v27);
  v16 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = v10;
  *(v17 + 5) = v11;
  (*(v7 + 32))(&v17[v16], v28, v27);
  *&v17[(v29 + v16 + 7) & 0xFFFFFFFFFFFFFFF8] = v15;

  v18 = sub_22FB22A48(0, 0, v25, &unk_22FCD9C00, v17);
  v1[19] = v18;
  v19 = swift_task_alloc();
  v1[20] = v19;
  v19[2] = v15;
  v19[3] = v18;
  v19[4] = v26;
  v20 = swift_task_alloc();
  v1[21] = v20;
  *(v20 + 16) = v15;
  *(v20 + 24) = v18;
  v21 = swift_task_alloc();
  v1[22] = v21;
  v22 = type metadata accessor for CreativePromptValidationResult(0);
  *v21 = v1;
  v21[1] = sub_22FB6D954;
  v23 = v1[3];

  return MEMORY[0x282200830](v23, &unk_22FCD9C10, v19, sub_22FB79718, v20, 0, 0, v22);
}

uint64_t sub_22FB6D954()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_22FB6DB20;
  }

  else
  {

    v2 = sub_22FB6DA78;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FB6DA78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB6DB20()
{
  v1 = *(v0 + 184);

  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 136);

    return MEMORY[0x2822009F8](sub_22FB6DC78, v3, 0);
  }

  else
  {

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_22FB6DCA0(uint64_t a1)
{
  v3 = *(v1 + 80);
  v2 = *(v1 + 88);
  v4 = *(v1 + 72);
  if (*(v1 + 192) == 1)
  {
    v5 = *(v1 + 40);
    swift_willThrow();

    (*(v3 + 8))(v2, v4);
    v6 = v5;
  }

  else
  {
    sub_22FB79720(&qword_28147AFC0, MEMORY[0x277D85678], MEMORY[0x277D85680]);
    swift_allocError();
    sub_22FCC89B4();
    swift_willThrow();

    (*(v3 + 8))(v2, v4);
  }

  v7 = *(v1 + 8);

  return v7();
}

uint64_t sub_22FB6DE08(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_22FB6DEF0;

  return v7();
}

uint64_t sub_22FB6DEF0()
{
  *(*v1 + 24) = v0;

  if (v0)
  {
    v2 = sub_22FB6E07C;
  }

  else
  {
    v2 = sub_22FB6E004;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FB6E004()
{
  sub_22FCC8DA4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB6E094(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 48) = a1;
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 56) = v5;
  *v5 = v4;
  v5[1] = sub_22FB6E188;

  return v7(v4 + 16);
}

uint64_t sub_22FB6E188()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_22FB6E338;
  }

  else
  {
    v2 = sub_22FB6E29C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FB6E29C()
{
  v1 = *(v0 + 64);
  sub_22FCC8DA4();
  if (v1)
  {
  }

  else
  {
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    v5 = *(v0 + 32);
    *v3 = *(v0 + 16);
    *(v3 + 16) = v5;
    *(v3 + 24) = v4;
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22FB6E350(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a1;
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_22FB6E44C;

  return v8(a1);
}

uint64_t sub_22FB6E44C()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22FB6E580, 0, 0);
  }
}

uint64_t sub_22FB6E580()
{
  v1 = v0[4];
  sub_22FCC8DA4();
  if (v1)
  {
    sub_22FB792E0(v0[2], type metadata accessor for CreativePromptValidationResult);
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_22FB6E61C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 32) = a6;
  *(v7 + 40) = a7;
  *(v7 + 24) = a5;
  *(v7 + 16) = a1;
  v8 = sub_22FCC9464();
  *(v7 + 48) = v8;
  *(v7 + 56) = *(v8 - 8);
  *(v7 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB6E6E4, 0, 0);
}

uint64_t sub_22FB6E6E4(uint64_t a1, __n128 a2)
{
  if (*(v2 + 16) <= 0.0)
  {

    v8 = *(v2 + 8);

    return v8();
  }

  else
  {
    v3 = sub_22FCC98D4();
    v5 = v4;
    sub_22FCC97A4();
    v6 = swift_task_alloc();
    *(v2 + 72) = v6;
    *v6 = v2;
    v6[1] = sub_22FB6E808;

    return sub_22FAD765C(v3, v5, 0, 0, 1);
  }
}

uint64_t sub_22FB6E808()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  *(*v1 + 80) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_22FB79F4C;
    v7 = 0;
  }

  else
  {
    v7 = *(v2 + 24);
    v6 = sub_22FB6E988;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_22FB6E9B0(uint64_t a1)
{
  v2 = sub_22FCC8664();
  v3 = sub_22FCC8F14();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 16);
    v5 = swift_slowAlloc();
    *v5 = 134349056;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_22FA28000, v2, v3, "Executing task timeout after %{public}fs", v5, 0xCu);
    MEMORY[0x23190A000](v5, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
  sub_22FCC8D54();

  v6 = *(v1 + 8);

  return v6();
}

uint64_t sub_22FB6EAD4(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 32) = a6;
  *(v7 + 40) = a7;
  *(v7 + 24) = a5;
  *(v7 + 16) = a1;
  v8 = sub_22FCC9464();
  *(v7 + 48) = v8;
  *(v7 + 56) = *(v8 - 8);
  *(v7 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB6EB9C, 0, 0);
}

uint64_t sub_22FB6EB9C(uint64_t a1, __n128 a2)
{
  if (*(v2 + 16) <= 0.0)
  {

    v8 = *(v2 + 8);

    return v8();
  }

  else
  {
    v3 = sub_22FCC98D4();
    v5 = v4;
    sub_22FCC97A4();
    v6 = swift_task_alloc();
    *(v2 + 72) = v6;
    *v6 = v2;
    v6[1] = sub_22FB6ECC0;

    return sub_22FAD765C(v3, v5, 0, 0, 1);
  }
}

uint64_t sub_22FB6ECC0()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  *(*v1 + 80) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_22FB79F4C;
    v7 = 0;
  }

  else
  {
    v7 = *(v2 + 24);
    v6 = sub_22FB6EE40;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_22FB6EE68(uint64_t a1)
{
  v2 = sub_22FCC8664();
  v3 = sub_22FCC8F14();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 16);
    v5 = swift_slowAlloc();
    *v5 = 134349056;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_22FA28000, v2, v3, "Executing task timeout after %{public}fs", v5, 0xCu);
    MEMORY[0x23190A000](v5, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD86C0, &qword_22FCD71A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
  sub_22FCC8D54();

  v6 = *(v1 + 8);

  return v6();
}

uint64_t sub_22FB6EF9C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 32) = a6;
  *(v7 + 40) = a7;
  *(v7 + 24) = a5;
  *(v7 + 16) = a1;
  v8 = sub_22FCC9464();
  *(v7 + 48) = v8;
  *(v7 + 56) = *(v8 - 8);
  *(v7 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB6F064, 0, 0);
}

uint64_t sub_22FB6F064(uint64_t a1, __n128 a2)
{
  if (*(v2 + 16) <= 0.0)
  {

    v8 = *(v2 + 8);

    return v8();
  }

  else
  {
    v3 = sub_22FCC98D4();
    v5 = v4;
    sub_22FCC97A4();
    v6 = swift_task_alloc();
    *(v2 + 72) = v6;
    *v6 = v2;
    v6[1] = sub_22FB6F188;

    return sub_22FAD765C(v3, v5, 0, 0, 1);
  }
}

uint64_t sub_22FB6F188()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  *(*v1 + 80) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_22FB6F458;
    v7 = 0;
  }

  else
  {
    v7 = *(v2 + 24);
    v6 = sub_22FB6F308;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_22FB6F330(uint64_t a1)
{
  v2 = sub_22FCC8664();
  v3 = sub_22FCC8F14();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 16);
    v5 = swift_slowAlloc();
    *v5 = 134349056;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_22FA28000, v2, v3, "Executing task timeout after %{public}fs", v5, 0xCu);
    MEMORY[0x23190A000](v5, -1, -1);
  }

  type metadata accessor for CreativePromptValidationResult(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
  sub_22FCC8D54();

  v6 = *(v1 + 8);

  return v6();
}

uint64_t sub_22FB6F458()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB6F4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  v6 = swift_task_alloc();
  v4[4] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
  v4[5] = v7;
  *v6 = v4;
  v6[1] = sub_22FB6F58C;
  v8 = MEMORY[0x277D84950];
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v7, a2, v9, v7, v8);
}

uint64_t sub_22FB6F58C()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_22FB6F6A0;
  }

  else
  {
    v2 = sub_22FB79F40;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FB6F6B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[6] = a1;
  v6 = swift_task_alloc();
  v4[9] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD86C0, &qword_22FCD71A8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
  v4[10] = v8;
  *v6 = v4;
  v6[1] = sub_22FB6F7A8;
  v9 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v4 + 2, a2, v7, v8, v9);
}

uint64_t sub_22FB6F7A8()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_22FB6F9C0;
  }

  else
  {
    v2 = sub_22FB6F8BC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FB6F8BC()
{
  sub_22FCC8D54();
  v1 = sub_22FCC8664();
  v2 = sub_22FCC8F34();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_22FA28000, v1, v2, "Executing task with timeout completed", v3, 2u);
    MEMORY[0x23190A000](v3, -1, -1);
  }

  v4 = *(v0 + 48);

  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  *v4 = *(v0 + 16);
  *(v4 + 16) = v5;
  *(v4 + 24) = v6;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_22FB6F9D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  v7 = swift_task_alloc();
  v4[4] = v7;
  v8 = type metadata accessor for CreativePromptValidationResult(0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
  v4[5] = v9;
  *v7 = v4;
  v7[1] = sub_22FB6FABC;
  v10 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](a1, a2, v8, v9, v10);
}

uint64_t sub_22FB6FABC()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22FB6FBEC, 0, 0);
  }
}

uint64_t sub_22FB6FBEC()
{
  sub_22FCC8D54();
  v1 = sub_22FCC8664();
  v2 = sub_22FCC8F34();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_22FA28000, v1, v2, "Executing task with timeout completed", v3, 2u);
    MEMORY[0x23190A000](v3, -1, -1);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22FB6FCDC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
  sub_22FCC8D54();

  return sub_22FCC8D54();
}

uint64_t sub_22FB6FD6C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD86C0, &qword_22FCD71A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
  sub_22FCC8D54();

  return sub_22FCC8D54();
}

uint64_t sub_22FB6FE14(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CreativePromptValidationResult(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
  sub_22FCC8D54();

  return sub_22FCC8D54();
}

void *CreativePromptValidationResult.attributedPromptText.getter()
{
  v1 = *(v0 + *(type metadata accessor for CreativePromptValidationResult(0) + 20));
  v2 = v1;
  return v1;
}

double CreativePromptValidationResult.assetUUIDs.getter()
{
  type metadata accessor for CreativePromptValidationResult(0);

  return result;
}

double CreativePromptValidationResult.queryTokens.getter()
{
  type metadata accessor for CreativePromptValidationResult(0);

  return result;
}

int *CreativePromptValidationResult.init(prompt:attributedPromptText:isValid:assetUUIDs:queryTokens:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_22FB79A38(a1, a6, type metadata accessor for CreativePromptTemplate);
  result = type metadata accessor for CreativePromptValidationResult(0);
  *(a6 + result[5]) = a2;
  *(a6 + result[6]) = a3;
  *(a6 + result[7]) = a4;
  *(a6 + result[8]) = a5;
  return result;
}

uint64_t CreativePromptValidationResult.description.getter()
{
  sub_22FCC9384();
  MEMORY[0x231907FA0](0xD000000000000027, 0x800000022FCE5920);
  v1 = CreativePromptTemplate.description.getter();
  MEMORY[0x231907FA0](v1);

  MEMORY[0x231907FA0](0x696C61567369202CLL, 0xEB00000000203A64);
  v2 = type metadata accessor for CreativePromptValidationResult(0);
  v3 = *(v0 + *(v2 + 24)) == 0;
  if (*(v0 + *(v2 + 24)))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  MEMORY[0x231907FA0](v4, v5);

  MEMORY[0x231907FA0](41, 0xE100000000000000);
  return 0;
}

void sub_22FB70180(uint64_t a1)
{
  type metadata accessor for CreativePromptTemplate(319);
  if (v1 <= 0x3F)
  {
    sub_22FB70338(319, &qword_27DAD8AA0, sub_22FB7029C, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_22FB702E8();
      if (v3 <= 0x3F)
      {
        sub_22FB70338(319, &qword_27DAD8AA8, MEMORY[0x277D3BF48], MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_22FB7029C()
{
  result = qword_28147AE88;
  if (!qword_28147AE88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28147AE88);
  }

  return result;
}

void sub_22FB702E8()
{
  if (!qword_28147AF30)
  {
    v0 = sub_22FCC8CA4();
    if (!v1)
    {
      atomic_store(v0, &qword_28147AF30);
    }
  }
}

void sub_22FB70338(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t dispatch thunk of CreativePromptValidating.validate(promptTemplate:eventRecorder:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 8) + **(a6 + 8));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_22FA2C21C;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of CreativePromptValidating.validate(promptTemplates:eventRecorder:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22FAA2728;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_22FB70628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v110 = a3;
  v6 = type metadata accessor for CreativePromptValidationResult(0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22FCC6794();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v109 = v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8040, &unk_22FCD4810);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v108 = v87 - v15;
  v16 = sub_22FCC68A4();
  v106 = *(v16 - 8);
  v107 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v105 = v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8048, &qword_22FCD9CA0);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v104 = v87 - v21;
  v22 = sub_22FCC7424();
  MEMORY[0x28223BE20](v22 - 8, v23);
  v102 = v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_22FCC7344();
  v100 = *(v25 - 8);
  v101 = v25;
  MEMORY[0x28223BE20](v25, v26);
  v111 = v87 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_22FCC74C4();
  v98 = *(v28 - 8);
  v99 = v28;
  MEMORY[0x28223BE20](v28, v29);
  v31 = v87 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_22FCC7BC4();
  v32 = *(v103 - 8);
  MEMORY[0x28223BE20](v103, v33);
  v114 = v87 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for CreativePromptTemplate(0);
  MEMORY[0x28223BE20](v112, v35);
  v37 = (v87 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22FB79278(a1, v37, type metadata accessor for CreativePromptTemplate);
  if (v37[5])
  {
    v96 = a2;
    v97 = v3;
    v38 = *v37;
    v39 = v37[1];

    v95 = v38;
    v94 = v39;
    v93 = _s13PhotoAnalysis15TemplatedPromptV10promptHash4fromS2S_tFZ_0(v38, v39);
    v92 = v40;
    v41 = *(a1 + v6[5]);
    v42 = v6;
    if (v41)
    {
      v91 = *(a1 + v6[5]);
    }

    else
    {
      v52 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v53 = sub_22FCC8A54();
      v54 = v52;
      v6 = v42;
      v91 = [v54 initWithString_];

      v41 = 0;
    }

    v55 = v41;
    sub_22FCC7B94();
    v56 = MEMORY[0x277D84F90];
    v90 = *(a1 + v6[6]);
    if (v90 != 1)
    {
LABEL_21:
      v88 = v56;
      v89 = v37;

      v70 = sub_22FAA5AA8(v69);
      v71 = v70;
      v72 = *(v70 + 16);
      if (v72)
      {
        v73 = sub_22FA86B08(*(v70 + 16), 0);
        v74 = sub_22FA88270(&v113, v73 + 4, v72, v71);
        sub_22FA72BC8(v113);
        if (v74 == v72)
        {
          goto LABEL_25;
        }

        __break(1u);
      }

      v73 = MEMORY[0x277D84F90];
LABEL_25:

      v76 = sub_22FAA598C(v75);
      v77 = v76;
      v78 = *(v76 + 16);
      if (v78)
      {
        v79 = sub_22FA86B08(*(v76 + 16), 0);
        v80 = sub_22FA88270(&v113, v79 + 4, v78, v77);
        sub_22FA72BC8(v113);
        if (v80 == v78)
        {
LABEL_29:
          v113 = v73;
          sub_22FA680B4(v79);
          v87[2] = v113;
          v81 = *(v98 + 16);
          v87[1] = v31;
          v81(v31, v96, v99);
          (*(v100 + 104))(v111, *MEMORY[0x277D3C100], v101);
          sub_22FCC73B4();
          v82 = v32;
          v83 = *(v32 + 16);
          v84 = v103;
          v85 = v104;
          v83(v104, v114, v103);
          (*(v82 + 56))(v85, 0, 1, v84);

          v86 = v105;
          sub_22FCC6874();
          sub_22FCC6834();
          (*(v106 + 8))(v86, v107);
          sub_22FA4FAA4(a1 + *(v112 + 32), v108, &qword_27DAD8040, &unk_22FCD4810);
          sub_22FCC6764();
          sub_22FCC7464();
          (*(v82 + 8))(v114, v84);
          return sub_22FB792E0(v89, type metadata accessor for CreativePromptTemplate);
        }

        __break(1u);
      }

      v79 = MEMORY[0x277D84F90];
      goto LABEL_29;
    }

    v57 = *(a1 + v6[7]);
    v58 = objc_opt_self();

    v62 = sub_22FAB47D4([v58 promptValidationAssetCountThreshold], v57);
    if (v61)
    {
      v66 = v61;
      v89 = v60;
      v88 = v59;
      sub_22FCC9724();
      swift_unknownObjectRetain_n();
      v67 = swift_dynamicCastClass();
      if (!v67)
      {
        swift_unknownObjectRelease();
        v67 = MEMORY[0x277D84F90];
      }

      v68 = *(v67 + 16);

      if (__OFSUB__(v66 >> 1, v89))
      {
        __break(1u);
      }

      else if (v68 == (v66 >> 1) - v89)
      {
        v56 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v56)
        {
          goto LABEL_21;
        }

        v56 = MEMORY[0x277D84F90];
        goto LABEL_20;
      }

      swift_unknownObjectRelease();
      v61 = v66;
      v60 = v89;
      v59 = v88;
    }

    sub_22FACAD64(v62, v59, v60, v61);
    v56 = v63;
LABEL_20:
    swift_unknownObjectRelease();
    goto LABEL_21;
  }

  if (qword_27DAD6F28 != -1)
  {
    swift_once();
  }

  v43 = sub_22FCC8684();
  __swift_project_value_buffer(v43, qword_27DAE29B8);
  sub_22FB79278(a1, v9, type metadata accessor for CreativePromptValidationResult);
  v44 = sub_22FCC8664();
  v45 = sub_22FCC8F14();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v113 = v47;
    *v46 = 136315138;
    v48 = CreativePromptValidationResult.description.getter();
    v50 = v49;
    sub_22FB792E0(v9, type metadata accessor for CreativePromptValidationResult);
    v51 = sub_22FA2F600(v48, v50, &v113);

    *(v46 + 4) = v51;
    _os_log_impl(&dword_22FA28000, v44, v45, "Prompt template is missing hydrated result in validation result %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x23190A000](v47, -1, -1);
    MEMORY[0x23190A000](v46, -1, -1);
  }

  else
  {

    sub_22FB792E0(v9, type metadata accessor for CreativePromptValidationResult);
  }

  sub_22FB79224();
  swift_allocError();
  *v64 = 0;
  swift_willThrow();
  return sub_22FB792E0(v37, type metadata accessor for CreativePromptTemplate);
}

uint64_t sub_22FB71134()
{
  v0 = sub_22FCC8684();
  __swift_allocate_value_buffer(v0, qword_27DAE29B8);
  __swift_project_value_buffer(v0, qword_27DAE29B8);
  return sub_22FCC8674();
}

uint64_t sub_22FB711B4(uint64_t a1)
{
  v3 = sub_22FCC81D4();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v5 = sub_22FCC7E14();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = v38 - v12;
  v14 = OBJC_IVAR____TtC13PhotoAnalysis23CreativePromptValidator_logger;
  if (qword_27DAD6F28 != -1)
  {
    swift_once();
  }

  v15 = sub_22FCC8684();
  v16 = __swift_project_value_buffer(v15, qword_27DAE29B8);
  v17 = *(*(v15 - 8) + 16);
  v42 = v1;
  v17(v1 + v14, v16, v15);
  v40 = a1;
  v18 = *(*(a1 + 120) + 112);
  sub_22FCC7934();
  sub_22FCC7884();
  swift_allocObject();
  v41 = v18;
  sub_22FCC7874();
  sub_22FCC7DE4();
  v19 = *(v6 + 16);
  v20 = v13;
  v19(v9, v13, v5);
  v21 = v19;
  sub_22FCC6F44();
  swift_allocObject();
  v22 = sub_22FCC6F34();
  v23 = objc_opt_self();
  v24 = [v23 numberOfGlobalTraits];
  [v24 integerValue];
  v39 = v6;

  [v23 useGlobalTraitsV3];
  sub_22FCC81C4();
  v38[0] = v21;
  v21(v9, v20, v5);
  sub_22FA2D328(v49, &v46);
  sub_22FCC7814();
  v43 = 0u;
  v44 = 0u;
  v45 = 0;
  swift_allocObject();
  v38[1] = v22;

  v25 = sub_22FCC7804();
  v26 = v42;
  *(v42 + OBJC_IVAR____TtC13PhotoAnalysis23CreativePromptValidator_globalTraitsGenerator) = v25;
  v27 = sub_22FCC7574();
  v21(v9, v20, v5);
  v28 = sub_22FCC7564();
  v29 = MEMORY[0x277D3C180];
  v30 = (v26 + OBJC_IVAR____TtC13PhotoAnalysis23CreativePromptValidator_safetyController);
  v30[3] = v27;
  v30[4] = v29;
  *v30 = v28;
  v21(v9, v20, v5);
  v31 = type metadata accessor for PromptSuggestionMeaningfulEventGroundingProvider(0);
  v32 = swift_allocObject();
  v33 = v40;

  sub_22FCC8674();
  v34 = v39;
  (*(v39 + 32))(v32 + OBJC_IVAR____TtC13PhotoAnalysis48PromptSuggestionMeaningfulEventGroundingProvider_storyPhotoLibraryContext, v9, v5);
  *(v32 + OBJC_IVAR____TtC13PhotoAnalysis48PromptSuggestionMeaningfulEventGroundingProvider_graphManager) = v33;
  (v38[0])(v9, v20, v5);
  v47 = v31;
  v48 = sub_22FB79720(&qword_28147B8F8, type metadata accessor for PromptSuggestionMeaningfulEventGroundingProvider, &unk_22FCD1E48);
  *&v46 = v32;

  CountAC18PhotosIntelligence05StoryagH0V_AG06MomentjklmN0_pSgSitcfC_0 = _s13PhotoAnalysis25PromptSuggestionValidatorC05storyA14LibraryContext37momentBasedGroundingAndAssetsProvider18maxAssetFetchCountAC18PhotosIntelligence05StoryagH0V_AG06MomentjklmN0_pSgSitcfC_0(v9, &v46, 50);
  v47 = type metadata accessor for PromptSuggestionValidator(0);
  v48 = &protocol witness table for PromptSuggestionValidator;

  *&v46 = CountAC18PhotosIntelligence05StoryagH0V_AG06MomentjklmN0_pSgSitcfC_0;
  (*(v34 + 8))(v20, v5);
  __swift_destroy_boxed_opaque_existential_0(v49);
  v36 = v42;
  sub_22FA2CF78(&v46, v42 + OBJC_IVAR____TtC13PhotoAnalysis23CreativePromptValidator_promptSuggestionValidator);
  return v36;
}

uint64_t sub_22FB71718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = a3;
  v4[21] = v3;
  v4[18] = a1;
  v4[19] = a2;
  v5 = sub_22FCC8CF4();
  v4[22] = v5;
  v4[23] = *(v5 - 8);
  v4[24] = swift_task_alloc();
  v6 = sub_22FCC8684();
  v4[25] = v6;
  v7 = *(v6 - 8);
  v4[26] = v7;
  v4[27] = *(v7 + 64);
  v4[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v8 = type metadata accessor for CreativePromptValidationResult(0);
  v4[33] = v8;
  v4[34] = *(v8 - 8);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v9 = *(type metadata accessor for CreativePromptTemplate(0) - 8);
  v4[37] = v9;
  v4[38] = *(v9 + 64);
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v10 = sub_22FCC84E4();
  v4[43] = v10;
  v4[44] = *(v10 - 8);
  v4[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB719E4, 0, 0);
}

uint64_t sub_22FB719E4()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_22FCC8414();
  v3 = *(v2 + 16);
  v4 = OBJC_IVAR____TtC13PhotoAnalysis23CreativePromptValidator_logger;
  *(v0 + 368) = v3;
  *(v0 + 376) = v4;
  if (v3)
  {

    v5 = sub_22FCC8664();
    v6 = sub_22FCC8F34();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = v3;

      _os_log_impl(&dword_22FA28000, v5, v6, "Validating %ld  prompt templates.", v7, 0xCu);
      MEMORY[0x23190A000](v7, -1, -1);
    }

    else
    {
    }

    v24 = *(v0 + 296);
    v23 = *(v0 + 304);
    v25 = *(v0 + 144);
    v26 = *(v24 + 80);
    *(v0 + 512) = v26;
    v27 = *(v24 + 72);
    v28 = MEMORY[0x277D84F90];
    *(v0 + 408) = MEMORY[0x277D84F90];
    *(v0 + 416) = v28;
    *(v0 + 392) = 0;
    *(v0 + 400) = 0;
    *(v0 + 384) = v27;
    v29 = *(v0 + 368);
    if (v29)
    {
      v30 = (v26 + 24) & ~v26;
      v31 = (v23 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
      v32 = *(v0 + 328);
      v33 = *(v0 + 336);
      v35 = *(v0 + 160);
      v34 = *(v0 + 168);
      v80 = *(v0 + 152);
      v36 = 1.0 / v29;
      sub_22FB79278(v25 + ((v26 + 32) & ~v26), v33, type metadata accessor for CreativePromptTemplate);
      if (v36 <= 1.0)
      {
        v37 = v36;
      }

      else
      {
        v37 = 1.0;
      }

      v38 = [v35 childProgressReporterFromStart:0.0 toEnd:v37];
      *(v0 + 424) = v38;
      sub_22FB79224();
      *(v0 + 432) = swift_allocError();
      *v39 = 1;
      sub_22FB79278(v33, v32, type metadata accessor for CreativePromptTemplate);
      sub_22FA2D328(v80, v0 + 16);
      v40 = swift_allocObject();
      *(v0 + 440) = v40;
      *(v40 + 16) = v34;
      sub_22FB79A38(v32, v40 + v30, type metadata accessor for CreativePromptTemplate);
      sub_22FA2CF78((v0 + 16), v40 + v31);
      *(v40 + ((v31 + 47) & 0xFFFFFFFFFFFFFFF8)) = v38;

      v41 = v38;
      v42 = sub_22FCC8664();
      v43 = sub_22FCC8F34();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 134349056;
        *(v44 + 4) = 0x405E000000000000;
        _os_log_impl(&dword_22FA28000, v42, v43, "Executing task with timeout %{public}fs", v44, 0xCu);
        MEMORY[0x23190A000](v44, -1, -1);
      }

      v45 = *(v0 + 248);
      v46 = *(v0 + 256);

      type metadata accessor for PromptSuggestionExecutionUtils.InternalTimeout();
      v47 = swift_allocObject();
      *(v0 + 448) = v47;
      swift_defaultActor_initialize();
      v81 = v47;
      *(v47 + 112) = 0;
      v48 = sub_22FCC8D14();
      v49 = *(v48 - 8);
      v78 = *(v49 + 56);
      v78(v46, 1, 1, v48);
      v50 = swift_allocObject();
      v50[2] = 0;
      v50[3] = 0;
      v50[4] = &unk_22FCD9C20;
      v50[5] = v40;
      sub_22FA4FAA4(v46, v45, &unk_27DAD8710, &unk_22FCD1B40);
      v79 = *(v49 + 48);
      LODWORD(v46) = v79(v45, 1, v48);

      v51 = *(v0 + 248);
      if (v46 == 1)
      {
        sub_22FA2B420(*(v0 + 248), &unk_27DAD8710, &unk_22FCD1B40);
      }

      else
      {
        sub_22FCC8D04();
        (*(v49 + 8))(v51, v48);
      }

      v52 = v50[2];
      swift_unknownObjectRetain();

      if (v52)
      {
        swift_getObjectType();
        v53 = sub_22FCC8CC4();
        v55 = v54;
        swift_unknownObjectRelease();
      }

      else
      {
        v53 = 0;
        v55 = 0;
      }

      sub_22FA2B420(*(v0 + 256), &unk_27DAD8710, &unk_22FCD1B40);
      v82 = v48;
      v76 = v49;
      if (v55 | v53)
      {
        *(v0 + 56) = 0;
        *(v0 + 64) = 0;
        *(v0 + 72) = v53;
        *(v0 + 80) = v55;
      }

      v56 = *(v0 + 376);
      v57 = *(v0 + 240);
      v77 = *(v0 + 232);
      v58 = *(v0 + 216);
      v59 = *(v0 + 224);
      v60 = *(v0 + 200);
      v61 = *(v0 + 208);
      v62 = *(v0 + 168);
      v63 = swift_task_create();
      *(v0 + 456) = v63;
      v78(v57, 1, 1, v82);
      (*(v61 + 16))(v59, v62 + v56, v60);
      v64 = (*(v61 + 80) + 48) & ~*(v61 + 80);
      v65 = swift_allocObject();
      *(v65 + 2) = 0;
      *(v65 + 3) = 0;
      *(v65 + 4) = 0x405E000000000000;
      *(v65 + 5) = v81;
      (*(v61 + 32))(&v65[v64], v59, v60);
      *&v65[(v58 + v64 + 7) & 0xFFFFFFFFFFFFFFF8] = v63;
      sub_22FA4FAA4(v57, v77, &unk_27DAD8710, &unk_22FCD1B40);
      LODWORD(v59) = v79(v77, 1, v82);

      v66 = *(v0 + 232);
      if (v59 == 1)
      {
        sub_22FA2B420(*(v0 + 232), &unk_27DAD8710, &unk_22FCD1B40);
      }

      else
      {
        sub_22FCC8D04();
        (*(v76 + 8))(v66, v82);
      }

      v67 = *(v65 + 2);
      swift_unknownObjectRetain();

      if (v67)
      {
        swift_getObjectType();
        v68 = sub_22FCC8CC4();
        v70 = v69;
        swift_unknownObjectRelease();
      }

      else
      {
        v68 = 0;
        v70 = 0;
      }

      sub_22FA2B420(*(v0 + 240), &unk_27DAD8710, &unk_22FCD1B40);
      if (v70 | v68)
      {
        *(v0 + 88) = 0;
        *(v0 + 96) = 0;
        *(v0 + 104) = v68;
        *(v0 + 112) = v70;
      }

      v71 = *(v0 + 168) + *(v0 + 376);
      v72 = swift_task_create();
      *(v0 + 464) = v72;
      v73 = swift_task_alloc();
      *(v0 + 472) = v73;
      v73[2] = v63;
      v73[3] = v72;
      v73[4] = v71;
      v74 = swift_task_alloc();
      *(v0 + 480) = v74;
      *(v74 + 16) = v63;
      *(v74 + 24) = v72;
      v75 = swift_task_alloc();
      *(v0 + 488) = v75;
      *v75 = v0;
      v75[1] = sub_22FB723C8;
      v15 = *(v0 + 288);
      v22 = *(v0 + 264);
      v16 = &unk_22FCD9C38;
      v18 = sub_22FB79F44;
      v17 = v73;
      v19 = v74;
      v20 = 0;
      v21 = 0;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200830](v15, v16, v17, v18, v19, v20, v21, v22);
  }

  else
  {
    v8 = sub_22FCC8664();
    v9 = sub_22FCC8F14();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_22FA28000, v8, v9, "No prompt templates provided", v10, 2u);
      MEMORY[0x23190A000](v10, -1, -1);
    }

    v11 = *(v0 + 152);

    __swift_project_boxed_opaque_existential_1(v11, v1[3]);
    sub_22FCC83F4();
    (*(*(v0 + 352) + 8))(*(v0 + 360), *(v0 + 344));

    v12 = *(v0 + 8);
    v13 = MEMORY[0x277D84F90];

    return v12(v13);
  }
}

uint64_t sub_22FB723C8()
{
  *(*v1 + 496) = v0;

  if (v0)
  {
    v2 = sub_22FB7305C;
  }

  else
  {

    v2 = sub_22FB724EC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FB724EC()
{
  v1 = *(v0 + 432);
  v3 = *(v0 + 280);
  v2 = *(v0 + 288);

  sub_22FB79278(v2, v3, type metadata accessor for CreativePromptValidationResult);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + 408);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_22FAC2328(0, v5[2] + 1, 1, *(v0 + 408));
  }

  v7 = v5[2];
  v6 = v5[3];
  if (v7 >= v6 >> 1)
  {
    v5 = sub_22FAC2328((v6 > 1), v7 + 1, 1, v5);
  }

  v9 = *(v0 + 280);
  v8 = *(v0 + 288);
  v10 = *(v0 + 272);

  sub_22FB792E0(v8, type metadata accessor for CreativePromptValidationResult);
  v5[2] = v7 + 1;
  sub_22FB79A38(v9, v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v7, type metadata accessor for CreativePromptValidationResult);
  v11 = *(v0 + 496);
  sub_22FCC8FF4();
  if (v11)
  {
    sub_22FB792E0(*(v0 + 336), type metadata accessor for CreativePromptTemplate);
    v13 = *(v0 + 352);
    v12 = *(v0 + 360);
    v14 = *(v0 + 344);
    v15 = *(v0 + 152);

    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    sub_22FCC83F4();
    (*(v13 + 8))(v12, v14);

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    v18 = *(v0 + 368);
    v19 = *(v0 + 400) + 1;
    v20 = sub_22FB792E0(*(v0 + 336), type metadata accessor for CreativePromptTemplate);
    if (v19 == v18)
    {
      sub_22FCC9004();
      __swift_project_boxed_opaque_existential_1(*(v0 + 152), *(*(v0 + 152) + 24));
      sub_22FCC83F4();
      (*(*(v0 + 352) + 8))(*(v0 + 360), *(v0 + 344));

      v28 = *(v0 + 8);

      return v28(v5);
    }

    else
    {
      v29 = *(v0 + 400);
      v30 = *(v0 + 368);
      v31 = 1.0 / v30;
      v32 = *(v0 + 392) + v31;
      *(v0 + 408) = v5;
      *(v0 + 416) = v5;
      v33 = v29 + 1;
      *(v0 + 400) = v33;
      *(v0 + 392) = v32;
      if (v33 == v30)
      {
        __break(1u);
      }

      else
      {
        v34 = *(v0 + 512);
        v35 = *(v0 + 328);
        v36 = *(v0 + 336);
        v38 = *(v0 + 160);
        v37 = *(v0 + 168);
        v84 = *(v0 + 152);
        v39 = (v34 + 24) & ~v34;
        v40 = (*(v0 + 304) + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
        sub_22FB79278(*(v0 + 144) + ((v34 + 32) & ~v34) + *(v0 + 384) * v33, v36, type metadata accessor for CreativePromptTemplate);
        if (v31 + v32 <= 1.0)
        {
          v41 = v31 + v32;
        }

        else
        {
          v41 = 1.0;
        }

        v42 = [v38 childProgressReporterFromStart:v32 toEnd:v41];
        *(v0 + 424) = v42;
        sub_22FB79224();
        *(v0 + 432) = swift_allocError();
        *v43 = 1;
        sub_22FB79278(v36, v35, type metadata accessor for CreativePromptTemplate);
        sub_22FA2D328(v84, v0 + 16);
        v44 = swift_allocObject();
        *(v0 + 440) = v44;
        *(v44 + 16) = v37;
        sub_22FB79A38(v35, v44 + v39, type metadata accessor for CreativePromptTemplate);
        sub_22FA2CF78((v0 + 16), v44 + v40);
        *(v44 + ((v40 + 47) & 0xFFFFFFFFFFFFFFF8)) = v42;

        v45 = v42;
        v46 = sub_22FCC8664();
        v47 = sub_22FCC8F34();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 134349056;
          *(v48 + 4) = 0x405E000000000000;
          _os_log_impl(&dword_22FA28000, v46, v47, "Executing task with timeout %{public}fs", v48, 0xCu);
          MEMORY[0x23190A000](v48, -1, -1);
        }

        v49 = *(v0 + 248);
        v50 = *(v0 + 256);

        type metadata accessor for PromptSuggestionExecutionUtils.InternalTimeout();
        v51 = swift_allocObject();
        *(v0 + 448) = v51;
        swift_defaultActor_initialize();
        v85 = v51;
        *(v51 + 112) = 0;
        v52 = sub_22FCC8D14();
        v53 = *(v52 - 8);
        v82 = *(v53 + 56);
        v82(v50, 1, 1, v52);
        v54 = swift_allocObject();
        v54[2] = 0;
        v54[3] = 0;
        v54[4] = &unk_22FCD9C20;
        v54[5] = v44;
        sub_22FA4FAA4(v50, v49, &unk_27DAD8710, &unk_22FCD1B40);
        v83 = *(v53 + 48);
        LODWORD(v50) = v83(v49, 1, v52);

        v55 = *(v0 + 248);
        if (v50 == 1)
        {
          sub_22FA2B420(*(v0 + 248), &unk_27DAD8710, &unk_22FCD1B40);
        }

        else
        {
          sub_22FCC8D04();
          (*(v53 + 8))(v55, v52);
        }

        v56 = v54[2];
        swift_unknownObjectRetain();

        if (v56)
        {
          swift_getObjectType();
          v57 = sub_22FCC8CC4();
          v59 = v58;
          swift_unknownObjectRelease();
        }

        else
        {
          v57 = 0;
          v59 = 0;
        }

        sub_22FA2B420(*(v0 + 256), &unk_27DAD8710, &unk_22FCD1B40);
        v86 = v52;
        v80 = v53;
        if (v59 | v57)
        {
          *(v0 + 56) = 0;
          *(v0 + 64) = 0;
          *(v0 + 72) = v57;
          *(v0 + 80) = v59;
        }

        v60 = *(v0 + 376);
        v61 = *(v0 + 240);
        v81 = *(v0 + 232);
        v62 = *(v0 + 216);
        v63 = *(v0 + 224);
        v64 = *(v0 + 200);
        v65 = *(v0 + 208);
        v66 = *(v0 + 168);
        v67 = swift_task_create();
        *(v0 + 456) = v67;
        v82(v61, 1, 1, v86);
        (*(v65 + 16))(v63, v66 + v60, v64);
        v68 = (*(v65 + 80) + 48) & ~*(v65 + 80);
        v69 = swift_allocObject();
        *(v69 + 2) = 0;
        *(v69 + 3) = 0;
        *(v69 + 4) = 0x405E000000000000;
        *(v69 + 5) = v85;
        (*(v65 + 32))(&v69[v68], v63, v64);
        *&v69[(v62 + v68 + 7) & 0xFFFFFFFFFFFFFFF8] = v67;
        sub_22FA4FAA4(v61, v81, &unk_27DAD8710, &unk_22FCD1B40);
        LODWORD(v63) = v83(v81, 1, v86);

        v70 = *(v0 + 232);
        if (v63 == 1)
        {
          sub_22FA2B420(*(v0 + 232), &unk_27DAD8710, &unk_22FCD1B40);
        }

        else
        {
          sub_22FCC8D04();
          (*(v80 + 8))(v70, v86);
        }

        v71 = *(v69 + 2);
        swift_unknownObjectRetain();

        if (v71)
        {
          swift_getObjectType();
          v72 = sub_22FCC8CC4();
          v74 = v73;
          swift_unknownObjectRelease();
        }

        else
        {
          v72 = 0;
          v74 = 0;
        }

        sub_22FA2B420(*(v0 + 240), &unk_27DAD8710, &unk_22FCD1B40);
        if (v74 | v72)
        {
          *(v0 + 88) = 0;
          *(v0 + 96) = 0;
          *(v0 + 104) = v72;
          *(v0 + 112) = v74;
        }

        v75 = *(v0 + 168) + *(v0 + 376);
        v76 = swift_task_create();
        *(v0 + 464) = v76;
        v77 = swift_task_alloc();
        *(v0 + 472) = v77;
        v77[2] = v67;
        v77[3] = v76;
        v77[4] = v75;
        v78 = swift_task_alloc();
        *(v0 + 480) = v78;
        *(v78 + 16) = v67;
        *(v78 + 24) = v76;
        v79 = swift_task_alloc();
        *(v0 + 488) = v79;
        *v79 = v0;
        v79[1] = sub_22FB723C8;
        v20 = *(v0 + 288);
        v27 = *(v0 + 264);
        v21 = &unk_22FCD9C38;
        v23 = sub_22FB79F44;
        v22 = v77;
        v24 = v78;
        v25 = 0;
        v26 = 0;
      }

      return MEMORY[0x282200830](v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }
}

uint64_t sub_22FB7305C()
{
  v121 = v0;
  v1 = *(v0 + 496);

  *(v0 + 120) = v1;
  v2 = v0 + 120;
  v3 = v1;
  *(v0 + 504) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 448);

    return MEMORY[0x2822009F8](sub_22FB73F8C, v4, 0);
  }

  v5 = *(v0 + 496);
  v6 = *(v0 + 432);
  v7 = *(v0 + 424);

  *(v0 + 128) = v5;
  v8 = v5;
  if (swift_dynamicCast())
  {
    v9 = *(v0 + 136);
    if (v9 == 1)
    {
      v10 = *(v0 + 336);
      v11 = *(v0 + 320);

      sub_22FB79278(v10, v11, type metadata accessor for CreativePromptTemplate);
      swift_bridgeObjectRetain_n();
      v12 = sub_22FCC8664();
      v13 = sub_22FCC8F14();
      v14 = os_log_type_enabled(v12, v13);
      v15 = *(v0 + 416);
      v16 = *(v0 + 336);
      v17 = *(v0 + 320);
      if (v14)
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v120[0] = v19;
        *v18 = 136315394;
        v20 = CreativePromptTemplate.description.getter();
        v118 = v16;
        v22 = v21;
        sub_22FB792E0(v17, type metadata accessor for CreativePromptTemplate);
        v23 = sub_22FA2F600(v20, v22, v120);

        *(v18 + 4) = v23;
        *(v18 + 12) = 2048;
        v24 = *(v15 + 16);

        *(v18 + 14) = v24;

        _os_log_impl(&dword_22FA28000, v12, v13, "Validation timeout for %s : Validation completed for %ld templates", v18, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v19);
        MEMORY[0x23190A000](v19, -1, -1);
        MEMORY[0x23190A000](v18, -1, -1);

        v25 = v118;
      }

      else
      {
        swift_bridgeObjectRelease_n();

        sub_22FB792E0(v17, type metadata accessor for CreativePromptTemplate);
        v25 = v16;
      }

      sub_22FB792E0(v25, type metadata accessor for CreativePromptTemplate);

      v43 = *(v0 + 416);
LABEL_24:
      sub_22FCC9004();
      __swift_project_boxed_opaque_existential_1(*(v0 + 152), *(*(v0 + 152) + 24));
      sub_22FCC83F4();
      (*(*(v0 + 352) + 8))(*(v0 + 360), *(v0 + 344));

      v82 = *(v0 + 8);

      return v82(v43);
    }

    sub_22FB79A28(v9);
  }

  v26 = *(v0 + 336);
  v27 = *(v0 + 312);

  sub_22FB79278(v26, v27, type metadata accessor for CreativePromptTemplate);
  v28 = v5;
  v29 = sub_22FCC8664();
  v30 = sub_22FCC8F14();

  v31 = os_log_type_enabled(v29, v30);
  v32 = *(v0 + 312);
  if (v31)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v120[0] = swift_slowAlloc();
    v35 = v120[0];
    *v33 = 136315394;
    v36 = CreativePromptTemplate.description.getter();
    v38 = v37;
    sub_22FB792E0(v32, type metadata accessor for CreativePromptTemplate);
    v39 = sub_22FA2F600(v36, v38, v120);

    *(v33 + 4) = v39;
    *(v33 + 12) = 2112;
    v40 = v5;
    v41 = _swift_stdlib_bridgeErrorToNSError();
    *(v33 + 14) = v41;
    *v34 = v41;
    _os_log_impl(&dword_22FA28000, v29, v30, "Validation failed for %s : %@", v33, 0x16u);
    sub_22FA2B420(v34, &unk_27DAD7B10, &unk_22FCD21C0);
    MEMORY[0x23190A000](v34, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v35);
    v42 = v35;
    v2 = v0 + 120;
    MEMORY[0x23190A000](v42, -1, -1);
    MEMORY[0x23190A000](v33, -1, -1);
  }

  else
  {

    sub_22FB792E0(v32, type metadata accessor for CreativePromptTemplate);
  }

  v44 = *(v0 + 408);
  v43 = *(v0 + 416);
  sub_22FCC8FF4();
  v45 = *(v0 + 368);
  v46 = *(v0 + 400) + 1;
  v47 = sub_22FB792E0(*(v0 + 336), type metadata accessor for CreativePromptTemplate);
  if (v46 == v45)
  {
    goto LABEL_24;
  }

  v55 = *(v0 + 400);
  v56 = *(v0 + 368);
  v57 = 1.0 / v56;
  v58 = *(v0 + 392) + v57;
  *(v0 + 408) = v44;
  *(v0 + 416) = v43;
  v59 = v55 + 1;
  *(v0 + 400) = v59;
  *(v0 + 392) = v58;
  if (v59 == v56)
  {
    __break(1u);
  }

  else
  {
    v115 = (v2 - 104);
    v60 = *(v0 + 512);
    v119 = v2;
    v61 = *(v0 + 328);
    v62 = *(v0 + 336);
    v64 = *(v0 + 160);
    v63 = *(v0 + 168);
    v114 = *(v0 + 152);
    v65 = (v60 + 24) & ~v60;
    v66 = (*(v0 + 304) + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
    sub_22FB79278(*(v0 + 144) + ((v60 + 32) & ~v60) + *(v0 + 384) * v59, v62, type metadata accessor for CreativePromptTemplate);
    if (v57 + v58 <= 1.0)
    {
      v67 = v57 + v58;
    }

    else
    {
      v67 = 1.0;
    }

    v68 = [v64 childProgressReporterFromStart:v58 toEnd:v67];
    *(v0 + 424) = v68;
    sub_22FB79224();
    *(v0 + 432) = swift_allocError();
    *v69 = 1;
    sub_22FB79278(v62, v61, type metadata accessor for CreativePromptTemplate);
    sub_22FA2D328(v114, v115);
    v70 = swift_allocObject();
    *(v0 + 440) = v70;
    *(v70 + 16) = v63;
    sub_22FB79A38(v61, v70 + v65, type metadata accessor for CreativePromptTemplate);
    sub_22FA2CF78(v115, v70 + v66);
    *(v70 + ((v66 + 47) & 0xFFFFFFFFFFFFFFF8)) = v68;

    v71 = v68;
    v72 = sub_22FCC8664();
    v73 = sub_22FCC8F34();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 134349056;
      *(v74 + 4) = 0x405E000000000000;
      _os_log_impl(&dword_22FA28000, v72, v73, "Executing task with timeout %{public}fs", v74, 0xCu);
      MEMORY[0x23190A000](v74, -1, -1);
    }

    v75 = *(v0 + 248);
    v76 = *(v0 + 256);

    type metadata accessor for PromptSuggestionExecutionUtils.InternalTimeout();
    v77 = swift_allocObject();
    *(v0 + 448) = v77;
    swift_defaultActor_initialize();
    v116 = v77;
    *(v77 + 112) = 0;
    v78 = sub_22FCC8D14();
    v79 = *(v78 - 8);
    v112 = *(v79 + 56);
    v112(v76, 1, 1, v78);
    v80 = swift_allocObject();
    v80[2] = 0;
    v80[3] = 0;
    v80[4] = &unk_22FCD9C20;
    v80[5] = v70;
    sub_22FA4FAA4(v76, v75, &unk_27DAD8710, &unk_22FCD1B40);
    v113 = *(v79 + 48);
    LODWORD(v76) = v113(v75, 1, v78);

    v81 = *(v0 + 248);
    if (v76 == 1)
    {
      sub_22FA2B420(*(v0 + 248), &unk_27DAD8710, &unk_22FCD1B40);
    }

    else
    {
      sub_22FCC8D04();
      (*(v79 + 8))(v81, v78);
    }

    v83 = v80[2];
    swift_unknownObjectRetain();

    if (v83)
    {
      swift_getObjectType();
      v84 = sub_22FCC8CC4();
      v86 = v85;
      swift_unknownObjectRelease();
    }

    else
    {
      v84 = 0;
      v86 = 0;
    }

    sub_22FA2B420(*(v0 + 256), &unk_27DAD8710, &unk_22FCD1B40);
    v117 = v78;
    v110 = v79;
    if (v86 | v84)
    {
      v87 = (v119 - 64);
      *v87 = 0;
      v87[1] = 0;
      *(v0 + 72) = v84;
      *(v0 + 80) = v86;
    }

    v88 = *(v0 + 376);
    v89 = *(v0 + 240);
    v111 = *(v0 + 232);
    v90 = *(v0 + 216);
    v91 = *(v0 + 224);
    v93 = *(v0 + 200);
    v92 = *(v0 + 208);
    v94 = *(v0 + 168);
    v95 = swift_task_create();
    *(v0 + 456) = v95;
    v112(v89, 1, 1, v117);
    (*(v92 + 16))(v91, v94 + v88, v93);
    v96 = (*(v92 + 80) + 48) & ~*(v92 + 80);
    v97 = swift_allocObject();
    *(v97 + 2) = 0;
    *(v97 + 3) = 0;
    *(v97 + 4) = 0x405E000000000000;
    *(v97 + 5) = v116;
    (*(v92 + 32))(&v97[v96], v91, v93);
    *&v97[(v90 + v96 + 7) & 0xFFFFFFFFFFFFFFF8] = v95;
    sub_22FA4FAA4(v89, v111, &unk_27DAD8710, &unk_22FCD1B40);
    LODWORD(v91) = v113(v111, 1, v117);

    v98 = *(v0 + 232);
    if (v91 == 1)
    {
      sub_22FA2B420(*(v0 + 232), &unk_27DAD8710, &unk_22FCD1B40);
    }

    else
    {
      sub_22FCC8D04();
      (*(v110 + 8))(v98, v117);
    }

    v99 = *(v97 + 2);
    swift_unknownObjectRetain();

    if (v99)
    {
      swift_getObjectType();
      v100 = sub_22FCC8CC4();
      v102 = v101;
      swift_unknownObjectRelease();
    }

    else
    {
      v100 = 0;
      v102 = 0;
    }

    sub_22FA2B420(*(v0 + 240), &unk_27DAD8710, &unk_22FCD1B40);
    if (v102 | v100)
    {
      v103 = (v119 - 32);
      *v103 = 0;
      v103[1] = 0;
      *(v0 + 104) = v100;
      *(v0 + 112) = v102;
    }

    v104 = *(v0 + 168) + *(v0 + 376);
    v105 = swift_task_create();
    *(v0 + 464) = v105;
    v106 = swift_task_alloc();
    *(v0 + 472) = v106;
    v106[2] = v95;
    v106[3] = v105;
    v106[4] = v104;
    v107 = swift_task_alloc();
    *(v0 + 480) = v107;
    *(v107 + 16) = v95;
    *(v107 + 24) = v105;
    v108 = swift_task_alloc();
    *(v0 + 488) = v108;
    *v108 = v0;
    v108[1] = sub_22FB723C8;
    v47 = *(v0 + 288);
    v54 = *(v0 + 264);
    v48 = &unk_22FCD9C38;
    v50 = sub_22FB79F44;
    v49 = v106;
    v51 = v107;
    v52 = 0;
    v53 = 0;
  }

  return MEMORY[0x282200830](v47, v48, v49, v50, v51, v52, v53, v54);
}

uint64_t sub_22FB73FB4(uint64_t a1)
{
  v121 = v1;
  if (*(v1 + 516))
  {
    v2 = *(v1 + 432);
    v4 = *(v1 + 184);
    v3 = *(v1 + 192);
    v5 = *(v1 + 176);
    swift_willThrow();

    (*(v4 + 8))(v3, v5);
    v6 = v2;
    v7 = *(v1 + 432);
    v8 = v7;
  }

  else
  {
    v10 = *(v1 + 184);
    v9 = *(v1 + 192);
    v11 = *(v1 + 176);
    sub_22FB79720(&qword_28147AFC0, MEMORY[0x277D85678], MEMORY[0x277D85680]);
    v8 = swift_allocError();
    sub_22FCC89B4();
    swift_willThrow();

    (*(v10 + 8))(v9, v11);
    v7 = *(v1 + 432);
  }

  v12 = *(v1 + 424);

  *(v1 + 128) = v8;
  v13 = v8;
  if (swift_dynamicCast())
  {
    v14 = *(v1 + 136);
    if (v14 == 1)
    {
      v15 = *(v1 + 336);
      v16 = *(v1 + 320);

      sub_22FB79278(v15, v16, type metadata accessor for CreativePromptTemplate);
      swift_bridgeObjectRetain_n();
      v17 = sub_22FCC8664();
      v18 = sub_22FCC8F14();
      v19 = os_log_type_enabled(v17, v18);
      v20 = *(v1 + 416);
      v21 = *(v1 + 336);
      v22 = *(v1 + 320);
      if (v19)
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v120[0] = v24;
        *v23 = 136315394;
        v25 = CreativePromptTemplate.description.getter();
        v118 = v21;
        v27 = v26;
        sub_22FB792E0(v22, type metadata accessor for CreativePromptTemplate);
        v28 = sub_22FA2F600(v25, v27, v120);

        *(v23 + 4) = v28;
        *(v23 + 12) = 2048;
        v29 = *(v20 + 16);

        *(v23 + 14) = v29;

        _os_log_impl(&dword_22FA28000, v17, v18, "Validation timeout for %s : Validation completed for %ld templates", v23, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v24);
        MEMORY[0x23190A000](v24, -1, -1);
        MEMORY[0x23190A000](v23, -1, -1);

        v30 = v118;
      }

      else
      {
        swift_bridgeObjectRelease_n();

        sub_22FB792E0(v22, type metadata accessor for CreativePromptTemplate);
        v30 = v21;
      }

      sub_22FB792E0(v30, type metadata accessor for CreativePromptTemplate);

      v47 = *(v1 + 416);
LABEL_23:
      sub_22FCC9004();
      __swift_project_boxed_opaque_existential_1(*(v1 + 152), *(*(v1 + 152) + 24));
      sub_22FCC83F4();
      (*(*(v1 + 352) + 8))(*(v1 + 360), *(v1 + 344));

      v86 = *(v1 + 8);

      return v86(v47);
    }

    sub_22FB79A28(v14);
  }

  v31 = *(v1 + 336);
  v32 = *(v1 + 312);

  sub_22FB79278(v31, v32, type metadata accessor for CreativePromptTemplate);
  v33 = v8;
  v34 = sub_22FCC8664();
  v35 = sub_22FCC8F14();

  v36 = os_log_type_enabled(v34, v35);
  v37 = *(v1 + 312);
  if (v36)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v120[0] = v40;
    *v38 = 136315394;
    v41 = CreativePromptTemplate.description.getter();
    v43 = v42;
    sub_22FB792E0(v37, type metadata accessor for CreativePromptTemplate);
    v44 = sub_22FA2F600(v41, v43, v120);

    *(v38 + 4) = v44;
    *(v38 + 12) = 2112;
    v45 = v8;
    v46 = _swift_stdlib_bridgeErrorToNSError();
    *(v38 + 14) = v46;
    *v39 = v46;
    _os_log_impl(&dword_22FA28000, v34, v35, "Validation failed for %s : %@", v38, 0x16u);
    sub_22FA2B420(v39, &unk_27DAD7B10, &unk_22FCD21C0);
    MEMORY[0x23190A000](v39, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x23190A000](v40, -1, -1);
    MEMORY[0x23190A000](v38, -1, -1);
  }

  else
  {

    sub_22FB792E0(v37, type metadata accessor for CreativePromptTemplate);
  }

  v48 = *(v1 + 408);
  v47 = *(v1 + 416);
  sub_22FCC8FF4();
  v49 = *(v1 + 368);
  v50 = *(v1 + 400) + 1;
  v51 = sub_22FB792E0(*(v1 + 336), type metadata accessor for CreativePromptTemplate);
  if (v50 == v49)
  {
    goto LABEL_23;
  }

  v59 = *(v1 + 400);
  v60 = *(v1 + 368);
  v61 = 1.0 / v60;
  v62 = *(v1 + 392) + v61;
  *(v1 + 408) = v48;
  *(v1 + 416) = v47;
  v63 = v59 + 1;
  *(v1 + 400) = v63;
  *(v1 + 392) = v62;
  if (v63 == v60)
  {
    __break(1u);
  }

  else
  {
    v64 = *(v1 + 512);
    v65 = *(v1 + 328);
    v66 = *(v1 + 336);
    v68 = *(v1 + 160);
    v67 = *(v1 + 168);
    v116 = *(v1 + 152);
    v69 = (v64 + 24) & ~v64;
    v70 = (*(v1 + 304) + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
    sub_22FB79278(*(v1 + 144) + ((v64 + 32) & ~v64) + *(v1 + 384) * v63, v66, type metadata accessor for CreativePromptTemplate);
    if (v61 + v62 <= 1.0)
    {
      v71 = v61 + v62;
    }

    else
    {
      v71 = 1.0;
    }

    v72 = [v68 childProgressReporterFromStart:v62 toEnd:v71];
    *(v1 + 424) = v72;
    sub_22FB79224();
    *(v1 + 432) = swift_allocError();
    *v73 = 1;
    sub_22FB79278(v66, v65, type metadata accessor for CreativePromptTemplate);
    sub_22FA2D328(v116, v1 + 16);
    v74 = swift_allocObject();
    *(v1 + 440) = v74;
    *(v74 + 16) = v67;
    sub_22FB79A38(v65, v74 + v69, type metadata accessor for CreativePromptTemplate);
    sub_22FA2CF78((v1 + 16), v74 + v70);
    *(v74 + ((v70 + 47) & 0xFFFFFFFFFFFFFFF8)) = v72;

    v75 = v72;
    v76 = sub_22FCC8664();
    v77 = sub_22FCC8F34();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 134349056;
      *(v78 + 4) = 0x405E000000000000;
      _os_log_impl(&dword_22FA28000, v76, v77, "Executing task with timeout %{public}fs", v78, 0xCu);
      MEMORY[0x23190A000](v78, -1, -1);
    }

    v79 = *(v1 + 248);
    v80 = *(v1 + 256);

    type metadata accessor for PromptSuggestionExecutionUtils.InternalTimeout();
    v81 = swift_allocObject();
    *(v1 + 448) = v81;
    swift_defaultActor_initialize();
    v117 = v81;
    *(v81 + 112) = 0;
    v82 = sub_22FCC8D14();
    v83 = *(v82 - 8);
    v114 = *(v83 + 56);
    v114(v80, 1, 1, v82);
    v84 = swift_allocObject();
    v84[2] = 0;
    v84[3] = 0;
    v84[4] = &unk_22FCD9C20;
    v84[5] = v74;
    sub_22FA4FAA4(v80, v79, &unk_27DAD8710, &unk_22FCD1B40);
    v115 = *(v83 + 48);
    LODWORD(v80) = v115(v79, 1, v82);

    v85 = *(v1 + 248);
    if (v80 == 1)
    {
      sub_22FA2B420(*(v1 + 248), &unk_27DAD8710, &unk_22FCD1B40);
    }

    else
    {
      sub_22FCC8D04();
      (*(v83 + 8))(v85, v82);
    }

    v88 = v84[2];
    swift_unknownObjectRetain();

    if (v88)
    {
      swift_getObjectType();
      v89 = sub_22FCC8CC4();
      v91 = v90;
      swift_unknownObjectRelease();
    }

    else
    {
      v89 = 0;
      v91 = 0;
    }

    sub_22FA2B420(*(v1 + 256), &unk_27DAD8710, &unk_22FCD1B40);
    v119 = v82;
    v112 = v83;
    if (v91 | v89)
    {
      *(v1 + 56) = 0;
      *(v1 + 64) = 0;
      *(v1 + 72) = v89;
      *(v1 + 80) = v91;
    }

    v92 = *(v1 + 376);
    v93 = *(v1 + 240);
    v113 = *(v1 + 232);
    v94 = *(v1 + 216);
    v95 = *(v1 + 224);
    v96 = *(v1 + 200);
    v97 = *(v1 + 208);
    v98 = *(v1 + 168);
    v99 = swift_task_create();
    *(v1 + 456) = v99;
    v114(v93, 1, 1, v119);
    (*(v97 + 16))(v95, v98 + v92, v96);
    v100 = (*(v97 + 80) + 48) & ~*(v97 + 80);
    v101 = swift_allocObject();
    *(v101 + 2) = 0;
    *(v101 + 3) = 0;
    *(v101 + 4) = 0x405E000000000000;
    *(v101 + 5) = v117;
    (*(v97 + 32))(&v101[v100], v95, v96);
    *&v101[(v94 + v100 + 7) & 0xFFFFFFFFFFFFFFF8] = v99;
    sub_22FA4FAA4(v93, v113, &unk_27DAD8710, &unk_22FCD1B40);
    LODWORD(v95) = v115(v113, 1, v119);

    v102 = *(v1 + 232);
    if (v95 == 1)
    {
      sub_22FA2B420(*(v1 + 232), &unk_27DAD8710, &unk_22FCD1B40);
    }

    else
    {
      sub_22FCC8D04();
      (*(v112 + 8))(v102, v119);
    }

    v103 = *(v101 + 2);
    swift_unknownObjectRetain();

    if (v103)
    {
      swift_getObjectType();
      v104 = sub_22FCC8CC4();
      v106 = v105;
      swift_unknownObjectRelease();
    }

    else
    {
      v104 = 0;
      v106 = 0;
    }

    sub_22FA2B420(*(v1 + 240), &unk_27DAD8710, &unk_22FCD1B40);
    if (v106 | v104)
    {
      *(v1 + 88) = 0;
      *(v1 + 96) = 0;
      *(v1 + 104) = v104;
      *(v1 + 112) = v106;
    }

    v107 = *(v1 + 168) + *(v1 + 376);
    v108 = swift_task_create();
    *(v1 + 464) = v108;
    v109 = swift_task_alloc();
    *(v1 + 472) = v109;
    v109[2] = v99;
    v109[3] = v108;
    v109[4] = v107;
    v110 = swift_task_alloc();
    *(v1 + 480) = v110;
    *(v110 + 16) = v99;
    *(v110 + 24) = v108;
    v111 = swift_task_alloc();
    *(v1 + 488) = v111;
    *v111 = v1;
    v111[1] = sub_22FB723C8;
    v51 = *(v1 + 288);
    v58 = *(v1 + 264);
    v52 = &unk_22FCD9C38;
    v54 = sub_22FB79F44;
    v53 = v109;
    v55 = v110;
    v56 = 0;
    v57 = 0;
  }

  return MEMORY[0x282200830](v51, v52, v53, v54, v55, v56, v57, v58);
}

uint64_t sub_22FB74ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = *(type metadata accessor for CreativePromptTemplate(0) - 8);
  v5[12] = v6;
  v5[13] = *(v6 + 64);
  v5[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB74FA0, 0, 0);
}

uint64_t sub_22FB74FA0(uint64_t a1)
{
  v3 = *(v1 + 104);
  v2 = *(v1 + 112);
  v4 = *(v1 + 88);
  v5 = *(v1 + 96);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 64);
  sub_22FB79224();
  v9 = swift_allocError();
  *(v1 + 120) = v9;
  *v10 = 1;
  v11 = OBJC_IVAR____TtC13PhotoAnalysis23CreativePromptValidator_logger;
  sub_22FB79278(v8, v2, type metadata accessor for CreativePromptTemplate);
  sub_22FA2D328(v6, v1 + 16);
  v12 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v13 = (v3 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  *(v1 + 128) = v14;
  *(v14 + 16) = v4;
  sub_22FB79A38(v2, v14 + v12, type metadata accessor for CreativePromptTemplate);
  sub_22FA2CF78((v1 + 16), v14 + v13);
  *(v14 + ((v13 + 47) & 0xFFFFFFFFFFFFFFF8)) = v7;

  v15 = v7;
  v16 = swift_task_alloc();
  *(v1 + 136) = v16;
  *v16 = v1;
  v16[1] = sub_22FB75180;
  v17 = *(v1 + 56);

  return sub_22FB6D474(v17, v9, v4 + v11, &unk_22FCD9BD0, v14, 120.0);
}

uint64_t sub_22FB75180()
{
  v2 = *v1;
  v2[18] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22FB752D4, 0, 0);
  }

  else
  {
    v3 = v2[15];

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_22FB752D4()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22FB7534C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_22FA2C030;

  return sub_22FB75414(a1, a3, a4, a5);
}

uint64_t sub_22FB75414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_22FCC7824();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v7 = sub_22FCC84E4();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = type metadata accessor for CreativePromptTemplate(0);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB75580, 0, 0);
}

uint64_t sub_22FB75580()
{
  v43 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 24);
  *(v0 + 136) = OBJC_IVAR____TtC13PhotoAnalysis23CreativePromptValidator_logger;
  sub_22FB79278(v2, v1, type metadata accessor for CreativePromptTemplate);
  v3 = sub_22FCC8664();
  v4 = sub_22FCC8F34();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 128);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v42[0] = v8;
    *v7 = 136315138;
    v9 = CreativePromptTemplate.description.getter();
    v11 = v10;
    sub_22FB792E0(v6, type metadata accessor for CreativePromptTemplate);
    v12 = sub_22FA2F600(v9, v11, v42);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_22FA28000, v3, v4, "Validating prompt template: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x23190A000](v8, -1, -1);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  else
  {

    sub_22FB792E0(v6, type metadata accessor for CreativePromptTemplate);
  }

  __swift_project_boxed_opaque_existential_1(*(v0 + 32), *(*(v0 + 32) + 24));
  sub_22FCC8414();
  sub_22FCC8FF4();
  v18 = *(v0 + 24);
  v19 = *(v18 + 32);
  *(v0 + 144) = v19;
  v20 = *(v18 + 40);
  *(v0 + 152) = v20;
  if (v20)
  {
    v21 = *(v0 + 80);
    v22 = *(v0 + 64);
    v23 = *(v0 + 48);
    v24 = OBJC_IVAR____TtC13PhotoAnalysis23CreativePromptValidator_safetyController;
    *(v0 + 160) = OBJC_IVAR____TtC13PhotoAnalysis23CreativePromptValidator_safetyController;
    v25 = *(v23 + v24 + 24);
    v26 = *(v23 + v24 + 32);
    __swift_project_boxed_opaque_existential_1((v23 + v24), v25);
    *(v0 + 280) = *MEMORY[0x277D3C310];
    v27 = *(v22 + 104);
    *(v0 + 168) = v27;
    *(v0 + 176) = (v22 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v27(v21);
    v28 = swift_task_alloc();
    *(v0 + 184) = v28;
    *v28 = v0;
    v28[1] = sub_22FB75A7C;
    v29 = *(v0 + 80);
    v30 = *(v0 + 32);

    return MEMORY[0x28219C8C8](v19, v20, 0, v29, v30, v25, v26);
  }

  else
  {
    sub_22FB79278(v18, *(v0 + 120), type metadata accessor for CreativePromptTemplate);
    v31 = sub_22FCC8664();
    v32 = sub_22FCC8F14();
    v33 = os_log_type_enabled(v31, v32);
    v34 = *(v0 + 120);
    if (v33)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v42[0] = v36;
      *v35 = 136315138;
      v37 = CreativePromptTemplate.description.getter();
      v39 = v38;
      sub_22FB792E0(v34, type metadata accessor for CreativePromptTemplate);
      v40 = sub_22FA2F600(v37, v39, v42);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_22FA28000, v31, v32, "Prompt template is missing hydrated result %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x23190A000](v36, -1, -1);
      MEMORY[0x23190A000](v35, -1, -1);
    }

    else
    {

      sub_22FB792E0(v34, type metadata accessor for CreativePromptTemplate);
    }

    sub_22FB79224();
    swift_allocError();
    *v41 = 0;
    swift_willThrow();
    v14 = *(v0 + 96);
    v13 = *(v0 + 104);
    v15 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1(*(v0 + 32), *(*(v0 + 32) + 24));
    sub_22FCC83F4();
    (*(v14 + 8))(v13, v15);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_22FB75A7C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[24] = v2;

  v5 = v4[10];
  v6 = v4[8];
  v7 = v4[7];
  if (v2)
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_22FB768A4;
  }

  else
  {

    v9 = *(v6 + 8);
    v4[25] = v9;
    v4[26] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v5, v7);
    v8 = sub_22FB75C2C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_22FB75C2C()
{
  v34 = v0;
  v1 = *(v0 + 192);
  sub_22FCC8FF4();
  if (v1)
  {

    v2 = v1;
    v3 = sub_22FCC8664();
    v4 = sub_22FCC8F14();

    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 152);
    if (v5)
    {
      v7 = *(v0 + 144);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v33 = v10;
      *v8 = 136315394;
      v11 = sub_22FA2F600(v7, v6, &v33);

      *(v8 + 4) = v11;
      *(v8 + 12) = 2112;
      v12 = v1;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v13;
      *v9 = v13;
      _os_log_impl(&dword_22FA28000, v3, v4, "[Safety] Error validating prompt suggestion %s %@", v8, 0x16u);
      sub_22FA2B420(v9, &unk_27DAD7B10, &unk_22FCD21C0);
      MEMORY[0x23190A000](v9, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x23190A000](v10, -1, -1);
      MEMORY[0x23190A000](v8, -1, -1);
    }

    else
    {
    }

    sub_22FB79224();
    swift_allocError();
    *v26 = v1;
    swift_willThrow();
    v28 = *(v0 + 96);
    v27 = *(v0 + 104);
    v29 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1(*(v0 + 32), *(*(v0 + 32) + 24));
    sub_22FCC83F4();
    (*(v28 + 8))(v27, v29);

    v30 = *(v0 + 8);

    return v30();
  }

  else
  {
    v14 = *(v0 + 168);
    v15 = *(v0 + 280);
    v16 = *(v0 + 72);
    v17 = *(v0 + 56);
    v18 = (*(v0 + 48) + *(v0 + 160));
    v19 = v18[3];
    v32 = v18[4];
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v20 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v21 = sub_22FCC8A54();
    v22 = [v20 initWithString_];
    *(v0 + 216) = v22;

    v14(v16, v15, v17);
    v23 = swift_task_alloc();
    *(v0 + 224) = v23;
    *v23 = v0;
    v23[1] = sub_22FB75FC4;
    v24 = *(v0 + 72);
    v25 = *(v0 + 32);

    return MEMORY[0x28219C8C0](v22, v24, v25, v19, v32);
  }
}

uint64_t sub_22FB75FC4(void *a1)
{
  v4 = *v2;
  *(*v2 + 232) = v1;

  v5 = v4[27];
  v6 = v4[25];
  v7 = v4[9];
  v8 = v4[7];
  if (v1)
  {
    v6(v4[9], v4[7]);

    v9 = sub_22FB76B1C;
  }

  else
  {

    v6(v7, v8);
    v9 = sub_22FB7617C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_22FB7617C()
{
  v32 = v0;
  v1 = *(v0 + 232);
  sub_22FCC8FF4();
  if (v1)
  {

    v2 = v1;
    v3 = sub_22FCC8664();
    v4 = sub_22FCC8F14();

    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 152);
    if (v5)
    {
      v7 = *(v0 + 144);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v31 = v10;
      *v8 = 136315394;
      v11 = sub_22FA2F600(v7, v6, &v31);

      *(v8 + 4) = v11;
      *(v8 + 12) = 2112;
      v12 = v1;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v13;
      *v9 = v13;
      _os_log_impl(&dword_22FA28000, v3, v4, "[Safety] Error validating prompt suggestion %s %@", v8, 0x16u);
      sub_22FA2B420(v9, &unk_27DAD7B10, &unk_22FCD21C0);
      MEMORY[0x23190A000](v9, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x23190A000](v10, -1, -1);
      MEMORY[0x23190A000](v8, -1, -1);
    }

    else
    {
    }

    sub_22FB79224();
    swift_allocError();
    *v22 = v1;
    swift_willThrow();
    v24 = *(v0 + 96);
    v23 = *(v0 + 104);
    v25 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1(*(v0 + 32), *(*(v0 + 32) + 24));
    sub_22FCC83F4();
    (*(v24 + 8))(v23, v25);

    v26 = *(v0 + 8);

    return v26();
  }

  else
  {
    sub_22FCC8FF4();
    v14 = *(v0 + 112);
    v15 = *(v0 + 24);
    v16 = [*(v0 + 40) childProgressReporterFromStart:0.4 toEnd:0.9];
    *(v0 + 240) = v16;
    if (*(v15 + *(v14 + 40)) == 1)
    {
      v17 = swift_task_alloc();
      *(v0 + 248) = v17;
      *v17 = v0;
      v17[1] = sub_22FB7657C;
      v18 = *(v0 + 24);
      v19 = *(v0 + 32);
      v20 = *(v0 + 16);

      return sub_22FB76F94(v20, v18, v19, v16);
    }

    else
    {
      v27 = swift_task_alloc();
      *(v0 + 264) = v27;
      *v27 = v0;
      v27[1] = sub_22FB76790;
      v28 = *(v0 + 24);
      v29 = *(v0 + 32);
      v30 = *(v0 + 16);

      return sub_22FB77E04(v30, v28, v29, v16);
    }
  }
}

uint64_t sub_22FB7657C()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_22FB76D94;
  }

  else
  {
    v2 = sub_22FB76690;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FB76690()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 32);

  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_22FCC83F4();
  (*(v2 + 8))(v1, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_22FB76790()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_22FB76E94;
  }

  else
  {
    v2 = sub_22FB79F48;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FB768A4()
{
  v21 = v0;
  v1 = *(v0 + 192);

  v2 = v1;
  v3 = sub_22FCC8664();
  v4 = sub_22FCC8F14();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 152);
  if (v5)
  {
    v7 = *(v0 + 144);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v8 = 136315394;
    v11 = sub_22FA2F600(v7, v6, &v20);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2112;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v13;
    *v9 = v13;
    _os_log_impl(&dword_22FA28000, v3, v4, "[Safety] Error validating prompt suggestion %s %@", v8, 0x16u);
    sub_22FA2B420(v9, &unk_27DAD7B10, &unk_22FCD21C0);
    MEMORY[0x23190A000](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23190A000](v10, -1, -1);
    MEMORY[0x23190A000](v8, -1, -1);
  }

  else
  {
  }

  sub_22FB79224();
  swift_allocError();
  *v14 = v1;
  swift_willThrow();
  v16 = *(v0 + 96);
  v15 = *(v0 + 104);
  v17 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1(*(v0 + 32), *(*(v0 + 32) + 24));
  sub_22FCC83F4();
  (*(v16 + 8))(v15, v17);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_22FB76B1C()
{
  v21 = v0;
  v1 = *(v0 + 232);

  v2 = v1;
  v3 = sub_22FCC8664();
  v4 = sub_22FCC8F14();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 152);
  if (v5)
  {
    v7 = *(v0 + 144);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v8 = 136315394;
    v11 = sub_22FA2F600(v7, v6, &v20);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2112;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v13;
    *v9 = v13;
    _os_log_impl(&dword_22FA28000, v3, v4, "[Safety] Error validating prompt suggestion %s %@", v8, 0x16u);
    sub_22FA2B420(v9, &unk_27DAD7B10, &unk_22FCD21C0);
    MEMORY[0x23190A000](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23190A000](v10, -1, -1);
    MEMORY[0x23190A000](v8, -1, -1);
  }

  else
  {
  }

  sub_22FB79224();
  swift_allocError();
  *v14 = v1;
  swift_willThrow();
  v16 = *(v0 + 96);
  v15 = *(v0 + 104);
  v17 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1(*(v0 + 32), *(*(v0 + 32) + 24));
  sub_22FCC83F4();
  (*(v16 + 8))(v15, v17);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_22FB76D94()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1(*(v0 + 32), *(*(v0 + 32) + 24));
  sub_22FCC83F4();
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22FB76E94()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1(*(v0 + 32), *(*(v0 + 32) + 24));
  sub_22FCC83F4();
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22FB76F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v5[11] = type metadata accessor for CreativePromptTemplate(0);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v6 = sub_22FCC67F4();
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();
  v7 = sub_22FCC7BC4();
  v5[17] = v7;
  v5[18] = *(v7 - 8);
  v5[19] = swift_task_alloc();
  v8 = type metadata accessor for TemplatedPrompt(0);
  v5[20] = v8;
  v5[21] = *(v8 - 8);
  v5[22] = swift_task_alloc();
  v9 = sub_22FCC84E4();
  v5[23] = v9;
  v5[24] = *(v9 - 8);
  v5[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB771AC, 0, 0);
}

uint64_t sub_22FB771AC(uint64_t a1)
{
  v54 = v1;
  v1[26] = OBJC_IVAR____TtC13PhotoAnalysis23CreativePromptValidator_logger;
  v2 = sub_22FCC8664();
  v3 = sub_22FCC8F34();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22FA28000, v2, v3, "Validating prompt template by llmqu", v4, 2u);
    MEMORY[0x23190A000](v4, -1, -1);
  }

  v5 = v1[8];

  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_22FCC8414();
  sub_22FCC8FF4();
  v8 = v1[7];
  v9 = v8[5];
  if (v9)
  {
    v10 = v1[22];
    v12 = v1[19];
    v11 = v1[20];
    v46 = v1[18];
    v47 = v1[17];
    v13 = v1[15];
    v50 = v1[21];
    v51 = v1[16];
    v14 = v1[14];
    v48 = v1[9];
    v49 = v1[10];
    v15 = v8[4];
    v45 = *v8;
    v44 = v8[1];

    swift_bridgeObjectRetain_n();
    sub_22FCC7B94();
    sub_22FCC67E4();
    (*(v13 + 16))(v10, v51, v14);
    v16 = (v10 + v11[5]);
    *v16 = v45;
    v16[1] = v44;
    v17 = (v10 + v11[6]);
    *v17 = v15;
    v17[1] = v9;
    v18 = (v10 + v11[7]);
    *v18 = v15;
    v18[1] = v9;
    *(v10 + v11[8]) = MEMORY[0x277D84F90];
    *(v10 + v11[9]) = 0;
    *(v10 + v11[10]) = 0;
    v19 = (v10 + v11[11]);
    *(v19 + 41) = 0u;
    v19[1] = 0u;
    v19[2] = 0u;
    *v19 = 0u;
    (*(v46 + 16))(v10 + v11[13], v12, v47);

    v20 = _s13PhotoAnalysis15TemplatedPromptV10promptHash4fromS2S_tFZ_0(v45, v44);
    v22 = v21;
    (*(v13 + 8))(v51, v14);
    (*(v46 + 8))(v12, v47);
    v23 = (v10 + v11[12]);
    *v23 = v20;
    v23[1] = v22;
    v24 = [v48 childProgressReporterFromStart:0.2 toEnd:0.9];
    v1[27] = v24;
    v25 = *(v49 + OBJC_IVAR____TtC13PhotoAnalysis23CreativePromptValidator_promptSuggestionValidator + 24);
    v26 = *(v49 + OBJC_IVAR____TtC13PhotoAnalysis23CreativePromptValidator_promptSuggestionValidator + 32);
    __swift_project_boxed_opaque_existential_1((v49 + OBJC_IVAR____TtC13PhotoAnalysis23CreativePromptValidator_promptSuggestionValidator), v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7860, &qword_22FCD9BC0);
    v27 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    v28 = swift_allocObject();
    v1[28] = v28;
    *(v28 + 16) = xmmword_22FCD1800;
    sub_22FB79278(v10, v28 + v27, type metadata accessor for TemplatedPrompt);
    v52 = (*(v26 + 16) + **(v26 + 16));
    v29 = swift_task_alloc();
    v1[29] = v29;
    *v29 = v1;
    v29[1] = sub_22FB77830;
    v30 = v1[8];

    return v52(v1 + 2, v28, v30, v24, v25, v26);
  }

  else
  {
    sub_22FB79278(v8, v1[12], type metadata accessor for CreativePromptTemplate);
    v31 = sub_22FCC8664();
    v32 = sub_22FCC8F14();
    v33 = os_log_type_enabled(v31, v32);
    v34 = v1[12];
    if (v33)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v53 = v36;
      *v35 = 136315138;
      v37 = CreativePromptTemplate.description.getter();
      v39 = v38;
      sub_22FB792E0(v34, type metadata accessor for CreativePromptTemplate);
      v40 = sub_22FA2F600(v37, v39, &v53);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_22FA28000, v31, v32, "Prompt template is missing hydrated result %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x23190A000](v36, -1, -1);
      MEMORY[0x23190A000](v35, -1, -1);
    }

    else
    {

      sub_22FB792E0(v34, type metadata accessor for CreativePromptTemplate);
    }

    v41 = v1[25];
    v42 = v1[8];
    sub_22FB79224();
    swift_allocError();
    *v43 = 0;
    swift_willThrow();
    sub_22FB78D5C(v42, v41);
    (*(v1[24] + 8))(v1[25], v1[23]);

    v6 = v1[1];

    return v6();
  }
}

uint64_t sub_22FB77830(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 240) = v1;

  if (v1)
  {

    v5 = sub_22FB77CF0;
  }

  else
  {
    *(v4 + 248) = a1;

    v5 = sub_22FB77970;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FB77970()
{
  v39 = v0;
  sub_22FB64904(v0[31], &v33);

  v1 = v34;
  if (v34)
  {
    v2 = v0[27];
    v3 = v0[6];
    v4 = v0[7];
    v6 = v36;
    v5 = v37;
    v7 = v35;
    v8 = v33;
    v9 = v38;
    sub_22FB792E0(v0[22], type metadata accessor for TemplatedPrompt);

    LOBYTE(v2) = v9 & (*(v6 + 16) > 0x63uLL);
    sub_22FB79278(v4, v3, type metadata accessor for CreativePromptTemplate);

    v10 = v7;

    sub_22FB55F1C(v8, v1, v7, v6, v5);
    v11 = type metadata accessor for CreativePromptValidationResult(0);
    v12 = v2;
    v13 = v5;
    *(v3 + v11[5]) = v7;
  }

  else
  {
    sub_22FB79278(v0[7], v0[13], type metadata accessor for CreativePromptTemplate);
    v14 = sub_22FCC8664();
    v15 = sub_22FCC8F14();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[13];
    if (v16)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v33 = v19;
      *v18 = 136315138;
      v20 = *v17;
      v21 = v17[1];

      sub_22FB792E0(v17, type metadata accessor for CreativePromptTemplate);
      v22 = sub_22FA2F600(v20, v21, &v33);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_22FA28000, v14, v15, "No validation result found for prompt %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x23190A000](v19, -1, -1);
      MEMORY[0x23190A000](v18, -1, -1);
    }

    else
    {

      sub_22FB792E0(v17, type metadata accessor for CreativePromptTemplate);
    }

    v23 = v0[27];
    v24 = v0[22];
    v25 = v0[6];
    sub_22FB79278(v0[7], v25, type metadata accessor for CreativePromptTemplate);

    sub_22FB792E0(v24, type metadata accessor for TemplatedPrompt);
    v11 = type metadata accessor for CreativePromptValidationResult(0);
    v12 = 0;
    *(v25 + v11[5]) = 0;
    v6 = MEMORY[0x277D84F90];
    v13 = MEMORY[0x277D84F90];
  }

  v26 = v0[24];
  v27 = v0[25];
  v28 = v0[23];
  v29 = v0[8];
  v30 = v0[6];
  *(v30 + v11[6]) = v12;
  *(v30 + v11[7]) = v6;
  *(v30 + v11[8]) = v13;
  sub_22FB78D5C(v29, v27);
  (*(v26 + 8))(v27, v28);

  v31 = v0[1];

  return v31();
}

uint64_t sub_22FB77CF0()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 176);
  v3 = *(v0 + 64);

  sub_22FB792E0(v2, type metadata accessor for TemplatedPrompt);
  sub_22FB78D5C(v3, v1);
  (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22FB77E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  type metadata accessor for CreativePromptTemplate(0);
  v5[7] = swift_task_alloc();
  v6 = sub_22FCC6FB4();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  sub_22FCC8494();
  v5[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8AD8, &qword_22FCD9BB8);
  v5[14] = swift_task_alloc();
  v7 = sub_22FCC84E4();
  v5[15] = v7;
  v5[16] = *(v7 - 8);
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB77FD0, 0, 0);
}

uint64_t sub_22FB77FD0(uint64_t a1)
{
  *(v1 + 144) = OBJC_IVAR____TtC13PhotoAnalysis23CreativePromptValidator_logger;
  v2 = sub_22FCC8664();
  v3 = sub_22FCC8F34();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22FA28000, v2, v3, "Validating prompt template by traits", v4, 2u);
    MEMORY[0x23190A000](v4, -1, -1);
  }

  v5 = *(v1 + 32);

  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_22FCC8414();
  sub_22FCC8FF4();
  v6 = *(v1 + 112);
  v7 = *(v1 + 24);
  v8 = [*(v1 + 40) childProgressReporterFromStart:0.3 toEnd:0.7];
  *(v1 + 152) = v8;
  v9 = *(v7 + 48);
  v10 = sub_22FCC6EF4();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8858, &unk_22FCD8150);
  v11 = sub_22FCC6F04();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v1 + 160) = v14;
  *(v14 + 16) = xmmword_22FCD1800;
  (*(v12 + 104))(v14 + v13, *MEMORY[0x277D3BF70], v11);
  *(swift_allocObject() + 16) = v8;
  v15 = v8;
  sub_22FCC84B4();
  v16 = swift_task_alloc();
  *(v1 + 168) = v16;
  *v16 = v1;
  v16[1] = sub_22FB783A4;
  v18 = *(v1 + 104);
  v17 = *(v1 + 112);
  v19 = *(v1 + 32);

  return MEMORY[0x28219C2F0](v9, v17, v14, 0, v19, v18);
}

uint64_t sub_22FB783A4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 112);
  *(v3 + 176) = a1;
  *(v3 + 184) = v1;

  sub_22FA2B420(v4, &qword_27DAD8AD8, &qword_22FCD9BB8);

  if (v1)
  {
    v5 = sub_22FB78C60;
  }

  else
  {
    v5 = sub_22FB7850C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_22FB7850C()
{
  v69 = v0;
  v1 = v0[22];
  v2 = *(v1 + 16);
  v63 = v1;
  if (!v2)
  {
    v5 = MEMORY[0x277D84F90];
LABEL_13:
    v16 = *(v5 + 16);
    v17 = MEMORY[0x277D84F90];
    if (!v16)
    {
      LODWORD(v34) = 0;
      v33 = v5;
LABEL_32:
      sub_22FB79278(v0[3], v0[7], type metadata accessor for CreativePromptTemplate);
      swift_bridgeObjectRetain_n();

      v35 = sub_22FCC8664();
      v36 = sub_22FCC8F34();
      v37 = os_log_type_enabled(v35, v36);
      v38 = v0[7];
      if (v37)
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v68[0] = v40;
        *v39 = 134219010;
        v67 = v34;
        v41 = *(v33 + 16);

        *(v39 + 4) = v41;

        *(v39 + 12) = 2048;
        v34 = *(v63 + 16);

        *(v39 + 14) = v34;

        *(v39 + 22) = 2048;
        v42 = *(v17 + 2);

        *(v39 + 24) = v42;

        *(v39 + 32) = 2080;
        v43 = *v38;
        v44 = v38[1];

        sub_22FB792E0(v38, type metadata accessor for CreativePromptTemplate);
        v45 = sub_22FA2F600(v43, v44, v68);

        *(v39 + 34) = v45;
        *(v39 + 42) = 2080;
        LOBYTE(v34) = v67;
        if (v67)
        {
          v46 = 0x44494C4156;
        }

        else
        {
          v46 = 0x44494C41564E49;
        }

        if (v67)
        {
          v47 = 0xE500000000000000;
        }

        else
        {
          v47 = 0xE700000000000000;
        }

        v48 = sub_22FA2F600(v46, v47, v68);

        *(v39 + 44) = v48;
        _os_log_impl(&dword_22FA28000, v35, v36, "Found %ld VALID global traits out of %ld total global traits with %ld assets for %s. This template is %s", v39, 0x34u);
        swift_arrayDestroy();
        MEMORY[0x23190A000](v40, -1, -1);
        MEMORY[0x23190A000](v39, -1, -1);
      }

      else
      {
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();

        sub_22FB792E0(v38, type metadata accessor for CreativePromptTemplate);
      }

      v49 = v0[23];
      sub_22FCC9004();
      if (v49)
      {
        v50 = v0[19];
        v51 = v0[17];
        v52 = v0[4];

        sub_22FB78D5C(v52, v51);
        (*(v0[16] + 8))(v0[17], v0[15]);
      }

      else
      {
        v54 = v0[19];
        v55 = v34;
        v57 = v0[16];
        v56 = v0[17];
        v61 = v0[15];
        v58 = v0[4];
        v59 = v0[2];
        sub_22FB79278(v0[3], v59, type metadata accessor for CreativePromptTemplate);

        v60 = type metadata accessor for CreativePromptValidationResult(0);
        *(v59 + v60[5]) = 0;
        *(v59 + v60[6]) = v55;
        *(v59 + v60[7]) = v17;
        *(v59 + v60[8]) = MEMORY[0x277D84F90];
        sub_22FB78D5C(v58, v56);
        (*(v57 + 8))(v56, v61);
      }

      v53 = v0[1];

      v53();
      return;
    }

    v18 = v0[9];
    v19 = *(v18 + 16);
    v18 += 16;
    v62 = v5;
    v20 = v5 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v64 = *(v18 + 56);
    v66 = v19;
    v21 = (v18 - 8);
    while (1)
    {
      v22 = v0[11];
      v23 = v0[8];
      v66(v22, v20, v23);
      v24 = sub_22FCC6FA4();
      (*v21)(v22, v23);
      v25 = *(v24 + 16);
      v26 = *(v17 + 2);
      v27 = v26 + v25;
      if (__OFADD__(v26, v25))
      {
        goto LABEL_48;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v27 <= *(v17 + 3) >> 1)
      {
        if (*(v24 + 16))
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v26 <= v27)
        {
          v29 = v26 + v25;
        }

        else
        {
          v29 = v26;
        }

        v17 = sub_22FAC1D0C(isUniquelyReferenced_nonNull_native, v29, 1, v17);
        if (*(v24 + 16))
        {
LABEL_26:
          if ((*(v17 + 3) >> 1) - *(v17 + 2) < v25)
          {
            goto LABEL_50;
          }

          swift_arrayInitWithCopy();

          if (v25)
          {
            v30 = *(v17 + 2);
            v31 = __OFADD__(v30, v25);
            v32 = v30 + v25;
            if (v31)
            {
              goto LABEL_51;
            }

            *(v17 + 2) = v32;
          }

          goto LABEL_16;
        }
      }

      if (v25)
      {
        goto LABEL_49;
      }

LABEL_16:
      v20 += v64;
      if (!--v16)
      {
        v33 = v62;
        LODWORD(v34) = *(v62 + 16) > 6uLL;
        goto LABEL_32;
      }
    }
  }

  v3 = 0;
  v4 = v0[9];
  v65 = (v4 + 32);
  v5 = MEMORY[0x277D84F90];
  while (v3 < *(v1 + 16))
  {
    v6 = v5;
    v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v8 = *(v4 + 72);
    (*(v4 + 16))(v0[12], v0[22] + v7 + v8 * v3, v0[8]);
    v9 = *(sub_22FCC6FA4() + 16);

    if (v9 < 0x14)
    {
      (*(v4 + 8))(v0[12], v0[8]);
      v5 = v6;
    }

    else
    {
      v10 = v2;
      v11 = *v65;
      (*v65)(v0[10], v0[12], v0[8]);
      v5 = v6;
      v68[0] = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22FA872C4(0, *(v6 + 16) + 1, 1);
        v5 = v68[0];
      }

      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_22FA872C4((v12 > 1), v13 + 1, 1);
        v5 = v68[0];
      }

      v14 = v0[10];
      v15 = v0[8];
      *(v5 + 16) = v13 + 1;
      v11(v5 + v7 + v13 * v8, v14, v15);
      v2 = v10;
      v1 = v63;
    }

    if (v2 == ++v3)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
}

uint64_t sub_22FB78C60()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 32);

  sub_22FB78D5C(v2, v1);
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22FB78D5C(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FCC83F4();
  return sub_22FCC9004();
}

uint64_t sub_22FB78F14()
{
  v1 = OBJC_IVAR____TtC13PhotoAnalysis23CreativePromptValidator_logger;
  v2 = sub_22FCC8684();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC13PhotoAnalysis23CreativePromptValidator_safetyController));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC13PhotoAnalysis23CreativePromptValidator_promptSuggestionValidator));

  return swift_deallocClassInstance();
}

uint64_t sub_22FB79008(uint64_t a1)
{
  result = sub_22FCC8684();
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

uint64_t sub_22FB790B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22FA2C21C;

  return sub_22FB74ED4(a1, a2, a3, a4);
}

uint64_t sub_22FB79174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22FA52F04;

  return sub_22FB71718(a1, a2, a3);
}

unint64_t sub_22FB79224()
{
  result = qword_27DAD8AE0;
  if (!qword_27DAD8AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8AE0);
  }

  return result;
}

uint64_t sub_22FB79278(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FB792E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22FB79340(uint64_t a1)
{
  v4 = *(type metadata accessor for CreativePromptTemplate(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + ((v6 + 47) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22FA2C21C;

  return sub_22FB7534C(a1, v7, v1 + v5, v1 + v6, v8);
}

uint64_t sub_22FB79468(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FA2C21C;

  return sub_22FB6E350(a1, v4, v5, v6);
}

uint64_t sub_22FB79528(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_22FCC8684() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v1 + 2);
  v8 = *(v1 + 3);
  v9 = v1[4];
  v10 = *(v1 + 5);
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_22FA2C21C;

  return sub_22FB6EF9C(v9, a1, v7, v8, v10, v1 + v6, v11);
}

uint64_t sub_22FB79664(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FA2C21C;

  return sub_22FB6F9D8(a1, v4, v5, v6);
}

uint64_t sub_22FB79720(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_21Tm()
{
  v1 = type metadata accessor for CreativePromptTemplate(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = *(v1 + 32);
  v6 = sub_22FCC74A4();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v3 + v5, v6);
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 47) & 0xFFFFFFFFFFFFFFF8;

  __swift_destroy_boxed_opaque_existential_0((v0 + v8));

  return MEMORY[0x2821FE8E8](v0, v9 + 8, v2 | 7);
}

uint64_t sub_22FB79900(uint64_t a1)
{
  v4 = *(type metadata accessor for CreativePromptTemplate(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + ((v6 + 47) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22FA2C030;

  return sub_22FB7534C(a1, v7, v1 + v5, v1 + v6, v8);
}

void sub_22FB79A28(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_22FB79A38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FB79AA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FA2C21C;

  return sub_22FB6E094(a1, v4, v5, v6);
}

uint64_t sub_22FB79B60(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_22FCC8684() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v1 + 2);
  v8 = *(v1 + 3);
  v9 = v1[4];
  v10 = *(v1 + 5);
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_22FA2C21C;

  return sub_22FB6EAD4(v9, a1, v7, v8, v10, v1 + v6, v11);
}

uint64_t sub_22FB79C9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FA2C21C;

  return sub_22FB6F6B8(a1, v4, v5, v6);
}

uint64_t objectdestroy_31Tm()
{
  v1 = sub_22FCC8684();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t get_enum_tag_for_layout_string_13PhotoAnalysis23CreativePromptValidatorC5ErrorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_22FB79E5C(uint64_t *a1, unsigned int a2)
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

uint64_t sub_22FB79EB0(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_22FB79F0C(void *result, int a2)
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

uint64_t WhimsicalPromptProvider.__allocating_init(templateCache:validator:)(void *a1, void *a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = a2[3];
  v9 = a2[4];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a2, v8);
  v11 = sub_22FB7BA84(v7, v10, v2, v5, v8, v6, v9);
  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v11;
}

uint64_t WhimsicalPromptProvider.init(templateCache:validator:)(void *a1, void *a2)
{
  v3 = v2;
  v7 = a1[3];
  v6 = a1[4];
  v8 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v9 = MEMORY[0x28223BE20](v8, v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v9);
  v13 = a2[3];
  v14 = a2[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a2, v13);
  v16 = MEMORY[0x28223BE20](v15, v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v16);
  v20 = sub_22FB7B950(v11, v18, v3, v7, v13, v6, v14);
  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v20;
}

uint64_t sub_22FB7A198(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_22FCC74C4();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8068, &unk_22FCD4840);
  v3[8] = swift_task_alloc();
  v5 = sub_22FCC7514();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = *(type metadata accessor for CreativePromptValidationResult(0) - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v6 = sub_22FCC68A4();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v7 = sub_22FCC84E4();
  v3[20] = v7;
  v3[21] = *(v7 - 8);
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB7A424, 0, 0);
}

uint64_t sub_22FB7A424(uint64_t a1)
{
  v1[23] = OBJC_IVAR____TtC13PhotoAnalysis23WhimsicalPromptProvider_logger;
  v2 = sub_22FCC8664();
  v3 = sub_22FCC8F34();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22FA28000, v2, v3, "Fetching whimsical suggestions.", v4, 2u);
    MEMORY[0x23190A000](v4, -1, -1);
  }

  v5 = v1[2];

  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_22FCC8414();
  sub_22FCC8FF4();
  v6 = v1[19];
  v7 = v1[16];
  v8 = v1[17];
  v9 = (v1[4] + OBJC_IVAR____TtC13PhotoAnalysis23WhimsicalPromptProvider_templateCache);
  v10 = v9[3];
  v11 = v9[4];
  __swift_project_boxed_opaque_existential_1(v9, v10);
  sub_22FCC6874();
  v12 = sub_22FCC6834();
  v14 = v13;
  v1[24] = v13;
  v15 = *(v8 + 8);
  v1[25] = v15;
  v1[26] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v6, v7);
  v19 = (*(v11 + 8) + **(v11 + 8));
  v16 = swift_task_alloc();
  v1[27] = v16;
  *v16 = v1;
  v16[1] = sub_22FB7A784;
  v17 = v1[2];

  return v19(v12, v14, v17, v10, v11);
}

uint64_t sub_22FB7A784(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = v1;

  if (v1)
  {
    v4 = sub_22FB7B4F8;
  }

  else
  {

    v4 = sub_22FB7A8A0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FB7A8A0()
{
  v39 = v0;
  v1 = *(v0 + 224);
  if (!*(v1 + 16))
  {

    v3 = sub_22FCC8664();
    v4 = sub_22FCC8F34();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 200);
      v6 = *(v0 + 144);
      v7 = *(v0 + 128);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v38 = v9;
      *v8 = 136315138;
      sub_22FCC6874();
      v10 = sub_22FCC6834();
      v12 = v11;
      v5(v6, v7);
      v13 = sub_22FA2F600(v10, v12, &v38);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_22FA28000, v3, v4, "No whimsical templates found! Current locale identifier: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x23190A000](v9, -1, -1);
      MEMORY[0x23190A000](v8, -1, -1);
    }

    v14 = *(v0 + 200);
    v15 = *(v0 + 144);
    v16 = *(v0 + 128);
    sub_22FCC6874();
    v17 = sub_22FCC6834();
    v19 = v18;
    v14(v15, v16);
    sub_22FB7BD50();
    swift_allocError();
    *v20 = v17;
    v20[1] = v19;
    swift_willThrow();
    goto LABEL_7;
  }

  v2 = *(v0 + 232);
  sub_22FCC8FF4();
  if (v2)
  {

LABEL_7:
    v21 = *(v0 + 168);
    v22 = *(v0 + 176);
    v23 = *(v0 + 160);
    __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
    sub_22FCC83F4();
    (*(v21 + 8))(v22, v23);

    v24 = *(v0 + 8);

    return v24();
  }

  v26 = sub_22FCC8664();
  v27 = sub_22FCC8F34();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134217984;
    *(v28 + 4) = *(v1 + 16);

    _os_log_impl(&dword_22FA28000, v26, v27, "Retrieved %ld whimsical templates.", v28, 0xCu);
    MEMORY[0x23190A000](v28, -1, -1);
  }

  else
  {
  }

  v29 = *(v0 + 24);
  v30 = (*(v0 + 32) + OBJC_IVAR____TtC13PhotoAnalysis23WhimsicalPromptProvider_validator);
  v31 = v30[3];
  v32 = v30[4];
  __swift_project_boxed_opaque_existential_1(v30, v31);
  v33 = [v29 childProgressReporterFromStart:0.3 toEnd:0.9];
  *(v0 + 240) = v33;
  v37 = (*(v32 + 16) + **(v32 + 16));
  v34 = swift_task_alloc();
  *(v0 + 248) = v34;
  *v34 = v0;
  v34[1] = sub_22FB7AD54;
  v35 = *(v0 + 224);
  v36 = *(v0 + 16);

  return v37(v35, v36, v33, v31, v32);
}

uint64_t sub_22FB7AD54(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 256) = a1;
  *(v3 + 264) = v1;

  if (v1)
  {
    v4 = sub_22FB7B62C;
  }

  else
  {

    v4 = sub_22FB7AE70;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FB7AE70()
{
  v60 = v0;
  result = *(v0 + 256);
  v58 = *(result + 16);
  if (v58)
  {
    v2 = 0;
    v56 = *(v0 + 104);
    v3 = *(v0 + 80);
    v4 = *(v0 + 48);
    v55 = *MEMORY[0x277D3C140];
    v53 = (v4 + 8);
    v54 = (v4 + 104);
    v51 = (v3 + 48);
    v52 = (v3 + 56);
    v48 = v3;
    v50 = (v3 + 32);
    v5 = *(v0 + 264);
    v6 = MEMORY[0x277D84F90];
    v57 = *(v0 + 256);
    while (v2 < *(result + 16))
    {
      v7 = *(v0 + 120);
      v9 = *(v0 + 56);
      v8 = *(v0 + 64);
      v10 = *(v0 + 40);
      sub_22FB7BC28(*(v0 + 256) + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v2, v7);
      (*v54)(v9, v55, v10);
      sub_22FB70628(v7, v9, v8);
      if (v5)
      {
        v12 = *(v0 + 112);
        v11 = *(v0 + 120);
        (*v53)(*(v0 + 56), *(v0 + 40));
        sub_22FB7BC28(v11, v12);
        v13 = sub_22FCC8664();
        v14 = sub_22FCC8F14();
        v15 = os_log_type_enabled(v13, v14);
        v16 = *(v0 + 112);
        if (v15)
        {
          v17 = swift_slowAlloc();
          v49 = v6;
          v18 = swift_slowAlloc();
          v59 = v18;
          *v17 = 136315138;
          v19 = CreativePromptValidationResult.description.getter();
          v21 = v20;
          sub_22FB7BC8C(v16);
          v22 = sub_22FA2F600(v19, v21, &v59);

          *(v17 + 4) = v22;
          _os_log_impl(&dword_22FA28000, v13, v14, "Failed to convert validation result to prompt suggestion %s", v17, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v18);
          v23 = v18;
          v6 = v49;
          MEMORY[0x23190A000](v23, -1, -1);
          MEMORY[0x23190A000](v17, -1, -1);
        }

        else
        {

          sub_22FB7BC8C(v16);
        }

        v24 = 1;
      }

      else
      {
        (*v53)(*(v0 + 56), *(v0 + 40));
        v24 = 0;
      }

      v25 = *(v0 + 120);
      v27 = *(v0 + 64);
      v26 = *(v0 + 72);
      (*v52)(v27, v24, 1, v26);
      sub_22FB7BC8C(v25);
      if ((*v51)(v27, 1, v26) == 1)
      {
        sub_22FB7BCE8(*(v0 + 64));
      }

      else
      {
        v29 = *(v0 + 88);
        v28 = *(v0 + 96);
        v30 = *(v0 + 72);
        v31 = *v50;
        (*v50)(v28, *(v0 + 64), v30);
        v31(v29, v28, v30);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_22FAC21D4(0, v6[2] + 1, 1, v6);
        }

        v33 = v6[2];
        v32 = v6[3];
        if (v33 >= v32 >> 1)
        {
          v6 = sub_22FAC21D4((v32 > 1), v33 + 1, 1, v6);
        }

        v34 = *(v0 + 88);
        v35 = *(v0 + 72);
        v6[2] = v33 + 1;
        v31(v6 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v33, v34, v35);
      }

      v5 = 0;
      ++v2;
      result = v57;
      if (v58 == v2)
      {
        v36 = 0;
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
    v36 = *(v0 + 264);
    v6 = MEMORY[0x277D84F90];
LABEL_20:

    v37 = sub_22FCC8664();
    v38 = sub_22FCC8F34();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 134217984;
      *(v39 + 4) = v6[2];

      _os_log_impl(&dword_22FA28000, v37, v38, "Validated %ld whimsical suggestions.", v39, 0xCu);
      MEMORY[0x23190A000](v39, -1, -1);
    }

    else
    {
    }

    sub_22FCC9004();
    if (v36)
    {

      v41 = *(v0 + 168);
      v40 = *(v0 + 176);
      v42 = *(v0 + 160);
      __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
      sub_22FCC83F4();
      (*(v41 + 8))(v40, v42);

      v43 = *(v0 + 8);

      return v43();
    }

    else
    {
      v44 = *(v0 + 168);
      v45 = *(v0 + 176);
      v46 = *(v0 + 160);
      __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
      sub_22FCC83F4();
      (*(v44 + 8))(v45, v46);

      v47 = *(v0 + 8);

      return v47(v6);
    }
  }

  return result;
}

uint64_t sub_22FB7B4F8()
{

  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);
  __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  sub_22FCC83F4();
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22FB7B62C()
{

  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);
  __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  sub_22FCC83F4();
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t WhimsicalPromptProvider.deinit()
{
  v1 = OBJC_IVAR____TtC13PhotoAnalysis23WhimsicalPromptProvider_logger;
  v2 = sub_22FCC8684();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC13PhotoAnalysis23WhimsicalPromptProvider_templateCache));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC13PhotoAnalysis23WhimsicalPromptProvider_validator));
  return v0;
}

uint64_t WhimsicalPromptProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC13PhotoAnalysis23WhimsicalPromptProvider_logger;
  v2 = sub_22FCC8684();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC13PhotoAnalysis23WhimsicalPromptProvider_templateCache));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC13PhotoAnalysis23WhimsicalPromptProvider_validator));

  return swift_deallocClassInstance();
}

uint64_t sub_22FB7B8A8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FA52F04;

  return sub_22FB7A198(a1, a2);
}

uint64_t sub_22FB7B950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a4;
  v21 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  v17 = a5;
  v18 = a7;
  v14 = __swift_allocate_boxed_opaque_existential_1(&v16);
  (*(*(a5 - 8) + 32))(v14, a2, a5);
  sub_22FCC8674();
  sub_22FA2CF78(&v19, a3 + OBJC_IVAR____TtC13PhotoAnalysis23WhimsicalPromptProvider_templateCache);
  sub_22FA2CF78(&v16, a3 + OBJC_IVAR____TtC13PhotoAnalysis23WhimsicalPromptProvider_validator);
  return a3;
}

uint64_t sub_22FB7BA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a7;
  v12 = *(a5 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WhimsicalPromptProvider(0);
  v21 = swift_allocObject();
  (*(v16 + 16))(v20, a1, a4);
  (*(v12 + 16))(v14, a2, a5);
  return sub_22FB7B950(v20, v14, v21, a4, a5, a6, v24);
}

uint64_t sub_22FB7BC28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CreativePromptValidationResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FB7BC8C(uint64_t a1)
{
  v2 = type metadata accessor for CreativePromptValidationResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FB7BCE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8068, &unk_22FCD4840);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22FB7BD50()
{
  result = qword_27DAD8AE8;
  if (!qword_27DAD8AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8AE8);
  }

  return result;
}

uint64_t dispatch thunk of WhimsicalPromptProviding.fetchSuggestions(eventRecorder:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22FAA3184;

  return v11(a1, a2, a3, a4);
}

uint64_t type metadata accessor for WhimsicalPromptProvider(uint64_t a1)
{
  result = qword_28147EE60;
  if (!qword_28147EE60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FB7BF28(uint64_t a1)
{
  result = sub_22FCC8684();
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

uint64_t dispatch thunk of WhimsicalPromptProvider.fetchSuggestions(eventRecorder:progressReporter:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 112) + **(*v2 + 112));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22FAA2728;

  return v8(a1, a2);
}

void sub_22FB7C1B4(_BYTE *a1, uint64_t a2, unint64_t a3)
{
  if (*a1 == 1)
  {
    sub_22FCC9384();

    MEMORY[0x231907FA0](0x7369206B73617420, 0xEE006B6375747320);
    sub_22FCC94D4();
    __break(1u);
  }

  else
  {
    v5 = sub_22FCC8F24();
    sub_22FA812F8();
    log = sub_22FCC91B4();
    if (os_log_type_enabled(log, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v9 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_22FA2F600(a2, a3, &v9);
      _os_log_impl(&dword_22FA28000, log, v5, "%s task is stuck", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x23190A000](v7, -1, -1);
      MEMORY[0x23190A000](v6, -1, -1);
    }
  }
}

uint64_t sub_22FB7C354()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_22FB7C4CC;
  }

  else
  {
    v2 = sub_22FB7C468;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FB7C468()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB7C4CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB7C530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_22FB7C558, 0, 0);
}

uint64_t sub_22FB7C558()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = *(v1 + 128);
  v0[7] = *(v1 + 136);

  v10 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_22FB7C674;
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];
  v8 = v0[2];

  return v10(v8, v5, v2, v7, v6);
}

uint64_t sub_22FB7C674()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_22FB7C7EC;
  }

  else
  {
    v2 = sub_22FB7C788;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FB7C788()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB7C7EC()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_22FB7C878()
{

  sub_22FA518B4(v0 + 88);

  __swift_destroy_boxed_opaque_existential_0((v0 + 144));

  return v0;
}

uint64_t sub_22FB7C8C8()
{
  sub_22FB7C878();

  return swift_deallocClassInstance();
}

uint64_t sub_22FB7C978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22FA2C21C;

  return sub_22FB7C530(a1, a2, a3, a4);
}

uint64_t sub_22FB7CA3C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_22FBAF968(a1, WitnessTable);
}

uint64_t sub_22FB7CA90(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_22FBAFB88(a1, a2, v2, WitnessTable);
}

uint64_t sub_22FB7CAF8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

BOOL sub_22FB7CB58()
{
  v1 = *v0;
  WitnessTable = swift_getWitnessTable();
  return sub_22FA2F538(v1, WitnessTable);
}

uint64_t sub_22FB7CBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 40) = a6;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  return MEMORY[0x2822009F8](sub_22FB7CBFC, a4, 0);
}

uint64_t sub_22FB7CBFC()
{
  v1 = *(*(v0 + 16) + 136);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_22FB7CCBC;
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);

  return sub_22FBCE47C(v4, v1, v3);
}

uint64_t sub_22FB7CCBC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22FB7CDB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[12] = a5;
  v6[13] = v5;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  v6[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB7CE54, v5, 0);
}

uint64_t sub_22FB7CE54()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 72);
    v2 = *(v0 + 80);
  }

  else
  {
    *(v0 + 56) = *(*(v0 + 104) + 152);
    v3 = sub_22FCC96C4();
    MEMORY[0x231907FA0](v3);

    v1 = 0x6F6974617265704FLL;
    v2 = 0xEA0000000000206ELL;
  }

  *(v0 + 120) = v2;
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 64);
  v7 = sub_22FCC8D14();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_22FA2D328(v6, v0 + 16);
  v8 = sub_22FA2CE7C(&qword_28147EFB8, 255, type metadata accessor for ServiceOperationManager, &unk_22FCD7218);
  v9 = swift_allocObject();
  v9[2] = v5;
  v9[3] = v8;
  v9[4] = v5;
  sub_22FA2CF78((v0 + 16), (v9 + 5));
  swift_retain_n();

  v10 = sub_22FB23288(0, 0, v4, &unk_22FCDAA38, v9);
  *(v0 + 128) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D8, &unk_22FCD4850);
  v11 = swift_allocObject();
  *(v0 + 136) = v11;
  *(v11 + 16) = xmmword_22FCD1800;
  v12 = v6[3];
  v13 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v12);
  v14 = *(v13 + 48);

  *(v11 + 32) = v14(v12, v13);
  *(v11 + 40) = v15;
  v16 = swift_task_alloc();
  *(v0 + 144) = v16;
  *v16 = v0;
  v16[1] = sub_22FB7D0F8;
  v17 = *(v0 + 96);
  v18 = *(v0 + 88);

  return sub_22FBE5628(v1, v2, v10, v11, v18, v17);
}

uint64_t sub_22FB7D0F8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[19] = v2;

  v7 = v6[13];
  if (v2)
  {
    v8 = sub_22FB7D2C8;
  }

  else
  {
    v6[20] = a2;
    v6[21] = a1;
    v8 = sub_22FB7D238;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_22FB7D238()
{

  v1 = v0[1];
  v3 = v0[20];
  v2 = v0[21];

  return v1(v2, v3);
}

uint64_t sub_22FB7D2C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB7D354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[12] = a5;
  v6[13] = v5;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  v6[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB7D3F8, v5, 0);
}

uint64_t sub_22FB7D3F8()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 72);
    v2 = *(v0 + 80);
  }

  else
  {
    *(v0 + 56) = *(*(v0 + 104) + 152);
    v3 = sub_22FCC96C4();
    MEMORY[0x231907FA0](v3);

    v1 = 0x6F6974617265704FLL;
    v2 = 0xEA0000000000206ELL;
  }

  *(v0 + 120) = v2;
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 64);
  v7 = sub_22FCC8D14();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_22FA2D328(v6, v0 + 16);
  v8 = sub_22FA2CE7C(&qword_28147EFB8, 255, type metadata accessor for ServiceOperationManager, &unk_22FCD7218);
  v9 = swift_allocObject();
  v9[2] = v5;
  v9[3] = v8;
  v9[4] = v5;
  sub_22FA2CF78((v0 + 16), (v9 + 5));
  swift_retain_n();

  v10 = sub_22FB23530(0, 0, v4, &unk_22FCDAA58, v9);
  *(v0 + 128) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D8, &unk_22FCD4850);
  v11 = swift_allocObject();
  *(v0 + 136) = v11;
  *(v11 + 16) = xmmword_22FCD1800;
  v12 = v6[3];
  v13 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v12);
  v14 = *(v13 + 48);

  *(v11 + 32) = v14(v12, v13);
  *(v11 + 40) = v15;
  v16 = swift_task_alloc();
  *(v0 + 144) = v16;
  *v16 = v0;
  v16[1] = sub_22FB7D69C;
  v17 = *(v0 + 96);
  v18 = *(v0 + 88);

  return sub_22FBE5BA0(v1, v2, v10, v11, v18, v17);
}

uint64_t sub_22FB7D69C(uint64_t a1)
{
  v4 = *v2;
  v4[19] = v1;

  v5 = v4[13];
  if (v1)
  {
    v6 = sub_22FBAC0C0;
  }

  else
  {
    v4[20] = a1;
    v6 = sub_22FBAC0BC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22FB7D7D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[12] = a5;
  v6[13] = v5;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  v6[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB7D87C, v5, 0);
}

uint64_t sub_22FB7D87C()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 72);
    v2 = *(v0 + 80);
  }

  else
  {
    *(v0 + 56) = *(*(v0 + 104) + 152);
    v3 = sub_22FCC96C4();
    MEMORY[0x231907FA0](v3);

    v1 = 0x6F6974617265704FLL;
    v2 = 0xEA0000000000206ELL;
  }

  *(v0 + 120) = v2;
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 64);
  v7 = sub_22FCC8D14();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_22FA2D328(v6, v0 + 16);
  v8 = sub_22FA2CE7C(&qword_28147EFB8, 255, type metadata accessor for ServiceOperationManager, &unk_22FCD7218);
  v9 = swift_allocObject();
  v9[2] = v5;
  v9[3] = v8;
  v9[4] = v5;
  sub_22FA2CF78((v0 + 16), (v9 + 5));
  swift_retain_n();

  v10 = sub_22FB2356C(0, 0, v4, &unk_22FCDA520, v9);
  *(v0 + 128) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D8, &unk_22FCD4850);
  v11 = swift_allocObject();
  *(v0 + 136) = v11;
  *(v11 + 16) = xmmword_22FCD1800;
  v12 = v6[3];
  v13 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v12);
  v14 = *(v13 + 48);

  *(v11 + 32) = v14(v12, v13);
  *(v11 + 40) = v15;
  v16 = swift_task_alloc();
  *(v0 + 144) = v16;
  *v16 = v0;
  v16[1] = sub_22FB7D69C;
  v17 = *(v0 + 96);
  v18 = *(v0 + 88);

  return sub_22FBE5FB0(v1, v2, v10, v11, v18, v17);
}

uint64_t sub_22FB7DB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[12] = a5;
  v6[13] = v5;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  v6[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB7DBC4, v5, 0);
}

uint64_t sub_22FB7DBC4()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 72);
    v2 = *(v0 + 80);
  }

  else
  {
    *(v0 + 56) = *(*(v0 + 104) + 152);
    v3 = sub_22FCC96C4();
    MEMORY[0x231907FA0](v3);

    v1 = 0x6F6974617265704FLL;
    v2 = 0xEA0000000000206ELL;
  }

  *(v0 + 120) = v2;
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 64);
  v7 = sub_22FCC8D14();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_22FA2D328(v6, v0 + 16);
  v8 = sub_22FA2CE7C(&qword_28147EFB8, 255, type metadata accessor for ServiceOperationManager, &unk_22FCD7218);
  v9 = swift_allocObject();
  v9[2] = v5;
  v9[3] = v8;
  v9[4] = v5;
  sub_22FA2CF78((v0 + 16), (v9 + 5));
  swift_retain_n();

  v10 = sub_22FB23580(0, 0, v4, &unk_22FCDA4F0, v9);
  *(v0 + 128) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D8, &unk_22FCD4850);
  v11 = swift_allocObject();
  *(v0 + 136) = v11;
  *(v11 + 16) = xmmword_22FCD1800;
  v12 = v6[3];
  v13 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v12);
  v14 = *(v13 + 48);

  *(v11 + 32) = v14(v12, v13);
  *(v11 + 40) = v15;
  v16 = swift_task_alloc();
  *(v0 + 144) = v16;
  *v16 = v0;
  v16[1] = sub_22FB7D69C;
  v17 = *(v0 + 96);
  v18 = *(v0 + 88);

  return sub_22FBE6294(v1, v2, v10, v11, v18, v17);
}

uint64_t sub_22FB7DE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[12] = a5;
  v6[13] = v5;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  v6[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB7DF0C, v5, 0);
}

uint64_t sub_22FB7DF0C()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 72);
    v2 = *(v0 + 80);
  }

  else
  {
    *(v0 + 56) = *(*(v0 + 104) + 152);
    v3 = sub_22FCC96C4();
    MEMORY[0x231907FA0](v3);

    v1 = 0x6F6974617265704FLL;
    v2 = 0xEA0000000000206ELL;
  }

  *(v0 + 120) = v2;
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 64);
  v7 = sub_22FCC8D14();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_22FA2D328(v6, v0 + 16);
  v8 = sub_22FA2CE7C(&qword_28147EFB8, 255, type metadata accessor for ServiceOperationManager, &unk_22FCD7218);
  v9 = swift_allocObject();
  v9[2] = v5;
  v9[3] = v8;
  v9[4] = v5;
  sub_22FA2CF78((v0 + 16), (v9 + 5));
  swift_retain_n();

  v10 = sub_22FB23594(0, 0, v4, &unk_22FCDA4B8, v9);
  *(v0 + 128) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D8, &unk_22FCD4850);
  v11 = swift_allocObject();
  *(v0 + 136) = v11;
  *(v11 + 16) = xmmword_22FCD1800;
  v12 = v6[3];
  v13 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v12);
  v14 = *(v13 + 48);

  *(v11 + 32) = v14(v12, v13);
  *(v11 + 40) = v15;
  v16 = swift_task_alloc();
  *(v0 + 144) = v16;
  *v16 = v0;
  v16[1] = sub_22FB7D69C;
  v17 = *(v0 + 96);
  v18 = *(v0 + 88);

  return sub_22FBE6578(v1, v2, v10, v11, v18, v17);
}

uint64_t sub_22FB7E1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[12] = a5;
  v6[13] = v5;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  v6[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB7E254, v5, 0);
}

uint64_t sub_22FB7E254()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 72);
    v2 = *(v0 + 80);
  }

  else
  {
    *(v0 + 56) = *(*(v0 + 104) + 152);
    v3 = sub_22FCC96C4();
    MEMORY[0x231907FA0](v3);

    v1 = 0x6F6974617265704FLL;
    v2 = 0xEA0000000000206ELL;
  }

  *(v0 + 120) = v2;
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 64);
  v7 = sub_22FCC8D14();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_22FA2D328(v6, v0 + 16);
  v8 = sub_22FA2CE7C(&qword_28147EFB8, 255, type metadata accessor for ServiceOperationManager, &unk_22FCD7218);
  v9 = swift_allocObject();
  v9[2] = v5;
  v9[3] = v8;
  v9[4] = v5;
  sub_22FA2CF78((v0 + 16), (v9 + 5));
  swift_retain_n();

  v10 = sub_22FB235A8(0, 0, v4, &unk_22FCDA480, v9);
  *(v0 + 128) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D8, &unk_22FCD4850);
  v11 = swift_allocObject();
  *(v0 + 136) = v11;
  *(v11 + 16) = xmmword_22FCD1800;
  v12 = v6[3];
  v13 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v12);
  v14 = *(v13 + 48);

  *(v11 + 32) = v14(v12, v13);
  *(v11 + 40) = v15;
  v16 = swift_task_alloc();
  *(v0 + 144) = v16;
  *v16 = v0;
  v16[1] = sub_22FB7E4F8;
  v17 = *(v0 + 96);
  v18 = *(v0 + 88);

  return sub_22FBE685C(v1, v2, v10, v11, v18, v17);
}

uint64_t sub_22FB7E4F8(uint64_t a1)
{
  v4 = *v2;
  v4[19] = v1;

  v5 = v4[13];
  if (v1)
  {
    v6 = sub_22FB7D2C8;
  }

  else
  {
    v4[20] = a1;
    v6 = sub_22FB7E634;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22FB7E634()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 160);

  return v1(v2);
}

uint64_t sub_22FB7E6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[12] = a5;
  v6[13] = v5;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  v6[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB7E768, v5, 0);
}

uint64_t sub_22FB7E768()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 72);
    v2 = *(v0 + 80);
  }

  else
  {
    *(v0 + 56) = *(*(v0 + 104) + 152);
    v3 = sub_22FCC96C4();
    MEMORY[0x231907FA0](v3);

    v1 = 0x6F6974617265704FLL;
    v2 = 0xEA0000000000206ELL;
  }

  *(v0 + 120) = v2;
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 64);
  v7 = sub_22FCC8D14();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_22FA2D328(v6, v0 + 16);
  v8 = sub_22FA2CE7C(&qword_28147EFB8, 255, type metadata accessor for ServiceOperationManager, &unk_22FCD7218);
  v9 = swift_allocObject();
  v9[2] = v5;
  v9[3] = v8;
  v9[4] = v5;
  sub_22FA2CF78((v0 + 16), (v9 + 5));
  swift_retain_n();

  v10 = sub_22FB235BC(0, 0, v4, &unk_22FCDA438, v9);
  *(v0 + 128) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D8, &unk_22FCD4850);
  v11 = swift_allocObject();
  *(v0 + 136) = v11;
  *(v11 + 16) = xmmword_22FCD1800;
  v12 = v6[3];
  v13 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v12);
  v14 = *(v13 + 48);

  *(v11 + 32) = v14(v12, v13);
  *(v11 + 40) = v15;
  v16 = swift_task_alloc();
  *(v0 + 144) = v16;
  *v16 = v0;
  v16[1] = sub_22FB7D69C;
  v17 = *(v0 + 96);
  v18 = *(v0 + 88);

  return sub_22FBE6DE8(v1, v2, v10, v11, v18, v17);
}

uint64_t sub_22FB7EA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[12] = a5;
  v6[13] = v5;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  v6[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB7EAB0, v5, 0);
}

uint64_t sub_22FB7EAB0()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 72);
    v2 = *(v0 + 80);
  }

  else
  {
    *(v0 + 56) = *(*(v0 + 104) + 152);
    v3 = sub_22FCC96C4();
    MEMORY[0x231907FA0](v3);

    v1 = 0x6F6974617265704FLL;
    v2 = 0xEA0000000000206ELL;
  }

  *(v0 + 120) = v2;
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 64);
  v7 = sub_22FCC8D14();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_22FA2D328(v6, v0 + 16);
  v8 = sub_22FA2CE7C(&qword_28147EFB8, 255, type metadata accessor for ServiceOperationManager, &unk_22FCD7218);
  v9 = swift_allocObject();
  v9[2] = v5;
  v9[3] = v8;
  v9[4] = v5;
  sub_22FA2CF78((v0 + 16), (v9 + 5));
  swift_retain_n();

  v10 = sub_22FB235D0(0, 0, v4, &unk_22FCDA3E8, v9);
  *(v0 + 128) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D8, &unk_22FCD4850);
  v11 = swift_allocObject();
  *(v0 + 136) = v11;
  *(v11 + 16) = xmmword_22FCD1800;
  v12 = v6[3];
  v13 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v12);
  v14 = *(v13 + 48);

  *(v11 + 32) = v14(v12, v13);
  *(v11 + 40) = v15;
  v16 = swift_task_alloc();
  *(v0 + 144) = v16;
  *v16 = v0;
  v16[1] = sub_22FB7D69C;
  v17 = *(v0 + 96);
  v18 = *(v0 + 88);

  return sub_22FBE70CC(v1, v2, v10, v11, v18, v17);
}

uint64_t sub_22FB7ED54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[12] = a5;
  v6[13] = v5;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  v6[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB7EDF8, v5, 0);
}

uint64_t sub_22FB7EDF8()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 72);
    v2 = *(v0 + 80);
  }

  else
  {
    *(v0 + 56) = *(*(v0 + 104) + 152);
    v3 = sub_22FCC96C4();
    MEMORY[0x231907FA0](v3);

    v1 = 0x6F6974617265704FLL;
    v2 = 0xEA0000000000206ELL;
  }

  *(v0 + 120) = v2;
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 64);
  v7 = sub_22FCC8D14();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_22FA2D328(v6, v0 + 16);
  v8 = sub_22FA2CE7C(&qword_28147EFB8, 255, type metadata accessor for ServiceOperationManager, &unk_22FCD7218);
  v9 = swift_allocObject();
  v9[2] = v5;
  v9[3] = v8;
  v9[4] = v5;
  sub_22FA2CF78((v0 + 16), (v9 + 5));
  swift_retain_n();

  v10 = sub_22FB235F0(0, 0, v4, &unk_22FCDA378, v9);
  *(v0 + 128) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D8, &unk_22FCD4850);
  v11 = swift_allocObject();
  *(v0 + 136) = v11;
  *(v11 + 16) = xmmword_22FCD1800;
  v12 = v6[3];
  v13 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v12);
  v14 = *(v13 + 48);

  *(v11 + 32) = v14(v12, v13);
  *(v11 + 40) = v15;
  v16 = swift_task_alloc();
  *(v0 + 144) = v16;
  *v16 = v0;
  v16[1] = sub_22FB7D69C;
  v17 = *(v0 + 96);
  v18 = *(v0 + 88);

  return sub_22FBE7868(v1, v2, v10, v11, v18, v17);
}

unint64_t sub_22FB7F09C(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v2)
    {
      sub_22FCC9384();

      v8 = 0xD000000000000012;
      v5 = sub_22FCC9904();
      MEMORY[0x231907FA0](v5);

      MEMORY[0x231907FA0](0x206E65687720, 0xE600000000000000);
      v6 = sub_22FCC9904();
      MEMORY[0x231907FA0](v6);

      MEMORY[0x231907FA0](0x6570786520736920, 0xEC00000064657463);
      return v8;
    }

    sub_22FCC9384();

    v3 = 0xD000000000000018;
LABEL_6:
    v8 = v3;
    v4 = sub_22FCC96C4();
    MEMORY[0x231907FA0](v4);

    return v8;
  }

  if (v2 == 2)
  {
    sub_22FCC9384();

    v3 = 0xD00000000000001FLL;
    goto LABEL_6;
  }

  if (a1 | a2 ^ 0xC000000000000000)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_22FB7F294(uint64_t a1)
{
  v2 = sub_22FBABF4C();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22FB7F2D0(uint64_t a1)
{
  v2 = sub_22FBABF4C();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22FB7F314()
{
  v1 = v0[1];
  v2 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    if (v2 == 2)
    {
      return 106;
    }

    else if (*v0 | v1 ^ 0xC000000000000000)
    {
      return 102;
    }

    else
    {
      return 100;
    }
  }

  else if (v2)
  {
    return 105;
  }

  else
  {
    return 101;
  }
}

uint64_t sub_22FB7F368(uint64_t a1)
{
  v2 = sub_22FBABFF8();

  return MEMORY[0x28219CB78](a1, v2);
}

void *sub_22FB7F3A4()
{
  type metadata accessor for InstanceCounter();
  result = swift_allocObject();
  result[2] = 0xD000000000000012;
  result[3] = 0x800000022FCDA040;
  result[4] = 0;
  qword_281487ED8 = result;
  return result;
}

void *sub_22FB7F3F4()
{
  if (qword_28147FF70 != -1)
  {
    swift_once();
  }

  sub_22FB5A80C();

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_22FB7F494()
{
  sub_22FB7F3F4();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22FB7F4E0()
{
  v1 = *(*(v0 + 40) + 168);
  *(v0 + 48) = v1;
  return MEMORY[0x2822009F8](sub_22FB7F504, v1, 0);
}

uint64_t sub_22FB7F504()
{
  v12 = v0;
  v1 = v0[6];
  swift_beginAccess();
  v2 = *(v1 + 144);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_22FA86D94(*(v2 + 16), 0);
    v5 = sub_22FA88AB8(&v11, (v4 + 4), v3, v2);
    v6 = v11;

    sub_22FA37D64(v6);
    if (v5 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = MEMORY[0x277D84F90];
LABEL_5:
  v0[7] = v4;
  v7 = *(v0[6] + 128);
  sub_22FA2CE7C(&qword_28147EFB8, 255, type metadata accessor for ServiceOperationManager, &unk_22FCD7218);
  v8 = swift_task_alloc();
  v0[8] = v8;
  *(v8 + 16) = v4;
  *(v8 + 24) = v7;
  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_22FB7F6D8;
  v14 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200600]();
}

uint64_t sub_22FB7F6D8()
{
  v1 = *(*v0 + 48);

  return MEMORY[0x2822009F8](sub_22FB7F828, v1, 0);
}

uint64_t sub_22FB7F844()
{
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_22FB7F8D8;

  return sub_22FBCDF54();
}

uint64_t sub_22FB7F8D8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22FB7FB64(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 72) = a2;
  *(v4 + 80) = v3;
  *(v4 + 64) = a1;
  *(v4 + 56) = a3;
  *(v4 + 88) = *v3;
  return MEMORY[0x2822009F8](sub_22FB7FBB4, 0, 0);
}

uint64_t sub_22FB7FBB4()
{
  v1 = v0[11];
  v2 = *(v0[10] + 128);
  v3 = *(*(v2 + 112) + 112);
  v0[12] = v3;
  v0[5] = type metadata accessor for MomentGraphWorker();
  v0[6] = sub_22FA2CE7C(&qword_281480230, 255, type metadata accessor for MomentGraphWorker, &unk_22FCD3AB8);
  v0[2] = v2;
  v4 = swift_allocObject();
  v0[13] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v5 = v3;

  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_22FA732CC;
  v7 = v0[9];
  v8 = v0[8];
  v9.n128_u64[0] = v0[7];

  return (sub_22FBDB8C0)(v0 + 2, v8, v7, sub_22FBA76EC, v4, v9);
}

uint64_t sub_22FB7FD28(void *a1, uint64_t a2)
{
  v4 = sub_22FCC8684();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22FA2CE7C(&qword_28147FF30, v9, type metadata accessor for MomentGraphService, &unk_22FCDA1C0);
  sub_22FA2CEC4(a2, v10);
  v11 = a1;
  v12 = sub_22FCC8664();
  v13 = sub_22FCC8F34();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = [v11 isReady];

    _os_log_impl(&dword_22FA28000, v12, v13, "Running with graph ready: %{BOOL}d", v14, 8u);
    MEMORY[0x23190A000](v14, -1, -1);
  }

  else
  {

    v12 = v11;
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_22FB8007C(uint64_t a1, void *aBlock, uint64_t a3, double a4)
{
  v4[2] = a3;
  v4[3] = _Block_copy(aBlock);
  v6 = sub_22FCC8A84();
  v8 = v7;
  v4[4] = v7;

  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_22FA73900;

  return sub_22FB7FB64(v6, v8, a4);
}

uint64_t sub_22FB80160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[25] = a3;
  v4[26] = v3;
  v4[23] = a1;
  v4[24] = a2;
  v4[27] = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  v4[28] = swift_task_alloc();
  v5 = sub_22FCC8684();
  v4[29] = v5;
  v4[30] = *(v5 - 8);
  v4[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB80284, 0, 0);
}

uint64_t sub_22FB80284(uint64_t a1, uint64_t a2)
{
  v56 = v2;
  v3 = *(v2 + 216);
  v4 = sub_22FA2CE7C(&qword_28147FF30, a2, type metadata accessor for MomentGraphService, &unk_22FCDA1C0);
  sub_22FA2CEC4(v3, v4);

  v5 = sub_22FCC8664();
  v6 = sub_22FCC8EF4();

  v7 = os_log_type_enabled(v5, v6);
  v9 = *(v2 + 240);
  v8 = *(v2 + 248);
  v10 = *(v2 + 232);
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v53 = v12;
    *v11 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7478, &qword_22FCD65B0);
    v13 = sub_22FCC89E4();
    v15 = sub_22FA2F600(v13, v14, &v53);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_22FA28000, v5, v6, "Graph - performGraphRebuild (options: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23190A000](v12, -1, -1);
    MEMORY[0x23190A000](v11, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  v16 = *(v2 + 184);
  v17 = sub_22FCC8A84();
  v19 = MEMORY[0x277D84F90];
  if (!*(v16 + 16))
  {

LABEL_11:
    v26 = 0;
    *(v2 + 160) = v19;
    goto LABEL_12;
  }

  v8 = v18;
  v20 = sub_22FA2DB54(v17, v18);
  v22 = v21;

  if ((v22 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_22FA2F7D8(*(*(v2 + 184) + 56) + 32 * v20, v2 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7478, &qword_22FCD65B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7448, &qword_22FCD2C50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v8 = (v2 + 144);
  v23 = *(v2 + 176);
  *(v2 + 128) = sub_22FCC8A84();
  *(v2 + 136) = v24;
  v25 = swift_task_alloc();
  *(v25 + 16) = v2 + 128;
  v26 = sub_22FB34410(sub_22FAC5684, v25, v23);

  *(v2 + 144) = sub_22FCC8A84();
  *(v2 + 152) = v27;
  v28 = swift_task_alloc();
  *(v28 + 16) = v2 + 144;
  v29 = sub_22FB34410(sub_22FAC5684, v28, v23);

  *(v2 + 160) = v19;
  if (v29)
  {
    [objc_allocWithZone(PHAGraphInternalConsistencyUpdateTask) init];
    MEMORY[0x231908070]();
    if (*((*(v2 + 160) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 160) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v8 = *((*(v2 + 160) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22FCC8C64();
    }

    sub_22FCC8C84();
  }

LABEL_12:
  [objc_allocWithZone(PHAGraphRebuildTask) initWithMode_];
  MEMORY[0x231908070]();
  if (*((*(v2 + 160) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 160) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v8 = *((*(v2 + 160) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22FCC8C64();
  }

  sub_22FCC8C84();
  if ((v26 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D0, &unk_22FCD2160);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_22FCD9FE0;
    *(v30 + 32) = [objc_allocWithZone(PHAAssetRevGeocodeEnrichmentTask) init];
    *(v30 + 40) = [objc_allocWithZone(PHAPeopleSuggestionEnrichmentTask) init];
    *(v30 + 48) = [objc_allocWithZone(PHAHighlightEnrichmentTask) init];
    *(v30 + 56) = [objc_allocWithZone(PHAHighlightCollectionEnrichmentTask) init];
    *(v30 + 64) = [objc_allocWithZone(PHASearchEnrichmentTask) init];
    *(v30 + 72) = [objc_allocWithZone(PHAPortraitDonationEnrichmentTask) init];
    sub_22FA68A30(v30, v31);
  }

  v32 = *(*(v2 + 208) + 128);
  v33 = *(v32 + 112);
  *(v2 + 256) = v33;
  v34 = *(v33 + 112);
  *(v2 + 264) = v34;
  *(v2 + 168) = v19;
  v35 = *(v2 + 160);
  if (v35 >> 62)
  {
    v36 = sub_22FCC92C4();
    if (v36)
    {
      goto LABEL_18;
    }

LABEL_26:

    v43 = v34;

    v42 = MEMORY[0x277D84F90];
    goto LABEL_27;
  }

  v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v36)
  {
    goto LABEL_26;
  }

LABEL_18:
  v52 = v19;

  v37 = v34;
  v38 = &v52;
  sub_22FCC9414();
  if (v36 < 0)
  {
    __break(1u);
LABEL_37:
    v8 = sub_22FAC2350(0, v8[2] + 1, 1, v8);
    goto LABEL_30;
  }

  v51 = v26;
  v39 = 0;
  do
  {
    if ((v35 & 0xC000000000000001) != 0)
    {
      v40 = MEMORY[0x231908810](v39, v35);
    }

    else
    {
      v40 = *(v35 + 8 * v39 + 32);
      swift_unknownObjectRetain();
    }

    ++v39;
    v55 = 0;
    v53 = 0u;
    v54 = 0u;
    swift_getObjectType();
    v41 = v37;

    sub_22FAE1278(v40, v32, v41, &v53);
    sub_22FCC93F4();
    sub_22FCC9424();
    sub_22FCC9434();
    sub_22FCC9404();
  }

  while (v36 != v39);

  v42 = v52;
  v26 = v51;
LABEL_27:
  v44 = sub_22FB607B0(v42);

  sub_22FA68214(v44);
  if (v26)
  {
    v8 = *(v2 + 168);
    goto LABEL_33;
  }

  v38 = type metadata accessor for GraphSearchEntityRankingDonationTask();
  v53 = 0u;
  v54 = 0u;
  v55 = 0;
  v45 = swift_allocObject();

  v32 = sub_22FBD5714(v46, v33, &v53, v45);
  v8 = *(v2 + 168);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_30:
  v48 = v8[2];
  v47 = v8[3];
  if (v48 >= v47 >> 1)
  {
    v8 = sub_22FAC2350((v47 > 1), v48 + 1, 1, v8);
  }

  *(v2 + 40) = v38;
  *(v2 + 48) = sub_22FA2CE7C(&qword_28147C788, 255, type metadata accessor for GraphSearchEntityRankingDonationTask, &unk_22FCDD190);
  *(v2 + 16) = v32;
  v8[2] = v48 + 1;
  sub_22FA2CF78((v2 + 16), &v8[5 * v48 + 4]);
  *(v2 + 168) = v8;
LABEL_33:
  *(v2 + 272) = v8;
  v49 = *(*(v2 + 208) + 168);
  *(v2 + 280) = v49;

  return MEMORY[0x2822009F8](sub_22FB80A60, v49, 0);
}

uint64_t sub_22FB80A60()
{
  v1 = v0[34];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v23 = MEMORY[0x277D84F90];
    sub_22FA86EA8(0, v2, 0);
    v3 = v23;
    v4 = v1 + 32;
    do
    {
      sub_22FA2D328(v4, (v0 + 7));
      v5 = v0[10];
      v6 = v0[11];
      __swift_project_boxed_opaque_existential_1(v0 + 7, v5);
      v7 = (*(v6 + 48))(v5, v6);
      v9 = v8;
      __swift_destroy_boxed_opaque_existential_0(v0 + 7);
      v11 = *(v23 + 16);
      v10 = *(v23 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_22FA86EA8((v10 > 1), v11 + 1, 1);
      }

      *(v23 + 16) = v11 + 1;
      v12 = v23 + 16 * v11;
      *(v12 + 32) = v7;
      *(v12 + 40) = v9;
      v4 += 40;
      --v2;
    }

    while (v2);
    v1 = v0[34];
  }

  v0[36] = v3;
  v13 = v0[35];
  v14 = v0[28];
  v15 = sub_22FCC8D14();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = sub_22FA2CE7C(&qword_28147EFB8, 255, type metadata accessor for ServiceOperationManager, &unk_22FCD7218);
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  *(v17 + 24) = v16;
  *(v17 + 32) = v13;
  *(v17 + 40) = v1;
  *(v17 + 48) = 1;
  swift_retain_n();
  v18 = sub_22FB22A48(0, 0, v14, &unk_22FCDA570, v17);
  v0[37] = v18;
  v19 = swift_task_alloc();
  v0[38] = v19;
  *v19 = v0;
  v19[1] = sub_22FB80CF4;
  v20 = v0[24];
  v21 = v0[25];

  return sub_22FBE5228(v19, 0xD000000000000013, 0x800000022FCE6C90, v18, v3, v20, v21);
}

uint64_t sub_22FB80CF4()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  v3 = *(v2 + 280);
  if (v0)
  {
    v4 = sub_22FB80E90;
  }

  else
  {
    v4 = sub_22FB80E20;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FB80E20()
{

  return MEMORY[0x2822009F8](sub_22FBAC0D0, 0, 0);
}

uint64_t sub_22FB80E90()
{

  return MEMORY[0x2822009F8](sub_22FBAC0CC, 0, 0);
}

uint64_t sub_22FB81094(uint64_t a1, uint64_t a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7478, &qword_22FCD65B0);
  v5 = sub_22FCC89D4();
  v4[4] = v5;
  v6 = sub_22FCC8A84();
  v8 = v7;
  v4[5] = v7;

  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_22FBAC0A8;

  return sub_22FB80160(v5, v6, v8);
}

uint64_t sub_22FB811B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[25] = a3;
  v4[26] = v3;
  v4[23] = a1;
  v4[24] = a2;
  v4[27] = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  v4[28] = swift_task_alloc();
  v5 = sub_22FCC8684();
  v4[29] = v5;
  v4[30] = *(v5 - 8);
  v4[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB812D4, 0, 0);
}

uint64_t sub_22FB812D4(uint64_t a1, uint64_t a2)
{
  v57 = v2;
  v3 = *(v2 + 216);
  v4 = sub_22FA2CE7C(&qword_28147FF30, a2, type metadata accessor for MomentGraphService, &unk_22FCDA1C0);
  sub_22FA2CEC4(v3, v4);

  v5 = sub_22FCC8664();
  v6 = sub_22FCC8EF4();

  v7 = os_log_type_enabled(v5, v6);
  v9 = *(v2 + 240);
  v8 = *(v2 + 248);
  v10 = *(v2 + 232);
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v54 = v12;
    *v11 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7478, &qword_22FCD65B0);
    v13 = sub_22FCC89E4();
    v15 = sub_22FA2F600(v13, v14, &v54);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_22FA28000, v5, v6, "Graph - performGraphIncrementalUpdate (options: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23190A000](v12, -1, -1);
    MEMORY[0x23190A000](v11, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  v16 = *(v2 + 184);
  v17 = sub_22FCC8A84();
  if (!*(v16 + 16))
  {

LABEL_11:
    v29 = 0;
    v26 = 0;
    goto LABEL_12;
  }

  v19 = sub_22FA2DB54(v17, v18);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_22FA2F7D8(*(*(v2 + 184) + 56) + 32 * v19, v2 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7478, &qword_22FCD65B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7448, &qword_22FCD2C50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v22 = *(v2 + 176);
  *(v2 + 128) = sub_22FCC8A84();
  *(v2 + 136) = v23;
  v24 = swift_task_alloc();
  *(v24 + 16) = v2 + 128;
  v25 = sub_22FB34410(sub_22FA7EDC8, v24, v22);

  if (v25)
  {
    v26 = 2;
  }

  else
  {
    v26 = 0;
  }

  *(v2 + 144) = sub_22FCC8A84();
  *(v2 + 152) = v27;
  v28 = swift_task_alloc();
  *(v28 + 16) = v2 + 144;
  v29 = sub_22FB34410(sub_22FAC5684, v28, v22);

LABEL_12:
  v30 = MEMORY[0x277D84F90];
  *(v2 + 160) = MEMORY[0x277D84F90];
  [objc_allocWithZone(PHAGraphRebuildTask) initWithMode_];
  MEMORY[0x231908070]();
  if (*((*(v2 + 160) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 160) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22FCC8C64();
  }

  sub_22FCC8C84();
  if ((v29 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D0, &unk_22FCD2160);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_22FCD9FF0;
    *(v31 + 32) = [objc_allocWithZone(PHAAssetRevGeocodeEnrichmentTask) init];
    *(v31 + 40) = [objc_allocWithZone(PHAHighlightEnrichmentTask) init];
    *(v31 + 48) = [objc_allocWithZone(PHAHighlightCollectionEnrichmentTask) init];
    *(v31 + 56) = [objc_allocWithZone(PHASearchEnrichmentTask) init];
    sub_22FA68A30(v31, v32);
  }

  v33 = *(*(v2 + 208) + 128);
  v34 = *(v33 + 112);
  *(v2 + 256) = v34;
  v35 = *(v34 + 112);
  *(v2 + 264) = v35;
  *(v2 + 168) = v30;
  v36 = *(v2 + 160);
  if (v36 >> 62)
  {
    v37 = sub_22FCC92C4();
    if (v37)
    {
      goto LABEL_18;
    }

LABEL_26:

    v44 = v35;

    v43 = MEMORY[0x277D84F90];
    goto LABEL_27;
  }

  v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v37)
  {
    goto LABEL_26;
  }

LABEL_18:
  v53 = v30;

  v38 = v35;
  v39 = &v53;
  sub_22FCC9414();
  if (v37 < 0)
  {
    __break(1u);
LABEL_37:
    v30 = sub_22FAC2350(0, v30[2] + 1, 1, v30);
    goto LABEL_30;
  }

  v52 = v29;
  v40 = 0;
  do
  {
    if ((v36 & 0xC000000000000001) != 0)
    {
      v41 = MEMORY[0x231908810](v40, v36);
    }

    else
    {
      v41 = *(v36 + 8 * v40 + 32);
      swift_unknownObjectRetain();
    }

    ++v40;
    v56 = 0;
    v54 = 0u;
    v55 = 0u;
    swift_getObjectType();
    v42 = v38;

    sub_22FAE1278(v41, v33, v42, &v54);
    sub_22FCC93F4();
    sub_22FCC9424();
    sub_22FCC9434();
    sub_22FCC9404();
  }

  while (v37 != v40);

  v43 = v53;
  v29 = v52;
LABEL_27:
  v45 = sub_22FB607B0(v43);

  sub_22FA68214(v45);
  if (v29)
  {
    v30 = *(v2 + 168);
    goto LABEL_33;
  }

  v39 = type metadata accessor for GraphSearchEntityRankingDonationTask();
  v54 = 0u;
  v55 = 0u;
  v56 = 0;
  v46 = swift_allocObject();

  v33 = sub_22FBD5714(v47, v34, &v54, v46);
  v30 = *(v2 + 168);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_30:
  v49 = v30[2];
  v48 = v30[3];
  if (v49 >= v48 >> 1)
  {
    v30 = sub_22FAC2350((v48 > 1), v49 + 1, 1, v30);
  }

  *(v2 + 40) = v39;
  *(v2 + 48) = sub_22FA2CE7C(&qword_28147C788, 255, type metadata accessor for GraphSearchEntityRankingDonationTask, &unk_22FCDD190);
  *(v2 + 16) = v33;
  v30[2] = v49 + 1;
  sub_22FA2CF78((v2 + 16), &v30[5 * v49 + 4]);
  *(v2 + 168) = v30;
LABEL_33:
  *(v2 + 272) = v30;
  v50 = *(*(v2 + 208) + 168);
  *(v2 + 280) = v50;

  return MEMORY[0x2822009F8](sub_22FB81A1C, v50, 0);
}

uint64_t sub_22FB81A1C()
{
  v1 = v0[34];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v23 = MEMORY[0x277D84F90];
    sub_22FA86EA8(0, v2, 0);
    v3 = v23;
    v4 = v1 + 32;
    do
    {
      sub_22FA2D328(v4, (v0 + 7));
      v5 = v0[10];
      v6 = v0[11];
      __swift_project_boxed_opaque_existential_1(v0 + 7, v5);
      v7 = (*(v6 + 48))(v5, v6);
      v9 = v8;
      __swift_destroy_boxed_opaque_existential_0(v0 + 7);
      v11 = *(v23 + 16);
      v10 = *(v23 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_22FA86EA8((v10 > 1), v11 + 1, 1);
      }

      *(v23 + 16) = v11 + 1;
      v12 = v23 + 16 * v11;
      *(v12 + 32) = v7;
      *(v12 + 40) = v9;
      v4 += 40;
      --v2;
    }

    while (v2);
    v1 = v0[34];
  }

  v0[36] = v3;
  v13 = v0[35];
  v14 = v0[28];
  v15 = sub_22FCC8D14();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = sub_22FA2CE7C(&qword_28147EFB8, 255, type metadata accessor for ServiceOperationManager, &unk_22FCD7218);
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  *(v17 + 24) = v16;
  *(v17 + 32) = v13;
  *(v17 + 40) = v1;
  *(v17 + 48) = 1;
  swift_retain_n();
  v18 = sub_22FB22A48(0, 0, v14, &unk_22FCDA568, v17);
  v0[37] = v18;
  v19 = swift_task_alloc();
  v0[38] = v19;
  *v19 = v0;
  v19[1] = sub_22FB81CB0;
  v20 = v0[24];
  v21 = v0[25];

  return sub_22FBE5228(v19, 0xD00000000000001DLL, 0x800000022FCE6C70, v18, v3, v20, v21);
}

uint64_t sub_22FB81CB0()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  v3 = *(v2 + 280);
  if (v0)
  {
    v4 = sub_22FB81ED8;
  }

  else
  {
    v4 = sub_22FB81DDC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FB81DDC()
{

  return MEMORY[0x2822009F8](sub_22FB81E4C, 0, 0);
}

uint64_t sub_22FB81E4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB81ED8()
{

  return MEMORY[0x2822009F8](sub_22FB81F48, 0, 0);
}

uint64_t sub_22FB81F48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB82168(uint64_t a1, uint64_t a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7478, &qword_22FCD65B0);
  v5 = sub_22FCC89D4();
  v4[4] = v5;
  v6 = sub_22FCC8A84();
  v8 = v7;
  v4[5] = v7;

  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_22FA75868;

  return sub_22FB811B0(v5, v6, v8);
}

uint64_t sub_22FB82284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  v4[21] = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  v4[22] = swift_task_alloc();
  v5 = sub_22FCC8684();
  v4[23] = v5;
  v4[24] = *(v5 - 8);
  v4[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB823A8, 0, 0);
}

uint64_t sub_22FB823A8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 168);
  v4 = sub_22FA2CE7C(&qword_28147FF30, a2, type metadata accessor for MomentGraphService, &unk_22FCDA1C0);
  sub_22FA2CEC4(v3, v4);
  v5 = sub_22FCC8664();
  v6 = sub_22FCC8EF4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22FA28000, v5, v6, "Graph - performMemoryNodesRebuild", v7, 2u);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  v9 = *(v2 + 192);
  v8 = *(v2 + 200);
  v10 = *(v2 + 184);
  v11 = *(v2 + 136);

  v12 = (*(v9 + 8))(v8, v10);
  if (v11 < 0)
  {
    __break(1u);
    return MEMORY[0x2822009F8](v12, v13, v14);
  }

  v15 = *(v2 + 136);
  if (PHMemoryValidatedMemoryCategory() == v15)
  {
    v16 = *(v2 + 160);
    v17 = *(v2 + 168);
    v19 = *(v2 + 144);
    v18 = *(v2 + 152);
    v20 = *(v2 + 136);
    v21 = v16[16];
    v22 = *(*(v21 + 112) + 112);
    *(v2 + 208) = v22;
    v34 = v20;
    v35 = v16[14];
    v36 = v16[15];
    v23 = v22;

    MEMORY[0x231907FA0](58, 0xE100000000000000);
    MEMORY[0x231907FA0](v19, v18);
    *(v2 + 40) = type metadata accessor for MomentGraphWorker();
    *(v2 + 48) = sub_22FA2CE7C(&qword_281480230, 255, type metadata accessor for MomentGraphWorker, &unk_22FCD3AB8);
    *(v2 + 16) = v21;
    v24 = swift_allocObject();
    *(v24 + 16) = v17;
    v25 = swift_allocObject();
    *(v25 + 16) = v23;
    *(v25 + 24) = v34;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD76C0, &qword_22FCD2C80);
    v27 = swift_allocObject();
    *(v2 + 216) = v27;
    *(v27 + 48) = 0;
    *(v27 + 56) = 0;
    *(v27 + 16) = 0xD000000000000014;
    *(v27 + 24) = 0x800000022FCE6C10;
    *(v27 + 32) = v35;
    *(v27 + 40) = v36;
    *(v27 + 64) = 0;
    *(v27 + 72) = 0;
    *(v27 + 80) = 0;
    *(v27 + 88) = 0u;
    *(v27 + 104) = 0u;
    *(v27 + 120) = 0;
    sub_22FA2CF78((v2 + 16), v27 + 144);
    *(v27 + 128) = &unk_22FCDA540;
    *(v27 + 136) = v25;
    *(v27 + 184) = sub_22FBA74B8;
    *(v27 + 192) = v24;
    v28 = v16[21];
    *(v2 + 224) = v28;
    *(v2 + 80) = v26;
    *(v2 + 88) = sub_22FA2CF90(&qword_281481680, &qword_27DAD76C0, &qword_22FCD2C80, &unk_22FCD9FA8);
    *(v2 + 56) = v27;
    v29 = v23;

    v12 = sub_22FB82790;
    v13 = v28;
    v14 = 0;

    return MEMORY[0x2822009F8](v12, v13, v14);
  }

  v30 = *(v2 + 136);
  sub_22FBA4C28();
  swift_allocError();
  *v31 = v30;
  v31[1] = 0;
  swift_willThrow();

  v32 = *(v2 + 8);

  return v32();
}

uint64_t sub_22FB82790()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 176);
  v4 = sub_22FCC8D14();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_22FA2D328(v0 + 56, v0 + 96);
  v5 = sub_22FA2CE7C(&qword_28147EFB8, 255, type metadata accessor for ServiceOperationManager, &unk_22FCD7218);
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v5;
  v6[4] = v1;
  sub_22FA2CF78((v0 + 96), (v6 + 5));
  swift_retain_n();
  v7 = sub_22FB22A48(0, 0, v3, &unk_22FCDA548, v6);
  *(v0 + 232) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D8, &unk_22FCD4850);
  v8 = swift_allocObject();
  *(v0 + 240) = v8;
  *(v8 + 16) = xmmword_22FCD1800;
  v9 = *(v2 + 40);
  *(v8 + 32) = *(v2 + 32);
  *(v8 + 40) = v9;

  v10 = swift_task_alloc();
  *(v0 + 248) = v10;
  *v10 = v0;
  v10[1] = sub_22FB8299C;
  v11 = *(v0 + 144);
  v12 = *(v0 + 152);

  return sub_22FBE5228(v10, 0xD000000000000019, 0x800000022FCE6C30, v7, v8, v11, v12);
}

uint64_t sub_22FB8299C()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 224);
  if (v0)
  {
    v4 = sub_22FB82BD0;
  }

  else
  {
    v4 = sub_22FB82AC8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FB82AC8()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return MEMORY[0x2822009F8](sub_22FB82B44, 0, 0);
}

uint64_t sub_22FB82B44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB82BD0()
{

  return MEMORY[0x2822009F8](sub_22FB82C44, 0, 0);
}

uint64_t sub_22FB82C44()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB82CCC(char a1, uint64_t a2)
{
  v4 = sub_22FCC8684();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    result = sub_22FCC94D4();
    __break(1u);
  }

  else
  {
    v10 = sub_22FA2CE7C(&qword_28147FF30, v7, type metadata accessor for MomentGraphService, &unk_22FCDA1C0);
    sub_22FA2CEC4(a2, v10);
    v11 = sub_22FCC8664();
    v12 = sub_22FCC8F24();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_22FA28000, v11, v12, "MemoryNodesRebuild is stuck", v13, 2u);
      MEMORY[0x23190A000](v13, -1, -1);
    }

    return (*(v5 + 8))(v9, v4);
  }

  return result;
}

uint64_t sub_22FB82EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a6;
  v7[23] = a7;
  v7[20] = a4;
  v7[21] = a5;
  return MEMORY[0x2822009F8](sub_22FB82EC4, 0, 0);
}

uint64_t sub_22FB82EC4()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v4 = v1[22];
  v14 = v1[23];
  v5 = v1[20];
  v6 = v1[21];
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  v1[14] = sub_22FBAC124;
  v1[15] = v7;
  v8 = MEMORY[0x277D85DD0];
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_22FA51A14;
  v1[13] = &block_descriptor_486;
  v9 = _Block_copy(v3);
  v10 = objc_opt_self();

  v11 = [v10 progressReporterWithProgressBlock_];
  v1[24] = v11;
  _Block_release(v9);

  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_22FB830B8;
  v12 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8BD8, &unk_22FCDA550);
  v1[10] = v8;
  v1[11] = 1107296256;
  v1[12] = sub_22FB83204;
  v1[13] = &block_descriptor_489;
  v1[14] = v12;
  [v4 regenerateMemoriesOfCategory:v14 progressReporter:v11 completionBlock:v3];

  return MEMORY[0x282200938](v2);
}

uint64_t sub_22FB830B8()
{

  return MEMORY[0x2822009F8](sub_22FB83198, 0, 0);
}

uint64_t sub_22FB83198()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB83204(uint64_t a1, char a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  v7 = *(*(*v5 + 64) + 40);
  *v7 = a2;
  *(v7 + 8) = a3;
  v8 = a3;

  return MEMORY[0x282200948](v6);
}

uint64_t sub_22FB83408(uint64_t a1, uint64_t a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = sub_22FCC8A84();
  v8 = v7;
  v4[4] = v7;

  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_22FBAC09C;

  return sub_22FB82284(a1, v6, v8);
}

uint64_t sub_22FB83680(int a1, int a2, void *aBlock)
{
  _Block_copy(aBlock);

  return MEMORY[0x2822009F8](sub_22FB836E8, 0, 0);
}

uint64_t sub_22FB83878()
{
  v1[32] = v0;
  v1[33] = *v0;
  v2 = sub_22FCC67F4();
  v1[34] = v2;
  v1[35] = *(v2 - 8);
  v1[36] = swift_task_alloc();
  v3 = sub_22FCC8684();
  v1[37] = v3;
  v1[38] = *(v3 - 8);
  v1[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB839E8, v0, 0);
}

uint64_t sub_22FB839E8(uint64_t a1, uint64_t a2)
{
  v47 = v2;
  v46[3] = *MEMORY[0x277D85DE8];
  v3 = *(v2 + 264);
  v4 = sub_22FA2CE7C(&qword_28147FF30, a2, type metadata accessor for MomentGraphService, &unk_22FCDA1C0);
  sub_22FA2CEC4(v3, v4);
  v5 = sub_22FCC8664();
  v6 = sub_22FCC8EF4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22FA28000, v5, v6, "Graph - requestGraphStatus", v7, 2u);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  v8 = 0xD000000000000011;
  v10 = *(v2 + 304);
  v9 = *(v2 + 312);
  v11 = *(v2 + 296);
  v12 = *(v2 + 256);

  (*(v10 + 8))(v9, v11);
  v13 = *(v12 + 128);
  v14 = *(*(v13 + 112) + 112);
  *(v2 + 320) = v14;
  v15 = v14;
  v16 = [v15 libraryAnalysisState];
  if (v16 == 1)
  {
    v18 = [v15 rebuildProgress];
    if (v18)
    {
      v19 = v18;
      [v18 fractionCompleted];
    }

    v46[0] = 0;
    v46[1] = 0xE000000000000000;
    sub_22FCC9384();
    *(v2 + 224) = 0;
    *(v2 + 232) = v46[1];
    MEMORY[0x231907FA0](0xD000000000000023, 0x800000022FCE6BC0);
    sub_22FCC8E44();
    v8 = *(v2 + 224);
    v17 = *(v2 + 232);
  }

  else if (v16)
  {
    v17 = 0x800000022FCE6B30;
  }

  else
  {
    v17 = 0x800000022FCE6BF0;
    v8 = 0xD00000000000001DLL;
  }

  *(v2 + 208) = v8;
  *(v2 + 216) = v17;
  *(v2 + 240) = 0;
  v20 = [v15 isReadyWithError_];
  *(v2 + 360) = v20;
  v21 = *(v2 + 240);
  if (v20)
  {
    v22 = v21;
    MEMORY[0x231907FA0](0x203A79646165520ALL, 0xEB00000000534559);
  }

  else
  {
    v23 = v21;
    v24 = sub_22FCC6514();

    swift_willThrow();
    strcpy(v46, "\nReady: NO, ");
    BYTE5(v46[1]) = 0;
    HIWORD(v46[1]) = -5120;
    swift_getErrorValue();
    v25 = sub_22FCC97D4();
    MEMORY[0x231907FA0](v25);

    MEMORY[0x231907FA0](v46[0], v46[1]);
  }

  v26 = *(v2 + 280);
  v27 = *(v2 + 288);
  v43 = *(v2 + 272);
  v45 = *(v2 + 256);
  strcpy(v46, "\nBusy: ");
  v46[1] = 0xE700000000000000;
  v28 = [v15 isBusy];
  v29 = v28 == 0;
  if (v28)
  {
    v30 = 5457241;
  }

  else
  {
    v30 = 20302;
  }

  if (v29)
  {
    v31 = 0xE200000000000000;
  }

  else
  {
    v31 = 0xE300000000000000;
  }

  MEMORY[0x231907FA0](v30, v31);

  MEMORY[0x231907FA0](v46[0], v46[1]);

  v32 = [objc_allocWithZone(PHAGraphRebuildTask) init];
  *(v2 + 168) = type metadata accessor for MomentGraphWorker();
  *(v2 + 176) = sub_22FA2CE7C(&qword_281480230, 255, type metadata accessor for MomentGraphWorker, &unk_22FCD3AB8);
  *(v2 + 144) = v13;
  type metadata accessor for LegacyTask();
  v33 = swift_allocObject();
  *(v2 + 328) = v33;
  v34 = v15;

  sub_22FCC67E4();
  v35 = sub_22FCC67B4();
  v36 = v13;
  v38 = v37;
  (*(v26 + 8))(v27, v44);
  *(v33 + 72) = v35;
  *(v33 + 80) = v38;
  *(v33 + 88) = 1;
  *(v33 + 16) = v32;
  sub_22FA2CF78((v2 + 144), v33 + 24);
  *(v33 + 64) = v34;
  *(v33 + 96) = 0u;
  *(v33 + 112) = 0u;
  *(v33 + 128) = 0;
  v39 = *(v45 + 144);
  v40 = [objc_opt_self() ignoreProgress];
  *(v2 + 336) = v40;
  v41 = swift_task_alloc();
  *(v2 + 344) = v41;
  *v41 = v2;
  v41[1] = sub_22FB83F50;

  return sub_22FBA29E8(v33, v36, v40, v39);
}

uint64_t sub_22FB83F50(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 336);
  v4 = *(*v2 + 256);
  *(*v2 + 352) = a2;

  return MEMORY[0x2822009F8](sub_22FB840BC, v4, 0);
}

uint64_t sub_22FB840BC()
{
  v1 = *(v0 + 352);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 changeStreamToken];
    if (v3)
    {
      v4 = v3;
      sub_22FCC9384();

      v5 = [v4 description];
      v6 = sub_22FCC8A84();
      v8 = v7;

      MEMORY[0x231907FA0](v6, v8);

      MEMORY[0x231907FA0](0xD000000000000019, 0x800000022FCE6BA0);
    }

    sub_22FCC9384();

    v9 = [v2 description];
    v10 = sub_22FCC8A84();
    v12 = v11;

    MEMORY[0x231907FA0](v10, v12);

    MEMORY[0x231907FA0](0xD000000000000015, 0x800000022FCE6B80);
  }

  else
  {
    MEMORY[0x231907FA0](0xD000000000000020, 0x800000022FCE6B50);
    v2 = 0;
  }

  v13 = *(v0 + 320);
  v14 = *(v0 + 360);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8740, &unk_22FCD42B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FCD17F0;
  *(inited + 32) = sub_22FCC8A84();
  *(inited + 40) = v16;
  v17 = *(v0 + 208);
  v18 = *(v0 + 216);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v17;
  *(inited + 56) = v18;
  *(inited + 80) = sub_22FCC8A84();
  *(inited + 88) = v19;
  *(inited + 120) = MEMORY[0x277D839B0];
  *(inited + 96) = v14;
  v20 = sub_22FA4DAB0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8750, &qword_22FCD42C0);
  swift_arrayDestroy();

  v21 = *(v0 + 8);

  return v21(v20);
}

uint64_t sub_22FB84540(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_22FB845E8;

  return sub_22FB83878();
}

uint64_t sub_22FB845E8(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *v2;

  if (v3)
  {
    v6 = sub_22FCC6504();

    v7 = v6;
    v8 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7478, &qword_22FCD65B0);
    v9 = sub_22FCC89C4();

    v8 = v9;
    v7 = 0;
    v6 = v9;
  }

  v10 = *(v4 + 24);
  (v10)[2](v10, v8, v7);

  _Block_release(v10);
  v11 = *(v5 + 8);

  return v11();
}

uint64_t sub_22FB8490C(const void *a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);

  return MEMORY[0x2822009F8](sub_22FB84988, 0, 0);
}

uint64_t sub_22FB84988()
{
  v1 = v0[3];
  v2 = *(*(*(v0[2] + 128) + 112) + 112);
  [v2 isReady];
  v3 = sub_22FCC8CB4();

  (v1)[2](v1, v3, 0);
  _Block_release(v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22FB84A44(uint64_t a1)
{
  v2[40] = a1;
  v2[41] = v1;
  v2[42] = *v1;
  v3 = sub_22FCC8684();
  v2[43] = v3;
  v2[44] = *(v3 - 8);
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730, &qword_22FCD1B20);
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB84B88, 0, 0);
}

uint64_t sub_22FB84B88()
{
  v58 = v0;
  v1 = *(v0 + 320);
  v2 = sub_22FCC8A84();
  if (*(v1 + 16))
  {
    v4 = sub_22FA2DB54(v2, v3);
    v6 = v5;

    if (v6)
    {
      v7 = *(v0 + 392);
      sub_22FA2F7D8(*(*(v0 + 320) + 56) + 32 * v4, v0 + 240);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7478, &qword_22FCD65B0);
      v8 = sub_22FCC6794();
      v9 = swift_dynamicCast();
      (*(*(v8 - 8) + 56))(v7, v9 ^ 1u, 1, v8);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v10 = *(v0 + 392);
  v11 = sub_22FCC6794();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
LABEL_6:
  v12 = sub_22FCC8A84();
  if (*(v1 + 16))
  {
    v14 = sub_22FA2DB54(v12, v13);
    v16 = v15;

    if (v16)
    {
      sub_22FA2F7D8(*(*(v0 + 320) + 56) + 32 * v14, v0 + 272);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7478, &qword_22FCD65B0);
      v18 = swift_dynamicCast();
      if (v18)
      {
        v19 = *(v0 + 304);
      }

      else
      {
        v19 = 0;
      }

      if (v18)
      {
        v20 = *(v0 + 312);
      }

      else
      {
        v20 = 0;
      }

      goto LABEL_16;
    }
  }

  else
  {
  }

  v19 = 0;
  v20 = 0;
LABEL_16:
  *(v0 + 400) = v20;
  v22 = *(v0 + 384);
  v21 = *(v0 + 392);
  v23 = *(v0 + 336);
  v24 = sub_22FA2CE7C(&qword_28147FF30, v17, type metadata accessor for MomentGraphService, &unk_22FCDA1C0);
  *(v0 + 408) = v24;
  sub_22FA2CEC4(v23, v24);
  sub_22FA4FAA4(v21, v22, &qword_27DAD8730, &qword_22FCD1B20);

  v25 = sub_22FCC8664();
  v26 = sub_22FCC8EF4();

  v27 = os_log_type_enabled(v25, v26);
  v28 = *(v0 + 384);
  if (v27)
  {
    v56 = v19;
    v29 = *(v0 + 376);
    v30 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v57 = v55;
    *v30 = 136315394;
    sub_22FA4FAA4(v28, v29, &qword_27DAD8730, &qword_22FCD1B20);
    v31 = sub_22FCC6794();
    v32 = *(v31 - 8);
    v33 = (*(v32 + 48))(v29, 1, v31);
    v34 = *(v0 + 376);
    if (v33 == 1)
    {
      sub_22FA2B420(*(v0 + 376), &qword_27DAD8730, &qword_22FCD1B20);
      v35 = 0xE300000000000000;
      v36 = 7104878;
    }

    else
    {
      v36 = sub_22FCC66B4();
      v35 = v41;
      (*(v32 + 8))(v34, v31);
    }

    v54 = *(v0 + 368);
    v43 = *(v0 + 344);
    v42 = *(v0 + 352);
    sub_22FA2B420(*(v0 + 384), &qword_27DAD8730, &qword_22FCD1B20);
    v44 = sub_22FA2F600(v36, v35, &v57);

    *(v30 + 4) = v44;
    *(v30 + 12) = 2080;
    v19 = v56;
    if (v20)
    {
      v45 = v56;
    }

    else
    {
      v45 = 7104878;
    }

    if (v20)
    {
      v46 = v20;
    }

    else
    {
      v46 = 0xE300000000000000;
    }

    v47 = sub_22FA2F600(v45, v46, &v57);

    *(v30 + 14) = v47;
    _os_log_impl(&dword_22FA28000, v25, v26, "Magic Slot - generate suggestions for %s with collectionLocalIdentifier %s", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v55, -1, -1);
    MEMORY[0x23190A000](v30, -1, -1);

    v40 = *(v42 + 8);
    v40(v54, v43);
  }

  else
  {
    v37 = *(v0 + 368);
    v38 = *(v0 + 344);
    v39 = *(v0 + 352);

    sub_22FA2B420(v28, &qword_27DAD8730, &qword_22FCD1B20);
    v40 = *(v39 + 8);
    v40(v37, v38);
  }

  *(v0 + 416) = v40;
  v48 = *(*(*(v0 + 328) + 128) + 112);
  type metadata accessor for FeaturedCollectionElectionTask();
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0;
  *(v0 + 200) = 0u;
  inited = swift_initStackObject();
  *(v0 + 424) = inited;

  *(v0 + 432) = sub_22FBD5570(v50, v48, v0 + 200, inited);
  v51 = swift_task_alloc();
  *(v0 + 440) = v51;
  *v51 = v0;
  v51[1] = sub_22FB8514C;
  v52 = *(v0 + 392);

  return sub_22FB649A4(v52, v19, v20);
}

uint64_t sub_22FB8514C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 448) = a1;
  *(v3 + 456) = v1;

  if (v1)
  {
    v4 = sub_22FB8542C;
  }

  else
  {
    v4 = sub_22FB85280;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FB85280()
{
  sub_22FA2CEC4(*(v0 + 336), *(v0 + 408));

  v1 = sub_22FCC8664();
  v2 = sub_22FCC8EF4();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 448);
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    v6 = *(v4 + 16);

    *(v5 + 4) = v6;

    _os_log_impl(&dword_22FA28000, v1, v2, "Magic Slot - %ld suggestions persisted", v5, 0xCu);
    MEMORY[0x23190A000](v5, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v7 = *(v0 + 392);
  (*(v0 + 416))(*(v0 + 360), *(v0 + 344));
  sub_22FA2B420(v7, &qword_27DAD8730, &qword_22FCD1B20);

  v8 = *(v0 + 8);

  return v8(1);
}

uint64_t sub_22FB8542C()
{
  v1 = *(v0 + 392);

  sub_22FA2B420(v1, &qword_27DAD8730, &qword_22FCD1B20);

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_22FB8567C(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7478, &qword_22FCD65B0);
  v4 = sub_22FCC89D4();
  v3[4] = v4;

  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_22FB85770;

  return sub_22FB84A44(v4);
}

uint64_t sub_22FB85770(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = sub_22FCC6504();

    (*(v8 + 16))(v8, 0, v9);
  }

  else
  {
    (*(v8 + 16))(*(v5 + 24), a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_22FB85928(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v3[15] = *v2;
  v4 = sub_22FCC8684();
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB85A14, 0, 0);
}

uint64_t sub_22FB85A14(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 120);
  v4 = sub_22FA2CE7C(&qword_28147FF30, a2, type metadata accessor for MomentGraphService, &unk_22FCDA1C0);
  sub_22FA2CEC4(v3, v4);
  v5 = sub_22FCC8664();
  v6 = sub_22FCC8EF4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22FA28000, v5, v6, "Search - requestSynonymsDictionaries", v7, 2u);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  v9 = *(v2 + 136);
  v8 = *(v2 + 144);
  v11 = *(v2 + 120);
  v10 = *(v2 + 128);
  v12 = *(v2 + 104);
  v13 = *(v2 + 112);
  v14 = *(v2 + 96);

  (*(v9 + 8))(v8, v10);
  v15 = v13[16];
  v16 = *(*(v15 + 112) + 112);
  *(v2 + 152) = v16;
  v27 = v13[14];
  v28 = v13[15];
  v17 = v16;

  MEMORY[0x231907FA0](58, 0xE100000000000000);
  MEMORY[0x231907FA0](v14, v12);
  *(v2 + 40) = type metadata accessor for MomentGraphWorker();
  *(v2 + 48) = sub_22FA2CE7C(&qword_281480230, 255, type metadata accessor for MomentGraphWorker, &unk_22FCD3AB8);
  *(v2 + 16) = v15;
  v18 = swift_allocObject();
  *(v18 + 16) = v11;
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8BD0, &qword_22FCDA508);
  v21 = swift_allocObject();
  *(v2 + 160) = v21;
  *(v21 + 48) = 0;
  *(v21 + 56) = 0;
  *(v21 + 16) = 0xD000000000000015;
  *(v21 + 24) = 0x800000022FCE6AD0;
  *(v21 + 32) = v27;
  *(v21 + 40) = v28;
  *(v21 + 64) = 0;
  *(v21 + 72) = 0;
  *(v21 + 80) = 0;
  *(v21 + 88) = 0u;
  *(v21 + 104) = 0u;
  *(v21 + 120) = 0;
  sub_22FA2CF78((v2 + 16), v21 + 144);
  *(v21 + 128) = &unk_22FCDA500;
  *(v21 + 136) = v19;
  *(v21 + 184) = sub_22FBA7314;
  *(v21 + 192) = v18;
  *(v2 + 80) = v20;
  *(v2 + 88) = sub_22FA2CF90(&qword_2814816A0, &qword_27DAD8BD0, &qword_22FCDA508, &unk_22FCD9FA8);
  *(v2 + 56) = v21;
  v22 = v17;

  v23 = swift_task_alloc();
  *(v2 + 168) = v23;
  *v23 = v2;
  v23[1] = sub_22FB85DB0;
  v24 = *(v2 + 96);
  v25 = *(v2 + 104);

  return sub_22FB7D7D8(v2 + 56, 0xD00000000000001BLL, 0x800000022FCE6AF0, v24, v25);
}

uint64_t sub_22FB85DB0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {
    v5 = sub_22FB85F84;
  }

  else
  {
    *(v4 + 184) = a1;
    __swift_destroy_boxed_opaque_existential_0((v4 + 56));
    v5 = sub_22FB85EE0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FB85EE0()
{
  v1 = v0[19];
  sub_22FAC8020(v0[23]);
  v3 = v2;

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_22FB85F84()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB86004(char a1, uint64_t a2)
{
  v4 = sub_22FCC8684();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    result = sub_22FCC94D4();
    __break(1u);
  }

  else
  {
    v10 = sub_22FA2CE7C(&qword_28147FF30, v7, type metadata accessor for MomentGraphService, &unk_22FCDA1C0);
    sub_22FA2CEC4(a2, v10);
    v11 = sub_22FCC8664();
    v12 = sub_22FCC8F24();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_22FA28000, v11, v12, "SynonymsDictionaries is stuck", v13, 2u);
      MEMORY[0x23190A000](v13, -1, -1);
    }

    return (*(v5 + 8))(v9, v4);
  }

  return result;
}

uint64_t sub_22FB861D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[8] = a1;
  v6[9] = a4;
  return MEMORY[0x2822009F8](sub_22FB861FC, 0, 0);
}

uint64_t sub_22FB861FC()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v0[6] = sub_22FBAC124;
  v0[7] = v4;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_22FA51A14;
  v0[5] = &block_descriptor_461;
  v5 = _Block_copy(v0 + 2);
  v6 = objc_opt_self();

  v7 = [v6 progressReporterWithProgressBlock_];
  _Block_release(v5);

  if ([v1 isReady])
  {
    v8 = v0[8];
    v9 = [v0[11] searchSynonymsDictionariesWithProgressReporter_];
    sub_22FA3A77C(0, &qword_28147ADE0, 0x277CCABB0);
    sub_22FB646E0();
    v10 = sub_22FCC89D4();

    *v8 = v10;
  }

  else
  {
    sub_22FBA4C28();
    swift_allocError();
    *v12 = xmmword_22FCD3450;
    swift_willThrow();
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_22FB86590(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v4 = sub_22FCC8A84();
  v6 = v5;
  v3[4] = v5;

  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_22FB86664;

  return sub_22FB85928(v4, v6);
}

uint64_t sub_22FB86664(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *v2;

  if (v3)
  {
    v6 = sub_22FCC6504();

    v7 = v6;
    v8 = 0;
  }

  else
  {
    sub_22FA3A77C(0, &qword_28147ADE0, 0x277CCABB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7478, &qword_22FCD65B0);
    sub_22FB646E0();
    v9 = sub_22FCC89C4();

    v8 = v9;
    v7 = 0;
    v6 = v9;
  }

  v10 = *(v4 + 24);
  (v10)[2](v10, v8, v7);

  _Block_release(v10);
  v11 = *(v5 + 8);

  return v11();
}

uint64_t sub_22FB86850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v4[16] = *v3;
  v5 = sub_22FCC8684();
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB8693C, 0, 0);
}

uint64_t sub_22FB8693C(uint64_t a1, uint64_t a2)
{
  v38 = v2;
  v3 = *(v2 + 128);
  v4 = sub_22FA2CE7C(&qword_28147FF30, a2, type metadata accessor for MomentGraphService, &unk_22FCDA1C0);
  sub_22FA2CEC4(v3, v4);

  v5 = sub_22FCC8664();
  v6 = sub_22FCC8EF4();

  v7 = os_log_type_enabled(v5, v6);
  v9 = *(v2 + 144);
  v8 = *(v2 + 152);
  v10 = *(v2 + 136);
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v36 = v12;
    *v11 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7478, &qword_22FCD65B0);
    v13 = sub_22FCC89E4();
    v15 = sub_22FA2F600(v13, v14, &v36);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_22FA28000, v5, v6, "Search - requestGraphSearchMetadata (options: %s)", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23190A000](v12, -1, -1);
    MEMORY[0x23190A000](v11, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  v16 = *(v2 + 120);
  v17 = *(v2 + 128);
  v19 = *(v2 + 104);
  v18 = *(v2 + 112);
  v20 = *(v2 + 96);
  v21 = v16[16];
  v22 = *(*(v21 + 112) + 112);
  *(v2 + 160) = v22;
  v23 = v16[15];
  v36 = v16[14];
  v37 = v23;
  v35 = v22;

  MEMORY[0x231907FA0](58, 0xE100000000000000);
  MEMORY[0x231907FA0](v19, v18);
  v33 = v37;
  v34 = v36;
  *(v2 + 40) = type metadata accessor for MomentGraphWorker();
  *(v2 + 48) = sub_22FA2CE7C(&qword_281480230, 255, type metadata accessor for MomentGraphWorker, &unk_22FCD3AB8);
  *(v2 + 16) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = v17;
  v25 = swift_allocObject();
  *(v25 + 16) = v35;
  *(v25 + 24) = v20;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8BC0, &qword_22FCDA4D8);
  v27 = swift_allocObject();
  *(v2 + 168) = v27;
  *(v27 + 48) = 0;
  *(v27 + 56) = 0;
  *(v27 + 16) = 0xD000000000000015;
  *(v27 + 24) = 0x800000022FCE6A70;
  *(v27 + 32) = v34;
  *(v27 + 40) = v33;
  *(v27 + 64) = 0;
  *(v27 + 72) = 0;
  *(v27 + 80) = 0;
  *(v27 + 88) = 0u;
  *(v27 + 104) = 0u;
  *(v27 + 120) = 0;
  sub_22FA2CF78((v2 + 16), v27 + 144);
  *(v27 + 128) = &unk_22FCDA4D0;
  *(v27 + 136) = v25;
  *(v27 + 184) = sub_22FBA7118;
  *(v27 + 192) = v24;
  *(v2 + 80) = v26;
  *(v2 + 88) = sub_22FA2CF90(&qword_27DAD8BC8, &qword_27DAD8BC0, &qword_22FCDA4D8, &unk_22FCD9FA8);
  *(v2 + 56) = v27;

  v28 = v35;

  v29 = swift_task_alloc();
  *(v2 + 176) = v29;
  *v29 = v2;
  v29[1] = sub_22FB86D84;
  v30 = *(v2 + 104);
  v31 = *(v2 + 112);

  return sub_22FB7DB20(v2 + 56, 0xD00000000000001ALL, 0x800000022FCE6A90, v30, v31);
}

uint64_t sub_22FB86D84(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v5 = sub_22FB86F58;
  }

  else
  {
    *(v4 + 192) = a1;
    __swift_destroy_boxed_opaque_existential_0((v4 + 56));
    v5 = sub_22FB86EB4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FB86EB4()
{
  v1 = v0[20];
  sub_22FAC848C(v0[24]);
  v3 = v2;

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_22FB86F58()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB86FD8(char a1, uint64_t a2)
{
  v4 = sub_22FCC8684();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    result = sub_22FCC94D4();
    __break(1u);
  }

  else
  {
    v10 = sub_22FA2CE7C(&qword_28147FF30, v7, type metadata accessor for MomentGraphService, &unk_22FCDA1C0);
    sub_22FA2CEC4(a2, v10);
    v11 = sub_22FCC8664();
    v12 = sub_22FCC8F24();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_22FA28000, v11, v12, "GraphSearchMetadata is stuck", v13, 2u);
      MEMORY[0x23190A000](v13, -1, -1);
    }

    return (*(v5 + 8))(v9, v4);
  }

  return result;
}

uint64_t sub_22FB871AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v7[8] = a1;
  return MEMORY[0x2822009F8](sub_22FB871D4, 0, 0);
}

uint64_t sub_22FB871D4()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v0[6] = sub_22FBAC124;
  v0[7] = v4;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_22FA51A14;
  v0[5] = &block_descriptor_436;
  v5 = _Block_copy(v0 + 2);
  v6 = objc_opt_self();

  v7 = [v6 progressReporterWithProgressBlock_];
  _Block_release(v5);

  if ([v1 isReady])
  {
    v8 = v0[11];
    v9 = v0[8];
    sub_22FAC7BB0(v0[12]);
    v10 = sub_22FCC89C4();

    v11 = [v8 searchMetadataWithOptions:v10 progressReporter:v7];

    v12 = sub_22FCC89D4();
    *v9 = v12;
  }

  else
  {
    sub_22FBA4C28();
    swift_allocError();
    *v14 = xmmword_22FCD3450;
    swift_willThrow();
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_22FB8759C(uint64_t a1, uint64_t a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v4[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7478, &qword_22FCD65B0);
  v5 = sub_22FCC89D4();
  v4[5] = v5;
  v6 = sub_22FCC8A84();
  v8 = v7;
  v4[6] = v7;

  v9 = swift_task_alloc();
  v4[7] = v9;
  *v9 = v4;
  v9[1] = sub_22FB876BC;

  return sub_22FB86850(v5, v6, v8);
}

uint64_t sub_22FB876BC(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *v2;

  if (v3)
  {
    v6 = sub_22FCC6504();

    v7 = v6;
    v8 = 0;
  }

  else
  {
    v9 = sub_22FCC89C4();

    v8 = v9;
    v7 = 0;
    v6 = v9;
  }

  v10 = *(v4 + 24);
  (v10)[2](v10, v8, v7);

  _Block_release(v10);
  v11 = *(v5 + 8);

  return v11();
}

uint64_t sub_22FB87894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  v5[17] = *v4;
  v6 = sub_22FCC8684();
  v5[18] = v6;
  v5[19] = *(v6 - 8);
  v5[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB87984, 0, 0);
}

uint64_t sub_22FB87984(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 136);
  v4 = sub_22FA2CE7C(&qword_28147FF30, a2, type metadata accessor for MomentGraphService, &unk_22FCDA1C0);
  sub_22FA2CEC4(v3, v4);
  v5 = sub_22FCC8664();
  v6 = sub_22FCC8EF4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22FA28000, v5, v6, "Search - requestSearchIndexKeywordsForAssetCollectionUUIDs", v7, 2u);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  v9 = *(v2 + 152);
  v8 = *(v2 + 160);
  v11 = *(v2 + 136);
  v10 = *(v2 + 144);
  v12 = *(v2 + 120);
  v13 = *(v2 + 128);
  v14 = *(v2 + 112);
  v28 = *(v2 + 104);
  v15 = *(v2 + 96);

  (*(v9 + 8))(v8, v10);
  v16 = v13[16];
  v17 = *(*(v16 + 112) + 112);
  *(v2 + 168) = v17;
  v29 = v13[14];
  v30 = v13[15];
  v27 = v17;

  MEMORY[0x231907FA0](58, 0xE100000000000000);
  MEMORY[0x231907FA0](v14, v12);
  *(v2 + 40) = type metadata accessor for MomentGraphWorker();
  *(v2 + 48) = sub_22FA2CE7C(&qword_281480230, 255, type metadata accessor for MomentGraphWorker, &unk_22FCD3AB8);
  *(v2 + 16) = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = v11;
  v19 = swift_allocObject();
  v19[2] = v27;
  v19[3] = v15;
  v19[4] = v28;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8BB8, &qword_22FCDA4A0);
  v21 = swift_allocObject();
  *(v2 + 176) = v21;
  *(v21 + 48) = 0;
  *(v21 + 56) = 0;
  *(v21 + 16) = 0xD000000000000015;
  *(v21 + 24) = 0x800000022FCE6A10;
  *(v21 + 32) = v29;
  *(v21 + 40) = v30;
  *(v21 + 64) = 0;
  *(v21 + 72) = 0;
  *(v21 + 80) = 0;
  *(v21 + 88) = 0u;
  *(v21 + 104) = 0u;
  *(v21 + 120) = 0;
  sub_22FA2CF78((v2 + 16), v21 + 144);
  *(v21 + 128) = &unk_22FCDA498;
  *(v21 + 136) = v19;
  *(v21 + 184) = sub_22FBA6F60;
  *(v21 + 192) = v18;
  *(v2 + 80) = v20;
  *(v2 + 88) = sub_22FA2CF90(&qword_2814816A8, &qword_27DAD8BB8, &qword_22FCDA4A0, &unk_22FCD9FA8);
  *(v2 + 56) = v21;
  v22 = v27;

  v23 = swift_task_alloc();
  *(v2 + 184) = v23;
  *v23 = v2;
  v23[1] = sub_22FB87D44;
  v24 = *(v2 + 112);
  v25 = *(v2 + 120);

  return sub_22FB7DE68(v2 + 56, 0xD00000000000001ALL, 0x800000022FCE6A30, v24, v25);
}

uint64_t sub_22FB87D44(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v5 = sub_22FBAC0A0;
  }

  else
  {
    *(v4 + 200) = a1;
    __swift_destroy_boxed_opaque_existential_0((v4 + 56));
    v5 = sub_22FB87E74;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FB87E74()
{
  v1 = v0[21];
  sub_22FAC8718(v0[25]);
  v3 = v2;

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_22FB87F18(char a1, uint64_t a2)
{
  v4 = sub_22FCC8684();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    result = sub_22FCC94D4();
    __break(1u);
  }

  else
  {
    v10 = sub_22FA2CE7C(&qword_28147FF30, v7, type metadata accessor for MomentGraphService, &unk_22FCDA1C0);
    sub_22FA2CEC4(a2, v10);
    v11 = sub_22FCC8664();
    v12 = sub_22FCC8F24();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_22FA28000, v11, v12, "SearchIndexKeywords is stuck", v13, 2u);
      MEMORY[0x23190A000](v13, -1, -1);
    }

    return (*(v5 + 8))(v9, v4);
  }

  return result;
}

uint64_t sub_22FB880EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[8] = a1;
  v8[9] = a4;
  return MEMORY[0x2822009F8](sub_22FB88114, 0, 0);
}

uint64_t sub_22FB88114()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v0[6] = sub_22FBAC124;
  v0[7] = v4;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_22FA51A14;
  v0[5] = &block_descriptor_411;
  v5 = _Block_copy(v0 + 2);
  v6 = objc_opt_self();

  v7 = [v6 progressReporterWithProgressBlock_];
  _Block_release(v5);

  if ([v1 isReady])
  {
    v8 = v0[13];
    v9 = v0[11];
    v10 = v0[8];

    sub_22FAA99B0(v11);

    v12 = sub_22FCC8E64();

    v13 = [v9 searchKeywordsByEventWithUUIDs:v12 ofType:v8 progressReporter:v7];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8210, &qword_22FCD4FC0);
    v14 = sub_22FCC89D4();

    *v10 = v14;
  }

  else
  {
    sub_22FBA4C28();
    swift_allocError();
    *v16 = xmmword_22FCD3450;
    swift_willThrow();
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_22FB88510(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock, uint64_t a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v7 = sub_22FCC8C44();
  v5[4] = v7;
  v8 = sub_22FCC8A84();
  v10 = v9;
  v5[5] = v9;

  v11 = swift_task_alloc();
  v5[6] = v11;
  *v11 = v5;
  v11[1] = sub_22FB88614;

  return sub_22FB87894(v7, a2, v8, v10);
}

uint64_t sub_22FB88614(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *v2;

  if (v3)
  {
    v6 = sub_22FCC6504();

    v7 = v6;
    v8 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8218, &unk_22FCD4FC8);
    v9 = sub_22FCC89C4();

    v8 = v9;
    v7 = 0;
    v6 = v9;
  }

  v10 = *(v4 + 24);
  (v10)[2](v10, v8, v7);

  _Block_release(v10);
  v11 = *(v5 + 8);

  return v11();
}

uint64_t sub_22FB88800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  v5[17] = *v4;
  v6 = sub_22FCC8684();
  v5[18] = v6;
  v5[19] = *(v6 - 8);
  v5[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB888F0, 0, 0);
}

uint64_t sub_22FB888F0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 136);
  v4 = sub_22FA2CE7C(&qword_28147FF30, a2, type metadata accessor for MomentGraphService, &unk_22FCDA1C0);
  sub_22FA2CEC4(v3, v4);
  v5 = sub_22FCC8664();
  v6 = sub_22FCC8EF4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22FA28000, v5, v6, "Search - requestAssetSearchKeywordsForAssetCollectionUUIDs", v7, 2u);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  v9 = *(v2 + 152);
  v8 = *(v2 + 160);
  v11 = *(v2 + 136);
  v10 = *(v2 + 144);
  v12 = *(v2 + 120);
  v13 = *(v2 + 128);
  v14 = *(v2 + 112);
  v28 = *(v2 + 104);
  v15 = *(v2 + 96);

  (*(v9 + 8))(v8, v10);
  v16 = v13[16];
  v17 = *(*(v16 + 112) + 112);
  *(v2 + 168) = v17;
  v29 = v13[14];
  v30 = v13[15];
  v27 = v17;

  MEMORY[0x231907FA0](58, 0xE100000000000000);
  MEMORY[0x231907FA0](v14, v12);
  *(v2 + 40) = type metadata accessor for MomentGraphWorker();
  *(v2 + 48) = sub_22FA2CE7C(&qword_281480230, 255, type metadata accessor for MomentGraphWorker, &unk_22FCD3AB8);
  *(v2 + 16) = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = v11;
  v19 = swift_allocObject();
  v19[2] = v27;
  v19[3] = v15;
  v19[4] = v28;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8BB0, &qword_22FCDA468);
  v21 = swift_allocObject();
  *(v2 + 176) = v21;
  *(v21 + 48) = 0;
  *(v21 + 56) = 0;
  *(v21 + 16) = 0xD000000000000015;
  *(v21 + 24) = 0x800000022FCE69B0;
  *(v21 + 32) = v29;
  *(v21 + 40) = v30;
  *(v21 + 64) = 0;
  *(v21 + 72) = 0;
  *(v21 + 80) = 0;
  *(v21 + 88) = 0u;
  *(v21 + 104) = 0u;
  *(v21 + 120) = 0;
  sub_22FA2CF78((v2 + 16), v21 + 144);
  *(v21 + 128) = &unk_22FCDA460;
  *(v21 + 136) = v19;
  *(v21 + 184) = sub_22FBA6DA8;
  *(v21 + 192) = v18;
  *(v2 + 80) = v20;
  *(v2 + 88) = sub_22FA2CF90(&qword_2814816B0, &qword_27DAD8BB0, &qword_22FCDA468, &unk_22FCD9FA8);
  *(v2 + 56) = v21;
  v22 = v27;

  v23 = swift_task_alloc();
  *(v2 + 184) = v23;
  *v23 = v2;
  v23[1] = sub_22FB88CB0;
  v24 = *(v2 + 112);
  v25 = *(v2 + 120);

  return sub_22FB7E1B0(v2 + 56, 0xD00000000000001ALL, 0x800000022FCE69D0, v24, v25);
}

uint64_t sub_22FB88CB0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v5 = sub_22FA76094;
  }

  else
  {
    *(v4 + 200) = a1;
    __swift_destroy_boxed_opaque_existential_0((v4 + 56));
    v5 = sub_22FB88DE0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FB88DE0()
{
  v1 = v0[21];
  sub_22FAC894C(v0[25]);
  v3 = v2;

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_22FB88E84(char a1, uint64_t a2)
{
  v4 = sub_22FCC8684();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    result = sub_22FCC94D4();
    __break(1u);
  }

  else
  {
    v10 = sub_22FA2CE7C(&qword_28147FF30, v7, type metadata accessor for MomentGraphService, &unk_22FCDA1C0);
    sub_22FA2CEC4(a2, v10);
    v11 = sub_22FCC8664();
    v12 = sub_22FCC8F24();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_22FA28000, v11, v12, "AssetSearchKeywords is stuck", v13, 2u);
      MEMORY[0x23190A000](v13, -1, -1);
    }

    return (*(v5 + 8))(v9, v4);
  }

  return result;
}

uint64_t sub_22FB89058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[8] = a1;
  v8[9] = a4;
  return MEMORY[0x2822009F8](sub_22FB89080, 0, 0);
}

uint64_t sub_22FB89080()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v0[6] = sub_22FBAC124;
  v0[7] = v4;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_22FA51A14;
  v0[5] = &block_descriptor_386;
  v5 = _Block_copy(v0 + 2);
  v6 = objc_opt_self();

  v7 = [v6 progressReporterWithProgressBlock_];
  _Block_release(v5);

  if ([v1 isReady])
  {
    v8 = v0[13];
    v9 = v0[11];
    v10 = v0[8];

    sub_22FAA99B0(v11);

    v12 = sub_22FCC8E64();

    v13 = [v9 assetSearchKeywordsByMomentUUIDWithEventUUIDs:v12 ofType:v8 progressReporter:v7];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD81F8, &qword_22FCD4FA8);
    v14 = sub_22FCC89D4();

    *v10 = v14;
  }

  else
  {
    sub_22FBA4C28();
    swift_allocError();
    *v16 = xmmword_22FCD3450;
    swift_willThrow();
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_22FB8947C(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock, uint64_t a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v7 = sub_22FCC8C44();
  v5[4] = v7;
  v8 = sub_22FCC8A84();
  v10 = v9;
  v5[5] = v9;

  v11 = swift_task_alloc();
  v5[6] = v11;
  *v11 = v5;
  v11[1] = sub_22FB89580;

  return sub_22FB88800(v7, a2, v8, v10);
}

uint64_t sub_22FB89580(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *v2;

  if (v3)
  {
    v6 = sub_22FCC6504();

    v7 = v6;
    v8 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8200, &qword_22FCD4FB0);
    v9 = sub_22FCC89C4();

    v8 = v9;
    v7 = 0;
    v6 = v9;
  }

  v10 = *(v4 + 24);
  (v10)[2](v10, v8, v7);

  _Block_release(v10);
  v11 = *(v5 + 8);

  return v11();
}

uint64_t sub_22FB8976C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 120) = a5;
  *(v6 + 128) = v5;
  *(v6 + 104) = a2;
  *(v6 + 112) = a4;
  *(v6 + 208) = a3;
  *(v6 + 96) = a1;
  *(v6 + 136) = *v5;
  v7 = sub_22FCC8684();
  *(v6 + 144) = v7;
  *(v6 + 152) = *(v7 - 8);
  *(v6 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB89860, 0, 0);
}

uint64_t sub_22FB89860(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 136);
  v4 = sub_22FA2CE7C(&qword_28147FF30, a2, type metadata accessor for MomentGraphService, &unk_22FCDA1C0);
  sub_22FA2CEC4(v3, v4);
  v5 = sub_22FCC8664();
  v6 = sub_22FCC8EF4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v2 + 208);
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = v7;
    _os_log_impl(&dword_22FA28000, v5, v6, "Search - requestSearchableAssetUUIDsBySocialGroupForAssetCollectionUUIDs (isFullAnalysis: %{BOOL}d)", v8, 8u);
    MEMORY[0x23190A000](v8, -1, -1);
  }

  v9 = *(v2 + 152);
  v10 = *(v2 + 160);
  v12 = *(v2 + 136);
  v11 = *(v2 + 144);
  v13 = *(v2 + 120);
  v14 = *(v2 + 128);
  v30 = *(v2 + 208);
  v15 = *(v2 + 112);
  v16 = *(v2 + 96);
  v29 = *(v2 + 104);

  (*(v9 + 8))(v10, v11);
  v17 = v14[16];
  v18 = *(*(v17 + 112) + 112);
  *(v2 + 168) = v18;
  v31 = v14[14];
  v32 = v14[15];
  v28 = v18;

  MEMORY[0x231907FA0](58, 0xE100000000000000);
  MEMORY[0x231907FA0](v15, v13);
  *(v2 + 40) = type metadata accessor for MomentGraphWorker();
  *(v2 + 48) = sub_22FA2CE7C(&qword_281480230, 255, type metadata accessor for MomentGraphWorker, &unk_22FCD3AB8);
  *(v2 + 16) = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = v12;
  v20 = swift_allocObject();
  *(v20 + 16) = v28;
  *(v20 + 24) = v16;
  *(v20 + 32) = v29;
  *(v20 + 40) = v30;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8B98, &qword_22FCDA420);
  v22 = swift_allocObject();
  *(v2 + 176) = v22;
  *(v22 + 48) = 0;
  *(v22 + 56) = 0;
  *(v22 + 16) = 0xD00000000000001FLL;
  *(v22 + 24) = 0x800000022FCE6930;
  *(v22 + 32) = v31;
  *(v22 + 40) = v32;
  *(v22 + 64) = 0;
  *(v22 + 72) = 0;
  *(v22 + 80) = 0;
  *(v22 + 88) = 0u;
  *(v22 + 104) = 0u;
  *(v22 + 120) = 0;
  sub_22FA2CF78((v2 + 16), v22 + 144);
  *(v22 + 128) = &unk_22FCDA418;
  *(v22 + 136) = v20;
  *(v22 + 184) = sub_22FBA6BDC;
  *(v22 + 192) = v19;
  *(v2 + 80) = v21;
  *(v2 + 88) = sub_22FA2CF90(&qword_27DAD8BA0, &qword_27DAD8B98, &qword_22FCDA420, &unk_22FCD9FA8);
  *(v2 + 56) = v22;
  v23 = v28;

  v24 = swift_task_alloc();
  *(v2 + 184) = v24;
  *v24 = v2;
  v24[1] = sub_22FB89C3C;
  v25 = *(v2 + 112);
  v26 = *(v2 + 120);

  return sub_22FB7E6C4(v2 + 56, 0xD000000000000028, 0x800000022FCE6950, v25, v26);
}

uint64_t sub_22FB89C3C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v5 = sub_22FBAC0A0;
  }

  else
  {
    *(v4 + 200) = a1;
    __swift_destroy_boxed_opaque_existential_0((v4 + 56));
    v5 = sub_22FB89D6C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FB89D6C()
{
  v1 = v0[21];
  sub_22FAC8B80(v0[25]);
  v3 = v2;

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_22FB89E10(char a1, uint64_t a2)
{
  v4 = sub_22FCC8684();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    result = sub_22FCC94D4();
    __break(1u);
  }

  else
  {
    v10 = sub_22FA2CE7C(&qword_28147FF30, v7, type metadata accessor for MomentGraphService, &unk_22FCDA1C0);
    sub_22FA2CEC4(a2, v10);
    v11 = sub_22FCC8664();
    v12 = sub_22FCC8F24();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_22FA28000, v11, v12, "SearchableAssetBySocialGroup is stuck", v13, 2u);
      MEMORY[0x23190A000](v13, -1, -1);
    }

    return (*(v5 + 8))(v9, v4);
  }

  return result;
}

uint64_t sub_22FB89FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 112) = v10;
  *(v8 + 96) = a7;
  *(v8 + 104) = a8;
  *(v8 + 80) = a5;
  *(v8 + 88) = a6;
  *(v8 + 64) = a1;
  *(v8 + 72) = a4;
  return MEMORY[0x2822009F8](sub_22FB8A018, 0, 0);
}

uint64_t sub_22FB8A018()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v0[6] = sub_22FBAC124;
  v0[7] = v4;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_22FA51A14;
  v0[5] = &block_descriptor_361;
  v5 = _Block_copy(v0 + 2);
  v6 = objc_opt_self();

  v7 = [v6 progressReporterWithProgressBlock_];
  _Block_release(v5);

  if ([v1 isReady])
  {
    v8 = *(v0 + 112);
    v9 = v0[13];
    v10 = v0[11];
    v11 = sub_22FCC8C24();
    v12 = [v10 searchableAssetUUIDsBySocialGroupWithEventUUIDs:v11 ofType:v9 isFullAnalysis:v8 progressReporter:v7];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7448, &qword_22FCD2C50);
    v13 = sub_22FCC89D4();

    sub_22FC15084(v13);
    v15 = v14;

    if (v15)
    {
      v16 = v0[8];

      *v16 = v15;
      v17 = v0[1];
      goto LABEL_7;
    }

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8BA8, &qword_22FCDA448);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD86A8, &qword_22FCDA450) | 0x4000000000000000;
  }

  else
  {
    v18 = 0;
    v19 = 0xC000000000000000;
  }

  sub_22FBA4C28();
  swift_allocError();
  *v20 = v18;
  v20[1] = v19;
  swift_willThrow();

  v17 = v0[1];
LABEL_7:

  return v17();
}

uint64_t sub_22FB8A434(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *aBlock, uint64_t a6)
{
  v6[2] = a6;
  v6[3] = _Block_copy(aBlock);
  v9 = sub_22FCC8C44();
  v6[4] = v9;
  v10 = sub_22FCC8A84();
  v12 = v11;
  v6[5] = v11;

  v13 = swift_task_alloc();
  v6[6] = v13;
  *v13 = v6;
  v13[1] = sub_22FB8A548;

  return sub_22FB8976C(v9, a2, a3, v10, v12);
}

uint64_t sub_22FB8A548(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *v2;

  if (v3)
  {
    v6 = sub_22FCC6504();

    v7 = v6;
    v8 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7448, &qword_22FCD2C50);
    v9 = sub_22FCC89C4();

    v8 = v9;
    v7 = 0;
    v6 = v9;
  }

  v10 = *(v4 + 24);
  (v10)[2](v10, v8, v7);

  _Block_release(v10);
  v11 = *(v5 + 8);

  return v11();
}

uint64_t sub_22FB8A734(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v3[15] = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  v3[16] = swift_task_alloc();
  v4 = sub_22FCC8684();
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB8A858, 0, 0);
}

uint64_t sub_22FB8A858(uint64_t a1, uint64_t a2)
{
  v21 = v2;
  v3 = v2[15];
  v4 = sub_22FA2CE7C(&qword_28147FF30, a2, type metadata accessor for MomentGraphService, &unk_22FCDA1C0);
  sub_22FA2CEC4(v3, v4);
  v5 = sub_22FCC8664();
  v6 = sub_22FCC8EF4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22FA28000, v5, v6, "Search - requestGraphEntityRankingDonation", v7, 2u);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  v9 = v2[18];
  v8 = v2[19];
  v10 = v2[17];
  v11 = v2[14];

  (*(v9 + 8))(v8, v10);
  v12 = *(*(v11 + 128) + 112);
  v13 = type metadata accessor for GraphSearchEntityRankingDonationTask();
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v14 = swift_allocObject();

  v16 = sub_22FBD5714(v15, v12, v19, v14);
  v2[20] = v16;
  v17 = *(v11 + 168);
  v2[21] = v17;
  v2[5] = v13;
  v2[6] = sub_22FA2CE7C(&qword_28147C788, 255, type metadata accessor for GraphSearchEntityRankingDonationTask, &unk_22FCDD190);
  v2[2] = v16;

  return MEMORY[0x2822009F8](sub_22FB8AA58, v17, 0);
}

uint64_t sub_22FB8AA58()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 128);
  v4 = sub_22FCC8D14();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_22FA2D328(v0 + 16, v0 + 56);
  v5 = sub_22FA2CE7C(&qword_28147EFB8, 255, type metadata accessor for ServiceOperationManager, &unk_22FCD7218);
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v5;
  v6[4] = v1;
  sub_22FA2CF78((v0 + 56), (v6 + 5));
  swift_retain_n();
  v7 = sub_22FB22A48(0, 0, v3, &unk_22FCDA408, v6);
  *(v0 + 176) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D8, &unk_22FCD4850);
  v8 = swift_allocObject();
  *(v0 + 184) = v8;
  *(v8 + 16) = xmmword_22FCD1800;
  v9 = *(v2 + 56);
  *(v8 + 32) = *(v2 + 48);
  *(v8 + 40) = v9;

  v10 = swift_task_alloc();
  *(v0 + 192) = v10;
  *v10 = v0;
  v10[1] = sub_22FB8AC64;
  v11 = *(v0 + 96);
  v12 = *(v0 + 104);

  return sub_22FBE5228(v10, 0xD000000000000021, 0x800000022FCE6900, v7, v8, v11, v12);
}

uint64_t sub_22FB8AC64()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 168);
  if (v0)
  {
    v4 = sub_22FB8AE84;
  }

  else
  {
    v4 = sub_22FB8AD90;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FB8AD90()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2822009F8](sub_22FB8AE0C, 0, 0);
}

uint64_t sub_22FB8AE0C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB8AE84()
{

  return MEMORY[0x2822009F8](sub_22FB8AEF8, 0, 0);
}

uint64_t sub_22FB8AEF8()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB8B104(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v4 = sub_22FCC8A84();
  v6 = v5;
  v3[4] = v5;

  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_22FBAC09C;

  return sub_22FB8A734(v4, v6);
}

uint64_t sub_22FB8B1D8(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v3[15] = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  v3[16] = swift_task_alloc();
  v4 = sub_22FCC8684();
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB8B2FC, 0, 0);
}

uint64_t sub_22FB8B2FC(uint64_t a1, uint64_t a2)
{
  v21 = v2;
  v3 = v2[15];
  v4 = sub_22FA2CE7C(&qword_28147FF30, a2, type metadata accessor for MomentGraphService, &unk_22FCDA1C0);
  sub_22FA2CEC4(v3, v4);
  v5 = sub_22FCC8664();
  v6 = sub_22FCC8EF4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22FA28000, v5, v6, "Library Understanding - performLibraryUnderstanding", v7, 2u);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  v9 = v2[18];
  v8 = v2[19];
  v10 = v2[17];
  v11 = v2[14];

  (*(v9 + 8))(v8, v10);
  v12 = *(*(v11 + 128) + 112);
  v13 = type metadata accessor for LibraryUnderstandingTask(0);
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v14 = swift_allocObject();

  v16 = sub_22FBA1EE0(v15, v12, v19, 0, v14);
  v2[20] = v16;
  v17 = *(v11 + 168);
  v2[21] = v17;
  v2[5] = v13;
  v2[6] = sub_22FA2CE7C(&qword_28147EA40, 255, type metadata accessor for LibraryUnderstandingTask, &unk_22FCD5528);
  v2[2] = v16;

  return MEMORY[0x2822009F8](sub_22FB8B500, v17, 0);
}

uint64_t sub_22FB8B500()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 128);
  v4 = sub_22FCC8D14();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_22FA2D328(v0 + 16, v0 + 56);
  v5 = sub_22FA2CE7C(&qword_28147EFB8, 255, type metadata accessor for ServiceOperationManager, &unk_22FCD7218);
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v5;
  v6[4] = v1;
  sub_22FA2CF78((v0 + 56), (v6 + 5));
  swift_retain_n();
  v7 = sub_22FB22A48(0, 0, v3, &unk_22FCDA400, v6);
  *(v0 + 176) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D8, &unk_22FCD4850);
  v8 = swift_allocObject();
  *(v0 + 184) = v8;
  *(v8 + 16) = xmmword_22FCD1800;
  v9 = *(v2 + 56);
  *(v8 + 32) = *(v2 + 48);
  *(v8 + 40) = v9;

  v10 = swift_task_alloc();
  *(v0 + 192) = v10;
  *v10 = v0;
  v10[1] = sub_22FB8B70C;
  v11 = *(v0 + 96);
  v12 = *(v0 + 104);

  return sub_22FBE5228(v10, 0xD000000000000026, 0x800000022FCE6880, v7, v8, v11, v12);
}

uint64_t sub_22FB8B70C()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 168);
  if (v0)
  {
    v4 = sub_22FB8B8B4;
  }

  else
  {
    v4 = sub_22FB8B838;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FB8B838()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2822009F8](sub_22FBAC0AC, 0, 0);
}

uint64_t sub_22FB8B8B4()
{

  return MEMORY[0x2822009F8](sub_22FBAC0B0, 0, 0);
}

uint64_t sub_22FB8BAB4(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v4 = sub_22FCC8A84();
  v6 = v5;
  v3[4] = v5;

  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_22FBAC09C;

  return sub_22FB8B1D8(v4, v6);
}

uint64_t sub_22FB8BB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  v5[17] = *v4;
  v6 = sub_22FCC85D4();
  v5[18] = v6;
  v5[19] = *(v6 - 8);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v7 = sub_22FCC8604();
  v5[22] = v7;
  v5[23] = *(v7 - 8);
  v5[24] = swift_task_alloc();
  v8 = sub_22FCC8684();
  v5[25] = v8;
  v5[26] = *(v8 - 8);
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB8BD48, 0, 0);
}

uint64_t sub_22FB8BD48(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 136);
  v4 = sub_22FA2CE7C(&qword_28147FF30, a2, type metadata accessor for MomentGraphService, &unk_22FCDA1C0);
  sub_22FA2CEC4(v3, v4);
  v5 = sub_22FCC8664();
  v6 = sub_22FCC8EF4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22FA28000, v5, v6, "PublicEvents - requestPublicEventDataForMoment", v7, 2u);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  v8 = *(v2 + 224);
  v9 = *(v2 + 200);
  v10 = *(v2 + 208);
  v11 = *(v2 + 136);

  (*(v10 + 8))(v8, v9);
  sub_22FA2CEC4(v11, v4);
  sub_22FCC85E4();
  sub_22FCC85C4();
  v12 = sub_22FCC85F4();
  v13 = sub_22FCC90A4();
  if (sub_22FCC91A4())
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_22FCC85B4();
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v12, v13, v15, "MomentGraphService.requestPublicEventDataForMoment", "", v14, 2u);
    MEMORY[0x23190A000](v14, -1, -1);
  }

  v16 = *(v2 + 160);
  v17 = *(v2 + 168);
  v18 = *(v2 + 144);
  v19 = *(v2 + 152);
  v21 = *(v2 + 128);
  v20 = *(v2 + 136);
  v23 = *(v2 + 112);
  v22 = *(v2 + 120);
  v34 = *(v2 + 96);
  v35 = *(v2 + 104);

  (*(v19 + 16))(v16, v17, v18);
  sub_22FCC8644();
  swift_allocObject();
  *(v2 + 232) = sub_22FCC8634();
  (*(v19 + 8))(v17, v18);
  v24 = v21[16];
  v25 = *(v24 + 112);
  *(v2 + 240) = v25;
  v36 = v21[14];
  v37 = v21[15];

  MEMORY[0x231907FA0](58, 0xE100000000000000);
  MEMORY[0x231907FA0](v23, v22);
  *(v2 + 40) = type metadata accessor for MomentGraphWorker();
  *(v2 + 48) = sub_22FA2CE7C(&qword_281480230, 255, type metadata accessor for MomentGraphWorker, &unk_22FCD3AB8);
  *(v2 + 16) = v24;
  v26 = swift_allocObject();
  *(v26 + 16) = v20;
  v27 = swift_allocObject();
  v27[2] = v25;
  v27[3] = v34;
  v27[4] = v35;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8B90, &qword_22FCDA3D0);
  v29 = swift_allocObject();
  *(v2 + 248) = v29;
  *(v29 + 48) = 0;
  *(v29 + 56) = 0;
  *(v29 + 16) = 0xD00000000000001CLL;
  *(v29 + 24) = 0x800000022FCE6800;
  *(v29 + 32) = v36;
  *(v29 + 40) = v37;
  *(v29 + 64) = 0;
  *(v29 + 72) = 0;
  *(v29 + 80) = 0;
  *(v29 + 88) = 0u;
  *(v29 + 104) = 0u;
  *(v29 + 120) = 0;
  sub_22FA2CF78((v2 + 16), v29 + 144);
  *(v29 + 128) = &unk_22FCDA3F8;
  *(v29 + 136) = v27;
  *(v29 + 184) = sub_22FBA6AB0;
  *(v29 + 192) = v26;
  *(v2 + 80) = v28;
  *(v2 + 88) = sub_22FA2CF90(&qword_281481698, &qword_27DAD8B90, &qword_22FCDA3D0, &unk_22FCD9FA8);
  *(v2 + 56) = v29;

  v30 = swift_task_alloc();
  *(v2 + 256) = v30;
  *v30 = v2;
  v30[1] = sub_22FB8C22C;
  v31 = *(v2 + 112);
  v32 = *(v2 + 120);

  return sub_22FB7EA0C(v2 + 56, 0xD00000000000001FLL, 0x800000022FCE6820, v31, v32);
}

uint64_t sub_22FB8C22C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 264) = v1;

  if (v1)
  {
    v5 = sub_22FB8C464;
  }

  else
  {
    *(v4 + 272) = a1;
    __swift_destroy_boxed_opaque_existential_0((v4 + 56));
    v5 = sub_22FB8C35C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FB8C35C()
{
  v1 = v0[29];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[22];

  sub_22FB8D774(v2, "MomentGraphService.requestPublicEventDataForMoment", 50, 2, v1);

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];
  v6 = v0[34];

  return v5(v6);
}

uint64_t sub_22FB8C464()
{
  v1 = v0[29];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[22];

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  sub_22FB8D774(v2, "MomentGraphService.requestPublicEventDataForMoment", 50, 2, v1);

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_22FB8C570(char a1, uint64_t a2)
{
  v4 = sub_22FCC8684();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    result = sub_22FCC94D4();
    __break(1u);
  }

  else
  {
    v10 = sub_22FA2CE7C(&qword_28147FF30, v7, type metadata accessor for MomentGraphService, &unk_22FCDA1C0);
    sub_22FA2CEC4(a2, v10);
    v11 = sub_22FCC8664();
    v12 = sub_22FCC8F24();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_22FA28000, v11, v12, "MomentsGraphService.requestPublicEventDataForMoment is stuck", v13, 2u);
      MEMORY[0x23190A000](v13, -1, -1);
    }

    return (*(v5 + 8))(v9, v4);
  }

  return result;
}

uint64_t sub_22FB8C744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a7;
  v8[5] = a8;
  v8[2] = a1;
  v8[3] = a6;
  v9 = sub_22FCC6AD4();
  v8[6] = v9;
  v8[7] = *(v9 - 8);
  v8[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB8C808, 0, 0);
}

uint64_t sub_22FB8C808()
{
  v1 = *(*(v0 + 24) + 112);
  if ([v1 isReady])
  {
    v3 = *(v0 + 56);
    v2 = *(v0 + 64);
    v4 = *(v0 + 48);
    v5 = v1;
    sub_22FCC6AC4();
    v6 = sub_22FCC6AB4();
    (*(v3 + 8))(v2, v4);
    **(v0 + 16) = v6;
  }

  else
  {
    sub_22FBA4C28();
    swift_allocError();
    *v7 = xmmword_22FCD3450;
    swift_willThrow();
  }

  v8 = *(v0 + 8);

  return v8();
}