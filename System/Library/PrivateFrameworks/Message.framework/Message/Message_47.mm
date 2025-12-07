char *sub_1B0B00DC8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E44E0, &qword_1B0EC5260);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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

void *sub_1B0B00F24(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v17);
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

char *sub_1B0B01100(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4318, &unk_1B0EC5060);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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

char *sub_1B0B01220(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4308, &qword_1B0EC5050);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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

char *sub_1B0B01324(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4448, &unk_1B0EC51B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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

char *sub_1B0B01444(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4428, &qword_1B0EC5198);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B0B01568(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4430, &unk_1B0EC51A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4438, &qword_1B0ECA320);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0B0169C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4420, &qword_1B0EC5190);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 392);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[392 * v8])
    {
      memmove(v12, v13, 392 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0B017C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4440, &qword_1B0EC51B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1B0B018DC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 12);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  v16 = 12 * v10;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v16])
    {
      memmove(v14, v15, v16);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v16);
  }

  return v12;
}

uint64_t sub_1B0B019E4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a3);
  result = sub_1B0E46CB8();
  v9 = -1 << *(v7 + 32);
  v10 = result & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      if (v12[1] == a3)
      {
        v13 = *v12;
        v14 = *(*v12 + 16);
        if (v14 == *(a2 + 16))
        {
          break;
        }
      }

LABEL_3:
      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    if (v14)
    {
      v15 = v13 == a2;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
LABEL_14:

      v18 = (*(v7 + 48) + 16 * v10);
      v19 = *v18;
      v20 = v18[1];
      *a1 = v19;
      a1[1] = v20;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      return 0;
    }

    else
    {
      v16 = (v13 + 32);
      v17 = (a2 + 32);
      while (v14)
      {
        if (*v16 != *v17)
        {
          goto LABEL_3;
        }

        ++v16;
        ++v17;
        if (!--v14)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_15:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    v22 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B05A54(v22, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  return result;
}

uint64_t sub_1B0B01BA4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  sub_1B0E46C28();
  sub_1B0E44BB8();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  v9 = sub_1B0E46CB8();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  v23 = a1;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = sub_1B0E44BB8();
      v15 = v14;
      if (v13 == sub_1B0E44BB8() && v15 == v16)
      {
        break;
      }

      v18 = sub_1B0E46A78();

      if (v18)
      {
        goto LABEL_11;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_11:

    v21 = (*(v8 + 48) + 16 * v11);
    v22 = v21[1];
    *v23 = *v21;
    v23[1] = v22;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v4;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B05D58(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v4 = v24;
    *v23 = a2;
    v23[1] = a3;
    return 1;
  }
}

uint64_t sub_1B0B01D70(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *v3;
  sub_1B0E46C28();
  if (a3)
  {
    MEMORY[0x1B2728D70](0);
    sub_1B0E44BB8();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1B2728D70](1);
  }

  v8 = sub_1B0E46CB8();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_16:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B05F44(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v4 = v21;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  while (1)
  {
    if (!*(*(v7 + 48) + 16 * v10 + 8))
    {
      if (!a3)
      {
        goto LABEL_19;
      }

      goto LABEL_7;
    }

    if (!a3)
    {
      goto LABEL_7;
    }

    v12 = sub_1B0E44BB8();
    v14 = v13;
    if (v12 == sub_1B0E44BB8() && v14 == v15)
    {
      break;
    }

    v17 = sub_1B0E46A78();

    if (v17)
    {
      goto LABEL_18;
    }

LABEL_7:
    v10 = (v10 + 1) & v11;
    if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_18:

LABEL_19:
  *a1 = *(*(v7 + 48) + 16 * v10);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return 0;
}

uint64_t sub_1B0B01F68(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v96 = *MEMORY[0x1E69E9840];
  v6 = *v3;
  sub_1B0E46C28();
  sub_1B0E42F48();
  v7 = sub_1B0E46CB8();
  v8 = v6 + 56;
  v9 = -1 << *(v6 + 32);
  v10 = v7 & ~v9;
  if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_141:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *__s1 = *v82;
    sub_1B03B2000(a2, a3);
    sub_1B0B06164(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v82 = *__s1;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  v12 = a3 >> 62;
  if (a2)
  {
    v13 = 0;
  }

  else
  {
    v13 = a3 == 0xC000000000000000;
  }

  v14 = !v13;
  v88 = v14;
  v15 = __OFSUB__(HIDWORD(a2), a2);
  v85 = v15;
  v84 = v6;
  v80 = (a2 >> 32) - a2;
  v81 = a2 >> 32;
  v86 = v6 + 56;
  v87 = v11;
  while (1)
  {
    v16 = (*(v6 + 48) + 16 * v10);
    v18 = *v16;
    v17 = v16[1];
    v19 = v17 >> 62;
    if (v17 >> 62 == 3)
    {
      if (v18)
      {
        v20 = 0;
      }

      else
      {
        v20 = v17 == 0xC000000000000000;
      }

      v22 = !v20 || a3 >> 62 != 3;
      if (((v22 | v88) & 1) == 0)
      {
        v75 = 0;
        v76 = 0xC000000000000000;
LABEL_142:
        sub_1B0391D50(v75, v76);
LABEL_143:
        v77 = *(*(v6 + 48) + 16 * v10);
        *a1 = v77;
        sub_1B03B2000(v77, *(&v77 + 1));
        return 0;
      }

LABEL_36:
      v23 = 0;
      if (v12 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v19 > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_36;
      }

      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      v26 = __OFSUB__(v24, v25);
      v23 = v24 - v25;
      if (v26)
      {
        goto LABEL_147;
      }

      if (v12 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v19)
    {
      LODWORD(v23) = HIDWORD(v18) - v18;
      if (__OFSUB__(HIDWORD(v18), v18))
      {
        goto LABEL_146;
      }

      v23 = v23;
      if (v12 <= 1)
      {
LABEL_33:
        v27 = BYTE6(a3);
        if (v12)
        {
          v27 = HIDWORD(a2) - a2;
          if (v85)
          {
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v23 = BYTE6(v17);
      if (v12 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v12 != 2)
    {
      if (!v23)
      {
        goto LABEL_140;
      }

      goto LABEL_13;
    }

    v29 = *(a2 + 16);
    v28 = *(a2 + 24);
    v26 = __OFSUB__(v28, v29);
    v27 = v28 - v29;
    if (v26)
    {
      goto LABEL_145;
    }

LABEL_39:
    if (v23 != v27)
    {
      goto LABEL_13;
    }

    if (v23 < 1)
    {
      goto LABEL_140;
    }

    if (v19 > 1)
    {
      break;
    }

    if (v19)
    {
      if (v18 > v18 >> 32)
      {
        goto LABEL_148;
      }

      sub_1B03B2000(v18, v17);
      v40 = sub_1B0E42A98();
      if (v40)
      {
        v41 = v40;
        v42 = sub_1B0E42AC8();
        if (__OFSUB__(v18, v42))
        {
          goto LABEL_150;
        }

        v39 = (v18 - v42 + v41);
      }

      else
      {
        v39 = 0;
      }

      sub_1B0E42AB8();
      v11 = v87;
      if (v12 == 2)
      {
        v67 = *(a2 + 16);
        v79 = *(a2 + 24);
        v49 = sub_1B0E42A98();
        if (v49)
        {
          v68 = sub_1B0E42AC8();
          if (__OFSUB__(v67, v68))
          {
            goto LABEL_164;
          }

          v49 += v67 - v68;
        }

        v26 = __OFSUB__(v79, v67);
        v69 = v79 - v67;
        if (v26)
        {
          goto LABEL_160;
        }

        result = sub_1B0E42AB8();
        if (result >= v69)
        {
          v52 = v69;
        }

        else
        {
          v52 = result;
        }

        if (!v39)
        {
          goto LABEL_176;
        }

        v8 = v86;
        v11 = v87;
        if (!v49)
        {
          goto LABEL_175;
        }
      }

      else
      {
        if (v12 != 1)
        {
          v8 = v86;
          *__s1 = a2;
          *&__s1[8] = a3;
          __s1[10] = BYTE2(a3);
          __s1[11] = BYTE3(a3);
          __s1[12] = BYTE4(a3);
          __s1[13] = BYTE5(a3);
          if (!v39)
          {
            goto LABEL_171;
          }

          goto LABEL_138;
        }

        if (v81 < a2)
        {
          goto LABEL_159;
        }

        v49 = sub_1B0E42A98();
        if (v49)
        {
          v53 = sub_1B0E42AC8();
          if (__OFSUB__(a2, v53))
          {
            goto LABEL_166;
          }

          v49 += a2 - v53;
        }

        result = sub_1B0E42AB8();
        v52 = (a2 >> 32) - a2;
        if (result < v80)
        {
          v52 = result;
        }

        if (!v39)
        {
          goto LABEL_180;
        }

        v8 = v86;
        if (!v49)
        {
          goto LABEL_179;
        }
      }

      goto LABEL_135;
    }

    *__s1 = v18;
    *&__s1[8] = v17;
    __s1[10] = BYTE2(v17);
    __s1[11] = BYTE3(v17);
    __s1[12] = BYTE4(v17);
    __s1[13] = BYTE5(v17);
    if (!v12)
    {
      goto LABEL_69;
    }

    if (v12 == 1)
    {
      if (v81 < a2)
      {
        goto LABEL_152;
      }

      sub_1B03B2000(v18, v17);
      v30 = sub_1B0E42A98();
      if (!v30)
      {
        goto LABEL_174;
      }

      v31 = v30;
      v32 = sub_1B0E42AC8();
      if (__OFSUB__(a2, v32))
      {
        goto LABEL_156;
      }

      v33 = (a2 - v32 + v31);
      v34 = sub_1B0E42AB8();
      if (!v33)
      {
        goto LABEL_172;
      }

      goto LABEL_109;
    }

    v55 = *(a2 + 16);
    v54 = *(a2 + 24);
    sub_1B03B2000(v18, v17);
    v45 = sub_1B0E42A98();
    if (v45)
    {
      v56 = sub_1B0E42AC8();
      if (__OFSUB__(v55, v56))
      {
        goto LABEL_161;
      }

      v45 += v55 - v56;
    }

    v26 = __OFSUB__(v54, v55);
    v47 = v54 - v55;
    if (v26)
    {
      goto LABEL_153;
    }

    v48 = sub_1B0E42AB8();
    v6 = v84;
    if (!v45)
    {
      goto LABEL_170;
    }

LABEL_100:
    if (v48 >= v47)
    {
      v57 = v47;
    }

    else
    {
      v57 = v48;
    }

    v58 = memcmp(__s1, v45, v57);
    sub_1B0391D50(v18, v17);
    v8 = v86;
    v11 = v87;
    if (!v58)
    {
LABEL_140:
      v75 = a2;
      v76 = a3;
      goto LABEL_142;
    }

LABEL_13:
    v10 = (v10 + 1) & v11;
    if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_141;
    }
  }

  if (v19 == 2)
  {
    v35 = *(v18 + 16);
    sub_1B03B2000(v18, v17);
    v36 = sub_1B0E42A98();
    if (v36)
    {
      v37 = v36;
      v38 = sub_1B0E42AC8();
      if (__OFSUB__(v35, v38))
      {
        goto LABEL_149;
      }

      v39 = (v35 - v38 + v37);
    }

    else
    {
      v39 = 0;
    }

    sub_1B0E42AB8();
    v11 = v87;
    if (v12 != 2)
    {
      if (v12 == 1)
      {
        if (v81 < a2)
        {
          goto LABEL_155;
        }

        v49 = sub_1B0E42A98();
        if (v49)
        {
          v50 = sub_1B0E42AC8();
          if (__OFSUB__(a2, v50))
          {
            goto LABEL_165;
          }

          v49 += a2 - v50;
        }

        result = sub_1B0E42AB8();
        v52 = (a2 >> 32) - a2;
        if (result < v80)
        {
          v52 = result;
        }

        if (!v39)
        {
          goto LABEL_178;
        }

        v8 = v86;
        if (!v49)
        {
          goto LABEL_177;
        }

        goto LABEL_135;
      }

      v8 = v86;
      *__s1 = a2;
      *&__s1[8] = a3;
      __s1[10] = BYTE2(a3);
      __s1[11] = BYTE3(a3);
      __s1[12] = BYTE4(a3);
      __s1[13] = BYTE5(a3);
      if (!v39)
      {
        goto LABEL_169;
      }

LABEL_138:
      v72 = __s1;
      v71 = v39;
      v70 = BYTE6(a3);
LABEL_139:
      v73 = memcmp(v71, v72, v70);
      sub_1B0391D50(v18, v17);
      v6 = v84;
      if (!v73)
      {
        goto LABEL_140;
      }

      goto LABEL_13;
    }

    v64 = *(a2 + 16);
    v78 = *(a2 + 24);
    v49 = sub_1B0E42A98();
    if (v49)
    {
      v65 = sub_1B0E42AC8();
      if (__OFSUB__(v64, v65))
      {
        goto LABEL_163;
      }

      v49 += v64 - v65;
    }

    v26 = __OFSUB__(v78, v64);
    v66 = v78 - v64;
    if (v26)
    {
      goto LABEL_158;
    }

    result = sub_1B0E42AB8();
    if (result >= v66)
    {
      v52 = v66;
    }

    else
    {
      v52 = result;
    }

    if (!v39)
    {
      goto LABEL_182;
    }

    v8 = v86;
    v11 = v87;
    if (!v49)
    {
      goto LABEL_181;
    }

LABEL_135:
    if (v39 == v49)
    {
      sub_1B0391D50(a2, a3);
      sub_1B0391D50(v18, v17);
      v6 = v84;
      goto LABEL_143;
    }

    v70 = v52;
    v71 = v39;
    v72 = v49;
    goto LABEL_139;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (!v12)
  {
LABEL_69:
    __s2 = a2;
    v90 = a3;
    v91 = BYTE2(a3);
    v92 = BYTE3(a3);
    v93 = BYTE4(a3);
    v94 = BYTE5(a3);
    if (!memcmp(__s1, &__s2, BYTE6(a3)))
    {
      goto LABEL_140;
    }

    goto LABEL_13;
  }

  if (v12 == 2)
  {
    v44 = *(a2 + 16);
    v43 = *(a2 + 24);
    sub_1B03B2000(v18, v17);
    v45 = sub_1B0E42A98();
    if (v45)
    {
      v46 = sub_1B0E42AC8();
      if (__OFSUB__(v44, v46))
      {
        goto LABEL_162;
      }

      v45 += v44 - v46;
    }

    v26 = __OFSUB__(v43, v44);
    v47 = v43 - v44;
    if (v26)
    {
      goto LABEL_154;
    }

    v48 = sub_1B0E42AB8();
    v6 = v84;
    if (!v45)
    {
      goto LABEL_173;
    }

    goto LABEL_100;
  }

  if (v81 < a2)
  {
    goto LABEL_151;
  }

  sub_1B03B2000(v18, v17);
  v59 = sub_1B0E42A98();
  if (v59)
  {
    v60 = v59;
    v61 = sub_1B0E42AC8();
    if (__OFSUB__(a2, v61))
    {
      goto LABEL_157;
    }

    v33 = (a2 - v61 + v60);
    v34 = sub_1B0E42AB8();
    if (!v33)
    {
      goto LABEL_168;
    }

LABEL_109:
    if (v34 >= v80)
    {
      v62 = (a2 >> 32) - a2;
    }

    else
    {
      v62 = v34;
    }

    v63 = memcmp(__s1, v33, v62);
    sub_1B0391D50(v18, v17);
    v8 = v86;
    if (!v63)
    {
      goto LABEL_140;
    }

    goto LABEL_13;
  }

  sub_1B0E42AB8();
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  result = sub_1B0E42AB8();
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
  return result;
}

uint64_t sub_1B0B028E4(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - v10;
  v12 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v12 < 0)
    {
      v13 = *v2;
    }

    else
    {
      v13 = v12 & 0xFFFFFFFFFFFFFF8;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v14 = sub_1B0E46148();

    if (v14)
    {

      v35 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43B8, &unk_1B0EC5100);
      swift_dynamicCast();
      result = 0;
      *a1 = v36[0];
    }

    else
    {
      result = sub_1B0E46138();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        sub_1B0B02EE4(v13, result + 1);
        v28 = v27;
        v36[0] = v27;
        v29 = *(v27 + 16);
        if (*(v27 + 24) <= v29)
        {
          sub_1B0B044D0(v29 + 1);
          v28 = v36[0];
        }

        sub_1B0B05740(v30, v28);

        *v3 = v28;
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    v31 = v2;
    v32 = a1;
    sub_1B0E46C28();
    v16 = *(*a2 + 96);
    swift_beginAccess();
    v33 = v16;
    sub_1B0B0D400(a2 + v16, v11, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1B0B50244(v36);
    sub_1B0B0D468(v11, type metadata accessor for MoveAndCopyMessages.CommandID);
    v17 = sub_1B0E46CB8();
    v18 = -1 << *(v12 + 32);
    v19 = v17 & ~v18;
    if ((*(v12 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
    {
      v20 = ~v18;
      while (1)
      {
        v21 = *(*(v12 + 48) + 8 * v19);
        v22 = *(*v21 + 96);
        swift_beginAccess();
        sub_1B0B0D400(v21 + v22, v11, type metadata accessor for MoveAndCopyMessages.CommandID);
        sub_1B0B0D400(a2 + v33, v8, type metadata accessor for MoveAndCopyMessages.CommandID);
        v23 = sub_1B0B57E4C(v11, v8);
        sub_1B0B0D468(v8, type metadata accessor for MoveAndCopyMessages.CommandID);
        sub_1B0B0D468(v11, type metadata accessor for MoveAndCopyMessages.CommandID);
        if (v23)
        {
          break;
        }

        v19 = (v19 + 1) & v20;
        if (((*(v12 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      *v32 = *(*(v12 + 48) + 8 * v19);

      return 0;
    }

    else
    {
LABEL_11:
      v24 = v31;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = *v24;

      sub_1B0B06A64(v26, v19, isUniquelyReferenced_nonNull_native);
      *v24 = v34;
      *v32 = a2;
      return 1;
    }
  }

  return result;
}

uint64_t sub_1B0B02C9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = a1;
  v5 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1B0E46C28();
  sub_1B0B50244(v20);
  v10 = sub_1B0E46CB8();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_1B0B0D400(*(v9 + 48) + v14 * v12, v8, type metadata accessor for MoveAndCopyMessages.CommandID);
      v15 = sub_1B0B57E4C(v8, a2);
      sub_1B0B0D468(v8, type metadata accessor for MoveAndCopyMessages.CommandID);
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

    sub_1B0B0D468(a2, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1B0B0D400(*(v9 + 48) + v14 * v12, v19, type metadata accessor for MoveAndCopyMessages.CommandID);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1B0B0D400(a2, v8, type metadata accessor for MoveAndCopyMessages.CommandID);
    v20[0] = *v3;
    sub_1B0B06D44(v8, v12, isUniquelyReferenced_nonNull_native);
    v17 = v19;
    *v3 = v20[0];
    sub_1B0B0D530(a2, v17);
    return 1;
  }
}

void sub_1B0B02EE4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v57 = &v56 - v4;
  v5 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v56 - v9;
  if (!a2)
  {
    swift_unknownObjectRelease();
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43C0, &unk_1B0EC5110);
  v11 = sub_1B0E46218();
  v77 = v11;
  v12 = sub_1B0E460F8();
  v13 = sub_1B0E46168();
  if (!v13)
  {
LABEL_48:

    return;
  }

  v62 = v5;
  v61 = v7;
  v60 = v10;
  v59 = v12;
  while (1)
  {
    *&v71 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43B8, &unk_1B0EC5100);
    swift_dynamicCast();
    v15 = *(v11 + 16);
    if (*(v11 + 24) <= v15)
    {
      sub_1B0B044D0(v15 + 1);
      v11 = v77;
    }

    v16 = v76;
    sub_1B0E46C28();
    v17 = *(*v16 + 96);
    swift_beginAccess();
    sub_1B0B0D400(v16 + v17, v10, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1B0B0D400(v10, v7, type metadata accessor for MoveAndCopyMessages.CommandID);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      break;
    }

    if (EnumCaseMultiPayload != 2)
    {
      MEMORY[0x1B2728D70](1);
      goto LABEL_39;
    }

    v64 = v16;
    v63 = v11;
    v65 = *v7;
    v20 = *(v7 + 2);
    v21 = *(v7 + 2);
    MEMORY[0x1B2728D70](3);
    MEMORY[0x1B2728D70](v20 | (v20 << 32));
    v22 = 1 << *(v21 + 32);
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 & *(v21 + 64);
    v25 = (v22 + 63) >> 6;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v26 = 0;
    v27 = 0;
    if (v24)
    {
      while (1)
      {
        v28 = v27;
LABEL_20:
        v29 = (*(v21 + 56) + 16 * (__clz(__rbit64(v24)) | (v28 << 6)));
        v30 = *v29;
        v31 = v29[1];
        sub_1B03B2000(*v29, v31);
        if (v31 >> 60 == 15)
        {
          break;
        }

        v24 &= v24 - 1;
        v68 = v73;
        v69 = v74;
        v70 = v75;
        v67 = v72;
        v66 = v71;
        sub_1B0E46C88();
        sub_1B0E42F48();
        sub_1B0391D50(v30, v31);
        v26 ^= sub_1B0E46CB8();
        v27 = v28;
        if (!v24)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      while (1)
      {
LABEL_17:
        v28 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          goto LABEL_51;
        }

        if (v28 >= v25)
        {
          break;
        }

        v24 = *(v21 + 64 + 8 * v28);
        ++v27;
        if (v24)
        {
          goto LABEL_20;
        }
      }
    }

    MEMORY[0x1B2728D70](v26);

LABEL_37:

    v7 = v61;
    v10 = v60;
    v11 = v63;
LABEL_38:
    v16 = v64;
LABEL_39:
    sub_1B0B0D468(v10, type metadata accessor for MoveAndCopyMessages.CommandID);
    v47 = sub_1B0E46CB8();
    v48 = v11 + 56;
    v49 = -1 << *(v11 + 32);
    v50 = v47 & ~v49;
    v51 = v50 >> 6;
    if (((-1 << v50) & ~*(v11 + 56 + 8 * (v50 >> 6))) == 0)
    {
      v52 = 0;
      v53 = (63 - v49) >> 6;
      while (++v51 != v53 || (v52 & 1) == 0)
      {
        v54 = v51 == v53;
        if (v51 == v53)
        {
          v51 = 0;
        }

        v52 |= v54;
        v55 = *(v48 + 8 * v51);
        if (v55 != -1)
        {
          v14 = __clz(__rbit64(~v55)) + (v51 << 6);
          goto LABEL_5;
        }
      }

      goto LABEL_52;
    }

    v14 = __clz(__rbit64((-1 << v50) & ~*(v11 + 56 + 8 * (v50 >> 6)))) | v50 & 0x7FFFFFFFFFFFFFC0;
LABEL_5:
    *(v48 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
    *(*(v11 + 48) + 8 * v14) = v16;
    ++*(v11 + 16);
    v13 = sub_1B0E46168();
    if (!v13)
    {
      goto LABEL_48;
    }
  }

  v64 = v16;
  if (!EnumCaseMultiPayload)
  {
    v19 = v57;
    sub_1B03C60A4(v7, v57, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    MEMORY[0x1B2728D70](0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
    sub_1B0B0D328();
    sub_1B0E447C8();
    sub_1B0398EFC(v19, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    goto LABEL_38;
  }

  v63 = v11;
  v58 = *v7;
  v32 = *(v7 + 2);
  v33 = *(v7 + 2);
  MEMORY[0x1B2728D70](2);
  MEMORY[0x1B2728D70](v32 | (v32 << 32));
  v34 = v33 + 64;
  v35 = 1 << *(v33 + 32);
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  else
  {
    v36 = -1;
  }

  v37 = v36 & *(v33 + 64);
  v38 = (v35 + 63) >> 6;
  v65 = v33;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v39 = 0;
  for (i = 0; v37; v39 ^= sub_1B0E46CB8())
  {
    v41 = i;
LABEL_32:
    v42 = __clz(__rbit64(v37));
    v37 &= v37 - 1;
    v43 = (*(v65 + 56) + 24 * (v42 | (v41 << 6)));
    v44 = *v43;
    v45 = *(v43 + 1);
    v46 = *(v43 + 2);
    sub_1B03B2000(v45, v46);
    v68 = v73;
    v69 = v74;
    v70 = v75;
    v67 = v72;
    v66 = v71;
    sub_1B0E46C88();
    MEMORY[0x1B2728D70](v44);
    sub_1B03B2000(v45, v46);
    sub_1B0E42F48();
    sub_1B0391D50(v45, v46);
    sub_1B0391D50(v45, v46);
  }

  while (1)
  {
    v41 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v41 >= v38)
    {

      MEMORY[0x1B2728D70](v39);

      goto LABEL_37;
    }

    v37 = *(v34 + 8 * v41);
    ++i;
    if (v37)
    {
      i = v41;
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
}

uint64_t sub_1B0B03644(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4338, &qword_1B0EC5080);
  result = sub_1B0E46208();
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_1B0E46C28();
      v18 = v17 - 2;
      if ((v17 - 2) >= 3)
      {
        MEMORY[0x1B2728D70](3);
        v18 = v17 & 1;
      }

      MEMORY[0x1B2728D70](v18);
      result = sub_1B0E46CB8();
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
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

LABEL_32:
        __break(1u);
        return result;
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
        goto LABEL_32;
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
  return result;
}

uint64_t sub_1B0B038B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43E8, &qword_1B0EC5150);
  result = sub_1B0E46208();
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
      v20 = *v18;
      v19 = v18[1];
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v19);
      result = sub_1B0E46CB8();
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
      *v14 = v20;
      v14[1] = v19;
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

uint64_t sub_1B0B03B0C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4360, &qword_1B0EC50A8);
  result = sub_1B0E46208();
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v17);
      result = sub_1B0E46CB8();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
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

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B0B03D5C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4450, &qword_1B0EC51C8);
  result = sub_1B0E46208();
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
      sub_1B0E46C28();
      sub_1B0E44BB8();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      result = sub_1B0E46CB8();
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

uint64_t sub_1B0B03FD8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4410, &unk_1B0EC5180);
  result = sub_1B0E46208();
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
      v20 = *v18;
      v19 = v18[1];
      sub_1B0E46C28();
      if (v19)
      {
        MEMORY[0x1B2728D70](0);
        sub_1B0E44BB8();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      }

      else
      {
        MEMORY[0x1B2728D70](1);
      }

      result = sub_1B0E46CB8();
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

LABEL_33:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v19;
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

uint64_t sub_1B0B04270(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43B0, &qword_1B0EC50F8);
  result = sub_1B0E46208();
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
      sub_1B0E46C28();
      sub_1B0E42F48();
      result = sub_1B0E46CB8();
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

void sub_1B0B044D0(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v67 = &v64 - v4;
  v5 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v64 - v9;
  v11 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43C0, &unk_1B0EC5110);
  v12 = sub_1B0E46208();
  v13 = v12;
  if (!*(v11 + 16))
  {
    goto LABEL_58;
  }

  v65 = v1;
  v14 = 0;
  v15 = *(v11 + 56);
  v68 = (v11 + 56);
  v16 = 1 << *(v11 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v73 = v11;
  v72 = v5;
  v71 = v12;
  v70 = v7;
  v69 = v10;
  v74 = v19;
  v75 = v12 + 56;
LABEL_8:
  if (v18)
  {
    v21 = __clz(__rbit64(v18));
    v78 = (v18 - 1) & v18;
    goto LABEL_15;
  }

  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      goto LABEL_60;
    }

    if (v14 >= v19)
    {
      break;
    }

    v23 = v68[v14];
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v78 = (v23 - 1) & v23;
LABEL_15:
      v24 = *(*(v11 + 48) + 8 * (v21 | (v14 << 6)));
      sub_1B0E46C28();
      v25 = *(*v24 + 96);
      swift_beginAccess();
      v77 = v24;
      sub_1B0B0D400(v24 + v25, v10, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1B0B0D400(v10, v7, type metadata accessor for MoveAndCopyMessages.CommandID);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          v27 = v67;
          sub_1B03C60A4(v7, v67, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          MEMORY[0x1B2728D70](0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
          sub_1B0B0D328();
          sub_1B0E447C8();
          sub_1B0398EFC(v27, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          goto LABEL_45;
        }

        v66 = *v7;
        v40 = *(v7 + 2);
        v41 = *(v7 + 2);
        MEMORY[0x1B2728D70](2);
        MEMORY[0x1B2728D70](v40 | (v40 << 32));
        v42 = v41 + 64;
        v43 = 1 << *(v41 + 32);
        if (v43 < 64)
        {
          v44 = ~(-1 << v43);
        }

        else
        {
          v44 = -1;
        }

        v45 = v44 & *(v41 + 64);
        v46 = (v43 + 63) >> 6;
        v76 = v41;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v47 = 0;
        for (i = 0; v45; v47 = sub_1B0E46CB8() ^ v79)
        {
          v79 = v47;
          v49 = i;
LABEL_39:
          v50 = __clz(__rbit64(v45));
          v45 &= v45 - 1;
          v51 = (*(v76 + 56) + 24 * (v50 | (v49 << 6)));
          v52 = *v51;
          v54 = *(v51 + 1);
          v53 = *(v51 + 2);
          sub_1B03B2000(v54, v53);
          v82 = v87;
          v83 = v88;
          v84 = v89;
          v81 = v86;
          v80 = v85;
          sub_1B0E46C88();
          MEMORY[0x1B2728D70](v52);
          sub_1B03B2000(v54, v53);
          sub_1B0E42F48();
          sub_1B0391D50(v54, v53);
          sub_1B0391D50(v54, v53);
        }

        while (1)
        {
          v49 = i + 1;
          if (__OFADD__(i, 1))
          {
            break;
          }

          if (v49 >= v46)
          {

            MEMORY[0x1B2728D70](v47);

            goto LABEL_44;
          }

          v45 = *(v42 + 8 * v49);
          ++i;
          if (v45)
          {
            v79 = v47;
            i = v49;
            goto LABEL_39;
          }
        }

        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        return;
      }

      if (EnumCaseMultiPayload == 2)
      {
        v76 = *v7;
        v28 = *(v7 + 2);
        v29 = *(v7 + 2);
        MEMORY[0x1B2728D70](3);
        MEMORY[0x1B2728D70](v28 | (v28 << 32));
        v30 = 1 << *(v29 + 32);
        if (v30 < 64)
        {
          v31 = ~(-1 << v30);
        }

        else
        {
          v31 = -1;
        }

        v32 = v31 & *(v29 + 64);
        v33 = (v30 + 63) >> 6;
        v79 = v29;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v34 = 0;
        v35 = 0;
        if (v32)
        {
          while (1)
          {
            v36 = v35;
LABEL_27:
            v37 = (*(v79 + 56) + 16 * (__clz(__rbit64(v32)) | (v36 << 6)));
            v39 = *v37;
            v38 = v37[1];
            sub_1B03B2000(*v37, v38);
            if (v38 >> 60 == 15)
            {
              break;
            }

            v32 &= v32 - 1;
            v82 = v87;
            v83 = v88;
            v84 = v89;
            v81 = v86;
            v80 = v85;
            sub_1B0E46C88();
            sub_1B0E42F48();
            sub_1B0391D50(v39, v38);
            v34 ^= sub_1B0E46CB8();
            v35 = v36;
            if (!v32)
            {
              goto LABEL_24;
            }
          }
        }

        else
        {
          while (1)
          {
LABEL_24:
            v36 = v35 + 1;
            if (__OFADD__(v35, 1))
            {
              goto LABEL_61;
            }

            if (v36 >= v33)
            {
              break;
            }

            v32 = *(v29 + 64 + 8 * v36);
            ++v35;
            if (v32)
            {
              goto LABEL_27;
            }
          }
        }

        MEMORY[0x1B2728D70](v34);

LABEL_44:

        v11 = v73;
        v13 = v71;
        v7 = v70;
        v10 = v69;
      }

      else
      {
        MEMORY[0x1B2728D70](1);
      }

LABEL_45:
      sub_1B0B0D468(v10, type metadata accessor for MoveAndCopyMessages.CommandID);
      v55 = sub_1B0E46CB8();
      v56 = -1 << *(v13 + 32);
      v57 = v55 & ~v56;
      v58 = v57 >> 6;
      if (((-1 << v57) & ~*(v75 + 8 * (v57 >> 6))) == 0)
      {
        v59 = 0;
        v60 = (63 - v56) >> 6;
        while (++v58 != v60 || (v59 & 1) == 0)
        {
          v61 = v58 == v60;
          if (v58 == v60)
          {
            v58 = 0;
          }

          v59 |= v61;
          v62 = *(v75 + 8 * v58);
          if (v62 != -1)
          {
            v20 = __clz(__rbit64(~v62)) + (v58 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_62;
      }

      v20 = __clz(__rbit64((-1 << v57) & ~*(v75 + 8 * (v57 >> 6)))) | v57 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v75 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v13 + 48) + 8 * v20) = v77;
      ++*(v13 + 16);
      v19 = v74;
      v18 = v78;
      goto LABEL_8;
    }
  }

  v63 = 1 << *(v11 + 32);
  if (v63 >= 64)
  {
    bzero(v68, ((v63 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
  }

  else
  {
    *v68 = -1 << v63;
  }

  v2 = v65;
  *(v11 + 16) = 0;
LABEL_58:

  *v2 = v13;
}

void sub_1B0B04CC0(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v68 = v67 - v4;
  v5 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v67 - v10;
  v12 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4538, &qword_1B0EC52D0);
  v13 = sub_1B0E46208();
  v14 = v13;
  if (!*(v12 + 16))
  {
    goto LABEL_60;
  }

  v67[0] = v1;
  v15 = 0;
  v16 = *(v12 + 56);
  v69 = (v12 + 56);
  v17 = 1 << *(v12 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v5;
  v20 = v18 & v16;
  v21 = (v17 + 63) >> 6;
  v77 = v13 + 56;
  v75 = v12;
  v74 = v19;
  v73 = v6;
  v72 = v13;
  v71 = v8;
  v70 = v11;
  v76 = v21;
LABEL_8:
  if (v20)
  {
    v23 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    goto LABEL_15;
  }

  v24 = v15;
  while (1)
  {
    v15 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      goto LABEL_62;
    }

    if (v15 >= v21)
    {
      break;
    }

    v25 = v69[v15];
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v20 = (v25 - 1) & v25;
LABEL_15:
      v26 = *(v12 + 48);
      v80 = *(v6 + 72);
      sub_1B0B0D530(v26 + v80 * (v23 | (v15 << 6)), v11);
      sub_1B0E46C28();
      sub_1B0B0D400(v11, v8, type metadata accessor for MoveAndCopyMessages.CommandID);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        v78 = v20;
        if (!EnumCaseMultiPayload)
        {
          v28 = v12;
          v29 = v19;
          v30 = v68;
          sub_1B03C60A4(v8, v68, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          MEMORY[0x1B2728D70](0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
          sub_1B0B0D328();
          sub_1B0E447C8();
          sub_1B0398EFC(v30, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          goto LABEL_44;
        }

        v67[1] = *v8;
        v43 = *(v8 + 2);
        v44 = *(v8 + 2);
        MEMORY[0x1B2728D70](2);
        MEMORY[0x1B2728D70](v43 | (v43 << 32));
        v45 = v44 + 64;
        v46 = 1 << *(v44 + 32);
        if (v46 < 64)
        {
          v47 = ~(-1 << v46);
        }

        else
        {
          v47 = -1;
        }

        v48 = v47 & *(v44 + 64);
        v49 = (v46 + 63) >> 6;
        v79 = v44;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v50 = 0;
        for (i = 0; v48; v50 = sub_1B0E46CB8() ^ v81)
        {
          v81 = v50;
          v52 = i;
LABEL_40:
          v53 = __clz(__rbit64(v48));
          v48 &= v48 - 1;
          v54 = (*(v79 + 56) + 24 * (v53 | (v52 << 6)));
          v55 = *v54;
          v56 = *(v54 + 1);
          v57 = *(v54 + 2);
          sub_1B03B2000(v56, v57);
          v84 = v89;
          v85 = v90;
          v86 = v91;
          v82 = v87;
          v83 = v88;
          sub_1B0E46C88();
          MEMORY[0x1B2728D70](v55);
          sub_1B03B2000(v56, v57);
          sub_1B0E42F48();
          sub_1B0391D50(v56, v57);
          sub_1B0391D50(v56, v57);
        }

        v21 = v76;
        while (1)
        {
          v52 = i + 1;
          if (__OFADD__(i, 1))
          {
            break;
          }

          if (v52 >= v49)
          {

            MEMORY[0x1B2728D70](v50);

            v28 = v75;
            v29 = v74;
            v6 = v73;
            v14 = v72;
            v8 = v71;
            v11 = v70;
            goto LABEL_46;
          }

          v48 = *(v45 + 8 * v52);
          ++i;
          if (v48)
          {
            v81 = v50;
            i = v52;
            goto LABEL_40;
          }
        }

        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        return;
      }

      if (EnumCaseMultiPayload == 2)
      {
        v78 = v20;
        v79 = *v8;
        v31 = *(v8 + 2);
        v32 = *(v8 + 2);
        MEMORY[0x1B2728D70](3);
        MEMORY[0x1B2728D70](v31 | (v31 << 32));
        v33 = 1 << *(v32 + 32);
        if (v33 < 64)
        {
          v34 = ~(-1 << v33);
        }

        else
        {
          v34 = -1;
        }

        v35 = v34 & *(v32 + 64);
        v36 = (v33 + 63) >> 6;
        v81 = v32;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v37 = 0;
        v38 = 0;
        if (v35)
        {
          while (1)
          {
            v39 = v38;
LABEL_27:
            v40 = (*(v81 + 56) + 16 * (__clz(__rbit64(v35)) | (v39 << 6)));
            v42 = *v40;
            v41 = v40[1];
            sub_1B03B2000(*v40, v41);
            if (v41 >> 60 == 15)
            {
              break;
            }

            v35 &= v35 - 1;
            v84 = v89;
            v85 = v90;
            v86 = v91;
            v82 = v87;
            v83 = v88;
            sub_1B0E46C88();
            sub_1B0E42F48();
            sub_1B0391D50(v42, v41);
            v37 ^= sub_1B0E46CB8();
            v38 = v39;
            if (!v35)
            {
              goto LABEL_24;
            }
          }
        }

        else
        {
          while (1)
          {
LABEL_24:
            v39 = v38 + 1;
            if (__OFADD__(v38, 1))
            {
              goto LABEL_63;
            }

            if (v39 >= v36)
            {
              break;
            }

            v35 = *(v32 + 64 + 8 * v39);
            ++v38;
            if (v35)
            {
              goto LABEL_27;
            }
          }
        }

        MEMORY[0x1B2728D70](v37);

        v28 = v75;
        v29 = v74;
        v6 = v73;
        v14 = v72;
        v8 = v71;
        v11 = v70;
LABEL_44:
        v21 = v76;
LABEL_46:
        v20 = v78;
      }

      else
      {
        v28 = v12;
        v29 = v19;
        MEMORY[0x1B2728D70](1);
      }

      v58 = sub_1B0E46CB8();
      v59 = -1 << *(v14 + 32);
      v60 = v58 & ~v59;
      v61 = v60 >> 6;
      if (((-1 << v60) & ~*(v77 + 8 * (v60 >> 6))) == 0)
      {
        v62 = 0;
        v63 = (63 - v59) >> 6;
        v19 = v29;
        v12 = v28;
        while (++v61 != v63 || (v62 & 1) == 0)
        {
          v64 = v61 == v63;
          if (v61 == v63)
          {
            v61 = 0;
          }

          v62 |= v64;
          v65 = *(v77 + 8 * v61);
          if (v65 != -1)
          {
            v22 = __clz(__rbit64(~v65)) + (v61 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_64;
      }

      v22 = __clz(__rbit64((-1 << v60) & ~*(v77 + 8 * (v60 >> 6)))) | v60 & 0x7FFFFFFFFFFFFFC0;
      v19 = v29;
      v12 = v28;
LABEL_7:
      *(v77 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      sub_1B0B0D530(v11, *(v14 + 48) + v22 * v80);
      ++*(v14 + 16);
      goto LABEL_8;
    }
  }

  v66 = 1 << *(v12 + 32);
  if (v66 >= 64)
  {
    bzero(v69, ((v66 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
  }

  else
  {
    *v69 = -1 << v66;
  }

  v2 = v67[0];
  *(v12 + 16) = 0;
LABEL_60:

  *v2 = v14;
}

uint64_t sub_1B0B054C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43E0, &qword_1B0EC5148);
  result = sub_1B0E46208();
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
      v18 = (*(v3 + 48) + 48 * (v15 | (v6 << 6)));
      v27 = *v18;
      v28 = v18[1];
      v29 = v18[2];
      sub_1B0E46C28();
      sub_1B0E461D8();
      result = sub_1B0E46CB8();
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
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
        return result;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 48 * v13);
      *v14 = v27;
      v14[1] = v28;
      v14[2] = v29;
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
  return result;
}

unint64_t sub_1B0B05740(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B0E46C28();
  v7 = *(*a1 + 96);
  swift_beginAccess();
  sub_1B0B0D400(a1 + v7, v6, type metadata accessor for MoveAndCopyMessages.CommandID);
  sub_1B0B50244(v10);
  sub_1B0B0D468(v6, type metadata accessor for MoveAndCopyMessages.CommandID);
  sub_1B0E46CB8();
  result = sub_1B0E460D8();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1B0B05888(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_24;
  }

  if (a3)
  {
    sub_1B0B03644(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1B0B06F74();
      a2 = v7;
      goto LABEL_24;
    }

    sub_1B0B07DAC(v5 + 1);
  }

  v8 = *v3;
  sub_1B0E46C28();
  v9 = v4 - 2;
  if ((v4 - 2) >= 3u)
  {
    MEMORY[0x1B2728D70](3);
    v9 = v4 & 1;
  }

  MEMORY[0x1B2728D70](v9);
  result = sub_1B0E46CB8();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v12 = *(*(v8 + 48) + a2);
      switch(v12)
      {
        case 2:
          if (v4 == 2)
          {
            goto LABEL_23;
          }

          break;
        case 3:
          if (v4 == 3)
          {
            goto LABEL_23;
          }

          break;
        case 4:
          if (v4 == 4)
          {
            goto LABEL_23;
          }

          break;
        default:
          if ((v4 - 2) >= 3u && ((v12 ^ v4) & 1) == 0)
          {
LABEL_23:
            result = sub_1B0E46B98();
            __break(1u);
            goto LABEL_24;
          }

          break;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_24:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + a2) = v4;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v16;
  }

  return result;
}

void sub_1B0B05A54(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 <= v7 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1B0B038B0(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        v9 = a3;
        sub_1B0B0722C();
        a3 = v9;
        goto LABEL_22;
      }

      sub_1B0B07FE8(v7 + 1);
    }

    v10 = *v4;
    sub_1B0E46C28();
    MEMORY[0x1B2728D70](a2);
    v11 = sub_1B0E46CB8();
    v12 = -1 << *(v10 + 32);
    a3 = v11 & ~v12;
    if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v13 = ~v12;
      while (1)
      {
        v14 = (*(v10 + 48) + 16 * a3);
        if (v14[1] == a2)
        {
          v15 = *v14;
          v16 = *(*v14 + 16);
          if (v16 == *(result + 16))
          {
            break;
          }
        }

LABEL_10:
        a3 = (a3 + 1) & v13;
        if (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      if (v16)
      {
        v17 = v15 == result;
      }

      else
      {
        v17 = 1;
      }

      if (!v17)
      {
        v18 = (v15 + 32);
        v19 = (result + 32);
        while (v16)
        {
          if (*v18 != *v19)
          {
            goto LABEL_10;
          }

          ++v18;
          ++v19;
          if (!--v16)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
        goto LABEL_25;
      }

LABEL_21:
      sub_1B0E46B98();
      __break(1u);
    }
  }

LABEL_22:
  v20 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v21 = (*(v20 + 48) + 16 * a3);
  *v21 = result;
  v21[1] = a2;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v20 + 16) = v24;
    return;
  }

LABEL_25:
  __break(1u);
}

uint64_t sub_1B0B05C0C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B0B03B0C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1B03BDF7C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1B0B0821C(v5 + 1);
  }

  v8 = *v3;
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v4);
  result = sub_1B0E46CB8();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B0E46B98();
  __break(1u);
  return result;
}

void sub_1B0B05D58(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1B0B03D5C(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      sub_1B0B0739C();
      goto LABEL_16;
    }

    sub_1B0B0843C(v9 + 1);
  }

  v11 = *v4;
  sub_1B0E46C28();
  sub_1B0E44BB8();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  v12 = sub_1B0E46CB8();
  v13 = -1 << *(v11 + 32);
  a3 = v12 & ~v13;
  if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v14 = ~v13;
    do
    {
      v15 = sub_1B0E44BB8();
      v17 = v16;
      if (v15 == sub_1B0E44BB8() && v17 == v18)
      {
        goto LABEL_19;
      }

      v20 = sub_1B0E46A78();

      if (v20)
      {
        goto LABEL_20;
      }

      a3 = (a3 + 1) & v14;
    }

    while (((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v21 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v22 = (*(v21 + 48) + 16 * a3);
  *v22 = result;
  v22[1] = a2;
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  sub_1B0E46B98();
  __break(1u);
}

void sub_1B0B05F44(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 <= v9 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1B0B03FD8(v9 + 1);
    }

    else
    {
      if (v10 > v9)
      {
        sub_1B0B074F8();
        goto LABEL_23;
      }

      sub_1B0B08694(v9 + 1);
    }

    v11 = *v4;
    sub_1B0E46C28();
    if (a2)
    {
      MEMORY[0x1B2728D70](0);
      sub_1B0E44BB8();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      MEMORY[0x1B2728D70](1);
    }

    v12 = sub_1B0E46CB8();
    v13 = -1 << *(v11 + 32);
    a3 = v12 & ~v13;
    if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v14 = ~v13;
      do
      {
        if (*(*(v11 + 48) + 16 * a3 + 8))
        {
          if (a2)
          {
            v15 = sub_1B0E44BB8();
            v17 = v16;
            if (v15 == sub_1B0E44BB8() && v17 == v18)
            {
              goto LABEL_26;
            }

            v20 = sub_1B0E46A78();

            if (v20)
            {
              goto LABEL_27;
            }
          }
        }

        else if (!a2)
        {
          goto LABEL_27;
        }

        a3 = (a3 + 1) & v14;
      }

      while (((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
    }
  }

LABEL_23:
  v21 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v22 = (*(v21 + 48) + 16 * a3);
  *v22 = result;
  v22[1] = a2;
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
LABEL_26:

LABEL_27:
    sub_1B0E46B98();
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v25;
  }
}

uint64_t sub_1B0B06164(uint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v91 = *MEMORY[0x1E69E9840];
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_143;
  }

  if (a4)
  {
    sub_1B0B04270(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1B0B07650();
      goto LABEL_143;
    }

    sub_1B0B08924(v8 + 1);
  }

  v10 = *v4;
  sub_1B0E46C28();
  sub_1B0E42F48();
  result = sub_1B0E46CB8();
  v11 = v10 + 56;
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
  {
LABEL_143:
    v70 = *v79;
    *(*v79 + 8 * (a3 >> 6) + 56) |= 1 << a3;
    v71 = (*(v70 + 48) + 16 * a3);
    *v71 = v7;
    v71[1] = a2;
    v72 = *(v70 + 16);
    v29 = __OFADD__(v72, 1);
    v73 = v72 + 1;
    if (!v29)
    {
      *(v70 + 16) = v73;
      return result;
    }

LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
  }

  v13 = ~v12;
  v14 = a2 >> 62;
  if (v7)
  {
    v15 = 0;
  }

  else
  {
    v15 = a2 == 0xC000000000000000;
  }

  v16 = !v15;
  v83 = v16;
  v78 = v10;
  v17 = __OFSUB__(HIDWORD(v7), v7);
  v80 = v17;
  v76 = (v7 >> 32) - v7;
  v77 = v7 >> 32;
  v81 = v13;
  v82 = v10 + 56;
  while (1)
  {
    v18 = (*(v10 + 48) + 16 * a3);
    v20 = *v18;
    v19 = v18[1];
    v21 = v19 >> 62;
    if (v19 >> 62 == 3)
    {
      if (v20)
      {
        v22 = 0;
      }

      else
      {
        v22 = v19 == 0xC000000000000000;
      }

      v24 = !v22 || a2 >> 62 != 3;
      if (((v24 | v83) & 1) == 0)
      {
        goto LABEL_185;
      }

LABEL_32:
      v25 = 0;
      goto LABEL_33;
    }

    if (v21 > 1)
    {
      if (v21 != 2)
      {
        goto LABEL_32;
      }

      v36 = *(v20 + 16);
      v35 = *(v20 + 24);
      v29 = __OFSUB__(v35, v36);
      v25 = v35 - v36;
      if (v29)
      {
        goto LABEL_147;
      }
    }

    else if (v21)
    {
      LODWORD(v25) = HIDWORD(v20) - v20;
      if (__OFSUB__(HIDWORD(v20), v20))
      {
        goto LABEL_148;
      }

      v25 = v25;
    }

    else
    {
      v25 = BYTE6(v19);
    }

LABEL_33:
    if (v14 > 1)
    {
      if (v14 != 2)
      {
        if (!v25)
        {
          goto LABEL_185;
        }

        goto LABEL_20;
      }

      v28 = *(v7 + 16);
      v27 = *(v7 + 24);
      v29 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v29)
      {
        goto LABEL_145;
      }
    }

    else
    {
      v26 = BYTE6(a2);
      if (v14)
      {
        v26 = HIDWORD(v7) - v7;
        if (v80)
        {
          __break(1u);
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }
      }
    }

    if (v25 == v26)
    {
      break;
    }

LABEL_20:
    a3 = (a3 + 1) & v13;
    if (((*(v11 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
    {
      goto LABEL_143;
    }
  }

  if (v25 < 1)
  {
    goto LABEL_185;
  }

  if (v21 <= 1)
  {
    if (!v21)
    {
      *__s1 = v20;
      *&__s1[8] = v19;
      __s1[10] = BYTE2(v19);
      __s1[11] = BYTE3(v19);
      __s1[12] = BYTE4(v19);
      __s1[13] = BYTE5(v19);
      if (!v14)
      {
        goto LABEL_97;
      }

      if (v14 == 1)
      {
        if (v77 < v7)
        {
          goto LABEL_152;
        }

        sub_1B03B2000(v20, v19);
        v30 = sub_1B0E42A98();
        if (!v30)
        {
          goto LABEL_175;
        }

        v31 = v30;
        v32 = sub_1B0E42AC8();
        if (__OFSUB__(v7, v32))
        {
          goto LABEL_158;
        }

        v33 = v7 - v32 + v31;
        v34 = sub_1B0E42AB8();
        if (!v33)
        {
          goto LABEL_174;
        }

LABEL_111:
        if (v34 >= v76)
        {
          v55 = (v7 >> 32) - v7;
        }

        else
        {
          v55 = v34;
        }

LABEL_114:
        v59 = __s1;
        v60 = v33;
LABEL_140:
        v69 = memcmp(v59, v60, v55);
        result = sub_1B0391D50(v20, v19);
LABEL_141:
        v13 = v81;
        v11 = v82;
        if (!v69)
        {
          goto LABEL_185;
        }

        goto LABEL_20;
      }

      v53 = *(v7 + 16);
      v52 = *(v7 + 24);
      sub_1B03B2000(v20, v19);
      v33 = sub_1B0E42A98();
      if (v33)
      {
        v54 = sub_1B0E42AC8();
        if (__OFSUB__(v53, v54))
        {
          goto LABEL_162;
        }

        v33 += v53 - v54;
      }

      v29 = __OFSUB__(v52, v53);
      v50 = v52 - v53;
      if (v29)
      {
        goto LABEL_156;
      }

      v51 = sub_1B0E42AB8();
      v10 = v78;
      if (!v33)
      {
        goto LABEL_172;
      }

LABEL_104:
      if (v51 >= v50)
      {
        v55 = v50;
      }

      else
      {
        v55 = v51;
      }

      goto LABEL_114;
    }

    if (v20 > v20 >> 32)
    {
      goto LABEL_149;
    }

    sub_1B03B2000(v20, v19);
    v38 = sub_1B0E42A98();
    if (v38)
    {
      v44 = sub_1B0E42AC8();
      if (__OFSUB__(v20, v44))
      {
        goto LABEL_151;
      }

      v38 += v20 - v44;
    }

    sub_1B0E42AB8();
    if (v14 == 2)
    {
      v65 = *(v7 + 16);
      v75 = *(v7 + 24);
      v40 = sub_1B0E42A98();
      if (v40)
      {
        v66 = sub_1B0E42AC8();
        if (__OFSUB__(v65, v66))
        {
          goto LABEL_166;
        }

        v40 += v65 - v66;
      }

      v29 = __OFSUB__(v75, v65);
      v67 = v75 - v65;
      if (v29)
      {
        goto LABEL_161;
      }

      v68 = sub_1B0E42AB8();
      if (v68 >= v67)
      {
        v43 = v67;
      }

      else
      {
        v43 = v68;
      }

      if (!v38)
      {
        goto LABEL_177;
      }

      if (!v40)
      {
        goto LABEL_176;
      }

      goto LABEL_136;
    }

    if (v14 == 1)
    {
      if (v77 < v7)
      {
        goto LABEL_160;
      }

      v40 = sub_1B0E42A98();
      if (v40)
      {
        v45 = sub_1B0E42AC8();
        if (__OFSUB__(v7, v45))
        {
          goto LABEL_167;
        }

        v40 += v7 - v45;
      }

      v46 = sub_1B0E42AB8();
      v43 = (v7 >> 32) - v7;
      if (v46 < v76)
      {
        v43 = v46;
      }

      if (!v38)
      {
        goto LABEL_181;
      }

      if (!v40)
      {
        goto LABEL_180;
      }

      goto LABEL_136;
    }

    *__s1 = v7;
    *&__s1[8] = a2;
    __s1[10] = BYTE2(a2);
    __s1[11] = BYTE3(a2);
    __s1[12] = BYTE4(a2);
    __s1[13] = BYTE5(a2);
    if (!v38)
    {
      goto LABEL_173;
    }

    goto LABEL_139;
  }

  if (v21 == 2)
  {
    v37 = *(v20 + 16);
    sub_1B03B2000(v20, v19);
    v38 = sub_1B0E42A98();
    if (v38)
    {
      v39 = sub_1B0E42AC8();
      if (__OFSUB__(v37, v39))
      {
        goto LABEL_150;
      }

      v38 += v37 - v39;
    }

    sub_1B0E42AB8();
    if (v14 == 2)
    {
      v61 = *(v7 + 16);
      v74 = *(v7 + 24);
      v40 = sub_1B0E42A98();
      if (v40)
      {
        v62 = sub_1B0E42AC8();
        if (__OFSUB__(v61, v62))
        {
          goto LABEL_164;
        }

        v40 += v61 - v62;
      }

      v29 = __OFSUB__(v74, v61);
      v63 = v74 - v61;
      if (v29)
      {
        goto LABEL_159;
      }

      v64 = sub_1B0E42AB8();
      if (v64 >= v63)
      {
        v43 = v63;
      }

      else
      {
        v43 = v64;
      }

      if (!v38)
      {
        goto LABEL_183;
      }

      if (!v40)
      {
        goto LABEL_182;
      }

      goto LABEL_136;
    }

    if (v14 == 1)
    {
      if (v77 < v7)
      {
        goto LABEL_155;
      }

      v40 = sub_1B0E42A98();
      if (v40)
      {
        v41 = sub_1B0E42AC8();
        if (__OFSUB__(v7, v41))
        {
          goto LABEL_165;
        }

        v40 += v7 - v41;
      }

      v42 = sub_1B0E42AB8();
      v43 = (v7 >> 32) - v7;
      if (v42 < v76)
      {
        v43 = v42;
      }

      if (!v38)
      {
        goto LABEL_179;
      }

      if (!v40)
      {
        goto LABEL_178;
      }

LABEL_136:
      if (v38 == v40)
      {
        goto LABEL_184;
      }

      v69 = memcmp(v38, v40, v43);
      result = sub_1B0391D50(v20, v19);
      v10 = v78;
      goto LABEL_141;
    }

    *__s1 = v7;
    *&__s1[8] = a2;
    __s1[10] = BYTE2(a2);
    __s1[11] = BYTE3(a2);
    __s1[12] = BYTE4(a2);
    __s1[13] = BYTE5(a2);
    if (!v38)
    {
      goto LABEL_170;
    }

LABEL_139:
    v60 = __s1;
    v59 = v38;
    v55 = BYTE6(a2);
    goto LABEL_140;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (!v14)
  {
LABEL_97:
    __s2 = v7;
    v85 = a2;
    v86 = BYTE2(a2);
    v87 = BYTE3(a2);
    v88 = BYTE4(a2);
    v89 = BYTE5(a2);
    result = memcmp(__s1, &__s2, BYTE6(a2));
    if (!result)
    {
      goto LABEL_185;
    }

    goto LABEL_20;
  }

  if (v14 == 2)
  {
    v48 = *(v7 + 16);
    v47 = *(v7 + 24);
    sub_1B03B2000(v20, v19);
    v33 = sub_1B0E42A98();
    if (v33)
    {
      v49 = sub_1B0E42AC8();
      if (__OFSUB__(v48, v49))
      {
        goto LABEL_163;
      }

      v33 += v48 - v49;
    }

    v29 = __OFSUB__(v47, v48);
    v50 = v47 - v48;
    if (v29)
    {
      goto LABEL_154;
    }

    v51 = sub_1B0E42AB8();
    v10 = v78;
    if (!v33)
    {
      goto LABEL_171;
    }

    goto LABEL_104;
  }

  if (v77 < v7)
  {
    goto LABEL_153;
  }

  sub_1B03B2000(v20, v19);
  v56 = sub_1B0E42A98();
  if (v56)
  {
    v57 = v56;
    v58 = sub_1B0E42AC8();
    if (__OFSUB__(v7, v58))
    {
      goto LABEL_157;
    }

    v33 = v7 - v58 + v57;
    v34 = sub_1B0E42AB8();
    if (!v33)
    {
      goto LABEL_169;
    }

    goto LABEL_111;
  }

  sub_1B0E42AB8();
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  sub_1B0E42AB8();
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  sub_1B0391D50(v20, v19);
LABEL_185:
  result = sub_1B0E46B98();
  __break(1u);
  return result;
}

void sub_1B0B06A64(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v30 = v3;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B0B044D0(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1B0B077AC();
      goto LABEL_12;
    }

    sub_1B0B08B60(v12 + 1);
  }

  v14 = *v3;
  sub_1B0E46C28();
  v15 = v32;
  v16 = *(*v32 + 96);
  swift_beginAccess();
  v31 = v16;
  sub_1B0B0D400(v15 + v16, v11, type metadata accessor for MoveAndCopyMessages.CommandID);
  sub_1B0B50244(v33);
  sub_1B0B0D468(v11, type metadata accessor for MoveAndCopyMessages.CommandID);
  v17 = sub_1B0E46CB8();
  v18 = v14 + 56;
  v19 = -1 << *(v14 + 32);
  a2 = v17 & ~v19;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = v14;
    v21 = ~v19;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43B8, &unk_1B0EC5100);
      v22 = *(*(v20 + 48) + 8 * a2);
      v23 = *(*v22 + 96);
      swift_beginAccess();
      sub_1B0B0D400(v22 + v23, v11, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1B0B0D400(v32 + v31, v8, type metadata accessor for MoveAndCopyMessages.CommandID);
      v24 = sub_1B0B57E4C(v11, v8);
      sub_1B0B0D468(v8, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1B0B0D468(v11, type metadata accessor for MoveAndCopyMessages.CommandID);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v21;
    }

    while (((*(v18 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v25 + 48) + 8 * a2) = v32;
  v26 = *(v25 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v25 + 16) = v28;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1B0E46B98();
  __break(1u);
}

uint64_t sub_1B0B06D44(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
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
    sub_1B0B04CC0(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_1B0B07910();
      goto LABEL_12;
    }

    v26 = v10;
    sub_1B0B09350(v13 + 1);
  }

  v15 = *v4;
  sub_1B0E46C28();
  sub_1B0B50244(v27);
  v16 = sub_1B0E46CB8();
  v17 = -1 << *(v15 + 32);
  a2 = v16 & ~v17;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v9 + 72);
    do
    {
      sub_1B0B0D400(*(v15 + 48) + v19 * a2, v12, type metadata accessor for MoveAndCopyMessages.CommandID);
      v20 = sub_1B0B57E4C(v12, a1);
      sub_1B0B0D468(v12, type metadata accessor for MoveAndCopyMessages.CommandID);
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
  result = sub_1B0B0D530(a1, *(v21 + 48) + *(v9 + 72) * a2);
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
  result = sub_1B0E46B98();
  __break(1u);
  return result;
}

void *sub_1B0B06F74()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4338, &qword_1B0EC5080);
  v2 = *v0;
  v3 = sub_1B0E461F8();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void sub_1B0B070C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4330, &qword_1B0EDC420);
  v2 = *v0;
  v3 = sub_1B0E461F8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        LODWORD(v18) = *(v18 + 8);
        v20 = *(v4 + 48) + v17;
        *v20 = v19;
        *(v20 + 8) = v18;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
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
}

void sub_1B0B0722C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43E8, &qword_1B0EC5150);
  v2 = *v0;
  v3 = sub_1B0E461F8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        v19 = *v18;
        v20 = v18[1];
        v21 = (*(v4 + 48) + v17);
        *v21 = v19;
        v21[1] = v20;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
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
}

void sub_1B0B0739C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4450, &qword_1B0EC51C8);
  v2 = *v0;
  v3 = sub_1B0E461F8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
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
}

void sub_1B0B074F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4410, &unk_1B0EC5180);
  v2 = *v0;
  v3 = sub_1B0E461F8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
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
}

void *sub_1B0B07650()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43B0, &qword_1B0EC50F8);
  v2 = *v0;
  v3 = sub_1B0E461F8();
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
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        result = sub_1B03B2000(v18, *(&v18 + 1));
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

void *sub_1B0B077AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43C0, &unk_1B0EC5110);
  v2 = *v0;
  v3 = sub_1B0E461F8();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

void *sub_1B0B07910()
{
  v1 = v0;
  v2 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4538, &qword_1B0EC52D0);
  v6 = *v0;
  v7 = sub_1B0E461F8();
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
        sub_1B0B0D400(*(v6 + 48) + v21, v5, type metadata accessor for MoveAndCopyMessages.CommandID);
        result = sub_1B0B0D530(v5, *(v8 + 48) + v21);
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

void *sub_1B0B07B08(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1B0E461F8();
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
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + 4 * v16) = *(*(v4 + 48) + 4 * v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
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

void *sub_1B0B07C38()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43E0, &qword_1B0EC5148);
  v2 = *v0;
  v3 = sub_1B0E461F8();
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
        result = sub_1B03D0A20(*(v2 + 48) + v17, v21);
        v18 = (*(v4 + 48) + v17);
        v19 = v21[0];
        v20 = v21[2];
        v18[1] = v21[1];
        v18[2] = v20;
        *v18 = v19;
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

uint64_t sub_1B0B07DAC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4338, &qword_1B0EC5080);
  result = sub_1B0E46208();
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_1B0E46C28();
      v17 = v16 - 2;
      if ((v16 - 2) >= 3)
      {
        MEMORY[0x1B2728D70](3);
        v17 = v16 & 1;
      }

      MEMORY[0x1B2728D70](v17);
      result = sub_1B0E46CB8();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_30;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_28;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v5;
  }

  return result;
}

void sub_1B0B07FE8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43E8, &qword_1B0EC5150);
  v4 = sub_1B0E46208();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v19);
      v20 = sub_1B0E46CB8();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
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
}

uint64_t sub_1B0B0821C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4360, &qword_1B0EC50A8);
  result = sub_1B0E46208();
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v16);
      result = sub_1B0E46CB8();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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

uint64_t sub_1B0B0843C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4450, &qword_1B0EC51C8);
  result = sub_1B0E46208();
  v5 = result;
  if (*(v3 + 16))
  {
    v28 = v3;
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
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1B0E46C28();
      sub_1B0E44BB8();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      result = sub_1B0E46CB8();
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

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
      v3 = v28;
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

        v2 = v1;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

uint64_t sub_1B0B08694(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4410, &unk_1B0EC5180);
  result = sub_1B0E46208();
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
      v19 = *v17;
      v18 = v17[1];
      sub_1B0E46C28();
      if (v18)
      {
        MEMORY[0x1B2728D70](0);
        sub_1B0E44BB8();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      }

      else
      {
        MEMORY[0x1B2728D70](1);
      }

      result = sub_1B0E46CB8();
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

        goto LABEL_31;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v19;
      v13[1] = v18;
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

uint64_t sub_1B0B08924(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43B0, &qword_1B0EC50F8);
  result = sub_1B0E46208();
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
      sub_1B0E46C28();
      sub_1B03B2000(v18, v19);
      sub_1B0E42F48();
      result = sub_1B0E46CB8();
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

void sub_1B0B08B60(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v67 = &v64 - v4;
  v5 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v64 - v9;
  v11 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43C0, &unk_1B0EC5110);
  v12 = sub_1B0E46208();
  v13 = v12;
  if (!*(v11 + 16))
  {

LABEL_56:
    *v2 = v13;
    return;
  }

  v65 = v1;
  v14 = 0;
  v15 = *(v11 + 56);
  v68 = v11 + 56;
  v16 = 1 << *(v11 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v73 = v5;
  v72 = v7;
  v71 = v11;
  v70 = v10;
  v69 = v12;
  v74 = v19;
  v75 = v12 + 56;
  while (1)
  {
    if (v18)
    {
      v21 = __clz(__rbit64(v18));
      v77 = (v18 - 1) & v18;
    }

    else
    {
      v22 = v14;
      do
      {
        v14 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_58;
        }

        if (v14 >= v19)
        {

          v2 = v65;
          goto LABEL_56;
        }

        v23 = *(v68 + 8 * v14);
        ++v22;
      }

      while (!v23);
      v21 = __clz(__rbit64(v23));
      v77 = (v23 - 1) & v23;
    }

    v24 = *(*(v11 + 48) + 8 * (v21 | (v14 << 6)));
    sub_1B0E46C28();
    v25 = *(*v24 + 96);
    swift_beginAccess();
    v79 = v24;
    sub_1B0B0D400(v24 + v25, v10, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1B0B0D400(v10, v7, type metadata accessor for MoveAndCopyMessages.CommandID);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      break;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v76 = *v7;
      v28 = *(v7 + 2);
      v29 = *(v7 + 2);
      MEMORY[0x1B2728D70](3);
      MEMORY[0x1B2728D70](v28 | (v28 << 32));
      v30 = v29 + 64;
      v31 = 1 << *(v29 + 32);
      if (v31 < 64)
      {
        v32 = ~(-1 << v31);
      }

      else
      {
        v32 = -1;
      }

      v33 = v32 & *(v29 + 64);
      v34 = (v31 + 63) >> 6;

      v78 = v29;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v35 = 0;
      v36 = 0;
      if (v33)
      {
        while (1)
        {
          v37 = v36;
LABEL_27:
          v38 = (*(v78 + 56) + 16 * (__clz(__rbit64(v33)) | (v37 << 6)));
          v40 = *v38;
          v39 = v38[1];
          sub_1B03B2000(*v38, v39);
          if (v39 >> 60 == 15)
          {
            break;
          }

          v33 &= v33 - 1;
          v82 = v87;
          v83 = v88;
          v84 = v89;
          v81 = v86;
          v80 = v85;
          sub_1B0E46C88();
          sub_1B0E42F48();
          sub_1B0391D50(v40, v39);
          v35 ^= sub_1B0E46CB8();
          v36 = v37;
          if (!v33)
          {
            goto LABEL_24;
          }
        }
      }

      else
      {
        while (1)
        {
LABEL_24:
          v37 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
            goto LABEL_59;
          }

          if (v37 >= v34)
          {
            break;
          }

          v33 = *(v30 + 8 * v37);
          ++v36;
          if (v33)
          {
            goto LABEL_27;
          }
        }
      }

      MEMORY[0x1B2728D70](v35);

LABEL_44:

      v7 = v72;
      v11 = v71;
      v10 = v70;
      v13 = v69;
    }

    else
    {
      MEMORY[0x1B2728D70](1);
    }

LABEL_45:
    sub_1B0B0D468(v10, type metadata accessor for MoveAndCopyMessages.CommandID);
    v56 = sub_1B0E46CB8();
    v57 = -1 << *(v13 + 32);
    v58 = v56 & ~v57;
    v59 = v58 >> 6;
    if (((-1 << v58) & ~*(v75 + 8 * (v58 >> 6))) == 0)
    {
      v60 = 0;
      v61 = (63 - v57) >> 6;
      while (++v59 != v61 || (v60 & 1) == 0)
      {
        v62 = v59 == v61;
        if (v59 == v61)
        {
          v59 = 0;
        }

        v60 |= v62;
        v63 = *(v75 + 8 * v59);
        if (v63 != -1)
        {
          v20 = __clz(__rbit64(~v63)) + (v59 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_60;
    }

    v20 = __clz(__rbit64((-1 << v58) & ~*(v75 + 8 * (v58 >> 6)))) | v58 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v75 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v13 + 48) + 8 * v20) = v79;
    ++*(v13 + 16);
    v19 = v74;
    v18 = v77;
  }

  if (!EnumCaseMultiPayload)
  {
    v27 = v67;
    sub_1B03C60A4(v7, v67, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    MEMORY[0x1B2728D70](0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
    sub_1B0B0D328();
    sub_1B0E447C8();
    sub_1B0398EFC(v27, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    goto LABEL_45;
  }

  v66 = *v7;
  v41 = *(v7 + 2);
  v42 = *(v7 + 2);
  MEMORY[0x1B2728D70](2);
  MEMORY[0x1B2728D70](v41 | (v41 << 32));
  v43 = v42 + 64;
  v44 = 1 << *(v42 + 32);
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  else
  {
    v45 = -1;
  }

  v46 = v45 & *(v42 + 64);
  v47 = (v44 + 63) >> 6;

  v76 = v42;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v48 = 0;
  for (i = 0; v46; v48 = sub_1B0E46CB8() ^ v78)
  {
    v78 = v48;
    v50 = i;
LABEL_39:
    v51 = __clz(__rbit64(v46));
    v46 &= v46 - 1;
    v52 = (*(v76 + 56) + 24 * (v51 | (v50 << 6)));
    v53 = *v52;
    v55 = *(v52 + 1);
    v54 = *(v52 + 2);
    sub_1B03B2000(v55, v54);
    v82 = v87;
    v83 = v88;
    v84 = v89;
    v81 = v86;
    v80 = v85;
    sub_1B0E46C88();
    MEMORY[0x1B2728D70](v53);
    sub_1B03B2000(v55, v54);
    sub_1B0E42F48();
    sub_1B0391D50(v55, v54);
    sub_1B0391D50(v55, v54);
  }

  while (1)
  {
    v50 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v50 >= v47)
    {

      MEMORY[0x1B2728D70](v48);

      goto LABEL_44;
    }

    v46 = *(v43 + 8 * v50);
    ++i;
    if (v46)
    {
      v78 = v48;
      i = v50;
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
}

void sub_1B0B09350(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v65 = v64 - v4;
  v5 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v64 - v10;
  v12 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4538, &qword_1B0EC52D0);
  v13 = sub_1B0E46208();
  v14 = v13;
  if (!*(v12 + 16))
  {

LABEL_57:
    *v2 = v14;
    return;
  }

  v64[0] = v2;
  v15 = 0;
  v16 = *(v12 + 56);
  v66 = v12 + 56;
  v17 = 1 << *(v12 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v71 = v5;
  v70 = v6;
  v69 = v8;
  v68 = v12;
  v67 = v11;
  v74 = v13;
  v72 = v20;
  v73 = v13 + 56;
  while (1)
  {
    if (v19)
    {
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
    }

    else
    {
      v23 = v15;
      do
      {
        v15 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_59;
        }

        if (v15 >= v20)
        {

          v2 = v64[0];
          goto LABEL_57;
        }

        v24 = *(v66 + 8 * v15);
        ++v23;
      }

      while (!v24);
      v22 = __clz(__rbit64(v24));
      v19 = (v24 - 1) & v24;
    }

    v25 = *(v6 + 72);
    sub_1B0B0D400(*(v12 + 48) + v25 * (v22 | (v15 << 6)), v11, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1B0E46C28();
    sub_1B0B0D400(v11, v8, type metadata accessor for MoveAndCopyMessages.CommandID);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      break;
    }

    if (EnumCaseMultiPayload != 2)
    {
      MEMORY[0x1B2728D70](1);
      goto LABEL_46;
    }

    v75 = v25;
    v76 = v19;
    v77 = *v8;
    v28 = *(v8 + 2);
    v29 = *(v8 + 2);
    MEMORY[0x1B2728D70](3);
    MEMORY[0x1B2728D70](v28 | (v28 << 32));
    v30 = v29 + 64;
    v31 = 1 << *(v29 + 32);
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    else
    {
      v32 = -1;
    }

    v33 = v32 & *(v29 + 64);
    v34 = (v31 + 63) >> 6;
    v78 = v29;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v35 = 0;
    v36 = 0;
    if (v33)
    {
      while (1)
      {
        v37 = v36;
LABEL_27:
        v38 = (*(v78 + 56) + 16 * (__clz(__rbit64(v33)) | (v37 << 6)));
        v39 = *v38;
        v40 = v38[1];
        sub_1B03B2000(*v38, v40);
        if (v40 >> 60 == 15)
        {
          break;
        }

        v33 &= v33 - 1;
        v81 = v86;
        v82 = v87;
        v83 = v88;
        v79 = v84;
        v80 = v85;
        sub_1B0E46C88();
        sub_1B0E42F48();
        sub_1B0391D50(v39, v40);
        v35 ^= sub_1B0E46CB8();
        v36 = v37;
        if (!v33)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      while (1)
      {
LABEL_24:
        v37 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_60;
        }

        if (v37 >= v34)
        {
          break;
        }

        v33 = *(v30 + 8 * v37);
        ++v36;
        if (v33)
        {
          goto LABEL_27;
        }
      }
    }

    MEMORY[0x1B2728D70](v35);

LABEL_44:

    v6 = v70;
    v8 = v69;
    v12 = v68;
    v11 = v67;
LABEL_45:
    v19 = v76;
    v25 = v75;
LABEL_46:
    v56 = sub_1B0E46CB8();
    v14 = v74;
    v57 = -1 << *(v74 + 32);
    v58 = v56 & ~v57;
    v59 = v58 >> 6;
    if (((-1 << v58) & ~*(v73 + 8 * (v58 >> 6))) == 0)
    {
      v60 = 0;
      v61 = (63 - v57) >> 6;
      while (++v59 != v61 || (v60 & 1) == 0)
      {
        v62 = v59 == v61;
        if (v59 == v61)
        {
          v59 = 0;
        }

        v60 |= v62;
        v63 = *(v73 + 8 * v59);
        if (v63 != -1)
        {
          v21 = __clz(__rbit64(~v63)) + (v59 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_61;
    }

    v21 = __clz(__rbit64((-1 << v58) & ~*(v73 + 8 * (v58 >> 6)))) | v58 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v73 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    sub_1B0B0D530(v11, *(v14 + 48) + v21 * v25);
    ++*(v14 + 16);
    v20 = v72;
  }

  v75 = v25;
  v76 = v19;
  if (!EnumCaseMultiPayload)
  {
    v27 = v65;
    sub_1B03C60A4(v8, v65, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    MEMORY[0x1B2728D70](0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
    sub_1B0B0D328();
    sub_1B0E447C8();
    sub_1B0398EFC(v27, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    goto LABEL_45;
  }

  v64[1] = *v8;
  v41 = *(v8 + 2);
  v42 = *(v8 + 2);
  MEMORY[0x1B2728D70](2);
  MEMORY[0x1B2728D70](v41 | (v41 << 32));
  v43 = v42 + 64;
  v44 = 1 << *(v42 + 32);
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  else
  {
    v45 = -1;
  }

  v46 = v45 & *(v42 + 64);
  v47 = (v44 + 63) >> 6;
  v77 = v42;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v48 = 0;
  for (i = 0; v46; v48 = sub_1B0E46CB8() ^ v78)
  {
    v78 = v48;
    v50 = i;
LABEL_39:
    v51 = __clz(__rbit64(v46));
    v46 &= v46 - 1;
    v52 = (*(v77 + 56) + 24 * (v51 | (v50 << 6)));
    v53 = *v52;
    v55 = *(v52 + 1);
    v54 = *(v52 + 2);
    sub_1B03B2000(v55, v54);
    v81 = v86;
    v82 = v87;
    v83 = v88;
    v79 = v84;
    v80 = v85;
    sub_1B0E46C88();
    MEMORY[0x1B2728D70](v53);
    sub_1B03B2000(v55, v54);
    sub_1B0E42F48();
    sub_1B0391D50(v55, v54);
    sub_1B0391D50(v55, v54);
  }

  while (1)
  {
    v50 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v50 >= v47)
    {

      MEMORY[0x1B2728D70](v48);

      goto LABEL_44;
    }

    v46 = *(v43 + 8 * v50);
    ++i;
    if (v46)
    {
      v78 = v48;
      i = v50;
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
}

uint64_t sub_1B0B09AE4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43E0, &qword_1B0EC5148);
  result = sub_1B0E46208();
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
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      sub_1B03D0A20(*(v3 + 48) + 48 * (v16 | (v6 << 6)), v26);
      sub_1B0E46C28();
      sub_1B0E461D8();
      result = sub_1B0E46CB8();
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 48 * v12);
      v14 = v26[0];
      v15 = v26[2];
      v13[1] = v26[1];
      v13[2] = v15;
      *v13 = v14;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
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

char *sub_1B0B09D24(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B89218(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B09D44(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B89354(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B09D64(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B89368(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B0B09D84(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8937C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B0B09DA4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B894C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B09DC4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B89608(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B09DE4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8961C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B0B09E04(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B89630(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B0B09E24(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B89654(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B09E44(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8979C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B09E64(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B897B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B09E84(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B897C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B09EA4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B897D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B0B09EC4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B897EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B0B09EE4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B89934(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B0B09F04(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B89B6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B0B09F24(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B89B90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B09F44(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B89BB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B09F64(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B89CBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B0B09F84(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B89CD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B09FA4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B89E04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B09FC4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B89F04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B09FE4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B89F18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A004(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B89F2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A024(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B89F40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A044(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8A040(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B0B0A064(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8A054(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B0B0A084(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8A078(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A0A4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8A0A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A0C4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8A1BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A0E4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8A2C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B0B0A104(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8A2D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A124(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8A2F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A144(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8A30C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A164(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8A320(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B0B0A184(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8A334(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A1A4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8A35C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B0B0A1C4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8A478(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B0B0A1E4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8A4A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A204(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8A6AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A224(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8A6C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A244(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8A6D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A264(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8A6E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A284(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8A6FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A2A4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8A81C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A2C4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8A928(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A2E4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8AA2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A304(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8AA40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A324(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8AB4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B0B0A344(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8AB68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B0B0A364(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8ACB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A384(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B89340(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A3A4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8ADFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A3C4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8AE10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A3E4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8AF20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B0B0A404(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8AF34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B0B0A424(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8AF58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B0B0A444(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8B0C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A464(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8B0EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B0B0A484(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8B100(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A4A4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8B304(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A4C4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8B318(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A4E4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8B32C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A504(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8B340(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A524(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8B354(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B0B0A544(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8B460(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A564(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8B5AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A584(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8B5C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A5A4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8B5D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A5C4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8B5F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A5E4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8B718(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B0B0A604(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8B850(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A624(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8B998(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A644(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8BAB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B0B0A664(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8BBBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A684(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8BCF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A6A4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8BE0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A6C4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8BF18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0B0A6E4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B8C024(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B0B0A704(uint64_t result, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  v5 = a2 + 64;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
LABEL_11:
    v12 = __clz(__rbit64(v8)) | (v4 << 6);
    v13 = *(*(a2 + 56) + 12 * v12 + 8);
    MEMORY[0x1B2728D70](*(*(a2 + 48) + 8 * v12));
    sub_1B0E46C68();
    if ((v13 & 1) == 0)
    {
      sub_1B0E46C88();
      sub_1B0E46C88();
    }

    v8 &= v8 - 1;
    v10 = sub_1B0E46CB8();
    v3 ^= v10;
  }

  while (1)
  {
    v11 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
      return MEMORY[0x1B2728D70](v3);
    }

    v8 = *(v5 + 8 * v11);
    ++v4;
    if (v8)
    {
      v4 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return v10;
}

void sub_1B0B0A854(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7 = 0;
  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_8:
      v10 = (*(a2 + 56) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
      v11 = *v10;
      v12 = v10[1];
      sub_1B03B2000(*v10, v12);
      if (v12 >> 60 == 15)
      {
        break;
      }

      v5 &= v5 - 1;
      sub_1B0E46C88();
      sub_1B0E42F48();
      sub_1B0391D50(v11, v12);
      v7 ^= sub_1B0E46CB8();
      v8 = v9;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    MEMORY[0x1B2728D70](v7);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v6)
      {
        goto LABEL_11;
      }

      v5 = *(v2 + 8 * v9);
      ++v8;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_1B0B0A9B8(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7 = 0;
  for (i = 0; v5; v7 = sub_1B0E46CB8() ^ v16)
  {
    v16 = v7;
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a2 + 56) + 24 * (v10 | (v9 << 6)));
    v12 = *v11;
    v13 = *(v11 + 1);
    v14 = *(v11 + 2);
    sub_1B03B2000(v13, v14);
    sub_1B0E46C88();
    MEMORY[0x1B2728D70](v12);
    sub_1B03B2000(v13, v14);
    sub_1B0E42F48();
    sub_1B0391D50(v13, v14);
    sub_1B0391D50(v13, v14);
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      MEMORY[0x1B2728D70](v7);
      return;
    }

    v5 = *(v2 + 8 * v9);
    ++i;
    if (v5)
    {
      v16 = v7;
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1B0B0AB48(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
LABEL_11:
    v11 = *(a2 + 56) + 16 * (__clz(__rbit64(v7)) | (v3 << 6));
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 9);
    sub_1B0E46C88();
    sub_1B0E46C68();
    if ((v13 & 1) == 0)
    {
      MEMORY[0x1B2728D70](v12);
    }

    v7 &= v7 - 1;
    MEMORY[0x1B2728D70](v14);
    result = sub_1B0E46CB8();
    v2 ^= result;
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      return MEMORY[0x1B2728D70](v2);
    }

    v7 = *(v4 + 8 * v10);
    ++v3;
    if (v7)
    {
      v3 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B0AC94(__int128 *a1, uint64_t a2)
{
  v4 = a1[3];
  v28 = a1[2];
  v29 = v4;
  v30 = *(a1 + 8);
  v5 = a1[1];
  v26 = *a1;
  v27 = v5;
  sub_1B0E46CB8();
  v23 = a2;
  result = 0;
  v7 = 0;
  v10 = *(a2 + 56);
  v9 = a2 + 56;
  v8 = v10;
  v11 = 1 << *(v9 - 24);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  if ((v12 & v8) != 0)
  {
    do
    {
      v24 = result;
      v15 = v7;
LABEL_9:
      v16 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v17 = *(v23 + 48) + 24 * (v16 | (v15 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      v21 = *(v17 + 20);
      v22 = *(v17 + 22);
      sub_1B0E46C28();
      v2 = v2 & 0xFF00000000000000 | v20 | (v21 << 32) | (v22 << 48);
      GmailLabel.hash(into:)(v25, v18, v19, v2);
      result = sub_1B0E46CB8() ^ v24;
    }

    while (v13);
  }

  while (1)
  {
    v15 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v15 >= v14)
    {
      return MEMORY[0x1B2728D70](result);
    }

    v13 = *(v9 + 8 * v15);
    ++v7;
    if (v13)
    {
      v24 = result;
      v7 = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1B0B0ADF0(__int128 *a1, uint64_t a2)
{
  sub_1B0E46CB8();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7 = 0;
  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      MEMORY[0x1B2728D70](v7);
      return;
    }

    v5 = *(a2 + 56 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        sub_1B0E46C28();
        sub_1B0E44BB8();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

        v7 ^= sub_1B0E46CB8();
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
}

uint64_t sub_1B0B0AF54(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B01BA4(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_1B0B0AFC4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;
      sub_1B03B2000(v4, *v2);
      sub_1B0B01F68(v5, v4, v3);
      result = sub_1B0391D50(v5[0], v5[1]);
      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_1B0B0B038(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4450, &qword_1B0EC51C8);
    v3 = sub_1B0E46228();
    v4 = 0;
    v5 = v3 + 56;
    v23 = v1;
    v24 = a1 + 32;
LABEL_6:
    v6 = (v24 + 16 * v4);
    v8 = *v6;
    v7 = v6[1];
    sub_1B0E46C28();
    sub_1B0E44BB8();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    result = sub_1B0E46CB8();
    v10 = ~(-1 << *(v3 + 32));
    for (i = result & v10; ; i = (i + 1) & v10)
    {
      v12 = *(v5 + 8 * (i >> 6));
      if (((1 << i) & v12) == 0)
      {
        break;
      }

      v13 = sub_1B0E44BB8();
      v15 = v14;
      if (v13 == sub_1B0E44BB8() && v15 == v16)
      {

LABEL_4:

LABEL_5:
        if (++v4 == v23)
        {
          return v3;
        }

        goto LABEL_6;
      }

      v18 = sub_1B0E46A78();

      if (v18)
      {
        goto LABEL_4;
      }
    }

    *(v5 + 8 * (i >> 6)) = (1 << i) | v12;
    v19 = (*(v3 + 48) + 16 * i);
    *v19 = v8;
    v19[1] = v7;
    v20 = *(v3 + 16);
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (!v21)
    {
      *(v3 + 16) = v22;
      goto LABEL_5;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

__n128 sub_1B0B0B26C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (sub_1B0E46C28(), MEMORY[0x1B2728D70](1), v3 = sub_1B0E46CB8(), v4 = -1 << *(a1 + 32), v5 = v3 & ~v4, ((*(a1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    do
    {
      v7 = *(*(a1 + 48) + 16 * v5 + 8);
      v8 = v7 == 0;
      if (!v7)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(a1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  else
  {
    v8 = 0;
  }

  v9 = Flag.draft.unsafeMutableAddressor();
  v259 = v8;
  if (*(a1 + 16))
  {
    sub_1B0E46C28();
    MEMORY[0x1B2728D70](0);
    sub_1B0E44BB8();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v10 = sub_1B0E46CB8();
    v11 = -1 << *(a1 + 32);
    v12 = v10 & ~v11;
    if ((*(a1 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
    {
      v13 = ~v11;
      do
      {
        if (*(*(a1 + 48) + 16 * v12 + 8))
        {
          v14 = sub_1B0E44BB8();
          v16 = v15;
          if (v14 == sub_1B0E44BB8() && v16 == v17)
          {

LABEL_23:

            v8 = v259;
LABEL_24:
            v250 = *(v9 + 1);
            v251 = *v9;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            goto LABEL_25;
          }

          v19 = sub_1B0E46A78();

          if (v19)
          {
            goto LABEL_23;
          }
        }

        v12 = (v12 + 1) & v13;
      }

      while (((*(a1 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    v8 = v259;
  }

  if (v8)
  {
    goto LABEL_24;
  }

  v250 = 0;
  v251 = 0;
LABEL_25:
  v20 = Flag.flagged.unsafeMutableAddressor();
  if (*(a1 + 16))
  {
    sub_1B0E46C28();
    MEMORY[0x1B2728D70](0);
    sub_1B0E44BB8();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v21 = sub_1B0E46CB8();
    v22 = -1 << *(a1 + 32);
    v23 = v21 & ~v22;
    if ((*(a1 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
    {
      v24 = ~v22;
      do
      {
        if (*(*(a1 + 48) + 16 * v23 + 8))
        {
          v25 = sub_1B0E44BB8();
          v27 = v26;
          if (v25 == sub_1B0E44BB8() && v27 == v28)
          {

LABEL_40:

            v8 = v259;
LABEL_41:
            v248 = *(v20 + 1);
            v249 = *v20;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            goto LABEL_42;
          }

          v30 = sub_1B0E46A78();

          if (v30)
          {
            goto LABEL_40;
          }
        }

        v23 = (v23 + 1) & v24;
      }

      while (((*(a1 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) != 0);
    }

    v8 = v259;
  }

  if (v8)
  {
    goto LABEL_41;
  }

  v248 = 0;
  v249 = 0;
LABEL_42:
  v31 = Flag.Keyword.forwarded.unsafeMutableAddressor();
  if (*(a1 + 16))
  {
    sub_1B0E46C28();
    MEMORY[0x1B2728D70](0);
    sub_1B0E44BB8();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v32 = sub_1B0E46CB8();
    v33 = -1 << *(a1 + 32);
    v34 = v32 & ~v33;
    if ((*(a1 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
    {
      v35 = ~v33;
      do
      {
        if (*(*(a1 + 48) + 16 * v34 + 8))
        {
          v36 = sub_1B0E44BB8();
          v38 = v37;
          if (v36 == sub_1B0E44BB8() && v38 == v39)
          {

LABEL_57:

            v8 = v259;
LABEL_58:
            v43 = *v31;
            v42 = *(v31 + 1);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v44 = sub_1B0AFF1F4(0, 1, 1, MEMORY[0x1E69E7CC0]);
            v46 = *(v44 + 2);
            v45 = *(v44 + 3);
            v258 = v44;
            if (v46 >= v45 >> 1)
            {
              v258 = sub_1B0AFF1F4((v45 > 1), v46 + 1, 1, v44);
            }

            *(v258 + 2) = v46 + 1;
            v47 = &v258[16 * v46];
            *(v47 + 4) = v43;
            *(v47 + 5) = v42;
            goto LABEL_61;
          }

          v41 = sub_1B0E46A78();

          if (v41)
          {
            goto LABEL_57;
          }
        }

        v34 = (v34 + 1) & v35;
      }

      while (((*(a1 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) != 0);
    }

    v8 = v259;
  }

  if (v8)
  {
    goto LABEL_58;
  }

  v258 = MEMORY[0x1E69E7CC0];
LABEL_61:
  v48 = Flag.Keyword.unregistered_forwarded.unsafeMutableAddressor();
  if (!*(a1 + 16))
  {
LABEL_92:
    if (v8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42F8, &unk_1B0EC4E40);
      v75 = swift_allocObject();
      *(v75 + 16) = xmmword_1B0EC1E70;
      v76 = *(v48 + 1);
      *(v75 + 32) = *v48;
      *(v75 + 40) = v76;
      v247 = v75;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    }

    else
    {
      v247 = MEMORY[0x1E69E7CC0];
    }

    goto LABEL_97;
  }

  sub_1B0E46C28();
  MEMORY[0x1B2728D70](0);
  sub_1B0E44BB8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  v49 = sub_1B0E46CB8();
  v50 = a1 + 56;
  v51 = -1 << *(a1 + 32);
  v52 = v49 & ~v51;
  if (((*(a1 + 56 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) == 0)
  {
LABEL_72:

    if (*(a1 + 16))
    {
      goto LABEL_80;
    }

    goto LABEL_91;
  }

  v53 = ~v51;
  while (1)
  {
    if (!*(*(a1 + 48) + 16 * v52 + 8))
    {
      goto LABEL_64;
    }

    v54 = sub_1B0E44BB8();
    v56 = v55;
    if (v54 == sub_1B0E44BB8() && v56 == v57)
    {
      break;
    }

    v59 = sub_1B0E46A78();

    if (v59)
    {
      goto LABEL_75;
    }

LABEL_64:
    v52 = (v52 + 1) & v53;
    if (((*(v50 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) == 0)
    {
      goto LABEL_72;
    }
  }

LABEL_75:

  v61 = *v48;
  v60 = *(v48 + 1);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v258 = sub_1B0AFF1F4(0, *(v258 + 2) + 1, 1, v258);
  }

  v63 = *(v258 + 2);
  v62 = *(v258 + 3);
  if (v63 >= v62 >> 1)
  {
    v258 = sub_1B0AFF1F4((v62 > 1), v63 + 1, 1, v258);
  }

  *(v258 + 2) = v63 + 1;
  v64 = &v258[16 * v63];
  *(v64 + 4) = v61;
  *(v64 + 5) = v60;
  if (!*(a1 + 16))
  {
    goto LABEL_91;
  }

LABEL_80:
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](0);
  sub_1B0E44BB8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  v65 = sub_1B0E46CB8();
  v66 = -1 << *(a1 + 32);
  v67 = v65 & ~v66;
  if (((*(v50 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67) & 1) == 0)
  {
LABEL_90:

LABEL_91:
    v8 = v259;
    goto LABEL_92;
  }

  v68 = ~v66;
  while (1)
  {
    if (!*(*(a1 + 48) + 16 * v67 + 8))
    {
      goto LABEL_82;
    }

    v69 = sub_1B0E44BB8();
    v71 = v70;
    if (v69 == sub_1B0E44BB8() && v71 == v72)
    {
      break;
    }

    v74 = sub_1B0E46A78();

    if (v74)
    {
      goto LABEL_96;
    }

LABEL_82:
    v67 = (v67 + 1) & v68;
    if (((*(v50 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67) & 1) == 0)
    {
      goto LABEL_90;
    }
  }

LABEL_96:

  v247 = MEMORY[0x1E69E7CC0];
  v8 = v259;
LABEL_97:
  v77 = Flag.Keyword.unregistered_redirected.unsafeMutableAddressor();
  if (*(a1 + 16))
  {
    sub_1B0E46C28();
    MEMORY[0x1B2728D70](0);
    sub_1B0E44BB8();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v78 = sub_1B0E46CB8();
    v79 = -1 << *(a1 + 32);
    v80 = v78 & ~v79;
    if ((*(a1 + 56 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80))
    {
      v81 = ~v79;
      do
      {
        if (*(*(a1 + 48) + 16 * v80 + 8))
        {
          v82 = sub_1B0E44BB8();
          v84 = v83;
          if (v82 == sub_1B0E44BB8() && v84 == v85)
          {

LABEL_112:

            v8 = v259;
LABEL_113:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42F8, &unk_1B0EC4E40);
            v88 = swift_allocObject();
            *(v88 + 16) = xmmword_1B0EC1E70;
            v89 = *(v77 + 1);
            *(v88 + 32) = *v77;
            *(v88 + 40) = v89;
            v246 = v88;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            goto LABEL_114;
          }

          v87 = sub_1B0E46A78();

          if (v87)
          {
            goto LABEL_112;
          }
        }

        v80 = (v80 + 1) & v81;
      }

      while (((*(a1 + 56 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80) & 1) != 0);
    }

    v8 = v259;
  }

  if (v8)
  {
    goto LABEL_113;
  }

  v246 = MEMORY[0x1E69E7CC0];
LABEL_114:
  v90 = Flag.Keyword.junk.unsafeMutableAddressor();
  if (*(a1 + 16))
  {
    sub_1B0E46C28();
    MEMORY[0x1B2728D70](0);
    sub_1B0E44BB8();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v91 = sub_1B0E46CB8();
    v92 = -1 << *(a1 + 32);
    v93 = v91 & ~v92;
    if ((*(a1 + 56 + ((v93 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v93))
    {
      v94 = ~v92;
      do
      {
        if (*(*(a1 + 48) + 16 * v93 + 8))
        {
          v95 = sub_1B0E44BB8();
          v97 = v96;
          if (v95 == sub_1B0E44BB8() && v97 == v98)
          {

LABEL_129:

            v8 = v259;
LABEL_130:
            v102 = *v90;
            v101 = *(v90 + 1);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v103 = sub_1B0AFF1F4(0, 1, 1, MEMORY[0x1E69E7CC0]);
            v105 = *(v103 + 2);
            v104 = *(v103 + 3);
            if (v105 >= v104 >> 1)
            {
              v103 = sub_1B0AFF1F4((v104 > 1), v105 + 1, 1, v103);
            }

            *(v103 + 2) = v105 + 1;
            v257 = v103;
            v106 = &v103[16 * v105];
            *(v106 + 4) = v102;
            *(v106 + 5) = v101;
            goto LABEL_133;
          }

          v100 = sub_1B0E46A78();

          if (v100)
          {
            goto LABEL_129;
          }
        }

        v93 = (v93 + 1) & v94;
      }

      while (((*(a1 + 56 + ((v93 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v93) & 1) != 0);
    }

    v8 = v259;
  }

  if (v8)
  {
    goto LABEL_130;
  }

  v257 = MEMORY[0x1E69E7CC0];
LABEL_133:
  v253 = Flag.Keyword.unregistered_junk.unsafeMutableAddressor();
  if (!*(a1 + 16))
  {
    goto LABEL_151;
  }

  sub_1B0E46C28();
  MEMORY[0x1B2728D70](0);
  sub_1B0E44BB8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  v107 = sub_1B0E46CB8();
  v108 = -1 << *(a1 + 32);
  v109 = v107 & ~v108;
  if (((*(a1 + 56 + ((v109 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v109) & 1) == 0)
  {
LABEL_144:

    v8 = v259;
    goto LABEL_151;
  }

  v110 = ~v108;
  while (2)
  {
    if (!*(*(a1 + 48) + 16 * v109 + 8))
    {
LABEL_136:
      v109 = (v109 + 1) & v110;
      if (((*(a1 + 56 + ((v109 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v109) & 1) == 0)
      {
        goto LABEL_144;
      }

      continue;
    }

    break;
  }

  v111 = sub_1B0E44BB8();
  v113 = v112;
  if (v111 != sub_1B0E44BB8() || v113 != v114)
  {
    v116 = sub_1B0E46A78();

    if (v116)
    {
      goto LABEL_146;
    }

    goto LABEL_136;
  }

LABEL_146:

  v118 = *v253;
  v117 = *(v253 + 1);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v8 = v259;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v119 = v257;
  }

  else
  {
    v119 = sub_1B0AFF1F4(0, *(v257 + 2) + 1, 1, v257);
  }

  v121 = *(v119 + 2);
  v120 = *(v119 + 3);
  if (v121 >= v120 >> 1)
  {
    v119 = sub_1B0AFF1F4((v120 > 1), v121 + 1, 1, v119);
  }

  *(v119 + 2) = v121 + 1;
  v257 = v119;
  v122 = &v119[16 * v121];
  *(v122 + 4) = v118;
  *(v122 + 5) = v117;
LABEL_151:
  v123 = Flag.Keyword.notJunk.unsafeMutableAddressor();
  if (*(a1 + 16))
  {
    sub_1B0E46C28();
    MEMORY[0x1B2728D70](0);
    sub_1B0E44BB8();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v124 = sub_1B0E46CB8();
    v125 = -1 << *(a1 + 32);
    v126 = v124 & ~v125;
    if ((*(a1 + 56 + ((v126 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v126))
    {
      v127 = ~v125;
      do
      {
        if (*(*(a1 + 48) + 16 * v126 + 8))
        {
          v128 = sub_1B0E44BB8();
          v130 = v129;
          if (v128 == sub_1B0E44BB8() && v130 == v131)
          {

LABEL_166:

            v8 = v259;
LABEL_167:
            v135 = *v123;
            v134 = *(v123 + 1);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v136 = sub_1B0AFF1F4(0, 1, 1, MEMORY[0x1E69E7CC0]);
            v138 = *(v136 + 2);
            v137 = *(v136 + 3);
            if (v138 >= v137 >> 1)
            {
              v136 = sub_1B0AFF1F4((v137 > 1), v138 + 1, 1, v136);
            }

            *(v136 + 2) = v138 + 1;
            v256 = v136;
            v139 = &v136[16 * v138];
            *(v139 + 4) = v135;
            *(v139 + 5) = v134;
            goto LABEL_170;
          }

          v133 = sub_1B0E46A78();

          if (v133)
          {
            goto LABEL_166;
          }
        }

        v126 = (v126 + 1) & v127;
      }

      while (((*(a1 + 56 + ((v126 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v126) & 1) != 0);
    }

    v8 = v259;
  }

  if (v8)
  {
    goto LABEL_167;
  }

  v256 = MEMORY[0x1E69E7CC0];
LABEL_170:
  v140 = Flag.Keyword.unregistered_notJunk.unsafeMutableAddressor();
  if (!*(a1 + 16))
  {
LABEL_200:
    v158 = v253;
    if (v8)
    {
LABEL_201:
      v170 = *v158;
      v169 = *(v158 + 1);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v171 = sub_1B0AFF1F4(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v173 = *(v171 + 2);
      v172 = *(v171 + 3);
      if (v173 >= v172 >> 1)
      {
        v171 = sub_1B0AFF1F4((v172 > 1), v173 + 1, 1, v171);
      }

      *(v171 + 2) = v173 + 1;
      v174 = &v171[16 * v173];
      *(v174 + 4) = v170;
      *(v174 + 5) = v169;
      goto LABEL_208;
    }

LABEL_205:
    v171 = MEMORY[0x1E69E7CC0];
    goto LABEL_208;
  }

  sub_1B0E46C28();
  MEMORY[0x1B2728D70](0);
  sub_1B0E44BB8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  v141 = sub_1B0E46CB8();
  v142 = a1 + 56;
  v143 = -1 << *(a1 + 32);
  v144 = v141 & ~v143;
  if (((*(a1 + 56 + ((v144 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v144) & 1) == 0)
  {
LABEL_181:

    goto LABEL_188;
  }

  v145 = ~v143;
  while (2)
  {
    if (!*(*(a1 + 48) + 16 * v144 + 8))
    {
LABEL_173:
      v144 = (v144 + 1) & v145;
      if (((*(v142 + ((v144 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v144) & 1) == 0)
      {
        goto LABEL_181;
      }

      continue;
    }

    break;
  }

  v146 = sub_1B0E44BB8();
  v148 = v147;
  if (v146 != sub_1B0E44BB8() || v148 != v149)
  {
    v151 = sub_1B0E46A78();

    if (v151)
    {
      goto LABEL_183;
    }

    goto LABEL_173;
  }

LABEL_183:

  v153 = *v140;
  v152 = *(v140 + 1);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v154 = v256;
  }

  else
  {
    v154 = sub_1B0AFF1F4(0, *(v256 + 2) + 1, 1, v256);
  }

  v156 = *(v154 + 2);
  v155 = *(v154 + 3);
  if (v156 >= v155 >> 1)
  {
    v154 = sub_1B0AFF1F4((v155 > 1), v156 + 1, 1, v154);
  }

  *(v154 + 2) = v156 + 1;
  v256 = v154;
  v157 = &v154[16 * v156];
  *(v157 + 4) = v153;
  *(v157 + 5) = v152;
LABEL_188:
  v158 = v253;
  if (!*(a1 + 16))
  {
    v8 = v259;
    if (v259)
    {
      goto LABEL_201;
    }

    goto LABEL_205;
  }

  sub_1B0E46C28();
  MEMORY[0x1B2728D70](0);
  sub_1B0E44BB8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  v159 = sub_1B0E46CB8();
  v160 = -1 << *(a1 + 32);
  v161 = v159 & ~v160;
  if (((*(v142 + ((v161 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v161) & 1) == 0)
  {
LABEL_199:

    v8 = v259;
    goto LABEL_200;
  }

  v162 = ~v160;
  while (1)
  {
    if (!*(*(a1 + 48) + 16 * v161 + 8))
    {
      goto LABEL_191;
    }

    v163 = sub_1B0E44BB8();
    v165 = v164;
    if (v163 == sub_1B0E44BB8() && v165 == v166)
    {
      break;
    }

    v168 = sub_1B0E46A78();

    if (v168)
    {
      goto LABEL_207;
    }

LABEL_191:
    v161 = (v161 + 1) & v162;
    if (((*(v142 + ((v161 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v161) & 1) == 0)
    {
      goto LABEL_199;
    }
  }

LABEL_207:

  v171 = MEMORY[0x1E69E7CC0];
  v8 = v259;
LABEL_208:
  v175 = 0xEE0070756E61656CLL;
  if (*(a1 + 16))
  {
    v254 = v171;
    sub_1B0E46C28();
    MEMORY[0x1B2728D70](0);
    sub_1B0E44BB8();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v176 = sub_1B0E46CB8();
    v177 = -1 << *(a1 + 32);
    v178 = v176 & ~v177;
    if ((*(a1 + 56 + ((v178 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v178))
    {
      v179 = ~v177;
      do
      {
        if (*(*(a1 + 48) + 16 * v178 + 8))
        {
          v180 = sub_1B0E44BB8();
          v182 = v181;
          if (v180 == sub_1B0E44BB8() && v182 == v183)
          {

LABEL_227:

            v8 = v259;
            v171 = v254;
            v175 = 0xEE0070756E61656CLL;
            if (v259)
            {
LABEL_228:
              v191 = 1;
              if (*(a1 + 16))
              {
                goto LABEL_270;
              }

              goto LABEL_284;
            }

            goto LABEL_230;
          }

          v185 = sub_1B0E46A78();

          if (v185)
          {
            goto LABEL_227;
          }
        }

        v178 = (v178 + 1) & v179;
      }

      while (((*(a1 + 56 + ((v178 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v178) & 1) != 0);
    }

    v8 = v259;
    v171 = v254;
    v175 = 0xEE0070756E61656CLL;
  }

  if (v8)
  {
    v187 = *v140;
    v186 = *(v140 + 1);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v171 = sub_1B0AFF1F4(0, *(v171 + 2) + 1, 1, v171);
    }

    v189 = *(v171 + 2);
    v188 = *(v171 + 3);
    if (v189 >= v188 >> 1)
    {
      v171 = sub_1B0AFF1F4((v188 > 1), v189 + 1, 1, v171);
    }

    *(v171 + 2) = v189 + 1;
    v190 = &v171[16 * v189];
    *(v190 + 4) = v187;
    *(v190 + 5) = v186;
    goto LABEL_228;
  }

LABEL_230:
  Flag.Keyword.colorBit0.unsafeMutableAddressor();
  if (!*(a1 + 16))
  {
    v191 = 0;
    goto LABEL_284;
  }

  sub_1B0E46C28();
  MEMORY[0x1B2728D70](0);
  sub_1B0E44BB8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  v192 = sub_1B0E46CB8();
  v193 = a1 + 56;
  v194 = -1 << *(a1 + 32);
  v195 = v192 & ~v194;
  if (((*(a1 + 56 + ((v195 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v195) & 1) == 0)
  {
    goto LABEL_258;
  }

  v196 = ~v194;
  while (1)
  {
    if (!*(*(a1 + 48) + 16 * v195 + 8))
    {
      goto LABEL_233;
    }

    v197 = sub_1B0E44BB8();
    v199 = v198;
    if (v197 == sub_1B0E44BB8() && v199 == v200)
    {
      break;
    }

    v202 = sub_1B0E46A78();

    if (v202)
    {
      goto LABEL_243;
    }

LABEL_233:
    v195 = (v195 + 1) & v196;
    if (((*(v193 + ((v195 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v195) & 1) == 0)
    {
LABEL_267:

      v191 = 0;
      goto LABEL_268;
    }
  }

LABEL_243:

  Flag.Keyword.colorBit1.unsafeMutableAddressor();
  v8 = v259;
  if (!*(a1 + 16))
  {
    goto LABEL_283;
  }

  sub_1B0E46C28();
  MEMORY[0x1B2728D70](0);
  sub_1B0E44BB8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  v203 = sub_1B0E46CB8();
  v204 = -1 << *(a1 + 32);
  v205 = v203 & ~v204;
  if (((*(v193 + ((v205 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v205) & 1) == 0)
  {
LABEL_258:

    v191 = 0;
    goto LABEL_269;
  }

  v206 = ~v204;
  while (1)
  {
    if (!*(*(a1 + 48) + 16 * v205 + 8))
    {
      goto LABEL_246;
    }

    v207 = sub_1B0E44BB8();
    v209 = v208;
    if (v207 == sub_1B0E44BB8() && v209 == v210)
    {
      break;
    }

    v212 = sub_1B0E46A78();

    if (v212)
    {
      goto LABEL_255;
    }

LABEL_246:
    v205 = (v205 + 1) & v206;
    if (((*(v193 + ((v205 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v205) & 1) == 0)
    {
      goto LABEL_267;
    }
  }

LABEL_255:

  Flag.Keyword.colorBit2.unsafeMutableAddressor();
  v8 = v259;
  if (!*(a1 + 16))
  {
LABEL_283:
    v191 = 0;
    v175 = 0xEE0070756E61656CLL;
    goto LABEL_284;
  }

  sub_1B0E46C28();
  MEMORY[0x1B2728D70](0);
  sub_1B0E44BB8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  v213 = sub_1B0E46CB8();
  v214 = -1 << *(a1 + 32);
  v215 = v213 & ~v214;
  if (((*(v193 + ((v215 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v215) & 1) == 0)
  {
    goto LABEL_258;
  }

  v216 = ~v214;
  while (1)
  {
    if (!*(*(a1 + 48) + 16 * v215 + 8))
    {
      goto LABEL_259;
    }

    v217 = sub_1B0E44BB8();
    v219 = v218;
    if (v217 == sub_1B0E44BB8() && v219 == v220)
    {
      break;
    }

    v222 = sub_1B0E46A78();

    if (v222)
    {
      goto LABEL_290;
    }

LABEL_259:
    v215 = (v215 + 1) & v216;
    if (((*(v193 + ((v215 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v215) & 1) == 0)
    {
      goto LABEL_267;
    }
  }

LABEL_290:

  v191 = 1;
LABEL_268:
  v8 = v259;
LABEL_269:
  v175 = 0xEE0070756E61656CLL;
  if (*(a1 + 16))
  {
LABEL_270:
    sub_1B0E46C28();
    MEMORY[0x1B2728D70](0);
    sub_1B0E44BB8();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v223 = sub_1B0E46CB8();
    v224 = -1 << *(a1 + 32);
    v225 = v223 & ~v224;
    if ((*(a1 + 56 + ((v225 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v225))
    {
      v255 = v171;
      v226 = ~v224;
      while (1)
      {
        if (*(*(a1 + 48) + 16 * v225 + 8))
        {
          v227 = sub_1B0E44BB8();
          v229 = v228;
          if (v227 == sub_1B0E44BB8() && v229 == v230)
          {

LABEL_282:

            v233 = v251;
            v234 = a2;
            v236 = v249;
            v235 = v250;
            v238 = v247;
            v237 = v248;
            v239 = v246;
            v241 = v256;
            v240 = v257;
            v171 = v255;
LABEL_286:
            v242 = 0x4364756F6C436924;
            goto LABEL_288;
          }

          v232 = sub_1B0E46A78();

          if (v232)
          {
            goto LABEL_282;
          }
        }

        v225 = (v225 + 1) & v226;
        if (((*(a1 + 56 + ((v225 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v225) & 1) == 0)
        {
          v171 = v255;
          break;
        }
      }
    }
  }

LABEL_284:

  if (v8)
  {
    v233 = v251;
    v234 = a2;
    v236 = v249;
    v235 = v250;
    v238 = v247;
    v237 = v248;
    v239 = v246;
    v241 = v256;
    v240 = v257;
    goto LABEL_286;
  }

  v242 = 0;
  v175 = 0;
  v233 = v251;
  v234 = a2;
  v236 = v249;
  v235 = v250;
  v238 = v247;
  v237 = v248;
  v239 = v246;
  v241 = v256;
  v240 = v257;
LABEL_288:
  *&v261 = v233;
  *(&v261 + 1) = v235;
  *&v262 = v236;
  *(&v262 + 1) = v237;
  *&v263 = v258;
  *(&v263 + 1) = v239;
  v264.n128_u64[0] = v238;
  v264.n128_u64[1] = v240;
  *&v265 = v241;
  *(&v265 + 1) = v171;
  LOBYTE(v266) = v191;
  *(&v266 + 1) = v273[0];
  DWORD1(v266) = *(v273 + 3);
  *(&v266 + 1) = v242;
  v267 = v175;
  v268[0] = v233;
  v268[1] = v235;
  v268[2] = v236;
  v268[3] = v237;
  v268[4] = v258;
  v268[5] = v239;
  v268[6] = v238;
  v268[7] = v240;
  v268[8] = v241;
  v268[9] = v171;
  v269 = v191;
  *v270 = v273[0];
  *&v270[3] = *(v273 + 3);
  v271 = v242;
  v272 = v175;
  sub_1B0B0D4C8(&v261, v260);
  sub_1B0B0D500(v268);
  v243 = v266;
  *(v234 + 64) = v265;
  *(v234 + 80) = v243;
  *(v234 + 96) = v267;
  v244 = v262;
  *v234 = v261;
  *(v234 + 16) = v244;
  result = v264;
  *(v234 + 32) = v263;
  *(v234 + 48) = result;
  return result;
}

unint64_t sub_1B0B0CE64(uint64_t a1)
{
  if (*(a1 + 16) && (sub_1B0E46C28(), MEMORY[0x1B2728D70](1), v2 = sub_1B0E46CB8(), v3 = -1 << *(a1 + 32), v4 = v2 & ~v3, ((*(a1 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0))
  {
    v5 = ~v3;
    do
    {
      v6 = *(*(a1 + 48) + 16 * v4 + 8);
      v7 = v6 == 0;
      if (!v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(a1 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  else
  {
    v7 = 0;
  }

  v8 = Flag.Keyword.forwarded.unsafeMutableAddressor();
  v9 = *v8;
  v10 = v8[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11 = sub_1B0AFD5E4(v9, v10, a1, v7);

  v12 = Flag.Keyword.unregistered_redirected.unsafeMutableAddressor();
  v13 = *v12;
  v14 = v12[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v15 = sub_1B0AFD5E4(v13, v14, a1, v7);

  v16 = Flag.Keyword.junk.unsafeMutableAddressor();
  v17 = *v16;
  v18 = v16[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  LOBYTE(v17) = sub_1B0AFD5E4(v17, v18, a1, v7);

  if (v17)
  {
    v19 = Flag.Keyword.notJunk.unsafeMutableAddressor();
    v20 = *v19;
    v21 = v19[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    LOBYTE(v20) = sub_1B0AFD5E4(v20, v21, a1, v7);

    if (v20)
    {
      v22 = 0x10000;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = Flag.Keyword.colorBit0.unsafeMutableAddressor();
  v24 = *v23;
  v25 = v23[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  LOBYTE(v24) = sub_1B0AFD5E4(v24, v25, a1, v7);

  if (v24 & 1) != 0 && (v26 = Flag.Keyword.colorBit1.unsafeMutableAddressor(), v27 = *v26, v28 = v26[1], _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0(), LOBYTE(v27) = sub_1B0AFD5E4(v27, v28, a1, v7), , (v27))
  {
    v29 = Flag.Keyword.colorBit2.unsafeMutableAddressor();
    v30 = *v29;
    v31 = v29[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    LOBYTE(v30) = sub_1B0AFD5E4(v30, v31, a1, v7);

    if (v30)
    {
      v32 = 0x1000000;
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v32 = 0;
  }

  if (qword_1EB6DE190 != -1)
  {
    swift_once();
  }

  v33 = sub_1B0AFD5E4(static Flag.Keyword.iCloudCleanup, unk_1EB737E80, a1, v7);
  v34 = 0x100000000;
  if ((v33 & 1) == 0)
  {
    v34 = 0;
  }

  v35 = 256;
  if ((v15 & 1) == 0)
  {
    v35 = 0;
  }

  return v35 & 0xFFFFFFFFFFFFFFFELL | v11 & 1 | v22 | v32 | v34;
}

unint64_t sub_1B0B0D12C()
{
  result = qword_1EB6DD978;
  if (!qword_1EB6DD978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD978);
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1B0B0D1AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}