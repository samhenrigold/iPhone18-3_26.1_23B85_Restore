uint64_t sub_25F0D38A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47380, &unk_25F1830C0);
  v7[6] = v9;
  v7[7] = *(v9 - 8);
  v7[8] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47518, &qword_25F17BFF0);
  v7[9] = v10;
  v7[10] = *(v10 - 8);
  v7[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47520, &qword_25F17BFF8);
  v7[12] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47358, &unk_25F182BB0);
  v7[13] = v11;
  v7[14] = *(v11 - 8);
  v7[15] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47528, &qword_25F1830D0);
  v7[16] = v12;
  v7[17] = *(v12 - 8);
  v7[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F0D3AE8, a6, 0);
}

uint64_t sub_25F0D3AE8()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  sub_25F176EAC();
  sub_25F0E266C(&unk_27FD47640, MEMORY[0x277D40D48], MEMORY[0x277D40D40]);
  sub_25F176F0C();
  sub_25F17935C();
  (*(v2 + 8))(v1, v3);
  v4 = sub_25F0B7D00(&qword_27FD47508, &qword_27FD472F8, &qword_25F17BC00, &protocol conformance descriptor for AggregatingHostServer<A>);
  v0[19] = v4;
  v5 = v0[4];
  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = sub_25F0D3C68;
  v7 = v0[16];
  v8 = v0[12];

  return MEMORY[0x2822003E8](v8, v5, v4, v7);
}

uint64_t sub_25F0D3C68()
{
  v1 = *(*v0 + 32);

  return MEMORY[0x2822009F8](sub_25F0D3D78, v1, 0);
}

uint64_t sub_25F0D3D78()
{
  v1 = v0[12];
  if ((*(v0[7] + 48))(v1, 1, v0[6]) == 1)
  {
    v2 = v0[5];
    (*(v0[17] + 8))(v0[18], v0[16]);
    sub_25F0D3F60(v2);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v6 = v0[10];
    v5 = v0[11];
    v7 = v0[9];
    sub_25F0B7D50(v1, v0[8], &qword_27FD47380, &unk_25F1830C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47500, &qword_25F17BFC0);
    sub_25F17934C();
    (*(v6 + 8))(v5, v7);
    v8 = v0[19];
    v9 = v0[4];
    v10 = swift_task_alloc();
    v0[20] = v10;
    *v10 = v0;
    v10[1] = sub_25F0D3C68;
    v11 = v0[16];
    v12 = v0[12];

    return MEMORY[0x2822003E8](v12, v9, v8, v11);
  }
}

uint64_t sub_25F0D3F60(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25F177E8C();
  MEMORY[0x28223BE20](v4);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v7 + 16))(v6, a1);
  swift_beginAccess();
  sub_25F169AEC(0, v6);
  result = swift_endAccess();
  if (!*(*(v2 + 120) + 16))
  {
    v9[8] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47510, &qword_25F17BFE8);
    return sub_25F1783AC();
  }

  return result;
}

uint64_t sub_25F0D409C()
{
  v1 = v0;
  v32 = sub_25F176E8C();
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25F1787BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473D8, &qword_25F17BDD8);
  v9 = v8 - 8;
  v31 = *(v8 - 8);
  v10 = *(v31 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = (&v29 - v13);
  sub_25F1787CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473F0, &qword_25F17BE00);
  v15 = sub_25F17941C();
  (*(v5 + 8))(v7, v4);
  *v14 = v15;
  sub_25F0B7E2C(v14, v12, &qword_27FD473D8, &qword_25F17BDD8);
  v16 = *(v9 + 56);
  v17 = (v1 + *(*v1 + 96));
  *v17 = *v12;
  v18 = *(v9 + 56);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473E0, &qword_25F17BDF8);
  (*(*(v19 - 8) + 32))(&v17[v18], &v12[v16], v19);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473B8, &qword_25F17BDA0);
  strcpy(v33, "listener for ");
  v33[7] = -4864;
  v20 = *MEMORY[0x277D40D28];
  v21 = sub_25F176E7C();
  (*(*(v21 - 8) + 104))(v3, v20, v21);
  v22 = v30;
  v23 = v32;
  (*(v30 + 104))(v3, *MEMORY[0x277D40CE8], v32);
  sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30], MEMORY[0x277D40D38]);
  v24 = sub_25F17980C();
  MEMORY[0x25F8D50D0](v24);

  (*(v22 + 8))(v3, v23);
  sub_25F0B7E2C(v14, v12, &qword_27FD473D8, &qword_25F17BDD8);
  v25 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v26 = swift_allocObject();
  sub_25F0B7D50(v12, v26 + v25, &qword_27FD473D8, &qword_25F17BDD8);
  v27 = sub_25F177F0C();
  sub_25F0B7E94(v14, &qword_27FD473D8, &qword_25F17BDD8);
  *(v1 + *(*v1 + 104)) = v27;
  return v1;
}

uint64_t sub_25F0D4574()
{
  v1 = v0;
  v30 = sub_25F176E8C();
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25F1787BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47398, &qword_25F17BD70);
  v9 = v8 - 8;
  v29 = *(v8 - 8);
  v10 = *(v29 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = (&v27 - v13);
  sub_25F1787CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473B0, &qword_25F17BD98);
  v15 = sub_25F17941C();
  (*(v5 + 8))(v7, v4);
  *v14 = v15;
  sub_25F0B7E2C(v14, v12, &qword_27FD47398, &qword_25F17BD70);
  v16 = *(v9 + 56);
  v17 = (v1 + *(*v1 + 96));
  *v17 = *v12;
  v18 = *(v9 + 56);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473A0, &qword_25F17BD90);
  (*(*(v19 - 8) + 32))(&v17[v18], &v12[v16], v19);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473B8, &qword_25F17BDA0);
  strcpy(v31, "listener for ");
  v31[7] = -4864;
  v20 = v28;
  v21 = v30;
  (*(v28 + 104))(v3, *MEMORY[0x277D40CF0], v30);
  sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30], MEMORY[0x277D40D38]);
  v22 = sub_25F17980C();
  MEMORY[0x25F8D50D0](v22);

  (*(v20 + 8))(v3, v21);
  sub_25F0B7E2C(v14, v12, &qword_27FD47398, &qword_25F17BD70);
  v23 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v24 = swift_allocObject();
  sub_25F0B7D50(v12, v24 + v23, &qword_27FD47398, &qword_25F17BD70);
  v25 = sub_25F177F0C();
  sub_25F0B7E94(v14, &qword_27FD47398, &qword_25F17BD70);
  *(v1 + *(*v1 + 104)) = v25;
  return v1;
}

uint64_t sub_25F0D4A04()
{
  v1 = v0;
  v30 = sub_25F176E8C();
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25F1787BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473F8, &qword_25F17BE20);
  v9 = v8 - 8;
  v29 = *(v8 - 8);
  v10 = *(v29 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = (&v27 - v13);
  sub_25F1787CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47410, &qword_25F17BE48);
  v15 = sub_25F17941C();
  (*(v5 + 8))(v7, v4);
  *v14 = v15;
  sub_25F0B7E2C(v14, v12, &qword_27FD473F8, &qword_25F17BE20);
  v16 = *(v9 + 56);
  v17 = (v1 + *(*v1 + 96));
  *v17 = *v12;
  v18 = *(v9 + 56);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47400, &qword_25F17BE40);
  (*(*(v19 - 8) + 32))(&v17[v18], &v12[v16], v19);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47420, &qword_25F17BE50);
  strcpy(v31, "listener for ");
  v31[7] = -4864;
  v20 = v28;
  v21 = v30;
  (*(v28 + 104))(v3, *MEMORY[0x277D40D08], v30);
  sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30], MEMORY[0x277D40D38]);
  v22 = sub_25F17980C();
  MEMORY[0x25F8D50D0](v22);

  (*(v20 + 8))(v3, v21);
  sub_25F0B7E2C(v14, v12, &qword_27FD473F8, &qword_25F17BE20);
  v23 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v24 = swift_allocObject();
  sub_25F0B7D50(v12, v24 + v23, &qword_27FD473F8, &qword_25F17BE20);
  v25 = sub_25F177F0C();
  sub_25F0B7E94(v14, &qword_27FD473F8, &qword_25F17BE20);
  *(v1 + *(*v1 + 104)) = v25;
  return v1;
}

uint64_t sub_25F0D4E94()
{
  v1 = v0;
  v30 = sub_25F176E8C();
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25F1787BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47430, &qword_25F17BE70);
  v9 = v8 - 8;
  v29 = *(v8 - 8);
  v10 = *(v29 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = (&v27 - v13);
  sub_25F1787CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47448, &unk_25F17F3E0);
  v15 = sub_25F17941C();
  (*(v5 + 8))(v7, v4);
  *v14 = v15;
  sub_25F0B7E2C(v14, v12, &qword_27FD47430, &qword_25F17BE70);
  v16 = *(v9 + 56);
  v17 = (v1 + *(*v1 + 96));
  *v17 = *v12;
  v18 = *(v9 + 56);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47438, &qword_25F17BE90);
  (*(*(v19 - 8) + 32))(&v17[v18], &v12[v16], v19);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473B8, &qword_25F17BDA0);
  strcpy(v31, "listener for ");
  v31[7] = -4864;
  v20 = v28;
  v21 = v30;
  (*(v28 + 104))(v3, *MEMORY[0x277D40D00], v30);
  sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30], MEMORY[0x277D40D38]);
  v22 = sub_25F17980C();
  MEMORY[0x25F8D50D0](v22);

  (*(v20 + 8))(v3, v21);
  sub_25F0B7E2C(v14, v12, &qword_27FD47430, &qword_25F17BE70);
  v23 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v24 = swift_allocObject();
  sub_25F0B7D50(v12, v24 + v23, &qword_27FD47430, &qword_25F17BE70);
  v25 = sub_25F177F0C();
  sub_25F0B7E94(v14, &qword_27FD47430, &qword_25F17BE70);
  *(v1 + *(*v1 + 104)) = v25;
  return v1;
}

uint64_t sub_25F0D5324()
{
  v1 = v0;
  v30 = sub_25F176E8C();
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25F1787BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47450, &qword_25F17BEB0);
  v9 = v8 - 8;
  v29 = *(v8 - 8);
  v10 = *(v29 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = (&v27 - v13);
  sub_25F1787CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47468, &qword_25F17BED8);
  v15 = sub_25F17941C();
  (*(v5 + 8))(v7, v4);
  *v14 = v15;
  sub_25F0B7E2C(v14, v12, &qword_27FD47450, &qword_25F17BEB0);
  v16 = *(v9 + 56);
  v17 = (v1 + *(*v1 + 96));
  *v17 = *v12;
  v18 = *(v9 + 56);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47458, &qword_25F17BED0);
  (*(*(v19 - 8) + 32))(&v17[v18], &v12[v16], v19);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473B8, &qword_25F17BDA0);
  strcpy(v31, "listener for ");
  v31[7] = -4864;
  v20 = v28;
  v21 = v30;
  (*(v28 + 104))(v3, *MEMORY[0x277D40CD0], v30);
  sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30], MEMORY[0x277D40D38]);
  v22 = sub_25F17980C();
  MEMORY[0x25F8D50D0](v22);

  (*(v20 + 8))(v3, v21);
  sub_25F0B7E2C(v14, v12, &qword_27FD47450, &qword_25F17BEB0);
  v23 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v24 = swift_allocObject();
  sub_25F0B7D50(v12, v24 + v23, &qword_27FD47450, &qword_25F17BEB0);
  v25 = sub_25F177F0C();
  sub_25F0B7E94(v14, &qword_27FD47450, &qword_25F17BEB0);
  *(v1 + *(*v1 + 104)) = v25;
  return v1;
}

uint64_t sub_25F0D57B4()
{
  v1 = v0;
  v30 = sub_25F176E8C();
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25F1787BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47470, &qword_25F17BEF8);
  v9 = v8 - 8;
  v29 = *(v8 - 8);
  v10 = *(v29 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = (&v27 - v13);
  sub_25F1787CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47488, &qword_25F17BF20);
  v15 = sub_25F17941C();
  (*(v5 + 8))(v7, v4);
  *v14 = v15;
  sub_25F0B7E2C(v14, v12, &qword_27FD47470, &qword_25F17BEF8);
  v16 = *(v9 + 56);
  v17 = (v1 + *(*v1 + 96));
  *v17 = *v12;
  v18 = *(v9 + 56);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47478, &qword_25F17BF18);
  (*(*(v19 - 8) + 32))(&v17[v18], &v12[v16], v19);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47490, &qword_25F17BF28);
  strcpy(v31, "listener for ");
  v31[7] = -4864;
  v20 = v28;
  v21 = v30;
  (*(v28 + 104))(v3, *MEMORY[0x277D40CF8], v30);
  sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30], MEMORY[0x277D40D38]);
  v22 = sub_25F17980C();
  MEMORY[0x25F8D50D0](v22);

  (*(v20 + 8))(v3, v21);
  sub_25F0B7E2C(v14, v12, &qword_27FD47470, &qword_25F17BEF8);
  v23 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v24 = swift_allocObject();
  sub_25F0B7D50(v12, v24 + v23, &qword_27FD47470, &qword_25F17BEF8);
  v25 = sub_25F177F0C();
  sub_25F0B7E94(v14, &qword_27FD47470, &qword_25F17BEF8);
  *(v1 + *(*v1 + 104)) = v25;
  return v1;
}

uint64_t sub_25F0D5C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[103] = a4;
  v4[102] = a3;
  v4[104] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47470, &qword_25F17BEF8);
  v4[105] = swift_task_alloc();
  v4[100] = a1;
  v4[101] = a2;

  return MEMORY[0x2822009F8](sub_25F0D5CF8, 0, 0);
}

uint64_t sub_25F0D5CF8()
{
  v1 = *(v0 + 840);
  v2 = *(v0 + 832);
  sub_25F0B7E2C(*(v0 + 824), v1, &qword_27FD47470, &qword_25F17BEF8);
  v3 = *v1;
  *(v0 + 848) = v3;
  *(v0 + 888) = *(v2 + 48);
  v4 = swift_task_alloc();
  *(v0 + 856) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47488, &qword_25F17BF20);
  *v4 = v0;
  v4[1] = sub_25F0D5DE0;

  return MEMORY[0x282200460](v0 + 152, v3, v5);
}

uint64_t sub_25F0D5DE0()
{

  return MEMORY[0x2822009F8](sub_25F0D5EF8, 0, 0);
}

uint64_t sub_25F0D5EF8()
{
  v1 = *(v0 + 888);
  v2 = *(v0 + 840);
  v3 = *(v0 + 232);
  v4 = *(v0 + 248);
  *(v0 + 144) = *(v0 + 280);
  v5 = *(v0 + 168);
  v6 = *(v0 + 200);
  *(v0 + 48) = *(v0 + 184);
  *(v0 + 64) = v6;
  *(v0 + 80) = *(v0 + 216);
  *(v0 + 96) = v3;
  *(v0 + 16) = *(v0 + 152);
  *(v0 + 32) = v5;
  v7 = *(v0 + 264);
  *(v0 + 112) = v4;
  *(v0 + 128) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47478, &qword_25F17BF18);
  (*(*(v8 - 8) + 8))(v2 + v1, v8);
  *(v0 + 864) = [*(v0 + 16) endpoint];
  v9 = *(v0 + 104);
  *(v0 + 352) = *(v0 + 88);
  *(v0 + 368) = v9;
  v10 = *(v0 + 136);
  *(v0 + 384) = *(v0 + 120);
  *(v0 + 400) = v10;
  v11 = *(v0 + 40);
  *(v0 + 288) = *(v0 + 24);
  *(v0 + 304) = v11;
  v12 = *(v0 + 72);
  *(v0 + 320) = *(v0 + 56);
  *(v0 + 336) = v12;
  sub_25F0E0148(v0 + 24, v0 + 416);
  v13 = swift_task_alloc();
  *(v0 + 872) = v13;
  *v13 = v0;
  v13[1] = sub_25F0D608C;
  v14 = *(v0 + 816);

  return (sub_25F0F26F8)(v0 + 800, v14, v0 + 288);
}

uint64_t sub_25F0D608C()
{
  v2 = *v1;
  *(v2 + 880) = v0;

  v3 = *(v2 + 288);
  v4 = *(v2 + 304);
  v5 = *(v2 + 336);
  if (v0)
  {
    *(v2 + 576) = *(v2 + 320);
    *(v2 + 592) = v5;
    *(v2 + 544) = v3;
    *(v2 + 560) = v4;
    v6 = *(v2 + 352);
    v7 = *(v2 + 368);
    v8 = *(v2 + 400);
    *(v2 + 640) = *(v2 + 384);
    *(v2 + 656) = v8;
    *(v2 + 608) = v6;
    *(v2 + 624) = v7;
    sub_25F0E263C(v2 + 544);
    v9 = sub_25F0D6294;
  }

  else
  {
    *(v2 + 704) = *(v2 + 320);
    *(v2 + 720) = v5;
    *(v2 + 672) = v3;
    *(v2 + 688) = v4;
    v10 = *(v2 + 352);
    v11 = *(v2 + 368);
    v12 = *(v2 + 400);
    *(v2 + 768) = *(v2 + 384);
    *(v2 + 784) = v12;
    *(v2 + 736) = v10;
    *(v2 + 752) = v11;
    sub_25F0E263C(v2 + 672);
    v9 = sub_25F0D6214;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_25F0D6214()
{
  sub_25F0B7E94(v0 + 16, &qword_27FD47488, &qword_25F17BF20);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F0D6294()
{
  sub_25F0B7E94(v0 + 16, &qword_27FD47488, &qword_25F17BF20);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F0D6314(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_25F17813C();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  v2[9] = swift_task_alloc();
  v4 = sub_25F176E8C();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_25F17888C();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F0D64DC, 0, 0);
}

uint64_t sub_25F0D64DC(uint64_t a1)
{
  v30 = v1;
  sub_25F17884C();
  v2 = sub_25F17887C();
  v3 = sub_25F17951C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 136);
  v7 = *(v1 + 104);
  v6 = *(v1 + 112);
  if (v4)
  {
    v9 = *(v1 + 88);
    v8 = *(v1 + 96);
    v10 = *(v1 + 80);
    v28 = *(v1 + 104);
    v11 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v29 = v27;
    *v11 = 136446210;
    v12 = *MEMORY[0x277D40D28];
    v13 = sub_25F176E7C();
    (*(*(v13 - 8) + 104))(v8, v12, v13);
    (*(v9 + 104))(v8, *MEMORY[0x277D40CE8], v10);
    sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30], MEMORY[0x277D40D38]);
    v14 = sub_25F17980C();
    v26 = v5;
    v16 = v15;
    (*(v9 + 8))(v8, v10);
    v17 = sub_25F0BECF0(v14, v16, &v29);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_25F0B3000, v2, v3, "listener for %{public}s accepting new connection", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x25F8D6230](v27, -1, -1);
    MEMORY[0x25F8D6230](v11, -1, -1);

    v18 = *(v6 + 8);
    v18(v26, v28);
  }

  else
  {

    v18 = *(v6 + 8);
    v18(v5, v7);
  }

  *(v1 + 144) = v18;
  v19 = *(v1 + 32);
  v20 = *(v1 + 40);
  v21 = sub_25F176F4C();
  v22 = [v21 pid];
  *(v1 + 172) = v22;

  *(v1 + 168) = v22;
  *(v1 + 152) = *(v20 + *(*v20 + 104));
  *(v1 + 16) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473B8, &qword_25F17BDA0);
  sub_25F0B7D00(&qword_27FD473C0, &qword_27FD473B8, &qword_25F17BDA0, MEMORY[0x277D40408]);
  v24 = sub_25F1792CC();

  return MEMORY[0x2822009F8](sub_25F0D67EC, v24, v23);
}

uint64_t sub_25F0D67EC()
{
  sub_25F177EEC();
  *(v0 + 160) = 0;

  return MEMORY[0x2822009F8](sub_25F0D6880, 0, 0);
}

uint64_t sub_25F0D6880(uint64_t a1)
{
  v31 = v1;
  sub_25F17884C();
  v2 = sub_25F17887C();
  v3 = sub_25F17951C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 144);
  v6 = *(v1 + 128);
  v7 = *(v1 + 104);
  if (v4)
  {
    v28 = *(v1 + 104);
    v29 = *(v1 + 144);
    v9 = *(v1 + 88);
    v8 = *(v1 + 96);
    v10 = *(v1 + 80);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v30 = v12;
    *v11 = 136446210;
    v13 = *MEMORY[0x277D40D28];
    v14 = sub_25F176E7C();
    (*(*(v14 - 8) + 104))(v8, v13, v14);
    (*(v9 + 104))(v8, *MEMORY[0x277D40CE8], v10);
    sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30], MEMORY[0x277D40D38]);
    v15 = sub_25F17980C();
    v27 = v6;
    v17 = v16;
    (*(v9 + 8))(v8, v10);
    v18 = sub_25F0BECF0(v15, v17, &v30);

    *(v11 + 4) = v18;
    _os_log_impl(&dword_25F0B3000, v2, v3, "listener for %{public}s delivered new connection", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x25F8D6230](v12, -1, -1);
    MEMORY[0x25F8D6230](v11, -1, -1);

    v29(v27, v28);
  }

  else
  {

    v5(v6, v7);
  }

  v19 = *(v1 + 172);
  v20 = *(v1 + 72);
  v22 = *(v1 + 32);
  v21 = *(v1 + 40);
  v23 = sub_25F17932C();
  (*(*(v23 - 8) + 56))(v20, 1, 1, v23);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = v22;
  *(v24 + 40) = v21;
  *(v24 + 48) = v19;

  sub_25F0CD9E8(0, 0, v20, &unk_25F17BE10, v24);

  v25 = *(v1 + 8);

  return v25();
}

uint64_t sub_25F0D6BD4(uint64_t a1)
{
  v34 = v1;
  v2 = v1[20];
  sub_25F17884C();
  v3 = v2;
  v4 = sub_25F17887C();
  v5 = sub_25F17953C();

  if (os_log_type_enabled(v4, v5))
  {
    v28 = v1[20];
    v31 = v1[15];
    v32 = v1[18];
    v6 = v1[12];
    v30 = v1[13];
    v7 = v1[10];
    v8 = v1[11];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v33 = v29;
    *v9 = 136446466;
    v11 = *MEMORY[0x277D40D28];
    v12 = sub_25F176E7C();
    (*(*(v12 - 8) + 104))(v6, v11, v12);
    (*(v8 + 104))(v6, *MEMORY[0x277D40CE8], v7);
    sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30], MEMORY[0x277D40D38]);
    v13 = sub_25F17980C();
    v15 = v14;
    (*(v8 + 8))(v6, v7);
    v16 = sub_25F0BECF0(v13, v15, &v33);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2114;
    v17 = v28;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v18;
    *v10 = v18;
    _os_log_impl(&dword_25F0B3000, v4, v5, "listener for %{public}s rejecting connection: %{public}@", v9, 0x16u);
    sub_25F0B7E94(v10, &qword_27FD473D0, &unk_25F17C540);
    MEMORY[0x25F8D6230](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    MEMORY[0x25F8D6230](v29, -1, -1);
    MEMORY[0x25F8D6230](v9, -1, -1);

    v32(v31, v30);
  }

  else
  {
    v19 = v1[18];
    v20 = v1[15];
    v21 = v1[13];

    v19(v20, v21);
  }

  v22 = v1[20];
  v24 = v1[7];
  v23 = v1[8];
  v25 = v1[6];
  v1[3] = v1[4];
  sub_25F17812C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D28, &qword_25F17B180);
  sub_25F0B7D00(&qword_27FD46D30, &qword_27FD46D28, &qword_25F17B180, MEMORY[0x277D40D80]);
  sub_25F1780BC();

  (*(v24 + 8))(v23, v25);

  v26 = v1[1];

  return v26();
}

uint64_t sub_25F0D6FB8(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_25F17813C();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  v2[9] = swift_task_alloc();
  v4 = sub_25F176E8C();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_25F17888C();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F0D7180, 0, 0);
}

uint64_t sub_25F0D7180(uint64_t a1)
{
  v28 = v1;
  sub_25F17884C();
  v2 = sub_25F17887C();
  v3 = sub_25F17951C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 136);
  v7 = *(v1 + 104);
  v6 = *(v1 + 112);
  if (v4)
  {
    v9 = *(v1 + 88);
    v8 = *(v1 + 96);
    v10 = *(v1 + 80);
    v26 = *(v1 + 104);
    v11 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v27 = v25;
    *v11 = 136446210;
    (*(v9 + 104))(v8, *MEMORY[0x277D40CF0], v10);
    sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30], MEMORY[0x277D40D38]);
    v12 = sub_25F17980C();
    v24 = v5;
    v14 = v13;
    (*(v9 + 8))(v8, v10);
    v15 = sub_25F0BECF0(v12, v14, &v27);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_25F0B3000, v2, v3, "listener for %{public}s accepting new connection", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x25F8D6230](v25, -1, -1);
    MEMORY[0x25F8D6230](v11, -1, -1);

    v16 = *(v6 + 8);
    v16(v24, v26);
  }

  else
  {

    v16 = *(v6 + 8);
    v16(v5, v7);
  }

  *(v1 + 144) = v16;
  v17 = *(v1 + 32);
  v18 = *(v1 + 40);
  v19 = sub_25F176F4C();
  v20 = [v19 pid];
  *(v1 + 172) = v20;

  *(v1 + 168) = v20;
  *(v1 + 152) = *(v18 + *(*v18 + 104));
  *(v1 + 16) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473B8, &qword_25F17BDA0);
  sub_25F0B7D00(&qword_27FD473C0, &qword_27FD473B8, &qword_25F17BDA0, MEMORY[0x277D40408]);
  v22 = sub_25F1792CC();

  return MEMORY[0x2822009F8](sub_25F0D7448, v22, v21);
}

uint64_t sub_25F0D7448()
{
  sub_25F177EEC();
  *(v0 + 160) = 0;

  return MEMORY[0x2822009F8](sub_25F0D74DC, 0, 0);
}

uint64_t sub_25F0D74DC(uint64_t a1)
{
  v29 = v1;
  sub_25F17884C();
  v2 = sub_25F17887C();
  v3 = sub_25F17951C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 144);
  v6 = *(v1 + 128);
  v7 = *(v1 + 104);
  if (v4)
  {
    v26 = *(v1 + 104);
    v27 = *(v1 + 144);
    v9 = *(v1 + 88);
    v8 = *(v1 + 96);
    v10 = *(v1 + 80);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v28 = v12;
    *v11 = 136446210;
    (*(v9 + 104))(v8, *MEMORY[0x277D40CF0], v10);
    sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30], MEMORY[0x277D40D38]);
    v13 = sub_25F17980C();
    v25 = v6;
    v15 = v14;
    (*(v9 + 8))(v8, v10);
    v16 = sub_25F0BECF0(v13, v15, &v28);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_25F0B3000, v2, v3, "listener for %{public}s delivered new connection", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x25F8D6230](v12, -1, -1);
    MEMORY[0x25F8D6230](v11, -1, -1);

    v27(v25, v26);
  }

  else
  {

    v5(v6, v7);
  }

  v17 = *(v1 + 172);
  v18 = *(v1 + 72);
  v20 = *(v1 + 32);
  v19 = *(v1 + 40);
  v21 = sub_25F17932C();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  *(v22 + 32) = v20;
  *(v22 + 40) = v19;
  *(v22 + 48) = v17;

  sub_25F0CD9E8(0, 0, v18, &unk_25F17BDB0, v22);

  v23 = *(v1 + 8);

  return v23();
}

uint64_t sub_25F0D77E8(uint64_t a1)
{
  v32 = v1;
  v2 = v1[20];
  sub_25F17884C();
  v3 = v2;
  v4 = sub_25F17887C();
  v5 = sub_25F17953C();

  if (os_log_type_enabled(v4, v5))
  {
    v26 = v1[20];
    v29 = v1[15];
    v30 = v1[18];
    v6 = v1[12];
    v28 = v1[13];
    v7 = v1[10];
    v8 = v1[11];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v31 = v27;
    *v9 = 136446466;
    (*(v8 + 104))(v6, *MEMORY[0x277D40CF0], v7);
    sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30], MEMORY[0x277D40D38]);
    v11 = sub_25F17980C();
    v13 = v12;
    (*(v8 + 8))(v6, v7);
    v14 = sub_25F0BECF0(v11, v13, &v31);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2114;
    v15 = v26;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v16;
    *v10 = v16;
    _os_log_impl(&dword_25F0B3000, v4, v5, "listener for %{public}s rejecting connection: %{public}@", v9, 0x16u);
    sub_25F0B7E94(v10, &qword_27FD473D0, &unk_25F17C540);
    MEMORY[0x25F8D6230](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x25F8D6230](v27, -1, -1);
    MEMORY[0x25F8D6230](v9, -1, -1);

    v30(v29, v28);
  }

  else
  {
    v17 = v1[18];
    v18 = v1[15];
    v19 = v1[13];

    v17(v18, v19);
  }

  v20 = v1[20];
  v22 = v1[7];
  v21 = v1[8];
  v23 = v1[6];
  v1[3] = v1[4];
  sub_25F17812C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D28, &qword_25F17B180);
  sub_25F0B7D00(&qword_27FD46D30, &qword_27FD46D28, &qword_25F17B180, MEMORY[0x277D40D80]);
  sub_25F1780BC();

  (*(v22 + 8))(v21, v23);

  v24 = v1[1];

  return v24();
}

uint64_t sub_25F0D7B84(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = sub_25F17813C();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  v2[12] = swift_task_alloc();
  sub_25F177F8C();
  v2[13] = swift_task_alloc();
  v4 = sub_25F177E5C();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v5 = sub_25F176E8C();
  v2[17] = v5;
  v2[18] = *(v5 - 8);
  v2[19] = swift_task_alloc();
  v6 = sub_25F17888C();
  v2[20] = v6;
  v2[21] = *(v6 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F0D7DD4, 0, 0);
}

uint64_t sub_25F0D7DD4(uint64_t a1)
{
  v34 = v1;
  sub_25F17884C();
  v2 = sub_25F17887C();
  v3 = sub_25F17951C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 192);
  v7 = *(v1 + 160);
  v6 = *(v1 + 168);
  if (v4)
  {
    v9 = *(v1 + 144);
    v8 = *(v1 + 152);
    v10 = *(v1 + 136);
    v32 = *(v1 + 160);
    v11 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v33 = v31;
    *v11 = 136446210;
    (*(v9 + 104))(v8, *MEMORY[0x277D40D08], v10);
    sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30], MEMORY[0x277D40D38]);
    v12 = sub_25F17980C();
    v30 = v5;
    v14 = v13;
    (*(v9 + 8))(v8, v10);
    v15 = sub_25F0BECF0(v12, v14, &v33);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_25F0B3000, v2, v3, "listener for %{public}s accepting new connection", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x25F8D6230](v31, -1, -1);
    MEMORY[0x25F8D6230](v11, -1, -1);

    v16 = *(v6 + 8);
    v16(v30, v32);
  }

  else
  {

    v16 = *(v6 + 8);
    v16(v5, v7);
  }

  *(v1 + 200) = v16;
  v17 = sub_25F176F4C();
  v18 = [v17 pid];

  sub_25F176F3C();
  sub_25F0E266C(&qword_27FD47418, MEMORY[0x277D40F20], MEMORY[0x277D40F18]);
  sub_25F17850C();
  *(v1 + 208) = 0;
  v20 = *(v1 + 120);
  v19 = *(v1 + 128);
  v21 = *(v1 + 112);
  v23 = *(v1 + 56);
  v22 = *(v1 + 64);
  v24 = sub_25F177E4C();
  v26 = v25;
  (*(v20 + 8))(v19, v21);
  *(v1 + 16) = v18;
  *(v1 + 24) = v24;
  *(v1 + 32) = v26;
  *(v1 + 216) = *(v22 + *(*v22 + 104));
  *(v1 + 48) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47420, &qword_25F17BE50);
  sub_25F0B7D00(&qword_27FD47428, &qword_27FD47420, &qword_25F17BE50, MEMORY[0x277D40408]);
  v28 = sub_25F1792CC();

  return MEMORY[0x2822009F8](sub_25F0D849C, v28, v27);
}

uint64_t sub_25F0D849C()
{
  v1 = *(v0 + 208);
  sub_25F177EEC();
  *(v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_25F0D8868;
  }

  else
  {
    v2 = sub_25F0D852C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F0D852C(uint64_t a1)
{
  v31 = v1;
  sub_25F17884C();
  v2 = sub_25F17887C();
  v3 = sub_25F17951C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 200);
  v6 = *(v1 + 184);
  v7 = *(v1 + 160);
  if (v4)
  {
    v28 = *(v1 + 160);
    v29 = *(v1 + 200);
    v9 = *(v1 + 144);
    v8 = *(v1 + 152);
    v10 = *(v1 + 136);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v30 = v12;
    *v11 = 136446210;
    (*(v9 + 104))(v8, *MEMORY[0x277D40D08], v10);
    sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30], MEMORY[0x277D40D38]);
    v13 = sub_25F17980C();
    v27 = v6;
    v15 = v14;
    (*(v9 + 8))(v8, v10);
    v16 = sub_25F0BECF0(v13, v15, &v30);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_25F0B3000, v2, v3, "listener for %{public}s delivered new connection", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x25F8D6230](v12, -1, -1);
    MEMORY[0x25F8D6230](v11, -1, -1);

    v29(v27, v28);
  }

  else
  {

    v5(v6, v7);
  }

  v17 = *(v1 + 96);
  v19 = *(v1 + 56);
  v18 = *(v1 + 64);
  v20 = sub_25F17932C();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  v21 = *(v1 + 16);
  v23 = *(v1 + 24);
  v22 = *(v1 + 32);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = v19;
  *(v24 + 40) = v18;
  *(v24 + 48) = v21;
  *(v24 + 56) = v23;
  *(v24 + 64) = v22;

  sub_25F0CD9E8(0, 0, v17, &unk_25F17BE60, v24);

  v25 = *(v1 + 8);

  return v25();
}

uint64_t sub_25F0D8868()
{
  v30 = v0;

  v1 = v0[28];
  sub_25F17884C();
  v2 = v1;
  v3 = sub_25F17887C();
  v4 = sub_25F17953C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[25];
  v7 = v0[22];
  v8 = v0[20];
  if (v5)
  {
    v27 = v0[22];
    v28 = v0[25];
    v10 = v0[18];
    v9 = v0[19];
    v11 = v0[17];
    v12 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v29 = v26;
    *v12 = 136446466;
    (*(v10 + 104))(v9, *MEMORY[0x277D40D08], v11);
    sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30], MEMORY[0x277D40D38]);
    v25 = v8;
    v13 = sub_25F17980C();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_25F0BECF0(v13, v15, &v29);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2114;
    v17 = v1;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v18;
    *v24 = v18;
    _os_log_impl(&dword_25F0B3000, v3, v4, "listener for %{public}s rejecting connection: %{public}@", v12, 0x16u);
    sub_25F0B7E94(v24, &qword_27FD473D0, &unk_25F17C540);
    MEMORY[0x25F8D6230](v24, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x25F8D6230](v26, -1, -1);
    MEMORY[0x25F8D6230](v12, -1, -1);

    v28(v27, v25);
  }

  else
  {

    v6(v7, v8);
  }

  v20 = v0[10];
  v19 = v0[11];
  v21 = v0[9];
  v0[5] = v0[7];
  sub_25F17812C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D28, &qword_25F17B180);
  sub_25F0B7D00(&qword_27FD46D30, &qword_27FD46D28, &qword_25F17B180, MEMORY[0x277D40D80]);
  sub_25F1780BC();

  (*(v20 + 8))(v19, v21);

  v22 = v0[1];

  return v22();
}

uint64_t sub_25F0D8C18(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_25F17813C();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  v2[9] = swift_task_alloc();
  v4 = sub_25F176E8C();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_25F17888C();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F0D8DE0, 0, 0);
}

uint64_t sub_25F0D8DE0(uint64_t a1)
{
  v28 = v1;
  sub_25F17884C();
  v2 = sub_25F17887C();
  v3 = sub_25F17951C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 136);
  v7 = *(v1 + 104);
  v6 = *(v1 + 112);
  if (v4)
  {
    v9 = *(v1 + 88);
    v8 = *(v1 + 96);
    v10 = *(v1 + 80);
    v26 = *(v1 + 104);
    v11 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v27 = v25;
    *v11 = 136446210;
    (*(v9 + 104))(v8, *MEMORY[0x277D40D00], v10);
    sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30], MEMORY[0x277D40D38]);
    v12 = sub_25F17980C();
    v24 = v5;
    v14 = v13;
    (*(v9 + 8))(v8, v10);
    v15 = sub_25F0BECF0(v12, v14, &v27);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_25F0B3000, v2, v3, "listener for %{public}s accepting new connection", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x25F8D6230](v25, -1, -1);
    MEMORY[0x25F8D6230](v11, -1, -1);

    v16 = *(v6 + 8);
    v16(v24, v26);
  }

  else
  {

    v16 = *(v6 + 8);
    v16(v5, v7);
  }

  *(v1 + 144) = v16;
  v17 = *(v1 + 32);
  v18 = *(v1 + 40);
  v19 = sub_25F176F4C();
  v20 = [v19 pid];
  *(v1 + 172) = v20;

  *(v1 + 168) = v20;
  *(v1 + 152) = *(v18 + *(*v18 + 104));
  *(v1 + 16) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473B8, &qword_25F17BDA0);
  sub_25F0B7D00(&qword_27FD473C0, &qword_27FD473B8, &qword_25F17BDA0, MEMORY[0x277D40408]);
  v22 = sub_25F1792CC();

  return MEMORY[0x2822009F8](sub_25F0D90A8, v22, v21);
}

uint64_t sub_25F0D90A8()
{
  sub_25F177EEC();
  *(v0 + 160) = 0;

  return MEMORY[0x2822009F8](sub_25F0D913C, 0, 0);
}

uint64_t sub_25F0D913C(uint64_t a1)
{
  v29 = v1;
  sub_25F17884C();
  v2 = sub_25F17887C();
  v3 = sub_25F17951C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 144);
  v6 = *(v1 + 128);
  v7 = *(v1 + 104);
  if (v4)
  {
    v26 = *(v1 + 104);
    v27 = *(v1 + 144);
    v9 = *(v1 + 88);
    v8 = *(v1 + 96);
    v10 = *(v1 + 80);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v28 = v12;
    *v11 = 136446210;
    (*(v9 + 104))(v8, *MEMORY[0x277D40D00], v10);
    sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30], MEMORY[0x277D40D38]);
    v13 = sub_25F17980C();
    v25 = v6;
    v15 = v14;
    (*(v9 + 8))(v8, v10);
    v16 = sub_25F0BECF0(v13, v15, &v28);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_25F0B3000, v2, v3, "listener for %{public}s delivered new connection", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x25F8D6230](v12, -1, -1);
    MEMORY[0x25F8D6230](v11, -1, -1);

    v27(v25, v26);
  }

  else
  {

    v5(v6, v7);
  }

  v17 = *(v1 + 172);
  v18 = *(v1 + 72);
  v20 = *(v1 + 32);
  v19 = *(v1 + 40);
  v21 = sub_25F17932C();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  *(v22 + 32) = v20;
  *(v22 + 40) = v19;
  *(v22 + 48) = v17;

  sub_25F0CD9E8(0, 0, v18, &unk_25F17BEA0, v22);

  v23 = *(v1 + 8);

  return v23();
}

uint64_t sub_25F0D9448(uint64_t a1)
{
  v32 = v1;
  v2 = v1[20];
  sub_25F17884C();
  v3 = v2;
  v4 = sub_25F17887C();
  v5 = sub_25F17953C();

  if (os_log_type_enabled(v4, v5))
  {
    v26 = v1[20];
    v29 = v1[15];
    v30 = v1[18];
    v6 = v1[12];
    v28 = v1[13];
    v7 = v1[10];
    v8 = v1[11];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v31 = v27;
    *v9 = 136446466;
    (*(v8 + 104))(v6, *MEMORY[0x277D40D00], v7);
    sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30], MEMORY[0x277D40D38]);
    v11 = sub_25F17980C();
    v13 = v12;
    (*(v8 + 8))(v6, v7);
    v14 = sub_25F0BECF0(v11, v13, &v31);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2114;
    v15 = v26;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v16;
    *v10 = v16;
    _os_log_impl(&dword_25F0B3000, v4, v5, "listener for %{public}s rejecting connection: %{public}@", v9, 0x16u);
    sub_25F0B7E94(v10, &qword_27FD473D0, &unk_25F17C540);
    MEMORY[0x25F8D6230](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x25F8D6230](v27, -1, -1);
    MEMORY[0x25F8D6230](v9, -1, -1);

    v30(v29, v28);
  }

  else
  {
    v17 = v1[18];
    v18 = v1[15];
    v19 = v1[13];

    v17(v18, v19);
  }

  v20 = v1[20];
  v22 = v1[7];
  v21 = v1[8];
  v23 = v1[6];
  v1[3] = v1[4];
  sub_25F17812C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D28, &qword_25F17B180);
  sub_25F0B7D00(&qword_27FD46D30, &qword_27FD46D28, &qword_25F17B180, MEMORY[0x277D40D80]);
  sub_25F1780BC();

  (*(v22 + 8))(v21, v23);

  v24 = v1[1];

  return v24();
}

uint64_t sub_25F0D97E4(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_25F17813C();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  v2[9] = swift_task_alloc();
  v4 = sub_25F176E8C();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_25F17888C();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F0D99AC, 0, 0);
}

uint64_t sub_25F0D99AC(uint64_t a1)
{
  v28 = v1;
  sub_25F17884C();
  v2 = sub_25F17887C();
  v3 = sub_25F17951C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 136);
  v7 = *(v1 + 104);
  v6 = *(v1 + 112);
  if (v4)
  {
    v9 = *(v1 + 88);
    v8 = *(v1 + 96);
    v10 = *(v1 + 80);
    v26 = *(v1 + 104);
    v11 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v27 = v25;
    *v11 = 136446210;
    (*(v9 + 104))(v8, *MEMORY[0x277D40CD0], v10);
    sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30], MEMORY[0x277D40D38]);
    v12 = sub_25F17980C();
    v24 = v5;
    v14 = v13;
    (*(v9 + 8))(v8, v10);
    v15 = sub_25F0BECF0(v12, v14, &v27);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_25F0B3000, v2, v3, "listener for %{public}s accepting new connection", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x25F8D6230](v25, -1, -1);
    MEMORY[0x25F8D6230](v11, -1, -1);

    v16 = *(v6 + 8);
    v16(v24, v26);
  }

  else
  {

    v16 = *(v6 + 8);
    v16(v5, v7);
  }

  *(v1 + 144) = v16;
  v17 = *(v1 + 32);
  v18 = *(v1 + 40);
  v19 = sub_25F176F4C();
  v20 = [v19 pid];
  *(v1 + 172) = v20;

  *(v1 + 168) = v20;
  *(v1 + 152) = *(v18 + *(*v18 + 104));
  *(v1 + 16) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473B8, &qword_25F17BDA0);
  sub_25F0B7D00(&qword_27FD473C0, &qword_27FD473B8, &qword_25F17BDA0, MEMORY[0x277D40408]);
  v22 = sub_25F1792CC();

  return MEMORY[0x2822009F8](sub_25F0D9C74, v22, v21);
}

uint64_t sub_25F0D9C74()
{
  sub_25F177EEC();
  *(v0 + 160) = 0;

  return MEMORY[0x2822009F8](sub_25F0D9D08, 0, 0);
}

uint64_t sub_25F0D9D08(uint64_t a1)
{
  v29 = v1;
  sub_25F17884C();
  v2 = sub_25F17887C();
  v3 = sub_25F17951C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 144);
  v6 = *(v1 + 128);
  v7 = *(v1 + 104);
  if (v4)
  {
    v26 = *(v1 + 104);
    v27 = *(v1 + 144);
    v9 = *(v1 + 88);
    v8 = *(v1 + 96);
    v10 = *(v1 + 80);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v28 = v12;
    *v11 = 136446210;
    (*(v9 + 104))(v8, *MEMORY[0x277D40CD0], v10);
    sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30], MEMORY[0x277D40D38]);
    v13 = sub_25F17980C();
    v25 = v6;
    v15 = v14;
    (*(v9 + 8))(v8, v10);
    v16 = sub_25F0BECF0(v13, v15, &v28);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_25F0B3000, v2, v3, "listener for %{public}s delivered new connection", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x25F8D6230](v12, -1, -1);
    MEMORY[0x25F8D6230](v11, -1, -1);

    v27(v25, v26);
  }

  else
  {

    v5(v6, v7);
  }

  v17 = *(v1 + 172);
  v18 = *(v1 + 72);
  v20 = *(v1 + 32);
  v19 = *(v1 + 40);
  v21 = sub_25F17932C();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  *(v22 + 32) = v20;
  *(v22 + 40) = v19;
  *(v22 + 48) = v17;

  sub_25F0CD9E8(0, 0, v18, &unk_25F17BEE8, v22);

  v23 = *(v1 + 8);

  return v23();
}

uint64_t sub_25F0DA014(uint64_t a1)
{
  v32 = v1;
  v2 = v1[20];
  sub_25F17884C();
  v3 = v2;
  v4 = sub_25F17887C();
  v5 = sub_25F17953C();

  if (os_log_type_enabled(v4, v5))
  {
    v26 = v1[20];
    v29 = v1[15];
    v30 = v1[18];
    v6 = v1[12];
    v28 = v1[13];
    v7 = v1[10];
    v8 = v1[11];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v31 = v27;
    *v9 = 136446466;
    (*(v8 + 104))(v6, *MEMORY[0x277D40CD0], v7);
    sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30], MEMORY[0x277D40D38]);
    v11 = sub_25F17980C();
    v13 = v12;
    (*(v8 + 8))(v6, v7);
    v14 = sub_25F0BECF0(v11, v13, &v31);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2114;
    v15 = v26;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v16;
    *v10 = v16;
    _os_log_impl(&dword_25F0B3000, v4, v5, "listener for %{public}s rejecting connection: %{public}@", v9, 0x16u);
    sub_25F0B7E94(v10, &qword_27FD473D0, &unk_25F17C540);
    MEMORY[0x25F8D6230](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x25F8D6230](v27, -1, -1);
    MEMORY[0x25F8D6230](v9, -1, -1);

    v30(v29, v28);
  }

  else
  {
    v17 = v1[18];
    v18 = v1[15];
    v19 = v1[13];

    v17(v18, v19);
  }

  v20 = v1[20];
  v22 = v1[7];
  v21 = v1[8];
  v23 = v1[6];
  v1[3] = v1[4];
  sub_25F17812C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D28, &qword_25F17B180);
  sub_25F0B7D00(&qword_27FD46D30, &qword_27FD46D28, &qword_25F17B180, MEMORY[0x277D40D80]);
  sub_25F1780BC();

  (*(v22 + 8))(v21, v23);

  v24 = v1[1];

  return v24();
}

uint64_t sub_25F0DA3B0(uint64_t a1, uint64_t a2)
{
  v2[13] = a1;
  v2[14] = a2;
  v3 = sub_25F17813C();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  v2[18] = swift_task_alloc();
  v4 = sub_25F177F8C();
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  v5 = sub_25F176E8C();
  v2[22] = v5;
  v2[23] = *(v5 - 8);
  v2[24] = swift_task_alloc();
  v6 = sub_25F17888C();
  v2[25] = v6;
  v2[26] = *(v6 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F0DA5D4, 0, 0);
}

uint64_t sub_25F0DA5D4(uint64_t a1)
{
  v28 = v1;
  sub_25F17884C();
  v2 = sub_25F17887C();
  v3 = sub_25F17951C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[29];
  v7 = v1[25];
  v6 = v1[26];
  if (v4)
  {
    v9 = v1[23];
    v8 = v1[24];
    v10 = v1[22];
    v26 = v1[25];
    v11 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v27 = v25;
    *v11 = 136446210;
    (*(v9 + 104))(v8, *MEMORY[0x277D40CF8], v10);
    sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30], MEMORY[0x277D40D38]);
    v12 = sub_25F17980C();
    v24 = v5;
    v14 = v13;
    (*(v9 + 8))(v8, v10);
    v15 = sub_25F0BECF0(v12, v14, &v27);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_25F0B3000, v2, v3, "listener for %{public}s accepting new connection", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x25F8D6230](v25, -1, -1);
    MEMORY[0x25F8D6230](v11, -1, -1);

    v16 = *(v6 + 8);
    v16(v24, v26);
  }

  else
  {

    v16 = *(v6 + 8);
    v16(v5, v7);
  }

  v1[30] = v16;
  sub_25F176F3C();
  v17 = MEMORY[0x277D405A0];
  v1[5] = MEMORY[0x277D837D0];
  v1[6] = v17;
  v1[2] = 0xD00000000000001DLL;
  v1[3] = 0x800000025F184C70;
  sub_25F177F6C();
  v1[31] = 0;
  v18 = v1[13];
  v19 = v1[14];
  (*(v1[20] + 8))(v1[21], v1[19]);
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 2);
  v20 = v1[10];
  v1[7] = v1[9];
  v1[8] = v20;
  v1[32] = *(v19 + *(*v19 + 104));
  v1[12] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47490, &qword_25F17BF28);
  sub_25F0B7D00(&qword_27FD47498, &qword_27FD47490, &qword_25F17BF28, MEMORY[0x277D40408]);
  v22 = sub_25F1792CC();

  return MEMORY[0x2822009F8](sub_25F0DAC80, v22, v21);
}

uint64_t sub_25F0DAC80()
{
  v1 = *(v0 + 248);
  sub_25F177EEC();
  *(v0 + 264) = v1;
  if (v1)
  {
    v2 = sub_25F0DB038;
  }

  else
  {
    v2 = sub_25F0DAD10;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F0DAD10(uint64_t a1)
{
  v30 = v1;
  sub_25F17884C();
  v2 = sub_25F17887C();
  v3 = sub_25F17951C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[30];
  v6 = v1[28];
  v7 = v1[25];
  if (v4)
  {
    v27 = v1[25];
    v28 = v1[30];
    v9 = v1[23];
    v8 = v1[24];
    v10 = v1[22];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29 = v12;
    *v11 = 136446210;
    (*(v9 + 104))(v8, *MEMORY[0x277D40CF8], v10);
    sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30], MEMORY[0x277D40D38]);
    v13 = sub_25F17980C();
    v26 = v6;
    v15 = v14;
    (*(v9 + 8))(v8, v10);
    v16 = sub_25F0BECF0(v13, v15, &v29);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_25F0B3000, v2, v3, "listener for %{public}s delivered new connection", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x25F8D6230](v12, -1, -1);
    MEMORY[0x25F8D6230](v11, -1, -1);

    v28(v26, v27);
  }

  else
  {

    v5(v6, v7);
  }

  v17 = v1[18];
  v19 = v1[13];
  v18 = v1[14];
  v20 = sub_25F17932C();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  v22 = v1[7];
  v21 = v1[8];
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v19;
  v23[5] = v18;
  v23[6] = v22;
  v23[7] = v21;

  sub_25F0CD9E8(0, 0, v17, &unk_25F17BF38, v23);

  v24 = v1[1];

  return v24();
}

uint64_t sub_25F0DB038()
{
  v30 = v0;

  v1 = v0[33];
  sub_25F17884C();
  v2 = v1;
  v3 = sub_25F17887C();
  v4 = sub_25F17953C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[30];
  v7 = v0[27];
  v8 = v0[25];
  if (v5)
  {
    v27 = v0[27];
    v28 = v0[30];
    v10 = v0[23];
    v9 = v0[24];
    v11 = v0[22];
    v12 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v29 = v26;
    *v12 = 136446466;
    (*(v10 + 104))(v9, *MEMORY[0x277D40CF8], v11);
    sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30], MEMORY[0x277D40D38]);
    v25 = v8;
    v13 = sub_25F17980C();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_25F0BECF0(v13, v15, &v29);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2114;
    v17 = v1;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v18;
    *v24 = v18;
    _os_log_impl(&dword_25F0B3000, v3, v4, "listener for %{public}s rejecting connection: %{public}@", v12, 0x16u);
    sub_25F0B7E94(v24, &qword_27FD473D0, &unk_25F17C540);
    MEMORY[0x25F8D6230](v24, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x25F8D6230](v26, -1, -1);
    MEMORY[0x25F8D6230](v12, -1, -1);

    v28(v27, v25);
  }

  else
  {

    v6(v7, v8);
  }

  v20 = v0[16];
  v19 = v0[17];
  v21 = v0[15];
  v0[11] = v0[13];
  sub_25F17812C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D28, &qword_25F17B180);
  sub_25F0B7D00(&qword_27FD46D30, &qword_27FD46D28, &qword_25F17B180, MEMORY[0x277D40D80]);
  sub_25F1780BC();

  (*(v20 + 8))(v19, v21);

  v22 = v0[1];

  return v22();
}

uint64_t sub_25F0DB3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *(v6 + 24) = a5;
  v9 = sub_25F176E8C();
  *(v6 + 32) = v9;
  *(v6 + 40) = *(v9 - 8);
  *(v6 + 48) = swift_task_alloc();
  v10 = sub_25F17888C();
  *(v6 + 56) = v10;
  *(v6 + 64) = *(v10 - 8);
  *(v6 + 72) = swift_task_alloc();
  *(v6 + 96) = a6;
  *(v6 + 16) = a4;
  v11 = swift_task_alloc();
  *(v6 + 80) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D28, &qword_25F17B180);
  v13 = sub_25F0B7D00(&qword_27FD46D38, &qword_27FD46D28, &qword_25F17B180, MEMORY[0x277D40D88]);
  *v11 = v6;
  v11[1] = sub_25F0DB5A0;

  return MEMORY[0x2821A09D8](v12, v13);
}

uint64_t sub_25F0DB5A0()
{

  return MEMORY[0x2822009F8](sub_25F0DB69C, 0, 0);
}

uint64_t sub_25F0DB69C(uint64_t a1)
{
  v25 = v1;
  sub_25F17884C();
  v2 = sub_25F17887C();
  v3 = sub_25F17951C();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[8];
  v5 = v1[9];
  v7 = v1[7];
  if (v4)
  {
    v23 = v1[9];
    v9 = v1[5];
    v8 = v1[6];
    v10 = v1[4];
    v11 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v24 = v22;
    *v11 = 136446210;
    v12 = *MEMORY[0x277D40D28];
    v13 = sub_25F176E7C();
    (*(*(v13 - 8) + 104))(v8, v12, v13);
    (*(v9 + 104))(v8, *MEMORY[0x277D40CE8], v10);
    sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30], MEMORY[0x277D40D38]);
    v14 = sub_25F17980C();
    v21 = v7;
    v16 = v15;
    (*(v9 + 8))(v8, v10);
    v17 = sub_25F0BECF0(v14, v16, &v24);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_25F0B3000, v2, v3, "listener for %{public}s purging connection after invalidation", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x25F8D6230](v22, -1, -1);
    MEMORY[0x25F8D6230](v11, -1, -1);

    (*(v6 + 8))(v23, v21);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
  }

  v1[11] = *(v1[3] + *(*v1[3] + 104));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473B8, &qword_25F17BDA0);
  sub_25F0B7D00(&qword_27FD473C0, &qword_27FD473B8, &qword_25F17BDA0, MEMORY[0x277D40408]);
  v19 = sub_25F1792CC();

  return MEMORY[0x2822009F8](sub_25F0E4214, v19, v18);
}

uint64_t sub_25F0DB97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *(v6 + 24) = a5;
  v9 = sub_25F176E8C();
  *(v6 + 32) = v9;
  *(v6 + 40) = *(v9 - 8);
  *(v6 + 48) = swift_task_alloc();
  v10 = sub_25F17888C();
  *(v6 + 56) = v10;
  *(v6 + 64) = *(v10 - 8);
  *(v6 + 72) = swift_task_alloc();
  *(v6 + 96) = a6;
  *(v6 + 16) = a4;
  v11 = swift_task_alloc();
  *(v6 + 80) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D28, &qword_25F17B180);
  v13 = sub_25F0B7D00(&qword_27FD46D38, &qword_27FD46D28, &qword_25F17B180, MEMORY[0x277D40D88]);
  *v11 = v6;
  v11[1] = sub_25F0DBB40;

  return MEMORY[0x2821A09D8](v12, v13);
}

uint64_t sub_25F0DBB40()
{

  return MEMORY[0x2822009F8](sub_25F0DBC3C, 0, 0);
}

uint64_t sub_25F0DBC3C(uint64_t a1)
{
  v23 = v1;
  sub_25F17884C();
  v2 = sub_25F17887C();
  v3 = sub_25F17951C();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[8];
  v5 = v1[9];
  v7 = v1[7];
  if (v4)
  {
    v21 = v1[9];
    v9 = v1[5];
    v8 = v1[6];
    v10 = v1[4];
    v11 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22 = v20;
    *v11 = 136446210;
    (*(v9 + 104))(v8, *MEMORY[0x277D40CF0], v10);
    sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30], MEMORY[0x277D40D38]);
    v12 = sub_25F17980C();
    v19 = v7;
    v14 = v13;
    (*(v9 + 8))(v8, v10);
    v15 = sub_25F0BECF0(v12, v14, &v22);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_25F0B3000, v2, v3, "listener for %{public}s purging connection after invalidation", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x25F8D6230](v20, -1, -1);
    MEMORY[0x25F8D6230](v11, -1, -1);

    (*(v6 + 8))(v21, v19);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
  }

  v1[11] = *(v1[3] + *(*v1[3] + 104));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473B8, &qword_25F17BDA0);
  sub_25F0B7D00(&qword_27FD473C0, &qword_27FD473B8, &qword_25F17BDA0, MEMORY[0x277D40408]);
  v17 = sub_25F1792CC();

  return MEMORY[0x2822009F8](sub_25F0E4214, v17, v16);
}

uint64_t sub_25F0DBED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = a5;
  v13 = sub_25F176E8C();
  *(v8 + 56) = v13;
  *(v8 + 64) = *(v13 - 8);
  *(v8 + 72) = swift_task_alloc();
  v14 = sub_25F17888C();
  *(v8 + 80) = v14;
  *(v8 + 88) = *(v14 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 16) = a6;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 40) = a4;
  v15 = swift_task_alloc();
  *(v8 + 104) = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D28, &qword_25F17B180);
  v17 = sub_25F0B7D00(&qword_27FD46D38, &qword_27FD46D28, &qword_25F17B180, MEMORY[0x277D40D88]);
  *v15 = v8;
  v15[1] = sub_25F0DC0A4;

  return MEMORY[0x2821A09D8](v16, v17);
}

uint64_t sub_25F0DC0A4()
{

  return MEMORY[0x2822009F8](sub_25F0DC1A0, 0, 0);
}

uint64_t sub_25F0DC1A0(uint64_t a1)
{
  v23 = v1;
  sub_25F17884C();
  v2 = sub_25F17887C();
  v3 = sub_25F17951C();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[11];
  v5 = v1[12];
  v7 = v1[10];
  if (v4)
  {
    v21 = v1[12];
    v9 = v1[8];
    v8 = v1[9];
    v10 = v1[7];
    v11 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22 = v20;
    *v11 = 136446210;
    (*(v9 + 104))(v8, *MEMORY[0x277D40D08], v10);
    sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30], MEMORY[0x277D40D38]);
    v12 = sub_25F17980C();
    v19 = v7;
    v14 = v13;
    (*(v9 + 8))(v8, v10);
    v15 = sub_25F0BECF0(v12, v14, &v22);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_25F0B3000, v2, v3, "listener for %{public}s purging connection after invalidation", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x25F8D6230](v20, -1, -1);
    MEMORY[0x25F8D6230](v11, -1, -1);

    (*(v6 + 8))(v21, v19);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
  }

  v1[14] = *(v1[6] + *(*v1[6] + 104));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47420, &qword_25F17BE50);
  sub_25F0B7D00(&qword_27FD47428, &qword_27FD47420, &qword_25F17BE50, MEMORY[0x277D40408]);
  v17 = sub_25F1792CC();

  return MEMORY[0x2822009F8](sub_25F0DC438, v17, v16);
}

uint64_t sub_25F0DC438()
{
  sub_25F177EDC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F0DC4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *(v6 + 24) = a5;
  v9 = sub_25F176E8C();
  *(v6 + 32) = v9;
  *(v6 + 40) = *(v9 - 8);
  *(v6 + 48) = swift_task_alloc();
  v10 = sub_25F17888C();
  *(v6 + 56) = v10;
  *(v6 + 64) = *(v10 - 8);
  *(v6 + 72) = swift_task_alloc();
  *(v6 + 96) = a6;
  *(v6 + 16) = a4;
  v11 = swift_task_alloc();
  *(v6 + 80) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D28, &qword_25F17B180);
  v13 = sub_25F0B7D00(&qword_27FD46D38, &qword_27FD46D28, &qword_25F17B180, MEMORY[0x277D40D88]);
  *v11 = v6;
  v11[1] = sub_25F0DC680;

  return MEMORY[0x2821A09D8](v12, v13);
}

uint64_t sub_25F0DC680()
{

  return MEMORY[0x2822009F8](sub_25F0DC77C, 0, 0);
}

uint64_t sub_25F0DC77C(uint64_t a1)
{
  v23 = v1;
  sub_25F17884C();
  v2 = sub_25F17887C();
  v3 = sub_25F17951C();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[8];
  v5 = v1[9];
  v7 = v1[7];
  if (v4)
  {
    v21 = v1[9];
    v9 = v1[5];
    v8 = v1[6];
    v10 = v1[4];
    v11 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22 = v20;
    *v11 = 136446210;
    (*(v9 + 104))(v8, *MEMORY[0x277D40D00], v10);
    sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30], MEMORY[0x277D40D38]);
    v12 = sub_25F17980C();
    v19 = v7;
    v14 = v13;
    (*(v9 + 8))(v8, v10);
    v15 = sub_25F0BECF0(v12, v14, &v22);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_25F0B3000, v2, v3, "listener for %{public}s purging connection after invalidation", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x25F8D6230](v20, -1, -1);
    MEMORY[0x25F8D6230](v11, -1, -1);

    (*(v6 + 8))(v21, v19);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
  }

  v1[11] = *(v1[3] + *(*v1[3] + 104));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473B8, &qword_25F17BDA0);
  sub_25F0B7D00(&qword_27FD473C0, &qword_27FD473B8, &qword_25F17BDA0, MEMORY[0x277D40408]);
  v17 = sub_25F1792CC();

  return MEMORY[0x2822009F8](sub_25F0E4214, v17, v16);
}

uint64_t sub_25F0DCA14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *(v6 + 24) = a5;
  v9 = sub_25F176E8C();
  *(v6 + 32) = v9;
  *(v6 + 40) = *(v9 - 8);
  *(v6 + 48) = swift_task_alloc();
  v10 = sub_25F17888C();
  *(v6 + 56) = v10;
  *(v6 + 64) = *(v10 - 8);
  *(v6 + 72) = swift_task_alloc();
  *(v6 + 96) = a6;
  *(v6 + 16) = a4;
  v11 = swift_task_alloc();
  *(v6 + 80) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D28, &qword_25F17B180);
  v13 = sub_25F0B7D00(&qword_27FD46D38, &qword_27FD46D28, &qword_25F17B180, MEMORY[0x277D40D88]);
  *v11 = v6;
  v11[1] = sub_25F0DCBD8;

  return MEMORY[0x2821A09D8](v12, v13);
}

uint64_t sub_25F0DCBD8()
{

  return MEMORY[0x2822009F8](sub_25F0DCCD4, 0, 0);
}

uint64_t sub_25F0DCCD4(uint64_t a1)
{
  v23 = v1;
  sub_25F17884C();
  v2 = sub_25F17887C();
  v3 = sub_25F17951C();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[8];
  v5 = v1[9];
  v7 = v1[7];
  if (v4)
  {
    v21 = v1[9];
    v9 = v1[5];
    v8 = v1[6];
    v10 = v1[4];
    v11 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22 = v20;
    *v11 = 136446210;
    (*(v9 + 104))(v8, *MEMORY[0x277D40CD0], v10);
    sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30], MEMORY[0x277D40D38]);
    v12 = sub_25F17980C();
    v19 = v7;
    v14 = v13;
    (*(v9 + 8))(v8, v10);
    v15 = sub_25F0BECF0(v12, v14, &v22);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_25F0B3000, v2, v3, "listener for %{public}s purging connection after invalidation", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x25F8D6230](v20, -1, -1);
    MEMORY[0x25F8D6230](v11, -1, -1);

    (*(v6 + 8))(v21, v19);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
  }

  v1[11] = *(v1[3] + *(*v1[3] + 104));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473B8, &qword_25F17BDA0);
  sub_25F0B7D00(&qword_27FD473C0, &qword_27FD473B8, &qword_25F17BDA0, MEMORY[0x277D40408]);
  v17 = sub_25F1792CC();

  return MEMORY[0x2822009F8](sub_25F0DCF6C, v17, v16);
}

uint64_t sub_25F0DCF6C()
{
  sub_25F177EDC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F0DCFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a5;
  v11 = sub_25F176E8C();
  v7[6] = v11;
  v7[7] = *(v11 - 8);
  v7[8] = swift_task_alloc();
  v12 = sub_25F17888C();
  v7[9] = v12;
  v7[10] = *(v12 - 8);
  v7[11] = swift_task_alloc();
  v7[2] = a6;
  v7[3] = a7;
  v7[4] = a4;
  v13 = swift_task_alloc();
  v7[12] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D28, &qword_25F17B180);
  v15 = sub_25F0B7D00(&qword_27FD46D38, &qword_27FD46D28, &qword_25F17B180, MEMORY[0x277D40D88]);
  *v13 = v7;
  v13[1] = sub_25F0DD1B8;

  return MEMORY[0x2821A09D8](v14, v15);
}

uint64_t sub_25F0DD1B8()
{

  return MEMORY[0x2822009F8](sub_25F0DD2B4, 0, 0);
}

uint64_t sub_25F0DD2B4(uint64_t a1)
{
  v23 = v1;
  sub_25F17884C();
  v2 = sub_25F17887C();
  v3 = sub_25F17951C();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[10];
  v5 = v1[11];
  v7 = v1[9];
  if (v4)
  {
    v21 = v1[11];
    v9 = v1[7];
    v8 = v1[8];
    v10 = v1[6];
    v11 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22 = v20;
    *v11 = 136446210;
    (*(v9 + 104))(v8, *MEMORY[0x277D40CF8], v10);
    sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30], MEMORY[0x277D40D38]);
    v12 = sub_25F17980C();
    v19 = v7;
    v14 = v13;
    (*(v9 + 8))(v8, v10);
    v15 = sub_25F0BECF0(v12, v14, &v22);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_25F0B3000, v2, v3, "listener for %{public}s purging connection after invalidation", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x25F8D6230](v20, -1, -1);
    MEMORY[0x25F8D6230](v11, -1, -1);

    (*(v6 + 8))(v21, v19);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
  }

  v1[13] = *(v1[5] + *(*v1[5] + 104));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47490, &qword_25F17BF28);
  sub_25F0B7D00(&qword_27FD47498, &qword_27FD47490, &qword_25F17BF28, MEMORY[0x277D40408]);
  v17 = sub_25F1792CC();

  return MEMORY[0x2822009F8](sub_25F0DD54C, v17, v16);
}

uint64_t sub_25F0DD54C()
{
  sub_25F177EDC();

  v1 = *(v0 + 8);

  return v1();
}

id sub_25F0DD5D0(void *a1, uint64_t a2)
{
  v32 = a2;
  v30 = a1;
  v2 = sub_25F176E8C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v31 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - v6;
  v8 = *MEMORY[0x277D40D28];
  v9 = sub_25F176E7C();
  v10 = *(v9 - 8);
  v29 = *(v10 + 104);
  v34 = v10 + 104;
  v27 = v9;
  v29(v7, v8, v9);
  v11 = *MEMORY[0x277D40CE8];
  v28 = *(v3 + 104);
  v26 = v11;
  v28(v7, v11, v2);
  sub_25F176E2C();
  v12 = *(v3 + 8);
  v25 = v3 + 8;
  v33 = v12;
  v12(v7, v2);
  v13 = sub_25F17905C();

  v14 = v30;
  [v30 setDomain_];

  v15 = v9;
  v16 = v29;
  v29(v7, v8, v15);
  v17 = v28;
  v28(v7, v11, v2);
  sub_25F176E3C();
  v33(v7, v2);
  v18 = sub_25F17905C();

  [v14 setService_];

  v19 = v31;
  v16(v31, v8, v27);
  v17(v19, v26, v2);
  v20 = v19;
  sub_25F176E4C();
  v22 = v21;
  v33(v20, v2);
  if (v22)
  {
    v23 = sub_25F17905C();

    [v14 setInstance_];
  }

  return [v14 setDelegate_];
}

id sub_25F0DD8E4(void *a1, uint64_t a2, unsigned int *a3)
{
  v23 = a1;
  v24 = a2;
  v4 = sub_25F176E8C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  v11 = *a3;
  v12 = *(v5 + 104);
  v22 = v11;
  v12(&v21 - v9, v11, v4);
  sub_25F176E2C();
  v21 = *(v5 + 8);
  v21(v10, v4);
  v13 = sub_25F17905C();

  v14 = v23;
  [v23 setDomain_];

  v12(v10, v11, v4);
  sub_25F176E3C();
  v15 = v21;
  v21(v10, v4);
  v16 = sub_25F17905C();

  [v14 setService_];

  v12(v8, v22, v4);
  sub_25F176E4C();
  v18 = v17;
  v15(v8, v4);
  if (v18)
  {
    v19 = sub_25F17905C();

    [v14 setInstance_];
  }

  return [v14 setDelegate_];
}

uint64_t sub_25F0DDB3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47530, &unk_25F17F570);
  v3[5] = v6;
  v3[6] = *(v6 - 8);
  v7 = swift_task_alloc();
  v9 = *(a3 + 32);
  v8 = *(a3 + 40);
  v3[7] = v7;
  v3[8] = v9;
  v3[9] = v8;

  v10 = swift_task_alloc();
  v3[10] = v10;
  *v10 = v3;
  v10[1] = sub_25F0DDC84;

  return sub_25F0EFE30(a1, v9, v8);
}

uint64_t sub_25F0DDC84(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v4 = sub_25F0E4230;
  }

  else
  {
    v4 = sub_25F0DDD98;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25F0DDD98()
{
  sub_25F176E1C();
  v1 = sub_25F176FEC();
  v2 = sub_25F0E266C(&qword_27FD47538, MEMORY[0x277D40DF8], MEMORY[0x277D40DF0]);
  sub_25F176EFC();
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v3[1] = sub_25F0DDEB0;
  v4 = *(v0 + 56);

  return MEMORY[0x2821A1908](v4, v1, v1, v2);
}

uint64_t sub_25F0DDEB0()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_25F0E428C;
  }

  else
  {

    v2 = sub_25F0DDFE0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F0DDFE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = xmmword_25F17BBE0;
  sub_25F0E26B4(a1, a2, a3);
  v4 = sub_25F17700C();
  *(v3 + 120) = v4;
  v5 = swift_task_alloc();
  *(v3 + 128) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD46C38, qword_25F17C0E0);
  *v5 = v3;
  v5[1] = sub_25F0DE0E4;
  v7 = MEMORY[0x277D84950];
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v6, v4, v8, v6, v7);
}

uint64_t sub_25F0DE0E4()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_25F0E4274;
  }

  else
  {
    v2 = sub_25F0E422C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F0DE214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47530, &unk_25F17F570);
  v3[5] = v6;
  v3[6] = *(v6 - 8);
  v7 = swift_task_alloc();
  v9 = *(a3 + 32);
  v8 = *(a3 + 40);
  v3[7] = v7;
  v3[8] = v9;
  v3[9] = v8;

  v10 = swift_task_alloc();
  v3[10] = v10;
  *v10 = v3;
  v10[1] = sub_25F0DE35C;

  return sub_25F0EFE30(a1, v9, v8);
}

uint64_t sub_25F0DE35C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v4 = sub_25F0DE6B8;
  }

  else
  {
    v4 = sub_25F0DE470;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25F0DE470()
{
  sub_25F176E1C();
  v1 = sub_25F176FEC();
  v2 = sub_25F0E266C(&qword_27FD47538, MEMORY[0x277D40DF8], MEMORY[0x277D40DF0]);
  sub_25F176EFC();
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v3[1] = sub_25F0DE588;
  v4 = *(v0 + 56);

  return MEMORY[0x2821A1908](v4, v1, v1, v2);
}

uint64_t sub_25F0DE588()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_25F0DE960;
  }

  else
  {

    v2 = sub_25F0DE72C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F0DE6B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F0DE72C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = xmmword_25F17BBF0;
  sub_25F0E26B4(a1, a2, a3);
  v4 = sub_25F17700C();
  *(v3 + 120) = v4;
  v5 = swift_task_alloc();
  *(v3 + 128) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD46C38, qword_25F17C0E0);
  *v5 = v3;
  v5[1] = sub_25F0DE830;
  v7 = MEMORY[0x277D84950];
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v6, v4, v8, v6, v7);
}

uint64_t sub_25F0DE830()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_25F0DEA60;
  }

  else
  {
    v2 = sub_25F0DE9E0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F0DE960()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F0DE9E0()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_25F0DEA60()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_25F0DEADC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25F0DEBD4;

  return v6(a1);
}

uint64_t sub_25F0DEBD4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25F0DECCC(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_25F0C10CC;

  return sub_25F0E194C(v5, a3);
}

uint64_t sub_25F0DED68(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_25F0C10CC;

  return sub_25F0E1FC4(v5, a3);
}

uint64_t sub_25F0DEE04(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *(a1 + 1);
  v7 = *(a1 + 2);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25F0C10CC;

  return sub_25F0E2950(v5, v6, v7, a3);
}

uint64_t sub_25F0DEEB4(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_25F0C10CC;

  return sub_25F0E3154(v5, a3);
}

uint64_t sub_25F0DEF50(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_25F0C10CC;

  return sub_25F0E393C(v5, a3);
}

uint64_t sub_25F0DEFEC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25F0BF3E4;

  return sub_25F0D5C44(v6, v7, a2, a3);
}

uint64_t sub_25F0DF09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v12 = *a6;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_25F0C10CC;

  return sub_25F0DB3DC(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_25F0DF16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v12 = *a6;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_25F0C10CC;

  return sub_25F0DB97C(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_25F0DF23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a6;
  v13 = *(a6 + 8);
  v14 = *(a6 + 16);
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_25F0C10CC;

  return sub_25F0DBED4(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_25F0DF320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v12 = *a6;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_25F0C10CC;

  return sub_25F0DC4BC(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_25F0DF3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v12 = *a6;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_25F0C10CC;

  return sub_25F0DCA14(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_25F0DF4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v12 = *a6;
  v13 = a6[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_25F0BF3E4;

  return sub_25F0DCFF0(a1, a2, a3, a4, a5, v12, v13);
}

uint64_t sub_25F0DF59C(uint64_t a1, unsigned int *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25F0BF3E4;

  return sub_25F1119A4(a1, a2);
}

uint64_t type metadata accessor for ServerFarm.HostMessages(uint64_t a1)
{
  result = qword_27FD47368;
  if (!qword_27FD47368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25F0DF694()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47870, &unk_25F17C530);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_25F0DF78C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47870, &unk_25F17C530) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_25F0C10CC;

  return sub_25F0E7390(a1, v7, v8, v1 + v6, v10, v11, v12);
}

uint64_t sub_25F0DF8D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47870, &unk_25F17C530);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_25F0DF9C4(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47870, &unk_25F17C530) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_25F0BF3E4;

  return sub_25F102E68(a1, v7, v8, v1 + v6, v10, v11);
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_25F0DFB28(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_25F0DFB70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F0DFBF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47358, &unk_25F182BB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47360, &qword_25F17BC68);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_25F0DFD10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47358, &unk_25F182BB0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47360, &qword_25F17BC68);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_25F0DFE24(uint64_t a1)
{
  sub_25F0DFED8(319, &qword_27FD47378, &qword_27FD47380, &unk_25F1830C0);
  if (v1 <= 0x3F)
  {
    sub_25F0DFED8(319, &qword_27FD47388, &qword_27FD47390, &qword_25F17BD68);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25F0DFED8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_25F1793FC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_25F0DFF2C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25F0C10CC;

  return sub_25F0D6FB8(a1, v1);
}

uint64_t sub_25F0DFFC4(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_25F176E8C() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_25F0C10CC;

  return sub_25F0EABFC(a1, a2, v2 + v7, v9, v10);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25F0E0180(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25F0C10CC;

  return sub_25F0DF16C(a1, v4, v5, v6, v7, (v1 + 48));
}

uint64_t sub_25F0E0258(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25F0C10CC;

  return sub_25F0DEADC(a1, v4);
}

uint64_t sub_25F0E0310(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25F0C10CC;

  return sub_25F0D6314(a1, v1);
}

uint64_t sub_25F0E03B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25F0C10CC;

  return sub_25F0DF09C(a1, v4, v5, v6, v7, (v1 + 48));
}

uint64_t sub_25F0E0488(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25F0C10CC;

  return sub_25F0D7B84(a1, v1);
}

uint64_t sub_25F0E0544()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_25F0E0594(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25F0C10CC;

  return sub_25F0DF23C(a1, v4, v5, v6, v7, (v1 + 6));
}

uint64_t sub_25F0E066C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25F0C10CC;

  return sub_25F0D8C18(a1, v1);
}

uint64_t sub_25F0E0728(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25F0C10CC;

  return sub_25F0DF320(a1, v4, v5, v6, v7, (v1 + 48));
}

uint64_t sub_25F0E0800(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25F0C10CC;

  return sub_25F0D97E4(a1, v1);
}

uint64_t objectdestroy_22Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 52, 7);
}

uint64_t sub_25F0E0918(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25F0C10CC;

  return sub_25F0DF3F0(a1, v4, v5, v6, v7, (v1 + 48));
}

uint64_t sub_25F0E09F0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25F0C10CC;

  return sub_25F0DA3B0(a1, v1);
}

uint64_t objectdestroy_15Tm()
{
  v1 = sub_25F176E8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_25F0E0B50()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_25F0E0BA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25F0C10CC;

  return sub_25F0DF4C0(a1, v4, v5, v6, v7, v1 + 6);
}

uint64_t sub_25F0E0C78()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47870, &unk_25F17C530);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD474A8, &qword_25F17BF50) - 8);
  v7 = *(*v6 + 80);
  v8 = (v5 + v7 + 8) & ~v7;
  v9 = *(*v6 + 64);
  v10 = v3 | v7;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47360, &qword_25F17BC68);
  (*(*(v11 - 8) + 8))(v0 + v8, v11);
  v12 = v6[14];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD474B0, &qword_25F17BF60);
  (*(*(v13 - 8) + 8))(v0 + v8 + v12, v13);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_25F0E0E68(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47870, &unk_25F17C530) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD474A8, &qword_25F17BF50) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_25F0C10CC;

  return sub_25F0D19E0(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t sub_25F0E1000(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD474B0, &qword_25F17BF60) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_25F177E8C() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + v7);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_25F0C10CC;

  return sub_25F0D3178(a1, v10, v11, v12, v1 + v6, v13, v1 + v9);
}

uint64_t sub_25F0E1180()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25F0E11B8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47870, &unk_25F17C530);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD474F8, &qword_25F17BFB0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v5 + v7 + 8) & ~v7;
  v9 = *(*v6 + 64);
  v10 = v3 | v7;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47358, &unk_25F182BB0);
  (*(*(v11 - 8) + 8))(v0 + v8, v11);
  v12 = v6[14];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47500, &qword_25F17BFC0);
  (*(*(v13 - 8) + 8))(v0 + v8 + v12, v13);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_25F0E13A8(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47870, &unk_25F17C530) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD474F8, &qword_25F17BFB0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_25F0C10CC;

  return sub_25F0D25AC(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t objectdestroy_138Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = sub_25F177E8C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v7 + v10 + 8) & ~v10;
  v12 = *(v9 + 64);
  v13 = v5 | v10;
  swift_unknownObjectRelease();

  (*(v4 + 8))(v2 + v6, v3);

  (*(v9 + 8))(v2 + v11, v8);

  return MEMORY[0x2821FE8E8](v2, v11 + v12, v13 | 7);
}

uint64_t sub_25F0E16A8(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47500, &qword_25F17BFC0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_25F177E8C() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + v7);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_25F0C10CC;

  return sub_25F0D38A4(a1, v10, v11, v12, v1 + v6, v13, v1 + v9);
}

uint64_t sub_25F0E184C(unsigned int *a1, uint64_t a2)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47398, &qword_25F17BD70) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25F0C10CC;

  return sub_25F0DED68(a1, a2, v2 + v7);
}

uint64_t sub_25F0E194C(int a1, uint64_t a2)
{
  *(v2 + 544) = a2;
  *(v2 + 608) = a1;
  *(v2 + 552) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473D8, &qword_25F17BDD8);
  *(v2 + 560) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F0E19F0, 0, 0);
}

uint64_t sub_25F0E19F0()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 552);
  sub_25F0B7E2C(*(v0 + 544), v1, &qword_27FD473D8, &qword_25F17BDD8);
  v3 = *v1;
  *(v0 + 568) = v3;
  *(v0 + 612) = *(v2 + 48);
  v4 = swift_task_alloc();
  *(v0 + 576) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473F0, &qword_25F17BE00);
  *v4 = v0;
  v4[1] = sub_25F0E1AD8;

  return MEMORY[0x282200460](v0 + 152, v3, v5);
}

uint64_t sub_25F0E1AD8()
{

  return MEMORY[0x2822009F8](sub_25F0E1BF0, 0, 0);
}

uint64_t sub_25F0E1BF0()
{
  v1 = *(v0 + 612);
  v2 = *(v0 + 560);
  v3 = *(v0 + 232);
  v4 = *(v0 + 248);
  *(v0 + 144) = *(v0 + 280);
  v5 = *(v0 + 168);
  v6 = *(v0 + 200);
  *(v0 + 48) = *(v0 + 184);
  *(v0 + 64) = v6;
  *(v0 + 80) = *(v0 + 216);
  *(v0 + 96) = v3;
  *(v0 + 16) = *(v0 + 152);
  *(v0 + 32) = v5;
  v7 = *(v0 + 264);
  *(v0 + 112) = v4;
  *(v0 + 128) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473E0, &qword_25F17BDF8);
  (*(*(v8 - 8) + 8))(v2 + v1, v8);
  v9 = [*(v0 + 16) endpoint];
  *(v0 + 584) = v9;
  v10 = *(v0 + 104);
  *(v0 + 352) = *(v0 + 88);
  *(v0 + 368) = v10;
  v11 = *(v0 + 136);
  *(v0 + 384) = *(v0 + 120);
  *(v0 + 400) = v11;
  v12 = *(v0 + 40);
  *(v0 + 288) = *(v0 + 24);
  *(v0 + 304) = v12;
  v13 = *(v0 + 72);
  *(v0 + 320) = *(v0 + 56);
  *(v0 + 336) = v13;
  sub_25F0E0148(v0 + 24, v0 + 416);
  v14 = swift_task_alloc();
  *(v0 + 592) = v14;
  *v14 = v0;
  v14[1] = sub_25F0E1D88;
  v15 = *(v0 + 608);

  return sub_25F0DDB3C(v15, v9, v0 + 288);
}

uint64_t sub_25F0E1D88()
{
  v2 = *v1;
  v3 = *(*v1 + 584);
  *(v2 + 600) = v0;

  sub_25F0E263C(v2 + 24);
  if (v0)
  {
    v4 = sub_25F0E1F44;
  }

  else
  {
    v4 = sub_25F0E1EC4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25F0E1EC4()
{
  sub_25F0B7E94(v0 + 16, &qword_27FD473F0, &qword_25F17BE00);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F0E1F44()
{
  sub_25F0B7E94(v0 + 16, &qword_27FD473F0, &qword_25F17BE00);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F0E1FC4(int a1, uint64_t a2)
{
  *(v2 + 544) = a2;
  *(v2 + 608) = a1;
  *(v2 + 552) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47398, &qword_25F17BD70);
  *(v2 + 560) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F0E2068, 0, 0);
}

uint64_t sub_25F0E2068()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 552);
  sub_25F0B7E2C(*(v0 + 544), v1, &qword_27FD47398, &qword_25F17BD70);
  v3 = *v1;
  *(v0 + 568) = v3;
  *(v0 + 612) = *(v2 + 48);
  v4 = swift_task_alloc();
  *(v0 + 576) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473B0, &qword_25F17BD98);
  *v4 = v0;
  v4[1] = sub_25F0E2150;

  return MEMORY[0x282200460](v0 + 152, v3, v5);
}

uint64_t sub_25F0E2150()
{

  return MEMORY[0x2822009F8](sub_25F0E2268, 0, 0);
}

uint64_t sub_25F0E2268()
{
  v1 = *(v0 + 612);
  v2 = *(v0 + 560);
  v3 = *(v0 + 232);
  v4 = *(v0 + 248);
  *(v0 + 144) = *(v0 + 280);
  v5 = *(v0 + 168);
  v6 = *(v0 + 200);
  *(v0 + 48) = *(v0 + 184);
  *(v0 + 64) = v6;
  *(v0 + 80) = *(v0 + 216);
  *(v0 + 96) = v3;
  *(v0 + 16) = *(v0 + 152);
  *(v0 + 32) = v5;
  v7 = *(v0 + 264);
  *(v0 + 112) = v4;
  *(v0 + 128) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473A0, &qword_25F17BD90);
  (*(*(v8 - 8) + 8))(v2 + v1, v8);
  v9 = [*(v0 + 16) endpoint];
  *(v0 + 584) = v9;
  v10 = *(v0 + 104);
  *(v0 + 352) = *(v0 + 88);
  *(v0 + 368) = v10;
  v11 = *(v0 + 136);
  *(v0 + 384) = *(v0 + 120);
  *(v0 + 400) = v11;
  v12 = *(v0 + 40);
  *(v0 + 288) = *(v0 + 24);
  *(v0 + 304) = v12;
  v13 = *(v0 + 72);
  *(v0 + 320) = *(v0 + 56);
  *(v0 + 336) = v13;
  sub_25F0E0148(v0 + 24, v0 + 416);
  v14 = swift_task_alloc();
  *(v0 + 592) = v14;
  *v14 = v0;
  v14[1] = sub_25F0E2400;
  v15 = *(v0 + 608);

  return sub_25F0DE214(v15, v9, v0 + 288);
}

uint64_t sub_25F0E2400()
{
  v2 = *v1;
  v3 = *(*v1 + 584);
  *(v2 + 600) = v0;

  sub_25F0E263C(v2 + 24);
  if (v0)
  {
    v4 = sub_25F0E25BC;
  }

  else
  {
    v4 = sub_25F0E253C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25F0E253C()
{
  sub_25F0B7E94(v0 + 16, &qword_27FD473B0, &qword_25F17BD98);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F0E25BC()
{
  sub_25F0B7E94(v0 + 16, &qword_27FD473B0, &qword_25F17BD98);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F0E266C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_25F0E26B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47540;
  if (!qword_27FD47540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47540);
  }

  return result;
}

uint64_t sub_25F0E272C(unsigned int *a1, uint64_t a2)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473D8, &qword_25F17BDD8) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25F0C10CC;

  return sub_25F0DECCC(a1, a2, v2 + v7);
}

uint64_t sub_25F0E2850(unsigned int *a1, uint64_t a2)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473F8, &qword_25F17BE20) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25F0C10CC;

  return sub_25F0DEE04(a1, a2, v2 + v7);
}

uint64_t sub_25F0E2950(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 824) = a4;
  *(v4 + 832) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473F8, &qword_25F17BE20);
  *(v4 + 840) = swift_task_alloc();
  *(v4 + 800) = a1;
  *(v4 + 808) = a2;
  *(v4 + 816) = a3;

  return MEMORY[0x2822009F8](sub_25F0E2A10, 0, 0);
}

uint64_t sub_25F0E2A10()
{
  v1 = *(v0 + 840);
  v2 = *(v0 + 832);
  sub_25F0B7E2C(*(v0 + 824), v1, &qword_27FD473F8, &qword_25F17BE20);
  v3 = *v1;
  *(v0 + 848) = v3;
  *(v0 + 888) = *(v2 + 48);
  v4 = swift_task_alloc();
  *(v0 + 856) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47410, &qword_25F17BE48);
  *v4 = v0;
  v4[1] = sub_25F0E2AF8;

  return MEMORY[0x282200460](v0 + 152, v3, v5);
}

uint64_t sub_25F0E2AF8()
{

  return MEMORY[0x2822009F8](sub_25F0E2C10, 0, 0);
}

uint64_t sub_25F0E2C10()
{
  v1 = *(v0 + 888);
  v2 = *(v0 + 840);
  v3 = *(v0 + 232);
  v4 = *(v0 + 248);
  *(v0 + 144) = *(v0 + 280);
  v5 = *(v0 + 168);
  v6 = *(v0 + 200);
  *(v0 + 48) = *(v0 + 184);
  *(v0 + 64) = v6;
  *(v0 + 80) = *(v0 + 216);
  *(v0 + 96) = v3;
  *(v0 + 16) = *(v0 + 152);
  *(v0 + 32) = v5;
  v7 = *(v0 + 264);
  *(v0 + 112) = v4;
  *(v0 + 128) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47400, &qword_25F17BE40);
  (*(*(v8 - 8) + 8))(v2 + v1, v8);
  v9 = [*(v0 + 16) endpoint];
  *(v0 + 864) = v9;
  v10 = *(v0 + 104);
  *(v0 + 352) = *(v0 + 88);
  *(v0 + 368) = v10;
  v11 = *(v0 + 136);
  *(v0 + 384) = *(v0 + 120);
  *(v0 + 400) = v11;
  v12 = *(v0 + 40);
  *(v0 + 288) = *(v0 + 24);
  *(v0 + 304) = v12;
  v13 = *(v0 + 72);
  *(v0 + 320) = *(v0 + 56);
  *(v0 + 336) = v13;
  sub_25F0E0148(v0 + 24, v0 + 416);
  v14 = swift_task_alloc();
  *(v0 + 872) = v14;
  *v14 = v0;
  v14[1] = sub_25F0E2DA8;

  return sub_25F110508(v0 + 800, v9, v0 + 288);
}

uint64_t sub_25F0E2DA8()
{
  v2 = *v1;
  *(v2 + 880) = v0;

  v3 = *(v2 + 288);
  v4 = *(v2 + 304);
  v5 = *(v2 + 336);
  if (v0)
  {
    *(v2 + 576) = *(v2 + 320);
    *(v2 + 592) = v5;
    *(v2 + 544) = v3;
    *(v2 + 560) = v4;
    v6 = *(v2 + 352);
    v7 = *(v2 + 368);
    v8 = *(v2 + 400);
    *(v2 + 640) = *(v2 + 384);
    *(v2 + 656) = v8;
    *(v2 + 608) = v6;
    *(v2 + 624) = v7;
    sub_25F0E263C(v2 + 544);
    v9 = sub_25F0E2FB0;
  }

  else
  {
    *(v2 + 704) = *(v2 + 320);
    *(v2 + 720) = v5;
    *(v2 + 672) = v3;
    *(v2 + 688) = v4;
    v10 = *(v2 + 352);
    v11 = *(v2 + 368);
    v12 = *(v2 + 400);
    *(v2 + 768) = *(v2 + 384);
    *(v2 + 784) = v12;
    *(v2 + 736) = v10;
    *(v2 + 752) = v11;
    sub_25F0E263C(v2 + 672);
    v9 = sub_25F0E2F30;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_25F0E2F30()
{
  sub_25F0B7E94(v0 + 16, &qword_27FD47410, &qword_25F17BE48);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F0E2FB0()
{
  sub_25F0B7E94(v0 + 16, &qword_27FD47410, &qword_25F17BE48);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F0E3054(unsigned int *a1, uint64_t a2)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47430, &qword_25F17BE70) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25F0C10CC;

  return sub_25F0DEEB4(a1, a2, v2 + v7);
}

uint64_t sub_25F0E3154(int a1, uint64_t a2)
{
  *(v2 + 800) = a2;
  *(v2 + 864) = a1;
  *(v2 + 808) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47430, &qword_25F17BE70);
  *(v2 + 816) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F0E31F8, 0, 0);
}

uint64_t sub_25F0E31F8()
{
  v1 = *(v0 + 816);
  v2 = *(v0 + 808);
  sub_25F0B7E2C(*(v0 + 800), v1, &qword_27FD47430, &qword_25F17BE70);
  v3 = *v1;
  *(v0 + 824) = v3;
  *(v0 + 868) = *(v2 + 48);
  v4 = swift_task_alloc();
  *(v0 + 832) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47448, &unk_25F17F3E0);
  *v4 = v0;
  v4[1] = sub_25F0E32E0;

  return MEMORY[0x282200460](v0 + 152, v3, v5);
}

uint64_t sub_25F0E32E0()
{

  return MEMORY[0x2822009F8](sub_25F0E33F8, 0, 0);
}

uint64_t sub_25F0E33F8()
{
  v1 = *(v0 + 868);
  v2 = *(v0 + 816);
  v3 = *(v0 + 232);
  v4 = *(v0 + 248);
  *(v0 + 144) = *(v0 + 280);
  v5 = *(v0 + 168);
  v6 = *(v0 + 200);
  *(v0 + 48) = *(v0 + 184);
  *(v0 + 64) = v6;
  *(v0 + 80) = *(v0 + 216);
  *(v0 + 96) = v3;
  *(v0 + 16) = *(v0 + 152);
  *(v0 + 32) = v5;
  v7 = *(v0 + 264);
  *(v0 + 112) = v4;
  *(v0 + 128) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47438, &qword_25F17BE90);
  (*(*(v8 - 8) + 8))(v2 + v1, v8);
  v9 = [*(v0 + 16) endpoint];
  *(v0 + 840) = v9;
  v10 = *(v0 + 104);
  *(v0 + 352) = *(v0 + 88);
  *(v0 + 368) = v10;
  v11 = *(v0 + 136);
  *(v0 + 384) = *(v0 + 120);
  *(v0 + 400) = v11;
  v12 = *(v0 + 40);
  *(v0 + 288) = *(v0 + 24);
  *(v0 + 304) = v12;
  v13 = *(v0 + 72);
  *(v0 + 320) = *(v0 + 56);
  *(v0 + 336) = v13;
  sub_25F0E0148(v0 + 24, v0 + 416);
  v14 = swift_task_alloc();
  *(v0 + 848) = v14;
  *v14 = v0;
  v14[1] = sub_25F0E3590;
  v15 = *(v0 + 864);

  return sub_25F110DB4(v15, v9, v0 + 288);
}

uint64_t sub_25F0E3590()
{
  v2 = *v1;
  *(v2 + 856) = v0;

  v3 = *(v2 + 288);
  v4 = *(v2 + 304);
  v5 = *(v2 + 336);
  if (v0)
  {
    *(v2 + 576) = *(v2 + 320);
    *(v2 + 592) = v5;
    *(v2 + 544) = v3;
    *(v2 + 560) = v4;
    v6 = *(v2 + 352);
    v7 = *(v2 + 368);
    v8 = *(v2 + 400);
    *(v2 + 640) = *(v2 + 384);
    *(v2 + 656) = v8;
    *(v2 + 608) = v6;
    *(v2 + 624) = v7;
    sub_25F0E263C(v2 + 544);
    v9 = sub_25F0E3798;
  }

  else
  {
    *(v2 + 704) = *(v2 + 320);
    *(v2 + 720) = v5;
    *(v2 + 672) = v3;
    *(v2 + 688) = v4;
    v10 = *(v2 + 352);
    v11 = *(v2 + 368);
    v12 = *(v2 + 400);
    *(v2 + 768) = *(v2 + 384);
    *(v2 + 784) = v12;
    *(v2 + 736) = v10;
    *(v2 + 752) = v11;
    sub_25F0E263C(v2 + 672);
    v9 = sub_25F0E3718;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_25F0E3718()
{
  sub_25F0B7E94(v0 + 16, &qword_27FD47448, &unk_25F17F3E0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F0E3798()
{
  sub_25F0B7E94(v0 + 16, &qword_27FD47448, &unk_25F17F3E0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F0E383C(unsigned int *a1, uint64_t a2)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47450, &qword_25F17BEB0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25F0C10CC;

  return sub_25F0DEF50(a1, a2, v2 + v7);
}

uint64_t sub_25F0E393C(int a1, uint64_t a2)
{
  *(v2 + 800) = a2;
  *(v2 + 864) = a1;
  *(v2 + 808) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47450, &qword_25F17BEB0);
  *(v2 + 816) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F0E39E0, 0, 0);
}

uint64_t sub_25F0E39E0()
{
  v1 = *(v0 + 816);
  v2 = *(v0 + 808);
  sub_25F0B7E2C(*(v0 + 800), v1, &qword_27FD47450, &qword_25F17BEB0);
  v3 = *v1;
  *(v0 + 824) = v3;
  *(v0 + 868) = *(v2 + 48);
  v4 = swift_task_alloc();
  *(v0 + 832) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47468, &qword_25F17BED8);
  *v4 = v0;
  v4[1] = sub_25F0E3AC8;

  return MEMORY[0x282200460](v0 + 152, v3, v5);
}

uint64_t sub_25F0E3AC8()
{

  return MEMORY[0x2822009F8](sub_25F0E3BE0, 0, 0);
}

uint64_t sub_25F0E3BE0()
{
  v1 = *(v0 + 868);
  v2 = *(v0 + 816);
  v3 = *(v0 + 232);
  v4 = *(v0 + 248);
  *(v0 + 144) = *(v0 + 280);
  v5 = *(v0 + 168);
  v6 = *(v0 + 200);
  *(v0 + 48) = *(v0 + 184);
  *(v0 + 64) = v6;
  *(v0 + 80) = *(v0 + 216);
  *(v0 + 96) = v3;
  *(v0 + 16) = *(v0 + 152);
  *(v0 + 32) = v5;
  v7 = *(v0 + 264);
  *(v0 + 112) = v4;
  *(v0 + 128) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47458, &qword_25F17BED0);
  (*(*(v8 - 8) + 8))(v2 + v1, v8);
  *(v0 + 840) = [*(v0 + 16) endpoint];
  v9 = *(v0 + 104);
  *(v0 + 352) = *(v0 + 88);
  *(v0 + 368) = v9;
  v10 = *(v0 + 136);
  *(v0 + 384) = *(v0 + 120);
  *(v0 + 400) = v10;
  v11 = *(v0 + 40);
  *(v0 + 288) = *(v0 + 24);
  *(v0 + 304) = v11;
  v12 = *(v0 + 72);
  *(v0 + 320) = *(v0 + 56);
  *(v0 + 336) = v12;
  sub_25F0E0148(v0 + 24, v0 + 416);
  v13 = swift_task_alloc();
  *(v0 + 848) = v13;
  *v13 = v0;
  v13[1] = sub_25F0E3D70;
  v14 = *(v0 + 864);

  return (sub_25F0F05A4)(v14, v0 + 288);
}

uint64_t sub_25F0E3D70()
{
  v2 = *v1;
  *(v2 + 856) = v0;

  v3 = *(v2 + 288);
  v4 = *(v2 + 304);
  v5 = *(v2 + 336);
  if (v0)
  {
    *(v2 + 576) = *(v2 + 320);
    *(v2 + 592) = v5;
    *(v2 + 544) = v3;
    *(v2 + 560) = v4;
    v6 = *(v2 + 352);
    v7 = *(v2 + 368);
    v8 = *(v2 + 400);
    *(v2 + 640) = *(v2 + 384);
    *(v2 + 656) = v8;
    *(v2 + 608) = v6;
    *(v2 + 624) = v7;
    sub_25F0E263C(v2 + 544);
    v9 = sub_25F0E3F78;
  }

  else
  {
    *(v2 + 704) = *(v2 + 320);
    *(v2 + 720) = v5;
    *(v2 + 672) = v3;
    *(v2 + 688) = v4;
    v10 = *(v2 + 352);
    v11 = *(v2 + 368);
    v12 = *(v2 + 400);
    *(v2 + 768) = *(v2 + 384);
    *(v2 + 784) = v12;
    *(v2 + 736) = v10;
    *(v2 + 752) = v11;
    sub_25F0E263C(v2 + 672);
    v9 = sub_25F0E3EF8;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_25F0E3EF8()
{
  sub_25F0B7E94(v0 + 16, &qword_27FD47468, &qword_25F17BED8);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F0E3F78()
{
  sub_25F0B7E94(v0 + 16, &qword_27FD47468, &qword_25F17BED8);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t objectdestroy_163Tm(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = (__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v8 = *(*v7 + 80);
  v9 = (v8 + 16) & ~v8;
  v10 = *(*v7 + 64);

  v11 = v7[14];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v12 - 8) + 8))(v4 + v9 + v11, v12);

  return MEMORY[0x2821FE8E8](v4, v9 + v10, v8 | 7);
}

uint64_t sub_25F0E4114(uint64_t *a1, uint64_t a2)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47470, &qword_25F17BEF8) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25F0C10CC;

  return sub_25F0DEFEC(a1, a2, v2 + v7);
}

uint64_t Task<>.enhancingPreviewAgentConnectionError(for:_:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_25F177D5C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v18 - v12;
  v14 = sub_25F17932C();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v9 + 16))(&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v8);
  v15 = (*(v9 + 80) + 52) & ~*(v9 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = a4;
  *(v16 + 40) = a3;
  *(v16 + 48) = a1;
  (*(v9 + 32))(v16 + v15, &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);

  return sub_25F0E4488(0, 0, v13, &unk_25F17C0D0, v16, a4);
}

uint64_t sub_25F0E4488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24[-1] - v11;
  v24[5] = a4;
  v24[6] = a5;
  sub_25F0E5080(a3, &v24[-1] - v11);
  v13 = sub_25F17932C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_25F0E50F0(v12);
  }

  else
  {
    sub_25F17931C();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_25F1792CC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_25F1790DC();
      sub_25F0E5368(v20 + 32, v24);

      v21 = v24[0];
      sub_25F0E50F0(a3);

      return v21;
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

  sub_25F0E50F0(a3);
  if (v19 | v17)
  {
    v24[1] = 0;
    v24[2] = 0;
    v24[3] = v17;
    v24[4] = v19;
  }

  return swift_task_create();
}

uint64_t sub_25F0E46CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v10 = v7;
  *(v10 + 88) = a6;
  *(v10 + 68) = a5;
  *(v10 + 96) = type metadata accessor for AgentConnectionError(0);
  *(v10 + 104) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D58, &unk_25F17B1B0);
  *(v10 + 112) = v12;
  *(v10 + 120) = *(v12 - 8);
  *(v10 + 128) = swift_task_alloc();
  v13 = swift_task_alloc();
  *(v10 + 136) = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD46C38, qword_25F17C0E0);
  *v13 = v10;
  v13[1] = sub_25F0E4844;
  v15 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](a1, a4, a7, v14, v15);
}

uint64_t sub_25F0E4844()
{
  v2 = *v1;
  *(v2 + 144) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25F0E4D74, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_25F0E4990()
{

  return MEMORY[0x2822009F8](sub_25F0E4AA8, 0, 0);
}

uint64_t sub_25F0E4AA8()
{
  v1 = *(v0 + 144);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 88);
  v7 = *(v0 + 96);
  sub_25F17810C();
  (*(v3 + 8))(v2, v4);
  v8 = *(v0 + 56);
  v9 = *(v0 + 64);
  v10 = sub_25F177D5C();
  (*(*(v10 - 8) + 16))(v5, v6, v10);
  *(v0 + 72) = v8;
  *(v0 + 80) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D68, &qword_25F17B1C0);
  *(v5 + *(v7 + 20)) = sub_25F17991C() & 1;
  v11 = v1;
  sub_25F0E57C4(&qword_27FD46D70, type metadata accessor for AgentConnectionError, &unk_25F17C1C8);
  sub_25F1781BC();

  v12 = *(v0 + 40);
  v13 = __swift_project_boxed_opaque_existential_1((v0 + 16), v12);
  v14 = *(v12 - 8);
  v15 = swift_task_alloc();
  (*(v14 + 16))(v15, v13, v12);
  if (sub_25F17981C())
  {
    (*(v14 + 8))(v15, v12);
  }

  else
  {
    swift_allocError();
    (*(v14 + 32))(v16, v15, v12);
  }

  v17 = *(v0 + 144);
  v18 = *(v0 + 104);
  swift_willThrow();
  sub_25F0C0FA8(v8, v9);

  sub_25F0E5470(v18);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_25F0E4D74()
{
  v1 = sub_25F176D2C();
  v2 = [v1 isBSServiceConnectionError];

  if (v2)
  {
    *(v0 + 152) = sub_25F0E69F4(*(v0 + 68), 0x3FF8000000000000, 0);
    v3 = swift_task_alloc();
    *(v0 + 160) = v3;
    *v3 = v0;
    v3[1] = sub_25F0E4990;
    v4 = *(v0 + 128);

    return MEMORY[0x2821A0B98](v4);
  }

  else
  {
    swift_willThrow();

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_25F0E4EA4()
{
  v1 = sub_25F177D5C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 52) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25F0E4F70(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = *(sub_25F177D5C() - 8);
  v6 = (*(v5 + 80) + 52) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_25F0BF3E4;

  return sub_25F0E46CC(a1, v7, v8, v9, v10, v1 + v6, v4);
}

uint64_t sub_25F0E5080(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F0E50F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25F0E5174(uint64_t a1)
{
  if (*(v1 + *(a1 + 20)))
  {
    return 0xD00000000000002CLL;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F0E51A4()
{
  sub_25F1796DC();
  MEMORY[0x25F8D50D0](0xD000000000000034, 0x800000025F184C90);
  sub_25F177D5C();
  sub_25F0E57C4(&qword_27FD46BA8, MEMORY[0x277D40E58], MEMORY[0x277D40E70]);
  v0 = sub_25F17980C();
  MEMORY[0x25F8D50D0](v0);

  MEMORY[0x25F8D50D0](11815, 0xE200000000000000);
  return 0;
}

uint64_t sub_25F0E5290(uint64_t a1)
{
  v2 = sub_25F0E57C4(&qword_27FD46D70, type metadata accessor for AgentConnectionError, &unk_25F17C1C8);

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F0E52FC(uint64_t a1)
{
  v2 = sub_25F0E57C4(&qword_27FD46D70, type metadata accessor for AgentConnectionError, &unk_25F17C1C8);

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F0E5368@<X0>(uint64_t result@<X0>, uint64_t *a7@<X8>)
{
  if (result)
  {

    result = swift_task_create();
    *a7 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for AgentConnectionError(uint64_t a1)
{
  result = qword_27FD47568;
  if (!qword_27FD47568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25F0E5470(uint64_t a1)
{
  v2 = type metadata accessor for AgentConnectionError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F0E54E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F177D5C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_25F0E55C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25F177D5C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_25F0E5678(uint64_t a1)
{
  result = sub_25F177D5C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F0E57C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id static ProcessUtilities.processHandle(for:)(uint64_t a1)
{
  result = [objc_opt_self() identifierWithPid_];
  if (result)
  {
    v2 = result;
    sub_25F0E6C24();
    v3 = v2;
    v4 = sub_25F0E6930(v3);

    return v4;
  }

  return result;
}

void sub_25F0E58DC(uint64_t a1, void *a2)
{
  v4[4] = sub_25F0E6F24;
  v4[5] = a1;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_25F0E59A4;
  v4[3] = &block_descriptor_1;
  v3 = _Block_copy(v4);

  [a2 monitorForDeath_];
  _Block_release(v3);
}

void sub_25F0E59A4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, v6);
}

void static ProcessUtilities.kill(processHandle:)(uint64_t a1)
{
  v43[1] = *MEMORY[0x277D85DE8];
  v2 = sub_25F17888C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(MEMORY[0x277D47010]);
  v7 = sub_25F17905C();
  v8 = [v6 initWithExplanation_];

  [v8 setMaximumTerminationResistance_];
  v9 = [objc_opt_self() predicateMatchingHandle_];
  v10 = [objc_allocWithZone(MEMORY[0x277D47018]) initWithPredicate:v9 context:v8];
  v43[0] = 0;
  if ([v10 execute_])
  {
    v11 = v43[0];

    return;
  }

  v41 = v5;
  v42 = v9;
  v39 = v3;
  v40 = v2;
  v12 = v43[0];
  v13 = sub_25F176D3C();

  swift_willThrow();
  v14 = sub_25F176D2C();
  v15 = [v14 domain];
  v16 = sub_25F17908C();
  v18 = v17;

  sub_25F17908C();
  v19 = sub_25F17910C();
  v21 = v20;

  if (v16 == v19 && v18 == v21)
  {
  }

  else
  {
    v22 = sub_25F17983C();

    if ((v22 & 1) == 0)
    {
LABEL_10:
      swift_willThrow();

      return;
    }
  }

  if ([v14 code] != 3)
  {
    goto LABEL_10;
  }

  v23 = v41;
  sub_25F17886C();
  v24 = v14;
  v25 = sub_25F17887C();
  v26 = sub_25F17955C();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v43[0] = v38;
    *v27 = 136315138;
    v28 = v24;
    v29 = [v28 description];
    v30 = sub_25F17908C();
    v37 = v25;
    v31 = v30;
    v33 = v32;

    v34 = sub_25F0BECF0(v31, v33, v43);

    *(v27 + 4) = v34;
    v35 = v37;
    _os_log_impl(&dword_25F0B3000, v37, v26, "Ignoring failed RBS kill request %s", v27, 0xCu);
    v36 = v38;
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x25F8D6230](v36, -1, -1);
    MEMORY[0x25F8D6230](v27, -1, -1);

    (*(v39 + 8))(v41, v40);
  }

  else
  {

    (*(v39 + 8))(v23, v40);
  }
}

unint64_t ProcessError.lowValueTitle.getter()
{
  v1 = v0;
  v2 = sub_25F17767C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ProcessError(0);
  MEMORY[0x28223BE20](v6);
  v8 = (v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25F0E6CBC(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v3 + 32))(v5, v8, v2);
      v19 = 0;
      v20 = 0xE000000000000000;
      sub_25F1796DC();
      MEMORY[0x25F8D50D0](0xD00000000000001CLL, 0x800000025F184E20);
      sub_25F0E6F40(&qword_27FD47EC0, MEMORY[0x277D408A0], MEMORY[0x277D408B0]);
      v13 = sub_25F17980C();
      MEMORY[0x25F8D50D0](v13);

      MEMORY[0x25F8D50D0](0xD000000000000029, 0x800000025F184E40);
LABEL_12:
      v15 = v19;
      (*(v3 + 8))(v5, v2);
      return v15;
    }

    (*(v3 + 32))(v5, v8, v2);
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_25F1796DC();

    v19 = 0xD000000000000030;
    v20 = 0x800000025F184DE0;
LABEL_11:
    sub_25F0E6F40(&qword_27FD47EC0, MEMORY[0x277D408A0], MEMORY[0x277D408B0]);
    v16 = sub_25F17980C();
    MEMORY[0x25F8D50D0](v16);

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 2)
  {
    (*(v3 + 32))(v5, v8, v2);
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_25F1796DC();
    MEMORY[0x25F8D50D0](0xD00000000000003DLL, 0x800000025F184DA0);
    goto LABEL_11;
  }

  v10 = *v8;
  v19 = 0;
  v20 = 0xE000000000000000;
  if (EnumCaseMultiPayload == 3)
  {
    sub_25F1796DC();

    v11 = 0x800000025F184D70;
    v12 = 0xD000000000000022;
  }

  else
  {
    sub_25F1796DC();

    v11 = 0x800000025F184D40;
    v12 = 0xD000000000000026;
  }

  v19 = v12;
  v20 = v11;
  v18[3] = v10;
  v14 = sub_25F17980C();
  MEMORY[0x25F8D50D0](v14);

  return v19;
}

unint64_t ProcessError.additionalInfo.getter()
{
  v1 = type metadata accessor for ProcessError(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F0E6CBC(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_25F0E6D20(v3);
  result = 0;
  if (!EnumCaseMultiPayload)
  {
    if (os_variant_has_internal_diagnostics())
    {
      return 0xD000000000000086;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ProcessError.isPotentialCrash.getter()
{
  v1 = type metadata accessor for ProcessError(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F0E6CBC(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 2)
  {
    v5 = 0;
LABEL_5:
    sub_25F0E6D20(v3);
    return v5;
  }

  v5 = 1;
  if (EnumCaseMultiPayload - 3 >= 2)
  {
    goto LABEL_5;
  }

  return v5;
}

uint64_t sub_25F0E6420(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F0E6CBC(v2, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 2)
  {
    v6 = 0;
LABEL_5:
    sub_25F0E6D20(v4);
    return v6;
  }

  v6 = 1;
  if (EnumCaseMultiPayload - 3 >= 2)
  {
    goto LABEL_5;
  }

  return v6;
}

uint64_t sub_25F0E64D0(uint64_t a1)
{
  v2 = sub_25F0E6F40(&qword_27FD475B8, type metadata accessor for ProcessError, &protocol conformance descriptor for ProcessError);

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F0E653C(uint64_t a1)
{
  v2 = sub_25F0E6F40(&qword_27FD475B8, type metadata accessor for ProcessError, &protocol conformance descriptor for ProcessError);

  return MEMORY[0x2821A07F0](a1, v2);
}

id RBSProcessHandle.applicationProcess.getter()
{
  v1 = [objc_opt_self() sharedInstance];
  [v0 auditToken];
  v2 = [v1 uv:&v4 registerProcessForAuditToken:?];

  return v2;
}

uint64_t sub_25F0E6630(double a1)
{
  v1 = sub_25F177FAC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F177F9C();
  sub_25F0E6F40(&qword_27FD475C0, MEMORY[0x277D40460], MEMORY[0x277D40468]);
  v5 = swift_allocError();
  (*(v2 + 32))(v6, v4, v1);
  return v5;
}

void sub_25F0E6754(void *a1)
{
  v2 = sub_25F1787BC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F1787CC();
  sub_25F1780CC();
  (*(v3 + 8))(v5, v2);
  v6 = [objc_opt_self() sharedInstance];
  v7 = [a1 identifier];
  v8 = v7;
  v9 = v7;
  if (!v7)
  {
    sub_25F17908C();
    v9 = sub_25F17905C();

    sub_25F17908C();
    v8 = sub_25F17905C();
  }

  v10 = v7;
  v11 = [v6 sceneWithIdentifier_];

  if (v11)
  {

    [v6 destroyScene:v8 withTransitionContext:0];
    v12 = v8;
  }

  else
  {
    v12 = v6;
    v6 = v8;
  }
}

id sub_25F0E6930(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() handleForIdentifier:a1 error:v5];
  if (v1)
  {
    v2 = v5[0];
  }

  else
  {
    v3 = v5[0];
    sub_25F176D3C();

    swift_willThrow();
  }

  return v1;
}

uint64_t sub_25F0E69F4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = [objc_opt_self() identifierWithPid_];
  if (v4 && (v5 = v4, sub_25F0E6C24(), v6 = v5, v7 = sub_25F0E6930(v6), v6, v6, v7))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D60, &qword_25F180310);
    MEMORY[0x28223BE20](v9);
    v10 = sub_25F1786BC();
    if (a3)
    {
    }

    else
    {
      sub_25F17869C();
      v11 = sub_25F1786CC();

      return v11;
    }

    return v10;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D60, &qword_25F180310);
    return sub_25F17872C();
  }
}

unint64_t sub_25F0E6C24()
{
  result = qword_27FD46D78;
  if (!qword_27FD46D78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD46D78);
  }

  return result;
}

uint64_t type metadata accessor for ProcessError(uint64_t a1)
{
  result = qword_27FD475A8;
  if (!qword_27FD475A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25F0E6CBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProcessError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F0E6D20(uint64_t a1)
{
  v2 = type metadata accessor for ProcessError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F0E6EB4(uint64_t a1)
{
  result = sub_25F17767C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25F0E6F40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_25F0E7028(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_25F0E7070(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F0E70C0@<X0>(_DWORD *a1@<X8>)
{
  result = sub_25F1776CC();
  *a1 = result;
  return result;
}

uint64_t sub_25F0E70EC(uint64_t a1, unsigned int *a2)
{
  *(v2 + 16) = a1;
  v3 = *a2;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_25F0E71A0;

  return sub_25F10B684(v3);
}

uint64_t sub_25F0E71A0(uint64_t a1)
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

    return MEMORY[0x2822009F8](sub_25F0E72EC, 0, 0);
  }
}

uint64_t sub_25F0E72EC()
{
  v1 = v0[4];
  v2 = v0[2];
  v2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D28, &qword_25F17B180);
  v2[4] = sub_25F0E7C78(&qword_27FD475C8, MEMORY[0x277D40D78]);
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_25F0E7390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a4;
  v7[10] = a7;
  v8 = sub_25F17813C();
  v7[11] = v8;
  v7[12] = *(v8 - 8);
  v7[13] = swift_task_alloc();
  v9 = sub_25F17888C();
  v7[14] = v9;
  v7[15] = *(v9 - 8);
  v7[16] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD474B8, &qword_25F17BF70);
  v7[17] = v10;
  v7[18] = *(v10 - 8);
  v7[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F0E7514, 0, 0);
}

uint64_t sub_25F0E7514()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47870, &unk_25F17C530);
  sub_25F17935C();
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  *v1 = v0;
  v1[1] = sub_25F0E75E0;
  v2 = *(v0 + 136);

  return MEMORY[0x2822003E8](v0 + 56, 0, 0, v2);
}

uint64_t sub_25F0E75E0()
{

  return MEMORY[0x2822009F8](sub_25F0E76DC, 0, 0);
}

uint64_t sub_25F0E76DC()
{
  v1 = v0[7];
  v0[21] = v1;
  if (v1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D28, &qword_25F17B180);
    v0[22] = v2;
    v0[5] = v2;
    v0[6] = sub_25F0E7C78(&qword_27FD475C8, MEMORY[0x277D40D78]);
    v0[2] = v1;

    v3 = swift_task_alloc();
    v0[23] = v3;
    *v3 = v0;
    v3[1] = sub_25F0E7848;

    return MEMORY[0x2821A0EA0](v0 + 2);
  }

  else
  {
    (*(v0[18] + 8))(v0[19], v0[17]);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_25F0E7848()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_25F0E7A14;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));
    v3 = sub_25F0E7964;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25F0E7964()
{

  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  *v1 = v0;
  v1[1] = sub_25F0E75E0;
  v2 = *(v0 + 136);

  return MEMORY[0x2822003E8](v0 + 56, 0, 0, v2);
}

uint64_t sub_25F0E7A14()
{
  v1 = v0[24];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  sub_25F17884C();
  v2 = v1;
  v3 = sub_25F17887C();
  v4 = sub_25F17953C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[24];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_25F0B3000, v3, v4, "Failed to attach host connection to message pipe: %@", v6, 0xCu);
    sub_25F0E7CC8(v7);
    MEMORY[0x25F8D6230](v7, -1, -1);
    MEMORY[0x25F8D6230](v6, -1, -1);
  }

  v20 = v0[24];
  v10 = v0[21];
  v11 = v0[15];
  v12 = v0[16];
  v13 = v0[13];
  v14 = v0[14];
  v15 = v0[11];
  v16 = v0[12];

  (*(v11 + 8))(v12, v14);
  v0[8] = v10;
  sub_25F17812C();
  sub_25F0E7C78(&qword_27FD46D30, MEMORY[0x277D40D80]);
  sub_25F1780BC();

  (*(v16 + 8))(v13, v15);

  v17 = swift_task_alloc();
  v0[20] = v17;
  *v17 = v0;
  v17[1] = sub_25F0E75E0;
  v18 = v0[17];

  return MEMORY[0x2822003E8](v0 + 7, 0, 0, v18);
}

uint64_t sub_25F0E7C78(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD46D28, &qword_25F17B180);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25F0E7CC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473D0, &unk_25F17C540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F0E7D30()
{
  v0 = sub_25F176E8C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *MEMORY[0x277D40D20];
  v5 = sub_25F176E7C();
  (*(*(v5 - 8) + 104))(v3, v4, v5);
  (*(v1 + 104))(v3, *MEMORY[0x277D40CE8], v0);
  type metadata accessor for HostServer(0);
  v6 = swift_allocObject();
  (*(v1 + 16))(v6 + OBJC_IVAR____TtC15PreviewShellKit10HostServer_service, v3, v0);
  v9[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47338, &qword_25F17BC40);
  v7 = sub_25F17883C();
  (*(v1 + 8))(v3, v0);
  *(v6 + OBJC_IVAR____TtC15PreviewShellKit10HostServer_activeListener) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD475D0, &qword_25F17C550);
  swift_allocObject();
  sub_25F0D409C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD475D8, &qword_25F17C558);

  sub_25F1771FC();
  return v6;
}

uint64_t sub_25F0E7F78(uint64_t a1, unsigned int *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25F0BF3E4;

  return sub_25F0E70EC(a1, a2);
}

uint64_t StoppedViewController.__allocating_init(style:snapshotImage:)(_BYTE *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  LOBYTE(a1) = *a1;
  v6 = a2;
  sub_25F178EFC();
  sub_25F0B5D40(a1, a2, v10, v11);
  v8 = v7;

  return v8;
}

uint64_t StoppedViewController.init(style:snapshotImage:)(char *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  sub_25F178EFC();
  sub_25F0B5D40(v3, a2, v8, v9);
  v6 = v5;

  return v6;
}

id StoppedViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id StoppedView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25F178F4C();
  MEMORY[0x28223BE20](v3);
  v4 = *v1;
  v5 = *(v1 + 1);
  v6 = v1[16];
  v7 = *(v1 + 3);
  v12 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46DF0, &qword_25F17B1E0);
  sub_25F178F0C();
  v8 = [objc_opt_self() rootSettings];
  sub_25F178F3C();
  v9 = sub_25F178B9C();
  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  *(v10 + 24) = v5;
  *(v10 + 32) = v6;
  *(v10 + 40) = v7;
  *a1 = v8;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v13;
  *(a1 + 32) = v9;
  *(a1 + 40) = sub_25F0E8380;
  *(a1 + 48) = v10;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;

  return v12;
}

uint64_t sub_25F0E8340()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t type metadata accessor for StoppedViewController(uint64_t a1)
{
  result = qword_27FD475E0;
  if (!qword_27FD475E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25F0E848C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_25F0E84E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_25F0E8550()
{
  result = qword_27FD475F0;
  if (!qword_27FD475F0)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD475F8, &qword_25F17C640);
    sub_25F0E85DC(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD475F0);
  }

  return result;
}

unint64_t sub_25F0E85DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47600;
  if (!qword_27FD47600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47600);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25F0E8644(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_25F0E868C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F0E8700@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E20, &qword_25F17B3A8);
  MEMORY[0x28223BE20](v2 - 8);
  v36 = &v36 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E28, &qword_25F17B3B0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v37 = &v36 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E30, &qword_25F17B3B8);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47608, &unk_25F17C6F0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v36 - v13;
  v39 = *v1;
  v15 = v39;
  v16 = *(v1 + 8);
  v17 = *(v1 + 16);
  v18 = *(v1 + 24);
  v19 = *(v1 + 32);
  v40 = sub_25F178E7C();
  v38 = sub_25F178D6C();
  v42 = v15;
  v43 = v16;
  v44 = v17;
  v45 = v18;
  v46 = v19;
  v20 = v36;
  sub_25F0E8A84(v36);
  sub_25F178F5C();
  sub_25F178BBC();
  v21 = v20;
  v22 = v37;
  sub_25F0B7D50(v21, v37, &qword_27FD46E20, &qword_25F17B3A8);
  v23 = (v22 + *(v5 + 44));
  v24 = v52;
  v23[4] = v51;
  v23[5] = v24;
  v23[6] = v53;
  v25 = v48;
  *v23 = v47;
  v23[1] = v25;
  v26 = v50;
  v23[2] = v49;
  v23[3] = v26;
  LOBYTE(v19) = sub_25F178D5C();
  sub_25F0B7D50(v22, v10, &qword_27FD46E28, &qword_25F17B3B0);
  v10[*(v8 + 44)] = v19;
  v27 = sub_25F178F5C();
  v29 = v28;
  v30 = &v14[*(v12 + 44)];
  sub_25F0B7D50(v10, v30, &qword_27FD46E30, &qword_25F17B3B8);
  v31 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E50, &qword_25F17B3D8) + 36));
  *v31 = v27;
  v31[1] = v29;
  *v14 = v40;
  v14[8] = v38;
  [v39 crashAnimationDuration];
  v32 = sub_25F178F6C();
  v33 = v41;
  sub_25F0B7D50(v14, v41, &qword_27FD47608, &unk_25F17C6F0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47610, &unk_25F17C700);
  v35 = v33 + *(result + 36);
  *v35 = v32;
  *(v35 + 8) = v18;
  return result;
}

uint64_t sub_25F0E8A84@<X0>(uint64_t a1@<X8>)
{
  v82 = a1;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E60, &qword_25F17B3E8);
  MEMORY[0x28223BE20](v81);
  v3 = (&v64 - v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E68, &qword_25F17B3F0);
  v70 = *(v4 - 8);
  v71 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v64 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E70, &qword_25F17B3F8);
  v8 = MEMORY[0x28223BE20](v7);
  v69 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = (&v64 - v10);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E78, &qword_25F17B400);
  MEMORY[0x28223BE20](v74);
  v73 = (&v64 - v12);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E80, &qword_25F17B408);
  MEMORY[0x28223BE20](v76);
  v78 = (&v64 - v13);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E88, &qword_25F17B410);
  MEMORY[0x28223BE20](v72);
  v15 = &v64 - v14;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E90, &qword_25F17B418);
  MEMORY[0x28223BE20](v77);
  v75 = &v64 - v16;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E98, &qword_25F17B420);
  MEMORY[0x28223BE20](v80);
  v79 = &v64 - v17;
  v18 = sub_25F178EDC();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v1 + 16);
  if (!v22 || (v23 = *(v1 + 8), v23 == 3))
  {
    *v3 = sub_25F178E6C();
    swift_storeEnumTagMultiPayload();
    sub_25F0C38FC();
    return sub_25F178CFC();
  }

  v25 = *v1;
  v66 = *(v1 + 24);
  v26 = *(v1 + 32);
  v64 = v25;
  v65 = v26;
  v67 = v22;
  sub_25F178EBC();
  (*(v19 + 104))(v21, *MEMORY[0x277CE0FE0], v18);
  v68 = sub_25F178EEC();

  (*(v19 + 8))(v21, v18);
  if (v23)
  {
    if (v23 != 1)
    {
      v50 = 1.0;
      v51 = v67;
      if (v66)
      {
        [v64 crashFadeOutOpacity];
        v50 = v52;
      }

      v53 = v68;

      v54 = sub_25F178D5C();
      v55 = v78;
      *v78 = v53;
      v55[1] = 0;
      *(v55 + 8) = 1;
      *(v55 + 3) = v50;
      *(v55 + 32) = v54;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46ED0, &qword_25F17B430);
      sub_25F0C3988();
      sub_25F0C3AC4();
      v46 = v79;
      sub_25F178CFC();
      goto LABEL_15;
    }

    v27 = sub_25F178F5C();
    v28 = v73;
    *v73 = v27;
    v28[1] = v29;
    v30 = sub_25F178E7C();
    v31 = sub_25F178F5C();
    v33 = v32;
    v34 = v11 + *(v7 + 36);
    if (v66)
    {
      v35 = *(sub_25F178BAC() + 20);
      v36 = v33;
      v37 = *MEMORY[0x277CE0118];
      v38 = sub_25F178CCC();
      (*(*(v38 - 8) + 104))(&v6[v35], v37, v38);
      __asm { FMOV            V0.2D, #15.0 }

      *v6 = _Q0;
      v44 = v71;
      *&v6[*(v71 + 52)] = v65;
      *&v6[*(v44 + 56)] = 256;
      sub_25F0B7D50(v6, v34, &qword_27FD46E68, &qword_25F17B3F0);
      (*(v70 + 56))(v34, 0, 1, v44);
      v33 = v36;
    }

    else
    {
      (*(v70 + 56))(v34, 1, 1, v71);
    }

    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46EF8, &qword_25F17B448);
    v57 = v73;
    v58 = v73 + *(v56 + 44);
    v59 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46F00, &qword_25F17B450) + 36));
    *v59 = v31;
    v59[1] = v33;
    *v11 = v30;
    v60 = v69;
    sub_25F0B7E2C(v11, v69, &qword_27FD46E70, &qword_25F17B3F8);
    *v58 = v68;
    *(v58 + 1) = 0;
    *(v58 + 8) = 1;
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46F08, &qword_25F17B458);
    sub_25F0B7E2C(v60, &v58[*(v61 + 48)], &qword_27FD46E70, &qword_25F17B3F8);
    swift_retain_n();
    sub_25F0B7E94(v11, &qword_27FD46E70, &qword_25F17B3F8);
    sub_25F0B7E94(v60, &qword_27FD46E70, &qword_25F17B3F8);

    v62 = v57;
    sub_25F0B7E2C(v57, v15, &qword_27FD46E78, &qword_25F17B400);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46EB8, &qword_25F17B428);
    sub_25F0C3A40();
    sub_25F0B7D00(&qword_27FD46EC0, &qword_27FD46E78, &qword_25F17B400, MEMORY[0x277CE11A8]);
    v63 = v75;
    sub_25F178CFC();
    sub_25F0B7E2C(v63, v78, &qword_27FD46E90, &qword_25F17B418);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46ED0, &qword_25F17B430);
    sub_25F0C3988();
    sub_25F0C3AC4();
    v46 = v79;
    sub_25F178CFC();
    sub_25F0B7E94(v63, &qword_27FD46E90, &qword_25F17B418);
    v47 = v62;
    v48 = &qword_27FD46E78;
    v49 = &qword_25F17B400;
  }

  else
  {
    *v15 = v68;
    *(v15 + 1) = 0;
    *(v15 + 8) = 1;
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46EB8, &qword_25F17B428);
    sub_25F0C3A40();
    sub_25F0B7D00(&qword_27FD46EC0, &qword_27FD46E78, &qword_25F17B400, MEMORY[0x277CE11A8]);
    v45 = v75;
    sub_25F178CFC();
    sub_25F0B7E2C(v45, v78, &qword_27FD46E90, &qword_25F17B418);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46ED0, &qword_25F17B430);
    sub_25F0C3988();
    sub_25F0C3AC4();
    v46 = v79;
    sub_25F178CFC();
    v47 = v45;
    v48 = &qword_27FD46E90;
    v49 = &qword_25F17B418;
  }

  sub_25F0B7E94(v47, v48, v49);
  v51 = v67;
LABEL_15:
  sub_25F0B7E2C(v46, v3, &qword_27FD46E98, &qword_25F17B420);
  swift_storeEnumTagMultiPayload();
  sub_25F0C38FC();
  sub_25F178CFC();

  return sub_25F0B7E94(v46, &qword_27FD46E98, &qword_25F17B420);
}

unint64_t sub_25F0E94E0()
{
  result = qword_27FD47618;
  if (!qword_27FD47618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD47610, &unk_25F17C700);
    sub_25F0E9598();
    sub_25F0B7D00(&qword_27FD46FE8, &qword_27FD46FF0, &qword_25F17B5A8, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47618);
  }

  return result;
}

unint64_t sub_25F0E9598()
{
  result = qword_27FD47620;
  if (!qword_27FD47620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD47608, &unk_25F17C6F0);
    sub_25F0E9650();
    sub_25F0B7D00(&qword_27FD46FE0, &qword_27FD46E50, &qword_25F17B3D8, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47620);
  }

  return result;
}

unint64_t sub_25F0E9650()
{
  result = qword_27FD47628;
  if (!qword_27FD47628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FD47630, &unk_25F17C710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47628);
  }

  return result;
}

uint64_t sub_25F0E96D4@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v48 = sub_25F176E8C();
  v1 = *(v48 - 8);
  v51 = *(v1 + 64);
  v2 = MEMORY[0x28223BE20](v48);
  v50 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v52 = &v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47860, &qword_25F17C940);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47868, &qword_25F17C948);
  v47 = *(v9 - 8);
  v10 = *(v47 + 8);
  v11 = MEMORY[0x28223BE20](v9);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v43 - v13;
  v45 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D28, &qword_25F17B180);
  (*(v6 + 104))(v8, *MEMORY[0x277D85778], v5);
  sub_25F17933C();
  v15 = v14;
  v16 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 8))(v8, v5);
  v17 = *(v1 + 16);
  v18 = v48;
  v19 = v49;
  v20 = v52;
  v17(v52, v49 + OBJC_IVAR____TtC15PreviewShellKit10HostServer_service, v48);
  v44 = v15;
  sub_25F0EB460(v15, v16);
  v21 = (v47[80] + 16) & ~v47[80];
  v22 = swift_allocObject();
  v47 = v16;
  sub_25F0EB60C(v16, v22 + v21);
  v23 = type metadata accessor for AsyncListenerDelegate();
  v24 = objc_allocWithZone(v23);
  v25 = v50;
  v17(v50, v20, v18);
  v26 = v1;
  v27 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v28 = (v51 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v26 + 32))(v29 + v27, v25, v18);
  v30 = (v29 + v28);
  *v30 = &unk_25F17C968;
  v30[1] = v22;
  v31 = &v24[OBJC_IVAR____TtC15PreviewShellKit21AsyncListenerDelegate_serviceConnectionHandler];
  *v31 = &unk_25F17C970;
  *(v31 + 1) = v29;
  v59.receiver = v24;
  v59.super_class = v23;
  v32 = objc_msgSendSuper2(&v59, sel_init);
  (*(v26 + 8))(v52, v18);
  v54 = v19;
  v55 = v32;
  v33 = swift_allocObject();
  v33[2] = sub_25F0EB800;
  v33[3] = &v53;
  aBlock[4] = sub_25F0EB818;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25F0D0B0C;
  aBlock[3] = &block_descriptor_2;
  v34 = _Block_copy(aBlock);
  v35 = objc_opt_self();

  v36 = [v35 listenerWithConfigurator_];
  _Block_release(v34);

  LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

  if (v34)
  {
    __break(1u);
  }

  else
  {
    [v36 activate];
    v57 = *(v19 + OBJC_IVAR____TtC15PreviewShellKit10HostServer_activeListener);
    swift_getKeyPath();
    v56 = v36;

    v38 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD478E0, &qword_25F17C9A0);
    sub_25F0EB838();
    sub_25F17853C();

    v39 = v47;
    sub_25F0EB60C(v44, v47);
    v40 = *(v45 + 48);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47870, &unk_25F17C530);
    (*(*(v41 - 8) + 32))(v46, v39, v41);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47878, &qword_25F17C960);
    return (*(*(v42 - 8) + 8))(v39 + v40, v42);
  }

  return result;
}

uint64_t sub_25F0E9D38(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD478F0, &qword_25F17C9A8);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F0E9E04, 0, 0);
}

uint64_t sub_25F0E9E04()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47868, &qword_25F17C948);
  v0[2] = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47878, &qword_25F17C960);
  sub_25F17934C();
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

id sub_25F0E9EF0(void *a1, uint64_t a2, uint64_t a3)
{
  sub_25F176E2C();
  v5 = sub_25F17905C();

  [a1 setDomain_];

  sub_25F176E3C();
  v6 = sub_25F17905C();

  [a1 setService_];

  sub_25F176E4C();
  if (v7)
  {
    v8 = sub_25F17905C();

    [a1 setInstance_];
  }

  return [a1 setDelegate_];
}

uint64_t sub_25F0E9FF0()
{
  v1 = OBJC_IVAR____TtC15PreviewShellKit10HostServer_service;
  v2 = sub_25F176E8C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_25F0EA0C0@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_25F176E8C();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t sub_25F0EA138@<X0>(unsigned int *a1@<X2>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_25F176E8C();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t AggregatingHostServer.ConnectionMonitor.Status.hashValue.getter(char a1)
{
  sub_25F1798CC();
  MEMORY[0x25F8D5860](a1 & 1);
  return sub_25F17990C();
}

uint64_t sub_25F0EA240(uint64_t a1)
{
  sub_25F1798CC();
  AggregatingHostServer.ConnectionMonitor.Status.hash(into:)(v3, *v1);
  return sub_25F17990C();
}

uint64_t AggregatingHostServer.ConnectionMonitor.status.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AggregatingHostServer.ConnectionMonitor.Status(255, *(a1 + 16), *(a1 + 24), a4);
  sub_25F1783CC();
  sub_25F17839C();
  return v5;
}

uint64_t sub_25F0EA2D8(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AggregatingHostServer.ConnectionMonitor.Status(255, *(a2 + 16), *(a2 + 24), a4);
  sub_25F1783CC();
  return sub_25F1783AC();
}

uint64_t AggregatingHostServer.ConnectionMonitor.$status.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AggregatingHostServer.ConnectionMonitor.Status(255, *(a1 + 16), *(a1 + 24), a4);
  v4 = sub_25F1783CC();

  return MEMORY[0x2821A0970](v4);
}

uint64_t AggregatingHostServer.connectionMonitor.getter@<X0>(uint64_t a1@<X8>, uint64_t a2@<X3>)
{
  v4 = *(*v2 + 120);
  v5 = type metadata accessor for AggregatingHostServer.ConnectionMonitor(0, *(*v2 + 80), *(*v2 + 88), a2);
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v2 + v4, v5);
}

char *AggregatingHostServer.deinit()
{
  v1 = *v0;

  v2 = *(*v0 + 120);
  v4 = type metadata accessor for AggregatingHostServer.ConnectionMonitor(0, *(v1 + 80), *(v1 + 88), v3);
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t AggregatingHostServer.__deallocating_deinit()
{
  AggregatingHostServer.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_25F0EA5B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25F0EA638@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  v5 = type metadata accessor for AggregatingHostServer.ConnectionMonitor(0, *(a1 + a2 - 16), *(a1 + a2 - 8), a3);
  result = AggregatingHostServer.ConnectionMonitor.status.getter(v5, v6, v7, v8);
  *a4 = result;
  return result;
}

uint64_t sub_25F0EA674(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = type metadata accessor for AggregatingHostServer.ConnectionMonitor(0, *(a3 + a4 - 16), *(a3 + a4 - 8), a4);
  return sub_25F0EA2D8(v4, v5, v6, v7);
}

__n128 sub_25F0EA6C0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t type metadata accessor for HostServer(uint64_t a1)
{
  result = qword_27FD47660;
  if (!qword_27FD47660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25F0EA720(uint64_t a1)
{
  result = sub_25F176E8C();
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

uint64_t sub_25F0EA7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AggregatingHostServer.ConnectionMonitor.Status(255, *(a1 + 80), *(a1 + 88), a4);
  result = sub_25F1783CC();
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F0EA8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AggregatingHostServer.ConnectionMonitor.Status(255, *(a1 + 16), *(a1 + 24), a4);
  result = sub_25F1783CC();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F0EA984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AggregatingHostServer.ConnectionMonitor.Status(255, *(a3 + 16), *(a3 + 24), a4);
  v6 = sub_25F1783CC();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t sub_25F0EAA14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AggregatingHostServer.ConnectionMonitor.Status(255, *(a4 + 16), *(a4 + 24), a4);
  v6 = sub_25F1783CC();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a2, v6);
}

uint64_t getEnumTagSinglePayload for PreviewShellPluginRegistry.PluginLocation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PreviewShellPluginRegistry.PluginLocation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25F0EABFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_25F176E8C();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F0EACC4, 0, 0);
}

uint64_t sub_25F0EACC4()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D28, &qword_25F17B180);
  (*(v2 + 16))(v1, v5, v3);
  v7 = v6;
  swift_unknownObjectRetain();
  v8 = sub_25F176F2C();
  v0[10] = v8;
  v11 = (v4 + *v4);
  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = sub_25F0EAE3C;

  return v11(v8);
}

uint64_t sub_25F0EAE3C()
{

  return MEMORY[0x2822009F8](sub_25F0EAF38, 0, 0);
}

uint64_t sub_25F0EAF38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F0EAFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_25F0EAFC4, 0, 0);
}

uint64_t sub_25F0EAFC4()
{
  v5 = (*(v0[2] + OBJC_IVAR____TtC15PreviewShellKit21AsyncListenerDelegate_serviceConnectionHandler) + **(v0[2] + OBJC_IVAR____TtC15PreviewShellKit21AsyncListenerDelegate_serviceConnectionHandler));
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_25F0EB0C4;
  v3 = v0[3];
  v2 = v0[4];

  return v5(v3, v2);
}

uint64_t sub_25F0EB0C4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25F0EB348()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25F0EB398(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25F0C10CC;

  return sub_25F0EAFA0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_25F0EB460(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47868, &qword_25F17C948);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F0EB4D0()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47868, &qword_25F17C948) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47870, &unk_25F17C530);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[14];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47878, &qword_25F17C960);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25F0EB60C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47868, &qword_25F17C948);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F0EB67C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47868, &qword_25F17C948) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25F0BF3E4;

  return sub_25F0E9D38(a1, v1 + v5);
}

uint64_t sub_25F0EB760()
{
  v1 = sub_25F176E8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_25F0EB838()
{
  result = qword_27FD478E8;
  if (!qword_27FD478E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD478E0, &qword_25F17C9A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD478E8);
  }

  return result;
}

uint64_t PreviewShellPluginRegistry.PluginLocation.hashValue.getter(char a1)
{
  sub_25F1798CC();
  MEMORY[0x25F8D5860](a1 & 1);
  return sub_25F17990C();
}

uint64_t sub_25F0EB93C()
{
  v1 = *v0;
  sub_25F1798CC();
  MEMORY[0x25F8D5860](v1);
  return sub_25F17990C();
}

uint64_t sub_25F0EB9B0(uint64_t a1)
{
  v2 = *v1;
  sub_25F1798CC();
  MEMORY[0x25F8D5860](v2);
  return sub_25F17990C();
}

uint64_t PreviewShellPluginRegistry.providers.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t PreviewShellPluginRegistry.launchers.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 8) = v2;
  return result;
}

uint64_t sub_25F0EBB7C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

double static PreviewShellPluginRegistry.load<A>(using:location:)@<D0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  LODWORD(v93) = a2;
  v82 = a5;
  v8 = sub_25F17888C();
  v80 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v86 = v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v84 = v78 - v12;
  MEMORY[0x28223BE20](v11);
  v91 = v78 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47910, &qword_25F17C9D0);
  v15 = MEMORY[0x28223BE20](v14);
  v87 = v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = v78 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47918, &qword_25F17C9D8);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = v78 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47920, &qword_25F17C9E0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25F17C9B0;
  *&v100 = a3;
  swift_getMetatypeMetadata();
  v24 = sub_25F1790CC();
  *(v23 + 32) = a1;
  *(v23 + 40) = a4;
  *(v23 + 48) = v24;
  *(v23 + 56) = v25;
  *(v23 + 64) = a3;
  v26 = sub_25F0EE944(v93 & 1);
  *&v100 = v23;
  sub_25F0EC828(v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47928, &qword_25F17C9E8);
  sub_25F0EEF8C(v27, v28, v29);
  sub_25F0B7D00(&qword_27FD47938, &qword_27FD47928, &qword_25F17C9E8, MEMORY[0x277D83970]);
  sub_25F1782FC();
  v30 = MEMORY[0x277D84F90];
  v104 = sub_25F0ECA48(MEMORY[0x277D84F90]);
  v103 = sub_25F0ECE14(v30);
  v81 = v20;
  v31 = *(v20 + 16);
  v78[1] = v20 + 16;
  v78[0] = v31;
  v31(v18, v22, v19);
  v79 = v14;
  v32 = *(v14 + 36);
  v33 = sub_25F0B7D00(&qword_27FD47940, &qword_27FD47918, &qword_25F17C9D8, MEMORY[0x277D404B0]);
  v83 = v22;
  sub_25F1794BC();
  sub_25F1794EC();
  v35 = *&v18[v32] == v100;
  v88 = v8;
  v92 = v19;
  v93 = v33;
  if (!v35)
  {
    v89 = (v80 + 8);
    *&v34 = 136446210;
    v85 = v34;
    v90 = v32;
    do
    {
      v45 = sub_25F17950C();
      v48 = *v46;
      v47 = v46[1];
      v50 = v46[2];
      v49 = v46[3];

      v45(&v100, 0);
      sub_25F1794FC();
      v51 = v91;
      sub_25F17884C();

      v52 = sub_25F17887C();
      v53 = sub_25F17955C();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *&v100 = v55;
        *v54 = v85;

        v56 = sub_25F0BECF0(v50, v49, &v100);

        *(v54 + 4) = v56;
        _os_log_impl(&dword_25F0B3000, v52, v53, "Registering plugin '%{public}s'", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v55);
        v57 = v55;
        v8 = v88;
        MEMORY[0x25F8D6230](v57, -1, -1);
        v58 = v54;
        v19 = v92;
        MEMORY[0x25F8D6230](v58, -1, -1);
      }

      (*v89)(v51, v8);
      (*(v47 + 8))(&v104, v48, v47);

      (*(v47 + 16))(&v103, v48, v47);
      sub_25F1794EC();
    }

    while (*&v18[v90] != v100);
  }

  sub_25F0B7E94(v18, &qword_27FD47910, &qword_25F17C9D0);
  v102 = 0;
  v100 = 0u;
  v101 = 0u;
  v99 = 0;
  v97 = 0u;
  v98 = 0u;
  v36 = v87;
  (v78[0])(v87, v83, v19);
  v37 = *(v79 + 36);
  sub_25F1794BC();
  sub_25F1794EC();
  v39 = v84;
  if (*(v36 + v37) != *&v96[0])
  {
    v89 = (v80 + 8);
    *&v38 = 136446210;
    v85 = v38;
    v90 = v37;
    do
    {
      v60 = sub_25F17950C();
      v63 = *v61;
      v62 = v61[1];
      v64 = v61[3];
      v91 = v61[2];

      v60(v96, 0);
      sub_25F1794FC();
      (*(v62 + 24))(&v94, v63, v62);
      if (v95)
      {
        sub_25F0C0C84(&v94, v96);
        sub_25F0B7E2C(&v100, &v94, &qword_27FD47900, &qword_25F17C9C0);
        if (v95)
        {
          sub_25F0B7E94(&v94, &qword_27FD47900, &qword_25F17C9C0);
          sub_25F17884C();

          v65 = sub_25F17887C();
          v66 = sub_25F17954C();

          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            v68 = swift_slowAlloc();
            *&v94 = v68;
            *v67 = v85;
            *(v67 + 4) = sub_25F0BECF0(v91, v64, &v94);
            _os_log_impl(&dword_25F0B3000, v65, v66, "Ignoring scene configurator provided by plugin '%{public}s'\nas more than one configurator is registered.", v67, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v68);
            v69 = v68;
            v39 = v84;
            MEMORY[0x25F8D6230](v69, -1, -1);
            v70 = v67;
            v8 = v88;
            MEMORY[0x25F8D6230](v70, -1, -1);
          }

          (*v89)(v39, v8);
          __swift_destroy_boxed_opaque_existential_1Tm(v96);
          v36 = v87;
        }

        else
        {
          sub_25F0B7E94(&v100, &qword_27FD47900, &qword_25F17C9C0);
          sub_25F0B7E94(&v94, &qword_27FD47900, &qword_25F17C9C0);
          sub_25F0C0C84(v96, &v100);
        }
      }

      else
      {
        sub_25F0B7E94(&v94, &qword_27FD47900, &qword_25F17C9C0);
      }

      (*(v62 + 32))(&v94, v63, v62);
      if (v95)
      {
        sub_25F0C0C84(&v94, v96);
        sub_25F0B7E2C(&v97, &v94, &qword_27FD47908, &qword_25F17C9C8);
        v71 = v86;
        if (v95)
        {
          sub_25F0B7E94(&v94, &qword_27FD47908, &qword_25F17C9C8);
          sub_25F17884C();

          v72 = sub_25F17887C();
          v73 = sub_25F17954C();

          if (os_log_type_enabled(v72, v73))
          {
            v74 = swift_slowAlloc();
            v75 = swift_slowAlloc();
            *&v94 = v75;
            *v74 = v85;
            *(v74 + 4) = sub_25F0BECF0(v91, v64, &v94);
            _os_log_impl(&dword_25F0B3000, v72, v73, "Ignoring scene binder provided by plugin '%{public}s'\nas more than one binder is registered.", v74, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v75);
            v76 = v75;
            v8 = v88;
            MEMORY[0x25F8D6230](v76, -1, -1);
            v77 = v74;
            v36 = v87;
            MEMORY[0x25F8D6230](v77, -1, -1);
          }

          (*v89)(v71, v8);

          __swift_destroy_boxed_opaque_existential_1Tm(v96);
        }

        else
        {
          sub_25F0B7E94(&v97, &qword_27FD47908, &qword_25F17C9C8);

          sub_25F0B7E94(&v94, &qword_27FD47908, &qword_25F17C9C8);
          sub_25F0C0C84(v96, &v97);
        }
      }

      else
      {

        sub_25F0B7E94(&v94, &qword_27FD47908, &qword_25F17C9C8);
      }

      v59 = v90;
      v19 = v92;
      sub_25F1794EC();
    }

    while (*(v36 + v59) != *&v96[0]);
  }

  sub_25F0B7E94(v36, &qword_27FD47910, &qword_25F17C9D0);
  (*(v81 + 8))(v83, v19);
  v40 = v101;
  v41 = v82;
  *(v82 + 16) = v100;
  *(v41 + 32) = v40;
  result = *&v97;
  v43 = v98;
  *(v41 + 56) = v97;
  v44 = v103;
  *v41 = v104;
  *(v41 + 8) = v44;
  *(v41 + 48) = v102;
  *(v41 + 72) = v43;
  *(v41 + 88) = v99;
  return result;
}

uint64_t sub_25F0EC7F8()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_25F0EC828(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_25F115DA8(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_25F0EC920(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47A00, &qword_25F17CC70);
    v3 = sub_25F1797BC();
    v4 = a1 + 32;

    while (1)
    {
      sub_25F0B7E2C(v4, &v11, &qword_27FD47A08, &qword_25F17CC78);
      v5 = v11;
      result = sub_25F0C87B4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_25F0EF164(&v12, (v3[7] + 32 * result));
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

unint64_t sub_25F0ECA48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD479B8, &unk_25F17CC20);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD479C0, &unk_25F183CA0);
    v7 = sub_25F1797BC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_25F0B7E2C(v9, v5, &qword_27FD479B8, &unk_25F17CC20);
      result = sub_25F0C8848(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for ContentKey(0);
      result = sub_25F0EF08C(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for ContentKey);
      *(v7[7] + 16 * v13) = *&v5[v8];
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

unint64_t sub_25F0ECC2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD479F0, &unk_25F17CC60);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD479F8, &unk_25F183C90);
    v7 = sub_25F1797BC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_25F0B7E2C(v9, v5, &qword_27FD479F0, &unk_25F17CC60);
      result = sub_25F0C8B7C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_25F177E8C();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
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

unint64_t sub_25F0ECE14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD479A8, &unk_25F17CC10);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD479B0, &unk_25F183C70);
    v7 = sub_25F1797BC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_25F0B7E2C(v9, v5, &qword_27FD479A8, &unk_25F17CC10);
      result = sub_25F0C8C50(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_25F17722C();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_25F0C0C84(&v5[v8], v7[7] + 40 * v13);
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

unint64_t sub_25F0ED004(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47998, &unk_25F17CC00);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v21 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD479A0, &unk_25F183C80);
    v7 = sub_25F1797BC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_25F0B7E2C(v9, v5, &qword_27FD47998, &unk_25F17CC00);
      result = sub_25F0C8D24(*v5, v5[1]);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v7[6] + 16 * result);
      v15 = v5[1];
      *v14 = *v5;
      v14[1] = v15;
      v16 = v7[7];
      v17 = type metadata accessor for JITManager.Storage.Record(0);
      result = sub_25F0EF08C(v5 + v8, v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for JITManager.Storage.Record);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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

unint64_t sub_25F0ED1EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47988, &qword_25F17CBF0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47990, &qword_25F17CBF8);
    v7 = sub_25F1797BC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_25F0B7E2C(v9, v5, &qword_27FD47988, &qword_25F17CBF0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_25F0C8D24(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_25F178B1C();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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

unint64_t sub_25F0ED3D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47978, &qword_25F17CBE0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47980, &qword_25F17CBE8);
    v7 = sub_25F1797BC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_25F0B7E2C(v9, v5, &qword_27FD47978, &qword_25F17CBE0);
      v11 = *v5;
      result = sub_25F0C8DC0(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = sub_25F17892C();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5 + v8, v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
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

unint64_t sub_25F0ED5B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47970, &qword_25F17CBD8);
    v3 = sub_25F1797BC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_25F0C8D24(v5, v6);
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

unint64_t sub_25F0ED6C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47950, &qword_25F17CBB8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47958, &qword_25F17CBC0);
    v7 = sub_25F1797BC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_25F0B7E2C(v9, v5, &qword_27FD47950, &qword_25F17CBB8);
      v11 = *v5;
      v12 = v5[1];
      result = sub_25F0C8D24(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_25F1779DC();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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

unint64_t sub_25F0ED8B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47960, &qword_25F17CBC8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47968, &qword_25F17CBD0);
    v7 = sub_25F1797BC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_25F0B7E2C(v9, v5, &qword_27FD47960, &qword_25F17CBC8);
      result = sub_25F0C8E04(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_25F17776C();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
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

unint64_t sub_25F0EDA9C(char a1)
{
  v135[1] = *MEMORY[0x277D85DE8];
  v129 = sub_25F17888C();
  i = *(v129 - 8);
  v2 = MEMORY[0x28223BE20](v129);
  v115 = v104 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v108 = v104 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v118 = v104 - v7;
  MEMORY[0x28223BE20](v6);
  v117 = v104 - v8;
  v116 = sub_25F176DBC();
  v132 = *(v116 - 8);
  v9 = MEMORY[0x28223BE20](v116);
  v109 = v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v114 = v104 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v126 = v104 - v14;
  MEMORY[0x28223BE20](v13);
  v130 = v104 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD479D8, &qword_25F17CC48);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v125 = v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v124 = v104 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD479E0, &qword_25F17CC50);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD479E8, &qword_25F17CC58);
  v21 = *(v20 - 8);
  v22 = *(v21 + 72);
  v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v105 = swift_allocObject();
  v24 = v105 + v23;
  v133 = 0;
  v134 = 0xE000000000000000;
  sub_25F1796DC();

  v133 = 0xD000000000000019;
  v134 = 0x800000025F185170;
  if (a1)
  {
    v25 = 0xEF63614D736E6967;
  }

  else
  {
    v25 = 0xEC000000736E6967;
  }

  v26 = *(v20 + 48);
  MEMORY[0x25F8D50D0](0x756C506C6C656853, v25);

  sub_25F176D4C();

  *(v24 + v26) = 0;
  v133 = 0;
  v134 = 0xE000000000000000;
  sub_25F1796DC();

  v27 = v116;
  v133 = 0xD000000000000027;
  v134 = 0x800000025F185190;
  v110 = v22;
  v111 = v24;
  v28 = *(v20 + 48);
  v29 = v117;
  MEMORY[0x25F8D50D0](0x756C506C6C656853, v25);
  v30 = v125;

  sub_25F176D4C();
  v31 = v126;

  v32 = 0;
  v119 = 0;
  *(v24 + v22 + v28) = 1;
  v33 = v130;
  v34 = v124;
  v35 = v118;
  v122 = (v21 + 48);
  v123 = (v21 + 56);
  v107 = MEMORY[0x277D84F90];
  v133 = MEMORY[0x277D84F90];
  v120 = (v132 + 16);
  v121 = (v132 + 32);
  v132 += 8;
  v127 = (i + 8);
  *&v36 = 136446466;
  v106 = v36;
  *&v36 = 136446210;
  v112 = v36;
  v128 = v20;
LABEL_5:
  v37 = v32;
  sub_25F0B7E2C(v111 + v32 * v110, v30, &qword_27FD479E8, &qword_25F17CC58);
  v38 = 0;
  for (i = v37 + 1; ; i = 2)
  {
    (*v123)(v30, v38, 1, v20);
    sub_25F0EF0F4(v30, v34);
    if ((*v122)(v34, 1, v20) == 1)
    {
      break;
    }

    v39 = v34;
    v40 = *(v34 + *(v20 + 48));
    (*v121)(v33, v39, v27);
    if ((v40 & 1) == 0)
    {
      sub_25F17884C();
      (*v120)(v31, v33, v27);
      v41 = v31;
      v42 = sub_25F17887C();
      v43 = v27;
      v44 = v29;
      v45 = sub_25F17955C();
      if (os_log_type_enabled(v42, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v135[0] = v47;
        *v46 = v112;
        v48 = sub_25F176D9C();
        v50 = v49;
        (*v132)(v41, v43);
        v51 = sub_25F0BECF0(v48, v50, v135);
        v35 = v118;

        *(v46 + 4) = v51;
        _os_log_impl(&dword_25F0B3000, v42, v45, "Looking for bundles in %{public}s", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v47);
        MEMORY[0x25F8D6230](v47, -1, -1);
        MEMORY[0x25F8D6230](v46, -1, -1);
      }

      else
      {

        (*v132)(v41, v43);
      }

      (*v127)(v44, v129);
      v29 = v44;
      v27 = v43;
      v33 = v130;
      v20 = v128;
    }

    v52 = [objc_opt_self() defaultManager];
    sub_25F176D9C();
    v53 = sub_25F17905C();

    v135[0] = 0;
    v54 = [v52 contentsOfDirectoryAtPath:v53 error:v135];

    v55 = v135[0];
    if (v54)
    {
      v77 = sub_25F17922C();
      v78 = v55;

      v79 = *(v77 + 16);
      v80 = v132;
      if (v79)
      {
        v104[2] = v132 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v104[1] = v77;
        v81 = v77 + 40;
        do
        {

          v82 = v114;
          sub_25F176D6C();

          v83 = sub_25F176D9C();
          v85 = v84;
          v113 = *v132;
          v113(v82, v27);
          v86 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
          v87 = sub_25F17905C();
          v88 = [v86 initWithPath_];

          if (v88)
          {
            sub_25F17884C();

            v89 = sub_25F17887C();
            v90 = sub_25F17955C();

            if (os_log_type_enabled(v89, v90))
            {
              v91 = swift_slowAlloc();
              v92 = swift_slowAlloc();
              v135[0] = v92;
              *v91 = v112;
              v93 = sub_25F0BECF0(v83, v85, v135);

              *(v91 + 4) = v93;
              _os_log_impl(&dword_25F0B3000, v89, v90, "Found plugin bundle at path %{public}s", v91, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v92);
              MEMORY[0x25F8D6230](v92, -1, -1);
              v94 = v91;
              v35 = v118;
              MEMORY[0x25F8D6230](v94, -1, -1);
            }

            else
            {
            }

            (*v127)(v35, v129);
            v20 = v128;
            v102 = v88;
            MEMORY[0x25F8D5190]();
            v29 = v117;
            if (*((v133 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v133 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_25F17924C();
            }

            sub_25F17928C();

            v107 = v133;
          }

          else
          {
            sub_25F17884C();

            v95 = sub_25F17887C();
            v96 = sub_25F17953C();

            if (os_log_type_enabled(v95, v96))
            {
              v97 = swift_slowAlloc();
              v98 = swift_slowAlloc();
              v135[0] = v98;
              *v97 = v112;
              v99 = sub_25F0BECF0(v83, v85, v135);

              *(v97 + 4) = v99;
              _os_log_impl(&dword_25F0B3000, v95, v96, "Could not instantiate bundle for path %{public}s", v97, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v98);
              v100 = v98;
              v35 = v118;
              MEMORY[0x25F8D6230](v100, -1, -1);
              v101 = v97;
              v29 = v117;
              MEMORY[0x25F8D6230](v101, -1, -1);
            }

            else
            {
            }

            (*v127)(v108, v129);
            v20 = v128;
          }

          v81 += 16;
          --v79;
        }

        while (v79);

        v33 = v130;
        v113(v130, v27);
      }

      else
      {

        (*v80)(v33, v27);
      }

      goto LABEL_15;
    }

    v56 = v135[0];
    v57 = sub_25F176D3C();

    swift_willThrow();
    if (v40)
    {
      (*v132)(v33, v27);

      v119 = 0;
LABEL_15:
      v30 = v125;
      v31 = v126;
      v34 = v124;
      goto LABEL_20;
    }

    v58 = v115;
    sub_25F17884C();
    v59 = v109;
    (*v120)(v109, v33, v27);
    v60 = v57;
    v61 = sub_25F17887C();
    v62 = sub_25F17953C();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v135[0] = v65;
      *v63 = v106;
      v66 = sub_25F176D9C();
      v67 = v59;
      v69 = v68;
      v70 = *v132;
      (*v132)(v67, v116);
      v71 = sub_25F0BECF0(v66, v69, v135);

      *(v63 + 4) = v71;
      *(v63 + 12) = 2114;
      v72 = v57;
      v73 = _swift_stdlib_bridgeErrorToNSError();
      *(v63 + 14) = v73;
      *v64 = v73;
      _os_log_impl(&dword_25F0B3000, v61, v62, "Error iterating contents of %{public}s: %{public}@", v63, 0x16u);
      sub_25F0B7E94(v64, &qword_27FD473D0, &unk_25F17C540);
      v74 = v64;
      v29 = v117;
      MEMORY[0x25F8D6230](v74, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v65);
      v75 = v65;
      v35 = v118;
      MEMORY[0x25F8D6230](v75, -1, -1);
      MEMORY[0x25F8D6230](v63, -1, -1);

      (*v127)(v115, v129);
      v70(v130, v116);
      v27 = v116;
      v33 = v130;
    }

    else
    {

      v76 = *v132;
      (*v132)(v59, v27);
      (*v127)(v58, v129);
      v76(v33, v27);
    }

    v119 = 0;
    v30 = v125;
    v31 = v126;
    v34 = v124;
    v20 = v128;
LABEL_20:
    v32 = i;
    if (i != 2)
    {
      goto LABEL_5;
    }

    v38 = 1;
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v107;
}

char *sub_25F0EE944(char a1)
{
  v73[1] = *MEMORY[0x277D85DE8];
  v2 = sub_25F17888C();
  v63 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v62 - v6;
  v8 = sub_25F0EDA9C(a1 & 1);
  v10 = v8;
  if (v8 >> 62)
  {
    v11 = sub_25F17978C();
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_17:

    goto LABEL_18;
  }

  v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (v11 < 1)
  {
    __break(1u);
  }

  v62 = v7;
  v12 = 0;
  v13 = v10 & 0xC000000000000001;
  v69 = 0;
  v70 = (v63 + 8);
  v14 = &off_279A7F000;
  *&v9 = 136446466;
  v64 = v9;
  v65 = v10;
  v66 = v2;
  v71 = v10 & 0xC000000000000001;
  v72 = v11;
  do
  {
    if (v13)
    {
      v16 = MEMORY[0x25F8D5690](v12, v10);
    }

    else
    {
      v16 = *(v10 + 8 * v12 + 32);
    }

    v17 = v16;
    v73[0] = 0;
    if ([v16 v14[291]])
    {
      v15 = v73[0];
    }

    else
    {
      v18 = v73[0];
      v19 = sub_25F176D3C();

      swift_willThrow();
      v69 = 0;
      sub_25F17884C();
      v20 = v17;
      v21 = v19;
      v22 = sub_25F17887C();
      v23 = sub_25F17953C();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v73[0] = v67;
        *v24 = v64;
        v26 = v5;
        v27 = [v20 bundlePath];
        v28 = sub_25F17908C();
        v68 = v20;
        v30 = v29;

        v5 = v26;
        v31 = sub_25F0BECF0(v28, v30, v73);

        *(v24 + 4) = v31;
        *(v24 + 12) = 2114;
        v32 = v19;
        v33 = _swift_stdlib_bridgeErrorToNSError();
        *(v24 + 14) = v33;
        *v25 = v33;
        _os_log_impl(&dword_25F0B3000, v22, v23, "Unable to load bundle at %{public}s: %{public}@", v24, 0x16u);
        sub_25F0B7E94(v25, &qword_27FD473D0, &unk_25F17C540);
        v34 = v25;
        v10 = v65;
        MEMORY[0x25F8D6230](v34, -1, -1);
        v35 = v67;
        __swift_destroy_boxed_opaque_existential_1Tm(v67);
        MEMORY[0x25F8D6230](v35, -1, -1);
        v36 = v24;
        v2 = v66;
        MEMORY[0x25F8D6230](v36, -1, -1);

        (*v70)(v26, v2);
      }

      else
      {

        (*v70)(v5, v2);
      }

      v13 = v71;
      v11 = v72;
      v14 = &off_279A7F000;
    }

    ++v12;
  }

  while (v11 != v12);

  v7 = v62;
LABEL_18:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD479C8, &qword_25F17CC30);
  v37 = sub_25F17716C();
  if (v37)
  {
    v38 = v37;
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
  }

  sub_25F17884C();

  v39 = sub_25F17887C();
  v40 = sub_25F17952C();
  v72 = v38;

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v73[0] = v42;
    *v41 = 136315138;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD479D0, &unk_25F17CC38);
    v44 = MEMORY[0x25F8D51C0](v72, v43);
    v46 = v7;
    v47 = sub_25F0BECF0(v44, v45, v73);

    *(v41 + 4) = v47;
    _os_log_impl(&dword_25F0B3000, v39, v40, "Found types conforming to PreviewShellPlugin: %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    MEMORY[0x25F8D6230](v42, -1, -1);
    MEMORY[0x25F8D6230](v41, -1, -1);

    (*(v63 + 8))(v46, v2);
  }

  else
  {

    (*(v63 + 8))(v7, v2);
  }

  v48 = *(v72 + 16);
  if (v48)
  {
    v49 = (v72 + 32);
    v50 = MEMORY[0x277D84F90];
    do
    {
      v52 = *v49;
      v53 = swift_conformsToProtocol2();
      if (v53)
      {
        v54 = v52 == 0;
      }

      else
      {
        v54 = 1;
      }

      if (!v54)
      {
        v55 = v53;
        v73[0] = v52;
        swift_getMetatypeMetadata();
        v56 = sub_25F1790CC();
        v58 = v57;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = sub_25F115DA8(0, *(v50 + 2) + 1, 1, v50);
        }

        v60 = *(v50 + 2);
        v59 = *(v50 + 3);
        if (v60 >= v59 >> 1)
        {
          v50 = sub_25F115DA8((v59 > 1), v60 + 1, 1, v50);
        }

        *(v50 + 2) = v60 + 1;
        v51 = &v50[40 * v60];
        *(v51 + 4) = v52;
        *(v51 + 5) = v55;
        *(v51 + 6) = v56;
        *(v51 + 7) = v58;
        *(v51 + 8) = v52;
      }

      ++v49;
      --v48;
    }

    while (v48);
  }

  else
  {
    v50 = MEMORY[0x277D84F90];
  }

  return v50;
}

unint64_t sub_25F0EEF8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47930;
  if (!qword_27FD47930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47930);
  }

  return result;
}

unint64_t sub_25F0EEFE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47948;
  if (!qword_27FD47948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47948);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15PreviewShellKit0aB17SceneConfigurator_pSg_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25F0EF08C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F0EF0F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD479D8, &qword_25F17CC48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_OWORD *sub_25F0EF164(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t SharedAgentServer<>.requestControlAgent(for:)(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  *(v3 + 16) = a1;
  v6 = *v2;
  v5 = v2[1];
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_25F0EF240;

  return sub_25F0EFE30(v4, v6, v5);
}

uint64_t sub_25F0EF240(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 32) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_25F0EF374, 0, 0);
  }
}

uint64_t sub_25F0EF374()
{
  sub_25F176E1C();
  v1 = sub_25F176FEC();
  v2 = sub_25F0F00E0();
  sub_25F176EFC();
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_25F0EF45C;
  v4 = *(v0 + 16);

  return MEMORY[0x2821A1908](v4, v1, v1, v2);
}

uint64_t sub_25F0EF45C()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25F0EF598, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_25F0EF598()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static ControlAgentService.shellService.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D40CD0];
  v3 = sub_25F176E8C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t static ControlAgentService.bootstrap(client:context:endpoint:using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_25F0BF3E4;

  return (sub_25F0F05A4)(a1, a3);
}

void sub_25F0EF724(void *a1, uint64_t a2)
{
  v4 = sub_25F176E8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() targetWithPid_];
  [a1 setTarget_];

  v9 = *MEMORY[0x277D40CD0];
  v10 = *(v5 + 104);
  v10(v7, v9, v4);
  sub_25F176E2C();
  v11 = *(v5 + 8);
  v11(v7, v4);
  v12 = sub_25F17905C();

  [a1 setDomain_];

  v10(v7, v9, v4);
  sub_25F176E3C();
  v11(v7, v4);
  v13 = sub_25F17905C();

  [a1 setService_];
}

id static ControlAgentService.identity(of:)(uint64_t a1)
{
  v1 = sub_25F176F4C();
  v2 = [v1 pid];

  return v2;
}

uint64_t sub_25F0EF964()
{
  sub_25F1796DC();
  MEMORY[0x25F8D50D0](0xD000000000000033, 0x800000025F185200);
  v0 = sub_25F17980C();
  MEMORY[0x25F8D50D0](v0);

  return 0;
}

uint64_t sub_25F0EFA04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F0F0D00(a1, a2, a3);

  return MEMORY[0x2821A0810](a1, v4);
}

uint64_t sub_25F0EFA40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F0F0D00(a1, a2, a3);

  return MEMORY[0x2821A07F0](a1, v4);
}

uint64_t sub_25F0EFA7C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D40CD0];
  v3 = sub_25F176E8C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_25F0EFAF0(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_25F0C10CC;

  return (sub_25F0F05A4)(v6, a4);
}

void sub_25F0EFBAC(unsigned int *a2@<X8>)
{
  v3 = sub_25F176F4C();
  v4 = [v3 pid];

  *a2 = v4;
}

uint64_t sub_25F0EFC00(int a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  *(v3 + 64) = a1;
  return MEMORY[0x2822009F8](sub_25F0EFC24, 0, 0);
}

uint64_t sub_25F0EFC24()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v0 + 64;
  v4 = (*MEMORY[0x277D40510] + MEMORY[0x277D40510]);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_25F0EFD14;

  return v4(v0 + 16, v0 + 64, &unk_25F17CCF8, v1);
}

uint64_t sub_25F0EFD14()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_25F0F0D54;
  }

  else
  {

    v2 = sub_25F0F0D58;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F0EFE30(int a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  *(v3 + 64) = a1;
  return MEMORY[0x2822009F8](sub_25F0EFE54, 0, 0);
}

uint64_t sub_25F0EFE54()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v0 + 64;
  v4 = (*MEMORY[0x277D40510] + MEMORY[0x277D40510]);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_25F0EFF44;

  return v4(v0 + 16, v0 + 64, &unk_25F17CD18, v1);
}

uint64_t sub_25F0EFF44()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_25F0F007C;
  }

  else
  {

    v2 = sub_25F0F0060;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F0F007C()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_25F0F00E0()
{
  result = qword_27FD47538;
  if (!qword_27FD47538)
  {
    sub_25F176FEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47538);
  }

  return result;
}

uint64_t sub_25F0F0138(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  *(v4 + 16) = a1;
  v5 = *a4;
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_25F0F01EC;

  return sub_25F10AF1C(v5);
}

uint64_t sub_25F0F01EC(uint64_t a1)
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

    return MEMORY[0x2822009F8](sub_25F0F0D5C, 0, 0);
  }
}

uint64_t sub_25F0F0338(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  *(v4 + 16) = a1;
  v5 = *a4;
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_25F0F03EC;

  return sub_25F10BE34(v5);
}

uint64_t sub_25F0F03EC(uint64_t a1)
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

    return MEMORY[0x2822009F8](sub_25F0F0538, 0, 0);
  }
}

uint64_t sub_25F0F0538()
{
  v1 = v0[4];
  v2 = v0[2];
  sub_25F176F1C();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_25F0F05C4()
{
  v1 = *(v0 + 64);
  v2 = swift_task_alloc();
  *(v2 + 16) = v1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_25F0F0A6C;
  *(v3 + 24) = v2;
  *(v0 + 48) = sub_25F0EB818;
  *(v0 + 56) = v3;
  *(v0 + 16) = MEMORY[0x277D85DD0];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_25F0D0B0C;
  *(v0 + 40) = &block_descriptor_3;
  v4 = _Block_copy((v0 + 16));
  v5 = objc_opt_self();

  v6 = [v5 injectorWithConfigurator_];
  _Block_release(v4);

  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {

    v11 = *(v0 + 64);
    if (v6)
    {
      v12 = objc_opt_self();
      v13 = v6;
      v14 = [v12 identifierWithPid_];
      if (v14 && (v15 = v14, sub_25F0E6C24(), v16 = v15, v17 = sub_25F0E6930(v16), v16, v16, v17))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D60, &qword_25F180310);
        *(swift_task_alloc() + 16) = v17;
        sub_25F1786BC();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D60, &qword_25F180310);
        sub_25F17872C();
      }

      v18 = swift_allocObject();
      *(v18 + 16) = v13;
      v19 = swift_allocObject();
      *(v19 + 16) = sub_25F0F0B28;
      *(v19 + 24) = v18;
      v20 = v13;
      sub_25F17860C();

      v21 = *(v0 + 8);
    }

    else
    {
      sub_25F0F0A9C(v8, v9, v10);
      swift_allocError();
      *v22 = v11;
      swift_willThrow();
      v21 = *(v0 + 8);
    }

    return v21();
  }

  return result;
}

uint64_t sub_25F0F09A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25F0C10CC;

  return sub_25F0F0138(a1, v4, v5, v6);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_25F0F0A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47A70;
  if (!qword_27FD47A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47A70);
  }

  return result;
}

uint64_t sub_25F0F0AF0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25F0F0B38()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25F0F0B70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25F0BF3E4;

  return sub_25F0F0338(a1, v4, v5, v6);
}

unint64_t sub_25F0F0C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47A78;
  if (!qword_27FD47A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47A78);
  }

  return result;
}

unint64_t sub_25F0F0CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47A80;
  if (!qword_27FD47A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47A80);
  }

  return result;
}

unint64_t sub_25F0F0D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47A88;
  if (!qword_27FD47A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47A88);
  }

  return result;
}

uint64_t SharedAgentServer<>.requestJITBootstrapAgent(for:bootstrapMethod:)(uint64_t a1, uint64_t *a2)
{
  *(v3 + 160) = a1;
  v5 = sub_25F1783FC();
  *(v3 + 168) = v5;
  *(v3 + 176) = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *a2;
  *(v3 + 184) = v6;
  *(v3 + 192) = v7;
  *(v3 + 248) = *(a2 + 8);
  *(v3 + 200) = *v2;

  return MEMORY[0x2822009F8](sub_25F0F0E38, 0, 0);
}

uint64_t sub_25F0F0E38()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 192);
  v3 = *(v0 + 160);
  v14 = *(v0 + 200);
  (*(*(v0 + 176) + 104))(*(v0 + 184), *MEMORY[0x277D404B8], *(v0 + 168));
  v4 = sub_25F17859C();
  swift_allocObject();
  v5 = sub_25F17858C();
  *(v0 + 216) = v5;
  *(v0 + 144) = v5;
  *(v0 + 112) = type metadata accessor for Agent(0);
  *(v0 + 120) = sub_25F0F12B8();
  *(v0 + 88) = v3;

  v6 = MEMORY[0x277D40518];
  sub_25F1784AC();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 88));
  v8 = *(v3 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapConnectionIdentifier);
  v7 = *(v3 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapConnectionIdentifier + 8);
  v9 = *(v3 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapTimeout);
  v10 = *(v3 + OBJC_IVAR____TtC15PreviewShellKit5Agent_jitBootstrapTimeout + 8);
  *(v0 + 72) = v4;
  *(v0 + 80) = v6;
  *(v0 + 48) = v5;
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  *(v0 + 32) = v9;
  *(v0 + 40) = v10;
  *(v0 + 128) = v8;
  *(v0 + 136) = v7;
  sub_25F0F1310(v2, v1);

  v11 = swift_task_alloc();
  *(v0 + 224) = v11;
  *(v11 + 16) = v14;
  *(v11 + 32) = v0 + 128;
  *(v11 + 40) = v0 + 16;
  v15 = (*MEMORY[0x277D40510] + MEMORY[0x277D40510]);
  v12 = swift_task_alloc();
  *(v0 + 232) = v12;
  *v12 = v0;
  v12[1] = sub_25F0F1090;

  return v15(v0 + 152, v0 + 128, &unk_25F17CEC0, v11);
}

uint64_t sub_25F0F1090()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_25F0F1238;
  }

  else
  {

    v2 = sub_25F0F11AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F0F11AC()
{
  v1 = *(v0 + 152);
  sub_25F0F26BC(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_25F0F1238()
{

  sub_25F0F26BC(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_25F0F12B8()
{
  result = qword_27FD47EA0;
  if (!qword_27FD47EA0)
  {
    type metadata accessor for Agent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47EA0);
  }

  return result;
}

id sub_25F0F1310(id result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return result;
  }

  return result;
}

uint64_t JITBootstrapAgentConnectionIdentifier.description.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static JITBootstrapAgentConnectionIdentifier.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_25F17983C();
  }
}

uint64_t JITBootstrapAgentConnectionIdentifier.hashValue.getter()
{
  sub_25F1798CC();
  sub_25F17911C();
  return sub_25F17990C();
}

uint64_t sub_25F0F13D8()
{
  sub_25F1798CC();
  sub_25F17911C();
  return sub_25F17990C();
}

uint64_t sub_25F0F142C(uint64_t a1)
{
  sub_25F1798CC();
  sub_25F17911C();
  return sub_25F17990C();
}

uint64_t sub_25F0F1474()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_25F0F14A4(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_25F17983C();
  }
}

id JITBootstrapAgentService.BootstrapContext.bootstrapMethod.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  return sub_25F0F1310(v2, v3);
}

void JITBootstrapAgentService.BootstrapContext.bootstrapMethod.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  sub_25F0F26EC(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
}

uint64_t JITBootstrapAgentService.BootstrapContext.bootstrapTimeout.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t JITBootstrapAgentService.BootstrapContext.agentInvalidationWrapper.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 32));

  return sub_25F0C0C84(a1, v1 + 32);
}

uint64_t static JITBootstrapAgentService.shellService.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D40CF8];
  v3 = sub_25F176E8C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t static JITBootstrapAgentService.bootstrap(client:context:endpoint:using:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_25F0BF3E4;

  return sub_25F0F26F8(a1, a2);
}

void sub_25F0F1724(void *a1, uint64_t a2)
{
  v4 = sub_25F176E8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [objc_opt_self() targetWithProcessIdentity_];
  [a1 setTarget_];
  v8 = *MEMORY[0x277D40CF8];
  v9 = *(v5 + 104);
  v9(v7, v8, v4);
  sub_25F176E2C();
  v10 = *(v5 + 8);
  v10(v7, v4);
  v11 = sub_25F17905C();

  [a1 setDomain_];

  v9(v7, v8, v4);
  sub_25F176E3C();
  v10(v7, v4);
  v12 = sub_25F17905C();

  [a1 setService_];

  v13 = sub_25F17905C();
  v14 = sub_25F17905C();
  v15 = [objc_opt_self() attributeWithDomain:v13 name:v14];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46960, &qword_25F17B190);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_25F17AEE0;
  *(v16 + 32) = v15;
  sub_25F0F32FC();
  v17 = v15;
  v18 = sub_25F17921C();

  [a1 setAdditionalAttributes_];
}

id sub_25F0F1A08(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, void *a5)
{
  v9 = sub_25F17888C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17885C();

  v13 = a4;
  v14 = sub_25F17887C();
  v15 = sub_25F17953C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v26 = v9;
    v17 = a2;
    v18 = v16;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v27 = a5;
    v28 = v20;
    v21 = v20;
    *v18 = 136446466;
    *(v18 + 4) = sub_25F0BECF0(v17, a3, &v28);
    *(v18 + 12) = 2112;
    *(v18 + 14) = v13;
    *v19 = v13;
    v22 = v13;
    _os_log_impl(&dword_25F0B3000, v14, v15, "Invalidating endpoint injector for: %{public}s, processIdentity: %@", v18, 0x16u);
    sub_25F0E7CC8(v19);
    MEMORY[0x25F8D6230](v19, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    v23 = v21;
    a5 = v27;
    MEMORY[0x25F8D6230](v23, -1, -1);
    MEMORY[0x25F8D6230](v18, -1, -1);

    (*(v10 + 8))(v12, v26);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  return [a5 invalidate];
}

void sub_25F0F1C30(void *a1, uint64_t a2)
{
  v4 = sub_25F176E8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() targetWithPid_];
  [a1 setTarget_];
  v8 = *MEMORY[0x277D40CF8];
  v9 = *(v5 + 104);
  v9(v7, v8, v4);
  sub_25F176E2C();
  v10 = *(v5 + 8);
  v10(v7, v4);
  v11 = sub_25F17905C();

  [a1 setDomain_];

  v9(v7, v8, v4);
  sub_25F176E3C();
  v10(v7, v4);
  v12 = sub_25F17905C();

  [a1 setService_];
}

id sub_25F0F1E24(uint64_t a1, uint64_t a2, unint64_t a3, int a4, void *a5)
{
  v9 = sub_25F17888C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17885C();

  v13 = sub_25F17887C();
  v14 = sub_25F17953C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v20 = a5;
    v16 = v15;
    v17 = swift_slowAlloc();
    v21 = v17;
    *v16 = 136446466;
    *(v16 + 4) = sub_25F0BECF0(a2, a3, &v21);
    *(v16 + 12) = 1024;
    *(v16 + 14) = a4;
    _os_log_impl(&dword_25F0B3000, v13, v14, "Invalidating endpoint injector for: %{public}s, pid: %d", v16, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x25F8D6230](v17, -1, -1);
    v18 = v16;
    a5 = v20;
    MEMORY[0x25F8D6230](v18, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  return [a5 invalidate];
}

double static JITBootstrapAgentService.bootstrapTimeout(for:)(uint64_t a1)
{
  result = *(a1 + 16);
  if (*(a1 + 24))
  {
    return 30.0;
  }

  return result;
}

uint64_t static JITBootstrapAgentService.identity(of:)@<X0>(void *a1@<X8>)
{
  v3 = sub_25F177F8C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F176F3C();
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = MEMORY[0x277D405A0];
  v10[0] = 0xD00000000000001DLL;
  v10[1] = 0x800000025F184C70;
  sub_25F177F6C();
  (*(v4 + 8))(v6, v3);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v10);
  if (!v1)
  {
    v8 = v10[6];
    *a1 = v10[5];
    a1[1] = v8;
  }

  return result;
}

uint64_t sub_25F0F2174(void *a1)
{
  sub_25F1796DC();
  MEMORY[0x25F8D50D0](0xD000000000000046, 0x800000025F185330);
  v2 = [a1 description];
  v3 = sub_25F17908C();
  v5 = v4;

  MEMORY[0x25F8D50D0](v3, v5);

  return 0;
}

uint64_t sub_25F0F2230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F0F34D0(a1, a2, a3);

  return MEMORY[0x2821A0810](a1, v4);
}

uint64_t sub_25F0F226C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F0F34D0(a1, a2, a3);

  return MEMORY[0x2821A07F0](a1, v4);
}

uint64_t sub_25F0F22A8()
{
  sub_25F1796DC();
  MEMORY[0x25F8D50D0](0xD00000000000003ALL, 0x800000025F185380);
  v0 = sub_25F17980C();
  MEMORY[0x25F8D50D0](v0);

  return 0;
}

uint64_t sub_25F0F2348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F0F3524(a1, a2, a3);

  return MEMORY[0x2821A0810](a1, v4);
}

uint64_t sub_25F0F2384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25F0F3524(a1, a2, a3);

  return MEMORY[0x2821A07F0](a1, v4);
}

uint64_t sub_25F0F23C0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D40CF8];
  v3 = sub_25F176E8C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_25F0F2434(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_25F0C10CC;

  return sub_25F0F26F8(a1, a2);
}

double sub_25F0F24F4(uint64_t a1)
{
  result = *(a1 + 16);
  if (*(a1 + 24))
  {
    return 30.0;
  }

  return result;
}

uint64_t sub_25F0F2524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v7 = *a4;
  v8 = a4[1];
  v9 = swift_task_alloc();
  *(v5 + 24) = v9;
  *v9 = v5;
  v9[1] = sub_25F0F03EC;

  return sub_25F10C5AC(v7, v8, a5);
}

uint64_t sub_25F0F25F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25F0BF3E4;

  return sub_25F0F2524(a1, v4, v5, v7, v6);
}

void sub_25F0F26EC(id a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }
}

uint64_t sub_25F0F26F8(uint64_t *a1, uint64_t a2)
{
  v2[14] = a2;
  v4 = sub_25F17888C();
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  v5 = swift_task_alloc();
  v6 = *a1;
  v7 = a1[1];
  v2[18] = v5;
  v2[19] = v6;
  v2[20] = v7;

  return MEMORY[0x2822009F8](sub_25F0F27D0, 0, 0);
}

uint64_t sub_25F0F27D0(uint64_t a1)
{
  v55 = v1;
  v2 = v1[14];
  if ((*(v2 + 24) & 1) == 0)
  {
    v3 = *(v2 + 16);
    sub_25F17885C();

    v4 = sub_25F17887C();
    v5 = sub_25F17955C();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = v1[19];
      v6 = v1[20];
      v8 = v1[18];
      v9 = v1[15];
      v10 = v1[16];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v54 = v12;
      *v11 = 136446466;
      *(v11 + 4) = sub_25F0BECF0(v7, v6, &v54);
      *(v11 + 12) = 2050;
      *(v11 + 14) = v3;
      _os_log_impl(&dword_25F0B3000, v4, v5, "JIT client %{public}s bootstrap timeout override provided: %{public}f", v11, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x25F8D6230](v12, -1, -1);
      MEMORY[0x25F8D6230](v11, -1, -1);

      (*(v10 + 8))(v8, v9);
    }

    else
    {
      v13 = v1[18];
      v14 = v1[15];
      v15 = v1[16];

      (*(v15 + 8))(v13, v14);
    }
  }

  v16 = v1[14];
  v17 = *v16;
  if ((*(v16 + 8) & 1) == 0)
  {
    v38 = swift_task_alloc();
    *(v38 + 16) = v17;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_25F0F324C;
    *(v39 + 24) = v38;
    v1[12] = sub_25F0E4290;
    v1[13] = v39;
    v1[8] = MEMORY[0x277D85DD0];
    v1[9] = 1107296256;
    v1[10] = sub_25F0D0B0C;
    v1[11] = &block_descriptor_33;
    v40 = _Block_copy(v1 + 8);
    v41 = objc_opt_self();

    sub_25F0F1310(v17, 0);
    v42 = [v41 injectorWithConfigurator_];
    _Block_release(v40);

    LOBYTE(v40) = swift_isEscapingClosureAtFileLocation();

    if ((v40 & 1) == 0)
    {

      if (v42)
      {
        v47 = v1[19];
        v46 = v1[20];
        __swift_project_boxed_opaque_existential_1((v1[14] + 32), *(v1[14] + 56));
        v48 = swift_allocObject();
        v48[2] = v47;
        v48[3] = v46;
        v48[4] = v17;
        v48[5] = v42;
        v49 = v42;

        sub_25F0F1310(v17, 0);
        v50 = v49;
        sub_25F17848C();

        sub_25F0F26EC(v17, 0);
        goto LABEL_14;
      }

      sub_25F0F3254(v43, v44, v45);
      swift_allocError();
      *v53 = v17;
LABEL_17:
      swift_willThrow();

      v51 = v1[1];
      goto LABEL_18;
    }

LABEL_22:
    __break(1u);
    return result;
  }

  sub_25F17885C();
  v18 = sub_25F17887C();
  v19 = sub_25F17952C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 67240192;
    *(v20 + 4) = v17;
    _os_log_impl(&dword_25F0B3000, v18, v19, "Using legacy pid for endpoint injection: %{public}d", v20, 8u);
    MEMORY[0x25F8D6230](v20, -1, -1);
  }

  v22 = v1[16];
  v21 = v1[17];
  v23 = v1[15];

  (*(v22 + 8))(v21, v23);
  v24 = swift_task_alloc();
  *(v24 + 16) = v17;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_25F0F3178;
  *(v25 + 24) = v24;
  v1[6] = sub_25F0E0108;
  v1[7] = v25;
  v1[2] = MEMORY[0x277D85DD0];
  v1[3] = 1107296256;
  v1[4] = sub_25F0D0B0C;
  v1[5] = &block_descriptor_4;
  v26 = _Block_copy(v1 + 2);
  v27 = objc_opt_self();

  v28 = [v27 injectorWithConfigurator_];
  _Block_release(v26);

  LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

  if (v26)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (!v28)
  {
    sub_25F0F31A8(v30, v31, v32);
    swift_allocError();
    *v52 = v17;
    goto LABEL_17;
  }

  v34 = v1[19];
  v33 = v1[20];
  __swift_project_boxed_opaque_existential_1((v1[14] + 32), *(v1[14] + 56));
  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  *(v35 + 24) = v33;
  *(v35 + 32) = v17;
  *(v35 + 40) = v28;
  v36 = v28;

  v37 = v36;
  sub_25F17848C();

LABEL_14:

  v51 = v1[1];
LABEL_18:

  return v51();
}

unint64_t sub_25F0F2E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47A90;
  if (!qword_27FD47A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47A90);
  }

  return result;
}

unint64_t sub_25F0F2EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47A98;
  if (!qword_27FD47A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47A98);
  }

  return result;
}

unint64_t sub_25F0F2F10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FD47AA0;
  if (!qword_27FD47AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47AA0);
  }

  return result;
}

uint64_t sub_25F0F2F64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_25F0F2FAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_25F0F3028(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25F0F3070(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}