char *sub_100116970(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&unk_10059B0B0, &qword_100487150);
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

void *sub_100116AF4(void *result, int64_t a2, char a3, void *a4)
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
    sub_10005DC58(&qword_10058D688, &unk_1004872E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    sub_10005DC58(&qword_10058CF90, &qword_1004841A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100116C50(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    sub_10005DC58(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

char *sub_100116D3C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_100598800, &qword_1004842A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 10);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 10 * v8;
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

char *sub_100116E4C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_10058D658, &qword_100487290);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

char *sub_100116F70(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&unk_100598770, &qword_100487298);
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

char *sub_10011707C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_10058D630, &qword_1004B0750);
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

char *sub_100117180(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_10058CCA8, &unk_100482FB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_10011727C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_10058D640, &unk_100488520);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_100117388(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_10058CC78, &qword_100482F80);
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

char *sub_1001174BC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_10058D628, &unk_1004871E0);
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

char *sub_1001175C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_10058CCC0, &qword_100492360);
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

void *sub_10011771C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10005DC58(a5, a6);
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

void *sub_10011791C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_10005DC58(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
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
    sub_10005DC58(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_100117A50(void *result, int64_t a2, char a3, void *a4)
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
    sub_10005DC58(&qword_10058CC90, &unk_100487190);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    sub_10005DC58(&qword_10058CC98, &qword_100482FA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100117B98(void *result, int64_t a2, char a3, void *a4)
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
    sub_10005DC58(&qword_10058CCB0, &unk_1004871A0);
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
    v10 = _swiftEmptyArrayStorage;
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
    sub_10005DC58(&unk_10059B2B0, &qword_100482FC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100117CCC(void *result, int64_t a2, char a3, void *a4)
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
    sub_10005DC58(qword_10058C850, &unk_100486F10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10005DC58(&qword_10058BB40, &unk_100480E70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100117E14(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_10058D5F8, &qword_100487168);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100117F20(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_10058CC48, &unk_100487170);
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

void *sub_10011802C(void *result, int64_t a2, char a3, void *a4)
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
    sub_10005DC58(&qword_10058D5E8, &qword_100487158);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    sub_10005DC58(&qword_10058D5F0, &qword_100487160);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100118174(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10005DC58(&qword_10058CC40, &unk_100482F40);
  v3 = swift_allocObject();
  v4 = j__malloc_size(v3);
  result = v3;
  v7 = v4 - 32;
  v6 = v4 < 32;
  v8 = v4 - 25;
  if (!v6)
  {
    v8 = v7;
  }

  *(v3 + 16) = v1;
  *(v3 + 24) = 2 * (v8 >> 3);
  *(v3 + 32) = *(a1 + 32);
  v9 = v3 + 32;
  *(v3 + 36) = *(a1 + 36);
  if (v1 == 2)
  {
    v10 = 0;
LABEL_12:
    v17 = v9 + 8;
    v18 = ~v10 + v1;
    v19 = a1 + 8 * v10 + 40;
    do
    {
      v20 = *v19;
      *(v17 + 4) = *(v19 + 4);
      *v17 = v20;
      v17 += 8;
      v19 += 8;
      --v18;
    }

    while (v18);
    return result;
  }

  if (v1 != 1)
  {
    v10 = (v1 - 1) & 0xFFFFFFFFFFFFFFFELL;
    v9 += 8 * v10;
    v11 = (a1 + 48);
    v12 = v3 + 48;
    v13 = v10;
    do
    {
      v14 = *(v11 - 2);
      v15 = *v11;
      v16 = *(v11 + 2);
      *(v12 - 4) = *(v11 - 2);
      *(v12 - 8) = v14;
      *(v12 + 4) = v16;
      *v12 = v15;
      v12 += 16;
      v11 += 4;
      v13 -= 2;
    }

    while (v13);
    if (v1 - 1 != v10)
    {
      goto LABEL_12;
    }
  }

  return result;
}

void sub_1001182A8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = _swiftEmptyArrayStorage;
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_10005DC58(&qword_10058B3C0, &qword_100481920);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * v9 - 64;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + a3), v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_100118368(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = _swiftEmptyArrayStorage;
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_10005DC58(&qword_1005987A0, &unk_100487180);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * ((v9 - 32) / 7);
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 - a3 + 8 * a3), 7 * v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_100118450(__int128 *a1@<X0>, __int128 *a2@<X8>)
{
  v3 = a1[3];
  v191 = a1[2];
  v192 = v3;
  v193 = a1[4];
  v4 = a1[1];
  v189 = *a1;
  v190 = v4;
  sub_1000C05E4(0, 10, 0);
  v5 = 0;
  v6 = _swiftEmptyArrayStorage;
  v7 = _swiftEmptyArrayStorage[2];
  do
  {
    v8 = *(&v189 + v5);
    v181 = v6;
    v9 = v6[3];
    if (v7 >= v9 >> 1)
    {
      sub_1000C05E4((v9 > 1), v7 + 1, 1);
      v6 = v181;
    }

    v6[2] = v7 + 1;
    v6[v7 + 4] = v8;
    v5 += 8;
    ++v7;
  }

  while (v5 != 80);
  v179 = v6;
  v10 = a1[8];
  v191 = a1[7];
  v192 = v10;
  v193 = a1[9];
  v11 = a1[6];
  v189 = a1[5];
  v190 = v11;
  sub_1000C05E4(0, 10, 0);
  v12 = 0;
  v13 = _swiftEmptyArrayStorage;
  v14 = _swiftEmptyArrayStorage[2];
  do
  {
    v15 = *(&v189 + v12);
    v182 = v13;
    v16 = v13[3];
    if (v14 >= v16 >> 1)
    {
      sub_1000C05E4((v16 > 1), v14 + 1, 1);
      v13 = v182;
    }

    v13[2] = v14 + 1;
    v13[v14 + 4] = v15;
    v12 += 8;
    ++v14;
  }

  while (v12 != 80);
  v178 = v13;
  v17 = a1[13];
  v191 = a1[12];
  v192 = v17;
  v193 = a1[14];
  v18 = a1[11];
  v189 = a1[10];
  v190 = v18;
  sub_1000C05E4(0, 10, 0);
  v19 = 0;
  v20 = _swiftEmptyArrayStorage;
  v21 = _swiftEmptyArrayStorage[2];
  do
  {
    v22 = *(&v189 + v19);
    v183 = v20;
    v23 = v20[3];
    if (v21 >= v23 >> 1)
    {
      sub_1000C05E4((v23 > 1), v21 + 1, 1);
      v20 = v183;
    }

    v20[2] = v21 + 1;
    v20[v21 + 4] = v22;
    v19 += 8;
    ++v21;
  }

  while (v19 != 80);
  v177 = v20;
  v24 = a1[18];
  v191 = a1[17];
  v192 = v24;
  v193 = a1[19];
  v25 = a1[16];
  v189 = a1[15];
  v190 = v25;
  sub_1000C05E4(0, 10, 0);
  v26 = 0;
  v27 = _swiftEmptyArrayStorage;
  v28 = _swiftEmptyArrayStorage[2];
  do
  {
    v29 = *(&v189 + v26);
    v184 = v27;
    v30 = v27[3];
    if (v28 >= v30 >> 1)
    {
      sub_1000C05E4((v30 > 1), v28 + 1, 1);
      v27 = v184;
    }

    v27[2] = v28 + 1;
    v27[v28 + 4] = v29;
    v26 += 8;
    ++v28;
  }

  while (v26 != 80);
  v176 = v27;
  v31 = a1[23];
  v191 = a1[22];
  v192 = v31;
  v193 = a1[24];
  v32 = a1[21];
  v189 = a1[20];
  v190 = v32;
  sub_1000C05E4(0, 10, 0);
  v33 = 0;
  v34 = _swiftEmptyArrayStorage;
  v35 = _swiftEmptyArrayStorage[2];
  do
  {
    v36 = *(&v189 + v33);
    v185 = v34;
    v37 = v34[3];
    if (v35 >= v37 >> 1)
    {
      sub_1000C05E4((v37 > 1), v35 + 1, 1);
      v34 = v185;
    }

    v34[2] = v35 + 1;
    v34[v35 + 4] = v36;
    v33 += 8;
    ++v35;
  }

  while (v33 != 80);
  v175 = v34;
  v38 = a1[28];
  v191 = a1[27];
  v192 = v38;
  v193 = a1[29];
  v39 = a1[26];
  v189 = a1[25];
  v190 = v39;
  sub_1000C05E4(0, 10, 0);
  v40 = 0;
  v41 = _swiftEmptyArrayStorage;
  v42 = _swiftEmptyArrayStorage[2];
  do
  {
    v43 = *(&v189 + v40);
    v186 = v41;
    v44 = v41[3];
    if (v42 >= v44 >> 1)
    {
      sub_1000C05E4((v44 > 1), v42 + 1, 1);
      v41 = v186;
    }

    v41[2] = v42 + 1;
    v41[v42 + 4] = v43;
    v40 += 8;
    ++v42;
  }

  while (v40 != 80);
  v174 = v41;
  v46 = *(a1 + 60);
  v45 = *(a1 + 61);
  v48 = *(a1 + 62);
  v47 = *(a1 + 63);
  v49 = *(a1 + 64);
  v50 = *(a1 + 65);
  *&v189 = _swiftEmptyArrayStorage;
  sub_1000C05E4(0, 6, 0);
  v51 = v189;
  v53 = *(v189 + 16);
  v52 = *(v189 + 24);
  v54 = v52 >> 1;
  v55 = v53 + 1;
  if (v52 >> 1 <= v53)
  {
    sub_1000C05E4((v52 > 1), v53 + 1, 1);
    v51 = v189;
    v52 = *(v189 + 24);
    v54 = v52 >> 1;
  }

  *(v51 + 16) = v55;
  *(v51 + 8 * v53 + 32) = v46;
  *&v189 = v51;
  if (v54 <= v55)
  {
    sub_1000C05E4((v52 > 1), v53 + 2, 1);
    v51 = v189;
  }

  *(v51 + 16) = v53 + 2;
  *(v51 + 8 * v55 + 32) = v45;
  *&v189 = v51;
  v57 = *(v51 + 16);
  v56 = *(v51 + 24);
  v58 = v56 >> 1;
  v59 = v57 + 1;
  if (v56 >> 1 <= v57)
  {
    sub_1000C05E4((v56 > 1), v57 + 1, 1);
    v51 = v189;
    v56 = *(v189 + 24);
    v58 = v56 >> 1;
  }

  *(v51 + 16) = v59;
  *(v51 + 8 * v57 + 32) = v48;
  *&v189 = v51;
  if (v58 <= v59)
  {
    sub_1000C05E4((v56 > 1), v57 + 2, 1);
    v51 = v189;
  }

  *(v51 + 16) = v57 + 2;
  *(v51 + 8 * v59 + 32) = v47;
  *&v189 = v51;
  v61 = *(v51 + 16);
  v60 = *(v51 + 24);
  v62 = v60 >> 1;
  v63 = v61 + 1;
  if (v60 >> 1 <= v61)
  {
    sub_1000C05E4((v60 > 1), v61 + 1, 1);
    v51 = v189;
    v60 = *(v189 + 24);
    v62 = v60 >> 1;
  }

  *(v51 + 16) = v63;
  *(v51 + 8 * v61 + 32) = v49;
  *&v189 = v51;
  if (v62 <= v63)
  {
    sub_1000C05E4((v60 > 1), v61 + 2, 1);
    v51 = v189;
  }

  *(v51 + 16) = v61 + 2;
  v173 = v51;
  *(v51 + 8 * v63 + 32) = v50;
  v64 = a1[36];
  v191 = a1[35];
  v192 = v64;
  *&v193 = *(a1 + 74);
  v65 = a1[34];
  v189 = a1[33];
  v190 = v65;
  sub_1000C05E4(0, 9, 0);
  v66 = 0;
  v67 = _swiftEmptyArrayStorage;
  v68 = _swiftEmptyArrayStorage[2];
  do
  {
    v69 = *(&v189 + v66);
    v187 = v67;
    v70 = v67[3];
    if (v68 >= v70 >> 1)
    {
      sub_1000C05E4((v70 > 1), v68 + 1, 1);
      v67 = v187;
    }

    v67[2] = v68 + 1;
    v67[v68 + 4] = v69;
    v66 += 8;
    ++v68;
  }

  while (v66 != 72);
  v172 = v67;
  v71 = *(a1 + 648);
  v191 = *(a1 + 632);
  v192 = v71;
  *&v193 = *(a1 + 83);
  v72 = *(a1 + 616);
  v189 = *(a1 + 600);
  v190 = v72;
  sub_1000C05E4(0, 9, 0);
  v73 = 0;
  v74 = _swiftEmptyArrayStorage;
  v75 = _swiftEmptyArrayStorage[2];
  do
  {
    v76 = *(&v189 + v73);
    v188 = v74;
    v77 = v74[3];
    if (v75 >= v77 >> 1)
    {
      sub_1000C05E4((v77 > 1), v75 + 1, 1);
      v74 = v188;
    }

    v74[2] = v75 + 1;
    v74[v75 + 4] = v76;
    v73 += 8;
    ++v75;
  }

  while (v73 != 72);
  v171 = v74;
  v78 = *(a1 + 84);
  v79 = *(a1 + 85);
  v80 = *(a1 + 86);
  v81 = *(a1 + 87);
  *&v189 = _swiftEmptyArrayStorage;
  sub_1000C05E4(0, 4, 0);
  v82 = v189;
  v84 = *(v189 + 16);
  v83 = *(v189 + 24);
  v85 = v83 >> 1;
  v86 = v84 + 1;
  if (v83 >> 1 <= v84)
  {
    sub_1000C05E4((v83 > 1), v84 + 1, 1);
    v82 = v189;
    v83 = *(v189 + 24);
    v85 = v83 >> 1;
  }

  *(v82 + 16) = v86;
  *(v82 + 8 * v84 + 32) = v78;
  *&v189 = v82;
  v87 = v84 + 2;
  if (v85 <= v86)
  {
    sub_1000C05E4((v83 > 1), v87, 1);
    v82 = v189;
  }

  *(v82 + 16) = v87;
  *(v82 + 8 * v86 + 32) = v79;
  *&v189 = v82;
  v89 = *(v82 + 16);
  v88 = *(v82 + 24);
  v90 = v88 >> 1;
  v91 = v89 + 1;
  if (v88 >> 1 <= v89)
  {
    sub_1000C05E4((v88 > 1), v89 + 1, 1);
    v82 = v189;
    v88 = *(v189 + 24);
    v90 = v88 >> 1;
  }

  *(v82 + 16) = v91;
  *(v82 + 8 * v89 + 32) = v80;
  *&v189 = v82;
  v92 = v89 + 2;
  if (v90 <= v91)
  {
    sub_1000C05E4((v88 > 1), v92, 1);
    v82 = v189;
  }

  *(v82 + 16) = v92;
  v170 = v82;
  *(v82 + 8 * v91 + 32) = v81;
  v93 = *(a1 + 88);
  v94 = *(a1 + 89);
  v95 = *(a1 + 90);
  v96 = *(a1 + 91);
  v97 = *(a1 + 92);
  *&v189 = _swiftEmptyArrayStorage;
  sub_1000C05E4(0, 5, 0);
  v98 = v189;
  v100 = *(v189 + 16);
  v99 = *(v189 + 24);
  v101 = v99 >> 1;
  v102 = v100 + 1;
  if (v99 >> 1 <= v100)
  {
    sub_1000C05E4((v99 > 1), v100 + 1, 1);
    v98 = v189;
    v99 = *(v189 + 24);
    v101 = v99 >> 1;
  }

  *(v98 + 16) = v102;
  *(v98 + 8 * v100 + 32) = v93;
  *&v189 = v98;
  v103 = v100 + 2;
  if (v101 <= v102)
  {
    sub_1000C05E4((v99 > 1), v103, 1);
    v98 = v189;
  }

  *(v98 + 16) = v103;
  *(v98 + 8 * v102 + 32) = v94;
  *&v189 = v98;
  v105 = *(v98 + 16);
  v104 = *(v98 + 24);
  v106 = v104 >> 1;
  v107 = v105 + 1;
  if (v104 >> 1 <= v105)
  {
    sub_1000C05E4((v104 > 1), v105 + 1, 1);
    v98 = v189;
    v104 = *(v189 + 24);
    v106 = v104 >> 1;
  }

  *(v98 + 16) = v107;
  *(v98 + 8 * v105 + 32) = v95;
  *&v189 = v98;
  v108 = v105 + 2;
  if (v106 <= v107)
  {
    sub_1000C05E4((v104 > 1), v108, 1);
    v98 = v189;
  }

  *(v98 + 16) = v108;
  *(v98 + 8 * v107 + 32) = v96;
  *&v189 = v98;
  v110 = *(v98 + 16);
  v109 = *(v98 + 24);
  if (v110 >= v109 >> 1)
  {
    sub_1000C05E4((v109 > 1), v110 + 1, 1);
    v98 = v189;
  }

  *(v98 + 16) = v110 + 1;
  v169 = v98;
  *(v98 + 8 * v110 + 32) = v97;
  v111 = *(a1 + 792);
  v191 = *(a1 + 776);
  v192 = v111;
  v193 = *(a1 + 808);
  v112 = *(a1 + 760);
  v189 = *(a1 + 744);
  v190 = v112;
  sub_1000C05E4(0, 10, 0);
  v113 = 0;
  v114 = _swiftEmptyArrayStorage[2];
  do
  {
    v115 = *(&v189 + v113);
    v116 = _swiftEmptyArrayStorage[3];
    if (v114 >= v116 >> 1)
    {
      sub_1000C05E4((v116 > 1), v114 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v114 + 1;
    _swiftEmptyArrayStorage[v114 + 4] = v115;
    v113 += 8;
    ++v114;
  }

  while (v113 != 80);
  v117 = *(a1 + 103);
  v118 = *(a1 + 104);
  v119 = *(a1 + 105);
  *&v189 = _swiftEmptyArrayStorage;
  sub_1000C05E4(0, 3, 0);
  v120 = v189;
  v122 = *(v189 + 16);
  v121 = *(v189 + 24);
  v123 = v121 >> 1;
  v124 = v122 + 1;
  if (v121 >> 1 <= v122)
  {
    sub_1000C05E4((v121 > 1), v122 + 1, 1);
    v120 = v189;
    v121 = *(v189 + 24);
    v123 = v121 >> 1;
  }

  *(v120 + 16) = v124;
  *(v120 + 8 * v122 + 32) = v117;
  *&v189 = v120;
  v125 = v122 + 2;
  if (v123 <= v124)
  {
    sub_1000C05E4((v121 > 1), v125, 1);
    v120 = v189;
  }

  *(v120 + 16) = v125;
  *(v120 + 8 * v124 + 32) = v118;
  *&v189 = v120;
  v127 = *(v120 + 16);
  v126 = *(v120 + 24);
  if (v127 >= v126 >> 1)
  {
    sub_1000C05E4((v126 > 1), v127 + 1, 1);
    v120 = v189;
  }

  *(v120 + 16) = v127 + 1;
  v168 = v120;
  *(v120 + 8 * v127 + 32) = v119;
  v128 = a1[56];
  v191 = a1[55];
  v192 = v128;
  v193 = a1[57];
  v129 = a1[54];
  v189 = a1[53];
  v190 = v129;
  sub_1000C05E4(0, 10, 0);
  v130 = 0;
  v131 = _swiftEmptyArrayStorage[2];
  do
  {
    v132 = *(&v189 + v130);
    v133 = _swiftEmptyArrayStorage[3];
    if (v131 >= v133 >> 1)
    {
      sub_1000C05E4((v133 > 1), v131 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v131 + 1;
    _swiftEmptyArrayStorage[v131 + 4] = v132;
    v130 += 8;
    ++v131;
  }

  while (v130 != 80);
  v134 = a1[61];
  v191 = a1[60];
  v192 = v134;
  v193 = a1[62];
  v135 = a1[59];
  v189 = a1[58];
  v190 = v135;
  sub_1000C05E4(0, 10, 0);
  v136 = 0;
  v137 = _swiftEmptyArrayStorage[2];
  do
  {
    v138 = *(&v189 + v136);
    v139 = _swiftEmptyArrayStorage[3];
    if (v137 >= v139 >> 1)
    {
      sub_1000C05E4((v139 > 1), v137 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v137 + 1;
    _swiftEmptyArrayStorage[v137 + 4] = v138;
    v136 += 8;
    ++v137;
  }

  while (v136 != 80);
  v140 = a1[66];
  v191 = a1[65];
  v192 = v140;
  v193 = a1[67];
  v141 = a1[64];
  v189 = a1[63];
  v190 = v141;
  sub_1000C05E4(0, 10, 0);
  v142 = 0;
  v143 = _swiftEmptyArrayStorage[2];
  do
  {
    v144 = *(&v189 + v142);
    v145 = _swiftEmptyArrayStorage[3];
    if (v143 >= v145 >> 1)
    {
      sub_1000C05E4((v145 > 1), v143 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v143 + 1;
    _swiftEmptyArrayStorage[v143 + 4] = v144;
    v142 += 8;
    ++v143;
  }

  while (v142 != 80);
  v146 = a1[69];
  v147 = a1[71];
  v191 = a1[70];
  v192 = v147;
  v193 = a1[72];
  v189 = a1[68];
  v190 = v146;
  sub_1000C05E4(0, 10, 0);
  v148 = 0;
  v149 = _swiftEmptyArrayStorage[2];
  do
  {
    v150 = *(&v189 + v148);
    v151 = _swiftEmptyArrayStorage[3];
    if (v149 >= v151 >> 1)
    {
      sub_1000C05E4((v151 > 1), v149 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v149 + 1;
    _swiftEmptyArrayStorage[v149 + 4] = v150;
    v148 += 8;
    ++v149;
  }

  while (v148 != 80);
  v152 = *(a1 + 146);
  v153 = *(a1 + 147);
  v154 = *(a1 + 148);
  v155 = *(a1 + 149);
  sub_1000C05E4(0, 4, 0);
  v157 = _swiftEmptyArrayStorage[2];
  v156 = _swiftEmptyArrayStorage[3];
  v158 = v156 >> 1;
  v159 = v157 + 1;
  if (v156 >> 1 <= v157)
  {
    sub_1000C05E4((v156 > 1), v157 + 1, 1);
    v156 = _swiftEmptyArrayStorage[3];
    v158 = v156 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v159;
  _swiftEmptyArrayStorage[v157 + 4] = v152;
  if (v158 <= v159)
  {
    sub_1000C05E4((v156 > 1), v157 + 2, 1);
  }

  _swiftEmptyArrayStorage[2] = v157 + 2;
  _swiftEmptyArrayStorage[v159 + 4] = v153;
  v161 = _swiftEmptyArrayStorage[2];
  v160 = _swiftEmptyArrayStorage[3];
  v162 = v160 >> 1;
  v163 = v161 + 1;
  if (v160 >> 1 <= v161)
  {
    sub_1000C05E4((v160 > 1), v161 + 1, 1);
    v160 = _swiftEmptyArrayStorage[3];
    v162 = v160 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v163;
  _swiftEmptyArrayStorage[v161 + 4] = v154;
  if (v162 <= v163)
  {
    sub_1000C05E4((v160 > 1), v161 + 2, 1);
  }

  _swiftEmptyArrayStorage[2] = v161 + 2;
  _swiftEmptyArrayStorage[v163 + 4] = v155;
  *&v189 = v179;
  *(&v189 + 1) = v178;
  *&v190 = v177;
  *(&v190 + 1) = v176;
  *&v191 = v175;
  *(&v191 + 1) = v174;
  *&v192 = v173;
  *(&v192 + 1) = v172;
  *&v193 = v171;
  *(&v193 + 1) = v170;
  *&v194 = v169;
  *(&v194 + 1) = _swiftEmptyArrayStorage;
  *&v195 = v168;
  *(&v195 + 1) = _swiftEmptyArrayStorage;
  *&v196 = _swiftEmptyArrayStorage;
  *(&v196 + 1) = _swiftEmptyArrayStorage;
  *&v197 = _swiftEmptyArrayStorage;
  *(&v197 + 1) = _swiftEmptyArrayStorage;
  NANBitmap.Channel.operatingClass.getter();
  v164 = v196;
  a2[6] = v195;
  a2[7] = v164;
  a2[8] = v197;
  v165 = v192;
  a2[2] = v191;
  a2[3] = v165;
  v166 = v194;
  a2[4] = v193;
  a2[5] = v166;
  v167 = v190;
  *a2 = v189;
  a2[1] = v167;
}

double sub_100119410@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  v6 = *(a1 + 96);
  v7 = *(a1 + 104);
  sub_1000C0684(0, 4, 0);
  v9 = _swiftEmptyArrayStorage[2];
  v8 = _swiftEmptyArrayStorage[3];
  v10 = v8 >> 1;
  v11 = v9 + 1;
  if (v8 >> 1 <= v9)
  {
    sub_1000C0684((v8 > 1), v9 + 1, 1);
    v8 = _swiftEmptyArrayStorage[3];
    v10 = v8 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v11;
  *(&_swiftEmptyArrayStorage[4] + v9) = v4;
  if (v10 <= v11)
  {
    sub_1000C0684((v8 > 1), v9 + 2, 1);
  }

  _swiftEmptyArrayStorage[2] = v9 + 2;
  *(&_swiftEmptyArrayStorage[4] + v11) = v5;
  v13 = _swiftEmptyArrayStorage[2];
  v12 = _swiftEmptyArrayStorage[3];
  v14 = v12 >> 1;
  v15 = v13 + 1;
  if (v12 >> 1 <= v13)
  {
    sub_1000C0684((v12 > 1), v13 + 1, 1);
    v12 = _swiftEmptyArrayStorage[3];
    v14 = v12 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v15;
  *(&_swiftEmptyArrayStorage[4] + v13) = v6;
  v16 = v13 + 2;
  if (v14 <= v15)
  {
    sub_1000C0684((v12 > 1), v16, 1);
  }

  _swiftEmptyArrayStorage[2] = v16;
  *(&_swiftEmptyArrayStorage[4] + v15) = v7;
  v17 = *(a1 + 112);
  v18 = *(a1 + 120);
  v19 = *(a1 + 128);
  v68 = *(a1 + 136);
  sub_1000C0684(0, 4, 0);
  v21 = _swiftEmptyArrayStorage[2];
  v20 = _swiftEmptyArrayStorage[3];
  v22 = v20 >> 1;
  v23 = v21 + 1;
  if (v20 >> 1 <= v21)
  {
    sub_1000C0684((v20 > 1), v21 + 1, 1);
    v20 = _swiftEmptyArrayStorage[3];
    v22 = v20 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v23;
  *(&_swiftEmptyArrayStorage[4] + v21) = v17;
  if (v22 <= v23)
  {
    sub_1000C0684((v20 > 1), v21 + 2, 1);
  }

  _swiftEmptyArrayStorage[2] = v21 + 2;
  *(&_swiftEmptyArrayStorage[4] + v23) = v18;
  v25 = _swiftEmptyArrayStorage[2];
  v24 = _swiftEmptyArrayStorage[3];
  v26 = v24 >> 1;
  v27 = v25 + 1;
  if (v24 >> 1 <= v25)
  {
    sub_1000C0684((v24 > 1), v25 + 1, 1);
    v24 = _swiftEmptyArrayStorage[3];
    v26 = v24 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v27;
  *(&_swiftEmptyArrayStorage[4] + v25) = v19;
  v28 = v25 + 2;
  if (v26 <= v27)
  {
    sub_1000C0684((v24 > 1), v28, 1);
  }

  _swiftEmptyArrayStorage[2] = v28;
  *(&_swiftEmptyArrayStorage[4] + v27) = v68;
  v29 = *(a1 + 144);
  v30 = *(a1 + 152);
  v66 = *(a1 + 160);
  v69 = *(a1 + 168);
  sub_1000C0684(0, 4, 0);
  v32 = _swiftEmptyArrayStorage[2];
  v31 = _swiftEmptyArrayStorage[3];
  v33 = v31 >> 1;
  v34 = v32 + 1;
  if (v31 >> 1 <= v32)
  {
    sub_1000C0684((v31 > 1), v32 + 1, 1);
    v31 = _swiftEmptyArrayStorage[3];
    v33 = v31 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v34;
  *(&_swiftEmptyArrayStorage[4] + v32) = v29;
  if (v33 <= v34)
  {
    sub_1000C0684((v31 > 1), v32 + 2, 1);
  }

  _swiftEmptyArrayStorage[2] = v32 + 2;
  *(&_swiftEmptyArrayStorage[4] + v34) = v30;
  v36 = _swiftEmptyArrayStorage[2];
  v35 = _swiftEmptyArrayStorage[3];
  v37 = v35 >> 1;
  v38 = v36 + 1;
  if (v35 >> 1 <= v36)
  {
    sub_1000C0684((v35 > 1), v36 + 1, 1);
    v35 = _swiftEmptyArrayStorage[3];
    v37 = v35 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v38;
  *(&_swiftEmptyArrayStorage[4] + v36) = v66;
  v39 = v36 + 2;
  if (v37 <= v38)
  {
    sub_1000C0684((v35 > 1), v39, 1);
  }

  _swiftEmptyArrayStorage[2] = v39;
  *(&_swiftEmptyArrayStorage[4] + v38) = v69;
  v40 = *(a1 + 176);
  v41 = *(a1 + 184);
  v67 = *(a1 + 192);
  v70 = *(a1 + 200);
  sub_1000C0684(0, 4, 0);
  v43 = _swiftEmptyArrayStorage[2];
  v42 = _swiftEmptyArrayStorage[3];
  v44 = v42 >> 1;
  v45 = v43 + 1;
  if (v42 >> 1 <= v43)
  {
    sub_1000C0684((v42 > 1), v43 + 1, 1);
    v42 = _swiftEmptyArrayStorage[3];
    v44 = v42 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v45;
  *(&_swiftEmptyArrayStorage[4] + v43) = v40;
  if (v44 <= v45)
  {
    sub_1000C0684((v42 > 1), v43 + 2, 1);
  }

  _swiftEmptyArrayStorage[2] = v43 + 2;
  *(&_swiftEmptyArrayStorage[4] + v45) = v41;
  v47 = _swiftEmptyArrayStorage[2];
  v46 = _swiftEmptyArrayStorage[3];
  v48 = v46 >> 1;
  v49 = v47 + 1;
  if (v46 >> 1 <= v47)
  {
    sub_1000C0684((v46 > 1), v47 + 1, 1);
    v46 = _swiftEmptyArrayStorage[3];
    v48 = v46 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v49;
  *(&_swiftEmptyArrayStorage[4] + v47) = v67;
  v50 = v47 + 2;
  if (v48 <= v49)
  {
    sub_1000C0684((v46 > 1), v50, 1);
  }

  _swiftEmptyArrayStorage[2] = v50;
  *(&_swiftEmptyArrayStorage[4] + v49) = v70;
  v51 = *(a1 + 40);
  v52 = *(a1 + 44);
  v53 = *(a1 + 48);
  v54 = *(a1 + 52);
  v55 = *(a1 + 56);
  v56 = *(a1 + 60);
  v57 = *(a1 + 62);
  v58 = *(a1 + 63);
  v59 = *(a1 + 64);
  v60 = *(a1 + 65);
  v61 = *(a1 + 66);
  v62 = *(a1 + 67);
  v63 = *(a1 + 72);
  v64 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v64;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  *(a2 + 40) = v51;
  *(a2 + 44) = v52;
  *(a2 + 48) = v53;
  *(a2 + 52) = v54;
  *(a2 + 56) = v55;
  *(a2 + 60) = v56;
  *(a2 + 62) = v57;
  *(a2 + 63) = v58;
  *(a2 + 64) = v59;
  *(a2 + 65) = v60;
  *(a2 + 66) = v61;
  *(a2 + 67) = v62;
  *(a2 + 68) = *(a1 + 68);
  *(a2 + 72) = v63;
  *(a2 + 80) = _swiftEmptyArrayStorage;
  *(a2 + 88) = _swiftEmptyArrayStorage;
  *(a2 + 96) = _swiftEmptyArrayStorage;
  *(a2 + 104) = _swiftEmptyArrayStorage;
  return result;
}

NSString sub_100119A30(uint64_t a1)
{
  if (*(a1 + 36) <= 2u)
  {
    v1 = String.init(cString:)();
    v3 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v3 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (v3)
    {
      v4 = String._bridgeToObjectiveC()();

      return v4;
    }
  }

  return 0;
}

uint64_t sub_100119AF8(unsigned __int8 *__src)
{
  v22 = *__src;
  memcpy(__dst, __src, sizeof(__dst));
  if (__src[8])
  {
    v2 = 0;
    v23 = 20 * __src[8];
    v3 = _swiftEmptyArrayStorage;
    do
    {
      v4 = __dst[v2 + 12];
      v5 = *&__dst[v2 + 16];
      v6 = *&__dst[v2 + 20];
      v7 = __dst[v2 + 28];
      v27 = __dst[v2 + 172];
      v8 = *&__dst[v2 + 176];
      v9 = *&__dst[v2 + 180];
      v26 = __dst[v2 + 188];
      v31 = __dst[v2 + 332];
      v10 = *&__dst[v2 + 336];
      v11 = *&__dst[v2 + 340];
      v29 = __dst[v2 + 349];
      v30 = __dst[v2 + 348];
      v28 = __dst[v2 + 492];
      v12 = *&__dst[v2 + 496];
      v13 = *&__dst[v2 + 500];
      v24 = __dst[v2 + 509];
      v25 = __dst[v2 + 508];
      if (v5 >= 6)
      {
        v14 = 5;
      }

      else
      {
        v14 = 0x40302010005uLL >> (8 * v5);
      }

      if (v8 >= 6)
      {
        v15 = 5;
      }

      else
      {
        v15 = 0x40302010005uLL >> (8 * v8);
      }

      if (v10 >= 6)
      {
        v16 = 5;
      }

      else
      {
        v16 = 0x40302010005uLL >> (8 * v10);
      }

      if (v12 >= 6)
      {
        v17 = 5;
      }

      else
      {
        v17 = 0x40302010005uLL >> (8 * v12);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_10011630C(0, *(v3 + 2) + 1, 1, v3);
      }

      v19 = *(v3 + 2);
      v18 = *(v3 + 3);
      if (v19 >= v18 >> 1)
      {
        v3 = sub_10011630C((v18 > 1), v19 + 1, 1, v3);
      }

      *(v3 + 2) = v19 + 1;
      v20 = &v3[64 * v19];
      v20[32] = v4;
      v2 += 20;
      v20[33] = v14;
      *(v20 + 36) = v6;
      v20[44] = v7;
      *(v20 + 45) = v34;
      v20[47] = v35;
      v20[48] = v27;
      v20[49] = v15;
      *(v20 + 52) = v9;
      v20[60] = v26;
      v20[63] = v33;
      *(v20 + 61) = v32;
      v20[64] = v31;
      v20[65] = v16;
      *(v20 + 68) = v11;
      v20[76] = v30;
      v20[77] = v29;
      v20[80] = v28;
      v20[81] = v17;
      *(v20 + 84) = v13;
      v20[92] = v25;
      v20[93] = v24;
    }

    while (v23 != v2);
  }

  return v22;
}

unint64_t sub_100119D78()
{
  result = qword_10058D420;
  if (!qword_10058D420)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IEEE80211Frame, &type metadata for IEEE80211Frame, v0, v1);
    atomic_store(result, &qword_10058D420);
  }

  return result;
}

unint64_t sub_100119DCC()
{
  result = qword_10058D428;
  if (!qword_10058D428)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for UInt16, &type metadata for UInt16, v0, v1);
    atomic_store(result, &qword_10058D428);
  }

  return result;
}

unint64_t sub_100119E20()
{
  result = qword_10058D438;
  if (!qword_10058D438)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10005DD04(&qword_10058D430, &unk_1004AC7D0);
    v4[0] = sub_10011AB40(&qword_10058D440, type metadata accessor for NANAttribute, protocol conformance descriptor for NANAttribute);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_10058D438);
  }

  return result;
}

void sub_100119ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    swift_unownedRetain();
  }
}

uint64_t sub_100119F14(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    swift_unownedRelease();
  }

  return v3;
}

uint64_t sub_100119FA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10011A008(uint64_t result, unint64_t a2, __int16 a3)
{
  if ((a3 & 0xFF00) != 0x200)
  {
    return sub_10000AB0C(result, a2);
  }

  return result;
}

uint64_t sub_10011A01C(uint64_t result, unint64_t a2, __int16 a3)
{
  if ((a3 & 0xFF00) != 0x200)
  {
    return sub_1000124C8(result, a2);
  }

  return result;
}

void *sub_10011A030@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  bzero(v18, 0x802uLL);
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 == 2 && *(a1 + 16) != *(a1 + 24))
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (v6)
    {
      while (1)
      {
        if (a1 == a1 >> 32)
        {
          goto LABEL_12;
        }

LABEL_7:
        if (v6 != 2)
        {
          break;
        }

        v8 = *(a1 + 16);
        v7 = *(a1 + 24);
        v9 = __OFSUB__(v7, v8);
        v6 = v7 - v8;
        if (!v9)
        {
          goto LABEL_14;
        }

        __break(1u);
      }

      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_20;
      }

      goto LABEL_14;
    }

    if ((a2 & 0xFF000000000000) != 0)
    {
LABEL_14:
      __chkstk_darwin();
      v16[2] = a1;
      v16[3] = v10;
      v16[4] = v11;
      v12 = v10;
      v13 = sub_10005DC58(&qword_10058D650, &qword_100487288);
      sub_10029F448(v18, sub_10011AE88, v16, v13, &type metadata for Never, &type metadata for Int, &protocol witness table for Never, v14);
      sub_1000124C8(a1, v12);
      if ((v17 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (!(v17 >> 16))
      {
        v18[1024] = v17;
        return memcpy(a3, v18, 0x802uLL);
      }

      __break(1u);
LABEL_20:
      __break(1u);
    }
  }

LABEL_12:
  sub_1000124C8(a1, a2);
  return memcpy(a3, v18, 0x802uLL);
}

void sub_10011A208(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7 != 1)
  {
    sub_10000AB0C(a2, a3);
    sub_10005D67C(a4, a5);
  }
}

void sub_10011A270(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7 != 1)
  {
    sub_1000124C8(a2, a3);
    sub_100017554(a4, a5);
  }
}

void *sub_10011A2D8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v6 = a2 >> 62;
  memset(v16, 0, sizeof(v16));
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (v6)
  {
    if (a1 == a1 >> 32)
    {
      goto LABEL_7;
    }

LABEL_9:
    if (v6 == 2)
    {
      v7 = *(a1 + 16);
      v9 = *(a1 + 24);
      v8 = v9 - v7;
      if (__OFSUB__(v9, v7))
      {
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
      }

      if (v8 >= 256)
      {
        v8 = 256;
      }
    }

    else
    {
      v10 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_28;
      }

      if (v10 >= 256)
      {
        v10 = 256;
      }

      v8 = v10;
      v7 = a1;
      v9 = a1 >> 32;
    }

LABEL_18:
    if (v9 < v7 || v8 < v7)
    {
      __break(1u);
    }

    else
    {
      v17 = Data._Representation.subscript.getter();
      v18 = v13;
      sub_1000BA0A4();
      v14 = DataProtocol.copyBytes(to:)();
      sub_1000124C8(a1, a2);
      sub_1000124C8(v17, v18);
      if ((v14 & 0x8000000000000000) == 0)
      {
        if (v14 <= 0xFF)
        {
          v16[0] = v14;
          v16[257] = a3;
          return memcpy(a4, v16, 0x102uLL);
        }

        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if ((a2 & 0xFF000000000000) != 0)
  {
    v7 = 0;
    v8 = BYTE6(a2);
    v9 = BYTE6(a2);
    goto LABEL_18;
  }

LABEL_7:
  sub_1000124C8(a1, a2);
  return memcpy(a4, v16, 0x102uLL);
}

void *sub_10011A4D0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  bzero(__src, 0x402uLL);
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  if (v6)
  {
    if (a1 == a1 >> 32)
    {
      goto LABEL_13;
    }

LABEL_7:
    if (v6 == 2)
    {
      v7 = *(a1 + 16);
      v9 = *(a1 + 24);
      if (__OFSUB__(v9, v7))
      {
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
      }

      if (v9 - v7 >= 1024)
      {
        v8 = 1024;
      }

      else
      {
        v8 = v9 - v7;
      }
    }

    else
    {
      v10 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_28;
      }

      if (v10 >= 1024)
      {
        v10 = 1024;
      }

      v8 = v10;
      v7 = a1;
      v9 = a1 >> 32;
    }

LABEL_18:
    if (v9 < v7 || v8 < v7)
    {
      __break(1u);
    }

    else
    {
      v15 = Data._Representation.subscript.getter();
      v16 = v11;
      sub_1000BA0A4();
      v12 = DataProtocol.copyBytes(to:)();
      sub_1000124C8(a1, a2);
      sub_1000124C8(v15, v16);
      if ((v12 & 0x8000000000000000) == 0)
      {
        if (!(v12 >> 16))
        {
          __src[512] = v12;
          return memcpy(a3, __src, 0x402uLL);
        }

        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if ((a2 & 0xFF000000000000) != 0)
  {
    v7 = 0;
    v8 = BYTE6(a2);
    v9 = BYTE6(a2);
    goto LABEL_18;
  }

LABEL_13:
  sub_1000124C8(a1, a2);
  return memcpy(a3, __src, 0x402uLL);
}

uint64_t sub_10011A8D0(uint64_t a1)
{
  result = sub_10011AB40(&unk_10058C838, type metadata accessor for AppleIO80211Driver, protocol conformance descriptor for AppleIO80211Driver);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for AppleIO80211Driver(uint64_t a1)
{
  result = qword_10058D530;
  if (!qword_10058D530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10011AA08(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t sub_10011AB40(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void sub_10011AB88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v9 = v3[5];
  v11 = v3[2];
  v10 = v3[3];
  v12 = *(v9 + 24);
  v13 = *(v12 + 16);

  os_unfair_lock_lock(v13);
  swift_beginAccess();
  v14 = *(v9 + 32);
  v21 = v11;
  if (*(v14 + 16) && (v15 = sub_1000102E8(v11, v10), (v16 & 1) != 0))
  {
    v17 = *(*(v14 + 56) + 8 * v15);
    swift_endAccess();
    v18 = *(v17 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_interfaceIndex);
  }

  else
  {
    swift_endAccess();
    v18 = sub_100097144(v11, v10);
  }

  swift_beginAccess();
  sub_10004F87C(a1 & 0xFFFFFFFFFFFFLL, a2, a3, v18, 1);
  swift_endAccess();
  os_unfair_lock_unlock(*(v12 + 16));

  if (!v5)
  {
    if (*(v6 + 32) <= 1u)
    {
      v19 = a1;
      if (*(v6 + 32))
      {

        goto LABEL_12;
      }
    }

    else
    {
      v19 = a1;
    }

    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
      return;
    }

LABEL_12:
    v23 = 1;
    v24 = v19;
    v25 = BYTE2(v19);
    v26 = BYTE3(v19);
    v27 = BYTE4(v19);
    v28 = BYTE5(v19);

    AppleDevice.setRequest(requestType:data:on:)(0x19FuLL, &v23, &v29, 0, v21, v10);
  }
}

uint64_t sub_10011AED0(uint64_t a1, uint64_t a2, void *a3)
{
  result = sub_10010F778(v3[8], a1, a2, v3[2], v3[4], v3[5], v3[6]);
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

uint64_t sub_10011AF1C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10011AF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    return sub_10011AF40(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_10011AF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

uint64_t sub_10011AF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

uint64_t *SCPreferencesRef.p2pPreferences.unsafeMutableAddressor()
{
  if (qword_10058A838 != -1)
  {
    swift_once();
  }

  return &static SCPreferencesRef.p2pPreferences;
}

uint64_t CachedPreferenceStorage.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  type metadata accessor for InMemoryPreferenceStorage();
  v8 = swift_allocObject();
  *(v8 + 16) = &_swiftEmptyDictionarySingleton;
  *a4 = v8;
  v10 = type metadata accessor for CachedPreferenceStorage(0, a2, a3, v9);
  v11 = *(*(a2 - 8) + 32);
  v12 = a4 + *(v10 + 36);

  return v11(v12, a1, a2);
}

uint64_t LockedPreferencesStorage.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  type metadata accessor for Lock();
  v8 = swift_allocObject();
  v9 = swift_slowAlloc();
  *(v8 + 16) = v9;
  *v9 = 0;
  *a4 = v8;
  locked = type metadata accessor for LockedPreferencesStorage(0, a2, a3, v10);
  v12 = *(*(a2 - 8) + 32);
  v13 = a4 + *(locked + 36);

  return v12(v13, a1, a2);
}

Swift::Void __swiftcall CachedPreferenceStorage.invalidateCache()()
{
  v1 = *v0;
  swift_beginAccess();
  *(v1 + 16) = &_swiftEmptyDictionarySingleton;
}

void LockedPreferencesStorage.withBackingStorage(_:)(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  os_unfair_lock_lock(*(*v3 + 16));
  a1(&v3[*(a3 + 36)]);
  v7 = *(v6 + 16);

  os_unfair_lock_unlock(v7);
}

char *PreferenceDefaults.hasBattery.unsafeMutableAddressor()
{
  if (qword_10058A830 != -1)
  {
    swift_once();
  }

  return &static PreferenceDefaults.hasBattery;
}

uint64_t PreferenceDefaults.EnableUserspaceP2POptions.description.getter(char a1)
{
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  v17 = v2;
  v3._countAndFlagsBits = 10272;
  v3._object = 0xE200000000000000;
  String.append(_:)(v3);
  if ((a1 & 0x7F) != 0)
  {
    if (a1)
    {
      v9._object = 0x80000001004B97E0;
      v9._countAndFlagsBits = 0xD000000000000010;
      String.append(_:)(v9);
      if ((a1 & 2) == 0)
      {
LABEL_4:
        if ((a1 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_16;
      }
    }

    else if ((a1 & 2) == 0)
    {
      goto LABEL_4;
    }

    v10._countAndFlagsBits = 0x614D206172666E49;
    v10._object = 0xEF202C726567616ELL;
    String.append(_:)(v10);
    if ((a1 & 4) == 0)
    {
LABEL_5:
      if ((a1 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }

LABEL_16:
    v11._countAndFlagsBits = 0xD000000000000013;
    v11._object = 0x80000001004B97C0;
    String.append(_:)(v11);
    if ((a1 & 8) == 0)
    {
LABEL_6:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_18;
    }

LABEL_17:
    v12._countAndFlagsBits = 0xD00000000000001ELL;
    v12._object = 0x80000001004B97A0;
    String.append(_:)(v12);
    if ((a1 & 0x10) == 0)
    {
LABEL_7:
      if ((a1 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_19;
    }

LABEL_18:
    v13._countAndFlagsBits = 0xD000000000000018;
    v13._object = 0x80000001004B9780;
    String.append(_:)(v13);
    if ((a1 & 0x20) == 0)
    {
LABEL_8:
      if ((a1 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_20;
    }

LABEL_19:
    v14._countAndFlagsBits = 0xD000000000000022;
    v14._object = 0x80000001004B9750;
    String.append(_:)(v14);
    if ((a1 & 0x40) == 0)
    {
LABEL_9:
      if ((a1 & 0x80) == 0)
      {
LABEL_11:
        sub_100124FC8(2, v16, v17);

        v5 = static String._fromSubstring(_:)();

        v6._countAndFlagsBits = 41;
        v6._object = 0xE100000000000000;
        String.append(_:)(v6);

        return v5;
      }

LABEL_10:
      v4._countAndFlagsBits = 0xD00000000000001BLL;
      v4._object = 0x80000001004B9700;
      String.append(_:)(v4);
      goto LABEL_11;
    }

LABEL_20:
    v15._countAndFlagsBits = 0xD000000000000021;
    v15._object = 0x80000001004B9720;
    String.append(_:)(v15);
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v8._countAndFlagsBits = 0x61736944206C6C41;
  v8._object = 0xED00002964656C62;
  String.append(_:)(v8);
  return v16;
}

uint64_t PreferenceDefaults.InternetSharingOptions.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 6710895;
  }

  if (a1 == 1)
  {
    return 0x6775626564;
  }

  return 0x61427963696C6F70;
}

uint64_t sub_10011B690(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x6775626564;
  if (v2 != 1)
  {
    v4 = 0x61427963696C6F70;
    v3 = 0xEB00000000646573;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 6710895;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6775626564;
  if (*a2 != 1)
  {
    v8 = 0x61427963696C6F70;
    v7 = 0xEB00000000646573;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 6710895;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_10011B794()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10011B834(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10011B8C0(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10011B95C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7CoreP2P18PreferenceDefaultsV22InternetSharingOptionsO8rawValueAESgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_10011B98C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6775626564;
  if (v2 != 1)
  {
    v5 = 0x61427963696C6F70;
    v4 = 0xEB00000000646573;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 6710895;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10011BA04()
{
  result = os_variant_allows_internal_security_policies();
  static PreferenceDefaults.isAppleInternal = result;
  return result;
}

char *PreferenceDefaults.isAppleInternal.unsafeMutableAddressor()
{
  if (qword_10058A820 != -1)
  {
    swift_once();
  }

  return &static PreferenceDefaults.isAppleInternal;
}

id static PreferenceDefaults.deviceName.getter()
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v1 = result;
    v2 = MobileGestalt_copy_userAssignedDeviceName_obj();

    if (!v2)
    {
      return 0;
    }

    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *PreferenceDefaults.isiPad.unsafeMutableAddressor()
{
  if (qword_10058A828 != -1)
  {
    swift_once();
  }

  return &static PreferenceDefaults.isiPad;
}

void sub_10011BBCC(uint64_t a1, uint64_t (*a2)(void), _BYTE *a3)
{
  v5 = MobileGestalt_get_current_device();
  if (v5)
  {
    v6 = v5;
    v7 = a2();

    *a3 = v7;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10011BC48(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

uint64_t sub_10011BC94(char *a1, char *a2)
{
  v2 = *a2;
  v3 = PreferencesName.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == PreferencesName.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10011BD1C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  PreferencesName.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10011BD80(uint64_t a1)
{
  PreferencesName.rawValue.getter(*v1);
  String.hash(into:)();
}

Swift::Int sub_10011BDD4(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  PreferencesName.rawValue.getter(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10011BE34@<X0>(Swift::String *a1@<X0>, CoreP2P::PreferencesName_optional *a2@<X8>)
{
  result = _s7CoreP2P15PreferencesNameO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

unint64_t sub_10011BE64@<X0>(unint64_t *a1@<X8>)
{
  result = PreferencesName.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10011BE90@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a5 - 8) + 32))(a8, a1, a5);
  v15 = type metadata accessor for Preferences.Preference(0, a5, a6, a7);
  *(a8 + v15[11]) = a2;
  result = (*(*(a6 - 8) + 32))(a8 + v15[12], a3, a6);
  *(a8 + v15[13]) = a4;
  return result;
}

void (*Preferences.Preference.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v7 = *(a2 + 24);
  v5[2] = v7;
  v8 = *(v7 - 8);
  v5[3] = v8;
  v9 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v5[4] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(v9);
    v10 = malloc(v9);
  }

  v6[5] = v10;
  Preferences.Preference.wrappedValue.getter(a2, v10);
  return sub_10011C098;
}

uint64_t Preferences.Preference.description.getter(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = 0;
  v12 = 0xE000000000000000;
  v10[15] = *(v1 + *(v7 + 44));
  _print_unlocked<A, B>(_:_:)();
  v8._countAndFlagsBits = 2112800;
  v8._object = 0xE300000000000000;
  String.append(_:)(v8);
  Preferences.Preference.wrappedValue.getter(a1, v6);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  (*(v4 + 8))(v6, v3);
  return v11;
}

uint64_t sub_10011C210@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v26 = a2;
  v27 = a4;
  v25 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin();
  v17 = &v25 - v16;
  v18 = *(a5 - 8);
  v19 = __chkstk_darwin();
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21, a1, a5, v19);
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v18 + 8))(a1, a5);
  v28[0] = a5;
  v28[1] = a6;
  v28[2] = a7;
  v28[3] = a8;
  v22 = type metadata accessor for Preferences.EnumPreference(0, v28);
  v23 = v25;
  sub_10011BE90(v21, v26, v17, v27, a5, AssociatedTypeWitness, a7, v25 + *(v22 + 52));
  return (*(*(a6 - 8) + 32))(v23, a3, a6);
}

uint64_t sub_10011C410(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v5 = *(*(*(a2 + 24) - 8) + 8);

  return v5(a1);
}

void (*Preferences.EnumPreference.wrappedValue.modify(void *a1, void *a2))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v7 = a2[3];
  v5[2] = v7;
  v8 = *(v7 - 8);
  v5[3] = v8;
  v9 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v5[4] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(v9);
    v10 = malloc(v9);
  }

  v6[5] = v10;
  Preferences.EnumPreference.wrappedValue.getter(a2, v10);
  return sub_10011C58C;
}

void sub_10011C5A4(uint64_t **a1, char a2, void (*a3)(void *, uint64_t))
{
  v4 = *a1;
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v8 = (*a1)[3];
  v9 = **a1;
  if (a2)
  {
    (*(v8 + 16))((*a1)[4], v6, v7);
    a3(v5, v9);
    v10 = *(v8 + 8);
    v10(v5, v7);
    v10(v6, v7);
  }

  else
  {
    a3((*a1)[5], v9);
    (*(v8 + 8))(v6, v7);
  }

  free(v6);
  free(v5);

  free(v4);
}

Swift::Void __swiftcall Preferences.EnumPreference.reset()()
{
  v2 = v0;
  v3 = v1 + *(v0 + 52);
  v4 = *(v0 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Preferences.Preference(0, v4, AssociatedTypeWitness, *(v2 + 32));
  (*(*(v6 + 32) + 32))(*(v3 + *(v6 + 44)), *(v6 + 16));
}

uint64_t Preferences.EnumPreference.description.getter(void *a1)
{
  v3 = a1[3];
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = 0;
  v15 = 0xE000000000000000;
  v8 = v1 + *(v7 + 52);
  v9 = *(v7 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13[15] = *(v8 + *(type metadata accessor for Preferences.Preference(0, v9, AssociatedTypeWitness, a1[4]) + 44));
  _print_unlocked<A, B>(_:_:)();
  v11._countAndFlagsBits = 2112800;
  v11._object = 0xE300000000000000;
  String.append(_:)(v11);
  Preferences.EnumPreference.wrappedValue.getter(a1, v6);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  (*(v4 + 8))(v6, v3);
  return v14;
}

unint64_t Preferences.WiFiAddressPreference.wrappedValue.getter(uint64_t a1)
{
  v1 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for Data, *(a1 + 24));
  Preferences.Preference.wrappedValue.getter(v1, v4);
  v2 = sub_1000172CC(v4[0], v4[1]);
  return v2 & 0xFFFFFFFFFFFFLL | ((HIWORD(v2) & 1) << 48);
}

uint64_t Preferences.WiFiAddressPreference.wrappedValue.setter(unint64_t a1, uint64_t a2)
{
  if ((a1 & 0x1000000000000) != 0)
  {
    v16 = type metadata accessor for Preferences.Preference(0, *(a2 + 16), &type metadata for Data, *(a2 + 24));
    v17 = *(*(v16 + 32) + 32);
    v18 = *(v16 + 16);
    v19 = *(v2 + *(v16 + 44));

    return v17(v19, v18);
  }

  else
  {
    v4 = a1 >> 8;
    v5 = a1 >> 16;
    v6 = a1 >> 24;
    v7 = HIDWORD(a1);
    v8 = a1 >> 40;
    v9 = a1;
    sub_10005DC58(&qword_10058B3C0, &qword_100481920);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1004817D0;
    *(v10 + 32) = v9;
    *(v10 + 33) = v4;
    *(v10 + 34) = v5;
    *(v10 + 35) = v6;
    *(v10 + 36) = v7;
    *(v10 + 37) = v8;
    v11 = sub_10002D874(v10);
    v13 = v12;

    v20 = v11;
    v21 = v13;
    v14 = type metadata accessor for Preferences.Preference(0, *(a2 + 16), &type metadata for Data, *(a2 + 24));
    sub_10012526C(&v20, v14);
    return sub_1000124C8(v20, v21);
  }
}

uint64_t (*Preferences.WiFiAddressPreference.wrappedValue.modify(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  v4 = Preferences.WiFiAddressPreference.wrappedValue.getter(a2);
  *(a1 + 20) = WORD2(v4);
  *(a1 + 16) = v4;
  *(a1 + 22) = BYTE6(v4) & 1;
  return sub_10011CAD4;
}

Swift::Void __swiftcall Preferences.WiFiAddressPreference.reset()()
{
  v2 = type metadata accessor for Preferences.Preference(0, *(v0 + 16), &type metadata for Data, *(v0 + 24));
  v3 = *(*(v2 + 32) + 32);
  v4 = *(v2 + 16);
  v5 = *(v1 + *(v2 + 44));

  v3(v5, v4);
}

uint64_t Preferences.WiFiAddressPreference.description.getter(uint64_t a1)
{
  v2 = Preferences.WiFiAddressPreference.wrappedValue.getter(a1);
  if ((v2 & 0x1000000000000) != 0)
  {
    type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for Data, *(a1 + 24));
    _print_unlocked<A, B>(_:_:)();
    v6._countAndFlagsBits = 0x6F646E6172203D20;
    v6._object = 0xE90000000000006DLL;
    String.append(_:)(v6);
  }

  else
  {
    v3 = v2;
    type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for Data, *(a1 + 24));
    _print_unlocked<A, B>(_:_:)();
    v4._countAndFlagsBits = 2112800;
    v4._object = 0xE300000000000000;
    String.append(_:)(v4);
    v5._countAndFlagsBits = WiFiAddress.description.getter(v3 & 0xFFFFFFFFFFFFLL);
    String.append(_:)(v5);
  }

  return 0;
}

uint64_t Preferences.automaticallyUseEncryption.getter(uint64_t a1)
{
  v1 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for Bool, *(a1 + 24));
  Preferences.Preference.wrappedValue.getter(v1, &v3);
  return v3;
}

uint64_t Preferences.automaticallyUseEncryption.setter(char a1, uint64_t a2)
{
  v4 = a1;
  v2 = type metadata accessor for Preferences.Preference(0, *(a2 + 16), &type metadata for Bool, *(a2 + 24));
  return sub_10012526C(&v4, v2);
}

uint64_t (*Preferences.automaticallyUseEncryption.modify(uint64_t *a1, uint64_t a2))()
{
  v3 = type metadata accessor for Preferences.Preference(0, *(a2 + 16), &type metadata for Bool, *(a2 + 24));
  *a1 = v3;
  v4 = *(v3 - 8);
  v5 = v4;
  a1[1] = v4;
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(*(v4 + 64));
  }

  a1[2] = v6;
  (*(v5 + 16))();
  Preferences.Preference.wrappedValue.getter(v3, (a1 + 3));
  return sub_100127940;
}

uint64_t Preferences.$automaticallyUseEncryption.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for Bool, *(a1 + 24));
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t Preferences.disableAuthentication.getter(uint64_t a1)
{
  v1 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for Bool, *(a1 + 24));
  Preferences.Preference.wrappedValue.getter(v1, &v3);
  return v3;
}

uint64_t Preferences.disableAuthentication.setter(char a1, uint64_t a2)
{
  v4 = a1;
  v2 = type metadata accessor for Preferences.Preference(0, *(a2 + 16), &type metadata for Bool, *(a2 + 24));
  return sub_10012526C(&v4, v2);
}

uint64_t (*Preferences.disableAuthentication.modify(uint64_t *a1, uint64_t a2))()
{
  v3 = type metadata accessor for Preferences.Preference(0, *(a2 + 16), &type metadata for Bool, *(a2 + 24));
  *a1 = v3;
  v4 = *(v3 - 8);
  v5 = v4;
  a1[1] = v4;
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(*(v4 + 64));
  }

  a1[2] = v6;
  (*(v5 + 16))();
  Preferences.Preference.wrappedValue.getter(v3, (a1 + 3));
  return sub_100127940;
}

uint64_t Preferences.$disableAuthentication.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for Bool, *(a1 + 24));
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Preferences.enableNANPairing.getter(uint64_t a1)
{
  v1 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for Bool, *(a1 + 24));
  Preferences.Preference.wrappedValue.getter(v1, &v3);
  return v3;
}

uint64_t Preferences.enableNANPairing.setter(char a1, uint64_t a2)
{
  v4 = a1;
  v2 = type metadata accessor for Preferences.Preference(0, *(a2 + 16), &type metadata for Bool, *(a2 + 24));
  return sub_10012526C(&v4, v2);
}

uint64_t (*Preferences.enableNANPairing.modify(uint64_t *a1, uint64_t a2))()
{
  v3 = type metadata accessor for Preferences.Preference(0, *(a2 + 16), &type metadata for Bool, *(a2 + 24));
  *a1 = v3;
  v4 = *(v3 - 8);
  v5 = v4;
  a1[1] = v4;
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(*(v4 + 64));
  }

  a1[2] = v6;
  (*(v5 + 16))();
  Preferences.Preference.wrappedValue.getter(v3, (a1 + 3));
  return sub_100127940;
}

uint64_t Preferences.$enableNANPairing.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for Bool, *(a1 + 24));
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Preferences.enableNANPairingLogs.getter(uint64_t a1)
{
  v1 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for Bool, *(a1 + 24));
  Preferences.Preference.wrappedValue.getter(v1, &v3);
  return v3;
}

uint64_t Preferences.enableNANPairingLogs.setter(char a1, uint64_t a2)
{
  v4 = a1;
  v2 = type metadata accessor for Preferences.Preference(0, *(a2 + 16), &type metadata for Bool, *(a2 + 24));
  return sub_10012526C(&v4, v2);
}

uint64_t (*Preferences.enableNANPairingLogs.modify(uint64_t *a1, uint64_t a2))()
{
  v3 = type metadata accessor for Preferences.Preference(0, *(a2 + 16), &type metadata for Bool, *(a2 + 24));
  *a1 = v3;
  v4 = *(v3 - 8);
  v5 = v4;
  a1[1] = v4;
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(*(v4 + 64));
  }

  a1[2] = v6;
  (*(v5 + 16))();
  Preferences.Preference.wrappedValue.getter(v3, (a1 + 3));
  return sub_100127940;
}

uint64_t Preferences.$enableNANPairingLogs.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for Bool, *(a1 + 24));
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Preferences.enableNANPairingCertification.getter(uint64_t a1)
{
  v1 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for Bool, *(a1 + 24));
  Preferences.Preference.wrappedValue.getter(v1, &v3);
  return v3;
}

uint64_t Preferences.enableNANPairingCertification.setter(char a1, uint64_t a2)
{
  v4 = a1;
  v2 = type metadata accessor for Preferences.Preference(0, *(a2 + 16), &type metadata for Bool, *(a2 + 24));
  return sub_10012526C(&v4, v2);
}

uint64_t (*Preferences.enableNANPairingCertification.modify(uint64_t *a1, uint64_t a2))()
{
  v3 = type metadata accessor for Preferences.Preference(0, *(a2 + 16), &type metadata for Bool, *(a2 + 24));
  *a1 = v3;
  v4 = *(v3 - 8);
  v5 = v4;
  a1[1] = v4;
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(*(v4 + 64));
  }

  a1[2] = v6;
  (*(v5 + 16))();
  Preferences.Preference.wrappedValue.getter(v3, (a1 + 3));
  return sub_100127940;
}

uint64_t Preferences.$enableNANPairingCertification.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for Bool, *(a1 + 24));
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Preferences.enableMulticastKeys.getter(uint64_t a1)
{
  v1 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for Bool, *(a1 + 24));
  Preferences.Preference.wrappedValue.getter(v1, &v3);
  return v3;
}

uint64_t Preferences.enableMulticastKeys.setter(char a1, uint64_t a2)
{
  v4 = a1;
  v2 = type metadata accessor for Preferences.Preference(0, *(a2 + 16), &type metadata for Bool, *(a2 + 24));
  return sub_10012526C(&v4, v2);
}

uint64_t (*Preferences.enableMulticastKeys.modify(uint64_t *a1, uint64_t a2))()
{
  v3 = type metadata accessor for Preferences.Preference(0, *(a2 + 16), &type metadata for Bool, *(a2 + 24));
  *a1 = v3;
  v4 = *(v3 - 8);
  v5 = v4;
  a1[1] = v4;
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(*(v4 + 64));
  }

  a1[2] = v6;
  (*(v5 + 16))();
  Preferences.Preference.wrappedValue.getter(v3, (a1 + 3));
  return sub_100127940;
}

uint64_t Preferences.$enableMulticastKeys.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for Bool, *(a1 + 24));
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Preferences.subscribeFilterEnabled.getter(uint64_t a1)
{
  v1 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for Bool, *(a1 + 24));
  Preferences.Preference.wrappedValue.getter(v1, &v3);
  return v3;
}

uint64_t Preferences.subscribeFilterEnabled.setter(char a1, uint64_t a2)
{
  v4 = a1;
  v2 = type metadata accessor for Preferences.Preference(0, *(a2 + 16), &type metadata for Bool, *(a2 + 24));
  return sub_10012526C(&v4, v2);
}

uint64_t (*Preferences.subscribeFilterEnabled.modify(uint64_t *a1, uint64_t a2))()
{
  v3 = type metadata accessor for Preferences.Preference(0, *(a2 + 16), &type metadata for Bool, *(a2 + 24));
  *a1 = v3;
  v4 = *(v3 - 8);
  v5 = v4;
  a1[1] = v4;
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(*(v4 + 64));
  }

  a1[2] = v6;
  (*(v5 + 16))();
  Preferences.Preference.wrappedValue.getter(v3, (a1 + 3));
  return sub_100127940;
}

uint64_t Preferences.$subscribeFilterEnabled.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for Bool, *(a1 + 24));
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Preferences.unsolicitedPublishOnUpdate.getter(uint64_t a1)
{
  v1 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for Bool, *(a1 + 24));
  Preferences.Preference.wrappedValue.getter(v1, &v3);
  return v3;
}

uint64_t Preferences.unsolicitedPublishOnUpdate.setter(char a1, uint64_t a2)
{
  v4 = a1;
  v2 = type metadata accessor for Preferences.Preference(0, *(a2 + 16), &type metadata for Bool, *(a2 + 24));
  return sub_10012526C(&v4, v2);
}

uint64_t (*Preferences.unsolicitedPublishOnUpdate.modify(uint64_t *a1, uint64_t a2))()
{
  v3 = type metadata accessor for Preferences.Preference(0, *(a2 + 16), &type metadata for Bool, *(a2 + 24));
  *a1 = v3;
  v4 = *(v3 - 8);
  v5 = v4;
  a1[1] = v4;
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(*(v4 + 64));
  }

  a1[2] = v6;
  (*(v5 + 16))();
  Preferences.Preference.wrappedValue.getter(v3, (a1 + 3));
  return sub_100127940;
}

uint64_t Preferences.$unsolicitedPublishOnUpdate.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 60);
  v5 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for Bool, *(a1 + 24));
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Preferences.unsolicitedPublishSeconds.getter(uint64_t a1)
{
  v1 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for UInt32, *(a1 + 24));
  Preferences.Preference.wrappedValue.getter(v1, &v3);
  return v3;
}

uint64_t Preferences.unsolicitedPublishSeconds.setter(int a1, uint64_t a2)
{
  v4 = a1;
  v2 = type metadata accessor for Preferences.Preference(0, *(a2 + 16), &type metadata for UInt32, *(a2 + 24));
  return sub_10012526C(&v4, v2);
}

uint64_t (*Preferences.unsolicitedPublishSeconds.modify(uint64_t **a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = type metadata accessor for Preferences.Preference(0, *(a2 + 16), &type metadata for UInt32, *(a2 + 24));
  *v5 = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[1] = v7;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v7 + 64));
  }

  v5[2] = v9;
  (*(v8 + 16))();
  Preferences.Preference.wrappedValue.getter(v6, (v5 + 3));
  return sub_100127944;
}

uint64_t Preferences.$unsolicitedPublishSeconds.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 64);
  v5 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for UInt32, *(a1 + 24));
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Preferences.internetSharingOptions.getter(uint64_t a1)
{
  v1 = *(a1 + 24);
  v4[0] = *(a1 + 16);
  v4[1] = &type metadata for PreferenceDefaults.InternetSharingOptions;
  v4[2] = v1;
  v4[3] = sub_1001254BC();
  v2 = type metadata accessor for Preferences.EnumPreference(0, v4);
  Preferences.EnumPreference.wrappedValue.getter(v2, v4);
  return LOBYTE(v4[0]);
}

uint64_t Preferences.internetSharingOptions.setter(char a1, uint64_t a2)
{
  v6 = a1;
  v2 = *(a2 + 24);
  v5[0] = *(a2 + 16);
  v5[1] = &type metadata for PreferenceDefaults.InternetSharingOptions;
  v5[2] = v2;
  v5[3] = sub_1001254BC();
  v3 = type metadata accessor for Preferences.EnumPreference(0, v5);
  return sub_10012538C(&v6, v3);
}

void (*Preferences.internetSharingOptions.modify(uint64_t *a1, uint64_t a2))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x40uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = sub_1001254BC();
  *v5 = v6;
  v5[1] = &type metadata for PreferenceDefaults.InternetSharingOptions;
  v5[2] = v7;
  v5[3] = v8;
  v9 = type metadata accessor for Preferences.EnumPreference(0, v5);
  v5[4] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[5] = v10;
  if (&_swift_coroFrameAlloc)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v10 + 64));
  }

  v5[6] = v12;
  (*(v11 + 16))();
  Preferences.EnumPreference.wrappedValue.getter(v9, (v5 + 7));
  return sub_10011E200;
}

void sub_10011E200(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 40);
  v3 = *(*a1 + 48);
  v5 = *(*a1 + 32);
  v6 = 57;
  if ((a2 & 1) == 0)
  {
    v6 = 58;
  }

  v2[v6] = *(*a1 + 56);
  sub_10012538C(&v2[v6], v5);
  (*(v4 + 8))(v3, v5);
  free(v3);

  free(v2);
}

uint64_t Preferences.$internetSharingOptions.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 68);
  v5 = *(a1 + 24);
  v8[0] = *(a1 + 16);
  v8[1] = &type metadata for PreferenceDefaults.InternetSharingOptions;
  v8[2] = v5;
  v8[3] = sub_1001254BC();
  v6 = type metadata accessor for Preferences.EnumPreference(0, v8);
  return (*(*(v6 - 8) + 16))(a2, v2 + v4, v6);
}

uint64_t Preferences.createNetworkAgent.getter(uint64_t a1)
{
  v1 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for Bool, *(a1 + 24));
  Preferences.Preference.wrappedValue.getter(v1, &v3);
  return v3;
}

uint64_t Preferences.createNetworkAgent.setter(char a1, uint64_t a2)
{
  v4 = a1;
  v2 = type metadata accessor for Preferences.Preference(0, *(a2 + 16), &type metadata for Bool, *(a2 + 24));
  return sub_10012526C(&v4, v2);
}

uint64_t (*Preferences.createNetworkAgent.modify(uint64_t *a1, uint64_t a2))()
{
  v3 = type metadata accessor for Preferences.Preference(0, *(a2 + 16), &type metadata for Bool, *(a2 + 24));
  *a1 = v3;
  v4 = *(v3 - 8);
  v5 = v4;
  a1[1] = v4;
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(*(v4 + 64));
  }

  a1[2] = v6;
  (*(v5 + 16))();
  Preferences.Preference.wrappedValue.getter(v3, (a1 + 3));
  return sub_100127940;
}

uint64_t Preferences.$createNetworkAgent.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 72);
  v5 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for Bool, *(a1 + 24));
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Preferences.edgeKitSupport.getter(uint64_t a1)
{
  v1 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for Bool, *(a1 + 24));
  Preferences.Preference.wrappedValue.getter(v1, &v3);
  return v3;
}

uint64_t Preferences.edgeKitSupport.setter(char a1, uint64_t a2)
{
  v4 = a1;
  v2 = type metadata accessor for Preferences.Preference(0, *(a2 + 16), &type metadata for Bool, *(a2 + 24));
  return sub_10012526C(&v4, v2);
}

uint64_t (*Preferences.edgeKitSupport.modify(uint64_t *a1, uint64_t a2))()
{
  v3 = type metadata accessor for Preferences.Preference(0, *(a2 + 16), &type metadata for Bool, *(a2 + 24));
  *a1 = v3;
  v4 = *(v3 - 8);
  v5 = v4;
  a1[1] = v4;
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(*(v4 + 64));
  }

  a1[2] = v6;
  (*(v5 + 16))();
  Preferences.Preference.wrappedValue.getter(v3, (a1 + 3));
  return sub_10011E6E8;
}

uint64_t Preferences.$edgeKitSupport.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 76);
  v5 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for Bool, *(a1 + 24));
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Preferences.linkTestIntervalMinutes.getter(uint64_t a1)
{
  v1 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for UInt32, *(a1 + 24));
  Preferences.Preference.wrappedValue.getter(v1, &v3);
  return v3;
}

uint64_t Preferences.linkTestIntervalMinutes.setter(int a1, uint64_t a2)
{
  v4 = a1;
  v2 = type metadata accessor for Preferences.Preference(0, *(a2 + 16), &type metadata for UInt32, *(a2 + 24));
  return sub_10012526C(&v4, v2);
}

uint64_t (*Preferences.linkTestIntervalMinutes.modify(uint64_t **a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = type metadata accessor for Preferences.Preference(0, *(a2 + 16), &type metadata for UInt32, *(a2 + 24));
  *v5 = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[1] = v7;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v7 + 64));
  }

  v5[2] = v9;
  (*(v8 + 16))();
  Preferences.Preference.wrappedValue.getter(v6, (v5 + 3));
  return sub_100127944;
}

uint64_t Preferences.$linkTestIntervalMinutes.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 80);
  v5 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for UInt32, *(a1 + 24));
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Preferences.disableAWDLLinkWhenInactive.getter(uint64_t a1)
{
  v1 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for Bool, *(a1 + 24));
  Preferences.Preference.wrappedValue.getter(v1, &v3);
  return v3;
}

uint64_t Preferences.disableAWDLLinkWhenInactive.setter(char a1, uint64_t a2)
{
  v4 = a1;
  v2 = type metadata accessor for Preferences.Preference(0, *(a2 + 16), &type metadata for Bool, *(a2 + 24));
  return sub_10012526C(&v4, v2);
}

uint64_t (*Preferences.disableAWDLLinkWhenInactive.modify(uint64_t *a1, uint64_t a2))()
{
  v3 = type metadata accessor for Preferences.Preference(0, *(a2 + 16), &type metadata for Bool, *(a2 + 24));
  *a1 = v3;
  v4 = *(v3 - 8);
  v5 = v4;
  a1[1] = v4;
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(*(v4 + 64));
  }

  a1[2] = v6;
  (*(v5 + 16))();
  Preferences.Preference.wrappedValue.getter(v3, (a1 + 3));
  return sub_100127940;
}

uint64_t Preferences.$disableAWDLLinkWhenInactive.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 84);
  v5 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for Bool, *(a1 + 24));
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Preferences.disableMulticastRateAdapter.getter(uint64_t a1)
{
  v1 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for Bool, *(a1 + 24));
  Preferences.Preference.wrappedValue.getter(v1, &v3);
  return v3;
}

uint64_t Preferences.disableMulticastRateAdapter.setter(char a1, uint64_t a2)
{
  v4 = a1;
  v2 = type metadata accessor for Preferences.Preference(0, *(a2 + 16), &type metadata for Bool, *(a2 + 24));
  return sub_10012526C(&v4, v2);
}

uint64_t (*Preferences.disableMulticastRateAdapter.modify(uint64_t *a1, uint64_t a2))()
{
  v3 = type metadata accessor for Preferences.Preference(0, *(a2 + 16), &type metadata for Bool, *(a2 + 24));
  *a1 = v3;
  v4 = *(v3 - 8);
  v5 = v4;
  a1[1] = v4;
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(*(v4 + 64));
  }

  a1[2] = v6;
  (*(v5 + 16))();
  Preferences.Preference.wrappedValue.getter(v3, (a1 + 3));
  return sub_100127940;
}

uint64_t Preferences.$disableMulticastRateAdapter.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 88);
  v5 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for Bool, *(a1 + 24));
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

double Preferences.multicastRateAdapterSettlingPER.getter(uint64_t a1)
{
  v1 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for Double, *(a1 + 24));
  Preferences.Preference.wrappedValue.getter(v1, &v3);
  return v3;
}

uint64_t Preferences.multicastRateAdapterSettlingPER.setter(uint64_t a1, double a2)
{
  v4 = a2;
  v2 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for Double, *(a1 + 24));
  return sub_10012526C(&v4, v2);
}

uint64_t (*Preferences.multicastRateAdapterSettlingPER.modify(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = type metadata accessor for Preferences.Preference(0, *(a2 + 16), &type metadata for Double, *(a2 + 24));
  v5[3] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[4] = v7;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v7 + 64));
  }

  v5[5] = v9;
  (*(v8 + 16))();
  Preferences.Preference.wrappedValue.getter(v6, v5);
  return sub_10011EFD0;
}

void sub_10011EFD0(void **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[4];
  v3 = (*a1)[5];
  v5 = (*a1)[3];
  v6 = 2;
  if (a2)
  {
    v6 = 1;
  }

  v2[v6] = **a1;
  sub_10012526C(&v2[v6], v5);
  (*(v4 + 8))(v3, v5);
  free(v3);

  free(v2);
}

uint64_t Preferences.$multicastRateAdapterSettlingPER.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 92);
  v5 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for Double, *(a1 + 24));
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Preferences.multicastRateAdapterHeartBeatInterval.getter(uint64_t a1)
{
  v1 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for UInt32, *(a1 + 24));
  Preferences.Preference.wrappedValue.getter(v1, &v3);
  return v3;
}

uint64_t Preferences.multicastRateAdapterHeartBeatInterval.setter(int a1, uint64_t a2)
{
  v4 = a1;
  v2 = type metadata accessor for Preferences.Preference(0, *(a2 + 16), &type metadata for UInt32, *(a2 + 24));
  return sub_10012526C(&v4, v2);
}

uint64_t (*Preferences.multicastRateAdapterHeartBeatInterval.modify(uint64_t **a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = type metadata accessor for Preferences.Preference(0, *(a2 + 16), &type metadata for UInt32, *(a2 + 24));
  *v5 = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[1] = v7;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v7 + 64));
  }

  v5[2] = v9;
  (*(v8 + 16))();
  Preferences.Preference.wrappedValue.getter(v6, (v5 + 3));
  return sub_100127944;
}

uint64_t Preferences.$multicastRateAdapterHeartBeatInterval.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 96);
  v5 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for UInt32, *(a1 + 24));
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Preferences.multicastSpatialStreams.getter(uint64_t a1)
{
  v1 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for UInt32, *(a1 + 24));
  Preferences.Preference.wrappedValue.getter(v1, &v3);
  return v3;
}

uint64_t Preferences.multicastSpatialStreams.setter(int a1, uint64_t a2)
{
  v4 = a1;
  v2 = type metadata accessor for Preferences.Preference(0, *(a2 + 16), &type metadata for UInt32, *(a2 + 24));
  return sub_10012526C(&v4, v2);
}

uint64_t (*Preferences.multicastSpatialStreams.modify(uint64_t **a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = type metadata accessor for Preferences.Preference(0, *(a2 + 16), &type metadata for UInt32, *(a2 + 24));
  *v5 = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[1] = v7;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v7 + 64));
  }

  v5[2] = v9;
  (*(v8 + 16))();
  Preferences.Preference.wrappedValue.getter(v6, (v5 + 3));
  return sub_100127944;
}

uint64_t Preferences.$multicastSpatialStreams.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 100);
  v5 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for UInt32, *(a1 + 24));
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Preferences.autoInternetSharingOnInfraLost.getter(uint64_t a1)
{
  v1 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for Bool, *(a1 + 24));
  Preferences.Preference.wrappedValue.getter(v1, &v3);
  return v3;
}

uint64_t Preferences.autoInternetSharingOnInfraLost.setter(char a1, uint64_t a2)
{
  v4 = a1;
  v2 = type metadata accessor for Preferences.Preference(0, *(a2 + 16), &type metadata for Bool, *(a2 + 24));
  return sub_10012526C(&v4, v2);
}

uint64_t (*Preferences.autoInternetSharingOnInfraLost.modify(uint64_t *a1, uint64_t a2))()
{
  v3 = type metadata accessor for Preferences.Preference(0, *(a2 + 16), &type metadata for Bool, *(a2 + 24));
  *a1 = v3;
  v4 = *(v3 - 8);
  v5 = v4;
  a1[1] = v4;
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(*(v4 + 64));
  }

  a1[2] = v6;
  (*(v5 + 16))();
  Preferences.Preference.wrappedValue.getter(v3, (a1 + 3));
  return sub_100127940;
}

uint64_t Preferences.$autoInternetSharingOnInfraLost.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 104);
  v5 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for Bool, *(a1 + 24));
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Preferences.dynamicSDBSwitch.getter(uint64_t a1)
{
  v1 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for Bool, *(a1 + 24));
  Preferences.Preference.wrappedValue.getter(v1, &v3);
  return v3;
}

uint64_t Preferences.dynamicSDBSwitch.setter(char a1, uint64_t a2)
{
  v4 = a1;
  v2 = type metadata accessor for Preferences.Preference(0, *(a2 + 16), &type metadata for Bool, *(a2 + 24));
  return sub_10012526C(&v4, v2);
}

uint64_t (*Preferences.dynamicSDBSwitch.modify(uint64_t *a1, uint64_t a2))()
{
  v3 = type metadata accessor for Preferences.Preference(0, *(a2 + 16), &type metadata for Bool, *(a2 + 24));
  *a1 = v3;
  v4 = *(v3 - 8);
  v5 = v4;
  a1[1] = v4;
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(*(v4 + 64));
  }

  a1[2] = v6;
  (*(v5 + 16))();
  Preferences.Preference.wrappedValue.getter(v3, (a1 + 3));
  return sub_100127940;
}

uint64_t Preferences.$dynamicSDBSwitch.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 108);
  v5 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for Bool, *(a1 + 24));
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Preferences.dynamicSDBNoReassoc.getter(uint64_t a1)
{
  v1 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for Bool, *(a1 + 24));
  Preferences.Preference.wrappedValue.getter(v1, &v3);
  return v3;
}

uint64_t Preferences.dynamicSDBNoReassoc.setter(char a1, uint64_t a2)
{
  v4 = a1;
  v2 = type metadata accessor for Preferences.Preference(0, *(a2 + 16), &type metadata for Bool, *(a2 + 24));
  return sub_10012526C(&v4, v2);
}

uint64_t (*Preferences.dynamicSDBNoReassoc.modify(uint64_t *a1, uint64_t a2))()
{
  v3 = type metadata accessor for Preferences.Preference(0, *(a2 + 16), &type metadata for Bool, *(a2 + 24));
  *a1 = v3;
  v4 = *(v3 - 8);
  v5 = v4;
  a1[1] = v4;
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(*(v4 + 64));
  }

  a1[2] = v6;
  (*(v5 + 16))();
  Preferences.Preference.wrappedValue.getter(v3, (a1 + 3));
  return sub_100127940;
}

uint64_t Preferences.$dynamicSDBNoReassoc.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 112);
  v5 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for Bool, *(a1 + 24));
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Preferences.nanServiceTimeout.getter(uint64_t a1)
{
  v1 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for UInt32, *(a1 + 24));
  Preferences.Preference.wrappedValue.getter(v1, &v3);
  return v3;
}

uint64_t Preferences.nanServiceTimeout.setter(int a1, uint64_t a2)
{
  v4 = a1;
  v2 = type metadata accessor for Preferences.Preference(0, *(a2 + 16), &type metadata for UInt32, *(a2 + 24));
  return sub_10012526C(&v4, v2);
}

uint64_t (*Preferences.nanServiceTimeout.modify(uint64_t **a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = type metadata accessor for Preferences.Preference(0, *(a2 + 16), &type metadata for UInt32, *(a2 + 24));
  *v5 = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[1] = v7;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v7 + 64));
  }

  v5[2] = v9;
  (*(v8 + 16))();
  Preferences.Preference.wrappedValue.getter(v6, (v5 + 3));
  return sub_10011FDB4;
}

void sub_10011FDB8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  v6 = 32;
  if (a2)
  {
    v6 = 28;
  }

  *(v2 + v6) = *(*a1 + 6);
  sub_10012526C(v2 + v6, v5);
  (*(v4 + 8))(v3, v5);
  free(v3);

  free(v2);
}

uint64_t Preferences.$nanServiceTimeout.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 116);
  v5 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for UInt32, *(a1 + 24));
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Preferences.disableNanMaxCapabilityCheck.getter(uint64_t a1)
{
  v1 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for Bool, *(a1 + 24));
  Preferences.Preference.wrappedValue.getter(v1, &v3);
  return v3;
}

uint64_t Preferences.disableNanMaxCapabilityCheck.setter(char a1, uint64_t a2)
{
  v4 = a1;
  v2 = type metadata accessor for Preferences.Preference(0, *(a2 + 16), &type metadata for Bool, *(a2 + 24));
  return sub_10012526C(&v4, v2);
}

uint64_t (*Preferences.disableNanMaxCapabilityCheck.modify(uint64_t *a1, uint64_t a2))()
{
  v3 = type metadata accessor for Preferences.Preference(0, *(a2 + 16), &type metadata for Bool, *(a2 + 24));
  *a1 = v3;
  v4 = *(v3 - 8);
  v5 = v4;
  a1[1] = v4;
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(*(v4 + 64));
  }

  a1[2] = v6;
  (*(v5 + 16))();
  Preferences.Preference.wrappedValue.getter(v3, (a1 + 3));
  return sub_100127940;
}

uint64_t Preferences.$disableNanMaxCapabilityCheck.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 120);
  v5 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for Bool, *(a1 + 24));
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Preferences.awdl.getter(uint64_t a1)
{
  v1 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for Bool, *(a1 + 24));
  Preferences.Preference.wrappedValue.getter(v1, &v3);
  return v3;
}

uint64_t Preferences.awdl.setter(char a1, uint64_t a2)
{
  v4 = a1;
  v2 = type metadata accessor for Preferences.Preference(0, *(a2 + 16), &type metadata for Bool, *(a2 + 24));
  return sub_10012526C(&v4, v2);
}

uint64_t (*Preferences.awdl.modify(uint64_t *a1, uint64_t a2))()
{
  v3 = type metadata accessor for Preferences.Preference(0, *(a2 + 16), &type metadata for Bool, *(a2 + 24));
  *a1 = v3;
  v4 = *(v3 - 8);
  v5 = v4;
  a1[1] = v4;
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(*(v4 + 64));
  }

  a1[2] = v6;
  (*(v5 + 16))();
  Preferences.Preference.wrappedValue.getter(v3, (a1 + 3));
  return sub_100127940;
}

uint64_t Preferences.$awdl.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 124);
  v5 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for Bool, *(a1 + 24));
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

unint64_t Preferences.awdlMACAddress.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for Preferences.WiFiAddressPreference(0, *(a1 + 16), *(a1 + 24), a4);
  v5 = Preferences.WiFiAddressPreference.wrappedValue.getter(v4);
  return v5 & 0xFFFFFFFFFFFFLL | ((HIWORD(v5) & 1) << 48);
}

uint64_t (*Preferences.awdlMACAddress.modify(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v5 = type metadata accessor for Preferences.WiFiAddressPreference(0, *(a2 + 16), *(a2 + 24), a4);
  *a1 = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  *(a1 + 8) = v6;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  *(a1 + 16) = v8;
  (*(v7 + 16))();
  v9 = Preferences.WiFiAddressPreference.wrappedValue.getter(v5);
  *(a1 + 28) = WORD2(v9);
  *(a1 + 24) = v9;
  *(a1 + 30) = BYTE6(v9) & 1;
  return sub_100127948;
}

uint64_t Preferences.$awdlMACAddress.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v5 = *(a1 + 128);
  v6 = type metadata accessor for Preferences.WiFiAddressPreference(0, *(a1 + 16), *(a1 + 24), a3);
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v3 + v5, v6);
}

uint64_t Preferences.nan.getter(uint64_t a1)
{
  v1 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for Bool, *(a1 + 24));
  Preferences.Preference.wrappedValue.getter(v1, &v3);
  return v3;
}

uint64_t Preferences.nan.setter(char a1, uint64_t a2)
{
  v4 = a1;
  v2 = type metadata accessor for Preferences.Preference(0, *(a2 + 16), &type metadata for Bool, *(a2 + 24));
  return sub_10012526C(&v4, v2);
}

uint64_t (*Preferences.nan.modify(uint64_t *a1, uint64_t a2))()
{
  v3 = type metadata accessor for Preferences.Preference(0, *(a2 + 16), &type metadata for Bool, *(a2 + 24));
  *a1 = v3;
  v4 = *(v3 - 8);
  v5 = v4;
  a1[1] = v4;
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(*(v4 + 64));
  }

  a1[2] = v6;
  (*(v5 + 16))();
  Preferences.Preference.wrappedValue.getter(v3, (a1 + 3));
  return sub_100127940;
}

uint64_t Preferences.$nan.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 132);
  v5 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for Bool, *(a1 + 24));
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

unint64_t Preferences.nanMACAddress.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for Preferences.WiFiAddressPreference(0, *(a1 + 16), *(a1 + 24), a4);
  v5 = Preferences.WiFiAddressPreference.wrappedValue.getter(v4);
  return v5 & 0xFFFFFFFFFFFFLL | ((HIWORD(v5) & 1) << 48);
}

uint64_t (*Preferences.nanMACAddress.modify(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v5 = type metadata accessor for Preferences.WiFiAddressPreference(0, *(a2 + 16), *(a2 + 24), a4);
  *a1 = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  *(a1 + 8) = v6;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  *(a1 + 16) = v8;
  (*(v7 + 16))();
  v9 = Preferences.WiFiAddressPreference.wrappedValue.getter(v5);
  *(a1 + 28) = WORD2(v9);
  *(a1 + 24) = v9;
  *(a1 + 30) = BYTE6(v9) & 1;
  return sub_100120918;
}

uint64_t Preferences.$nanMACAddress.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v5 = *(a1 + 136);
  v6 = type metadata accessor for Preferences.WiFiAddressPreference(0, *(a1 + 16), *(a1 + 24), a3);
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v3 + v5, v6);
}

unint64_t Preferences.nanDataMACAddress.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for Preferences.WiFiAddressPreference(0, *(a1 + 16), *(a1 + 24), a4);
  v5 = Preferences.WiFiAddressPreference.wrappedValue.getter(v4);
  return v5 & 0xFFFFFFFFFFFFLL | ((HIWORD(v5) & 1) << 48);
}

uint64_t (*Preferences.nanDataMACAddress.modify(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v5 = type metadata accessor for Preferences.WiFiAddressPreference(0, *(a2 + 16), *(a2 + 24), a4);
  *a1 = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  *(a1 + 8) = v6;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  *(a1 + 16) = v8;
  (*(v7 + 16))();
  v9 = Preferences.WiFiAddressPreference.wrappedValue.getter(v5);
  *(a1 + 28) = WORD2(v9);
  *(a1 + 24) = v9;
  *(a1 + 30) = BYTE6(v9) & 1;
  return sub_100127948;
}

void sub_100120B48(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v3 = *a1;
  Preferences.WiFiAddressPreference.wrappedValue.setter((*(a1 + 24) | (*(a1 + 28) << 32)) & 0xFFFFFFFFFFFFLL | (*(a1 + 30) << 48), *a1);
  (*(v2 + 8))(v1, v3);

  free(v1);
}

uint64_t Preferences.$nanDataMACAddress.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v5 = *(a1 + 140);
  v6 = type metadata accessor for Preferences.WiFiAddressPreference(0, *(a1 + 16), *(a1 + 24), a3);
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v3 + v5, v6);
}

uint64_t Preferences.enableUserspaceP2POptions.setter(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  v2 = *(a2 + 24);
  v5[0] = *(a2 + 16);
  v5[1] = &type metadata for PreferenceDefaults.EnableUserspaceP2POptions;
  v5[2] = v2;
  v5[3] = sub_100047C68();
  v3 = type metadata accessor for Preferences.EnumPreference(0, v5);
  return sub_10012538C(&v6, v3);
}

void (*Preferences.enableUserspaceP2POptions.modify(uint64_t *a1, uint64_t a2))(char **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = sub_100047C68();
  *v5 = v6;
  v5[1] = &type metadata for PreferenceDefaults.EnableUserspaceP2POptions;
  v5[2] = v7;
  v5[3] = v8;
  v9 = type metadata accessor for Preferences.EnumPreference(0, v5);
  v5[7] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[8] = v10;
  if (&_swift_coroFrameAlloc)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v10 + 64));
  }

  v5[9] = v12;
  (*(v11 + 16))();
  Preferences.EnumPreference.wrappedValue.getter(v9, (v5 + 4));
  return sub_100120DE4;
}

void sub_100120DE4(char **a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 8);
  v3 = *(*a1 + 9);
  v5 = *(*a1 + 7);
  v6 = 6;
  if (a2)
  {
    v6 = 5;
  }

  v2[v6] = *(*a1 + 4);
  sub_10012538C(&v2[v6], v5);
  (*(v4 + 8))(v3, v5);
  free(v3);

  free(v2);
}

uint64_t Preferences.$enableUserspaceP2POptions.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 144);
  v5 = *(a1 + 24);
  v8[0] = *(a1 + 16);
  v8[1] = &type metadata for PreferenceDefaults.EnableUserspaceP2POptions;
  v8[2] = v5;
  v8[3] = sub_100047C68();
  v6 = type metadata accessor for Preferences.EnumPreference(0, v8);
  return (*(*(v6 - 8) + 16))(a2, v2 + v4, v6);
}

uint64_t Preferences.reportSoftErrorsWithTTR.getter(uint64_t a1)
{
  v1 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for Bool, *(a1 + 24));
  Preferences.Preference.wrappedValue.getter(v1, &v3);
  return v3;
}

uint64_t Preferences.reportSoftErrorsWithTTR.setter(char a1, uint64_t a2)
{
  v4 = a1;
  v2 = type metadata accessor for Preferences.Preference(0, *(a2 + 16), &type metadata for Bool, *(a2 + 24));
  return sub_10012526C(&v4, v2);
}

uint64_t (*Preferences.reportSoftErrorsWithTTR.modify(uint64_t *a1, uint64_t a2))()
{
  v3 = type metadata accessor for Preferences.Preference(0, *(a2 + 16), &type metadata for Bool, *(a2 + 24));
  *a1 = v3;
  v4 = *(v3 - 8);
  v5 = v4;
  a1[1] = v4;
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(*(v4 + 64));
  }

  a1[2] = v6;
  (*(v5 + 16))();
  Preferences.Preference.wrappedValue.getter(v3, (a1 + 3));
  return sub_100127940;
}

uint64_t Preferences.$reportSoftErrorsWithTTR.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 148);
  v5 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for Bool, *(a1 + 24));
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Preferences.disableWiFiDisconnectRemoteCamera.getter(uint64_t a1)
{
  v1 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for Bool, *(a1 + 24));
  Preferences.Preference.wrappedValue.getter(v1, &v3);
  return v3;
}

uint64_t Preferences.disableWiFiDisconnectRemoteCamera.setter(char a1, uint64_t a2)
{
  v4 = a1;
  v2 = type metadata accessor for Preferences.Preference(0, *(a2 + 16), &type metadata for Bool, *(a2 + 24));
  return sub_10012526C(&v4, v2);
}

uint64_t (*Preferences.disableWiFiDisconnectRemoteCamera.modify(uint64_t *a1, uint64_t a2))()
{
  v3 = type metadata accessor for Preferences.Preference(0, *(a2 + 16), &type metadata for Bool, *(a2 + 24));
  *a1 = v3;
  v4 = *(v3 - 8);
  v5 = v4;
  a1[1] = v4;
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(*(v4 + 64));
  }

  a1[2] = v6;
  (*(v5 + 16))();
  Preferences.Preference.wrappedValue.getter(v3, (a1 + 3));
  return sub_100127940;
}

uint64_t Preferences.$disableWiFiDisconnectRemoteCamera.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 152);
  v5 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for Bool, *(a1 + 24));
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Preferences.allowOnenessWombatCoex.getter(uint64_t a1)
{
  v1 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for Bool, *(a1 + 24));
  Preferences.Preference.wrappedValue.getter(v1, &v3);
  return v3;
}

uint64_t Preferences.allowOnenessWombatCoex.setter(char a1, uint64_t a2)
{
  v4 = a1;
  v2 = type metadata accessor for Preferences.Preference(0, *(a2 + 16), &type metadata for Bool, *(a2 + 24));
  return sub_10012526C(&v4, v2);
}

uint64_t (*Preferences.allowOnenessWombatCoex.modify(uint64_t *a1, uint64_t a2))()
{
  v3 = type metadata accessor for Preferences.Preference(0, *(a2 + 16), &type metadata for Bool, *(a2 + 24));
  *a1 = v3;
  v4 = *(v3 - 8);
  v5 = v4;
  a1[1] = v4;
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(*(v4 + 64));
  }

  a1[2] = v6;
  (*(v5 + 16))();
  Preferences.Preference.wrappedValue.getter(v3, (a1 + 3));
  return sub_100127940;
}

void sub_1001214F8(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1;
  v5 = 25;
  if ((a2 & 1) == 0)
  {
    v5 = 26;
  }

  *(a1 + v5) = *(a1 + 24);
  sub_10012526C(a1 + v5, v4);
  (*(v3 + 8))(v2, v4);

  free(v2);
}

uint64_t Preferences.$allowOnenessWombatCoex.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 156);
  v5 = type metadata accessor for Preferences.Preference(0, *(a1 + 16), &type metadata for Bool, *(a1 + 24));
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Preferences.init(storage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = __chkstk_darwin();
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v8 + 16);
  v12(v11, a1, a2, v9);
  LOBYTE(v25) = 1;
  if (qword_10058A820 != -1)
  {
    swift_once();
  }

  v13 = static PreferenceDefaults.isAppleInternal;
  sub_10011BE90(v11, 0, &v25, static PreferenceDefaults.isAppleInternal, a2, &type metadata for Bool, a3, a4);
  (v12)(v11, a1, a2);
  LOBYTE(v25) = 0;
  v15 = type metadata accessor for Preferences(0, a2, a3, v14);
  sub_10011BE90(v11, 1, &v25, v13, a2, &type metadata for Bool, a3, a4 + v15[9]);
  (v12)(v11, a1, a2);
  LOBYTE(v25) = 1;
  sub_10011BE90(v11, 2, &v25, v13, a2, &type metadata for Bool, a3, a4 + v15[10]);
  (v12)(v11, a1, a2);
  LOBYTE(v25) = 0;
  sub_10011BE90(v11, 3, &v25, v13, a2, &type metadata for Bool, a3, a4 + v15[11]);
  (v12)(v11, a1, a2);
  LOBYTE(v25) = 0;
  sub_10011BE90(v11, 4, &v25, v13, a2, &type metadata for Bool, a3, a4 + v15[12]);
  (v12)(v11, a1, a2);
  LOBYTE(v25) = 1;
  sub_10011BE90(v11, 5, &v25, v13, a2, &type metadata for Bool, a3, a4 + v15[13]);
  (v12)(v11, a1, a2);
  LOBYTE(v25) = 1;
  sub_10011BE90(v11, 6, &v25, 1, a2, &type metadata for Bool, a3, a4 + v15[14]);
  (v12)(v11, a1, a2);
  LOBYTE(v25) = 1;
  sub_10011BE90(v11, 7, &v25, 1, a2, &type metadata for Bool, a3, a4 + v15[15]);
  (v12)(v11, a1, a2);
  LODWORD(v25) = 4;
  sub_10011BE90(v11, 8, &v25, 1, a2, &type metadata for UInt32, a3, a4 + v15[16]);
  (v12)(v11, a1, a2);
  LOBYTE(v25) = 2;
  v16 = v15[17];
  v17 = sub_1001254BC();
  sub_10011C210(v11, 9, &v25, 1, a2, &type metadata for PreferenceDefaults.InternetSharingOptions, a3, v17, a4 + v16);
  (v12)(v11, a1, a2);
  LOBYTE(v25) = 1;
  sub_10011BE90(v11, 10, &v25, 1, a2, &type metadata for Bool, a3, a4 + v15[18]);
  (v12)(v11, a1, a2);
  LOBYTE(v25) = 0;
  sub_10011BE90(v11, 17, &v25, 1, a2, &type metadata for Bool, a3, a4 + v15[19]);
  (v12)(v11, a1, a2);
  LODWORD(v25) = 60;
  sub_10011BE90(v11, 18, &v25, 1, a2, &type metadata for UInt32, a3, a4 + v15[20]);
  (v12)(v11, a1, a2);
  LOBYTE(v25) = 1;
  sub_10011BE90(v11, 11, &v25, 1, a2, &type metadata for Bool, a3, a4 + v15[31]);
  (v12)(v11, a1, a2);
  v18 = v15[32];
  v24 = xmmword_100480A90;
  v25 = xmmword_100480A90;
  sub_10011BE90(v11, 12, &v25, 1, a2, &type metadata for Data, a3, a4 + v18);
  (v12)(v11, a1, a2);
  LOBYTE(v25) = 1;
  sub_10011BE90(v11, 13, &v25, 1, a2, &type metadata for Bool, a3, a4 + v15[33]);
  (v12)(v11, a1, a2);
  v19 = v15[34];
  v25 = v24;
  sub_10011BE90(v11, 14, &v25, 1, a2, &type metadata for Data, a3, a4 + v19);
  (v12)(v11, a1, a2);
  v20 = v15[35];
  v25 = v24;
  sub_10011BE90(v11, 15, &v25, 1, a2, &type metadata for Data, a3, a4 + v20);
  (v12)(v11, a1, a2);
  *&v25 = 32;
  v21 = v15[36];
  v22 = sub_100047C68();
  sub_10011C210(v11, 16, &v25, 1, a2, &type metadata for PreferenceDefaults.EnableUserspaceP2POptions, a3, v22, a4 + v21);
  (v12)(v11, a1, a2);
  LOBYTE(v25) = 0;
  sub_10011BE90(v11, 19, &v25, 1, a2, &type metadata for Bool, a3, a4 + v15[37]);
  (v12)(v11, a1, a2);
  LOBYTE(v25) = 0;
  sub_10011BE90(v11, 20, &v25, 1, a2, &type metadata for Bool, a3, a4 + v15[38]);
  (v12)(v11, a1, a2);
  LOBYTE(v25) = 1;
  sub_10011BE90(v11, 21, &v25, 1, a2, &type metadata for Bool, a3, a4 + v15[39]);
  (v12)(v11, a1, a2);
  LOBYTE(v25) = 0;
  sub_10011BE90(v11, 22, &v25, 1, a2, &type metadata for Bool, a3, a4 + v15[21]);
  (v12)(v11, a1, a2);
  LOBYTE(v25) = 1;
  sub_10011BE90(v11, 23, &v25, 1, a2, &type metadata for Bool, a3, a4 + v15[22]);
  (v12)(v11, a1, a2);
  *&v25 = 0x3FC999999999999ALL;
  sub_10011BE90(v11, 24, &v25, 1, a2, &type metadata for Double, a3, a4 + v15[23]);
  (v12)(v11, a1, a2);
  LODWORD(v25) = 10;
  sub_10011BE90(v11, 25, &v25, 1, a2, &type metadata for UInt32, a3, a4 + v15[24]);
  (v12)(v11, a1, a2);
  LODWORD(v25) = 2;
  sub_10011BE90(v11, 26, &v25, 1, a2, &type metadata for UInt32, a3, a4 + v15[25]);
  (v12)(v11, a1, a2);
  LOBYTE(v25) = 0;
  sub_10011BE90(v11, 27, &v25, 1, a2, &type metadata for Bool, a3, a4 + v15[26]);
  (v12)(v11, a1, a2);
  LOBYTE(v25) = 0;
  sub_10011BE90(v11, 28, &v25, 1, a2, &type metadata for Bool, a3, a4 + v15[27]);
  (v12)(v11, a1, a2);
  LOBYTE(v25) = 1;
  sub_10011BE90(v11, 29, &v25, 1, a2, &type metadata for Bool, a3, a4 + v15[28]);
  (v12)(v11, a1, a2);
  LODWORD(v25) = 120;
  sub_10011BE90(v11, 30, &v25, 1, a2, &type metadata for UInt32, a3, a4 + v15[29]);
  LOBYTE(v25) = 0;
  return sub_10011BE90(a1, 31, &v25, 1, a2, &type metadata for Bool, a3, a4 + v15[30]);
}

uint64_t Preferences.description.getter(uint64_t a1)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v152 = type metadata accessor for Preferences.Preference(0, v4, &type metadata for Double, v3);
  v151 = *(v152 - 8);
  __chkstk_darwin();
  v150 = &v132 - v5;
  v6 = sub_100047C68();
  v169 = v4;
  v170 = &type metadata for PreferenceDefaults.EnableUserspaceP2POptions;
  v171 = v3;
  v172 = v6;
  v148 = type metadata accessor for Preferences.EnumPreference(0, &v169);
  v149 = *(v148 - 8);
  __chkstk_darwin();
  v147 = &v132 - v7;
  v8 = sub_1001254BC();
  v169 = v4;
  v170 = &type metadata for PreferenceDefaults.InternetSharingOptions;
  v171 = v3;
  v172 = v8;
  v145 = type metadata accessor for Preferences.EnumPreference(0, &v169);
  v146 = *(v145 - 8);
  __chkstk_darwin();
  v144 = &v132 - v9;
  v161 = type metadata accessor for Preferences.Preference(0, v4, &type metadata for UInt32, v3);
  v164 = *(v161 - 8);
  __chkstk_darwin();
  v160 = &v132 - v10;
  v153 = type metadata accessor for Preferences.WiFiAddressPreference(0, v4, v3, v11);
  v12 = *(v153 - 8);
  __chkstk_darwin();
  v14 = &v132 - v13;
  v15 = type metadata accessor for Preferences.Preference(0, v4, &type metadata for Bool, v3);
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin();
  v19 = &v132 - v18;
  v169 = 0;
  v170 = 0xE000000000000000;
  v20 = *(a1 + 124);
  v163 = *(v16 + 16);
  v163(v19, v1 + v20, v15, v17);
  v154 = protocol conformance descriptor for Preferences<A>.Preference<A1>;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for Preferences<A>.Preference<A1>, v15);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v168 = *(v16 + 8);
  v168(v19, v15);
  v21._countAndFlagsBits = 10;
  v21._object = 0xE100000000000000;
  String.append(_:)(v21);
  v22 = *(a1 + 128);
  v23 = *(v12 + 16);
  v142 = v12 + 16;
  v143 = v23;
  v24 = v153;
  v23(v14, v1 + v22, v153);
  v141 = swift_getWitnessTable(protocol conformance descriptor for Preferences<A>.WiFiAddressPreference, v24);
  v138 = v14;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v139 = *(v12 + 8);
  v140 = v12 + 8;
  v139(v14, v24);
  v137 = v169;
  v136 = v170;
  v169 = 0;
  v170 = 0xE000000000000000;
  _StringGuts.grow(_:)(94);
  v25 = v15;
  v26 = v15;
  v27 = v163;
  v159 = v16 + 16;
  (v163)(v19, v1, v26);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v28 = v168;
  v168(v19, v25);
  v29._countAndFlagsBits = 10;
  v29._object = 0xE100000000000000;
  String.append(_:)(v29);
  v30 = v1 + *(a1 + 36);
  v162 = v1;
  v27(v19, v30, v25);
  v31 = v27;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v32 = v25;
  v28(v19, v25);
  v33._countAndFlagsBits = 10;
  v33._object = 0xE100000000000000;
  String.append(_:)(v33);
  v34 = a1;
  v31(v19, v1 + *(a1 + 40), v32);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v35 = v168;
  v168(v19, v32);
  v36._countAndFlagsBits = 10;
  v36._object = 0xE100000000000000;
  String.append(_:)(v36);
  v37 = *(v34 + 44);
  v38 = v34;
  v39 = v162;
  v31(v19, v162 + v37, v32);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v35(v19, v32);
  v40._countAndFlagsBits = 10;
  v40._object = 0xE100000000000000;
  String.append(_:)(v40);
  v31(v19, v39 + v38[12], v32);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v35(v19, v32);
  v41 = v35;
  v42._countAndFlagsBits = 663584;
  v42._object = 0xE300000000000000;
  String.append(_:)(v42);
  v165 = v38;
  v43 = v162;
  v31(v19, v162 + v38[13], v32);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v41(v19, v32);
  v44._countAndFlagsBits = 10;
  v44._object = 0xE100000000000000;
  String.append(_:)(v44);
  v31(v19, v43 + v38[14], v32);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v41(v19, v32);
  v167 = v16 + 8;
  v45._countAndFlagsBits = 10;
  v45._object = 0xE100000000000000;
  String.append(_:)(v45);
  v31(v19, v43 + v165[15], v32);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v41(v19, v32);
  v46._countAndFlagsBits = 10;
  v46._object = 0xE100000000000000;
  String.append(_:)(v46);
  v48 = v164;
  v47 = v165;
  v49 = v165[16];
  v155 = *(v164 + 16);
  v158 = v164 + 16;
  v50 = v160;
  v51 = v161;
  v155(v160, v43 + v49, v161);
  v157 = swift_getWitnessTable(v154, v51);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v52 = *(v48 + 8);
  v164 = v48 + 8;
  v156 = v52;
  v52(v50, v51);
  v53._countAndFlagsBits = 10;
  v53._object = 0xE100000000000000;
  String.append(_:)(v53);
  v54 = v144;
  Preferences.$internetSharingOptions.getter(v47, v144);
  v135 = protocol conformance descriptor for Preferences<A>.EnumPreference<A1>;
  v55 = v145;
  swift_getWitnessTable(protocol conformance descriptor for Preferences<A>.EnumPreference<A1>, v145);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  (*(v146 + 8))(v54, v55);
  v56._countAndFlagsBits = 10;
  v56._object = 0xE100000000000000;
  String.append(_:)(v56);
  v57 = v47;
  v58 = v43 + *(v47 + 72);
  v59 = v32;
  v31(v19, v58, v32);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v60 = v19;
  v61 = v19;
  v62 = v59;
  v63 = v168;
  v168(v60, v59);
  v64._countAndFlagsBits = 10;
  v64._object = 0xE100000000000000;
  String.append(_:)(v64);
  v65._countAndFlagsBits = v137;
  v65._object = v136;
  String.append(_:)(v65);

  v66._countAndFlagsBits = 10;
  v66._object = 0xE100000000000000;
  String.append(_:)(v66);
  v67 = v162;
  v68 = v162 + v57[33];
  v133 = v61;
  v134 = v62;
  v31(v61, v68, v62);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v63(v61, v62);
  v69._countAndFlagsBits = 10;
  v69._object = 0xE100000000000000;
  String.append(_:)(v69);
  v70 = v57;
  v71 = v67;
  v72 = v138;
  v73 = v153;
  v74 = v143;
  v143(v138, v67 + v57[34], v153);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v75 = v139;
  v139(v72, v73);
  v76._countAndFlagsBits = 10;
  v76._object = 0xE100000000000000;
  String.append(_:)(v76);
  v74(v72, v71 + v57[35], v73);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v75(v72, v73);
  v77._countAndFlagsBits = 10;
  v77._object = 0xE100000000000000;
  String.append(_:)(v77);
  v78 = v147;
  Preferences.$enableUserspaceP2POptions.getter(v70, v147);
  v79 = v148;
  swift_getWitnessTable(v135, v148);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  (*(v149 + 8))(v78, v79);
  v80._countAndFlagsBits = 10;
  v80._object = 0xE100000000000000;
  String.append(_:)(v80);
  v81 = v70;
  v82 = v71;
  v83 = v71 + *(v70 + 148);
  v84 = v133;
  v85 = v134;
  v86 = v163;
  (v163)(v133, v83, v134);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v87 = v168;
  v168(v84, v85);
  v88._countAndFlagsBits = 10;
  v88._object = 0xE100000000000000;
  String.append(_:)(v88);
  v89 = v82 + *(v81 + 152);
  v90 = v82;
  v86(v84, v89, v85);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v87(v84, v85);
  v91._countAndFlagsBits = 10;
  v91._object = 0xE100000000000000;
  String.append(_:)(v91);
  v92 = v165;
  v93 = v163;
  (v163)(v84, v90 + v165[39], v85);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v87(v84, v85);
  v94._countAndFlagsBits = 10;
  v94._object = 0xE100000000000000;
  String.append(_:)(v94);
  v95 = v90;
  v93(v84, v90 + v92[19], v85);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v87(v84, v85);
  v96._countAndFlagsBits = 10;
  v96._object = 0xE100000000000000;
  String.append(_:)(v96);
  v97 = v92;
  v98 = v95 + v92[20];
  v99 = v95;
  v101 = v160;
  v100 = v161;
  v155(v160, v98, v161);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v156(v101, v100);
  v102._countAndFlagsBits = 10;
  v102._object = 0xE100000000000000;
  String.append(_:)(v102);
  v103 = v163;
  (v163)(v84, v95 + v97[21], v85);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v104 = v168;
  v168(v84, v85);
  v105._countAndFlagsBits = 10;
  v105._object = 0xE100000000000000;
  String.append(_:)(v105);
  v103(v84, v95 + v97[22], v85);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v104(v84, v85);
  v106._countAndFlagsBits = 10;
  v106._object = 0xE100000000000000;
  String.append(_:)(v106);
  v107 = v151;
  v108 = v150;
  v109 = v152;
  (*(v151 + 16))(v150, v99 + v97[23], v152);
  swift_getWitnessTable(v154, v109);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  (*(v107 + 8))(v108, v109);
  v110._countAndFlagsBits = 10;
  v110._object = 0xE100000000000000;
  String.append(_:)(v110);
  v111 = v99 + v97[24];
  v112 = v160;
  v113 = v161;
  v114 = v155;
  v155(v160, v111, v161);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v115 = v156;
  v156(v112, v113);
  v116._countAndFlagsBits = 10;
  v116._object = 0xE100000000000000;
  String.append(_:)(v116);
  v114(v112, v162 + v165[25], v113);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v115(v112, v113);
  v117._countAndFlagsBits = 10;
  v117._object = 0xE100000000000000;
  String.append(_:)(v117);
  v118 = v165;
  v119 = v162;
  v120 = v163;
  (v163)(v84, v162 + v165[26], v85);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v121 = v168;
  v168(v84, v85);
  v122._countAndFlagsBits = 10;
  v122._object = 0xE100000000000000;
  String.append(_:)(v122);
  v120(v84, v119 + v118[27], v85);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v121(v84, v85);
  v123._countAndFlagsBits = 10;
  v123._object = 0xE100000000000000;
  String.append(_:)(v123);
  v124 = v165;
  v120(v84, v119 + v165[28], v85);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v121(v84, v85);
  v125._countAndFlagsBits = 10;
  v125._object = 0xE100000000000000;
  String.append(_:)(v125);
  v126 = v124;
  v127 = v119 + v124[29];
  v129 = v160;
  v128 = v161;
  v155(v160, v127, v161);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v156(v129, v128);
  v130._countAndFlagsBits = 10;
  v130._object = 0xE100000000000000;
  String.append(_:)(v130);
  v120(v84, v119 + v126[30], v85);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v121(v84, v85);
  return v169;
}

SCPreferencesRef sub_10012306C()
{
  result = sub_10012308C();
  static SCPreferencesRef.p2pPreferences = result;
  return result;
}

SCPreferencesRef sub_10012308C()
{
  v0 = [objc_opt_self() defaultManager];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 fileExistsAtPath:v1];

  if (v2)
  {
    v3 = String._bridgeToObjectiveC()();
    v4 = [v0 fileExistsAtPath:v3];

    if ((v4 & 1) == 0)
    {
      v5 = String._bridgeToObjectiveC()();
      v6 = String._bridgeToObjectiveC()();
      v15 = 0;
      v7 = [v0 moveItemAtPath:v5 toPath:v6 error:&v15];

      if (v7)
      {
        v8 = v15;
      }

      else
      {
        v9 = v15;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }
  }

  v10 = [objc_opt_self() processInfo];
  v11 = [v10 processName];

  if (!v11)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = String._bridgeToObjectiveC()();
  }

  v12 = String._bridgeToObjectiveC()();
  v13 = SCPreferencesCreate(kCFAllocatorDefault, v11, v12);

  if (!v13)
  {
    __break(1u);
  }

  return v13;
}

id static SCPreferencesRef.p2pPreferences.getter()
{
  if (qword_10058A838 != -1)
  {
    swift_once();
  }

  v1 = static SCPreferencesRef.p2pPreferences;

  return v1;
}

uint64_t SCPreferencesRef.subscript.getter@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  SCPreferencesLock(v3, 1u);
  PreferencesName.rawValue.getter(a1);
  v7 = String._bridgeToObjectiveC()();

  SCPreferencesGetValue(v3, v7);

  sub_10005DC58(&qword_10058D6D0, &unk_1004876D0);
  v8 = swift_dynamicCast();
  (*(*(a2 - 8) + 56))(a3, v8 ^ 1u, 1, a2);
  return SCPreferencesUnlock(v3);
}

uint64_t SCPreferencesRef.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = a2;
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v19 - v10;
  v12 = *(a3 - 8);
  v13 = __chkstk_darwin();
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8, v13);
  if ((*(v12 + 48))(v11, 1, a3) == 1)
  {
    v16 = *(v9 + 8);
    v16(v11, v8);
    SCPreferencesLock(v4, 1u);
    SCPreferencesSynchronize(v4);
    PreferencesName.rawValue.getter(v6);
    v17 = String._bridgeToObjectiveC()();

    SCPreferencesRemoveValue(v4, v17);

    SCPreferencesCommitChanges(v4);
    SCPreferencesApplyChanges(v4);
    SCPreferencesUnlock(v4);
    return (v16)(a1, v8);
  }

  else
  {
    (*(v12 + 32))(v15, v11, a3);
    SCPreferencesLock(v4, 1u);
    SCPreferencesSynchronize(v4);
    sub_100123744(v4, v6, v15, a3);
    SCPreferencesCommitChanges(v4);
    SCPreferencesApplyChanges(v4);
    SCPreferencesUnlock(v4);
    (*(v9 + 8))(a1, v8);
    return (*(v12 + 8))(v15, a3);
  }
}

Swift::Void __swiftcall SCPreferencesRef.removeValue(forKey:)(CoreP2P::PreferencesName forKey)
{
  SCPreferencesLock(v1, 1u);
  SCPreferencesSynchronize(v1);
  PreferencesName.rawValue.getter(forKey);
  v3 = String._bridgeToObjectiveC()();

  SCPreferencesRemoveValue(v1, v3);

  SCPreferencesCommitChanges(v1);
  SCPreferencesApplyChanges(v1);

  SCPreferencesUnlock(v1);
}

uint64_t sub_100123744(const __SCPreferences *a1, char a2, uint64_t a3, uint64_t a4)
{
  PreferencesName.rawValue.getter(a2);
  v5 = String._bridgeToObjectiveC()();

  v6 = _bridgeAnythingToObjectiveC<A>(_:)();
  SCPreferencesSetValue(a1, v5, v6);

  return swift_unknownObjectRelease();
}

void (*SCPreferencesRef.subscript.modify(uint64_t *a1, char a2, uint64_t a3))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x38uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a3;
  *(v7 + 8) = v3;
  *(v7 + 48) = a2;
  v9 = type metadata accessor for Optional();
  v8[2] = v9;
  v10 = *(v9 - 8);
  v8[3] = v10;
  v11 = *(v10 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v8[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v8[4] = malloc(*(v10 + 64));
    v12 = malloc(v11);
  }

  v8[5] = v12;
  SCPreferencesRef.subscript.getter(a2, a3, v12);
  return sub_1001238F8;
}

void sub_1001238F8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
    v7 = *v2;
    v8 = *(v2 + 48);
    (*(v6 + 16))(*(*a1 + 32), v4, v5);
    SCPreferencesRef.subscript.setter(v3, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    SCPreferencesRef.subscript.setter(*(*a1 + 40), *(v2 + 48), *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

void (*sub_100123A0C(uint64_t *a1, char a2, uint64_t a3))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x38uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a3;
  *(v7 + 48) = a2;
  v9 = type metadata accessor for Optional();
  v8[1] = v9;
  v10 = *(v9 - 8);
  v8[2] = v10;
  v11 = *(v10 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v8[3] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v8[3] = malloc(*(v10 + 64));
    v12 = malloc(v11);
  }

  v13 = *v3;
  v8[4] = v12;
  v8[5] = v13;
  SCPreferencesRef.subscript.getter(a2, a3, v12);
  return sub_100123B38;
}

void sub_100123B38(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 24);
  if (a2)
  {
    v5 = *(v2 + 8);
    v6 = *(v2 + 16);
    v7 = *v2;
    v8 = *(v2 + 48);
    (*(v6 + 16))(*(*a1 + 24), v3, v5);
    SCPreferencesRef.subscript.setter(v4, v8, v7);
    (*(v6 + 8))(v3, v5);
  }

  else
  {
    SCPreferencesRef.subscript.setter(*(*a1 + 32), *(v2 + 48), *v2);
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t sub_100123C08(char a1)
{
  v3 = *v1;
  SCPreferencesLock(v3, 1u);
  SCPreferencesSynchronize(v3);
  PreferencesName.rawValue.getter(a1);
  v4 = String._bridgeToObjectiveC()();

  SCPreferencesRemoveValue(v3, v4);

  SCPreferencesCommitChanges(v3);
  SCPreferencesApplyChanges(v3);

  return SCPreferencesUnlock(v3);
}

uint64_t InMemoryPreferenceStorage.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = &_swiftEmptyDictionarySingleton;
  return result;
}

uint64_t InMemoryPreferenceStorage.init()()
{
  result = v0;
  *(v0 + 16) = &_swiftEmptyDictionarySingleton;
  return result;
}

uint64_t InMemoryPreferenceStorage.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100124E60(a1, a2, a3);
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1, v4);
}

void (*InMemoryPreferenceStorage.subscript.modify(uint64_t *a1, char a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x38uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a3;
  *(v7 + 8) = v3;
  *(v7 + 48) = a2;
  v9 = type metadata accessor for Optional();
  v8[2] = v9;
  v10 = *(v9 - 8);
  v8[3] = v10;
  v11 = *(v10 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v8[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v8[4] = malloc(*(v10 + 64));
    v12 = malloc(v11);
  }

  v8[5] = v12;
  InMemoryPreferenceStorage.subscript.getter(a3, v12, a2);
  return sub_100123ED0;
}

void sub_100123ED0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = **a1;
  v8 = *(*a1 + 48);
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    sub_100124E60(v3, v8, v7);
    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    sub_100124E60((*a1)[5], v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

Swift::Void __swiftcall InMemoryPreferenceStorage.removeValue(forKey:)(CoreP2P::PreferencesName forKey)
{
  v1 = PreferencesName.rawValue.getter(forKey);
  v3 = v2;
  swift_beginAccess();
  sub_10007F624(v1, v3, v4);
  sub_1000BA934(v4);
  swift_endAccess();
}

Swift::Void __swiftcall InMemoryPreferenceStorage.removeAll()()
{
  swift_beginAccess();
  *(v0 + 16) = &_swiftEmptyDictionarySingleton;
}

uint64_t InMemoryPreferenceStorage.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100124100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100124E60(a1, a2, a3);
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1, v4);
}

void (*sub_10012417C(uint64_t *a1, char a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x38uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a3;
  *(v7 + 48) = a2;
  v9 = type metadata accessor for Optional();
  v8[1] = v9;
  v10 = *(v9 - 8);
  v8[2] = v10;
  v11 = *(v10 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v8[3] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v8[3] = malloc(*(v10 + 64));
    v12 = malloc(v11);
  }

  v13 = *v3;
  v8[4] = v12;
  v8[5] = v13;
  InMemoryPreferenceStorage.subscript.getter(a3, v12, a2);
  return sub_1001242A8;
}

void sub_1001242A8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = (*a1)[2];
  v4 = (*a1)[3];
  v7 = **a1;
  v6 = (*a1)[1];
  v8 = *(*a1 + 48);
  if (a2)
  {
    (*(v5 + 16))((*a1)[3], v3, v6);
    sub_100124E60(v4, v8, v7);
    v9 = *(v5 + 8);
    v9(v4, v6);
    v9(v3, v6);
  }

  else
  {
    sub_100124E60((*a1)[4], v8, v7);
    (*(v5 + 8))(v3, v6);
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t sub_1001243A0(char a1)
{
  v1 = PreferencesName.rawValue.getter(a1);
  v3 = v2;
  swift_beginAccess();
  sub_10007F624(v1, v3, v5);
  sub_1000BA934(v5);
  swift_endAccess();
}

void (*LockedPreferencesStorage.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x40uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 8) = a4;
  *(v9 + 16) = v4;
  *v9 = a3;
  *(v9 + 56) = a2;
  v11 = type metadata accessor for Optional();
  v10[3] = v11;
  v12 = *(v11 - 8);
  v10[4] = v12;
  v13 = *(v12 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v10[5] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v10[5] = malloc(*(v12 + 64));
    v14 = malloc(v13);
  }

  v10[6] = v14;
  LockedPreferencesStorage.subscript.getter(a2, a3, a4, v14);
  return sub_100124568;
}

Swift::Void __swiftcall LockedPreferencesStorage.removeValue(forKey:)(CoreP2P::PreferencesName forKey)
{
  v3 = v2;
  v4 = v1;
  v5 = forKey;
  os_unfair_lock_lock(*(*v3 + 16));
  (*(*(v4 + 24) + 32))(v5, *(v4 + 16));
  v6 = *(*v3 + 16);

  os_unfair_lock_unlock(v6);
}

void (*sub_100124610(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x40uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 8) = v4;
  *(v9 + 16) = a4;
  *v9 = a3;
  *(v9 + 56) = a2;
  v11 = type metadata accessor for Optional();
  v10[3] = v11;
  v12 = *(v11 - 8);
  v10[4] = v12;
  v13 = *(v12 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v10[5] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v10[5] = malloc(*(v12 + 64));
    v14 = malloc(v13);
  }

  v10[6] = v14;
  LockedPreferencesStorage.subscript.getter(a2, a4, a3, v14);
  return sub_100124744;
}

uint64_t LockedPreferencesStorage<>.init()()
{
  type metadata accessor for InMemoryPreferenceStorage();
  *(swift_allocObject() + 16) = &_swiftEmptyDictionarySingleton;
  type metadata accessor for Lock();
  v0 = swift_allocObject();
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  *v1 = 0;
  return v0;
}

uint64_t sub_1001247E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  a5(a1, a2, a3);
  v6 = type metadata accessor for Optional();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1, v6);
}

void (*CachedPreferenceStorage.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x40uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 8) = a4;
  *(v9 + 16) = v4;
  *v9 = a3;
  *(v9 + 56) = a2;
  v11 = type metadata accessor for Optional();
  v10[3] = v11;
  v12 = *(v11 - 8);
  v10[4] = v12;
  v13 = *(v12 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v10[5] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v10[5] = malloc(*(v12 + 64));
    v14 = malloc(v13);
  }

  v10[6] = v14;
  CachedPreferenceStorage.subscript.getter(a2, a3, a4, v14);
  return sub_100124998;
}

void sub_1001249B0(uint64_t **a1, char a2, void (*a3)(void *, uint64_t, uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = (*a1)[5];
  v6 = (*a1)[6];
  v7 = (*a1)[3];
  v8 = (*a1)[4];
  v9 = (*a1)[1];
  v10 = **a1;
  v11 = *(*a1 + 56);
  if (a2)
  {
    (*(v8 + 16))((*a1)[5], v6, v7);
    a3(v5, v11, v10, v9);
    v12 = *(v8 + 8);
    v12(v5, v7);
    v12(v6, v7);
  }

  else
  {
    a3((*a1)[6], v11, v10, v9);
    (*(v8 + 8))(v6, v7);
  }

  free(v6);
  free(v5);

  free(v4);
}

Swift::Void __swiftcall CachedPreferenceStorage.removeValue(forKey:)(CoreP2P::PreferencesName forKey)
{
  v3 = forKey;
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = 0;
  v6 = type metadata accessor for CachedPreferenceStorage.EmptyPreference(0, v4, v5, v2);
  sub_100124E60(&v7, v3, v6);
  (*(v5 + 32))(v3, v4, v5);
}

uint64_t sub_100124B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  a6(a1, a2, a4, a3, a5);
  v7 = type metadata accessor for Optional();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1, v7);
}

void (*sub_100124BF8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x40uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 8) = v4;
  *(v9 + 16) = a4;
  *v9 = a3;
  *(v9 + 56) = a2;
  v11 = type metadata accessor for Optional();
  v10[3] = v11;
  v12 = *(v11 - 8);
  v10[4] = v12;
  v13 = *(v12 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v10[5] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v10[5] = malloc(*(v12 + 64));
    v14 = malloc(v13);
  }

  v10[6] = v14;
  CachedPreferenceStorage.subscript.getter(a2, a4, a3, v14);
  return sub_100124D2C;
}

void sub_100124D44(uint64_t **a1, char a2, void (*a3)(void *, uint64_t, uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = (*a1)[5];
  v6 = (*a1)[6];
  v7 = (*a1)[3];
  v8 = (*a1)[4];
  v9 = (*a1)[2];
  v10 = **a1;
  v11 = *(*a1 + 56);
  if (a2)
  {
    (*(v8 + 16))((*a1)[5], v6, v7);
    a3(v5, v11, v9, v10);
    v12 = *(v8 + 8);
    v12(v5, v7);
    v12(v6, v7);
  }

  else
  {
    a3((*a1)[6], v11, v9, v10);
    (*(v8 + 8))(v6, v7);
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t sub_100124E60(uint64_t a1, char a2, uint64_t a3)
{
  v4 = PreferencesName.rawValue.getter(a2);
  v6 = v5;
  v7 = type metadata accessor for Optional();
  v10[3] = v7;
  v8 = sub_1000297D4(v10);
  (*(*(v7 - 8) + 16))(v8, a1, v7);
  swift_beginAccess();
  sub_1000729F8(v10, v4, v6);
  return swift_endAccess();
}

unint64_t _s7CoreP2P15PreferencesNameO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x20)
  {
    return 32;
  }

  else
  {
    return v2;
  }
}

unint64_t _s7CoreP2P18PreferenceDefaultsV22InternetSharingOptionsO8rawValueAESgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100554FD0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100124FC8(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

void sub_100125064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  os_unfair_lock_lock(*(*v4 + 16));
  v9 = type metadata accessor for Optional();
  v11[3] = v9;
  v10 = sub_1000297D4(v11);
  (*(*(v9 - 8) + 16))(v10, a1, v9);
  (*(*(a3 + 24) + 16))(v11, a2, &type metadata for Any[8], *(a3 + 16));
  os_unfair_lock_unlock(*(*v5 + 16));
}

uint64_t sub_100125144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v13 - v10;
  sub_100124E60(a1, a2, a4);
  (*(v9 + 16))(v11, a1, v8);
  return (*(*(a3 + 24) + 16))(v11, a2, a4, *(a3 + 16));
}

uint64_t sub_10012526C(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  type metadata accessor for Optional();
  v6 = __chkstk_darwin();
  v8 = &v12 - v7;
  v9 = *(v5 - 8);
  v10 = *(v2 + *(a2 + 44));
  (*(v9 + 16))(&v12 - v7, a1, v5, v6);
  (*(v9 + 56))(v8, 0, 1, v5);
  return (*(*(a2 + 32) + 16))(v8, v10, v5, *(a2 + 16));
}

uint64_t sub_10012538C(uint64_t a1, uint64_t *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v6 = &v9 - v5;
  dispatch thunk of RawRepresentable.rawValue.getter();
  v7 = type metadata accessor for Preferences.Preference(0, a2[2], AssociatedTypeWitness, a2[4]);
  sub_10012526C(v6, v7);
  return (*(v4 + 8))(v6, AssociatedTypeWitness);
}

unint64_t sub_1001254BC()
{
  result = qword_10058D6C0;
  if (!qword_10058D6C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PreferenceDefaults.InternetSharingOptions, &type metadata for PreferenceDefaults.InternetSharingOptions, v0, v1);
    atomic_store(result, &qword_10058D6C0);
  }

  return result;
}

unint64_t sub_100125530()
{
  result = qword_10058D6D8;
  if (!qword_10058D6D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PreferenceDefaults.EnableUserspaceP2POptions, &type metadata for PreferenceDefaults.EnableUserspaceP2POptions, v0, v1);
    atomic_store(result, &qword_10058D6D8);
  }

  return result;
}

unint64_t sub_100125588()
{
  result = qword_10058D6E0;
  if (!qword_10058D6E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PreferenceDefaults.EnableUserspaceP2POptions, &type metadata for PreferenceDefaults.EnableUserspaceP2POptions, v0, v1);
    atomic_store(result, &qword_10058D6E0);
  }

  return result;
}

unint64_t sub_1001255E0()
{
  result = qword_10058D6E8;
  if (!qword_10058D6E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PreferenceDefaults.EnableUserspaceP2POptions, &type metadata for PreferenceDefaults.EnableUserspaceP2POptions, v0, v1);
    atomic_store(result, &qword_10058D6E8);
  }

  return result;
}

unint64_t sub_100125638()
{
  result = qword_10058D6F0;
  if (!qword_10058D6F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PreferenceDefaults.InternetSharingOptions, &type metadata for PreferenceDefaults.InternetSharingOptions, v0, v1);
    atomic_store(result, &qword_10058D6F0);
  }

  return result;
}

unint64_t sub_100125690()
{
  result = qword_10058D6F8;
  if (!qword_10058D6F8)
  {
    v3 = sub_10005DD04(&qword_10058D700, &qword_100487938);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_10058D6F8);
  }

  return result;
}

unint64_t sub_1001256F8()
{
  result = qword_10058D708[0];
  if (!qword_10058D708[0])
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PreferencesName, &type metadata for PreferencesName, v0, v1);
    atomic_store(result, qword_10058D708);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PreferencesName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE1)
  {
    goto LABEL_17;
  }

  if (a2 + 31 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 31) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 31;
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

      return (*a1 | (v4 << 8)) - 31;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 31;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x20;
  v8 = v6 - 32;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PreferencesName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 31 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 31) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE1)
  {
    v4 = 0;
  }

  if (a2 > 0xE0)
  {
    v5 = ((a2 - 225) >> 8) + 1;
    *result = a2 + 31;
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
    *result = a2 + 31;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1001258D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = type metadata accessor for Preferences.Preference(319, v2, &type metadata for Bool, v1);
  if (v4 <= 0x3F)
  {
    v26 = result;
    v27 = result;
    v28 = result;
    v29 = result;
    v30 = result;
    v31 = result;
    v18 = 0;
    v32 = result;
    v33 = result;
    v5 = result;
    result = type metadata accessor for Preferences.Preference(319, v2, &type metadata for UInt32, v1);
    v6 = result;
    if (v7 <= 0x3F)
    {
      v19 = 0;
      v34 = result;
      v14 = v2;
      v15 = &type metadata for PreferenceDefaults.InternetSharingOptions;
      v16 = v1;
      v17 = sub_1001254BC();
      result = type metadata accessor for Preferences.EnumPreference(319, &v14);
      if (v8 <= 0x3F)
      {
        v35 = result;
        v36 = v5;
        v20 = 0;
        v37 = v5;
        v38 = v6;
        v21 = 0;
        v39 = v5;
        v40 = v5;
        result = type metadata accessor for Preferences.Preference(319, v2, &type metadata for Double, v1);
        if (v10 <= 0x3F)
        {
          v41 = result;
          v42 = v6;
          v43 = v6;
          v44 = v5;
          v45 = v5;
          v46 = v5;
          v22 = 0;
          v47 = v6;
          v48 = v5;
          v23 = 0;
          v49 = v5;
          result = type metadata accessor for Preferences.WiFiAddressPreference(319, v2, v1, v9);
          if (v11 <= 0x3F)
          {
            v50 = result;
            v51 = v5;
            v24 = 0;
            v52 = result;
            v53 = result;
            v12 = sub_100047C68();
            v14 = v2;
            v15 = &type metadata for PreferenceDefaults.EnableUserspaceP2POptions;
            v16 = v1;
            v17 = v12;
            result = type metadata accessor for Preferences.EnumPreference(319, &v14);
            if (v13 <= 0x3F)
            {
              v54 = result;
              v55 = v5;
              v25 = 0;
              v56 = v5;
              v57 = v5;
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100125A84(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v10 = *(v5 + 80);
  v11 = v7 + 3 + v10;
  v12 = v10 | 3;
  v13 = (v10 | 3) + v7 + 3;
  v14 = (v7 & 0xFFFFFFFFFFFFFFFCLL) + 9;
  v15 = v10 | 7;
  v16 = (v10 | 7) + v14;
  v17 = (v10 | 7) + 1;
  v18 = a2 >= v8;
  v19 = a2 - v8;
  if (v19 == 0 || !v18)
  {
    goto LABEL_29;
  }

  v20 = (v7 & 0xFFFFFFFFFFFFFFF8) + 25;
  v21 = (v7 & 0xFFFFFFFFFFFFFFF8) + 17;
  v9 = v7 + 3;
  v22 = ((v11 + ((v11 + ((v21 + v10 + ((v10 + 8) & ~v15) + ((v15 + v20 + ((v15 + v20 + ((v15 + v9 + ((v20 + v10 + ((v15 + v9 + ((v11 + ((v14 + v10 + ((v13 + ((v11 + ((v11 + ((v14 + v10 + ((v12 + v14 + ((v12 + v21 + ((v15 + v9 + ((v11 + ((v14 + v10 + ((v13 + ((v11 + ((v20 + v10 + (v17 & ~v15) + ((v16 + ((v13 + ((v11 + ((v11 + ((v11 + ((v11 + ((v11 + ((v11 + (v11 & ~v10)) & ~v10)) & ~v10)) & ~v10)) & ~v10)) & ~v10)) & ~v10)) & ~v12)) & ~v15)) & ~v10)) & ~v10)) & ~v12)) & ~v10)) & ~v10)) & ~v15)) & ~v12)) & ~v12)) & ~v10)) & ~v10)) & ~v10)) & ~v12)) & ~v10)) & ~v10)) & ~v15)) & ~v10)) & ~v15)) & ~v15)) & ~v15)) & ~v10)) & ~v10)) & ~v10) + v9;
  v23 = 8 * v22;
  if (v22 <= 3)
  {
    v26 = ((v19 + ~(-1 << v23)) >> v23) + 1;
    if (HIWORD(v26))
    {
      v24 = *(a1 + v22);
      if (!v24)
      {
        goto LABEL_29;
      }

      goto LABEL_16;
    }

    if (v26 > 0xFF)
    {
      v24 = *(a1 + v22);
      if (!*(a1 + v22))
      {
        goto LABEL_29;
      }

      goto LABEL_16;
    }

    if (v26 < 2)
    {
LABEL_29:
      if (v6 >= 0x7FFFFFFF)
      {
        v32 = *(v5 + 48);

        return v32(a1);
      }

      else
      {
        v30 = ~v10;
        v31 = *(((((v17 + ((v16 + ((v13 + ((v11 + ((v11 + ((v11 + ((v11 + ((v11 + ((v11 + ((a1 + v11) & v30)) & v30)) & v30)) & v30)) & v30)) & v30)) & v30)) & ~v12)) & ~v15)) & ~v15) + v7) & 0xFFFFFFFFFFFFFFF8) + 16);
        if (v31 >= 0xFFFFFFFF)
        {
          LODWORD(v31) = -1;
        }

        return (v31 + 1);
      }
    }
  }

  v24 = *(a1 + v22);
  if (!*(a1 + v22))
  {
    goto LABEL_29;
  }

LABEL_16:
  v27 = (v24 - 1) << v23;
  if (v22 > 3)
  {
    v27 = 0;
  }

  if (v22)
  {
    if (v22 <= 3)
    {
      v28 = v22;
    }

    else
    {
      v28 = 4;
    }

    if (v28 > 2)
    {
      if (v28 == 3)
      {
        v29 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v29 = *a1;
      }
    }

    else if (v28 == 1)
    {
      v29 = *a1;
    }

    else
    {
      v29 = *a1;
    }
  }

  else
  {
    v29 = 0;
  }

  return v8 + (v29 | v27) + 1;
}

void sub_100125DE8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  if (v8 <= 0xFE)
  {
    v9 = 254;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v6 + 84);
  }

  if (v10 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(*(*(a4 + 16) - 8) + 64);
  v13 = v12 + 3;
  v14 = *(v6 + 80);
  v15 = v12 + 3 + v14;
  v16 = (v14 | 3) + v12 + 3;
  v17 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 9;
  v18 = v14 | 7;
  v19 = (v14 | 7) + v17;
  v20 = (v14 | 7) + 1;
  v21 = (v12 & 0xFFFFFFFFFFFFFFF8) + 25;
  v22 = (v20 & ~(v14 | 7)) + v21;
  v23 = (v14 | 7) + v12 + 3;
  v24 = (v12 & 0xFFFFFFFFFFFFFFF8) + 17;
  v25 = (v14 | 7) + v21;
  v26 = ((v15 + ((v15 + ((v24 + v14 + ((v14 + 8) & ~(v14 | 7)) + ((v25 + ((v25 + ((v23 + ((v21 + v14 + ((v23 + ((v15 + ((v17 + v14 + ((v16 + ((v15 + ((v15 + ((v17 + v14 + (((v14 | 3) + v17 + (((v14 | 3) + v24 + ((v23 + ((v15 + ((v17 + v14 + ((v16 + ((v15 + ((v22 + v14 + ((v19 + ((v16 + ((v15 + ((v15 + ((v15 + ((v15 + ((v15 + ((v15 + (v15 & ~v14)) & ~v14)) & ~v14)) & ~v14)) & ~v14)) & ~v14)) & ~v14)) & ~(v14 | 3))) & ~(v14 | 7))) & ~v14)) & ~v14)) & ~(v14 | 3))) & ~v14)) & ~v14)) & ~(v14 | 7))) & ~(v14 | 3))) & ~(v14 | 3))) & ~v14)) & ~v14)) & ~v14)) & ~(v14 | 3))) & ~v14)) & ~v14)) & ~(v14 | 7))) & ~v14)) & ~(v14 | 7))) & ~(v14 | 7))) & ~(v14 | 7))) & ~v14)) & ~v14)) & ~v14) + v12 + 3;
  v27 = a3 >= v11;
  v28 = a3 - v11;
  if (v28 != 0 && v27)
  {
    if (v26 <= 3)
    {
      v32 = ((v28 + ~(-1 << (8 * v26))) >> (8 * v26)) + 1;
      if (HIWORD(v32))
      {
        v29 = 4;
      }

      else
      {
        if (v32 < 0x100)
        {
          v33 = 1;
        }

        else
        {
          v33 = 2;
        }

        if (v32 >= 2)
        {
          v29 = v33;
        }

        else
        {
          v29 = 0;
        }
      }
    }

    else
    {
      v29 = 1;
    }
  }

  else
  {
    v29 = 0;
  }

  if (v11 < a2)
  {
    v30 = ~v11 + a2;
    if (v26 < 4)
    {
      v31 = (v30 >> (8 * v26)) + 1;
      if (v26)
      {
        v34 = v30 & ~(-1 << (8 * v26));
        bzero(a1, v26);
        if (v26 != 3)
        {
          if (v26 == 2)
          {
            *a1 = v34;
            if (v29 > 1)
            {
LABEL_65:
              if (v29 == 2)
              {
                *&a1[v26] = v31;
              }

              else
              {
                *&a1[v26] = v31;
              }

              return;
            }
          }

          else
          {
            *a1 = v30;
            if (v29 > 1)
            {
              goto LABEL_65;
            }
          }

          goto LABEL_62;
        }

        *a1 = v34;
        a1[2] = BYTE2(v34);
      }

      if (v29 > 1)
      {
        goto LABEL_65;
      }
    }

    else
    {
      bzero(a1, v26);
      *a1 = v30;
      v31 = 1;
      if (v29 > 1)
      {
        goto LABEL_65;
      }
    }

LABEL_62:
    if (v29)
    {
      a1[v26] = v31;
    }

    return;
  }

  if (v29 > 1)
  {
    if (v29 != 2)
    {
      *&a1[v26] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v26] = 0;
  }

  else if (v29)
  {
    a1[v26] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v8 >= 0x7FFFFFFF)
  {
    if (v9 >= a2)
    {
      v41 = *(v7 + 56);

      v41(a1);
    }

    else
    {
      if (v13 <= 3)
      {
        v37 = ~(-1 << (8 * v13));
      }

      else
      {
        v37 = -1;
      }

      if (v12 != -3)
      {
        v38 = v37 & (~v9 + a2);
        if (v13 <= 3)
        {
          v39 = v12 + 3;
        }

        else
        {
          v39 = 4;
        }

        bzero(a1, v13);
        if (v39 > 2)
        {
          if (v39 == 3)
          {
            *a1 = v38;
            a1[2] = BYTE2(v38);
          }

          else
          {
            *a1 = v38;
          }
        }

        else if (v39 == 1)
        {
          *a1 = v38;
        }

        else
        {
          *a1 = v38;
        }
      }
    }
  }

  else
  {
    v35 = ((v19 + ((v16 + ((v15 + ((v15 + ((v15 + ((v15 + ((v15 + ((v15 + (&a1[v15] & ~v14)) & ~v14)) & ~v14)) & ~v14)) & ~v14)) & ~v14)) & ~v14)) & ~(v14 | 3))) & ~v18);
    if (v10 >= a2)
    {
      v40 = ((&v35[v20] & ~v18) + v12) & 0xFFFFFFFFFFFFFFF8;
      if ((a2 & 0x80000000) != 0)
      {
        *(v40 + 8) = a2 & 0x7FFFFFFF;
        *(v40 + 16) = 0;
      }

      else
      {
        *(v40 + 16) = a2 - 1;
      }
    }

    else
    {
      bzero(v35, (v20 & ~(v14 | 7)) + v21);
      if (v22 <= 3)
      {
        *v35 = a2;
      }

      else
      {
        *v35 = a2 ^ 0x80000000;
      }
    }
  }
}

uint64_t sub_1001262C0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10012635C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(*(a3 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = *(v4 + 64);
  v9 = *(v6 + 80);
  v10 = *(v6 + 64);
  if (v5 <= v7)
  {
    v11 = *(v6 + 84);
  }

  else
  {
    v11 = *(v4 + 84);
  }

  if (v11 <= 0xFE)
  {
    v11 = 254;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = a2 - v11;
  if (a2 <= v11)
  {
    goto LABEL_29;
  }

  v13 = v10 + ((v8 + v9 + 1) & ~v9) + 1;
  v14 = 8 * v13;
  if (v13 > 3)
  {
    goto LABEL_9;
  }

  v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
  if (HIWORD(v16))
  {
    v15 = *(a1 + v13);
    if (v15)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v16 <= 0xFF)
    {
      if (v16 < 2)
      {
        goto LABEL_29;
      }

LABEL_9:
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_29;
      }

LABEL_16:
      v17 = (v15 - 1) << v14;
      if (v13 > 3)
      {
        v17 = 0;
      }

      if (v10 + ((v8 + v9 + 1) & ~v9) == -1)
      {
        v19 = 0;
      }

      else
      {
        if (v13 <= 3)
        {
          v18 = v10 + ((v8 + v9 + 1) & ~v9) + 1;
        }

        else
        {
          v18 = 4;
        }

        if (v18 > 2)
        {
          if (v18 == 3)
          {
            v19 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v19 = *a1;
          }
        }

        else if (v18 == 1)
        {
          v19 = *a1;
        }

        else
        {
          v19 = *a1;
        }
      }

      return v11 + (v19 | v17) + 1;
    }

    v15 = *(a1 + v13);
    if (*(a1 + v13))
    {
      goto LABEL_16;
    }
  }

LABEL_29:
  if (v5 == v11)
  {
    return (*(v4 + 48))();
  }

  v21 = (a1 + v8 + v9 + 1) & ~v9;
  if (v7 == v11)
  {
    return (*(v6 + 48))(v21);
  }

  v22 = *(v21 + v10);
  if (v22 < 2)
  {
    return 0;
  }

  return ((v22 + 2147483646) & 0x7FFFFFFF) + 1;
}

char *sub_100126570(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v6 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v5 + 84);
  }

  if (v12 <= 0xFE)
  {
    v12 = 254;
  }

  v13 = v11 + ((v9 + v10 + 1) & ~v10) + 1;
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v11 + ((v9 + v10 + 1) & ~v10) != -1)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_50:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_50;
            }
          }

          goto LABEL_47;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_50;
      }
    }

LABEL_47:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v6 == v12)
  {
    v24 = *(v5 + 56);

    return v24();
  }

  else
  {
    result = (&result[v9 + 1 + v10] & ~v10);
    if (v8 == v12)
    {
      v25 = *(v7 + 56);

      return v25(result);
    }

    else
    {
      result[v11] = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100126858(void *a1)
{
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = a1[2];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v2 = type metadata accessor for Preferences.Preference(319, v4, AssociatedTypeWitness, a1[4]);
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

uint64_t sub_100126918(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = *(v5 - 8);
  v8 = *(v7 + 84);
  v9 = *(v6 - 8);
  v10 = *(v9 + 84);
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = v11;
  v14 = *(v11 + 80);
  v13 = *(v11 + 84);
  if (v10 <= v13)
  {
    v15 = *(v11 + 84);
  }

  else
  {
    v15 = v10;
  }

  v16 = *(v11 + 64);
  if (v15 <= 0xFE)
  {
    v15 = 254;
  }

  if (v15 <= v8)
  {
    v17 = v8;
  }

  else
  {
    v17 = v15;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = v14 | *(v9 + 80);
  v19 = *(v7 + 64) + v18;
  v20 = *(v9 + 64) + v14 + 1;
  if (a2 > v17)
  {
    v21 = v16 + (v20 & ~v14) + (v19 & ~v18) + 1;
    v22 = 8 * v21;
    if (v21 > 3)
    {
      goto LABEL_12;
    }

    v24 = ((a2 - v17 + ~(-1 << v22)) >> v22) + 1;
    if (HIWORD(v24))
    {
      v23 = *(a1 + v21);
      if (!v23)
      {
        goto LABEL_32;
      }

      goto LABEL_19;
    }

    if (v24 > 0xFF)
    {
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_32;
      }

      goto LABEL_19;
    }

    if (v24 >= 2)
    {
LABEL_12:
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_32;
      }

LABEL_19:
      v25 = (v23 - 1) << v22;
      if (v21 > 3)
      {
        v25 = 0;
      }

      if (v21)
      {
        if (v21 <= 3)
        {
          v26 = v21;
        }

        else
        {
          v26 = 4;
        }

        if (v26 > 2)
        {
          if (v26 == 3)
          {
            v27 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v27 = *a1;
          }
        }

        else if (v26 == 1)
        {
          v27 = *a1;
        }

        else
        {
          v27 = *a1;
        }
      }

      else
      {
        v27 = 0;
      }

      v36 = v17 + (v27 | v25);
      return (v36 + 1);
    }
  }

LABEL_32:
  if (v8 >= v15)
  {
    v29 = *(v7 + 48);
    v28 = a1;
    v30 = v8;
    v31 = v5;
    goto LABEL_36;
  }

  v28 = ((a1 + v19) & ~v18);
  if (v10 == v15)
  {
    v29 = *(v9 + 48);
    v30 = v10;
    v31 = v6;
LABEL_36:

    return v29(v28, v30, v31);
  }

  v33 = (v28 + v20) & ~v14;
  if (v13 != v15)
  {
    v35 = *(v33 + v16);
    if (v35 < 2)
    {
      return 0;
    }

    v36 = (v35 + 2147483646) & 0x7FFFFFFF;
    return (v36 + 1);
  }

  v34 = *(v12 + 48);

  return v34(v33);
}

void sub_100126C78(_BYTE *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v7 = a4[3];
  v44 = a4[2];
  v45 = *(v7 - 8);
  v8 = *(v45 + 84);
  v9 = *(v44 - 8);
  v10 = *(v9 + 84);
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = v11;
  v14 = *(v11 + 80);
  v13 = *(v11 + 84);
  v15 = *(v45 + 64);
  if (v10 <= v13)
  {
    v16 = *(v11 + 84);
  }

  else
  {
    v16 = v10;
  }

  v17 = *(v11 + 64);
  if (v16 <= 0xFE)
  {
    v18 = 254;
  }

  else
  {
    v18 = v16;
  }

  if (v18 <= v8)
  {
    v19 = v8;
  }

  else
  {
    v19 = v18;
  }

  v20 = v14;
  v21 = v14 | *(v9 + 80);
  v22 = v15 + v21;
  v23 = (v15 + v21) & ~v21;
  v24 = *(v9 + 64) + v20 + 1;
  v25 = v17 + (v24 & ~v20) + 1;
  v26 = v23 + v25;
  if (a3 <= v19)
  {
    v27 = 0;
  }

  else if (v26 <= 3)
  {
    v30 = ((a3 - v19 + ~(-1 << (8 * v26))) >> (8 * v26)) + 1;
    if (HIWORD(v30))
    {
      v27 = 4;
    }

    else
    {
      if (v30 < 0x100)
      {
        v31 = 1;
      }

      else
      {
        v31 = 2;
      }

      if (v30 >= 2)
      {
        v27 = v31;
      }

      else
      {
        v27 = 0;
      }
    }
  }

  else
  {
    v27 = 1;
  }

  if (v19 < a2)
  {
    v28 = ~v19 + a2;
    if (v26 < 4)
    {
      v29 = (v28 >> (8 * v26)) + 1;
      if (v26)
      {
        v32 = v28 & ~(-1 << (8 * v26));
        bzero(a1, v26);
        if (v26 != 3)
        {
          if (v26 == 2)
          {
            *a1 = v32;
            if (v27 > 1)
            {
LABEL_63:
              if (v27 == 2)
              {
                *&a1[v26] = v29;
              }

              else
              {
                *&a1[v26] = v29;
              }

              return;
            }
          }

          else
          {
            *a1 = v28;
            if (v27 > 1)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_60;
        }

        *a1 = v32;
        a1[2] = BYTE2(v32);
      }

      if (v27 > 1)
      {
        goto LABEL_63;
      }
    }

    else
    {
      bzero(a1, v26);
      *a1 = v28;
      v29 = 1;
      if (v27 > 1)
      {
        goto LABEL_63;
      }
    }

LABEL_60:
    if (v27)
    {
      a1[v26] = v29;
    }

    return;
  }

  if (v27 > 1)
  {
    if (v27 != 2)
    {
      *&a1[v26] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v26] = 0;
  }

  else if (v27)
  {
    a1[v26] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v8 >= v18)
  {
    v37 = *(v45 + 56);
    v38 = a1;
    v39 = a2;
    v40 = v8;
    v41 = v7;
LABEL_50:

    v37(v38, v39, v40, v41);
    return;
  }

  v33 = (&a1[v22] & ~v21);
  if (v18 < a2)
  {
    if (v25 <= 3)
    {
      v34 = ~(-1 << (8 * v25));
    }

    else
    {
      v34 = -1;
    }

    if (v25)
    {
      v35 = v34 & (~v18 + a2);
      if (v25 <= 3)
      {
        v36 = v25;
      }

      else
      {
        v36 = 4;
      }

      bzero(v33, v25);
      if (v36 > 2)
      {
        if (v36 == 3)
        {
          *v33 = v35;
          v33[2] = BYTE2(v35);
        }

        else
        {
          *v33 = v35;
        }
      }

      else if (v36 == 1)
      {
        *v33 = v35;
      }

      else
      {
        *v33 = v35;
      }
    }

    return;
  }

  if (v10 == v18)
  {
    v37 = *(v9 + 56);
    v38 = v33;
    v39 = a2;
    v40 = v10;
    v41 = v44;
    goto LABEL_50;
  }

  v42 = &v33[v24] & ~v20;
  if (v13 == v18)
  {
    v43 = *(v12 + 56);

    v43(v42, a2);
  }

  else
  {
    *(v42 + v17) = a2 + 1;
  }
}

uint64_t sub_1001270D0(uint64_t a1)
{
  result = type metadata accessor for Preferences.Preference(319, *(a1 + 16), &type metadata for Data, *(a1 + 24));
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100127148(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_27;
  }

  v8 = (v6 & 0xFFFFFFFFFFFFFFF8) + 25;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (*&a1[v8])
      {
        goto LABEL_20;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_27;
  }

  if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_27:
    if (v5 >= 0xFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((&a1[v6] & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v17 >= 2)
    {
      return ((v17 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    return 0;
  }

LABEL_20:
  v14 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v15 = *a1;
  }

  else
  {
    v14 = 0;
    v15 = *a1;
  }

  return v7 + (v15 | v14) + 1;
}

void sub_100127298(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = (v9 & 0xFFFFFFFFFFFFFFF8) + 25;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0xFE)
      {
        *((&a1[v9] & 0xFFFFFFFFFFFFFFF8) + 24) = a2 + 1;
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, (v9 & 0xFFFFFFFFFFFFFFF8) + 25);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t sub_100127464(uint64_t a1)
{
  result = type metadata accessor for Lock();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001274EC(uint64_t a1)
{
  type metadata accessor for InMemoryPreferenceStorage();
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100127568(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1001276EC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

void sub_10012795C(uint64_t a1)
{
  if (*(v1 + 32))
  {
    v2 = *(v1 + 24);
    v3 = *(v1 + 8);
    v7[0] = *v1;
    v7[1] = v3;
    v4 = sub_10004F3B0(v7, &v8);
    v6 = v5;
    Data.hash(into:)();
    sub_1000124C8(v4, v6);
    if (v2)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }
  }

  else
  {
    Hasher._combine(_:)(*v1);
  }
}

void sub_100127A48(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if ((a4 & 0x10000) != 0)
  {
    Data.hash(into:)();
    Hasher._combine(_:)(a4);
    v4 = a4 >> 8;
  }

  else
  {
    LOBYTE(v4) = a3;
    v6 = *(a2 + 16);
    Hasher._combine(_:)(v6);
    if (v6)
    {
      v7 = (a2 + 37);
      do
      {
        v8 = *(v7 - 5);
        v9 = *(v7 - 4);
        v10 = *(v7 - 3);
        v11 = *(v7 - 2);
        v12 = *(v7 - 1);
        v13 = *v7;
        v7 += 6;
        Hasher._combine(_:)(v8);
        Hasher._combine(_:)(v9);
        Hasher._combine(_:)(v10);
        Hasher._combine(_:)(v11);
        Hasher._combine(_:)(v12);
        Hasher._combine(_:)(v13);
        --v6;
      }

      while (v6);
    }
  }

  Hasher._combine(_:)(v4 & 1);
}

__n128 InfraAssociationReadyEvent.init(status:ipAddress:)@<Q0>(__int16 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 32);
  *a3 = a1;
  result = *a2;
  v5 = *(a2 + 16);
  *(a3 + 8) = *a2;
  *(a3 + 24) = v5;
  *(a3 + 40) = v3;
  return result;
}

Swift::Int InfraScanStartEvent.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  InfraScanStartEvent.hash(into:)(v3, a1);
  return Hasher._finalize()();
}

Swift::Int sub_100127B98()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  InfraScanStartEvent.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_100127BE8(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  InfraScanStartEvent.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t InfraAssociationStartEvent.channel.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result);
  *(v1 + 5) = BYTE5(result);
  return result;
}

BOOL static InfraAssociationStartEvent.__derived_struct_equals(_:_:)(unint64_t a1, unint64_t a2)
{
  if (a1 != a2 || ((0x801004u >> ((a1 >> 29) & 0xF8)) & 0xFFC) != ((0x801004u >> ((a2 >> 29) & 0xF8)) & 0xFFC))
  {
    return 0;
  }

  if (BYTE5(a1) > 3u)
  {
    switch(BYTE5(a1))
    {
      case 4u:
        return BYTE5(a2) == 4;
      case 5u:
        return BYTE5(a2) == 5;
      case 6u:
        return BYTE5(a2) == 6;
    }

    return BYTE5(a2) - 2 >= 5 && (((a2 >> 40) ^ (a1 >> 40)) & 1) == 0;
  }

  if (BYTE5(a1) == 2)
  {
    return BYTE5(a2) == 2;
  }

  if (BYTE5(a1) != 3)
  {
    return BYTE5(a2) - 2 >= 5 && (((a2 >> 40) ^ (a1 >> 40)) & 1) == 0;
  }

  return BYTE5(a2) == 3;
}

void Channel.hash(into:)(int a1, unint64_t a2)
{
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(0x801004u >> ((a2 >> 29) & 0xF8));
  if (BYTE5(a2) <= 3u)
  {
    if (BYTE5(a2) == 2)
    {
      v3 = 0;
      goto LABEL_12;
    }

    if (BYTE5(a2) == 3)
    {
      v3 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    switch(BYTE5(a2))
    {
      case 4u:
        v3 = 3;
        goto LABEL_12;
      case 5u:
        v3 = 4;
        goto LABEL_12;
      case 6u:
        v3 = 5;
LABEL_12:
        Hasher._combine(_:)(v3);
        return;
    }
  }

  Hasher._combine(_:)(2uLL);
  Hasher._combine(_:)(BYTE5(a2) & 1);
}

Swift::Int Channel.hashValue.getter(unint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(0x801004u >> ((a1 >> 29) & 0xF8));
  if (BYTE5(a1) <= 3u)
  {
    if (BYTE5(a1) == 2)
    {
      v2 = 0;
      goto LABEL_12;
    }

    if (BYTE5(a1) == 3)
    {
      v2 = 1;
      goto LABEL_12;
    }

LABEL_14:
    Hasher._combine(_:)(2uLL);
    Hasher._combine(_:)(BYTE5(a1) & 1);
    return Hasher._finalize()();
  }

  if (BYTE5(a1) == 4)
  {
    v2 = 3;
    goto LABEL_12;
  }

  if (BYTE5(a1) == 5)
  {
    v2 = 4;
    goto LABEL_12;
  }

  if (BYTE5(a1) != 6)
  {
    goto LABEL_14;
  }

  v2 = 5;
LABEL_12:
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

Swift::Int sub_100127F04(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 4);
  v4 = *(v1 + 5);
  Hasher.init(_seed:)();
  Channel.hash(into:)(v6, v2 | (v3 << 32) | (v4 << 40));
  return Hasher._finalize()();
}

BOOL sub_100127F5C(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || ((0x801004u >> (8 * *(a1 + 4))) & 0xFFC) != ((0x801004u >> (8 * *(a2 + 4))) & 0xFFC))
  {
    return 0;
  }

  v2 = *(a1 + 5);
  v3 = *(a2 + 5);
  if (v2 <= 3)
  {
    if (v2 == 2)
    {
      if (v3 == 2)
      {
        return 1;
      }
    }

    else
    {
      if (v2 != 3)
      {
        return (v3 - 2) >= 5 && ((v3 ^ v2) & 1) == 0;
      }

      if (v3 == 3)
      {
        return 1;
      }
    }

    return 0;
  }

  if (v2 == 4)
  {
    return v3 == 4;
  }

  if (v2 == 5)
  {
    return v3 == 5;
  }

  if (v2 != 6)
  {
    return (v3 - 2) >= 5 && ((v3 ^ v2) & 1) == 0;
  }

  return v3 == 6;
}

uint64_t InfraAssociationJoinStatus.SubstateInformation.bssid.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 2) = BYTE2(result);
  *(v1 + 3) = BYTE3(result);
  *(v1 + 4) = BYTE4(result);
  *(v1 + 5) = BYTE5(result);
  return result;
}

void InfraAssociationJoinStatus.SubstateInformation.hash(into:)(int a1, unint64_t a2, uint64_t a3)
{
  v5 = a2 >> 8;
  v6 = a2 >> 16;
  v7 = a2 >> 24;
  v8 = HIDWORD(a2);
  v9 = a2 >> 40;
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  if (HIBYTE(a2) == 34)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(word_10048810E[(a2 << 8) >> 56]);
    Hasher._combine(_:)(word_10048817C[a2 >> 56]);
  }

  if ((a3 & 0xFF00) == 0x2200)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(word_10048810E[a3]);
    Hasher._combine(_:)(word_10048817C[a3 >> 8]);
  }

  if ((a3 & 0xFF000000) == 0x22000000)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(word_10048810E[a3 << 40 >> 56]);
    Hasher._combine(_:)(word_10048817C[a3 >> 24]);
  }

  if ((a3 & 0xFF0000000000) == 0x220000000000)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(word_10048810E[a3 << 24 >> 56]);
    Hasher._combine(_:)(word_10048817C[a3 << 16 >> 56]);
  }
}

Swift::Int InfraAssociationJoinStatus.SubstateInformation.hashValue.getter(unint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  InfraAssociationJoinStatus.SubstateInformation.hash(into:)(v5, a1, a2 & 0xFFFFFFFFFFFFLL);
  return Hasher._finalize()();
}

Swift::Int sub_1001282B8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 12);
  v3 = *v0;
  Hasher.init(_seed:)();
  InfraAssociationJoinStatus.SubstateInformation.hash(into:)(v5, v3, v1 | (v2 << 32));
  return Hasher._finalize()();
}

Swift::Int sub_100128328(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 12);
  v4 = *v1;
  Hasher.init(_seed:)();
  InfraAssociationJoinStatus.SubstateInformation.hash(into:)(v6, v4, v2 | (v3 << 32));
  return Hasher._finalize()();
}

uint64_t IEEE80211InformationElement.RSNCapability.authenticationKeyManagementSuites.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

void InfraAssociationJoinStatus.hash(into:)(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, Swift::UInt32 a5)
{
  v7 = a3;
  v9 = a2 >> 8;
  v10 = a2 >> 16;
  v11 = a2 >> 24;
  v12 = HIDWORD(a2);
  v13 = a2 >> 40;
  v14 = HIDWORD(a3);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v14);
  sub_1000DF2D0(a1, a4);
  Hasher._combine(_:)(a5);
}