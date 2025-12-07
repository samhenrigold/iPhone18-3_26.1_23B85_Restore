uint64_t sub_20B6DE8A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C135E24();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_20B71B848(a1, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D52220]);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  sub_20B71C4A0(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, MEMORY[0x277D52220]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771DB0, &unk_20C155F60);
  return sub_20C137C94();
}

uint64_t sub_20B6DEA88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MarketingUserInterfaceConfiguration(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_20B71B848(a1, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MarketingUserInterfaceConfiguration);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  sub_20B71C4A0(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for MarketingUserInterfaceConfiguration);
  sub_20B51C88C(0, &qword_281100550, 0x277D75D28);

  return sub_20C137C94();
}

uint64_t sub_20B6DEC30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622A0, &unk_20C14FCB0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13 - v8;
  sub_20B52F9E8(a1, &v13 - v8, &unk_27C7622A0, &unk_20C14FCB0);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  sub_20B5DF134(v9, v11 + v10, &unk_27C7622A0, &unk_20C14FCB0);

  return sub_20C137C94();
}

uint64_t sub_20B6DED88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622A0, &unk_20C14FCB0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13 - v8;
  sub_20B52F9E8(a1, &v13 - v8, &unk_27C7622A0, &unk_20C14FCB0);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  sub_20B5DF134(v9, v11 + v10, &unk_27C7622A0, &unk_20C14FCB0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70, &unk_20C14FD20);
  return sub_20C137C94();
}

uint64_t sub_20B6DF344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WorkoutSessionConfiguration(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_20B71B848(a1, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutSessionConfiguration);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  sub_20B71C4A0(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for WorkoutSessionConfiguration);

  return sub_20C137C94();
}

uint64_t sub_20B6DF520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(void), uint64_t a7)
{
  v19[1] = a7;
  v11 = a4(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v19 - v14;
  (*(v12 + 16))(v19 - v14, a1, v11, v13);
  v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  (*(v12 + 32))(v17 + v16, v15, v11);
  a6(0);

  return sub_20C137C94();
}

uint64_t sub_20B6DF6C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C1377C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  (*(v7 + 16))(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6, v9);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  (*(v7 + 32))(v11 + v10, &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7644F0, &unk_20C155F80);
  return sub_20C137C94();
}

uint64_t sub_20B6DF868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WorkoutSessionConfiguration(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_20B71B848(a1, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutSessionConfiguration);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  sub_20B71C4A0(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for WorkoutSessionConfiguration);
  sub_20B51C88C(0, &qword_281100550, 0x277D75D28);

  return sub_20C137C94();
}

uint64_t sub_20B6DF9D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WorkoutSessionConfiguration(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_20B71B848(a1, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutSessionConfiguration);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  sub_20B71C4A0(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for WorkoutSessionConfiguration);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70, &unk_20C14FD20);
  return sub_20C137C94();
}

uint64_t sub_20B6DFD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  v9 = a4(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  (*(v10 + 16))(&v17 - v12, a1, v9, v11);
  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  (*(v10 + 32))(v15 + v14, v13, v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70, &unk_20C14FD20);
  return sub_20C137C94();
}

uint64_t sub_20B6DFEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18[1] = a7;
  v10 = a4(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v18 - v13;
  (*(v11 + 16))(v18 - v13, a1, v10, v12);
  v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  (*(v11 + 32))(v16 + v15, v14, v10);

  return sub_20C137C94();
}

void sub_20B6E3588(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_20C134104();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764168, &unk_20C155CC0);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_20B52F9E8(a1, v20 - v14, &qword_27C764168, &unk_20C155CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B5DF6DC, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

double sub_20B6E3868(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void **), uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t a10)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v25 - v17;
  v25 = a1;
  if (a2)
  {
    v26 = 1;
    v19 = a1;
    a5(&v25);
    v20 = a1;
    v21 = 1;
  }

  else
  {

    a3(&v25);
    v22 = sub_20C137CB4();
    v23 = swift_allocObject();
    *(v23 + 16) = a5;
    *(v23 + 24) = a6;

    v22(a10, v23);

    (*(v16 + 8))(v18, v15);
    v20 = a1;
    v21 = 0;
  }

  return sub_20B71C190(v20, v21);
}

void sub_20B6E3A08(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_20C135AE4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641D8, &unk_20C155D20);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_20B52F9E8(a1, v20 - v14, &qword_27C7641D8, &unk_20C155D20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B5DF6DC, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_20B6E3CE8(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - v13;
  v19 = a1;
  if (a2)
  {
    v20 = 1;
    v15 = a1;
    a5(&v19);
  }

  else
  {
    v16 = a1;
    a3(&v19);
    v17 = sub_20C137CB4();
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;

    v17(sub_20B5DF6DC, v18);

    (*(v12 + 8))(v14, v11);
  }

  sub_20B539018(a1);
}

void sub_20B6E3E9C(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769A60, &unk_20C152F70);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_20C135734();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764238, &unk_20C155D70);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_20B52F9E8(a1, v20 - v14, &qword_27C764238, &unk_20C155D70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B718F14, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_20B6E417C(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - v13;
  v19 = a1;
  if (a2)
  {
    v20 = 1;
    v15 = a1;
    a5(&v19);
  }

  else
  {
    v16 = a1;
    a3(&v19);
    v17 = sub_20C137CB4();
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;

    v17(sub_20B5DF6DC, v18);

    (*(v12 + 8))(v14, v11);
  }

  sub_20B539018(a1);
}

void sub_20B6E4330(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_20C135734();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764238, &unk_20C155D70);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_20B52F9E8(a1, v20 - v14, &qword_27C764238, &unk_20C155D70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B5DF6DC, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_20B6E4610(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  if (a2)
  {
    v19 = a1;
    v20 = 1;
    v16 = a1;
    a5(&v19);
    sub_20B583FB8(a1, 1);
  }

  else
  {
    a3(v13);
    v17 = sub_20C137CB4();
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;

    v17(sub_20B5DF6DC, v18);

    (*(v12 + 8))(v15, v11);
  }
}

void sub_20B6E47B0(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - v13;
  v19 = a1;
  if (a2)
  {
    v20 = 1;
    v15 = a1;
    a5(&v19);
  }

  else
  {
    v16 = a1;
    a3(&v19);
    v17 = sub_20C137CB4();
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;

    v17(sub_20B5DF6DC, v18);

    (*(v12 + 8))(v14, v11);
  }

  sub_20B539018(a1);
}

void sub_20B6E4964(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v22 = a2;
  v23 = a4;
  v21[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771DA0, &unk_20C171ED0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - v9;
  v11 = sub_20C135E24();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7644C0, &qword_20C16F0B0);
  MEMORY[0x28223BE20](v14);
  v16 = (v21 - v15);
  sub_20B52F9E8(a1, v21 - v15, &unk_27C7644C0, &qword_20C16F0B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v16;
    v17 = v24;
    v25 = 1;
    v18 = v24;
    v23(&v24);
  }

  else
  {
    sub_20B71C4A0(v16, v13, MEMORY[0x277D52220]);
    v22(v13);
    v19 = sub_20C137CB4();
    v20 = swift_allocObject();
    *(v20 + 16) = v23;
    *(v20 + 24) = a5;

    v19(sub_20B52E438, v20);

    (*(v8 + 8))(v10, v7);
    sub_20B71C508(v13, MEMORY[0x277D52220]);
  }
}

double sub_20B6E4C14(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v21 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7644C0, &qword_20C16F0B0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v21 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7644B8, &unk_20C155F50);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v21 - v15;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v17 = a1;
    v21(v12);
    sub_20B520158(v12, &unk_27C7644C0, &qword_20C16F0B0);
  }

  else
  {
    v22 = a1;

    a3(&v22);
    v19 = sub_20C137CB4();
    v20 = swift_allocObject();
    *(v20 + 16) = v21;
    *(v20 + 24) = a6;

    v19(sub_20B52F234, v20);

    (*(v14 + 8))(v16, v13);
    return sub_20B71C190(a1, 0);
  }

  return result;
}

void sub_20B6E4E40(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_20C135524();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764488, &qword_20C155F40);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_20B52F9E8(a1, v20 - v14, &qword_27C764488, &qword_20C155F40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B5DF6DC, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_20B6E5120(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_20C135914();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764318, &unk_20C155E40);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_20B52F9E8(a1, v20 - v14, &qword_27C764318, &unk_20C155E40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B5DF6DC, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_20B6E5400(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764318, &unk_20C155E40);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764310, &unk_20C17CD00);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_20B520158(v12, &qword_27C764318, &unk_20C155E40);
  }

  else
  {
    a3(v15);
    v20 = sub_20C137CB4();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a6;

    v20(sub_20B52F234, v21);

    return (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_20B6E5614(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641D8, &unk_20C155D20);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A30, &unk_20C151290);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_20B520158(v12, &qword_27C7641D8, &unk_20C155D20);
  }

  else
  {
    a3(v15);
    v20 = sub_20C137CB4();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a6;

    v20(sub_20B52F234, v21);

    return (*(v14 + 8))(v17, v13);
  }
}

void sub_20B6E5828(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D260, &unk_20C155CF0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - v13;
  v19 = a1;
  if (a2)
  {
    v20 = 1;
    v15 = a1;
    a5(&v19);
  }

  else
  {
    v16 = a1;
    a3(&v19);
    v17 = sub_20C137CB4();
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;

    v17(sub_20B718F14, v18);

    (*(v12 + 8))(v14, v11);
  }

  sub_20B539018(a1);
}

void sub_20B6E59DC(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - v13;
  v19 = a1;
  if (a2)
  {
    v20 = 1;
    v15 = a1;
    a5(&v19);
  }

  else
  {
    v16 = a1;
    a3(&v19);
    v17 = sub_20C137CB4();
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;

    v17(sub_20B5DF6DC, v18);

    (*(v12 + 8))(v14, v11);
  }

  sub_20B539018(a1);
}

void sub_20B6E5B90(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_20C138204();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7646E0, &unk_20C1560D0);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_20B52F9E8(a1, v20 - v14, &qword_27C7646E0, &unk_20C1560D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B5DF6DC, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_20B6E5E70(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v25 = a3;
  v26 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7646D8, &unk_20C17C950);
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v9 = sub_20C138204();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7646E0, &unk_20C1560D0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v18 = (&v25 - v17);
  sub_20B52F9E8(a1, &v25 - v17, &qword_27C7646E0, &unk_20C1560D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v18;
    *v15 = *v18;
    swift_storeEnumTagMultiPayload();
    v20 = v19;
    v29(v15);

    return sub_20B520158(v15, &qword_27C7646E0, &unk_20C1560D0);
  }

  else
  {
    (*(v10 + 32))(v12, v18, v9);
    v26(v12);
    v22 = v28;
    v23 = sub_20C137CB4();
    v24 = swift_allocObject();
    *(v24 + 16) = v29;
    *(v24 + 24) = v30;

    v23(sub_20B52F234, v24);

    (*(v27 + 8))(v8, v22);
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_20B6E618C(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v23[1] = a3;
  v24 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764250, &unk_20C155D88);
  MEMORY[0x28223BE20](v6);
  v8 = (v23 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7719A0, &qword_20C155D80);
  v25 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v23 - v10;
  v12 = type metadata accessor for MarketingUserInterfaceResource(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764280, &qword_20C155DD0);
  MEMORY[0x28223BE20](v15);
  v17 = (v23 - v16);
  sub_20B52F9E8(a1, v23 - v16, &qword_27C764280, &qword_20C155DD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    *v8 = *v17;
    swift_storeEnumTagMultiPayload();
    v19 = v18;
    v26(v8);

    return sub_20B520158(v8, &qword_27C764250, &unk_20C155D88);
  }

  else
  {
    sub_20B71C4A0(v17, v14, type metadata accessor for MarketingUserInterfaceResource);
    v24(v14);
    v21 = sub_20C137CB4();
    v22 = swift_allocObject();
    *(v22 + 16) = v26;
    *(v22 + 24) = v27;

    v21(sub_20B52F234, v22);

    (*(v25 + 8))(v11, v9);
    return sub_20B71C508(v14, type metadata accessor for MarketingUserInterfaceResource);
  }
}

uint64_t sub_20B6E64A8(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v24[1] = a3;
  v25 = a2;
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764250, &unk_20C155D88);
  MEMORY[0x28223BE20](v5);
  v7 = (v24 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7719A0, &qword_20C155D80);
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v24 - v9;
  v11 = sub_20C1387E4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764270, &qword_20C155DC0);
  MEMORY[0x28223BE20](v15);
  v17 = (v24 - v16);
  sub_20B52F9E8(v28, v24 - v16, &unk_27C764270, &qword_20C155DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    *v7 = *v17;
    swift_storeEnumTagMultiPayload();
    v19 = v18;
    v29(v7);

    return sub_20B520158(v7, &qword_27C764250, &unk_20C155D88);
  }

  else
  {
    (*(v12 + 32))(v14, v17, v11);
    v25(v14);
    v21 = v27;
    v22 = sub_20C137CB4();
    v23 = swift_allocObject();
    *(v23 + 16) = v29;
    *(v23 + 24) = v30;

    v22(sub_20B52F234, v23);

    (*(v26 + 8))(v10, v21);
    return (*(v12 + 8))(v14, v11);
  }
}

void sub_20B6E67F4(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v22 = a2;
  v23 = a4;
  v21[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D260, &unk_20C155CF0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - v9;
  v11 = type metadata accessor for MarketingUserInterfaceConfiguration(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764250, &unk_20C155D88);
  MEMORY[0x28223BE20](v14);
  v16 = (v21 - v15);
  sub_20B52F9E8(a1, v21 - v15, &qword_27C764250, &unk_20C155D88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v16;
    v17 = v24;
    v25 = 1;
    v18 = v24;
    v23(&v24);
  }

  else
  {
    sub_20B71C4A0(v16, v13, type metadata accessor for MarketingUserInterfaceConfiguration);
    v22(v13);
    v19 = sub_20C137CB4();
    v20 = swift_allocObject();
    *(v20 + 16) = v23;
    *(v20 + 24) = a5;

    v19(sub_20B71C59C, v20);

    (*(v8 + 8))(v10, v7);
    sub_20B71C508(v13, type metadata accessor for MarketingUserInterfaceConfiguration);
  }
}

void sub_20B6E6AA4(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - v13;
  v19 = a1;
  if (a2)
  {
    v20 = 1;
    v15 = a1;
    a5(&v19);
  }

  else
  {
    v16 = a1;
    a3(&v19);
    v17 = sub_20C137CB4();
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;

    v17(sub_20B5DF6DC, v18);

    (*(v12 + 8))(v14, v11);
  }

  sub_20B539018(a1);
}

void sub_20B6E6C58(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764240, &unk_20C184D30);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - v13;
  v19 = a1;
  if (a2)
  {
    v20 = 1;
    v15 = a1;
    a5(&v19);
  }

  else
  {
    v16 = a1;
    a3(&v19);
    v17 = sub_20C137CB4();
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;

    v17(sub_20B718F14, v18);

    (*(v12 + 8))(v14, v11);
  }

  sub_20B539018(a1);
}

double sub_20B6E6E0C(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v21 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764110, &unk_20C155C70);
  MEMORY[0x28223BE20](v10);
  v12 = (&v21 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623E0, &unk_20C14FE70);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v21 - v15;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v17 = a1;
    v21(v12);
    sub_20B520158(v12, &unk_27C764110, &unk_20C155C70);
  }

  else
  {
    v22 = a1;

    a3(&v22);
    v19 = sub_20C137CB4();
    v20 = swift_allocObject();
    *(v20 + 16) = v21;
    *(v20 + 24) = a6;

    v19(sub_20B52F234, v20);

    (*(v14 + 8))(v16, v13);
    return sub_20B71C190(a1, 0);
  }

  return result;
}

void sub_20B6E7038(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_20C134D54();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764110, &unk_20C155C70);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_20B52F9E8(a1, v20 - v14, &unk_27C764110, &unk_20C155C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B5DF6DC, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_20B6E7318(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_20C1387E4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764270, &qword_20C155DC0);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_20B52F9E8(a1, v20 - v14, &unk_27C764270, &qword_20C155DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B5DF6DC, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_20B6E75F8(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v22 = a2;
  v23 = a4;
  v21[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622A0, &unk_20C14FCB0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v21 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7642B0, &unk_20C155DF0);
  MEMORY[0x28223BE20](v14);
  v16 = (v21 - v15);
  sub_20B52F9E8(a1, v21 - v15, &unk_27C7642B0, &unk_20C155DF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v16;
    v17 = v24;
    v25 = 1;
    v18 = v24;
    v23(&v24);
  }

  else
  {
    sub_20B5DF134(v16, v13, &unk_27C7622A0, &unk_20C14FCB0);
    v22(v13);
    v19 = sub_20C137CB4();
    v20 = swift_allocObject();
    *(v20 + 16) = v23;
    *(v20 + 24) = a5;

    v19(sub_20B5DF6DC, v20);

    (*(v8 + 8))(v10, v7);
    sub_20B520158(v13, &unk_27C7622A0, &unk_20C14FCB0);
  }
}

void sub_20B6E78A8(void *a1, char a2, void (*a3)(char *, double), uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  if (a2)
  {
    v21 = a1;
    v22 = 1;
    v16 = a1;
    a5(&v21);
    sub_20B583FB8(a1, 1);
  }

  else
  {
    v20 = a1 & 1;
    a3(&v20, v13);
    v17 = sub_20C137CB4();
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;

    v17(sub_20B5DF6DC, v18);

    (*(v12 + 8))(v15, v11);
  }
}

void sub_20B6E7A54(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v22 = a2;
  v23 = a4;
  v21[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320, &unk_20C153880);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622A0, &unk_20C14FCB0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v21 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7642B0, &unk_20C155DF0);
  MEMORY[0x28223BE20](v14);
  v16 = (v21 - v15);
  sub_20B52F9E8(a1, v21 - v15, &unk_27C7642B0, &unk_20C155DF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v16;
    v17 = v24;
    v25 = 1;
    v18 = v24;
    v23(&v24);
  }

  else
  {
    sub_20B5DF134(v16, v13, &unk_27C7622A0, &unk_20C14FCB0);
    v22(v13);
    v19 = sub_20C137CB4();
    v20 = swift_allocObject();
    *(v20 + 16) = v23;
    *(v20 + 24) = a5;

    v19(sub_20B5DF6DC, v20);

    (*(v8 + 8))(v10, v7);
    sub_20B520158(v13, &unk_27C7622A0, &unk_20C14FCB0);
  }
}

void sub_20B6E7D04(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20 = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762B68, &qword_20C155D30);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = sub_20C135AE4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641D8, &unk_20C155D20);
  MEMORY[0x28223BE20](v13);
  v15 = (&v20 - v14);
  sub_20B52F9E8(a1, &v20 - v14, &qword_27C7641D8, &unk_20C155D20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25[0] = *v15;
    v16 = v25[0];
    v25[1] = 0;
    v26 = 1;
    v17 = v25[0];
    v23(v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B71C590, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_20B6E7FE4(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20 = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762B68, &qword_20C155D30);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = sub_20C134214();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764220, &qword_20C155D68);
  MEMORY[0x28223BE20](v13);
  v15 = (&v20 - v14);
  sub_20B52F9E8(a1, &v20 - v14, &unk_27C764220, &qword_20C155D68);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25[0] = *v15;
    v16 = v25[0];
    v25[1] = 0;
    v26 = 1;
    v17 = v25[0];
    v23(v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B71C590, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_20B6E82C4(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20 = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762B68, &qword_20C155D30);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = sub_20C135974();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764210, &qword_20C155D58);
  MEMORY[0x28223BE20](v13);
  v15 = (&v20 - v14);
  sub_20B52F9E8(a1, &v20 - v14, &qword_27C764210, &qword_20C155D58);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25[0] = *v15;
    v16 = v25[0];
    v25[1] = 0;
    v26 = 1;
    v17 = v25[0];
    v23(v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B71C590, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_20B6E85A4(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20 = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762B68, &qword_20C155D30);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = sub_20C135CC4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764200, &qword_20C155D48);
  MEMORY[0x28223BE20](v13);
  v15 = (&v20 - v14);
  sub_20B52F9E8(a1, &v20 - v14, &qword_27C764200, &qword_20C155D48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25[0] = *v15;
    v16 = v25[0];
    v25[1] = 0;
    v26 = 1;
    v17 = v25[0];
    v23(v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B71C590, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_20B6E8884(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20 = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762B68, &qword_20C155D30);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = sub_20C1377C4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7641F0, &unk_20C155D38);
  MEMORY[0x28223BE20](v13);
  v15 = (&v20 - v14);
  sub_20B52F9E8(a1, &v20 - v14, &unk_27C7641F0, &unk_20C155D38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25[0] = *v15;
    v16 = v25[0];
    v25[1] = 0;
    v26 = 1;
    v17 = v25[0];
    v23(v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B718F84, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_20B6E8B64(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_20C135CC4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764200, &qword_20C155D48);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_20B52F9E8(a1, v20 - v14, &qword_27C764200, &qword_20C155D48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B5DF6DC, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_20B6E8E44(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320, &unk_20C153880);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - v13;
  v19 = a1;
  if (a2)
  {
    v20 = 1;
    v15 = a1;
    a5(&v19);
  }

  else
  {
    v16 = a1;
    a3(&v19);
    v17 = sub_20C137CB4();
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;

    v17(sub_20B5DF6DC, v18);

    (*(v12 + 8))(v14, v11);
  }

  sub_20B539018(a1);
}

void sub_20B6E8FF8(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20 = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762B68, &qword_20C155D30);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = sub_20C134104();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764168, &unk_20C155CC0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v20 - v14);
  sub_20B52F9E8(a1, &v20 - v14, &qword_27C764168, &unk_20C155CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25[0] = *v15;
    v16 = v25[0];
    v25[1] = 0;
    v26 = 1;
    v17 = v25[0];
    v23(v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B71C590, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_20B6E92D8(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764320, &unk_20C16C580);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_20C135734();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764238, &unk_20C155D70);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_20B52F9E8(a1, v20 - v14, &qword_27C764238, &unk_20C155D70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B718F14, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_20B6E95B8(void *a1, char a2, void (*a3)(void *), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762B68, &qword_20C155D30);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v20[-1] - v14;
  if (a2)
  {
    v20[0] = a1;
    v20[1] = 0;
    v21 = 1;
    v16 = a1;
    a5(v20);
    sub_20B583FB8(a1, 1);
  }

  else
  {
    LODWORD(v20[0]) = a1;
    BYTE4(v20[0]) = BYTE4(a1) & 1;
    (a3)(v20, v13);
    v17 = sub_20C137CB4();
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;

    v17(sub_20B71C590, v18);

    (*(v12 + 8))(v15, v11);
  }
}

void sub_20B6E9768(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762B68, &qword_20C155D30);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v20[-1] - v14;
  if (a2)
  {
    v20[0] = a1;
    v20[1] = 0;
    v21 = 1;
    v16 = a1;
    a5(v20);
    sub_20B583FB8(a1, 1);
  }

  else
  {
    a3(v13);
    v17 = sub_20C137CB4();
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;

    v17(sub_20B71C590, v18);

    (*(v12 + 8))(v15, v11);
  }
}

double sub_20B6E9908(void *a1, uint64_t a2, char a3, void (*a4)(void **), uint64_t a5, void (*a6)(void **), uint64_t a7)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v21 - v15;
  v21 = a1;
  if (a3)
  {
    LOBYTE(v22) = 1;
    v17 = a1;
    a6(&v21);
    return sub_20B62E744(a1, a2, 1);
  }

  else
  {
    v22 = a2;

    a4(&v21);
    v19 = sub_20C137CB4();
    v20 = swift_allocObject();
    *(v20 + 16) = a6;
    *(v20 + 24) = a7;

    v19(sub_20B5DF6DC, v20);

    (*(v14 + 8))(v16, v13);
  }

  return result;
}

void sub_20B6E9AD8(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320, &unk_20C153880);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_20C135524();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764488, &qword_20C155F40);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_20B52F9E8(a1, v20 - v14, &qword_27C764488, &qword_20C155F40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B5DF6DC, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

double sub_20B6E9DB8(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v21 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7644F8, &qword_20C16F0F0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v21 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764500, &unk_20C155F90);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v21 - v15;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v17 = a1;
    v21(v12);
    sub_20B520158(v12, &qword_27C7644F8, &qword_20C16F0F0);
  }

  else
  {
    v22 = a1;

    a3(&v22);
    v19 = sub_20C137CB4();
    v20 = swift_allocObject();
    *(v20 + 16) = v21;
    *(v20 + 24) = a6;

    v19(sub_20B52F234, v20);

    (*(v14 + 8))(v16, v13);
    return sub_20B71C190(a1, 0);
  }

  return result;
}

void sub_20B6E9FE4(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v22 = a2;
  v23 = a4;
  v21[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - v9;
  v11 = type metadata accessor for CatalogTipPlaybackContent(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7644F8, &qword_20C16F0F0);
  MEMORY[0x28223BE20](v14);
  v16 = (v21 - v15);
  sub_20B52F9E8(a1, v21 - v15, &qword_27C7644F8, &qword_20C16F0F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v16;
    v17 = v24;
    v25 = 1;
    v18 = v24;
    v23(&v24);
  }

  else
  {
    sub_20B71C4A0(v16, v13, type metadata accessor for CatalogTipPlaybackContent);
    v22(v13);
    v19 = sub_20C137CB4();
    v20 = swift_allocObject();
    *(v20 + 16) = v23;
    *(v20 + 24) = a5;

    v19(sub_20B5DF6DC, v20);

    (*(v8 + 8))(v10, v7);
    sub_20B71C508(v13, type metadata accessor for CatalogTipPlaybackContent);
  }
}

void sub_20B6EA294(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_20C1369A4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764738, &unk_20C156100);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_20B52F9E8(a1, v20 - v14, &qword_27C764738, &unk_20C156100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B5DF6DC, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_20B6EA574(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_20C1366D4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764748, &unk_20C156110);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_20B52F9E8(a1, v20 - v14, &qword_27C764748, &unk_20C156110);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B5DF6DC, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_20B6EA854(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_20C136544();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764758, &unk_20C156120);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_20B52F9E8(a1, v20 - v14, &qword_27C764758, &unk_20C156120);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B5DF6DC, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_20B6EAB34(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_20C135534();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764550, &qword_20C155FD0);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_20B52F9E8(a1, v20 - v14, &unk_27C764550, &qword_20C155FD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B5DF6DC, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_20B6EAE14(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762FA0, &unk_20C156060);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_20C135AE4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641D8, &unk_20C155D20);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_20B52F9E8(a1, v20 - v14, &qword_27C7641D8, &unk_20C155D20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B718F14, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_20B6EB0F4(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320, &unk_20C153880);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_20C135974();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764210, &qword_20C155D58);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_20B52F9E8(a1, v20 - v14, &qword_27C764210, &qword_20C155D58);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B5DF6DC, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_20B6EB3D4(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764210, &qword_20C155D58);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764208, &qword_20C155D50);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_20B520158(v12, &qword_27C764210, &qword_20C155D58);
  }

  else
  {
    a3(v15);
    v20 = sub_20C137CB4();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a6;

    v20(sub_20B52F234, v21);

    return (*(v14 + 8))(v17, v13);
  }
}

void sub_20B6EB5E8(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_20C135974();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764210, &qword_20C155D58);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_20B52F9E8(a1, v20 - v14, &qword_27C764210, &qword_20C155D58);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B5DF6DC, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_20B6EB8C8(void *a1, char a2, void (*a3)(void *), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764600, &qword_20C153B88);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v19 - v13;
  v19[0] = a1;
  if (a2)
  {
    v20 = 1;
    v15 = a1;
    a5(v19);
    sub_20B520158(v19, &qword_27C764608, &unk_20C156050);
  }

  else
  {
    v16 = a1;
    a3(v19);
    v17 = sub_20C137CB4();
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;

    v17(sub_20B5306C0, v18);

    (*(v12 + 8))(v14, v11);
    sub_20B539018(a1);
  }
}

void sub_20B6EBA8C(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - v11;
  sub_20B52F9E8(a1, v20, &qword_27C764608, &unk_20C156050);
  if (v21)
  {
    v13 = *&v20[0];
    v18 = *&v20[0];
    v19 = 1;
    v14 = *&v20[0];
    a4(&v18);
  }

  else
  {
    sub_20B51C710(v20, &v18);
    a2(&v18);
    v15 = sub_20C137CB4();
    v16 = swift_allocObject();
    *(v16 + 16) = a4;
    *(v16 + 24) = a5;

    v15(sub_20B5DF6DC, v16);

    (*(v10 + 8))(v12, v9);
    __swift_destroy_boxed_opaque_existential_1(&v18);
  }
}

uint64_t sub_20B6EBC60(void *a1, char a2, void (*a3)(char *, double), uint64_t a4, void (*a5)(void **), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void *, uint64_t))
{
  v23 = a8;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v23 - v17;
  if (a2)
  {
    v25 = a1;
    v26 = 1;
    v19 = a1;
    a5(&v25);
    return a9(a1, 1);
  }

  else
  {
    v24 = a1 & 1;
    a3(&v24, v16);
    v21 = sub_20C137CB4();
    v22 = swift_allocObject();
    *(v22 + 16) = a5;
    *(v22 + 24) = a6;

    v21(v23, v22);

    return (*(v15 + 8))(v18, v14);
  }
}

void sub_20B6EBE08(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_20C136194();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764620, &qword_20C18E3E0);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_20B52F9E8(a1, v20 - v14, &unk_27C764620, &qword_20C18E3E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B5DF6DC, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_20B6EC0E8(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_20C137EA4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764790, &qword_20C156150);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_20B52F9E8(a1, v20 - v14, &qword_27C764790, &qword_20C156150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B5DF6DC, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_20B6EC3C8(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - v13;
  v19 = a1;
  if (a2)
  {
    v20 = 1;
    v15 = a1;
    a5(&v19);
  }

  else
  {
    v16 = a1;
    a3(&v19);
    v17 = sub_20C137CB4();
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;

    v17(sub_20B5DF6DC, v18);

    (*(v12 + 8))(v14, v11);
  }

  sub_20B539018(a1);
}

uint64_t sub_20B6EC57C(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v24[1] = a3;
  v25 = a2;
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764898, &unk_20C156220);
  MEMORY[0x28223BE20](v5);
  v7 = (v24 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764890, &qword_20C175CC0);
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v24 - v9;
  v11 = sub_20C135AE4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641D8, &unk_20C155D20);
  MEMORY[0x28223BE20](v15);
  v17 = (v24 - v16);
  sub_20B52F9E8(v28, v24 - v16, &qword_27C7641D8, &unk_20C155D20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    *v7 = *v17;
    swift_storeEnumTagMultiPayload();
    v19 = v18;
    v29(v7);

    return sub_20B520158(v7, &qword_27C764898, &unk_20C156220);
  }

  else
  {
    (*(v12 + 32))(v14, v17, v11);
    v25(v14);
    v21 = v27;
    v22 = sub_20C137CB4();
    v23 = swift_allocObject();
    *(v23 + 16) = v29;
    *(v23 + 24) = v30;

    v22(sub_20B52F234, v23);

    (*(v26 + 8))(v10, v21);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_20B6EC8C8(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764418, &qword_20C155F08);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764410, &qword_20C155F00);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_20B520158(v12, &qword_27C764418, &qword_20C155F08);
  }

  else
  {
    a3(v15);
    v20 = sub_20C137CB4();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a6;

    v20(sub_20B52F234, v21);

    return (*(v14 + 8))(v17, v13);
  }
}

void sub_20B6ECADC(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_20C1344C4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764898, &unk_20C156220);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_20B52F9E8(a1, v20 - v14, &qword_27C764898, &unk_20C156220);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B5DF6DC, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_20B6ECDBC(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v22 = a2;
  v23 = a4;
  v21[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - v9;
  v11 = type metadata accessor for WorkoutSessionConfiguration(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764418, &qword_20C155F08);
  MEMORY[0x28223BE20](v14);
  v16 = (v21 - v15);
  sub_20B52F9E8(a1, v21 - v15, &qword_27C764418, &qword_20C155F08);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v16;
    v17 = v24;
    v25 = 1;
    v18 = v24;
    v23(&v24);
  }

  else
  {
    sub_20B71C4A0(v16, v13, type metadata accessor for WorkoutSessionConfiguration);
    v22(v13);
    v19 = sub_20C137CB4();
    v20 = swift_allocObject();
    *(v20 + 16) = v23;
    *(v20 + 24) = a5;

    v19(sub_20B5DF6DC, v20);

    (*(v8 + 8))(v10, v7);
    sub_20B71C508(v13, type metadata accessor for WorkoutSessionConfiguration);
  }
}

void sub_20B6ED06C(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_20C136624();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764768, &unk_20C156130);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_20B52F9E8(a1, v20 - v14, &qword_27C764768, &unk_20C156130);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B5DF6DC, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_20B6ED34C(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v24[1] = a3;
  v25 = a2;
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D250, &unk_20C155D00);
  MEMORY[0x28223BE20](v5);
  v7 = (v24 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641C0, &qword_20C161470);
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v24 - v9;
  v11 = sub_20C136754();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764828, &qword_20C1561D8);
  MEMORY[0x28223BE20](v15);
  v17 = (v24 - v16);
  sub_20B52F9E8(v28, v24 - v16, &qword_27C764828, &qword_20C1561D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    *v7 = *v17;
    swift_storeEnumTagMultiPayload();
    v19 = v18;
    v29(v7);

    return sub_20B520158(v7, &unk_27C76D250, &unk_20C155D00);
  }

  else
  {
    (*(v12 + 32))(v14, v17, v11);
    v25(v14);
    v21 = v27;
    v22 = sub_20C137CB4();
    v23 = swift_allocObject();
    *(v23 + 16) = v29;
    *(v23 + 24) = v30;

    v22(sub_20B52F234, v23);

    (*(v26 + 8))(v10, v21);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_20B6ED698(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v24[1] = a3;
  v25 = a2;
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D250, &unk_20C155D00);
  MEMORY[0x28223BE20](v5);
  v7 = (v24 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641C0, &qword_20C161470);
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v24 - v9;
  v11 = sub_20C136014();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7641C8, &unk_20C155D10);
  MEMORY[0x28223BE20](v15);
  v17 = (v24 - v16);
  sub_20B52F9E8(v28, v24 - v16, &unk_27C7641C8, &unk_20C155D10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    *v7 = *v17;
    swift_storeEnumTagMultiPayload();
    v19 = v18;
    v29(v7);

    return sub_20B520158(v7, &unk_27C76D250, &unk_20C155D00);
  }

  else
  {
    (*(v12 + 32))(v14, v17, v11);
    v25(v14);
    v21 = v27;
    v22 = sub_20C137CB4();
    v23 = swift_allocObject();
    *(v23 + 16) = v29;
    *(v23 + 24) = v30;

    v22(sub_20B530380, v23);

    (*(v26 + 8))(v10, v21);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_20B6ED9E4(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7641C8, &unk_20C155D10);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7641B0, &unk_20C156CE0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_20B520158(v12, &unk_27C7641C8, &unk_20C155D10);
  }

  else
  {
    a3(v15);
    v20 = sub_20C137CB4();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a6;

    v20(sub_20B52F234, v21);

    return (*(v14 + 8))(v17, v13);
  }
}

void sub_20B6EDBF8(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7644D0, &unk_20C1606D0);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_20C135734();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764238, &unk_20C155D70);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_20B52F9E8(a1, v20 - v14, &qword_27C764238, &unk_20C155D70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B718F14, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

double sub_20B6EDED8(uint64_t a1, void (*a2)(void **), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v20 = a3;
  v21 = a4;
  v9 = *a1;
  v8 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - v14;
  if (*(a1 + 32))
  {
    v22 = v9;
    LOBYTE(v23) = 1;
    v16 = v9;
    v21(&v22);
    sub_20B520158(a1, &qword_27C7645C0, &qword_20C156008);
  }

  else
  {
    v22 = v9;
    v23 = v8;
    v24 = v10;
    v25 = v11;

    a2(&v22);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v21;
    *(v19 + 24) = a5;

    v18(sub_20B5DF6DC, v19);

    (*(v13 + 8))(v15, v12);
  }

  return result;
}

double sub_20B6EE0C0(void *a1, char a2, void (*a3)(void *, __n128), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7645B8, &qword_20C156000);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22[-1] - v13;
  if (a2)
  {
    v22[0] = a1;
    memset(&v22[1], 0, 24);
    v23 = 1;
    v15 = a1;
    a5(v22);
    v16 = a1;
    v17 = 1;
  }

  else
  {
    v22[0] = a1;

    (a3)(v22);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = a5;
    *(v19 + 24) = a6;

    v18(sub_20B71AED0, v19);

    (*(v12 + 8))(v14, v11);
    v16 = a1;
    v17 = 0;
  }

  return sub_20B71C190(v16, v17);
}

uint64_t sub_20B6EE27C(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v24[1] = a3;
  v25 = a2;
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D250, &unk_20C155D00);
  MEMORY[0x28223BE20](v5);
  v7 = (v24 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641C0, &qword_20C161470);
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v24 - v9;
  v11 = sub_20C133954();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764888, &unk_20C156210);
  MEMORY[0x28223BE20](v15);
  v17 = (v24 - v16);
  sub_20B52F9E8(v28, v24 - v16, &qword_27C764888, &unk_20C156210);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    *v7 = *v17;
    swift_storeEnumTagMultiPayload();
    v19 = v18;
    v29(v7);

    return sub_20B520158(v7, &unk_27C76D250, &unk_20C155D00);
  }

  else
  {
    (*(v12 + 32))(v14, v17, v11);
    v25(v14);
    v21 = v27;
    v22 = sub_20C137CB4();
    v23 = swift_allocObject();
    *(v23 + 16) = v29;
    *(v23 + 24) = v30;

    v22(sub_20B52F234, v23);

    (*(v26 + 8))(v10, v21);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_20B6EE5C8(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v24[1] = a3;
  v25 = a2;
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764828, &qword_20C1561D8);
  MEMORY[0x28223BE20](v5);
  v7 = (v24 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763FB0, &unk_20C155AF0);
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v24 - v9;
  v11 = sub_20C1363F4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764830, &unk_20C1561E0);
  MEMORY[0x28223BE20](v15);
  v17 = (v24 - v16);
  sub_20B52F9E8(v28, v24 - v16, &unk_27C764830, &unk_20C1561E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    *v7 = *v17;
    swift_storeEnumTagMultiPayload();
    v19 = v18;
    v29(v7);

    return sub_20B520158(v7, &qword_27C764828, &qword_20C1561D8);
  }

  else
  {
    (*(v12 + 32))(v14, v17, v11);
    v25(v14);
    v21 = v27;
    v22 = sub_20C137CB4();
    v23 = swift_allocObject();
    *(v23 + 16) = v29;
    *(v23 + 24) = v30;

    v22(sub_20B52F234, v23);

    (*(v26 + 8))(v10, v21);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_20B6EE914(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764830, &unk_20C1561E0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764820, &qword_20C1561D0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_20B520158(v12, &unk_27C764830, &unk_20C1561E0);
  }

  else
  {
    a3(v15);
    v20 = sub_20C137CB4();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a6;

    v20(sub_20B52F234, v21);

    return (*(v14 + 8))(v17, v13);
  }
}

void sub_20B6EEB28(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_20C136C64();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764680, &unk_20C156090);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_20B52F9E8(a1, v20 - v14, &qword_27C764680, &unk_20C156090);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B5DF6DC, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_20B6EEE08(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764680, &unk_20C156090);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764678, &qword_20C156088);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_20B520158(v12, &qword_27C764680, &unk_20C156090);
  }

  else
  {
    a3(v15);
    v20 = sub_20C137CB4();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a6;

    v20(sub_20B52F234, v21);

    return (*(v14 + 8))(v17, v13);
  }
}

double sub_20B6EF01C(void *a1, uint64_t a2, char a3, void (*a4)(void **), uint64_t a5, void (*a6)(void **), uint64_t a7)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - v15;
  v24 = a1;
  if (a3)
  {
    LOBYTE(v25) = 1;
    v17 = a1;
    a6(&v24);
    v18 = a1;
    v19 = a2;
    v20 = 1;
  }

  else
  {
    v25 = a2;

    a4(&v24);
    v21 = sub_20C137CB4();
    v22 = swift_allocObject();
    *(v22 + 16) = a6;
    *(v22 + 24) = a7;

    v21(sub_20B5DF6DC, v22);

    (*(v14 + 8))(v16, v13);
    v18 = a1;
    v19 = a2;
    v20 = 0;
  }

  return sub_20B71AC68(v18, v19, v20);
}

void sub_20B6EF1E0(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_20C134214();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764220, &qword_20C155D68);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_20B52F9E8(a1, v20 - v14, &unk_27C764220, &qword_20C155D68);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B5DF6DC, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_20B6EF4C0(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7644E8, &unk_20C161F30);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_20C1377C4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7641F0, &unk_20C155D38);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_20B52F9E8(a1, v20 - v14, &unk_27C7641F0, &unk_20C155D38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B52E438, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_20B6EF7A0(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v25 = a3;
  v26 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7641E0, &unk_20C1746B0);
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v9 = sub_20C1377C4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7641F0, &unk_20C155D38);
  MEMORY[0x28223BE20](v13);
  v15 = (&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v18 = (&v25 - v17);
  sub_20B52F9E8(a1, &v25 - v17, &unk_27C7641F0, &unk_20C155D38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v18;
    *v15 = *v18;
    swift_storeEnumTagMultiPayload();
    v20 = v19;
    v29(v15);

    return sub_20B520158(v15, &unk_27C7641F0, &unk_20C155D38);
  }

  else
  {
    (*(v10 + 32))(v12, v18, v9);
    v26(v12);
    v22 = v28;
    v23 = sub_20C137CB4();
    v24 = swift_allocObject();
    *(v24 + 16) = v29;
    *(v24 + 24) = v30;

    v23(sub_20B52F234, v24);

    (*(v27 + 8))(v8, v22);
    return (*(v10 + 8))(v12, v9);
  }
}

void sub_20B6EFABC(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320, &unk_20C153880);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_20C134104();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764168, &unk_20C155CC0);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_20B52F9E8(a1, v20 - v14, &qword_27C764168, &unk_20C155CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B5DF6DC, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_20B6EFD9C(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764168, &unk_20C155CC0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30, &unk_20C14D9D0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_20B520158(v12, &qword_27C764168, &unk_20C155CC0);
  }

  else
  {
    a3(v15);
    v20 = sub_20C137CB4();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a6;

    v20(sub_20B52F234, v21);

    return (*(v14 + 8))(v17, v13);
  }
}

void sub_20B6EFFB0(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D260, &unk_20C155CF0);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_20C1353F4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643C0, &unk_20C155EC0);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_20B52F9E8(a1, v20 - v14, &qword_27C7643C0, &unk_20C155EC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B71C59C, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_20B6F0290(void *a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void **), uint64_t a6, void (*a7)(void **), uint64_t a8)
{
  v23 = a7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v23 - v16;
  v24 = a1;
  if (a4)
  {
    LOBYTE(v25) = 1;
    v18 = a1;
    v23(&v24);
    sub_20B71ABE4(a1, a2, a3, 1);
  }

  else
  {
    v25 = a2;
    v26 = a3;
    v19 = a1;

    a5(&v24);
    v20 = sub_20C137CB4();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a8;

    v20(sub_20B5DF6DC, v21);

    (*(v15 + 8))(v17, v14);
    v22 = v24;
  }
}

uint64_t sub_20B6F0470(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v24[1] = a3;
  v25 = a2;
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764418, &qword_20C155F08);
  MEMORY[0x28223BE20](v5);
  v7 = (v24 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764410, &qword_20C155F00);
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v24 - v9;
  v11 = sub_20C137EA4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764790, &qword_20C156150);
  MEMORY[0x28223BE20](v15);
  v17 = (v24 - v16);
  sub_20B52F9E8(v28, v24 - v16, &qword_27C764790, &qword_20C156150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    *v7 = *v17;
    swift_storeEnumTagMultiPayload();
    v19 = v18;
    v29(v7);

    return sub_20B520158(v7, &qword_27C764418, &qword_20C155F08);
  }

  else
  {
    (*(v12 + 32))(v14, v17, v11);
    v25(v14);
    v21 = v27;
    v22 = sub_20C137CB4();
    v23 = swift_allocObject();
    *(v23 + 16) = v29;
    *(v23 + 24) = v30;

    v22(sub_20B52F234, v23);

    (*(v26 + 8))(v10, v21);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_20B6F07BC(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764790, &qword_20C156150);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AA0, &unk_20C153B90);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_20B520158(v12, &qword_27C764790, &qword_20C156150);
  }

  else
  {
    a3(v15);
    v20 = sub_20C137CB4();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a6;

    v20(sub_20B52F234, v21);

    return (*(v14 + 8))(v17, v13);
  }
}

void sub_20B6F09D0(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v22 = a2;
  v23 = a4;
  v21[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D260, &unk_20C155CF0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - v9;
  v11 = type metadata accessor for WorkoutSessionConfiguration(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764418, &qword_20C155F08);
  MEMORY[0x28223BE20](v14);
  v16 = (v21 - v15);
  sub_20B52F9E8(a1, v21 - v15, &qword_27C764418, &qword_20C155F08);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v16;
    v17 = v24;
    v25 = 1;
    v18 = v24;
    v23(&v24);
  }

  else
  {
    sub_20B71C4A0(v16, v13, type metadata accessor for WorkoutSessionConfiguration);
    v22(v13);
    v19 = sub_20C137CB4();
    v20 = swift_allocObject();
    *(v20 + 16) = v23;
    *(v20 + 24) = a5;

    v19(sub_20B71C59C, v20);

    (*(v8 + 8))(v10, v7);
    sub_20B71C508(v13, type metadata accessor for WorkoutSessionConfiguration);
  }
}

void sub_20B6F0C80(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_20C137C24();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7646F8, &qword_20C15F5E0);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_20B52F9E8(a1, v20 - v14, &qword_27C7646F8, &qword_20C15F5E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B52E438, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_20B6F0F60(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v24[1] = a3;
  v25 = a2;
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7646F8, &qword_20C15F5E0);
  MEMORY[0x28223BE20](v5);
  v7 = (v24 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7646F0, &unk_20C1560E0);
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v24 - v9;
  v11 = sub_20C135AE4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641D8, &unk_20C155D20);
  MEMORY[0x28223BE20](v15);
  v17 = (v24 - v16);
  sub_20B52F9E8(v28, v24 - v16, &qword_27C7641D8, &unk_20C155D20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    *v7 = *v17;
    swift_storeEnumTagMultiPayload();
    v19 = v18;
    v29(v7);

    return sub_20B520158(v7, &qword_27C7646F8, &qword_20C15F5E0);
  }

  else
  {
    (*(v12 + 32))(v14, v17, v11);
    v25(v14);
    v21 = v27;
    v22 = sub_20C137CB4();
    v23 = swift_allocObject();
    *(v23 + 16) = v29;
    *(v23 + 24) = v30;

    v22(sub_20B52F234, v23);

    (*(v26 + 8))(v10, v21);
    return (*(v12 + 8))(v14, v11);
  }
}

void sub_20B6F12AC(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v22 = a2;
  v23 = a4;
  v21[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320, &unk_20C153880);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - v9;
  v11 = type metadata accessor for WorkoutSessionConfiguration(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764418, &qword_20C155F08);
  MEMORY[0x28223BE20](v14);
  v16 = (v21 - v15);
  sub_20B52F9E8(a1, v21 - v15, &qword_27C764418, &qword_20C155F08);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v16;
    v17 = v24;
    v25 = 1;
    v18 = v24;
    v23(&v24);
  }

  else
  {
    sub_20B71C4A0(v16, v13, type metadata accessor for WorkoutSessionConfiguration);
    v22(v13);
    v19 = sub_20C137CB4();
    v20 = swift_allocObject();
    *(v20 + 16) = v23;
    *(v20 + 24) = a5;

    v19(sub_20B5DF6DC, v20);

    (*(v8 + 8))(v10, v7);
    sub_20B71C508(v13, type metadata accessor for WorkoutSessionConfiguration);
  }
}

void sub_20B6F155C(void *a1, char a2, void (*a3)(int *, double), uint64_t a4, void (*a5)(void **), uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t a10)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v23 - v18;
  if (a2)
  {
    v26 = a1;
    v27 = 1;
    v20 = a1;
    a5(&v26);
    sub_20B583FB8(a1, 1);
  }

  else
  {
    v24 = a1;
    v25 = BYTE4(a1) & 1;
    a3(&v24, v17);
    v21 = sub_20C137CB4();
    v22 = swift_allocObject();
    *(v22 + 16) = a5;
    *(v22 + 24) = a6;

    v21(a10, v22);

    (*(v16 + 8))(v19, v15);
  }
}

uint64_t sub_20B6F16F4(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v24[1] = a3;
  v25 = a2;
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D250, &unk_20C155D00);
  MEMORY[0x28223BE20](v5);
  v7 = (v24 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641C0, &qword_20C161470);
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v24 - v9;
  v11 = sub_20C132C14();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7645D0, &qword_20C156018);
  MEMORY[0x28223BE20](v15);
  v17 = (v24 - v16);
  sub_20B52F9E8(v28, v24 - v16, &qword_27C7645D0, &qword_20C156018);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    *v7 = *v17;
    swift_storeEnumTagMultiPayload();
    v19 = v18;
    v29(v7);

    return sub_20B520158(v7, &unk_27C76D250, &unk_20C155D00);
  }

  else
  {
    (*(v12 + 32))(v14, v17, v11);
    v25(v14);
    v21 = v27;
    v22 = sub_20C137CB4();
    v23 = swift_allocObject();
    *(v23 + 16) = v29;
    *(v23 + 24) = v30;

    v22(sub_20B52F234, v23);

    (*(v26 + 8))(v10, v21);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_20B6F1A40(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D250, &unk_20C155D00);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641C0, &qword_20C161470);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_20B520158(v12, &unk_27C76D250, &unk_20C155D00);
  }

  else
  {
    a3(v15);
    v20 = sub_20C137CB4();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a6;

    v20(sub_20B52F234, v21);

    return (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_20B6F1C54(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v24 = a3;
  v25 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641C0, &qword_20C161470);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - v8;
  v10 = type metadata accessor for NavigationRequest(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D250, &unk_20C155D00);
  MEMORY[0x28223BE20](v13);
  v15 = (&v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v18 = (&v24 - v17);
  sub_20B52F9E8(a1, &v24 - v17, &unk_27C76D250, &unk_20C155D00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v18;
    *v15 = *v18;
    swift_storeEnumTagMultiPayload();
    v20 = v19;
    v26(v15);

    return sub_20B520158(v15, &unk_27C76D250, &unk_20C155D00);
  }

  else
  {
    sub_20B71C4A0(v18, v12, type metadata accessor for NavigationRequest);
    v25(v12);
    v22 = sub_20C137CB4();
    v23 = swift_allocObject();
    *(v23 + 16) = v26;
    *(v23 + 24) = v27;

    v22(sub_20B52F234, v23);

    (*(v7 + 8))(v9, v6);
    return sub_20B71C508(v12, type metadata accessor for NavigationRequest);
  }
}

uint64_t sub_20B6F1F3C(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v24[1] = a3;
  v25 = a2;
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D250, &unk_20C155D00);
  MEMORY[0x28223BE20](v5);
  v7 = (v24 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641C0, &qword_20C161470);
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v24 - v9;
  v11 = sub_20C1387E4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764270, &qword_20C155DC0);
  MEMORY[0x28223BE20](v15);
  v17 = (v24 - v16);
  sub_20B52F9E8(v28, v24 - v16, &unk_27C764270, &qword_20C155DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    *v7 = *v17;
    swift_storeEnumTagMultiPayload();
    v19 = v18;
    v29(v7);

    return sub_20B520158(v7, &unk_27C76D250, &unk_20C155D00);
  }

  else
  {
    (*(v12 + 32))(v14, v17, v11);
    v25(v14);
    v21 = v27;
    v22 = sub_20C137CB4();
    v23 = swift_allocObject();
    *(v23 + 16) = v29;
    *(v23 + 24) = v30;

    v22(sub_20B52F234, v23);

    (*(v26 + 8))(v10, v21);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_20B6F2288(void *a1, char a2, void (*a3)(void *), uint64_t a4, void (*a5)(void *), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void *, uint64_t))
{
  v26 = a8;
  v27 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCD0, &qword_20C155FB0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - v16;
  if (a2)
  {
    v28[0] = a1;
    v28[1] = 0;
    v29 = 1;
    v18 = a1;
    a5(v28);
    v19 = a1;
    v20 = 1;
  }

  else
  {
    v28[0] = a1;
    v21 = a1;
    a3(v28);
    v22 = sub_20C137CB4();
    v23 = swift_allocObject();
    *(v23 + 16) = a5;
    *(v23 + 24) = a6;

    v22(v26, v23);

    (*(v15 + 8))(v17, v14);
    v19 = a1;
    v20 = 0;
  }

  return v27(v19, v20);
}

void sub_20B6F243C(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_20C137834();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764800, &qword_20C1561C0);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_20B52F9E8(a1, v20 - v14, &qword_27C764800, &qword_20C1561C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B5DF6DC, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_20B6F271C(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v22 = a2;
  v23 = a4;
  v21[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764698, &unk_20C15F7C0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v21 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7646A0, &qword_20C1560B0);
  MEMORY[0x28223BE20](v14);
  v16 = (v21 - v15);
  sub_20B52F9E8(a1, v21 - v15, &qword_27C7646A0, &qword_20C1560B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v16;
    v17 = v24;
    v25 = 1;
    v18 = v24;
    v23(&v24);
  }

  else
  {
    sub_20B5DF134(v16, v13, &qword_27C764698, &unk_20C15F7C0);
    v22(v13);
    v19 = sub_20C137CB4();
    v20 = swift_allocObject();
    *(v20 + 16) = v23;
    *(v20 + 24) = a5;

    v19(sub_20B5DF6DC, v20);

    (*(v8 + 8))(v10, v7);
    sub_20B520158(v13, &qword_27C764698, &unk_20C15F7C0);
  }
}

uint64_t sub_20B6F29CC(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v23 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7646A0, &qword_20C1560B0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764690, &unk_20C1560A0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v23(v12);
    return sub_20B520158(v12, &qword_27C7646A0, &qword_20C1560B0);
  }

  else
  {
    a3(v15);
    v20 = sub_20C137CB4();
    v21 = swift_allocObject();
    *(v21 + 16) = v23;
    *(v21 + 24) = a6;

    v20(sub_20B52F234, v21);

    return (*(v14 + 8))(v17, v13);
  }
}

void sub_20B6F2BE0(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0, &unk_20C14FD40);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_20C135734();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764238, &unk_20C155D70);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_20B52F9E8(a1, v20 - v14, &qword_27C764238, &unk_20C155D70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B718F14, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_20B6F2EC0(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v22 = a2;
  v23 = a4;
  v21[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - v9;
  v11 = type metadata accessor for NavigationRequest(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D250, &unk_20C155D00);
  MEMORY[0x28223BE20](v14);
  v16 = (v21 - v15);
  sub_20B52F9E8(a1, v21 - v15, &unk_27C76D250, &unk_20C155D00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v16;
    v17 = v24;
    v25 = 1;
    v18 = v24;
    v23(&v24);
  }

  else
  {
    sub_20B71C4A0(v16, v13, type metadata accessor for NavigationRequest);
    v22(v13);
    v19 = sub_20C137CB4();
    v20 = swift_allocObject();
    *(v20 + 16) = v23;
    *(v20 + 24) = a5;

    v19(sub_20B5DF6DC, v20);

    (*(v8 + 8))(v10, v7);
    sub_20B71C508(v13, type metadata accessor for NavigationRequest);
  }
}

void sub_20B6F3170(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_20C133354();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7647E8, &qword_20C1561A8);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_20B52F9E8(a1, v20 - v14, &qword_27C7647E8, &qword_20C1561A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B5DF6DC, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_20B6F3450(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v24[1] = a3;
  v25 = a2;
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D250, &unk_20C155D00);
  MEMORY[0x28223BE20](v5);
  v7 = (v24 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641C0, &qword_20C161470);
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v24 - v9;
  v11 = sub_20C136354();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7647D8, &qword_20C156198);
  MEMORY[0x28223BE20](v15);
  v17 = (v24 - v16);
  sub_20B52F9E8(v28, v24 - v16, &qword_27C7647D8, &qword_20C156198);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    *v7 = *v17;
    swift_storeEnumTagMultiPayload();
    v19 = v18;
    v29(v7);

    return sub_20B520158(v7, &unk_27C76D250, &unk_20C155D00);
  }

  else
  {
    (*(v12 + 32))(v14, v17, v11);
    v25(v14);
    v21 = v27;
    v22 = sub_20C137CB4();
    v23 = swift_allocObject();
    *(v23 + 16) = v29;
    *(v23 + 24) = v30;

    v22(sub_20B52F234, v23);

    (*(v26 + 8))(v10, v21);
    return (*(v12 + 8))(v14, v11);
  }
}

void sub_20B6F379C(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_20C136014();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7641C8, &unk_20C155D10);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_20B52F9E8(a1, v20 - v14, &unk_27C7641C8, &unk_20C155D10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B5DF6DC, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_20B6F3A7C(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764350, &unk_20C155E70);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - v13;
  if (a2)
  {
    v20 = a1;
    v21 = 0;
    v22 = 1;
    v15 = a1;
    a5(&v20);
    sub_20B719794(v20, v21, v22);
  }

  else
  {
    v20 = a1;
    v16 = a1;
    a3(&v20);
    v17 = sub_20C137CB4();
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;

    v17(sub_20B71C590, v18);

    (*(v12 + 8))(v14, v11);
    sub_20B539018(a1);
  }
}

void sub_20B6F3C34(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - v13;
  v19 = a1;
  if (a2)
  {
    v20 = 1;
    v15 = a1;
    a5(&v19);
  }

  else
  {
    v16 = a1;
    a3(&v19);
    v17 = sub_20C137CB4();
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;

    v17(sub_20B52E438, v18);

    (*(v12 + 8))(v14, v11);
  }

  sub_20B539018(a1);
}

double sub_20B6F3DE8(void *a1, unint64_t a2, char a3, void (*a4)(uint64_t *, double), uint64_t a5, void (*a6)(void **), uint64_t a7, uint64_t *a8, uint64_t *a9, uint64_t a10, uint64_t a11)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a8, a9);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v26 - v19;
  if (a3)
  {
    v28 = a1;
    LOBYTE(v29) = 1;
    v21 = a1;
    a6(&v28);
    sub_20B719794(a1, a2, 1);
  }

  else
  {
    v27 = a11;
    v28 = a1;
    v29 = a2;
    v23 = sub_20B719888(a1, a2);
    a4(&v28, v23);
    v24 = sub_20C137CB4();
    v25 = swift_allocObject();
    *(v25 + 16) = a6;
    *(v25 + 24) = a7;

    v24(v27, v25);

    (*(v18 + 8))(v20, v17);
    return sub_20B7197A0(v28, v29);
  }

  return result;
}

void sub_20B6F3F98(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320, &unk_20C153880);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - v13;
  v19 = a1;
  if (a2)
  {
    v20 = 1;
    v15 = a1;
    a5(&v19);
  }

  else
  {
    v16 = a1;
    a3(&v19);
    v17 = sub_20C137CB4();
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;

    v17(sub_20B5DF6DC, v18);

    (*(v12 + 8))(v14, v11);
  }

  sub_20B539018(a1);
}

uint64_t sub_20B6F414C(void *a1, char a2, void (*a3)(char *, double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v22 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D250, &unk_20C155D00);
  MEMORY[0x28223BE20](v10);
  v12 = (&v22 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641C0, &qword_20C161470);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v18 = a1;
    v22(v12);
    return sub_20B520158(v12, &unk_27C76D250, &unk_20C155D00);
  }

  else
  {
    v23 = a1 & 1;
    a3(&v23, v15);
    v20 = sub_20C137CB4();
    v21 = swift_allocObject();
    *(v21 + 16) = v22;
    *(v21 + 24) = a6;

    v20(sub_20B52F234, v21);

    return (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_20B6F436C(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v24[1] = a3;
  v25 = a2;
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7647A0, &qword_20C156160);
  MEMORY[0x28223BE20](v5);
  v7 = (v24 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764798, &qword_20C156158);
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v24 - v9;
  v11 = sub_20C1387E4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764270, &qword_20C155DC0);
  MEMORY[0x28223BE20](v15);
  v17 = (v24 - v16);
  sub_20B52F9E8(v28, v24 - v16, &unk_27C764270, &qword_20C155DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    *v7 = *v17;
    swift_storeEnumTagMultiPayload();
    v19 = v18;
    v29(v7);

    return sub_20B520158(v7, &unk_27C7647A0, &qword_20C156160);
  }

  else
  {
    (*(v12 + 32))(v14, v17, v11);
    v25(v14);
    v21 = v27;
    v22 = sub_20C137CB4();
    v23 = swift_allocObject();
    *(v23 + 16) = v29;
    *(v23 + 24) = v30;

    v22(sub_20B52F234, v23);

    (*(v26 + 8))(v10, v21);
    return (*(v12 + 8))(v14, v11);
  }
}

void sub_20B6F46B8(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v21 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7647A0, &qword_20C156160);
  MEMORY[0x28223BE20](v10);
  v12 = (&v21 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764798, &qword_20C156158);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v21 - v15;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v17 = a1;
    v21(v12);
    sub_20B520158(v12, &unk_27C7647A0, &qword_20C156160);
  }

  else
  {
    v22 = a1;
    v18 = a1;
    a3(&v22);
    v19 = sub_20C137CB4();
    v20 = swift_allocObject();
    *(v20 + 16) = v21;
    *(v20 + 24) = a6;

    v19(sub_20B52F234, v20);

    (*(v14 + 8))(v16, v13);
    sub_20B539018(a1);
  }
}

uint64_t sub_20B6F48E0(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v23[1] = a3;
  v24 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D250, &unk_20C155D00);
  MEMORY[0x28223BE20](v6);
  v8 = (v23 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641C0, &qword_20C161470);
  v25 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v23 - v10;
  v12 = type metadata accessor for NavigationResource(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7647A0, &qword_20C156160);
  MEMORY[0x28223BE20](v15);
  v17 = (v23 - v16);
  sub_20B52F9E8(a1, v23 - v16, &unk_27C7647A0, &qword_20C156160);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    *v8 = *v17;
    swift_storeEnumTagMultiPayload();
    v19 = v18;
    v26(v8);

    return sub_20B520158(v8, &unk_27C76D250, &unk_20C155D00);
  }

  else
  {
    sub_20B71C4A0(v17, v14, type metadata accessor for NavigationResource);
    v24(v14);
    v21 = sub_20C137CB4();
    v22 = swift_allocObject();
    *(v22 + 16) = v26;
    *(v22 + 24) = v27;

    v21(sub_20B52F234, v22);

    (*(v25 + 8))(v11, v9);
    return sub_20B71C508(v14, type metadata accessor for NavigationResource);
  }
}

void sub_20B6F4BFC(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_20C136064();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7645E0, &qword_20C156028);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_20B52F9E8(a1, v20 - v14, &qword_27C7645E0, &qword_20C156028);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B5DF6DC, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_20B6F4EDC(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v21 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764040, &qword_20C155BF0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v21 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764048, &qword_20C155BF8);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v21 - v15;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v17 = a1;
    v21(v12);
    sub_20B520158(v12, &qword_27C764040, &qword_20C155BF0);
  }

  else
  {
    v22 = a1;
    v18 = a1;
    a3(&v22);
    v19 = sub_20C137CB4();
    v20 = swift_allocObject();
    *(v20 + 16) = v21;
    *(v20 + 24) = a6;

    v19(sub_20B52F234, v20);

    (*(v14 + 8))(v16, v13);
    sub_20B539018(a1);
  }
}

void sub_20B6F5104(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_20C135024();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7645F8, &unk_20C156040);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_20B52F9E8(a1, v20 - v14, &qword_27C7645F8, &unk_20C156040);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B5DF6DC, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_20B6F53E4(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v25 = a3;
  v26 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AA0, &unk_20C153B90);
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v9 = sub_20C137EA4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764790, &qword_20C156150);
  MEMORY[0x28223BE20](v13);
  v15 = (&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v18 = (&v25 - v17);
  sub_20B52F9E8(a1, &v25 - v17, &qword_27C764790, &qword_20C156150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v18;
    *v15 = *v18;
    swift_storeEnumTagMultiPayload();
    v20 = v19;
    v29(v15);

    return sub_20B520158(v15, &qword_27C764790, &qword_20C156150);
  }

  else
  {
    (*(v10 + 32))(v12, v18, v9);
    v26(v12);
    v22 = v28;
    v23 = sub_20C137CB4();
    v24 = swift_allocObject();
    *(v24 + 16) = v29;
    *(v24 + 24) = v30;

    v23(sub_20B52F234, v24);

    (*(v27 + 8))(v8, v22);
    return (*(v10 + 8))(v12, v9);
  }
}

void sub_20B6F5700(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20 = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCD0, &qword_20C155FB0);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = sub_20C135AE4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641D8, &unk_20C155D20);
  MEMORY[0x28223BE20](v13);
  v15 = (&v20 - v14);
  sub_20B52F9E8(a1, &v20 - v14, &qword_27C7641D8, &unk_20C155D20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25[0] = *v15;
    v16 = v25[0];
    v25[1] = 0;
    v26 = 1;
    v17 = v25[0];
    v23(v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B71C5A0, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_20B6F59E0(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_20C132C14();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7645D0, &qword_20C156018);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_20B52F9E8(a1, v20 - v14, &qword_27C7645D0, &qword_20C156018);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B5DF6DC, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_20B6F5CC0(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320, &unk_20C153880);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_20C137EA4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764790, &qword_20C156150);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_20B52F9E8(a1, v20 - v14, &qword_27C764790, &qword_20C156150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B5DF6DC, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_20B6F5FA0(void *a1, char a2, void (*a3)(char *, double), uint64_t a4, void (*a5)(void **), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void *, uint64_t))
{
  v23 = a8;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v23 - v17;
  if (a2)
  {
    v25 = a1;
    v26 = 1;
    v19 = a1;
    a5(&v25);
    return a9(a1, 1);
  }

  else
  {
    v24 = a1;
    a3(&v24, v16);
    v21 = sub_20C137CB4();
    v22 = swift_allocObject();
    *(v22 + 16) = a5;
    *(v22 + 24) = a6;

    v21(v23, v22);

    return (*(v15 + 8))(v18, v14);
  }
}

void sub_20B6F6144(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_20C134F74();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7640B0, &qword_20C155C40);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_20B52F9E8(a1, v20 - v14, &qword_27C7640B0, &qword_20C155C40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B5DF6DC, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_20B6F6424(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_20C1362F4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7640A0, &qword_20C155C30);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_20B52F9E8(a1, v20 - v14, &qword_27C7640A0, &qword_20C155C30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B5DF6DC, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_20B6F6704(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_20C134C84();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764090, &unk_20C155C20);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_20B52F9E8(a1, v20 - v14, &qword_27C764090, &unk_20C155C20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B52347C, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

void sub_20B6F69E4(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v20[1] = a3;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = sub_20C1376F4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764510, &qword_20C155FA0);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - v14);
  sub_20B52F9E8(a1, v20 - v14, &qword_27C764510, &qword_20C155FA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    v16 = v25;
    v26 = 1;
    v17 = v25;
    v23(&v25);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21(v12);
    v18 = sub_20C137CB4();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20B5DF6DC, v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

double sub_20B6F6CC4(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v21 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643F8, &qword_20C155EE8);
  MEMORY[0x28223BE20](v10);
  v12 = (&v21 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764400, &qword_20C155EF0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v21 - v15;
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v17 = a1;
    v21(v12);
    sub_20B520158(v12, &qword_27C7643F8, &qword_20C155EE8);
  }

  else
  {
    v22 = a1;

    a3(&v22);
    v19 = sub_20C137CB4();
    v20 = swift_allocObject();
    *(v20 + 16) = v21;
    *(v20 + 24) = a6;

    v19(sub_20B52F234, v20);

    (*(v14 + 8))(v16, v13);
    return sub_20B71C190(a1, 0);
  }

  return result;
}

void sub_20B6F6EF0(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void **), uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t a10)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v23 - v18;
  if (a2)
  {
    v23 = a1;
    v24 = 1;
    v20 = a1;
    a5(&v23);
    sub_20B583FB8(a1, 1);
  }

  else
  {
    a3(v17);
    v21 = sub_20C137CB4();
    v22 = swift_allocObject();
    *(v22 + 16) = a5;
    *(v22 + 24) = a6;

    v21(a10, v22);

    (*(v16 + 8))(v19, v15);
  }
}

void sub_20B6F7078(uint64_t a1)
{
  v2 = v1;
  v37 = sub_20C138034();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764138, &qword_20C155CA0);
  v6 = sub_20C13DC24();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
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
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_20B718614(&unk_27C764140, 255, MEMORY[0x277D53BA0], MEMORY[0x277D53BA8]);
      v21 = sub_20C13C7B4();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_20B6F73D8(uint64_t a1)
{
  v2 = v1;
  v37 = sub_20C133524();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764150, &qword_20C155CA8);
  v6 = sub_20C13DC24();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
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
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_20B718614(&qword_27C763F08, 255, MEMORY[0x277D4FF88], MEMORY[0x277D4FF90]);
      v21 = sub_20C13C7B4();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_20B6F7738(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7642D0, &unk_20C155E10);
  v4 = sub_20C13DC24();
  v5 = v4;
  if (*(v3 + 16))
  {
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
    v12 = v4 + 56;
    while (v10)
    {
      v18 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v21 = *(*(v3 + 48) + (v18 | (v6 << 6)));
      sub_20C13E164();
      sub_20C13CA64();

      v13 = sub_20C13E1B4();
      v14 = -1 << *(v5 + 32);
      v15 = v13 & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v12 + 8 * (v15 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v14) >> 6;
        while (++v16 != v23 || (v22 & 1) == 0)
        {
          v24 = v16 == v23;
          if (v16 == v23)
          {
            v16 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v16);
          if (v25 != -1)
          {
            v17 = __clz(__rbit64(~v25)) + (v16 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v12 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v5 + 48) + v17) = v21;
      ++*(v5 + 16);
    }

    v19 = v6;
    while (1)
    {
      v6 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v20 = v7[v6];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v10 = (v20 - 1) & v20;
        goto LABEL_16;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_20B6F7A40(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764100, &unk_20C155C60);
  v4 = sub_20C13DC24();
  v5 = v4;
  if (*(v3 + 16))
  {
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
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_20C13E164();
      sub_20C13CA64();
      v21 = sub_20C13E1B4();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_20B6F7CA0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v5 = v4;
  v6 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = sub_20C13DC24();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = (v6 + 56);
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
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(*(v6 + 48) + (v17 | (v9 << 6)));
      sub_20C13E164();
      a4(v20);
      sub_20C13CA64();

      v21 = sub_20C13E1B4();
      v22 = -1 << *(v8 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero((v6 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v5 = v4;
    *(v6 + 16) = 0;
  }

  *v5 = v8;
}

void sub_20B6F7F10(uint64_t a1)
{
  v2 = v1;
  v3 = sub_20C135C84();
  v32 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7642E0, &qword_20C155E20);
  v7 = sub_20C13DC24();
  v8 = v7;
  if (*(v6 + 16))
  {
    v31 = v1;
    v9 = 0;
    v10 = (v6 + 56);
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
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      sub_20B71C4A0(*(v6 + 48) + v20 * (v17 | (v9 << 6)), v5, MEMORY[0x277D52060]);
      sub_20C13E164();
      sub_20C135C74();
      v21 = sub_20C13E1B4();
      v22 = -1 << *(v8 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      sub_20B71C4A0(v5, *(v8 + 48) + v16 * v20, MEMORY[0x277D52060]);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero((v6 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
}

void sub_20B6F8218(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764440, &qword_20C155F18);
  v4 = sub_20C13DC24();
  v5 = v4;
  if (*(v3 + 16))
  {
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
    v12 = v4 + 56;
    while (v10)
    {
      v18 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v21 = *(*(v3 + 48) + (v18 | (v6 << 6)));
      sub_20C13E164();
      sub_20C13CA64();

      v13 = sub_20C13E1B4();
      v14 = -1 << *(v5 + 32);
      v15 = v13 & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v12 + 8 * (v15 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v14) >> 6;
        while (++v16 != v23 || (v22 & 1) == 0)
        {
          v24 = v16 == v23;
          if (v16 == v23)
          {
            v16 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v16);
          if (v25 != -1)
          {
            v17 = __clz(__rbit64(~v25)) + (v16 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v12 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v5 + 48) + v17) = v21;
      ++*(v5 + 16);
    }

    v19 = v6;
    while (1)
    {
      v6 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v20 = v7[v6];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v10 = (v20 - 1) & v20;
        goto LABEL_16;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_20B6F85F0(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for ButtonAction.ActionType(0);
  v32 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764298, &qword_20C155DD8);
  v7 = sub_20C13DC24();
  v8 = v7;
  if (*(v6 + 16))
  {
    v31 = v1;
    v9 = 0;
    v10 = (v6 + 56);
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
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      sub_20B71C4A0(*(v6 + 48) + v20 * (v17 | (v9 << 6)), v5, type metadata accessor for ButtonAction.ActionType);
      sub_20C13E164();
      sub_20BDA4D9C(v33);
      v21 = sub_20C13E1B4();
      v22 = -1 << *(v8 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      sub_20B71C4A0(v5, *(v8 + 48) + v16 * v20, type metadata accessor for ButtonAction.ActionType);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero((v6 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
}

void sub_20B6F88F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7642C0, &unk_20C155E00);
  v4 = sub_20C13DC24();
  v5 = v4;
  if (*(v3 + 16))
  {
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_20C13E164();
      v18 = sub_20C137F94();
      MEMORY[0x20F2F58E0](v18);
      v19 = sub_20C13E1B4();
      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v27;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_20B6F8B4C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_20C135C54();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7640F8, &qword_20C155C58);
  v6 = sub_20C13DC24();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
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
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_20B718614(&qword_27C762F50, 255, MEMORY[0x277D51FE0], MEMORY[0x277D51FE8]);
      v21 = sub_20C13C7B4();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_20B6F8EAC(uint64_t a1)
{
  v2 = v1;
  v37 = sub_20C136594();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7644A0, &qword_20C155F48);
  v6 = sub_20C13DC24();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
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
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_20B718614(&unk_27C764490, 255, MEMORY[0x277D52AB0], MEMORY[0x277D52AB8]);
      v21 = sub_20C13C7B4();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_20B6F920C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_20C1365F4();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764308, &unk_20C155E30);
  v6 = sub_20C13DC24();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
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
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_20B718614(&qword_27C762F60, 255, MEMORY[0x277D52AF8], MEMORY[0x277D52B00]);
      v21 = sub_20C13C7B4();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_20B6F956C(uint64_t a1)
{
  v2 = v1;
  v51 = sub_20C134E04();
  v3 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v50 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_20C1333E4();
  v5 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v48 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WorkoutPlanPreference(0);
  v54 = *(v7 - 8);
  v55 = v7;
  MEMORY[0x28223BE20](v7);
  v53 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - v10;
  v12 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764460, &qword_20C155F28);
  v13 = sub_20C13DC24();
  v14 = v13;
  if (*(v12 + 16))
  {
    v43 = v1;
    v15 = 0;
    v16 = (v12 + 56);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 56);
    v20 = (v17 + 63) >> 6;
    v46 = (v5 + 8);
    v47 = (v5 + 32);
    v45 = (v3 + 32);
    v44 = (v3 + 8);
    v21 = v13 + 56;
    v52 = v12;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v26 = *(v12 + 48);
      v56 = *(v54 + 72);
      sub_20B71C4A0(v26 + v56 * (v23 | (v15 << 6)), v11, type metadata accessor for WorkoutPlanPreference);
      sub_20C13E164();
      v27 = v11;
      v28 = v53;
      sub_20B71B848(v11, v53, type metadata accessor for WorkoutPlanPreference);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v29 = v50;
        v30 = v28;
        v31 = v51;
        (*v45)(v50, v30, v51);
        MEMORY[0x20F2F58E0](1);
        sub_20B718614(&unk_27C764470, 255, MEMORY[0x277D51130], MEMORY[0x277D51138]);
        sub_20C13C7C4();
        v32 = v44;
      }

      else
      {
        v29 = v48;
        v33 = v28;
        v31 = v49;
        (*v47)(v48, v33, v49);
        MEMORY[0x20F2F58E0](0);
        sub_20B718614(&qword_27C763F20, 255, MEMORY[0x277D4FE80], MEMORY[0x277D4FE88]);
        sub_20C13C7C4();
        v32 = v46;
      }

      (*v32)(v29, v31);
      v34 = sub_20C13E1B4();
      v35 = -1 << *(v14 + 32);
      v36 = v34 & ~v35;
      v37 = v36 >> 6;
      v11 = v27;
      if (((-1 << v36) & ~*(v21 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v21 + 8 * v37);
          if (v41 != -1)
          {
            v22 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v36) & ~*(v21 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      sub_20B71C4A0(v27, *(v14 + 48) + v22 * v56, type metadata accessor for WorkoutPlanPreference);
      ++*(v14 + 16);
      v12 = v52;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    v42 = 1 << *(v12 + 32);
    if (v42 >= 64)
    {
      bzero(v16, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v42;
    }

    v2 = v43;
    *(v12 + 16) = 0;
  }

  *v2 = v14;
}

void sub_20B6F9B24(uint64_t a1)
{
  v2 = v1;
  v37 = sub_20C137454();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7640E0, &qword_20C155C50);
  v6 = sub_20C13DC24();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
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
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_20B718614(&qword_27C7640D0, 255, MEMORY[0x277D53428], MEMORY[0x277D53430]);
      v21 = sub_20C13C7B4();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_20B6F9E84(uint64_t a1)
{
  v2 = v1;
  v37 = sub_20C137294();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7640C8, &qword_20C155C48);
  v6 = sub_20C13DC24();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
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
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_20B718614(&qword_27C7640B8, 255, MEMORY[0x277D53250], MEMORY[0x277D53258]);
      v21 = sub_20C13C7B4();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_20B6FA1E4(uint64_t a1)
{
  v2 = v1;
  v37 = sub_20C136FE4();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764878, &unk_20C156200);
  v6 = sub_20C13DC24();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
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
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_20B718614(&qword_27C764868, 255, MEMORY[0x277D53070], MEMORY[0x277D53078]);
      v21 = sub_20C13C7B4();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_20B6FA544(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764858, &qword_20C1561F0);
  v4 = sub_20C13DC24();
  v5 = v4;
  if (*(v3 + 16))
  {
    v30 = v3;
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
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v20 = *v18;
      v19 = *(v18 + 8);
      v31 = *(v18 + 16);
      sub_20C13E164();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F00, &unk_20C152DE0);
      sub_20B654574();
      sub_20C133BE4();
      v21 = sub_20C13E1B4();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v20;
      *(v14 + 8) = v19;
      *(v14 + 16) = v31;
      ++*(v5 + 16);
      v3 = v30;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero(v7, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_20B6FA7F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7647F0, &qword_20C1561B0);
  v4 = sub_20C13DC24();
  v5 = v4;
  if (*(v3 + 16))
  {
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_20C13E164();
      MEMORY[0x20F2F58E0](v17);
      v18 = sub_20C13E1B4();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_20B6FAA40(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764710, &qword_20C1560F8);
  v4 = sub_20C13DC24();
  v5 = v4;
  if (*(v3 + 16))
  {
    v31 = v3;
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
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      sub_20C13E164();
      if (v21 < 0)
      {
        MEMORY[0x20F2F58E0](1);
        sub_20C137934();
      }

      else
      {
        MEMORY[0x20F2F58E0](0);
        MEMORY[0x20F2F58E0](v19);
      }

      v22 = sub_20C13E1B4();
      v23 = -1 << *(v5 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
      v3 = v31;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero(v7, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v30;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_20B6FACE0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764708, &qword_20C1560F0);
  v4 = sub_20C13DC24();
  v5 = v4;
  if (*(v3 + 16))
  {
    v31 = v3;
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
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      sub_20C13E164();
      sub_20C137934();
      v22 = sub_20C13E1B4();
      v23 = -1 << *(v5 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
      v3 = v31;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero(v7, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v30;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_20B6FAF58(uint64_t a1)
{
  v2 = v1;
  v37 = sub_20C133B74();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764430, &qword_20C155F10);
  v6 = sub_20C13DC24();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
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
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_20B718614(&qword_27C764420, 255, MEMORY[0x277D502D0], MEMORY[0x277D502D8]);
      v21 = sub_20C13C7B4();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_20B6FB2B8(uint64_t a1)
{
  v2 = v1;
  v37 = sub_20C133244();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764190, &qword_20C155CD8);
  v6 = sub_20C13DC24();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
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
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_20B718614(&qword_27C764180, 255, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);
      v21 = sub_20C13C7B4();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_20B6FB618(uint64_t a1)
{
  v2 = v1;
  v37 = sub_20C137BA4();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764568, &qword_20C155FD8);
  v6 = sub_20C13DC24();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
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
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_20B718614(&unk_27C767650, 255, MEMORY[0x277D53A28], MEMORY[0x277D53A30]);
      v21 = sub_20C13C7B4();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_20B6FB978(uint64_t a1)
{
  v2 = v1;
  v37 = sub_20C132FD4();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7646D0, &unk_20C1560C0);
  v6 = sub_20C13DC24();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
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
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_20B718614(&unk_27C7646C0, 255, MEMORY[0x277CC9788], MEMORY[0x277CC9798]);
      v21 = sub_20C13C7B4();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_20B6FBCD8(uint64_t a1)
{
  v2 = v1;
  v37 = sub_20C139684();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7646B8, &qword_20C1560B8);
  v6 = sub_20C13DC24();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
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
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_20B718614(&qword_27C7646A8, 255, MEMORY[0x277D54458], MEMORY[0x277D54460]);
      v21 = sub_20C13C7B4();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_20B6FC038(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764688, &unk_20C181470);
  v4 = sub_20C13DC24();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v26 = v2;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      v18 = sub_20C13E154();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_20B6FC25C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_20C132164();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764818, &qword_20C1561C8);
  v6 = sub_20C13DC24();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
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
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_20B718614(&qword_27C764808, 255, MEMORY[0x277CE9BE0], MEMORY[0x277CE9BE8]);
      v21 = sub_20C13C7B4();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_20B6FC5BC(uint64_t a1)
{
  v2 = v1;
  v37 = sub_20C135174();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764650, &qword_20C156078);
  v6 = sub_20C13DC24();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
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
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_20B718614(&unk_27C764640, 255, MEMORY[0x277D515D0], MEMORY[0x277D515D8]);
      v21 = sub_20C13C7B4();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_20B6FC91C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764638, &qword_20C156070);
  v4 = sub_20C13DC24();
  v5 = v4;
  if (*(v3 + 16))
  {
    v31 = v3;
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
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 24 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      sub_20C13E164();
      sub_20C13CA64();
      v22 = sub_20C13E1B4();
      v23 = -1 << *(v5 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 24 * v13);
      *v14 = v19;
      v14[1] = v20;
      v14[2] = v21;
      ++*(v5 + 16);
      v3 = v31;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero(v7, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v30;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_20B6FCB90(uint64_t a1)
{
  v2 = v1;
  v37 = sub_20C133314();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764078, &qword_20C155C08);
  v6 = sub_20C13DC24();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
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
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_20B718614(&qword_27C764068, 255, MEMORY[0x277D4FC78], MEMORY[0x277D4FC80]);
      v21 = sub_20C13C7B4();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_20B6FCEF0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764018, &qword_20C155BD8);
  v4 = sub_20C13DC24();
  v5 = v4;
  if (*(v3 + 16))
  {
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
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 40 * (v15 | (v6 << 6));
      v28 = *v18;
      v29 = *(v18 + 16);
      v30 = *(v18 + 32);
      sub_20C13E164();
      sub_20C1332D4();
      v19 = sub_20C13E1B4();
      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 40 * v13;
      *v14 = v28;
      *(v14 + 16) = v29;
      *(v14 + 32) = v30;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v27;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_20B6FD164(uint64_t a1)
{
  v2 = v1;
  v37 = sub_20C137474();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763FF8, &unk_20C155BC0);
  v6 = sub_20C13DC24();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
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
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_20B718614(&qword_27C763FE8, 255, MEMORY[0x277D53450], MEMORY[0x277D53458]);
      v21 = sub_20C13C7B4();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_20B6FD4C4(uint64_t a1)
{
  v2 = v1;
  v37 = sub_20C138204();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643E8, &unk_20C155ED8);
  v6 = sub_20C13DC24();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
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
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_20B718614(&qword_27C763318, 255, MEMORY[0x277D53C88], MEMORY[0x277D53C90]);
      v21 = sub_20C13C7B4();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_20B6FD824(uint64_t a1)
{
  v2 = v1;
  v37 = sub_20C132EE4();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641A8, &unk_20C155CE0);
  v6 = sub_20C13DC24();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
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
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_20B718614(&qword_27C7675A0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v21 = sub_20C13C7B4();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_20B6FDB84(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_20C13DC24();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + (v16 | (v8 << 6)));
      sub_20C13E164();
      MEMORY[0x20F2F58E0](v19);
      v20 = sub_20C13E1B4();
      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v4 = v3;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
}

void sub_20B6FDDCC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7645A0, &qword_20C155FF0);
  v4 = sub_20C13DC24();
  v5 = v4;
  if (*(v3 + 16))
  {
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
    v12 = v4 + 56;
    while (v10)
    {
      v18 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v21 = *(*(v3 + 48) + (v18 | (v6 << 6)));
      sub_20C13E164();
      sub_20C13CA64();

      v13 = sub_20C13E1B4();
      v14 = -1 << *(v5 + 32);
      v15 = v13 & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v12 + 8 * (v15 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v14) >> 6;
        while (++v16 != v23 || (v22 & 1) == 0)
        {
          v24 = v16 == v23;
          if (v16 == v23)
          {
            v16 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v16);
          if (v25 != -1)
          {
            v17 = __clz(__rbit64(~v25)) + (v16 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v12 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v5 + 48) + v17) = v21;
      ++*(v5 + 16);
    }

    v19 = v6;
    while (1)
    {
      v6 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v20 = v7[v6];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v10 = (v20 - 1) & v20;
        goto LABEL_16;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_20B6FE120(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_20C13DC24();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      v20 = sub_20C13D5E4();
      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
}

void sub_20B6FE340(uint64_t a1)
{
  v2 = v1;
  v37 = sub_20C137374();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764580, &qword_20C155FE0);
  v6 = sub_20C13DC24();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
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
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_20B718614(&qword_27C764570, 255, MEMORY[0x277D53288], MEMORY[0x277D53290]);
      v21 = sub_20C13C7B4();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}