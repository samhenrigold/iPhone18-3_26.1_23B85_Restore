char *sub_1BA27FB08(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9F2180C(0, &qword_1EDC5DCA8, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);
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

void *sub_1BA27FCE8(void *result, int64_t a2, char a3, void *a4)
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
    sub_1BA28196C(0);
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
    sub_1B9F2180C(0, &qword_1EBBEAC88, &type metadata for ConfirmDetailsSection.Row, MEMORY[0x1E69E62F8]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1BA27FE5C(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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

  if (v13)
  {
    sub_1B9F1D1BC(0, a5, a6, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    a7(0);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_1BA27FFD8(void *result, int64_t a2, char a3, void *a4)
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
    sub_1B9F2180C(0, &qword_1EBBEF688, &type metadata for SampleDescriptionItem, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 176);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[22 * v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BA280158(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9F2180C(0, &qword_1EDC5DB70, MEMORY[0x1E69E67B0], MEMORY[0x1E69E6F90]);
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

char *sub_1BA28027C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9F1D1BC(0, &qword_1EDC5DB90, type metadata accessor for CGRect, MEMORY[0x1E69E6F90]);
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

char *sub_1BA2803A4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9F2180C(0, &qword_1EDC5DC88, &type metadata for CoreTextView.TypesettingResult.Column, MEMORY[0x1E69E6F90]);
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

char *sub_1BA280530(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
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
    sub_1B9F1D1BC(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

void *sub_1BA2806AC(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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

  sub_1B9F1D1BC(0, a5, a6, MEMORY[0x1E69E6F90]);
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

char *sub_1BA2808C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9F1D1BC(0, &unk_1EDC5DBA0, type metadata accessor for HKDisplayTypeIdentifier, MEMORY[0x1E69E6F90]);
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

char *sub_1BA280A04(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
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
    sub_1B9F2180C(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_1BA280B50(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9F2180C(0, &qword_1EDC5DBE8, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6F90]);
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

char *sub_1BA280C6C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9F2180C(0, &qword_1EBBEF6B0, &type metadata for LegacyUserActivity.Breadcrumb, MEMORY[0x1E69E6F90]);
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

char *sub_1BA280D90(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9F2180C(0, &qword_1EDC5DBD8, MEMORY[0x1E69E6530], MEMORY[0x1E69E6F90]);
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

void *sub_1BA280EE0(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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

  if (v13)
  {
    sub_1B9F1D1BC(0, a5, a6, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    a7(0);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void sub_1BA281078(uint64_t a1)
{
  if (!qword_1EBBEF660)
  {
    sub_1B9F0D9AC(255, qword_1EDC62BD0, &protocol descriptor for CollectionViewListDisclosureItem, 1);
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEF660);
    }
  }
}

void sub_1BA28155C()
{
  if (!qword_1EDC5E5B0)
  {
    v0 = sub_1BA4A6E98();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5E5B0);
    }
  }
}

void sub_1BA2815B4(uint64_t a1)
{
  if (!qword_1EBBEF680)
  {
    sub_1B9F0D9AC(255, &qword_1EBBE9AF0, &protocol descriptor for HealthDetailsItem, 1);
    v1 = sub_1BA4A82E8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEF680);
    }
  }
}

void sub_1BA281620(uint64_t a1)
{
  if (!qword_1EDC5DC38)
  {
    sub_1B9F0D9AC(255, &qword_1EDC603E0, &protocol descriptor for PluginNotificationCenterDelegateProviding, 0);
    v1 = sub_1BA4A82E8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5DC38);
    }
  }
}

void sub_1BA28168C(uint64_t a1)
{
  if (!qword_1EDC6B448)
  {
    sub_1B9F0D9AC(255, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], 1);
    v1 = sub_1BA4A82E8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC6B448);
    }
  }
}

void sub_1BA28172C(uint64_t a1)
{
  if (!qword_1EBBEF698)
  {
    sub_1B9F0D9AC(255, &qword_1EBBEF6A0, &protocol descriptor for PDFTableRowProviding, 1);
    v1 = sub_1BA4A82E8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEF698);
    }
  }
}

void sub_1BA281798(uint64_t a1)
{
  if (!qword_1EBBEAC28)
  {
    sub_1B9F0D9AC(255, &qword_1EBBE9B10, &protocol descriptor for SourcesItem, 1);
    v1 = sub_1BA4A82E8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEAC28);
    }
  }
}

void sub_1BA281804(uint64_t a1)
{
  if (!qword_1EBBEF6B8)
  {
    sub_1B9F0D9AC(255, &qword_1EBBEDF00, &protocol descriptor for PDFSectionProvider, 1);
    v1 = sub_1BA4A82E8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEF6B8);
    }
  }
}

void sub_1BA281870(uint64_t a1)
{
  if (!qword_1EDC5DC68)
  {
    sub_1B9F0D9AC(255, &unk_1EDC66C80, &protocol descriptor for DataTypeDetailComponent, 1);
    v1 = sub_1BA4A82E8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5DC68);
    }
  }
}

void sub_1BA2818DC(uint64_t a1)
{
  if (!qword_1EDC6E280)
  {
    sub_1B9F2180C(255, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v1 = sub_1BA4A14B8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC6E280);
    }
  }
}

double sub_1BA281958(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

void sub_1BA28196C(uint64_t a1)
{
  if (!qword_1EBBEAC80)
  {
    sub_1B9F2180C(255, &qword_1EBBEAC88, &type metadata for ConfirmDetailsSection.Row, MEMORY[0x1E69E62F8]);
    v1 = sub_1BA4A82E8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEAC80);
    }
  }
}

void sub_1BA2819E8(uint64_t a1)
{
  if (!qword_1EBBEAC48)
  {
    sub_1B9F0D9AC(255, &unk_1EBBE9B28, &protocol descriptor for DisplayCategoryHeaderProviding, 0);
    v1 = sub_1BA4A82E8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEAC48);
    }
  }
}

void sub_1BA281A54(uint64_t a1)
{
  if (!qword_1EDC5DC80)
  {
    sub_1B9F0D9AC(255, qword_1EDC69430, &protocol descriptor for PDFRenderable, 1);
    v1 = sub_1BA4A82E8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5DC80);
    }
  }
}

void sub_1BA281AC0(uint64_t a1)
{
  if (!qword_1EBBED838)
  {
    sub_1B9F0D9AC(255, &qword_1EDC67F10, &protocol descriptor for SnapshotDataSource, 0);
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBED838);
    }
  }
}

void sub_1BA281B2C(uint64_t a1)
{
  if (!qword_1EDC61770)
  {
    sub_1B9F0D9AC(255, qword_1EDC61778, &protocol descriptor for UIAutomationBaseIdentifierProvider, 1);
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC61770);
    }
  }
}

id DataTypeDetailConfiguration.HideableHearingArticlesComponent.predicate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  return v2;
}

__n128 DataTypeDetailConfiguration.HideableHearingArticlesComponent.init(predicate:maximumNumberOfArticles:header:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 8);
  *a4 = *a1;
  *(a4 + 8) = v4;
  *(a4 + 16) = a2;
  result = *a3;
  *(a4 + 24) = *a3;
  return result;
}

uint64_t DataTypeDetailConfiguration.HideableHearingArticlesComponent.makeDataSource(context:)(uint64_t a1)
{
  sub_1BA1863C8(0);
  v43 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v45 = *(v1 + 8);
  v9 = *(v1 + 24);
  v46 = *(v1 + 16);
  v44 = v9;
  v10 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  v11 = sub_1BA4A1B68();
  sub_1BA15E094();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BA4B5480;
  *(v12 + 32) = 0;
  if (*(a1 + 48) == 2)
  {
  }

  else
  {
    v13 = sub_1BA4A8338();

    if ((v13 & 1) == 0)
    {
      v14 = v8;
      v15 = [*(a1 + 40) profileIdentifier];
      v17 = *(v12 + 16);
      v16 = *(v12 + 24);
      if (v17 >= v16 >> 1)
      {
        v39 = v15;
        v12 = sub_1BA27EFDC((v16 > 1), v17 + 1, 1, v12);
        v15 = v39;
      }

      *(v12 + 16) = v17 + 1;
      *(v12 + 8 * v17 + 32) = v15;
      v8 = v14;
    }
  }

  v18 = *(a1 + 40);
  v19 = *MEMORY[0x1E696B898];
  v20 = objc_allocWithZone(MEMORY[0x1E696C178]);
  v42 = v8;
  v41 = v11;
  v21 = v44;
  v22 = [v20 initWithFeatureIdentifier:v19 healthStore:{v18, sub_1BA048494(v44, v10)}];
  v47[0] = v22;
  sub_1BA282138();
  v47[0] = sub_1BA4A39A8();
  sub_1BA0B9D44(0);
  v23 = v8;
  sub_1BA282184(&qword_1EDC5F500, sub_1BA0B9D44, MEMORY[0x1E695BED8]);
  sub_1BA4A4FE8();

  sub_1BA282184(&qword_1EBBED118, sub_1BA1863C8, MEMORY[0x1E695BD60]);
  v24 = v43;
  v25 = sub_1BA4A4F98();
  (*(v4 + 8))(v7, v24);
  v26 = objc_allocWithZone(type metadata accessor for HideableHearingArticlesFRCDataSource(0));
  *&v26[qword_1EBBED120] = MEMORY[0x1E69E7CD0];
  v27 = &v26[qword_1EBBED128];
  *v27 = 0;
  *(v27 + 1) = 0;
  v28 = &v26[qword_1EBBED130];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = &v26[qword_1EBBED138];
  *v29 = v23;
  v30 = v45;
  v29[8] = v45;
  *&v26[qword_1EBBED140] = v12;
  v48 = v23;
  v49 = v30;
  v47[0] = v21;
  v47[1] = v10;
  v31 = v41;
  v32 = v42;

  v33 = ArticlesFetchedResultsControllerDataSource.init(managedObjectContext:sourceProfiles:predicate:header:)(v31, v12, &v48, v47);
  v34 = sub_1BA186BA8(0);
  v35 = qword_1EDC84AD8;
  swift_beginAccess();
  v36 = [*&v33[v35] fetchRequest];
  [v36 setPredicate_];

  sub_1B9F128B4();
  sub_1BA047948();

  sub_1BA18682C(v25);

  sub_1BA2821CC(0);
  swift_allocObject();
  v37 = sub_1BA0488BC();

  return v37;
}

unint64_t sub_1BA282138()
{
  result = qword_1EBBF15E0;
  if (!qword_1EBBF15E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBBF15E0);
  }

  return result;
}

uint64_t sub_1BA282184(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BA2821CC(uint64_t a1)
{
  if (!qword_1EBBEF700)
  {
    v2 = type metadata accessor for HideableHearingArticlesFRCDataSource(255);
    v4 = type metadata accessor for DataSourceWithSectionItemLimit(a1, v2, &protocol witness table for FetchedResultsControllerDataSource<A>, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1EBBEF700);
    }
  }
}

uint64_t CloudSyncAlert.title.getter()
{
  v1 = *v0;

  return v1;
}

void CloudSyncAlert.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t CloudSyncAlert.description.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void CloudSyncAlert.description.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t CloudSyncAlert.action.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void CloudSyncAlert.action.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t static CloudSyncAlert.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1BA4A8338() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_1BA4A8338() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_1BA4A8338();
}

uint64_t sub_1BA2824EC()
{
  v1 = 0x7470697263736564;
  if (*v0 != 1)
  {
    v1 = 0x6E6F69746361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_1BA282548@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BA285E78(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1BA282570(uint64_t a1)
{
  v2 = sub_1BA282798();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA2825AC(uint64_t a1)
{
  v2 = sub_1BA282798();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CloudSyncAlert.encode(to:)(void *a1)
{
  sub_1BA282CD4(0, &qword_1EBBEFA08, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v13 - v7;
  v9 = v1[2];
  v13[3] = v1[3];
  v13[4] = v9;
  v10 = v1[4];
  v13[1] = v1[5];
  v13[2] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA282798();
  sub_1BA4A8548();
  v16 = 0;
  v11 = v13[5];
  sub_1BA4A8248();
  if (!v11)
  {
    v15 = 1;
    sub_1BA4A8248();
    v14 = 2;
    sub_1BA4A8248();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1BA282798()
{
  result = qword_1EBBEFA10;
  if (!qword_1EBBEFA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEFA10);
  }

  return result;
}

uint64_t CloudSyncAlert.hash(into:)(uint64_t a1)
{
  sub_1BA4A68C8();
  sub_1BA4A68C8();

  return sub_1BA4A68C8();
}

uint64_t CloudSyncAlert.hashValue.getter()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();
  sub_1BA4A68C8();
  sub_1BA4A68C8();
  return sub_1BA4A84D8();
}

void CloudSyncAlert.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1BA282CD4(0, &qword_1EBBEFA18, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v20 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA282798();
  sub_1BA4A8528();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v26 = 0;
    v11 = sub_1BA4A8188();
    v13 = v12;
    v23 = v11;
    v25 = 1;
    v21 = sub_1BA4A8188();
    v22 = v14;
    v24 = 2;
    v15 = sub_1BA4A8188();
    v17 = v16;
    v18 = v15;
    (*(v7 + 8))(v10, v6);
    v19 = v22;
    *a2 = v23;
    a2[1] = v13;
    a2[2] = v21;
    a2[3] = v19;
    a2[4] = v18;
    a2[5] = v17;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_1BA282B64()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();
  sub_1BA4A68C8();
  sub_1BA4A68C8();
  return sub_1BA4A84D8();
}

uint64_t sub_1BA282BE8(uint64_t a1)
{
  sub_1BA4A68C8();
  sub_1BA4A68C8();

  return sub_1BA4A68C8();
}

uint64_t sub_1BA282C54(uint64_t a1)
{
  sub_1BA4A8488();
  sub_1BA4A68C8();
  sub_1BA4A68C8();
  sub_1BA4A68C8();
  return sub_1BA4A84D8();
}

void sub_1BA282CD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1BA282798();
    v7 = a3(a1, &type metadata for CloudSyncAlert.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1BA282D68(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1BA4A8338() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_1BA4A8338() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_1BA4A8338();
}

id sub_1BA282E60()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  [v0 setAllowedUnits_];
  [v0 setUnitsStyle_];
  result = [v0 setMaximumUnitCount_];
  qword_1EBC09808 = v0;
  return result;
}

double static CloudSyncAlert.notSynced(since:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v54 = a2;
  v3 = sub_1BA4A3EA8();
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v51 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A1728();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v50 - v13;
  if (qword_1EBBE85D8 != -1)
  {
    swift_once();
  }

  v15 = qword_1EBC09808;
  v16 = sub_1BA4A16B8();
  sub_1BA4A1718();
  v17 = sub_1BA4A16B8();
  v18 = *(v7 + 8);
  v18(v14, v6);
  v19 = [v15 stringFromDate:v16 toDate:v17];

  if (v19)
  {
    v20 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v22 = v21;

    if (qword_1EBBE8658 != -1)
    {
      swift_once();
    }

    sub_1B9F2EAC0(0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1BA4B5480;
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 64) = sub_1B9F1BE20();
    *(v23 + 32) = v20;
    *(v23 + 40) = v22;
    v24 = sub_1BA4A6768();
    v26 = v25;

    if ([objc_opt_self() wapiCapability])
    {
      if (qword_1EBBE8648 != -1)
      {
        swift_once();
      }

      v27 = &qword_1EBBEF8B8;
    }

    else
    {
      if (qword_1EBBE8640 != -1)
      {
        swift_once();
      }

      v27 = &qword_1EBBEF8A8;
    }

    v38 = *v27;
    v39 = v27[1];

    if (qword_1EBBE8650 != -1)
    {
      swift_once();
    }

    v40 = qword_1EBBEF8C8;
    v41 = unk_1EBBEF8D0;
    v42 = v54;
    *v54 = v24;
    v42[1] = v26;
    v42[2] = v38;
    v42[3] = v39;
    v42[4] = v40;
    v42[5] = v41;
  }

  else
  {
    v28 = v51;
    sub_1BA4A3E68();
    (*(v7 + 16))(v10, a1, v6);
    v29 = v28;
    v30 = sub_1BA4A3E88();
    v31 = sub_1BA4A6FB8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v55 = v50;
      *v32 = 136315138;
      v33 = sub_1BA4A1678();
      v35 = v34;
      v18(v10, v6);
      v36 = sub_1B9F0B82C(v33, v35, &v55);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_1B9F07000, v30, v31, "Failed to format %s", v32, 0xCu);
      v37 = v50;
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x1BFAF43A0](v37, -1, -1);
      MEMORY[0x1BFAF43A0](v32, -1, -1);
    }

    else
    {

      v18(v10, v6);
    }

    (*(v52 + 8))(v29, v53);
    if (qword_1EBBE85E0 != -1)
    {
      swift_once();
    }

    v43 = unk_1EBBEF710;
    v44 = qword_1EBBEF718;
    v45 = unk_1EBBEF720;
    v46 = qword_1EBBEF728;
    v47 = unk_1EBBEF730;
    v48 = v54;
    *v54 = qword_1EBBEF708;
    v48[1] = v43;
    v48[2] = v44;
    v48[3] = v45;
    v48[4] = v46;
    v48[5] = v47;
  }

  return result;
}

double sub_1BA283420()
{
  if (qword_1EBBE8638 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBEF898;
  v0 = unk_1EBBEF8A0;
  v2 = objc_opt_self();

  if ([v2 wapiCapability])
  {
    if (qword_1EBBE8648 != -1)
    {
      swift_once();
    }

    v3 = &qword_1EBBEF8B8;
  }

  else
  {
    if (qword_1EBBE8640 != -1)
    {
      swift_once();
    }

    v3 = &qword_1EBBEF8A8;
  }

  v5 = *v3;
  v4 = v3[1];

  if (qword_1EBBE8650 != -1)
  {
    swift_once();
  }

  qword_1EBBEF708 = v1;
  unk_1EBBEF710 = v0;
  qword_1EBBEF718 = v5;
  unk_1EBBEF720 = v4;
  qword_1EBBEF728 = qword_1EBBEF8C8;
  unk_1EBBEF730 = unk_1EBBEF8D0;

  return result;
}

double static CloudSyncAlert.notSynced.getter@<D0>(void *a1@<X8>)
{
  if (qword_1EBBE85E0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_1EBBEF710;
  v2 = qword_1EBBEF718;
  v3 = unk_1EBBEF720;
  v4 = qword_1EBBEF728;
  v5 = unk_1EBBEF730;
  *a1 = qword_1EBBEF708;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;

  return result;
}

double sub_1BA283620()
{
  if (qword_1EBBE8660 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBEF8E8;
  v0 = unk_1EBBEF8F0;
  v2 = qword_1EBBE8668;

  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1EBBEF8F8;
  v3 = unk_1EBBEF900;
  v5 = qword_1EBBE8670;

  if (v5 != -1)
  {
    swift_once();
  }

  qword_1EBBEF738 = v1;
  unk_1EBBEF740 = v0;
  qword_1EBBEF748 = v4;
  unk_1EBBEF750 = v3;
  qword_1EBBEF758 = qword_1EBBEF908;
  unk_1EBBEF760 = unk_1EBBEF910;

  return result;
}

double static CloudSyncAlert.iCloudStorageFull.getter@<D0>(void *a1@<X8>)
{
  if (qword_1EBBE85E8 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_1EBBEF740;
  v2 = qword_1EBBEF748;
  v3 = unk_1EBBEF750;
  v4 = qword_1EBBEF758;
  v5 = unk_1EBBEF760;
  *a1 = qword_1EBBEF738;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;

  return result;
}

double sub_1BA2837C8()
{
  if (qword_1EBBE8678 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBEF918;
  v0 = unk_1EBBEF920;
  v2 = qword_1EBBE8680;

  if (v2 != -1)
  {
    swift_once();
  }

  qword_1EBBEF768 = v1;
  unk_1EBBEF770 = v0;
  qword_1EBBEF778 = 0;
  unk_1EBBEF780 = 0xE000000000000000;
  qword_1EBBEF788 = qword_1EBBEF928;
  unk_1EBBEF790 = unk_1EBBEF930;

  return result;
}

double static CloudSyncAlert.iCloudCFU.getter@<D0>(void *a1@<X8>)
{
  if (qword_1EBBE85F0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_1EBBEF770;
  v2 = qword_1EBBEF778;
  v3 = unk_1EBBEF780;
  v4 = qword_1EBBEF788;
  v5 = unk_1EBBEF790;
  *a1 = qword_1EBBEF768;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;

  return result;
}

double sub_1BA283928()
{
  if (qword_1EDC5E7D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDC5E7E0;
  v0 = *algn_1EDC5E7E8;
  v2 = qword_1EDC5E770;

  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1EDC5E778;
  v3 = unk_1EDC5E780;
  v5 = qword_1EDC5E7A8;

  if (v5 != -1)
  {
    swift_once();
  }

  qword_1EDC69370 = v1;
  *algn_1EDC69378 = v0;
  qword_1EDC69380 = v4;
  unk_1EDC69388 = v3;
  qword_1EDC69390 = qword_1EDC5E7B0;
  unk_1EDC69398 = *algn_1EDC5E7B8;

  return result;
}

double static CloudSyncAlert.iCloudDisabled.getter@<D0>(void *a1@<X8>)
{
  if (qword_1EDC69368 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_1EDC69378;
  v2 = qword_1EDC69380;
  v3 = unk_1EDC69388;
  v4 = qword_1EDC69390;
  v5 = unk_1EDC69398;
  *a1 = qword_1EDC69370;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;

  return result;
}

double sub_1BA283AD0()
{
  if (qword_1EBBE8690 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBEF938;
  v0 = unk_1EBBEF940;
  v2 = qword_1EBBE8698;

  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1EBBEF948;
  v3 = unk_1EBBEF950;
  v5 = qword_1EBBE8650;

  if (v5 != -1)
  {
    swift_once();
  }

  qword_1EBBEF798 = v1;
  unk_1EBBEF7A0 = v0;
  qword_1EBBEF7A8 = v4;
  unk_1EBBEF7B0 = v3;
  qword_1EBBEF7B8 = qword_1EBBEF8C8;
  unk_1EBBEF7C0 = unk_1EBBEF8D0;

  return result;
}

double static CloudSyncAlert.iCloudFutureProtocolVersion.getter@<D0>(void *a1@<X8>)
{
  if (qword_1EBBE8600 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_1EBBEF7A0;
  v2 = qword_1EBBEF7A8;
  v3 = unk_1EBBEF7B0;
  v4 = qword_1EBBEF7B8;
  v5 = unk_1EBBEF7C0;
  *a1 = qword_1EBBEF798;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;

  return result;
}

double sub_1BA283C78()
{
  if (qword_1EDC5E7C0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDC5E7C8;
  v0 = unk_1EDC5E7D0;
  v2 = qword_1EDC5E788;

  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1EDC5E790;
  v3 = unk_1EDC5E798;
  v5 = qword_1EDC5E750;

  if (v5 != -1)
  {
    swift_once();
  }

  qword_1EDC69330 = v1;
  *algn_1EDC69338 = v0;
  qword_1EDC69340 = v4;
  unk_1EDC69348 = v3;
  qword_1EDC69350 = qword_1EDC5E758;
  unk_1EDC69358 = unk_1EDC5E760;

  return result;
}

double static CloudSyncAlert.healthSharingDisabled.getter@<D0>(void *a1@<X8>)
{
  if (qword_1EDC69328 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_1EDC69338;
  v2 = qword_1EDC69340;
  v3 = unk_1EDC69348;
  v4 = qword_1EDC69350;
  v5 = unk_1EDC69358;
  *a1 = qword_1EDC69330;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;

  return result;
}

double sub_1BA283E20()
{
  if (qword_1EBBE86A8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBEF958;
  v0 = unk_1EBBEF960;
  v2 = qword_1EBBE86B0;

  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1EBBEF968;
  v3 = unk_1EBBEF970;
  v5 = qword_1EBBE86B8;

  if (v5 != -1)
  {
    swift_once();
  }

  qword_1EBBEF7C8 = v1;
  unk_1EBBEF7D0 = v0;
  qword_1EBBEF7D8 = v4;
  unk_1EBBEF7E0 = v3;
  qword_1EBBEF7E8 = qword_1EBBEF978;
  unk_1EBBEF7F0 = unk_1EBBEF980;

  return result;
}

double static CloudSyncAlert.healthSharingICloudManage.getter@<D0>(void *a1@<X8>)
{
  if (qword_1EBBE8610 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_1EBBEF7D0;
  v2 = qword_1EBBEF7D8;
  v3 = unk_1EBBEF7E0;
  v4 = qword_1EBBEF7E8;
  v5 = unk_1EBBEF7F0;
  *a1 = qword_1EBBEF7C8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;

  return result;
}

double sub_1BA283FC8()
{
  if (qword_1EBBE86C0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBEF988;
  v0 = unk_1EBBEF990;
  v2 = qword_1EBBE86C8;

  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1EBBEF998;
  v3 = unk_1EBBEF9A0;
  v5 = qword_1EBBE86D0;

  if (v5 != -1)
  {
    swift_once();
  }

  qword_1EBBEF7F8 = v1;
  unk_1EBBEF800 = v0;
  qword_1EBBEF808 = v4;
  unk_1EBBEF810 = v3;
  qword_1EBBEF818 = qword_1EBBEF9A8;
  unk_1EBBEF820 = unk_1EBBEF9B0;

  return result;
}

double static CloudSyncAlert.healthSyncEnabledManateeDisabled.getter@<D0>(void *a1@<X8>)
{
  if (qword_1EBBE8618 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_1EBBEF800;
  v2 = qword_1EBBEF808;
  v3 = unk_1EBBEF810;
  v4 = qword_1EBBEF818;
  v5 = unk_1EBBEF820;
  *a1 = qword_1EBBEF7F8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;

  return result;
}

double sub_1BA284170()
{
  if (qword_1EBBE86D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBEF9B8;
  v0 = unk_1EBBEF9C0;
  v2 = qword_1EBBE86E0;

  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1EBBEF9C8;
  v3 = unk_1EBBEF9D0;
  v5 = qword_1EBBE86E8;

  if (v5 != -1)
  {
    swift_once();
  }

  qword_1EBBEF828 = v1;
  unk_1EBBEF830 = v0;
  qword_1EBBEF838 = v4;
  unk_1EBBEF840 = v3;
  qword_1EBBEF848 = qword_1EBBEF9D8;
  unk_1EBBEF850 = unk_1EBBEF9E0;

  return result;
}

double static CloudSyncAlert.healthSharingManateeDisabled.getter@<D0>(void *a1@<X8>)
{
  if (qword_1EBBE8620 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_1EBBEF830;
  v2 = qword_1EBBEF838;
  v3 = unk_1EBBEF840;
  v4 = qword_1EBBEF848;
  v5 = unk_1EBBEF850;
  *a1 = qword_1EBBEF828;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;

  return result;
}

double sub_1BA284318()
{
  if (qword_1EBBE86F0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBEF9E8;
  v0 = unk_1EBBEF9F0;
  v2 = qword_1EBBE86F8;

  if (v2 != -1)
  {
    swift_once();
  }

  qword_1EBBEF858 = v1;
  unk_1EBBEF860 = v0;
  qword_1EBBEF868 = qword_1EBBEF9F8;
  unk_1EBBEF870 = unk_1EBBEFA00;
  qword_1EBBEF878 = 0;
  unk_1EBBEF880 = 0xE000000000000000;

  return result;
}

double static CloudSyncAlert.healthSharingRestoreInProgress.getter@<D0>(void *a1@<X8>)
{
  if (qword_1EBBE8628 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_1EBBEF860;
  v2 = qword_1EBBEF868;
  v3 = unk_1EBBEF870;
  v4 = qword_1EBBEF878;
  v5 = unk_1EBBEF880;
  *a1 = qword_1EBBEF858;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;

  return result;
}

void sub_1BA284478()
{
  if ([objc_opt_self() wapiCapability])
  {
    if (qword_1EBBE8648 != -1)
    {
      swift_once();
    }

    v0 = &qword_1EBBEF8B8;
  }

  else
  {
    if (qword_1EBBE8640 != -1)
    {
      swift_once();
    }

    v0 = &qword_1EBBEF8A8;
  }

  v1 = *v0;

  qword_1EBBEF888 = v1;
  unk_1EBBEF890 = v2;
}

uint64_t static CloudSyncAlert.wifiSyncExplanation.getter()
{
  if (qword_1EBBE8630 != -1)
  {
    swift_once();
  }

  v0 = qword_1EBBEF888;

  return v0;
}

void sub_1BA2845A0()
{
  if (qword_1EDC5E0F0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC5E0F8;
  v1 = sub_1BA4A1318();
  v3 = v2;

  qword_1EBBEF898 = v1;
  unk_1EBBEF8A0 = v3;
}

void sub_1BA284684()
{
  if (qword_1EDC5E0F0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC5E0F8;
  v1 = sub_1BA4A1318();
  v3 = v2;

  qword_1EBBEF8A8 = v1;
  unk_1EBBEF8B0 = v3;
}

void sub_1BA284764()
{
  if (qword_1EDC5E0F0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC5E0F8;
  v1 = sub_1BA4A1318();
  v3 = v2;

  qword_1EBBEF8B8 = v1;
  unk_1EBBEF8C0 = v3;
}

void sub_1BA284844()
{
  if (qword_1EDC5E0F0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC5E0F8;
  v1 = sub_1BA4A1318();
  v3 = v2;

  qword_1EBBEF8C8 = v1;
  unk_1EBBEF8D0 = v3;
}

void sub_1BA284934()
{
  if (qword_1EDC5E0F0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC5E0F8;
  v1 = sub_1BA4A1318();
  v3 = v2;

  qword_1EBBEF8D8 = v1;
  unk_1EBBEF8E0 = v3;
}

void sub_1BA284A14()
{
  if (qword_1EDC5E0F0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC5E0F8;
  v1 = sub_1BA4A1318();
  v3 = v2;

  qword_1EBBEF8E8 = v1;
  unk_1EBBEF8F0 = v3;
}

void sub_1BA284AF8()
{
  if (qword_1EDC5E0F0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC5E0F8;
  v1 = sub_1BA4A1318();
  v3 = v2;

  qword_1EBBEF8F8 = v1;
  unk_1EBBEF900 = v3;
}

void sub_1BA284BD8()
{
  if (qword_1EDC5E0F0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC5E0F8;
  v1 = sub_1BA4A1318();
  v3 = v2;

  qword_1EBBEF908 = v1;
  unk_1EBBEF910 = v3;
}

void sub_1BA284CC4()
{
  if (qword_1EDC5E0F0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC5E0F8;
  v1 = sub_1BA4A1318();
  v3 = v2;

  qword_1EBBEF918 = v1;
  unk_1EBBEF920 = v3;
}

void sub_1BA284DAC()
{
  if (qword_1EDC5E0F0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC5E0F8;
  v1 = sub_1BA4A1318();
  v3 = v2;

  qword_1EBBEF928 = v1;
  unk_1EBBEF930 = v3;
}

void sub_1BA284E98()
{
  if (qword_1EDC5E0F0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC5E0F8;
  v1 = sub_1BA4A1318();
  v3 = v2;

  qword_1EDC5E7E0 = v1;
  *algn_1EDC5E7E8 = v3;
}

void sub_1BA284F78()
{
  if (qword_1EDC5E0F0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC5E0F8;
  v1 = sub_1BA4A1318();
  v3 = v2;

  qword_1EDC5E778 = v1;
  unk_1EDC5E780 = v3;
}

void sub_1BA285058()
{
  if (qword_1EDC5E0F0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC5E0F8;
  v1 = sub_1BA4A1318();
  v3 = v2;

  qword_1EDC5E7B0 = v1;
  *algn_1EDC5E7B8 = v3;
}

void sub_1BA28513C()
{
  if (qword_1EDC5E0F0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC5E0F8;
  v1 = sub_1BA4A1318();
  v3 = v2;

  qword_1EBBEF938 = v1;
  unk_1EBBEF940 = v3;
}

void sub_1BA285220()
{
  if (qword_1EDC5E0F0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC5E0F8;
  v1 = sub_1BA4A1318();
  v3 = v2;

  qword_1EBBEF948 = v1;
  unk_1EBBEF950 = v3;
}

uint64_t sub_1BA285304()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EDC5E7C8 = result;
  unk_1EDC5E7D0 = v1;
  return result;
}

uint64_t sub_1BA2853B0()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EDC5E790 = result;
  unk_1EDC5E798 = v1;
  return result;
}

uint64_t sub_1BA28545C()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EDC5E758 = result;
  unk_1EDC5E760 = v1;
  return result;
}

uint64_t sub_1BA285508()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEF958 = result;
  unk_1EBBEF960 = v1;
  return result;
}

uint64_t sub_1BA2855B4()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEF968 = result;
  unk_1EBBEF970 = v1;
  return result;
}

uint64_t sub_1BA285660()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEF978 = result;
  unk_1EBBEF980 = v1;
  return result;
}

uint64_t sub_1BA28570C()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEF988 = result;
  unk_1EBBEF990 = v1;
  return result;
}

uint64_t sub_1BA2857B8()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEF998 = result;
  unk_1EBBEF9A0 = v1;
  return result;
}

uint64_t sub_1BA285864()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEF9A8 = result;
  unk_1EBBEF9B0 = v1;
  return result;
}

uint64_t sub_1BA285910()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEF9B8 = result;
  unk_1EBBEF9C0 = v1;
  return result;
}

uint64_t sub_1BA2859BC()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEF9C8 = result;
  unk_1EBBEF9D0 = v1;
  return result;
}

uint64_t sub_1BA285A68()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEF9D8 = result;
  unk_1EBBEF9E0 = v1;
  return result;
}

uint64_t sub_1BA285B14()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEF9E8 = result;
  unk_1EBBEF9F0 = v1;
  return result;
}

uint64_t sub_1BA285BC0()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEF9F8 = result;
  unk_1EBBEFA00 = v1;
  return result;
}

id sub_1BA285C7C()
{
  _s31ClassForLocatingCloudSyncBundleCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EDC5E0F8 = result;
  return result;
}

unint64_t sub_1BA285CD8()
{
  result = qword_1EBBEFA20;
  if (!qword_1EBBEFA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEFA20);
  }

  return result;
}

unint64_t sub_1BA285D74()
{
  result = qword_1EBBEFA28;
  if (!qword_1EBBEFA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEFA28);
  }

  return result;
}

unint64_t sub_1BA285DCC()
{
  result = qword_1EBBEFA30;
  if (!qword_1EBBEFA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEFA30);
  }

  return result;
}

unint64_t sub_1BA285E24()
{
  result = qword_1EBBEFA38;
  if (!qword_1EBBEFA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEFA38);
  }

  return result;
}

uint64_t sub_1BA285E78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1BA4A8338() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_1BA4A8338() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1BA4A8338();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1BA285F8C()
{
  v1 = *v0;
  v2 = v1 >> 6;
  if (v1 >> 6 <= 1)
  {
    if (v2)
    {
      if (qword_1EDC5E100 == -1)
      {
        return sub_1BA4A1318();
      }
    }

    else if (qword_1EDC5E100 == -1)
    {
      return sub_1BA4A1318();
    }

    goto LABEL_27;
  }

  if (v2 == 3)
  {
    if (v1 == 192)
    {
      if (qword_1EDC5E100 == -1)
      {
        return sub_1BA4A1318();
      }
    }

    else if (v1 == 193)
    {
      if (qword_1EDC5E100 == -1)
      {
        return sub_1BA4A1318();
      }
    }

    else if (qword_1EDC5E100 == -1)
    {
      return sub_1BA4A1318();
    }

    goto LABEL_27;
  }

  if (*v0 <= 0x81u)
  {
    if (v1 == 128)
    {
      if (qword_1EDC5E100 == -1)
      {
        return sub_1BA4A1318();
      }
    }

    else if (qword_1EDC5E100 == -1)
    {
      return sub_1BA4A1318();
    }

    goto LABEL_27;
  }

  if (v1 == 130)
  {
    if (qword_1EDC5E100 == -1)
    {
      return sub_1BA4A1318();
    }

    goto LABEL_27;
  }

  if (qword_1EDC5E100 != -1)
  {
LABEL_27:
    swift_once();
  }

  return sub_1BA4A1318();
}

double sub_1BA286428@<D0>(uint64_t a1@<X8>)
{
  if ((*v1 & 0xC0) == 0x40 && (*v1 & 0x3F) == 2)
  {
    v3 = [objc_opt_self() configurationWithScale_];
    v4 = sub_1BA4A6758();
    v5 = [objc_opt_self() systemImageNamed:v4 withConfiguration:v3];

    v6 = [objc_opt_self() systemGrayColor];
    *a1 = v5;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    *(a1 + 24) = 1;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 1;
    *(a1 + 56) = 0;
    *(a1 + 64) = 1;
  }

  else
  {
    *a1 = 1;
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 49) = 0u;
  }

  return result;
}

uint64_t sub_1BA286570()
{
  if (*v0 <= 1u)
  {
    if (*v0)
    {
      if (qword_1EDC5E100 == -1)
      {
        return sub_1BA4A1318();
      }
    }

    else if (qword_1EDC5E100 == -1)
    {
      return sub_1BA4A1318();
    }

    goto LABEL_12;
  }

  if (*v0 == 2)
  {
    if (qword_1EDC5E100 == -1)
    {
      return sub_1BA4A1318();
    }

    goto LABEL_12;
  }

  if (qword_1EDC5E100 != -1)
  {
LABEL_12:
    swift_once();
  }

  return sub_1BA4A1318();
}

uint64_t sub_1BA2867D8()
{
  if (!*v0)
  {
    if (qword_1EDC5E100 == -1)
    {
      return sub_1BA4A1318();
    }

    goto LABEL_9;
  }

  if (*v0 == 1)
  {
    if (qword_1EDC5E100 == -1)
    {
      return sub_1BA4A1318();
    }

    goto LABEL_9;
  }

  if (qword_1EDC5E100 != -1)
  {
LABEL_9:
    swift_once();
  }

  return sub_1BA4A1318();
}

void sub_1BA28691C(uint64_t a1@<X8>)
{
  if (*v1 == 2)
  {
    v3 = [objc_opt_self() configurationWithScale_];
    v4 = sub_1BA4A6758();
    v5 = [objc_opt_self() systemImageNamed:v4 withConfiguration:v3];

    v6 = [objc_opt_self() systemGrayColor];
    v7 = 1;
    *a1 = v5;
    *(a1 + 24) = 1;
    *(a1 + 48) = 1;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    *a1 = 1;
    *(a1 + 24) = 0;
    *(a1 + 48) = 0;
  }

  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  *(a1 + 56) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = v7;
}

HealthExperienceUI::SummarySharingSelectionSuggestedLabsCategory_optional __swiftcall SummarySharingSelectionSuggestedLabsCategory.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

HealthExperienceUI::SummarySharingSelectionSuggestedMedicationsCategory_optional __swiftcall SummarySharingSelectionSuggestedMedicationsCategory.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

void sub_1BA286AD0()
{
  sub_1BA28A1BC(0, &unk_1EDC5DC40, &type metadata for SummarySharingSelectionSuggestedCategory, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BA4B9FD0;
  *(v0 + 32) = -32384;
  *(v0 + 34) = -126;
  v16 = v0;
  v1 = [objc_opt_self() sharedBehavior];
  if (!v1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v2 = v1;
  v3 = [v1 features];

  if (!v3)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v4 = [v3 chamomile];

  if (v4)
  {
    v5 = sub_1BA27F5FC(1, 4, 1, v0);
    *(v5 + 2) = 4;
    v5[35] = -62;
    v16 = v5;
  }

  sub_1B9FE242C(&unk_1F37FC018);
  v6 = v16;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1BA27F5FC(0, *(v16 + 16) + 1, 1, v16);
  }

  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  v9 = v7 >> 1;
  v10 = v8 + 1;
  if (v7 >> 1 <= v8)
  {
    v6 = sub_1BA27F5FC((v7 > 1), v8 + 1, 1, v6);
    v7 = *(v6 + 3);
    v9 = v7 >> 1;
  }

  *(v6 + 2) = v10;
  v6[v8 + 32] = 0;
  v11 = v8 + 2;
  if (v9 < (v8 + 2))
  {
    v6 = sub_1BA27F5FC((v7 > 1), v8 + 2, 1, v6);
    v7 = *(v6 + 3);
    v9 = v7 >> 1;
  }

  *(v6 + 2) = v11;
  v6[v10 + 32] = 1;
  v12 = v8 + 3;
  if (v9 < (v8 + 3))
  {
    v6 = sub_1BA27F5FC((v7 > 1), v8 + 3, 1, v6);
    v7 = *(v6 + 3);
    v9 = v7 >> 1;
  }

  *(v6 + 2) = v12;
  v6[v11 + 32] = 2;
  v13 = v8 + 4;
  if (v9 < (v8 + 4))
  {
    v6 = sub_1BA27F5FC((v7 > 1), v8 + 4, 1, v6);
    v7 = *(v6 + 3);
    v9 = v7 >> 1;
  }

  *(v6 + 2) = v13;
  v6[v12 + 32] = 3;
  v14 = v8 + 5;
  if (v9 < (v8 + 5))
  {
    v6 = sub_1BA27F5FC((v7 > 1), v8 + 5, 1, v6);
    v7 = *(v6 + 3);
    v9 = v7 >> 1;
  }

  *(v6 + 2) = v14;
  v6[v13 + 32] = 64;
  v15 = v8 + 6;
  if (v9 < (v8 + 6))
  {
    v6 = sub_1BA27F5FC((v7 > 1), v8 + 6, 1, v6);
    v7 = *(v6 + 3);
    v9 = v7 >> 1;
  }

  *(v6 + 2) = v15;
  v6[v14 + 32] = 65;
  if (v9 < (v8 + 7))
  {
    v6 = sub_1BA27F5FC((v7 > 1), v8 + 7, 1, v6);
  }

  *(v6 + 2) = v8 + 7;
  v6[v15 + 32] = 66;
}

uint64_t (*static SummarySharingSelectionSuggestedCategory.allCases.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EDC60598 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

void sub_1BA286EF8()
{
  sub_1BA28A1BC(0, &unk_1EDC5DC40, &type metadata for SummarySharingSelectionSuggestedCategory, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BA4B9FD0;
  *(v0 + 32) = -32384;
  *(v0 + 34) = -126;
  v1 = [objc_opt_self() sharedBehavior];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  v3 = [v1 features];

  if (!v3)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v4 = [v3 chamomile];

  if (v4)
  {
    v5 = sub_1BA27F5FC(1, 4, 1, v0);
    *(v5 + 2) = 4;
    v5[35] = -62;
  }

  sub_1B9FE242C(&unk_1F37FC930);
}

double sub_1BA28704C(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

double sub_1BA2870CC(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a3 = a1;

  return result;
}

uint64_t (*static SummarySharingSelectionSuggestedCategory.suggestedFlowCategoryOrder.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EBBE8700 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_1BA2871BC@<D0>(void *a1@<X3>, uint64_t *a2@<X4>, uint64_t *a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a4 = *a2;

  return result;
}

double sub_1BA287224(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = *a1;
  v9 = *a5;

  if (v9 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a6 = v8;

  return result;
}

uint64_t sub_1BA2872AC()
{
  v1 = *v0;
  v2 = v1 >> 6;
  if (v1 >> 6 <= 1)
  {
    if (v2)
    {
      if (qword_1EDC5E100 == -1)
      {
        return sub_1BA4A1318();
      }
    }

    else if (qword_1EDC5E100 == -1)
    {
      return sub_1BA4A1318();
    }

    goto LABEL_27;
  }

  if (v2 == 3)
  {
    if (v1 == 192)
    {
      if (qword_1EDC5E100 == -1)
      {
        return sub_1BA4A1318();
      }
    }

    else if (v1 == 193)
    {
      if (qword_1EDC5E100 == -1)
      {
        return sub_1BA4A1318();
      }
    }

    else if (qword_1EDC5E100 == -1)
    {
      return sub_1BA4A1318();
    }

    goto LABEL_27;
  }

  if (*v0 <= 0x81u)
  {
    if (v1 == 128)
    {
      if (qword_1EDC5E100 == -1)
      {
        return sub_1BA4A1318();
      }
    }

    else if (qword_1EDC5E100 == -1)
    {
      return sub_1BA4A1318();
    }

    goto LABEL_27;
  }

  if (v1 == 130)
  {
    if (qword_1EDC5E100 == -1)
    {
      return sub_1BA4A1318();
    }

    goto LABEL_27;
  }

  if (qword_1EDC5E100 != -1)
  {
LABEL_27:
    swift_once();
  }

  return sub_1BA4A1318();
}

void sub_1BA28772C()
{
  v1 = *v0;
  v2 = v1 >> 6;
  if (v1 >> 6 <= 1)
  {
    if (v2)
    {
      goto LABEL_14;
    }

    if (qword_1EBBE83F8 != -1)
    {
      swift_once();
    }

    v3 = qword_1EBC095A8;
    v4 = sub_1BA4A6758();
    v5 = [objc_opt_self() imageNamed:v4 inBundle:v3];

    if (v5)
    {
      return;
    }

    __break(1u);
  }

  if (v2 != 3)
  {
    goto LABEL_18;
  }

  if (v1 == 192)
  {
LABEL_29:
    if (qword_1EBBE83F8 != -1)
    {
      swift_once();
    }

    v18 = qword_1EBC095A8;
    v19 = sub_1BA4A6758();
    v20 = [objc_opt_self() imageNamed:v19 inBundle:v18];

    if (v20)
    {
      return;
    }

    __break(1u);
    goto LABEL_33;
  }

  if (v1 != 193)
  {
LABEL_33:
    if (qword_1EBBE83F8 != -1)
    {
      swift_once();
    }

    v21 = qword_1EBC095A8;
    v22 = sub_1BA4A6758();
    v23 = [objc_opt_self() imageNamed:v22 inBundle:v21];

    if (v23)
    {
      return;
    }

    __break(1u);
    goto LABEL_37;
  }

  if (qword_1EBBE83F8 != -1)
  {
    swift_once();
  }

  v6 = qword_1EBC095A8;
  v7 = sub_1BA4A6758();
  v8 = [objc_opt_self() imageNamed:v7 inBundle:v6];

  if (v8)
  {
    return;
  }

  __break(1u);
LABEL_14:
  if (qword_1EBBE83F8 != -1)
  {
    swift_once();
  }

  v9 = qword_1EBC095A8;
  v10 = sub_1BA4A6758();
  v11 = [objc_opt_self() imageNamed:v10 inBundle:v9];

  if (v11)
  {
    return;
  }

  __break(1u);
LABEL_18:
  if (v1 <= 129)
  {
    if (v1 != 128)
    {
LABEL_37:
      if (qword_1EBBE83F8 != -1)
      {
        swift_once();
      }

      v24 = qword_1EBC095A8;
      v25 = sub_1BA4A6758();
      v26 = [objc_opt_self() imageNamed:v25 inBundle:v24];

      if (!v26)
      {
        __break(1u);
        goto LABEL_41;
      }

      return;
    }

    if (qword_1EBBE83F8 != -1)
    {
      swift_once();
    }

    v12 = qword_1EBC095A8;
    v13 = sub_1BA4A6758();
    v14 = [objc_opt_self() imageNamed:v13 inBundle:v12];

    if (v14)
    {
      return;
    }

    __break(1u);
  }

  if (v1 != 130)
  {
LABEL_41:
    if (qword_1EBBE83F8 != -1)
    {
      swift_once();
    }

    v27 = qword_1EBC095A8;
    v28 = sub_1BA4A6758();
    v29 = [objc_opt_self() imageNamed:v28 inBundle:v27];

    if (!v29)
    {
      __break(1u);
    }

    return;
  }

  if (qword_1EBBE83F8 != -1)
  {
    swift_once();
  }

  v15 = qword_1EBC095A8;
  v16 = sub_1BA4A6758();
  v17 = [objc_opt_self() imageNamed:v16 inBundle:v15];

  if (!v17)
  {
    __break(1u);
    goto LABEL_29;
  }
}

char *SummarySharingSelectionSuggestedCategory.suggestedDataTypes.getter()
{
  v1 = *v0;
  if (v1 >> 6 < 2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (v1 >> 6 != 3)
  {
    return *(&off_1E7EECF20 + (v1 ^ 0x1FFFFFFFFFFFFF80));
  }

  if (v1 == 192)
  {
    sub_1BA28A050(0, &unk_1EDC5DBA0, type metadata accessor for HKDisplayTypeIdentifier, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BA4B9FD0;
    *(inited + 32) = xmmword_1BA4CAE70;
    *(inited + 48) = 60;
    result = sub_1BA2808C8(1, 4, 1, inited);
    *(result + 2) = 4;
    *(result + 7) = 275;
  }

  else if (v1 == 193)
  {
    sub_1BA28A050(0, &unk_1EDC5DBA0, type metadata accessor for HKDisplayTypeIdentifier, MEMORY[0x1E69E6F90]);
    v3 = swift_initStackObject();
    *(v3 + 16) = xmmword_1BA4CAE10;
    *(v3 + 32) = xmmword_1BA4CAE20;
    *(v3 + 48) = xmmword_1BA4CAE30;
    *(v3 + 64) = xmmword_1BA4CAE40;
    *(v3 + 80) = xmmword_1BA4CAE50;
    *(v3 + 96) = xmmword_1BA4CAE60;
    result = sub_1BA2808C8(1, 11, 1, v3);
    *(result + 2) = 11;
    *(result + 14) = 275;
  }

  else
  {
    return &unk_1F37FD008;
  }

  return result;
}

uint64_t sub_1BA287EFC(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *v2;
  if (v4 != 192)
  {
    if (a1 >> 62)
    {
      goto LABEL_76;
    }

    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_9;
    }

    return result;
  }

  result = [objc_opt_self() sharedInstanceForHealthStore_];
  if (!result)
  {
    return result;
  }

  v6 = result;
  v7 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  result = [v6 displayTypeWithIdentifier_];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = [result objectType];

  v41 = v7;
  v42 = v6;
  if (!(v3 >> 62))
  {
    v10 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_6;
    }

LABEL_79:

    return 0;
  }

  v10 = sub_1BA4A7CC8();
  if (!v10)
  {
    goto LABEL_79;
  }

LABEL_6:
  v11 = 0;
  v12 = v3 & 0xC000000000000001;
  v13 = v3 & 0xFFFFFFFFFFFFFF8;
  v49 = v10;
  v51 = v3 + 32;
  v43 = v3;
  v45 = v3 & 0xFFFFFFFFFFFFFF8;
  v47 = v3 & 0xC000000000000001;
  while (1)
  {
    if (v12)
    {
      v30 = MEMORY[0x1BFAF2860](v11, v3);
    }

    else
    {
      if (v11 >= *(v13 + 16))
      {
        goto LABEL_73;
      }

      v30 = *(v51 + 8 * v11);
    }

    v31 = v30;
    v18 = __OFADD__(v11++, 1);
    if (v18)
    {
      break;
    }

    v32 = sub_1BA4A2758();
    v33 = v32;
    if ((v32 & 0xC000000000000001) != 0)
    {
      v34 = v9;
      v4 = sub_1BA4A7D08();

      if (v4)
      {

        v31 = v42;
        goto LABEL_70;
      }

      if (v11 == v10)
      {
        goto LABEL_79;
      }
    }

    else
    {
      if (*(v32 + 16))
      {
        v4 = sub_1B9F0ADF8(0, &qword_1EDC6E920, 0x1E696C2E0);
        v35 = sub_1BA4A7788();
        v36 = -1 << *(v33 + 32);
        v37 = v35 & ~v36;
        if ((*(v33 + 56 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37))
        {
          v38 = ~v36;
          while (1)
          {
            v39 = *(*(v33 + 48) + 8 * v37);
            v40 = sub_1BA4A7798();

            if (v40)
            {
              break;
            }

            v37 = (v37 + 1) & v38;
            if (((*(v33 + 56 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
            {
              goto LABEL_51;
            }
          }

LABEL_70:

          return 1;
        }
      }

LABEL_51:

      v3 = v43;
      v13 = v45;
      v12 = v47;
      v10 = v49;
      if (v11 == v49)
      {
        goto LABEL_79;
      }
    }
  }

  __break(1u);
LABEL_73:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    result = sub_1BA4A7CC8();
    if (!result)
    {
      return result;
    }

LABEL_9:
    v14 = 0;
    v15 = v4 >> 6;
    v50 = v3 & 0xFFFFFFFFFFFFFF8;
    v52 = v3 & 0xC000000000000001;
    v44 = v3;
    v46 = result;
    v48 = v3 + 32;
    while (1)
    {
      if (v52)
      {
        v16 = MEMORY[0x1BFAF2860](v14, v44);
      }

      else
      {
        if (v14 >= *(v50 + 16))
        {
          goto LABEL_75;
        }

        v16 = *(v48 + 8 * v14);
      }

      v17 = v16;
      v18 = __OFADD__(v14++, 1);
      if (v18)
      {
        break;
      }

      v19 = sub_1BA4A2768();
      if (v4 >> 6 > 1)
      {
        if (v15 == 3)
        {
          if (v4 == 194)
          {
            v20 = sub_1BA4A2218();
          }

          else
          {
            v20 = sub_1BA4A2268();
          }
        }

        else if (v4 > 129)
        {
          if (v4 == 130)
          {
            v20 = sub_1BA4A2238();
          }

          else
          {
            v20 = sub_1BA4A2278();
          }
        }

        else if (v4 == 128)
        {
          v20 = sub_1BA4A2248();
        }

        else
        {
          v20 = sub_1BA4A2258();
        }
      }

      else if (v15)
      {
        if ((v4 & 0x3F) != 0)
        {
          if ((v4 & 0x3F) == 1)
          {
            v20 = sub_1BA4A21C8();
          }

          else
          {
            v20 = sub_1BA4A21A8();
          }
        }

        else
        {
          v20 = sub_1BA4A21B8();
        }
      }

      else if (v4 > 1)
      {
        if (v4 == 2)
        {
          v20 = sub_1BA4A1FC8();
        }

        else
        {
          v20 = sub_1BA4A1F98();
        }
      }

      else if (v4)
      {
        v20 = sub_1BA4A1FA8();
      }

      else
      {
        v20 = sub_1BA4A1FD8();
      }

      v22 = v20;
      v23 = v21;
      if (*(v19 + 16))
      {
        sub_1BA4A8488();
        sub_1BA4A68C8();
        v24 = sub_1BA4A84D8();
        v3 = v19 + 56;
        v25 = -1 << *(v19 + 32);
        v26 = v24 & ~v25;
        if ((*(v19 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
        {
          v27 = ~v25;
          while (1)
          {
            v28 = (*(v19 + 48) + 16 * v26);
            v29 = *v28 == v22 && v28[1] == v23;
            if (v29 || (sub_1BA4A8338() & 1) != 0)
            {
              break;
            }

            v26 = (v26 + 1) & v27;
            if (((*(v3 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
            {
              goto LABEL_10;
            }
          }

          return 1;
        }
      }

LABEL_10:

      if (v14 == v46)
      {
        return 0;
      }
    }
  }
}

uint64_t SummarySharingSelectionSuggestedCategory.keyword.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = v2 >> 6;
  if (v2 >> 6 > 1)
  {
    if (v3 == 3)
    {
      if (v2 == 192)
      {
        return sub_1BA4A2228();
      }

      else if (v2 == 193)
      {
        return sub_1BA4A2268();
      }

      else
      {
        return sub_1BA4A2218();
      }
    }

    else if (*v1 > 0x81u)
    {
      if (v2 == 130)
      {
        return sub_1BA4A2238();
      }

      else
      {
        return sub_1BA4A2278();
      }
    }

    else if (v2 == 128)
    {
      return sub_1BA4A2248();
    }

    else
    {
      return sub_1BA4A2258();
    }
  }

  else if (v3)
  {
    v5 = v2 & 0x3F;
    if (v5)
    {
      if (v5 == 1)
      {
        return sub_1BA4A21C8();
      }

      else
      {
        return sub_1BA4A21A8();
      }
    }

    else
    {
      return sub_1BA4A21B8();
    }
  }

  else if (*v1 > 1u)
  {
    if (v2 == 2)
    {
      return sub_1BA4A1FC8();
    }

    else
    {
      return sub_1BA4A1F98();
    }
  }

  else if (*v1)
  {
    return sub_1BA4A1FA8();
  }

  else
  {
    return sub_1BA4A1FD8();
  }
}

uint64_t SummarySharingSelectionSuggestedCategory.hash(into:)()
{
  v1 = *v0;
  v2 = v1 >> 6;
  if (v1 >> 6 > 1)
  {
    if (v2 == 3)
    {
      v1 = 0x80504u >> (8 * (v1 + 64));
    }

    else
    {
      LOBYTE(v1) = v1 ^ 0x80;
    }
  }

  else
  {
    if (v2)
    {
      LOBYTE(v1) = v1 & 0x3F;
      v3 = 7;
    }

    else
    {
      v3 = 6;
    }

    MEMORY[0x1BFAF2ED0](v3);
  }

  return MEMORY[0x1BFAF2ED0](v1);
}

uint64_t SummarySharingSelectionSuggestedCategory.hashValue.getter()
{
  v1 = *v0;
  sub_1BA4A8488();
  v2 = v1 >> 6;
  if (v1 >> 6 > 1)
  {
    if (v2 == 3)
    {
      v1 = 0x80504u >> (8 * (v1 + 64));
    }

    else
    {
      LOBYTE(v1) = v1 ^ 0x80;
    }
  }

  else
  {
    if (v2)
    {
      LOBYTE(v1) = v1 & 0x3F;
      v3 = 7;
    }

    else
    {
      v3 = 6;
    }

    MEMORY[0x1BFAF2ED0](v3);
  }

  MEMORY[0x1BFAF2ED0](v1);
  return sub_1BA4A84D8();
}

double sub_1BA2885E4@<D0>(void *a1@<X8>)
{
  if (qword_1EDC60598 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = off_1EDC605A0;

  return result;
}

uint64_t sub_1BA288670(uint64_t a1)
{
  sub_1BA4A8488();
  SummarySharingSelectionSuggestedCategory.hash(into:)();
  return sub_1BA4A84D8();
}

uint64_t static SummarySharingSelectionSuggestedCategory.keywords(for:)(void *a1)
{
  v1 = sub_1BA288890([a1 displayTypeIdentifier]);
  v2 = *(v1 + 16);
  if (v2)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1B9F1C360(0, v2, 0);
    v3 = 32;
    v4 = v16;
    do
    {
      v5 = *(v1 + v3);
      v6 = v5 >> 6;
      if (v5 >> 6 > 1)
      {
        if (v6 == 3)
        {
          if (v5 == 192)
          {
            v7 = sub_1BA4A2228();
          }

          else if (v5 == 193)
          {
            v7 = sub_1BA4A2268();
          }

          else
          {
            v7 = sub_1BA4A2218();
          }
        }

        else if (*(v1 + v3) > 0x81u)
        {
          if (v5 == 130)
          {
            v7 = sub_1BA4A2238();
          }

          else
          {
            v7 = sub_1BA4A2278();
          }
        }

        else if (v5 == 128)
        {
          v7 = sub_1BA4A2248();
        }

        else
        {
          v7 = sub_1BA4A2258();
        }
      }

      else if (v6)
      {
        v9 = v5 & 0x3F;
        if (v9)
        {
          if (v9 == 1)
          {
            v7 = sub_1BA4A21C8();
          }

          else
          {
            v7 = sub_1BA4A21A8();
          }
        }

        else
        {
          v7 = sub_1BA4A21B8();
        }
      }

      else if (*(v1 + v3) > 1u)
      {
        if (v5 == 2)
        {
          v7 = sub_1BA4A1FC8();
        }

        else
        {
          v7 = sub_1BA4A1F98();
        }
      }

      else if (*(v1 + v3))
      {
        v7 = sub_1BA4A1FA8();
      }

      else
      {
        v7 = sub_1BA4A1FD8();
      }

      v11 = *(v16 + 16);
      v10 = *(v16 + 24);
      if (v11 >= v10 >> 1)
      {
        v13 = v7;
        v14 = v8;
        sub_1B9F1C360((v10 > 1), v11 + 1, 1);
        v8 = v14;
        v7 = v13;
      }

      *(v16 + 16) = v11 + 1;
      v12 = v16 + 16 * v11;
      *(v12 + 32) = v7;
      *(v12 + 40) = v8;
      ++v3;
      --v2;
    }

    while (v2);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v4;
}

uint64_t sub_1BA288890(uint64_t a1)
{
  if (qword_1EDC60598 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(off_1EDC605A0 + 2);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = off_1EDC605A0 + 32;

  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  do
  {
    v6 = v3[v4];
    v7 = SummarySharingSelectionSuggestedCategory.suggestedDataTypes.getter();
    v8 = *(v7 + 2);
    v9 = 32;
    do
    {
      if (!v8)
      {

        goto LABEL_6;
      }

      v10 = *&v7[v9];
      v9 += 8;
      --v8;
    }

    while (v10 != a1);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1BA066CA4(0, *(v5 + 16) + 1, 1);
    }

    v12 = *(v5 + 16);
    v11 = *(v5 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_1BA066CA4((v11 > 1), v12 + 1, 1);
    }

    *(v5 + 16) = v12 + 1;
    *(v5 + v12 + 32) = v6;
LABEL_6:
    ++v4;
  }

  while (v4 != v2);

  return v5;
}

uint64_t sub_1BA288A14@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1BA28A050(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v18[-v6];
  v8 = *a1;
  sub_1BA4A27B8();
  sub_1BA28A050(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v9 = sub_1BA4A1C68();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BA4B5480;
  v13 = (*(v10 + 104))(v12 + v11, *MEMORY[0x1E69A3B68], v9);
  v18[15] = v8;
  SummarySharingSelectionSuggestedCategory.keyword.getter(v13);
  v14 = sub_1BA4A0FA8();
  (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  sub_1BA28A1BC(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58], MEMORY[0x1E69E6F90]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BA4B5460;
  *(v15 + 32) = sub_1BA4A1D78();
  *(v15 + 40) = 0;
  v16 = sub_1BA4A25F8();

  result = sub_1B9F1C1B0(v7);
  *a2 = v16;
  return result;
}

void sub_1BA288CA4(void *a2@<X1>, uint64_t *a3@<X8>)
{
  v28[1] = *MEMORY[0x1E69E9840];
  sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
  v4 = sub_1BA4A6AE8();
  v5 = objc_opt_self();
  v6 = [v5 orPredicateWithSubpredicates_];

  sub_1BA4A27B8();
  sub_1BA4A21D8();
  v7 = sub_1BA4A2628();

  sub_1BA28A1BC(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BA4B7510;
  *(v8 + 32) = v6;
  *(v8 + 40) = v7;
  v9 = v6;
  v10 = v7;
  v11 = sub_1BA4A6AE8();

  v12 = [v5 andPredicateWithSubpredicates_];

  v13 = sub_1BA4A26C8();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1BA4B5470;
  v15 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v16 = sub_1BA4A6758();
  v17 = [v15 initWithKey:v16 ascending:0];

  *(v14 + 32) = v17;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0, 0x1E696AEB0);
  v18 = sub_1BA4A6AE8();

  [v13 setSortDescriptors_];

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v19 = v13;
  v20 = sub_1BA4A1B68();
  v21 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v19 managedObjectContext:v20 sectionNameKeyPath:0 cacheName:0];

  v28[0] = 0;
  if ([v21 performFetch_])
  {
    v22 = v28[0];
    v23 = [v21 fetchedObjects];
    if (v23)
    {
      v24 = v23;
      v25 = sub_1BA4A6B08();

      *a3 = v25;
    }

    else
    {

      *a3 = 0;
    }
  }

  else
  {
    v26 = v28[0];
    sub_1BA4A1488();

    swift_willThrow();
  }
}

void sub_1BA28903C(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  if (qword_1EDC60598 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = off_1EDC605A0;
  v7 = *(off_1EDC605A0 + 2);
  if (v7)
  {
    v13 = a3;

    v8 = MEMORY[0x1E69E7CC0];
    v9 = 32;
    v14 = a2;
    do
    {
      v12 = v6[v9];
      if (sub_1BA287EFC(v5, a2))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1BA066CA4(0, *(v8 + 16) + 1, 1);
        }

        v11 = *(v8 + 16);
        v10 = *(v8 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1BA066CA4((v10 > 1), v11 + 1, 1);
        }

        *(v8 + 16) = v11 + 1;
        *(v8 + v11 + 32) = v12;
        a2 = v14;
      }

      ++v9;
      --v7;
    }

    while (v7);

    a3 = v13;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  *a3 = v8;
}

BOOL _s18HealthExperienceUI40SummarySharingSelectionSuggestedCategoryO2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 6;
  if (v2 >> 6 > 1)
  {
    if (v4 == 3)
    {
      if (v2 == 192)
      {
        if (v3 == 192)
        {
          return 1;
        }
      }

      else if (v2 == 193)
      {
        if (v3 == 193)
        {
          return 1;
        }
      }

      else if (v3 == 194)
      {
        return 1;
      }
    }

    else if (*a1 > 0x81u)
    {
      if (v2 == 130)
      {
        if (v3 == 130)
        {
          return 1;
        }
      }

      else if (v3 == 131)
      {
        return 1;
      }
    }

    else if (v2 == 128)
    {
      if (v3 == 128)
      {
        return 1;
      }
    }

    else if (v3 == 129)
    {
      return 1;
    }
  }

  else if (v4)
  {
    if ((v3 & 0xC0) == 0x40)
    {
      return ((v3 ^ v2) & 0x3F) == 0;
    }
  }

  else if (v3 <= 0x3F)
  {
    return v2 == v3;
  }

  return 0;
}

unint64_t sub_1BA2892B4()
{
  result = qword_1EBBEFA48;
  if (!qword_1EBBEFA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEFA48);
  }

  return result;
}

unint64_t sub_1BA289350()
{
  result = qword_1EBBEFA60;
  if (!qword_1EBBEFA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEFA60);
  }

  return result;
}

uint64_t sub_1BA2893E8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1BA28A1BC(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BA289488()
{
  result = qword_1EBBEFA80;
  if (!qword_1EBBEFA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEFA80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SummarySharingSelectionSuggestedCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3D)
  {
    goto LABEL_17;
  }

  if (a2 + 195 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 195) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 195;
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

      return (*a1 | (v4 << 8)) - 195;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 195;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x3C | (*a1 >> 6)) ^ 0x3F;
  if (v6 >= 0x3C)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for SummarySharingSelectionSuggestedCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 195 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 195) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x3D)
  {
    v4 = 0;
  }

  if (a2 > 0x3C)
  {
    v5 = ((a2 - 61) >> 8) + 1;
    *result = a2 - 61;
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
    *result = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1BA289654(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1;
  v3 = v1 >> 6;
  v4 = (v1 & 3 | (4 * (v1 >> 6))) - 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

_BYTE *sub_1BA289688(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 3 | (a2 << 6);
  }

  else
  {
    *result = ((a2 - 2) & 3 | (((a2 - 2) >> 2) << 6)) ^ 0x80;
  }

  return result;
}

uint64_t sub_1BA2896CC(void *a1, uint64_t a2)
{
  v36 = a2;
  v43 = a1;
  sub_1BA289CD4(0);
  v34 = *(v2 - 8);
  v35 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA289DAC(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA289F0C(0);
  v37 = *(v12 - 8);
  v38 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA289F74(0);
  v41 = v16;
  v39 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA28A0B4(0);
  v42 = v20;
  v40 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC60598 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *&v44[0] = off_1EDC605A0;
  sub_1BA28A1BC(0, &qword_1EBBE9CE8, &type metadata for SummarySharingSelectionSuggestedCategory, MEMORY[0x1E69E62F8]);
  sub_1BA2893E8(&qword_1EBBEFA90, &qword_1EBBE9CE8, &type metadata for SummarySharingSelectionSuggestedCategory, MEMORY[0x1E69E6328]);
  sub_1BA4A6A18();
  sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
  v24 = v35;
  sub_1BA4A4C68();
  (*(v34 + 8))(v5, v24);
  sub_1BA4A4C88();
  (*(v8 + 8))(v11, v7);
  sub_1B9F0A534(v36, v44);
  v25 = swift_allocObject();
  sub_1B9F25598(v44, v25 + 16);
  sub_1BA28A050(0, &qword_1EBBEA8F0, MEMORY[0x1E69A3DD0], MEMORY[0x1E69E62F8]);
  sub_1BA289EC4(&qword_1EBBEFAB8, sub_1BA289F0C, MEMORY[0x1E695C0C8]);
  v26 = v38;
  sub_1BA4A4FD8();

  (*(v37 + 8))(v15, v26);
  v27 = swift_allocObject();
  v28 = v43;
  *(v27 + 16) = v43;
  sub_1BA289EC4(&qword_1EBBEFAC8, sub_1BA289F74, MEMORY[0x1E695BCE0]);
  v29 = v28;
  v30 = v41;
  sub_1BA4A5058();

  (*(v39 + 8))(v19, v30);
  sub_1BA289EC4(&qword_1EBBEFAD0, sub_1BA28A0B4, MEMORY[0x1E695BE28]);
  v31 = v42;
  v32 = sub_1BA4A4F98();
  (*(v40 + 8))(v23, v31);
  return v32;
}

void sub_1BA289CD4(uint64_t a1)
{
  if (!qword_1EBBEFA88)
  {
    sub_1BA28A1BC(255, &qword_1EBBE9CE8, &type metadata for SummarySharingSelectionSuggestedCategory, MEMORY[0x1E69E62F8]);
    sub_1BA2893E8(&qword_1EBBEFA90, &qword_1EBBE9CE8, &type metadata for SummarySharingSelectionSuggestedCategory, MEMORY[0x1E69E6328]);
    v1 = sub_1BA4A4C98();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEFA88);
    }
  }
}

void sub_1BA289DAC(uint64_t a1)
{
  if (!qword_1EBBEFA98)
  {
    sub_1BA289E5C(255);
    sub_1BA289EC4(&qword_1EBBEFAA0, sub_1BA289E5C, MEMORY[0x1E69E6328]);
    v1 = sub_1BA4A4C98();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEFA98);
    }
  }
}

void sub_1BA289E5C(uint64_t a1)
{
  if (!qword_1EBBE9A68)
  {
    sub_1B9F0ADF8(255, &qword_1EDC6B630, 0x1E696AE18);
    v1 = sub_1BA4A6BF8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBE9A68);
    }
  }
}

uint64_t sub_1BA289EC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BA289F0C(uint64_t a1)
{
  if (!qword_1EBBEFAA8)
  {
    sub_1BA289E5C(255);
    v1 = sub_1BA4A84F8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEFAA8);
    }
  }
}

void sub_1BA289F74(uint64_t a1)
{
  if (!qword_1EBBEFAB0)
  {
    sub_1BA289F0C(255);
    sub_1BA28A050(255, &qword_1EBBEA8F0, MEMORY[0x1E69A3DD0], MEMORY[0x1E69E62F8]);
    sub_1BA289EC4(&qword_1EBBEFAB8, sub_1BA289F0C, MEMORY[0x1E695C0C8]);
    v1 = sub_1BA4A4B18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEFAB0);
    }
  }
}

void sub_1BA28A050(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BA28A0B4(uint64_t a1)
{
  if (!qword_1EBBEFAC0)
  {
    sub_1BA289F74(255);
    sub_1BA28A1BC(255, &qword_1EBBE9CE8, &type metadata for SummarySharingSelectionSuggestedCategory, MEMORY[0x1E69E62F8]);
    sub_1BA289EC4(&qword_1EBBEFAC8, sub_1BA289F74, MEMORY[0x1E695BCE0]);
    v1 = sub_1BA4A4C08();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEFAC0);
    }
  }
}

void sub_1BA28A1BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t SearchCoordinator.__allocating_init(healthExperienceStore:healthStore:enhancedSearchResultProvider:)(void *a1, void *a2, __int128 *a3)
{
  v4 = sub_1B9F146F0(a1, a2, a3);

  return v4;
}

uint64_t SearchCoordinator.__allocating_init(healthExperienceStore:healthStore:injectedEnhancedSearchResultProvider:injectedKeywordSearchResultProvider:injectedDirectSearchResultProvider:)(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  sub_1B9F0A534(a1, v26);
  if (*(a3 + 24))
  {
    sub_1B9F0A534(a3, v24);
  }

  else
  {
    v10 = *(a3 + 16);
    v24[0] = *a3;
    v24[1] = v10;
    v25 = *(a3 + 32);
  }

  sub_1B9F0A534(a4, v23);
  sub_1B9F0A534(a5, v20);
  v11 = v21;
  v12 = v22;
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
  v14 = MEMORY[0x1EEE9AC00](v13, v13);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v14);
  v18 = sub_1BA28C63C(v26, v24, v23, v16, v11, v12);

  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a4);
  if (*(a3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(a3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return v18;
}

double SearchCoordinator.search(_:enhanced:actionHandler:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  sub_1BA28CBC0(0, &qword_1EDC5E5E0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v21 - v14;
  if (*(v5 + 176))
  {

    sub_1BA4A6C98();
  }

  v16 = sub_1BA4A6C88();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  sub_1BA4A6C68();

  v17 = sub_1BA4A6C58();
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  *(v18 + 16) = v17;
  *(v18 + 24) = v19;
  *(v18 + 32) = a3 & 1;
  *(v18 + 40) = v6;
  *(v18 + 48) = a1;
  *(v18 + 56) = a2;
  *(v18 + 64) = a4;
  *(v18 + 72) = a5;
  *(v6 + 176) = sub_1BA0BF220(0, 0, v15, &unk_1BA4CB1B8, v18);

  return result;
}

uint64_t sub_1BA28A5B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = a8;
  *(v8 + 56) = v13;
  *(v8 + 32) = a6;
  *(v8 + 40) = a7;
  *(v8 + 120) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a5;
  *(v8 + 64) = sub_1BA4A6C68();
  *(v8 + 72) = sub_1BA4A6C58();
  v10 = sub_1BA4A6C28();
  *(v8 + 80) = v10;
  *(v8 + 88) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1BA28A664, v10, v9);
}

uint64_t sub_1BA28A664()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 120);
  v5 = type metadata accessor for SearchResultUpdate(0);
  v10 = *(v0 + 40);
  *(v0 + 96) = sub_1BA4A6C58();
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  *(v6 + 32) = v2;
  *(v6 + 40) = v10;
  *(v6 + 56) = v1;
  v7 = swift_task_alloc();
  *(v0 + 112) = v7;
  *v7 = v0;
  v7[1] = sub_1BA28A7A4;
  v8 = *(v0 + 16);

  return MEMORY[0x1EEE6DBF8](v8, v5);
}

uint64_t sub_1BA28A7A4()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1BA28A904, v3, v2);
}

uint64_t sub_1BA28A904()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BA28A964(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 208) = a3;
  *(v8 + 16) = a2;
  *(v8 + 24) = a4;
  *(v8 + 64) = type metadata accessor for DirectSearchResult(0);
  *(v8 + 72) = swift_task_alloc();
  v9 = type metadata accessor for SearchResultUpdate(0);
  *(v8 + 80) = v9;
  *(v8 + 88) = *(v9 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 112) = swift_task_alloc();
  v10 = MEMORY[0x1E69E6720];
  sub_1BA28CBC0(0, &qword_1EBBEFAF0, type metadata accessor for SearchResultUpdate, MEMORY[0x1E69E6720]);
  *(v8 + 120) = swift_task_alloc();
  sub_1BA28CBC0(0, &qword_1EBBEFAF8, type metadata accessor for SearchResultUpdate, MEMORY[0x1E69E8590]);
  *(v8 + 128) = v11;
  *(v8 + 136) = *(v11 - 8);
  *(v8 + 144) = swift_task_alloc();
  sub_1BA28CBC0(0, &qword_1EDC5E5E0, MEMORY[0x1E69E85F0], v10);
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = sub_1BA4A6C68();
  *(v8 + 168) = sub_1BA4A6C58();
  v13 = sub_1BA4A6C28();
  *(v8 + 176) = v13;
  *(v8 + 184) = v12;

  return MEMORY[0x1EEE6DFA0](sub_1BA28ABDC, v13, v12);
}

uint64_t sub_1BA28ABDC()
{
  v1 = *(v0 + 152);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 208);
  v5 = *(v0 + 24);
  v6 = sub_1BA4A6C88();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = v4;
  *(v8 + 40) = v5;
  *(v8 + 48) = v3;
  *(v8 + 56) = v2;

  sub_1BA28BD20(v1, &unk_1BA4CB2E8, v8);
  sub_1BA28CCFC(v1);
  v7(v1, 1, 1, v6);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v5;
  v9[5] = v3;
  v9[6] = v2;

  sub_1BA28BD20(v1, &unk_1BA4CB2F8, v9);
  sub_1BA28CCFC(v1);
  sub_1BA4A6C38();
  *(v0 + 209) = 0;
  v10 = sub_1BA4A6C58();
  *(v0 + 192) = v10;
  v11 = swift_task_alloc();
  *(v0 + 200) = v11;
  *v11 = v0;
  v11[1] = sub_1BA28AE00;
  v12 = *(v0 + 120);
  v13 = *(v0 + 128);
  v14 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8A8](v12, v10, v14, v13);
}

uint64_t sub_1BA28AE00()
{
  v1 = *v0;

  v2 = *(v1 + 184);
  v3 = *(v1 + 176);

  return MEMORY[0x1EEE6DFA0](sub_1BA28AF44, v3, v2);
}

uint64_t sub_1BA28AF44()
{
  v1 = *(v0 + 120);
  if ((*(*(v0 + 88) + 48))(v1, 1, *(v0 + 80)) == 1)
  {
    v2 = *(v0 + 209);
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));

    if ((v2 & 1) == 0 && (sub_1BA4A6CA8() & 1) == 0)
    {
      v3 = *(v0 + 96);
      v4 = *(v0 + 48);
      v5 = *(v0 + 40);
      *v3 = *(v0 + 32);
      v3[1] = v5;
      swift_storeEnumTagMultiPayload();

      v4(v3);
      sub_1BA28CE50(v3, type metadata accessor for SearchResultUpdate);
    }

    goto LABEL_7;
  }

  sub_1BA28CF14(v1, *(v0 + 112), type metadata accessor for SearchResultUpdate);
  if (sub_1BA4A6CA8())
  {
    v7 = *(v0 + 136);
    v6 = *(v0 + 144);
    v8 = *(v0 + 128);
    v9 = *(v0 + 112);

    sub_1BA28CE50(v9, type metadata accessor for SearchResultUpdate);
    (*(v7 + 8))(v6, v8);
LABEL_7:

    v10 = *(v0 + 8);

    return v10();
  }

  sub_1BA28CEB0(*(v0 + 112), *(v0 + 104));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v13 = *(v0 + 104);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_1BA28CE50(v13, type metadata accessor for SearchResultUpdate);
LABEL_19:
      v19 = *(v0 + 209);
      goto LABEL_20;
    }

    v15 = *(v0 + 64);
    v14 = *(v0 + 72);
    sub_1BA28CF14(v13, v14, type metadata accessor for DirectSearchResult);
    v16 = *(*(v14 + *(v15 + 20)) + 16);
    sub_1BA28CE50(v14, type metadata accessor for DirectSearchResult);
    if (!v16)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v17 = *v13;
    if (v17 >> 62)
    {
      v18 = sub_1BA4A7CC8();
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v18)
    {
      goto LABEL_19;
    }
  }

  (*(v0 + 48))(*(v0 + 112));
  v19 = 1;
LABEL_20:
  sub_1BA28CE50(*(v0 + 112), type metadata accessor for SearchResultUpdate);
  *(v0 + 209) = v19;
  v20 = sub_1BA4A6C58();
  *(v0 + 192) = v20;
  v21 = swift_task_alloc();
  *(v0 + 200) = v21;
  *v21 = v0;
  v21[1] = sub_1BA28AE00;
  v22 = *(v0 + 120);
  v23 = *(v0 + 128);
  v24 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8A8](v22, v20, v24, v23);
}

uint64_t sub_1BA28B2BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 1584) = a7;
  *(v7 + 1576) = a6;
  *(v7 + 1568) = a5;
  *(v7 + 1624) = a4;
  *(v7 + 1560) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BA28B2EC, 0, 0);
}

uint64_t sub_1BA28B2EC()
{
  if (*(v0 + 1624) == 1)
  {
    v1 = *(v0 + 1568);
    if (*(v1 + 80))
    {
      sub_1B9F0A534(v1 + 56, v0 + 1416);
      if (*(v0 + 1440))
      {
LABEL_4:
        v2 = *(v0 + 1584);
        v3 = *(v0 + 1576);
        v4 = *(v0 + 1568);
        sub_1B9F1134C((v0 + 1416), v0 + 1336);
        v5 = swift_task_alloc();
        *(v0 + 1592) = v5;
        v5[2] = v4;
        v5[3] = v3;
        v5[4] = v2;
        sub_1BA28CBC0(0, &qword_1EBBE99C0, sub_1BA28CA4C, MEMORY[0x1E69E62F8]);
        swift_asyncLet_begin();
        v6 = swift_task_alloc();
        *(v0 + 1600) = v6;
        v6[2] = v0 + 1336;
        v6[3] = v3;
        v6[4] = v2;
        swift_asyncLet_begin();

        return MEMORY[0x1EEE6DEB8](v0 + 16, v0 + 1544, sub_1BA28B598, v0 + 1296);
      }
    }

    else
    {
      v7 = *(v1 + 56);
      v8 = *(v1 + 72);
      *(v0 + 1448) = *(v1 + 88);
      *(v0 + 1416) = v7;
      *(v0 + 1432) = v8;
      if (*(v0 + 1440))
      {
        goto LABEL_4;
      }
    }
  }

  v9 = *(v0 + 1568);
  v10 = v9[15];
  v11 = v9[16];
  __swift_project_boxed_opaque_existential_1(v9 + 12, v10);
  v16 = (*(v11 + 16) + **(v11 + 16));
  v12 = swift_task_alloc();
  *(v0 + 1616) = v12;
  *v12 = v0;
  v12[1] = sub_1BA28B804;
  v13 = *(v0 + 1584);
  v14 = *(v0 + 1576);

  return v16(v0 + 1496, v14, v13, v10, v11);
}

uint64_t sub_1BA28B598()
{
  *(v0 + 1608) = *(v0 + 1544);

  return MEMORY[0x1EEE6DEB8](v0 + 656, v0 + 1552, sub_1BA28B608, v0 + 1376);
}

uint64_t sub_1BA28B624()
{
  v1 = *(v0 + 1560);

  sub_1B9FE294C(v2);
  sub_1BA28CA4C();
  sub_1BA28D19C();
  v3 = sub_1BA4A6B18();

  *v1 = v3;
  type metadata accessor for SearchResultUpdate(0);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 1552, sub_1BA28B6F8, v0 + 1456);
}

uint64_t sub_1BA28B714()
{

  return MEMORY[0x1EEE6DEB0](v0 + 16, v0 + 1544, sub_1BA28B780, v0 + 1504);
}

uint64_t sub_1BA28B79C()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 1336));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BA28B804()
{

  return MEMORY[0x1EEE6DFA0](sub_1BA28B900, 0, 0);
}

uint64_t sub_1BA28B900()
{
  **(v0 + 1560) = *(v0 + 1496);
  type metadata accessor for SearchResultUpdate(0);
  swift_storeEnumTagMultiPayload();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BA28B97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BA28B9A0, 0, 0);
}

uint64_t sub_1BA28B9A0()
{
  v1 = v0[3];
  v2 = v1[15];
  v3 = v1[16];
  __swift_project_boxed_opaque_existential_1(v1 + 12, v2);
  v9 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1BA28D258;
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];

  return v9(v7, v5, v6, v2, v3);
}

uint64_t sub_1BA28BAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BA28BAF8, 0, 0);
}

uint64_t sub_1BA28BAF8()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v9 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1BA28BC28;
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];

  return v9(v7, v5, v6, v2, v3);
}

uint64_t sub_1BA28BC28()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1BA28BD20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BA28CBC0(0, &qword_1EDC5E5E0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v21 - v9;
  v11 = *v3;
  v12 = swift_taskGroup_addPending();
  if ((v12 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_1BA0C3488(a1, v10);
  v13 = sub_1BA4A6C88();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v10, 1, v13) != 1)
  {
    sub_1BA4A6C78();
    (*(v14 + 8))(v10, v13);
    if (*(a3 + 16))
    {
      goto LABEL_4;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    goto LABEL_8;
  }

  sub_1BA28CCFC(v10);
  if (!*(a3 + 16))
  {
    goto LABEL_7;
  }

LABEL_4:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_1BA4A6C28();
  v17 = v16;
  swift_unknownObjectRelease();
LABEL_8:
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  type metadata accessor for SearchResultUpdate(0);
  v19 = (v17 | v15);
  if (v17 | v15)
  {
    v22[0] = 0;
    v22[1] = 0;
    v19 = v22;
    v22[2] = v15;
    v22[3] = v17;
  }

  v21[1] = 1;
  v21[2] = v19;
  v21[3] = v11;
  swift_task_create();
LABEL_11:

  return v12 & 1;
}

uint64_t sub_1BA28BF68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1BA28BF8C, 0, 0);
}

uint64_t sub_1BA28BF8C()
{
  v1 = v0[3];
  v2 = v1[20];
  v3 = v1[21];
  __swift_project_boxed_opaque_existential_1(v1 + 17, v2);
  v9 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1BA28C0C0;
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];

  return v9(v7, v5, v6, v2, v3);
}

uint64_t sub_1BA28C0C0()
{

  return MEMORY[0x1EEE6DFA0](sub_1BA28C1BC, 0, 0);
}

uint64_t sub_1BA28C1BC()
{
  type metadata accessor for SearchResultUpdate(0);
  swift_storeEnumTagMultiPayload();
  v1 = *(v0 + 8);

  return v1();
}

void *SearchCoordinator.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);

  return v0;
}

uint64_t SearchCoordinator.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);

  return swift_deallocClassInstance();
}

uint64_t _s18HealthExperienceUI18SearchResultUpdateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DirectSearchResult(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SearchResultUpdate(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v35 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (&v35 - v18);
  sub_1BA28D1F4(0);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = &v23[*(v24 + 56)];
  sub_1BA28CEB0(a1, v23);
  sub_1BA28CEB0(a2, v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1BA28CEB0(v23, v19);
    v29 = *v19;
    if (!swift_getEnumCaseMultiPayload())
    {
      LOBYTE(v27) = sub_1B9FF1244(v29, *v25);

      v28 = type metadata accessor for SearchResultUpdate;
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1BA28CEB0(v23, v15);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1BA28CF14(v25, v7, type metadata accessor for DirectSearchResult);
      LOBYTE(v27) = _s18HealthExperienceUI18DirectSearchResultV2eeoiySbAC_ACtFZ_0();
      sub_1BA28CE50(v7, type metadata accessor for DirectSearchResult);
      sub_1BA28CE50(v15, type metadata accessor for DirectSearchResult);
      v28 = type metadata accessor for SearchResultUpdate;
      goto LABEL_17;
    }

    sub_1BA28CE50(v15, type metadata accessor for DirectSearchResult);
LABEL_16:
    LOBYTE(v27) = 0;
    v28 = sub_1BA28D1F4;
    goto LABEL_17;
  }

  sub_1BA28CEB0(v23, v11);
  v31 = *v11;
  v30 = v11[1];
  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_14:

    goto LABEL_16;
  }

  if (v31 == *v25 && v30 == v25[1])
  {

    LOBYTE(v27) = 1;
  }

  else
  {
    v33 = sub_1BA4A8338();

    v27 = v33 << 31 >> 31;
  }

  v28 = type metadata accessor for SearchResultUpdate;
LABEL_17:
  sub_1BA28CE50(v23, v28);
  return v27 & 1;
}

uint64_t sub_1BA28C63C(__int128 *a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = a5;
  v17 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a4, a5);
  type metadata accessor for SearchCoordinator();
  v12 = swift_allocObject();
  *(v12 + 176) = 0;
  sub_1B9F1134C(a1, v12 + 16);
  v13 = *(a2 + 16);
  *(v12 + 56) = *a2;
  *(v12 + 72) = v13;
  *(v12 + 88) = *(a2 + 32);
  sub_1B9F1134C(a3, v12 + 96);
  sub_1B9F1134C(&v15, v12 + 136);
  return v12;
}

uint64_t sub_1BA28C714(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1BA0C2E3C;

  return sub_1BA28A5B4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t dispatch thunk of SearchResultProvider.search(text:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1BA0C36D8;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t type metadata accessor for SearchResultUpdate(uint64_t a1)
{
  result = qword_1EBBEFAD8;
  if (!qword_1EBBEFAD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA28C994(uint64_t a1)
{
  sub_1BA28CBC0(319, &qword_1EBBE99C0, sub_1BA28CA4C, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for DirectSearchResult(319);
    if (v2 <= 0x3F)
    {
      sub_1BA28CA98();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

unint64_t sub_1BA28CA4C()
{
  result = qword_1EDC5E4A0;
  if (!qword_1EDC5E4A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC5E4A0);
  }

  return result;
}

uint64_t sub_1BA28CA98()
{
  result = qword_1EBBEFAE8;
  if (!qword_1EBBEFAE8)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EBBEFAE8);
  }

  return result;
}

uint64_t sub_1BA28CAE0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = *(v2 + 56);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1BA0C36D8;

  return sub_1BA28A964(a1, a2, v6, v7, v8, v9, v10, v11);
}

void sub_1BA28CBC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA28CC24(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1BA0C36D8;

  return sub_1BA28B2BC(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1BA28CCFC(uint64_t a1)
{
  sub_1BA28CBC0(0, &qword_1EDC5E5E0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA28CD88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BA0C36D8;

  return sub_1BA28BF68(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1BA28CE50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA28CEB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchResultUpdate(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA28CF14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA28CF7C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BA0C36D8;

  return sub_1BA0C1C88(a1, v4);
}

uint64_t sub_1BA28D034(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BA0C36D8;

  return sub_1BA28B97C(a1, v4, v5, v6);
}

uint64_t sub_1BA28D0E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BA0C2E3C;

  return sub_1BA28BAD4(a1, v4, v5, v6);
}

unint64_t sub_1BA28D19C()
{
  result = qword_1EDC5E490;
  if (!qword_1EDC5E490)
  {
    sub_1BA28CA4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5E490);
  }

  return result;
}

void sub_1BA28D1F4(uint64_t a1)
{
  if (!qword_1EBBEFB00)
  {
    type metadata accessor for SearchResultUpdate(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBEFB00);
    }
  }
}

uint64_t SnippetAllDataDataSource.__allocating_init(healthStore:healthExperienceStore:allDataSummarySections:additionalPredicates:)(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  swift_allocObject();
  v8 = sub_1BA28ED0C(a1, a2, a3, a4);

  return v8;
}

uint64_t sub_1BA28D2D0()
{
  sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BA4B7510;
  v1 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v2 = sub_1BA4A6758();
  v3 = [v1 initWithKey:v2 ascending:0];

  *(v0 + 32) = v3;
  v4 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v5 = sub_1BA4A6758();
  v6 = [v4 initWithKey:v5 ascending:1 selector:sel_localizedStandardCompare_];

  *(v0 + 40) = v6;
  return v0;
}

char *SnippetSectionDataSource.__allocating_init(healthStore:healthExperienceStore:allDataSummarySection:additionalPredicates:)(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v37 = a4;
  v38 = a1;
  v9 = sub_1BA4A0FA8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0CB04(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v37 - v16;
  v18 = objc_allocWithZone(v5);
  v39 = v18;
  v19 = qword_1EDC84BF0;
  v20 = sub_1BA4A3BD8();
  v21 = *(v20 - 8);
  v22 = &v18[v19];
  v23 = v20;
  (*(v21 + 16))(v22, a3);
  sub_1BA4A0F18();
  sub_1BA4A3C18();
  (*(v10 + 8))(v13, v9);
  sub_1B9F1C048(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58]);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1BA4B5480;
  *(v24 + 32) = [a1 profileIdentifier];
  v25 = sub_1BA28E2EC(a3, v17, 0, v24);

  sub_1B9F1C1B0(v17);
  sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1BA4B5470;
  *(v26 + 32) = v25;
  v40 = v26;
  v27 = v25;
  sub_1B9F33948(v37);
  sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
  v28 = sub_1BA4A6AE8();

  v29 = [objc_opt_self() andPredicateWithSubpredicates_];

  sub_1BA4A27B8();
  v30 = MEMORY[0x1BFAED110]();
  [v30 setPredicate_];
  sub_1BA28D2D0();
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0, 0x1E696AEB0);
  v31 = sub_1BA4A6AE8();

  [v30 setSortDescriptors_];

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v32 = v30;
  v33 = sub_1BA4A1B68();
  v34 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v32 managedObjectContext:v33 sectionNameKeyPath:0 cacheName:0];

  v35 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v34);
  (*(v21 + 8))(a3, v23);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v35;
}

char *SnippetSectionDataSource.init(healthStore:healthExperienceStore:allDataSummarySection:additionalPredicates:)(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v33 = a4;
  v34 = a1;
  v8 = sub_1BA4A0FA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0CB04(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v32 - v15;
  v17 = qword_1EDC84BF0;
  v35 = sub_1BA4A3BD8();
  v18 = *(v35 - 8);
  (*(v18 + 16))(v4 + v17, a3, v35);
  sub_1BA4A0F18();
  sub_1BA4A3C18();
  (*(v9 + 8))(v12, v8);
  sub_1B9F1C048(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58]);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BA4B5480;
  *(v19 + 32) = [a1 profileIdentifier];
  v20 = sub_1BA28E2EC(a3, v16, 0, v19);

  sub_1B9F1C1B0(v16);
  sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1BA4B5470;
  *(v21 + 32) = v20;
  v36 = v21;
  v22 = v20;
  sub_1B9F33948(v33);
  sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
  v23 = sub_1BA4A6AE8();

  v24 = [objc_opt_self() andPredicateWithSubpredicates_];

  sub_1BA4A27B8();
  v25 = MEMORY[0x1BFAED110]();
  [v25 setPredicate_];
  sub_1BA28D2D0();
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0, 0x1E696AEB0);
  v26 = sub_1BA4A6AE8();

  [v25 setSortDescriptors_];

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v27 = v25;
  v28 = sub_1BA4A1B68();
  v29 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v27 managedObjectContext:v28 sectionNameKeyPath:0 cacheName:0];

  v30 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v29);
  (*(v18 + 8))(a3, v35);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v30;
}

uint64_t sub_1BA28DC20@<X0>(void *a1@<X8>)
{
  v32 = a1;
  v1 = sub_1BA4A4428();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v31 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BA4A3BD8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A0FA8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BA4A1728();
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v16 = sub_1BA4A3C28();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A0F18();
  sub_1BA4A3C08();
  (*(v10 + 8))(v13, v9);
  (*(v5 + 16))(v8, v30[1] + qword_1EDC84BF0, v4);
  sub_1BA4A3BE8();
  v21 = sub_1BA4A3BF8();
  v23 = v22;
  (*(v17 + 8))(v20, v16);
  v24 = v31;
  _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  v25 = type metadata accessor for HeaderItem(0);
  swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v21, v23, 0, 0, 0, 0, v24, 0, 0);
  v27 = v26;
  v28 = v32;
  v32[3] = v25;
  result = sub_1B9F323C4(&qword_1EDC69800, type metadata accessor for HeaderItem, &protocol conformance descriptor for HeaderItem);
  v28[4] = result;
  *v28 = v27;
  return result;
}

uint64_t sub_1BA28DFBC()
{
  v1 = qword_1EDC84BF0;
  v2 = sub_1BA4A3BD8();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id SnippetSectionDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SnippetSectionDataSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA28E05C(uint64_t a1)
{
  v2 = qword_1EDC84BF0;
  v3 = sub_1BA4A3BD8();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

uint64_t SnippetAllDataDataSource.init(healthStore:healthExperienceStore:allDataSummarySections:additionalPredicates:)(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v5 = sub_1BA28ED0C(a1, a2, a3, a4);

  return v5;
}

uint64_t SnippetAllDataDataSource.deinit()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t SnippetAllDataDataSource.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

id sub_1BA28E2EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v82 = a4;
  v83 = a3;
  v80 = a2;
  v5 = sub_1BA4A1728();
  v78 = *(v5 - 8);
  v79 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v77 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v76 = &v72 - v10;
  sub_1B9F0CB04(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v81 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v72 - v16;
  v18 = sub_1BA4A0FA8();
  v19 = *(v18 - 8);
  v84 = v18;
  v85 = v19;
  MEMORY[0x1EEE9AC00](v18, v20);
  v75 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1BA4A3BD8();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v73 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26, v27);
  v30 = &v72 - v29;
  v31 = *(v23 + 16);
  v74 = a1;
  v31(&v72 - v29, a1, v22, v28);
  v32 = (*(v23 + 88))(v30, v22);
  LODWORD(a1) = *MEMORY[0x1E69A3E30];
  sub_1B9F0CB04(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v33 = sub_1BA4A1C68();
  v34 = *(v33 - 8);
  v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v36 = swift_allocObject();
  v37 = v36;
  v72 = xmmword_1BA4B5480;
  *(v36 + 16) = xmmword_1BA4B5480;
  v38 = *(v34 + 104);
  if (v32 == a1)
  {
    v38(v36 + v35, *MEMORY[0x1E69A3BB8], v33);
  }

  else
  {
    v38(v36 + v35, *MEMORY[0x1E69A3BB0], v33);
    (*(v23 + 8))(v30, v22);
  }

  sub_1BA1FA3F8(v80, v17);
  v40 = v84;
  v39 = v85;
  if ((*(v85 + 48))(v17, 1, v84) == 1)
  {
    sub_1B9F1C1B0(v17);
    v41 = v73;
    (*(v23 + 104))(v73, *MEMORY[0x1E69A3E48], v22);
    sub_1B9F323C4(&qword_1EBBEFB08, MEMORY[0x1E69A3E70], MEMORY[0x1E69A3E78]);
    sub_1BA4A6A58();
    sub_1BA4A6A58();
    if (v87 == v86[8] && v88 == v86[9])
    {
      (*(v23 + 8))(v41, v22);

      v43 = v81;
      v42 = v82;
    }

    else
    {
      v57 = sub_1BA4A8338();
      (*(v23 + 8))(v41, v22);

      v43 = v81;
      v42 = v82;
      if ((v57 & 1) == 0)
      {
        v55 = 0;
        goto LABEL_12;
      }
    }

    sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
    sub_1B9F0CB04(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
    v58 = swift_allocObject();
    *(v58 + 16) = v72;
    *(v58 + 56) = MEMORY[0x1E69E6158];
    *(v58 + 64) = sub_1B9F1BE20();
    *(v58 + 32) = 0x746E6176656C6572;
    *(v58 + 40) = 0xEF65746144646E45;
    v39 = v85;
    v55 = sub_1BA4A6EE8();
    v59 = v55;
  }

  else
  {
    v44 = v75;
    (*(v39 + 32))(v75, v17, v40);
    v74 = sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
    v73 = "tAllDataDataSource";
    sub_1B9F0CB04(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1BA4C9870;
    v46 = MEMORY[0x1E69E6158];
    *(v45 + 56) = MEMORY[0x1E69E6158];
    v47 = sub_1B9F1BE20();
    *(v45 + 64) = v47;
    *(v45 + 32) = 0x746E6176656C6572;
    *(v45 + 40) = 0xEF65746144646E45;
    v48 = v76;
    sub_1BA4A0F88();
    v49 = sub_1BA4A16B8();
    v80 = v37;
    v50 = v79;
    v78 = *(v78 + 8);
    (v78)(v48, v79);
    v51 = sub_1B9F0ADF8(0, &qword_1EDC6B4C0, 0x1E695DF00);
    *(v45 + 96) = v51;
    v52 = sub_1B9F6A24C();
    *(v45 + 72) = v49;
    *(v45 + 136) = v46;
    *(v45 + 144) = v47;
    *(v45 + 104) = v52;
    *(v45 + 112) = 0x746E6176656C6572;
    *(v45 + 120) = 0xEF65746144646E45;
    v40 = v84;
    v39 = v85;
    v53 = v77;
    sub_1BA4A0F58();
    v54 = sub_1BA4A16B8();
    (v78)(v53, v50);
    v37 = v80;
    *(v45 + 176) = v51;
    *(v45 + 184) = v52;
    *(v45 + 152) = v54;
    v55 = sub_1BA4A6EE8();
    (*(v39 + 8))(v44, v40);
    v43 = v81;
    v42 = v82;
    v56 = v55;
  }

LABEL_12:
  sub_1BA4A27B8();
  (*(v39 + 56))(v43, 1, 1, v40);
  v60 = MEMORY[0x1BFAED020](v37, 0, v43, v42);

  sub_1B9F1C1B0(v43);
  v61 = v60;
  v62 = sub_1BA4A2608();
  v86[4] = v60;
  v86[5] = v55;
  v86[6] = 0;
  v86[7] = v62;
  v87 = MEMORY[0x1E69E7CC0];
  v63 = v55;
  result = v62;
  v65 = result;
  v66 = 0;
LABEL_13:
  if (v66 <= 4)
  {
    v67 = 4;
  }

  else
  {
    v67 = v66;
  }

  while (1)
  {
    if (v66 == 4)
    {
      sub_1B9F8AE1C(0);
      swift_arrayDestroy();
      sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
      v70 = sub_1BA4A6AE8();

      v71 = [objc_opt_self() andPredicateWithSubpredicates_];

      return v71;
    }

    if (v67 == v66)
    {
      break;
    }

    v68 = v86[v66++ + 4];
    if (v68)
    {
      v69 = v68;
      MEMORY[0x1BFAF1510]();
      if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BA4A6B68();
      }

      result = sub_1BA4A6BB8();
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA28ED0C(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v60 = a1;
  v61 = a2;
  v59 = sub_1BA4A0FA8();
  v7 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59, v8);
  v58 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0CB04(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v57 = v45 - v12;
  v56 = sub_1BA4A3BD8();
  v13 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56, v14);
  v55 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a3 + 16);
  if (v16)
  {
    v45[1] = v4;
    v53 = objc_opt_self();
    v52 = sub_1BA4A27B8();
    v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v45[0] = a3;
    v18 = a3 + v17;
    v19 = *(v13 + 72);
    v50 = (v13 + 16);
    v51 = v19;
    v49 = (v7 + 8);
    v20 = MEMORY[0x1E69E7CC0];
    v48 = (v13 + 8);
    v47 = xmmword_1BA4B5480;
    v46 = xmmword_1BA4B5470;
    v54 = a4;
    do
    {
      v63 = v20;
      v64 = v16;
      sub_1B9F0A534(v61, v66);
      v21 = *v50;
      v22 = v55;
      v23 = v56;
      (*v50)(v55, v18, v56);
      v24 = objc_allocWithZone(type metadata accessor for SnippetSectionDataSource(0));
      v21(&v24[qword_1EDC84BF0], v22, v23);
      v25 = v60;
      v62 = v25;

      v26 = v58;
      sub_1BA4A0F18();
      v27 = v57;
      sub_1BA4A3C18();
      (*v49)(v26, v59);
      sub_1B9F1C048(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58]);
      v28 = swift_allocObject();
      *(v28 + 16) = v47;
      *(v28 + 32) = [v25 profileIdentifier];
      v29 = sub_1BA28E2EC(v22, v27, 0, v28);

      sub_1B9F1C1B0(v27);
      sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
      v30 = swift_allocObject();
      *(v30 + 16) = v46;
      *(v30 + 32) = v29;
      v65 = v30;
      v31 = v29;
      sub_1B9F33948(a4);
      sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
      v32 = sub_1BA4A6AE8();

      v33 = [v53 andPredicateWithSubpredicates_];

      v34 = MEMORY[0x1BFAED110]();
      [v34 setPredicate_];
      sub_1BA28D2D0();
      sub_1B9F0ADF8(0, &qword_1EDC6E3E0, 0x1E696AEB0);
      v35 = sub_1BA4A6AE8();

      [v34 setSortDescriptors_];

      __swift_project_boxed_opaque_existential_1(v66, v66[3]);
      v36 = v34;
      v37 = sub_1BA4A1B68();
      v38 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v36 managedObjectContext:v37 sectionNameKeyPath:0 cacheName:0];

      v39 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v38);
      v20 = v63;

      (*v48)(v22, v23);
      __swift_destroy_boxed_opaque_existential_1(v66);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1B9F1E00C();
      }

      v40 = *(v20 + 16);
      a4 = v54;
      v41 = v64;
      if (v40 >= *(v20 + 24) >> 1)
      {
        v20 = sub_1B9F1E00C();
      }

      *(v20 + 16) = v40 + 1;
      v42 = v20 + 16 * v40;
      *(v42 + 32) = v39;
      *(v42 + 40) = &protocol witness table for FetchedResultsControllerDataSource<A>;
      v18 += v51;
      v16 = v41 - 1;
    }

    while (v16);
  }

  else
  {

    v20 = MEMORY[0x1E69E7CC0];
  }

  v43 = CompoundSectionedDataSource.init(_:)(v20);
  __swift_destroy_boxed_opaque_existential_1(v61);
  return v43;
}

uint64_t sub_1BA28F354(uint64_t a1)
{
  result = sub_1BA4A3BD8();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t PDFHorizontallySequentialItems.init(spacing:_:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = a3;
  return result;
}

CGFloat PDFHorizontallySequentialItems.render(context:document:)(uint64_t a1, uint64_t a2)
{
  v4 = *(*v2 + 16);
  v5 = 0.0;
  if (v4)
  {
    v7 = v2[1];
    v8 = *(a2 + 96);
    v9 = *v2 + 32;
    v10 = 0.0;
    v49 = v7;
    do
    {
      sub_1B9F0A534(v9, v51);
      type metadata accessor for PDFBuilder.Document();
      swift_allocObject();
      v24 = sub_1BA20F244(a2);
      if (v8)
      {
        v11 = v52;
        v12 = v53;
        __swift_project_boxed_opaque_existential_1(v51, v52);
        v54.origin.x = (*(v12 + 24))(v24, v11, v12);
        x = v54.origin.x;
        y = v54.origin.y;
        width = v54.size.width;
        height = v54.size.height;
        v17 = CGRectGetHeight(v54);
        if (v5 <= v17)
        {
          v5 = v17;
        }

        v55.origin.x = x;
        v55.origin.y = y;
        v55.size.width = width;
        v55.size.height = height;
        v10 = v10 + v7 + CGRectGetWidth(v55);
        v56.origin.x = PDFBuilder.Document.drawingContext.getter();
        v18 = CGRectGetMaxX(v56) - v10;
        v19 = *(a2 + 176);
        PDFBuilder.Document.drawingContext.getter();
        *(v24 + 168) = v18;
        *(v24 + 176) = v19;
        *(v24 + 184) = v20;
        *(v24 + 192) = v21;
        *(v24 + 200) = 0;
      }

      else
      {
        v57.origin.x = PDFBuilder.Document.drawingContext.getter();
        v25 = v57.origin.x;
        v26 = v57.origin.y;
        v27 = v57.size.width;
        v28 = v57.size.height;
        v50 = v5;
        v29 = v10 + CGRectGetMinX(v57);
        v58.origin.x = v25;
        v58.origin.y = v26;
        v58.size.width = v27;
        v58.size.height = v28;
        v30 = CGRectGetMinY(v58) + 0.0;
        v59.origin.x = v25;
        v59.origin.y = v26;
        v59.size.width = v27;
        v59.size.height = v28;
        v31 = CGRectGetWidth(v59) - v10;
        v60.origin.x = v25;
        v60.origin.y = v26;
        v60.size.width = v27;
        v60.size.height = v28;
        v32 = CGRectGetHeight(v60);
        *(v24 + 168) = v29;
        *(v24 + 176) = v30;
        v5 = v50;
        *(v24 + 184) = v31;
        *(v24 + 192) = v32;
        *(v24 + 200) = 0;
        v33 = v52;
        v34 = v53;
        __swift_project_boxed_opaque_existential_1(v51, v52);
        v61.origin.x = (*(v34 + 24))(v24, v33, v34);
        v35 = v61.origin.x;
        v36 = v61.origin.y;
        v37 = v61.size.width;
        v38 = v61.size.height;
        v39 = CGRectGetHeight(v61);
        if (v50 <= v39)
        {
          v5 = v39;
        }

        v62.origin.x = v35;
        v62.origin.y = v36;
        v62.size.width = v37;
        v62.size.height = v38;
        v7 = v49;
        v10 = v10 + v49 + CGRectGetWidth(v62);
      }

      v22 = v52;
      v23 = v53;
      __swift_project_boxed_opaque_existential_1(v51, v52);
      (*(v23 + 16))(a1, v24, v22, v23);

      __swift_destroy_boxed_opaque_existential_1(v51);
      v9 += 40;
      --v4;
    }

    while (v4);
  }

  v63.origin.x = PDFBuilder.Document.drawingContext.getter();
  v40 = v63.origin.x;
  v41 = v63.origin.y;
  v42 = v63.size.width;
  v43 = v63.size.height;
  v44 = CGRectGetMinX(v63) + 0.0;
  v64.origin.x = v40;
  v64.origin.y = v41;
  v64.size.width = v42;
  v64.size.height = v43;
  v45 = v5;
  v46 = v5 + CGRectGetMinY(v64);
  v65.origin.x = v40;
  v65.origin.y = v41;
  v65.size.width = v42;
  v65.size.height = v43;
  v47 = CGRectGetWidth(v65);
  v66.origin.x = v40;
  v66.origin.y = v41;
  v66.size.width = v42;
  v66.size.height = v43;
  result = CGRectGetHeight(v66) - v45;
  *(a2 + 168) = v44;
  *(a2 + 176) = v46;
  *(a2 + 184) = v47;
  *(a2 + 192) = result;
  *(a2 + 200) = 0;
  return result;
}

void PDFHorizontallySequentialItems.boundingRectForContent(in:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  type metadata accessor for PDFBuilder.Document();
  swift_allocObject();
  v5 = sub_1BA20F244(a1);
  v6 = *(*&v3 + 16);
  if (v6)
  {
    v7 = *&v3 + 32;
    v8 = 0.0;
    v9 = 0.0;
    v31 = v4;
    do
    {
      v10 = v4;
      sub_1B9F0A534(v7, v33);
      v11 = v34;
      v12 = v35;
      __swift_project_boxed_opaque_existential_1(v33, v34);
      v13 = (*(v12 + 24))(v5, v11, v12);
      v15 = v14;
      v17 = v16;
      v19 = v18;
      __swift_destroy_boxed_opaque_existential_1(v33);
      v36.origin.x = v13;
      v36.origin.y = v15;
      v36.size.width = v17;
      v36.size.height = v19;
      Height = CGRectGetHeight(v36);
      if (v8 <= Height)
      {
        v8 = Height;
      }

      v37.origin.x = v13;
      v37.origin.y = v15;
      v37.size.width = v17;
      v37.size.height = v19;
      v21 = v9 + CGRectGetWidth(v37);
      v38.origin.x = v13;
      v38.origin.y = v15;
      v38.size.width = v17;
      v38.size.height = v19;
      v22 = v10 + CGRectGetWidth(v38);
      v39.origin.x = PDFBuilder.Document.drawingContext.getter();
      x = v39.origin.x;
      y = v39.origin.y;
      width = v39.size.width;
      v26 = v39.size.height;
      v32 = v22 + CGRectGetMinX(v39);
      v40.origin.x = x;
      v40.origin.y = y;
      v40.size.width = width;
      v40.size.height = v26;
      v27 = v21;
      v28 = CGRectGetMinY(v40) + 0.0;
      v41.origin.x = x;
      v41.origin.y = y;
      v41.size.width = width;
      v41.size.height = v26;
      v29 = CGRectGetWidth(v41) - v22;
      v42.origin.x = x;
      v42.origin.y = y;
      v42.size.width = width;
      v42.size.height = v26;
      v30 = CGRectGetHeight(v42);
      v4 = v31;
      *(v5 + 168) = v32;
      *(v5 + 176) = v28;
      v9 = v27;
      *(v5 + 184) = v29;
      *(v5 + 192) = v30;
      v7 += 40;
      *(v5 + 200) = 0;
      --v6;
    }

    while (v6);
  }

  else
  {
  }

  PDFBuilder.Document.drawingContext.getter();
}

uint64_t HealthChecklistBaseFeatureStatusFeedItemProvider.contentKind.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69A3B78];
  v3 = sub_1BA4A1C68();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_1BA28FB54(uint64_t a1, uint64_t a2)
{
  sub_1B9F25350();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BA4B5460;
  *(v2 + 32) = 0x684368746C616548;
  *(v2 + 40) = 0xEF7473696C6B6365;
  *(v2 + 48) = sub_1BA4A24C8();
  *(v2 + 56) = v3;
  v4 = sub_1BA4A6AE8();

  v5 = HKUIJoinStringsForAutomationIdentifier();

  if (v5)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  }

  else
  {
    __break(1u);
  }
}

uint64_t HealthChecklistBaseFeatureStatusFeedItemProvider.makeFeedItemPublisher(context:featureStatus:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  sub_1BA29080C(0, &qword_1EDC5F448, sub_1BA2906B8, MEMORY[0x1E695C000]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v24 - v11;
  sub_1BA2906B8(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v21 = &v24 - v20;
  (*(a4 + 72))(a1, a2, v25, a4, v19);
  sub_1BA2906EC(v21, v16);
  sub_1BA4A4E78();
  sub_1BA290750();
  v22 = sub_1BA4A4F98();
  (*(v9 + 8))(v12, v8);
  sub_1BA290870(v21, sub_1BA2906B8);
  return v22;
}

uint64_t HealthChecklistBaseFeatureStatusFeedItemProvider._makeFeedItem(context:featureStatus:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v80 = a1;
  v90 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v87 = *(AssociatedTypeWitness - 8);
  v88 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v10);
  v86 = v67 - v11;
  v12 = sub_1BA4A2A88();
  v82 = *(v12 - 8);
  v83 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v81 = v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1BA4A1C68();
  v77 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79, v15);
  v76 = v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = swift_getAssociatedTypeWitness();
  v73 = AssociatedConformanceWitness;
  v72 = v17;
  swift_getAssociatedConformanceWitness();
  v71 = v19;
  v70 = swift_getAssociatedTypeWitness();
  v20 = sub_1BA4A7AA8();
  v84 = *(v20 - 8);
  v85 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v89 = v67 - v22;
  sub_1BA2907D8(0);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1BA4A30B8();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = v67 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32, v33);
  v36 = v67 - v35;
  v37 = *(a4 + 64);
  v75 = a2;
  v78 = a3;
  v38 = a4;
  v37(a2, a3, a4, v34);
  v39 = v27;
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    sub_1BA290870(v26, sub_1BA2907D8);
    v40 = sub_1BA4A1F38();
    return (*(*(v40 - 8) + 56))(v90, 1, 1, v40);
  }

  else
  {
    v69 = v28;
    (*(v28 + 32))(v36, v26, v27);
    v42 = v38;
    v43 = *(v38 + 56);
    v67[0] = v36;
    v44 = v78;
    v75 = v43(v36, v75, v78, v38);
    v74 = v45;
    v46 = *(v28 + 16);
    v68 = v39;
    v46(v31, v36, v39);
    v47 = v89;
    v48 = v70;
    v49 = swift_dynamicCast();
    (*(*(v48 - 8) + 56))(v47, v49 ^ 1u, 1, v48);
    v50 = swift_checkMetadataState();
    v51 = swift_checkMetadataState();
    v72 = *(v38 + 8);
    v67[1] = v5;
    v52 = sub_1BA4A2498();
    v54 = v53;
    v55 = v76;
    sub_1BA4A24A8();
    v56 = sub_1BA4A1F68();
    v57 = v90;
    static PluginFeedItem.platformFeedItem<A, B>(viewType:actionHandlerType:actionHandlerUserData:uniqueIdentifier:userDataObject:contentKind:sourceProfile:)(v50, v51, v75, v74, v52, v54, v47, v55, v56, v50, v51, v73);

    (*(v77 + 8))(v55, v79);
    v58 = v67[0];
    sub_1BA4A30A8();
    sub_1BA4A1E18();
    sub_1B9F25350();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BA4B5480;
    v60 = v81;
    sub_1BA4A3018();
    v61 = sub_1BA4A2C78();
    v63 = v62;
    (*(v82 + 8))(v60, v83);
    *(inited + 32) = v61;
    *(inited + 40) = v63;
    sub_1B9FF6B78(inited);
    swift_setDeallocating();
    sub_1BA000898(inited + 32);
    sub_1BA4A1EF8();
    v64 = v86;
    (*(v42 + 48))(v44, v42);
    v65 = v88;
    swift_getAssociatedConformanceWitness();
    sub_1BA4A29E8();
    (*(v87 + 8))(v64, v65);
    sub_1BA4A1F18();
    sub_1BA4A1E08();
    sub_1BA4A24B8();
    sub_1BA4A1E48();
    sub_1BA28FB54(v44, v42);
    sub_1BA4A1ED8();
    sub_1B9F6AC8C(v75, v74);
    (*(v69 + 8))(v58, v68);
    v66 = sub_1BA4A1F38();
    (*(*(v66 - 8) + 56))(v57, 0, 1, v66);
    return (*(v84 + 8))(v89, v85);
  }
}

uint64_t sub_1BA2906EC(uint64_t a1, uint64_t a2)
{
  sub_1BA2906B8(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BA290750()
{
  result = qword_1EDC5F450;
  if (!qword_1EDC5F450)
  {
    sub_1BA29080C(255, &qword_1EDC5F448, sub_1BA2906B8, MEMORY[0x1E695C000]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F450);
  }

  return result;
}

void sub_1BA29080C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA290870(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t static AnalyticsTransforming.analyticsString(for:)(unsigned __int8 *a1)
{
  v1 = *a1;
  result = 0x5F7972616D6D7573;
  switch(v1)
  {
    case 1:
      result = 0x6C6C615F776F6873;
      break;
    case 2:
      result = 0x745F6573776F7262;
      break;
    case 3:
      result = 0x79726F6765746163;
      break;
    case 4:
      result = 0x725F6C6961746564;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x656C69666F7270;
      break;
    case 8:
    case 9:
      result = 0x5F676E6972616873;
      break;
    case 10:
      result = 0x72616265646973;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0x6E6572745F6C6C61;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

id sub_1BA290B14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharingCloudErrorDataSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SharingCloudErrorDataSource(uint64_t a1)
{
  result = qword_1EDC64E00;
  if (!qword_1EDC64E00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1BA290BA0()
{
  if (qword_1EDC6D380 != -1)
  {
    swift_once();
  }

  v14[4] = xmmword_1EDC6D3C8;
  v14[5] = unk_1EDC6D3D8;
  v14[6] = xmmword_1EDC6D3E8;
  v14[7] = unk_1EDC6D3F8;
  v14[0] = xmmword_1EDC6D388;
  v14[1] = xmmword_1EDC6D398;
  v14[2] = xmmword_1EDC6D3A8;
  v14[3] = xmmword_1EDC6D3B8;
  v4 = xmmword_1EDC6D388;
  v0 = *(&xmmword_1EDC6D398 + 1);
  v5 = xmmword_1EDC6D398;
  v2 = xmmword_1EDC6D3A8;
  v1 = xmmword_1EDC6D3B8;
  v9 = *(&xmmword_1EDC6D3C8 + 8);
  v10 = *&qword_1EDC6D3E0;
  v11 = *(&xmmword_1EDC6D3E8 + 8);
  v12 = qword_1EDC6D400;
  v8 = *(&xmmword_1EDC6D3B8 + 8);
  sub_1B9F1D9A4(v14, v13);
  sub_1B9F1DA18(v0, v2, *(&v2 + 1), v1);
  sub_1B9F0ADF8(0, &qword_1EDC6B530, 0x1E6995580);
  v6 = 0u;
  v7 = 0u;
  return sub_1B9F293A8(&v4);
}

char *sub_1BA290CC4(void *a1, void *a2)
{
  sub_1BA4A27B8();
  v4 = [a1 profileIdentifier];
  sub_1BA4A28F8();

  v5 = sub_1BA4A26A8();

  sub_1BA4A20F8();
  v6 = sub_1BA4A2628();

  sub_1B9F109F8();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BA4B7510;
  *(v7 + 32) = v5;
  *(v7 + 40) = v6;
  sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
  v8 = v5;
  v9 = v6;
  v10 = sub_1BA4A6AE8();

  v11 = [objc_opt_self() andPredicateWithSubpredicates_];

  v12 = sub_1BA4A26C8();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BA4B5470;
  v14 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v15 = sub_1BA4A6758();
  v16 = [v14 initWithKey:v15 ascending:1];

  *(v13 + 32) = v16;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0, 0x1E696AEB0);
  v17 = sub_1BA4A6AE8();

  [v12 setSortDescriptors_];

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v18 = v12;
  v19 = sub_1BA4A1B68();
  v20 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v18 managedObjectContext:v19 sectionNameKeyPath:0 cacheName:0];

  v21 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v20);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v21;
}

Swift::Void __swiftcall DataTypeDetailRoomEntryAnalyticsEventSubmitting.sendRoomEntryAnalyticsEvent(objectType:chartOverlayVersion:healthStore:)(HKObjectType objectType, __C::HKChartOverlayVersion chartOverlayVersion, HKHealthStore healthStore)
{
  v5 = [(objc_class *)objectType.super.isa identifier];
  v6 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v8 = v7;

  _s18HealthExperienceUI47DataTypeDetailRoomEntryAnalyticsEventSubmittingPAAE04sendghiJ010identifier19chartOverlayVersion11healthStoreySS_So07HKChartoP0aSo08HKHealthR0CtF_0(v6, v8, chartOverlayVersion._rawValue, healthStore.super.isa);
}

id sub_1BA291008(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_1BA29131C(0);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000012;
  *(inited + 16) = xmmword_1BA4B9FD0;
  *(inited + 40) = 0x80000001BA4F8FD0;
  *(inited + 48) = sub_1BA4A6758();
  *(inited + 56) = 0xD000000000000013;
  *(inited + 64) = 0x80000001BA4F8FF0;
  *(inited + 72) = a3;
  *(inited + 80) = 0x54656C69666F7270;
  *(inited + 88) = 0xEB00000000657079;
  v6 = a3;
  result = HKStringFromProfileType();
  if (result)
  {
    *(inited + 96) = result;
    v8 = sub_1B9FDC028(inited);
    swift_setDeallocating();
    sub_1BA291374(0);
    swift_arrayDestroy();
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double _s18HealthExperienceUI47DataTypeDetailRoomEntryAnalyticsEventSubmittingPAAE04sendghiJ010identifier19chartOverlayVersion11healthStoreySS_So07HKChartoP0aSo08HKHealthR0CtF_0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  sub_1BA4A2F48();
  sub_1BA4A2F38();
  v8 = sub_1BA4A2F28();

  if (v8)
  {

    v10 = [a4 profileIdentifier];
    v11 = [v10 type];

    v15[5] = a1;
    v15[6] = a2;
    v15[7] = a3;
    v15[8] = v11;
    v12 = sub_1BA4A29B8();
    v13 = a3;
    v14 = sub_1BA4A29A8();
    v15[3] = v12;
    v15[4] = MEMORY[0x1E69A3198];
    v15[0] = v14;
    sub_1BA1190B4();
    sub_1BA4A2B58();
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  return result;
}

unint64_t sub_1BA291270()
{
  result = qword_1EBBEFB10;
  if (!qword_1EBBEFB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEFB10);
  }

  return result;
}

unint64_t sub_1BA2912C8()
{
  result = qword_1EBBEFB18;
  if (!qword_1EBBEFB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEFB18);
  }

  return result;
}

void sub_1BA29131C(uint64_t a1)
{
  if (!qword_1EBBEFB20)
  {
    sub_1BA291374(255);
    v1 = sub_1BA4A82E8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEFB20);
    }
  }
}

void sub_1BA291374(uint64_t a1)
{
  if (!qword_1EBBEFB28)
  {
    sub_1BA0004FC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBEFB28);
    }
  }
}

uint64_t sub_1BA2913DC(uint64_t a1, uint64_t *a2)
{
  sub_1B9F68124(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v6, v3 + v4);
  swift_endAccess();
  sub_1BA291478();
  return sub_1B9F4428C(v6, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0D950);
}

uint64_t sub_1BA291478()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F6C084(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v46 - v9;
  v11 = sub_1BA4A1728();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell_item;
  swift_beginAccess();
  sub_1B9F68124(v1 + v16, v49);
  if (v50)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    v46[1] = sub_1B9F0D950(0, &unk_1EBBEFBC0, &protocol descriptor for CompactDatePickerTableViewCellDataSource);
    if (swift_dynamicCast())
    {
      if (*(&v52 + 1))
      {
        sub_1B9F1134C(&v51, v54);
        v17 = sub_1BA291FFC();
        v18 = v55;
        v19 = v56;
        __swift_project_boxed_opaque_existential_1(v54, v55);
        (*(v19 + 24))(v18, v19);
        v20 = sub_1BA4A6758();

        [v17 setText_];

        v21 = v55;
        v22 = v56;
        __swift_project_boxed_opaque_existential_1(v54, v55);
        (*(v22 + 16))(v21, v22);
        if (v23)
        {
          v24 = sub_1BA292494();
          v25 = sub_1BA4A6758();

          [v24 setInitialText:v25 alignment:{2 * (objc_msgSend(v1, sel_effectiveUserInterfaceLayoutDirection) != 1)}];
        }

        v26 = v55;
        v27 = v56;
        __swift_project_boxed_opaque_existential_1(v54, v55);
        (*(v27 + 8))(v26, v27);
        if ((*(v12 + 48))(v10, 1, v11) == 1)
        {
          sub_1BA05DB44(v10);
        }

        else
        {
          (*(v12 + 32))(v15, v10, v11);
          v41 = sub_1BA292494();
          v42 = sub_1BA4A16B8();
          [v41 setCurrentDate_];

          (*(v12 + 8))(v15, v11);
        }

        sub_1B9F0A534(v54, v49);
        sub_1B9F0D950(0, qword_1EDC61778, &protocol descriptor for UIAutomationBaseIdentifierProvider);
        if (swift_dynamicCast())
        {
          sub_1B9F1134C(v47, &v51);
          v43 = *(&v52 + 1);
          v44 = v53;
          __swift_project_boxed_opaque_existential_1(&v51, *(&v52 + 1));
          v45.value._countAndFlagsBits = (*(v44 + 8))(v43, v44);
          CompactDatePickerTableViewCell.updateAutomationIdentifiers(with:)(v45);

          __swift_destroy_boxed_opaque_existential_1(&v51);
        }

        else
        {
          v48 = 0;
          memset(v47, 0, sizeof(v47));
          sub_1B9F4428C(v47, &qword_1EDC61770, qword_1EDC61778, &protocol descriptor for UIAutomationBaseIdentifierProvider, sub_1B9F0D950);
        }

        return __swift_destroy_boxed_opaque_existential_1(v54);
      }
    }

    else
    {
      v53 = 0;
      v51 = 0u;
      v52 = 0u;
    }
  }

  else
  {
    sub_1B9F4428C(v49, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0D950);
    v51 = 0u;
    v52 = 0u;
    v53 = 0;
  }

  sub_1B9F4428C(&v51, &qword_1EBBEFBB8, &unk_1EBBEFBC0, &protocol descriptor for CompactDatePickerTableViewCellDataSource, sub_1B9F0D950);
  sub_1BA4A3DE8();
  v28 = v1;
  v29 = sub_1BA4A3E88();
  v30 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v54[0] = v32;
    *v31 = 136446722;
    v33 = sub_1BA4A85D8();
    v35 = sub_1B9F0B82C(v33, v34, v54);

    *(v31 + 4) = v35;
    *(v31 + 12) = 2082;
    *(v31 + 14) = sub_1B9F0B82C(1835365481, 0xE400000000000000, v54);
    *(v31 + 22) = 2082;
    sub_1B9F0D4D8(0, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0D950);
    *&v51 = v36;
    sub_1BA0928CC();
    v37 = sub_1BA4A6808();
    v39 = sub_1B9F0B82C(v37, v38, v54);

    *(v31 + 24) = v39;
    _os_log_impl(&dword_1B9F07000, v29, v30, "[%{public}s.%{public}s]: Attempted to set item (%{public}s) that did not conform to CompactDatePickerTableViewCellDataSource", v31, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v32, -1, -1);
    MEMORY[0x1BFAF43A0](v31, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

Swift::Void __swiftcall CompactDatePickerTableViewCell.updateAutomationIdentifiers(with:)(Swift::String_optional with)
{
  v2 = v1;
  if (with.value._object)
  {
    v3 = sub_1BA4A6758();
    [v2 setAccessibilityIdentifier_];

    v4 = sub_1BA292494();

    MEMORY[0x1BFAF1350](0x746361706D6F432ELL, 0xEE0072656B636950);
    v5 = sub_1BA4A6758();

    [v4 setAccessibilityIdentifier_];

    v6 = [*&v2[OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell____lazy_storage___compactPicker] initialTextLabel];
    if (v6)
    {
      v7 = v6;

      MEMORY[0x1BFAF1350](0xD000000000000010, 0x80000001BA4F9040);
      v8 = sub_1BA4A6758();

      [v7 setAccessibilityIdentifier_];
    }

    v9 = sub_1BA291FFC();

    MEMORY[0x1BFAF1350](0x656C7469542ELL, 0xE600000000000000);
    v13 = sub_1BA4A6758();

    [v9 setAccessibilityIdentifier_];
  }

  else
  {
    [v1 setAccessibilityIdentifier_];
    v10 = sub_1BA292494();
    [v10 setAccessibilityIdentifier_];

    v11 = [*&v2[OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell____lazy_storage___compactPicker] initialTextLabel];
    if (v11)
    {
      v12 = v11;
      [v11 setAccessibilityIdentifier_];
    }

    v13 = sub_1BA291FFC();
    [v13 setAccessibilityIdentifier_];
  }
}

uint64_t sub_1BA291DEC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA291E44(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA291478();
  return sub_1B9F4428C(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0D950);
}

uint64_t (*sub_1BA291EDC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA291F40;
}

uint64_t sub_1BA291F40(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BA291478();
  }

  return result;
}

id sub_1BA291F74()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell____lazy_storage___containerView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell____lazy_storage___containerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell____lazy_storage___containerView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA291FFC()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell____lazy_storage___titleLabel;
  v8 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell____lazy_storage___titleLabel);
  if (v8)
  {
    v9 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell____lazy_storage___titleLabel);
  }

  else
  {
    v42 = v4;
    v10 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v10 setTranslatesAutoresizingMaskIntoConstraints_];
    [v10 setAdjustsFontForContentSizeCategory_];
    v11 = *MEMORY[0x1E69DDCF8];
    v12 = objc_opt_self();
    v13 = [v12 preferredFontDescriptorWithTextStyle:v11 compatibleWithTraitCollection:0];
    if (v13)
    {
      v14 = v13;
      v15 = [objc_opt_self() fontWithDescriptor:v13 size:0.0];
    }

    else
    {
      v41 = v0;
      sub_1BA4A3DD8();
      v16 = v11;
      v17 = sub_1BA4A3E88();
      v18 = sub_1BA4A6FB8();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v45 = v39;
        *v19 = 136315906;
        v20 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v22 = sub_1B9F0B82C(v20, v21, &v45);
        v40 = v16;
        v23 = v22;

        *(v19 + 4) = v23;
        *(v19 + 12) = 2080;
        v43 = 0;
        v44 = 1;
        sub_1B9F6C084(0, &qword_1EBBECB00, type metadata accessor for Weight);
        v24 = sub_1BA4A6808();
        v26 = sub_1B9F0B82C(v24, v25, &v45);

        *(v19 + 14) = v26;
        *(v19 + 22) = 2080;
        LODWORD(v43) = 0;
        type metadata accessor for SymbolicTraits(0);
        v27 = sub_1BA4A6808();
        v29 = sub_1B9F0B82C(v27, v28, &v45);
        v16 = v40;

        *(v19 + 24) = v29;
        *(v19 + 32) = 2112;
        v30 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        *(v19 + 34) = v30;
        v31 = v38;
        *v38 = v30;
        _os_log_impl(&dword_1B9F07000, v17, v18, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v19, 0x2Au);
        sub_1B9F4428C(v31, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
        MEMORY[0x1BFAF43A0](v31, -1, -1);
        v32 = v39;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v32, -1, -1);
        MEMORY[0x1BFAF43A0](v19, -1, -1);
      }

      (*(v2 + 8))(v6, v42);
      v0 = v41;
      v33 = [v12 preferredFontDescriptorWithTextStyle_];
      v15 = [objc_opt_self() fontWithDescriptor:v33 size:0.0];
    }

    [v10 setFont_];

    v34 = [objc_opt_self() labelColor];
    [v10 setTextColor_];

    [v10 setNumberOfLines_];
    v35 = *(v0 + v7);
    *(v0 + v7) = v10;
    v9 = v10;

    v8 = 0;
  }

  v36 = v8;
  return v9;
}

id sub_1BA292494()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell____lazy_storage___compactPicker;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell____lazy_storage___compactPicker);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell____lazy_storage___compactPicker);
  }

  else
  {
    v4 = sub_1BA2924F8(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA2924F8(uint64_t a1)
{
  v2 = sub_1BA4A1728();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A1718();
  v7 = objc_allocWithZone(MEMORY[0x1E69A4440]);
  v8 = sub_1BA4A16B8();
  v9 = [v7 initWithFrame:0 initialText:v8 defaultDate:150 maxYears:{0.0, 0.0, 0.0, 0.0}];

  (*(v3 + 8))(v6, v2);
  v10 = v9;
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  v11 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.960784314 green:0.960784314 blue:0.976470588 alpha:1.0];
  v12 = [objc_opt_self() secondarySystemBackgroundColor];
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = v12;
  v13[4] = 0;
  v13[5] = v11;
  v14 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  aBlock[4] = sub_1B9FD7F54;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F7EBBC;
  aBlock[3] = &block_descriptor_68;
  v15 = _Block_copy(aBlock);
  v16 = [v14 initWithDynamicProvider_];
  _Block_release(v15);

  [v10 setBackgroundColor_];

  [v10 setDelegate_];
  return v10;
}

id CompactDatePickerTableViewCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id CompactDatePickerTableViewCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = &v3[OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell_item];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell____lazy_storage___containerView] = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell____lazy_storage___titleLabel] = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell____lazy_storage___compactPicker] = 0;
  if (a3)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for CompactDatePickerTableViewCell();
  v7 = objc_msgSendSuper2(&v10, sel_initWithStyle_reuseIdentifier_, a1, v6);

  v8 = v7;
  sub_1BA2929C4();

  return v8;
}

id sub_1BA2929C4()
{
  v1 = v0;
  v2 = sub_1BA4A4428();
  v53 = *(v2 - 8);
  v54 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v52 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA291F74();
  v6 = sub_1BA291FFC();
  [v5 addSubview_];

  v7 = OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell____lazy_storage___containerView;
  v8 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell____lazy_storage___containerView];
  v9 = sub_1BA292494();
  [v8 &selRef_centerXAnchor];

  v51 = objc_opt_self();
  sub_1B9F109F8();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BA4BBC90;
  v11 = OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell____lazy_storage___titleLabel;
  v12 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell____lazy_storage___titleLabel] leadingAnchor];
  v13 = [*&v1[v7] leadingAnchor];
  v14 = [v12 constraintEqualToAnchor_];

  *(v10 + 32) = v14;
  v15 = [*&v1[v11] topAnchor];
  v16 = [*&v1[v7] topAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  *(v10 + 40) = v17;
  v18 = [*&v1[v11] bottomAnchor];
  v19 = [*&v1[v7] bottomAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v10 + 48) = v20;
  v21 = [*&v1[v11] trailingAnchor];
  v22 = OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell____lazy_storage___compactPicker;
  v23 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell____lazy_storage___compactPicker] leadingAnchor];
  v24 = [v21 constraintLessThanOrEqualToAnchor:v23 constant:-8.0];

  *(v10 + 56) = v24;
  v25 = [*&v1[v22] trailingAnchor];
  v26 = [*&v1[v7] trailingAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  *(v10 + 64) = v27;
  v28 = [*&v1[v22] topAnchor];
  v29 = [*&v1[v7] topAnchor];
  v30 = [v28 constraintEqualToAnchor_];

  *(v10 + 72) = v30;
  v31 = [*&v1[v22] bottomAnchor];
  v32 = [*&v1[v7] bottomAnchor];
  v33 = [v31 constraintEqualToAnchor_];

  *(v10 + 80) = v33;
  v34 = [*&v1[v22] widthAnchor];
  v35 = [*&v1[v7] widthAnchor];
  v36 = [v34 constraintGreaterThanOrEqualToAnchor:v35 multiplier:0.25];

  *(v10 + 88) = v36;
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v37 = sub_1BA4A6AE8();

  [v51 activateConstraints_];

  [v1 setAccessibilityTraits_];
  v38 = [v1 contentView];
  [v38 addSubview_];

  v39 = v52;
  sub_1BA4A43A8();
  sub_1BA4A4338();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  (*(v53 + 8))(v39, v54);
  v48 = *&v1[v7];
  v49 = [v1 contentView];
  [v48 hk:v49 alignConstraintsWithView:v41 insets:{v43, v45, v47}];

  return [v1 setSelectionStyle_];
}

id CompactDatePickerTableViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CompactDatePickerTableViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA2931BC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI30CompactDatePickerTableViewCell_item;
  swift_beginAccess();
  sub_1B9F68124(v1 + v3, v7);
  if (v8)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    sub_1B9F0D950(0, &unk_1EBBEFBC0, &protocol descriptor for CompactDatePickerTableViewCellDataSource);
    if (swift_dynamicCast())
    {
      v4 = *(&v10 + 1);
      if (*(&v10 + 1))
      {
        v5 = v11;
        __swift_project_boxed_opaque_existential_1(&v9, *(&v10 + 1));
        (*(v5 + 32))(v1, a1, v4, v5);
        return __swift_destroy_boxed_opaque_existential_1(&v9);
      }
    }

    else
    {
      v11 = 0;
      v9 = 0u;
      v10 = 0u;
    }
  }

  else
  {
    sub_1B9F4428C(v7, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0D950);
    v9 = 0u;
    v10 = 0u;
    v11 = 0;
  }

  return sub_1B9F4428C(&v9, &qword_1EBBEFBB8, &unk_1EBBEFBC0, &protocol descriptor for CompactDatePickerTableViewCellDataSource, sub_1B9F0D950);
}

uint64_t sub_1BA293478()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EDC601B0 = result;
  *algn_1EDC601B8 = v1;
  return result;
}

void sub_1BA29354C()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC84A30;
  v1 = sub_1BA4A6758();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  qword_1EDC601C8 = v2;
}

uint64_t static SummarySharingOnboardingInfoViewController.headerIcon.getter()
{
  if (qword_1EDC601C0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC601C8;
  v1 = qword_1EDC601C8;
  return v0;
}

void sub_1BA293668(uint64_t a1)
{
  v1 = _UISolariumEnabled();
  v2 = MEMORY[0x1E69DDDB8];
  if (!v1)
  {
    v2 = MEMORY[0x1E69DDD58];
  }

  v3 = *v2;
  v4 = MEMORY[0x1E69DB978];
  if (!v1)
  {
    v4 = MEMORY[0x1E69DB980];
  }

  v5 = *v4;
  v6 = v3;
  v7 = sub_1B9F6B774(v6, v5, 0, 0, 0, 0, 1);

  qword_1EDC60110 = v7;
}

void sub_1BA293714()
{
  if (qword_1EDC60108 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC60110;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 configurationWithFont_];

  qword_1EDC60198 = v3;
}

void sub_1BA2937D0()
{
  if (qword_1EDC60190 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC60198;
  v1 = sub_1BA4A6758();
  v2 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  if (!v2)
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
  }

  qword_1EDC60180 = v2;
}

uint64_t sub_1BA2938D0()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EDC60148 = result;
  *algn_1EDC60150 = v1;
  return result;
}

uint64_t sub_1BA2939A4()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EDC600E0 = result;
  *algn_1EDC600E8 = v1;
  return result;
}

void sub_1BA293A78(uint64_t a1)
{
  _UISolariumEnabled();
  if (qword_1EDC60190 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDC60198;
  v2 = sub_1BA4A6758();

  v3 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  if (!v3)
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
  }

  qword_1EDC60168 = v3;
}

uint64_t sub_1BA293BA0()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EDC60130 = result;
  *algn_1EDC60138 = v1;
  return result;
}

uint64_t sub_1BA293C74()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EDC600C8 = result;
  unk_1EDC600D0 = v1;
  return result;
}

void sub_1BA293D48(uint64_t a1)
{
  _UISolariumEnabled();
  if (qword_1EDC60190 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDC60198;
  v2 = sub_1BA4A6758();

  v3 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  if (!v3)
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
  }

  qword_1EDC60120 = v3;
}

uint64_t sub_1BA293E74()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EDC600F8 = result;
  unk_1EDC60100 = v1;
  return result;
}

uint64_t sub_1BA293F48()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EDC600B0 = result;
  *algn_1EDC600B8 = v1;
  return result;
}

uint64_t sub_1BA29401C(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v4 = *a2;

  return v4;
}

void *SummarySharingOnboardingInfoViewController.__allocating_init(healthExperienceStore:healthStore:selectionFlowContext:)(void *a1, void *a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_1BA294B44(a1, a2, a3);

  return v8;
}

void *SummarySharingOnboardingInfoViewController.init(healthExperienceStore:healthStore:selectionFlowContext:)(void *a1, void *a2, uint64_t a3)
{
  v4 = sub_1BA294B44(a1, a2, a3);

  return v4;
}

void sub_1BA29411C(uint64_t a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for SummarySharingOnboardingInfoViewController();
  objc_msgSendSuper2(&v8, sel_viewDidLoad);
  if (qword_1EDC60140 != -1)
  {
    swift_once();
  }

  v2 = sub_1BA4A6758();
  if (qword_1EDC600D8 != -1)
  {
    swift_once();
  }

  v3 = sub_1BA4A6758();
  if (qword_1EDC60178 != -1)
  {
    swift_once();
  }

  [v1 addBulletedListItemWithTitle:v2 description:v3 image:qword_1EDC60180];

  if (qword_1EDC60128 != -1)
  {
    swift_once();
  }

  v4 = sub_1BA4A6758();
  if (qword_1EDC600C0 != -1)
  {
    swift_once();
  }

  v5 = sub_1BA4A6758();
  if (qword_1EDC60160 != -1)
  {
    swift_once();
  }

  [v1 addBulletedListItemWithTitle:v4 description:v5 image:qword_1EDC60168];

  if (qword_1EDC600F0 != -1)
  {
    swift_once();
  }

  v6 = sub_1BA4A6758();
  if (qword_1EDC600A8 != -1)
  {
    swift_once();
  }

  v7 = sub_1BA4A6758();
  if (qword_1EDC60118 != -1)
  {
    swift_once();
  }

  [v1 addBulletedListItemWithTitle:v6 description:v7 image:qword_1EDC60120];
}

void sub_1BA294440()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI42SummarySharingOnboardingInfoViewController_selectionFlowContext];
  if (v8)
  {
    memset(v31, 0, sizeof(v31));
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 3;
    v30 = 7;

    sub_1B9FEEC64(ObjectType, v31, 1, &v26);
    sub_1B9FF3BFC(v26, v27, v28, v29);
    sub_1B9F23224(v31);
    sub_1B9F53270();
    v9 = sub_1BA4A7028();
    v10 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI42SummarySharingOnboardingInfoViewController_healthStore];
    if (v9)
    {
      sub_1B9F0A534(&v1[OBJC_IVAR____TtC18HealthExperienceUI42SummarySharingOnboardingInfoViewController_healthExperienceStore], &v26);
      v11 = objc_allocWithZone(type metadata accessor for SummarySharingOnboardingContactPickerViewController(0));

      v12 = v10;
      v13 = sub_1BA202D18(v12, &v26, v8);

      v14 = [v1 navigationController];
      if (!v14)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_1B9F0A534(&v1[OBJC_IVAR____TtC18HealthExperienceUI42SummarySharingOnboardingInfoViewController_healthExperienceStore], &v26);
      v22 = objc_allocWithZone(type metadata accessor for SummarySharingSystemContactsPickerViewController());

      v23 = v10;
      v13 = sub_1BA1F1518(v23, &v26, v8);

      v14 = [v1 navigationController];
      if (!v14)
      {
LABEL_10:

        return;
      }
    }

    v24 = v14;
    [v14 pushViewController:v13 animated:1];

    goto LABEL_10;
  }

  sub_1BA4A3DD8();
  v15 = sub_1BA4A3E88();
  v16 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v26 = v18;
    *v17 = 136315138;
    v19 = sub_1BA4A85D8();
    v21 = sub_1B9F0B82C(v19, v20, &v26);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_1B9F07000, v15, v16, "[%s] Received an empty selectionFlowContext and the user was able to tap the next button. This should not have happened.", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1BFAF43A0](v18, -1, -1);
    MEMORY[0x1BFAF43A0](v17, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
}

id SummarySharingOnboardingInfoViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_1BA4A6758();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_1BA4A6758();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_1BA4A6758();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id SummarySharingOnboardingInfoViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_1BA4A6758();

  if (a4)
  {
    v12 = sub_1BA4A6758();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id SummarySharingOnboardingInfoViewController.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SummarySharingOnboardingInfoViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void *sub_1BA294B44(void *a1, void *a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC18HealthExperienceUI42SummarySharingOnboardingInfoViewController_selectionFlowContext;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI42SummarySharingOnboardingInfoViewController_selectionFlowContext] = 0;
  sub_1B9F0A534(a1, &v3[OBJC_IVAR____TtC18HealthExperienceUI42SummarySharingOnboardingInfoViewController_healthExperienceStore]);
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI42SummarySharingOnboardingInfoViewController_healthStore] = a2;
  *&v3[v7] = a3;
  v8 = qword_1EDC601A8;
  v9 = a2;

  if (v8 != -1)
  {
    swift_once();
  }

  v10 = sub_1BA4A6758();
  if (qword_1EDC601C0 != -1)
  {
    swift_once();
  }

  v11 = qword_1EDC601C8;
  v17.receiver = v3;
  v17.super_class = type metadata accessor for SummarySharingOnboardingInfoViewController();
  v12 = objc_msgSendSuper2(&v17, sel_initWithTitle_detailText_icon_contentLayout_, v10, 0, v11, 2);

  v13 = v12;
  v14 = sub_1BA4A6758();

  v15 = [v13 hxui_addCancelButton];
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v13;
}

uint64_t sub_1BA294D28(uint64_t a1, uint64_t a2)
{
  v36 = *v2;
  v3 = v36;
  v4 = *(v36 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v35 = &v35 - v6;
  v7 = sub_1BA4A7AA8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v39 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v43 = &v35 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v40 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v15);
  v17 = &v35 - v16;
  v18 = *(v3 + 144);
  v19 = *(v3 + 152);
  swift_beginAccess();
  v41 = TupleTypeMetadata2;
  v42 = v8;
  v20 = *(TupleTypeMetadata2 + 48);
  v21 = *(v8 + 16);
  v21(v17, &v2[v18], v7);
  v38 = v19;
  v21(&v17[v20], &v2[v19], v7);
  v22 = v5;
  v23 = *(v5 + 48);
  v24 = v23(v17, 1, v4);
  v37 = v21;
  if (v24 == 1)
  {
    if (v23(&v17[v20], 1, v4) == 1)
    {
      v25 = *(v42 + 8);
      v25(v17, v7);
      goto LABEL_9;
    }

    return (*(v40 + 8))(v17, v41);
  }

  v21(v43, v17, v7);
  if (v23(&v17[v20], 1, v4) == 1)
  {
    (*(v22 + 8))(v43, v4);
    return (*(v40 + 8))(v17, v41);
  }

  v27 = v2;
  v28 = v22;
  v29 = v35;
  (*(v22 + 32))(v35, &v17[v20], v4);
  v30 = v43;
  v31 = sub_1BA4A6728();
  v32 = *(v28 + 8);
  v32(v29, v4);
  v32(v30, v4);
  v25 = *(v42 + 8);
  result = (v25)(v17, v7);
  if ((v31 & 1) == 0)
  {
    return result;
  }

  v2 = v27;
LABEL_9:
  v33 = *(v2 + 10);
  v34 = v39;
  v37(v39, &v2[v38], v7);
  v33(v34);
  return (v25)(v34, v7);
}

uint64_t sub_1BA29518C()
{
  v1 = *v0;
  v2 = sub_1BA4A7AA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v11 - v5;
  v7 = *(v0 + 8);
  v8 = *(v1 + 152);
  swift_beginAccess();
  (*(v3 + 16))(v6, &v0[v8], v2);
  v9 = v7(v6);
  (*(v3 + 8))(v6, v2);
  return v9;
}

char *sub_1BA2952D8()
{

  v1 = *(*v0 + 144);
  v2 = sub_1BA4A7AA8();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + *(*v0 + 152), v2);
  return v0;
}

uint64_t sub_1BA2953B8()
{
  sub_1BA2952D8();

  return swift_deallocClassInstance();
}

uint64_t sub_1BA29546C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t sub_1BA295534(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v5 = *(*(v2 + 80) - 8);
  MEMORY[0x1EEE9AC00](a1, *(v2 + 80));
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v8;
  v9 = sub_1BA4A7AA8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v51 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v10);
  v52 = &v44 - v11;
  v12 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v50 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v54 = &v44 - v18;
  v56 = *a1;
  swift_getMetatypeMetadata();
  v19 = sub_1BA4A6808();
  v21 = v20;
  v56 = *a2;
  swift_getMetatypeMetadata();
  if (v19 == sub_1BA4A6808() && v21 == v22)
  {
  }

  else
  {
    v23 = sub_1BA4A8338();

    if ((v23 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if ((*(a1 + 4) != *(a2 + 4) || *(a1 + 5) != *(a2 + 5)) && (sub_1BA4A8338() & 1) == 0)
  {
    goto LABEL_16;
  }

  v45 = v7;
  v46 = v2;
  v24 = *(*a1 + 152);
  swift_beginAccess();
  v25 = v12;
  v26 = a2;
  v27 = *(v12 + 16);
  v47 = a1;
  v28 = &a1[v24];
  v29 = v54;
  v27(v54, v28, v9);
  v30 = *(*v26 + 152);
  swift_beginAccess();
  v31 = *(TupleTypeMetadata2 + 48);
  v32 = v52;
  v27(v52, v29, v9);
  v48 = v26;
  v27(&v32[v31], &v26[v30], v9);
  v49 = v5;
  v33 = *(v5 + 48);
  v34 = v53;
  if (v33(v32, 1, v53) != 1)
  {
    v36 = v50;
    v27(v50, v32, v9);
    if (v33(&v32[v31], 1, v34) != 1)
    {
      v37 = v49;
      v38 = v45;
      (*(v49 + 32))(v45, &v32[v31], v34);
      v39 = sub_1BA4A6728();
      v40 = *(v37 + 8);
      v40(v38, v34);
      v41 = *(v25 + 8);
      v41(v54, v9);
      v40(v36, v34);
      v41(v32, v9);
      if ((v39 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    (*(v25 + 8))(v54, v9);
    (*(v49 + 8))(v36, v34);
LABEL_13:
    (*(v51 + 8))(v32, TupleTypeMetadata2);
    goto LABEL_16;
  }

  v35 = *(v25 + 8);
  v35(v29, v9);
  if (v33(&v32[v31], 1, v34) != 1)
  {
    goto LABEL_13;
  }

  v35(v32, v9);
LABEL_15:
  if (v47[96] == v48[96])
  {
    v42 = v47[*(*v47 + 160)] ^ v48[*(*v48 + 160)] ^ 1;
    return v42 & 1;
  }

LABEL_16:
  v42 = 0;
  return v42 & 1;
}

uint64_t _s10Foundation14DateComponentsV18HealthExperienceUIE1loiySbAC_ACtFZ_0()
{
  v0 = sub_1BA4A1728();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2510F0(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F7B6A0(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v29 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v29 - v19;
  sub_1BA4A1128();
  sub_1BA4A1128();
  v21 = *(v5 + 56);
  sub_1BA246A0C(v20, v8);
  sub_1BA246A0C(v16, &v8[v21]);
  v22 = *(v1 + 48);
  if (v22(v8, 1, v0) == 1)
  {
    sub_1BA296094(v16, sub_1B9F7B6A0);
    sub_1BA296094(v20, sub_1B9F7B6A0);
    v23 = v22(&v8[v21], 1, v0);
    if (v23 == 1)
    {
      v24 = sub_1B9F7B6A0;
    }

    else
    {
      v24 = sub_1BA2510F0;
    }

    if (v23 == 1)
    {
      v25 = -1;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    sub_1BA246A0C(v8, v12);
    if (v22(&v8[v21], 1, v0) == 1)
    {
      sub_1BA296094(v16, sub_1B9F7B6A0);
      sub_1BA296094(v20, sub_1B9F7B6A0);
      (*(v1 + 8))(v12, v0);
      v25 = 0;
      v24 = sub_1BA2510F0;
    }

    else
    {
      v26 = v30;
      (*(v1 + 32))(v30, &v8[v21], v0);
      sub_1BA2960F4(&qword_1EBBEF228, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v25 = sub_1BA4A6728();
      v27 = *(v1 + 8);
      v27(v26, v0);
      sub_1BA296094(v16, sub_1B9F7B6A0);
      sub_1BA296094(v20, sub_1B9F7B6A0);
      v27(v12, v0);
      v24 = sub_1B9F7B6A0;
    }
  }

  sub_1BA296094(v8, v24);
  return v25 & 1;
}

uint64_t sub_1BA295EF4(uint64_t a1)
{
  result = sub_1BA4A7AA8();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BA295FD4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BA29602C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == MEMORY[0x1E69E6530])
  {
    v4 = type metadata accessor for HealthDetailsDemographicsCellWithPicker(0, MEMORY[0x1E69E6530], a2, a4);
  }

  else
  {
    v4 = type metadata accessor for HealthDetailsDemographicsCell(0, a1, a2, a4);
  }

  return static ReusableView.reuseIdentifier.getter(v4);
}

uint64_t sub_1BA296094(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA2960F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL sub_1BA29613C(uint64_t a1)
{
  sub_1B9F12538();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI28AllTrendsSectionedDataSource_trendingDataSource);
  v9 = qword_1EDC84AC8;
  swift_beginAccess();
  v10 = *(v4 + 16);
  v10(v7, v8 + v9, v3);
  v11 = sub_1BA4A4538();
  v12 = *(v4 + 8);
  v12(v7, v3);
  v13 = *(v11 + 16);

  if (v13)
  {
    return 1;
  }

  v15 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI28AllTrendsSectionedDataSource_notTrendingDataSource);
  v16 = qword_1EDC84AC8;
  swift_beginAccess();
  v10(v7, v15 + v16, v3);
  v17 = sub_1BA4A4538();
  v12(v7, v3);
  v18 = *(v17 + 16);

  return v18 != 0;
}

uint64_t sub_1BA2963BC()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA296558(void *a1, void *a2, unint64_t a3)
{
  v116 = a3;
  v5 = sub_1BA4A4428();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F1C048(0, &qword_1EDC6E330, MEMORY[0x1E69E6158]);
  v112 = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BA4B5460;
  *(v10 + 32) = sub_1BA4A21F8();
  *(v10 + 40) = v11;
  *(v10 + 48) = sub_1BA4A21E8();
  *(v10 + 56) = v12;
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v111 = qword_1EDC84A30;
  v13 = sub_1BA4A1318();
  v15 = v14;
  _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  v16 = type metadata accessor for HeaderItem(0);
  swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v13, v15, 0, 0, 0, 0, v8, 0, 0);
  v18 = v17;
  v19 = type metadata accessor for ListLayoutConfiguration(0);
  v20 = swift_allocBox();
  v22 = v21;
  if (qword_1EDC6CBB0 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v19, qword_1EDC6CBB8);
  sub_1B9F37E38(v23, v22);
  *(v22 + 152) = 0;
  *(v22 + 64) = 0;
  type metadata accessor for MutableArrayDataSourceWithLayout(0);
  sub_1B9F320F0(0);
  inited = swift_initStackObject();
  v117 = xmmword_1BA4B5480;
  *(inited + 16) = xmmword_1BA4B5480;
  *(inited + 32) = MEMORY[0x1E69E7CC0];

  v25 = MutableArrayDataSourceWithLayout.__allocating_init(_:collapseEmptySections:layoutConstructor:)(inited, 0, sub_1BA2986AC, v20);
  v120 = v16;
  v121 = sub_1BA011754();
  v119 = v18;
  sub_1B9F0A534(&v119, &v118);
  v26 = swift_allocObject();
  sub_1B9F1134C(&v118, v26 + 16);
  sub_1B9F32574(0, qword_1EDC693A8, type metadata accessor for Supplementary);
  v27 = swift_allocObject();
  v113 = v27;
  v27[4] = v25;
  v27[5] = sub_1B9F79BC8;
  v27[6] = v26;
  v28 = *(v25 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
  v29 = *(v25 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier + 8);
  v27[2] = v28;
  v27[3] = v29;

  __swift_destroy_boxed_opaque_existential_1(&v119);
  sub_1B9F0A534(a2, &v119);
  ResultsDataSource = type metadata accessor for AllTrendsSectionFetchResultsDataSource(0);
  v98 = objc_allocWithZone(ResultsDataSource);
  v30 = &v98[qword_1EBC09828];
  v31 = sub_1BA4A27B8();
  sub_1BA2984F8(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v106 = v32;
  v33 = sub_1BA4A1C68();
  *v30 = 0;
  *(v30 + 1) = 0;
  v104 = v33;
  v34 = *(v33 - 8);
  v115 = a2;
  v35 = v34;
  v107 = *(v34 + 72);
  v105 = *(v34 + 80);
  v36 = (v105 + 32) & ~v105;
  v101 = v36;
  v37 = swift_allocObject();
  *(v37 + 16) = v117;
  v103 = *MEMORY[0x1E69A3BA0];
  v102 = *(v35 + 104);
  v102(v37 + v36);
  sub_1B9F1C048(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58]);
  v100 = v38;
  v39 = swift_allocObject();
  *(v39 + 16) = v117;
  v92 = a1;
  v40 = v116;

  *(v39 + 32) = sub_1BA4A6F38();
  v91 = v31;
  v41 = MEMORY[0x1BFAED010](v37, v10, 2, v39);
  v110 = v20;
  v42 = v41;

  sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
  v93 = v43;
  v44 = swift_allocObject();
  v99 = xmmword_1BA4B7510;
  *(v44 + 16) = xmmword_1BA4B7510;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0, 0x1E696AEB0);
  swift_getKeyPath();
  *(v44 + 32) = sub_1BA4A71B8();
  swift_getKeyPath();
  *(v44 + 40) = sub_1BA4A71B8();
  v45 = swift_allocObject();
  v97 = xmmword_1BA4B5470;
  *(v45 + 16) = xmmword_1BA4B5470;
  *(v45 + 32) = v42;
  *&v118 = v45;
  v46 = v42;
  sub_1B9F33948(v40);
  v96 = sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
  v47 = sub_1BA4A6AE8();

  v95 = objc_opt_self();
  v48 = [v95 andPredicateWithSubpredicates_];

  v49 = v48;
  v50 = sub_1BA4A26C8();

  v51 = sub_1BA4A6AE8();
  v109 = v18;
  v52 = v51;

  [v50 setSortDescriptors_];

  __swift_project_boxed_opaque_existential_1(&v119, v120);
  v53 = v50;
  v54 = sub_1BA4A1B68();
  v55 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v53 managedObjectContext:v54 sectionNameKeyPath:0 cacheName:0];

  v56 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v55);
  v57 = v92;

  __swift_destroy_boxed_opaque_existential_1(&v119);
  v58 = OBJC_IVAR____TtC18HealthExperienceUI28AllTrendsSectionedDataSource_trendingDataSource;
  v59 = v114;
  *(v114 + OBJC_IVAR____TtC18HealthExperienceUI28AllTrendsSectionedDataSource_trendingDataSource) = v56;
  v60 = sub_1BA298158();
  v98 = v60;
  v61 = *(v59 + v58);
  sub_1BA29843C(0);
  swift_allocObject();
  v62 = v61;
  v94 = sub_1BA064364(v62, v60);

  sub_1B9F0A534(v115, &v119);
  v63 = swift_allocObject();
  *(v63 + 16) = v117;
  v112 = v57;
  *(v63 + 32) = sub_1BA4A2208();
  *(v63 + 40) = v64;
  v65 = sub_1BA4A1318();
  v67 = v66;
  v68 = objc_allocWithZone(ResultsDataSource);
  v69 = &v68[qword_1EBC09828];
  *v69 = v65;
  v69[1] = v67;
  v70 = v101;
  v71 = swift_allocObject();
  *(v71 + 16) = v117;
  (v102)(v71 + v70, v103, v104);
  v72 = swift_allocObject();
  *(v72 + 16) = v117;
  *(v72 + 32) = sub_1BA4A6F38();
  v73 = MEMORY[0x1BFAED010](v71, v63, 2, v72);

  v74 = swift_allocObject();
  *(v74 + 16) = v99;
  swift_getKeyPath();
  *(v74 + 32) = sub_1BA4A71B8();
  swift_getKeyPath();
  *(v74 + 40) = sub_1BA4A71B8();
  v75 = swift_allocObject();
  *(v75 + 16) = v97;
  *(v75 + 32) = v73;
  *&v118 = v75;
  v76 = v73;
  sub_1B9F33948(v116);
  v77 = sub_1BA4A6AE8();

  v78 = [v95 andPredicateWithSubpredicates_];

  v79 = v78;
  v80 = sub_1BA4A26C8();

  v81 = sub_1BA4A6AE8();

  [v80 setSortDescriptors_];

  __swift_project_boxed_opaque_existential_1(&v119, v120);
  v82 = v80;
  v83 = sub_1BA4A1B68();
  v84 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v82 managedObjectContext:v83 sectionNameKeyPath:0 cacheName:0];

  v85 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v84);
  v86 = v112;

  __swift_destroy_boxed_opaque_existential_1(&v119);
  *(v59 + OBJC_IVAR____TtC18HealthExperienceUI28AllTrendsSectionedDataSource_notTrendingDataSource) = v85;
  sub_1B9F1DEA0(0);
  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_1BA4B9FD0;
  *(v87 + 32) = v113;
  *(v87 + 40) = &protocol witness table for Supplementary<A>;
  *(v87 + 48) = v94;
  *(v87 + 56) = &protocol witness table for PrimarySecondaryDataSource<A, B>;
  *(v87 + 64) = v85;
  *(v87 + 72) = &protocol witness table for FetchedResultsControllerDataSource<A>;
  v88 = v85;
  v89 = CompoundSectionedDataSource.init(_:)(v87);

  __swift_destroy_boxed_opaque_existential_1(v115);

  return v89;
}

void *sub_1BA297138(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = type metadata accessor for ListLayoutConfiguration(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_projectBox();
  swift_beginAccess();
  sub_1B9F37E38(v8, v7);
  v9 = ListLayoutConfiguration.layout(for:)(a2);
  sub_1BA047354(v7);
  return v9;
}

void sub_1BA297248()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI28AllTrendsSectionedDataSource_notTrendingDataSource);
}

uint64_t sub_1BA297288()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1BA297358()
{
  sub_1BA297288();

  return swift_deallocClassInstance();
}

uint64_t sub_1BA297420@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 relevantStartDate];
  if (v3)
  {
    v4 = v3;
    sub_1BA4A16F8();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1BA4A1728();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_1BA2974C4(uint64_t a1, void **a2)
{
  sub_1BA2984F8(0, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v12 - v6;
  sub_1BA246A0C(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_1BA4A1728();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_1BA4A16B8();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setRelevantStartDate_];
}

void sub_1BA297614(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 localizedTitle];
  if (v3)
  {
    v4 = v3;
    v5 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1BA29767C(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = sub_1BA4A6758();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setLocalizedTitle_];
}

__int128 *sub_1BA2976EC(__int128 *a1)
{
  v3 = v1;
  v10 = *a1;
  v4 = *(a1 + 2);
  static GridLayoutEngine.largeCard.getter(&v18);
  v16 = v10;
  v17 = v4;
  v5 = &v18;
  v6 = GridLayoutEngine.layout(for:)(&v16);
  if (v2)
  {
    v13 = v20;
    v14 = v21;
    v15 = v22;
    v11 = v18;
    v12 = v19;
    sub_1B9F5A690(&v11);
  }

  else
  {
    v5 = v6;
    v13 = v20;
    v14 = v21;
    v15 = v22;
    v11 = v18;
    v12 = v19;
    sub_1B9F5A690(&v11);
    if (*(v3 + qword_1EBC09828 + 8))
    {
      v7 = [objc_opt_self() estimatedDimension_];
      v8 = sub_1B9F5CA58(v7, 2);

      return v8;
    }
  }

  return v5;
}

id sub_1BA29784C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AllTrendsSectionFetchResultsDataSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1BA297904@<X0>(void *a1@<X8>)
{
  v3 = sub_1BA4A4428();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*v1 + qword_1EBC09828);
  if (v7[1])
  {
    v8 = *v7;
    v9 = v7[1];
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  v10 = type metadata accessor for HeaderItem(0);
  swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v8, v9, 0, 0, 0, 0, v6, 0, 0);
  v12 = v11;
  a1[3] = v10;
  result = sub_1BA011754();
  a1[4] = result;
  *a1 = v12;
  return result;
}

void sub_1BA297A34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1B9F0D9AC(255, &qword_1EDC6AD50, MEMORY[0x1E69A3310], 1);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1BA297AC0(void *a1, void *a2, char *a3)
{
  v48 = sub_1BA4A1798();
  v47 = *(v48 - 8);
  *&v7 = MEMORY[0x1EEE9AC00](v48, v6).n128_u64[0];
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a3;
  v11 = [a1 profileIdentifier];
  LOBYTE(v54) = v10;
  v12 = _s18HealthExperienceUI18DataTypeDetailModeO07defaultG03for12presentationACSo19HKProfileIdentifierC_AA12PresentationOSgtFZ_0(v11, &v54);

  if (v12 > 2u)
  {
  }

  else
  {
    v13 = sub_1BA4A8338();

    if ((v13 & 1) == 0)
    {
      v46 = 0;
      goto LABEL_6;
    }
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v14 = sub_1BA4A1B68();
  v15 = [a1 profileIdentifier];
  v16 = [v15 identifier];

  sub_1BA4A1778();
  type metadata accessor for SharingEntryProfileInformationDataSource(0);
  swift_allocObject();
  v46 = sub_1BA19BEB8(v14, v9, 0, 0, 0, 0);
LABEL_6:
  v50 = a2;
  v17 = objc_opt_self();
  v18 = [v17 configurationWithPointSize_];
  v19 = [v17 configurationPreferringMulticolor];
  v20 = [v18 configurationByApplyingConfiguration_];

  v21 = v20;
  v22 = sub_1BA4A6758();
  v23 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v24 = sub_1BA4A1318();
  v26 = v25;
  v27 = sub_1BA4A1318();
  v29 = v28;
  *&v54 = type metadata accessor for CenteredIconDescriptionCollectionViewCell();
  sub_1BA29855C(0, &qword_1EBBE9E10, type metadata accessor for CenteredIconDescriptionCollectionViewCell);
  *&v54 = sub_1BA4A6808();
  *(&v54 + 1) = v30;
  *&v55 = v23;
  *(&v55 + 1) = v24;
  *&v56 = v26;
  *(&v56 + 1) = v27;
  v58 = 0;
  v57 = v29;
  sub_1BA2985A8(&v54, &v51);
  v31 = MEMORY[0x1E69E7CC0];
  v32 = sub_1BA27EFB4(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v34 = v32[2];
  v33 = v32[3];
  if (v34 >= v33 >> 1)
  {
    v32 = sub_1BA27EFB4((v33 > 1), v34 + 1, 1, v32);
  }

  v52 = &type metadata for CenteredIconDescriptionItem;
  v53 = sub_1BA298604();
  v35 = swift_allocObject();
  *&v51 = v35;
  v36 = v57;
  *(v35 + 48) = v56;
  *(v35 + 64) = v36;
  *(v35 + 80) = v58;
  v37 = v55;
  *(v35 + 16) = v54;
  *(v35 + 32) = v37;
  v32[2] = v34 + 1;
  sub_1B9F1134C(&v51, &v32[5 * v34 + 4]);
  *(v49 + OBJC_IVAR____TtC18HealthExperienceUI25AllTrendsHeaderDataSource_sharingEntryDataSource) = v46;
  sub_1B9F1C048(0, &qword_1EDC5DC90, &type metadata for ArrayDataSourceSection);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;

  v39 = sub_1B9FE4F98(v32);

  sub_1BA4A1788();
  v40 = sub_1BA4A1748();
  v42 = v41;
  (*(v47 + 8))(v9, v48);
  *(inited + 48) = v31;
  *(inited + 56) = sub_1B9F1C5F0(v31);
  *(inited + 32) = 0;
  *(inited + 40) = 0;

  *(inited + 48) = v39;
  v43 = Array<A>.identifierToIndexDict()(v39);

  *(inited + 56) = v43;
  *(inited + 64) = v40;
  *(inited + 72) = v42;
  v44 = sub_1B9F1DAFC(inited, 1, sub_1B9F5AEA0, 0);

  sub_1BA298658(&v54);

  __swift_destroy_boxed_opaque_existential_1(v50);
  return v44;
}

void *sub_1BA298158()
{
  v0 = type metadata accessor for ListLayoutConfiguration(0);
  v1 = swift_allocBox();
  v3 = v2;
  if (qword_1EDC6CB88 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_1EDC6CB90);
  sub_1B9F37E38(v4, v3);
  if (qword_1EDC6D268 != -1)
  {
    swift_once();
  }

  *(v3 + 64) = xmmword_1EDC6D270;
  type metadata accessor for MutableArrayDataSourceWithLayout(0);
  sub_1B9F320F0(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  sub_1BA297A34(0, &qword_1EDC5DCA0, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BA4B5480;
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v7 = sub_1BA4A1318();
  v9 = v8;
  *(v6 + 56) = &type metadata for TitleEmptyStateCollectionViewCellItem;
  *(v6 + 64) = sub_1B9F2F068();
  v10 = swift_allocObject();
  *(v6 + 32) = v10;
  type metadata accessor for TitleEmptyStateCollectionViewCell();
  sub_1BA29855C(0, qword_1EDC6BBE0, type metadata accessor for TitleEmptyStateCollectionViewCell);
  v10[2] = sub_1BA4A6808();
  v10[3] = v11;
  v10[4] = v7;
  v10[5] = v9;
  *(inited + 32) = v6;

  v12 = MutableArrayDataSourceWithLayout.__allocating_init(_:collapseEmptySections:layoutConstructor:)(inited, 1, sub_1BA2984DC, v1);
  sub_1B9F32574(0, &qword_1EDC69040, type metadata accessor for CellRegistering);
  v13 = swift_allocObject();
  v13[4] = v12;
  v13[5] = sub_1BA2971F4;
  v13[6] = 0;
  v15 = *(v12 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
  v14 = *(v12 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier + 8);

  v13[2] = v15;
  v13[3] = v14;
  return v13;
}

void sub_1BA29843C(uint64_t a1)
{
  if (!qword_1EBBEFCB0)
  {
    ResultsDataSource = type metadata accessor for AllTrendsSectionFetchResultsDataSource(255);
    sub_1B9F32574(255, &qword_1EDC69040, type metadata accessor for CellRegistering);
    v6[0] = ResultsDataSource;
    v6[1] = v3;
    v6[2] = &protocol witness table for FetchedResultsControllerDataSource<A>;
    v6[3] = &protocol witness table for CellRegistering<A>;
    v4 = type metadata accessor for PrimarySecondaryDataSource(a1, v6);
    if (!v5)
    {
      atomic_store(v4, &qword_1EBBEFCB0);
    }
  }
}

void sub_1BA2984F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA29855C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1BA298604()
{
  result = qword_1EBBEFCB8;
  if (!qword_1EBBEFCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEFCB8);
  }

  return result;
}

uint64_t static DirectSearchResult.empty()@<X0>(uint64_t a2@<X8>)
{
  sub_1BA4A1788();
  result = type metadata accessor for DirectSearchResult(0);
  *(a2 + *(result + 20)) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t DirectSearchResult.init(sections:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BA4A1788();
  result = type metadata accessor for DirectSearchResult(0);
  *(a2 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_1BA298754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[26] = a3;
  v4[27] = v3;
  v4[24] = a1;
  v4[25] = a2;
  v4[28] = *v3;
  v5 = sub_1BA4A3EA8();
  v4[29] = v5;
  v4[30] = *(v5 - 8);
  v4[31] = swift_task_alloc();
  v4[32] = type metadata accessor for DirectSearchResult(0);
  v4[33] = swift_task_alloc();
  v6 = sub_1BA4A3CD8();
  v4[34] = v6;
  v4[35] = *(v6 - 8);
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BA2988D8, 0, 0);
}

uint64_t sub_1BA2988D8()
{
  v26 = v0;
  sub_1BA4A3CC8();
  v1 = sub_1BA4A3CF8();
  v2 = sub_1BA4A7418();
  if (sub_1BA4A7A68())
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = sub_1BA4A3CB8();
    _os_signpost_emit_with_name_impl(&dword_1B9F07000, v1, v2, v4, "PluginSearch", "", v3, 2u);
    MEMORY[0x1BFAF43A0](v3, -1, -1);
  }

  v5 = *(v0 + 288);
  v6 = *(v0 + 296);
  v7 = *(v0 + 272);
  v8 = *(v0 + 280);
  v9 = *(v0 + 216);

  (*(v8 + 16))(v5, v6, v7);
  sub_1BA4A3D48();
  swift_allocObject();
  *(v0 + 304) = sub_1BA4A3D38();
  (*(v8 + 8))(v6, v7);
  sub_1B9F12138(v9 + OBJC_IVAR____TtC18HealthExperienceUI26PluginSearchResultProvider_searchResultProvider, v0 + 120, sub_1B9F14FAC);
  if (*(v0 + 144))
  {
    sub_1B9F1134C((v0 + 120), v0 + 80);
    swift_weakInit();

    return MEMORY[0x1EEE6DFA0](sub_1BA298C60, 0, 0);
  }

  else
  {
    sub_1B9F15018(v0 + 120, sub_1B9F14FAC);
    sub_1BA4A3E18();
    v10 = sub_1BA4A3E88();
    v11 = sub_1BA4A6FA8();
    v12 = os_log_type_enabled(v10, v11);
    v14 = *(v0 + 240);
    v13 = *(v0 + 248);
    v15 = *(v0 + 232);
    if (v12)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25 = v17;
      *v16 = 136315138;
      v18 = sub_1BA4A85D8();
      v20 = sub_1B9F0B82C(v18, v19, &v25);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1B9F07000, v10, v11, "[%s] returning empty results because search plugin did not load", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1BFAF43A0](v17, -1, -1);
      MEMORY[0x1BFAF43A0](v16, -1, -1);
    }

    (*(v14 + 8))(v13, v15);
    v21 = *(v0 + 256);
    v22 = *(v0 + 192);
    sub_1BA4A1788();
    *(v22 + *(v21 + 20)) = MEMORY[0x1E69E7CC0];
    sub_1BA298FC4(*(v0 + 216), *(v0 + 304));

    v23 = *(v0 + 8);

    return v23();
  }
}