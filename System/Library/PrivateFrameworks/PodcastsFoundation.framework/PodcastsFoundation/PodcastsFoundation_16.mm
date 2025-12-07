void *sub_1D8ECDC14(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6050, &unk_1D9192020);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6058, &unk_1D91B7E10);
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6058, &unk_1D91B7E10);
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6058, &unk_1D91B7E10);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D8ECDDDC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = a4[3];
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = a4[2];
  if (v10 <= v11)
  {
    v12 = a4[2];
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v13[2] = v11;
    v13[3] = 2 * ((v14 - 32) / 24);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  if (v8)
  {
    if (v13 < a4 || v13 + 4 >= &a4[3 * v11 + 4])
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

char *sub_1D8ECDF14(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6040, &qword_1D9191FF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1D8ECE030(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6038, &unk_1D9191FE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[13 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 104 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4238, &qword_1D9188D80);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D8ECE180(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6030, &qword_1D9191FE0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1D8ECE284(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5F98, &qword_1D9191F10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5FA0, &qword_1D9191F18);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D8ECE3DC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1D8ECE510(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4558, &unk_1D9191FC0);
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_1D8ECE614(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5FA8, &qword_1D9191F20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D8ECE750(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 40);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[40 * v11])
    {
      memmove(v15, v16, 40 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1D8ECE86C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5FB0, &qword_1D9191F28);
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

char *sub_1D8ECE98C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4540, &qword_1D9189FD0);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t _s18PodcastsFoundation22ShazamSignatureRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6178, &unk_1D9193430);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v31 - v12;
  v15 = *(v14 + 56);
  sub_1D8D088B4(a1, &v31 - v12, &unk_1ECAB5910, &qword_1D9188C90);
  sub_1D8D088B4(a2, &v13[v15], &unk_1ECAB5910, &qword_1D9188C90);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1D8D088B4(v13, v10, &unk_1ECAB5910, &qword_1D9188C90);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1D8D68BC8(&qword_1ECAB2CA0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      v19 = sub_1D91781BC();
      v20 = *(v5 + 8);
      v20(v7, v4);
      v20(v10, v4);
      sub_1D8D08A50(v13, &unk_1ECAB5910, &qword_1D9188C90);
      if ((v19 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    (*(v5 + 8))(v10, v4);
LABEL_6:
    sub_1D8D08A50(v13, &qword_1ECAB6178, &unk_1D9193430);
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1D8D08A50(v13, &unk_1ECAB5910, &qword_1D9188C90);
LABEL_10:
  v21 = type metadata accessor for ShazamSignatureRequest(0);
  v22 = v21[5];
  v23 = *(a1 + v22);
  v24 = *(a2 + v22);
  if (v24 > 1)
  {
    if (v24 == 2)
    {
      if (v23 != 2)
      {
        goto LABEL_7;
      }
    }

    else if (v23 != 3)
    {
      goto LABEL_7;
    }
  }

  else if (v24)
  {
    if (v23 != 1)
    {
      goto LABEL_7;
    }
  }

  else if (v23)
  {
    goto LABEL_7;
  }

  v25 = v21[6];
  v27 = *(a1 + v25);
  v26 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  if (v27 == *v28 && v26 == v28[1] || (v29 = v21, v30 = sub_1D9179ACC(), v21 = v29, (v30 & 1) != 0))
  {
    v17 = sub_1D8FDD9D0(*(a1 + v21[7]), *(a2 + v21[7]));
    return v17 & 1;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

id sub_1D8ECEE54(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = _s10Foundation4DataV08PodcastsA0E18userDefaultsObjectSo6NSDataCSgyF_0();
  v8[0] = 0;
  v4 = [v2 initWithDataRepresentation:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_1D9176A6C();

    swift_willThrow();
  }

  return v4;
}

unint64_t sub_1D8ECEF14()
{
  result = qword_1ECAB1CB8;
  if (!qword_1ECAB1CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1CB8);
  }

  return result;
}

unint64_t sub_1D8ECEF68()
{
  result = qword_1ECAB1E38;
  if (!qword_1ECAB1E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1E38);
  }

  return result;
}

unint64_t sub_1D8ECEFBC()
{
  result = qword_1ECAB2B50;
  if (!qword_1ECAB2B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2B50);
  }

  return result;
}

unint64_t sub_1D8ECF010()
{
  result = qword_1ECAB28D0;
  if (!qword_1ECAB28D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB28D0);
  }

  return result;
}

unint64_t sub_1D8ECF064()
{
  result = qword_1ECAB1E28;
  if (!qword_1ECAB1E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1E28);
  }

  return result;
}

unint64_t sub_1D8ECF0B8()
{
  result = qword_1ECAB2B40;
  if (!qword_1ECAB2B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2B40);
  }

  return result;
}

unint64_t sub_1D8ECF10C()
{
  result = qword_1ECAB28C0;
  if (!qword_1ECAB28C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB28C0);
  }

  return result;
}

uint64_t sub_1D8ECF160(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShazamSignatureRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8ECF1C4(uint64_t a1)
{
  v2 = type metadata accessor for ShazamSignatureRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D8ECF224()
{
  result = qword_1ECAB5F80;
  if (!qword_1ECAB5F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5F80);
  }

  return result;
}

unint64_t sub_1D8ECF2C4()
{
  result = qword_1ECAB5F90;
  if (!qword_1ECAB5F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5F90);
  }

  return result;
}

unint64_t sub_1D8ECF31C()
{
  result = qword_1ECAB1CA8;
  if (!qword_1ECAB1CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1CA8);
  }

  return result;
}

unint64_t sub_1D8ECF374()
{
  result = qword_1ECAB1CB0;
  if (!qword_1ECAB1CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1CB0);
  }

  return result;
}

uint64_t sub_1D8ECF3C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x725565746F6D6572 && a2 == 0xE90000000000006CLL;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D614E656C6966 && a2 == 0xE800000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D726F46656C6966 && a2 == 0xEA00000000007461 || (sub_1D9179ACC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656D69746566696CLL && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

id sub_1D8ECF58C()
{
  result = sub_1D8ECF5AC();
  qword_1ECAAFCD8 = result;
  return result;
}

id sub_1D8ECF5AC()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E697B790]) init];
  [v0 setNumHistogramBuckets_];
  LODWORD(v1) = 2.0;
  [v0 setScoreThreshold_];
  v2 = objc_allocWithZone(MEMORY[0x1E697B7B8]);
  v3 = v0;
  v4 = [v2 initWithLowerBound:1.0 upperBound:86400.0];
  [v3 setSignatureDurationRange_];

  [v3 setSupportsSignatureTracking_];
  [v3 setBoundingBox_];
  [v3 setRefineStartEnd_];
  return v3;
}

id sub_1D8ECF6A0(unint64_t a1)
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (qword_1ECAAFCD0 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v2 = qword_1ECAAFCD8;
    v3 = objc_allocWithZone(MEMORY[0x1E697B788]);
    v18[0] = 0;
    v4 = v2;
    v17 = [v3 initWithConfiguration:v4 error:v18];
    if (!v17)
    {
      break;
    }

    v5 = v18[0];

    if (a1 >> 62)
    {
      v6 = sub_1D917935C();
      if (!v6)
      {
        return v17;
      }
    }

    else
    {
      v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v6)
      {
        return v17;
      }
    }

    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1DA72AA90](i, a1);
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v8 = *(a1 + 8 * i + 32);
      }

      v9 = v8;
      v10 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_1D8ECF8E0();
      v11 = sub_1D91785DC();
      v18[0] = 0;
      v12 = [v17 addReferenceSignature:v9 representingMediaItems:v11 error:v18];

      if (!v12)
      {
        v15 = v18[0];
        sub_1D9176A6C();

        swift_willThrow();
        return v17;
      }

      v13 = v18[0];

      if (v10 == v6)
      {
        return v17;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
  }

  v14 = v18[0];
  sub_1D9176A6C();

  swift_willThrow();
  return v17;
}

unint64_t sub_1D8ECF8E0()
{
  result = qword_1ECAAFE38;
  if (!qword_1ECAAFE38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECAAFE38);
  }

  return result;
}

uint64_t sub_1D8ECF92C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6440, &qword_1D91926D0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33 - v7;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6448, &qword_1D91926D8);
  MEMORY[0x1EEE9AC00](v38);
  v10 = &v33 - v9;
  v11 = v1 + 264;
  if (CGSizeEqualToSize(*(v1 + 440), *(v1 + 176)) && *(v1 + 456) == *(v1 + 192) && *(v1 + 1680) == 3)
  {
    v12 = sub_1D8ED1A50(v40);
    v13 = *(v1 + 1648);
    MEMORY[0x1EEE9AC00](v12);
    *(&v33 - 2) = v11;
    *(&v33 - 1) = v40;
    os_unfair_lock_lock((v13 + 24));
    sub_1D8EDCF90((v13 + 16), v39);
    os_unfair_lock_unlock((v13 + 24));
    v14 = *&v39[0];
    sub_1D8D08A50(v40, &qword_1ECAB49F0, &unk_1D918B180);
    v40[0] = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49F8, &qword_1D918B520);
    sub_1D8CF48EC(&qword_1ECAB0390, &qword_1ECAB49F8, &qword_1D918B520, MEMORY[0x1E695BED8]);
    v15 = sub_1D9177B1C();
  }

  else
  {
    v36 = v3;
    v37 = v2;
    v16 = sub_1D8ED1A50(v40);
    v34 = v8;
    v35 = v5;
    v17 = *(v1 + 1648);
    MEMORY[0x1EEE9AC00](v16);
    *(&v33 - 2) = v11;
    *(&v33 - 1) = v40;
    os_unfair_lock_lock((v17 + 24));
    sub_1D8EDCE10((v17 + 16), v39);
    os_unfair_lock_unlock((v17 + 24));
    v18 = *&v39[0];
    sub_1D8D08A50(v40, &qword_1ECAB49F0, &unk_1D918B180);
    v40[217] = v18;
    v33 = *(v1 + 1656);
    v19 = *(v1 + 1672);
    v20 = *(v1 + 1680);
    sub_1D8D088B4(v1, v40, &qword_1ECAB4958, &unk_1D91926E0);
    sub_1D8CFD9D8(v1 + 1688, v39);
    v21 = swift_allocObject();
    memcpy((v21 + 16), v40, 0x6C0uLL);
    sub_1D8D6BCE0(v39, v21 + 1744);
    *(v21 + 1784) = v33;
    *(v21 + 1800) = v19;
    *(v21 + 1808) = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49F8, &qword_1D918B520);
    type metadata accessor for ArtworkContent(0);
    sub_1D8CF48EC(&qword_1ECAB0390, &qword_1ECAB49F8, &qword_1D918B520, MEMORY[0x1E695BED8]);
    v22 = v34;
    sub_1D9177C6C();

    sub_1D8D41388(v1, v40);
    sub_1D8D088B4(&v40[28], v39, &qword_1ECAB4928, &qword_1D918B380);
    sub_1D8D58578(v40);
    v23 = v35;
    v24 = v36;
    v25 = *(v36 + 16);
    v26 = v10;
    v28 = v37;
    v27 = v38;
    v25(v35, v22, v37);
    sub_1D8D088B4(v39, v40, &qword_1ECAB4928, &qword_1D918B380);
    v25(v26, v23, v28);
    sub_1D8D088B4(v40, v26 + v27[9], &qword_1ECAB4928, &qword_1D918B380);
    v29 = v26 + v27[10];
    *v29 = "DiskResizeOperation";
    *(v29 + 8) = 19;
    *(v29 + 16) = 2;
    *(v26 + v27[12]) = 0;
    sub_1D8D08A50(v40, &qword_1ECAB4928, &qword_1D918B380);
    v30 = *(v24 + 8);
    v30(v23, v28);
    sub_1D8D08A50(v39, &qword_1ECAB4928, &qword_1D918B380);
    v30(v22, v28);
    v31 = (v26 + v27[11]);
    *v31 = 0;
    v31[1] = 0xE000000000000000;
    *(v26 + v27[13]) = 0;
    sub_1D8CF48EC(&qword_1ECAB27F0, &qword_1ECAB6448, &qword_1D91926D8, &protocol conformance descriptor for EmitLifecycle<A>);
    v15 = sub_1D9177B1C();
    sub_1D8D08A50(v26, &qword_1ECAB6448, &qword_1D91926D8);
  }

  return v15;
}

uint64_t sub_1D8ECFEE4@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t *, uint64_t)@<X1>, void *a3@<X2>, unsigned int a4@<W3>, char *a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>)
{
  v98 = a4;
  v106 = a3;
  v102 = a1;
  v95 = a5;
  v12 = sub_1D91773AC();
  v91 = *(v12 - 8);
  v92 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v90 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v97 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v90 - v17;
  v108 = type metadata accessor for ArtworkContent(0);
  MEMORY[0x1EEE9AC00](v108);
  v100 = (&v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_1D9176C2C();
  v111 = *(v20 - 8);
  v112 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v99 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v101 = &v90 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v110 = &v90 - v25;
  v107 = sub_1D917734C();
  v113 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v96 = &v90 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v105 = &v90 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v90 - v30;
  v32 = sub_1D9176EAC();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v90 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = a2;
  sub_1D8D088B4(a2 + 224, v114, &qword_1ECAB4928, &qword_1D918B380);
  v36 = v115;
  if (v115)
  {
    v37 = v116;
    __swift_project_boxed_opaque_existential_1(v114, v115);
    v38 = (*(v37 + 8))(v36, v37);
    v40 = v39;
    __swift_destroy_boxed_opaque_existential_1Tm(v114);
  }

  else
  {
    sub_1D8D08A50(v114, &qword_1ECAB4928, &qword_1D918B380);
    sub_1D9176E9C();
    v38 = sub_1D9176E5C();
    v40 = v41;
    (*(v33 + 8))(v35, v32);
  }

  if (qword_1EDCD1168 != -1)
  {
    swift_once();
  }

  v42 = sub_1D917739C();
  v43 = __swift_project_value_buffer(v42, qword_1EDCD1170);
  sub_1D917737C();
  sub_1D917731C();

  v94 = v43;
  v44 = sub_1D917737C();
  v45 = sub_1D9178F5C();

  v46 = sub_1D917918C();
  v104 = v18;
  if (v46)
  {
    v47 = v38;
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v114[0] = v49;
    *v48 = 136315138;
    v50 = sub_1D8CFA924(v47, v40, v114);

    *(v48 + 4) = v50;
    v51 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v44, v45, v51, "ResizeImage", "[identifier=%{name=identifier}s] Resize", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    v52 = v109;
    MEMORY[0x1DA72CB90](v49, -1, -1);
    MEMORY[0x1DA72CB90](v48, -1, -1);

    v53 = v112;
  }

  else
  {

    v53 = v112;
    v52 = v109;
  }

  v54 = v113;
  v55 = v107;
  (*(v113 + 16))(v105, v31, v107);
  sub_1D91773FC();
  swift_allocObject();
  v105 = sub_1D91773EC();
  v57 = *(v54 + 8);
  v56 = v54 + 8;
  v93 = v57;
  v57(v31, v55);
  sub_1D8D41388(v103, v114);
  sub_1D8D088B4(&v117, v118, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D58578(v114);
  v58 = v119;
  if (v119)
  {
    v59 = v120;
    __swift_project_boxed_opaque_existential_1(v118, v119);
    __swift_project_boxed_opaque_existential_1(v106, v106[3]);
    swift_getDynamicType();
    v60 = sub_1D9179FEC();
    (*(v59 + 24))(v121, "ResizeImage", 11, 2, v60, v61, v58, v59);

    __swift_destroy_boxed_opaque_existential_1Tm(v118);
  }

  else
  {
    sub_1D8D08A50(v118, &qword_1ECAB4928, &qword_1D918B380);
    memset(v121, 0, sizeof(v121));
    v122 = 0;
  }

  v62 = v100;
  sub_1D8EDCD8C(v102, v100, type metadata accessor for ArtworkContent);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v63 = v53;
    v113 = v56;
    v64 = v62;
  }

  else
  {
    v65 = *v62;
    v66 = v62[1];
    sub_1D8ED0AA4(4u, v101);
    sub_1D9176CAC();
    if (v52)
    {
      sub_1D8D7567C(v65, v66);

      v67 = v101;
LABEL_19:
      (*(v111 + 8))(v67, v53);
      return sub_1D8D08A50(v121, &unk_1ECAB6E00, &qword_1D91952E0);
    }

    v63 = v53;
    v113 = v56;
    v109 = 0;
    sub_1D8D7567C(v65, v66);
    v64 = v101;
  }

  v68 = v110;
  v69 = v111;
  v103 = *(v111 + 32);
  v103(v110, v64, v63);
  v70 = v106[3];
  v71 = v106[4];
  __swift_project_boxed_opaque_existential_1(v106, v70);
  v72 = v104;
  (*(v71 + 8))(v68, v98, v70, v71, a6, a7, a8);
  v73 = v97;
  sub_1D8D088B4(v72, v97, &unk_1ECAB5910, &qword_1D9188C90);
  if ((*(v69 + 48))(v73, 1, v63) == 1)
  {
    sub_1D8D08A50(v73, &unk_1ECAB5910, &qword_1D9188C90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6450, &qword_1D91926F0);
    sub_1D8CF48EC(&qword_1ECAB6458, &qword_1ECAB6450, &qword_1D91926F0, &protocol conformance descriptor for DiskResizeArtworkProcessingStep<A>.ResizeError);
    v53 = v112;
    swift_allocError();
    *v74 = 0;
    swift_willThrow();

    sub_1D8D08A50(v72, &unk_1ECAB5910, &qword_1D9188C90);
    v67 = v110;
    goto LABEL_19;
  }

  v103(v99, v73, v63);
  sub_1D8D088B4(v121, v114, &unk_1ECAB6E00, &qword_1D91952E0);
  if (v115)
  {
    __swift_project_boxed_opaque_existential_1(v114, v115);
    TraceInterval.end()();
    __swift_destroy_boxed_opaque_existential_1Tm(v114);
  }

  else
  {
    sub_1D8D08A50(v114, &unk_1ECAB6E00, &qword_1D91952E0);
  }

  v76 = v110;
  v77 = v96;
  v78 = sub_1D917737C();
  sub_1D91773DC();
  v79 = sub_1D9178F4C();
  v80 = sub_1D917918C();
  v81 = v112;
  if (v80)
  {

    v82 = v90;
    sub_1D917740C();

    v84 = v91;
    v83 = v92;
    if ((*(v91 + 88))(v82, v92) == *MEMORY[0x1E69E93E8])
    {
      v85 = "[Error] Interval already ended";
    }

    else
    {
      (*(v84 + 8))(v82, v83);
      v85 = "";
    }

    v86 = swift_slowAlloc();
    *v86 = 0;
    v87 = v96;
    v88 = sub_1D917732C();
    v89 = v85;
    v77 = v87;
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v78, v79, v88, "ResizeImage", v89, v86, 2u);
    MEMORY[0x1DA72CB90](v86, -1, -1);
    v81 = v112;
    v76 = v110;
  }

  v93(v77, v107);
  sub_1D8D08A50(v104, &unk_1ECAB5910, &qword_1D9188C90);
  (*(v111 + 8))(v76, v81);
  sub_1D8D08A50(v121, &unk_1ECAB6E00, &qword_1D91952E0);
  v103(v95, v99, v81);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D8ED0AA4@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v25[1] = a2;
  v3 = sub_1D9176EAC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9176C2C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v25 - v12;
  v14 = [objc_opt_self() defaultManager];
  v15 = [v14 temporaryDirectory];

  sub_1D9176B9C();
  sub_1D9176E9C();
  sub_1D9176E5C();
  (*(v4 + 8))(v6, v3);
  sub_1D9176B3C();

  v16 = *(v8 + 8);
  v16(v10, v7);
  v17 = 6778480;
  v25[2] = 0x697365722E706D74;
  v25[3] = 0xEB000000002E657ALL;
  v18 = 0xE400000000000000;
  v19 = 1734701162;
  v20 = 0xE400000000000000;
  v21 = 1667851624;
  if (a1 != 3)
  {
    v21 = 6778217;
    v20 = 0xE300000000000000;
  }

  if (a1 != 2)
  {
    v19 = v21;
    v18 = v20;
  }

  if (a1)
  {
    v17 = 6778986;
  }

  if (a1 <= 1u)
  {
    v22 = v17;
  }

  else
  {
    v22 = v19;
  }

  if (a1 <= 1u)
  {
    v23 = 0xE300000000000000;
  }

  else
  {
    v23 = v18;
  }

  MEMORY[0x1DA7298F0](v22, v23);

  sub_1D9176B4C();

  return (v16)(v13, v7);
}

uint64_t sub_1D8ED0D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v26 = a1;
  v24 = a3;
  v5 = type metadata accessor for ArtworkContent(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1D9176C2C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v24 - v16;
  v25 = a2;
  v18 = *(a2 + 833);
  sub_1D8ED1030(v18, &v24 - v16);
  sub_1D8EDCD8C(v26, v7, type metadata accessor for ArtworkContent);
  v26 = v5;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = v7;
  }

  else
  {
    v19 = *v7;
    v20 = v7[1];
    sub_1D8ED1030(v18, v11);
    sub_1D9176CAC();
    if (v3)
    {
      sub_1D8D7567C(v19, v20);
LABEL_8:
      v22 = *(v9 + 8);
      v22(v11, v8);
      return (v22)(v17, v8);
    }

    sub_1D8D7567C(v19, v20);
  }

  v21 = *(v9 + 32);
  v21(v14, v11, v8);
  sub_1D8E52BA4(v14, v17, v25 + 272);
  if (v3)
  {
    v11 = v14;
    goto LABEL_8;
  }

  (*(v9 + 8))(v14, v8);
  v21(v24, v17, v8);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D8ED1030@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v22[1] = a2;
  v3 = sub_1D9176EAC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9176C2C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v22 - v12;
  v14 = [objc_opt_self() defaultManager];
  v15 = [v14 temporaryDirectory];

  sub_1D9176B9C();
  sub_1D9176E9C();
  sub_1D9176E5C();
  (*(v4 + 8))(v6, v3);
  sub_1D9176B3C();

  v16 = *(v8 + 8);
  v16(v10, v7);
  v22[2] = 0x6D726F662E706D74;
  v22[3] = 0xEB000000002E7461;
  v17 = 1734701162;
  if (a1 != 2)
  {
    v17 = 1667851624;
  }

  v18 = 6778986;
  if (!a1)
  {
    v18 = 6778480;
  }

  if (a1 <= 1u)
  {
    v19 = v18;
  }

  else
  {
    v19 = v17;
  }

  if (a1 <= 1u)
  {
    v20 = 0xE300000000000000;
  }

  else
  {
    v20 = 0xE400000000000000;
  }

  MEMORY[0x1DA7298F0](v19, v20);

  sub_1D9176B4C();

  return (v16)(v13, v7);
}

uint64_t sub_1D8ED12F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(a1 + 264))();
  sub_1D8D41388(a1, &v9);
  sub_1D8D088B4(&v11, v12, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D58578(&v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6460, &qword_1D91926F8);
  v9 = sub_1D9179FEC();
  v10 = v5;
  MEMORY[0x1DA7298F0](41, 0xE100000000000000);
  v6 = v9;
  v7 = v10;
  sub_1D8D088B4(v12, &v9, &qword_1ECAB4928, &qword_1D918B380);
  *a2 = v4;
  sub_1D8D088B4(&v9, a2 + 8, &qword_1ECAB4928, &qword_1D918B380);
  *(a2 + 48) = "FetchFromSource";
  *(a2 + 56) = 15;
  *(a2 + 64) = 2;
  *(a2 + 88) = 0;

  MEMORY[0x1DA7298F0](8250, 0xE200000000000000);

  sub_1D8D08A50(&v9, &qword_1ECAB4928, &qword_1D918B380);
  result = sub_1D8D08A50(v12, &qword_1ECAB4928, &qword_1D918B380);
  *(a2 + 72) = v6;
  *(a2 + 80) = v7;
  *(a2 + 89) = 0;
  return result;
}

uint64_t sub_1D8ED1460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTMLRequest(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6288, &qword_1D91924E0);
  v9 = (*(a1 + *(v8 + 52)))(a1);
  sub_1D8EDCD8C(a1, v7, type metadata accessor for TTMLRequest);
  sub_1D8D088B4(&v7[*(v5 + 44)], v20, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D671A8(v7, type metadata accessor for TTMLRequest);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6310, &qword_1D9192570);
  v18 = sub_1D9179FEC();
  v19 = v10;
  MEMORY[0x1DA7298F0](41, 0xE100000000000000);
  v11 = v18;
  v12 = v19;
  sub_1D8D088B4(v20, &v18, &qword_1ECAB4928, &qword_1D918B380);
  *a2 = v9;
  sub_1D8D088B4(&v18, a2 + 8, &qword_1ECAB4928, &qword_1D918B380);
  *(a2 + 48) = "FetchFromSource";
  *(a2 + 56) = 15;
  *(a2 + 64) = 2;
  *(a2 + 88) = 0;
  v16 = v11;
  v17 = v12;

  MEMORY[0x1DA7298F0](8250, 0xE200000000000000);

  v13 = v16;
  v14 = v17;
  sub_1D8D08A50(&v18, &qword_1ECAB4928, &qword_1D918B380);
  result = sub_1D8D08A50(v20, &qword_1ECAB4928, &qword_1D918B380);
  *(a2 + 72) = v13;
  *(a2 + 80) = v14;
  *(a2 + 89) = 0;
  return result;
}

uint64_t sub_1D8ED1654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ShazamSignatureRequest(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6340, &qword_1D91925A8);
  v9 = (*(a1 + *(v8 + 52)))(a1);
  sub_1D8EDCD8C(a1, v7, type metadata accessor for ShazamSignatureRequest);
  sub_1D8D088B4(&v7[*(v5 + 44)], v20, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D671A8(v7, type metadata accessor for ShazamSignatureRequest);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB63C0, &qword_1D9192628);
  v18 = sub_1D9179FEC();
  v19 = v10;
  MEMORY[0x1DA7298F0](41, 0xE100000000000000);
  v11 = v18;
  v12 = v19;
  sub_1D8D088B4(v20, &v18, &qword_1ECAB4928, &qword_1D918B380);
  *a2 = v9;
  sub_1D8D088B4(&v18, a2 + 8, &qword_1ECAB4928, &qword_1D918B380);
  *(a2 + 48) = "FetchFromSource";
  *(a2 + 56) = 15;
  *(a2 + 64) = 2;
  *(a2 + 88) = 0;
  v16 = v11;
  v17 = v12;

  MEMORY[0x1DA7298F0](8250, 0xE200000000000000);

  v13 = v16;
  v14 = v17;
  sub_1D8D08A50(&v18, &qword_1ECAB4928, &qword_1D918B380);
  result = sub_1D8D08A50(v20, &qword_1ECAB4928, &qword_1D918B380);
  *(a2 + 72) = v13;
  *(a2 + 80) = v14;
  *(a2 + 89) = 0;
  return result;
}

uint64_t sub_1D8ED1848@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D8ECF92C();
  v5 = *(v2 + 2000);
  v6 = *(v2 + 1728);
  sub_1D8D41388(v2 + 1736, v18);
  v17 = v4;
  v18[33] = v6;
  v19 = v5;
  v20 = 0;
  sub_1D8D41388(v2 + 1736, &v13);
  sub_1D8D088B4(&v15, v16, &qword_1ECAB4928, &qword_1D918B380);

  sub_1D8D58578(&v13);
  v13 = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6430, &qword_1D91926C0);
  v13 = sub_1D917826C();
  v14 = v7;
  MEMORY[0x1DA7298F0](545005609, 0xE400000000000000);
  v8 = ArtworkRequest.fileName.getter();
  MEMORY[0x1DA7298F0](v8);

  v9 = v13;
  v10 = v14;
  sub_1D8D088B4(&v17, &v13, &qword_1ECAB6438, &qword_1D91926C8);
  sub_1D8D088B4(v16, v12, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D088B4(&v13, a1, &qword_1ECAB6438, &qword_1D91926C8);
  sub_1D8D088B4(v12, a1 + 288, &qword_1ECAB4928, &qword_1D918B380);
  *(a1 + 328) = "Cache";
  *(a1 + 336) = 5;
  *(a1 + 344) = 2;
  *(a1 + 368) = 0;

  MEMORY[0x1DA7298F0](8250, 0xE200000000000000);

  sub_1D8D08A50(v12, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D08A50(&v13, &qword_1ECAB6438, &qword_1D91926C8);
  sub_1D8D08A50(v16, &qword_1ECAB4928, &qword_1D918B380);
  result = sub_1D8D08A50(&v17, &qword_1ECAB6438, &qword_1D91926C8);
  *(a1 + 352) = v9;
  *(a1 + 360) = v10;
  *(a1 + 369) = 0;
  return result;
}

uint64_t sub_1D8ED1A50@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6440, &qword_1D91926D0);
  v5 = *(v4 - 8);
  v19 = v4;
  v20 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - v6;
  v24 = sub_1D8E46340();
  sub_1D8D088B4(v1, v28, &qword_1ECAB4940, &qword_1D918AFF0);
  v8 = swift_allocObject();
  memcpy((v8 + 16), v28, 0x342uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49F8, &qword_1D918B520);
  type metadata accessor for ArtworkContent(0);
  sub_1D8CF48EC(&qword_1ECAB0390, &qword_1ECAB49F8, &qword_1D918B520, MEMORY[0x1E695BED8]);
  sub_1D9177C6C();

  sub_1D8CF48EC(&qword_1ECAB0698, &qword_1ECAB6440, &qword_1D91926D0, MEMORY[0x1E695BE28]);
  v9 = v19;
  v10 = sub_1D9177B1C();
  (*(v20 + 8))(v7, v9);
  LOBYTE(v9) = *(v2 + 1112);
  v11 = *(v2 + 840);
  sub_1D8D41388(v2 + 848, &v28[1]);
  v28[0] = v10;
  v28[34] = v11;
  LOWORD(v28[35]) = v9;
  sub_1D8D41388(v2 + 848, &v24);
  sub_1D8D088B4(&v26, v27, &qword_1ECAB4928, &qword_1D918B380);

  sub_1D8D58578(&v24);
  v24 = v11;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6430, &qword_1D91926C0);
  v24 = sub_1D917826C();
  v25 = v12;
  MEMORY[0x1DA7298F0](545005609, 0xE400000000000000);
  v13 = ArtworkRequest.fileName.getter();
  MEMORY[0x1DA7298F0](v13);

  v14 = v24;
  v15 = v25;
  sub_1D8D088B4(v28, &v24, &qword_1ECAB6438, &qword_1D91926C8);
  sub_1D8D088B4(v27, v23, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D088B4(&v24, a1, &qword_1ECAB6438, &qword_1D91926C8);
  sub_1D8D088B4(v23, a1 + 288, &qword_1ECAB4928, &qword_1D918B380);
  *(a1 + 328) = "Cache";
  *(a1 + 336) = 5;
  *(a1 + 344) = 2;
  *(a1 + 368) = 0;
  v21 = v14;
  v22 = v15;

  MEMORY[0x1DA7298F0](8250, 0xE200000000000000);

  v16 = v21;
  v17 = v22;
  sub_1D8D08A50(v23, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D08A50(&v24, &qword_1ECAB6438, &qword_1D91926C8);
  sub_1D8D08A50(v27, &qword_1ECAB4928, &qword_1D918B380);
  result = sub_1D8D08A50(v28, &qword_1ECAB6438, &qword_1D91926C8);
  *(a1 + 352) = v16;
  *(a1 + 360) = v17;
  *(a1 + 369) = 0;
  return result;
}

uint64_t sub_1D8ED1E24@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v39 = type metadata accessor for TTMLRequest(0);
  MEMORY[0x1EEE9AC00](v39);
  v3 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB62A8, &qword_1D9192500);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB62B0, &qword_1D9192508);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v37 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6298, &qword_1D91924F0);
  sub_1D8ED22B4(v6);
  v13 = *(v1 + *(v12 + 48));
  v41 = v1;
  v42 = v6;
  os_unfair_lock_lock(v13 + 6);
  sub_1D8EDC668(&v13[4], &v53);
  os_unfair_lock_unlock(v13 + 6);
  v14 = v53;
  sub_1D8D08A50(v6, &qword_1ECAB62A8, &qword_1D9192500);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB62A0, &qword_1D91924F8);
  v16 = v1 + v15[20];
  v17 = (v1 + v15[19]);
  v18 = *(v1 + v15[21]);
  v19 = v17[1];
  v46 = *v17;
  v47 = v19;
  v20 = v17[3];
  v48 = v17[2];
  v49 = v20;
  sub_1D8EDCD8C(v16, v11 + v7[13], type metadata accessor for TTMLRequest);
  *v11 = v14;
  v21 = (v11 + v7[14]);
  v22 = v49;
  v21[2] = v48;
  v21[3] = v22;
  v23 = v47;
  *v21 = v46;
  v21[1] = v23;
  *(v11 + v7[15]) = v18;
  *(v11 + v7[16]) = 0;
  sub_1D8EDCD8C(v16, v3, type metadata accessor for TTMLRequest);
  v24 = v39;
  sub_1D8D088B4(&v3[*(v39 + 36)], v45, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D088B4(&v46, v50, &qword_1ECAB6190, &qword_1D91921D0);
  sub_1D8D671A8(v3, type metadata accessor for TTMLRequest);
  v25 = v17[1];
  v50[0] = *v17;
  v50[1] = v25;
  v26 = v17[3];
  v51 = v17[2];
  v52 = v26;
  v44[0] = v50[0];
  v44[1] = v25;
  v44[2] = v51;
  v44[3] = v26;
  sub_1D8D088B4(v50, &v43, &qword_1ECAB6190, &qword_1D91921D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6190, &qword_1D91921D0);
  *&v44[0] = sub_1D917826C();
  *(&v44[0] + 1) = v27;
  MEMORY[0x1DA7298F0](545005609, 0xE400000000000000);
  MEMORY[0x1DA7298F0](*(v16 + *(v24 + 24)), *(v16 + *(v24 + 24) + 8));
  v28 = v44[0];
  v29 = v40;
  sub_1D8D088B4(v11, v40, &qword_1ECAB62B0, &qword_1D9192508);
  sub_1D8D088B4(v45, v44, &qword_1ECAB4928, &qword_1D918B380);
  v30 = v38;
  sub_1D8D088B4(v29, v38, &qword_1ECAB62B0, &qword_1D9192508);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6280, &qword_1D91924D8);
  sub_1D8D088B4(v44, v30 + v31[9], &qword_1ECAB4928, &qword_1D918B380);
  v32 = v30 + v31[10];
  *v32 = "Cache";
  *(v32 + 8) = 5;
  *(v32 + 16) = 2;
  *(v30 + v31[12]) = 0;
  v43 = v28;

  MEMORY[0x1DA7298F0](8250, 0xE200000000000000);

  v35 = v43;
  v34 = v35 >> 64;
  v33 = v35;
  sub_1D8D08A50(v44, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D08A50(v29, &qword_1ECAB62B0, &qword_1D9192508);
  sub_1D8D08A50(v45, &qword_1ECAB4928, &qword_1D918B380);
  result = sub_1D8D08A50(v11, &qword_1ECAB62B0, &qword_1D9192508);
  *(v30 + v31[11]) = __PAIR128__(v34, v33);
  *(v30 + v31[13]) = 0;
  return result;
}

uint64_t sub_1D8ED22B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  v40 = type metadata accessor for TTMLRequest(0) - 8;
  MEMORY[0x1EEE9AC00](v40);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6288, &qword_1D91924E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v39 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6308, &qword_1D9192568);
  v10 = (v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v41 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v39 - v13;
  sub_1D8D088B4(v2, v8, &qword_1ECAB6288, &qword_1D91924E0);
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = swift_allocObject();
  sub_1D8D6734C(v8, v16 + v15, &qword_1ECAB6288, &qword_1D91924E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB62D8, &qword_1D9192530);
  sub_1D8CF48EC(&qword_1ECAB2798, &qword_1ECAB62D8, &qword_1D9192530, &protocol conformance descriptor for EmitLifecycle<A>);
  sub_1D9177A7C();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6290, &qword_1D91924E8);
  v18 = v2 + v17[20];
  v19 = (v2 + v17[19]);
  LOBYTE(v15) = *(v2 + v17[21]);
  v20 = v19[1];
  v47 = *v19;
  v48 = v20;
  v21 = v19[3];
  v49 = v19[2];
  v50 = v21;
  sub_1D8EDCD8C(v18, &v14[v10[15]], type metadata accessor for TTMLRequest);
  v22 = &v14[v10[16]];
  v23 = v48;
  *v22 = v47;
  *(v22 + 1) = v23;
  v24 = v50;
  *(v22 + 2) = v49;
  *(v22 + 3) = v24;
  v14[v10[17]] = v15;
  v14[v10[18]] = 0;
  sub_1D8EDCD8C(v18, v4, type metadata accessor for TTMLRequest);
  v25 = v40;
  sub_1D8D088B4(&v4[*(v40 + 44)], v46, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D088B4(&v47, v51, &qword_1ECAB6190, &qword_1D91921D0);
  sub_1D8D671A8(v4, type metadata accessor for TTMLRequest);
  v26 = v19[1];
  v51[0] = *v19;
  v51[1] = v26;
  v27 = v19[3];
  v52 = v19[2];
  v53 = v27;
  v45[0] = v51[0];
  v45[1] = v26;
  v45[2] = v52;
  v45[3] = v27;
  sub_1D8D088B4(v51, &v43, &qword_1ECAB6190, &qword_1D91921D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6190, &qword_1D91921D0);
  *&v45[0] = sub_1D917826C();
  *(&v45[0] + 1) = v28;
  MEMORY[0x1DA7298F0](545005609, 0xE400000000000000);
  MEMORY[0x1DA7298F0](*(v18 + *(v25 + 32)), *(v18 + *(v25 + 32) + 8));
  v29 = *(&v45[0] + 1);
  v40 = *&v45[0];
  v30 = v41;
  sub_1D8D088B4(v14, v41, &qword_1ECAB6308, &qword_1D9192568);
  sub_1D8D088B4(v46, v45, &qword_1ECAB4928, &qword_1D918B380);
  v31 = v42;
  sub_1D8D088B4(v30, v42, &qword_1ECAB6308, &qword_1D9192568);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB62A8, &qword_1D9192500);
  sub_1D8D088B4(v45, v31 + v32[9], &qword_1ECAB4928, &qword_1D918B380);
  v33 = v31 + v32[10];
  *v33 = "Cache";
  *(v33 + 8) = 5;
  *(v33 + 16) = 2;
  *(v31 + v32[12]) = 0;
  v34 = v31;
  v43 = v40;
  v44 = v29;

  MEMORY[0x1DA7298F0](8250, 0xE200000000000000);

  v35 = v43;
  v36 = v44;
  sub_1D8D08A50(v45, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D08A50(v30, &qword_1ECAB6308, &qword_1D9192568);
  sub_1D8D08A50(v46, &qword_1ECAB4928, &qword_1D918B380);
  result = sub_1D8D08A50(v14, &qword_1ECAB6308, &qword_1D9192568);
  v38 = (v34 + v32[11]);
  *v38 = v35;
  v38[1] = v36;
  *(v34 + v32[13]) = 0;
  return result;
}

uint64_t sub_1D8ED27D0@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v39 = type metadata accessor for ShazamSignatureRequest(0);
  MEMORY[0x1EEE9AC00](v39);
  v3 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6360, &qword_1D91925C8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6368, &qword_1D91925D0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v37 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6350, &qword_1D91925B8);
  sub_1D8ED2C60(v6);
  v13 = *(v1 + *(v12 + 48));
  v41 = v1;
  v42 = v6;
  os_unfair_lock_lock(v13 + 6);
  sub_1D8EDC7B0(&v13[4], &v53);
  os_unfair_lock_unlock(v13 + 6);
  v14 = v53;
  sub_1D8D08A50(v6, &qword_1ECAB6360, &qword_1D91925C8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6358, &qword_1D91925C0);
  v16 = v1 + v15[20];
  v17 = (v1 + v15[19]);
  v18 = *(v1 + v15[21]);
  v19 = v17[1];
  v46 = *v17;
  v47 = v19;
  v20 = v17[3];
  v48 = v17[2];
  v49 = v20;
  sub_1D8EDCD8C(v16, v11 + v7[13], type metadata accessor for ShazamSignatureRequest);
  *v11 = v14;
  v21 = (v11 + v7[14]);
  v22 = v49;
  v21[2] = v48;
  v21[3] = v22;
  v23 = v47;
  *v21 = v46;
  v21[1] = v23;
  *(v11 + v7[15]) = v18;
  *(v11 + v7[16]) = 0;
  sub_1D8EDCD8C(v16, v3, type metadata accessor for ShazamSignatureRequest);
  v24 = v39;
  sub_1D8D088B4(&v3[*(v39 + 36)], v45, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D088B4(&v46, v50, &qword_1ECAB6198, &qword_1D91921D8);
  sub_1D8D671A8(v3, type metadata accessor for ShazamSignatureRequest);
  v25 = v17[1];
  v50[0] = *v17;
  v50[1] = v25;
  v26 = v17[3];
  v51 = v17[2];
  v52 = v26;
  v44[0] = v50[0];
  v44[1] = v25;
  v44[2] = v51;
  v44[3] = v26;
  sub_1D8D088B4(v50, &v43, &qword_1ECAB6198, &qword_1D91921D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6198, &qword_1D91921D8);
  *&v44[0] = sub_1D917826C();
  *(&v44[0] + 1) = v27;
  MEMORY[0x1DA7298F0](545005609, 0xE400000000000000);
  MEMORY[0x1DA7298F0](*(v16 + *(v24 + 24)), *(v16 + *(v24 + 24) + 8));
  v28 = v44[0];
  v29 = v40;
  sub_1D8D088B4(v11, v40, &qword_1ECAB6368, &qword_1D91925D0);
  sub_1D8D088B4(v45, v44, &qword_1ECAB4928, &qword_1D918B380);
  v30 = v38;
  sub_1D8D088B4(v29, v38, &qword_1ECAB6368, &qword_1D91925D0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6338, &qword_1D91925A0);
  sub_1D8D088B4(v44, v30 + v31[9], &qword_1ECAB4928, &qword_1D918B380);
  v32 = v30 + v31[10];
  *v32 = "Cache";
  *(v32 + 8) = 5;
  *(v32 + 16) = 2;
  *(v30 + v31[12]) = 0;
  v43 = v28;

  MEMORY[0x1DA7298F0](8250, 0xE200000000000000);

  v35 = v43;
  v34 = v35 >> 64;
  v33 = v35;
  sub_1D8D08A50(v44, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D08A50(v29, &qword_1ECAB6368, &qword_1D91925D0);
  sub_1D8D08A50(v45, &qword_1ECAB4928, &qword_1D918B380);
  result = sub_1D8D08A50(v11, &qword_1ECAB6368, &qword_1D91925D0);
  *(v30 + v31[11]) = __PAIR128__(v34, v33);
  *(v30 + v31[13]) = 0;
  return result;
}

uint64_t sub_1D8ED2C60@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  v40 = type metadata accessor for ShazamSignatureRequest(0) - 8;
  MEMORY[0x1EEE9AC00](v40);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6340, &qword_1D91925A8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v39 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB63B8, &qword_1D9192620);
  v10 = (v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v41 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v39 - v13;
  sub_1D8D088B4(v2, v8, &qword_1ECAB6340, &qword_1D91925A8);
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = swift_allocObject();
  sub_1D8D6734C(v8, v16 + v15, &qword_1ECAB6340, &qword_1D91925A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6388, &qword_1D91925F0);
  sub_1D8CF48EC(&qword_1ECAB2790, &qword_1ECAB6388, &qword_1D91925F0, &protocol conformance descriptor for EmitLifecycle<A>);
  sub_1D9177A7C();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6348, &qword_1D91925B0);
  v18 = v2 + v17[20];
  v19 = (v2 + v17[19]);
  LOBYTE(v15) = *(v2 + v17[21]);
  v20 = v19[1];
  v47 = *v19;
  v48 = v20;
  v21 = v19[3];
  v49 = v19[2];
  v50 = v21;
  sub_1D8EDCD8C(v18, &v14[v10[15]], type metadata accessor for ShazamSignatureRequest);
  v22 = &v14[v10[16]];
  v23 = v48;
  *v22 = v47;
  *(v22 + 1) = v23;
  v24 = v50;
  *(v22 + 2) = v49;
  *(v22 + 3) = v24;
  v14[v10[17]] = v15;
  v14[v10[18]] = 0;
  sub_1D8EDCD8C(v18, v4, type metadata accessor for ShazamSignatureRequest);
  v25 = v40;
  sub_1D8D088B4(&v4[*(v40 + 44)], v46, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D088B4(&v47, v51, &qword_1ECAB6198, &qword_1D91921D8);
  sub_1D8D671A8(v4, type metadata accessor for ShazamSignatureRequest);
  v26 = v19[1];
  v51[0] = *v19;
  v51[1] = v26;
  v27 = v19[3];
  v52 = v19[2];
  v53 = v27;
  v45[0] = v51[0];
  v45[1] = v26;
  v45[2] = v52;
  v45[3] = v27;
  sub_1D8D088B4(v51, &v43, &qword_1ECAB6198, &qword_1D91921D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6198, &qword_1D91921D8);
  *&v45[0] = sub_1D917826C();
  *(&v45[0] + 1) = v28;
  MEMORY[0x1DA7298F0](545005609, 0xE400000000000000);
  MEMORY[0x1DA7298F0](*(v18 + *(v25 + 32)), *(v18 + *(v25 + 32) + 8));
  v29 = *(&v45[0] + 1);
  v40 = *&v45[0];
  v30 = v41;
  sub_1D8D088B4(v14, v41, &qword_1ECAB63B8, &qword_1D9192620);
  sub_1D8D088B4(v46, v45, &qword_1ECAB4928, &qword_1D918B380);
  v31 = v42;
  sub_1D8D088B4(v30, v42, &qword_1ECAB63B8, &qword_1D9192620);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6360, &qword_1D91925C8);
  sub_1D8D088B4(v45, v31 + v32[9], &qword_1ECAB4928, &qword_1D918B380);
  v33 = v31 + v32[10];
  *v33 = "Cache";
  *(v33 + 8) = 5;
  *(v33 + 16) = 2;
  *(v31 + v32[12]) = 0;
  v34 = v31;
  v43 = v40;
  v44 = v29;

  MEMORY[0x1DA7298F0](8250, 0xE200000000000000);

  v35 = v43;
  v36 = v44;
  sub_1D8D08A50(v45, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D08A50(v30, &qword_1ECAB63B8, &qword_1D9192620);
  sub_1D8D08A50(v46, &qword_1ECAB4928, &qword_1D918B380);
  result = sub_1D8D08A50(v14, &qword_1ECAB63B8, &qword_1D9192620);
  v38 = (v34 + v32[11]);
  *v38 = v35;
  v38[1] = v36;
  *(v34 + v32[13]) = 0;
  return result;
}

uint64_t sub_1D8ED317C(uint64_t *a1, double *a2, uint64_t a3)
{
  v52 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB63F8, &qword_1D9192678);
  v53 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v46 - v6;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6400, &qword_1D9192680);
  v8 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v55 = &v46 - v12;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6408, &qword_1D9192688);
  MEMORY[0x1EEE9AC00](v56);
  v14 = &v46 - v13;
  v15 = *a1;
  if (*(*a1 + 16) && (v16 = sub_1D8F06844(a2), (v17 & 1) != 0))
  {
    v18 = *(*(v15 + 56) + 8 * v16);
    sub_1D8D41388(a2, v67);
    sub_1D8D088B4(&v67[14], &v58, &qword_1ECAB4928, &qword_1D918B380);

    sub_1D8D58578(v67);
    if (v59)
    {
      sub_1D8D6BCE0(&v58, v64);
      v19 = sub_1D8D41388(a2, &v58);
      MEMORY[0x1EEE9AC00](v19);

      v20 = v68;
      sub_1D8F4DEA8(sub_1D8EDCD5C, v15, v67);
      v68 = v20;

      sub_1D8D58578(&v58);
      if (*(&v67[0] + 1))
      {
        v61 = &type metadata for ArtworkRequest;
        v62 = &protocol witness table for ArtworkRequest;
        *&v60 = swift_allocObject();
        memcpy((v60 + 16), v67, 0x108uLL);
        sub_1D8D6BCE0(&v60, v63);
        v21 = __swift_project_boxed_opaque_existential_1(v63, v63[3]);
        sub_1D8D088B4((v21 + 28), &v58, &qword_1ECAB4928, &qword_1D918B380);
        if (v59)
        {
          sub_1D8D6BCE0(&v58, v67);
          v22 = v65;
          v23 = v66;
          __swift_project_boxed_opaque_existential_1(v64, v65);
          v57 = a2;
          v24 = *(&v67[1] + 1);
          v25 = *&v67[2];
          __swift_project_boxed_opaque_existential_1(v67, *(&v67[1] + 1));
          v26 = (*(v25 + 8))(v24, v25);
          a2 = v57;
          (*(v23 + 16))("SwitchingToUniquePipelineTrace", 30, 2, v26, v27, v22, v23);

          __swift_destroy_boxed_opaque_existential_1Tm(v67);
        }

        else
        {
          sub_1D8D08A50(&v58, &qword_1ECAB4928, &qword_1D918B380);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v63);
      }

      else
      {
        sub_1D8D08A50(v67, &qword_1ECAB4B00, &unk_1D9192690);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v64);
    }

    else
    {
      sub_1D8D08A50(&v58, &qword_1ECAB4928, &qword_1D918B380);
    }

    sub_1D8D41388(a2, v67);
    sub_1D8D088B4(&v67[14], &v58, &qword_1ECAB4928, &qword_1D918B380);
    sub_1D8D58578(v67);
    sub_1D8D088B4(&v58, v64, &qword_1ECAB4928, &qword_1D918B380);
    *&v67[0] = v18;
    sub_1D8D088B4(v64, v67 + 8, &qword_1ECAB4928, &qword_1D918B380);
    *&v67[3] = "FromUniquePipeline";
    *(&v67[3] + 1) = 18;
    LOBYTE(v67[4]) = 2;
    BYTE8(v67[5]) = 0;

    sub_1D8D08A50(v64, &qword_1ECAB4928, &qword_1D918B380);
    sub_1D8D08A50(&v58, &qword_1ECAB4928, &qword_1D918B380);
    *(&v67[4] + 1) = 0;
    *&v67[5] = 0xE000000000000000;
    BYTE9(v67[5]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4970, &qword_1D918B020);
    sub_1D8CF48EC(&qword_1ECAB27A8, &qword_1ECAB4970, &qword_1D918B020, &protocol conformance descriptor for EmitLifecycle<A>);
    v42 = sub_1D9177B1C();

    sub_1D8D08A50(v67, &qword_1ECAB4970, &qword_1D918B020);
  }

  else
  {
    v28 = *(a2 + 284);
    sub_1D8D41388(a2, v67);
    v29 = swift_allocObject();
    v47 = v5;
    v30 = v29;
    *(v29 + 16) = v28;
    memcpy((v29 + 24), v67, 0x108uLL);
    v31 = swift_allocObject();
    v48 = v10;
    v57 = a2;
    *(v31 + 16) = sub_1D8EDCD50;
    *(v31 + 24) = v30;
    v32 = swift_allocObject();
    v50 = a1;
    v51 = v30;
    *(v32 + 16) = sub_1D8EDCD50;
    *(v32 + 24) = v30;
    swift_retain_n();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49F0, &unk_1D918B180);
    v49 = &protocol conformance descriptor for EmitLifecycle<A>;
    sub_1D8CF48EC(&qword_1ECAB27C0, &qword_1ECAB49F0, &unk_1D918B180, &protocol conformance descriptor for EmitLifecycle<A>);
    sub_1D9177B3C();

    v33 = v55;
    sub_1D8ED5EE0(v55);
    (*(v53 + 8))(v7, v47);
    sub_1D8D41388(v57, v67);
    sub_1D8D088B4(&v67[14], &v58, &qword_1ECAB4928, &qword_1D918B380);
    sub_1D8D58578(v67);
    v34 = *(v8 + 16);
    v35 = v48;
    v36 = v54;
    v34(v48, v33, v54);
    sub_1D8D088B4(&v58, v67, &qword_1ECAB4928, &qword_1D918B380);
    v37 = v35;
    v34(v14, v35, v36);
    v38 = v56;
    sub_1D8D088B4(v67, &v14[*(v56 + 36)], &qword_1ECAB4928, &qword_1D918B380);
    v39 = &v14[v38[10]];
    *v39 = "UniquePipeline";
    *(v39 + 1) = 14;
    v39[16] = 2;
    v14[v38[12]] = 0;
    sub_1D8D08A50(v67, &qword_1ECAB4928, &qword_1D918B380);
    v40 = *(v8 + 8);
    v40(v37, v36);
    sub_1D8D08A50(&v58, &qword_1ECAB4928, &qword_1D918B380);
    v40(v33, v36);
    v41 = &v14[v38[11]];
    *v41 = 0;
    *(v41 + 1) = 0xE000000000000000;
    v14[v38[13]] = 0;
    sub_1D8CF48EC(qword_1ECAB2810, &qword_1ECAB6408, &qword_1D9192688, v49);
    v42 = sub_1D9177B1C();
    sub_1D8D08A50(v14, &qword_1ECAB6408, &qword_1D9192688);

    v43 = v50;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v67[0] = *v43;
    sub_1D8F4F0AC(v42, v57, isUniquelyReferenced_nonNull_native);

    *v43 = *&v67[0];
  }

  return v42;
}

uint64_t sub_1D8ED3A74(uint64_t *a1, double *a2, uint64_t a3)
{
  v52 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB63F8, &qword_1D9192678);
  v53 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v46 - v6;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6400, &qword_1D9192680);
  v8 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v55 = &v46 - v12;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6408, &qword_1D9192688);
  MEMORY[0x1EEE9AC00](v56);
  v14 = &v46 - v13;
  v15 = *a1;
  if (*(*a1 + 16) && (v16 = sub_1D8F06844(a2), (v17 & 1) != 0))
  {
    v18 = *(*(v15 + 56) + 8 * v16);
    sub_1D8D41388(a2, v67);
    sub_1D8D088B4(&v67[14], &v58, &qword_1ECAB4928, &qword_1D918B380);

    sub_1D8D58578(v67);
    if (v59)
    {
      sub_1D8D6BCE0(&v58, v64);
      v19 = sub_1D8D41388(a2, &v58);
      MEMORY[0x1EEE9AC00](v19);

      v20 = v68;
      sub_1D8F4DEA8(sub_1D8EDCFC0, v15, v67);
      v68 = v20;

      sub_1D8D58578(&v58);
      if (*(&v67[0] + 1))
      {
        v61 = &type metadata for ArtworkRequest;
        v62 = &protocol witness table for ArtworkRequest;
        *&v60 = swift_allocObject();
        memcpy((v60 + 16), v67, 0x108uLL);
        sub_1D8D6BCE0(&v60, v63);
        v21 = __swift_project_boxed_opaque_existential_1(v63, v63[3]);
        sub_1D8D088B4((v21 + 28), &v58, &qword_1ECAB4928, &qword_1D918B380);
        if (v59)
        {
          sub_1D8D6BCE0(&v58, v67);
          v22 = v65;
          v23 = v66;
          __swift_project_boxed_opaque_existential_1(v64, v65);
          v57 = a2;
          v24 = *(&v67[1] + 1);
          v25 = *&v67[2];
          __swift_project_boxed_opaque_existential_1(v67, *(&v67[1] + 1));
          v26 = (*(v25 + 8))(v24, v25);
          a2 = v57;
          (*(v23 + 16))("SwitchingToUniquePipelineTrace", 30, 2, v26, v27, v22, v23);

          __swift_destroy_boxed_opaque_existential_1Tm(v67);
        }

        else
        {
          sub_1D8D08A50(&v58, &qword_1ECAB4928, &qword_1D918B380);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v63);
      }

      else
      {
        sub_1D8D08A50(v67, &qword_1ECAB4B00, &unk_1D9192690);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v64);
    }

    else
    {
      sub_1D8D08A50(&v58, &qword_1ECAB4928, &qword_1D918B380);
    }

    sub_1D8D41388(a2, v67);
    sub_1D8D088B4(&v67[14], &v58, &qword_1ECAB4928, &qword_1D918B380);
    sub_1D8D58578(v67);
    sub_1D8D088B4(&v58, v64, &qword_1ECAB4928, &qword_1D918B380);
    *&v67[0] = v18;
    sub_1D8D088B4(v64, v67 + 8, &qword_1ECAB4928, &qword_1D918B380);
    *&v67[3] = "FromUniquePipeline";
    *(&v67[3] + 1) = 18;
    LOBYTE(v67[4]) = 2;
    BYTE8(v67[5]) = 0;

    sub_1D8D08A50(v64, &qword_1ECAB4928, &qword_1D918B380);
    sub_1D8D08A50(&v58, &qword_1ECAB4928, &qword_1D918B380);
    *(&v67[4] + 1) = 0;
    *&v67[5] = 0xE000000000000000;
    BYTE9(v67[5]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4970, &qword_1D918B020);
    sub_1D8CF48EC(&qword_1ECAB27A8, &qword_1ECAB4970, &qword_1D918B020, &protocol conformance descriptor for EmitLifecycle<A>);
    v42 = sub_1D9177B1C();

    sub_1D8D08A50(v67, &qword_1ECAB4970, &qword_1D918B020);
  }

  else
  {
    v28 = *(a2 + 173);
    sub_1D8D41388(a2, v67);
    v29 = swift_allocObject();
    v47 = v5;
    v30 = v29;
    *(v29 + 16) = v28;
    memcpy((v29 + 24), v67, 0x108uLL);
    v31 = swift_allocObject();
    v48 = v10;
    v57 = a2;
    *(v31 + 16) = sub_1D8EDCF68;
    *(v31 + 24) = v30;
    v32 = swift_allocObject();
    v50 = a1;
    v51 = v30;
    *(v32 + 16) = sub_1D8EDCF68;
    *(v32 + 24) = v30;
    swift_retain_n();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49F0, &unk_1D918B180);
    v49 = &protocol conformance descriptor for EmitLifecycle<A>;
    sub_1D8CF48EC(&qword_1ECAB27C0, &qword_1ECAB49F0, &unk_1D918B180, &protocol conformance descriptor for EmitLifecycle<A>);
    sub_1D9177B3C();

    v33 = v55;
    sub_1D8ED5EE0(v55);
    (*(v53 + 8))(v7, v47);
    sub_1D8D41388(v57, v67);
    sub_1D8D088B4(&v67[14], &v58, &qword_1ECAB4928, &qword_1D918B380);
    sub_1D8D58578(v67);
    v34 = *(v8 + 16);
    v35 = v48;
    v36 = v54;
    v34(v48, v33, v54);
    sub_1D8D088B4(&v58, v67, &qword_1ECAB4928, &qword_1D918B380);
    v37 = v35;
    v34(v14, v35, v36);
    v38 = v56;
    sub_1D8D088B4(v67, &v14[*(v56 + 36)], &qword_1ECAB4928, &qword_1D918B380);
    v39 = &v14[v38[10]];
    *v39 = "UniquePipeline";
    *(v39 + 1) = 14;
    v39[16] = 2;
    v14[v38[12]] = 0;
    sub_1D8D08A50(v67, &qword_1ECAB4928, &qword_1D918B380);
    v40 = *(v8 + 8);
    v40(v37, v36);
    sub_1D8D08A50(&v58, &qword_1ECAB4928, &qword_1D918B380);
    v40(v33, v36);
    v41 = &v14[v38[11]];
    *v41 = 0;
    *(v41 + 1) = 0xE000000000000000;
    v14[v38[13]] = 0;
    sub_1D8CF48EC(qword_1ECAB2810, &qword_1ECAB6408, &qword_1D9192688, v49);
    v42 = sub_1D9177B1C();
    sub_1D8D08A50(v14, &qword_1ECAB6408, &qword_1D9192688);

    v43 = v50;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v67[0] = *v43;
    sub_1D8F4F0AC(v42, v57, isUniquelyReferenced_nonNull_native);

    *v43 = *&v67[0];
  }

  return v42;
}

uint64_t sub_1D8ED436C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v65 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB62B8, &qword_1D9192510);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v58 - v6;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB62C0, &qword_1D9192518);
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v62 = &v58 - v8;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB62C8, &qword_1D9192520);
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v66 = &v58 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB62D0, &qword_1D9192528);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v58 - v14;
  v71 = type metadata accessor for TTMLRequest(0);
  v16 = *(v71 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = a1;
  v19 = *a1;
  if (*(v19 + 16) && (v20 = sub_1D8F06B6C(a2), (v21 & 1) != 0))
  {
    v22 = *(*(v19 + 56) + 8 * v20);
    v23 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1D8EDCD8C(a2, v23, type metadata accessor for TTMLRequest);
    v24 = v71;
    sub_1D8D088B4(&v18[*(v71 + 36)], &v88, &qword_1ECAB4928, &qword_1D918B380);

    sub_1D8D671A8(v18, type metadata accessor for TTMLRequest);
    if (v89)
    {
      sub_1D8D6BCE0(&v88, &v77);
      v25 = sub_1D8EDCD8C(a2, v18, type metadata accessor for TTMLRequest);
      MEMORY[0x1EEE9AC00](v25);

      v26 = v90;
      sub_1D8F4E148(sub_1D8EDC6C0, v19, v7);
      v90 = v26;

      v24 = v71;
      sub_1D8D671A8(v18, type metadata accessor for TTMLRequest);
      if ((*(v16 + 48))(v7, 1, v24) == 1)
      {
        sub_1D8D08A50(v7, &qword_1ECAB62B8, &qword_1D9192510);
      }

      else
      {
        v75 = v24;
        v76 = &protocol witness table for TTMLRequest;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v74);
        sub_1D8EDC968(v7, boxed_opaque_existential_0, type metadata accessor for TTMLRequest);
        sub_1D8D6BCE0(&v74, &v88);
        v47 = __swift_project_boxed_opaque_existential_1(&v88, v89);
        sub_1D8D088B4(v47 + *(v24 + 36), &v72, &qword_1ECAB4928, &qword_1D918B380);
        if (v73)
        {
          sub_1D8D6BCE0(&v72, &v74);
          v48 = v79;
          v49 = v80;
          __swift_project_boxed_opaque_existential_1(&v77, v79);
          v70 = a2;
          v50 = v75;
          v51 = v76;
          __swift_project_boxed_opaque_existential_1(&v74, v75);
          v52 = v51[1];
          v53 = v51;
          v23 = v18;
          v54 = v52(v50, v53);
          v55 = v48;
          v24 = v71;
          (*(v49 + 16))("SwitchingToUniquePipelineTrace", 30, 2, v54, v56, v55, v49);
          a2 = v70;

          __swift_destroy_boxed_opaque_existential_1Tm(&v74);
        }

        else
        {
          sub_1D8D08A50(&v72, &qword_1ECAB4928, &qword_1D918B380);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v88);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v77);
    }

    else
    {
      sub_1D8D08A50(&v88, &qword_1ECAB4928, &qword_1D918B380);
    }

    sub_1D8EDCD8C(a2, v23, type metadata accessor for TTMLRequest);
    sub_1D8D088B4(&v23[*(v24 + 36)], &v88, &qword_1ECAB4928, &qword_1D918B380);
    sub_1D8D671A8(v23, type metadata accessor for TTMLRequest);
    sub_1D8D088B4(&v88, &v74, &qword_1ECAB4928, &qword_1D918B380);
    v77 = v22;
    sub_1D8D088B4(&v74, &v78, &qword_1ECAB4928, &qword_1D918B380);
    v81 = "FromUniquePipeline";
    v82 = 18;
    v83 = 2;
    v86 = 0;

    sub_1D8D08A50(&v74, &qword_1ECAB4928, &qword_1D918B380);
    sub_1D8D08A50(&v88, &qword_1ECAB4928, &qword_1D918B380);
    v84 = 0;
    v85 = 0xE000000000000000;
    v87 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB62D8, &qword_1D9192530);
    sub_1D8CF48EC(&qword_1ECAB2798, &qword_1ECAB62D8, &qword_1D9192530, &protocol conformance descriptor for EmitLifecycle<A>);
    v43 = sub_1D9177B1C();

    sub_1D8D08A50(&v77, &qword_1ECAB62D8, &qword_1D9192530);
  }

  else
  {
    v27 = *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6298, &qword_1D91924F0) + 48));
    v59 = type metadata accessor for TTMLRequest;
    v28 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1D8EDCD8C(a2, v28, type metadata accessor for TTMLRequest);
    v29 = (*(v16 + 80) + 24) & ~*(v16 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = v27;
    sub_1D8EDC968(v28, v30 + v29, type metadata accessor for TTMLRequest);
    v31 = swift_allocObject();
    v70 = a2;
    v58 = v10;
    *(v31 + 16) = sub_1D8EDC694;
    *(v31 + 24) = v30;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_1D8EDC694;
    *(v32 + 24) = v30;
    v61 = v30;
    swift_retain_n();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB62A8, &qword_1D9192500);
    v60 = &protocol conformance descriptor for EmitLifecycle<A>;
    sub_1D8CF48EC(&qword_1ECAB27B8, &qword_1ECAB62A8, &qword_1D9192500, &protocol conformance descriptor for EmitLifecycle<A>);
    v33 = v62;
    sub_1D9177B3C();

    v34 = v66;
    sub_1D8ED6714(v66);
    (*(v63 + 8))(v33, v64);
    sub_1D8EDCD8C(v70, v28, v59);
    sub_1D8D088B4(&v28[*(v71 + 36)], &v77, &qword_1ECAB4928, &qword_1D918B380);
    sub_1D8D671A8(v28, type metadata accessor for TTMLRequest);
    v35 = v67;
    v36 = *(v67 + 16);
    v37 = v13;
    v38 = v58;
    v39 = v68;
    v36(v58, v34, v68);
    sub_1D8D088B4(&v77, &v88, &qword_1ECAB4928, &qword_1D918B380);
    v36(v15, v38, v39);
    sub_1D8D088B4(&v88, &v15[v37[9]], &qword_1ECAB4928, &qword_1D918B380);
    v40 = &v15[v37[10]];
    *v40 = "UniquePipeline";
    *(v40 + 1) = 14;
    v40[16] = 2;
    v15[v37[12]] = 0;
    sub_1D8D08A50(&v88, &qword_1ECAB4928, &qword_1D918B380);
    v41 = *(v35 + 8);
    v41(v38, v39);
    sub_1D8D08A50(&v77, &qword_1ECAB4928, &qword_1D918B380);
    v41(v34, v39);
    v42 = &v15[v37[11]];
    *v42 = 0;
    *(v42 + 1) = 0xE000000000000000;
    v15[v37[13]] = 0;
    sub_1D8CF48EC(&qword_1ECAB2808, &qword_1ECAB62D0, &qword_1D9192528, v60);
    v43 = sub_1D9177B1C();
    sub_1D8D08A50(v15, &qword_1ECAB62D0, &qword_1D9192528);

    v44 = v69;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v77 = *v44;
    sub_1D8F4FD68(v43, v70, isUniquelyReferenced_nonNull_native);

    *v44 = v77;
  }

  return v43;
}

uint64_t sub_1D8ED4EC0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v65 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6318, &qword_1D9192578);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v58 - v6;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6370, &qword_1D91925D8);
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v62 = &v58 - v8;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6378, &qword_1D91925E0);
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v66 = &v58 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6380, &qword_1D91925E8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v58 - v14;
  v71 = type metadata accessor for ShazamSignatureRequest(0);
  v16 = *(v71 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = a1;
  v19 = *a1;
  if (*(v19 + 16) && (v20 = sub_1D8F06B18(a2), (v21 & 1) != 0))
  {
    v22 = *(*(v19 + 56) + 8 * v20);
    v23 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1D8EDCD8C(a2, v23, type metadata accessor for ShazamSignatureRequest);
    v24 = v71;
    sub_1D8D088B4(&v18[*(v71 + 36)], &v88, &qword_1ECAB4928, &qword_1D918B380);

    sub_1D8D671A8(v18, type metadata accessor for ShazamSignatureRequest);
    if (v89)
    {
      sub_1D8D6BCE0(&v88, &v77);
      v25 = sub_1D8EDCD8C(a2, v18, type metadata accessor for ShazamSignatureRequest);
      MEMORY[0x1EEE9AC00](v25);

      v26 = v90;
      sub_1D8F4E178(sub_1D8EDCA7C, v19, v7);
      v90 = v26;

      v24 = v71;
      sub_1D8D671A8(v18, type metadata accessor for ShazamSignatureRequest);
      if ((*(v16 + 48))(v7, 1, v24) == 1)
      {
        sub_1D8D08A50(v7, &qword_1ECAB6318, &qword_1D9192578);
      }

      else
      {
        v75 = v24;
        v76 = &protocol witness table for ShazamSignatureRequest;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v74);
        sub_1D8EDC968(v7, boxed_opaque_existential_0, type metadata accessor for ShazamSignatureRequest);
        sub_1D8D6BCE0(&v74, &v88);
        v47 = __swift_project_boxed_opaque_existential_1(&v88, v89);
        sub_1D8D088B4(v47 + *(v24 + 36), &v72, &qword_1ECAB4928, &qword_1D918B380);
        if (v73)
        {
          sub_1D8D6BCE0(&v72, &v74);
          v48 = v79;
          v49 = v80;
          __swift_project_boxed_opaque_existential_1(&v77, v79);
          v70 = a2;
          v50 = v75;
          v51 = v76;
          __swift_project_boxed_opaque_existential_1(&v74, v75);
          v52 = v51[1];
          v53 = v51;
          v23 = v18;
          v54 = v52(v50, v53);
          v55 = v48;
          v24 = v71;
          (*(v49 + 16))("SwitchingToUniquePipelineTrace", 30, 2, v54, v56, v55, v49);
          a2 = v70;

          __swift_destroy_boxed_opaque_existential_1Tm(&v74);
        }

        else
        {
          sub_1D8D08A50(&v72, &qword_1ECAB4928, &qword_1D918B380);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v88);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v77);
    }

    else
    {
      sub_1D8D08A50(&v88, &qword_1ECAB4928, &qword_1D918B380);
    }

    sub_1D8EDCD8C(a2, v23, type metadata accessor for ShazamSignatureRequest);
    sub_1D8D088B4(&v23[*(v24 + 36)], &v88, &qword_1ECAB4928, &qword_1D918B380);
    sub_1D8D671A8(v23, type metadata accessor for ShazamSignatureRequest);
    sub_1D8D088B4(&v88, &v74, &qword_1ECAB4928, &qword_1D918B380);
    v77 = v22;
    sub_1D8D088B4(&v74, &v78, &qword_1ECAB4928, &qword_1D918B380);
    v81 = "FromUniquePipeline";
    v82 = 18;
    v83 = 2;
    v86 = 0;

    sub_1D8D08A50(&v74, &qword_1ECAB4928, &qword_1D918B380);
    sub_1D8D08A50(&v88, &qword_1ECAB4928, &qword_1D918B380);
    v84 = 0;
    v85 = 0xE000000000000000;
    v87 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6388, &qword_1D91925F0);
    sub_1D8CF48EC(&qword_1ECAB2790, &qword_1ECAB6388, &qword_1D91925F0, &protocol conformance descriptor for EmitLifecycle<A>);
    v43 = sub_1D9177B1C();

    sub_1D8D08A50(&v77, &qword_1ECAB6388, &qword_1D91925F0);
  }

  else
  {
    v27 = *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6350, &qword_1D91925B8) + 48));
    v59 = type metadata accessor for ShazamSignatureRequest;
    v28 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1D8EDCD8C(a2, v28, type metadata accessor for ShazamSignatureRequest);
    v29 = (*(v16 + 80) + 24) & ~*(v16 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = v27;
    sub_1D8EDC968(v28, v30 + v29, type metadata accessor for ShazamSignatureRequest);
    v31 = swift_allocObject();
    v70 = a2;
    v58 = v10;
    *(v31 + 16) = sub_1D8EDC9D0;
    *(v31 + 24) = v30;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_1D8EDC9D0;
    *(v32 + 24) = v30;
    v61 = v30;
    swift_retain_n();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6360, &qword_1D91925C8);
    v60 = &protocol conformance descriptor for EmitLifecycle<A>;
    sub_1D8CF48EC(&qword_1ECAB27B0, &qword_1ECAB6360, &qword_1D91925C8, &protocol conformance descriptor for EmitLifecycle<A>);
    v33 = v62;
    sub_1D9177B3C();

    v34 = v66;
    sub_1D8ED6A88(v66);
    (*(v63 + 8))(v33, v64);
    sub_1D8EDCD8C(v70, v28, v59);
    sub_1D8D088B4(&v28[*(v71 + 36)], &v77, &qword_1ECAB4928, &qword_1D918B380);
    sub_1D8D671A8(v28, type metadata accessor for ShazamSignatureRequest);
    v35 = v67;
    v36 = *(v67 + 16);
    v37 = v13;
    v38 = v58;
    v39 = v68;
    v36(v58, v34, v68);
    sub_1D8D088B4(&v77, &v88, &qword_1ECAB4928, &qword_1D918B380);
    v36(v15, v38, v39);
    sub_1D8D088B4(&v88, &v15[v37[9]], &qword_1ECAB4928, &qword_1D918B380);
    v40 = &v15[v37[10]];
    *v40 = "UniquePipeline";
    *(v40 + 1) = 14;
    v40[16] = 2;
    v15[v37[12]] = 0;
    sub_1D8D08A50(&v88, &qword_1ECAB4928, &qword_1D918B380);
    v41 = *(v35 + 8);
    v41(v38, v39);
    sub_1D8D08A50(&v77, &qword_1ECAB4928, &qword_1D918B380);
    v41(v34, v39);
    v42 = &v15[v37[11]];
    *v42 = 0;
    *(v42 + 1) = 0xE000000000000000;
    v15[v37[13]] = 0;
    sub_1D8CF48EC(&qword_1ECAB2800, &qword_1ECAB6380, &qword_1D91925E8, v60);
    v43 = sub_1D9177B1C();
    sub_1D8D08A50(v15, &qword_1ECAB6380, &qword_1D91925E8);

    v44 = v69;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v77 = *v44;
    sub_1D8F4FF0C(v43, v70, isUniquelyReferenced_nonNull_native);

    *v44 = v77;
  }

  return v43;
}

uint64_t sub_1D8ED5A14(os_unfair_lock_s *a1, uint64_t a2)
{
  sub_1D8D41388(a2, v4);
  os_unfair_lock_lock(a1 + 6);
  sub_1D8EDCDF4(&a1[4]);
  os_unfair_lock_unlock(a1 + 6);
  return sub_1D8D58578(v4);
}

uint64_t sub_1D8ED5A84(os_unfair_lock_s *a1, uint64_t a2)
{
  sub_1D8D41388(a2, v4);
  os_unfair_lock_lock(a1 + 6);
  sub_1D8EDCFA8(&a1[4]);
  os_unfair_lock_unlock(a1 + 6);
  return sub_1D8D58578(v4);
}

uint64_t sub_1D8ED5AF4(os_unfair_lock_s *a1, uint64_t a2)
{
  v4 = type metadata accessor for TTMLRequest(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D8EDCD8C(a2, v6, type metadata accessor for TTMLRequest);
  v9 = v6;
  os_unfair_lock_lock(a1 + 6);
  sub_1D8EDC6F0(&a1[4]);
  os_unfair_lock_unlock(a1 + 6);
  return sub_1D8D671A8(v6, type metadata accessor for TTMLRequest);
}

uint64_t sub_1D8ED5BD4(os_unfair_lock_s *a1, uint64_t a2)
{
  v4 = type metadata accessor for ShazamSignatureRequest(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D8EDCD8C(a2, v6, type metadata accessor for ShazamSignatureRequest);
  v9 = v6;
  os_unfair_lock_lock(a1 + 6);
  sub_1D8EDCAAC(&a1[4]);
  os_unfair_lock_unlock(a1 + 6);
  return sub_1D8D671A8(v6, type metadata accessor for ShazamSignatureRequest);
}

char *sub_1D8ED5CB4(uint64_t *a1, double *a2)
{
  result = sub_1D8F06844(a2);
  if (v4)
  {
    v5 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *a1;
    v8 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D8F81FB4();
      v7 = v8;
    }

    sub_1D8D58578(*(v7 + 48) + 264 * v5);

    result = sub_1D8F7F2D8(v5, v7);
    *a1 = v7;
  }

  return result;
}

void sub_1D8ED5D50(uint64_t *a1, uint64_t a2)
{
  v3 = sub_1D8F06B6C(a2);
  if (v4)
  {
    v5 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *a1;
    v10 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D8F83038();
      v7 = v10;
    }

    v8 = *(v7 + 48);
    v9 = type metadata accessor for TTMLRequest(0);
    sub_1D8D671A8(v8 + *(*(v9 - 8) + 72) * v5, type metadata accessor for TTMLRequest);

    sub_1D8F7FE44(v5, v7);
    *a1 = v7;
  }
}

void sub_1D8ED5E18(uint64_t *a1, uint64_t a2)
{
  v3 = sub_1D8F06B18(a2);
  if (v4)
  {
    v5 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *a1;
    v10 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D8F83074();
      v7 = v10;
    }

    v8 = *(v7 + 48);
    v9 = type metadata accessor for ShazamSignatureRequest(0);
    sub_1D8D671A8(v8 + *(*(v9 - 8) + 72) * v5, type metadata accessor for ShazamSignatureRequest);

    sub_1D8F803C0(v5, v7);
    *a1 = v7;
  }
}

uint64_t sub_1D8ED5EE0@<X0>(uint64_t a1@<X8>)
{
  v14 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4920, &unk_1D918AFD0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v14 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6410, &qword_1D91926A0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB63F8, &qword_1D9192678);
  sub_1D8CF48EC(&qword_1ECAB0980, &qword_1ECAB63F8, &qword_1D9192678, MEMORY[0x1E695BCC0]);
  sub_1D9177B9C();
  v8 = type metadata accessor for ArtworkContent(0);
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6418, &qword_1D91926A8);
  v9 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7530, &unk_1D918C0D0);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v9 + 16) = v10;
  *(v9 + 24) = 1;
  *(v9 + 32) = xmmword_1D918BEE0;
  *(v9 + 48) = 2;
  *(v9 + *(*v9 + 144)) = MEMORY[0x1E69E7CC0];
  sub_1D8D6734C(v3, v9 + *(*v9 + 136), &qword_1ECAB4920, &unk_1D918AFD0);
  sub_1D8CF48EC(&qword_1ECAB0798, &qword_1ECAB6410, &qword_1D91926A0, MEMORY[0x1E695BD60]);
  sub_1D8CF48EC(&qword_1ECAB1980, &qword_1ECAB6418, &qword_1D91926A8, &protocol conformance descriptor for RepublishingValueSubject<A, B>);
  v11 = sub_1D9177D2C();

  (*(v5 + 8))(v7, v4);
  v15 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6420, &qword_1D91926B0);
  sub_1D8CF48EC(&qword_1ECAB04E0, &qword_1ECAB6420, &qword_1D91926B0, MEMORY[0x1E695BE88]);
  v12 = sub_1D917796C();

  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6428, &qword_1D91926B8);
  sub_1D8CF48EC(&qword_1ECAB0AD0, &qword_1ECAB6428, &qword_1D91926B8, MEMORY[0x1E695BCA0]);
  sub_1D9177B2C();
}

uint64_t sub_1D8ED6300@<X0>(uint64_t a1@<X8>)
{
  v15 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB63D0, &qword_1D9192648);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v15 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB63D8, &unk_1D9192650);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5F48, &qword_1D9191B60);
  v8 = MEMORY[0x1E695BD60];
  sub_1D8CF48EC(&qword_1ECAB0740, &qword_1ECAB5F48, &qword_1D9191B60, MEMORY[0x1E695BD60]);
  sub_1D9177B9C();
  v9 = type metadata accessor for TranscriptData.TimeBombedURLs(0);
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB63E0, &qword_1D9192660);
  v10 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7530, &unk_1D918C0D0);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v10 + 16) = v11;
  *(v10 + 24) = 1;
  *(v10 + 32) = xmmword_1D918BEE0;
  *(v10 + 48) = 2;
  *(v10 + *(*v10 + 144)) = MEMORY[0x1E69E7CC0];
  sub_1D8D6734C(v3, v10 + *(*v10 + 136), &qword_1ECAB63D0, &qword_1D9192648);
  sub_1D8CF48EC(&qword_1ECAB0708, &qword_1ECAB63D8, &unk_1D9192650, v8);
  sub_1D8CF48EC(&qword_1ECAB1978, &qword_1ECAB63E0, &qword_1D9192660, &protocol conformance descriptor for RepublishingValueSubject<A, B>);
  v12 = sub_1D9177D2C();

  (*(v5 + 8))(v7, v4);
  v16 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB63E8, &qword_1D9192668);
  sub_1D8CF48EC(&qword_1ECAB04B8, &qword_1ECAB63E8, &qword_1D9192668, MEMORY[0x1E695BE88]);
  v13 = sub_1D917796C();

  v16 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB63F0, &qword_1D9192670);
  sub_1D8CF48EC(&qword_1ECAB0AA8, &qword_1ECAB63F0, &qword_1D9192670, MEMORY[0x1E695BCA0]);
  sub_1D9177B2C();
}

uint64_t sub_1D8ED6714@<X0>(uint64_t a1@<X8>)
{
  v10 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB62E0, &qword_1D9192538);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB62C0, &qword_1D9192518);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB62E8, &qword_1D9192540);
  sub_1D8CF48EC(&qword_1ECAB0978, &qword_1ECAB62C0, &qword_1D9192518, MEMORY[0x1E695BCC0]);
  sub_1D9177B9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB62F0, &unk_1D9192548);
  v5 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7530, &unk_1D918C0D0);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v5 + 16) = v6;
  *(v5 + 24) = 1;
  *(v5 + 32) = xmmword_1D918BEE0;
  *(v5 + 48) = 2;
  *(v5 + 112) = MEMORY[0x1E69E7CC0];
  sub_1D8CF48EC(&qword_1ECAB0790, &qword_1ECAB62E0, &qword_1D9192538, MEMORY[0x1E695BD60]);
  sub_1D8CF48EC(&qword_1ECAB1970, &qword_1ECAB62F0, &unk_1D9192548, &protocol conformance descriptor for RepublishingValueSubject<A, B>);
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0u;
  *(v5 + 88) = 0u;
  *(v5 + 104) = 0;
  v7 = sub_1D9177D2C();

  (*(v2 + 8))(v4, v1);
  v11 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB62F8, &qword_1D9192558);
  sub_1D8CF48EC(&qword_1ECAB04D8, &qword_1ECAB62F8, &qword_1D9192558, MEMORY[0x1E695BE88]);
  v8 = sub_1D917796C();

  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6300, &qword_1D9192560);
  sub_1D8CF48EC(&qword_1ECAB0AC8, &qword_1ECAB6300, &qword_1D9192560, MEMORY[0x1E695BCA0]);
  sub_1D9177B2C();
}

uint64_t sub_1D8ED6A88@<X0>(uint64_t a1@<X8>)
{
  v11 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6390, &qword_1D91925F8);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6370, &qword_1D91925D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6398, &qword_1D9192600);
  sub_1D8CF48EC(&qword_1ECAB0970, &qword_1ECAB6370, &qword_1D91925D8, MEMORY[0x1E695BCC0]);
  sub_1D9177B9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB63A0, &qword_1D9192608);
  v5 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7530, &unk_1D918C0D0);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v5 + 16) = v6;
  *(v5 + 24) = 1;
  *(v5 + 32) = xmmword_1D918BEE0;
  *(v5 + 48) = 2;
  v7 = MEMORY[0x1E69E7CC0];
  *(v5 + 56) = 0;
  *(v5 + 64) = v7;
  sub_1D8CF48EC(&qword_1ECAB0788, &qword_1ECAB6390, &qword_1D91925F8, MEMORY[0x1E695BD60]);
  sub_1D8CF48EC(&qword_1ECAB1968, &qword_1ECAB63A0, &qword_1D9192608, &protocol conformance descriptor for RepublishingValueSubject<A, B>);
  v8 = sub_1D9177D2C();

  (*(v2 + 8))(v4, v1);
  v12 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB63A8, &qword_1D9192610);
  sub_1D8CF48EC(&qword_1ECAB04D0, &qword_1ECAB63A8, &qword_1D9192610, MEMORY[0x1E695BE88]);
  v9 = sub_1D917796C();

  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB63B0, &qword_1D9192618);
  sub_1D8CF2154(0, &qword_1ECAAFE30, 0x1E697B7D0);
  sub_1D8CF48EC(&qword_1ECAB0AC0, &qword_1ECAB63B0, &qword_1D9192618, MEMORY[0x1E695BCA0]);
  sub_1D9177B2C();
}

uint64_t TimeBombedTranscriptProvider.ttmlPersistentCache.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_1D8D088B4(v7, &v6, &qword_1ECAB6190, &qword_1D91921D0);
}

uint64_t TimeBombedTranscriptProvider.signaturePersistentCache.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[5];
  v7[0] = v1[4];
  v7[1] = v2;
  v4 = v1[7];
  v8 = v1[6];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_1D8D088B4(v7, &v6, &qword_1ECAB6198, &qword_1D91921D8);
}

uint64_t TimeBombedTranscriptProvider.ttmlVolatileCache.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[9];
  v7[0] = v1[8];
  v7[1] = v2;
  v4 = v1[11];
  v8 = v1[10];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_1D8D088B4(v7, &v6, &qword_1ECAB6190, &qword_1D91921D0);
}

uint64_t TimeBombedTranscriptProvider.signatureVolatileCache.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[13];
  v7[0] = v1[12];
  v7[1] = v2;
  v4 = v1[15];
  v8 = v1[14];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_1D8D088B4(v7, &v6, &qword_1ECAB6198, &qword_1D91921D8);
}

uint64_t TimeBombedTranscriptProvider.ttmlSource.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 264);
  *a1 = *(v1 + 256);
  a1[1] = v2;
}

uint64_t TimeBombedTranscriptProvider.shazamSignatureSource.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 280);
  *a1 = *(v1 + 272);
  a1[1] = v2;
}

void TimeBombedTranscriptProvider.init(ttmlPersistentCache:signaturePersistentCache:ttmlVolatileCache:signatureVolatileCache:ttmlSource:shazamSignatureSource:timeBombedURLsProvider:workQueue:)(_OWORD *a1@<X0>, _OWORD *a2@<X1>, __int128 *a3@<X2>, _OWORD *a4@<X3>, _OWORD *a5@<X4>, __int128 *a6@<X5>, void *a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>)
{
  v12 = a1[1];
  *a9 = *a1;
  *(a9 + 16) = v12;
  v13 = a1[3];
  *(a9 + 32) = a1[2];
  *(a9 + 48) = v13;
  v14 = a2[1];
  *(a9 + 64) = *a2;
  *(a9 + 80) = v14;
  v15 = a2[3];
  *(a9 + 96) = a2[2];
  *(a9 + 112) = v15;
  v16 = *a3;
  v17 = a3[1];
  v18 = a3[3];
  *(a9 + 160) = a3[2];
  *(a9 + 176) = v18;
  *(a9 + 128) = v16;
  *(a9 + 144) = v17;
  v19 = a4[3];
  *(a9 + 224) = a4[2];
  *(a9 + 240) = v19;
  v20 = a4[1];
  *(a9 + 192) = *a4;
  *(a9 + 208) = v20;
  v21 = *a6;
  *(a9 + 256) = *a5;
  *(a9 + 272) = v21;
  sub_1D8CFD9D8(a7, a9 + 288);
  *(a9 + 328) = a8;
  v22 = a8;
  v23 = MEMORY[0x1E69E7CC0];
  v24 = sub_1D8D688C4(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB61A0, &qword_1D91921E0);
  v25 = swift_allocObject();
  *(v25 + 24) = 0;
  *(v25 + 16) = v24;
  *(a9 + 336) = v25;
  v26 = sub_1D8D68C58(v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB61A8, &unk_1D91921E8);
  v27 = swift_allocObject();
  *(v27 + 24) = 0;
  *(v27 + 16) = v26;
  *(a9 + 344) = v27;
  v28 = sub_1D8D68E84(v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5E38, &qword_1D9191840);
  v29 = swift_allocObject();
  *(v29 + 24) = 0;

  __swift_destroy_boxed_opaque_existential_1Tm(a7);
  *(v29 + 16) = v28;

  *(a9 + 352) = v29;
}

uint64_t TimeBombedTranscriptProvider.prefetch(request:)()
{
  v1 = *(v0 + 352);
  os_unfair_lock_lock((v1 + 24));
  sub_1D8EDC278((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

uint64_t sub_1D8ED7148@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v45 = a4;
  v44 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5F08, &unk_1D9191980);
  v36 = *(v6 - 8);
  v37 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5F10, &qword_1D9192640);
  v41 = *(v12 - 8);
  v42 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v39 = &v33 - v13;
  v43 = sub_1D9176EAC();
  v35 = *(v43 - 8);
  v14 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v34 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v38 = &v33 - v16;
  sub_1D9176E9C();
  v40 = a2;
  v17 = TimeBombedTranscriptProvider.transcript(for:)(a3);
  if (qword_1EDCD0990 != -1)
  {
    swift_once();
  }

  v18 = qword_1EDCD0998;
  v19 = sub_1D9178DBC();
  (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
  v46[0] = v18;
  v46[47] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5F18, &unk_1D9191990);
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  v33 = v17;
  sub_1D8CF48EC(&qword_1ECAB0380, &qword_1ECAB5F18, &unk_1D9191990, MEMORY[0x1E695BED8]);
  sub_1D8D02DF0();
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB0A80, &qword_1ECAB5F08, &unk_1D9191980, MEMORY[0x1E695BCB8]);
  v20 = v39;
  v21 = v37;
  sub_1D9177CEC();

  (*(v36 + 8))(v8, v21);
  sub_1D8D08A50(v11, &qword_1ECAB4D70, &unk_1D918BCE0);
  sub_1D8D6906C(v40, v46);
  v23 = v34;
  v22 = v35;
  v24 = v38;
  v25 = v43;
  (*(v35 + 16))(v34, v38, v43);
  v26 = (*(v22 + 80) + 376) & ~*(v22 + 80);
  v27 = swift_allocObject();
  memcpy((v27 + 16), v46, 0x168uLL);
  (*(v22 + 32))(v27 + v26, v23, v25);
  sub_1D8CF48EC(&qword_1ECAB04A8, &qword_1ECAB5F10, &qword_1D9192640, MEMORY[0x1E695BE98]);
  v28 = v42;
  v29 = sub_1D9177BCC();

  (*(v41 + 8))(v20, v28);

  v30 = v44;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46[0] = *v30;
  sub_1D8F4FA5C(v29, v24, isUniquelyReferenced_nonNull_native);
  *v30 = v46[0];
  result = (*(v22 + 8))(v24, v25);
  *v45 = v29;
  return result;
}

uint64_t TimeBombedTranscriptProvider.transcript(for:)(uint64_t a1)
{
  v2 = v1;
  v33 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB61B0, &unk_1D91921F8);
  v5 = *(v4 - 8);
  v34 = v4;
  v35 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v31 - v9;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB61B8, &qword_1D9192208);
  v40 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v32 = v31 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB61C0, &qword_1D9192210);
  v13 = *(v12 - 8);
  v38 = v12;
  v39 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v36 = v31 - v14;
  sub_1D8EC8C5C(a1, v43);
  v15 = swift_allocObject();
  v16 = v43[3];
  *(v15 + 48) = v43[2];
  *(v15 + 64) = v16;
  *(v15 + 80) = *&v43[4];
  v17 = v43[1];
  *(v15 + 16) = v43[0];
  *(v15 + 32) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB61C8, &unk_1D9192218);
  swift_allocObject();
  v18 = sub_1D9177A5C();
  v19 = *(v2 + 328);
  v20 = sub_1D9178DBC();
  (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
  *&v43[0] = v19;
  *&v41[0] = v18;
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D8CF48EC(&qword_1ECAB0280, &qword_1ECAB61C8, &unk_1D9192218, MEMORY[0x1E695C038]);
  sub_1D8D02DF0();
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB0A38, &qword_1ECAB61B0, &unk_1D91921F8, MEMORY[0x1E695BCB8]);
  v21 = v32;
  v22 = v34;
  sub_1D9177CEC();

  (*(v35 + 8))(v7, v22);
  sub_1D8D08A50(v10, &qword_1ECAB4D70, &unk_1D918BCE0);
  sub_1D8D6906C(v31[1], v43);
  sub_1D8EC8C5C(v33, v41);
  v23 = swift_allocObject();
  memcpy((v23 + 16), v43, 0x168uLL);
  v24 = v41[3];
  *(v23 + 408) = v41[2];
  *(v23 + 424) = v24;
  *(v23 + 440) = v42;
  v25 = v41[1];
  *(v23 + 376) = v41[0];
  *(v23 + 392) = v25;
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5F18, &unk_1D9191990);
  sub_1D8CF48EC(&unk_1ECAB0458, &qword_1ECAB61B8, &qword_1D9192208, MEMORY[0x1E695BE98]);
  sub_1D8CF48EC(&qword_1ECAB0380, &qword_1ECAB5F18, &unk_1D9191990, MEMORY[0x1E695BED8]);
  v27 = v36;
  v26 = v37;
  sub_1D9177CBC();

  (*(v40 + 8))(v21, v26);
  sub_1D8CF48EC(&qword_1ECAB05F0, &qword_1ECAB61C0, &qword_1D9192210, MEMORY[0x1E695BE40]);
  v28 = v38;
  v29 = sub_1D9177B1C();
  (*(v39 + 8))(v27, v28);
  return v29;
}

void sub_1D8ED7C98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 352);
  os_unfair_lock_lock((v2 + 24));
  sub_1D8EC8DE4((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
}

uint64_t sub_1D8ED7CEC(void (*a1)(uint64_t), uint64_t a2, uint64_t *a3)
{
  v43 = a2;
  v44 = a1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB63C8, &unk_1D9192630);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v33[-v4];
  v5 = type metadata accessor for TTMLRequest(0);
  v6 = (v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v33[-v10];
  v12 = type metadata accessor for ShazamSignatureRequest(0);
  v13 = (v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v33[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = sub_1D9176C2C();
  v16 = *(v39 - 8);
  v38 = *(v16 + 56);
  v40 = v16 + 56;
  v38(v11, 1, 1, v39);
  sub_1D8D088B4(v11, v15, &unk_1ECAB5910, &qword_1D9188C90);
  v34 = *(a3 + 24);
  v17 = a3[2];
  v37 = a3[1];
  v46 = v37;
  v47 = v17;

  MEMORY[0x1DA7298F0](45, 0xE100000000000000);
  v36 = *a3;
  v45 = v36;
  v35 = sub_1D8E40D20();
  v18 = sub_1D917927C();
  MEMORY[0x1DA7298F0](v18);

  v19 = v46;
  v20 = v47;
  sub_1D8D08A50(v11, &unk_1ECAB5910, &qword_1D9188C90);
  v21 = &v15[v13[11]];
  *(v21 + 32) = 0;
  *v21 = 0u;
  *(v21 + 16) = 0u;
  v15[v13[7]] = v34;
  v22 = *(a3 + 25);
  v23 = &v15[v13[8]];
  *v23 = v19;
  v23[1] = v20;
  v15[v13[10]] = v22;
  v15[v13[9]] = 6;
  sub_1D8EDC2A8((a3 + 4), v21);
  v38(v11, 1, 1, v39);
  sub_1D8D088B4(v11, v8, &unk_1ECAB5910, &qword_1D9188C90);
  LOBYTE(v13) = *(a3 + 24);
  v46 = v37;
  v47 = v17;

  MEMORY[0x1DA7298F0](45, 0xE100000000000000);
  v45 = v36;
  v24 = sub_1D917927C();
  MEMORY[0x1DA7298F0](v24);

  v25 = v46;
  v26 = v47;
  sub_1D8D08A50(v11, &unk_1ECAB5910, &qword_1D9188C90);
  v27 = &v8[v6[11]];
  *(v27 + 32) = 0;
  *v27 = 0u;
  *(v27 + 16) = 0u;
  v8[v6[7]] = v13;
  v28 = *(a3 + 25);
  v29 = &v8[v6[8]];
  *v29 = v25;
  v29[1] = v26;
  v8[v6[10]] = v28;
  v8[v6[9]] = 7;
  sub_1D8EDC2A8((a3 + 4), v27);
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB61D8, &qword_1D9192440) + 48);
  v31 = v41;
  sub_1D8EDCD8C(v8, v41, type metadata accessor for TTMLRequest);
  sub_1D8EDCD8C(v15, &v31[v30], type metadata accessor for ShazamSignatureRequest);
  swift_storeEnumTagMultiPayload();
  v44(v31);
  sub_1D8D08A50(v31, &qword_1ECAB63C8, &unk_1D9192630);
  sub_1D8D671A8(v8, type metadata accessor for TTMLRequest);
  return sub_1D8D671A8(v15, type metadata accessor for ShazamSignatureRequest);
}

uint64_t sub_1D8ED8160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB61D8, &qword_1D9192440);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  sub_1D8D088B4(a1, &v13 - v8, &qword_1ECAB61D8, &qword_1D9192440);
  v10 = *(v7 + 56);
  v11 = sub_1D8ED8268(a2, v9, &v9[v10]);
  sub_1D8D671A8(&v9[v10], type metadata accessor for ShazamSignatureRequest);
  result = sub_1D8D671A8(v9, type metadata accessor for TTMLRequest);
  *a3 = v11;
  return result;
}

uint64_t sub_1D8ED8268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v63 = a1;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB61E0, &qword_1D9192448);
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v50 = &v47 - v7;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB61E8, &qword_1D9192450);
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v54 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v47 - v10;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB61F0, &qword_1D9192458);
  MEMORY[0x1EEE9AC00](v56);
  v58 = (&v47 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB61D8, &qword_1D9192440);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v47 - v14;
  sub_1D8EDCD8C(a2, &v47 - v14, type metadata accessor for TTMLRequest);
  v16 = *(v13 + 56);
  sub_1D8EDCD8C(a3, &v15[v16], type metadata accessor for ShazamSignatureRequest);
  v4[16](&v66, v15);
  v17 = v71;
  v64 = v15;
  if (v71)
  {
    v18 = v72;
    v19 = v69;
    v20 = v70;
    v21 = v67;
    v22 = v68;
    v23 = v66;
  }

  else
  {
    (*v4)(&v66, v15);
    v17 = v71;
    if (v71)
    {
      v24 = v15;
      v25 = v4[18];
      v23 = v66;
      v21 = v67;
      v22 = v68;
      LOBYTE(v68) = v68 & 1;
      v19 = v69;
      v20 = v70;
      v18 = v72;
      v25(&v66, v24);
    }

    else
    {
      v23 = v66;
      v21 = v67;
      v22 = v68;
      v19 = v69;
      v20 = v70;
      v18 = v72;
    }
  }

  v26 = sub_1D8ED8DC4(&v64[v16]);
  v27 = v26;
  v61 = v19;
  v62 = v22;
  v60 = v23;
  v59 = v21;
  if (v17 && v26)
  {
    v65[0] = v22 & 1;
    v66 = v26;
    v67 = v23;
    v68 = v21;
    LOBYTE(v69) = v22 & 1;
    v70 = v19;
    v71 = v20;
    v48 = v20;
    v72 = v17;
    v73 = v18;
    v49 = v18;
    v74 = 2;
    sub_1D8EDC4C0(v23, v21, v22, v19, v20, v17, v18);
    v47 = v27;
    v28 = v50;
    sub_1D9177A0C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    v29 = v53;
    v30 = v52;
    sub_1D91779DC();
    (*(v51 + 8))(v28, v30);
    v31 = v55;
    v32 = *(v55 + 16);
    v33 = v54;
    v34 = v57;
    v32(v54, v29, v57);
    sub_1D8D088B4(v63 + 32, &v66, &qword_1ECAB4928, &qword_1D918B380);
    v35 = v58;
    v32(v58, v33, v34);
    v36 = v56;
    sub_1D8D088B4(&v66, v35 + *(v56 + 36), &qword_1ECAB4928, &qword_1D918B380);
    v37 = v35 + v36[10];
    *v37 = "LocallyFulfillTranscriptRequest";
    *(v37 + 1) = 31;
    v37[16] = 2;
    *(v35 + v36[12]) = 1;
    sub_1D8D08A50(&v66, &qword_1ECAB4928, &qword_1D918B380);
    v38 = *(v31 + 8);
    v38(v33, v34);
    v38(v29, v34);
    v39 = (v35 + v36[11]);
    *v39 = 0;
    v39[1] = 0xE000000000000000;
    *(v35 + v36[13]) = 0;
    sub_1D8CF48EC(&qword_1ECAB2760, &qword_1ECAB61F0, &qword_1D9192458, &protocol conformance descriptor for EmitLifecycle<A>);
    v40 = sub_1D9177B1C();

    sub_1D8EDC46C(v60, v59, v62, v61, v48, v17, v49);
    v41 = v35;
    v42 = &qword_1ECAB61F0;
    v43 = &qword_1D9192458;
  }

  else
  {
    v66 = v23;
    v67 = v21;
    v68 = v22;
    v69 = v19;
    v70 = v20;
    v71 = v17;
    v72 = v18;
    v44 = v63;
    v45 = sub_1D8ED8E64(v63, &v66, v26);
    sub_1D8D088B4(v44 + 32, v65, &qword_1ECAB4928, &qword_1D918B380);
    v66 = v45;
    sub_1D8D088B4(v65, &v67, &qword_1ECAB4928, &qword_1D918B380);
    v72 = "RemotelyFulfillTranscriptRequest";
    v73 = 32;
    v74 = 2;
    v77 = 1;
    sub_1D8D08A50(v65, &qword_1ECAB4928, &qword_1D918B380);
    v75 = 0;
    v76 = 0xE000000000000000;
    v78 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB61F8, &unk_1D9192460);
    sub_1D8CF48EC(&qword_1ECAB27A0, &qword_1ECAB61F8, &unk_1D9192460, &protocol conformance descriptor for EmitLifecycle<A>);
    v40 = sub_1D9177B1C();

    sub_1D8EDC46C(v60, v59, v62, v61, v20, v17, v18);
    v41 = &v66;
    v42 = &qword_1ECAB61F8;
    v43 = &unk_1D9192460;
  }

  sub_1D8D08A50(v41, v42, v43);
  sub_1D8D08A50(v64, &qword_1ECAB61D8, &qword_1D9192440);
  return v40;
}

uint64_t TimeBombedTranscriptProvider.invalidate(for:)(uint64_t *a1)
{
  v2 = type metadata accessor for ShazamSignatureRequest(0);
  v3 = (v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v38 = &v31[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v31[-v6];
  v8 = type metadata accessor for TTMLRequest(0);
  v9 = (v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1D9176C2C();
  v13 = *(v12 - 8);
  v36 = *(v13 + 56);
  v37 = v13 + 56;
  v41 = 1;
  v36(v7, 1, 1, v12);
  sub_1D8D088B4(v7, v11, &unk_1ECAB5910, &qword_1D9188C90);
  v32 = *(a1 + 24);
  v14 = a1[2];
  v35 = a1[1];
  v42 = v35;
  v43 = v14;

  MEMORY[0x1DA7298F0](45, 0xE100000000000000);
  v34 = *a1;
  v44 = v34;
  v33 = sub_1D8E40D20();
  v15 = sub_1D917927C();
  MEMORY[0x1DA7298F0](v15);

  v16 = v42;
  v17 = v43;
  sub_1D8D08A50(v7, &unk_1ECAB5910, &qword_1D9188C90);
  v18 = &v11[v9[11]];
  *(v18 + 32) = 0;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  v11[v9[7]] = v32;
  v19 = *(a1 + 25);
  v20 = &v11[v9[8]];
  *v20 = v16;
  v20[1] = v17;
  v11[v9[10]] = v19;
  v11[v9[9]] = 7;
  sub_1D8EDC2A8((a1 + 4), v18);
  v36(v7, 1, 1, v12);
  v21 = v38;
  sub_1D8D088B4(v7, v38, &unk_1ECAB5910, &qword_1D9188C90);
  LOBYTE(v9) = *(a1 + 24);
  v42 = v35;
  v43 = v14;
  v22 = v39;

  MEMORY[0x1DA7298F0](45, 0xE100000000000000);
  v44 = v34;
  v23 = sub_1D917927C();
  MEMORY[0x1DA7298F0](v23);

  v24 = v42;
  v25 = v43;
  sub_1D8D08A50(v7, &unk_1ECAB5910, &qword_1D9188C90);
  v26 = &v21[v3[11]];
  *(v26 + 32) = 0;
  *v26 = 0u;
  *(v26 + 16) = 0u;
  v21[v3[7]] = v9;
  v27 = *(a1 + 25);
  v28 = &v21[v3[8]];
  *v28 = v24;
  v28[1] = v25;
  v21[v3[10]] = v27;
  v21[v3[9]] = 6;
  sub_1D8EDC2A8((a1 + 4), v26);
  if (((*(v22 + 32))(v11) & 1) == 0)
  {
    v41 = (*(v22 + 96))(v21);
  }

  v29 = v40;
  (*(v22 + 48))(v11);
  if (!v29)
  {
    (*(v22 + 112))(v21);
  }

  sub_1D8D671A8(v21, type metadata accessor for ShazamSignatureRequest);
  sub_1D8D671A8(v11, type metadata accessor for TTMLRequest);
  return v41 & 1;
}

id sub_1D8ED8DC4(uint64_t a1)
{
  (*(v1 + 192))(&v6);
  v3 = v6;
  if (!v6)
  {
    (*(v1 + 64))(&v6, a1);
    v3 = v6;
    if (!v6)
    {
      return 0;
    }

    (*(v1 + 208))(&v6, a1);
  }

  v4 = sub_1D8EDB648(v3);

  return v4;
}

uint64_t sub_1D8ED8E64(uint64_t a1, uint64_t *a2, void *a3)
{
  v125 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6200, &qword_1D9192470);
  v119 = *(v6 - 8);
  v120 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v118 = &v114 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6208, &qword_1D9192478);
  v116 = *(v8 - 8);
  v117 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v115 = &v114 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6210, &qword_1D9192480);
  v122 = *(v10 - 8);
  v123 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v121 = &v114 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6218, &qword_1D9192488);
  v126 = *(v12 - 8);
  v127 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v124 = &v114 - v13;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6220, &qword_1D9192490);
  v128 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v138 = &v114 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6228, &qword_1D9192498);
  v130 = *(v15 - 8);
  v131 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v129 = &v114 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB61E0, &qword_1D9192448);
  v143 = *(v17 - 8);
  v144 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v142 = &v114 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB61E8, &qword_1D9192450);
  v146 = *(v19 - 8);
  v147 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v145 = &v114 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6230, &qword_1D91924A0);
  v136 = *(v21 - 8);
  v137 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v135 = &v114 - v22;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6238, &qword_1D91924A8);
  v139 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v148 = &v114 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6240, &qword_1D91924B0);
  v25 = *(v24 - 8);
  v140 = v24;
  v141 = v25;
  MEMORY[0x1EEE9AC00](v24);
  v156 = &v114 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6248, &qword_1D91924B8);
  v28 = *(v27 - 8);
  v158 = v27;
  v159 = v28;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v114 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v114 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v114 - v35;
  v37 = *a2;
  v153 = a2[1];
  v154 = v37;
  v38 = a2[3];
  v155 = a2[2];
  v152 = v38;
  v39 = a2[4];
  v157 = a2[5];
  v133 = a2[6];
  v134 = v39;
  v150 = v3;
  v40 = *(v3 + 39);
  v41 = *(v3 + 40);
  __swift_project_boxed_opaque_existential_1(v3 + 36, v40);
  v166[0] = (*(v41 + 8))(a1, v40, v41);
  sub_1D8EC8C5C(a1, v167);
  v42 = swift_allocObject();
  v43 = v167[3];
  *(v42 + 48) = v167[2];
  *(v42 + 64) = v43;
  *(v42 + 80) = v168;
  v44 = v167[1];
  *(v42 + 16) = v167[0];
  *(v42 + 32) = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6250, &qword_1D91924C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6258, &qword_1D91924C8);
  sub_1D8CF48EC(&qword_1ECAB0388, &qword_1ECAB6250, &qword_1D91924C0, MEMORY[0x1E695BED8]);
  v45 = v33;
  sub_1D9177B9C();
  v46 = v158;

  v47 = *(v159 + 16);
  v47(v33, v36, v46);
  v48 = v150;
  sub_1D8D6906C(v150, v167);
  v49 = v30;
  v47(v30, v36, v46);
  sub_1D8D6906C(v48, v166);
  v151 = v36;
  if (v157)
  {
    LODWORD(v138) = v155 & 1;
    LOBYTE(v161) = v155 & 1;
    v50 = v152;
    v51 = v134;
    sub_1D8D752C4(v152, v134);

    v52 = v133;

    sub_1D8EDC540(v167);
    v53 = v158;
    v54 = v159 + 8;
    v55 = *(v159 + 8);
    v55(v45, v158);
    v150 = v55;
    v159 = v54;
    v56 = v148;
    sub_1D8EDAB00(v166, v148);
    sub_1D8EDC540(v166);
    v55(v49, v53);
    v57 = swift_allocObject();
    v59 = v153;
    v58 = v154;
    *(v57 + 16) = v154;
    *(v57 + 24) = v59;
    *(v57 + 32) = v161;
    *(v57 + 40) = v50;
    *(v57 + 48) = v51;
    v60 = v51;
    v61 = v157;
    *(v57 + 56) = v157;
    *(v57 + 64) = v52;
    v62 = v50;
    v63 = v50;
    v64 = v60;
    sub_1D8D752C4(v62, v60);

    v65 = v149;
    sub_1D917758C();

    (*(v139 + 8))(v56, v65);
    v160 = v138;
    v165[0] = v58;
    v165[1] = v59;
    LOBYTE(v165[2]) = v138;
    v165[3] = v63;
    v165[4] = v64;
    v165[5] = v61;
    v165[6] = v52;
    LOBYTE(v165[8]) = 1;
    sub_1D8D752C4(v63, v64);

    v66 = v142;
    sub_1D9177A0C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    v67 = v144;
    v68 = v145;
    sub_1D91779DC();
    (*(v143 + 8))(v66, v67);
    sub_1D8CF48EC(&qword_1ECAB6268, &qword_1ECAB61E8, &qword_1D9192450, MEMORY[0x1E695C0C8]);
    sub_1D8CF48EC(&qword_1ECAB0BA0, &qword_1ECAB6240, &qword_1D91924B0, MEMORY[0x1E695BC80]);
    v69 = v135;
    v70 = v156;
    v71 = v147;
    v72 = v140;
    sub_1D9177BEC();
    (*(v146 + 8))(v68, v71);
    sub_1D8CF48EC(&qword_1ECAB6278, &qword_1ECAB6230, &qword_1D91924A0, MEMORY[0x1E695BDC0]);
    v73 = v137;
    v74 = sub_1D9177B1C();
    v75 = sub_1D8EDC46C(v154, v153, v155, v152, v64, v61, v52);
    (*(v136 + 8))(v69, v73, v75);
    (*(v141 + 8))(v70, v72);
    v150(v151, v158);
  }

  else
  {
    v157 = v30;
    v76 = v124;
    v77 = v138;
    v114 = v33;
    if (v125)
    {
      v156 = v125;
      sub_1D8EDC540(v166);
      v78 = v159 + 8;
      v155 = *(v159 + 8);
      (v155)(v157, v158);
      type metadata accessor for TTMLRequest(0);
      v157 = MEMORY[0x1E695BD60];
      sub_1D8CF48EC(&qword_1ECAB07D0, &qword_1ECAB6248, &qword_1D91924B8, MEMORY[0x1E695BD60]);
      sub_1D9177B2C();
      sub_1D8D6906C(v167, v165);
      v79 = swift_allocObject();
      memcpy((v79 + 16), v165, 0x168uLL);
      sub_1D91777FC();
      v159 = v78;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6260, &qword_1D91924D0);
      sub_1D8CF48EC(&qword_1ECAB0B70, &qword_1ECAB6218, &qword_1D9192488, MEMORY[0x1E695BC80]);
      sub_1D8CF48EC(&qword_1ECAB2770, &qword_1ECAB6260, &qword_1D91924D0, &protocol conformance descriptor for EmitLifecycle<A>);
      v80 = v127;
      sub_1D9177CBC();

      (*(v126 + 8))(v76, v80);
      sub_1D8EDC540(v167);
      v81 = v158;
      v82 = v155;
      (v155)(v114, v158);
      v83 = swift_allocObject();
      v84 = v156;
      *(v83 + 16) = v156;
      sub_1D8CF48EC(&qword_1ECAB0620, &qword_1ECAB6220, &qword_1D9192490, MEMORY[0x1E695BE40]);
      v85 = v84;
      v86 = v129;
      v87 = v132;
      sub_1D9177B9C();

      (*(v128 + 8))(v77, v87);
      v165[0] = v85;
      *&v165[1] = v161;
      *&v165[3] = v162;
      *&v165[5] = v163;
      v165[7] = v164;
      LOBYTE(v165[8]) = 0;
      v88 = v85;
      v89 = v142;
      sub_1D9177A0C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
      v90 = v144;
      v91 = v145;
      sub_1D91779DC();
      (*(v143 + 8))(v89, v90);
      sub_1D8CF48EC(&qword_1ECAB6268, &qword_1ECAB61E8, &qword_1D9192450, MEMORY[0x1E695C0C8]);
      sub_1D8CF48EC(&qword_1ECAB07C0, &qword_1ECAB6228, &qword_1D9192498, v157);
      v92 = v121;
      v93 = v147;
      v94 = v131;
      sub_1D9177BEC();
      (*(v146 + 8))(v91, v93);
      sub_1D8CF48EC(&qword_1ECAB6270, &qword_1ECAB6210, &qword_1D9192480, MEMORY[0x1E695BDC0]);
      v95 = v123;
      v74 = sub_1D9177B1C();

      (*(v122 + 8))(v92, v95);
      (*(v130 + 8))(v86, v94);
      v82(v151, v81);
    }

    else
    {
      type metadata accessor for TTMLRequest(0);
      v154 = MEMORY[0x1E695BD60];
      sub_1D8CF48EC(&qword_1ECAB07D0, &qword_1ECAB6248, &qword_1D91924B8, MEMORY[0x1E695BD60]);
      v97 = v76;
      sub_1D9177B2C();
      sub_1D8D6906C(v167, v165);
      v98 = swift_allocObject();
      memcpy((v98 + 16), v165, 0x168uLL);
      sub_1D91777FC();
      v99 = v159;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6260, &qword_1D91924D0);
      v155 = MEMORY[0x1E695BC80];
      sub_1D8CF48EC(&qword_1ECAB0B70, &qword_1ECAB6218, &qword_1D9192488, MEMORY[0x1E695BC80]);
      sub_1D8CF48EC(&qword_1ECAB2770, &qword_1ECAB6260, &qword_1D91924D0, &protocol conformance descriptor for EmitLifecycle<A>);
      v100 = v127;
      sub_1D9177CBC();

      (*(v126 + 8))(v97, v100);
      sub_1D8EDC540(v167);
      v101 = *(v99 + 8);
      v102 = v158;
      v101(v114, v158);
      v153 = v101;
      v159 = v99 + 8;
      v103 = v157;
      sub_1D8EDAB00(v166, v148);
      sub_1D8EDC540(v166);
      v101(v103, v102);
      sub_1D8CF48EC(&qword_1ECAB0620, &qword_1ECAB6220, &qword_1D9192490, MEMORY[0x1E695BE40]);
      sub_1D8CF48EC(&qword_1ECAB0B98, &qword_1ECAB6238, &qword_1D91924A8, v155);
      v104 = v115;
      sub_1D9177B6C();
      sub_1D8CF48EC(&qword_1ECAB07A8, &qword_1ECAB6208, &qword_1D9192478, v154);
      v105 = v117;
      v106 = sub_1D9177B1C();
      (*(v116 + 8))(v104, v105);
      v107 = v129;
      sub_1D9177B9C();
      v108 = v156;
      sub_1D917758C();
      v165[0] = v106;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5F18, &unk_1D9191990);
      sub_1D8CF48EC(&qword_1ECAB0380, &qword_1ECAB5F18, &unk_1D9191990, MEMORY[0x1E695BED8]);
      sub_1D8CF48EC(&qword_1ECAB07C0, &qword_1ECAB6228, &qword_1D9192498, v154);
      sub_1D8CF48EC(&qword_1ECAB0BA0, &qword_1ECAB6240, &qword_1D91924B0, v155);
      v109 = v118;
      v110 = v107;
      v111 = v131;
      v112 = v140;
      sub_1D9177C0C();
      sub_1D8CF48EC(&qword_1ECAB06A0, &qword_1ECAB6200, &qword_1D9192470, MEMORY[0x1E695BDE8]);
      v113 = v120;
      v74 = sub_1D9177B1C();

      (*(v119 + 8))(v109, v113);
      (*(v141 + 8))(v108, v112);
      (*(v130 + 8))(v110, v111);
      (*(v139 + 8))(v148, v149);
      (*(v128 + 8))(v138, v132);
      v153(v151, v158);
    }
  }

  return v74;
}

uint64_t sub_1D8EDA3C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6258, &qword_1D91924C8);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  sub_1D8D088B4(a1, &v13 - v9, &qword_1ECAB6258, &qword_1D91924C8);
  v11 = *(v5 + 56);
  sub_1D8D6734C(v10, v7, &qword_1ECAB6318, &qword_1D9192578);
  sub_1D8D6734C(&v10[v11], &v7[v11], &qword_1ECAB62B8, &qword_1D9192510);
  sub_1D8D088B4(&v7[v11], a2, &qword_1ECAB62B8, &qword_1D9192510);
  return sub_1D8D08A50(v7, &qword_1ECAB6258, &qword_1D91924C8);
}

uint64_t sub_1D8EDA4FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6280, &qword_1D91924D8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v60 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v49 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6288, &qword_1D91924E0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v49 - v10;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6290, &qword_1D91924E8);
  MEMORY[0x1EEE9AC00](v53);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v49 - v15;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6298, &qword_1D91924F0);
  MEMORY[0x1EEE9AC00](v55);
  v18 = &v49 - v17;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB62A0, &qword_1D91924F8);
  MEMORY[0x1EEE9AC00](v57);
  v20 = &v49 - v19;
  v21 = *(v2 + 32);
  v22 = *(v2 + 33);
  sub_1D8EDCD8C(a1, v11, type metadata accessor for TTMLRequest);
  v23 = &v11[*(v9 + 60)];
  *v23 = v21;
  *(v23 + 1) = v22;
  v54 = v22;
  v56 = type metadata accessor for TTMLRequest(0);
  v24 = *(v56 + 32);
  v58 = a1;
  if (*(a1 + v24))
  {
    v25 = v2[3];
    v65 = v2[2];
    v66 = v25;
    v27 = *v2;
    v26 = v2[1];
  }

  else
  {
    v28 = v2[11];
    v65 = v2[10];
    v66 = v28;
    v27 = v2[8];
    v26 = v2[9];
  }

  v63 = v27;
  v64 = v26;
  v52 = v66;
  v51 = v65;
  v50 = v26;
  v49 = v27;
  sub_1D8D088B4(&v63, v62, &qword_1ECAB6190, &qword_1D91921D0);
  sub_1D8D088B4(v11, v16, &qword_1ECAB6288, &qword_1D91924E0);
  v29 = v53;
  sub_1D8EDCD8C(v11, &v16[*(v53 + 80)], type metadata accessor for TTMLRequest);

  sub_1D8D08A50(v11, &qword_1ECAB6288, &qword_1D91924E0);
  v30 = &v16[v29[19]];
  v31 = v50;
  *v30 = v49;
  *(v30 + 1) = v31;
  v32 = v52;
  *(v30 + 2) = v51;
  *(v30 + 3) = v32;
  v16[v29[21]] = 1;
  v33 = *(v2 + 42);
  sub_1D8D6734C(v16, v13, &qword_1ECAB6290, &qword_1D91924E8);
  v34 = v55;
  *&v18[*(v55 + 48)] = v33;
  sub_1D8D088B4(v13, &v18[*(v34 + 44)], &qword_1ECAB6290, &qword_1D91924E8);
  sub_1D8EDCD8C(&v13[v29[20]], v18, type metadata accessor for TTMLRequest);

  sub_1D8D08A50(v13, &qword_1ECAB6290, &qword_1D91924E8);
  v35 = v2[9];
  v63 = v2[8];
  v64 = v35;
  v36 = v2[11];
  v65 = v2[10];
  v66 = v36;
  sub_1D8D088B4(v18, v20, &qword_1ECAB6298, &qword_1D91924F0);
  v37 = v57;
  sub_1D8EDCD8C(v18, &v20[*(v57 + 80)], type metadata accessor for TTMLRequest);
  sub_1D8D08A50(v18, &qword_1ECAB6298, &qword_1D91924F0);
  v38 = &v20[*(v37 + 76)];
  v39 = v64;
  *v38 = v63;
  *(v38 + 1) = v39;
  v40 = v66;
  *(v38 + 2) = v65;
  *(v38 + 3) = v40;
  v20[*(v37 + 84)] = 1;
  sub_1D8D088B4(&v63, v62, &qword_1ECAB6190, &qword_1D91921D0);
  v41 = v59;
  sub_1D8ED1E24(v59);
  sub_1D8D08A50(v20, &qword_1ECAB62A0, &qword_1D91924F8);
  v42 = *(v56 + 36);
  v43 = v60;
  sub_1D8D088B4(v41, v60, &qword_1ECAB6280, &qword_1D91924D8);
  sub_1D8D088B4(v58 + v42, v62, &qword_1ECAB4928, &qword_1D918B380);
  v44 = v61;
  sub_1D8D088B4(v43, v61, &qword_1ECAB6280, &qword_1D91924D8);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6260, &qword_1D91924D0);
  sub_1D8D088B4(v62, v44 + v45[9], &qword_1ECAB4928, &qword_1D918B380);
  v46 = v44 + v45[10];
  *v46 = "FetchTTMLFile";
  *(v46 + 8) = 13;
  *(v46 + 16) = 2;
  *(v44 + v45[12]) = 1;
  sub_1D8D08A50(v62, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D08A50(v43, &qword_1ECAB6280, &qword_1D91924D8);
  result = sub_1D8D08A50(v41, &qword_1ECAB6280, &qword_1D91924D8);
  v48 = (v44 + v45[11]);
  *v48 = 0;
  v48[1] = 0xE000000000000000;
  *(v44 + v45[13]) = 0;
  return result;
}

uint64_t sub_1D8EDAB00@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v17 = a1;
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6320, &qword_1D9192580);
  v4 = *(v3 - 8);
  v18 = v3;
  v19 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6328, &qword_1D9192588);
  v8 = *(v7 - 8);
  v20 = v7;
  v21 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6248, &qword_1D91924B8);
  type metadata accessor for ShazamSignatureRequest(0);
  sub_1D8CF48EC(&qword_1ECAB07D0, &qword_1ECAB6248, &qword_1D91924B8, MEMORY[0x1E695BD60]);
  sub_1D9177B2C();
  sub_1D8D6906C(a1, v23);
  v11 = swift_allocObject();
  memcpy((v11 + 16), v23, 0x168uLL);
  sub_1D91777FC();
  sub_1D8CF2154(0, &qword_1ECAAFE30, 0x1E697B7D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6330, &unk_1D9192590);
  sub_1D8CF48EC(&qword_1ECAB0B78, &qword_1ECAB6320, &qword_1D9192580, MEMORY[0x1E695BC80]);
  sub_1D8CF48EC(&qword_1ECAB2768, &qword_1ECAB6330, &unk_1D9192590, &protocol conformance descriptor for EmitLifecycle<A>);
  v12 = v18;
  sub_1D9177CBC();

  (*(v19 + 8))(v6, v12);
  sub_1D8D6906C(v17, v23);
  v13 = swift_allocObject();
  memcpy((v13 + 16), v23, 0x168uLL);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1D8EDC758;
  *(v14 + 24) = v13;
  sub_1D8CF2154(0, &unk_1ECAAFBD0, 0x1E697B780);
  sub_1D8CF48EC(&qword_1ECAB0618, &qword_1ECAB6328, &qword_1D9192588, MEMORY[0x1E695BE40]);
  v15 = v20;
  sub_1D9177B2C();

  return (*(v21 + 8))(v10, v15);
}

uint64_t sub_1D8EDAF0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6258, &qword_1D91924C8);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  sub_1D8D088B4(a1, &v13 - v9, &qword_1ECAB6258, &qword_1D91924C8);
  v11 = *(v5 + 56);
  sub_1D8D6734C(v10, v7, &qword_1ECAB6318, &qword_1D9192578);
  sub_1D8D6734C(&v10[v11], &v7[v11], &qword_1ECAB62B8, &qword_1D9192510);
  sub_1D8D088B4(v7, a2, &qword_1ECAB6318, &qword_1D9192578);
  return sub_1D8D08A50(v7, &qword_1ECAB6258, &qword_1D91924C8);
}

uint64_t sub_1D8EDB044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6338, &qword_1D91925A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v60 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v49 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6340, &qword_1D91925A8);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v49 - v10;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6348, &qword_1D91925B0);
  MEMORY[0x1EEE9AC00](v53);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v49 - v15;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6350, &qword_1D91925B8);
  MEMORY[0x1EEE9AC00](v55);
  v18 = &v49 - v17;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6358, &qword_1D91925C0);
  MEMORY[0x1EEE9AC00](v57);
  v20 = &v49 - v19;
  v21 = *(v2 + 272);
  v22 = *(v2 + 280);
  sub_1D8EDCD8C(a1, v11, type metadata accessor for ShazamSignatureRequest);
  v23 = &v11[*(v9 + 60)];
  *v23 = v21;
  *(v23 + 1) = v22;
  v54 = v22;
  v56 = type metadata accessor for ShazamSignatureRequest(0);
  v24 = *(v56 + 32);
  v58 = a1;
  if (*(a1 + v24))
  {
    v25 = *(v2 + 112);
    v65 = *(v2 + 96);
    v66 = v25;
    v27 = *(v2 + 64);
    v26 = *(v2 + 80);
  }

  else
  {
    v28 = *(v2 + 240);
    v65 = *(v2 + 224);
    v66 = v28;
    v27 = *(v2 + 192);
    v26 = *(v2 + 208);
  }

  v63 = v27;
  v64 = v26;
  v52 = v66;
  v51 = v65;
  v50 = v26;
  v49 = v27;
  sub_1D8D088B4(&v63, v62, &qword_1ECAB6198, &qword_1D91921D8);
  sub_1D8D088B4(v11, v16, &qword_1ECAB6340, &qword_1D91925A8);
  v29 = v53;
  sub_1D8EDCD8C(v11, &v16[*(v53 + 80)], type metadata accessor for ShazamSignatureRequest);

  sub_1D8D08A50(v11, &qword_1ECAB6340, &qword_1D91925A8);
  v30 = &v16[v29[19]];
  v31 = v50;
  *v30 = v49;
  *(v30 + 1) = v31;
  v32 = v52;
  *(v30 + 2) = v51;
  *(v30 + 3) = v32;
  v16[v29[21]] = 1;
  v33 = *(v2 + 344);
  sub_1D8D6734C(v16, v13, &qword_1ECAB6348, &qword_1D91925B0);
  v34 = v55;
  *&v18[*(v55 + 48)] = v33;
  sub_1D8D088B4(v13, &v18[*(v34 + 44)], &qword_1ECAB6348, &qword_1D91925B0);
  sub_1D8EDCD8C(&v13[v29[20]], v18, type metadata accessor for ShazamSignatureRequest);

  sub_1D8D08A50(v13, &qword_1ECAB6348, &qword_1D91925B0);
  v35 = *(v2 + 208);
  v63 = *(v2 + 192);
  v64 = v35;
  v36 = *(v2 + 240);
  v65 = *(v2 + 224);
  v66 = v36;
  sub_1D8D088B4(v18, v20, &qword_1ECAB6350, &qword_1D91925B8);
  v37 = v57;
  sub_1D8EDCD8C(v18, &v20[*(v57 + 80)], type metadata accessor for ShazamSignatureRequest);
  sub_1D8D08A50(v18, &qword_1ECAB6350, &qword_1D91925B8);
  v38 = &v20[*(v37 + 76)];
  v39 = v64;
  *v38 = v63;
  *(v38 + 1) = v39;
  v40 = v66;
  *(v38 + 2) = v65;
  *(v38 + 3) = v40;
  v20[*(v37 + 84)] = 1;
  sub_1D8D088B4(&v63, v62, &qword_1ECAB6198, &qword_1D91921D8);
  v41 = v59;
  sub_1D8ED27D0(v59);
  sub_1D8D08A50(v20, &qword_1ECAB6358, &qword_1D91925C0);
  v42 = *(v56 + 36);
  v43 = v60;
  sub_1D8D088B4(v41, v60, &qword_1ECAB6338, &qword_1D91925A0);
  sub_1D8D088B4(v58 + v42, v62, &qword_1ECAB4928, &qword_1D918B380);
  v44 = v61;
  sub_1D8D088B4(v43, v61, &qword_1ECAB6338, &qword_1D91925A0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6330, &unk_1D9192590);
  sub_1D8D088B4(v62, v44 + v45[9], &qword_1ECAB4928, &qword_1D918B380);
  v46 = v44 + v45[10];
  *v46 = "FetchShazamSignature";
  *(v46 + 8) = 20;
  *(v46 + 16) = 2;
  *(v44 + v45[12]) = 1;
  sub_1D8D08A50(v62, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D08A50(v43, &qword_1ECAB6338, &qword_1D91925A0);
  result = sub_1D8D08A50(v41, &qword_1ECAB6338, &qword_1D91925A0);
  v48 = (v44 + v45[11]);
  *v48 = 0;
  v48[1] = 0xE000000000000000;
  *(v44 + v45[13]) = 0;
  return result;
}

id sub_1D8EDB648(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9189070;
  *(inited + 32) = a1;
  v3 = a1;
  v4 = sub_1D8ECF6A0(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v4;
}

uint64_t sub_1D8EDB874@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v10 = *(a2 + 16) & 1;
  v5 = v10;
  *a3 = v4;
  *(a3 + 8) = *a2;
  *(a3 + 24) = v5;
  v6 = *(a2 + 40);
  *(a3 + 32) = *(a2 + 24);
  *(a3 + 48) = v6;
  *(a3 + 64) = 2;
  v7 = v4;
  return sub_1D8E511D8(a2, &v9);
}

double sub_1D8EDB8E0@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v3 = *(a1 + 16);
  *a3 = a2;
  *(a3 + 8) = *a1;
  *(a3 + 24) = v3;
  *(a3 + 32) = v4;
  *(a3 + 40) = v5;
  *(a3 + 48) = v6;
  *(a3 + 56) = v7;
  *(a3 + 64) = 2;
  v8 = a2;
  sub_1D8D752C4(v4, v5);

  return result;
}

double sub_1D8EDB968@<D0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *a2;
  v3 = *(a1 + 16);
  *a3 = *a2;
  *(a3 + 8) = *a1;
  *(a3 + 24) = v3;
  *(a3 + 32) = v4;
  *(a3 + 40) = v5;
  *(a3 + 48) = v6;
  *(a3 + 56) = v7;
  *(a3 + 64) = 2;
  v9 = v8;
  sub_1D8D752C4(v4, v5);

  return result;
}

id sub_1D8EDB9F4@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  *(a2 + 64) = 0;
  return v2;
}

uint64_t sub_1D8EDBA04@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1D9176C2C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v44[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v48 = &v44[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44[-v13];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v44[-v16];
  v49 = a1;
  sub_1D8D088B4(a1, &v44[-v16], &unk_1ECAB5910, &qword_1D9188C90);
  v18 = *(v7 + 48);
  v19 = v18(v17, 1, v6);
  v47 = v9;
  if (v19 == 1)
  {
    v20 = type metadata accessor for ShazamSignatureRequest(0);
    (*(*(v20 - 8) + 56))(a3, 1, 1, v20);
  }

  else
  {
    (*(v7 + 32))(v9, v17, v6);
    (*(v7 + 16))(v14, v9, v6);
    (*(v7 + 56))(v14, 0, 1, v6);
    sub_1D8D088B4(v14, a3, &unk_1ECAB5910, &qword_1D9188C90);
    v45 = *(a2 + 24);
    v21 = a2[2];
    v51 = a2[1];
    v52 = v21;

    MEMORY[0x1DA7298F0](45, 0xE100000000000000);
    v50 = *a2;
    sub_1D8E40D20();
    v22 = sub_1D917927C();
    v46 = v18;
    MEMORY[0x1DA7298F0](v22);

    v23 = v51;
    v24 = v52;
    sub_1D8D08A50(v14, &unk_1ECAB5910, &qword_1D9188C90);
    (*(v7 + 8))(v9, v6);
    v25 = *(a2 + 25);
    v26 = type metadata accessor for ShazamSignatureRequest(0);
    v27 = a3 + v26[9];
    *(v27 + 32) = 0;
    *v27 = 0u;
    *(v27 + 16) = 0u;
    *(a3 + v26[5]) = v45;
    v28 = (a3 + v26[6]);
    *v28 = v23;
    v28[1] = v24;
    v18 = v46;
    *(a3 + v26[8]) = v25;
    *(a3 + v26[7]) = 6;
    sub_1D8EDC2A8((a2 + 4), v27);
    (*(*(v26 - 1) + 56))(a3, 0, 1, v26);
  }

  v29 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6258, &qword_1D91924C8) + 48);
  v30 = type metadata accessor for TranscriptData.TimeBombedURLs(0);
  v31 = v48;
  sub_1D8D088B4(v49 + *(v30 + 20), v48, &unk_1ECAB5910, &qword_1D9188C90);
  if (v18(v31, 1, v6) == 1)
  {
    v32 = type metadata accessor for TTMLRequest(0);
    return (*(*(v32 - 8) + 56))(v29, 1, 1, v32);
  }

  else
  {
    v34 = v47;
    (*(v7 + 32))(v47, v31, v6);
    (*(v7 + 16))(v14, v34, v6);
    (*(v7 + 56))(v14, 0, 1, v6);
    sub_1D8D088B4(v14, v29, &unk_1ECAB5910, &qword_1D9188C90);
    v35 = *(a2 + 24);
    v36 = a2[2];
    v51 = a2[1];
    v52 = v36;

    MEMORY[0x1DA7298F0](45, 0xE100000000000000);
    v50 = *a2;
    sub_1D8E40D20();
    v37 = sub_1D917927C();
    MEMORY[0x1DA7298F0](v37);

    v38 = v51;
    v39 = v52;
    sub_1D8D08A50(v14, &unk_1ECAB5910, &qword_1D9188C90);
    (*(v7 + 8))(v34, v6);
    v40 = *(a2 + 25);
    v41 = type metadata accessor for TTMLRequest(0);
    v42 = v29 + v41[9];
    *(v42 + 32) = 0;
    *v42 = 0u;
    *(v42 + 16) = 0u;
    *(v29 + v41[5]) = v35;
    v43 = (v29 + v41[6]);
    *v43 = v38;
    v43[1] = v39;
    *(v29 + v41[8]) = v40;
    *(v29 + v41[7]) = 7;
    sub_1D8EDC2A8((a2 + 4), v42);
    return (*(*(v41 - 1) + 56))(v29, 0, 1, v41);
  }
}

uint64_t sub_1D8EDBFC4()
{
  v1 = *(v0 + 352);
  os_unfair_lock_lock((v1 + 24));
  sub_1D8EDCFE4((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

uint64_t TranscriptProviderError.hashValue.getter()
{
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](0);
  return sub_1D9179E1C();
}

uint64_t sub_1D8EDC10C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  sub_1D8EDCD8C(a1, a4, a2);
  v6 = a3(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a4, 0, 1, v6);
}

double sub_1D8EDC1E4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 24) = v4;
  *(a2 + 32) = v3;
  *(a2 + 40) = v5;
  *(a2 + 48) = v6;
  sub_1D8D752C4(v4, v3);

  return result;
}

double sub_1D8EDC244@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;
  a2[3] = v5;
  a2[4] = v6;
  a2[5] = v7;
  a2[6] = v8;
  return sub_1D8EDC4C0(v3, v2, v4, v5, v6, v7, v8);
}

id sub_1D8EDC26C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

uint64_t sub_1D8EDC2A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4928, &qword_1D918B380);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D8EDC31C()
{
  result = qword_1ECAB61D0;
  if (!qword_1ECAB61D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB61D0);
  }

  return result;
}

uint64_t sub_1D8EDC378(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 360))
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

uint64_t sub_1D8EDC3C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 328) = 0u;
    *(result + 344) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 360) = 1;
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

    *(result + 360) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1D8EDC46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a6)
  {
    sub_1D8D7567C(a4, a5);
  }

  return result;
}

double sub_1D8EDC4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a6)
  {
    sub_1D8D752C4(a4, a5);
  }

  return result;
}

uint64_t objectdestroy_13Tm_0()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 304));

  return swift_deallocObject();
}

uint64_t sub_1D8EDC77C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D8EDC7DC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(a1, *(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t objectdestroy_26Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = (*(*(v2 - 8) + 80) + 24) & ~*(*(v2 - 8) + 80);

  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v1 + v3, 1, v4))
  {
    (*(v5 + 8))(v1 + v3, v4);
  }

  v6 = (v1 + v3 + *(v2 + 36));
  if (v6[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  return swift_deallocObject();
}

uint64_t sub_1D8EDC968(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8EDC9FC(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

uint64_t objectdestroy_35Tm(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = sub_1D9176C2C();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v3 + v6, v7);
  }

  v9 = a3(0);

  v10 = (v3 + v6 + *(v9 + 36));
  if (v10[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  return swift_deallocObject();
}

uint64_t sub_1D8EDCC5C(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v5 = v3 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a3(v5);
}

void sub_1D8EDCCDC(uint64_t a1)
{
  sub_1D9176EAC();

  sub_1D8ED7C98(a1, v1 + 16);
}

uint64_t sub_1D8EDCD8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8EDCE58@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D8ED3A74(a1, *(v2 + 16), *(v2 + 24));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t objectdestroy_64Tm()
{

  v1 = *(v0 + 56);
  if (v1 != 255)
  {
    sub_1D8DADC60(*(v0 + 40), *(v0 + 48), v1);
  }

  v2 = *(v0 + 88);
  if (v2 != 255)
  {
    sub_1D8DADC78(*(v0 + 80), v2);
  }

  v3 = *(v0 + 104);
  if (v3 != 255)
  {
    sub_1D8DADC78(*(v0 + 96), v3);
  }

  v4 = *(v0 + 120);
  if (v4 != 255)
  {
    sub_1D8DADC78(*(v0 + 112), v4);
  }

  v5 = *(v0 + 136);
  if (v5 != 255)
  {
    sub_1D8DADC78(*(v0 + 128), v5);
  }

  v6 = *(v0 + 152);
  if (v6 != 255)
  {
    sub_1D8DADC78(*(v0 + 144), v6);
  }

  if (*(v0 + 272))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 248));
  }

  return swift_deallocObject();
}

void sub_1D8EDD000(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_1D9176C2C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D9178FBC();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a2 * 0.1;
  if (v15 == INFINITY)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v15 <= -1.0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v15 >= 1.84467441e19)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v16 = v15;
  v17 = a2 - v15;
  if (a2 >= v15)
  {
    sub_1D9178FCC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB65B0, &qword_1D9192878);
    swift_allocObject();
    *a4 = sub_1D8D618BC(v17, v14);
    (*(v9 + 16))(v11, a1, v8);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D38, &qword_1D9191600);
    sub_1D8D61D00(v11, v16, a4 + *(v18 + 60));

    (*(v9 + 8))(a1, v8);
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_1D8EDD21C(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_1D9176C2C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D9178FBC();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a2 * 0.1;
  if (v15 == INFINITY)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v15 <= -1.0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v15 >= 1.84467441e19)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v16 = v15;
  v17 = a2 - v15;
  if (a2 >= v15)
  {
    sub_1D9178FCC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6598, &qword_1D9192860);
    swift_allocObject();
    *a4 = sub_1D8D62DC8(v17, v14);
    (*(v9 + 16))(v11, a1, v8);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D08, &unk_1D9191530);
    sub_1D8D62FB4(v11, v16, a4 + *(v18 + 60));

    (*(v9 + 8))(a1, v8);
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_1D8EDD438(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 16);
    os_unfair_lock_lock(v3 + 10);
    sub_1D8EEFD98(&v3[4]);
    os_unfair_lock_unlock(v3 + 10);
  }

  return result;
}

id sub_1D8EDD4B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9176E3C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ShazamSignatureRequest(0);
  v9 = *(a1 + 16);
  if (!*(v9 + 16))
  {
    return 0;
  }

  v10 = sub_1D8D33C70(*(a2 + *(v8 + 24)), *(a2 + *(v8 + 24) + 8));
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v12 = *(*(v9 + 56) + 8 * v10);

  sub_1D9176E0C();
  v13 = *(*v12 + 17);
  swift_beginAccess();
  (*(v5 + 40))(v12 + v13, v7, v4);
  swift_endAccess();
  v14 = v12[2];

  return v14;
}

double sub_1D8EDD61C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1D9176E3C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTMLRequest(0);
  v11 = *(a1 + 16);
  if (*(v11 + 16) && (v12 = sub_1D8D33C70(*(a2 + *(v10 + 24)), *(a2 + *(v10 + 24) + 8)), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);

    sub_1D9176E0C();
    v15 = *(*v14 + 136);
    swift_beginAccess();
    (*(v7 + 40))(v14 + v15, v9, v6);
    swift_endAccess();
    v16 = *(v14 + 32);
    v17 = *(v14 + 40);
    v18 = *(v14 + 48);
    v19 = *(v14 + 56);
    v20 = *(v14 + 64);
    *a3 = *(v14 + 16);
    *(a3 + 16) = v16;
    *(a3 + 24) = v17;
    *(a3 + 32) = v18;
    *(a3 + 40) = v19;
    *(a3 + 48) = v20;
    sub_1D8D752C4(v17, v18);
  }

  else
  {
    *(a3 + 48) = 0;
    result = 0.0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  return result;
}

void sub_1D8EDD7C0(uint64_t a1)
{
  v2 = ArtworkRequest.key.getter();
  v3 = sub_1D8F7E958(v2);

  if (v3)
  {
    v4 = *(v3 + *(*v3 + 128));

    v5 = *(a1 + 8);
    v6 = v5 >= v4;
    v7 = v5 - v4;
    if (v6)
    {
      *(a1 + 8) = v7;
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1D8EDD844(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTMLRequest(0);
  result = sub_1D8D33C70(*(a2 + *(v4 + 24)), *(a2 + *(v4 + 24) + 8));
  if (v6)
  {
    v7 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(a1 + 16);
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D8F826FC();
    }

    v10 = *(*(v9 + 56) + 8 * v7);
    sub_1D8DA2AF4();
    *(a1 + 16) = v9;
    v11 = *(v10 + 72);

    v12 = *(a1 + 8);
    v13 = v12 >= v11;
    v14 = v12 - v11;
    if (v13)
    {
      *(a1 + 8) = v14;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1D8EDD910(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShazamSignatureRequest(0);
  result = sub_1D8D33C70(*(a2 + *(v4 + 24)), *(a2 + *(v4 + 24) + 8));
  if (v6)
  {
    v7 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(a1 + 16);
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D8F82710();
    }

    v10 = *(*(v9 + 56) + 8 * v7);
    sub_1D8DA2AF4();
    *(a1 + 16) = v9;
    v11 = *(v10 + 24);

    v12 = *(a1 + 8);
    v13 = v12 >= v11;
    v14 = v12 - v11;
    if (v13)
    {
      *(a1 + 8) = v14;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void *sub_1D8EDD9DC(uint64_t a1)
{
  v2 = v1;
  v51 = type metadata accessor for ShazamSignatureRequest(0);
  MEMORY[0x1EEE9AC00](v51);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v49 - v8;
  v10 = sub_1D9176C2C();
  v52 = *(v10 - 8);
  v53 = v10;
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v49 - v12;
  sub_1D8E459BC(&v49 - v12);
  v14 = [objc_opt_self() defaultManager];
  sub_1D9176BCC();
  v15 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v16 = [v14 contentsAtPath_];

  if (!v16)
  {
    v21 = *(*(v2 + qword_1EDCD6AC8) + 16);
    MEMORY[0x1EEE9AC00](v17);
    *(&v49 - 2) = a1;
    os_unfair_lock_lock(v21 + 10);
    sub_1D8EEFD2C(&v21[4], &v54);
    os_unfair_lock_unlock(v21 + 10);
    v22 = v54;
    if (qword_1EDCD5E68 != -1)
    {
      swift_once();
    }

    v23 = sub_1D917744C();
    __swift_project_value_buffer(v23, qword_1EDCD5E70);
    sub_1D8D65C38(a1, v5, type metadata accessor for ShazamSignatureRequest);
    v24 = v22;
    v25 = sub_1D917741C();
    v26 = sub_1D9178CEC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v54 = v28;
      *v27 = 136315394;
      if (v22)
      {

        v29 = 0xE300000000000000;
        v30 = 7629160;
      }

      else
      {
        v29 = 0xE400000000000000;
        v30 = 1936943469;
      }

      v43 = sub_1D8CFA924(v30, v29, &v54);

      *(v27 + 4) = v43;
      *(v27 + 12) = 2080;
      v44 = &v5[*(v51 + 24)];
      v45 = *v44;
      v46 = v44[1];

      sub_1D8D67208(v5, type metadata accessor for ShazamSignatureRequest);
      v47 = sub_1D8CFA924(v45, v46, &v54);

      *(v27 + 14) = v47;
      _os_log_impl(&dword_1D8CEC000, v25, v26, "Cache %s for asset at %s", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v28, -1, -1);
      MEMORY[0x1DA72CB90](v27, -1, -1);

      goto LABEL_17;
    }

    v42 = v5;
LABEL_14:
    sub_1D8D67208(v42, type metadata accessor for ShazamSignatureRequest);
LABEL_17:
    (*(v52 + 8))(v13, v53);
    return v22;
  }

  v18 = sub_1D9176C8C();
  v20 = v19;

  v50 = v18;
  v22 = ShazamSignatureRequest.decode(_:)(v18, v20);
  if (qword_1EDCD5E68 != -1)
  {
    swift_once();
  }

  v31 = sub_1D917744C();
  __swift_project_value_buffer(v31, qword_1EDCD5E70);
  sub_1D8D65C38(a1, v9, type metadata accessor for ShazamSignatureRequest);
  v32 = sub_1D917741C();
  v33 = sub_1D9178CEC();
  if (!os_log_type_enabled(v32, v33))
  {
    sub_1D8D7567C(v50, v20);

    v42 = v9;
    goto LABEL_14;
  }

  v34 = swift_slowAlloc();
  v35 = v13;
  v36 = v20;
  v37 = swift_slowAlloc();
  v54 = v37;
  *v34 = 136315138;
  v38 = &v9[*(v51 + 24)];
  v39 = *v38;
  v40 = v38[1];

  sub_1D8D67208(v9, type metadata accessor for ShazamSignatureRequest);
  v41 = sub_1D8CFA924(v39, v40, &v54);

  *(v34 + 4) = v41;
  _os_log_impl(&dword_1D8CEC000, v32, v33, "Cache hit for asset at %s", v34, 0xCu);
  __swift_destroy_boxed_opaque_existential_1Tm(v37);
  MEMORY[0x1DA72CB90](v37, -1, -1);
  MEMORY[0x1DA72CB90](v34, -1, -1);
  sub_1D8D7567C(v50, v36);

  (*(v52 + 8))(v35, v53);
  return v22;
}

double sub_1D8EDE34C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v65 = type metadata accessor for TTMLRequest(0);
  MEMORY[0x1EEE9AC00](v65);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v60 - v10;
  v12 = sub_1D9176C2C();
  v67 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v64 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v60 - v15;
  sub_1D8E459A4(&v60 - v15);
  v17 = [objc_opt_self() defaultManager];
  v66 = v16;
  sub_1D9176BCC();
  v18 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v19 = [v17 contentsAtPath_];

  if (v19)
  {
    v21 = sub_1D9176C8C();
    v23 = v22;

    v63 = v21;
    TranscriptParser.parse(ttmlData:)(v21, v23, &v69);
    v36 = a2;
    if (qword_1EDCD5E68 != -1)
    {
      swift_once();
    }

    v37 = sub_1D917744C();
    __swift_project_value_buffer(v37, qword_1EDCD5E70);
    sub_1D8D65C38(a1, v11, type metadata accessor for TTMLRequest);
    v38 = sub_1D917741C();
    v39 = sub_1D9178CEC();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = v23;
      v42 = swift_slowAlloc();
      v68[0] = v42;
      *v40 = 136315138;
      v43 = &v11[*(v65 + 24)];
      v44 = v12;
      v45 = *v43;
      v46 = v43[1];

      sub_1D8D67208(v11, type metadata accessor for TTMLRequest);
      v47 = sub_1D8CFA924(v45, v46, v68);

      *(v40 + 4) = v47;
      _os_log_impl(&dword_1D8CEC000, v38, v39, "Cache hit for asset at %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x1DA72CB90](v42, -1, -1);
      MEMORY[0x1DA72CB90](v40, -1, -1);
      sub_1D8D7567C(v63, v41);

      (*(v67 + 8))(v66, v44);
    }

    else
    {
      sub_1D8D7567C(v63, v23);

      sub_1D8D67208(v11, type metadata accessor for TTMLRequest);
      (*(v67 + 8))(v66, v12);
    }

    v49 = v70[0];
    *v36 = v69;
    *(v36 + 16) = v49;
    *(v36 + 24) = *&v70[8];
    result = *&v70[24];
    *(v36 + 40) = *&v70[24];
  }

  else
  {
    v63 = v12;
    v64 = v7;
    v62 = a2;
    v24 = *(*(v3 + qword_1EDCD6AC8) + 16);
    MEMORY[0x1EEE9AC00](v20);
    *(&v60 - 2) = a1;
    os_unfair_lock_lock(v24 + 10);
    sub_1D8EEFD80(&v24[4], &v69);
    os_unfair_lock_unlock(v24 + 10);
    if (qword_1EDCD5E68 != -1)
    {
      swift_once();
    }

    v25 = sub_1D917744C();
    __swift_project_value_buffer(v25, qword_1EDCD5E70);
    v26 = v69;
    v27 = *v70;
    v28 = *&v70[16];
    v29 = *&v70[24];
    v30 = v64;
    sub_1D8D65C38(a1, v64, type metadata accessor for TTMLRequest);
    sub_1D8EDC4C0(v26, *(&v26 + 1), v27, *(&v27 + 1), v28, v29, *(&v29 + 1));
    v31 = sub_1D917741C();
    v32 = sub_1D9178CEC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v68[0] = v61;
      *v33 = 136315394;
      if (v29)
      {
        sub_1D8EDC46C(v26, *(&v26 + 1), v27, *(&v27 + 1), v28, v29, *(&v29 + 1));
        v34 = 0xE300000000000000;
        v35 = 7629160;
      }

      else
      {
        v34 = 0xE400000000000000;
        v35 = 1936943469;
      }

      v48 = v62;
      v51 = sub_1D8CFA924(v35, v34, v68);

      *(v33 + 4) = v51;
      *(v33 + 12) = 2080;
      v52 = v64;
      v53 = &v64[*(v65 + 24)];
      v54 = *v53;
      v55 = v53[1];

      sub_1D8D67208(v52, type metadata accessor for TTMLRequest);
      v56 = sub_1D8CFA924(v54, v55, v68);

      *(v33 + 14) = v56;
      _os_log_impl(&dword_1D8CEC000, v31, v32, "Cache %s for asset at %s", v33, 0x16u);
      v57 = v61;
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v57, -1, -1);
      MEMORY[0x1DA72CB90](v33, -1, -1);

      (*(v67 + 8))(v66, v63);
    }

    else
    {
      sub_1D8EDC46C(v26, *(&v26 + 1), v27, *(&v27 + 1), v28, v29, *(&v29 + 1));

      sub_1D8D67208(v30, type metadata accessor for TTMLRequest);
      (*(v67 + 8))(v66, v63);
      v48 = v62;
    }

    v58 = *&v70[32];
    v59 = *v70;
    *v48 = v69;
    *(v48 + 16) = v59;
    result = *&v70[16];
    *(v48 + 32) = *&v70[16];
    *(v48 + 48) = v58;
  }

  return result;
}

uint64_t sub_1D8EDEDC0(void *a1, uint64_t (*a2)(void), void (*a3)(uint64_t, double), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v56 = a5;
  v53 = a4;
  v57[1] = *MEMORY[0x1E69E9840];
  v51 = a2(0);
  MEMORY[0x1EEE9AC00](v51);
  v54 = &v49 - v8;
  v9 = sub_1D9176C2C();
  v10 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v49 - v14;
  v52 = a1;
  a3(v5 + qword_1EDCDE890, v13);
  v16 = objc_opt_self();
  v17 = [v16 defaultManager];
  sub_1D9176BCC();
  v18 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v19 = [v17 fileExistsAtPath_];

  if (!v19)
  {
    return (*(v10 + 8))(v15, v9);
  }

  v20 = [v16 defaultManager];
  v21 = sub_1D9176B1C();
  v57[0] = 0;
  v22 = [v20 removeItemAtURL:v21 error:v57];

  if (v22)
  {
    v23 = *(v10 + 8);
    v24 = v57[0];
    return v23(v15, v9);
  }

  else
  {
    v26 = v57[0];
    v27 = sub_1D9176A6C();

    v50 = v27;
    swift_willThrow();
    if (qword_1EDCD5E68 != -1)
    {
      swift_once();
    }

    v28 = sub_1D917744C();
    __swift_project_value_buffer(v28, qword_1EDCD5E70);
    v29 = v54;
    sub_1D8D65C38(v52, v54, v53);
    v30 = v55;
    (*(v10 + 16))(v55, v15, v9);
    v31 = sub_1D917741C();
    v32 = sub_1D9178CFC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v53 = v9;
      v34 = v33;
      v52 = swift_slowAlloc();
      v57[0] = v52;
      *v34 = 136315394;
      v35 = (v29 + *(v51 + 24));
      v36 = v29;
      v37 = v30;
      LODWORD(v51) = v32;
      v38 = *v35;
      v39 = v35[1];

      sub_1D8D67208(v36, v56);
      v40 = sub_1D8CFA924(v38, v39, v57);

      *(v34 + 4) = v40;
      *(v34 + 12) = 2080;
      sub_1D8CFBCD0(&qword_1ECAB2C88, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v41 = sub_1D9179A4C();
      v43 = v42;
      v44 = *(v10 + 8);
      v44(v37, v53);
      v45 = sub_1D8CFA924(v41, v43, v57);

      *(v34 + 14) = v45;
      _os_log_impl(&dword_1D8CEC000, v31, v51, "Error deleting file for key %s, url: %s", v34, 0x16u);
      v46 = v52;
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v46, -1, -1);
      v47 = v34;
      v9 = v53;
      MEMORY[0x1DA72CB90](v47, -1, -1);
    }

    else
    {

      v44 = *(v10 + 8);
      v44(v30, v9);
      sub_1D8D67208(v29, v56);
    }

    sub_1D8E66024();
    swift_allocError();
    *v48 = 1;
    swift_willThrow();

    return (v44)(v15, v9);
  }
}

uint64_t sub_1D8EDF30C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a2;
  v52 = a4;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v42);
  v7 = &v36 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D18, &qword_1D918D4C8);
  v8 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v10 = &v36 - v9;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D20, &qword_1D918D4D0);
  v47 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D28, &qword_1D918D4D8);
  v14 = *(v13 - 8);
  v48 = v13;
  v49 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v43 = &v36 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D30, &qword_1D918D4E0);
  v17 = *(v16 - 8);
  v50 = v16;
  v51 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v44 = &v36 - v18;
  v19 = type metadata accessor for ShazamSignatureRequest(0);
  v20 = v19 - 8;
  v37 = *(v19 - 8);
  v21 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v38 = v21;
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for ShazamSignatureRequest;
  sub_1D8D65C38(a1, v22, type metadata accessor for ShazamSignatureRequest);
  sub_1D8D088B4(&v22[*(v20 + 44)], v55, &qword_1ECAB4928, &qword_1D918B380);

  sub_1D8D67208(v22, type metadata accessor for ShazamSignatureRequest);
  v40 = a1;
  sub_1D8D088B4(a1, v7, &unk_1ECAB5910, &qword_1D9188C90);
  sub_1D9177A0C();
  sub_1D917653C();
  v23 = v41;
  sub_1D91779CC();
  (*(v8 + 8))(v10, v23);
  sub_1D8D65C38(a1, v22, type metadata accessor for ShazamSignatureRequest);
  v24 = *(v37 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v46;
  *(v25 + 24) = a3;
  sub_1D8D66338(v22, v25 + ((v24 + 32) & ~v24), type metadata accessor for ShazamSignatureRequest);
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB58F0, &unk_1D9190BD0);
  sub_1D8CF48EC(&qword_1ECAAFBC8, &qword_1ECAB4D20, &qword_1D918D4D0, MEMORY[0x1E695C0B8]);
  sub_1D8CF48EC(&qword_1ECAB03A0, &unk_1ECAB58F0, &unk_1D9190BD0, MEMORY[0x1E695BED8]);
  v26 = v43;
  v27 = v45;
  sub_1D9177DCC();

  (*(v47 + 8))(v12, v27);
  sub_1D8D088B4(v55, v53, &qword_1ECAB4928, &qword_1D918B380);
  v28 = swift_allocObject();
  v29 = v53[1];
  *(v28 + 16) = v53[0];
  *(v28 + 32) = v29;
  *(v28 + 48) = v54;
  sub_1D8CF48EC(&qword_1ECAB05F8, &qword_1ECAB4D28, &qword_1D918D4D8, MEMORY[0x1E695BE40]);
  v30 = v44;
  v31 = v48;
  sub_1D9177B7C();

  (*(v49 + 8))(v26, v31);
  sub_1D8D65C38(v40, v22, v39);
  v32 = swift_allocObject();
  sub_1D8D66338(v22, v32 + ((v24 + 16) & ~v24), type metadata accessor for ShazamSignatureRequest);
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1D8EEF5CC;
  *(v33 + 24) = v32;
  sub_1D8CF2154(0, &qword_1ECAAFE30, 0x1E697B7D0);
  sub_1D8CF48EC(&qword_1ECAB0918, &qword_1ECAB4D30, &qword_1D918D4E0, MEMORY[0x1E695BCE0]);
  v34 = v50;
  sub_1D9177C6C();

  (*(v51 + 8))(v30, v34);
  return sub_1D8D08A50(v55, &qword_1ECAB4928, &qword_1D918B380);
}

uint64_t sub_1D8EDFA80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a2;
  v52 = a4;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v42);
  v7 = &v36 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D18, &qword_1D918D4C8);
  v8 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v10 = &v36 - v9;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D20, &qword_1D918D4D0);
  v47 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D28, &qword_1D918D4D8);
  v14 = *(v13 - 8);
  v48 = v13;
  v49 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v43 = &v36 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D30, &qword_1D918D4E0);
  v17 = *(v16 - 8);
  v50 = v16;
  v51 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v44 = &v36 - v18;
  v19 = type metadata accessor for TTMLRequest(0);
  v20 = v19 - 8;
  v37 = *(v19 - 8);
  v21 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v38 = v21;
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for TTMLRequest;
  sub_1D8D65C38(a1, v22, type metadata accessor for TTMLRequest);
  sub_1D8D088B4(&v22[*(v20 + 44)], v55, &qword_1ECAB4928, &qword_1D918B380);

  sub_1D8D67208(v22, type metadata accessor for TTMLRequest);
  v40 = a1;
  sub_1D8D088B4(a1, v7, &unk_1ECAB5910, &qword_1D9188C90);
  sub_1D9177A0C();
  sub_1D917653C();
  v23 = v41;
  sub_1D91779CC();
  (*(v8 + 8))(v10, v23);
  sub_1D8D65C38(a1, v22, type metadata accessor for TTMLRequest);
  v24 = *(v37 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v46;
  *(v25 + 24) = a3;
  sub_1D8D66338(v22, v25 + ((v24 + 32) & ~v24), type metadata accessor for TTMLRequest);
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB58F0, &unk_1D9190BD0);
  sub_1D8CF48EC(&qword_1ECAAFBC8, &qword_1ECAB4D20, &qword_1D918D4D0, MEMORY[0x1E695C0B8]);
  sub_1D8CF48EC(&qword_1ECAB03A0, &unk_1ECAB58F0, &unk_1D9190BD0, MEMORY[0x1E695BED8]);
  v26 = v43;
  v27 = v45;
  sub_1D9177DCC();

  (*(v47 + 8))(v12, v27);
  sub_1D8D088B4(v55, v53, &qword_1ECAB4928, &qword_1D918B380);
  v28 = swift_allocObject();
  v29 = v53[1];
  *(v28 + 16) = v53[0];
  *(v28 + 32) = v29;
  *(v28 + 48) = v54;
  sub_1D8CF48EC(&qword_1ECAB05F8, &qword_1ECAB4D28, &qword_1D918D4D8, MEMORY[0x1E695BE40]);
  v30 = v44;
  v31 = v48;
  sub_1D9177B7C();

  (*(v49 + 8))(v26, v31);
  sub_1D8D65C38(v40, v22, v39);
  v32 = swift_allocObject();
  sub_1D8D66338(v22, v32 + ((v24 + 16) & ~v24), type metadata accessor for TTMLRequest);
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1D8EEFA24;
  *(v33 + 24) = v32;
  sub_1D8CF48EC(&qword_1ECAB0918, &qword_1ECAB4D30, &qword_1D918D4E0, MEMORY[0x1E695BCE0]);
  v34 = v50;
  sub_1D9177C6C();

  (*(v51 + 8))(v30, v34);
  return sub_1D8D08A50(v55, &qword_1ECAB4928, &qword_1D918B380);
}

uint64_t sub_1D8EE01DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73 = a3;
  v74 = a2;
  v82 = sub_1D9176C2C();
  v80 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v76 = v4;
  v77 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ShazamSignatureRequest(0);
  v71 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v72 = v6;
  v75 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ShazamSignatureBackgroundSessionDescriptor(0);
  v68 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v69 = v8;
  v70 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64F8, &qword_1D91927C0);
  v78 = *(v9 - 8);
  v79 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v91 = &v59 - v10;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6500, &qword_1D91927C8);
  v84 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v81 = &v59 - v11;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6508, &qword_1D91927D0);
  v85 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v83 = &v59 - v12;
  v13 = sub_1D917734C();
  v92 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v59 - v17;
  if (qword_1ECAB0FE0 != -1)
  {
    swift_once();
  }

  v19 = sub_1D917739C();
  __swift_project_value_buffer(v19, qword_1ECAB0FE8);
  sub_1D917737C();
  sub_1D917731C();
  v20 = sub_1D917737C();
  v21 = sub_1D9178F5C();
  if (sub_1D917918C())
  {
    v22 = v15;
    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v20, v21, v24, "backgroundStash", "Start background stash", v23, 2u);
    v25 = v23;
    v15 = v22;
    MEMORY[0x1DA72CB90](v25, -1, -1);
  }

  v26 = v92 + 16;
  v27 = *(v92 + 16);
  v27(v15, v18, v13);
  sub_1D91773FC();
  swift_allocObject();
  v67 = sub_1D91773EC();
  v28 = sub_1D917737C();
  v29 = sub_1D9178F6C();
  if (sub_1D917918C())
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v28, v29, v31, "Start loading from source", "", v30, 2u);
    MEMORY[0x1DA72CB90](v30, -1, -1);
  }

  v63 = a1;
  v32 = a1;
  v33 = v73;
  v93 = ShazamSignatureBackgroundSessionDescriptor.load(data:)(v32);
  v62 = v27;
  v27(v15, v18, v13);
  v34 = v92;
  v88 = v13;
  v89 = v18;
  v35 = *(v92 + 80);
  v36 = swift_allocObject();
  v37 = *(v34 + 32);
  v64 = v34 + 32;
  v65 = v37;
  v61 = v26;
  v37(v36 + ((v35 + 16) & ~v35), v15, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6510, &qword_1D91927D8);
  v38 = v15;
  v60 = v15;
  v66 = MEMORY[0x1E695BED8];
  sub_1D8CF48EC(&unk_1ECAB0338, &qword_1ECAB6510, &qword_1D91927D8, MEMORY[0x1E695BED8]);
  sub_1D9177B3C();

  v39 = v70;
  sub_1D8D65C38(v33, v70, type metadata accessor for ShazamSignatureBackgroundSessionDescriptor);
  v40 = v75;
  sub_1D8D65C38(v74, v75, type metadata accessor for ShazamSignatureRequest);
  v41 = v80;
  v42 = v77;
  v43 = v82;
  (*(v80 + 16))(v77, v63, v82);
  v62(v38, v89, v88);
  v44 = (*(v68 + 80) + 16) & ~*(v68 + 80);
  v45 = (v69 + *(v71 + 80) + v44) & ~*(v71 + 80);
  v46 = (v72 + *(v41 + 80) + v45) & ~*(v41 + 80);
  v47 = (v76 + v35 + v46) & ~v35;
  v48 = swift_allocObject();
  sub_1D8D66338(v39, v48 + v44, type metadata accessor for ShazamSignatureBackgroundSessionDescriptor);
  sub_1D8D66338(v40, v48 + v45, type metadata accessor for ShazamSignatureRequest);
  (*(v41 + 32))(v48 + v46, v42, v43);
  v49 = v88;
  v65(v48 + v47, v60, v88);
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5A20, &qword_1D9190B78);
  v50 = MEMORY[0x1E695BCC0];
  sub_1D8CF48EC(&qword_1ECAB0950, &qword_1ECAB64F8, &qword_1D91927C0, MEMORY[0x1E695BCC0]);
  sub_1D8CF48EC(&qword_1ECAB0330, &unk_1ECAB5A20, &qword_1D9190B78, v66);
  v51 = v81;
  v52 = v79;
  v53 = v91;
  sub_1D9177DDC();

  (*(v78 + 8))(v53, v52);
  sub_1D8CF48EC(&qword_1ECAB05B8, &qword_1ECAB6500, &qword_1D91927C8, MEMORY[0x1E695BE40]);

  v54 = v86;
  v55 = v83;
  sub_1D9177B3C();

  (*(v84 + 8))(v51, v54);
  sub_1D8CF48EC(&qword_1ECAB0920, &qword_1ECAB6508, &qword_1D91927D0, v50);
  v56 = v87;
  v57 = sub_1D9177B1C();

  (*(v85 + 8))(v55, v56);
  (*(v92 + 8))(v89, v49);
  return v57;
}

uint64_t sub_1D8EE0C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73 = a3;
  v74 = a2;
  v82 = sub_1D9176C2C();
  v80 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v76 = v4;
  v77 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTMLRequest(0);
  v71 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v72 = v6;
  v75 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TranscriptsBackgroundSessionDescriptor(0);
  v68 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v69 = v8;
  v70 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6558, &qword_1D9192820);
  v78 = *(v9 - 8);
  v79 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v91 = &v59 - v10;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6560, &qword_1D9192828);
  v84 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v81 = &v59 - v11;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6568, &qword_1D9192830);
  v85 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v83 = &v59 - v12;
  v13 = sub_1D917734C();
  v92 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v59 - v17;
  if (qword_1ECAB0FE0 != -1)
  {
    swift_once();
  }

  v19 = sub_1D917739C();
  __swift_project_value_buffer(v19, qword_1ECAB0FE8);
  sub_1D917737C();
  sub_1D917731C();
  v20 = sub_1D917737C();
  v21 = sub_1D9178F5C();
  if (sub_1D917918C())
  {
    v22 = v15;
    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v20, v21, v24, "backgroundStash", "Start background stash", v23, 2u);
    v25 = v23;
    v15 = v22;
    MEMORY[0x1DA72CB90](v25, -1, -1);
  }

  v26 = v92 + 16;
  v27 = *(v92 + 16);
  v27(v15, v18, v13);
  sub_1D91773FC();
  swift_allocObject();
  v67 = sub_1D91773EC();
  v28 = sub_1D917737C();
  v29 = sub_1D9178F6C();
  if (sub_1D917918C())
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v28, v29, v31, "Start loading from source", "", v30, 2u);
    MEMORY[0x1DA72CB90](v30, -1, -1);
  }

  v63 = a1;
  v32 = a1;
  v33 = v73;
  v93 = TranscriptsBackgroundSessionDescriptor.load(data:)(v32);
  v62 = v27;
  v27(v15, v18, v13);
  v34 = v92;
  v88 = v13;
  v89 = v18;
  v35 = *(v92 + 80);
  v36 = swift_allocObject();
  v37 = *(v34 + 32);
  v64 = v34 + 32;
  v65 = v37;
  v61 = v26;
  v37(v36 + ((v35 + 16) & ~v35), v15, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6570, &qword_1D9192838);
  v38 = v15;
  v60 = v15;
  v66 = MEMORY[0x1E695BED8];
  sub_1D8CF48EC(&qword_1ECAB0378, &qword_1ECAB6570, &qword_1D9192838, MEMORY[0x1E695BED8]);
  sub_1D9177B3C();

  v39 = v70;
  sub_1D8D65C38(v33, v70, type metadata accessor for TranscriptsBackgroundSessionDescriptor);
  v40 = v75;
  sub_1D8D65C38(v74, v75, type metadata accessor for TTMLRequest);
  v41 = v80;
  v42 = v77;
  v43 = v82;
  (*(v80 + 16))(v77, v63, v82);
  v62(v38, v89, v88);
  v44 = (*(v68 + 80) + 16) & ~*(v68 + 80);
  v45 = (v69 + *(v71 + 80) + v44) & ~*(v71 + 80);
  v46 = (v72 + *(v41 + 80) + v45) & ~*(v41 + 80);
  v47 = (v76 + v35 + v46) & ~v35;
  v48 = swift_allocObject();
  sub_1D8D66338(v39, v48 + v44, type metadata accessor for TranscriptsBackgroundSessionDescriptor);
  sub_1D8D66338(v40, v48 + v45, type metadata accessor for TTMLRequest);
  (*(v41 + 32))(v48 + v46, v42, v43);
  v49 = v88;
  v65(v48 + v47, v60, v88);
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5A20, &qword_1D9190B78);
  v50 = MEMORY[0x1E695BCC0];
  sub_1D8CF48EC(&qword_1ECAB0960, &qword_1ECAB6558, &qword_1D9192820, MEMORY[0x1E695BCC0]);
  sub_1D8CF48EC(&qword_1ECAB0330, &unk_1ECAB5A20, &qword_1D9190B78, v66);
  v51 = v81;
  v52 = v79;
  v53 = v91;
  sub_1D9177DDC();

  (*(v78 + 8))(v53, v52);
  sub_1D8CF48EC(&qword_1ECAB05C0, &qword_1ECAB6560, &qword_1D9192828, MEMORY[0x1E695BE40]);

  v54 = v86;
  v55 = v83;
  sub_1D9177B3C();

  (*(v84 + 8))(v51, v54);
  sub_1D8CF48EC(&qword_1ECAB0928, &qword_1ECAB6568, &qword_1D9192830, v50);
  v56 = v87;
  v57 = sub_1D9177B1C();

  (*(v85 + 8))(v55, v56);
  (*(v92 + 8))(v89, v49);
  return v57;
}

uint64_t sub_1D8EE175C(uint64_t a1, uint64_t a2)
{
  v55 = a1;
  v60 = sub_1D917653C();
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v56 = v4;
  v58 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64B8, &qword_1D9192760);
  v6 = v5 - 8;
  v48 = *(v5 - 8);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v47 = &v41 - v7;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5840, &unk_1D9190AB8);
  v8 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v41 - v12;
  v14 = type metadata accessor for ShazamSignatureRequest(0);
  v15 = v14 - 8;
  v43 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v44 = v16;
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5848, &qword_1D9190AC8);
  v51 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v61 = &v41 - v18;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5850, &unk_1D9190AD0);
  v50 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v46 = &v41 - v19;
  v20 = *(v6 + 56);
  v54 = v2;
  v21 = *(v2 + v20);
  v57 = a2;
  sub_1D8D65C38(a2, v17, type metadata accessor for ShazamSignatureRequest);
  sub_1D8D088B4(&v17[*(v15 + 44)], v63, &qword_1ECAB4928, &qword_1D918B380);
  v45 = v17;
  sub_1D8D67208(v17, type metadata accessor for ShazamSignatureRequest);
  sub_1D8D088B4(v63, v62, &qword_1ECAB4928, &qword_1D918B380);
  v64 = v21;
  sub_1D8D088B4(v62, v65, &qword_1ECAB4928, &qword_1D918B380);
  v65[5] = "AWAIT-SESSION";
  v65[6] = 13;
  v66 = 2;
  v69 = 0;

  sub_1D8D08A50(v62, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D08A50(v63, &qword_1ECAB4928, &qword_1D918B380);
  v67 = 0;
  v68 = 0xE000000000000000;
  v70 = 0;
  if (qword_1EDCD5B50 != -1)
  {
    swift_once();
  }

  v22 = qword_1EDCD5B58;
  v23 = sub_1D9178DBC();
  (*(*(v23 - 8) + 56))(v13, 1, 1, v23);
  v63[0] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5858, &qword_1D9190AE0);
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D8CF48EC(&qword_1ECAB2780, &qword_1ECAB5858, &qword_1D9190AE0, &protocol conformance descriptor for EmitLifecycle<A>);
  sub_1D8D02DF0();
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB0A90, &qword_1ECAB5840, &unk_1D9190AB8, MEMORY[0x1E695BCB8]);
  v24 = v42;
  sub_1D9177CEC();
  (*(v8 + 8))(v10, v24);
  sub_1D8D08A50(v13, &qword_1ECAB4D70, &unk_1D918BCE0);
  sub_1D8D08A50(&v64, &qword_1ECAB5858, &qword_1D9190AE0);
  v25 = v47;
  sub_1D8D088B4(v54, v47, &qword_1ECAB64B8, &qword_1D9192760);
  v26 = v59;
  v27 = v58;
  v28 = v60;
  (*(v59 + 16))(v58, v55, v60);
  v29 = v45;
  sub_1D8D65C38(v57, v45, type metadata accessor for ShazamSignatureRequest);
  v30 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v31 = (v49 + *(v26 + 80) + v30) & ~*(v26 + 80);
  v32 = (v56 + *(v43 + 80) + v31) & ~*(v43 + 80);
  v33 = swift_allocObject();
  sub_1D8D6734C(v25, v33 + v30, &qword_1ECAB64B8, &qword_1D9192760);
  (*(v26 + 32))(v33 + v31, v27, v28);
  sub_1D8D66338(v29, v33 + v32, type metadata accessor for ShazamSignatureRequest);
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5860, &qword_1D9190AE8);
  sub_1D8CF48EC(&qword_1ECAB04B0, &qword_1ECAB5848, &qword_1D9190AC8, MEMORY[0x1E695BE98]);
  v34 = MEMORY[0x1E695BE40];
  sub_1D8CF48EC(&qword_1ECAB0600, &qword_1ECAB5860, &qword_1D9190AE8, MEMORY[0x1E695BE40]);
  v35 = v46;
  v36 = v53;
  v37 = v61;
  sub_1D9177DCC();

  (*(v51 + 8))(v37, v36);
  sub_1D8CF48EC(&qword_1ECAB0540, &qword_1ECAB5850, &unk_1D9190AD0, v34);
  v38 = v52;
  v39 = sub_1D9177B1C();
  (*(v50 + 8))(v35, v38);
  return v39;
}

uint64_t sub_1D8EE20A8(uint64_t a1, uint64_t a2)
{
  v55 = a1;
  v60 = sub_1D917653C();
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v56 = v4;
  v58 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64C0, &qword_1D9192768);
  v6 = v5 - 8;
  v48 = *(v5 - 8);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v47 = &v41 - v7;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5840, &unk_1D9190AB8);
  v8 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v41 - v12;
  v14 = type metadata accessor for TTMLRequest(0);
  v15 = v14 - 8;
  v43 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v44 = v16;
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5848, &qword_1D9190AC8);
  v51 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v61 = &v41 - v18;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5850, &unk_1D9190AD0);
  v50 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v46 = &v41 - v19;
  v20 = *(v6 + 56);
  v54 = v2;
  v21 = *(v2 + v20);
  v57 = a2;
  sub_1D8D65C38(a2, v17, type metadata accessor for TTMLRequest);
  sub_1D8D088B4(&v17[*(v15 + 44)], v63, &qword_1ECAB4928, &qword_1D918B380);
  v45 = v17;
  sub_1D8D67208(v17, type metadata accessor for TTMLRequest);
  sub_1D8D088B4(v63, v62, &qword_1ECAB4928, &qword_1D918B380);
  v64 = v21;
  sub_1D8D088B4(v62, v65, &qword_1ECAB4928, &qword_1D918B380);
  v65[5] = "AWAIT-SESSION";
  v65[6] = 13;
  v66 = 2;
  v69 = 0;

  sub_1D8D08A50(v62, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D08A50(v63, &qword_1ECAB4928, &qword_1D918B380);
  v67 = 0;
  v68 = 0xE000000000000000;
  v70 = 0;
  if (qword_1EDCD5B50 != -1)
  {
    swift_once();
  }

  v22 = qword_1EDCD5B58;
  v23 = sub_1D9178DBC();
  (*(*(v23 - 8) + 56))(v13, 1, 1, v23);
  v63[0] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5858, &qword_1D9190AE0);
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D8CF48EC(&qword_1ECAB2780, &qword_1ECAB5858, &qword_1D9190AE0, &protocol conformance descriptor for EmitLifecycle<A>);
  sub_1D8D02DF0();
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB0A90, &qword_1ECAB5840, &unk_1D9190AB8, MEMORY[0x1E695BCB8]);
  v24 = v42;
  sub_1D9177CEC();
  (*(v8 + 8))(v10, v24);
  sub_1D8D08A50(v13, &qword_1ECAB4D70, &unk_1D918BCE0);
  sub_1D8D08A50(&v64, &qword_1ECAB5858, &qword_1D9190AE0);
  v25 = v47;
  sub_1D8D088B4(v54, v47, &qword_1ECAB64C0, &qword_1D9192768);
  v26 = v59;
  v27 = v58;
  v28 = v60;
  (*(v59 + 16))(v58, v55, v60);
  v29 = v45;
  sub_1D8D65C38(v57, v45, type metadata accessor for TTMLRequest);
  v30 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v31 = (v49 + *(v26 + 80) + v30) & ~*(v26 + 80);
  v32 = (v56 + *(v43 + 80) + v31) & ~*(v43 + 80);
  v33 = swift_allocObject();
  sub_1D8D6734C(v25, v33 + v30, &qword_1ECAB64C0, &qword_1D9192768);
  (*(v26 + 32))(v33 + v31, v27, v28);
  sub_1D8D66338(v29, v33 + v32, type metadata accessor for TTMLRequest);
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5860, &qword_1D9190AE8);
  sub_1D8CF48EC(&qword_1ECAB04B0, &qword_1ECAB5848, &qword_1D9190AC8, MEMORY[0x1E695BE98]);
  v34 = MEMORY[0x1E695BE40];
  sub_1D8CF48EC(&qword_1ECAB0600, &qword_1ECAB5860, &qword_1D9190AE8, MEMORY[0x1E695BE40]);
  v35 = v46;
  v36 = v53;
  v37 = v61;
  sub_1D9177DCC();

  (*(v51 + 8))(v37, v36);
  sub_1D8CF48EC(&qword_1ECAB0540, &qword_1ECAB5850, &unk_1D9190AD0, v34);
  v38 = v52;
  v39 = sub_1D9177B1C();
  (*(v50 + 8))(v35, v38);
  return v39;
}

uint64_t sub_1D8EE29F4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a4;
  v39 = a5;
  v8 = type metadata accessor for ShazamSignatureRequest(0);
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64B8, &qword_1D9192760);
  v12 = v11 - 8;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v33 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5898, &qword_1D9190BC0);
  v18 = *(v17 - 8);
  v37 = v17;
  v38 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v36 = &v33 - v19;
  v34 = *(a2 + *(v12 + 52));
  v40 = sub_1D8EE3324(a3, a1, &unk_1F546BB30, sub_1D8EEFDB4);
  sub_1D8D088B4(a2, v16, &qword_1ECAB64B8, &qword_1D9192760);
  sub_1D8D65C38(v35, v10, type metadata accessor for ShazamSignatureRequest);
  v20 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v21 = (v14 + *(v33 + 80) + v20) & ~*(v33 + 80);
  v22 = (v9 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  sub_1D8D6734C(v16, v23 + v20, &qword_1ECAB64B8, &qword_1D9192760);
  sub_1D8D66338(v10, v23 + v21, type metadata accessor for ShazamSignatureRequest);
  *(v23 + v22) = a1;
  v24 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB58A0, &qword_1D9190BC8);
  v25 = MEMORY[0x1E695BED8];
  sub_1D8CF48EC(&qword_1EDCD0B70, &qword_1ECAB58A0, &qword_1D9190BC8, MEMORY[0x1E695BED8]);
  v26 = v36;
  sub_1D9177B3C();

  v27 = swift_allocObject();
  v28 = v34;
  *(v27 + 16) = v34;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1D8EEE6E8;
  *(v29 + 24) = v27;
  v30 = v28;
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB58F0, &unk_1D9190BD0);
  sub_1D8CF48EC(&qword_1ECAB0958, &qword_1ECAB5898, &qword_1D9190BC0, MEMORY[0x1E695BCC0]);
  sub_1D8CF48EC(&qword_1ECAB03A0, &unk_1ECAB58F0, &unk_1D9190BD0, v25);
  v31 = v37;
  sub_1D9177DCC();

  return (*(v38 + 8))(v26, v31);
}

uint64_t sub_1D8EE2E8C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a4;
  v39 = a5;
  v8 = type metadata accessor for TTMLRequest(0);
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64C0, &qword_1D9192768);
  v12 = v11 - 8;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v33 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5898, &qword_1D9190BC0);
  v18 = *(v17 - 8);
  v37 = v17;
  v38 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v36 = &v33 - v19;
  v34 = *(a2 + *(v12 + 52));
  v40 = sub_1D8EE3324(a3, a1, &unk_1F546BE50, sub_1D8EEEF48);
  sub_1D8D088B4(a2, v16, &qword_1ECAB64C0, &qword_1D9192768);
  sub_1D8D65C38(v35, v10, type metadata accessor for TTMLRequest);
  v20 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v21 = (v14 + *(v33 + 80) + v20) & ~*(v33 + 80);
  v22 = (v9 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  sub_1D8D6734C(v16, v23 + v20, &qword_1ECAB64C0, &qword_1D9192768);
  sub_1D8D66338(v10, v23 + v21, type metadata accessor for TTMLRequest);
  *(v23 + v22) = a1;
  v24 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB58A0, &qword_1D9190BC8);
  v25 = MEMORY[0x1E695BED8];
  sub_1D8CF48EC(&qword_1EDCD0B70, &qword_1ECAB58A0, &qword_1D9190BC8, MEMORY[0x1E695BED8]);
  v26 = v36;
  sub_1D9177B3C();

  v27 = swift_allocObject();
  v28 = v34;
  *(v27 + 16) = v34;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1D8EEEE24;
  *(v29 + 24) = v27;
  v30 = v28;
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB58F0, &unk_1D9190BD0);
  sub_1D8CF48EC(&qword_1ECAB0958, &qword_1ECAB5898, &qword_1D9190BC0, MEMORY[0x1E695BCC0]);
  sub_1D8CF48EC(&qword_1ECAB03A0, &unk_1ECAB58F0, &unk_1D9190BD0, v25);
  v31 = v37;
  sub_1D9177DCC();

  return (*(v38 + 8))(v26, v31);
}

uint64_t sub_1D8EE3324(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v42 = a2;
  v43 = a4;
  v40 = a3;
  v33 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB58A8, &unk_1D9190D20);
  v39 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v33 - v8;
  v10 = sub_1D917653C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB58B8, &qword_1D9190D30);
  v34 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB58C0, &qword_1D9190D38);
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v18 = &v33 - v17;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB58C8, &qword_1D9190D40);
  v35 = *(v37 - 8);
  v19 = MEMORY[0x1EEE9AC00](v37);
  v21 = &v33 - v20;
  (*(v11 + 16))(v13, v33, v10, v19);
  sub_1D9177A0C();
  if (qword_1ECAB10C0 != -1)
  {
    swift_once();
  }

  v22 = qword_1ECAB10D0;
  v23 = sub_1D9178DBC();
  (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
  v44 = v22;
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D8CF48EC(&qword_1ECAB02D8, &qword_1ECAB58B8, &qword_1D9190D30, MEMORY[0x1E695C008]);
  sub_1D8D02DF0();
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB0A58, &unk_1ECAB58A8, &unk_1D9190D20, MEMORY[0x1E695BCB8]);
  sub_1D9177CEC();
  (*(v39 + 8))(v6, v4);
  sub_1D8D08A50(v9, &qword_1ECAB4D70, &unk_1D918BCE0);
  (*(v34 + 8))(v16, v14);
  v24 = swift_allocObject();
  v26 = v41;
  v25 = v42;
  *(v24 + 16) = v41;
  *(v24 + 24) = v25;
  sub_1D8CF48EC(&qword_1ECAB0480, &qword_1ECAB58C0, &qword_1D9190D38, MEMORY[0x1E695BE98]);
  v27 = v26;
  v28 = v25;
  v29 = v38;
  sub_1D9177B9C();

  (*(v36 + 8))(v18, v29);
  sub_1D8CF48EC(&qword_1ECAB0758, &qword_1ECAB58C8, &qword_1D9190D40, MEMORY[0x1E695BD60]);
  v30 = v37;
  v31 = sub_1D9177B1C();
  (*(v35 + 8))(v21, v30);
  return v31;
}

uint64_t sub_1D8EE390C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64B8, &qword_1D9192760);
  v7 = [a4 configuration];
  v8 = [v7 identifier];

  if (v8)
  {
    v9 = sub_1D917820C();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  sub_1D91769EC();
  swift_allocObject();
  v12 = sub_1D91769DC();
  sub_1D91769AC();
  swift_allocObject();

  v13 = sub_1D917699C();
  sub_1D91769BC();

  v15[0] = a1;
  v15[1] = v9;
  v15[2] = v11;
  v15[3] = v12;
  v15[4] = v13;
  sub_1D8E48784(a3, v15);
  return sub_1D8D08A50(v15, &qword_1ECAB4988, &qword_1D918B0D8);
}

uint64_t sub_1D8EE3A60(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64C0, &qword_1D9192768);
  v7 = [a4 configuration];
  v8 = [v7 identifier];

  if (v8)
  {
    v9 = sub_1D917820C();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  sub_1D91769EC();
  swift_allocObject();
  v12 = sub_1D91769DC();
  sub_1D91769AC();
  swift_allocObject();

  v13 = sub_1D917699C();
  sub_1D91769BC();

  v15[0] = a1;
  v15[1] = v9;
  v15[2] = v11;
  v15[3] = v12;
  v15[4] = v13;
  sub_1D8E48E70(a3, v15);
  return sub_1D8D08A50(v15, &qword_1ECAB4998, &qword_1D918B100);
}

uint64_t sub_1D8EE3BB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB58D0, &qword_1D9190D48);
  v31 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v29 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB58D8, &qword_1D9190D50);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - v10;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB58E0, &qword_1D9190D58);
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v13 = &v29 - v12;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64C8, &qword_1D9192770);
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v35 = &v29 - v14;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64D0, &qword_1D9192778);
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v34 = &v29 - v15;
  v40 = a1;
  sub_1D9177A0C();
  if (qword_1ECAB10C0 != -1)
  {
    swift_once();
  }

  v16 = qword_1ECAB10D0;
  v17 = sub_1D9178DBC();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  v40 = v16;
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D8CF48EC(&qword_1ECAB02B8, &qword_1ECAB58D8, &qword_1D9190D50, MEMORY[0x1E695C008]);
  sub_1D8D02DF0();
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB0A40, &qword_1ECAB58D0, &qword_1D9190D48, MEMORY[0x1E695BCB8]);
  sub_1D9177CEC();
  (*(v31 + 8))(v4, v2);
  sub_1D8D08A50(v7, &qword_1ECAB4D70, &unk_1D918BCE0);
  (*(v9 + 8))(v11, v8);
  v18 = swift_allocObject();
  v19 = v33;
  *(v18 + 16) = v33;
  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64D8, &qword_1D9192780);
  sub_1D8CF48EC(&qword_1ECAB0468, &unk_1ECAB58E0, &qword_1D9190D58, MEMORY[0x1E695BE98]);
  v21 = v35;
  v22 = v32;
  sub_1D9177B2C();

  v23 = (*(v30 + 8))(v13, v22);
  MEMORY[0x1EEE9AC00](v23);
  *(&v29 - 6) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64E0, &qword_1D91927A8);
  *(&v29 - 5) = sub_1D8EEE740();
  *(&v29 - 4) = &protocol witness table for ShazamSignatureRequest;
  *(&v29 - 3) = &protocol witness table for ShazamSignatureRequest;
  *(&v29 - 2) = sub_1D8CFBCD0(&qword_1ECAB1C90, type metadata accessor for ShazamSignatureRequest, &protocol conformance descriptor for ShazamSignatureRequest);
  *(&v29 - 1) = sub_1D8CFBCD0(&qword_1ECAB1CA0, type metadata accessor for ShazamSignatureRequest, &protocol conformance descriptor for ShazamSignatureRequest);
  swift_getKeyPath();
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB58F0, &unk_1D9190BD0);
  sub_1D8CF48EC(&qword_1ECAB0B10, &qword_1ECAB64C8, &qword_1D9192770, MEMORY[0x1E695BC80]);
  sub_1D8CF48EC(&qword_1ECAB03A0, &unk_1ECAB58F0, &unk_1D9190BD0, MEMORY[0x1E695BED8]);
  v24 = v34;
  v25 = v39;
  sub_1D9177DCC();

  (*(v37 + 8))(v21, v25);
  sub_1D8CF48EC(&qword_1ECAB0608, &qword_1ECAB64D0, &qword_1D9192778, MEMORY[0x1E695BE40]);
  v26 = v38;
  v27 = sub_1D9177B1C();
  (*(v36 + 8))(v24, v26);
  return v27;
}

uint64_t sub_1D8EE4370(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB58D0, &qword_1D9190D48);
  v31 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v29 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB58D8, &qword_1D9190D50);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - v10;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB58E0, &qword_1D9190D58);
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v13 = &v29 - v12;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6528, &qword_1D91927F0);
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v35 = &v29 - v14;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6530, &qword_1D91927F8);
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v34 = &v29 - v15;
  v40 = a1;
  sub_1D9177A0C();
  if (qword_1ECAB10C0 != -1)
  {
    swift_once();
  }

  v16 = qword_1ECAB10D0;
  v17 = sub_1D9178DBC();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  v40 = v16;
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D8CF48EC(&qword_1ECAB02B8, &qword_1ECAB58D8, &qword_1D9190D50, MEMORY[0x1E695C008]);
  sub_1D8D02DF0();
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB0A40, &qword_1ECAB58D0, &qword_1D9190D48, MEMORY[0x1E695BCB8]);
  sub_1D9177CEC();
  (*(v31 + 8))(v4, v2);
  sub_1D8D08A50(v7, &qword_1ECAB4D70, &unk_1D918BCE0);
  (*(v9 + 8))(v11, v8);
  v18 = swift_allocObject();
  v19 = v33;
  *(v18 + 16) = v33;
  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6538, &qword_1D9192800);
  sub_1D8CF48EC(&qword_1ECAB0468, &unk_1ECAB58E0, &qword_1D9190D58, MEMORY[0x1E695BE98]);
  v21 = v35;
  v22 = v32;
  sub_1D9177B2C();

  v23 = (*(v30 + 8))(v13, v22);
  MEMORY[0x1EEE9AC00](v23);
  *(&v29 - 6) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6540, &qword_1D9192808);
  *(&v29 - 5) = sub_1D8EEEE7C();
  *(&v29 - 4) = &protocol witness table for TTMLRequest;
  *(&v29 - 3) = &protocol witness table for TTMLRequest;
  *(&v29 - 2) = sub_1D8CFBCD0(&qword_1ECAB2A78, type metadata accessor for TTMLRequest, &protocol conformance descriptor for TTMLRequest);
  *(&v29 - 1) = sub_1D8CFBCD0(&qword_1ECAB2A88, type metadata accessor for TTMLRequest, &protocol conformance descriptor for TTMLRequest);
  swift_getKeyPath();
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB58F0, &unk_1D9190BD0);
  sub_1D8CF48EC(&qword_1ECAB0B18, &qword_1ECAB6528, &qword_1D91927F0, MEMORY[0x1E695BC80]);
  sub_1D8CF48EC(&qword_1ECAB03A0, &unk_1ECAB58F0, &unk_1D9190BD0, MEMORY[0x1E695BED8]);
  v24 = v34;
  v25 = v39;
  sub_1D9177DCC();

  (*(v37 + 8))(v21, v25);
  sub_1D8CF48EC(&qword_1ECAB0610, &qword_1ECAB6530, &qword_1D91927F8, MEMORY[0x1E695BE40]);
  v26 = v38;
  v27 = sub_1D9177B1C();
  (*(v36 + 8))(v24, v26);
  return v27;
}

uint64_t sub_1D8EE4B2C@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  return result;
}

uint64_t sub_1D8EE4B60(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v52 = a5;
  v62 = a4;
  v53 = a3;
  v60 = sub_1D9176C2C();
  v7 = *(v60 - 8);
  v58 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v56 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D917734C();
  v10 = *(v9 - 8);
  v73 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5868, &qword_1D9190B80);
  v61 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v54 = &v49 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5870, &qword_1D9190B88);
  v15 = *(v14 - 8);
  v65 = v14;
  v66 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v55 = &v49 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5878, &qword_1D9190B90);
  v18 = *(v17 - 8);
  v67 = v17;
  v68 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v57 = &v49 - v19;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5880, &qword_1D9190B98);
  v72 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v63 = &v49 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5888, &unk_1D9190BA0);
  v22 = *(v21 - 8);
  v70 = v21;
  v71 = v22;
  MEMORY[0x1EEE9AC00](v21);
  v64 = &v49 - v23;
  v75 = a1;
  v24 = sub_1D8CFBCD0(&qword_1ECAB1198, type metadata accessor for ShazamSignatureBackgroundSessionDescriptor, &protocol conformance descriptor for ShazamSignatureBackgroundSessionDescriptor);
  v25 = *(v24 + 64);
  v26 = type metadata accessor for ShazamSignatureBackgroundSessionDescriptor(0);
  v74 = v25(&v75, v53, v26, v24);
  v53 = *(v10 + 16);
  v49 = v12;
  v50 = v9;
  v53(v12, a5, v9);
  v27 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v28 = swift_allocObject();
  v51 = *(v10 + 32);
  v51(v28 + v27, v12, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5048, &unk_1D918E1E0);
  sub_1D8CF48EC(&qword_1EDCD0B60, &qword_1ECAB5048, &unk_1D918E1E0, MEMORY[0x1E695BED8]);
  v29 = v54;
  sub_1D9177B3C();

  v30 = v56;
  v31 = v60;
  (*(v7 + 16))(v56, v62, v60);
  v32 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v33 = swift_allocObject();
  (*(v7 + 32))(v33 + v32, v30, v31);
  v34 = MEMORY[0x1E695BCC0];
  sub_1D8CF48EC(&qword_1ECAB0948, &qword_1ECAB5868, &qword_1D9190B80, MEMORY[0x1E695BCC0]);
  v35 = v55;
  v36 = v59;
  sub_1D9177C6C();

  (*(v61 + 8))(v29, v36);
  v37 = v49;
  v38 = v50;
  v53(v49, v52, v50);
  v39 = swift_allocObject();
  v51(v39 + v27, v37, v38);
  sub_1D8CF48EC(&qword_1ECAB0670, &qword_1ECAB5870, &qword_1D9190B88, MEMORY[0x1E695BE28]);
  v40 = v65;
  v41 = v57;
  sub_1D9177B3C();

  (*(v66 + 8))(v35, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5890, &unk_1D9190BB0);
  sub_1D8CF48EC(&qword_1ECAB0930, &qword_1ECAB5878, &qword_1D9190B90, v34);
  sub_1D8CF48EC(&unk_1ECAB02A8, &qword_1ECAB5890, &unk_1D9190BB0, MEMORY[0x1E695C008]);
  v42 = v63;
  v43 = v67;
  sub_1D9177BDC();
  (*(v68 + 8))(v41, v43);
  sub_1D8CF48EC(&qword_1ECAB06F0, &qword_1ECAB5880, &qword_1D9190B98, MEMORY[0x1E695BDA0]);
  v44 = v64;
  v45 = v69;
  sub_1D9177D8C();
  (*(v72 + 8))(v42, v45);
  sub_1D8CF48EC(&qword_1ECAB0910, &qword_1ECAB5888, &unk_1D9190BA0, MEMORY[0x1E695BCF8]);
  v46 = v70;
  v47 = sub_1D9177B1C();
  (*(v71 + 8))(v44, v46);
  return v47;
}

uint64_t sub_1D8EE54B8(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v53 = a5;
  v63 = a4;
  v54 = a3;
  v61 = sub_1D9176C2C();
  v7 = *(v61 - 8);
  v59 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v57 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D917734C();
  v10 = *(v9 - 8);
  v74 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5868, &qword_1D9190B80);
  v62 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v55 = &v50 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5870, &qword_1D9190B88);
  v15 = *(v14 - 8);
  v66 = v14;
  v67 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v56 = &v50 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5878, &qword_1D9190B90);
  v18 = *(v17 - 8);
  v68 = v17;
  v69 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v58 = &v50 - v19;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5880, &qword_1D9190B98);
  v73 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v64 = &v50 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5888, &unk_1D9190BA0);
  v22 = *(v21 - 8);
  v71 = v21;
  v72 = v22;
  MEMORY[0x1EEE9AC00](v21);
  v65 = &v50 - v23;
  v24 = *(a1 + 16);
  v76[0] = *a1;
  v76[1] = v24;
  v76[2] = *(a1 + 32);
  v77 = *(a1 + 48);
  v25 = sub_1D8CFBCD0(&qword_1ECAB1250, type metadata accessor for TranscriptsBackgroundSessionDescriptor, &protocol conformance descriptor for TranscriptsBackgroundSessionDescriptor);
  v26 = *(v25 + 64);
  v27 = type metadata accessor for TranscriptsBackgroundSessionDescriptor(0);
  v75 = v26(v76, v54, v27, v25);
  v54 = *(v10 + 16);
  v50 = v12;
  v51 = v9;
  v54(v12, a5, v9);
  v28 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v29 = swift_allocObject();
  v52 = *(v10 + 32);
  v52(v29 + v28, v12, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5048, &unk_1D918E1E0);
  sub_1D8CF48EC(&qword_1EDCD0B60, &qword_1ECAB5048, &unk_1D918E1E0, MEMORY[0x1E695BED8]);
  v30 = v55;
  sub_1D9177B3C();

  v31 = v57;
  v32 = v61;
  (*(v7 + 16))(v57, v63, v61);
  v33 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v34 = swift_allocObject();
  (*(v7 + 32))(v34 + v33, v31, v32);
  v35 = MEMORY[0x1E695BCC0];
  sub_1D8CF48EC(&qword_1ECAB0948, &qword_1ECAB5868, &qword_1D9190B80, MEMORY[0x1E695BCC0]);
  v36 = v56;
  v37 = v60;
  sub_1D9177C6C();

  (*(v62 + 8))(v30, v37);
  v38 = v50;
  v39 = v51;
  v54(v50, v53, v51);
  v40 = swift_allocObject();
  v52(v40 + v28, v38, v39);
  sub_1D8CF48EC(&qword_1ECAB0670, &qword_1ECAB5870, &qword_1D9190B88, MEMORY[0x1E695BE28]);
  v41 = v66;
  v42 = v58;
  sub_1D9177B3C();

  (*(v67 + 8))(v36, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5890, &unk_1D9190BB0);
  sub_1D8CF48EC(&qword_1ECAB0930, &qword_1ECAB5878, &qword_1D9190B90, v35);
  sub_1D8CF48EC(&unk_1ECAB02A8, &qword_1ECAB5890, &unk_1D9190BB0, MEMORY[0x1E695C008]);
  v43 = v64;
  v44 = v68;
  sub_1D9177BDC();
  (*(v69 + 8))(v42, v44);
  sub_1D8CF48EC(&qword_1ECAB06F0, &qword_1ECAB5880, &qword_1D9190B98, MEMORY[0x1E695BDA0]);
  v45 = v65;
  v46 = v70;
  sub_1D9177D8C();
  (*(v73 + 8))(v43, v46);
  sub_1D8CF48EC(&qword_1ECAB0910, &qword_1ECAB5888, &unk_1D9190BA0, MEMORY[0x1E695BCF8]);
  v47 = v71;
  v48 = sub_1D9177B1C();
  (*(v72 + 8))(v45, v47);
  return v48;
}

uint64_t sub_1D8EE5E54(uint64_t a1, void *a2)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x98);
  swift_beginAccess();
  v5 = *(a2 + v4);
  if (*(v5 + 16) && (v6 = sub_1D8D490F4(a1), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 16 * v6);
  }

  else
  {
    v8 = 0;
  }

  swift_endAccess();
  return v8;
}

id sub_1D8EE5F10(uint64_t a1, void *a2, void *a3)
{
  v53 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5908, &unk_1D9190D80);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v44 - v6;
  v8 = sub_1D917734C();
  v52 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D917653C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *((*MEMORY[0x1E69E7D40] & *a2) + 0xA0);
  swift_beginAccess();
  v16 = *(a2 + v15);
  if (*(v16 + 16) && (v17 = sub_1D8F069D8(a1), (v18 & 1) != 0))
  {
    v19 = *(*(v16 + 56) + 8 * v17);
    swift_endAccess();
  }

  else
  {
    v50 = v8;
    swift_endAccess();
    if (qword_1ECAB0FE0 != -1)
    {
      swift_once();
    }

    v51 = v7;
    v20 = sub_1D917739C();
    __swift_project_value_buffer(v20, qword_1ECAB0FE8);
    v48 = *(v12 + 16);
    v49 = v12 + 16;
    v48(v14, a1, v11);
    v21 = v10;
    sub_1D917733C();
    v22 = sub_1D917737C();
    v23 = sub_1D9178F6C();
    if (sub_1D917918C())
    {
      v24 = swift_slowAlloc();
      v46 = v23;
      v25 = v24;
      v26 = swift_slowAlloc();
      v45 = v21;
      v27 = v26;
      v55[0] = v26;
      *v25 = 136315138;
      v28 = sub_1D91764AC();
      v47 = a1;
      v30 = v29;
      v31 = v14;
      v32 = v12;
      (*(v12 + 8))(v31, v11);
      v33 = sub_1D8CFA924(v28, v30, v55);
      a1 = v47;

      *(v25 + 4) = v33;
      v34 = v45;
      v35 = sub_1D917732C();
      _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v22, v46, v35, "Start Asset Download", "%s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x1DA72CB90](v27, -1, -1);
      MEMORY[0x1DA72CB90](v25, -1, -1);

      (*(v52 + 8))(v34, v50);
    }

    else
    {

      (*(v52 + 8))(v21, v50);
      (*(v12 + 8))(v14, v11);
      v32 = v12;
    }

    v36 = sub_1D91764BC();
    v37 = [v53 downloadTaskWithRequest_];

    v38 = v37;
    v39 = [v38 taskIdentifier];
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = *(a2 + v15);
    *(a2 + v15) = 0x8000000000000000;
    sub_1D8F4F79C(v39, a1, isUniquelyReferenced_nonNull_native);
    *(a2 + v15) = v54;
    swift_endAccess();
    v41 = [v38 taskIdentifier];
    v42 = v51;
    v48(v51, a1, v11);
    (*(v32 + 56))(v42, 0, 1, v11);
    swift_beginAccess();
    sub_1D8F7CC9C(v42, v41);
    swift_endAccess();
    [v38 resume];
    v19 = [v38 taskIdentifier];
  }

  return v19;
}

uint64_t sub_1D8EE6468(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_1D9177E0C();
  v19 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D9177E9C();
  v9 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = qword_1EDCD5B38;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = sub_1D8D49C40;
  *(v14 + 32) = v12;
  aBlock[4] = sub_1D8EEFE44;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_334;
  v15 = _Block_copy(aBlock);
  sub_1D9177E4C();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBCD0(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v11, v8, v15);
  _Block_release(v15);
  (*(v19 + 8))(v8, v6);
  (*(v9 + 8))(v11, v18);
}

uint64_t sub_1D8EE67A4(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_1D9177E0C();
  v19 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D9177E9C();
  v9 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = qword_1EDCD5B38;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = sub_1D8D9F2C8;
  *(v14 + 32) = v12;
  aBlock[4] = sub_1D8EEFE44;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_99_0;
  v15 = _Block_copy(aBlock);
  sub_1D9177E4C();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBCD0(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v11, v8, v15);
  _Block_release(v15);
  (*(v19 + 8))(v8, v6);
  (*(v9 + 8))(v11, v18);
}

uint64_t sub_1D8EE6AE0(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_1D9177E0C();
  v19 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D9177E9C();
  v9 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = qword_1EDCD5B38;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = sub_1D8D49C40;
  *(v14 + 32) = v12;
  aBlock[4] = sub_1D8EEEAFC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_160;
  v15 = _Block_copy(aBlock);
  sub_1D9177E4C();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBCD0(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v11, v8, v15);
  _Block_release(v15);
  (*(v19 + 8))(v8, v6);
  (*(v9 + 8))(v11, v18);
}

void sub_1D8EE6E1C(char a1, void (*a2)(uint64_t, void))
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (qword_1ECAB1378 != -1)
      {
        swift_once();
      }

      v3 = &qword_1ECAB1380;
    }

    else
    {
      if (qword_1ECAB34B0 != -1)
      {
        swift_once();
      }

      v3 = &qword_1ECAB5B20;
    }
  }

  else
  {
    if (qword_1EDCD6008 != -1)
    {
      swift_once();
    }

    v3 = qword_1EDCD6010;
  }

  v4 = *v3;
  v5 = *v3;
  a2(v4, 0);
}

uint64_t sub_1D8EE6F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49C0, &qword_1D918B140);
  MEMORY[0x1EEE9AC00](v84);
  v83 = &v65 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v82 = &v65 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB65C8, &qword_1D9192890);
  v67 = *(v9 - 8);
  v68 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v65 - v10;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5B28, &qword_1D9191150);
  v71 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v69 = &v65 - v12;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5B30, &qword_1D9191158);
  v72 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v70 = &v65 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5B38, &qword_1D9191160);
  v76 = *(v14 - 8);
  v77 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v75 = &v65 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5B40, &unk_1D9191168);
  v79 = *(v16 - 8);
  v80 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v78 = &v65 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB65D0, &qword_1D9192898);
  v87 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v86 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v88 = &v65 - v21;
  v22 = sub_1D9176EAC();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8D41388(a1, v91);
  sub_1D8D088B4(&v91[28], &v92, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D58578(v91);
  v85 = a3;
  v81 = v18;
  if (v93)
  {
    sub_1D8D6BCE0(&v92, v94);
  }

  else
  {
    v65 = a2;
    v66 = a1;
    if (qword_1EDCD5E68 != -1)
    {
      swift_once();
    }

    v26 = sub_1D917744C();
    v27 = __swift_project_value_buffer(v26, qword_1EDCD5E70);
    v28 = type metadata accessor for LoggerTrace(0);
    v94[3] = v28;
    v94[4] = &protocol witness table for LoggerTrace;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v94);
    (*(*(v26 - 8) + 16))(boxed_opaque_existential_0 + *(v28 + 20), v27, v26);
    LOBYTE(v26) = sub_1D9178CDC();
    sub_1D9176E9C();
    v30 = sub_1D9176E5C();
    v32 = v31;
    (*(v23 + 8))(v25, v22);
    *boxed_opaque_existential_0 = v30;
    boxed_opaque_existential_0[1] = v32;
    *(boxed_opaque_existential_0 + *(v28 + 24)) = v26;
    a2 = v65;
    a1 = v66;
    if (v93)
    {
      sub_1D8D08A50(&v92, &qword_1ECAB4928, &qword_1D918B380);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5B48, &qword_1D9191178);
  v33 = swift_allocObject();
  *(v33 + 24) = 0;
  *(v33 + 32) = 0;
  *(v33 + 16) = 0;
  *(v33 + 40) = 0;
  sub_1D8D41388(a1, v91);
  sub_1D9177A0C();
  v34 = sub_1D9176C2C();
  v35 = v68;
  v36 = v69;
  sub_1D91779EC();
  (*(v67 + 8))(v11, v35);
  v91[0] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49B8, &unk_1D9191140);
  v37 = a1;
  sub_1D8CF48EC(&qword_1EDCD0688, &qword_1ECAB5B28, &qword_1D9191150, MEMORY[0x1E695C0C8]);
  sub_1D8CF48EC(&unk_1EDCD0AA0, &qword_1ECAB49B8, &unk_1D9191140, MEMORY[0x1E695C038]);
  v38 = v70;
  v39 = v73;
  sub_1D9177B5C();
  (*(v71 + 8))(v36, v39);
  sub_1D8CF48EC(&unk_1EDCD0EC8, &qword_1ECAB5B30, &qword_1D9191158, MEMORY[0x1E695BC68]);
  v40 = v74;
  v41 = v75;
  sub_1D9177C5C();
  (*(v72 + 8))(v38, v40);
  sub_1D8D41388(a1, v91);
  sub_1D8CFD9D8(v94, &v92);
  v42 = swift_allocObject();
  memcpy((v42 + 16), v91, 0x108uLL);
  *(v42 + 280) = v33;
  *(v42 + 288) = "ForegroundNetworkFetch";
  *(v42 + 296) = 22;
  *(v42 + 304) = 2;
  sub_1D8D6BCE0(&v92, v42 + 312);
  v43 = swift_allocObject();
  *(v43 + 16) = sub_1D8EEFAC0;
  *(v43 + 24) = v42;
  v74 = v33;

  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECAB5B50, &qword_1D9191180);
  sub_1D8CF48EC(&qword_1EDCD0C50, &qword_1ECAB5B38, &qword_1D9191160, MEMORY[0x1E695BE10]);
  sub_1D8CF48EC(&qword_1ECAB27F8, qword_1ECAB5B50, &qword_1D9191180, &protocol conformance descriptor for EmitLifecycle<A>);
  v44 = v77;
  v45 = v78;
  sub_1D9177CBC();

  (*(v76 + 8))(v41, v44);
  sub_1D8CFD9D8(v94, &v92);
  sub_1D8D41388(v37, v91);
  v46 = swift_allocObject();
  sub_1D8D6BCE0(&v92, v46 + 16);
  memcpy((v46 + 56), v91, 0x108uLL);
  type metadata accessor for ArtworkContent(0);
  sub_1D8CF48EC(&qword_1ECAB0628, &qword_1ECAB5B40, &unk_1D9191168, MEMORY[0x1E695BE40]);
  v47 = v80;
  sub_1D9177C6C();

  (*(v79 + 8))(v45, v47);
  sub_1D8CFD9D8(v94, v91);
  v48 = v82;
  v49.n128_f64[0] = ArtworkRequest.remoteUrl.getter();
  v50 = *(v34 - 8);
  if ((*(v50 + 48))(v48, 1, v34, v49) == 1)
  {
    sub_1D8D08A50(v48, &unk_1ECAB5910, &qword_1D9188C90);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v51 = sub_1D9176BCC();
    v52 = v53;
    (*(v50 + 8))(v48, v34);
  }

  v54 = v83;
  v55 = v81;
  v56 = v86;
  v57 = *(v87 + 16);
  v57(v86, v88, v81);
  sub_1D8D088B4(v91, &v92, &qword_1ECAB4928, &qword_1D918B380);
  v57(v54, v56, v55);
  v58 = v84;
  sub_1D8D088B4(&v92, v54 + *(v84 + 36), &qword_1ECAB4928, &qword_1D918B380);
  v59 = v54 + v58[10];
  *v59 = "ForegroundDownload";
  *(v59 + 8) = 18;
  *(v59 + 16) = 2;
  *(v54 + v58[12]) = 1;
  if (v52)
  {
    v89 = v51;
    v90 = v52;

    MEMORY[0x1DA7298F0](8250, 0xE200000000000000);

    v60 = v89;
    v61 = v90;
  }

  else
  {

    v60 = 0;
    v61 = 0xE000000000000000;
  }

  sub_1D8D08A50(&v92, &qword_1ECAB4928, &qword_1D918B380);
  v62 = *(v87 + 8);
  v62(v86, v55);
  sub_1D8D08A50(v91, &qword_1ECAB4928, &qword_1D918B380);
  v62(v88, v55);
  v63 = (v54 + v58[11]);
  *v63 = v60;
  v63[1] = v61;
  *(v54 + v58[13]) = 0;
  sub_1D8D6734C(v54, v85, &qword_1ECAB49C0, &qword_1D918B140);
  return __swift_destroy_boxed_opaque_existential_1Tm(v94);
}

uint64_t sub_1D8EE7BCC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t a1)@<X1>, uint64_t a3@<X8>)
{
  v94 = a3;
  v5 = sub_1D9176EAC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v73 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6468, &qword_1D9192720);
  MEMORY[0x1EEE9AC00](v93);
  v9 = &v71 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v91 = &v71 - v11;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6470, &qword_1D9192728);
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v13 = &v71 - v12;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5B28, &qword_1D9191150);
  v79 = *(v81 - 1);
  MEMORY[0x1EEE9AC00](v81);
  v77 = &v71 - v14;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5B30, &qword_1D9191158);
  v80 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v78 = &v71 - v15;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5B38, &qword_1D9191160);
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v83 = &v71 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5B40, &unk_1D9191168);
  v87 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v86 = &v71 - v18;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6478, &qword_1D9192730);
  v19 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v96 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v98 = &v71 - v22;
  v23 = type metadata accessor for ShazamSignatureRequest(0);
  v74 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v95 = v24;
  v25 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8D65C38(a1, v25, type metadata accessor for ShazamSignatureRequest);
  sub_1D8D088B4(&v25[*(v23 + 36)], &v102, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D67208(v25, type metadata accessor for ShazamSignatureRequest);
  v92 = v9;
  v97 = a1;
  v89 = v19;
  v88 = v17;
  if (v103)
  {
    sub_1D8D6BCE0(&v102, v104);
  }

  else
  {
    v71 = v5;
    v72 = a2;
    if (qword_1EDCD5E68 != -1)
    {
      swift_once();
    }

    v26 = sub_1D917744C();
    v27 = __swift_project_value_buffer(v26, qword_1EDCD5E70);
    v28 = type metadata accessor for LoggerTrace(0);
    v104[3] = v28;
    v104[4] = &protocol witness table for LoggerTrace;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v104);
    (*(*(v26 - 8) + 16))(boxed_opaque_existential_0 + *(v28 + 20), v27, v26);
    LOBYTE(v26) = sub_1D9178CDC();
    v30 = v73;
    sub_1D9176E9C();
    v31 = sub_1D9176E5C();
    v33 = v32;
    (*(v6 + 8))(v30, v71);
    *boxed_opaque_existential_0 = v31;
    boxed_opaque_existential_0[1] = v33;
    *(boxed_opaque_existential_0 + *(v28 + 24)) = v26;
    a1 = v97;
    a2 = v72;
    if (v103)
    {
      sub_1D8D08A50(&v102, &qword_1ECAB4928, &qword_1D918B380);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5B48, &qword_1D9191178);
  v34 = swift_allocObject();
  *(v34 + 24) = 0;
  *(v34 + 32) = 0;
  *(v34 + 16) = 0;
  *(v34 + 40) = 0;
  v72 = type metadata accessor for ShazamSignatureRequest;
  sub_1D8D65C38(a1, v25, type metadata accessor for ShazamSignatureRequest);
  sub_1D9177A0C();
  v73 = sub_1D9176C2C();
  v35 = v77;
  v36 = v76;
  sub_1D91779EC();
  (*(v75 + 8))(v13, v36);
  *&v102 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49B8, &unk_1D9191140);
  sub_1D8CF48EC(&qword_1EDCD0688, &qword_1ECAB5B28, &qword_1D9191150, MEMORY[0x1E695C0C8]);
  sub_1D8CF48EC(&unk_1EDCD0AA0, &qword_1ECAB49B8, &unk_1D9191140, MEMORY[0x1E695C038]);
  v37 = v78;
  v38 = v81;
  sub_1D9177B5C();
  (*(v79 + 8))(v35, v38);
  sub_1D8CF48EC(&unk_1EDCD0EC8, &qword_1ECAB5B30, &qword_1D9191158, MEMORY[0x1E695BC68]);
  v39 = v83;
  v40 = v82;
  sub_1D9177C5C();
  (*(v80 + 8))(v37, v40);
  sub_1D8D65C38(v97, v25, type metadata accessor for ShazamSignatureRequest);
  sub_1D8CFD9D8(v104, &v102);
  v41 = *(v74 + 80);
  v42 = (v41 + 16) & ~v41;
  v43 = (v95 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  v81 = type metadata accessor for ShazamSignatureRequest;
  sub_1D8D66338(v25, v44 + v42, type metadata accessor for ShazamSignatureRequest);
  *(v44 + v43) = v34;
  v45 = v44 + ((v43 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v45 = "ForegroundNetworkFetch";
  *(v45 + 8) = 22;
  *(v45 + 16) = 2;
  sub_1D8D6BCE0(&v102, v44 + ((v43 + 39) & 0xFFFFFFFFFFFFFFF8));
  v46 = swift_allocObject();
  *(v46 + 16) = sub_1D8EEDBF4;
  *(v46 + 24) = v44;
  v82 = v34;

  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECAB5B50, &qword_1D9191180);
  sub_1D8CF48EC(&qword_1EDCD0C50, &qword_1ECAB5B38, &qword_1D9191160, MEMORY[0x1E695BE10]);
  sub_1D8CF48EC(&qword_1ECAB27F8, qword_1ECAB5B50, &qword_1D9191180, &protocol conformance descriptor for EmitLifecycle<A>);
  v47 = v86;
  v48 = v85;
  sub_1D9177CBC();

  (*(v84 + 8))(v39, v48);
  sub_1D8CFD9D8(v104, &v102);
  v49 = v97;
  sub_1D8D65C38(v97, v25, v72);
  v50 = swift_allocObject();
  sub_1D8D6BCE0(&v102, v50 + 16);
  sub_1D8D66338(v25, v50 + ((v41 + 56) & ~v41), v81);
  sub_1D8CF2154(0, &qword_1ECAAFE30, 0x1E697B7D0);
  sub_1D8CF48EC(&qword_1ECAB0628, &qword_1ECAB5B40, &unk_1D9191168, MEMORY[0x1E695BE40]);
  v51 = v88;
  sub_1D9177C6C();

  v52 = v47;
  v53 = v73;
  (*(v87 + 8))(v52, v51);
  sub_1D8CFD9D8(v104, &v102);
  v54 = v91;
  sub_1D8D088B4(v49, v91, &unk_1ECAB5910, &qword_1D9188C90);
  v55 = *(v53 - 1);
  if ((*(v55 + 48))(v54, 1, v53) == 1)
  {
    sub_1D8D08A50(v54, &unk_1ECAB5910, &qword_1D9188C90);
    v56 = 0;
    v57 = 0;
  }

  else
  {
    v56 = sub_1D9176BCC();
    v57 = v58;
    (*(v55 + 8))(v54, v53);
  }

  v59 = v92;
  v60 = v90;
  v61 = v89;
  v62 = *(v89 + 16);
  v63 = v96;
  v62(v96, v98, v90);
  sub_1D8D088B4(&v102, v101, &qword_1ECAB4928, &qword_1D918B380);
  v62(v59, v63, v60);
  v64 = v93;
  sub_1D8D088B4(v101, v59 + *(v93 + 36), &qword_1ECAB4928, &qword_1D918B380);
  v65 = v59 + v64[10];
  *v65 = "ForegroundDownload";
  *(v65 + 8) = 18;
  *(v65 + 16) = 2;
  *(v59 + v64[12]) = 1;
  if (v57)
  {
    v99 = v56;
    v100 = v57;

    MEMORY[0x1DA7298F0](8250, 0xE200000000000000);

    v66 = v99;
    v67 = v100;
  }

  else
  {

    v66 = 0;
    v67 = 0xE000000000000000;
  }

  sub_1D8D08A50(v101, &qword_1ECAB4928, &qword_1D918B380);
  v68 = *(v61 + 8);
  v68(v96, v60);
  sub_1D8D08A50(&v102, &qword_1ECAB4928, &qword_1D918B380);
  v68(v98, v60);
  v69 = (v59 + v64[11]);
  *v69 = v66;
  v69[1] = v67;
  *(v59 + v64[13]) = 0;
  sub_1D8D6734C(v59, v94, &qword_1ECAB6468, &qword_1D9192720);
  return __swift_destroy_boxed_opaque_existential_1Tm(v104);
}

uint64_t sub_1D8EE8AA8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t a1)@<X1>, uint64_t a3@<X8>)
{
  v94 = a3;
  v5 = sub_1D9176EAC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v73 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6490, &qword_1D9192740);
  MEMORY[0x1EEE9AC00](v93);
  v9 = &v71 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v91 = &v71 - v11;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6498, &qword_1D9192748);
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v13 = &v71 - v12;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5B28, &qword_1D9191150);
  v79 = *(v81 - 1);
  MEMORY[0x1EEE9AC00](v81);
  v77 = &v71 - v14;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5B30, &qword_1D9191158);
  v80 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v78 = &v71 - v15;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5B38, &qword_1D9191160);
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v83 = &v71 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5B40, &unk_1D9191168);
  v87 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v86 = &v71 - v18;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64A0, &qword_1D9192750);
  v19 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v96 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v98 = &v71 - v22;
  v23 = type metadata accessor for TTMLRequest(0);
  v74 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v95 = v24;
  v25 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8D65C38(a1, v25, type metadata accessor for TTMLRequest);
  sub_1D8D088B4(&v25[*(v23 + 36)], &v102, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D67208(v25, type metadata accessor for TTMLRequest);
  v92 = v9;
  v97 = a1;
  v89 = v19;
  v88 = v17;
  if (v103)
  {
    sub_1D8D6BCE0(&v102, v104);
  }

  else
  {
    v71 = v5;
    v72 = a2;
    if (qword_1EDCD5E68 != -1)
    {
      swift_once();
    }

    v26 = sub_1D917744C();
    v27 = __swift_project_value_buffer(v26, qword_1EDCD5E70);
    v28 = type metadata accessor for LoggerTrace(0);
    v104[3] = v28;
    v104[4] = &protocol witness table for LoggerTrace;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v104);
    (*(*(v26 - 8) + 16))(boxed_opaque_existential_0 + *(v28 + 20), v27, v26);
    LOBYTE(v26) = sub_1D9178CDC();
    v30 = v73;
    sub_1D9176E9C();
    v31 = sub_1D9176E5C();
    v33 = v32;
    (*(v6 + 8))(v30, v71);
    *boxed_opaque_existential_0 = v31;
    boxed_opaque_existential_0[1] = v33;
    *(boxed_opaque_existential_0 + *(v28 + 24)) = v26;
    a1 = v97;
    a2 = v72;
    if (v103)
    {
      sub_1D8D08A50(&v102, &qword_1ECAB4928, &qword_1D918B380);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5B48, &qword_1D9191178);
  v34 = swift_allocObject();
  *(v34 + 24) = 0;
  *(v34 + 32) = 0;
  *(v34 + 16) = 0;
  *(v34 + 40) = 0;
  v72 = type metadata accessor for TTMLRequest;
  sub_1D8D65C38(a1, v25, type metadata accessor for TTMLRequest);
  sub_1D9177A0C();
  v73 = sub_1D9176C2C();
  v35 = v77;
  v36 = v76;
  sub_1D91779EC();
  (*(v75 + 8))(v13, v36);
  *&v102 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49B8, &unk_1D9191140);
  sub_1D8CF48EC(&qword_1EDCD0688, &qword_1ECAB5B28, &qword_1D9191150, MEMORY[0x1E695C0C8]);
  sub_1D8CF48EC(&unk_1EDCD0AA0, &qword_1ECAB49B8, &unk_1D9191140, MEMORY[0x1E695C038]);
  v37 = v78;
  v38 = v81;
  sub_1D9177B5C();
  (*(v79 + 8))(v35, v38);
  sub_1D8CF48EC(&unk_1EDCD0EC8, &qword_1ECAB5B30, &qword_1D9191158, MEMORY[0x1E695BC68]);
  v39 = v83;
  v40 = v82;
  sub_1D9177C5C();
  (*(v80 + 8))(v37, v40);
  sub_1D8D65C38(v97, v25, type metadata accessor for TTMLRequest);
  sub_1D8CFD9D8(v104, &v102);
  v41 = *(v74 + 80);
  v42 = (v41 + 16) & ~v41;
  v43 = (v95 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  v81 = type metadata accessor for TTMLRequest;
  sub_1D8D66338(v25, v44 + v42, type metadata accessor for TTMLRequest);
  *(v44 + v43) = v34;
  v45 = v44 + ((v43 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v45 = "ForegroundNetworkFetch";
  *(v45 + 8) = 22;
  *(v45 + 16) = 2;
  sub_1D8D6BCE0(&v102, v44 + ((v43 + 39) & 0xFFFFFFFFFFFFFFF8));
  v46 = swift_allocObject();
  *(v46 + 16) = sub_1D8EEDD44;
  *(v46 + 24) = v44;
  v82 = v34;

  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECAB5B50, &qword_1D9191180);
  sub_1D8CF48EC(&qword_1EDCD0C50, &qword_1ECAB5B38, &qword_1D9191160, MEMORY[0x1E695BE10]);
  sub_1D8CF48EC(&qword_1ECAB27F8, qword_1ECAB5B50, &qword_1D9191180, &protocol conformance descriptor for EmitLifecycle<A>);
  v47 = v86;
  v48 = v85;
  sub_1D9177CBC();

  (*(v84 + 8))(v39, v48);
  sub_1D8CFD9D8(v104, &v102);
  v49 = v97;
  sub_1D8D65C38(v97, v25, v72);
  v50 = swift_allocObject();
  sub_1D8D6BCE0(&v102, v50 + 16);
  sub_1D8D66338(v25, v50 + ((v41 + 56) & ~v41), v81);
  sub_1D8CF48EC(&qword_1ECAB0628, &qword_1ECAB5B40, &unk_1D9191168, MEMORY[0x1E695BE40]);
  v51 = v88;
  sub_1D9177C6C();

  v52 = v47;
  v53 = v73;
  (*(v87 + 8))(v52, v51);
  sub_1D8CFD9D8(v104, &v102);
  v54 = v91;
  sub_1D8D088B4(v49, v91, &unk_1ECAB5910, &qword_1D9188C90);
  v55 = *(v53 - 1);
  if ((*(v55 + 48))(v54, 1, v53) == 1)
  {
    sub_1D8D08A50(v54, &unk_1ECAB5910, &qword_1D9188C90);
    v56 = 0;
    v57 = 0;
  }

  else
  {
    v56 = sub_1D9176BCC();
    v57 = v58;
    (*(v55 + 8))(v54, v53);
  }

  v59 = v92;
  v60 = v90;
  v61 = v89;
  v62 = *(v89 + 16);
  v63 = v96;
  v62(v96, v98, v90);
  sub_1D8D088B4(&v102, v101, &qword_1ECAB4928, &qword_1D918B380);
  v62(v59, v63, v60);
  v64 = v93;
  sub_1D8D088B4(v101, v59 + *(v93 + 36), &qword_1ECAB4928, &qword_1D918B380);
  v65 = v59 + v64[10];
  *v65 = "ForegroundDownload";
  *(v65 + 8) = 18;
  *(v65 + 16) = 2;
  *(v59 + v64[12]) = 1;
  if (v57)
  {
    v99 = v56;
    v100 = v57;

    MEMORY[0x1DA7298F0](8250, 0xE200000000000000);

    v66 = v99;
    v67 = v100;
  }

  else
  {

    v66 = 0;
    v67 = 0xE000000000000000;
  }

  sub_1D8D08A50(v101, &qword_1ECAB4928, &qword_1D918B380);
  v68 = *(v61 + 8);
  v68(v96, v60);
  sub_1D8D08A50(&v102, &qword_1ECAB4928, &qword_1D918B380);
  v68(v98, v60);
  v69 = (v59 + v64[11]);
  *v69 = v66;
  v69[1] = v67;
  *(v59 + v64[13]) = 0;
  sub_1D8D6734C(v59, v94, &qword_1ECAB6490, &qword_1D9192740);
  return __swift_destroy_boxed_opaque_existential_1Tm(v104);
}

uint64_t sub_1D8EE996C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  ArtworkRequest.remoteUrl.getter();
  v5 = sub_1D9176C2C();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    return (*(v6 + 32))(a1, v4, v5);
  }

  sub_1D8D08A50(v4, &unk_1ECAB5910, &qword_1D9188C90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB65D8, &qword_1D91928A0);
  sub_1D8CF48EC(&qword_1ECAB65E0, &qword_1ECAB65D8, &qword_1D91928A0, &protocol conformance descriptor for ForegroundSessionSource<A>.SourceError);
  swift_allocError();
  *v7 = 0;
  return swift_willThrow();
}

uint64_t sub_1D8EE9B60@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, unint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v17 - v11;
  sub_1D8D088B4(a1, v17 - v11, &unk_1ECAB5910, &qword_1D9188C90);
  v13 = sub_1D9176C2C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    return (*(v14 + 32))(a5, v12, v13);
  }

  sub_1D8D08A50(v12, &unk_1ECAB5910, &qword_1D9188C90);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_1D8CF48EC(a4, a2, a3, &protocol conformance descriptor for ForegroundSessionSource<A>.SourceError);
  swift_allocError();
  *v15 = 0;
  return swift_willThrow();
}

uint64_t sub_1D8EE9D10@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v72 = a8;
  v62 = a7;
  v60 = a2;
  v61 = a6;
  v64 = a3;
  v70 = a9;
  v13 = sub_1D9176C2C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5BE0, &qword_1D91913C8);
  v65 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v59 = &v58 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5BE8, &qword_1D91913D0);
  v68 = *(v18 - 8);
  v69 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v67 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v71 = &v58 - v22;
  v23 = *(v14 + 16);
  v66 = a1;
  v23(v16, a1, v13, v21);
  sub_1D8D41388(a3, v77);
  v24 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v25 = (v15 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  (*(v14 + 32))(v26 + v24, v16, v13);
  v27 = v60;
  *(v26 + v25) = v60;
  memcpy((v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8)), v77, 0x108uLL);
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5BF0, &qword_1D91913D8);
  sub_1D8CF48EC(&qword_1ECAB0940, &qword_1ECAB5BF0, &qword_1D91913D8, MEMORY[0x1E695BCC0]);
  v29 = v59;
  sub_1D9177A7C();
  sub_1D8CFD9D8(v72, v77);
  v30 = swift_allocObject();
  *(v30 + 16) = a4;
  *(v30 + 24) = a5;
  v31 = v61;
  *(v30 + 32) = v61;
  LOBYTE(v25) = v62;
  *(v30 + 40) = v62;
  sub_1D8D6BCE0(v77, v30 + 48);
  v32 = swift_allocObject();
  *(v32 + 16) = a4;
  *(v32 + 24) = a5;
  *(v32 + 32) = v31;
  *(v32 + 40) = v25;
  v33 = swift_allocObject();
  *(v33 + 16) = a4;
  *(v33 + 24) = a5;
  *(v33 + 32) = v31;
  *(v33 + 40) = v25;
  v34 = swift_allocObject();
  *(v34 + 16) = a4;
  *(v34 + 24) = a5;
  *(v34 + 32) = v31;
  *(v34 + 40) = v25;
  sub_1D8CF48EC(&qword_1ECAB0208, &qword_1ECAB5BE0, &qword_1D91913C8, MEMORY[0x1E695C058]);
  swift_retain_n();
  v35 = v63;
  v36 = v71;
  sub_1D9177B3C();

  (*(v65 + 8))(v29, v35);
  sub_1D8CFD9D8(v72, v77);
  v75 = 0;
  v76 = 0xE000000000000000;
  sub_1D917946C();

  v75 = 60;
  v76 = 0xE100000000000000;
  v37 = 0xEA0000000000646ELL;
  v38 = 0x756F72676B636142;
  v39 = 0xED00006465746169;
  v40 = 0x74696E4972657355;
  if (*(v64 + 203) != 2)
  {
    v40 = 0x65746E4972657355;
    v39 = 0xEF65766974636172;
  }

  if (*(v64 + 203))
  {
    v38 = 0x7974696C697455;
    v37 = 0xE700000000000000;
  }

  if (*(v64 + 203) <= 1u)
  {
    v41 = v38;
  }

  else
  {
    v41 = v40;
  }

  if (*(v64 + 203) <= 1u)
  {
    v42 = v37;
  }

  else
  {
    v42 = v39;
  }

  MEMORY[0x1DA7298F0](v41, v42);

  MEMORY[0x1DA7298F0](0x616F6C6E776F4420, 0xEB00000000203E64);
  v43 = sub_1D9176AFC();
  MEMORY[0x1DA7298F0](v43);

  v44 = v75;
  v45 = v76;
  v46 = v67;
  v47 = v68;
  v48 = *(v68 + 16);
  v49 = v69;
  v48(v67, v36, v69);
  sub_1D8D088B4(v77, &v75, &qword_1ECAB4928, &qword_1D918B380);
  v50 = v70;
  v48(v70, v46, v49);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECAB5B50, &qword_1D9191180);
  sub_1D8D088B4(&v75, v50 + v51[9], &qword_1ECAB4928, &qword_1D918B380);
  v52 = v50 + v51[10];
  *v52 = "DOWNLOAD";
  *(v52 + 8) = 8;
  *(v52 + 16) = 2;
  *(v50 + v51[12]) = 0;
  v73 = v44;
  v74 = v45;

  MEMORY[0x1DA7298F0](8250, 0xE200000000000000);

  v53 = v73;
  v54 = v74;
  sub_1D8D08A50(&v75, &qword_1ECAB4928, &qword_1D918B380);
  v55 = *(v47 + 8);
  v55(v46, v49);
  sub_1D8D08A50(v77, &qword_1ECAB4928, &qword_1D918B380);
  result = (v55)(v71, v49);
  v57 = (v50 + v51[11]);
  *v57 = v53;
  v57[1] = v54;
  *(v50 + v51[13]) = 0;
  return result;
}

uint64_t sub_1D8EEA458@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v63 = a8;
  v67 = a7;
  v66 = a6;
  v65 = a5;
  v64 = a4;
  v69 = a3;
  v76 = a9;
  v12 = type metadata accessor for ShazamSignatureRequest(0);
  v13 = *(v12 - 8);
  v71 = v12 - 8;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D9176C2C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5BE0, &qword_1D91913C8);
  v70 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v62 = &v61 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5BE8, &qword_1D91913D0);
  v74 = *(v21 - 8);
  v75 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v73 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v77 = &v61 - v25;
  v26 = *(v17 + 16);
  v72 = a1;
  v26(v19, a1, v16, v24);
  sub_1D8D65C38(a3, v15, type metadata accessor for ShazamSignatureRequest);
  v27 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v28 = (v18 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = (*(v13 + 80) + v28 + 8) & ~*(v13 + 80);
  v30 = swift_allocObject();
  (*(v17 + 32))(v30 + v27, v19, v16);
  *(v30 + v28) = a2;
  sub_1D8D66338(v15, v30 + v29, type metadata accessor for ShazamSignatureRequest);
  v31 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5BF0, &qword_1D91913D8);
  sub_1D8CF48EC(&qword_1ECAB0940, &qword_1ECAB5BF0, &qword_1D91913D8, MEMORY[0x1E695BCC0]);
  v32 = v62;
  sub_1D9177A7C();
  v33 = v63;
  sub_1D8CFD9D8(v63, v82);
  v34 = swift_allocObject();
  v35 = v64;
  v36 = v65;
  *(v34 + 16) = v64;
  *(v34 + 24) = v36;
  v37 = v66;
  *(v34 + 32) = v66;
  LOBYTE(v17) = v67;
  *(v34 + 40) = v67;
  sub_1D8D6BCE0(v82, v34 + 48);
  v38 = swift_allocObject();
  *(v38 + 16) = v35;
  *(v38 + 24) = v36;
  *(v38 + 32) = v37;
  *(v38 + 40) = v17;
  v39 = swift_allocObject();
  *(v39 + 16) = v35;
  *(v39 + 24) = v36;
  *(v39 + 32) = v37;
  *(v39 + 40) = v17;
  v40 = swift_allocObject();
  *(v40 + 16) = v35;
  *(v40 + 24) = v36;
  *(v40 + 32) = v37;
  *(v40 + 40) = v17;
  sub_1D8CF48EC(&qword_1ECAB0208, &qword_1ECAB5BE0, &qword_1D91913C8, MEMORY[0x1E695C058]);
  swift_retain_n();
  v41 = v68;
  v42 = v77;
  sub_1D9177B3C();

  (*(v70 + 8))(v32, v41);
  sub_1D8CFD9D8(v33, v82);
  v80 = 0;
  v81 = 0xE000000000000000;
  sub_1D917946C();

  v80 = 60;
  v81 = 0xE100000000000000;
  v43 = *(v69 + *(v71 + 28));
  if (v43 > 1)
  {
    if (v43 == 2)
    {
      v44 = 0xED00006465746169;
      v45 = 0x74696E4972657355;
    }

    else
    {
      v44 = 0xEF65766974636172;
      v45 = 0x65746E4972657355;
    }
  }

  else if (*(v69 + *(v71 + 28)))
  {
    v44 = 0xE700000000000000;
    v45 = 0x7974696C697455;
  }

  else
  {
    v44 = 0xEA0000000000646ELL;
    v45 = 0x756F72676B636142;
  }

  MEMORY[0x1DA7298F0](v45, v44);

  MEMORY[0x1DA7298F0](0x616F6C6E776F4420, 0xEB00000000203E64);
  v46 = sub_1D9176AFC();
  MEMORY[0x1DA7298F0](v46);

  v47 = v80;
  v48 = v81;
  v50 = v73;
  v49 = v74;
  v51 = *(v74 + 16);
  v52 = v75;
  v51(v73, v42, v75);
  sub_1D8D088B4(v82, &v80, &qword_1ECAB4928, &qword_1D918B380);
  v53 = v76;
  v51(v76, v50, v52);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECAB5B50, &qword_1D9191180);
  sub_1D8D088B4(&v80, v53 + v54[9], &qword_1ECAB4928, &qword_1D918B380);
  v55 = v53 + v54[10];
  *v55 = "DOWNLOAD";
  *(v55 + 8) = 8;
  *(v55 + 16) = 2;
  *(v53 + v54[12]) = 0;
  v78 = v47;
  v79 = v48;

  MEMORY[0x1DA7298F0](8250, 0xE200000000000000);

  v56 = v78;
  v57 = v79;
  sub_1D8D08A50(&v80, &qword_1ECAB4928, &qword_1D918B380);
  v58 = *(v49 + 8);
  v58(v50, v52);
  sub_1D8D08A50(v82, &qword_1ECAB4928, &qword_1D918B380);
  result = (v58)(v77, v52);
  v60 = (v53 + v54[11]);
  *v60 = v56;
  v60[1] = v57;
  *(v53 + v54[13]) = 0;
  return result;
}

uint64_t sub_1D8EEAC84@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v63 = a8;
  v67 = a7;
  v66 = a6;
  v65 = a5;
  v64 = a4;
  v69 = a3;
  v76 = a9;
  v12 = type metadata accessor for TTMLRequest(0);
  v13 = *(v12 - 8);
  v71 = v12 - 8;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D9176C2C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5BE0, &qword_1D91913C8);
  v70 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v62 = &v61 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5BE8, &qword_1D91913D0);
  v74 = *(v21 - 8);
  v75 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v73 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v77 = &v61 - v25;
  v26 = *(v17 + 16);
  v72 = a1;
  v26(v19, a1, v16, v24);
  sub_1D8D65C38(a3, v15, type metadata accessor for TTMLRequest);
  v27 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v28 = (v18 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = (*(v13 + 80) + v28 + 8) & ~*(v13 + 80);
  v30 = swift_allocObject();
  (*(v17 + 32))(v30 + v27, v19, v16);
  *(v30 + v28) = a2;
  sub_1D8D66338(v15, v30 + v29, type metadata accessor for TTMLRequest);
  v31 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5BF0, &qword_1D91913D8);
  sub_1D8CF48EC(&qword_1ECAB0940, &qword_1ECAB5BF0, &qword_1D91913D8, MEMORY[0x1E695BCC0]);
  v32 = v62;
  sub_1D9177A7C();
  v33 = v63;
  sub_1D8CFD9D8(v63, v82);
  v34 = swift_allocObject();
  v35 = v64;
  v36 = v65;
  *(v34 + 16) = v64;
  *(v34 + 24) = v36;
  v37 = v66;
  *(v34 + 32) = v66;
  LOBYTE(v17) = v67;
  *(v34 + 40) = v67;
  sub_1D8D6BCE0(v82, v34 + 48);
  v38 = swift_allocObject();
  *(v38 + 16) = v35;
  *(v38 + 24) = v36;
  *(v38 + 32) = v37;
  *(v38 + 40) = v17;
  v39 = swift_allocObject();
  *(v39 + 16) = v35;
  *(v39 + 24) = v36;
  *(v39 + 32) = v37;
  *(v39 + 40) = v17;
  v40 = swift_allocObject();
  *(v40 + 16) = v35;
  *(v40 + 24) = v36;
  *(v40 + 32) = v37;
  *(v40 + 40) = v17;
  sub_1D8CF48EC(&qword_1ECAB0208, &qword_1ECAB5BE0, &qword_1D91913C8, MEMORY[0x1E695C058]);
  swift_retain_n();
  v41 = v68;
  v42 = v77;
  sub_1D9177B3C();

  (*(v70 + 8))(v32, v41);
  sub_1D8CFD9D8(v33, v82);
  v80 = 0;
  v81 = 0xE000000000000000;
  sub_1D917946C();

  v80 = 60;
  v81 = 0xE100000000000000;
  v43 = *(v69 + *(v71 + 28));
  if (v43 > 1)
  {
    if (v43 == 2)
    {
      v44 = 0xED00006465746169;
      v45 = 0x74696E4972657355;
    }

    else
    {
      v44 = 0xEF65766974636172;
      v45 = 0x65746E4972657355;
    }
  }

  else if (*(v69 + *(v71 + 28)))
  {
    v44 = 0xE700000000000000;
    v45 = 0x7974696C697455;
  }

  else
  {
    v44 = 0xEA0000000000646ELL;
    v45 = 0x756F72676B636142;
  }

  MEMORY[0x1DA7298F0](v45, v44);

  MEMORY[0x1DA7298F0](0x616F6C6E776F4420, 0xEB00000000203E64);
  v46 = sub_1D9176AFC();
  MEMORY[0x1DA7298F0](v46);

  v47 = v80;
  v48 = v81;
  v50 = v73;
  v49 = v74;
  v51 = *(v74 + 16);
  v52 = v75;
  v51(v73, v42, v75);
  sub_1D8D088B4(v82, &v80, &qword_1ECAB4928, &qword_1D918B380);
  v53 = v76;
  v51(v76, v50, v52);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECAB5B50, &qword_1D9191180);
  sub_1D8D088B4(&v80, v53 + v54[9], &qword_1ECAB4928, &qword_1D918B380);
  v55 = v53 + v54[10];
  *v55 = "DOWNLOAD";
  *(v55 + 8) = 8;
  *(v55 + 16) = 2;
  *(v53 + v54[12]) = 0;
  v78 = v47;
  v79 = v48;

  MEMORY[0x1DA7298F0](8250, 0xE200000000000000);

  v56 = v78;
  v57 = v79;
  sub_1D8D08A50(&v80, &qword_1ECAB4928, &qword_1D918B380);
  v58 = *(v49 + 8);
  v58(v50, v52);
  sub_1D8D08A50(v82, &qword_1ECAB4928, &qword_1D918B380);
  result = (v58)(v77, v52);
  v60 = (v53 + v54[11]);
  *v60 = v56;
  v60[1] = v57;
  *(v53 + v54[13]) = 0;
  return result;
}

uint64_t sub_1D8EEB4B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18[0] = a2;
  v18[1] = a4;
  v6 = sub_1D9176C2C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  (*(v7 + 16))(v9, a1, v6);
  sub_1D8D41388(a3, v19);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = (v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v11, v9, v6);
  v15 = v18[0];
  *(v14 + v12) = v18[0];
  memcpy((v14 + v13), v19, 0x108uLL);
  *(v14 + ((v13 + 271) & 0xFFFFFFFFFFFFFFF8)) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5BF8, &unk_1D91913E0);
  swift_allocObject();
  v16 = v15;

  v19[0] = sub_1D9177A5C();
  sub_1D8CF48EC(&qword_1EDCD0AE8, &qword_1ECAB5BF8, &unk_1D91913E0, MEMORY[0x1E695C038]);

  sub_1D9177B3C();
}

uint64_t sub_1D8EEB730@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a2;
  v23 = a4;
  v6 = type metadata accessor for ShazamSignatureRequest(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = sub_1D9176C2C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  (*(v10 + 16))(v12, a1, v9);
  sub_1D8D65C38(a3, &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShazamSignatureRequest);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (*(v7 + 80) + v15 + 8) & ~*(v7 + 80);
  v17 = swift_allocObject();
  (*(v10 + 32))(v17 + v14, v12, v9);
  v18 = v22;
  *(v17 + v15) = v22;
  sub_1D8D66338(&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for ShazamSignatureRequest);
  *(v17 + ((v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5BF8, &unk_1D91913E0);
  swift_allocObject();
  v19 = v18;

  v24 = sub_1D9177A5C();
  sub_1D8CF48EC(&qword_1EDCD0AE8, &qword_1ECAB5BF8, &unk_1D91913E0, MEMORY[0x1E695C038]);

  sub_1D9177B3C();
}

uint64_t sub_1D8EEBA50@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a2;
  v23 = a4;
  v6 = type metadata accessor for TTMLRequest(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = sub_1D9176C2C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  (*(v10 + 16))(v12, a1, v9);
  sub_1D8D65C38(a3, &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TTMLRequest);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (*(v7 + 80) + v15 + 8) & ~*(v7 + 80);
  v17 = swift_allocObject();
  (*(v10 + 32))(v17 + v14, v12, v9);
  v18 = v22;
  *(v17 + v15) = v22;
  sub_1D8D66338(&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for TTMLRequest);
  *(v17 + ((v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5BF8, &unk_1D91913E0);
  swift_allocObject();
  v19 = v18;

  v24 = sub_1D9177A5C();
  sub_1D8CF48EC(&qword_1EDCD0AE8, &qword_1ECAB5BF8, &unk_1D91913E0, MEMORY[0x1E695C038]);

  sub_1D9177B3C();
}

void sub_1D8EEBD70(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v27 = a5;
  v25 = a4;
  v10 = sub_1D9176C2C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1D917653C();
  v14 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  (*(v11 + 16))(v13, a3, v10);

  sub_1D91764EC();
  v18 = sub_1D91764BC();
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1D8EEFDB0;
  *(v19 + 24) = v17;
  aBlock[4] = sub_1D8EEFC78;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8EEC758;
  aBlock[3] = &block_descriptor_324;
  v20 = _Block_copy(aBlock);

  v21 = [v25 dataTaskWithRequest:v18 completionHandler:v20];
  _Block_release(v20);

  *&v22 = flt_1D918CD50[*(v27 + 203)];
  [v21 setPriority_];
  [v21 resume];
  (*(v14 + 8))(v16, v26);
  swift_beginAccess();
  v23 = *(a6 + 16);
  *(a6 + 16) = v21;
}

void sub_1D8EEC04C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v27 = a5;
  v25 = a4;
  v10 = sub_1D9176C2C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1D917653C();
  v14 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  (*(v11 + 16))(v13, a3, v10);

  sub_1D91764EC();
  v18 = sub_1D91764BC();
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1D8EC1684;
  *(v19 + 24) = v17;
  aBlock[4] = sub_1D8EEDD04;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8EEC758;
  aBlock[3] = &block_descriptor_28;
  v20 = _Block_copy(aBlock);

  v21 = [v25 dataTaskWithRequest:v18 completionHandler:v20];
  _Block_release(v20);

  *&v22 = flt_1D918CD50[*(v27 + *(type metadata accessor for ShazamSignatureRequest(0) + 20))];
  [v21 setPriority_];
  [v21 resume];
  (*(v14 + 8))(v16, v26);
  swift_beginAccess();
  v23 = *(a6 + 16);
  *(a6 + 16) = v21;
}

void sub_1D8EEC334(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v27 = a5;
  v25 = a4;
  v10 = sub_1D9176C2C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1D917653C();
  v14 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  (*(v11 + 16))(v13, a3, v10);

  sub_1D91764EC();
  v18 = sub_1D91764BC();
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1D8EEFDB0;
  *(v19 + 24) = v17;
  aBlock[4] = sub_1D8EEE550;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8EEC758;
  aBlock[3] = &block_descriptor_78_0;
  v20 = _Block_copy(aBlock);

  v21 = [v25 dataTaskWithRequest:v18 completionHandler:v20];
  _Block_release(v20);

  *&v22 = flt_1D918CD50[*(v27 + *(type metadata accessor for TTMLRequest(0) + 20))];
  [v21 setPriority_];
  [v21 resume];
  (*(v14 + 8))(v16, v26);
  swift_beginAccess();
  v23 = *(a6 + 16);
  *(a6 + 16) = v21;
}

void sub_1D8EEC61C(void *a1, unint64_t a2, int a3, id a4, void (*a5)(id, unint64_t, uint64_t), int a6, uint64_t *a7, uint64_t *a8, unint64_t *a9)
{
  if (a2 >> 60 == 15)
  {
    if (a4)
    {
      v10 = a4;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
      sub_1D8CF48EC(a9, a7, a8, &protocol conformance descriptor for ForegroundSessionSource<A>.SourceError);
      v15 = swift_allocError();
      a4 = 0;
      v10 = v15;
      *v16 = 1;
    }

    v17 = a4;
    a5(v10, 0, 1);
  }

  else
  {
    sub_1D8D752C4(a1, a2);
    a5(a1, a2, 0);

    sub_1D8D75668(a1, a2);
  }
}

uint64_t sub_1D8EEC758(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_1D9176C8C();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_1D8D75668(v6, v10);
}

double sub_1D8EEC820@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v9 = a3[3];
  v10 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v9);
  Trace.emit(event:)("DECODE", 6, 2, v9, v10);
  TranscriptParser.parse(ttmlData:)(a1, a2, &v17);
  if (v4)
  {
    v11 = a3[3];
    v12 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v11);
    Trace.emit(event:)("DECODE-FAILED", 13, 2, v11, v12);
    swift_willThrow();
  }

  else
  {
    v14 = a3[3];
    v15 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v14);
    Trace.emit(event:)("DECODED", 7, 2, v14, v15);
    v16 = v18;
    *a4 = v17;
    *(a4 + 16) = v16;
    *(a4 + 24) = v19;
    result = v20[0];
    *(a4 + 40) = *v20;
  }

  return result;
}

uint64_t static TimeBombedTranscriptProvider.Caches.shared.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECAB1478 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TimeBombedTranscriptProvider.Caches(0);
  v3 = __swift_project_value_buffer(v2, qword_1ECAB1480);
  return sub_1D8D65C38(v3, a1, type metadata accessor for TimeBombedTranscriptProvider.Caches);
}

void sub_1D8EECA5C(void *a1@<X8>)
{
  if (qword_1ECAB1478 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TimeBombedTranscriptProvider.Caches(0);
  v3 = __swift_project_value_buffer(v2, qword_1ECAB1480);
  v4 = (v3 + *(v2 + 20));
  v5 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D38, &qword_1D9191600) + 60);
  v6 = *&v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D58, &unk_1D9191620) + 72)];
  v7 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D08, &unk_1D9191530) + 60);
  v8 = *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D30, &unk_1D9191570) + 72)];
  v9 = *v3;
  v10 = *v4;
  v11 = qword_1ECAB14A0;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  if (v11 != -1)
  {
    swift_once();
  }

  v12 = _s11DownloadersVMa(0);
  v13 = __swift_project_value_buffer(v12, qword_1ECAB14A8);
  v14 = (v13 + *(v12 + 24));
  v16 = *v14;
  v15 = v14[1];
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v15;
  v18 = (v13 + *(v12 + 32));
  v20 = *v18;
  v19 = v18[1];
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v19;
  v22 = qword_1EDCD5B50;

  if (v22 != -1)
  {
    swift_once();
  }

  v34[3] = &type metadata for MAPITranscriptTimeBombedURLProvider;
  v34[4] = &protocol witness table for MAPITranscriptTimeBombedURLProvider;
  v23 = qword_1EDCD5B58;
  v24 = MEMORY[0x1E69E7CC0];
  v25 = sub_1D8D6866C(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5F20, &qword_1D91919A0);
  v26 = swift_allocObject();
  *(v26 + 24) = 0;
  *(v26 + 16) = v25;
  v34[0] = v23;
  v34[1] = v26;
  *a1 = sub_1D8EEFE0C;
  a1[1] = v6;
  a1[2] = sub_1D8EEFD0C;
  a1[3] = v6;
  a1[4] = sub_1D8EEFE48;
  a1[5] = v6;
  a1[6] = sub_1D8EEFE10;
  a1[7] = v6;
  a1[8] = sub_1D8EEFD00;
  a1[9] = v8;
  a1[10] = sub_1D8EEFDB8;
  a1[11] = v8;
  a1[12] = sub_1D8EEFE4C;
  a1[13] = v8;
  a1[14] = sub_1D8EEFE28;
  a1[15] = v8;
  a1[16] = sub_1D8EEFD44;
  a1[17] = v9;
  a1[18] = sub_1D8EEFD10;
  a1[19] = v9;
  a1[20] = sub_1D8EEFE50;
  a1[21] = v9;
  a1[22] = sub_1D8EEFD48;
  a1[23] = v9;
  a1[24] = sub_1D8EEFD60;
  a1[25] = v10;
  a1[26] = sub_1D8EEFDBC;
  a1[27] = v10;
  a1[28] = sub_1D8EEFE54;
  a1[29] = v10;
  a1[30] = sub_1D8EEFD64;
  a1[31] = v10;
  a1[32] = sub_1D8EEF524;
  a1[33] = v17;
  a1[34] = sub_1D8EEF56C;
  a1[35] = v21;
  sub_1D8CFD9D8(v34, (a1 + 36));
  a1[41] = v23;
  v27 = v23;
  v28 = sub_1D8D688C4(v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB61A0, &qword_1D91921E0);
  v29 = swift_allocObject();
  *(v29 + 24) = 0;
  *(v29 + 16) = v28;
  a1[42] = v29;
  v30 = sub_1D8D68C58(v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB61A8, &unk_1D91921E8);
  v31 = swift_allocObject();
  *(v31 + 24) = 0;
  *(v31 + 16) = v30;
  a1[43] = v31;
  v32 = sub_1D8D68E84(v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5E38, &qword_1D9191840);
  v33 = swift_allocObject();
  *(v33 + 24) = 0;

  __swift_destroy_boxed_opaque_existential_1Tm(v34);
  *(v33 + 16) = v32;

  a1[44] = v33;
}

uint64_t sub_1D8EECF6C@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  Trace.emit(event:)("DECODE", 6, 2, v7, v8);
  *a3 = v5;
  a3[1] = v6;
  type metadata accessor for ArtworkContent(0);
  swift_storeEnumTagMultiPayload();
  v9 = a2[3];
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v9);
  sub_1D8D752C4(v5, v6);
  return Trace.emit(event:)("DECODED", 7, 2, v9, v10);
}

uint64_t sub_1D8EED044@<X0>(void *a3@<X8>)
{

  swift_getAtKeyPath();

  *a3 = v5;
  return result;
}

uint64_t sub_1D8EED0B8(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, void, void, double), unint64_t *a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v19 - v15;
  a5(a1, *a2, a2[1], v14);
  sub_1D8CF48EC(a6, a3, a4, MEMORY[0x1E695BE28]);
  v17 = sub_1D9177B1C();
  (*(v13 + 8))(v16, v12);
  return v17;
}

void sub_1D8EED1F0(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = *(*a1 + 16);
  os_unfair_lock_lock(v3 + 10);
  sub_1D8EEF490(&v3[4], &v4);
  os_unfair_lock_unlock(v3 + 10);
  *a2 = v4;
}

uint64_t sub_1D8EED258(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 16);
  os_unfair_lock_lock(v2 + 10);
  sub_1D8EEF460(&v2[4], &v4);
  os_unfair_lock_unlock(v2 + 10);
  return v4;
}

void sub_1D8EED2B8(uint64_t a1, uint64_t a2)
{
  v3 = *(*a2 + 16);
  os_unfair_lock_lock(v3 + 10);
  sub_1D8E51418(&v3[4]);
  os_unfair_lock_unlock(v3 + 10);
  if (v2)
  {
    __break(1u);
  }
}

void sub_1D8EED32C(uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  v4 = *(*a2 + 16);
  os_unfair_lock_lock(v4 + 10);
  sub_1D8EEF4D8(&v4[4], x8_0);
  os_unfair_lock_unlock(v4 + 10);
}

uint64_t sub_1D8EED38C(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 16);
  os_unfair_lock_lock(v2 + 10);
  sub_1D8EEF4A8(&v2[4], &v4);
  os_unfair_lock_unlock(v2 + 10);
  return v4;
}

void sub_1D8EED3EC(uint64_t a1, uint64_t a2)
{
  v3 = *(*a2 + 16);
  os_unfair_lock_lock(v3 + 10);
  sub_1D8E51328(&v3[4]);
  os_unfair_lock_unlock(v3 + 10);
  if (v2)
  {
    __break(1u);
  }
}

void sub_1D8EED460(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a1 + 16);
  v7 = a3(0);
  if (*(v6 + 16))
  {
    v8 = (a2 + *(v7 + 24));
    v10 = *v8;
    v9 = v8[1];

    sub_1D8D33C70(v10, v9);
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  *a4 = v12 & 1;
}

uint64_t sub_1D8EED4EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v4[2] = *(a1 + 32);
  v5 = *(a1 + 48);
  return sub_1D8E47CB8(v4, a2);
}

id sub_1D8EED528(uint64_t a1, void *a2, void (*a3)(uint64_t, double))
{
  v5 = sub_1D9176C2C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(*a2 + qword_1EDCDE890, v7);
  v10 = [objc_opt_self() defaultManager];
  sub_1D9176BCC();
  v11 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v12 = [v10 fileExistsAtPath_];

  (*(v6 + 8))(v9, v5);
  return v12;
}

void *sub_1D8EED724@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1D8EDD9DC(a1);
  *a2 = result;
  return result;
}

void sub_1D8EED824(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v2;
  v3[2] = *(a1 + 32);
  v4 = *(a1 + 48);
  sub_1D8E4A4D0(v3, a2);
}

uint64_t sub_1D8EED938@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  Trace.emit(event:)("DECODE", 6, 2, v8, v9);
  v10 = ShazamSignatureRequest.decode(_:)(v6, v7);
  if (v3)
  {
    v11 = a2[3];
    v12 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v11);
    Trace.emit(event:)("DECODE-FAILED", 13, 2, v11, v12);
    return swift_willThrow();
  }

  else
  {
    v14 = v10;
    v15 = a2[3];
    v16 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v15);
    result = Trace.emit(event:)("DECODED", 7, 2, v15, v16);
    *a3 = v14;
  }

  return result;
}

uint64_t sub_1D8EEDA50(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, void, double), unint64_t *a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v18 - v14;
  a5(a1, *a2, v13);
  sub_1D8CF48EC(a6, a3, a4, &protocol conformance descriptor for EmitLifecycle<A>);
  v16 = sub_1D9177B1C();
  sub_1D8D08A50(v15, a3, a4);
  return v16;
}

uint64_t sub_1D8EEDD70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, unint64_t))
{
  v7 = *(a3(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v4 + v9);
  v12 = *(v4 + v10);
  v13 = *(v4 + v10 + 8);
  v14 = *(v4 + v10 + 16);

  return a4(a1, a2, v4 + v8, v11, v12, v13, v14, v4 + ((v9 + 39) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t objectdestroy_9Tm(uint64_t (*a1)(void))
{
  v3 = sub_1D9176C2C();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = a1(0);
  v8 = (v6 + *(*(v7 - 8) + 80) + 8) & ~*(*(v7 - 8) + 80);
  v9 = *(v4 + 8);
  v9(v1 + v5, v3);

  if (!(*(v4 + 48))(v1 + v8, 1, v3))
  {
    v9(v1 + v8, v3);
  }

  v10 = (v1 + v8 + *(v7 + 36));
  if (v10[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  return swift_deallocObject();
}

uint64_t sub_1D8EEE0C8(uint64_t (*a1)(void), uint64_t (*a2)(unint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_1D9176C2C() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(a1(0) - 8);
  v8 = *(v2 + v6);
  v9 = v2 + ((v6 + *(v7 + 80) + 8) & ~*(v7 + 80));

  return a2(v2 + v5, v8, v9);
}

uint64_t objectdestroy_12Tm()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));

  return swift_deallocObject();
}

uint64_t objectdestroy_27Tm(uint64_t (*a1)(void))
{
  v3 = sub_1D9176C2C();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = a1(0);
  v8 = *(*(v7 - 8) + 80);
  v9 = (v6 + v8 + 8) & ~v8;
  v10 = *(v4 + 8);
  v10(v1 + v5, v3);

  if (!(*(v4 + 48))(v1 + v9, 1, v3))
  {
    v10(v1 + v9, v3);
  }

  v11 = (v1 + v9 + *(v7 + 36));
  if (v11[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  return swift_deallocObject();
}

uint64_t sub_1D8EEE414(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, unint64_t, uint64_t, unint64_t, uint64_t))
{
  v8 = *(sub_1D9176C2C() - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(a3(0) - 8);
  v12 = (v10 + *(v11 + 80) + 8) & ~*(v11 + 80);
  v13 = *(v4 + v10);
  v14 = *(v4 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a4(a1, a2, v4 + v9, v13, v4 + v12, v14);
}

uint64_t sub_1D8EEE70C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1D8EEE740()
{
  result = qword_1ECAB2648;
  if (!qword_1ECAB2648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB64E0, &qword_1D91927A8);
    sub_1D8CF48EC(&qword_1ECAB1CE0, &qword_1ECAB4988, &qword_1D918B0D8, &protocol conformance descriptor for DownloadTaskIdentifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2648);
  }

  return result;
}

uint64_t sub_1D8EEE81C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 16);
    os_unfair_lock_lock(v2 + 10);
    sub_1D8EEFD98(&v2[4]);
    os_unfair_lock_unlock(v2 + 10);
  }

  return result;
}

uint64_t sub_1D8EEE898(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 16);
    os_unfair_lock_lock(v2 + 10);
    sub_1D8EEFA84(&v2[4]);
    os_unfair_lock_unlock(v2 + 10);
  }

  return result;
}

uint64_t sub_1D8EEE914@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for ShazamSignatureBackgroundSessionDescriptor(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for ShazamSignatureRequest(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_1D9176C2C() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(sub_1D917734C() - 8);
  result = sub_1D8EE4B60(*a1, v2 + v6, (v2 + v9), v2 + v12, v2 + ((v12 + v13 + *(v14 + 80)) & ~*(v14 + 80)));
  *a2 = result;
  return result;
}

uint64_t sub_1D8EEEB58(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, unint64_t, unint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_1D917653C() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(a4(0) - 8);
  v15 = *a1;
  v16 = v5 + ((v12 + v13 + *(v14 + 80)) & ~*(v14 + 80));

  return a5(v15, v5 + v9, v5 + v12, v16);
}

uint64_t sub_1D8EEECFC(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, unint64_t, unint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(a4(0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v5 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = *a1;

  return a5(v14, v5 + v9, v5 + v12, v13);
}

uint64_t sub_1D8EEEE4C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D8EE5E54(*a1, *(v2 + 16));
  *a2 = result;
  a2[1] = v5;
  return result;
}

unint64_t sub_1D8EEEE7C()
{
  result = qword_1ECAB2650;
  if (!qword_1ECAB2650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB6540, &qword_1D9192808);
    sub_1D8CF48EC(&qword_1ECAB1CE8, &qword_1ECAB4998, &qword_1D918B100, &protocol conformance descriptor for DownloadTaskIdentifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2650);
  }

  return result;
}

id sub_1D8EEEF48@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1D8EE5F10(a1, *(v2 + 16), *(v2 + 24));
  *a2 = result;
  return result;
}

uint64_t sub_1D8EEEFA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = *(a3(0) - 8);
  v8 = v4 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return a4(a2, a1, v8);
}

uint64_t sub_1D8EEF090@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for TranscriptsBackgroundSessionDescriptor(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for TTMLRequest(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_1D9176C2C() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(sub_1D917734C() - 8);
  v15 = (v12 + v13 + *(v14 + 80)) & ~*(v14 + 80);
  v16 = *(a1 + 16);
  v18[0] = *a1;
  v18[1] = v16;
  v18[2] = *(a1 + 32);
  v19 = *(a1 + 48);
  result = sub_1D8EE54B8(v18, v2 + v6, (v2 + v9), v2 + v12, v2 + v15);
  *a2 = result;
  return result;
}

uint64_t objectdestroy_134Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

uint64_t sub_1D8EEF2D8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(sub_1D917734C() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

void sub_1D8EEF35C()
{
  if (qword_1ECAB0FE0 != -1)
  {
    swift_once();
  }

  v0 = sub_1D917739C();
  __swift_project_value_buffer(v0, qword_1ECAB0FE8);
  log = sub_1D917737C();
  v1 = sub_1D9178F6C();
  if (sub_1D917918C())
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    v3 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, log, v1, v3, "Loaded asset from URL", "", v2, 2u);
    MEMORY[0x1DA72CB90](v2, -1, -1);
  }
}

id sub_1D8EEF4F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1D8EDD4B4(a1, *(v2 + 16));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D8EEF5CC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ShazamSignatureRequest(0);
  result = ShazamSignatureRequest.decode(_:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void *sub_1D8EEF65C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = (*(v2 + 16))(&v6, *a1, a1[1]);
  if (!v3)
  {
    *a2 = v6;
  }

  return result;
}

uint64_t objectdestroy_243Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);

  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v1 + v3, 1, v4))
  {
    (*(v5 + 8))(v1 + v3, v4);
  }

  v6 = (v1 + v3 + *(v2 + 36));
  if (v6[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  return swift_deallocObject();
}