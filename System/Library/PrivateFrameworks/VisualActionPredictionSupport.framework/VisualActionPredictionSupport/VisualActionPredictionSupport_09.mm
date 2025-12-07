char *sub_1D9F0C470(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75DA8, &qword_1D9F455E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D9F0C590(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74440, &unk_1D9F38700);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D9F0C694(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74438, &qword_1D9F455E0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1D9F0C798(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D98, &qword_1D9F455C8);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75DA0, &unk_1D9F455D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D9F0C8CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D90, &qword_1D9F455C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D9F0C9D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74400, &qword_1D9F386C0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1D9F0CAE4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CE8, &unk_1D9F454F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73288, &qword_1D9F334E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1D9F0CC18(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v11 = a11 >> 5;
  if (v11 <= 3)
  {
    if (a11 >> 5 > 1u)
    {
      if (v11 == 2)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v11)
      {
LABEL_16:
      }
    }

    goto LABEL_15;
  }

  if (a11 >> 5 > 5u)
  {
    if (v11 != 6)
    {
      return result;
    }

    goto LABEL_15;
  }

  if (v11 == 4)
  {
LABEL_15:

    goto LABEL_16;
  }

  return sub_1D9E743C0(result, a2, a3, a4);
}

uint64_t sub_1D9F0CD2C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v11 = a11 >> 5;
  if (v11 <= 3)
  {
    if (a11 >> 5 > 1u)
    {
      if (v11 == 2)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v11)
      {
LABEL_16:
      }
    }

    goto LABEL_15;
  }

  if (a11 >> 5 > 5u)
  {
    if (v11 != 6)
    {
      return result;
    }

    goto LABEL_15;
  }

  if (v11 == 4)
  {
LABEL_15:

    goto LABEL_16;
  }

  return sub_1D9E74440(result, a2, a3, a4);
}

void sub_1D9F0CE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }
}

uint64_t sub_1D9F0CEA4(uint64_t a1, unsigned int a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = a5;
  v7 = *v5;
  v48 = a2;
  v49 = a3;
  v50 = a4;
  v51 = a5;
  sub_1D9F2BAFC();
  List.hash(into:)(v47);
  v8 = sub_1D9F2BB4C();
  v44 = v7;
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  v42 = v7 + 56;
  if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_64:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47[0] = *v38;

    sub_1D9F13D5C(a2, a3, a4, v6, v10, isUniquelyReferenced_nonNull_native);
    *v38 = v47[0];
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = a4;
    *(a1 + 24) = v6;
    return 1;
  }

  v41 = ~v9;
  v11 = 0xED00007473694C20;
  v12 = 0x676E6970706F6853;
  v37 = (v6 + 40);
  v43 = v6;
  while (1)
  {
    v13 = (*(v44 + 48) + 32 * v10);
    v14 = *v13;
    if (v14 <= 1)
    {
      if (*v13)
      {
        v15 = 0x6569646572676E49;
      }

      else
      {
        v15 = 0x676E6970706F6853;
      }

      if (*v13)
      {
        v16 = 0xEB0000000073746ELL;
      }

      else
      {
        v16 = v11;
      }
    }

    else if (v14 == 2)
    {
      v16 = 0xE500000000000000;
      v15 = 0x6F44206F54;
    }

    else
    {
      if (v14 == 3)
      {
        v15 = 1970169165;
      }

      else
      {
        v15 = 0x726568744FLL;
      }

      if (v14 == 3)
      {
        v16 = 0xE400000000000000;
      }

      else
      {
        v16 = 0xE500000000000000;
      }
    }

    v18 = *(v13 + 1);
    v17 = *(v13 + 2);
    v19 = *(v13 + 3);
    if (a2 == 3)
    {
      v20 = 1970169165;
    }

    else
    {
      v20 = 0x726568744FLL;
    }

    if (a2 == 3)
    {
      v21 = 0xE400000000000000;
    }

    else
    {
      v21 = 0xE500000000000000;
    }

    if (a2 == 2)
    {
      v20 = 0x6F44206F54;
      v21 = 0xE500000000000000;
    }

    if (a2)
    {
      v12 = 0x6569646572676E49;
    }

    v22 = v11;
    if (a2)
    {
      v11 = 0xEB0000000073746ELL;
    }

    v23 = a2 <= 1u ? v12 : v20;
    v24 = a2 <= 1u ? v11 : v21;
    if (v15 == v23 && v16 == v24)
    {
    }

    else
    {
      v26 = sub_1D9F2BA1C();

      if ((v26 & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    if (v17)
    {
      if (!a4 || (v18 != a3 || v17 != a4) && (result = sub_1D9F2BA1C(), (result & 1) == 0))
      {
LABEL_49:

        v6 = v43;
        goto LABEL_4;
      }
    }

    else if (a4)
    {
      goto LABEL_49;
    }

    v27 = *(v19 + 16);
    v6 = v43;
    if (v27 == *(v43 + 16))
    {
      break;
    }

LABEL_3:

LABEL_4:
    v10 = (v10 + 1) & v41;
    v11 = v22;
    v12 = 0x676E6970706F6853;
    if (((*(v42 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_64;
    }
  }

  if (v27)
  {
    v28 = v19 == v43;
  }

  else
  {
    v28 = 1;
  }

  if (v28)
  {
LABEL_65:

    v33 = *(v44 + 48) + 32 * v10;
    v35 = *(v33 + 8);
    v34 = *(v33 + 16);
    v36 = *(v33 + 24);
    *a1 = *v33;
    *(a1 + 8) = v35;
    *(a1 + 16) = v34;
    *(a1 + 24) = v36;

    return 0;
  }

  else
  {
    v29 = (v19 + 40);
    v30 = v37;
    while (v27)
    {
      result = *(v29 - 1);
      if (result != *(v30 - 1) || *v29 != *v30)
      {
        result = sub_1D9F2BA1C();
        if ((result & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      v29 += 2;
      v30 += 2;
      if (!--v27)
      {
        goto LABEL_65;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D9F0D300(double *a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = *v4;
  sub_1D9F2BAFC();
  sub_1D9F2B18C();
  v10 = 0.0;
  if (a4 != 0.0)
  {
    v10 = a4;
  }

  MEMORY[0x1DA743920](*&v10);
  v11 = sub_1D9F2BB4C();
  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = *(v9 + 48);
    while (1)
    {
      v16 = v15 + 24 * v13;
      v17 = *(v16 + 16);
      v18 = *v16 == a2 && *(v16 + 8) == a3;
      if (v18 || (sub_1D9F2BA1C()) && v17 == a4)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    v21 = *(v9 + 48) + 24 * v13;
    v22 = *(v21 + 8);
    v23 = *(v21 + 16);
    *a1 = *v21;
    *(a1 + 1) = v22;
    *(a1 + 2) = v23;

    return 0;
  }

  else
  {
LABEL_13:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v4;

    sub_1D9F14174(a2, a3, v13, isUniquelyReferenced_nonNull_native, a4);
    *v4 = v24;
    *a1 = a2;
    *(a1 + 1) = a3;
    a1[2] = a4;
    return 1;
  }
}

uint64_t sub_1D9F0D4CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = a1;
  v5 = type metadata accessor for DateTimeSchedule(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1D9F2BAFC();
  DateTimeSchedule.hash(into:)(v20);
  v10 = sub_1D9F2BB4C();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_1D9F1BEE0(*(v9 + 48) + v14 * v12, v8, type metadata accessor for DateTimeSchedule);
      v15 = _s29VisualActionPredictionSupport16DateTimeScheduleV2eeoiySbAC_ACtFZ_0(v8, a2);
      sub_1D9F1BF48(v8, type metadata accessor for DateTimeSchedule);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1D9F1BF48(a2, type metadata accessor for DateTimeSchedule);
    sub_1D9F1BEE0(*(v9 + 48) + v14 * v12, v19, type metadata accessor for DateTimeSchedule);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D9F1BEE0(a2, v8, type metadata accessor for DateTimeSchedule);
    v20[0] = *v3;
    sub_1D9F14338(v8, v12, isUniquelyReferenced_nonNull_native);
    v17 = v19;
    *v3 = v20[0];
    sub_1D9F1BFA8(a2, v17, type metadata accessor for DateTimeSchedule);
    return 1;
  }
}

uint64_t sub_1D9F0D76C(double *a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = *v4;
  sub_1D9F2BAFC();
  v10 = 0.0;
  if (a4 != 0.0)
  {
    v10 = a4;
  }

  MEMORY[0x1DA743920](*&v10);
  sub_1D9F2B18C();
  v11 = sub_1D9F2BB4C();
  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = *(v9 + 48);
    while (1)
    {
      v16 = v15 + 24 * v13;
      if (*v16 == a4)
      {
        v17 = *(v16 + 8) == a2 && *(v16 + 16) == a3;
        if (v17 || (sub_1D9F2BA1C() & 1) != 0)
        {
          break;
        }
      }

      v13 = (v13 + 1) & v14;
      if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    v18 = *(v9 + 48) + 24 * v13;
    v20 = *(v18 + 8);
    v19 = *(v18 + 16);
    *a1 = *v18;
    *(a1 + 1) = v20;
    *(a1 + 2) = v19;

    return 0;
  }

  else
  {
LABEL_13:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v4;

    sub_1D9F1457C(a2, a3, v13, isUniquelyReferenced_nonNull_native, a4);
    *v4 = v23;
    *a1 = a4;
    *(a1 + 1) = a2;
    *(a1 + 2) = a3;
    return 1;
  }
}

uint64_t sub_1D9F0D970(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  sub_1D9F2BAFC();
  sub_1D9F2B18C();
  sub_1D9F2BB1C();
  if (a5)
  {

    sub_1D9F2B18C();
  }

  v11 = sub_1D9F2BB4C();
  v12 = v10 + 56;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_20:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v29;

    sub_1D9F14924(a2, a3, a4, a5, v14, isUniquelyReferenced_nonNull_native);
    *v29 = v31;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    a1[3] = a5;
    return 1;
  }

  v15 = ~v13;
  v28 = v10;
  v16 = *(v10 + 48);
  while (1)
  {
    v17 = (v16 + 32 * v14);
    v19 = v17[2];
    v18 = v17[3];
    v20 = *v17 == a2 && v17[1] == a3;
    if (!v20 && (sub_1D9F2BA1C() & 1) == 0)
    {
      goto LABEL_6;
    }

    if (v18)
    {
      break;
    }

    if (!a5)
    {
      goto LABEL_21;
    }

LABEL_6:
    v14 = (v14 + 1) & v15;
    if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  if (!a5)
  {
    goto LABEL_6;
  }

  v21 = v19 == a4 && v18 == a5;
  if (!v21 && (sub_1D9F2BA1C() & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_21:

  v24 = (*(v28 + 48) + 32 * v14);
  v25 = v24[1];
  v27 = v24[2];
  v26 = v24[3];
  *a1 = *v24;
  a1[1] = v25;
  a1[2] = v27;
  a1[3] = v26;

  return 0;
}

uint64_t sub_1D9F0DBAC(__int128 *a1, __int128 *a2)
{
  v5 = *v2;
  sub_1D9F2BAFC();
  v6 = *(a2 + 2);
  v7 = *(a2 + 3);
  v8 = *(a2 + 4);
  v9 = *(a2 + 5);
  v10 = *(a2 + 6);
  v11 = *(a2 + 7);
  v12 = *(a2 + 8);
  v13 = *(a2 + 9);
  v89 = *(a2 + 1);
  v90 = *a2;
  *&v93 = *a2;
  *(&v93 + 1) = v89;
  v83 = v6;
  v84 = v9;
  *&v94 = v6;
  *(&v94 + 1) = v7;
  v91 = v7;
  v81 = v8;
  v82 = v11;
  *&v95 = v8;
  *(&v95 + 1) = v9;
  v75 = v12;
  v76 = v10;
  *&v96 = v10;
  *(&v96 + 1) = v11;
  *&v97 = v12;
  *(&v97 + 1) = v13;
  v80 = v13;
  PostalAddress.hash(into:)(v92);
  v14 = *(a2 + 10);
  v15 = *(a2 + 11);
  v78 = a2;
  v79 = a1;
  v77 = v2;
  sub_1D9F2BB1C();
  if (v15)
  {

    sub_1D9F2B18C();
  }

  v16 = sub_1D9F2BB4C();
  v17 = v5 + 56;
  v18 = -1 << *(v5 + 32);
  v19 = v16 & ~v18;
  if ((*(v5 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
  {
    v73 = v14;
    v74 = v15;
    v20 = ~v18;
    v72 = v5;
    v21 = *(v5 + 48);
    v22 = v89;
    v86 = ~v18;
    v87 = v5 + 56;
    v85 = v21;
    do
    {
      v23 = (v21 + 96 * v19);
      v24 = v23[1];
      v25 = v23[2];
      v27 = v23[3];
      v26 = v23[4];
      v29 = v23[5];
      v28 = v23[6];
      v31 = v23[7];
      v30 = v23[8];
      v33 = v23[9];
      v32 = v23[10];
      v34 = v23[11];
      if (v24)
      {
        if (!v22)
        {
          goto LABEL_6;
        }

        if (*v23 != v90 || v24 != v22)
        {
          v88 = v23[4];
          v36 = v23[7];
          v37 = v23[6];
          v38 = v23[9];
          v39 = v23[8];
          v40 = v23[11];
          v41 = v23[10];
          v42 = sub_1D9F2BA1C();
          v32 = v41;
          v34 = v40;
          v30 = v39;
          v33 = v38;
          v28 = v37;
          v31 = v36;
          v17 = v87;
          v26 = v88;
          v21 = v85;
          v20 = v86;
          v22 = v89;
          if ((v42 & 1) == 0)
          {
            goto LABEL_6;
          }
        }
      }

      else if (v22)
      {
        goto LABEL_6;
      }

      if (v27)
      {
        if (!v91)
        {
          goto LABEL_6;
        }

        if (v25 != v83 || v27 != v91)
        {
          v44 = v34;
          v45 = v32;
          v46 = sub_1D9F2BA1C();
          v32 = v45;
          v34 = v44;
          v21 = v85;
          v20 = v86;
          v17 = v87;
          v22 = v89;
          if ((v46 & 1) == 0)
          {
            goto LABEL_6;
          }
        }
      }

      else if (v91)
      {
        goto LABEL_6;
      }

      if (v29)
      {
        if (!v84)
        {
          goto LABEL_6;
        }

        if (v26 != v81 || v29 != v84)
        {
          v48 = v34;
          v49 = v32;
          v50 = sub_1D9F2BA1C();
          v32 = v49;
          v34 = v48;
          v21 = v85;
          v20 = v86;
          v17 = v87;
          v22 = v89;
          if ((v50 & 1) == 0)
          {
            goto LABEL_6;
          }
        }
      }

      else if (v84)
      {
        goto LABEL_6;
      }

      if (v31)
      {
        if (!v82)
        {
          goto LABEL_6;
        }

        if (v28 != v76 || v31 != v82)
        {
          v52 = v34;
          v53 = v32;
          v54 = sub_1D9F2BA1C();
          v32 = v53;
          v34 = v52;
          v21 = v85;
          v20 = v86;
          v17 = v87;
          v22 = v89;
          if ((v54 & 1) == 0)
          {
            goto LABEL_6;
          }
        }
      }

      else if (v82)
      {
        goto LABEL_6;
      }

      if (v33)
      {
        if (!v80)
        {
          goto LABEL_6;
        }

        if (v30 != v75 || v33 != v80)
        {
          v55 = v32;
          v56 = sub_1D9F2BA1C();
          v32 = v55;
          v21 = v85;
          v20 = v86;
          v17 = v87;
          v22 = v89;
          if ((v56 & 1) == 0)
          {
            goto LABEL_6;
          }
        }
      }

      else if (v80)
      {
        goto LABEL_6;
      }

      if (v34)
      {
        if (v74)
        {
          if (v32 == v73 && v34 == v74 || (v57 = sub_1D9F2BA1C(), v21 = v85, v20 = v86, v17 = v87, v22 = v89, (v57 & 1) != 0))
          {
LABEL_55:
            sub_1D9E51FE8(v78, &qword_1ECB731D0, &qword_1D9F42160);
            v58 = (*(v72 + 48) + 96 * v19);
            v59 = v58[1];
            v93 = *v58;
            v94 = v59;
            v60 = v58[5];
            v62 = v58[2];
            v61 = v58[3];
            v97 = v58[4];
            v98 = v60;
            v95 = v62;
            v96 = v61;
            v63 = v58[1];
            *v79 = *v58;
            v79[1] = v63;
            v64 = v58[2];
            v65 = v58[3];
            v66 = v58[5];
            v79[4] = v58[4];
            v79[5] = v66;
            v79[2] = v64;
            v79[3] = v65;
            sub_1D9E51E70(&v93, v92, &qword_1ECB731D0, &qword_1D9F42160);
            return 0;
          }
        }
      }

      else if (!v74)
      {
        goto LABEL_55;
      }

LABEL_6:
      v19 = (v19 + 1) & v20;
    }

    while (((*(v17 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v92[0] = *v77;
  sub_1D9E51E70(v78, &v93, &qword_1ECB731D0, &qword_1D9F42160);
  sub_1D9F14B44(v78, v19, isUniquelyReferenced_nonNull_native);
  *v77 = v92[0];
  v69 = v78[3];
  v79[2] = v78[2];
  v79[3] = v69;
  v70 = v78[5];
  v79[4] = v78[4];
  v79[5] = v70;
  v71 = v78[1];
  result = 1;
  *v79 = *v78;
  v79[1] = v71;
  return result;
}

uint64_t sub_1D9F0E0AC(void *a1, void *a2)
{
  v4 = *v2;
  sub_1D9F2BAFC();
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  sub_1D9F2B18C();
  v39 = v8;
  v40 = v7;
  sub_1D9F2B18C();
  v9 = a2[4];
  v10 = a2[5];
  v35 = a2;
  sub_1D9F2BB1C();
  if (v10)
  {

    sub_1D9F2B18C();
  }

  v11 = sub_1D9F2BB4C();
  v12 = -1 << *(v4 + 32);
  v13 = v11 & ~v12;
  v38 = v4 + 56;
  if ((*(v4 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v37 = v9;
    v14 = ~v12;
    v33 = v4;
    v15 = *(v4 + 48);
    do
    {
      v16 = (v15 + 48 * v13);
      v18 = v16[2];
      v17 = v16[3];
      v20 = v16[4];
      v19 = v16[5];
      v21 = *v16 == v5 && v16[1] == v6;
      if (v21 || (sub_1D9F2BA1C() & 1) != 0)
      {
        v22 = v18 == v40 && v17 == v39;
        if (v22 || (sub_1D9F2BA1C() & 1) != 0)
        {
          if (v19)
          {
            if (v10)
            {
              v23 = v20 == v37 && v19 == v10;
              if (v23 || (sub_1D9F2BA1C() & 1) != 0)
              {
LABEL_24:
                sub_1D9E51FE8(v35, &qword_1ECB756D8, &qword_1D9F42170);
                v24 = (*(v33 + 48) + 48 * v13);
                v25 = v24[1];
                v26 = v24[2];
                v27 = v24[3];
                v29 = v24[4];
                v28 = v24[5];
                *a1 = *v24;
                a1[1] = v25;
                a1[2] = v26;
                a1[3] = v27;
                a1[4] = v29;
                a1[5] = v28;

                return 0;
              }
            }
          }

          else if (!v10)
          {
            goto LABEL_24;
          }
        }
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v38 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v34;
  sub_1D9E51E70(v35, v42, &qword_1ECB756D8, &qword_1D9F42170);
  sub_1D9F14FC8(v35, v13, isUniquelyReferenced_nonNull_native);
  *v34 = v41;
  v32 = v35[1];
  *a1 = *v35;
  *(a1 + 1) = v32;
  *(a1 + 2) = v35[2];
  return 1;
}

uint64_t sub_1D9F0E36C(uint64_t a1, void *a2)
{
  v70 = a1;
  v4 = type metadata accessor for DateTimeSchedule(0);
  v81 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v80 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v84 = &v62 - v7;
  v8 = sub_1D9F2AC4C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73890, &qword_1D9F38430);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v62 - v13;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74430, &unk_1D9F386F0);
  MEMORY[0x1EEE9AC00](v72);
  v16 = &v62 - v15;
  v73 = type metadata accessor for CalendarEvent(0);
  v17 = *(v73 - 8);
  v18 = MEMORY[0x1EEE9AC00](v73);
  v20 = (&v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v66 = (&v62 - v21);
  v67 = v2;
  v22 = *v2;
  sub_1D9F2BAFC();
  CalendarEvent.hash(into:)(v88);
  v23 = sub_1D9F2BB4C();
  v24 = v22 + 56;
  v82 = v22 + 56;
  v83 = v22;
  v25 = -1 << *(v22 + 32);
  v26 = v23 & ~v25;
  if ((*(v24 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
  {
    v74 = v16;
    v71 = v14;
    v64 = v11;
    v69 = v8;
    v86 = ~v25;
    v27 = a2[1];
    v85 = *a2;
    v68 = (v9 + 48);
    v63 = (v9 + 32);
    v65 = (v9 + 8);
    v87 = *(v17 + 72);
    v28 = a2;
    v30 = v82;
    v29 = v83;
    while (1)
    {
      v31 = v87 * v26;
      sub_1D9F1BEE0(*(v29 + 48) + v87 * v26, v20, type metadata accessor for CalendarEvent);
      v32 = v20[1];
      if (v32)
      {
        if (!v27)
        {
          goto LABEL_4;
        }

        v33 = *v20 == v85 && v32 == v27;
        if (!v33 && (sub_1D9F2BA1C() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v27)
      {
        goto LABEL_4;
      }

      v34 = v20[3];
      v35 = v28[3];
      if (v34)
      {
        if (!v35 || (v20[2] != v28[2] || v34 != v35) && (sub_1D9F2BA1C() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v35)
      {
        goto LABEL_4;
      }

      v36 = v20[5];
      v37 = v28[5];
      if (v36)
      {
        if (!v37 || (v20[4] != v28[4] || v36 != v37) && (sub_1D9F2BA1C() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v37)
      {
        goto LABEL_4;
      }

      v38 = *(v73 + 28);
      v39 = *(v72 + 48);
      v40 = v74;
      sub_1D9E51E70(v20 + v38, v74, &qword_1ECB73890, &qword_1D9F38430);
      sub_1D9E51E70(v28 + v38, v40 + v39, &qword_1ECB73890, &qword_1D9F38430);
      v41 = *v68;
      v42 = v69;
      if ((*v68)(v40, 1, v69) == 1)
      {
        v43 = v41(v40 + v39, 1, v42);
        v29 = v83;
        if (v43 != 1)
        {
          goto LABEL_31;
        }

        result = sub_1D9E51FE8(v40, &qword_1ECB73890, &qword_1D9F38430);
        v30 = v82;
      }

      else
      {
        sub_1D9E51E70(v40, v71, &qword_1ECB73890, &qword_1D9F38430);
        if (v41(v40 + v39, 1, v42) == 1)
        {
          (*v65)(v71, v42);
          v40 = v74;
          v29 = v83;
LABEL_31:
          sub_1D9E51FE8(v40, &qword_1ECB74430, &unk_1D9F386F0);
          v30 = v82;
          goto LABEL_4;
        }

        v45 = v64;
        (*v63)(v64, &v74[v39], v42);
        sub_1D9F1C010(&qword_1ECB731C0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
        v46 = sub_1D9F2B10C();
        v47 = *v65;
        (*v65)(v45, v42);
        v47(v71, v42);
        result = sub_1D9E51FE8(v74, &qword_1ECB73890, &qword_1D9F38430);
        v30 = v82;
        v29 = v83;
        if ((v46 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      v48 = *(v73 + 32);
      v49 = *(v20 + v48);
      v78 = *(v28 + v48);
      v79 = v49;
      v50 = *(v78 + 16);
      v77 = *(v49 + 16);
      if (v77 == v50)
      {
        if (!v77 || v79 == v78)
        {
LABEL_41:
          sub_1D9F1BF48(v20, type metadata accessor for CalendarEvent);
          sub_1D9F1BF48(v28, type metadata accessor for CalendarEvent);
          sub_1D9F1BEE0(*(v29 + 48) + v31, v70, type metadata accessor for CalendarEvent);
          return 0;
        }

        else
        {
          v51 = 0;
          v52 = (*(v81 + 80) + 32) & ~*(v81 + 80);
          v76 = v79 + v52;
          v75 = v78 + v52;
          while (v51 < *(v79 + 16))
          {
            v53 = *(v81 + 72) * v51;
            result = sub_1D9F1BEE0(v76 + v53, v84, type metadata accessor for DateTimeSchedule);
            if (v51 >= *(v78 + 16))
            {
              goto LABEL_46;
            }

            v54 = v84;
            v55 = v80;
            sub_1D9F1BEE0(v75 + v53, v80, type metadata accessor for DateTimeSchedule);
            v56 = _s29VisualActionPredictionSupport16DateTimeScheduleV2eeoiySbAC_ACtFZ_0(v54, v55);
            v57 = v55;
            v58 = v54;
            v29 = v83;
            sub_1D9F1BF48(v57, type metadata accessor for DateTimeSchedule);
            v30 = v82;
            result = sub_1D9F1BF48(v58, type metadata accessor for DateTimeSchedule);
            if ((v56 & 1) == 0)
            {
              goto LABEL_4;
            }

            if (v77 == ++v51)
            {
              goto LABEL_41;
            }
          }

          __break(1u);
LABEL_46:
          __break(1u);
        }

        return result;
      }

LABEL_4:
      sub_1D9F1BF48(v20, type metadata accessor for CalendarEvent);
      v26 = (v26 + 1) & v86;
      if (((*(v30 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
      {
        goto LABEL_43;
      }
    }
  }

  v28 = a2;
LABEL_43:
  v59 = v67;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v61 = v66;
  sub_1D9F1BEE0(v28, v66, type metadata accessor for CalendarEvent);
  v88[0] = *v59;
  sub_1D9F15240(v61, v26, isUniquelyReferenced_nonNull_native);
  *v59 = v88[0];
  sub_1D9F1BFA8(v28, v70, type metadata accessor for CalendarEvent);
  return 1;
}

uint64_t sub_1D9F0ECB4(uint64_t a1, uint64_t a2)
{
  v116 = a1;
  v4 = type metadata accessor for Contact.Identity.Person(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v119 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Contact.Identity(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v123 = (&v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v122 = &v91 - v9;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75858, &qword_1D9F42FE8);
  MEMORY[0x1EEE9AC00](v128);
  v11 = &v91 - v10;
  v12 = type metadata accessor for Contact(0);
  v126 = *(v12 - 1);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v114 = &v91 - v16;
  v115 = v2;
  v17 = *v2;
  sub_1D9F2BAFC();
  Contact.Identity.hash(into:)(&v131);
  v18 = *(a2 + v12[5]);
  sub_1D9E4F0BC(&v131, v18);
  v19 = *(a2 + v12[6]);
  sub_1D9E4F0BC(&v131, v19);
  v20 = *(a2 + v12[7]);
  sub_1D9E4EEB4(&v131, v20);
  v109 = *(a2 + v12[8]);
  sub_1D9E4EDA4(&v131, v109);
  v121 = v12;
  v21 = v12[9];
  v130 = a2;
  v22 = *(a2 + v21);
  sub_1D9E4EBD0(&v131, v22);
  v23 = sub_1D9F2BB4C();
  v129 = v17;
  v24 = -1 << *(v17 + 32);
  v25 = v23 & ~v24;
  v127 = v17 + 56;
  if (((*(v17 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
  {
LABEL_120:
    v87 = v115;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v89 = v130;
    v90 = v114;
    sub_1D9F1BEE0(v130, v114, type metadata accessor for Contact);
    v131 = *v87;
    sub_1D9F15ACC(v90, v25, isUniquelyReferenced_nonNull_native);
    *v87 = v131;
    sub_1D9F1BFA8(v89, v116, type metadata accessor for Contact);
    return 1;
  }

  v100 = v22;
  v124 = ~v24;
  v126 = *(v126 + 72);
  v120 = v18;
  v112 = (v18 + 56);
  v117 = v19;
  v108 = (v19 + 56);
  v113 = v20;
  v101 = (v20 + 64);
  v125 = v6;
  while (1)
  {
    v26 = v126 * v25;
    sub_1D9F1BEE0(*(v129 + 48) + v126 * v25, v15, type metadata accessor for Contact);
    v27 = &v11[*(v128 + 48)];
    sub_1D9F1BEE0(v15, v11, type metadata accessor for Contact.Identity);
    sub_1D9F1BEE0(v130, v27, type metadata accessor for Contact.Identity);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v28 = v123;
      sub_1D9F1BEE0(v11, v123, type metadata accessor for Contact.Identity);
      v29 = *v28;
      v30 = v28[1];
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v31 = *(v27 + 1);
        if (v30)
        {
          if (!v31)
          {

LABEL_4:

LABEL_5:
            sub_1D9F1BF48(v11, type metadata accessor for Contact.Identity);
            goto LABEL_6;
          }

          if (v29 != *v27 || v30 != v31)
          {
            v33 = sub_1D9F2BA1C();

            if ((v33 & 1) == 0)
            {
              goto LABEL_5;
            }

            goto LABEL_27;
          }
        }

        else
        {

          if (v31)
          {
            goto LABEL_4;
          }
        }

        goto LABEL_27;
      }

LABEL_20:
      sub_1D9E51FE8(v11, &qword_1ECB75858, &qword_1D9F42FE8);
      goto LABEL_6;
    }

    v34 = v122;
    sub_1D9F1BEE0(v11, v122, type metadata accessor for Contact.Identity);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D9F1BF48(v34, type metadata accessor for Contact.Identity.Person);
      goto LABEL_20;
    }

    v35 = v119;
    sub_1D9F1BFA8(v27, v119, type metadata accessor for Contact.Identity.Person);
    v36 = _s29VisualActionPredictionSupport7ContactV8IdentityO6PersonV2eeoiySbAG_AGtFZ_0(v34, v35);
    sub_1D9F1BF48(v35, type metadata accessor for Contact.Identity.Person);
    sub_1D9F1BF48(v34, type metadata accessor for Contact.Identity.Person);
    if ((v36 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_27:
    v118 = v26;
    result = sub_1D9F1BF48(v11, type metadata accessor for Contact.Identity);
    v38 = *&v15[v121[5]];
    v39 = *(v38 + 16);
    if (v39 != *(v120 + 16))
    {
      goto LABEL_6;
    }

    if (v39)
    {
      v40 = v38 == v120;
    }

    else
    {
      v40 = 1;
    }

    if (!v40)
    {
      v47 = (v38 + 56);
      v48 = v112;
      while (v39)
      {
        result = *(v47 - 3);
        v50 = *(v47 - 1);
        v49 = *v47;
        v51 = *(v48 - 1);
        v52 = *v48;
        if (result != *(v48 - 3) || *(v47 - 2) != *(v48 - 2))
        {
          result = sub_1D9F2BA1C();
          if ((result & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        if (v49)
        {
          if (!v52)
          {
            goto LABEL_6;
          }

          if (v50 != v51 || v49 != v52)
          {
            result = sub_1D9F2BA1C();
            if ((result & 1) == 0)
            {
              goto LABEL_6;
            }
          }
        }

        else if (v52)
        {
          goto LABEL_6;
        }

        v48 += 4;
        v47 += 4;
        if (!--v39)
        {
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_122:
      sub_1D9F1BF48(v15, type metadata accessor for Contact);
      sub_1D9F1BF48(v130, type metadata accessor for Contact);
      sub_1D9F1BEE0(*(v129 + 48) + v118, v116, type metadata accessor for Contact);
      return 0;
    }

LABEL_33:
    v41 = *&v15[v121[6]];
    v42 = *(v41 + 16);
    if (v42 != *(v117 + 16))
    {
      goto LABEL_6;
    }

    if (v42 && v41 != v117)
    {
      break;
    }

LABEL_39:
    v44 = *&v15[v121[7]];
    v45 = *(v44 + 16);
    if (v45 == *(v113 + 16))
    {
      if (v45)
      {
        v46 = v44 == v113;
      }

      else
      {
        v46 = 1;
      }

      if (!v46)
      {
        v61 = (v44 + 64);
        v62 = v101;
        while (v45)
        {
          v63 = *(v61 - 3);
          v64 = *(v61 - 2);
          v65 = *(v61 - 1);
          v66 = *v61;
          v67 = v61[1];
          v68 = v61[2];
          v69 = v61[3];
          v107 = v61[4];
          v70 = v61[5];
          v102 = v61[6];
          v110 = v61[7];
          v71 = *(v62 - 3);
          v72 = *(v62 - 2);
          v74 = *(v62 - 1);
          v73 = *v62;
          v76 = v62[1];
          v75 = v62[2];
          v77 = v62[3];
          v106 = v62[4];
          v78 = v62[5];
          v103 = v62[6];
          v111 = v62[7];
          if (v63)
          {
            if (!v71)
            {
              goto LABEL_6;
            }

            result = *(v61 - 4);
            if (result != *(v62 - 4) || v63 != v71)
            {
              v96 = v73;
              v105 = v70;
              v79 = v78;
              v99 = v69;
              v80 = v68;
              v104 = v77;
              v81 = v75;
              v98 = v67;
              v95 = v66;
              v97 = v76;
              v94 = v65;
              v93 = v64;
              v92 = v72;
              result = sub_1D9F2BA1C();
              v72 = v92;
              v64 = v93;
              v65 = v94;
              v73 = v96;
              v76 = v97;
              v66 = v95;
              v67 = v98;
              v75 = v81;
              v77 = v104;
              v68 = v80;
              v69 = v99;
              v78 = v79;
              v70 = v105;
              if ((result & 1) == 0)
              {
                goto LABEL_6;
              }
            }
          }

          else if (v71)
          {
            goto LABEL_6;
          }

          if (v65)
          {
            if (!v74)
            {
              goto LABEL_6;
            }

            if (v64 != v72 || v65 != v74)
            {
              v96 = v73;
              v105 = v70;
              v99 = v69;
              v104 = v77;
              v82 = v75;
              v98 = v67;
              v83 = v66;
              v97 = v76;
              result = sub_1D9F2BA1C();
              v73 = v96;
              v76 = v97;
              v66 = v83;
              v67 = v98;
              v75 = v82;
              v77 = v104;
              v69 = v99;
              v70 = v105;
              if ((result & 1) == 0)
              {
                goto LABEL_6;
              }
            }
          }

          else if (v74)
          {
            goto LABEL_6;
          }

          if (v67)
          {
            if (!v76)
            {
              goto LABEL_6;
            }

            if (v66 != v73 || v67 != v76)
            {
              v105 = v70;
              v84 = v69;
              v104 = v77;
              v85 = v75;
              result = sub_1D9F2BA1C();
              v75 = v85;
              v77 = v104;
              v69 = v84;
              v70 = v105;
              if ((result & 1) == 0)
              {
                goto LABEL_6;
              }
            }
          }

          else if (v76)
          {
            goto LABEL_6;
          }

          if (v69)
          {
            if (!v77)
            {
              goto LABEL_6;
            }

            if (v68 != v75 || v69 != v77)
            {
              v86 = v70;
              result = sub_1D9F2BA1C();
              v70 = v86;
              if ((result & 1) == 0)
              {
                goto LABEL_6;
              }
            }
          }

          else if (v77)
          {
            goto LABEL_6;
          }

          if (v70)
          {
            if (!v78)
            {
              goto LABEL_6;
            }

            if (v107 != v106 || v70 != v78)
            {
              result = sub_1D9F2BA1C();
              if ((result & 1) == 0)
              {
                goto LABEL_6;
              }
            }
          }

          else if (v78)
          {
            goto LABEL_6;
          }

          if (v110)
          {
            if (!v111)
            {
              goto LABEL_6;
            }

            if (v102 != v103 || v110 != v111)
            {
              result = sub_1D9F2BA1C();
              if ((result & 1) == 0)
              {
                goto LABEL_6;
              }
            }
          }

          else if (v111)
          {
            goto LABEL_6;
          }

          v61 += 12;
          v62 += 12;
          if (!--v45)
          {
            goto LABEL_45;
          }
        }

        goto LABEL_124;
      }

LABEL_45:
      if (sub_1D9E4A370(*&v15[v121[8]], v109) & 1) != 0 && (sub_1D9E4A49C(*&v15[v121[9]], v100))
      {
        goto LABEL_122;
      }
    }

LABEL_6:
    sub_1D9F1BF48(v15, type metadata accessor for Contact);
    v25 = (v25 + 1) & v124;
    if (((*(v127 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
    {
      goto LABEL_120;
    }
  }

  v54 = (v41 + 56);
  v55 = v108;
  while (v42)
  {
    result = *(v54 - 3);
    v57 = *(v54 - 1);
    v56 = *v54;
    v58 = *(v55 - 1);
    v59 = *v55;
    if (result != *(v55 - 3) || *(v54 - 2) != *(v55 - 2))
    {
      result = sub_1D9F2BA1C();
      if ((result & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    if (v56)
    {
      if (!v59)
      {
        goto LABEL_6;
      }

      if (v57 != v58 || v56 != v59)
      {
        result = sub_1D9F2BA1C();
        if ((result & 1) == 0)
        {
          goto LABEL_6;
        }
      }
    }

    else if (v59)
    {
      goto LABEL_6;
    }

    v55 += 4;
    v54 += 4;
    if (!--v42)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
  return result;
}

uint64_t sub_1D9F0F938(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *v2;
  v5 = *(a2 + 1);
  v45 = *a2;
  v46 = v5;
  v47 = *(a2 + 2);
  v48 = *(a2 + 6);
  sub_1D9F2BAFC();
  Identification.hash(into:)(v44);
  v6 = sub_1D9F2BB4C();
  v42 = v4 + 56;
  v43 = v4;
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  v32 = a2;
  if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_50:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v45 = *v31;
    sub_1D9F1BDDC(v32, v44);
    sub_1D9F166D8(v32, v8, isUniquelyReferenced_nonNull_native);
    *v31 = v45;
    v25 = *(v32 + 1);
    *a1 = *v32;
    *(a1 + 16) = v25;
    *(a1 + 32) = *(v32 + 2);
    *(a1 + 48) = *(v32 + 6);
    return 1;
  }

  v41 = ~v7;
  v9 = *a2;
  v39 = *(a2 + 2);
  v37 = *(a2 + 1);
  v38 = *(a2 + 4);
  v34 = *(a2 + 5);
  v35 = *(a2 + 3);
  v36 = *(a2 + 6);
  v40 = v9;
  while (1)
  {
    v10 = *(v43 + 48) + 56 * v8;
    if (*v10)
    {
      if (*v10 == 1)
      {
        v11 = 0xE600000000000000;
        v12 = 0x72656B636F4CLL;
        if (!v9)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v11 = 0xE700000000000000;
        v12 = 0x676E696B726150;
        if (!v9)
        {
LABEL_15:
          v14 = 0xE400000000000000;
          v13 = 1768319319;
          goto LABEL_16;
        }
      }
    }

    else
    {
      v11 = 0xE400000000000000;
      v12 = 1768319319;
      if (!v9)
      {
        goto LABEL_15;
      }
    }

    v13 = v9 == 1 ? 0x72656B636F4CLL : 0x676E696B726150;
    v14 = v9 == 1 ? 0xE600000000000000 : 0xE700000000000000;
LABEL_16:
    v16 = *(v10 + 8);
    v15 = *(v10 + 16);
    v18 = *(v10 + 24);
    v17 = *(v10 + 32);
    v20 = *(v10 + 40);
    v19 = *(v10 + 48);
    if (v12 == v13 && v11 == v14)
    {
    }

    else
    {
      v21 = sub_1D9F2BA1C();

      if ((v21 & 1) == 0)
      {

        goto LABEL_45;
      }
    }

    if (v15)
    {
      if (!v39 || (v16 == v37 ? (v22 = v15 == v39) : (v22 = 0), !v22 && (sub_1D9F2BA1C() & 1) == 0))
      {
LABEL_43:

        goto LABEL_44;
      }
    }

    else if (v39)
    {
      goto LABEL_43;
    }

    if (v17)
    {
      if (!v38 || (v18 != v35 || v17 != v38) && (sub_1D9F2BA1C() & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    else if (v38)
    {
      goto LABEL_43;
    }

    if (!v19)
    {

      if (!v36)
      {
        goto LABEL_52;
      }

LABEL_44:

LABEL_45:

      goto LABEL_46;
    }

    if (!v36)
    {
      goto LABEL_43;
    }

    if (v20 == v34 && v19 == v36)
    {
      break;
    }

    v23 = sub_1D9F2BA1C();

    if (v23)
    {
      goto LABEL_53;
    }

LABEL_46:
    v8 = (v8 + 1) & v41;
    v9 = v40;
    if (((*(v42 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_50;
    }
  }

LABEL_52:

LABEL_53:
  sub_1D9F1BE38(v32);
  v27 = *(v43 + 48) + 56 * v8;
  v28 = *(v27 + 8);
  v29 = *(v27 + 48);
  *a1 = *v27;
  *(a1 + 8) = v28;
  v30 = *(v27 + 32);
  *(a1 + 16) = *(v27 + 16);
  *(a1 + 32) = v30;
  *(a1 + 48) = v29;

  return 0;
}

uint64_t sub_1D9F0FDE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8)
{
  v13 = *v8;
  sub_1D9F2BAFC();
  sub_1D9F2B18C();
  sub_1D9F2B18C();
  v14 = sub_1D9F2BB4C();
  v15 = v13 + 56;
  v16 = -1 << *(v13 + 32);
  v17 = v14 & ~v16;
  if ((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v18 = ~v16;
    v31 = v13;
    v19 = *(v13 + 48);
    while (1)
    {
      v20 = (v19 + 32 * v17);
      v21 = v20[2];
      v22 = v20[3];
      v23 = *v20 == a2 && v20[1] == a3;
      if (v23 || (sub_1D9F2BA1C() & 1) != 0)
      {
        v24 = v21 == a4 && v22 == a5;
        if (v24 || (sub_1D9F2BA1C() & 1) != 0)
        {
          break;
        }
      }

      v17 = (v17 + 1) & v18;
      if (((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v25 = (*(v31 + 48) + 32 * v17);
    v26 = v25[1];
    v27 = v25[2];
    v28 = v25[3];
    *a1 = *v25;
    a1[1] = v26;
    a1[2] = v27;
    a1[3] = v28;

    return 0;
  }

  else
  {
LABEL_15:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *v35;

    sub_1D9F1473C(a2, a3, a4, a5, v17, isUniquelyReferenced_nonNull_native, a6, a7, a8);
    *v35 = v37;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    a1[3] = a5;
    return 1;
  }
}

uint64_t sub_1D9F0FFF0(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  v5 = a2[3];
  v6 = a2[1];
  v49 = a2[2];
  v50 = v5;
  v7 = a2[3];
  v51 = a2[4];
  v8 = a2[1];
  v47 = *a2;
  v48 = v8;
  v9 = *v2;
  v55 = v49;
  v56 = v7;
  v57 = a2[4];
  v52 = *(a2 + 80);
  v58 = *(a2 + 80);
  v53 = v47;
  v54 = v6;
  sub_1D9F2BAFC();
  Transaction.hash(into:)(v45);
  v10 = sub_1D9F2BB4C();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (1)
    {
      v14 = *(v9 + 48) + 88 * v12;
      v15 = *(v14 + 16);
      v45[0] = *v14;
      v45[1] = v15;
      v17 = *(v14 + 48);
      v16 = *(v14 + 64);
      v18 = *(v14 + 32);
      v46 = *(v14 + 80);
      v45[3] = v17;
      v45[4] = v16;
      v45[2] = v18;
      v39 = *v14;
      v40 = *(v14 + 16);
      v19 = *(v14 + 32);
      v20 = *(v14 + 48);
      v21 = *(v14 + 64);
      v44 = *(v14 + 80);
      v42 = v20;
      v43 = v21;
      v41 = v19;
      sub_1D9E77240(v45, v37);
      v22 = _s29VisualActionPredictionSupport11TransactionV2eeoiySbAC_ACtFZ_0(&v39, &v47);
      v55 = v41;
      v56 = v42;
      v57 = v43;
      v58 = v44;
      v53 = v39;
      v54 = v40;
      sub_1D9E77278(&v53);
      if (v22)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v37[3] = v50;
    v37[4] = v51;
    v38 = v52;
    v37[0] = v47;
    v37[1] = v48;
    v37[2] = v49;
    sub_1D9E77278(v37);
    v27 = *(v9 + 48) + 88 * v12;
    v28 = *(v27 + 32);
    v29 = *(v27 + 48);
    v30 = *(v27 + 64);
    v44 = *(v27 + 80);
    v42 = v29;
    v43 = v30;
    v31 = *(v27 + 16);
    v39 = *v27;
    v40 = v31;
    v41 = v28;
    v32 = *(v27 + 16);
    *a1 = *v27;
    *(a1 + 16) = v32;
    v33 = *(v27 + 32);
    v34 = *(v27 + 48);
    v35 = *(v27 + 64);
    *(a1 + 80) = *(v27 + 80);
    *(a1 + 48) = v34;
    *(a1 + 64) = v35;
    *(a1 + 32) = v33;
    sub_1D9E77240(&v39, v36);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55 = v49;
    v56 = v50;
    v57 = v51;
    v58 = v52;
    v53 = v47;
    v54 = v48;
    *&v39 = *v3;
    sub_1D9E77240(&v53, v45);
    sub_1D9F16B34(&v53, v12, isUniquelyReferenced_nonNull_native);
    *v3 = v39;
    v24 = v50;
    *(a1 + 32) = v49;
    *(a1 + 48) = v24;
    *(a1 + 64) = v51;
    *(a1 + 80) = v52;
    v25 = v48;
    result = 1;
    *a1 = v47;
    *(a1 + 16) = v25;
  }

  return result;
}

uint64_t sub_1D9F102B4(uint64_t a1, double *a2)
{
  v4 = a2[12];
  v57 = *v2;
  sub_1D9F2BAFC();
  v5 = *a2;
  v6 = *(a2 + 1);
  v7 = *(a2 + 2);
  v8 = *(a2 + 3);
  v9 = *(a2 + 4);
  v10 = *(a2 + 5);
  v11 = *(a2 + 6);
  v12 = *(a2 + 7);
  v13 = *(a2 + 8);
  v14 = *(a2 + 9);
  v55 = a2;
  v16 = *(a2 + 10);
  v15 = *(a2 + 11);
  v71 = v6;
  v72 = v5;
  sub_1D9F2B18C();
  v68 = v8;
  v69 = v7;
  sub_1D9F2B18C();
  v64 = v10;
  v65 = v9;
  sub_1D9F2B18C();
  v62 = v12;
  v63 = v11;
  sub_1D9F2B18C();
  v60 = v14;
  v61 = v13;
  sub_1D9F2B18C();
  v59 = v16;
  sub_1D9F2B18C();
  v17 = 0.0;
  if (v4 != 0.0)
  {
    v17 = v4;
  }

  MEMORY[0x1DA743920](*&v17);
  v18 = sub_1D9F2BB4C();
  v19 = -1 << *(v57 + 32);
  v20 = v18 & ~v19;
  if ((*(v57 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
  {
    v58 = v15;
    v66 = ~v19;
    v67 = *(v57 + 48);
    while (1)
    {
      v21 = v67 + 104 * v20;
      v23 = *(v21 + 16);
      v22 = *(v21 + 24);
      v25 = *(v21 + 32);
      v24 = *(v21 + 40);
      v26 = *(v21 + 48);
      v27 = *(v21 + 56);
      v28 = *(v21 + 64);
      v29 = *(v21 + 72);
      v30 = *(v21 + 80);
      v70 = *(v21 + 88);
      v31 = *(v21 + 96);
      v32 = *v21 == *&v72 && *(v21 + 8) == v71;
      if (v32 || (sub_1D9F2BA1C() & 1) != 0)
      {
        v33 = v23 == v69 && v22 == v68;
        if (v33 || (sub_1D9F2BA1C() & 1) != 0)
        {
          v34 = v25 == v65 && v24 == v64;
          if (v34 || (sub_1D9F2BA1C() & 1) != 0)
          {
            v35 = v26 == v63 && v27 == v62;
            if (v35 || (sub_1D9F2BA1C() & 1) != 0)
            {
              v36 = v28 == v61 && v29 == v60;
              if (v36 || (sub_1D9F2BA1C() & 1) != 0)
              {
                v37 = v30 == v59 && v70 == v58;
                if (v37 || (sub_1D9F2BA1C()) && v31 == v4)
                {
                  break;
                }
              }
            }
          }
        }
      }

      v20 = (v20 + 1) & v66;
      if (((*(v57 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    sub_1D9EE7F58(v55);
    v43 = *(v57 + 48) + 104 * v20;
    v44 = *(v43 + 48);
    v45 = *(v43 + 64);
    v46 = *(v43 + 80);
    v75 = *(v43 + 96);
    v74[4] = v45;
    v74[5] = v46;
    v74[3] = v44;
    v47 = *v43;
    v48 = *(v43 + 16);
    v74[2] = *(v43 + 32);
    v74[0] = v47;
    v74[1] = v48;
    v49 = *(v43 + 16);
    *a1 = *v43;
    *(a1 + 16) = v49;
    v50 = *(v43 + 32);
    v51 = *(v43 + 48);
    v52 = *(v43 + 64);
    v53 = *(v43 + 80);
    *(a1 + 96) = *(v43 + 96);
    *(a1 + 64) = v52;
    *(a1 + 80) = v53;
    *(a1 + 32) = v50;
    *(a1 + 48) = v51;
    sub_1D9E51C04(v74, v73);
    return 0;
  }

  else
  {
LABEL_38:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v73[0] = *v54;
    sub_1D9E51C04(v55, v74);
    sub_1D9F16D74(v55, v20, isUniquelyReferenced_nonNull_native);
    *v54 = v73[0];
    v39 = *(v55 + 80);
    *(a1 + 64) = *(v55 + 64);
    *(a1 + 80) = v39;
    *(a1 + 96) = *(v55 + 96);
    v40 = *(v55 + 16);
    *a1 = *v55;
    *(a1 + 16) = v40;
    v41 = *(v55 + 48);
    result = 1;
    *(a1 + 32) = *(v55 + 32);
    *(a1 + 48) = v41;
  }

  return result;
}

uint64_t sub_1D9F1065C(void *a1, void *a2)
{
  v4 = *v2;
  sub_1D9F2BAFC();
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v36 = a2;
  v10 = a2[4];
  v9 = a2[5];
  sub_1D9F2B18C();
  v40 = v8;
  v41 = v7;
  sub_1D9F2B18C();
  v38 = v9;
  v39 = v10;
  sub_1D9F2B18C();
  v11 = sub_1D9F2BB4C();
  v12 = v4 + 56;
  v13 = -1 << *(v4 + 32);
  v14 = v11 & ~v13;
  if ((*(v4 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v34 = v4;
    v16 = *(v4 + 48);
    while (1)
    {
      v17 = (v16 + 48 * v14);
      v18 = v17[2];
      v19 = v17[3];
      v21 = v17[4];
      v20 = v17[5];
      v22 = *v17 == v5 && v17[1] == v6;
      if (v22 || (sub_1D9F2BA1C() & 1) != 0)
      {
        v23 = v18 == v41 && v19 == v40;
        if (v23 || (sub_1D9F2BA1C() & 1) != 0)
        {
          v24 = v21 == v39 && v20 == v38;
          if (v24 || (sub_1D9F2BA1C() & 1) != 0)
          {
            break;
          }
        }
      }

      v14 = (v14 + 1) & v15;
      if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    sub_1D9F1BD88(v36);
    v25 = (*(v34 + 48) + 48 * v14);
    v26 = v25[1];
    v27 = v25[2];
    v28 = v25[3];
    v29 = v25[4];
    v30 = v25[5];
    *a1 = *v25;
    a1[1] = v26;
    a1[2] = v27;
    a1[3] = v28;
    a1[4] = v29;
    a1[5] = v30;

    return 0;
  }

  else
  {
LABEL_20:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = *v35;
    sub_1D9F1BD2C(v36, v43);
    sub_1D9F170C0(v36, v14, isUniquelyReferenced_nonNull_native);
    *v35 = v42;
    v33 = v36[1];
    *a1 = *v36;
    *(a1 + 1) = v33;
    *(a1 + 2) = v36[2];
    return 1;
  }
}

uint64_t sub_1D9F108B4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1D9F2BAFC();
  sub_1D9F2B18C();
  v8 = sub_1D9F2BB4C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1D9F2BA1C() & 1) != 0)
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

    sub_1D9F172E8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

void sub_1D9F10A74(uint64_t a1)
{
  sub_1D9F2AD7C();
  if (v1 <= 0x3F)
  {
    sub_1D9F10BE0(319, &qword_1EE0F3848, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1D9F10B90();
      if (v3 <= 0x3F)
      {
        sub_1D9F10BE0(319, &qword_1EE0F2340, type metadata accessor for VisualClassification, MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D9F10B90()
{
  if (!qword_1EE0F2350)
  {
    v0 = sub_1D9F2B2BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0F2350);
    }
  }
}

void sub_1D9F10BE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D9F10C58()
{
  result = qword_1ECB75CE0;
  if (!qword_1ECB75CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75CE0);
  }

  return result;
}

unint64_t sub_1D9F10CB0()
{
  result = qword_1EE0F3410;
  if (!qword_1EE0F3410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3410);
  }

  return result;
}

unint64_t sub_1D9F10D08()
{
  result = qword_1EE0F3418;
  if (!qword_1EE0F3418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0F3418);
  }

  return result;
}

uint64_t sub_1D9F10D5C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D88, &unk_1D9F455B0);
  result = sub_1D9F2B66C();
  v5 = result;
  if (*(v3 + 16))
  {
    v35 = v2;
    v36 = v3;
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
    v37 = result;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v38 = (v10 - 1) & v10;
LABEL_15:
      v20 = *(v3 + 48) + 32 * (v17 | (v6 << 6));
      v21 = *v20;
      v22 = *(v20 + 8);
      v23 = *(v20 + 16);
      v24 = *(v20 + 24);
      sub_1D9F2BAFC();
      sub_1D9F2B18C();

      v39 = v23;
      v40 = v22;
      sub_1D9F2BB1C();
      if (v23)
      {
        sub_1D9F2B18C();
      }

      MEMORY[0x1DA7438F0](*(v24 + 16));
      v25 = *(v24 + 16);
      if (v25)
      {
        v26 = v24 + 40;
        do
        {

          sub_1D9F2B18C();

          v26 += 16;
          --v25;
        }

        while (v25);
      }

      result = sub_1D9F2BB4C();
      v5 = v37;
      v27 = -1 << *(v37 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v12 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v15 = v39;
        v14 = v40;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v12 + 8 * v29);
          if (v33 != -1)
          {
            v13 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v28) & ~*(v12 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v15 = v39;
      v14 = v40;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v16 = *(v37 + 48) + 32 * v13;
      *v16 = v21;
      *(v16 + 8) = v14;
      *(v16 + 16) = v15;
      *(v16 + 24) = v24;
      ++*(v37 + 16);
      v3 = v36;
      v10 = v38;
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v6 >= v11)
      {
        break;
      }

      v19 = v7[v6];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v38 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v34 = 1 << *(v3 + 32);
    if (v34 >= 64)
    {
      bzero(v7, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v34;
    }

    v2 = v35;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D9F110FC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D80, &qword_1D9F455A8);
  result = sub_1D9F2B66C();
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
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      sub_1D9F2BAFC();
      sub_1D9F2B18C();
      if (v21 == 0.0)
      {
        v22 = 0.0;
      }

      else
      {
        v22 = v21;
      }

      MEMORY[0x1DA743920](*&v22);
      result = sub_1D9F2BB4C();
      v23 = -1 << *(v5 + 32);
      v24 = result & ~v23;
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
        return result;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
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
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v30;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D9F1138C(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for DateTimeSchedule(0);
  v31 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D78, &qword_1D9F455A0);
  result = sub_1D9F2B66C();
  v8 = result;
  if (*(v6 + 16))
  {
    v30 = v1;
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
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v31 + 72);
      sub_1D9F1BFA8(*(v6 + 48) + v20 * (v17 | (v9 << 6)), v5, type metadata accessor for DateTimeSchedule);
      sub_1D9F2BAFC();
      DateTimeSchedule.hash(into:)(v32);
      result = sub_1D9F2BB4C();
      v21 = -1 << *(v8 + 32);
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

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_1D9F1BFA8(v5, *(v8 + 48) + v16 * v20, type metadata accessor for DateTimeSchedule);
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

    v28 = 1 << *(v6 + 32);
    if (v28 >= 64)
    {
      bzero((v6 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v28;
    }

    v2 = v30;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_1D9F11694(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D68, &qword_1D9F45590);
  result = sub_1D9F2B66C();
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
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      sub_1D9F2BAFC();
      if (v19 == 0.0)
      {
        v22 = 0.0;
      }

      else
      {
        v22 = v19;
      }

      MEMORY[0x1DA743920](*&v22);
      sub_1D9F2B18C();
      result = sub_1D9F2BB4C();
      v23 = -1 << *(v5 + 32);
      v24 = result & ~v23;
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
        return result;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
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
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v30;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D9F11924(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D58, &qword_1D9F45580);
  result = sub_1D9F2B66C();
  v5 = result;
  if (*(v3 + 16))
  {
    v32 = v1;
    v33 = v3;
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
      v18 = (*(v3 + 48) + 32 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v22 = v18[3];
      sub_1D9F2BAFC();
      v34 = v20;
      sub_1D9F2B18C();
      if (v22)
      {
        sub_1D9F2BB1C();

        v23 = v21;
        sub_1D9F2B18C();
      }

      else
      {
        v23 = v21;
        sub_1D9F2BB1C();
      }

      result = sub_1D9F2BB4C();
      v24 = -1 << *(v5 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v12 + 8 * v26);
          if (v30 != -1)
          {
            v13 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 32 * v13);
      *v14 = v19;
      v14[1] = v34;
      v14[2] = v23;
      v14[3] = v22;
      ++*(v5 + 16);
      v3 = v33;
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

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v7, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D9F11BE0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D48, &qword_1D9F45568);
  result = sub_1D9F2B66C();
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
    v36 = v2;
    v37 = (v8 + 63) >> 6;
    v11 = result + 56;
    v38 = v3;
    v39 = result;
    while (v10)
    {
      v18 = __clz(__rbit64(v10));
      v40 = (v10 - 1) & v10;
LABEL_15:
      v21 = (*(v3 + 48) + 96 * (v18 | (v6 << 6)));
      v23 = *v21;
      v22 = v21[1];
      v25 = v21[2];
      v24 = v21[3];
      v27 = v21[4];
      v26 = v21[5];
      v42 = v21[8];
      v43 = v21[6];
      v45 = v21[9];
      v46 = v21[7];
      v41 = v21[10];
      v44 = v21[11];
      sub_1D9F2BAFC();
      sub_1D9F2BB1C();
      if (v22)
      {
        sub_1D9F2B18C();
      }

      sub_1D9F2BB1C();
      if (v24)
      {
        sub_1D9F2B18C();
      }

      sub_1D9F2BB1C();
      if (v26)
      {
        sub_1D9F2B18C();
      }

      sub_1D9F2BB1C();
      if (v46)
      {
        sub_1D9F2B18C();
      }

      sub_1D9F2BB1C();
      if (v45)
      {
        sub_1D9F2B18C();
      }

      sub_1D9F2BB1C();
      if (v44)
      {

        sub_1D9F2B18C();
      }

      result = sub_1D9F2BB4C();
      v5 = v39;
      v28 = -1 << *(v39 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v11 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        v13 = v23;
        v14 = v44;
        v16 = v45;
        v15 = v46;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v11 + 8 * v30);
          if (v34 != -1)
          {
            v12 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_42:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v29) & ~*(v11 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      v13 = v23;
      v14 = v44;
      v16 = v45;
      v15 = v46;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v17 = (*(v39 + 48) + 96 * v12);
      *v17 = v13;
      v17[1] = v22;
      v10 = v40;
      v17[2] = v25;
      v17[3] = v24;
      v17[4] = v27;
      v17[5] = v26;
      v17[6] = v43;
      v17[7] = v15;
      v17[8] = v42;
      v17[9] = v16;
      v17[10] = v41;
      v17[11] = v14;
      ++*(v39 + 16);
      v3 = v38;
    }

    v19 = v6;
    while (1)
    {
      v6 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (v6 >= v37)
      {
        break;
      }

      v20 = v7[v6];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v40 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    v35 = 1 << *(v3 + 32);
    if (v35 >= 64)
    {
      bzero(v7, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v35;
    }

    v2 = v36;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D9F11FF8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D40, &qword_1D9F45560);
  result = sub_1D9F2B66C();
  v5 = result;
  if (*(v3 + 16))
  {
    v35 = v1;
    v36 = v3;
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
    v37 = result;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v38 = (v10 - 1) & v10;
LABEL_15:
      v18 = (*(v3 + 48) + 48 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v22 = v18[3];
      v23 = v18[4];
      v24 = v18[5];
      sub_1D9F2BAFC();
      sub_1D9F2B18C();
      sub_1D9F2B18C();
      sub_1D9F2BB1C();
      if (v24)
      {

        sub_1D9F2B18C();
      }

      result = sub_1D9F2BB4C();
      v5 = v37;
      v25 = -1 << *(v37 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v12 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v12 + 8 * v27);
          if (v31 != -1)
          {
            v13 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v37 + 48) + 48 * v13);
      *v14 = v19;
      v14[1] = v20;
      v14[2] = v21;
      v14[3] = v22;
      v14[4] = v23;
      v14[5] = v24;
      ++*(v37 + 16);
      v3 = v36;
      v10 = v38;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
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
        v38 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v32 = 1 << *(v3 + 32);
    if (v32 >= 64)
    {
      v33 = v5;
      bzero(v7, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      v5 = v33;
    }

    else
    {
      *v7 = -1 << v32;
    }

    v2 = v35;
    *(v3 + 16) = 0;
  }

  v34 = v5;

  *v2 = v34;
  return result;
}

uint64_t sub_1D9F122E4(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for CalendarEvent(0);
  v31 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D38, &unk_1D9F45550);
  result = sub_1D9F2B66C();
  v8 = result;
  if (*(v6 + 16))
  {
    v30 = v1;
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
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v31 + 72);
      sub_1D9F1BFA8(*(v6 + 48) + v20 * (v17 | (v9 << 6)), v5, type metadata accessor for CalendarEvent);
      sub_1D9F2BAFC();
      CalendarEvent.hash(into:)(v32);
      result = sub_1D9F2BB4C();
      v21 = -1 << *(v8 + 32);
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

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_1D9F1BFA8(v5, *(v8 + 48) + v16 * v20, type metadata accessor for CalendarEvent);
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

    v28 = 1 << *(v6 + 32);
    if (v28 >= 64)
    {
      bzero((v6 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v28;
    }

    v2 = v30;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

void *sub_1D9F125EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB731B8, &unk_1D9F2F580);
  v45 = *(v2 - 8);
  v46 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v42 - v3;
  v5 = type metadata accessor for Contact(0);
  v52 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v1;
  v8 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D30, &qword_1D9F45548);
  v9 = sub_1D9F2B66C();
  v10 = v9;
  if (*(v8 + 16))
  {
    v11 = 0;
    v12 = *(v8 + 56);
    v43 = (v8 + 56);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & v12;
    v16 = (v13 + 63) >> 6;
    v47 = v9 + 56;
    v48 = v16;
    v50 = v5;
    v51 = v8;
    v49 = v9;
    v55 = v7;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v54 = (v15 - 1) & v15;
LABEL_14:
      v23 = *(v8 + 48);
      v53 = *(v52 + 72);
      sub_1D9F1BFA8(v23 + v53 * (v19 | (v11 << 6)), v7, type metadata accessor for Contact);
      sub_1D9F2BAFC();
      Contact.Identity.hash(into:)(v56);
      v24 = *&v7[v5[5]];
      MEMORY[0x1DA7438F0](*(v24 + 16));
      v25 = *(v24 + 16);
      if (v25)
      {
        v26 = (v24 + 56);
        do
        {
          v27 = *v26;

          sub_1D9F2B18C();
          sub_1D9F2BB1C();
          if (v27)
          {

            sub_1D9F2B18C();

            swift_bridgeObjectRelease_n();
          }

          else
          {
          }

          v26 += 4;
          --v25;
        }

        while (v25);
      }

      v28 = *&v7[v5[6]];
      MEMORY[0x1DA7438F0](*(v28 + 16));
      v29 = *(v28 + 16);
      if (v29)
      {
        v30 = (v28 + 56);
        do
        {
          v31 = *v30;

          sub_1D9F2B18C();
          sub_1D9F2BB1C();
          if (v31)
          {

            sub_1D9F2B18C();

            swift_bridgeObjectRelease_n();
          }

          else
          {
          }

          v30 += 4;
          --v29;
        }

        while (v29);
      }

      sub_1D9E4EEB4(v56, *&v7[v5[7]]);
      v32 = *&v7[v5[8]];
      MEMORY[0x1DA7438F0](*(v32 + 16));
      v33 = *(v32 + 16);
      if (v33)
      {
        v34 = (v32 + 72);
        do
        {
          v35 = *v34;

          sub_1D9F2B18C();
          sub_1D9F2B18C();
          sub_1D9F2BB1C();
          if (v35)
          {

            sub_1D9F2B18C();

            swift_bridgeObjectRelease_n();
          }

          else
          {
          }

          v34 += 6;
          --v33;
        }

        while (v33);
      }

      v5 = v50;
      v36 = *&v55[v50[9]];
      MEMORY[0x1DA7438F0](*(v36 + 16));
      v37 = *(v36 + 16);
      if (v37)
      {
        v38 = &v4[*(v46 + 28)];
        v39 = v36 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
        v40 = *(v45 + 72);
        do
        {
          sub_1D9E51E70(v39, v4, &qword_1ECB731B8, &unk_1D9F2F580);
          sub_1D9F2AC4C();
          sub_1D9F1C010(&qword_1ECB731C8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
          sub_1D9F2B0EC();
          if (*(v38 + 1))
          {
            sub_1D9F2BB1C();
            sub_1D9F2B18C();
          }

          else
          {
            sub_1D9F2BB1C();
          }

          sub_1D9E51FE8(v4, &qword_1ECB731B8, &unk_1D9F2F580);
          v39 += v40;
          --v37;
        }

        while (v37);
      }

      sub_1D9F2BB4C();
      v10 = v49;
      v17 = v47;
      v18 = sub_1D9F2B62C();
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v7 = v55;
      sub_1D9F1BFA8(v55, *(v10 + 48) + v18 * v53, type metadata accessor for Contact);
      ++*(v10 + 16);
      v8 = v51;
      v16 = v48;
      v15 = v54;
    }

    v20 = v11;
    result = v43;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        return result;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v43[v11];
      ++v20;
      if (v22)
      {
        v19 = __clz(__rbit64(v22));
        v54 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    v41 = 1 << *(v8 + 32);
    if (v41 >= 64)
    {
      bzero(v43, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v43 = -1 << v41;
    }

    *(v8 + 16) = 0;
  }

  *v44 = v10;
  return result;
}

uint64_t sub_1D9F12CA4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D28, &qword_1D9F45540);
  result = sub_1D9F2B66C();
  v5 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
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
    v34 = result;
    while (1)
    {
      if (!v10)
      {
        v17 = v6;
        while (1)
        {
          v6 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            __break(1u);
            goto LABEL_37;
          }

          if (v6 >= v11)
          {
            break;
          }

          v18 = v7[v6];
          ++v17;
          if (v18)
          {
            v16 = __clz(__rbit64(v18));
            v35 = (v18 - 1) & v18;
            goto LABEL_15;
          }
        }

        v31 = 1 << *(v3 + 32);
        if (v31 >= 64)
        {
          bzero(v7, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v7 = -1 << v31;
        }

        v2 = v32;
        *(v3 + 16) = 0;
        break;
      }

      v16 = __clz(__rbit64(v10));
      v35 = (v10 - 1) & v10;
LABEL_15:
      v19 = *(v3 + 48) + 56 * (v16 | (v6 << 6));
      v20 = *v19;
      v21 = *(v19 + 16);
      v37 = *(v19 + 24);
      v38 = *(v19 + 8);
      v39 = *(v19 + 32);
      v22 = *(v19 + 48);
      v36 = *(v19 + 40);
      sub_1D9F2BAFC();
      sub_1D9F2B18C();

      if (v21)
      {
        sub_1D9F2BB1C();
        sub_1D9F2B18C();
        if (v39)
        {
          goto LABEL_17;
        }
      }

      else
      {
        sub_1D9F2BB1C();
        if (v39)
        {
LABEL_17:
          v23 = v21;
          sub_1D9F2BB1C();
          sub_1D9F2B18C();
          if (v22)
          {
            goto LABEL_18;
          }

          goto LABEL_21;
        }
      }

      v23 = v21;
      sub_1D9F2BB1C();
      if (v22)
      {
LABEL_18:
        sub_1D9F2BB1C();
        sub_1D9F2B18C();
        goto LABEL_22;
      }

LABEL_21:
      sub_1D9F2BB1C();
LABEL_22:
      result = sub_1D9F2BB4C();
      v5 = v34;
      v24 = -1 << *(v34 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        v14 = v39;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v12 + 8 * v26);
          if (v30 != -1)
          {
            v13 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
      v14 = v39;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v15 = *(v34 + 48) + 56 * v13;
      *v15 = v20;
      *(v15 + 8) = v38;
      *(v15 + 16) = v23;
      *(v15 + 24) = v37;
      *(v15 + 32) = v14;
      v10 = v35;
      *(v15 + 40) = v36;
      *(v15 + 48) = v22;
      ++*(v34 + 16);
      v3 = v33;
    }
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D9F13034(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1D9F2B66C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v34 = v5;
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
    v14 = result + 56;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = (*(v5 + 48) + 32 * (v17 | (v8 << 6)));
      v21 = *v20;
      v22 = v20[1];
      v23 = v20[2];
      v24 = v20[3];
      sub_1D9F2BAFC();
      sub_1D9F2B18C();
      sub_1D9F2B18C();
      result = sub_1D9F2BB4C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 32 * v15);
      *v16 = v21;
      v16[1] = v22;
      v16[2] = v23;
      v16[3] = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v32 = 1 << *(v5 + 32);
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    v4 = v33;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

unint64_t sub_1D9F132B0(uint64_t a1)
{
  v2 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D10, &qword_1D9F45528);
  result = sub_1D9F2B66C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    for (i = (v7 + 63) >> 6; v9; ++*(v4 + 16))
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_12:
      v14 = *(v2 + 48) + 88 * (v11 | (v5 << 6));
      v15 = *(v14 + 48);
      v16 = *(v14 + 16);
      v32 = *(v14 + 32);
      v33 = v15;
      v17 = *(v14 + 48);
      v34 = *(v14 + 64);
      v18 = *(v14 + 16);
      v30 = *v14;
      v31 = v18;
      v26 = v32;
      v27 = v17;
      v28 = *(v14 + 64);
      v35 = *(v14 + 80);
      v29 = *(v14 + 80);
      v24 = v30;
      v25 = v16;
      sub_1D9F2BAFC();
      Transaction.hash(into:)(v23);
      sub_1D9F2BB4C();
      result = sub_1D9F2B62C();
      *(v4 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v19 = *(v4 + 48) + 88 * result;
      v20 = v33;
      *(v19 + 32) = v32;
      *(v19 + 48) = v20;
      *(v19 + 64) = v34;
      *(v19 + 80) = v35;
      v21 = v31;
      *v19 = v30;
      *(v19 + 16) = v21;
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        return result;
      }

      if (v5 >= i)
      {
        break;
      }

      v13 = v6[v5];
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_12;
      }
    }

    v22 = 1 << *(v2 + 32);
    if (v22 >= 64)
    {
      bzero((v2 + 56), ((v22 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v22;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1D9F134FC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D00, &qword_1D9F45518);
  v4 = sub_1D9F2B66C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v40 = (v3 + 56);
    v41 = v3;
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
    v38 = v1;
    v39 = (v7 + 63) >> 6;
    v10 = v4 + 56;
    v42 = v4;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v43 = (v9 - 1) & v9;
LABEL_15:
      v17 = *(v3 + 48) + 104 * (v13 | (v6 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      v44 = *(v17 + 16);
      v45 = *(v17 + 24);
      v21 = *(v17 + 32);
      v20 = *(v17 + 40);
      v23 = *(v17 + 48);
      v22 = *(v17 + 56);
      v24 = *(v17 + 64);
      v25 = *(v17 + 72);
      v46 = *(v17 + 80);
      v47 = *(v17 + 88);
      v26 = *(v17 + 96);
      sub_1D9F2BAFC();
      sub_1D9F2B18C();
      sub_1D9F2B18C();
      sub_1D9F2B18C();
      sub_1D9F2B18C();
      sub_1D9F2B18C();
      sub_1D9F2B18C();
      if (v26 == 0.0)
      {
        v27 = 0.0;
      }

      else
      {
        v27 = v26;
      }

      MEMORY[0x1DA743920](*&v27);
      result = sub_1D9F2BB4C();
      v5 = v42;
      v28 = -1 << *(v42 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v10 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v10 + 8 * v30);
          if (v34 != -1)
          {
            v11 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v11 = __clz(__rbit64((-1 << v29) & ~*(v10 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = *(v42 + 48) + 104 * v11;
      *v12 = v18;
      *(v12 + 8) = v19;
      *(v12 + 16) = v44;
      *(v12 + 24) = v45;
      *(v12 + 32) = v21;
      *(v12 + 40) = v20;
      *(v12 + 48) = v23;
      *(v12 + 56) = v22;
      *(v12 + 64) = v24;
      *(v12 + 72) = v25;
      *(v12 + 80) = v46;
      *(v12 + 88) = v47;
      *(v12 + 96) = v26;
      ++*(v42 + 16);
      v3 = v41;
      v9 = v43;
    }

    v14 = v6;
    result = v40;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v6 >= v39)
      {
        break;
      }

      v16 = v40[v6];
      ++v14;
      if (v16)
      {
        v13 = __clz(__rbit64(v16));
        v43 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v35 = 1 << *(v3 + 32);
    if (v35 >= 64)
    {
      v36 = v5;
      bzero(v40, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      v5 = v36;
    }

    else
    {
      *v40 = -1 << v35;
    }

    v2 = v38;
    *(v3 + 16) = 0;
  }

  v37 = v5;

  *v2 = v37;
  return result;
}

uint64_t sub_1D9F13850(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CF8, &qword_1D9F45510);
  v4 = sub_1D9F2B66C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v33 = v1;
    v6 = 0;
    v34 = (v3 + 56);
    v35 = v3;
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
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v36 = (v9 - 1) & v9;
LABEL_15:
      v18 = (*(v3 + 48) + 48 * (v14 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v22 = v18[3];
      v24 = v18[4];
      v23 = v18[5];
      sub_1D9F2BAFC();
      sub_1D9F2B18C();
      sub_1D9F2B18C();
      sub_1D9F2B18C();
      result = sub_1D9F2BB4C();
      v25 = -1 << *(v5 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v11 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v11 + 8 * v27);
          if (v31 != -1)
          {
            v12 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v26) & ~*(v11 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 48 * v12);
      *v13 = v19;
      v13[1] = v20;
      v13[2] = v21;
      v13[3] = v22;
      v13[4] = v24;
      v13[5] = v23;
      ++*(v5 + 16);
      v3 = v35;
      v9 = v36;
    }

    v15 = v6;
    result = v34;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v10)
      {
        break;
      }

      v17 = v34[v6];
      ++v15;
      if (v17)
      {
        v14 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v32 = 1 << *(v3 + 32);
    if (v32 >= 64)
    {
      bzero(v34, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v34 = -1 << v32;
    }

    v2 = v33;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D9F13AFC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CF0, &qword_1D9F45508);
  result = sub_1D9F2B66C();
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
      sub_1D9F2BAFC();
      sub_1D9F2B18C();
      result = sub_1D9F2BB4C();
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

uint64_t sub_1D9F13D5C(uint64_t result, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, char a6)
{
  v45 = result;
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a6 & 1) != 0)
  {
    goto LABEL_69;
  }

  if (a6)
  {
    sub_1D9F10D5C(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_1D9F17468();
LABEL_69:
      v33 = *v39;
      *(*v39 + 8 * (a5 >> 6) + 56) |= 1 << a5;
      v34 = *(v33 + 48) + 32 * a5;
      *v34 = v45;
      *(v34 + 8) = a2;
      *(v34 + 16) = a3;
      *(v34 + 24) = a4;
      v35 = *(v33 + 16);
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_72;
      }

      *(v33 + 16) = v37;
      return result;
    }

    sub_1D9F18C88(v9 + 1);
  }

  v11 = *v6;
  v48 = v45;
  v49 = a2;
  v50 = a3;
  v51 = a4;
  sub_1D9F2BAFC();
  List.hash(into:)(v47);
  result = sub_1D9F2BB4C();
  v43 = v11 + 56;
  v44 = v11;
  v12 = -1 << *(v11 + 32);
  a5 = result & ~v12;
  if (((*(v11 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) == 0)
  {
    goto LABEL_69;
  }

  v42 = ~v12;
  v13 = 0xED00007473694C20;
  v14 = 0x676E6970706F6853;
  v38 = (a4 + 40);
  while (1)
  {
    v15 = (*(v44 + 48) + 32 * a5);
    v16 = *v15;
    if (v16 <= 1)
    {
      if (*v15)
      {
        v17 = 0x6569646572676E49;
      }

      else
      {
        v17 = 0x676E6970706F6853;
      }

      if (*v15)
      {
        v18 = 0xEB0000000073746ELL;
      }

      else
      {
        v18 = v13;
      }
    }

    else if (v16 == 2)
    {
      v18 = 0xE500000000000000;
      v17 = 0x6F44206F54;
    }

    else
    {
      if (v16 == 3)
      {
        v17 = 1970169165;
      }

      else
      {
        v17 = 0x726568744FLL;
      }

      if (v16 == 3)
      {
        v18 = 0xE400000000000000;
      }

      else
      {
        v18 = 0xE500000000000000;
      }
    }

    v20 = *(v15 + 1);
    v19 = *(v15 + 2);
    v21 = *(v15 + 3);
    if (v45 == 3)
    {
      v22 = 1970169165;
    }

    else
    {
      v22 = 0x726568744FLL;
    }

    if (v45 == 3)
    {
      v23 = 0xE400000000000000;
    }

    else
    {
      v23 = 0xE500000000000000;
    }

    if (v45 == 2)
    {
      v22 = 0x6F44206F54;
      v23 = 0xE500000000000000;
    }

    if (v45)
    {
      v14 = 0x6569646572676E49;
    }

    v24 = v13;
    if (v45)
    {
      v13 = 0xEB0000000073746ELL;
    }

    v25 = v45 <= 1u ? v14 : v22;
    v26 = v45 <= 1u ? v13 : v23;
    if (v17 == v25 && v18 == v26)
    {
    }

    else
    {
      v27 = sub_1D9F2BA1C();

      if ((v27 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    if (v19)
    {
      break;
    }

    if (!a3)
    {
      goto LABEL_55;
    }

LABEL_10:

    a5 = (a5 + 1) & v42;
    v13 = v24;
    v14 = 0x676E6970706F6853;
    if (((*(v43 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) == 0)
    {
      goto LABEL_69;
    }
  }

  if (!a3 || (v20 != a2 || v19 != a3) && (sub_1D9F2BA1C() & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_55:
  v28 = *(v21 + 16);
  if (v28 != *(a4 + 16))
  {
    goto LABEL_10;
  }

  if (v28)
  {
    v29 = v21 == a4;
  }

  else
  {
    v29 = 1;
  }

  if (!v29)
  {
    v30 = (v21 + 40);
    v31 = v38;
    while (v28)
    {
      v32 = *(v30 - 1) == *(v31 - 1) && *v30 == *v31;
      if (!v32 && (sub_1D9F2BA1C() & 1) == 0)
      {
        goto LABEL_10;
      }

      v30 += 2;
      v31 += 2;
      if (!--v28)
      {
        goto LABEL_73;
      }
    }

    __break(1u);
LABEL_72:
    __break(1u);
  }

LABEL_73:

  result = sub_1D9F2BA5C();
  __break(1u);
  return result;
}

uint64_t sub_1D9F14174(uint64_t result, uint64_t a2, unint64_t a3, char a4, double a5)
{
  v6 = v5;
  v10 = result;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 > v11 && (a4 & 1) != 0)
  {
    goto LABEL_20;
  }

  if (a4)
  {
    sub_1D9F110FC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      result = sub_1D9F175DC();
      goto LABEL_20;
    }

    sub_1D9F1900C(v11 + 1);
  }

  v13 = *v5;
  sub_1D9F2BAFC();
  sub_1D9F2B18C();
  v14 = 0.0;
  if (a5 != 0.0)
  {
    v14 = a5;
  }

  MEMORY[0x1DA743920](*&v14);
  result = sub_1D9F2BB4C();
  v15 = v13 + 56;
  v16 = -1 << *(v13 + 32);
  a3 = result & ~v16;
  if ((*(v13 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v17 = ~v16;
    v18 = *(v13 + 48);
    do
    {
      v19 = v18 + 24 * a3;
      result = *v19;
      v20 = *(v19 + 16);
      v21 = *v19 == v10 && *(v19 + 8) == a2;
      if (v21 || (result = sub_1D9F2BA1C(), (result & 1) != 0))
      {
        if (v20 == a5)
        {
          goto LABEL_23;
        }
      }

      a3 = (a3 + 1) & v17;
    }

    while (((*(v15 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_20:
  v22 = *v6;
  *(*v6 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v23 = *(v22 + 48) + 24 * a3;
  *v23 = v10;
  *(v23 + 8) = a2;
  *(v23 + 16) = a5;
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v22 + 16) = v26;
    return result;
  }

  __break(1u);
LABEL_23:
  result = sub_1D9F2BA5C();
  __break(1u);
  return result;
}

uint64_t sub_1D9F14338(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for DateTimeSchedule(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v27[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v26 = v10;
    sub_1D9F1138C(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_1D9F17744();
      goto LABEL_12;
    }

    v26 = v10;
    sub_1D9F19274(v13 + 1);
  }

  v15 = *v4;
  sub_1D9F2BAFC();
  DateTimeSchedule.hash(into:)(v27);
  v16 = sub_1D9F2BB4C();
  v17 = -1 << *(v15 + 32);
  a2 = v16 & ~v17;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v9 + 72);
    do
    {
      sub_1D9F1BEE0(*(v15 + 48) + v19 * a2, v12, type metadata accessor for DateTimeSchedule);
      v20 = _s29VisualActionPredictionSupport16DateTimeScheduleV2eeoiySbAC_ACtFZ_0(v12, a1);
      sub_1D9F1BF48(v12, type metadata accessor for DateTimeSchedule);
      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D9F1BFA8(a1, *(v21 + 48) + *(v9 + 72) * a2, type metadata accessor for DateTimeSchedule);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D9F2BA5C();
  __break(1u);
  return result;
}

uint64_t sub_1D9F1457C(uint64_t result, uint64_t a2, unint64_t a3, char a4, double a5)
{
  v6 = v5;
  v9 = result;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 > v11 && (a4 & 1) != 0)
  {
    goto LABEL_20;
  }

  if (a4)
  {
    sub_1D9F11694(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      result = sub_1D9F17950();
      goto LABEL_20;
    }

    sub_1D9F1954C(v11 + 1);
  }

  v13 = *v5;
  sub_1D9F2BAFC();
  v14 = 0.0;
  if (a5 != 0.0)
  {
    v14 = a5;
  }

  MEMORY[0x1DA743920](*&v14);
  sub_1D9F2B18C();
  result = sub_1D9F2BB4C();
  v15 = v13 + 56;
  v16 = -1 << *(v13 + 32);
  a3 = result & ~v16;
  if ((*(v13 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v17 = ~v16;
    v18 = *(v13 + 48);
    while (1)
    {
      v19 = v18 + 24 * a3;
      if (*v19 == a5)
      {
        if (*(v19 + 8) == v9 && *(v19 + 16) == a2)
        {
          break;
        }

        result = sub_1D9F2BA1C();
        if (result)
        {
          break;
        }
      }

      a3 = (a3 + 1) & v17;
      if (((*(v15 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    result = sub_1D9F2BA5C();
    __break(1u);
  }

LABEL_20:
  v21 = *v6;
  *(*v6 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v22 = *(v21 + 48) + 24 * a3;
  *v22 = a5;
  *(v22 + 8) = v9;
  *(v22 + 16) = a2;
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v25;
  }

  return result;
}

uint64_t sub_1D9F1473C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6, uint64_t *a7, uint64_t *a8, uint64_t a9)
{
  v14 = result;
  v15 = *(*v9 + 16);
  v16 = *(*v9 + 24);
  if (v16 > v15 && (a6 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (a6)
  {
    sub_1D9F13034(v15 + 1, a7, a8);
  }

  else
  {
    if (v16 > v15)
    {
      result = sub_1D9F18508(a7, a8);
      goto LABEL_22;
    }

    sub_1D9F1AE38(v15 + 1, a7, a8);
  }

  v17 = *v9;
  sub_1D9F2BAFC();
  sub_1D9F2B18C();
  sub_1D9F2B18C();
  result = sub_1D9F2BB4C();
  v18 = v17 + 56;
  v19 = -1 << *(v17 + 32);
  a5 = result & ~v19;
  if ((*(v17 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v20 = ~v19;
    v21 = *(v17 + 48);
    while (1)
    {
      v22 = (v21 + 32 * a5);
      v23 = v22[2];
      v24 = v22[3];
      v25 = *v22 == v14 && v22[1] == a2;
      if (v25 || (result = sub_1D9F2BA1C(), (result & 1) != 0))
      {
        if (v23 == a3 && v24 == a4)
        {
          break;
        }

        result = sub_1D9F2BA1C();
        if (result)
        {
          break;
        }
      }

      a5 = (a5 + 1) & v20;
      if (((*(v18 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    result = sub_1D9F2BA5C();
    __break(1u);
  }

LABEL_22:
  v27 = *v32;
  *(*v32 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v28 = (*(v27 + 48) + 32 * a5);
  *v28 = v14;
  v28[1] = a2;
  v28[2] = a3;
  v28[3] = a4;
  v29 = *(v27 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v27 + 16) = v31;
  }

  return result;
}

uint64_t sub_1D9F14924(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v11 = result;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_27;
  }

  if (a6)
  {
    sub_1D9F11924(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      result = sub_1D9F17AB8();
      goto LABEL_27;
    }

    sub_1D9F197B4(v12 + 1);
  }

  v14 = *v6;
  sub_1D9F2BAFC();
  sub_1D9F2B18C();
  sub_1D9F2BB1C();
  if (a4)
  {

    sub_1D9F2B18C();
  }

  result = sub_1D9F2BB4C();
  v15 = v14 + 56;
  v16 = -1 << *(v14 + 32);
  a5 = result & ~v16;
  if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v17 = ~v16;
    v18 = *(v14 + 48);
    do
    {
      v19 = (v18 + 32 * a5);
      result = *v19;
      v21 = v19[2];
      v20 = v19[3];
      v22 = *v19 == v11 && v19[1] == a2;
      if (v22 || (result = sub_1D9F2BA1C(), (result & 1) != 0))
      {
        if (v20)
        {
          if (a4)
          {
            v23 = v21 == a3 && v20 == a4;
            if (v23 || (result = sub_1D9F2BA1C(), (result & 1) != 0))
            {
LABEL_26:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75690, &qword_1D9F42150);
              result = sub_1D9F2BA5C();
              __break(1u);
              break;
            }
          }
        }

        else if (!a4)
        {
          goto LABEL_26;
        }
      }

      a5 = (a5 + 1) & v17;
    }

    while (((*(v15 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_27:
  v24 = *v29;
  *(*v29 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v25 = (*(v24 + 48) + 32 * a5);
  *v25 = v11;
  v25[1] = a2;
  v25[2] = a3;
  v25[3] = a4;
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v24 + 16) = v28;
  }

  return result;
}

uint64_t sub_1D9F14B44(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v59 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_63;
  }

  if (a3)
  {
    sub_1D9F11BE0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1D9F17C24();
      goto LABEL_63;
    }

    sub_1D9F19A60(v6 + 1);
  }

  v8 = *v3;
  sub_1D9F2BAFC();
  v66 = v5[1];
  v67 = *v5;
  v60 = v5[2];
  v61 = v5[5];
  v68 = v5[3];
  v56 = v5[4];
  v57 = v5[7];
  v53 = v5[8];
  v54 = v5[6];
  v55 = v5[9];
  PostalAddress.hash(into:)(v69);
  v9 = v5[10];
  v10 = v5[11];
  sub_1D9F2BB1C();
  if (v10)
  {

    sub_1D9F2B18C();
  }

  result = sub_1D9F2BB4C();
  v11 = v8 + 56;
  v12 = -1 << *(v8 + 32);
  a2 = result & ~v12;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v51 = v9;
    v52 = v10;
    v13 = ~v12;
    v14 = *(v8 + 48);
    v15 = v66;
    v63 = ~v12;
    v64 = v8 + 56;
    v62 = v14;
    do
    {
      v16 = (v14 + 96 * a2);
      v17 = v16[1];
      v18 = v16[2];
      v20 = v16[3];
      v19 = v16[4];
      v22 = v16[5];
      v21 = v16[6];
      v23 = v16[7];
      v24 = v16[8];
      v26 = v16[9];
      v25 = v16[10];
      v27 = v16[11];
      if (v17)
      {
        if (!v15)
        {
          goto LABEL_13;
        }

        result = *v16;
        if (*v16 != v67 || v17 != v15)
        {
          v65 = v16[4];
          v29 = v16[7];
          v30 = v16[6];
          v31 = v16[9];
          v32 = v16[8];
          v33 = v16[11];
          v34 = v16[10];
          result = sub_1D9F2BA1C();
          v25 = v34;
          v27 = v33;
          v24 = v32;
          v26 = v31;
          v21 = v30;
          v23 = v29;
          v11 = v64;
          v19 = v65;
          v14 = v62;
          v13 = v63;
          v15 = v66;
          if ((result & 1) == 0)
          {
            goto LABEL_13;
          }
        }
      }

      else if (v15)
      {
        goto LABEL_13;
      }

      if (v20)
      {
        if (!v68)
        {
          goto LABEL_13;
        }

        if (v18 != v60 || v20 != v68)
        {
          v36 = v27;
          v37 = v25;
          result = sub_1D9F2BA1C();
          v25 = v37;
          v27 = v36;
          v14 = v62;
          v13 = v63;
          v11 = v64;
          v15 = v66;
          if ((result & 1) == 0)
          {
            goto LABEL_13;
          }
        }
      }

      else if (v68)
      {
        goto LABEL_13;
      }

      if (v22)
      {
        if (!v61)
        {
          goto LABEL_13;
        }

        if (v19 != v56 || v22 != v61)
        {
          v39 = v25;
          result = sub_1D9F2BA1C();
          v25 = v39;
          v14 = v62;
          v13 = v63;
          v11 = v64;
          v15 = v66;
          if ((result & 1) == 0)
          {
            goto LABEL_13;
          }
        }
      }

      else if (v61)
      {
        goto LABEL_13;
      }

      if (v23)
      {
        if (!v57)
        {
          goto LABEL_13;
        }

        if (v21 != v54 || v23 != v57)
        {
          v41 = v25;
          result = sub_1D9F2BA1C();
          v25 = v41;
          v14 = v62;
          v13 = v63;
          v11 = v64;
          v15 = v66;
          if ((result & 1) == 0)
          {
            goto LABEL_13;
          }
        }
      }

      else if (v57)
      {
        goto LABEL_13;
      }

      if (v26)
      {
        if (!v55)
        {
          goto LABEL_13;
        }

        if (v24 != v53 || v26 != v55)
        {
          v42 = v25;
          result = sub_1D9F2BA1C();
          v25 = v42;
          v14 = v62;
          v13 = v63;
          v11 = v64;
          v15 = v66;
          if ((result & 1) == 0)
          {
            goto LABEL_13;
          }
        }
      }

      else if (v55)
      {
        goto LABEL_13;
      }

      if (v27)
      {
        if (v52)
        {
          if (v25 == v51 && v27 == v52 || (result = sub_1D9F2BA1C(), v14 = v62, v13 = v63, v11 = v64, v15 = v66, (result & 1) != 0))
          {
LABEL_62:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB731D0, &qword_1D9F42160);
            result = sub_1D9F2BA5C();
            __break(1u);
            break;
          }
        }
      }

      else if (!v52)
      {
        goto LABEL_62;
      }

LABEL_13:
      a2 = (a2 + 1) & v13;
    }

    while (((*(v11 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_63:
  v43 = *v58;
  *(*v58 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v44 = (*(v43 + 48) + 96 * a2);
  v45 = v59[1];
  *v44 = *v59;
  v44[1] = v45;
  v46 = v59[5];
  v44[4] = v59[4];
  v44[5] = v46;
  v47 = v59[3];
  v44[2] = v59[2];
  v44[3] = v47;
  v48 = *(v43 + 16);
  v49 = __OFADD__(v48, 1);
  v50 = v48 + 1;
  if (v49)
  {
    __break(1u);
  }

  else
  {
    *(v43 + 16) = v50;
  }

  return result;
}

uint64_t sub_1D9F14FC8(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v33 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_32;
  }

  if (a3)
  {
    sub_1D9F11FF8(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1D9F17DD0();
      goto LABEL_32;
    }

    sub_1D9F19E74(v6 + 1);
  }

  v8 = *v3;
  sub_1D9F2BAFC();
  v9 = v5[1];
  v10 = v5[2];
  v11 = v5[3];
  v37 = *v5;
  sub_1D9F2B18C();
  v35 = v11;
  v36 = v10;
  sub_1D9F2B18C();
  v13 = v5[4];
  v12 = v5[5];
  sub_1D9F2BB1C();
  if (v12)
  {

    sub_1D9F2B18C();
  }

  result = sub_1D9F2BB4C();
  v14 = -1 << *(v8 + 32);
  a2 = result & ~v14;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = v8 + 56;
    v34 = v13;
    v16 = ~v14;
    v17 = *(v8 + 48);
    do
    {
      v18 = (v17 + 48 * a2);
      result = *v18;
      v20 = v18[2];
      v19 = v18[3];
      v22 = v18[4];
      v21 = v18[5];
      v23 = *v18 == v37 && v18[1] == v9;
      if (v23 || (result = sub_1D9F2BA1C(), (result & 1) != 0))
      {
        v24 = v20 == v36 && v19 == v35;
        if (v24 || (result = sub_1D9F2BA1C(), (result & 1) != 0))
        {
          if (v21)
          {
            if (v12)
            {
              v25 = v22 == v34 && v21 == v12;
              if (v25 || (result = sub_1D9F2BA1C(), (result & 1) != 0))
              {
LABEL_31:
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB756D8, &qword_1D9F42170);
                result = sub_1D9F2BA5C();
                __break(1u);
                break;
              }
            }
          }

          else if (!v12)
          {
            goto LABEL_31;
          }
        }
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_32:
  v26 = *v32;
  *(*v32 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v27 = (*(v26 + 48) + 48 * a2);
  v28 = v33[1];
  *v27 = *v33;
  v27[1] = v28;
  v27[2] = v33[2];
  v29 = *(v26 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v26 + 16) = v31;
  }

  return result;
}

uint64_t sub_1D9F15240(void *a1, unint64_t a2, char a3)
{
  v78 = a1;
  v6 = type metadata accessor for DateTimeSchedule(0);
  v77 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v75 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v61 - v9;
  v11 = sub_1D9F2AC4C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73890, &qword_1D9F38430);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v61 - v16;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74430, &unk_1D9F386F0);
  MEMORY[0x1EEE9AC00](v68);
  v67 = &v61 - v18;
  v69 = type metadata accessor for CalendarEvent(0);
  v19 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v21 = (&v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(*v3 + 16);
  v23 = *(*v3 + 24);
  v71 = v3;
  v70 = v19;
  if (v23 > v22 && (a3 & 1) != 0)
  {
    goto LABEL_7;
  }

  if ((a3 & 1) == 0)
  {
    if (v23 <= v22)
    {
      sub_1D9F1A14C(v22 + 1);
      goto LABEL_11;
    }

    sub_1D9F17F58();
LABEL_7:
    v24 = v78;
    goto LABEL_8;
  }

  sub_1D9F122E4(v22 + 1);
LABEL_11:
  v30 = *v3;
  sub_1D9F2BAFC();
  v31 = v78;
  CalendarEvent.hash(into:)(v83);
  v32 = sub_1D9F2BB4C();
  v33 = v30 + 56;
  v81 = v30 + 56;
  v82 = v30;
  v34 = -1 << *(v30 + 32);
  a2 = v32 & ~v34;
  if (((*(v33 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
  {
    goto LABEL_52;
  }

  v63 = v17;
  v62 = v14;
  v66 = v11;
  v79 = ~v34;
  v35 = v31[1];
  v76 = *v31;
  v65 = (v12 + 48);
  v61 = (v12 + 32);
  v64 = (v12 + 8);
  v80 = *(v19 + 72);
  v24 = v31;
  v74 = v35;
  while (1)
  {
    sub_1D9F1BEE0(*(v82 + 48) + v80 * a2, v21, type metadata accessor for CalendarEvent);
    v36 = v21[1];
    if (v36)
    {
      if (!v35)
      {
        goto LABEL_14;
      }

      v37 = *v21 == v76 && v36 == v35;
      if (!v37 && (sub_1D9F2BA1C() & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else if (v35)
    {
      goto LABEL_14;
    }

    v38 = v21[3];
    v39 = v24[3];
    if (v38)
    {
      if (!v39 || (v21[2] != v24[2] || v38 != v39) && (sub_1D9F2BA1C() & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else if (v39)
    {
      goto LABEL_14;
    }

    v40 = v21[5];
    v41 = v24[5];
    if (v40)
    {
      if (!v41 || (v21[4] != v24[4] || v40 != v41) && (sub_1D9F2BA1C() & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else if (v41)
    {
      goto LABEL_14;
    }

    v42 = *(v69 + 28);
    v43 = *(v68 + 48);
    v44 = v67;
    sub_1D9E51E70(v21 + v42, v67, &qword_1ECB73890, &qword_1D9F38430);
    sub_1D9E51E70(v24 + v42, v44 + v43, &qword_1ECB73890, &qword_1D9F38430);
    v45 = *v65;
    v46 = v66;
    if ((*v65)(v44, 1, v66) == 1)
    {
      break;
    }

    v47 = v63;
    sub_1D9E51E70(v44, v63, &qword_1ECB73890, &qword_1D9F38430);
    if (v45(v44 + v43, 1, v46) == 1)
    {
      (*v64)(v47, v46);
      goto LABEL_41;
    }

    v48 = v62;
    (*v61)(v62, v44 + v43, v46);
    sub_1D9F1C010(&qword_1ECB731C0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
    LODWORD(v73) = sub_1D9F2B10C();
    v49 = *v64;
    (*v64)(v48, v46);
    v49(v47, v46);
    result = sub_1D9E51FE8(v44, &qword_1ECB73890, &qword_1D9F38430);
    v35 = v74;
    if (v73)
    {
      goto LABEL_43;
    }

LABEL_14:
    sub_1D9F1BF48(v21, type metadata accessor for CalendarEvent);
    a2 = (a2 + 1) & v79;
    if (((*(v81 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if (v45(v44 + v43, 1, v46) != 1)
  {
LABEL_41:
    sub_1D9E51FE8(v44, &qword_1ECB74430, &unk_1D9F386F0);
    v35 = v74;
    goto LABEL_14;
  }

  result = sub_1D9E51FE8(v44, &qword_1ECB73890, &qword_1D9F38430);
  v35 = v74;
LABEL_43:
  v50 = *(v69 + 32);
  v31 = *(v24 + v50);
  v73 = *(v21 + v50);
  v51 = v31[2];
  v72 = v73[2];
  if (v72 != v51)
  {
    goto LABEL_14;
  }

  if (v72 && v73 != v31)
  {
    v52 = 0;
    v53 = (*(v77 + 80) + 32) & ~*(v77 + 80);
    v54 = v73 + v53;
    v55 = v31 + v53;
    while (v52 < v73[2])
    {
      v56 = *(v77 + 72) * v52;
      result = sub_1D9F1BEE0(&v54[v56], v10, type metadata accessor for DateTimeSchedule);
      if (v52 >= v31[2])
      {
        goto LABEL_54;
      }

      v57 = v10;
      v58 = v75;
      sub_1D9F1BEE0(&v55[v56], v75, type metadata accessor for DateTimeSchedule);
      v59 = _s29VisualActionPredictionSupport16DateTimeScheduleV2eeoiySbAC_ACtFZ_0(v57, v58);
      v60 = v58;
      v10 = v57;
      v35 = v74;
      sub_1D9F1BF48(v60, type metadata accessor for DateTimeSchedule);
      v24 = v78;
      result = sub_1D9F1BF48(v10, type metadata accessor for DateTimeSchedule);
      if ((v59 & 1) == 0)
      {
        goto LABEL_14;
      }

      if (v72 == ++v52)
      {
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    return result;
  }

LABEL_51:
  sub_1D9F1BF48(v21, type metadata accessor for CalendarEvent);
  sub_1D9F2BA5C();
  __break(1u);
LABEL_52:
  v24 = v31;
LABEL_8:
  v25 = *v71;
  *(*v71 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D9F1BFA8(v24, *(v25 + 48) + *(v70 + 72) * a2, type metadata accessor for CalendarEvent);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    goto LABEL_55;
  }

  *(v25 + 16) = v29;
  return result;
}

uint64_t sub_1D9F15ACC(uint64_t a1, unint64_t a2, char a3)
{
  v133 = a1;
  v6 = type metadata accessor for Contact.Identity.Person(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v123 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Contact.Identity(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v126 = (&v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v125 = &v96 - v11;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75858, &qword_1D9F42FE8);
  MEMORY[0x1EEE9AC00](v132);
  v13 = &v96 - v12;
  v124 = type metadata accessor for Contact(0);
  v121 = *(v124 - 1);
  MEMORY[0x1EEE9AC00](v124);
  v15 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(*v3 + 16);
  v17 = *(*v3 + 24);
  v120 = v3;
  if (v17 <= v16 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1D9F125EC(v16 + 1);
    }

    else
    {
      if (v17 > v16)
      {
        sub_1D9F18164();
        goto LABEL_127;
      }

      sub_1D9F1A424(v16 + 1);
    }

    v18 = *v3;
    sub_1D9F2BAFC();
    v19 = v133;
    Contact.Identity.hash(into:)(&v134);
    v20 = v124;
    v21 = *(v19 + v124[5]);
    sub_1D9E4F0BC(&v134, v21);
    v22 = *(v19 + v20[6]);
    sub_1D9E4F0BC(&v134, v22);
    v23 = *(v19 + v20[7]);
    sub_1D9E4EEB4(&v134, v23);
    v114 = *(v19 + v20[8]);
    sub_1D9E4EDA4(&v134, v114);
    v24 = *(v19 + v20[9]);
    sub_1D9E4EBD0(&v134, v24);
    v25 = sub_1D9F2BB4C();
    v130 = v18 + 56;
    v131 = v18;
    v26 = -1 << *(v18 + 32);
    a2 = v25 & ~v26;
    if ((*(v18 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v105 = v24;
      v127 = ~v26;
      v129 = *(v121 + 72);
      v122 = v21;
      v117 = (v21 + 56);
      v119 = v22;
      v113 = (v22 + 56);
      v118 = v23;
      v106 = (v23 + 64);
      v128 = v8;
      do
      {
        sub_1D9F1BEE0(*(v131 + 48) + v129 * a2, v15, type metadata accessor for Contact);
        v27 = &v13[*(v132 + 48)];
        sub_1D9F1BEE0(v15, v13, type metadata accessor for Contact.Identity);
        sub_1D9F1BEE0(v133, v27, type metadata accessor for Contact.Identity);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v28 = v126;
          sub_1D9F1BEE0(v13, v126, type metadata accessor for Contact.Identity);
          v29 = *v28;
          v30 = v28[1];
          if (swift_getEnumCaseMultiPayload() != 1)
          {

            goto LABEL_27;
          }

          v31 = *(v27 + 1);
          if (!v30)
          {

            if (v31)
            {
              goto LABEL_11;
            }

            goto LABEL_33;
          }

          if (!v31)
          {

LABEL_11:

LABEL_12:
            sub_1D9F1BF48(v13, type metadata accessor for Contact.Identity);
            goto LABEL_13;
          }

          if (v29 == *v27 && v30 == v31)
          {

LABEL_33:

            goto LABEL_34;
          }

          v33 = sub_1D9F2BA1C();

          if ((v33 & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v34 = v125;
          sub_1D9F1BEE0(v13, v125, type metadata accessor for Contact.Identity);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1D9F1BF48(v34, type metadata accessor for Contact.Identity.Person);
LABEL_27:
            sub_1D9E51FE8(v13, &qword_1ECB75858, &qword_1D9F42FE8);
            goto LABEL_13;
          }

          v35 = v123;
          sub_1D9F1BFA8(v27, v123, type metadata accessor for Contact.Identity.Person);
          v36 = v34;
          v37 = _s29VisualActionPredictionSupport7ContactV8IdentityO6PersonV2eeoiySbAG_AGtFZ_0(v34, v35);
          sub_1D9F1BF48(v35, type metadata accessor for Contact.Identity.Person);
          sub_1D9F1BF48(v36, type metadata accessor for Contact.Identity.Person);
          if ((v37 & 1) == 0)
          {
            goto LABEL_12;
          }
        }

LABEL_34:
        sub_1D9F1BF48(v13, type metadata accessor for Contact.Identity);
        v38 = *&v15[v124[5]];
        v39 = *(v38 + 16);
        if (v39 == *(v122 + 16))
        {
          if (v39)
          {
            v40 = v38 == v122;
          }

          else
          {
            v40 = 1;
          }

          if (!v40)
          {
            v47 = (v38 + 56);
            v48 = v117;
            while (v39)
            {
              v50 = *(v47 - 1);
              v49 = *v47;
              v51 = *(v48 - 1);
              v52 = *v48;
              v53 = *(v47 - 3) == *(v48 - 3) && *(v47 - 2) == *(v48 - 2);
              if (!v53 && (sub_1D9F2BA1C() & 1) == 0)
              {
                goto LABEL_13;
              }

              if (v49)
              {
                if (!v52 || (v50 != v51 || v49 != v52) && (sub_1D9F2BA1C() & 1) == 0)
                {
                  goto LABEL_13;
                }
              }

              else if (v52)
              {
                goto LABEL_13;
              }

              v48 += 4;
              v47 += 4;
              if (!--v39)
              {
                goto LABEL_40;
              }
            }

            __break(1u);
            goto LABEL_130;
          }

LABEL_40:
          v41 = *&v15[v124[6]];
          v42 = *(v41 + 16);
          if (v42 == *(v119 + 16))
          {
            if (v42)
            {
              v43 = v41 == v119;
            }

            else
            {
              v43 = 1;
            }

            if (!v43)
            {
              v54 = (v41 + 56);
              v55 = v113;
              while (v42)
              {
                v57 = *(v54 - 1);
                v56 = *v54;
                v58 = *(v55 - 1);
                v59 = *v55;
                v60 = *(v54 - 3) == *(v55 - 3) && *(v54 - 2) == *(v55 - 2);
                if (!v60 && (sub_1D9F2BA1C() & 1) == 0)
                {
                  goto LABEL_13;
                }

                if (v56)
                {
                  if (!v59 || (v57 != v58 || v56 != v59) && (sub_1D9F2BA1C() & 1) == 0)
                  {
                    goto LABEL_13;
                  }
                }

                else if (v59)
                {
                  goto LABEL_13;
                }

                v55 += 4;
                v54 += 4;
                if (!--v42)
                {
                  goto LABEL_46;
                }
              }

LABEL_130:
              __break(1u);
              goto LABEL_131;
            }

LABEL_46:
            v44 = *&v15[v124[7]];
            v45 = *(v44 + 16);
            if (v45 == *(v118 + 16))
            {
              if (v45)
              {
                v46 = v44 == v118;
              }

              else
              {
                v46 = 1;
              }

              if (!v46)
              {
                v61 = (v44 + 64);
                v62 = v106;
                while (v45)
                {
                  v63 = *(v61 - 3);
                  v64 = *(v61 - 2);
                  v65 = *(v61 - 1);
                  v66 = *v61;
                  v67 = v61[1];
                  v68 = v61[2];
                  v69 = v61[3];
                  v112 = v61[4];
                  v70 = v61[5];
                  v107 = v61[6];
                  v116 = v61[7];
                  v71 = *(v62 - 3);
                  v72 = *(v62 - 2);
                  v74 = *(v62 - 1);
                  v73 = *v62;
                  v76 = v62[1];
                  v75 = v62[2];
                  v77 = v62[3];
                  v111 = v62[4];
                  v78 = v62[5];
                  v108 = v62[6];
                  v115 = v62[7];
                  if (v63)
                  {
                    if (!v71)
                    {
                      goto LABEL_13;
                    }

                    if (*(v61 - 4) != *(v62 - 4) || v63 != v71)
                    {
                      v101 = v73;
                      v110 = v70;
                      v79 = v78;
                      v104 = v69;
                      v80 = v68;
                      v109 = v77;
                      v81 = v75;
                      v103 = v67;
                      v100 = v66;
                      v102 = v76;
                      v99 = v65;
                      v98 = v64;
                      v97 = v72;
                      v82 = sub_1D9F2BA1C();
                      v72 = v97;
                      v64 = v98;
                      v65 = v99;
                      v73 = v101;
                      v76 = v102;
                      v66 = v100;
                      v67 = v103;
                      v75 = v81;
                      v77 = v109;
                      v68 = v80;
                      v69 = v104;
                      v78 = v79;
                      v70 = v110;
                      if ((v82 & 1) == 0)
                      {
                        goto LABEL_13;
                      }
                    }
                  }

                  else if (v71)
                  {
                    goto LABEL_13;
                  }

                  if (v65)
                  {
                    if (!v74)
                    {
                      goto LABEL_13;
                    }

                    if (v64 != v72 || v65 != v74)
                    {
                      v101 = v73;
                      v110 = v70;
                      v104 = v69;
                      v109 = v77;
                      v83 = v75;
                      v103 = v67;
                      v84 = v66;
                      v102 = v76;
                      v85 = sub_1D9F2BA1C();
                      v73 = v101;
                      v76 = v102;
                      v66 = v84;
                      v67 = v103;
                      v75 = v83;
                      v77 = v109;
                      v69 = v104;
                      v70 = v110;
                      if ((v85 & 1) == 0)
                      {
                        goto LABEL_13;
                      }
                    }
                  }

                  else if (v74)
                  {
                    goto LABEL_13;
                  }

                  if (v67)
                  {
                    if (!v76)
                    {
                      goto LABEL_13;
                    }

                    if (v66 != v73 || v67 != v76)
                    {
                      v110 = v70;
                      v86 = v69;
                      v109 = v77;
                      v87 = v75;
                      v88 = sub_1D9F2BA1C();
                      v75 = v87;
                      v77 = v109;
                      v69 = v86;
                      v70 = v110;
                      if ((v88 & 1) == 0)
                      {
                        goto LABEL_13;
                      }
                    }
                  }

                  else if (v76)
                  {
                    goto LABEL_13;
                  }

                  if (v69)
                  {
                    if (!v77)
                    {
                      goto LABEL_13;
                    }

                    if (v68 != v75 || v69 != v77)
                    {
                      v89 = v70;
                      v90 = sub_1D9F2BA1C();
                      v70 = v89;
                      if ((v90 & 1) == 0)
                      {
                        goto LABEL_13;
                      }
                    }
                  }

                  else if (v77)
                  {
                    goto LABEL_13;
                  }

                  if (v70)
                  {
                    if (!v78 || (v112 != v111 || v70 != v78) && (sub_1D9F2BA1C() & 1) == 0)
                    {
                      goto LABEL_13;
                    }
                  }

                  else if (v78)
                  {
                    goto LABEL_13;
                  }

                  if (v116)
                  {
                    if (!v115 || (v107 != v108 || v116 != v115) && (sub_1D9F2BA1C() & 1) == 0)
                    {
                      goto LABEL_13;
                    }
                  }

                  else if (v115)
                  {
                    goto LABEL_13;
                  }

                  v61 += 12;
                  v62 += 12;
                  if (!--v45)
                  {
                    goto LABEL_52;
                  }
                }

                goto LABEL_132;
              }

LABEL_52:
              if (sub_1D9E4A370(*&v15[v124[8]], v114) & 1) != 0 && (sub_1D9E4A49C(*&v15[v124[9]], v105))
              {
                goto LABEL_133;
              }
            }
          }
        }

LABEL_13:
        sub_1D9F1BF48(v15, type metadata accessor for Contact);
        a2 = (a2 + 1) & v127;
      }

      while (((*(v130 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_127:
  v91 = *v120;
  *(*v120 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D9F1BFA8(v133, *(v91 + 48) + *(v121 + 72) * a2, type metadata accessor for Contact);
  v93 = *(v91 + 16);
  v94 = __OFADD__(v93, 1);
  v95 = v93 + 1;
  if (v94)
  {
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    sub_1D9F1BF48(v15, type metadata accessor for Contact);
    result = sub_1D9F2BA5C();
    __break(1u);
  }

  else
  {
    *(v91 + 16) = v95;
  }

  return result;
}

uint64_t sub_1D9F166D8(uint64_t result, unint64_t a2, char a3)
{
  v35 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 <= v5 || (a3 & 1) == 0)
  {
    if (a3)
    {
      v7 = v36;
      sub_1D9F12CA4(v5 + 1);
    }

    else
    {
      if (v6 > v5)
      {
        result = sub_1D9F18370();
        goto LABEL_57;
      }

      v7 = v36;
      sub_1D9F1AAB4(v5 + 1);
    }

    v8 = *v7;
    v9 = *(v35 + 1);
    v45 = *v35;
    v46 = v9;
    v47 = *(v35 + 2);
    v48 = *(v35 + 6);
    sub_1D9F2BAFC();
    Identification.hash(into:)(v44);
    result = sub_1D9F2BB4C();
    v42 = v8 + 56;
    v43 = v8;
    v10 = -1 << *(v8 + 32);
    a2 = result & ~v10;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v41 = ~v10;
      v11 = *v35;
      v39 = *(v35 + 2);
      v37 = *(v35 + 1);
      v38 = *(v35 + 4);
      v32 = *(v35 + 5);
      v33 = *(v35 + 3);
      v34 = *(v35 + 6);
      v40 = v11;
      do
      {
        v12 = *(v43 + 48) + 56 * a2;
        if (*v12)
        {
          if (*v12 == 1)
          {
            v13 = 0xE600000000000000;
            v14 = 0x72656B636F4CLL;
            if (!v11)
            {
              goto LABEL_20;
            }
          }

          else
          {
            v13 = 0xE700000000000000;
            v14 = 0x676E696B726150;
            if (!v11)
            {
LABEL_20:
              v16 = 0xE400000000000000;
              v15 = 1768319319;
              goto LABEL_21;
            }
          }
        }

        else
        {
          v13 = 0xE400000000000000;
          v14 = 1768319319;
          if (!v11)
          {
            goto LABEL_20;
          }
        }

        if (v11 == 1)
        {
          v15 = 0x72656B636F4CLL;
        }

        else
        {
          v15 = 0x676E696B726150;
        }

        if (v11 == 1)
        {
          v16 = 0xE600000000000000;
        }

        else
        {
          v16 = 0xE700000000000000;
        }

LABEL_21:
        v18 = *(v12 + 8);
        v17 = *(v12 + 16);
        v19 = *(v12 + 24);
        v20 = *(v12 + 32);
        v22 = *(v12 + 40);
        v21 = *(v12 + 48);
        if (v14 == v15 && v13 == v16)
        {
        }

        else
        {
          v23 = sub_1D9F2BA1C();

          if ((v23 & 1) == 0)
          {

            goto LABEL_52;
          }
        }

        if (v17)
        {
          if (!v39 || (v18 == v37 ? (v24 = v17 == v39) : (v24 = 0), !v24 && (sub_1D9F2BA1C() & 1) == 0))
          {
LABEL_50:

            goto LABEL_51;
          }
        }

        else if (v39)
        {
          goto LABEL_50;
        }

        if (v20)
        {
          if (!v38 || (v19 != v33 || v20 != v38) && (sub_1D9F2BA1C() & 1) == 0)
          {
            goto LABEL_50;
          }
        }

        else if (v38)
        {
          goto LABEL_50;
        }

        if (!v21)
        {

          if (!v34)
          {
            goto LABEL_61;
          }

LABEL_51:

LABEL_52:

          goto LABEL_53;
        }

        if (!v34)
        {
          goto LABEL_50;
        }

        if (v22 == v32 && v21 == v34)
        {
          goto LABEL_60;
        }

        v25 = sub_1D9F2BA1C();

        if (v25)
        {
          goto LABEL_62;
        }

LABEL_53:
        a2 = (a2 + 1) & v41;
        v11 = v40;
      }

      while (((*(v42 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_57:
  v26 = *v36;
  *(*v36 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v27 = *(v26 + 48) + 56 * a2;
  v28 = *(v35 + 1);
  *v27 = *v35;
  *(v27 + 16) = v28;
  *(v27 + 32) = *(v35 + 2);
  *(v27 + 48) = *(v35 + 6);
  v29 = *(v26 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (v30)
  {
    __break(1u);
LABEL_60:

LABEL_61:

LABEL_62:
    result = sub_1D9F2BA5C();
    __break(1u);
  }

  else
  {
    *(v26 + 16) = v31;
  }

  return result;
}

uint64_t sub_1D9F16B34(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(result + 48);
  v49 = *(result + 32);
  v50 = v7;
  v51 = *(result + 64);
  v52 = *(result + 80);
  v8 = *(result + 16);
  v47 = *result;
  v48 = v8;
  v9 = *(*v3 + 16);
  v10 = *(*v3 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D9F132B0(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_1D9F18664();
      goto LABEL_12;
    }

    sub_1D9F1B094(v9 + 1);
  }

  v11 = *v3;
  v12 = *(v6 + 48);
  v43 = *(v6 + 32);
  v44 = v12;
  v45 = *(v6 + 64);
  v46 = *(v6 + 80);
  v13 = *(v6 + 16);
  v41 = *v6;
  v42 = v13;
  sub_1D9F2BAFC();
  Transaction.hash(into:)(v39);
  result = sub_1D9F2BB4C();
  v14 = -1 << *(v11 + 32);
  a2 = result & ~v14;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    do
    {
      v16 = *(v11 + 48) + 88 * a2;
      v17 = *(v16 + 16);
      v39[0] = *v16;
      v39[1] = v17;
      v19 = *(v16 + 48);
      v18 = *(v16 + 64);
      v20 = *(v16 + 32);
      v40 = *(v16 + 80);
      v39[3] = v19;
      v39[4] = v18;
      v39[2] = v20;
      v21 = *(v16 + 16);
      v33 = *v16;
      v34 = v21;
      v22 = *(v16 + 32);
      v23 = *(v16 + 48);
      v24 = *(v16 + 64);
      v38 = *(v16 + 80);
      v36 = v23;
      v37 = v24;
      v35 = v22;
      sub_1D9E77240(v39, &v41);
      v25 = _s29VisualActionPredictionSupport11TransactionV2eeoiySbAC_ACtFZ_0(&v33, &v47);
      v43 = v35;
      v44 = v36;
      v45 = v37;
      v46 = v38;
      v41 = v33;
      v42 = v34;
      result = sub_1D9E77278(&v41);
      if (v25)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v26 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v27 = *(v26 + 48) + 88 * a2;
  v28 = v48;
  *v27 = v47;
  *(v27 + 16) = v28;
  *(v27 + 80) = v52;
  v29 = v51;
  *(v27 + 48) = v50;
  *(v27 + 64) = v29;
  *(v27 + 32) = v49;
  v30 = *(v26 + 16);
  v31 = __OFADD__(v30, 1);
  v32 = v30 + 1;
  if (!v31)
  {
    *(v26 + 16) = v32;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D9F2BA5C();
  __break(1u);
  return result;
}

uint64_t sub_1D9F16D74(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v49 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_45;
  }

  if (a3)
  {
    sub_1D9F134FC(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1D9F18800();
      goto LABEL_45;
    }

    sub_1D9F1B2A4(v6 + 1);
  }

  v8 = *(v5 + 96);
  v63 = *v3;
  sub_1D9F2BAFC();
  v9 = *v5;
  v10 = *(v5 + 8);
  v11 = *(v5 + 16);
  v12 = *(v5 + 24);
  v13 = *(v5 + 32);
  v14 = *(v5 + 40);
  v15 = *(v5 + 48);
  v16 = *(v5 + 56);
  v17 = *(v5 + 64);
  v18 = *(v5 + 72);
  v19 = *(v5 + 80);
  v20 = *(v5 + 88);
  v65 = v10;
  v66 = v9;
  sub_1D9F2B18C();
  v61 = v12;
  v62 = v11;
  sub_1D9F2B18C();
  v56 = v14;
  v57 = v13;
  sub_1D9F2B18C();
  v54 = v16;
  v55 = v15;
  sub_1D9F2B18C();
  v52 = v18;
  v53 = v17;
  sub_1D9F2B18C();
  v50 = v20;
  v51 = v19;
  sub_1D9F2B18C();
  v21 = 0.0;
  if (v8 != 0.0)
  {
    v21 = v8;
  }

  MEMORY[0x1DA743920](*&v21);
  result = sub_1D9F2BB4C();
  v22 = -1 << *(v63 + 32);
  a2 = result & ~v22;
  v60 = v63 + 56;
  if ((*(v63 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v59 = ~v22;
    v58 = *(v63 + 48);
    do
    {
      v23 = v58 + 104 * a2;
      v25 = *(v23 + 16);
      v24 = *(v23 + 24);
      v26 = *(v23 + 32);
      v27 = *(v23 + 40);
      v28 = *(v23 + 48);
      v29 = *(v23 + 56);
      v30 = *(v23 + 64);
      v31 = *(v23 + 72);
      v32 = *(v23 + 88);
      v64 = *(v23 + 80);
      v33 = *(v23 + 96);
      v34 = *v23 == v66 && *(v23 + 8) == v65;
      if (v34 || (result = sub_1D9F2BA1C(), (result & 1) != 0))
      {
        v35 = v25 == v62 && v24 == v61;
        if (v35 || (result = sub_1D9F2BA1C(), (result & 1) != 0))
        {
          v36 = v26 == v57 && v27 == v56;
          if (v36 || (result = sub_1D9F2BA1C(), (result & 1) != 0))
          {
            v37 = v28 == v55 && v29 == v54;
            if (v37 || (result = sub_1D9F2BA1C(), (result & 1) != 0))
            {
              v38 = v30 == v53 && v31 == v52;
              if (v38 || (result = sub_1D9F2BA1C(), (result & 1) != 0))
              {
                result = v64;
                v39 = v64 == v51 && v32 == v50;
                if (v39 || (result = sub_1D9F2BA1C(), (result & 1) != 0))
                {
                  if (v33 == v8)
                  {
                    goto LABEL_48;
                  }
                }
              }
            }
          }
        }
      }

      a2 = (a2 + 1) & v59;
    }

    while (((*(v60 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_45:
  v40 = *v48;
  *(*v48 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v41 = *(v40 + 48) + 104 * a2;
  v42 = *(v49 + 16);
  *v41 = *v49;
  *(v41 + 16) = v42;
  *(v41 + 96) = *(v49 + 96);
  v43 = *(v49 + 80);
  *(v41 + 64) = *(v49 + 64);
  *(v41 + 80) = v43;
  v44 = *(v49 + 48);
  *(v41 + 32) = *(v49 + 32);
  *(v41 + 48) = v44;
  v45 = *(v40 + 16);
  v46 = __OFADD__(v45, 1);
  v47 = v45 + 1;
  if (!v46)
  {
    *(v40 + 16) = v47;
    return result;
  }

  __break(1u);
LABEL_48:
  result = sub_1D9F2BA5C();
  __break(1u);
  return result;
}

uint64_t sub_1D9F170C0(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v34 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_27;
  }

  if (a3)
  {
    sub_1D9F13850(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1D9F189A4();
      goto LABEL_27;
    }

    sub_1D9F1B5E8(v6 + 1);
  }

  v8 = *v3;
  sub_1D9F2BAFC();
  v9 = *v5;
  v10 = v5[1];
  v11 = v5[2];
  v12 = v5[3];
  v14 = v5[4];
  v13 = v5[5];
  sub_1D9F2B18C();
  v37 = v12;
  v38 = v11;
  sub_1D9F2B18C();
  v35 = v13;
  v36 = v14;
  sub_1D9F2B18C();
  result = sub_1D9F2BB4C();
  v15 = -1 << *(v8 + 32);
  a2 = result & ~v15;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = v8 + 56;
    v17 = ~v15;
    v18 = *(v8 + 48);
    while (1)
    {
      v19 = (v18 + 48 * a2);
      v20 = v19[2];
      v21 = v19[3];
      v22 = v19[4];
      v23 = v19[5];
      v24 = *v19 == v9 && v19[1] == v10;
      if (v24 || (result = sub_1D9F2BA1C(), (result & 1) != 0))
      {
        v25 = v20 == v38 && v21 == v37;
        if (v25 || (result = sub_1D9F2BA1C(), (result & 1) != 0))
        {
          if (v22 == v36 && v23 == v35)
          {
            break;
          }

          result = sub_1D9F2BA1C();
          if (result)
          {
            break;
          }
        }
      }

      a2 = (a2 + 1) & v17;
      if (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    result = sub_1D9F2BA5C();
    __break(1u);
  }

LABEL_27:
  v27 = *v33;
  *(*v33 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v28 = (*(v27 + 48) + 48 * a2);
  v29 = v34[1];
  *v28 = *v34;
  v28[1] = v29;
  v28[2] = v34[2];
  v30 = *(v27 + 16);
  v31 = __OFADD__(v30, 1);
  v32 = v30 + 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v27 + 16) = v32;
  }

  return result;
}

uint64_t sub_1D9F172E8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_1D9F13AFC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1D9F18B2C();
      goto LABEL_16;
    }

    sub_1D9F1B89C(v8 + 1);
  }

  v10 = *v4;
  sub_1D9F2BAFC();
  sub_1D9F2B18C();
  result = sub_1D9F2BB4C();
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

      result = sub_1D9F2BA1C();
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
  result = sub_1D9F2BA5C();
  __break(1u);
  return result;
}

void *sub_1D9F17468()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D88, &unk_1D9F455B0);
  v2 = *v0;
  v3 = sub_1D9F2B65C();
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *(v18 + 8);
        v19 = *(v18 + 16);
        v21 = *(v18 + 24);
        v22 = *(v4 + 48) + v17;
        *v22 = *v18;
        *(v22 + 8) = v20;
        *(v22 + 16) = v19;
        *(v22 + 24) = v21;
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

void *sub_1D9F175DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D80, &qword_1D9F455A8);
  v2 = *v0;
  v3 = sub_1D9F2B65C();
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = (*(v4 + 48) + v17);
        *v21 = *v18;
        v21[1] = v19;
        v21[2] = v20;
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

void *sub_1D9F17744()
{
  v1 = v0;
  v2 = type metadata accessor for DateTimeSchedule(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D78, &qword_1D9F455A0);
  v6 = *v0;
  v7 = sub_1D9F2B65C();
  v8 = v7;
  if (*(v6 + 16))
  {
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
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1D9F1BEE0(*(v6 + 48) + v21, v5, type metadata accessor for DateTimeSchedule);
        result = sub_1D9F1BFA8(v5, *(v8 + 48) + v21, type metadata accessor for DateTimeSchedule);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_1D9F17950()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D68, &qword_1D9F45590);
  v2 = *v0;
  v3 = sub_1D9F2B65C();
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = v18[1];
        v19 = v18[2];
        v21 = (*(v4 + 48) + v17);
        *v21 = *v18;
        v21[1] = v20;
        v21[2] = v19;
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

void *sub_1D9F17AB8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D58, &qword_1D9F45580);
  v2 = *v0;
  v3 = sub_1D9F2B65C();
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v21 = v18[2];
        v20 = v18[3];
        v22 = (*(v4 + 48) + v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v21;
        v22[3] = v20;
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

void *sub_1D9F17C24()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D48, &qword_1D9F45568);
  v2 = *v0;
  v3 = sub_1D9F2B65C();
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
    v10 = -1;
    v11 = *(v2 + 56);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v12 = v10 & v11;
    v13 = (v9 + 63) >> 6;
    if ((v10 & v11) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 96 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[2];
        v20 = v18[3];
        v21 = v18[5];
        v24[4] = v18[4];
        v24[5] = v21;
        v24[3] = v20;
        v22 = v18[1];
        v24[0] = *v18;
        v24[1] = v22;
        v24[2] = v19;
        memmove((*(v4 + 48) + v17), v18, 0x60uLL);
        result = sub_1D9E51E70(v24, &v23, &qword_1ECB731D0, &qword_1D9F42160);
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

void *sub_1D9F17DD0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D40, &qword_1D9F45560);
  v2 = *v0;
  v3 = sub_1D9F2B65C();
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
        v17 = 48 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v23 = v18[4];
        v22 = v18[5];
        v24 = (*(v4 + 48) + v17);
        *v24 = *v18;
        v24[1] = v19;
        v24[2] = v20;
        v24[3] = v21;
        v24[4] = v23;
        v24[5] = v22;
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

void *sub_1D9F17F58()
{
  v1 = v0;
  v2 = type metadata accessor for CalendarEvent(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D38, &unk_1D9F45550);
  v6 = *v0;
  v7 = sub_1D9F2B65C();
  v8 = v7;
  if (*(v6 + 16))
  {
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
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1D9F1BEE0(*(v6 + 48) + v21, v5, type metadata accessor for CalendarEvent);
        result = sub_1D9F1BFA8(v5, *(v8 + 48) + v21, type metadata accessor for CalendarEvent);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_1D9F18164()
{
  v1 = v0;
  v2 = type metadata accessor for Contact(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D30, &qword_1D9F45548);
  v6 = *v0;
  v7 = sub_1D9F2B65C();
  v8 = v7;
  if (*(v6 + 16))
  {
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
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1D9F1BEE0(*(v6 + 48) + v21, v5, type metadata accessor for Contact);
        result = sub_1D9F1BFA8(v5, *(v8 + 48) + v21, type metadata accessor for Contact);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_1D9F18370()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D28, &qword_1D9F45540);
  v2 = *v0;
  v3 = sub_1D9F2B65C();
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
        v17 = 56 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *(v18 + 8);
        v20 = *(v18 + 48);
        v21 = *(v4 + 48) + v17;
        v22 = *(v18 + 16);
        v23 = *(v18 + 32);
        *v21 = *v18;
        *(v21 + 8) = v19;
        *(v21 + 16) = v22;
        *(v21 + 32) = v23;
        *(v21 + 48) = v20;
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

void *sub_1D9F18508(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1D9F2B65C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = 32 * (v16 | (v10 << 6));
        v20 = (*(v4 + 48) + v19);
        v21 = v20[1];
        v22 = v20[2];
        v23 = v20[3];
        v24 = (*(v6 + 48) + v19);
        *v24 = *v20;
        v24[1] = v21;
        v24[2] = v22;
        v24[3] = v23;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_1D9F18664()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D10, &qword_1D9F45528);
  v2 = *v0;
  v3 = sub_1D9F2B65C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; result = sub_1D9E77240(v23, v22))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = 88 * (v13 | (v8 << 6));
      v17 = (*(v2 + 48) + v16);
      v18 = v17[2];
      v19 = v17[3];
      v20 = v17[4];
      v24 = *(v17 + 80);
      v23[3] = v19;
      v23[4] = v20;
      v21 = v17[1];
      v23[0] = *v17;
      v23[1] = v21;
      v23[2] = v18;
      memmove((*(v4 + 48) + v16), v17, 0x51uLL);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 56 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void *sub_1D9F18800()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D00, &qword_1D9F45518);
  v2 = *v0;
  v3 = sub_1D9F2B65C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; result = sub_1D9E51C04(v24, v23))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = 104 * (v13 | (v8 << 6));
      v17 = (*(v2 + 48) + v16);
      v18 = v17[3];
      v19 = v17[4];
      v20 = v17[5];
      v25 = *(v17 + 12);
      v24[4] = v19;
      v24[5] = v20;
      v24[3] = v18;
      v22 = v17[1];
      v21 = v17[2];
      v24[0] = *v17;
      v24[1] = v22;
      v24[2] = v21;
      memmove((*(v4 + 48) + v16), v17, 0x68uLL);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 56 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void *sub_1D9F189A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CF8, &qword_1D9F45510);
  v2 = *v0;
  v3 = sub_1D9F2B65C();
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
        v17 = 48 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = v18[4];
        v23 = v18[5];
        v24 = (*(v4 + 48) + v17);
        *v24 = *v18;
        v24[1] = v19;
        v24[2] = v20;
        v24[3] = v21;
        v24[4] = v22;
        v24[5] = v23;
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

void *sub_1D9F18B2C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75CF0, &qword_1D9F45508);
  v2 = *v0;
  v3 = sub_1D9F2B65C();
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

uint64_t sub_1D9F18C88(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D88, &unk_1D9F455B0);
  result = sub_1D9F2B66C();
  v5 = result;
  if (*(v3 + 16))
  {
    v34 = v2;
    v35 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
    v36 = result;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v37 = (v10 - 1) & v10;
LABEL_15:
      v20 = *(v3 + 48) + 32 * (v17 | (v6 << 6));
      v21 = *v20;
      v22 = *(v20 + 8);
      v23 = *(v20 + 16);
      v24 = *(v20 + 24);
      sub_1D9F2BAFC();

      sub_1D9F2B18C();

      v38 = v23;
      v39 = v22;
      sub_1D9F2BB1C();
      if (v23)
      {
        sub_1D9F2B18C();
      }

      MEMORY[0x1DA7438F0](*(v24 + 16));
      v25 = *(v24 + 16);
      if (v25)
      {
        v26 = v24 + 40;
        do
        {

          sub_1D9F2B18C();

          v26 += 16;
          --v25;
        }

        while (v25);
      }

      result = sub_1D9F2BB4C();
      v5 = v36;
      v27 = -1 << *(v36 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v12 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v15 = v38;
        v14 = v39;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v12 + 8 * v29);
          if (v33 != -1)
          {
            v13 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_33;
      }

      v13 = __clz(__rbit64((-1 << v28) & ~*(v12 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v15 = v38;
      v14 = v39;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v16 = *(v36 + 48) + 32 * v13;
      *v16 = v21;
      *(v16 + 8) = v14;
      *(v16 + 16) = v15;
      *(v16 + 24) = v24;
      ++*(v36 + 16);
      v3 = v35;
      v10 = v37;
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v34;
        goto LABEL_31;
      }

      v19 = *(v7 + 8 * v6);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v37 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1D9F1900C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D80, &qword_1D9F455A8);
  result = sub_1D9F2B66C();
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
      v17 = *(v3 + 48) + 24 * (v14 | (v6 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      sub_1D9F2BAFC();

      sub_1D9F2B18C();
      if (v20 == 0.0)
      {
        v21 = 0.0;
      }

      else
      {
        v21 = v20;
      }

      MEMORY[0x1DA743920](*&v21);
      result = sub_1D9F2BB4C();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v11 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v11 + 8 * v24);
          if (v28 != -1)
          {
            v12 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v12 = __clz(__rbit64((-1 << v23) & ~*(v11 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v5 + 48) + 24 * v12;
      *v13 = v18;
      *(v13 + 8) = v19;
      *(v13 + 16) = v20;
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
        goto LABEL_29;
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
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1D9F19274(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for DateTimeSchedule(0);
  v29 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D78, &qword_1D9F455A0);
  result = sub_1D9F2B66C();
  v8 = result;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = 1 << *(v6 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v6 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v29 + 72);
      sub_1D9F1BEE0(*(v6 + 48) + v19 * (v16 | (v9 << 6)), v5, type metadata accessor for DateTimeSchedule);
      sub_1D9F2BAFC();
      DateTimeSchedule.hash(into:)(v30);
      result = sub_1D9F2BB4C();
      v20 = -1 << *(v8 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_1D9F1BFA8(v5, *(v8 + 48) + v15 * v19, type metadata accessor for DateTimeSchedule);
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v18 = *(v6 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v2 = v8;
  }

  return result;
}

uint64_t sub_1D9F1954C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D68, &qword_1D9F45590);
  result = sub_1D9F2B66C();
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
      v17 = *(v3 + 48) + 24 * (v14 | (v6 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      sub_1D9F2BAFC();
      if (v18 == 0.0)
      {
        v21 = 0.0;
      }

      else
      {
        v21 = v18;
      }

      MEMORY[0x1DA743920](*&v21);

      sub_1D9F2B18C();
      result = sub_1D9F2BB4C();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v11 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v11 + 8 * v24);
          if (v28 != -1)
          {
            v12 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v12 = __clz(__rbit64((-1 << v23) & ~*(v11 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v5 + 48) + 24 * v12;
      *v13 = v18;
      *(v13 + 8) = v19;
      *(v13 + 16) = v20;
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
        goto LABEL_29;
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
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1D9F197B4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75D58, &qword_1D9F45580);
  result = sub_1D9F2B66C();
  v5 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
      v34 = (v10 - 1) & v10;
LABEL_15:
      v18 = (*(v3 + 48) + 32 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v22 = v18[3];
      sub_1D9F2BAFC();

      v33 = v19;
      sub_1D9F2B18C();
      if (v22)
      {
        sub_1D9F2BB1C();

        v23 = v21;
        sub_1D9F2B18C();
      }

      else
      {
        v23 = v21;
        sub_1D9F2BB1C();
      }

      result = sub_1D9F2BB4C();
      v24 = -1 << *(v5 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v12 + 8 * v26);
          if (v30 != -1)
          {
            v13 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 32 * v13);
      v3 = v32;
      *v14 = v33;
      v14[1] = v20;
      v14[2] = v23;
      v14[3] = v22;
      ++*(v5 + 16);
      v10 = v34;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v31;
        goto LABEL_29;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v5;
  }

  return result;
}