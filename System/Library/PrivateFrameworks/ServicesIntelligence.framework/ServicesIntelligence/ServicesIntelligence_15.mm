char *sub_230E4AFF0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D938, &qword_230E7F648);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_230E4B114(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A6A8, &unk_230E6B3C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_230E4B198(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B328, &qword_230E6F6A8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

void *sub_230E4B26C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v9 = ((v7 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v6[2] = a1;
  v6[3] = 2 * ((v9 >> 3) + (v9 >> 63));
  return result;
}

void *sub_230E4B308(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 + 31;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 6);
  return result;
}

uint64_t sub_230E4B384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 104) = a1;
  *(v3 + 112) = a2;
  v4 = *(a3 + 16);
  *(v3 + 120) = *a3;
  *(v3 + 136) = v4;
  *(v3 + 152) = *(a3 + 32);
  return MEMORY[0x2822009F8](sub_230E4B3B8, 0, 0);
}

uint64_t sub_230E4B3B8()
{
  v1 = *(v0 + 152);
  *(v0 + 88) = *(v0 + 104);
  v5 = *(v0 + 136);
  v6 = *(v0 + 120);
  v2 = sub_230E69890();
  MEMORY[0x23191DA00](v2);

  *(v0 + 160) = 0xEA0000000000203CLL;
  swift_bridgeObjectRelease_n();
  *(v0 + 56) = 0x6D74616572545F5FLL;
  *(v0 + 64) = 0xEB00000000746E65;
  *(v0 + 72) = 0x2065746144646E65;
  *(v0 + 80) = 0xEA0000000000203CLL;
  *(v0 + 32) = v5;
  *(v0 + 16) = v6;
  *(v0 + 48) = v1;
  v3 = swift_task_alloc();
  *(v0 + 168) = v3;
  *v3 = v0;
  v3[1] = sub_230E4B51C;

  return sub_230D41368(v0 + 96, v0 + 56, (v0 + 16));
}

uint64_t sub_230E4B51C()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_230E4B77C;
  }

  else
  {

    v2 = sub_230E4B64C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_230E4B64C()
{
  v1 = *(v0 + 96);
  if (v1 >= 1)
  {
    if (qword_27DB5A4B0 != -1)
    {
      swift_once();
    }

    v2 = sub_230E68D80();
    __swift_project_value_buffer(v2, qword_27DB80BC0);
    v3 = sub_230E68D60();
    v4 = sub_230E693E0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = v1;
      _os_log_impl(&dword_230D02000, v3, v4, "[SystemDatabase][cleanupExpiredTreatments] Removed %lld expired treatments", v5, 0xCu);
      MEMORY[0x23191EAE0](v5, -1, -1);
    }
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_230E4B77C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230E4B7F4(char a1, uint64_t a2, char a3, uint64_t a4, double a5)
{
  v63 = *MEMORY[0x277D85DE8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v38 - v12;
  v41[0] = 0;
  v41[1] = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v40) = a1;
  v14 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v14);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v47 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  memset(v41, 0, sizeof(v41));
  v40 = 93;
  v16 = task_info(*MEMORY[0x277D85F48], 0x16u, v41, &v40);
  v17 = 0.0;
  if (!v16)
  {
    if (__CFADD__(v42, *(&v46 + 1)))
    {
      __break(1u);
    }

    v17 = vcvtd_n_f64_u64(v42 + *(&v46 + 1), 0x14uLL);
  }

  v39 = v13;
  v18 = Current - a5;
  v19 = v17 - *&a2;
  v20 = (v16 != 0) | a3 & 1;
  if (v20)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = v19;
  }

  sub_230E68950();
  LOBYTE(v41[0]) = *a4;
  v22 = RequestType.rawValue.getter();
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v25 = swift_allocObject();
  v38 = xmmword_230E6B3B0;
  *(v25 + 16) = xmmword_230E6B3B0;
  v41[0] = 0x6C616E7265746E69;
  v41[1] = 0xE90000000000002ELL;
  LOBYTE(v40) = a1;
  v26 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v26);

  v27 = v41[1];
  *(v25 + 32) = v41[0];
  *(v25 + 40) = v27;
  *(v25 + 48) = v18;
  *(v25 + 56) = 0;
  *(v25 + 64) = v21;
  *(v25 + 72) = v20;
  *(v25 + 80) = 0;
  v28 = *(a4 + 8);
  v29 = *(a4 + 16);

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v30 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v31 = swift_allocObject();
  *(v31 + 16) = v38;
  v32 = swift_allocObject();
  *(v32 + 16) = v30;
  *(v32 + 24) = v22;
  *(v32 + 32) = v24;
  *(v32 + 40) = 1;
  *(v32 + 48) = v25;
  *(v32 + 56) = v28;
  *(v32 + 64) = v29;
  *(v32 + 72) = 257;
  *(v32 + 80) = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = &unk_230E7F768;
  *(v33 + 24) = v32;
  *(v31 + 32) = &unk_230E7F770;
  *(v31 + 40) = v33;
  v34 = sub_230E69310();
  v35 = v39;
  (*(*(v34 - 8) + 56))(v39, 1, 1, v34);
  v36 = swift_allocObject();
  v36[2] = 0;
  v36[3] = 0;
  v36[4] = v31;

  sub_230D8F204(0, 0, v35, &unk_230E7F778, v36);
}

uint64_t sub_230E4BC68(char a1, uint64_t a2, char a3, uint64_t a4, double a5)
{
  v63 = *MEMORY[0x277D85DE8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v38 - v12;
  v41[0] = 0;
  v41[1] = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v40) = a1;
  v14 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v14);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v47 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  memset(v41, 0, sizeof(v41));
  v40 = 93;
  v16 = task_info(*MEMORY[0x277D85F48], 0x16u, v41, &v40);
  v17 = 0.0;
  if (!v16)
  {
    if (__CFADD__(v42, *(&v46 + 1)))
    {
      __break(1u);
    }

    v17 = vcvtd_n_f64_u64(v42 + *(&v46 + 1), 0x14uLL);
  }

  v39 = v13;
  v18 = Current - a5;
  v19 = v17 - *&a2;
  v20 = (v16 != 0) | a3 & 1;
  if (v20)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = v19;
  }

  sub_230E68950();
  LOBYTE(v41[0]) = *a4;
  v22 = RequestType.rawValue.getter();
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v25 = swift_allocObject();
  v38 = xmmword_230E6B3B0;
  *(v25 + 16) = xmmword_230E6B3B0;
  v41[0] = 0x6C616E7265746E69;
  v41[1] = 0xE90000000000002ELL;
  LOBYTE(v40) = a1;
  v26 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v26);

  v27 = v41[1];
  *(v25 + 32) = v41[0];
  *(v25 + 40) = v27;
  *(v25 + 48) = v18;
  *(v25 + 56) = 0;
  *(v25 + 64) = v21;
  *(v25 + 72) = v20;
  *(v25 + 80) = 0;
  v28 = *(a4 + 8);
  v29 = *(a4 + 16);

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v30 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v31 = swift_allocObject();
  *(v31 + 16) = v38;
  v32 = swift_allocObject();
  *(v32 + 16) = v30;
  *(v32 + 24) = v22;
  *(v32 + 32) = v24;
  *(v32 + 40) = 1;
  *(v32 + 48) = v25;
  *(v32 + 56) = v28;
  *(v32 + 64) = v29;
  *(v32 + 72) = 257;
  *(v32 + 80) = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = &unk_230E7F6E8;
  *(v33 + 24) = v32;
  *(v31 + 32) = &unk_230E7F6F0;
  *(v31 + 40) = v33;
  v34 = sub_230E69310();
  v35 = v39;
  (*(*(v34 - 8) + 56))(v39, 1, 1, v34);
  v36 = swift_allocObject();
  v36[2] = 0;
  v36[3] = 0;
  v36[4] = v31;

  sub_230D8F204(0, 0, v35, &unk_230E7F6F8, v36);
}

uint64_t sub_230E4C0DC(char a1, uint64_t a2, char a3, uint64_t a4, double a5)
{
  v63 = *MEMORY[0x277D85DE8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v38 - v12;
  v41[0] = 0;
  v41[1] = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v40) = a1;
  v14 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v14);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v47 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  memset(v41, 0, sizeof(v41));
  v40 = 93;
  v16 = task_info(*MEMORY[0x277D85F48], 0x16u, v41, &v40);
  v17 = 0.0;
  if (!v16)
  {
    if (__CFADD__(v42, *(&v46 + 1)))
    {
      __break(1u);
    }

    v17 = vcvtd_n_f64_u64(v42 + *(&v46 + 1), 0x14uLL);
  }

  v39 = v13;
  v18 = Current - a5;
  v19 = v17 - *&a2;
  v20 = (v16 != 0) | a3 & 1;
  if (v20)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = v19;
  }

  sub_230E68950();
  LOBYTE(v41[0]) = *a4;
  v22 = RequestType.rawValue.getter();
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v25 = swift_allocObject();
  v38 = xmmword_230E6B3B0;
  *(v25 + 16) = xmmword_230E6B3B0;
  v41[0] = 0x6C616E7265746E69;
  v41[1] = 0xE90000000000002ELL;
  LOBYTE(v40) = a1;
  v26 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v26);

  v27 = v41[1];
  *(v25 + 32) = v41[0];
  *(v25 + 40) = v27;
  *(v25 + 48) = v18;
  *(v25 + 56) = 0;
  *(v25 + 64) = v21;
  *(v25 + 72) = v20;
  *(v25 + 80) = 0;
  v28 = *(a4 + 8);
  v29 = *(a4 + 16);

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v30 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v31 = swift_allocObject();
  *(v31 + 16) = v38;
  v32 = swift_allocObject();
  *(v32 + 16) = v30;
  *(v32 + 24) = v22;
  *(v32 + 32) = v24;
  *(v32 + 40) = 1;
  *(v32 + 48) = v25;
  *(v32 + 56) = v28;
  *(v32 + 64) = v29;
  *(v32 + 72) = 257;
  *(v32 + 80) = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = &unk_230E7F750;
  *(v33 + 24) = v32;
  *(v31 + 32) = &unk_230E7F758;
  *(v31 + 40) = v33;
  v34 = sub_230E69310();
  v35 = v39;
  (*(*(v34 - 8) + 56))(v39, 1, 1, v34);
  v36 = swift_allocObject();
  v36[2] = 0;
  v36[3] = 0;
  v36[4] = v31;

  sub_230D8F204(0, 0, v35, &unk_230E7F760, v36);
}

uint64_t sub_230E4C550(char a1, uint64_t a2, char a3, uint64_t a4, double a5)
{
  v63 = *MEMORY[0x277D85DE8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v38 - v12;
  v41[0] = 0;
  v41[1] = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v40) = a1;
  v14 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v14);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v47 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  memset(v41, 0, sizeof(v41));
  v40 = 93;
  v16 = task_info(*MEMORY[0x277D85F48], 0x16u, v41, &v40);
  v17 = 0.0;
  if (!v16)
  {
    if (__CFADD__(v42, *(&v46 + 1)))
    {
      __break(1u);
    }

    v17 = vcvtd_n_f64_u64(v42 + *(&v46 + 1), 0x14uLL);
  }

  v39 = v13;
  v18 = Current - a5;
  v19 = v17 - *&a2;
  v20 = (v16 != 0) | a3 & 1;
  if (v20)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = v19;
  }

  sub_230E68950();
  LOBYTE(v41[0]) = *a4;
  v22 = RequestType.rawValue.getter();
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v25 = swift_allocObject();
  v38 = xmmword_230E6B3B0;
  *(v25 + 16) = xmmword_230E6B3B0;
  v41[0] = 0x6C616E7265746E69;
  v41[1] = 0xE90000000000002ELL;
  LOBYTE(v40) = a1;
  v26 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v26);

  v27 = v41[1];
  *(v25 + 32) = v41[0];
  *(v25 + 40) = v27;
  *(v25 + 48) = v18;
  *(v25 + 56) = 0;
  *(v25 + 64) = v21;
  *(v25 + 72) = v20;
  *(v25 + 80) = 0;
  v28 = *(a4 + 8);
  v29 = *(a4 + 16);

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v30 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v31 = swift_allocObject();
  *(v31 + 16) = v38;
  v32 = swift_allocObject();
  *(v32 + 16) = v30;
  *(v32 + 24) = v22;
  *(v32 + 32) = v24;
  *(v32 + 40) = 1;
  *(v32 + 48) = v25;
  *(v32 + 56) = v28;
  *(v32 + 64) = v29;
  *(v32 + 72) = 257;
  *(v32 + 80) = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = &unk_230E7F738;
  *(v33 + 24) = v32;
  *(v31 + 32) = &unk_230E7F740;
  *(v31 + 40) = v33;
  v34 = sub_230E69310();
  v35 = v39;
  (*(*(v34 - 8) + 56))(v39, 1, 1, v34);
  v36 = swift_allocObject();
  v36[2] = 0;
  v36[3] = 0;
  v36[4] = v31;

  sub_230D8F204(0, 0, v35, &unk_230E7F748, v36);
}

uint64_t sub_230E4C9C4(char a1, uint64_t a2, char a3, uint64_t a4, double a5)
{
  v63 = *MEMORY[0x277D85DE8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v38 - v12;
  v41[0] = 0;
  v41[1] = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v40) = a1;
  v14 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v14);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v47 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  memset(v41, 0, sizeof(v41));
  v40 = 93;
  v16 = task_info(*MEMORY[0x277D85F48], 0x16u, v41, &v40);
  v17 = 0.0;
  if (!v16)
  {
    if (__CFADD__(v42, *(&v46 + 1)))
    {
      __break(1u);
    }

    v17 = vcvtd_n_f64_u64(v42 + *(&v46 + 1), 0x14uLL);
  }

  v39 = v13;
  v18 = Current - a5;
  v19 = v17 - *&a2;
  v20 = (v16 != 0) | a3 & 1;
  if (v20)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = v19;
  }

  sub_230E68950();
  LOBYTE(v41[0]) = *a4;
  v22 = RequestType.rawValue.getter();
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v25 = swift_allocObject();
  v38 = xmmword_230E6B3B0;
  *(v25 + 16) = xmmword_230E6B3B0;
  v41[0] = 0x6C616E7265746E69;
  v41[1] = 0xE90000000000002ELL;
  LOBYTE(v40) = a1;
  v26 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v26);

  v27 = v41[1];
  *(v25 + 32) = v41[0];
  *(v25 + 40) = v27;
  *(v25 + 48) = v18;
  *(v25 + 56) = 0;
  *(v25 + 64) = v21;
  *(v25 + 72) = v20;
  *(v25 + 80) = 0;
  v28 = *(a4 + 8);
  v29 = *(a4 + 16);

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v30 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v31 = swift_allocObject();
  *(v31 + 16) = v38;
  v32 = swift_allocObject();
  *(v32 + 16) = v30;
  *(v32 + 24) = v22;
  *(v32 + 32) = v24;
  *(v32 + 40) = 1;
  *(v32 + 48) = v25;
  *(v32 + 56) = v28;
  *(v32 + 64) = v29;
  *(v32 + 72) = 257;
  *(v32 + 80) = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = &unk_230E73410;
  *(v33 + 24) = v32;
  *(v31 + 32) = &unk_230E6E478;
  *(v31 + 40) = v33;
  v34 = sub_230E69310();
  v35 = v39;
  (*(*(v34 - 8) + 56))(v39, 1, 1, v34);
  v36 = swift_allocObject();
  v36[2] = 0;
  v36[3] = 0;
  v36[4] = v31;

  sub_230D8F204(0, 0, v35, &unk_230E73420, v36);
}

uint64_t sub_230E4CE38(char a1, uint64_t a2, char a3, uint64_t a4, double a5)
{
  v63 = *MEMORY[0x277D85DE8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v38 - v12;
  v41[0] = 0;
  v41[1] = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v40) = a1;
  v14 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v14);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v47 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  memset(v41, 0, sizeof(v41));
  v40 = 93;
  v16 = task_info(*MEMORY[0x277D85F48], 0x16u, v41, &v40);
  v17 = 0.0;
  if (!v16)
  {
    if (__CFADD__(v42, *(&v46 + 1)))
    {
      __break(1u);
    }

    v17 = vcvtd_n_f64_u64(v42 + *(&v46 + 1), 0x14uLL);
  }

  v39 = v13;
  v18 = Current - a5;
  v19 = v17 - *&a2;
  v20 = (v16 != 0) | a3 & 1;
  if (v20)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = v19;
  }

  sub_230E68950();
  LOBYTE(v41[0]) = *a4;
  v22 = RequestType.rawValue.getter();
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v25 = swift_allocObject();
  v38 = xmmword_230E6B3B0;
  *(v25 + 16) = xmmword_230E6B3B0;
  v41[0] = 0x6C616E7265746E69;
  v41[1] = 0xE90000000000002ELL;
  LOBYTE(v40) = a1;
  v26 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v26);

  v27 = v41[1];
  *(v25 + 32) = v41[0];
  *(v25 + 40) = v27;
  *(v25 + 48) = v18;
  *(v25 + 56) = 0;
  *(v25 + 64) = v21;
  *(v25 + 72) = v20;
  *(v25 + 80) = 0;
  v28 = *(a4 + 8);
  v29 = *(a4 + 16);

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v30 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v31 = swift_allocObject();
  *(v31 + 16) = v38;
  v32 = swift_allocObject();
  *(v32 + 16) = v30;
  *(v32 + 24) = v22;
  *(v32 + 32) = v24;
  *(v32 + 40) = 1;
  *(v32 + 48) = v25;
  *(v32 + 56) = v28;
  *(v32 + 64) = v29;
  *(v32 + 72) = 257;
  *(v32 + 80) = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = &unk_230E7F788;
  *(v33 + 24) = v32;
  *(v31 + 32) = &unk_230E7F790;
  *(v31 + 40) = v33;
  v34 = sub_230E69310();
  v35 = v39;
  (*(*(v34 - 8) + 56))(v39, 1, 1, v34);
  v36 = swift_allocObject();
  v36[2] = 0;
  v36[3] = 0;
  v36[4] = v31;

  sub_230D8F204(0, 0, v35, &unk_230E7F798, v36);
}

uint64_t sub_230E4D2AC(char a1, uint64_t a2, char a3, uint64_t a4, double a5)
{
  v63 = *MEMORY[0x277D85DE8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v38 - v12;
  v41[0] = 0;
  v41[1] = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v40) = a1;
  v14 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v14);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v47 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  memset(v41, 0, sizeof(v41));
  v40 = 93;
  v16 = task_info(*MEMORY[0x277D85F48], 0x16u, v41, &v40);
  v17 = 0.0;
  if (!v16)
  {
    if (__CFADD__(v42, *(&v46 + 1)))
    {
      __break(1u);
    }

    v17 = vcvtd_n_f64_u64(v42 + *(&v46 + 1), 0x14uLL);
  }

  v39 = v13;
  v18 = Current - a5;
  v19 = v17 - *&a2;
  v20 = (v16 != 0) | a3 & 1;
  if (v20)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = v19;
  }

  sub_230E68950();
  LOBYTE(v41[0]) = *a4;
  v22 = RequestType.rawValue.getter();
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v25 = swift_allocObject();
  v38 = xmmword_230E6B3B0;
  *(v25 + 16) = xmmword_230E6B3B0;
  v41[0] = 0x6C616E7265746E69;
  v41[1] = 0xE90000000000002ELL;
  LOBYTE(v40) = a1;
  v26 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v26);

  v27 = v41[1];
  *(v25 + 32) = v41[0];
  *(v25 + 40) = v27;
  *(v25 + 48) = v18;
  *(v25 + 56) = 0;
  *(v25 + 64) = v21;
  *(v25 + 72) = v20;
  *(v25 + 80) = 0;
  v28 = *(a4 + 8);
  v29 = *(a4 + 16);

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v30 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v31 = swift_allocObject();
  *(v31 + 16) = v38;
  v32 = swift_allocObject();
  *(v32 + 16) = v30;
  *(v32 + 24) = v22;
  *(v32 + 32) = v24;
  *(v32 + 40) = 1;
  *(v32 + 48) = v25;
  *(v32 + 56) = v28;
  *(v32 + 64) = v29;
  *(v32 + 72) = 257;
  *(v32 + 80) = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = &unk_230E7F708;
  *(v33 + 24) = v32;
  *(v31 + 32) = &unk_230E7F710;
  *(v31 + 40) = v33;
  v34 = sub_230E69310();
  v35 = v39;
  (*(*(v34 - 8) + 56))(v39, 1, 1, v34);
  v36 = swift_allocObject();
  v36[2] = 0;
  v36[3] = 0;
  v36[4] = v31;

  sub_230D8F204(0, 0, v35, &unk_230E7F718, v36);
}

uint64_t sub_230E4D720(char a1, uint64_t a2, char a3, uint64_t a4, double a5)
{
  v63 = *MEMORY[0x277D85DE8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B010, &unk_230E733F0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v38 - v12;
  v41[0] = 0;
  v41[1] = 0xE000000000000000;
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000054, 0x8000000230E81030);
  LOBYTE(v40) = a1;
  v14 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v14);

  sub_230E68950();

  Current = CFAbsoluteTimeGetCurrent();
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v47 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  memset(v41, 0, sizeof(v41));
  v40 = 93;
  v16 = task_info(*MEMORY[0x277D85F48], 0x16u, v41, &v40);
  v17 = 0.0;
  if (!v16)
  {
    if (__CFADD__(v42, *(&v46 + 1)))
    {
      __break(1u);
    }

    v17 = vcvtd_n_f64_u64(v42 + *(&v46 + 1), 0x14uLL);
  }

  v39 = v13;
  v18 = Current - a5;
  v19 = v17 - *&a2;
  v20 = (v16 != 0) | a3 & 1;
  if (v20)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = v19;
  }

  sub_230E68950();
  LOBYTE(v41[0]) = *a4;
  v22 = RequestType.rawValue.getter();
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B018, &unk_230E6E468);
  v25 = swift_allocObject();
  v38 = xmmword_230E6B3B0;
  *(v25 + 16) = xmmword_230E6B3B0;
  v41[0] = 0x6C616E7265746E69;
  v41[1] = 0xE90000000000002ELL;
  LOBYTE(v40) = a1;
  v26 = RequestType.rawValue.getter();
  MEMORY[0x23191DA00](v26);

  v27 = v41[1];
  *(v25 + 32) = v41[0];
  *(v25 + 40) = v27;
  *(v25 + 48) = v18;
  *(v25 + 56) = 0;
  *(v25 + 64) = v21;
  *(v25 + 72) = v20;
  *(v25 + 80) = 0;
  v28 = *(a4 + 8);
  v29 = *(a4 + 16);

  sub_230E68950();
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v30 = qword_27DB5A438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5B020, &unk_230E73400);
  v31 = swift_allocObject();
  *(v31 + 16) = v38;
  v32 = swift_allocObject();
  *(v32 + 16) = v30;
  *(v32 + 24) = v22;
  *(v32 + 32) = v24;
  *(v32 + 40) = 1;
  *(v32 + 48) = v25;
  *(v32 + 56) = v28;
  *(v32 + 64) = v29;
  *(v32 + 72) = 257;
  *(v32 + 80) = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = &unk_230E7F7A0;
  *(v33 + 24) = v32;
  *(v31 + 32) = &unk_230E7F7A8;
  *(v31 + 40) = v33;
  v34 = sub_230E69310();
  v35 = v39;
  (*(*(v34 - 8) + 56))(v39, 1, 1, v34);
  v36 = swift_allocObject();
  v36[2] = 0;
  v36[3] = 0;
  v36[4] = v31;

  sub_230D8F204(0, 0, v35, &unk_230E7F7B0, v36);
}

uint64_t static SystemDatabase.queryWorkflow(useCaseRequest:using:requestContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 688) = a3;
  *(v4 + 680) = a1;
  v7 = sub_230E68D80();
  *(v4 + 696) = v7;
  *(v4 + 704) = *(v7 - 8);
  *(v4 + 712) = swift_task_alloc();
  v8 = *(a2 + 80);
  *(v4 + 80) = *(a2 + 64);
  *(v4 + 96) = v8;
  *(v4 + 112) = *(a2 + 96);
  v9 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v9;
  v10 = *(a2 + 48);
  *(v4 + 48) = *(a2 + 32);
  *(v4 + 64) = v10;
  v11 = *(a4 + 16);
  *(v4 + 720) = *a4;
  *(v4 + 736) = v11;
  *(v4 + 752) = *(a4 + 32);

  return MEMORY[0x2822009F8](sub_230E4DCC4, 0, 0);
}

uint64_t sub_230E4DCC4()
{
  v1 = *(v0 + 736);
  if (v1)
  {
    v2 = *(v0 + 752);
    v3 = *(v0 + 744);
    v4 = *(v0 + 720);
    v5 = *(v0 + 728);
    *(v0 + 784) = v2;
    *(v0 + 585) = BYTE1(v3);
    *(v0 + 115) = v3 & 1;
    *(v0 + 776) = v1;
    *(v0 + 768) = v5;
    *(v0 + 114) = v4;
    *(v0 + 592) = v4;
    *(v0 + 600) = v5;
    *(v0 + 608) = v1;
    *(v0 + 616) = v3 & 1;
    *(v0 + 617) = BYTE1(v3);
    *(v0 + 624) = v2;
    sub_230D0585C(v4, v5, v1, v3, v2);
    if (qword_27DB5A430 != -1)
    {
      swift_once();
    }

    v6 = qword_27DB5A438;
    *(v0 + 792) = qword_27DB5A438;
    sub_230DC7630(v0 + 16, v0 + 488);

    return MEMORY[0x2822009F8](sub_230E4E158, v6, 0);
  }

  else
  {
    *(v0 + 113) = 48;
    v7 = swift_task_alloc();
    *(v0 + 760) = v7;
    *v7 = v0;
    v7[1] = sub_230E4DECC;

    return static RequestContext.from(_:correlationID:)(v0 + 632, (v0 + 113), 0, 0);
  }
}

uint64_t sub_230E4DECC()
{

  return MEMORY[0x2822009F8](sub_230E4DFF4, 0, 0);
}

uint64_t sub_230E4DFF4()
{
  v1 = *(v0 + 632);
  v2 = *(v0 + 640);
  v3 = *(v0 + 648);
  v4 = *(v0 + 656);
  v5 = *(v0 + 657);
  v6 = *(v0 + 664);
  *(v0 + 784) = v6;
  *(v0 + 585) = v5;
  *(v0 + 115) = v4;
  *(v0 + 776) = v3;
  *(v0 + 768) = v2;
  *(v0 + 114) = v1;
  v7 = *(v0 + 752);
  v8 = *(v0 + 744);
  v9 = *(v0 + 736);
  v10 = *(v0 + 728);
  v11 = *(v0 + 720);
  *(v0 + 592) = v1;
  *(v0 + 600) = v2;
  *(v0 + 608) = v3;
  *(v0 + 616) = v4;
  *(v0 + 617) = v5;
  *(v0 + 624) = v6;
  sub_230D0585C(v11, v10, v9, v8, v7);
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v12 = qword_27DB5A438;
  *(v0 + 792) = qword_27DB5A438;
  sub_230DC7630(v0 + 16, v0 + 488);

  return MEMORY[0x2822009F8](sub_230E4E158, v12, 0);
}

uint64_t sub_230E4E158()
{
  v26 = v0;
  v25[1] = *MEMORY[0x277D85DE8];
  sub_230E68D70();

  v1 = sub_230E68D60();
  v2 = sub_230E693E0();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 776);
    v4 = *(v0 + 768);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v25[0] = v6;
    *v5 = 136315650;
    *(v5 + 4) = sub_230D7E620(0x726F577972657571, 0xED0000776F6C666BLL, v25);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_230D7E620(v4, v3, v25);
    *(v5 + 22) = 2080;
    v7 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v7);

    v8 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v25);

    *(v5 + 24) = v8;
    _os_log_impl(&dword_230D02000, v1, v2, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v6, -1, -1);
    MEMORY[0x23191EAE0](v5, -1, -1);
  }

  if (*(v0 + 115) == 1 && ((v9 = *(v0 + 784), v10 = *(v0 + 585), v11 = RequestType.rawValue.getter(), v13 = v12, , LOBYTE(v11) = sub_230D33FDC(v11, v13, v9), , , (v11 & 1) != 0) || v10 >= 2))
  {
    sub_230E68950();
    *(v0 + 800) = CFAbsoluteTimeGetCurrent();
    *(v0 + 116) = 0u;
    *(v0 + 132) = 0u;
    *(v0 + 148) = 0u;
    *(v0 + 164) = 0u;
    *(v0 + 180) = 0u;
    *(v0 + 196) = 0u;
    *(v0 + 212) = 0u;
    *(v0 + 228) = 0u;
    *(v0 + 244) = 0u;
    *(v0 + 260) = 0u;
    *(v0 + 276) = 0u;
    *(v0 + 292) = 0u;
    *(v0 + 308) = 0u;
    *(v0 + 324) = 0u;
    *(v0 + 340) = 0u;
    *(v0 + 356) = 0u;
    *(v0 + 372) = 0u;
    *(v0 + 388) = 0u;
    *(v0 + 404) = 0u;
    *(v0 + 420) = 0u;
    *(v0 + 436) = 0u;
    *(v0 + 452) = 0u;
    *(v0 + 468) = 0u;
    *(v0 + 484) = 0;
    *(v0 + 588) = 93;
    v16 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 116), (v0 + 588));
    *(v0 + 848) = v16;
    v17 = 0.0;
    if (!v16)
    {
      v18 = *(v0 + 164);
      v19 = *(v0 + 236);
      v20 = __CFADD__(v18, v19);
      v21 = v18 + v19;
      if (v20)
      {
        __break(1u);
      }

      v17 = vcvtd_n_f64_u64(v21, 0x14uLL);
    }

    *(v0 + 824) = v17;
    *(v0 + 672) = 0;
    v14 = swift_task_alloc();
    *(v0 + 832) = v14;
    *v14 = v0;
    v15 = sub_230E4E6C4;
  }

  else
  {
    v14 = swift_task_alloc();
    *(v0 + 808) = v14;
    *v14 = v0;
    v15 = sub_230E4E56C;
  }

  v14[1] = v15;
  v22 = *(v0 + 688);
  v23 = *(v0 + 680);

  return sub_230E56CCC(v23, v0 + 16, v22, v0 + 592);
}

uint64_t sub_230E4E56C()
{
  v2 = *v1;
  *(*v1 + 816) = v0;

  v3 = *(v2 + 792);
  if (v0)
  {
    v4 = sub_230E4EBAC;
  }

  else
  {
    v4 = sub_230E4EAB4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230E4E6C4()
{
  v2 = *v1;
  *(*v1 + 840) = v0;

  v3 = *(v2 + 792);
  if (v0)
  {
    v4 = sub_230E4E950;
  }

  else
  {
    v4 = sub_230E4E81C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230E4E81C()
{
  v1 = *(v0 + 712);
  v2 = *(v0 + 704);
  v3 = *(v0 + 696);
  sub_230D3A494(48, *(v0 + 824), *(v0 + 848) != 0, v0 + 592, (v0 + 672), *(v0 + 800));
  (*(v2 + 8))(v1, v3);
  sub_230D8151C(v0 + 16);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_230E4E950(uint64_t a1)
{
  v2 = *(v1 + 840);
  v3 = *(v1 + 824);
  v4 = *(v1 + 800);
  v5 = *(v1 + 712);
  v6 = *(v1 + 704);
  v7 = *(v1 + 696);
  v8 = *(v1 + 848) != 0;
  *(v1 + 672) = v2;
  swift_willThrow();
  v9 = v2;
  sub_230D3A494(48, v3, v8, v1 + 592, (v1 + 672), v4);
  MEMORY[0x23191E910](v2);
  (*(v6 + 8))(v5, v7);
  sub_230D8151C(v1 + 16);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v10 = *(v1 + 8);

  return v10();
}

uint64_t sub_230E4EAB4()
{
  (*(v0[88] + 8))(v0[89], v0[87]);
  sub_230D8151C((v0 + 2));

  v1 = v0[1];

  return v1();
}

uint64_t sub_230E4EBAC()
{
  (*(v0[88] + 8))(v0[89], v0[87]);
  sub_230D8151C((v0 + 2));

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v1 = v0[1];

  return v1();
}

uint64_t static SystemDatabase.storeUseCaseConfiguration(_:using:requestContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 104) = a2;
  *(v4 + 112) = a3;
  *(v4 + 96) = a1;
  v6 = sub_230E68D80();
  *(v4 + 120) = v6;
  *(v4 + 128) = *(v6 - 8);
  *(v4 + 136) = swift_task_alloc();
  v7 = *(a4 + 16);
  *(v4 + 144) = *a4;
  *(v4 + 160) = v7;
  *(v4 + 176) = *(a4 + 32);

  return MEMORY[0x2822009F8](sub_230E4ED98, 0, 0);
}

uint64_t sub_230E4ED98()
{
  v1 = *(v0 + 160);
  if (v1)
  {
    v2 = *(v0 + 168);
    v3 = *(v0 + 176);
    v4 = *(v0 + 144);
    v5 = *(v0 + 152);
    *(v0 + 200) = v1;
    *(v0 + 208) = v3;
    *(v0 + 639) = BYTE1(v2);
    *(v0 + 638) = v2 & 1;
    *(v0 + 192) = v5;
    *(v0 + 637) = v4;
    *(v0 + 16) = v4;
    *(v0 + 24) = v5;
    *(v0 + 32) = v1;
    *(v0 + 40) = v2 & 1;
    *(v0 + 41) = BYTE1(v2);
    *(v0 + 48) = v3;
    sub_230D0585C(v4, v5, v1, v2, v3);
    if (qword_27DB5A430 != -1)
    {
      swift_once();
    }

    v6 = qword_27DB5A438;
    *(v0 + 216) = qword_27DB5A438;

    return MEMORY[0x2822009F8](sub_230E4F1F4, v6, 0);
  }

  else
  {
    *(v0 + 636) = 44;
    v7 = swift_task_alloc();
    *(v0 + 184) = v7;
    *v7 = v0;
    v7[1] = sub_230E4EF84;

    return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 636), 0, 0);
  }
}

uint64_t sub_230E4EF84()
{

  return MEMORY[0x2822009F8](sub_230E4F0AC, 0, 0);
}

uint64_t sub_230E4F0AC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 81);
  v6 = *(v0 + 88);
  *(v0 + 200) = v3;
  *(v0 + 208) = v6;
  *(v0 + 639) = v5;
  *(v0 + 638) = v4;
  *(v0 + 192) = v2;
  *(v0 + 637) = v1;
  v7 = *(v0 + 168);
  v8 = *(v0 + 176);
  v9 = *(v0 + 152);
  v10 = *(v0 + 160);
  v11 = *(v0 + 144);
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 41) = v5;
  *(v0 + 48) = v6;
  sub_230D0585C(v11, v9, v10, v7, v8);
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v12 = qword_27DB5A438;
  *(v0 + 216) = qword_27DB5A438;

  return MEMORY[0x2822009F8](sub_230E4F1F4, v12, 0);
}

uint64_t sub_230E4F1F4()
{
  v27 = v0;
  v26[1] = *MEMORY[0x277D85DE8];
  sub_230E68D70();

  v1 = sub_230E68D60();
  v2 = sub_230E693E0();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 192);
    v3 = *(v0 + 200);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v26[0] = v6;
    *v5 = 136315650;
    *(v5 + 4) = sub_230D7E620(0xD000000000000019, 0x8000000230E80950, v26);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_230D7E620(v4, v3, v26);
    *(v5 + 22) = 2080;
    v7 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v7);

    v8 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v26);

    *(v5 + 24) = v8;
    _os_log_impl(&dword_230D02000, v1, v2, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v6, -1, -1);
    MEMORY[0x23191EAE0](v5, -1, -1);
  }

  if (*(v0 + 638) == 1 && ((v9 = *(v0 + 208), v10 = *(v0 + 639), v11 = RequestType.rawValue.getter(), v13 = v12, , LOBYTE(v11) = sub_230D33FDC(v11, v13, v9), , , (v11 & 1) != 0) || v10 >= 2))
  {
    sub_230E68950();
    *(v0 + 224) = CFAbsoluteTimeGetCurrent();
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0u;
    *(v0 + 400) = 0u;
    *(v0 + 416) = 0u;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    *(v0 + 512) = 0u;
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    *(v0 + 560) = 0u;
    *(v0 + 576) = 0u;
    *(v0 + 592) = 0u;
    *(v0 + 608) = 0u;
    *(v0 + 624) = 0;
    *(v0 + 628) = 93;
    v16 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 256), (v0 + 628));
    *(v0 + 632) = v16;
    v17 = 0.0;
    if (!v16)
    {
      v18 = *(v0 + 304);
      v19 = *(v0 + 376);
      v20 = __CFADD__(v18, v19);
      v21 = v18 + v19;
      if (v20)
      {
        __break(1u);
      }

      v17 = vcvtd_n_f64_u64(v21, 0x14uLL);
    }

    *(v0 + 240) = v17;
    v14 = swift_task_alloc();
    *(v0 + 248) = v14;
    *v14 = v0;
    v15 = sub_230E4F80C;
  }

  else
  {
    v14 = swift_task_alloc();
    *(v0 + 232) = v14;
    *v14 = v0;
    v15 = sub_230E4F5E8;
  }

  v14[1] = v15;
  v22 = *(v0 + 104);
  v23 = *(v0 + 112);
  v24 = *(v0 + 96);

  return sub_230E4FA50(v24, v22, v23, v0 + 16);
}

uint64_t sub_230E4F5E8()
{
  v1 = *(*v0 + 216);

  return MEMORY[0x2822009F8](sub_230E4F724, v1, 0);
}

uint64_t sub_230E4F724()
{
  (*(v0[16] + 8))(v0[17], v0[15]);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v1 = v0[1];

  return v1();
}

uint64_t sub_230E4F80C()
{
  v1 = *(*v0 + 216);

  return MEMORY[0x2822009F8](sub_230E4F948, v1, 0);
}

uint64_t sub_230E4F948()
{
  sub_230E4D2AC(44, *(v0 + 240), *(v0 + 632) != 0, v0 + 16, *(v0 + 224));
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230E4FA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 368) = a3;
  *(v4 + 376) = a4;
  *(v4 + 352) = a1;
  *(v4 + 360) = a2;
  *(v4 + 504) = *a4;
  *(v4 + 384) = *(a4 + 8);
  *(v4 + 505) = *(a4 + 24);
  *(v4 + 400) = *(a4 + 32);
  return MEMORY[0x2822009F8](sub_230E4FA98, 0, 0);
}

uint64_t sub_230E4FA98()
{
  v53 = v0;
  v1 = *(v0 + 360);
  v2 = sub_230D0F35C(MEMORY[0x277D84F90]);
  v3 = *(v1 + 16);
  *(v0 + 408) = v3;
  if (v3)
  {
    v4 = 0;
    do
    {
      *(v0 + 440) = v4;
      *(v0 + 448) = v2;
      *(v0 + 424) = 0;
      *(v0 + 432) = 0;
      *(v0 + 416) = v2;
      v5 = *(v0 + 360) + 32 * v4;
      v6 = *(v5 + 32);
      *(v0 + 456) = v6;
      v7 = *(v5 + 40);
      *(v0 + 464) = v7;
      v8 = *(v5 + 48);
      *(v0 + 507) = v8;
      v9 = *(v5 + 56);
      *(v0 + 472) = v9;
      if (*(v9 + 16))
      {
        v45 = *(v0 + 392);
        v44 = *(v0 + 400);
        v46 = *(v0 + 504);
        v48 = *(v0 + 376);
        v47 = *(v0 + 384);
        v49 = *(v0 + 505) & 1 | (*(v0 + 506) << 8);
        *(v0 + 176) = v6;
        *(v0 + 184) = v7;
        *(v0 + 192) = v8;
        *(v0 + 200) = v9;
        *(v0 + 16) = v46;
        *(v0 + 24) = v47;
        *(v0 + 32) = v45;
        *(v0 + 40) = v49;
        *(v0 + 48) = v44;

        sub_230D1CDE0(v48, v0 + 56);
        v50 = swift_task_alloc();
        *(v0 + 480) = v50;
        *v50 = v0;
        v50[1] = sub_230E500E8;
        v51 = *(v0 + 368);

        return sub_230E5818C(v0 + 176, v51, v0 + 16);
      }

      *(v0 + 312) = 0;
      *(v0 + 320) = 0xE000000000000000;

      sub_230E69540();
      v10 = *(v0 + 320);
      *(v0 + 296) = *(v0 + 312);
      *(v0 + 304) = v10;
      MEMORY[0x23191DA00](0x6573616320657355, 0xEA00000000002720);

      MEMORY[0x23191DA00](v6, v7);

      MEMORY[0x23191DA00](0xD000000000000036, 0x8000000230E85030);
      v11 = *(v0 + 296);
      v12 = *(v0 + 304);
      sub_230D0D224();
      v13 = swift_allocError();
      *v14 = v11;
      *(v14 + 8) = v12;
      *(v14 + 16) = 2;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 344) = v2;
      v17 = sub_230DA41A0(v6, v7);
      v18 = v2[2];
      v19 = (v16 & 1) == 0;
      v20 = v18 + v19;
      if (__OFADD__(v18, v19))
      {
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v21 = v16;
      if (v2[3] >= v20)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v2 = *(v0 + 344);
          if (v16)
          {
            goto LABEL_13;
          }
        }

        else
        {
          sub_230DBB0CC();
          v2 = *(v0 + 344);
          if (v21)
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
        sub_230DB8CBC(v20, isUniquelyReferenced_nonNull_native);
        v22 = sub_230DA41A0(v6, v7);
        if ((v21 & 1) != (v23 & 1))
        {

          return sub_230E69950();
        }

        v17 = v22;
        v2 = *(v0 + 344);
        if (v21)
        {
LABEL_13:
          v24 = v2[7];
          v25 = *(v24 + 8 * v17);
          *(v24 + 8 * v17) = v13;
          MEMORY[0x23191E910](v25);

          goto LABEL_17;
        }
      }

      v2[(v17 >> 6) + 8] |= 1 << v17;
      v26 = (v2[6] + 16 * v17);
      *v26 = v6;
      v26[1] = v7;
      *(v2[7] + 8 * v17) = v13;
      v27 = v2[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_35;
      }

      v2[2] = v29;
LABEL_17:
      if (qword_27DB5A4B0 != -1)
      {
        swift_once();
      }

      v30 = sub_230E68D80();
      __swift_project_value_buffer(v30, qword_27DB80BC0);

      v31 = sub_230E68D60();
      v32 = sub_230E69400();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v52 = v34;
        *v33 = 136315138;

        v35 = sub_230D7E620(v6, v7, &v52);

        *(v33 + 4) = v35;
        _os_log_impl(&dword_230D02000, v31, v32, "[SystemDatabase][storeUseCaseConfiguration] Use case %s failed validation: no workflows provided", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v34);
        MEMORY[0x23191EAE0](v34, -1, -1);
        MEMORY[0x23191EAE0](v33, -1, -1);
      }

      else
      {
      }

      v4 = *(v0 + 440) + 1;
    }

    while (v4 != *(v0 + 408));
  }

  v6 = v2[2];
  if (qword_27DB5A4B0 != -1)
  {
LABEL_36:
    swift_once();
  }

  v36 = sub_230E68D80();
  __swift_project_value_buffer(v36, qword_27DB80BC0);

  v37 = sub_230E68D60();
  v38 = sub_230E693E0();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = *(v0 + 408);
    v40 = swift_slowAlloc();
    *v40 = 134218496;
    *(v40 + 4) = v39;

    *(v40 + 12) = 2048;
    *(v40 + 14) = 0;
    *(v40 + 22) = 2048;
    *(v40 + 24) = v6;

    _os_log_impl(&dword_230D02000, v37, v38, "[SystemDatabase][storeUseCaseConfiguration] Processed %ld use cases: %ld succeeded, %ld failed", v40, 0x20u);
    MEMORY[0x23191EAE0](v40, -1, -1);
  }

  else
  {
  }

  v41 = *(v0 + 352);
  *v41 = 0;
  v41[1] = v6;
  v41[2] = v2;
  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_230E500E8()
{
  v2 = *v1;
  v2[61] = v0;

  sub_230D666B4(v2[2], v2[3], v2[4], v2[5], v2[6]);
  if (v0)
  {
    v3 = sub_230E50F7C;
  }

  else
  {
    v3 = sub_230E5025C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_230E5025C()
{
  v2 = *(v0 + 464);
  v1 = *(v0 + 472);
  v3 = *(v0 + 507);
  v5 = *(v0 + 392);
  v4 = *(v0 + 400);
  v6 = *(v0 + 504);
  v7 = *(v0 + 376);
  v8 = *(v0 + 384);
  v9 = *(v0 + 505) & 1 | (*(v0 + 506) << 8);
  *(v0 + 208) = *(v0 + 456);
  *(v0 + 216) = v2;
  *(v0 + 224) = v3;
  *(v0 + 232) = v1;
  *(v0 + 96) = v6;
  *(v0 + 104) = v8;
  *(v0 + 112) = v5;
  *(v0 + 120) = v9;
  *(v0 + 128) = v4;
  sub_230D1CDE0(v7, v0 + 136);
  v10 = swift_task_alloc();
  *(v0 + 496) = v10;
  *v10 = v0;
  v10[1] = sub_230E50350;
  v11 = *(v0 + 368);

  return sub_230E518C4(v0 + 240, v0 + 208, v11, v0 + 96);
}

uint64_t sub_230E50350()
{
  v1 = *v0;

  sub_230D666B4(v1[12], v1[13], v1[14], v1[15], v1[16]);

  return MEMORY[0x2822009F8](sub_230E504B8, 0, 0);
}

uint64_t sub_230E504B8()
{
  v85 = v0;
  v2 = *(v0 + 248);
  if (v2 <= 0)
  {
    v22 = *(v0 + 424);
    v83 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
    }

    else
    {
      v1 = *(v0 + 240);
      if (qword_27DB5A4B0 == -1)
      {
LABEL_8:
        v23 = sub_230E68D80();
        __swift_project_value_buffer(v23, qword_27DB80BC0);

        v24 = sub_230E68D60();
        v25 = sub_230E693F0();

        v26 = os_log_type_enabled(v24, v25);
        v27 = *(v0 + 464);
        if (v26)
        {
          v28 = v1;
          v29 = *(v0 + 456);
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v84 = v31;
          *v30 = 136315394;

          v32 = sub_230D7E620(v29, v27, &v84);

          *(v30 + 4) = v32;
          *(v30 + 12) = 2048;

          *(v30 + 14) = v28;

          _os_log_impl(&dword_230D02000, v24, v25, "[SystemDatabase][storeUseCaseConfiguration] Successfully processed use case: %s with %ld workflows", v30, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v31);
          MEMORY[0x23191EAE0](v31, -1, -1);
          MEMORY[0x23191EAE0](v30, -1, -1);
        }

        else
        {
          swift_bridgeObjectRelease_n();
        }

        v34 = *(v0 + 448);
        v12 = *(v0 + 416);
        v33 = v83;
        goto LABEL_14;
      }
    }

    swift_once();
    goto LABEL_8;
  }

  v4 = *(v0 + 456);
  v3 = *(v0 + 464);
  v5 = *(v0 + 416);
  *(v0 + 280) = 0;
  *(v0 + 288) = 0xE000000000000000;
  sub_230E69540();

  *(v0 + 264) = 0xD000000000000010;
  *(v0 + 272) = 0x8000000230E84FF0;
  v82 = v2;
  *(v0 + 336) = v2;
  v6 = sub_230E69890();
  MEMORY[0x23191DA00](v6);

  MEMORY[0x23191DA00](0xD000000000000018, 0x8000000230E85010);

  MEMORY[0x23191DA00](v4, v3);

  v7 = *(v0 + 264);
  v8 = *(v0 + 272);
  sub_230D0D224();
  v9 = swift_allocError();
  *v10 = v7;
  *(v10 + 8) = v8;
  *(v10 + 16) = 2;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v84 = v5;
  sub_230E1C2F0(v9, v4, v3, isUniquelyReferenced_nonNull_native);

  v12 = v5;
  if (qword_27DB5A4B0 != -1)
  {
    swift_once();
  }

  v13 = sub_230E68D80();
  __swift_project_value_buffer(v13, qword_27DB80BC0);

  v14 = sub_230E68D60();
  v15 = sub_230E69400();

  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 464);
  if (v16)
  {
    v18 = *(v0 + 456);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v84 = v20;
    *v19 = 136315394;

    v21 = sub_230D7E620(v18, v17, &v84);

    *(v19 + 4) = v21;
    *(v19 + 12) = 2048;

    *(v19 + 14) = v82;

    _os_log_impl(&dword_230D02000, v14, v15, "[SystemDatabase][storeUseCaseConfiguration] Use case %s failed due to workflow failures: %ld workflows failed", v19, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x23191EAE0](v20, -1, -1);
    MEMORY[0x23191EAE0](v19, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v33 = *(v0 + 432);
  v83 = *(v0 + 424);
  v34 = v12;
LABEL_14:
  v35 = *(v0 + 440) + 1;
  if (v35 != *(v0 + 408))
  {
    v81 = v33;
    do
    {
      *(v0 + 440) = v35;
      *(v0 + 448) = v34;
      *(v0 + 424) = v83;
      *(v0 + 432) = v33;
      *(v0 + 416) = v12;
      v44 = *(v0 + 360) + 32 * v35;
      v33 = *(v44 + 32);
      *(v0 + 456) = v33;
      v45 = *(v44 + 40);
      *(v0 + 464) = v45;
      v46 = *(v44 + 48);
      *(v0 + 507) = v46;
      v47 = *(v44 + 56);
      *(v0 + 472) = v47;
      if (*(v47 + 16))
      {
        v74 = *(v0 + 392);
        v73 = *(v0 + 400);
        v75 = *(v0 + 504);
        v77 = *(v0 + 376);
        v76 = *(v0 + 384);
        v78 = *(v0 + 505) & 1 | (*(v0 + 506) << 8);
        *(v0 + 176) = v33;
        *(v0 + 184) = v45;
        *(v0 + 192) = v46;
        *(v0 + 200) = v47;
        *(v0 + 16) = v75;
        *(v0 + 24) = v76;
        *(v0 + 32) = v74;
        *(v0 + 40) = v78;
        *(v0 + 48) = v73;

        sub_230D1CDE0(v77, v0 + 56);
        v79 = swift_task_alloc();
        *(v0 + 480) = v79;
        *v79 = v0;
        v79[1] = sub_230E500E8;
        v80 = *(v0 + 368);

        return sub_230E5818C(v0 + 176, v80, v0 + 16);
      }

      *(v0 + 312) = 0;
      *(v0 + 320) = 0xE000000000000000;

      sub_230E69540();
      v48 = *(v0 + 320);
      *(v0 + 296) = *(v0 + 312);
      *(v0 + 304) = v48;
      MEMORY[0x23191DA00](0x6573616320657355, 0xEA00000000002720);

      MEMORY[0x23191DA00](v33, v45);

      MEMORY[0x23191DA00](0xD000000000000036, 0x8000000230E85030);
      v50 = *(v0 + 296);
      v49 = *(v0 + 304);
      sub_230D0D224();
      v51 = swift_allocError();
      *v52 = v50;
      *(v52 + 8) = v49;
      *(v52 + 16) = 2;

      v34 = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 344) = v12;
      v54 = sub_230DA41A0(v33, v45);
      v55 = *(v12 + 16);
      v56 = (v53 & 1) == 0;
      v57 = v55 + v56;
      if (__OFADD__(v55, v56))
      {
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v58 = v53;
      if (*(v12 + 24) >= v57)
      {
        if (v34)
        {
          v34 = *(v0 + 344);
          if (v53)
          {
            goto LABEL_29;
          }
        }

        else
        {
          sub_230DBB0CC();
          v34 = *(v0 + 344);
          if (v58)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
        sub_230DB8CBC(v57, v34);
        v59 = sub_230DA41A0(v33, v45);
        if ((v58 & 1) != (v60 & 1))
        {

          return sub_230E69950();
        }

        v54 = v59;
        v34 = *(v0 + 344);
        if (v58)
        {
LABEL_29:
          v61 = *(v34 + 56);
          v62 = *(v61 + 8 * v54);
          *(v61 + 8 * v54) = v51;
          MEMORY[0x23191E910](v62);

          goto LABEL_33;
        }
      }

      *(v34 + 8 * (v54 >> 6) + 64) |= 1 << v54;
      v63 = (*(v34 + 48) + 16 * v54);
      *v63 = v33;
      v63[1] = v45;
      *(*(v34 + 56) + 8 * v54) = v51;
      v64 = *(v34 + 16);
      v65 = __OFADD__(v64, 1);
      v66 = v64 + 1;
      if (v65)
      {
        goto LABEL_48;
      }

      *(v34 + 16) = v66;
LABEL_33:
      if (qword_27DB5A4B0 != -1)
      {
        swift_once();
      }

      v67 = sub_230E68D80();
      __swift_project_value_buffer(v67, qword_27DB80BC0);

      v68 = sub_230E68D60();
      v69 = sub_230E69400();

      if (os_log_type_enabled(v68, v69))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v84 = v42;
        *v41 = 136315138;

        v43 = sub_230D7E620(v33, v45, &v84);

        *(v41 + 4) = v43;
        _os_log_impl(&dword_230D02000, v68, v69, "[SystemDatabase][storeUseCaseConfiguration] Use case %s failed validation: no workflows provided", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v42);
        MEMORY[0x23191EAE0](v42, -1, -1);
        MEMORY[0x23191EAE0](v41, -1, -1);
      }

      else
      {
      }

      v33 = v81;
      v35 = *(v0 + 440) + 1;
      v12 = v34;
    }

    while (v35 != *(v0 + 408));
  }

  v12 = *(v34 + 16);
  if (qword_27DB5A4B0 != -1)
  {
LABEL_49:
    swift_once();
  }

  v36 = sub_230E68D80();
  __swift_project_value_buffer(v36, qword_27DB80BC0);

  v37 = sub_230E68D60();
  v38 = sub_230E693E0();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = *(v0 + 408);
    v40 = swift_slowAlloc();
    *v40 = 134218496;
    *(v40 + 4) = v39;

    *(v40 + 12) = 2048;
    *(v40 + 14) = v33;
    *(v40 + 22) = 2048;
    *(v40 + 24) = v12;

    _os_log_impl(&dword_230D02000, v37, v38, "[SystemDatabase][storeUseCaseConfiguration] Processed %ld use cases: %ld succeeded, %ld failed", v40, 0x20u);
    MEMORY[0x23191EAE0](v40, -1, -1);
  }

  else
  {
  }

  v70 = *(v0 + 352);
  *v70 = v33;
  v70[1] = v12;
  v70[2] = v34;
  v71 = *(v0 + 8);

  return v71();
}

unint64_t sub_230E50F7C()
{
  v90 = v0;
  v1 = *(v0 + 488);
  v3 = *(v0 + 456);
  v2 = *(v0 + 464);
  v4 = *(v0 + 416);

  v5 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 328) = v4;
  result = sub_230DA41A0(v3, v2);
  v9 = *(v4 + 16);
  v10 = (v8 & 1) == 0;
  v11 = __OFADD__(v9, v10);
  v12 = v9 + v10;
  if (v11)
  {
LABEL_50:
    __break(1u);
  }

  else
  {
    v13 = v8;
    if (*(*(v0 + 416) + 24) >= v12)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v84 = result;
        sub_230DBB0CC();
        result = v84;
      }
    }

    else
    {
      v15 = *(v0 + 456);
      v14 = *(v0 + 464);
      sub_230DB8CBC(v12, isUniquelyReferenced_nonNull_native);
      result = sub_230DA41A0(v15, v14);
      if ((v13 & 1) != (v16 & 1))
      {
LABEL_4:

        return sub_230E69950();
      }
    }

    isUniquelyReferenced_nonNull_native = *(v0 + 328);
    v17 = *(v0 + 488);
    v18 = *(v0 + 464);
    if (v13)
    {
      v19 = *(isUniquelyReferenced_nonNull_native + 56);
      v20 = *(v19 + 8 * result);
      *(v19 + 8 * result) = v17;
      MEMORY[0x23191E910](v20);
    }

    else
    {
      v21 = *(v0 + 456);
      *(isUniquelyReferenced_nonNull_native + 8 * (result >> 6) + 64) |= 1 << result;
      v22 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * result);
      *v22 = v21;
      v22[1] = v18;
      *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * result) = v17;
      v23 = *(isUniquelyReferenced_nonNull_native + 16);
      v11 = __OFADD__(v23, 1);
      v24 = v23 + 1;
      if (v11)
      {
        __break(1u);
        return result;
      }

      *(isUniquelyReferenced_nonNull_native + 16) = v24;
    }

    if (qword_27DB5A4B0 == -1)
    {
      goto LABEL_14;
    }
  }

  swift_once();
LABEL_14:
  v25 = *(v0 + 488);
  v88 = sub_230E68D80();
  __swift_project_value_buffer(v88, qword_27DB80BC0);

  v26 = v25;
  v27 = sub_230E68D60();
  v28 = sub_230E69400();

  MEMORY[0x23191E910](v25);
  v29 = os_log_type_enabled(v27, v28);
  v30 = *(v0 + 488);
  v31 = *(v0 + 464);
  if (v29)
  {
    v86 = *(v0 + 456);
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v89 = v34;
    *v32 = 136315394;

    v35 = sub_230D7E620(v86, v31, &v89);

    *(v32 + 4) = v35;
    *(v32 + 12) = 2112;
    v36 = v30;
    v37 = _swift_stdlib_bridgeErrorToNSError();
    *(v32 + 14) = v37;
    *v33 = v37;
    _os_log_impl(&dword_230D02000, v27, v28, "[SystemDatabase][storeUseCaseConfiguration] Failed to process use case %s: %@", v32, 0x16u);
    sub_230D2D9F8(v33, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v33, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x23191EAE0](v34, -1, -1);
    MEMORY[0x23191EAE0](v32, -1, -1);
    MEMORY[0x23191E910](v30);
  }

  else
  {

    MEMORY[0x23191E910](v30);
  }

  v38 = *(v0 + 432);
  v39 = *(v0 + 440) + 1;
  if (v39 == *(v0 + 408))
  {
LABEL_18:
    v40 = *(isUniquelyReferenced_nonNull_native + 16);
    if (qword_27DB5A4B0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v88, qword_27DB80BC0);

    v41 = sub_230E68D60();
    v42 = sub_230E693E0();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = *(v0 + 408);
      v44 = swift_slowAlloc();
      *v44 = 134218496;
      *(v44 + 4) = v43;

      *(v44 + 12) = 2048;
      *(v44 + 14) = v38;
      *(v44 + 22) = 2048;
      *(v44 + 24) = v40;

      _os_log_impl(&dword_230D02000, v41, v42, "[SystemDatabase][storeUseCaseConfiguration] Processed %ld use cases: %ld succeeded, %ld failed", v44, 0x20u);
      MEMORY[0x23191EAE0](v44, -1, -1);
    }

    else
    {
    }

    v74 = *(v0 + 352);
    *v74 = v38;
    v74[1] = v40;
    v74[2] = isUniquelyReferenced_nonNull_native;
    v75 = *(v0 + 8);

    return v75();
  }

  v87 = *(v0 + 424);
  v85 = *(v0 + 432);
  while (1)
  {
    *(v0 + 440) = v39;
    *(v0 + 448) = isUniquelyReferenced_nonNull_native;
    *(v0 + 424) = v87;
    *(v0 + 432) = v38;
    *(v0 + 416) = isUniquelyReferenced_nonNull_native;
    v48 = *(v0 + 360) + 32 * v39;
    v49 = *(v48 + 32);
    *(v0 + 456) = v49;
    v50 = *(v48 + 40);
    *(v0 + 464) = v50;
    v51 = *(v48 + 48);
    *(v0 + 507) = v51;
    v52 = *(v48 + 56);
    *(v0 + 472) = v52;
    if (*(v52 + 16))
    {
      break;
    }

    *(v0 + 312) = 0;
    *(v0 + 320) = 0xE000000000000000;

    sub_230E69540();
    v53 = *(v0 + 320);
    *(v0 + 296) = *(v0 + 312);
    *(v0 + 304) = v53;
    MEMORY[0x23191DA00](0x6573616320657355, 0xEA00000000002720);

    MEMORY[0x23191DA00](v49, v50);

    MEMORY[0x23191DA00](0xD000000000000036, 0x8000000230E85030);
    v54 = *(v0 + 296);
    v55 = *(v0 + 304);
    sub_230D0D224();
    v56 = swift_allocError();
    *v57 = v54;
    *(v57 + 8) = v55;
    *(v57 + 16) = 2;

    v58 = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 344) = isUniquelyReferenced_nonNull_native;
    v60 = sub_230DA41A0(v49, v50);
    v61 = *(isUniquelyReferenced_nonNull_native + 16);
    v62 = (v59 & 1) == 0;
    v63 = v61 + v62;
    if (__OFADD__(v61, v62))
    {
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v64 = v59;
    if (*(isUniquelyReferenced_nonNull_native + 24) >= v63)
    {
      if (v58)
      {
        isUniquelyReferenced_nonNull_native = *(v0 + 344);
        if (v59)
        {
          goto LABEL_33;
        }
      }

      else
      {
        sub_230DBB0CC();
        isUniquelyReferenced_nonNull_native = *(v0 + 344);
        if (v64)
        {
          goto LABEL_33;
        }
      }
    }

    else
    {
      sub_230DB8CBC(v63, v58);
      v65 = sub_230DA41A0(v49, v50);
      if ((v64 & 1) != (v66 & 1))
      {
        goto LABEL_4;
      }

      v60 = v65;
      isUniquelyReferenced_nonNull_native = *(v0 + 344);
      if (v64)
      {
LABEL_33:
        v67 = *(isUniquelyReferenced_nonNull_native + 56);
        v68 = *(v67 + 8 * v60);
        *(v67 + 8 * v60) = v56;
        MEMORY[0x23191E910](v68);

        goto LABEL_37;
      }
    }

    *(isUniquelyReferenced_nonNull_native + 8 * (v60 >> 6) + 64) |= 1 << v60;
    v69 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v60);
    *v69 = v49;
    v69[1] = v50;
    *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v60) = v56;
    v70 = *(isUniquelyReferenced_nonNull_native + 16);
    v11 = __OFADD__(v70, 1);
    v71 = v70 + 1;
    if (v11)
    {
      goto LABEL_49;
    }

    *(isUniquelyReferenced_nonNull_native + 16) = v71;
LABEL_37:
    if (qword_27DB5A4B0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v88, qword_27DB80BC0);

    v72 = sub_230E68D60();
    v73 = sub_230E69400();

    if (os_log_type_enabled(v72, v73))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v89 = v46;
      *v45 = 136315138;

      v47 = sub_230D7E620(v49, v50, &v89);

      *(v45 + 4) = v47;
      _os_log_impl(&dword_230D02000, v72, v73, "[SystemDatabase][storeUseCaseConfiguration] Use case %s failed validation: no workflows provided", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x23191EAE0](v46, -1, -1);
      MEMORY[0x23191EAE0](v45, -1, -1);
    }

    else
    {
    }

    v38 = v85;
    v39 = *(v0 + 440) + 1;
    if (v39 == *(v0 + 408))
    {
      goto LABEL_18;
    }
  }

  v77 = *(v0 + 392);
  v76 = *(v0 + 400);
  v78 = *(v0 + 504);
  v80 = *(v0 + 376);
  v79 = *(v0 + 384);
  v81 = *(v0 + 505) & 1 | (*(v0 + 506) << 8);
  *(v0 + 176) = v49;
  *(v0 + 184) = v50;
  *(v0 + 192) = v51;
  *(v0 + 200) = v52;
  *(v0 + 16) = v78;
  *(v0 + 24) = v79;
  *(v0 + 32) = v77;
  *(v0 + 40) = v81;
  *(v0 + 48) = v76;

  sub_230D1CDE0(v80, v0 + 56);
  v82 = swift_task_alloc();
  *(v0 + 480) = v82;
  *v82 = v0;
  v82[1] = sub_230E500E8;
  v83 = *(v0 + 368);

  return sub_230E5818C(v0 + 176, v83, v0 + 16);
}

uint64_t sub_230E518C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 584) = a3;
  *(v4 + 576) = a1;
  *(v4 + 592) = *a2;
  *(v4 + 608) = *(a2 + 24);
  v5 = *(a4 + 16);
  *(v4 + 616) = *a4;
  *(v4 + 632) = v5;
  *(v4 + 648) = *(a4 + 32);
  return MEMORY[0x2822009F8](sub_230E5190C, 0, 0);
}

uint64_t sub_230E5190C()
{
  v1 = *(v0 + 608);
  v2 = sub_230D0F35C(MEMORY[0x277D84F90]);
  v3 = *(v1 + 16);
  *(v0 + 656) = v3;
  if (v3)
  {
    v4 = 0x746C7561666564;
    v5 = *(v0 + 608);
    *(v0 + 696) = v2;
    *(v0 + 672) = 0;
    *(v0 + 688) = 0;
    *(v0 + 680) = 0;
    *(v0 + 664) = v2;
    v6 = v5[5];
    v7 = v5[6];
    v8 = v5[7];
    *(v0 + 105) = *(v5 + 121);
    *(v0 + 80) = v7;
    *(v0 + 96) = v8;
    *(v0 + 64) = v6;
    v9 = v5[2];
    v10 = v5[4];
    *(v0 + 32) = v5[3];
    *(v0 + 48) = v10;
    *(v0 + 16) = v9;
    v11 = *(v0 + 24);
    v12 = *(v0 + 600);
    v13 = *(v0 + 592);
    if (*(v0 + 120))
    {
      v14 = (v0 + 552);
      v15 = (v0 + 560);
      v17 = *(v0 + 104);
      v16 = *(v0 + 112);
      v18 = *(v0 + 16);
      *(v0 + 552) = v13;
      *(v0 + 560) = v12;

      sub_230D2D898(v0 + 16, v0 + 352);
      MEMORY[0x23191DA00](95, 0xE100000000000000);
      if (v16)
      {
        v4 = v17;
        v19 = v16;
      }

      else
      {
        v19 = 0xE700000000000000;
      }

      MEMORY[0x23191DA00](v4, v19);

      MEMORY[0x23191DA00](95, 0xE100000000000000);
      v20 = v18;
      v21 = v11;
    }

    else
    {
      v14 = (v0 + 504);
      v26 = *(v0 + 32);
      v15 = (v0 + 512);
      *(v0 + 504) = v13;
      *(v0 + 512) = v12;

      sub_230D2D898(v0 + 16, v0 + 128);
      MEMORY[0x23191DA00](95, 0xE100000000000000);
      if (v26)
      {
        v27 = v26;
      }

      else
      {
        v11 = 0x746C7561666564;
        v27 = 0xE700000000000000;
      }

      MEMORY[0x23191DA00](v11, v27);

      v20 = 0x747369727565685FLL;
      v21 = 0xEA00000000006369;
    }

    MEMORY[0x23191DA00](v20, v21);
    v28 = *v14;
    v29 = *v15;
    *(v0 + 712) = *v15;
    *(v0 + 704) = v28;
    v30 = *(v0 + 648);
    v31 = *(v0 + 96);
    *(v0 + 304) = *(v0 + 80);
    *(v0 + 320) = v31;
    *(v0 + 329) = *(v0 + 105);
    v32 = *(v0 + 32);
    *(v0 + 240) = *(v0 + 16);
    *(v0 + 256) = v32;
    v33 = *(v0 + 64);
    *(v0 + 272) = *(v0 + 48);
    *(v0 + 288) = v33;
    v34 = *(v0 + 632);
    *(v0 + 464) = *(v0 + 616);
    *(v0 + 480) = v34;
    *(v0 + 496) = v30;
    v35 = swift_task_alloc();
    *(v0 + 720) = v35;
    *v35 = v0;
    v35[1] = sub_230E51BCC;
    v36 = *(v0 + 600);
    v37 = *(v0 + 592);
    v38 = *(v0 + 584);

    return sub_230E58914(v0 + 240, v28, v29, v37, v36, v38, v0 + 464);
  }

  else
  {
    v22 = *(v0 + 576);
    v23 = *(v2 + 16);
    *v22 = 0;
    v22[1] = v23;
    v22[2] = v2;
    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_230E51BCC()
{
  v2 = *v1;
  *(*v1 + 728) = v0;

  if (v0)
  {

    v3 = sub_230E52100;
  }

  else
  {
    sub_230D2D8F4(v2 + 16);
    v3 = sub_230E51CF0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_230E51CF0()
{
  v50 = v0;
  v1 = *(v0 + 680);
  v2 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else if (qword_27DB5A4B0 == -1)
  {
    goto LABEL_3;
  }

  swift_once();
LABEL_3:
  v3 = sub_230E68D80();
  __swift_project_value_buffer(v3, qword_27DB80BC0);

  v4 = sub_230E68D60();
  v5 = sub_230E693F0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 712);
  if (v6)
  {
    v8 = *(v0 + 704);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v49 = v10;
    *v9 = 136315138;
    v11 = sub_230D7E620(v8, v7, &v49);

    *(v9 + 4) = v11;
    _os_log_impl(&dword_230D02000, v4, v5, "[SystemDatabase][upsertWorkflowsForUseCase] Successfully processed workflow: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x23191EAE0](v10, -1, -1);
    MEMORY[0x23191EAE0](v9, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 696);
  v13 = *(v0 + 688) + 1;
  if (v13 == *(v0 + 656))
  {
    v14 = *(v0 + 576);
    v15 = *(v12 + 16);
    *v14 = v2;
    v14[1] = v15;
    v14[2] = v12;
    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    v18 = 0x746C7561666564;
    *(v0 + 696) = v12;
    *(v0 + 688) = v13;
    *(v0 + 680) = v2;
    *(v0 + 672) = v2;
    v19 = (*(v0 + 608) + 112 * v13);
    v21 = v19[3];
    v20 = v19[4];
    *(v0 + 16) = v19[2];
    *(v0 + 32) = v21;
    *(v0 + 48) = v20;
    v23 = v19[6];
    v22 = v19[7];
    v24 = v19[5];
    *(v0 + 105) = *(v19 + 121);
    *(v0 + 80) = v23;
    *(v0 + 96) = v22;
    *(v0 + 64) = v24;
    v25 = *(v0 + 24);
    v26 = *(v0 + 600);
    v27 = *(v0 + 592);
    if (*(v0 + 120))
    {
      v28 = (v0 + 552);
      v29 = (v0 + 560);
      v31 = *(v0 + 104);
      v30 = *(v0 + 112);
      v32 = *(v0 + 16);
      *(v0 + 552) = v27;
      *(v0 + 560) = v26;

      sub_230D2D898(v0 + 16, v0 + 352);
      MEMORY[0x23191DA00](95, 0xE100000000000000);
      if (v30)
      {
        v18 = v31;
        v33 = v30;
      }

      else
      {
        v33 = 0xE700000000000000;
      }

      MEMORY[0x23191DA00](v18, v33);

      MEMORY[0x23191DA00](95, 0xE100000000000000);
      v34 = v32;
      v35 = v25;
    }

    else
    {
      v28 = (v0 + 504);
      v36 = *(v0 + 32);
      v29 = (v0 + 512);
      *(v0 + 504) = v27;
      *(v0 + 512) = v26;

      sub_230D2D898(v0 + 16, v0 + 128);
      MEMORY[0x23191DA00](95, 0xE100000000000000);
      if (v36)
      {
        v37 = v36;
      }

      else
      {
        v25 = 0x746C7561666564;
        v37 = 0xE700000000000000;
      }

      MEMORY[0x23191DA00](v25, v37);

      v34 = 0x747369727565685FLL;
      v35 = 0xEA00000000006369;
    }

    MEMORY[0x23191DA00](v34, v35);
    v38 = *v28;
    v39 = *v29;
    *(v0 + 712) = *v29;
    *(v0 + 704) = v38;
    v40 = *(v0 + 648);
    v41 = *(v0 + 96);
    *(v0 + 304) = *(v0 + 80);
    *(v0 + 320) = v41;
    *(v0 + 329) = *(v0 + 105);
    v42 = *(v0 + 32);
    *(v0 + 240) = *(v0 + 16);
    *(v0 + 256) = v42;
    v43 = *(v0 + 64);
    *(v0 + 272) = *(v0 + 48);
    *(v0 + 288) = v43;
    v44 = *(v0 + 632);
    *(v0 + 464) = *(v0 + 616);
    *(v0 + 480) = v44;
    *(v0 + 496) = v40;
    v45 = swift_task_alloc();
    *(v0 + 720) = v45;
    *v45 = v0;
    v45[1] = sub_230E51BCC;
    v46 = *(v0 + 600);
    v47 = *(v0 + 592);
    v48 = *(v0 + 584);

    return sub_230E58914(v0 + 240, v38, v39, v47, v46, v48, v0 + 464);
  }
}

unint64_t sub_230E52100()
{
  v86 = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 600);
  v4 = *(v0 + 592);
  if (*(v0 + 120))
  {
    v5 = (v0 + 536);
    v6 = (v0 + 544);
    v8 = *(v0 + 104);
    v7 = *(v0 + 112);
    v9 = *(v0 + 16);
    *(v0 + 536) = v4;
    *(v0 + 544) = v3;

    MEMORY[0x23191DA00](95, 0xE100000000000000);
    if (v7)
    {
      v10 = v7;
    }

    else
    {
      v8 = 0x746C7561666564;
      v10 = 0xE700000000000000;
    }

    MEMORY[0x23191DA00](v8, v10);

    MEMORY[0x23191DA00](95, 0xE100000000000000);
    v11 = v9;
    v12 = v2;
  }

  else
  {
    v5 = (v0 + 520);
    v13 = *(v0 + 32);
    v6 = (v0 + 528);
    *(v0 + 520) = v4;
    *(v0 + 528) = v3;

    MEMORY[0x23191DA00](95, 0xE100000000000000);
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v2 = 0x746C7561666564;
      v14 = 0xE700000000000000;
    }

    MEMORY[0x23191DA00](v2, v14);

    v11 = 0x747369727565685FLL;
    v12 = 0xEA00000000006369;
  }

  MEMORY[0x23191DA00](v11, v12);
  sub_230D2D8F4(v0 + 16);
  v15 = *v5;
  v16 = *v6;
  v17 = *(v0 + 728);
  v18 = *(v0 + 664);

  v19 = v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 568) = v18;
  result = sub_230DA41A0(v15, v16);
  v23 = *(v18 + 16);
  v24 = (v22 & 1) == 0;
  v25 = __OFADD__(v23, v24);
  v26 = v23 + v24;
  if (v25)
  {
    __break(1u);
LABEL_43:
    swift_once();
    goto LABEL_23;
  }

  v27 = v22;
  if (*(*(v0 + 664) + 24) >= v26)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v84 = result;
      sub_230DBB0CC();
      result = v84;
    }
  }

  else
  {
    sub_230DB8CBC(v26, isUniquelyReferenced_nonNull_native);
    result = sub_230DA41A0(v15, v16);
    if ((v27 & 1) != (v28 & 1))
    {

      return sub_230E69950();
    }
  }

  v1 = *(v0 + 568);
  v29 = *(v0 + 728);
  if (v27)
  {
    v30 = v1[7];
    v31 = *(v30 + 8 * result);
    *(v30 + 8 * result) = v29;
    MEMORY[0x23191E910](v31);
  }

  else
  {
    v1[(result >> 6) + 8] |= 1 << result;
    v32 = (v1[6] + 16 * result);
    *v32 = v15;
    v32[1] = v16;
    *(v1[7] + 8 * result) = v29;
    v33 = v1[2];
    v25 = __OFADD__(v33, 1);
    v34 = v33 + 1;
    if (v25)
    {
      __break(1u);
      return result;
    }

    v1[2] = v34;
  }

  if (qword_27DB5A4B0 != -1)
  {
    goto LABEL_43;
  }

LABEL_23:
  v35 = *(v0 + 728);
  v36 = sub_230E68D80();
  __swift_project_value_buffer(v36, qword_27DB80BC0);

  v37 = v35;
  v38 = sub_230E68D60();
  v39 = sub_230E69400();

  MEMORY[0x23191E910](v35);
  v40 = os_log_type_enabled(v38, v39);
  v41 = *(v0 + 728);
  if (v40)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v85 = v44;
    *v42 = 136315394;
    v45 = sub_230D7E620(v15, v16, &v85);

    *(v42 + 4) = v45;
    *(v42 + 12) = 2112;
    v46 = v41;
    v47 = _swift_stdlib_bridgeErrorToNSError();
    *(v42 + 14) = v47;
    *v43 = v47;
    _os_log_impl(&dword_230D02000, v38, v39, "[SystemDatabase][upsertWorkflowsForUseCase] Failed to process workflow %s: %@", v42, 0x16u);
    sub_230D2D9F8(v43, &qword_27DB5D7D0, &qword_230E734E0);
    MEMORY[0x23191EAE0](v43, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v44);
    MEMORY[0x23191EAE0](v44, -1, -1);
    MEMORY[0x23191EAE0](v42, -1, -1);
    MEMORY[0x23191E910](v41);
  }

  else
  {

    MEMORY[0x23191E910](v41);
  }

  v48 = *(v0 + 672);
  v49 = *(v0 + 688) + 1;
  if (v49 == *(v0 + 656))
  {
    v50 = *(v0 + 576);
    v51 = v1[2];
    *v50 = v48;
    v50[1] = v51;
    v50[2] = v1;
    v52 = *(v0 + 8);

    return v52();
  }

  else
  {
    v53 = (v0 + 240);
    *(v0 + 696) = v1;
    *(v0 + 688) = v49;
    *(v0 + 672) = v48;
    *(v0 + 664) = v1;
    v54 = (*(v0 + 608) + 112 * v49);
    v56 = v54[3];
    v55 = v54[4];
    *(v0 + 16) = v54[2];
    *(v0 + 32) = v56;
    *(v0 + 48) = v55;
    v58 = v54[6];
    v57 = v54[7];
    v59 = v54[5];
    *(v0 + 105) = *(v54 + 121);
    *(v0 + 80) = v58;
    *(v0 + 96) = v57;
    *(v0 + 64) = v59;
    v60 = *(v0 + 24);
    v61 = *(v0 + 600);
    v62 = *(v0 + 592);
    if (*(v0 + 120))
    {
      v63 = (v0 + 552);
      v64 = (v0 + 560);
      v66 = *(v0 + 104);
      v65 = *(v0 + 112);
      v67 = *(v0 + 16);
      *(v0 + 552) = v62;
      *(v0 + 560) = v61;

      sub_230D2D898(v0 + 16, v0 + 352);
      MEMORY[0x23191DA00](95, 0xE100000000000000);
      if (v65)
      {
        v68 = v65;
      }

      else
      {
        v66 = 0x746C7561666564;
        v68 = 0xE700000000000000;
      }

      MEMORY[0x23191DA00](v66, v68);

      MEMORY[0x23191DA00](95, 0xE100000000000000);
      v69 = v67;
      v70 = v60;
    }

    else
    {
      v63 = (v0 + 504);
      v71 = *(v0 + 32);
      v64 = (v0 + 512);
      *(v0 + 504) = v62;
      *(v0 + 512) = v61;

      sub_230D2D898(v0 + 16, v0 + 128);
      MEMORY[0x23191DA00](95, 0xE100000000000000);
      if (v71)
      {
        v72 = v71;
      }

      else
      {
        v60 = 0x746C7561666564;
        v72 = 0xE700000000000000;
      }

      MEMORY[0x23191DA00](v60, v72);

      v69 = 0x747369727565685FLL;
      v70 = 0xEA00000000006369;
    }

    MEMORY[0x23191DA00](v69, v70);
    v73 = *v63;
    v74 = *v64;
    *(v0 + 712) = *v64;
    *(v0 + 704) = v73;
    v75 = *(v0 + 648);
    v76 = *(v0 + 96);
    *(v0 + 304) = *(v0 + 80);
    *(v0 + 320) = v76;
    *(v0 + 329) = *(v0 + 105);
    v77 = *(v0 + 32);
    *v53 = *(v0 + 16);
    *(v0 + 256) = v77;
    v78 = *(v0 + 64);
    *(v0 + 272) = *(v0 + 48);
    *(v0 + 288) = v78;
    v79 = *(v0 + 632);
    *(v0 + 464) = *(v0 + 616);
    *(v0 + 480) = v79;
    *(v0 + 496) = v75;
    v80 = swift_task_alloc();
    *(v0 + 720) = v80;
    *v80 = v0;
    v80[1] = sub_230E51BCC;
    v81 = *(v0 + 600);
    v82 = *(v0 + 592);
    v83 = *(v0 + 584);

    return sub_230E58914(v53, v73, v74, v82, v81, v83, v0 + 464);
  }
}

uint64_t sub_230E527E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_230E690B0();
  v7 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6, v8);
  v11 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    goto LABEL_54;
  }

  result = sub_230DA41A0(0x776F6C666B726F77, 0xEC00000065707954);
  if ((v12 & 1) == 0)
  {
    goto LABEL_54;
  }

  v13 = *(a1 + 56) + 24 * result;
  v14 = *(v13 + 8);
  if (*(v13 + 16) != 3 || v14 == 0)
  {
    goto LABEL_54;
  }

  v16 = *v13;
  result = 0x636E657265666E69;
  v17 = *v13 == 0x636E657265666E69 && v14 == 0xE900000000000065;
  if (v17 || (result = sub_230E698C0(), (result & 1) != 0))
  {
    if (!*(a1 + 16))
    {
      goto LABEL_54;
    }

    result = sub_230DA41A0(0x6564496C65646F6DLL, 0xEF7265696669746ELL);
    if ((v18 & 1) == 0)
    {
      goto LABEL_54;
    }

    v19 = *(a1 + 56) + 24 * result;
    v20 = *(v19 + 8);
    v21 = *(v19 + 16) != 3 || v20 == 0;
    if (v21 || !*(a1 + 16))
    {
      goto LABEL_54;
    }

    v101 = *v19;

    v22 = sub_230DA41A0(0x726F466C65646F6DLL, 0xEB0000000074616DLL);
    if (v23)
    {
      v100 = v20;
      v24 = *(a1 + 56) + 24 * v22;
      if (*(v24 + 16) == 3)
      {
        v20 = *(v24 + 8);
        if (v20)
        {
          if (*(a1 + 16))
          {
            v99 = *v24;

            v25 = sub_230DA41A0(0x6564497465737361, 0xEF7265696669746ELL);
            if (v26)
            {
              v27 = *(a1 + 56) + 24 * v25;
              v28 = v101;
              if (*(v27 + 16) == 3)
              {
                v29 = *v27;
                v30 = *(v27 + 8);
                if (!v30)
                {
                  sub_230D0DCD8(v29, 0, 3);
                  sub_230D0F474(v99, v20, 3);
                  v55 = v28;
                  v56 = v100;
                  goto LABEL_53;
                }

                if (!*(a1 + 16))
                {
                  v58 = *v27;
                  sub_230D0DCD8(v29, *(v27 + 8), 3);
                  sub_230D0F474(v101, v100, 3);
                  sub_230D0F474(v99, v20, 3);
                  v55 = v58;
                  v56 = v30;
                  goto LABEL_53;
                }

                v97 = *v27;
                v98 = v30;

                v31 = sub_230DA41A0(0xD000000000000015, 0x8000000230E80190);
                if ((v32 & 1) == 0 || (v33 = *(a1 + 56) + 24 * v31, *(v33 + 16) != 3))
                {
                  sub_230D0F474(v101, v100, 3);
                  sub_230D0F474(v99, v20, 3);
                  v55 = v97;
                  v56 = v98;
                  goto LABEL_53;
                }

                v35 = *v33;
                v34 = *(v33 + 8);
                v95 = v35;
                v96 = v34;
                if (v34)
                {

                  v36 = v99;
                  v37 = v20;
                  v38 = sub_230E69680();
                  sub_230D0F474(v36, v37, 3);
                  if (!v38)
                  {
                    v94 = 0;
LABEL_66:
                    v61 = sub_230E532B0(a1);
                    v92 = v62;
                    v93 = v61;
                    v63 = sub_230E53350(a1);
                    v90 = v64;
                    v91 = v63;
                    v99 = sub_230D0EE04(MEMORY[0x277D84F90]);
                    if (*(a1 + 16))
                    {
                      v65 = sub_230DA41A0(0xD000000000000010, 0x8000000230E801B0);
                      if (v66)
                      {
                        v67 = *(a1 + 56) + 24 * v65;
                        if (*(v67 + 16) == 3)
                        {
                          v68 = *(v67 + 8);
                          if (v68)
                          {
                            v69 = *v67;
                            v70 = HIBYTE(v68) & 0xF;
                            if ((v68 & 0x2000000000000000) == 0)
                            {
                              v70 = v69 & 0xFFFFFFFFFFFFLL;
                            }

                            if (v70)
                            {

                              sub_230E690A0();
                              v88 = sub_230E69070();
                              v72 = v71;
                              sub_230D0F474(v69, v68, 3);
                              (*(v7 + 8))(v11, v6);
                              v89 = v72;
                              if (v72 >> 60 != 15)
                              {

                                sub_230E686C0();
                                swift_allocObject();
                                sub_230E686B0();
                                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D9A0, &qword_230E77D90);
                                sub_230DD705C(&qword_27DB5C818, sub_230DCA5F4, MEMORY[0x277D83808], MEMORY[0x277D83528]);
                                sub_230E686A0();
                                if (v2)
                                {
                                  MEMORY[0x23191E910](v2);

                                  v99 = sub_230D0EE04(MEMORY[0x277D84F90]);
                                  sub_230D0F494(v88, v89);
                                  v3 = 0;
                                }

                                else
                                {

                                  sub_230D0F494(v88, v89);
                                  v99 = v102;
                                }
                              }
                            }
                          }
                        }
                      }
                    }

                    v73 = sub_230D0EF6C(MEMORY[0x277D84F90]);
                    if (*(a1 + 16))
                    {
                      v74 = sub_230DA41A0(0xD000000000000011, 0x8000000230E801D0);
                      if (v75)
                      {
                        v76 = *(a1 + 56) + 24 * v74;
                        if (*(v76 + 16) == 3)
                        {
                          v77 = *(v76 + 8);
                          if (v77)
                          {
                            v78 = *v76;
                            v79 = HIBYTE(v77) & 0xF;
                            if ((v77 & 0x2000000000000000) == 0)
                            {
                              v79 = v78 & 0xFFFFFFFFFFFFLL;
                            }

                            if (v79)
                            {

                              sub_230E690A0();
                              v89 = sub_230E69070();
                              v81 = v80;
                              sub_230D0F474(v78, v77, 3);
                              (*(v7 + 8))(v11, v6);
                              if (v81 >> 60 != 15)
                              {

                                sub_230E686C0();
                                swift_allocObject();
                                sub_230E686B0();
                                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C828, &qword_230E77DA0);
                                sub_230DD6854(&unk_27DB5D990, sub_230DCA6CC, MEMORY[0x277D83808], MEMORY[0x277D83528]);
                                sub_230E686A0();
                                if (v3)
                                {
                                  MEMORY[0x23191E910](v3);

                                  v73 = sub_230D0EF6C(MEMORY[0x277D84F90]);
                                  sub_230D0F494(v89, v81);
                                }

                                else
                                {

                                  sub_230D0F494(v89, v81);
                                  v73 = v102;
                                }
                              }
                            }
                          }
                        }
                      }
                    }

                    v82 = MEMORY[0x277D84F90];
                    sub_230D0EE04(MEMORY[0x277D84F90]);
                    sub_230D0EF6C(v82);

                    v83 = v100;
                    *a2 = v101;
                    *(a2 + 8) = v83;
                    *(a2 + 16) = v94;
                    v84 = v98;
                    *(a2 + 24) = v97;
                    *(a2 + 32) = v84;
                    v85 = v96;
                    *(a2 + 40) = v95;
                    *(a2 + 48) = v85;
                    v86 = v92;
                    *(a2 + 56) = v93;
                    *(a2 + 64) = v86;
                    *(a2 + 72) = v99;
                    *(a2 + 80) = v73;
                    v87 = v90;
                    *(a2 + 88) = v91;
                    *(a2 + 96) = v87;
                    *(a2 + 104) = 1;
                    return result;
                  }

                  if (v38 == 1)
                  {
                    v94 = 1;
                    goto LABEL_66;
                  }

                  sub_230D0F474(v95, v96, 3);
                  v59 = v97;
                  v60 = v98;
                }

                else
                {
                  sub_230D0DCD8(v95, 0, 3);
                  sub_230D0F474(v97, v98, 3);
                  v59 = v99;
                  v60 = v20;
                }

                sub_230D0F474(v59, v60, 3);
                goto LABEL_52;
              }

              v57 = v101;
            }

            else
            {
              v57 = v101;
            }

            sub_230D0F474(v57, v100, 3);
            v55 = v99;
LABEL_50:
            v56 = v20;
LABEL_53:
            result = sub_230D0F474(v55, v56, 3);
LABEL_54:
            *(a2 + 96) = 0;
            *(a2 + 64) = 0u;
            *(a2 + 80) = 0u;
            *(a2 + 32) = 0u;
            *(a2 + 48) = 0u;
            *a2 = 0u;
            *(a2 + 16) = 0u;
            *(a2 + 104) = -1;
            return result;
          }
        }

        else
        {
          sub_230D0DCD8(*v24, 0, 3);
        }
      }

LABEL_52:
      v56 = v100;
      v55 = v101;
      goto LABEL_53;
    }

    v55 = v101;
    goto LABEL_50;
  }

  v39 = v16 == 1701606770 && v14 == 0xE400000000000000;
  if (v39 || (sub_230E698C0() & 1) != 0)
  {
    v40 = sub_230E53350(a1);
    v42 = v41;
    v43 = sub_230D0EAD0(MEMORY[0x277D84F90]);
    if (*(a1 + 16))
    {
      v101 = v40;
      v44 = sub_230DA41A0(0x6574656D61726170, 0xEA00000000007372);
      if (v45)
      {
        v46 = *(a1 + 56) + 24 * v44;
        if (*(v46 + 16) == 3)
        {
          v47 = *(v46 + 8);
          if (v47)
          {
            v48 = *v46;
            v49 = HIBYTE(v47) & 0xF;
            if ((v47 & 0x2000000000000000) == 0)
            {
              v49 = v48 & 0xFFFFFFFFFFFFLL;
            }

            if (v49)
            {

              sub_230E690A0();
              v99 = sub_230E69070();
              v100 = v50;
              sub_230D0F474(v48, v47, 3);
              v51 = v11;
              v52 = v100;
              (*(v7 + 8))(v51, v6);
              if (v52 >> 60 != 15)
              {

                sub_230E686C0();
                swift_allocObject();
                sub_230E686B0();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAD0, &qword_230E73560);
                sub_230D6C1DC(&qword_27DB5D980, MEMORY[0x277D83808], MEMORY[0x277D83A30], MEMORY[0x277D83528]);
                v53 = v99;
                sub_230E686A0();
                if (v2)
                {
                  MEMORY[0x23191E910](v2);

                  v43 = sub_230D0EAD0(MEMORY[0x277D84F90]);
                  sub_230D0F494(v53, v52);
                }

                else
                {

                  sub_230D0F494(v53, v52);
                  v43 = v102;
                }
              }
            }
          }
        }
      }

      v40 = v101;
    }

    sub_230D0EAD0(MEMORY[0x277D84F90]);

    LOBYTE(v102) = 0;
    *a2 = v43;
    *(a2 + 8) = v40;
    *(a2 + 16) = v42;
    *(a2 + 104) = 0;
  }

  else
  {
    sub_230E57704();
    swift_allocError();
    *v54 = 0;
    v54[1] = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_230E532B0(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = sub_230DA41A0(0x7269447465737361, 0xEE0079726F746365);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 56) + 24 * v2;
  if (*(v4 + 16) != 3 || *(v4 + 8) == 0)
  {
    return 0;
  }

  v6 = *v4;

  return v6;
}

uint64_t sub_230E53350(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = sub_230DA41A0(0xD000000000000013, 0x8000000230E801F0);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 56) + 24 * v2;
  if (*(v4 + 16) != 3 || *(v4 + 8) == 0)
  {
    return 0;
  }

  v6 = *v4;

  return v6;
}

uint64_t static SystemDatabase.queryActiveWorkflowByAsset(_:using:requestContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 120) = a3;
  *(v5 + 128) = a4;
  *(v5 + 104) = a1;
  *(v5 + 112) = a2;
  v7 = sub_230E68D80();
  *(v5 + 136) = v7;
  *(v5 + 144) = *(v7 - 8);
  *(v5 + 152) = swift_task_alloc();
  v8 = *(a5 + 16);
  *(v5 + 160) = *a5;
  *(v5 + 176) = v8;
  *(v5 + 192) = *(a5 + 32);

  return MEMORY[0x2822009F8](sub_230E534EC, 0, 0);
}

uint64_t sub_230E534EC()
{
  v1 = *(v0 + 176);
  if (v1)
  {
    v2 = *(v0 + 184);
    v3 = *(v0 + 192);
    v4 = *(v0 + 160);
    v5 = *(v0 + 168);
    *(v0 + 216) = v1;
    *(v0 + 224) = v3;
    *(v0 + 671) = BYTE1(v2);
    *(v0 + 670) = v2 & 1;
    *(v0 + 208) = v5;
    *(v0 + 669) = v4;
    *(v0 + 16) = v4;
    *(v0 + 24) = v5;
    *(v0 + 32) = v1;
    *(v0 + 40) = v2 & 1;
    *(v0 + 41) = BYTE1(v2);
    *(v0 + 48) = v3;
    sub_230D0585C(v4, v5, v1, v2, v3);
    if (qword_27DB5A430 != -1)
    {
      swift_once();
    }

    v6 = qword_27DB5A438;
    *(v0 + 232) = qword_27DB5A438;

    return MEMORY[0x2822009F8](sub_230E53948, v6, 0);
  }

  else
  {
    *(v0 + 668) = 46;
    v7 = swift_task_alloc();
    *(v0 + 200) = v7;
    *v7 = v0;
    v7[1] = sub_230E536D8;

    return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 668), 0, 0);
  }
}

uint64_t sub_230E536D8()
{

  return MEMORY[0x2822009F8](sub_230E53800, 0, 0);
}

uint64_t sub_230E53800()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 81);
  v6 = *(v0 + 88);
  *(v0 + 216) = v3;
  *(v0 + 224) = v6;
  *(v0 + 671) = v5;
  *(v0 + 670) = v4;
  *(v0 + 208) = v2;
  *(v0 + 669) = v1;
  v7 = *(v0 + 184);
  v8 = *(v0 + 192);
  v9 = *(v0 + 168);
  v10 = *(v0 + 176);
  v11 = *(v0 + 160);
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 41) = v5;
  *(v0 + 48) = v6;
  sub_230D0585C(v11, v9, v10, v7, v8);
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v12 = qword_27DB5A438;
  *(v0 + 232) = qword_27DB5A438;

  return MEMORY[0x2822009F8](sub_230E53948, v12, 0);
}

uint64_t sub_230E53948()
{
  v28 = v0;
  v27[1] = *MEMORY[0x277D85DE8];
  sub_230E68D70();

  v1 = sub_230E68D60();
  v2 = sub_230E693E0();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 208);
    v3 = *(v0 + 216);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v27[0] = v6;
    *v5 = 136315650;
    *(v5 + 4) = sub_230D7E620(0xD00000000000001ALL, 0x8000000230E80990, v27);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_230D7E620(v4, v3, v27);
    *(v5 + 22) = 2080;
    v7 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v7);

    v8 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v27);

    *(v5 + 24) = v8;
    _os_log_impl(&dword_230D02000, v1, v2, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v6, -1, -1);
    MEMORY[0x23191EAE0](v5, -1, -1);
  }

  if (*(v0 + 670) == 1 && ((v9 = *(v0 + 224), v10 = *(v0 + 671), v11 = RequestType.rawValue.getter(), v13 = v12, , LOBYTE(v11) = sub_230D33FDC(v11, v13, v9), , , (v11 & 1) != 0) || v10 >= 2))
  {
    sub_230E68950();
    *(v0 + 240) = CFAbsoluteTimeGetCurrent();
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0u;
    *(v0 + 400) = 0u;
    *(v0 + 416) = 0u;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    *(v0 + 512) = 0u;
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    *(v0 + 560) = 0u;
    *(v0 + 576) = 0u;
    *(v0 + 592) = 0u;
    *(v0 + 608) = 0u;
    *(v0 + 624) = 0u;
    *(v0 + 640) = 0u;
    *(v0 + 656) = 0;
    *(v0 + 660) = 93;
    v16 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 288), (v0 + 660));
    *(v0 + 664) = v16;
    v17 = 0.0;
    if (!v16)
    {
      v18 = *(v0 + 336);
      v19 = *(v0 + 408);
      v20 = __CFADD__(v18, v19);
      v21 = v18 + v19;
      if (v20)
      {
        __break(1u);
      }

      v17 = vcvtd_n_f64_u64(v21, 0x14uLL);
    }

    *(v0 + 264) = v17;
    *(v0 + 96) = 0;
    v14 = swift_task_alloc();
    *(v0 + 272) = v14;
    *v14 = v0;
    v15 = sub_230E53E98;
  }

  else
  {
    v14 = swift_task_alloc();
    *(v0 + 248) = v14;
    *v14 = v0;
    v15 = sub_230E53D40;
  }

  v14[1] = v15;
  v22 = *(v0 + 120);
  v23 = *(v0 + 128);
  v24 = *(v0 + 104);
  v25 = *(v0 + 112);

  return sub_230E54458(v24, v25, v22, v23, v0 + 16);
}

uint64_t sub_230E53D40()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 232);
  if (v0)
  {
    v4 = sub_230E54370;
  }

  else
  {
    v4 = sub_230E5427C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230E53E98()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 232);
  if (v0)
  {
    v4 = sub_230E54118;
  }

  else
  {
    v4 = sub_230E53FF0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230E53FF0()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  sub_230D3BC54(46, *(v0 + 264), *(v0 + 664) != 0, v0 + 16, (v0 + 96), *(v0 + 240));
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_230E54118(uint64_t a1)
{
  v2 = *(v1 + 280);
  v3 = *(v1 + 264);
  v4 = *(v1 + 240);
  v6 = *(v1 + 144);
  v5 = *(v1 + 152);
  v7 = *(v1 + 136);
  v8 = *(v1 + 664) != 0;
  *(v1 + 96) = v2;
  swift_willThrow();
  v9 = v2;
  sub_230D3BC54(46, v3, v8, v1 + 16, (v1 + 96), v4);
  MEMORY[0x23191E910](v2);
  (*(v6 + 8))(v5, v7);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v10 = *(v1 + 8);

  return v10();
}

uint64_t sub_230E5427C()
{
  (*(v0[18] + 8))(v0[19], v0[17]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_230E54370()
{
  (*(v0[18] + 8))(v0[19], v0[17]);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v1 = v0[1];

  return v1();
}

uint64_t sub_230E54458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[136] = a5;
  v5[135] = a4;
  v5[134] = a3;
  v5[133] = a2;
  v5[132] = a1;
  v5[137] = *(type metadata accessor for Treatment(0) - 8);
  v5[138] = swift_task_alloc();
  v5[139] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_230E54530, 0, 0);
}

uint64_t sub_230E54530()
{
  v1 = *(v0 + 1088);
  v2 = *(v0 + 1080);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1064);
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000013, 0x8000000230E84F50);
  MEMORY[0x23191DA00](v4, v3);
  MEMORY[0x23191DA00](0xD000000000000020, 0x8000000230E84F70);
  *(v0 + 784) = 0u;
  *(v0 + 800) = 0u;
  *(v0 + 816) = 0u;
  *(v0 + 832) = 0u;
  *(v0 + 848) = 0u;
  *(v0 + 864) = 0u;
  *(v0 + 880) = 1;
  sub_230D1D098(v0 + 784);
  *(v0 + 16) = 0x6C666B726F575F5FLL;
  *(v0 + 24) = 0xEA0000000000776FLL;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0xE000000000000000;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 1;
  sub_230D1CDE0(v1, v0 + 928);

  return MEMORY[0x2822009F8](sub_230E54698, v2, 0);
}

uint64_t sub_230E54698()
{
  sub_230D1CDE0(*(v0 + 1088), v0 + 968);
  sub_230D1D0EC(v0 + 16, v0 + 136);

  v1 = swift_task_alloc();
  *(v0 + 1120) = v1;
  *v1 = v0;
  v1[1] = sub_230E54780;
  v2 = *(v0 + 1088);

  return (sub_230D70F74)(v0 + 1048, 2, v2);
}

uint64_t sub_230E54780()
{
  v2 = *v1;
  *(*v1 + 1128) = v0;

  v3 = *(v2 + 1088);
  v4 = *(v2 + 1080);
  sub_230D1CE3C(v3);
  if (v0)
  {
    v5 = sub_230E54F40;
  }

  else
  {
    v5 = sub_230E548C8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_230E548C8()
{
  sub_230D1CE3C(*(v0 + 1088));

  return MEMORY[0x2822009F8](sub_230E54930, 0, 0);
}

uint64_t sub_230E54930()
{
  v60 = v0;
  v1 = *(v0 + 1048);
  v2 = *(v1 + 16);

  if (v2)
  {
    v3 = 0;
    v4 = *(v0 + 1128);
    v5 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
LABEL_44:
        swift_once();
LABEL_33:
        *(v0 + 1144) = qword_27DB5A438;
        *(v0 + 129) = 27;
        v33 = swift_task_alloc();
        *(v0 + 1152) = v33;
        *v33 = v0;
        v33[1] = sub_230E55020;

        return static RequestContext.from(_:correlationID:)(v0 + 1008, (v0 + 129), 0, 0);
      }

      v6 = *(v1 + 32 + 8 * v3);

      sub_230E527E0(v7, &v47);
      if (v4)
      {
        break;
      }

      *(v0 + 345) = *&v52[9];
      v8 = *v52;
      *(v0 + 320) = v51;
      *(v0 + 336) = v8;
      v9 = v48;
      *(v0 + 256) = v47;
      *(v0 + 272) = v9;
      v10 = v50;
      *(v0 + 288) = v49;
      *(v0 + 304) = v10;
      v11 = *(v0 + 360);
      if (v11 == 255)
      {
        goto LABEL_18;
      }

      if ((v11 & 1) == 0 || !*(v6 + 16) || (v12 = sub_230DA41A0(0xD000000000000013, 0x8000000230E801F0), (v13 & 1) == 0))
      {
        sub_230D2D9F8(v0 + 256, &qword_27DB5CD10, &qword_230E7AE20);
        goto LABEL_18;
      }

      v46 = v5;
      v14 = *(v6 + 56) + 24 * v12;
      v16 = *v14;
      v15 = *(v14 + 8);
      v17 = *(v14 + 16);
      sub_230D0DCD8(*v14, v15, *(v14 + 16));

      if (v17 == 3)
      {
        if (v15)
        {
          v18 = v46;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_230E4AEA4(0, v46[2] + 1, 1, v46);
          }

          v20 = v18[2];
          v19 = v18[3];
          v21 = v18;
          if (v20 >= v19 >> 1)
          {
            v21 = sub_230E4AEA4((v19 > 1), v20 + 1, 1, v18);
          }

          v59 = *&v52[16];
          v57 = v51;
          v58 = *v52;
          v55 = v49;
          v56 = v50;
          v53 = v47;
          v54 = v48;
          v21[2] = v20 + 1;
          v22 = &v21[15 * v20];
          v5 = v21;
          v22[4] = v16;
          v22[5] = v15;
          v23 = v53;
          v24 = v55;
          *(v22 + 4) = v54;
          *(v22 + 5) = v24;
          *(v22 + 3) = v23;
          v25 = v56;
          v26 = v57;
          v27 = v58;
          v22[18] = v59;
          *(v22 + 7) = v26;
          *(v22 + 8) = v27;
          *(v22 + 6) = v25;
          goto LABEL_19;
        }
      }

      else
      {
        sub_230D0F474(v16, v15, v17);
      }

      sub_230D2D9F8(v0 + 256, &qword_27DB5CD10, &qword_230E7AE20);
      v5 = v46;
LABEL_19:
      v4 = 0;
      v28 = 0;
      if (v2 == ++v3)
      {
        goto LABEL_24;
      }
    }

    MEMORY[0x23191E910](v4);
LABEL_18:

    goto LABEL_19;
  }

  v28 = *(v0 + 1128);
  v5 = MEMORY[0x277D84F90];
LABEL_24:

  if (v5[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C450, &qword_230E75CA8);
    v29 = sub_230E69640();
  }

  else
  {
    v29 = MEMORY[0x277D84F98];
  }

  *&v47 = v29;

  sub_230E57758(v30, 1, &v47);
  if (v28)
  {

    return swift_unexpectedError();
  }

  else
  {
    sub_230D1D148(v0 + 16);

    v32 = v47;
    *(v0 + 1136) = v47;
    if (*(v32 + 16))
    {
      if (qword_27DB5A430 != -1)
      {
        goto LABEL_44;
      }

      goto LABEL_33;
    }

    if (qword_27DB5A4B0 != -1)
    {
      swift_once();
    }

    v34 = sub_230E68D80();
    __swift_project_value_buffer(v34, qword_27DB80BC0);

    v35 = sub_230E68D60();
    v36 = sub_230E69400();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = *(v0 + 1072);
      v38 = *(v0 + 1064);
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *&v47 = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_230D7E620(v38, v37, &v47);
      _os_log_impl(&dword_230D02000, v35, v36, "[SystemDatabase][queryActiveWorkflowByAsset] No workflows found for asset: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x23191EAE0](v40, -1, -1);
      MEMORY[0x23191EAE0](v39, -1, -1);
    }

    v41 = *(v0 + 1072);
    v42 = *(v0 + 1064);
    *&v47 = 0;
    *(&v47 + 1) = 0xE000000000000000;
    sub_230E69540();

    *&v47 = 0xD00000000000001ELL;
    *(&v47 + 1) = 0x8000000230E84FD0;
    MEMORY[0x23191DA00](v42, v41);
    v43 = v47;
    sub_230D0D224();
    swift_allocError();
    *v44 = v43;
    *(v44 + 16) = 4;
    swift_willThrow();

    v45 = *(v0 + 8);

    return v45();
  }
}

uint64_t sub_230E54F40()
{
  sub_230D1CE3C(*(v0 + 1088));

  return MEMORY[0x2822009F8](sub_230E54FA8, 0, 0);
}

uint64_t sub_230E54FA8()
{
  sub_230D1D148(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230E55020()
{
  v1 = *(*v0 + 1144);

  return MEMORY[0x2822009F8](sub_230E55130, v1, 0);
}

uint64_t sub_230E55130()
{
  v1 = *(v0 + 1008);
  v2 = *(v0 + 1016);
  v3 = *(v0 + 1024);
  *(v0 + 1160) = v3;
  v4 = *(v0 + 1032);
  v5 = *(v0 + 1033);
  v6 = *(v0 + 1040);
  *(v0 + 1168) = v6;
  *(v0 + 888) = v1;
  *(v0 + 896) = v2;
  *(v0 + 904) = v3;
  *(v0 + 912) = v4;
  *(v0 + 913) = v5;
  *(v0 + 920) = v6;

  v7 = swift_task_alloc();
  *(v0 + 1176) = v7;
  *v7 = v0;
  v7[1] = sub_230E55240;
  v8 = *(v0 + 1144);

  return sub_230D76A40(27, v0 + 888, v8, v8, v0 + 888);
}

uint64_t sub_230E55240(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1184) = v1;

  if (v1)
  {
    v5 = *(v4 + 1144);

    v6 = sub_230E55A0C;
    v7 = v5;
  }

  else
  {

    *(v4 + 1192) = a1;
    v6 = sub_230E553BC;
    v7 = 0;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_230E553BC()
{
  v70 = v0;
  v1 = *(v0 + 1192);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (v0 + 576);
    v5 = *(v0 + 1112);
    v6 = *(v0 + 1096);
    v7 = v1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
        goto LABEL_29;
      }

      v8 = *(v0 + 1136);
      sub_230DBCB98(v7 + *(v6 + 72) * v3, *(v0 + 1112));
      if (*(v8 + 16))
      {
        v9 = sub_230DA41A0(*(v5 + 16), *(v5 + 24));
        if (v10)
        {
          break;
        }
      }

      ++v3;
      sub_230DBCBFC(*(v0 + 1112));
      if (v2 == v3)
      {
        goto LABEL_11;
      }
    }

    v11 = *(v0 + 1136);
    v12 = v9;

    v13 = *(v11 + 56) + 104 * v12;
    v14 = *v13;
    v15 = *(v13 + 32);
    *(v0 + 592) = *(v13 + 16);
    *(v0 + 608) = v15;
    *v4 = v14;
    v16 = *(v13 + 48);
    v17 = *(v13 + 64);
    v18 = *(v13 + 80);
    *(v0 + 672) = *(v13 + 96);
    *(v0 + 640) = v17;
    *(v0 + 656) = v18;
    *(v0 + 624) = v16;
    sub_230DBB6FC(v0 + 576, v0 + 680);

    if (qword_27DB5A4B0 != -1)
    {
      swift_once();
    }

    v19 = *(v0 + 1112);
    v20 = *(v0 + 1104);
    v21 = sub_230E68D80();
    __swift_project_value_buffer(v21, qword_27DB80BC0);
    sub_230DBCB98(v19, v20);
    v22 = sub_230E68D60();
    v23 = sub_230E693E0();
    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 1112);
    v26 = *(v0 + 1104);
    if (v24)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v68 = v28;
      *v27 = 136315138;
      v29 = *(v26 + 16);
      v30 = *(v26 + 24);

      sub_230DBCBFC(v26);
      v31 = sub_230D7E620(v29, v30, &v68);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_230D02000, v22, v23, "[SystemDatabase][queryActiveWorkflowByAsset] Found workflow for active treatment: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x23191EAE0](v28, -1, -1);
      MEMORY[0x23191EAE0](v27, -1, -1);
    }

    else
    {

      sub_230DBCBFC(v26);
    }

    sub_230DBCBFC(v25);
    goto LABEL_24;
  }

LABEL_11:
  v32 = *(v0 + 1136);

  if (*(v32 + 16))
  {
    v33 = sub_230DA41A0(0x746C7561666564, 0xE700000000000000);
    if (v34)
    {
      v4 = (v0 + 368);
      v35 = *(*(v0 + 1136) + 56) + 104 * v33;
      v37 = *(v35 + 16);
      v36 = *(v35 + 32);
      *(v0 + 368) = *v35;
      *(v0 + 384) = v37;
      *(v0 + 400) = v36;
      v39 = *(v35 + 64);
      v38 = *(v35 + 80);
      v40 = *(v35 + 48);
      *(v0 + 464) = *(v35 + 96);
      *(v0 + 432) = v39;
      *(v0 + 448) = v38;
      *(v0 + 416) = v40;
      sub_230DBB6FC(v0 + 368, v0 + 472);

      if (qword_27DB5A4B0 != -1)
      {
        swift_once();
      }

      v41 = sub_230E68D80();
      __swift_project_value_buffer(v41, qword_27DB80BC0);

      v42 = sub_230E68D60();
      v43 = sub_230E693E0();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = *(v0 + 1072);
        v45 = *(v0 + 1064);
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v68 = v47;
        *v46 = 136315138;
        *(v46 + 4) = sub_230D7E620(v45, v44, &v68);
        _os_log_impl(&dword_230D02000, v42, v43, "[SystemDatabase][queryActiveWorkflowByAsset] Using default workflow for asset: %s", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v47);
        MEMORY[0x23191EAE0](v47, -1, -1);
        MEMORY[0x23191EAE0](v46, -1, -1);
      }

LABEL_24:
      v61 = *(v0 + 1056);
      v62 = *v4;
      v63 = v4[2];
      *(v61 + 16) = v4[1];
      *(v61 + 32) = v63;
      *v61 = v62;
      v64 = v4[3];
      v65 = v4[4];
      v66 = v4[5];
      *(v61 + 96) = *(v4 + 12);
      *(v61 + 64) = v65;
      *(v61 + 80) = v66;
      *(v61 + 48) = v64;

      v60 = *(v0 + 8);
      goto LABEL_25;
    }
  }

  if (qword_27DB5A4B0 != -1)
  {
LABEL_29:
    swift_once();
  }

  v48 = sub_230E68D80();
  __swift_project_value_buffer(v48, qword_27DB80BC0);

  v49 = sub_230E68D60();
  v50 = sub_230E69400();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = *(v0 + 1072);
    v52 = *(v0 + 1064);
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v68 = v54;
    *v53 = 136315138;
    *(v53 + 4) = sub_230D7E620(v52, v51, &v68);
    _os_log_impl(&dword_230D02000, v49, v50, "[SystemDatabase][queryActiveWorkflowByAsset] No default workflow found for asset: %s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v54);
    MEMORY[0x23191EAE0](v54, -1, -1);
    MEMORY[0x23191EAE0](v53, -1, -1);
  }

  v55 = *(v0 + 1072);
  v56 = *(v0 + 1064);
  v68 = 0;
  v69 = 0xE000000000000000;
  sub_230E69540();

  v68 = 0xD000000000000026;
  v69 = 0x8000000230E84FA0;
  MEMORY[0x23191DA00](v56, v55);
  v57 = v68;
  v58 = v69;
  sub_230D0D224();
  swift_allocError();
  *v59 = v57;
  *(v59 + 8) = v58;
  *(v59 + 16) = 3;
  swift_willThrow();

  v60 = *(v0 + 8);
LABEL_25:

  return v60();
}

uint64_t sub_230E55A0C()
{
  MEMORY[0x23191E910](*(v0 + 1184));

  return MEMORY[0x2822009F8](sub_230E55A74, 0, 0);
}

uint64_t sub_230E55A74()
{
  v70 = v0;
  v1 = MEMORY[0x277D84F90];
  v2 = *(MEMORY[0x277D84F90] + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (v0 + 576);
    v5 = *(v0 + 1112);
    v6 = *(v0 + 1096);
    v7 = MEMORY[0x277D84F90] + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
        goto LABEL_29;
      }

      v8 = *(v0 + 1136);
      sub_230DBCB98(v7 + *(v6 + 72) * v3, *(v0 + 1112));
      if (*(v8 + 16))
      {
        v9 = sub_230DA41A0(*(v5 + 16), *(v5 + 24));
        if (v10)
        {
          break;
        }
      }

      ++v3;
      sub_230DBCBFC(*(v0 + 1112));
      if (v2 == v3)
      {
        goto LABEL_11;
      }
    }

    v11 = *(v0 + 1136);
    v12 = v9;

    v13 = *(v11 + 56) + 104 * v12;
    v14 = *v13;
    v15 = *(v13 + 32);
    *(v0 + 592) = *(v13 + 16);
    *(v0 + 608) = v15;
    *v4 = v14;
    v16 = *(v13 + 48);
    v17 = *(v13 + 64);
    v18 = *(v13 + 80);
    *(v0 + 672) = *(v13 + 96);
    *(v0 + 640) = v17;
    *(v0 + 656) = v18;
    *(v0 + 624) = v16;
    sub_230DBB6FC(v0 + 576, v0 + 680);

    if (qword_27DB5A4B0 != -1)
    {
      swift_once();
    }

    v19 = *(v0 + 1112);
    v20 = *(v0 + 1104);
    v21 = sub_230E68D80();
    __swift_project_value_buffer(v21, qword_27DB80BC0);
    sub_230DBCB98(v19, v20);
    v22 = sub_230E68D60();
    v23 = sub_230E693E0();
    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 1112);
    v26 = *(v0 + 1104);
    if (v24)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v68 = v28;
      *v27 = 136315138;
      v29 = *(v26 + 16);
      v30 = *(v26 + 24);

      sub_230DBCBFC(v26);
      v31 = sub_230D7E620(v29, v30, &v68);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_230D02000, v22, v23, "[SystemDatabase][queryActiveWorkflowByAsset] Found workflow for active treatment: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x23191EAE0](v28, -1, -1);
      MEMORY[0x23191EAE0](v27, -1, -1);
    }

    else
    {

      sub_230DBCBFC(v26);
    }

    sub_230DBCBFC(v25);
    goto LABEL_24;
  }

LABEL_11:
  v32 = *(v0 + 1136);

  if (*(v32 + 16))
  {
    v33 = sub_230DA41A0(0x746C7561666564, 0xE700000000000000);
    if (v34)
    {
      v4 = (v0 + 368);
      v35 = *(*(v0 + 1136) + 56) + 104 * v33;
      v37 = *(v35 + 16);
      v36 = *(v35 + 32);
      *(v0 + 368) = *v35;
      *(v0 + 384) = v37;
      *(v0 + 400) = v36;
      v39 = *(v35 + 64);
      v38 = *(v35 + 80);
      v40 = *(v35 + 48);
      *(v0 + 464) = *(v35 + 96);
      *(v0 + 432) = v39;
      *(v0 + 448) = v38;
      *(v0 + 416) = v40;
      sub_230DBB6FC(v0 + 368, v0 + 472);

      if (qword_27DB5A4B0 != -1)
      {
        swift_once();
      }

      v41 = sub_230E68D80();
      __swift_project_value_buffer(v41, qword_27DB80BC0);

      v42 = sub_230E68D60();
      v43 = sub_230E693E0();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = *(v0 + 1072);
        v45 = *(v0 + 1064);
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v68 = v47;
        *v46 = 136315138;
        *(v46 + 4) = sub_230D7E620(v45, v44, &v68);
        _os_log_impl(&dword_230D02000, v42, v43, "[SystemDatabase][queryActiveWorkflowByAsset] Using default workflow for asset: %s", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v47);
        MEMORY[0x23191EAE0](v47, -1, -1);
        MEMORY[0x23191EAE0](v46, -1, -1);
      }

LABEL_24:
      v61 = *(v0 + 1056);
      v62 = *v4;
      v63 = v4[2];
      *(v61 + 16) = v4[1];
      *(v61 + 32) = v63;
      *v61 = v62;
      v64 = v4[3];
      v65 = v4[4];
      v66 = v4[5];
      *(v61 + 96) = *(v4 + 12);
      *(v61 + 64) = v65;
      *(v61 + 80) = v66;
      *(v61 + 48) = v64;

      v60 = *(v0 + 8);
      goto LABEL_25;
    }
  }

  if (qword_27DB5A4B0 != -1)
  {
LABEL_29:
    swift_once();
  }

  v48 = sub_230E68D80();
  __swift_project_value_buffer(v48, qword_27DB80BC0);

  v49 = sub_230E68D60();
  v50 = sub_230E69400();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = *(v0 + 1072);
    v52 = *(v0 + 1064);
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v68 = v54;
    *v53 = 136315138;
    *(v53 + 4) = sub_230D7E620(v52, v51, &v68);
    _os_log_impl(&dword_230D02000, v49, v50, "[SystemDatabase][queryActiveWorkflowByAsset] No default workflow found for asset: %s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v54);
    MEMORY[0x23191EAE0](v54, -1, -1);
    MEMORY[0x23191EAE0](v53, -1, -1);
  }

  v55 = *(v0 + 1072);
  v56 = *(v0 + 1064);
  v68 = 0;
  v69 = 0xE000000000000000;
  sub_230E69540();

  v68 = 0xD000000000000026;
  v69 = 0x8000000230E84FA0;
  MEMORY[0x23191DA00](v56, v55);
  v57 = v68;
  v58 = v69;
  sub_230D0D224();
  swift_allocError();
  *v59 = v57;
  *(v59 + 8) = v58;
  *(v59 + 16) = 3;
  swift_willThrow();

  v60 = *(v0 + 8);
LABEL_25:

  return v60();
}

uint64_t static SystemDatabase.queryAllWorkflows(using:requestContext:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 96) = a1;
  v3 = *(a2 + 16);
  *(v2 + 104) = *a2;
  *(v2 + 120) = v3;
  *(v2 + 136) = *(a2 + 32);
  return MEMORY[0x2822009F8](sub_230E56108, 0, 0);
}

uint64_t sub_230E56108()
{
  v1 = *(v0 + 120);
  if (v1)
  {
    v2 = *(v0 + 128);
    v3 = *(v0 + 136);
    v4 = *(v0 + 104);
    v5 = *(v0 + 112);
    *(v0 + 152) = v1;
    *(v0 + 160) = v3;
    *(v0 + 16) = v4;
    *(v0 + 24) = v5;
    *(v0 + 32) = v1;
    *(v0 + 40) = v2 & 1;
    *(v0 + 41) = BYTE1(v2);
    *(v0 + 48) = v3;
    sub_230D0585C(v4, v5, v1, v2, v3);
    if (qword_27DB5A430 != -1)
    {
      swift_once();
    }

    v6 = qword_27DB5A438;

    v7 = swift_task_alloc();
    *(v0 + 168) = v7;
    *v7 = v0;
    v7[1] = sub_230D0571C;
    v8 = *(v0 + 96);

    return sub_230D7A638(47, v0 + 16, v6, v8, v0 + 16);
  }

  else
  {
    *(v0 + 176) = 47;
    v10 = swift_task_alloc();
    *(v0 + 144) = v10;
    *v10 = v0;
    v10[1] = sub_230E562E8;

    return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 176), 0, 0);
  }
}

uint64_t sub_230E562E8()
{

  return MEMORY[0x2822009F8](sub_230E563E4, 0, 0);
}

uint64_t sub_230E563E4()
{
  *(v0 + 16) = *(v0 + 56);
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 81);
  v5 = *(v0 + 88);
  *(v0 + 152) = v2;
  *(v0 + 160) = v5;
  v6 = *(v0 + 128);
  v7 = *(v0 + 136);
  v8 = *(v0 + 112);
  v9 = *(v0 + 120);
  v10 = *(v0 + 104);
  *(v0 + 24) = v1;
  *(v0 + 32) = v2;
  *(v0 + 40) = v3;
  *(v0 + 41) = v4;
  *(v0 + 48) = v5;
  sub_230D0585C(v10, v8, v9, v6, v7);
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v11 = qword_27DB5A438;

  v12 = swift_task_alloc();
  *(v0 + 168) = v12;
  *v12 = v0;
  v12[1] = sub_230D0571C;
  v13 = *(v0 + 96);

  return sub_230D7A638(47, v0 + 16, v11, v13, v0 + 16);
}

uint64_t sub_230E5653C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[72] = a3;
  v3[71] = a2;
  v3[70] = a1;
  return MEMORY[0x2822009F8](sub_230E56564, 0, 0);
}

uint64_t sub_230E56564()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 568);
  *(v0 + 368) = 0u;
  *(v0 + 384) = 0u;
  *(v0 + 400) = 0u;
  *(v0 + 416) = 0u;
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  *(v0 + 464) = 1;
  sub_230D1D098(v0 + 368);
  *(v0 + 16) = 0x6C666B726F575F5FLL;
  *(v0 + 24) = 0xEA0000000000776FLL;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 1;
  sub_230D1CDE0(v1, v0 + 472);

  return MEMORY[0x2822009F8](sub_230E56638, v2, 0);
}

uint64_t sub_230E56638()
{
  sub_230D1CDE0(*(v0 + 576), v0 + 512);
  sub_230D1D0EC(v0 + 16, v0 + 136);

  v1 = swift_task_alloc();
  *(v0 + 584) = v1;
  *v1 = v0;
  v1[1] = sub_230E56720;
  v2 = *(v0 + 576);

  return (sub_230D70F74)(v0 + 552, 2, v2);
}

uint64_t sub_230E56720()
{
  v2 = *v1;
  *(*v1 + 592) = v0;

  v3 = *(v2 + 576);
  v4 = *(v2 + 568);
  sub_230D1CE3C(v3);
  if (v0)
  {
    v5 = sub_230E56C00;
  }

  else
  {
    v5 = sub_230E56868;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_230E56868()
{
  sub_230D1CE3C(*(v0 + 576));
  sub_230D1D148(v0 + 16);

  return MEMORY[0x2822009F8](sub_230E568D8, 0, 0);
}

void sub_230E568D8()
{
  v42 = v0;
  v1 = *(v0 + 552);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (v0 + 256);
    v5 = *(v0 + 592);
    v6 = v2 - 1;
    v29 = MEMORY[0x277D84F90];
    v26 = *(v1 + 16);
    while (v3 < *(v1 + 16))
    {
      v7 = v3;
      v28 = v3 + 1;

      sub_230E527E0(v8, &v30);
      if (v5)
      {
        MEMORY[0x23191E910](v5);

        v34 = 0u;
        memset(v35, 0, 24);
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v35[24] = -1;
LABEL_6:
        v9 = *v35;
        v4[4] = v34;
        v4[5] = v9;
        *(v4 + 89) = *&v35[9];
        v10 = v31;
        *v4 = v30;
        v4[1] = v10;
        v11 = v33;
        v4[2] = v32;
        v4[3] = v11;
        sub_230D2D9F8(v4, &qword_27DB5CD10, &qword_230E7AE20);
        if (v28 == v26)
        {
          goto LABEL_20;
        }

        while (v7 + 1 < *(v1 + 16))
        {

          sub_230E527E0(v15, &v30);

          if (v35[24] != 255)
          {
            v28 = v7 + 2;
            goto LABEL_13;
          }

          v12 = *v35;
          v4[4] = v34;
          v4[5] = v12;
          *(v4 + 89) = *&v35[9];
          v13 = v31;
          *v4 = v30;
          v4[1] = v13;
          v14 = v33;
          v4[2] = v32;
          v4[3] = v14;
          sub_230D2D9F8(v4, &qword_27DB5CD10, &qword_230E7AE20);
          if (v6 == ++v7)
          {
            goto LABEL_20;
          }
        }

        break;
      }

      if (v35[24] == 255)
      {
        goto LABEL_6;
      }

LABEL_13:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_230E4AFF0(0, *(v29 + 2) + 1, 1, v29);
      }

      v17 = *(v29 + 2);
      v16 = *(v29 + 3);
      if (v17 >= v16 >> 1)
      {
        v29 = sub_230E4AFF0((v16 > 1), v17 + 1, 1, v29);
      }

      v5 = 0;
      v40 = v34;
      v41[0] = *v35;
      *(v41 + 9) = *&v35[9];
      v38 = v32;
      v39 = v33;
      v18 = v30;
      v36 = v30;
      v37 = v31;
      *(v29 + 2) = v17 + 1;
      v19 = &v29[112 * v17];
      v20 = v38;
      *(v19 + 3) = v37;
      *(v19 + 4) = v20;
      v21 = v39;
      v22 = v40;
      v23 = v41[0];
      *(v19 + 121) = *(v41 + 9);
      *(v19 + 6) = v22;
      *(v19 + 7) = v23;
      *(v19 + 5) = v21;
      *(v19 + 2) = v18;
      v3 = v28;
      if (v28 == v26)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
    v29 = MEMORY[0x277D84F90];
LABEL_20:
    v24 = *(v27 + 560);

    *v24 = v29;
    v25 = *(v27 + 8);

    v25();
  }
}

uint64_t sub_230E56C00()
{
  sub_230D1CE3C(*(v0 + 576));

  return MEMORY[0x2822009F8](sub_230E56C68, 0, 0);
}

uint64_t sub_230E56C68()
{
  sub_230D1D148(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230E56CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[58] = a3;
  v4[59] = a4;
  v4[56] = a1;
  v4[57] = a2;
  return MEMORY[0x2822009F8](sub_230E56CF0, 0, 0);
}

uint64_t sub_230E56CF0()
{
  v1 = *(v0 + 456);
  v2 = *v1;
  *(v0 + 480) = *v1;
  v3 = v1[1];
  *(v0 + 488) = v3;
  if (v1[11])
  {
    v4 = v1[10];
    v5 = v1[11];
  }

  else
  {
    v5 = 0xE700000000000000;
    v4 = 0x746C7561666564;
  }

  *(v0 + 496) = v4;
  *(v0 + 504) = v5;
  v6 = *(v0 + 464);
  v7 = *(v0 + 472);

  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000015, 0x8000000230E85070);
  MEMORY[0x23191DA00](v2, v3);
  MEMORY[0x23191DA00](0xD00000000000001DLL, 0x8000000230E850E0);
  MEMORY[0x23191DA00](v4, v5);
  MEMORY[0x23191DA00](39, 0xE100000000000000);
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 0u;
  *(v0 + 352) = 1;
  sub_230D1D098(v0 + 256);
  *(v0 + 16) = 0x6C666B726F575F5FLL;
  *(v0 + 24) = 0xEA0000000000776FLL;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0xE000000000000000;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 1;
  sub_230D1CDE0(v7, v0 + 360);

  return MEMORY[0x2822009F8](sub_230E56EB8, v6, 0);
}

uint64_t sub_230E56EB8()
{
  sub_230D1CDE0(*(v0 + 472), v0 + 400);
  sub_230D1D0EC(v0 + 16, v0 + 136);

  v1 = swift_task_alloc();
  *(v0 + 512) = v1;
  *v1 = v0;
  v1[1] = sub_230E56F98;
  v2 = *(v0 + 472);

  return (sub_230D70F74)(v0 + 440, 2, v2);
}

uint64_t sub_230E56F98()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  v3 = *(v2 + 472);
  v4 = *(v2 + 464);
  sub_230D1CE3C(v3);
  if (v0)
  {
    v5 = sub_230E5762C;
  }

  else
  {
    v5 = sub_230E570E0;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_230E570E0()
{
  sub_230D1CE3C(*(v0 + 472));
  sub_230D1D148(v0 + 16);

  return MEMORY[0x2822009F8](sub_230E57150, 0, 0);
}

uint64_t sub_230E57150()
{
  v39 = v0;
  v1 = v0[55];
  v2 = *(v1 + 16);
  if (!v2)
  {

    if (qword_27DB5A4B0 != -1)
    {
      swift_once();
    }

    v6 = sub_230E68D80();
    __swift_project_value_buffer(v6, qword_27DB80BC0);

    v7 = sub_230E68D60();
    v8 = sub_230E693E0();

    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[63];
    if (v9)
    {
      v12 = v0[61];
      v11 = v0[62];
      v13 = v0[60];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v37 = v15;
      *v14 = 136315394;
      *(v14 + 4) = sub_230D7E620(v13, v12, &v37);
      *(v14 + 12) = 2080;
      v16 = sub_230D7E620(v11, v10, &v37);

      *(v14 + 14) = v16;
      _os_log_impl(&dword_230D02000, v7, v8, "[SystemDatabase][queryWorkflow] No workflow found for useCaseIdentifier: %s, treatmentIdentifier: %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23191EAE0](v15, -1, -1);
      MEMORY[0x23191EAE0](v14, -1, -1);
    }

    else
    {
    }

    v26 = v0[56];
    *(v26 + 96) = 0;
    *(v26 + 64) = 0u;
    *(v26 + 80) = 0u;
    *(v26 + 32) = 0u;
    *(v26 + 48) = 0u;
    *v26 = 0u;
    *(v26 + 16) = 0u;
    *(v26 + 104) = -1;
    goto LABEL_15;
  }

  if (v2 == 1)
  {
    v3 = *(v1 + 32);
    v4 = v0[65];
    v5 = v0[56];

    sub_230E527E0(v3, v5);

    if (!v4)
    {
LABEL_15:
      v27 = v0[1];
      goto LABEL_19;
    }
  }

  else
  {
    if (qword_27DB5A4B0 != -1)
    {
      swift_once();
    }

    v17 = sub_230E68D80();
    __swift_project_value_buffer(v17, qword_27DB80BC0);

    v18 = sub_230E68D60();
    v19 = sub_230E69400();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = v0[62];
      v36 = v0[63];
      v22 = v0[60];
      v21 = v0[61];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v37 = v24;
      *v23 = 134218498;
      v25 = *(v1 + 16);

      *(v23 + 4) = v25;

      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_230D7E620(v22, v21, &v37);
      *(v23 + 22) = 2080;
      *(v23 + 24) = sub_230D7E620(v20, v36, &v37);
      _os_log_impl(&dword_230D02000, v18, v19, "[SystemDatabase][queryWorkflow] Data integrity violation: Found %ld workflows for useCaseIdentifier: %s, treatmentIdentifier: %s", v23, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23191EAE0](v24, -1, -1);
      MEMORY[0x23191EAE0](v23, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v29 = v0[62];
    v28 = v0[63];
    v31 = v0[60];
    v30 = v0[61];
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_230E69540();
    MEMORY[0x23191DA00](0xD000000000000030, 0x8000000230E85100);
    MEMORY[0x23191DA00](v31, v30);
    MEMORY[0x23191DA00](0xD000000000000017, 0x8000000230E85140);
    MEMORY[0x23191DA00](v29, v28);

    v32 = v37;
    v33 = v38;
    sub_230D0D224();
    swift_allocError();
    *v34 = v32;
    *(v34 + 8) = v33;
    *(v34 + 16) = 4;
    swift_willThrow();
  }

  v27 = v0[1];
LABEL_19:

  return v27();
}

uint64_t sub_230E5762C()
{
  sub_230D1CE3C(*(v0 + 472));

  return MEMORY[0x2822009F8](sub_230E576A0, 0, 0);
}

uint64_t sub_230E576A0()
{
  sub_230D1D148(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_230E57704()
{
  result = qword_27DB5D970;
  if (!qword_27DB5D970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D970);
  }

  return result;
}

uint64_t sub_230E57758(uint64_t a1, char a2, void *a3)
{
  v35 = *(a1 + 16);
  if (!v35)
  {
  }

  v6 = 0;
  for (i = 32; ; i += 120)
  {
    if (v6 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_230E69950();
      __break(1u);
      goto LABEL_23;
    }

    v8 = *(a1 + i + 96);
    v48 = *(a1 + i + 80);
    v49 = v8;
    v9 = *(a1 + i + 64);
    v46 = *(a1 + i + 48);
    v47 = v9;
    v10 = *(a1 + i + 32);
    v44 = *(a1 + i + 16);
    v45 = v10;
    v43 = *(a1 + i);
    v11 = *(a1 + i + 112);
    v50 = v11;
    v40 = v48;
    v41 = v49;
    v38 = v46;
    v39 = v47;
    v36 = v44;
    v37 = v10;
    v12 = v43;
    sub_230E57AB0(&v43, &v42);
    if (!*(&v12 + 1))
    {
    }

    v42 = v12;
    v43 = v36;
    v44 = v37;
    v45 = v38;
    v46 = v39;
    v47 = v40;
    v48 = v41;
    *&v49 = v11;
    v13 = *a3;
    v14 = sub_230DA41A0(v12, *(&v12 + 1));
    v16 = v13[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      goto LABEL_20;
    }

    v20 = v15;
    if (v13[3] >= v19)
    {
      break;
    }

    sub_230DB928C(v19, a2 & 1);
    v14 = sub_230DA41A0(v12, *(&v12 + 1));
    if ((v20 & 1) != (v21 & 1))
    {
      goto LABEL_22;
    }

LABEL_10:
    if (v20)
    {
      goto LABEL_15;
    }

LABEL_11:
    v22 = *a3;
    *(*a3 + 8 * (v14 >> 6) + 64) |= 1 << v14;
    *(v22[6] + 16 * v14) = v12;
    v23 = v22[7] + 104 * v14;
    v24 = v43;
    v25 = v45;
    *(v23 + 16) = v44;
    *(v23 + 32) = v25;
    *v23 = v24;
    v26 = v46;
    v27 = v47;
    v28 = v48;
    *(v23 + 96) = v49;
    *(v23 + 64) = v27;
    *(v23 + 80) = v28;
    *(v23 + 48) = v26;
    v29 = v22[2];
    v18 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (v18)
    {
      goto LABEL_21;
    }

    ++v6;
    v22[2] = v30;
    a2 = 1;
    if (v35 == v6)
    {
    }
  }

  if (a2)
  {
    goto LABEL_10;
  }

  v31 = v14;
  sub_230DBB414();
  v14 = v31;
  if ((v20 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v32 = swift_allocError();
  swift_willThrow();
  v51 = v32;
  v33 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D890, &qword_230E6C200);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_230DD70E0(&v43);

    return MEMORY[0x23191E910](v51);
  }

LABEL_23:
  sub_230E69540();
  MEMORY[0x23191DA00](0xD00000000000001BLL, 0x8000000230E82200);
  sub_230E695F0();
  MEMORY[0x23191DA00](39, 0xE100000000000000);
  result = sub_230E69600();
  __break(1u);
  return result;
}

uint64_t sub_230E57AB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D948, &qword_230E7F658);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_230E57B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 416) = a2;
  *(v4 + 424) = a3;
  *(v4 + 408) = a1;
  v5 = *(a4 + 16);
  *(v4 + 432) = *a4;
  *(v4 + 448) = v5;
  *(v4 + 464) = *(a4 + 32);
  return MEMORY[0x2822009F8](sub_230E57B54, 0, 0);
}

uint64_t sub_230E57B54()
{
  v1 = *(v0 + 464);
  v3 = *(v0 + 408);
  v2 = *(v0 + 416);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D9C0, &unk_230E6C220);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_230E6B3B0;
  *(v4 + 32) = 0xD000000000000015;
  *(v4 + 40) = 0x8000000230E80190;
  *(v4 + 48) = 3;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0u;
  v10 = *(v0 + 448);
  v11 = *(v0 + 432);
  sub_230E69540();
  MEMORY[0x23191DA00](0xD000000000000015, 0x8000000230E85070);
  MEMORY[0x23191DA00](v3, v2);
  MEMORY[0x23191DA00](0xD000000000000046, 0x8000000230E85090);
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 0u;
  *(v0 + 352) = 1;
  sub_230D1D098(v0 + 256);
  *(v0 + 16) = 0x6C666B726F575F5FLL;
  *(v0 + 24) = 0xEA0000000000776FLL;
  *(v0 + 32) = v4;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0xE000000000000000;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 104) = 0;
  v5 = *(v0 + 96);
  *(v0 + 200) = *(v0 + 80);
  *(v0 + 216) = v5;
  *(v0 + 232) = *(v0 + 112);
  v6 = *(v0 + 32);
  *(v0 + 136) = *(v0 + 16);
  *(v0 + 152) = v6;
  v7 = *(v0 + 64);
  *(v0 + 168) = *(v0 + 48);
  *(v0 + 128) = 1;
  *(v0 + 248) = 1;
  *(v0 + 184) = v7;
  *(v0 + 360) = v11;
  *(v0 + 376) = v10;
  *(v0 + 392) = v1;
  v8 = swift_task_alloc();
  *(v0 + 472) = v8;
  *v8 = v0;
  v8[1] = sub_230E57D9C;

  return sub_230D3ED1C(v0 + 400, v0 + 136, v0 + 360);
}

uint64_t sub_230E57D9C()
{
  v2 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v3 = sub_230E58128;
  }

  else
  {
    sub_230D1D148(v2 + 16);
    v3 = sub_230E57EB8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_230E57EB8()
{
  v28 = v0;
  v1 = *(v0 + 400);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      v26 = v4;
      v5 = v3;
      while (1)
      {
        if (v5 >= *(v1 + 16))
        {
          __break(1u);
          return;
        }

        v6 = *(v1 + 32 + 8 * v5);
        if (*(v6 + 16))
        {

          v7 = sub_230DA41A0(0xD000000000000015, 0x8000000230E80190);
          if ((v8 & 1) == 0)
          {

            goto LABEL_5;
          }

          v9 = *(v6 + 56) + 24 * v7;
          v10 = *v9;
          v11 = *(v9 + 8);
          v12 = *(v9 + 16);
          sub_230D0DCD8(*v9, v11, *(v9 + 16));

          if (v12 != 3)
          {
            sub_230D0F474(v10, v11, v12);
            goto LABEL_5;
          }

          if (v11)
          {
            break;
          }
        }

LABEL_5:
        if (v2 == ++v5)
        {
          v0 = v25;
          v4 = v26;
          goto LABEL_22;
        }
      }

      v13 = v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v13 = sub_230E49E88(0, *(v26 + 16) + 1, 1, v26);
      }

      v16 = *(v13 + 2);
      v15 = *(v13 + 3);
      v17 = v13;
      if (v16 >= v15 >> 1)
      {
        v17 = sub_230E49E88((v15 > 1), v16 + 1, 1, v13);
      }

      v3 = v5 + 1;
      *(v17 + 2) = v16 + 1;
      v4 = v17;
      v18 = &v17[16 * v16];
      *(v18 + 4) = v10;
      *(v18 + 5) = v11;
      v19 = v2 - 1 == v5;
      v0 = v25;
      if (v19)
      {
        goto LABEL_22;
      }
    }
  }

  v4 = MEMORY[0x277D84F90];
LABEL_22:

  v20 = sub_230D0ABEC(v4);

  v21 = *(v20 + 16);
  if (!v21)
  {
    goto LABEL_25;
  }

  v22 = sub_230E4B114(*(v20 + 16), 0);
  v23 = sub_230E6701C(&v27, v22 + 4, v21, v20);
  sub_230D912FC(v27);
  if (v23 != v21)
  {
    __break(1u);
LABEL_25:

    v22 = MEMORY[0x277D84F90];
  }

  v24 = *(v0 + 8);

  v24(v22);
}

uint64_t sub_230E58128()
{
  sub_230D1D148(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230E5818C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 288) = a2;
  v6 = sub_230E68910();
  *(v3 + 296) = v6;
  *(v3 + 304) = *(v6 - 8);
  *(v3 + 312) = swift_task_alloc();
  *(v3 + 320) = *a1;
  *(v3 + 416) = *(a1 + 16);
  *(v3 + 336) = *(a1 + 24);
  v7 = *(a3 + 16);
  *(v3 + 344) = *a3;
  *(v3 + 360) = v7;
  *(v3 + 376) = *(a3 + 32);

  return MEMORY[0x2822009F8](sub_230E58288, 0, 0);
}

uint64_t sub_230E58288(uint64_t a1)
{
  v3 = *(v1 + 304);
  v2 = *(v1 + 312);
  v4 = *(v1 + 296);
  sub_230E68900();
  sub_230E688D0();
  v6 = v5;
  v7 = v5;
  result = (*(v3 + 8))(v2, v4);
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v9 = *(v1 + 416);
  v11 = *(v1 + 320);
  v10 = *(v1 + 328);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B2C0, &unk_230E6F630);
  v12 = swift_allocObject();
  *(v1 + 384) = v12;
  *(v12 + 16) = xmmword_230E6B3B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8B0, &qword_230E6C238);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_230E6B790;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  *(inited + 48) = v11;
  *(inited + 56) = v10;
  *(inited + 64) = 3;
  *(inited + 72) = 0x6E69616D6F64;
  *(inited + 80) = 0xE600000000000000;
  v14 = *&aLanguagesecuri_2[8 * v9 + 16];
  v15 = *(v1 + 376);
  v19 = *(v1 + 360);
  v20 = *(v1 + 344);
  *(inited + 88) = *&aInternalapps_2[8 * v9];
  *(inited + 96) = v14;
  *(inited + 104) = 3;
  strcpy((inited + 112), "creationTime");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  *(inited + 128) = v6;
  *(inited + 136) = 0;
  *(inited + 144) = 2;
  *(inited + 152) = 0x616470557473616CLL;
  *(inited + 160) = 0xEF656D6954646574;
  *(inited + 168) = v6;
  *(inited + 176) = 0;
  *(inited + 184) = 2;

  v16 = sub_230D0DBB4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AC28, &qword_230E6C240);
  swift_arrayDestroy();
  *(v12 + 32) = v16;
  v17 = sub_230E1CA68(&unk_2845A4FF8);
  *(v1 + 392) = v17;
  swift_arrayDestroy();
  *(v1 + 248) = 0x7361436573555F5FLL;
  *(v1 + 256) = 0xE900000000000065;
  *(v1 + 264) = v12;
  *(v1 + 272) = v17;
  *(v1 + 224) = v19;
  *(v1 + 208) = v20;
  *(v1 + 240) = v15;
  v18 = swift_task_alloc();
  *(v1 + 400) = v18;
  *v18 = v1;
  v18[1] = sub_230E585A0;

  return sub_230D41CA0(v1 + 280, v1 + 248, v1 + 208);
}

uint64_t sub_230E585A0()
{
  *(*v1 + 408) = v0;

  if (v0)
  {
    v2 = sub_230E58884;
  }

  else
  {

    v2 = sub_230E586D4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_230E586D4()
{
  v12 = v0;
  v1 = v0[35];
  if (qword_27DB5A4B0 != -1)
  {
    swift_once();
  }

  v2 = sub_230E68D80();
  __swift_project_value_buffer(v2, qword_27DB80BC0);

  v3 = sub_230E68D60();
  v4 = sub_230E693F0();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[40];
    v5 = v0[41];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_230D7E620(v6, v5, &v11);
    *(v7 + 12) = 2048;
    *(v7 + 14) = v1;
    _os_log_impl(&dword_230D02000, v3, v4, "[SystemDatabase][upsertUseCaseConfiguration] Upserted use case: %s, processed: %lld", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x23191EAE0](v8, -1, -1);
    MEMORY[0x23191EAE0](v7, -1, -1);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_230E58884()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230E58914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 336) = a5;
  *(v7 + 344) = a6;
  *(v7 + 320) = a3;
  *(v7 + 328) = a4;
  *(v7 + 312) = a2;
  sub_230E690B0();
  *(v7 + 352) = swift_task_alloc();
  v10 = sub_230E68910();
  *(v7 + 360) = v10;
  *(v7 + 368) = *(v10 - 8);
  v11 = swift_task_alloc();
  *(v7 + 384) = *a1;
  *(v7 + 416) = *(a1 + 32);
  *(v7 + 440) = *(a1 + 56);
  *(v7 + 456) = *(a1 + 72);
  *(v7 + 472) = *(a1 + 88);
  v12 = *(a7 + 16);
  *(v7 + 488) = *a7;
  *(v7 + 376) = v11;
  v13 = *(a1 + 17);
  *(v7 + 560) = *(a1 + 16);
  v14 = *(a1 + 21);
  *(v7 + 400) = v13;
  *(v7 + 404) = v14;
  *(v7 + 406) = *(a1 + 23);
  *(v7 + 408) = *(a1 + 24);
  *(v7 + 432) = *(a1 + 48);
  *(v7 + 561) = *(a1 + 104);
  *(v7 + 504) = v12;
  *(v7 + 520) = *(a7 + 32);

  return MEMORY[0x2822009F8](sub_230E58A94, 0, 0);
}

uint64_t sub_230E58A94(uint64_t a1)
{
  v3 = *(v1 + 368);
  v2 = *(v1 + 376);
  v4 = *(v1 + 360);
  sub_230E68900();
  sub_230E688D0();
  v6 = v5;
  v7 = v5;
  result = (*(v3 + 8))(v2, v4);
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_56;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_57:
    __break(1u);
    return result;
  }

  v9 = (v1 + 400);
  v88 = *(v1 + 561);
  v11 = *(v1 + 328);
  v10 = *(v1 + 336);
  v13 = *(v1 + 312);
  v12 = *(v1 + 320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8B0, &qword_230E6C238);
  inited = swift_initStackObject();
  *(inited + 32) = 0x696669746E656469;
  *(inited + 16) = xmmword_230E6B790;
  *(inited + 40) = 0xEA00000000007265;
  *(inited + 48) = v13;
  *(inited + 56) = v12;
  *(inited + 64) = 3;
  *(inited + 72) = 0xD000000000000011;
  *(inited + 80) = 0x8000000230E80170;
  *(inited + 88) = v11;
  *(inited + 96) = v10;
  *(inited + 104) = 3;
  strcpy((inited + 112), "creationTime");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  *(inited + 128) = v6;
  *(inited + 136) = 0;
  *(inited + 144) = 2;
  *(inited + 152) = 0x616470557473616CLL;
  *(inited + 160) = 0xEF656D6954646574;
  *(inited + 168) = v6;
  *(inited + 176) = 0;
  *(inited + 184) = 2;

  v15 = sub_230D0DBB4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AC28, &qword_230E6C240);
  swift_arrayDestroy();
  if (v88)
  {
    v16 = *(v1 + 480);
    v17 = *(v1 + 448);
    v84 = *(v1 + 472);
    v85 = *(v1 + 456);
    v18 = *(v1 + 432);
    v19 = *(v1 + 416);
    v82 = *(v1 + 424);
    v83 = *(v1 + 440);
    v81 = *(v1 + 408);
    v20 = *(v1 + 560);
    v22 = *(v1 + 384);
    v21 = *(v1 + 392);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_230E1B948(0x636E657265666E69, 0xE900000000000065, 3, 0x776F6C666B726F77, 0xEC00000065707954, isUniquelyReferenced_nonNull_native);

    v24 = swift_isUniquelyReferenced_nonNull_native();
    sub_230E1B948(v22, v21, 3, 0x6564496C65646F6DLL, 0xEF7265696669746ELL, v24);
    if (v20)
    {
      v25 = 0x69706D6F63657270;
    }

    else
    {
      v25 = 0x6F73736572707365;
    }

    if (v20)
    {
      v26 = 0xEB0000000064656CLL;
    }

    else
    {
      v26 = 0xEA00000000003256;
    }

    v27 = swift_isUniquelyReferenced_nonNull_native();
    sub_230E1B948(v25, v26, 3, 0x726F466C65646F6DLL, 0xEB0000000074616DLL, v27);

    v28 = swift_isUniquelyReferenced_nonNull_native();
    sub_230E1B948(v81, v19, 3, 0x6564497465737361, 0xEF7265696669746ELL, v28);

    v29 = swift_isUniquelyReferenced_nonNull_native();
    sub_230E1B948(v82, v18, 3, 0xD000000000000015, 0x8000000230E80190, v29);

    v30 = swift_isUniquelyReferenced_nonNull_native();
    sub_230E1B948(v83, v17, 3, 0x7269447465737361, 0xEE0079726F746365, v30);
    if (v16)
    {
      v31 = v84;
    }

    else
    {
      v31 = 0x746C7561666564;
    }

    if (v16)
    {
      v32 = v16;
    }

    else
    {
      v32 = 0xE700000000000000;
    }

    v33 = swift_isUniquelyReferenced_nonNull_native();
    sub_230E1B948(v31, v32, 3, 0xD000000000000013, 0x8000000230E801F0, v33);
    v34 = v15;
    if (*(v85 + 16))
    {
      v35 = *(v1 + 456);
      sub_230E686F0();
      swift_allocObject();

      sub_230E686E0();
      *(v1 + 296) = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D9A0, &qword_230E77D90);
      sub_230DD705C(&qword_281565FC0, sub_230DD6800, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
      v42 = sub_230E686D0();
      v44 = v43;

      sub_230E690A0();
      v45 = sub_230E69080();
      if (v46)
      {
        v47 = v45;
      }

      else
      {
        v47 = 32123;
      }

      if (v46)
      {
        v48 = v46;
      }

      else
      {
        v48 = 0xE200000000000000;
      }

      v49 = swift_isUniquelyReferenced_nonNull_native();
      sub_230E1B948(v47, v48, 3, 0xD000000000000010, 0x8000000230E801B0, v49);
      sub_230D0F4A8(v42, v44);
    }

    v50 = *(v1 + 464);
    v9 = (v1 + 400);
    if (!*(v50 + 16))
    {
      goto LABEL_45;
    }

    sub_230E686F0();
    swift_allocObject();

    sub_230E686E0();
    *(v1 + 304) = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5C828, &qword_230E77DA0);
    sub_230DD6854(&unk_281565FB0, sub_230DD68D8, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    v72 = sub_230E686D0();
    v74 = v73;

    sub_230E690A0();
    v75 = sub_230E69080();
    if (v76)
    {
      v77 = v75;
    }

    else
    {
      v77 = 32123;
    }

    if (v76)
    {
      v78 = v76;
    }

    else
    {
      v78 = 0xE200000000000000;
    }

    v79 = swift_isUniquelyReferenced_nonNull_native();
    v90 = v15;
    sub_230E1B948(v77, v78, 3, 0xD000000000000011, 0x8000000230E801D0, v79);
    v80 = v74;
    v9 = (v1 + 400);
    sub_230D0F4A8(v72, v80);
  }

  else
  {
    v36 = *(v1 + 406);
    v37 = *(v1 + 404);
    v38 = *v9;
    v39 = *(v1 + 560);
    v40 = *(v1 + 384);
    v41 = swift_isUniquelyReferenced_nonNull_native();
    sub_230E1B948(1701606770, 0xE400000000000000, 3, 0x776F6C666B726F77, 0xEC00000065707954, v41);
    if (*(v40 + 16))
    {
      sub_230E686F0();
      swift_allocObject();

      sub_230E686E0();
      *(v1 + 280) = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5BAD0, &qword_230E73560);
      sub_230D6C1DC(&unk_281565FA0, MEMORY[0x277D837D8], MEMORY[0x277D83A08], MEMORY[0x277D83508]);
      v51 = sub_230E686D0();
      v86 = v52;

      sub_230E690A0();
      v53 = sub_230E69080();
      if (v54)
      {
        v55 = v53;
      }

      else
      {
        v55 = 32123;
      }

      v56 = v37;
      v57 = v36;
      v58 = v38;
      v59 = v39;
      if (v54)
      {
        v60 = v54;
      }

      else
      {
        v60 = 0xE200000000000000;
      }

      v61 = swift_isUniquelyReferenced_nonNull_native();
      v62 = v60;
      v39 = v59;
      v38 = v58;
      v36 = v57;
      v37 = v56;
      sub_230E1B948(v55, v62, 3, 0x6574656D61726170, 0xEA00000000007372, v61);
      v63 = v51;
      v9 = (v1 + 400);
      sub_230D0F4A8(v63, v86);
    }

    v64 = (v38 << 8) | ((v37 | (v36 << 16)) << 40) | v39;
    if (v64)
    {
      v65 = *(v1 + 392);
    }

    else
    {
      v65 = 0x746C7561666564;
    }

    if (v64)
    {
      v66 = (v38 << 8) | ((v37 | (v36 << 16)) << 40) | v39;
    }

    else
    {
      v66 = 0xE700000000000000;
    }

    v67 = swift_isUniquelyReferenced_nonNull_native();
    v90 = v15;
    sub_230E1B948(v65, v66, 3, 0xD000000000000013, 0x8000000230E801F0, v67);
  }

  v34 = v90;
LABEL_45:
  v68 = *(v1 + 520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B2C0, &unk_230E6F630);
  v69 = swift_allocObject();
  *(v1 + 528) = v69;
  *(v69 + 16) = xmmword_230E6B3B0;
  *(v69 + 32) = v34;
  v87 = *(v9 + 26);
  v89 = *(v9 + 22);
  v70 = sub_230E1CA68(&unk_2845A5038);
  *(v1 + 536) = v70;
  swift_arrayDestroy();
  *(v1 + 248) = 0x6C666B726F575F5FLL;
  *(v1 + 256) = 0xEA0000000000776FLL;
  *(v1 + 264) = v69;
  *(v1 + 272) = v70;
  *(v1 + 224) = v87;
  *(v1 + 208) = v89;
  *(v1 + 240) = v68;
  v71 = swift_task_alloc();
  *(v1 + 544) = v71;
  *v71 = v1;
  v71[1] = sub_230E595B8;

  return sub_230D41CA0(v1 + 288, v1 + 248, v1 + 208);
}

uint64_t sub_230E595B8()
{
  *(*v1 + 552) = v0;

  if (v0)
  {
    v2 = sub_230E5989C;
  }

  else
  {

    v2 = sub_230E596F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_230E596F0()
{
  v12 = v0;
  v1 = v0[36];
  if (qword_27DB5A4B0 != -1)
  {
    swift_once();
  }

  v2 = sub_230E68D80();
  __swift_project_value_buffer(v2, qword_27DB80BC0);

  v3 = sub_230E68D60();
  v4 = sub_230E693F0();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[39];
    v5 = v0[40];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_230D7E620(v6, v5, &v11);
    *(v7 + 12) = 2048;
    *(v7 + 14) = v1;
    _os_log_impl(&dword_230D02000, v3, v4, "[SystemDatabase][upsertWorkflow] Upserted workflow: %s, processed: %lld", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x23191EAE0](v8, -1, -1);
    MEMORY[0x23191EAE0](v7, -1, -1);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_230E5989C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230E59930()
{
  v0 = type metadata accessor for SQLDatabaseConfiguration(0);
  __swift_allocate_value_buffer(v0, qword_27DB80B18);
  v1 = __swift_project_value_buffer(v0, qword_27DB80B18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A950, &qword_230E6B9F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_230E7F560;
  if (qword_27DB5A480 != -1)
  {
    swift_once();
  }

  v3 = *algn_27DB80B38;
  v4 = qword_27DB80B40;
  *(v2 + 32) = qword_27DB80B30;
  *(v2 + 40) = v3;
  *(v2 + 48) = v4;
  v5 = qword_27DB5A488;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = unk_27DB80B50;
  v7 = qword_27DB80B58;
  *(v2 + 56) = qword_27DB80B48;
  *(v2 + 64) = v6;
  *(v2 + 72) = v7;
  v8 = qword_27DB5A490;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = *algn_27DB80B68;
  v10 = qword_27DB80B70;
  *(v2 + 80) = qword_27DB80B60;
  *(v2 + 88) = v9;
  *(v2 + 96) = v10;
  v11 = qword_27DB5A498;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = unk_27DB80B80;
  v13 = qword_27DB80B88;
  *(v2 + 104) = qword_27DB80B78;
  *(v2 + 112) = v12;
  *(v2 + 120) = v13;
  v14 = qword_27DB5A4A0;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = *algn_27DB80B98;
  v16 = qword_27DB80BA0;
  *(v2 + 128) = qword_27DB80B90;
  *(v2 + 136) = v15;
  *(v2 + 144) = v16;
  v17 = qword_27DB5A4A8;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = unk_27DB80BB0;
  v19 = qword_27DB80BB8;
  *(v2 + 152) = qword_27DB80BA8;
  *(v2 + 160) = v18;
  *(v2 + 168) = v19;
  v20 = *(v0 + 32);
  v21 = sub_230E68860();
  (*(*(v21 - 8) + 56))(v1 + v20, 1, 1, v21);
  *v1 = 0x6D6574737973;
  *(v1 + 8) = 0xE600000000000000;
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
}

void sub_230E59C20()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A958, &qword_230E6B9F8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_230E7F560;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0;
  *(v0 + 32) = 0x696669746E656469;
  *(v0 + 40) = 0xEA00000000007265;
  *(v0 + 48) = 3;
  *(v0 + 56) = xmmword_230E7F570;
  *(v0 + 72) = 3;
  sub_230D0F460(0, 0, 255);
  *(v0 + 73) = 0;
  *(v0 + 75) = 1;
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0;
  sub_230D0F4FC(v1, v2, v3, v4);
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0;
  strcpy((v0 + 120), "systemStatus");
  *(v0 + 133) = 0;
  *(v0 + 134) = -5120;
  *(v0 + 136) = 3;
  *(v0 + 144) = 0;
  *(v0 + 152) = 0;
  *(v0 + 160) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 161) = 0;
  *(v0 + 163) = 0;
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  v7 = *(v0 + 184);
  v8 = *(v0 + 192);
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0;
  sub_230D0F4FC(v5, v6, v7, v8);
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0;
  strcpy((v0 + 208), "lastSyncTime");
  *(v0 + 221) = 0;
  *(v0 + 222) = -5120;
  *(v0 + 224) = 2;
  *(v0 + 232) = 0;
  *(v0 + 240) = 0;
  *(v0 + 248) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 249) = 1;
  *(v0 + 251) = 0;
  v9 = *(v0 + 256);
  v10 = *(v0 + 264);
  v11 = *(v0 + 272);
  v12 = *(v0 + 280);
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0;
  sub_230D0F4FC(v9, v10, v11, v12);
  *(v0 + 344) = 0u;
  *(v0 + 360) = 0u;
  *(v0 + 376) = 0;
  strcpy((v0 + 296), "configVersion");
  *(v0 + 310) = -4864;
  *(v0 + 312) = 2;
  *(v0 + 320) = 0;
  *(v0 + 328) = 0;
  *(v0 + 336) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 337) = 1;
  *(v0 + 339) = 0;
  v13 = *(v0 + 344);
  v14 = *(v0 + 352);
  v15 = *(v0 + 360);
  v16 = *(v0 + 368);
  *(v0 + 344) = 0u;
  *(v0 + 360) = 0u;
  *(v0 + 376) = 0;
  sub_230D0F4FC(v13, v14, v15, v16);
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  *(v0 + 464) = 0;
  *(v0 + 384) = 0xD000000000000016;
  *(v0 + 392) = 0x8000000230E84EE0;
  *(v0 + 400) = 2;
  *(v0 + 408) = 1;
  *(v0 + 416) = 0;
  *(v0 + 424) = 2;
  sub_230D0F460(0, 0, 255);
  *(v0 + 425) = 0;
  *(v0 + 427) = 0;
  v17 = *(v0 + 432);
  v18 = *(v0 + 440);
  v19 = *(v0 + 448);
  v20 = *(v0 + 456);
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  *(v0 + 464) = 0;
  sub_230D0F4FC(v17, v18, v19, v20);
  *(v0 + 520) = 0u;
  *(v0 + 536) = 0u;
  *(v0 + 552) = 0;
  *(v0 + 472) = 0x616470557473616CLL;
  *(v0 + 480) = 0xEF656D6954646574;
  *(v0 + 488) = 2;
  *(v0 + 496) = 0;
  *(v0 + 504) = 0;
  *(v0 + 512) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 513) = 0;
  *(v0 + 515) = 0;
  v21 = *(v0 + 520);
  v22 = *(v0 + 528);
  v23 = *(v0 + 536);
  v24 = *(v0 + 544);
  *(v0 + 520) = 0u;
  *(v0 + 536) = 0u;
  *(v0 + 552) = 0;
  sub_230D0F4FC(v21, v22, v23, v24);
  qword_27DB80B30 = 0xD000000000000010;
  *algn_27DB80B38 = 0x8000000230E84E70;
  qword_27DB80B40 = v0;
}

void sub_230E59F6C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A958, &qword_230E6B9F8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_230E7F0E0;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0;
  *(v0 + 32) = 0x696669746E656469;
  *(v0 + 40) = 0xEA00000000007265;
  *(v0 + 48) = 3;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 73) = 0;
  *(v0 + 75) = 1;
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0;
  sub_230D0F4FC(v1, v2, v3, v4);
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0;
  *(v0 + 120) = 0x6E69616D6F64;
  *(v0 + 128) = 0xE600000000000000;
  *(v0 + 136) = 3;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 161) = 0;
  *(v0 + 163) = 0;
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  v7 = *(v0 + 184);
  v8 = *(v0 + 192);
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0;
  sub_230D0F4FC(v5, v6, v7, v8);
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0;
  strcpy((v0 + 208), "databaseType");
  *(v0 + 221) = 0;
  *(v0 + 222) = -5120;
  *(v0 + 224) = 3;
  *(v0 + 232) = 0u;
  *(v0 + 248) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 249) = 0;
  *(v0 + 251) = 0;
  v9 = *(v0 + 256);
  v10 = *(v0 + 264);
  v11 = *(v0 + 272);
  v12 = *(v0 + 280);
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0;
  sub_230D0F4FC(v9, v10, v11, v12);
  *(v0 + 344) = 0u;
  *(v0 + 360) = 0u;
  *(v0 + 376) = 0;
  *(v0 + 296) = 1701667182;
  *(v0 + 304) = 0xE400000000000000;
  *(v0 + 312) = 3;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 337) = 0;
  *(v0 + 339) = 0;
  v13 = *(v0 + 344);
  v14 = *(v0 + 352);
  v15 = *(v0 + 360);
  v16 = *(v0 + 368);
  *(v0 + 344) = 0u;
  *(v0 + 360) = 0u;
  *(v0 + 376) = 0;
  sub_230D0F4FC(v13, v14, v15, v16);
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  *(v0 + 464) = 0;
  strcpy((v0 + 384), "schemaVersion");
  *(v0 + 398) = -4864;
  *(v0 + 400) = 2;
  *(v0 + 408) = 0u;
  *(v0 + 424) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 425) = 0;
  *(v0 + 427) = 0;
  v17 = *(v0 + 432);
  v18 = *(v0 + 440);
  v19 = *(v0 + 448);
  v20 = *(v0 + 456);
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  *(v0 + 464) = 0;
  sub_230D0F4FC(v17, v18, v19, v20);
  *(v0 + 520) = 0u;
  *(v0 + 536) = 0u;
  *(v0 + 552) = 0;
  *(v0 + 472) = 0x6144616D65686373;
  *(v0 + 480) = 0xEA00000000006174;
  *(v0 + 488) = 0;
  *(v0 + 496) = 0u;
  *(v0 + 512) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 513) = 1;
  *(v0 + 515) = 0;
  v21 = *(v0 + 520);
  v22 = *(v0 + 528);
  v23 = *(v0 + 536);
  v24 = *(v0 + 544);
  *(v0 + 520) = 0u;
  *(v0 + 536) = 0u;
  *(v0 + 552) = 0;
  sub_230D0F4FC(v21, v22, v23, v24);
  *(v0 + 608) = 0u;
  *(v0 + 624) = 0u;
  *(v0 + 640) = 0;
  *(v0 + 560) = 0x737574617473;
  *(v0 + 568) = 0xE600000000000000;
  *(v0 + 576) = 3;
  *(v0 + 584) = 0x676E69646E6570;
  *(v0 + 592) = 0xE700000000000000;
  *(v0 + 600) = 3;
  sub_230D0F460(0, 0, 255);
  *(v0 + 601) = 0;
  *(v0 + 603) = 0;
  v25 = *(v0 + 608);
  v26 = *(v0 + 616);
  v27 = *(v0 + 624);
  v28 = *(v0 + 632);
  *(v0 + 608) = 0u;
  *(v0 + 624) = 0u;
  *(v0 + 640) = 0;
  sub_230D0F4FC(v25, v26, v27, v28);
  *(v0 + 696) = 0u;
  *(v0 + 712) = 0u;
  *(v0 + 728) = 0;
  strcpy((v0 + 648), "storageClass");
  *(v0 + 661) = 0;
  *(v0 + 662) = -5120;
  *(v0 + 664) = 3;
  *(v0 + 672) = 0u;
  *(v0 + 688) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 689) = 0;
  *(v0 + 691) = 0;
  v29 = *(v0 + 696);
  v30 = *(v0 + 704);
  v31 = *(v0 + 712);
  v32 = *(v0 + 720);
  *(v0 + 696) = 0u;
  *(v0 + 712) = 0u;
  *(v0 + 728) = 0;
  sub_230D0F4FC(v29, v30, v31, v32);
  *(v0 + 784) = 0u;
  *(v0 + 800) = 0u;
  *(v0 + 816) = 0;
  *(v0 + 736) = 0x68746150656C6966;
  *(v0 + 744) = 0xE800000000000000;
  *(v0 + 752) = 3;
  *(v0 + 760) = 0u;
  *(v0 + 776) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 777) = 0;
  *(v0 + 779) = 0;
  v33 = *(v0 + 784);
  v34 = *(v0 + 792);
  v35 = *(v0 + 800);
  v36 = *(v0 + 808);
  *(v0 + 784) = 0u;
  *(v0 + 800) = 0u;
  *(v0 + 816) = 0;
  sub_230D0F4FC(v33, v34, v35, v36);
  *(v0 + 872) = 0u;
  *(v0 + 888) = 0u;
  *(v0 + 904) = 0;
  strcpy((v0 + 824), "creationTime");
  *(v0 + 837) = 0;
  *(v0 + 838) = -5120;
  *(v0 + 840) = 2;
  *(v0 + 848) = 0u;
  *(v0 + 864) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 865) = 0;
  *(v0 + 867) = 0;
  v37 = *(v0 + 872);
  v38 = *(v0 + 880);
  v39 = *(v0 + 888);
  v40 = *(v0 + 896);
  *(v0 + 872) = 0u;
  *(v0 + 888) = 0u;
  *(v0 + 904) = 0;
  sub_230D0F4FC(v37, v38, v39, v40);
  *(v0 + 960) = 0u;
  *(v0 + 976) = 0u;
  *(v0 + 992) = 0;
  *(v0 + 912) = 0x616470557473616CLL;
  *(v0 + 920) = 0xEF656D6954646574;
  *(v0 + 928) = 2;
  *(v0 + 936) = 0u;
  *(v0 + 952) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 953) = 0;
  *(v0 + 955) = 0;
  v41 = *(v0 + 960);
  v42 = *(v0 + 968);
  v43 = *(v0 + 976);
  v44 = *(v0 + 984);
  *(v0 + 960) = 0u;
  *(v0 + 976) = 0u;
  *(v0 + 992) = 0;
  sub_230D0F4FC(v41, v42, v43, v44);
  qword_27DB80B48 = 0xD000000000000012;
  unk_27DB80B50 = 0x8000000230E81B30;
  qword_27DB80B58 = v0;
}

void sub_230E5A518()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A958, &qword_230E6B9F8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_230E7F480;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0;
  *(v0 + 32) = 0x6564496369706F74;
  *(v0 + 40) = 0xEF7265696669746ELL;
  *(v0 + 48) = 3;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 73) = 0;
  *(v0 + 75) = 1;
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0;
  sub_230D0F4FC(v1, v2, v3, v4);
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0;
  *(v0 + 120) = 0x6E69616D6F64;
  *(v0 + 128) = 0xE600000000000000;
  *(v0 + 136) = 3;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 161) = 0;
  *(v0 + 163) = 0;
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  v7 = *(v0 + 184);
  v8 = *(v0 + 192);
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0;
  sub_230D0F4FC(v5, v6, v7, v8);
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0;
  *(v0 + 208) = 0x656873696C627570;
  *(v0 + 216) = 0xEA00000000007372;
  *(v0 + 224) = 3;
  *(v0 + 232) = 0u;
  *(v0 + 248) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 249) = 0;
  *(v0 + 251) = 0;
  v9 = *(v0 + 256);
  v10 = *(v0 + 264);
  v11 = *(v0 + 272);
  v12 = *(v0 + 280);
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0;
  sub_230D0F4FC(v9, v10, v11, v12);
  *(v0 + 344) = 0u;
  *(v0 + 360) = 0u;
  *(v0 + 376) = 0;
  *(v0 + 296) = 0xD000000000000010;
  *(v0 + 304) = 0x8000000230E80210;
  *(v0 + 312) = 3;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 337) = 0;
  *(v0 + 339) = 0;
  v13 = *(v0 + 344);
  v14 = *(v0 + 352);
  v15 = *(v0 + 360);
  v16 = *(v0 + 368);
  *(v0 + 344) = 0u;
  *(v0 + 360) = 0u;
  *(v0 + 376) = 0;
  sub_230D0F4FC(v13, v14, v15, v16);
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  *(v0 + 464) = 0;
  strcpy((v0 + 384), "samplingRate");
  *(v0 + 397) = 0;
  *(v0 + 398) = -5120;
  *(v0 + 400) = 1;
  *(v0 + 408) = 0u;
  *(v0 + 424) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 425) = 0;
  *(v0 + 427) = 0;
  v17 = *(v0 + 432);
  v18 = *(v0 + 440);
  v19 = *(v0 + 448);
  v20 = *(v0 + 456);
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  *(v0 + 464) = 0;
  sub_230D0F4FC(v17, v18, v19, v20);
  *(v0 + 520) = 0u;
  *(v0 + 536) = 0u;
  *(v0 + 552) = 0;
  *(v0 + 472) = 0xD00000000000001ALL;
  *(v0 + 480) = 0x8000000230E80230;
  *(v0 + 488) = 3;
  *(v0 + 496) = 0u;
  *(v0 + 512) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 513) = 1;
  *(v0 + 515) = 0;
  v21 = *(v0 + 520);
  v22 = *(v0 + 528);
  v23 = *(v0 + 536);
  v24 = *(v0 + 544);
  *(v0 + 520) = 0u;
  *(v0 + 536) = 0u;
  *(v0 + 552) = 0;
  sub_230D0F4FC(v21, v22, v23, v24);
  *(v0 + 608) = 0u;
  *(v0 + 624) = 0u;
  *(v0 + 640) = 0;
  *(v0 + 560) = 0xD000000000000015;
  *(v0 + 568) = 0x8000000230E80250;
  *(v0 + 576) = 3;
  *(v0 + 584) = 0u;
  *(v0 + 600) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 601) = 1;
  *(v0 + 603) = 0;
  v25 = *(v0 + 608);
  v26 = *(v0 + 616);
  v27 = *(v0 + 624);
  v28 = *(v0 + 632);
  *(v0 + 608) = 0u;
  *(v0 + 624) = 0u;
  *(v0 + 640) = 0;
  sub_230D0F4FC(v25, v26, v27, v28);
  *(v0 + 696) = 0u;
  *(v0 + 712) = 0u;
  *(v0 + 728) = 0;
  strcpy((v0 + 648), "creationTime");
  *(v0 + 661) = 0;
  *(v0 + 662) = -5120;
  *(v0 + 664) = 2;
  *(v0 + 672) = 0u;
  *(v0 + 688) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 689) = 0;
  *(v0 + 691) = 0;
  v29 = *(v0 + 696);
  v30 = *(v0 + 704);
  v31 = *(v0 + 712);
  v32 = *(v0 + 720);
  *(v0 + 696) = 0u;
  *(v0 + 712) = 0u;
  *(v0 + 728) = 0;
  sub_230D0F4FC(v29, v30, v31, v32);
  *(v0 + 784) = 0u;
  *(v0 + 800) = 0u;
  *(v0 + 816) = 0;
  *(v0 + 736) = 0x616470557473616CLL;
  *(v0 + 744) = 0xEF656D6954646574;
  *(v0 + 752) = 2;
  *(v0 + 760) = 0u;
  *(v0 + 776) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 777) = 0;
  *(v0 + 779) = 0;
  v33 = *(v0 + 784);
  v34 = *(v0 + 792);
  v35 = *(v0 + 800);
  v36 = *(v0 + 808);
  *(v0 + 784) = 0u;
  *(v0 + 800) = 0u;
  *(v0 + 816) = 0;
  sub_230D0F4FC(v33, v34, v35, v36);
  qword_27DB80B60 = 0x656D656C65545F5FLL;
  *algn_27DB80B68 = 0xEF63657053797274;
  qword_27DB80B70 = v0;
}

void sub_230E5A9D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A958, &qword_230E6B9F8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_230E6B790;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0;
  *(v0 + 32) = 0x696669746E656469;
  *(v0 + 40) = 0xEA00000000007265;
  *(v0 + 48) = 3;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 73) = 0;
  *(v0 + 75) = 1;
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0;
  sub_230D0F4FC(v1, v2, v3, v4);
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0;
  *(v0 + 120) = 0x6E69616D6F64;
  *(v0 + 128) = 0xE600000000000000;
  *(v0 + 136) = 3;
  *(v0 + 144) = 0;
  *(v0 + 152) = 0;
  *(v0 + 160) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 161) = 0;
  *(v0 + 163) = 0;
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  v7 = *(v0 + 184);
  v8 = *(v0 + 192);
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0;
  sub_230D0F4FC(v5, v6, v7, v8);
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0;
  strcpy((v0 + 208), "creationTime");
  *(v0 + 221) = 0;
  *(v0 + 222) = -5120;
  *(v0 + 224) = 2;
  *(v0 + 232) = 0;
  *(v0 + 240) = 0;
  *(v0 + 248) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 249) = 0;
  *(v0 + 251) = 0;
  v9 = *(v0 + 256);
  v10 = *(v0 + 264);
  v11 = *(v0 + 272);
  v12 = *(v0 + 280);
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0;
  sub_230D0F4FC(v9, v10, v11, v12);
  *(v0 + 344) = 0u;
  *(v0 + 360) = 0u;
  *(v0 + 376) = 0;
  *(v0 + 296) = 0x616470557473616CLL;
  *(v0 + 304) = 0xEF656D6954646574;
  *(v0 + 312) = 2;
  *(v0 + 320) = 0;
  *(v0 + 328) = 0;
  *(v0 + 336) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 337) = 0;
  *(v0 + 339) = 0;
  v13 = *(v0 + 344);
  v14 = *(v0 + 352);
  v15 = *(v0 + 360);
  v16 = *(v0 + 368);
  *(v0 + 344) = 0u;
  *(v0 + 360) = 0u;
  *(v0 + 376) = 0;
  sub_230D0F4FC(v13, v14, v15, v16);
  qword_27DB80B78 = 0x7361436573555F5FLL;
  unk_27DB80B80 = 0xE900000000000065;
  qword_27DB80B88 = v0;
}

void sub_230E5AC20()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A958, &qword_230E6B9F8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_230E7F860;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0;
  *(v0 + 32) = 0x696669746E656469;
  *(v0 + 40) = 0xEA00000000007265;
  *(v0 + 48) = 3;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 73) = 0;
  *(v0 + 75) = 1;
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0;
  sub_230D0F4FC(v1, v2, v3, v4);
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0;
  *(v0 + 120) = 0xD000000000000011;
  *(v0 + 128) = 0x8000000230E80170;
  *(v0 + 136) = 3;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 161) = 0;
  *(v0 + 163) = 0;
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  v7 = *(v0 + 184);
  v8 = *(v0 + 192);
  *(v0 + 168) = xmmword_230E7F870;
  *(v0 + 184) = xmmword_230E7F880;
  *(v0 + 200) = 2;
  sub_230D0F4FC(v5, v6, v7, v8);
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0;
  strcpy((v0 + 208), "workflowType");
  *(v0 + 221) = 0;
  *(v0 + 222) = -5120;
  *(v0 + 224) = 3;
  *(v0 + 232) = 0u;
  *(v0 + 248) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 249) = 0;
  *(v0 + 251) = 0;
  v9 = *(v0 + 256);
  v10 = *(v0 + 264);
  v11 = *(v0 + 272);
  v12 = *(v0 + 280);
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0;
  sub_230D0F4FC(v9, v10, v11, v12);
  *(v0 + 344) = 0u;
  *(v0 + 360) = 0u;
  *(v0 + 376) = 0;
  *(v0 + 296) = 0x6564496C65646F6DLL;
  *(v0 + 304) = 0xEF7265696669746ELL;
  *(v0 + 312) = 3;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 337) = 1;
  *(v0 + 339) = 0;
  v13 = *(v0 + 344);
  v14 = *(v0 + 352);
  v15 = *(v0 + 360);
  v16 = *(v0 + 368);
  *(v0 + 344) = 0u;
  *(v0 + 360) = 0u;
  *(v0 + 376) = 0;
  sub_230D0F4FC(v13, v14, v15, v16);
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  *(v0 + 464) = 0;
  *(v0 + 384) = 0x726F466C65646F6DLL;
  *(v0 + 392) = 0xEB0000000074616DLL;
  *(v0 + 400) = 3;
  *(v0 + 408) = 0u;
  *(v0 + 424) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 425) = 1;
  *(v0 + 427) = 0;
  v17 = *(v0 + 432);
  v18 = *(v0 + 440);
  v19 = *(v0 + 448);
  v20 = *(v0 + 456);
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  *(v0 + 464) = 0;
  sub_230D0F4FC(v17, v18, v19, v20);
  *(v0 + 520) = 0u;
  *(v0 + 536) = 0u;
  *(v0 + 552) = 0;
  *(v0 + 472) = 0x6564497465737361;
  *(v0 + 480) = 0xEF7265696669746ELL;
  *(v0 + 488) = 3;
  *(v0 + 496) = 0u;
  *(v0 + 512) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 513) = 1;
  *(v0 + 515) = 0;
  v21 = *(v0 + 520);
  v22 = *(v0 + 528);
  v23 = *(v0 + 536);
  v24 = *(v0 + 544);
  *(v0 + 520) = 0u;
  *(v0 + 536) = 0u;
  *(v0 + 552) = 0;
  sub_230D0F4FC(v21, v22, v23, v24);
  *(v0 + 608) = 0u;
  *(v0 + 624) = 0u;
  *(v0 + 640) = 0;
  *(v0 + 560) = 0xD000000000000015;
  *(v0 + 568) = 0x8000000230E80190;
  *(v0 + 576) = 3;
  *(v0 + 584) = 0u;
  *(v0 + 600) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 601) = 1;
  *(v0 + 603) = 0;
  v25 = *(v0 + 608);
  v26 = *(v0 + 616);
  v27 = *(v0 + 624);
  v28 = *(v0 + 632);
  *(v0 + 608) = 0u;
  *(v0 + 624) = 0u;
  *(v0 + 640) = 0;
  sub_230D0F4FC(v25, v26, v27, v28);
  *(v0 + 696) = 0u;
  *(v0 + 712) = 0u;
  *(v0 + 728) = 0;
  strcpy((v0 + 648), "assetDirectory");
  *(v0 + 663) = -18;
  *(v0 + 664) = 3;
  *(v0 + 672) = 0u;
  *(v0 + 688) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 689) = 1;
  *(v0 + 691) = 0;
  v29 = *(v0 + 696);
  v30 = *(v0 + 704);
  v31 = *(v0 + 712);
  v32 = *(v0 + 720);
  *(v0 + 696) = 0u;
  *(v0 + 712) = 0u;
  *(v0 + 728) = 0;
  sub_230D0F4FC(v29, v30, v31, v32);
  *(v0 + 784) = 0u;
  *(v0 + 800) = 0u;
  *(v0 + 816) = 0;
  *(v0 + 736) = 0xD000000000000010;
  *(v0 + 744) = 0x8000000230E801B0;
  *(v0 + 752) = 3;
  *(v0 + 760) = 0u;
  *(v0 + 776) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 777) = 1;
  *(v0 + 779) = 0;
  v33 = *(v0 + 784);
  v34 = *(v0 + 792);
  v35 = *(v0 + 800);
  v36 = *(v0 + 808);
  *(v0 + 784) = 0u;
  *(v0 + 800) = 0u;
  *(v0 + 816) = 0;
  sub_230D0F4FC(v33, v34, v35, v36);
  *(v0 + 872) = 0u;
  *(v0 + 888) = 0u;
  *(v0 + 904) = 0;
  *(v0 + 824) = 0xD000000000000011;
  *(v0 + 832) = 0x8000000230E801D0;
  *(v0 + 840) = 3;
  *(v0 + 848) = 0u;
  *(v0 + 864) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 865) = 1;
  *(v0 + 867) = 0;
  v37 = *(v0 + 872);
  v38 = *(v0 + 880);
  v39 = *(v0 + 888);
  v40 = *(v0 + 896);
  *(v0 + 872) = 0u;
  *(v0 + 888) = 0u;
  *(v0 + 904) = 0;
  sub_230D0F4FC(v37, v38, v39, v40);
  *(v0 + 960) = 0u;
  *(v0 + 976) = 0u;
  *(v0 + 992) = 0;
  *(v0 + 912) = 0x6574656D61726170;
  *(v0 + 920) = 0xEA00000000007372;
  *(v0 + 928) = 3;
  *(v0 + 936) = 0u;
  *(v0 + 952) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 953) = 1;
  *(v0 + 955) = 0;
  v41 = *(v0 + 960);
  v42 = *(v0 + 968);
  v43 = *(v0 + 976);
  v44 = *(v0 + 984);
  *(v0 + 960) = 0u;
  *(v0 + 976) = 0u;
  *(v0 + 992) = 0;
  sub_230D0F4FC(v41, v42, v43, v44);
  *(v0 + 1048) = 0u;
  *(v0 + 1064) = 0u;
  *(v0 + 1080) = 0;
  *(v0 + 1000) = 0xD000000000000013;
  *(v0 + 1008) = 0x8000000230E801F0;
  *(v0 + 1016) = 3;
  *(v0 + 1024) = 0u;
  *(v0 + 1040) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 1041) = 1;
  *(v0 + 1043) = 0;
  v45 = *(v0 + 1048);
  v46 = *(v0 + 1056);
  v47 = *(v0 + 1064);
  v48 = *(v0 + 1072);
  *(v0 + 1048) = 0u;
  *(v0 + 1064) = 0u;
  *(v0 + 1080) = 0;
  sub_230D0F4FC(v45, v46, v47, v48);
  *(v0 + 1136) = 0u;
  *(v0 + 1152) = 0u;
  *(v0 + 1168) = 0;
  strcpy((v0 + 1088), "creationTime");
  *(v0 + 1101) = 0;
  *(v0 + 1102) = -5120;
  *(v0 + 1104) = 2;
  *(v0 + 1112) = 0u;
  *(v0 + 1128) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 1129) = 0;
  *(v0 + 1131) = 0;
  v49 = *(v0 + 1136);
  v50 = *(v0 + 1144);
  v51 = *(v0 + 1152);
  v52 = *(v0 + 1160);
  *(v0 + 1136) = 0u;
  *(v0 + 1152) = 0u;
  *(v0 + 1168) = 0;
  sub_230D0F4FC(v49, v50, v51, v52);
  *(v0 + 1224) = 0u;
  *(v0 + 1240) = 0u;
  *(v0 + 1256) = 0;
  *(v0 + 1176) = 0x616470557473616CLL;
  *(v0 + 1184) = 0xEF656D6954646574;
  *(v0 + 1192) = 2;
  *(v0 + 1200) = 0u;
  *(v0 + 1216) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 1217) = 0;
  *(v0 + 1219) = 0;
  v53 = *(v0 + 1224);
  v54 = *(v0 + 1232);
  v55 = *(v0 + 1240);
  v56 = *(v0 + 1248);
  *(v0 + 1224) = 0u;
  *(v0 + 1240) = 0u;
  *(v0 + 1256) = 0;
  sub_230D0F4FC(v53, v54, v55, v56);
  qword_27DB80B90 = 0x6C666B726F575F5FLL;
  *algn_27DB80B98 = 0xEA0000000000776FLL;
  qword_27DB80BA0 = v0;
}

void sub_230E5B354()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A958, &qword_230E6B9F8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_230E7F890;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0;
  strcpy((v0 + 32), "areaIdentifier");
  *(v0 + 47) = -18;
  *(v0 + 48) = 3;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 73) = 0;
  *(v0 + 75) = 1;
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0;
  sub_230D0F4FC(v1, v2, v3, v4);
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0;
  *(v0 + 120) = 0x696669746E656469;
  *(v0 + 128) = 0xEA00000000007265;
  *(v0 + 136) = 3;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 161) = 0;
  *(v0 + 163) = 1;
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  v7 = *(v0 + 184);
  v8 = *(v0 + 192);
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0;
  sub_230D0F4FC(v5, v6, v7, v8);
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0;
  *(v0 + 208) = 0x6E69616D6F64;
  *(v0 + 216) = 0xE600000000000000;
  *(v0 + 224) = 3;
  *(v0 + 232) = 0u;
  *(v0 + 248) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 249) = 0;
  *(v0 + 251) = 0;
  v9 = *(v0 + 256);
  v10 = *(v0 + 264);
  v11 = *(v0 + 272);
  v12 = *(v0 + 280);
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0;
  sub_230D0F4FC(v9, v10, v11, v12);
  *(v0 + 344) = 0u;
  *(v0 + 360) = 0u;
  *(v0 + 376) = 0;
  *(v0 + 296) = 0x74656B637562;
  *(v0 + 304) = 0xE600000000000000;
  *(v0 + 312) = 2;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 337) = 0;
  *(v0 + 339) = 0;
  v13 = *(v0 + 344);
  v14 = *(v0 + 352);
  v15 = *(v0 + 360);
  v16 = *(v0 + 368);
  *(v0 + 344) = 0u;
  *(v0 + 360) = 0u;
  *(v0 + 376) = 0;
  sub_230D0F4FC(v13, v14, v15, v16);
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  *(v0 + 464) = 0;
  *(v0 + 384) = 0x7461447472617473;
  *(v0 + 392) = 0xE900000000000065;
  *(v0 + 400) = 2;
  *(v0 + 408) = 0u;
  *(v0 + 424) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 425) = 0;
  *(v0 + 427) = 0;
  v17 = *(v0 + 432);
  v18 = *(v0 + 440);
  v19 = *(v0 + 448);
  v20 = *(v0 + 456);
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  *(v0 + 464) = 0;
  sub_230D0F4FC(v17, v18, v19, v20);
  *(v0 + 520) = 0u;
  *(v0 + 536) = 0u;
  *(v0 + 552) = 0;
  *(v0 + 472) = 0x65746144646E65;
  *(v0 + 480) = 0xE700000000000000;
  *(v0 + 488) = 2;
  *(v0 + 496) = 0u;
  *(v0 + 512) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 513) = 0;
  *(v0 + 515) = 0;
  v21 = *(v0 + 520);
  v22 = *(v0 + 528);
  v23 = *(v0 + 536);
  v24 = *(v0 + 544);
  *(v0 + 520) = 0u;
  *(v0 + 536) = 0u;
  *(v0 + 552) = 0;
  sub_230D0F4FC(v21, v22, v23, v24);
  *(v0 + 608) = 0u;
  *(v0 + 624) = 0u;
  *(v0 + 640) = 0;
  strcpy((v0 + 560), "creationTime");
  *(v0 + 573) = 0;
  *(v0 + 574) = -5120;
  *(v0 + 576) = 2;
  *(v0 + 584) = 0u;
  *(v0 + 600) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 601) = 0;
  *(v0 + 603) = 0;
  v25 = *(v0 + 608);
  v26 = *(v0 + 616);
  v27 = *(v0 + 624);
  v28 = *(v0 + 632);
  *(v0 + 608) = 0u;
  *(v0 + 624) = 0u;
  *(v0 + 640) = 0;
  sub_230D0F4FC(v25, v26, v27, v28);
  *(v0 + 696) = 0u;
  *(v0 + 712) = 0u;
  *(v0 + 728) = 0;
  *(v0 + 648) = 0x616470557473616CLL;
  *(v0 + 656) = 0xEF656D6954646574;
  *(v0 + 664) = 2;
  *(v0 + 672) = 0u;
  *(v0 + 688) = 255;
  sub_230D0F460(0, 0, 255);
  *(v0 + 689) = 0;
  *(v0 + 691) = 0;
  v29 = *(v0 + 696);
  v30 = *(v0 + 704);
  v31 = *(v0 + 712);
  v32 = *(v0 + 720);
  *(v0 + 696) = 0u;
  *(v0 + 712) = 0u;
  *(v0 + 728) = 0;
  sub_230D0F4FC(v29, v30, v31, v32);
  qword_27DB80BA8 = 0x6D74616572545F5FLL;
  unk_27DB80BB0 = 0xEB00000000746E65;
  qword_27DB80BB8 = v0;
}

uint64_t static SystemDatabase.initialize(using:requestContext:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 336) = a1;
  v3 = *(a2 + 16);
  *(v2 + 344) = *a2;
  *(v2 + 360) = v3;
  *(v2 + 376) = *(a2 + 32);
  return MEMORY[0x2822009F8](sub_230E5B7AC, 0, 0);
}

uint64_t sub_230E5B7AC()
{
  if (qword_27DB5A4B0 != -1)
  {
    swift_once();
  }

  v1 = sub_230E68D80();
  *(v0 + 384) = __swift_project_value_buffer(v1, qword_27DB80BC0);
  v2 = sub_230E68D60();
  v3 = sub_230E693E0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_230D02000, v2, v3, "[SystemDatabase][initialize] Starting system database initialization", v4, 2u);
    MEMORY[0x23191EAE0](v4, -1, -1);
  }

  sub_230E68478(0x696C616974696E69, 0xEA0000000000657ALL);
  v5 = *(v0 + 376);
  v6 = *(v0 + 360);
  *(v0 + 16) = *(v0 + 344);
  *(v0 + 32) = v6;
  *(v0 + 48) = v5;
  v7 = swift_task_alloc();
  *(v0 + 392) = v7;
  *v7 = v0;
  v7[1] = sub_230E5B97C;
  v8 = *(v0 + 336);

  return sub_230E5FE4C(v8, v0 + 16);
}

uint64_t sub_230E5B97C(char a1)
{
  *(*v1 + 515) = a1;

  return MEMORY[0x2822009F8](sub_230E5BA7C, 0, 0);
}

uint64_t sub_230E5BA7C(uint64_t a1)
{
  v36 = v1;
  v2 = sub_230E68D60();
  v3 = sub_230E693E0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 515);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v35 = v6;
    *v5 = 136315138;
    v7 = 0xE800000000000000;
    v8 = 0x686374616D73696DLL;
    if (v4 != 1)
    {
      v8 = 0x676E697373696DLL;
      v7 = 0xE700000000000000;
    }

    if (v4)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0x74636572726F63;
    }

    if (v4)
    {
      v10 = v7;
    }

    else
    {
      v10 = 0xE700000000000000;
    }

    v11 = sub_230D7E620(v9, v10, &v35);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_230D02000, v2, v3, "[SystemDatabase][initialize] Schema check result: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x23191EAE0](v6, -1, -1);
    MEMORY[0x23191EAE0](v5, -1, -1);
  }

  v12 = (v1 + 344);
  v13 = *(v1 + 515);
  v14 = sub_230E68D60();
  v15 = sub_230E693E0();
  v16 = os_log_type_enabled(v14, v15);
  if (v13)
  {
    if (v13 == 1)
    {
      if (v16)
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_230D02000, v14, v15, "[SystemDatabase][initialize] Schema version mismatch, applying schema updates", v17, 2u);
        MEMORY[0x23191EAE0](v17, -1, -1);
      }

      v18 = *(v1 + 376);
      v31 = *(v1 + 360);
      v33 = *v12;

      *(v1 + 256) = v33;
      *(v1 + 272) = v31;
      *(v1 + 288) = v18;
      v19 = swift_task_alloc();
      *(v1 + 400) = v19;
      *v19 = v1;
      v19[1] = sub_230E5BEB0;
      v20 = *(v1 + 336);

      return sub_230E62B48(v20, v1 + 256);
    }

    else
    {
      if (v16)
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_230D02000, v14, v15, "[SystemDatabase][initialize] System database missing or inaccessible, performing full bootstrap", v27, 2u);
        MEMORY[0x23191EAE0](v27, -1, -1);
      }

      v28 = *(v1 + 376);
      v32 = *(v1 + 360);
      v34 = *v12;

      *(v1 + 56) = v34;
      *(v1 + 72) = v32;
      *(v1 + 88) = v28;
      v29 = swift_task_alloc();
      *(v1 + 432) = v29;
      *v29 = v1;
      v29[1] = sub_230E5C54C;
      v30 = *(v1 + 336);

      return sub_230E5D628(v30, v1 + 56);
    }
  }

  else
  {
    if (v16)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_230D02000, v14, v15, "[SystemDatabase][initialize] System database exists with correct schema version", v22, 2u);
      MEMORY[0x23191EAE0](v22, -1, -1);
    }

    v23 = *(v1 + 376);
    v24 = *(v1 + 360);
    *(v1 + 136) = *v12;
    *(v1 + 152) = v24;
    *(v1 + 168) = v23;
    v25 = swift_task_alloc();
    *(v1 + 448) = v25;
    *v25 = v1;
    v25[1] = sub_230E5C6DC;
    v26 = *(v1 + 336);

    return sub_230E5FE4C(v26, v1 + 136);
  }
}

uint64_t sub_230E5BEB0()
{
  v2 = *v1;
  *(v2 + 408) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_230E5C1C4, 0, 0);
  }

  else
  {
    *(v2 + 296) = *(v2 + 344);
    v3 = *(v2 + 368);
    *(v2 + 304) = *(v2 + 352);
    *(v2 + 320) = v3;
    v4 = swift_task_alloc();
    *(v2 + 416) = v4;
    *v4 = v2;
    v4[1] = sub_230E5C034;
    v5 = *(v2 + 336);

    return sub_230E5F590(v5, v2 + 296);
  }
}

uint64_t sub_230E5C034()
{
  v2 = *v1;
  *(v2 + 424) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_230E5C388, 0, 0);
  }

  else
  {
    *(v2 + 136) = *(v2 + 344);
    v3 = *(v2 + 376);
    *(v2 + 152) = *(v2 + 360);
    *(v2 + 168) = v3;
    v4 = swift_task_alloc();
    *(v2 + 448) = v4;
    *v4 = v2;
    v4[1] = sub_230E5C6DC;
    v5 = *(v2 + 336);

    return sub_230E5FE4C(v5, v2 + 136);
  }
}

uint64_t sub_230E5C1C4()
{
  v1 = *(v0 + 408);
  *(v0 + 488) = v1;
  v2 = v1;
  v3 = sub_230E68D60();
  v4 = sub_230E69400();
  MEMORY[0x23191E910](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_230D02000, v3, v4, "[SystemDatabase][initialize] System database initialization failed: %@", v5, 0xCu);
    sub_230E437AC(v6);
    MEMORY[0x23191EAE0](v6, -1, -1);
    MEMORY[0x23191EAE0](v5, -1, -1);
  }

  v9 = *(v0 + 376);
  v13 = *(v0 + 360);
  v14 = *(v0 + 344);

  *(v0 + 512) = 3;
  *(v0 + 96) = v14;
  *(v0 + 112) = v13;
  *(v0 + 128) = v9;
  v10 = swift_task_alloc();
  *(v0 + 496) = v10;
  *v10 = v0;
  v10[1] = sub_230E5D280;
  v11 = *(v0 + 336);

  return sub_230E46438((v0 + 512), v11, v0 + 96);
}

uint64_t sub_230E5C388()
{
  v1 = *(v0 + 424);
  *(v0 + 488) = v1;
  v2 = v1;
  v3 = sub_230E68D60();
  v4 = sub_230E69400();
  MEMORY[0x23191E910](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_230D02000, v3, v4, "[SystemDatabase][initialize] System database initialization failed: %@", v5, 0xCu);
    sub_230E437AC(v6);
    MEMORY[0x23191EAE0](v6, -1, -1);
    MEMORY[0x23191EAE0](v5, -1, -1);
  }

  v9 = *(v0 + 376);
  v13 = *(v0 + 360);
  v14 = *(v0 + 344);

  *(v0 + 512) = 3;
  *(v0 + 96) = v14;
  *(v0 + 112) = v13;
  *(v0 + 128) = v9;
  v10 = swift_task_alloc();
  *(v0 + 496) = v10;
  *v10 = v0;
  v10[1] = sub_230E5D280;
  v11 = *(v0 + 336);

  return sub_230E46438((v0 + 512), v11, v0 + 96);
}

uint64_t sub_230E5C54C()
{
  v2 = *v1;
  *(v2 + 440) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_230E5D464, 0, 0);
  }

  else
  {
    *(v2 + 136) = *(v2 + 344);
    v3 = *(v2 + 376);
    *(v2 + 152) = *(v2 + 360);
    *(v2 + 168) = v3;
    v4 = swift_task_alloc();
    *(v2 + 448) = v4;
    *v4 = v2;
    v4[1] = sub_230E5C6DC;
    v5 = *(v2 + 336);

    return sub_230E5FE4C(v5, v2 + 136);
  }
}

uint64_t sub_230E5C6DC(char a1)
{
  *(*v1 + 516) = a1;

  return MEMORY[0x2822009F8](sub_230E5C7DC, 0, 0);
}

uint64_t sub_230E5C7DC()
{
  v1 = (v0 + 344);
  if (*(v0 + 516))
  {
    v2 = sub_230E698C0();

    if ((v2 & 1) == 0)
    {
      v3 = sub_230E68D60();
      v4 = sub_230E69400();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&dword_230D02000, v3, v4, "[SystemDatabase][initialize] System database initialization failed - final verification failed", v5, 2u);
        MEMORY[0x23191EAE0](v5, -1, -1);
      }

      v6 = *(v0 + 376);
      v17 = *(v0 + 360);
      v19 = *v1;

      *(v0 + 513) = 3;
      *(v0 + 176) = v19;
      v7 = v0 + 176;
      *(v0 + 192) = v17;
      *(v0 + 208) = v6;
      v8 = swift_task_alloc();
      *(v0 + 472) = v8;
      *v8 = v0;
      v8[1] = sub_230E5CD9C;
      v9 = *(v0 + 336);
      v10 = (v0 + 513);
      goto LABEL_10;
    }
  }

  else
  {
  }

  v11 = sub_230E68D60();
  v12 = sub_230E693E0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_230D02000, v11, v12, "[SystemDatabase][initialize] System database initialization completed successfully", v13, 2u);
    MEMORY[0x23191EAE0](v13, -1, -1);
  }

  v14 = *(v0 + 376);
  v18 = *(v0 + 360);
  v20 = *v1;

  *(v0 + 514) = 1;
  *(v0 + 216) = v20;
  v7 = v0 + 216;
  *(v0 + 232) = v18;
  *(v0 + 248) = v14;
  v15 = swift_task_alloc();
  *(v0 + 456) = v15;
  *v15 = v0;
  v15[1] = sub_230E5CAA4;
  v9 = *(v0 + 336);
  v10 = (v0 + 514);
LABEL_10:

  return sub_230E46438(v10, v9, v7);
}

uint64_t sub_230E5CAA4()
{
  v2 = *v1;
  *(v2 + 464) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_230E5CBD8, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_230E5CBD8()
{
  v1 = *(v0 + 464);
  *(v0 + 488) = v1;
  v2 = v1;
  v3 = sub_230E68D60();
  v4 = sub_230E69400();
  MEMORY[0x23191E910](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_230D02000, v3, v4, "[SystemDatabase][initialize] System database initialization failed: %@", v5, 0xCu);
    sub_230E437AC(v6);
    MEMORY[0x23191EAE0](v6, -1, -1);
    MEMORY[0x23191EAE0](v5, -1, -1);
  }

  v9 = *(v0 + 376);
  v13 = *(v0 + 360);
  v14 = *(v0 + 344);

  *(v0 + 512) = 3;
  *(v0 + 96) = v14;
  *(v0 + 112) = v13;
  *(v0 + 128) = v9;
  v10 = swift_task_alloc();
  *(v0 + 496) = v10;
  *v10 = v0;
  v10[1] = sub_230E5D280;
  v11 = *(v0 + 336);

  return sub_230E46438((v0 + 512), v11, v0 + 96);
}

uint64_t sub_230E5CD9C()
{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = sub_230E5D0BC;
  }

  else
  {
    v2 = sub_230E5CEB0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_230E5CEB0()
{
  sub_230D0D224();
  v1 = swift_allocError();
  *v2 = 0xD00000000000002ALL;
  *(v2 + 8) = 0x8000000230E85160;
  *(v2 + 16) = 2;
  swift_willThrow();
  *(v0 + 488) = v1;
  v3 = v1;
  v4 = sub_230E68D60();
  v5 = sub_230E69400();
  MEMORY[0x23191E910](v1);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_230D02000, v4, v5, "[SystemDatabase][initialize] System database initialization failed: %@", v6, 0xCu);
    sub_230E437AC(v7);
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  v10 = *(v0 + 376);
  v14 = *(v0 + 360);
  v15 = *(v0 + 344);

  *(v0 + 512) = 3;
  *(v0 + 96) = v15;
  *(v0 + 112) = v14;
  *(v0 + 128) = v10;
  v11 = swift_task_alloc();
  *(v0 + 496) = v11;
  *v11 = v0;
  v11[1] = sub_230E5D280;
  v12 = *(v0 + 336);

  return sub_230E46438((v0 + 512), v12, v0 + 96);
}

uint64_t sub_230E5D0BC()
{
  v1 = *(v0 + 480);
  *(v0 + 488) = v1;
  v2 = v1;
  v3 = sub_230E68D60();
  v4 = sub_230E69400();
  MEMORY[0x23191E910](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_230D02000, v3, v4, "[SystemDatabase][initialize] System database initialization failed: %@", v5, 0xCu);
    sub_230E437AC(v6);
    MEMORY[0x23191EAE0](v6, -1, -1);
    MEMORY[0x23191EAE0](v5, -1, -1);
  }

  v9 = *(v0 + 376);
  v13 = *(v0 + 360);
  v14 = *(v0 + 344);

  *(v0 + 512) = 3;
  *(v0 + 96) = v14;
  *(v0 + 112) = v13;
  *(v0 + 128) = v9;
  v10 = swift_task_alloc();
  *(v0 + 496) = v10;
  *v10 = v0;
  v10[1] = sub_230E5D280;
  v11 = *(v0 + 336);

  return sub_230E46438((v0 + 512), v11, v0 + 96);
}

uint64_t sub_230E5D280()
{
  *(*v1 + 504) = v0;

  if (v0)
  {
    v2 = sub_230E5D400;
  }

  else
  {
    v2 = sub_230E5D394;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_230E5D394(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_230E5D400()
{
  MEMORY[0x23191E910](*(v0 + 488));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230E5D464()
{
  v1 = *(v0 + 440);
  *(v0 + 488) = v1;
  v2 = v1;
  v3 = sub_230E68D60();
  v4 = sub_230E69400();
  MEMORY[0x23191E910](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_230D02000, v3, v4, "[SystemDatabase][initialize] System database initialization failed: %@", v5, 0xCu);
    sub_230E437AC(v6);
    MEMORY[0x23191EAE0](v6, -1, -1);
    MEMORY[0x23191EAE0](v5, -1, -1);
  }

  v9 = *(v0 + 376);
  v13 = *(v0 + 360);
  v14 = *(v0 + 344);

  *(v0 + 512) = 3;
  *(v0 + 96) = v14;
  *(v0 + 112) = v13;
  *(v0 + 128) = v9;
  v10 = swift_task_alloc();
  *(v0 + 496) = v10;
  *v10 = v0;
  v10[1] = sub_230E5D280;
  v11 = *(v0 + 336);

  return sub_230E46438((v0 + 512), v11, v0 + 96);
}

uint64_t sub_230E5D628(uint64_t a1, uint64_t a2)
{
  *(v2 + 104) = a1;
  v4 = sub_230E68D80();
  *(v2 + 112) = v4;
  *(v2 + 120) = *(v4 - 8);
  *(v2 + 128) = swift_task_alloc();
  v5 = *(a2 + 16);
  *(v2 + 136) = *a2;
  *(v2 + 152) = v5;
  *(v2 + 168) = *(a2 + 32);

  return MEMORY[0x2822009F8](sub_230E5D72C, 0, 0);
}

uint64_t sub_230E5D72C()
{
  v1 = *(v0 + 152);
  if (v1)
  {
    v2 = *(v0 + 160);
    v3 = *(v0 + 168);
    v4 = *(v0 + 136);
    v5 = *(v0 + 144);
    *(v0 + 192) = v1;
    *(v0 + 200) = v3;
    *(v0 + 655) = BYTE1(v2);
    *(v0 + 654) = v2 & 1;
    *(v0 + 184) = v5;
    *(v0 + 653) = v4;
    *(v0 + 16) = v4;
    *(v0 + 24) = v5;
    *(v0 + 32) = v1;
    *(v0 + 40) = v2 & 1;
    *(v0 + 41) = BYTE1(v2);
    *(v0 + 48) = v3;
    sub_230D0585C(v4, v5, v1, v2, v3);
    if (qword_27DB5A430 != -1)
    {
      swift_once();
    }

    v6 = qword_27DB5A438;
    *(v0 + 208) = qword_27DB5A438;

    return MEMORY[0x2822009F8](sub_230E5DB80, v6, 0);
  }

  else
  {
    *(v0 + 652) = 38;
    v7 = swift_task_alloc();
    *(v0 + 176) = v7;
    *v7 = v0;
    v7[1] = sub_230E5D914;

    return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 652), 0, 0);
  }
}

uint64_t sub_230E5D914()
{

  return MEMORY[0x2822009F8](sub_230E5DA3C, 0, 0);
}

uint64_t sub_230E5DA3C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 81);
  v6 = *(v0 + 88);
  *(v0 + 192) = v3;
  *(v0 + 200) = v6;
  *(v0 + 655) = v5;
  *(v0 + 654) = v4;
  *(v0 + 184) = v2;
  *(v0 + 653) = v1;
  v7 = *(v0 + 160);
  v8 = *(v0 + 168);
  v9 = *(v0 + 144);
  v10 = *(v0 + 152);
  v11 = *(v0 + 136);
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 41) = v5;
  *(v0 + 48) = v6;
  sub_230D0585C(v11, v9, v10, v7, v8);
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v12 = qword_27DB5A438;
  *(v0 + 208) = qword_27DB5A438;

  return MEMORY[0x2822009F8](sub_230E5DB80, v12, 0);
}

uint64_t sub_230E5DB80()
{
  v28 = v0;
  v27[1] = *MEMORY[0x277D85DE8];
  sub_230E68D70();

  v1 = sub_230E68D60();
  v2 = sub_230E693E0();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 184);
    v3 = *(v0 + 192);
    v5 = *(v0 + 653);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v27[0] = v7;
    *v6 = 136315650;
    *(v6 + 4) = sub_230D7E620(0xD000000000000017, 0x8000000230E80890, v27);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_230D7E620(v4, v3, v27);
    *(v6 + 22) = 2080;
    v25 = 0x6C616E7265746E69;
    v26 = 0xE90000000000002ELL;
    v24 = v5;
    v8 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v8);

    v9 = sub_230D7E620(0x6C616E7265746E69, 0xE90000000000002ELL, v27);

    *(v6 + 24) = v9;
    _os_log_impl(&dword_230D02000, v1, v2, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  v10 = *(v0 + 200);
  v11 = *(v0 + 655);
  v12 = *(v0 + 653);
  LOBYTE(v25) = *(v0 + 654);
  BYTE1(v25) = v11;
  v26 = v10;
  v24 = 38;
  LOBYTE(v27[0]) = v12;

  v13 = LoggingStrategy.shouldLog(currentOperation:originatingOperation:)(&v24, v27);

  if (v13)
  {
    sub_230E68950();
    *(v0 + 216) = CFAbsoluteTimeGetCurrent();
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0u;
    *(v0 + 400) = 0u;
    *(v0 + 416) = 0u;
    *(v0 + 432) = 0u;
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    *(v0 + 512) = 0u;
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    *(v0 + 560) = 0u;
    *(v0 + 576) = 0u;
    *(v0 + 592) = 0u;
    *(v0 + 608) = 0u;
    *(v0 + 624) = 0u;
    *(v0 + 640) = 0;
    *(v0 + 644) = 93;
    v14 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 272), (v0 + 644));
    *(v0 + 648) = v14;
    v15 = 0.0;
    if (!v14)
    {
      v16 = *(v0 + 320);
      v17 = *(v0 + 392);
      v18 = __CFADD__(v16, v17);
      v19 = v16 + v17;
      if (v18)
      {
        __break(1u);
      }

      v15 = vcvtd_n_f64_u64(v19, 0x14uLL);
    }

    *(v0 + 240) = v15;
    *(v0 + 96) = 0;
    v20 = swift_task_alloc();
    *(v0 + 248) = v20;
    *v20 = v0;
    v21 = sub_230E5E0AC;
  }

  else
  {
    v20 = swift_task_alloc();
    *(v0 + 224) = v20;
    *v20 = v0;
    v21 = sub_230E5DF54;
  }

  v20[1] = v21;
  v22 = *(v0 + 104);

  return sub_230E5E730(v20, v0 + 16, v22);
}

uint64_t sub_230E5DF54()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  v3 = *(v2 + 208);
  if (v0)
  {
    v4 = sub_230E5E658;
  }

  else
  {
    v4 = sub_230E5E588;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230E5E0AC()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 208);
  if (v0)
  {
    v4 = sub_230E5E310;
  }

  else
  {
    v4 = sub_230E5E204;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230E5E204()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);
  sub_230D38814(38, *(v0 + 240), *(v0 + 648) != 0, v0 + 16, (v0 + 96), *(v0 + 216));
  (*(v2 + 8))(v1, v3);
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](sub_230E5E468, 0, 0);
}

uint64_t sub_230E5E310(uint64_t a1)
{
  v2 = *(v1 + 256);
  v3 = *(v1 + 240);
  v4 = *(v1 + 216);
  v6 = *(v1 + 120);
  v5 = *(v1 + 128);
  v7 = *(v1 + 112);
  v8 = *(v1 + 648) != 0;
  *(v1 + 96) = v2;
  swift_willThrow();
  v9 = v2;
  sub_230D38814(38, v3, v8, v1 + 16, (v1 + 96), v4);
  MEMORY[0x23191E910](v2);
  (*(v6 + 8))(v5, v7);
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  *(v1 + 264) = *(v1 + 256);

  return MEMORY[0x2822009F8](sub_230E5E4F8, 0, 0);
}

uint64_t sub_230E5E468()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230E5E4F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230E5E588()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](sub_230E5E468, 0, 0);
}

uint64_t sub_230E5E658()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v0[33] = v0[29];

  return MEMORY[0x2822009F8](sub_230E5E4F8, 0, 0);
}

uint64_t sub_230E5E730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 176) = a2;
  *(v3 + 184) = a3;
  *(v3 + 256) = *a2;
  *(v3 + 192) = *(a2 + 8);
  *(v3 + 257) = *(a2 + 24);
  *(v3 + 208) = *(a2 + 32);
  return MEMORY[0x2822009F8](sub_230E5E774, 0, 0);
}

uint64_t sub_230E5E774()
{
  if (qword_27DB5A4B0 != -1)
  {
    swift_once();
  }

  v1 = sub_230E68D80();
  *(v0 + 216) = __swift_project_value_buffer(v1, qword_27DB80BC0);
  v2 = sub_230E68D60();
  v3 = sub_230E693E0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_230D02000, v2, v3, "[SystemDatabase][bootstrapSystemDatabase] Starting bootstrap process", v4, 2u);
    MEMORY[0x23191EAE0](v4, -1, -1);
  }

  sub_230E68478(0xD000000000000017, 0x8000000230E80890);
  v6 = *(v0 + 200);
  v5 = *(v0 + 208);
  v7 = *(v0 + 192);
  v8 = *(v0 + 176);
  v9 = *(v0 + 257) & 1 | (*(v0 + 258) << 8);
  *(v0 + 16) = *(v0 + 256);
  *(v0 + 24) = v7;
  *(v0 + 32) = v6;
  *(v0 + 40) = v9;
  *(v0 + 48) = v5;
  sub_230D1CDE0(v8, v0 + 56);
  v10 = swift_task_alloc();
  *(v0 + 224) = v10;
  *v10 = v0;
  v10[1] = sub_230E5E958;

  return sub_230E5EE00(v0 + 16);
}

uint64_t sub_230E5E958()
{
  v2 = *v1;
  v2[29] = v0;

  sub_230D666B4(v2[2], v2[3], v2[4], v2[5], v2[6]);
  if (v0)
  {
    v3 = sub_230E5EBD8;
  }

  else
  {
    v3 = sub_230E5EA7C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_230E5EA7C(uint64_t a1)
{
  v2 = sub_230E68D60();
  v3 = sub_230E693F0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_230D02000, v2, v3, "[SystemDatabase][bootstrapSystemDatabase] Database and tables created", v4, 2u);
    MEMORY[0x23191EAE0](v4, -1, -1);
  }

  v6 = *(v1 + 200);
  v5 = *(v1 + 208);
  v7 = *(v1 + 258);
  v8 = *(v1 + 257);
  v9 = *(v1 + 192);
  v10 = *(v1 + 256);
  v11 = *(v1 + 176);

  *(v1 + 96) = v10;
  *(v1 + 104) = v9;
  *(v1 + 112) = v6;
  *(v1 + 120) = v8 & 1 | (v7 << 8);
  *(v1 + 128) = v5;
  sub_230D1CDE0(v11, v1 + 136);
  v12 = swift_task_alloc();
  *(v1 + 240) = v12;
  *v12 = v1;
  v12[1] = sub_230E5EBF0;
  v13 = *(v1 + 184);

  return sub_230E5F590(v13, v1 + 96);
}

uint64_t sub_230E5EBF0()
{
  v2 = *v1;
  v2[31] = v0;

  sub_230D666B4(v2[12], v2[13], v2[14], v2[15], v2[16]);
  if (v0)
  {
    v3 = sub_230E5EDE8;
  }

  else
  {
    v3 = sub_230E5ED14;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_230E5ED14(uint64_t a1)
{
  v2 = sub_230E68D60();
  v3 = sub_230E693E0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_230D02000, v2, v3, "[SystemDatabase][bootstrapSystemDatabase] Bootstrap process completed", v4, 2u);
    MEMORY[0x23191EAE0](v4, -1, -1);
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_230E5EE00(uint64_t a1)
{
  type metadata accessor for CreateSQLDatabaseResponse(0);
  *(v1 + 56) = swift_task_alloc();
  *(v1 + 64) = swift_task_alloc();
  type metadata accessor for CreateSQLDatabaseRequest(0);
  *(v1 + 72) = swift_task_alloc();
  v3 = *(a1 + 16);
  *(v1 + 80) = *a1;
  *(v1 + 96) = v3;
  *(v1 + 112) = *(a1 + 32);

  return MEMORY[0x2822009F8](sub_230E5EED8, 0, 0);
}

uint64_t sub_230E5EED8()
{
  if (qword_27DB5A4B0 != -1)
  {
    swift_once();
  }

  v1 = sub_230E68D80();
  *(v0 + 120) = __swift_project_value_buffer(v1, qword_27DB80BC0);
  v2 = sub_230E68D60();
  v3 = sub_230E693E0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_230D02000, v2, v3, "[SystemDatabase][createSystemDatabase] Creating system database", v4, 2u);
    MEMORY[0x23191EAE0](v4, -1, -1);
  }

  sub_230E68478(0xD000000000000014, 0x8000000230E851F0);
  if (qword_27DB5A478 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 72);
  v6 = type metadata accessor for SQLDatabaseConfiguration(0);
  v7 = __swift_project_value_buffer(v6, qword_27DB80B18);
  sub_230E64EF8(v7, v5, type metadata accessor for SQLDatabaseConfiguration);
  if (qword_27DB5A430 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 112);
  v9 = *(v0 + 96);
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 32) = v9;
  *(v0 + 48) = v8;
  v10 = swift_task_alloc();
  *(v0 + 128) = v10;
  *v10 = v0;
  v10[1] = sub_230E5F15C;
  v11 = *(v0 + 64);
  v12 = *(v0 + 72);

  return sub_230D31538(v11, v12, v0 + 16);
}

uint64_t sub_230E5F15C()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_230E5F4F4;
  }

  else
  {
    v2 = sub_230E5F270;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_230E5F270()
{
  v19 = v0;
  sub_230E64EF8(v0[8], v0[7], type metadata accessor for CreateSQLDatabaseResponse);
  v1 = sub_230E68D60();
  v2 = sub_230E693E0();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[7];
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136315138;
    sub_230E68860();
    sub_230E64FC0();
    v7 = sub_230E69890();
    v9 = v8;
    sub_230E64F60(v4, type metadata accessor for CreateSQLDatabaseResponse);
    v10 = sub_230D7E620(v7, v9, &v18);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_230D02000, v1, v2, "[SystemDatabase][createSystemDatabase] system database created at: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x23191EAE0](v6, -1, -1);
    MEMORY[0x23191EAE0](v5, -1, -1);
  }

  else
  {

    sub_230E64F60(v4, type metadata accessor for CreateSQLDatabaseResponse);
  }

  v11 = sub_230E68D60();
  v12 = sub_230E693E0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_230D02000, v11, v12, "[SystemDatabase][createSystemDatabase] System database and client initialized", v13, 2u);
    MEMORY[0x23191EAE0](v13, -1, -1);
  }

  v15 = v0[8];
  v14 = v0[9];

  sub_230E64F60(v15, type metadata accessor for CreateSQLDatabaseResponse);
  sub_230E64F60(v14, type metadata accessor for CreateSQLDatabaseRequest);

  v16 = v0[1];

  return v16();
}

uint64_t sub_230E5F4F4()
{
  sub_230E64F60(*(v0 + 72), type metadata accessor for CreateSQLDatabaseRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230E5F590(uint64_t a1, uint64_t a2)
{
  *(v2 + 368) = a1;
  v4 = sub_230E68910();
  *(v2 + 376) = v4;
  *(v2 + 384) = *(v4 - 8);
  *(v2 + 392) = swift_task_alloc();
  v5 = *(a2 + 16);
  *(v2 + 400) = *a2;
  *(v2 + 416) = v5;
  *(v2 + 432) = *(a2 + 32);

  return MEMORY[0x2822009F8](sub_230E5F664, 0, 0);
}

uint64_t sub_230E5F664()
{
  if (qword_27DB5A4B0 != -1)
  {
    swift_once();
  }

  v1 = sub_230E68D80();
  *(v0 + 440) = __swift_project_value_buffer(v1, qword_27DB80BC0);
  v2 = sub_230E68D60();
  v3 = sub_230E693E0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_230D02000, v2, v3, "[SystemDatabase][initializeSystemMetadata] Initializing system metadata", v4, 2u);
    MEMORY[0x23191EAE0](v4, -1, -1);
  }

  sub_230E68478(0xD000000000000018, 0x8000000230E85190);
  v5 = *(v0 + 392);
  v6 = *(v0 + 376);
  v7 = *(v0 + 384);
  sub_230E68900();
  sub_230E688D0();
  v9 = v8;
  v10 = v8;
  result = (*(v7 + 8))(v5, v6);
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v12 = *(v0 + 432);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5B2C0, &unk_230E6F630);
  v13 = swift_allocObject();
  *(v0 + 448) = v13;
  *(v13 + 16) = xmmword_230E6B3B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8B0, &qword_230E6C238);
  v17 = *(v0 + 416);
  v18 = *(v0 + 400);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_230E7F560;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  *(inited + 48) = xmmword_230E7F570;
  *(inited + 64) = 3;
  strcpy((inited + 72), "systemStatus");
  *(inited + 85) = 0;
  *(inited + 86) = -5120;
  *(inited + 88) = xmmword_230E7F8A0;
  *(inited + 104) = 3;
  strcpy((inited + 112), "lastSyncTime");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  *(inited + 128) = xmmword_230E6E730;
  *(inited + 144) = 2;
  strcpy((inited + 152), "configVersion");
  *(inited + 166) = -4864;
  *(inited + 168) = xmmword_230E6E730;
  *(inited + 184) = 2;
  *(inited + 192) = 0xD000000000000016;
  *(inited + 200) = 0x8000000230E84EE0;
  *(inited + 208) = xmmword_230E7F590;
  *(inited + 224) = 2;
  *(inited + 232) = 0x616470557473616CLL;
  *(inited + 240) = 0xEF656D6954646574;
  *(inited + 248) = v9;
  *(inited + 256) = 0;
  *(inited + 264) = 2;
  v15 = sub_230D0DBB4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5AC28, &qword_230E6C240);
  swift_arrayDestroy();
  *(v13 + 32) = v15;
  *(v0 + 336) = 0x8000000230E84E70;
  *(v0 + 344) = v13;
  *(v0 + 352) = 0;
  *(v0 + 288) = v18;
  *(v0 + 304) = v17;
  *(v0 + 320) = v12;
  *(v0 + 328) = 0xD000000000000010;
  v16 = swift_task_alloc();
  *(v0 + 456) = v16;
  *v16 = v0;
  v16[1] = sub_230E5FAB8;

  return sub_230D41CA0(v0 + 360, v0 + 328, v0 + 288);
}

uint64_t sub_230E5FAB8()
{
  *(*v1 + 464) = v0;

  if (v0)
  {
    v2 = sub_230E5FCE0;
  }

  else
  {

    v2 = sub_230E5FBF0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_230E5FBF0(uint64_t a1)
{
  v2 = *(v1 + 360);
  v3 = sub_230E68D60();
  v4 = sub_230E693E0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v2;
    _os_log_impl(&dword_230D02000, v3, v4, "[SystemDatabase][initializeSystemMetadata] System metadata initialized successfully, processed: %lld", v5, 0xCu);
    MEMORY[0x23191EAE0](v5, -1, -1);
  }

  v6 = *(v1 + 8);

  return v6();
}

uint64_t sub_230E5FCE0()
{
  v1 = *(v0 + 464);

  v2 = v1;
  v3 = sub_230E68D60();
  v4 = sub_230E69400();
  MEMORY[0x23191E910](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 464);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_230D02000, v3, v4, "[SystemDatabase][initializeSystemMetadata] Failed to initialize system metadata: %@", v6, 0xCu);
    sub_230E437AC(v7);
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191EAE0](v6, -1, -1);
  }

  swift_willThrow();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_230E5FE4C(uint64_t a1, uint64_t a2)
{
  *(v2 + 408) = a1;
  v3 = *(a2 + 16);
  *(v2 + 416) = *a2;
  *(v2 + 432) = v3;
  *(v2 + 448) = *(a2 + 32);
  return MEMORY[0x2822009F8](sub_230E5FE7C, 0, 0);
}

uint64_t sub_230E5FE7C()
{
  if (qword_27DB5A4B0 != -1)
  {
    swift_once();
  }

  v1 = sub_230E68D80();
  *(v0 + 456) = __swift_project_value_buffer(v1, qword_27DB80BC0);
  v2 = sub_230E68D60();
  v3 = sub_230E693F0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_230D02000, v2, v3, "[SystemDatabase][checkSystemDBSchemaVersion] Checking system database schema version", v4, 2u);
    MEMORY[0x23191EAE0](v4, -1, -1);
  }

  v5 = *(v0 + 448);
  v12 = *(v0 + 432);
  v13 = *(v0 + 416);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D9C0, &unk_230E6C220);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_230E6B3B0;
  *(v6 + 32) = 0xD000000000000016;
  *(v6 + 40) = 0x8000000230E84EE0;
  *(v6 + 48) = 2;
  *(v6 + 56) = 0u;
  *(v6 + 72) = 0u;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 0u;
  *(v0 + 352) = 1;
  sub_230D1D098(v0 + 256);
  *(v0 + 16) = 0xD000000000000010;
  *(v0 + 24) = 0x8000000230E84E70;
  *(v0 + 32) = v6;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0;
  v7 = *(v0 + 96);
  *(v0 + 200) = *(v0 + 80);
  *(v0 + 216) = v7;
  *(v0 + 232) = *(v0 + 112);
  v8 = *(v0 + 32);
  *(v0 + 136) = *(v0 + 16);
  *(v0 + 152) = v8;
  v9 = *(v0 + 64);
  *(v0 + 168) = *(v0 + 48);
  *(v0 + 128) = 1;
  *(v0 + 248) = 1;
  *(v0 + 184) = v9;
  *(v0 + 360) = v13;
  *(v0 + 376) = v12;
  *(v0 + 392) = v5;
  v10 = swift_task_alloc();
  *(v0 + 464) = v10;
  *v10 = v0;
  v10[1] = sub_230E600FC;

  return sub_230D3ED1C(v0 + 400, v0 + 136, v0 + 360);
}

uint64_t sub_230E600FC()
{
  v2 = *v1;
  *(*v1 + 472) = v0;

  if (v0)
  {
    v3 = sub_230E6044C;
  }

  else
  {
    sub_230D1D148(v2 + 16);
    v3 = sub_230E60218;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_230E60218()
{
  v1 = *(v0 + 400);
  if (*(v1 + 16) && (v2 = *(v1 + 32), , , *(v2 + 16)) && (v3 = sub_230DA41A0(0xD000000000000016, 0x8000000230E84EE0), (v4 & 1) != 0))
  {
    v5 = *(v2 + 56) + 24 * v3;
    v6 = *v5;
    v7 = *(v5 + 8);
    v8 = *(v5 + 16);
    sub_230D0DCD8(*v5, v7, *(v5 + 16));

    if (v8 == 2)
    {
      if ((v7 & 1) == 0)
      {
        v9 = sub_230E68D60();
        v10 = sub_230E693E0();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 134218496;
          *(v11 + 4) = v6;
          *(v11 + 12) = 2048;
          *(v11 + 14) = 2;
          *(v11 + 22) = 1024;
          *(v11 + 24) = v6 == 2;
          _os_log_impl(&dword_230D02000, v9, v10, "[SystemDatabase][checkSystemDBSchemaVersion] Schema version check: current=%lld, expected=%ld, matches=%{BOOL}d", v11, 0x1Cu);
          MEMORY[0x23191EAE0](v11, -1, -1);
        }

        v12 = v6 != 2;
        goto LABEL_14;
      }
    }

    else
    {
      sub_230D0F474(v6, v7, v8);
    }
  }

  else
  {
  }

  v13 = sub_230E68D60();
  v14 = sub_230E69400();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_230D02000, v13, v14, "[SystemDatabase][checkSystemDBSchemaVersion] Database exists but no valid bootstrapSchemaVersion found", v15, 2u);
    MEMORY[0x23191EAE0](v15, -1, -1);
  }

  v12 = 1;
LABEL_14:
  v16 = *(v0 + 8);

  return v16(v12);
}

uint64_t sub_230E6044C()
{
  v1 = *(v0 + 472);
  sub_230D1D148(v0 + 16);
  v2 = v1;
  v3 = sub_230E68D60();
  v4 = sub_230E693E0();
  MEMORY[0x23191E910](v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 472);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_230D02000, v3, v4, "[SystemDatabase][checkSystemDBSchemaVersion] Could not access system DB or system metadata: %@", v7, 0xCu);
    sub_230E437AC(v8);
    MEMORY[0x23191EAE0](v8, -1, -1);
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191E910](v6);
  }

  else
  {

    MEMORY[0x23191E910](v6);
  }

  v11 = *(v0 + 8);

  return v11(2);
}

uint64_t sub_230E605A8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v3 + 1216) = a1;
  v6 = sub_230E68D80();
  *(v3 + 1224) = v6;
  *(v3 + 1232) = *(v6 - 8);
  *(v3 + 1240) = swift_task_alloc();
  v7 = *a2;
  v8 = a2[1];
  *(v3 + 1248) = *a2;
  *(v3 + 1256) = v8;
  v9 = a2[2];
  *(v3 + 1264) = v9;
  v10 = *(a3 + 16);
  *(v3 + 1272) = *a3;
  *(v3 + 1288) = v10;
  *(v3 + 1304) = *(a3 + 32);
  *(v3 + 1168) = v7;
  *(v3 + 1176) = v8;
  *(v3 + 1184) = v9;
  v11 = swift_task_alloc();
  *(v3 + 1312) = v11;
  *v11 = v3;
  v11[1] = sub_230E60718;

  return sub_230D3E0C0((v3 + 1168));
}

uint64_t sub_230E60718(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1320) = a1;
  *(v3 + 1328) = v1;

  if (v1)
  {
    v4 = sub_230E628FC;
  }

  else
  {
    v4 = sub_230E6085C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_230E6085C()
{
  v62 = v0;
  v61[9] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1320);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v61[0] = MEMORY[0x277D84F90];
    sub_230D48880(0, v2, 0);
    v3 = v61[0];
    v4 = *(v61[0] + 16);
    v5 = 16 * v4;
    v6 = (v1 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v61[0] = v3;
      v9 = *(v3 + 24);

      if (v4 >= v9 >> 1)
      {
        sub_230D48880((v9 > 1), v4 + 1, 1);
        v3 = v61[0];
      }

      *(v3 + 16) = v4 + 1;
      v10 = v3 + v5;
      *(v10 + 32) = v8;
      *(v10 + 40) = v7;
      v5 += 16;
      v6 += 11;
      ++v4;
      --v2;
    }

    while (v2);
  }

  v11 = *(v0 + 1264);
  v12 = sub_230D0ABEC(v3);
  *(v0 + 1336) = v12;

  v59 = *(v11 + 16);
  v60 = v11;
  if (!v59)
  {
    v16 = MEMORY[0x277D84F90];
LABEL_28:
    *(v0 + 1344) = v16;
    v37 = *(v16 + 16);
    *(v0 + 1352) = v37;
    if (v37)
    {
      if (qword_27DB5A4B0 != -1)
      {
        goto LABEL_44;
      }

      goto LABEL_30;
    }

    if (qword_27DB5A4B0 != -1)
    {
      goto LABEL_46;
    }

    goto LABEL_33;
  }

  v13 = 0;
  v14 = (v0 + 472);
  v58 = *(v0 + 1264) + 32;
  v15 = v12 + 56;
  v16 = MEMORY[0x277D84F90];
  while (v13 < *(v60 + 16))
  {
    v17 = v58 + 88 * v13;
    v18 = *(v17 + 16);
    *v14 = *v17;
    *(v0 + 488) = v18;
    v19 = *(v17 + 32);
    v20 = *(v17 + 48);
    v21 = *(v17 + 64);
    *(v0 + 552) = *(v17 + 80);
    *(v0 + 520) = v20;
    *(v0 + 536) = v21;
    *(v0 + 504) = v19;
    ++v13;
    if (*(v12 + 16))
    {
      v23 = *(v0 + 472);
      v22 = *(v0 + 480);
      sub_230E699B0();
      sub_230D2C310(v0 + 472, v0 + 560);

      sub_230E69100();
      v24 = sub_230E699D0();
      v25 = -1 << *(v12 + 32);
      v26 = v24 & ~v25;
      if ((*(v15 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
      {
        v27 = ~v25;
        while (1)
        {
          v28 = (*(v12 + 48) + 16 * v26);
          v29 = *v28 == v23 && v28[1] == v22;
          if (v29 || (sub_230E698C0() & 1) != 0)
          {
            break;
          }

          v26 = (v26 + 1) & v27;
          if (((*(v15 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        sub_230D2C348(v0 + 472);
        goto LABEL_9;
      }

LABEL_20:
    }

    else
    {
      sub_230D2C310(v0 + 472, v0 + 648);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_230D488A0(0, *(v16 + 16) + 1, 1);
    }

    v31 = *(v16 + 16);
    v30 = *(v16 + 24);
    if (v31 >= v30 >> 1)
    {
      sub_230D488A0((v30 > 1), v31 + 1, 1);
    }

    *(v16 + 16) = v31 + 1;
    v32 = v16 + 88 * v31;
    v33 = *(v0 + 488);
    *(v32 + 32) = *v14;
    *(v32 + 48) = v33;
    v34 = *(v0 + 504);
    v35 = *(v0 + 520);
    v36 = *(v0 + 536);
    *(v32 + 112) = *(v0 + 552);
    *(v32 + 80) = v35;
    *(v32 + 96) = v36;
    *(v32 + 64) = v34;
LABEL_9:
    if (v13 == v59)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_44:
  swift_once();
LABEL_30:
  *(v0 + 1360) = __swift_project_value_buffer(*(v0 + 1224), qword_27DB80BC0);

  v38 = sub_230E68D60();
  v39 = sub_230E693E0();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = *(v0 + 1256);
    v41 = *(v0 + 1248);
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v61[0] = v43;
    *v42 = 134218242;
    *(v42 + 4) = *(v16 + 16);

    *(v42 + 12) = 2080;
    *(v42 + 14) = sub_230D7E620(v41, v40, v61);
    _os_log_impl(&dword_230D02000, v38, v39, "[SystemDatabase][addMissingColumns] Found %ld missing columns in table %s", v42, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v43);
    MEMORY[0x23191EAE0](v43, -1, -1);
    MEMORY[0x23191EAE0](v42, -1, -1);
  }

  else
  {
  }

  v52 = *(v0 + 1216);
  *(v0 + 1368) = 0;
  v53 = *(v0 + 1344);
  if (*(v53 + 16))
  {
    v54 = *(v53 + 48);
    *(v0 + 16) = *(v53 + 32);
    *(v0 + 32) = v54;
    v55 = *(v53 + 64);
    v56 = *(v53 + 80);
    v57 = *(v53 + 96);
    *(v0 + 96) = *(v53 + 112);
    *(v0 + 64) = v56;
    *(v0 + 80) = v57;
    *(v0 + 48) = v55;
    sub_230D2C310(v0 + 16, v0 + 736);

    return MEMORY[0x2822009F8](sub_230E60F04, v52, 0);
  }

  __break(1u);
LABEL_46:
  swift_once();
LABEL_33:
  __swift_project_value_buffer(*(v0 + 1224), qword_27DB80BC0);

  v44 = sub_230E68D60();
  v45 = sub_230E693F0();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = *(v0 + 1256);
    v47 = *(v0 + 1248);
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v61[0] = v49;
    *v48 = 136315138;
    *(v48 + 4) = sub_230D7E620(v47, v46, v61);
    _os_log_impl(&dword_230D02000, v44, v45, "[SystemDatabase][addMissingColumns] No missing columns found in table %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v49);
    MEMORY[0x23191EAE0](v49, -1, -1);
    MEMORY[0x23191EAE0](v48, -1, -1);
  }

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_230E60F04()
{
  v33 = v0;
  v32[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1288);
  if (v1)
  {
    v2 = *(v0 + 1304);
    v3 = *(v0 + 1296);
    v4 = *(v0 + 1280);
    v5 = *(v0 + 1272);
    *(v0 + 1392) = v2;
    *(v0 + 1384) = v1;
    *(v0 + 1088) = v5;
    *(v0 + 1096) = v4;
    *(v0 + 1104) = v1;
    *(v0 + 1112) = v3 & 1;
    *(v0 + 1113) = BYTE1(v3);
    *(v0 + 1120) = v2;

    sub_230D2C310(v0 + 16, v0 + 824);

    v31 = v5;
    sub_230D0585C(v5, v4, v1, v3, v2);
    sub_230E68D70();

    v6 = sub_230E68D60();
    v7 = sub_230E693E0();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v32[0] = v9;
      *v8 = 136315650;
      *(v8 + 4) = sub_230D7E620(0x6F434C5153646461, 0xEC0000006E6D756CLL, v32);
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_230D7E620(v4, v1, v32);
      *(v8 + 22) = 2080;
      *(v0 + 1192) = 0x6C616E7265746E69;
      *(v0 + 1200) = 0xE90000000000002ELL;
      v10 = RequestType.rawValue.getter();
      MEMORY[0x23191DA00](v10);

      v11 = sub_230D7E620(*(v0 + 1192), *(v0 + 1200), v32);

      *(v8 + 24) = v11;
      _os_log_impl(&dword_230D02000, v6, v7, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v8, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23191EAE0](v9, -1, -1);
      MEMORY[0x23191EAE0](v8, -1, -1);

      v12 = v31;
    }

    else
    {

      v12 = v5;
    }

    v15 = *(v0 + 24);
    *(v0 + 1400) = *(v0 + 16);
    *(v0 + 1408) = v15;
    if (v3 & 1) != 0 && ((LOBYTE(v32[0]) = v12, v16 = RequestType.rawValue.getter(), v18 = v17, , LOBYTE(v16) = sub_230D33FDC(v16, v18, v2), , , (v16) || BYTE1(v3) >= 2u))
    {
      sub_230E68950();
      *(v0 + 1416) = CFAbsoluteTimeGetCurrent();
      *(v0 + 100) = 0u;
      *(v0 + 116) = 0u;
      *(v0 + 132) = 0u;
      *(v0 + 148) = 0u;
      *(v0 + 164) = 0u;
      *(v0 + 180) = 0u;
      *(v0 + 196) = 0u;
      *(v0 + 212) = 0u;
      *(v0 + 228) = 0u;
      *(v0 + 244) = 0u;
      *(v0 + 260) = 0u;
      *(v0 + 276) = 0u;
      *(v0 + 292) = 0u;
      *(v0 + 308) = 0u;
      *(v0 + 324) = 0u;
      *(v0 + 340) = 0u;
      *(v0 + 356) = 0u;
      *(v0 + 372) = 0u;
      *(v0 + 388) = 0u;
      *(v0 + 404) = 0u;
      *(v0 + 420) = 0u;
      *(v0 + 436) = 0u;
      *(v0 + 452) = 0u;
      *(v0 + 468) = 0;
      *(v0 + 556) = 93;
      v21 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 100), (v0 + 556));
      *(v0 + 644) = v21;
      v22 = 0.0;
      if (!v21)
      {
        v23 = *(v0 + 148);
        v24 = *(v0 + 220);
        v25 = __CFADD__(v23, v24);
        v26 = v23 + v24;
        if (v25)
        {
          __break(1u);
        }

        v22 = vcvtd_n_f64_u64(v26, 0x14uLL);
      }

      *(v0 + 1440) = v22;
      *(v0 + 1208) = 0;
      v19 = swift_task_alloc();
      *(v0 + 1448) = v19;
      *v19 = v0;
      v20 = sub_230E61B9C;
    }

    else
    {
      v19 = swift_task_alloc();
      *(v0 + 1424) = v19;
      *v19 = v0;
      v20 = sub_230E61A44;
    }

    v19[1] = v20;
    v27 = *(v0 + 1264);
    v28 = *(v0 + 1256);
    v29 = *(v0 + 1248);
    v30 = *(v0 + 1216);

    return sub_230D3E660(v19, v29, v28, v27, v0 + 16, v30);
  }

  else
  {
    *(v0 + 98) = 6;
    v13 = swift_task_alloc();
    *(v0 + 1376) = v13;
    *v13 = v0;
    v13[1] = sub_230E61458;

    return static RequestContext.from(_:correlationID:)(v0 + 1128, (v0 + 98), 0, 0);
  }
}

uint64_t sub_230E61458()
{
  v1 = *(*v0 + 1216);

  return MEMORY[0x2822009F8](sub_230E61594, v1, 0);
}

uint64_t sub_230E61594()
{
  v40 = v0;
  v39[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1136);
  v3 = *(v0 + 1144);
  v4 = *(v0 + 1152);
  v5 = *(v0 + 1153);
  v6 = *(v0 + 1160);
  *(v0 + 1392) = v6;
  *(v0 + 1384) = v3;
  v36 = *(v0 + 1304);
  v34 = v2;
  v35 = *(v0 + 1296);
  v7 = *(v0 + 1288);
  v8 = *(v0 + 1280);
  v9 = *(v0 + 1272);
  v37 = v1;
  v38 = v4;
  *(v0 + 1088) = v1;
  *(v0 + 1096) = v2;
  *(v0 + 1104) = v3;
  *(v0 + 1112) = v4;
  v33 = v5;
  *(v0 + 1113) = v5;
  *(v0 + 1120) = v6;

  sub_230D2C310(v0 + 16, v0 + 824);

  sub_230D0585C(v9, v8, v7, v35, v36);
  sub_230E68D70();

  v10 = sub_230E68D60();
  v11 = sub_230E693E0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v39[0] = v13;
    *v12 = 136315650;
    *(v12 + 4) = sub_230D7E620(0x6F434C5153646461, 0xEC0000006E6D756CLL, v39);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_230D7E620(v34, v3, v39);
    *(v12 + 22) = 2080;
    *(v0 + 1192) = 0x6C616E7265746E69;
    *(v0 + 1200) = 0xE90000000000002ELL;
    v14 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v14);

    v15 = sub_230D7E620(*(v0 + 1192), *(v0 + 1200), v39);

    *(v12 + 24) = v15;
    _os_log_impl(&dword_230D02000, v10, v11, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v13, -1, -1);
    MEMORY[0x23191EAE0](v12, -1, -1);
  }

  else
  {
  }

  v16 = *(v0 + 24);
  *(v0 + 1400) = *(v0 + 16);
  *(v0 + 1408) = v16;
  if (v38 && ((LOBYTE(v39[0]) = v37, v17 = RequestType.rawValue.getter(), v19 = v18, , LOBYTE(v17) = sub_230D33FDC(v17, v19, v6), , , (v17 & 1) != 0) || v33 >= 2))
  {
    sub_230E68950();
    *(v0 + 1416) = CFAbsoluteTimeGetCurrent();
    *(v0 + 100) = 0u;
    *(v0 + 116) = 0u;
    *(v0 + 132) = 0u;
    *(v0 + 148) = 0u;
    *(v0 + 164) = 0u;
    *(v0 + 180) = 0u;
    *(v0 + 196) = 0u;
    *(v0 + 212) = 0u;
    *(v0 + 228) = 0u;
    *(v0 + 244) = 0u;
    *(v0 + 260) = 0u;
    *(v0 + 276) = 0u;
    *(v0 + 292) = 0u;
    *(v0 + 308) = 0u;
    *(v0 + 324) = 0u;
    *(v0 + 340) = 0u;
    *(v0 + 356) = 0u;
    *(v0 + 372) = 0u;
    *(v0 + 388) = 0u;
    *(v0 + 404) = 0u;
    *(v0 + 420) = 0u;
    *(v0 + 436) = 0u;
    *(v0 + 452) = 0u;
    *(v0 + 468) = 0;
    *(v0 + 556) = 93;
    v22 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 100), (v0 + 556));
    *(v0 + 644) = v22;
    v23 = 0.0;
    if (!v22)
    {
      v24 = *(v0 + 148);
      v25 = *(v0 + 220);
      v26 = __CFADD__(v24, v25);
      v27 = v24 + v25;
      if (v26)
      {
        __break(1u);
      }

      v23 = vcvtd_n_f64_u64(v27, 0x14uLL);
    }

    *(v0 + 1440) = v23;
    *(v0 + 1208) = 0;
    v20 = swift_task_alloc();
    *(v0 + 1448) = v20;
    *v20 = v0;
    v21 = sub_230E61B9C;
  }

  else
  {
    v20 = swift_task_alloc();
    *(v0 + 1424) = v20;
    *v20 = v0;
    v21 = sub_230E61A44;
  }

  v20[1] = v21;
  v28 = *(v0 + 1264);
  v29 = *(v0 + 1256);
  v30 = *(v0 + 1248);
  v31 = *(v0 + 1216);

  return sub_230D3E660(v20, v30, v29, v28, v0 + 16, v31);
}

uint64_t sub_230E61A44()
{
  v2 = *v1;
  *(*v1 + 1432) = v0;

  v3 = *(v2 + 1216);
  if (v0)
  {
    v4 = sub_230E627C4;
  }

  else
  {
    v4 = sub_230E626C8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230E61B9C()
{
  v2 = *v1;
  *(*v1 + 1456) = v0;

  v3 = *(v2 + 1216);
  if (v0)
  {
    v4 = sub_230E61E2C;
  }

  else
  {
    v4 = sub_230E61CF4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230E61CF4()
{
  v1 = *(v0 + 1240);
  v2 = *(v0 + 1232);
  v3 = *(v0 + 1224);
  sub_230D34A54(6, *(v0 + 1440), *(v0 + 644) != 0, v0 + 1088, (v0 + 1208), *(v0 + 1416));
  (*(v2 + 8))(v1, v3);

  sub_230D2C348(v0 + 16);

  return MEMORY[0x2822009F8](sub_230E61FD4, 0, 0);
}

uint64_t sub_230E61E2C(uint64_t a1)
{
  v2 = *(v1 + 1456);
  v3 = *(v1 + 1440);
  v4 = *(v1 + 1416);
  v5 = *(v1 + 1240);
  v6 = *(v1 + 1232);
  v7 = *(v1 + 1224);
  v8 = *(v1 + 644) != 0;
  *(v1 + 1208) = v2;
  swift_willThrow();
  v9 = v2;
  sub_230D34A54(6, v3, v8, v1 + 1088, (v1 + 1208), v4);
  MEMORY[0x23191E910](v2);
  (*(v6 + 8))(v5, v7);

  sub_230D2C348(v1 + 16);

  *(v1 + 1464) = *(v1 + 1456);

  return MEMORY[0x2822009F8](sub_230E622C4, 0, 0);
}

uint64_t sub_230E61FD4()
{
  v21 = v0;
  v20[1] = *MEMORY[0x277D85DE8];

  sub_230D2C310(v0 + 16, v0 + 1000);
  v1 = sub_230E68D60();
  v2 = sub_230E693E0();
  sub_230D2C348(v0 + 16);

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 1408);
    v4 = *(v0 + 1400);
    v5 = *(v0 + 1256);
    v6 = *(v0 + 1248);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20[0] = v8;
    *v7 = 136315394;

    v9 = sub_230D7E620(v4, v3, v20);

    *(v7 + 4) = v9;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_230D7E620(v6, v5, v20);
    _os_log_impl(&dword_230D02000, v1, v2, "[SystemDatabase][addMissingColumns] Successfully added column %s to table %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v8, -1, -1);
    MEMORY[0x23191EAE0](v7, -1, -1);
    sub_230D2C348(v0 + 16);
  }

  else
  {

    sub_230D2C348(v0 + 16);
  }

  v10 = *(v0 + 1368) + 1;
  if (v10 == *(v0 + 1352))
  {

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    *(v0 + 1368) = v10;
    v13 = *(v0 + 1344);
    if (v10 >= *(v13 + 16))
    {
      __break(1u);
    }

    v14 = *(v0 + 1216);
    v15 = v13 + 88 * v10;
    v16 = *(v15 + 48);
    *(v0 + 16) = *(v15 + 32);
    *(v0 + 32) = v16;
    v18 = *(v15 + 80);
    v17 = *(v15 + 96);
    v19 = *(v15 + 64);
    *(v0 + 96) = *(v15 + 112);
    *(v0 + 64) = v18;
    *(v0 + 80) = v17;
    *(v0 + 48) = v19;
    sub_230D2C310(v0 + 16, v0 + 736);

    return MEMORY[0x2822009F8](sub_230E60F04, v14, 0);
  }
}

uint64_t sub_230E622C4()
{
  v30 = v0;
  v29[1] = *MEMORY[0x277D85DE8];
  v1 = v0[183];

  sub_230D2C310((v0 + 2), (v0 + 114));
  v2 = v1;
  v3 = sub_230E68D60();
  v4 = sub_230E69400();
  sub_230D2C348((v0 + 2));

  MEMORY[0x23191E910](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[183];
    v6 = v0[176];
    v7 = v0[175];
    v28 = v0[157];
    v8 = v0[156];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v29[0] = v11;
    *v9 = 136315650;

    v12 = sub_230D7E620(v7, v6, v29);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_230D7E620(v8, v28, v29);
    *(v9 + 22) = 2112;
    v13 = v5;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v14;
    *v10 = v14;
    _os_log_impl(&dword_230D02000, v3, v4, "[SystemDatabase][addMissingColumns] Failed to add column %s to table %s: %@", v9, 0x20u);
    sub_230E437AC(v10);
    MEMORY[0x23191EAE0](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v11, -1, -1);
    MEMORY[0x23191EAE0](v9, -1, -1);
  }

  swift_willThrow();
  sub_230D2C348((v0 + 2));
  v15 = v0[183];
  if (qword_27DB5A4B0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0[153], qword_27DB80BC0);

  v16 = v15;
  v17 = sub_230E68D60();
  v18 = sub_230E69400();

  MEMORY[0x23191E910](v15);
  if (os_log_type_enabled(v17, v18))
  {
    v19 = v0[157];
    v20 = v0[156];
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v29[0] = v23;
    *v21 = 136315394;
    *(v21 + 4) = sub_230D7E620(v20, v19, v29);
    *(v21 + 12) = 2112;
    v24 = v15;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 14) = v25;
    *v22 = v25;
    _os_log_impl(&dword_230D02000, v17, v18, "[SystemDatabase][addMissingColumns] Could not check columns for table %s: %@", v21, 0x16u);
    sub_230E437AC(v22);
    MEMORY[0x23191EAE0](v22, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x23191EAE0](v23, -1, -1);
    MEMORY[0x23191EAE0](v21, -1, -1);
    MEMORY[0x23191E910](v15);
  }

  else
  {

    MEMORY[0x23191E910](v15);
  }

  v26 = v0[1];

  return v26();
}

uint64_t sub_230E626C8()
{
  (*(v0[154] + 8))(v0[155], v0[153]);

  sub_230D2C348((v0 + 2));

  return MEMORY[0x2822009F8](sub_230E61FD4, 0, 0);
}

uint64_t sub_230E627C4()
{
  (*(v0[154] + 8))(v0[155], v0[153]);

  sub_230D2C348((v0 + 2));

  v0[183] = v0[179];

  return MEMORY[0x2822009F8](sub_230E622C4, 0, 0);
}

uint64_t sub_230E628FC()
{
  v15 = v0;
  v14[1] = *MEMORY[0x277D85DE8];
  v1 = v0[166];
  if (qword_27DB5A4B0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0[153], qword_27DB80BC0);

  v2 = v1;
  v3 = sub_230E68D60();
  v4 = sub_230E69400();

  MEMORY[0x23191E910](v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[157];
    v6 = v0[156];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14[0] = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_230D7E620(v6, v5, v14);
    *(v7 + 12) = 2112;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&dword_230D02000, v3, v4, "[SystemDatabase][addMissingColumns] Could not check columns for table %s: %@", v7, 0x16u);
    sub_230E437AC(v8);
    MEMORY[0x23191EAE0](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x23191EAE0](v9, -1, -1);
    MEMORY[0x23191EAE0](v7, -1, -1);
    MEMORY[0x23191E910](v1);
  }

  else
  {

    MEMORY[0x23191E910](v1);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_230E62B48(uint64_t a1, uint64_t a2)
{
  *(v2 + 184) = a1;
  v4 = sub_230E68D80();
  *(v2 + 192) = v4;
  *(v2 + 200) = *(v4 - 8);
  *(v2 + 208) = swift_task_alloc();
  v5 = *(a2 + 16);
  *(v2 + 216) = *a2;
  *(v2 + 232) = v5;
  *(v2 + 248) = *(a2 + 32);

  return MEMORY[0x2822009F8](sub_230E62C4C, 0, 0);
}

uint64_t sub_230E62C4C()
{
  if (qword_27DB5A4B0 != -1)
  {
    swift_once();
  }

  *(v0 + 256) = __swift_project_value_buffer(*(v0 + 192), qword_27DB80BC0);
  v1 = sub_230E68D60();
  v2 = sub_230E693E0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_230D02000, v1, v2, "[SystemDatabase][applySchemaUpdates] Applying schema updates with CREATE IF NOT EXISTS and column additions", v3, 2u);
    MEMORY[0x23191EAE0](v3, -1, -1);
  }

  sub_230E68478(0xD000000000000012, 0x8000000230E851B0);
  if (qword_27DB5A478 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for SQLDatabaseConfiguration(0);
  v6 = *(__swift_project_value_buffer(v5, qword_27DB80B18) + 24);
  *(v0 + 264) = v6;
  v7 = v6[2];
  *(v0 + 272) = v7;
  if (v7)
  {
    v8 = *(v0 + 184);
    *(v0 + 312) = 0;
    *(v0 + 280) = 0u;
    *(v0 + 296) = 0u;
    *(v0 + 320) = v6[4];
    *(v0 + 328) = v6[5];
    *(v0 + 336) = v6[6];

    return MEMORY[0x2822009F8](sub_230E62F5C, v8, 0);
  }

  else
  {
    v9 = sub_230E68D60();
    v10 = sub_230E693E0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134218240;
      *(v11 + 4) = 0;
      *(v11 + 12) = 2048;
      *(v11 + 14) = 0;
      _os_log_impl(&dword_230D02000, v9, v10, "[SystemDatabase][applySchemaUpdates] Schema update completed: %ld succeeded, %ld failed", v11, 0x16u);
      MEMORY[0x23191EAE0](v11, -1, -1);
    }

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_230E62F5C()
{
  v31 = v0;
  v30[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 232);
  if (v1)
  {
    v3 = *(v0 + 240);
    v2 = *(v0 + 248);
    v4 = *(v0 + 216);
    v5 = *(v0 + 224);
    *(v0 + 352) = v1;
    *(v0 + 360) = v2;
    *(v0 + 16) = v4;
    *(v0 + 24) = v5;
    *(v0 + 32) = v1;
    *(v0 + 40) = v3 & 1;
    v29 = v3 >> 8;
    *(v0 + 41) = BYTE1(v3);
    *(v0 + 48) = v2;

    sub_230D0585C(v4, v5, v1, v3, v2);
    sub_230E68D70();

    v6 = sub_230E68D60();
    v7 = sub_230E693E0();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v30[0] = v28;
      *v8 = 136315650;
      *(v8 + 4) = sub_230D7E620(0x5153657461657263, 0xEE00656C6261544CLL, v30);
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_230D7E620(v5, v1, v30);
      *(v8 + 22) = 2080;
      *(v0 + 160) = 0x6C616E7265746E69;
      *(v0 + 168) = 0xE90000000000002ELL;
      v9 = RequestType.rawValue.getter();
      MEMORY[0x23191DA00](v9);

      v10 = sub_230D7E620(*(v0 + 160), *(v0 + 168), v30);

      *(v8 + 24) = v10;
      _os_log_impl(&dword_230D02000, v6, v7, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v8, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23191EAE0](v28, -1, -1);
      MEMORY[0x23191EAE0](v8, -1, -1);
    }

    if (v3 & 1) != 0 && ((LOBYTE(v30[0]) = v4, v11 = RequestType.rawValue.getter(), v13 = v12, , LOBYTE(v11) = sub_230D33FDC(v11, v13, v2), , , (v11) || v29 >= 2u))
    {
      sub_230E68950();
      *(v0 + 368) = CFAbsoluteTimeGetCurrent();
      *(v0 + 440) = 0u;
      *(v0 + 456) = 0u;
      *(v0 + 472) = 0u;
      *(v0 + 488) = 0u;
      *(v0 + 504) = 0u;
      *(v0 + 520) = 0u;
      *(v0 + 536) = 0u;
      *(v0 + 552) = 0u;
      *(v0 + 568) = 0u;
      *(v0 + 584) = 0u;
      *(v0 + 600) = 0u;
      *(v0 + 616) = 0u;
      *(v0 + 632) = 0u;
      *(v0 + 648) = 0u;
      *(v0 + 664) = 0u;
      *(v0 + 680) = 0u;
      *(v0 + 696) = 0u;
      *(v0 + 712) = 0u;
      *(v0 + 728) = 0u;
      *(v0 + 744) = 0u;
      *(v0 + 760) = 0u;
      *(v0 + 776) = 0u;
      *(v0 + 792) = 0u;
      *(v0 + 808) = 0;
      *(v0 + 812) = 93;
      v18 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 440), (v0 + 812));
      *(v0 + 816) = v18;
      v19 = 0.0;
      if (!v18)
      {
        v20 = *(v0 + 488);
        v21 = *(v0 + 560);
        v22 = __CFADD__(v20, v21);
        v23 = v20 + v21;
        if (v22)
        {
          __break(1u);
        }

        v19 = vcvtd_n_f64_u64(v23, 0x14uLL);
      }

      *(v0 + 392) = v19;
      *(v0 + 176) = 0;
      v14 = swift_task_alloc();
      *(v0 + 400) = v14;
      *v14 = v0;
      v15 = sub_230E63B80;
    }

    else
    {
      v14 = swift_task_alloc();
      *(v0 + 376) = v14;
      *v14 = v0;
      v15 = sub_230E63A28;
    }

    v14[1] = v15;
    v24 = *(v0 + 328);
    v25 = *(v0 + 336);
    v26 = *(v0 + 320);
    v27 = *(v0 + 184);

    return sub_230D3D310(v14, v27, v26, v24, v25);
  }

  else
  {
    *(v0 + 820) = 5;
    v16 = swift_task_alloc();
    *(v0 + 344) = v16;
    *v16 = v0;
    v16[1] = sub_230E63460;

    return static RequestContext.from(_:correlationID:)(v0 + 56, (v0 + 820), 0, 0);
  }
}

uint64_t sub_230E63460()
{
  v1 = *(*v0 + 184);

  return MEMORY[0x2822009F8](sub_230E6359C, v1, 0);
}

uint64_t sub_230E6359C()
{
  v40 = v0;
  v39[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 81);
  v6 = *(v0 + 88);
  *(v0 + 352) = v3;
  *(v0 + 360) = v6;
  v7 = *(v0 + 240);
  v36 = *(v0 + 248);
  v9 = *(v0 + 224);
  v8 = *(v0 + 232);
  v10 = *(v0 + 216);
  v35 = v2;
  v37 = v4;
  v38 = v1;
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  v34 = v5;
  *(v0 + 41) = v5;
  *(v0 + 48) = v6;

  sub_230D0585C(v10, v9, v8, v7, v36);
  sub_230E68D70();

  v11 = sub_230E68D60();
  v12 = sub_230E693E0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v39[0] = v14;
    *v13 = 136315650;
    *(v13 + 4) = sub_230D7E620(0x5153657461657263, 0xEE00656C6261544CLL, v39);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_230D7E620(v35, v3, v39);
    *(v13 + 22) = 2080;
    *(v0 + 160) = 0x6C616E7265746E69;
    *(v0 + 168) = 0xE90000000000002ELL;
    v15 = RequestType.rawValue.getter();
    MEMORY[0x23191DA00](v15);

    v16 = sub_230D7E620(*(v0 + 160), *(v0 + 168), v39);

    *(v13 + 24) = v16;
    _os_log_impl(&dword_230D02000, v11, v12, "[ServicesIntelligenceProvider][PerformanceTracking] Starting %s (correlationID: %s), originator: %s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23191EAE0](v14, -1, -1);
    MEMORY[0x23191EAE0](v13, -1, -1);

    v17 = v38;
    if (!v37)
    {
      goto LABEL_7;
    }
  }

  else
  {

    v17 = v38;
    if (!v37)
    {
LABEL_7:
      v21 = swift_task_alloc();
      *(v0 + 376) = v21;
      *v21 = v0;
      v22 = sub_230E63A28;
      goto LABEL_12;
    }
  }

  LOBYTE(v39[0]) = v17;
  v18 = RequestType.rawValue.getter();
  v20 = v19;

  LOBYTE(v18) = sub_230D33FDC(v18, v20, v6);

  if ((v18 & 1) == 0 && v34 < 2)
  {
    goto LABEL_7;
  }

  sub_230E68950();
  *(v0 + 368) = CFAbsoluteTimeGetCurrent();
  *(v0 + 440) = 0u;
  *(v0 + 456) = 0u;
  *(v0 + 472) = 0u;
  *(v0 + 488) = 0u;
  *(v0 + 504) = 0u;
  *(v0 + 520) = 0u;
  *(v0 + 536) = 0u;
  *(v0 + 552) = 0u;
  *(v0 + 568) = 0u;
  *(v0 + 584) = 0u;
  *(v0 + 600) = 0u;
  *(v0 + 616) = 0u;
  *(v0 + 632) = 0u;
  *(v0 + 648) = 0u;
  *(v0 + 664) = 0u;
  *(v0 + 680) = 0u;
  *(v0 + 696) = 0u;
  *(v0 + 712) = 0u;
  *(v0 + 728) = 0u;
  *(v0 + 744) = 0u;
  *(v0 + 760) = 0u;
  *(v0 + 776) = 0u;
  *(v0 + 792) = 0u;
  *(v0 + 808) = 0;
  *(v0 + 812) = 93;
  v23 = task_info(*MEMORY[0x277D85F48], 0x16u, (v0 + 440), (v0 + 812));
  *(v0 + 816) = v23;
  v24 = 0.0;
  if (!v23)
  {
    v25 = *(v0 + 488);
    v26 = *(v0 + 560);
    v27 = __CFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      __break(1u);
    }

    v24 = vcvtd_n_f64_u64(v28, 0x14uLL);
  }

  *(v0 + 392) = v24;
  *(v0 + 176) = 0;
  v21 = swift_task_alloc();
  *(v0 + 400) = v21;
  *v21 = v0;
  v22 = sub_230E63B80;
LABEL_12:
  v21[1] = v22;
  v29 = *(v0 + 328);
  v30 = *(v0 + 336);
  v31 = *(v0 + 320);
  v32 = *(v0 + 184);

  return sub_230D3D310(v21, v32, v31, v29, v30);
}

uint64_t sub_230E63A28()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  v3 = *(v2 + 184);
  if (v0)
  {
    v4 = sub_230E6464C;
  }

  else
  {
    v4 = sub_230E64568;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230E63B80()
{
  v2 = *v1;
  *(*v1 + 408) = v0;

  v3 = *(v2 + 184);
  if (v0)
  {
    v4 = sub_230E63DF8;
  }

  else
  {
    v4 = sub_230E63CD8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_230E63CD8()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);
  sub_230D34A54(5, *(v0 + 392), *(v0 + 816) != 0, v0 + 16, (v0 + 176), *(v0 + 368));
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_230E63F60, 0, 0);
}

uint64_t sub_230E63DF8(uint64_t a1)
{
  v2 = *(v1 + 408);
  v3 = *(v1 + 392);
  v4 = *(v1 + 368);
  v5 = *(v1 + 200);
  v6 = *(v1 + 208);
  v7 = *(v1 + 192);
  v8 = *(v1 + 816) != 0;
  *(v1 + 176) = v2;
  swift_willThrow();
  v9 = v2;
  sub_230D34A54(5, v3, v8, v1 + 16, (v1 + 176), v4);
  MEMORY[0x23191E910](v2);
  (*(v5 + 8))(v6, v7);

  *(v1 + 416) = *(v1 + 408);

  return MEMORY[0x2822009F8](sub_230E64168, 0, 0);
}

uint64_t sub_230E63F60()
{
  v14 = v0;
  v13[1] = *MEMORY[0x277D85DE8];

  v1 = sub_230E68D60();
  v2 = sub_230E693E0();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 320);
    v3 = *(v0 + 328);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13[0] = v6;
    *v5 = 136315138;

    v7 = sub_230D7E620(v4, v3, v13);

    *(v5 + 4) = v7;
    _os_log_impl(&dword_230D02000, v1, v2, "[SystemDatabase][applySchemaUpdates] Successfully applied schema for table: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x23191EAE0](v6, -1, -1);
    MEMORY[0x23191EAE0](v5, -1, -1);
  }

  *(v0 + 136) = *(v0 + 320);
  v8 = *(v0 + 248);
  v9 = *(v0 + 328);
  *(v0 + 96) = *(v0 + 216);
  *(v0 + 144) = v9;
  *(v0 + 112) = *(v0 + 232);
  *(v0 + 128) = v8;
  v10 = swift_task_alloc();
  *(v0 + 424) = v10;
  *v10 = v0;
  v10[1] = sub_230E64738;
  v11 = *(v0 + 184);

  return sub_230E605A8(v11, (v0 + 136), v0 + 96);
}

uint64_t sub_230E64168()
{
  v27 = v0;
  v26[1] = *MEMORY[0x277D85DE8];
  v1 = v0[52];

  v2 = v1;
  v3 = sub_230E68D60();
  v4 = sub_230E69400();

  MEMORY[0x23191E910](v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[41];
  if (v5)
  {
    v7 = v0[40];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26[0] = v10;
    *v8 = 136315394;

    v11 = sub_230D7E620(v7, v6, v26);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2112;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v13;
    *v9 = v13;
    _os_log_impl(&dword_230D02000, v3, v4, "[SystemDatabase][applySchemaUpdates] Failed to apply schema for table %s: %@", v8, 0x16u);
    sub_230E437AC(v9);
    MEMORY[0x23191EAE0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x23191EAE0](v10, -1, -1);
    MEMORY[0x23191EAE0](v8, -1, -1);
    MEMORY[0x23191E910](v1);
  }

  else
  {

    MEMORY[0x23191E910](v1);
  }

  v14 = v0[35];
  v15 = v14 + 1;
  if (__OFADD__(v14, 1))
  {
    __break(1u);
  }

  v16 = v0[37];
  v17 = v0[39] + 1;
  if (v17 == v0[34])
  {
    v18 = sub_230E68D60();
    v19 = sub_230E693E0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134218240;
      *(v20 + 4) = v16;
      *(v20 + 12) = 2048;
      *(v20 + 14) = v15;
      _os_log_impl(&dword_230D02000, v18, v19, "[SystemDatabase][applySchemaUpdates] Schema update completed: %ld succeeded, %ld failed", v20, 0x16u);
      MEMORY[0x23191EAE0](v20, -1, -1);
    }

    if (v15 >= 1)
    {
      sub_230D0D224();
      swift_allocError();
      *v21 = 0xD00000000000001ALL;
      *(v21 + 8) = 0x8000000230E851D0;
      *(v21 + 16) = 2;
      swift_willThrow();
    }

    v22 = v0[1];

    return v22();
  }

  else
  {
    v0[39] = v17;
    v0[36] = v15;
    v0[37] = v16;
    v0[35] = v15;
    v23 = v0[23];
    v24 = (v0[33] + 24 * v17);
    v0[40] = v24[4];
    v0[41] = v24[5];
    v0[42] = v24[6];

    return MEMORY[0x2822009F8](sub_230E62F5C, v23, 0);
  }
}

uint64_t sub_230E64568()
{
  (*(v0[25] + 8))(v0[26], v0[24]);

  return MEMORY[0x2822009F8](sub_230E63F60, 0, 0);
}

uint64_t sub_230E6464C()
{
  (*(v0[25] + 8))(v0[26], v0[24]);

  v0[52] = v0[48];

  return MEMORY[0x2822009F8](sub_230E64168, 0, 0);
}

uint64_t sub_230E64738()
{
  *(*v1 + 432) = v0;

  if (v0)
  {
    v2 = sub_230E64AF8;
  }

  else
  {

    v2 = sub_230E64890;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_230E64890(uint64_t a1)
{
  v2 = v1[38];
  v3 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
    __break(1u);
  }

  v4 = v1[39] + 1;
  if (v4 == v1[34])
  {
    v5 = v1[36];
    v6 = sub_230E68D60();
    v7 = sub_230E693E0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134218240;
      *(v8 + 4) = v3;
      *(v8 + 12) = 2048;
      *(v8 + 14) = v5;
      _os_log_impl(&dword_230D02000, v6, v7, "[SystemDatabase][applySchemaUpdates] Schema update completed: %ld succeeded, %ld failed", v8, 0x16u);
      MEMORY[0x23191EAE0](v8, -1, -1);
    }

    if (v5 >= 1)
    {
      sub_230D0D224();
      swift_allocError();
      *v9 = 0xD00000000000001ALL;
      *(v9 + 8) = 0x8000000230E851D0;
      *(v9 + 16) = 2;
      swift_willThrow();
    }

    v10 = v1[1];

    return v10();
  }

  else
  {
    v1[38] = v3;
    v1[39] = v4;
    v1[37] = v3;
    v11 = v1[23];
    v12 = (v1[33] + 24 * v4);
    v1[40] = v12[4];
    v1[41] = v12[5];
    v1[42] = v12[6];

    return MEMORY[0x2822009F8](sub_230E62F5C, v11, 0);
  }
}

uint64_t sub_230E64AF8()
{
  v27 = v0;
  v26[1] = *MEMORY[0x277D85DE8];
  v1 = v0[54];

  v2 = v1;
  v3 = sub_230E68D60();
  v4 = sub_230E69400();

  MEMORY[0x23191E910](v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[41];
  if (v5)
  {
    v7 = v0[40];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26[0] = v10;
    *v8 = 136315394;

    v11 = sub_230D7E620(v7, v6, v26);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2112;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v13;
    *v9 = v13;
    _os_log_impl(&dword_230D02000, v3, v4, "[SystemDatabase][applySchemaUpdates] Failed to apply schema for table %s: %@", v8, 0x16u);
    sub_230E437AC(v9);
    MEMORY[0x23191EAE0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x23191EAE0](v10, -1, -1);
    MEMORY[0x23191EAE0](v8, -1, -1);
    MEMORY[0x23191E910](v1);
  }

  else
  {

    MEMORY[0x23191E910](v1);
  }

  v14 = v0[35];
  v15 = v14 + 1;
  if (__OFADD__(v14, 1))
  {
    __break(1u);
  }

  v16 = v0[37];
  v17 = v0[39] + 1;
  if (v17 == v0[34])
  {
    v18 = sub_230E68D60();
    v19 = sub_230E693E0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134218240;
      *(v20 + 4) = v16;
      *(v20 + 12) = 2048;
      *(v20 + 14) = v15;
      _os_log_impl(&dword_230D02000, v18, v19, "[SystemDatabase][applySchemaUpdates] Schema update completed: %ld succeeded, %ld failed", v20, 0x16u);
      MEMORY[0x23191EAE0](v20, -1, -1);
    }

    if (v15 >= 1)
    {
      sub_230D0D224();
      swift_allocError();
      *v21 = 0xD00000000000001ALL;
      *(v21 + 8) = 0x8000000230E851D0;
      *(v21 + 16) = 2;
      swift_willThrow();
    }

    v22 = v0[1];

    return v22();
  }

  else
  {
    v0[39] = v17;
    v0[36] = v15;
    v0[37] = v16;
    v0[35] = v15;
    v23 = v0[23];
    v24 = (v0[33] + 24 * v17);
    v0[40] = v24[4];
    v0[41] = v24[5];
    v0[42] = v24[6];

    return MEMORY[0x2822009F8](sub_230E62F5C, v23, 0);
  }
}

uint64_t sub_230E64EF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_230E64F60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_230E64FC0()
{
  result = qword_2815668A0;
  if (!qword_2815668A0)
  {
    sub_230E68860();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815668A0);
  }

  return result;
}

uint64_t DatabaseType.rawValue.getter()
{
  v1 = 0x524F54434556;
  if (*v0 != 1)
  {
    v1 = 22091;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 5001555;
  }
}

uint64_t SystemStatus.rawValue.getter()
{
  v1 = 0x696C616974696E69;
  v2 = 0x6465646172676564;
  if (*v0 != 2)
  {
    v2 = 0x726F727265;
  }

  if (*v0)
  {
    v1 = 0x7964616572;
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

unint64_t static ComponentSyncResult.success(count:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_230D0F35C(MEMORY[0x277D84F90]);
  *a2 = a1;
  a2[1] = 0;
  a2[2] = result;
  return result;
}

double static ComponentSyncResult.failure(error:identifier:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D800, &unk_230E7F8F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_230E6B3B0;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  *(inited + 48) = a1;

  v9 = a1;
  v10 = sub_230D0F35C(inited);
  swift_setDeallocating();
  sub_230E67778(inited + 32);
  result = 0.0;
  *a4 = xmmword_230E6E730;
  *(a4 + 16) = v10;
  return result;
}

uint64_t sub_230E651C4@<X0>(char *a1@<X8>)
{
  v3 = v1[1];
  v4 = v1[2];
  result = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[7];
  v9 = v1[8];
  v10 = v1[10];
  v11 = v1[11];
  v15 = v3 < 1 && v6 < 1 && v8 < 1 && v10 < 1;
  v19 = v4 < 1 && v7 < 1 && v9 < 1 && v11 < 1;
  v20 = __OFADD__(v3, v4);
  v21 = v3 + v4;
  if (!v20)
  {
    if (v21 > 0)
    {
      goto LABEL_33;
    }

    v20 = __OFADD__(v6, v7);
    v22 = v6 + v7;
    if (!v20)
    {
      if (v22 > 0)
      {
        goto LABEL_33;
      }

      v20 = __OFADD__(v8, v9);
      v23 = v8 + v9;
      if (!v20)
      {
        if (v23 > 0)
        {
          goto LABEL_33;
        }

        v20 = __OFADD__(v10, v11);
        v24 = v10 + v11;
        if (!v20)
        {
          if (v24 < 1)
          {

            result = swift_arrayDestroy();
            v25 = 1;
LABEL_38:
            *a1 = v25;
            return result;
          }

LABEL_33:

          result = swift_arrayDestroy();
          if (v19)
          {
            v25 = 1;
          }

          else
          {
            v25 = 2;
          }

          if (v15)
          {
            v25 = 3;
          }

          goto LABEL_38;
        }
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_230E65328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  v8 = *(v2 + 48);
  v9 = *(v2 + 56);
  v10 = *(v2 + 64);
  v11 = *(v2 + 72);
  v12 = *(v2 + 80);
  v14 = *(v2 + 88);
  v13 = *(v2 + 96);
  v15 = *(v2 + 104);
  v16 = *(v2 + 112);
  v17 = *(v2 + 120);
  v19 = (v2 + 1);
  v18 = *(v2 + 1);
  v59 = *v2;
  v66[1] = *v2;
  *v67 = v18;
  *&v67[3] = *(v2 + 4);
  v57 = v4;
  v58 = v3;
  v68 = v3;
  v69 = v4;
  v63 = v11;
  v64 = v5;
  v70 = v5;
  v71 = v6;
  v55 = v7;
  v56 = v6;
  v72 = v7;
  v73 = v8;
  v53 = v10;
  v54 = v9;
  v74 = v9;
  v75 = v10;
  v76 = v11;
  v77 = v12;
  v51 = v14;
  v52 = v12;
  v78 = v14;
  v79 = v13;
  v62 = v13;
  v50 = v15;
  v80 = v15;
  v81 = v16;
  v60 = v16;
  v82 = v17;
  sub_230E651C4(v66);
  if (v66[0] > 1u)
  {
    if (v66[0] == 2)
    {
      v47 = 0xE800000000000000;
      v20 = 0x6465646172676564;
    }

    else
    {
      v47 = 0xE500000000000000;
      v20 = 0x726F727265;
    }
  }

  else if (v66[0])
  {
    v47 = 0xE500000000000000;
    v20 = 0x7964616572;
  }

  else
  {
    v47 = 0xEC000000676E697ALL;
    v20 = 0x696C616974696E69;
  }

  v46 = v20;
  v61 = v17;
  v21 = *(v64 + 16);
  if (v21)
  {
    v45 = sub_230E4B114(*(v64 + 16), 0);
    v22 = sub_230E67620(v65, v45 + 4, v21, v64);
    v23 = v65[0];

    sub_230D912FC(v23);
    if (v22 == v21)
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  v45 = MEMORY[0x277D84F90];
LABEL_12:
  v24 = v8;
  v25 = *(v8 + 16);
  if (!v25)
  {
    goto LABEL_17;
  }

  v44 = sub_230E4B114(*(v8 + 16), 0);
  v26 = sub_230E67620(v65, v44 + 4, v25, v8);
  v27 = v65[0];

  result = sub_230D912FC(v27);
  v29 = v63;
  if (v26 != v25)
  {
    __break(1u);
    goto LABEL_29;
  }

  v30 = *(v63 + 16);
  if (v30)
  {
    while (1)
    {
      v43 = sub_230E4B114(v30, 0);
      v31 = sub_230E67620(v65, v43 + 4, v30, v29);
      v32 = v65[0];

      sub_230D912FC(v32);
      if (v31 == v30)
      {
        break;
      }

      __break(1u);
LABEL_17:
      v44 = MEMORY[0x277D84F90];
      v29 = v63;
      v30 = *(v63 + 16);
      if (!v30)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
LABEL_18:
    v43 = MEMORY[0x277D84F90];
  }

  v33 = *(v62 + 16);
  if (!v33)
  {
    goto LABEL_22;
  }

  v42 = sub_230E4B114(*(v62 + 16), 0);
  v34 = sub_230E67620(v65, v42 + 4, v33, v62);
  v35 = v65[0];

  sub_230D912FC(v35);
  if (v34 != v33)
  {
    __break(1u);
LABEL_22:
    v42 = MEMORY[0x277D84F90];
  }

  v36 = *(v61 + 16);
  if (!v36)
  {
    v41 = MEMORY[0x277D84F90];
    goto LABEL_27;
  }

  v37 = sub_230E4B114(*(v61 + 16), 0);
  v38 = sub_230E67620(v65, v37 + 4, v36, v61);
  v39 = v65[0];

  result = sub_230D912FC(v39);
  if (v38 == v36)
  {
    v41 = v37;
LABEL_27:
    LOBYTE(v65[0]) = v59;
    *(v65 + 1) = *v19;
    HIDWORD(v65[0]) = *(v19 + 3);
    v65[1] = v58;
    v65[2] = v57;
    v65[3] = v64;
    v65[4] = v56;
    v65[5] = v55;
    v65[6] = v24;
    v65[7] = v54;
    v65[8] = v53;
    v65[9] = v63;
    v65[10] = v52;
    v65[11] = v51;
    v65[12] = v62;
    v65[13] = v50;
    v65[14] = v60;
    v65[15] = v61;
    result = sub_230E657B4();
    *a2 = a1;
    *(a2 + 8) = v59 & 1;
    *(a2 + 16) = v46;
    *(a2 + 24) = v47;
    *(a2 + 32) = v58;
    *(a2 + 40) = v57;
    *(a2 + 48) = v45;
    *(a2 + 56) = v56;
    *(a2 + 64) = v55;
    *(a2 + 72) = v44;
    *(a2 + 80) = v54;
    *(a2 + 88) = v53;
    *(a2 + 96) = v43;
    *(a2 + 104) = v52;
    *(a2 + 112) = v51;
    *(a2 + 120) = v42;
    *(a2 + 128) = v50;
    *(a2 + 136) = v60;
    *(a2 + 144) = v41;
    *(a2 + 152) = result;
    *(a2 + 160) = v40;
    return result;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_230E657B4()
{
  v1 = v0[5];
  v2 = v0[8];
  v37 = v0[11];
  v38 = v0[14];
  if (v0[2] < 1)
  {
    v7 = MEMORY[0x277D84F90];
    if (v1 < 1)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  sub_230E69540();

  v3 = sub_230E69890();
  MEMORY[0x23191DA00](v3);

  MEMORY[0x23191DA00](0x2064656C69616620, 0xE900000000000028);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D7D8, &qword_230E7F150);
  sub_230D1D1C4(&unk_27DB5D7E0, &qword_27DB5D7D8, &qword_230E7F150, MEMORY[0x277D83480]);
  sub_230D0D278();
  v4 = sub_230E69180();
  v6 = v5;

  MEMORY[0x23191DA00](v4, v6);

  MEMORY[0x23191DA00](41, 0xE100000000000000);
  v7 = sub_230E49E88(0, 1, 1, MEMORY[0x277D84F90]);
  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_230E49E88((v8 > 1), v9 + 1, 1, v7);
  }

  *(v7 + 2) = v9 + 1;
  v10 = &v7[16 * v9];
  *(v10 + 4) = 0x7365736143657355;
  *(v10 + 5) = 0xEA0000000000203ALL;
  if (v1 >= 1)
  {
LABEL_7:
    sub_230E69540();

    v11 = sub_230E69890();
    MEMORY[0x23191DA00](v11);

    MEMORY[0x23191DA00](0x2064656C69616620, 0xE900000000000028);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D7D8, &qword_230E7F150);
    sub_230D1D1C4(&unk_27DB5D7E0, &qword_27DB5D7D8, &qword_230E7F150, MEMORY[0x277D83480]);
    sub_230D0D278();
    v12 = sub_230E69180();
    v14 = v13;

    MEMORY[0x23191DA00](v12, v14);

    MEMORY[0x23191DA00](41, 0xE100000000000000);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_230E49E88(0, *(v7 + 2) + 1, 1, v7);
    }

    v16 = *(v7 + 2);
    v15 = *(v7 + 3);
    if (v16 >= v15 >> 1)
    {
      v7 = sub_230E49E88((v15 > 1), v16 + 1, 1, v7);
    }

    *(v7 + 2) = v16 + 1;
    v17 = &v7[16 * v16];
    *(v17 + 4) = 0x3A676E6967676F4CLL;
    *(v17 + 5) = 0xE900000000000020;
  }

LABEL_12:
  if (v2 >= 1)
  {
    sub_230E69540();

    v18 = sub_230E69890();
    MEMORY[0x23191DA00](v18);

    MEMORY[0x23191DA00](0x2064656C69616620, 0xE900000000000028);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D7D8, &qword_230E7F150);
    sub_230D1D1C4(&unk_27DB5D7E0, &qword_27DB5D7D8, &qword_230E7F150, MEMORY[0x277D83480]);
    sub_230D0D278();
    v19 = sub_230E69180();
    v21 = v20;

    MEMORY[0x23191DA00](v19, v21);

    MEMORY[0x23191DA00](41, 0xE100000000000000);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_230E49E88(0, *(v7 + 2) + 1, 1, v7);
    }

    v23 = *(v7 + 2);
    v22 = *(v7 + 3);
    if (v23 >= v22 >> 1)
    {
      v7 = sub_230E49E88((v22 > 1), v23 + 1, 1, v7);
    }

    *(v7 + 2) = v23 + 1;
    v24 = &v7[16 * v23];
    *(v24 + 4) = 0xD000000000000012;
    *(v24 + 5) = 0x8000000230E85280;
  }

  if (v37 >= 1)
  {
    sub_230E69540();

    v25 = sub_230E69890();
    MEMORY[0x23191DA00](v25);

    MEMORY[0x23191DA00](0x2064656C69616620, 0xE900000000000028);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D7D8, &qword_230E7F150);
    sub_230D1D1C4(&unk_27DB5D7E0, &qword_27DB5D7D8, &qword_230E7F150, MEMORY[0x277D83480]);
    sub_230D0D278();
    v26 = sub_230E69180();
    v28 = v27;

    MEMORY[0x23191DA00](v26, v28);

    MEMORY[0x23191DA00](41, 0xE100000000000000);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_230E49E88(0, *(v7 + 2) + 1, 1, v7);
    }

    v30 = *(v7 + 2);
    v29 = *(v7 + 3);
    if (v30 >= v29 >> 1)
    {
      v7 = sub_230E49E88((v29 > 1), v30 + 1, 1, v7);
    }

    *(v7 + 2) = v30 + 1;
    v31 = &v7[16 * v30];
    *(v31 + 4) = 0xD000000000000012;
    *(v31 + 5) = 0x8000000230E85260;
  }

  if (v38 < 1)
  {
    if (!*(v7 + 2))
    {

      return 0x756C696166206F4ELL;
    }
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_230E49E88(0, *(v7 + 2) + 1, 1, v7);
    }

    v33 = *(v7 + 2);
    v32 = *(v7 + 3);
    if (v33 >= v32 >> 1)
    {
      v7 = sub_230E49E88((v32 > 1), v33 + 1, 1, v7);
    }

    *(v7 + 2) = v33 + 1;
    v34 = &v7[16 * v33];
    *(v34 + 4) = 0x3A65726F7453564BLL;
    *(v34 + 5) = 0xEF64656C69616620;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB5D8F0, &unk_230E70E80);
  sub_230D1D1C4(&qword_281565F50, &unk_27DB5D8F0, &unk_230E70E80, MEMORY[0x277D83958]);
  v35 = sub_230E68FF0();

  return v35;
}

unint64_t static ComponentSyncResult.notApplicable()@<X0>(void *a1@<X8>)
{
  result = sub_230D0F35C(MEMORY[0x277D84F90]);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = result;
  return result;
}

uint64_t ComponentSyncResult.totalCount.getter()
{
  v1 = v0[1];
  result = *v0 + v1;
  if (__OFADD__(*v0, v1))
  {
    __break(1u);
  }

  return result;
}

uint64_t static ComponentSyncResult.mixed(successCount:failures:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *(a2 + 16);
  *a3 = a1;
  a3[1] = v3;
  a3[2] = a2;
}

ServicesIntelligence::SystemStatus_optional __swiftcall SystemStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230E69680();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_230E660EC()
{
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

uint64_t sub_230E661AC(uint64_t a1)
{
  sub_230E69100();
}

uint64_t sub_230E66258(uint64_t a1)
{
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

void sub_230E66320(uint64_t *a1@<X8>)
{
  v2 = 0xEC000000676E697ALL;
  v3 = 0x696C616974696E69;
  v4 = 0xE800000000000000;
  v5 = 0x6465646172676564;
  if (*v1 != 2)
  {
    v5 = 0x726F727265;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x7964616572;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

ServicesIntelligence::DatabaseType_optional __swiftcall DatabaseType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230E69680();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_230E664B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x524F54434556;
  if (v2 != 1)
  {
    v4 = 22091;
    v3 = 0xE200000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 5001555;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x524F54434556;
  if (*a2 != 1)
  {
    v8 = 22091;
    v7 = 0xE200000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 5001555;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_230E698C0();
  }

  return v11 & 1;
}

uint64_t sub_230E66594()
{
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

uint64_t sub_230E66620(uint64_t a1)
{
  sub_230E69100();
}

uint64_t sub_230E66698(uint64_t a1)
{
  sub_230E699B0();
  sub_230E69100();

  return sub_230E699D0();
}

void sub_230E6672C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x524F54434556;
  if (v2 != 1)
  {
    v5 = 22091;
    v4 = 0xE200000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 5001555;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_230E66840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x8000000230E85240 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_230E698C0();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_230E668D4(uint64_t a1)
{
  v2 = sub_230E677E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230E66910(uint64_t a1)
{
  v2 = sub_230E677E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_230E6694C(uint64_t a1)
{
  v2 = sub_230E67834();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230E66988(uint64_t a1)
{
  v2 = sub_230E67834();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SystemDatabaseError.encode(to:)(void *a1)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D9D0, &qword_230E7F900);
  v3 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v4);
  v6 = v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D9D8, &qword_230E7F908);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v15 - v10;
  v12 = *v1;
  v15[1] = v1[1];
  v15[2] = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230E677E0();
  sub_230E69A50();
  sub_230E67834();
  sub_230E697A0();
  v13 = v16;
  sub_230E697B0();
  (*(v3 + 8))(v6, v13);
  return (*(v8 + 8))(v11, v7);
}

uint64_t SystemDatabaseError.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v29 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D9F0, &qword_230E7F910);
  v35 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D9F8, &unk_230E7F918);
  v30 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v27 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230E677E0();
  sub_230E69A30();
  if (v2)
  {
    goto LABEL_6;
  }

  v28 = a1;
  v12 = v35;
  v13 = v30;
  v14 = sub_230E69780();
  v15 = (2 * *(v14 + 16)) | 1;
  v31 = v14;
  v32 = v14 + 32;
  v33 = 0;
  v34 = v15;
  v16 = v11;
  if (sub_230D07B64() || v33 != v34 >> 1)
  {
    v17 = sub_230E69580();
    swift_allocError();
    v18 = v8;
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5A5D0, &qword_230E6A950);
    *v20 = &type metadata for SystemDatabaseError;
    sub_230E696A0();
    sub_230E69570();
    (*(*(v17 - 8) + 104))(v20, *MEMORY[0x277D84160], v17);
    swift_willThrow();
    (*(v13 + 8))(v11, v18);
    swift_unknownObjectRelease();
    a1 = v28;
LABEL_6:
    v25 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  sub_230E67834();
  sub_230E69690();
  v22 = sub_230E696B0();
  v24 = v23;
  (*(v12 + 8))(v7, v4);
  (*(v13 + 8))(v16, v8);
  swift_unknownObjectRelease();
  v25 = v28;
  v26 = v29;
  *v29 = v22;
  v26[1] = v24;
  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t SystemDatabaseError.errorDescription.getter()
{
  v1 = v0[1];
  if (v1)
  {
    v2 = *v0;
  }

  else
  {
    v2 = 0xD000000000000026;
  }

  if (v1)
  {
    v3 = v0[1];
  }

  else
  {
    v3 = 0x8000000230E85210;
  }

  MEMORY[0x23191DA00](v2, v3);

  return 0;
}

void *sub_230E6701C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_230E67174(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (v12 << 10) | (16 * v17);
      v19 = (*(a4 + 48) + v18);
      v21 = *v19;
      v20 = v19[1];
      v22 = (*(a4 + 56) + v18);
      v23 = *v22;
      v24 = v22[1];
      *v11 = v21;
      v11[1] = v20;
      v11[2] = v23;
      v11[3] = v24;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 4;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v26 = v12 + 1;
    }

    else
    {
      v26 = (63 - v7) >> 6;
    }

    v12 = v26 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_230E672E0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v29 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = v17 | (v12 << 6);
      v19 = (*(a4 + 48) + 16 * v18);
      v20 = *v19;
      v21 = v19[1];
      v22 = (*(a4 + 56) + 32 * v18);
      v23 = *v22;
      v24 = v22[1];
      v26 = v22[2];
      v25 = v22[3];
      *v11 = v20;
      v11[1] = v21;
      v11[2] = v23;
      v11[3] = v24;
      v11[4] = v26;
      v11[5] = v25;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 6;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v28 = v12 + 1;
    }

    else
    {
      v28 = v13;
    }

    v12 = v28 - 1;
    v10 = result;
LABEL_23:
    v7 = v29;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_230E67470(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v11 = 0;
    a3 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v11;
    v5[4] = v9;
    return a3;
  }

  if (!a3)
  {
    v11 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v10 = a2;
    v30 = -1 << *(a4 + 32);
    v31 = a3;
    result = 0;
    v11 = 0;
    v12 = (63 - v7) >> 6;
    v13 = 1;
    while (v9)
    {
LABEL_14:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = v16 | (v11 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = *v18;
      v20 = v18[1];
      v21 = (*(a4 + 56) + 48 * v17);
      v22 = *v21;
      v23 = v21[1];
      v24 = v21[2];
      v25 = v21[3];
      v27 = v21[4];
      v26 = v21[5];
      *v10 = v19;
      v10[1] = v20;
      v10[2] = v22;
      v10[3] = v23;
      v10[4] = v24;
      v10[5] = v25;
      v10[6] = v27;
      v10[7] = v26;
      if (v13 == v31)
      {

        v7 = v30;
        a3 = v31;
        goto LABEL_24;
      }

      v10 += 8;

      result = v13;
      if (__OFADD__(v13++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v14 = v11;
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v15 >= v12)
      {
        break;
      }

      v9 = *(v6 + 8 * v15);
      ++v14;
      if (v9)
      {
        v11 = v15;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v12 <= v11 + 1)
    {
      v29 = v11 + 1;
    }

    else
    {
      v29 = v12;
    }

    v11 = v29 - 1;
    a3 = result;
    v7 = v30;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_230E67620(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_230E67778(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB5D808, &qword_230E7F188);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_230E677E0()
{
  result = qword_27DB5D9E0;
  if (!qword_27DB5D9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D9E0);
  }

  return result;
}

unint64_t sub_230E67834()
{
  result = qword_27DB5D9E8;
  if (!qword_27DB5D9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5D9E8);
  }

  return result;
}

unint64_t sub_230E6788C()
{
  result = qword_27DB5DA00;
  if (!qword_27DB5DA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5DA00);
  }

  return result;
}

unint64_t sub_230E67928()
{
  result = qword_27DB5DA18;
  if (!qword_27DB5DA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5DA18);
  }

  return result;
}

unint64_t sub_230E679E4()
{
  result = qword_27DB5DA20;
  if (!qword_27DB5DA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5DA20);
  }

  return result;
}

unint64_t sub_230E67A3C()
{
  result = qword_27DB5DA28;
  if (!qword_27DB5DA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5DA28);
  }

  return result;
}

unint64_t sub_230E67A94()
{
  result = qword_27DB5DA30;
  if (!qword_27DB5DA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5DA30);
  }

  return result;
}

unint64_t sub_230E67AEC()
{
  result = qword_27DB5DA38;
  if (!qword_27DB5DA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5DA38);
  }

  return result;
}

unint64_t sub_230E67B44()
{
  result = qword_27DB5DA40;
  if (!qword_27DB5DA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5DA40);
  }

  return result;
}

unint64_t sub_230E67B9C()
{
  result = qword_27DB5DA48;
  if (!qword_27DB5DA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5DA48);
  }

  return result;
}

unint64_t sub_230E67BF0()
{
  result = qword_27DB5DA50;
  if (!qword_27DB5DA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5DA50);
  }

  return result;
}

unint64_t sub_230E67C44()
{
  result = qword_27DB5DA58;
  if (!qword_27DB5DA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB5DA58);
  }

  return result;
}

uint64_t sub_230E67C98@<X0>(uint64_t result@<X0>, _OWORD *a2@<X8>)
{
  if (!*(result + 16))
  {
    goto LABEL_28;
  }

  v3 = result;
  result = sub_230DA41A0(0x696669746E656469, 0xEA00000000007265);
  v4 = 0uLL;
  v5 = 0uLL;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  if (v10)
  {
    v11 = *(v3 + 56) + 24 * result;
    v12 = *(v11 + 8);
    v13 = *(v11 + 16) != 3 || *(v11 + 8) == 0;
    if (!v13 && *(v3 + 16))
    {
      v46 = *v11;

      v14 = sub_230DA41A0(0x6E69616D6F64, 0xE600000000000000);
      if (v15)
      {
        v16 = *(v3 + 56) + 24 * v14;
        v17 = v46;
        if (*(v16 + 16) != 3)
        {
LABEL_25:
          v31 = v17;
          v32 = v12;
          goto LABEL_26;
        }

        v18 = *(v16 + 8);
        if (v18)
        {
          if (*(v3 + 16))
          {
            v45 = *v16;

            v19 = sub_230DA41A0(0x6573616261746164, 0xEC00000065707954);
            if (v20)
            {
              v21 = *(v3 + 56) + 24 * v19;
              if (*(v21 + 16) == 3)
              {
                v22 = *(v21 + 8);
                if (!v22)
                {
                  sub_230D0DCD8(*v21, 0, 3);
LABEL_34:
                  sub_230D0F474(v45, v18, 3);
                  goto LABEL_24;
                }

                if (!*(v3 + 16))
                {
                  v35 = *v21;
                  sub_230D0DCD8(*v21, v22, 3);
                  sub_230D0F474(v46, v12, 3);
                  sub_230D0F474(v45, v18, 3);
                  v31 = v35;
                  v32 = v22;
                  goto LABEL_26;
                }

                v44 = *v21;

                v23 = sub_230DA41A0(1701667182, 0xE400000000000000);
                if (v24)
                {
                  v25 = *(v3 + 56) + 24 * v23;
                  v26 = v46;
                  if (*(v25 + 16) == 3)
                  {
                    v27 = *(v25 + 8);
                    if (!v27)
                    {
                      sub_230D0DCD8(*v25, 0, 3);
LABEL_39:
                      sub_230D0F474(v44, v22, 3);
                      goto LABEL_34;
                    }

                    v43 = *v25;
                    if (!*(v3 + 16))
                    {
                      sub_230D0DCD8(v43, v27, 3);
                      sub_230D0F474(v46, v12, 3);
                      sub_230D0F474(v45, v18, 3);
                      sub_230D0F474(v44, v22, 3);
                      v31 = v43;
                      v32 = v27;
                      goto LABEL_26;
                    }

                    v42 = *(v25 + 8);

                    v28 = sub_230DA41A0(0x6144616D65686373, 0xEA00000000006174);
                    if ((v29 & 1) == 0)
                    {
                      goto LABEL_22;
                    }

                    v30 = *(v3 + 56) + 24 * v28;
                    if (*(v30 + 16))
                    {
                      goto LABEL_22;
                    }

                    v41 = *v30;
                    v36 = *(v30 + 8);
                    if (v36 >> 60 == 15)
                    {
                      sub_230D0DCD8(v41, *(&v41 + 1), 0);
LABEL_43:
                      sub_230D0F474(v43, v42, 3);
                      goto LABEL_39;
                    }

                    if (*(v3 + 16))
                    {
                      sub_230D0DCF8(v41, *(&v41 + 1));
                      v37 = sub_230DA41A0(0x737574617473, 0xE600000000000000);
                      if (v38)
                      {
                        v39 = *(v3 + 56) + 24 * v37;
                        if (*(v39 + 16) != 3)
                        {
                          sub_230D0F474(v41, v36, 0);
LABEL_22:
                          sub_230D0F474(v46, v12, 3);
                          sub_230D0F474(v45, v18, 3);
                          sub_230D0F474(v44, v22, 3);
                          v31 = v43;
                          v32 = v42;
LABEL_26:
                          v33 = 3;
LABEL_27:
                          result = sub_230D0F474(v31, v32, v33);
LABEL_28:
                          v4 = 0uLL;
                          v5 = 0uLL;
                          v6 = 0uLL;
                          v7 = 0uLL;
                          v8 = 0uLL;
                          v9 = 0uLL;
                          goto LABEL_29;
                        }

                        v40 = *v39;
                        if (*(v39 + 8))
                        {

                          v4 = v46;
                          v6 = v44;
                          v5 = v45;
                          v7 = v43;
                          v9 = v40;
                          v8 = v41;
                          goto LABEL_29;
                        }

                        sub_230D0DCD8(v40, 0, 3);
                        sub_230D0F474(v41, v36, 0);
                        goto LABEL_43;
                      }
                    }

                    else
                    {
                      sub_230D0DCD8(v41, *(&v41 + 1), 0);
                    }

                    sub_230D0F474(v46, v12, 3);
                    sub_230D0F474(v45, v18, 3);
                    sub_230D0F474(v44, v22, 3);
                    sub_230D0F474(v43, v42, 3);
                    v31 = v41;
                    v32 = v36;
                    v33 = 0;
                    goto LABEL_27;
                  }
                }

                else
                {
                  v26 = v46;
                }

                sub_230D0F474(v26, v12, 3);
                sub_230D0F474(v45, v18, 3);
                v31 = v44;
                v32 = v22;
                goto LABEL_26;
              }

              v34 = v46;
            }

            else
            {
              v34 = v46;
            }

            sub_230D0F474(v34, v12, 3);
            v31 = v45;
            v32 = v18;
            goto LABEL_26;
          }
        }

        else
        {
          sub_230D0DCD8(*v16, 0, 3);
        }
      }

LABEL_24:
      v17 = v46;
      goto LABEL_25;
    }
  }

LABEL_29:
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  a2[5] = v9;
  return result;
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

uint64_t sub_230E68200(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_230E68248(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t type metadata accessor for DatabaseCreationResult(uint64_t a1)
{
  result = qword_27DB5DA60;
  if (!qword_27DB5DA60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_230E68314(uint64_t a1)
{
  sub_230E683C0(319, &qword_27DB5DA70, MEMORY[0x277CC9260]);
  if (v1 <= 0x3F)
  {
    sub_230E683C0(319, &qword_27DB5DA78, sub_230E6840C);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_230E683C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_230E6840C()
{
  result = qword_27DB5DA80;
  if (!qword_27DB5DA80)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27DB5DA80);
  }

  return result;
}

uint64_t sub_230E68478(uint64_t a1, unint64_t a2)
{
  result = sub_230DA3484();
  if ((result & 1) == 0)
  {
    if (qword_27DB5A4B0 != -1)
    {
      swift_once();
    }

    v5 = sub_230E68D80();
    __swift_project_value_buffer(v5, qword_27DB80BC0);

    v6 = sub_230E68D60();
    v7 = sub_230E69400();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_230D7E620(a1, a2, &v11);
      _os_log_impl(&dword_230D02000, v6, v7, "[SystemDatabase][%s] Write access denied - only SID may modify system database", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x23191EAE0](v9, -1, -1);
      MEMORY[0x23191EAE0](v8, -1, -1);
    }

    sub_230D0D224();
    swift_allocError();
    *v10 = 0xD000000000000032;
    *(v10 + 8) = 0x8000000230E852A0;
    *(v10 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_230E68628()
{
  v0 = sub_230E68D80();
  __swift_allocate_value_buffer(v0, qword_27DB80BC0);
  __swift_project_value_buffer(v0, qword_27DB80BC0);
  return sub_230E68D70();
}