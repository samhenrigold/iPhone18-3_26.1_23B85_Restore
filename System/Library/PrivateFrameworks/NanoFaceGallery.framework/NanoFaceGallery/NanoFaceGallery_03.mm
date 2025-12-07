uint64_t sub_25B088F18(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31878, &unk_25B0E8B00);
  v3 = MEMORY[0x28223BE20](v40);
  v36 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v39 = &v29 - v5;
  v6 = type metadata accessor for FacePlacement(0);
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 64);
  v10 = *(v9 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v43 = MEMORY[0x277D84F90];
    sub_25B08C1EC(0, v10, 0);
    v11 = v43;
    v12 = 0;
    v32 = sub_25B0E2750();
    v13 = *(v32 - 8);
    v14 = *(v13 + 16);
    v13 += 16;
    v35 = v14;
    v15 = (v9 + ((*(v13 + 64) + 32) & ~*(v13 + 64)));
    v16 = *(v13 + 56);
    v33 = v13;
    v30 = (v13 + 16);
    v31 = v16;
    v29 = xmmword_25B0E7730;
    v34 = v10;
    v17 = v36;
    do
    {
      v19 = v39;
      v18 = v40;
      v20 = *(v40 + 48);
      v42 = v15;
      v21 = v32;
      v22 = v35;
      v35(&v39[v20], v15, v32);
      *v17 = v12;
      v23 = *(v18 + 48);
      (*v30)(&v17[v23], &v19[v20], v21);
      v22(v8, &v17[v23], v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31890, &qword_25B0E7768);
      v24 = swift_allocObject();
      *(v24 + 16) = v29;
      *(v24 + 32) = v41;
      *(v24 + 40) = v12;
      v25 = &v8[*(v38 + 20)];
      type metadata accessor for FacePlacement.Location(0);
      MEMORY[0x25F85F060](v24);
      *v25 = 3;
      sub_25B058448(v17, &qword_27FA31878, &unk_25B0E8B00);
      v43 = v11;
      v27 = *(v11 + 16);
      v26 = *(v11 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_25B08C1EC((v26 > 1), v27 + 1, 1);
        v11 = v43;
      }

      ++v12;
      *(v11 + 16) = v27 + 1;
      sub_25B059744(v8, v11 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v27);
      v15 = &v42[v31];
    }

    while (v34 != v12);
  }

  return v11;
}

void *sub_25B08924C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 80);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v5 = (v2 + 32);
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v29[0] = *v5;
    v8 = v5[1];
    v9 = v5[2];
    v10 = v5[3];
    v30 = *(v5 + 8);
    v29[2] = v9;
    v29[3] = v10;
    v29[1] = v8;
    v11 = *(v5 + 8);
    v13 = v5[2];
    v12 = v5[3];
    v14 = *v5;
    v15 = v5[1];
    v31 = v4;
    v33 = v15;
    v34 = v13;
    v35 = v12;
    v36 = v11;
    v32 = v14;
    v38 = v11;
    v37[2] = v13;
    v37[3] = v12;
    v37[0] = v14;
    v37[1] = v15;
    sub_25B08CEB4(v29, v28);
    v16 = sub_25B089494(v4, v37, a1);
    result = sub_25B058448(&v31, &qword_27FA318F0, &qword_25B0E7800);
    v17 = *(v16 + 16);
    v18 = v6[2];
    v19 = v18 + v17;
    if (__OFADD__(v18, v17))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) != 0 && (v21 = v6[3] >> 1, v21 >= v19))
    {
      if (*(v16 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v18 <= v19)
      {
        v22 = v18 + v17;
      }

      else
      {
        v22 = v18;
      }

      v6 = sub_25B08A26C(isUniquelyReferenced_nonNull_native, v22, 1, v6, &qword_27FA318E8, &qword_25B0E77F8, type metadata accessor for FacePlacement);
      v21 = v6[3] >> 1;
      if (*(v16 + 16))
      {
LABEL_14:
        v23 = v21 - v6[2];
        result = type metadata accessor for FacePlacement(0);
        if (v23 < v17)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v17)
        {
          v24 = v6[2];
          v25 = __OFADD__(v24, v17);
          v26 = v24 + v17;
          if (v25)
          {
            goto LABEL_23;
          }

          v6[2] = v26;
        }

        goto LABEL_4;
      }
    }

    if (v17)
    {
      goto LABEL_21;
    }

LABEL_4:
    ++v4;
    v5 = (v5 + 72);
    if (v3 == v4)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_25B089494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a1;
  v46 = a3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31878, &unk_25B0E8B00);
  v4 = MEMORY[0x28223BE20](v44);
  v40 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v43 = &v33 - v6;
  v7 = type metadata accessor for FacePlacement(0);
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 56);
  v11 = *(v10 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v48 = MEMORY[0x277D84F90];
    sub_25B08C1EC(0, v11, 0);
    v12 = v48;
    v13 = 0;
    v36 = sub_25B0E2750();
    v14 = *(v36 - 8);
    v15 = *(v14 + 16);
    v14 += 16;
    v39 = v15;
    v16 = v10 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v17 = *(v14 + 56);
    v37 = v14;
    v34 = (v14 + 16);
    v35 = v17;
    v33 = xmmword_25B0E7740;
    v38 = v11;
    v18 = v15;
    v19 = v40;
    do
    {
      v21 = v43;
      v20 = v44;
      v22 = *(v44 + 48);
      v47 = v16;
      v23 = v12;
      v24 = v36;
      v18(&v43[v22], v16, v36);
      *v19 = v13;
      v25 = *(v20 + 48);
      (*v34)(&v19[v25], &v21[v22], v24);
      v26 = v24;
      v12 = v23;
      v18(v9, &v19[v25], v26);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31890, &qword_25B0E7768);
      v27 = swift_allocObject();
      *(v27 + 16) = v33;
      v28 = v45;
      *(v27 + 32) = v46;
      *(v27 + 40) = v28;
      *(v27 + 48) = v13;
      v29 = &v9[*(v42 + 20)];
      type metadata accessor for FacePlacement.Location(0);
      MEMORY[0x25F85F060](v27);
      *v29 = 5;
      sub_25B058448(v19, &qword_27FA31878, &unk_25B0E8B00);
      v48 = v23;
      v31 = *(v23 + 16);
      v30 = *(v23 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_25B08C1EC((v30 > 1), v31 + 1, 1);
        v12 = v48;
      }

      ++v13;
      *(v12 + 16) = v31 + 1;
      sub_25B059744(v9, v12 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v31);
      v16 = v47 + v35;
    }

    while (v38 != v13);
  }

  return v12;
}

BOOL sub_25B0897D0(uint64_t a1)
{
  v1 = sub_25B0E2730();
  v2 = [v1 name];

  if (v2)
  {
    sub_25B0E3740();

    v3 = sub_25B0E2730();
    v4 = [v3 name];

    if (v4)
    {
      sub_25B0E3740();

      sub_25B04C9BC(v5, v6, v7);
      v8 = sub_25B0E3B20();

      return v8 == -1;
    }
  }

  return 0;
}

uint64_t GalleryLoader.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

char *sub_25B08993C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA318B0, &qword_25B0E77C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_25B089A88(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_25B089CE8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA318C0, &qword_25B0E77D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25B089DF4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA318C8, &qword_25B0E77D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_25B089EF8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA318A8, &unk_25B0E94C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25B08A018(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA318A0, &qword_25B0E77B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 192);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[192 * v8])
    {
      memmove(v12, v13, 192 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25B08A138(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31920, &qword_25B0E7828);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25B08A26C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

uint64_t sub_25B08A448(uint64_t *a1)
{
  v2 = *(sub_25B0E2750() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_25B0D40B8(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_25B08A4F0(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_25B08A4F0(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_25B0E3E10();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_25B0E2750();
        v6 = sub_25B0E3820();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_25B0E2750() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_25B08A9A8(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_25B08A61C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25B08A61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_25B0E2750();
  v9 = MEMORY[0x28223BE20](v8);
  v59 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v69 = &v49 - v12;
  result = MEMORY[0x28223BE20](v11);
  v16 = &v49 - v14;
  v51 = a2;
  if (a3 != a2)
  {
    v18 = *(v15 + 16);
    v17 = v15 + 16;
    v19 = *a4;
    v20 = *(v17 + 56);
    v61 = (v17 - 8);
    v62 = v18;
    v63 = v17;
    v21 = v19 + v20 * (a3 - 1);
    v56 = -v20;
    v57 = (v17 + 16);
    v22 = a1 - a3;
    v58 = v19;
    v50 = v20;
    v23 = v19 + v20 * a3;
    v24 = &_swift_FORCE_LOAD___swiftCoreAudio___NanoFaceGallery;
    v60 = &v49 - v14;
LABEL_7:
    v54 = v21;
    v55 = a3;
    v52 = v23;
    v53 = v22;
    v26 = v22;
    while (1)
    {
      v27 = v62;
      v62(v16, v23, v8);
      v27(v69, v21, v8);
      v28 = sub_25B0E2730();
      v29 = [v28 v24[137]];

      if (!v29)
      {
        goto LABEL_5;
      }

      v64 = v26;
      v30 = v24;
      v31 = sub_25B0E3740();
      v33 = v32;

      v34 = sub_25B0E2730();
      v35 = [v34 v30 + 3064];

      if (!v35)
      {

        v24 = &_swift_FORCE_LOAD___swiftCoreAudio___NanoFaceGallery;
LABEL_5:
        v25 = *v61;
        (*v61)(v69, v8);
        result = (v25)(v16, v8);
LABEL_6:
        a3 = v55 + 1;
        v21 = v54 + v50;
        v22 = v53 - 1;
        v23 = v52 + v50;
        if (v55 + 1 == v51)
        {
          return result;
        }

        goto LABEL_7;
      }

      v36 = sub_25B0E3740();
      v38 = v37;

      v67 = v31;
      v68 = v33;
      v65 = v36;
      v66 = v38;
      sub_25B04C9BC(v39, v40, v41);
      v42 = sub_25B0E3B20();

      v43 = v69;
      v16 = v60;

      v44 = *v61;
      (*v61)(v43, v8);
      result = (v44)(v16, v8);
      v24 = &_swift_FORCE_LOAD___swiftCoreAudio___NanoFaceGallery;
      v45 = v64;
      if (v42 != -1)
      {
        goto LABEL_6;
      }

      if (!v58)
      {
        break;
      }

      v46 = *v57;
      v47 = v59;
      (*v57)(v59, v23, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v46)(v21, v47, v8);
      v21 += v56;
      v23 += v56;
      v48 = __CFADD__(v45, 1);
      v26 = v45 + 1;
      if (v48)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25B08A9A8(unint64_t *a1, uint64_t a2, char *a3, unint64_t a4)
{
  v5 = v4;
  v155 = a1;
  v179 = sub_25B0E2750();
  v8 = MEMORY[0x28223BE20](v179);
  v160 = &v151 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v173 = &v151 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v151 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v178 = &v151 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v151 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v169 = &v151 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  result = MEMORY[0x28223BE20](v22);
  v168 = a3;
  v27 = *(a3 + 1);
  v166 = v25;
  if (v27 < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_106:
    a3 = *v155;
    if (!*v155)
    {
      goto LABEL_146;
    }

    a4 = v29;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_140:
      result = sub_25B0D3F4C(a4);
    }

    v184 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v168)
      {
        v144 = *(result + 16 * a4);
        v145 = result;
        v146 = *(result + 16 * (a4 - 1) + 40);
        sub_25B08B6B0(*v168 + *(v166 + 72) * v144, *v168 + *(v166 + 72) * *(result + 16 * (a4 - 1) + 32), (*v168 + *(v166 + 72) * v146), a3);
        if (v5)
        {
        }

        if (v146 < v144)
        {
          goto LABEL_133;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v145 = sub_25B0D3F4C(v145);
        }

        if (a4 - 2 >= *(v145 + 2))
        {
          goto LABEL_134;
        }

        v147 = &v145[16 * a4];
        *v147 = v144;
        *(v147 + 1) = v146;
        v184 = v145;
        sub_25B0D3EC0(a4 - 1);
        result = v184;
        a4 = *(v184 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_144;
    }
  }

  v153 = &v151 - v24;
  v152 = v26;
  v28 = 0;
  v176 = v25 + 16;
  v177 = (v25 + 8);
  v175 = (v25 + 32);
  v29 = MEMORY[0x277D84F90];
  v30 = &_swift_FORCE_LOAD___swiftCoreAudio___NanoFaceGallery;
  v154 = a4;
  v167 = v14;
  v165 = v19;
  while (1)
  {
    v31 = v28;
    v161 = v29;
    if (v28 + 1 < v27)
    {
      v170 = v27;
      v32 = *(v25 + 72);
      v33 = v28;
      v34 = *v168;
      v35 = *(v25 + 16);
      v174 = (*v168 + v32 * (v28 + 1));
      v36 = v179;
      (v35)(v153);
      v156 = v33;
      v37 = v34 + v32 * v33;
      v38 = v152;
      v164 = v35;
      (v35)(v152, v37, v36);
      v39 = v153;
      LODWORD(v171) = sub_25B0897D0(v153);
      if (!v5)
      {
        v157 = 0;
        v40 = *v177;
        v41 = v38;
        v42 = v179;
        (*v177)(v41, v179);
        v163 = v40;
        result = (v40)(v39, v42);
        v43 = v156 + 2;
        a3 = (v34 + v32 * (v156 + 2));
        v30 = &_swift_FORCE_LOAD___swiftCoreAudio___NanoFaceGallery;
        v44 = v32;
        v172 = v32;
        while (1)
        {
          v47 = v170;
          if (v170 == v43)
          {
            break;
          }

          v48 = v179;
          v49 = v164;
          (v164)(v169, a3, v179);
          v49(v19, v174, v48);
          v50 = sub_25B0E2730();
          v51 = [v50 v30[137]];

          if (v51)
          {
            v52 = sub_25B0E3740();
            v54 = v53;

            v55 = sub_25B0E2730();
            v51 = [v55 v30[137]];

            if (v51)
            {
              v56 = sub_25B0E3740();
              v58 = v57;

              v182 = v52;
              v183 = v54;
              v180 = v56;
              v181 = v58;
              sub_25B04C9BC(v59, v60, v61);
              v51 = sub_25B0E3B20();

              LODWORD(v51) = v51 == -1;
            }

            else
            {
            }

            v14 = v167;
            v30 = &_swift_FORCE_LOAD___swiftCoreAudio___NanoFaceGallery;
          }

          v19 = v165;
          v45 = v179;
          v46 = v163;
          (v163)(v165, v179);
          result = v46(v169, v45);
          ++v43;
          v44 = v172;
          a3 += v172;
          v174 += v172;
          if ((v171 & 1) != v51)
          {
            v47 = v43 - 1;
            break;
          }
        }

        v5 = v157;
        v25 = v166;
        v62 = v161;
        a4 = v154;
        v31 = v156;
        if (v171)
        {
          if (v47 < v156)
          {
            goto LABEL_139;
          }

          if (v156 < v47)
          {
            v63 = v44 * (v47 - 1);
            v64 = v47 * v44;
            v65 = v47;
            v66 = v47;
            v67 = v156;
            v68 = v156 * v44;
            do
            {
              if (v67 != --v66)
              {
                v69 = *v168;
                if (!*v168)
                {
                  goto LABEL_143;
                }

                a3 = (v69 + v68);
                v70 = *v175;
                (*v175)(v160, v69 + v68, v179, v62);
                if (v68 < v63 || a3 >= v69 + v64)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v68 != v63)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                result = (v70)(v69 + v63, v160, v179);
                v5 = v157;
                v62 = v161;
                v30 = &_swift_FORCE_LOAD___swiftCoreAudio___NanoFaceGallery;
                v44 = v172;
              }

              ++v67;
              v63 -= v44;
              v64 -= v44;
              v68 += v44;
            }

            while (v67 < v66);
            v25 = v166;
            v14 = v167;
            a4 = v154;
            v31 = v156;
            v47 = v65;
          }
        }

        goto LABEL_30;
      }

      v148 = *v177;
      v149 = v38;
      v150 = v179;
      (*v177)(v149, v179);
      (v148)(v39, v150);
    }

    v47 = v28 + 1;
LABEL_30:
    v71 = v168[1];
    if (v47 >= v71)
    {
      goto LABEL_39;
    }

    if (__OFSUB__(v47, v31))
    {
      goto LABEL_136;
    }

    if (v47 - v31 >= a4)
    {
LABEL_39:
      v28 = v47;
      if (v47 < v31)
      {
        goto LABEL_135;
      }

      goto LABEL_40;
    }

    if (__OFADD__(v31, a4))
    {
      goto LABEL_137;
    }

    if ((v31 + a4) >= v71)
    {
      v72 = v168[1];
    }

    else
    {
      v72 = v31 + a4;
    }

    if (v72 < v31)
    {
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
      goto LABEL_140;
    }

    if (v47 == v72)
    {
      goto LABEL_39;
    }

    v157 = v5;
    v118 = *v168;
    v119 = *(v25 + 72);
    v174 = *(v25 + 16);
    v120 = (v118 + v119 * (v47 - 1));
    v171 = -v119;
    v156 = v31;
    v121 = (v31 - v47);
    v172 = v118;
    v158 = v119;
    v122 = v118 + v47 * v119;
    v159 = v72;
LABEL_94:
    v170 = v47;
    v162 = v122;
    v163 = v121;
    v164 = v120;
LABEL_95:
    v124 = v179;
    v125 = v174;
    (v174)(v178, v122, v179);
    v125(v14, v120, v124);
    v126 = sub_25B0E2730();
    v127 = [v126 v30[137]];

    if (!v127)
    {
      goto LABEL_92;
    }

    v128 = v30;
    v129 = sub_25B0E3740();
    v131 = v130;

    v132 = v14;
    v133 = sub_25B0E2730();
    v134 = [v133 v128 + 3064];

    if (v134)
    {
      break;
    }

    v14 = v132;
    v30 = &_swift_FORCE_LOAD___swiftCoreAudio___NanoFaceGallery;
LABEL_92:
    a4 = v177;
    a3 = *v177;
    v123 = v179;
    (*v177)(v14, v179);
    (a3)(v178, v123);
LABEL_93:
    v47 = v170 + 1;
    v120 = &v164[v158];
    v121 = v163 - 1;
    v122 = v162 + v158;
    v28 = v159;
    if (v170 + 1 != v159)
    {
      goto LABEL_94;
    }

    v5 = v157;
    v31 = v156;
    if (v159 < v156)
    {
      goto LABEL_135;
    }

LABEL_40:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v29 = v161;
    }

    else
    {
      result = sub_25B08993C(0, *(v161 + 2) + 1, 1, v161);
      v29 = result;
    }

    a3 = *(v29 + 2);
    v73 = *(v29 + 3);
    a4 = (a3 + 1);
    if (a3 >= v73 >> 1)
    {
      result = sub_25B08993C((v73 > 1), (a3 + 1), 1, v29);
      v29 = result;
    }

    *(v29 + 2) = a4;
    v74 = &v29[16 * a3];
    *(v74 + 4) = v31;
    *(v74 + 5) = v28;
    v75 = *v155;
    if (!*v155)
    {
      goto LABEL_145;
    }

    if (a3)
    {
      while (2)
      {
        v76 = a4 - 1;
        if (a4 >= 4)
        {
          v81 = &v29[16 * a4 + 32];
          v82 = *(v81 - 64);
          v83 = *(v81 - 56);
          v87 = __OFSUB__(v83, v82);
          v84 = v83 - v82;
          if (v87)
          {
            goto LABEL_122;
          }

          v86 = *(v81 - 48);
          v85 = *(v81 - 40);
          v87 = __OFSUB__(v85, v86);
          v79 = v85 - v86;
          v80 = v87;
          if (v87)
          {
            goto LABEL_123;
          }

          v88 = &v29[16 * a4];
          v90 = *v88;
          v89 = *(v88 + 1);
          v87 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v87)
          {
            goto LABEL_125;
          }

          v87 = __OFADD__(v79, v91);
          v92 = v79 + v91;
          if (v87)
          {
            goto LABEL_128;
          }

          if (v92 >= v84)
          {
            v110 = &v29[16 * v76 + 32];
            v112 = *v110;
            v111 = *(v110 + 1);
            v87 = __OFSUB__(v111, v112);
            v113 = v111 - v112;
            if (v87)
            {
              goto LABEL_132;
            }

            if (v79 < v113)
            {
              v76 = a4 - 2;
            }
          }

          else
          {
LABEL_59:
            if (v80)
            {
              goto LABEL_124;
            }

            v93 = &v29[16 * a4];
            v95 = *v93;
            v94 = *(v93 + 1);
            v96 = __OFSUB__(v94, v95);
            v97 = v94 - v95;
            v98 = v96;
            if (v96)
            {
              goto LABEL_127;
            }

            v99 = &v29[16 * v76 + 32];
            v101 = *v99;
            v100 = *(v99 + 1);
            v87 = __OFSUB__(v100, v101);
            v102 = v100 - v101;
            if (v87)
            {
              goto LABEL_130;
            }

            if (__OFADD__(v97, v102))
            {
              goto LABEL_131;
            }

            if (v97 + v102 < v79)
            {
              goto LABEL_73;
            }

            if (v79 < v102)
            {
              v76 = a4 - 2;
            }
          }
        }

        else
        {
          if (a4 == 3)
          {
            v77 = *(v29 + 4);
            v78 = *(v29 + 5);
            v87 = __OFSUB__(v78, v77);
            v79 = v78 - v77;
            v80 = v87;
            goto LABEL_59;
          }

          v103 = &v29[16 * a4];
          v105 = *v103;
          v104 = *(v103 + 1);
          v87 = __OFSUB__(v104, v105);
          v97 = v104 - v105;
          v98 = v87;
LABEL_73:
          if (v98)
          {
            goto LABEL_126;
          }

          v106 = &v29[16 * v76];
          v108 = *(v106 + 4);
          v107 = *(v106 + 5);
          v87 = __OFSUB__(v107, v108);
          v109 = v107 - v108;
          if (v87)
          {
            goto LABEL_129;
          }

          if (v109 < v97)
          {
            break;
          }
        }

        a3 = (v76 - 1);
        if (v76 - 1 >= a4)
        {
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
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
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (!*v168)
        {
          goto LABEL_142;
        }

        v114 = v29;
        a4 = *&v29[16 * a3 + 32];
        v115 = *&v29[16 * v76 + 40];
        sub_25B08B6B0(*v168 + *(v166 + 72) * a4, *v168 + *(v166 + 72) * *&v29[16 * v76 + 32], (*v168 + *(v166 + 72) * v115), v75);
        if (v5)
        {
        }

        if (v115 < a4)
        {
          goto LABEL_120;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v116 = v114;
        }

        else
        {
          v116 = sub_25B0D3F4C(v114);
        }

        v14 = v167;
        if (a3 >= *(v116 + 2))
        {
          goto LABEL_121;
        }

        v117 = &v116[16 * a3];
        *(v117 + 4) = a4;
        *(v117 + 5) = v115;
        v184 = v116;
        result = sub_25B0D3EC0(v76);
        v29 = v184;
        a4 = *(v184 + 16);
        if (a4 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v27 = v168[1];
    v19 = v165;
    v25 = v166;
    a4 = v154;
    if (v28 >= v27)
    {
      goto LABEL_106;
    }
  }

  v135 = sub_25B0E3740();
  v137 = v136;

  v182 = v129;
  v183 = v131;
  v180 = v135;
  v181 = v137;
  sub_25B04C9BC(v138, v139, v140);
  a4 = sub_25B0E3B20();

  v141 = v179;

  a3 = *v177;
  (*v177)(v132, v141);
  result = (a3)(v178, v141);
  v14 = v132;
  v30 = &_swift_FORCE_LOAD___swiftCoreAudio___NanoFaceGallery;
  if (a4 != -1)
  {
    goto LABEL_93;
  }

  if (v172)
  {
    a3 = *v175;
    a4 = v173;
    v142 = v179;
    (*v175)(v173, v122, v179);
    swift_arrayInitWithTakeFrontToBack();
    (a3)(v120, a4, v142);
    v120 += v171;
    v122 += v171;
    if (__CFADD__(v121++, 1))
    {
      goto LABEL_93;
    }

    goto LABEL_95;
  }

  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
  return result;
}

uint64_t sub_25B08B6B0(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v8 = sub_25B0E2750();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v75 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v74 = &v66 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v66 - v15;
  result = MEMORY[0x28223BE20](v14);
  v78 = &v66 - v18;
  v76 = *(v19 + 72);
  if (!v76)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v76 == -1)
  {
    goto LABEL_70;
  }

  v20 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v76 == -1)
  {
    goto LABEL_71;
  }

  v21 = (a2 - a1) / v76;
  v85 = a1;
  v84 = a4;
  if (v21 >= v20 / v76)
  {
    v23 = v20 / v76 * v76;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v46 = a4 + v23;
    if (v23 >= 1)
    {
      v47 = -v76;
      v71 = (v9 + 8);
      v72 = (v9 + 16);
      v48 = v46;
      v70 = a4;
      v78 = -v76;
      do
      {
        v67 = v46;
        v49 = a2;
        a2 += v47;
        v77 = a2;
        v73 = v49;
        while (1)
        {
          if (v49 <= a1)
          {
            v85 = v49;
            v83 = v67;
            goto LABEL_68;
          }

          v51 = a3;
          v69 = v46;
          v52 = *v72;
          v76 = v48 + v47;
          v52(v74);
          (v52)(v75, a2, v8);
          v53 = sub_25B0E2730();
          v54 = [v53 name];

          if (v54)
          {
            v68 = sub_25B0E3740();
            v56 = v55;

            v57 = sub_25B0E2730();
            v54 = [v57 name];

            if (v54)
            {
              v58 = sub_25B0E3740();
              v60 = v59;

              v81 = v68;
              v82 = v56;
              v79 = v58;
              v80 = v60;
              sub_25B04C9BC(v61, v62, v63);
              v54 = sub_25B0E3B20();

              LOBYTE(v54) = v54 == -1;
            }

            else
            {
            }

            a2 = v77;
          }

          a3 = &v51[v78];
          v64 = *v71;
          (*v71)(v75, v8);
          v64(v74, v8);
          if (v54)
          {
            break;
          }

          v65 = v76;
          v46 = v76;
          if (v51 < v48 || a3 >= v48)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v51 != v48)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v48 = v46;
          v50 = v65 > v70;
          v47 = v78;
          v49 = v73;
          if (!v50)
          {
            a2 = v73;
            goto LABEL_67;
          }
        }

        if (v51 < v73 || a3 >= v73)
        {
          swift_arrayInitWithTakeFrontToBack();
          v46 = v69;
          v47 = v78;
        }

        else
        {
          v46 = v69;
          v47 = v78;
          if (v51 != v73)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v48 > v70);
    }

LABEL_67:
    v85 = a2;
    v83 = v46;
  }

  else
  {
    v22 = v21 * v76;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v74 = a3;
    v75 = (a4 + v22);
    v83 = a4 + v22;
    if (v22 >= 1 && a2 < a3)
    {
      v72 = *(v9 + 16);
      v73 = v9 + 16;
      v71 = (v9 + 8);
      while (1)
      {
        v25 = v72;
        (v72)(v78, a2, v8);
        v26 = v8;
        v25(v16, a4, v8);
        v27 = v16;
        v28 = sub_25B0E2730();
        v29 = [v28 name];

        if (!v29)
        {
          goto LABEL_29;
        }

        v77 = a2;
        v30 = sub_25B0E3740();
        v32 = v31;

        v33 = sub_25B0E2730();
        v34 = [v33 name];

        if (!v34)
        {
          break;
        }

        v35 = sub_25B0E3740();
        v36 = a4;
        v38 = v37;

        v81 = v30;
        v82 = v32;
        v79 = v35;
        v80 = v38;
        sub_25B04C9BC(v39, v40, v41);
        v42 = sub_25B0E3B20();

        a4 = v36;
        v43 = v76;

        v44 = *v71;
        (*v71)(v27, v26);
        v44(v78, v26);
        a2 = v77;
        v16 = v27;
        if (v42 != -1)
        {
          goto LABEL_30;
        }

        if (a1 < v77 || a1 >= v77 + v43)
        {
          v8 = v26;
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          v8 = v26;
          if (a1 != v77)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a2 += v43;
LABEL_36:
        a1 += v43;
        v85 = a1;
        if (a4 >= v75 || a2 >= v74)
        {
          goto LABEL_68;
        }
      }

      a2 = v77;
LABEL_29:
      v45 = *v71;
      (*v71)(v27, v26);
      v45(v78, v26);
      v16 = v27;
      v43 = v76;
LABEL_30:
      if (a1 < a4 || a1 >= a4 + v43)
      {
        v8 = v26;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v8 = v26;
        if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v84 = a4 + v43;
      a4 += v43;
      goto LABEL_36;
    }
  }

LABEL_68:
  sub_25B0D3F60(&v85, &v84, &v83);
  return 1;
}

uint64_t sub_25B08BE30(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_25B08A26C(isUniquelyReferenced_nonNull_native, v12, 1, v3, &qword_27FA318E8, &qword_25B0E77F8, type metadata accessor for FacePlacement);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for FacePlacement(0);
  if (v8 < v2)
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

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_25B08BF80(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_25B089CE8(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
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

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_25B08C074(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v4 + v2 <= *(v3 + 24) >> 1)
  {
    if (*(v5 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = sub_25B0E3BE0();
  v3 = result;
  if (!*(v5 + 16))
  {
LABEL_10:

    if (!v2)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_11:
    *v1 = v3;
    return result;
  }

  v6 = *(v3 + 16);
  v7 = __OFADD__(v6, v2);
  v8 = v6 + v2;
  if (!v7)
  {
    *(v3 + 16) = v8;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_25B08C168(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25B08C39C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25B08C188(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25B08C58C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25B08C1A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25B08CC7C(a1, a2, a3, *v3, &qword_27FA31908, &qword_25B0E7810, type metadata accessor for LinkedFace);
  *v3 = result;
  return result;
}

void *sub_25B08C1EC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25B08CC7C(a1, a2, a3, *v3, &qword_27FA318E8, &qword_25B0E77F8, type metadata accessor for FacePlacement);
  *v3 = result;
  return result;
}

char *sub_25B08C230(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25B08C7D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25B08C250(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25B08CC7C(a1, a2, a3, *v3, &qword_27FA318B8, &qword_25B0E77C8, MEMORY[0x277D2BE00]);
  *v3 = result;
  return result;
}

void *sub_25B08C294(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25B08CC7C(a1, a2, a3, *v3, &qword_27FA318D8, &qword_25B0E77E8, type metadata accessor for FaceLibraryManager.Entry);
  *v3 = result;
  return result;
}

char *sub_25B08C2D8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25B08C928(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25B08C2F8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25B08CA44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25B08C318(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25B08CB50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25B08C338(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25B08C6AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25B08C358(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25B08CC7C(a1, a2, a3, *v3, &qword_27FA31918, &qword_25B0E7820, MEMORY[0x277CDF110]);
  *v3 = result;
  return result;
}

void *sub_25B08C39C(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31898, &qword_25B0E77B0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_25B08C58C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA318A8, &unk_25B0E94C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25B08C6AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA318C8, &qword_25B0E77D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_25B08C7D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA318F8, &unk_25B0E94D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25B08C928(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA318D0, &qword_25B0E77E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 48 * v8);
  }

  return v10;
}

char *sub_25B08CA44(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA318C0, &qword_25B0E77D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25B08CB50(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31890, &qword_25B0E7768);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_25B08CC7C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

uint64_t sub_25B08CFB4()
{
  v0 = sub_25B0E2970();
  __swift_allocate_value_buffer(v0, qword_27FA31930);
  __swift_project_value_buffer(v0, qword_27FA31930);
  return sub_25B0E2960();
}

uint64_t sub_25B08D034(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 >> 62)
  {
    if (a3 >> 62 == 1)
    {
      MEMORY[0x25F860A80](4);
      return sub_25B0E3F30();
    }

    v9 = a5 | a4;
    if (a3 != 0x8000000000000000 || v9 | a2)
    {
      if (a3 == 0x8000000000000000 && a2 == 1 && !v9)
      {
        v8 = 1;
      }

      else
      {
        v8 = 2;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    MEMORY[0x25F860A80](3);
    sub_25B0E3B00();
    sub_25B0E3F30();
    MEMORY[0x25F860A80](a4);
    v8 = a5;
  }

  return MEMORY[0x25F860A80](v8);
}

uint64_t sub_25B08D110()
{
  if (*v0)
  {
    return 0x3E656C6174533CLL;
  }

  else
  {
    return 0x676E697373694D3CLL;
  }
}

uint64_t sub_25B08D150()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_25B0E3F10();
  sub_25B0E3B00();
  sub_25B0E3F30();
  MEMORY[0x25F860A80](v1);
  MEMORY[0x25F860A80](v2);
  return sub_25B0E3F50();
}

uint64_t sub_25B08D1D4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_25B0E3B00();
  sub_25B0E3F30();
  MEMORY[0x25F860A80](v2);
  return MEMORY[0x25F860A80](v3);
}

uint64_t sub_25B08D234(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_25B0E3F10();
  sub_25B0E3B00();
  sub_25B0E3F30();
  MEMORY[0x25F860A80](v2);
  MEMORY[0x25F860A80](v3);
  return sub_25B0E3F50();
}

BOOL sub_25B08D2B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = a1[2];
  v4 = a1[3];
  v5 = *(a2 + 8);
  v6 = a2[2];
  v7 = a2[3];
  sub_25B0954F8();
  if ((sub_25B0E3AF0() & 1) == 0)
  {
    return 0;
  }

  v8 = v4 == v7;
  if (v3 != v6)
  {
    v8 = 0;
  }

  return ((v2 ^ v5) & 1) == 0 && v8;
}

uint64_t sub_25B08D344()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_25B0E3F10();
  sub_25B08D034(v6, v1, v2, v4, v3);
  return sub_25B0E3F50();
}

uint64_t sub_25B08D3B0(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  sub_25B0E3F10();
  sub_25B08D034(v7, v2, v3, v5, v4);
  return sub_25B0E3F50();
}

id sub_25B08D428()
{
  ObjectType = swift_getObjectType();
  if (qword_27FA30D08 != -1)
  {
    swift_once();
  }

  v2 = sub_25B0E2970();
  __swift_project_value_buffer(v2, qword_27FA31930);
  v3 = v0;
  v4 = sub_25B0E2950();
  v5 = sub_25B0E3A50();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    v8 = __swift_project_boxed_opaque_existential_1(&v3[OBJC_IVAR___NFGFaceSnapshotRefresher_loader], *&v3[OBJC_IVAR___NFGFaceSnapshotRefresher_loader + 24]);
    MEMORY[0x28223BE20](v8);
    (*(v10 + 16))(&v16 - v9);
    type metadata accessor for GalleryLoader();
    v11 = sub_25B0E3760();
    v13 = sub_25B04BE04(v11, v12, &v16);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_25B03D000, v4, v5, "Refresher going away with loader %s…", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x25F8613E0](v7, -1, -1);
    MEMORY[0x25F8613E0](v6, -1, -1);
  }

  v14 = &v3[OBJC_IVAR___NFGFaceSnapshotRefresher_internalState];
  os_unfair_lock_lock(&v3[OBJC_IVAR___NFGFaceSnapshotRefresher_internalState]);
  sub_25B08D684(&v14[2], v3);
  os_unfair_lock_unlock(v14);
  v17.receiver = v3;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, sel_dealloc);
}

void sub_25B08D684(uint64_t a1, void *a2)
{
  v4 = a1;
  v5 = *(a1 + 40);
  if (v5)
  {
    sub_25B0E39E0();
  }

  v6 = *(v4 + 8);
  if (v6 >> 62)
  {
    if (v6 >> 62 == 1)
    {
      goto LABEL_25;
    }

    if (v6 == 0x8000000000000000 && (*(v4 + 16) | *(v4 + 24) | *v4) == 0)
    {
      goto LABEL_25;
    }
  }

  v29[2] = v5;
  if (qword_27FA30D08 != -1)
  {
    swift_once();
  }

  v8 = sub_25B0E2970();
  __swift_project_value_buffer(v8, qword_27FA31930);
  v9 = a2;
  v10 = sub_25B0E2950();
  v11 = sub_25B0E3A50();

  v30 = v9;
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v31 = v13;
    *v12 = 136315138;
    v14 = __swift_project_boxed_opaque_existential_1(&v9[OBJC_IVAR___NFGFaceSnapshotRefresher_loader], *&v9[OBJC_IVAR___NFGFaceSnapshotRefresher_loader + 24]);
    MEMORY[0x28223BE20](v14);
    (*(v16 + 16))(v29 - v15);
    type metadata accessor for GalleryLoader();
    v17 = sub_25B0E3760();
    v19 = sub_25B04BE04(v17, v18, &v31);

    *(v12 + 4) = v19;
    _os_log_impl(&dword_25B03D000, v10, v11, "Refresher with loader %s going away with unfinished business…", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x25F8613E0](v13, -1, -1);
    MEMORY[0x25F8613E0](v12, -1, -1);
  }

  v20 = [*(v4 + 32) allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31988, &unk_25B0E79F0);
  v21 = sub_25B0E37F0();

  if (!(v21 >> 62))
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_15;
    }

    goto LABEL_24;
  }

  v22 = sub_25B0E3CC0();
  if (!v22)
  {
LABEL_24:

LABEL_25:

LABEL_26:
    *(v4 + 40) = 0;
    return;
  }

LABEL_15:
  if (v22 >= 1)
  {
    v29[0] = v4;
    v29[1] = v2;
    v23 = 0;
    do
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x25F860730](v23, v21);
      }

      else
      {
        v24 = *(v21 + 8 * v23 + 32);
        swift_unknownObjectRetain();
      }

      ++v23;
      v25 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v26 = sub_25B0E3730();
      v27 = [v25 initWithDomain:v26 code:500 userInfo:0];

      v28 = sub_25B0E22C0();
      [v24 refresher:v30 didFinishWithError:v28];
      swift_unknownObjectRelease();
    }

    while (v22 != v23);

    v4 = v29[0];
    goto LABEL_26;
  }

  __break(1u);
}

void sub_25B08DB20(void *a1)
{
  if (qword_27FA30D08 != -1)
  {
    swift_once();
  }

  v3 = sub_25B0E2970();
  __swift_project_value_buffer(v3, qword_27FA31930);
  v4 = v1;
  swift_unknownObjectRetain();
  v5 = sub_25B0E2950();
  v6 = sub_25B0E3A50();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v29 = v8;
    *v7 = 136315394;
    v9 = __swift_project_boxed_opaque_existential_1(&v4[OBJC_IVAR___NFGFaceSnapshotRefresher_loader], *&v4[OBJC_IVAR___NFGFaceSnapshotRefresher_loader + 24]);
    MEMORY[0x28223BE20](v9);
    (*(v11 + 16))(&v28 - v10);
    type metadata accessor for GalleryLoader();
    v12 = sub_25B0E3760();
    v14 = sub_25B04BE04(v12, v13, &v29);

    *(v7 + 4) = v14;
    *(v7 + 12) = 2080;
    swift_getObjectType();
    v28 = a1;
    swift_unknownObjectRetain();
    v15 = sub_25B0E3760();
    v17 = sub_25B04BE04(v15, v16, &v29);

    *(v7 + 14) = v17;
    _os_log_impl(&dword_25B03D000, v5, v6, "Refresher - %s - add: %s…", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8613E0](v8, -1, -1);
    MEMORY[0x25F8613E0](v7, -1, -1);
  }

  v18 = &v4[OBJC_IVAR___NFGFaceSnapshotRefresher_internalState];
  os_unfair_lock_lock(&v4[OBJC_IVAR___NFGFaceSnapshotRefresher_internalState]);
  [v18[5] addObject_];
  v19 = v18[1];
  v20 = v18[2];
  v21 = v18[3];
  v22 = v18[4];
  if (v20 >> 62)
  {
    if (v20 >> 62 == 1)
    {
      if (v19)
      {
        v23 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        v24 = sub_25B0E3730();
        v25 = [v23 initWithDomain:v24 code:200 userInfo:0];

        v26 = sub_25B0E22C0();
      }

      else
      {
        v26 = 0;
      }

      [a1 refresher:v4 didFinishWithError:v26];
    }

    else
    {
      v27 = v22 | v21;
      if (v20 != 0x8000000000000000 || v27 | v19)
      {
        if (v20 == 0x8000000000000000 && v19 == 1 && !v27)
        {
          [a1 refresherDidStart_];
        }

        else
        {
          [a1 refresherDidLoadFaces_];
        }
      }
    }
  }

  else if (v20)
  {
    [a1 refresher:v4 didSkipFace:v19 refreshedCount:v21 remainingCount:v22];
  }

  else
  {
    [a1 refresher:v4 didRefreshFace:v19 refreshedCount:v21 remainingCount:v22];
  }

  os_unfair_lock_unlock(v18);
}

void sub_25B08DF00(uint64_t a1)
{
  if (qword_27FA30D08 != -1)
  {
    swift_once();
  }

  v3 = sub_25B0E2970();
  __swift_project_value_buffer(v3, qword_27FA31930);
  v4 = v1;
  swift_unknownObjectRetain();
  v5 = sub_25B0E2950();
  v6 = sub_25B0E3A50();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315394;
    v9 = __swift_project_boxed_opaque_existential_1(&v4[OBJC_IVAR___NFGFaceSnapshotRefresher_loader], *&v4[OBJC_IVAR___NFGFaceSnapshotRefresher_loader + 24]);
    MEMORY[0x28223BE20](v9);
    (*(v11 + 16))(&v19 - v10);
    type metadata accessor for GalleryLoader();
    v12 = sub_25B0E3760();
    v14 = sub_25B04BE04(v12, v13, &v20);

    *(v7 + 4) = v14;
    *(v7 + 12) = 2080;
    swift_getObjectType();
    v19 = a1;
    swift_unknownObjectRetain();
    v15 = sub_25B0E3760();
    v17 = sub_25B04BE04(v15, v16, &v20);

    *(v7 + 14) = v17;
    _os_log_impl(&dword_25B03D000, v5, v6, "Refresher - %s - remove: %s…", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8613E0](v8, -1, -1);
    MEMORY[0x25F8613E0](v7, -1, -1);
  }

  v18 = &v4[OBJC_IVAR___NFGFaceSnapshotRefresher_internalState];
  os_unfair_lock_lock(&v4[OBJC_IVAR___NFGFaceSnapshotRefresher_internalState]);
  [v18[5] removeObject_];
  os_unfair_lock_unlock(v18);
}

void sub_25B08E1C4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

uint64_t sub_25B08E23C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 8);
  if (!(v6 >> 62))
  {
LABEL_11:
    if (qword_27FA30D08 != -1)
    {
      swift_once();
    }

    v22 = sub_25B0E2970();
    __swift_project_value_buffer(v22, qword_27FA31930);
    v23 = a2;
    v24 = sub_25B0E2950();
    v25 = sub_25B0E3A30();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v54 = v27;
      *v26 = 136315138;
      v28 = __swift_project_boxed_opaque_existential_1(&v23[OBJC_IVAR___NFGFaceSnapshotRefresher_loader], *&v23[OBJC_IVAR___NFGFaceSnapshotRefresher_loader + 24]);
      MEMORY[0x28223BE20](v28);
      (*(v30 + 16))(&v52 - v29);
      type metadata accessor for GalleryLoader();
      v31 = sub_25B0E3760();
      v33 = sub_25B04BE04(v31, v32, &v54);

      *(v26 + 4) = v33;
      _os_log_impl(&dword_25B03D000, v24, v25, "Refresher - %s start:other…!", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x25F8613E0](v27, -1, -1);
      MEMORY[0x25F8613E0](v26, -1, -1);
    }

    v34 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v35 = sub_25B0E3730();
    v36 = [v34 initWithDomain:v35 code:300 userInfo:0];

    result = swift_willThrow();
    *a3 = v36;
    return result;
  }

  if (v6 >> 62 != 1)
  {
    if (v6 == 0x8000000000000000 && (*(a1 + 16) | *(a1 + 24) | *a1) == 0)
    {
      v53 = v3;
      if (qword_27FA30D08 != -1)
      {
        goto LABEL_31;
      }

      goto LABEL_17;
    }

    goto LABEL_11;
  }

  v53 = v3;
  if (qword_27FA30D08 != -1)
  {
    swift_once();
  }

  v8 = sub_25B0E2970();
  __swift_project_value_buffer(v8, qword_27FA31930);
  v9 = a2;
  v10 = sub_25B0E2950();
  v11 = sub_25B0E3A50();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v54 = v13;
    *v12 = 136315138;
    v14 = __swift_project_boxed_opaque_existential_1(&v9[OBJC_IVAR___NFGFaceSnapshotRefresher_loader], *&v9[OBJC_IVAR___NFGFaceSnapshotRefresher_loader + 24]);
    MEMORY[0x28223BE20](v14);
    (*(v16 + 16))(&v52 - v15);
    type metadata accessor for GalleryLoader();
    v17 = sub_25B0E3760();
    v19 = sub_25B04BE04(v17, v18, &v54);

    *(v12 + 4) = v19;
    v20 = "Refresher - %s start:finished…";
LABEL_19:
    _os_log_impl(&dword_25B03D000, v10, v11, v20, v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x25F8613E0](v13, -1, -1);
    MEMORY[0x25F8613E0](v12, -1, -1);
    goto LABEL_20;
  }

  while (1)
  {
LABEL_20:

    *a1 = xmmword_25B0E7850;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    v46 = [*(a1 + 32) allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31988, &unk_25B0E79F0);
    v47 = sub_25B0E37F0();

    if (v47 >> 62)
    {
      v48 = sub_25B0E3CC0();
      if (!v48)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v48)
      {
        goto LABEL_29;
      }
    }

    if (v48 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_31:
    swift_once();
LABEL_17:
    v38 = sub_25B0E2970();
    __swift_project_value_buffer(v38, qword_27FA31930);
    v39 = a2;
    v10 = sub_25B0E2950();
    v11 = sub_25B0E3A50();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v54 = v13;
      *v12 = 136315138;
      v40 = __swift_project_boxed_opaque_existential_1(&v39[OBJC_IVAR___NFGFaceSnapshotRefresher_loader], *&v39[OBJC_IVAR___NFGFaceSnapshotRefresher_loader + 24]);
      MEMORY[0x28223BE20](v40);
      (*(v42 + 16))(&v52 - v41);
      type metadata accessor for GalleryLoader();
      v43 = sub_25B0E3760();
      v45 = sub_25B04BE04(v43, v44, &v54);

      *(v12 + 4) = v45;
      v20 = "Refresher - %s - start:idle…";
      goto LABEL_19;
    }
  }

  for (i = 0; i != v48; ++i)
  {
    if ((v47 & 0xC000000000000001) != 0)
    {
      v50 = MEMORY[0x25F860730](i, v47);
    }

    else
    {
      v50 = *(v47 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    [v50 refresherDidStart_];
    swift_unknownObjectRelease();
  }

LABEL_29:

  v51 = sub_25B08E958();

  *(a1 + 40) = v51;
  return result;
}

uint64_t sub_25B08E958()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17 - v2;
  v4 = (v0 + OBJC_IVAR___NFGFaceSnapshotRefresher_loader);
  *&v18[0] = 0;
  *(&v18[0] + 1) = 0xE000000000000000;
  sub_25B0E3BC0();
  v5 = __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  MEMORY[0x28223BE20](v5);
  (*(v7 + 16))(&v17 - v6);
  type metadata accessor for GalleryLoader();
  v8 = sub_25B0E3760();
  v10 = v9;

  *&v18[0] = v8;
  *(&v18[0] + 1) = v10;
  MEMORY[0x25F8602F0](0x6572666572202D20, 0xEF6B736174206873);
  v11 = v18[0];
  sub_25B0E3910();
  v12 = sub_25B0E3940();
  (*(*(v12 - 8) + 56))(v3, 0, 1, v12);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_25B049F48(v4, v18);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  sub_25B03F164(v18, (v14 + 4));
  v14[9] = v13;
  v15 = sub_25B094958(v11, *(&v11 + 1), v3, &unk_25B0E7A08, v14);

  sub_25B058448(v3, &qword_27FA31990, &qword_25B0E6920);
  return v15;
}

void sub_25B08ECA8()
{
  if (qword_27FA30D08 != -1)
  {
    swift_once();
  }

  v1 = sub_25B0E2970();
  __swift_project_value_buffer(v1, qword_27FA31930);
  v2 = v0;
  v3 = sub_25B0E2950();
  v4 = sub_25B0E3A50();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    v7 = __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR___NFGFaceSnapshotRefresher_loader], *&v2[OBJC_IVAR___NFGFaceSnapshotRefresher_loader + 24]);
    MEMORY[0x28223BE20](v7);
    (*(v9 + 16))(&v14 - v8);
    type metadata accessor for GalleryLoader();
    v10 = sub_25B0E3760();
    v12 = sub_25B04BE04(v10, v11, &v15);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_25B03D000, v3, v4, "Refresher - %s cancel…", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x25F8613E0](v6, -1, -1);
    MEMORY[0x25F8613E0](v5, -1, -1);
  }

  v13 = &v2[OBJC_IVAR___NFGFaceSnapshotRefresher_internalState];
  os_unfair_lock_lock(&v2[OBJC_IVAR___NFGFaceSnapshotRefresher_internalState]);
  sub_25B08EEFC(v13 + 1, v2, &v15);
  os_unfair_lock_unlock(v13);
}

void sub_25B08EEFC(void **a1, void *a2, uint64_t *a3)
{
  v53 = a3;
  v54 = a2;
  v4 = a1[5];
  if (v4)
  {
    v5 = qword_27FA30D08;

    if (v5 != -1)
    {
      swift_once();
    }

    v6 = sub_25B0E2970();
    __swift_project_value_buffer(v6, qword_27FA31930);
    v7 = v54;
    v8 = sub_25B0E2950();
    v9 = sub_25B0E3A50();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v55 = v11;
      *v10 = 136315138;
      v12 = __swift_project_boxed_opaque_existential_1(&v7[OBJC_IVAR___NFGFaceSnapshotRefresher_loader], *&v7[OBJC_IVAR___NFGFaceSnapshotRefresher_loader + 24]);
      MEMORY[0x28223BE20](v12);
      (*(v14 + 16))(v48 - v13);
      type metadata accessor for GalleryLoader();
      v15 = sub_25B0E3760();
      v17 = sub_25B04BE04(v15, v16, &v55);

      *(v10 + 4) = v17;
      _os_log_impl(&dword_25B03D000, v8, v9, "Refresher - %s cancelling task…", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x25F8613E0](v11, -1, -1);
      MEMORY[0x25F8613E0](v10, -1, -1);
    }

    sub_25B0E39E0();
  }

  v18 = *a1;
  v19 = a1[1];
  v20 = a1[2];
  if (v19 >> 62)
  {
    if (v19 >> 62 == 1 || (v19 == 0x8000000000000000 ? (v21 = (a1[3] | v20 | v18) == 0) : (v21 = 0), v21))
    {
      if (qword_27FA30D08 != -1)
      {
        swift_once();
      }

      v31 = sub_25B0E2970();
      __swift_project_value_buffer(v31, qword_27FA31930);
      v32 = v54;
      v33 = sub_25B0E2950();
      v34 = sub_25B0E3A30();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v55 = v36;
        *v35 = 136315138;
        v37 = __swift_project_boxed_opaque_existential_1(&v32[OBJC_IVAR___NFGFaceSnapshotRefresher_loader], *&v32[OBJC_IVAR___NFGFaceSnapshotRefresher_loader + 24]);
        MEMORY[0x28223BE20](v37);
        (*(v39 + 16))(v48 - v38);
        type metadata accessor for GalleryLoader();
        v40 = sub_25B0E3760();
        v42 = sub_25B04BE04(v40, v41, &v55);

        *(v35 + 4) = v42;
        _os_log_impl(&dword_25B03D000, v33, v34, "Refresher - %s - cancel:idle/finished…", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v36);
        MEMORY[0x25F8613E0](v36, -1, -1);
        MEMORY[0x25F8613E0](v35, -1, -1);
      }

      v43 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v44 = sub_25B0E3730();
      v45 = [v43 initWithDomain:v44 code:400 userInfo:0];

      swift_willThrow();
      *v53 = v45;
      return;
    }
  }

  v48[1] = a1[3];
  v48[2] = v20;
  v49 = v19;
  v50 = v18;
  v51 = (a1 + 2);
  v52 = v4;
  v53 = a1;
  v22 = [a1[4] allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31988, &unk_25B0E79F0);
  v23 = sub_25B0E37F0();

  if (v23 >> 62)
  {
    v24 = sub_25B0E3CC0();
    if (v24)
    {
      goto LABEL_15;
    }

LABEL_27:

    sub_25B094C08(v50, v49);
    v46 = v53;
    v53[5] = 0;
    *v46 = xmmword_25B0E7860;
    v47 = v51;
    *v51 = 0;
    v47[1] = 0;
    return;
  }

  v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v24)
  {
    goto LABEL_27;
  }

LABEL_15:
  if (v24 >= 1)
  {
    v25 = 0;
    do
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x25F860730](v25, v23);
      }

      else
      {
        v26 = *(v23 + 8 * v25 + 32);
        swift_unknownObjectRetain();
      }

      ++v25;
      v27 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v28 = sub_25B0E3730();
      v29 = [v27 initWithDomain:v28 code:200 userInfo:0];

      v30 = sub_25B0E22C0();
      [v26 refresher:v54 didFinishWithError:v30];
      swift_unknownObjectRelease();
    }

    while (v24 != v25);
    goto LABEL_27;
  }

  __break(1u);
}

unint64_t get_enum_tag_for_layout_string_15NanoFaceGallery0B17SnapshotRefresherC16InternalProgress33_35EB753405371E49E391841E1889FCEELLO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_25B08F64C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_25B08F69C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *result = 0;
      *(result + 8) = 2 * -a2;
      *(result + 16) = 0;
      *(result + 24) = 0;
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25B08F704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31980;
  if (!qword_27FA31980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31980);
  }

  return result;
}

void sub_25B08F758()
{
  if (qword_27FA30D08 != -1)
  {
    swift_once();
  }

  v1 = sub_25B0E2970();
  __swift_project_value_buffer(v1, qword_27FA31930);
  v2 = v0;
  v3 = sub_25B0E2950();
  v4 = sub_25B0E3A50();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14[0] = v6;
    *v5 = 136315138;
    v7 = __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR___NFGFaceSnapshotRefresher_loader], *&v2[OBJC_IVAR___NFGFaceSnapshotRefresher_loader + 24]);
    MEMORY[0x28223BE20](v7);
    (*(v9 + 16))(v14 - v8);
    type metadata accessor for GalleryLoader();
    v10 = sub_25B0E3760();
    v12 = sub_25B04BE04(v10, v11, v14);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_25B03D000, v3, v4, "Refresher - %s - finished…", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x25F8613E0](v6, -1, -1);
    MEMORY[0x25F8613E0](v5, -1, -1);
  }

  v13 = &v2[OBJC_IVAR___NFGFaceSnapshotRefresher_internalState];
  os_unfair_lock_lock(&v2[OBJC_IVAR___NFGFaceSnapshotRefresher_internalState]);
  sub_25B08F98C(v13 + 1, v2);
  os_unfair_lock_unlock(v13);
}

uint64_t sub_25B08F98C(uint64_t *a1, uint64_t a2)
{
  if (a1[5])
  {
    sub_25B0E39E0();
  }

  v4 = a1[1];
  if (v4 >> 62)
  {
    if (v4 >> 62 != 2)
    {
      goto LABEL_20;
    }

    if (v4 == 0x8000000000000000 && (a1[3] | a1[2] | *a1) == 0)
    {
      goto LABEL_20;
    }
  }

  v12 = a1[1];
  v13 = *a1;
  v6 = [a1[4] allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31988, &unk_25B0E79F0);
  v7 = sub_25B0E37F0();

  if (v7 >> 62)
  {
    v8 = sub_25B0E3CC0();
    if (v8)
    {
      goto LABEL_11;
    }

LABEL_18:

    sub_25B094C08(v13, v12);

    *a1 = xmmword_25B0E7870;
    a1[5] = 0;
    a1[2] = 0;
    a1[3] = 0;
    return result;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_18;
  }

LABEL_11:
  if (v8 >= 1)
  {
    for (i = 0; i != v8; ++i)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x25F860730](i, v7);
      }

      else
      {
        v10 = *(v7 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      [v10 refresher:a2 didFinishWithError:0];
      swift_unknownObjectRelease();
    }

    goto LABEL_18;
  }

  __break(1u);
LABEL_20:
  result = sub_25B0E3D00();
  __break(1u);
  return result;
}

uint64_t sub_25B08FBEC(uint64_t a1, uint64_t a2)
{
  v3[39] = a2;
  v3[40] = v2;
  v3[38] = a1;
  v3[41] = type metadata accessor for FacePlacement(0);
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B08FCCC, 0, 0);
}

uint64_t sub_25B08FCCC()
{
  sub_25B049F48(v0[40] + OBJC_IVAR___NFGFaceSnapshotRefresher_loader, (v0 + 14));
  v1 = sub_25B0E2730();
  v2 = [v1 device];

  if (v2)
  {
    v6 = type metadata accessor for LocalStore();
    v0[49] = v6;
    swift_allocObject();
    v7 = v2;
    v8 = sub_25B04C598(v7);

    v0[22] = v6;
    v0[23] = &off_286C59968;

    v0[19] = v8;
    v0[50] = __swift_project_boxed_opaque_existential_1(v0 + 19, v6);
    v0[51] = sub_25B0E2730();
    sub_25B0E3900();
    v0[52] = sub_25B0E38F0();
    v9 = sub_25B0E3850();
    v11 = v10;
    v3 = sub_25B08FE20;
    v4 = v9;
    v5 = v11;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

id sub_25B08FE20()
{
  v1 = v0[51];

  result = [v1 dailySnapshotKey];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  v4 = v0[51];
  v5 = sub_25B0E3740();
  v7 = v6;

  result = [v4 unsafeDailySnapshotKey];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = v0[51];
  v10 = sub_25B0E3740();
  v12 = v11;

  v0[34] = v5;
  v0[35] = v7;
  v0[36] = v10;
  v0[37] = v12;
  v15 = off_286C59970 + *off_286C59970;
  v13 = swift_task_alloc();
  v0[53] = v13;
  *v13 = v0;
  v13[1] = sub_25B08FFD8;
  v14 = v0[49];

  return (v15)(v0 + 8, v0 + 34, v14, &off_286C59968);
}

uint64_t sub_25B08FFD8()
{

  return MEMORY[0x2822009F8](sub_25B09010C, 0, 0);
}

uint64_t sub_25B09010C()
{
  v80 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 80);
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 32) = v2;
  *(v0 + 48) = *(v0 + 96);
  if (sub_25B090D74((v0 + 16), v1))
  {
    if (qword_27FA30D08 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 376);
    v4 = *(v0 + 384);
    v5 = *(v0 + 368);
    v6 = *(v0 + 312);
    v7 = sub_25B0E2970();
    __swift_project_value_buffer(v7, qword_27FA31930);
    sub_25B049F48(v0 + 112, v0 + 232);
    sub_25B0596E0(v6, v4);
    sub_25B0596E0(v6, v3);
    sub_25B0596E0(v6, v5);
    v8 = sub_25B0E2950();
    v9 = sub_25B0E3A50();
    v10 = os_log_type_enabled(v8, v9);
    v12 = *(v0 + 376);
    v11 = *(v0 + 384);
    v13 = *(v0 + 368);
    if (v10)
    {
      v75 = v9;
      v14 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v79[0] = v77;
      *v14 = 136315906;
      v15 = *(v0 + 256);
      __swift_project_boxed_opaque_existential_1((v0 + 232), v15);
      v16 = *(v15 - 8);
      v17 = swift_task_alloc();
      (*(v16 + 16))(v17);
      type metadata accessor for GalleryLoader();
      v18 = sub_25B0E3760();
      v20 = v19;

      __swift_destroy_boxed_opaque_existential_1((v0 + 232));
      v21 = sub_25B04BE04(v18, v20, v79);

      *(v14 + 4) = v21;
      *(v14 + 12) = 2080;
      v22 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
      v24 = v23;
      sub_25B0597A8(v11);
      v25 = sub_25B04BE04(v22, v24, v79);

      *(v14 + 14) = v25;
      *(v14 + 22) = 2080;
      v26 = FacePlacement.Location.description.getter();
      v28 = v27;
      sub_25B0597A8(v12);
      v29 = sub_25B04BE04(v26, v28, v79);

      *(v14 + 24) = v29;
      *(v14 + 32) = 2080;
      v30 = sub_25B0E2730();
      swift_getObjectType();

      v31 = sub_25B0E3FB0();
      v33 = v32;
      sub_25B0597A8(v13);
      v34 = sub_25B04BE04(v31, v33, v79);

      *(v14 + 34) = v34;
      _os_log_impl(&dword_25B03D000, v8, v75, "Refresher - %s - snapshotting %s @ %s (%s)…", v14, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x25F8613E0](v77, -1, -1);
      MEMORY[0x25F8613E0](v14, -1, -1);
    }

    else
    {

      sub_25B0597A8(v13);
      sub_25B0597A8(v12);
      sub_25B0597A8(v11);
      __swift_destroy_boxed_opaque_existential_1((v0 + 232));
    }

    v70 = *(v0 + 360);
    v71 = *(v0 + 320);
    sub_25B0596E0(*(v0 + 312), v70);
    type metadata accessor for FaceRequest(0);
    swift_allocObject();
    *(v0 + 432) = FaceRequest.init(placement:visible:)(v70, 0);
    v72 = *(*(v71 + OBJC_IVAR___NFGFaceSnapshotRefresher_queue) + 16);
    *(v0 + 440) = v72;

    return MEMORY[0x2822009F8](sub_25B0908FC, v72, 0);
  }

  else
  {
    if (qword_27FA30D08 != -1)
    {
      swift_once();
    }

    v35 = *(v0 + 344);
    v36 = *(v0 + 352);
    v37 = *(v0 + 336);
    v38 = *(v0 + 312);
    v39 = sub_25B0E2970();
    __swift_project_value_buffer(v39, qword_27FA31930);
    sub_25B049F48(v0 + 112, v0 + 192);
    sub_25B0596E0(v38, v36);
    sub_25B0596E0(v38, v35);
    sub_25B0596E0(v38, v37);
    v40 = sub_25B0E2950();
    v41 = sub_25B0E3A50();
    v42 = os_log_type_enabled(v40, v41);
    v44 = *(v0 + 344);
    v43 = *(v0 + 352);
    v45 = *(v0 + 336);
    if (v42)
    {
      v76 = v41;
      v46 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v79[0] = v78;
      *v46 = 136315906;
      v47 = *(v0 + 216);
      __swift_project_boxed_opaque_existential_1((v0 + 192), v47);
      v48 = *(v47 - 8);
      v49 = swift_task_alloc();
      (*(v48 + 16))(v49);
      type metadata accessor for GalleryLoader();
      v50 = sub_25B0E3760();
      v52 = v51;

      __swift_destroy_boxed_opaque_existential_1((v0 + 192));
      v53 = sub_25B04BE04(v50, v52, v79);

      *(v46 + 4) = v53;
      *(v46 + 12) = 2080;
      v54 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
      v56 = v55;
      sub_25B0597A8(v43);
      v57 = sub_25B04BE04(v54, v56, v79);

      *(v46 + 14) = v57;
      *(v46 + 22) = 2080;
      v58 = FacePlacement.Location.description.getter();
      v60 = v59;
      sub_25B0597A8(v44);
      v61 = sub_25B04BE04(v58, v60, v79);

      *(v46 + 24) = v61;
      *(v46 + 32) = 2080;
      v62 = sub_25B0E2730();
      swift_getObjectType();

      v63 = sub_25B0E3FB0();
      v65 = v64;
      sub_25B0597A8(v45);
      v66 = sub_25B04BE04(v63, v65, v79);

      *(v46 + 34) = v66;
      _os_log_impl(&dword_25B03D000, v40, v76, "Refresher - %s - skipping %s @ %s (%s)…", v46, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x25F8613E0](v78, -1, -1);
      MEMORY[0x25F8613E0](v46, -1, -1);
    }

    else
    {

      sub_25B0597A8(v45);
      sub_25B0597A8(v44);
      sub_25B0597A8(v43);
      v67 = __swift_destroy_boxed_opaque_existential_1((v0 + 192));
    }

    sub_25B095198(v67, v68, v69);
    swift_allocError();
    swift_willThrow();
    sub_25B058448(v0 + 16, &qword_27FA319B8, &qword_25B0E7A68);
    __swift_destroy_boxed_opaque_existential_1((v0 + 152));
    __swift_destroy_boxed_opaque_existential_1((v0 + 112));

    v73 = *(v0 + 8);

    return v73();
  }
}

uint64_t sub_25B0908FC()
{
  sub_25B053238(*(v0 + 432));

  return MEMORY[0x2822009F8](sub_25B090964, 0, 0);
}

uint64_t sub_25B090964()
{
  v1 = v0[54];
  v2 = v0[39];
  v3 = swift_task_alloc();
  v0[56] = v3;
  v3[2] = v1;
  v3[3] = v0 + 14;
  v3[4] = v2;
  v3[5] = v0 + 19;
  v4 = swift_task_alloc();
  v0[57] = v4;
  *v4 = v0;
  v4[1] = sub_25B090A74;
  v5 = v0[54];
  v6 = v0[38];

  return MEMORY[0x282200830](v6, &unk_25B0E7A78, v3, sub_25B087A58, v5, 0, 0, &type metadata for FaceRequest.Result);
}

uint64_t sub_25B090A74()
{
  *(*v1 + 464) = v0;

  if (v0)
  {
    v2 = sub_25B090C7C;
  }

  else
  {

    v2 = sub_25B090B90;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25B090B90()
{

  sub_25B058448((v0 + 2), &qword_27FA319B8, &qword_25B0E7A68);
  __swift_destroy_boxed_opaque_existential_1(v0 + 19);
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);

  v1 = v0[1];

  return v1();
}

uint64_t sub_25B090C7C()
{

  sub_25B058448((v0 + 2), &qword_27FA319B8, &qword_25B0E7A68);

  __swift_destroy_boxed_opaque_existential_1(v0 + 19);
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);

  v1 = v0[1];

  return v1();
}

uint64_t sub_25B090D74(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = sub_25B0E2440();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v4)
  {
    return 1;
  }

  if (*(a2 + OBJC_IVAR___NFGFaceSnapshotRefresher_refreshPolicy) != 1)
  {
    return 0;
  }

  v33 = v10;
  v13 = a1[2];
  v14 = objc_allocWithZone(MEMORY[0x277D2C030]);

  v34 = v6;
  v15 = v7;
  v16 = [v14 init];
  v17 = sub_25B0E2730();
  v18 = [v17 unsafeDailySnapshotKey];

  if (!v18)
  {
    v35[0] = v13;
    v35[1] = v5;

    sub_25B058448(a1, &qword_27FA319B8, &qword_25B0E7A68);
    sub_25B0952AC(v35);
    return 1;
  }

  v19 = sub_25B0E3740();
  v21 = v20;

  if (v19 == v13 && v21 == v5)
  {

    v22 = v34;
  }

  else
  {
    v24 = sub_25B0E3E30();

    v22 = v34;
    if ((v24 & 1) == 0)
    {

      sub_25B058448(a1, &qword_27FA319B8, &qword_25B0E7A68);
      return 1;
    }
  }

  v25 = sub_25B0E2730();
  v26 = [v25 isLibraryFace];

  if ((v26 & 1) == 0)
  {
    v27 = [v22 date];
    if (v27)
    {
      v28 = v27;
      sub_25B0E2430();

      v29 = sub_25B0E2410();
      (*(v9 + 8))(v12, v33);
    }

    else
    {
      v29 = 0;
    }

    [v16 setDate_];
  }

  v30 = sub_25B0E2730();
  v31 = v22;
  v32 = [v30 snapshotContext:v31 isStaleRelativeToContext:v16];

  sub_25B058448(a1, &qword_27FA319B8, &qword_25B0E7A68);
  return v32;
}

uint64_t sub_25B091088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[27] = a4;
  v5[28] = a5;
  v5[25] = a1;
  v5[26] = a3;
  v5[29] = type metadata accessor for FacePlacement(0);
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v6 = swift_task_alloc();
  v5[33] = v6;
  *v6 = v5;
  v6[1] = sub_25B091174;

  return FaceRequest.result.getter((v5 + 2));
}

uint64_t sub_25B091174()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_25B09197C;
  }

  else
  {
    v2 = sub_25B091288;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25B091288()
{
  v59 = v0;
  v2 = v0[2];
  v1 = v0[3];
  v0[35] = v2;
  v0[36] = v1;
  v53 = v1;
  v3 = v0[5];
  v57 = v0[4];
  v0[37] = v57;
  v0[38] = v3;
  v52 = v3;
  v54 = v0[6];
  v55 = v0[7];
  v0[39] = v54;
  v0[40] = v55;
  v4 = v0[8];
  v0[41] = v4;
  if (qword_27FA30D08 != -1)
  {
    swift_once();
  }

  v6 = v0[31];
  v5 = v0[32];
  v7 = v0[30];
  v9 = v0[26];
  v8 = v0[27];
  v10 = sub_25B0E2970();
  __swift_project_value_buffer(v10, qword_27FA31930);
  sub_25B049F48(v9, (v0 + 15));
  sub_25B0596E0(v8, v5);
  sub_25B0596E0(v8, v6);
  sub_25B0596E0(v8, v7);
  v11 = sub_25B0E2950();
  v12 = sub_25B0E3A50();
  v13 = os_log_type_enabled(v11, v12);
  v15 = v0[31];
  v14 = v0[32];
  v16 = v0[30];
  if (v13)
  {
    v48 = v12;
    v17 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v58 = v49;
    *v17 = 136315906;
    v18 = v0[18];
    __swift_project_boxed_opaque_existential_1(v0 + 15, v18);
    v50 = v2;
    v19 = *(v18 - 8);
    v20 = swift_task_alloc();
    v51 = v4;
    (*(v19 + 16))(v20);
    type metadata accessor for GalleryLoader();
    v21 = sub_25B0E3760();
    v23 = v22;

    __swift_destroy_boxed_opaque_existential_1(v0 + 15);
    v24 = sub_25B04BE04(v21, v23, &v58);

    *(v17 + 4) = v24;
    *(v17 + 12) = 2080;
    v25 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
    v27 = v26;
    sub_25B0597A8(v14);
    v28 = sub_25B04BE04(v25, v27, &v58);
    v4 = v51;

    *(v17 + 14) = v28;
    *(v17 + 22) = 2080;
    v29 = FacePlacement.Location.description.getter();
    v31 = v30;
    sub_25B0597A8(v15);
    v32 = sub_25B04BE04(v29, v31, &v58);

    *(v17 + 24) = v32;
    *(v17 + 32) = 2080;
    v33 = sub_25B0E2730();
    swift_getObjectType();

    v34 = sub_25B0E3FB0();
    v36 = v35;
    sub_25B0597A8(v16);
    v37 = sub_25B04BE04(v34, v36, &v58);
    v2 = v50;

    *(v17 + 34) = v37;
    _os_log_impl(&dword_25B03D000, v11, v48, "Refresher - %s - snapshotted %s @ %s (%s)…", v17, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x25F8613E0](v49, -1, -1);
    MEMORY[0x25F8613E0](v17, -1, -1);
  }

  else
  {

    sub_25B0597A8(v16);
    sub_25B0597A8(v15);
    sub_25B0597A8(v14);
    __swift_destroy_boxed_opaque_existential_1(v0 + 15);
  }

  v38 = v0[28];
  v39 = v38[3];
  v40 = v38[4];
  __swift_project_boxed_opaque_existential_1(v38, v39);
  v0[23] = &type metadata for FaceRequest.Result;
  v0[24] = &off_286C59F00;
  v41 = swift_allocObject();
  v0[20] = v41;
  v41[2] = v2;
  v41[3] = v53;
  v41[4] = v57;
  v41[5] = v52;
  v41[6] = v54;
  v41[7] = v55;
  v41[8] = v4;
  v42 = *(v40 + 16);

  v43 = v54;
  v44 = v55;
  v45 = v4;
  v56 = (v42 + *v42);
  v46 = swift_task_alloc();
  v0[42] = v46;
  *v46 = v0;
  v46[1] = sub_25B09179C;

  return (v56)(v0 + 9, v0 + 20, v39, v40);
}

uint64_t sub_25B09179C()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = sub_25B0919FC;
  }

  else
  {
    v4 = v2[13];
    v5 = v2[14];

    __swift_destroy_boxed_opaque_existential_1(v2 + 20);
    v3 = sub_25B0918E0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25B0918E0()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 200);
  v3 = *(v0 + 304);
  v4 = *(v0 + 320);
  *v2 = *(v0 + 280);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  *(v2 + 40) = v4;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_25B09197C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25B0919FC()
{
  v2 = v0[40];
  v1 = v0[41];
  v3 = v0[39];

  __swift_destroy_boxed_opaque_existential_1(v0 + 20);

  v4 = v0[1];

  return v4();
}

void sub_25B091AA8(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v62 = a2;
  v61 = type metadata accessor for FacePlacement(0);
  v9 = MEMORY[0x28223BE20](v61);
  v11 = &v56[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v56[-v13];
  MEMORY[0x28223BE20](v12);
  v16 = &v56[-v15];
  v17 = OBJC_IVAR___NFGFaceSnapshotRefresher_loader;
  if (qword_27FA30D08 != -1)
  {
    swift_once();
  }

  v18 = sub_25B0E2970();
  __swift_project_value_buffer(v18, qword_27FA31930);
  sub_25B049F48(v4 + v17, v64);
  sub_25B0596E0(a1, v16);
  sub_25B0596E0(a1, v14);
  sub_25B0596E0(a1, v11);
  v19 = sub_25B0E2950();
  v20 = sub_25B0E3A50();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v60 = a1;
    v22 = v21;
    v58 = swift_slowAlloc();
    v63 = v58;
    *v22 = 136316674;
    v23 = __swift_project_boxed_opaque_existential_1(v64, v64[3]);
    v57 = v20;
    MEMORY[0x28223BE20](v23);
    v59 = a4;
    (*(v25 + 16))(&v56[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    type metadata accessor for GalleryLoader();
    v26 = sub_25B0E3760();
    v28 = v27;
    __swift_destroy_boxed_opaque_existential_1(v64);
    v29 = sub_25B04BE04(v26, v28, &v63);

    *(v22 + 4) = v29;
    *(v22 + 12) = 2080;
    v30 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
    v32 = v31;
    sub_25B0597A8(v16);
    v33 = sub_25B04BE04(v30, v32, &v63);

    *(v22 + 14) = v33;
    *(v22 + 22) = 2080;
    v34 = FacePlacement.Location.description.getter();
    v36 = v35;
    sub_25B0597A8(v14);
    v37 = sub_25B04BE04(v34, v36, &v63);

    *(v22 + 24) = v37;
    *(v22 + 32) = 2080;
    v38 = sub_25B0E2730();
    swift_getObjectType();

    v39 = sub_25B0E3FB0();
    v41 = v40;
    sub_25B0597A8(v11);
    v42 = sub_25B04BE04(v39, v41, &v63);
    a4 = v59;

    *(v22 + 34) = v42;
    *(v22 + 42) = 1024;
    v43 = v62;
    *(v22 + 44) = v62 & 1;
    *(v22 + 48) = 2048;
    *(v22 + 50) = a3;
    *(v22 + 58) = 2048;
    *(v22 + 60) = a4;
    _os_log_impl(&dword_25B03D000, v19, v57, "Refresher - %s - notifying %s @ %s (%s) %{BOOL}d %ld of %ld left…", v22, 0x44u);
    v44 = v58;
    swift_arrayDestroy();
    MEMORY[0x25F8613E0](v44, -1, -1);
    MEMORY[0x25F8613E0](v22, -1, -1);
  }

  else
  {

    sub_25B0597A8(v11);
    sub_25B0597A8(v14);
    sub_25B0597A8(v16);
    __swift_destroy_boxed_opaque_existential_1(v64);
    v43 = v62;
  }

  v45 = v5 + OBJC_IVAR___NFGFaceSnapshotRefresher_internalState;
  os_unfair_lock_lock((v5 + OBJC_IVAR___NFGFaceSnapshotRefresher_internalState));
  v46 = sub_25B0E2730();
  v47 = __OFSUB__(a4, a3);
  v48 = a4 - a3;
  if (v47)
  {
    __break(1u);
  }

  else
  {
    v50 = *(v45 + 8);
    v49 = *(v45 + 16);
    *(v45 + 8) = v46;
    *(v45 + 16) = v43 & 1;
    *(v45 + 24) = v48;
    *(v45 + 32) = a3;
    sub_25B094C08(v50, v49);
    v62 = v45;
    v51 = [*(v45 + 40) allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31988, &unk_25B0E79F0);
    v45 = sub_25B0E37F0();

    if (!(v45 >> 62))
    {
      v52 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v52)
      {
        goto LABEL_9;
      }

LABEL_17:

      os_unfair_lock_unlock(v62);
      return;
    }
  }

  v52 = sub_25B0E3CC0();
  if (!v52)
  {
    goto LABEL_17;
  }

LABEL_9:
  if (v52 >= 1)
  {
    v53 = 0;
    do
    {
      if ((v45 & 0xC000000000000001) != 0)
      {
        v54 = MEMORY[0x25F860730](v53, v45);
      }

      else
      {
        v54 = *(v45 + 8 * v53 + 32);
        swift_unknownObjectRetain();
      }

      ++v53;
      v55 = sub_25B0E2730();
      [v54 refresher:v5 didRefreshFace:v55 refreshedCount:v48 remainingCount:a3];
      swift_unknownObjectRelease();
    }

    while (v52 != v53);
    goto LABEL_17;
  }

  __break(1u);
}

uint64_t sub_25B092038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 104) = a4;
  *(v5 + 112) = a5;
  return MEMORY[0x2822009F8](sub_25B092058, 0, 0);
}

uint64_t sub_25B092058()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 104), *(*(v0 + 104) + 24));
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_25B0920F8;

  return GalleryLoader.faces.getter();
}

uint64_t sub_25B0920F8(uint64_t a1)
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
    *(v4 + 128) = a1;

    return MEMORY[0x2822009F8](sub_25B09224C, 0, 0);
  }
}

uint64_t sub_25B09224C()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31998, &qword_25B0E7A28);
  v4 = swift_allocObject();
  v0[17] = v4;
  *(v4 + 24) = 0;
  *(v4 + 16) = v3;
  v5 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v0[18] = v7;
  v7[2] = v4;
  v7[3] = v5;
  v7[4] = v3;
  v8 = swift_allocObject();
  v0[19] = v8;
  v9 = swift_unknownObjectWeakLoadStrong();

  swift_unknownObjectWeakInit();

  v10 = swift_task_alloc();
  v0[20] = v10;
  v10[2] = v1;
  v10[3] = v2;
  v10[4] = v8;
  v10[5] = sub_25B094CD8;
  v10[6] = v7;
  v11 = swift_task_alloc();
  v0[21] = v11;
  *v11 = v0;
  v11[1] = sub_25B09244C;
  v12 = MEMORY[0x277D84F78] + 8;
  v13 = MEMORY[0x277D84F78] + 8;
  v14 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200600](v11, v12, v13, 0, 0, &unk_25B0E7A38, v10, v14);
}

uint64_t sub_25B09244C()
{

  return MEMORY[0x2822009F8](sub_25B0925A4, 0, 0);
}

uint64_t sub_25B0925A4()
{
  v18 = v0;
  if (qword_27FA30D08 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = sub_25B0E2970();
  __swift_project_value_buffer(v2, qword_27FA31930);
  sub_25B049F48(v1, (v0 + 2));
  v3 = sub_25B0E2950();
  v4 = sub_25B0E3A50();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315394;
    v7 = v0[5];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
    v8 = *(v7 - 8);
    swift_task_alloc();
    (*(v8 + 16))();
    type metadata accessor for GalleryLoader();
    v9 = sub_25B0E3760();
    v11 = v10;

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    v12 = sub_25B04BE04(v9, v11, &v17);

    *(v5 + 4) = v12;
    *(v5 + 12) = 1024;
    *(v5 + 14) = sub_25B0E39F0() & 1;
    _os_log_impl(&dword_25B03D000, v3, v4, "Refresher - %s - finished - cancelled? %{BOOL}d…", v5, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x25F8613E0](v6, -1, -1);
    MEMORY[0x25F8613E0](v5, -1, -1);

    if (sub_25B0E39F0())
    {
      goto LABEL_8;
    }
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    if (sub_25B0E39F0())
    {
      goto LABEL_8;
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    sub_25B08F758();

    goto LABEL_9;
  }

LABEL_8:

LABEL_9:
  v15 = v0[1];

  return v15();
}

uint64_t sub_25B09287C(uint64_t a1, uint64_t a2, os_unfair_lock_s *a3, uint64_t a4)
{
  swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  os_unfair_lock_lock(a3 + 6);
  sub_25B095300(&a3[4]);
  os_unfair_lock_unlock(a3 + 6);
}

void sub_25B092950(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v5 = *a1 - 1;
  if (__OFSUB__(*a1, 1))
  {
    __break(1u);
  }

  else
  {
    *a1 = v5;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      sub_25B091AA8(a3, (a4 & 1), v5, a5);
    }
  }
}

uint64_t sub_25B0929F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[31] = a6;
  v7[32] = a7;
  v7[29] = a4;
  v7[30] = a5;
  v7[27] = a2;
  v7[28] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  v7[33] = swift_task_alloc();
  v7[34] = swift_task_alloc();
  v8 = type metadata accessor for FacePlacement(0);
  v7[35] = v8;
  v9 = *(v8 - 8);
  v7[36] = v9;
  v7[37] = *(v9 + 64);
  v7[38] = swift_task_alloc();
  v7[39] = swift_task_alloc();
  v7[40] = swift_task_alloc();
  v7[41] = swift_task_alloc();
  v7[42] = swift_task_alloc();
  v7[43] = swift_task_alloc();
  v7[44] = swift_task_alloc();
  v7[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B092B58, 0, 0);
}

uint64_t sub_25B092B58()
{
  v116 = v0;
  v1 = *(v0 + 224);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 288);
    v4 = *(v0 + 296);
    v102 = *(v0 + 280);
    v5 = *(v3 + 80);
    v6 = v1 + ((v5 + 32) & ~v5);
    v107 = **(v0 + 216);
    swift_beginAccess();
    v105 = (v5 + 72) & ~v5;
    v103 = (v4 + v105 + 7) & 0xFFFFFFFFFFFFFFF8;
    v104 = *(v3 + 72);
    while (1)
    {
      v112 = v2;
      v111 = v6;
      sub_25B0596E0(v6, *(v0 + 360));
      if (qword_27FA30D08 != -1)
      {
        swift_once();
      }

      v30 = *(v0 + 352);
      v29 = *(v0 + 360);
      v32 = *(v0 + 336);
      v31 = *(v0 + 344);
      v33 = *(v0 + 232);
      v34 = sub_25B0E2970();
      __swift_project_value_buffer(v34, qword_27FA31930);
      sub_25B049F48(v33, v0 + 16);
      sub_25B0596E0(v29, v30);
      sub_25B0596E0(v29, v31);
      sub_25B0596E0(v29, v32);
      v35 = sub_25B0E2950();
      v36 = sub_25B0E3A50();
      v37 = os_log_type_enabled(v35, v36);
      v39 = *(v0 + 344);
      v38 = *(v0 + 352);
      if (v37)
      {
        v40 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        v113 = v109;
        *v40 = 136315906;
        v41 = *(v0 + 40);
        __swift_project_boxed_opaque_existential_1((v0 + 16), v41);
        v42 = *(v41 - 8);
        swift_task_alloc();
        (*(v42 + 16))();
        type metadata accessor for GalleryLoader();
        v43 = sub_25B0E3760();
        v45 = v44;

        __swift_destroy_boxed_opaque_existential_1((v0 + 16));
        v46 = sub_25B04BE04(v43, v45, &v113);

        *(v40 + 4) = v46;
        *(v40 + 12) = 2080;
        v47 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
        v49 = v48;
        sub_25B0597A8(v38);
        v50 = sub_25B04BE04(v47, v49, &v113);

        *(v40 + 14) = v50;
        *(v40 + 22) = 2080;
        v51 = (v39 + *(v102 + 20));
        v114 = 0;
        v115 = 0xE000000000000000;
        v52 = *v51;
        if (v52 > 2)
        {
          if (v52 == 3)
          {
            v53 = 0xE700000000000000;
            v54 = 0x7972656C6C6147;
          }

          else if (v52 == 4)
          {
            v53 = 0xE900000000000073;
            v54 = 0x65636146206C6C41;
          }

          else
          {
            v54 = 0x207972656C6C6147;
            v53 = 0xEE006C6961746544;
          }
        }

        else if (*v51)
        {
          if (v52 == 1)
          {
            v53 = 0xE700000000000000;
            v54 = 0x676E6972616853;
          }

          else
          {
            v53 = 0xE800000000000000;
            v54 = 0x736563614620794DLL;
          }
        }

        else
        {
          v53 = 0xE700000000000000;
          v54 = 0x66664F2D656E4FLL;
        }

        v57 = *(v0 + 336);
        v56 = *(v0 + 344);
        MEMORY[0x25F8602F0](v54, v53);

        MEMORY[0x25F8602F0](0x209286E220, 0xA500000000000000);
        type metadata accessor for FacePlacement.Location(0);
        sub_25B0E2540();
        sub_25B094FBC();
        v58 = sub_25B0E3E20();
        MEMORY[0x25F8602F0](v58);

        v59 = v114;
        v60 = v115;
        sub_25B0597A8(v56);
        v61 = sub_25B04BE04(v59, v60, &v113);

        *(v40 + 24) = v61;
        *(v40 + 32) = 2080;
        v62 = sub_25B0E2730();
        swift_getObjectType();

        v63 = sub_25B0E3FB0();
        v65 = v64;
        sub_25B0597A8(v57);
        v66 = sub_25B04BE04(v63, v65, &v113);

        *(v40 + 34) = v66;
        _os_log_impl(&dword_25B03D000, v35, v36, "Refresher - %s - adding %s @ %s (%s)…", v40, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x25F8613E0](v109, -1, -1);
        MEMORY[0x25F8613E0](v40, -1, -1);
      }

      else
      {
        v55 = *(v0 + 336);

        sub_25B0597A8(v55);
        sub_25B0597A8(v39);
        sub_25B0597A8(v38);
        __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      }

      v67 = *(v0 + 360);
      v68 = *(v0 + 328);
      v69 = *(v0 + 272);
      v70 = *(v0 + 256);
      v110 = *(v0 + 248);
      v71 = *(v0 + 232);
      v72 = sub_25B0E3940();
      v73 = *(v72 - 8);
      (*(v73 + 56))(v69, 1, 1, v72);
      v74 = swift_allocObject();
      Strong = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      sub_25B049F48(v71, v0 + 56);
      sub_25B0596E0(v67, v68);
      v76 = swift_allocObject();
      *(v76 + 16) = 0;
      v77 = (v76 + 16);
      *(v76 + 24) = 0;
      sub_25B03F164((v0 + 56), v76 + 32);
      sub_25B059744(v68, v76 + v105);
      v78 = (v76 + v103);
      *v78 = v110;
      v78[1] = v70;
      *(v76 + ((v103 + 23) & 0xFFFFFFFFFFFFFFF8)) = v74;

      if (swift_taskGroup_addPending())
      {
        break;
      }

      v85 = *(v0 + 360);
      v87 = *(v0 + 312);
      v86 = *(v0 + 320);
      v88 = *(v0 + 304);
      v89 = *(v0 + 272);
      v90 = *(v0 + 232);

      sub_25B058448(v89, &qword_27FA31990, &qword_25B0E6920);
      sub_25B049F48(v90, v0 + 96);
      sub_25B0596E0(v85, v86);
      sub_25B0596E0(v85, v87);
      sub_25B0596E0(v85, v88);
      v91 = sub_25B0E2950();
      v92 = sub_25B0E3A50();
      v93 = os_log_type_enabled(v91, v92);
      v95 = *(v0 + 312);
      v94 = *(v0 + 320);
      v96 = *(v0 + 304);
      if (v93)
      {
        v7 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v114 = v108;
        *v7 = 136315906;
        v8 = *(v0 + 120);
        __swift_project_boxed_opaque_existential_1((v0 + 96), v8);
        v106 = v92;
        v9 = *(v8 - 8);
        swift_task_alloc();
        (*(v9 + 16))();
        type metadata accessor for GalleryLoader();
        v10 = sub_25B0E3760();
        v12 = v11;

        __swift_destroy_boxed_opaque_existential_1((v0 + 96));
        v13 = sub_25B04BE04(v10, v12, &v114);

        *(v7 + 4) = v13;
        *(v7 + 12) = 2080;
        v14 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
        v16 = v15;
        sub_25B0597A8(v94);
        v17 = sub_25B04BE04(v14, v16, &v114);

        *(v7 + 14) = v17;
        *(v7 + 22) = 2080;
        v18 = FacePlacement.Location.description.getter();
        v20 = v19;
        sub_25B0597A8(v95);
        v21 = sub_25B04BE04(v18, v20, &v114);

        *(v7 + 24) = v21;
        *(v7 + 32) = 2080;
        v22 = sub_25B0E2730();
        swift_getObjectType();

        v23 = sub_25B0E3FB0();
        v25 = v24;
        sub_25B0597A8(v96);
        v26 = sub_25B04BE04(v23, v25, &v114);

        *(v7 + 34) = v26;
        _os_log_impl(&dword_25B03D000, v91, v106, "Refresher - %s - never added %s @ %s (%s)…", v7, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x25F8613E0](v108, -1, -1);
        MEMORY[0x25F8613E0](v7, -1, -1);
      }

      else
      {

        sub_25B0597A8(v96);
        sub_25B0597A8(v95);
        sub_25B0597A8(v94);
        __swift_destroy_boxed_opaque_existential_1((v0 + 96));
      }

      v27 = v112;
      v28 = v111;
      (*(v0 + 248))(*(v0 + 360), 1);
LABEL_5:
      sub_25B0597A8(*(v0 + 360));
      v6 = v28 + v104;
      v2 = v27 - 1;
      if (!v2)
      {
        goto LABEL_33;
      }
    }

    v79 = *(v0 + 264);
    sub_25B058198(*(v0 + 272), v79);
    v80 = (*(v73 + 48))(v79, 1, v72);
    v81 = *(v0 + 264);
    if (v80 == 1)
    {
      sub_25B058448(*(v0 + 264), &qword_27FA31990, &qword_25B0E6920);
      if (*v77)
      {
LABEL_25:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v82 = sub_25B0E3850();
        v84 = v83;
        swift_unknownObjectRelease();
LABEL_30:
        v97 = swift_allocObject();
        *(v97 + 16) = &unk_25B0E7A48;
        *(v97 + 24) = v76;
        v98 = v84 | v82;
        if (v84 | v82)
        {
          v98 = v0 + 136;
          *(v0 + 136) = 0;
          *(v0 + 144) = 0;
          *(v0 + 152) = v82;
          *(v0 + 160) = v84;
        }

        v27 = v112;
        v99 = *(v0 + 272);
        *(v0 + 192) = 1;
        *(v0 + 200) = v98;
        *(v0 + 208) = v107;
        swift_task_create();

        sub_25B058448(v99, &qword_27FA31990, &qword_25B0E6920);
        v28 = v111;
        goto LABEL_5;
      }
    }

    else
    {
      sub_25B0E3930();
      (*(v73 + 8))(v81, v72);
      if (*v77)
      {
        goto LABEL_25;
      }
    }

    v82 = 0;
    v84 = 0;
    goto LABEL_30;
  }

LABEL_33:

  v100 = *(v0 + 8);

  return v100();
}

uint64_t sub_25B0936E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[30] = a7;
  v8[31] = a8;
  v8[28] = a5;
  v8[29] = a6;
  v8[27] = a4;
  v8[32] = type metadata accessor for FacePlacement(0);
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v8[35] = swift_task_alloc();
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  v8[38] = swift_task_alloc();
  v8[39] = swift_task_alloc();
  v8[40] = swift_task_alloc();
  v8[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B0937E4, 0, 0);
}

uint64_t sub_25B0937E4(uint64_t a1)
{
  v79 = v1;
  v2 = sub_25B0E39F0();
  if (v2)
  {
    if (qword_27FA30D08 != -1)
    {
      swift_once();
    }

    v4 = *(v1 + 296);
    v3 = *(v1 + 304);
    v5 = *(v1 + 288);
    v7 = *(v1 + 216);
    v6 = *(v1 + 224);
    v8 = sub_25B0E2970();
    __swift_project_value_buffer(v8, qword_27FA31930);
    sub_25B049F48(v7, v1 + 152);
    sub_25B0596E0(v6, v3);
    sub_25B0596E0(v6, v4);
    sub_25B0596E0(v6, v5);
    v9 = sub_25B0E2950();
    v10 = sub_25B0E3A50();
    v11 = os_log_type_enabled(v9, v10);
    v13 = *(v1 + 296);
    v12 = *(v1 + 304);
    v14 = *(v1 + 288);
    if (v11)
    {
      v74 = v10;
      v15 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v78 = v75;
      *v15 = 136315906;
      v16 = *(v1 + 176);
      __swift_project_boxed_opaque_existential_1((v1 + 152), v16);
      v76 = v2;
      v17 = *(v16 - 8);
      v18 = swift_task_alloc();
      (*(v17 + 16))(v18);
      type metadata accessor for GalleryLoader();
      v19 = sub_25B0E3760();
      v21 = v20;

      __swift_destroy_boxed_opaque_existential_1((v1 + 152));
      v22 = sub_25B04BE04(v19, v21, &v78);

      *(v15 + 4) = v22;
      *(v15 + 12) = 2080;
      v23 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
      v25 = v24;
      sub_25B0597A8(v12);
      v26 = sub_25B04BE04(v23, v25, &v78);

      *(v15 + 14) = v26;
      *(v15 + 22) = 2080;
      v27 = FacePlacement.Location.description.getter();
      v29 = v28;
      sub_25B0597A8(v13);
      v30 = sub_25B04BE04(v27, v29, &v78);

      *(v15 + 24) = v30;
      *(v15 + 32) = 2080;
      v31 = sub_25B0E2730();
      swift_getObjectType();

      v32 = sub_25B0E3FB0();
      v34 = v33;
      sub_25B0597A8(v14);
      v35 = sub_25B04BE04(v32, v34, &v78);
      v2 = v76;

      *(v15 + 34) = v35;
      v36 = "Refresher - %s - cancelled %s @ %s (%s)…";
LABEL_15:
      _os_log_impl(&dword_25B03D000, v9, v74, v36, v15, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x25F8613E0](v75, -1, -1);
      MEMORY[0x25F8613E0](v15, -1, -1);

LABEL_18:
      (*(v1 + 232))(*(v1 + 224), v2 & 1);

      v73 = *(v1 + 8);

      return v73();
    }

    sub_25B0597A8(v14);
    sub_25B0597A8(v13);
    sub_25B0597A8(v12);
    v41 = (v1 + 152);
    goto LABEL_17;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v1 + 336) = Strong;
  if (!Strong)
  {
    if (qword_27FA30D08 != -1)
    {
      swift_once();
    }

    v43 = *(v1 + 320);
    v42 = *(v1 + 328);
    v44 = *(v1 + 312);
    v46 = *(v1 + 216);
    v45 = *(v1 + 224);
    v47 = sub_25B0E2970();
    __swift_project_value_buffer(v47, qword_27FA31930);
    sub_25B049F48(v46, v1 + 112);
    sub_25B0596E0(v45, v42);
    sub_25B0596E0(v45, v43);
    sub_25B0596E0(v45, v44);
    v9 = sub_25B0E2950();
    v48 = sub_25B0E3A50();
    v49 = os_log_type_enabled(v9, v48);
    v51 = *(v1 + 320);
    v50 = *(v1 + 328);
    v52 = *(v1 + 312);
    if (v49)
    {
      v74 = v48;
      v15 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v78 = v75;
      *v15 = 136315906;
      v53 = *(v1 + 136);
      __swift_project_boxed_opaque_existential_1((v1 + 112), v53);
      v77 = v2;
      v54 = *(v53 - 8);
      v55 = swift_task_alloc();
      (*(v54 + 16))(v55);
      type metadata accessor for GalleryLoader();
      v56 = sub_25B0E3760();
      v58 = v57;

      __swift_destroy_boxed_opaque_existential_1((v1 + 112));
      v59 = sub_25B04BE04(v56, v58, &v78);

      *(v15 + 4) = v59;
      *(v15 + 12) = 2080;
      v60 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
      v62 = v61;
      sub_25B0597A8(v50);
      v63 = sub_25B04BE04(v60, v62, &v78);

      *(v15 + 14) = v63;
      *(v15 + 22) = 2080;
      v64 = FacePlacement.Location.description.getter();
      v66 = v65;
      sub_25B0597A8(v51);
      v67 = sub_25B04BE04(v64, v66, &v78);

      *(v15 + 24) = v67;
      *(v15 + 32) = 2080;
      v2 = v77;
      v68 = sub_25B0E2730();
      swift_getObjectType();

      v69 = sub_25B0E3FB0();
      v71 = v70;
      sub_25B0597A8(v52);
      v72 = sub_25B04BE04(v69, v71, &v78);

      *(v15 + 34) = v72;
      v36 = "Refresher - %s - refresh done %s @ %s (%s)…";
      goto LABEL_15;
    }

    sub_25B0597A8(v52);
    sub_25B0597A8(v51);
    sub_25B0597A8(v50);
    v41 = (v1 + 112);
LABEL_17:
    __swift_destroy_boxed_opaque_existential_1(v41);
    goto LABEL_18;
  }

  v38 = swift_task_alloc();
  *(v1 + 344) = v38;
  *v38 = v1;
  v38[1] = sub_25B093F78;
  v39 = *(v1 + 224);

  return sub_25B08FBEC(v1 + 16, v39);
}

uint64_t sub_25B093F78()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = sub_25B0944C8;
  }

  else
  {
    v4 = v2[42];
    v5 = v2[6];
    v7 = v2[7];
    v6 = v2[8];

    v3 = sub_25B0940C8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25B0940C8()
{
  v38 = v0;
  if (qword_27FA30D08 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 320);
  v2 = *(v0 + 328);
  v3 = *(v0 + 312);
  v5 = *(v0 + 216);
  v4 = *(v0 + 224);
  v6 = sub_25B0E2970();
  __swift_project_value_buffer(v6, qword_27FA31930);
  sub_25B049F48(v5, v0 + 112);
  sub_25B0596E0(v4, v2);
  sub_25B0596E0(v4, v1);
  sub_25B0596E0(v4, v3);
  v7 = sub_25B0E2950();
  v8 = sub_25B0E3A50();
  v9 = os_log_type_enabled(v7, v8);
  v11 = *(v0 + 320);
  v10 = *(v0 + 328);
  v12 = *(v0 + 312);
  if (v9)
  {
    v35 = v8;
    v13 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = v36;
    *v13 = 136315906;
    v14 = *(v0 + 136);
    __swift_project_boxed_opaque_existential_1((v0 + 112), v14);
    v15 = *(v14 - 8);
    swift_task_alloc();
    (*(v15 + 16))();
    type metadata accessor for GalleryLoader();
    v16 = sub_25B0E3760();
    v18 = v17;

    __swift_destroy_boxed_opaque_existential_1((v0 + 112));
    v19 = sub_25B04BE04(v16, v18, &v37);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
    v22 = v21;
    sub_25B0597A8(v10);
    v23 = sub_25B04BE04(v20, v22, &v37);

    *(v13 + 14) = v23;
    *(v13 + 22) = 2080;
    v24 = FacePlacement.Location.description.getter();
    v26 = v25;
    sub_25B0597A8(v11);
    v27 = sub_25B04BE04(v24, v26, &v37);

    *(v13 + 24) = v27;
    *(v13 + 32) = 2080;
    v28 = sub_25B0E2730();
    swift_getObjectType();

    v29 = sub_25B0E3FB0();
    v31 = v30;
    sub_25B0597A8(v12);
    v32 = sub_25B04BE04(v29, v31, &v37);

    *(v13 + 34) = v32;
    _os_log_impl(&dword_25B03D000, v7, v35, "Refresher - %s - refresh done %s @ %s (%s)…", v13, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x25F8613E0](v36, -1, -1);
    MEMORY[0x25F8613E0](v13, -1, -1);
  }

  else
  {

    sub_25B0597A8(v12);
    sub_25B0597A8(v11);
    sub_25B0597A8(v10);
    __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  }

  (*(v0 + 232))(*(v0 + 224), 0);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_25B0944C8()
{
  v46 = v0;

  if (qword_27FA30D08 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 352);
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);
  v4 = *(v0 + 264);
  v6 = *(v0 + 216);
  v5 = *(v0 + 224);
  v7 = sub_25B0E2970();
  __swift_project_value_buffer(v7, qword_27FA31930);
  sub_25B049F48(v6, v0 + 72);
  sub_25B0596E0(v5, v3);
  sub_25B0596E0(v5, v2);
  sub_25B0596E0(v5, v4);
  v8 = v1;
  v9 = sub_25B0E2950();
  v10 = sub_25B0E3A50();

  if (os_log_type_enabled(v9, v10))
  {
    v43 = *(v0 + 352);
    v12 = *(v0 + 272);
    v11 = *(v0 + 280);
    v41 = *(v0 + 264);
    v13 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v45 = v44;
    *v13 = 136316162;
    v14 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 72), v14);
    v15 = *(v14 - 8);
    swift_task_alloc();
    (*(v15 + 16))();
    type metadata accessor for GalleryLoader();
    v16 = sub_25B0E3760();
    v18 = v17;

    __swift_destroy_boxed_opaque_existential_1((v0 + 72));
    v19 = sub_25B04BE04(v16, v18, &v45);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
    v22 = v21;
    sub_25B0597A8(v11);
    v23 = sub_25B04BE04(v20, v22, &v45);

    *(v13 + 14) = v23;
    *(v13 + 22) = 2080;
    v24 = FacePlacement.Location.description.getter();
    v26 = v25;
    sub_25B0597A8(v12);
    v27 = sub_25B04BE04(v24, v26, &v45);

    *(v13 + 24) = v27;
    *(v13 + 32) = 2080;
    v28 = sub_25B0E2730();
    swift_getObjectType();

    v29 = sub_25B0E3FB0();
    v31 = v30;
    sub_25B0597A8(v41);
    v32 = sub_25B04BE04(v29, v31, &v45);

    *(v13 + 34) = v32;
    *(v13 + 42) = 2112;
    v33 = v43;
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 44) = v34;
    *v42 = v34;
    _os_log_impl(&dword_25B03D000, v9, v10, "Refresher - %s - failed %s @ %s (%s) %@…", v13, 0x34u);
    sub_25B058448(v42, &unk_27FA31850, &qword_25B0E74B0);
    MEMORY[0x25F8613E0](v42, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x25F8613E0](v44, -1, -1);
    MEMORY[0x25F8613E0](v13, -1, -1);
  }

  else
  {
    v36 = *(v0 + 272);
    v35 = *(v0 + 280);
    v37 = *(v0 + 264);

    sub_25B0597A8(v37);
    sub_25B0597A8(v36);
    sub_25B0597A8(v35);
    __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  }

  v38 = *(v0 + 352);
  (*(v0 + 232))(*(v0 + 224), 1);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_25B094958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_25B058198(a3, v25 - v10);
  v12 = sub_25B0E3940();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_25B058448(v11, &qword_27FA31990, &qword_25B0E6920);
  }

  else
  {
    sub_25B0E3930();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_25B0E3850();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_25B0E3770() + 32;
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

void sub_25B094C08(id a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
  }
}

uint64_t sub_25B094C18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25B0498DC;

  return sub_25B092038(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_25B094CE4(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_25B05859C;

  return sub_25B0929F0(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_25B094DBC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for FacePlacement(0) - 8);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = (v1 + v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_25B05859C;

  return sub_25B0936E8(a1, v9, v10, v1 + 32, v1 + v6, v12, v13, v14);
}

uint64_t sub_25B094F04(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25B05859C;

  return sub_25B065840(a1, v4);
}

unint64_t sub_25B094FBC()
{
  result = qword_27FA319A0;
  if (!qword_27FA319A0)
  {
    sub_25B0E2540();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA319A0);
  }

  return result;
}

uint64_t sub_25B095014(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 >> 62)
  {
    if (a2 >> 62 == 1)
    {
      if (a6 >> 62 == 1)
      {
        return (a5 ^ a1 ^ 1) & 1;
      }

      return 0;
    }

    v16 = a4 | a3;
    if (a2 != 0x8000000000000000 || v16 | a1)
    {
      if (a2 == 0x8000000000000000 && a1 == 1 && !v16)
      {
        if (a6 >> 62 != 2 || a5 != 1 || a6 != 0x8000000000000000 || a8 | a7)
        {
          return 0;
        }
      }

      else if (a6 >> 62 != 2 || a5 != 2 || a6 != 0x8000000000000000 || a8 | a7)
      {
        return 0;
      }
    }

    else if (a6 >> 62 != 2 || a6 != 0x8000000000000000 || a8 | a7 | a5)
    {
      return 0;
    }

    return 1;
  }

  if (a6 >> 62)
  {
    return 0;
  }

  v11 = a6;
  v12 = a2;
  sub_25B0954F8();
  v15 = sub_25B0E3AF0() & ~(v11 ^ v12) & (a3 == a7);
  if (a4 != a8)
  {
    LOBYTE(v15) = 0;
  }

  return v15 & 1;
}

unint64_t sub_25B095198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA319B0;
  if (!qword_27FA319B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA319B0);
  }

  return result;
}

uint64_t sub_25B0951EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25B0498DC;

  return sub_25B091088(a1, v4, v5, v7, v6);
}

uint64_t sub_25B095364(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_25B0953B4(uint64_t result, int a2, int a3)
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
      *result = 0;
      *(result + 8) = 2 * -a2;
      *(result + 16) = 0;
      *(result + 24) = 0;
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

void *sub_25B09540C(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    result[1] = result[1] & 1 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2);
    result[1] = 0x8000000000000000;
    result[2] = 0;
    result[3] = 0;
  }

  return result;
}

unint64_t sub_25B09544C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA319C0;
  if (!qword_27FA319C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA319C0);
  }

  return result;
}

unint64_t sub_25B0954A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA319C8;
  if (!qword_27FA319C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA319C8);
  }

  return result;
}

unint64_t sub_25B0954F8()
{
  result = qword_27FA319D0;
  if (!qword_27FA319D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FA319D0);
  }

  return result;
}

uint64_t sub_25B095544(uint64_t *a1, int a2)
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

uint64_t sub_25B09558C(uint64_t result, int a2, int a3)
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

unint64_t sub_25B0955E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA319D8;
  if (!qword_27FA319D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA319D8);
  }

  return result;
}

uint64_t WatchGallery.__allocating_init(device:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t WatchGallery.groups.getter(uint64_t a1, uint64_t a2)
{
  v3[3] = v2;
  v3[4] = sub_25B0E3900();
  v3[5] = sub_25B0E38F0();
  v5 = sub_25B0E3850();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x2822009F8](sub_25B095704, v5, v4);
}

uint64_t sub_25B095704()
{
  v1 = *(*(v0 + 24) + 16);
  type metadata accessor for GalleryCollectionLoader();
  v2 = swift_allocObject();
  *(v0 + 64) = v2;
  v3 = v1;
  swift_defaultActor_initialize();
  *(v2 + 112) = v3;

  return MEMORY[0x2822009F8](sub_25B09579C, v2, 0);
}

uint64_t sub_25B09579C()
{
  v0[9] = sub_25B095C30();
  v1 = v0[6];
  v2 = v0[7];

  return MEMORY[0x2822009F8](sub_25B095804, v1, v2);
}

uint64_t sub_25B095804()
{
  v1 = v0[9];
  v2 = *(v1 + 16);
  if (v2)
  {
    v13 = MEMORY[0x277D84F90];
    sub_25B0E3C50();
    v3 = (v1 + 32);
    do
    {
      v4 = *v3;
      sub_25B0E38F0();
      sub_25B0E3850();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      sub_25B0E3C30();
      sub_25B0E3C60();
      sub_25B0E3C70();
      sub_25B0E3C40();
      ++v3;
      --v2;
    }

    while (v2);

    v5 = v13;
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  v0[10] = v5;
  v6 = sub_25B0E2830();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA319E0, &qword_25B0E7CC8);
  v8 = sub_25B0E38F0();
  v0[11] = v8;
  v9 = swift_task_alloc();
  v0[12] = v9;
  *(v9 + 16) = v5;
  v10 = swift_task_alloc();
  v0[13] = v10;
  *v10 = v0;
  v10[1] = sub_25B095A3C;
  v11 = MEMORY[0x277D85700];

  return MEMORY[0x282200600](v0 + 2, v6, v7, v8, v11, &unk_25B0E7CD8, v9, v6);
}

uint64_t sub_25B095A3C()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_25B095BC0, v3, v2);
}

uint64_t sub_25B095BC0()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_25B095C30()
{
  v1 = objc_opt_self();
  v2 = *(v0 + 112);
  v3 = [v1 galleryCollectionsForDevice_];
  v4 = MEMORY[0x277D84F90];
  if (!v3)
  {
    return v4;
  }

  v5 = v3;
  sub_25B046E60(0, &unk_27FA31A00, 0x277D2C058);
  v6 = sub_25B0E37F0();

  v7 = [objc_opt_self() sharedManager];
  v13[4] = nullsub_1;
  v13[5] = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_25B095E4C;
  v13[3] = &block_descriptor_0;
  v8 = _Block_copy(v13);
  [v7 enumerateFaceBundlesOnDevice:v2 withBlock:v8];
  _Block_release(v8);

  if (!(v6 >> 62))
  {
    v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  v9 = sub_25B0E3CC0();
  if (!v9)
  {
LABEL_12:

    return v4;
  }

LABEL_4:
  v13[0] = v4;
  result = sub_25B0E3C50();
  if ((v9 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        MEMORY[0x25F860730](v11, v6);
      }

      else
      {
        v12 = *(v6 + 8 * v11 + 32);
      }

      ++v11;
      sub_25B0E3C30();
      sub_25B0E3C60();
      sub_25B0E3C70();
      sub_25B0E3C40();
    }

    while (v9 != v11);

    return v13[0];
  }

  __break(1u);
  return result;
}

void sub_25B095E4C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_25B095EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v4 = sub_25B0E2830();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA319E8, &qword_25B0E7D60);
  v3[17] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA319F0, &qword_25B0E7D68);
  v3[18] = v5;
  v3[19] = *(v5 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = sub_25B0E3900();
  v3[22] = sub_25B0E38F0();
  v7 = sub_25B0E3850();
  v3[23] = v7;
  v3[24] = v6;

  return MEMORY[0x2822009F8](sub_25B0960CC, v7, v6);
}

uint64_t sub_25B0960CC()
{
  v1 = *(v0 + 88);
  if (v1 >> 62)
  {
LABEL_27:
    v2 = sub_25B0E3CC0();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v44 = (v0 + 16);
      v45 = v2;
      v47 = v1 & 0xFFFFFFFFFFFFFF8;
      v48 = v1 & 0xC000000000000001;
      v46 = *(v0 + 88) + 32;
      do
      {
        if (v48)
        {
          v6 = MEMORY[0x25F860730](v3, *(v0 + 88));
        }

        else
        {
          if (v3 >= *(v47 + 16))
          {
            goto LABEL_26;
          }

          v6 = *(v46 + 8 * v3);
        }

        v1 = v6;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        type metadata accessor for WatchGalleryCollectionLoader();
        v7 = swift_allocObject();
        v8 = objc_allocWithZone(type metadata accessor for WatchGalleryCollectionObserver());
        v9 = v1;
        v10 = [v8 init];
        v7[8] = v10;
        v7[2] = v9;
        v11 = v9;
        [v11 setDelegate_];
        v12 = [v11 title];
        if (!v12)
        {
          __break(1u);
          return MEMORY[0x2822002E8](v12, v13, v14, v15);
        }

        v16 = v12;
        v17 = sub_25B0E3740();
        v19 = v18;

        v7[3] = v17;
        v7[4] = v19;
        v20 = [v11 descriptionText];
        if (v20)
        {
          v21 = v20;
          v22 = sub_25B0E3740();
          v24 = v23;
        }

        else
        {
          v22 = 0;
          v24 = 0;
        }

        v7[5] = v22;
        v7[6] = v24;
        v25 = [v11 priorities];
        v49 = v3 + 1;
        v50 = v3;
        if (v25)
        {
          v26 = v25;
          sub_25B046E60(0, &qword_27FA312B0, 0x277CCABB0);
          sub_25B098874();
          v27 = sub_25B0E36A0();
        }

        else
        {
          v27 = MEMORY[0x277D84F98];
        }

        v29 = *(v0 + 120);
        v28 = *(v0 + 128);
        v7[7] = v27;
        v30 = sub_25B0E3940();
        v31 = *(v30 - 8);
        (*(v31 + 56))(v28, 1, 1, v30);
        v32 = swift_allocObject();
        v32[2] = 0;
        v33 = v32 + 2;
        v32[3] = 0;
        v32[4] = v7;
        v32[5] = v50;
        sub_25B058198(v28, v29);
        v34 = (*(v31 + 48))(v29, 1, v30);

        v35 = *(v0 + 120);
        if (v34 == 1)
        {
          sub_25B098754(*(v0 + 120));
          if (!*v33)
          {
            goto LABEL_21;
          }
        }

        else
        {
          sub_25B0E3930();
          (*(v31 + 8))(v35, v30);
          if (!*v33)
          {
LABEL_21:
            v36 = 0;
            v38 = 0;
            goto LABEL_22;
          }
        }

        swift_getObjectType();
        swift_unknownObjectRetain();
        v36 = sub_25B0E3850();
        v38 = v37;
        swift_unknownObjectRelease();
LABEL_22:
        v39 = **(v0 + 80);
        v40 = swift_allocObject();
        *(v40 + 16) = &unk_25B0E7D78;
        *(v40 + 24) = v32;

        if (v38 | v36)
        {
          v4 = v44;
          *v44 = 0;
          v44[1] = 0;
          *(v0 + 32) = v36;
          *(v0 + 40) = v38;
        }

        else
        {
          v4 = 0;
        }

        v5 = *(v0 + 128);
        *(v0 + 48) = 1;
        *(v0 + 56) = v4;
        *(v0 + 64) = v39;
        v1 = swift_task_create();

        sub_25B098754(v5);
        v3 = v50 + 1;
      }

      while (v49 != v45);
    }
  }

  sub_25B0E3890();
  *(v0 + 200) = MEMORY[0x277D84F90];
  v41 = sub_25B0E38F0();
  *(v0 + 208) = v41;
  v42 = swift_task_alloc();
  *(v0 + 216) = v42;
  *v42 = v0;
  v42[1] = sub_25B0965CC;
  v12 = *(v0 + 136);
  v15 = *(v0 + 144);
  v14 = MEMORY[0x277D85700];
  v13 = v41;

  return MEMORY[0x2822002E8](v12, v13, v14, v15);
}

uint64_t sub_25B0965CC()
{
  v1 = *v0;

  v2 = *(v1 + 192);
  v3 = *(v1 + 184);

  return MEMORY[0x2822009F8](sub_25B096710, v3, v2);
}

uint64_t sub_25B096710()
{
  v23 = v0;
  v1 = v0[17];
  v2 = v0[12];
  v3 = v0[13];
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[25];
  if (v4 == 1)
  {
    (*(v0[19] + 8))(v0[20], v0[18]);

    v22 = v5;

    sub_25B096EB4(&v22);
    v19 = v0[9];

    *v19 = v22;

    v20 = v0[1];

    return v20();
  }

  else
  {
    v6 = *(v3 + 32);
    v6(v0[14], v1, v2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = v0[25];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_25B089CC0(0, *(v8 + 2) + 1, 1, v0[25]);
    }

    v10 = *(v8 + 2);
    v9 = *(v8 + 3);
    if (v10 >= v9 >> 1)
    {
      v8 = sub_25B089CC0((v9 > 1), v10 + 1, 1, v8);
    }

    v12 = v0[13];
    v11 = v0[14];
    v13 = v0[12];
    *(v8 + 2) = v10 + 1;
    v6(&v8[((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v10], v11, v13);
    v0[25] = v8;
    v14 = sub_25B0E38F0();
    v0[26] = v14;
    v15 = swift_task_alloc();
    v0[27] = v15;
    *v15 = v0;
    v15[1] = sub_25B0965CC;
    v16 = v0[17];
    v17 = v0[18];
    v18 = MEMORY[0x277D85700];

    return MEMORY[0x2822002E8](v16, v14, v18, v17);
  }
}

uint64_t sub_25B0969C0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25B05859C;

  return sub_25B095EEC(a1, a2, v6);
}

uint64_t sub_25B096A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = sub_25B0E2750();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = swift_task_alloc();
  v5[8] = v7;
  *v7 = v5;
  v7[1] = sub_25B096B64;

  return sub_25B0988F4();
}

uint64_t sub_25B096B64(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](sub_25B096C64, 0, 0);
}

uint64_t sub_25B096C64()
{
  if (*(v0[3] + 48) || (v1 = v0[9], !*(v1 + 16)))
  {
  }

  else
  {
    v2 = v0[6];
    v3 = v0[7];
    v4 = v0[5];
    (*(v2 + 16))(v3, v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v4);

    v5 = sub_25B0E2730();
    (*(v2 + 8))(v3, v4);
    v6 = [v5 faceDescription];

    sub_25B0E3740();
  }

  sub_25B0E27F0();

  v7 = v0[1];

  return v7();
}

uint64_t WatchGallery.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_25B096EB4(uint64_t *a1)
{
  v2 = *(sub_25B0E2830() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_25B0D40CC(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_25B096F5C(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_25B096F5C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25B0E3E10();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_25B0E2830();
        v6 = sub_25B0E3820();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_25B0E2830() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_25B097390(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_25B097088(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25B097088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_25B0E2830();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v47 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v54 = &v37 - v13;
  result = MEMORY[0x28223BE20](v12);
  v53 = &v37 - v15;
  v39 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = sub_25B0E3900();
    v19 = *(v9 + 16);
    v18 = v9 + 16;
    v50 = v19;
    v51 = v17;
    v20 = *(v18 + 56);
    v48 = v8;
    v49 = (v18 - 8);
    v52 = v18;
    v21 = v16 + v20 * (a3 - 1);
    v44 = -v20;
    v45 = (v18 + 16);
    v22 = a1 - a3;
    v46 = v16;
    v38 = v20;
    v23 = v16 + v20 * a3;
LABEL_5:
    v42 = v21;
    v43 = a3;
    v40 = v23;
    v41 = v22;
    v24 = v21;
    while (1)
    {
      v25 = v50;
      v50(v53, v23, v8);
      v25(v54, v24, v8);
      sub_25B0E38F0();
      sub_25B0E3850();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v26 = v53;
      v27 = sub_25B0E27E0();
      v28 = v54;
      v29 = sub_25B0E27E0();

      v30 = *v49;
      v31 = v28;
      v32 = v48;
      (*v49)(v31, v48);
      v33 = v26;
      v8 = v32;
      result = v30(v33, v32);
      if (v27 >= v29)
      {
LABEL_4:
        a3 = v43 + 1;
        v21 = v42 + v38;
        v22 = v41 - 1;
        v23 = v40 + v38;
        if (v43 + 1 == v39)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v46)
      {
        break;
      }

      v34 = *v45;
      v35 = v47;
      (*v45)(v47, v23, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v34)(v24, v35, v8);
      v24 += v44;
      v23 += v44;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25B097390(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v5 = v4;
  v139 = a1;
  v162 = sub_25B0E2830();
  v8 = *(v162 - 8);
  v9 = MEMORY[0x28223BE20](v162);
  v142 = &v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v154 = &v132 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v161 = &v132 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v160 = &v132 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v151 = &v132 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v150 = &v132 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v138 = &v132 - v22;
  result = MEMORY[0x28223BE20](v21);
  v137 = &v132 - v24;
  v25 = a3[1];
  if (v25 < 1)
  {
    v27 = MEMORY[0x277D84F90];
LABEL_100:
    a4 = *v139;
    if (!*v139)
    {
      goto LABEL_138;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_102:
      v163 = v27;
      v128 = *(v27 + 2);
      if (v128 >= 2)
      {
        while (*a3)
        {
          v129 = *&v27[16 * v128];
          v130 = *&v27[16 * v128 + 24];
          sub_25B097FC8(*a3 + *(v8 + 72) * v129, *a3 + *(v8 + 72) * *&v27[16 * v128 + 16], (*a3 + *(v8 + 72) * v130), a4);
          if (v5)
          {
          }

          if (v130 < v129)
          {
            goto LABEL_125;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v27 = sub_25B0D3F4C(v27);
          }

          if (v128 - 2 >= *(v27 + 2))
          {
            goto LABEL_126;
          }

          v131 = &v27[16 * v128];
          *v131 = v129;
          *(v131 + 1) = v130;
          v163 = v27;
          result = sub_25B0D3EC0(v128 - 1);
          v27 = v163;
          v128 = *(v163 + 2);
          if (v128 <= 1)
          {
          }
        }

        goto LABEL_136;
      }
    }

LABEL_132:
    result = sub_25B0D3F4C(v27);
    v27 = result;
    goto LABEL_102;
  }

  v133 = a4;
  v26 = 0;
  v158 = (v8 + 8);
  v159 = v8 + 16;
  v157 = (v8 + 32);
  v27 = MEMORY[0x277D84F90];
  v140 = a3;
  v134 = v8;
  while (1)
  {
    v28 = v26;
    v29 = v26 + 1;
    v141 = v26;
    if (v26 + 1 < v25)
    {
      v146 = v25;
      v135 = v27;
      v136 = v5;
      v30 = *a3;
      v31 = *(v8 + 72);
      v5 = v26 + 1;
      v32 = v30 + v31 * v29;
      v33 = *(v8 + 16);
      v34 = v26;
      v35 = v162;
      v33(v137, v32, v162);
      v149 = v31;
      v145 = v33;
      v33(v138, v30 + v31 * v34, v35);
      v36 = sub_25B0E3900();
      sub_25B0E38F0();
      v144 = v36;
      sub_25B0E3850();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v37 = v137;
      v148 = sub_25B0E27E0();
      v38 = v138;
      v147 = sub_25B0E27E0();

      v39 = *v158;
      (*v158)(v38, v35);
      v143 = v39;
      result = (v39)(v37, v35);
      v40 = (v141 + 2);
      v41 = v149 * (v141 + 2);
      v42 = v30 + v41;
      v43 = v149 * v5;
      a4 = v30 + v149 * v5;
      do
      {
        v27 = v40;
        v52 = v5;
        a3 = v43;
        v8 = v41;
        if (v40 >= v146)
        {
          break;
        }

        v152 = v43;
        v153 = v5;
        v155 = v40;
        v156 = v41;
        v53 = v162;
        v54 = v145;
        v145(v150, v42, v162);
        v54(v151, a4, v53);
        sub_25B0E38F0();
        sub_25B0E3850();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v44 = v148 < v147;
        v45 = v150;
        v46 = sub_25B0E27E0();
        v47 = v151;
        v48 = sub_25B0E27E0();

        v49 = v162;
        v50 = v143;
        v143(v47, v162);
        result = (v50)(v45, v49);
        v51 = v44 ^ (v46 >= v48);
        v27 = v155;
        v8 = v156;
        v40 = v155 + 1;
        v42 += v149;
        a4 += v149;
        a3 = v152;
        v52 = v153;
        v5 = v153 + 1;
        v43 = v152 + v149;
        v41 = v156 + v149;
      }

      while ((v51 & 1) != 0);
      if (v148 >= v147)
      {
        v29 = v27;
        v5 = v136;
        a3 = v140;
        v8 = v134;
        v27 = v135;
        v28 = v141;
      }

      else
      {
        v28 = v141;
        if (v27 < v141)
        {
          goto LABEL_129;
        }

        if (v141 < v27)
        {
          v55 = v141 * v149;
          v56 = v141;
          do
          {
            if (v56 != v52)
            {
              v59 = *v140;
              if (!*v140)
              {
                goto LABEL_135;
              }

              v60 = v52;
              a4 = v59 + v55;
              v61 = *v157;
              (*v157)(v142, v59 + v55, v162);
              v156 = v8;
              if (v55 < a3 || a4 >= v59 + v8)
              {
                v57 = v162;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v57 = v162;
                if (v55 != a3)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v61)(a3 + v59, v142, v57);
              v28 = v141;
              v8 = v156;
              v52 = v60;
            }

            ++v56;
            a3 = (a3 - v149);
            v8 -= v149;
            v55 += v149;
          }

          while (v56 < v52--);
        }

        v29 = v27;
        v5 = v136;
        a3 = v140;
        v8 = v134;
        v27 = v135;
      }
    }

    v62 = a3[1];
    if (v29 < v62)
    {
      if (__OFSUB__(v29, v28))
      {
        goto LABEL_128;
      }

      if (v29 - v28 < v133)
      {
        break;
      }
    }

LABEL_49:
    if (v29 < v28)
    {
      goto LABEL_127;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_25B08993C(0, *(v27 + 2) + 1, 1, v27);
      v27 = result;
    }

    a4 = *(v27 + 2);
    v83 = *(v27 + 3);
    v84 = a4 + 1;
    if (a4 >= v83 >> 1)
    {
      result = sub_25B08993C((v83 > 1), a4 + 1, 1, v27);
      v27 = result;
    }

    *(v27 + 2) = v84;
    v85 = &v27[16 * a4];
    *(v85 + 4) = v28;
    *(v85 + 5) = v29;
    v149 = v29;
    v86 = *v139;
    if (!*v139)
    {
      goto LABEL_137;
    }

    if (a4)
    {
      while (1)
      {
        v87 = v84 - 1;
        if (v84 >= 4)
        {
          break;
        }

        if (v84 == 3)
        {
          v88 = *(v27 + 4);
          v89 = *(v27 + 5);
          v98 = __OFSUB__(v89, v88);
          v90 = v89 - v88;
          v91 = v98;
LABEL_69:
          if (v91)
          {
            goto LABEL_116;
          }

          v104 = &v27[16 * v84];
          v106 = *v104;
          v105 = *(v104 + 1);
          v107 = __OFSUB__(v105, v106);
          v108 = v105 - v106;
          v109 = v107;
          if (v107)
          {
            goto LABEL_119;
          }

          v110 = &v27[16 * v87 + 32];
          v112 = *v110;
          v111 = *(v110 + 1);
          v98 = __OFSUB__(v111, v112);
          v113 = v111 - v112;
          if (v98)
          {
            goto LABEL_122;
          }

          if (__OFADD__(v108, v113))
          {
            goto LABEL_123;
          }

          if (v108 + v113 >= v90)
          {
            if (v90 < v113)
            {
              v87 = v84 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        v114 = &v27[16 * v84];
        v116 = *v114;
        v115 = *(v114 + 1);
        v98 = __OFSUB__(v115, v116);
        v108 = v115 - v116;
        v109 = v98;
LABEL_83:
        if (v109)
        {
          goto LABEL_118;
        }

        v117 = &v27[16 * v87];
        v119 = *(v117 + 4);
        v118 = *(v117 + 5);
        v98 = __OFSUB__(v118, v119);
        v120 = v118 - v119;
        if (v98)
        {
          goto LABEL_121;
        }

        if (v120 < v108)
        {
          goto LABEL_3;
        }

LABEL_90:
        a4 = v87 - 1;
        if (v87 - 1 >= v84)
        {
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

        if (!*a3)
        {
          goto LABEL_134;
        }

        v125 = *&v27[16 * a4 + 32];
        v126 = *&v27[16 * v87 + 40];
        sub_25B097FC8(*a3 + *(v8 + 72) * v125, *a3 + *(v8 + 72) * *&v27[16 * v87 + 32], (*a3 + *(v8 + 72) * v126), v86);
        if (v5)
        {
        }

        if (v126 < v125)
        {
          goto LABEL_112;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_25B0D3F4C(v27);
        }

        if (a4 >= *(v27 + 2))
        {
          goto LABEL_113;
        }

        v127 = &v27[16 * a4];
        *(v127 + 4) = v125;
        *(v127 + 5) = v126;
        v163 = v27;
        result = sub_25B0D3EC0(v87);
        v27 = v163;
        v84 = *(v163 + 2);
        if (v84 <= 1)
        {
          goto LABEL_3;
        }
      }

      v92 = &v27[16 * v84 + 32];
      v93 = *(v92 - 64);
      v94 = *(v92 - 56);
      v98 = __OFSUB__(v94, v93);
      v95 = v94 - v93;
      if (v98)
      {
        goto LABEL_114;
      }

      v97 = *(v92 - 48);
      v96 = *(v92 - 40);
      v98 = __OFSUB__(v96, v97);
      v90 = v96 - v97;
      v91 = v98;
      if (v98)
      {
        goto LABEL_115;
      }

      v99 = &v27[16 * v84];
      v101 = *v99;
      v100 = *(v99 + 1);
      v98 = __OFSUB__(v100, v101);
      v102 = v100 - v101;
      if (v98)
      {
        goto LABEL_117;
      }

      v98 = __OFADD__(v90, v102);
      v103 = v90 + v102;
      if (v98)
      {
        goto LABEL_120;
      }

      if (v103 >= v95)
      {
        v121 = &v27[16 * v87 + 32];
        v123 = *v121;
        v122 = *(v121 + 1);
        v98 = __OFSUB__(v122, v123);
        v124 = v122 - v123;
        if (v98)
        {
          goto LABEL_124;
        }

        if (v90 < v124)
        {
          v87 = v84 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_69;
    }

LABEL_3:
    v25 = a3[1];
    v26 = v149;
    if (v149 >= v25)
    {
      goto LABEL_100;
    }
  }

  if (__OFADD__(v28, v133))
  {
    goto LABEL_130;
  }

  if (v28 + v133 >= v62)
  {
    a4 = a3[1];
  }

  else
  {
    a4 = v28 + v133;
  }

  if (a4 < v28)
  {
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  if (v29 == a4)
  {
    goto LABEL_49;
  }

  v135 = v27;
  v136 = v5;
  v63 = *a3;
  v64 = sub_25B0E3900();
  v65 = *(v8 + 72);
  v155 = *(v8 + 16);
  v156 = v64;
  v66 = v63 + v65 * (v29 - 1);
  v152 = -v65;
  v153 = v63;
  v67 = v28 - v29;
  v144 = v65;
  v145 = a4;
  v68 = v63 + v29 * v65;
  v69 = v162;
LABEL_40:
  v148 = v66;
  v149 = v29;
  v146 = v68;
  v147 = v67;
  v70 = v68;
  v71 = v66;
  while (1)
  {
    v72 = v155;
    (v155)(v160, v70, v69);
    (v72)(v161, v71, v69);
    sub_25B0E38F0();
    sub_25B0E3850();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v73 = v160;
    v74 = sub_25B0E27E0();
    v75 = v161;
    v76 = sub_25B0E27E0();

    v77 = *v158;
    v78 = v75;
    v79 = v162;
    (*v158)(v78, v162);
    result = (v77)(v73, v79);
    if (v74 >= v76)
    {
      v69 = v162;
LABEL_39:
      v29 = v149 + 1;
      a4 = v145;
      v66 = v148 + v144;
      v67 = v147 - 1;
      v68 = v146 + v144;
      if ((v149 + 1) == v145)
      {
        v29 = v145;
        v5 = v136;
        a3 = v140;
        v8 = v134;
        v27 = v135;
        v28 = v141;
        goto LABEL_49;
      }

      goto LABEL_40;
    }

    if (!v153)
    {
      break;
    }

    v80 = *v157;
    v81 = v154;
    v69 = v162;
    (*v157)(v154, v70, v162);
    swift_arrayInitWithTakeFrontToBack();
    v80(v71, v81, v69);
    v71 += v152;
    v70 += v152;
    if (__CFADD__(v67++, 1))
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
  return result;
}

uint64_t sub_25B097FC8(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v8 = sub_25B0E2830();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v62 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v61 = &v54 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v65 = &v54 - v15;
  result = MEMORY[0x28223BE20](v14);
  v64 = &v54 - v17;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_65;
  }

  v20 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_66;
  }

  v21 = (a2 - a1) / v19;
  v69 = a1;
  v68 = a4;
  v63 = v19;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v36 = a4 + v23;
    if (v23 >= 1)
    {
      v37 = -v63;
      v57 = (v9 + 8);
      v58 = (v9 + 16);
      v38 = v36;
      v55 = a1;
      v56 = a4;
      v60 = v8;
      do
      {
        v54 = v36;
        v39 = a2;
        v40 = a2 + v37;
        v66 = v40;
        v63 = v39;
        while (1)
        {
          if (v39 <= a1)
          {
            v69 = v39;
            v67 = v54;
            goto LABEL_63;
          }

          v41 = a3;
          v59 = v36;
          v42 = *v58;
          v64 = v38;
          v65 = &v38[v37];
          v42(v61);
          (v42)(v62, v40, v8);
          sub_25B0E3900();
          sub_25B0E38F0();
          sub_25B0E3850();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v43 = v37;
          v44 = &a3[v37];
          v45 = v61;
          v46 = sub_25B0E27E0();
          v47 = v62;
          v48 = sub_25B0E27E0();

          v49 = *v57;
          v50 = v47;
          v51 = v60;
          (*v57)(v50, v60);
          v49(v45, v51);
          if (v46 < v48)
          {
            break;
          }

          v36 = v65;
          v40 = v66;
          v52 = v56;
          a3 = v44;
          if (v41 < v64 || v44 >= v64)
          {
            v8 = v60;
            swift_arrayInitWithTakeFrontToBack();
            v37 = v43;
          }

          else
          {
            v8 = v60;
            v37 = v43;
            if (v41 != v64)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v38 = v36;
          a1 = v55;
          v39 = v63;
          if (v65 <= v52)
          {
            a2 = v63;
            goto LABEL_62;
          }
        }

        a2 = v66;
        v53 = v56;
        a3 = v44;
        if (v41 < v63 || v44 >= v63)
        {
          v8 = v60;
          swift_arrayInitWithTakeFrontToBack();
          v36 = v59;
          v37 = v43;
        }

        else
        {
          v36 = v59;
          v8 = v60;
          v37 = v43;
          if (v41 != v63)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v38 = v64;
        a1 = v55;
      }

      while (v64 > v53);
    }

LABEL_62:
    v69 = a2;
    v67 = v36;
  }

  else
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v62 = (a4 + v22);
    v67 = a4 + v22;
    if (v22 >= 1 && a2 < a3)
    {
      v25 = *(v9 + 16);
      v61 = (v9 + 16);
      v57 = (v9 + 8);
      v58 = v25;
      v59 = a3;
      do
      {
        v66 = a2;
        v26 = v58;
        (v58)(v64, a2, v8);
        v27 = a4;
        v26(v65, a4, v8);
        sub_25B0E3900();
        sub_25B0E38F0();
        sub_25B0E3850();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v28 = v64;
        v29 = sub_25B0E27E0();
        v30 = v65;
        v31 = sub_25B0E27E0();

        v32 = *v57;
        (*v57)(v30, v8);
        v32(v28, v8);
        if (v29 >= v31)
        {
          v34 = v27;
          v35 = v63;
          a4 = v34 + v63;
          a2 = v66;
          if (a1 < v34 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v33 = v59;
          }

          else
          {
            v33 = v59;
            if (a1 != v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v68 = a4;
        }

        else
        {
          a2 = v66 + v63;
          a4 = v27;
          if (a1 < v66 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            v33 = v59;
          }

          else
          {
            v33 = v59;
            if (a1 != v66)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v35 = v63;
        }

        a1 += v35;
        v69 = a1;
      }

      while (a4 < v62 && a2 < v33);
    }
  }

LABEL_63:
  sub_25B0D3F78(&v69, &v68, &v67);
  return 1;
}

uint64_t sub_25B098694(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25B0498DC;

  return sub_25B096A70(a1, v4, v5, v7, v6);
}

uint64_t sub_25B098754(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25B0987BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25B0498DC;

  return sub_25B065938(a1, v4);
}

unint64_t sub_25B098874()
{
  result = qword_27FA319F8;
  if (!qword_27FA319F8)
  {
    sub_25B046E60(255, &qword_27FA312B0, 0x277CCABB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA319F8);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25B0988F4()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313B0, &unk_25B0E6970);
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = sub_25B0E3900();
  v1[10] = sub_25B0E38F0();
  v5 = sub_25B0E3850();
  v1[11] = v5;
  v1[12] = v4;

  return MEMORY[0x2822009F8](sub_25B098A60, v5, v4);
}

uint64_t sub_25B098A60()
{
  v0[13] = *(v0[2] + 16);
  v1 = sub_25B098DD8();
  if (v1[2])
  {
    v2 = v1;

    v3 = v0[1];

    return v3(v2);
  }

  else
  {
    v6 = v0[4];
    v5 = v0[5];
    v7 = v0[3];

    sub_25B099134();
    sub_25B0E39A0();
    (*(v6 + 8))(v5, v7);
    v8 = sub_25B0E38F0();
    v0[14] = v8;
    v9 = swift_task_alloc();
    v0[15] = v9;
    *v9 = v0;
    v9[1] = sub_25B098BE8;
    v10 = v0[6];
    v11 = MEMORY[0x277D85700];

    return MEMORY[0x2822003E8](v0 + 16, v8, v11, v10);
  }
}

uint64_t sub_25B098BE8()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_25B098D2C, v3, v2);
}

uint64_t sub_25B098D2C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  (*(v2 + 8))(v1, v3);
  v4 = sub_25B098DD8();

  v5 = v0[1];

  return v5(v4);
}

void *sub_25B098DD8()
{
  v1 = sub_25B0E2750();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v37 = &v30 - v6;
  v7 = [v0 numberOfFaces];
  if (v7 < 1)
  {
    return MEMORY[0x277D84F90];
  }

  v8 = v7;
  v9 = 0;
  v31 = v2 + 8;
  v32 = (v2 + 16);
  v30 = v2 + 32;
  v10 = MEMORY[0x277D84F90];
  v11 = &_swift_FORCE_LOAD___swiftCoreAudio___NanoFaceGallery;
  v35 = v2;
  v36 = v1;
  v33 = v7;
  v34 = v5;
  do
  {
    v12 = [v0 v11[157]];
    if (v12)
    {
      v13 = v12;
      v14 = [v0 identifierForFaceAtIndex_];
      if (v14)
      {
        v15 = v14;
        sub_25B0E3740();

        v16 = [v0 calloutName];
        if (v16)
        {
          v17 = v16;
          v18 = (*(v16 + 2))(v16, v13);
          if (v18)
          {
            v19 = v18;
            sub_25B0E3740();
            _Block_release(v17);
          }

          else
          {
            _Block_release(v17);
          }
        }

        else
        {
          v20 = [v13 name];
          if (v20)
          {
            v21 = v20;
            sub_25B0E3740();
          }
        }

        v22 = v13;
        v23 = v37;
        sub_25B0E2720();
        v24 = v34;
        v25 = v36;
        (*v32)(v34, v23, v36);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_25B089C98(0, v10[2] + 1, 1, v10);
        }

        v26 = v35;
        v28 = v10[2];
        v27 = v10[3];
        if (v28 >= v27 >> 1)
        {
          v10 = sub_25B089C98((v27 > 1), v28 + 1, 1, v10);
        }

        (*(v26 + 8))(v37, v25);
        v10[2] = v28 + 1;
        (*(v26 + 32))(v10 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v28, v24, v25);
        v8 = v33;
        v11 = &_swift_FORCE_LOAD___swiftCoreAudio___NanoFaceGallery;
      }

      else
      {
      }
    }

    ++v9;
  }

  while (v8 != v9);
  return v10;
}

uint64_t sub_25B099134()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31820, &unk_25B0E6910);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v19 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  *v5 = 1;
  (*(v3 + 104))(v5, *MEMORY[0x277D85768], v2);
  sub_25B0E3950();
  (*(v3 + 8))(v5, v2);
  v13 = v1 + OBJC_IVAR____TtC15NanoFaceGalleryP33_61C3017D18ADB1D9719E0FDF1EB8939530WatchGalleryCollectionObserver_lock;
  os_unfair_lock_lock(v13);
  (*(v7 + 16))(v10, v12, v6);
  v14 = *(v13 + 8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v13 + 8) = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_25B089A40(0, v14[2] + 1, 1, v14);
    *(v13 + 8) = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_25B089A40((v16 > 1), v17 + 1, 1, v14);
    *(v13 + 8) = v14;
  }

  v14[2] = v17 + 1;
  (*(v7 + 32))(v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17, v10, v6);
  os_unfair_lock_unlock(v13);
  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_25B0993FC()
{

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

id sub_25B099478()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - v4;
  v6 = &v1[OBJC_IVAR____TtC15NanoFaceGalleryP33_61C3017D18ADB1D9719E0FDF1EB8939530WatchGalleryCollectionObserver_lock];
  os_unfair_lock_lock(&v1[OBJC_IVAR____TtC15NanoFaceGalleryP33_61C3017D18ADB1D9719E0FDF1EB8939530WatchGalleryCollectionObserver_lock]);
  v7 = *(v6 + 1);
  v8 = *(v7 + 16);
  if (v8)
  {
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = v7 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v13 = *(v9 + 56);
    do
    {
      v10(v5, v12, v2);
      sub_25B0E3990();
      (*(v9 - 8))(v5, v2);
      v12 += v13;
      --v8;
    }

    while (v8);
  }

  os_unfair_lock_unlock(v6);
  v17.receiver = v1;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, sel_dealloc);
}

uint64_t sub_25B099628(void *a1)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31B40, &unk_25B0E6BA0);
  v2 = *(v42 - 8);
  v3 = MEMORY[0x28223BE20](v42);
  v41 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v40 = &v27 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v7 = MEMORY[0x28223BE20](v6);
  v44 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  v27 = a1;
  result = *a1;
  v39 = *(*a1 + 16);
  if (v39)
  {
    v13 = 0;
    v35 = (v2 + 32);
    v36 = v9 + 16;
    v34 = (v2 + 88);
    v33 = *MEMORY[0x277D85758];
    v32 = *MEMORY[0x277D85750];
    v30 = *MEMORY[0x277D85748];
    v28 = (v9 + 8);
    v29 = (v2 + 8);
    v43 = (v9 + 32);
    v14 = MEMORY[0x277D84F90];
    v31 = v6;
    v37 = result;
    v38 = v9;
    while (1)
    {
      if (v13 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v16 = *(v9 + 72);
      (*(v9 + 16))(v11, result + v15 + v16 * v13, v6);
      v17 = v40;
      sub_25B0E3970();
      v19 = v41;
      v18 = v42;
      (*v35)(v41, v17, v42);
      v20 = (*v34)(v19, v18);
      if (v20 == v33 || v20 == v32)
      {
        goto LABEL_12;
      }

      if (v20 != v30)
      {
        break;
      }

      (*v28)(v11, v6);
LABEL_4:
      ++v13;
      v9 = v38;
      result = v37;
      if (v39 == v13)
      {
        goto LABEL_18;
      }
    }

    (*v29)(v41, v42);
LABEL_12:
    v22 = *v43;
    (*v43)(v44, v11, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_25B08C168(0, *(v14 + 16) + 1, 1);
      v14 = v45;
    }

    v25 = *(v14 + 16);
    v24 = *(v14 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_25B08C168((v24 > 1), v25 + 1, 1);
      v14 = v45;
    }

    *(v14 + 16) = v25 + 1;
    v26 = v14 + v15 + v25 * v16;
    v6 = v31;
    v22(v26, v44, v31);
    goto LABEL_4;
  }

  v14 = MEMORY[0x277D84F90];
LABEL_18:

  *v27 = v14;
  return result;
}

uint64_t sub_25B099AE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31840, &qword_25B0E6FC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25B099B50()
{
  v0 = sub_25B0E2970();
  __swift_allocate_value_buffer(v0, qword_27FA31AB0);
  __swift_project_value_buffer(v0, qword_27FA31AB0);
  return sub_25B0E2960();
}

uint64_t sub_25B099BD0()
{
  v1 = v0;
  if (qword_27FA30D10 != -1)
  {
    swift_once();
  }

  v2 = sub_25B0E2970();
  __swift_project_value_buffer(v2, qword_27FA31AB0);

  v3 = sub_25B0E2950();
  v4 = sub_25B0E3A50();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_25B04BE04(*(v1 + 24), *(v1 + 32), &v8);
    _os_log_impl(&dword_25B03D000, v3, v4, "WatchLibrary for %s went away…", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x25F8613E0](v6, -1, -1);
    MEMORY[0x25F8613E0](v5, -1, -1);
  }

  [*(v1 + 16) removeObserver_];

  return v1;
}

uint64_t sub_25B099D40()
{
  sub_25B099BD0();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_25B099D98()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313B0, &unk_25B0E6970);
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = sub_25B0E3900();
  v1[10] = sub_25B0E38F0();
  v5 = sub_25B0E3850();
  v1[11] = v5;
  v1[12] = v4;

  return MEMORY[0x2822009F8](sub_25B099F04, v5, v4);
}

uint64_t sub_25B099F04()
{
  v26 = v0;
  if (qword_27FA30D10 != -1)
  {
    swift_once();
  }

  v1 = sub_25B0E2970();
  v0[13] = __swift_project_value_buffer(v1, qword_27FA31AB0);

  v2 = sub_25B0E2950();
  v3 = sub_25B0E3A50();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[2];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v25 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_25B04BE04(*(v4 + 24), *(v4 + 32), &v25);
    _os_log_impl(&dword_25B03D000, v2, v3, "WatchLibrary for %s asked…", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x25F8613E0](v6, -1, -1);
    MEMORY[0x25F8613E0](v5, -1, -1);
  }

  v0[14] = *(v0[2] + 16);
  v7 = sub_25B09A610();
  if (v7[2])
  {

    v8 = sub_25B0E2950();
    v9 = sub_25B0E3A50();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = v7[2];

      _os_log_impl(&dword_25B03D000, v8, v9, "WatchLibrary sending %ld face(s)…", v10, 0xCu);
      MEMORY[0x25F8613E0](v10, -1, -1);
    }

    else
    {
    }

    v23 = v0[1];

    return v23(v7);
  }

  else
  {

    v11 = sub_25B0E2950();
    v12 = sub_25B0E3A50();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = v0[2];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v25 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_25B04BE04(*(v13 + 24), *(v13 + 32), &v25);
      _os_log_impl(&dword_25B03D000, v11, v12, "WatchLibrary for %s needs to load…", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x25F8613E0](v15, -1, -1);
      MEMORY[0x25F8613E0](v14, -1, -1);
    }

    v17 = v0[4];
    v16 = v0[5];
    v18 = v0[3];
    sub_25B09AB88();
    sub_25B0E39A0();
    (*(v17 + 8))(v16, v18);
    v19 = sub_25B0E38F0();
    v0[15] = v19;
    v20 = swift_task_alloc();
    v0[16] = v20;
    *v20 = v0;
    v20[1] = sub_25B09A318;
    v21 = v0[6];
    v22 = MEMORY[0x277D85700];

    return MEMORY[0x2822003E8](v0 + 17, v19, v22, v21);
  }
}

uint64_t sub_25B09A318()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_25B09A45C, v3, v2);
}

uint64_t sub_25B09A45C()
{
  v14 = v0;

  if (*(v0 + 136))
  {
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
  }

  else
  {

    v1 = sub_25B0E2950();
    v2 = sub_25B0E3A50();

    v3 = os_log_type_enabled(v1, v2);
    v5 = *(v0 + 56);
    v4 = *(v0 + 64);
    v6 = *(v0 + 48);
    if (v3)
    {
      v7 = *(v0 + 16);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_25B04BE04(*(v7 + 24), *(v7 + 32), &v13);
      _os_log_impl(&dword_25B03D000, v1, v2, "WatchLibrary %s updated…", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x25F8613E0](v9, -1, -1);
      MEMORY[0x25F8613E0](v8, -1, -1);
    }

    (*(v5 + 8))(v4, v6);
  }

  v10 = sub_25B09A610();

  v11 = *(v0 + 8);

  return v11(v10);
}

void *sub_25B09A610()
{
  v1 = sub_25B0E2750();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v48 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v49 = v37 - v5;
  v6 = sub_25B0E24A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31B50, &qword_25B0E72F0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v37 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v37 - v17;
  v53 = [v0 numberOfFaces];
  if (v53 < 1)
  {
    return MEMORY[0x277D84F90];
  }

  v51 = v18;
  v19 = 0;
  v46 = (v7 + 56);
  v47 = v13;
  v45 = (v7 + 48);
  v40 = (v2 + 16);
  v41 = (v7 + 32);
  v38 = (v7 + 8);
  v39 = v2 + 8;
  v37[1] = v2 + 32;
  v52 = MEMORY[0x277D84F90];
  v50 = v16;
  v43 = v2;
  v44 = v0;
  v42 = v6;
  do
  {
    v20 = [v0 faceAtIndex_];
    if (v20)
    {
      v21 = v20;
      v22 = [v0 uuidForFace_];
      v23 = v47;
      if (v22)
      {
        v24 = v22;
        sub_25B0E2480();

        v16 = v50;
        v25 = 0;
      }

      else
      {
        v25 = 1;
      }

      (*v46)(v16, v25, 1, v6);
      v26 = v51;
      sub_25B09B8D8(v16, v51);
      sub_25B09B948(v26, v23);
      if ((*v45)(v23, 1, v6) == 1)
      {
        sub_25B058448(v26, &qword_27FA31B50, &qword_25B0E72F0);

        sub_25B058448(v23, &qword_27FA31B50, &qword_25B0E72F0);
      }

      else
      {
        v27 = v48;
        (*v41)(v9, v23, v6);
        sub_25B0E2460();
        v28 = [v21 name];
        if (v28)
        {
          v29 = v28;
          sub_25B0E3740();
        }

        v30 = v21;
        v31 = v49;
        sub_25B0E2720();
        (*v40)(v27, v31, v1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = sub_25B089C98(0, v52[2] + 1, 1, v52);
        }

        v6 = v42;
        v32 = v43;
        v34 = v52[2];
        v33 = v52[3];
        if (v34 >= v33 >> 1)
        {
          v52 = sub_25B089C98((v33 > 1), v34 + 1, 1, v52);
        }

        (*(v32 + 8))(v49, v1);
        (*v38)(v9, v6);
        sub_25B058448(v51, &qword_27FA31B50, &qword_25B0E72F0);
        v35 = v52;
        v52[2] = v34 + 1;
        (*(v32 + 32))(v35 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v34, v48, v1);
        v0 = v44;
        v16 = v50;
      }
    }

    ++v19;
  }

  while (v53 != v19);
  return v52;
}

uint64_t sub_25B09AB88()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31820, &unk_25B0E6910);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v19 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  *v5 = 1;
  (*(v3 + 104))(v5, *MEMORY[0x277D85768], v2);
  sub_25B0E3950();
  (*(v3 + 8))(v5, v2);
  v13 = v1 + OBJC_IVAR____TtC15NanoFaceGalleryP33_66355BD49EE9870FF1FFD4662D755EF020WatchLibraryObserver_lock;
  os_unfair_lock_lock(v13);
  (*(v7 + 16))(v10, v12, v6);
  v14 = *(v13 + 8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v13 + 8) = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_25B089A40(0, v14[2] + 1, 1, v14);
    *(v13 + 8) = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_25B089A40((v16 > 1), v17 + 1, 1, v14);
    *(v13 + 8) = v14;
  }

  v14[2] = v17 + 1;
  (*(v7 + 32))(v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17, v10, v6);
  os_unfair_lock_unlock(v13);
  return (*(v7 + 8))(v12, v6);
}

id sub_25B09AE50()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - v4;
  v6 = &v1[OBJC_IVAR____TtC15NanoFaceGalleryP33_66355BD49EE9870FF1FFD4662D755EF020WatchLibraryObserver_lock];
  os_unfair_lock_lock(&v1[OBJC_IVAR____TtC15NanoFaceGalleryP33_66355BD49EE9870FF1FFD4662D755EF020WatchLibraryObserver_lock]);
  v7 = *(v6 + 1);
  v8 = *(v7 + 16);
  if (v8)
  {
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = v7 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v13 = *(v9 + 56);
    do
    {
      v10(v5, v12, v2);
      sub_25B0E3990();
      (*(v9 - 8))(v5, v2);
      v12 += v13;
      --v8;
    }

    while (v8);
  }

  os_unfair_lock_unlock(v6);
  v17.receiver = v1;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, sel_dealloc);
}

uint64_t sub_25B09B024(void *a1)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31B40, &unk_25B0E6BA0);
  v2 = *(v42 - 8);
  v3 = MEMORY[0x28223BE20](v42);
  v41 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v40 = &v27 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v7 = MEMORY[0x28223BE20](v6);
  v44 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  v27 = a1;
  result = *a1;
  v39 = *(*a1 + 16);
  if (v39)
  {
    v13 = 0;
    v35 = (v2 + 32);
    v36 = v9 + 16;
    v34 = (v2 + 88);
    v33 = *MEMORY[0x277D85758];
    v32 = *MEMORY[0x277D85750];
    v30 = *MEMORY[0x277D85748];
    v28 = (v9 + 8);
    v29 = (v2 + 8);
    v43 = (v9 + 32);
    v14 = MEMORY[0x277D84F90];
    v31 = v6;
    v37 = result;
    v38 = v9;
    while (1)
    {
      if (v13 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v16 = *(v9 + 72);
      (*(v9 + 16))(v11, result + v15 + v16 * v13, v6);
      v17 = v40;
      sub_25B0E3970();
      v19 = v41;
      v18 = v42;
      (*v35)(v41, v17, v42);
      v20 = (*v34)(v19, v18);
      if (v20 == v33 || v20 == v32)
      {
        goto LABEL_12;
      }

      if (v20 != v30)
      {
        break;
      }

      (*v28)(v11, v6);
LABEL_4:
      ++v13;
      v9 = v38;
      result = v37;
      if (v39 == v13)
      {
        goto LABEL_18;
      }
    }

    (*v29)(v41, v42);
LABEL_12:
    v22 = *v43;
    (*v43)(v44, v11, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_25B08C168(0, *(v14 + 16) + 1, 1);
      v14 = v45;
    }

    v25 = *(v14 + 16);
    v24 = *(v14 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_25B08C168((v24 > 1), v25 + 1, 1);
      v14 = v45;
    }

    *(v14 + 16) = v25 + 1;
    v26 = v14 + v15 + v25 * v16;
    v6 = v31;
    v22(v26, v44, v31);
    goto LABEL_4;
  }

  v14 = MEMORY[0x277D84F90];
LABEL_18:

  *v27 = v14;
  return result;
}

void sub_25B09B3F8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;

  sub_25B09B7C0();
}

void *sub_25B09B4F4(void *a1)
{
  v2 = v1;
  v4 = sub_25B0E24A0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[5] = [objc_allocWithZone(type metadata accessor for WatchLibraryObserver()) init];
  v2[2] = a1;
  v8 = a1;
  v9 = [v8 collectionIdentifier];
  v10 = sub_25B0E3740();
  v12 = v11;

  v25 = v10;
  v26 = v12;
  MEMORY[0x25F8602F0](45, 0xE100000000000000);
  v13 = [v8 deviceUUID];
  sub_25B0E2480();

  sub_25B08405C();
  v14 = sub_25B0E3E20();
  MEMORY[0x25F8602F0](v14);

  (*(v5 + 8))(v7, v4);
  v15 = v26;
  v2[3] = v25;
  v2[4] = v15;
  if (qword_27FA30D10 != -1)
  {
    swift_once();
  }

  v16 = sub_25B0E2970();
  __swift_project_value_buffer(v16, qword_27FA31AB0);

  v17 = sub_25B0E2950();
  v18 = sub_25B0E3A50();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v25 = v20;
    *v19 = 136315138;
    v21 = v2[3];
    v22 = v2[4];

    v23 = sub_25B04BE04(v21, v22, &v25);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_25B03D000, v17, v18, "WatchLibrary for %s generated…", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x25F8613E0](v20, -1, -1);
    MEMORY[0x25F8613E0](v19, -1, -1);
  }

  [v8 addObserver_];
  return v2;
}

void sub_25B09B7C0()
{
  v1 = v0;
  if (qword_27FA30D10 != -1)
  {
    swift_once();
  }

  v2 = sub_25B0E2970();
  __swift_project_value_buffer(v2, qword_27FA31AB0);
  v3 = sub_25B0E2950();
  v4 = sub_25B0E3A50();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_25B03D000, v3, v4, "WatchLibrary observer updated…", v5, 2u);
    MEMORY[0x25F8613E0](v5, -1, -1);
  }

  v6 = v1 + OBJC_IVAR____TtC15NanoFaceGalleryP33_66355BD49EE9870FF1FFD4662D755EF020WatchLibraryObserver_lock;
  os_unfair_lock_lock(v6);
  sub_25B09B024((v6 + 8));

  os_unfair_lock_unlock(v6);
}

uint64_t sub_25B09B8D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31B50, &qword_25B0E72F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B09B948(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31B50, &qword_25B0E72F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_25B09B9CC()
{
  v1 = sub_25B0E23C0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [*(v0 + 48) fileURL];
  sub_25B0E23A0();

  v6 = sub_25B0E2360();
  v7 = [objc_opt_self() imageFromSnapshotResultFileURL_];

  v8 = (*(v2 + 8))(v4, v1);
  if (!v7)
  {
    sub_25B09BB24(v8, v9, v10);
    swift_allocError();
    swift_willThrow();
  }

  return v7;
}

unint64_t sub_25B09BB24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31B58;
  if (!qword_27FA31B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31B58);
  }

  return result;
}

unint64_t sub_25B09BB8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31B60;
  if (!qword_27FA31B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31B60);
  }

  return result;
}

uint64_t sub_25B09BBE0()
{
  if (*v0)
  {
    return 0x6863746177;
  }

  else
  {
    return 0x656E6F6870;
  }
}

uint64_t sub_25B09BC0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656E6F6870 && a2 == 0xE500000000000000;
  if (v6 || (sub_25B0E3E30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6863746177 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25B0E3E30();

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

uint64_t sub_25B09BCE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25B09DE38(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_25B09BD1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25B09DE38(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_25B09BD58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25B09DEE0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_25B09BD94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25B09DEE0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_25B09BDD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25B09DE8C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_25B09BE0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25B09DE8C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

BOOL sub_25B09BE98(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_25B09BEC8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_25B09BEF4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_25B09BFCC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_25B09D658(a1);

  *a2 = v3;
  return result;
}

unint64_t sub_25B09C00C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0x656372756F73;
    v5 = 0xD000000000000010;
    if (a1 != 2)
    {
      v5 = 0x736E6F6974706FLL;
    }

    if (a1)
    {
      v4 = 0x56646C697542736FLL;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD000000000000013;
    if (a1 != 7)
    {
      v1 = 0x6D6172676F6E6F6DLL;
    }

    if (a1 == 6)
    {
      v1 = 0xD000000000000017;
    }

    v2 = 1702125924;
    if (a1 != 4)
    {
      v2 = 0x7261646E656C6163;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_25B09C138@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25B09D690(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25B09C16C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25B09DF34(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_25B09C1A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25B09DF34(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_25B09C294(void *a1, int a2)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31BB8, &qword_25B0E8180);
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - v4;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31BC0, &qword_25B0E8188);
  v6 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31BC8, &qword_25B0E8190);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - v11;
  v13 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25B09DE38(v13, v14, v15);
  v16 = sub_25B0E3F70();
  v19 = (v10 + 8);
  if (v24)
  {
    v26 = 1;
    sub_25B09DE8C(v16, v17, v18);
    sub_25B0E3DC0();
    (*(v22 + 8))(v5, v23);
  }

  else
  {
    v25 = 0;
    sub_25B09DEE0(v16, v17, v18);
    sub_25B0E3DC0();
    (*(v6 + 8))(v8, v21);
  }

  return (*v19)(v12, v9);
}

uint64_t sub_25B09C550(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31C00, &qword_25B0E81A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25B09DF34(v9, v10, v11);
  v12 = sub_25B0E3F70();
  LOBYTE(v19) = *v3;
  v20 = 0;
  sub_25B09E0F0(v12, v13, v14);
  sub_25B0E3DF0();
  if (!v2)
  {
    LOBYTE(v19) = 1;
    sub_25B0E3DE0();
    LOBYTE(v19) = 2;
    v15 = sub_25B0E3DE0();
    v19 = *(v3 + 40);
    v20 = 3;
    sub_25B09E144(v15, v16, v17);
    sub_25B0E3DF0();
    type metadata accessor for SnapshotContext(0);
    LOBYTE(v19) = 4;
    sub_25B0E2440();
    sub_25B09E198(&qword_27FA31C18, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_25B0E3DF0();
    LOBYTE(v19) = 5;
    sub_25B0E24F0();
    sub_25B09E198(&qword_27FA31C20, MEMORY[0x277CC99E8], MEMORY[0x277CC99F0]);
    sub_25B0E3DF0();
    LOBYTE(v19) = 6;
    sub_25B0E3DD0();
    LOBYTE(v19) = 7;
    sub_25B0E3DE0();
    LOBYTE(v19) = 8;
    sub_25B0E3DD0();
  }

  return (*(v6 + 8))(v8, v5);
}

id sub_25B09C8F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v47 = sub_25B0E24F0();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v42 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_25B0E2440();
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v43 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31BD0, &qword_25B0E8198);
  v44 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v41 - v7;
  v49 = type metadata accessor for SnapshotContext(0);
  v9 = MEMORY[0x28223BE20](v49);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x25F860B80](v9);
  if (result)
  {
    v13 = result;
    sub_25B0E3740();

    v14 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_25B09DF34(v14, v15, v16);
    v17 = sub_25B0E3F60();
    if (v2)
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
    }

    else
    {
      v51 = 0;
      sub_25B09DF88(v17, v18, v19);
      v20 = v6;
      sub_25B0E3DA0();
      *v11 = v50;
      LOBYTE(v50) = 1;
      v21 = sub_25B0E3D90();
      v23 = v22;

      *(v11 + 1) = v21;
      *(v11 + 2) = v23;
      LOBYTE(v50) = 2;
      v24 = sub_25B0E3D90();
      *(v11 + 3) = v24;
      *(v11 + 4) = v25;
      v51 = 3;
      sub_25B09DFDC(v24, v25, v26);
      sub_25B0E3DA0();
      *(v11 + 5) = v50;
      LOBYTE(v50) = 4;
      sub_25B09E198(&qword_27FA31BF0, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
      v27 = v43;
      v28 = v48;
      sub_25B0E3DA0();
      (*(v46 + 32))(&v11[v49[8]], v27, v28);
      LOBYTE(v50) = 5;
      sub_25B09E198(&qword_27FA31BF8, MEMORY[0x277CC99E8], MEMORY[0x277CC9A00]);
      v29 = v42;
      v30 = v47;
      sub_25B0E3DA0();
      (*(v45 + 32))(&v11[v49[9]], v29, v30);
      LOBYTE(v50) = 6;
      v31 = sub_25B0E3D80();
      v32 = &v11[v49[10]];
      *v32 = v31;
      v32[1] = v33;
      LOBYTE(v50) = 7;
      v34 = sub_25B0E3D90();
      v35 = &v11[v49[11]];
      *v35 = v34;
      v35[1] = v36;
      LOBYTE(v50) = 8;
      v37 = sub_25B0E3D80();
      v39 = v38;
      v40 = &v11[v49[12]];
      (*(v44 + 8))(v8, v20);
      *v40 = v37;
      v40[1] = v39;
      sub_25B09E030(v11, v41);
      __swift_destroy_boxed_opaque_existential_1(a1);
      return sub_25B09E094(v11);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25B09D060(uint64_t a1)
{
  MEMORY[0x25F860A80](*v1);
  sub_25B0E3780();
  sub_25B0E3780();
  MEMORY[0x25F860A80](*(v1 + 5));
  v2 = type metadata accessor for SnapshotContext(0);
  sub_25B0E2440();
  sub_25B09E198(&qword_27FA31C28, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_25B0E36D0();
  sub_25B0E24F0();
  sub_25B09E198(&qword_27FA31C30, MEMORY[0x277CC99E8], MEMORY[0x277CC99F8]);
  sub_25B0E36D0();
  if (*&v1[*(v2 + 40) + 8])
  {
    sub_25B0E3F30();
    sub_25B0E3780();
  }

  else
  {
    sub_25B0E3F30();
  }

  sub_25B0E3780();
  if (!*&v1[*(v2 + 48) + 8])
  {
    return sub_25B0E3F30();
  }

  sub_25B0E3F30();

  return sub_25B0E3780();
}

uint64_t sub_25B09D22C@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_25B09D97C(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_25B09D2A8()
{
  sub_25B0E3F10();
  sub_25B09D060(v1);
  return sub_25B0E3F50();
}

uint64_t sub_25B09D2EC(uint64_t a1)
{
  sub_25B0E3F10();
  sub_25B09D060(v2);
  return sub_25B0E3F50();
}

uint64_t type metadata accessor for SnapshotContext(uint64_t a1)
{
  result = qword_27FA31C38;
  if (!qword_27FA31C38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_25B09D3C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31B70;
  if (!qword_27FA31B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31B70);
  }

  return result;
}

unint64_t sub_25B09D418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31B78;
  if (!qword_27FA31B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31B78);
  }

  return result;
}

unint64_t sub_25B09D46C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31B80;
  if (!qword_27FA31B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31B80);
  }

  return result;
}