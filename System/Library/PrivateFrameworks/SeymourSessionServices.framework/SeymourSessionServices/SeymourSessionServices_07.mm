uint64_t sub_265D23EF0(void *a1, char a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v63 = a7;
  v61 = a5;
  v62 = a6;
  v60 = a3;
  v65 = a1;
  v68 = a9;
  v69 = a10;
  v13 = sub_265D57E30();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v64 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v59 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v59 - v20;
  v22 = sub_265D59DE0();
  v66 = *(v22 - 8);
  v67 = v22;
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v59 - v26;
  v28 = (v14 + 16);
  if (a2)
  {
    sub_265D58D90();
    (*v28)(v19, a8, v13);

    v29 = v65;
    sub_265D24620(v65, 1);
    v30 = sub_265D59DD0();
    v31 = sub_265D5A070();

    sub_265CA4470(v29, 1);
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v70 = v59;
      *v32 = 136446978;
      *(v32 + 4) = sub_265CF4FFC(v60, a4, &v70);
      *(v32 + 12) = 2082;
      v33 = sub_265D5A210();
      v35 = sub_265CF4FFC(v33, v34, &v70);

      *(v32 + 14) = v35;
      *(v32 + 22) = 2048;
      v36 = v64;
      sub_265D57E10();
      sub_265D57DE0();
      v38 = v37;
      v39 = *(v14 + 8);
      v39(v36, v13);
      v39(v19, v13);
      *(v32 + 24) = v38;
      *(v32 + 32) = 2082;
      ErrorValue = swift_getErrorValue();
      MEMORY[0x28223BE20](ErrorValue);
      (*(v42 + 16))(&v59 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
      v43 = sub_265D59EC0();
      v45 = sub_265CF4FFC(v43, v44, &v70);

      *(v32 + 34) = v45;
      _os_log_impl(&dword_265C01000, v30, v31, "[%{public}s] %{public}s ended in %fs -> %{public}s", v32, 0x2Au);
      v46 = v59;
      swift_arrayDestroy();
      MEMORY[0x266770CF0](v46, -1, -1);
      MEMORY[0x266770CF0](v32, -1, -1);
    }

    else
    {

      (*(v14 + 8))(v19, v13);
    }

    (*(v66 + 8))(v25, v67);
  }

  else
  {
    sub_265D58D90();
    (*v28)(v21, a8, v13);

    v47 = sub_265D59DD0();
    v48 = sub_265D5A080();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v70 = v50;
      *v49 = 136446722;
      *(v49 + 4) = sub_265CF4FFC(v60, a4, &v70);
      *(v49 + 12) = 2082;
      v51 = sub_265D5A210();
      v53 = sub_265CF4FFC(v51, v52, &v70);

      *(v49 + 14) = v53;
      *(v49 + 22) = 2048;
      v54 = v64;
      sub_265D57E10();
      sub_265D57DE0();
      v56 = v55;
      v57 = *(v14 + 8);
      v57(v54, v13);
      v57(v21, v13);
      *(v49 + 24) = v56;
      _os_log_impl(&dword_265C01000, v47, v48, "[%{public}s] %{public}s ended in %fs", v49, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266770CF0](v50, -1, -1);
      MEMORY[0x266770CF0](v49, -1, -1);
    }

    else
    {

      (*(v14 + 8))(v21, v13);
    }

    (*(v66 + 8))(v27, v67);
  }

  sub_265D59690();
  return sub_265D58D50();
}

uint64_t sub_265D24540(uint64_t a1)
{
  v3 = *(sub_265D57E30() - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_265D23EF0(*a1, *(a1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

id sub_265D24620(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

unint64_t sub_265D2462C()
{
  result = qword_28003E948;
  if (!qword_28003E948)
  {
    sub_265D582B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E948);
  }

  return result;
}

uint64_t objectdestroy_22Tm_0()
{
  v1 = sub_265D58520();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_265D248E0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  return a2(a1, v5, v6);
}

uint64_t objectdestroyTm_2()
{

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t objectdestroy_7Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_265D24A58@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v6 = *(v5 - 8);
  v7 = *(v6 + 16);
  v8 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return v7(a3, v8, v5);
}

uint64_t objectdestroy_13Tm()
{
  v1 = sub_265D57E30();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 49) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_265D24BFC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v7 = *(sub_265D57E30() - 8);
  v8 = (*(v7 + 80) + 49) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_265D23810(a1, *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48), v3 + v8, *(v3 + v9), *(v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), a2, a3);
}

uint64_t sub_265D24D1C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_265D24E84()
{
  v1 = v0;
  v2 = sub_265D57ED0();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_265D58FD0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_265D59DE0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v19[-v12];
  sub_265D595F0();
  sub_265D59DC0();
  v14 = *(v8 + 8);
  v14(v13, v7);
  if (*(v1 + 72))
  {
    swift_getObjectType();
    sub_265D5A030();
    v19[12] = 1;
    sub_265D57EB0();
    sub_265D58FC0();
    sub_265D58ED0();
    (*(v4 + 8))(v6, v3);
    *(v1 + 72) = 0;
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_265D595F0();
    v16 = sub_265D59DD0();
    v17 = sub_265D5A070();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_265C01000, v16, v17, "Timer fired for inactive idle monitor", v18, 2u);
      MEMORY[0x266770CF0](v18, -1, -1);
    }

    return (v14)(v11, v7);
  }
}

uint64_t sub_265D25190()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_265D25208(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_265D25258(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_265D252AC(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_265D252C4(void *result, int a2)
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

uint64_t sub_265D252F4()
{
  v1 = v0;
  v2 = sub_265D59DE0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  sub_265D595F0();
  sub_265D59DC0();
  v9 = *(v3 + 8);
  v9(v8, v2);
  if (v1[9])
  {
    sub_265D595F0();
    v10 = sub_265D59DD0();
    v11 = sub_265D5A070();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_265C01000, v10, v11, "Attempting to activate already active idle monitor", v12, 2u);
      MEMORY[0x266770CF0](v12, -1, -1);
    }

    return (v9)(v6, v2);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v1 + 4, v1[7]);
    sub_265D58F60();
    sub_265CD77F0();
    v14 = sub_265D5A090();
    swift_allocObject();
    swift_weakInit();

    v15 = sub_265D592D0();

    v1[9] = v15;
    return swift_unknownObjectRelease();
  }
}

uint64_t sub_265D25568(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_265D24E84();
  }

  return result;
}

uint64_t sub_265D255C0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E568, &unk_265D5C010);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v32 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E960, &unk_265D5D140);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v32 - v6;
  v8 = sub_265D59DE0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v32 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - v16;
  sub_265D595F0();
  sub_265D59DC0();
  v18 = *(v9 + 8);
  result = v18(v17, v8);
  if (*(v1 + 72))
  {
    sub_265D58120();
    v20 = sub_265D58BC0();
    v21 = (*(*(v20 - 8) + 48))(v7, 1, v20);
    sub_265CA4AE8(v7, &unk_28003E960, &unk_265D5D140);
    if (v21 != 1)
    {
      sub_265D595F0();
      v24 = sub_265D59DD0();
      v25 = sub_265D5A080();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_265C01000, v24, v25, "Deactivating idle monitor due to Countdown", v26, 2u);
        MEMORY[0x266770CF0](v26, -1, -1);
      }

      v27 = v15;
      goto LABEL_8;
    }

    sub_265D58110();
    v22 = sub_265D58BB0();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v4, 1, v22) == 1)
    {
      return sub_265CA4AE8(v4, &qword_28003E568, &unk_265D5C010);
    }

    v28 = sub_265D58BA0();
    (*(v23 + 8))(v4, v22);
    v35 = BYTE4(v28) & 1;
    v34 = v28;
    v32 = 0;
    v33 = 1;
    sub_265CEB2F0();
    sub_265CEB344();
    result = sub_265D57F90();
    if (result)
    {
      sub_265D595F0();
      v29 = sub_265D59DD0();
      v30 = sub_265D5A080();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_265C01000, v29, v30, "Deactivating idle monitor due to Playback state playing", v31, 2u);
        MEMORY[0x266770CF0](v31, -1, -1);
      }

      v27 = v12;
LABEL_8:
      v18(v27, v8);
      *(v1 + 72) = 0;
      return swift_unknownObjectRelease();
    }
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

uint64_t sub_265D25A48(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_265D25A90(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_265D25AE0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_265D25B38();
  }

  return result;
}

uint64_t sub_265D25B38()
{
  v1 = v0;
  v2 = sub_265D59DE0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v6 = sub_265D59650();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v10 = sub_265D58B30();
  (*(v7 + 104))(v9, *MEMORY[0x277D4F950], v6);
  v11 = sub_265CA7344(v9, v10);

  result = (*(v7 + 8))(v9, v6);
  if (v11)
  {
    sub_265D595E0();
    sub_265D59DC0();
    (*(v3 + 8))(v5, v2);
    __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
    sub_265D59B20();
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    sub_265D59B10();
    sub_265C97624(v15, v14);
    swift_beginAccess();
    sub_265D2616C(v14, v1 + 72);
    swift_endAccess();
    return __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }

  return result;
}

uint64_t sub_265D25DB8(uint64_t a1)
{
  v1 = sub_265D59DE0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_beginAccess();
    sub_265D26134(v6 + 72, &v8);
    if (*(&v9 + 1))
    {
      sub_265C033C4(&v8, v11);
      sub_265D595E0();
      sub_265D59DC0();
      (*(v2 + 8))(v4, v1);
      __swift_project_boxed_opaque_existential_1(v11, v11[3]);
      sub_265D59B00();
      v10 = 0;
      v8 = 0u;
      v9 = 0u;
      swift_beginAccess();
      sub_265D2616C(&v8, v6 + 72);
      swift_endAccess();
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
    }

    else
    {
      sub_265D26104(&v8);
    }
  }

  return result;
}

uint64_t sub_265D25F84()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  sub_265D26104(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_22SeymourSessionServices0B19ScanningCoordinatorC5StateO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_265D2601C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_265D2606C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
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
      *(result + 24) = a2;
    }
  }

  return result;
}

double sub_265D260C8(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_265D261A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_265D261EC(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void sub_265D26244(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v190) = a2;
  v215 = a1;
  v193 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680);
  MEMORY[0x28223BE20](v4 - 8);
  v178 = &v164 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E340, &unk_265D5D0C0);
  MEMORY[0x28223BE20](v6 - 8);
  v177 = &v164 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E540, &qword_265D5BFE0);
  MEMORY[0x28223BE20](v8 - 8);
  v176 = &v164 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E548, &qword_265D5BFE8);
  MEMORY[0x28223BE20](v10 - 8);
  v175 = &v164 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E550, &unk_265D5BFF0);
  MEMORY[0x28223BE20](v12 - 8);
  v174 = &v164 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E840, &unk_265D5D0D0);
  MEMORY[0x28223BE20](v14 - 8);
  v173 = &v164 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E560, &unk_265D5CC10);
  MEMORY[0x28223BE20](v16 - 8);
  v172 = &v164 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E980, &unk_265D5E880);
  MEMORY[0x28223BE20](v18 - 8);
  v189 = &v164 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E570, &unk_265D5D0E0);
  MEMORY[0x28223BE20](v20 - 8);
  v188 = &v164 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E568, &unk_265D5C010);
  MEMORY[0x28223BE20](v22 - 8);
  v187 = &v164 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E578, &unk_265D5C020);
  MEMORY[0x28223BE20](v24 - 8);
  v214 = &v164 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E580, &unk_265D5D0F0);
  MEMORY[0x28223BE20](v26 - 8);
  v186 = &v164 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E200, &unk_265D5B580);
  MEMORY[0x28223BE20](v28 - 8);
  v213 = &v164 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E588, &unk_265D5D100);
  MEMORY[0x28223BE20](v30 - 8);
  v212 = &v164 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E590, &unk_265D5C030);
  MEMORY[0x28223BE20](v32 - 8);
  v211 = &v164 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E598, &unk_265D5D110);
  MEMORY[0x28223BE20](v34 - 8);
  v210 = &v164 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A0, &unk_265D5C040);
  MEMORY[0x28223BE20](v36 - 8);
  v209 = &v164 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A8, &unk_265D5D120);
  MEMORY[0x28223BE20](v38 - 8);
  v208 = &v164 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B0, &unk_265D5C050);
  MEMORY[0x28223BE20](v40 - 8);
  v207 = &v164 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B8, &unk_265D5D130);
  MEMORY[0x28223BE20](v42 - 8);
  v206 = &v164 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C0, &unk_265D5C060);
  MEMORY[0x28223BE20](v44 - 8);
  v205 = &v164 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E348, &qword_265D5B710);
  MEMORY[0x28223BE20](v46 - 8);
  v204 = &v164 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E960, &unk_265D5D140);
  MEMORY[0x28223BE20](v48 - 8);
  v203 = &v164 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C8, &unk_265D5D150);
  MEMORY[0x28223BE20](v50 - 8);
  v202 = &v164 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D0, &unk_265D5C070);
  MEMORY[0x28223BE20](v52 - 8);
  v201 = &v164 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D8, &qword_265D5D160);
  MEMORY[0x28223BE20](v54 - 8);
  v200 = &v164 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5E0, &qword_265D5C080);
  MEMORY[0x28223BE20](v56 - 8);
  v199 = &v164 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E988, &qword_265D5DC58);
  MEMORY[0x28223BE20](v58 - 8);
  v170 = &v164 - v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E990, &qword_265D5DC60);
  MEMORY[0x28223BE20](v60 - 8);
  v169 = &v164 - v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E998, &qword_265D5DC68);
  MEMORY[0x28223BE20](v62 - 8);
  v185 = &v164 - v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E9A0, &qword_265D5DC70);
  MEMORY[0x28223BE20](v64 - 8);
  v184 = &v164 - v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E9A8, &qword_265D5DC78);
  MEMORY[0x28223BE20](v66 - 8);
  v183 = &v164 - v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E9B0, &qword_265D5DC80);
  MEMORY[0x28223BE20](v68 - 8);
  v182 = &v164 - v69;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E9B8, &qword_265D5DC88);
  MEMORY[0x28223BE20](v70 - 8);
  v195 = &v164 - v71;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E480, &qword_265D5B940);
  v165 = *(v166 - 8);
  v72 = MEMORY[0x28223BE20](v166);
  v168 = &v164 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = MEMORY[0x28223BE20](v72);
  v167 = &v164 - v75;
  MEMORY[0x28223BE20](v74);
  v77 = &v164 - v76;
  v196 = sub_265D57DA0();
  v181 = *(v196 - 8);
  v78 = MEMORY[0x28223BE20](v196);
  v80 = &v164 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v78);
  v194 = &v164 - v81;
  v198 = sub_265D581A0();
  v197 = *(v198 - 8);
  MEMORY[0x28223BE20](v198);
  v216 = &v164 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_265D58AC0();
  v180 = *(v192 - 8);
  v83 = MEMORY[0x28223BE20](v192);
  v171 = &v164 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = v84;
  MEMORY[0x28223BE20](v83);
  v191 = &v164 - v85;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E6C8, &unk_265D5C9D0);
  MEMORY[0x28223BE20](v86 - 8);
  v88 = &v164 - v87;
  v89 = sub_265D59BA0();
  v90 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v92 = &v164 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v93 = off_28777D8C8[0];
  v94 = type metadata accessor for RemoteParticipantHandshakeRegistry();
  v93(v190, v94, &off_28777D8A8);
  if ((*(v90 + 48))(v88, 1, v89) == 1)
  {
    sub_265CA4AE8(v88, &qword_28003E6C8, &unk_265D5C9D0);
  }

  else
  {
    (*(v90 + 32))(v92, v88, v89);
    if (sub_265D285C8())
    {
      v95 = v180;
      v96 = v191;
      v97 = v192;
      (*(v180 + 16))(v191, v215, v192);
      v98 = (*(v95 + 80) + 16) & ~*(v95 + 80);
      v99 = swift_allocObject();
      (*(v95 + 32))(v99 + v98, v96, v97);
      sub_265D58940();
      (*(v90 + 8))(v92, v89);
      return;
    }

    (*(v90 + 8))(v92, v89);
  }

  v100 = v216;
  sub_265D58A10();
  sub_265D58170();
  v220 = sub_265D57D80();
  v221 = v101;
  strcpy(v219, "&dubloc=true");
  HIBYTE(v219[6]) = 0;
  v219[7] = -5120;
  v217 = 0;
  v218 = 0xE000000000000000;
  sub_265D28494();
  sub_265D5A100();
  v102 = v181;
  v103 = v196;
  v190 = *(v181 + 8);
  v164 = v181 + 8;
  v190(v80, v196);

  sub_265D57D90();

  if ((*(v102 + 48))(v77, 1, v103) == 1)
  {
    sub_265CA4AE8(v77, &qword_28003E480, &qword_265D5B940);
    v104 = sub_265D57FE0();
    sub_265D284E8();
    v105 = swift_allocError();
    (*(*(v104 - 8) + 104))(v106, *MEMORY[0x277D50360], v104);
    *(swift_allocObject() + 16) = v105;
    v107 = v105;
    sub_265D58940();
    (*(v197 + 8))(v100, v198);
  }

  else
  {
    (*(v102 + 32))(v194, v77, v103);
    v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E9C8, &unk_265D5DC90);
    (*(*(v108 - 8) + 56))(v182, 1, 1, v108);
    v109 = sub_265D57D50();
    (*(*(v109 - 8) + 56))(v183, 1, 1, v109);
    v110 = sub_265D581E0();
    (*(*(v110 - 8) + 56))();
    (*(v165 + 56))(v185, 1, 1, v166);
    v111 = sub_265D58150();
    v112 = v169;
    (*(*(v111 - 8) + 56))(v169, 1, 1, v111);
    v113 = sub_265D58420();
    v114 = v170;
    (*(*(v113 - 8) + 56))(v170, 1, 1, v113);
    v115 = *(v102 + 56);
    v116 = v167;
    v115(v167, 1, 1, v103);
    v117 = *(v102 + 16);
    v118 = v168;
    v117(v168, v194, v103);
    v115(v118, 0, 1, v103);
    v119 = v183;
    v120 = v182;
    v121 = v195;
    sub_265D58180();
    sub_265CA4AE8(v118, &qword_28003E480, &qword_265D5B940);
    sub_265CA4AE8(v116, &qword_28003E480, &qword_265D5B940);
    sub_265CA4AE8(v114, &qword_28003E988, &qword_265D5DC58);
    sub_265CA4AE8(v112, &qword_28003E990, &qword_265D5DC60);
    sub_265CA4AE8(v185, &qword_28003E998, &qword_265D5DC68);
    sub_265CA4AE8(v184, &qword_28003E9A0, &qword_265D5DC70);
    sub_265CA4AE8(v119, &qword_28003E9A8, &qword_265D5DC78);
    sub_265CA4AE8(v120, &qword_28003E9B0, &qword_265D5DC80);
    (*(v197 + 56))(v121, 0, 1, v198);
    v122 = sub_265D58020();
    (*(*(v122 - 8) + 56))(v199, 1, 1, v122);
    v123 = sub_265D58410();
    (*(*(v123 - 8) + 56))(v200, 1, 1, v123);
    v124 = sub_265D58590();
    (*(*(v124 - 8) + 56))(v201, 1, 1, v124);
    v125 = sub_265D58050();
    (*(*(v125 - 8) + 56))(v202, 1, 1, v125);
    v126 = sub_265D58BC0();
    (*(*(v126 - 8) + 56))(v203, 1, 1, v126);
    v127 = sub_265D58200();
    (*(*(v127 - 8) + 56))(v204, 1, 1, v127);
    v128 = sub_265D583E0();
    (*(*(v128 - 8) + 56))(v205, 1, 1, v128);
    v129 = sub_265D581B0();
    (*(*(v129 - 8) + 56))(v206, 1, 1, v129);
    v130 = sub_265D57F50();
    (*(*(v130 - 8) + 56))(v207, 1, 1, v130);
    v131 = sub_265D582A0();
    (*(*(v131 - 8) + 56))(v208, 1, 1, v131);
    v132 = sub_265D58680();
    (*(*(v132 - 8) + 56))(v209, 1, 1, v132);
    v133 = sub_265D58210();
    (*(*(v133 - 8) + 56))(v210, 1, 1, v133);
    v134 = sub_265D57E80();
    (*(*(v134 - 8) + 56))(v211, 1, 1, v134);
    v135 = sub_265D58430();
    (*(*(v135 - 8) + 56))(v212, 1, 1, v135);
    v136 = sub_265D58300();
    (*(*(v136 - 8) + 56))(v213, 1, 1, v136);
    v137 = sub_265D586F0();
    (*(*(v137 - 8) + 56))(v186, 1, 1, v137);
    v138 = sub_265D57E90();
    (*(*(v138 - 8) + 56))(v214, 1, 1, v138);
    v139 = sub_265D58BB0();
    (*(*(v139 - 8) + 56))(v187, 1, 1, v139);
    v140 = sub_265D581C0();
    (*(*(v140 - 8) + 56))();
    v141 = sub_265D58230();
    (*(*(v141 - 8) + 56))(v189, 1, 1, v141);
    v142 = sub_265D585C0();
    v143 = v172;
    (*(*(v142 - 8) + 56))(v172, 1, 1, v142);
    v144 = sub_265D57ED0();
    v145 = v173;
    (*(*(v144 - 8) + 56))(v173, 1, 1, v144);
    v146 = sub_265D58240();
    v147 = v174;
    (*(*(v146 - 8) + 56))(v174, 1, 1, v146);
    v148 = sub_265D58400();
    v149 = v175;
    (*(*(v148 - 8) + 56))(v175, 1, 1, v148);
    v150 = sub_265D58630();
    v151 = v176;
    (*(*(v150 - 8) + 56))(v176, 1, 1, v150);
    v152 = sub_265D58B10();
    v153 = v177;
    (*(*(v152 - 8) + 56))(v177, 1, 1, v152);
    v154 = sub_265D58600();
    v155 = v178;
    (*(*(v154 - 8) + 56))(v178, 1, 1, v154);
    v156 = v187;
    v157 = v186;
    sub_265D58AA0();
    sub_265CA4AE8(v155, &qword_28003E2F8, &qword_265D5B680);
    sub_265CA4AE8(v153, &qword_28003E340, &unk_265D5D0C0);
    sub_265CA4AE8(v151, &qword_28003E540, &qword_265D5BFE0);
    sub_265CA4AE8(v149, &qword_28003E548, &qword_265D5BFE8);
    sub_265CA4AE8(v147, &qword_28003E550, &unk_265D5BFF0);
    sub_265CA4AE8(v145, &qword_28003E840, &unk_265D5D0D0);
    sub_265CA4AE8(v143, &qword_28003E560, &unk_265D5CC10);
    sub_265CA4AE8(v189, &qword_28003E980, &unk_265D5E880);
    sub_265CA4AE8(v188, &qword_28003E570, &unk_265D5D0E0);
    sub_265CA4AE8(v156, &qword_28003E568, &unk_265D5C010);
    sub_265CA4AE8(v214, &qword_28003E578, &unk_265D5C020);
    sub_265CA4AE8(v157, &qword_28003E580, &unk_265D5D0F0);
    sub_265CA4AE8(v213, &qword_28003E200, &unk_265D5B580);
    sub_265CA4AE8(v212, &qword_28003E588, &unk_265D5D100);
    sub_265CA4AE8(v211, &qword_28003E590, &unk_265D5C030);
    sub_265CA4AE8(v210, &qword_28003E598, &unk_265D5D110);
    sub_265CA4AE8(v209, &qword_28003E5A0, &unk_265D5C040);
    sub_265CA4AE8(v208, &qword_28003E5A8, &unk_265D5D120);
    sub_265CA4AE8(v207, &qword_28003E5B0, &unk_265D5C050);
    sub_265CA4AE8(v206, &qword_28003E5B8, &unk_265D5D130);
    sub_265CA4AE8(v205, &qword_28003E5C0, &unk_265D5C060);
    sub_265CA4AE8(v204, &qword_28003E348, &qword_265D5B710);
    sub_265CA4AE8(v203, &unk_28003E960, &unk_265D5D140);
    sub_265CA4AE8(v202, &qword_28003E5C8, &unk_265D5D150);
    sub_265CA4AE8(v201, &qword_28003E5D0, &unk_265D5C070);
    sub_265CA4AE8(v200, &qword_28003E5D8, &qword_265D5D160);
    sub_265CA4AE8(v199, &qword_28003E5E0, &qword_265D5C080);
    sub_265CA4AE8(v195, &qword_28003E9B8, &qword_265D5DC88);
    v158 = v180;
    v159 = v171;
    v160 = v191;
    v161 = v192;
    (*(v180 + 16))(v171, v191, v192);
    v162 = (*(v158 + 80) + 16) & ~*(v158 + 80);
    v163 = swift_allocObject();
    (*(v158 + 32))(v163 + v162, v159, v161);
    sub_265D58940();
    (*(v158 + 8))(v160, v161);
    v190(v194, v196);
    (*(v197 + 8))(v216, v198);
  }
}

unint64_t sub_265D28494()
{
  result = qword_28003E9C0;
  if (!qword_28003E9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E9C0);
  }

  return result;
}

unint64_t sub_265D284E8()
{
  result = qword_28003E8C8;
  if (!qword_28003E8C8)
  {
    sub_265D57FE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E8C8);
  }

  return result;
}

uint64_t objectdestroy_2Tm()
{
  v1 = sub_265D58AC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_265D285C8()
{
  v23 = sub_265D59DE0();
  v0 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E6D8, &unk_265D5CB60);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E6C0, &qword_265D5C9C8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  v9 = sub_265D57F40();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D59B90();
  v13 = sub_265D588C0();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v5, 1, v13) == 1)
  {
    sub_265CA4AE8(v5, &qword_28003E6D8, &unk_265D5CB60);
    (*(v10 + 56))(v8, 1, 1, v9);
LABEL_4:
    sub_265CA4AE8(v8, &qword_28003E6C0, &qword_265D5C9C8);
    sub_265D595F0();
    v15 = sub_265D59DD0();
    v16 = sub_265D5A070();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_265C01000, v15, v16, "Unable to determine remote participant's build version, do not support dubbing.", v17, 2u);
      MEMORY[0x266770CF0](v17, -1, -1);
    }

    (*(v0 + 8))(v2, v23);
    v18 = 0;
    return v18 & 1;
  }

  sub_265D58880();
  (*(v14 + 8))(v5, v13);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    goto LABEL_4;
  }

  sub_265D28998(v8, v12);
  if (qword_28003DDA8 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v9, qword_28003F0A0);
  v20 = MEMORY[0x26676DFF0](v12, v19);
  sub_265D289FC(v12);
  v18 = v20 ^ 1;
  return v18 & 1;
}

uint64_t sub_265D28998(uint64_t a1, uint64_t a2)
{
  v4 = sub_265D57F40();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_265D289FC(uint64_t a1)
{
  v2 = sub_265D57F40();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265D28A58()
{
  v1 = v0;
  v62 = sub_265D58EB0();
  v71 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v61 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_265D58F70();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_265D59DE0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595E0();
  sub_265D59DC0();
  (*(v8 + 8))(v10, v7);
  v11 = *(v1 + 40);
  v69 = *(v1 + 56);
  v75 = v1;
  ObjectType = swift_getObjectType();
  v78 = v11;
  v12 = *MEMORY[0x277D4E4F8];
  v13 = *(v4 + 104);
  v73 = v4 + 104;
  v13(v6, v12, v3);
  swift_allocObject();
  swift_weakInit();
  v14 = sub_265D58AC0();
  swift_unknownObjectRetain_n();
  sub_265D591F0();

  v72 = *(v4 + 8);
  v77 = v4 + 8;
  v72(v6, v3);
  swift_unknownObjectRelease();
  v78 = v11;
  v15 = *MEMORY[0x277D4E3A0];
  v74 = v13;
  v13(v6, v15, v3);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v70 = v14;
  sub_265D591E0();

  v76 = v3;
  v16 = v72;
  v72(v6, v3);
  swift_unknownObjectRelease();
  v78 = v11;
  v13(v6, *MEMORY[0x277D4EE00], v3);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_265D59200();

  v17 = v76;
  v16(v6, v76);
  swift_unknownObjectRelease();
  v78 = v11;
  v74(v6, *MEMORY[0x277D4ED00], v17);
  swift_allocObject();
  swift_weakInit();
  v67 = sub_265D583D0();
  swift_unknownObjectRetain();
  sub_265D59200();

  v18 = v76;
  v16(v6, v76);
  swift_unknownObjectRelease();
  v78 = v11;
  v19 = v74;
  v74(v6, *MEMORY[0x277D4E810], v18);
  swift_allocObject();
  swift_weakInit();
  v68 = sub_265D58130();
  swift_unknownObjectRetain();
  sub_265D591E0();

  v20 = v76;
  v16(v6, v76);
  swift_unknownObjectRelease();
  v78 = v11;
  v19(v6, *MEMORY[0x277D4E710], v20);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_265D59200();

  v21 = v76;
  v16(v6, v76);
  swift_unknownObjectRelease();
  v78 = v11;
  v22 = v21;
  v23 = v21;
  v24 = v74;
  v74(v6, *MEMORY[0x277D4E9A8], v22);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  sub_265D59210();

  v16(v6, v23);

  swift_unknownObjectRelease();
  v78 = v11;
  v25 = *MEMORY[0x277D4E868];
  v64 = v6;
  v24(v6, v25, v23);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  sub_265D59210();

  v72(v6, v23);

  v60 = v11;
  swift_unknownObjectRelease();
  v78 = v11;
  v26 = v71;
  v28 = v71 + 104;
  v27 = *(v71 + 104);
  v29 = v61;
  v30 = v62;
  (v27)(v61, *MEMORY[0x277D4E088], v62);
  v67 = v27;
  v70 = v28;
  swift_allocObject();
  v31 = v75;
  swift_weakInit();

  sub_265D591D0();

  v32 = *(v26 + 8);
  v32(v29, v30);
  v63 = v32;
  v71 = v26 + 8;

  v33 = v60;
  swift_unknownObjectRelease();
  v78 = v33;
  v65 = *MEMORY[0x277D4E040];
  v27(v29);
  swift_allocObject();
  swift_weakInit();
  sub_265D591C0();

  v32(v29, v30);
  swift_unknownObjectRelease();
  v34 = *(v31 + 16);
  v35 = *(v31 + 32);
  v36 = swift_getObjectType();
  v78 = v34;
  LODWORD(v69) = *MEMORY[0x277D4EBE0];
  v37 = v64;
  v38 = v76;
  (v74)(v64);
  swift_allocObject();
  swift_weakInit();
  ObjectType = sub_265D58670();
  swift_unknownObjectRetain_n();
  v58 = v35;
  v59 = v36;
  sub_265D59200();

  v72(v37, v38);
  swift_unknownObjectRelease();
  v78 = v34;
  v40 = v61;
  v39 = v62;
  v41 = v67;
  (v67)(v61, v65, v62);
  swift_allocObject();
  swift_weakInit();
  sub_265D591C0();

  v42 = v40;
  v43 = v40;
  v44 = v39;
  v45 = v63;
  v63(v43, v39);
  swift_unknownObjectRelease();
  v78 = v34;
  LODWORD(v60) = *MEMORY[0x277D4E060];
  v41(v42);
  swift_allocObject();
  v46 = v75;
  swift_weakInit();

  sub_265D591D0();

  v45(v42, v39);

  swift_unknownObjectRelease();
  v47 = *(v46 + 64);
  v48 = *(v46 + 80);
  swift_getObjectType();
  v78 = v47;
  (v41)(v42, v65, v39);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain_n();
  sub_265D591C0();

  v45(v42, v39);
  swift_unknownObjectRelease();
  v78 = v47;
  v49 = v64;
  v50 = v76;
  v74(v64, v69, v76);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v59 = v48;
  sub_265D59200();

  v72(v49, v50);
  swift_unknownObjectRelease();
  v78 = v47;
  v51 = v67;
  (v67)(v42, v60, v44);
  swift_allocObject();
  swift_weakInit();

  sub_265D591D0();

  v52 = v63;
  v63(v42, v44);

  swift_unknownObjectRelease();
  v78 = v47;
  (v51)(v42, *MEMORY[0x277D4E128], v44);
  swift_allocObject();
  v53 = v75;
  swift_weakInit();

  sub_265D591D0();

  v52(v42, v44);

  swift_unknownObjectRelease();
  v54 = *(v53 + 88);
  v59 = *(v53 + 104);
  swift_getObjectType();
  v78 = v54;
  (v67)(v42, v65, v44);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain_n();
  sub_265D591C0();

  v52(v42, v44);
  swift_unknownObjectRelease();
  v78 = v54;
  v55 = v64;
  v56 = v76;
  v74(v64, v69, v76);
  swift_allocObject();
  swift_weakInit();
  sub_265D59200();

  v72(v55, v56);
  swift_unknownObjectRelease();
  v78 = v54;
  (v67)(v42, v60, v44);
  swift_allocObject();
  swift_weakInit();

  sub_265D591D0();

  v63(v42, v44);

  return swift_unknownObjectRelease();
}

uint64_t sub_265D29C1C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a3@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_265C97624(Strong + 112, v9);

    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    sub_265D07940(v4, a3);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
    (*(*(v6 - 8) + 56))(a3, 0, 1, v6);
    return __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
    return (*(*(v8 - 8) + 56))(a3, 1, 1, v8);
  }
}

uint64_t sub_265D29D4C@<X0>(uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_265C97624(Strong + 112, v8);

    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    v4 = off_28777DE98;
    type metadata accessor for SessionSystem(0);
    v4();
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E250, "<Q");
    (*(*(v5 - 8) + 56))(a2, 0, 1, v5);
    return __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E250, "<Q");
    return (*(*(v7 - 8) + 56))(a2, 1, 1, v7);
  }
}

uint64_t sub_265D29EB0@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_265C97624(Strong + 112, v15);

    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    a5(a1);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    (*(*(v12 - 8) + 56))(a6, 0, 1, v12);
    return __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    return (*(*(v14 - 8) + 56))(a6, 1, 1, v14);
  }
}

uint64_t sub_265D29FF0@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_265D59DE0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_265C97624(Strong + 112, v13);

    v8 = *__swift_project_boxed_opaque_existential_1(v13, v13[3]);
    sub_265D595F0();
    sub_265D59DC0();
    (*(v4 + 8))(v6, v3);
    __swift_project_boxed_opaque_existential_1((v8 + 96), *(v8 + 120));
    v9 = off_28777FBD0;
    type metadata accessor for AppRequirementCoordinator(0);
    v9(a2);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
    (*(*(v10 - 8) + 56))(a2, 0, 1, v10);
    return __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
    return (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
  }
}

uint64_t sub_265D2A224@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_265C97624(Strong + 112, v13);

    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    a4();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    (*(*(v10 - 8) + 56))(a5, 0, 1, v10);
    return __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    return (*(*(v12 - 8) + 56))(a5, 1, 1, v12);
  }
}

uint64_t sub_265D2A354(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_265C97624(result + 112, v6);

    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    a3(a2);
    return __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  return result;
}

uint64_t sub_265D2A3E8(void (*a1)(void, void), uint64_t a2, unsigned int a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_265C97624(result + 112, v6);

    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    sub_265D01B9C(a1, a3);
    return __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  return result;
}

uint64_t sub_265D2A47C@<X0>(uint64_t a1@<X0>, int a3@<W2>, uint64_t a4@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_265C97624(Strong + 112, v11);

    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    sub_265D0C8D0(a1, a3, a4);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
    (*(*(v8 - 8) + 56))(a4, 0, 1, v8);
    return __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
    return (*(*(v10 - 8) + 56))(a4, 1, 1, v10);
  }
}

uint64_t sub_265D2A5BC(uint64_t a1)
{
  v1 = sub_265D59DE0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_265C97624(result + 112, v7);

    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    sub_265D595F0();
    sub_265D59DC0();
    (*(v2 + 8))(v4, v1);
    v6 = off_28777DB58;
    type metadata accessor for SessionHeartbeatCoordinator();
    v6();
    return __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  return result;
}

uint64_t sub_265D2A74C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));

  return swift_deallocClassInstance();
}

void sub_265D2AAC8(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v24 = a2;
  v23 = a1;
  v26 = a3;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E258, &unk_265D5B5E0);
  MEMORY[0x28223BE20](v25);
  v4 = (&v22 - v3);
  v5 = sub_265D58AC0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AppRequirementCoordinator.State(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  sub_265D58CA0();
  sub_265D2BEF8(v14, v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DDE8, &qword_265D5DD90);
  if ((*(*(v15 - 8) + 48))(v12, 1, v15) == 1)
  {
    v16 = sub_265D57FE0();
    sub_265D284E8();
    v17 = swift_allocError();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D503B0], v16);
    *(swift_allocObject() + 16) = v17;
    v19 = v17;
    sub_265D58940();
    sub_265D2BFE0(v14);
  }

  else
  {
    v22 = *&v12[*(v15 + 48)];
    (*(v6 + 32))(v8, v12, v5);
    sub_265D58CA0();
    if (v24)
    {
      v20 = v23;
      *v4 = v23;
      swift_storeEnumTagMultiPayload();
      v21 = v20;
    }

    else
    {
      (*(v6 + 16))(v4, v8, v5);
      swift_storeEnumTagMultiPayload();
    }

    v22(v4);
    sub_265D2BF78(v4);
    sub_265D58970();

    (*(v6 + 8))(v8, v5);
    sub_265D2BFE0(v14);
  }
}

uint64_t sub_265D2AEA8(uint64_t a1)
{
  v2 = type metadata accessor for AppRequirementCoordinator.State(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DDE8, &qword_265D5DD90);
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC22SeymourSessionServices25AppRequirementCoordinator_state;
  swift_beginAccess();
  sub_265D2C03C(v4, a1 + v6);
  return swift_endAccess();
}

uint64_t sub_265D2AFA0()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  sub_265D2BFE0(v0 + OBJC_IVAR____TtC22SeymourSessionServices25AppRequirementCoordinator_state);
  v1 = OBJC_IVAR____TtC22SeymourSessionServices25AppRequirementCoordinator__appRequirementEnabled;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E638, &qword_265D5C5E8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_265D2B090(uint64_t a1)
{
  type metadata accessor for AppRequirementCoordinator.State(319);
  if (v1 <= 0x3F)
  {
    sub_265CDAE1C();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_265D2B1C8(uint64_t a1)
{
  sub_265D2B220(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_265D2B220(uint64_t a1)
{
  if (!qword_2813B9000)
  {
    sub_265D58AC0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28003E3B8, &qword_265D5DDA0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813B9000);
    }
  }
}

uint64_t sub_265D2B2A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v75 = a2;
  v76 = a1;
  v74 = sub_265D58AC0();
  v4 = *(v74 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v74);
  v73 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E638, &qword_265D5C5E8);
  v68 = *(v6 - 8);
  v69 = v6;
  MEMORY[0x28223BE20](v6);
  v67 = &v64 - v7;
  v8 = sub_265D581A0();
  v71 = *(v8 - 8);
  v72 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_265D59650();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_265D59DE0();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595E0();
  sub_265D59DC0();
  (*(v16 + 8))(v18, v15);
  v70 = v3;
  v19 = *(v3 + 24);
  v20 = sub_265D58B30();
  (*(v12 + 104))(v14, *MEMORY[0x277D4F8D8], v11);
  LOBYTE(v16) = sub_265CA7344(v14, v20);

  (*(v12 + 8))(v14, v11);
  if ((v16 & 1) == 0)
  {
    v37 = v73;
    v36 = v74;
    (*(v4 + 16))(v73, v76, v74);
    v38 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v39 = swift_allocObject();
    (*(v4 + 32))(v39 + v38, v37, v36);
    return sub_265D58940();
  }

  v65 = v5;
  v66 = v4;
  v21 = v74;
  sub_265D58A10();
  v22 = sub_265D58190();
  v24 = v23;
  v26 = v25;
  (*(v71 + 8))(v10, v72);
  if ((v26 & 1) == 0)
  {
    sub_265CA4B90(v22, v24, 0);
    v40 = sub_265D57FE0();
    sub_265D284E8();
    v41 = swift_allocError();
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D50390], v40);
    *(swift_allocObject() + 16) = v41;
    return sub_265D58940();
  }

  v72 = v22;
  v27 = sub_265D58B50();
  v29 = v28;
  v30 = v70;
  __swift_project_boxed_opaque_existential_1((v70 + 32), *(v70 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DDE0, &unk_265D5AF90);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_265D5AF60;
  *(v31 + 32) = v27;
  *(v31 + 40) = v29;
  LOBYTE(v27) = sub_265D59AD0();

  if (v27)
  {
    v32 = v66;
    v33 = v73;
    (*(v66 + 16))(v73, v76, v21);
    v34 = (*(v32 + 80) + 16) & ~*(v32 + 80);
    v35 = swift_allocObject();
    (*(v32 + 32))(v35 + v34, v33, v21);
    return sub_265D58940();
  }

  v43 = v67;
  v44 = v68;
  v45 = v69;
  (*(v68 + 16))(v67, v30 + OBJC_IVAR____TtC22SeymourSessionServices25AppRequirementCoordinator__appRequirementEnabled, v69);
  sub_265D58D10();
  (*(v44 + 8))(v43, v45);
  if (v77 != 1)
  {
    v51 = sub_265D57FE0();
    sub_265D284E8();
    v52 = swift_allocError();
    (*(*(v51 - 8) + 104))(v53, *MEMORY[0x277D503A8], v51);
    *(swift_allocObject() + 16) = v52;
    return sub_265D58940();
  }

  if (v19 != 2)
  {
    v54 = sub_265D57FE0();
    sub_265D284E8();
    v55 = swift_allocError();
    (*(*(v54 - 8) + 104))(v56, *MEMORY[0x277D503B8], v54);
    *(swift_allocObject() + 16) = v55;
    return sub_265D58940();
  }

  sub_265D59420();
  if (v72 > 1u)
  {
    v46 = v65;
    v47 = v66;
    v48 = v73;
    if (v72 == 2)
    {
      v49 = sub_265D593E0();
    }

    else
    {
      v49 = sub_265D593F0();
    }
  }

  else
  {
    v46 = v65;
    v47 = v66;
    v48 = v73;
    if (v72)
    {
      v49 = sub_265D59410();
    }

    else
    {
      v49 = sub_265D59400();
    }
  }

  v58 = v49;
  v59 = v50;
  (*(v47 + 16))(v48, v76, v21);
  v60 = (*(v47 + 80) + 24) & ~*(v47 + 80);
  v61 = (v46 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v62 = swift_allocObject();
  *(v62 + 16) = v70;
  (*(v47 + 32))(v62 + v60, v48, v21);
  v63 = (v62 + v61);
  *v63 = v58;
  v63[1] = v59;

  return sub_265D58930();
}

uint64_t sub_265D2BB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_265D58CA0();
  v6 = sub_265D59EE0();
  notify_post((v6 + 32));
}

uint64_t sub_265D2BBD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for AppRequirementCoordinator.State(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DDE8, &qword_265D5DD90);
  v12 = &v10[*(v11 + 48)];
  v13 = sub_265D58AC0();
  (*(*(v13 - 8) + 16))(v10, a2, v13);
  *v12 = a3;
  *(v12 + 1) = a4;
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  v14 = OBJC_IVAR____TtC22SeymourSessionServices25AppRequirementCoordinator_state;
  swift_beginAccess();

  sub_265D2C03C(v10, a1 + v14);
  return swift_endAccess();
}

void sub_265D2BD3C(uint64_t a1@<X8>)
{
  v2 = sub_265D59DE0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595E0();
  sub_265D59DC0();
  (*(v3 + 8))(v5, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E390, &qword_265D5B8D0);
  sub_265D5A4B0();
  v6 = v7;
  LOBYTE(v5) = v8;
  sub_265D2AAC8(v7, v8, a1);
  sub_265CA4470(v6, v5);
}

uint64_t sub_265D2BE98@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SeymourSessionServices25AppRequirementCoordinator_state;
  swift_beginAccess();
  return sub_265D2BEF8(v1 + v3, a1);
}

uint64_t sub_265D2BEF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppRequirementCoordinator.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265D2BF78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E258, &unk_265D5B5E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265D2BFE0(uint64_t a1)
{
  v2 = type metadata accessor for AppRequirementCoordinator.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265D2C03C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppRequirementCoordinator.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_265D2C0A0(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_265D58AC0() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_265D2BB48(a1, a2, v7, v2 + v6, v9, v10);
}

double sub_265D2C19C(double a1, double a2, double a3, double a4)
{
  v8 = sub_265D59DE0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  sub_265D595F0();
  v15 = sub_265D59DD0();
  v16 = sub_265D5A080();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134349824;
    *(v17 + 4) = a1;
    *(v17 + 12) = 2050;
    *(v17 + 14) = a2;
    *(v17 + 22) = 2050;
    *(v17 + 24) = a3;
    *(v17 + 32) = 2050;
    *(v17 + 34) = a4;
    _os_log_impl(&dword_265C01000, v15, v16, "Timestamp - calculate offset - clientOut: %{public}f serverIn: %{public}f serverOut: %{public}f clientIn: %{public}f", v17, 0x2Au);
    MEMORY[0x266770CF0](v17, -1, -1);
  }

  v18 = *(v9 + 8);
  v18(v14, v8);
  v19 = a4 - a1 - (a3 - a2);
  v20 = (a2 - a1 + a3 - a4) * -0.5;
  sub_265D595F0();
  v21 = sub_265D59DD0();
  v22 = sub_265D5A080();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 134349312;
    *(v23 + 4) = v20;
    *(v23 + 12) = 2050;
    *(v23 + 14) = v19;
    _os_log_impl(&dword_265C01000, v21, v22, "Timestamp - offset: %{public}f, uncertainty: %{public}f", v23, 0x16u);
    MEMORY[0x266770CF0](v23, -1, -1);
  }

  v18(v12, v8);
  return v20;
}

uint64_t sub_265D2C414()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MachTimestampOffsetExchange.State(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MachTimestampOffsetExchange.State(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_265D2C510(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_265D2C528(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for MachTimestampOffsetError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MachTimestampOffsetError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_265D2C6A4()
{
  result = qword_28003E9D0;
  if (!qword_28003E9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003E9D0);
  }

  return result;
}

uint64_t sub_265D2C6FC()
{
  v0 = sub_265D590A0();
  v5[3] = v0;
  v5[4] = sub_265D40868(&qword_2813B8FE8, MEMORY[0x277D4F200], MEMORY[0x277D4F1E8]);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v5);
  (*(*(v0 - 8) + 104))(boxed_opaque_existential_1Tm, *MEMORY[0x277D4F1F0], v0);
  v2 = sub_265D58BD0();
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  v3 = &unk_28777A748;
  if ((v2 & 1) == 0 && os_variant_has_internal_content())
  {
    v3 = &unk_28777A770;
  }

  result = sub_265C95FFC(v3);
  qword_2813B9240 = result;
  return result;
}

uint64_t sub_265D2C7F4(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_265D59DE0();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = sub_265D58AC0();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D2C910, 0, 0);
}

uint64_t sub_265D2C910()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    sub_265D59450();
    v2 = swift_task_alloc();
    v0[18] = v2;
    v3 = type metadata accessor for DistributedSessionPublisher(0);
    v4 = sub_265D40868(&qword_28003EA60, type metadata accessor for DistributedSessionPublisher, &unk_265D5E0E0);
    *v2 = v0;
    v2[1] = sub_265D2CA80;
    v5 = v0[16];

    return MEMORY[0x2821AE8D8](v5, v3, v4);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_265D2CA80()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 152) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_265D2CC68, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_265D2CC68(uint64_t a1)
{
  v21 = v1;
  v2 = *(v1 + 152);
  sub_265D595F0();
  v3 = v2;
  v4 = sub_265D59DD0();
  v5 = sub_265D5A070();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 152);
    v7 = *(v1 + 96);
    v19 = *(v1 + 104);
    v8 = *(v1 + 88);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = MEMORY[0x2667704D0](*(v1 + 48), *(v1 + 56));
    v13 = sub_265CF4FFC(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_265C01000, v4, v5, "DistributedSessionPublisher - Failed to start session on phone: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266770CF0](v10, -1, -1);
    MEMORY[0x266770CF0](v9, -1, -1);

    (*(v7 + 8))(v19, v8);
  }

  else
  {
    v15 = *(v1 + 96);
    v14 = *(v1 + 104);
    v16 = *(v1 + 88);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v1 + 8);

  return v17();
}

uint64_t sub_265D2CE50(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_265D59DE0();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = sub_265D58AC0();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D2CF6C, 0, 0);
}

uint64_t sub_265D2CF6C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    sub_265D59020();
    v2 = swift_task_alloc();
    v0[18] = v2;
    v3 = type metadata accessor for DistributedSessionPublisher(0);
    v4 = sub_265D40868(&qword_28003EA60, type metadata accessor for DistributedSessionPublisher, &unk_265D5E0E0);
    *v2 = v0;
    v2[1] = sub_265D2D0DC;
    v5 = v0[16];

    return MEMORY[0x2821AE8C8](v5, v3, v4);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_265D2D0DC()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 152) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_265D2D2C4, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_265D2D2C4(uint64_t a1)
{
  v21 = v1;
  v2 = *(v1 + 152);
  sub_265D595F0();
  v3 = v2;
  v4 = sub_265D59DD0();
  v5 = sub_265D5A070();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 152);
    v7 = *(v1 + 96);
    v19 = *(v1 + 104);
    v8 = *(v1 + 88);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = MEMORY[0x2667704D0](*(v1 + 48), *(v1 + 56));
    v13 = sub_265CF4FFC(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_265C01000, v4, v5, "DistributedSessionPublisher - Failed to end session on phone: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266770CF0](v10, -1, -1);
    MEMORY[0x266770CF0](v9, -1, -1);

    (*(v7 + 8))(v19, v8);
  }

  else
  {
    v15 = *(v1 + 96);
    v14 = *(v1 + 104);
    v16 = *(v1 + 88);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v1 + 8);

  return v17();
}

uint64_t sub_265D2D4AC(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_265D59DE0();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = sub_265D58130();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D2D5C8, 0, 0);
}

uint64_t sub_265D2D5C8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    sub_265D58E60();
    v2 = swift_task_alloc();
    v0[18] = v2;
    v3 = type metadata accessor for DistributedSessionPublisher(0);
    v4 = sub_265D40868(&qword_28003EA60, type metadata accessor for DistributedSessionPublisher, &unk_265D5E0E0);
    *v2 = v0;
    v2[1] = sub_265D2D738;
    v5 = v0[16];

    return MEMORY[0x2821AE8D0](v5, v3, v4);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_265D2D738()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 152) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_265D2D920, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_265D2D920(uint64_t a1)
{
  v21 = v1;
  v2 = *(v1 + 152);
  sub_265D595F0();
  v3 = v2;
  v4 = sub_265D59DD0();
  v5 = sub_265D5A070();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 152);
    v7 = *(v1 + 96);
    v19 = *(v1 + 104);
    v8 = *(v1 + 88);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = MEMORY[0x2667704D0](*(v1 + 48), *(v1 + 56));
    v13 = sub_265CF4FFC(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_265C01000, v4, v5, "DistributedSessionPublisher - Failed to update session on phone: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266770CF0](v10, -1, -1);
    MEMORY[0x266770CF0](v9, -1, -1);

    (*(v7 + 8))(v19, v8);
  }

  else
  {
    v15 = *(v1 + 96);
    v14 = *(v1 + 104);
    v16 = *(v1 + 88);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v1 + 8);

  return v17();
}

uint64_t sub_265D2DB08(uint64_t a1)
{
  v2[43] = a1;
  v2[44] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF10, &qword_265D5B100);
  v2[45] = v3;
  v2[46] = *(v3 - 8);
  v2[47] = swift_task_alloc();
  v4 = sub_265D59DE0();
  v2[48] = v4;
  v2[49] = *(v4 - 8);
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E530, &qword_265D5BF68);
  v2[53] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D2DC80, v1, 0);
}

uint64_t sub_265D2DC80()
{
  v1 = *(v0 + 352);
  sub_265D33B1C();
  __swift_project_boxed_opaque_existential_1((v1 + 112), *(v1 + 136));
  sub_265D58EC0();
  v2 = *(v0 + 424);
  v3 = *(v0 + 352);
  sub_265C033C4((v0 + 56), v0 + 16);
  v4 = sub_265D59FA0();
  v5 = *(*(v4 - 8) + 56);
  v5(v2, 1, 1, v4);
  sub_265C97624(v0 + 16, v0 + 96);
  v6 = sub_265D40868(&qword_28003EA18, type metadata accessor for DistributedSessionPublisher, &unk_265D5E180);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v6;
  v7[4] = v3;
  sub_265C033C4((v0 + 96), (v7 + 5));
  swift_retain_n();
  *(v0 + 432) = sub_265D4CE7C(0, 0, v2, &unk_265D5E1C8, v7);
  v5(v2, 1, 1, v4);
  sub_265C97624(v0 + 16, v0 + 136);
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = v6;
  v8[4] = v3;
  sub_265C033C4((v0 + 136), (v8 + 5));
  swift_retain_n();
  *(v0 + 440) = sub_265D4CE7C(0, 0, v2, &unk_265D5E1D8, v8);
  v5(v2, 1, 1, v4);
  sub_265C97624(v0 + 16, v0 + 176);
  v9 = swift_allocObject();
  v9[2] = v3;
  v9[3] = v6;
  v9[4] = v3;
  sub_265C033C4((v0 + 176), (v9 + 5));
  swift_retain_n();
  *(v0 + 448) = sub_265D4CE7C(0, 0, v2, &unk_265D5E1E8, v9);
  v5(v2, 1, 1, v4);
  sub_265C97624(v0 + 16, v0 + 216);
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v6;
  sub_265C033C4((v0 + 216), (v10 + 4));
  v10[9] = v3;
  swift_retain_n();
  *(v0 + 456) = sub_265D4CE7C(0, 0, v2, &unk_265D5E1F8, v10);
  v11 = *(v0 + 40);
  v12 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v11);
  v13 = swift_task_alloc();
  *(v0 + 464) = v13;
  *v13 = v0;
  v13[1] = sub_265D2E1D0;

  return MEMORY[0x2821AF528](v11, v12);
}

uint64_t sub_265D2E1D0()
{
  v2 = *v1;
  *(*v1 + 472) = v0;

  v3 = *(v2 + 352);
  if (v0)
  {
    v4 = sub_265D2E860;
  }

  else
  {
    v4 = sub_265D2E2FC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_265D2E2FC(uint64_t a1)
{
  sub_265D595F0();
  v2 = sub_265D59DD0();
  v3 = sub_265D5A080();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_265C01000, v2, v3, "DistributedSessionPublisher - activated workout", v4, 2u);
    MEMORY[0x266770CF0](v4, -1, -1);
  }

  v5 = v1[52];
  v6 = v1[48];
  v7 = v1[49];
  v8 = v1[44];

  (*(v7 + 8))(v5, v6);
  v10 = v8[17];
  v9 = v8[18];
  __swift_project_boxed_opaque_existential_1(v8 + 14, v10);

  v11 = swift_task_alloc();
  v1[60] = v11;
  *v11 = v1;
  v11[1] = sub_265D2E47C;
  v12 = v1[44];

  return MEMORY[0x2821AEFF8](&unk_265D5E208, v12, v10, v9);
}

uint64_t sub_265D2E47C(uint64_t a1)
{
  v2 = *(*v1 + 352);
  *(*v1 + 488) = a1;

  return MEMORY[0x2822009F8](sub_265D2E59C, v2, 0);
}

uint64_t sub_265D2E59C()
{
  v14 = v0[61];
  v11 = v0[56];
  v12 = v0[57];
  v1 = v0[54];
  v15 = v0[55];
  v3 = v0[46];
  v2 = v0[47];
  v4 = v0[44];
  v13 = v0[45];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);

  v5 = sub_265D594C0();

  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E620, &unk_265D5E1B0) + 176);
  *v2 = sub_265D589C0();
  sub_265C97624((v0 + 2), (v2 + 1));
  v2[6] = v1;
  v2[7] = v15;
  v2[8] = v11;
  v2[9] = v12;
  v2[10] = v5;
  v2[11] = v14;

  v6 = v5;

  sub_265D58A00();
  *(v2 + v10) = sub_265C96BC8(MEMORY[0x277D84F90]);
  type metadata accessor for DistributedSessionPublisher.State(0);
  swift_storeEnumTagMultiPayload();
  (*(v3 + 104))(v2, *MEMORY[0x277D4F250], v13);
  v7 = OBJC_IVAR____TtC22SeymourSessionServices27DistributedSessionPublisher_state;
  swift_beginAccess();
  (*(v3 + 40))(v4 + v7, v2, v13);
  swift_endAccess();
  __swift_project_boxed_opaque_existential_1((v4 + 112), *(v4 + 136));
  sub_265D590D0();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_265D2E860(uint64_t a1)
{
  v20 = v1;
  v2 = v1[59];
  sub_265D595F0();
  v3 = v2;
  v4 = sub_265D59DD0();
  v5 = sub_265D5A070();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v1[49];
    v6 = v1[50];
    v8 = v1[48];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = MEMORY[0x2667704D0](v1[36], v1[37]);
    v13 = sub_265CF4FFC(v11, v12, &v19);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_265C01000, v4, v5, "DistributedSessionPublisher - failed to activate workout: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266770CF0](v10, -1, -1);
    MEMORY[0x266770CF0](v9, -1, -1);

    (*(v7 + 8))(v6, v8);
  }

  else
  {
    v15 = v1[49];
    v14 = v1[50];
    v16 = v1[48];

    (*(v15 + 8))(v14, v16);
  }

  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 2);

  v17 = v1[1];

  return v17();
}

uint64_t sub_265D2EA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v7 = sub_265D57F50();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B0, &unk_265D5C050);
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D2EB84, a4, 0);
}

uint64_t sub_265D2EB84()
{
  if (sub_265CA786C(2, *(v0[12] + 208)))
  {
    v1 = v0[13];
    v2 = v1[3];
    v3 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v2);
    v4 = swift_task_alloc();
    v0[18] = v4;
    *v4 = v0;
    v4[1] = sub_265D2EC98;

    return MEMORY[0x2821AF4F8](v0 + 7, v2, v3);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_265D2EC98()
{
  v1 = *(*v0 + 96);

  return MEMORY[0x2822009F8](sub_265D2EDA8, v1, 0);
}

uint64_t sub_265D2EDA8()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1Tm(v0 + 2);
  sub_265D5A010();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v5 = sub_265D40868(&qword_28003EA18, type metadata accessor for DistributedSessionPublisher, &unk_265D5E180);
  v0[19] = v5;
  v6 = v0[12];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v7 = swift_task_alloc();
  v0[20] = v7;
  *v7 = v0;
  v7[1] = sub_265D2EFAC;
  v8 = v0[17];

  return MEMORY[0x282200310](v8, v6, v5);
}

uint64_t sub_265D2EFAC()
{
  v2 = *v1;

  if (!v0)
  {
    v4 = *(v2 + 96);

    return MEMORY[0x2822009F8](sub_265D2F0BC, v4, 0);
  }

  return result;
}

uint64_t sub_265D2F0BC()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[16];
    v7 = v0[12];
    (*(v3 + 32))(v6, v1, v2);
    v8 = swift_task_alloc();
    v0[21] = v8;
    *(v8 + 16) = v7;
    *(v8 + 24) = v6;
    v9 = swift_task_alloc();
    v0[22] = v9;
    v10 = type metadata accessor for DistributedSessionPublisher(0);
    v11 = sub_265D40868(&qword_28003EA20, type metadata accessor for DistributedSessionPublisher, &unk_265D5E058);
    *v9 = v0;
    v9[1] = sub_265D2F288;
    v12 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282161508](v11, &unk_265D5E2C8, v8, v10, v12, v11);
  }
}

void sub_265D2F288()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 96);

    MEMORY[0x2822009F8](sub_265D2F3C8, v3, 0);
  }
}

uint64_t sub_265D2F3C8()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = v0[19];
  v2 = v0[12];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v3[1] = sub_265D2EFAC;
  v4 = v0[17];

  return MEMORY[0x282200310](v4, v2, v1);
}

uint64_t sub_265D2F4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v7 = sub_265D581B0();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B8, &unk_265D5D130);
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D2F5B4, a4, 0);
}

uint64_t sub_265D2F5B4()
{
  if (sub_265CA786C(0, *(v0[12] + 208)))
  {
    v1 = v0[13];
    v2 = v1[3];
    v3 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v2);
    v4 = swift_task_alloc();
    v0[18] = v4;
    *v4 = v0;
    v4[1] = sub_265D2F6C8;

    return MEMORY[0x2821AF508](v0 + 7, v2, v3);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_265D2F6C8()
{
  v1 = *(*v0 + 96);

  return MEMORY[0x2822009F8](sub_265D2F7D8, v1, 0);
}

uint64_t sub_265D2F7D8()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1Tm(v0 + 2);
  sub_265D5A010();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v5 = sub_265D40868(&qword_28003EA18, type metadata accessor for DistributedSessionPublisher, &unk_265D5E180);
  v0[19] = v5;
  v6 = v0[12];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v7 = swift_task_alloc();
  v0[20] = v7;
  *v7 = v0;
  v7[1] = sub_265D2F9DC;
  v8 = v0[17];

  return MEMORY[0x282200310](v8, v6, v5);
}

uint64_t sub_265D2F9DC()
{
  v2 = *v1;

  if (!v0)
  {
    v4 = *(v2 + 96);

    return MEMORY[0x2822009F8](sub_265D2FAEC, v4, 0);
  }

  return result;
}

uint64_t sub_265D2FAEC()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[16];
    v7 = v0[12];
    (*(v3 + 32))(v6, v1, v2);
    v8 = swift_task_alloc();
    v0[21] = v8;
    *(v8 + 16) = v7;
    *(v8 + 24) = v6;
    v9 = swift_task_alloc();
    v0[22] = v9;
    v10 = type metadata accessor for DistributedSessionPublisher(0);
    v11 = sub_265D40868(&qword_28003EA20, type metadata accessor for DistributedSessionPublisher, &unk_265D5E058);
    *v9 = v0;
    v9[1] = sub_265D2FCB8;
    v12 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282161508](v11, &unk_265D5E2B8, v8, v10, v12, v11);
  }
}

void sub_265D2FCB8()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 96);

    MEMORY[0x2822009F8](sub_265D2FDF8, v3, 0);
  }
}

uint64_t sub_265D2FDF8()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = v0[19];
  v2 = v0[12];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v3[1] = sub_265D2F9DC;
  v4 = v0[17];

  return MEMORY[0x282200310](v4, v2, v1);
}

uint64_t sub_265D2FEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v7 = sub_265D58210();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E598, &unk_265D5D110);
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D2FFE4, a4, 0);
}

uint64_t sub_265D2FFE4()
{
  if (sub_265CA786C(3, *(v0[12] + 208)))
  {
    v1 = v0[13];
    v2 = v1[3];
    v3 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v2);
    v4 = swift_task_alloc();
    v0[18] = v4;
    *v4 = v0;
    v4[1] = sub_265D300F8;

    return MEMORY[0x2821AF510](v0 + 7, v2, v3);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_265D300F8()
{
  v1 = *(*v0 + 96);

  return MEMORY[0x2822009F8](sub_265D30208, v1, 0);
}

uint64_t sub_265D30208()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1Tm(v0 + 2);
  sub_265D5A010();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v5 = sub_265D40868(&qword_28003EA18, type metadata accessor for DistributedSessionPublisher, &unk_265D5E180);
  v0[19] = v5;
  v6 = v0[12];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v7 = swift_task_alloc();
  v0[20] = v7;
  *v7 = v0;
  v7[1] = sub_265D3040C;
  v8 = v0[17];

  return MEMORY[0x282200310](v8, v6, v5);
}

uint64_t sub_265D3040C()
{
  v2 = *v1;

  if (!v0)
  {
    v4 = *(v2 + 96);

    return MEMORY[0x2822009F8](sub_265D3051C, v4, 0);
  }

  return result;
}

uint64_t sub_265D3051C()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[16];
    v7 = v0[12];
    (*(v3 + 32))(v6, v1, v2);
    v8 = swift_task_alloc();
    v0[21] = v8;
    *(v8 + 16) = v7;
    *(v8 + 24) = v6;
    v9 = swift_task_alloc();
    v0[22] = v9;
    v10 = type metadata accessor for DistributedSessionPublisher(0);
    v11 = sub_265D40868(&qword_28003EA20, type metadata accessor for DistributedSessionPublisher, &unk_265D5E058);
    *v9 = v0;
    v9[1] = sub_265D306E8;
    v12 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282161508](v11, &unk_265D5E2A8, v8, v10, v12, v11);
  }
}

void sub_265D306E8()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 96);

    MEMORY[0x2822009F8](sub_265D30828, v3, 0);
  }
}

uint64_t sub_265D30828()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = v0[19];
  v2 = v0[12];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v3[1] = sub_265D3040C;
  v4 = v0[17];

  return MEMORY[0x282200310](v4, v2, v1);
}

uint64_t sub_265D30918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v7 = sub_265D591A0();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E538, &qword_265D5BFC0);
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D30A14, a5, 0);
}

uint64_t sub_265D30A14()
{
  v1 = *(v0 + 96);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  *(v0 + 144) = v4;
  *v4 = v0;
  v4[1] = sub_265D30AD0;

  return MEMORY[0x2821AF4E8](v0 + 56, v2, v3);
}

uint64_t sub_265D30AD0()
{
  v1 = *(*v0 + 104);

  return MEMORY[0x2822009F8](sub_265D30BE0, v1, 0);
}

uint64_t sub_265D30BE0()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1Tm(v0 + 2);
  sub_265D5A010();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v5 = sub_265D40868(&qword_28003EA18, type metadata accessor for DistributedSessionPublisher, &unk_265D5E180);
  v0[19] = v5;
  v6 = v0[13];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v7 = swift_task_alloc();
  v0[20] = v7;
  *v7 = v0;
  v7[1] = sub_265D30DE4;
  v8 = v0[17];

  return MEMORY[0x282200310](v8, v6, v5);
}

uint64_t sub_265D30DE4()
{
  v2 = *v1;

  if (!v0)
  {
    v4 = *(v2 + 104);

    return MEMORY[0x2822009F8](sub_265D30EF4, v4, 0);
  }

  return result;
}

uint64_t sub_265D30EF4()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[16];
    v7 = v0[13];
    (*(v3 + 32))(v6, v1, v2);
    v8 = swift_task_alloc();
    v0[21] = v8;
    *(v8 + 16) = v7;
    *(v8 + 24) = v6;
    v9 = swift_task_alloc();
    v0[22] = v9;
    v10 = type metadata accessor for DistributedSessionPublisher(0);
    v11 = sub_265D40868(&qword_28003EA20, type metadata accessor for DistributedSessionPublisher, &unk_265D5E058);
    *v9 = v0;
    v9[1] = sub_265D310C4;
    v12 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282161508](v11, &unk_265D5E290, v8, v10, v12, v11);
  }
}

void sub_265D310C4()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 104);

    MEMORY[0x2822009F8](sub_265D31204, v3, 0);
  }
}

uint64_t sub_265D31204()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = v0[19];
  v2 = v0[13];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v3[1] = sub_265D30DE4;
  v4 = v0[17];

  return MEMORY[0x282200310](v4, v2, v1);
}

uint64_t sub_265D312F4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_265D58020();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5E0, &qword_265D5C080);
  v2[7] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5F0, &qword_265D5C0C0);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D31454, 0, 0);
}

uint64_t sub_265D31454()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5F8, &qword_265D5C0C8);
  sub_265D59FD0();
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_265D3151C;
  v2 = v0[7];
  v3 = v0[8];

  return MEMORY[0x2822003E8](v2, 0, 0, v3);
}

uint64_t sub_265D3151C()
{

  return MEMORY[0x2822009F8](sub_265D31618, 0, 0);
}

uint64_t sub_265D31618()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[3];
    (*(v3 + 32))(v0[6], v1, v2);

    return MEMORY[0x2822009F8](sub_265D3173C, v6, 0);
  }
}

uint64_t sub_265D3173C()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = swift_task_alloc();
  v0[12] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[13] = v4;
  v5 = type metadata accessor for DistributedSessionPublisher(0);
  v6 = sub_265D40868(&qword_28003EA20, type metadata accessor for DistributedSessionPublisher, &unk_265D5E058);
  *v4 = v0;
  v4[1] = sub_265D31864;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282161508](v6, &unk_265D5E278, v3, v5, v7, v6);
}

void sub_265D31864()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 24);

    MEMORY[0x2822009F8](sub_265D319A4, v3, 0);
  }
}

uint64_t sub_265D319C0()
{
  (*(v0[5] + 8))(v0[6], v0[4]);
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_265D3151C;
  v2 = v0[7];
  v3 = v0[8];

  return MEMORY[0x2822003E8](v2, 0, 0, v3);
}

uint64_t sub_265D31A7C(void *a1, char a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E530, &qword_265D5BF68);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  v8 = sub_265D59FA0();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = v9;
  *(v10 + 40) = a1;
  *(v10 + 48) = a2 & 1;
  sub_265D41EDC(a1, a2 & 1);
  sub_265D4D17C(0, 0, v7, &unk_265D5E218, v10);
}

uint64_t sub_265D31BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 112) = a6;
  *(v6 + 48) = a4;
  *(v6 + 56) = a5;
  *(v6 + 40) = a1;
  v7 = sub_265D59DE0();
  *(v6 + 64) = v7;
  *(v6 + 72) = *(v7 - 8);
  *(v6 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D31C8C, 0, 0);
}

uint64_t sub_265D31C8C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_265D31D58, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_265D31D58(uint64_t a1)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  v6 = *(v1 + 112);
  v7 = *(v1 + 56);
  sub_265D595F0();
  sub_265D59DC0();
  (*(v5 + 8))(v2, v4);
  v8 = swift_task_alloc();
  *(v1 + 96) = v8;
  *(v8 + 16) = v3;
  *(v8 + 24) = v7;
  *(v8 + 32) = v6 & 1;
  v9 = swift_task_alloc();
  *(v1 + 104) = v9;
  v10 = type metadata accessor for DistributedSessionPublisher(0);
  v11 = sub_265D40868(&qword_28003EA20, type metadata accessor for DistributedSessionPublisher, &unk_265D5E058);
  *v9 = v1;
  v9[1] = sub_265D31EF0;
  v12 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282161508](v11, &unk_265D5E228, v8, v10, v12, v11);
}

void sub_265D31EF0()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 88);

    MEMORY[0x2822009F8](sub_265D3202C, v3, 0);
  }
}

uint64_t sub_265D3202C()
{

  return MEMORY[0x2822009F8](sub_265D32094, 0, 0);
}

uint64_t sub_265D32094()
{
  **(v0 + 40) = *(v0 + 88) == 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_265D32104(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF10, &qword_265D5B100);
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = sub_265D58AC0();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v6 = sub_265D59DE0();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D3228C, v2, 0);
}

uint64_t sub_265D3228C(uint64_t a1)
{
  v34 = v1;
  v3 = v1[12];
  v2 = v1[13];
  v4 = v1[11];
  v5 = v1[5];
  sub_265D595F0();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_265D59DD0();
  v7 = sub_265D5A080();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v1[15];
  v9 = v1[16];
  v11 = v1[13];
  v12 = v1[14];
  v14 = v1[11];
  v13 = v1[12];
  if (v8)
  {
    v32 = v1[14];
    v15 = swift_slowAlloc();
    v30 = v7;
    v16 = swift_slowAlloc();
    v33 = v16;
    *v15 = 136315138;
    v17 = sub_265D589D0();
    v31 = v9;
    v19 = v18;
    (*(v13 + 8))(v11, v14);
    v20 = sub_265CF4FFC(v17, v19, &v33);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_265C01000, v6, v30, "DistributedSessionPublisher - Ending Session: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x266770CF0](v16, -1, -1);
    MEMORY[0x266770CF0](v15, -1, -1);

    (*(v10 + 8))(v31, v32);
  }

  else
  {

    (*(v13 + 8))(v11, v14);
    (*(v10 + 8))(v9, v12);
  }

  v22 = v1[9];
  v21 = v1[10];
  v24 = v1[7];
  v23 = v1[8];
  (*(v22 + 104))(v21, *MEMORY[0x277D4F258], v23);
  v25 = OBJC_IVAR____TtC22SeymourSessionServices27DistributedSessionPublisher_state;
  swift_beginAccess();
  (*(v22 + 40))(v24 + v25, v21, v23);
  swift_endAccess();
  __swift_project_boxed_opaque_existential_1((v24 + 112), *(v24 + 136));
  v26 = sub_265CD9E44();
  sub_265D590C0();

  v27 = swift_task_alloc();
  v1[17] = v27;
  *v27 = v1;
  v27[1] = sub_265CCD1EC;
  v28 = v1[6];

  return sub_265D333D0(v28);
}

uint64_t sub_265D32558(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = sub_265D59DE0();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D32628, v2, 0);
}

uint64_t sub_265D32628()
{
  v33 = v0;
  v1 = sub_265D58BA0();
  if ((v1 & 0x100000000) == 0)
  {
    sub_265D595F0();
    v2 = sub_265D59DD0();
    v3 = sub_265D5A070();
    v4 = os_log_type_enabled(v2, v3);
    v6 = v0[16];
    v5 = v0[17];
    v7 = v0[15];
    if (v4)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_265C01000, v2, v3, "Unknown Playback State.", v8, 2u);
      MEMORY[0x266770CF0](v8, -1, -1);
    }

    (*(v6 + 8))(v5, v7);
    goto LABEL_5;
  }

  v11 = v1;
  sub_265D595F0();
  v12 = sub_265D59DD0();
  v13 = sub_265D5A080();
  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[18];
  v17 = v0[15];
  v16 = v0[16];
  if (v14)
  {
    v31 = v0[18];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v32 = v19;
    *v18 = 136315138;
    v20 = sub_265D58B90();
    v22 = sub_265CF4FFC(v20, v21, &v32);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_265C01000, v12, v13, "DistributedSessionPublisher - Updating workout state to: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x266770CF0](v19, -1, -1);
    MEMORY[0x266770CF0](v18, -1, -1);

    (*(v16 + 8))(v31, v17);
  }

  else
  {

    (*(v16 + 8))(v15, v17);
  }

  if (v11 - 1 < 2)
  {
    sub_265CDA360((v0 + 7));
    v23 = v0[10];
    if (v23)
    {
      v24 = v0[11];
      __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
      v25 = swift_task_alloc();
      v0[19] = v25;
      *v25 = v0;
      v25[1] = sub_265CCC258;

      return MEMORY[0x2821AF518](v23, v24);
    }

    sub_265CA4AE8((v0 + 7), &qword_28003E528, &qword_265D5BF60);
LABEL_5:

    v9 = v0[1];

    return v9();
  }

  if (v11)
  {
    v29 = swift_task_alloc();
    v0[23] = v29;
    *v29 = v0;
    v29[1] = sub_265CCC598;
    v30 = v0[13];

    return sub_265D333D0(v30);
  }

  else
  {
    sub_265CDA360((v0 + 2));
    v26 = v0[5];
    if (!v26)
    {
      sub_265CA4AE8((v0 + 2), &qword_28003E528, &qword_265D5BF60);
      goto LABEL_5;
    }

    v27 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v28 = swift_task_alloc();
    v0[21] = v28;
    *v28 = v0;
    v28[1] = sub_265CCC3F8;

    return MEMORY[0x2821AF520](v26, v27);
  }
}

uint64_t sub_265D32A78(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  v3[23] = type metadata accessor for DistributedSessionPublisher.State(0);
  v3[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5E0, &qword_265D5C080);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF10, &qword_265D5B100);
  v3[30] = v4;
  v3[31] = *(v4 - 8);
  v3[32] = swift_task_alloc();
  v5 = sub_265D58020();
  v3[33] = v5;
  v3[34] = *(v5 - 8);
  v3[35] = swift_task_alloc();
  v6 = sub_265D59DE0();
  v3[36] = v6;
  v3[37] = *(v6 - 8);
  v3[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D32C98, v2, 0);
}

uint64_t sub_265D32C98(uint64_t a1)
{
  v83 = v1;
  v3 = *(v1 + 272);
  v2 = *(v1 + 280);
  v4 = *(v1 + 264);
  v5 = *(v1 + 160);
  sub_265D595F0();
  v6 = *(v3 + 16);
  v6(v2, v5, v4);
  v7 = sub_265D59DD0();
  v80 = sub_265D5A080();
  v8 = os_log_type_enabled(v7, v80);
  v10 = *(v1 + 296);
  v9 = *(v1 + 304);
  v11 = *(v1 + 280);
  v12 = *(v1 + 288);
  v14 = *(v1 + 264);
  v13 = *(v1 + 272);
  if (v8)
  {
    v77 = v6;
    v15 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v82 = v74;
    *v15 = 136315138;
    sub_265D40868(&qword_28003E600, MEMORY[0x277D50400], MEMORY[0x277D50408]);
    v71 = v12;
    v16 = sub_265D5A3B0();
    v69 = v9;
    v18 = v17;
    (*(v13 + 8))(v11, v14);
    v19 = sub_265CF4FFC(v16, v18, &v82);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_265C01000, v7, v80, "DistributedSessionPublisher - Updating activityRings to: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v74);
    MEMORY[0x266770CF0](v74, -1, -1);
    v20 = v15;
    v6 = v77;
    MEMORY[0x266770CF0](v20, -1, -1);

    (*(v10 + 8))(v69, v71);
  }

  else
  {

    (*(v13 + 8))(v11, v14);
    (*(v10 + 8))(v9, v12);
  }

  v21 = *(v1 + 264);
  v22 = *(v1 + 272);
  v23 = *(v1 + 232);
  v24 = *(v1 + 192);
  v25 = *(v1 + 160);
  v26 = *(v1 + 168);
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0;
  v6(v23, v25, v21);
  v81 = *(v22 + 56);
  v81(v23, 0, 1, v21);
  sub_265CD9D78(v26, v24);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = *(v1 + 272);
    v75 = *(v1 + 264);
    v28 = *(v1 + 256);
    v72 = *(v1 + 232);
    v30 = *(v1 + 208);
    v29 = *(v1 + 216);
    v31 = *(v1 + 192);
    sub_265CA4AE8(v1 + 16, &qword_28003E528, &qword_265D5BF60);
    v32 = *(v31 + 2);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E618, "fw");
    v78 = *(v31 + *(v33 + 96));
    v70 = *v31;
    sub_265D42374(v31 + *(v33 + 80), v29, &qword_28003E5E0, &qword_265D5C080);
    v34 = *(v33 + 80);
    *v28 = v70;
    *(v28 + 16) = v32;
    sub_265D42374(v72, v30, &qword_28003E5E0, &qword_265D5C080);
    v35 = *(v27 + 48);
    if (v35(v30, 1, v75) == 1)
    {
      v36 = *(v1 + 264);
      v37 = *(v1 + 208);
      sub_265D42374(*(v1 + 216), v28 + v34, &qword_28003E5E0, &qword_265D5C080);
      if (v35(v37, 1, v36) != 1)
      {
        sub_265CA4AE8(*(v1 + 208), &qword_28003E5E0, &qword_265D5C080);
      }
    }

    else
    {
      v47 = *(v1 + 264);
      v48 = *(v1 + 272);
      v49 = *(v1 + 208);
      sub_265CA4AE8(*(v1 + 216), &qword_28003E5E0, &qword_265D5C080);
      (*(v48 + 32))(v28 + v34, v49, v47);
      v81(v28 + v34, 0, 1, v47);
    }

    *(*(v1 + 256) + *(v33 + 96)) = v78;
  }

  else
  {
    v38 = *(v1 + 256);
    v39 = *(v1 + 224);
    v40 = *(v1 + 192);
    v41 = *v40;
    v76 = *(v40 + 4);
    v79 = *(v40 + 3);
    v73 = *(v40 + 5);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E620, &unk_265D5E1B0);
    v43 = *(v42 + 160);
    v44 = *(v40 + *(v42 + 176));
    sub_265C033C4((v40 + 1), v1 + 56);
    sub_265D42374(v40 + v43, v39, &qword_28003E5E0, &qword_265D5C080);
    *v38 = v41;
    v45 = (v38 + 1);
    *(v1 + 128) = *(v1 + 48);
    v46 = *(v1 + 32);
    *(v1 + 96) = *(v1 + 16);
    *(v1 + 112) = v46;
    if (*(v1 + 120))
    {
      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 56));
      sub_265C033C4((v1 + 96), v45);
    }

    else
    {
      sub_265C033C4((v1 + 56), v45);
      if (*(v1 + 120))
      {
        sub_265CA4AE8(v1 + 96, &qword_28003E528, &qword_265D5BF60);
      }
    }

    v50 = *(v1 + 264);
    v51 = *(v1 + 272);
    v52 = *(v1 + 256);
    v53 = *(v1 + 232);
    v54 = *(v1 + 200);
    v55 = *(v42 + 160);
    *(v52 + 3) = v79;
    *(v52 + 4) = v76;
    *(v52 + 5) = v73;
    sub_265D42374(v53, v54, &qword_28003E5E0, &qword_265D5C080);
    v56 = *(v51 + 48);
    if (v56(v54, 1, v50) == 1)
    {
      v57 = *(v1 + 264);
      v58 = *(v1 + 200);
      sub_265D42374(*(v1 + 224), &v52[v55], &qword_28003E5E0, &qword_265D5C080);
      if (v56(v58, 1, v57) != 1)
      {
        sub_265CA4AE8(*(v1 + 200), &qword_28003E5E0, &qword_265D5C080);
      }
    }

    else
    {
      v59 = *(v1 + 264);
      v60 = *(v1 + 272);
      v61 = *(v1 + 200);
      sub_265CA4AE8(*(v1 + 224), &qword_28003E5E0, &qword_265D5C080);
      (*(v60 + 32))(&v52[v55], v61, v59);
      v81(&v52[v55], 0, 1, v59);
    }

    *(*(v1 + 256) + *(v42 + 176)) = v44;
  }

  swift_storeEnumTagMultiPayload();
  v62 = *(v1 + 248);
  v63 = *(v1 + 256);
  v64 = *(v1 + 240);
  v65 = *(v1 + 176);
  (*(v62 + 104))(v63, *MEMORY[0x277D4F250], v64);
  v66 = OBJC_IVAR____TtC22SeymourSessionServices27DistributedSessionPublisher_state;
  swift_beginAccess();
  (*(v62 + 40))(v65 + v66, v63, v64);
  swift_endAccess();

  v67 = *(v1 + 8);

  return v67();
}

uint64_t sub_265D333D0(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  type metadata accessor for DistributedSessionPublisher.State(0);
  v2[13] = swift_task_alloc();
  v3 = sub_265D59DE0();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D334C8, v1, 0);
}

uint64_t sub_265D334C8(uint64_t a1)
{
  v26 = v1;
  v2 = v1[13];
  v3 = v1[11];
  sub_265D595F0();
  sub_265CD9D78(v3, v2);
  v4 = sub_265D59DD0();
  v5 = sub_265D5A080();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[17];
  v9 = v1[14];
  v8 = v1[15];
  v10 = v1[13];
  if (v6)
  {
    v24 = v1[14];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 136315138;
    sub_265CD9C34();
    v13 = sub_265D58CF0();
    v23 = v7;
    v15 = v14;

    sub_265CDA484(v10);
    v16 = sub_265CF4FFC(v13, v15, &v25);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_265C01000, v4, v5, "DistributedSessionPublisher - Attempting to deactivate workout for session: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x266770CF0](v12, -1, -1);
    MEMORY[0x266770CF0](v11, -1, -1);

    v17 = *(v8 + 8);
    v17(v23, v24);
  }

  else
  {

    sub_265CDA484(v10);
    v17 = *(v8 + 8);
    v17(v7, v9);
  }

  v1[18] = v17;
  sub_265CDA360((v1 + 2));
  v18 = v1[5];
  if (v18)
  {
    v19 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
    v20 = swift_task_alloc();
    v1[19] = v20;
    *v20 = v1;
    v20[1] = sub_265D33770;

    return MEMORY[0x2821AF4F0](v18, v19);
  }

  else
  {
    sub_265CA4AE8((v1 + 2), &qword_28003E528, &qword_265D5BF60);

    v21 = v1[1];

    return v21();
  }
}

uint64_t sub_265D33770()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 96);
  if (v0)
  {
    v4 = sub_265D3391C;
  }

  else
  {
    v4 = sub_265D3389C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_265D3389C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_265D3391C()
{
  v19 = v0;
  v1 = v0[20];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  sub_265D595F0();
  v2 = v1;
  v3 = sub_265D59DD0();
  v4 = sub_265D5A070();

  if (os_log_type_enabled(v3, v4))
  {
    v17 = v0[18];
    v5 = v0[16];
    v6 = v0[14];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = MEMORY[0x2667704D0](v0[8], v0[9]);
    v11 = sub_265CF4FFC(v9, v10, &v18);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_265C01000, v3, v4, "DistributedSessionPublisher - Couldn't deactivate workout session: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x266770CF0](v8, -1, -1);
    MEMORY[0x266770CF0](v7, -1, -1);

    v17(v5, v6);
  }

  else
  {
    v12 = v0[18];
    v13 = v0[16];
    v14 = v0[14];

    v12(v13, v14);
  }

  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t sub_265D33B1C()
{
  v1 = v0;
  v126 = sub_265D59DE0();
  v125 = *(v126 - 8);
  v2 = MEMORY[0x28223BE20](v126);
  MEMORY[0x28223BE20](v2);
  v4 = v105 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E340, &unk_265D5D0C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v105 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E540, &qword_265D5BFE0);
  MEMORY[0x28223BE20](v8 - 8);
  v123 = v105 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680);
  MEMORY[0x28223BE20](v10 - 8);
  v122 = v105 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E548, &qword_265D5BFE8);
  MEMORY[0x28223BE20](v12 - 8);
  v121 = v105 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E550, &unk_265D5BFF0);
  MEMORY[0x28223BE20](v14 - 8);
  v120 = v105 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E840, &unk_265D5D0D0);
  MEMORY[0x28223BE20](v16 - 8);
  v119 = v105 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E558, &unk_265D5C000);
  MEMORY[0x28223BE20](v18 - 8);
  v118 = v105 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E560, &unk_265D5CC10);
  MEMORY[0x28223BE20](v20 - 8);
  v117 = v105 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E568, &unk_265D5C010);
  MEMORY[0x28223BE20](v22 - 8);
  v116 = v105 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E570, &unk_265D5D0E0);
  MEMORY[0x28223BE20](v24 - 8);
  v115 = v105 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E578, &unk_265D5C020);
  MEMORY[0x28223BE20](v26 - 8);
  v142 = v105 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E580, &unk_265D5D0F0);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = v105 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E200, &unk_265D5B580);
  MEMORY[0x28223BE20](v31 - 8);
  v141 = v105 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E588, &unk_265D5D100);
  MEMORY[0x28223BE20](v33 - 8);
  v140 = v105 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E590, &unk_265D5C030);
  MEMORY[0x28223BE20](v35 - 8);
  v139 = v105 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E598, &unk_265D5D110);
  MEMORY[0x28223BE20](v37 - 8);
  v138 = v105 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A0, &unk_265D5C040);
  MEMORY[0x28223BE20](v39 - 8);
  v137 = v105 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A8, &unk_265D5D120);
  MEMORY[0x28223BE20](v41 - 8);
  v136 = v105 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B0, &unk_265D5C050);
  MEMORY[0x28223BE20](v43 - 8);
  v135 = v105 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B8, &unk_265D5D130);
  MEMORY[0x28223BE20](v45 - 8);
  v134 = v105 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C0, &unk_265D5C060);
  MEMORY[0x28223BE20](v47 - 8);
  v133 = v105 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E960, &unk_265D5D140);
  MEMORY[0x28223BE20](v49 - 8);
  v132 = v105 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E348, &qword_265D5B710);
  MEMORY[0x28223BE20](v51 - 8);
  v131 = v105 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C8, &unk_265D5D150);
  MEMORY[0x28223BE20](v53 - 8);
  v130 = v105 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D0, &unk_265D5C070);
  MEMORY[0x28223BE20](v55 - 8);
  v129 = v105 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D8, &qword_265D5D160);
  MEMORY[0x28223BE20](v57 - 8);
  v128 = v105 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5E0, &qword_265D5C080);
  MEMORY[0x28223BE20](v59 - 8);
  v127 = v105 - v60;
  v61 = sub_265D58130();
  MEMORY[0x28223BE20](v61 - 8);
  v111 = v105 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_265D59090();
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v110 = v105 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v0 + 112), *(v0 + 136));
  v64 = sub_265D59530();
  v124 = v7;
  v114 = v4;
  v65 = v64;
  v66 = [objc_opt_self() gramUnitWithMetricPrefix_];
  [v65 doubleValueForUnit_];
  v68 = v67;

  v105[1] = v30;
  v108 = *(v1 + 176);
  v109 = *(v1 + 184);
  ObjectType = swift_getObjectType();
  v106 = sub_265D5A4C0();
  sub_265D589C0();
  v105[3] = sub_265D58CF0();
  v105[2] = v69;

  v70 = sub_265D58020();
  (*(*(v70 - 8) + 56))(v127, 1, 1, v70);
  v71 = sub_265D58410();
  (*(*(v71 - 8) + 56))(v128, 1, 1, v71);
  v72 = sub_265D58590();
  (*(*(v72 - 8) + 56))(v129, 1, 1, v72);
  v73 = sub_265D58050();
  (*(*(v73 - 8) + 56))(v130, 1, 1, v73);
  v74 = sub_265D58200();
  (*(*(v74 - 8) + 56))(v131, 1, 1, v74);
  v75 = sub_265D58BC0();
  (*(*(v75 - 8) + 56))(v132, 1, 1, v75);
  v76 = sub_265D583E0();
  (*(*(v76 - 8) + 56))(v133, 1, 1, v76);
  v77 = sub_265D581B0();
  (*(*(v77 - 8) + 56))(v134, 1, 1, v77);
  v78 = sub_265D57F50();
  (*(*(v78 - 8) + 56))(v135, 1, 1, v78);
  v79 = sub_265D582A0();
  (*(*(v79 - 8) + 56))(v136, 1, 1, v79);
  v80 = sub_265D58680();
  (*(*(v80 - 8) + 56))(v137, 1, 1, v80);
  v81 = sub_265D58210();
  (*(*(v81 - 8) + 56))(v138, 1, 1, v81);
  v82 = sub_265D57E80();
  (*(*(v82 - 8) + 56))(v139, 1, 1, v82);
  v83 = sub_265D58430();
  (*(*(v83 - 8) + 56))(v140, 1, 1, v83);
  v84 = sub_265D58300();
  (*(*(v84 - 8) + 56))(v141, 1, 1, v84);
  v85 = sub_265D586F0();
  (*(*(v85 - 8) + 56))(v30, 1, 1, v85);
  v86 = sub_265D57E90();
  (*(*(v86 - 8) + 56))(v142, 1, 1, v86);
  v87 = sub_265D581C0();
  (*(*(v87 - 8) + 56))(v115, 1, 1, v87);
  v88 = sub_265D58BB0();
  (*(*(v88 - 8) + 56))(v116, 1, 1, v88);
  v89 = sub_265D585C0();
  (*(*(v89 - 8) + 56))(v117, 1, 1, v89);
  v90 = sub_265D57EA0();
  (*(*(v90 - 8) + 56))(v118, 1, 1, v90);
  v91 = sub_265D57ED0();
  (*(*(v91 - 8) + 56))(v119, 1, 1, v91);
  v92 = sub_265D58240();
  (*(*(v92 - 8) + 56))(v120, 1, 1, v92);
  sub_265D5A030();
  v93 = v121;
  sub_265D583F0();
  v94 = sub_265D58400();
  (*(*(v94 - 8) + 56))(v93, 0, 1, v94);
  v95 = sub_265D58600();
  (*(*(v95 - 8) + 56))(v122, 1, 1, v95);
  v96 = sub_265D58630();
  (*(*(v96 - 8) + 56))(v123, 1, 1, v96);
  v97 = sub_265D58B10();
  (*(*(v97 - 8) + 56))(v124, 1, 1, v97);
  sub_265D5A030();
  sub_265D580B0();
  v98 = v110;
  sub_265D59080();
  v99 = v113;
  sub_265D58ED0();
  (*(v112 + 8))(v98, v99);
  v100 = v114;
  sub_265D595F0();
  v101 = sub_265D59DD0();
  v102 = sub_265D5A080();
  if (os_log_type_enabled(v101, v102))
  {
    v103 = swift_slowAlloc();
    *v103 = 134217984;
    *(v103 + 4) = v68;
    _os_log_impl(&dword_265C01000, v101, v102, "Updating session with body mass: %f", v103, 0xCu);
    MEMORY[0x266770CF0](v103, -1, -1);
  }

  return (*(v125 + 8))(v100, v126);
}

uint64_t sub_265D350E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[23] = a2;
  v3[24] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E340, &unk_265D5D0C0);
  v3[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E540, &qword_265D5BFE0);
  v3[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680);
  v3[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E548, &qword_265D5BFE8);
  v3[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E550, &unk_265D5BFF0);
  v3[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E840, &unk_265D5D0D0);
  v3[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E558, &unk_265D5C000);
  v3[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E560, &unk_265D5CC10);
  v3[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E568, &unk_265D5C010);
  v3[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E570, &unk_265D5D0E0);
  v3[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E578, &unk_265D5C020);
  v3[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E580, &unk_265D5D0F0);
  v3[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E200, &unk_265D5B580);
  v3[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E588, &unk_265D5D100);
  v3[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E590, &unk_265D5C030);
  v3[39] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E598, &unk_265D5D110);
  v3[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A0, &unk_265D5C040);
  v3[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A8, &unk_265D5D120);
  v3[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B0, &unk_265D5C050);
  v3[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B8, &unk_265D5D130);
  v3[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C0, &unk_265D5C060);
  v3[45] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E960, &unk_265D5D140);
  v3[46] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E348, &qword_265D5B710);
  v3[47] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C8, &unk_265D5D150);
  v3[48] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D0, &unk_265D5C070);
  v3[49] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D8, &qword_265D5D160);
  v3[50] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5E0, &qword_265D5C080);
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();
  sub_265D58130();
  v3[57] = swift_task_alloc();
  v5 = sub_265D59090();
  v3[58] = v5;
  v3[59] = *(v5 - 8);
  v3[60] = swift_task_alloc();
  v6 = sub_265D58020();
  v3[61] = v6;
  v3[62] = *(v6 - 8);
  v3[63] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF10, &qword_265D5B100);
  v3[64] = v7;
  v3[65] = *(v7 - 8);
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v3[68] = type metadata accessor for DistributedSessionPublisher.State(0);
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();
  v8 = sub_265D59DE0();
  v3[71] = v8;
  v3[72] = *(v8 - 8);
  v3[73] = swift_task_alloc();
  v3[74] = swift_task_alloc();
  v3[75] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D35974, a2, 0);
}

uint64_t sub_265D35974(uint64_t a1)
{
  v157 = v1;
  v2 = *(v1 + 600);
  v3 = *(v1 + 576);
  v4 = *(v1 + 568);
  v5 = *(v1 + 536);
  v6 = *(v1 + 520);
  v7 = *(v1 + 512);
  v8 = *(v1 + 184);
  sub_265D595F0();
  sub_265D59DC0();
  v9 = *(v3 + 8);
  v9(v2, v4);
  v10 = OBJC_IVAR____TtC22SeymourSessionServices27DistributedSessionPublisher_state;
  swift_beginAccess();
  (*(v6 + 16))(v5, v8 + v10, v7);
  v11 = (*(v6 + 88))(v5, v7);
  if (v11 == *MEMORY[0x277D4F250])
  {
    v127 = v11;
    v128 = v10;
    v129 = v8;
    v12 = *(v1 + 560);
    v13 = *(v1 + 536);
    v14 = *(v1 + 504);
    v15 = *(v1 + 488);
    v16 = *(v1 + 496);
    v17 = *(v1 + 192);
    (*(*(v1 + 520) + 96))(v13, *(v1 + 512));
    sub_265D41F9C(v13, v12);
    sub_265D595F0();
    v151 = *(v16 + 16);
    v151(v14, v17, v15);
    v18 = sub_265D59DD0();
    v19 = sub_265D5A080();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v1 + 584);
    v22 = *(v1 + 568);
    v24 = *(v1 + 496);
    v23 = *(v1 + 504);
    v25 = *(v1 + 488);
    if (v20)
    {
      v147 = *(v1 + 568);
      v26 = swift_slowAlloc();
      v144 = swift_slowAlloc();
      v156 = v144;
      *v26 = 136315138;
      sub_265D40868(&qword_28003E600, MEMORY[0x277D50400], MEMORY[0x277D50408]);
      v140 = v21;
      v142 = v9;
      v27 = sub_265D5A3B0();
      v29 = v28;
      (*(v24 + 8))(v23, v25);
      v30 = sub_265CF4FFC(v27, v29, &v156);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_265C01000, v18, v19, "DistributedSessionPublisher - Updating Rings: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v144);
      MEMORY[0x266770CF0](v144, -1, -1);
      MEMORY[0x266770CF0](v26, -1, -1);

      v142(v140, v147);
    }

    else
    {

      (*(v24 + 8))(v23, v25);
      v9(v21, v22);
    }

    v126 = *(v1 + 552);
    v37 = *(v1 + 488);
    v38 = *(v1 + 496);
    v121 = *(v1 + 560);
    v122 = *(v1 + 480);
    v123 = *(v1 + 472);
    v124 = *(v1 + 464);
    v39 = *(v1 + 448);
    v125 = *(v1 + 440);
    v41 = *(v1 + 392);
    v40 = *(v1 + 400);
    v43 = *(v1 + 376);
    v42 = *(v1 + 384);
    v148 = *(v1 + 368);
    v143 = *(v1 + 352);
    v145 = *(v1 + 360);
    v139 = *(v1 + 336);
    v141 = *(v1 + 344);
    v137 = *(v1 + 320);
    v138 = *(v1 + 328);
    v135 = *(v1 + 304);
    v136 = *(v1 + 312);
    v133 = *(v1 + 288);
    v134 = *(v1 + 296);
    v132 = *(v1 + 280);
    v44 = *(v1 + 192);
    v131 = *(v1 + 272);
    v112 = *(v1 + 264);
    v113 = *(v1 + 256);
    v114 = *(v1 + 248);
    v115 = *(v1 + 240);
    v116 = *(v1 + 232);
    v117 = *(v1 + 224);
    v118 = *(v1 + 216);
    v119 = *(v1 + 208);
    v120 = *(v1 + 200);
    swift_getObjectType();
    sub_265D5A4C0();
    sub_265CD9C34();
    sub_265D58CF0();

    v151(v39, v44, v37);
    v130 = *(v38 + 56);
    v130(v39, 0, 1, v37);
    v45 = sub_265D58410();
    (*(*(v45 - 8) + 56))(v40, 1, 1, v45);
    v46 = sub_265D58590();
    (*(*(v46 - 8) + 56))(v41, 1, 1, v46);
    v47 = sub_265D58050();
    (*(*(v47 - 8) + 56))(v42, 1, 1, v47);
    v48 = sub_265D58200();
    (*(*(v48 - 8) + 56))(v43, 1, 1, v48);
    v49 = sub_265D58BC0();
    (*(*(v49 - 8) + 56))(v148, 1, 1, v49);
    v50 = sub_265D583E0();
    (*(*(v50 - 8) + 56))(v145, 1, 1, v50);
    v51 = sub_265D581B0();
    (*(*(v51 - 8) + 56))(v143, 1, 1, v51);
    v52 = sub_265D57F50();
    (*(*(v52 - 8) + 56))(v141, 1, 1, v52);
    v53 = sub_265D582A0();
    (*(*(v53 - 8) + 56))(v139, 1, 1, v53);
    v54 = sub_265D58680();
    (*(*(v54 - 8) + 56))(v138, 1, 1, v54);
    v55 = sub_265D58210();
    (*(*(v55 - 8) + 56))(v137, 1, 1, v55);
    v56 = sub_265D57E80();
    (*(*(v56 - 8) + 56))(v136, 1, 1, v56);
    v57 = sub_265D58430();
    (*(*(v57 - 8) + 56))(v135, 1, 1, v57);
    v58 = sub_265D58300();
    (*(*(v58 - 8) + 56))(v134, 1, 1, v58);
    v59 = sub_265D586F0();
    (*(*(v59 - 8) + 56))(v133, 1, 1, v59);
    v60 = sub_265D57E90();
    (*(*(v60 - 8) + 56))(v132, 1, 1, v60);
    v61 = sub_265D581C0();
    (*(*(v61 - 8) + 56))(v131, 1, 1, v61);
    v62 = sub_265D58BB0();
    (*(*(v62 - 8) + 56))(v112, 1, 1, v62);
    v63 = sub_265D585C0();
    (*(*(v63 - 8) + 56))(v113, 1, 1, v63);
    v64 = sub_265D57EA0();
    (*(*(v64 - 8) + 56))(v114, 1, 1, v64);
    v65 = sub_265D57ED0();
    (*(*(v65 - 8) + 56))(v115, 1, 1, v65);
    v66 = sub_265D58240();
    (*(*(v66 - 8) + 56))(v116, 1, 1, v66);
    v67 = sub_265D58400();
    (*(*(v67 - 8) + 56))(v117, 1, 1, v67);
    v68 = sub_265D58600();
    (*(*(v68 - 8) + 56))(v118, 1, 1, v68);
    v69 = sub_265D58630();
    (*(*(v69 - 8) + 56))(v119, 1, 1, v69);
    v70 = sub_265D58B10();
    (*(*(v70 - 8) + 56))(v120, 1, 1, v70);
    sub_265D5A030();
    sub_265D580B0();
    sub_265D59080();
    sub_265D58ED0();
    (*(v123 + 8))(v122, v124);
    *(v1 + 48) = 0;
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0u;
    v151(v125, v44, v37);
    v130(v125, 0, 1, v37);
    sub_265D41F9C(v121, v126);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v72 = *(v1 + 552);
    v73 = *(v1 + 528);
    if (EnumCaseMultiPayload == 1)
    {
      v74 = *(v1 + 496);
      v152 = *(v1 + 488);
      v149 = *(v1 + 440);
      v76 = *(v1 + 416);
      v75 = *(v1 + 424);
      sub_265CA4AE8(v1 + 16, &qword_28003E528, &qword_265D5BF60);
      v77 = *(v72 + 2);
      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E618, "fw");
      v154 = *(v72 + *(v78 + 96));
      v146 = *v72;
      sub_265D42374(v72 + *(v78 + 80), v75, &qword_28003E5E0, &qword_265D5C080);
      v79 = *(v78 + 80);
      *v73 = v146;
      *(v73 + 16) = v77;
      sub_265D42374(v149, v76, &qword_28003E5E0, &qword_265D5C080);
      v80 = *(v74 + 48);
      if (v80(v76, 1, v152) == 1)
      {
        v81 = *(v1 + 488);
        v82 = *(v1 + 416);
        sub_265D42374(*(v1 + 424), v73 + v79, &qword_28003E5E0, &qword_265D5C080);
        v83 = v80(v82, 1, v81);
        v84 = v129;
        if (v83 != 1)
        {
          sub_265CA4AE8(*(v1 + 416), &qword_28003E5E0, &qword_265D5C080);
        }
      }

      else
      {
        v92 = *(v1 + 488);
        v93 = *(v1 + 496);
        v94 = *(v1 + 416);
        sub_265CA4AE8(*(v1 + 424), &qword_28003E5E0, &qword_265D5C080);
        (*(v93 + 32))(v73 + v79, v94, v92);
        v130(v73 + v79, 0, 1, v92);
        v84 = v129;
      }

      *(*(v1 + 528) + *(v78 + 96)) = v154;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v85 = *(v1 + 432);
      v86 = *v72;
      v153 = v72[4];
      v155 = v72[3];
      v150 = v72[5];
      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E620, &unk_265D5E1B0);
      v88 = *(v87 + 160);
      v89 = *(v72 + *(v87 + 176));
      sub_265C033C4((v72 + 8), v1 + 56);
      sub_265D42374(v72 + v88, v85, &qword_28003E5E0, &qword_265D5C080);
      *v73 = v86;
      v90 = v73 + 8;
      *(v1 + 128) = *(v1 + 48);
      v91 = *(v1 + 32);
      *(v1 + 96) = *(v1 + 16);
      *(v1 + 112) = v91;
      if (*(v1 + 120))
      {
        __swift_destroy_boxed_opaque_existential_1Tm((v1 + 56));
        sub_265C033C4((v1 + 96), v90);
      }

      else
      {
        sub_265C033C4((v1 + 56), v90);
        if (*(v1 + 120))
        {
          sub_265CA4AE8(v1 + 96, &qword_28003E528, &qword_265D5BF60);
        }
      }

      v95 = *(v1 + 528);
      v96 = *(v1 + 488);
      v97 = *(v1 + 496);
      v98 = *(v1 + 440);
      v99 = *(v1 + 408);
      v100 = *(v87 + 160);
      *(v95 + 3) = v155;
      *(v95 + 4) = v153;
      *(v95 + 5) = v150;
      sub_265D42374(v98, v99, &qword_28003E5E0, &qword_265D5C080);
      v101 = *(v97 + 48);
      if (v101(v99, 1, v96) == 1)
      {
        v102 = *(v1 + 488);
        v103 = *(v1 + 408);
        sub_265D42374(*(v1 + 432), &v95[v100], &qword_28003E5E0, &qword_265D5C080);
        if (v101(v103, 1, v102) != 1)
        {
          sub_265CA4AE8(*(v1 + 408), &qword_28003E5E0, &qword_265D5C080);
        }
      }

      else
      {
        v104 = *(v1 + 488);
        v105 = *(v1 + 496);
        v106 = *(v1 + 408);
        sub_265CA4AE8(*(v1 + 432), &qword_28003E5E0, &qword_265D5C080);
        (*(v105 + 32))(&v95[v100], v106, v104);
        v130(&v95[v100], 0, 1, v104);
      }

      *(*(v1 + 528) + *(v87 + 176)) = v89;
      swift_storeEnumTagMultiPayload();
      v84 = v129;
    }

    v107 = *(v1 + 528);
    v108 = *(v1 + 520);
    v109 = *(v1 + 512);
    (*(v108 + 104))(v107, v127, v109);
    swift_beginAccess();
    (*(v108 + 40))(v84 + v128, v107, v109);
    swift_endAccess();
  }

  else
  {
    (*(*(v1 + 520) + 8))(*(v1 + 536), *(v1 + 512));
    sub_265D595F0();
    v31 = sub_265D59DD0();
    v32 = sub_265D5A070();
    v33 = os_log_type_enabled(v31, v32);
    v34 = *(v1 + 592);
    v35 = *(v1 + 568);
    if (v33)
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_265C01000, v31, v32, "DistributedSessionPublisher - No active session to update activity rings.", v36, 2u);
      MEMORY[0x266770CF0](v36, -1, -1);
    }

    v9(v34, v35);
  }

  v110 = *(v1 + 8);

  return v110();
}

uint64_t sub_265D36CDC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 1080) = a4;
  *(v4 + 360) = a2;
  *(v4 + 368) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E340, &unk_265D5D0C0);
  *(v4 + 376) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E540, &qword_265D5BFE0);
  *(v4 + 384) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680);
  *(v4 + 392) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E548, &qword_265D5BFE8);
  *(v4 + 400) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E550, &unk_265D5BFF0);
  *(v4 + 408) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E840, &unk_265D5D0D0);
  *(v4 + 416) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E558, &unk_265D5C000);
  *(v4 + 424) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E560, &unk_265D5CC10);
  *(v4 + 432) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E568, &unk_265D5C010);
  *(v4 + 440) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E570, &unk_265D5D0E0);
  *(v4 + 448) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E578, &unk_265D5C020);
  *(v4 + 456) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E580, &unk_265D5D0F0);
  *(v4 + 464) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E200, &unk_265D5B580);
  *(v4 + 472) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E588, &unk_265D5D100);
  *(v4 + 480) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E590, &unk_265D5C030);
  *(v4 + 488) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E598, &unk_265D5D110);
  *(v4 + 496) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A0, &unk_265D5C040);
  *(v4 + 504) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A8, &unk_265D5D120);
  *(v4 + 512) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B0, &unk_265D5C050);
  *(v4 + 520) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B8, &unk_265D5D130);
  *(v4 + 528) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C0, &unk_265D5C060);
  *(v4 + 536) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E960, &unk_265D5D140);
  *(v4 + 544) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E348, &qword_265D5B710);
  *(v4 + 552) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C8, &unk_265D5D150);
  *(v4 + 560) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D0, &unk_265D5C070);
  *(v4 + 568) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D8, &qword_265D5D160);
  *(v4 + 576) = swift_task_alloc();
  sub_265D58130();
  *(v4 + 584) = swift_task_alloc();
  v6 = sub_265D59090();
  *(v4 + 592) = v6;
  *(v4 + 600) = *(v6 - 8);
  *(v4 + 608) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA30, &qword_265D5E230);
  *(v4 + 616) = swift_task_alloc();
  *(v4 + 624) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA38, &qword_265D5E238);
  *(v4 + 632) = swift_task_alloc();
  v7 = sub_265D57F00();
  *(v4 + 640) = v7;
  *(v4 + 648) = *(v7 - 8);
  *(v4 + 656) = swift_task_alloc();
  *(v4 + 664) = swift_task_alloc();
  v8 = sub_265D58280();
  *(v4 + 672) = v8;
  *(v4 + 680) = *(v8 - 8);
  *(v4 + 688) = swift_task_alloc();
  *(v4 + 696) = swift_task_alloc();
  *(v4 + 704) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA40, &qword_265D5E240);
  *(v4 + 712) = swift_task_alloc();
  *(v4 + 720) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA48, &qword_265D5E248);
  *(v4 + 728) = swift_task_alloc();
  v9 = sub_265D57D10();
  *(v4 + 736) = v9;
  *(v4 + 744) = *(v9 - 8);
  *(v4 + 752) = swift_task_alloc();
  v10 = sub_265D57E30();
  *(v4 + 760) = v10;
  *(v4 + 768) = *(v10 - 8);
  *(v4 + 776) = swift_task_alloc();
  *(v4 + 784) = swift_task_alloc();
  *(v4 + 792) = swift_task_alloc();
  *(v4 + 800) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5E0, &qword_265D5C080);
  *(v4 + 808) = swift_task_alloc();
  *(v4 + 816) = swift_task_alloc();
  *(v4 + 824) = swift_task_alloc();
  *(v4 + 832) = swift_task_alloc();
  *(v4 + 840) = swift_task_alloc();
  *(v4 + 848) = swift_task_alloc();
  *(v4 + 856) = swift_task_alloc();
  *(v4 + 864) = swift_task_alloc();
  *(v4 + 872) = swift_task_alloc();
  *(v4 + 880) = swift_task_alloc();
  *(v4 + 888) = swift_task_alloc();
  *(v4 + 896) = swift_task_alloc();
  v11 = sub_265D58020();
  *(v4 + 904) = v11;
  *(v4 + 912) = *(v11 - 8);
  *(v4 + 920) = swift_task_alloc();
  *(v4 + 928) = swift_task_alloc();
  *(v4 + 936) = swift_task_alloc();
  v12 = sub_265D59DE0();
  *(v4 + 944) = v12;
  *(v4 + 952) = *(v12 - 8);
  *(v4 + 960) = swift_task_alloc();
  *(v4 + 968) = swift_task_alloc();
  *(v4 + 976) = swift_task_alloc();
  *(v4 + 984) = swift_task_alloc();
  *(v4 + 992) = swift_task_alloc();
  *(v4 + 1000) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF10, &qword_265D5B100);
  *(v4 + 1008) = v13;
  *(v4 + 1016) = *(v13 - 8);
  *(v4 + 1024) = swift_task_alloc();
  *(v4 + 1032) = swift_task_alloc();
  *(v4 + 1040) = swift_task_alloc();
  *(v4 + 1048) = type metadata accessor for DistributedSessionPublisher.State(0);
  *(v4 + 1056) = swift_task_alloc();
  *(v4 + 1064) = swift_task_alloc();
  *(v4 + 1072) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D378C0, a2, 0);
}

uint64_t sub_265D378C0()
{
  v381 = v0;
  v1 = *(v0 + 1040);
  v2 = *(v0 + 1016);
  v3 = *(v0 + 1008);
  v4 = *(v0 + 360);
  v5 = OBJC_IVAR____TtC22SeymourSessionServices27DistributedSessionPublisher_state;
  swift_beginAccess();
  (*(v2 + 16))(v1, &v4[v5], v3);
  v6 = (*(v2 + 88))(v1, v3);
  v357 = v0;
  if (v6 != *MEMORY[0x277D4F250])
  {
    (*(*(v0 + 1016) + 8))(*(v0 + 1040), *(v0 + 1008));
    sub_265D595F0();
    v21 = sub_265D59DD0();
    v22 = sub_265D5A070();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 1000);
    v25 = *(v0 + 952);
    v26 = *(v0 + 944);
    if (v23)
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_265C01000, v21, v22, "DistributedSessionPublisher - No active session to fake update activity rings.", v27, 2u);
      MEMORY[0x266770CF0](v27, -1, -1);
    }

    (*(v25 + 8))(v24, v26);
    goto LABEL_55;
  }

  v337 = v6;
  v7 = *(v0 + 1072);
  v8 = *(v0 + 1040);
  v9 = *(v0 + 912);
  v10 = *(v0 + 904);
  v11 = *(v0 + 896);
  (*(*(v0 + 1016) + 96))(v8, *(v0 + 1008));
  sub_265D41F9C(v8, v7);
  sub_265CDA0C4(v11);
  v12 = *(v9 + 48);
  if (v12(v11, 1, v10) == 1)
  {
    sub_265CA4AE8(*(v0 + 896), &qword_28003E5E0, &qword_265D5C080);
    sub_265D595F0();
    v13 = sub_265D59DD0();
    v14 = sub_265D5A070();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 1072);
    v17 = *(v0 + 992);
    v18 = *(v0 + 952);
    v19 = *(v0 + 944);
    if (v15)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_265C01000, v13, v14, "DistributedSessionPublisher - Skipping update because we don't have activity rings.", v20, 2u);
      MEMORY[0x266770CF0](v20, -1, -1);
    }

    (*(v18 + 8))(v17, v19);
    sub_265CDA484(v16);
    goto LABEL_55;
  }

  v330 = v12;
  v28 = *(v0 + 1080);
  v29 = *(v0 + 368);
  v321 = *(*(v0 + 912) + 32);
  v321(*(v0 + 936), *(v0 + 896), *(v0 + 904));
  sub_265D5A030();
  sub_265D57FF0();
  sub_265D57E00();
  if (v28)
  {
    v30 = *(v0 + 368);
    sub_265D595F0();
    v31 = v29;
    v32 = sub_265D59DD0();
    v33 = sub_265D5A070();
    sub_265D41E08(v30, 1);
    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v0 + 1072);
    v377 = *(v0 + 960);
    v36 = *(v0 + 952);
    v37 = *(v0 + 944);
    v38 = *(v0 + 936);
    v39 = *(v0 + 912);
    v40 = *(v0 + 904);
    if (v34)
    {
      v372 = *(v0 + 904);
      v41 = swift_slowAlloc();
      v371 = v38;
      v42 = swift_slowAlloc();
      v380[0] = v42;
      *v41 = 136315138;
      swift_getErrorValue();
      v43 = MEMORY[0x2667704D0](*(v0 + 288), *(v0 + 296));
      v45 = sub_265CF4FFC(v43, v44, v380);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_265C01000, v32, v33, "DistributedSessionPublisher - Failed fetching calories: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x266770CF0](v42, -1, -1);
      MEMORY[0x266770CF0](v41, -1, -1);

      (*(v36 + 8))(v377, v37);
      (*(v39 + 8))(v371, v372);
      v46 = v35;
    }

    else
    {

      (*(v36 + 8))(v377, v37);
      (*(v39 + 8))(v38, v40);
LABEL_52:
      v46 = v35;
    }

    sub_265CDA484(v46);
    goto LABEL_54;
  }

  v47 = *(v0 + 368);
  if (v47 >> 62)
  {
    goto LABEL_120;
  }

  for (i = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_265D5A2B0())
  {
    v313 = v5;
    v314 = v4;
    if (!i)
    {
      v52 = MEMORY[0x277D84F98];
LABEL_62:
      v73 = v357;
      v121 = sub_265CDA21C();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v380[0] = v121;
      sub_265D42000(v52, sub_265D40988, 0, isUniquelyReferenced_nonNull_native, v380);
      v123 = *(v357 + 800);

      v124 = v380[0];
      v125 = swift_task_alloc();
      *(v125 + 16) = v123;
      v67 = sub_265D40A30(sub_265D4234C, v125, v124);

      sub_265D595F0();

      v74 = sub_265D59DD0();
      v126 = sub_265D5A080();

      v127 = os_log_type_enabled(v74, v126);
      v75 = *(v357 + 984);
      v29 = *(v357 + 952);
      v4 = *(v357 + 944);
      if (v127)
      {
        v128 = swift_slowAlloc();
        v129 = swift_slowAlloc();
        v380[0] = v129;
        *v128 = 136315138;
        sub_265D40868(&qword_2813B9020, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
        v130 = sub_265D59E50();
        v379 = v4;
        v132 = v75;
        v133 = sub_265CF4FFC(v130, v131, v380);

        *(v128 + 4) = v133;
        _os_log_impl(&dword_265C01000, v74, v126, "DistributedSessionPublisher - updated calories %s", v128, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v129);
        MEMORY[0x266770CF0](v129, -1, -1);
        MEMORY[0x266770CF0](v128, -1, -1);

        v134 = *(v29 + 8);
        v134(v132, v379);
      }

      else
      {
LABEL_65:

        v134 = *(v29 + 8);
        v134(v75, v4);
      }

      v367 = v134;
      v135 = *(v73 + 1072);
      v136 = *(v73 + 1064);
      v137 = *(v73 + 904);
      v138 = *(v73 + 888);
      v139 = *(*(v73 + 912) + 56);
      *(v73 + 16) = 0u;
      *(v73 + 32) = 0u;
      *(v73 + 48) = 0;
      v370 = v139;
      v139(v138, 1, 1, v137);
      sub_265CD9D78(v135, v136);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v141 = *(v73 + 1064);
      v142 = *(v73 + 1032);
      if (EnumCaseMultiPayload == 1)
      {
        v359 = *(v73 + 904);
        v355 = *(v73 + 888);
        v143 = *(v73 + 872);
        v144 = *(v73 + 864);
        sub_265CA4AE8(v73 + 16, &qword_28003E528, &qword_265D5BF60);
        v145 = *(v141 + 2);
        v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E618, "fw");
        v352 = *v141;
        sub_265D42374(v141 + *(v146 + 80), v143, &qword_28003E5E0, &qword_265D5C080);
        v147 = *(v146 + 80);
        *v142 = v352;
        *(v142 + 16) = v145;
        sub_265D42374(v355, v144, &qword_28003E5E0, &qword_265D5C080);
        v148 = v330(v144, 1, v359);
        v149 = *(v73 + 904);
        v150 = *(v73 + 872);
        v151 = *(v73 + 864);
        if (v148 == 1)
        {
          sub_265D42374(v150, v142 + v147, &qword_28003E5E0, &qword_265D5C080);
          v152 = v314;
          v153 = v357;
          if (v330(v151, 1, v149) != 1)
          {
            sub_265CA4AE8(*(v357 + 864), &qword_28003E5E0, &qword_265D5C080);
          }
        }

        else
        {
          sub_265CA4AE8(v150, &qword_28003E5E0, &qword_265D5C080);
          v321(v142 + v147, v151, v149);
          v370(v142 + v147, 0, 1, v149);
          v152 = v314;
          v153 = v357;
        }

        v161 = v153[129];
        v162 = *(v146 + 96);

        *(v161 + v162) = v67;
      }

      else
      {
        v154 = *(v73 + 880);
        v155 = *v141;
        v360 = v141[3];
        v353 = v141[5];
        v356 = v141[4];
        v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E620, &unk_265D5E1B0);
        v157 = *(v156 + 160);
        sub_265C033C4((v141 + 8), v73 + 176);
        sub_265D42374(v141 + v157, v154, &qword_28003E5E0, &qword_265D5C080);
        *v142 = v155;
        v158 = v142 + 8;
        v159 = *(v73 + 16);
        *(v73 + 232) = *(v73 + 32);
        *(v73 + 248) = *(v73 + 48);
        *(v73 + 216) = v159;
        v160 = (v73 + 176);
        if (*(v73 + 240))
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v160);
          sub_265C033C4((v73 + 216), v158);
          v152 = v314;
        }

        else
        {
          sub_265C033C4(v160, v158);
          v152 = v314;
          if (*(v73 + 240))
          {
            sub_265CA4AE8(v73 + 216, &qword_28003E528, &qword_265D5BF60);
          }
        }

        v163 = *(v73 + 1032);
        v164 = *(v73 + 904);
        v165 = *(v73 + 888);
        v166 = *(v73 + 856);
        v167 = *(v156 + 160);
        v163[3] = v360;
        v163[4] = v356;
        v163[5] = v353;
        sub_265D42374(v165, v166, &qword_28003E5E0, &qword_265D5C080);
        v168 = v330(v166, 1, v164);
        v169 = *(v73 + 904);
        v170 = *(v73 + 880);
        v171 = *(v73 + 856);
        if (v168 == 1)
        {
          sub_265D42374(v170, v163 + v167, &qword_28003E5E0, &qword_265D5C080);
          v153 = v357;
          if (v330(v171, 1, v169) != 1)
          {
            sub_265CA4AE8(*(v357 + 856), &qword_28003E5E0, &qword_265D5C080);
          }
        }

        else
        {
          sub_265CA4AE8(v170, &qword_28003E5E0, &qword_265D5C080);
          v321(v163 + v167, v171, v169);
          v370(v163 + v167, 0, 1, v169);
          v153 = v357;
        }

        v172 = v153[129];
        v173 = *(v156 + 176);

        *(v172 + v173) = v67;
      }

      swift_storeEnumTagMultiPayload();
      v174 = v153[129];
      v175 = v153[127];
      v176 = v153[126];
      v5 = v175 + 104;
      v177 = *(v175 + 104);
      (v177)(v174, v337, v176);
      v29 = v313;
      swift_beginAccess();
      v179 = *(v175 + 40);
      v4 = (v175 + 40);
      v178 = v179;
      v179(v152 + v313, v174, v176);
      swift_endAccess();
      v180 = 0;
      v181 = -1 << *(v67 + 32);
      if (-v181 < 64)
      {
        v182 = ~(-1 << -v181);
      }

      else
      {
        v182 = -1;
      }

      v183 = v182 & *(v67 + 8);
      v184 = (63 - v181) >> 6;
      for (j = 0.0; v183; j = j + *(*(v67 + 7) + ((v186 << 9) | (8 * v187))))
      {
        v186 = v180;
LABEL_90:
        v187 = __clz(__rbit64(v183));
        v183 &= v183 - 1;
      }

      while (1)
      {
        v186 = v180 + 1;
        if (__OFADD__(v180, 1))
        {
          break;
        }

        if (v186 >= v184)
        {
          v322 = v178;
          v351 = v177;
          v0 = v357;
          v188 = *(v357 + 704);
          v189 = *(v357 + 680);
          v190 = *(v357 + 672);
          v191 = *(v357 + 664);
          v192 = *(v357 + 648);
          v193 = *(v357 + 640);

          sub_265D58000();
          sub_265D58250();
          v194 = *(v189 + 8);
          v194(v188, v190);
          sub_265D57EE0();
          v196 = v195;
          v197 = *(v192 + 8);
          v197(v191, v193);
          v198 = floor(j + v196);
          sub_265D58000();
          sub_265D58250();
          v194(v188, v190);
          sub_265D57EE0();
          v200 = v199;
          v362 = v197;
          v197(v191, v193);
          if (floor(v200) >= v198)
          {
            v35 = *(v357 + 1072);
            (*(*(v357 + 912) + 8))(*(v357 + 936), *(v357 + 904));
            goto LABEL_52;
          }

          v339 = v194;
          sub_265D595F0();
          v201 = sub_265D59DD0();
          v202 = sub_265D5A080();
          if (os_log_type_enabled(v201, v202))
          {
            v203 = swift_slowAlloc();
            *v203 = 134217984;
            *(v203 + 4) = j;
            _os_log_impl(&dword_265C01000, v201, v202, "DistributedSessionPublisher - Updating rings with %f uncounted calories.", v203, 0xCu);
            MEMORY[0x266770CF0](v203, -1, -1);
          }

          v342 = *(v357 + 976);
          v204 = *(v357 + 944);
          v326 = *(v357 + 928);
          v335 = *(v357 + 920);
          v375 = *(v357 + 912);
          v332 = *(v357 + 904);
          v205 = *(v357 + 696);
          v206 = *(v357 + 688);
          v320 = *(v357 + 680);
          v345 = *(v357 + 672);
          v207 = *(v357 + 664);
          v208 = *(v357 + 656);
          v309 = *(v357 + 704);
          v311 = *(v357 + 648);
          v307 = *(v357 + 640);
          v316 = *(v357 + 632);
          v209 = *(v357 + 624);
          v323 = *(v357 + 616);

          v367(v342, v204);
          sub_265D58000();
          sub_265D58000();
          sub_265D58250();
          v339(v205, v345);
          sub_265D58000();
          sub_265D58250();
          v339(v206, v345);
          sub_265D57EE0();
          v362(v208, v307);
          sub_265D57EF0();
          v362(v207, v307);
          v210 = *(v311 + 56);
          v210(v209, 0, 1, v307);
          sub_265D58260();
          sub_265CA4AE8(v209, &qword_28003EA30, &qword_265D5E230);
          v339(v309, v345);
          (*(v320 + 56))(v316, 0, 1, v345);
          v210(v209, 1, 1, v307);
          v210(v323, 1, 1, v307);
          sub_265D5A030();
          sub_265D58010();
          sub_265CA4AE8(v323, &qword_28003EA30, &qword_265D5E230);
          sub_265CA4AE8(v209, &qword_28003EA30, &qword_265D5E230);
          sub_265CA4AE8(v316, &qword_28003EA38, &qword_265D5E238);
          sub_265D595F0();
          v293 = *(v375 + 16);
          v293(v335, v326, v332);
          v211 = sub_265D59DD0();
          v212 = sub_265D5A080();
          v213 = os_log_type_enabled(v211, v212);
          v214 = *(v357 + 968);
          v215 = *(v357 + 944);
          v216 = *(v357 + 920);
          v217 = *(v357 + 912);
          v218 = *(v357 + 904);
          if (v213)
          {
            v363 = *(v357 + 944);
            v219 = swift_slowAlloc();
            v220 = swift_slowAlloc();
            v380[0] = v220;
            *v219 = 136315138;
            sub_265D40868(&qword_28003E600, MEMORY[0x277D50400], MEMORY[0x277D50408]);
            v221 = sub_265D5A3B0();
            v222 = v214;
            v224 = v223;
            (*(v217 + 8))(v216, v218);
            v225 = sub_265CF4FFC(v221, v224, v380);

            *(v219 + 4) = v225;
            _os_log_impl(&dword_265C01000, v211, v212, "DistributedSessionPublisher - Updating Rings: %s", v219, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v220);
            MEMORY[0x266770CF0](v220, -1, -1);
            MEMORY[0x266770CF0](v219, -1, -1);

            v226 = v222;
            v227 = v363;
          }

          else
          {

            (*(v217 + 8))(v216, v218);
            v226 = v214;
            v227 = v215;
          }

          v367(v226, v227);
          v317 = *(v357 + 1056);
          v228 = *(v357 + 928);
          v308 = *(v357 + 912);
          v310 = *(v357 + 936);
          v229 = *(v357 + 904);
          v230 = *(v357 + 848);
          v312 = *(v357 + 840);
          v304 = *(v357 + 600);
          v305 = *(v357 + 1072);
          v306 = *(v357 + 592);
          v303 = *(v357 + 608);
          v231 = *(v357 + 576);
          v232 = *(v357 + 568);
          v233 = *(v357 + 560);
          v234 = *(v357 + 552);
          v235 = *(v357 + 544);
          v368 = *(v357 + 536);
          v364 = *(v357 + 528);
          v350 = *(v357 + 520);
          v348 = *(v357 + 512);
          v346 = *(v357 + 504);
          v343 = *(v357 + 496);
          v340 = *(v357 + 488);
          v336 = *(v357 + 480);
          v333 = *(v357 + 472);
          v329 = *(v357 + 464);
          v327 = *(v357 + 456);
          v324 = *(v357 + 448);
          v294 = *(v357 + 440);
          v295 = *(v357 + 432);
          v296 = *(v357 + 424);
          v297 = *(v357 + 416);
          v298 = *(v357 + 408);
          v299 = *(v357 + 400);
          v300 = *(v357 + 392);
          v301 = *(v357 + 384);
          v302 = *(v357 + 376);
          swift_getObjectType();
          sub_265D5A4C0();
          sub_265CD9C34();
          sub_265D58CF0();

          v293(v230, v228, v229);
          v370(v230, 0, 1, v229);
          v236 = sub_265D58410();
          (*(*(v236 - 8) + 56))(v231, 1, 1, v236);
          v237 = sub_265D58590();
          (*(*(v237 - 8) + 56))(v232, 1, 1, v237);
          v238 = sub_265D58050();
          (*(*(v238 - 8) + 56))(v233, 1, 1, v238);
          v239 = sub_265D58200();
          (*(*(v239 - 8) + 56))(v234, 1, 1, v239);
          v240 = sub_265D58BC0();
          (*(*(v240 - 8) + 56))(v235, 1, 1, v240);
          v241 = sub_265D583E0();
          (*(*(v241 - 8) + 56))(v368, 1, 1, v241);
          v242 = sub_265D581B0();
          (*(*(v242 - 8) + 56))(v364, 1, 1, v242);
          v243 = sub_265D57F50();
          (*(*(v243 - 8) + 56))(v350, 1, 1, v243);
          v244 = sub_265D582A0();
          (*(*(v244 - 8) + 56))(v348, 1, 1, v244);
          v245 = sub_265D58680();
          (*(*(v245 - 8) + 56))(v346, 1, 1, v245);
          v246 = sub_265D58210();
          (*(*(v246 - 8) + 56))(v343, 1, 1, v246);
          v247 = sub_265D57E80();
          (*(*(v247 - 8) + 56))(v340, 1, 1, v247);
          v248 = sub_265D58430();
          (*(*(v248 - 8) + 56))(v336, 1, 1, v248);
          v249 = sub_265D58300();
          (*(*(v249 - 8) + 56))(v333, 1, 1, v249);
          v250 = sub_265D586F0();
          (*(*(v250 - 8) + 56))(v329, 1, 1, v250);
          v251 = sub_265D57E90();
          (*(*(v251 - 8) + 56))(v327, 1, 1, v251);
          v252 = sub_265D581C0();
          (*(*(v252 - 8) + 56))(v324, 1, 1, v252);
          v253 = sub_265D58BB0();
          (*(*(v253 - 8) + 56))(v294, 1, 1, v253);
          v254 = sub_265D585C0();
          (*(*(v254 - 8) + 56))(v295, 1, 1, v254);
          v255 = sub_265D57EA0();
          (*(*(v255 - 8) + 56))(v296, 1, 1, v255);
          v256 = sub_265D57ED0();
          (*(*(v256 - 8) + 56))(v297, 1, 1, v256);
          v257 = sub_265D58240();
          (*(*(v257 - 8) + 56))(v298, 1, 1, v257);
          v258 = sub_265D58400();
          (*(*(v258 - 8) + 56))(v299, 1, 1, v258);
          v259 = sub_265D58600();
          (*(*(v259 - 8) + 56))(v300, 1, 1, v259);
          v260 = sub_265D58630();
          (*(*(v260 - 8) + 56))(v301, 1, 1, v260);
          v261 = sub_265D58B10();
          (*(*(v261 - 8) + 56))(v302, 1, 1, v261);
          sub_265D5A030();
          sub_265D580B0();
          sub_265D59080();
          sub_265D58ED0();
          (*(v304 + 8))(v303, v306);
          (*(v308 + 8))(v310, v229);
          *(v357 + 88) = 0;
          *(v357 + 72) = 0u;
          *(v357 + 56) = 0u;
          v321(v312, v228, v229);
          v370(v312, 0, 1, v229);
          sub_265D41F9C(v305, v317);
          v262 = swift_getEnumCaseMultiPayload();
          v263 = *(v357 + 1056);
          v264 = *(v357 + 1024);
          if (v262 == 1)
          {
            v369 = *(v357 + 904);
            v265 = *(v357 + 840);
            v266 = *(v357 + 824);
            v267 = *(v357 + 816);
            sub_265CA4AE8(v357 + 56, &qword_28003E528, &qword_265D5BF60);
            v268 = *(v263 + 2);
            v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E618, "fw");
            v376 = *(v263 + *(v269 + 96));
            v365 = *v263;
            sub_265D42374(v263 + *(v269 + 80), v266, &qword_28003E5E0, &qword_265D5C080);
            v270 = *(v269 + 80);
            *v264 = v365;
            *(v264 + 16) = v268;
            sub_265D42374(v265, v267, &qword_28003E5E0, &qword_265D5C080);
            v271 = v330(v267, 1, v369);
            v272 = *(v357 + 904);
            v273 = *(v357 + 824);
            v274 = *(v357 + 816);
            if (v271 == 1)
            {
              sub_265D42374(v273, v264 + v270, &qword_28003E5E0, &qword_265D5C080);
              v276 = v313;
              v275 = v314;
              v277 = v322;
              if (v330(v274, 1, v272) != 1)
              {
                sub_265CA4AE8(*(v357 + 816), &qword_28003E5E0, &qword_265D5C080);
              }
            }

            else
            {
              sub_265CA4AE8(v273, &qword_28003E5E0, &qword_265D5C080);
              v321(v264 + v270, v274, v272);
              v370(v264 + v270, 0, 1, v272);
              v276 = v313;
              v275 = v314;
              v277 = v322;
            }

            v0 = v357;
            *(*(v357 + 1024) + *(v269 + 96)) = v376;
            swift_storeEnumTagMultiPayload();
            goto LABEL_115;
          }

          v278 = *(v357 + 832);
          v279 = *v263;
          v361 = v263[4];
          v366 = v263[3];
          v349 = v263[5];
          v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E620, &unk_265D5E1B0);
          v280 = *(v74 + 160);
          v281 = *(v263 + *(v74 + 176));
          sub_265C033C4((v263 + 8), v357 + 96);
          sub_265D42374(v263 + v280, v278, &qword_28003E5E0, &qword_265D5C080);
          *v264 = v279;
          v100 = v264 + 8;
          v73 = v357;
          *(v357 + 152) = *(v357 + 72);
          *(v357 + 168) = *(v357 + 88);
          *(v357 + 136) = *(v357 + 56);
          v374 = v281;
          v107 = (v357 + 96);
          if (!*(v357 + 160))
          {
            goto LABEL_108;
          }

          __swift_destroy_boxed_opaque_existential_1Tm(v107);
          sub_265C033C4((v357 + 136), v100);
          v276 = v313;
          v275 = v314;
          goto LABEL_110;
        }

        v183 = *(v67 + v186 + 8);
        ++v180;
        if (v183)
        {
          v180 = v186;
          goto LABEL_90;
        }
      }

LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

    v49 = 0;
    v50 = *(v357 + 368);
    v4 = (v50 & 0xC000000000000001);
    v328 = v50 & 0xFFFFFFFFFFFFFF8;
    v322 = (v29 + 32);
    v325 = (*(v357 + 744) + 8);
    v51 = *(v357 + 768);
    *&v366 = v51 + 16;
    v378 = (v51 + 32);
    v358 = v51;
    v344 = (v51 + 8);
    v52 = MEMORY[0x277D84F98];
    v318 = i;
    v319 = v29;
    v315 = v4;
LABEL_17:
    if (v4)
    {
      break;
    }

    if (v49 < *(v328 + 16))
    {
      v55 = *(v322 + v49);
      goto LABEL_20;
    }

LABEL_119:
    __break(1u);
LABEL_120:
    ;
  }

  v55 = MEMORY[0x2667702E0](v49, v29);
LABEL_20:
  v334 = v49 + 1;
  if (__OFADD__(v49, 1))
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v56 = v52;
  v57 = *(v357 + 792);
  v373 = *(v357 + 760);
  v58 = *(v357 + 752);
  v59 = *(v357 + 736);
  v60 = v55;
  v61 = [v55 dateInterval];
  sub_265D57CF0();

  sub_265D57D00();
  (*v325)(v58, v59);
  v331 = v60;
  v62 = [v60 quantity];
  v63 = [objc_opt_self() kilocalorieUnit];
  [v62 doubleValueForUnit_];
  v65 = v64;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA50, &unk_265D5E250);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DE90, &qword_265D5B0C8);
  v67 = *(v66 - 8);
  v68 = (*(v67 + 80) + 32) & ~*(v67 + 80);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_265D5AF60;
  v70 = v69 + v68;
  v354 = v66;
  v71 = *(v66 + 48);
  v72 = v57;
  v4 = v357;
  *&v361 = *v366;
  (*v366)(v70, v72, v373);
  *(v70 + v71) = v65;
  v73 = sub_265C96BC8(v69);
  swift_setDeallocating();
  sub_265CA4AE8(v70, &qword_28003DE90, &qword_265D5B0C8);
  swift_deallocClassInstance();
  v74 = v56;
  v75 = swift_isUniquelyReferenced_nonNull_native();
  v76 = *(v73 + 64);
  v341 = v73 + 64;
  v380[0] = v56;
  v77 = -1 << *(v73 + 32);
  if (-v77 < 64)
  {
    v78 = ~(-1 << -v77);
  }

  else
  {
    v78 = -1;
  }

  v29 = v78 & v76;
  v338 = (63 - v77) >> 6;
  v351 = (v67 + 56);
  *&v349 = v67 + 48;
  v347 = v73;

  for (k = 0; ; k = v73)
  {
    v374 = v74;
    LODWORD(v370) = v75;
    if (!v29)
    {
      if (v338 <= (k + 1))
      {
        v80 = k + 1;
      }

      else
      {
        v80 = v338;
      }

      v81 = v80 - 1;
      while (1)
      {
        v5 = k + 1;
        if (__OFADD__(k, 1))
        {
          break;
        }

        if (v5 >= v338)
        {
          v117 = *(v4 + 90);
          v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA58, &unk_265D5E260);
          (*(*(v118 - 8) + 56))(v117, 1, 1, v118);
          v29 = 0;
          goto LABEL_37;
        }

        v29 = *(v341 + 8 * v5);
        ++k;
        if (v29)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
      goto LABEL_65;
    }

    v5 = k;
LABEL_36:
    v82 = *(v4 + 98);
    v83 = *(v4 + 95);
    v84 = *(v4 + 90);
    v85 = __clz(__rbit64(v29));
    v29 &= v29 - 1;
    v86 = v85 | (v5 << 6);
    (v361)(v82, *(v347 + 48) + *(v358 + 72) * v86, v83);
    v87 = *(*(v347 + 56) + 8 * v86);
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA58, &unk_265D5E260);
    v89 = *(v88 + 48);
    v4 = v357;
    (*(v358 + 32))(v84, v82, v83);
    *(v84 + v89) = v87;
    (*(*(v88 - 8) + 56))(v84, 0, 1, v88);
    v81 = v5;
LABEL_37:
    v90 = *(v4 + 89);
    sub_265D42374(*(v4 + 90), v90, &qword_28003EA40, &qword_265D5E240);
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA58, &unk_265D5E260);
    v92 = 1;
    if ((*(*(v91 - 8) + 48))(v90, 1, v91) != 1)
    {
      v93 = *(v4 + 91);
      v94 = *(v4 + 89);
      v95 = *(v91 + 48);
      v96 = *(v354 + 48);
      v97 = *(v94 + v95);
      (v361)(v93, v94, *(v4 + 95));
      *(v93 + v96) = v97;
      sub_265CA4AE8(v94, &qword_28003EA58, &unk_265D5E260);
      v92 = 0;
    }

    v98 = *(v4 + 91);
    (*v351)(v98, v92, 1, v354);
    if ((*v349)(v98, 1, v354) == 1)
    {
      v53 = *(v4 + 99);
      v54 = *(v4 + 95);

      (*v344)(v53, v54);

      v29 = v319;
      v49 = v334;
      v52 = v374;
      v4 = v315;
      if (v334 == v318)
      {
        goto LABEL_62;
      }

      goto LABEL_17;
    }

    v73 = v81;
    v99 = *(v4 + 97);
    v100 = *(v4 + 91);
    v67 = *(v354 + 48);
    v5 = *v378;
    (*v378)(v99, v100, *(v4 + 95));
    v101 = *(v67 + v100);
    v102 = v99;
    v74 = v374;
    v104 = sub_265CE2CC4(v102);
    v105 = *(v374 + 16);
    v106 = (v103 & 1) == 0;
    v107 = (v105 + v106);
    if (__OFADD__(v105, v106))
    {
      break;
    }

    v108 = v103;
    if (*(v374 + 24) >= v107)
    {
      if ((v370 & 1) == 0)
      {
        sub_265CE6318();
        v74 = v380[0];
      }
    }

    else
    {
      v109 = *(v4 + 97);
      sub_265CE4278(v107, v370 & 1);
      v74 = v380[0];
      v110 = sub_265CE2CC4(v109);
      if ((v108 & 1) != (v111 & 1))
      {

        return sub_265D5A3F0();
      }

      v104 = v110;
    }

    v112 = *(v4 + 97);
    v113 = *(v4 + 95);
    if (v108)
    {
      (*v344)(*(v4 + 97), *(v4 + 95));
      *(*(v74 + 56) + 8 * v104) = v101;
    }

    else
    {
      *(v74 + 8 * (v104 >> 6) + 64) |= 1 << v104;
      (v5)(*(v74 + 48) + *(v358 + 72) * v104, v112, v113);
      *(*(v74 + 56) + 8 * v104) = v101;
      v114 = *(v74 + 16);
      v115 = __OFADD__(v114, 1);
      v116 = v114 + 1;
      if (v115)
      {
        __break(1u);
        goto LABEL_117;
      }

      *(v74 + 16) = v116;
    }

    v75 = 1;
  }

  __break(1u);
LABEL_108:
  sub_265C033C4(v107, v100);
  v276 = v313;
  v275 = v314;
  if (*(v73 + 160))
  {
    sub_265CA4AE8(v73 + 136, &qword_28003E528, &qword_265D5BF60);
  }

LABEL_110:
  v282 = *(v73 + 1024);
  v283 = *(v73 + 904);
  v284 = *(v73 + 840);
  v285 = *(v73 + 808);
  v286 = *(v74 + 160);
  v282[3] = v366;
  v282[4] = v361;
  v282[5] = v349;
  sub_265D42374(v284, v285, &qword_28003E5E0, &qword_265D5C080);
  v287 = v330(v285, 1, v283);
  v288 = *(v73 + 904);
  v289 = *(v73 + 832);
  v290 = *(v73 + 808);
  if (v287 == 1)
  {
    sub_265D42374(v289, v282 + v286, &qword_28003E5E0, &qword_265D5C080);
    v277 = v322;
    if (v330(v290, 1, v288) != 1)
    {
      sub_265CA4AE8(*(v357 + 808), &qword_28003E5E0, &qword_265D5C080);
    }
  }

  else
  {
    sub_265CA4AE8(v289, &qword_28003E5E0, &qword_265D5C080);
    v321(v282 + v286, v290, v288);
    v370(v282 + v286, 0, 1, v288);
    v277 = v322;
  }

  v0 = v357;
  *(*(v357 + 1024) + *(v74 + 176)) = v374;
  swift_storeEnumTagMultiPayload();
LABEL_115:
  v291 = *(v0 + 1024);
  v292 = *(v0 + 1008);
  (v351)(v291, v337, v292);
  swift_beginAccess();
  v277(&v275[v276], v291, v292);
  swift_endAccess();
LABEL_54:
  (*(*(v0 + 768) + 8))(*(v0 + 800), *(v0 + 760));
LABEL_55:

  v119 = *(v0 + 8);

  return v119();
}

uint64_t sub_265D3A540(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA58, &unk_265D5E260);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  v9 = *a2;
  v10 = sub_265D57E30();
  (*(*(v10 - 8) + 16))(v8, a1, v10);
  *&v8[*(v6 + 56)] = v9;
  v11 = sub_265D57DF0();
  sub_265CA4AE8(v8, &qword_28003EA58, &unk_265D5E260);
  return v11 & 1;
}

uint64_t sub_265D3A658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E340, &unk_265D5D0C0);
  v3[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E540, &qword_265D5BFE0);
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680);
  v3[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E548, &qword_265D5BFE8);
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E550, &unk_265D5BFF0);
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E840, &unk_265D5D0D0);
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E558, &unk_265D5C000);
  v3[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E560, &unk_265D5CC10);
  v3[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E568, &unk_265D5C010);
  v3[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E570, &unk_265D5D0E0);
  v3[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E578, &unk_265D5C020);
  v3[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E580, &unk_265D5D0F0);
  v3[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E200, &unk_265D5B580);
  v3[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E588, &unk_265D5D100);
  v3[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E590, &unk_265D5C030);
  v3[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E598, &unk_265D5D110);
  v3[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A0, &unk_265D5C040);
  v3[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A8, &unk_265D5D120);
  v3[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B0, &unk_265D5C050);
  v3[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B8, &unk_265D5D130);
  v3[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C0, &unk_265D5C060);
  v3[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E960, &unk_265D5D140);
  v3[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E348, &qword_265D5B710);
  v3[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C8, &unk_265D5D150);
  v3[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D0, &unk_265D5C070);
  v3[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D8, &qword_265D5D160);
  v3[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5E0, &qword_265D5C080);
  v3[33] = swift_task_alloc();
  sub_265D58130();
  v3[34] = swift_task_alloc();
  v5 = sub_265D59090();
  v3[35] = v5;
  v3[36] = *(v5 - 8);
  v3[37] = swift_task_alloc();
  v6 = sub_265D59DE0();
  v3[38] = v6;
  v3[39] = *(v6 - 8);
  v3[40] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF10, &qword_265D5B100);
  v3[41] = v7;
  v3[42] = *(v7 - 8);
  v3[43] = swift_task_alloc();
  type metadata accessor for DistributedSessionPublisher.State(0);
  v3[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D3AE20, a2, 0);
}

uint64_t sub_265D3AE20()
{
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[41];
  v4 = v0[5];
  v5 = OBJC_IVAR____TtC22SeymourSessionServices27DistributedSessionPublisher_state;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);
  if ((*(v2 + 88))(v1, v3) == *MEMORY[0x277D4F250])
  {
    v7 = v0[43];
    v6 = v0[44];
    v60 = v6;
    v61 = v0[37];
    v62 = v0[36];
    v63 = v0[35];
    v8 = v0[32];
    v9 = v0[33];
    v11 = v0[30];
    v10 = v0[31];
    v12 = v0[29];
    v75 = v0[27];
    v76 = v0[28];
    v74 = v0[26];
    v72 = v0[23];
    v73 = v0[24];
    v70 = v0[21];
    v71 = v0[22];
    v68 = v0[19];
    v69 = v0[20];
    v66 = v0[17];
    v67 = v0[18];
    v64 = v0[25];
    v65 = v0[16];
    v52 = v0[15];
    v53 = v0[14];
    v54 = v0[13];
    v55 = v0[12];
    v56 = v0[11];
    v13 = v0[9];
    v57 = v0[10];
    v58 = v0[8];
    v59 = v0[7];
    v51 = v0[6];
    (*(v0[42] + 96))(v7, v0[41]);
    sub_265D41F9C(v7, v6);
    swift_getObjectType();
    sub_265D5A4C0();
    sub_265CD9C34();
    sub_265D58CF0();

    v14 = sub_265D58020();
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
    v15 = sub_265D58410();
    (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
    v16 = sub_265D58590();
    (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
    v17 = sub_265D58050();
    (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
    v18 = sub_265D58200();
    (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
    v19 = sub_265D58BC0();
    (*(*(v19 - 8) + 56))(v76, 1, 1, v19);
    v20 = sub_265D583E0();
    (*(*(v20 - 8) + 56))(v75, 1, 1, v20);
    v21 = sub_265D581B0();
    (*(*(v21 - 8) + 56))(v74, 1, 1, v21);
    v22 = sub_265D57F50();
    v23 = *(v22 - 8);
    (*(v23 + 16))(v64, v51, v22);
    (*(v23 + 56))(v64, 0, 1, v22);
    v24 = sub_265D582A0();
    (*(*(v24 - 8) + 56))(v73, 1, 1, v24);
    v25 = sub_265D58680();
    (*(*(v25 - 8) + 56))(v72, 1, 1, v25);
    v26 = sub_265D58210();
    (*(*(v26 - 8) + 56))(v71, 1, 1, v26);
    v27 = sub_265D57E80();
    (*(*(v27 - 8) + 56))(v70, 1, 1, v27);
    v28 = sub_265D58430();
    (*(*(v28 - 8) + 56))(v69, 1, 1, v28);
    v29 = sub_265D58300();
    (*(*(v29 - 8) + 56))(v68, 1, 1, v29);
    v30 = sub_265D586F0();
    (*(*(v30 - 8) + 56))(v67, 1, 1, v30);
    v31 = sub_265D57E90();
    (*(*(v31 - 8) + 56))(v66, 1, 1, v31);
    v32 = sub_265D581C0();
    (*(*(v32 - 8) + 56))(v65, 1, 1, v32);
    v33 = sub_265D58BB0();
    (*(*(v33 - 8) + 56))(v52, 1, 1, v33);
    v34 = sub_265D585C0();
    (*(*(v34 - 8) + 56))(v53, 1, 1, v34);
    v35 = sub_265D57EA0();
    (*(*(v35 - 8) + 56))(v54, 1, 1, v35);
    v36 = sub_265D57ED0();
    (*(*(v36 - 8) + 56))(v55, 1, 1, v36);
    v37 = sub_265D58240();
    (*(*(v37 - 8) + 56))(v56, 1, 1, v37);
    v38 = sub_265D58400();
    (*(*(v38 - 8) + 56))(v57, 1, 1, v38);
    v39 = sub_265D58600();
    (*(*(v39 - 8) + 56))(v13, 1, 1, v39);
    v40 = sub_265D58630();
    (*(*(v40 - 8) + 56))(v58, 1, 1, v40);
    v41 = sub_265D58B10();
    (*(*(v41 - 8) + 56))(v59, 1, 1, v41);
    sub_265D5A030();
    sub_265D580B0();
    sub_265D59080();
    sub_265D58ED0();
    (*(v62 + 8))(v61, v63);
    sub_265CDA484(v60);
  }

  else
  {
    (*(v0[42] + 8))(v0[43], v0[41]);
    sub_265D595F0();
    v42 = sub_265D59DD0();
    v43 = sub_265D5A070();
    v44 = os_log_type_enabled(v42, v43);
    v46 = v0[39];
    v45 = v0[40];
    v47 = v0[38];
    if (v44)
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_265C01000, v42, v43, "DistributedSessionPublisher - No active session to update workout calories.", v48, 2u);
      MEMORY[0x266770CF0](v48, -1, -1);
    }

    (*(v46 + 8))(v45, v47);
  }

  v49 = v0[1];

  return v49();
}

uint64_t sub_265D3BA40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E340, &unk_265D5D0C0);
  v3[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E540, &qword_265D5BFE0);
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680);
  v3[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E548, &qword_265D5BFE8);
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E550, &unk_265D5BFF0);
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E840, &unk_265D5D0D0);
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E558, &unk_265D5C000);
  v3[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E560, &unk_265D5CC10);
  v3[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E568, &unk_265D5C010);
  v3[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E570, &unk_265D5D0E0);
  v3[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E578, &unk_265D5C020);
  v3[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E580, &unk_265D5D0F0);
  v3[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E200, &unk_265D5B580);
  v3[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E588, &unk_265D5D100);
  v3[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E590, &unk_265D5C030);
  v3[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E598, &unk_265D5D110);
  v3[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A0, &unk_265D5C040);
  v3[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A8, &unk_265D5D120);
  v3[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B0, &unk_265D5C050);
  v3[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B8, &unk_265D5D130);
  v3[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C0, &unk_265D5C060);
  v3[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E960, &unk_265D5D140);
  v3[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E348, &qword_265D5B710);
  v3[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C8, &unk_265D5D150);
  v3[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D0, &unk_265D5C070);
  v3[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D8, &qword_265D5D160);
  v3[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5E0, &qword_265D5C080);
  v3[33] = swift_task_alloc();
  sub_265D58130();
  v3[34] = swift_task_alloc();
  v5 = sub_265D59090();
  v3[35] = v5;
  v3[36] = *(v5 - 8);
  v3[37] = swift_task_alloc();
  v6 = sub_265D59DE0();
  v3[38] = v6;
  v3[39] = *(v6 - 8);
  v3[40] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF10, &qword_265D5B100);
  v3[41] = v7;
  v3[42] = *(v7 - 8);
  v3[43] = swift_task_alloc();
  type metadata accessor for DistributedSessionPublisher.State(0);
  v3[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D3C208, a2, 0);
}

uint64_t sub_265D3C208()
{
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[41];
  v4 = v0[5];
  v5 = OBJC_IVAR____TtC22SeymourSessionServices27DistributedSessionPublisher_state;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);
  if ((*(v2 + 88))(v1, v3) == *MEMORY[0x277D4F250])
  {
    v7 = v0[43];
    v6 = v0[44];
    v60 = v6;
    v61 = v0[37];
    v62 = v0[36];
    v63 = v0[35];
    v8 = v0[32];
    v9 = v0[33];
    v11 = v0[30];
    v10 = v0[31];
    v12 = v0[29];
    v75 = v0[27];
    v76 = v0[28];
    v64 = v0[26];
    v73 = v0[24];
    v74 = v0[25];
    v71 = v0[22];
    v72 = v0[23];
    v69 = v0[20];
    v70 = v0[21];
    v67 = v0[18];
    v68 = v0[19];
    v65 = v0[16];
    v66 = v0[17];
    v52 = v0[15];
    v53 = v0[14];
    v54 = v0[13];
    v55 = v0[12];
    v56 = v0[11];
    v57 = v0[10];
    v13 = v0[9];
    v58 = v0[8];
    v59 = v0[7];
    v51 = v0[6];
    (*(v0[42] + 96))(v7, v0[41]);
    sub_265D41F9C(v7, v6);
    swift_getObjectType();
    sub_265D5A4C0();
    sub_265CD9C34();
    sub_265D58CF0();

    v14 = sub_265D58020();
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
    v15 = sub_265D58410();
    (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
    v16 = sub_265D58590();
    (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
    v17 = sub_265D58050();
    (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
    v18 = sub_265D58200();
    (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
    v19 = sub_265D58BC0();
    (*(*(v19 - 8) + 56))(v76, 1, 1, v19);
    v20 = sub_265D583E0();
    (*(*(v20 - 8) + 56))(v75, 1, 1, v20);
    v21 = sub_265D581B0();
    v22 = *(v21 - 8);
    (*(v22 + 16))(v64, v51, v21);
    (*(v22 + 56))(v64, 0, 1, v21);
    v23 = sub_265D57F50();
    (*(*(v23 - 8) + 56))(v74, 1, 1, v23);
    v24 = sub_265D582A0();
    (*(*(v24 - 8) + 56))(v73, 1, 1, v24);
    v25 = sub_265D58680();
    (*(*(v25 - 8) + 56))(v72, 1, 1, v25);
    v26 = sub_265D58210();
    (*(*(v26 - 8) + 56))(v71, 1, 1, v26);
    v27 = sub_265D57E80();
    (*(*(v27 - 8) + 56))(v70, 1, 1, v27);
    v28 = sub_265D58430();
    (*(*(v28 - 8) + 56))(v69, 1, 1, v28);
    v29 = sub_265D58300();
    (*(*(v29 - 8) + 56))(v68, 1, 1, v29);
    v30 = sub_265D586F0();
    (*(*(v30 - 8) + 56))(v67, 1, 1, v30);
    v31 = sub_265D57E90();
    (*(*(v31 - 8) + 56))(v66, 1, 1, v31);
    v32 = sub_265D581C0();
    (*(*(v32 - 8) + 56))(v65, 1, 1, v32);
    v33 = sub_265D58BB0();
    (*(*(v33 - 8) + 56))(v52, 1, 1, v33);
    v34 = sub_265D585C0();
    (*(*(v34 - 8) + 56))(v53, 1, 1, v34);
    v35 = sub_265D57EA0();
    (*(*(v35 - 8) + 56))(v54, 1, 1, v35);
    v36 = sub_265D57ED0();
    (*(*(v36 - 8) + 56))(v55, 1, 1, v36);
    v37 = sub_265D58240();
    (*(*(v37 - 8) + 56))(v56, 1, 1, v37);
    v38 = sub_265D58400();
    (*(*(v38 - 8) + 56))(v57, 1, 1, v38);
    v39 = sub_265D58600();
    (*(*(v39 - 8) + 56))(v13, 1, 1, v39);
    v40 = sub_265D58630();
    (*(*(v40 - 8) + 56))(v58, 1, 1, v40);
    v41 = sub_265D58B10();
    (*(*(v41 - 8) + 56))(v59, 1, 1, v41);
    sub_265D5A030();
    sub_265D580B0();
    sub_265D59080();
    sub_265D58ED0();
    (*(v62 + 8))(v61, v63);
    sub_265CDA484(v60);
  }

  else
  {
    (*(v0[42] + 8))(v0[43], v0[41]);
    sub_265D595F0();
    v42 = sub_265D59DD0();
    v43 = sub_265D5A070();
    v44 = os_log_type_enabled(v42, v43);
    v46 = v0[39];
    v45 = v0[40];
    v47 = v0[38];
    if (v44)
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_265C01000, v42, v43, "DistributedSessionPublisher - No active session to update workout distance.", v48, 2u);
      MEMORY[0x266770CF0](v48, -1, -1);
    }

    (*(v46 + 8))(v45, v47);
  }

  v49 = v0[1];

  return v49();
}

uint64_t sub_265D3CE24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E340, &unk_265D5D0C0);
  v3[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E540, &qword_265D5BFE0);
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680);
  v3[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E548, &qword_265D5BFE8);
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E550, &unk_265D5BFF0);
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E840, &unk_265D5D0D0);
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E558, &unk_265D5C000);
  v3[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E560, &unk_265D5CC10);
  v3[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E568, &unk_265D5C010);
  v3[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E570, &unk_265D5D0E0);
  v3[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E578, &unk_265D5C020);
  v3[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E580, &unk_265D5D0F0);
  v3[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E200, &unk_265D5B580);
  v3[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E588, &unk_265D5D100);
  v3[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E590, &unk_265D5C030);
  v3[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E598, &unk_265D5D110);
  v3[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A0, &unk_265D5C040);
  v3[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A8, &unk_265D5D120);
  v3[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B0, &unk_265D5C050);
  v3[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B8, &unk_265D5D130);
  v3[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C0, &unk_265D5C060);
  v3[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E960, &unk_265D5D140);
  v3[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E348, &qword_265D5B710);
  v3[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C8, &unk_265D5D150);
  v3[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D0, &unk_265D5C070);
  v3[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D8, &qword_265D5D160);
  v3[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5E0, &qword_265D5C080);
  v3[33] = swift_task_alloc();
  sub_265D58130();
  v3[34] = swift_task_alloc();
  v5 = sub_265D59090();
  v3[35] = v5;
  v3[36] = *(v5 - 8);
  v3[37] = swift_task_alloc();
  v6 = sub_265D59DE0();
  v3[38] = v6;
  v3[39] = *(v6 - 8);
  v3[40] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF10, &qword_265D5B100);
  v3[41] = v7;
  v3[42] = *(v7 - 8);
  v3[43] = swift_task_alloc();
  type metadata accessor for DistributedSessionPublisher.State(0);
  v3[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D3D5EC, a2, 0);
}

uint64_t sub_265D3D5EC()
{
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[41];
  v4 = v0[5];
  v5 = OBJC_IVAR____TtC22SeymourSessionServices27DistributedSessionPublisher_state;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);
  if ((*(v2 + 88))(v1, v3) == *MEMORY[0x277D4F250])
  {
    v7 = v0[43];
    v6 = v0[44];
    v61 = v6;
    v62 = v0[37];
    v63 = v0[36];
    v64 = v0[35];
    v8 = v0[32];
    v9 = v0[33];
    v11 = v0[30];
    v10 = v0[31];
    v13 = v0[28];
    v12 = v0[29];
    v75 = v0[26];
    v76 = v0[27];
    v73 = v0[24];
    v74 = v0[25];
    v71 = v0[21];
    v72 = v0[23];
    v69 = v0[19];
    v70 = v0[20];
    v67 = v0[17];
    v68 = v0[18];
    v65 = v0[22];
    v66 = v0[16];
    v52 = v0[15];
    v53 = v0[14];
    v54 = v0[13];
    v55 = v0[12];
    v56 = v0[11];
    v57 = v0[10];
    v58 = v0[9];
    v59 = v0[8];
    v60 = v0[7];
    v51 = v0[6];
    (*(v0[42] + 96))(v7, v0[41]);
    sub_265D41F9C(v7, v6);
    swift_getObjectType();
    sub_265D5A4C0();
    sub_265CD9C34();
    sub_265D58CF0();

    v14 = sub_265D58020();
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
    v15 = sub_265D58410();
    (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
    v16 = sub_265D58590();
    (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
    v17 = sub_265D58050();
    (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
    v18 = sub_265D58200();
    (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
    v19 = sub_265D58BC0();
    (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
    v20 = sub_265D583E0();
    (*(*(v20 - 8) + 56))(v76, 1, 1, v20);
    v21 = sub_265D581B0();
    (*(*(v21 - 8) + 56))(v75, 1, 1, v21);
    v22 = sub_265D57F50();
    (*(*(v22 - 8) + 56))(v74, 1, 1, v22);
    v23 = sub_265D582A0();
    (*(*(v23 - 8) + 56))(v73, 1, 1, v23);
    v24 = sub_265D58680();
    (*(*(v24 - 8) + 56))(v72, 1, 1, v24);
    v25 = sub_265D58210();
    v26 = *(v25 - 8);
    (*(v26 + 16))(v65, v51, v25);
    (*(v26 + 56))(v65, 0, 1, v25);
    v27 = sub_265D57E80();
    (*(*(v27 - 8) + 56))(v71, 1, 1, v27);
    v28 = sub_265D58430();
    (*(*(v28 - 8) + 56))(v70, 1, 1, v28);
    v29 = sub_265D58300();
    (*(*(v29 - 8) + 56))(v69, 1, 1, v29);
    v30 = sub_265D586F0();
    (*(*(v30 - 8) + 56))(v68, 1, 1, v30);
    v31 = sub_265D57E90();
    (*(*(v31 - 8) + 56))(v67, 1, 1, v31);
    v32 = sub_265D581C0();
    (*(*(v32 - 8) + 56))(v66, 1, 1, v32);
    v33 = sub_265D58BB0();
    (*(*(v33 - 8) + 56))(v52, 1, 1, v33);
    v34 = sub_265D585C0();
    (*(*(v34 - 8) + 56))(v53, 1, 1, v34);
    v35 = sub_265D57EA0();
    (*(*(v35 - 8) + 56))(v54, 1, 1, v35);
    v36 = sub_265D57ED0();
    (*(*(v36 - 8) + 56))(v55, 1, 1, v36);
    v37 = sub_265D58240();
    (*(*(v37 - 8) + 56))(v56, 1, 1, v37);
    v38 = sub_265D58400();
    (*(*(v38 - 8) + 56))(v57, 1, 1, v38);
    v39 = sub_265D58600();
    (*(*(v39 - 8) + 56))(v58, 1, 1, v39);
    v40 = sub_265D58630();
    (*(*(v40 - 8) + 56))(v59, 1, 1, v40);
    v41 = sub_265D58B10();
    (*(*(v41 - 8) + 56))(v60, 1, 1, v41);
    sub_265D5A030();
    sub_265D580B0();
    sub_265D59080();
    sub_265D58ED0();
    (*(v63 + 8))(v62, v64);
    sub_265CDA484(v61);
  }

  else
  {
    (*(v0[42] + 8))(v0[43], v0[41]);
    sub_265D595F0();
    v42 = sub_265D59DD0();
    v43 = sub_265D5A070();
    v44 = os_log_type_enabled(v42, v43);
    v46 = v0[39];
    v45 = v0[40];
    v47 = v0[38];
    if (v44)
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_265C01000, v42, v43, "DistributedSessionPublisher - No active session to update workout heart rate.", v48, 2u);
      MEMORY[0x266770CF0](v48, -1, -1);
    }

    (*(v46 + 8))(v45, v47);
  }

  v49 = v0[1];

  return v49();
}

uint64_t sub_265D3E220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E340, &unk_265D5D0C0);
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E540, &qword_265D5BFE0);
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680);
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E548, &qword_265D5BFE8);
  v3[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E550, &unk_265D5BFF0);
  v3[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E840, &unk_265D5D0D0);
  v3[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E558, &unk_265D5C000);
  v3[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E560, &unk_265D5CC10);
  v3[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E568, &unk_265D5C010);
  v3[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E570, &unk_265D5D0E0);
  v3[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E578, &unk_265D5C020);
  v3[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E580, &unk_265D5D0F0);
  v3[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E200, &unk_265D5B580);
  v3[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E588, &unk_265D5D100);
  v3[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E590, &unk_265D5C030);
  v3[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E598, &unk_265D5D110);
  v3[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A0, &unk_265D5C040);
  v3[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5A8, &unk_265D5D120);
  v3[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B0, &unk_265D5C050);
  v3[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5B8, &unk_265D5D130);
  v3[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C0, &unk_265D5C060);
  v3[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E960, &unk_265D5D140);
  v3[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E348, &qword_265D5B710);
  v3[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5C8, &unk_265D5D150);
  v3[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D0, &unk_265D5C070);
  v3[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5D8, &qword_265D5D160);
  v3[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5E0, &qword_265D5C080);
  v3[36] = swift_task_alloc();
  sub_265D58130();
  v3[37] = swift_task_alloc();
  v5 = sub_265D59090();
  v3[38] = v5;
  v3[39] = *(v5 - 8);
  v3[40] = swift_task_alloc();
  v6 = sub_265D58B10();
  v3[41] = v6;
  v3[42] = *(v6 - 8);
  v3[43] = swift_task_alloc();
  v7 = sub_265D59DE0();
  v3[44] = v7;
  v3[45] = *(v7 - 8);
  v3[46] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF10, &qword_265D5B100);
  v3[47] = v8;
  v3[48] = *(v8 - 8);
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = type metadata accessor for DistributedSessionPublisher.State(0);
  v3[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265D3EA54, a2, 0);
}

uint64_t sub_265D3EA54()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 376);
  v3 = *(v0 + 384);
  v4 = *(v0 + 64);
  v5 = OBJC_IVAR____TtC22SeymourSessionServices27DistributedSessionPublisher_state;
  swift_beginAccess();
  (*(v3 + 16))(v1, v4 + v5, v2);
  v6 = (*(v3 + 88))(v1, v2);
  if (v6 == *MEMORY[0x277D4F250])
  {
    v62 = v5;
    v63 = v4;
    v64 = v6;
    v7 = *(v0 + 416);
    v8 = *(v0 + 400);
    v9 = *(v0 + 344);
    v71 = *(v0 + 336);
    v72 = *(v0 + 328);
    v75 = *(v0 + 312);
    v73 = *(v0 + 320);
    v74 = *(v0 + 304);
    v10 = *(v0 + 288);
    v11 = *(v0 + 272);
    v12 = *(v0 + 280);
    v13 = *(v0 + 264);
    v91 = *(v0 + 240);
    v92 = *(v0 + 248);
    v89 = *(v0 + 224);
    v90 = *(v0 + 232);
    v87 = *(v0 + 208);
    v88 = *(v0 + 216);
    v85 = *(v0 + 192);
    v86 = *(v0 + 200);
    v83 = *(v0 + 256);
    v84 = *(v0 + 184);
    v82 = *(v0 + 176);
    v80 = *(v0 + 160);
    v81 = *(v0 + 168);
    v78 = *(v0 + 144);
    v79 = *(v0 + 152);
    v76 = *(v0 + 128);
    v77 = *(v0 + 136);
    v65 = *(v0 + 120);
    v66 = *(v0 + 112);
    v67 = *(v0 + 104);
    v68 = *(v0 + 96);
    v69 = *(v0 + 88);
    v70 = *(v0 + 80);
    (*(*(v0 + 384) + 96))(v8, *(v0 + 376));
    sub_265D41F9C(v8, v7);
    sub_265D59180();
    sub_265D59190();
    sub_265D5A030();
    sub_265D58AD0();
    swift_getObjectType();
    sub_265D5A4C0();
    sub_265CD9C34();
    sub_265D58CF0();

    v14 = sub_265D58020();
    (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
    v15 = sub_265D58410();
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
    v16 = sub_265D58590();
    (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
    v17 = sub_265D58050();
    (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
    v18 = sub_265D58200();
    (*(*(v18 - 8) + 56))(v83, 1, 1, v18);
    v19 = sub_265D58BC0();
    (*(*(v19 - 8) + 56))(v92, 1, 1, v19);
    v20 = sub_265D583E0();
    (*(*(v20 - 8) + 56))(v91, 1, 1, v20);
    v21 = sub_265D581B0();
    (*(*(v21 - 8) + 56))(v90, 1, 1, v21);
    v22 = sub_265D57F50();
    (*(*(v22 - 8) + 56))(v89, 1, 1, v22);
    v23 = sub_265D582A0();
    (*(*(v23 - 8) + 56))(v88, 1, 1, v23);
    v24 = sub_265D58680();
    (*(*(v24 - 8) + 56))(v87, 1, 1, v24);
    v25 = sub_265D58210();
    (*(*(v25 - 8) + 56))(v86, 1, 1, v25);
    v26 = sub_265D57E80();
    (*(*(v26 - 8) + 56))(v85, 1, 1, v26);
    v27 = sub_265D58430();
    (*(*(v27 - 8) + 56))(v84, 1, 1, v27);
    v28 = sub_265D58300();
    (*(*(v28 - 8) + 56))(v82, 1, 1, v28);
    v29 = sub_265D586F0();
    (*(*(v29 - 8) + 56))(v81, 1, 1, v29);
    v30 = sub_265D57E90();
    (*(*(v30 - 8) + 56))(v80, 1, 1, v30);
    v31 = sub_265D581C0();
    (*(*(v31 - 8) + 56))(v79, 1, 1, v31);
    v32 = sub_265D58BB0();
    (*(*(v32 - 8) + 56))(v78, 1, 1, v32);
    v33 = sub_265D585C0();
    (*(*(v33 - 8) + 56))(v77, 1, 1, v33);
    v34 = sub_265D57EA0();
    (*(*(v34 - 8) + 56))(v76, 1, 1, v34);
    v35 = sub_265D57ED0();
    (*(*(v35 - 8) + 56))(v65, 1, 1, v35);
    v36 = sub_265D58240();
    (*(*(v36 - 8) + 56))(v66, 1, 1, v36);
    v37 = sub_265D58400();
    (*(*(v37 - 8) + 56))(v67, 1, 1, v37);
    v38 = sub_265D58600();
    (*(*(v38 - 8) + 56))(v68, 1, 1, v38);
    v39 = sub_265D58630();
    (*(*(v39 - 8) + 56))(v69, 1, 1, v39);
    (*(v71 + 16))(v70, v9, v72);
    (*(v71 + 56))(v70, 0, 1, v72);
    sub_265D5A030();
    sub_265D580B0();
    sub_265D59080();
    sub_265D58ED0();
    (*(v75 + 8))(v73, v74);
    v40 = sub_265D58B00();
    *(v0 + 424) = v40;
    *(v0 + 428) = BYTE4(v40) & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E5E8, &qword_265D5C088);
    sub_265D57F80();
    v41 = *(v0 + 429);
    if (v41 < 3 || v41 == 5)
    {
      v42 = *(v0 + 416);
      (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));
      sub_265CDA484(v42);
    }

    else
    {
      v52 = *(v0 + 416);
      v54 = *(v0 + 384);
      v53 = *(v0 + 392);
      v55 = *(v0 + 376);
      v56 = *(v0 + 336);
      v93 = *(v0 + 344);
      v57 = *(v0 + 328);
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E618, "fw");
      v59 = *(v58 + 80);
      v60 = *(v58 + 96);
      *v53 = sub_265CD9C34();
      v53[1] = sub_265CD9E44();
      v53[2] = sub_265CD9F80();
      sub_265CDA0C4(v53 + v59);
      v61 = sub_265CDA21C();
      (*(v56 + 8))(v93, v57);
      sub_265CDA484(v52);
      *(v53 + v60) = v61;
      swift_storeEnumTagMultiPayload();
      (*(v54 + 104))(v53, v64, v55);
      swift_beginAccess();
      (*(v54 + 40))(v63 + v62, v53, v55);
      swift_endAccess();
    }
  }

  else
  {
    (*(*(v0 + 384) + 8))(*(v0 + 400), *(v0 + 376));
    sub_265D595F0();
    v43 = sub_265D59DD0();
    v44 = sub_265D5A070();
    v45 = os_log_type_enabled(v43, v44);
    v47 = *(v0 + 360);
    v46 = *(v0 + 368);
    v48 = *(v0 + 352);
    if (v45)
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_265C01000, v43, v44, "DistributedSessionPublisher - No active session to update elapsed time.", v49, 2u);
      MEMORY[0x266770CF0](v49, -1, -1);
    }

    (*(v47 + 8))(v46, v48);
  }

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_265D3F814()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC22SeymourSessionServices27DistributedSessionPublisher_lock;
  v2 = sub_265D59930();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC22SeymourSessionServices27DistributedSessionPublisher_state;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF10, &qword_265D5B100);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void sub_265D3F920(uint64_t a1)
{
  sub_265D59930();
  if (v1 <= 0x3F)
  {
    sub_265D3FA2C(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_265D3FA2C(uint64_t a1)
{
  if (!qword_28003E9D8)
  {
    type metadata accessor for DistributedSessionPublisher.State(255);
    v1 = sub_265D590F0();
    if (!v2)
    {
      atomic_store(v1, &qword_28003E9D8);
    }
  }
}

void sub_265D3FAA4(uint64_t a1)
{
  sub_265D3FB18(319);
  if (v1 <= 0x3F)
  {
    sub_265D3FD38(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_265D3FB18(uint64_t a1)
{
  if (!qword_28003E9F0)
  {
    MEMORY[0x28223BE20](a1);
    sub_265D58D00();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28003E9F8, ">X");
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28003EA00, &unk_265D5E018);
    sub_265D3FCEC();
    sub_265D59220();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28003E5E0, &qword_265D5C080);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28003EA08, &qword_265D5E028);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_28003E9F0);
    }
  }
}

unint64_t sub_265D3FCEC()
{
  result = qword_2813B6CD0;
  if (!qword_2813B6CD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813B6CD0);
  }

  return result;
}

void sub_265D3FD38(uint64_t a1)
{
  if (!qword_28003EA10)
  {
    MEMORY[0x28223BE20](a1);
    sub_265D58D00();
    sub_265D3FCEC();
    sub_265D59220();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28003E5E0, &qword_265D5C080);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28003EA08, &qword_265D5E028);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_28003EA10);
    }
  }
}

uint64_t sub_265D3FEDC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SeymourSessionServices27DistributedSessionPublisher_state;
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF10, &qword_265D5B100);
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_265D3FF70(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SeymourSessionServices27DistributedSessionPublisher_state;
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DF10, &qword_265D5B100);
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_265D40070(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_265C978E0;

  return sub_265D2DB08(a1);
}

uint64_t sub_265D40104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for DistributedSessionPublisher(0);
  *v8 = v4;
  v8[1] = sub_265C978E0;

  return MEMORY[0x2821AE8E0](a1, a2, v9, a4);
}

uint64_t sub_265D401CC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_265C96620;

  return sub_265D32104(a1, a2);
}

uint64_t sub_265D40270(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_265C978E0;

  return sub_265D32558(a1, a2);
}

uint64_t sub_265D40314(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_265C978E0;

  return sub_265D32A78(a1, a2);
}

uint64_t sub_265D403B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for DistributedSessionPublisher(0);
  *v8 = v4;
  v8[1] = sub_265C978E0;

  return MEMORY[0x2821AE8E8](a1, a2, v9, a4);
}

uint64_t sub_265D40480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = type metadata accessor for DistributedSessionPublisher(0);
  *v6 = v3;
  v6[1] = sub_265C978E0;

  return MEMORY[0x2821AE8D8](a1, v7, a3);
}

uint64_t sub_265D40538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = type metadata accessor for DistributedSessionPublisher(0);
  *v6 = v3;
  v6[1] = sub_265C978E0;

  return MEMORY[0x2821AE8C8](a1, v7, a3);
}

uint64_t sub_265D405F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = type metadata accessor for DistributedSessionPublisher(0);
  *v6 = v3;
  v6[1] = sub_265C978E0;

  return MEMORY[0x2821AE8D0](a1, v7, a3);
}

uint64_t sub_265D406A8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SeymourSessionServices27DistributedSessionPublisher_lock;
  swift_beginAccess();
  v4 = sub_265D59930();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_265D40730(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SeymourSessionServices27DistributedSessionPublisher_lock;
  swift_beginAccess();
  v4 = sub_265D59930();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_265D40868(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_265D408F8(void *result, uint64_t a2, void *a3, uint64_t (*a4)(char *, uint64_t *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_265D40BB0(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_265D40988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA58, &unk_265D5E260) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DE90, &qword_265D5B0C8) + 48);
  v6 = *(a1 + v4);
  v7 = sub_265D57E30();
  result = (*(*(v7 - 8) + 16))(a2, a1, v7);
  *(a2 + v5) = v6;
  return result;
}

void *sub_265D40A30(uint64_t (*a1)(char *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = *(a3 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v9 = v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = sub_265D40BB0(v9, v7, a3, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v11 = swift_slowAlloc();
  v12 = sub_265D408F8(v11, v7, a3, v5);
  result = MEMORY[0x266770CF0](v11, -1, -1);
  if (!v3)
  {
    return v12;
  }

  return result;
}

uint64_t sub_265D40BB0(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(char *, uint64_t *))
{
  v34 = a4;
  v28 = a2;
  v29 = a1;
  v37 = sub_265D57E30();
  result = MEMORY[0x28223BE20](v37);
  v35 = a3;
  v36 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v11 = a3[8];
  v10 = a3 + 8;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v32 = v6 + 16;
  v33 = v6;
  v30 = 0;
  v31 = (v6 + 8);
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v17 = v16 | (v8 << 6);
    v18 = v36;
    v19 = v37;
LABEL_11:
    v22 = v35;
    (*(v33 + 16))(v18, v35[6] + *(v33 + 72) * v17, v19);
    v39 = *(v22[7] + 8 * v17);
    v23 = v38;
    v24 = v34(v18, &v39);
    v38 = v23;
    if (v23)
    {
      return (*v31)(v18, v19);
    }

    v25 = v24;
    result = (*v31)(v18, v19);
    if (v25)
    {
      *(v29 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v30++, 1))
      {
        __break(1u);
        return sub_265D40E08(v29, v28, v30, v35);
      }
    }
  }

  v20 = v8;
  v18 = v36;
  v19 = v37;
  while (1)
  {
    v8 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v8 >= v15)
    {
      return sub_265D40E08(v29, v28, v30, v35);
    }

    v21 = v10[v8];
    ++v20;
    if (v21)
    {
      v14 = (v21 - 1) & v21;
      v17 = __clz(__rbit64(v21)) | (v8 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_265D40E08(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v45 = sub_265D57E30();
  v43 = *(v45 - 8);
  v8 = MEMORY[0x28223BE20](v45);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v40 = v37 - v11;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DE98, &qword_265D5B0D0);
  result = sub_265D5A2E0();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v37[1] = v43 + 16;
  v38 = result;
  v44 = v43 + 32;
  v16 = result + 64;
  v39 = a1;
  v37[0] = a4;
  v17 = v45;
  while (v14)
  {
    v18 = v10;
    v19 = __clz(__rbit64(v14));
    v41 = (v14 - 1) & v14;
LABEL_16:
    v22 = v19 | (v15 << 6);
    v23 = a4[6];
    v24 = v43;
    v42 = *(v43 + 72);
    v25 = v40;
    (*(v43 + 16))(v40, v23 + v42 * v22, v17);
    v26 = *(a4[7] + 8 * v22);
    v27 = *(v24 + 32);
    v10 = v18;
    v27(v18, v25, v17);
    v13 = v38;
    sub_265D40868(&qword_2813B9020, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    result = sub_265D59E60();
    v28 = -1 << *(v13 + 32);
    v29 = result & ~v28;
    v30 = v29 >> 6;
    if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
    {
      v32 = 0;
      v33 = (63 - v28) >> 6;
      a1 = v39;
      while (++v30 != v33 || (v32 & 1) == 0)
      {
        v34 = v30 == v33;
        if (v30 == v33)
        {
          v30 = 0;
        }

        v32 |= v34;
        v35 = *(v16 + 8 * v30);
        if (v35 != -1)
        {
          v31 = __clz(__rbit64(~v35)) + (v30 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v31 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
    a1 = v39;
LABEL_26:
    *(v16 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    result = (v27)(*(v13 + 48) + v31 * v42, v10, v45);
    *(*(v13 + 56) + 8 * v31) = v26;
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v37[0];
    v14 = v41;
    if (!a3)
    {
      return v13;
    }
  }

  v20 = v15;
  while (1)
  {
    v15 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v21 = a1[v15];
    ++v20;
    if (v21)
    {
      v18 = v10;
      v19 = __clz(__rbit64(v21));
      v41 = (v21 - 1) & v21;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_265D411A0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA58, &unk_265D5E260);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v39 = &v39 - v4;
  v5 = sub_265D57E30();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA40, &qword_265D5E240);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v43 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v14 = &v39 - v13;
  v15 = *v1;
  v16 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v44 = a1;
  v42 = v18;
  if (v19)
  {
    v20 = v17;
LABEL_10:
    v24 = (v19 - 1) & v19;
    v25 = __clz(__rbit64(v19)) | (v20 << 6);
    (*(v6 + 16))(v8, *(v15 + 48) + *(v6 + 72) * v25, v5);
    v26 = *(*(v15 + 56) + 8 * v25);
    v27 = *(v41 + 48);
    v28 = v8;
    v29 = v41;
    (*(v6 + 32))(v14, v28, v5);
    *&v14[v27] = v26;
    v30 = v40;
    (*(v40 + 56))(v14, 0, 1, v29);
    v23 = v20;
LABEL_11:
    *v1 = v15;
    v1[1] = v16;
    v31 = v43;
    v1[2] = v42;
    v1[3] = v23;
    v1[4] = v24;
    v32 = v1[5];
    sub_265D42374(v14, v31, &qword_28003EA40, &qword_265D5E240);
    v33 = 1;
    v34 = (*(v30 + 48))(v31, 1, v29);
    v35 = v44;
    if (v34 != 1)
    {
      v36 = v31;
      v37 = v39;
      sub_265D42374(v36, v39, &qword_28003EA58, &unk_265D5E260);
      v32(v37);
      sub_265CA4AE8(v37, &qword_28003EA58, &unk_265D5E260);
      v33 = 0;
    }

    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DE90, &qword_265D5B0C8);
    return (*(*(v38 - 8) + 56))(v35, v33, 1, v38);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v30 = v40;
        v29 = v41;
        (*(v40 + 56))(&v39 - v13, 1, 1, v41);
        v24 = 0;
        goto LABEL_11;
      }

      v19 = *(v16 + 8 * v20);
      ++v17;
      if (v19)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_265D41574(uint64_t a1)
{
  v2 = sub_265D59DE0();
  v47 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_265D581A0();
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x28223BE20](v5);
  v43 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E2F8, &qword_265D5B680);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v40 - v11;
  v46 = a1;
  sub_265D58A70();
  v13 = sub_265D58600();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (v15(v12, 1, v13) == 1)
  {
    sub_265CA4AE8(v12, &qword_28003E2F8, &qword_265D5B680);
    v16 = 0;
    goto LABEL_8;
  }

  v41 = v4;
  v42 = v2;
  v17 = sub_265D585E0();
  v19 = v18;
  v21 = v20;
  v40 = *(v14 + 8);
  v40(v12, v13);
  v50 = v17;
  v51 = v19;
  v52 = v21 & 1;
  v48 = xmmword_265D5B470;
  v49 = 1;
  sub_265CA48E8();
  sub_265CA493C();
  v22 = sub_265D57F90();
  sub_265C037E8(v50, v51, v52);
  if (v22)
  {
    sub_265D58A70();
    if (v15(v10, 1, v13) != 1)
    {
      v29 = sub_265D585F0();
      v31 = v30;
      v40(v10, v13);
      v50 = v29;
      LOBYTE(v51) = v31 & 1;
      *&v48 = 0;
      BYTE8(v48) = 1;
      sub_265CEB398();
      sub_265CEB3EC();
      v32 = sub_265D57F90();
      v2 = v42;
      if (v32)
      {
        v33 = v43;
        sub_265D58A10();
        v34 = sub_265D58190();
        v36 = v35;
        v38 = v37;
        (*(v44 + 8))(v33, v45);
        v50 = v34;
        v51 = v36;
        v38 &= 1u;
        v52 = v38;
        v48 = xmmword_265D5BC50;
        v49 = 1;
        sub_265CD4AAC();
        sub_265CD4B00();
        v39 = sub_265D57F90();
        sub_265C037E8(v34, v36, v38);
        v16 = v39 ^ 1;
      }

      else
      {
        v16 = 0;
      }

      goto LABEL_7;
    }

    sub_265CA4AE8(v10, &qword_28003E2F8, &qword_265D5B680);
  }

  v16 = 0;
  v2 = v42;
LABEL_7:
  v4 = v41;
LABEL_8:
  sub_265D595F0();
  v23 = sub_265D59DD0();
  v24 = sub_265D5A080();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = v4;
    v26 = swift_slowAlloc();
    *v26 = 67109120;
    *(v26 + 4) = v16 & 1;
    _os_log_impl(&dword_265C01000, v23, v24, "DistributedSessionPublisher - shouldStartSession - %{BOOL}d", v26, 8u);
    v27 = v26;
    v4 = v25;
    MEMORY[0x266770CF0](v27, -1, -1);
  }

  (*(v47 + 8))(v4, v2);
  return v16 & 1;
}

uint64_t sub_265D41A64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_265C978E0;

  return sub_265D2EA88(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_265D41B24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_265C978E0;

  return sub_265D2F4B8(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_265D41BE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_265C978E0;

  return sub_265D2FEE8(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_265D41CA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_265C978E0;

  return sub_265D30918(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_265D41D64(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_265C96620;

  return sub_265D312F4(a1, v1);
}

void sub_265D41E08(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_265D41E14(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_265C978E0;

  return sub_265D31BC4(a1, v4, v5, v6, v7, v8);
}

id sub_265D41EDC(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_265D41EE8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_265C978E0;

  return sub_265D36CDC(a1, v4, v5, v6);
}

uint64_t sub_265D41F9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DistributedSessionPublisher.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_265D42000(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v43 = sub_265D57E30();
  v10 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA48, &qword_265D5E248);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v40 - v14;
  v16 = -1 << *(a1 + 32);
  v17 = ~v16;
  v18 = *(a1 + 64);
  v19 = -v16;
  v44 = a1;
  v45 = a1 + 64;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v46 = v17;
  v47 = 0;
  v48 = v20 & v18;
  v49 = a2;
  v50 = a3;
  v21 = (v10 + 32);
  v41 = (v10 + 8);
  v42 = v10;

  v40 = a3;

  while (1)
  {
    sub_265D411A0(v15);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DE90, &qword_265D5B0C8);
    if ((*(*(v22 - 8) + 48))(v15, 1, v22) == 1)
    {
      sub_265D4236C(v44);
    }

    v23 = *(v22 + 48);
    v24 = *v21;
    (*v21)(v12, v15, v43);
    v25 = *&v15[v23];
    v26 = *a5;
    v28 = sub_265CE2CC4(v12);
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      break;
    }

    v32 = v27;
    if (v26[3] >= v31)
    {
      if (a4)
      {
        v35 = *a5;
        if ((v27 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_265CE6318();
        v35 = *a5;
        if ((v32 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:
      (*v41)(v12, v43);
      *(v35[7] + 8 * v28) = v25;
      a4 = 1;
    }

    else
    {
      sub_265CE4278(v31, a4 & 1);
      v33 = sub_265CE2CC4(v12);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_21;
      }

      v28 = v33;
      v35 = *a5;
      if (v32)
      {
        goto LABEL_5;
      }

LABEL_14:
      v35[(v28 >> 6) + 8] |= 1 << v28;
      v24((v35[6] + *(v42 + 72) * v28), v12, v43);
      *(v35[7] + 8 * v28) = v25;
      v36 = v35[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_20;
      }

      v35[2] = v38;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_265D5A3F0();
  __break(1u);
  return result;
}

uint64_t sub_265D42374(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_265D423DC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_265C978E0;

  return sub_265D350E0(a1, v5, v4);
}

uint64_t sub_265D42488(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_265C978E0;

  return sub_265D3E220(a1, v5, v4);
}

uint64_t sub_265D42534(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_265C978E0;

  return sub_265D3CE24(a1, v5, v4);
}

uint64_t sub_265D425E0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_265C96620;

  return sub_265D3BA40(a1, v5, v4);
}

uint64_t sub_265D4268C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_265C978E0;

  return sub_265D3A658(a1, v5, v4);
}

uint64_t getEnumTagSinglePayload for TimestampOffsetResult(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TimestampOffsetResult(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_265D42790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a1;
  v22 = a2;
  v24 = a3;
  v23 = sub_265D58F70();
  v3 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_265D58AC0();
  v6 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_265D58670();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_265D59DE0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595F0();
  sub_265D59DC0();
  (*(v14 + 8))(v16, v13);
  (*(v6 + 16))(v8, v21, v20);
  sub_265D58650();
  swift_getObjectType();
  v17 = v23;
  (*(v3 + 104))(v5, *MEMORY[0x277D4EBE0], v23);
  sub_265D58C50();
  (*(v3 + 8))(v5, v17);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_265D42ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_265D58AC0();
  v28 = *(v3 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v3);
  v5 = sub_265D581A0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D58A10();
  v9 = sub_265D58190();
  v11 = v10;
  v13 = v12;
  (*(v6 + 8))(v8, v5);
  if (v13)
  {
    v14 = v29;
    v15 = sub_265D58B60();
    if (v15 == sub_265D58B60())
    {
      return sub_265D58970();
    }

    else
    {
      v20 = sub_265D58B50();
      v22 = v21;
      v23 = v28;
      (*(v28 + 16))(&v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
      v24 = (*(v23 + 80) + 24) & ~*(v23 + 80);
      v25 = swift_allocObject();
      *(v25 + 16) = v14;
      (*(v23 + 32))(v25 + v24, &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
      v26 = (v25 + ((v4 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v26 = v20;
      v26[1] = v22;

      return sub_265D58930();
    }
  }

  else
  {
    sub_265CA4B90(v9, v11, 0);
    v17 = sub_265D57FE0();
    sub_265D284E8();
    v18 = swift_allocError();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D50390], v17);
    *(swift_allocObject() + 16) = v18;
    return sub_265D58940();
  }
}

uint64_t sub_265D42E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_265D59DE0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v18[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;

  sub_265D595E0();
  sub_265D59DC0();
  (*(v13 + 8))(v15, v12);
  v19 = a3;
  v20 = a4;
  v21 = sub_265CD757C;
  v22 = v16;
  v23 = a5;
  v24 = a6;
  sub_265D58CA0();
}

void sub_265D42FAC(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v57 = a5;
  v58 = a6;
  v70 = a4;
  v71 = a3;
  v66 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0);
  v62 = *(v7 - 8);
  v63 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v60 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v68 = &v55 - v11;
  v59 = v12;
  MEMORY[0x28223BE20](v10);
  v61 = &v55 - v13;
  v14 = sub_265D58AC0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v65 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E480, &qword_265D5B940);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v56 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v55 - v20;
  v69 = sub_265D57DA0();
  v64 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v67 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DistributedSessionCoordinator.State(0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DDF0, &qword_265D5AFA0);
  v27 = &v25[*(v26 + 48)];
  v28 = *(v15 + 16);
  v28(v25, a2, v14);
  v29 = v70;
  *v27 = v71;
  v27[1] = v29;
  (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
  v30 = OBJC_IVAR____TtC22SeymourSessionServices29DistributedSessionCoordinator_state;
  v31 = v66;
  swift_beginAccess();

  sub_265D44274(v25, v31 + v30);
  swift_endAccess();
  v28(v65, a2, v14);
  sub_265D57D70();
  v32 = v64;
  v33 = v69;
  if ((*(v64 + 48))(v21, 1) == 1)
  {
    sub_265D4440C(v21);
    v34 = sub_265D57FE0();
    sub_265D284E8();
    v35 = swift_allocError();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D50360], v34);
    v71(v35, 1);
  }

  else
  {
    v37 = v67;
    (*(v32 + 32))(v67, v21, v33);
    __swift_project_boxed_opaque_existential_1((v31 + 16), *(v31 + 40));
    v38 = v56;
    (*(v32 + 16))(v56, v37, v33);
    (*(v32 + 56))(v38, 0, 1, v33);
    v39 = v68;
    sub_265D59970();
    sub_265D4440C(v38);
    v40 = swift_allocObject();
    v41 = v70;
    *(v40 + 16) = v71;
    *(v40 + 24) = v41;
    v42 = swift_allocObject();
    *(v42 + 16) = sub_265D44474;
    *(v42 + 24) = v40;
    v43 = v62;
    v44 = v60;
    v45 = v39;
    v46 = v63;
    (*(v62 + 16))(v60, v45, v63);
    v47 = (*(v43 + 80) + 16) & ~*(v43 + 80);
    v48 = (v59 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
    v49 = swift_allocObject();
    (*(v43 + 32))(v49 + v47, v44, v46);
    v50 = (v49 + v48);
    *v50 = sub_265D0F264;
    v50[1] = v42;

    v51 = v61;
    sub_265D58930();
    v52 = *(v43 + 8);
    v52(v68, v46);
    v53 = sub_265D58960();
    v54 = swift_allocObject();
    *(v54 + 16) = 0;
    *(v54 + 24) = 0;
    v53(sub_265CA442C, v54);

    v52(v51, v46);
    (*(v32 + 8))(v67, v69);
  }
}

uint64_t sub_265D436A0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  sub_265D442D8(v0 + OBJC_IVAR____TtC22SeymourSessionServices29DistributedSessionCoordinator_state);

  return swift_deallocClassInstance();
}

uint64_t sub_265D4373C(uint64_t a1)
{
  result = type metadata accessor for DistributedSessionCoordinator.State(319);
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

uint64_t sub_265D43838(uint64_t a1)
{
  sub_265D43890(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_265D43890(uint64_t a1)
{
  if (!qword_2813B8FF8)
  {
    sub_265D58AC0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28003E3B8, &qword_265D5DDA0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813B8FF8);
    }
  }
}

uint64_t sub_265D4390C(uint64_t a1)
{
  v2 = type metadata accessor for DistributedSessionCoordinator.State(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DDF0, &qword_265D5AFA0);
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC22SeymourSessionServices29DistributedSessionCoordinator_state;
  swift_beginAccess();
  sub_265D44274(v4, a1 + v6);
  return swift_endAccess();
}

uint64_t sub_265D43A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_265D59DE0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_265D595E0();
  sub_265D59DC0();
  (*(v7 + 8))(v9, v6);
  v12 = a1;
  v13 = a2;
  v14 = a3;
  sub_265D58AC0();
  return sub_265D58CA0();
}

uint64_t sub_265D43B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v60 = a3;
  v64 = sub_265D59DE0();
  v61 = *(v64 - 8);
  v7 = MEMORY[0x28223BE20](v64);
  v58 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v51 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v51 - v12;
  v14 = type metadata accessor for DistributedSessionCoordinator.State(0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v51 - v18;
  v20 = OBJC_IVAR____TtC22SeymourSessionServices29DistributedSessionCoordinator_state;
  swift_beginAccess();
  v59 = a1;
  sub_265D44210(a1 + v20, v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003DDF0, &qword_265D5AFA0);
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v19, 1, v21) == 1)
  {
    sub_265D595E0();
    v23 = sub_265D59DD0();
    v24 = sub_265D5A070();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_265C01000, v23, v24, "No session to activate", v25, 2u);
      MEMORY[0x266770CF0](v25, -1, -1);
    }

    (*(v61 + 8))(v13, v64);
    v26 = sub_265D57FE0();
    sub_265D284E8();
    swift_allocError();
    (*(*(v26 - 8) + 104))(v27, *MEMORY[0x277D50358], v26);
    return swift_willThrow();
  }

  v29 = &v19[*(v21 + 48)];
  v31 = *v29;
  v30 = *(v29 + 1);
  v55 = v31;
  v56 = v17;
  v57 = v30;
  v32 = sub_265D58AC0();
  v53 = *(v32 - 8);
  (*(v53 + 32))(a4, v19, v32);
  v33 = sub_265D589D0();
  v54 = a2;
  if (v33 == a2 && v34 == v60)
  {

    v35 = v60;
LABEL_9:
    sub_265D595E0();

    v37 = sub_265D59DD0();
    v38 = sub_265D5A080();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v62 = v40;
      *v39 = 136446210;
      *(v39 + 4) = sub_265CF4FFC(v54, v35, &v62);
      _os_log_impl(&dword_265C01000, v37, v38, "Activating distributed session: %{public}s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x266770CF0](v40, -1, -1);
      MEMORY[0x266770CF0](v39, -1, -1);
    }

    (*(v61 + 8))(v11, v64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E390, &qword_265D5B8D0);
    sub_265D5A4B0();
    v41 = v62;
    v42 = v63;
    v55(v62, v63);

    sub_265CA4470(v41, v42);
    v43 = v56;
    (*(v22 + 56))(v56, 1, 1, v21);
    v44 = v59;
    swift_beginAccess();
    sub_265D44274(v43, v44 + v20);
    return swift_endAccess();
  }

  v52 = a4;
  v35 = v60;
  v36 = sub_265D5A3C0();

  if (v36)
  {
    goto LABEL_9;
  }

  v45 = v58;
  sub_265D595E0();
  v46 = sub_265D59DD0();
  v47 = sub_265D5A070();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_265C01000, v46, v47, "Session identifier mismatch, cannot activate", v48, 2u);
    MEMORY[0x266770CF0](v48, -1, -1);
  }

  (*(v61 + 8))(v45, v64);
  v49 = sub_265D57FE0();
  sub_265D284E8();
  swift_allocError();
  (*(*(v49 - 8) + 104))(v50, *MEMORY[0x277D50338], v49);
  swift_willThrow();

  return (*(v53 + 8))(v52, v32);
}

uint64_t sub_265D44210(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DistributedSessionCoordinator.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265D44274(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DistributedSessionCoordinator.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_265D442D8(uint64_t a1)
{
  v2 = type metadata accessor for DistributedSessionCoordinator.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265D44334(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_265D58AC0() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_265D42E04(a1, a2, v7, v2 + v6, v9, v10);
}

uint64_t sub_265D4440C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003E480, &qword_265D5B940);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265D444A8(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003E1F0, &qword_265D5B8B0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_265D4A454(a1, a2, v2 + v6, v8, v9);
}

void *sub_265D44564()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_265D445BC()
{
  sub_265D44564();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for SessionConnectionPool.MultiplexMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SessionConnectionPool.MultiplexMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_265D44768()
{
  result = qword_28003EA68;
  if (!qword_28003EA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003EA68);
  }

  return result;
}

uint64_t sub_265D447C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_265D59DE0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595F0();
  sub_265D59DC0();
  (*(v9 + 8))(v11, v8);
  a1[15] = a2;
  a1[16] = a3;
  a1[17] = a4;
  swift_unknownObjectRelease();
  return swift_unknownObjectRetain();
}

uint64_t sub_265D44900(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_265D59DE0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595F0();
  sub_265D59DC0();
  (*(v9 + 8))(v11, v8);
  a1[18] = a2;
  a1[19] = a3;
  a1[20] = a4;
  swift_unknownObjectRelease();
  return swift_unknownObjectRetain();
}

uint64_t sub_265D44A38(uint64_t a1, uint64_t a2, double a3)
{
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a1 + 176);
  *(a1 + 176) = 0x8000000000000000;
  sub_265CE5740(a2, isUniquelyReferenced_nonNull_native, a3);
  *(a1 + 176) = v8;
  return swift_endAccess();
}

uint64_t sub_265D44AD0(void *a1)
{
  v2 = sub_265D59DE0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595F0();
  sub_265D59DC0();
  (*(v3 + 8))(v5, v2);
  a1[16] = 0;
  a1[17] = 0;
  a1[15] = 0;
  swift_unknownObjectRelease();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1[22];
  a1[22] = 0x8000000000000000;
  sub_265CE5740(2, isUniquelyReferenced_nonNull_native, 0.0);
  a1[22] = v9;
  return swift_endAccess();
}

uint64_t sub_265D44C40(void *a1)
{
  v2 = sub_265D59DE0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265D595F0();
  sub_265D59DC0();
  (*(v3 + 8))(v5, v2);
  a1[19] = 0;
  a1[20] = 0;
  a1[18] = 0;
  swift_unknownObjectRelease();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1[22];
  a1[22] = 0x8000000000000000;
  sub_265CE5740(3, isUniquelyReferenced_nonNull_native, 0.0);
  a1[22] = v9;
  return swift_endAccess();
}

uint64_t sub_265D44DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a1 + 168);
  if (v5 <= 1)
  {
    if (*(a1 + 168))
    {
      if (a2 > 2u)
      {
        if (a2 == 3)
        {
LABEL_17:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA78, &unk_265D5E570);
          v12 = swift_allocObject();
          v13 = *(a1 + 112);
          v14 = *(a1 + 96);
          *(v12 + 16) = xmmword_265D5AF60;
          *(v12 + 32) = v14;
          v15 = v12;
          *(v12 + 48) = v13;
LABEL_20:
          swift_unknownObjectRetain();
          result = v15;
          goto LABEL_21;
        }
      }

      else if (a2 - 1 < 2)
      {
        result = MEMORY[0x277D84F90];
        goto LABEL_21;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA78, &unk_265D5E570);
      v7 = swift_allocObject();
      v16 = *(a1 + 112);
      v17 = *(a1 + 96);
      *(v7 + 16) = xmmword_265D5E440;
      *(v7 + 32) = v17;
      *(v7 + 48) = v16;
      v10 = *(a1 + 88);
      v11 = *(a1 + 72);
    }

    else
    {
      result = MEMORY[0x277D84F90];
      if (a2 > 1u)
      {
        if (a2 == 3)
        {
          goto LABEL_21;
        }

        goto LABEL_17;
      }

      if (a2)
      {
        goto LABEL_21;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA78, &unk_265D5E570);
      v7 = swift_allocObject();
      v8 = *(a1 + 112);
      v9 = *(a1 + 96);
      *(v7 + 16) = xmmword_265D5E440;
      *(v7 + 32) = v9;
      *(v7 + 48) = v8;
      v10 = *(a1 + 64);
      v11 = *(a1 + 48);
    }

    *(v7 + 56) = v11;
    v15 = v7;
    *(v7 + 72) = v10;
    swift_unknownObjectRetain();
    goto LABEL_20;
  }

  if (v5 == 2)
  {
    result = sub_265D452AC(a2);
  }

  else if (v5 == 3)
  {
    result = sub_265D44F70(a2);
  }

  else
  {
    result = sub_265D45668(a2);
  }

LABEL_21:
  *a3 = result;
  return result;
}

uint64_t sub_265D44F70(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v21 = *(v1 + 112);
      v38 = *(v1 + 96);
      v22 = *(v1 + 136);
      v40 = *(v1 + 120);
      v39 = v21;
      v41 = v22;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v23 = 0;
      v2 = MEMORY[0x277D84F90];
LABEL_22:
      v24 = &v38 + 3 * v23;
      while (++v23 != 3)
      {
        v25 = v24 + 3;
        v26 = *v24;
        v24 += 3;
        if (v26)
        {
          v27 = *(v25 - 2);
          v28 = *(v25 - 1);
          swift_unknownObjectRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_265D46D10(0, *(v2 + 16) + 1, 1, v2);
          }

          v30 = *(v2 + 16);
          v29 = *(v2 + 24);
          if (v30 >= v29 >> 1)
          {
            v2 = sub_265D46D10((v29 > 1), v30 + 1, 1, v2);
          }

          *(v2 + 16) = v30 + 1;
          v31 = (v2 + 24 * v30);
          v31[4] = v26;
          v31[5] = v27;
          v31[6] = v28;
          goto LABEL_22;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA70, &unk_265D5E560);
LABEL_31:
      swift_arrayDestroy();
      return v2;
    }
  }

  else
  {
    if (a1 == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA78, &unk_265D5E570);
      v2 = swift_allocObject();
      v18 = *(v1 + 112);
      v19 = *(v1 + 96);
      *(v2 + 16) = xmmword_265D5E440;
      *(v2 + 32) = v19;
      *(v2 + 48) = v18;
      v20 = *(v1 + 40);
      *(v2 + 56) = *(v1 + 24);
      *(v2 + 72) = v20;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      return v2;
    }

    if (a1 == 3)
    {
      return MEMORY[0x277D84F90];
    }
  }

  v3 = *(v1 + 112);
  v32 = *(v1 + 96);
  v33 = v3;
  v4 = *(v1 + 40);
  v34 = *(v1 + 24);
  v35 = v4;
  v5 = *(v1 + 136);
  v36 = *(v1 + 120);
  v37 = v5;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  result = swift_unknownObjectRetain();
  v7 = 0;
  v2 = MEMORY[0x277D84F90];
LABEL_7:
  if (v7 <= 3)
  {
    v8 = 3;
  }

  else
  {
    v8 = v7;
  }

  v9 = v8 + 1;
  v10 = &v32 + 3 * v7;
  while (1)
  {
    if (v7 == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA70, &unk_265D5E560);
      goto LABEL_31;
    }

    if (v9 == ++v7)
    {
      break;
    }

    v11 = v10 + 3;
    v12 = *v10;
    v10 += 3;
    if (v12)
    {
      v13 = *(v11 - 2);
      v14 = *(v11 - 1);
      swift_unknownObjectRetain();
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_265D46D10(0, *(v2 + 16) + 1, 1, v2);
        v2 = result;
      }

      v16 = *(v2 + 16);
      v15 = *(v2 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_265D46D10((v15 > 1), v16 + 1, 1, v2);
        v2 = result;
      }

      *(v2 + 16) = v16 + 1;
      v17 = (v2 + 24 * v16);
      v17[4] = v12;
      v17[5] = v13;
      v17[6] = v14;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_265D452AC(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      return MEMORY[0x277D84F90];
    }
  }

  else
  {
    if (a1 == 2)
    {
      v28 = *(v1 + 112);
      v46 = *(v1 + 96);
      v29 = *(v1 + 160);
      v48 = *(v1 + 144);
      v47 = v28;
      v49 = v29;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v30 = 0;
      v5 = MEMORY[0x277D84F90];
LABEL_29:
      v31 = &v46 + 3 * v30;
      while (++v30 != 3)
      {
        v32 = v31 + 3;
        v33 = *v31;
        v31 += 3;
        if (v33)
        {
          v34 = *(v32 - 2);
          v35 = *(v32 - 1);
          swift_unknownObjectRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_265D46D10(0, v5[2] + 1, 1, v5);
          }

          v37 = v5[2];
          v36 = v5[3];
          if (v37 >= v36 >> 1)
          {
            v5 = sub_265D46D10((v36 > 1), v37 + 1, 1, v5);
          }

          v5[2] = v37 + 1;
          v38 = &v5[3 * v37];
          v38[4] = v33;
          v38[5] = v34;
          v38[6] = v35;
          goto LABEL_29;
        }
      }

      goto LABEL_37;
    }

    if (a1 == 3)
    {
      v2 = *(v1 + 112);
      v50 = *(v1 + 96);
      v3 = *(v1 + 136);
      v52 = *(v1 + 120);
      v51 = v2;
      v53 = v3;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v4 = 0;
      v5 = MEMORY[0x277D84F90];
LABEL_5:
      v6 = &v50 + 3 * v4;
      while (++v4 != 3)
      {
        v7 = v6 + 3;
        v8 = *v6;
        v6 += 3;
        if (v8)
        {
          v9 = *(v7 - 2);
          v10 = *(v7 - 1);
          swift_unknownObjectRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_265D46D10(0, v5[2] + 1, 1, v5);
          }

          v12 = v5[2];
          v11 = v5[3];
          if (v12 >= v11 >> 1)
          {
            v5 = sub_265D46D10((v11 > 1), v12 + 1, 1, v5);
          }

          v5[2] = v12 + 1;
          v13 = &v5[3 * v12];
          v13[4] = v8;
          v13[5] = v9;
          v13[6] = v10;
          goto LABEL_5;
        }
      }

LABEL_37:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA70, &unk_265D5E560);
LABEL_38:
      swift_arrayDestroy();
      return v5;
    }
  }

  v39 = *(v1 + 96);
  v41 = *(v1 + 112);
  v14 = *(v1 + 160);
  v42 = *(v1 + 144);
  v43 = v14;
  v15 = *(v1 + 136);
  v44 = *(v1 + 120);
  v45 = v15;
  v40 = v39;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  result = swift_unknownObjectRetain();
  v17 = 0;
  v5 = MEMORY[0x277D84F90];
LABEL_15:
  if (v17 <= 3)
  {
    v18 = 3;
  }

  else
  {
    v18 = v17;
  }

  v19 = v18 + 1;
  v20 = &v40 + 3 * v17;
  while (1)
  {
    if (v17 == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA70, &unk_265D5E560);
      goto LABEL_38;
    }

    if (v19 == ++v17)
    {
      break;
    }

    v21 = v20 + 3;
    v22 = *v20;
    v20 += 3;
    if (v22)
    {
      v23 = *(v21 - 2);
      v24 = *(v21 - 1);
      swift_unknownObjectRetain();
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_265D46D10(0, v5[2] + 1, 1, v5);
        v5 = result;
      }

      v26 = v5[2];
      v25 = v5[3];
      if (v26 >= v25 >> 1)
      {
        result = sub_265D46D10((v25 > 1), v26 + 1, 1, v5);
        v5 = result;
      }

      v5[2] = v26 + 1;
      v27 = &v5[3 * v26];
      v27[4] = v22;
      v27[5] = v23;
      v27[6] = v24;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_265D45668(unsigned __int8 a1)
{
  v2 = MEMORY[0x277D84F90];
  if (a1 <= 1u)
  {
    if (a1)
    {
      return v2;
    }
  }

  else
  {
    if (a1 == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA78, &unk_265D5E570);
      v2 = swift_allocObject();
      v14 = *(v1 + 112);
      v15 = *(v1 + 96);
      *(v2 + 16) = xmmword_265D5AF60;
      *(v2 + 32) = v15;
      *(v2 + 48) = v14;
      swift_unknownObjectRetain();
      return v2;
    }

    if (a1 == 3)
    {
      return v2;
    }
  }

  v3 = *(v1 + 112);
  v17 = *(v1 + 96);
  v18 = v3;
  v4 = *(v1 + 136);
  v19 = *(v1 + 120);
  v20 = v4;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v5 = 0;
LABEL_7:
  v6 = &v17 + 3 * v5;
  while (++v5 != 3)
  {
    v7 = v6 + 3;
    v8 = *v6;
    v6 += 3;
    if (v8)
    {
      v9 = *(v7 - 2);
      v10 = *(v7 - 1);
      swift_unknownObjectRetain();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_265D46D10(0, *(v2 + 16) + 1, 1, v2);
      }

      v12 = *(v2 + 16);
      v11 = *(v2 + 24);
      if (v12 >= v11 >> 1)
      {
        v2 = sub_265D46D10((v11 > 1), v12 + 1, 1, v2);
      }

      *(v2 + 16) = v12 + 1;
      v13 = (v2 + 24 * v12);
      v13[4] = v8;
      v13[5] = v9;
      v13[6] = v10;
      goto LABEL_7;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA70, &unk_265D5E560);
  swift_arrayDestroy();
  return v2;
}

uint64_t sub_265D4582C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 168);
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v23 = *(a1 + 160);
      v47 = *(a1 + 144);
      v48 = v23;
      v24 = *(a1 + 136);
      v49 = *(a1 + 120);
      v50 = v24;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v25 = 0;
      v8 = MEMORY[0x277D84F90];
LABEL_16:
      v26 = &v47 + 3 * v25;
      while (++v25 != 3)
      {
        v27 = v26 + 3;
        v28 = *v26;
        v26 += 3;
        if (v28)
        {
          v29 = *(v27 - 2);
          v30 = *(v27 - 1);
          swift_unknownObjectRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_265D46D10(0, v8[2] + 1, 1, v8);
          }

          v32 = v8[2];
          v31 = v8[3];
          v33 = v32 + 1;
          if (v32 >= v31 >> 1)
          {
            v35 = sub_265D46D10((v31 > 1), v32 + 1, 1, v8);
            v33 = v32 + 1;
            v8 = v35;
          }

          v8[2] = v33;
          v34 = &v8[3 * v32];
          v34[4] = v28;
          v34[5] = v29;
          v34[6] = v30;
          goto LABEL_16;
        }
      }
    }

    else
    {
      if (v4 != 3)
      {
        v38 = *(a1 + 128);
        v39 = *(a1 + 136);
        v51[0] = *(a1 + 120);
        v37 = v51[0];
        v51[1] = v38;
        v51[2] = v39;
        swift_unknownObjectRetain();
        if (v51[0])
        {
          swift_unknownObjectRetain();
          v8 = MEMORY[0x277D84F90];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_265D46D10(0, v8[2] + 1, 1, v8);
          }

          v41 = v8[2];
          v40 = v8[3];
          if (v41 >= v40 >> 1)
          {
            v8 = sub_265D46D10((v40 > 1), v41 + 1, 1, v8);
          }

          v8[2] = v41 + 1;
          v42 = &v8[3 * v41];
          v42[4] = v37;
          v42[5] = v38;
          v42[6] = v39;
        }

        else
        {
          v8 = MEMORY[0x277D84F90];
        }

        result = sub_265D46E84(v51);
        goto LABEL_35;
      }

      v5 = *(a1 + 40);
      v43 = *(a1 + 24);
      v44 = v5;
      v6 = *(a1 + 136);
      v45 = *(a1 + 120);
      v46 = v6;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v7 = 0;
      v8 = MEMORY[0x277D84F90];
LABEL_5:
      v9 = &v43 + 3 * v7;
      while (++v7 != 3)
      {
        v10 = v9 + 3;
        v11 = *v9;
        v9 += 3;
        if (v11)
        {
          v12 = *(v10 - 2);
          v13 = *(v10 - 1);
          swift_unknownObjectRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_265D46D10(0, v8[2] + 1, 1, v8);
          }

          v15 = v8[2];
          v14 = v8[3];
          v16 = v15 + 1;
          if (v15 >= v14 >> 1)
          {
            v18 = sub_265D46D10((v14 > 1), v15 + 1, 1, v8);
            v16 = v15 + 1;
            v8 = v18;
          }

          v8[2] = v16;
          v17 = &v8[3 * v15];
          v17[4] = v11;
          v17[5] = v12;
          v17[6] = v13;
          goto LABEL_5;
        }
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA70, &unk_265D5E560);
    result = swift_arrayDestroy();
LABEL_35:
    *a2 = v8;
    return result;
  }

  if (*(a1 + 168))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA78, &unk_265D5E570);
    v19 = swift_allocObject();
    v20 = xmmword_265D5AF60;
    v21 = *(a1 + 88);
    v22 = *(a1 + 72);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA78, &unk_265D5E570);
    v19 = swift_allocObject();
    v20 = xmmword_265D5AF60;
    v21 = *(a1 + 64);
    v22 = *(a1 + 48);
  }

  *(v19 + 16) = v20;
  *(v19 + 32) = v22;
  *(v19 + 48) = v21;
  *a2 = v19;
  return swift_unknownObjectRetain();
}

uint64_t sub_265D45BE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  if (*(a1 + 120))
  {
    v6 = *(a1 + 48);
    v44 = *(a1 + 56);
    swift_unknownObjectRetain();
    if (*(a1 + 144))
    {
LABEL_3:
      v7 = *(a1 + 72);
      v41 = *(a1 + 80);
      swift_unknownObjectRetain();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    v44 = *(a1 + 128);
    if (*(a1 + 144))
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
  v41 = *(a1 + 152);
LABEL_6:
  v8 = *(a1 + 168);
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v51 = v7;
      v52 = v41;
      v53 = v6;
      v54 = v44;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v26 = 0;
      v11 = MEMORY[0x277D84F90];
LABEL_21:
      v27 = &v51 + 3 * v26;
      while (++v26 != 3)
      {
        v28 = v27 + 3;
        v29 = *v27;
        v27 += 3;
        if (v29)
        {
          v46 = a2;
          v30 = *(v28 - 2);
          v43 = *(v28 - 1);
          swift_unknownObjectRetain();
          v31 = v3;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_265D46D10(0, v11[2] + 1, 1, v11);
          }

          v33 = v11[2];
          v32 = v11[3];
          v34 = v33 + 1;
          if (v33 >= v32 >> 1)
          {
            v57 = v33 + 1;
            v36 = sub_265D46D10((v32 > 1), v33 + 1, 1, v11);
            v34 = v57;
            v11 = v36;
          }

          v11[2] = v34;
          v35 = &v11[3 * v33];
          v35[4] = v29;
          v35[5] = v30;
          v35[6] = v43;
          v3 = v31;
          a2 = v46;
          goto LABEL_21;
        }
      }
    }

    else
    {
      if (v8 != 3)
      {
        v55 = v6;
        v56 = v44;
        swift_unknownObjectRetain();
        if (v6)
        {
          swift_unknownObjectRetain();
          v11 = MEMORY[0x277D84F90];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_265D46D10(0, v11[2] + 1, 1, v11);
          }

          v38 = v11[2];
          v37 = v11[3];
          if (v38 >= v37 >> 1)
          {
            v11 = sub_265D46D10((v37 > 1), v38 + 1, 1, v11);
          }

          v11[2] = v38 + 1;
          v39 = &v11[3 * v38];
          v39[4] = v6;
          *(v39 + 5) = v44;
        }

        else
        {
          v11 = MEMORY[0x277D84F90];
        }

        sub_265D46E84(&v55);
        goto LABEL_40;
      }

      v9 = *(a1 + 40);
      v47 = *(a1 + 24);
      v48 = v9;
      v49 = v6;
      v50 = v44;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v10 = 0;
      v11 = MEMORY[0x277D84F90];
LABEL_10:
      v12 = &v47 + 3 * v10;
      while (++v10 != 3)
      {
        v13 = v12 + 3;
        v14 = *v12;
        v12 += 3;
        if (v14)
        {
          v45 = a2;
          v15 = *(v13 - 1);
          v42 = *(v13 - 2);
          swift_unknownObjectRetain();
          v16 = v3;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_265D46D10(0, v11[2] + 1, 1, v11);
          }

          v18 = v11[2];
          v17 = v11[3];
          v19 = v18 + 1;
          if (v18 >= v17 >> 1)
          {
            v57 = v18 + 1;
            v21 = sub_265D46D10((v17 > 1), v18 + 1, 1, v11);
            v19 = v57;
            v11 = v21;
          }

          v11[2] = v19;
          v20 = &v11[3 * v18];
          v20[4] = v14;
          v20[5] = v42;
          v20[6] = v15;
          v3 = v16;
          a2 = v45;
          goto LABEL_10;
        }
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA70, &unk_265D5E560);
    swift_arrayDestroy();
LABEL_40:
    swift_unknownObjectRelease();
    goto LABEL_41;
  }

  if (*(a1 + 168))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA78, &unk_265D5E570);
    v22 = swift_allocObject();
    v11 = v22;
    v23 = xmmword_265D5AF60;
    v24 = *(a1 + 88);
    v25 = *(a1 + 72);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003EA78, &unk_265D5E570);
    v22 = swift_allocObject();
    v11 = v22;
    v23 = xmmword_265D5AF60;
    v24 = *(a1 + 64);
    v25 = *(a1 + 48);
  }

  *(v22 + 16) = v23;
  *(v22 + 32) = v25;
  *(v22 + 48) = v24;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
LABEL_41:
  result = swift_unknownObjectRelease();
  *a2 = v11;
  return result;
}