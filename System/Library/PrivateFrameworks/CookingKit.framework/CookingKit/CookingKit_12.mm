void *sub_21A25D65C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21A25E080(a1, a2, a3, *v3, &qword_27CCFFBD8, &unk_21A30CC90, type metadata accessor for InTextCountdownTimer);
  *v3 = result;
  return result;
}

void *sub_21A25D6A0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21A25E080(a1, a2, a3, *v3, &qword_27CD034B0, &qword_21A30CC48, MEMORY[0x277CC9260]);
  *v3 = result;
  return result;
}

char *sub_21A25D6E4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21A25DE5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21A25D704(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21A25E080(a1, a2, a3, *v3, &qword_27CCFFA88, &unk_21A2FD868, type metadata accessor for IngredientsViewModel.Ingredient);
  *v3 = result;
  return result;
}

void *sub_21A25D748(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21A25E080(a1, a2, a3, *v3, &qword_27CCFF0A8, &qword_21A2FB638, type metadata accessor for CookingSession);
  *v3 = result;
  return result;
}

char *sub_21A25D78C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21A25DF68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21A25D7AC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21A25E080(a1, a2, a3, *v3, &qword_27CCFFCC0, &unk_21A30CDF0, type metadata accessor for InstructionsViewModel.Instruction);
  *v3 = result;
  return result;
}

void *sub_21A25D7F0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21A25E080(a1, a2, a3, *v3, &qword_27CCFFCB8, &qword_21A30CDE0, type metadata accessor for SubStepTextElement);
  *v3 = result;
  return result;
}

char *sub_21A25D834(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21A25E25C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21A25D854(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21A25E368(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21A25D874(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21A25E474(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21A25D894(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21A25E578(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21A25D8B4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21A25E9DC(a1, a2, a3, *v3, &qword_27CD035E8, &qword_21A30CE00, &type metadata for GroceriesIngredient);
  *v3 = result;
  return result;
}

void *sub_21A25D8EC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21A25E67C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21A25D90C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21A25E7B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21A25D92C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21A25E8C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21A25D94C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21A25E9DC(a1, a2, a3, *v3, &qword_27CD03538, &qword_21A30CCF8, &type metadata for ExternalRecipeIngredient);
  *v3 = result;
  return result;
}

char *sub_21A25D984(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21A25EB0C(a1, a2, a3, *v3, &qword_27CD035D0, &qword_21A30CDC8);
  *v3 = result;
  return result;
}

char *sub_21A25D9B4(char *result, int64_t a2, char a3, char *a4)
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
    sub_21A176C98(&qword_27CCFFBC0, &qword_21A30C970);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_21A25DAC0(char *result, int64_t a2, char a3, char *a4)
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
    sub_21A176C98(&qword_27CCFFBC8, &qword_21A2FDF58);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21A25DBE0(char *result, int64_t a2, char a3, char *a4)
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
    sub_21A176C98(&qword_27CCFFC80, &unk_21A30CC50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_21A25DD00(char *result, int64_t a2, char a3, char *a4)
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
    sub_21A176C98(&qword_27CCFFBE0, &qword_21A2FDF60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_21A25DE5C(char *result, int64_t a2, char a3, char *a4)
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
    sub_21A176C98(&qword_27CD03480, &qword_21A30CC18);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_21A25DF68(char *result, int64_t a2, char a3, char *a4)
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
    sub_21A176C98(&qword_27CD035E0, &qword_21A30CDE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 56 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

void *sub_21A25E080(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_21A176C98(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
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

char *sub_21A25E25C(char *result, int64_t a2, char a3, char *a4)
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
    sub_21A176C98(&qword_27CD03540, &unk_21A30CD10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_21A25E368(char *result, int64_t a2, char a3, char *a4)
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
    sub_21A176C98(&qword_27CD02CB0, &qword_21A309F18);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21A25E474(char *result, int64_t a2, char a3, char *a4)
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
    sub_21A176C98(&qword_27CD035F8, qword_21A30CE10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_21A25E578(char *result, int64_t a2, char a3, char *a4)
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
    sub_21A176C98(&qword_27CD035F0, &qword_21A30CE08);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

void *sub_21A25E67C(void *result, int64_t a2, char a3, void *a4)
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
    sub_21A176C98(&qword_27CD03588, &unk_21A30CD60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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
    sub_21A176C98(&qword_27CD03438, &qword_21A30C9A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21A25E7B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_21A176C98(&qword_27CD035A0, &qword_21A30CD98);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_21A25E8C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_21A176C98(&qword_27CCFFC70, &unk_21A30CD00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21A25E9DC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
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
    sub_21A176C98(a5, a6);
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 24);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[24 * v11])
    {
      memmove(v15, v16, 24 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_21A25EB0C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    sub_21A176C98(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 40);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  v16 = 40 * v10;
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

unint64_t sub_21A25EC14(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_21A2F7A54();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x21CED64C0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void (*sub_21A25EC90(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x21CED6AE0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_21A25ED10;
  }

  __break(1u);
  return result;
}

void *sub_21A25ED18(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_21A2F8164();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_21A188C94(v3, 0);
  sub_21A25EDAC((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_21A25EDAC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21A2F8164();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_21A2F8164();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21A261BF4();
          for (i = 0; i != v6; ++i)
          {
            sub_21A176C98(&qword_27CD03558, &qword_21A30CD38);
            v9 = sub_21A25EC90(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_21A261B38();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

__n128 sub_21A25EF2C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_21A176C98(&qword_27CCFF098, &qword_21A2FB628);
  MEMORY[0x28223BE20](v8 - 8, v9);
  sub_21A183960(a3, &v13 - v10, &qword_27CCFF098, &qword_21A2FB628);
  v11 = sub_21A18B8F8(&v14, a1, a2);
  result = v15;
  *a4 = v14;
  *(a4 + 8) = result;
  *(a4 + 24) = v11;
  return result;
}

uint64_t sub_21A25F010@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_21A2F8004();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_21A25F060(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A2F4A64();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21A2F7894();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1;
  v42 = a2;
  sub_21A2F5434();
  sub_21A2F7884();
  sub_21A2F4A54();
  sub_21A2F7934(v11, 0, 0, 0, v7, "The title of the toast confirmation after the user adds ingredients to their grocery list.", 90, 2);
  sub_21A2F7884();
  sub_21A2F4A54();
  sub_21A2F7934(v11, 0, 0, 0, v7, "The subtitle of the toast confirmation to open the Reminders app after the user adds ingredients to their grocery list.", 119, 2);
  v12 = objc_allocWithZone(MEMORY[0x277CEE8F8]);
  v13 = sub_21A2F78A4();

  v14 = sub_21A2F78A4();

  v15 = [v12 initWithTitle:v13 message:v14];

  v16 = v15;
  [v16 setStyle_];
  CookingConfirmationToast.iconImage.getter();
  v18 = v17;
  [v16 setIconImage_];

  v19 = sub_21A2F78A4();
  v20 = [objc_opt_self() actionWithTitle:0 identifier:v19];

  [v20 setStyle_];
  [v16 addButtonAction_];
  v21 = [objc_allocWithZone(MEMORY[0x277CEE930]) initWithRequest_];

  v22 = [objc_allocWithZone(MEMORY[0x277CEE920]) init];
  v23 = [objc_opt_self() configurationWithPointSize:6 weight:36.0];
  [v22 setImageSymbolConfiguration_];

  v24 = objc_opt_self();
  v25 = [v24 labelColor];
  [v22 setAccessoryButtonColor_];

  v26 = [v24 clearColor];
  [v22 setAccessoryButtonBackgroundColor_];

  v27 = [objc_opt_self() systemFontOfSize:15.0 weight:*MEMORY[0x277D74410]];
  [v22 setAccessoryButtonFont_];

  [v21 setPreferredAppearance_];
  v29 = v41;
  v28 = v42;
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  *(v30 + 24) = v28;
  v31 = type metadata accessor for ClosureTapGestureRecognizer();
  v32 = objc_allocWithZone(v31);
  v33 = &v32[OBJC_IVAR____TtC10CookingKitP33_371E4750EAD71236DF383F3B5E5C07E127ClosureTapGestureRecognizer_action];
  *v33 = sub_21A261B30;
  v33[1] = v30;
  v40.receiver = v32;
  v40.super_class = v31;

  sub_21A2F5434();
  v34 = objc_msgSendSuper2(&v40, sel_initWithTarget_action_, 0, 0);
  [v34 addTarget:v34 action:sel_handleTap];
  v35 = v21;
  result = [v35 view];
  if (result)
  {
    v37 = result;
    [result addGestureRecognizer_];

    result = [v35 view];
    if (result)
    {
      v38 = result;

      [v38 setUserInteractionEnabled_];

      return v35;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_21A25F594(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_21A176C98(&qword_27CD03470, &unk_21A30E7B0);
    v3 = sub_21A2F8194();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_21A25A53C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_21A25F674(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CD03488, &unk_21A30CC20);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v25 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_21A176C98(&qword_27CD03490, &unk_21A30E7C0);
    v8 = sub_21A2F8194();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_21A183960(v10, v6, &qword_27CD03488, &unk_21A30CC20);
      v12 = *(v6 + 1);
      v25[0] = *v6;
      v25[1] = v12;
      v25[2] = *(v6 + 2);
      result = sub_21A25A410(v25);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v8[6] + 48 * result;
      v17 = *(v6 + 1);
      v18 = *(v6 + 1);
      v19 = *(v6 + 2);
      *v16 = *v6;
      *(v16 + 8) = v17;
      *(v16 + 16) = v18;
      *(v16 + 32) = v19;
      v20 = v8[7];
      v21 = type metadata accessor for RecipeTimer(0);
      result = sub_21A261A6C(&v6[v9], v20 + *(*(v21 - 8) + 72) * v15, type metadata accessor for RecipeTimer);
      v22 = v8[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_10;
      }

      v8[2] = v24;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_21A25F87C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_21A176C98(&qword_27CD03478, &qword_21A30CC10);
    v3 = sub_21A2F8194();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;
      sub_21A2F5434();
      result = sub_21A25A4C4(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = (v3[7] + 24 * result);
      *v13 = v7;
      v13[1] = v8;
      v13[2] = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

void *sub_21A25F9B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F98];
  }

  sub_21A176C98(a2, a3);
  v5 = sub_21A2F8194();
  LOBYTE(v6) = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = sub_21A25A53C(v6);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_21A2F5434();
    return v5;
  }

  v10 = v8;
  result = v7;
  v12 = (a1 + 56);
  while (1)
  {
    *(v5 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v5[6] + v10) = v6;
    *(v5[7] + 8 * v10) = result;
    v13 = v5[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v5[2] = v15;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v16 = v12 + 2;
    v6 = *(v12 - 8);
    v17 = *v12;
    sub_21A2F5434();
    v10 = sub_21A25A53C(v6);
    v12 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_21A25FAC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_21A176C98(&qword_27CD034B8, &qword_21A30CC70);
    v3 = sub_21A2F8194();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_21A2F5434();
      result = sub_21A25A4C4(v5, v6);
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

unint64_t sub_21A25FBC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_21A176C98(&qword_27CD034C0, &qword_21A30CC78);
    v3 = sub_21A2F8194();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;
      sub_21A2F5434();
      sub_21A2F5434();
      result = sub_21A25A4C4(v5, v6);
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

uint64_t sub_21A25FCD8(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_21A25FD90(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_21A2F45B4();
      swift_allocObject();
      sub_21A2F4584();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_21A2F47C4();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_21A25FE30(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_21A2F45B4();
  swift_allocObject();
  result = sub_21A2F4564();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_21A2F47C4();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_21A25FEAC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_21A2F45B4();
  swift_allocObject();
  result = sub_21A2F4564();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_21A25FF30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_21A176C98(&qword_27CD035A8, &qword_21A30CDA0);
    v3 = sub_21A2F8194();
    v4 = a1 + 32;

    while (1)
    {
      sub_21A183960(v4, &v11, &qword_27CD035B0, &qword_21A30CDA8);
      v5 = v11;
      result = sub_21A25A5A4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_21A261578(&v12, (v3[7] + 32 * result));
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

unint64_t sub_21A260058(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_21A176C98(&qword_27CD03568, &unk_21A30CD40);
    v3 = sub_21A2F8194();
    v4 = a1 + 32;

    while (1)
    {
      sub_21A183960(v4, v13, &qword_27CD03440, &qword_21A30C9A8);
      result = sub_21A25A638(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_21A261578(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_21A260194(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_21A176C98(&qword_27CD035B8, &qword_21A30CDB0);
    v3 = sub_21A2F8194();
    for (i = (a1 + 56); ; i = (i + 56))
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v15 = i[1];
      v16 = *i;
      result = sub_21A25A67C(v5, v6, v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 24 * result);
      *v10 = v5;
      v10[1] = v6;
      v10[2] = v7;
      v11 = (v3[7] + 32 * result);
      *v11 = v16;
      v11[1] = v15;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_21A2602A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_21A176C98(&qword_27CD035D8, &qword_21A30CDD8);
    v3 = sub_21A2F8194();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v14 = i[1];
      v15 = *i;
      sub_21A2F5434();
      result = sub_21A25A4C4(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      *v10 = v15;
      v10[1] = v14;
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

unint64_t sub_21A2603B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_21A176C98(&qword_27CD03410, &qword_21A30C978);
    v3 = sub_21A2F8194();
    v4 = a1 + 32;

    while (1)
    {
      sub_21A183960(v4, &v13, &qword_27CD03418, &qword_21A30C980);
      v5 = v13;
      v6 = v14;
      result = sub_21A25A4C4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_21A261578(&v15, (v3[7] + 32 * result));
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

unint64_t sub_21A2604E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_21A176C98(&qword_27CD034E8, &qword_21A30CCB0);
    v3 = sub_21A2F8194();
    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 8);
      v9 = *i;
      result = sub_21A25A7EC(v5, v6, v7, v8);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = v3[6] + 32 * result;
      *v12 = v5;
      *(v12 + 8) = v6;
      *(v12 + 16) = v7;
      *(v12 + 24) = v8;
      *(v3[7] + 8 * result) = v9;
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

uint64_t sub_21A2605F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A2F4524();
  v39 = *(v4 - 8);
  v40 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21A176C98(&qword_27CCFEA80, &unk_21A2FD6C0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v41 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v37 - v13;
  v15 = sub_21A2F4794();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v42 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v37 - v21;
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v37 - v25;
  sub_21A2F4774();
  v38 = *(v16 + 48);
  result = v38(v14, 1, v15);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v28 = v14;
    v29 = *(v16 + 32);
    v29(v26, v28, v15);
    if (a2)
    {
      v43 = a1;
      v44 = a2;
      sub_21A2F44F4();
      sub_21A1834FC();
      v30 = sub_21A2F7EE4();
      v32 = v31;
      (*(v39 + 8))(v7, v40);
      v43 = v30;
      v44 = v32;
      MEMORY[0x21CED6480](0x746E65746E6F632FLL, 0xE900000000000073);
      v33 = v41;
      sub_21A2F4774();

      v34 = v38;
      if (v38(v33, 1, v15) == 1)
      {
        v35 = v42;
        (*(v16 + 16))(v42, v26, v15);
        if (v34(v33, 1, v15) != 1)
        {
          sub_21A1427A8(v33, &qword_27CCFEA80, &unk_21A2FD6C0);
        }
      }

      else
      {
        v35 = v42;
        v29(v42, v33, v15);
      }

      v29(v22, v35, v15);
    }

    else
    {
      (*(v16 + 16))(v22, v26, v15);
    }

    sub_21A294A20(v22, 0xD000000000000013, 0x800000021A319BF0);
    v36 = *(v16 + 8);
    v36(v22, v15);
    return (v36)(v26, v15);
  }

  return result;
}

uint64_t sub_21A260A1C(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3)
{
  v59 = a2;
  v60 = a3;
  v69 = a1;
  v3 = sub_21A2F4AA4();
  v62 = *(v3 - 8);
  v63 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v61 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21A176C98(&qword_27CCFF048, &qword_21A2FB5E0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v64 = &v57 - v8;
  v9 = sub_21A2F4AB4();
  v66 = *(v9 - 8);
  v67 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21A2F49B4();
  v68 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v65 = &v57 - v19;
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v57 - v22;
  v24 = sub_21A176C98(&qword_27CD004F8, &qword_21A3003A0);
  MEMORY[0x28223BE20](v24 - 8, v25);
  v27 = &v57 - v26;
  v28 = type metadata accessor for ExportToGroceryListUtility.RemindersListDetails(0);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v30);
  v32 = &v57 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A183960(v69, v27, &qword_27CD004F8, &qword_21A3003A0);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_21A1427A8(v27, &qword_27CD004F8, &qword_21A3003A0);
  }

  else
  {
    sub_21A261A6C(v27, v32, type metadata accessor for ExportToGroceryListUtility.RemindersListDetails);
    v33 = *(v28 + 20);
    v34 = v68;
    v35 = *(v68 + 16);
    v58 = v32;
    v35(v23, &v32[v33], v13);
    sub_21A2F4A94();
    v37 = v61;
    v36 = v62;
    v38 = v63;
    (*(v62 + 104))(v61, *MEMORY[0x277CC9968], v63);
    sub_21A2F49A4();
    v39 = v64;
    sub_21A2F4A74();
    v69 = *(v34 + 8);
    v57 = v34 + 8;
    v69(v16, v13);
    (*(v36 + 8))(v37, v38);
    v40 = *(v34 + 48);
    v41 = v12;
    v42 = v23;
    if (v40(v39, 1, v13) == 1)
    {
      v43 = v65;
      sub_21A2F4934();
      if (v40(v39, 1, v13) != 1)
      {
        sub_21A1427A8(v39, &qword_27CCFF048, &qword_21A2FB5E0);
      }
    }

    else
    {
      v43 = v65;
      (*(v68 + 32))(v65, v39, v13);
    }

    v44 = sub_21A2F4944();
    v45 = v58;
    if (v44)
    {
      v46 = v69;
      v69(v43, v13);
      (*(v66 + 8))(v12, v67);
      v46(v42, v13);
      sub_21A261730(v45);
      return 1;
    }

    if (qword_27CCFE7A0 != -1)
    {
      swift_once();
    }

    v48 = sub_21A2F53E4();
    sub_21A177CBC(v48, qword_27CD23C20);
    v49 = v60;
    sub_21A2F5434();
    v50 = sub_21A2F53C4();
    v51 = sub_21A2F7DC4();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = v43;
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v70 = v54;
      *v53 = 136315138;
      *(v53 + 4) = sub_21A25B5DC(v59, v49, &v70);
      _os_log_impl(&dword_21A137000, v50, v51, "Recipe %s has associated reminders, but latest one is older than 7 days. Returning false to reset state.", v53, 0xCu);
      sub_21A142808(v54);
      MEMORY[0x21CED7BA0](v54, -1, -1);
      MEMORY[0x21CED7BA0](v53, -1, -1);

      v55 = v52;
    }

    else
    {

      v55 = v43;
    }

    v56 = v69;
    v69(v55, v13);
    (*(v66 + 8))(v41, v67);
    v56(v42, v13);
    sub_21A261730(v45);
  }

  return 0;
}

void sub_21A2610E0(void *a1)
{
  v2 = sub_21A2F4A64();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21A2F7894();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A2F7884();
  sub_21A2F4A54();
  sub_21A2F7934(v9, 0, 0, 0, v5, "The title for the alert presented when the user does not have Reminders installed.", 82, 2);
  sub_21A2F7884();
  sub_21A2F4A54();
  sub_21A2F7934(v9, 0, 0, 0, v5, "The subtitle of the alert to download Reminders from the App Store.", 67, 2);
  sub_21A2F7884();
  sub_21A2F4A54();
  sub_21A2F7934(v9, 0, 0, 0, v5, "The text for the button to open Reminders in App Store.", 55, 2);
  sub_21A2F7884();
  sub_21A2F4A54();
  sub_21A2F7934(v9, 0, 0, 0, v5, "The text for the cancel button of the alert.", 44, 2);
  v10 = sub_21A2F78A4();

  v11 = sub_21A2F78A4();

  v12 = [objc_opt_self() alertControllerWithTitle:v10 message:v11 preferredStyle:1];

  v13 = sub_21A2F78A4();

  aBlock[4] = sub_21A259424;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21A14EACC;
  aBlock[3] = &unk_282B33318;
  v14 = _Block_copy(aBlock);

  v15 = objc_opt_self();
  v16 = [v15 actionWithTitle:v13 style:0 handler:v14];
  _Block_release(v14);

  [v12 addAction_];
  v17 = sub_21A2F78A4();

  v18 = [v15 actionWithTitle:v17 style:1 handler:0];

  [v12 addAction_];
  [a1 presentViewController:v12 animated:1 completion:0];
}

unint64_t sub_21A2614C8()
{
  result = qword_27CD03408;
  if (!qword_27CD03408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03408);
  }

  return result;
}

_OWORD *sub_21A261578(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void _s10CookingKit26ExportToGroceryListUtilityO23dismissToastIfPresented2onySo16UIViewControllerC_tFZ_0(void *a1)
{
  v1 = [a1 presentedViewController];
  if (v1)
  {
    v8 = v1;
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = v2;
      if (qword_27CCFE7A0 != -1)
      {
        swift_once();
      }

      v4 = sub_21A2F53E4();
      sub_21A177CBC(v4, qword_27CD23C20);
      v5 = sub_21A2F53C4();
      v6 = sub_21A2F7DC4();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_21A137000, v5, v6, "Dismissing existing confirmation toast to prevent modal presentation conflict", v7, 2u);
        MEMORY[0x21CED7BA0](v7, -1, -1);
      }

      [v3 dismissViewControllerAnimated:0 completion:0];
    }
  }
}

uint64_t type metadata accessor for ExportToGroceryListUtility.RemindersListDetails(uint64_t a1)
{
  result = qword_27CD03458;
  if (!qword_27CD03458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21A261730(uint64_t a1)
{
  v2 = type metadata accessor for ExportToGroceryListUtility.RemindersListDetails(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A26178C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExportToGroceryListUtility.RemindersListDetails(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21A2617F4()
{
  result = qword_27CD03448;
  if (!qword_27CD03448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03448);
  }

  return result;
}

unint64_t sub_21A26184C()
{
  result = qword_27CD03450;
  if (!qword_27CD03450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03450);
  }

  return result;
}

uint64_t sub_21A2618B0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21A2618C8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21A26191C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_21A261978(void *result, int a2)
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

uint64_t sub_21A2619F0(uint64_t a1)
{
  result = sub_21A2F49B4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21A261A6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A261AD4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_21A261B38()
{
  result = qword_27CD03550;
  if (!qword_27CD03550)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CD03550);
  }

  return result;
}

uint64_t sub_21A261B84(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CD004F8, &qword_21A3003A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21A261BF4()
{
  result = qword_27CD03560;
  if (!qword_27CD03560)
  {
    sub_21A176D98(&qword_27CD03558, &qword_21A30CD38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03560);
  }

  return result;
}

void *sub_21A261CB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v9[2] = *(v3 + 16);
  result = sub_21A25C344(sub_21A261D10, v9, a1, a2);
  *a3 = result;
  a3[1] = v6;
  a3[2] = v7;
  a3[3] = v8;
  return result;
}

void *sub_21A261D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_21A25C344(sub_21A261DAC, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_21A261D98(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21A180748(result, a2);
  }

  return result;
}

void sub_21A261DCC(int a1, char a2, int a3, void *a4)
{
  sub_21A176C98(&qword_27CD03590, &qword_21A30CD70);

  sub_21A257724(a1, a2, a3, a4);
}

uint64_t sub_21A261E70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21A145E2C;

  return sub_21A2596D0(a1, v4, v5, v6);
}

void static CookingConfirmationToastFactory.createViewController(confirmationToast:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = sub_21A142764(a1, v2);

  sub_21A2620BC(v4, v1, v2, v3);
}

id sub_21A262070()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClosureTapGestureRecognizer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_21A2620BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(void, void))
{
  v6 = *(a3 - 8);
  v7 = MEMORY[0x28223BE20](a1, a1);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v7);
  a4[1](a3, a4);
  a4[2](a3, a4);
  v10 = objc_allocWithZone(MEMORY[0x277CEE8F8]);
  v11 = sub_21A2F78A4();

  v12 = sub_21A2F78A4();

  v13 = [v10 initWithTitle:v11 message:v12];

  v14 = v13;
  [v14 setStyle_];
  v15 = a4[3](a3, a4);
  [v14 setIconImage_];

  v16 = sub_21A2F78A4();
  v17 = [objc_opt_self() actionWithTitle:0 identifier:v16];

  [v17 setStyle_];
  [v14 addButtonAction_];
  v18 = [objc_allocWithZone(MEMORY[0x277CEE930]) initWithRequest_];

  v19 = [objc_allocWithZone(MEMORY[0x277CEE920]) init];
  v20 = [objc_opt_self() configurationWithPointSize:6 weight:36.0];
  [v19 setImageSymbolConfiguration_];

  v21 = objc_opt_self();
  v22 = [v21 labelColor];
  [v19 setAccessoryButtonColor_];

  v23 = [v21 clearColor];
  [v19 setAccessoryButtonBackgroundColor_];

  v24 = [objc_opt_self() systemFontOfSize:15.0 weight:*MEMORY[0x277D74410]];
  [v19 setAccessoryButtonFont_];

  [v18 setPreferredAppearance_];
  v25 = a4[4](a3, a4);
  if (!v25)
  {

    goto LABEL_6;
  }

  v27 = v25;
  v28 = v26;
  v38 = v17;
  v39 = v6;
  v29 = type metadata accessor for ClosureTapGestureRecognizer();
  v30 = objc_allocWithZone(v29);
  v31 = &v30[OBJC_IVAR____TtC10CookingKitP33_371E4750EAD71236DF383F3B5E5C07E127ClosureTapGestureRecognizer_action];
  *v31 = v27;
  v31[1] = v28;
  v40.receiver = v30;
  v40.super_class = v29;

  v32 = objc_msgSendSuper2(&v40, sel_initWithTarget_action_, 0, 0);
  [v32 addTarget:v32 action:sel_handleTap];
  v37[1] = v18;
  v33 = v18;
  v34 = [v33 view];
  if (v34)
  {
    v35 = v34;
    [v34 addGestureRecognizer_];

    v36 = [v33 view];
    if (v36)
    {
      [v36 setUserInteractionEnabled_];

      sub_21A18EAA0(v27, v28);
      v6 = v39;
LABEL_6:
      (*(v6 + 8))(v9, a3);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t CookingConfirmationToast.title.getter()
{
  v0 = sub_21A2F4A64();
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_21A2F7894();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21A2F7884();
  sub_21A2F4A54();
  return sub_21A2F7934(v7, 0, 0, 0, v3, "The title of the toast confirmation after the user adds ingredients to their grocery list.", 90, 2);
}

uint64_t CookingConfirmationToast.message.getter()
{
  v0 = sub_21A2F4A64();
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_21A2F7894();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21A2F7884();
  sub_21A2F4A54();
  return sub_21A2F7934(v7, 0, 0, 0, v3, "The subtitle of the toast confirmation to open the Reminders app after the user adds ingredients to their grocery list.", 119, 2);
}

void CookingConfirmationToast.iconImage.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v1 = sub_21A2F78A4();
  v2 = [v0 initWithBundleIdentifier_];

  v3 = [objc_opt_self() imageDescriptorNamed_];
  v4 = [v2 imageForDescriptor_];

  if (v4)
  {
    v5 = v4;
    v6 = [v5 CGImage];
    if (v6)
    {
      v7 = v6;
      [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];

      v2 = v7;
LABEL_7:

      return;
    }

    __break(1u);
  }

  else
  {
    if (qword_27CCFE760 != -1)
    {
      swift_once();
    }

    v8 = qword_27CD23BB8;
    v9 = sub_21A2F78A4();
    v10 = [objc_opt_self() imageNamed:v9 inBundle:v8];

    if (v10)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
}

double (*CookingConfirmationToast.tapAction.getter())()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  sub_21A2F5434();
  return sub_21A261B30;
}

double sub_21A262A9C(uint64_t *a1, unint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CD004F8, &qword_21A3003A0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = (&v12 - v6);
  sub_21A258084(a1, a2, &v12 - v6);
  v8 = type metadata accessor for ExportToGroceryListUtility.RemindersListDetails(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_21A1D3E98(v7);
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v9 = *v7;
    v10 = v7[1];
    sub_21A2F5434();
    sub_21A261730(v7);
  }

  sub_21A2605F8(v9, v10);

  return result;
}

uint64_t sub_21A262BA8()
{
  v0 = sub_21A2F4A64();
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_21A2F7894();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21A2F7884();
  sub_21A2F4A54();
  return sub_21A2F7934(v7, 0, 0, 0, v3, "The title of the toast confirmation after the user adds ingredients to their grocery list.", 90, 2);
}

uint64_t sub_21A262CA4()
{
  v0 = sub_21A2F4A64();
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_21A2F7894();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21A2F7884();
  sub_21A2F4A54();
  return sub_21A2F7934(v7, 0, 0, 0, v3, "The subtitle of the toast confirmation to open the Reminders app after the user adds ingredients to their grocery list.", 119, 2);
}

uint64_t (*sub_21A262DB8())()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  sub_21A2F5434();
  return sub_21A262E30;
}

__n128 InTextCountdownTimer.textRange.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t InTextCountdownTimer.timer.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for InTextCountdownTimer(0) + 20);

  return sub_21A262ED0(v3, a1);
}

uint64_t type metadata accessor for InTextCountdownTimer(uint64_t a1)
{
  result = qword_27CD03648;
  if (!qword_27CD03648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21A262ED0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CCFF3A8, &qword_21A2FC4F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A262F44()
{
  if (*v0)
  {
    return 0x72656D6974;
  }

  else
  {
    return 0x676E615274786574;
  }
}

void sub_21A262F80(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x676E615274786574 && a2 == 0xE900000000000065;
  if (v6 || (sub_21A2F8394() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x72656D6974 && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_21A2F8394();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_21A263060(uint64_t a1)
{
  v2 = sub_21A263C0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A26309C(uint64_t a1)
{
  v2 = sub_21A263C0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InTextCountdownTimer.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_21A176C98(&qword_27CD03608, &qword_21A30CEF8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11[-v8];
  sub_21A142764(a1, a1[3]);
  sub_21A263C0C();
  sub_21A2F84B4();
  v12 = *v3;
  v11[15] = 0;
  sub_21A263C60();
  sub_21A2F8324();
  if (!v2)
  {
    type metadata accessor for InTextCountdownTimer(0);
    LOBYTE(v12) = 1;
    type metadata accessor for CountdownTimer(0);
    sub_21A263E78(&qword_27CD03620, type metadata accessor for CountdownTimer, &protocol conformance descriptor for CountdownTimer);
    sub_21A2F82D4();
  }

  return (*(v6 + 8))(v9, v5);
}

void InTextCountdownTimer.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for CountdownTimer(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21A176C98(&qword_27CCFF3A8, &qword_21A2FC4F0);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v12 = &v15 - v11;
  v13 = v1[1];
  MEMORY[0x21CED6EE0](*v1, v10);
  MEMORY[0x21CED6EE0](v13);
  v14 = type metadata accessor for InTextCountdownTimer(0);
  sub_21A262ED0(v1 + *(v14 + 20), v12);
  if ((*(v4 + 48))(v12, 1, v3) == 1)
  {
    sub_21A2F8454();
  }

  else
  {
    sub_21A263CB4(v12, v7);
    sub_21A2F8454();
    if (*(v7 + 1))
    {
      sub_21A2F8454();
      sub_21A2F79A4();
    }

    else
    {
      sub_21A2F8454();
    }

    Duration.hash(into:)(a1);
    sub_21A263DD0(v7, type metadata accessor for CountdownTimer);
  }
}

uint64_t InTextCountdownTimer.hashValue.getter()
{
  sub_21A2F8434();
  InTextCountdownTimer.hash(into:)(v1);
  return sub_21A2F8474();
}

uint64_t InTextCountdownTimer.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_21A176C98(&qword_27CCFF3A8, &qword_21A2FC4F0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v23 - v6;
  v8 = sub_21A176C98(&qword_27CD03628, &qword_21A30CF00);
  v24 = *(v8 - 8);
  v25 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v23 - v10;
  v12 = type metadata accessor for InTextCountdownTimer(0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 + 28);
  v18 = type metadata accessor for CountdownTimer(0);
  v19 = *(*(v18 - 8) + 56);
  v26 = v17;
  v19(&v15[v17], 1, 1, v18);
  sub_21A142764(a1, a1[3]);
  sub_21A263C0C();
  sub_21A2F8494();
  if (v2)
  {
    sub_21A142808(a1);
    return sub_21A1427A8(&v15[v26], &qword_27CCFF3A8, &qword_21A2FC4F0);
  }

  else
  {
    v20 = v24;
    v28 = 0;
    sub_21A263D18();
    v21 = v25;
    sub_21A2F8284();
    *v15 = v27;
    LOBYTE(v27) = 1;
    sub_21A263E78(&qword_27CD03638, type metadata accessor for CountdownTimer, &protocol conformance descriptor for CountdownTimer);
    sub_21A2F8234();
    (*(v20 + 8))(v11, v21);
    sub_21A20ACF4(v7, &v15[v26]);
    sub_21A263D6C(v15, v23);
    sub_21A142808(a1);
    return sub_21A263DD0(v15, type metadata accessor for InTextCountdownTimer);
  }
}

uint64_t sub_21A263834()
{
  sub_21A2F8434();
  InTextCountdownTimer.hash(into:)(v1);
  return sub_21A2F8474();
}

uint64_t sub_21A263878(uint64_t a1)
{
  sub_21A2F8434();
  InTextCountdownTimer.hash(into:)(v2);
  return sub_21A2F8474();
}

BOOL _s10CookingKit20InTextCountdownTimerV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for CountdownTimer(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_21A176C98(&qword_27CCFF3A8, &qword_21A2FC4F0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = (&v27 - v11);
  v13 = sub_21A176C98(&qword_27CCFF3B0, &qword_21A2FC4F8);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v27 - v15;
  result = 0;
  if (*a1 == *a2)
  {
    v18 = *(type metadata accessor for InTextCountdownTimer(0) + 20);
    v19 = *(v13 + 48);
    sub_21A262ED0(a1 + v18, v16);
    sub_21A262ED0(a2 + v18, &v16[v19]);
    v20 = *(v5 + 48);
    if (v20(v16, 1, v4) == 1)
    {
      if (v20(&v16[v19], 1, v4) == 1)
      {
        sub_21A1427A8(v16, &qword_27CCFF3A8, &qword_21A2FC4F0);
        return 1;
      }

      goto LABEL_8;
    }

    sub_21A262ED0(v16, v12);
    if (v20(&v16[v19], 1, v4) == 1)
    {
      sub_21A263DD0(v12, type metadata accessor for CountdownTimer);
LABEL_8:
      v21 = &qword_27CCFF3B0;
      v22 = &qword_21A2FC4F8;
LABEL_20:
      sub_21A1427A8(v16, v21, v22);
      return 0;
    }

    sub_21A263CB4(&v16[v19], v8);
    v23 = v12[1];
    v24 = v8[1];
    if (v23)
    {
      if (v24)
      {
        v25 = *v12 == *v8 && v23 == v24;
        if (v25 || (sub_21A2F8394() & 1) != 0)
        {
LABEL_16:
          v26 = static Duration.== infix(_:_:)(v12 + *(v4 + 20), v8 + *(v4 + 20));
          sub_21A263DD0(v8, type metadata accessor for CountdownTimer);
          sub_21A263DD0(v12, type metadata accessor for CountdownTimer);
          sub_21A1427A8(v16, &qword_27CCFF3A8, &qword_21A2FC4F0);
          return (v26 & 1) != 0;
        }
      }
    }

    else if (!v24)
    {
      goto LABEL_16;
    }

    sub_21A263DD0(v8, type metadata accessor for CountdownTimer);
    sub_21A263DD0(v12, type metadata accessor for CountdownTimer);
    v21 = &qword_27CCFF3A8;
    v22 = &qword_21A2FC4F0;
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21A263C0C()
{
  result = qword_27CD03610;
  if (!qword_27CD03610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03610);
  }

  return result;
}

unint64_t sub_21A263C60()
{
  result = qword_27CD03618;
  if (!qword_27CD03618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03618);
  }

  return result;
}

uint64_t sub_21A263CB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CountdownTimer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21A263D18()
{
  result = qword_27CD03630;
  if (!qword_27CD03630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03630);
  }

  return result;
}

uint64_t sub_21A263D6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InTextCountdownTimer(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A263DD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A263E78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_21A263EE8(uint64_t a1)
{
  sub_21A263F64(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_21A263F64(uint64_t a1)
{
  if (!qword_27CD03658)
  {
    type metadata accessor for CountdownTimer(255);
    v1 = sub_21A2F7EA4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CD03658);
    }
  }
}

unint64_t sub_21A263FD0()
{
  result = qword_27CD03660;
  if (!qword_27CD03660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03660);
  }

  return result;
}

unint64_t sub_21A264028()
{
  result = qword_27CD03668;
  if (!qword_27CD03668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03668);
  }

  return result;
}

unint64_t sub_21A264080()
{
  result = qword_27CD03670;
  if (!qword_27CD03670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03670);
  }

  return result;
}

void sub_21A2640D4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = *(a2 + 16);
  v6 = type metadata accessor for IdleTimerCommandHandler(0);
  sub_21A142764((a1 + *(v6 + 20)), *(a1 + *(v6 + 20) + 24));
  if (v5)
  {
    sub_21A295140(v4, v3);
  }

  else
  {
    sub_21A294E58(v4, v3);
  }
}

void sub_21A264148(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 16);
  sub_21A142764((v2 + *(a2 + 20)), *(v2 + *(a2 + 20) + 24));
  if (v5)
  {
    sub_21A295140(v4, v3);
  }

  else
  {
    sub_21A294E58(v4, v3);
  }
}

unint64_t sub_21A2641C4()
{
  result = qword_27CD03678;
  if (!qword_27CD03678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03678);
  }

  return result;
}

uint64_t *sub_21A264218(uint64_t *result)
{
  v3 = *result;
  v2 = result[1];
  v4 = *(result + 48) >> 5;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      if (*(result + 40))
      {
        return result;
      }

      sub_21A264534(v1 + 16, v21);
      v13 = v22;
      if (v22)
      {
        v14 = v23;
        sub_21A142764(v21, v22);
        (*(v14 + 16))(v3, v2, v13, v14);
        return sub_21A142808(v21);
      }
    }

    else
    {
      if (v4 == 4)
      {
        return result;
      }

      v8 = *(result + 16);
      v9 = v1 + 16;
      if (v8 >> 6)
      {
        if (v8 >> 6 == 1)
        {
          sub_21A264534(v9, v21);
          v10 = v22;
          if (v22)
          {
            v11 = v8 & 0x3F;
            v12 = v23;
            sub_21A142764(v21, v22);
            v20 = v11;
            (*(v12 + 32))(v3, v2, &v20, v10, v12);
            return sub_21A142808(v21);
          }
        }

        else
        {
          sub_21A264534(v9, v21);
          v17 = v22;
          if (v22)
          {
            v18 = v8 & 0x3F;
            v19 = v23;
            sub_21A142764(v21, v22);
            v20 = v18;
            (*(v19 + 40))(v3, v2, &v20, v17, v19);
            return sub_21A142808(v21);
          }
        }
      }

      else
      {
        sub_21A264534(v9, v21);
        v15 = v22;
        if (v22)
        {
          v16 = v23;
          sub_21A142764(v21, v22);
          (*(v16 + 24))(v3, v2, 0xD000000000000016, 0x800000021A31A050, v15, v16);
          return sub_21A142808(v21);
        }
      }
    }

    return sub_21A2645A4(v21);
  }

  if (v4)
  {
    v5 = v4 == 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5 && (result[4] & 0xFE) != 0)
  {
    sub_21A264534(v1 + 16, v21);
    v6 = v22;
    if (v22)
    {
      v7 = v23;
      sub_21A142764(v21, v22);
      (*(v7 + 8))(v3, v2, v6, v7);
      return sub_21A142808(v21);
    }

    return sub_21A2645A4(v21);
  }

  return result;
}

uint64_t sub_21A264464()
{
  sub_21A2645A4(v0 + 16);
  v1 = OBJC_IVAR____TtC10CookingKit36AnalyticsUserInteractionEventHandler___scope;
  v2 = sub_21A2F7614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21A264534(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CD03680, &qword_21A30D2C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A2645A4(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CD03680, &qword_21A30D2C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CountdownTimer.init(label:duration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v5 = a4 + *(type metadata accessor for CountdownTimer(0) + 20);

  return sub_21A251FFC(a3, v5);
}

uint64_t type metadata accessor for CountdownTimer(uint64_t a1)
{
  result = qword_27CD036A8;
  if (!qword_27CD036A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CountdownTimer.label.getter()
{
  v1 = *v0;
  sub_21A2F5434();
  return v1;
}

uint64_t static CountdownTimer.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (v5)
    {
      v6 = *a1 == *a2 && v4 == v5;
      if (v6 || (sub_21A2F8394() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_8:
  v7 = *(type metadata accessor for CountdownTimer(0) + 20);

  return _s10CookingKit8DurationO2eeoiySbAC_ACtFZ_0(a1 + v7, a2 + v7);
}

uint64_t sub_21A2647AC()
{
  if (*v0)
  {
    return 0x6E6F697461727564;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

void sub_21A2647E4(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_21A2F8394() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_21A2F8394();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_21A2648BC(uint64_t a1)
{
  v2 = sub_21A265158();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A2648F8(uint64_t a1)
{
  v2 = sub_21A265158();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CountdownTimer.encode(to:)(void *a1)
{
  v3 = sub_21A176C98(&qword_27CD03688, &qword_21A30D2D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v9[-v6];
  sub_21A142764(a1, a1[3]);
  sub_21A265158();
  sub_21A2F84B4();
  v9[15] = 0;
  sub_21A2F82B4();
  if (!v1)
  {
    type metadata accessor for CountdownTimer(0);
    v9[14] = 1;
    type metadata accessor for Duration(0);
    sub_21A26525C(&qword_27CD023E0, type metadata accessor for Duration, &protocol conformance descriptor for Duration);
    sub_21A2F8324();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t CountdownTimer.hash(into:)(uint64_t a1)
{
  if (*(v1 + 8))
  {
    sub_21A2F8454();
    sub_21A2F79A4();
  }

  else
  {
    sub_21A2F8454();
  }

  type metadata accessor for CountdownTimer(0);
  return Duration.hash(into:)(a1);
}

uint64_t CountdownTimer.hashValue.getter()
{
  sub_21A2F8434();
  if (*(v0 + 8))
  {
    sub_21A2F8454();
    sub_21A2F79A4();
  }

  else
  {
    sub_21A2F8454();
  }

  type metadata accessor for CountdownTimer(0);
  Duration.hash(into:)(v2);
  return sub_21A2F8474();
}

void CountdownTimer.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = type metadata accessor for Duration(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21A176C98(&qword_27CD03698, &qword_21A30D2D8);
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v22 - v10;
  v12 = type metadata accessor for CountdownTimer(0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = (&v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[3];
  v27 = a1;
  sub_21A142764(a1, v16);
  sub_21A265158();
  sub_21A2F8494();
  if (v2)
  {
    sub_21A142808(v27);
  }

  else
  {
    v17 = v25;
    v29 = 0;
    *v15 = sub_21A2F8214();
    v15[1] = v18;
    v23 = v15;
    v28 = 1;
    sub_21A26525C(&qword_27CD02420, type metadata accessor for Duration, &protocol conformance descriptor for Duration);
    v19 = v26;
    sub_21A2F8284();
    (*(v17 + 8))(v11, v19);
    v20 = *(v12 + 20);
    v21 = v23;
    sub_21A251FFC(v7, v23 + v20);
    sub_21A2651AC(v21, v24, type metadata accessor for CountdownTimer);
    sub_21A142808(v27);
    sub_21A20AE30(v21);
  }
}

uint64_t sub_21A264F08(void *a1, void *a2, uint64_t a3)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (v5)
    {
      if (*a1 == *a2 && v4 == v5)
      {
        goto LABEL_8;
      }

      v7 = a1;
      v8 = a2;
      v9 = a3;
      v10 = sub_21A2F8394();
      a3 = v9;
      a2 = v8;
      v11 = v10;
      a1 = v7;
      if (v11)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_8:
  v12 = *(a3 + 20);
  v13 = a1 + v12;
  v14 = a2 + v12;

  return static Duration.== infix(_:_:)(v13, v14);
}

uint64_t sub_21A264FAC()
{
  sub_21A2F8434();
  if (*(v0 + 8))
  {
    sub_21A2F8454();
    sub_21A2F79A4();
  }

  else
  {
    sub_21A2F8454();
  }

  Duration.hash(into:)(v2);
  return sub_21A2F8474();
}

uint64_t sub_21A265044(uint64_t a1)
{
  if (*(v1 + 8))
  {
    sub_21A2F8454();
    sub_21A2F79A4();
  }

  else
  {
    sub_21A2F8454();
  }

  return Duration.hash(into:)(a1);
}

uint64_t sub_21A2650C4(uint64_t a1)
{
  sub_21A2F8434();
  if (*(v1 + 8))
  {
    sub_21A2F8454();
    sub_21A2F79A4();
  }

  else
  {
    sub_21A2F8454();
  }

  Duration.hash(into:)(v3);
  return sub_21A2F8474();
}

unint64_t sub_21A265158()
{
  result = qword_27CD03690;
  if (!qword_27CD03690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03690);
  }

  return result;
}

uint64_t sub_21A2651AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A26525C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_21A2652CC(uint64_t a1)
{
  sub_21A13C2A4();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Duration(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_21A265364()
{
  result = qword_27CD036B8;
  if (!qword_27CD036B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD036B8);
  }

  return result;
}

unint64_t sub_21A2653BC()
{
  result = qword_27CD036C0;
  if (!qword_27CD036C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD036C0);
  }

  return result;
}

unint64_t sub_21A265414()
{
  result = qword_27CD036C8;
  if (!qword_27CD036C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD036C8);
  }

  return result;
}

uint64_t type metadata accessor for RecipeCardHeroView(uint64_t a1)
{
  result = qword_27CD036D0;
  if (!qword_27CD036D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21A2654DC(uint64_t a1)
{
  type metadata accessor for RecipeCardViewModel(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v2 <= 0x3F)
    {
      sub_21A1AB70C(319, &qword_27CCFF420, MEMORY[0x277CDF3E0]);
      if (v3 <= 0x3F)
      {
        sub_21A1AB70C(319, &qword_27CCFEE40, type metadata accessor for RecipeTheme);
        if (v4 <= 0x3F)
        {
          sub_21A1B4A08();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_21A265624@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v39 = type metadata accessor for RecipeTheme(0);
  MEMORY[0x28223BE20](v39, v2);
  v4 = (&v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v38 - v7;
  v41 = sub_21A2F5654();
  v9 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v10);
  v42 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21A176C98(&qword_27CD036E0, &qword_21A30D538);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = (&v38 - v14);
  v40 = sub_21A176C98(&qword_27CD036E8, &qword_21A30D540);
  MEMORY[0x28223BE20](v40, v16);
  v18 = &v38 - v17;
  v19 = sub_21A176C98(&qword_27CD036F0, &qword_21A30D548);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v38 - v21;
  *v15 = sub_21A2F7344();
  v15[1] = v23;
  v24 = sub_21A176C98(&qword_27CD036F8, &qword_21A30D550);
  sub_21A265AE0(v1, v15 + *(v24 + 44));
  v43 = v1;
  v25 = *(v1 + 40);
  swift_getKeyPath();
  v45 = v25;
  sub_21A266158(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel, &unk_21A310CC0);
  sub_21A2F5094();

  sub_21A26609C(v25 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__recipeTheme, v8, type metadata accessor for RecipeTheme);
  sub_21A19422C(v8, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    v27 = sub_21A176C98(&qword_27CCFEB90, &unk_21A2FCE50);
    sub_21A1427A8(v4 + *(v27 + 48), &qword_27CCFEDC0, &unk_21A2FAEE0);
    type metadata accessor for RecipeCardHeroView(0);
    v29 = v42;
    v28 = v43;
    sub_21A1AC5F4(v42);
    v30 = v41;
  }

  else
  {

    v31 = sub_21A176C98(&qword_27CCFEEA8, &qword_21A2FB130);
    sub_21A2661A0(v4 + *(v31 + 64), type metadata accessor for ImageAsset);
    v30 = v41;
    v29 = v42;
    (*(v9 + 104))(v42, *MEMORY[0x277CDF3C0], v41);
    v28 = v43;
  }

  KeyPath = swift_getKeyPath();
  v33 = &v18[*(v40 + 36)];
  v34 = sub_21A176C98(&qword_27CCFF2A0, &unk_21A2FBE80);
  (*(v9 + 32))(v33 + *(v34 + 28), v29, v30);
  *v33 = KeyPath;
  sub_21A149B18(v15, v18, &qword_27CD036E0, &qword_21A30D538);
  v35 = sub_21A2F73A4();
  LOBYTE(v33) = *v28;
  sub_21A149B18(v18, v22, &qword_27CD036E8, &qword_21A30D540);
  v36 = &v22[*(v19 + 36)];
  *v36 = v35;
  v36[8] = v33;
  sub_21A2F6604();
  sub_21A265F00();
  sub_21A2F6B24();
  return sub_21A1427A8(v22, &qword_27CD036F0, &qword_21A30D548);
}

uint64_t sub_21A265AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RecipeCardLowResHeroView(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21A176C98(&qword_27CD03718, &qword_21A30D5B8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v30 - v10;
  if (*a1 == 1)
  {
    v34 = a2;
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v14 = *(a1 + 1);
    KeyPath = swift_getKeyPath();
    v16 = swift_getKeyPath();
    v35 = 0;

    sub_21A2F7014();
    v17 = v37;
    type metadata accessor for CGSize(0);
    v35 = 0;
    v36 = 0;
    v31 = *(a1 + 8);
    v30 = *(a1 + 24);
    v18 = *(a1 + 56);
    v32 = *(a1 + 72);
    v33 = v18;
    sub_21A2F7014();
    v19 = v37;
    v20 = v38;
    v35 = 0;
    v36 = 0;
    sub_21A2F7014();
    v21 = v38;
    v22 = v37;
    v41 = 0;
    v40 = 0;
    *v11 = v12;
    *(v11 + 24) = v30;
    v23 = v32;
    *(v11 + 8) = v31;
    *(v11 + 5) = v13;
    v11[48] = v14;
    *(v11 + 49) = v37;
    *(v11 + 13) = *(&v37 + 3);
    *(v11 + 72) = v23;
    *(v11 + 56) = v33;
    *(v11 + 11) = KeyPath;
    v11[96] = 0;
    *(v11 + 97) = v35;
    *(v11 + 25) = *(&v35 + 3);
    *(v11 + 13) = v16;
    v11[112] = v40;
    v24 = *v39;
    *(v11 + 29) = *&v39[3];
    *(v11 + 113) = v24;
    *(v11 + 120) = v17;
    *(v11 + 136) = v19;
    *(v11 + 19) = v20;
    *(v11 + 10) = v22;
    *(v11 + 22) = v21;
    v11[184] = 0;
    swift_storeEnumTagMultiPayload();
    sub_21A266104();
    sub_21A266158(&qword_27CD03728, type metadata accessor for RecipeCardLowResHeroView, &unk_21A308B4C);
    return sub_21A2F6114();
  }

  else
  {
    v26 = *(a1 + 48);
    v27 = *(a1 + 1);
    *v7 = *(a1 + 40);
    *(v7 + 8) = *(a1 + 8);
    *(v7 + 24) = *(a1 + 24);
    *(v7 + 5) = v26;
    v7[48] = v27;
    *(v7 + 56) = *(a1 + 56);
    *(v7 + 72) = *(a1 + 72);
    *(v7 + 11) = swift_getKeyPath();
    v7[96] = 0;
    v28 = *(v4 + 44);
    *&v7[v28] = swift_getKeyPath();
    sub_21A176C98(&qword_27CCFEEA0, &unk_21A2FCEA0);
    swift_storeEnumTagMultiPayload();
    v29 = &v7[*(v4 + 48)];
    *v29 = swift_getKeyPath();
    v29[8] = 0;
    sub_21A26609C(v7, v11, type metadata accessor for RecipeCardLowResHeroView);
    swift_storeEnumTagMultiPayload();
    sub_21A266104();
    sub_21A266158(&qword_27CD03728, type metadata accessor for RecipeCardLowResHeroView, &unk_21A308B4C);

    sub_21A2F6114();
    return sub_21A2661A0(v7, type metadata accessor for RecipeCardLowResHeroView);
  }
}

unint64_t sub_21A265F00()
{
  result = qword_27CD03700;
  if (!qword_27CD03700)
  {
    sub_21A176D98(&qword_27CD036F0, &qword_21A30D548);
    sub_21A265FB8();
    sub_21A1772F8(&qword_27CD009B0, &qword_27CD009B8, &unk_21A309250, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03700);
  }

  return result;
}

unint64_t sub_21A265FB8()
{
  result = qword_27CD03708;
  if (!qword_27CD03708)
  {
    sub_21A176D98(&qword_27CD036E8, &qword_21A30D540);
    sub_21A1772F8(&qword_27CD03710, &qword_27CD036E0, &qword_21A30D538, MEMORY[0x277CE11A8]);
    sub_21A1772F8(&qword_27CCFF298, &qword_27CCFF2A0, &unk_21A2FBE80, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03708);
  }

  return result;
}

uint64_t sub_21A26609C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21A266104()
{
  result = qword_27CD03720;
  if (!qword_27CD03720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03720);
  }

  return result;
}

uint64_t sub_21A266158(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21A2661A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A266200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21A2F4D64();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v45 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21A2F4CD4();
  v47 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v46 = &v44 - v14;
  v15 = sub_21A176C98(&qword_27CD014C0, &qword_21A3041D0);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v44 - v21;
  v23 = sub_21A2F4C24();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A2F4F44();
  v49 = sub_21A2F4C04();
  v48 = sub_21A2F4C14();
  (*(v24 + 8))(v27, v23);
  v51 = a1;
  v28 = v47;
  sub_21A2F4F34();
  v50 = v22;
  sub_21A267238(v22, v18);
  if ((*(v28 + 48))(v18, 1, v8) == 1)
  {
    v29 = sub_21A2F4F54();
    (*(*(v29 - 8) + 8))(v51, v29);
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = -1;
  }

  else
  {
    v36 = v46;
    (*(v28 + 32))(v46, v18, v8);
    (*(v28 + 16))(v11, v36, v8);
    sub_21A2F4CC4();
    v34 = v37;
    v30 = sub_21A2F4CA4();
    v54 = v38 & 1;
    v39 = v45;
    sub_21A2F4CB4();
    sub_21A2534D0(v39, v52);
    v40 = *(v28 + 8);
    v40(v11, v8);
    v32 = v52[0];
    v33 = v52[1];
    v35 = v53;
    v31 = v54;
    v41 = sub_21A2F4F54();
    (*(*(v41 - 8) + 8))(v51, v41);
    v40(v36, v8);
  }

  sub_21A2672A8(v50);
  result = sub_21A1A3798(0, 0, 0, 0, 0, 255);
  v43 = v48;
  *a2 = v49;
  *(a2 + 8) = v43;
  *(a2 + 16) = v34;
  *(a2 + 24) = v30;
  *(a2 + 32) = v31;
  *(a2 + 40) = v32;
  *(a2 + 48) = v33;
  *(a2 + 56) = v35;
  return result;
}

__n128 InTextMeasurement.textRange.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t InTextMeasurement.measurement.getter@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  v8 = *(v3 + 48);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  v9 = *(v3 + 56);
  *(a1 + 40) = v9;
  return sub_21A1A3820(a2, a3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_21A266650()
{
  if (*v0)
  {
    return 0x6D6572757361656DLL;
  }

  else
  {
    return 0x676E615274786574;
  }
}

void sub_21A266698(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x676E615274786574 && a2 == 0xE900000000000065;
  if (v6 || (sub_21A2F8394() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6D6572757361656DLL && a2 == 0xEB00000000746E65)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_21A2F8394();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_21A266780(uint64_t a1)
{
  v2 = sub_21A266F58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A2667BC(uint64_t a1)
{
  v2 = sub_21A266F58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InTextMeasurement.encode(to:)(void *a1)
{
  v3 = sub_21A176C98(&qword_27CD03730, &qword_21A30D640);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v16 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = *(v1 + 16);
  v19 = *(v1 + 24);
  v20 = v10;
  v11 = *(v1 + 32);
  v17 = *(v1 + 40);
  v18 = v11;
  v16 = *(v1 + 48);
  v28 = *(v1 + 56);
  sub_21A142764(a1, a1[3]);
  sub_21A266F58();
  sub_21A2F84B4();
  v22 = v8;
  v23 = v9;
  v29 = 0;
  sub_21A263C60();
  v12 = v21;
  sub_21A2F8324();
  if (!v12)
  {
    v22 = v20;
    v23 = v19;
    v24 = v18;
    v25 = v17;
    v26 = v16;
    v27 = v28;
    v29 = 1;
    sub_21A1A3820(v13, v14, v20, v19, v18, v17, v16, v28);
    sub_21A266FAC();
    sub_21A2F82D4();
    sub_21A1A3798(v22, v23, v24, v25, v26, v27);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t InTextMeasurement.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_21A176C98(&qword_27CD03748, &qword_21A30D648);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v18 - v8;
  sub_21A142764(a1, a1[3]);
  sub_21A266F58();
  sub_21A2F8494();
  if (v2)
  {
    sub_21A142808(a1);
    return sub_21A1A3798(0, 0, 0, 0, 0, 255);
  }

  else
  {
    LOBYTE(v19) = 0;
    sub_21A263D18();
    sub_21A2F8284();
    v10 = v22;
    v11 = v23;
    v37 = 1;
    sub_21A267000();
    sub_21A2F8234();
    (*(v6 + 8))(v9, v5);
    v12 = v30;
    v13 = v31;
    v14 = v32;
    v18 = v33;
    v15 = v34;
    v36 = v35;
    sub_21A1A3798(0, 0, 0, 0, 0, 255);
    *&v19 = v10;
    *(&v19 + 1) = v11;
    *&v20 = v12;
    *(&v20 + 1) = v13;
    *v21 = v14;
    *&v21[8] = v18;
    *&v21[16] = v15;
    v21[24] = v36;
    v16 = v20;
    *a2 = v19;
    a2[1] = v16;
    a2[2] = *v21;
    *(a2 + 41) = *&v21[9];
    sub_21A1A373C(&v19, &v22);
    sub_21A142808(a1);
    v22 = v10;
    v23 = v11;
    v24 = v12;
    v25 = v13;
    v26 = v14;
    v27 = v18;
    v28 = v15;
    v29 = v36;
    return sub_21A1A37CC(&v22);
  }
}

BOOL _s10CookingKit17InTextMeasurementV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    v46 = v4;
    v47 = v5;
    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    v15 = *(a2 + 16);
    v14 = *(a2 + 24);
    v16 = *(a2 + 32);
    v17 = *(a2 + 40);
    v18 = *(a2 + 48);
    v19 = *(a2 + 56);
    v35 = v10;
    v36 = v18;
    if (v13 == 255)
    {
      v26 = *(a1 + 24);
      sub_21A1A3820(a3, a4, v9, v8, v10, v11, v12, 255);
      if (v19 == 255)
      {
        sub_21A1A3820(v27, v28, v15, v14, v16, v17, v36, 255);
        sub_21A1A3798(v9, v26, v35, v11, v12, 255);
        return 1;
      }

      sub_21A1A3820(v27, v28, v15, v14, v16, v17, v36, v19);
    }

    else
    {
      v42[0] = *(a1 + 16);
      v42[1] = v8;
      v42[2] = v10;
      v43 = v11;
      v44 = v12;
      v45 = v13;
      if (v19 != 255)
      {
        v37[0] = v15;
        v37[1] = v14;
        v38 = v16 & 1;
        v39 = v17;
        v40 = v18;
        v41 = v19;
        v20 = v8;
        sub_21A1A3820(a3, a4, v9, v8, v10, v11, v12, v13);
        sub_21A1A3820(v21, v22, v15, v14, v16, v17, v36, v19);
        sub_21A1A3820(v23, v24, v9, v20, v35, v11, v12, v13);
        v25 = _s10CookingKit11MeasurementV2eeoiySbAC_ACtFZ_0(v42, v37);
        sub_21A1A37B8(v39, v40, v41);
        sub_21A1A37B8(v43, v44, v45);
        sub_21A1A3798(v9, v20, v35, v11, v12, v13);
        return v25;
      }

      v34 = v8;
      sub_21A1A3820(a3, a4, v9, v8, v10, v11, v12, v13);
      v29 = v18;
      v26 = v34;
      sub_21A1A3820(v30, v31, v15, v14, v16, v17, v29, 255);
      sub_21A1A3820(v32, v33, v9, v34, v35, v11, v12, v13);
      sub_21A1A37B8(v11, v12, v13);
    }

    sub_21A1A3798(v9, v26, v35, v11, v12, v13);
    sub_21A1A3798(v15, v14, v16, v17, v36, v19);
    return 0;
  }

  return result;
}

unint64_t sub_21A266F58()
{
  result = qword_27CD03738;
  if (!qword_27CD03738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03738);
  }

  return result;
}

unint64_t sub_21A266FAC()
{
  result = qword_27CD03740;
  if (!qword_27CD03740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03740);
  }

  return result;
}

unint64_t sub_21A267000()
{
  result = qword_27CD03750;
  if (!qword_27CD03750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03750);
  }

  return result;
}

__n128 sub_21A267054(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_21A267070(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 57))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 56);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_21A2670BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = ~a2;
    }
  }

  return result;
}

unint64_t sub_21A267134()
{
  result = qword_27CD03758;
  if (!qword_27CD03758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03758);
  }

  return result;
}

unint64_t sub_21A26718C()
{
  result = qword_27CD03760;
  if (!qword_27CD03760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03760);
  }

  return result;
}

unint64_t sub_21A2671E4()
{
  result = qword_27CD03768;
  if (!qword_27CD03768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03768);
  }

  return result;
}

uint64_t sub_21A267238(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CD014C0, &qword_21A3041D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A2672A8(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CD014C0, &qword_21A3041D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t initializeBufferWithCopyOfBuffer for RecipeScrollPosition(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t getEnumTagSinglePayload for RecipeScrollPosition(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for RecipeScrollPosition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_21A2673F0()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_21A2F8434();
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    MEMORY[0x21CED6EE0](v5);
    MEMORY[0x21CED6EE0](v2);
    MEMORY[0x21CED6EE0](v1);
  }

  else
  {
    MEMORY[0x21CED6EE0](0);
    v3 = v2;
  }

  MEMORY[0x21CED6EE0](v3);
  return sub_21A2F8474();
}

uint64_t sub_21A26749C()
{
  v1 = *v0;
  if (*(v0 + 24))
  {
    v3 = v0[1];
    v2 = v0[2];
    if (*(v0 + 24) == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    MEMORY[0x21CED6EE0](v4);
    MEMORY[0x21CED6EE0](v1);
    MEMORY[0x21CED6EE0](v3);
  }

  else
  {
    MEMORY[0x21CED6EE0](0);
    v2 = v1;
  }

  return MEMORY[0x21CED6EE0](v2);
}

uint64_t sub_21A267518(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = *(v1 + 24);
  sub_21A2F8434();
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    MEMORY[0x21CED6EE0](v6);
    MEMORY[0x21CED6EE0](v3);
    MEMORY[0x21CED6EE0](v2);
  }

  else
  {
    MEMORY[0x21CED6EE0](0);
    v4 = v3;
  }

  MEMORY[0x21CED6EE0](v4);
  return sub_21A2F8474();
}

unint64_t sub_21A2675C4()
{
  result = qword_27CD03770;
  if (!qword_27CD03770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03770);
  }

  return result;
}

BOOL sub_21A267618(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = *(a2 + 24);
  v9 = *a2 == *a1;
  if (*(a2 + 24))
  {
    v9 = 0;
  }

  v12 = v2 == v5 && v3 == v6 && v4 == v7;
  if (v8 != 1)
  {
    v12 = 0;
  }

  v15 = v2 == v5 && v3 == v6 && v4 == v7;
  if (v8 != 2)
  {
    v15 = 0;
  }

  if (*(a1 + 24) == 1)
  {
    v15 = v12;
  }

  if (*(a1 + 24))
  {
    return v15;
  }

  else
  {
    return v9;
  }
}

uint64_t type metadata accessor for RecipeCardHeroBackgroundView(uint64_t a1)
{
  result = qword_27CD03778;
  if (!qword_27CD03778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21A2676FC(uint64_t a1)
{
  type metadata accessor for RecipeTheme(319);
  if (v1 <= 0x3F)
  {
    sub_21A1B4A08();
    if (v2 <= 0x3F)
    {
      sub_21A1A3BEC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21A2677B4()
{
  v1 = sub_21A2F5654();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v29 - v8;
  v10 = sub_21A176C98(&qword_27CD03788, &qword_21A30DA30);
  MEMORY[0x28223BE20](v10, v11);
  v13 = (&v29 - v12);
  v14 = sub_21A176C98(&qword_27CD03790, &qword_21A30DA38);
  MEMORY[0x28223BE20](v14, v15);
  v17 = (&v29 - v16);
  if (sub_21A22E8E4())
  {
    *v17 = sub_21A2F7344();
    v17[1] = v18;
    v19 = sub_21A176C98(&qword_27CD037C0, &qword_21A30DA50);
    sub_21A267B04(v0, v17 + *(v19 + 44));
    v20 = sub_21A2F73A4();
    v21 = (v17 + *(v14 + 36));
    v22 = sub_21A176C98(&qword_27CD037B8, &qword_21A30DA48);
    sub_21A2685F8(v0, v21 + *(v22 + 36));
    *v21 = v20;
    sub_21A183960(v17, v13, &qword_27CD03790, &qword_21A30DA38);
    swift_storeEnumTagMultiPayload();
    sub_21A268514();
    sub_21A2F6114();
    return sub_21A1427A8(v17, &qword_27CD03790, &qword_21A30DA38);
  }

  else
  {
    type metadata accessor for RecipeCardHeroBackgroundView(0);
    sub_21A1AC5F4(v9);
    (*(v2 + 104))(v5, *MEMORY[0x277CDF3C0], v1);
    v24 = sub_21A2F5644();
    v25 = *(v2 + 8);
    v25(v5, v1);
    v25(v9, v1);
    v26 = objc_opt_self();
    v27 = &selRef_systemBackgroundColor;
    if ((v24 & 1) == 0)
    {
      v27 = &selRef_secondarySystemBackgroundColor;
    }

    v28 = [v26 *v27];
    *v13 = sub_21A2F6EF4();
    swift_storeEnumTagMultiPayload();
    sub_21A268514();
    return sub_21A2F6114();
  }
}

uint64_t sub_21A267B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v55 = sub_21A2F5654();
  v3 = *(v55 - 8);
  MEMORY[0x28223BE20](v55, v4);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v51 - v9;
  v58 = sub_21A176C98(&qword_27CD037C8, &qword_21A30DA58);
  MEMORY[0x28223BE20](v58, v11);
  v13 = (&v51 - v12);
  v59 = sub_21A176C98(&qword_27CD037D0, &qword_21A30DA60);
  MEMORY[0x28223BE20](v59, v14);
  v57 = (&v51 - v15);
  v16 = sub_21A176C98(&qword_27CD037D8, &qword_21A30DA68);
  v53 = *(v16 - 8);
  v54 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v51 - v18;
  v20 = sub_21A176C98(&qword_27CD037E0, &unk_21A30DA70);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v23 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v56 = &v51 - v26;
  v27 = type metadata accessor for RecipeTheme(0);
  MEMORY[0x28223BE20](v27, v28);
  v30 = (&v51 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21A2685F8(a1, v30);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v32 = *v30;
  if (EnumCaseMultiPayload != 1)
  {
    v42 = v30[1];
    v52 = *v30;
    if (v32)
    {
      v43 = v32;
      v44 = sub_21A2F6EF4();

      v45 = 1;
      if (v42)
      {
LABEL_7:
        v46 = v42;
        sub_21A26812C(v46, v19);

        v47 = v54;
        v19[*(v54 + 36)] = 1;
        v48 = v56;
        sub_21A165A34(v19, v56);
        v45 = 0;
LABEL_10:
        (*(v53 + 56))(v48, v45, 1, v47);
        v56 = *(sub_21A176C98(&qword_27CCFEEA8, &qword_21A2FB130) + 64);
        sub_21A183960(v48, v23, &qword_27CD037E0, &unk_21A30DA70);
        v49 = v57;
        *v57 = v44;
        v50 = sub_21A176C98(&qword_27CD037F0, &unk_21A30DA80);
        sub_21A183960(v23, v49 + *(v50 + 48), &qword_27CD037E0, &unk_21A30DA70);

        sub_21A1427A8(v23, &qword_27CD037E0, &unk_21A30DA70);

        sub_21A183960(v49, v13, &qword_27CD037D0, &qword_21A30DA60);
        swift_storeEnumTagMultiPayload();
        sub_21A1772F8(&qword_27CD037E8, &qword_27CD037D0, &qword_21A30DA60, MEMORY[0x277CE14C0]);
        sub_21A2F6114();

        sub_21A1427A8(v49, &qword_27CD037D0, &qword_21A30DA60);
        sub_21A1427A8(v48, &qword_27CD037E0, &unk_21A30DA70);
        return sub_21A183894(v30 + v56);
      }
    }

    else
    {
      v44 = 0;
      v45 = 1;
      if (v42)
      {
        goto LABEL_7;
      }
    }

    v46 = 0;
    v48 = v56;
    v47 = v54;
    goto LABEL_10;
  }

  type metadata accessor for RecipeCardHeroBackgroundView(0);
  sub_21A1AC5F4(v10);
  v33 = v55;
  (*(v3 + 104))(v6, *MEMORY[0x277CDF3C0], v55);
  v34 = sub_21A2F5644();
  v35 = *(v3 + 8);
  v35(v6, v33);
  v35(v10, v33);
  v36 = objc_opt_self();
  v37 = &selRef_systemBackgroundColor;
  if ((v34 & 1) == 0)
  {
    v37 = &selRef_secondarySystemBackgroundColor;
  }

  v38 = [v36 *v37];
  v39 = sub_21A2F6EF4();
  v40 = *(sub_21A176C98(&qword_27CCFEB90, &unk_21A2FCE50) + 48);
  *v13 = v39;
  swift_storeEnumTagMultiPayload();
  sub_21A1772F8(&qword_27CD037E8, &qword_27CD037D0, &qword_21A30DA60, MEMORY[0x277CE14C0]);
  sub_21A2F6114();
  return sub_21A1BB548(v30 + v40);
}

uint64_t sub_21A26812C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_21A176C98(&qword_27CD00E10, &unk_21A301C00);
  v4 = *(v3 - 8);
  v36 = v3;
  v37 = v4;
  MEMORY[0x28223BE20](v3, v5);
  v35 = &v33 - v6;
  v7 = sub_21A176C98(&qword_27CD00E18, &unk_21A30DA90);
  v8 = *(v7 - 8);
  v33 = v7;
  v34 = v8;
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v33 - v10;
  v12 = sub_21A2F5034();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21A176C98(&qword_27CD00E20, &qword_21A301C10);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v33 - v20;
  v22 = sub_21A176C98(&qword_27CD037F8, &qword_21A30DAA0);
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v33 - v24;
  v26 = a1;
  sub_21A2F5024();
  v28 = sub_21A26865C(v27);
  sub_21A2F69E4();
  (*(v13 + 8))(v16, v12);
  sub_21A2F5064();
  v29 = v33;
  sub_21A2F5054();
  (*(v34 + 8))(v11, v29);
  v39 = v12;
  v40 = v28;
  swift_getOpaqueTypeConformance2();
  v30 = v35;
  sub_21A2F69E4();
  (*(v18 + 8))(v21, v17);
  v31 = v36;
  sub_21A2F5044();
  (*(v37 + 8))(v30, v31);
  *&v25[*(v22 + 36)] = 0x3FF3333333333333;
  sub_21A2686B4();
  sub_21A2F6EB4();
  return sub_21A1427A8(v25, &qword_27CD037F8, &qword_21A30DAA0);
}

unint64_t sub_21A268514()
{
  result = qword_27CD03798;
  if (!qword_27CD03798)
  {
    sub_21A176D98(&qword_27CD03790, &qword_21A30DA38);
    sub_21A1772F8(&qword_27CD037A0, &qword_27CD037A8, &qword_21A30DA40, MEMORY[0x277CE11A8]);
    sub_21A1772F8(&qword_27CD037B0, &qword_27CD037B8, &qword_21A30DA48, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03798);
  }

  return result;
}

uint64_t sub_21A2685F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeTheme(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21A26865C(__n128 a1)
{
  result = qword_27CD00E48;
  if (!qword_27CD00E48)
  {
    sub_21A2F5034();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00E48);
  }

  return result;
}

unint64_t sub_21A2686B4()
{
  result = qword_27CD03800;
  if (!qword_27CD03800)
  {
    sub_21A176D98(&qword_27CD037F8, &qword_21A30DAA0);
    sub_21A176D98(&qword_27CD00E20, &qword_21A301C10);
    sub_21A2F5034();
    sub_21A26865C(v1);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03800);
  }

  return result;
}

unint64_t sub_21A2687B4()
{
  result = qword_27CD03808;
  if (!qword_27CD03808)
  {
    sub_21A176D98(&qword_27CD03810, &qword_21A30DAA8);
    sub_21A268514();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03808);
  }

  return result;
}

uint64_t sub_21A26886C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_21A2689C4(&qword_27CCFECD0, type metadata accessor for CookingModeViewModel, &unk_21A3020F0);
  sub_21A2F7754();
  v2 = *(type metadata accessor for CookingModeView(0) + 20);
  *(a1 + v2) = swift_getKeyPath();
  sub_21A176C98(&qword_27CCFECD8, &unk_21A2FB250);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21A26892C()
{
  type metadata accessor for CookingModeView(0);
  sub_21A2689C4(&qword_27CCFECC8, type metadata accessor for CookingModeView, &protocol conformance descriptor for CookingModeView);

  return sub_21A2F5B04();
}

uint64_t sub_21A2689C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21A268A0C()
{
  result = qword_27CD03818;
  if (!qword_27CD03818)
  {
    sub_21A176D98(&qword_27CD03820, &qword_21A30DBA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03818);
  }

  return result;
}

uint64_t InTextIngredient.recipeIngredientsID.getter()
{
  v1 = *v0;
  sub_21A2F5434();
  return v1;
}

__n128 InTextIngredient.textRange.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

uint64_t sub_21A268AB0()
{
  if (*v0)
  {
    return 0x676E615274786574;
  }

  else
  {
    return 0xD000000000000013;
  }
}

void sub_21A268AF4(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x800000021A31A440 == a2 || (sub_21A2F8394() & 1) != 0)
  {

    v6 = 0;
  }

  else if (a1 == 0x676E615274786574 && a2 == 0xE900000000000065)
  {

    v6 = 1;
  }

  else
  {
    v7 = sub_21A2F8394();

    if (v7)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  *a3 = v6;
}

uint64_t sub_21A268BE4(uint64_t a1)
{
  v2 = sub_21A269074();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A268C20(uint64_t a1)
{
  v2 = sub_21A269074();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InTextIngredient.encode(to:)(void *a1)
{
  v4 = sub_21A176C98(&qword_27CD03828, &qword_21A30DBB0);
  v13 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v10 - v6;
  v8 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = v8;
  sub_21A142764(a1, a1[3]);
  sub_21A269074();
  sub_21A2F84B4();
  LOBYTE(v14) = 0;
  sub_21A2F82B4();
  if (!v2)
  {
    v14 = v12;
    v15 = v11;
    v16 = 1;
    sub_21A263C60();
    sub_21A2F8324();
  }

  return (*(v13 + 8))(v7, v4);
}

void InTextIngredient.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21A176C98(&qword_27CD03838, &qword_21A30DBB8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v15 - v8;
  sub_21A142764(a1, a1[3]);
  sub_21A269074();
  sub_21A2F8494();
  if (!v2)
  {
    LOBYTE(v15) = 0;
    v10 = sub_21A2F8214();
    v12 = v11;
    v13 = v10;
    v16 = 1;
    sub_21A263D18();
    sub_21A2F8284();
    (*(v6 + 8))(v9, v5);
    v14 = v15;
    *a2 = v13;
    *(a2 + 8) = v12;
    *(a2 + 16) = v14;
    sub_21A2F5434();
  }

  sub_21A142808(a1);
}

BOOL _s10CookingKit16InTextIngredientV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (v6)
    {
      v9 = *a1 == *a2 && v3 == v6;
      if (v9 || (sub_21A2F8394() & 1) != 0)
      {
        return v4 == v7 && v5 == v8;
      }
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

  return v4 == v7 && v5 == v8;
}

unint64_t sub_21A269074()
{
  result = qword_27CD03830;
  if (!qword_27CD03830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03830);
  }

  return result;
}

uint64_t sub_21A2690C8(uint64_t a1, unsigned int a2)
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

uint64_t sub_21A269124(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21A26919C()
{
  result = qword_27CD03840;
  if (!qword_27CD03840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03840);
  }

  return result;
}

unint64_t sub_21A2691F4()
{
  result = qword_27CD03848;
  if (!qword_27CD03848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03848);
  }

  return result;
}

unint64_t sub_21A26924C()
{
  result = qword_27CD03850;
  if (!qword_27CD03850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03850);
  }

  return result;
}

uint64_t ExternalRecipePaywallStatus.hashValue.getter()
{
  v1 = *v0;
  sub_21A2F8434();
  MEMORY[0x21CED6EE0](v1);
  return sub_21A2F8474();
}

void *Dependencies.paywallStatus.getter()
{
  sub_21A269394();
  sub_21A2693E8();

  return sub_21A2F7624();
}

unint64_t sub_21A269394()
{
  result = qword_27CD03858;
  if (!qword_27CD03858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03858);
  }

  return result;
}

unint64_t sub_21A2693E8()
{
  result = qword_27CD03860;
  if (!qword_27CD03860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03860);
  }

  return result;
}

void *sub_21A26943C@<X0>(_BYTE *a1@<X8>)
{
  sub_21A269394();
  sub_21A2693E8();
  result = sub_21A2F7624();
  *a1 = v3;
  return result;
}

uint64_t sub_21A2694A0(char *a1)
{
  sub_21A269394();
  sub_21A2693E8();
  return sub_21A2F7634();
}

uint64_t Dependencies.paywallStatus.setter(char *a1)
{
  sub_21A269394();
  sub_21A2693E8();
  return sub_21A2F7634();
}

uint64_t (*Dependencies.paywallStatus.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  a1[1] = sub_21A269394();
  a1[2] = sub_21A2693E8();
  sub_21A2F7624();
  return sub_21A2695C4;
}

uint64_t sub_21A269624@<X0>(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v90 = a1;
  v88 = a2;
  v96 = sub_21A2F64C4();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96, v2);
  v93 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_21A176C98(&qword_27CD038A8, &qword_21A30E080);
  MEMORY[0x28223BE20](v91, v4);
  v92 = &v77 - v5;
  v98 = sub_21A176C98(&qword_27CD038B0, &qword_21A30E088);
  MEMORY[0x28223BE20](v98, v6);
  v94 = &v77 - v7;
  v85 = sub_21A176C98(&qword_27CD038B8, &qword_21A30E090);
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85, v8);
  v97 = &v77 - v9;
  v87 = sub_21A176C98(&qword_27CD038C0, &unk_21A30E098);
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87, v10);
  v102 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v101 = &v77 - v14;
  v103 = sub_21A176C98(&qword_27CCFEF60, &qword_21A3024C0);
  MEMORY[0x28223BE20](v103, v15);
  v17 = &v77 - v16;
  v18 = sub_21A176C98(&qword_27CD038C8, &qword_21A30E0A8);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v77 - v21;
  v100 = sub_21A176C98(&qword_27CD038D0, &qword_21A30E0B0);
  v83 = *(v100 - 8);
  MEMORY[0x28223BE20](v100, v23);
  v99 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v104 = &v77 - v27;
  sub_21A2F5F54();
  if (qword_27CCFE760 != -1)
  {
    swift_once();
  }

  v28 = qword_27CD23BB8;
  v29 = sub_21A2F69A4();
  v31 = v30;
  v106 = v29;
  v107 = v30;
  v33 = v32 & 1;
  LOBYTE(v108) = v32 & 1;
  v109 = v34;
  v35 = MEMORY[0x277CE0BC8];
  sub_21A2F6DD4();
  sub_21A1834EC(v29, v31, v33);

  v36 = *MEMORY[0x277CDFA10];
  v37 = sub_21A2F5A64();
  v38 = *(v37 - 8);
  v39 = *(v38 + 104);
  v40 = v38 + 104;
  v39(v17, v36, v37);
  v89 = sub_21A26AC04(&qword_27CCFEFA0, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_21A2F7874();
  if (result)
  {
    v106 = MEMORY[0x277CE0BD8];
    v107 = v35;
    swift_getOpaqueTypeConformance2();
    v82 = v39;
    v81 = v40;
    v77 = sub_21A1772F8(&qword_27CCFEFD0, &qword_27CCFEF60, &qword_21A3024C0, MEMORY[0x277D84470]);
    sub_21A2F6BC4();
    sub_21A1427A8(v17, &qword_27CCFEF60, &qword_21A3024C0);
    (*(v19 + 8))(v22, v18);
    v42 = v90;
    v110 = *v90;
    v105 = *v90;
    sub_21A176C98(&qword_27CCFF4C8, &qword_21A2FC720);
    sub_21A2F7044();
    v79 = v106;
    v78 = v107;
    v43 = v108;
    sub_21A2F5F54();
    v80 = v36;
    v44 = swift_allocObject();
    v45 = v42[1];
    *(v44 + 16) = *v42;
    *(v44 + 32) = v45;
    *(v44 + 48) = *(v42 + 4);
    sub_21A26A998(&v110, &v106);

    v46 = v92;
    sub_21A2F70B4();
    v47 = sub_21A2F6F24();
    *(v46 + *(sub_21A176C98(&qword_27CD038D8, &qword_21A30E0B8) + 36)) = v47;
    v48 = sub_21A2F6F34();
    KeyPath = swift_getKeyPath();
    v50 = (v46 + *(v91 + 36));
    *v50 = KeyPath;
    v50[1] = v48;
    v51 = v93;
    sub_21A2F64B4();
    sub_21A26AA68();
    sub_21A26AC04(&qword_27CD038F0, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
    v52 = v94;
    v53 = v96;
    sub_21A2F6AC4();
    (*(v95 + 8))(v51, v53);
    sub_21A1427A8(v46, &qword_27CD038A8, &qword_21A30E080);
    v54 = v98;
    v55 = (v52 + *(v98 + 36));
    sub_21A176C98(&qword_27CD038F8, &qword_21A30E0F8);
    sub_21A2F5C24();
    *v55 = swift_getKeyPath();
    v56 = sub_21A26AD14();
    v57 = v97;
    sub_21A2F6DD4();
    sub_21A1427A8(v52, &qword_27CD038B0, &qword_21A30E088);
    v82(v17, v80, v37);
    result = sub_21A2F7874();
    if (result)
    {
      v106 = v54;
      v107 = v56;
      swift_getOpaqueTypeConformance2();
      v58 = v101;
      v59 = v85;
      sub_21A2F6BC4();
      sub_21A1427A8(v17, &qword_27CCFEF60, &qword_21A3024C0);
      (*(v84 + 8))(v57, v59);
      v60 = v83;
      v61 = *(v83 + 16);
      v63 = v99;
      v62 = v100;
      v61(v99, v104, v100);
      v64 = v86;
      v65 = *(v86 + 16);
      v66 = v58;
      v67 = v87;
      v65(v102, v66, v87);
      v68 = v88;
      v61(v88, v63, v62);
      v69 = sub_21A176C98(&qword_27CD03910, &qword_21A30E130);
      v70 = &v68[*(v69 + 48)];
      v71 = v78;
      *v70 = v79;
      *(v70 + 1) = v71;
      *(v70 + 2) = v43;
      v72 = &v68[*(v69 + 64)];
      v73 = v102;
      v65(v72, v102, v67);
      v74 = *(v64 + 8);

      v74(v101, v67);
      v75 = *(v60 + 8);
      v76 = v100;
      v75(v104, v100);
      v74(v73, v67);

      return (v75)(v99, v76);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21A26A17C(__int128 *a1)
{
  v1 = *(a1 + 3);
  sub_21A176C98(&qword_27CCFF4C8, &qword_21A2FC720);
  v2 = sub_21A2F7024();
  return v1(v2);
}

uint64_t sub_21A26A1E4()
{
  v1 = sub_21A176C98(&qword_27CD03890, &qword_21A30E068);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v11[-v3 - 8];
  v5 = v0[1];
  v13 = *v0;
  v14 = v5;
  v15 = *(v0 + 4);
  *v4 = sub_21A2F6004();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v6 = sub_21A176C98(&qword_27CD03898, &unk_21A30E070);
  sub_21A269624(&v13, &v4[*(v6 + 44)]);
  v12 = v14;
  v16 = v13;
  v7 = swift_allocObject();
  v8 = v14;
  *(v7 + 16) = v13;
  *(v7 + 32) = v8;
  *(v7 + 48) = v15;
  sub_21A26A998(&v16, v11);
  sub_21A1772F8(&qword_27CD038A0, &qword_27CD03890, &qword_21A30E068, MEMORY[0x277CE1198]);

  sub_21A2F6E74();

  return sub_21A1427A8(v4, &qword_27CD03890, &qword_21A30E068);
}

double sub_21A26A39C@<D0>(double *a1@<X8>)
{
  sub_21A176C98(&qword_27CD03878, &qword_21A30DFD0);
  sub_21A2F71A4();
  result = v5;
  *a1 = v3;
  *(a1 + 1) = v4;
  a1[2] = v5;
  return result;
}

id sub_21A26A500()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TimeLimitPickerRepresentable.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21A26A5B0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D753E8]) init];
  [v0 setDatePickerMode_];
  [v0 setPreferredDatePickerStyle_];
  sub_21A176C98(&qword_27CD03880, qword_21A30DFD8);
  sub_21A2F6464();
  [v0 addTarget:v2 action:sel_updateTimeLimit_ forControlEvents:4096];

  return v0;
}

id sub_21A26A660(void *a1)
{
  v3 = v1[1];
  v4 = v1[2];
  v7[1] = *v1;
  v7[2] = v3;
  v7[3] = v4;
  v5 = sub_21A176C98(&qword_27CD03878, &qword_21A30DFD0);
  MEMORY[0x21CED5C20](v7, v5);
  return [a1 setCountDownDuration_];
}

void *sub_21A26A6D4@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = type metadata accessor for TimeLimitPickerRepresentable.Coordinator();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtCV10CookingKitP33_3FE83860B62C210505335C3B40C86F6928TimeLimitPickerRepresentable11Coordinator_parent];
  *v8 = v3;
  *(v8 + 1) = v4;
  *(v8 + 2) = v5;
  v10.receiver = v7;
  v10.super_class = v6;

  result = objc_msgSendSuper2(&v10, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_21A26A778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A26A8C0();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_21A26A7DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A26A8C0();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_21A26A840(uint64_t a1)
{
  sub_21A26A8C0();
  sub_21A2F60C4();
  __break(1u);
}

unint64_t sub_21A26A86C()
{
  result = qword_27CD03870;
  if (!qword_27CD03870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03870);
  }

  return result;
}

unint64_t sub_21A26A8C0()
{
  result = qword_27CD03888;
  if (!qword_27CD03888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03888);
  }

  return result;
}

uint64_t sub_21A26A998(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CCFF4C8, &qword_21A2FC720);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A26AA10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A2F5EA4();
  *a1 = result;
  return result;
}

unint64_t sub_21A26AA68()
{
  result = qword_27CD038E0;
  if (!qword_27CD038E0)
  {
    sub_21A176D98(&qword_27CD038A8, &qword_21A30E080);
    sub_21A26AB20();
    sub_21A1772F8(&qword_27CD017A8, &qword_27CD017B0, &unk_21A305040, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD038E0);
  }

  return result;
}

unint64_t sub_21A26AB20()
{
  result = qword_27CD038E8;
  if (!qword_27CD038E8)
  {
    sub_21A176D98(&qword_27CD038D8, &qword_21A30E0B8);
    sub_21A1772F8(&qword_27CCFED80, &qword_27CCFED78, &unk_21A2FAC60, MEMORY[0x277CDF028]);
    sub_21A1772F8(&qword_27CCFE938, &qword_27CCFE940, &unk_21A2F9A70, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD038E8);
  }

  return result;
}

uint64_t sub_21A26AC04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21A26AC4C(uint64_t a1)
{
  v2 = sub_21A2F5C34();
  v4 = MEMORY[0x28223BE20](v2, v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_21A2F5D54();
}

unint64_t sub_21A26AD14()
{
  result = qword_27CD03900;
  if (!qword_27CD03900)
  {
    sub_21A176D98(&qword_27CD038B0, &qword_21A30E088);
    sub_21A176D98(&qword_27CD038A8, &qword_21A30E080);
    sub_21A2F64C4();
    sub_21A26AA68();
    sub_21A26AC04(&qword_27CD038F0, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
    swift_getOpaqueTypeConformance2();
    sub_21A1772F8(&qword_27CD03908, &qword_27CD038F8, &qword_21A30E0F8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03900);
  }

  return result;
}

uint64_t sub_21A26AE58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_21A26AEA0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t static WebRecipeSource.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_21A2F8394() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for WebRecipeSource(0);

  return sub_21A2F4724();
}

uint64_t WebRecipeSource.name.getter()
{
  v1 = *v0;
  sub_21A2F5434();
  return v1;
}

uint64_t WebRecipeSource.webURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebRecipeSource(0) + 20);
  v4 = sub_21A2F4794();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_21A26B03C()
{
  if (*v0)
  {
    return 0x4C5255626577;
  }

  else
  {
    return 1701667182;
  }
}

void sub_21A26B06C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_21A2F8394() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x4C5255626577 && a2 == 0xE600000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_21A2F8394();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_21A26B144(uint64_t a1)
{
  v2 = sub_21A26B360();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A26B180(uint64_t a1)
{
  v2 = sub_21A26B360();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WebRecipeSource.encode(to:)(void *a1)
{
  v3 = sub_21A176C98(&qword_27CD03918, &qword_21A30E198);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v9[-v6];
  sub_21A142764(a1, a1[3]);
  sub_21A26B360();
  sub_21A2F84B4();
  v9[15] = 0;
  sub_21A2F82E4();
  if (!v1)
  {
    type metadata accessor for WebRecipeSource(0);
    v9[14] = 1;
    sub_21A2F4794();
    sub_21A26B6C4(&qword_27CD02E88, MEMORY[0x277CC9268]);
    sub_21A2F8324();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_21A26B360()
{
  result = qword_27CD03920;
  if (!qword_27CD03920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03920);
  }

  return result;
}

void WebRecipeSource.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v21 = sub_21A2F4794();
  v18 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21A176C98(&qword_27CD03928, &qword_21A30E1A0);
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v7);
  v9 = &v17 - v8;
  v10 = type metadata accessor for WebRecipeSource(0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = (&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21A142764(a1, a1[3]);
  sub_21A26B360();
  sub_21A2F8494();
  if (v2)
  {
    sub_21A142808(a1);
  }

  else
  {
    v17 = v10;
    v15 = v20;
    v14 = v21;
    v24 = 0;
    *v13 = sub_21A2F8244();
    v13[1] = v16;
    v23 = 1;
    sub_21A26B6C4(&qword_27CD02EB0, MEMORY[0x277CC9280]);
    sub_21A2F8284();
    (*(v15 + 8))(v9, v22);
    (*(v18 + 32))(v13 + *(v17 + 20), v6, v14);
    sub_21A26B708(v13, v19);
    sub_21A142808(a1);
    sub_21A26B76C(v13);
  }
}

uint64_t sub_21A26B6C4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_21A2F4794();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21A26B708(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebRecipeSource(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A26B76C(uint64_t a1)
{
  v2 = type metadata accessor for WebRecipeSource(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A26B7F8(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (!v3 && (sub_21A2F8394() & 1) == 0)
  {
    return 0;
  }

  return sub_21A2F4724();
}

unint64_t sub_21A26B8B8()
{
  result = qword_27CD03930;
  if (!qword_27CD03930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03930);
  }

  return result;
}

unint64_t sub_21A26B910()
{
  result = qword_27CD03938;
  if (!qword_27CD03938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03938);
  }

  return result;
}

unint64_t sub_21A26B968()
{
  result = qword_27CD03940;
  if (!qword_27CD03940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03940);
  }

  return result;
}

uint64_t sub_21A26B9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for ExportToGroceryListTipViewModifier(0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = (&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v15 = a1;
  v15[1] = a2;
  v15[2] = a3;
  v15[3] = a4;
  swift_getKeyPath();
  sub_21A26D268(&qword_27CD03948, &unk_21A30FDE4);
  sub_21A2F5434();
  sub_21A2F5434();
  sub_21A2F7754();
  v16 = v15 + *(v12 + 24);
  v22 = 0;
  sub_21A2F7014();
  v17 = v24;
  *v16 = v23;
  *(v16 + 1) = v17;
  v18 = v15 + *(v12 + 28);
  v22 = 0;
  sub_21A2F7014();
  v19 = v24;
  *v18 = v23;
  *(v18 + 1) = v19;
  MEMORY[0x21CED58F0](v15, a5, v12, a6);
  return sub_21A26C620(v15);
}

uint64_t type metadata accessor for ExportToGroceryListTipViewModifier(uint64_t a1)
{
  result = qword_27CD03960;
  if (!qword_27CD03960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21A26BB9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a1;
  v70 = a2;
  v3 = sub_21A2F6374();
  v68 = *(v3 - 8);
  v69 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v67 = (v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for ExportToGroceryListTipViewModifier(0);
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v9);
  v57[0] = v10;
  v11 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21A176C98(&qword_27CD03980, &qword_21A30E4E0);
  v13 = *(v12 - 8);
  v60 = v12;
  v61 = v13;
  MEMORY[0x28223BE20](v12, v14);
  v58 = v57 - v15;
  v16 = sub_21A176C98(&qword_27CD03988, &qword_21A30E4E8);
  v65 = *(v16 - 8);
  v66 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v71 = v57 - v18;
  v19 = sub_21A176C98(&qword_27CD03990, &qword_21A30E4F0);
  v63 = *(v19 - 8);
  v64 = v19;
  MEMORY[0x28223BE20](v19, v20);
  v62 = v57 - v21;
  sub_21A26D130(v2, v11);
  v22 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v23 = swift_allocObject();
  sub_21A26D194(v11, v23 + v22);
  v24 = sub_21A176C98(&qword_27CD03998, &qword_21A30E4F8);
  v25 = sub_21A1772F8(&qword_27CD039A0, &qword_27CD03998, &qword_21A30E4F8, MEMORY[0x277CE04B0]);
  sub_21A2F6D54();

  v59 = *(v7 + 28);
  v57[1] = sub_21A176C98(&qword_27CD03958, &qword_21A30E388);
  v26 = v2;
  v27 = sub_21A2F7714();
  swift_getKeyPath();
  v76 = v27;
  sub_21A26D268(&qword_27CD039A8, &unk_21A30FDC8);
  sub_21A2F5094();

  v28 = *(v27 + 16);

  LOBYTE(v72) = v28;
  sub_21A26D130(v26, v11);
  v29 = swift_allocObject();
  sub_21A26D194(v11, v29 + v22);
  v76 = v24;
  v77 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = MEMORY[0x277D839B0];
  v32 = MEMORY[0x277D839C8];
  v33 = v60;
  v34 = v58;
  sub_21A2F6E74();

  v35 = v33;
  (*(v61 + 8))(v34, v33);
  v36 = sub_21A2F7714();
  swift_getKeyPath();
  v76 = v36;
  sub_21A2F5094();

  LODWORD(v34) = *(v36 + 16);

  if (v34 == 1)
  {
    v37 = *v26;
    v38 = v32;
    v39 = v26[1];
    v40 = v26[2];
    v41 = v26[3];
    v42 = sub_21A26D308();
    v43 = swift_allocObject();
    v43[2] = v37;
    v43[3] = v39;
    v43[4] = v40;
    v43[5] = v41;
    v32 = v38;
    sub_21A2F5434();
    sub_21A2F5434();
    v44 = &type metadata for ExportToGroceryListTip;
  }

  else
  {
    v44 = 0;
    v42 = 0;
    v43 = 0;
    v77 = 0;
    v78 = 0;
  }

  v79 = v44;
  v80 = v42;
  v76 = v43;
  v45 = sub_21A2F7074();
  v47 = v67;
  v46 = v68;
  *v67 = v45;
  v48 = v69;
  (*(v46 + 104))(v47, *MEMORY[0x277CDE248], v69);
  v72 = v35;
  v73 = v31;
  v74 = OpaqueTypeConformance2;
  v75 = v32;
  swift_getOpaqueTypeConformance2();
  v49 = v66;
  v50 = v62;
  v51 = v71;
  sub_21A2F69F4();
  (*(v46 + 8))(v47, v48);
  (*(v65 + 8))(v51, v49);
  sub_21A212294(&v76);
  v52 = sub_21A2F6F64();
  KeyPath = swift_getKeyPath();
  v54 = v70;
  (*(v63 + 32))(v70, v50, v64);
  result = sub_21A176C98(&qword_27CD039B0, &unk_21A30E560);
  v56 = (v54 + *(result + 36));
  *v56 = KeyPath;
  v56[1] = v52;
  return result;
}

uint64_t sub_21A26C2D8(char a1, uint64_t a2)
{
  type metadata accessor for ExportToGroceryListTipViewModifier(0);
  sub_21A176C98(&qword_27CD01740, &unk_21A30E570);
  sub_21A2F7034();
  return sub_21A26C354();
}

uint64_t sub_21A26C354()
{
  type metadata accessor for ExportToGroceryListTipViewModifier(0);
  sub_21A176C98(&qword_27CD03958, &qword_21A30E388);
  v0 = sub_21A2F7714();
  swift_getKeyPath();
  sub_21A26D268(&qword_27CD039A8, &unk_21A30FDC8);
  sub_21A2F5094();

  v1 = *(v0 + 16);

  if (v1 == 1 && (sub_21A176C98(&qword_27CD01740, &unk_21A30E570), sub_21A2F7024(), v6 == 1) && (sub_21A2F7024(), (v6 & 1) == 0))
  {
    sub_21A2F7034();
    if (qword_27CCFE858 != -1)
    {
      swift_once();
    }

    v4 = sub_21A176C98(&qword_27CD01748, &unk_21A305010);
    sub_21A177CBC(v4, qword_27CD23D60);
    sub_21A2F54D4();

    if (qword_27CCFE860 != -1)
    {
      swift_once();
    }

    v5 = sub_21A176C98(&qword_27CD01738, &unk_21A305000);
    sub_21A177CBC(v5, qword_27CD23D78);
    sub_21A2F54E4();
    return sub_21A2F54B4();
  }

  else
  {
    if (qword_27CCFE860 != -1)
    {
      swift_once();
    }

    v2 = sub_21A176C98(&qword_27CD01738, &unk_21A305000);
    sub_21A177CBC(v2, qword_27CD23D78);
    return sub_21A2F54E4();
  }
}

uint64_t sub_21A26C620(uint64_t a1)
{
  v2 = type metadata accessor for ExportToGroceryListTipViewModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21A26C67C()
{
  result = qword_27CD03950;
  if (!qword_27CD03950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03950);
  }

  return result;
}

void sub_21A26C6F8(uint64_t a1)
{
  sub_21A26C78C(319);
  if (v1 <= 0x3F)
  {
    sub_21A210A80();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21A26C78C(uint64_t a1)
{
  if (!qword_27CD03970)
  {
    type metadata accessor for ExportToGroceryListTipState(255);
    sub_21A26D268(&qword_27CD03948, &unk_21A30FDE4);
    v1 = sub_21A2F7744();
    if (!v2)
    {
      atomic_store(v1, &qword_27CD03970);
    }
  }
}

uint64_t sub_21A26C820()
{
  v0 = sub_21A176C98(&qword_27CD01748, &unk_21A305010);
  sub_21A177DCC(v0, qword_27CD23D60);
  sub_21A177CBC(v0, qword_27CD23D60);
  return sub_21A2F54C4();
}

uint64_t sub_21A26C890()
{
  v0 = sub_21A176C98(&qword_27CD01738, &unk_21A305000);
  sub_21A177DCC(v0, qword_27CD23D78);
  sub_21A177CBC(v0, qword_27CD23D78);
  return sub_21A2F54F4();
}

uint64_t sub_21A26C93C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_21A176C98(&qword_27CD01760, &unk_21A30E590);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v14[-v6];
  v8 = sub_21A176C98(&qword_27CD01768, &unk_21A305030);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v14[-v11];
  sub_21A1772F8(&qword_27CD01770, &qword_27CD01768, &unk_21A305030, MEMORY[0x277CC90F8]);
  sub_21A2F4644();
  v14[15] = 1;
  sub_21A2F4634();
  a2[3] = sub_21A176C98(&qword_27CD01778, &qword_21A30E5A0);
  a2[4] = sub_21A212350();
  sub_21A156050(a2);
  sub_21A1772F8(&qword_27CD01798, &qword_27CD01760, &unk_21A30E590, MEMORY[0x277CC9080]);
  sub_21A2F4624();
  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_21A26CBDC()
{
  v0 = sub_21A176C98(&qword_27CD01738, &unk_21A305000);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v13 - v3;
  v5 = sub_21A2F5494();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CCFE860 != -1)
  {
    swift_once();
  }

  v10 = sub_21A177CBC(v0, qword_27CD23D78);
  (*(v1 + 16))(v4, v10, v0);
  sub_21A2F54A4();
  sub_21A2F5424();
  (*(v6 + 8))(v9, v5);
  v11 = sub_21A2F5434();

  return v11;
}

uint64_t sub_21A26CDD8()
{
  v0 = sub_21A176C98(&qword_27CD01750, &unk_21A30E580);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v19 - v3;
  v5 = sub_21A2F5474();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21A176C98(&qword_27CD01758, &unk_21A305020);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v19 - v13;
  sub_21A2F5484();
  v15 = MEMORY[0x277CE19F0];
  MEMORY[0x21CED3EE0](v9, v5, MEMORY[0x277CE19F0]);
  (*(v6 + 8))(v9, v5);
  v19 = v5;
  v20 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x21CED3F00](v14, v10, OpaqueTypeConformance2);
  v19 = v10;
  v20 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v17 = sub_21A2F5454();
  (*(v1 + 8))(v4, v0);
  (*(v11 + 8))(v14, v10);
  return v17;
}

uint64_t sub_21A26D07C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_21A26D308();
  result = MEMORY[0x21CED3E90](a1, v5);
  *a2 = result;
  a2[1] = v7;
  return result;
}

unint64_t sub_21A26D0C0()
{
  result = qword_27CD03978;
  if (!qword_27CD03978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03978);
  }

  return result;
}

uint64_t sub_21A26D130(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExportToGroceryListTipViewModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A26D194(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExportToGroceryListTipViewModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A26D1F8(char a1)
{
  v3 = *(type metadata accessor for ExportToGroceryListTipViewModifier(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21A26C2D8(a1, v4);
}

uint64_t sub_21A26D268(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ExportToGroceryListTipState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21A26D308()
{
  result = qword_27CD039B8;
  if (!qword_27CD039B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD039B8);
  }

  return result;
}

uint64_t sub_21A26D35C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A2F4A64();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21A2F7894();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v12 = a2;
  }

  else
  {
    sub_21A2F7884();
    if (qword_27CCFE760 != -1)
    {
      swift_once();
    }

    v13 = qword_27CD23BB8;
    v14 = qword_27CD23BB8;
    sub_21A2F4A54();
    a1 = sub_21A2F7934(v11, a1, 0, v13, v7, "The title of the tooltip for adding to grocery list", 51, 2);
  }

  v16[1] = a1;
  v16[2] = v12;
  sub_21A1834FC();
  sub_21A2F5434();
  return sub_21A2F69B4();
}

uint64_t sub_21A26D4E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A2F4A64();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21A2F7894();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v12 = a2;
  }

  else
  {
    sub_21A2F7884();
    if (qword_27CCFE760 != -1)
    {
      swift_once();
    }

    v13 = qword_27CD23BB8;
    v14 = qword_27CD23BB8;
    sub_21A2F4A54();
    a1 = sub_21A2F7934(v11, a1, 0, v13, v7, "The tooltip message for adding to grocery list", 46, 2);
  }

  v16[1] = a1;
  v16[2] = v12;
  sub_21A1834FC();
  sub_21A2F5434();
  return sub_21A2F69B4();
}

unint64_t sub_21A26D674()
{
  result = qword_27CD039C0;
  if (!qword_27CD039C0)
  {
    sub_21A176D98(&qword_27CD039B0, &unk_21A30E560);
    sub_21A176D98(&qword_27CD03988, &qword_21A30E4E8);
    sub_21A176D98(&qword_27CD03980, &qword_21A30E4E0);
    sub_21A176D98(&qword_27CD03998, &qword_21A30E4F8);
    sub_21A1772F8(&qword_27CD039A0, &qword_27CD03998, &qword_21A30E4F8, MEMORY[0x277CE04B0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21A1772F8(&qword_27CD017A8, &qword_27CD017B0, &unk_21A305040, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD039C0);
  }

  return result;
}

void *Dependencies.importedRecipes.getter()
{
  sub_21A14871C();
  sub_21A148770();

  return sub_21A2F7624();
}

uint64_t sub_21A26D88C()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 104);
    v5 = *(v2 + 112);

    return MEMORY[0x2822009F8](sub_21A26D9A0, v4, v5);
  }

  return result;
}

uint64_t sub_21A26D9A0()
{
  v1 = v0[7];
  if (v1)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      *(Strong + 16) = v1;
      v3 = Strong;

      v0[8] = v3;
      type metadata accessor for ImportedRecipesSource(0);
      sub_21A149260(&qword_2811B6278, type metadata accessor for ImportedRecipesSource, &unk_21A30E610);
      sub_21A2F75C4();

      v4 = sub_21A2F7C24();
      v0[15] = v4;
      sub_21A143D8C((v0 + 2), v0[5]);
      v5 = swift_task_alloc();
      v0[16] = v5;
      *v5 = v0;
      v5[1] = sub_21A26D88C;
      v6 = MEMORY[0x277D85700];

      return MEMORY[0x282200310](v0 + 7, v4, v6);
    }
  }

  sub_21A142808(v0 + 2);
  v7 = v0[1];

  return v7();
}

uint64_t sub_21A26DB74()
{

  sub_21A142808((v0 + 24));
  v1 = OBJC_IVAR____TtC10CookingKit21ImportedRecipesSource___scope;
  v2 = sub_21A2F7614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_21A26DC74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_21A176C98(&qword_27CD03A10, &unk_21A30E7A0);
  v35 = v4;
  v6 = sub_21A2F8184();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
        sub_21A2F5434();
      }

      sub_21A2F8434();
      sub_21A2F79A4();
      v25 = sub_21A2F8474();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
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
        goto LABEL_35;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_21A26DF58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v51 = a6;
  v9 = v6;
  v10 = a2;
  v11 = a3(0);
  v48 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v50 = &v45 - v13;
  v14 = *v6;
  sub_21A176C98(a4, a5);
  v49 = v10;
  v15 = sub_21A2F8184();
  v16 = v15;
  if (*(v14 + 16))
  {
    v46 = v6;
    v47 = v14;
    v17 = 0;
    v18 = (v14 + 64);
    v19 = 1 << *(v14 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v14 + 64);
    v22 = (v19 + 63) >> 6;
    v23 = v15 + 64;
    while (v21)
    {
      v26 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_15:
      v29 = v26 | (v17 << 6);
      v30 = *(v14 + 56);
      v31 = (*(v14 + 48) + 16 * v29);
      v33 = *v31;
      v32 = v31[1];
      v34 = *(v48 + 72);
      v35 = v30 + v34 * v29;
      if (v49)
      {
        sub_21A2708F0(v35, v50, v51);
      }

      else
      {
        sub_21A270888(v35, v50, v51);
        sub_21A2F5434();
      }

      sub_21A2F8434();
      sub_21A2F79A4();
      v36 = sub_21A2F8474();
      v37 = -1 << *(v16 + 32);
      v38 = v36 & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v23 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v23 + 8 * v39);
          if (v43 != -1)
          {
            v24 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v24 = __clz(__rbit64((-1 << v38) & ~*(v23 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      v25 = (*(v16 + 48) + 16 * v24);
      *v25 = v33;
      v25[1] = v32;
      sub_21A2708F0(v50, *(v16 + 56) + v34 * v24, v51);
      ++*(v16 + 16);
      v14 = v47;
    }

    v27 = v17;
    while (1)
    {
      v17 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v17 >= v22)
      {
        break;
      }

      v28 = v18[v17];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v21 = (v28 - 1) & v28;
        goto LABEL_15;
      }
    }

    if ((v49 & 1) == 0)
    {

      v9 = v46;
      goto LABEL_34;
    }

    v44 = 1 << *(v14 + 32);
    v9 = v46;
    if (v44 >= 64)
    {
      bzero(v18, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v44;
    }

    *(v14 + 16) = 0;
  }

LABEL_34:
  *v9 = v16;
}

void sub_21A26E2D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_21A176C98(&qword_27CD03478, &qword_21A30CC10);
  v37 = v4;
  v6 = sub_21A2F8184();
  v7 = v6;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 24 * v21;
      v38 = *v25;
      v26 = *(v25 + 16);
      if ((v37 & 1) == 0)
      {
        sub_21A2F5434();
      }

      sub_21A2F8434();
      sub_21A2F79A4();
      v27 = sub_21A2F8474();
      v28 = -1 << *(v7 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v38;
      *(v17 + 16) = v26;
      ++*(v7 + 16);
      v5 = v36;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_21A26E594(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for RecipeTimer(0);
  v57 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v63 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_21A176C98(&qword_27CD034A8, &qword_21A30CC40);
  v58 = v4;
  v9 = sub_21A2F8184();
  v10 = v9;
  if (*(v8 + 16))
  {
    v52 = v2;
    v11 = 0;
    v12 = *(v8 + 64);
    v54 = (v8 + 64);
    v55 = v8;
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
    v53 = (v13 + 63) >> 6;
    v16 = v9 + 64;
    v56 = v9;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v59 = (v15 - 1) & v15;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v8 + 56);
      v25 = *(v8 + 48) + 56 * v23;
      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = *(v25 + 16);
      v29 = *(v25 + 24);
      v31 = *(v25 + 32);
      v30 = *(v25 + 40);
      v32 = *(v25 + 48);
      v60 = *(v57 + 72);
      v61 = v27;
      v33 = v24 + v60 * v23;
      v62 = v30;
      if (v58)
      {
        v34 = v26;
        v35 = v29;
        sub_21A2708F0(v33, v63, type metadata accessor for RecipeTimer);
      }

      else
      {
        sub_21A270888(v33, v63, type metadata accessor for RecipeTimer);
        v34 = v26;
        v36 = v26;
        v35 = v29;
        sub_21A18BD3C(v36, v27);
      }

      v37 = v31;
      v38 = v32;
      v64 = v28;
      v10 = v56;
      sub_21A2F8434();
      if (v32)
      {
        MEMORY[0x21CED6EE0](1);
        v39 = v34;
        v40 = v61;
        sub_21A2F79A4();
        MEMORY[0x21CED6EE0](v64);
        MEMORY[0x21CED6EE0](v35);
        MEMORY[0x21CED6EE0](v37);
        v41 = v62;
        MEMORY[0x21CED6EE0](v62);
      }

      else
      {
        MEMORY[0x21CED6EE0](0);
        v39 = v34;
        v40 = v61;
        sub_21A2F79A4();
        v41 = v62;
      }

      v42 = sub_21A2F8474();
      v43 = -1 << *(v10 + 32);
      v44 = v42 & ~v43;
      v45 = v44 >> 6;
      if (((-1 << v44) & ~*(v16 + 8 * (v44 >> 6))) == 0)
      {
        v46 = 0;
        v47 = (63 - v43) >> 6;
        while (++v45 != v47 || (v46 & 1) == 0)
        {
          v48 = v45 == v47;
          if (v45 == v47)
          {
            v45 = 0;
          }

          v46 |= v48;
          v49 = *(v16 + 8 * v45);
          if (v49 != -1)
          {
            v17 = __clz(__rbit64(~v49)) + (v45 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v44) & ~*(v16 + 8 * (v44 >> 6)))) | v44 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = *(v10 + 48) + 56 * v17;
      *v18 = v39;
      *(v18 + 8) = v40;
      v19 = v63;
      *(v18 + 16) = v64;
      *(v18 + 24) = v35;
      *(v18 + 32) = v37;
      *(v18 + 40) = v41;
      *(v18 + 48) = v38;
      sub_21A2708F0(v19, *(v10 + 56) + v60 * v17, type metadata accessor for RecipeTimer);
      ++*(v10 + 16);
      v8 = v55;
      v15 = v59;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v11 >= v53)
      {
        break;
      }

      v22 = v54[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v59 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v58 & 1) == 0)
    {

      v3 = v52;
      goto LABEL_37;
    }

    v50 = 1 << *(v8 + 32);
    v3 = v52;
    if (v50 >= 64)
    {
      bzero(v54, ((v50 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v54 = -1 << v50;
    }

    *(v8 + 16) = 0;
  }

LABEL_37:
  *v3 = v10;
}

void sub_21A26E9F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_21A176C98(&qword_27CD00CF0, &qword_21A301868);
  v6 = sub_21A2F8184();
  v7 = v6;
  if (*(v5 + 16))
  {
    v36 = v4;
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = (*(v5 + 48) + 24 * v20);
      v24 = v22[1];
      v23 = v22[2];
      v25 = *v22;
      v26 = *(v21 + 8 * v20);
      sub_21A2F8434();
      MEMORY[0x21CED6EE0](v25);
      MEMORY[0x21CED6EE0](v24);
      MEMORY[0x21CED6EE0](v23);
      v27 = sub_21A2F8474();
      v28 = -1 << *(v7 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 24 * v15);
      *v16 = v25;
      v16[1] = v24;
      v16[2] = v23;
      *(*(v7 + 56) + 8 * v15) = v26;
      ++*(v7 + 16);
      v5 = v37;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
}

void sub_21A26ECB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for RecipeTimer(0);
  v43 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v46 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_21A176C98(&qword_27CD03490, &unk_21A30E7C0);
  v44 = v4;
  v9 = sub_21A2F8184();
  v10 = v9;
  if (*(v8 + 16))
  {
    v41 = v2;
    v42 = v8;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = v9 + 64;
    while (v15)
    {
      v22 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v25 = v22 | (v11 << 6);
      v26 = *(v8 + 56);
      v27 = (*(v8 + 48) + 48 * v25);
      v28 = *v27;
      v29 = v27[1];
      v49 = v27[2];
      v48 = v27[3];
      v30 = v27[5];
      v47 = v27[4];
      v31 = v26 + *(v43 + 72) * v25;
      v45 = *(v43 + 72);
      if (v44)
      {
        sub_21A2708F0(v31, v46, type metadata accessor for RecipeTimer);
      }

      else
      {
        sub_21A270888(v31, v46, type metadata accessor for RecipeTimer);
        sub_21A2F5434();
      }

      sub_21A2F8434();
      sub_21A2F79A4();
      MEMORY[0x21CED6EE0](v49);
      MEMORY[0x21CED6EE0](v48);
      MEMORY[0x21CED6EE0](v47);
      MEMORY[0x21CED6EE0](v30);
      v32 = sub_21A2F8474();
      v33 = -1 << *(v10 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v17 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v17 + 8 * v35);
          if (v39 != -1)
          {
            v18 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v34) & ~*(v17 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 48 * v18);
      *v19 = v28;
      v19[1] = v29;
      v20 = v48;
      v19[2] = v49;
      v19[3] = v20;
      v21 = v46;
      v19[4] = v47;
      v19[5] = v30;
      sub_21A2708F0(v21, *(v10 + 56) + v45 * v18, type metadata accessor for RecipeTimer);
      ++*(v10 + 16);
      v8 = v42;
    }

    v23 = v11;
    while (1)
    {
      v11 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v24 = v12[v11];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v15 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v40 = 1 << *(v8 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v12, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v40;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
}

void sub_21A26F07C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v65 = sub_21A2F4A24();
  v5 = *(v65 - 8);
  MEMORY[0x28223BE20](v65, v6);
  v64 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_21A176C98(&qword_27CD03520, &qword_21A30CCE0);
  v57 = v4;
  v9 = sub_21A2F8184();
  v10 = *(v8 + 16);
  v59 = v9;
  if (v10)
  {
    v52 = v2;
    v11 = 0;
    v12 = *(v8 + 64);
    v53 = (v8 + 64);
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
    v54 = (v5 + 16);
    v56 = v5;
    v58 = (v5 + 32);
    v17 = v9 + 64;
    v55 = v8;
    while (v15)
    {
      v21 = __clz(__rbit64(v15));
      v60 = (v15 - 1) & v15;
LABEL_15:
      v24 = v21 | (v11 << 6);
      v25 = *(v8 + 56);
      v26 = *(v8 + 48) + 56 * v24;
      v28 = *v26;
      v27 = *(v26 + 8);
      v29 = *(v26 + 16);
      v30 = *(v26 + 24);
      v32 = *(v26 + 32);
      v31 = *(v26 + 40);
      v33 = *(v26 + 48);
      v61 = *(v56 + 72);
      v62 = v31;
      v34 = v25 + v61 * v24;
      v67 = v28;
      v63 = v32;
      if (v57)
      {
        v35 = v27;
        v36 = v30;
        (*v58)(v64, v34, v65);
      }

      else
      {
        (*v54)(v64, v34, v65);
        v37 = v28;
        v35 = v27;
        v38 = v27;
        v36 = v30;
        sub_21A18BD3C(v37, v38);
      }

      v66 = v29;
      v39 = v59;
      sub_21A2F8434();
      if (v33)
      {
        MEMORY[0x21CED6EE0](1);
        v40 = v35;
        sub_21A2F79A4();
        MEMORY[0x21CED6EE0](v66);
        MEMORY[0x21CED6EE0](v36);
        v41 = v63;
        MEMORY[0x21CED6EE0](v63);
        v42 = v62;
        MEMORY[0x21CED6EE0](v62);
      }

      else
      {
        MEMORY[0x21CED6EE0](0);
        v40 = v35;
        sub_21A2F79A4();
        v42 = v62;
        v41 = v63;
      }

      v43 = sub_21A2F8474();
      v44 = -1 << *(v39 + 32);
      v45 = v43 & ~v44;
      v46 = v45 >> 6;
      if (((-1 << v45) & ~*(v17 + 8 * (v45 >> 6))) == 0)
      {
        v47 = 0;
        v48 = (63 - v44) >> 6;
        while (++v46 != v48 || (v47 & 1) == 0)
        {
          v49 = v46 == v48;
          if (v46 == v48)
          {
            v46 = 0;
          }

          v47 |= v49;
          v50 = *(v17 + 8 * v46);
          if (v50 != -1)
          {
            v18 = __clz(__rbit64(~v50)) + (v46 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v45) & ~*(v17 + 8 * (v45 >> 6)))) | v45 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = *(v39 + 48) + 56 * v18;
      v20 = v66;
      *v19 = v67;
      *(v19 + 8) = v40;
      *(v19 + 16) = v20;
      *(v19 + 24) = v36;
      *(v19 + 32) = v41;
      *(v19 + 40) = v42;
      *(v19 + 48) = v33;
      (*v58)((*(v39 + 56) + v61 * v18), v64, v65);
      ++*(v39 + 16);
      v8 = v55;
      v15 = v60;
    }

    v22 = v11;
    while (1)
    {
      v11 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v11 >= v16)
      {
        break;
      }

      v23 = v53[v11];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v60 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v57 & 1) == 0)
    {

      v3 = v52;
      goto LABEL_37;
    }

    v51 = 1 << *(v8 + 32);
    v3 = v52;
    if (v51 >= 64)
    {
      bzero(v53, ((v51 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v53 = -1 << v51;
    }

    *(v8 + 16) = 0;
  }

LABEL_37:
  *v3 = v59;
}

void sub_21A26F500(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_21A2F4794();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_21A176C98(&qword_27CD039F8, &qword_21A30E780);
  v41 = v4;
  v11 = sub_21A2F8184();
  v12 = v11;
  if (*(v10 + 16))
  {
    v45 = v9;
    v37 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v38 = (v6 + 16);
    v39 = v10;
    v40 = v6;
    v42 = (v6 + 32);
    v19 = v11 + 64;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v44 = *(v40 + 72);
      v26 = v25 + v44 * v24;
      if (v41)
      {
        (*v42)(v45, v26, v5);
        v43 = *(*(v10 + 56) + 8 * v24);
      }

      else
      {
        (*v38)(v45, v26, v5);
        v43 = *(*(v10 + 56) + 8 * v24);
      }

      sub_21A149260(&qword_27CCFF318, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      v27 = sub_21A2F77F4();
      v28 = -1 << *(v12 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v19 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v19 + 8 * v30);
          if (v34 != -1)
          {
            v20 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v20 = __clz(__rbit64((-1 << v29) & ~*(v19 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v42)((*(v12 + 48) + v44 * v20), v45, v5);
      *(*(v12 + 56) + 8 * v20) = v43;
      ++*(v12 + 16);
      v10 = v39;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v35 = 1 << *(v10 + 32);
    v3 = v37;
    if (v35 >= 64)
    {
      bzero(v14, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v35;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
}

uint64_t sub_21A26F8DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void sub_21A26F944(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_21A176C98(&qword_27CD03470, &unk_21A30E7B0);
  v6 = sub_21A2F8184();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v4;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_21A2F8434();
      MEMORY[0x21CED6EE0](v20);
      v22 = sub_21A2F8474();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
}

void sub_21A26FC04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_21A176C98(&qword_27CD03468, &unk_21A30CC00);
  v35 = v4;
  v6 = sub_21A2F8184();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
        sub_21A2F5434();
        sub_21A2F5434();
      }

      sub_21A2F8434();
      sub_21A2F79A4();
      v25 = sub_21A2F8474();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
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
        goto LABEL_35;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_21A26FEAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_21A2F8144();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_21A176C98(&qword_27CD03A18, &unk_21A313BA0);
  v41 = v4;
  v11 = sub_21A2F8184();
  v12 = v11;
  if (*(v10 + 16))
  {
    v44 = v9;
    v45 = v5;
    v37 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v38 = (v6 + 16);
    v39 = v6;
    v42 = (v6 + 32);
    v19 = v11 + 64;
    v40 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v43 = *(v6 + 72);
      v26 = v25 + v43 * v24;
      if (v41)
      {
        (*v42)(v44, v26, v45);
        sub_21A261578((*(v10 + 56) + 32 * v24), v46);
      }

      else
      {
        (*v38)(v44, v26, v45);
        sub_21A261AD4(*(v10 + 56) + 32 * v24, v46);
      }

      v27 = sub_21A2F77F4();
      v28 = -1 << *(v12 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v19 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        v6 = v39;
        v10 = v40;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v19 + 8 * v30);
          if (v34 != -1)
          {
            v20 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v20 = __clz(__rbit64((-1 << v29) & ~*(v19 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      v6 = v39;
      v10 = v40;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v42)((*(v12 + 48) + v43 * v20), v44, v45);
      sub_21A261578(v46, (*(v12 + 56) + 32 * v20));
      ++*(v12 + 16);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v35 = 1 << *(v10 + 32);
    v3 = v37;
    if (v35 >= 64)
    {
      bzero(v14, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v35;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
}

void sub_21A27024C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_21A176C98(&qword_27CD03A08, &unk_21A30E790);
  v38 = v4;
  v6 = sub_21A2F8184();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 56 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      v43 = *(v23 + 24);
      v42 = *(v23 + 32);
      v41 = *(v23 + 40);
      v44 = *(v23 + 48);
      v27 = (v22 + 32 * v21);
      v39 = v27[1];
      v40 = *v27;
      if ((v38 & 1) == 0)
      {
        sub_21A2F5434();
      }

      sub_21A2F8434();
      sub_21A2F79A4();
      MEMORY[0x21CED6EE0](v26);
      MEMORY[0x21CED6EE0](v43);
      MEMORY[0x21CED6EE0](v42);
      MEMORY[0x21CED6EE0](v41);
      MEMORY[0x21CED6EE0](v44);
      v28 = sub_21A2F8474();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 56 * v15;
      *v16 = v24;
      *(v16 + 8) = v25;
      *(v16 + 16) = v26;
      *(v16 + 24) = v43;
      *(v16 + 32) = v42;
      *(v16 + 40) = v41;
      *(v16 + 48) = v44;
      v17 = (*(v7 + 56) + 32 * v15);
      *v17 = v40;
      v17[1] = v39;
      ++*(v7 + 16);
      v5 = v37;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_21A2705B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_21A176C98(&qword_27CD03498, &qword_21A30CC30);
  v39 = v4;
  v6 = sub_21A2F8184();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v2;
    v38 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = v23[1];
      v40 = *v23;
      v25 = *(v5 + 56) + v22;
      v26 = *v25;
      v27 = *(v25 + 8);
      if ((v39 & 1) == 0)
      {
        sub_21A2F5434();
        sub_21A17FE08(v26, v27);
      }

      sub_21A2F8434();
      sub_21A2F79A4();
      v28 = sub_21A2F8474();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v40;
      v17[1] = v24;
      v18 = *(v7 + 56) + v16;
      *v18 = v26;
      *(v18 + 8) = v27;
      ++*(v7 + 16);
      v5 = v38;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

uint64_t sub_21A270888(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A2708F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A270958()
{
  sub_21A27099C();
  sub_21A2F7624();
  return v1;
}

unint64_t sub_21A27099C()
{
  result = qword_27CD03A20;
  if (!qword_27CD03A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03A20);
  }

  return result;
}

uint64_t sub_21A270A28@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21A176C98(&qword_27CD03A30, &qword_21A30E8C0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v9 - v4;
  IsFocusableSource = type metadata accessor for IsFocusableSource(0);
  sub_21A2F7694();
  if ((*(*(IsFocusableSource - 8) + 48))(v5, 1, IsFocusableSource) == 1)
  {
    result = sub_21A270CBC(v5);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
  }

  else
  {
    *(a1 + 24) = IsFocusableSource;
    *(a1 + 32) = sub_21A270D24(&qword_27CD03A38, &unk_21A30E844);
    v8 = sub_21A156050(a1);
    return sub_21A270D68(v5, v8);
  }

  return result;
}

uint64_t sub_21A270B4C()
{
  IsFocusableSource = type metadata accessor for IsFocusableSource(0);
  MEMORY[0x28223BE20](IsFocusableSource, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A270DCC(v0, v4);
  sub_21A176C98(&qword_27CD028C0, &unk_21A30E7F0);
  sub_21A2F7594();
  result = sub_21A270E30(v4);
  if (v10 == 1)
  {
    sub_21A270DCC(v0, v4);
    sub_21A176C98(&qword_27CCFF118, &unk_21A2FB7E0);
    sub_21A2F7594();
    result = sub_21A270E30(v4);
    v6 = *(IsFocusableSource + 24);
    if (v9 != *(v0 + v6))
    {
      return result;
    }

    v7 = v9 ^ 1;
  }

  else
  {
    v6 = *(IsFocusableSource + 24);
    if (*(v0 + v6) != 1)
    {
      return result;
    }

    v7 = 0;
  }

  *(v0 + v6) = v7;
  return result;
}

uint64_t sub_21A270CBC(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CD03A30, &qword_21A30E8C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A270D24(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IsFocusableSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21A270D68(uint64_t a1, uint64_t a2)
{
  IsFocusableSource = type metadata accessor for IsFocusableSource(0);
  (*(*(IsFocusableSource - 8) + 32))(a2, a1, IsFocusableSource);
  return a2;
}

uint64_t sub_21A270DCC(uint64_t a1, uint64_t a2)
{
  IsFocusableSource = type metadata accessor for IsFocusableSource(0);
  (*(*(IsFocusableSource - 8) + 16))(a2, a1, IsFocusableSource);
  return a2;
}

uint64_t sub_21A270E30(uint64_t a1)
{
  IsFocusableSource = type metadata accessor for IsFocusableSource(0);
  (*(*(IsFocusableSource - 8) + 8))(a1, IsFocusableSource);
  return a1;
}

char *sub_21A270E9C(char *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v10 = result;
    v11 = *(a8 + 16);
    sub_21A2F5434();
    result = swift_isUniquelyReferenced_nonNull_native();
    *(a8 + 16) = v11;
    if ((result & 1) == 0)
    {
      result = sub_21A1B6970(0, *(v11 + 2) + 1, 1, v11);
      v11 = result;
      *(a8 + 16) = result;
    }

    v13 = *(v11 + 2);
    v12 = *(v11 + 3);
    if (v13 >= v12 >> 1)
    {
      result = sub_21A1B6970((v12 > 1), v13 + 1, 1, v11);
      v11 = result;
    }

    *(v11 + 2) = v13 + 1;
    v14 = &v11[16 * v13];
    *(v14 + 4) = v10;
    *(v14 + 5) = a2;
    *(a8 + 16) = v11;
  }

  return result;
}

void sub_21A270F5C(uint64_t a1, unint64_t a2)
{
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D84F90];
  *(v2 + 16) = MEMORY[0x277D84F90];

  sub_21A176C98(&qword_27CD03A40, &qword_21A30E8D8);
  sub_21A1834FC();
  sub_21A271318();
  sub_21A2F7EF4();

  v4 = *(v2 + 16);
  sub_21A2F5434();

  v25 = *(v4 + 16);
  if (!v25)
  {
LABEL_31:

    return;
  }

  v5 = 0;
  v24 = v4;
  v6 = v3;
  while (1)
  {
    if (v5 >= *(v4 + 16))
    {
      goto LABEL_33;
    }

    v7 = swift_allocObject();
    *(v7 + 16) = v3;
    sub_21A2F5434();

    sub_21A2F7EF4();

    v8 = *(v7 + 16);
    sub_21A2F5434();

    v27 = 0;
    v28 = 0xE000000000000000;
    v9 = *(v8 + 16);
    if (v9)
    {
      break;
    }

    v19 = 0xE000000000000000;
LABEL_23:
    v20 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v20 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v20)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_21A1B6970(0, *(v6 + 2) + 1, 1, v6);
      }

      v22 = *(v6 + 2);
      v21 = *(v6 + 3);
      if (v22 >= v21 >> 1)
      {
        v6 = sub_21A1B6970((v21 > 1), v22 + 1, 1, v6);
      }

      *(v6 + 2) = v22 + 1;
      v23 = &v6[16 * v22];
      *(v23 + 4) = v9;
      *(v23 + 5) = v19;
    }

    else
    {
    }

    if (++v5 == v25)
    {
      goto LABEL_31;
    }
  }

  v26 = v5;
  v10 = (v8 + 40);
  while (1)
  {
    v11 = *(v10 - 1);
    v12 = *v10;
    if ((v28 & 0x2000000000000000) != 0)
    {
      v13 = HIBYTE(v28) & 0xF;
    }

    else
    {
      v13 = v27 & 0xFFFFFFFFFFFFLL;
    }

    sub_21A2F5434();
    if (!v13)
    {
      goto LABEL_8;
    }

    v14 = sub_21A2F79B4();
    v15 = sub_21A2F79B4();
    if (__OFADD__(v14, v15))
    {
      break;
    }

    if (v14 + v15 > 199)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_21A1B6970(0, *(v6 + 2) + 1, 1, v6);
      }

      v17 = *(v6 + 2);
      v16 = *(v6 + 3);
      if (v17 >= v16 >> 1)
      {
        v6 = sub_21A1B6970((v16 > 1), v17 + 1, 1, v6);
      }

      *(v6 + 2) = v17 + 1;
      v18 = &v6[16 * v17];
      *(v18 + 4) = v27;
      *(v18 + 5) = v28;
      v27 = v11;
      v28 = v12;
      goto LABEL_9;
    }

LABEL_8:
    MEMORY[0x21CED6480](v11, v12);

LABEL_9:
    v10 += 2;
    if (!--v9)
    {

      v9 = v27;
      v19 = v28;
      v3 = MEMORY[0x277D84F90];
      v4 = v24;
      v5 = v26;
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
}

unint64_t sub_21A271318()
{
  result = qword_27CD03A48;
  if (!qword_27CD03A48)
  {
    sub_21A176D98(&qword_27CD03A40, &qword_21A30E8D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03A48);
  }

  return result;
}

uint64_t type metadata accessor for IngredientsView(uint64_t a1)
{
  result = qword_27CD03A50;
  if (!qword_27CD03A50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21A271410(uint64_t a1)
{
  sub_21A212774(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_21A271498@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A2719B8(&qword_27CCFFA20, type metadata accessor for IngredientsViewModel, &unk_21A2FD66C);
  sub_21A2F5094();

  return sub_21A177CF4(v3 + OBJC_IVAR____TtC10CookingKit20IngredientsViewModel__recipeURL, a2);
}

uint64_t sub_21A27154C(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CCFEA80, &unk_21A2FD6C0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v7 - v4;
  sub_21A177CF4(a1, &v7 - v4);
  return sub_21A1AFEB8(v5);
}

uint64_t sub_21A2715E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A2719B8(&qword_27CCFFA20, type metadata accessor for IngredientsViewModel, &unk_21A2FD66C);
  sub_21A2F5094();

  *a2 = *(v3 + OBJC_IVAR____TtC10CookingKit20IngredientsViewModel__ingredients);
  return sub_21A2F5434();
}

void sub_21A2716C0(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A2719B8(&qword_27CCFFA20, type metadata accessor for IngredientsViewModel, &unk_21A2FD66C);
  sub_21A2F5094();

  *a2 = *(v3 + OBJC_IVAR____TtC10CookingKit20IngredientsViewModel__viewPlacement);
}

uint64_t sub_21A271798@<X0>(uint64_t *a1@<X8>)
{
  sub_21A176C98(&qword_27CD017B8, &unk_21A305050);
  v2 = sub_21A2F7714();
  v3 = sub_21A2F7714();
  swift_getKeyPath();
  sub_21A2719B8(&qword_27CCFFA20, type metadata accessor for IngredientsViewModel, &unk_21A2FD66C);
  sub_21A2F5094();

  v4 = *(v3 + OBJC_IVAR____TtC10CookingKit20IngredientsViewModel__ingredients);
  sub_21A2F5434();

  v5 = sub_21A2F7714();
  swift_getKeyPath();
  sub_21A2F5094();

  v6 = OBJC_IVAR____TtC10CookingKit20IngredientsViewModel__recipeURL;
  v7 = type metadata accessor for IngredientStackView(0);
  sub_21A177CF4(v5 + v6, a1 + v7[6]);

  v8 = sub_21A2F7714();
  swift_getKeyPath();
  sub_21A2F5094();

  LOBYTE(v6) = *(v8 + OBJC_IVAR____TtC10CookingKit20IngredientsViewModel__viewPlacement);

  *a1 = v2;
  a1[1] = v4;
  *(a1 + v7[7]) = v6;
  sub_21A2F6864();
  v9 = v7[9];
  *(a1 + v9) = swift_getKeyPath();
  sub_21A176C98(&qword_27CCFED70, &qword_21A2FAC30);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21A2719B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_21A271A00()
{
  v1 = sub_21A176C98(&qword_27CCFFF80, &qword_21A2FE948);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v61 = (&v52 - v4);
  v5 = sub_21A176C98(&qword_27CD03BA8, &qword_21A30EF00);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = (&v52 - v11);
  v13 = sub_21A176C98(&qword_27CCFFF78, &qword_21A2FE8F0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v53 = (&v52 - v16);
  v17 = sub_21A176C98(&qword_27CD03BB0, &qword_21A30EF08);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v58 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = (&v52 - v22);
  v24 = *(v0 + *(type metadata accessor for Recipe(0) + 72));
  v56 = (v14 + 48);
  v57 = (v14 + 56);
  v64 = (v2 + 48);
  v65 = (v2 + 56);
  v59 = v24;
  sub_21A2F5434();
  v25 = 0;
  v26 = MEMORY[0x277D84F90];
  v62 = v8;
  v54 = v23;
  v55 = v13;
LABEL_3:
  v27 = *(v59 + 16);
  if (v25 == v27)
  {
    v28 = 1;
    v29 = v58;
  }

  else
  {
    if (v25 >= v27)
    {
      goto LABEL_24;
    }

    v30 = *(type metadata accessor for StepSection(0) - 8);
    v31 = v59 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v25;
    v32 = *(v13 + 48);
    v33 = v53;
    *v53 = v25;
    sub_21A27C898(v31, v33 + v32, type metadata accessor for StepSection);
    v34 = v33;
    v29 = v58;
    sub_21A149B18(v34, v58, &qword_27CCFFF78, &qword_21A2FE8F0);
    v28 = 0;
    ++v25;
  }

  (*v57)(v29, v28, 1, v13);
  sub_21A149B18(v29, v23, &qword_27CD03BB0, &qword_21A30EF08);
  if ((*v56)(v23, 1, v13) == 1)
  {

    return;
  }

  v60 = v25;
  v63 = *v23;
  v35 = v23 + *(v13 + 48);
  v36 = *(v35 + *(type metadata accessor for StepSection(0) + 24));
  sub_21A2F5434();
  sub_21A27D2A8(v35, type metadata accessor for StepSection);
  v37 = 0;
  while (1)
  {
    v38 = *(v36 + 16);
    if (v37 == v38)
    {
      v39 = 1;
      goto LABEL_13;
    }

    if (v37 >= v38)
    {
      break;
    }

    v40 = *(type metadata accessor for Step(0) - 8);
    v41 = v36 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v37;
    v42 = *(v1 + 48);
    v43 = v61;
    *v61 = v37;
    sub_21A27C898(v41, v43 + v42, type metadata accessor for Step);
    sub_21A149B18(v43, v8, &qword_27CCFFF80, &qword_21A2FE948);
    v39 = 0;
    ++v37;
LABEL_13:
    (*v65)(v8, v39, 1, v1);
    sub_21A149B18(v8, v12, &qword_27CD03BA8, &qword_21A30EF00);
    if ((*v64)(v12, 1, v1) == 1)
    {

      v23 = v54;
      v13 = v55;
      v25 = v60;
      goto LABEL_3;
    }

    v44 = *v12;
    v45 = v12 + *(v1 + 48);
    v46 = *(v45 + *(type metadata accessor for Step(0) + 24));
    sub_21A2F5434();
    sub_21A27D2A8(v45, type metadata accessor for Step);
    v47 = *(v46 + 16);

    if (v47)
    {
      for (i = 0; i != v47; ++i)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_21A1B7460(0, *(v26 + 2) + 1, 1, v26);
        }

        v50 = *(v26 + 2);
        v49 = *(v26 + 3);
        if (v50 >= v49 >> 1)
        {
          v26 = sub_21A1B7460((v49 > 1), v50 + 1, 1, v26);
        }

        *(v26 + 2) = v50 + 1;
        v51 = &v26[24 * v50];
        *(v51 + 5) = v44;
        *(v51 + 6) = i;
        v8 = v62;
        *(v51 + 4) = v63;
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
}