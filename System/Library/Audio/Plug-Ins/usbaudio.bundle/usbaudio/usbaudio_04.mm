void *sub_10004801C(void *result, int64_t a2, char a3, void *a4)
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
    sub_100001AB4(&qword_100175F00, &qword_1001216B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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
    sub_100001AB4(&qword_100175F08, &qword_1001216B8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100048164(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    sub_100001AB4(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 12);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[12 * v10])
    {
      memmove(v14, v15, 12 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 12 * v10);
  }

  return v12;
}

char *sub_100048278(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175F20, &qword_1001216D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[6 * v8])
    {
      memmove(v12, v13, 6 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 6 * v8);
  }

  return v10;
}

void *sub_100048390(void *result, int64_t a2, char a3, void *a4)
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
    sub_100001AB4(&qword_100175FF8, &qword_1001217A8);
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
    sub_100001AB4(&qword_100176000, &qword_1001217B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000484C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175490, &qword_100126EB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1000485C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175EF8, &qword_1001216A8);
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

char *sub_1000486C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100176140, &qword_1001218F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1000487C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175F98, &qword_100121748);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 12);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 12 * v8;
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

char *sub_1000488D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_1001753A8, &qword_100129F20);
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

char *sub_1000489E4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    sub_100001AB4(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_100048AE0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100176138, &qword_1001218E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

char *sub_100048C00(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100176030, &qword_1001217E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 17);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 17 * v8;
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

char *sub_100048D08(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100176038, &qword_1001217E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 12);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[12 * v8])
    {
      memmove(v12, v13, 12 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 12 * v8);
  }

  return v10;
}

char *sub_100048E24(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100176070, &qword_100121820);
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

char *sub_100048F28(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100176080, &qword_100121830);
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

char *sub_10004902C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    sub_100001AB4(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = (v13 - 32 + ((v13 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[2 * v10])
    {
      memmove(v14, v15, 2 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 2 * v10);
  }

  return v12;
}

void *sub_100049120(void *result, int64_t a2, char a3, void *a4)
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
    sub_100001AB4(&qword_100175F28, &qword_1001216D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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
    sub_100001AB4(&qword_100177290, &qword_100120B80);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100049254(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    sub_100001AB4(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 6);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[6 * v10])
    {
      memmove(v14, v15, 6 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 6 * v10);
  }

  return v12;
}

void *sub_100049364(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_100001AB4(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
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
    sub_100001AB4(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1000494AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100176168, &qword_100121918);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 12);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[12 * v8])
    {
      memmove(v12, v13, 12 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 12 * v8);
  }

  return v10;
}

char *sub_1000495C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100176150, &qword_100121900);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[6 * v8])
    {
      memmove(v12, v13, 6 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 6 * v8);
  }

  return v10;
}

char *sub_1000496E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100176148, &qword_1001218F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_1000497E4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175FC0, &qword_100121770);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 168);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[168 * v8])
    {
      memmove(v12, v13, 168 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100049910(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175FB8, &qword_100121768);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_100049A30(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175F50, &qword_100121700);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_100049B34(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175F48, &qword_1001216F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 5 * v8;
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

char *sub_100049C3C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175F40, &qword_1001216F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 7);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[8 * v8 - v8])
    {
      memmove(v12, v13, 7 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 7 * v8);
  }

  return v10;
}

char *sub_100049D60(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175F38, &qword_1001216E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[6 * v8])
    {
      memmove(v12, v13, 6 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 6 * v8);
  }

  return v10;
}

char *sub_100049E78(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175F58, &qword_100121708);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_100049F7C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175F60, &qword_100121710);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 7);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[8 * v8 - v8])
    {
      memmove(v12, v13, 7 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 7 * v8);
  }

  return v10;
}

char *sub_10004A0A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100176098, &qword_100121848);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 20);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[20 * v8])
    {
      memmove(v12, v13, 20 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 20 * v8);
  }

  return v10;
}

char *sub_10004A1BC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_1001760A0, &qword_100121850);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 19);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[19 * v8])
    {
      memmove(v12, v13, 19 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 19 * v8);
  }

  return v10;
}

char *sub_10004A2D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_1001760E0, &qword_100121890);
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

char *sub_10004A3DC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_1001760F0, &qword_1001218A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 12);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[12 * v8])
    {
      memmove(v12, v13, 12 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 12 * v8);
  }

  return v10;
}

char *sub_10004A4F8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100176108, &qword_1001218B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 11);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[11 * v8])
    {
      memmove(v12, v13, 11 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 11 * v8);
  }

  return v10;
}

char *sub_10004A618(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100176110, &qword_1001218C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 9);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 9 * v8;
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

char *sub_10004A724(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175FD0, &qword_100121780);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 12);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[12 * v8])
    {
      memmove(v12, v13, 12 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 12 * v8);
  }

  return v10;
}

char *sub_10004A840(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175FD8, &qword_100121788);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 9);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 9 * v8;
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

char *sub_10004A94C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175FE0, &qword_100121790);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_10004AA50(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    sub_100001AB4(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 5);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  v16 = 5 * v10;
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

char *sub_10004AB50(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100176008, &qword_1001217B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[6 * v8])
    {
      memmove(v12, v13, 6 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 6 * v8);
  }

  return v10;
}

char *sub_10004AC68(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    sub_100001AB4(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 7);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[8 * v10 - v10])
    {
      memmove(v14, v15, 7 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 7 * v10);
  }

  return v12;
}

char *sub_10004AD84(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175FA8, &qword_100121758);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 22);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[22 * v8])
    {
      memmove(v12, v13, 22 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 22 * v8);
  }

  return v10;
}

char *sub_10004AEA4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175F30, &qword_1001216E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_10004AFC0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100176128, &qword_1001218D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 14);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[14 * v8])
    {
      memmove(v12, v13, 14 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 14 * v8);
  }

  return v10;
}

char *sub_10004B0E4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100176118, &qword_1001218C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 22);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[22 * v8])
    {
      memmove(v12, v13, 22 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 22 * v8);
  }

  return v10;
}

char *sub_10004B204(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100176120, &qword_1001218D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 18);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[18 * v8])
    {
      memmove(v12, v13, 18 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 18 * v8);
  }

  return v10;
}

char *sub_10004B324(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175F80, &qword_100121730);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_10004B428(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175F78, &qword_100121728);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[6 * v8])
    {
      memmove(v12, v13, 6 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 6 * v8);
  }

  return v10;
}

char *sub_10004B540(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175F70, &qword_100121720);
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

char *sub_10004B644(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175F68, &qword_100121718);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 14);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[14 * v8])
    {
      memmove(v12, v13, 14 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 14 * v8);
  }

  return v10;
}

char *sub_10004B768(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    sub_100001AB4(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 29;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 2);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[4 * v10])
    {
      memmove(v15, v16, 4 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 4 * v10);
  }

  return v12;
}

char *sub_10004B864(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175F90, &qword_100121740);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 12);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[12 * v8])
    {
      memmove(v12, v13, 12 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 12 * v8);
  }

  return v10;
}

uint64_t sub_10004B980(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10001D194(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1000CCD94();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 24 * v5);
  sub_10004BA2C(v8, v7);
  *v2 = v7;
  return v9;
}

uint64_t sub_10004BA2C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 48);
      v11 = (v10 + 4 * v6);
      result = static Hasher._hash(seed:bytes:count:)();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = (v10 + 4 * v3);
          if (v3 != v6 || v15 >= v11 + 1)
          {
            *v15 = *v11;
          }

          v16 = *(a2 + 56);
          v17 = v16 + 24 * v3;
          v18 = (v16 + 24 * v6);
          if (v3 != v6 || v17 >= v18 + 24)
          {
            v9 = *v18;
            *(v17 + 16) = *(v18 + 2);
            *v17 = v9;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_10004BBAC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10000CE28(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_10004BC18(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_10004BC5C(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v4;
  result = sub_10001D194(a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v14;
  if (v12[3] < v18)
  {
    sub_1000CC52C(v18, isUniquelyReferenced_nonNull_native);
    result = sub_10001D194(a4);
    if ((v5 & 1) == (v19 & 1))
    {
      goto LABEL_6;
    }

    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v22 = result;
    sub_1000CCD94();
    result = v22;
    v20 = v12;
    if (v5)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

LABEL_6:
  v20 = v12;
  if (v5)
  {
LABEL_7:
    v21 = (v20[7] + 24 * result);
    result = *v21;
    *v21 = a1;
    v21[1] = a2;
    v21[2] = a3;
LABEL_12:
    *v6 = v20;
    return result;
  }

LABEL_10:
  v20[(result >> 6) + 8] |= 1 << result;
  *(v20[6] + 4 * result) = a4;
  v23 = (v20[7] + 24 * result);
  *v23 = a1;
  v23[1] = a2;
  v23[2] = a3;
  v24 = v20[2];
  v17 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (!v17)
  {
    result = 0;
    v20[2] = v25;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void *sub_10004BDCC@<X0>(void *(*a1)(void *__return_ptr)@<X1>, uint64_t a2@<X8>)
{
  result = a1(v7);
  if (!v2)
  {
    v5 = v7[1];
    v6 = v8;
    *a2 = v7[0];
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

void sub_10004BE18(uint64_t a1, uint64_t a2, uint64_t a3, int a4, os_unfair_lock_s *a5, uint64_t a6, void *a7, uint64_t *a8, char *a9)
{
  v117 = a7;
  v124 = a5;
  LODWORD(v123) = a4;
  v121 = a2;
  v122 = a3;
  v116 = type metadata accessor for LogID(0);
  v13 = __chkstk_darwin(v116);
  v120 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v112 = &v109 - v16;
  __chkstk_darwin(v15);
  v18 = &v109 - v17;
  v19 = type metadata accessor for Logger();
  v125 = *(v19 - 8);
  __chkstk_darwin(v19);
  v126 = &v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = mach_absolute_time();
  v21 = *a8;
  v22 = *(*a8 + 16);
  v127 = sub_10004EFA4;
  v128 = v21;

  os_unfair_lock_lock(v22 + 4);
  sub_10004EF74(&v130);
  v118 = v9;
  if (v9)
  {
    goto LABEL_39;
  }

  os_unfair_lock_unlock(v22 + 4);
  v23 = v131;
  v115 = v130;
  v133 = v132;

  v24 = a8[1];
  if (!*(v24 + 16))
  {
    __break(1u);
    goto LABEL_30;
  }

  v25 = sub_10001D1DC(a1);
  if ((v26 & 1) == 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v27 = a9;
  v28 = *(v125 + 16);
  v29 = *(v24 + 56) + *(v125 + 72) * v25;
  v114 = v19;
  v28(v126, v29, v19);
  v130 = StaticString.description.getter();
  v131 = v30;
  v31._countAndFlagsBits = 32;
  v31._object = 0xE100000000000000;
  String.append(_:)(v31);
  v32._countAndFlagsBits = a6;
  v32._object = v117;
  String.append(_:)(v32);
  v33 = v131;
  v117 = v130;
  v34 = v18;
  sub_10004EDD0(v124, v18, type metadata accessor for LogID);

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  v37 = os_log_type_enabled(v35, v36);
  v113 = v21;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v110 = a9;
    v39 = v38;
    v40 = swift_slowAlloc();
    *v39 = 136446210;
    v129 = v40;
    v130 = 2113069;
    v131 = 0xE300000000000000;
    v41._countAndFlagsBits = v115;
    v41._object = v23;
    String.append(_:)(v41);
    v42 = (v34 + *(v116 + 24));
    v109 = v34;
    v43 = *v42;
    v44 = v42[1];

    v45._countAndFlagsBits = v43;
    v45._object = v44;
    String.append(_:)(v45);

    v46._countAndFlagsBits = v117;
    v46._object = v33;
    String.append(_:)(v46);

    v47 = v130;
    v48 = v131;
    sub_10004EE38(v109, type metadata accessor for LogID);
    v49 = sub_100035760(v47, v48, &v129);

    *(v39 + 4) = v49;
    _os_log_impl(&_mh_execute_header, v35, v36, "%{public}s", v39, 0xCu);
    sub_10000CE78(v40);

    v27 = v110;
  }

  else
  {

    sub_10004EE38(v34, type metadata accessor for LogID);
  }

  v50 = v118;
  sub_100018384(v27, &v134);
  v22 = v50;
  v21 = v120;
  if (!v50)
  {
    v76 = mach_absolute_time();
    v18 = v76 - v119;
    if (v76 < v119)
    {
      __break(1u);
    }

    else if (qword_100173D00 == -1)
    {
      goto LABEL_18;
    }

    swift_once();
LABEL_18:
    v77 = v112;
    if (qword_100179650 != HIDWORD(qword_100179650))
    {
      if (!is_mul_ok(v18, qword_100179650))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (!HIDWORD(qword_100179650))
      {
LABEL_38:
        __break(1u);
LABEL_39:
        os_unfair_lock_unlock(v22 + 4);
        __break(1u);
LABEL_40:
        os_unfair_lock_unlock((v18 + 16));
        __break(1u);
        return;
      }

      v18 = v18 * qword_100179650 / HIDWORD(qword_100179650);
    }

    v130 = StaticString.description.getter();
    v131 = v78;
    v79._countAndFlagsBits = 23328;
    v79._object = 0xE200000000000000;
    String.append(_:)(v79);
    v129 = v18 / 0x3E8;
    v80._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v80);

    v81._countAndFlagsBits = 1567847712;
    v81._object = 0xE400000000000000;
    String.append(_:)(v81);
    v83 = v130;
    v82 = v131;
    sub_10004EDD0(v124, v77, type metadata accessor for LogID);

    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v124 = 0;
      v87 = v86;
      v88 = swift_slowAlloc();
      v123 = v83;
      v89 = v88;
      *v87 = 136446210;
      v129 = v88;
      v130 = 2108732;
      v131 = 0xE300000000000000;
      v90._countAndFlagsBits = v115;
      v90._object = v23;
      String.append(_:)(v90);
      v91 = (v77 + *(v116 + 24));
      v92 = *v91;
      v93 = v91[1];

      v94._countAndFlagsBits = v92;
      v94._object = v93;
      String.append(_:)(v94);

      v95._countAndFlagsBits = v123;
      v95._object = v82;
      String.append(_:)(v95);

      v96 = v130;
      v97 = v131;
      sub_10004EE38(v112, type metadata accessor for LogID);
      v98 = sub_100035760(v96, v97, &v129);

      *(v87 + 4) = v98;
      _os_log_impl(&_mh_execute_header, v84, v85, "%{public}s", v87, 0xCu);
      sub_10000CE78(v89);

      v22 = v124;
    }

    else
    {

      v99 = sub_10004EE38(v77, type metadata accessor for LogID);
    }

    v105 = v114;
    v18 = *(v113 + 16);
    v106 = __chkstk_darwin(v99);
    *(&v109 - 2) = v107;
    *(&v109 - 2) = v133;
    __chkstk_darwin(v106);
    *(&v109 - 2) = sub_10001EF68;
    *(&v109 - 1) = v108;

    os_unfair_lock_lock((v18 + 16));
    sub_10004EFD4();
    if (!v22)
    {
      os_unfair_lock_unlock((v18 + 16));

      (*(v125 + 8))(v126, v105);

      return;
    }

    goto LABEL_40;
  }

  v51 = mach_absolute_time();
  v18 = v51 - v119;
  if (v51 >= v119)
  {
    if (qword_100173D00 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  swift_once();
LABEL_10:
  if (qword_100179650 != HIDWORD(qword_100179650))
  {
    if (is_mul_ok(v18, qword_100179650))
    {
      if (HIDWORD(qword_100179650))
      {
        v18 = v18 * qword_100179650 / HIDWORD(qword_100179650);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_14:
  v130 = 0;
  v131 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);
  v52._countAndFlagsBits = StaticString.description.getter();
  String.append(_:)(v52);

  v53._countAndFlagsBits = 0x203A524F52524520;
  v53._object = 0xE800000000000000;
  String.append(_:)(v53);
  v129 = v22;
  sub_100001AB4(&qword_100177270, &qword_100120A40);
  _print_unlocked<A, B>(_:_:)();
  v54._countAndFlagsBits = 23328;
  v54._object = 0xE200000000000000;
  String.append(_:)(v54);
  v129 = v18 / 0x3E8;
  v55._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v55);

  v56._countAndFlagsBits = 1567847712;
  v56._object = 0xE400000000000000;
  String.append(_:)(v56);
  v58 = v130;
  v57 = v131;
  sub_10004EDD0(v124, v21, type metadata accessor for LogID);

  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.default.getter();

  v61 = os_log_type_enabled(v59, v60);
  v111 = v23;
  if (v61)
  {
    v62 = swift_slowAlloc();
    v124 = v22;
    v63 = v62;
    v64 = swift_slowAlloc();
    v123 = v58;
    v65 = v64;
    *v63 = 136446210;
    v129 = v64;
    v130 = 11580;
    v131 = 0xE200000000000000;
    v66._countAndFlagsBits = v115;
    v66._object = v23;
    String.append(_:)(v66);
    v67 = (v21 + *(v116 + 24));
    v68 = *v67;
    v69 = v67[1];

    v70._countAndFlagsBits = v68;
    v70._object = v69;
    String.append(_:)(v70);

    v71._countAndFlagsBits = v123;
    v71._object = v57;
    String.append(_:)(v71);

    v72 = v130;
    v73 = v131;
    sub_10004EE38(v21, type metadata accessor for LogID);
    v74 = sub_100035760(v72, v73, &v129);

    *(v63 + 4) = v74;
    _os_log_impl(&_mh_execute_header, v59, v60, "%{public}s", v63, 0xCu);
    sub_10000CE78(v65);
  }

  else
  {

    v75 = sub_10004EE38(v21, type metadata accessor for LogID);
  }

  v100 = v114;
  v101 = *(v113 + 16);
  v102 = __chkstk_darwin(v75);
  *(&v109 - 2) = v103;
  *(&v109 - 2) = v133;
  __chkstk_darwin(v102);
  *(&v109 - 2) = sub_10001EF68;
  *(&v109 - 1) = v104;

  os_unfair_lock_lock(v101 + 4);
  sub_10004EFD4();
  os_unfair_lock_unlock(v101 + 4);

  swift_willThrow();
  (*(v125 + 8))(v126, v100);
}

void sub_10004CA98(uint64_t a1, uint64_t a2, uint64_t a3, int a4, os_unfair_lock_s *a5, uint64_t a6, void *a7, uint64_t *a8, char *a9)
{
  v117 = a7;
  v124 = a5;
  LODWORD(v123) = a4;
  v121 = a2;
  v122 = a3;
  v116 = type metadata accessor for LogID(0);
  v13 = __chkstk_darwin(v116);
  v120 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v112 = &v109 - v16;
  __chkstk_darwin(v15);
  v18 = &v109 - v17;
  v19 = type metadata accessor for Logger();
  v125 = *(v19 - 8);
  __chkstk_darwin(v19);
  v126 = &v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = mach_absolute_time();
  v21 = *a8;
  v22 = *(*a8 + 16);
  v127 = sub_10004EFA4;
  v128 = v21;

  os_unfair_lock_lock(v22 + 4);
  sub_10004EF74(&v130);
  v118 = v9;
  if (v9)
  {
    goto LABEL_39;
  }

  os_unfair_lock_unlock(v22 + 4);
  v23 = v131;
  v115 = v130;
  v133 = v132;

  v24 = a8[1];
  if (!*(v24 + 16))
  {
    __break(1u);
    goto LABEL_30;
  }

  v25 = sub_10001D1DC(a1);
  if ((v26 & 1) == 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v27 = a9;
  v28 = *(v125 + 16);
  v29 = *(v24 + 56) + *(v125 + 72) * v25;
  v114 = v19;
  v28(v126, v29, v19);
  v130 = StaticString.description.getter();
  v131 = v30;
  v31._countAndFlagsBits = 32;
  v31._object = 0xE100000000000000;
  String.append(_:)(v31);
  v32._countAndFlagsBits = a6;
  v32._object = v117;
  String.append(_:)(v32);
  v33 = v131;
  v117 = v130;
  v34 = v18;
  sub_10004EDD0(v124, v18, type metadata accessor for LogID);

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  v37 = os_log_type_enabled(v35, v36);
  v113 = v21;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v110 = a9;
    v39 = v38;
    v40 = swift_slowAlloc();
    *v39 = 136446210;
    v129 = v40;
    v130 = 2113069;
    v131 = 0xE300000000000000;
    v41._countAndFlagsBits = v115;
    v41._object = v23;
    String.append(_:)(v41);
    v42 = (v34 + *(v116 + 24));
    v109 = v34;
    v43 = *v42;
    v44 = v42[1];

    v45._countAndFlagsBits = v43;
    v45._object = v44;
    String.append(_:)(v45);

    v46._countAndFlagsBits = v117;
    v46._object = v33;
    String.append(_:)(v46);

    v47 = v130;
    v48 = v131;
    sub_10004EE38(v109, type metadata accessor for LogID);
    v49 = sub_100035760(v47, v48, &v129);

    *(v39 + 4) = v49;
    _os_log_impl(&_mh_execute_header, v35, v36, "%{public}s", v39, 0xCu);
    sub_10000CE78(v40);

    v27 = v110;
  }

  else
  {

    sub_10004EE38(v34, type metadata accessor for LogID);
  }

  v50 = v118;
  sub_100017E78(v27, &v134);
  v22 = v50;
  v21 = v120;
  if (!v50)
  {
    v76 = mach_absolute_time();
    v18 = v76 - v119;
    if (v76 < v119)
    {
      __break(1u);
    }

    else if (qword_100173D00 == -1)
    {
      goto LABEL_18;
    }

    swift_once();
LABEL_18:
    v77 = v112;
    if (qword_100179650 != HIDWORD(qword_100179650))
    {
      if (!is_mul_ok(v18, qword_100179650))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (!HIDWORD(qword_100179650))
      {
LABEL_38:
        __break(1u);
LABEL_39:
        os_unfair_lock_unlock(v22 + 4);
        __break(1u);
LABEL_40:
        os_unfair_lock_unlock((v18 + 16));
        __break(1u);
        return;
      }

      v18 = v18 * qword_100179650 / HIDWORD(qword_100179650);
    }

    v130 = StaticString.description.getter();
    v131 = v78;
    v79._countAndFlagsBits = 23328;
    v79._object = 0xE200000000000000;
    String.append(_:)(v79);
    v129 = v18 / 0x3E8;
    v80._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v80);

    v81._countAndFlagsBits = 1567847712;
    v81._object = 0xE400000000000000;
    String.append(_:)(v81);
    v83 = v130;
    v82 = v131;
    sub_10004EDD0(v124, v77, type metadata accessor for LogID);

    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v124 = 0;
      v87 = v86;
      v88 = swift_slowAlloc();
      v123 = v83;
      v89 = v88;
      *v87 = 136446210;
      v129 = v88;
      v130 = 2108732;
      v131 = 0xE300000000000000;
      v90._countAndFlagsBits = v115;
      v90._object = v23;
      String.append(_:)(v90);
      v91 = (v77 + *(v116 + 24));
      v92 = *v91;
      v93 = v91[1];

      v94._countAndFlagsBits = v92;
      v94._object = v93;
      String.append(_:)(v94);

      v95._countAndFlagsBits = v123;
      v95._object = v82;
      String.append(_:)(v95);

      v96 = v130;
      v97 = v131;
      sub_10004EE38(v112, type metadata accessor for LogID);
      v98 = sub_100035760(v96, v97, &v129);

      *(v87 + 4) = v98;
      _os_log_impl(&_mh_execute_header, v84, v85, "%{public}s", v87, 0xCu);
      sub_10000CE78(v89);

      v22 = v124;
    }

    else
    {

      v99 = sub_10004EE38(v77, type metadata accessor for LogID);
    }

    v105 = v114;
    v18 = *(v113 + 16);
    v106 = __chkstk_darwin(v99);
    *(&v109 - 2) = v107;
    *(&v109 - 2) = v133;
    __chkstk_darwin(v106);
    *(&v109 - 2) = sub_10001EF68;
    *(&v109 - 1) = v108;

    os_unfair_lock_lock((v18 + 16));
    sub_10004EFD4();
    if (!v22)
    {
      os_unfair_lock_unlock((v18 + 16));

      (*(v125 + 8))(v126, v105);

      return;
    }

    goto LABEL_40;
  }

  v51 = mach_absolute_time();
  v18 = v51 - v119;
  if (v51 >= v119)
  {
    if (qword_100173D00 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  swift_once();
LABEL_10:
  if (qword_100179650 != HIDWORD(qword_100179650))
  {
    if (is_mul_ok(v18, qword_100179650))
    {
      if (HIDWORD(qword_100179650))
      {
        v18 = v18 * qword_100179650 / HIDWORD(qword_100179650);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_14:
  v130 = 0;
  v131 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);
  v52._countAndFlagsBits = StaticString.description.getter();
  String.append(_:)(v52);

  v53._countAndFlagsBits = 0x203A524F52524520;
  v53._object = 0xE800000000000000;
  String.append(_:)(v53);
  v129 = v22;
  sub_100001AB4(&qword_100177270, &qword_100120A40);
  _print_unlocked<A, B>(_:_:)();
  v54._countAndFlagsBits = 23328;
  v54._object = 0xE200000000000000;
  String.append(_:)(v54);
  v129 = v18 / 0x3E8;
  v55._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v55);

  v56._countAndFlagsBits = 1567847712;
  v56._object = 0xE400000000000000;
  String.append(_:)(v56);
  v58 = v130;
  v57 = v131;
  sub_10004EDD0(v124, v21, type metadata accessor for LogID);

  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.default.getter();

  v61 = os_log_type_enabled(v59, v60);
  v111 = v23;
  if (v61)
  {
    v62 = swift_slowAlloc();
    v124 = v22;
    v63 = v62;
    v64 = swift_slowAlloc();
    v123 = v58;
    v65 = v64;
    *v63 = 136446210;
    v129 = v64;
    v130 = 11580;
    v131 = 0xE200000000000000;
    v66._countAndFlagsBits = v115;
    v66._object = v23;
    String.append(_:)(v66);
    v67 = (v21 + *(v116 + 24));
    v68 = *v67;
    v69 = v67[1];

    v70._countAndFlagsBits = v68;
    v70._object = v69;
    String.append(_:)(v70);

    v71._countAndFlagsBits = v123;
    v71._object = v57;
    String.append(_:)(v71);

    v72 = v130;
    v73 = v131;
    sub_10004EE38(v21, type metadata accessor for LogID);
    v74 = sub_100035760(v72, v73, &v129);

    *(v63 + 4) = v74;
    _os_log_impl(&_mh_execute_header, v59, v60, "%{public}s", v63, 0xCu);
    sub_10000CE78(v65);
  }

  else
  {

    v75 = sub_10004EE38(v21, type metadata accessor for LogID);
  }

  v100 = v114;
  v101 = *(v113 + 16);
  v102 = __chkstk_darwin(v75);
  *(&v109 - 2) = v103;
  *(&v109 - 2) = v133;
  __chkstk_darwin(v102);
  *(&v109 - 2) = sub_10001EF68;
  *(&v109 - 1) = v104;

  os_unfair_lock_lock(v101 + 4);
  sub_10004EFD4();
  os_unfair_lock_unlock(v101 + 4);

  swift_willThrow();
  (*(v125 + 8))(v126, v100);
}

void sub_10004D718(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, void *a7, void *a8, char *a9)
{
  v86 = a5;
  LODWORD(v85) = a4;
  v83 = a2;
  v84 = a3;
  v81 = type metadata accessor for LogID(0);
  v14 = __chkstk_darwin(v81);
  v79 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v72 - v16;
  v18 = type metadata accessor for Logger();
  v87 = *(v18 - 8);
  __chkstk_darwin(v18);
  v89 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = mach_absolute_time();
  v20 = *a8;
  v21 = *(*a8 + 16);
  v90 = sub_10004EFA4;
  v91 = v20;
  v78 = v20;

  os_unfair_lock_lock(v21 + 4);
  sub_10004EF74(&v93);
  if (v9)
  {
    goto LABEL_25;
  }

  os_unfair_lock_unlock(v21 + 4);
  v80 = v93;
  v88 = v94;
  v77 = v95;

  v22 = a8[1];
  if (!*(v22 + 16))
  {
    __break(1u);
    goto LABEL_20;
  }

  v23 = sub_10001D1DC(a1);
  if ((v24 & 1) == 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v75 = 0;
  (*(v87 + 16))(v89, *(v22 + 56) + *(v87 + 72) * v23, v18);
  v93 = StaticString.description.getter();
  v94 = v25;
  v26._countAndFlagsBits = 32;
  v26._object = 0xE100000000000000;
  String.append(_:)(v26);
  v27._countAndFlagsBits = a6;
  v27._object = a7;
  String.append(_:)(v27);
  v28 = v94;
  v74 = v93;
  sub_10004EDD0(v86, v17, type metadata accessor for LogID);

  v21 = v88;

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  v31 = os_log_type_enabled(v29, v30);
  v76 = v18;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v96 = v73;
    *v32 = 136446210;
    v93 = 2113069;
    v94 = 0xE300000000000000;
    v33._countAndFlagsBits = v80;
    v33._object = v21;
    String.append(_:)(v33);
    v34 = (v17 + *(v81 + 24));
    v35 = *v34;
    v36 = v34[1];

    v37._countAndFlagsBits = v35;
    v37._object = v36;
    v21 = v88;
    String.append(_:)(v37);

    v38._countAndFlagsBits = v74;
    v38._object = v28;
    String.append(_:)(v38);

    v39 = v93;
    v40 = v94;
    sub_10004EE38(v17, type metadata accessor for LogID);
    v41 = sub_100035760(v39, v40, &v96);

    *(v32 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v29, v30, "%{public}s", v32, 0xCu);
    sub_10000CE78(v73);
  }

  else
  {

    sub_10004EE38(v17, type metadata accessor for LogID);
  }

  v42 = v82;
  v43 = type metadata accessor for AUAAudioDevice(0);
  v92.receiver = a9;
  v92.super_class = v43;
  LODWORD(a7) = objc_msgSendSuper2(&v92, "performStopIO");
  *&a9[OBJC_IVAR___AUAAudioDevice_timeCorrelaterSession] = 0;

  *&a9[OBJC_IVAR___AUAAudioDevice_startingUSBDataFrame] = 0;
  *&a9[OBJC_IVAR___AUAAudioDevice_startingUSBLockDelayFrame] = 0;
  *&a9[OBJC_IVAR___AUAAudioDevice_startingUSBFeedbackFrame] = 0;
  v44 = mach_absolute_time();
  v45 = v44 >= v42;
  v17 = v44 - v42;
  if (v45)
  {
    if (qword_100173D00 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  __break(1u);
LABEL_22:
  swift_once();
LABEL_10:
  v46 = v79;
  if (qword_100179650 == HIDWORD(qword_100179650))
  {
    goto LABEL_14;
  }

  if (!is_mul_ok(v17, qword_100179650))
  {
    __break(1u);
    goto LABEL_24;
  }

  if (!HIDWORD(qword_100179650))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    os_unfair_lock_unlock(v21 + 4);
    __break(1u);
    goto LABEL_26;
  }

  v17 = v17 * qword_100179650 / HIDWORD(qword_100179650);
LABEL_14:
  v93 = StaticString.description.getter();
  v94 = v47;
  v48._countAndFlagsBits = 23328;
  v48._object = 0xE200000000000000;
  String.append(_:)(v48);
  v96 = v17 / 0x3E8;
  v49._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v49);

  v50._countAndFlagsBits = 1567847712;
  v50._object = 0xE400000000000000;
  String.append(_:)(v50);
  v52 = v93;
  v51 = v94;
  sub_10004EDD0(v86, v46, type metadata accessor for LogID);

  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    LODWORD(v86) = a7;
    v56 = v55;
    v85 = swift_slowAlloc();
    v96 = v85;
    *v56 = 136446210;
    v93 = 2108732;
    v94 = 0xE300000000000000;
    v57._countAndFlagsBits = v80;
    v57._object = v21;
    String.append(_:)(v57);
    v58 = (v46 + *(v81 + 24));
    v59 = *v58;
    v60 = v58[1];

    v61._countAndFlagsBits = v59;
    v61._object = v60;
    String.append(_:)(v61);

    v62._countAndFlagsBits = v52;
    v62._object = v51;
    String.append(_:)(v62);

    v63 = v93;
    v64 = v94;
    sub_10004EE38(v46, type metadata accessor for LogID);
    v65 = sub_100035760(v63, v64, &v96);

    *(v56 + 4) = v65;
    _os_log_impl(&_mh_execute_header, v53, v54, "%{public}s", v56, 0xCu);
    sub_10000CE78(v85);
  }

  else
  {

    v66 = sub_10004EE38(v46, type metadata accessor for LogID);
  }

  v67 = v76;
  v17 = *(v78 + 16);
  v68 = __chkstk_darwin(v66);
  *(&v72 - 2) = v69;
  *(&v72 - 2) = v77;
  __chkstk_darwin(v68);
  *(&v72 - 2) = sub_10001EF68;
  *(&v72 - 1) = v70;

  os_unfair_lock_lock((v17 + 16));
  v71 = v75;
  sub_10004EFD4();
  if (!v71)
  {
    os_unfair_lock_unlock((v17 + 16));

    (*(v87 + 8))(v89, v67);

    return;
  }

LABEL_26:
  os_unfair_lock_unlock((v17 + 16));
  __break(1u);
}

void sub_10004DF90(uint64_t a1, uint64_t a2, uint64_t a3, int a4, os_unfair_lock_s *a5, uint64_t a6, void *a7, uint64_t *a8, char *a9)
{
  v117 = a7;
  v124 = a5;
  LODWORD(v123) = a4;
  v121 = a2;
  v122 = a3;
  v116 = type metadata accessor for LogID(0);
  v13 = __chkstk_darwin(v116);
  v120 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v112 = &v109 - v16;
  __chkstk_darwin(v15);
  v18 = &v109 - v17;
  v19 = type metadata accessor for Logger();
  v125 = *(v19 - 8);
  __chkstk_darwin(v19);
  v126 = &v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = mach_absolute_time();
  v21 = *a8;
  v22 = *(*a8 + 16);
  v127 = sub_10004EFA4;
  v128 = v21;

  os_unfair_lock_lock(v22 + 4);
  sub_10004EF74(&v130);
  v118 = v9;
  if (v9)
  {
    goto LABEL_39;
  }

  os_unfair_lock_unlock(v22 + 4);
  v23 = v131;
  v115 = v130;
  v133 = v132;

  v24 = a8[1];
  if (!*(v24 + 16))
  {
    __break(1u);
    goto LABEL_30;
  }

  v25 = sub_10001D1DC(a1);
  if ((v26 & 1) == 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v27 = a9;
  v28 = *(v125 + 16);
  v29 = *(v24 + 56) + *(v125 + 72) * v25;
  v114 = v19;
  v28(v126, v29, v19);
  v130 = StaticString.description.getter();
  v131 = v30;
  v31._countAndFlagsBits = 32;
  v31._object = 0xE100000000000000;
  String.append(_:)(v31);
  v32._countAndFlagsBits = a6;
  v32._object = v117;
  String.append(_:)(v32);
  v33 = v131;
  v117 = v130;
  v34 = v18;
  sub_10004EDD0(v124, v18, type metadata accessor for LogID);

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  v37 = os_log_type_enabled(v35, v36);
  v113 = v21;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v110 = a9;
    v39 = v38;
    v40 = swift_slowAlloc();
    *v39 = 136446210;
    v129 = v40;
    v130 = 2113069;
    v131 = 0xE300000000000000;
    v41._countAndFlagsBits = v115;
    v41._object = v23;
    String.append(_:)(v41);
    v42 = (v34 + *(v116 + 24));
    v109 = v34;
    v43 = *v42;
    v44 = v42[1];

    v45._countAndFlagsBits = v43;
    v45._object = v44;
    String.append(_:)(v45);

    v46._countAndFlagsBits = v117;
    v46._object = v33;
    String.append(_:)(v46);

    v47 = v130;
    v48 = v131;
    sub_10004EE38(v109, type metadata accessor for LogID);
    v49 = sub_100035760(v47, v48, &v129);

    *(v39 + 4) = v49;
    _os_log_impl(&_mh_execute_header, v35, v36, "%{public}s", v39, 0xCu);
    sub_10000CE78(v40);

    v27 = v110;
  }

  else
  {

    sub_10004EE38(v34, type metadata accessor for LogID);
  }

  v50 = v118;
  sub_1000195AC(v27, &v134);
  v22 = v50;
  v21 = v120;
  if (!v50)
  {
    v76 = mach_absolute_time();
    v18 = v76 - v119;
    if (v76 < v119)
    {
      __break(1u);
    }

    else if (qword_100173D00 == -1)
    {
      goto LABEL_18;
    }

    swift_once();
LABEL_18:
    v77 = v112;
    if (qword_100179650 != HIDWORD(qword_100179650))
    {
      if (!is_mul_ok(v18, qword_100179650))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (!HIDWORD(qword_100179650))
      {
LABEL_38:
        __break(1u);
LABEL_39:
        os_unfair_lock_unlock(v22 + 4);
        __break(1u);
LABEL_40:
        os_unfair_lock_unlock((v18 + 16));
        __break(1u);
        return;
      }

      v18 = v18 * qword_100179650 / HIDWORD(qword_100179650);
    }

    v130 = StaticString.description.getter();
    v131 = v78;
    v79._countAndFlagsBits = 23328;
    v79._object = 0xE200000000000000;
    String.append(_:)(v79);
    v129 = v18 / 0x3E8;
    v80._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v80);

    v81._countAndFlagsBits = 1567847712;
    v81._object = 0xE400000000000000;
    String.append(_:)(v81);
    v83 = v130;
    v82 = v131;
    sub_10004EDD0(v124, v77, type metadata accessor for LogID);

    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v124 = 0;
      v87 = v86;
      v88 = swift_slowAlloc();
      v123 = v83;
      v89 = v88;
      *v87 = 136446210;
      v129 = v88;
      v130 = 2108732;
      v131 = 0xE300000000000000;
      v90._countAndFlagsBits = v115;
      v90._object = v23;
      String.append(_:)(v90);
      v91 = (v77 + *(v116 + 24));
      v92 = *v91;
      v93 = v91[1];

      v94._countAndFlagsBits = v92;
      v94._object = v93;
      String.append(_:)(v94);

      v95._countAndFlagsBits = v123;
      v95._object = v82;
      String.append(_:)(v95);

      v96 = v130;
      v97 = v131;
      sub_10004EE38(v112, type metadata accessor for LogID);
      v98 = sub_100035760(v96, v97, &v129);

      *(v87 + 4) = v98;
      _os_log_impl(&_mh_execute_header, v84, v85, "%{public}s", v87, 0xCu);
      sub_10000CE78(v89);

      v22 = v124;
    }

    else
    {

      v99 = sub_10004EE38(v77, type metadata accessor for LogID);
    }

    v105 = v114;
    v18 = *(v113 + 16);
    v106 = __chkstk_darwin(v99);
    *(&v109 - 2) = v107;
    *(&v109 - 2) = v133;
    __chkstk_darwin(v106);
    *(&v109 - 2) = sub_10001EF68;
    *(&v109 - 1) = v108;

    os_unfair_lock_lock((v18 + 16));
    sub_10004EFD4();
    if (!v22)
    {
      os_unfair_lock_unlock((v18 + 16));

      (*(v125 + 8))(v126, v105);

      return;
    }

    goto LABEL_40;
  }

  v51 = mach_absolute_time();
  v18 = v51 - v119;
  if (v51 >= v119)
  {
    if (qword_100173D00 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  swift_once();
LABEL_10:
  if (qword_100179650 != HIDWORD(qword_100179650))
  {
    if (is_mul_ok(v18, qword_100179650))
    {
      if (HIDWORD(qword_100179650))
      {
        v18 = v18 * qword_100179650 / HIDWORD(qword_100179650);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_14:
  v130 = 0;
  v131 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);
  v52._countAndFlagsBits = StaticString.description.getter();
  String.append(_:)(v52);

  v53._countAndFlagsBits = 0x203A524F52524520;
  v53._object = 0xE800000000000000;
  String.append(_:)(v53);
  v129 = v22;
  sub_100001AB4(&qword_100177270, &qword_100120A40);
  _print_unlocked<A, B>(_:_:)();
  v54._countAndFlagsBits = 23328;
  v54._object = 0xE200000000000000;
  String.append(_:)(v54);
  v129 = v18 / 0x3E8;
  v55._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v55);

  v56._countAndFlagsBits = 1567847712;
  v56._object = 0xE400000000000000;
  String.append(_:)(v56);
  v58 = v130;
  v57 = v131;
  sub_10004EDD0(v124, v21, type metadata accessor for LogID);

  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.default.getter();

  v61 = os_log_type_enabled(v59, v60);
  v111 = v23;
  if (v61)
  {
    v62 = swift_slowAlloc();
    v124 = v22;
    v63 = v62;
    v64 = swift_slowAlloc();
    v123 = v58;
    v65 = v64;
    *v63 = 136446210;
    v129 = v64;
    v130 = 11580;
    v131 = 0xE200000000000000;
    v66._countAndFlagsBits = v115;
    v66._object = v23;
    String.append(_:)(v66);
    v67 = (v21 + *(v116 + 24));
    v68 = *v67;
    v69 = v67[1];

    v70._countAndFlagsBits = v68;
    v70._object = v69;
    String.append(_:)(v70);

    v71._countAndFlagsBits = v123;
    v71._object = v57;
    String.append(_:)(v71);

    v72 = v130;
    v73 = v131;
    sub_10004EE38(v21, type metadata accessor for LogID);
    v74 = sub_100035760(v72, v73, &v129);

    *(v63 + 4) = v74;
    _os_log_impl(&_mh_execute_header, v59, v60, "%{public}s", v63, 0xCu);
    sub_10000CE78(v65);
  }

  else
  {

    v75 = sub_10004EE38(v21, type metadata accessor for LogID);
  }

  v100 = v114;
  v101 = *(v113 + 16);
  v102 = __chkstk_darwin(v75);
  *(&v109 - 2) = v103;
  *(&v109 - 2) = v133;
  __chkstk_darwin(v102);
  *(&v109 - 2) = sub_10001EF68;
  *(&v109 - 1) = v104;

  os_unfair_lock_lock(v101 + 4);
  sub_10004EFD4();
  os_unfair_lock_unlock(v101 + 4);

  swift_willThrow();
  (*(v125 + 8))(v126, v100);
}

unint64_t sub_10004EC10(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10015A0E0, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10004EC9C(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = a3;
  v5 = a2;
  v6 = a1;
  a1 = String.count.getter();
  if (__OFSUB__(a1, v6))
  {
LABEL_14:
    __break(1u);
    return String.subscript.getter(a1, a2, a3, a4);
  }

  v7 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v7 = v5;
  }

  v8 = v7 << 16;
  v9 = String.index(_:offsetBy:limitedBy:)();
  v11 = v8 | 0xB;
  if (((v4 >> 60) & ((v5 & 0x800000000000000) == 0)) == 0)
  {
    v11 = v8 | 7;
  }

  if (v10)
  {
    a2 = v11;
  }

  else
  {
    a2 = v9;
  }

  a1 = 15;
  a3 = v5;
  a4 = v4;

  return String.subscript.getter(a1, a2, a3, a4);
}

void *sub_10004ED68@<X0>(uint64_t a1@<X8>)
{
  result = (*(v1 + 16))(v7);
  if (!v2)
  {
    v5 = v7[1];
    v6 = v8;
    *a1 = v7[0];
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_10004EDD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004EE38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_10004EECC@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
  }

  return result;
}

uint64_t *sub_10004EF10(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void *sub_10004EFEC(void (*a1)(uint64_t *__return_ptr, int *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = _swiftEmptyArrayStorage;
  if (v4)
  {
    v21 = _swiftEmptyArrayStorage;
    sub_100046FE0(0, v4, 0);
    v5 = _swiftEmptyArrayStorage;
    v8 = (a3 + 36);
    while (1)
    {
      v9 = *v8;
      v17 = *(v8 - 1);
      v18 = v9;
      a1(&v19, &v17, &v16);
      if (v3)
      {
        break;
      }

      v10 = v19;
      v11 = v20;
      v21 = v5;
      v13 = v5[2];
      v12 = v5[3];
      if (v13 >= v12 >> 1)
      {
        sub_100046FE0((v12 > 1), v13 + 1, 1);
        v5 = v21;
      }

      v8 += 3;
      v5[2] = v13 + 1;
      v14 = v5 + 12 * v13;
      *(v14 + 4) = v10;
      *(v14 + 10) = v11;
      if (!--v4)
      {
        return v5;
      }
    }
  }

  return v5;
}

uint64_t ActiveFunction.deviceName.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))(a1);
  if (!v2)
  {
    return 0x6E776F6E6B6E55;
  }

  v3 = *(v2 + OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceName);
  v4 = v2;

  return v3;
}

void *sub_10004F1A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100046FB0(0, v1, 0);
    v3 = a1 + 40;
    do
    {
      sub_100001AB4(&qword_100176190, &qword_100121AD8);
      sub_100001AB4(&qword_100176198, &unk_100121AE0);
      swift_dynamicCast();
      v5 = _swiftEmptyArrayStorage[2];
      v4 = _swiftEmptyArrayStorage[3];
      if (v5 >= v4 >> 1)
      {
        sub_100046FB0((v4 > 1), v5 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v5 + 1;
      v6 = _swiftEmptyArrayStorage + 12 * v5;
      *(v6 + 4) = v8;
      *(v6 + 10) = v9;
      v3 += 12;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

BOOL sub_10004F2E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000530DC(a1, a2, a3);
  if (!v4)
  {
    v6 = *(v5 + 2) + 1;
    v7 = 40;
    do
    {
      v3 = --v6 != 0;
      if (!v6)
      {
        break;
      }

      v8 = *&v5[v7];
      v7 += 24;
    }

    while (*(v8 + 136) != 257);
  }

  return v3;
}

char *sub_10004F348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 136) == 257)
  {
    return _swiftEmptyArrayStorage;
  }

  result = (*(a3 + 56))(a2, a3);
  v6 = *(result + 2);
  if (v6)
  {
    v7 = 0;
    v8 = result + 48;
    v3 = _swiftEmptyArrayStorage;
    do
    {
      v9 = *(result + 2);
      v10 = v9 >= v7;
      v11 = v9 - v7;
      if (!v10)
      {
        v11 = 0;
      }

      v12 = v6 - v7;
      v13 = &v8[24 * v7++];
      while (1)
      {
        if (!v11)
        {
          __break(1u);
          return result;
        }

        v14 = *(v13 - 1);
        if (*(v14 + 72) == *(a1 + 72))
        {
          v15 = *(v13 - 2);
          if (*(v15 + 136) != 257)
          {
            break;
          }
        }

        --v11;
        v13 += 24;
        ++v7;
        if (!--v12)
        {
          goto LABEL_19;
        }
      }

      v23 = result;
      v16 = *v13;

      v22 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1000241C0(0, *(v3 + 2) + 1, 1, v3);
      }

      v18 = *(v3 + 2);
      v17 = *(v3 + 3);
      v19 = v18 + 1;
      result = v23;
      if (v18 >= v17 >> 1)
      {
        v21 = sub_1000241C0((v17 > 1), v18 + 1, 1, v3);
        v19 = v18 + 1;
        v3 = v21;
        result = v23;
      }

      *(v3 + 2) = v19;
      v20 = &v3[24 * v18];
      *(v20 + 4) = v15;
      *(v20 + 5) = v14;
      v8 = v22;
      *(v20 + 6) = v16;
    }

    while (v12 != 1);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

LABEL_19:

  return v3;
}

uint64_t ActiveFunction.functionCategory.getter(uint64_t a1, uint64_t a2)
{
  v2 = *((*(a2 + 24))(a1) + 208);

  return v2;
}

void sub_10004F57C(int a1, unint64_t a2, char a3, void *a4, uint64_t a5, void (**a6)(void *__return_ptr, uint64_t, id))
{
  v8 = v6;
  v48 = 0;
  v15 = USBDescriptorControl.pbLayout()();
  sub_1000A0294(v15);
  if (!v7)
  {
    v17 = v16;
    a6[1](v52, a5, a6);
    sub_1000212F0(v52);
    if (v53)
    {
      if (v53 != 48 && v53 != 32)
      {
        sub_10000CA2C();
        swift_allocError();
        v34 = 26;
        goto LABEL_22;
      }

      v18 = 1;
    }

    else
    {
      v18 = 129;
    }

    v47 = v18;
    v46 = (a6[2])(a5, a6);
    if (v46)
    {
      v45 = sub_1000A2D88(a1 & 0xFFFFFF);
      if (a3)
      {
        v19 = 0;
      }

      else
      {
        v19 = a2;
      }

      v20 = a4[3];
      v21 = a4[4];
      sub_10001EAB8(a4, v20);
      (*(v21 + 8))(v49, v20, v21);
      v22 = v50;
      v23 = v51;
      sub_10001EAB8(v49, v50);
      v24 = (*(v23 + 16))(v22, v23);
      v25 = *(*((a6[3])(a5, a6) + 32) + 2);

      v26 = v24 | v19;
      v27 = v17;
      if ((v24 | v19) >> 16)
      {
        __break(1u);
      }

      else
      {
        a6 = v27;
        v26 = NSData.startIndex.getter();
        v8 = NSData.endIndex.getter();
        v28 = NSData.startIndex.getter();
        v29 = NSData.endIndex.getter();
        if (v26 >= v28 && v29 >= v26)
        {
          v30 = NSData.startIndex.getter();
          v31 = NSData.endIndex.getter();
          if (v8 >= v30 && v31 >= v8)
          {
            v32 = v8 - v26;
            if (!__OFSUB__(v8, v26))
            {
              if (v32 >= 0xFFFF)
              {
                v32 = 0xFFFFLL;
              }

              sub_1000FC690(((v25 | (v24 << 8)) << 32) | ((v32 & ~(v32 >> 63)) << 48) | ((v19 | (v45 << 8)) << 16) | (v47 << 8) | 0xA1, v17, &v48);

              sub_10000CE78(v49);
              v35 = v48;
              v36 = a6;
              v37 = NSData.startIndex.getter();
              v38 = NSData.endIndex.getter();
              v39 = NSData.startIndex.getter();
              v40 = NSData.endIndex.getter();
              if (v37 < v39 || v40 < v37)
              {
                __break(1u);
              }

              else
              {
                v41 = NSData.startIndex.getter();
                v42 = NSData.endIndex.getter();

                if (v38 >= v41 && v42 >= v38)
                {
                  if (!__OFSUB__(v38, v37))
                  {
                    if (v35 == v38 - v37)
                    {
                    }

                    else
                    {
                      sub_10000CA2C();
                      swift_allocError();
                      *v44 = 30;
                      *(v44 + 8) = 0;
                      *(v44 + 16) = 0xE000000000000000;
                      swift_willThrow();
                    }

                    return;
                  }

LABEL_38:
                  __break(1u);
                }
              }

              __break(1u);
              goto LABEL_38;
            }

LABEL_35:
            __break(1u);
            __break(1u);
            __break(1u);
            swift_once();
            v43 = type metadata accessor for AUALog(0);
            sub_10000A1BC(v43, qword_100179508);
            sub_100039F58(2, v25 + v8, v26, v17);

            swift_willThrow();

            sub_10000CE78(v49);
            return;
          }

LABEL_34:
          __break(1u);
          goto LABEL_35;
        }
      }

      __break(1u);
      goto LABEL_34;
    }

    sub_10000CA2C();
    swift_allocError();
    v34 = 7;
LABEL_22:
    *v33 = v34;
    *(v33 + 8) = 0;
    *(v33 + 16) = 0xE000000000000000;
    swift_willThrow();
  }
}

void sub_10004FD90(int a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  v72 = 0;
  (*(a6 + 8))(v77, a5, a6);
  sub_1000212F0(v77);
  if ((v78 | 0x10) != 0x30)
  {
    sub_10000CA2C();
    swift_allocError();
    *v26 = 26;
    *(v26 + 8) = 0;
    *(v26 + 16) = 0xE000000000000000;
    swift_willThrow();
    return;
  }

  v13 = USBDescriptorControl.pbLayout()();
  v14 = sub_1000A0D14(v13, 1);
  if (!v6)
  {
    v64 = v13;
    v71 = v15;
    v67 = v14;
    v68 = a5;
    v69 = (*(a6 + 16))();
    if (!v69)
    {
      sub_10000CA2C();
      swift_allocError();
      *v27 = 7;
      *(v27 + 8) = 0;
      *(v27 + 16) = 0xE000000000000000;
      swift_willThrow();

      return;
    }

    v65 = sub_1000A2D88(a1 & 0xFFFFFF);
    if (a3)
    {
      a2 = 0;
    }

    v16 = a4[3];
    v17 = a4[4];
    sub_10001EAB8(a4, v16);
    v61 = *(v17 + 8);
    v62 = v17;
    v63 = v16;
    v61(v74, v16, v17);
    v18 = v75;
    v19 = v76;
    sub_10001EAB8(v74, v75);
    v20 = (*(v19 + 16))(v18, v19);
    v70(v79, a5, a6);
    v85[4] = v79[4];
    v85[5] = v79[5];
    v85[6] = v79[6];
    v86 = v80;
    v85[0] = v79[0];
    v85[1] = v79[1];
    v85[2] = v79[2];
    v85[3] = v79[3];
    sub_100057294(v85, &v73);
    sub_1000212F0(v79);
    v21 = *(*&v85[0] + 2);
    sub_1000572F0(v85);
    if ((v20 | a2) >= 0x10000)
    {
      __break(1u);
    }

    else
    {
      v22 = a2;
      v18 = NSData.startIndex.getter();
      v19 = NSData.endIndex.getter();
      a2 = NSData.startIndex.getter();
      v23 = NSData.endIndex.getter();
      if (v18 >= a2 && v23 >= v18)
      {
        a2 = NSData.startIndex.getter();
        v24 = NSData.endIndex.getter();
        if (v19 >= a2 && v24 >= v19)
        {
          v25 = v19 - v18;
          if (!__OFSUB__(v19, v18))
          {
            if (v25 >= 0xFFFF)
            {
              v25 = 0xFFFFLL;
            }

            v66 = v22 | (v65 << 8);
            sub_1000FC690(((v21 | (v20 << 8)) << 32) | ((v25 & ~(v25 >> 63)) << 48) | (v66 << 16) | 0x2A1, v71, &v72);
            sub_10000CE78(v74);
            v28 = v72;
            v29 = NSData.startIndex.getter();
            v30 = NSData.endIndex.getter();
            v31 = NSData.startIndex.getter();
            v32 = NSData.endIndex.getter();
            if (v29 < v31 || v32 < v29)
            {
              __break(1u);
            }

            else
            {
              v33 = NSData.startIndex.getter();
              v34 = NSData.endIndex.getter();
              v35 = v69;
              if (v30 >= v33 && v34 >= v30)
              {
                if (!__OFSUB__(v30, v29))
                {
                  if (v28 != v30 - v29)
                  {
                    goto LABEL_41;
                  }

                  if ((v67 & 0x100) == 0)
                  {
                    sub_10000CA2C();
                    swift_allocError();
                    v37 = 32;
LABEL_42:
                    *v36 = v37;
                    *(v36 + 8) = 0;
                    *(v36 + 16) = 0xE000000000000000;
                    swift_willThrow();

                    return;
                  }

                  v39 = *[v71 bytes];
                  if (v39 == 1)
                  {
LABEL_26:

                    return;
                  }

                  sub_1000A0D14(v64, v39);
                  v41 = v40;

                  v42 = v41;
                  v61(v74, v63, v62);
                  v43 = v75;
                  v44 = v76;
                  sub_10001EAB8(v74, v75);
                  v45 = (*(v44 + 16))(v43, v44);
                  v70(v81, v68, a6);
                  v83[4] = v81[4];
                  v83[5] = v81[5];
                  v83[6] = v81[6];
                  v84 = v82;
                  v83[0] = v81[0];
                  v83[1] = v81[1];
                  v83[2] = v81[2];
                  v83[3] = v81[3];
                  sub_100057294(v83, &v73);
                  sub_1000212F0(v81);
                  v46 = *(*&v83[0] + 2);
                  sub_1000572F0(v83);
                  if (!(v45 >> 16))
                  {
                    v47 = NSData.startIndex.getter();
                    v48 = NSData.endIndex.getter();
                    v49 = NSData.startIndex.getter();
                    v71 = v42;
                    v50 = NSData.endIndex.getter();
                    if (v47 >= v49 && v50 >= v47)
                    {
                      v51 = NSData.startIndex.getter();
                      v52 = NSData.endIndex.getter();
                      if (v48 >= v51 && v52 >= v48)
                      {
                        v53 = v48 - v47;
                        if (!__OFSUB__(v48, v47))
                        {
                          if (v53 >= 0xFFFF)
                          {
                            v53 = 0xFFFFLL;
                          }

                          sub_1000FC690(((v46 | (v45 << 8)) << 32) | ((v53 & ~(v53 >> 63)) << 48) | (v66 << 16) | 0x2A1, v42, &v72);

                          sub_10000CE78(v74);
                          v54 = v72;
                          v55 = NSData.startIndex.getter();
                          v56 = NSData.endIndex.getter();
                          v57 = NSData.startIndex.getter();
                          v58 = NSData.endIndex.getter();
                          if (v55 < v57 || v58 < v55)
                          {
                            __break(1u);
                          }

                          else
                          {
                            v59 = NSData.startIndex.getter();
                            v60 = NSData.endIndex.getter();
                            v35 = v69;
                            if (v56 >= v59 && v60 >= v56)
                            {
                              if (!__OFSUB__(v56, v55))
                              {
                                if (v56 - v55 >= v54)
                                {
                                  goto LABEL_26;
                                }

LABEL_41:
                                sub_10000CA2C();
                                swift_allocError();
                                v37 = 30;
                                goto LABEL_42;
                              }

LABEL_58:
                              __break(1u);
                              return;
                            }
                          }

                          __break(1u);
                          goto LABEL_58;
                        }

LABEL_55:
                        __break(1u);
                      }

LABEL_54:
                      __break(1u);
                      goto LABEL_55;
                    }

LABEL_53:
                    __break(1u);
                    goto LABEL_54;
                  }

LABEL_52:
                  __break(1u);
                  goto LABEL_53;
                }

LABEL_51:
                __break(1u);
                goto LABEL_52;
              }
            }

            __break(1u);
            goto LABEL_51;
          }

LABEL_48:
          __break(1u);
          __break(1u);
          __break(1u);
          swift_once();
          v38 = type metadata accessor for AUALog(0);
          sub_10000A1BC(v38, qword_100179508);
          sub_100039F58(2, v20 + v19, v18, a2);

          swift_willThrow();

          sub_10000CE78(v74);
          return;
        }

LABEL_47:
        __break(1u);
        goto LABEL_48;
      }
    }

    __break(1u);
    goto LABEL_47;
  }
}

uint64_t sub_100050B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_100055B98(a2, a3);
  v7 = result;
  v8 = *(result + 16);
  if (v8)
  {
    v9 = 0;
    v10 = result + 32;
    while (v9 < *(v7 + 16))
    {
      sub_10001EAFC(v10, &v13);
      v11 = v14;
      v12 = v15;
      sub_10001EAB8(&v13, v14);
      if ((*(v12 + 48))(v11, v12) == *(a1 + 32))
      {

        return sub_10000D0A0(&v13, a4);
      }

      ++v9;
      result = sub_10000CE78(&v13);
      v10 += 40;
      if (v8 == v9)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

void *sub_100050C6C(uint64_t a1, uint64_t a2)
{
  v61 = type metadata accessor for LogID(0);
  __chkstk_darwin(v61);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = a1;
  v72 = v2;
  v73 = a2;
  v7 = sub_100055B98(a1, a2);
  v8 = v7[2];
  v68 = v6;
  v67 = v8;
  if (v8)
  {
    v9 = 0;
    v66 = v7 + 4;
    v10 = _swiftEmptyArrayStorage;
    v65 = v7;
    do
    {
      if (v9 >= v7[2])
      {
        goto LABEL_59;
      }

      v69 = v9;
      sub_10001EAFC(&v66[5 * v9], &v83);
      v13 = v85;
      v14 = v86;
      sub_10001EAB8(&v83, v85);
      v15 = (*(v14 + 32))(v13, v14);
      v74 = v16;
      sub_10000CE78(&v83);
      if (v15)
      {
        v17 = v10 + 5;
        v70 = -v10[2];
        v18 = -1;
        while (v70 + v18 != -1)
        {
          if (++v18 >= v10[2])
          {
            goto LABEL_58;
          }

          v19 = v17 + 2;
          v20 = *(v17 - 1);
          v21 = *v17;
          ObjectType = swift_getObjectType();
          v82 = v20;
          v23 = v10;
          v24 = *(v21 + 8);
          v25 = *(v24 + 8);
          swift_unknownObjectRetain();
          v25(v79, ObjectType, v24);
          v26 = v80;
          v27 = v81;
          sub_10001EAB8(v79, v80);
          v28 = (*(v27 + 16))(v26, v27);
          v29 = swift_getObjectType();
          v78 = v15;
          (*(*(v74 + 8) + 8))(v75, v29);
          v30 = v76;
          v31 = v77;
          sub_10001EAB8(v75, v76);
          v32 = v30;
          v10 = v23;
          v33 = (*(v31 + 16))(v32, v31);
          swift_unknownObjectRelease();
          sub_10000CE78(v75);
          sub_10000CE78(v79);
          v17 = v19;
          if (v28 == v33)
          {
            swift_unknownObjectRelease();
            v6 = v68;
            goto LABEL_4;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_100024764(0, v10[2] + 1, 1, v10);
        }

        v6 = v68;
        v35 = v10[2];
        v34 = v10[3];
        if (v35 >= v34 >> 1)
        {
          v10 = sub_100024764((v34 > 1), v35 + 1, 1, v10);
        }

        v10[2] = v35 + 1;
        v11 = &v10[2 * v35];
        v12 = v74;
        v11[4] = v15;
        v11[5] = v12;
      }

LABEL_4:
      v9 = v69 + 1;
      v7 = v65;
    }

    while ((v69 + 1) != v67);
  }

  else
  {

    v10 = _swiftEmptyArrayStorage;
  }

  v66 = v10[2];
  if (!v66)
  {

    return _swiftEmptyArrayStorage;
  }

  v36 = 0;
  v64 = *(v73 + 32);
  v65 = (v73 + 32);
  v63 = v10 + 4;
  v60 = "[Error] Interval already ended";
  v37 = _swiftEmptyArrayStorage;
  v62 = v10;
  while (1)
  {
    if (v36 >= v10[2])
    {
      goto LABEL_60;
    }

    v69 = v36;
    v41 = &v63[2 * v36];
    v42 = *v41;
    v74 = v41[1];
    swift_unknownObjectRetain();
    v43 = v64(v71, v73);
    v44 = v43;
    v83 = _swiftEmptyArrayStorage;
    v45 = v43 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v70 = v42;
    if (v45)
    {
      break;
    }

    v49 = _swiftEmptyArrayStorage;
LABEL_39:

    if ((v49 & 0x8000000000000000) != 0 || (v49 & 0x4000000000000000) != 0)
    {
      v52 = _CocoaArrayWrapper.endIndex.getter();
      v10 = v62;
      if (!v52)
      {
LABEL_48:

        v83 = 0;
        v84 = 0xE000000000000000;
        _StringGuts.grow(_:)(69);
        v53._countAndFlagsBits = ActiveFunction.deviceName.getter(v71, v73);
        String.append(_:)(v53);

        v54._object = (v60 | 0x8000000000000000);
        v54._countAndFlagsBits = 0xD000000000000043;
        String.append(_:)(v54);
        v56 = v83;
        v55 = v84;
        if (qword_100173CB8 != -1)
        {
          swift_once();
        }

        v57 = sub_10000A1BC(v61, qword_1001794F0);
        sub_10000A2A4(v57, v6);
        if (qword_100173CC0 != -1)
        {
          swift_once();
        }

        v58 = type metadata accessor for AUALog(0);
        sub_10000A1BC(v58, qword_100179508);
        sub_100039F58(1, v6, v56, v55);
        swift_unknownObjectRelease();

        sub_10000C9D0(v6);
        goto LABEL_21;
      }
    }

    else
    {
      v10 = v62;
      if (!*(v49 + 16))
      {
        goto LABEL_48;
      }
    }

    swift_unknownObjectRetain();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_10002461C(0, v37[2] + 1, 1, v37);
    }

    v51 = v37[2];
    v50 = v37[3];
    if (v51 >= v50 >> 1)
    {
      v37 = sub_10002461C((v50 > 1), v51 + 1, 1, v37);
    }

    v38 = v70;
    swift_unknownObjectRelease();
    v39 = *(v74 + 16);
    v37[2] = v51 + 1;
    v40 = &v37[3 * v51];
    v40[4] = v38;
    v40[5] = v39;
    v40[6] = v49;
LABEL_21:
    v36 = v69 + 1;
    if ((v69 + 1) == v66)
    {

      return v37;
    }
  }

  v67 = v37;
  v46 = 0;
  while ((v44 & 0xC000000000000001) != 0)
  {
    v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v48 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      goto LABEL_56;
    }

LABEL_32:
    v79[0] = v47;
    if (sub_100055D90(v79, v72, v42, v74, v71, v73))
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v42 = v70;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    ++v46;
    if (v48 == v45)
    {
      v49 = v83;
      v6 = v68;
      v37 = v67;
      goto LABEL_39;
    }
  }

  if (v46 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_57;
  }

  v47 = *(v44 + 8 * v46 + 32);

  v48 = v46 + 1;
  if (!__OFADD__(v46, 1))
  {
    goto LABEL_32;
  }

LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);

  __break(1u);
  return result;
}

void sub_100051434(uint64_t a1, unint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v92 = type metadata accessor for LogID(0);
  __chkstk_darwin(v92);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (*(a2 + 16))(a1, a2);
  if (!v10)
  {
    sub_10000CA2C();
    swift_allocError();
    *v23 = 1;
    *(v23 + 8) = 0;
    *(v23 + 16) = 0xE000000000000000;
    swift_willThrow();
    return;
  }

  v91 = v9;
  v87 = v10;
  v11 = *(a2 + 24);
  v12 = (v11)(a1, a2);
  swift_beginAccess();
  *(v12 + 16) = v2;
  *(v12 + 24) = a2;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
  v88 = a1;
  v93 = a2 + 24;
  v94 = a2;
  v90 = v11;
  v13 = *((v11)(a1, a2) + 168);

  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = v13 + 32;
    while (v15 < *(v13 + 16))
    {
      sub_10001EAFC(v16, v97);
      v17 = v98;
      v18 = v99;
      sub_100057378(v97, v98);
      (*(v18 + 72))(v2, v94, v17, v18);
      if (v3)
      {

        sub_10000CE78(v97);
        return;
      }

      ++v15;
      sub_10000CE78(v97);
      v16 += 40;
      if (v14 == v15)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_18:
    v20 = _CocoaArrayWrapper.endIndex.getter();
    if (!v20)
    {
      goto LABEL_19;
    }

    goto LABEL_9;
  }

LABEL_7:

  v15 = v94;
  v19 = (*(v94 + 32))(v88, v94);
  v13 = v19;
  if (v19 >> 62)
  {
    goto LABEL_18;
  }

  v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v20)
  {
    goto LABEL_19;
  }

LABEL_9:
  if (v20 < 1)
  {
    __break(1u);
    goto LABEL_62;
  }

  v21 = 0;
  do
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v22 = *(v13 + 8 * v21 + 32);
    }

    ++v21;
    swift_beginAccess();
    *(v22 + 16) = v5;
    *(v22 + 24) = v15;
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
  }

  while (v20 != v21);
LABEL_19:

  v24 = v88;
  v25 = v90;
  v26 = *((v90)(v88, v15) + 160);

  if (v26)
  {
    v27 = *((v25)(v24, v15) + 200);
    v28 = v27;

    if (!v27)
    {
      v15 = v94;
LABEL_29:

      goto LABEL_30;
    }

    sub_100117448(v28, 1);
    if (v3)
    {

      return;
    }

    if (!*(v26 + 120))
    {
      v15 = v94;
      goto LABEL_28;
    }

    v29 = *(v26 + 112);
    v15 = v94;
    if ((v29 & 0x8000000000000000) == 0)
    {
      v30 = sub_100005814(v28, v29);
      (*(v15 + 72))(v30, v24, v15);
      sub_100053D60(v24, v15);
LABEL_28:

      goto LABEL_29;
    }

LABEL_62:
    __break(1u);
    return;
  }

LABEL_30:
  v31 = (*(v15 + 216))(v24, v15);
  v32 = *(v31 + 16);
  v86 = v31;
  if (v32)
  {
    v33 = v31;
    v85 = OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList;
    v84 = &v87[OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceName];
    v34 = type metadata accessor for AUAAudioDevice(0);
    v89 = "Memory Request on device ";
    v90 = v34;
    v82 = 0x800000010012CE50;
    v83 = " inStartFunction";
    v35 = (v33 + 48);
    while (1)
    {
      v37 = *(v35 - 2);
      v36 = *(v35 - 1);
      v38 = *v35;
      v39 = objc_allocWithZone(v90);
      swift_unknownObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v40 = swift_unknownObjectRetain();
      v93 = v37;
      sub_10000E2BC(v40, v94, v37, v36, v38);
      v42 = v4;
      if (v4)
      {
        goto LABEL_36;
      }

      v43 = v41;
      AUAAudioDevice.addGlobalControls()();
      v42 = v44;
      if (v44)
      {
        break;
      }

      AUAAudioDevice.addStreamControls()();
      v42 = v45;
      if (v45)
      {
        break;
      }

      sub_1000554F8(v43, v88, v94);
      v4 = 0;
      if (v54)
      {
        v55 = v54;
        [v87 addAudioDevice:v55];
      }

      else
      {
        v56 = v87;
        v57 = *&v87[v85];
        if (v57 && (v58 = sub_1000AA808(0x1Cu, v57), v56 = v87, v58))
        {
          v59 = v5;
          v95 = 0;
          v96 = 0xE000000000000000;
          _StringGuts.grow(_:)(31);

          v95 = 0xD00000000000001DLL;
          v96 = v82;
          v61 = *v84;
          v60 = v84[1];

          v62._countAndFlagsBits = v61;
          v62._object = v60;
          String.append(_:)(v62);

          v64 = v95;
          v63 = v96;
          if (qword_100173CB8 != -1)
          {
            swift_once();
          }

          v65 = sub_10000A1BC(v92, qword_1001794F0);
          v66 = v91;
          sub_10000A2A4(v65, v91);
          if (qword_100173CC0 != -1)
          {
            swift_once();
          }

          v67 = type metadata accessor for AUALog(0);
          sub_10000A1BC(v67, qword_100179508);
          sub_100039AA0(1, v66, v64, v63);

          sub_10000C9D0(v66);
          v5 = v59;
        }

        else
        {
          [v56 addAudioDevice:v43];
        }

        AUAAudioDevice.startDevice()();
        v4 = v68;
        if (v68)
        {
          v81 = v5;
          v95 = 0;
          v96 = 0xE000000000000000;
          _StringGuts.grow(_:)(28);
          v70 = *v84;
          v69 = v84[1];

          v71._countAndFlagsBits = v70;
          v71._object = v69;
          String.append(_:)(v71);

          v72._countAndFlagsBits = 0x20726F72726520;
          v72._object = 0xE700000000000000;
          String.append(_:)(v72);
          v100 = v4;
          sub_100001AB4(&qword_100177270, &qword_100120A40);
          _print_unlocked<A, B>(_:_:)();
          v73._countAndFlagsBits = 0xD000000000000011;
          v73._object = (v83 | 0x8000000000000000);
          String.append(_:)(v73);
          v75 = v95;
          v74 = v96;
          if (qword_100173CB8 != -1)
          {
            swift_once();
          }

          v76 = sub_10000A1BC(v92, qword_1001794F0);
          v77 = v91;
          sub_10000A2A4(v76, v91);
          if (qword_100173CC0 != -1)
          {
            swift_once();
          }

          v78 = type metadata accessor for AUALog(0);
          sub_10000A1BC(v78, qword_100179508);
          sub_100039F58(1, v77, v75, v74);

          sub_10000C9D0(v77);
          v79 = v43;
          [v87 removeAudioDevice:v79];

          swift_unknownObjectRelease();

          v4 = 0;
          v5 = v81;
          goto LABEL_41;
        }
      }

      swift_unknownObjectRelease();
LABEL_41:
      v35 += 3;
      if (!--v32)
      {
        goto LABEL_60;
      }
    }

LABEL_36:
    v4 = 0;
    v46 = v5;
    v95 = 0;
    v96 = 0xE000000000000000;
    _StringGuts.grow(_:)(24);
    v47._countAndFlagsBits = 0x20726F727265;
    v47._object = 0xE600000000000000;
    String.append(_:)(v47);
    v100 = v42;
    sub_100001AB4(&qword_100177270, &qword_100120A40);
    _print_unlocked<A, B>(_:_:)();
    v48._object = (v89 | 0x8000000000000000);
    v48._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v48);
    v49 = v95;
    v50 = v96;
    if (qword_100173CB8 != -1)
    {
      swift_once();
    }

    v51 = sub_10000A1BC(v92, qword_1001794F0);
    v52 = v91;
    sub_10000A2A4(v51, v91);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v53, qword_100179508);
    sub_100039F58(1, v52, v49, v50);

    swift_unknownObjectRelease();
    sub_10000C9D0(v52);
    v5 = v46;
    goto LABEL_41;
  }

LABEL_60:
}

unint64_t sub_100051EB0(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 16))();
  if (v4)
  {
    v5 = v4;
    [v4 removeAllAudioDevices];
  }

  v6 = *(a2 + 24);
  v7 = *(v6(a1, a2) + 160);

  if (v7)
  {
    if (*(v7 + 120))
    {

      sub_100116498(0);

      *(v7 + 120) = 0;
    }
  }

  result = (*(a2 + 32))(a1, a2);
  v9 = result;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v10 = result;
    v21 = v6;
    if (result)
    {
      goto LABEL_9;
    }

LABEL_17:

    v13 = v6(a1, a2);
    goto LABEL_18;
  }

  v10 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  v21 = v6;
  if (!v10)
  {
    goto LABEL_17;
  }

LABEL_9:
  if (v10 < 1)
  {
    __break(1u);
    return result;
  }

  v11 = 0;
  do
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v12 = *(v9 + 8 * v11 + 32);
    }

    ++v11;
    swift_beginAccess();
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;

    swift_unknownObjectRelease();
  }

  while (v10 != v11);

  v6 = v21;
  v13 = v21(a1, a2);
LABEL_18:
  v14 = *(v13 + 168);

  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = v14 + 32;
    do
    {
      sub_10001EAFC(v16, v22);
      v17 = v23;
      v18 = v24;
      sub_100057378(v22, v23);
      (*(v18 + 24))(0, 0, v17, v18);
      sub_10000CE78(v22);
      v16 += 40;
      --v15;
    }

    while (v15);

    v19 = v21(a1, a2);
  }

  else
  {

    v19 = v6(a1, a2);
  }

  v20 = v19;
  swift_beginAccess();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;

  return swift_unknownObjectRelease();
}

uint64_t sub_100052184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *((*(a3 + 24))(a2, a3) + 168);

  v8 = *(v6 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = v6 + 32;
    while (v9 < *(v6 + 16))
    {
      sub_10001EAFC(v10, &v19);
      v11 = v20;
      v12 = v21;
      sub_10001EAB8(&v19, v20);
      (*(v12 + 8))(v16, v11, v12);
      v13 = v17;
      v14 = v18;
      sub_10001EAB8(v16, v17);
      v15 = (*(v14 + 16))(v13, v14);
      sub_10000CE78(v16);
      if (v15 == a1)
      {

        return sub_10000D0A0(&v19, a4);
      }

      ++v9;
      result = sub_10000CE78(&v19);
      v10 += 40;
      if (v8 == v9)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

void sub_1000522EC(char *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t (**a4)(void, void)@<X4>, uint64_t a5@<X8>)
{
  v58 = 0;
  v11 = a4[2](a2, a4);
  if (!v11)
  {
    sub_10000CA2C();
    swift_allocError();
    *v32 = 58;
    *(v32 + 8) = 0;
    *(v32 + 16) = 0xE000000000000000;
    swift_willThrow();
    return;
  }

  v57 = v11;
  v54 = *(a3 - 8);
  v12 = [objc_allocWithZone(NSMutableData) initWithLength:*(v54 + 64)];
  if (!v12)
  {
    sub_10000CA2C();
    swift_allocError();
    *v33 = 1;
    *(v33 + 8) = 0;
    *(v33 + 16) = 0xE000000000000000;
    swift_willThrow();

    return;
  }

  v13 = v12;
  v53 = a5;
  v55 = a4[20](a2, a4);
  v56 = *(*(a4[3](a2, a4) + 32) + 2);

  v14 = v13;
  v15 = NSData.startIndex.getter();
  v16 = v14;
  v17 = NSData.endIndex.getter();
  v18 = NSData.startIndex.getter();
  v19 = NSData.endIndex.getter();
  if (v15 < v18 || v19 < v15)
  {
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v16 = v14;
  v21 = NSData.startIndex.getter();
  v22 = NSData.endIndex.getter();
  if (v17 < v21 || v22 < v17)
  {
    goto LABEL_39;
  }

  v24 = &v17[-v15];
  if (__OFSUB__(v17, v15))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if ((v24 & 0x8000000000000000) != 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v24 >> 16)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v17 = a1;
  v25 = (v56 << 32) | (v24 << 48) | (a1 << 16) | (v55 << 8) | 0xA1;
  a1 = v57;
  sub_1000FC690(v25, v13, &v58);
  if (v5)
  {
    v16 = _convertErrorToNSError(_:)();
    v26 = [v16 code];

    if (v26 >= 0xFFFFFFFF80000000)
    {
      if (v26 <= 0x7FFFFFFF)
      {
        v27 = [v57 boxName];
        if (v27)
        {
          v28 = v27;
          v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v31 = v30;
        }

        else
        {
          v31 = 0xEE00656369766544;
          v29 = 0x206E776F6E6B6E55;
        }

        if (v26 != -536850432)
        {
          _StringGuts.grow(_:)(41);

          sub_100001AB4(&qword_100173C98, &unk_100120120);
          v45 = swift_allocObject();
          *(v45 + 16) = xmmword_10011DE90;
          *(v45 + 56) = &type metadata for Int32;
          *(v45 + 64) = &protocol witness table for Int32;
          *(v45 + 32) = v26;
          v46._countAndFlagsBits = String.init(format:_:)();
          String.append(_:)(v46);

          v47._countAndFlagsBits = 0xD00000000000001CLL;
          v47._object = 0x800000010012CDD0;
          String.append(_:)(v47);
          v48._countAndFlagsBits = v29;
          v48._object = v31;
          String.append(_:)(v48);

          v49._countAndFlagsBits = 58;
          v49._object = 0xE100000000000000;
          String.append(_:)(v49);
          v50 = swift_allocObject();
          *(v50 + 16) = xmmword_100120CD0;
          *(v50 + 56) = &type metadata for UInt8;
          *(v50 + 64) = &protocol witness table for UInt8;
          *(v50 + 32) = -95;
          *(v50 + 96) = &type metadata for UInt8;
          *(v50 + 104) = &protocol witness table for UInt8;
          *(v50 + 72) = v55;
          *(v50 + 136) = &type metadata for UInt16;
          *(v50 + 144) = &protocol witness table for UInt16;
          *(v50 + 112) = v17;
          *(v50 + 176) = &type metadata for UInt16;
          *(v50 + 184) = &protocol witness table for UInt16;
          *(v50 + 152) = v56;
          *(v50 + 216) = &type metadata for UInt16;
          *(v50 + 224) = &protocol witness table for UInt16;
          *(v50 + 192) = v24;
          v51._countAndFlagsBits = String.init(format:_:)();
          String.append(_:)(v51);

          v16 = 0x20726F727245;
          v17 = 0xE600000000000000;
          v15 = OBJC_IVAR____TtC9AUASDCore9USBDevice_logID;
          if (qword_100173CC0 != -1)
          {
            swift_once();
          }

          v52 = type metadata accessor for AUALog(0);
          sub_10000A1BC(v52, qword_100179508);
          a1 = v57;
          goto LABEL_35;
        }

        _StringGuts.grow(_:)(39);

        v40._countAndFlagsBits = v29;
        v40._object = v31;
        String.append(_:)(v40);

        v41._countAndFlagsBits = 0x64656C6C61745320;
        v41._object = 0xEA0000000000203ALL;
        String.append(_:)(v41);
        sub_100001AB4(&qword_100173C98, &unk_100120120);
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_100120CD0;
        *(v42 + 56) = &type metadata for UInt8;
        *(v42 + 64) = &protocol witness table for UInt8;
        *(v42 + 32) = -95;
        *(v42 + 96) = &type metadata for UInt8;
        *(v42 + 104) = &protocol witness table for UInt8;
        *(v42 + 72) = v55;
        *(v42 + 136) = &type metadata for UInt16;
        *(v42 + 144) = &protocol witness table for UInt16;
        *(v42 + 112) = v17;
        *(v42 + 176) = &type metadata for UInt16;
        *(v42 + 184) = &protocol witness table for UInt16;
        *(v42 + 152) = v56;
        *(v42 + 216) = &type metadata for UInt16;
        *(v42 + 224) = &protocol witness table for UInt16;
        *(v42 + 192) = v24;
        v43._countAndFlagsBits = String.init(format:_:)();
        String.append(_:)(v43);

        v16 = 0xD000000000000019;
        v17 = 0x800000010012CDF0;
        v15 = OBJC_IVAR____TtC9AUASDCore9USBDevice_logID;
        if (qword_100173CC0 == -1)
        {
LABEL_31:
          v44 = type metadata accessor for AUALog(0);
          sub_10000A1BC(v44, qword_100179508);
LABEL_35:
          sub_100039F58(2, &a1[v15], v16, v17);

          swift_willThrow();

          goto LABEL_36;
        }

LABEL_48:
        swift_once();
        goto LABEL_31;
      }

      goto LABEL_44;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v34 = v58;
  v16 = v14;
  v17 = NSData.startIndex.getter();
  v15 = NSData.endIndex.getter();
  v35 = NSData.startIndex.getter();
  v36 = NSData.endIndex.getter();
  if (v17 < v35 || v36 < v17)
  {
    goto LABEL_45;
  }

  v16 = v14;
  v37 = NSData.startIndex.getter();
  v38 = NSData.endIndex.getter();
  if (v15 < v37 || v38 < v15)
  {
    goto LABEL_46;
  }

  v16 = v53;
  if (__OFSUB__(v15, v17))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v15 - v17 < v34)
  {
    sub_10000CA2C();
    swift_allocError();
    *v39 = 30;
    *(v39 + 8) = 0;
    *(v39 + 16) = 0xE000000000000000;
    swift_willThrow();

LABEL_36:
    return;
  }

  (*(v54 + 16))(v53, [v14 bytes], a3);

  (*(v54 + 56))(v53, 0, 1, a3);
}

void sub_100052AFC(void *a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(void, void))
{
  v48 = 0;
  v10 = a4[2](a3, a4);
  if (!v10)
  {
    sub_10000CA2C();
    swift_allocError();
    *v25 = 58;
    *(v25 + 8) = 0;
    *(v25 + 16) = 0xE000000000000000;
    swift_willThrow();
    return;
  }

  v11 = v10;
  v44 = a4[21](a3, a4);
  v45 = *(*(a4[3](a3, a4) + 32) + 2);

  v12 = a2;
  v13 = NSData.startIndex.getter();
  v14 = NSData.endIndex.getter();
  v15 = NSData.startIndex.getter();
  v16 = NSData.endIndex.getter();
  if (v13 < v15 || v16 < v13)
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v12 = a2;
  v17 = NSData.startIndex.getter();
  v18 = NSData.endIndex.getter();
  if (v14 < v17 || v18 < v14)
  {
    goto LABEL_31;
  }

  v5 = v14 - v13;
  if (__OFSUB__(v14, v13))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v5 >> 16)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  sub_1000FC690((v45 << 32) | (v5 << 48) | (a1 << 16) | (v44 << 8) | 0x21, a2, &v48);
  if (v4)
  {
    v12 = _convertErrorToNSError(_:)();
    v19 = [v12 code];

    if (v19 >= 0xFFFFFFFF80000000)
    {
      if (v19 <= 0x7FFFFFFF)
      {
        v20 = [v11 boxName];
        if (v20)
        {
          v21 = v20;
          v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v24 = v23;
        }

        else
        {
          v24 = 0xEE00656369766544;
          v22 = 0x206E776F6E6B6E55;
        }

        if (v19 == -536850432)
        {
          _StringGuts.grow(_:)(39);

          v46 = 0xD000000000000019;
          v47 = 0x800000010012CDF0;
          v34._countAndFlagsBits = v22;
          v34._object = v24;
          String.append(_:)(v34);

          v35._countAndFlagsBits = 0x64656C6C61745320;
          v35._object = 0xEA0000000000203ALL;
          String.append(_:)(v35);
          sub_100001AB4(&qword_100173C98, &unk_100120120);
        }

        else
        {
          _StringGuts.grow(_:)(41);

          v46 = 0x20726F727245;
          v47 = 0xE600000000000000;
          sub_100001AB4(&qword_100173C98, &unk_100120120);
          v36 = swift_allocObject();
          *(v36 + 16) = xmmword_10011DE90;
          *(v36 + 56) = &type metadata for Int32;
          *(v36 + 64) = &protocol witness table for Int32;
          *(v36 + 32) = v19;
          v37._countAndFlagsBits = String.init(format:_:)();
          String.append(_:)(v37);

          v38._countAndFlagsBits = 0xD00000000000001CLL;
          v38._object = 0x800000010012CDD0;
          String.append(_:)(v38);
          v39._countAndFlagsBits = v22;
          v39._object = v24;
          String.append(_:)(v39);

          v40._countAndFlagsBits = 58;
          v40._object = 0xE100000000000000;
          String.append(_:)(v40);
        }

        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_100120CD0;
        *(v41 + 56) = &type metadata for UInt8;
        *(v41 + 64) = &protocol witness table for UInt8;
        *(v41 + 32) = 33;
        *(v41 + 96) = &type metadata for UInt8;
        *(v41 + 104) = &protocol witness table for UInt8;
        *(v41 + 72) = v44;
        *(v41 + 136) = &type metadata for UInt16;
        *(v41 + 144) = &protocol witness table for UInt16;
        *(v41 + 112) = a1;
        *(v41 + 176) = &type metadata for UInt16;
        *(v41 + 184) = &protocol witness table for UInt16;
        *(v41 + 152) = v45;
        *(v41 + 216) = &type metadata for UInt16;
        *(v41 + 224) = &protocol witness table for UInt16;
        *(v41 + 192) = v5;
        v42._countAndFlagsBits = String.init(format:_:)();
        String.append(_:)(v42);

        v12 = v46;
        a1 = v47;
        v5 = OBJC_IVAR____TtC9AUASDCore9USBDevice_logID;
        if (qword_100173CC0 == -1)
        {
          goto LABEL_27;
        }

        goto LABEL_37;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      swift_once();
LABEL_27:
      v43 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v43, qword_100179508);
      sub_100039F58(2, v11 + v5, v12, a1);

      goto LABEL_28;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v26 = v48;
  v27 = NSData.startIndex.getter();
  v28 = NSData.endIndex.getter();
  v29 = NSData.startIndex.getter();
  v30 = NSData.endIndex.getter();
  if (v27 < v29 || v30 < v27)
  {
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  v31 = NSData.startIndex.getter();
  v32 = NSData.endIndex.getter();
  if (v28 < v31 || v32 < v28)
  {
    goto LABEL_39;
  }

  if (__OFSUB__(v28, v27))
  {
    goto LABEL_40;
  }

  if (v26 != v28 - v27)
  {
    sub_10000CA2C();
    swift_allocError();
    *v33 = 30;
    *(v33 + 8) = 0;
    *(v33 + 16) = 0xE000000000000000;
LABEL_28:
    swift_willThrow();
  }
}

char *sub_1000530DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 56))(a2, a3);
  v7[2] = a1;
  v5 = sub_1000263F4(sub_100057428, v7, v4);

  return v5;
}

void sub_100053170(int a1, unint64_t a2, char a3, void *a4, unint64_t a5, uint64_t a6, void *a7)
{
  v50 = 0;
  v15 = USBDescriptorControl.pbLayout()();
  v16 = sub_1000A0294(v15);
  if (!v7)
  {
    v18 = v17;
    sub_10009D2FC(a5, v16, v17);
    v48 = a7[1];
    v48(&v55, a6, a7);
    sub_1000212F0(&v55);
    if (v56 > 0x30u || ((1 << v56) & 0x1000100000001) == 0)
    {
      sub_10000CA2C();
      swift_allocError();
      v36 = 26;
    }

    else
    {
      v49 = (a7[2])(a6, a7);
      if (v49)
      {
        v47 = sub_1000A2D88(a1 & 0xFFFFFF);
        if (a3)
        {
          v20 = 0;
        }

        else
        {
          v20 = a2;
        }

        v21 = a4[3];
        v22 = a4[4];
        sub_10001EAB8(a4, v21);
        (*(v22 + 8))(v52, v21, v22);
        v23 = v53;
        v24 = v54;
        sub_10001EAB8(v52, v53);
        v25 = (*(v24 + 16))(v23, v24);
        v48(v57, a6, a7);
        v59[4] = v57[4];
        v59[5] = v57[5];
        v59[6] = v57[6];
        v60 = v58;
        v59[0] = v57[0];
        v59[1] = v57[1];
        v59[2] = v57[2];
        v59[3] = v57[3];
        sub_100057294(v59, &v51);
        sub_1000212F0(v57);
        v26 = *(*&v59[0] + 2);
        sub_1000572F0(v59);
        v27 = v25 | v20;
        v28 = v18;
        if ((v25 | v20) >> 16)
        {
          __break(1u);
        }

        else
        {
          a7 = v28;
          v27 = NSData.startIndex.getter();
          v29 = NSData.endIndex.getter();
          v30 = NSData.startIndex.getter();
          v31 = NSData.endIndex.getter();
          if (v27 >= v30 && v31 >= v27)
          {
            v32 = NSData.startIndex.getter();
            v33 = NSData.endIndex.getter();
            if (v29 >= v32 && v33 >= v29)
            {
              v34 = v29 - v27;
              if (!__OFSUB__(v29, v27))
              {
                if (v34 >= 0xFFFF)
                {
                  v34 = 0xFFFFLL;
                }

                sub_1000FC690(((v26 | (v25 << 8)) << 32) | ((v34 & ~(v34 >> 63)) << 48) | ((v20 | (v47 << 8)) << 16) | 0x121, v18, &v50);

                sub_10000CE78(v52);
                v37 = v50;
                v38 = a7;
                v39 = NSData.startIndex.getter();
                v40 = NSData.endIndex.getter();
                v41 = NSData.startIndex.getter();
                v42 = NSData.endIndex.getter();
                if (v39 < v41 || v42 < v39)
                {
                  __break(1u);
                }

                else
                {
                  v43 = NSData.startIndex.getter();
                  v44 = NSData.endIndex.getter();

                  if (v40 >= v43 && v44 >= v40)
                  {
                    if (!__OFSUB__(v40, v39))
                    {
                      if (v37 == v40 - v39)
                      {
                      }

                      else
                      {
                        sub_10000CA2C();
                        swift_allocError();
                        *v46 = 30;
                        *(v46 + 8) = 0;
                        *(v46 + 16) = 0xE000000000000000;
                        swift_willThrow();
                      }

                      return;
                    }

LABEL_37:
                    __break(1u);
                  }
                }

                __break(1u);
                goto LABEL_37;
              }

LABEL_34:
              __break(1u);
              __break(1u);
              __break(1u);
              swift_once();
              v45 = type metadata accessor for AUALog(0);
              sub_10000A1BC(v45, qword_100179508);
              sub_100039F58(2, v49 + v20, v27, v18);

              swift_willThrow();

              sub_10000CE78(v52);
              return;
            }

LABEL_33:
            __break(1u);
            goto LABEL_34;
          }
        }

        __break(1u);
        goto LABEL_33;
      }

      sub_10000CA2C();
      swift_allocError();
      v36 = 7;
    }

    *v35 = v36;
    *(v35 + 8) = 0;
    *(v35 + 16) = 0xE000000000000000;
    swift_willThrow();
  }
}

Swift::Int __swiftcall StringIndex.index()()
{
  if ((v0 & 0x10000) != 0)
  {
    v1 = 0xFFFF;
  }

  else
  {
    v1 = 255;
  }

  return v1 & v0;
}

BOOL static StringIndex.__derived_enum_equals(_:_:)(int a1, unsigned int a2)
{
  v2 = a1 == a2;
  if ((a2 & 0x10000) != 0)
  {
    v2 = 0;
  }

  if ((a1 & 0x10000) != 0)
  {
    return (a1 == a2) & HIWORD(a2);
  }

  else
  {
    return v2;
  }
}

void StringIndex.hash(into:)(uint64_t a1, int a2)
{
  v2 = a2;
  if ((a2 & 0x10000) != 0)
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(v2);
  }

  else
  {
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(v2);
  }
}

Swift::Int StringIndex.hashValue.getter(unsigned int a1)
{
  Hasher.init(_seed:)();
  if ((a1 & 0x10000) != 0)
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(a1);
  }

  else
  {
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(a1);
  }

  return Hasher._finalize()();
}

Swift::Int sub_100053ACC()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  Hasher.init(_seed:)();
  if (v2)
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(v1);
  }

  else
  {
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(v1);
  }

  return Hasher._finalize()();
}

void sub_100053B44()
{
  v1 = *v0;
  if (v0[1])
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(v1);
  }

  else
  {
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(v1);
  }
}

Swift::Int sub_100053B98(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 2);
  Hasher.init(_seed:)();
  if (v3)
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(v2);
  }

  else
  {
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(v2);
  }

  return Hasher._finalize()();
}

uint64_t sub_100053C0C(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a2 + 2);
  }

  else
  {
    v2 = 0;
  }

  v3 = *a1 == *a2;
  if (a2[1])
  {
    v3 = 0;
  }

  if (a1[1])
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

BOOL sub_100053C48(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 16))();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = *(v4 + OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList);
  if (v6 && sub_1000AA808(0x10u, v6))
  {

    return 1;
  }

  v8 = (*(a2 + 48))(a1, a2);

  return v8 == 15;
}

uint64_t sub_100053CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = (*(a2 + 16))(a1);
  if (v4)
  {
    v5 = v4;
    v6 = *&v4[OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList];
    if (v6)
    {
      v7 = sub_1000AA808(v3, v6);

      if (v7)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  return 0;
}

void sub_100053D60(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for LogID(0);
  __chkstk_darwin(v5);
  v6 = *((*(a2 + 24))(a1, a2) + 160);

  if (!v6)
  {
    return;
  }

  v7 = (*(a2 + 64))(a1, a2);
  if (!v7)
  {
    goto LABEL_10;
  }

  v9 = v7;
  if (*(v6 + 120))
  {
    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = a2;
    v8[4] = v2;

    swift_unknownObjectRetain();
    sub_100116790(v9, sub_100057400, v8);

LABEL_10:

    return;
  }
}

void sub_100054114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for LogID(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 != -536870165)
  {
    if (a1 == -536870163)
    {
      goto LABEL_12;
    }

    v12 = v9;
    v13 = (*(a4 + 176))(a1, a2, a3, a4);
    if (v16 <= 1u && (v14 & 0xFFFFFFFFFFFE0000) == 0x1FFFFFFFE0000)
    {
      goto LABEL_12;
    }

    if (v16 >> 6)
    {
      if (v16 >> 6 != 1)
      {
        v57 = WORD1(v13);
        v61 = 0;
        v62 = 0xE000000000000000;
        v41 = v13;
        _StringGuts.grow(_:)(54);
        v42._countAndFlagsBits = 0xD000000000000021;
        v42._object = 0x800000010012CEB0;
        String.append(_:)(v42);
        LOBYTE(v58) = v41;
        v43._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v43);

        v44._object = 0x800000010012CEE0;
        v44._countAndFlagsBits = 0xD000000000000011;
        String.append(_:)(v44);
        v45 = v57;
        if ((v41 & 0x1000000) != 0)
        {
          v45 = 0;
        }

        LOBYTE(v58) = v45;
        v46._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v46);

        v47 = v61;
        v48 = v62;
        if (qword_100173CB8 != -1)
        {
          swift_once();
        }

        v49 = sub_10000A1BC(v12, qword_1001794F0);
        sub_10000A2A4(v49, v11);
        if (qword_100173CC0 != -1)
        {
          swift_once();
        }

        v50 = type metadata accessor for AUALog(0);
        sub_10000A1BC(v50, qword_100179508);
        sub_100039F58(2, v11, v47, v48);

        sub_10000C9D0(v11);
        sub_10000CA2C();
        v52 = swift_allocError();
        *v51 = 2;
        goto LABEL_39;
      }

      if ((v13 & 0x100000000) == 0)
      {
        sub_1000547A0(v13 >> 8, v13 >> 16, v13, a3, a4);
LABEL_12:
        sub_100053D60(a3, a4);
        return;
      }

      sub_10000CA2C();
      v52 = swift_allocError();
      v53 = 2;
    }

    else
    {
      v56 = v16;
      v55 = v14;
      v57 = v15;
      v31 = v13;
      v32 = (*(a4 + 24))(a3, a4);
      swift_beginAccess();
      v33 = *(v32 + 16);
      v34 = *(v32 + 24);
      swift_unknownObjectRetain();

      if (v33)
      {
        ObjectType = swift_getObjectType();
        sub_100052184(v31, ObjectType, v34, &v58);
        swift_unknownObjectRelease();
        if (*(&v59 + 1))
        {
          v36 = v55;
          v37 = v55 & 0x10000;
          sub_10000D0A0(&v58, &v61);
          v38 = v63;
          v39 = v64;
          sub_10001EAB8(&v61, v63);
          if (v37)
          {
            v40 = 0;
          }

          else
          {
            v40 = BYTE1(v36);
          }

          (*(v39 + 88))(v36, v40, v37 >> 16, v57, v56 & 1, v38, v39);
          sub_10000CE78(&v61);
          goto LABEL_12;
        }
      }

      else
      {
        v60 = 0;
        v58 = 0u;
        v59 = 0u;
      }

      sub_10000D040(&v58, &qword_100174FB0, &unk_100120FC0);
      sub_10000CA2C();
      v52 = swift_allocError();
      v53 = 122;
    }

    *v51 = v53;
LABEL_39:
    *(v51 + 8) = 0;
    *(v51 + 16) = 0xE000000000000000;
    swift_willThrow();
    v54 = v52;
    v17 = 0xEE00656369766564;
    v18 = 0x206E776F6E6B6E55;
    v61 = 0;
    v62 = 0xE000000000000000;
    _StringGuts.grow(_:)(32);
    v19 = (*(a4 + 16))(a3, a4);
    if (v19)
    {
      v20 = v19;
      v21 = [v19 boxName];

      if (v21)
      {
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v22;
      }
    }

    v23._countAndFlagsBits = v18;
    v23._object = v17;
    String.append(_:)(v23);

    v24._countAndFlagsBits = 0x20726F727245203ALL;
    v24._object = 0xE800000000000000;
    String.append(_:)(v24);
    *&v58 = v54;
    sub_100001AB4(&qword_100177270, &qword_100120A40);
    _print_unlocked<A, B>(_:_:)();
    v25._countAndFlagsBits = 0xD000000000000014;
    v25._object = 0x800000010012CE90;
    String.append(_:)(v25);
    v26 = v61;
    v27 = v62;
    if (qword_100173CB8 != -1)
    {
      swift_once();
    }

    v28 = sub_10000A1BC(v12, qword_1001794F0);
    sub_10000A2A4(v28, v11);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v29, qword_100179508);
    sub_100039F58(2, v11, v26, v27);

    sub_10000C9D0(v11);
    goto LABEL_12;
  }
}

uint64_t sub_1000547A0(int a1, unsigned int a2, char a3, uint64_t a4, uint64_t a5)
{
  LOBYTE(v8) = a3;
  v43 = a2;
  LODWORD(v38) = a1;
  v9 = type metadata accessor for LogID(0);
  __chkstk_darwin(v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = 0;
  v42 = 0xE000000000000000;
  _StringGuts.grow(_:)(22);
  v39 = a4;
  v40 = v5;
  active = ActiveFunction.deviceName.getter(a4, a5);
  v14 = v13;

  v41 = active;
  v42 = v14;
  v15._object = 0x800000010012CF00;
  v15._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v15);
  v16 = v41;
  v17 = v42;
  if (qword_100173CB8 != -1)
  {
LABEL_21:
    swift_once();
  }

  v18 = v8;
  v19 = sub_10000A1BC(v9, qword_1001794F0);
  sub_10000A2A4(v19, v11);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for AUALog(0);
  v21 = sub_10000A1BC(v20, qword_100179508);
  sub_100039AA0(2, v11, v16, v17);

  v37 = v11;
  sub_10000C9D0(v11);
  v22 = *(a5 + 24);
  v23 = v39;
  v16 = v40;
  v11 = *(*(v22(v39, a5) + 32) + 2);

  if (v11 != v18)
  {
    v38 = v19;
    v24 = (*(a5 + 32))(v23, a5);
    v8 = v24;
    v36 = v21;
    if (v24 >> 62)
    {
      v25 = _CocoaArrayWrapper.endIndex.getter();
      if (v25)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v25)
      {
LABEL_8:
        v17 = 0;
        v9 = v8 & 0xC000000000000001;
        do
        {
          if (v9)
          {
            v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v11 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
LABEL_17:
              __break(1u);
LABEL_18:

              sub_1001153F4(v43);
            }
          }

          else
          {
            if (v17 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_21;
            }

            v16 = *(v8 + 8 * v17 + 32);

            v11 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              goto LABEL_17;
            }
          }

          if (*(*(v16 + 32) + 2) == v18)
          {
            goto LABEL_18;
          }

          ++v17;
        }

        while (v11 != v25);
      }
    }

    v41 = 0;
    v42 = 0xE000000000000000;
    _StringGuts.grow(_:)(37);
    v27 = ActiveFunction.deviceName.getter(v39, a5);
    v29 = v28;

    v41 = v27;
    v42 = v29;
    v30._countAndFlagsBits = 0xD000000000000021;
    v30._object = 0x800000010012CF20;
    String.append(_:)(v30);
    v44 = v18;
    v31._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v31);

    v32 = v41;
    v33 = v42;
    v34 = v37;
    sub_10000A2A4(v38, v37);
    sub_100039F58(2, v34, v32, v33);

    sub_10000C9D0(v34);
    sub_10000CA2C();
    swift_allocError();
    *v35 = 2;
    *(v35 + 8) = 0;
    *(v35 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }

  v22(v23, a5);
  ActiveControlInterface.processInterrupt(attribute:wValue:)(v38, v43);
}

void ActiveFunction.getRawCur(forControl:onEntity:onChannel:)(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v8 = (*(a5 + 184))(a1 & 0xFFFFFF, a3, 0, a2, a4);
  if (!v6)
  {
    v10 = v9;
    ADCControlRequestParameterBlock.getCur()(a6, v9, v8 & 0x1FF);
  }
}

void sub_100054C40(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ActiveFunction.getRawCur(forControl:onEntity:onChannel:)(a1 & 0xFFFFFF, a2, a3, a4, a5, v7);
  if (!v5)
  {
    sub_100001AB4(&qword_1001755F0, &qword_100121AF0);
    if (!swift_dynamicCast())
    {
      sub_10000CA2C();
      swift_allocError();
      *v6 = 1;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0xE000000000000000;
      swift_willThrow();
    }
  }
}

uint64_t ActiveFunction.getRawRange(forControl:onEntity:onChannel:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = (*(a5 + 200))(a1 & 0xFFFFFF, a3, 0, a2, a4);
  if (!v6)
  {
    v10 = v8;
    v5 = sub_10009D018(v7 & 0x1FF, v8, v9);
  }

  return v5;
}

unint64_t sub_100054D98()
{
  result = qword_100176178;
  if (!qword_100176178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176178);
  }

  return result;
}

unint64_t sub_100054DF0()
{
  result = qword_100176180;
  if (!qword_100176180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176180);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for StringIndex(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for StringIndex(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *(a1 + 2);
  if (v4 <= 1)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4 ^ 0xFF;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for StringIndex(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 2) = -a2;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_100054F7C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100054FC4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for AUAInterruptAttribute(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AUAInterruptAttribute(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100055164(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  v10 = ActiveFunction.getRawRange(forControl:onEntity:onChannel:)(a1 & 0xFFFFFF, a2, a3, a4, a5);
  if (!v5)
  {
    v12 = sub_10005524C(v10);

    if (v12)
    {
      v6 = sub_100055390(v12, a1 & 0xFFFFFF, a2, a4, v6);
    }

    else
    {
      sub_10000CA2C();
      v6 = swift_allocError();
      *v13 = 61;
      *(v13 + 8) = 0;
      *(v13 + 16) = 0xE000000000000000;
      swift_willThrow();
    }
  }

  return v6;
}

void *sub_10005524C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  sub_100047010(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 40)
    {
      sub_10001EAFC(i, v11);
      sub_100001AB4(&qword_100176160, &qword_100121910);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_100047010((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = v6 + 1;
      v7 = v3 + 6 * v6;
      *(v7 + 8) = v9;
      *(v7 + 18) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void *sub_100055390(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[2] = a4;
  v9[3] = a5;
  v10 = a2;
  v11 = BYTE2(a2);
  v12 = a3;
  v7 = sub_10004EFEC(sub_100057344, v9, a1);
  if (!v6)
  {
    v5 = sub_10004F1A0(v7);
  }

  return v5;
}

__int16 *sub_10005541C@<X0>(__int16 *result@<X0>, uint64_t *a2@<X6>, float *a3@<X8>)
{
  v4 = result[2];
  if (!result[2])
  {
    goto LABEL_11;
  }

  v5 = *result;
  if (v5 <= -32767)
  {
    v5 = -32767;
  }

  v6 = vcvts_n_f32_s32(v5, 8uLL);
  if (v6 == -INFINITY)
  {
    goto LABEL_11;
  }

  v7 = result[1];
  v8 = vcvts_n_f32_s32(v7, 8uLL);
  if (v7 == 0x8000)
  {
    v8 = -INFINITY;
  }

  if (v8 < v6)
  {
    goto LABEL_11;
  }

  v9 = vcvts_n_f32_s32(v4, 8uLL);
  if (v4 == 0x8000)
  {
    v9 = -INFINITY;
  }

  if (v9 >= 0.0)
  {
    *a3 = v6;
    a3[1] = v8;
    a3[2] = v9;
  }

  else
  {
LABEL_11:
    sub_10000CA2C();
    v10 = swift_allocError();
    *v11 = 125;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0xE000000000000000;
    result = swift_willThrow();
    *a2 = v10;
  }

  return result;
}

void sub_1000554F8(void *a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 24))(a2, a3);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (!Strong)
  {
    sub_10000CA2C();
    swift_allocError();
    *v6 = 58;
    *(v6 + 8) = 0;
    *(v6 + 16) = 0xE000000000000000;
    swift_willThrow();
    return;
  }

  v5 = *&Strong[OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceDescriptor];
  if (*(v5 + 8) != -1 || *(v5 + 10) != -1)
  {

    return;
  }

  v38 = a1;
  v7 = [objc_opt_self() mainBundle];
  v8 = [v7 resourcePath];

  v37 = v8;
  if (v8)
  {
    sub_100001AB4(&qword_1001761A0, &qword_100121AF8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10011DE90;
    AnyHashable.init<A>(_:)();
    sub_100001AB4(&qword_1001761A8, &qword_100121B00);
    v9 = swift_initStackObject();
    *(v9 + 16) = xmmword_100120A30;
    *(v9 + 32) = 0xD000000000000013;
    *(v9 + 40) = 0x800000010012CF50;
    *(v9 + 48) = _swiftEmptyArrayStorage;
    *(v9 + 56) = 0xD00000000000001ALL;
    *(v9 + 64) = 0x800000010012CF70;
    *(v9 + 72) = _swiftEmptyArrayStorage;
    *(v9 + 80) = 0x7475706E49;
    *(v9 + 88) = 0xE500000000000000;
    sub_100001AB4(&qword_1001761B0, &qword_100121B08);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_10011DE90;
    sub_100001AB4(&qword_1001761B8, &qword_100121B10);
    v10 = swift_initStackObject();
    *(v10 + 16) = xmmword_10011DE90;
    *(v10 + 32) = 0x6572617764726148;
    *(v10 + 40) = 0xE800000000000000;
    sub_100001AB4(&qword_1001761C0, &qword_100121B18);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100121960;
    v12 = sub_10000AF8C(&off_100159F60);
    sub_100001AB4(&qword_1001761C8, &qword_100121B20);
    swift_arrayDestroy();
    *(v11 + 32) = v12;
    v13 = sub_10000AF8C(&off_100159FC0);
    swift_arrayDestroy();
    *(v11 + 40) = v13;
    *(v10 + 48) = v11;
    v14 = sub_10000B0A0(v10);
    swift_setDeallocating();
    sub_10000D040(v10 + 32, &qword_1001761D0, &qword_100121B28);
    *(v34 + 32) = v14;
    *(v9 + 96) = v34;
    *(v9 + 104) = 0x74757074754FLL;
    *(v9 + 112) = 0xE600000000000000;
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_10011DE90;
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_10011DE90;
    *(v15 + 32) = 0x6572617764726148;
    *(v15 + 40) = 0xE800000000000000;
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100121960;
    v17 = sub_10000AF8C(&off_10015A020);
    swift_arrayDestroy();
    *(v16 + 32) = v17;
    v18 = sub_10000AF8C(&off_10015A080);
    swift_arrayDestroy();
    *(v16 + 40) = v18;
    *(v15 + 48) = v16;
    v19 = sub_10000B0A0(v15);
    swift_setDeallocating();
    sub_10000D040(v15 + 32, &qword_1001761D0, &qword_100121B28);
    *(v35 + 32) = v19;
    *(v9 + 120) = v35;
    v20 = sub_10000B0B4(v9);
    swift_setDeallocating();
    sub_100001AB4(&qword_1001761D8, &qword_100121B30);
    swift_arrayDestroy();
    *(inited + 96) = sub_100001AB4(&qword_1001761E0, &qword_100121B38);
    *(inited + 72) = v20;
    sub_10000B1C4(inited);
    swift_setDeallocating();
    sub_10000D040(inited + 32, &qword_1001749F8, &qword_100121B40);
    v21 = [v38 deviceUID];
    if (v21)
    {
      v22 = v21;
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v26._countAndFlagsBits = v23;
      v26._object = v25;
      String.append(_:)(v26);

      v27._countAndFlagsBits = 1347634208;
      v27._object = 0xE400000000000000;
      String.append(_:)(v27);
      v28 = objc_allocWithZone(ASDAudioDeviceDSPDatabase);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v30 = String._bridgeToObjectiveC()();
      v31 = [v28 initWithDictionary:isa resourcePath:v37 deviceUID:v30];

      v32 = [v38 plugin];
      objc_allocWithZone(type metadata accessor for AUADSPAudioDevice());
      v33 = v38;
      sub_10001E310(0, 0xE000000000000000, v33, v31, v32, 1667463012);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void *sub_100055B98(uint64_t a1, uint64_t a2)
{
  v2 = *((*(a2 + 24))(a1) + 168);

  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;
    v5 = _swiftEmptyArrayStorage;
    do
    {
      sub_10001EAFC(v4, v13);
      sub_10001EAFC(v13, v11);
      sub_100001AB4(&qword_100174F60, &qword_100121090);
      sub_100001AB4(&qword_100175380, &qword_100120E70);
      if (swift_dynamicCast())
      {
        sub_10000D0A0(v9, v12);
        sub_10001EAFC(v12, v11);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_100024044(0, v5[2] + 1, 1, v5);
        }

        v7 = v5[2];
        v6 = v5[3];
        if (v7 >= v6 >> 1)
        {
          v5 = sub_100024044((v6 > 1), v7 + 1, 1, v5);
        }

        sub_10000CE78(v12);
        sub_10000CE78(v13);
        v5[2] = v7 + 1;
        sub_10000D0A0(v11, &v5[5 * v7 + 4]);
      }

      else
      {
        sub_10000CE78(v13);
        v10 = 0;
        memset(v9, 0, sizeof(v9));
        sub_10000D040(v9, &qword_100176188, &qword_100124520);
      }

      v4 += 40;
      --v3;
    }

    while (v3);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v5;
}

uint64_t sub_100055D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(*a1 + 72);
  if (!(v9 >> 62))
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

    return 0;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    return 0;
  }

LABEL_3:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v9 + 32);

LABEL_6:
    (*(a6 + 208))(v24, v11, a5, a6);
    sub_100057224(v24, v21);
    v12 = v22;
    if (v22)
    {
      v13 = v23;
      sub_10001EAB8(v21, v22);
      v14 = (*(v13 + 24))(v12, v13);
      sub_10000CE78(v21);
    }

    else
    {
      sub_10000D040(v21, &qword_100176188, &qword_100124520);
      v14 = 0;
    }

    ObjectType = swift_getObjectType();
    (*(a4 + 24))(v21, ObjectType, a4);
    v16 = v22;
    v17 = v23;
    sub_10001EAB8(v21, v22);
    v18 = (*(*(v17 + 8) + 16))(v16);

    sub_10000D040(v24, &qword_100176188, &qword_100124520);
    if (v12)
    {
      v19 = v14 == v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;
    sub_10000CE78(v21);
    return v20;
  }

  __break(1u);
  return result;
}

void sub_100055F8C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = (*(a3 + 16))(a2, a3);
  if (!v5 || (v6 = v5, v7 = [v5 audioDevices], v6, !v7))
  {
    sub_10000CA2C();
    swift_allocError();
    *v36 = 58;
    *(v36 + 8) = 0;
    *(v36 + 16) = 0xE000000000000000;
    swift_willThrow();
    return;
  }

  sub_10001EBA8(0, &qword_100174F30, ASDAudioDevice_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
LABEL_38:
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_39:

    return;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_39;
  }

LABEL_5:
  v10 = 0;
  v11 = v8 & 0xC000000000000001;
  v12 = v8 & 0xFFFFFFFFFFFFFF8;
  v13 = v8 + 32;
  v44 = v4;
  v40 = v8 & 0xC000000000000001;
  v41 = v9;
  v38 = v8 + 32;
  v39 = v8 & 0xFFFFFFFFFFFFFF8;
  while (2)
  {
    if (v11)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v10 >= *(v12 + 16))
      {
        __break(1u);
        break;
      }

      v14 = *(v13 + 8 * v10);
    }

    v15 = v14;
    v16 = __OFADD__(v10, 1);
    v17 = v10 + 1;
    if (!v16)
    {
      type metadata accessor for AUAAudioDevice(0);
      if (!swift_dynamicCastClass())
      {

        sub_10000CA2C();
        swift_allocError();
        *v37 = 1;
        *(v37 + 8) = 0;
        *(v37 + 16) = 0xE000000000000000;
        swift_willThrow();

        return;
      }

      v18 = AUAAudioDevice.inputAUAStreams()();
      if (v18 >> 62)
      {
        type metadata accessor for AUAStream(0);
        v19 = _bridgeCocoaArray<A>(_:)();
      }

      else
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        type metadata accessor for AUAStream(0);
        v19 = v18;
      }

      v20 = AUAAudioDevice.outputAUAStreams()();
      if (v20 >> 62)
      {
        type metadata accessor for AUAStream(0);
        v21 = _bridgeCocoaArray<A>(_:)();
      }

      else
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        type metadata accessor for AUAStream(0);
        v21 = v20;
      }

      v50 = v19;
      v8 = &v50;
      sub_10007DC24(v21);
      v48 = v50;
      v42 = v15;
      v43 = v17;
      v45 = v50 & 0xFFFFFFFFFFFFFF8;
      if (v50 >> 62)
      {
        v46 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v46 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      for (i = 0; v46 != i; ++i)
      {
        if ((v48 & 0xC000000000000001) != 0)
        {
          v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (i >= *(v45 + 16))
          {
            goto LABEL_37;
          }

          v23 = *(v48 + 8 * i + 32);
        }

        v24 = v23;
        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        v25 = *&v23[OBJC_IVAR___AUAStream_streamingTerminal + 24];
        v26 = *&v23[OBJC_IVAR___AUAStream_streamingTerminal + 32];
        sub_10001EAB8(&v23[OBJC_IVAR___AUAStream_streamingTerminal], v25);
        v27 = (*(v26 + 48))(v25, v26);
        v28 = a1[3];
        v4 = a1[4];
        v29 = sub_10001EAB8(a1, v28);
        v30 = *(v4 + 48);
        if (v27 == v30(v28, v4))
        {

          return;
        }

        v49 = v24;
        v31 = &v24[OBJC_IVAR___AUAStream_otherTerminal];
        v32 = *&v24[OBJC_IVAR___AUAStream_otherTerminal + 24];
        v33 = *&v24[OBJC_IVAR___AUAStream_otherTerminal + 32];
        sub_10001EAB8(v31, v32);
        v34 = (*(v33 + 48))(v32, v33);
        v8 = v29;
        v35 = v30(v28, v4);

        if (v34 == v35)
        {

          return;
        }
      }

      v11 = v40;
      v10 = v43;
      v4 = v44;
      v13 = v38;
      v12 = v39;
      if (v43 != v41)
      {
        continue;
      }

      goto LABEL_39;
    }

    break;
  }

  __break(1u);
}

void sub_100056448(int a1, unsigned __int8 a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = 0;
  v11 = USBDescriptorControl.pbLayout()();
  v12 = sub_1000A0294(v11);
  if (!v5)
  {
    v14 = v13;
    sub_10009D2FC(a3, v12, v13);
    (*(a5 + 8))(v41, a4, a5);
    sub_1000212F0(v41);
    if (v42 > 0x30u || ((1 << v42) & 0x1000100000001) == 0)
    {
      sub_10000CA2C();
      swift_allocError();
      v28 = 26;
    }

    else
    {
      v16 = (*(a5 + 16))(a4, a5);
      if (v16)
      {
        v39 = v16;
        v17 = sub_1000A2D88(a1 & 0xFFFFFF);
        v18 = v14;
        v19 = NSData.startIndex.getter();
        v20 = v18;
        v21 = NSData.endIndex.getter();
        v22 = NSData.startIndex.getter();
        v23 = NSData.endIndex.getter();
        if (v19 < v22 || v23 < v19)
        {
          __break(1u);
        }

        else
        {
          v20 = v18;
          v24 = NSData.startIndex.getter();
          v25 = NSData.endIndex.getter();
          if (v21 >= v24 && v25 >= v21)
          {
            v26 = v21 - v19;
            if (!__OFSUB__(v21, v19))
            {
              if (v26 >= 0xFFFF)
              {
                v26 = 0xFFFFLL;
              }

              sub_1000FC690((a2 << 32) | ((v26 & ~(v26 >> 63)) << 48) | (v17 << 24) | 0x122, v14, &v40);

              v29 = v40;
              v30 = v18;
              v31 = NSData.startIndex.getter();
              v32 = NSData.endIndex.getter();
              v33 = NSData.startIndex.getter();
              v34 = NSData.endIndex.getter();
              if (v31 < v33 || v34 < v31)
              {
                __break(1u);
              }

              else
              {
                v35 = NSData.startIndex.getter();
                v36 = NSData.endIndex.getter();

                if (v32 >= v35 && v36 >= v32)
                {
                  if (!__OFSUB__(v32, v31))
                  {
                    if (v29 == v32 - v31)
                    {
                    }

                    else
                    {
                      sub_10000CA2C();
                      swift_allocError();
                      *v38 = 30;
                      *(v38 + 8) = 0;
                      *(v38 + 16) = 0xE000000000000000;
                      swift_willThrow();
                    }

                    return;
                  }

LABEL_32:
                  __break(1u);
                }
              }

              __break(1u);
              goto LABEL_32;
            }

LABEL_29:
            __break(1u);
            __break(1u);
            __break(1u);
            swift_once();
            v37 = type metadata accessor for AUALog(0);
            sub_10000A1BC(v37, qword_100179508);
            sub_100039F58(2, v39 + v19, v20, v14);

            swift_willThrow();

            return;
          }
        }

        __break(1u);
        goto LABEL_29;
      }

      sub_10000CA2C();
      swift_allocError();
      v28 = 7;
    }

    *v27 = v28;
    *(v27 + 8) = 0;
    *(v27 + 16) = 0xE000000000000000;
    swift_willThrow();
  }
}

uint64_t sub_100056B68@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v18 = a1[1];
  v19 = *a1;
  v5 = a1[2];
  result = v5 + 32;
  v7 = -*(v5 + 16);
  v8 = -1;
  while (1)
  {
    if (v7 + v8 == -1)
    {
      v16 = 0;
      v17 = 0;
      v5 = 0;
      goto LABEL_7;
    }

    if (++v8 >= *(v5 + 16))
    {
      break;
    }

    v9 = result + 40;
    sub_10001EAFC(result, v20);
    v11 = v21;
    v10 = v22;
    sub_10001EAB8(v20, v21);
    v12 = (*(*(v10 + 8) + 48))(v11);
    v14 = a2[3];
    v13 = a2[4];
    sub_10001EAB8(a2, v14);
    v15 = (*(*(v13 + 8) + 48))(v14);
    sub_10000CE78(v20);
    result = v9;
    if (v12 == v15)
    {
      v16 = v19;

      v17 = v18;

LABEL_7:
      *a3 = v16;
      a3[1] = v17;
      a3[2] = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_100056CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000530DC(a1, a2, a3);
  if (!v4)
  {
    v6 = *(v5 + 2) + 1;
    v7 = 32;
    do
    {
      v3 = --v6 != 0;
      if (!v6)
      {
        break;
      }

      v8 = *&v5[v7];
      v7 += 24;
    }

    while (*(v8 + 136) != 257);
  }

  return v3;
}

void *sub_100056D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = (*(a6 + 16))(a5, a6, a3, a4);
  if (result)
  {
    v7 = result;
    v8 = [result audioDevices];

    if (!v8)
    {
      return 0;
    }

    sub_10001EBA8(0, &qword_100174F30, ASDAudioDevice_ptr);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v40 = _swiftEmptyArrayStorage;
    if (v9 >> 62)
    {
LABEL_44:
      v10 = _CocoaArrayWrapper.endIndex.getter();
      if (v10)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
LABEL_5:
        v11 = 0;
        v33 = v9 & 0xFFFFFFFFFFFFFF8;
        v34 = v9 & 0xC000000000000001;
        v31 = v10;
        v32 = v9 + 32;
        while (1)
        {
          if (v34)
          {
            v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v11 >= *(v33 + 16))
            {
              goto LABEL_43;
            }

            v13 = *(v32 + 8 * v11);
          }

          v9 = v13;
          if (__OFADD__(v11++, 1))
          {
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
            goto LABEL_44;
          }

          result = [v13 controls];
          if (!result)
          {
            __break(1u);
            return result;
          }

          v15 = result;
          sub_10001EBA8(0, &qword_100174F58, ASDControl_ptr);
          v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v16 >> 62)
          {
            v17 = _CocoaArrayWrapper.endIndex.getter();
            v36 = v9;
            if (v17)
            {
LABEL_15:
              v18 = 0;
              v12 = _swiftEmptyArrayStorage;
              do
              {
                v35 = v12;
                v19 = v18;
                while (1)
                {
                  if ((v16 & 0xC000000000000001) != 0)
                  {
                    v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    if (v19 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_41;
                    }

                    v20 = *(v16 + 8 * v19 + 32);
                  }

                  v9 = v20;
                  v18 = v19 + 1;
                  if (__OFADD__(v19, 1))
                  {
                    __break(1u);
LABEL_41:
                    __break(1u);
                    goto LABEL_42;
                  }

                  swift_getObjectType();
                  v21 = swift_conformsToProtocol2();
                  if (v21)
                  {
                    if (v9)
                    {
                      v22 = v21;
                      ObjectType = swift_getObjectType();
                      if ((*(v22 + 8))(ObjectType, v22) == a1 && (*(v22 + 16))(ObjectType, v22) == a2 && swift_getObjectType() == a3)
                      {
                        break;
                      }
                    }
                  }

                  ++v19;
                  if (v18 == v17)
                  {
                    v10 = v31;
                    v12 = v35;
                    goto LABEL_7;
                  }
                }

                v24 = v35;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v24 = sub_100024788(0, v35[2] + 1, 1, v35);
                }

                v27 = v24[2];
                v26 = v24[3];
                v28 = v24;
                if (v27 >= v26 >> 1)
                {
                  v28 = sub_100024788((v26 > 1), v27 + 1, 1, v24);
                }

                v28[2] = v27 + 1;
                v29 = &v28[2 * v27];
                v12 = v28;
                v29[4] = v9;
                v29[5] = v22;
                v10 = v31;
              }

              while (v18 != v17);
              goto LABEL_7;
            }
          }

          else
          {
            v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v36 = v9;
            if (v17)
            {
              goto LABEL_15;
            }
          }

          v12 = _swiftEmptyArrayStorage;
LABEL_7:

          v9 = &v40;
          sub_10007DD90(v12);
          if (v11 == v10)
          {
            v30 = v40;
            goto LABEL_46;
          }
        }
      }
    }

    v30 = _swiftEmptyArrayStorage;
LABEL_46:

    return v30;
  }

  return result;
}