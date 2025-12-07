void sub_275442960(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_1_25();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_10_7();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_22();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    v11 = OUTLINED_FUNCTION_21_2();
    sub_2754442D0(v11, v12, v14, v13);
    v15 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size(v15);
    *(v15 + 2) = v9;
    *(v15 + 3) = 2 * v16 - 64;
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v17 = v15 + 32;
  v18 = a4 + 32;
  if (a1)
  {
    if (v15 != a4 || &v18[v9] <= v17)
    {
      memmove(v17, v18, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v17, v18, v9);
  }
}

char *sub_275442A4C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2754442D0(0, &qword_2809DBC58, &_s5GenreVN, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_275442B7C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  sub_2754409F4(0, &qword_2809DB5C0, MEMORY[0x277CD8320], MEMORY[0x277D84560]);
  v10 = *(sub_27546E490() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_27546E490() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_275440F08(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_275442D54(char *result, int64_t a2, char a3, char *a4)
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
    sub_2754442D0(0, &qword_2809DB5F8, &_s29UnstructuredStylingRegionPairVN, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 32 * v8);
  }

  return v10;
}

void sub_275442E6C(char a1, uint64_t a2, char a3, char *a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    OUTLINED_FUNCTION_1_25();
    if (v10 != v11)
    {
      OUTLINED_FUNCTION_10_7();
      if (v10)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_22();
    }
  }

  else
  {
    v9 = a2;
  }

  v12 = *(a4 + 2);
  if (v9 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v9;
  }

  if (v13)
  {
    v14 = OUTLINED_FUNCTION_21_2();
    sub_2754442D0(v14, v15, a6, v16);
    v17 = swift_allocObject();
    v18 = _swift_stdlib_malloc_size(v17);
    OUTLINED_FUNCTION_23_5(v18);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  v19 = v17 + 32;
  v20 = a4 + 32;
  if (a1)
  {
    if (v17 != a4 || &v20[176 * v12] <= v19)
    {
      memmove(v19, v20, 176 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_275442F6C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2754442D0(0, &qword_2809DBCD8, &unk_2884151A0, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[56 * v8] <= v12)
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

char *sub_27544309C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2754442D0(0, &qword_2809DBCE8, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

char *sub_2754431B4(char *result, int64_t a2, char a3, char *a4)
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
    sub_2754442D0(0, &qword_2809DB600, &_s23StructuredStylingRegionVN, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[88 * v8] <= v12)
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2754432E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_2754442D0(0, &qword_2809DB0B0, &_s13StylingResultVN, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 256);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[256 * v8] <= v12)
    {
      memmove(v12, v13, v8 << 8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_275443400(void *result, int64_t a2, char a3, void *a4)
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
    sub_2754409F4(0, &qword_2809DBCD0, sub_275415388, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[6 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_275415388(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_275443550(char *result, int64_t a2, char a3, char *a4)
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
    sub_27544415C(0);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

char *sub_275443638(char *result, int64_t a2, char a3, char *a4)
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
    sub_2754441D8(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

char *sub_27544372C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2754442D0(0, &qword_2809DBC88, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_27544384C(char a1, uint64_t a2, char a3, void *a4, uint64_t a5, unint64_t *a6, uint64_t a7)
{
  if (a3)
  {
    OUTLINED_FUNCTION_1_25();
    if (v12 != v13)
    {
      OUTLINED_FUNCTION_10_7();
      if (v12)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_22();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = a4[2];
  if (v11 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v11;
  }

  if (v15)
  {
    v16 = OUTLINED_FUNCTION_21_2();
    sub_2754241A0(v16, v17, a6, a7);
    v18 = swift_allocObject();
    v19 = _swift_stdlib_malloc_size(v18);
    v18[2] = v14;
    v18[3] = 2 * ((v19 - 32) / 40);
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  if (a1)
  {
    if (v18 != a4 || &a4[5 * v14 + 4] <= v18 + 4)
    {
      memmove(v18 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2753F1680(0, a6, a7);
    swift_arrayInitWithCopy();
  }
}

char *sub_275443978(char *result, int64_t a2, char a3, char *a4)
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
    sub_2754442D0(0, &qword_2809DB588, &type metadata for Transition.SteppedSchedule.AutomationPoint, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 32 * v8);
  }

  return v10;
}

char *sub_275443A90(char *result, int64_t a2, char a3, char *a4)
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
    sub_275443EF4(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 64);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[64 * v8] <= v12)
    {
      memmove(v12, v13, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8 << 6);
  }

  return v10;
}

char *sub_275443B84(char *result, int64_t a2, char a3, char *a4)
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
    sub_2754442D0(0, &qword_2809DBC18, &type metadata for Transition.SteppedSchedule.AutomationRamp, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 64);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[64 * v8] <= v12)
    {
      memmove(v12, v13, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8 << 6);
  }

  return v10;
}

char *sub_275443C9C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2754442D0(0, &qword_2809DBC08, &type metadata for Transition.SteppedSchedule.TimeStretchingStep, MEMORY[0x277D84560]);
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
    if (v10 != a4 || &v13[48 * v8] <= v12)
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

char *sub_275443DC8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2754442D0(0, &qword_2809DBC10, &type metadata for Transition.SteppedSchedule.PlaybackTime, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

void sub_275443EF4(uint64_t a1)
{
  if (!qword_2809DBC20)
  {
    sub_275444104(255, &qword_2809DBC28, &type metadata for Transition.SteppedSchedule.AutomationPoint, &type metadata for Transition.SteppedSchedule.AutomationPoint);
    v1 = sub_27546E990();
    if (!v2)
    {
      atomic_store(v1, &qword_2809DBC20);
    }
  }
}

uint64_t sub_275443F60(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_19();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_275443FB8(uint64_t a1)
{
  if (!qword_2809DBC68)
  {
    sub_275444104(255, &qword_2809DBC70, &_s22TempoBinaryScaleFactorON, MEMORY[0x277D839F8]);
    v1 = sub_27546E990();
    if (!v2)
    {
      atomic_store(v1, &qword_2809DBC68);
    }
  }
}

void sub_275444028(uint64_t a1)
{
  if (!qword_2809DBC78)
  {
    sub_275444104(255, &qword_2809DBC80, &_s22TempoBinaryScaleFactorON, &_s5TempoVN);
    v1 = sub_27546E990();
    if (!v2)
    {
      atomic_store(v1, &qword_2809DBC78);
    }
  }
}

void sub_275444098(uint64_t a1)
{
  if (!qword_2809DBC90)
  {
    sub_275444104(255, &qword_2809DBC98, MEMORY[0x277D839B0], MEMORY[0x277D839B0]);
    v1 = sub_27546E990();
    if (!v2)
    {
      atomic_store(v1, &qword_2809DBC90);
    }
  }
}

void sub_275444104(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_27544415C(uint64_t a1)
{
  if (!qword_2809DBCB8)
  {
    sub_2754442D0(255, &qword_2809DBCC0, &_s21VocalActivityStrengthON, MEMORY[0x277D83D88]);
    v1 = sub_27546E990();
    if (!v2)
    {
      atomic_store(v1, &qword_2809DBCB8);
    }
  }
}

void sub_2754441D8(uint64_t a1)
{
  if (!qword_2809DBCC8)
  {
    sub_275444268(255, &qword_2809DB6D0, sub_275434B84, &type metadata for SongTime, MEMORY[0x277D83638]);
    v1 = sub_27546E990();
    if (!v2)
    {
      atomic_store(v1, &qword_2809DBCC8);
    }
  }
}

void sub_275444268(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_2754442D0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_19_6(uint64_t a1)
{

  return sub_27546E9A0();
}

uint64_t OUTLINED_FUNCTION_23_5(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

void OUTLINED_FUNCTION_28_2(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{

  sub_2754409F4(0, a2, a3, v3);
}

__n128 TransitionPlanner.Song.Context.previousPlaybackEndState.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u8[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 TransitionPlanner.Song.Context.init(previousPlaybackEndState:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u8[0] = v2;
  return result;
}

BOOL static TransitionPlanner.Song.Context.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    if (*(a2 + 16))
    {
      return 0;
    }

    v2 = vmovn_s64(vceqzq_f64(vsubq_f64(*a2, *a1)));
    return (v2.i32[0] & v2.i32[1] & 1) != 0;
  }

  return (*(a2 + 16) & 1) != 0;
}

uint64_t sub_275444568(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000018 && 0x800000027546F3E0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_27546E9A0();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_275444608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275444568(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_275444634(uint64_t a1)
{
  v2 = sub_2754449DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275444670(uint64_t a1)
{
  v2 = sub_2754449DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TransitionPlanner.Song.Context.encode(to:)(void *a1)
{
  sub_275444A84(0, &qword_2809DBCF0, MEMORY[0x277D84538]);
  v4 = v3;
  OUTLINED_FUNCTION_8_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v11 = *v1;
  v10 = v1[1];
  HIDWORD(v13) = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2754449DC();
  sub_27546EB00();
  v14 = v11;
  v15 = v10;
  v16 = BYTE4(v13);
  sub_275444A30();
  sub_27546E910();
  return (*(v6 + 8))(v9, v4);
}

uint64_t TransitionPlanner.Song.Context.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_275444A84(0, &qword_2809DBD08, MEMORY[0x277D844C8]);
  v6 = v5;
  OUTLINED_FUNCTION_8_9();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2754449DC();
  sub_27546EAE0();
  if (!v2)
  {
    sub_275444AE8();
    sub_27546E890();
    (*(v8 + 8))(v11, v6);
    v12 = v15;
    *a2 = v14;
    *(a2 + 16) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2754449DC()
{
  result = qword_2809DBCF8;
  if (!qword_2809DBCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBCF8);
  }

  return result;
}

unint64_t sub_275444A30()
{
  result = qword_2809DBD00;
  if (!qword_2809DBD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBD00);
  }

  return result;
}

void sub_275444A84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2754449DC();
    v7 = a3(a1, &_s7ContextV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_275444AE8()
{
  result = qword_2809DBD10;
  if (!qword_2809DBD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBD10);
  }

  return result;
}

_BYTE *_s7ContextV10CodingKeysOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x275444BE8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_275444C24()
{
  result = qword_2809DBD18;
  if (!qword_2809DBD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBD18);
  }

  return result;
}

unint64_t sub_275444C7C()
{
  result = qword_2809DBD20;
  if (!qword_2809DBD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBD20);
  }

  return result;
}

unint64_t sub_275444CD4()
{
  result = qword_2809DBD28;
  if (!qword_2809DBD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBD28);
  }

  return result;
}

uint64_t TransitionPlanner.Song.ID.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

void *sub_275444D58@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = TransitionPlanner.Song.ID.init(stringLiteral:)(*a1, a1[1], v5);
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_275444D98@<X0>(uint64_t *a1@<X8>)
{
  result = TransitionPlanner.Song.ID.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t TransitionPlanner.Song.ID.init(stringLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t TransitionPlanner.Song.ID.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_0_34();
  sub_27546EAD0();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    OUTLINED_FUNCTION_0_34();
    v5 = sub_27546E9B0();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_1(v9);
    *a2 = v5;
    a2[1] = v7;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t TransitionPlanner.Song.ID.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27546EAF0();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_27546E9F0();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

unint64_t sub_275444F4C()
{
  result = qword_2809DBD30;
  if (!qword_2809DBD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBD30);
  }

  return result;
}

unint64_t sub_275444FA4()
{
  result = qword_2809DBD38;
  if (!qword_2809DBD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBD38);
  }

  return result;
}

unint64_t sub_275444FFC()
{
  result = qword_2809DBD40;
  if (!qword_2809DBD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBD40);
  }

  return result;
}

void *sub_275445080@<X0>(uint64_t *a1@<X0>, double a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v6 = v4;
  if (a3)
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    result = sub_2753EE13C(a1, v13);
    if (v5)
    {
      return result;
    }

    memcpy(__dst, v13, 0x99uLL);
    sub_27544717C(__dst);
    goto LABEL_13;
  }

  sub_2753F161C(v6, v16);
  if (a2 < 0.0001 || a2 > 1.0)
  {
    sub_275408F98();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  sub_2753EE13C(a1, __src);
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  memcpy(__dst, __src, 0x99uLL);
  sub_275460AA4(v13, __dst, a2);
  __swift_destroy_boxed_opaque_existential_1(v16);
  memcpy(__dst, v13, sizeof(__dst));
  sub_27544715C(__dst);
LABEL_13:
  memcpy(v17, __dst, sizeof(v17));
  return memcpy(a4, v17, 0x178uLL);
}

void TransitionPlanner.configuration.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t TransitionPlanner.init(configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  v6 = *(a1 + 8);
  if (qword_2809DACB0 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2809DACB0);
  }

  v7 = sub_27546E3E0();
  __swift_project_value_buffer(v7, qword_2809F3C00);
  v8 = sub_27546E3C0();
  v9 = sub_27546E6E0();
  if (OUTLINED_FUNCTION_1_33(v9))
  {
    v10 = OUTLINED_FUNCTION_16_0();
    v39 = v2;
    v11 = a2;
    v12 = OUTLINED_FUNCTION_7_5();
    *&v33 = v12;
    *v10 = 136315138;
    *&v36 = v5;
    BYTE8(v36) = v6;
    v13 = sub_27546E540();
    v15 = v5;
    v16 = sub_275446968(v13, v14, &v33);

    *(v10 + 4) = v16;
    v5 = v15;
    OUTLINED_FUNCTION_6_19();
    _os_log_impl(v17, v18, v19, v20, v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    a2 = v11;
    v3 = v39;
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_7_3();
  }

  v21 = sub_275423FF0();
  v37 = &_s29DefaultStylingStrategyCatalogVN;
  v38 = &off_288414920;
  *&v36 = v21;
  v34 = &_s29DesignTimeTransitionSchedulerVN;
  v35 = &off_288411B10;
  v22 = swift_allocObject();
  *&v33 = v22;
  v22[5] = &_s39DesignTimeContinuousTransitionSchedulerVN;
  v22[6] = &off_288411A00;
  v22[10] = &_s36DesignTimeSteppedTransitionSchedulerVN;
  v22[11] = &off_288411A80;
  v23 = sub_27542C2A4(0xD000000000000010, 0x800000027546F400, 1852797802, 0xE400000000000000);
  if (v3)
  {
    __swift_destroy_boxed_opaque_existential_1(&v33);
    return __swift_destroy_boxed_opaque_existential_1(&v36);
  }

  else
  {
    v31 = &type metadata for DefaultTransitionStyleCatalog;
    v32 = &off_288415218;
    *&v30 = v23;
    sub_2754495F0(0x6870617247505344, 0xE800000000000000, 1735422820, 0xE400000000000000, v29);
    v25 = v29[0];
    v24 = v29[1];
    v27 = v5;
    v28 = v6;
    sub_275446604(&v27, &v30, v29, &v36);
    sub_2753F16E0(&v30, a2 + 16);
    sub_2753F16E0(&v36, a2 + 72);
    result = sub_2753F16E0(&v33, a2 + 112);
    *a2 = v5;
    *(a2 + 8) = v6;
    *(a2 + 56) = v25;
    *(a2 + 64) = v24;
  }

  return result;
}

uint64_t sub_2754454E4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

double TransitionPlanner.transition(from:to:criteria:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v93 = a4;
  v9 = type metadata accessor for TransitionPlanner.Song(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v95 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v94 = (&v91 - v13);
  v14 = MEMORY[0x28223BE20](v12);
  v96 = (&v91 - v15);
  MEMORY[0x28223BE20](v14);
  v17 = (&v91 - v16);
  v100 = *a3;
  v99 = *(a3 + 8);
  v18 = a3[2];
  v97 = a3[3];
  v98 = v18;
  v106 = *(a3 + 32);
  v104 = *(a3 + 33);
  if (qword_2809DACB0 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2809DACB0);
  }

  v19 = sub_27546E3E0();
  v20 = __swift_project_value_buffer(v19, qword_2809F3C00);
  sub_275446F08(a1, v17);
  v21 = sub_27546E3C0();
  v22 = sub_27546E6E0();
  v23 = OUTLINED_FUNCTION_1_33(v22);
  v103 = v5;
  v113[23] = v20;
  v105 = a2;
  v102 = a1;
  if (v23)
  {
    v24 = OUTLINED_FUNCTION_16_0();
    v25 = OUTLINED_FUNCTION_7_5();
    *&v110[0] = v25;
    *v24 = 136315138;
    v27 = *v17;
    v26 = v17[1];

    sub_275446F6C(v17);
    v28 = sub_275446968(v27, v26, v110);

    *(v24 + 4) = v28;
    OUTLINED_FUNCTION_6_19();
    _os_log_impl(v29, v30, v31, v32, v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    a2 = v105;
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_7_3();
  }

  else
  {

    sub_275446F6C(v17);
  }

  v33 = v96;
  sub_275446F08(a2, v96);
  v34 = sub_27546E3C0();
  v35 = sub_27546E6E0();
  if (OUTLINED_FUNCTION_1_33(v35))
  {
    v36 = OUTLINED_FUNCTION_16_0();
    v37 = OUTLINED_FUNCTION_7_5();
    *&v110[0] = v37;
    *v36 = 136315138;
    v38 = *v33;
    v39 = v33[1];

    sub_275446F6C(v33);
    v40 = sub_275446968(v38, v39, v110);

    *(v36 + 4) = v40;
    OUTLINED_FUNCTION_6_19();
    _os_log_impl(v41, v42, v43, v44, v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_7_3();
  }

  else
  {

    sub_275446F6C(v33);
  }

  v45 = v104;
  v46 = sub_27546E3C0();
  v47 = sub_27546E6E0();
  if (OUTLINED_FUNCTION_1_33(v47))
  {
    v48 = OUTLINED_FUNCTION_16_0();
    v96 = v48;
    v92 = OUTLINED_FUNCTION_7_5();
    v108[0] = v92;
    *v48 = 136315138;
    v49 = v100;
    *&v110[0] = v100;
    v50 = v99;
    BYTE8(v110[0]) = v99;
    v51 = v97;
    v52 = v98;
    OUTLINED_FUNCTION_5_18();
    v53 = sub_27546E540();
    v55 = sub_275446968(v53, v54, v108);

    *(v96 + 4) = v55;
    v45 = v104;
    OUTLINED_FUNCTION_6_19();
    _os_log_impl(v56, v57, v58, v59, v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v92);
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_7_3();
  }

  else
  {

    v49 = v100;
    v50 = v99;
    v51 = v97;
    v52 = v98;
  }

  *&v110[0] = v49;
  BYTE8(v110[0]) = v50;
  OUTLINED_FUNCTION_5_18();
  v61 = v101;
  v62 = v102;
  v63 = v105;
  sub_275445C94(v102, v105, v110);
  if (!v61)
  {
    v65 = v50;
    v66 = v62;
    v67 = v52;
    v68 = v45;
    v69 = v51;
    v70 = v94;
    sub_275446F08(v66, v94);
    v71 = v95;
    sub_275446F08(v63, v95);
    v108[0] = v49;
    LOBYTE(v108[1]) = v65;
    v108[2] = v67;
    v108[3] = v69;
    LOBYTE(v108[4]) = v106;
    BYTE1(v108[4]) = v68;
    v72 = v103;
    sub_2753F161C((v103 + 2), v110);
    sub_275407B1C(v70, v71, v108, v110, v113);
    v73 = v72[12];
    v74 = v72[13];
    __swift_project_boxed_opaque_existential_1(v72 + 9, v73);
    (*(v74 + 24))(v111, v113, v73, v74);
    if (v111[6])
    {
      memcpy(v112, v111, sizeof(v112));
      sub_2754461B0(v113, v112, v109);
      v75 = sub_27546E3C0();
      v76 = sub_27546E6E0();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = OUTLINED_FUNCTION_16_0();
        v78 = OUTLINED_FUNCTION_7_5();
        v108[0] = v78;
        *v77 = 136315138;
        memcpy(v110, v109, 0x50uLL);
        v79 = Transition.Summary.description.getter();
        v81 = sub_275446968(v79, v80, v108);

        *(v77 + 4) = v81;
        v82 = v103;
        _os_log_impl(&dword_2753EC000, v75, v76, "Transition Planner: Transition summary = %s.", v77, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v78);
        OUTLINED_FUNCTION_7_3();
        OUTLINED_FUNCTION_7_3();

        v83 = v102;
      }

      else
      {

        v83 = v102;
        v82 = v72;
      }

      sub_2754463D8(v83, v105, v112, v108);
      sub_2753F25A4(v112);
      sub_275409024(v113);
      memcpy(&v107[80], v108, 0x178uLL);
      v90 = v82[7];
      v89 = v82[8];
      memcpy(v107, v109, 0x50uLL);
      memcpy(v110, v107, 0x1C8uLL);
      *(&v110[28] + 1) = v90;
      *&v110[29] = v89;
      sub_275447044(v110);
      memcpy(v93, v110, 0x1D9uLL);
    }

    else
    {
      sub_275446FC8(v111, &qword_2809DB0D0, &_s13StylingResultVN);
      sub_275445D70(v113, v110);
      v84 = v110[0];
      v85 = v110[1];
      v86 = sub_27546E3C0();
      v87 = sub_27546E6E0();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        *v88 = 0;
        _os_log_impl(&dword_2753EC000, v86, v87, "Transition Planner: No transition.", v88, 2u);
        OUTLINED_FUNCTION_7_3();
      }

      sub_275409024(v113);
      v110[0] = v84;
      LOBYTE(v110[1]) = v85;
      sub_275447038(v110);
      memcpy(v93, v110, 0x1D9uLL);
    }
  }

  return result;
}

void sub_275445C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a3;
  v4 = *(a3 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  if ((v4 & 0x80000000) == 0)
  {
    v7 = *a3;
    if (*(a1 + 24))
    {
      goto LABEL_7;
    }

    v8 = *(a1 + 16);
    if (v5 >= 0.0)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  if (v4)
  {
LABEL_14:
    sub_2754338E0(*(a2 + 16), *(a2 + 24));
    return;
  }

  v7 = v3;
  if (v6)
  {
LABEL_7:
    if (v7 < 0.0)
    {
LABEL_8:
      sub_275408F98();
      swift_allocError();
      *v9 = 6;
      swift_willThrow();
      return;
    }

    goto LABEL_14;
  }

  v8 = v5;
  if (v5 >= 0.0)
  {
LABEL_10:
    if (v7 < 0.0 || v7 > v8)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  __break(1u);
}

void sub_275445D70(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 56))(&v32, v4, v5);
  v6 = v32;
  v7 = a1[8];
  v8 = a1[9];
  __swift_project_boxed_opaque_existential_1(a1 + 5, v7);
  (*(v8 + 56))(&v31, v7, v8);
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  (*(v10 + 56))(&v32, v9, v10);
  v11 = a1[8];
  v12 = a1[9];
  __swift_project_boxed_opaque_existential_1(a1 + 5, v11);
  (*(v12 + 56))(&v31, v11, v12);
  if (v6)
  {
    if (v31)
    {
      if (qword_2809DACB0 != -1)
      {
        swift_once();
      }

      v13 = sub_27546E3E0();
      __swift_project_value_buffer(v13, qword_2809F3C00);
      v14 = sub_27546E3C0();
      v15 = sub_27546E6E0();
      if (!os_log_type_enabled(v14, v15))
      {
        goto LABEL_17;
      }

      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = "Transition Planner: Both songs have timing accuracy issues.";
    }

    else
    {
      if (qword_2809DACB0 != -1)
      {
        swift_once();
      }

      v19 = sub_27546E3E0();
      __swift_project_value_buffer(v19, qword_2809F3C00);
      v14 = sub_27546E3C0();
      v15 = sub_27546E6E0();
      if (!os_log_type_enabled(v14, v15))
      {
        goto LABEL_17;
      }

      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = "Transition Planner: Outgoing song has timing accuracy issues.";
    }

LABEL_16:
    _os_log_impl(&dword_2753EC000, v14, v15, v17, v16, 2u);
    MEMORY[0x277C78090](v16, -1, -1);
LABEL_17:

    v20 = a1[3];
    v21 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v20);
    (*(v21 + 56))(&v32, v20, v21);
    v22 = v32;
    v23 = a1[8];
    v24 = a1[9];
    __swift_project_boxed_opaque_existential_1(a1 + 5, v23);
    (*(v24 + 56))(&v31, v23, v24);
    v25 = v31;
    v26 = 1;
    goto LABEL_18;
  }

  if (v31)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v18 = sub_27546E3E0();
    __swift_project_value_buffer(v18, qword_2809F3C00);
    v14 = sub_27546E3C0();
    v15 = sub_27546E6E0();
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_17;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = "Transition Planner: Incoming song has timing accuracy issues.";
    goto LABEL_16;
  }

  if (qword_2809DACB0 != -1)
  {
    swift_once();
  }

  v27 = sub_27546E3E0();
  __swift_project_value_buffer(v27, qword_2809F3C00);
  v28 = sub_27546E3C0();
  v29 = sub_27546E6E0();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_2753EC000, v28, v29, "Transition Planner: Songs not suitable for transition.", v30, 2u);
    MEMORY[0x277C78090](v30, -1, -1);
  }

  if (qword_2809DADA8 != -1)
  {
    swift_once();
  }

  v26 = 0;
  v22 = qword_2809F3C18;
  v25 = unk_2809F3C20;
LABEL_18:
  *a2 = v22;
  *(a2 + 8) = v25;
  *(a2 + 16) = v26;
}

void *sub_2754461B0@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = *(a2 + 1);
  sub_2754097E0(v30);
  sub_2753F12B8(v30, __src);
  if (v28)
  {
    sub_2753F122C(v30);
    v7 = __src;
  }

  else
  {
    memcpy(v26, __src, 0x51uLL);
    v7 = v29;
    sub_275409C88();
    sub_2753F1398(v26);
    sub_2753F122C(v30);
  }

  v8 = *v7;
  v9 = *(v7 + 1);
  sub_275409858(v30);
  sub_2753F12B8(v30, __src);
  if (v28)
  {
    sub_2753F122C(v30);
    v10 = __src;
  }

  else
  {
    memcpy(v26, __src, 0x51uLL);
    v10 = v29;
    sub_275409C88();
    sub_2753F1398(v26);
    sub_2753F122C(v30);
  }

  v11 = *v10;
  v12 = *(v10 + 1);
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  (*(v14 + 48))(v30, v13, v14);
  v15 = v30[0];
  v16 = a1[8];
  v17 = a1[9];
  __swift_project_boxed_opaque_existential_1(a1 + 5, v16);
  (*(v17 + 48))(__src, v16, v17);
  v18 = *__src;
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  (*(v20 + 56))(v30, v19, v20);
  v21 = v30[0];
  v22 = a1[8];
  v23 = a1[9];
  __swift_project_boxed_opaque_existential_1(a1 + 5, v22);
  result = (*(v23 + 56))(__src, v22, v23);
  v25 = *__src;
  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v8;
  *(a3 + 24) = v9;
  *(a3 + 32) = v11;
  *(a3 + 40) = v12;
  *(a3 + 48) = v15;
  *(a3 + 56) = v18;
  *(a3 + 64) = v21;
  *(a3 + 72) = v25;
  return result;
}

uint64_t sub_2754463D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v42 = a4;
  v7 = type metadata accessor for TransitionPlanner.Song(0);
  v8 = v7 - 8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v32[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v32[-v12];
  sub_275446F08(a1, &v32[-v12]);
  sub_275446F08(a2, v11);
  v14 = *(a3 + 8);
  v15 = *(a3 + 16);
  v16 = *(a3 + 24);
  v39 = *(a3 + 32);
  v40 = v14;
  v38 = *(a3 + 40);
  v17 = *(a3 + 48);
  v36 = *(a3 + 56);
  v37 = v17;
  v35 = *(a3 + 64);
  sub_2753EF3C8(a3 + 72, v43);
  v18 = &v13[*(v8 + 36)];
  v19 = *v18;
  v34 = *(v18 + 1);
  v33 = v18[16];
  v20 = v18[17];

  sub_275446F6C(v13);
  if (v20)
  {
    v19 = 0;
    v21 = 0;
  }

  else
  {
    v21 = v34;
  }

  v22 = v20 | v33;
  v23 = &v11[*(v8 + 36)];
  v24 = *v23;
  v25 = *(v23 + 1);
  v26 = v23[16];
  v27 = v23[17];
  sub_275446F6C(v11);
  if (v27)
  {
    v28 = 0;
  }

  else
  {
    v28 = v24;
  }

  if (v27)
  {
    v29 = 0;
  }

  else
  {
    v29 = v25;
  }

  v44[0] = v19;
  v44[1] = v21;
  v45 = v22 & 1;
  v46 = v28;
  v47 = v29;
  v48 = (v27 | v26) & 1;
  v49 = v40;
  v50 = v15;
  v51 = v16;
  v52 = v39;
  v53 = v38;
  v54 = v37;
  v55 = v36;
  v56 = v35;
  memcpy(v57, v43, sizeof(v57));
  v30 = v41;
  __swift_project_boxed_opaque_existential_1((v41 + 112), *(v41 + 136));
  sub_275445080(v44, *v30, *(v30 + 8), v42);
  return sub_275447108(v44);
}

void sub_275446604(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4[3];
  v7 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v6);
  v8 = (*(v7 + 8))(v6, v7);
  v28 = *(v8 + 16);
  if (v28)
  {
    v9 = 0;
    v10 = v8 + 32;
    v30 = v8;
    v26 = v8 + 32;
    while (1)
    {
      if (v9 >= *(v8 + 16))
      {
        goto LABEL_22;
      }

      v29 = v9;
      sub_2753F161C(v10 + 40 * v9, v36);
      v11 = v37;
      v4 = v38;
      __swift_project_boxed_opaque_existential_1(v36, v37);
      v12 = (*(v4 + 24))(v11, v4);
      __swift_destroy_boxed_opaque_existential_1(v36);
      v31 = *(v12 + 16);
      if (v31)
      {
        break;
      }

LABEL_13:

      v9 = v29 + 1;
      v8 = v30;
      v10 = v26;
      if (v29 + 1 == v28)
      {

        return;
      }
    }

    v13 = 0;
    v14 = v12 + 32;
    v40 = v12;
    v27 = v12 + 32;
LABEL_6:
    if (v13 >= *(v12 + 16))
    {
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      swift_once();
      goto LABEL_16;
    }

    sub_2753F161C(v14 + 40 * v13, v33);
    v32 = v13 + 1;
    v4 = v34;
    v15 = v35;
    __swift_project_boxed_opaque_existential_1(v33, v34);
    v16 = (*(v15 + 8))(v4, v15);
    __swift_destroy_boxed_opaque_existential_1(v33);
    v17 = 0;
    v18 = *(v16 + 16);
    while (1)
    {
      if (v18 == v17)
      {

        v13 = v32;
        v12 = v40;
        v14 = v27;
        if (v32 != v31)
        {
          goto LABEL_6;
        }

        goto LABEL_13;
      }

      if (v17 >= *(v16 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      v4 = *(v16 + 8 * v17 + 32);
      v19 = a2[3];
      v20 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v19);
      (*(v20 + 16))(v39, v4, v19, v20);
      if (!v39[5])
      {
        break;
      }

      ++v17;
      sub_275446FC8(v39, &qword_2809DBD50, &unk_2884151A0);
    }

    if (qword_2809DACB0 != -1)
    {
      goto LABEL_23;
    }

LABEL_16:
    v21 = sub_27546E3E0();
    __swift_project_value_buffer(v21, qword_2809F3C00);
    v22 = sub_27546E3C0();
    v23 = sub_27546E6D0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = v4;
      _os_log_impl(&dword_2753EC000, v22, v23, "Transition style missing. ID = %ld.", v24, 0xCu);
      MEMORY[0x277C78090](v24, -1, -1);
    }

    sub_275408F98();
    swift_allocError();
    *v25 = 13;
    swift_willThrow();
  }

  else
  {
  }
}

unint64_t sub_275446968(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_275446A2C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_275447198(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_275446A2C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_275446B2C(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_27546E7E0();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_275446B2C(uint64_t a1, unint64_t a2)
{
  v3 = sub_275446B78(a1, a2);
  sub_275446C90(&unk_288410940);
  return v3;
}

uint64_t sub_275446B78(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_27546E580())
  {
    result = sub_275446D74(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_27546E760();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_27546E7E0();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

void sub_275446C90(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v5 > *(v3 + 3) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    v3 = sub_275446DFC(isUniquelyReferenced_nonNull_native, v8, 1, v3);
  }

  if (!*(a1 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v9 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v10 = *(v3 + 2);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 2) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *sub_275446D74(uint64_t a1, uint64_t a2)
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

  sub_2754471F4(0, &qword_2809DBD48, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_275446DFC(char *result, int64_t a2, char a3, char *a4)
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
    sub_2754471F4(0, &qword_2809DBD48, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_275446F08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransitionPlanner.Song(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275446F6C(uint64_t a1)
{
  v2 = type metadata accessor for TransitionPlanner.Song(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_275446FC8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_2754471F4(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_275447054(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 152))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_275447094(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 152) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27544715C(uint64_t result)
{
  v1 = *(result + 240);
  v2 = *(result + 320) | 0x8000000000000000;
  *(result + 160) = *(result + 160);
  *(result + 240) = v1;
  *(result + 320) = v2;
  return result;
}

uint64_t sub_27544717C(uint64_t result)
{
  v1 = *(result + 240);
  v2 = *(result + 320);
  *(result + 160) = *(result + 160);
  *(result + 240) = v1;
  *(result + 320) = v2;
  return result;
}

uint64_t sub_275447198(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_2754471F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

BOOL OUTLINED_FUNCTION_1_33(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_5_18()
{
  *(v0 + 1056) = v4;
  *(v0 + 1064) = v1;
  *(v0 + 1072) = v2;
  *(v0 + 1073) = v3;
}

uint64_t sub_275447280(uint64_t (*a1)(char *, char *), uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v57 = a8;
  v9 = v8;
  v71 = a2;
  v72 = a4;
  v70 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_35();
  v65 = v14;
  v16 = MEMORY[0x28223BE20](v15);
  v58 = a5;
  v59 = &v53 - v17;
  v56 = *(a5 - 8);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_8_1();
  v68 = (v18 - v19);
  MEMORY[0x28223BE20](v20);
  v66 = &v53 - v21;
  sub_27546E6F0();
  OUTLINED_FUNCTION_0_35();
  v54 = v23;
  v55 = v22;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_8_1();
  v26 = v24 - v25;
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v53 - v29;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_8_1();
  v67 = v31 - v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_0_35();
  v64 = v34;
  MEMORY[0x28223BE20](v35);
  v63 = &v53 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a6;
  v73 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_35();
  v60 = v37;
  MEMORY[0x28223BE20](v38);
  v40 = &v53 - v39;
  v41 = sub_27546E5A0();
  v74 = sub_27546E810();
  v69 = sub_27546E820();
  sub_27546E7F0();
  (*(v64 + 16))(v63, v61, a3);
  v72 = v40;
  v64 = a3;
  result = sub_27546E590();
  if (v41 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v41)
  {
    v43 = (v65 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_27546E700();
      result = __swift_getEnumTagSinglePayload(v30, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v70(v30, v66);
      if (v9)
      {
        v51 = OUTLINED_FUNCTION_2_31();
        v52(v51);

        (*(v56 + 32))(v57, v66, v58);
        return (*v43)(v30, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v43)(v30, AssociatedTypeWitness);
      sub_27546E800();
      if (!--v41)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v44 = (v65 + 32);
  v45 = (v65 + 8);
  v46 = v59;
  while (1)
  {
    sub_27546E700();
    if (__swift_getEnumTagSinglePayload(v26, 1, AssociatedTypeWitness) == 1)
    {
      v47 = OUTLINED_FUNCTION_2_31();
      v48(v47);
      (*(v54 + 8))(v26, v55);
      return v74;
    }

    (*v44)(v46, v26, AssociatedTypeWitness);
    v70(v46, v68);
    if (v9)
    {
      break;
    }

    v9 = 0;
    (*v45)(v46, AssociatedTypeWitness);
    sub_27546E800();
  }

  (*v45)(v46, AssociatedTypeWitness);
  v49 = OUTLINED_FUNCTION_2_31();
  v50(v49);

  return (*(v56 + 32))(v57, v68, v58);
}

void static ClosedRange<>.songTimeRange(_:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  if (a3 < a2)
  {
    __break(1u);
  }

  else
  {
    *a1 = a2;
    a1[1] = a3;
  }
}

void static ClosedRange<>.stretchedSongTimeRange(_:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  if (a3 < a2)
  {
    __break(1u);
  }

  else
  {
    *a1 = a2;
    a1[1] = a3;
  }
}

void static ClosedRange<>.transitionTimeRange(_:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  if (a3 < a2)
  {
    __break(1u);
  }

  else
  {
    *a1 = a2;
    a1[1] = a3;
  }
}

_SonicKit_MusicKit_Packages::SongTime __swiftcall SongTime.advanced(by:)(Swift::Double by)
{
  result.rawValue = *v2 + by;
  *v1 = result.rawValue;
  return result;
}

void sub_275447C24(double *a1@<X0>, uint64_t a2@<X8>)
{
  static SongTime.songTime(_:)(&v3, *a1);
  *a2 = v3;
  *(a2 + 8) = 0;
}

uint64_t SongTime.debugDescription.getter()
{
  MEMORY[0x277C776B0](0x656D6954676E6F53, 0xE900000000000028);
  sub_27546E650();
  MEMORY[0x277C776B0](41, 0xE100000000000000);
  return 0;
}

unint64_t sub_275447E48()
{
  result = qword_2809DBD58;
  if (!qword_2809DBD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBD58);
  }

  return result;
}

unint64_t sub_275447EB4()
{
  result = qword_2809DBD60;
  if (!qword_2809DBD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBD60);
  }

  return result;
}

_SonicKit_MusicKit_Packages::StretchedSongTime __swiftcall StretchedSongTime.advanced(by:)(Swift::Double by)
{
  result.rawValue = *v2 + by;
  *v1 = result.rawValue;
  return result;
}

void sub_275447F3C(double *a1@<X0>, uint64_t a2@<X8>)
{
  static StretchedSongTime.stretchedSongTime(_:)(&v3, *a1);
  *a2 = v3;
  *(a2 + 8) = 0;
}

uint64_t StretchedSongTime.debugDescription.getter()
{
  sub_27546E770();
  MEMORY[0x277C776B0](0xD000000000000012, 0x800000027546F420);
  sub_27546E650();
  MEMORY[0x277C776B0](41, 0xE100000000000000);
  return 0;
}

unint64_t sub_27544814C()
{
  result = qword_2809DBD68;
  if (!qword_2809DBD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBD68);
  }

  return result;
}

unint64_t sub_2754481A4()
{
  result = qword_2809DBD70;
  if (!qword_2809DBD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBD70);
  }

  return result;
}

unint64_t sub_27544820C()
{
  result = qword_2809DBD78;
  if (!qword_2809DBD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBD78);
  }

  return result;
}

_SonicKit_MusicKit_Packages::TransitionTime __swiftcall TransitionTime.advanced(by:)(Swift::Double by)
{
  result.rawValue = *v2 + by;
  *v1 = result.rawValue;
  return result;
}

uint64_t sub_2754482A4(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_0_36(a1);
  sub_2754271B0(v1);
  sub_27546E550();

  return sub_27546EAC0();
}

uint64_t sub_275448324(uint64_t a1)
{
  OUTLINED_FUNCTION_0_36(a1);
  sub_27546E550();
  return sub_27546EAC0();
}

uint64_t sub_275448398(uint64_t a1, uint64_t (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_0_36(a1);
  a2(v5, a1);
  return sub_27546EAC0();
}

uint64_t sub_2754483EC(uint64_t a1)
{
  OUTLINED_FUNCTION_0_36(a1);
  MEMORY[0x277C77BF0](a1);
  return sub_27546EAC0();
}

uint64_t sub_27544842C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_36(a1);
  sub_27546E550();
  return sub_27546EAC0();
}

uint64_t sub_27544848C(uint64_t (*a1)(_BYTE *, double), double a2)
{
  OUTLINED_FUNCTION_0_36(a1);
  a1(v5, a2);
  return sub_27546EAC0();
}

void sub_2754484F8(double *a1@<X0>, uint64_t a2@<X8>)
{
  static TransitionTime.transitionTime(_:)(&v3, *a1);
  *a2 = v3;
  *(a2 + 8) = 0;
}

uint64_t TransitionTime.debugDescription.getter()
{
  sub_27546E770();
  MEMORY[0x277C776B0](0x697469736E617254, 0xEF28656D69546E6FLL);
  sub_27546E650();
  MEMORY[0x277C776B0](41, 0xE100000000000000);
  return 0;
}

unint64_t sub_27544872C()
{
  result = qword_2809DBD80;
  if (!qword_2809DBD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBD80);
  }

  return result;
}

unint64_t sub_275448798()
{
  result = qword_2809DBD88;
  if (!qword_2809DBD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBD88);
  }

  return result;
}

void *OUTLINED_FUNCTION_0_36(uint64_t a1, ...)
{

  return sub_27546EA90();
}

void static Transition.AudioGraph.default.getter(void *a1@<X8>)
{
  sub_2754495F0(0x6870617247505344, 0xE800000000000000, 1735422820, 0xE400000000000000, v4);
  if (!v1)
  {
    v3 = v4[1];
    *a1 = v4[0];
    a1[1] = v3;
  }
}

uint64_t static Transition.AudioGraph.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_27546E9A0();
  }
}

uint64_t sub_2754488A0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6870617247707364 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_27546E9A0();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_275448934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2754488A0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_275448960(uint64_t a1)
{
  v2 = sub_275449100();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27544899C(uint64_t a1)
{
  v2 = sub_275449100();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2754489D8(uint64_t a1)
{
  v2 = sub_2754490AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275448A14(uint64_t a1)
{
  v2 = sub_2754490AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Transition.AudioGraph.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_2_32();
  v5 = MEMORY[0x277D84538];
  sub_2754491A8(0, v6, v7, v8, MEMORY[0x277D84538]);
  v29 = v9;
  OUTLINED_FUNCTION_8_9();
  v31 = v10;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  v14 = OUTLINED_FUNCTION_1_34();
  sub_2754491A8(v14, v15, v16, v17, v5);
  v19 = v18;
  OUTLINED_FUNCTION_8_9();
  v30 = v20;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v21);
  v23 = &v28 - v22;
  v24 = *v3;
  v25 = v3[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275449100();
  sub_27546EB00();
  sub_2754490AC();
  sub_27546E8F0();
  v32 = v24;
  v33 = v25;
  v26 = v29;
  sub_275449154();
  sub_27546E950();
  (*(v31 + 8))(v13, v26);
  return (*(v30 + 8))(v23, v19);
}

uint64_t Transition.AudioGraph.init(from:)@<X0>(void *a1@<X0>, void *a3@<X8>)
{
  v41 = a3;
  OUTLINED_FUNCTION_2_32();
  v4 = MEMORY[0x277D844C8];
  sub_2754491A8(0, v5, v6, v7, MEMORY[0x277D844C8]);
  v9 = v8;
  OUTLINED_FUNCTION_8_9();
  v39[1] = v10;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_1_34();
  sub_2754491A8(v12, v13, v14, &_s10AudioGraphO10CodingKeysON, v4);
  v16 = v15;
  OUTLINED_FUNCTION_8_9();
  v40 = v17;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v18);
  v20 = v39 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275449100();
  v21 = v44;
  sub_27546EAE0();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v44 = v9;
  v22 = v41;
  v23 = sub_27546E8E0();
  result = sub_275433874(v23, 0);
  if (v25 == v26 >> 1)
  {
    goto LABEL_6;
  }

  if (v25 < (v26 >> 1))
  {
    v27 = sub_27543386C(v25 + 1);
    v29 = v28;
    v31 = v30;
    swift_unknownObjectRelease();
    if (v29 == v31 >> 1)
    {
      v39[0] = v27;
      sub_2754490AC();
      sub_27546E850();
      sub_275449210();
      sub_27546E8D0();
      v35 = v40;
      swift_unknownObjectRelease();
      v36 = OUTLINED_FUNCTION_3_25();
      v37(v36);
      (*(v35 + 8))(v20, v16);
      v38 = v43;
      *v22 = v42;
      v22[1] = v38;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

LABEL_6:
    v32 = sub_27546E7D0();
    swift_allocError();
    v34 = v33;
    sub_2754333D4(0);
    *v34 = &type metadata for Transition.AudioGraph;
    sub_27546E860();
    sub_27546E7B0();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84160], v32);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v40 + 8))(v20, v16);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __break(1u);
  return result;
}

unint64_t sub_2754490AC()
{
  result = qword_2809DBD98;
  if (!qword_2809DBD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBD98);
  }

  return result;
}

unint64_t sub_275449100()
{
  result = qword_2809DBDA8;
  if (!qword_2809DBDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBDA8);
  }

  return result;
}

unint64_t sub_275449154()
{
  result = qword_2809DBDB0;
  if (!qword_2809DBDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBDB0);
  }

  return result;
}

void sub_2754491A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_275449210()
{
  result = qword_2809DBDC8;
  if (!qword_2809DBDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBDC8);
  }

  return result;
}

_BYTE *sub_275449288(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x275449324);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_275449360()
{
  result = qword_2809DBDD0;
  if (!qword_2809DBDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBDD0);
  }

  return result;
}

unint64_t sub_2754493B8()
{
  result = qword_2809DBDD8;
  if (!qword_2809DBDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBDD8);
  }

  return result;
}

unint64_t sub_275449410()
{
  result = qword_2809DBDE0;
  if (!qword_2809DBDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBDE0);
  }

  return result;
}

unint64_t sub_275449468()
{
  result = qword_2809DBDE8;
  if (!qword_2809DBDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBDE8);
  }

  return result;
}

unint64_t sub_2754494C0()
{
  result = qword_2809DBDF0;
  if (!qword_2809DBDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBDF0);
  }

  return result;
}

unint64_t sub_275449518()
{
  result = qword_2809DBDF8;
  if (!qword_2809DBDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBDF8);
  }

  return result;
}

double sub_2754495F0@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35[0] = a5;
  v9 = sub_27546E530();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_27546E140();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v35 - v15;
  if (qword_2809DADB0 != -1)
  {
    swift_once();
  }

  v17 = sub_27542CA80(a1, a2, a3, a4, qword_2809F3C28);
  if (v17)
  {
    v18 = v17;

    sub_27546E130();

    (*(v11 + 32))(v16, v14, v10);
    sub_27546E520();
    v19 = v35[1];
    v20 = sub_27546E4F0();
    if (v19)
    {
      (*(v11 + 8))(v16, v10);
    }

    else
    {
      v31 = v20;
      v32 = v21;
      (*(v11 + 8))(v16, v10);
      v33 = v35[0];
      *v35[0] = v31;
      *(v33 + 8) = v32;
    }
  }

  else
  {
    v23 = a3;
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v24 = sub_27546E3E0();
    __swift_project_value_buffer(v24, qword_2809F3C00);

    v25 = sub_27546E3C0();
    v26 = sub_27546E6D0();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v36 = v28;
      *v27 = 136315394;
      v29 = sub_275446968(a1, a2, &v36);

      *(v27 + 4) = v29;
      *(v27 + 12) = 2080;
      v30 = sub_275446968(v23, a4, &v36);

      *(v27 + 14) = v30;
      _os_log_impl(&dword_2753EC000, v25, v26, "DSP Graph .dspg resource missing. Name = %s. Extension = %s.", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x277C78090](v28, -1, -1);
      MEMORY[0x277C78090](v27, -1, -1);
    }

    else
    {
    }

    sub_275408F98();
    swift_allocError();
    *v34 = 13;
    swift_willThrow();
  }

  return result;
}

uint64_t Transition.DSPGraph.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Transition.DSPGraph.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_275449A04@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = Transition.DSPGraph.init(rawValue:)(*a1, a1[1], v5);
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_275449A44@<X0>(uint64_t *a1@<X8>)
{
  result = Transition.DSPGraph.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_275449B2C()
{
  result = qword_2809DBE00;
  if (!qword_2809DBE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBE00);
  }

  return result;
}

void sub_275449B80(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = 0;
  v16 = static Transition.AutomationEffectParameter.allCases.getter();
  v5 = *(v16 + 16) + 1;
  while (1)
  {
    if (!--v5)
    {

      *(a3 + 48) = 0;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *a3 = 0u;
      return;
    }

    v7 = *(v16 + v4 + 32);
    v6 = *(v16 + v4 + 40);
    v8 = *(v16 + v4 + 48);
    v9 = *(v16 + v4 + 56);
    v10 = *(v16 + v4 + 64);
    v11 = *(v16 + v4 + 72);
    v12 = *(v16 + v4 + 80);
    if (v11 == a1 && v12 == a2)
    {
      break;
    }

    v4 += 56;
    OUTLINED_FUNCTION_34_0();
    if (sub_27546E9A0())
    {
      goto LABEL_11;
    }
  }

  v11 = a1;
LABEL_11:

  *a3 = v7;
  *(a3 + 8) = v6;
  *(a3 + 16) = v8;
  *(a3 + 24) = v9;
  *(a3 + 32) = v10;
  *(a3 + 40) = v11;
  *(a3 + 48) = v12;
}

uint64_t Transition.AutomationEffectParameter.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static Transition.AutomationEffectParameter.== infix(_:_:)(double *a1, uint64_t a2)
{
  v3 = a1[2];
  v2 = a1[3];
  v4 = a1[4];
  v5 = *(a1 + 5);
  v6 = *(a1 + 6);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 8))
  {
    if (v3 != v8 || v2 != v7 || v4 != v9)
    {
      return 0;
    }

    goto LABEL_22;
  }

  v13 = sub_27546E9A0();
  result = 0;
  if (v13)
  {
    v15 = v3 == v8 && v2 == v7;
    if (v15 && v4 == v9)
    {
LABEL_22:
      if (v5 == v10 && v6 == v11)
      {
        return 1;
      }

      else
      {

        return sub_27546E9A0();
      }
    }
  }

  return result;
}

uint64_t sub_275449DBC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E615265756C6176 && a2 == 0xEA00000000006567;
    if (v6 || (sub_27546E9A0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x56746C7561666564 && a2 == 0xEC00000065756C61;
      if (v7 || (sub_27546E9A0() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000010 && 0x800000027546F440 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_27546E9A0();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_275449F20(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6E615265756C6176;
      break;
    case 2:
      result = 0x56746C7561666564;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_275449FC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275449DBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275449FE8(uint64_t a1)
{
  v2 = sub_27544A28C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27544A024(uint64_t a1)
{
  v2 = sub_27544A28C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Transition.AutomationEffectParameter.encode(to:)(void *a1)
{
  sub_27544A5B4(0, &qword_2809DC460, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_33_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v14 - v7;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[5];
  v14[0] = v1[6];
  v14[1] = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27544A28C();
  sub_27546EB00();
  LOBYTE(v16) = 0;
  v12 = v14[2];
  sub_27546E920();
  if (!v12)
  {
    v16 = v9;
    v17 = v10;
    v15 = 1;
    sub_27544A2E0();
    sub_27544A618(&qword_2809DC478, MEMORY[0x277D83A08], MEMORY[0x277D83640]);
    sub_27546E950();
    LOBYTE(v16) = 2;
    sub_27546E930();
    LOBYTE(v16) = 3;
    sub_27546E920();
  }

  return (*(v5 + 8))(v8, v2);
}

unint64_t sub_27544A28C()
{
  result = qword_2809DC468;
  if (!qword_2809DC468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC468);
  }

  return result;
}

void sub_27544A2E0()
{
  if (!qword_2809DC470)
  {
    v0 = sub_27546E4D0();
    if (!v1)
    {
      atomic_store(v0, &qword_2809DC470);
    }
  }
}

void Transition.AutomationEffectParameter.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_27544A5B4(0, &qword_2809DC480, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_33_0();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27544A28C();
  sub_27546EAE0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v17) = 0;
    OUTLINED_FUNCTION_3_26();
    v6 = sub_27546E8A0();
    v8 = v7;
    sub_27544A2E0();
    sub_27544A618(&qword_2809DC488, MEMORY[0x277D83A30], MEMORY[0x277D83668]);
    sub_27546E8D0();
    OUTLINED_FUNCTION_3_26();
    sub_27546E8B0();
    v10 = v9;
    OUTLINED_FUNCTION_3_26();
    v11 = sub_27546E8A0();
    v13 = v12;
    v16 = v11;
    v14 = OUTLINED_FUNCTION_34_0();
    v15(v14);
    *a2 = v6;
    a2[1] = v8;
    a2[2] = v17;
    a2[3] = v18;
    a2[4] = v10;
    a2[5] = v16;
    a2[6] = v13;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

void sub_27544A5B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_27544A28C();
    v7 = a3(a1, &_s25AutomationEffectParameterV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_27544A618(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_27544A2E0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_27544A678@<X0>(uint64_t *a1@<X8>)
{
  result = Transition.AutomationEffectParameter.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static Transition.AutomationEffectParameter.allCases.getter()
{
  sub_27544C460(0, &qword_2809DC490, MEMORY[0x277D84560]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_27547BED0;
  if (qword_2809DACC0 != -1)
  {
    OUTLINED_FUNCTION_26_3(&qword_2809DACC0);
  }

  v2 = OUTLINED_FUNCTION_1_35(&qword_2809DBE08);
  *(v1 + 32) = v4;
  *(v1 + 40) = v3;
  *(v1 + 48) = *(v5 + 16);
  *(v1 + 64) = v2;
  *(v1 + 72) = v6;
  *(v1 + 80) = v0;
  v7 = qword_2809DACC8;

  if (v7 != -1)
  {
    OUTLINED_FUNCTION_25_2(&qword_2809DACC8);
  }

  v8 = OUTLINED_FUNCTION_1_35(&qword_2809DBE40);
  *(v1 + 88) = v10;
  *(v1 + 96) = v9;
  *(v1 + 104) = *(v11 + 16);
  *(v1 + 120) = v8;
  *(v1 + 128) = v12;
  *(v1 + 136) = v0;
  v13 = qword_2809DACD0;

  if (v13 != -1)
  {
    OUTLINED_FUNCTION_24_5(&qword_2809DACD0);
  }

  v14 = OUTLINED_FUNCTION_1_35(&qword_2809DBE78);
  *(v1 + 144) = v16;
  *(v1 + 152) = v15;
  *(v1 + 160) = *(v17 + 16);
  *(v1 + 176) = v14;
  *(v1 + 184) = v18;
  *(v1 + 192) = v0;
  v19 = qword_2809DACD8;

  if (v19 != -1)
  {
    OUTLINED_FUNCTION_23_6(&qword_2809DACD8);
  }

  v20 = OUTLINED_FUNCTION_1_35(&qword_2809DBEB0);
  *(v1 + 200) = v22;
  *(v1 + 208) = v21;
  *(v1 + 216) = *(v23 + 16);
  *(v1 + 232) = v20;
  *(v1 + 240) = v24;
  *(v1 + 248) = v0;
  v25 = qword_2809DACE0;

  if (v25 != -1)
  {
    OUTLINED_FUNCTION_22_4(&qword_2809DACE0);
  }

  v26 = OUTLINED_FUNCTION_1_35(&qword_2809DBEE8);
  *(v1 + 256) = v28;
  *(v1 + 264) = v27;
  *(v1 + 272) = *(v29 + 16);
  *(v1 + 288) = v26;
  *(v1 + 296) = v30;
  *(v1 + 304) = v0;
  v31 = qword_2809DACE8;

  if (v31 != -1)
  {
    OUTLINED_FUNCTION_21_3(&qword_2809DACE8);
  }

  v32 = OUTLINED_FUNCTION_1_35(&qword_2809DBF20);
  *(v1 + 312) = v34;
  *(v1 + 320) = v33;
  *(v1 + 328) = *(v35 + 16);
  *(v1 + 344) = v32;
  *(v1 + 352) = v36;
  *(v1 + 360) = v0;
  v37 = qword_2809DACF0;

  if (v37 != -1)
  {
    OUTLINED_FUNCTION_20_5(&qword_2809DACF0);
  }

  v38 = OUTLINED_FUNCTION_1_35(&qword_2809DBF58);
  *(v1 + 368) = v40;
  *(v1 + 376) = v39;
  *(v1 + 384) = *(v41 + 16);
  *(v1 + 400) = v38;
  *(v1 + 408) = v42;
  *(v1 + 416) = v0;
  v43 = qword_2809DACF8;

  if (v43 != -1)
  {
    OUTLINED_FUNCTION_19_7(&qword_2809DACF8);
  }

  v44 = OUTLINED_FUNCTION_1_35(&qword_2809DBF90);
  *(v1 + 424) = v46;
  *(v1 + 432) = v45;
  *(v1 + 440) = *(v47 + 16);
  *(v1 + 456) = v44;
  *(v1 + 464) = v48;
  *(v1 + 472) = v0;
  v49 = qword_2809DAD00;

  if (v49 != -1)
  {
    OUTLINED_FUNCTION_18_4(&qword_2809DAD00);
  }

  v50 = OUTLINED_FUNCTION_1_35(&qword_2809DBFC8);
  *(v1 + 480) = v52;
  *(v1 + 488) = v51;
  *(v1 + 496) = *(v53 + 16);
  *(v1 + 512) = v50;
  *(v1 + 520) = v54;
  *(v1 + 528) = v0;
  v55 = qword_2809DAD08;

  if (v55 != -1)
  {
    OUTLINED_FUNCTION_17_5(&qword_2809DAD08);
  }

  v56 = OUTLINED_FUNCTION_1_35(&qword_2809DC000);
  *(v1 + 536) = v57;
  *(v1 + 544) = v58;
  *(v1 + 552) = *(v59 + 16);
  *(v1 + 568) = v56;
  *(v1 + 576) = v60;
  *(v1 + 584) = v0;
  v61 = qword_2809DAD10;

  if (v61 != -1)
  {
    OUTLINED_FUNCTION_16_5(&qword_2809DAD10);
  }

  v62 = OUTLINED_FUNCTION_1_35(&qword_2809DC038);
  *(v1 + 592) = v63;
  *(v1 + 600) = v64;
  *(v1 + 608) = *(v65 + 16);
  *(v1 + 624) = v62;
  *(v1 + 632) = v66;
  *(v1 + 640) = v0;
  v67 = qword_2809DAD18;

  if (v67 != -1)
  {
    OUTLINED_FUNCTION_15_8(&qword_2809DAD18);
  }

  v68 = OUTLINED_FUNCTION_1_35(&qword_2809DC070);
  *(v1 + 648) = v69;
  *(v1 + 656) = v70;
  *(v1 + 664) = *(v71 + 16);
  *(v1 + 680) = v68;
  *(v1 + 688) = v72;
  *(v1 + 696) = v0;
  v73 = qword_2809DAD20;

  if (v73 != -1)
  {
    OUTLINED_FUNCTION_14_6(&qword_2809DAD20);
  }

  v74 = OUTLINED_FUNCTION_1_35(&qword_2809DC0A8);
  *(v1 + 704) = v75;
  *(v1 + 712) = v76;
  *(v1 + 720) = *(v77 + 16);
  *(v1 + 736) = v74;
  *(v1 + 744) = v78;
  *(v1 + 752) = v0;
  v79 = qword_2809DAD28;

  if (v79 != -1)
  {
    OUTLINED_FUNCTION_13_10(&qword_2809DAD28);
  }

  v80 = OUTLINED_FUNCTION_1_35(&qword_2809DC0E0);
  *(v1 + 760) = v81;
  *(v1 + 768) = v82;
  *(v1 + 776) = *(v83 + 16);
  *(v1 + 792) = v80;
  *(v1 + 800) = v84;
  *(v1 + 808) = v0;
  v85 = qword_2809DAD30;

  if (v85 != -1)
  {
    OUTLINED_FUNCTION_12_10(&qword_2809DAD30);
  }

  v86 = OUTLINED_FUNCTION_1_35(&qword_2809DC118);
  *(v1 + 816) = v87;
  *(v1 + 824) = v88;
  *(v1 + 832) = *(v89 + 16);
  *(v1 + 848) = v86;
  *(v1 + 856) = v90;
  *(v1 + 864) = v0;
  v91 = qword_2809DAD38;

  if (v91 != -1)
  {
    OUTLINED_FUNCTION_11_12(&qword_2809DAD38);
  }

  v92 = OUTLINED_FUNCTION_1_35(&qword_2809DC150);
  *(v1 + 872) = v93;
  *(v1 + 880) = v94;
  *(v1 + 888) = *(v95 + 16);
  *(v1 + 904) = v92;
  *(v1 + 912) = v96;
  *(v1 + 920) = v0;
  v97 = qword_2809DAD40;

  if (v97 != -1)
  {
    OUTLINED_FUNCTION_10_12(&qword_2809DAD40);
  }

  v98 = OUTLINED_FUNCTION_1_35(&qword_2809DC188);
  *(v1 + 928) = v99;
  *(v1 + 936) = v100;
  *(v1 + 944) = *(v101 + 16);
  *(v1 + 960) = v98;
  *(v1 + 968) = v102;
  *(v1 + 976) = v0;
  v103 = qword_2809DAD48;

  if (v103 != -1)
  {
    OUTLINED_FUNCTION_9_10(&qword_2809DAD48);
  }

  v104 = OUTLINED_FUNCTION_1_35(&qword_2809DC1C0);
  *(v1 + 984) = v105;
  *(v1 + 992) = v106;
  *(v1 + 1000) = *(v107 + 16);
  *(v1 + 1016) = v104;
  *(v1 + 1024) = v108;
  *(v1 + 1032) = v0;
  v109 = qword_2809DAD50;

  if (v109 != -1)
  {
    OUTLINED_FUNCTION_8_14(&qword_2809DAD50);
  }

  v110 = OUTLINED_FUNCTION_1_35(&qword_2809DC1F8);
  *(v1 + 1040) = v111;
  *(v1 + 1048) = v112;
  *(v1 + 1056) = *(v113 + 16);
  *(v1 + 1072) = v110;
  *(v1 + 1080) = v114;
  *(v1 + 1088) = v0;
  v115 = qword_2809DAD58;

  if (v115 != -1)
  {
    OUTLINED_FUNCTION_7_16(&qword_2809DAD58);
  }

  v116 = OUTLINED_FUNCTION_1_35(&qword_2809DC230);
  *(v1 + 1096) = v117;
  *(v1 + 1104) = v118;
  *(v1 + 1112) = *(v119 + 16);
  *(v1 + 1128) = v116;
  *(v1 + 1136) = v120;
  *(v1 + 1144) = v0;
  v121 = qword_2809DAD60;

  if (v121 != -1)
  {
    OUTLINED_FUNCTION_6_20(&qword_2809DAD60);
  }

  v122 = OUTLINED_FUNCTION_1_35(&qword_2809DC268);
  *(v1 + 1152) = v123;
  *(v1 + 1160) = v124;
  *(v1 + 1168) = *(v125 + 16);
  *(v1 + 1184) = v122;
  *(v1 + 1192) = v126;
  *(v1 + 1200) = v0;
  v127 = qword_2809DAD68;

  if (v127 != -1)
  {
    OUTLINED_FUNCTION_5_19(&qword_2809DAD68);
  }

  v128 = OUTLINED_FUNCTION_1_35(&qword_2809DC2A0);
  *(v1 + 1208) = v129;
  *(v1 + 1216) = v130;
  *(v1 + 1224) = *(v131 + 16);
  *(v1 + 1240) = v128;
  *(v1 + 1248) = v132;
  *(v1 + 1256) = v0;
  v133 = qword_2809DAD70;

  if (v133 != -1)
  {
    OUTLINED_FUNCTION_4_19(&qword_2809DAD70);
  }

  v134 = OUTLINED_FUNCTION_1_35(&qword_2809DC2D8);
  *(v1 + 1264) = v135;
  *(v1 + 1272) = v136;
  *(v1 + 1280) = *(v137 + 16);
  *(v1 + 1296) = v134;
  *(v1 + 1304) = v138;
  *(v1 + 1312) = v0;
  v139 = qword_2809DAD78;

  if (v139 != -1)
  {
    OUTLINED_FUNCTION_2_33(&qword_2809DAD78);
  }

  v140 = OUTLINED_FUNCTION_1_35(&qword_2809DC310);
  *(v1 + 1320) = v141;
  *(v1 + 1328) = v142;
  *(v1 + 1336) = *(v143 + 16);
  *(v1 + 1352) = v140;
  *(v1 + 1360) = v144;
  *(v1 + 1368) = v0;
  v145 = qword_2809DAD80;

  if (v145 != -1)
  {
    OUTLINED_FUNCTION_31_0(&qword_2809DAD80);
  }

  v146 = OUTLINED_FUNCTION_1_35(&qword_2809DC348);
  *(v1 + 1376) = v147;
  *(v1 + 1384) = v148;
  *(v1 + 1392) = *(v149 + 16);
  *(v1 + 1408) = v146;
  *(v1 + 1416) = v150;
  *(v1 + 1424) = v0;
  v151 = qword_2809DAD88;

  if (v151 != -1)
  {
    OUTLINED_FUNCTION_30_1(&qword_2809DAD88);
  }

  v152 = OUTLINED_FUNCTION_1_35(&qword_2809DC380);
  *(v1 + 1432) = v153;
  *(v1 + 1440) = v154;
  *(v1 + 1448) = *(v155 + 16);
  *(v1 + 1464) = v152;
  *(v1 + 1472) = v156;
  *(v1 + 1480) = v0;
  v157 = qword_2809DAD90;

  if (v157 != -1)
  {
    OUTLINED_FUNCTION_29_2(&qword_2809DAD90);
  }

  v158 = OUTLINED_FUNCTION_1_35(&qword_2809DC3B8);
  *(v1 + 1488) = v159;
  *(v1 + 1496) = v160;
  *(v1 + 1504) = *(v161 + 16);
  *(v1 + 1520) = v158;
  *(v1 + 1528) = v162;
  *(v1 + 1536) = v0;
  v163 = qword_2809DAD98;

  if (v163 != -1)
  {
    OUTLINED_FUNCTION_28_3(&qword_2809DAD98);
  }

  v164 = OUTLINED_FUNCTION_1_35(&qword_2809DC3F0);
  *(v1 + 1544) = v165;
  *(v1 + 1552) = v166;
  *(v1 + 1560) = *(v167 + 16);
  *(v1 + 1576) = v164;
  *(v1 + 1584) = v168;
  *(v1 + 1592) = v0;
  v169 = qword_2809DADA0;

  if (v169 != -1)
  {
    OUTLINED_FUNCTION_27_3(&qword_2809DADA0);
  }

  v170 = OUTLINED_FUNCTION_1_35(&qword_2809DC428);
  *(v1 + 1600) = v171;
  *(v1 + 1608) = v172;
  *(v1 + 1616) = *(v173 + 16);
  *(v1 + 1632) = v170;
  *(v1 + 1640) = v174;
  *(v1 + 1648) = v0;

  return v1;
}

uint64_t sub_27544B080@<X0>(uint64_t *a1@<X8>)
{
  result = static Transition.AutomationEffectParameter.allCases.getter();
  *a1 = result;
  return result;
}

__n128 sub_27544B0A8()
{
  qword_2809DBE08 = 1731289415;
  unk_2809DBE10 = 0xE400000000000000;
  qword_2809DBE18 = 0;
  __asm { FMOV            V0.2D, #1.0 }

  unk_2809DBE20 = result;
  qword_2809DBE30 = 0x675F726579616C70;
  unk_2809DBE38 = 0xEB000000006E6961;
  return result;
}

double static Transition.AutomationEffectParameter.inputMixerVolume.getter()
{
  if (qword_2809DACC0 != -1)
  {
    OUTLINED_FUNCTION_26_3(&qword_2809DACC0);
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DBE08);

  return result;
}

double sub_27544B150()
{
  qword_2809DBE40 = 829907526;
  *algn_2809DBE48 = 0xE400000000000000;
  result = 0.05;
  xmmword_2809DBE50 = xmmword_27547BEE0;
  qword_2809DBE60 = 0x4000000000000000;
  unk_2809DBE68 = 0xD000000000000019;
  qword_2809DBE70 = 0x800000027546F640;
  return result;
}

double static Transition.AutomationEffectParameter.multibandFilterCenterBandwidth.getter(__n128 a1)
{
  if (qword_2809DACC8 != -1)
  {
    OUTLINED_FUNCTION_25_2(&qword_2809DACC8);
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DBE40);

  return result;
}

double sub_27544B1FC()
{
  qword_2809DBE78 = 828859206;
  unk_2809DBE80 = 0xE400000000000000;
  result = -18.0;
  xmmword_2809DBE88 = xmmword_27547BEF0;
  qword_2809DBE98 = 0;
  unk_2809DBEA0 = 0xD000000000000014;
  qword_2809DBEA8 = 0x800000027546F620;
  return result;
}

double static Transition.AutomationEffectParameter.multibandFilterCenterGain.getter(__n128 a1)
{
  if (qword_2809DACD0 != -1)
  {
    OUTLINED_FUNCTION_24_5(&qword_2809DACD0);
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DBE78);

  return result;
}

double sub_27544B2A4()
{
  qword_2809DBEB0 = 828793670;
  *algn_2809DBEB8 = 0xE400000000000000;
  result = 10.0;
  xmmword_2809DBEC0 = xmmword_27547BF00;
  qword_2809DBED0 = 0x40A3880000000000;
  unk_2809DBED8 = 0xD000000000000014;
  qword_2809DBEE0 = 0x800000027546F600;
  return result;
}

double static Transition.AutomationEffectParameter.multibandFilterCenterFrequency.getter(__n128 a1)
{
  if (qword_2809DACD8 != -1)
  {
    OUTLINED_FUNCTION_23_6(&qword_2809DACD8);
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DBEB0);

  return result;
}

void sub_27544B354()
{
  qword_2809DBEE8 = 1714507848;
  unk_2809DBEF0 = 0xE400000000000000;
  xmmword_2809DBEF8 = xmmword_27547BF10;
  qword_2809DBF08 = 0x4024000000000000;
  strcpy(byte_2809DBF10, "hp_cutoff_freq");
  HIBYTE(qword_2809DBF18) = -18;
}

double static Transition.AutomationEffectParameter.highPassFilterCutoffFrequency.getter(__n128 a1)
{
  if (qword_2809DACE0 != -1)
  {
    OUTLINED_FUNCTION_22_4(&qword_2809DACE0);
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DBEE8);

  return result;
}

double sub_27544B408()
{
  qword_2809DBF20 = 1915834440;
  *algn_2809DBF28 = 0xE400000000000000;
  result = -20.0;
  xmmword_2809DBF30 = xmmword_27547BF20;
  qword_2809DBF40 = 0;
  unk_2809DBF48 = 0x6F7365725F7068;
  qword_2809DBF50 = 0xE700000000000000;
  return result;
}

double static Transition.AutomationEffectParameter.highPassFilterResonance.getter(__n128 a1)
{
  if (qword_2809DACE8 != -1)
  {
    OUTLINED_FUNCTION_21_3(&qword_2809DACE8);
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DBF20);

  return result;
}

void sub_27544B4AC()
{
  qword_2809DBF58 = 1714507852;
  unk_2809DBF60 = 0xE400000000000000;
  xmmword_2809DBF68 = xmmword_27547BF00;
  qword_2809DBF78 = 0x40D57C0000000000;
  strcpy(byte_2809DBF80, "lp_cutoff_freq");
  HIBYTE(qword_2809DBF88) = -18;
}

double static Transition.AutomationEffectParameter.lowPassFilterCutoffFrequency.getter(__n128 a1)
{
  if (qword_2809DACF0 != -1)
  {
    OUTLINED_FUNCTION_20_5(&qword_2809DACF0);
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DBF58);

  return result;
}

double sub_27544B564()
{
  qword_2809DBF90 = 1915834444;
  *algn_2809DBF98 = 0xE400000000000000;
  result = -20.0;
  xmmword_2809DBFA0 = xmmword_27547BF20;
  qword_2809DBFB0 = 0;
  unk_2809DBFB8 = 0x6F7365725F706CLL;
  qword_2809DBFC0 = 0xE700000000000000;
  return result;
}

double static Transition.AutomationEffectParameter.lowPassFilterResonance.getter(__n128 a1)
{
  if (qword_2809DACF8 != -1)
  {
    OUTLINED_FUNCTION_19_7(&qword_2809DACF8);
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DBF90);

  return result;
}

__n128 sub_27544B608()
{
  qword_2809DBFC8 = 1731354951;
  unk_2809DBFD0 = 0xE400000000000000;
  qword_2809DBFD8 = 0;
  __asm { FMOV            V0.2D, #1.0 }

  unk_2809DBFE0 = result;
  qword_2809DBFF0 = 0x78696D5F646E6573;
  unk_2809DBFF8 = 0xEF6E6961675F7265;
  return result;
}

double static Transition.AutomationEffectParameter.auxEffectsBusSendMixerVolume.getter(__n128 a1)
{
  if (qword_2809DAD00 != -1)
  {
    OUTLINED_FUNCTION_18_4(&qword_2809DAD00);
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DBFC8);

  return result;
}

double sub_27544B6B4()
{
  qword_2809DC000 = 1952730180;
  *algn_2809DC008 = 0xE400000000000000;
  result = 0.0001;
  xmmword_2809DC010 = xmmword_27547BF30;
  qword_2809DC020 = 0x3FF0000000000000;
  unk_2809DC028 = 0xD000000000000013;
  qword_2809DC030 = 0x800000027546F5E0;
  return result;
}

double static Transition.AutomationEffectParameter.delayDelayTime.getter(__n128 a1)
{
  if (qword_2809DAD08 != -1)
  {
    OUTLINED_FUNCTION_17_5(&qword_2809DAD08);
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DC000);

  return result;
}

double sub_27544B760()
{
  qword_2809DC038 = 1718373444;
  unk_2809DC040 = 0xE400000000000000;
  result = 10.0;
  xmmword_2809DC048 = xmmword_27547BF10;
  qword_2809DC058 = 0x40A3880000000000;
  unk_2809DC060 = 0xD00000000000001CLL;
  qword_2809DC068 = 0x800000027546F5C0;
  return result;
}

double static Transition.AutomationEffectParameter.delayLowPassFilterCutoffFrequency.getter(__n128 a1)
{
  if (qword_2809DAD10 != -1)
  {
    OUTLINED_FUNCTION_16_5(&qword_2809DAD10);
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DC038);

  return result;
}

double sub_27544B810()
{
  qword_2809DC070 = 2003061828;
  *algn_2809DC078 = 0xE400000000000000;
  result = 0.0;
  xmmword_2809DC080 = xmmword_27547BF40;
  qword_2809DC090 = 0;
  unk_2809DC098 = 0xD000000000000010;
  qword_2809DC0A0 = 0x800000027546F5A0;
  return result;
}

double static Transition.AutomationEffectParameter.delayDryWetBalance.getter(__n128 a1)
{
  if (qword_2809DAD18 != -1)
  {
    OUTLINED_FUNCTION_15_8(&qword_2809DAD18);
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DC070);

  return result;
}

double sub_27544B8B8()
{
  qword_2809DC0A8 = 1650871364;
  unk_2809DC0B0 = 0xE400000000000000;
  result = -99.9;
  xmmword_2809DC0B8 = xmmword_27547BF50;
  qword_2809DC0C8 = 0x4049000000000000;
  unk_2809DC0D0 = 0xD000000000000011;
  qword_2809DC0D8 = 0x800000027546F580;
  return result;
}

double static Transition.AutomationEffectParameter.delayFeedback.getter(__n128 a1)
{
  if (qword_2809DAD20 != -1)
  {
    OUTLINED_FUNCTION_14_6(&qword_2809DAD20);
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DC0A8);

  return result;
}

void sub_27544B964()
{
  qword_2809DC0E0 = 1634162258;
  *algn_2809DC0E8 = 0xE400000000000000;
  xmmword_2809DC0F0 = xmmword_27547BF60;
  qword_2809DC100 = 0x3FF0000000000000;
  strcpy(byte_2809DC108, "fx_reverb_gain");
  HIBYTE(qword_2809DC110) = -18;
}

double static Transition.AutomationEffectParameter.reverbGain.getter(__n128 a1)
{
  if (qword_2809DAD28 != -1)
  {
    OUTLINED_FUNCTION_13_10(&qword_2809DAD28);
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DC0E0);

  return result;
}

double sub_27544BA18()
{
  qword_2809DC118 = 2003064402;
  unk_2809DC120 = 0xE400000000000000;
  result = 0.0;
  xmmword_2809DC128 = xmmword_27547BF40;
  qword_2809DC138 = 0;
  unk_2809DC140 = 0xD000000000000011;
  qword_2809DC148 = 0x800000027546F560;
  return result;
}

double static Transition.AutomationEffectParameter.reverbDryWetBalance.getter(__n128 a1)
{
  if (qword_2809DAD30 != -1)
  {
    OUTLINED_FUNCTION_12_10(&qword_2809DAD30);
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DC118);

  return result;
}

double sub_27544BAC0()
{
  qword_2809DC150 = 1768773202;
  *algn_2809DC158 = 0xE400000000000000;
  result = 0.0001;
  xmmword_2809DC160 = xmmword_27547BF70;
  qword_2809DC170 = 0x3F80624DD2F1A9FCLL;
  unk_2809DC178 = 0xD000000000000018;
  qword_2809DC180 = 0x800000027546F540;
  return result;
}

double static Transition.AutomationEffectParameter.reverbMinimumDelayTime.getter(__n128 a1)
{
  if (qword_2809DAD38 != -1)
  {
    OUTLINED_FUNCTION_11_12(&qword_2809DAD38);
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DC150);

  return result;
}

double sub_27544BB78()
{
  qword_2809DC188 = 1634555474;
  unk_2809DC190 = 0xE400000000000000;
  qword_2809DC198 = 0x3F1A36E2EB1C432DLL;
  result = 1.0;
  unk_2809DC1A0 = xmmword_27547BF80;
  qword_2809DC1B0 = 0xD000000000000018;
  unk_2809DC1B8 = 0x800000027546F520;
  return result;
}

double static Transition.AutomationEffectParameter.reverbMaximumDelayTime.getter(__n128 a1)
{
  if (qword_2809DAD40 != -1)
  {
    OUTLINED_FUNCTION_10_12(&qword_2809DAD40);
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DC188);

  return result;
}

double sub_27544BC30()
{
  qword_2809DC1C0 = 1718376018;
  *algn_2809DC1C8 = 0xE400000000000000;
  result = 0.001;
  xmmword_2809DC1D0 = xmmword_27547BF90;
  qword_2809DC1E0 = 0x3FF0000000000000;
  unk_2809DC1E8 = 0xD000000000000022;
  qword_2809DC1F0 = 0x800000027546F4F0;
  return result;
}

double static Transition.AutomationEffectParameter.reverbLowFrequencyDecayTime.getter(__n128 a1)
{
  if (qword_2809DAD48 != -1)
  {
    OUTLINED_FUNCTION_9_10(&qword_2809DAD48);
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DC1C0);

  return result;
}

double sub_27544BCDC()
{
  qword_2809DC1F8 = 1718113874;
  unk_2809DC200 = 0xE400000000000000;
  result = 0.001;
  xmmword_2809DC208 = xmmword_27547BF90;
  qword_2809DC218 = 0x3FE0000000000000;
  unk_2809DC220 = 0xD000000000000023;
  qword_2809DC228 = 0x800000027546F4C0;
  return result;
}

double static Transition.AutomationEffectParameter.reverbHighFrequencyDecayTime.getter(__n128 a1)
{
  if (qword_2809DAD50 != -1)
  {
    OUTLINED_FUNCTION_8_14(&qword_2809DAD50);
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DC1F8);

  return result;
}

double sub_27544BD88()
{
  qword_2809DC230 = 1920095826;
  *algn_2809DC238 = 0xE400000000000000;
  result = 1.0;
  xmmword_2809DC240 = xmmword_27547BFA0;
  qword_2809DC250 = 0x3FF0000000000000;
  unk_2809DC258 = 0xD00000000000001FLL;
  qword_2809DC260 = 0x800000027546F4A0;
  return result;
}

double static Transition.AutomationEffectParameter.reverbReflectionsRandomization.getter(__n128 a1)
{
  if (qword_2809DAD58 != -1)
  {
    OUTLINED_FUNCTION_7_16(&qword_2809DAD58);
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DC230);

  return result;
}

double sub_27544BE34()
{
  qword_2809DC268 = 1714573384;
  unk_2809DC270 = 0xE400000000000000;
  result = 10.0;
  xmmword_2809DC278 = xmmword_27547BF10;
  qword_2809DC288 = 0x4024000000000000;
  unk_2809DC290 = 0xD000000000000011;
  qword_2809DC298 = 0x800000027546F480;
  return result;
}

double static Transition.AutomationEffectParameter.auxEffectsBusHighPassFilterCutoffFrequency.getter(__n128 a1)
{
  if (qword_2809DAD60 != -1)
  {
    OUTLINED_FUNCTION_6_20(&qword_2809DAD60);
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DC268);

  return result;
}

double sub_27544BEE0()
{
  qword_2809DC2A0 = 1915899976;
  *algn_2809DC2A8 = 0xE400000000000000;
  result = -20.0;
  xmmword_2809DC2B0 = xmmword_27547BFB0;
  qword_2809DC2C0 = 0;
  unk_2809DC2C8 = 0x65725F70685F7866;
  qword_2809DC2D0 = 0xEA00000000006F73;
  return result;
}

double static Transition.AutomationEffectParameter.auxEffectsBusHighPassFilterResonance.getter(__n128 a1)
{
  if (qword_2809DAD68 != -1)
  {
    OUTLINED_FUNCTION_5_19(&qword_2809DAD68);
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DC2A0);

  return result;
}

double sub_27544BF88()
{
  qword_2809DC2D8 = 1714573388;
  unk_2809DC2E0 = 0xE400000000000000;
  result = 10.0;
  xmmword_2809DC2E8 = xmmword_27547BF00;
  qword_2809DC2F8 = 0x40D57C0000000000;
  unk_2809DC300 = 0xD000000000000011;
  qword_2809DC308 = 0x800000027546F460;
  return result;
}

double static Transition.AutomationEffectParameter.auxEffectsBusLowPassFilterCutoffFrequency.getter(__n128 a1)
{
  if (qword_2809DAD70 != -1)
  {
    OUTLINED_FUNCTION_4_19(&qword_2809DAD70);
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DC2D8);

  return result;
}

double sub_27544C038()
{
  qword_2809DC310 = 1915899980;
  *algn_2809DC318 = 0xE400000000000000;
  result = -20.0;
  xmmword_2809DC320 = xmmword_27547BFB0;
  qword_2809DC330 = 0;
  unk_2809DC338 = 0x65725F706C5F7866;
  qword_2809DC340 = 0xEA00000000006F73;
  return result;
}

double static Transition.AutomationEffectParameter.auxEffectsBusLowPassFilterResonance.getter(__n128 a1)
{
  if (qword_2809DAD78 != -1)
  {
    OUTLINED_FUNCTION_2_33(&qword_2809DAD78);
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DC310);

  return result;
}

void sub_27544C0E0()
{
  qword_2809DC348 = 1731420487;
  unk_2809DC350 = 0xE400000000000000;
  qword_2809DC358 = 0;
  __asm { FMOV            V0.2D, #1.0 }

  unk_2809DC360 = _Q0;
  strcpy(&qword_2809DC370, "fx_mixer_dry");
  unk_2809DC37D = 0;
  unk_2809DC37E = -5120;
}

double static Transition.AutomationEffectParameter.auxEffectsBusReturnMixerDryVolume.getter(__n128 a1)
{
  if (qword_2809DAD80 != -1)
  {
    OUTLINED_FUNCTION_31_0(&qword_2809DAD80);
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DC348);

  return result;
}

void sub_27544C188()
{
  qword_2809DC380 = 1731486023;
  *algn_2809DC388 = 0xE400000000000000;
  xmmword_2809DC390 = xmmword_27547BFC0;
  qword_2809DC3A0 = 0;
  strcpy(byte_2809DC3A8, "fx_mixer_wet");
  BYTE5(qword_2809DC3B0) = 0;
  HIWORD(qword_2809DC3B0) = -5120;
}

double static Transition.AutomationEffectParameter.auxEffectsBusReturnMixerWetVolume.getter(__n128 a1)
{
  if (qword_2809DAD88 != -1)
  {
    OUTLINED_FUNCTION_30_1(&qword_2809DAD88);
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DC380);

  return result;
}

void sub_27544C234()
{
  qword_2809DC3B8 = 0x657461725F7374;
  unk_2809DC3C0 = 0xE700000000000000;
  OUTLINED_FUNCTION_32_0(&qword_2809DC3B8, xmmword_27547BFD0);
}

double static Transition.AutomationEffectParameter.timeStretchingRate.getter(__n128 a1)
{
  if (qword_2809DAD90 != -1)
  {
    OUTLINED_FUNCTION_29_2(&qword_2809DAD90);
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DC3B8);

  return result;
}

double sub_27544C2C0()
{
  qword_2809DC3F0 = 0x6E6961675F74756FLL;
  *algn_2809DC3F8 = 0xE800000000000000;
  result = 0.0;
  xmmword_2809DC400 = xmmword_27547BFC0;
  qword_2809DC410 = 0;
  unk_2809DC418 = 0x6E6961675F74756FLL;
  qword_2809DC420 = 0xE800000000000000;
  return result;
}

double static Transition.AutomationEffectParameter.outputMixerVolume.getter(__n128 a1)
{
  if (qword_2809DAD98 != -1)
  {
    OUTLINED_FUNCTION_28_3(&qword_2809DAD98);
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DC3F0);

  return result;
}

void sub_27544C358()
{
  qword_2809DC428 = 1634761058;
  unk_2809DC430 = 0xE400000000000000;
  OUTLINED_FUNCTION_32_0(&qword_2809DC428, xmmword_27547BFC0);
}

double static Transition.AutomationEffectParameter.effectBypassingState.getter(__n128 a1)
{
  if (qword_2809DADA0 != -1)
  {
    OUTLINED_FUNCTION_27_3(&qword_2809DADA0);
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DC428);

  return result;
}

unint64_t sub_27544C3EC()
{
  result = qword_2809DC498;
  if (!qword_2809DC498)
  {
    sub_27544C460(255, &qword_2809DC4A0, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC498);
  }

  return result;
}

void sub_27544C460(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Transition.AutomationEffectParameter);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_27544C4B4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27544C4F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *_s25AutomationEffectParameterV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x27544C61CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_27544C658()
{
  result = qword_2809DC4A8;
  if (!qword_2809DC4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC4A8);
  }

  return result;
}

unint64_t sub_27544C6B0()
{
  result = qword_2809DC4B0;
  if (!qword_2809DC4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC4B0);
  }

  return result;
}

unint64_t sub_27544C708()
{
  result = qword_2809DC4B8;
  if (!qword_2809DC4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC4B8);
  }

  return result;
}

double OUTLINED_FUNCTION_0_37@<D0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  *v1 = *a1;
  *(v1 + 8) = v3;
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  *(v1 + 48) = v6;

  return result;
}

uint64_t OUTLINED_FUNCTION_2_33(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_19(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_19(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_20(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_16(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_14(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_10(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_12(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_12(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_10(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_13_10(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14_6(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_15_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_16_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_17_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_18_4(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_19_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_20_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_21_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_22_4(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_23_6(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_24_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_25_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_26_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_27_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_28_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_29_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_30_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_31_0(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_32_0(__n128 *a1@<X8>, __n128 a2@<Q0>)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 0x3FF0000000000000;
  a1[2].n128_u64[1] = v2;
  a1[3].n128_u64[0] = v3;
}

__n128 Transition.PlaybackState.outgoingSongPlaybackState.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 Transition.PlaybackState.incomingSongPlaybackState.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

uint64_t static Transition.PlaybackState.== infix(_:_:)(float64x2_t *a1, float64x2_t *a2)
{
  v2 = vmovn_s64(vceqzq_f64(vsubq_f64(*a2, *a1)));
  if (v2.i32[0] & v2.i32[1])
  {
    v3 = vmovn_s64(vceqzq_f64(vsubq_f64(a2[1], a1[1])));
    v4 = v3.i8[0] & v3.i8[4];
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_27544CBF4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000019 && 0x800000027546F660 == a2;
  if (v3 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x800000027546F680 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_27546E9A0();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_27544CD00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27544CBF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27544CD28(uint64_t a1)
{
  v2 = sub_27544D0F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27544CD64(uint64_t a1)
{
  v2 = sub_27544D0F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Transition.PlaybackState.encode(to:)(void *a1)
{
  sub_27544D148(0, &qword_2809DC4C0, MEMORY[0x277D84538]);
  v5 = v4;
  OUTLINED_FUNCTION_8_9();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  v14 = v1[3];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27544D0F4();
  sub_27546EB00();
  v24 = v11;
  v25 = v12;
  v23 = 0;
  v15 = sub_275444A30();
  v18 = OUTLINED_FUNCTION_1_36(v15, v16, v17, &type metadata for Transition.SongPlaybackState);
  if (!v2)
  {
    v24 = v13;
    v25 = v14;
    v23 = 1;
    OUTLINED_FUNCTION_1_36(v18, v19, v20, &type metadata for Transition.SongPlaybackState);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t Transition.PlaybackState.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_27544D148(0, &qword_2809DC4D0, MEMORY[0x277D844C8]);
  v6 = v5;
  OUTLINED_FUNCTION_8_9();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27544D0F4();
  sub_27546EAE0();
  if (!v2)
  {
    v16 = 0;
    sub_275444AE8();
    OUTLINED_FUNCTION_0_38(&type metadata for Transition.SongPlaybackState);
    v12 = v15;
    v16 = 1;
    OUTLINED_FUNCTION_0_38(&type metadata for Transition.SongPlaybackState);
    (*(v8 + 8))(v11, v6);
    v14 = v15;
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_27544D0F4()
{
  result = qword_2809DC4C8;
  if (!qword_2809DC4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC4C8);
  }

  return result;
}

void sub_27544D148(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_27544D0F4();
    v7 = a3(a1, &_s13PlaybackStateV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

_BYTE *_s13PlaybackStateV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x27544D288);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_27544D2C4()
{
  result = qword_2809DC4D8;
  if (!qword_2809DC4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC4D8);
  }

  return result;
}

unint64_t sub_27544D31C()
{
  result = qword_2809DC4E0;
  if (!qword_2809DC4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC4E0);
  }

  return result;
}

unint64_t sub_27544D374()
{
  result = qword_2809DC4E8;
  if (!qword_2809DC4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC4E8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_38(uint64_t a1)
{

  return sub_27546E8D0();
}

uint64_t OUTLINED_FUNCTION_1_36(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_27546E950();
}

__n128 Transition.SongPlaybackState.timeStretchingState.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 Transition.SongPlaybackState.init(timeStretchingState:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_27544D45C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x800000027546F6A0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_27546E9A0();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_27544D4FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27544D45C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_27544D528(uint64_t a1)
{
  v2 = sub_27544D8B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27544D564(uint64_t a1)
{
  v2 = sub_27544D8B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Transition.SongPlaybackState.encode(to:)(void *a1)
{
  sub_27544D960(0, &qword_2809DC4F0, MEMORY[0x277D84538]);
  v4 = v3;
  OUTLINED_FUNCTION_8_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v13 - v8;
  v10 = *v1;
  v11 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27544D8B8();
  sub_27546EB00();
  v13[0] = v10;
  v13[1] = v11;
  sub_27544D90C();
  sub_27546E950();
  return (*(v6 + 8))(v9, v4);
}

uint64_t Transition.SongPlaybackState.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_27544D960(0, &qword_2809DC508, MEMORY[0x277D844C8]);
  v6 = v5;
  OUTLINED_FUNCTION_8_9();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27544D8B8();
  sub_27546EAE0();
  if (!v2)
  {
    sub_27544D9C4();
    sub_27546E8D0();
    (*(v8 + 8))(v11, v6);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_27544D8B8()
{
  result = qword_2809DC4F8;
  if (!qword_2809DC4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC4F8);
  }

  return result;
}

unint64_t sub_27544D90C()
{
  result = qword_2809DC500;
  if (!qword_2809DC500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC500);
  }

  return result;
}

void sub_27544D960(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_27544D8B8();
    v7 = a3(a1, &_s17SongPlaybackStateV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_27544D9C4()
{
  result = qword_2809DC510;
  if (!qword_2809DC510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC510);
  }

  return result;
}

_BYTE *_s17SongPlaybackStateV10CodingKeysOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x27544DAC4);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_27544DB00()
{
  result = qword_2809DC518;
  if (!qword_2809DC518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC518);
  }

  return result;
}

unint64_t sub_27544DB58()
{
  result = qword_2809DC520;
  if (!qword_2809DC520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC520);
  }

  return result;
}

unint64_t sub_27544DBB0()
{
  result = qword_2809DC528;
  if (!qword_2809DC528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC528);
  }

  return result;
}

double Transition.TimeStretchingState.songTime.getter@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

double Transition.TimeStretchingState.stretchedSongTime.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

void Transition.TimeStretchingState.init(songTime:stretchedSongTime:)(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  if (*a1 < 0.0)
  {
    v3 = 8;
LABEL_5:
    sub_275408F98();
    swift_allocError();
    *v5 = v3;
    swift_willThrow();
    return;
  }

  v4 = *a2;
  if (*a2 < 0.0)
  {
    v3 = 10;
    goto LABEL_5;
  }

  *a3 = *a1;
  *(a3 + 1) = v4;
}

uint64_t sub_27544DCCC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D6954676E6F73 && a2 == 0xE800000000000000;
  if (v4 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000027546F1B0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_27546E9A0();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_27544DD9C(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x656D6954676E6F73;
  }
}

uint64_t sub_27544DDE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27544DCCC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27544DE08(uint64_t a1)
{
  v2 = sub_27544DFF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27544DE44(uint64_t a1)
{
  v2 = sub_27544DFF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Transition.TimeStretchingState.encode(to:)(void *a1)
{
  sub_27544E1F4(0, &qword_2809DC530, MEMORY[0x277D84538]);
  v5 = v4;
  OUTLINED_FUNCTION_8_9();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  v12 = *v1;
  v11 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27544DFF0();
  sub_27546EB00();
  v21 = v12;
  HIBYTE(v20) = 0;
  v13 = sub_27542D5D8();
  OUTLINED_FUNCTION_1_37(v13, v14, v15, &type metadata for SongTime, v13);
  if (!v2)
  {
    v21 = v11;
    HIBYTE(v20) = 1;
    v16 = sub_27542D62C();
    OUTLINED_FUNCTION_1_37(v16, v17, v18, &type metadata for StretchedSongTime, v16);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_27544DFF0()
{
  result = qword_2809DC538;
  if (!qword_2809DC538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC538);
  }

  return result;
}

uint64_t Transition.TimeStretchingState.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_27544E1F4(0, &qword_2809DC540, MEMORY[0x277D844C8]);
  v6 = v5;
  OUTLINED_FUNCTION_8_9();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27544DFF0();
  sub_27546EAE0();
  if (!v2)
  {
    HIBYTE(v15) = 0;
    sub_27542D478();
    OUTLINED_FUNCTION_0_39(&type metadata for SongTime);
    v12 = v16;
    HIBYTE(v15) = 1;
    sub_27542D4CC();
    OUTLINED_FUNCTION_0_39(&type metadata for StretchedSongTime);
    (*(v8 + 8))(v11, v6);
    v14 = v16;
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_27544E1F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_27544DFF0();
    v7 = a3(a1, &_s19TimeStretchingStateV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

_BYTE *_s19TimeStretchingStateV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x27544E368);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_27544E3A4()
{
  result = qword_2809DC548;
  if (!qword_2809DC548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC548);
  }

  return result;
}

unint64_t sub_27544E3FC()
{
  result = qword_2809DC550;
  if (!qword_2809DC550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC550);
  }

  return result;
}

unint64_t sub_27544E454()
{
  result = qword_2809DC558;
  if (!qword_2809DC558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC558);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_39(uint64_t a1)
{

  return sub_27546E8D0();
}

uint64_t OUTLINED_FUNCTION_1_37(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_27546E950();
}

uint64_t Transition.ContinuousSchedule.Automation.ramps.getter()
{
  v1 = *(v0 + 56);
  swift_bridgeObjectRetain_n();
  v13[0] = v1;
  v13[1] = sub_27544E574(1, v1, v2, v3, v4, v5, v6);
  v13[2] = v7;
  v13[3] = v8;
  v13[4] = v9;
  sub_27544E690(v13);
  v11 = v10;
  swift_unknownObjectRelease();

  return v11;
}

uint64_t sub_27544E574(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = *(a2 + 16);
    result = sub_27544FB58(0, result, v8);
    if (v9)
    {
      result = v8;
    }

    if (v8 >= result)
    {
      sub_27544FAE8(result, v8, a2);
      OUTLINED_FUNCTION_1_38();

      return OUTLINED_FUNCTION_3_27();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_27544E5F0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a5 >> 1;
    result = sub_27544FB58(a4, result, a5 >> 1);
    if (v6)
    {
      result = v5;
    }

    if (v5 >= result)
    {
      sub_27543386C(result);
      OUTLINED_FUNCTION_1_38();
      swift_unknownObjectRelease();
      return OUTLINED_FUNCTION_3_27();
    }
  }

  __break(1u);
  return result;
}

void sub_27544E690(void *result)
{
  v1 = result[3];
  v2 = result[4] >> 1;
  v3 = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    return;
  }

  v49 = result[4] >> 1;
  v50 = result[3];
  v4 = *result;
  v5 = result[1];
  v6 = result[2];
  v48 = *(*result + 16);
  if (v3 >= v48)
  {
    v7 = *(*result + 16);
  }

  else
  {
    v7 = v2 - v1;
  }

  v52 = MEMORY[0x277D84F90];
  sub_27544109C(0, v7 & ~(v7 >> 63), 0);
  if (v3 < 0)
  {
    goto LABEL_40;
  }

  v8 = v52;
  v9 = v7;
  v51 = v4;
  if (v7)
  {

    swift_unknownObjectRetain();
    v10 = (v4 + 48);
    v11 = v49;
    v12 = (v6 + 24 * v50 + 8);
    v13 = v7;
    v14 = v48;
    v15 = v50;
    while (v14 && v11 != v15)
    {
      if (v15 >= v11)
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v16 = *v10;
      if (v16 > 0xFB)
      {
        goto LABEL_41;
      }

      v17 = *(v10 - 1);
      v18 = *v12;
      if (*v12 < v17)
      {
        goto LABEL_34;
      }

      v19 = *(v10 - 2);
      v20 = *(v12 - 1);
      OUTLINED_FUNCTION_4_20();
      if (v24)
      {
        OUTLINED_FUNCTION_5_20();
        sub_27544109C(v26, v27, v28);
        v21 = 40;
        v9 = v46;
        v23 = v48;
        v11 = v49;
        v22 = v50;
        v8 = v52;
      }

      *(v8 + 16) = v5;
      v25 = v8 + v6 * v21;
      *(v25 + 32) = v19;
      *(v25 + 40) = v20;
      v10 += 3;
      *(v25 + 48) = v17;
      *(v25 + 56) = v18;
      *(v25 + 64) = v16;
      --v14;
      v12 += 3;
      ++v15;
      if (!--v13)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_41;
  }

  swift_unknownObjectRetain();
  v11 = v49;
  v22 = v50;
  v15 = v50;
  v23 = v48;
LABEL_18:
  v29 = 0;
  v30 = (v6 + 24 * v15 + 8);
  v31 = v15 - v11;
  v32 = v23 - v9;
  for (i = (v51 + 24 * v9 + 48); v32 != v29; i += 3)
  {
    if (v9 + v29 >= v23)
    {
      goto LABEL_35;
    }

    if (__OFADD__(v9 + v29, 1))
    {
      goto LABEL_36;
    }

    if (!(v31 + v29))
    {
      break;
    }

    if (v15 < v22 || v15 + v29 >= v11)
    {
      goto LABEL_37;
    }

    v35 = *(i - 1);
    v36 = *v30;
    if (*v30 < v35)
    {
      goto LABEL_38;
    }

    v37 = *(i - 2);
    v38 = *i;
    v39 = *(v30 - 1);
    OUTLINED_FUNCTION_4_20();
    if (v24)
    {
      OUTLINED_FUNCTION_5_20();
      v47 = v42;
      sub_27544109C(v43, v44, v45);
      v40 = 40;
      v31 = v47;
      v23 = v48;
      v9 = v46;
      v11 = v49;
      v22 = v50;
      v8 = v52;
    }

    *(v8 + 16) = v5;
    v41 = v8 + v6 * v40;
    *(v41 + 32) = v37;
    *(v41 + 40) = v39;
    *(v41 + 48) = v35;
    *(v41 + 56) = v36;
    *(v41 + 64) = v38;
    v30 += 3;
    ++v29;
  }

  swift_unknownObjectRelease();
}

double Transition.ContinuousSchedule.Automation.parameter.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 16);
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;

  return result;
}

uint64_t static Transition.ContinuousSchedule.Automation.== infix(_:_:)(double *a1, uint64_t a2)
{
  v3 = a1[2];
  v2 = a1[3];
  v4 = a1[4];
  v5 = *(a1 + 5);
  v6 = *(a1 + 6);
  v7 = *(a1 + 7);
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v12 = *(a2 + 48);
  v13 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  v14 = *(a2 + 56);
  if (!v13 && (sub_27546E9A0() & 1) == 0)
  {
    return 0;
  }

  v15 = v3 == v9 && v2 == v8;
  if (!v15 || v4 != v10)
  {
    return 0;
  }

  v17 = v5 == v11 && v6 == v12;
  if (!v17 && (sub_27546E9A0() & 1) == 0)
  {
    return 0;
  }

  return sub_27543CE80(v7, v14);
}

uint64_t sub_27544EAAC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574656D61726170 && a2 == 0xE900000000000072;
  if (v4 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73746E696F70 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_27546E9A0();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_27544EB78(char a1)
{
  if (a1)
  {
    return 0x73746E696F70;
  }

  else
  {
    return 0x6574656D61726170;
  }
}

uint64_t sub_27544EBB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27544EAAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27544EBE0(uint64_t a1)
{
  v2 = sub_27544EEC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27544EC1C(uint64_t a1)
{
  v2 = sub_27544EEC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Transition.ContinuousSchedule.Automation.encode(to:)(void *a1)
{
  sub_27544F2C4(0, &qword_2809DC560, MEMORY[0x277D84538]);
  v4 = v3;
  OUTLINED_FUNCTION_8_9();
  v23 = v5;
  MEMORY[0x28223BE20](v6);
  v7 = *v1;
  v8 = v1[1];
  v21 = *(v1 + 1);
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  v20 = v1[7];
  v12 = a1[3];
  v13 = a1;
  v15 = &v19 - v14;
  __swift_project_boxed_opaque_existential_1(v13, v12);
  sub_27544EEC0();

  sub_27546EB00();
  v25 = v7;
  v26 = v8;
  v27 = v21;
  v28 = v9;
  v29 = v10;
  v30 = v11;
  v24 = 0;
  sub_27544EF14();
  v16 = v22;
  sub_27546E950();
  if (v16)
  {

    return (*(v23 + 8))(v15, v4);
  }

  else
  {
    v18 = v23;

    v25 = v20;
    v24 = 1;
    sub_27544EF68();
    sub_27544F37C(&qword_2809DC580, sub_27544EFB8, MEMORY[0x277D83948]);
    sub_27546E950();
    return (*(v18 + 8))(v15, v4);
  }
}

unint64_t sub_27544EEC0()
{
  result = qword_2809DC568;
  if (!qword_2809DC568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC568);
  }

  return result;
}

unint64_t sub_27544EF14()
{
  result = qword_2809DC570;
  if (!qword_2809DC570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC570);
  }

  return result;
}

void sub_27544EF68()
{
  if (!qword_2809DC578)
  {
    v0 = sub_27546E640();
    if (!v1)
    {
      atomic_store(v0, &qword_2809DC578);
    }
  }
}

unint64_t sub_27544EFB8()
{
  result = qword_2809DC588;
  if (!qword_2809DC588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC588);
  }

  return result;
}

void Transition.ContinuousSchedule.Automation.init(from:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_27544F2C4(0, &qword_2809DC590, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_8_9();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27544EEC0();
  sub_27546EAE0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v18) = 0;
    sub_27544F328();
    sub_27546E8D0();
    v6 = v23;
    v17 = v22;
    v7 = v24;
    v8 = v25;
    v9 = v26;
    v10 = v28;
    v16 = v27;
    sub_27544EF68();
    v30 = 1;
    sub_27544F37C(&qword_2809DC5A0, sub_27544F3E8, MEMORY[0x277D83978]);
    sub_27546E8D0();
    v11 = OUTLINED_FUNCTION_0_40();
    v12(v11);
    v13 = v31;
    *&v18 = v17;
    *(&v18 + 1) = v6;
    *&v19 = v7;
    *(&v19 + 1) = v8;
    *&v20 = v9;
    *(&v20 + 1) = v16;
    *&v21 = v10;
    *(&v21 + 1) = v31;
    v14 = v19;
    *a2 = v18;
    a2[1] = v14;
    v15 = v21;
    a2[2] = v20;
    a2[3] = v15;
    sub_2753EF21C(&v18, &v22);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v22 = v17;
    v23 = v6;
    v24 = v7;
    v25 = v8;
    v26 = v9;
    v27 = v16;
    v28 = v10;
    v29 = v13;
    sub_2753EF278(&v22);
  }
}

void sub_27544F2C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_27544EEC0();
    v7 = a3(a1, &_s10AutomationV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_27544F328()
{
  result = qword_2809DC598;
  if (!qword_2809DC598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC598);
  }

  return result;
}

uint64_t sub_27544F37C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_27544EF68();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_27544F3E8()
{
  result = qword_2809DC5A8;
  if (!qword_2809DC5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC5A8);
  }

  return result;
}

double Transition.ContinuousSchedule.Automation.startValue.getter()
{
  v1 = *(v0 + 56);
  if (!*(v1 + 16))
  {
    v1 = v0;
  }

  return *(v1 + 32);
}

double Transition.ContinuousSchedule.Automation.endValue.getter()
{
  v1 = v0 + 32;
  v2 = *(v0 + 56);
  v3 = *(v2 + 16);
  v4 = v2 + 24 * v3 + 8;
  if (v3)
  {
    v1 = v4;
  }

  return *v1;
}

void Transition.ContinuousSchedule.Automation.songTimeRange.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v2 + 40);
    v5 = *(v2 + 24 * v3 + 16);
    if (v5 < v4)
    {
      __break(1u);
    }

    else
    {
      *a1 = v4;
      *(a1 + 8) = v5;
      *(a1 + 16) = 0;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
  }
}

double sub_27544F528(double *a1)
{
  v2 = *(v1 + 56);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return *(v1 + 32);
  }

  v4 = *a1;
  v5 = *(v2 + 32);
  if (*a1 >= *(v2 + 40))
  {
    v5 = *(v2 + 32 + 24 * v3 - 24);
    swift_bridgeObjectRetain_n();
    v28[0] = v2;
    v28[1] = sub_27544E574(1, v2, v6, v7, v8, v9, v10);
    v28[2] = v11;
    v28[3] = v12;
    v28[4] = v13;
    sub_27544E690(v28);
    v15 = v14;
    swift_unknownObjectRelease();

    v16 = *(v15 + 16);
    v17 = v15 + 40 * v16 + 32;
    v18 = v16 + 1;
    while (--v18)
    {
      v19 = v17;
      v17 -= 40;
      v20 = *(v19 - 24);
      if (v4 >= v20)
      {
        v21 = *(v19 - 16);
        if (v21 >= v4)
        {
          v22 = *v17;
          v23 = *(v17 + 8);
          v24 = *(v17 + 32);

          v26[1] = v22;
          v26[2] = v23;
          v26[3] = v20;
          v26[4] = v21;
          v27 = v24;
          v26[0] = v4;
          return sub_275453DA8(v26);
        }
      }
    }
  }

  return v5;
}

void Transition.ContinuousSchedule.Automation.values<A>(at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3[1];
  v16[0] = *v3;
  v16[1] = v6;
  v7 = v3[3];
  v16[2] = v3[2];
  v16[3] = v7;
  v8 = sub_27546E5B0();
  v10 = sub_275447280(sub_27542A55C, 0, a2, &type metadata for SongTime, MEMORY[0x277D84A98], a3, MEMORY[0x277D84AC0], v9);
  v11 = sub_27543CFA4(v10, v8);

  if (v11)
  {
    MEMORY[0x28223BE20](v12);
    v15[2] = v16;
    v13 = sub_27544F86C();
    sub_275447280(sub_27544F824, v15, a2, MEMORY[0x277D839F8], v13, a3, MEMORY[0x277D84950], &v17);
  }

  else
  {
    sub_275408F98();
    swift_allocError();
    *v14 = 9;
    swift_willThrow();
  }
}

unint64_t sub_27544F86C()
{
  result = qword_2809DC5B0;
  if (!qword_2809DC5B0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2809DC5B0);
  }

  return result;
}

_BYTE *_s10AutomationV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x27544F9A4);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_27544F9E0()
{
  result = qword_2809DC5B8;
  if (!qword_2809DC5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC5B8);
  }

  return result;
}

unint64_t sub_27544FA38()
{
  result = qword_2809DC5C0;
  if (!qword_2809DC5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC5C0);
  }

  return result;
}

unint64_t sub_27544FA90()
{
  result = qword_2809DC5C8;
  if (!qword_2809DC5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC5C8);
  }

  return result;
}

void sub_27544FAE8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < a1 || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {

    return;
  }

LABEL_10:
  __break(1u);
}

uint64_t sub_27544FB58(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0)
    {
      v6 = __OFSUB__(v3, a2);
      v4 = v3 == a2;
      v5 = (v3 - a2) < 0;
    }

    else
    {
      v6 = 0;
      v4 = 1;
      v5 = 0;
    }

    if (!(v5 ^ v6 | v4))
    {
      return OUTLINED_FUNCTION_2_15();
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return OUTLINED_FUNCTION_2_15();
  }

  v6 = __OFADD__(result, a2);
  result += a2;
  if (v6)
  {
    goto LABEL_14;
  }

  return result;
}

void sub_27544FC0C(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = 0;
  while (1)
  {
    v6 = byte_2884115A0[v5 + 32];
    if (!(v6 >> 6))
    {
      OUTLINED_FUNCTION_11_13();
      v15 = v9 | 0x2D6E692D00000000;
      v11 = 0xE800000000000000;
      goto LABEL_12;
    }

    if (v6 >> 6 == 1)
    {
      OUTLINED_FUNCTION_11_13();
      v15 = v10 | 0x74756F2D00000000;
      v11 = 0xE90000000000002DLL;
LABEL_12:
      v16 = v11;
      MEMORY[0x277C776B0]();

      v7 = v15;
      v8 = v16;
      goto LABEL_13;
    }

    v7 = v6 == 128 ? 0x7261656E696CLL : 0x6874697261676F6CLL;
    v8 = v6 == 128 ? 0xE600000000000000 : 0xEB0000000063696DLL;
LABEL_13:
    if (v7 == a1 && v8 == a2)
    {
      break;
    }

    v13 = sub_27546E9A0();

    if (v13)
    {
      goto LABEL_21;
    }

    if (++v5 == 8)
    {
      LOBYTE(v6) = -4;
      goto LABEL_21;
    }
  }

LABEL_21:
  *a3 = v6;
}

uint64_t Transition.ContinuousSchedule.AutomationCurve.id.getter()
{
  v1 = *v0;
  if (!(v1 >> 6))
  {
    OUTLINED_FUNCTION_11_13();
    v5 = v2 | 0x2D6E692D00000000;
    goto LABEL_8;
  }

  if (v1 >> 6 == 1)
  {
    OUTLINED_FUNCTION_11_13();
    v5 = v4 | 0x74756F2D00000000;
LABEL_8:
    v6 = v5;
    MEMORY[0x277C776B0]();

    return v6;
  }

  if (v1 == 128)
  {
    return 0x7261656E696CLL;
  }

  else
  {
    return 0x6874697261676F6CLL;
  }
}

BOOL static Transition.ContinuousSchedule.AutomationCurve.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >> 6)
  {
    if (v2 >> 6 != 1)
    {
      if (v2 == 128)
      {
        if (v3 != 128)
        {
          return 0;
        }
      }

      else if (v3 != 129)
      {
        return 0;
      }

      return 1;
    }

    if ((v3 & 0xC0) == 0x40)
    {
      return ((v3 ^ v2) & 0x3F) == 0;
    }

    return 0;
  }

  if (v3 > 0x3F)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t sub_27544FF44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7261656E696CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6874697261676F6CLL && a2 == 0xEB0000000063696DLL;
    if (v6 || (sub_27546E9A0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E496465736165 && a2 == 0xE700000000000000;
      if (v7 || (sub_27546E9A0() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x74754F6465736165 && a2 == 0xE800000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_27546E9A0();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_27545009C(char a1)
{
  result = 0x7261656E696CLL;
  switch(a1)
  {
    case 1:
      result = 0x6874697261676F6CLL;
      break;
    case 2:
      result = 0x6E496465736165;
      break;
    case 3:
      result = 0x74754F6465736165;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_275450148(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656C797473 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_27546E9A0();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2754501C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27544FF44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2754501EC(uint64_t a1)
{
  v2 = sub_275451234();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275450228(uint64_t a1)
{
  v2 = sub_275451234();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_275450268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275450148(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_275450294(uint64_t a1)
{
  v2 = sub_275451138();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2754502D0(uint64_t a1)
{
  v2 = sub_275451138();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27545030C(uint64_t a1)
{
  v2 = sub_2754510E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275450348(uint64_t a1)
{
  v2 = sub_2754510E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_275450384(uint64_t a1)
{
  v2 = sub_2754511E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2754503C0(uint64_t a1)
{
  v2 = sub_2754511E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2754503FC(uint64_t a1)
{
  v2 = sub_27545118C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275450438(uint64_t a1)
{
  v2 = sub_27545118C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Transition.ContinuousSchedule.AutomationCurve.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_6_21();
  v5 = MEMORY[0x277D84538];
  sub_2754512DC(0, v6, v7, v8, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_8_9();
  v74 = v10;
  v75 = v9;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_10_9();
  v73 = v12;
  v13 = OUTLINED_FUNCTION_5_21();
  sub_2754512DC(v13, v14, v15, v16, v5);
  v72 = v17;
  OUTLINED_FUNCTION_8_9();
  v70 = v18;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_10_9();
  v71 = v20;
  v21 = OUTLINED_FUNCTION_4_21();
  sub_2754512DC(v21, v22, v23, v24, v5);
  OUTLINED_FUNCTION_8_9();
  v68 = v26;
  v69 = v25;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_10_9();
  v67 = v28;
  v29 = OUTLINED_FUNCTION_3_28();
  sub_2754512DC(v29, v30, v31, v32, v5);
  v34 = v33;
  OUTLINED_FUNCTION_8_9();
  v66 = v35;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v36);
  v38 = &v65 - v37;
  v39 = OUTLINED_FUNCTION_2_34();
  sub_2754512DC(v39, v40, v41, &_s15AutomationCurveO10CodingKeysON, v5);
  OUTLINED_FUNCTION_8_9();
  v76 = v43;
  v77 = v42;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v44);
  v46 = &v65 - v45;
  v47 = *v3;
  v48 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v48);
  sub_275451234();
  sub_27546EB00();
  if (!(v47 >> 6))
  {
    v54 = v70;
    v81[0] = 2;
    v55 = sub_275451138();
    v56 = v71;
    OUTLINED_FUNCTION_13_11(&_s15AutomationCurveO17EasedInCodingKeysON, v81, v57, v58, v55);
    v80 = v47;
    sub_275451288();
    v59 = v72;
    sub_27546E950();
    (*(v54 + 8))(v56, v59);
    return (*(v76 + 8))(v46, v48);
  }

  if (v47 >> 6 == 1)
  {
    v82 = 3;
    v49 = sub_2754510E4();
    v50 = v73;
    OUTLINED_FUNCTION_13_11(&_s15AutomationCurveO18EasedOutCodingKeysON, &v82, v51, v52, v49);
    v81[1] = v47 & 0x3F;
    sub_275451288();
    v53 = v75;
    sub_27546E950();
    (*(v74 + 8))(v50, v53);
    return (*(v76 + 8))(v46, v48);
  }

  v61 = (v76 + 8);
  if (v47 == 128)
  {
    v78 = 0;
    sub_2754511E0();
    v62 = v77;
    sub_27546E8F0();
    (*(v66 + 8))(v38, v34);
    return (*v61)(v46, v62);
  }

  else
  {
    v79 = 1;
    sub_27545118C();
    v63 = v67;
    v64 = v77;
    sub_27546E8F0();
    (*(v68 + 8))(v63, v69);
    return (*v61)(v46, v64);
  }
}

uint64_t Transition.ContinuousSchedule.AutomationCurve.init(from:)@<X0>(void *a1@<X0>, char *a3@<X8>)
{
  v101 = a3;
  OUTLINED_FUNCTION_6_21();
  v4 = MEMORY[0x277D844C8];
  sub_2754512DC(0, v5, v6, v7, MEMORY[0x277D844C8]);
  v97 = v8;
  OUTLINED_FUNCTION_8_9();
  v100 = v9;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_10_9();
  v99 = v11;
  v12 = OUTLINED_FUNCTION_5_21();
  sub_2754512DC(v12, v13, v14, v15, v4);
  OUTLINED_FUNCTION_8_9();
  v95 = v17;
  v96 = v16;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_10_9();
  v103 = v19;
  v20 = OUTLINED_FUNCTION_4_21();
  sub_2754512DC(v20, v21, v22, v23, v4);
  OUTLINED_FUNCTION_8_9();
  v93 = v25;
  v94 = v24;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_10_9();
  v98 = v27;
  v28 = OUTLINED_FUNCTION_3_28();
  sub_2754512DC(v28, v29, v30, v31, v4);
  v33 = v32;
  OUTLINED_FUNCTION_8_9();
  v92 = v34;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v35);
  v37 = &v89 - v36;
  v38 = OUTLINED_FUNCTION_2_34();
  sub_2754512DC(v38, v39, v40, &_s15AutomationCurveO10CodingKeysON, v4);
  OUTLINED_FUNCTION_8_9();
  v102 = v41;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v42);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275451234();
  v43 = v104;
  sub_27546EAE0();
  if (v43)
  {
    goto LABEL_8;
  }

  v90 = v33;
  v91 = v37;
  v104 = a1;
  v44 = sub_27546E8E0();
  sub_275433874(v44, 0);
  if (v46 == v47 >> 1)
  {
    goto LABEL_7;
  }

  if (v46 >= (v47 >> 1))
  {
    __break(1u);
    JUMPOUT(0x27545105CLL);
  }

  v48 = *(v45 + v46);
  sub_27543386C(v46 + 1);
  v50 = v49;
  v52 = v51;
  swift_unknownObjectRelease();
  if (v50 != v52 >> 1)
  {
LABEL_7:
    v62 = sub_27546E7D0();
    swift_allocError();
    v64 = v63;
    sub_2754333D4(0);
    *v64 = &type metadata for Transition.ContinuousSchedule.AutomationCurve;
    sub_27546E860();
    sub_27546E7B0();
    (*(*(v62 - 8) + 104))(v64, *MEMORY[0x277D84160], v62);
    swift_willThrow();
    swift_unknownObjectRelease();
    v65 = OUTLINED_FUNCTION_1_39();
    v66(v65);
    a1 = v104;
LABEL_8:
    v67 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v67);
  }

  v54 = v100;
  v53 = v101;
  switch(v48)
  {
    case 1:
      v106[0] = 1;
      v77 = sub_27545118C();
      v78 = v98;
      OUTLINED_FUNCTION_7_17(&_s15AutomationCurveO21LogarithmicCodingKeysON, v106, v79, v80, v77);
      swift_unknownObjectRelease();
      (*(v93 + 8))(v78, v94);
      v81 = OUTLINED_FUNCTION_1_39();
      v82(v81);
      v61 = -127;
      break;
    case 2:
      v107[0] = 2;
      v69 = sub_275451138();
      OUTLINED_FUNCTION_7_17(&_s15AutomationCurveO17EasedInCodingKeysON, v107, v70, v71, v69);
      sub_275451344();
      sub_27546E8D0();
      swift_unknownObjectRelease();
      v83 = OUTLINED_FUNCTION_12_11();
      v84(v83);
      v85 = OUTLINED_FUNCTION_10_13();
      v86(v85);
      v61 = v106[1];
      break;
    case 3:
      v108 = 3;
      v72 = sub_2754510E4();
      v73 = v99;
      OUTLINED_FUNCTION_7_17(&_s15AutomationCurveO18EasedOutCodingKeysON, &v108, v74, v75, v72);
      sub_275451344();
      v76 = v97;
      sub_27546E8D0();
      swift_unknownObjectRelease();
      (*(v54 + 8))(v73, v76);
      v87 = OUTLINED_FUNCTION_10_13();
      v88(v87);
      v61 = v107[1] | 0x40;
      v53 = v101;
      break;
    default:
      v105 = 0;
      v55 = sub_2754511E0();
      v56 = v91;
      OUTLINED_FUNCTION_7_17(&_s15AutomationCurveO16LinearCodingKeysON, &v105, v57, v58, v55);
      swift_unknownObjectRelease();
      (*(v92 + 8))(v56, v90);
      v59 = OUTLINED_FUNCTION_1_39();
      v60(v59);
      v61 = 0x80;
      break;
  }

  *v53 = v61;
  v67 = v104;
  return __swift_destroy_boxed_opaque_existential_1(v67);
}

uint64_t sub_2754510BC@<X0>(uint64_t *a1@<X8>)
{
  result = Transition.ContinuousSchedule.AutomationCurve.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_2754510E4()
{
  result = qword_2809DC5D8;
  if (!qword_2809DC5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC5D8);
  }

  return result;
}

unint64_t sub_275451138()
{
  result = qword_2809DC5E8;
  if (!qword_2809DC5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC5E8);
  }

  return result;
}

unint64_t sub_27545118C()
{
  result = qword_2809DC5F8;
  if (!qword_2809DC5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC5F8);
  }

  return result;
}

unint64_t sub_2754511E0()
{
  result = qword_2809DC608;
  if (!qword_2809DC608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC608);
  }

  return result;
}

unint64_t sub_275451234()
{
  result = qword_2809DC618;
  if (!qword_2809DC618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC618);
  }

  return result;
}

unint64_t sub_275451288()
{
  result = qword_2809DC620;
  if (!qword_2809DC620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC620);
  }

  return result;
}

void sub_2754512DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_275451344()
{
  result = qword_2809DC650;
  if (!qword_2809DC650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC650);
  }

  return result;
}

unint64_t sub_27545139C()
{
  result = qword_2809DC658;
  if (!qword_2809DC658)
  {
    sub_2754513F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC658);
  }

  return result;
}

void sub_2754513F4()
{
  if (!qword_2809DC660)
  {
    v0 = sub_27546E640();
    if (!v1)
    {
      atomic_store(v0, &qword_2809DC660);
    }
  }
}

uint64_t _s15AutomationCurveOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x3E)
  {
    if (a2 + 194 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 194) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 195;
    return v5 + 1;
  }

LABEL_17:
  v5 = (*a1 & 0x3C | (*a1 >> 6)) ^ 0x3F;
  if (v5 >= 0x3D)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *_s15AutomationCurveOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 194 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 194) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x3E)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x3D)
  {
    v6 = ((a2 - 62) >> 8) + 1;
    *result = a2 - 62;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2754515B0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2754515D8(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return (v1 & 3u) + 2;
  }
}

_BYTE *sub_275451604(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *result & 3 | (a2 << 6);
  }

  else
  {
    v2 = a2 & 3 ^ 0x82;
  }

  *result = v2;
  return result;
}

_BYTE *_s15AutomationCurveO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x27545170CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_275451778(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x275451814);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_275451850()
{
  result = qword_2809DC668;
  if (!qword_2809DC668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC668);
  }

  return result;
}

unint64_t sub_2754518A8()
{
  result = qword_2809DC670;
  if (!qword_2809DC670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC670);
  }

  return result;
}

unint64_t sub_275451900()
{
  result = qword_2809DC678;
  if (!qword_2809DC678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC678);
  }

  return result;
}

unint64_t sub_275451958()
{
  result = qword_2809DC680;
  if (!qword_2809DC680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC680);
  }

  return result;
}

unint64_t sub_2754519B0()
{
  result = qword_2809DC688;
  if (!qword_2809DC688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC688);
  }

  return result;
}

unint64_t sub_275451A08()
{
  result = qword_2809DC690;
  if (!qword_2809DC690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC690);
  }

  return result;
}

unint64_t sub_275451A60()
{
  result = qword_2809DC698;
  if (!qword_2809DC698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC698);
  }

  return result;
}

unint64_t sub_275451AB8()
{
  result = qword_2809DC6A0;
  if (!qword_2809DC6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC6A0);
  }

  return result;
}

unint64_t sub_275451B10()
{
  result = qword_2809DC6A8;
  if (!qword_2809DC6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC6A8);
  }

  return result;
}

unint64_t sub_275451B68()
{
  result = qword_2809DC6B0;
  if (!qword_2809DC6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC6B0);
  }

  return result;
}

unint64_t sub_275451BC0()
{
  result = qword_2809DC6B8;
  if (!qword_2809DC6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC6B8);
  }

  return result;
}

unint64_t sub_275451C18()
{
  result = qword_2809DC6C0;
  if (!qword_2809DC6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC6C0);
  }

  return result;
}

unint64_t sub_275451C70()
{
  result = qword_2809DC6C8;
  if (!qword_2809DC6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC6C8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_27546E850();
}

uint64_t OUTLINED_FUNCTION_13_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_27546E8F0();
}

uint64_t Transition.ContinuousSchedule.AutomationCurveEasingStyle.id.getter()
{
  v1 = 50;
  if (*v0 != 1)
  {
    v1 = 52;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 3485232;
  }
}

uint64_t sub_275451E2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F52657261757173 && a2 == 0xEA0000000000746FLL;
  if (v4 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x657261757173 && a2 == 0xE600000000000000;
    if (v6 || (sub_27546E9A0() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6F50687472756F66 && a2 == 0xEB00000000726577)
    {

      return 2;
    }

    else
    {
      v8 = sub_27546E9A0();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_275451F44(char a1)
{
  if (!a1)
  {
    return 0x6F52657261757173;
  }

  if (a1 == 1)
  {
    return 0x657261757173;
  }

  return 0x6F50687472756F66;
}

uint64_t sub_275451FB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275451E2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275451FD8(uint64_t a1)
{
  v2 = sub_275452614();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275452014(uint64_t a1)
{
  v2 = sub_275452614();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_275452050(uint64_t a1)
{
  v2 = sub_275452518();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27545208C(uint64_t a1)
{
  v2 = sub_275452518();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2754520C8(uint64_t a1)
{
  v2 = sub_27545256C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275452104(uint64_t a1)
{
  v2 = sub_27545256C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_275452140(uint64_t a1)
{
  v2 = sub_2754525C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27545217C(uint64_t a1)
{
  v2 = sub_2754525C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Transition.ContinuousSchedule.AutomationCurveEasingStyle.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_4_22();
  v5 = MEMORY[0x277D84538];
  sub_275452C94(0, v6, v7, v8, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_8_9();
  v58 = v10;
  v59 = v9;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_10_9();
  v57 = v12;
  v13 = OUTLINED_FUNCTION_1_40();
  sub_275452C94(v13, v14, v15, v16, v5);
  OUTLINED_FUNCTION_8_9();
  v55 = v18;
  v56 = v17;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_10_9();
  v54 = v20;
  v21 = OUTLINED_FUNCTION_3_29();
  sub_275452C94(v21, v22, v23, v24, v5);
  OUTLINED_FUNCTION_8_9();
  v52 = v26;
  v53 = v25;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v27);
  v29 = &v52 - v28;
  v30 = OUTLINED_FUNCTION_2_35();
  sub_275452C94(v30, v31, v32, &_s26AutomationCurveEasingStyleO10CodingKeysON, v5);
  v60 = v33;
  OUTLINED_FUNCTION_8_9();
  v35 = v34;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v36);
  v38 = &v52 - v37;
  v39 = *v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275452614();
  sub_27546EB00();
  v40 = (v35 + 8);
  if (v39)
  {
    if (v39 == 1)
    {
      v61[1] = 1;
      sub_27545256C();
      v41 = v54;
      v42 = v60;
      sub_27546E8F0();
      (*(v55 + 8))(v41, v56);
      return (*v40)(v38, v42);
    }

    v62 = 2;
    v49 = sub_275452518();
    v29 = v57;
    OUTLINED_FUNCTION_8_15(&_s26AutomationCurveEasingStyleO21FourthPowerCodingKeysON, &v62, v50, v51, v49);
    v48 = v58;
    v47 = v59;
  }

  else
  {
    v61[0] = 0;
    v44 = sub_2754525C0();
    OUTLINED_FUNCTION_8_15(&_s26AutomationCurveEasingStyleO20SquareRootCodingKeysON, v61, v45, v46, v44);
    v48 = v52;
    v47 = v53;
  }

  (*(v48 + 8))(v29, v47);
  return (*v40)(v38, v35);
}

unint64_t sub_275452518()
{
  result = qword_2809DC6D8;
  if (!qword_2809DC6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC6D8);
  }

  return result;
}

unint64_t sub_27545256C()
{
  result = qword_2809DC6E8;
  if (!qword_2809DC6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC6E8);
  }

  return result;
}

unint64_t sub_2754525C0()
{
  result = qword_2809DC6F8;
  if (!qword_2809DC6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC6F8);
  }

  return result;
}

unint64_t sub_275452614()
{
  result = qword_2809DC708;
  if (!qword_2809DC708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC708);
  }

  return result;
}

uint64_t Transition.ContinuousSchedule.AutomationCurveEasingStyle.hashValue.getter()
{
  v1 = *v0;
  sub_27546EA90();
  MEMORY[0x277C77BF0](v1);
  return sub_27546EAC0();
}

uint64_t Transition.ContinuousSchedule.AutomationCurveEasingStyle.init(from:)@<X0>(void *a1@<X0>, _BYTE *a3@<X8>)
{
  v79 = a3;
  OUTLINED_FUNCTION_4_22();
  v4 = MEMORY[0x277D844C8];
  sub_275452C94(0, v5, v6, v7, MEMORY[0x277D844C8]);
  v81 = v8;
  OUTLINED_FUNCTION_8_9();
  v76 = v9;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_10_9();
  v78 = v11;
  v12 = OUTLINED_FUNCTION_1_40();
  sub_275452C94(v12, v13, v14, v15, v4);
  OUTLINED_FUNCTION_8_9();
  v74 = v17;
  v75 = v16;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_10_9();
  v77 = v19;
  v20 = OUTLINED_FUNCTION_3_29();
  sub_275452C94(v20, v21, v22, v23, v4);
  v25 = v24;
  OUTLINED_FUNCTION_8_9();
  v73 = v26;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v27);
  v29 = &v71 - v28;
  v30 = OUTLINED_FUNCTION_2_35();
  sub_275452C94(v30, v31, v32, &_s26AutomationCurveEasingStyleO10CodingKeysON, v4);
  v34 = v33;
  OUTLINED_FUNCTION_8_9();
  v80 = v35;
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v36);
  v38 = &v71 - v37;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275452614();
  v39 = v82;
  sub_27546EAE0();
  if (v39)
  {
    goto LABEL_12;
  }

  v72 = v25;
  v40 = v81;
  v82 = a1;
  v41 = sub_27546E8E0();
  result = sub_275433874(v41, 0);
  if (v44 == v45 >> 1)
  {
    goto LABEL_10;
  }

  v71 = 0;
  if (v44 < (v45 >> 1))
  {
    v46 = *(v43 + v44);
    sub_27543386C(v44 + 1);
    v48 = v47;
    v50 = v49;
    swift_unknownObjectRelease();
    if (v48 == v50 >> 1)
    {
      if (v46)
      {
        LODWORD(v73) = v46;
        v51 = v46 == 1;
        v52 = v71;
        if (!v51)
        {
          v66 = v40;
          v85 = 2;
          sub_275452518();
          v67 = v78;
          OUTLINED_FUNCTION_7_18();
          sub_27546E850();
          v54 = v79;
          v68 = v80;
          if (v52)
          {
            (*(v80 + 8))(v38, v34);
            goto LABEL_18;
          }

          swift_unknownObjectRelease();
          (*(v76 + 8))(v67, v66);
          (*(v68 + 8))(v38, v34);
          goto LABEL_21;
        }

        v84 = 1;
        sub_27545256C();
        v53 = v77;
        OUTLINED_FUNCTION_7_18();
        sub_27546E850();
        v54 = v79;
        if (!v52)
        {
          swift_unknownObjectRelease();
          (*(v74 + 8))(v53, v75);
          v55 = OUTLINED_FUNCTION_5_22();
          v56(v55);
LABEL_21:
          LOBYTE(v46) = v73;
          goto LABEL_22;
        }
      }

      else
      {
        v83 = 0;
        sub_2754525C0();
        OUTLINED_FUNCTION_7_18();
        v63 = v71;
        sub_27546E850();
        if (!v63)
        {
          swift_unknownObjectRelease();
          (*(v73 + 8))(v29, v72);
          v69 = OUTLINED_FUNCTION_5_22();
          v70(v69);
          v54 = v79;
LABEL_22:
          *v54 = v46;
          v62 = v82;
          return __swift_destroy_boxed_opaque_existential_1(v62);
        }
      }

      v64 = OUTLINED_FUNCTION_5_22();
      v65(v64);
LABEL_18:
      swift_unknownObjectRelease();
      goto LABEL_11;
    }

LABEL_10:
    v57 = sub_27546E7D0();
    swift_allocError();
    v59 = v58;
    sub_2754333D4(0);
    *v59 = &type metadata for Transition.ContinuousSchedule.AutomationCurveEasingStyle;
    sub_27546E860();
    sub_27546E7B0();
    (*(*(v57 - 8) + 104))(v59, *MEMORY[0x277D84160], v57);
    swift_willThrow();
    swift_unknownObjectRelease();
    v60 = OUTLINED_FUNCTION_5_22();
    v61(v60);
LABEL_11:
    a1 = v82;
LABEL_12:
    v62 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v62);
  }

  __break(1u);
  return result;
}

void sub_275452C94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_275452D2C@<X0>(uint64_t *a1@<X8>)
{
  result = Transition.ContinuousSchedule.AutomationCurveEasingStyle.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_275452D58()
{
  result = qword_2809DC730;
  if (!qword_2809DC730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC730);
  }

  return result;
}

_BYTE *sub_275452DC4(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x275452E90);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_275452EFC()
{
  result = qword_2809DC738;
  if (!qword_2809DC738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC738);
  }

  return result;
}

unint64_t sub_275452F54()
{
  result = qword_2809DC740;
  if (!qword_2809DC740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC740);
  }

  return result;
}

unint64_t sub_275452FAC()
{
  result = qword_2809DC748;
  if (!qword_2809DC748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC748);
  }

  return result;
}

unint64_t sub_275453004()
{
  result = qword_2809DC750;
  if (!qword_2809DC750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC750);
  }

  return result;
}

unint64_t sub_27545305C()
{
  result = qword_2809DC758;
  if (!qword_2809DC758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC758);
  }

  return result;
}

unint64_t sub_2754530B4()
{
  result = qword_2809DC760;
  if (!qword_2809DC760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC760);
  }

  return result;
}

unint64_t sub_27545310C()
{
  result = qword_2809DC768;
  if (!qword_2809DC768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC768);
  }

  return result;
}

unint64_t sub_275453164()
{
  result = qword_2809DC770;
  if (!qword_2809DC770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC770);
  }

  return result;
}

unint64_t sub_2754531BC()
{
  result = qword_2809DC778;
  if (!qword_2809DC778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC778);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_27546E8F0();
}

double Transition.ContinuousSchedule.AutomationPoint.songTime.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

uint64_t static Transition.ContinuousSchedule.AutomationPoint.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && *(a2 + 8) - *(a1 + 8) == 0.0)
  {
    v4 = *(a1 + 16);
    v5 = *(a2 + 16);
    if (v4 >> 6)
    {
      if (v4 >> 6 != 1)
      {
        if (v4 == 128)
        {
          if (v5 == 128)
          {
            return 1;
          }
        }

        else if (v5 == 129)
        {
          return 1;
        }

        return 0;
      }

      v6 = v5 & 0xC0;
      v7 = (v5 ^ v4) & 0x3F;
      if (v6 != 64 || v7 != 0)
      {
        return 0;
      }
    }

    else if (v5 > 0x3F || v4 != v5)
    {
      return 0;
    }

    return 1;
  }

  return result;
}

uint64_t sub_275453388(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656D6954676E6F73 && a2 == 0xE800000000000000;
    if (v6 || (sub_27546E9A0() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6576727563 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_27546E9A0();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}