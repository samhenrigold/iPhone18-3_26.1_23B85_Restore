uint64_t sub_20CCA41C0@<X0>(uint64_t *a1@<X8>)
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v2 = sub_20CCDB584();
  __swift_project_value_buffer(v2, qword_28110EE00);
  v3 = sub_20CCDB564();
  v4 = sub_20CCDB8B4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_20CC86000, v3, v4, "Querying siri availability", v5, 2u);
    MEMORY[0x20F30FD70](v5, -1, -1);
  }

  v6 = [objc_opt_self() sharedPreferences];
  v7 = [v6 assistantIsEnabled];

  if (v7)
  {
    v8 = MEMORY[0x277D0A5A8];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F698, &qword_20CCDCC98);
    v9 = sub_20CCDB2B4();
    v10 = *(v9 - 8);
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_20CCDC580;
    (*(v10 + 104))(v12 + v11, *MEMORY[0x277D0A5B8], v9);
    v13 = sub_20CCB2028(v12);
    swift_setDeallocating();
    (*(v10 + 8))(v12 + v11, v9);
    swift_deallocClassInstance();
    *a1 = v13;
    v8 = MEMORY[0x277D0A5A0];
  }

  v14 = *v8;
  v15 = sub_20CCDB294();
  v16 = *(*(v15 - 8) + 104);

  return v16(a1, v14, v15);
}

uint64_t sub_20CCA443C(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F468, &unk_20CCDCD30);
  v1[4] = swift_task_alloc();
  v2 = sub_20CCDAF54();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCA4538, 0, 0);
}

uint64_t sub_20CCA4538()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  v0[8] = __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Querying voice asset availability", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v5 = [objc_allocWithZone(sub_20CCDA904()) init];
  v0[9] = v5;
  v6 = swift_task_alloc();
  v0[10] = v6;
  *(v6 + 16) = v5;
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_20CCA46FC;
  v9 = v0[3];
  v8 = v0[4];

  return MEMORY[0x2822007B8](v8, 0, 0, 0xD000000000000014, 0x800000020CCDDF50, sub_20CC92850, v6, v9);
}

uint64_t sub_20CCA46FC()
{

  return MEMORY[0x2822009F8](sub_20CCA4814, 0, 0);
}

uint64_t sub_20CCA4814()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20CC89568(*(v0 + 32), &qword_27C80F468, &unk_20CCDCD30);
    v4 = sub_20CCDB564();
    v5 = sub_20CCDB8B4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_20CC86000, v4, v5, "No voice asset selected", v6, 2u);
      MEMORY[0x20F30FD70](v6, -1, -1);
    }

    v7 = *(v0 + 16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F698, &qword_20CCDCC98);
    v8 = sub_20CCDB2B4();
    v9 = *(v8 - 8);
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_20CCDC580;
    (*(v9 + 104))(v11 + v10, *MEMORY[0x277D0A5B8], v8);
    v12 = sub_20CCB2028(v11);
    swift_setDeallocating();
    (*(v9 + 8))(v11 + v10, v8);
    swift_deallocClassInstance();
    *v7 = v12;
  }

  else
  {
    (*(*(v0 + 48) + 32))(*(v0 + 56), *(v0 + 32), *(v0 + 40));
    v13 = sub_20CCA7DA4();
    v14 = [v13 locallyAvailable];
    v16 = *(v0 + 48);
    v15 = *(v0 + 56);
    v17 = *(v0 + 40);
    v7 = *(v0 + 16);
    if (v14)
    {
      (*(v16 + 8))(*(v0 + 56), *(v0 + 40));

      v18 = MEMORY[0x277D0A5A8];
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F698, &qword_20CCDCC98);
    v19 = sub_20CCDB2B4();
    v20 = *(v19 - 8);
    v28 = v7;
    v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_20CCDC580;
    (*(v20 + 104))(v22 + v21, *MEMORY[0x277D0A5D8], v19);
    v23 = sub_20CCB2028(v22);
    swift_setDeallocating();
    (*(v20 + 8))(v22 + v21, v19);
    swift_deallocClassInstance();

    (*(v16 + 8))(v15, v17);
    v7 = v28;
    *v28 = v23;
  }

  v18 = MEMORY[0x277D0A5A0];
LABEL_9:
  v24 = *v18;
  v25 = sub_20CCDB294();
  (*(*(v25 - 8) + 104))(v7, v24, v25);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_20CCA4E40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20CCDAD14();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == *MEMORY[0x277D0E100])
  {
    goto LABEL_2;
  }

  if (v8 == *MEMORY[0x277D0E110])
  {
LABEL_4:
    v9 = MEMORY[0x277D0A5B0];
    goto LABEL_5;
  }

  if (v8 == *MEMORY[0x277D0E1B8] || v8 == *MEMORY[0x277D0E1D0] || v8 == *MEMORY[0x277D0E088] || v8 == *MEMORY[0x277D0E130] || v8 == *MEMORY[0x277D0E120] || v8 == *MEMORY[0x277D0E1A0] || v8 == *MEMORY[0x277D0E0B0] || v8 == *MEMORY[0x277D0E188] || v8 == *MEMORY[0x277D0E1C8] || v8 == *MEMORY[0x277D0E138])
  {
    goto LABEL_2;
  }

  if (v8 == *MEMORY[0x277D0E0D8])
  {
LABEL_19:
    v9 = MEMORY[0x277D0A5C0];
    goto LABEL_5;
  }

  if (v8 == *MEMORY[0x277D0E170])
  {
    goto LABEL_2;
  }

  if (v8 == *MEMORY[0x277D0E0B8])
  {
    goto LABEL_2;
  }

  v16 = v8;
  if (v8 == *MEMORY[0x277D0E160] || v8 == *MEMORY[0x277D0E178] || v8 == *MEMORY[0x277D0E0C0])
  {
    goto LABEL_2;
  }

  if (v8 == *MEMORY[0x277D0E180])
  {
    goto LABEL_4;
  }

  if (v8 == *MEMORY[0x277D0E198])
  {
    goto LABEL_2;
  }

  if (v8 == *MEMORY[0x277D0E098] || v8 == *MEMORY[0x277D0E0F8])
  {
    goto LABEL_19;
  }

  if (v8 == *MEMORY[0x277D0E0A8])
  {
    v9 = MEMORY[0x277D0A5B8];
    goto LABEL_5;
  }

  if (v8 == *MEMORY[0x277D0E0E8] || v8 == *MEMORY[0x277D0E168])
  {
    v9 = MEMORY[0x277D0A5D8];
    goto LABEL_5;
  }

  if (v8 == *MEMORY[0x277D0E0D0])
  {
    goto LABEL_19;
  }

  if (v8 == *MEMORY[0x277D0E1F8] || v8 == *MEMORY[0x277D0E1E0] || v8 == *MEMORY[0x277D0E1F0])
  {
LABEL_2:
    v9 = MEMORY[0x277D0A5C8];
LABEL_5:
    v10 = *v9;
    v11 = sub_20CCDB2B4();
    v12 = *(*(v11 - 8) + 104);
    v13 = a2;
    v14 = v10;
    return v12(v13, v14, v11);
  }

  v17 = *MEMORY[0x277D0E148];
  v11 = sub_20CCDB2B4();
  v12 = *(*(v11 - 8) + 104);
  if (v16 != v17)
  {
    v12(a2, *MEMORY[0x277D0A5D0], v11);
    return (*(v5 + 8))(v7, v4);
  }

  v14 = *MEMORY[0x277D0A5C0];
  v13 = a2;
  return v12(v13, v14, v11);
}

uint64_t sub_20CCA5284@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20CCDADC4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_20CCA531C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20CC8DF7C;

  return sub_20CCA443C(a1);
}

void *sub_20CCA53B8(uint64_t a1, unint64_t a2)
{
  v3 = sub_20CCA5404(a1, a2);
  sub_20CCA5534(&unk_2823B3ED8);
  return v3;
}

void *sub_20CCA5404(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_20CCA5620(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_20CCDB994();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_20CCDB6D4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_20CCA5620(v10, 0);
        result = sub_20CCDB964();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_20CCA5534(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_20CCA5694(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_20CCA5620(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F6A8, &qword_20CCDCCA8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_20CCA5694(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F6A8, &qword_20CCDCCA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_20CCA5788(void *a1, int64_t a2, char a3)
{
  result = sub_20CC89094(a1, a2, a3, *v3, &qword_27C80F6E0, &qword_20CCDCCE8, MEMORY[0x277D0A010]);
  *v3 = result;
  return result;
}

void *sub_20CCA57CC(void *a1, int64_t a2, char a3)
{
  result = sub_20CC89094(a1, a2, a3, *v3, &qword_27C80F698, &qword_20CCDCC98, MEMORY[0x277D0A5E0]);
  *v3 = result;
  return result;
}

uint64_t sub_20CCA5838(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_20CCDB2B4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_20CCA7148(&qword_28110ED38, MEMORY[0x277D0A5E0], MEMORY[0x277D0A5E8]);
  v33 = a2;
  v11 = sub_20CCDB644();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_20CCA7148(&qword_27C80F6B0, MEMORY[0x277D0A5E0], MEMORY[0x277D0A5F0]);
      v21 = sub_20CCDB654();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_20CCA6224(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_20CCA5B18(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_20CCDBB44();
  sub_20CCDB6A4();
  v8 = sub_20CCDBB64();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_20CCDBA64() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_20CCA64C8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_20CCA5C68(uint64_t a1)
{
  v2 = v1;
  v36 = sub_20CCDB2B4();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F6B8, &qword_20CCDD240);
  result = sub_20CCDB944();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
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
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_20CCA7148(&qword_28110ED38, MEMORY[0x277D0A5E0], MEMORY[0x277D0A5E8]);
      result = sub_20CCDB644();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
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
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
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
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_20CCA5FC4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F6C0, &qword_20CCDCCC0);
  result = sub_20CCDB944();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_20CCDBB44();
      sub_20CCDB6A4();
      result = sub_20CCDBB64();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_20CCA6224(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_20CCDB2B4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20CCA5C68(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_20CCA6648();
      goto LABEL_12;
    }

    sub_20CCA69DC(v10 + 1);
  }

  v12 = *v3;
  sub_20CCA7148(&qword_28110ED38, MEMORY[0x277D0A5E0], MEMORY[0x277D0A5E8]);
  v13 = sub_20CCDB644();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_20CCA7148(&qword_27C80F6B0, MEMORY[0x277D0A5E0], MEMORY[0x277D0A5F0]);
      v21 = sub_20CCDB654();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_20CCDBA94();
  __break(1u);
  return result;
}

uint64_t sub_20CCA64C8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_20CCA5FC4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_20CCA6880();
      goto LABEL_16;
    }

    sub_20CCA6CF8(v8 + 1);
  }

  v10 = *v4;
  sub_20CCDBB44();
  sub_20CCDB6A4();
  result = sub_20CCDBB64();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_20CCDBA64();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_20CCDBA94();
  __break(1u);
  return result;
}

void *sub_20CCA6648()
{
  v1 = v0;
  v2 = sub_20CCDB2B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F6B8, &qword_20CCDD240);
  v6 = *v0;
  v7 = sub_20CCDB934();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
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
    *v1 = v8;
  }

  return result;
}

void *sub_20CCA6880()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F6C0, &qword_20CCDCCC0);
  v2 = *v0;
  v3 = sub_20CCDB934();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

uint64_t sub_20CCA69DC(uint64_t a1)
{
  v2 = v1;
  v33 = sub_20CCDB2B4();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F6B8, &qword_20CCDD240);
  v7 = sub_20CCDB944();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_20CCA7148(&qword_28110ED38, MEMORY[0x277D0A5E0], MEMORY[0x277D0A5E8]);
      result = sub_20CCDB644();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_20CCA6CF8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F6C0, &qword_20CCDCCC0);
  result = sub_20CCDB944();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_20CCDBB44();

      sub_20CCDB6A4();
      result = sub_20CCDBB64();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_20CCA6F30(uint64_t a1)
{
  v2 = sub_20CCDB2B4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_20CCA7148(&qword_28110ED38, MEMORY[0x277D0A5E0], MEMORY[0x277D0A5E8]);
  result = MEMORY[0x20F30F430](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_20CCA5838(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_20CCA70CC(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_20CCA70D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F6D8, &qword_20CCDCCE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CCA7148(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20CCA7190()
{
  v0 = sub_20CCDADC4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v4 = sub_20CCDB584();
  __swift_project_value_buffer(v4, qword_28110EE00);
  v5 = sub_20CCDB564();
  v6 = sub_20CCDB8B4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_20CC86000, v5, v6, "Clearing watch availability", v7, 2u);
    MEMORY[0x20F30FD70](v7, -1, -1);
  }

  (*(v1 + 104))(v3, *MEMORY[0x277D09FE8], v0);
  sub_20CCDB364();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_20CCA734C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F6F0, &qword_20CCDCD28);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  (*(v3 + 16))(&v9 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  sub_20CCDA8B4();
}

uint64_t sub_20CCA7494(unint64_t a1, uint64_t a2)
{
  v45[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F468, &unk_20CCDCD30);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v45[0] = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = v45 - v6;
  v8 = sub_20CCDAF54();
  v48 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v56 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v47 = v45 - v13;
  if (a1 >> 62)
  {
    goto LABEL_26;
  }

  v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v11; v14; i = v39)
  {
    v15 = 0;
    v54 = a1 & 0xFFFFFFFFFFFFFF8;
    v55 = a1 & 0xC000000000000001;
    v52 = (v48 + 48);
    v53 = (v48 + 56);
    v16 = MEMORY[0x277D84F90];
    v51 = (v48 + 32);
    *&v12 = 138412290;
    v46 = v12;
    v49 = v14;
    v50 = a1;
    while (1)
    {
      if (v55)
      {
        v11 = MEMORY[0x20F30F560](v15, a1);
      }

      else
      {
        if (v15 >= *(v54 + 16))
        {
          goto LABEL_25;
        }

        v11 = *(a1 + 8 * v15 + 32);
      }

      v17 = v11;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v19 = v16;
      v20 = sub_20CCDA994();
      sub_20CCDA934();
      v22 = v21;

      if (v22)
      {
        v23 = sub_20CCDA994();
        sub_20CCDA954();

        v14 = v49;
        a1 = v50;
        sub_20CCDAF24();
        v24 = 0;
      }

      else
      {
        if (qword_28110E630 != -1)
        {
          swift_once();
        }

        v25 = sub_20CCDB584();
        __swift_project_value_buffer(v25, qword_28110EE00);
        v26 = v17;
        v27 = sub_20CCDB564();
        v28 = sub_20CCDB894();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          *v29 = v46;
          *(v29 + 4) = v26;
          *v30 = v26;
          v31 = v26;
          _os_log_impl(&dword_20CC86000, v27, v28, "Voice subscription name missing: %@", v29, 0xCu);
          sub_20CC89568(v30, &qword_27C80F460, &unk_20CCDC700);
          v32 = v30;
          v14 = v49;
          MEMORY[0x20F30FD70](v32, -1, -1);
          v33 = v29;
          a1 = v50;
          MEMORY[0x20F30FD70](v33, -1, -1);
        }

        v24 = 1;
      }

      v34 = i;
      (*v53)(v7, v24, 1, i);

      v16 = v19;
      if ((*v52)(v7, 1, v34) == 1)
      {
        v11 = sub_20CC89568(v7, &qword_27C80F468, &unk_20CCDCD30);
      }

      else
      {
        v35 = *v51;
        v36 = v47;
        (*v51)(v47, v7, v34);
        v35(v56, v36, v34);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_20CCA7BC8(0, v19[2] + 1, 1, v19, &qword_27C80F6F8, &qword_20CCDCD40, MEMORY[0x277D0A278]);
        }

        v38 = v16[2];
        v37 = v16[3];
        if (v38 >= v37 >> 1)
        {
          v16 = sub_20CCA7BC8((v37 > 1), v38 + 1, 1, v16, &qword_27C80F6F8, &qword_20CCDCD40, MEMORY[0x277D0A278]);
        }

        v16[2] = v38 + 1;
        v11 = (v35)(v16 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v38, v56, i);
      }

      ++v15;
      if (v18 == v14)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    v39 = v11;
    v14 = sub_20CCDB9F4();
    v11 = v39;
  }

  v16 = MEMORY[0x277D84F90];
LABEL_28:
  if (v16[2])
  {
    v40 = v48;
    v41 = v45[0];
    v42 = i;
    (*(v48 + 16))(v45[0], v16 + ((*(v48 + 80) + 32) & ~*(v48 + 80)), i);
    v43 = 0;
  }

  else
  {
    v43 = 1;
    v41 = v45[0];
    v40 = v48;
    v42 = i;
  }

  (*(v40 + 56))(v41, v43, 1, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F6F0, &qword_20CCDCD28);
  return sub_20CCDB754();
}

void *sub_20CCA7A6C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F708, &qword_20CCDCD58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F710, &qword_20CCDCD60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_20CCA7BC8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

_WORD *sub_20CCA7DA4()
{
  v0 = sub_20CCDAA14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F458, &unk_20CCDCD10);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_20CCDC570;
  sub_20CC92858();
  *(v1 + 32) = sub_20CCDB864();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F470, &unk_20CCDC710);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20CCDCD00;
  *(inited + 32) = 0;
  v3 = sub_20CCDAF34();
  v4 = MEMORY[0x277D837D0];
  *(inited + 40) = v3;
  *(inited + 48) = v5;
  *(inited + 64) = v4;
  *(inited + 72) = 1;
  v6 = sub_20CCDAF44();
  *(inited + 104) = v4;
  *(inited + 80) = v6;
  *(inited + 88) = v7;
  *(inited + 144) = MEMORY[0x277D613C0];
  *(inited + 112) = xmmword_20CCDC590;
  sub_20CC8974C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F478, &qword_20CCDCD20);
  swift_arrayDestroy();
  v8 = sub_20CCDA9F4();

  v9 = v8 >> 62;
  if (v8 >> 62)
  {
    if (sub_20CCDB9F4())
    {
      goto LABEL_3;
    }
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v8 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x20F30F560](0, v8);
LABEL_6:
      v0 = v10;
      if (v9)
      {
        if (sub_20CCDB9F4() != 1)
        {
          goto LABEL_8;
        }
      }

      else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
      {
LABEL_8:
        if (qword_28110E630 != -1)
        {
          swift_once();
        }

        v11 = sub_20CCDB584();
        __swift_project_value_buffer(v11, qword_28110EE00);

        v12 = sub_20CCDB564();
        v13 = sub_20CCDB894();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 134217984;
          if (v9)
          {
            v15 = sub_20CCDB9F4();
          }

          else
          {
            v15 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v14 + 4) = v15;

          _os_log_impl(&dword_20CC86000, v12, v13, "Found multiple matches: %ld", v14, 0xCu);
          MEMORY[0x20F30FD70](v14, -1, -1);
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        sub_20CCA81C8();
        swift_allocError();
        *v16 = 0;
        swift_willThrow();

        return v0;
      }

      return v0;
    }

    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v10 = *(v8 + 32);
      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_27;
  }

  if (qword_28110E630 != -1)
  {
LABEL_27:
    swift_once();
  }

  v17 = sub_20CCDB584();
  __swift_project_value_buffer(v17, qword_28110EE00);
  v18 = sub_20CCDB564();
  v19 = sub_20CCDB894();
  if (os_log_type_enabled(v18, v19))
  {
    v0 = swift_slowAlloc();
    *v0 = 0;
    _os_log_impl(&dword_20CC86000, v18, v19, "No matching asset found", v0, 2u);
    MEMORY[0x20F30FD70](v0, -1, -1);
  }

  sub_20CCA81C8();
  swift_allocError();
  *v20 = 1;
  swift_willThrow();
  return v0;
}

unint64_t sub_20CCA81C8()
{
  result = qword_27C80F6E8;
  if (!qword_27C80F6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C80F6E8);
  }

  return result;
}

uint64_t sub_20CCA821C(unint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F6F0, &qword_20CCDCD28) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_20CCA7494(a1, v4);
}

uint64_t getEnumTagSinglePayload for SiriVoiceAssetStore.Failure(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SiriVoiceAssetStore.Failure(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_20CCA83F8()
{
  result = qword_27C80F718[0];
  if (!qword_27C80F718[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27C80F718);
  }

  return result;
}

uint64_t sub_20CCA84A4()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_20CCA84D4()
{
  sub_20CCA84A4();

  return MEMORY[0x282200960](v0);
}

void sub_20CCA85CC(uint64_t a1)
{
  type metadata accessor for AudioStreamBasicDescription(319);
  if (v1 <= 0x3F)
  {
    sub_20CCDAF54();
    if (v2 <= 0x3F)
    {
      sub_20CCDB114();
      if (v3 <= 0x3F)
      {
        sub_20CCAA210(319, qword_28110E9A0, MEMORY[0x277D613C8], type metadata accessor for ChannelBroadcaster);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_20CCA86B8(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = sub_20CCDA784();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v4 = sub_20CCDA6A4();
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F448, &unk_20CCDCF60);
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCA8824, 0, 0);
}

uint64_t sub_20CCA8824()
{
  v1 = *(v0 + 96);
  v2 = *(v1 + *(type metadata accessor for AudioSynthesisHandle(0) + 32));
  *(v0 + 176) = v2;

  return MEMORY[0x2822009F8](sub_20CCA8898, v2, 0);
}

uint64_t sub_20CCA8898()
{
  v1 = v0[21];
  v2 = v0[22];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F640, &unk_20CCDCBE0);
  swift_allocObject();
  v3 = sub_20CCDB464();
  v0[23] = v3;
  v4 = sub_20CCDB794();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = sub_20CCA0384();
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = v5;
  v6[4] = v2;
  v6[5] = v3;
  swift_retain_n();

  sub_20CCAA31C(0, 0, v1, &unk_20CCDCBF8, v6);

  return MEMORY[0x2822009F8](sub_20CCA89E4, 0, 0);
}

uint64_t sub_20CCA89E4()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  v18 = *(v0 + 160);
  v19 = *(v0 + 144);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v7 = *(v0 + 96);
  v8 = [objc_opt_self() defaultManager];
  v9 = [v8 temporaryDirectory];

  sub_20CCDA694();
  sub_20CCDA774();
  sub_20CCDA754();
  (*(v5 + 8))(v3, v6);

  MEMORY[0x20F30F2A0](1717658414, 0xE400000000000000);

  sub_20CCDA684();

  v10 = *(v2 + 8);
  *(v0 + 192) = v10;
  *(v0 + 200) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v1, v4);
  (*(v2 + 16))(v19, v18, v4);
  v11 = *(v7 + 32);
  v12 = *(v7 + 16);
  *(v0 + 16) = *v7;
  *(v0 + 32) = v12;
  *(v0 + 48) = v11;
  sub_20CCDAAD4();
  swift_allocObject();
  *(v0 + 208) = sub_20CCDAAC4();
  v13 = sub_20CCDB414();
  *(v0 + 216) = v13;
  *(v0 + 224) = v14;
  *(v0 + 56) = v13;
  *(v0 + 64) = v14;
  v15 = swift_task_alloc();
  *(v0 + 232) = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F658, &unk_20CCDCC00);
  *v15 = v0;
  v15[1] = sub_20CCA8CC4;

  return MEMORY[0x282141C38](v0 + 72, v16);
}

uint64_t sub_20CCA8CC4()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_20CCA911C;
  }

  else
  {
    *(v2 + 248) = *(v2 + 72);
    v3 = sub_20CCA8DE0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20CCA8DE0(uint64_t a1)
{
  v2 = v1[31];
  if (v2)
  {
    v3 = sub_20CCDAA24();
    v5 = v4 >> 62;
    if ((v4 >> 62) > 1)
    {
      if (v5 != 2)
      {
        sub_20CC9720C(v3, v4);
        goto LABEL_16;
      }

      v9 = *(v3 + 16);
      v8 = *(v3 + 24);
      sub_20CC9720C(v3, v4);
      if (v9 == v8)
      {
        goto LABEL_16;
      }
    }

    else if (v5)
    {
      v10 = v3;
      sub_20CC9720C(v3, v4);
      if (v10 == v10 >> 32)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v6 = v4;
      sub_20CC9720C(v3, v4);
      if ((v6 & 0xFF000000000000) == 0)
      {
        goto LABEL_16;
      }
    }

    v11 = v1[30];
    sub_20CCDAAB4();
    if (v11)
    {
      v12 = v1[24];
      v13 = v1[20];
      v14 = v1[16];

      v12(v13, v14);
      goto LABEL_14;
    }

LABEL_16:

    v16 = swift_task_alloc();
    v1[29] = v16;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F658, &unk_20CCDCC00);
    *v16 = v1;
    v16[1] = sub_20CCA8CC4;

    return MEMORY[0x282141C38](v1 + 9, v17);
  }

  v7 = v1[30];

  sub_20CCDAAA4();
  if (!v7)
  {
    v18 = v1[20];
    v20 = v1[16];
    v19 = v1[17];
    v22 = v1[11];
    v21 = v1[12];

    v26 = *v21;
    v27 = v21[1];
    v28 = *(v21 + 4);
    (*(v19 + 32))(v22, v18, v20);
    (*(v19 + 56))(v22, 0, 1, v20);
    v23 = type metadata accessor for SynthesizedAudio(0);
    *(v22 + *(v23 + 20)) = xmmword_20CCDCF20;
    v24 = v22 + *(v23 + 24);
    *v24 = v26;
    *(v24 + 16) = v27;
    *(v24 + 32) = v28;

    v15 = v1[1];
    goto LABEL_20;
  }

  (v1[24])(v1[20], v1[16]);

LABEL_14:

  v15 = v1[1];
LABEL_20:

  return v15();
}

uint64_t sub_20CCA911C()
{
  *(v0 + 80) = *(v0 + 240);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F660, &qword_20CCDD400);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_20CCA91B0, 0, 0);
}

uint64_t sub_20CCA91B0()
{
  v1 = v0[24];
  v2 = v0[20];
  v3 = v0[16];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20CCA9290()
{
  v1[7] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F820, &qword_20CCDCF50);
  v1[8] = swift_task_alloc();
  v2 = sub_20CCDA6A4();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCA9394, 0, 0);
}

uint64_t sub_20CCA9394()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  sub_20CCA9614(*(v0 + 56), v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 56);
    sub_20CCA9684(*(v0 + 64));
    v5 = type metadata accessor for SynthesizedAudio(0);
    v6 = (v4 + *(v5 + 20));
    v7 = v6[1];
    if (v7 >> 60 == 15)
    {
      sub_20CCA9744();
      swift_allocError();
      swift_willThrow();

      v13 = *(v0 + 8);

      return v13();
    }

    v15 = v5;
    v16 = *(v0 + 56);
    v17 = *v6;
    v18 = objc_allocWithZone(sub_20CCDAA94());
    sub_20CC96DA4(v17, v7);
    v12 = [v18 init];
    sub_20CC96DA4(v17, v7);
    sub_20CCDAA34();
    v19 = (v16 + *(v15 + 24));
    v20 = *v19;
    v21 = v19[1];
    *(v0 + 48) = *(v19 + 4);
    *(v0 + 16) = v20;
    *(v0 + 32) = v21;
    sub_20CCDAA74();
    sub_20CCA9798(v17, v7);
  }

  else
  {
    v8 = *(v0 + 88);
    v9 = *(v0 + 96);
    v10 = *(v0 + 72);
    v11 = *(v0 + 80);
    (*(v11 + 32))(v9, *(v0 + 64), v10);
    sub_20CCDAA94();
    (*(v11 + 16))(v8, v9, v10);
    v12 = sub_20CCDAA54();
    (*(v11 + 8))(v9, v10);
  }

  v22 = *(v0 + 8);

  return v22(v12);
}

uint64_t sub_20CCA9614(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F820, &qword_20CCDCF50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CCA9684(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F820, &qword_20CCDCF50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20CCA970C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_20CCA9744()
{
  result = qword_27C80F828;
  if (!qword_27C80F828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C80F828);
  }

  return result;
}

uint64_t sub_20CCA9798(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_20CC9720C(result, a2);
  }

  return result;
}

uint64_t sub_20CCA97AC(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 104) = a2;
  *(v4 + 112) = v3;
  *(v4 + 208) = a3;
  *(v4 + 96) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F820, &qword_20CCDCF50);
  *(v4 + 120) = swift_task_alloc();
  v5 = sub_20CCDA6A4();
  *(v4 + 128) = v5;
  *(v4 + 136) = *(v5 - 8);
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = type metadata accessor for SynthesizedAudio(0);
  *(v4 + 160) = swift_task_alloc();
  v6 = sub_20CCDB114();
  *(v4 + 168) = v6;
  *(v4 + 176) = *(v6 - 8);
  *(v4 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCA9938, 0, 0);
}

uint64_t sub_20CCA9938()
{
  if (*(v0 + 208) == 1)
  {
    v1 = *(v0 + 176);
    v2 = *(v0 + 184);
    v3 = *(v0 + 168);
    v4 = *(v0 + 112);
    v5 = type metadata accessor for AudioSynthesisHandle(0);
    sub_20CCDAF34();
    sub_20CCDAF44();
    (*(v1 + 16))(v2, v4 + *(v5 + 28), v3);
    v6 = (*(v1 + 88))(v2, v3);
    v7 = 0;
    if (v6 != *MEMORY[0x277D0A4D8])
    {
      if (v6 == *MEMORY[0x277D0A4D0])
      {
        v7 = 2;
      }

      else if (v6 == *MEMORY[0x277D0A4C8])
      {
        v7 = 1;
      }

      else
      {
        (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
        v7 = 0;
      }
    }

    v11 = objc_allocWithZone(MEMORY[0x277CEF428]);
    v12 = sub_20CCDB664();
    v13 = sub_20CCDB664();
    v14 = sub_20CCDB664();

    v15 = sub_20CCDB664();

    v16 = [v11 initWithVoiceFeedbackIdentifier:v12 text:v13 voiceName:v14 voiceLanguage:v15 intensity:v7];

    v17 = *(v0 + 8);

    return v17(v16);
  }

  else
  {
    v8 = swift_task_alloc();
    *(v0 + 192) = v8;
    *v8 = v0;
    v8[1] = sub_20CCA9BF4;
    v9 = *(v0 + 160);

    return sub_20CCA86B8(v9);
  }
}

uint64_t sub_20CCA9BF4()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_20CCAA07C;
  }

  else
  {
    v2 = sub_20CCA9D08;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CCA9D08()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);
  sub_20CCA9614(*(v0 + 160), v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 152);
    v5 = *(v0 + 160);
    sub_20CCA9684(*(v0 + 120));
    v6 = (v5 + *(v4 + 20));
    v7 = v6[1];
    v8 = *(v0 + 160);
    if (v7 >> 60 == 15)
    {
      sub_20CCA9744();
      swift_allocError();
      swift_willThrow();
LABEL_6:
      sub_20CC9D2D0(v8);

      v12 = *(v0 + 8);

      return v12();
    }

    v14 = *v6;
    v15 = v8 + *(*(v0 + 152) + 24);
    v30 = *v15;
    v32 = *(v15 + 16);
    v34 = *(v15 + 32);
    v16 = objc_allocWithZone(MEMORY[0x277CEF428]);
    sub_20CC96DA4(v14, v7);
    v17 = sub_20CCDB664();
    v18 = sub_20CCDA6D4();
    *(v0 + 16) = v30;
    *(v0 + 32) = v32;
    *(v0 + 48) = v34;
    v19 = [v16 initWithVoiceFeedbackIdentifier:v17 audioData:v18 asbd:v0 + 16];

    sub_20CCA9798(v14, v7);
  }

  else
  {
    v9 = *(v0 + 200);
    (*(*(v0 + 136) + 32))(*(v0 + 144), *(v0 + 120), *(v0 + 128));
    v10 = sub_20CCDA6B4();
    v8 = *(v0 + 160);
    if (v9)
    {
      (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
      goto LABEL_6;
    }

    v29 = *(v0 + 144);
    v21 = *(v0 + 128);
    v20 = *(v0 + 136);
    v22 = v8 + *(*(v0 + 152) + 24);
    v31 = *v22;
    v33 = *(v22 + 16);
    v35 = *(v22 + 32);
    v23 = v10;
    v24 = v11;
    v25 = objc_allocWithZone(MEMORY[0x277CEF428]);
    v26 = sub_20CCDB664();
    v27 = sub_20CCDA6D4();
    *(v0 + 56) = v31;
    *(v0 + 72) = v33;
    *(v0 + 88) = v35;
    v19 = [v25 initWithVoiceFeedbackIdentifier:v26 audioData:v27 asbd:v0 + 56];

    sub_20CC9720C(v23, v24);
    (*(v20 + 8))(v29, v21);
  }

  sub_20CC9D2D0(v8);

  v28 = *(v0 + 8);

  return v28(v19);
}

uint64_t sub_20CCAA07C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_20CCAA144(uint64_t a1)
{
  sub_20CCAA210(319, &qword_27C80F840, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_20CCAA274();
    if (v2 <= 0x3F)
    {
      type metadata accessor for AudioStreamBasicDescription(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20CCAA210(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_20CCAA274()
{
  if (!qword_27C80F848)
  {
    v0 = sub_20CCDB904();
    if (!v1)
    {
      atomic_store(v0, &qword_27C80F848);
    }
  }
}

unint64_t sub_20CCAA2C8()
{
  result = qword_27C80F850;
  if (!qword_27C80F850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C80F850);
  }

  return result;
}

uint64_t sub_20CCAA31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F448, &unk_20CCDCF60);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_20CC89500(a3, v25 - v10, &qword_27C80F448, &unk_20CCDCF60);
  v12 = sub_20CCDB794();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_20CCB3650(v11);
  }

  else
  {
    sub_20CCDB784();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_20CCDB734();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_20CCDB694() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_20CCB3650(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_20CCB3650(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_20CCAA5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F448, &unk_20CCDCF60);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_20CC89500(a3, v25 - v10, &qword_27C80F448, &unk_20CCDCF60);
  v12 = sub_20CCDB794();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_20CCB3650(v11);
  }

  else
  {
    sub_20CCDB784();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_20CCDB734();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_20CCDB694() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F8A0, &qword_20CCDD268);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_20CCB3650(a3);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_20CCB3650(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F8A0, &qword_20CCDD268);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t InferenceServiceListener.__allocating_init()()
{
  v0 = swift_allocObject();
  InferenceServiceListener.init()();
  return v0;
}

void *InferenceServiceListener.init()()
{
  v1 = v0;
  v2 = sub_20CCDA784();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F858, &qword_20CCDD050);
  MEMORY[0x28223BE20](v6);
  (*(v8 + 104))(&v36 - v7, *MEMORY[0x277D09E80]);
  sub_20CCB2348(&unk_2823B3F00);
  sub_20CCB24B0(&unk_2823B3F20);
  v9 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F860, &qword_20CCDD058));
  v0[2] = sub_20CCDAB44();
  v10 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  v11 = type metadata accessor for InferenceDatabaseClient(0);
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR____TtC28FitnessIntelligenceInference23InferenceDatabaseClient_proxyProvider] = 0;
  sub_20CCDA774();
  (*(v3 + 32))(&v12[OBJC_IVAR____TtC28FitnessIntelligenceInference23InferenceDatabaseClient_identifier], v5, v2);
  *&v12[OBJC_IVAR____TtC28FitnessIntelligenceInference23InferenceDatabaseClient_healthStore] = v10;
  v36.receiver = v12;
  v36.super_class = v11;
  v13 = objc_msgSendSuper2(&v36, sel_init);
  type metadata accessor for StreamingAudioPublisher(0);
  v14 = swift_allocObject();
  swift_defaultActor_initialize();
  v15 = MEMORY[0x277D84F90];
  *(v14 + 112) = sub_20CCB180C(MEMORY[0x277D84F90]);
  v16 = OBJC_IVAR____TtC28FitnessIntelligenceInference23StreamingAudioPublisher_audioAddedContinuation;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F868, &qword_20CCDD060);
  (*(*(v17 - 8) + 56))(v14 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtC28FitnessIntelligenceInference23StreamingAudioPublisher____lazy_storage____audioAddedStream;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F870, &qword_20CCDDD90);
  (*(*(v19 - 8) + 56))(v14 + v18, 1, 1, v19);
  v1[11] = type metadata accessor for PhoneAvailabilitySystem(0);
  v1[12] = &off_2823B4708;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 8);
  v21 = *MEMORY[0x277D09FE0];
  v22 = sub_20CCDADC4();
  (*(*(v22 - 8) + 104))(boxed_opaque_existential_1, v21, v22);
  v23 = v1[2];
  type metadata accessor for CancellationRegistry();
  v24 = swift_allocObject();
  v25 = v13;

  v26 = v23;
  swift_defaultActor_initialize();
  v27 = MEMORY[0x277D84FA0];
  *(v24 + 112) = MEMORY[0x277D84FA0];
  *(v24 + 120) = v27;
  v1[3] = v25;
  v1[4] = v14;
  v1[5] = v26;
  v1[6] = v24;
  v28 = v1[2];
  type metadata accessor for VoiceAssetSystem();
  v29 = swift_allocObject();
  v30 = v28;
  swift_defaultActor_initialize();
  v29[14] = v30;
  v31 = v30;
  v29[15] = sub_20CCB11D8(v15);

  v29[16] = v15;
  v1[7] = v29;
  v32 = v1[2];
  type metadata accessor for StreamingSystem();
  swift_allocObject();
  v33 = v32;
  v34 = sub_20CCD9C2C(v14, v33);

  v1[13] = v34;
  return v1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> InferenceServiceListener.start()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F448, &unk_20CCDCF60);
  MEMORY[0x28223BE20](v2 - 8);
  v200 = v186 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F878, &qword_20CCDD068);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v199 = v186 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v198 = v186 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v196 = v186 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v194 = v186 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v202 = v186 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v204 = v186 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v206 = v186 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v208 = v186 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v210 = v186 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v212 = v186 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v214 = v186 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v216 = v186 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v218 = v186 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v220 = v186 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v222 = v186 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v224 = v186 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v226 = v186 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v228 = v186 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v230 = v186 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v232 = v186 - v45;
  MEMORY[0x28223BE20](v44);
  v47 = v186 - v46;
  v48 = sub_20CCDAEA4();
  v49 = *(v48 - 8);
  v50 = MEMORY[0x28223BE20](v48);
  v197 = v186 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x28223BE20](v50);
  v195 = v186 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v192 = v186 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v191 = v186 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v201 = v186 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v203 = v186 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v205 = v186 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v207 = v186 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v209 = v186 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v211 = v186 - v69;
  v70 = MEMORY[0x28223BE20](v68);
  v213 = v186 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v215 = v186 - v73;
  v74 = MEMORY[0x28223BE20](v72);
  v217 = v186 - v75;
  v76 = MEMORY[0x28223BE20](v74);
  v219 = v186 - v77;
  v78 = MEMORY[0x28223BE20](v76);
  v221 = v186 - v79;
  v80 = MEMORY[0x28223BE20](v78);
  v223 = v186 - v81;
  v82 = MEMORY[0x28223BE20](v80);
  v225 = v186 - v83;
  v84 = MEMORY[0x28223BE20](v82);
  v227 = v186 - v85;
  v86 = MEMORY[0x28223BE20](v84);
  v229 = v186 - v87;
  v88 = MEMORY[0x28223BE20](v86);
  v231 = v186 - v89;
  MEMORY[0x28223BE20](v88);
  v91 = v186 - v90;
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v92 = sub_20CCDB584();
  v193 = __swift_project_value_buffer(v92, qword_28110EE00);
  v93 = sub_20CCDB564();
  v94 = sub_20CCDB8B4();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    v238 = v91;
    v96 = v47;
    v97 = v4;
    v98 = v1;
    v99 = v48;
    v100 = v49;
    v101 = v5;
    v102 = v95;
    *v95 = 0;
    _os_log_impl(&dword_20CC86000, v93, v94, "Registering dispatch table", v95, 2u);
    v103 = v102;
    v5 = v101;
    v49 = v100;
    v48 = v99;
    v1 = v98;
    v4 = v97;
    v47 = v96;
    v91 = v238;
    MEMORY[0x20F30FD70](v103, -1, -1);
  }

  v239 = v4;
  v240 = v48;

  v233 = *(v1 + 16);
  sub_20CCDAB24();
  v104 = *MEMORY[0x277D0A070];
  v237 = *(v49 + 104);
  v238 = (v49 + 104);
  v237(v91, v104, v48);
  v105 = *(v5 + 104);
  v235 = *MEMORY[0x277D09E78];
  v236 = v5 + 104;
  v234 = v105;
  v105(v47);
  sub_20CCDAE94();
  v106 = v91;
  v107 = v1;
  sub_20CCDAE04();
  sub_20CCB3770(&qword_28110EDF8, MEMORY[0x277D0A050], MEMORY[0x277D0A048]);
  v108 = v49;
  sub_20CCB3770(&qword_28110EDA0, MEMORY[0x277D0A020], MEMORY[0x277D0A018]);

  v109 = v241;
  sub_20CCDAAE4();
  v241 = v109;
  if (v109)
  {

    (*(v5 + 8))(v47, v239);
    (*(v49 + 8))(v106, v240);
    return;
  }

  v111 = *(v5 + 8);
  v110 = (v5 + 8);
  v112 = v239;
  v189 = v111;
  v111(v47, v239);
  v113 = *(v49 + 8);
  v114 = v240;
  v190 = v108 + 8;
  v188 = v113;
  v113(v106, v240);
  sub_20CCDAB24();
  v115 = v231;
  v237(v231, *MEMORY[0x277D0A078], v114);
  v116 = v232;
  v234(v232, v235, v112);
  v117 = sub_20CCDB284();
  v118 = sub_20CCDB264();
  v119 = sub_20CCB3770(&qword_28110ED40, MEMORY[0x277D0A598], MEMORY[0x277D0A590]);
  v120 = v107;
  v121 = sub_20CCB3770(&qword_28110ED48, MEMORY[0x277D0A588], MEMORY[0x277D0A580]);

  v187 = v120;
  v122 = v241;
  sub_20CCDAAE4();
  if (v122)
  {

    v189(v116, v239);
    v188(v115, v240);
    v241 = v122;
    return;
  }

  v186[1] = v121;
  v186[2] = v119;
  v186[3] = v118;
  v186[4] = v117;

  v123 = v239;
  v189(v116, v239);
  v124 = v240;
  v188(v115, v240);
  sub_20CCDAB24();
  v125 = v229;
  v237(v229, *MEMORY[0x277D0A0B0], v124);
  v126 = v230;
  v234(v230, v235, v123);
  sub_20CCDA784();
  sub_20CCDADE4();
  sub_20CCB3770(&qword_28110EDB0, MEMORY[0x277CC95F0], MEMORY[0x277D09E90]);
  v232 = v110;
  sub_20CCB3770(&qword_28110EDA8, MEMORY[0x277D0A010], MEMORY[0x277D0A000]);

  sub_20CCDAAE4();
  v241 = 0;

  v127 = v239;
  v189(v126, v239);
  v128 = v240;
  v188(v125, v240);
  sub_20CCDAB24();
  v129 = v227;
  v237(v227, *MEMORY[0x277D0A0C0], v128);
  v130 = v228;
  v234(v228, v235, v127);
  sub_20CCDB084();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F880, &qword_20CCDD0B0);
  sub_20CCB3770(&qword_28110ED78, MEMORY[0x277D0A3F0], MEMORY[0x277D0A3E8]);
  sub_20CCB2838();
  v131 = v241;
  sub_20CCDAAE4();
  v241 = v131;
  if (v131)
  {

    v189(v130, v127);
    v132 = v129;
LABEL_11:
    v188(v132, v240);
    return;
  }

  v189(v130, v127);
  v133 = v240;
  v134 = v188;
  v188(v129, v240);
  sub_20CCDAB24();
  v135 = v225;
  v237(v225, *MEMORY[0x277D0A0E8], v133);
  v136 = v127;
  v137 = v226;
  v234(v226, v235, v136);
  sub_20CCDB334();
  sub_20CCB3770(&qword_28110ED28, MEMORY[0x277D0A638], MEMORY[0x277D0A630]);

  v138 = v241;
  sub_20CCDAB14();
  v241 = v138;
  if (v138)
  {

    v189(v137, v239);
    v134(v135, v240);
    return;
  }

  v139 = v239;
  v189(v137, v239);
  v140 = v240;
  v134(v135, v240);
  sub_20CCDAB24();
  v141 = v223;
  v237(v223, *MEMORY[0x277D0A090], v140);
  v142 = v224;
  v234(v224, v235, v139);
  sub_20CCDB1E4();
  sub_20CCDB0E4();
  sub_20CCB3770(&qword_28110ED58, MEMORY[0x277D0A510], MEMORY[0x277D0A508]);
  sub_20CCB3770(&qword_28110ED68, MEMORY[0x277D0A4A8], MEMORY[0x277D0A4A0]);

  v143 = v241;
  sub_20CCDAAE4();
  v241 = v143;
  if (v143)
  {

    v189(v142, v239);
    v132 = v141;
    goto LABEL_11;
  }

  v144 = v142;
  v145 = v239;
  v189(v144, v239);
  v146 = v141;
  v147 = v145;
  v148 = v240;
  v188(v146, v240);
  sub_20CCDAB24();
  v149 = v221;
  v237(v221, *MEMORY[0x277D0A0D8], v148);
  v150 = v222;
  v234(v222, v235, v147);

  v151 = v241;
  sub_20CCDAAE4();
  if (v151)
  {

    v189(v150, v147);
    v188(v149, v148);
    v241 = v151;
    return;
  }

  v189(v150, v147);
  v188(v149, v148);
  sub_20CCDAB24();
  v152 = v219;
  v237(v219, *MEMORY[0x277D0A080], v148);
  v153 = v220;
  v234(v220, v235, v147);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F888, &qword_20CCDD0F8);
  sub_20CCB2BA8();
  sub_20CCDAAF4();

  v189(v153, v147);
  v154 = v240;
  v188(v152, v240);
  sub_20CCDAB24();
  v155 = v217;
  v237(v217, *MEMORY[0x277D0A088], v154);
  v156 = v218;
  v234(v218, v235, v147);
  sub_20CCDAF54();
  sub_20CCB3770(&qword_28110ED90, MEMORY[0x277D0A278], MEMORY[0x277D0A270]);

  sub_20CCDAB14();

  v189(v156, v147);
  v157 = v240;
  v188(v155, v240);
  sub_20CCDAB24();
  v158 = v215;
  v237(v215, *MEMORY[0x277D0A098], v157);
  v159 = v216;
  v234(v216, v235, v147);

  sub_20CCDAB14();

  v189(v159, v147);
  v160 = v240;
  v188(v158, v240);
  sub_20CCDAB24();
  v237(v213, *MEMORY[0x277D0A0F0], v160);
  v161 = v147;
  v234(v214, v235, v147);
  sub_20CCDAB04();

  v189(v214, v147);
  v162 = v240;
  v188(v213, v240);
  sub_20CCDAB24();
  v237(v211, *MEMORY[0x277D0A110], v162);
  v234(v212, v235, v161);
  sub_20CCB2E58();

  sub_20CCDAAF4();

  v189(v212, v161);
  v163 = v240;
  v188(v211, v240);
  sub_20CCDAB24();
  v237(v209, *MEMORY[0x277D0A148], v163);
  v234(v210, v235, v161);

  sub_20CCDAB04();

  v189(v210, v161);
  v164 = v240;
  v188(v209, v240);
  sub_20CCDAB24();
  v237(v207, *MEMORY[0x277D0A0D0], v164);
  v234(v208, v235, v161);

  sub_20CCDAB04();

  v189(v208, v161);
  v165 = v240;
  v188(v207, v240);
  sub_20CCDAB24();
  v237(v205, *MEMORY[0x277D0A0B8], v165);
  v234(v206, v235, v161);

  sub_20CCDAB04();

  v189(v206, v161);
  v166 = v240;
  v188(v205, v240);
  sub_20CCDAB24();
  v237(v203, *MEMORY[0x277D0A140], v166);
  v234(v204, v235, v161);

  sub_20CCDAB04();
  v241 = 0;

  v189(v204, v161);
  v167 = v240;
  v188(v203, v240);
  sub_20CCDAB24();
  v237(v201, *MEMORY[0x277D0A0C8], v167);
  v234(v202, v235, v161);
  sub_20CCDB014();
  sub_20CCB3770(&qword_28110ED80, MEMORY[0x277D0A3D0], MEMORY[0x277D0A3C8]);

  v168 = v241;
  sub_20CCDAB14();
  v241 = v168;
  if (v168)
  {

    v189(v202, v161);
    v169 = &v233;
LABEL_28:
    v188(*(v169 - 32), v240);
    return;
  }

  v189(v202, v161);
  v170 = v240;
  v188(v201, v240);
  sub_20CCDAB24();
  v237(v191, *MEMORY[0x277D0A118], v170);
  v234(v194, v235, v161);
  sub_20CCDB184();
  sub_20CCB3770(&qword_28110ED60, MEMORY[0x277D0A500], MEMORY[0x277D0A4F8]);

  v171 = v241;
  sub_20CCDAB14();
  v241 = v171;
  if (v171)
  {

    v189(v194, v161);
    v169 = &v223;
    goto LABEL_28;
  }

  v189(v194, v161);
  v172 = v240;
  v188(v191, v240);
  sub_20CCDAB24();
  v237(v192, *MEMORY[0x277D0A100], v172);
  v234(v196, v235, v161);
  sub_20CCDAEF4();
  sub_20CCB3770(&qword_28110ED98, MEMORY[0x277D0A260], MEMORY[0x277D0A258]);

  v173 = v241;
  sub_20CCDAB14();
  v241 = v173;
  if (v173)
  {

    v189(v196, v161);
    v169 = &v224;
    goto LABEL_28;
  }

  v189(v196, v161);
  v174 = v240;
  v188(v192, v240);
  sub_20CCDAB24();
  v237(v195, *MEMORY[0x277D0A0E0], v174);
  v234(v198, v235, v161);
  sub_20CCDB0C4();
  sub_20CCB3770(&qword_28110ED70, MEMORY[0x277D0A448], MEMORY[0x277D0A440]);

  v175 = v241;
  sub_20CCDAB14();
  v241 = v175;
  if (v175)
  {

    v189(v198, v161);
    v169 = &v227;
    goto LABEL_28;
  }

  v189(v198, v161);
  v176 = v240;
  v188(v195, v240);
  sub_20CCDAB24();
  v237(v197, *MEMORY[0x277D0A128], v176);
  v234(v199, v235, v161);
  sub_20CCB3454();

  v177 = v241;
  sub_20CCDAB14();
  v241 = v177;
  if (v177)
  {

    v189(v199, v161);
    v169 = &v229;
    goto LABEL_28;
  }

  v178 = v187;

  v189(v199, v161);
  v188(v197, v240);
  v179 = *(v178 + 56);
  v180 = sub_20CCDB794();
  v181 = v200;
  (*(*(v180 - 8) + 56))(v200, 1, 1, v180);
  v182 = swift_allocObject();
  v182[2] = 0;
  v182[3] = 0;
  v182[4] = v179;
  v182[5] = &unk_20CCDD1D0;
  v182[6] = v178;

  sub_20CCAA31C(0, 0, v181, &unk_20CCDD1D8, v182);

  v183 = sub_20CCDB564();
  v184 = sub_20CCDB8B4();
  if (os_log_type_enabled(v183, v184))
  {
    v185 = swift_slowAlloc();
    *v185 = 0;
    _os_log_impl(&dword_20CC86000, v183, v184, "Starting listener", v185, 2u);
    MEMORY[0x20F30FD70](v185, -1, -1);
  }

  sub_20CCDAB34();
}

uint64_t sub_20CCAD65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_20CCAD680, 0, 0);
}

uint64_t sub_20CCAD680()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Received XPC request for inference", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v5 = v0[5];

  v6 = v5[3];
  v7 = v5[4];
  v8 = v5[5];
  v9 = v5[6];
  v10 = sub_20CCDAB64();
  v12 = v11;
  v13 = swift_task_alloc();
  v0[6] = v13;
  *v13 = v0;
  v13[1] = sub_20CCAD814;
  v14 = v0[4];
  v15 = v0[2];

  return sub_20CCB46EC(v15, v14, v10, v12 & 1, v6, v7, v8, v9, 25.0);
}

uint64_t sub_20CCAD814()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_20CCAD944, 0, 0);
  }
}

uint64_t sub_20CCAD944()
{
  v1 = *(v0 + 16);
  v2 = sub_20CCDAE04();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_20CCAD9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  return MEMORY[0x2822009F8](sub_20CCADA08, 0, 0);
}

uint64_t sub_20CCADA08()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Received XPC request to cancel inference", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v5 = v0[4];

  v7 = v5[3];
  v6 = v5[4];
  v8 = v5[5];
  v9 = v5[6];
  v10 = swift_task_alloc();
  v0[5] = v10;
  *v10 = v0;
  v10[1] = sub_20CCADB74;
  v11 = v0[2];
  v12 = v0[3];

  return sub_20CCB91B0(v11, v12, v7, v6, v8, v9);
}

uint64_t sub_20CCADB74()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_20CCADCA4, 0, 0);
  }
}

uint64_t sub_20CCADCA4()
{
  v1 = *(v0 + 16);
  v2 = sub_20CCDB264();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_20CCADD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  return MEMORY[0x2822009F8](sub_20CCADD68, 0, 0);
}

uint64_t sub_20CCADD68()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Received XPC request for query inference record", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v6 = v0[3];
  v5 = v0[4];

  v7 = *(v5 + 24);
  v8 = swift_task_alloc();
  v0[5] = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v9 = swift_task_alloc();
  v0[6] = v9;
  v10 = sub_20CCDADE4();
  v0[7] = v10;
  *v9 = v0;
  v9[1] = sub_20CCADF20;
  v11 = v0[2];

  return MEMORY[0x2822008A0](v11, 0, 0, 0xD00000000000001BLL, 0x800000020CCDE510, sub_20CCB38C4, v8, v10);
}

uint64_t sub_20CCADF20()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_20CCAE0D0;
  }

  else
  {

    v2 = sub_20CCAE03C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CCAE03C()
{
  (*(*(v0[7] - 8) + 56))(v0[2], 0, 1);
  v1 = v0[1];

  return v1();
}

uint64_t sub_20CCAE0D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CCAE134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a1;
  return MEMORY[0x2822009F8](sub_20CCAE158, 0, 0);
}

uint64_t sub_20CCAE158()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Received XPC request for query inference records", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v6 = v0[4];
  v5 = v0[5];

  v7 = *(v5 + 24);
  v8 = swift_task_alloc();
  v0[6] = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v9 = swift_task_alloc();
  v0[7] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F880, &qword_20CCDD0B0);
  *v9 = v0;
  v9[1] = sub_20CCAE318;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD00000000000001FLL, 0x800000020CCDE4F0, sub_20CCB38BC, v8, v10);
}

uint64_t sub_20CCAE318()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_20CC8ECE4;
  }

  else
  {

    v2 = sub_20CCAE434;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CCAE454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_20CCAE474, 0, 0);
}

uint64_t sub_20CCAE474()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Received XPC request for update feedback", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v6 = v0[2];
  v5 = v0[3];

  v7 = *(v5 + 24);
  v8 = swift_task_alloc();
  v0[4] = v8;
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v9 = swift_task_alloc();
  v0[5] = v9;
  *v9 = v0;
  v9[1] = sub_20CCAE624;
  v10 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 7, 0, 0, 0xD000000000000019, 0x800000020CCDE4D0, sub_20CCB38B4, v8, v10);
}

uint64_t sub_20CCAE624()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_20CCAE758;
  }

  else
  {

    v2 = sub_20CCAE740;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CCAE758()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CCAE7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  return MEMORY[0x2822009F8](sub_20CCAE7E0, 0, 0);
}

uint64_t sub_20CCAE7E0()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Received XPC request for announce utterance", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v5 = v0[4];

  v7 = v5[3];
  v6 = v5[4];
  v8 = v5[5];
  v9 = v5[6];
  v10 = swift_task_alloc();
  v0[5] = v10;
  *v10 = v0;
  v10[1] = sub_20CCAE94C;
  v11 = v0[2];
  v12 = v0[3];

  return sub_20CCB97B0(v11, v12, v7, v6, v8, v9);
}

uint64_t sub_20CCAE94C()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_20CCAEA7C, 0, 0);
  }
}

uint64_t sub_20CCAEA7C()
{
  v1 = *(v0 + 16);
  v2 = sub_20CCDB0E4();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_20CCAEB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  return MEMORY[0x2822009F8](sub_20CCAEB40, 0, 0);
}

uint64_t sub_20CCAEB40()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Received XPC request to cancel announce utterance", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v5 = v0[4];

  v7 = v5[3];
  v6 = v5[4];
  v8 = v5[5];
  v9 = v5[6];
  v10 = swift_task_alloc();
  v0[5] = v10;
  *v10 = v0;
  v10[1] = sub_20CCAECAC;
  v11 = v0[2];
  v12 = v0[3];

  return sub_20CCBCDF0(v11, v12, v7, v6, v8, v9);
}

uint64_t sub_20CCAECAC()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_20CCB3950, 0, 0);
  }
}

uint64_t sub_20CCAEDDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_20CCAEDFC, 0, 0);
}

uint64_t sub_20CCAEDFC()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Received XPC request for list voice assets", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_20CCAEF4C;

  return sub_20CC892AC();
}

uint64_t sub_20CCAEF4C(uint64_t a1)
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
    *(v4 + 40) = a1;

    return MEMORY[0x2822009F8](sub_20CCAF098, 0, 0);
  }
}

uint64_t sub_20CCAF0BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_20CCAF0DC, 0, 0);
}

uint64_t sub_20CCAF0DC()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Received XPC request for select voice asset", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_20CCB3948;
  v6 = *(v0 + 16);

  return sub_20CC8C4D4(v6);
}

uint64_t sub_20CCAF234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_20CCAF254, 0, 0);
}

uint64_t sub_20CCAF254()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Received XPC request for preview voice asset", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_20CCB3948;
  v6 = *(v0 + 16);

  return sub_20CC8D52C(v6);
}

uint64_t sub_20CCAF3C8()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Received XPC request to observe voice asset changes", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_20CCAF500()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Received XPC request to query inference availability.", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  *v5 = sub_20CCC9688();
  v5[1] = v6;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_20CCAF644()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Received XPC request to refresh device inference availability", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  v7 = v5[11];
  v6 = v5[12];
  __swift_project_boxed_opaque_existential_1(v5 + 8, v7);
  v8 = swift_task_alloc();
  *(v0 + 24) = v8;
  *v8 = v0;
  v8[1] = sub_20CCAF7B0;

  return sub_20CCA23F4(v7, v6);
}

uint64_t sub_20CCAF7B0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20CCAF8C8()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Received XPC request to refresh voice asset cache", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_20CCAFA18;

  return sub_20CC8B0F0();
}

uint64_t sub_20CCAFA18()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20CCAFB2C()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Received XPC request to refresh selected voice", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_20CCB394C;

  return sub_20CC8B574();
}

uint64_t sub_20CCAFC98()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Received XPC request to remove watch inference availability", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  sub_20CCA7190();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_20CCAFDB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_20CCAFDD4, 0, 0);
}

uint64_t sub_20CCAFDD4()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Received XPC request to observe streaming audio.", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_20CCB3948;
  v6 = *(v0 + 16);

  return sub_20CCD1180(v6);
}

uint64_t sub_20CCAFF2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_20CCAFF4C, 0, 0);
}

uint64_t sub_20CCAFF4C()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Received XPC notification that streaming audio is available.", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_20CCB3948;
  v6 = *(v0 + 16);

  return sub_20CCD1BC4(v6);
}

uint64_t sub_20CCB00A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_20CCB00C4, 0, 0);
}

uint64_t sub_20CCB00C4()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Received XPC request handle streaming data.", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_20CCB021C;
  v6 = *(v0 + 16);

  return sub_20CCD2868(v6);
}

uint64_t sub_20CCB021C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20CCB0310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_20CCB0330, 0, 0);
}

uint64_t sub_20CCB0330()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Received XPC notification that streaming finished.", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_20CCB3948;
  v6 = *(v0 + 16);

  return sub_20CCD383C(v6);
}

uint64_t sub_20CCB0488(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = a2[1];
  v3[2] = a3;
  v3[3] = v4;
  v3[4] = v5;
  return MEMORY[0x2822009F8](sub_20CCB04B0, 0, 0);
}

uint64_t sub_20CCB04B0()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20CC86000, v2, v3, "Received synchronize streaming audio start.", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_20CCB0608;
  v7 = v0[3];
  v6 = v0[4];

  return sub_20CCD3BAC(v7, v6);
}

uint64_t sub_20CCB0608()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20CCB071C()
{
  v1 = *(v0 + 16);
  v3 = v1[11];
  v2 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v3);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_20CCAFA18;

  return sub_20CCA23F4(v3, v2);
}

uint64_t InferenceServiceListener.deinit()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  return v0;
}

uint64_t InferenceServiceListener.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_20CCB08B4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20CCB09AC;

  return v6(a1);
}

uint64_t sub_20CCB09AC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_20CCB0AA4(uint64_t a1)
{
  sub_20CCDAF54();
  v2 = MEMORY[0x277D0A278];
  sub_20CCB3770(&qword_27C80F8E8, MEMORY[0x277D0A278], MEMORY[0x277D0A280]);
  v3 = sub_20CCDB644();
  return sub_20CCB0D0C(a1, v3, MEMORY[0x277D0A278], &qword_27C80F490, v2, MEMORY[0x277D0A288]);
}

unint64_t sub_20CCB0B78(uint64_t a1)
{
  sub_20CCDA784();
  v2 = MEMORY[0x277CC95F0];
  sub_20CCB3770(&qword_27C80F8A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v3 = sub_20CCDB644();
  return sub_20CCB0D0C(a1, v3, MEMORY[0x277CC95F0], &qword_27C80F8B0, v2, MEMORY[0x277CC9610]);
}

unint64_t sub_20CCB0C4C(uint64_t a1, uint64_t a2)
{
  sub_20CCDBB44();
  sub_20CCDB6A4();
  v4 = sub_20CCDBB64();

  return sub_20CCB0EAC(a1, a2, v4);
}

unint64_t sub_20CCB0CC4(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x20F30F710](*(v1 + 40), a1, 4);

  return sub_20CCB0F64(v2, v3);
}

unint64_t sub_20CCB0D0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_20CCB3770(v23, v24, v25);
      v19 = sub_20CCDB654();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_20CCB0EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_20CCDBA64())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_20CCB0F64(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_20CCB0FD0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_20CCB10C4;

  return v5(v2 + 32);
}

uint64_t sub_20CCB10C4()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

unint64_t sub_20CCB11D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F920, &qword_20CCDD2F8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F928, &qword_20CCDD300);
    v7 = sub_20CCDBA24();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_20CC89500(v9, v5, &qword_27C80F920, &qword_20CCDD2F8);
      result = sub_20CCB0AA4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_20CCDAF54();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_20CCDB214();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
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

unint64_t sub_20CCB13F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F8C8, &unk_20CCDD290);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F8D0, &unk_20CCDDD50);
    v7 = sub_20CCDBA24();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_20CC89500(v9, v5, &qword_27C80F8C8, &unk_20CCDD290);
      result = sub_20CCB0B78(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_20CCDA784();
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

unint64_t sub_20CCB15E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F8B8, &qword_20CCDD278);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F8C0, &unk_20CCDD280);
    v7 = sub_20CCDBA24();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_20CC89500(v9, v5, &qword_27C80F8B8, &qword_20CCDD278);
      result = sub_20CCB0B78(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_20CCDA784();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80FAF0, &unk_20CCDC6F0);
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
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

unint64_t sub_20CCB180C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F930, &qword_20CCDD308);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F938, qword_20CCDD310);
    v7 = sub_20CCDBA24();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_20CC89500(v9, v5, &qword_27C80F930, &qword_20CCDD308);
      v11 = *v5;
      v12 = v5[1];
      result = sub_20CCB0C4C(*v5, v12);
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
      v18 = type metadata accessor for AudioSynthesisHandle(0);
      result = sub_20CCB38E4(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15);
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

unint64_t sub_20CCB19E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F910, &qword_20CCDD2E8);
    v3 = sub_20CCDBA24();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_20CCB0C4C(v5, v6);
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

unint64_t sub_20CCB1AE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F918, &qword_20CCDD2F0);
    v3 = sub_20CCDBA24();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_20CCB0C4C(v5, v6);
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

unint64_t sub_20CCB1BE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F900, &qword_20CCDD2D8);
    v3 = sub_20CCDBA24();
    v4 = a1 + 32;

    while (1)
    {
      sub_20CC89500(v4, &v13, &qword_27C80F908, &qword_20CCDD2E0);
      v5 = v13;
      v6 = v14;
      result = sub_20CCB0C4C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_20CC898D4(&v15, (v3[7] + 32 * result));
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

unint64_t sub_20CCB1D18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F8D8, &qword_20CCDD2A0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F8E0, &qword_20CCDD2A8);
    v7 = sub_20CCDBA24();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_20CC89500(v9, v5, &qword_27C80F8D8, &qword_20CCDD2A0);
      v11 = *v5;
      result = sub_20CCB0CC4(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 4 * result) = v11;
      v15 = v7[7];
      v16 = sub_20CCDAFB4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
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

unint64_t sub_20CCB1EF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F8F0, &qword_20CCDD2C8);
    v3 = sub_20CCDBA24();
    v4 = a1 + 32;

    while (1)
    {
      sub_20CC89500(v4, &v13, &qword_27C80F8F8, &qword_20CCDD2D0);
      v5 = v13;
      v6 = v14;
      result = sub_20CCB0C4C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_20CCB38CC(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

uint64_t sub_20CCB2028(uint64_t a1)
{
  v2 = sub_20CCDB2B4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F6B8, &qword_20CCDD240);
    v9 = sub_20CCDB954();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_20CCB3770(&qword_28110ED38, MEMORY[0x277D0A5E0], MEMORY[0x277D0A5E8]);
      v16 = sub_20CCDB644();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_20CCB3770(&qword_27C80F6B0, MEMORY[0x277D0A5E0], MEMORY[0x277D0A5F0]);
          v23 = sub_20CCDB654();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_20CCB2348(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F6C0, &qword_20CCDCCC0);
    v3 = sub_20CCDB954();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_20CCDBB44();

      sub_20CCDB6A4();
      result = sub_20CCDBB64();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_20CCDBA64();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_20CCB2568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_20CC92A0C;

  return sub_20CCAD65C(a1, a2, a3, v3);
}

uint64_t sub_20CCB261C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_20CC92A0C;

  return sub_20CCAD9E4(a1, a2, a3, v3);
}

uint64_t sub_20CCB26D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_20CC92A0C;

  return sub_20CCADD44(a1, a2, a3, v3);
}

uint64_t sub_20CCB2784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_20CC92A0C;

  return sub_20CCAE134(a1, a2, a3, v3);
}

unint64_t sub_20CCB2838()
{
  result = qword_28110E628;
  if (!qword_28110E628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C80F880, &qword_20CCDD0B0);
    sub_20CCB3770(&qword_28110EDA8, MEMORY[0x277D0A010], MEMORY[0x277D0A000]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110E628);
  }

  return result;
}

uint64_t sub_20CCB28EC(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_20CC92A0C;

  return sub_20CCAE454(a1, a2, v2);
}

uint64_t sub_20CCB2994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_20CC92A0C;

  return sub_20CCAE7BC(a1, a2, a3, v3);
}

uint64_t sub_20CCB2A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_20CC92A0C;

  return sub_20CCAEB1C(a1, a2, a3, v3);
}

uint64_t sub_20CCB2AFC(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_20CC92A0C;

  return sub_20CCAEDDC(a1, a2, v2);
}

unint64_t sub_20CCB2BA8()
{
  result = qword_28110E620;
  if (!qword_28110E620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C80F888, &qword_20CCDD0F8);
    sub_20CCB3770(&qword_28110ED50, MEMORY[0x277D0A548], MEMORY[0x277D0A518]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110E620);
  }

  return result;
}

uint64_t sub_20CCB2C5C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_20CC92A0C;

  return sub_20CCAF0BC(a1, a2, v2);
}

uint64_t sub_20CCB2D04(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_20CC92A0C;

  return sub_20CCAF234(a1, a2, v2);
}

uint64_t sub_20CCB2DAC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20CC8DF7C;

  return sub_20CCAF4E0(a1);
}

unint64_t sub_20CCB2E58()
{
  result = qword_28110ED88;
  if (!qword_28110ED88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110ED88);
  }

  return result;
}

uint64_t sub_20CCB2EAC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20CC92A0C;

  return sub_20CCAF624(a1, v1);
}

uint64_t sub_20CCB2F44(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20CC92A0C;

  return sub_20CCAF8A8(a1, v1);
}

uint64_t sub_20CCB2FDC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20CC92A0C;

  return sub_20CCAFB0C(a1, v1);
}

uint64_t sub_20CCB3074()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20CC92A0C;

  return sub_20CCAFC7C();
}

uint64_t sub_20CCB310C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_20CC92A0C;

  return sub_20CCAFDB4(a1, a2, v2);
}

uint64_t sub_20CCB31B4(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_20CC92A0C;

  return sub_20CCAFF2C(a1, a2, v2);
}

uint64_t sub_20CCB325C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_20CC92A0C;

  return sub_20CCB00A4(a1, a2, v2);
}

uint64_t sub_20CCB3304(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_20CC92A0C;

  return sub_20CCB0310(a1, a2, v2);
}

uint64_t sub_20CCB33AC(uint64_t a1, uint64_t *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_20CC92A0C;

  return sub_20CCB0488(a1, a2, v2);
}

unint64_t sub_20CCB3454()
{
  result = qword_27C80F890;
  if (!qword_27C80F890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C80F890);
  }

  return result;
}

uint64_t sub_20CCB34A8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20CC8DF7C;

  return sub_20CCB06FC(v0);
}

uint64_t sub_20CCB3538(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20CC92A0C;

  return sub_20CC8DD38(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_20CCB3650(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F448, &unk_20CCDCF60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20CCB36B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20CC92A0C;

  return sub_20CCB0FD0(a1, v4);
}

uint64_t sub_20CCB3770(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20CCB37B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20CC92A0C;

  return sub_20CCB08B4(a1, v4);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_20CCB38CC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_20CCB38E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioSynthesisHandle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CCB39D8()
{
  v1 = v0;
  v2 = sub_20CCDA784();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C80F660, &qword_20CCDD400);
  v6 = sub_20CCDB474();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = sub_20CCDB904();
  v64 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v46 - v12;
  v14 = sub_20CCDB764();
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 144) != 255)
  {
LABEL_19:

    sub_20CCA11B4(*(v1 + 136), *(v1 + 144));
    swift_defaultActor_destroy();
    return v1;
  }

  v61 = v11;
  v62 = v8;
  v54 = v5;
  v48 = v6;
  v63 = v17;
  v18 = v15;
  sub_20CCDB604();
  swift_beginAccess();
  v49 = v1;
  v19 = *(v1 + 128);
  v20 = v19 + 64;
  v21 = 1 << *(v19 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v19 + 64);
  v24 = (v21 + 63) >> 6;
  v50 = v3 + 32;
  v51 = v3 + 16;
  v59 = (v64 + 32);
  v60 = TupleTypeMetadata2 - 8;
  v47 = v18;
  v55 = v3;
  v56 = v19;
  v57 = (v3 + 8);
  v58 = (v18 + 16);

  v26 = 0;
  v64 = v2;
  v27 = v14;
  v52 = v13;
  v53 = v14;
  v28 = v13;
  if (v23)
  {
    while (1)
    {
      v29 = v26;
LABEL_13:
      v32 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v33 = v32 | (v29 << 6);
      v35 = v55;
      v34 = v56;
      v36 = v54;
      (*(v55 + 16))(v54, *(v56 + 48) + *(v55 + 72) * v33, v2);
      v37 = *(*(v34 + 56) + 8 * v33);
      v38 = v2;
      v39 = *(TupleTypeMetadata2 + 48);
      v40 = v61;
      (*(v35 + 32))(v61, v36, v38);
      *&v40[v39] = v37;
      v41 = *(TupleTypeMetadata2 - 8);
      (*(v41 + 56))(v40, 0, 1, TupleTypeMetadata2);

      v31 = v29;
      v42 = v40;
      v28 = v52;
      v27 = v53;
LABEL_14:
      (*v59)(v28, v42, v62);
      if ((*(v41 + 48))(v28, 1, TupleTypeMetadata2) == 1)
      {
        break;
      }

      sub_20CCB4070(&qword_27C80F940, MEMORY[0x277D85678], MEMORY[0x277D85680]);
      v43 = swift_allocError();
      (*v58)(v44, v63, v27);
      sub_20CCDB424();

      v2 = v64;
      result = (*v57)(v28, v64);
      v26 = v31;
      if (!v23)
      {
        goto LABEL_6;
      }
    }

    v1 = v49;
    swift_beginAccess();
    sub_20CCB4070(&qword_27C80F8A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_20CCDB634();
    sub_20CCDB624();
    swift_endAccess();
    (*(v47 + 8))(v63, v27);
    goto LABEL_19;
  }

LABEL_6:
  if (v24 <= v26 + 1)
  {
    v30 = v26 + 1;
  }

  else
  {
    v30 = v24;
  }

  v31 = v30 - 1;
  while (1)
  {
    v29 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v29 >= v24)
    {
      v45 = v61;
      v41 = *(TupleTypeMetadata2 - 8);
      (*(v41 + 56))(v61, 1, 1, TupleTypeMetadata2);
      v42 = v45;
      v23 = 0;
      goto LABEL_14;
    }

    v23 = *(v20 + 8 * v29);
    ++v26;
    if (v23)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20CCB402C()
{
  sub_20CCB39D8();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_20CCB4070(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL sub_20CCB40BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _sSo27AudioStreamBasicDescriptionV28FitnessIntelligenceInferenceE2eeoiySbAB_ABtFZ_0(v5, v7);
}

uint64_t sub_20CCB41A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16))
  {
    v5 = 0;
LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  v4 = sub_20CCB0C4C(0x52656C706D61536DLL, 0xEB00000000657461);
  v5 = 0;
  if (v6)
  {
    sub_20CC89458(*(a1 + 56) + 32 * v4, v33);
    if (swift_dynamicCast())
    {
      v5 = v32;
    }
  }

  if (!*(a1 + 16))
  {
    goto LABEL_11;
  }

  v7 = sub_20CCB0C4C(0x4974616D726F466DLL, 0xE900000000000044);
  if (v8 & 1) != 0 && (sub_20CC89458(*(a1 + 56) + 32 * v7, v33), (swift_dynamicCast()))
  {
    v9 = v32;
    if (!*(a1 + 16))
    {
LABEL_9:
      v10 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v9 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_9;
    }
  }

  v18 = sub_20CCB0C4C(0x4674616D726F466DLL, 0xEC0000007367616CLL);
  if (v19)
  {
    sub_20CC89458(*(a1 + 56) + 32 * v18, v33);
    if (swift_dynamicCast())
    {
      v10 = v32;
      if (!*(a1 + 16))
      {
        goto LABEL_26;
      }

      goto LABEL_13;
    }
  }

LABEL_12:
  v10 = 0;
  if (!*(a1 + 16))
  {
LABEL_26:
    v13 = 0;
    goto LABEL_27;
  }

LABEL_13:
  v11 = sub_20CCB0C4C(0x655073657479426DLL, 0xEF74656B63615072);
  if ((v12 & 1) == 0 || (sub_20CC89458(*(a1 + 56) + 32 * v11, v33), (swift_dynamicCast() & 1) == 0))
  {
LABEL_17:
    v13 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_27;
    }

    goto LABEL_18;
  }

  v13 = v32;
  if (!*(a1 + 16))
  {
    goto LABEL_27;
  }

LABEL_18:
  v14 = sub_20CCB0C4C(0xD000000000000010, 0x800000020CCDE5A0);
  if ((v15 & 1) == 0 || (sub_20CC89458(*(a1 + 56) + 32 * v14, v33), (swift_dynamicCast() & 1) == 0))
  {
LABEL_27:
    v16 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_21;
    }

    goto LABEL_28;
  }

  v16 = v32;
  if (!*(a1 + 16))
  {
LABEL_21:
    v17 = 0;
LABEL_31:
    v22 = 0;
    goto LABEL_32;
  }

LABEL_28:
  v20 = sub_20CCB0C4C(0x655073657479426DLL, 0xEE00656D61724672);
  if (v21 & 1) != 0 && (sub_20CC89458(*(a1 + 56) + 32 * v20, v33), (swift_dynamicCast()))
  {
    v17 = v32;
    if (!*(a1 + 16))
    {
      goto LABEL_31;
    }
  }

  else
  {
    v17 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_31;
    }
  }

  v28 = sub_20CCB0C4C(0xD000000000000011, 0x800000020CCDE5C0);
  if (v29 & 1) != 0 && (sub_20CC89458(*(a1 + 56) + 32 * v28, v33), (swift_dynamicCast()))
  {
    v22 = v32;
    if (!*(a1 + 16))
    {
LABEL_40:
      v23 = 0;
      goto LABEL_41;
    }
  }

  else
  {
    v22 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_40;
    }
  }

  v30 = sub_20CCB0C4C(0x726550737469426DLL, 0xEF6C656E6E616843);
  if (v31)
  {
    sub_20CC89458(*(a1 + 56) + 32 * v30, v33);
    if (swift_dynamicCast())
    {
      v23 = v32;
      if (!*(a1 + 16))
      {
        goto LABEL_41;
      }

      goto LABEL_33;
    }
  }

LABEL_32:
  v23 = 0;
  if (!*(a1 + 16))
  {
LABEL_41:

    goto LABEL_42;
  }

LABEL_33:
  v24 = sub_20CCB0C4C(0x657672657365526DLL, 0xE900000000000064);
  if ((v25 & 1) == 0)
  {
    goto LABEL_41;
  }

  sub_20CC89458(*(a1 + 56) + 32 * v24, v33);

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_42:
    v27 = 0;
    goto LABEL_43;
  }

  v27 = v32;
LABEL_43:
  *a2 = v5;
  *(a2 + 8) = v9;
  *(a2 + 12) = v10;
  *(a2 + 16) = v13;
  *(a2 + 20) = v16;
  *(a2 + 24) = v17;
  *(a2 + 28) = v22;
  *(a2 + 32) = v23;
  *(a2 + 36) = v27;
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

uint64_t sub_20CCB4654(uint64_t *a1, int a2)
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

uint64_t sub_20CCB469C(uint64_t result, int a2, int a3)
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

uint64_t sub_20CCB46EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  *(v9 + 1368) = a8;
  *(v9 + 1320) = a7;
  *(v9 + 1272) = a6;
  *(v9 + 1224) = a5;
  *(v9 + 2036) = a4;
  *(v9 + 1176) = a3;
  *(v9 + 1128) = a9;
  *(v9 + 1080) = a2;
  *(v9 + 1032) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F468, &unk_20CCDCD30);
  *(v9 + 1416) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F948, &qword_20CCDD4D0);
  *(v9 + 1424) = swift_task_alloc();
  type metadata accessor for SynthesizedAudio(0);
  *(v9 + 1432) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F820, &qword_20CCDCF50);
  *(v9 + 1440) = swift_task_alloc();
  *(v9 + 1448) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F960, &qword_20CCDD548);
  *(v9 + 1456) = swift_task_alloc();
  *(v9 + 1464) = swift_task_alloc();
  *(v9 + 1472) = type metadata accessor for PlayAudioResult(0);
  *(v9 + 1480) = swift_task_alloc();
  *(v9 + 1488) = swift_task_alloc();
  *(v9 + 1496) = type metadata accessor for AudioSynthesisHandle(0);
  *(v9 + 1504) = swift_task_alloc();
  v10 = type metadata accessor for InferenceSystem.PrewarmedSynthesisVoice(0);
  *(v9 + 1512) = v10;
  *(v9 + 1520) = *(v10 - 8);
  *(v9 + 1528) = swift_task_alloc();
  *(v9 + 1536) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F968, &qword_20CCDD550);
  *(v9 + 1544) = swift_task_alloc();
  *(v9 + 1552) = swift_task_alloc();
  v11 = sub_20CCDB504();
  *(v9 + 1560) = v11;
  *(v9 + 1568) = *(v11 - 8);
  *(v9 + 1576) = swift_task_alloc();
  v12 = sub_20CCDB4E4();
  *(v9 + 1584) = v12;
  *(v9 + 1592) = *(v12 - 8);
  *(v9 + 1600) = swift_task_alloc();
  v13 = sub_20CCDA744();
  *(v9 + 1608) = v13;
  *(v9 + 1616) = *(v13 - 8);
  *(v9 + 1624) = swift_task_alloc();
  v14 = sub_20CCDAE94();
  *(v9 + 1632) = v14;
  v15 = *(v14 - 8);
  *(v9 + 1640) = v15;
  *(v9 + 1648) = *(v15 + 64);
  *(v9 + 1656) = swift_task_alloc();
  *(v9 + 1664) = swift_task_alloc();
  *(v9 + 1672) = swift_task_alloc();
  v16 = sub_20CCDB584();
  *(v9 + 1680) = v16;
  *(v9 + 1688) = *(v16 - 8);
  *(v9 + 1696) = swift_task_alloc();
  *(v9 + 1704) = swift_task_alloc();
  *(v9 + 1712) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCB4BD4, 0, 0);
}

uint64_t sub_20CCB4BD4()
{
  v45 = v0;
  v44[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1672);
  v2 = *(v0 + 1640);
  v3 = *(v0 + 1632);
  v4 = *(v0 + 1080);
  sub_20CCDB394();
  v5 = *(v2 + 16);
  *(v0 + 1720) = v5;
  *(v0 + 1728) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = sub_20CCDB564();
  v7 = sub_20CCDB8B4();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 1712);
  v10 = *(v0 + 1688);
  v11 = *(v0 + 1680);
  v12 = *(v0 + 1672);
  if (v8)
  {
    v43 = *(v0 + 1680);
    v13 = *(v0 + 1664);
    v14 = *(v0 + 1640);
    log = v6;
    v15 = *(v0 + 1632);
    v42 = *(v0 + 1712);
    v16 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v44[0] = v40;
    *v16 = 136380675;
    v5(v13, v12, v15);
    v17 = sub_20CCDB684();
    v18 = v7;
    v20 = v19;
    (*(v14 + 8))(v12, v15);
    v21 = sub_20CC88C4C(v17, v20, v44);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_20CC86000, log, v18, "Received inference request: %{private}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x20F30FD70](v40, -1, -1);
    MEMORY[0x20F30FD70](v16, -1, -1);

    v22 = *(v10 + 8);
    v22(v42, v43);
  }

  else
  {
    v23 = *(v0 + 1640);
    v24 = *(v0 + 1632);

    (*(v23 + 8))(v12, v24);
    v22 = *(v10 + 8);
    v22(v9, v11);
  }

  v25 = *(v0 + 1128);
  *(v0 + 1736) = [objc_allocWithZone(MEMORY[0x277D3F038]) initWithResourceType:17 andState:1];
  *(v0 + 2032) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F970, &unk_20CCDD558);
  inited = swift_initStackObject();
  *(inited + 32) = 0x614E747265737341;
  *(inited + 16) = xmmword_20CCDD450;
  v27 = MEMORY[0x277D837D0];
  *(inited + 40) = 0xEA0000000000656DLL;
  *(inited + 48) = 0xD000000000000014;
  *(inited + 56) = 0x800000020CCDE6A0;
  *(inited + 72) = v27;
  *(inited + 80) = 0x7954747265737341;
  *(inited + 88) = 0xEA00000000006570;
  *(inited + 96) = 0xD000000000000012;
  *(inited + 104) = 0x800000020CCDE6C0;
  *(inited + 120) = v27;
  *(inited + 128) = 0xD000000000000011;
  *(inited + 136) = 0x800000020CCDE6E0;
  *(inited + 144) = 0xD00000000000001DLL;
  *(inited + 152) = 0x800000020CCDDEC0;
  *(inited + 168) = v27;
  strcpy((inited + 176), "TimeoutAction");
  *(inited + 190) = -4864;
  *(inited + 192) = 0xD000000000000014;
  *(inited + 200) = 0x800000020CCDE700;
  *(inited + 216) = v27;
  strcpy((inited + 224), "TimeoutSeconds");
  *(inited + 239) = -18;
  *(inited + 264) = MEMORY[0x277D839F8];
  *(inited + 240) = v25;
  sub_20CCB1BE8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F908, &qword_20CCDD2E0);
  swift_arrayDestroy();
  v28 = sub_20CCDB614();

  v29 = IOPMAssertionCreateWithProperties(v28, (v0 + 2032));

  if (v29)
  {
    v30 = (v0 + 1696);
    sub_20CCDB394();
    v31 = sub_20CCDB564();
    v32 = sub_20CCDB894();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "Failed to take power assertion for inference pipeline";
LABEL_9:
      _os_log_impl(&dword_20CC86000, v31, v32, v34, v33, 2u);
      v35 = *v30;
      MEMORY[0x20F30FD70](v33, -1, -1);
      goto LABEL_11;
    }
  }

  else
  {
    v30 = (v0 + 1704);
    sub_20CCDB394();
    v31 = sub_20CCDB564();
    v32 = sub_20CCDB8B4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "Successfully created power assertion for inference pipeline";
      goto LABEL_9;
    }
  }

  v35 = *v30;
LABEL_11:
  v36 = *(v0 + 1680);
  v37 = *(v0 + 1368);

  v22(v35, v36);
  *(v0 + 1744) = sub_20CCDAE44();
  *(v0 + 1752) = v38;

  return MEMORY[0x2822009F8](sub_20CCB515C, v37, 0);
}

uint64_t sub_20CCB515C()
{
  sub_20CCCB2D0(*(v0 + 1744), *(v0 + 1752));

  return MEMORY[0x2822009F8](sub_20CCB520C, 0, 0);
}

uint64_t sub_20CCB520C()
{
  v25 = *(v0 + 1720);
  v1 = *(v0 + 1648);
  v2 = *(v0 + 1640);
  v29 = *(v0 + 1632);
  v30 = *(v0 + 1656);
  v3 = *(v0 + 1576);
  v4 = *(v0 + 1568);
  v5 = *(v0 + 1560);
  v28 = *(v0 + 1624);
  v27 = *(v0 + 1368);
  v26 = *(v0 + 1320);
  v6 = *(v0 + 1272);
  v7 = *(v0 + 1224);
  v24 = *(v0 + 2036);
  v8 = *(v0 + 1128);
  v9 = *(v0 + 1080);
  sub_20CCDA734();
  sub_20CCDB374();
  sub_20CCDB4F4();
  sub_20CCDB4C4();
  (*(v4 + 8))(v3, v5);
  type metadata accessor for AudioSynthesizer(0);
  v10 = swift_allocObject();
  *(v0 + 1760) = v10;
  swift_defaultActor_initialize();
  *(v10 + 152) = 0;
  *(v10 + 136) = 0u;
  *(v10 + 120) = 0u;
  *(v10 + 160) = 1;
  v11 = OBJC_IVAR____TtC28FitnessIntelligenceInference16AudioSynthesizer_asbdContinuation;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F5D0, &qword_20CCDCA30);
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v10 + OBJC_IVAR____TtC28FitnessIntelligenceInference16AudioSynthesizer_encoder) = 0;
  *(v10 + 112) = [objc_allocWithZone(sub_20CCDA904()) init];
  v25(v30, v9, v29);
  v13 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v14 = swift_allocObject();
  *(v0 + 1768) = v14;
  *(v14 + 2) = v7;
  *(v14 + 3) = v6;
  *(v14 + 4) = v26;
  *(v14 + 5) = v27;
  (*(v2 + 32))(&v14[v13], v30, v29);
  *&v14[(v1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8] = v10;
  v15 = v7;

  v16 = v26;

  swift_asyncLet_begin();
  v17 = swift_task_alloc();
  *(v0 + 1776) = v17;
  v17[2] = v15;
  v17[3] = v6;
  v17[4] = v16;
  v17[5] = v27;
  v17[6] = v9;
  v17[7] = v28;
  v17[8] = v8;
  v18 = swift_task_alloc();
  *(v0 + 1784) = v18;
  *v18 = v0;
  v18[1] = sub_20CCB557C;
  v19 = *(v0 + 1600);
  v20 = *(v0 + 1224);
  v21 = *(v0 + 1176);
  v22 = *(v0 + 1080);

  return sub_20CCBE428(v0 + 968, v22, v21, v24 & 1, v19, &unk_20CCDD580, v17, v20);
}

uint64_t sub_20CCB557C()
{
  v2 = *v1;
  v3 = *v1;
  v3[224] = v0;
  v3[225] = v3[121];
  v3[226] = v2[122];
  v4 = v2[123];
  v5 = *(v3 + 63);
  *(v3 + 114) = *(v3 + 62);
  v3[227] = v4;
  *(v3 + 115) = v5;
  v3[232] = v2[128];

  if (v0)
  {
    v6 = v3[194];

    return MEMORY[0x282200920](v3 + 2, v6, sub_20CCB8768, v3 + 82);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_20CCB5794, 0, 0);
  }
}

uint64_t sub_20CCB5794(uint64_t a1)
{
  v2 = sub_20CCDAE44();
  v4 = v3;
  *(v1 + 233) = v3;
  v5 = swift_task_alloc();
  *(v1 + 234) = v5;
  *v5 = v1;
  v5[1] = sub_20CCB587C;
  v6 = *(v1 + 203);
  v7 = *(v1 + 171);
  v8 = v1[141];

  return sub_20CCC50A4(v2, v4, v6, v7, v8);
}

uint64_t sub_20CCB587C()
{
  v2 = *v1;
  *(*v1 + 1880) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20CCB5ACC, 0, 0);
  }

  else
  {
    v3 = *(v2 + 1552);

    return MEMORY[0x282200930](v2 + 16, v3, sub_20CCB5A28, v2 + 1088);
  }
}

uint64_t sub_20CCB5A28()
{
  *(v1 + 1888) = v0;
  if (v0)
  {
    v2 = sub_20CCB8A48;
  }

  else
  {
    v2 = sub_20CCB5E6C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CCB5ACC()
{
  v1 = *(v0 + 1824);

  v2 = *(v0 + 1552);

  return MEMORY[0x282200920](v0 + 16, v2, sub_20CCB5B8C, v0 + 1040);
}

uint64_t sub_20CCB5B8C()
{

  return MEMORY[0x2822009F8](sub_20CCB5C18, 0, 0);
}

uint64_t sub_20CCB5C18()
{
  v1 = *(v0 + 1736);
  v2 = *(v0 + 1624);
  v3 = *(v0 + 1616);
  v4 = *(v0 + 1608);
  v5 = *(v0 + 1600);
  v6 = *(v0 + 1592);
  v7 = *(v0 + 1584);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  sub_20CCBD37C((v0 + 2032));
  if (v1)
  {
    v8 = *(v0 + 1736);
    [v8 updateState_];
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_20CCB5E6C()
{
  v1 = *(v0 + 193);
  v2 = *(v0 + 190);
  v3 = *(v0 + 189);
  sub_20CC89500(*(v0 + 194), v1, &qword_27C80F968, &qword_20CCDD550);
  v4 = (*(v2 + 48))(v1, 1, v3);
  v5 = *(v0 + 193);
  if (v4 == 1)
  {
    sub_20CC89568(v5, &qword_27C80F968, &qword_20CCDD550);
    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(*(v0 + 210), qword_28110EE00);
    v6 = sub_20CCDB564();
    v7 = sub_20CCDB8B4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_20CC86000, v6, v7, "No voice requested/available, skipping synthesis and playback", v8, 2u);
      MEMORY[0x20F30FD70](v8, -1, -1);
    }

    v29 = *(v0 + 228);
    v9 = *(v0 + 182);
    v10 = *(v0 + 177);
    v28 = *(v0 + 171);
    v26 = *(v0 + 203);
    v27 = *(v0 + 165);
    v25 = *(v0 + 159);
    v24 = *(v0 + 153);
    v11 = *(v0 + 135);
    v12 = *(v0 + 129);

    v13 = sub_20CCDB0E4();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
    v14 = sub_20CCDAF54();
    (*(*(v14 - 8) + 56))(v10, 1, 1, v14);

    sub_20CCDADF4();
    sub_20CCBEC38(v26, v11, v12, v24, v25, v27, v28);

    v15 = *(v0 + 194);

    return MEMORY[0x282200920](v0 + 2, v15, sub_20CCB86DC, v0 + 148);
  }

  else
  {
    sub_20CCC5BD0(v5, *(v0 + 191), type metadata accessor for InferenceSystem.PrewarmedSynthesisVoice);
    v16 = sub_20CCDAE44();
    v18 = v17;
    *(v0 + 237) = v17;
    v19 = swift_task_alloc();
    *(v0 + 238) = v19;
    *v19 = v0;
    v19[1] = sub_20CCB6268;
    v20 = *(v0 + 203);
    v21 = *(v0 + 171);
    v22 = v0[141];

    return sub_20CCC50A4(v16, v18, v20, v21, v22);
  }
}

uint64_t sub_20CCB6268()
{
  *(*v1 + 1912) = v0;

  if (v0)
  {
    v2 = sub_20CCB6634;
  }

  else
  {
    v2 = sub_20CCB63CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CCB63CC()
{
  v1 = v0;
  v2 = *(v0 + 1528);
  v3 = *(v0 + 1512);
  *(v1 + 2037) = sub_20CCDAE34() & 1;
  v4 = *(v3 + 20);
  v5 = swift_task_alloc();
  *(v1 + 1920) = v5;
  *v5 = v1;
  v5[1] = sub_20CCB64F4;
  v6 = *(v1 + 1824);
  v7 = *(v1 + 1816);
  v8 = *(v1 + 1808);
  v9 = *(v1 + 1760);
  v10 = *(v1 + 1600);
  v11 = *(v1 + 1528);
  v12 = *(v1 + 1504);

  return sub_20CCBF008(v12, v8, v7, v6, v9, v11, v2 + v4, v10);
}

uint64_t sub_20CCB64F4()
{
  *(*v1 + 1928) = v0;

  if (v0)
  {
    v2 = sub_20CCB8DE8;
  }

  else
  {
    v2 = sub_20CCB69FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CCB6634()
{
  v1 = v0[228];
  v2 = v0[191];

  sub_20CCC56A8(v2, type metadata accessor for InferenceSystem.PrewarmedSynthesisVoice);
  v3 = v0[194];

  return MEMORY[0x282200920](v0 + 2, v3, sub_20CCB671C, v0 + 154);
}

uint64_t sub_20CCB671C()
{

  return MEMORY[0x2822009F8](sub_20CCB67A8, 0, 0);
}

uint64_t sub_20CCB67A8()
{
  v1 = *(v0 + 1736);
  v2 = *(v0 + 1624);
  v3 = *(v0 + 1616);
  v4 = *(v0 + 1608);
  v5 = *(v0 + 1600);
  v6 = *(v0 + 1592);
  v7 = *(v0 + 1584);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  sub_20CCBD37C((v0 + 2032));
  if (v1)
  {
    v8 = *(v0 + 1736);
    [v8 updateState_];
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_20CCB69FC(uint64_t a1)
{
  v2 = sub_20CCDAE44();
  v4 = v3;
  *(v1 + 242) = v3;
  v5 = swift_task_alloc();
  *(v1 + 243) = v5;
  *v5 = v1;
  v5[1] = sub_20CCB6AE4;
  v6 = *(v1 + 203);
  v7 = *(v1 + 171);
  v8 = v1[141];

  return sub_20CCC50A4(v2, v4, v6, v7, v8);
}

uint64_t sub_20CCB6AE4()
{
  *(*v1 + 1952) = v0;

  if (v0)
  {
    v2 = sub_20CCB6F94;
  }

  else
  {
    v2 = sub_20CCB6C48;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CCB6C48(uint64_t a1)
{
  v2 = v1;
  v3 = sub_20CCDAE44();
  v5 = v4;
  *(v1 + 1960) = v4;
  v6 = swift_task_alloc();
  *(v2 + 1968) = v6;
  *v6 = v2;
  v6[1] = sub_20CCB6D5C;
  v7 = *(v2 + 2037);
  v8 = *(v2 + 1760);
  v9 = *(v2 + 1600);
  v10 = *(v2 + 1504);
  v11 = *(v2 + 1488);

  return sub_20CCC0628(v11, v3, v5, v8, v10, v9, 0, v7);
}

uint64_t sub_20CCB6D5C()
{
  v1 = *v0;
  v2 = *(*v0 + 1504);
  v3 = *(*v0 + 1496);

  v4 = *(v2 + *(v3 + 32));
  *(v1 + 1976) = v4;

  return MEMORY[0x2822009F8](sub_20CCB6EE0, v4, 0);
}

uint64_t sub_20CCB6EE0()
{
  v1 = *(v0 + 1976);
  if (*(v1 + 168))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v1 = *(v0 + 1976);
  }

  else
  {
    Current = *(v1 + 160);
  }

  *(v0 + 1984) = Current;
  *(v0 + 1992) = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_20CCB737C, 0, 0);
}

uint64_t sub_20CCB6F94()
{
  v1 = v0[228];
  v2 = v0[191];
  v3 = v0[188];

  sub_20CCC56A8(v2, type metadata accessor for InferenceSystem.PrewarmedSynthesisVoice);
  sub_20CCC56A8(v3, type metadata accessor for AudioSynthesisHandle);
  v4 = v0[194];

  return MEMORY[0x282200920](v0 + 2, v4, sub_20CCB709C, v0 + 166);
}

uint64_t sub_20CCB709C()
{

  return MEMORY[0x2822009F8](sub_20CCB7128, 0, 0);
}

uint64_t sub_20CCB7128()
{
  v1 = *(v0 + 1736);
  v2 = *(v0 + 1624);
  v3 = *(v0 + 1616);
  v4 = *(v0 + 1608);
  v5 = *(v0 + 1600);
  v6 = *(v0 + 1592);
  v7 = *(v0 + 1584);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  sub_20CCBD37C((v0 + 2032));
  if (v1)
  {
    v8 = *(v0 + 1736);
    [v8 updateState_];
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_20CCB737C()
{
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(*(v0 + 1680), qword_28110EE00);
  v1 = sub_20CCDB564();
  v2 = sub_20CCDB8B4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 1984) - *(v0 + 1992);
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = v3;
    _os_log_impl(&dword_20CC86000, v1, v2, "Audio synthesis duration=%f", v4, 0xCu);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v5 = *(v0 + 1488);
  v6 = *(v0 + 1480);

  sub_20CCC575C(v5, v6, type metadata accessor for PlayAudioResult);
  v7 = sub_20CCDB564();
  v8 = sub_20CCDB8B4();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 1480);
  if (v9)
  {
    v11 = *(v0 + 1472);
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    v13 = *(v10 + *(v11 + 24));
    sub_20CCC56A8(v10, type metadata accessor for PlayAudioResult);
    *(v12 + 4) = v13;
    _os_log_impl(&dword_20CC86000, v7, v8, "Playback duration=%f", v12, 0xCu);
    MEMORY[0x20F30FD70](v12, -1, -1);
  }

  else
  {

    sub_20CCC56A8(v10, type metadata accessor for PlayAudioResult);
  }

  if (sub_20CCDB3D4())
  {
    v14 = swift_task_alloc();
    *(v0 + 2000) = v14;
    *v14 = v0;
    v14[1] = sub_20CCB798C;
    v15 = *(v0 + 1432);

    return sub_20CCA86B8(v15);
  }

  else
  {
    v17 = *(v0 + 1448);
    v18 = sub_20CCDA6A4();
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
    v38 = *(v0 + 1624);
    v19 = *(v0 + 1488);
    v29 = *(v0 + 1464);
    v20 = *(v0 + 1448);
    v21 = *(v0 + 1440);
    v22 = *(v0 + 1424);
    v30 = *(v0 + 1416);
    v31 = *(v0 + 1528);
    v36 = *(v0 + 1272);
    v37 = *(v0 + 1320);
    v35 = *(v0 + 1224);
    v34 = *(v0 + 1080);
    v32 = *(v0 + 1368);
    v33 = *(v0 + 1032);
    v23 = sub_20CCDB104();
    v24 = *(v23 - 8);
    (*(v24 + 16))(v22, v19, v23);
    (*(v24 + 56))(v22, 0, 1, v23);
    sub_20CC89500(v20, v21, &qword_27C80F820, &qword_20CCDCF50);
    sub_20CCDB0D4();
    sub_20CC89568(v20, &qword_27C80F820, &qword_20CCDCF50);
    v25 = sub_20CCDB0E4();
    (*(*(v25 - 8) + 56))(v29, 0, 1, v25);
    v26 = sub_20CCDAF54();
    v27 = *(v26 - 8);
    (*(v27 + 16))(v30, v31, v26);
    (*(v27 + 56))(v30, 0, 1, v26);

    sub_20CCDADF4();
    sub_20CCBEC38(v38, v34, v33, v35, v36, v37, v32);
    *(v0 + 2016) = sub_20CCDAE44();
    *(v0 + 2024) = v28;

    return MEMORY[0x2822009F8](sub_20CCB8224, v32, 0);
  }
}

uint64_t sub_20CCB798C()
{
  *(*v1 + 2008) = v0;

  if (v0)
  {
    v2 = sub_20CCB7E70;
  }

  else
  {
    v2 = sub_20CCB7ACC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CCB7ACC()
{
  v1 = v0[179];
  sub_20CC89500(v1, v0[181], &qword_27C80F820, &qword_20CCDCF50);
  sub_20CCC56A8(v1, type metadata accessor for SynthesizedAudio);
  v22 = v0[203];
  v2 = v0[186];
  v13 = v0[183];
  v3 = v0[181];
  v4 = v0[180];
  v5 = v0[178];
  v14 = v0[177];
  v15 = v0[191];
  v20 = v0[159];
  v21 = v0[165];
  v19 = v0[153];
  v18 = v0[135];
  v16 = v0[171];
  v17 = v0[129];
  v6 = sub_20CCDB104();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, v2, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  sub_20CC89500(v3, v4, &qword_27C80F820, &qword_20CCDCF50);
  sub_20CCDB0D4();
  sub_20CC89568(v3, &qword_27C80F820, &qword_20CCDCF50);
  v8 = sub_20CCDB0E4();
  (*(*(v8 - 8) + 56))(v13, 0, 1, v8);
  v9 = sub_20CCDAF54();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v14, v15, v9);
  (*(v10 + 56))(v14, 0, 1, v9);

  sub_20CCDADF4();
  sub_20CCBEC38(v22, v18, v17, v19, v20, v21, v16);
  v0[252] = sub_20CCDAE44();
  v0[253] = v11;

  return MEMORY[0x2822009F8](sub_20CCB8224, v16, 0);
}

uint64_t sub_20CCB7E70()
{
  v1 = *(v0 + 1448);

  v2 = sub_20CCDA6A4();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v23 = *(v0 + 1624);
  v3 = *(v0 + 1488);
  v14 = *(v0 + 1464);
  v4 = *(v0 + 1448);
  v5 = *(v0 + 1440);
  v6 = *(v0 + 1424);
  v15 = *(v0 + 1416);
  v16 = *(v0 + 1528);
  v21 = *(v0 + 1272);
  v22 = *(v0 + 1320);
  v20 = *(v0 + 1224);
  v19 = *(v0 + 1080);
  v17 = *(v0 + 1368);
  v18 = *(v0 + 1032);
  v7 = sub_20CCDB104();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, v3, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  sub_20CC89500(v4, v5, &qword_27C80F820, &qword_20CCDCF50);
  sub_20CCDB0D4();
  sub_20CC89568(v4, &qword_27C80F820, &qword_20CCDCF50);
  v9 = sub_20CCDB0E4();
  (*(*(v9 - 8) + 56))(v14, 0, 1, v9);
  v10 = sub_20CCDAF54();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v15, v16, v10);
  (*(v11 + 56))(v15, 0, 1, v10);

  sub_20CCDADF4();
  sub_20CCBEC38(v23, v19, v18, v20, v21, v22, v17);
  *(v0 + 2016) = sub_20CCDAE44();
  *(v0 + 2024) = v12;

  return MEMORY[0x2822009F8](sub_20CCB8224, v17, 0);
}

uint64_t sub_20CCB8224()
{
  sub_20CCCB530(*(v0 + 2016), *(v0 + 2024));

  return MEMORY[0x2822009F8](sub_20CCB82D4, 0, 0);
}

uint64_t sub_20CCB82D4()
{
  v1 = v0[228];
  v2 = v0[191];
  v3 = v0[188];
  v4 = v0[186];

  sub_20CCC56A8(v4, type metadata accessor for PlayAudioResult);
  sub_20CCC56A8(v2, type metadata accessor for InferenceSystem.PrewarmedSynthesisVoice);
  sub_20CCC56A8(v3, type metadata accessor for AudioSynthesisHandle);
  v5 = v0[194];

  return MEMORY[0x282200920](v0 + 2, v5, sub_20CCB8404, v0 + 172);
}

uint64_t sub_20CCB8404()
{

  return MEMORY[0x2822009F8](sub_20CCB8490, 0, 0);
}

uint64_t sub_20CCB8490()
{
  v1 = *(v0 + 1736);
  v2 = *(v0 + 1624);
  v3 = *(v0 + 1616);
  v4 = *(v0 + 1608);
  v5 = *(v0 + 1600);
  v6 = *(v0 + 1592);
  v7 = *(v0 + 1584);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  sub_20CCBD37C((v0 + 2032));
  if (v1)
  {
    v8 = *(v0 + 1736);
    [v8 updateState_];
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_20CCB86DC()
{

  return MEMORY[0x2822009F8](sub_20CCC6264, 0, 0);
}

uint64_t sub_20CCB8768()
{

  return MEMORY[0x2822009F8](sub_20CCB87F4, 0, 0);
}

uint64_t sub_20CCB87F4()
{
  v1 = *(v0 + 1736);
  v2 = *(v0 + 1624);
  v3 = *(v0 + 1616);
  v4 = *(v0 + 1608);
  v5 = *(v0 + 1600);
  v6 = *(v0 + 1592);
  v7 = *(v0 + 1584);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  sub_20CCBD37C((v0 + 2032));
  if (v1)
  {
    v8 = *(v0 + 1736);
    [v8 updateState_];
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_20CCB8A48()
{
  v1 = *(v0 + 1824);

  v2 = *(v0 + 1552);

  return MEMORY[0x282200920](v0 + 16, v2, sub_20CCB8B08, v0 + 1136);
}

uint64_t sub_20CCB8B08()
{

  return MEMORY[0x2822009F8](sub_20CCB8B94, 0, 0);
}

uint64_t sub_20CCB8B94()
{
  v1 = *(v0 + 1736);
  v2 = *(v0 + 1624);
  v3 = *(v0 + 1616);
  v4 = *(v0 + 1608);
  v5 = *(v0 + 1600);
  v6 = *(v0 + 1592);
  v7 = *(v0 + 1584);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  sub_20CCBD37C((v0 + 2032));
  if (v1)
  {
    v8 = *(v0 + 1736);
    [v8 updateState_];
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_20CCB8DE8()
{
  v1 = v0[228];
  v2 = v0[191];

  sub_20CCC56A8(v2, type metadata accessor for InferenceSystem.PrewarmedSynthesisVoice);
  v3 = v0[194];

  return MEMORY[0x282200920](v0 + 2, v3, sub_20CCB8ED0, v0 + 160);
}

uint64_t sub_20CCB8ED0()
{

  return MEMORY[0x2822009F8](sub_20CCB8F5C, 0, 0);
}

uint64_t sub_20CCB8F5C()
{
  v1 = *(v0 + 1736);
  v2 = *(v0 + 1624);
  v3 = *(v0 + 1616);
  v4 = *(v0 + 1608);
  v5 = *(v0 + 1600);
  v6 = *(v0 + 1592);
  v7 = *(v0 + 1584);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  sub_20CCBD37C((v0 + 2032));
  if (v1)
  {
    v8 = *(v0 + 1736);
    [v8 updateState_];
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_20CCB91B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a2;
  v6[4] = a6;
  v6[2] = a1;
  v7 = sub_20CCDB284();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCB9274, 0, 0);
}

uint64_t sub_20CCB9274()
{
  v22 = v0;
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[3];
  v5 = sub_20CCDB584();
  __swift_project_value_buffer(v5, qword_28110EE00);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_20CCDB564();
  v7 = sub_20CCDB8B4();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[5];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136315138;
    v14 = sub_20CCDB274();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_20CC88C4C(v14, v16, &v21);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_20CC86000, v6, v7, "Attempting to cancel inference for request ID %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x20F30FD70](v13, -1, -1);
    MEMORY[0x20F30FD70](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[4];
  v0[8] = sub_20CCDB274();
  v0[9] = v19;

  return MEMORY[0x2822009F8](sub_20CCB9480, v18, 0);
}

uint64_t sub_20CCB9480()
{
  *(v0 + 105) = sub_20CCCB808(*(v0 + 64), *(v0 + 72)) & 1;

  return MEMORY[0x2822009F8](sub_20CCB9500, 0, 0);
}

uint64_t sub_20CCB9500(uint64_t a1)
{
  v2 = sub_20CCDB274();
  v4 = v3;
  v1[10] = v3;
  v5 = swift_task_alloc();
  v1[11] = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v4;
  v6 = swift_task_alloc();
  v1[12] = v6;
  *v6 = v1;
  v6[1] = sub_20CCB9608;
  v7 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v1 + 13, 0, 0, 0xD00000000000001ALL, 0x800000020CCDE5E0, sub_20CCC62E0, v5, v7);
}

uint64_t sub_20CCB9608()
{

  return MEMORY[0x2822009F8](sub_20CCB973C, 0, 0);
}

uint64_t sub_20CCB973C()
{
  sub_20CCDB254();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CCB97B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[16] = a5;
  v6[17] = a6;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F948, &qword_20CCDD4D0);
  v6[18] = swift_task_alloc();
  type metadata accessor for SynthesizedAudio(0);
  v6[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F820, &qword_20CCDCF50);
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v7 = sub_20CCDA784();
  v6[22] = v7;
  v6[23] = *(v7 - 8);
  v6[24] = swift_task_alloc();
  v8 = sub_20CCDB514();
  v6[25] = v8;
  v6[26] = *(v8 - 8);
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F448, &unk_20CCDCF60);
  v6[29] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F950, &qword_20CCDD4D8);
  v6[30] = v9;
  v6[31] = *(v9 - 8);
  v6[32] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F628, &qword_20CCDD4E0);
  v6[33] = v10;
  v6[34] = *(v10 - 8);
  v6[35] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F5E8, &unk_20CCDCA88);
  v6[36] = v11;
  v12 = *(v11 - 8);
  v6[37] = v12;
  v6[38] = *(v12 + 64);
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();
  v6[41] = type metadata accessor for PlayAudioResult(0);
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v13 = sub_20CCDB114();
  v6[44] = v13;
  v6[45] = *(v13 - 8);
  v6[46] = swift_task_alloc();
  v6[47] = type metadata accessor for AudioSynthesisHandle(0);
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  sub_20CCDB2D4();
  v6[50] = swift_task_alloc();
  v14 = sub_20CCDB054();
  v6[51] = v14;
  v6[52] = *(v14 - 8);
  v6[53] = swift_task_alloc();
  v6[54] = swift_task_alloc();
  v15 = sub_20CCDAF54();
  v6[55] = v15;
  v6[56] = *(v15 - 8);
  v6[57] = swift_task_alloc();
  v16 = sub_20CCDB504();
  v6[58] = v16;
  v6[59] = *(v16 - 8);
  v6[60] = swift_task_alloc();
  v6[61] = swift_task_alloc();
  v6[62] = swift_task_alloc();
  v6[63] = swift_task_alloc();
  v6[64] = swift_task_alloc();
  v17 = sub_20CCDB4E4();
  v6[65] = v17;
  v6[66] = *(v17 - 8);
  v6[67] = swift_task_alloc();
  v6[68] = swift_task_alloc();
  v6[69] = swift_task_alloc();
  v6[70] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCB9DDC, 0, 0);
}

uint64_t sub_20CCB9DDC()
{
  v1 = v0[17];
  v0[71] = sub_20CCDB1B4();
  v0[72] = v2;

  return MEMORY[0x2822009F8](sub_20CCB9E50, v1, 0);
}

uint64_t sub_20CCB9E50()
{
  sub_20CCCB2D0(*(v0 + 568), *(v0 + 576));

  return MEMORY[0x2822009F8](sub_20CCB9ECC, 0, 0);
}

uint64_t sub_20CCB9ECC(uint64_t a1)
{
  v2 = v1[64];
  v3 = v1[58];
  v4 = v1[59];
  sub_20CCDB374();
  sub_20CCDB4F4();
  sub_20CCDB4C4();
  v5 = *(v4 + 8);
  v1[73] = v5;
  v1[74] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v27 = v5;
  v5(v2, v3);
  sub_20CCDB374();
  v6 = sub_20CCDB4F4();
  v7 = sub_20CCDB8D4();
  if (sub_20CCDB8E4())
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_20CCDB4D4();
    _os_signpost_emit_with_name_impl(&dword_20CC86000, v6, v7, v9, "announceUtterance", "", v8, 2u);
    MEMORY[0x20F30FD70](v8, -1, -1);
  }

  v10 = v1[70];
  v11 = v1[69];
  v12 = v1[66];
  v13 = v1[65];
  v14 = v1[63];
  v15 = v1[58];
  v16 = v1[52];
  v28 = v1[51];
  v26 = v1[54];

  v17 = *(v12 + 16);
  v1[75] = v17;
  v1[76] = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v17(v11, v10, v13);
  v1[77] = sub_20CCDB544();
  swift_allocObject();
  v1[78] = sub_20CCDB534();
  v27(v14, v15);
  type metadata accessor for AudioSynthesizer(0);
  v18 = swift_allocObject();
  v1[79] = v18;
  swift_defaultActor_initialize();
  *(v18 + 152) = 0;
  *(v18 + 136) = 0u;
  *(v18 + 120) = 0u;
  *(v18 + 160) = 1;
  v19 = OBJC_IVAR____TtC28FitnessIntelligenceInference16AudioSynthesizer_asbdContinuation;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F5D0, &qword_20CCDCA30);
  (*(*(v20 - 8) + 56))(v18 + v19, 1, 1, v20);
  *(v18 + OBJC_IVAR____TtC28FitnessIntelligenceInference16AudioSynthesizer_encoder) = 0;
  *(v18 + 112) = [objc_allocWithZone(sub_20CCDA904()) init];
  sub_20CCDB1C4();
  sub_20CCDB034();
  v21 = *(v16 + 8);
  v1[80] = v21;
  v1[81] = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v26, v28);
  v22 = swift_task_alloc();
  v1[82] = v22;
  *v22 = v1;
  v22[1] = sub_20CCBA1FC;
  v23 = v1[57];
  v24 = v1[50];

  return sub_20CCC2958(v23, v24);
}

uint64_t sub_20CCBA1FC()
{
  v2 = *(*v1 + 400);
  *(*v1 + 664) = v0;

  sub_20CCC56A8(v2, MEMORY[0x277D0A608]);
  if (v0)
  {
    v3 = sub_20CCBCBCC;
  }

  else
  {
    v3 = sub_20CCBA340;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20CCBA340()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 424);
  v3 = *(v0 + 408);
  *(v0 + 888) = sub_20CCDB1A4() & 1;
  *(v0 + 672) = sub_20CCDB1D4();
  *(v0 + 680) = v4;
  sub_20CCDB1C4();
  sub_20CCDB044();
  v1(v2, v3);
  sub_20CCDB374();
  v5 = sub_20CCDB4F4();
  v6 = sub_20CCDB8D4();
  if (sub_20CCDB8E4())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = sub_20CCDB4D4();
    _os_signpost_emit_with_name_impl(&dword_20CC86000, v5, v6, v8, "audioSynthesis", "", v7, 2u);
    MEMORY[0x20F30FD70](v7, -1, -1);
  }

  v9 = *(v0 + 600);
  v23 = *(v0 + 584);
  v10 = *(v0 + 560);
  v11 = *(v0 + 552);
  v12 = *(v0 + 520);
  v13 = *(v0 + 496);
  v14 = *(v0 + 464);

  v9(v11, v10, v12);
  swift_allocObject();
  *(v0 + 728) = sub_20CCDB534();
  v23(v13, v14);
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v15 = sub_20CCDB584();
  *(v0 + 736) = __swift_project_value_buffer(v15, qword_28110EE00);
  v16 = sub_20CCDB564();
  v17 = sub_20CCDB8B4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_20CC86000, v16, v17, "Requesting audio synthesis…", v18, 2u);
    MEMORY[0x20F30FD70](v18, -1, -1);
  }

  v19 = *(v0 + 632);

  *(v0 + 744) = sub_20CCDAF34();
  *(v0 + 752) = v20;
  *(v0 + 760) = sub_20CCDAF44();
  *(v0 + 768) = v21;

  return MEMORY[0x2822009F8](sub_20CCBAD80, v19, 0);
}

uint64_t sub_20CCBA5E4()
{
  *(*v1 + 704) = v0;

  if (v0)
  {
    v2 = sub_20CCBAB08;
  }

  else
  {
    v2 = sub_20CCBA714;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CCBA714()
{
  v1 = sub_20CCDB1B4();
  v3 = v2;
  *(v0 + 712) = v2;
  v4 = sub_20CCDB194();
  v5 = swift_task_alloc();
  *(v0 + 720) = v5;
  *v5 = v0;
  v5[1] = sub_20CCBA7FC;
  v6 = *(v0 + 888);
  v7 = *(v0 + 632);
  v8 = *(v0 + 560);
  v9 = *(v0 + 392);
  v10 = *(v0 + 344);

  return sub_20CCC0628(v10, v1, v3, v7, v9, v8, v4 & 1, v6);
}

uint64_t sub_20CCBA7FC()
{

  return MEMORY[0x2822009F8](sub_20CCBA914, 0, 0);
}

uint64_t sub_20CCBA914(uint64_t a1)
{
  sub_20CCDB374();
  v2 = sub_20CCDB4F4();
  sub_20CCDB524();
  v3 = sub_20CCDB8C4();
  if (sub_20CCDB8E4())
  {
    v5 = v1[26];
    v4 = v1[27];
    v6 = v1[25];

    sub_20CCDB554();

    if ((*(v5 + 88))(v4, v6) == *MEMORY[0x277D85B00])
    {
      v7 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1[26] + 8))(v1[27], v1[25]);
      v7 = "";
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_20CCDB4D4();
    _os_signpost_emit_with_name_impl(&dword_20CC86000, v2, v3, v9, "announceUtterance", v7, v8, 2u);
    MEMORY[0x20F30FD70](v8, -1, -1);
  }

  v10 = v1[101];
  v11 = v2;
  v12 = v1[73];
  v13 = v1[68];
  v14 = v1[65];
  v15 = v1[61];
  v16 = v1[58];
  v19 = v1[17];

  v10(v13, v14);
  v12(v15, v16);
  v1[104] = sub_20CCDB1B4();
  v1[105] = v17;

  return MEMORY[0x2822009F8](sub_20CCBBB68, v19, 0);
}

uint64_t sub_20CCBAB08()
{
  v1 = v0[101];
  v2 = v0[70];
  v3 = v0[65];
  v4 = v0[56];
  v5 = v0[57];
  v6 = v0[55];
  v7 = v0[49];

  (*(v4 + 8))(v5, v6);
  v1(v2, v3);
  sub_20CCC56A8(v7, type metadata accessor for AudioSynthesisHandle);

  v8 = v0[1];

  return v8();
}

uint64_t sub_20CCBAD80()
{
  v23 = *(v0 + 744);
  v24 = *(v0 + 760);
  v21 = *(v0 + 672);
  v1 = *(v0 + 632);
  v22 = *(v0 + 368);
  v2 = *(v0 + 320);
  v3 = *(v0 + 296);
  v16 = *(v0 + 288);
  v17 = *(v0 + 312);
  v19 = *(v0 + 304);
  v20 = *(v0 + 280);
  v5 = *(v0 + 248);
  v4 = *(v0 + 256);
  v6 = *(v0 + 232);
  v7 = *(v0 + 240);
  sub_20CCDAA94();
  (*(v5 + 104))(v4, *MEMORY[0x277D858A0], v7);
  sub_20CCDB804();
  (*(v5 + 8))(v4, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F640, &unk_20CCDCBE0);
  swift_allocObject();
  v8 = sub_20CCDB464();
  *(v0 + 776) = v8;
  sub_20CCDB774();
  v9 = sub_20CCDB794();
  (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
  (*(v3 + 16))(v17, v2, v16);
  v18 = sub_20CCC5E3C(&qword_27C80F5F0, type metadata accessor for AudioSynthesizer, &unk_20CCDCA50);
  v10 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = v1;
  *(v11 + 3) = v18;
  *(v11 + 4) = v1;
  (*(v3 + 32))(&v11[v10], v17, v16);
  *&v11[(v19 + v10 + 7) & 0xFFFFFFFFFFFFFFF8] = v8;
  swift_retain_n();

  sub_20CCAA31C(0, 0, v6, &unk_20CCDD4F8, v11);

  v12 = swift_task_alloc();
  *(v0 + 784) = v12;
  *(v12 + 16) = v1;
  *(v12 + 24) = v20;
  *(v12 + 32) = v21;
  *(v12 + 48) = v23;
  *(v12 + 64) = v24;
  *(v12 + 80) = v22;
  v13 = swift_task_alloc();
  *(v0 + 792) = v13;
  type metadata accessor for AudioStreamBasicDescription(0);
  *v13 = v0;
  v13[1] = sub_20CCBB0CC;

  return MEMORY[0x2822008A0](v0 + 16, v1, v18, 0xD000000000000038, 0x800000020CCDE630, sub_20CCC4CF8, v12, v14);
}

uint64_t sub_20CCBB0CC()
{
  v2 = *v1;
  *(*v1 + 800) = v0;

  if (v0)
  {
    v3 = *(v2 + 632);

    v4 = sub_20CCBB6A4;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 632);
    v4 = sub_20CCBB214;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_20CCBB214()
{
  v1 = *(v0 + 32);
  *(v0 + 56) = *(v0 + 16);
  v2 = *(v0 + 776);
  v3 = *(v0 + 680);
  v5 = *(v0 + 376);
  v4 = *(v0 + 384);
  v7 = *(v0 + 360);
  v6 = *(v0 + 368);
  v8 = *(v0 + 352);
  v17 = *(v0 + 320);
  v18 = *(v0 + 672);
  v9 = *(v0 + 296);
  v16 = *(v0 + 288);
  v10 = *(v0 + 272);
  v19 = *(v0 + 264);
  v20 = *(v0 + 280);
  *(v0 + 72) = v1;
  *(v0 + 88) = *(v0 + 48);
  sub_20CCDAF24();
  (*(v7 + 16))(v4 + *(v5 + 28), v6, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F650, &unk_20CCDCF70);
  swift_allocObject();
  v11 = sub_20CCD9DE8(v2);

  (*(v9 + 8))(v17, v16);
  *(v4 + *(v5 + 32)) = v11;
  *(v4 + 40) = v18;
  *(v4 + 48) = v3;
  v12 = *(v0 + 56);
  v13 = *(v0 + 72);
  *(v4 + 32) = *(v0 + 88);
  *v4 = v12;
  *(v4 + 16) = v13;
  v14 = *(v10 + 8);

  v14(v20, v19);

  return MEMORY[0x2822009F8](sub_20CCBB3A4, 0, 0);
}

uint64_t sub_20CCBB3A4(uint64_t a1)
{
  sub_20CCDB374();
  v2 = sub_20CCDB4F4();
  sub_20CCDB524();
  v3 = sub_20CCDB8C4();
  if (sub_20CCDB8E4())
  {
    v4 = *(v1 + 224);
    v5 = *(v1 + 200);
    v6 = *(v1 + 208);

    sub_20CCDB554();

    if ((*(v6 + 88))(v4, v5) == *MEMORY[0x277D85B00])
    {
      v7 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v1 + 208) + 8))(*(v1 + 224), *(v1 + 200));
      v7 = "";
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_20CCDB4D4();
    _os_signpost_emit_with_name_impl(&dword_20CC86000, v2, v3, v9, "audioSynthesis", v7, v8, 2u);
    MEMORY[0x20F30FD70](v8, -1, -1);
  }

  v10 = *(v1 + 888);
  v11 = *(v1 + 584);
  v12 = *(v1 + 536);
  v13 = *(v1 + 528);
  v14 = *(v1 + 520);
  v15 = *(v1 + 480);
  v16 = *(v1 + 464);

  v17 = *(v13 + 8);
  *(v1 + 808) = v17;
  v17(v12, v14);
  v11(v15, v16);
  if (v10 == 1)
  {
    v19 = *(v1 + 184);
    v18 = *(v1 + 192);
    v20 = *(v1 + 176);
    v21 = *(v1 + 120);
    sub_20CCDA774();
    *(v1 + 816) = sub_20CCDA754();
    *(v1 + 824) = v22;
    (*(v19 + 8))(v18, v20);

    return MEMORY[0x2822009F8](sub_20CCBB9DC, v21, 0);
  }

  else
  {

    v24 = *(v1 + 360);
    v23 = *(v1 + 368);
    v25 = *(v1 + 352);
    sub_20CCC5BD0(*(v1 + 384), *(v1 + 392), type metadata accessor for AudioSynthesisHandle);
    (*(v24 + 8))(v23, v25);

    v26 = sub_20CCDB1B4();
    v28 = v27;
    *(v1 + 688) = v27;
    v29 = swift_task_alloc();
    *(v1 + 696) = v29;
    *v29 = v1;
    v29[1] = sub_20CCBA5E4;
    v30 = *(v1 + 136);

    return sub_20CCC4CFC(v26, v28, v30);
  }
}

uint64_t sub_20CCBB6A4()
{
  v1 = v0[40];
  v2 = v0[36];
  v3 = v0[37];
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[33];

  (*(v3 + 8))(v1, v2);
  (*(v5 + 8))(v4, v6);

  return MEMORY[0x2822009F8](sub_20CCBB75C, 0, 0);
}

uint64_t sub_20CCBB75C()
{
  v1 = v0[66];
  v10 = v0[65];
  v11 = v0[70];
  v2 = v0[56];
  v9 = v0[57];
  v3 = v0[55];
  v4 = v0[45];
  v5 = v0[46];
  v6 = v0[44];

  (*(v4 + 8))(v5, v6);

  (*(v2 + 8))(v9, v3);
  (*(v1 + 8))(v11, v10);

  v7 = v0[1];

  return v7();
}

uint64_t sub_20CCBB9DC()
{
  sub_20CCC6724(*(v0 + 384), *(v0 + 816), *(v0 + 824));

  return MEMORY[0x2822009F8](sub_20CCBBA5C, 0, 0);
}

uint64_t sub_20CCBBA5C()
{

  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[44];
  sub_20CCC5BD0(v0[48], v0[49], type metadata accessor for AudioSynthesisHandle);
  (*(v2 + 8))(v1, v3);

  v4 = sub_20CCDB1B4();
  v6 = v5;
  v0[86] = v5;
  v7 = swift_task_alloc();
  v0[87] = v7;
  *v7 = v0;
  v7[1] = sub_20CCBA5E4;
  v8 = v0[17];

  return sub_20CCC4CFC(v4, v6, v8);
}

uint64_t sub_20CCBBB68()
{
  v1 = v0[49];
  v2 = v0[47];
  sub_20CCCB530(v0[104], v0[105]);

  v3 = *(v1 + *(v2 + 32));
  v0[106] = v3;

  return MEMORY[0x2822009F8](sub_20CCBBBFC, v3, 0);
}

uint64_t sub_20CCBBBFC()
{
  v1 = *(v0 + 848);
  if (*(v1 + 168))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v1 = *(v0 + 848);
  }

  else
  {
    Current = *(v1 + 160);
  }

  *(v0 + 856) = Current;
  *(v0 + 864) = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_20CCBBC84, 0, 0);
}

uint64_t sub_20CCBBC84(uint64_t a1)
{
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 856) - *(v1 + 864);
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_20CC86000, v2, v3, "Audio synthesis duration=%f", v5, 0xCu);
    MEMORY[0x20F30FD70](v5, -1, -1);
  }

  v7 = *(v1 + 336);
  v6 = *(v1 + 344);

  sub_20CCC575C(v6, v7, type metadata accessor for PlayAudioResult);
  v8 = sub_20CCDB564();
  v9 = sub_20CCDB8B4();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v1 + 336);
  if (v10)
  {
    v12 = *(v1 + 328);
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    v14 = *(v11 + *(v12 + 24));
    sub_20CCC56A8(v11, type metadata accessor for PlayAudioResult);
    *(v13 + 4) = v14;
    _os_log_impl(&dword_20CC86000, v8, v9, "Playback duration=%f", v13, 0xCu);
    MEMORY[0x20F30FD70](v13, -1, -1);

    if ((sub_20CCDB3D4() & 1) == 0)
    {
LABEL_5:
      v15 = *(v1 + 168);
      v16 = sub_20CCDA6A4();
      (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
      v33 = *(v1 + 808);
      v31 = *(v1 + 520);
      v32 = *(v1 + 560);
      v17 = *(v1 + 448);
      v28 = *(v1 + 440);
      v29 = *(v1 + 456);
      v30 = *(v1 + 392);
      v18 = *(v1 + 344);
      v19 = *(v1 + 160);
      v20 = *(v1 + 168);
      v21 = *(v1 + 144);
      v22 = sub_20CCDB104();
      v23 = *(v22 - 8);
      (*(v23 + 16))(v21, v18, v22);
      (*(v23 + 56))(v21, 0, 1, v22);
      sub_20CC89500(v20, v19, &qword_27C80F820, &qword_20CCDCF50);
      sub_20CCDB0D4();

      sub_20CC89568(v20, &qword_27C80F820, &qword_20CCDCF50);
      sub_20CCC56A8(v18, type metadata accessor for PlayAudioResult);
      (*(v17 + 8))(v29, v28);
      v33(v32, v31);
      sub_20CCC56A8(v30, type metadata accessor for AudioSynthesisHandle);

      v24 = *(v1 + 8);

      return v24();
    }
  }

  else
  {

    sub_20CCC56A8(v11, type metadata accessor for PlayAudioResult);
    if ((sub_20CCDB3D4() & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v26 = swift_task_alloc();
  *(v1 + 872) = v26;
  *v26 = v1;
  v26[1] = sub_20CCBC294;
  v27 = *(v1 + 152);

  return sub_20CCA86B8(v27);
}

uint64_t sub_20CCBC294()
{
  *(*v1 + 880) = v0;

  if (v0)
  {
    v2 = sub_20CCBC7B8;
  }

  else
  {
    v2 = sub_20CCBC3A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20CCBC3A8()
{
  v1 = v0[19];
  sub_20CC89500(v1, v0[21], &qword_27C80F820, &qword_20CCDCF50);
  sub_20CCC56A8(v1, type metadata accessor for SynthesizedAudio);
  v16 = v0[101];
  v14 = v0[65];
  v15 = v0[70];
  v2 = v0[56];
  v11 = v0[55];
  v12 = v0[57];
  v13 = v0[49];
  v3 = v0[43];
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[18];
  v7 = sub_20CCDB104();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, v3, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  sub_20CC89500(v4, v5, &qword_27C80F820, &qword_20CCDCF50);
  sub_20CCDB0D4();

  sub_20CC89568(v4, &qword_27C80F820, &qword_20CCDCF50);
  sub_20CCC56A8(v3, type metadata accessor for PlayAudioResult);
  (*(v2 + 8))(v12, v11);
  v16(v15, v14);
  sub_20CCC56A8(v13, type metadata accessor for AudioSynthesisHandle);

  v9 = v0[1];

  return v9();
}

uint64_t sub_20CCBC7B8()
{
  v1 = *(v0 + 168);

  v2 = sub_20CCDA6A4();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v17 = *(v0 + 808);
  v15 = *(v0 + 520);
  v16 = *(v0 + 560);
  v3 = *(v0 + 448);
  v12 = *(v0 + 440);
  v13 = *(v0 + 456);
  v14 = *(v0 + 392);
  v4 = *(v0 + 344);
  v5 = *(v0 + 160);
  v6 = *(v0 + 168);
  v7 = *(v0 + 144);
  v8 = sub_20CCDB104();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, v4, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  sub_20CC89500(v6, v5, &qword_27C80F820, &qword_20CCDCF50);
  sub_20CCDB0D4();

  sub_20CC89568(v6, &qword_27C80F820, &qword_20CCDCF50);
  sub_20CCC56A8(v4, type metadata accessor for PlayAudioResult);
  (*(v3 + 8))(v13, v12);
  v17(v16, v15);
  sub_20CCC56A8(v14, type metadata accessor for AudioSynthesisHandle);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_20CCBCBCC()
{
  v1 = v0[70];
  v2 = v0[66];
  v3 = v0[65];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20CCBCDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a2;
  v6[4] = a6;
  v6[2] = a1;
  v7 = sub_20CCDB284();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCBCEB4, 0, 0);
}

uint64_t sub_20CCBCEB4()
{
  v22 = v0;
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[3];
  v5 = sub_20CCDB584();
  __swift_project_value_buffer(v5, qword_28110EE00);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_20CCDB564();
  v7 = sub_20CCDB8B4();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[5];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136315138;
    v14 = sub_20CCDB274();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_20CC88C4C(v14, v16, &v21);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_20CC86000, v6, v7, "Attempting to cancel announcement for request ID %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x20F30FD70](v13, -1, -1);
    MEMORY[0x20F30FD70](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[4];
  v0[8] = sub_20CCDB274();
  v0[9] = v19;

  return MEMORY[0x2822009F8](sub_20CCBD0C0, v18, 0);
}

uint64_t sub_20CCBD0C0()
{
  *(v0 + 105) = sub_20CCCB808(*(v0 + 64), *(v0 + 72)) & 1;

  return MEMORY[0x2822009F8](sub_20CCBD140, 0, 0);
}

uint64_t sub_20CCBD140(uint64_t a1)
{
  v2 = sub_20CCDB274();
  v4 = v3;
  v1[10] = v3;
  v5 = swift_task_alloc();
  v1[11] = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v4;
  v6 = swift_task_alloc();
  v1[12] = v6;
  *v6 = v1;
  v6[1] = sub_20CCBD248;
  v7 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v1 + 13, 0, 0, 0xD00000000000001ALL, 0x800000020CCDE5E0, sub_20CCC4B90, v5, v7);
}

uint64_t sub_20CCBD248()
{

  return MEMORY[0x2822009F8](sub_20CCC62D8, 0, 0);
}

uint64_t sub_20CCBD37C(IOPMAssertionID *a1)
{
  v2 = sub_20CCDB584();
  v3 = *(v2 - 8);
  result = MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    sub_20CCDB394();
    v7 = sub_20CCDB564();
    v8 = sub_20CCDB8B4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_20CC86000, v7, v8, "Releasing power assertion for inference pipeline", v9, 2u);
      MEMORY[0x20F30FD70](v9, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return IOPMAssertionRelease(*a1);
  }

  return result;
}

uint64_t sub_20CCBD4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F978, &qword_20CCDD5D0);
  v7[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCBD574, 0, 0);
}

uint64_t sub_20CCBD574()
{
  sub_20CCDAE64();
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_20CCBD620;
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];

  return sub_20CCBD7F8(v8, v2, v3, v6, v7, v4, v5);
}

uint64_t sub_20CCBD620()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  *(v3 + 88) = v0;

  sub_20CC89568(v2, &qword_27C80F978, &qword_20CCDD5D0);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20CCBD794, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_20CCBD794()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CCBD7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = sub_20CCDB114();
  v7[9] = v8;
  v7[10] = *(v8 - 8);
  v7[11] = swift_task_alloc();
  sub_20CCDB2D4();
  v7[12] = swift_task_alloc();
  v9 = sub_20CCDAF54();
  v7[13] = v9;
  v7[14] = *(v9 - 8);
  v7[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F978, &qword_20CCDD5D0);
  v7[16] = swift_task_alloc();
  v10 = sub_20CCDB054();
  v7[17] = v10;
  v7[18] = *(v10 - 8);
  v7[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCBD9E0, 0, 0);
}

uint64_t sub_20CCBD9E0()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  sub_20CC89500(v0[3], v3, &qword_27C80F978, &qword_20CCDD5D0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20CC89568(v0[16], &qword_27C80F978, &qword_20CCDD5D0);
    v4 = type metadata accessor for InferenceSystem.PrewarmedSynthesisVoice(0);
    (*(*(v4 - 8) + 56))(v0[2], 1, 1);

    v5 = v0[1];

    return v5();
  }

  else
  {
    (*(v0[18] + 32))(v0[19], v0[16], v0[17]);
    sub_20CCDB034();
    v7 = swift_task_alloc();
    v0[20] = v7;
    *v7 = v0;
    v7[1] = sub_20CCBDBC8;
    v8 = v0[15];
    v9 = v0[12];

    return sub_20CCC2958(v8, v9);
  }
}

uint64_t sub_20CCBDBC8()
{
  v2 = *(*v1 + 96);
  *(*v1 + 168) = v0;

  sub_20CCC56A8(v2, MEMORY[0x277D0A608]);
  if (v0)
  {
    v3 = sub_20CCBE0F4;
  }

  else
  {
    v3 = sub_20CCBDD0C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20CCBDD0C(uint64_t a1)
{
  v2 = sub_20CCDAF34();
  v4 = v3;
  v1[22] = v3;
  v5 = sub_20CCDAF44();
  v7 = v6;
  v1[23] = v6;
  sub_20CCDB044();
  v8 = swift_task_alloc();
  v1[24] = v8;
  *v8 = v1;
  v8[1] = sub_20CCBDE00;
  v9 = v1[11];

  return sub_20CC976F0(v2, v4, v5, v7, v9);
}

uint64_t sub_20CCBDE00()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_20CCBDF98, 0, 0);
}

uint64_t sub_20CCBDF98()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];
  (*(v5 + 16))(v0[2], v4, v6);
  v7 = type metadata accessor for InferenceSystem.PrewarmedSynthesisVoice(0);
  sub_20CCDB044();
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  (*(*(v7 - 8) + 56))(v0[2], 0, 1, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_20CCBE0F4()
{
  (*(v0[18] + 8))(v0[19], v0[17]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20CCBE1AC(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 40) = a1;
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 16) = a5;
  return MEMORY[0x2822009F8](sub_20CCBE1D4, 0, 0);
}

uint64_t sub_20CCBE1D4(uint64_t a1)
{
  v2 = sub_20CCDAE44();
  v4 = v3;
  *(v1 + 6) = v3;
  v5 = swift_task_alloc();
  *(v1 + 7) = v5;
  *v5 = v1;
  v5[1] = sub_20CCBE288;
  v6 = v1[5];
  v7 = *(v1 + 4);
  v8 = *(v1 + 2);

  return sub_20CCC50A4(v2, v4, v7, v8, v6);
}

uint64_t sub_20CCBE288()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20CCBE3C4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_20CCBE3C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CCBE428(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 168) = v15;
  *(v8 + 152) = v14;
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 120) = a5;
  *(v8 + 128) = a6;
  *(v8 + 312) = a4;
  *(v8 + 104) = a2;
  *(v8 + 112) = a3;
  *(v8 + 96) = a1;
  v9 = sub_20CCDB514();
  *(v8 + 176) = v9;
  *(v8 + 184) = *(v9 - 8);
  *(v8 + 192) = swift_task_alloc();
  v10 = sub_20CCDB4E4();
  *(v8 + 200) = v10;
  *(v8 + 208) = *(v10 - 8);
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  v11 = sub_20CCDB504();
  *(v8 + 232) = v11;
  *(v8 + 240) = *(v11 - 8);
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCBE5DC, 0, 0);
}

uint64_t sub_20CCBE5DC(uint64_t a1)
{
  sub_20CCDB374();
  v2 = sub_20CCDB4F4();
  v3 = sub_20CCDB8D4();
  if (sub_20CCDB8E4())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_20CCDB4D4();
    _os_signpost_emit_with_name_impl(&dword_20CC86000, v2, v3, v5, "textInference", "", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v6 = *(v1 + 256);
  v7 = *(v1 + 232);
  v8 = *(v1 + 240);
  v9 = *(v1 + 224);
  v10 = *(v1 + 200);
  v11 = *(v1 + 208);
  v22 = *(v1 + 312);
  v12 = *(v1 + 120);
  v21 = *(v1 + 112);
  v13 = *(v1 + 104);
  v18 = *(v1 + 144);
  v19 = *(v1 + 128);
  v20 = *(v1 + 160);

  (*(v11 + 16))(v9, v12, v10);
  sub_20CCDB544();
  swift_allocObject();
  *(v1 + 264) = sub_20CCDB534();
  v14 = *(v8 + 8);
  *(v1 + 272) = v14;
  *(v1 + 280) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v6, v7);
  v15 = swift_task_alloc();
  *(v1 + 288) = v15;
  *(v15 + 16) = v18;
  *(v15 + 32) = v20;
  *(v15 + 48) = v19;
  *(v15 + 64) = v13;
  *(v15 + 72) = v21;
  *(v15 + 80) = v22 & 1;
  v16 = swift_task_alloc();
  *(v1 + 296) = v16;
  *v16 = v1;
  v16[1] = sub_20CCBE810;

  return MEMORY[0x282160B38](v1 + 16, &unk_20CCDD5B0, v15, &type metadata for TokenGenerationResult);
}

uint64_t sub_20CCBE810(double a1)
{
  v3 = *v2;
  *(v3 + 72) = v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;
  *(v3 + 304) = v1;

  if (v1)
  {
    v4 = sub_20CCBEB84;
  }

  else
  {

    v4 = sub_20CCBE938;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20CCBE938(uint64_t a1)
{
  v21 = *(v1 + 24);
  v22 = *(v1 + 16);
  v23 = *(v1 + 48);
  v24 = *(v1 + 32);
  v20 = *(v1 + 64);
  sub_20CCDB374();
  v2 = sub_20CCDB4F4();
  sub_20CCDB524();
  v3 = sub_20CCDB8C4();
  if (sub_20CCDB8E4())
  {
    v5 = *(v1 + 184);
    v4 = *(v1 + 192);
    v6 = *(v1 + 176);

    sub_20CCDB554();

    if ((*(v5 + 88))(v4, v6) == *MEMORY[0x277D85B00])
    {
      v7 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v1 + 184) + 8))(*(v1 + 192), *(v1 + 176));
      v7 = "";
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_20CCDB4D4();
    _os_signpost_emit_with_name_impl(&dword_20CC86000, v2, v3, v9, "textInference", v7, v8, 2u);
    MEMORY[0x20F30FD70](v8, -1, -1);
  }

  v10 = *(v1 + 80);
  v11 = *(v1 + 272);
  v12 = *(v1 + 248);
  v13 = *(v1 + 232);
  v15 = *(v1 + 208);
  v14 = *(v1 + 216);
  v16 = *(v1 + 200);
  v17 = *(v1 + 96);

  (*(v15 + 8))(v14, v16);
  v11(v12, v13);

  *v17 = v10;
  *(v17 + 8) = v22;
  *(v17 + 16) = v21;
  *(v17 + 40) = v23;
  *(v17 + 24) = v24;
  *(v17 + 56) = v20;
  v18 = *(v1 + 8);

  return v18();
}

uint64_t sub_20CCBEB84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CCBEC38(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7)
{
  v44 = a7;
  v45 = a6;
  v46 = a4;
  v47 = a5;
  v42 = a2;
  v43 = a3;
  v40 = a1;
  v49 = sub_20CCDAE04();
  v41 = *(v49 - 8);
  v7 = *(v41 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20CCDAE94();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = sub_20CCDA744();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F448, &unk_20CCDCF60);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v36 - v16;
  result = sub_20CCDB3D4();
  if (result)
  {
    v19 = sub_20CCDB794();
    v20 = *(*(v19 - 8) + 56);
    v39 = v17;
    v20(v17, 1, 1, v19);
    v21 = *(v12 + 16);
    v37 = v11;
    v21(&v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v40, v11);
    v22 = *(v9 + 16);
    v38 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = v8;
    v22(v38, v42, v8);
    v24 = v41;
    (*(v41 + 16))(v48, v43, v49);
    v25 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v26 = (v13 + *(v9 + 80) + v25) & ~*(v9 + 80);
    v27 = (v10 + *(v24 + 80) + v26) & ~*(v24 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = 0;
    *(v28 + 24) = 0;
    (*(v12 + 32))(v28 + v25, v14, v37);
    (*(v9 + 32))(v28 + v26, v38, v23);
    (*(v24 + 32))(v28 + v27, v48, v49);
    v29 = (v28 + ((v7 + v27 + 7) & 0xFFFFFFFFFFFFFFF8));
    v30 = v46;
    v31 = v47;
    *v29 = v46;
    v29[1] = v31;
    v32 = v44;
    v33 = v45;
    v29[2] = v45;
    v29[3] = v32;
    v34 = v30;

    v35 = v33;

    sub_20CCAA31C(0, 0, v39, &unk_20CCDD5A0, v28);
  }

  return result;
}

uint64_t sub_20CCBF008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 192) = a8;
  *(v8 + 200) = v20;
  *(v8 + 536) = v19;
  *(v8 + 176) = a6;
  *(v8 + 184) = a7;
  *(v8 + 160) = a4;
  *(v8 + 168) = a5;
  *(v8 + 144) = a2;
  *(v8 + 152) = a3;
  *(v8 + 136) = a1;
  v9 = sub_20CCDA784();
  *(v8 + 208) = v9;
  *(v8 + 216) = *(v9 - 8);
  *(v8 + 224) = swift_task_alloc();
  v10 = sub_20CCDB514();
  *(v8 + 232) = v10;
  *(v8 + 240) = *(v10 - 8);
  *(v8 + 248) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F950, &qword_20CCDD4D8);
  *(v8 + 256) = v11;
  *(v8 + 264) = *(v11 - 8);
  *(v8 + 272) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F628, &qword_20CCDD4E0);
  *(v8 + 280) = v12;
  *(v8 + 288) = *(v12 - 8);
  *(v8 + 296) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F5E8, &unk_20CCDCA88);
  *(v8 + 304) = v13;
  v14 = *(v13 - 8);
  *(v8 + 312) = v14;
  *(v8 + 320) = *(v14 + 64);
  *(v8 + 328) = swift_task_alloc();
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = type metadata accessor for AudioSynthesisHandle(0);
  *(v8 + 352) = swift_task_alloc();
  v15 = sub_20CCDB4E4();
  *(v8 + 360) = v15;
  *(v8 + 368) = *(v15 - 8);
  *(v8 + 376) = swift_task_alloc();
  *(v8 + 384) = swift_task_alloc();
  v16 = sub_20CCDB504();
  *(v8 + 392) = v16;
  *(v8 + 400) = *(v16 - 8);
  *(v8 + 408) = swift_task_alloc();
  *(v8 + 416) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F448, &unk_20CCDCF60);
  *(v8 + 424) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCBF3C8, 0, 0);
}

uint64_t sub_20CCBF3C8(uint64_t a1)
{
  v2 = *(v1 + 160);
  if (v2)
  {
    v3 = qword_28110E630;
    v4 = v2;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = sub_20CCDB584();
    __swift_project_value_buffer(v5, qword_28110EE00);
    v6 = sub_20CCDB564();
    v7 = sub_20CCDB8B4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_20CC86000, v6, v7, "Server returned synthesized audio, no need for local synthesis", v8, 2u);
      MEMORY[0x20F30FD70](v8, -1, -1);
    }

    v9 = *(v1 + 424);
    v10 = *(v1 + 344);
    v12 = *(v1 + 176);
    v11 = *(v1 + 184);
    v13 = *(v1 + 152);
    v47 = *(v1 + 144);
    v14 = *(v1 + 136);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F640, &unk_20CCDCBE0);
    swift_allocObject();
    v15 = sub_20CCDB464();
    v16 = sub_20CCDB794();
    (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = v15;
    v17[5] = v4;
    v18 = v4;

    sub_20CCAA31C(0, 0, v9, &unk_20CCDD530, v17);

    v19 = v10[6];
    v20 = sub_20CCDAF54();
    (*(*(v20 - 8) + 16))(v14 + v19, v12, v20);
    v21 = v10[7];
    v22 = sub_20CCDB114();
    (*(*(v22 - 8) + 16))(v14 + v21, v11, v22);
    sub_20CCDAA64();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F650, &unk_20CCDCF70);
    swift_allocObject();
    v23 = sub_20CCD9DE8(v15);

    *(v14 + v10[8]) = v23;
    *(v14 + 40) = v47;
    *(v14 + 48) = v13;
    v24 = *(v1 + 16);
    v25 = *(v1 + 32);
    *(v14 + 32) = *(v1 + 48);
    *v14 = v24;
    *(v14 + 16) = v25;

    v26 = *(v1 + 8);

    return v26();
  }

  else
  {
    sub_20CCDB374();
    v28 = sub_20CCDB4F4();
    v29 = sub_20CCDB8D4();
    if (sub_20CCDB8E4())
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = sub_20CCDB4D4();
      _os_signpost_emit_with_name_impl(&dword_20CC86000, v28, v29, v31, "audioSynthesis", "", v30, 2u);
      MEMORY[0x20F30FD70](v30, -1, -1);
    }

    v32 = *(v1 + 416);
    v33 = *(v1 + 392);
    v34 = *(v1 + 400);
    v35 = *(v1 + 384);
    v36 = *(v1 + 360);
    v37 = *(v1 + 368);
    v38 = *(v1 + 192);

    (*(v37 + 16))(v35, v38, v36);
    sub_20CCDB544();
    swift_allocObject();
    *(v1 + 432) = sub_20CCDB534();
    v39 = *(v34 + 8);
    *(v1 + 440) = v39;
    *(v1 + 448) = (v34 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v39(v32, v33);
    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    v40 = sub_20CCDB584();
    __swift_project_value_buffer(v40, qword_28110EE00);
    v41 = sub_20CCDB564();
    v42 = sub_20CCDB8B4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_20CC86000, v41, v42, "Requesting audio synthesis…", v43, 2u);
      MEMORY[0x20F30FD70](v43, -1, -1);
    }

    v44 = *(v1 + 168);

    *(v1 + 456) = sub_20CCDAF34();
    *(v1 + 464) = v45;
    *(v1 + 472) = sub_20CCDAF44();
    *(v1 + 480) = v46;

    return MEMORY[0x2822009F8](sub_20CCBF97C, v44, 0);
  }
}

uint64_t sub_20CCBF97C()
{
  v23 = *(v0 + 456);
  v24 = *(v0 + 472);
  v1 = *(v0 + 424);
  v2 = *(v0 + 336);
  v3 = *(v0 + 312);
  v18 = *(v0 + 328);
  v19 = *(v0 + 320);
  v17 = *(v0 + 304);
  v20 = *(v0 + 296);
  v5 = *(v0 + 264);
  v4 = *(v0 + 272);
  v6 = *(v0 + 256);
  v22 = *(v0 + 184);
  v7 = *(v0 + 168);
  v21 = *(v0 + 144);
  sub_20CCDAA94();
  (*(v5 + 104))(v4, *MEMORY[0x277D858A0], v6);
  sub_20CCDB804();
  (*(v5 + 8))(v4, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F640, &unk_20CCDCBE0);
  swift_allocObject();
  v8 = sub_20CCDB464();
  *(v0 + 488) = v8;
  sub_20CCDB774();
  v9 = sub_20CCDB794();
  (*(*(v9 - 8) + 56))(v1, 0, 1, v9);
  (*(v3 + 16))(v18, v2, v17);
  v10 = sub_20CCC5E3C(&qword_27C80F5F0, type metadata accessor for AudioSynthesizer, &unk_20CCDCA50);
  v11 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = v7;
  *(v12 + 3) = v10;
  *(v12 + 4) = v7;
  (*(v3 + 32))(&v12[v11], v18, v17);
  *&v12[(v19 + v11 + 7) & 0xFFFFFFFFFFFFFFF8] = v8;
  swift_retain_n();

  sub_20CCAA31C(0, 0, v1, &unk_20CCDD520, v12);

  v13 = swift_task_alloc();
  *(v0 + 496) = v13;
  *(v13 + 16) = v7;
  *(v13 + 24) = v20;
  *(v13 + 32) = v21;
  *(v13 + 48) = v23;
  *(v13 + 64) = v24;
  *(v13 + 80) = v22;
  v14 = swift_task_alloc();
  *(v0 + 504) = v14;
  type metadata accessor for AudioStreamBasicDescription(0);
  *v14 = v0;
  v14[1] = sub_20CCBFCCC;

  return MEMORY[0x2822008A0](v0 + 56, v7, v10, 0xD000000000000038, 0x800000020CCDE630, sub_20CCC62DC, v13, v15);
}

uint64_t sub_20CCBFCCC()
{
  v2 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v3 = *(v2 + 168);

    v4 = sub_20CCC02B0;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 168);
    v4 = sub_20CCBFE14;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_20CCBFE14()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 344);
  v3 = *(v0 + 352);
  v4 = *(v0 + 312);
  v18 = *(v0 + 304);
  v19 = *(v0 + 336);
  v5 = *(v0 + 288);
  v20 = *(v0 + 280);
  v21 = *(v0 + 296);
  v6 = *(v0 + 184);
  v8 = *(v0 + 144);
  v7 = *(v0 + 152);
  v9 = *(v0 + 56);
  v10 = *(v0 + 72);
  *(v0 + 128) = *(v0 + 88);
  *(v0 + 96) = v9;
  *(v0 + 112) = v10;
  sub_20CCDAF24();
  v11 = *(v2 + 28);
  v12 = sub_20CCDB114();
  (*(*(v12 - 8) + 16))(v3 + v11, v6, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C80F650, &unk_20CCDCF70);
  swift_allocObject();
  v13 = sub_20CCD9DE8(v1);

  (*(v4 + 8))(v19, v18);
  *(v3 + *(v2 + 32)) = v13;
  *(v3 + 40) = v8;
  *(v3 + 48) = v7;
  v14 = *(v0 + 96);
  v15 = *(v0 + 112);
  *(v3 + 32) = *(v0 + 128);
  *v3 = v14;
  *(v3 + 16) = v15;
  v16 = *(v5 + 8);

  v16(v21, v20);

  return MEMORY[0x2822009F8](sub_20CCBFFA8, 0, 0);
}

uint64_t sub_20CCBFFA8(uint64_t a1)
{
  sub_20CCDB374();
  v2 = sub_20CCDB4F4();
  sub_20CCDB524();
  v3 = sub_20CCDB8C4();
  if (sub_20CCDB8E4())
  {
    v5 = *(v1 + 240);
    v4 = *(v1 + 248);
    v6 = *(v1 + 232);

    sub_20CCDB554();

    if ((*(v5 + 88))(v4, v6) == *MEMORY[0x277D85B00])
    {
      v7 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v1 + 240) + 8))(*(v1 + 248), *(v1 + 232));
      v7 = "";
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_20CCDB4D4();
    _os_signpost_emit_with_name_impl(&dword_20CC86000, v2, v3, v9, "audioSynthesis", v7, v8, 2u);
    MEMORY[0x20F30FD70](v8, -1, -1);
  }

  v10 = *(v1 + 440);
  v11 = *(v1 + 408);
  v12 = *(v1 + 392);
  v14 = *(v1 + 368);
  v13 = *(v1 + 376);
  v15 = *(v1 + 360);
  v16 = *(v1 + 536);

  (*(v14 + 8))(v13, v15);
  v10(v11, v12);
  if (v16 == 1)
  {
    v18 = *(v1 + 216);
    v17 = *(v1 + 224);
    v20 = *(v1 + 200);
    v19 = *(v1 + 208);
    sub_20CCDA774();
    *(v1 + 520) = sub_20CCDA754();
    *(v1 + 528) = v21;
    (*(v18 + 8))(v17, v19);

    return MEMORY[0x2822009F8](sub_20CCC0474, v20, 0);
  }

  else
  {

    sub_20CCC5BD0(*(v1 + 352), *(v1 + 136), type metadata accessor for AudioSynthesisHandle);

    v22 = *(v1 + 8);

    return v22();
  }
}

uint64_t sub_20CCC02B0()
{
  v1 = v0[42];
  v2 = v0[38];
  v3 = v0[39];
  v5 = v0[36];
  v4 = v0[37];
  v6 = v0[35];

  (*(v3 + 8))(v1, v2);
  (*(v5 + 8))(v4, v6);

  return MEMORY[0x2822009F8](sub_20CCC0368, 0, 0);
}

uint64_t sub_20CCC0368()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CCC0474()
{
  sub_20CCC6724(*(v0 + 352), *(v0 + 520), *(v0 + 528));

  return MEMORY[0x2822009F8](sub_20CCC04F4, 0, 0);
}

uint64_t sub_20CCC04F4()
{

  sub_20CCC5BD0(v0[44], v0[17], type metadata accessor for AudioSynthesisHandle);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20CCC0628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  *(v8 + 369) = a8;
  *(v8 + 368) = a7;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = sub_20CCDB514();
  *(v8 + 64) = v9;
  *(v8 + 72) = *(v9 - 8);
  *(v8 + 80) = swift_task_alloc();
  v10 = sub_20CCDB9D4();
  *(v8 + 88) = v10;
  *(v8 + 96) = *(v10 - 8);
  *(v8 + 104) = swift_task_alloc();
  v11 = sub_20CCDB9C4();
  *(v8 + 112) = v11;
  *(v8 + 120) = *(v11 - 8);
  *(v8 + 128) = swift_task_alloc();
  *(v8 + 136) = swift_task_alloc();
  type metadata accessor for SynthesizedAudio(0);
  *(v8 + 144) = swift_task_alloc();
  v12 = sub_20CCDB104();
  *(v8 + 152) = v12;
  *(v8 + 160) = *(v12 - 8);
  *(v8 + 168) = swift_task_alloc();
  v13 = sub_20CCDB4E4();
  *(v8 + 176) = v13;
  *(v8 + 184) = *(v13 - 8);
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  v14 = sub_20CCDB504();
  *(v8 + 208) = v14;
  *(v8 + 216) = *(v14 - 8);
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20CCC0918, 0, 0);
}

uint64_t sub_20CCC0918(uint64_t a1)
{
  sub_20CCDB374();
  v2 = sub_20CCDB4F4();
  v3 = sub_20CCDB8D4();
  if (sub_20CCDB8E4())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_20CCDB4D4();
    _os_signpost_emit_with_name_impl(&dword_20CC86000, v2, v3, v5, "audioPlayback", "", v4, 2u);
    MEMORY[0x20F30FD70](v4, -1, -1);
  }

  v6 = *(v1 + 232);
  v7 = *(v1 + 208);
  v8 = *(v1 + 216);
  v9 = *(v1 + 200);
  v10 = *(v1 + 176);
  v11 = *(v1 + 184);
  v12 = *(v1 + 56);

  (*(v11 + 16))(v9, v12, v10);
  sub_20CCDB544();
  swift_allocObject();
  *(v1 + 240) = sub_20CCDB534();
  v13 = *(v8 + 8);
  *(v1 + 248) = v13;
  *(v1 + 256) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v6, v7);
  v14 = swift_task_alloc();
  *(v1 + 264) = v14;
  *v14 = v1;
  v14[1] = sub_20CCC0ADC;
  v15 = *(v1 + 168);
  v16 = *(v1 + 369);
  v17 = *(v1 + 368);
  v18 = *(v1 + 48);
  v19 = *(v1 + 24);
  v20 = *(v1 + 32);

  return sub_20CC981C0(v15, v19, v20, v18, v17, v16);
}

uint64_t sub_20CCC0ADC(char a1, double a2)
{
  v3 = *v2;
  v4 = *v2;
  v8 = *v2;
  *(v4 + 370) = a1;
  *(v4 + 272) = a2;

  v5 = swift_task_alloc();
  *(v4 + 280) = v5;
  *v5 = v8;
  v5[1] = sub_20CCC0C44;
  v6 = *(v3 + 144);

  return sub_20CCA86B8(v6);
}

uint64_t sub_20CCC0C44()
{
  v2 = *v1;
  *(v2 + 288) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20CCC1FD8, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v2 + 296) = v3;
    *v3 = v2;
    v3[1] = sub_20CCC0DB0;

    return sub_20CCA9290();
  }
}

uint64_t sub_20CCC0DB0(uint64_t a1)
{
  v4 = *v2;
  v4[38] = v1;

  v5 = v4[18];
  if (v1)
  {
    sub_20CCC56A8(v5, type metadata accessor for SynthesizedAudio);
    v6 = sub_20CCC2498;
  }

  else
  {
    v4[39] = a1;
    sub_20CCC56A8(v5, type metadata accessor for SynthesizedAudio);
    v6 = sub_20CCC0F20;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_20CCC0F20()
{
  v64 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 370);
  sub_20CCDAA84();
  v4 = v3;
  *(v0 + 320) = v3;

  v5 = v4 <= 0.0 || v2 == 0;
  if (v5 || (sub_20CCDB0F4() & 1) == 0)
  {
    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    v31 = sub_20CCDB584();
    __swift_project_value_buffer(v31, qword_28110EE00);
    v32 = sub_20CCDB564();
    v33 = sub_20CCDB8B4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = *(v0 + 272);
      v35 = *(v0 + 370);
      v36 = swift_slowAlloc();
      *v36 = 67109376;
      *(v36 + 4) = v35;
      *(v36 + 8) = 2048;
      *(v36 + 10) = v34;
      _os_log_impl(&dword_20CC86000, v32, v33, "Voice playback success=%{BOOL}d startDelay=%f", v36, 0x12u);
      MEMORY[0x20F30FD70](v36, -1, -1);
    }

    sub_20CCDB374();
    v37 = sub_20CCDB4F4();
    sub_20CCDB524();
    v38 = sub_20CCDB8C4();
    if (sub_20CCDB8E4())
    {
      v39 = *(v0 + 72);
      v40 = *(v0 + 80);
      v41 = *(v0 + 64);

      sub_20CCDB554();

      if ((*(v39 + 88))(v40, v41) == *MEMORY[0x277D85B00])
      {
        v42 = "[Error] Interval already ended";
      }

      else
      {
        (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
        v42 = "";
      }

      v43 = swift_slowAlloc();
      *v43 = 0;
      v44 = sub_20CCDB4D4();
      _os_signpost_emit_with_name_impl(&dword_20CC86000, v37, v38, v44, "audioPlayback", v42, v43, 2u);
      MEMORY[0x20F30FD70](v43, -1, -1);
    }

    v45 = *(v0 + 272);
    v59 = *(v0 + 370);
    v58 = *(v0 + 248);
    v46 = *(v0 + 224);
    v47 = *(v0 + 208);
    v49 = *(v0 + 184);
    v48 = *(v0 + 192);
    v50 = *(v0 + 176);
    v57 = *(v0 + 168);
    v52 = *(v0 + 152);
    v51 = *(v0 + 160);
    v53 = *(v0 + 16);

    (*(v49 + 8))(v48, v50);
    v58(v46, v47);
    (*(v51 + 32))(v53, v57, v52);
    v54 = type metadata accessor for PlayAudioResult(0);
    *(v53 + v54[5]) = v59;
    *(v53 + v54[6]) = v45;
    v55 = v53 + v54[7];
    *v55 = v4;
    *(v55 + 8) = 0;

    v56 = *(v0 + 8);

    return v56();
  }

  else
  {
    if (qword_28110E630 != -1)
    {
      swift_once();
    }

    v6 = sub_20CCDB584();
    *(v0 + 328) = __swift_project_value_buffer(v6, qword_28110EE00);
    v7 = sub_20CCDB564();
    v8 = sub_20CCDB8B4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_20CC86000, v7, v8, "Audio playback began successfully", v9, 2u);
      MEMORY[0x20F30FD70](v9, -1, -1);
    }

    v10 = *(v0 + 128);
    v11 = *(v0 + 112);
    v12 = *(v0 + 120);

    sub_20CCDB9A4();
    sub_20CCDBBA4();
    sub_20CCDB9A4();
    sub_20CCDB9B4();
    v13 = *(v12 + 8);
    *(v0 + 336) = v13;
    *(v0 + 344) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v10, v11);
    sub_20CCDBBA4();
    sub_20CCDBB84();
    v14 = sub_20CCDBB94();
    v16 = v15;
    v17 = sub_20CCDB564();
    v18 = sub_20CCDB8B4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v63 = v60;
      *v19 = 136315650;
      v20 = sub_20CCDBB74();
      v61 = v16;
      v62 = v14;
      v22 = sub_20CC88C4C(v20, v21, &v63);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2080;
      v23 = sub_20CCDBB74();
      v25 = sub_20CC88C4C(v23, v24, &v63);

      *(v19 + 14) = v25;
      *(v19 + 22) = 2080;
      v26 = sub_20CCDBB74();
      v28 = sub_20CC88C4C(v26, v27, &v63);
      v14 = v62;

      *(v19 + 24) = v28;
      v16 = v61;
      _os_log_impl(&dword_20CC86000, v17, v18, "Waiting %s seconds for playback to complete (audio duration %s, tone duration %s)", v19, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F30FD70](v60, -1, -1);
      MEMORY[0x20F30FD70](v19, -1, -1);
    }

    sub_20CCDBAD4();
    v29 = swift_task_alloc();
    *(v0 + 352) = v29;
    *v29 = v0;
    v29[1] = sub_20CCC1628;

    return sub_20CCD3F68(v14, v16, 0, 0, 1);
  }
}

uint64_t sub_20CCC1628()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  *(*v1 + 360) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_20CCC1B3C;
  }

  else
  {
    v5 = sub_20CCC1798;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20CCC1798()
{
  (*(v0 + 336))(*(v0 + 136), *(v0 + 112));
  v31 = *(v0 + 320);
  if (qword_28110E630 != -1)
  {
    swift_once();
  }

  v1 = sub_20CCDB584();
  __swift_project_value_buffer(v1, qword_28110EE00);
  v2 = sub_20CCDB564();
  v3 = sub_20CCDB8B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 272);
    v5 = *(v0 + 370);
    v6 = swift_slowAlloc();
    *v6 = 67109376;
    *(v6 + 4) = v5;
    *(v6 + 8) = 2048;
    *(v6 + 10) = v4;
    _os_log_impl(&dword_20CC86000, v2, v3, "Voice playback success=%{BOOL}d startDelay=%f", v6, 0x12u);
    MEMORY[0x20F30FD70](v6, -1, -1);
  }

  sub_20CCDB374();
  v7 = sub_20CCDB4F4();
  sub_20CCDB524();
  v8 = sub_20CCDB8C4();
  if (sub_20CCDB8E4())
  {
    v9 = *(v0 + 72);
    v10 = *(v0 + 80);
    v11 = *(v0 + 64);

    sub_20CCDB554();

    if ((*(v9 + 88))(v10, v11) == *MEMORY[0x277D85B00])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_20CCDB4D4();
    _os_signpost_emit_with_name_impl(&dword_20CC86000, v7, v8, v14, "audioPlayback", v12, v13, 2u);
    MEMORY[0x20F30FD70](v13, -1, -1);
  }

  v15 = *(v0 + 272);
  v30 = *(v0 + 370);
  v29 = *(v0 + 248);
  v16 = *(v0 + 224);
  v17 = *(v0 + 208);
  v19 = *(v0 + 184);
  v18 = *(v0 + 192);
  v20 = *(v0 + 176);
  v28 = *(v0 + 168);
  v22 = *(v0 + 152);
  v21 = *(v0 + 160);
  v23 = *(v0 + 16);

  (*(v19 + 8))(v18, v20);
  v29(v16, v17);
  (*(v21 + 32))(v23, v28, v22);
  v24 = type metadata accessor for PlayAudioResult(0);
  *(v23 + v24[5]) = v30;
  *(v23 + v24[6]) = v15;
  v25 = v23 + v24[7];
  *v25 = v31;
  *(v25 + 8) = 0;

  v26 = *(v0 + 8);

  return v26();
}