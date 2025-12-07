char *sub_100B3718C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1005B981C(&qword_101A0BB80, &unk_10148CFD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_100B372E4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1005B981C(&qword_101A11DC8, &qword_101498430);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

char *sub_100B374A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1005B981C(&unk_101A150B0, &qword_10146F280);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_100B375EC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1005B981C(&qword_101A11D98, &qword_101498400);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_100B37788(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_1005B981C(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size_1(v16);
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
    v16 = _swiftEmptyArrayStorage;
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
    sub_1005B981C(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_100B378BC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1005B981C(&unk_1019F6F30, &unk_10147AAA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_100B37A10(void *result, int64_t a2, char a3, void *a4)
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
    sub_1005B981C(&qword_101A03350, &unk_10147FE40);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1005B981C(&unk_101A02638, &qword_10147F9A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100B37BA4(void *result, int64_t a2, char a3, void *a4)
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
    sub_1005B981C(&qword_101A11CB8, &qword_101498368);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1005B981C(&unk_101A00120, &qword_10147C0B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100B37CEC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1005B981C(&qword_101A11D88, &qword_1014983F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_100B37DF8(void *result, int64_t a2, char a3, void *a4)
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
    sub_1005B981C(&qword_101A11C30, &qword_101498300);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1005B981C(&qword_101A11C38, &qword_101498308);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100B37F88(char *result, int64_t a2, char a3, char *a4)
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
    sub_1005B981C(&qword_101A06398, &qword_101483B20);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_100B3808C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1005B981C(&qword_101A11CE8, &qword_101498390);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

char *sub_100B381A8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1005B981C(&qword_101A09738, &qword_1014891C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_100B382AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1005B981C(&qword_101A0DB10, &qword_101490970);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
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

void *sub_100B38408(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_1005B981C(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size_1(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1005B981C(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_100B3853C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1005B981C(&qword_101A11C28, &qword_1014982F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
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

char *sub_100B3865C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1005B981C(&unk_101A23C50, qword_101481860);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_100B38788(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
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
    sub_1005B981C(a5, a6);
    v13 = swift_allocObject();
    v14 = j__malloc_size_1(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 24);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
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

char *sub_100B388D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1005B981C(&qword_101A11E10, &qword_101498460);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

void *sub_100B38A80(void *result, int64_t a2, char a3, void *a4)
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
    sub_1005B981C(&qword_101A11D10, &qword_1014B2490);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1005B981C(&qword_1019F6DE0, &qword_1014A0F10);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100B38BC8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1005B981C(&qword_101A11B90, &qword_101498278);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

void *sub_100B38D30(void *result, int64_t a2, char a3, void *a4)
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
    sub_1005B981C(&qword_101A11AE8, &qword_1014981F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1005B981C(&qword_101A11AF0, &qword_1014981F8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100B38E9C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1005B981C(&qword_101A11D00, &qword_1014983A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 3 * v8;
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

char *sub_100B38FE4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
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
    sub_1005B981C(a5, a6);
    v13 = swift_allocObject();
    v14 = j__malloc_size_1(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 56);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[56 * v11])
    {
      memmove(v15, v16, 56 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_100B39154(char *result, int64_t a2, char a3, char *a4)
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
    sub_1005B981C(&qword_101A11BC0, &qword_1014982A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

void *sub_100B392A0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_1005B981C(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size_1(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1005B981C(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_100B393E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1005B981C(&qword_101A11C60, &qword_101498320);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
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

char *sub_100B39508(char *result, int64_t a2, char a3, char *a4)
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
    sub_1005B981C(&qword_101A11C58, &qword_101498318);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_100B39614(char *result, int64_t a2, char a3, char *a4)
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
    sub_1005B981C(&qword_101A2C800, &qword_101489190);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

char *sub_100B39734(char *result, int64_t a2, char a3, char *a4)
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
    sub_1005B981C(&qword_101A11DF0, &qword_101498458);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
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

char *sub_100B39868(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    sub_1005B981C(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size_1(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 1;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 5);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  v17 = 32 * v10;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[v17])
    {
      memmove(v15, v16, v17);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, v17);
  }

  return v12;
}

void *sub_100B399F8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1005B981C(a5, a6);
  v16 = *(sub_1005B981C(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size_1(v19);
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
  v21 = *(sub_1005B981C(a7, a8) - 8);
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

void *sub_100B39C1C(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1005B981C(&qword_101A11BA0, &qword_101498280);
  v4 = swift_allocObject();
  v5 = j__malloc_size_1(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = (v5 - 32 + ((v5 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  return result;
}

void *sub_100B39C98(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1005B981C(&unk_1019F61D0, qword_10146E9A0);
  v4 = swift_allocObject();
  v5 = j__malloc_size_1(v4);
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

void *sub_100B39D30(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1005B981C(&qword_101A11C98, &qword_1014C6F50);
  v4 = swift_allocObject();
  v5 = j__malloc_size_1(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_100B39E04(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1005B981C(&qword_101A11CE0, &qword_1014B98B0);
  v4 = swift_allocObject();
  v5 = j__malloc_size_1(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x4924924924924925) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_100B39EC4(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1005B981C(&qword_101A11D90, &unk_1014C70F0);
  v4 = swift_allocObject();
  v5 = j__malloc_size_1(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_100B39F54(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1005B981C(&qword_101A11D68, &qword_1014C70E0);
  v4 = swift_allocObject();
  v5 = j__malloc_size_1(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 + 31;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 6);
  return result;
}

void *sub_100B39FD8(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1005B981C(&qword_101A11BB8, &qword_101498298);
  v4 = swift_allocObject();
  v5 = j__malloc_size_1(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

void *sub_100B3A084(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1005B981C(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size_1(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_100B3A180(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1005B981C(a3, a4);
  v6 = swift_allocObject();
  v7 = j__malloc_size_1(v6);
  result = v6;
  v9 = ((v7 - 32) * 0x6666666666666667) >> 64;
  v6[2] = a1;
  v6[3] = 2 * ((v9 >> 4) + (v9 >> 63));
  return result;
}

void *sub_100B3A208(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v4 = swift_allocObject();
  v5 = j__malloc_size_1(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void sub_100B3A290(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = type metadata accessor for UUID();
  v42 = *(v40 - 8);
  __chkstk_darwin(v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_100B3A59C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_100064110(*(a4 + 48) + 40 * (v17 | (v12 << 6)), v22);
      v18 = v23;
      v19 = v22[1];
      *v11 = v22[0];
      *(v11 + 16) = v19;
      *(v11 + 32) = v18;
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 40;
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
        goto LABEL_26;
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
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t *sub_100B3A720(uint64_t *result, uint64_t **a2, void *a3, uint64_t a4, unint64_t *a5, void *a6, unint64_t *a7)
{
  v9 = a4;
  v11 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v23 = -1 << *(v9 + 32);
    v13 = v9 + 56;
    v14 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v16 = v25 & *(v9 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a6 = 0;
    goto LABEL_32;
  }

  __CocoaSet.makeIterator()();
  sub_100006370(0, a5, a6);
  sub_100B3D3A8(a7, a5, a6);
  result = Set.Iterator.init(_cocoa:)();
  v9 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a6 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = a5;
  v29 = a6;
  a6 = 0;
  v27 = v14;
  a5 = ((v14 + 64) >> 6);
  v18 = 1;
  while (1)
  {
    if (v9 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_30;
      }

      sub_100006370(0, v28, v29);
      swift_dynamicCast();
      result = v31;
      v17 = a3;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v19 = v15;
    if (!v16)
    {
      break;
    }

    v20 = v15;
LABEL_13:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    result = *(*(v9 + 48) + ((v20 << 9) | (8 * v21)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v18 == v17)
    {
      a6 = v17;
      goto LABEL_30;
    }

    ++a2;
    a6 = v18;
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v20 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v20 >= a5)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v19;
    if (v16)
    {
      v15 = v20;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (a5 <= (v15 + 1))
  {
    v26 = (v15 + 1);
  }

  else
  {
    v26 = a5;
  }

  v15 = v26 - 1;
LABEL_30:
  v14 = v27;
LABEL_32:
  *v11 = v9;
  v11[1] = v13;
  v11[2] = v14;
  v11[3] = v15;
  v11[4] = v16;
  return a6;
}

void *sub_100B3A950(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_100B3AAE8(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v39 = a6;
  v40 = a7;
  v11 = a5(0);
  v38 = *(v11 - 8);
  __chkstk_darwin(v11 - 8);
  v37 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v33 - v14;
  v16 = a4 + 7;
  v17 = -1 << *(a4 + 32);
  if (-v17 < 64)
  {
    v18 = ~(-1 << -v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & a4[7];
  if (!a2)
  {
LABEL_18:
    v20 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v16;
    a1[2] = ~v17;
    a1[3] = v20;
    a1[4] = v19;
    return;
  }

  if (!a3)
  {
    v20 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = a1;
    v36 = a3;
    v20 = 0;
    v34 = v17;
    v21 = (63 - v17) >> 6;
    v22 = 1;
    while (v19)
    {
LABEL_14:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      a1 = a4;
      v26 = a4[6];
      v27 = v37;
      v28 = *(v38 + 72);
      sub_100B3D440(v26 + v28 * (v25 | (v20 << 6)), v37, v39);
      v29 = v27;
      v30 = v40;
      sub_100B3D4A8(v29, v15, v40);
      sub_100B3D4A8(v15, a2, v30);
      if (v22 == v36)
      {
        a4 = a1;
        a1 = v35;
        goto LABEL_23;
      }

      a2 += v28;
      v31 = __OFADD__(v22++, 1);
      a4 = a1;
      if (v31)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v23 = v20;
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v24 >= v21)
      {
        break;
      }

      v19 = v16[v24];
      ++v23;
      if (v19)
      {
        v20 = v24;
        goto LABEL_14;
      }
    }

    v19 = 0;
    if (v21 <= v20 + 1)
    {
      v32 = v20 + 1;
    }

    else
    {
      v32 = v21;
    }

    v20 = v32 - 1;
    a1 = v35;
LABEL_23:
    v17 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_100B3AD2C(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

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
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_100B3AEB4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v17 = *(a4 + 48) + 56 * (__clz(__rbit64(v9)) | (v12 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      v9 &= v9 - 1;
      v20 = *(v17 + 16);
      v21 = *(v17 + 24);
      v22 = *(v17 + 32);
      v23 = *(v17 + 40);
      v24 = *(v17 + 48);
      *v11 = *v17;
      *(v11 + 8) = v19;
      *(v11 + 16) = v20;
      *(v11 + 24) = v21;
      *(v11 + 32) = v22;
      *(v11 + 40) = v23;
      *(v11 + 48) = v24;
      if (v14 == v10)
      {
        sub_100076F8C(v18, v19, v20, v21, v22, v23, v24);
        goto LABEL_24;
      }

      v11 += 56;
      sub_100076F8C(v18, v19, v20, v21, v22, v23, v24);
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

void *sub_100B3B024(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
      sub_10000630C(*(a4 + 56) + 40 * (v17 | (v12 << 6)), v20);
      sub_100050F74(v20, v21);
      sub_100050F74(v21, v11);
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 40;
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
        goto LABEL_26;
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
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

void sub_100B3B1D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for CRLBoardEntity(0);
  v32 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v31 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v30 = &v27 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v16 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v12;
    a1[2] = ~v13;
    a1[3] = v16;
    a1[4] = v15;
    return;
  }

  if (!a3)
  {
    v16 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v28 = a1;
    v29 = a3;
    v16 = 0;
    v27 = v13;
    v17 = (63 - v13) >> 6;
    v18 = 1;
    while (v15)
    {
LABEL_14:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v22 = v31;
      a1 = *(v32 + 72);
      sub_100B3D440(*(a4 + 56) + a1 * (v21 | (v16 << 6)), v31, type metadata accessor for CRLBoardEntity);
      v23 = v22;
      v24 = v30;
      sub_100B3D4A8(v23, v30, type metadata accessor for CRLBoardEntity);
      sub_100B3D4A8(v24, a2, type metadata accessor for CRLBoardEntity);
      if (v18 == v29)
      {
        a1 = v28;
        goto LABEL_23;
      }

      a2 += a1;
      if (__OFADD__(v18++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v16 = v20;
        goto LABEL_14;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v26 = v16 + 1;
    }

    else
    {
      v26 = v17;
    }

    v16 = v26 - 1;
    a1 = v28;
LABEL_23:
    v13 = v27;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_100B3B434(void *result, void *a2, uint64_t a3, uint64_t a4)
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
    v23 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 3;

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
      v22 = v12 + 1;
    }

    else
    {
      v22 = v13;
    }

    v12 = v22 - 1;
    v10 = result;
LABEL_23:
    v7 = v23;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_100B3B5B0(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void *sub_100B3B708(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v14 = 0;
    a3 = 0;
LABEL_24:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v14;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v14 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v31 = a4;
    v32 = a3;
    v29 = -1 << *(a4 + 32);
    v30 = result;
    result = 0;
    v9 = 0;
    v10 = (63 - v5) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_14:
      v14 = v9;
      v15 = (*(a4 + 56) + ((v9 << 12) | (__clz(__rbit64(v7)) << 6)));
      v16 = v15[1];
      v7 &= v7 - 1;
      v18 = v15[2];
      v17 = v15[3];
      v19 = v15[4];
      v20 = v15[5];
      v21 = v15[6];
      v22 = v15[7];
      *v8 = *v15;
      v8[1] = v16;
      v8[2] = v18;
      v8[3] = v17;
      v8[4] = v19;
      v8[5] = v20;
      v8[6] = v21;
      v8[7] = v22;
      if (v11 == v32)
      {
        v27 = v19;

        v28 = v17;
        result = v30;
        a4 = v31;
        v5 = v29;
        a3 = v32;
        goto LABEL_24;
      }

      v8 += 8;
      v23 = v19;

      v24 = v17;
      result = v11;
      v25 = __OFADD__(v11++, 1);
      a4 = v31;
      v9 = v14;
      if (v25)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_14;
      }
    }

    v7 = 0;
    if (v10 <= v9 + 1)
    {
      v26 = v9 + 1;
    }

    else
    {
      v26 = v10;
    }

    v14 = v26 - 1;
    a3 = result;
    v5 = v29;
    result = v30;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_100B3B8DC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if ((a4 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for CalculateExpression();
    sub_100B3D3F8(&qword_1019F37A0, &type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
    Set.Iterator.init(_cocoa:)();
    v4 = v24;
    v8 = v25;
    v9 = v26;
    v10 = v27;
    v11 = v28;
    if (!a2)
    {
      goto LABEL_30;
    }
  }

  else
  {
LABEL_20:
    v10 = 0;
    v17 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v11 = v19 & *(v4 + 56);
    if (!a2)
    {
      goto LABEL_30;
    }
  }

  if (!a3)
  {
    goto LABEL_30;
  }

  if (a3 < 0)
  {
LABEL_33:
    __break(1u);
    return;
  }

  v21 = v9;
  v22 = a1;
  v12 = (v9 + 64) >> 6;
  a1 = 1;
  while (v4 < 0)
  {
    if (!__CocoaSet.Iterator.next()())
    {
      goto LABEL_29;
    }

    type metadata accessor for CalculateExpression();
    swift_dynamicCast();
    v15 = v23;
    if (!v23)
    {
      goto LABEL_29;
    }

LABEL_16:
    *a2 = v15;
    if (a1 == a3)
    {
      goto LABEL_29;
    }

    ++a2;
    if (__OFADD__(a1++, 1))
    {
      __break(1u);
      goto LABEL_20;
    }
  }

  v13 = v10;
  if (v11)
  {
LABEL_12:
    v11 &= v11 - 1;

    if (!v15)
    {
      goto LABEL_29;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v14);
    ++v13;
    if (v11)
    {
      v10 = v14;
      goto LABEL_12;
    }
  }

  v11 = 0;
  if (v12 <= v10 + 1)
  {
    v20 = v10 + 1;
  }

  else
  {
    v20 = v12;
  }

  v10 = v20 - 1;
LABEL_29:
  v9 = v21;
  a1 = v22;
LABEL_30:
  *a1 = v4;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
}

void sub_100B3BB24(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = type metadata accessor for UUID();
  v42 = *(v40 - 8);
  __chkstk_darwin(v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 56);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void sub_100B3BDE0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v41 = a5(0);
  v43 = *(v41 - 8);
  __chkstk_darwin(v41);
  v42 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41, v11);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_100B3C088(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v18 = *(a4 + 56) + 40 * (v17 | (v12 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 24);
      v23 = *(v18 + 32);
      *v11 = *v18;
      *(v11 + 8) = v20;
      *(v11 + 16) = v21;
      *(v11 + 24) = v22;
      *(v11 + 32) = v23;
      if (v14 == v10)
      {
        sub_10067F098(v19, v20, v21, v22, v23);
        goto LABEL_24;
      }

      v11 += 40;
      sub_10067F098(v19, v20, v21, v22, v23);
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
      v25 = v12 + 1;
    }

    else
    {
      v25 = (63 - v7) >> 6;
    }

    v12 = v25 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_100B3C1F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for CRLBoardIdentifier(0);
  v32 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v31 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v30 = &v27 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v16 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v12;
    a1[2] = ~v13;
    a1[3] = v16;
    a1[4] = v15;
    return;
  }

  if (!a3)
  {
    v16 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v28 = a1;
    v29 = a3;
    v16 = 0;
    v27 = v13;
    v17 = (63 - v13) >> 6;
    v18 = 1;
    while (v15)
    {
LABEL_14:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v22 = v31;
      a1 = *(v32 + 72);
      sub_100B3D440(*(a4 + 48) + a1 * (v21 | (v16 << 6)), v31, type metadata accessor for CRLBoardIdentifier);
      v23 = v22;
      v24 = v30;
      sub_100B3D4A8(v23, v30, type metadata accessor for CRLBoardIdentifier);
      sub_100B3D4A8(v24, a2, type metadata accessor for CRLBoardIdentifier);
      if (v18 == v29)
      {
        a1 = v28;
        goto LABEL_23;
      }

      a2 += a1;
      if (__OFADD__(v18++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v16 = v20;
        goto LABEL_14;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v26 = v16 + 1;
    }

    else
    {
      v26 = v17;
    }

    v16 = v26 - 1;
    a1 = v28;
LABEL_23:
    v13 = v27;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_100B3C454(void *result, void *a2, uint64_t a3, uint64_t a4)
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

uint64_t *sub_100B3C620(uint64_t *result, uint64_t **a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  v8 = a4;
  v10 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v24 = -1 << *(v8 + 32);
    v13 = v8 + 56;
    v14 = ~v24;
    v25 = -v24;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v16 = v26 & *(v8 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a5 = 0;
    goto LABEL_32;
  }

  __CocoaSet.makeIterator()();
  a5(0);
  sub_100B3D3F8(a6, a7, &protocol conformance descriptor for NSObject);
  result = Set.Iterator.init(_cocoa:)();
  v8 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a5 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = v14;
  v29 = a5;
  a5 = 0;
  v18 = (v14 + 64) >> 6;
  v19 = 1;
  while (1)
  {
    if (v8 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_30;
      }

      v29(0);
      swift_dynamicCast();
      result = v31;
      v17 = a3;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v20 = v15;
    if (!v16)
    {
      break;
    }

    v21 = v15;
LABEL_13:
    v22 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    result = *(*(v8 + 48) + ((v21 << 9) | (8 * v22)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v19 == v17)
    {
      a5 = v17;
      goto LABEL_30;
    }

    ++a2;
    a5 = v19;
    if (__OFADD__(v19++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v21 >= v18)
    {
      break;
    }

    v16 = *(v13 + 8 * v21);
    ++v20;
    if (v16)
    {
      v15 = v21;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (v18 <= v15 + 1)
  {
    v27 = v15 + 1;
  }

  else
  {
    v27 = v18;
  }

  v15 = v27 - 1;
LABEL_30:
  v14 = v28;
LABEL_32:
  *v10 = v8;
  v10[1] = v13;
  v10[2] = v14;
  v10[3] = v15;
  v10[4] = v16;
  return a5;
}

uint64_t _s8Freeform17TSContentLanguageO6ModelsO13UnknownObjectV5ValueO21__derived_enum_equalsySbAI_AItFZ_0(uint64_t a1, int8x16_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 32);
  v6 = v5 >> 5;
  if (v5 >> 5 > 3)
  {
    if (v5 >> 5 > 5)
    {
      if (v6 != 6)
      {
        if (a2[2].u8[0] != 224)
        {
          goto LABEL_47;
        }

        v17 = vorrq_s8(*a2, a2[1]);
        if (vorr_s8(*v17.i8, *&vextq_s8(v17, v17, 8uLL)))
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      }

      if ((a2[2].i8[0] & 0xE0) != 0xC0)
      {
        goto LABEL_47;
      }

      if (v3 == a2->i64[0] && v4 == a2->i64[1])
      {
LABEL_46:
        LOBYTE(v13) = 1;
        return v13 & 1;
      }

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    if (v6 == 4)
    {
      if ((a2[2].i8[0] & 0xE0) != 0x80)
      {
        goto LABEL_47;
      }

      LOBYTE(v13) = *a2->i64 == *&v3;
    }

    else
    {
      if ((a2[2].i8[0] & 0xE0) != 0xA0)
      {
        goto LABEL_47;
      }

      v13 = v3 ^ a2->i32[0] ^ 1;
    }

    return v13 & 1;
  }

  if (v5 >> 5 > 1)
  {
    if (v6 == 2)
    {
      if ((a2[2].i8[0] & 0xE0) != 0x40)
      {
        goto LABEL_47;
      }

      v14 = a2->i64[0];

      return sub_100672778(v3, v14);
    }

    if ((a2[2].i8[0] & 0xE0) != 0x60)
    {
      goto LABEL_47;
    }

    LOBYTE(v13) = v3 == a2->i64[0];
    return v13 & 1;
  }

  if (!v6)
  {
    v7 = a2[2].u8[0];
    if (v7 <= 0x1F)
    {
      v8 = *(a1 + 16);
      v9 = *(a1 + 24);
      v10 = a2->i64[1];
      v11 = a2[1].i64[0];
      v12 = a2[1].i64[1];
      if (v5)
      {
        if (v7)
        {
          if (v4)
          {
            if (!v10)
            {
              goto LABEL_47;
            }

            goto LABEL_38;
          }

          if (!v10)
          {
            goto LABEL_43;
          }
        }
      }

      else if ((v7 & 1) == 0)
      {
LABEL_38:
        if ((v3 != a2->i64[0] || v4 != v10) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_47;
        }

LABEL_43:
        if ((v8 != v11 || v9 != v12) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      }
    }

LABEL_47:
    LOBYTE(v13) = 0;
    return v13 & 1;
  }

  if ((a2[2].i8[0] & 0xE0) != 0x20)
  {
    goto LABEL_47;
  }

  v16 = a2->i64[0];

  return _s8Freeform17TSContentLanguageO6ModelsO13UnknownObjectV23__derived_struct_equalsySbAG_AGtFZ_0(v3, v16);
}

uint64_t sub_100B3CAA4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100020E58(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    return sub_100005070(a1);
  }

  sub_100020E58(v11, v11[3]);
  sub_1007CE420();
  dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
  sub_100005070(v11);
  result = sub_100005070(a1);
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  return result;
}

unint64_t sub_100B3CF20()
{
  result = qword_101A11A88;
  if (!qword_101A11A88)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TSContentLanguage.Models.UnknownObject.Value, &type metadata for TSContentLanguage.Models.UnknownObject.Value, v0, v1);
    atomic_store(result, &qword_101A11A88);
  }

  return result;
}

void *sub_100B3CFA4(void *a1)
{
  v3 = sub_100020E58(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    sub_100020E58(v6, v6[3]);
    sub_1005B981C(&qword_101A11A90, "P0%");
    sub_100B3D510(&qword_101A11E00, sub_100B3D594, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v3 = v5;
    sub_100005070(v6);
  }

  sub_100005070(a1);
  return v3;
}

unint64_t sub_100B3D0CC(uint64_t a1)
{
  result = sub_100B3D0F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100B3D0F4()
{
  result = qword_101A11AA0;
  if (!qword_101A11AA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TSContentLanguage.Models.UnknownObject, &type metadata for TSContentLanguage.Models.UnknownObject, v0, v1);
    atomic_store(result, &qword_101A11AA0);
  }

  return result;
}

unint64_t sub_100B3D148(void *a1)
{
  a1[2] = sub_100B3D180();
  a1[3] = sub_100B3D1D4();
  result = sub_100B3D228();
  a1[4] = result;
  return result;
}

unint64_t sub_100B3D180()
{
  result = qword_101A11AA8;
  if (!qword_101A11AA8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TSContentLanguage.Models.UnknownObject, &type metadata for TSContentLanguage.Models.UnknownObject, v0, v1);
    atomic_store(result, &qword_101A11AA8);
  }

  return result;
}

unint64_t sub_100B3D1D4()
{
  result = qword_101A11AB0;
  if (!qword_101A11AB0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TSContentLanguage.Models.UnknownObject, &type metadata for TSContentLanguage.Models.UnknownObject, v0, v1);
    atomic_store(result, &qword_101A11AB0);
  }

  return result;
}

unint64_t sub_100B3D228()
{
  result = qword_101A11AB8;
  if (!qword_101A11AB8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TSContentLanguage.Models.UnknownObject, &type metadata for TSContentLanguage.Models.UnknownObject, v0, v1);
    atomic_store(result, &qword_101A11AB8);
  }

  return result;
}

uint64_t sub_100B3D28C(uint64_t a1)
{
  v1 = *(a1 + 32) >> 5;
  if (v1 == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100B3D2A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x79 && *(a1 + 33))
  {
    return (*a1 + 121);
  }

  v3 = ((*(a1 + 32) >> 5) & 0xFFFFFF87 | (8 * ((*(a1 + 32) >> 1) & 0xF))) ^ 0x7F;
  if (v3 >= 0x78)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100B3D2FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x78)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 121;
    *(result + 8) = 0;
    if (a3 >= 0x79)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x79)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_100B3D368(uint64_t result, unsigned int a2)
{
  if (a2 < 7)
  {
    *(result + 32) = *(result + 32) & 1 | (32 * a2);
  }

  else
  {
    *result = a2 - 7;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = -32;
  }

  return result;
}

uint64_t sub_100B3D3A8(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_100006370(255, a2, a3);
    result = swift_getWitnessTable(&protocol conformance descriptor for NSObject, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100B3D3F8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100B3D440(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100B3D4A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100B3D510(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = sub_1005C4E5C(&qword_101A11A90, "P0%");
    v10[0] = a3;
    v10[1] = a2();
    result = swift_getWitnessTable(a4, v9, v10);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100B3D594()
{
  result = qword_101A11E08;
  if (!qword_101A11E08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TSContentLanguage.Models.UnknownObject.Value, &type metadata for TSContentLanguage.Models.UnknownObject.Value, v0, v1);
    atomic_store(result, &qword_101A11E08);
  }

  return result;
}

uint64_t sub_100B3D5E8(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_1005C4E5C(&qword_101A11A78, "N0%");
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

void *sub_100B3D664(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (!a2)
  {
    v6 = 0;
    goto LABEL_11;
  }

  v6 = a3;
  if (!a3)
  {
LABEL_11:
    *v5 = a4;
    v5[1] = v6;
    return v6;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = *(a4 + 16);
    if (v7)
    {
      v8 = a2;
      v9 = 0;
      v10 = a4 + 32;
      v11 = a3 - 1;
      while (v9 < *(a4 + 16))
      {
        result = sub_10000630C(v10, v8);
        if (v11 == v9)
        {
          goto LABEL_11;
        }

        v8 += 40;
        ++v9;
        v10 += 40;
        if (v7 == v9)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_13;
    }

LABEL_9:
    v6 = v7;
    goto LABEL_11;
  }

LABEL_13:
  __break(1u);
  return result;
}

id sub_100B3D740()
{
  v0 = type metadata accessor for TSCLVersion();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_major] = 1;
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_minor] = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, "init");
  static TSContentLanguage.Models.Array.version = result;
  return result;
}

uint64_t *TSContentLanguage.Models.Array.version.unsafeMutableAddressor()
{
  if (qword_1019F1D50 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.Array.version;
}

id static TSContentLanguage.Models.Array.version.getter()
{
  if (qword_1019F1D50 != -1)
  {
    swift_once();
  }

  v1 = static TSContentLanguage.Models.Array.version;

  return v1;
}

Swift::Int sub_100B3D860()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100B3D8E4(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100B3D940@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_101875BE8, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_100B3D9E0@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_101875C20, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_100B3DA38(uint64_t a1)
{
  v2 = sub_100B3EBDC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B3DA74(uint64_t a1)
{
  v2 = sub_100B3EBDC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100B3DAB0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100B3E3FC(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t TSContentLanguage.Models.Array.encode(to:)(void *a1, uint64_t a2)
{
  sub_100020E58(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  v4 = (a2 + 32);
  v5 = *(a2 + 16) + 1;
  do
  {
    if (!--v5)
    {
      break;
    }

    v6 = v4 + 5;
    sub_100020E58(v4, v4[3]);
    sub_10002A948(v8, v8[3]);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    v4 = v6;
  }

  while (!v2);
  return sub_100005070(v8);
}

uint64_t sub_100B3DBD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19[-v8 - 8];
  v10 = *(a3 - 8);
  __chkstk_darwin(v11);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_10000630C(a2, v19);
  sub_1005B981C(&qword_101A11DF8, &qword_1014C7110);
  v14 = swift_dynamicCast();
  v15 = *(v10 + 56);
  if (v14)
  {
    v15(v9, 0, 1, a3);
    (*(v10 + 32))(v13, v9, a3);
    v16 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v10 + 8))(v13, a3);
  }

  else
  {
    v15(v9, 1, 1, a3);
    (*(v7 + 8))(v9, v6);
    v16 = 0;
  }

  return v16 & 1;
}

unint64_t TSContentLanguage.Models.Array.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
    return sub_10000630C(a2 + 40 * result + 32, a3);
  }

  __break(1u);
  return result;
}

void *sub_100B3DE24@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100B3E570(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void *sub_100B3DEA0()
{
  v1 = sub_100676440(*v0);

  return v1;
}

Swift::Int __swiftcall TSContentLanguage.Models.Array.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t (*sub_100B3DF24(uint64_t (**a1)(), unint64_t *a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x28uLL);
  }

  *a1 = result;
  v6 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v6 < *(*v2 + 16))
  {
    sub_10000630C(*v2 + 40 * v6 + 32, result);
    return sub_100B3DFC8;
  }

  __break(1u);
  return result;
}

void sub_100B3DFC8(void **a1)
{
  v1 = *a1;
  sub_100005070(*a1);

  free(v1);
}

uint64_t *sub_100B3E004@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result < 0 || (v4 = result[1], result = *v2, *(*v2 + 16) < v4))
  {
    __break(1u);
  }

  else
  {
    *a2 = v3;
    a2[1] = v4;
    a2[2] = result;
  }

  return result;
}

uint64_t sub_100B3E030@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 16);
  *a1 = *v1;
  a1[1] = 0;
  a1[2] = v2;
}

uint64_t *sub_100B3E058@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *result;
    if (!a2)
    {
LABEL_5:
      *a3 = v3;
      return result;
    }

    if ((v3 ^ 0x7FFFFFFFFFFFFFFFuLL) > a2 - 1)
    {
      v3 += a2;
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_100B3E088@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  if (a2 < 0)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v4 = *result;
  if (a2)
  {
    v5 = *a3 - v4;
    if (v5 >= a2 - 1)
    {
      v5 = a2 - 1;
    }

    if (v5 >= (v4 ^ 0x7FFFFFFFFFFFFFFFLL))
    {
      v5 = v4 ^ 0x7FFFFFFFFFFFFFFFLL;
    }

    v6 = v5 + 1;
    if (v6 >= 5)
    {
      v9 = v6 & 3;
      if ((v6 & 3) == 0)
      {
        v9 = 4;
      }

      v7 = v6 - v9;
      v10 = 0uLL;
      v11 = *result;
      v12 = vdupq_n_s64(1uLL);
      v13 = v7;
      do
      {
        v10 = vaddq_s64(v10, v12);
        v11 = vaddq_s64(v11, v12);
        v13 -= 4;
      }

      while (v13);
      result = vaddvq_s64(vpaddq_s64(v11, v10));
    }

    else
    {
      v7 = 0;
      result = *result;
    }

    v14 = (v7 + v4);
    v15 = v14 - 0x7FFFFFFFFFFFFFFFLL;
    v16 = &v14[-*a3];
    v17 = a2 - v7;
    v4 = result;
    while (1)
    {
      v8 = v16 == 0;
      if (!v16)
      {
        v4 = 0;
        goto LABEL_21;
      }

      if (!v15)
      {
        break;
      }

      ++v4;
      ++v15;
      ++v16;
      if (!--v17)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  v8 = 0;
LABEL_21:
  *a4 = v4;
  *(a4 + 8) = v8;
  return result;
}

uint64_t sub_100B3E170(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  v5 = __OFSUB__(*a2, *a1);
  result = *a2 - *a1;
  if (result < 0 != v5)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = __OFSUB__(v2, v3);
  v6 = v2 - v3;
  if (!v6)
  {
    return 0;
  }

  if (v6 < 0 == v5)
  {
    goto LABEL_9;
  }

  if (v6 < 0x8000000000000001)
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t *sub_100B3E1B0(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_100B3E1CC(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_100B3E1E8(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *sub_100B3E204@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_100B3E21C(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

uint64_t sub_100B3E234(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_10002C58C(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_10067F3C8(&v12, v10 + 40 * a1 + 32);
}

uint64_t _s8Freeform17TSContentLanguageO6ModelsO5ArrayV2eeoiySbAG_AGtFZ_0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(a2 + 16);
  if ((v2 || v3) && v2 != v3)
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 32;
  v6 = a2 + 32;
  while (1)
  {
    v7 = 0uLL;
    v8 = v2;
    v9 = 0uLL;
    v10 = 0uLL;
    if (v4 != v2)
    {
      if (v4 >= v2)
      {
        goto LABEL_16;
      }

      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_17;
      }

      *&v16 = v4;
      sub_10000630C(v5 + 40 * v4, &v16 + 8);
      v7 = v16;
      v9 = v17;
      v10 = v18;
    }

    v19[0] = v7;
    v19[1] = v9;
    v19[2] = v10;
    if (!v10)
    {
      return 1;
    }

    v15 = v7;
    result = sub_10067F3C8((v19 + 8), &v16);
    if (v15 >= v3)
    {
      break;
    }

    v11 = *(&v17 + 1);
    v12 = v18;
    v13 = sub_100020E58(&v16, *(&v17 + 1));
    v14 = sub_100B3DBD0(v13, v6 + 40 * v15, v11, v12);
    result = sub_100005070(&v16);
    v4 = v8;
    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

void *sub_100B3E3FC(void *a1)
{
  v3 = sub_1005B981C(&qword_101A11E78, &qword_1014986F8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = sub_100020E58(a1, a1[3]);
  sub_100B3EBDC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100005070(a1);
  }

  else
  {
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9;
    sub_100005070(a1);
  }

  return v7;
}

void *sub_100B3E570(void *a1)
{
  v2 = v1;
  sub_100020E58(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    sub_100005070(a1);
  }

  else
  {
    sub_100020E58(a1, a1[3]);
    dispatch thunk of Decoder.unkeyedContainer()();
    sub_100020E58(v22, v23);
    v2 = _swiftEmptyArrayStorage;
    while ((dispatch thunk of UnkeyedDecodingContainer.isAtEnd.getter() & 1) == 0)
    {
      sub_10002A948(v24, v24[3]);
      sub_100B3EB28();
      dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
      v5 = sub_100B0D7C4(v19[0], v19[1]);
      v7 = v6;

      if (!v5)
      {
        v7 = sub_100B3D0F4();
        v5 = &type metadata for TSContentLanguage.Models.UnknownObject;
      }

      sub_10002A948(v22, v23);
      v20 = v5;
      v21 = v7;
      sub_10002C58C(v19);
      dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = v2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v2 = sub_100B389EC(0, v2[2] + 1, 1, v2);
        v25 = v2;
      }

      v10 = v2[2];
      v9 = v2[3];
      if (v10 >= v9 >> 1)
      {
        v2 = sub_100B389EC((v9 > 1), v10 + 1, 1, v2);
        v25 = v2;
      }

      v11 = v20;
      v12 = v21;
      v13 = sub_10002A948(v19, v20);
      v14 = __chkstk_darwin(v13);
      v16 = &v19[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v16, v14);
      sub_100B3E234(v10, v16, &v25, v11, v12);
      sub_100005070(v19);
      sub_100020E58(v22, v23);
    }

    sub_100005070(v22);
    sub_100005070(v24);
    sub_100005070(a1);
  }

  return v2;
}

unint64_t sub_100B3E8B4(void *a1)
{
  a1[2] = sub_100B3E8EC();
  a1[3] = sub_100B3E940();
  result = sub_100B3E994();
  a1[4] = result;
  return result;
}

unint64_t sub_100B3E8EC()
{
  result = qword_101A11E20;
  if (!qword_101A11E20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TSContentLanguage.Models.Array, &type metadata for TSContentLanguage.Models.Array, v0, v1);
    atomic_store(result, &qword_101A11E20);
  }

  return result;
}

unint64_t sub_100B3E940()
{
  result = qword_101A11E28;
  if (!qword_101A11E28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TSContentLanguage.Models.Array, &type metadata for TSContentLanguage.Models.Array, v0, v1);
    atomic_store(result, &qword_101A11E28);
  }

  return result;
}

unint64_t sub_100B3E994()
{
  result = qword_101A11E30;
  if (!qword_101A11E30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TSContentLanguage.Models.Array, &type metadata for TSContentLanguage.Models.Array, v0, v1);
    atomic_store(result, &qword_101A11E30);
  }

  return result;
}

unint64_t sub_100B3EA30()
{
  result = qword_101A11E48;
  if (!qword_101A11E48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TSContentLanguage.Models.Array, &type metadata for TSContentLanguage.Models.Array, v0, v1);
    atomic_store(result, &qword_101A11E48);
  }

  return result;
}

unint64_t sub_100B3EB28()
{
  result = qword_101A11E70;
  if (!qword_101A11E70)
  {
    result = swift_getWitnessTable(aE_37, &_s5ArrayV8TypeStubVN, v0, v1);
    atomic_store(result, &qword_101A11E70);
  }

  return result;
}

void *sub_100B3EB7C(void *result)
{
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
  }

  return result;
}

unint64_t sub_100B3EBDC()
{
  result = qword_101A11E80;
  if (!qword_101A11E80)
  {
    result = swift_getWitnessTable(asc_1014987FC, &_s5ArrayV8TypeStubV9CodingKeyON, v0, v1);
    atomic_store(result, &qword_101A11E80);
  }

  return result;
}

unint64_t sub_100B3EC44()
{
  result = qword_101A11E88;
  if (!qword_101A11E88)
  {
    result = swift_getWitnessTable(byte_1014987D4, &_s5ArrayV8TypeStubV9CodingKeyON, v0, v1);
    atomic_store(result, &qword_101A11E88);
  }

  return result;
}

unint64_t sub_100B3EC9C()
{
  result = qword_101A11E90;
  if (!qword_101A11E90)
  {
    result = swift_getWitnessTable(asc_10149870C, &_s5ArrayV8TypeStubV9CodingKeyON, v0, v1);
    atomic_store(result, &qword_101A11E90);
  }

  return result;
}

unint64_t sub_100B3ECF4()
{
  result = qword_101A11E98;
  if (!qword_101A11E98)
  {
    result = swift_getWitnessTable(byte_101498734, &_s5ArrayV8TypeStubV9CodingKeyON, v0, v1);
    atomic_store(result, &qword_101A11E98);
  }

  return result;
}

id sub_100B3EDF4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100B3F8A4(v5, a4);
  v7 = v6;

  if (v7)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void *sub_100B3EEA0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v7 = *(a3 - 8);
  v8 = __chkstk_darwin(a1);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v8);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = [a2 appDescriptionData];
  v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v56 = sub_1005B981C(&unk_101A07740, &unk_101486B90);
  v55[0] = v15;
  sub_10000BF3C(v55, v54);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53 = _swiftEmptyDictionarySingleton;
  sub_100A9EF34(v54, v11, v13, isUniquelyReferenced_nonNull_native);

  v17 = v53;
  v18 = (*(a4 + 16))(v5, a4);
  if (v18 == 6)
  {
    v50 = v17;
    v51 = v7;
    v52 = v5;
    v49 = objc_opt_self();
    v19 = [v49 _atomicIncrementAssertCount];
    v55[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v55, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("contentDescriptionForStyle(copiedFrom:)", 39, 2);
    v20 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLContentDescriptionTranslator.swift", 106, 2);
    v21 = String._bridgeToObjectiveC()();

    v22 = [v21 lastPathComponent];

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v26 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v19;
    v28 = sub_1005CF000();
    *(inited + 96) = v28;
    v29 = sub_1005CF04C();
    *(inited + 104) = v29;
    *(inited + 72) = v20;
    *(inited + 136) = &type metadata for String;
    v30 = sub_1000053B0();
    *(inited + 112) = v23;
    *(inited + 120) = v25;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v30;
    *(inited + 152) = 16;
    v31 = v55[0];
    *(inited + 216) = v28;
    *(inited + 224) = v29;
    *(inited + 192) = v31;
    v32 = v20;
    v33 = v31;
    v34 = static os_log_type_t.error.getter();
    sub_100005404(v26, &_mh_execute_header, v34, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v35 = static os_log_type_t.error.getter();
    sub_100005404(v26, &_mh_execute_header, v35, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v36 = swift_allocObject();
    v36[2] = 8;
    v36[3] = 0;
    v36[4] = 0;
    v36[5] = 0;
    v37 = __VaListBuilder.va_list()();
    StaticString.description.getter("contentDescriptionForStyle(copiedFrom:)", 39, 2);
    v38 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLContentDescriptionTranslator.swift", 106, 2);
    v39 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v40 = String._bridgeToObjectiveC()();

    [v49 handleFailureInFunction:v38 file:v39 lineNumber:16 isFatal:0 format:v40 args:v37];

    v7 = v51;
    v5 = v52;
    v41 = v50;
  }

  else
  {
    v42 = v18;
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;
    v56 = &type metadata for CRLStyleCopyingType;
    LOBYTE(v55[0]) = v42;
    sub_10000BF3C(v55, v54);
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v53 = v17;
    sub_100A9EF34(v54, v43, v45, v46);

    v41 = v53;
  }

  (*(v7 + 8))(v10, v5);
  return v41;
}

uint64_t sub_100B3F43C(uint64_t a1)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(a1 + 16))
  {
    v4 = sub_10000BE7C(v2, v3);
    v6 = v5;

    if (v6)
    {
      sub_100064288(*(a1 + 56) + 32 * v4, v33);
      sub_10000BF3C(v33, v34);
      sub_100064288(v34, v33);
      if (swift_dynamicCast())
      {
        *&v33[0] = v32 + 1;
        v7 = dispatch thunk of CustomStringConvertible.description.getter();
        sub_100005070(v34);
        return v7;
      }

      v9 = objc_opt_self();
      v10 = [v9 _atomicIncrementAssertCount];
      v32 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v32, "invalid nil found when unwrapping value", 39, 2u);
      StaticString.description.getter("stringToPrefixForStyleCopyingType(contentDescription:)", 54, 2);
      v11 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLContentDescriptionTranslator.swift", 106, 2);
      v12 = String._bridgeToObjectiveC()();

      v13 = [v12 lastPathComponent];

      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v17 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v10;
      v19 = sub_1005CF000();
      *(inited + 96) = v19;
      v20 = sub_1005CF04C();
      *(inited + 104) = v20;
      *(inited + 72) = v11;
      *(inited + 136) = &type metadata for String;
      v21 = sub_1000053B0();
      *(inited + 112) = v14;
      *(inited + 120) = v16;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v21;
      *(inited + 152) = 25;
      v22 = v32;
      *(inited + 216) = v19;
      *(inited + 224) = v20;
      *(inited + 192) = v22;
      v23 = v11;
      v24 = v22;
      v25 = static os_log_type_t.error.getter();
      sub_100005404(v17, &_mh_execute_header, v25, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v26 = static os_log_type_t.error.getter();
      sub_100005404(v17, &_mh_execute_header, v26, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v27 = swift_allocObject();
      v27[2] = 8;
      v27[3] = 0;
      v27[4] = 0;
      v27[5] = 0;
      v28 = __VaListBuilder.va_list()();
      StaticString.description.getter("stringToPrefixForStyleCopyingType(contentDescription:)", 54, 2);
      v29 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLContentDescriptionTranslator.swift", 106, 2);
      v30 = String._bridgeToObjectiveC()();

      StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
      v31 = String._bridgeToObjectiveC()();

      [v9 handleFailureInFunction:v29 file:v30 lineNumber:25 isFatal:0 format:v31 args:v28];

      sub_100005070(v34);
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_100B3F8A4(uint64_t a1, void *a2)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a1 + 16))
  {
    goto LABEL_11;
  }

  v5 = sub_10000BE7C(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  sub_100064288(*(a1 + 56) + 32 * v5, v17);
  sub_1005B981C(&qword_101A11EA0, &unk_101498850);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (!(v14 >> 62))
  {
    result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_11:

    return 0;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v9 = *(v14 + 32);
  }

  v10 = v9;

  *&v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v15 + 1) = v11;
  v12 = [v10 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v12)
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
  }

  else
  {

    v15 = 0u;
    v16 = 0u;
  }

  v17[0] = v15;
  v17[1] = v16;
  if (!*(&v16 + 1))
  {
    sub_1005E09AC(v17);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v13;
  }

  else
  {
    return 0;
  }
}

double sub_100B3FAF8()
{
  sub_10006BF9C(v0 + qword_101AD7510);

  return result;
}

void sub_100B3FB38()
{
  v1 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v20 - v5;
  sub_10006BF38(v0 + qword_101AD7510, &v20 - v5);
  v7 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
  (*(*(v7 - 8) + 56))(v3, 4, 5, v7);
  v8 = sub_100068604(v6, v3);
  sub_10006BF9C(v3);
  sub_10006BF9C(v6);
  if (v8)
  {
    v9 = [objc_opt_self() defaultCenter];
    v10 = qword_1019F1F48;
    v11 = v0;
    if (v10 != -1)
    {
      swift_once();
    }

    v12 = qword_101AD7950;
    v13 = [objc_opt_self() sharedApplication];
    v14 = [v13 delegate];

    if (!v14)
    {
      __break(1u);
      return;
    }

    type metadata accessor for CRLiOSAppDelegate();
    v15 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_iCloudStatus);

    swift_unknownObjectRelease();
    [v9 removeObserver:v11 name:v12 object:v15];
  }

  v16 = [objc_opt_self() defaultCenter];
  v17 = qword_1019F14A0;
  v18 = v0;
  if (v17 != -1)
  {
    swift_once();
  }

  [v16 removeObserver:v18 name:qword_101AD61F0 object:0];

  v19 = type metadata accessor for CRLiOSEmptyFolderViewController(0);
  v20.receiver = v18;
  v20.super_class = v19;
  objc_msgSendSuper2(&v20, "dealloc");
}

double sub_100B3FE38(uint64_t a1)
{
  sub_10006BF9C(a1 + qword_101AD7510);

  return result;
}

void sub_100B3FE84(void *a1)
{
  v1 = [a1 userInfo];
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AnyHashable.init<A>(_:)();
  if (!*(v3 + 16) || (v4 = sub_1000640CC(v30), (v5 & 1) == 0))
  {

    sub_100064234(v30);
LABEL_8:
    v31 = 0u;
    v32 = 0u;
    goto LABEL_9;
  }

  sub_100064288(*(v3 + 56) + 32 * v4, &v31);
  sub_100064234(v30);

  if (!*(&v32 + 1))
  {
LABEL_9:
    sub_1005E09AC(&v31);
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    v6 = v30[0];
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v30[0]) = v6;

    static Published.subscript.setter();
    return;
  }

LABEL_10:
  v7 = objc_opt_self();
  v8 = [v7 _atomicIncrementAssertCount];
  v30[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, v30, "invalid nil found when unwrapping value", 39, 2u);
  StaticString.description.getter("updateICloudOnline(notification:)", 33, 2);
  v9 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSEmptyFolderViewController.swift", 101, 2);
  v10 = String._bridgeToObjectiveC()();

  v11 = [v10 lastPathComponent];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v15 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v8;
  v17 = sub_1005CF000();
  *(inited + 96) = v17;
  v18 = sub_1005CF04C();
  *(inited + 104) = v18;
  *(inited + 72) = v9;
  *(inited + 136) = &type metadata for String;
  v19 = sub_1000053B0();
  *(inited + 112) = v12;
  *(inited + 120) = v14;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v19;
  *(inited + 152) = 81;
  v20 = v30[0];
  *(inited + 216) = v17;
  *(inited + 224) = v18;
  *(inited + 192) = v20;
  v21 = v9;
  v22 = v20;
  v23 = static os_log_type_t.error.getter();
  sub_100005404(v15, &_mh_execute_header, v23, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v24 = static os_log_type_t.error.getter();
  sub_100005404(v15, &_mh_execute_header, v24, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v25 = swift_allocObject();
  v25[2] = 8;
  v25[3] = 0;
  v25[4] = 0;
  v25[5] = 0;
  v26 = __VaListBuilder.va_list()();
  StaticString.description.getter("updateICloudOnline(notification:)", 33, 2);
  v27 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSEmptyFolderViewController.swift", 101, 2);
  v28 = String._bridgeToObjectiveC()();

  StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
  v29 = String._bridgeToObjectiveC()();

  [v7 handleFailureInFunction:v27 file:v28 lineNumber:81 isFatal:0 format:v29 args:v26];
}

void sub_100B4035C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100B3FE84(v4);
}

void sub_100B403C4(void *a1)
{
  v2 = [a1 userInfo];
  v3 = &selRef_geometryWithMask;
  if (!v2)
  {
    v66 = 0u;
    v67 = 0u;
    goto LABEL_9;
  }

  v4 = v2;
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AnyHashable.init<A>(_:)();
  if (!*(v5 + 16) || (v6 = sub_1000640CC(&v64), (v7 & 1) == 0))
  {

    sub_100064234(&v64);
    v66 = 0u;
    v67 = 0u;
    goto LABEL_9;
  }

  sub_100064288(*(v5 + 56) + 32 * v6, &v66);
  sub_100064234(&v64);

  if (!*(&v67 + 1))
  {
LABEL_9:
    sub_1005E09AC(&v66);
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    v8 = v64;
    v9 = v65;
    swift_getKeyPath();
    swift_getKeyPath();
    v64 = v8;
    v65 = v9;

    static Published.subscript.setter();
    goto LABEL_13;
  }

LABEL_10:
  v10 = objc_opt_self();
  v11 = [v10 _atomicIncrementAssertCount];
  v64 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v64, "invalid nil found when unwrapping value", 39, 2u);
  StaticString.description.getter("updateSearchState(notification:)", 32, 2);
  v12 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSEmptyFolderViewController.swift", 101, 2);
  v13 = String._bridgeToObjectiveC()();

  v14 = [v13 lastPathComponent];

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v18 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v11;
  v20 = sub_1005CF000();
  *(inited + 96) = v20;
  v21 = sub_1005CF04C();
  *(inited + 104) = v21;
  *(inited + 72) = v12;
  *(inited + 136) = &type metadata for String;
  v22 = sub_1000053B0();
  *(inited + 112) = v15;
  *(inited + 120) = v17;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 144) = v22;
  *(inited + 152) = 87;
  v23 = v64;
  *(inited + 216) = v20;
  *(inited + 224) = v21;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 192) = v23;
  v24 = v12;
  v25 = v23;
  v26 = static os_log_type_t.error.getter();
  sub_100005404(v18, &_mh_execute_header, v26, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v27 = static os_log_type_t.error.getter();
  sub_100005404(v18, &_mh_execute_header, v27, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v28 = swift_allocObject();
  v28[2] = 8;
  v28[3] = 0;
  v28[4] = 0;
  v28[5] = 0;
  v29 = __VaListBuilder.va_list()();
  StaticString.description.getter("updateSearchState(notification:)", 32, 2);
  v30 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSEmptyFolderViewController.swift", 101, 2);
  v31 = String._bridgeToObjectiveC()();

  StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
  v32 = String._bridgeToObjectiveC()();

  v3 = &selRef_geometryWithMask;
  [v10 handleFailureInFunction:v30 file:v31 lineNumber:87 isFatal:0 format:v32 args:v29];

LABEL_13:
  v33 = [a1 userInfo];
  if (!v33)
  {
    v66 = 0u;
    v67 = 0u;
    v36 = &_s10Foundation9IndexPathVSHAAMc_ptr;
    v37 = &selRef_setSizeClassParameters_;
    goto LABEL_21;
  }

  v34 = v33;
  v35 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AnyHashable.init<A>(_:)();
  v36 = &_s10Foundation9IndexPathVSHAAMc_ptr;
  v37 = &selRef_setSizeClassParameters_;
  if (!*(v35 + 16) || (v38 = sub_1000640CC(&v64), (v39 & 1) == 0))
  {

    sub_100064234(&v64);
    v66 = 0u;
    v67 = 0u;
    goto LABEL_21;
  }

  sub_100064288(*(v35 + 56) + 32 * v38, &v66);
  sub_100064234(&v64);

  if (!*(&v67 + 1))
  {
LABEL_21:
    sub_1005E09AC(&v66);
    goto LABEL_22;
  }

  if (swift_dynamicCast())
  {
    v40 = v64;
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v64) = v40;

    static Published.subscript.setter();
    return;
  }

LABEL_22:
  v41 = objc_opt_self();
  v42 = [v41 v37[325]];
  v64 = [objc_allocWithZone(v36[101]) init];
  sub_100604538(_swiftEmptyArrayStorage, &v64, "invalid nil found when unwrapping value", 39, 2u);
  StaticString.description.getter("updateSearchState(notification:)", 32, 2);
  v43 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSEmptyFolderViewController.swift", 101, 2);
  v44 = String._bridgeToObjectiveC()();

  v45 = [v44 lastPathComponent];

  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v47;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v49 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v50 = swift_initStackObject();
  *(v50 + 16) = xmmword_10146CA70;
  *(v50 + 56) = &type metadata for Int32;
  *(v50 + 64) = &protocol witness table for Int32;
  *(v50 + 32) = v42;
  v51 = sub_1005CF000();
  *(v50 + 96) = v51;
  v52 = sub_1005CF04C();
  *(v50 + 104) = v52;
  *(v50 + 72) = v43;
  *(v50 + 136) = &type metadata for String;
  v53 = sub_1000053B0();
  *(v50 + 112) = v46;
  *(v50 + 120) = v48;
  *(v50 + 176) = &type metadata for UInt;
  *(v50 + 144) = v53;
  *(v50 + 152) = 91;
  v54 = v64;
  *(v50 + 216) = v51;
  *(v50 + 224) = v52;
  *(v50 + 184) = &protocol witness table for UInt;
  *(v50 + 192) = v54;
  v55 = v43;
  v56 = v54;
  v57 = static os_log_type_t.error.getter();
  sub_100005404(v49, &_mh_execute_header, v57, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v50);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v58 = static os_log_type_t.error.getter();
  sub_100005404(v49, &_mh_execute_header, v58, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v59 = swift_allocObject();
  v59[2] = 8;
  v59[3] = 0;
  v59[4] = 0;
  v59[5] = 0;
  v60 = __VaListBuilder.va_list()();
  StaticString.description.getter("updateSearchState(notification:)", 32, 2);
  v61 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSEmptyFolderViewController.swift", 101, 2);
  v62 = String._bridgeToObjectiveC()();

  StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
  v63 = String._bridgeToObjectiveC()();

  [v41 v3[112]];
}

void sub_100B40D84(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100B403C4(v4);
}

void sub_100B4100C(void *a1)
{
  v2 = v1;
  v4 = (*((swift_isaMask & *v1) + 0x298))();
  v5 = *((swift_isaMask & *a1) + 0x110);
  v6 = v5(v34, v4);
  if ((v35 & 1) == 0)
  {
    v5(v36, v6);
    sub_1009B5378(v36);
  }

  type metadata accessor for CRLMediaItem(0);
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    v9 = a1;
    v10 = sub_100D652D4();
    sub_100D654FC(v10);
    v11 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v12 = *(**(v8 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 440);
    v33 = v9;

    v14 = v12(v13);

    if ((sub_1011255D4() & 1) == 0)
    {

      goto LABEL_15;
    }

    v15 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v16 = *(**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 440);

    v18 = v16(v17);

    if (v18)
    {
      if (v14)
      {
        sub_100006370(0, &unk_101A11F40, off_10182F940);
        v19 = v14;
        v20 = static NSObject.== infix(_:_:)();

        if (v20)
        {

          goto LABEL_15;
        }
      }

      else
      {
      }
    }

    else if (!v14)
    {
LABEL_15:
      v23 = *(**(v8 + v11) + 392);

      v25 = v23(v24);

      v26 = sub_1011255D4();
      if (v26)
      {
        v27 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
        v28 = *(**(v2 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 392);

        LODWORD(v28) = v28(v29) & 1;

        v30 = v25 & 1;
        if (v30 != v28)
        {
          v31 = *(**(v2 + v27) + 400);

          v31(v30);
        }
      }

      v32 = (*((swift_isaMask & *v8) + 0x568))(v26);
      (*((swift_isaMask & *v2) + 0x570))(v32 & 1);

      return;
    }

    v21 = *(**(v2 + v15) + 448);
    v22 = v14;

    v21(v14);

    goto LABEL_15;
  }
}

id sub_100B4159C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLMediaItem(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLMediaItem(uint64_t a1)
{
  result = qword_101A11F28;
  if (!qword_101A11F28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100B416E4(double a1, double a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v7 = *(**(v2 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

  v47 = v7(v8);

  [v47 size];
  v10 = v9;
  v12 = v11;
  v13 = sub_100121E8C(v9, v11, a1, a2);
  if (v13 < v10 || v14 < v12)
  {
    v16 = v14;
    v17 = v13;
    [v47 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100006370(0, &unk_101A0B030, off_10182F788);
    if (swift_dynamicCast())
    {
      [v48 setSize:{v17, v16}];
      v18 = v48;
      if ((sub_1011255D4() & 1) != 0 && (v19 = *(**(v2 + v6) + 296), v20 = , v21 = v19(v20), , sub_100006370(0, &unk_1019F5730, off_10182F770), v22 = static NSObject.== infix(_:_:)(), v21, (v22 & 1) == 0))
      {
        v46 = *(**(v3 + v6) + 304);

        v46(v18);
      }

      else
      {
      }
    }

    else
    {
      v23 = objc_opt_self();
      v24 = [v23 _atomicIncrementAssertCount];
      v48 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v48, "invalid nil found when unwrapping value", 39, 2u);
      StaticString.description.getter("scaleDownSizeToFit(within:board:)", 33, 2);
      v25 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMediaItem.swift", 83, 2);
      v26 = String._bridgeToObjectiveC()();

      v27 = [v26 lastPathComponent];

      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v31 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v24;
      v33 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(inited + 96) = v33;
      v34 = sub_1005CF04C();
      *(inited + 104) = v34;
      *(inited + 72) = v25;
      *(inited + 136) = &type metadata for String;
      v35 = sub_1000053B0();
      *(inited + 112) = v28;
      *(inited + 120) = v30;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v35;
      *(inited + 152) = 95;
      v36 = v48;
      *(inited + 216) = v33;
      *(inited + 224) = v34;
      *(inited + 192) = v36;
      v37 = v25;
      v38 = v36;
      v39 = static os_log_type_t.error.getter();
      sub_100005404(v31, &_mh_execute_header, v39, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v40 = static os_log_type_t.error.getter();
      sub_100005404(v31, &_mh_execute_header, v40, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v41 = swift_allocObject();
      v41[2] = 8;
      v41[3] = 0;
      v41[4] = 0;
      v41[5] = 0;
      v42 = __VaListBuilder.va_list()();
      StaticString.description.getter("scaleDownSizeToFit(within:board:)", 33, 2);
      v43 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMediaItem.swift", 83, 2);
      v44 = String._bridgeToObjectiveC()();

      StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
      v45 = String._bridgeToObjectiveC()();

      [v23 handleFailureInFunction:v43 file:v44 lineNumber:95 isFatal:0 format:v45 args:v42];
    }
  }

  else
  {
  }
}

uint64_t sub_100B41CD8()
{
  sub_100A08C84();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
}

double sub_100B41D78(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC8Freeform30CRLiOSMiniFormatterFileBuilder_fileDataProvider);

    v6 = *&v5[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController];
    if (type metadata accessor for CRLFileEditor())
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    }

    else
    {
      ObjCClassFromMetadata = 0;
    }

    v8 = [v6 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      [v9 showMediaReplaceUI:v5];
    }

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100B41E5C(uint64_t a1, uint64_t a2)
{
  sub_100064288(a2, v9);
  type metadata accessor for CRLFileItem(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_5;
  }

  v4 = sub_100911E34();
  if (!v4)
  {

LABEL_5:
    v6 = sub_1009C5EDC(a1, a2);
    return v6 & 1;
  }

  v5 = sub_10079DB40(v8, v4);

  v6 = v5;
  return v6 & 1;
}

id sub_100B41F3C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CRLiOSMiniFormatterFileBuilder();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100B41FAC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v65 = a3;
  v5 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v5 - 8);
  v60 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v63 = &v56 - v8;
  v9 = sub_1005B981C(&qword_1019F67C0, &unk_10146F3E0);
  __chkstk_darwin(v9 - 8);
  v62 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v68 = &v56 - v12;
  v13 = type metadata accessor for CRLProto_Data(0);
  v66 = *(v13 - 8);
  v67 = v13;
  __chkstk_darwin(v13);
  v61 = (&v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v17 = (&v56 - v16);
  v18 = type metadata accessor for UUID();
  v64 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v56 - v22;
  v24 = type metadata accessor for BinaryDecodingOptions();
  __chkstk_darwin(v24 - 8);
  v25 = type metadata accessor for CRLProto_CollaboratorCursor(0);
  __chkstk_darwin(v25);
  v27 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = 0;
  v70 = 0u;
  v71 = 0u;
  sub_100024E98(a1, a2);
  BinaryDecodingOptions.init()();
  sub_100B42EF0(&qword_101A11F80, type metadata accessor for CRLProto_CollaboratorCursor, "Y>8");
  v28 = v69;
  Message.init(serializedData:extensions:partial:options:)();
  if (v28)
  {
    return sub_10002640C(a1, a2);
  }

  v56 = v20;
  v57 = v18;
  v58 = a1;
  v59 = a2;
  v30 = *(v25 + 24);
  v69 = v27;
  v31 = v68;
  sub_10000BE14(&v27[v30], v68, &qword_1019F67C0, &unk_10146F3E0);
  v32 = v67;
  v33 = *(v66 + 48);
  if (v33(v31, 1, v67) == 1)
  {
    *v17 = xmmword_10146F370;
    UnknownStorage.init()();
    if (v33(v68, 1, v32) != 1)
    {
      sub_10000CAAC(v68, &qword_1019F67C0, &unk_10146F3E0);
    }
  }

  else
  {
    sub_100683F6C(v68, v17);
  }

  v34 = *v17;
  v35 = v17[1];
  sub_100024E98(*v17, v35);
  sub_100B42F38(v17, type metadata accessor for CRLProto_Data);
  UUID.init(crl_data:)(v34, v35);
  v36 = v62;
  sub_10000BE14(v69 + *(v25 + 28), v62, &qword_1019F67C0, &unk_10146F3E0);
  if (v33(v36, 1, v32) == 1)
  {
    v37 = v61;
    *v61 = xmmword_10146F370;
    UnknownStorage.init()();
    v38 = v33(v36, 1, v32);
    v39 = v65;
    v40 = v63;
    if (v38 != 1)
    {
      sub_10000CAAC(v36, &qword_1019F67C0, &unk_10146F3E0);
    }
  }

  else
  {
    v37 = v61;
    sub_100683F6C(v36, v61);
    v39 = v65;
    v40 = v63;
  }

  v41 = *v37;
  v42 = v37[1];
  sub_100024E98(*v37, v42);
  sub_100B42F38(v37, type metadata accessor for CRLProto_Data);
  v43 = objc_allocWithZone(type metadata accessor for CRLPersistableSelectionPath(0));
  v44 = sub_100703FD8(v41, v42);
  v46 = v58;
  v45 = v59;
  v47 = v57;
  v68 = 0;
  v48 = v44;
  v49 = v64;
  (*(v64 + 16))(v40, v23, v57);
  (*(v49 + 56))(v40, 0, 1, v47);
  v50 = *v69;
  v51 = v60;
  sub_10000BE14(v40, v60, &qword_1019F6990, &qword_10146D2F0);
  if ((*(v49 + 48))(v51, 1, v47) == 1)
  {
    v52 = v48;
    sub_10000CAAC(v51, &qword_1019F6990, &qword_10146D2F0);
    sub_1006B305C();
    swift_allocError();
    *v53 = 0;
    swift_willThrow();

    sub_10002640C(v46, v45);
    sub_10000CAAC(v40, &qword_1019F6990, &qword_10146D2F0);
    (*(v49 + 8))(v23, v47);
    return sub_100B42F38(v69, type metadata accessor for CRLProto_CollaboratorCursor);
  }

  else
  {
    v67 = v48;
    v54 = v51;
    v55 = *(v49 + 32);
    v55(v56, v54, v47);
    sub_10002640C(v46, v45);
    sub_10000CAAC(v40, &qword_1019F6990, &qword_10146D2F0);
    (*(v49 + 8))(v23, v47);
    sub_100B42F38(v69, type metadata accessor for CRLProto_CollaboratorCursor);
    v55(v39, v56, v47);
    result = type metadata accessor for CRLCollaboratorCursor(0);
    *&v39[*(result + 24)] = v50;
    *&v39[*(result + 20)] = v67;
  }

  return result;
}

uint64_t sub_100B427F8(uint64_t a1)
{
  v52 = a1;
  v50 = type metadata accessor for CRLProto_PersistableSelectionPath(0);
  __chkstk_darwin(v50);
  v54 = &v46 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1005B981C(&qword_1019F67C0, &unk_10146F3E0);
  __chkstk_darwin(v2 - 8);
  v49 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v46 - v5;
  v7 = type metadata accessor for CRLProto_Data(0);
  v60 = *(v7 - 8);
  v8 = v60;
  __chkstk_darwin(v7);
  v47 = (&v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v12 = &v46 - v11;
  __chkstk_darwin(v13);
  v15 = (&v46 - v14);
  v16 = type metadata accessor for CRLProto_CollaboratorCursor(0);
  __chkstk_darwin(v16);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v18 = 0;
  UnknownStorage.init()();
  v19 = *(v16 + 24);
  v20 = *(v8 + 56);
  v55 = v20;
  v20(&v18[v19], 1, 1, v7);
  v48 = v16;
  v57 = *(v16 + 28);
  v20(&v18[v57], 1, 1, v7);
  v58 = xmmword_10146F370;
  *v15 = xmmword_10146F370;
  UnknownStorage.init()();
  sub_10000CAAC(&v18[v19], &qword_1019F67C0, &unk_10146F3E0);
  v51 = v15;
  v21 = v15;
  v22 = v6;
  sub_100683F6C(v21, &v18[v19]);
  v56 = v8 + 56;
  v23 = (v20)(&v18[v19], 0, 1, v7);
  v24 = v7;
  v25 = UUID.crl_data()(v23);
  v27 = v26;
  v28 = v60;
  sub_10000BE14(&v18[v19], v22, &qword_1019F67C0, &unk_10146F3E0);
  v29 = *(v28 + 48);
  v30 = v29(v22, 1, v24);
  v60 = v28 + 48;
  v46 = v29;
  if (v30 == 1)
  {
    *v12 = v58;
    UnknownStorage.init()();
    if (v29(v22, 1, v24) != 1)
    {
      sub_10000CAAC(v22, &qword_1019F67C0, &unk_10146F3E0);
    }
  }

  else
  {
    sub_100683F6C(v22, v12);
  }

  sub_10002640C(*v12, *(v12 + 1));
  *v12 = v25;
  *(v12 + 1) = v27;
  sub_10000CAAC(&v18[v19], &qword_1019F67C0, &unk_10146F3E0);
  sub_100683F6C(v12, &v18[v19]);
  v31 = v55;
  v55(&v18[v19], 0, 1, v24);
  v32 = v51;
  *v51 = v58;
  UnknownStorage.init()();
  v33 = v57;
  sub_10000CAAC(&v18[v57], &qword_1019F67C0, &unk_10146F3E0);
  sub_100683F6C(v32, &v18[v33]);
  v31(&v18[v33], 0, 1, v24);
  v34 = type metadata accessor for CRLCollaboratorCursor(0);
  v35 = v59;
  v36 = v53;
  v37 = v54;
  sub_1007068A0(v52, v54);
  if (v36)
  {
    sub_100B42F38(v18, type metadata accessor for CRLProto_CollaboratorCursor);
  }

  else
  {
    sub_100B42EF0(&qword_1019FC3A8, type metadata accessor for CRLProto_PersistableSelectionPath, byte_1014B4888);
    v38 = Message.serializedData(partial:)();
    v52 = v39;
    v53 = v38;
    sub_100B42F38(v37, type metadata accessor for CRLProto_PersistableSelectionPath);
    v40 = v49;
    sub_10000BE14(&v18[v57], v49, &qword_1019F67C0, &unk_10146F3E0);
    v41 = v46;
    if (v46(v40, 1, v24) == 1)
    {
      v42 = v47;
      *v47 = v58;
      UnknownStorage.init()();
      if (v41(v40, 1, v24) != 1)
      {
        sub_10000CAAC(v49, &qword_1019F67C0, &unk_10146F3E0);
      }
    }

    else
    {
      v42 = v47;
      sub_100683F6C(v40, v47);
    }

    sub_10002640C(*v42, *(v42 + 1));
    v43 = v52;
    *v42 = v53;
    *(v42 + 1) = v43;
    v44 = v57;
    sub_10000CAAC(&v18[v57], &qword_1019F67C0, &unk_10146F3E0);
    sub_100683F6C(v42, &v18[v44]);
    v55(&v18[v44], 0, 1, v24);
    *v18 = *(v35 + *(v34 + 24));
    sub_100B42EF0(&qword_101A11F80, type metadata accessor for CRLProto_CollaboratorCursor, "Y>8");
    v34 = Message.serializedData(partial:)();
    sub_100B42F38(v18, type metadata accessor for CRLProto_CollaboratorCursor);
  }

  return v34;
}

uint64_t type metadata accessor for CRLCollaboratorCursor(uint64_t a1)
{
  result = qword_101A11FE0;
  if (!qword_101A11FE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100B42EF0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100B42F38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100B42FC0(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for CRLPersistableSelectionPath(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100B433C0()
{
  v0 = sub_1005F387C();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      type metadata accessor for CRLFreehandDrawingShapeItem(0);
      if (swift_dynamicCastClass())
      {
        v7 = sub_100C34D80();

        if (v7)
        {
          v8 = 0;
          goto LABEL_18;
        }
      }

      else
      {
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:
  v8 = 1;
LABEL_18:

  return v8;
}

uint64_t sub_100B434D0(unint64_t a1)
{
  v1 = a1;
  v54 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_39;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = 0;
    v45 = v1 & 0xC000000000000001;
    v41 = v1 + 32;
    v42 = v1 & 0xFFFFFFFFFFFFFF8;
    v43 = v2;
    v44 = v1;
    while (1)
    {
      if (v45)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v42 + 16))
        {
          goto LABEL_38;
        }

        v5 = *(v41 + 8 * v4);
      }

      v6 = v5;
      v7 = __OFADD__(v4, 1);
      v8 = v4 + 1;
      if (v7)
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        v40 = v1;
        v2 = _CocoaArrayWrapper.endIndex.getter();
        v1 = v40;
        goto LABEL_3;
      }

      v9 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
      v10 = *&v5[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems];
      if (!v10)
      {
        sub_10096C7D4();
        v10 = *&v6[v9];
      }

      if (v10)
      {
        v11 = v10;
      }

      else
      {
        v11 = _swiftEmptyArrayStorage;
      }

      if (v11 >> 62)
      {
        v12 = _CocoaArrayWrapper.endIndex.getter();
        v46 = v6;
        v47 = v8;
        if (!v12)
        {
LABEL_5:

          goto LABEL_6;
        }
      }

      else
      {
        v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v46 = v6;
        v47 = v8;
        if (!v12)
        {
          goto LABEL_5;
        }
      }

      if (v12 < 1)
      {
        goto LABEL_37;
      }

      v13 = v11 & 0xC000000000000001;

      v14 = 0;
      v49 = v12;
      v50 = v11;
      v48 = v11 & 0xC000000000000001;
      do
      {
        if (v13)
        {
          v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v37 = *(v11 + 8 * v14 + 32);
        }

        v36 = v37;
        type metadata accessor for CRLFreehandDrawingShapeItem(0);
        if (swift_dynamicCastClass())
        {
          if ((sub_100C34D80() & 1) == 0)
          {
            v38 = sub_100EAD788();
            if (v38)
            {
              sub_10079AD64(v38);
            }
          }
        }

        else
        {
          v52 = objc_opt_self();
          v15 = [v52 _atomicIncrementAssertCount];
          v53 = [objc_allocWithZone(NSString) init];
          sub_100604538(_swiftEmptyArrayStorage, &v53, "invalid nil found when unwrapping value", 39, 2u);
          StaticString.description.getter("makePKDrawing(from:)", 20, 2);
          v16 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingItem.swift", 93, 2);
          v17 = String._bridgeToObjectiveC()();

          v18 = [v17 lastPathComponent];

          v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v21 = v20;

          if (qword_1019F20A0 != -1)
          {
            swift_once();
          }

          v22 = static OS_os_log.crlAssert;
          sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146CA70;
          *(inited + 56) = &type metadata for Int32;
          *(inited + 64) = &protocol witness table for Int32;
          *(inited + 32) = v15;
          v24 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
          *(inited + 96) = v24;
          v25 = sub_1005CF04C();
          *(inited + 104) = v25;
          *(inited + 72) = v16;
          *(inited + 136) = &type metadata for String;
          v26 = sub_1000053B0();
          *(inited + 112) = v19;
          *(inited + 120) = v21;
          *(inited + 176) = &type metadata for UInt;
          *(inited + 144) = v26;
          *(inited + 152) = 61;
          v27 = v53;
          *(inited + 216) = v24;
          *(inited + 224) = v25;
          *(inited + 184) = &protocol witness table for UInt;
          *(inited + 192) = v27;
          v28 = v16;
          v29 = v27;
          v30 = static os_log_type_t.error.getter();
          sub_100005404(v22, &_mh_execute_header, v30, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
          swift_arrayDestroy();
          v31 = static os_log_type_t.error.getter();
          sub_100005404(v22, &_mh_execute_header, v31, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

          type metadata accessor for __VaListBuilder();
          v32 = swift_allocObject();
          v32[2] = 8;
          v32[3] = 0;
          v32[4] = 0;
          v32[5] = 0;
          v51 = __VaListBuilder.va_list()();
          StaticString.description.getter("makePKDrawing(from:)", 20, 2);
          v33 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingItem.swift", 93, 2);
          v34 = String._bridgeToObjectiveC()();

          StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
          v35 = String._bridgeToObjectiveC()();

          [v52 handleFailureInFunction:v33 file:v34 lineNumber:61 isFatal:0 format:v35 args:v51];

          v36 = v35;
          v12 = v49;
          v11 = v50;
          v13 = v48;
        }

        ++v14;
      }

      while (v12 != v14);
LABEL_6:

      v1 = v44;
      v4 = v47;
      if (v47 == v43)
      {
        v3 = v54;
        break;
      }
    }
  }

  v53 = v3;
  sub_1005B981C(&unk_101A22650, &unk_1014A4D60);
  sub_10001A2F8(&qword_101A12070, &unk_101A22650, &unk_1014A4D60, &protocol conformance descriptor for [A]);
  return PKDrawing.init<A>(strokes:)();
}

id sub_100B43C84(uint64_t a1, uint64_t a2)
{
  v89 = a2;
  v74 = a1;
  v81 = sub_1005B981C(&unk_101A28650, &unk_101477C40);
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v79 = &v73 - v2;
  v3 = type metadata accessor for CRLBoardItemParentAffinity(0);
  __chkstk_darwin(v3 - 8);
  v88 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v5 - 8);
  v75 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v77 = &v73 - v8;
  __chkstk_darwin(v9);
  v73 = &v73 - v10;
  __chkstk_darwin(v11);
  v76 = &v73 - v12;
  __chkstk_darwin(v13);
  v94 = &v73 - v14;
  v90 = (type metadata accessor for CRLContainerItemCRDTData(0) - 8);
  __chkstk_darwin(v90);
  v84 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CRLFreehandDrawingCRDTData(0);
  __chkstk_darwin(v16 - 8);
  v85 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v73 - v19;
  v91 = sub_1005B981C(&unk_101A226A0, &unk_10146E610);
  __chkstk_darwin(v91);
  v87 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v86 = &v73 - v23;
  __chkstk_darwin(v24);
  v26 = &v73 - v25;
  __chkstk_darwin(v27);
  v29 = &v73 - v28;
  v83 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  type metadata accessor for CRLFreehandItemData(0);
  v30 = swift_dynamicCastClassUnconditional();
  v31 = *(*v30 + 736);
  swift_beginAccess();
  sub_10000BE14(v30 + v31, v26, &unk_101A226A0, &unk_10146E610);
  sub_10001A2F8(&qword_101A09E00, &unk_101A226A0, &unk_10146E610, byte_101478D54);
  CRType.copy(renamingReferences:)();
  sub_10000CAAC(v26, &unk_101A226A0, &unk_10146E610);
  v32 = swift_dynamicCastClassUnconditional();
  v33 = qword_101AD9588;
  swift_beginAccess();
  sub_100B47F20(v32 + v33, v20, type metadata accessor for CRLFreehandDrawingCRDTData);
  v34 = v84;
  *&v84[*(v90 + 7)] = _swiftEmptyDictionarySingleton;
  v35 = type metadata accessor for UUID();
  v36 = sub_100B47ED8(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v82 = v35;
  v78 = v36;
  CROrderedSet.init()();
  sub_100B48058(v34, v20);
  v92 = v29;
  sub_10000BE14(v29, v26, &unk_101A226A0, &unk_10146E610);
  v90 = v20;
  v37 = v20;
  v38 = v85;
  sub_100B47F20(v37, v85, type metadata accessor for CRLFreehandDrawingCRDTData);
  v39 = swift_dynamicCastClassUnconditional();
  v40 = *(v39 + 40);
  v98[0] = *(v39 + 24);
  v98[1] = v40;
  v99 = *(v39 + 56);
  v83 = *(swift_dynamicCastClassUnconditional() + 16);
  v41 = swift_allocObject();
  sub_100B47F20(v38, v41 + qword_101AD9588, type metadata accessor for CRLFreehandDrawingCRDTData);
  v42 = v86;
  sub_10000BE14(v26, v86, &unk_101A226A0, &unk_10146E610);
  sub_100B47F20(v38, v34, type metadata accessor for CRLContainerItemCRDTData);
  sub_100B47F20(v34, v41 + qword_101AD8098, type metadata accessor for CRLContainerItemCRDTData);
  v43 = v87;
  sub_10000BE14(v42, v87, &unk_101A226A0, &unk_10146E610);
  sub_10000BE14(v43, v41 + *(*v41 + 736), &unk_101A226A0, &unk_10146E610);
  sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
  CRRegister.wrappedValue.getter();
  sub_10000CAAC(v43, &unk_101A226A0, &unk_10146E610);
  sub_100B47F88(v34, type metadata accessor for CRLContainerItemCRDTData);
  sub_10000CAAC(v42, &unk_101A226A0, &unk_10146E610);
  sub_100B47F88(v38, type metadata accessor for CRLFreehandDrawingCRDTData);
  sub_10000CAAC(v26, &unk_101A226A0, &unk_10146E610);
  v44 = v94;
  v45 = v89;
  v46 = sub_100747AF0(v98, v83);
  v47 = v46 + *(*v46 + 736);
  swift_beginAccess();
  v87 = v47;
  sub_10000BE14(v47, v26, &unk_101A226A0, &unk_10146E610);

  v48 = sub_1005B981C(&qword_101A01F08, &unk_101498A50);
  v49 = v88;
  v86 = v48;
  CRRegister.wrappedValue.getter();
  sub_10000CAAC(v26, &unk_101A226A0, &unk_10146E610);
  sub_10000BE14(v49, v44, &qword_1019F6990, &qword_10146D2F0);
  sub_100B47F88(v49, type metadata accessor for CRLBoardItemParentAffinity);
  if (*(v45 + OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_shouldResetObjectUUIDs) == 1)
  {
    v50 = qword_101AD9588;
    v51 = swift_beginAccess();
    __chkstk_darwin(v51);
    *(&v73 - 2) = v45;
    v52 = v81;
    v53 = v100;
    v54 = CROrderedSet.map<A>(_:)();
    v100 = v53;
    v97 = v54;
    sub_1005B981C(&qword_101A0A360, qword_101489F20);
    sub_10001A2F8(&unk_101A09E20, &qword_101A0A360, qword_101489F20, &protocol conformance descriptor for [A]);
    v55 = v79;
    CROrderedSet.init<A>(_:)();
    v56 = v92;
    (*(v80 + 40))(v46 + v50, v55, v52);
    swift_endAccess();
  }

  else
  {
    v56 = v92;
  }

  v57 = v46;
  v58 = v100;
  sub_100D5EFEC(v45);
  if (v58)
  {

    sub_10000CAAC(v44, &qword_1019F6990, &qword_10146D2F0);
    sub_10000CAAC(v56, &unk_101A226A0, &unk_10146E610);
    sub_100B47F88(v90, type metadata accessor for CRLFreehandDrawingCRDTData);
  }

  else
  {
    v59 = v73;
    sub_10000BE14(v74, v73, &qword_1019F6990, &qword_10146D2F0);
    v60 = v82;
    v61 = *(v82 - 8);
    v62 = *(v61 + 48);
    if (v62(v59, 1, v82) == 1)
    {
      v63 = v76;
      sub_10000BE14(v94, v76, &qword_1019F6990, &qword_10146D2F0);
      if (v62(v59, 1, v60) != 1)
      {
        sub_10000CAAC(v59, &qword_1019F6990, &qword_10146D2F0);
      }
    }

    else
    {
      v63 = v76;
      (*(v61 + 32))(v76, v59, v60);
      (*(v61 + 56))(v63, 0, 1, v60);
    }

    v64 = v77;
    sub_10000BE14(v63, v77, &qword_1019F6990, &qword_10146D2F0);
    swift_beginAccess();
    v65 = v75;
    sub_10000BE14(v64, v75, &qword_1019F6990, &qword_10146D2F0);
    v66 = CRRegister.wrappedValue.modify();
    sub_10002C638(v65, v67, &qword_1019F6990, &qword_10146D2F0);
    v66(v96, 0);
    sub_10000CAAC(v64, &qword_1019F6990, &qword_10146D2F0);
    swift_endAccess();

    sub_10000CAAC(v63, &qword_1019F6990, &qword_10146D2F0);
    v68 = *(v93 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
    v69 = objc_allocWithZone(type metadata accessor for CRLFreehandDrawingItem(0));
    *&v69[OBJC_IVAR____TtC8Freeform16CRLContainerItem_items] = _swiftEmptyDictionarySingleton;
    *&v69[OBJC_IVAR____TtC8Freeform16CRLContainerItem_timeStamp] = 0;
    *&v69[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems] = 0;
    *&v69[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs] = 0;
    *&v69[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedUnorderedItemUUIDs] = 0;
    *&v69[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v68;
    *&v69[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v46;
    v70 = type metadata accessor for CRLBoardItemBase(0);
    v95.receiver = v69;
    v95.super_class = v70;
    v71 = v68;
    v57 = objc_msgSendSuper2(&v95, "init");

    sub_10000CAAC(v94, &qword_1019F6990, &qword_10146D2F0);
    sub_10000CAAC(v92, &unk_101A226A0, &unk_10146E610);
    sub_100B47F88(v90, type metadata accessor for CRLFreehandDrawingCRDTData);
  }

  return v57;
}

id sub_100B44CB8()
{
  v1 = v0;
  type metadata accessor for CRLFreehandItemData(0);
  swift_dynamicCastClassUnconditional();

  v2 = sub_10127B4B8(0);

  v3 = *(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
  v4 = objc_allocWithZone(type metadata accessor for CRLFreehandDrawingItem(0));
  *&v4[OBJC_IVAR____TtC8Freeform16CRLContainerItem_items] = _swiftEmptyDictionarySingleton;
  *&v4[OBJC_IVAR____TtC8Freeform16CRLContainerItem_timeStamp] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedUnorderedItemUUIDs] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v3;
  *&v4[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v2;
  v7.receiver = v4;
  v7.super_class = type metadata accessor for CRLBoardItemBase(0);
  v5 = v3;
  return objc_msgSendSuper2(&v7, "init");
}

uint64_t sub_100B44DE8(uint64_t a1)
{
  type metadata accessor for CRLFreehandDrawingItem(0);
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
    swift_unknownObjectRetain();
    v5 = sub_1011ED89C(v3, v1, v4);
    swift_unknownObjectRelease();
    return v5;
  }

  else
  {
    v7 = objc_opt_self();
    v8 = [v7 _atomicIncrementAssertCount];
    v32 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v32, "Tried to generate undo from mismatched type", 43, 2u);
    StaticString.description.getter("createUndoingMutations(fromSnapshot:)", 37, 2);
    v9 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingItem.swift", 93, 2);
    v10 = String._bridgeToObjectiveC()();

    v11 = [v10 lastPathComponent];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v15 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v8;
    v17 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v17;
    v18 = sub_1005CF04C();
    *(inited + 104) = v18;
    *(inited + 72) = v9;
    *(inited + 136) = &type metadata for String;
    v19 = sub_1000053B0();
    *(inited + 112) = v12;
    *(inited + 120) = v14;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v19;
    *(inited + 152) = 153;
    v20 = v32;
    *(inited + 216) = v17;
    *(inited + 224) = v18;
    *(inited + 192) = v20;
    v21 = v9;
    v22 = v20;
    v23 = static os_log_type_t.error.getter();
    sub_100005404(v15, &_mh_execute_header, v23, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

    v24 = static os_log_type_t.error.getter();
    sub_100005404(v15, &_mh_execute_header, v24, "Tried to generate undo from mismatched type", 43, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Tried to generate undo from mismatched type");
    type metadata accessor for __VaListBuilder();
    v25 = swift_allocObject();
    v25[2] = 8;
    v25[3] = 0;
    v25[4] = 0;
    v25[5] = 0;
    v26 = __VaListBuilder.va_list()();
    StaticString.description.getter("createUndoingMutations(fromSnapshot:)", 37, 2);
    v27 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingItem.swift", 93, 2);
    v28 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Tried to generate undo from mismatched type", 43, 2);
    v29 = String._bridgeToObjectiveC()();

    [v7 handleFailureInFunction:v27 file:v28 lineNumber:153 isFatal:1 format:v29 args:v26];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v30, v31);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void *sub_100B451E4(uint64_t a1)
{
  v2 = v1;
  v104 = sub_1005B981C(&qword_101A12058, &qword_101498A30);
  v101 = *(v104 - 8);
  __chkstk_darwin(v104);
  v97 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v96 = &v95 - v6;
  __chkstk_darwin(v7);
  v98 = &v95 - v8;
  v99 = type metadata accessor for CRLFreehandDrawingCRDTData(0);
  __chkstk_darwin(v99);
  v10 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v95 - v12;
  v14 = sub_1005B981C(&qword_101A12060, &qword_101498A38);
  __chkstk_darwin(v14 - 8);
  v100 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = (&v95 - v17);
  type metadata accessor for CRLFreehandDrawingItem(0);
  v19 = swift_dynamicCastClass();
  if (v19)
  {
    v20 = v19;
    v102 = a1;
    swift_unknownObjectRetain();
    v103 = sub_1011EDC20(v20, v2, v21);
    type metadata accessor for CRLFreehandItemData(0);
    v22 = swift_dynamicCastClassUnconditional();
    v23 = qword_101AD9588;
    swift_beginAccess();
    sub_100B47F20(v22 + v23, v13, type metadata accessor for CRLFreehandDrawingCRDTData);
    v24 = swift_dynamicCastClassUnconditional();
    v25 = qword_101AD9588;
    swift_beginAccess();
    sub_100B47F20(v24 + v25, v10, type metadata accessor for CRLFreehandDrawingCRDTData);
    sub_100B47ED8(&qword_101A12068, type metadata accessor for CRLFreehandDrawingCRDTData, byte_1014D81F0);
    CRType.observableDifference(from:)();
    sub_100B47F88(v10, type metadata accessor for CRLFreehandDrawingCRDTData);
    sub_100B47F88(v13, type metadata accessor for CRLFreehandDrawingCRDTData);
    v26 = v100;
    sub_10000BE14(v18, v100, &qword_101A12060, &qword_101498A38);
    v27 = v104;
    if (v101[6](v26, 1, v104) == 1)
    {
      sub_10000CAAC(v26, &qword_101A12060, &qword_101498A38);
      v28 = _swiftEmptyArrayStorage;
      v29 = v103;
LABEL_21:
      if (*(v28 + 2))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v105 = v29;
        sub_100A9B080(v28, 9, isUniquelyReferenced_nonNull_native);
        swift_unknownObjectRelease();
        v29 = v105;
        sub_10000CAAC(v18, &qword_101A12060, &qword_101498A38);
      }

      else
      {
        sub_10000CAAC(v18, &qword_101A12060, &qword_101498A38);

        swift_unknownObjectRelease();
      }

      return v29;
    }

    v30 = v98;
    sub_100B47FE8(v26, v98);
    v31 = v96;
    sub_10000BE14(v30, v96, &qword_101A12058, &qword_101498A30);
    v32 = *(v27 + 48);
    v33 = *(v27 + 64);
    v34 = sub_1005B981C(&unk_101A09E40, &unk_1014897B0);
    if ((*(*(v34 - 8) + 48))(v31, 1, v34) == 1)
    {
      sub_10000CAAC(v31 + v33, &qword_101A01F00, &unk_101492AB0);
      sub_10000CAAC(v31 + v32, &qword_101A01F00, &unk_101492AB0);
      sub_10000CAAC(v31, &qword_101A2C960, &unk_101498A40);
      v28 = _swiftEmptyArrayStorage;
      v29 = v103;
    }

    else
    {
      sub_10000CAAC(v31, &qword_101A2C960, &unk_101498A40);
      sub_10000CAAC(v31 + v33, &qword_101A01F00, &unk_101492AB0);
      sub_10000CAAC(v31 + v32, &qword_101A01F00, &unk_101492AB0);
      v28 = sub_100024CBC(0, 1, 1, _swiftEmptyArrayStorage);
      v36 = *(v28 + 2);
      v35 = *(v28 + 3);
      v29 = v103;
      v37 = v97;
      if (v36 >= v35 >> 1)
      {
        v28 = sub_100024CBC((v35 > 1), v36 + 1, 1, v28);
      }

      *(v28 + 2) = v36 + 1;
      v38 = &v28[16 * v36];
      *(v38 + 4) = 0xD000000000000011;
      *(v38 + 5) = 0x800000010158B630;
      if (v29[2])
      {
        sub_1007C8124(1);
        if (v39)
        {
          goto LABEL_14;
        }
      }

      v101 = v18;
      v100 = objc_opt_self();
      v40 = [v100 _atomicIncrementAssertCount];
      v105 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v105, "if the containerCRDTData has changed, super should have built keys for it already", 81, 2u);
      StaticString.description.getter("createSpecificDataObservableDeltas(fromSnapshot:)", 49, 2);
      v41 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingItem.swift", 93, 2);
      v42 = String._bridgeToObjectiveC()();

      v43 = [v42 lastPathComponent];

      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v47 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v40;
      v49 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(inited + 96) = v49;
      v50 = sub_1005CF04C();
      *(inited + 104) = v50;
      *(inited + 72) = v41;
      *(inited + 136) = &type metadata for String;
      v51 = sub_1000053B0();
      *(inited + 112) = v44;
      *(inited + 120) = v46;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v51;
      *(inited + 152) = 181;
      v52 = v105;
      *(inited + 216) = v49;
      *(inited + 224) = v50;
      *(inited + 192) = v52;
      v53 = v41;
      v54 = v52;
      v55 = static os_log_type_t.error.getter();
      sub_100005404(v47, &_mh_execute_header, v55, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v56 = static os_log_type_t.error.getter();
      sub_100005404(v47, &_mh_execute_header, v56, "if the containerCRDTData has changed, super should have built keys for it already", 81, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v57 = swift_allocObject();
      v57[2] = 8;
      v57[3] = 0;
      v57[4] = 0;
      v57[5] = 0;
      v58 = __VaListBuilder.va_list()();
      StaticString.description.getter("createSpecificDataObservableDeltas(fromSnapshot:)", 49, 2);
      v59 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingItem.swift", 93, 2);
      v60 = String._bridgeToObjectiveC()();

      StaticString.description.getter("if the containerCRDTData has changed, super should have built keys for it already", 81, 2);
      v61 = String._bridgeToObjectiveC()();

      [v100 handleFailureInFunction:v59 file:v60 lineNumber:181 isFatal:0 format:v61 args:v58];

      v18 = v101;
      v29 = v103;
      v30 = v98;
    }

    v37 = v97;
LABEL_14:
    sub_10000BE14(v30, v37, &qword_101A12058, &qword_101498A30);
    v62 = *(v104 + 48);
    v63 = *(v104 + 64);
    v64 = type metadata accessor for CRValueObservableDifference();
    if ((*(*(v64 - 8) + 48))(v37 + v62, 1, v64) == 1)
    {
      sub_10000CAAC(v30, &qword_101A12058, &qword_101498A30);
      sub_10000CAAC(v37 + v63, &qword_101A01F00, &unk_101492AB0);
      sub_10000CAAC(v37 + v62, &qword_101A01F00, &unk_101492AB0);
      sub_10000CAAC(v37, &qword_101A2C960, &unk_101498A40);
    }

    else
    {
      sub_10000CAAC(v37 + v62, &qword_101A01F00, &unk_101492AB0);
      sub_10000CAAC(v37 + v63, &qword_101A01F00, &unk_101492AB0);
      sub_10000CAAC(v37, &qword_101A2C960, &unk_101498A40);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_100024CBC(0, *(v28 + 2) + 1, 1, v28);
      }

      v66 = *(v28 + 2);
      v65 = *(v28 + 3);
      if (v66 >= v65 >> 1)
      {
        v28 = sub_100024CBC((v65 > 1), v66 + 1, 1, v28);
      }

      sub_10000CAAC(v30, &qword_101A12058, &qword_101498A30);
      *(v28 + 2) = v66 + 1;
      v67 = &v28[16 * v66];
      *(v67 + 4) = 0xD000000000000013;
      *(v67 + 5) = 0x800000010156DCD0;
    }

    goto LABEL_21;
  }

  v70 = objc_opt_self();
  v71 = [v70 _atomicIncrementAssertCount];
  v106 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v106, "Tried to create observable deltas from mismatched type", 54, 2u);
  StaticString.description.getter("createSpecificDataObservableDeltas(fromSnapshot:)", 49, 2);
  v72 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingItem.swift", 93, 2);
  v73 = String._bridgeToObjectiveC()();

  v74 = [v73 lastPathComponent];

  v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v77 = v76;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v78 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v79 = swift_initStackObject();
  *(v79 + 16) = xmmword_10146CA70;
  *(v79 + 56) = &type metadata for Int32;
  *(v79 + 64) = &protocol witness table for Int32;
  *(v79 + 32) = v71;
  v80 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(v79 + 96) = v80;
  v81 = sub_1005CF04C();
  *(v79 + 104) = v81;
  *(v79 + 72) = v72;
  *(v79 + 136) = &type metadata for String;
  v82 = sub_1000053B0();
  *(v79 + 112) = v75;
  *(v79 + 120) = v77;
  *(v79 + 176) = &type metadata for UInt;
  *(v79 + 184) = &protocol witness table for UInt;
  *(v79 + 144) = v82;
  *(v79 + 152) = 171;
  v83 = v106;
  *(v79 + 216) = v80;
  *(v79 + 224) = v81;
  *(v79 + 192) = v83;
  v84 = v72;
  v85 = v83;
  v86 = static os_log_type_t.error.getter();
  sub_100005404(v78, &_mh_execute_header, v86, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v79);

  v87 = static os_log_type_t.error.getter();
  sub_100005404(v78, &_mh_execute_header, v87, "Tried to create observable deltas from mismatched type", 54, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Tried to create observable deltas from mismatched type");
  type metadata accessor for __VaListBuilder();
  v88 = swift_allocObject();
  v88[2] = 8;
  v88[3] = 0;
  v88[4] = 0;
  v88[5] = 0;
  v89 = __VaListBuilder.va_list()();
  StaticString.description.getter("createSpecificDataObservableDeltas(fromSnapshot:)", 49, 2);
  v90 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingItem.swift", 93, 2);
  v91 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Tried to create observable deltas from mismatched type", 54, 2);
  v92 = String._bridgeToObjectiveC()();

  [v70 handleFailureInFunction:v90 file:v91 lineNumber:171 isFatal:1 format:v92 args:v89];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v93, v94);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_100B460B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v95 = a1;
  v91 = type metadata accessor for CRLFreehandDrawingCRDTData(0);
  __chkstk_darwin(v91);
  v90 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 == 9)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      v82 = v95;

      sub_10096B6D8(v82, a2, a3, a4, a5);
      return;
    }
  }

  v11 = v89;
  v12 = v95;
  v97 = *(a2 + 16);
  if (!v97)
  {
    return;
  }

  v13 = 0;
  v94 = a2 + 32;
  v14 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
  v98 = 0x800000010158B630;
  v92 = 0x800000010156DCD0;
  v84 = xmmword_10146C6B0;
  v83 = xmmword_10146CA70;
  while (1)
  {
    v15 = (v94 + 16 * v13);
    v17 = *v15;
    v16 = v15[1];
    v18 = *v15 == 0xD000000000000011 && v98 == v16;
    if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v37 = v17 == 0xD000000000000013 && v92 == v16;
    if (!v37 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v86 = sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = v84;
      *(inited + 56) = &type metadata for String;
      v43 = sub_1000053B0();
      *(inited + 32) = v17;
      v96 = inited + 32;
      v93 = v43;
      *(inited + 64) = v43;
      *(inited + 40) = v16;
      v44 = objc_opt_self();

      v85 = v44;
      LODWORD(v88) = [v44 _atomicIncrementAssertCount];
      v101[0] = [objc_allocWithZone(NSString) init];
      StaticString.description.getter("populatePropertyMap(_:observedDifferenceLabels:withPropertyKey:snapshot:)", 73, 2);
      v87 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingItem.swift", 93, 2);
      v45 = String._bridgeToObjectiveC()();

      v46 = [v45 lastPathComponent];

      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v50 = static OS_os_log.crlAssert;
      v51 = swift_initStackObject();
      *(v51 + 16) = v83;
      *(v51 + 56) = &type metadata for Int32;
      *(v51 + 64) = &protocol witness table for Int32;
      *(v51 + 32) = v88;
      v52 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(v51 + 96) = v52;
      v53 = sub_1005CF04C();
      v54 = v87;
      *(v51 + 72) = v87;
      v55 = v93;
      *(v51 + 136) = &type metadata for String;
      *(v51 + 144) = v55;
      *(v51 + 104) = v53;
      *(v51 + 112) = v47;
      *(v51 + 120) = v49;
      *(v51 + 176) = &type metadata for UInt;
      *(v51 + 152) = 217;
      v56 = v101[0];
      *(v51 + 216) = v52;
      *(v51 + 224) = v53;
      *(v51 + 184) = &protocol witness table for UInt;
      *(v51 + 192) = v56;
      v57 = v54;
      v58 = v56;
      v59 = static os_log_type_t.error.getter();
      sub_100005404(v50, &_mh_execute_header, v59, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v51);
      swift_setDeallocating();
      v87 = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v60 = static os_log_type_t.error.getter();

      type metadata accessor for __VaListBuilder();
      v61 = swift_allocObject();
      v61[2] = 8;
      v61[3] = 0;
      v62 = v61 + 3;
      v61[4] = 0;
      v61[5] = 0;
      v88 = inited;
      v93 = *(inited + 16);
      if (!v93)
      {
LABEL_61:
        v77 = __VaListBuilder.va_list()();
        StaticString.description.getter("populatePropertyMap(_:observedDifferenceLabels:withPropertyKey:snapshot:)", 73, 2);
        v78 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingItem.swift", 93, 2);
        v79 = String._bridgeToObjectiveC()();

        v80 = String._bridgeToObjectiveC()();

        [v85 handleFailureInFunction:v78 file:v79 lineNumber:217 isFatal:0 format:v80 args:v77];

        swift_setDeallocating();
        swift_arrayDestroy();
        v11 = v89;
        v12 = v95;
        goto LABEL_33;
      }

      v63 = 0;
      while (2)
      {
        sub_100020E58((v96 + 40 * v63), *(v96 + 40 * v63 + 24));
        v64 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v65 = *v62;
        v66 = *(v64 + 16);
        v28 = __OFADD__(*v62, v66);
        v67 = *v62 + v66;
        if (v28)
        {
LABEL_68:
          __break(1u);
          goto LABEL_69;
        }

        v68 = v64;
        v69 = v61[4];
        if (v69 >= v67)
        {
LABEL_54:
          v71 = v61[5];
        }

        else
        {
          if (v69 + 0x4000000000000000 < 0)
          {
            goto LABEL_70;
          }

          v70 = v61[5];
          if (2 * v69 > v67)
          {
            v67 = 2 * v69;
          }

          v61[4] = v67;
          if ((v67 - 0x1000000000000000) >> 61 != 7)
          {
            goto LABEL_71;
          }

          v71 = swift_slowAlloc();
          v61[5] = v71;
          if (v70)
          {
            if (v71 != v70 || v71 >= &v70[8 * v65])
            {
              memmove(v71, v70, 8 * v65);
            }

            __VaListBuilder.deallocStorage(wordCount:storage:)();
            goto LABEL_54;
          }
        }

        if (!v71)
        {
          goto LABEL_73;
        }

        v73 = *(v68 + 16);
        if (v73)
        {
          v74 = (v68 + 32);
          v75 = *v62;
          while (1)
          {
            v76 = *v74++;
            *&v71[8 * v75] = v76;
            v75 = *v62 + 1;
            if (__OFADD__(*v62, 1))
            {
              break;
            }

            *v62 = v75;
            if (!--v73)
            {
              goto LABEL_39;
            }
          }

          __break(1u);
          goto LABEL_68;
        }

LABEL_39:

        if (++v63 == v93)
        {
          goto LABEL_61;
        }

        continue;
      }
    }

    type metadata accessor for CRLFreehandItemData(0);
    v38 = swift_dynamicCastClassUnconditional();
    v39 = qword_101AD9588;
    swift_beginAccess();
    v40 = v38 + v39;
    v41 = v90;
    sub_100B47F20(v40, v90, type metadata accessor for CRLFreehandDrawingCRDTData);
    sub_1005B981C(&qword_101A2C810, &unk_101480B50);
    CRRegister.wrappedValue.getter();
    sub_100B47F88(v41, type metadata accessor for CRLFreehandDrawingCRDTData);
    v102 = &type metadata for Bool;
    sub_10000BE14(v101, v100, &unk_1019F4D00, &unk_10146E7F0);
    swift_beginAccess();
    sub_100BC1F00(v100, 28);
    swift_endAccess();
LABEL_32:
    sub_10000CAAC(v101, &unk_1019F4D00, &unk_10146E7F0);
LABEL_33:
    if (++v13 == v97)
    {
      return;
    }
  }

  v19 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs;
  v20 = *(v11 + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs);
  if (!v20)
  {
    sub_10096C7D4();
    v20 = *(v11 + v19);
  }

  if (v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = _swiftEmptyArrayStorage;
  }

  v102 = sub_1005B981C(&qword_101A0A360, qword_101489F20);
  v101[0] = v21;
  swift_beginAccess();
  sub_10000BE14(v101, v100, &unk_1019F4D00, &unk_10146E7F0);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v99 = *(v12 + v14);
  v23 = v99;
  *(v12 + v14) = 0x8000000000000000;
  v24 = sub_1007CF108();
  v26 = v23[2];
  v27 = (v25 & 1) == 0;
  v28 = __OFADD__(v26, v27);
  v29 = v26 + v27;
  if (!v28)
  {
    v30 = v25;
    if (v23[3] >= v29)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v81 = v24;
        sub_100AA3EA4();
        v24 = v81;
      }
    }

    else
    {
      sub_100A890C0(v29, isUniquelyReferenced_nonNull_native);
      v24 = sub_1007CF108();
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_74;
      }
    }

    v32 = v99;
    if (v30)
    {
      sub_10002C638(v100, v99[7] + 32 * v24, &unk_1019F4D00, &unk_10146E7F0);
    }

    else
    {
      v99[(v24 >> 6) + 8] |= 1 << v24;
      *(v32[6] + 8 * v24) = 4;
      v33 = v32[7] + 32 * v24;
      v34 = v100[1];
      *v33 = v100[0];
      *(v33 + 16) = v34;
      v35 = v32[2];
      v28 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v28)
      {
        goto LABEL_72;
      }

      v32[2] = v36;
    }

    v12 = v95;
    *(v95 + v14) = v32;
    swift_endAccess();
    goto LABEL_32;
  }

LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  type metadata accessor for CRLChangeProperty(0);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

id sub_100B46C88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLFreehandDrawingItem(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLFreehandDrawingItem(uint64_t a1)
{
  result = qword_101A12048;
  if (!qword_101A12048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100B46D4C(uint64_t a1, uint64_t a2, void *a3)
{
  v96 = a1;
  v88 = type metadata accessor for CRLContainerItemCRDTData(0);
  __chkstk_darwin(v88);
  v94 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for CRLFreehandDrawingCRDTData(0);
  __chkstk_darwin(v89);
  v93 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v95 = &v70 - v8;
  v9 = sub_1005B981C(&unk_101A09DC0, &unk_101489790);
  v86 = *(v9 - 8);
  v87 = v9;
  __chkstk_darwin(v9);
  v84 = &v70 - v10;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v79 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v81 = (&v70 - v15);
  v80 = sub_1005B981C(&unk_101A226A0, &unk_10146E610);
  __chkstk_darwin(v80);
  v90 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v91 = &v70 - v18;
  __chkstk_darwin(v19);
  v98 = &v70 - v20;
  __chkstk_darwin(v21);
  v92 = &v70 - v22;
  v23 = sub_1005B981C(&unk_101A09DD0, &unk_101478C10);
  __chkstk_darwin(v23 - 8);
  v75 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v70 - v26;
  v28 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v28 - 8);
  v72 = &v70 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v70 - v31;
  v77 = type metadata accessor for CRLBoardItemParentAffinity(0);
  __chkstk_darwin(v77);
  v76 = &v70 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v78 = &v70 - v35;
  v37 = __chkstk_darwin(v36);
  v97 = &v70 - v38;
  v85 = a3;
  if (a3)
  {
    v39 = a3;
  }

  else
  {
    v39 = [objc_allocWithZone(CRLCanvasInfoGeometry) init];
  }

  v40 = *(v12 + 16);
  v73 = v12 + 16;
  v74 = v40;
  (v40)(v32, a2, v11, v37);
  v100 = v12;
  v41 = *(v12 + 56);
  v70 = v32;
  v41(v32, 0, 1, v11);
  v110 = 1;
  v42 = type metadata accessor for CRLTableAnchorHint(0);
  v71 = *(*(v42 - 8) + 56);
  v71(v27, 1, 1, v42);
  v85 = v85;
  v43 = v39;
  v82 = v43;
  sub_101271CCC(v43, v119);

  v83 = a2;
  v99 = v11;
  v44 = v72;
  sub_10000BE14(v32, v72, &qword_1019F6990, &qword_10146D2F0);
  v45 = v75;
  sub_10000BE14(v27, v75, &unk_101A09DD0, &unk_101478C10);
  v46 = v97;
  v41(v97, 1, 1, v11);
  v47 = v77;
  v48 = *(v77 + 28);
  v49 = v46 + *(v77 + 24);
  v71((v46 + v48), 1, 1, v42);
  *(v46 + *(v47 + 32)) = _swiftEmptyDictionarySingleton;
  sub_10002C638(v44, v46, &qword_1019F6990, &qword_10146D2F0);
  sub_10000CAAC(v27, &unk_101A09DD0, &unk_101478C10);
  sub_10000CAAC(v70, &qword_1019F6990, &qword_10146D2F0);
  v50 = (v46 + *(v47 + 20));
  v51 = v119[1];
  *v50 = v119[0];
  v50[1] = v51;
  *v49 = 0u;
  *(v49 + 16) = 0u;
  *(v49 + 32) = 0u;
  *(v49 + 48) = 0u;
  *(v49 + 64) = v110;
  sub_10002C638(v45, v46 + v48, &unk_101A09DD0, &unk_101478C10);
  v52 = v78;
  sub_100B47F20(v46, v78, type metadata accessor for CRLBoardItemParentAffinity);
  sub_1005D0C00(&v111);
  v53 = v81;
  UUID.init()();
  v54 = v80;
  v75 = *(v80 + 52);
  v106 = v115;
  v107 = v116;
  v108 = v117;
  v109 = v118;
  v102 = v111;
  v103 = v112;
  v104 = v113;
  v105 = v114;
  v72 = sub_1005B981C(&unk_101A09DE0, &qword_1014897A0);
  sub_1007492B8();
  v55 = v92;
  CRRegister.init(wrappedValue:)();
  *(v55 + *(v54 + 56)) = _swiftEmptyDictionarySingleton;
  v74(v79, v53, v99);
  CRRegister.init(_:)();
  sub_100B47F20(v52, v76, type metadata accessor for CRLBoardItemParentAffinity);
  sub_100B47ED8(&unk_101A226B0, type metadata accessor for CRLBoardItemParentAffinity, aM_15);
  CRRegister.init(_:)();
  LOBYTE(v102) = 0;
  CRRegister.init(_:)();
  LOBYTE(v102) = 0;
  CRRegister.init(_:)();
  *&v102 = 0;
  *(&v102 + 1) = 0xE000000000000000;
  CRRegister.init(_:)();
  v106 = v115;
  v107 = v116;
  v108 = v117;
  v109 = v118;
  v102 = v111;
  v103 = v112;
  v104 = v113;
  v105 = v114;
  v56 = v84;
  CRRegister.init(_:)();
  v57 = *(v100 + 8);
  v100 += 8;
  v80 = v57;
  v57(v53, v99);
  v81 = type metadata accessor for CRLBoardItemParentAffinity;
  sub_100B47F88(v52, type metadata accessor for CRLBoardItemParentAffinity);
  (*(v86 + 40))(v55 + v75, v56, v87);
  v58 = v95;
  *&v95[*(v89 + 28)] = _swiftEmptyDictionarySingleton;
  *(v58 + *(v88 + 20)) = _swiftEmptyDictionarySingleton;
  sub_100B47ED8(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  CROrderedSet.init()();
  LOBYTE(v102) = 0;
  CRRegister.init(wrappedValue:)();
  LOBYTE(v102) = 0;
  CRRegister.init(wrappedValue:)();
  v59 = v98;
  sub_10000BE14(v55, v98, &unk_101A226A0, &unk_10146E610);
  v60 = v93;
  sub_100B47F20(v58, v93, type metadata accessor for CRLFreehandDrawingCRDTData);
  *&v102 = 0x1000000000000;
  *(&v102 + 1) = 0x2000400000000;
  v103 = 0x1000000000000uLL;
  LOBYTE(v104) = 1;
  type metadata accessor for CRLFreehandItemData(0);
  v61 = swift_allocObject();
  sub_100B47F20(v60, v61 + qword_101AD9588, type metadata accessor for CRLFreehandDrawingCRDTData);
  v62 = v91;
  sub_10000BE14(v59, v91, &unk_101A226A0, &unk_10146E610);
  v63 = v94;
  sub_100B47F20(v60, v94, type metadata accessor for CRLContainerItemCRDTData);
  sub_100B47F20(v63, v61 + qword_101AD8098, type metadata accessor for CRLContainerItemCRDTData);
  v64 = v90;
  sub_10000BE14(v62, v90, &unk_101A226A0, &unk_10146E610);
  sub_10000BE14(v64, v61 + *(*v61 + 736), &unk_101A226A0, &unk_10146E610);
  sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
  CRRegister.wrappedValue.getter();
  sub_10000CAAC(v64, &unk_101A226A0, &unk_10146E610);
  sub_100B47F88(v63, type metadata accessor for CRLContainerItemCRDTData);
  sub_10000CAAC(v62, &unk_101A226A0, &unk_10146E610);
  sub_100B47F88(v60, type metadata accessor for CRLFreehandDrawingCRDTData);
  sub_10000CAAC(v98, &unk_101A226A0, &unk_10146E610);
  v65 = sub_100747AF0(&v102, 4);
  v66 = objc_allocWithZone(type metadata accessor for CRLFreehandDrawingItem(0));
  *&v66[OBJC_IVAR____TtC8Freeform16CRLContainerItem_items] = _swiftEmptyDictionarySingleton;
  *&v66[OBJC_IVAR____TtC8Freeform16CRLContainerItem_timeStamp] = 0;
  *&v66[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems] = 0;
  *&v66[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs] = 0;
  *&v66[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedUnorderedItemUUIDs] = 0;
  *&v66[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v96;
  *&v66[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v65;
  v67 = type metadata accessor for CRLBoardItemBase(0);
  v101.receiver = v66;
  v101.super_class = v67;
  v68 = objc_msgSendSuper2(&v101, "init");

  (v80)(v83, v99);
  sub_100B47F88(v58, type metadata accessor for CRLFreehandDrawingCRDTData);
  sub_100B47F88(v97, v81);
  sub_10000CAAC(v55, &unk_101A226A0, &unk_10146E610);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v68;
}

uint64_t sub_100B47B18(void *a1)
{
  type metadata accessor for CRLFreehandDrawingShapeItem(0);
  if (([a1 isKindOfClass:swift_getObjCClassFromMetadata()] & 1) == 0)
  {
    v2 = objc_opt_self();
    v3 = [v2 _atomicIncrementAssertCount];
    v26 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v26, "All items inserted into a freehand drawing should be freehand drawing shapes.", 77, 2u);
    StaticString.description.getter("isItemAllowed(_:)", 17, 2);
    v4 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingItem.swift", 93, 2);
    v5 = String._bridgeToObjectiveC()();

    v6 = [v5 lastPathComponent];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v3;
    v12 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v12;
    v13 = sub_1005CF04C();
    *(inited + 104) = v13;
    *(inited + 72) = v4;
    *(inited + 136) = &type metadata for String;
    v14 = sub_1000053B0();
    *(inited + 112) = v7;
    *(inited + 120) = v9;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v14;
    *(inited + 152) = 132;
    v15 = v26;
    *(inited + 216) = v12;
    *(inited + 224) = v13;
    *(inited + 192) = v15;
    v16 = v4;
    v17 = v15;
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v19, "All items inserted into a freehand drawing should be freehand drawing shapes.", 77, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v20 = swift_allocObject();
    v20[2] = 8;
    v20[3] = 0;
    v20[4] = 0;
    v20[5] = 0;
    v21 = __VaListBuilder.va_list()();
    StaticString.description.getter("isItemAllowed(_:)", 17, 2);
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingItem.swift", 93, 2);
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter("All items inserted into a freehand drawing should be freehand drawing shapes.", 77, 2);
    v24 = String._bridgeToObjectiveC()();

    [v2 handleFailureInFunction:v22 file:v23 lineNumber:132 isFatal:0 format:v24 args:v21];
  }

  return 1;
}

uint64_t sub_100B47ED8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100B47F20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100B47F88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100B47FE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A12058, &qword_101498A30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100B48058(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLContainerItemCRDTData(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100B480BC(void *a1, void *a2)
{
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10146E8B0;
  v6 = [a1 topAnchor];
  v7 = [a2 topAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];

  *(v5 + 32) = v8;
  v9 = [a1 bottomAnchor];
  v10 = [a2 bottomAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];

  *(v5 + 40) = v11;
  v12 = [a1 leadingAnchor];
  v13 = [a2 leadingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  *(v5 + 48) = v14;
  v15 = [a1 trailingAnchor];
  v16 = [a2 trailingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];

  *(v5 + 56) = v17;
  sub_100006370(0, &qword_1019F4D70, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 activateConstraints:isa];
}

void *sub_100B48314(float a1)
{
  v2 = v1;
  if (a1 == 1000.0)
  {
    v3 = objc_opt_self();
    v4 = [v3 _atomicIncrementAssertCount];
    v29 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v29, "Resetting a constraint to .required is not supported.", 53, 2u);
    StaticString.description.getter("crl_deprioritize(_:)", 20, 2);
    v5 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/Extensions/NSLayoutConstraint_Extensions.swift", 116, 2);
    v6 = String._bridgeToObjectiveC()();

    v7 = [v6 lastPathComponent];

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v11 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v4;
    v13 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v13;
    v14 = sub_1005CF04C();
    *(inited + 104) = v14;
    *(inited + 72) = v5;
    *(inited + 136) = &type metadata for String;
    v15 = sub_1000053B0();
    *(inited + 112) = v8;
    *(inited + 120) = v10;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v15;
    *(inited + 152) = 43;
    v16 = v29;
    *(inited + 216) = v13;
    *(inited + 224) = v14;
    *(inited + 192) = v16;
    v17 = v5;
    v18 = v16;
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v11, &_mh_execute_header, v19, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v11, &_mh_execute_header, v20, "Resetting a constraint to .required is not supported.", 53, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v21 = swift_allocObject();
    v21[2] = 8;
    v21[3] = 0;
    v21[4] = 0;
    v21[5] = 0;
    v22 = __VaListBuilder.va_list()();
    StaticString.description.getter("crl_deprioritize(_:)", 20, 2);
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/Extensions/NSLayoutConstraint_Extensions.swift", 116, 2);
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Resetting a constraint to .required is not supported.", 53, 2);
    v25 = String._bridgeToObjectiveC()();

    [v3 handleFailureInFunction:v23 file:v24 lineNumber:43 isFatal:0 format:v25 args:v22];
  }

  else
  {
    [v1 priority];
    if (*&v27 != a1)
    {
      *&v27 = a1;
      [v1 setPriority:v27];
    }
  }

  return v2;
}

id sub_100B486FC(unsigned __int8 a1)
{
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a1 <= 2u)
  {
    if (a1 <= 1u)
    {
      goto LABEL_7;
    }

    if (qword_1019F2098 != -1)
    {
      swift_once();
    }

    v29 = static OS_os_log.crlDefault;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    LOBYTE(v45) = 2;
    v31 = String.init<A>(describing:)();
    v33 = v32;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v31;
    v34 = (inited + 32);
    *(inited + 40) = v33;
    v35 = static os_log_type_t.error.getter();
    v36 = "Invalid URL detected.: %@";
    v37 = v29;
    v38 = 25;
    goto LABEL_14;
  }

  if (a1 == 3)
  {
LABEL_7:
    v7 = [v2 mainBundle];
    v8 = String._bridgeToObjectiveC()();
    v9 = String._bridgeToObjectiveC()();
    v10 = [v7 localizedStringForKey:v8 value:v9 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100928838();
    swift_allocError();
    *v11 = a1;
    v12 = sub_10000BCE4(_swiftEmptyArrayStorage);
    v46 = &type metadata for Bool;
    LOBYTE(v45) = 1;
    sub_10000BF3C(&v45, v44);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100A9EF34(v44, 0xD000000000000026, 0x800000010158BA90, isUniquelyReferenced_nonNull_native);
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
    swift_getErrorValue();
    v46 = v43;
    v17 = sub_10002C58C(&v45);
    (*(*(v43 - 1) + 16))(v17);
    sub_10000BF3C(&v45, v44);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_100A9EF34(v44, v14, v16, v18);

    v19 = v12;
    v20 = _convertErrorToNSError(_:)();
    v21 = [v20 code];

    v22 = objc_opt_self();
    v23 = @"com.apple.freeform.CRLErrorDomainInfoImporter";
    v24 = String._bridgeToObjectiveC()();
    v25 = String._bridgeToObjectiveC()();
    sub_10007941C(v19);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v27 = [v22 crl_errorWithDomain:v23 code:v21 alertTitle:v24 alertMessage:v25 userInfo:isa];

    return v27;
  }

  if (a1 != 4)
  {

    if (qword_1019F2098 != -1)
    {
      swift_once();
    }

    v39 = static OS_os_log.crlDefault;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    LOBYTE(v45) = 5;
    v40 = String.init<A>(describing:)();
    v42 = v41;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v40;
    v34 = (inited + 32);
    *(inited + 40) = v42;
    v35 = static os_log_type_t.error.getter();
    v36 = "Metadata provider initialized with invalid URL type.: %@";
    v37 = v39;
    v38 = 56;
LABEL_14:
    sub_100005404(v37, &_mh_execute_header, v35, v36, v38, 2, inited);
    swift_setDeallocating();
    sub_100005070(v34);
    return 0;
  }

  return 0;
}

uint64_t sub_100B4907C()
{
  v1[45] = v0;
  v2 = type metadata accessor for CancellationError();
  v1[46] = v2;
  v1[47] = *(v2 - 8);
  v1[48] = swift_task_alloc();
  sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  v1[49] = swift_task_alloc();

  return _swift_task_switch(sub_100B49174, 0, 0);
}

uint64_t sub_100B49174()
{
  v1 = v0[49];
  v2 = v0[45];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;
  v5 = v2;
  v6 = sub_100796D54(0, 0, v1, &unk_101498AB8, v4);
  v0[50] = v6;
  *&v5[OBJC_IVAR____TtC8Freeform18CRLURLItemImporter_importTask] = v6;

  v7 = swift_task_alloc();
  v0[51] = v7;
  v8 = sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
  v0[52] = v8;
  *v7 = v0;
  v7[1] = sub_100B49304;

  return Task.result.getter(v0 + 40, v6, &type metadata for () + 8, v8, &protocol self-conformance witness table for Error);
}

uint64_t sub_100B49304()
{

  return _swift_task_switch(sub_100B4941C, 0, 0);
}

uint64_t sub_100B4941C(uint64_t a1)
{
  v66 = v1;
  if (*(v1 + 328) != 1)
  {
    goto LABEL_35;
  }

  v2 = *(v1 + 320);
  swift_willThrow();
  *(v1 + 336) = v2;
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    v3 = *(v1 + 360);
    sub_1007987E8(v2, 1);
    v4 = *(v1 + 329);
    sub_1009DB968();
    v5 = swift_allocError();
    *v6 = v4;
    *(v3 + OBJC_IVAR____TtC8Freeform18CRLURLItemImporter__error) = v5;

    goto LABEL_35;
  }

  *(v1 + 344) = v2;
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    sub_1007987E8(v2, 1);
    if (qword_1019F2098 != -1)
    {
      goto LABEL_42;
    }

    goto LABEL_6;
  }

  v12 = *(v1 + 360);

  sub_1009DB968();
  v13 = swift_allocError();
  *v14 = 1;
  *(v12 + OBJC_IVAR____TtC8Freeform18CRLURLItemImporter__error) = v13;

  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(v1 + 352) = v2;
  v63 = v2;
  swift_errorRetain();
  v16 = inited;
  v17 = String.init<A>(describing:)();
  v19 = v18;
  *(inited + 56) = &type metadata for String;
  v20 = sub_1000053B0();
  *(inited + 32) = v17;
  v64 = inited + 32;
  *(inited + 64) = v20;
  *(inited + 40) = v19;
  v62 = objc_opt_self();
  v21 = [v62 _atomicIncrementAssertCount];
  v65 = [objc_allocWithZone(NSString) init];
  sub_100604538(v16, &v65, "Unable to create CRLURLItem: %@", 31, 2u);
  StaticString.description.getter("importBoardItem()", 17, 2);
  v22 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLURLItemImporter.swift", 89, 2);
  v23 = String._bridgeToObjectiveC()();

  v24 = [v23 lastPathComponent];

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v28 = static OS_os_log.crlAssert;
  v29 = swift_initStackObject();
  *(v29 + 16) = xmmword_10146CA70;
  *(v29 + 56) = &type metadata for Int32;
  *(v29 + 64) = &protocol witness table for Int32;
  *(v29 + 32) = v21;
  v30 = sub_1005CF000();
  *(v29 + 96) = v30;
  v31 = sub_1005CF04C();
  *(v29 + 72) = v22;
  *(v29 + 136) = &type metadata for String;
  *(v29 + 144) = v20;
  *(v29 + 104) = v31;
  *(v29 + 112) = v25;
  *(v29 + 120) = v27;
  *(v29 + 176) = &type metadata for UInt;
  *(v29 + 184) = &protocol witness table for UInt;
  *(v29 + 152) = 56;
  v32 = v65;
  *(v29 + 216) = v30;
  *(v29 + 224) = v31;
  *(v29 + 192) = v32;
  v33 = v22;
  v34 = v32;
  v35 = static os_log_type_t.error.getter();
  sub_100005404(v28, &_mh_execute_header, v35, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v29);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v36 = static os_log_type_t.error.getter();
  sub_100005404(v28, &_mh_execute_header, v36, "Unable to create CRLURLItem: %@", 31, 2, v16);

  type metadata accessor for __VaListBuilder();
  v37 = swift_allocObject();
  v37[2] = 8;
  v37[3] = 0;
  v38 = v37 + 3;
  v37[4] = 0;
  v37[5] = 0;
  v39 = *(v16 + 16);
  if (!v39)
  {
LABEL_34:
    v56 = __VaListBuilder.va_list()();
    StaticString.description.getter("importBoardItem()", 17, 2);
    v57 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLURLItemImporter.swift", 89, 2);
    v58 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Unable to create CRLURLItem: %@", 31, 2);
    v59 = String._bridgeToObjectiveC()();

    [v62 handleFailureInFunction:v57 file:v58 lineNumber:56 isFatal:0 format:v59 args:v56];

    swift_setDeallocating();
    swift_arrayDestroy();
    sub_1007987E8(v63, 1);
    goto LABEL_35;
  }

  v40 = 0;
  while (1)
  {
    sub_100020E58((v64 + 40 * v40), *(v64 + 40 * v40 + 24));
    v41 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v42 = *v38;
    v43 = *(v41 + 16);
    v44 = __OFADD__(*v38, v43);
    v45 = *v38 + v43;
    if (v44)
    {
      break;
    }

    v46 = v37[4];
    if (v46 >= v45)
    {
      goto LABEL_26;
    }

    if (v46 + 0x4000000000000000 < 0)
    {
      goto LABEL_40;
    }

    v47 = v37[5];
    if (2 * v46 > v45)
    {
      v45 = 2 * v46;
    }

    v37[4] = v45;
    if ((v45 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_41;
    }

    v48 = v41;
    v49 = swift_slowAlloc();
    v50 = v49;
    v37[5] = v49;
    if (v47)
    {
      if (v49 != v47 || v49 >= &v47[8 * v42])
      {
        memmove(v49, v47, 8 * v42);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v41 = v48;
LABEL_26:
      v50 = v37[5];
      if (!v50)
      {
        goto LABEL_33;
      }

      goto LABEL_27;
    }

    v41 = v48;
    if (!v50)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

LABEL_27:
    v52 = *(v41 + 16);
    if (v52)
    {
      v53 = (v41 + 32);
      v54 = *v38;
      while (1)
      {
        v55 = *v53++;
        *&v50[8 * v54] = v55;
        v54 = *v38 + 1;
        if (__OFADD__(*v38, 1))
        {
          break;
        }

        *v38 = v54;
        if (!--v52)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
      break;
    }

LABEL_11:

    if (++v40 == v39)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  swift_once();
LABEL_6:
  v8 = *(v1 + 376);
  v7 = *(v1 + 384);
  v9 = *(v1 + 368);
  v10 = static OS_os_log.crlDefault;
  v11 = static os_log_type_t.default.getter();
  sub_100005404(v10, &_mh_execute_header, v11, "Import task cancelled. Not an error.", 36, 2, _swiftEmptyArrayStorage);
  (*(v8 + 8))(v7, v9);

LABEL_35:

  v60 = *(v1 + 8);

  return v60();
}