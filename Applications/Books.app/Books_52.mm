void sub_10066A348(uint64_t a1, uint64_t a2)
{
  v4 = sub_10079E6B4();
  __chkstk_darwin(v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    v7 = sub_1007A29B4();
    sub_10000A7C4(0, &qword_100AD20A0, OS_os_log_ptr);
    v8 = sub_1007A33C4();
    sub_1001F1160(&unk_100AD5090, &unk_100815670);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_10080EFF0;
    sub_100653AFC(a2, v6);
    v10 = sub_1007A22F4();
    v12 = v11;
    *(v9 + 56) = &type metadata for String;
    v13 = sub_10000E4C4();
    *(v9 + 64) = v13;
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    swift_getErrorValue();
    v14 = sub_1007A3B84();
    *(v9 + 96) = &type metadata for String;
    *(v9 + 104) = v13;
    *(v9 + 72) = v14;
    *(v9 + 80) = v15;
    sub_10079AB44(v7, &_mh_execute_header, v8, "Cannot schedule notification for achievement %@: %@", 51, 2, v9);
  }
}

char *sub_10066A520(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001F1160(&qword_100AF0E00, &qword_10083ABC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

char *sub_10066A640(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001F1160(&qword_100AD7FB0, &unk_100820560);
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

char *sub_10066A764(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001F1160(&qword_100AF0DA8, &unk_10083AB40);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
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

char *sub_10066A87C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001F1160(&qword_100AF0E10, &qword_10083ABD0);
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

char *sub_10066A980(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001F1160(&qword_100AD7358, &qword_100814238);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10066AACC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001F1160(&unk_100AF0E88, &qword_10083AC70);
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

char *sub_10066AC54(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001F1160(&qword_100AF0D10, &qword_10083AA50);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
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

void *sub_10066AD7C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1001F1160(&unk_100AE0970, &unk_10083AB90);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
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
    sub_1001F1160(&qword_100AD4F30, &unk_100816940);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10066AED8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    sub_1001F1160(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size_1(v12);
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

char *sub_10066AFC4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001F1160(&qword_100AF0DD8, &qword_10083AB80);
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

void *sub_10066B0E0(void *result, int64_t a2, char a3, void *a4)
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
    sub_1001F1160(&qword_100AF0DE0, &qword_10083AB88);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[15 * v8 + 4])
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

char *sub_10066B274(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001F1160(&qword_100AF71B0, &qword_100845DE0);
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

char *sub_10066B39C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001F1160(&qword_100AF0DD0, &qword_10083AB78);
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

char *sub_10066B518(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001F1160(&qword_100AF0D28, &qword_10083AA70);
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

void *sub_10066B68C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1001F1160(&unk_100AEF360, &unk_10083AC10);
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
    sub_1001F1160(&qword_100AE1270, &qword_100821EB0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10066B7D4(void *result, int64_t a2, char a3, void *a4)
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
    sub_1001F1160(&qword_100AF0E58, &qword_10083AC28);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001F1160(&qword_100AF0E60, &qword_10083AC30);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10066B954(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001F1160(&qword_100AF0DC8, &qword_10083AB70);
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

void *sub_10066BB8C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    sub_1001F1160(a5, a6);
    v14 = swift_allocObject();
    v15 = j__malloc_size_1(v14);
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
    v14 = _swiftEmptyArrayStorage;
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

void *sub_10066BCBC(void *result, int64_t a2, char a3, void *a4)
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
    sub_1001F1160(qword_100AEA1F0, &unk_100828E80);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001F1160(&unk_100AE0920, &unk_100817F60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10066BE54(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_1001F1160(a5, a6);
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
    sub_1001F1160(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_10066BF88(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001F1160(&qword_100AF0DF0, &qword_10083ABB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
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

char *sub_10066C0D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001F1160(&qword_100AF0D70, &qword_10083AAE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

char *sub_10066C1F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001F1160(&qword_100AF0E38, &qword_10083ABF0);
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

char *sub_10066C360(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    sub_1001F1160(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size_1(v12);
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

char *sub_10066C4BC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
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
    sub_1001F1160(a5, a6);
    v13 = swift_allocObject();
    v14 = j__malloc_size_1(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 1;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 5);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[32 * v11])
    {
      memmove(v16, v17, 32 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_10066C68C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

  sub_1001F1160(a5, a6);
  v16 = *(sub_1001F1160(a7, a8) - 8);
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
  v21 = *(sub_1001F1160(a7, a8) - 8);
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

char *sub_10066C874(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001F1160(&qword_100AF0DF8, &qword_10083ABB8);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10066CAB4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_1001F1160(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size_1(v17);
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

char *sub_10066CCAC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
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
    sub_1001F1160(a5, a6);
    v13 = swift_allocObject();
    v14 = j__malloc_size_1(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 72);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[72 * v11])
    {
      memmove(v15, v16, 72 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t _s5Books34AchievementsNotificationControllerC8titleKey4fromSSSgSDySSypG_tFZ_0(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = sub_10000E53C(0x6D65766569686361, 0xEF646E694B746E65);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_100007484(*(a1 + 56) + 32 * v2, v6);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v4 = sub_10079E664();
  if (!v4)
  {
    return 0xD000000000000026;
  }

  if (v4 == 1)
  {
    return 0xD000000000000026;
  }

  return 0xD000000000000029;
}

unint64_t _s5Books34AchievementsNotificationControllerC10messageKey4fromSSSgSDySSypG_tFZ_0(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = sub_10000E53C(0x6D65766569686361, 0xEF646E694B746E65);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_100007484(*(a1 + 56) + 32 * v2, v6);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v4 = sub_10079E664();
  if (!v4)
  {
    return 0xD000000000000028;
  }

  if (v4 == 1)
  {
    return 0xD000000000000028;
  }

  return 0xD00000000000002BLL;
}

uint64_t _s5Books34AchievementsNotificationControllerC8goalType4from13BookAnalytics011BridgedGoalF0OSDySSypG_tFZ_0(uint64_t a1)
{
  if (*(a1 + 16) && (v2 = sub_10000E53C(0x6D65766569686361, 0xEF646E694B746E65), (v3 & 1) != 0) && (sub_100007484(*(a1 + 56) + 32 * v2, v5), (swift_dynamicCast() & 1) != 0))
  {
    return qword_10083AC78[sub_10079E664()];
  }

  else
  {
    return 0;
  }
}

UIImage *sub_10066D0B0(void *a1)
{
  v2 = [a1 rootLayer];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [objc_allocWithZone(CALayer) init];
  [(CGContext *)v3 bounds];
  [(CGContext *)v4 setBounds:?];
  [a1 addToLayer:v4 onTop:1 gravity:kCAGravityResize];
  [(CGContext *)v4 bounds];
  v6 = v5;
  v8 = v7;
  v9 = [(CGContext *)v4 isOpaque];
  v14.width = v6;
  v14.height = v8;
  UIGraphicsBeginImageContextWithOptions(v14, v9, 0.0);
  v10 = UIGraphicsGetCurrentContext();
  if (v10)
  {
    v11 = v10;
    [(CGContext *)v4 renderInContext:v10];
    v12 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    v3 = v4;
    v4 = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

UIImage *sub_10066D1F4(uint64_t a1)
{
  v2 = [objc_allocWithZone(sub_100796FC4()) init];
  v3 = objc_allocWithZone(TUIMicaPlayer);
  v4 = sub_1007A2214();
  v5 = [v3 initWithPath:v4 retinaScale:v2 fileProvider:1.0];

  [v5 documentDuration];
  [v5 setPlaybackTime:?];
  if (!v5)
  {
    return 0;
  }

  v6 = sub_1007A2214();
  v7 = [v5 publishedLayerWithKey:v6 required:1];

  if (!v7 || (objc_opt_self(), (v8 = swift_dynamicCastObjCClass()) == 0))
  {
LABEL_32:
    v14 = sub_10066D0B0(v5);

    return v14;
  }

  v9 = v8;
  v10 = objc_allocWithZone(NSNumberFormatter);
  v37 = v7;
  v11 = [v10 init];
  isa = sub_1007A2884().super.super.isa;
  v13 = [v11 stringFromNumber:isa];

  if (v13)
  {
    sub_1007A2254();
  }

  v15 = sub_1007A2214();
  [v9 setString:v15];

  v16 = 83.0;
  v17 = 103.0;
  if (a1 < 10)
  {
    v17 = 112.0;
  }

  if (a1 <= 99)
  {
    v16 = v17;
  }

  if (a1 <= 999)
  {
    v18 = v16;
  }

  else
  {
    v18 = 66.0;
  }

  [v9 setFontSize:{v18, v16}];
  if ([v9 font])
  {
    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (!v19)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v19 = 0;
  }

  sub_10000A7C4(0, &unk_100AEB920, NSString_ptr);
  v20 = sub_1007A31C4();
  if (!v19)
  {
    goto LABEL_25;
  }

  v21 = sub_1007A3184();

  if ((v21 & 1) == 0)
  {
LABEL_26:
    v28 = [v9 font];
    if (v28)
    {
      sub_1001F1160(qword_100AEFD60, qword_100836260);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10080B690;
      *(inited + 32) = NSFontAttributeName;
      *(inited + 64) = swift_getObjectType();
      *(inited + 40) = v28;
      v30 = NSFontAttributeName;
      v28 = sub_1001ED420(inited);
      swift_setDeallocating();
      sub_100007840(inited + 32, &unk_100ADA6C0, &unk_10080CBF0);
    }

    v31 = sub_1007A2214();

    if (v28)
    {
      type metadata accessor for Key(0);
      sub_100022AEC(&qword_100AEDDB0, type metadata accessor for Key, &unk_10080E428);
      v32.super.isa = sub_1007A2024().super.isa;
    }

    else
    {
      v32.super.isa = 0;
    }

    [v31 sizeWithAttributes:v32.super.isa];
    v34 = v33;
    v36 = v35;

    [v9 setBounds:{0.0, 0.0, v34, v36}];
    goto LABEL_32;
  }

  v22 = [objc_allocWithZone(TUIFontSpec) init];
  result = [v22 fontSpecWithDesign:UIFontDescriptorSystemDesignSerif];
  if (!result)
  {
    __break(1u);
    goto LABEL_35;
  }

  v24 = result;

  result = [(UIImage *)v24 fontSpecWithPointSize:v18];
  if (!result)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v25 = result;

  result = [(UIImage *)v25 fontSpecWithWeight:UIFontWeightBold];
  if (!result)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v26 = result;

  result = [(UIImage *)v26 mappedSpecIfNeededWithEnvironment:0];
  if (result)
  {
    v20 = result;

    v27 = [(UIImage *)v20 font];
    [v9 setFont:v27];

LABEL_25:
    goto LABEL_26;
  }

LABEL_37:
  __break(1u);
  return result;
}

id sub_10066D788(UIImage *a1)
{
  *&v118 = sub_100796C04();
  v116 = *(v118 - 8);
  __chkstk_darwin(v118);
  v115 = &v104 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_1007969B4();
  v119 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = &v104 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v117 = &v104 - v5;
  __chkstk_darwin(v6);
  v121 = &v104 - v7;
  v8 = sub_1007A21B4();
  __chkstk_darwin(v8 - 8);
  v126 = sub_100796CF4();
  v9 = *(v126 - 8);
  __chkstk_darwin(v126);
  v123 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v104 - v12;
  v14 = sub_1007A21D4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v104 - v19;
  v21 = sub_10079E6B4();
  __chkstk_darwin(v21);
  v23 = (&v104 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v125 = a1;
  sub_100653AFC(a1, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v127 = v15;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1007A2154();
      sub_100796C94();
      v113 = *(v15 + 16);
      v25 = v17;
      v113(v17, v20, v14);
      type metadata accessor for BundleFinder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v112 = ObjCClassFromMetadata;
      v111 = objc_opt_self();
      v27 = [v111 bundleForClass:ObjCClassFromMetadata];
      v110 = *(v9 + 16);
      v28 = v123;
      v29 = v126;
      v110(v123, v13, v126);
      v124 = sub_1007A22D4(v25, 0, 0, v27, v28, "Title for Books Goal achieved notification", 42, 2);
      v114 = v30;
      v109 = *(v9 + 8);
      v109(v13, v29);
      v31 = *(v127 + 8);
      v127 += 8;
      v108 = v31;
      v31(v20, v14);
      sub_1007A2154();
      sub_100796C94();
      v32 = v25;
      v113(v25, v20, v14);
      v33 = [v111 bundleForClass:v112];
      v110(v28, v13, v29);
      v123 = sub_1007A22D4(v32, 0, 0, v33, v28, "Message for Books Goal achieved notification", 44, 2);
      v109(v13, v29);
      v108(v20, v14);
      v34 = &selRef_hasTooManyAuthors;
      v35 = [objc_allocWithZone(sub_100796FC4()) init];
      v36 = objc_allocWithZone(TUIMicaPlayer);
      v37 = sub_1007A2214();
      v38 = [v36 initWithPath:v37 retinaScale:v35 fileProvider:1.0];

      [v38 documentDuration];
      [v38 setPlaybackTime:?];
      if (v38)
      {
        v39 = sub_10066D0B0(v38);

        v40 = v39;
      }

      else
      {
        v39 = 0;
      }

      v41 = 1;
    }

    else
    {
      v111 = *v23;
      v114 = *(sub_1001F1160(&qword_100AE0CA8, &qword_100838EF0) + 48);
      sub_1007A2154();
      sub_100796C94();
      v55 = *(v15 + 16);
      v112 = v15 + 16;
      v113 = v55;
      v106 = v17;
      v105 = v14;
      v55(v17, v20, v14);
      type metadata accessor for BundleFinder();
      v56 = swift_getObjCClassFromMetadata();
      v109 = v56;
      v108 = objc_opt_self();
      v57 = [v108 bundleForClass:v56];
      v58 = v123;
      v59 = v126;
      (*(v9 + 16))(v123, v13, v126);
      v124 = sub_1007A22D4(v17, 0, 0, v57, v58, "Title for Streak Record achieved notification", 45, 2);
      v110 = *(v9 + 8);
      (v110)(v13, v59);
      v60 = *(v127 + 8);
      v127 += 8;
      v107 = v60;
      v61 = v105;
      v60(v20, v105);
      sub_1007A21A4();
      v132._object = 0x80000001008E4CA0;
      v132._countAndFlagsBits = 0x1000000000000018;
      sub_1007A2194(v132);
      v62 = v111;
      *&v130 = v111;
      sub_1007A2174();
      v133._countAndFlagsBits = 0x7473207379616420;
      v133._object = 0xEF2E746867696172;
      sub_1007A2194(v133);
      sub_1007A21C4();
      sub_100796C94();
      v113(v106, v20, v61);
      v63 = [v108 bundleForClass:v109];
      sub_100796C94();
      v123 = sub_1007A22B4();
      (v110)(v13, v126);
      v107(v20, v61);
      v39 = sub_10066D1F4(v62);
      v64 = sub_1007989D4();
      v65 = *(*(v64 - 8) + 8);
      v66 = v39;
      v65(v23 + v114, v64);
      v41 = 0;
      v34 = &selRef_hasTooManyAuthors;
    }
  }

  else
  {
    sub_1007A2154();
    sub_100796C94();
    v113 = *(v15 + 16);
    v42 = v17;
    v113(v17, v20, v14);
    type metadata accessor for BundleFinder();
    v43 = swift_getObjCClassFromMetadata();
    v112 = v43;
    v111 = objc_opt_self();
    v44 = [v111 bundleForClass:v43];
    v110 = *(v9 + 16);
    v45 = v123;
    v46 = v126;
    v110(v123, v13, v126);
    v124 = sub_1007A22D4(v42, 0, 0, v44, v45, "Title for Daily Goal achieved notification", 42, 2);
    v114 = v47;
    v109 = *(v9 + 8);
    v109(v13, v46);
    v48 = *(v127 + 8);
    v127 += 8;
    v108 = v48;
    v48(v20, v14);
    sub_1007A2154();
    sub_100796C94();
    v49 = v42;
    v113(v42, v20, v14);
    v50 = [v111 bundleForClass:v112];
    v110(v45, v13, v46);
    v123 = sub_1007A22D4(v49, 0, 0, v50, v45, "Message for Daily Goal achieved notification", 44, 2);
    v109(v13, v46);
    v108(v20, v14);
    v34 = &selRef_hasTooManyAuthors;
    v51 = [objc_allocWithZone(sub_100796FC4()) init];
    v52 = objc_allocWithZone(TUIMicaPlayer);
    v53 = sub_1007A2214();
    v41 = [v52 initWithPath:v53 retinaScale:v51 fileProvider:1.0];

    [v41 documentDuration];
    [v41 setPlaybackTime:?];
    if (v41)
    {
      v39 = sub_10066D0B0(v41);

      v54 = v39;
      v41 = 0;
    }

    else
    {
      v39 = 0;
    }
  }

  sub_10079E6A4();
  v67 = sub_10079E694();
  v131 = &type metadata for Int;
  *&v130 = v67;
  sub_1000076D4(&v130, &v129);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v128 = _swiftEmptyDictionarySingleton;
  sub_1002F4B78(&v129, 0x6D65766569686361, 0xEF646E694B746E65, isUniquelyReferenced_nonNull_native);
  v69 = v128;
  v70 = [objc_allocWithZone(UNMutableNotificationContent) v34[200]];
  v71 = sub_1007A2214();

  [v70 setTitle:v71];

  v72 = sub_1007A2214();

  [v70 setBody:v72];

  v73 = sub_1007A2214();
  [v70 setCategoryIdentifier:v73];

  sub_10058096C(v69);

  isa = sub_1007A2024().super.isa;

  [v70 setUserInfo:isa];

  [v70 setInterruptionLevel:v41];
  if (v39)
  {
    v75 = UIImagePNGRepresentation(v39);
    if (v75)
    {
      v125 = v39;
      v76 = v75;
      v127 = sub_1007969D4();
      v78 = v77;

      v79 = [objc_opt_self() defaultManager];
      v80 = [v79 temporaryDirectory];
      v81 = v117;
      sub_100796974();

      *&v130 = 0;
      *(&v130 + 1) = 0xE000000000000000;
      sub_1007A3744(18);

      strcpy(&v130, "achievement-");
      BYTE13(v130) = 0;
      HIWORD(v130) = -5120;
      v82 = v115;
      _s5Books7InfoBarO7MessageC2id10Foundation4UUIDVvpfi_0();
      v83 = sub_100796BC4();
      v85 = v84;
      (*(v116 + 8))(v82, v118);
      v134._countAndFlagsBits = v83;
      v134._object = v85;
      sub_1007A23D4(v134);

      v135._countAndFlagsBits = 1735290926;
      v135._object = 0xE400000000000000;
      sub_1007A23D4(v135);
      v86 = v121;
      sub_100796964();

      v87 = v119;
      v88 = v81;
      v89 = v122;
      v123 = *(v119 + 8);
      (v123)(v88, v122);
      sub_100796984();
      v90 = sub_1007A2214();

      v126 = v78;
      v91 = sub_1007969C4().super.isa;
      v124 = v79;
      [v79 createFileAtPath:v90 contents:v91 attributes:0];

      sub_1001F1160(&qword_100AF0E20, &qword_10083ABE0);
      inited = swift_initStackObject();
      v118 = xmmword_10080B690;
      *(inited + 16) = xmmword_10080B690;
      *(inited + 32) = sub_1007A2254();
      *(inited + 40) = v93;
      *(inited + 48) = [objc_allocWithZone(NSNumber) initWithBool:1];
      v94 = sub_1001EDAA8(inited);
      swift_setDeallocating();
      sub_100007840(inited + 32, &qword_100AF0E28, &qword_10083ABE8);
      sub_10000A7C4(0, &qword_100AF0E30, UNNotificationAttachment_ptr);
      v95 = v120;
      (*(v87 + 16))(v120, v86, v89);
      sub_100582728(v94);
      v97 = v96;

      v98 = sub_1006698A0(0x656D686361747461, 0xEA0000000000746ELL, v95, v97);
      sub_1001F1160(&unk_100AD8160, &unk_100813160);
      v99 = swift_allocObject();
      *(v99 + 16) = xmmword_100811390;
      *(v99 + 32) = v98;
      v100 = v98;
      v101 = sub_1007A25D4().super.isa;

      [v70 setAttachments:v101];
      v102 = v125;

      sub_10000ADCC(v127, v126);
      (v123)(v121, v122);
    }

    else
    {
    }
  }

  return v70;
}

void sub_10066EBB8(uint64_t a1)
{
  v3 = *(sub_10079E6B4() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_10066A348(a1, v4);
}

uint64_t sub_10066EC28()
{
  v1 = *(sub_10079E6B4() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v3 = *(sub_1001F1160(&qword_100AE0CA8, &qword_100838EF0) + 48);
    v4 = sub_1007989D4();
    (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);
  }

  return swift_deallocObject();
}

void sub_10066ED30()
{
  v1 = *(sub_10079E6B4() - 8);
  v2 = *(v0 + 16);
  v3 = (v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));

  sub_100669EBC(v2, v3);
}

uint64_t sub_10066EDA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 64) & 0xF000000000000007) != 0)
  {
    v2 = *(a1 + 56) & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10066EDF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 56) = (a2 - 1);
      *(result + 64) = 1;
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10066EE5C(uint64_t a1)
{
  result = sub_100258900();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10066EEA0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v3 = sub_1001F1160(&qword_100ADB860, &qword_100835800);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - v5;
  v7 = sub_1001F1160(&qword_100AD7F50, &qword_100815010);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - v9;
  sub_10066F1C0(v2, v32);
  v11 = swift_allocObject();
  sub_10066F200(v32, v11 + 16);
  *&v28 = 0;
  *(&v28 + 1) = 0xE000000000000000;
  sub_100206ECC();
  sub_10079E084();
  v12 = *v2;
  if (*v2)
  {
    v13 = *(v2 + 40);
    v14 = *(v2 + 48);
    v15 = *(v2 + 16);
    v16 = *(v2 + 24);
    v17 = *(v2 + 32);
    v18 = v12;
    sub_10066F238(v15, v16);
    v19 = sub_10079DE34();
    *&v28 = v18;
    *(&v28 + 1) = v13;
    *&v29 = v14;
    *(&v29 + 1) = v15;
    *&v30 = v16;
    BYTE8(v30) = v17;
    v31 = v19;
    sub_10027444C();
    sub_1002744B0();
    sub_10079D6B4();
    v32[0] = v28;
    v32[1] = v29;
    v32[2] = v30;
    v32[3] = v31;
    sub_100274504(v32);
    (*(v4 + 8))(v6, v3);
    v27 = 0;
    sub_10079DFE4();
    v20 = v28;
    v21 = *(&v28 + 1);
    v22 = v26;
    (*(v8 + 32))(v26, v10, v7);
    result = sub_1001F1160(&qword_100AD7F58, &qword_100815018);
    v24 = v22 + *(result + 36);
    *v24 = v13;
    *(v24 + 8) = v20;
    *(v24 + 16) = v21;
  }

  else
  {
    type metadata accessor for ChromeStyle(0);
    sub_1002B3600();
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

char *RootBarStandardItemsManager.__allocating_init(restrictionProvider:bag:cacheManager:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = a3[3];
  v9 = a3[4];
  v10 = sub_10022569C(a3, v8);
  v11 = __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v11);
  v15 = sub_100671738(a1, a2, v13, v7, v8, v9);
  sub_1000074E0(a3);
  return v15;
}

void sub_10066F3A4(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v3);

  *a2 = v3;
}

uint64_t sub_10066F424(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_10079B9B4();
}

uint64_t RootBarStandardItemsManager.items.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v1);

  return v1;
}

uint64_t sub_10066F510(void *a1)
{
  swift_beginAccess();
  sub_1001F1160(&unk_100AF0EA0, &qword_100813110);
  sub_10079B974();
  return swift_endAccess();
}

uint64_t sub_10066F588(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1001F1160(&qword_100AD6A60, &qword_100813108);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  sub_1001F1160(&unk_100AF0EA0, &qword_100813110);
  sub_10079B984();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t RootBarStandardItemsManager.$items.getter()
{
  swift_beginAccess();
  sub_1001F1160(&unk_100AF0EA0, &qword_100813110);
  sub_10079B974();
  return swift_endAccess();
}

uint64_t RootBarStandardItemsManager.itemsPublisher.getter()
{
  v0 = sub_1001F1160(&qword_100AD6A60, &qword_100813108);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - v2;
  swift_beginAccess();
  sub_1001F1160(&unk_100AF0EA0, &qword_100813110);
  sub_10079B974();
  swift_endAccess();
  sub_100005920(&unk_100AF0EB0, &qword_100AD6A60, &qword_100813108, &protocol conformance descriptor for Published<A>.Publisher);
  v4 = sub_10079BA14();
  (*(v1 + 8))(v3, v0);
  return v4;
}

id sub_10066F8E0()
{
  v1 = OBJC_IVAR____TtC5Books27RootBarStandardItemsManager____lazy_storage___bag;
  v2 = *(v0 + OBJC_IVAR____TtC5Books27RootBarStandardItemsManager____lazy_storage___bag);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Books27RootBarStandardItemsManager____lazy_storage___bag);
  }

  else
  {
    v4 = [objc_opt_self() defaultBag];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *RootBarStandardItemsManager.init(restrictionProvider:bag:cacheManager:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3[3];
  v8 = a3[4];
  v9 = sub_10022569C(a3, v7);
  v10 = __chkstk_darwin(v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  v14 = sub_100671738(a1, a2, v12, v3, v7, v8);
  sub_1000074E0(a3);
  return v14;
}

Swift::Void __swiftcall RootBarStandardItemsManager.loadFromCache()()
{
  v1 = v0;
  v2 = sub_1007A1D04();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v127 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100017E74();
  *v5 = sub_1007A2D74();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = sub_1007A1D34();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    goto LABEL_78;
  }

  v7 = *(v1 + OBJC_IVAR____TtC5Books27RootBarStandardItemsManager_cacheManager + 24);
  v8 = *(v1 + OBJC_IVAR____TtC5Books27RootBarStandardItemsManager_cacheManager + 32);
  sub_10000E3E8((v1 + OBJC_IVAR____TtC5Books27RootBarStandardItemsManager_cacheManager), v7);
  v9 = (*(v8 + 8))(v7, v8);
  v10 = v9;
  if ((*(v1 + OBJC_IVAR____TtC5Books27RootBarStandardItemsManager_loadedFromBag) & 1) == 0)
  {
    if (v9)
    {
      if (v9 >> 62)
      {
        v30 = sub_1007A38D4();
        if (v30)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v30 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v30)
        {
LABEL_24:
          v31 = 0;
          v32 = v10 & 0xC000000000000001;
          while (v30 != v31)
          {
            if (v32)
            {
              v33 = sub_1007A3784();
            }

            else
            {
              if (v31 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_76;
              }

              v33 = *(v10 + 8 * v31 + 32);
            }

            v34 = v33;
            if (__OFADD__(v31, 1))
            {
              goto LABEL_75;
            }

            v35 = sub_100670C68(v33);

            ++v31;
            if (v35)
            {
              if (qword_100AD1688 != -1)
              {
                swift_once();
              }

              v41 = sub_10079ACE4();
              v42 = sub_100008B98(v41, qword_100AE4D38);
              v43 = v1;

              v44 = sub_10079ACC4();
              v45 = sub_1007A29B4();

              if (!os_log_type_enabled(v44, v45))
              {

                goto LABEL_116;
              }

              v134 = v10 & 0xFFFFFFFFFFFFFF8;
              v129 = v45;
              v130 = v44;
              v131 = v42;
              v132 = v43;
              v46 = swift_slowAlloc();
              v128 = swift_slowAlloc();
              v136 = v128;
              *v46 = 136315906;
              *(v46 + 4) = sub_1000070F4(0x6D6F724664616F6CLL, 0xEF29286568636143, &v136);
              *(v46 + 12) = 2080;
              v1 = 0;
              *(v46 + 14) = sub_1000070F4(0xD00000000000001BLL, 0x800000010083ADE0, &v136);
              v133 = v46;
              *(v46 + 22) = 2082;
              v47 = _swiftEmptyArrayStorage;
              do
              {
                if (v32)
                {
                  v48 = sub_1007A3784();
                }

                else
                {
                  if (v1 >= *(v134 + 16))
                  {
                    goto LABEL_81;
                  }

                  v48 = *(v10 + 8 * v1 + 32);
                }

                v49 = v48;
                v50 = v1 + 1;
                if (__OFADD__(v1, 1))
                {
                  goto LABEL_77;
                }

                v51 = [(objc_class *)v48 description];
                v52 = sub_1007A2254();
                v54 = v53;

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v47 = sub_10000B3D8(0, *(v47 + 2) + 1, 1, v47);
                }

                v56 = *(v47 + 2);
                v55 = *(v47 + 3);
                if (v56 >= v55 >> 1)
                {
                  v47 = sub_10000B3D8((v55 > 1), v56 + 1, 1, v47);
                }

                *(v47 + 2) = v56 + 1;
                v57 = &v47[16 * v56];
                *(v57 + 4) = v52;
                *(v57 + 5) = v54;
                ++v1;
              }

              while (v50 != v30);

              v135 = v47;
              v58 = sub_1001F1160(&unk_100AD61F0, &qword_10080FEF0);
              v127[1] = sub_100005920(&qword_100AEB190, &unk_100AD61F0, &qword_10080FEF0, &protocol conformance descriptor for [A]);
              v127[2] = v58;
              v59 = sub_1007A20B4();
              v61 = v60;

              v62 = sub_1000070F4(v59, v61, &v136);

              v63 = v133;
              *(v133 + 24) = v62;
              *(v63 + 32) = 2082;
              v64 = _s5Books20RootBarItemsProviderC019placeholderStandardD0SayAA0bC4ItemCGvgZ_0();
              v65 = v64;
              if (v64 >> 62)
              {
                v66 = sub_1007A38D4();
                if (v66)
                {
                  goto LABEL_58;
                }
              }

              else
              {
                v66 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v66)
                {
LABEL_58:
                  v1 = 0;
                  v134 = v65 & 0xC000000000000001;
                  v67 = _swiftEmptyArrayStorage;
                  do
                  {
                    if (v134)
                    {
                      v68 = sub_1007A3784();
                    }

                    else
                    {
                      if (v1 >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_80;
                      }

                      v68 = *(v65 + 8 * v1 + 32);
                    }

                    v69 = v68;
                    v70 = v1 + 1;
                    if (__OFADD__(v1, 1))
                    {
                      goto LABEL_79;
                    }

                    v71 = [v68 description];
                    v72 = sub_1007A2254();
                    v74 = v73;

                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v67 = sub_10000B3D8(0, *(v67 + 2) + 1, 1, v67);
                    }

                    v76 = *(v67 + 2);
                    v75 = *(v67 + 3);
                    if (v76 >= v75 >> 1)
                    {
                      v67 = sub_10000B3D8((v75 > 1), v76 + 1, 1, v67);
                    }

                    *(v67 + 2) = v76 + 1;
                    v77 = &v67[16 * v76];
                    *(v77 + 4) = v72;
                    *(v77 + 5) = v74;
                    ++v1;
                  }

                  while (v70 != v66);
LABEL_115:

                  v135 = v67;
                  v116 = sub_1007A20B4();
                  v118 = v117;

                  v119 = sub_1000070F4(v116, v118, &v136);

                  v120 = v133;
                  *(v133 + 34) = v119;
                  v121 = v130;
                  _os_log_impl(&_mh_execute_header, v130, v129, "%s %s Found %{public}s cached RootBarItems. BUT are rejected, using placeholders: %{public}s", v120, 0x2Au);
                  swift_arrayDestroy();

                  v43 = v132;
LABEL_116:
                  v122 = sub_10079ACC4();
                  v123 = sub_1007A2994();
                  if (os_log_type_enabled(v122, v123))
                  {
                    v124 = swift_slowAlloc();
                    v136 = swift_slowAlloc();
                    *v124 = 136315394;
                    *(v124 + 4) = sub_1000070F4(0x6D6F724664616F6CLL, 0xEF29286568636143, &v136);
                    *(v124 + 12) = 2080;
                    *(v124 + 14) = sub_1000070F4(0xD00000000000001BLL, 0x800000010083ADE0, &v136);
                    _os_log_impl(&_mh_execute_header, v122, v123, "%s %s Sending placeholder RootBarStandardItems to RootBarCoordinator on main thread", v124, 0x16u);
                    swift_arrayDestroy();
                  }

                  v125 = _s5Books20RootBarItemsProviderC019placeholderStandardD0SayAA0bC4ItemCGvgZ_0();
                  swift_getKeyPath();
                  swift_getKeyPath();
                  v136 = v125;
                  v126 = v43;
LABEL_119:
                  sub_10079B9B4();
                  return;
                }
              }

              v67 = _swiftEmptyArrayStorage;
              goto LABEL_115;
            }
          }

          if (qword_100AD1688 != -1)
          {
            swift_once();
          }

          v36 = sub_10079ACE4();
          sub_100008B98(v36, qword_100AE4D38);

          v37 = sub_10079ACC4();
          v38 = sub_1007A2994();
          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            v136 = swift_slowAlloc();
            *v39 = 136315650;
            *(v39 + 4) = sub_1000070F4(0x6D6F724664616F6CLL, 0xEF29286568636143, &v136);
            *(v39 + 12) = 2080;
            *(v39 + 14) = sub_1000070F4(0xD00000000000001BLL, 0x800000010083ADE0, &v136);
            *(v39 + 22) = 2048;
            if (v10 >> 62)
            {
              v40 = sub_1007A38D4();
            }

            else
            {
              v40 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            *(v39 + 24) = v40;

            _os_log_impl(&_mh_execute_header, v37, v38, "%s %s Sending %ld cached RootBarStandardItems to RootBarCoordinator on main thread", v39, 0x20u);
            swift_arrayDestroy();
          }

          else
          {
          }

          swift_getKeyPath();
          swift_getKeyPath();
          v136 = v10;
          v78 = v1;
          goto LABEL_119;
        }
      }
    }

    v79 = _s5Books20RootBarItemsProviderC019placeholderStandardD0SayAA0bC4ItemCGvgZ_0();
    swift_getKeyPath();
    swift_getKeyPath();
    v136 = v79;
    v80 = v1;
    sub_10079B9B4();
    if (qword_100AD1688 != -1)
    {
      goto LABEL_104;
    }

    while (1)
    {
      v81 = sub_10079ACE4();
      sub_100008B98(v81, qword_100AE4D38);
      v82 = v80;
      v80 = sub_10079ACC4();
      v83 = sub_1007A29B4();

      if (!os_log_type_enabled(v80, v83))
      {

        return;
      }

      LODWORD(v131) = v83;
      v84 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v136 = v130;
      *v84 = 136315650;
      *(v84 + 4) = sub_1000070F4(0x6D6F724664616F6CLL, 0xEF29286568636143, &v136);
      *(v84 + 12) = 2080;
      *(v84 + 14) = sub_1000070F4(0xD00000000000001BLL, 0x800000010083ADE0, &v136);
      v132 = v84;
      *(v84 + 22) = 2082;
      v85 = _s5Books20RootBarItemsProviderC019placeholderStandardD0SayAA0bC4ItemCGvgZ_0();
      v86 = v85;
      if (v85 >> 62)
      {
        v87 = sub_1007A38D4();
        v133 = v80;
        if (!v87)
        {
LABEL_110:
          v89 = _swiftEmptyArrayStorage;
LABEL_111:

          v135 = v89;
          sub_1001F1160(&unk_100AD61F0, &qword_10080FEF0);
          sub_100005920(&qword_100AEB190, &unk_100AD61F0, &qword_10080FEF0, &protocol conformance descriptor for [A]);
          v111 = sub_1007A20B4();
          v113 = v112;

          v114 = sub_1000070F4(v111, v113, &v136);

          v115 = v132;
          v104 = v133;
          v132[3] = v114;
          v106 = "%s %s Empty cached RootBarItems BUT using placeholders: %{public}s";
          v107 = v131;
          v108 = v104;
          v109 = v115;
          v110 = 32;
          goto LABEL_112;
        }
      }

      else
      {
        v87 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v133 = v80;
        if (!v87)
        {
          goto LABEL_110;
        }
      }

      v88 = 0;
      v134 = v86 & 0xC000000000000001;
      v89 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v134)
        {
          v90 = sub_1007A3784();
        }

        else
        {
          if (v88 >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_103;
          }

          v90 = *(v86 + 8 * v88 + 32);
        }

        v91 = v90;
        v92 = (v88 + 1);
        if (__OFADD__(v88, 1))
        {
          break;
        }

        v80 = v87;
        v93 = [v90 description];
        v94 = sub_1007A2254();
        v96 = v95;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v89 = sub_10000B3D8(0, *(v89 + 2) + 1, 1, v89);
        }

        v98 = *(v89 + 2);
        v97 = *(v89 + 3);
        if (v98 >= v97 >> 1)
        {
          v89 = sub_10000B3D8((v97 > 1), v98 + 1, 1, v89);
        }

        *(v89 + 2) = v98 + 1;
        v99 = &v89[16 * v98];
        *(v99 + 4) = v94;
        *(v99 + 5) = v96;
        ++v88;
        v87 = v80;
        if (v92 == v80)
        {
          goto LABEL_111;
        }
      }

      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      swift_once();
    }
  }

  if (qword_100AD1688 != -1)
  {
    goto LABEL_82;
  }

  while (1)
  {
    v11 = sub_10079ACE4();
    sub_100008B98(v11, qword_100AE4D38);
    v12 = v1;
    v13 = sub_10079ACC4();
    v14 = sub_1007A2994();
    if (!os_log_type_enabled(v13, v14))
    {

      return;
    }

    LODWORD(v131) = v14;
    v133 = v13;
    v15 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    v136 = v130;
    *v15 = 136315906;
    *(v15 + 4) = sub_1000070F4(0x6D6F724664616F6CLL, 0xEF29286568636143, &v136);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_1000070F4(0xD00000000000001BLL, 0x800000010083ADE0, &v136);
    *(v15 + 22) = 2048;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4(&v135);

    v16 = v135 >> 62 ? sub_1007A38D4() : *((v135 & 0xFFFFFFFFFFFFFF8) + 0x10);

    *(v15 + 24) = v16;

    *(v15 + 32) = 2082;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4(&v135);

    v17 = v135;
    if (v135 >> 62)
    {
      break;
    }

    v1 = *((v135 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v132 = v15;
    if (!v1)
    {
      goto LABEL_107;
    }

LABEL_9:
    v18 = 0;
    v134 = v17 & 0xC000000000000001;
    v19 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v134)
      {
        v20 = sub_1007A3784();
      }

      else
      {
        if (v18 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_74;
        }

        v20 = *&v17[8 * v18 + 32];
      }

      v21 = v20;
      v22 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v23 = [v20 description];
      v24 = sub_1007A2254();
      v26 = v25;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_10000B3D8(0, *(v19 + 2) + 1, 1, v19);
      }

      v28 = *(v19 + 2);
      v27 = *(v19 + 3);
      if (v28 >= v27 >> 1)
      {
        v19 = sub_10000B3D8((v27 > 1), v28 + 1, 1, v19);
      }

      *(v19 + 2) = v28 + 1;
      v29 = &v19[16 * v28];
      *(v29 + 4) = v24;
      *(v29 + 5) = v26;
      ++v18;
      if (v22 == v1)
      {
        goto LABEL_108;
      }
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    swift_once();
  }

  v1 = sub_1007A38D4();
  v132 = v15;
  if (v1)
  {
    goto LABEL_9;
  }

LABEL_107:
  v19 = _swiftEmptyArrayStorage;
LABEL_108:

  v135 = v19;
  sub_1001F1160(&unk_100AD61F0, &qword_10080FEF0);
  sub_100005920(&qword_100AEB190, &unk_100AD61F0, &qword_10080FEF0, &protocol conformance descriptor for [A]);
  v100 = sub_1007A20B4();
  v102 = v101;

  v103 = sub_1000070F4(v100, v102, &v136);

  v105 = v132;
  v104 = v133;
  *(v132 + 34) = v103;
  v106 = "%s %s Found %ld cached RootBarStandardItems BUT ignored beacuse RootBarStandardItems is no longer empty: %{public}s";
  v107 = v131;
  v108 = v104;
  v109 = v105;
  v110 = 42;
LABEL_112:
  _os_log_impl(&_mh_execute_header, v108, v107, v106, v109, v110);
  swift_arrayDestroy();
}

uint64_t sub_100670C68(char *a1)
{
  v3 = sub_10066F8E0();
  v4 = [v3 isBooksStoreEnabled];

  if (([*(v1 + OBJC_IVAR____TtC5Books27RootBarStandardItemsManager____lazy_storage___bag) isExpired] & 1) != 0 || !objc_msgSend(v4, "isLoaded"))
  {
    goto LABEL_5;
  }

  v14 = 0;
  v5 = [v4 valueWithError:&v14];
  if (v5)
  {
    v6 = v5;
    v7 = v14;
    v8 = [v6 BOOLValue];

    if (v8)
    {
LABEL_5:
      v9 = 0;
      goto LABEL_6;
    }

    v9 = [a1 isStoreOnly];
  }

  else
  {
    v13 = v14;
    sub_1007967D4();

    swift_willThrow();

    v9 = 0;
  }

LABEL_6:
  if ([*(v1 + OBJC_IVAR____TtC5Books27RootBarStandardItemsManager_restrictionProvider) isBookStoreAllowed])
  {
    v10 = 0;
  }

  else
  {
    v10 = [a1 isStoreOnly];
  }

  if (*&a1[OBJC_IVAR___BKRootBarItem_url + 8])
  {
    v11 = 0;
  }

  else
  {
    v11 = [a1 requiresURL];
  }

  return (v9 | v10 | v11) & 1;
}

Swift::Void __swiftcall RootBarStandardItemsManager.processBagItems(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = sub_1007A1C54();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1007A1CA4();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v32 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007A1D04();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100017E74();
  *v11 = sub_1007A2D74();
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v12 = sub_1007A1D34();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    if (!(a1._rawValue >> 62))
    {
      v13 = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
        goto LABEL_4;
      }

LABEL_22:
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10079B9A4(aBlock);

      v26 = aBlock[0];
      if (aBlock[0] >> 62)
      {
        if (sub_1007A38D4())
        {
          goto LABEL_24;
        }
      }

      else if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_24:
        swift_getKeyPath();
        swift_getKeyPath();
        aBlock[0] = v26;
        v27 = v2;
        sub_10079B9B4();
        return;
      }

      return;
    }
  }

  else
  {
LABEL_20:
    __break(1u);
  }

  v13 = sub_1007A38D4();
  if (!v13)
  {
    goto LABEL_22;
  }

LABEL_4:
  v30 = v5;
  v31 = v4;
  v14 = 0;
  aBlock[0] = _swiftEmptyArrayStorage;
  v5 = a1._rawValue & 0xFFFFFFFFFFFFFF8;
  do
  {
    if ((a1._rawValue & 0xC000000000000001) != 0)
    {
      v15 = sub_1007A3784();
    }

    else
    {
      if (v14 >= *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v15 = *(a1._rawValue + v14 + 4);
    }

    v16 = v15;
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if (sub_100670C68(v15))
    {
    }

    else
    {
      sub_1007A37D4();
      v4 = *(aBlock[0] + 16);
      sub_1007A3804();
      sub_1007A3814();
      sub_1007A37E4();
    }

    ++v14;
  }

  while (v17 != v13);
  v18 = aBlock[0];
  if ((aBlock[0] & 0x8000000000000000) != 0 || (aBlock[0] & 0x4000000000000000) != 0)
  {
    v28 = sub_1007A38D4();
    v19 = v31;
    if (v28)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v19 = v31;
    if (*(aBlock[0] + 16))
    {
LABEL_17:
      swift_getKeyPath();
      swift_getKeyPath();
      aBlock[0] = v18;

      v20 = v2;
      sub_10079B9B4();
      v20[OBJC_IVAR____TtC5Books27RootBarStandardItemsManager_loadedFromBag] = 1;
      v21 = swift_allocObject();
      *(v21 + 16) = v20;
      *(v21 + 24) = v18;
      aBlock[4] = sub_100671B50;
      aBlock[5] = v21;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1003323D0;
      aBlock[3] = &unk_100A2A408;
      v22 = _Block_copy(aBlock);
      v23 = v20;
      v24 = v32;
      sub_1007A1C74();
      v36 = _swiftEmptyArrayStorage;
      sub_100022AA4(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
      sub_100005920(&qword_100ADA680, &unk_100AD7CA0, &unk_100812B20, &protocol conformance descriptor for [A]);
      v25 = v34;
      sub_1007A3594();
      sub_1007A2D94();
      _Block_release(v22);
      (*(v30 + 8))(v25, v19);
      (*(v33 + 8))(v24, v35);

      return;
    }
  }
}

id RootBarStandardItemsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RootBarStandardItemsManager(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1006715D4()
{
  v0 = sub_1001F1160(&qword_100AD6A60, &qword_100813108);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - v2;
  swift_beginAccess();
  sub_1001F1160(&unk_100AF0EA0, &qword_100813110);
  sub_10079B974();
  swift_endAccess();
  sub_100005920(&unk_100AF0EB0, &qword_100AD6A60, &qword_100813108, &protocol conformance descriptor for Published<A>.Publisher);
  v4 = sub_10079BA14();
  (*(v1 + 8))(v3, v0);
  return v4;
}

char *sub_100671738(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v26 = a3;
  v29 = a1;
  v30 = a2;
  v28 = sub_1007A2CF4();
  __chkstk_darwin(v28);
  v27 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1007A2D64();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1007A1CA4();
  __chkstk_darwin(v14 - 8);
  v15 = sub_1001F1160(&unk_100AF0EA0, &qword_100813110);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v25 - v17;
  v33[3] = a5;
  v33[4] = a6;
  v19 = sub_1002256EC(v33);
  (*(*(a5 - 8) + 32))(v19, v26, a5);
  a4[OBJC_IVAR____TtC5Books27RootBarStandardItemsManager_loadedFromBag] = 0;
  v20 = OBJC_IVAR____TtC5Books27RootBarStandardItemsManager__items;
  v32 = _swiftEmptyArrayStorage;
  sub_1001F1160(&qword_100AEB180, &unk_100813120);
  sub_10079B964();
  (*(v16 + 32))(&a4[v20], v18, v15);
  *&a4[OBJC_IVAR____TtC5Books27RootBarStandardItemsManager____lazy_storage___bag] = 0;
  v26 = OBJC_IVAR____TtC5Books27RootBarStandardItemsManager_cacheAccessQueue;
  sub_100017E74();
  sub_1007A1C94();
  (*(v11 + 104))(v13, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v10);
  v32 = _swiftEmptyArrayStorage;
  sub_100022AA4(&qword_100AE8220, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1001F1160(&unk_100AD1E20, &qword_100824350);
  sub_100005920(&qword_100AE8230, &unk_100AD1E20, &qword_100824350, &protocol conformance descriptor for [A]);
  sub_1007A3594();
  *&a4[v26] = sub_1007A2DA4();
  *&a4[OBJC_IVAR____TtC5Books27RootBarStandardItemsManager_restrictionProvider] = v29;
  sub_100009864(v33, &a4[OBJC_IVAR____TtC5Books27RootBarStandardItemsManager_cacheManager]);
  v21 = type metadata accessor for RootBarStandardItemsManager(0);
  v31.receiver = a4;
  v31.super_class = v21;
  v22 = objc_msgSendSuper2(&v31, "init");
  sub_1000074E0(v33);
  if (v30)
  {
    v23 = *&v22[OBJC_IVAR____TtC5Books27RootBarStandardItemsManager____lazy_storage___bag];
    *&v22[OBJC_IVAR____TtC5Books27RootBarStandardItemsManager____lazy_storage___bag] = v30;
  }

  return v22;
}

uint64_t sub_100671B50()
{
  v1 = *(v0 + 24);
  v2 = (*(v0 + 16) + OBJC_IVAR____TtC5Books27RootBarStandardItemsManager_cacheManager);
  v3 = v2[3];
  v4 = v2[4];
  sub_10000E3E8(v2, v3);
  return (*(v4 + 16))(v1, v3, v4);
}

uint64_t sub_100671BC4()
{
  v1 = sub_10079C824();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *(v0 + 88);
  v6 = *(v0 + 96);
  if (*(v0 + 97) != 1)
  {
    v7 = *(v0 + 88);

    v8 = sub_1007A29C4();
    v9 = sub_10079D244();
    sub_10079AB44(v8, &_mh_execute_header, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_10079C814();
    swift_getAtKeyPath();
    v10 = sub_1004CF1C8(v7, v6, 0);
    (*(v2 + 8))(v4, v1, v10);
    return v11;
  }

  return result;
}

uint64_t sub_100671D20@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10079C824();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F1160(&unk_100ADB740, &qword_100819F00);
  __chkstk_darwin(v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for TOCLegacyView(0);
  sub_1000077D8(v1 + *(v10 + 52), v9, &unk_100ADB740, &qword_100819F00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10079C104();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1007A29C4();
    v14 = sub_10079D244();
    sub_10079AB44(v13, &_mh_execute_header, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_10079C814();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_100671F28@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10079C824();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F1160(&unk_100ADB730, &qword_1008121A0);
  __chkstk_darwin(v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for TOCLegacyView(0);
  sub_1000077D8(v1 + *(v10 + 56), v9, &unk_100ADB730, &qword_1008121A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10079BC44();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1007A29C4();
    v14 = sub_10079D244();
    sub_10079AB44(v13, &_mh_execute_header, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_10079C814();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

id sub_100672130()
{
  v0 = sub_1007A1C14();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10079FD44();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_1007A0544();
  sub_1007A1B64();
  (*(v1 + 8))(v3, v0);
  v8 = sub_10079FD14();
  v9 = sub_10079FCF4();
  if (v9 != _s5Books17REActionMenuStateC9pageCountSivpfi_0() && sub_10079FCF4() >= 1)
  {
    v10 = sub_10079FCF4();
    if ((v10 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v10 = 0;
LABEL_6:
  result = [objc_allocWithZone(BKPageLocation) initWithOrdinal:v8 andOffset:v10];
  if (result)
  {
    v12 = result;
    (*(v5 + 8))(v7, v4);
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100672334(void *a1)
{
  v2 = sub_10079BC44();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  sub_100671F28(&v20 - v7);
  (*(v3 + 104))(v5, enum case for ColorScheme.light(_:), v2);
  v9 = sub_10079BC34();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);
  v11 = &kIMThemeIdentifierNightPageTheme;
  if (v9)
  {
    v11 = &kIMThemeIdentifierWhitePageTheme;
  }

  v12 = [objc_opt_self() themeWithIdentifier:*v11];
  v13 = [a1 theme];
  if (!v13)
  {
    v18 = v12;
    goto LABEL_7;
  }

  v14 = v13;
  sub_10000A7C4(0, &qword_100AF10C8, IMTheme_ptr);
  v15 = v12;
  v16 = sub_1007A3184();

  if ((v16 & 1) == 0)
  {
LABEL_7:
    [a1 setTheme:v12];
    v17 = 1;
    goto LABEL_8;
  }

  v17 = 0;
LABEL_8:

  return v17;
}

id sub_100672540(uint64_t a1)
{
  v2 = v1;
  v32 = a1;
  v3 = sub_10079C104();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v32 - v8;
  v10 = *(v1 + 24);
  v11 = (v10 - 1);
  if ((v10 - 1) >= 2)
  {
    v17 = *(v2 + 16);
    if (v17)
    {
      v18 = objc_allocWithZone(BKTOCWebViewController2);
      v19 = v10;
      v20 = [v18 init];
      [v20 setVertical:1];
      [v20 setShouldIgnoreViewLayoutUpdates:1];
    }

    else
    {
      v21 = objc_allocWithZone(BKTOCContentViewController);
      v22 = v10;
      v20 = [v21 init];
      [v20 setVertical:0];
    }

    [v20 setEventEngagement:v10];
    swift_unknownObjectRelease();
    LODWORD(v14) = *(v2 + 33);
    [v20 setUsesPopoverStyle:*(v2 + 33)];
    sub_1006742E4(v17, v10);
    v15 = v20;
    v16 = 0;
  }

  else
  {
    v12 = objc_allocWithZone(BKTOCContentViewController);
    v13 = [v12 init];
    v14 = *(v2 + 33);
    v15 = v13;
    [v15 setUsesPopoverStyle:v14];
    if (v10 == 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }
  }

  [v15 setTocContentType:v16];
  sub_100671D20(v9);
  (*(v4 + 104))(v6, enum case for LayoutDirection.leftToRight(_:), v3);
  v23 = sub_10079C0F4();
  v24 = *(v4 + 8);
  v24(v6, v3);
  v24(v9, v3);
  [v15 setLayoutDirection:(v23 & 1) == 0];

  if (v11 >= 2)
  {
    v27 = [v15 isVertical];
    v25 = 0.0;
    if (!v27)
    {
      v25 = 24.0;
    }

    v28 = 8.0;
    if (v27)
    {
      v28 = 16.0;
    }

    if (v14)
    {
      v25 = 16.0;
      v26 = v28;
    }

    else
    {
      v26 = 24.0;
    }
  }

  else
  {
    v25 = 16.0;
    if (!v14)
    {
      v25 = 24.0;
    }

    v26 = v25;
  }

  [v15 setContentInsets:{0.0, v25, 0.0, v26}];
  if (v14)
  {
    sub_1007A2954();
    [v15 setCenteringInsets:?];
  }

  sub_1001F1160(&qword_100AF10B8, qword_10083B018);
  sub_10079D224();
  v29 = v33;
  [v15 setDirectoryDelegate:v33];

  [v15 setBook:*(*(*v2 + OBJC_IVAR____TtC5Books19BookReaderPresenter_bookProviderService) + OBJC_IVAR___REBookProviderService_bookInfo)];
  sub_100672334(v15);
  result = [v15 view];
  if (result)
  {
    v31 = result;
    [result setAccessibilityIgnoresInvertColors:1];

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10067293C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TOCLegacyView(0);
  __chkstk_darwin(v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001F1160(&qword_100AF10B8, qword_10083B018);
  sub_10079D224();
  v7 = v20;
  sub_1006741C0(v1, v6);
  v8 = OBJC_IVAR____TtCV5Books13TOCLegacyView11Coordinator_parent;
  swift_beginAccess();
  sub_100674280(v6, v7 + v8);
  swift_endAccess();

  sub_10079D224();
  v9 = v18[0];
  v10 = OBJC_IVAR____TtCV5Books13TOCLegacyView11Coordinator_isIgnoringContentChanges;
  *(v18[0] + OBJC_IVAR____TtCV5Books13TOCLegacyView11Coordinator_isIgnoringContentChanges) = 1;
  sub_100672B08(a1, v2);
  v9[v10] = 0;

  if ([a1 tocContentType])
  {
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = v11;
      v13 = v2 + *(v4 + 60);
      v14 = *v13;
      v15 = *(v13 + 8);
      LOBYTE(v13) = *(v13 + 16);
      v18[0] = v14;
      v18[1] = v15;
      v19 = v13;
      v16 = a1;
      sub_1001F1160(&qword_100AF10C0, &qword_100824EC8);
      sub_10079E1C4();
      v17 = &selRef_beginEditingIfNeeded;
      if (!v20)
      {
        v17 = &selRef_endEditingIfNeeded;
      }

      [v12 *v17];
    }
  }
}

id sub_100672B08(void *a1, uint64_t a2)
{
  if ((sub_100672334(a1) & 1) != 0 || [a1 tocContentType] == 1 || (result = objc_msgSend(a1, "tocContentType"), result == 2))
  {
    v5 = [a1 tocContentType];
    v6 = *(a2 + 24);
    if (v6 == 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2 * (v6 == 2);
    }

    if (v5 != v7)
    {
      [a1 setTocContentType:?];
      [a1 destroyFetchedResultsController];
    }

    return [a1 updateView];
  }

  return result;
}

uint64_t sub_100672BE0(uint64_t a1, char a2, uint64_t a3, char a4, id a5)
{
  if (*(v5 + 32) != 1)
  {
    return 0;
  }

  v10 = [a5 scrollView];
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11 || (v12 = v11, *&v13 = COERCE_DOUBLE(sub_100671BC4()), (v14 & 1) != 0) || (a2 & 1) != 0 || *&a1 <= 0.0 || (~a1 & 0x7FF0000000000000) == 0 || (v15 = *&v13, (a4 & 1) == 0) && (a3 & 0x7FF0000000000000) != 0x7FF0000000000000)
  {

    return 0;
  }

  result = [v12 numberOfSections];
  if (result < 0)
  {
LABEL_24:
    __break(1u);
  }

  else
  {
    v17 = result;
    v18 = 0;
    do
    {
      if (v17 == v18)
      {

        return a1;
      }

      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_24;
      }

      result = [v12 numberOfRowsInSection:v18++];
    }

    while (result < 1);
    [v12 frame];
    [v12 frame];
    [v12 setFrame:?];
    [v12 contentOffset];
    v20 = v19;
    [v12 contentOffset];
    [v12 setContentOffset:0.0];
    [v12 contentInset];
    [v12 contentSize];
    [v12 contentInset];
    do
    {
      [v12 frame];
      [v12 setFrame:?];
      [v12 layoutIfNeeded];
      [v12 contentInset];
      v22 = v21;
      [v12 contentSize];
      v24 = v22 + v23;
      [v12 contentInset];
      if (v24 + v25 <= v15)
      {
        v26 = v24 + v25;
      }

      else
      {
        v26 = v15;
      }

      [v12 frame];
    }

    while (v27 < v26);
    [v12 contentOffset];
    [v12 setContentOffset:v20];
    [v12 frame];
    [v12 setFrame:?];

    return a1;
  }

  return result;
}

double sub_100672ED0(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v10 = sub_1007A2254();
  v12 = v11;
  v13 = a3;
  v14 = a4;
  v15 = a1;
  sub_100674340(v14, v10, v12, v6);

  return result;
}

id sub_10067323C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(void *))
{
  v8 = a1;
  v9 = a3;
  v10 = a4;
  a5(a4);
  v12 = v11;

  if (v12)
  {
    v13 = sub_1007A2214();
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

double sub_10067371C(uint64_t a1, void *a2)
{
  if (a2)
  {
    if ([swift_unknownObjectRetain() shouldIgnoreViewLayoutUpdates])
    {
      [a2 reload];
      [a2 updateView];
    }

    swift_unknownObjectRelease();
  }

  return result;
}

double sub_100673810(uint64_t a1)
{
  *(a1 + OBJC_IVAR____TtCV5Books13TOCLegacyView11Coordinator_isUpdateViewScheduled) = 0;
  swift_beginAccess();

  sub_10057D260();
  type metadata accessor for PublishedBool(0);
  sub_1006742F8(&qword_100AF2980, type metadata accessor for PublishedBool, &unk_10083A69C);
  sub_10079B8B4();
  sub_10079B934();

  return result;
}

id sub_100673A88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TOCLegacyView.Coordinator(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100673AF8(uint64_t a1)
{
  result = type metadata accessor for TOCLegacyView(319);
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

void sub_100673BDC(uint64_t a1)
{
  type metadata accessor for BookReaderPresenter(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for BookReaderViewModel(319);
    if (v2 <= 0x3F)
    {
      sub_100247D20();
      if (v3 <= 0x3F)
      {
        sub_100673DC8(319, &qword_100AF1050, &type metadata for BookReaderToolbarPopover, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          sub_100673D74(319, &qword_100AF35B0, &type metadata accessor for LayoutDirection);
          if (v5 <= 0x3F)
          {
            sub_100673D74(319, &qword_100ADB690, &type metadata accessor for ColorScheme);
            if (v6 <= 0x3F)
            {
              sub_100673DC8(319, &unk_100AF1058, &type metadata for Bool, &type metadata accessor for Binding);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_100673D74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10079BCD4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100673DC8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_100673E18(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100673E3C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
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

  v5 = v4 + 1;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

void *sub_100673EA4(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t sub_100673EE8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __chkstk_darwin(a1 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1006741C0(v2, v5);
  v6 = type metadata accessor for TOCLegacyView.Coordinator(0);
  v7 = objc_allocWithZone(v6);
  v7[OBJC_IVAR____TtCV5Books13TOCLegacyView11Coordinator_isIgnoringContentChanges] = 0;
  v7[OBJC_IVAR____TtCV5Books13TOCLegacyView11Coordinator_isUpdateViewScheduled] = 0;
  sub_1006741C0(v5, &v7[OBJC_IVAR____TtCV5Books13TOCLegacyView11Coordinator_parent]);
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, "init");
  result = sub_100674224(v5);
  *a2 = v8;
  return result;
}

uint64_t sub_100673FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1006742F8(&unk_100AF10D0, type metadata accessor for TOCLegacyView, &unk_10083AFA0);

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10067408C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1006742F8(&unk_100AF10D0, type metadata accessor for TOCLegacyView, &unk_10083AFA0);

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100674120(uint64_t a1)
{
  sub_1006742F8(&unk_100AF10D0, type metadata accessor for TOCLegacyView, &unk_10083AFA0);
  sub_10079D194();
  __break(1u);
}

uint64_t sub_1006741C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TOCLegacyView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100674224(uint64_t a1)
{
  v2 = type metadata accessor for TOCLegacyView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100674280(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TOCLegacyView(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1006742E4(uint64_t a1, char *a2)
{
  if ((a2 - 1) >= 2)
  {
  }
}

uint64_t sub_1006742F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_100674340(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = type metadata accessor for TOCLegacyView(0);
  __chkstk_darwin(v9 - 8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v12 = OBJC_IVAR____TtCV5Books13TOCLegacyView11Coordinator_parent;
  swift_beginAccess();
  sub_1006741C0(v4 + v12, v11);
  result = [a1 cfiString];
  if (result)
  {
    v14 = result;
    v15 = sub_1007A2254();
    v17 = v16;

    v18 = [a1 ordinal];
    v20[0] = v15;
    v20[1] = v17;
    v20[2] = a2;
    v20[3] = a3;
    v20[4] = v18;
    v21 = a4 & 1;
    (*(v11 + 7))(v20);

    return sub_100674224(v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100674480(void *a1)
{
  v3 = sub_1001F1160(&unk_100AF1140, &unk_100812770);
  __chkstk_darwin(v3 - 8);
  v5 = &v60 - v4;
  v6 = sub_1001F1160(&qword_100AD65A8, &unk_100812CB0);
  __chkstk_darwin(v6 - 8);
  v8 = &v60 - v7;
  v9 = sub_1007A1C14();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV5Books13TOCLegacyView11Coordinator_parent;
  swift_beginAccess();
  v14 = *(v1 + v13);
  v15 = *&v14[OBJC_IVAR____TtC5Books19BookReaderPresenter_interactor];
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  v17 = v14;
  v18 = v17;
  if (v16)
  {
    v60 = v15;
    v61 = v10;
    v19 = v5;
    v20 = v17;
    v21 = v9;
    v22 = a1;
    v23 = [v16 pageOffset];
    v24 = _s5Books17REActionMenuStateC9pageCountSivpfi_0();
    if (v24 < 0 || v23 != v24)
    {
      v25 = [v16 pageOffset];

      v9 = v21;
      v18 = v20;
      v5 = v19;
      v10 = v61;
      if ((v25 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }
    }

    else
    {

      v9 = v21;
      v18 = v20;
      v5 = v19;
      v10 = v61;
    }
  }

  [a1 ordinal];
  v26 = sub_1001F1160(&unk_100AF1150, &qword_10082A090);
  (*(*(v26 - 8) + 56))(v8, 1, 1, v26);
  v27 = sub_1001F1160(&qword_100AD6190, &qword_100812CC0);
  (*(*(v27 - 8) + 56))(v5, 1, 1, v27);
  sub_1007A1BD4();
  swift_getObjectType();
  v28 = sub_1007A0A84();
  v30 = v29;
  (*(v10 + 8))(v12, v9);

  v32 = HIBYTE(v30) & 0xF;
  v33 = v28 & 0xFFFFFFFFFFFFLL;
  if ((v30 & 0x2000000000000000) != 0)
  {
    v34 = HIBYTE(v30) & 0xF;
  }

  else
  {
    v34 = v28 & 0xFFFFFFFFFFFFLL;
  }

  if (!v34)
  {
    goto LABEL_69;
  }

  if ((v30 & 0x1000000000000000) != 0)
  {
    v63 = 0;
    sub_10063DF1C(v28, v30, 10, v31);
    goto LABEL_69;
  }

  if ((v30 & 0x2000000000000000) == 0)
  {
    if ((v28 & 0x1000000000000000) != 0)
    {
      v35 = ((v30 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v35 = sub_1007A37B4();
    }

    v36 = *v35;
    if (v36 == 43)
    {
      if (v33 >= 1)
      {
        v32 = v33 - 1;
        if (v33 != 1)
        {
          v45 = 0;
          if (v35)
          {
            v46 = v35 + 1;
            while (1)
            {
              v47 = *v46 - 48;
              if (v47 > 9)
              {
                goto LABEL_67;
              }

              v48 = 10 * v45;
              if ((v45 * 10) >> 64 != (10 * v45) >> 63)
              {
                goto LABEL_67;
              }

              v45 = v48 + v47;
              if (__OFADD__(v48, v47))
              {
                goto LABEL_67;
              }

              ++v46;
              if (!--v32)
              {
                goto LABEL_68;
              }
            }
          }

          goto LABEL_59;
        }

        goto LABEL_67;
      }

      goto LABEL_76;
    }

    if (v36 != 45)
    {
      if (v33)
      {
        v53 = 0;
        if (v35)
        {
          while (1)
          {
            v54 = *v35 - 48;
            if (v54 > 9)
            {
              goto LABEL_67;
            }

            v55 = 10 * v53;
            if ((v53 * 10) >> 64 != (10 * v53) >> 63)
            {
              goto LABEL_67;
            }

            v53 = v55 + v54;
            if (__OFADD__(v55, v54))
            {
              goto LABEL_67;
            }

            ++v35;
            if (!--v33)
            {
              goto LABEL_59;
            }
          }
        }

        goto LABEL_59;
      }

LABEL_67:
      LOBYTE(v32) = 1;
      goto LABEL_68;
    }

    if (v33 >= 1)
    {
      v32 = v33 - 1;
      if (v33 != 1)
      {
        v37 = 0;
        if (v35)
        {
          v38 = v35 + 1;
          while (1)
          {
            v39 = *v38 - 48;
            if (v39 > 9)
            {
              goto LABEL_67;
            }

            v40 = 10 * v37;
            if ((v37 * 10) >> 64 != (10 * v37) >> 63)
            {
              goto LABEL_67;
            }

            v37 = v40 - v39;
            if (__OFSUB__(v40, v39))
            {
              goto LABEL_67;
            }

            ++v38;
            if (!--v32)
            {
              goto LABEL_68;
            }
          }
        }

LABEL_59:
        LOBYTE(v32) = 0;
LABEL_68:
        v63 = v32;
LABEL_69:

        return;
      }

      goto LABEL_67;
    }

    goto LABEL_74;
  }

  v62[0] = v28;
  v62[1] = v30 & 0xFFFFFFFFFFFFFFLL;
  if (v28 != 43)
  {
    if (v28 != 45)
    {
      if (v32)
      {
        v56 = 0;
        v57 = v62;
        while (1)
        {
          v58 = *v57 - 48;
          if (v58 > 9)
          {
            break;
          }

          v59 = 10 * v56;
          if ((v56 * 10) >> 64 != (10 * v56) >> 63)
          {
            break;
          }

          v56 = v59 + v58;
          if (__OFADD__(v59, v58))
          {
            break;
          }

          ++v57;
          if (!--v32)
          {
            goto LABEL_68;
          }
        }
      }

      goto LABEL_67;
    }

    if (v32)
    {
      if (--v32)
      {
        v41 = 0;
        v42 = v62 + 1;
        while (1)
        {
          v43 = *v42 - 48;
          if (v43 > 9)
          {
            break;
          }

          v44 = 10 * v41;
          if ((v41 * 10) >> 64 != (10 * v41) >> 63)
          {
            break;
          }

          v41 = v44 - v43;
          if (__OFSUB__(v44, v43))
          {
            break;
          }

          ++v42;
          if (!--v32)
          {
            goto LABEL_68;
          }
        }
      }

      goto LABEL_67;
    }

    goto LABEL_75;
  }

  if (v32)
  {
    if (--v32)
    {
      v49 = 0;
      v50 = v62 + 1;
      while (1)
      {
        v51 = *v50 - 48;
        if (v51 > 9)
        {
          break;
        }

        v52 = 10 * v49;
        if ((v49 * 10) >> 64 != (10 * v49) >> 63)
        {
          break;
        }

        v49 = v52 + v51;
        if (__OFADD__(v52, v51))
        {
          break;
        }

        ++v50;
        if (!--v32)
        {
          goto LABEL_68;
        }
      }
    }

    goto LABEL_67;
  }

LABEL_77:
  __break(1u);
}

void sub_100674AA4(void *a1)
{
  v3 = type metadata accessor for TOCLegacyView(0);
  __chkstk_darwin(v3 - 8);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    v6 = OBJC_IVAR____TtCV5Books13TOCLegacyView11Coordinator_parent;
    swift_beginAccess();
    sub_1006741C0(v1 + v6, v5);
    v7 = a1;
    v8 = [v7 href];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1007A2254();
      v12 = v11;

      v5[5](v10, v12);

      sub_100674224(v5);
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_100674BAC(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v3 = OBJC_IVAR____TtCV5Books13TOCLegacyView11Coordinator_parent;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = a1;
  result = [v5 href];
  if (result)
  {
    v7 = result;
    v8 = sub_1007A2254();
    v10 = v9;

    v11 = sub_1004AA4C0(v8, v10);

    return v11;
  }

  __break(1u);
  return result;
}

id sub_100674C8C(id a1)
{
  v2 = a1;
  if (a1)
  {
    v3 = [a1 chapterTitle];
    if (v3)
    {
      v4 = v3;
      sub_1007A2254();
    }

    v5 = v2;

    v6 = OBJC_IVAR____TtCV5Books13TOCLegacyView11Coordinator_parent;
    swift_beginAccess();
    v7 = *(v1 + v6);
    v2 = sub_1004AA6D8(v5);
  }

  return v2;
}

void sub_100674D60(void *a1)
{
  if (a1)
  {
    v3 = OBJC_IVAR____TtCV5Books13TOCLegacyView11Coordinator_parent;
    swift_beginAccess();
    v4 = *(v1 + v3);
    v5 = a1;
    v6 = [v5 href];
    if (!v6)
    {
LABEL_76:
      __break(1u);
      return;
    }

    v7 = v6;
    v8 = sub_1007A2254();
    v10 = v9;

    v11 = sub_1004AA4C0(v8, v10);
    v13 = v12;

    if (v13)
    {
      v15 = HIBYTE(v13) & 0xF;
      v16 = v11 & 0xFFFFFFFFFFFFLL;
      if ((v13 & 0x2000000000000000) != 0)
      {
        v17 = HIBYTE(v13) & 0xF;
      }

      else
      {
        v17 = v11 & 0xFFFFFFFFFFFFLL;
      }

      if (v17)
      {
        if ((v13 & 0x1000000000000000) != 0)
        {
          sub_10063DF1C(v11, v13, 10, v14);
          goto LABEL_66;
        }

        if ((v13 & 0x2000000000000000) != 0)
        {
          v43[0] = v11;
          v43[1] = v13 & 0xFFFFFFFFFFFFFFLL;
          if (v11 == 43)
          {
            if (v15)
            {
              if (--v15)
              {
                v32 = 0;
                v33 = v43 + 1;
                while (1)
                {
                  v34 = *v33 - 48;
                  if (v34 > 9)
                  {
                    break;
                  }

                  v35 = 10 * v32;
                  if ((v32 * 10) >> 64 != (10 * v32) >> 63)
                  {
                    break;
                  }

                  v32 = v35 + v34;
                  if (__OFADD__(v35, v34))
                  {
                    break;
                  }

                  ++v33;
                  if (!--v15)
                  {
                    goto LABEL_65;
                  }
                }
              }

              goto LABEL_64;
            }

            goto LABEL_75;
          }

          if (v11 != 45)
          {
            if (v15)
            {
              v39 = 0;
              v40 = v43;
              while (1)
              {
                v41 = *v40 - 48;
                if (v41 > 9)
                {
                  break;
                }

                v42 = 10 * v39;
                if ((v39 * 10) >> 64 != (10 * v39) >> 63)
                {
                  break;
                }

                v39 = v42 + v41;
                if (__OFADD__(v42, v41))
                {
                  break;
                }

                ++v40;
                if (!--v15)
                {
                  goto LABEL_65;
                }
              }
            }

            goto LABEL_64;
          }

          if (v15)
          {
            if (--v15)
            {
              v24 = 0;
              v25 = v43 + 1;
              while (1)
              {
                v26 = *v25 - 48;
                if (v26 > 9)
                {
                  break;
                }

                v27 = 10 * v24;
                if ((v24 * 10) >> 64 != (10 * v24) >> 63)
                {
                  break;
                }

                v24 = v27 - v26;
                if (__OFSUB__(v27, v26))
                {
                  break;
                }

                ++v25;
                if (!--v15)
                {
                  goto LABEL_65;
                }
              }
            }

            goto LABEL_64;
          }
        }

        else
        {
          if ((v11 & 0x1000000000000000) != 0)
          {
            v18 = ((v13 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v18 = sub_1007A37B4();
          }

          v19 = *v18;
          if (v19 == 43)
          {
            if (v16 >= 1)
            {
              v15 = v16 - 1;
              if (v16 != 1)
              {
                v28 = 0;
                if (v18)
                {
                  v29 = v18 + 1;
                  while (1)
                  {
                    v30 = *v29 - 48;
                    if (v30 > 9)
                    {
                      goto LABEL_64;
                    }

                    v31 = 10 * v28;
                    if ((v28 * 10) >> 64 != (10 * v28) >> 63)
                    {
                      goto LABEL_64;
                    }

                    v28 = v31 + v30;
                    if (__OFADD__(v31, v30))
                    {
                      goto LABEL_64;
                    }

                    ++v29;
                    if (!--v15)
                    {
                      goto LABEL_65;
                    }
                  }
                }

                goto LABEL_56;
              }

              goto LABEL_64;
            }

            goto LABEL_74;
          }

          if (v19 != 45)
          {
            if (v16)
            {
              v36 = 0;
              if (v18)
              {
                while (1)
                {
                  v37 = *v18 - 48;
                  if (v37 > 9)
                  {
                    goto LABEL_64;
                  }

                  v38 = 10 * v36;
                  if ((v36 * 10) >> 64 != (10 * v36) >> 63)
                  {
                    goto LABEL_64;
                  }

                  v36 = v38 + v37;
                  if (__OFADD__(v38, v37))
                  {
                    goto LABEL_64;
                  }

                  ++v18;
                  if (!--v16)
                  {
                    goto LABEL_56;
                  }
                }
              }

              goto LABEL_56;
            }

LABEL_64:
            LOBYTE(v15) = 1;
            goto LABEL_65;
          }

          if (v16 >= 1)
          {
            v15 = v16 - 1;
            if (v16 != 1)
            {
              v20 = 0;
              if (v18)
              {
                v21 = v18 + 1;
                while (1)
                {
                  v22 = *v21 - 48;
                  if (v22 > 9)
                  {
                    goto LABEL_64;
                  }

                  v23 = 10 * v20;
                  if ((v20 * 10) >> 64 != (10 * v20) >> 63)
                  {
                    goto LABEL_64;
                  }

                  v20 = v23 - v22;
                  if (__OFSUB__(v23, v22))
                  {
                    goto LABEL_64;
                  }

                  ++v21;
                  if (!--v15)
                  {
                    goto LABEL_65;
                  }
                }
              }

LABEL_56:
              LOBYTE(v15) = 0;
LABEL_65:
              v44 = v15;
LABEL_66:

              return;
            }

            goto LABEL_64;
          }

          __break(1u);
        }

        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }
    }
  }
}

void sub_1006750FC(uint64_t a1, void *a2)
{
  v11 = BKAppDelegate.enableMetricsInspectorOnDebugMode();
  v12 = 0;
  v7 = _NSConcreteStackBlock;
  v8 = 1107296256;
  v9 = sub_100569BDC;
  v10 = &unk_100A2A540;
  v4 = _Block_copy(&v7);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v11 = sub_100675574;
  v12 = v5;
  v7 = _NSConcreteStackBlock;
  v8 = 1107296256;
  v9 = sub_100569BDC;
  v10 = &unk_100A2A590;
  v6 = _Block_copy(&v7);
  swift_unknownObjectRetain();

  [a2 animateAlongsideTransition:v4 completion:v6];
  _Block_release(v6);
  _Block_release(v4);
}

void sub_10067524C()
{
  v1 = sub_1007A1C54();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &aBlock[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1007A1CA4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &v0[OBJC_IVAR____TtCV5Books13TOCLegacyView11Coordinator_parent];
  swift_beginAccess();
  if (v9[32] == 1 && (v0[OBJC_IVAR____TtCV5Books13TOCLegacyView11Coordinator_isIgnoringContentChanges] & 1) == 0 && (v0[OBJC_IVAR____TtCV5Books13TOCLegacyView11Coordinator_isUpdateViewScheduled] & 1) == 0)
  {
    v0[OBJC_IVAR____TtCV5Books13TOCLegacyView11Coordinator_isUpdateViewScheduled] = 1;
    sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
    v10 = sub_1007A2D74();
    v11 = swift_allocObject();
    *(v11 + 16) = v0;
    aBlock[4] = sub_100675564;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1003323D0;
    aBlock[3] = &unk_100A2A518;
    v12 = _Block_copy(aBlock);
    v13 = v0;

    sub_1007A1C74();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1006742F8(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
    sub_100234698();
    sub_1007A3594();
    sub_1007A2D94();
    _Block_release(v12);

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v5);
  }
}

void sub_100675AD4(void *a1, uint64_t a2, uint64_t a3, id *a4)
{
  v7 = a1;
  isa = sub_1007A2684().super.super.isa;
  v6 = *a4;
  [v7 setValue:isa forKey:v6];
}

id sub_100676030(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = (a1 + *a3);
  swift_beginAccess();
  v6 = *v5;
  if (*v5)
  {
    v7 = v5[1];
    aBlock[4] = v6;
    aBlock[5] = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1003323D0;
    aBlock[3] = a4;
    v8 = _Block_copy(aBlock);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_100676110(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;
  sub_1000260E8(*v2, v2[1]);
  return v3;
}

uint64_t sub_100676174(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  return sub_100007020(v7, v8);
}

id AppLifecycleObserver.__allocating_init(coordinator:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = [objc_opt_self() sharedApplication];
  if ([objc_opt_self() appKitBundleClass])
  {
    swift_getObjCClassMetadata();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v6 = [v3 initWithCoordinator:a1 uiApplication:v4 appKitBundle:ObjCClassFromMetadata];

  swift_unknownObjectRelease();
  return v6;
}

id AppLifecycleObserver.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for AppLifecycleObserver();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1006764F0()
{
  if (qword_100AD19E0 != -1)
  {
    swift_once();
  }

  v1 = sub_10079ACE4();
  sub_100008B98(v1, qword_100AF11C0);
  v2 = v0;
  v3 = sub_10079ACC4();
  v4 = sub_1007A29D4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "%@: UIApplication did enter background", v5, 0xCu);
    sub_100025F24(v6);
  }

  swift_getObjectType();
  v8 = &v2[OBJC_IVAR___BKAppLifecycleObserver_onDidEnterBackground];
  swift_beginAccess();
  v10 = *v8;
  v9 = v8[1];
  sub_1000260E8(v10, v9);
  sub_100025F8C(0xD000000000000014, 0x80000001008E5370, v10, v9);
  return sub_100007020(v10, v9);
}

uint64_t sub_1006766B8()
{
  if (qword_100AD19E0 != -1)
  {
    swift_once();
  }

  v1 = sub_10079ACE4();
  sub_100008B98(v1, qword_100AF11C0);
  v2 = v0;
  v3 = sub_10079ACC4();
  v4 = sub_1007A29D4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "%@: UIApplication will resign active", v5, 0xCu);
    sub_100025F24(v6);
  }

  swift_getObjectType();
  v8 = &v2[OBJC_IVAR___BKAppLifecycleObserver_onWillResignActive];
  swift_beginAccess();
  v10 = *v8;
  v9 = v8[1];
  sub_1000260E8(v10, v9);
  sub_100025F8C(0xD000000000000012, 0x80000001008E5390, v10, v9);
  return sub_100007020(v10, v9);
}

double sub_100676934@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + 72);

  return result;
}

double sub_100676948@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + 80);

  return result;
}

double sub_10067695C@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + 88);

  return result;
}

double sub_100676970@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + 96);

  return result;
}

uint64_t sub_10067697C()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AF1240);
  sub_100008B98(v0, qword_100AF1240);
  sub_10001389C();
  return sub_1007A33F4();
}

uint64_t sub_100676A1C()
{
  v0 = sub_1001F1160(&qword_100AD5D10, &qword_1008110F0);
  __chkstk_darwin(v0 - 8);
  v36 = v29 - v1;
  v2 = sub_1001F1160(&qword_100AD5CC0, &qword_1008110A0);
  __chkstk_darwin(v2 - 8);
  v35 = v29 - v3;
  v4 = sub_1007967F4();
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin(v4);
  v6 = (v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_100796CF4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v29 - v12;
  v14 = sub_1007A21D4();
  v29[0] = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v29 - v19;
  v21 = sub_100796814();
  v31 = *(v21 - 8);
  v32 = v21;
  __chkstk_darwin(v21);
  v29[1] = v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001F1160(&unk_100AF1580, &qword_10083C778);
  v23 = *(sub_1001F1160(&qword_100AD3A30, &qword_10080CC90) - 8);
  v30 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10080B690;
  sub_1007A2154();
  sub_100796C94();
  (*(v15 + 16))(v17, v20, v14);
  (*(v8 + 16))(v10, v13, v7);
  *v6 = type metadata accessor for BundleFinder();
  (*(v33 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v34);
  sub_100796834();
  (*(v8 + 8))(v13, v7);
  (*(v15 + 8))(v20, v29[0]);
  (*(v31 + 56))(v35, 1, 1, v32);
  v25 = sub_100796104();
  (*(*(v25 - 8) + 56))(v36, 1, 1, v25);
  v26 = v30;
  sub_100796124();
  v27 = sub_1001EFC30(v24);
  swift_setDeallocating();
  sub_100007840(v24 + v26, &qword_100AD3A30, &qword_10080CC90);
  result = swift_deallocClassInstance();
  qword_100B237B8 = v27;
  return result;
}

unint64_t sub_100676F7C()
{
  result = qword_100AF1258;
  if (!qword_100AF1258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF1258);
  }

  return result;
}

unint64_t sub_100676FE0()
{
  result = qword_100AF1260;
  if (!qword_100AF1260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF1260);
  }

  return result;
}

unint64_t sub_100677038()
{
  result = qword_100AF1268;
  if (!qword_100AF1268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF1268);
  }

  return result;
}

unint64_t sub_100677090()
{
  result = qword_100AF1270;
  if (!qword_100AF1270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF1270);
  }

  return result;
}

unint64_t sub_1006770E8()
{
  result = qword_100AF1278;
  if (!qword_100AF1278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF1278);
  }

  return result;
}

unint64_t sub_10067713C()
{
  result = qword_100AF1280;
  if (!qword_100AF1280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF1280);
  }

  return result;
}

unint64_t sub_100677190()
{
  result = qword_100AF1288;
  if (!qword_100AF1288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF1288);
  }

  return result;
}

unint64_t sub_1006771E8()
{
  result = qword_100AF1290;
  if (!qword_100AF1290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF1290);
  }

  return result;
}

uint64_t sub_1006772A0(uint64_t a1)
{
  v2 = sub_10043F41C();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1006772F0()
{
  result = qword_100AF1298;
  if (!qword_100AF1298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF1298);
  }

  return result;
}

unint64_t sub_100677348()
{
  result = qword_100AF12A0;
  if (!qword_100AF12A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF12A0);
  }

  return result;
}

unint64_t sub_1006773A0()
{
  result = qword_100AF12A8;
  if (!qword_100AF12A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF12A8);
  }

  return result;
}

uint64_t sub_100677418(uint64_t a1)
{
  v2 = sub_1006771E8();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_1006774E4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_100796314();
  sub_100009A38(v5, a2);
  sub_100008B98(v5, a2);
  return sub_1007962E4();
}

uint64_t sub_100677544()
{
  v0 = sub_1001F1160(&qword_100AD5D10, &qword_1008110F0);
  __chkstk_darwin(v0 - 8);
  v36 = v29 - v1;
  v2 = sub_1001F1160(&qword_100AD5CC0, &qword_1008110A0);
  __chkstk_darwin(v2 - 8);
  v35 = v29 - v3;
  v4 = sub_1007967F4();
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin(v4);
  v6 = (v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_100796CF4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v29 - v12;
  v14 = sub_1007A21D4();
  v29[0] = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v29 - v19;
  v21 = sub_100796814();
  v31 = *(v21 - 8);
  v32 = v21;
  __chkstk_darwin(v21);
  v29[1] = v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001F1160(&qword_100AF1578, &unk_10083C768);
  v23 = *(sub_1001F1160(&qword_100AD3A20, &qword_10080CC80) - 8);
  v30 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10080B690;
  sub_1007A2154();
  sub_100796C94();
  (*(v15 + 16))(v17, v20, v14);
  (*(v8 + 16))(v10, v13, v7);
  *v6 = type metadata accessor for BundleFinder();
  (*(v33 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v34);
  sub_100796834();
  (*(v8 + 8))(v13, v7);
  (*(v15 + 8))(v20, v29[0]);
  (*(v31 + 56))(v35, 1, 1, v32);
  v25 = sub_100796104();
  (*(*(v25 - 8) + 56))(v36, 1, 1, v25);
  v26 = v30;
  sub_100796124();
  v27 = sub_1001EFDFC(v24);
  swift_setDeallocating();
  sub_100007840(v24 + v26, &qword_100AD3A20, &qword_10080CC80);
  result = swift_deallocClassInstance();
  qword_100B237D8 = v27;
  return result;
}

unint64_t sub_100677AA4()
{
  result = qword_100AF12C0;
  if (!qword_100AF12C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF12C0);
  }

  return result;
}

Swift::Int sub_100677AF8()
{
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  return sub_1007A3C44();
}

Swift::Int sub_100677B4C(uint64_t a1)
{
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  return sub_1007A3C44();
}

void sub_100677BA8(uint64_t *a1@<X0>, Swift::OpaquePointer a2@<X3>, BOOL *a3@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v4 = a1[1];
  v7._object = v4;
  v6 = sub_1007A3964(a2, v7);

  *a3 = v6 != 0;
}

unint64_t sub_100677BFC()
{
  result = qword_100AF12C8;
  if (!qword_100AF12C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF12C8);
  }

  return result;
}

unint64_t sub_100677C54()
{
  result = qword_100AF12D0;
  if (!qword_100AF12D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF12D0);
  }

  return result;
}

unint64_t sub_100677CAC()
{
  result = qword_100AF12D8;
  if (!qword_100AF12D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF12D8);
  }

  return result;
}

unint64_t sub_100677D04()
{
  result = qword_100AF12E0;
  if (!qword_100AF12E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF12E0);
  }

  return result;
}

unint64_t sub_100677D58()
{
  result = qword_100AF12E8;
  if (!qword_100AF12E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF12E8);
  }

  return result;
}

unint64_t sub_100677DAC()
{
  result = qword_100AF12F0;
  if (!qword_100AF12F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF12F0);
  }

  return result;
}

unint64_t sub_100677E04()
{
  result = qword_100AF12F8;
  if (!qword_100AF12F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF12F8);
  }

  return result;
}

unint64_t sub_100677EBC()
{
  result = qword_100AF1300;
  if (!qword_100AF1300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF1300);
  }

  return result;
}

uint64_t sub_100677F10(uint64_t a1)
{
  v2 = sub_100677EBC();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100677F60()
{
  result = qword_100AF1308;
  if (!qword_100AF1308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF1308);
  }

  return result;
}

unint64_t sub_100677FB8()
{
  result = qword_100AF1310;
  if (!qword_100AF1310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF1310);
  }

  return result;
}

unint64_t sub_100678010()
{
  result = qword_100AF1318;
  if (!qword_100AF1318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF1318);
  }

  return result;
}

uint64_t sub_100678088(uint64_t a1)
{
  v2 = sub_100677E04();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10067812C()
{
  result = qword_100AF1330;
  if (!qword_100AF1330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF1330);
  }

  return result;
}

unint64_t sub_100678184()
{
  result = qword_100AF1338;
  if (!qword_100AF1338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF1338);
  }

  return result;
}

uint64_t sub_1006781D8()
{
  sub_1001F1160(&qword_100AD57D0, &qword_100823520);
  sub_100795B74();
  sub_100795B64();
  result = sub_100795AA4();
  qword_100B237E0 = result;
  return result;
}

uint64_t sub_100678248(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 160) = a1;
  *(v2 + 168) = v3;
  return _swift_task_switch(sub_10067826C, 0, 0);
}

uint64_t sub_10067826C()
{
  v1 = *(v0 + 160);
  sub_100795A94();
  sub_1006834F0(v0 + 120, v0 + 16);
  v2 = *(v0 + 16);
  v3 = *(v0 + 48);
  *(v1 + 16) = *(v0 + 32);
  *(v1 + 32) = v3;
  *v1 = v2;
  v4 = *(v0 + 64);
  v5 = *(v0 + 80);
  v6 = *(v0 + 96);
  *(v1 + 96) = *(v0 + 112);
  *(v1 + 64) = v5;
  *(v1 + 80) = v6;
  *(v1 + 48) = v4;
  v7 = *(v0 + 8);

  return v7();
}

unint64_t sub_100678308()
{
  result = qword_100AF1340;
  if (!qword_100AF1340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF1340);
  }

  return result;
}

uint64_t sub_10067835C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100682F4C();
  *v4 = v2;
  v4[1] = sub_100372D80;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_100678414()
{
  result = qword_100AF1348;
  if (!qword_100AF1348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF1348);
  }

  return result;
}

unint64_t sub_10067846C()
{
  result = qword_100AF1350;
  if (!qword_100AF1350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF1350);
  }

  return result;
}

uint64_t sub_1006784C0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100682F4C();
  *v5 = v2;
  v5[1] = sub_10036D9C0;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100678574(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100682F4C();
  *v4 = v2;
  v4[1] = sub_100372D80;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_100678628()
{
  result = qword_100AF1358;
  if (!qword_100AF1358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF1358);
  }

  return result;
}

unint64_t sub_10067867C()
{
  result = qword_100AF1360;
  if (!qword_100AF1360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF1360);
  }

  return result;
}

unint64_t sub_1006786D0()
{
  result = qword_100AF1368;
  if (!qword_100AF1368)
  {
    sub_1001F1234(&qword_100AF1370, qword_10083B690);
    sub_10067867C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF1368);
  }

  return result;
}

uint64_t sub_100678754(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100678308();
  *v5 = v2;
  v5[1] = sub_10002812C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_10067880C()
{
  result = qword_100AF1378;
  if (!qword_100AF1378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF1378);
  }

  return result;
}

uint64_t sub_100678860(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100246DA4;

  return sub_100683994();
}

uint64_t sub_100678924()
{
  v1 = *(v0 + 160);
  sub_1001F1160(&qword_100AD57D0, &qword_100823520);
  sub_100795B74();
  sub_100795B64();
  sub_100795AA4();
  sub_100795A94();
  sub_1006834F0(v0 + 120, v0 + 16);

  v2 = *(v0 + 16);
  v3 = *(v0 + 48);
  *(v1 + 16) = *(v0 + 32);
  *(v1 + 32) = v3;
  *v1 = v2;
  v4 = *(v0 + 64);
  v5 = *(v0 + 80);
  v6 = *(v0 + 96);
  *(v1 + 96) = *(v0 + 112);
  *(v1 + 64) = v5;
  *(v1 + 80) = v6;
  *(v1 + 48) = v4;
  v7 = *(v0 + 8);

  return v7();
}

unint64_t sub_100678A18()
{
  result = qword_100AF1380;
  if (!qword_100AF1380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF1380);
  }

  return result;
}

uint64_t sub_100678AB0()
{
  v0 = sub_1001F1160(&qword_100AD5CC0, &qword_1008110A0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_100796814();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_100796314();
  sub_100009A38(v5, qword_100B237E8);
  sub_100008B98(v5, qword_100B237E8);
  sub_1007967E4();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_100796304();
}

uint64_t sub_100678C20@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = sub_1001F1160(&qword_100AD5D10, &qword_1008110F0);
  __chkstk_darwin(v1 - 8);
  v32 = &v25 - v2;
  v3 = sub_1001F1160(&qword_100AD5CC0, &qword_1008110A0);
  __chkstk_darwin(v3 - 8);
  v31 = &v25 - v4;
  v5 = sub_1007967F4();
  v29 = *(v5 - 8);
  v30 = v5;
  __chkstk_darwin(v5);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_100796CF4();
  v8 = *(v28 - 8);
  __chkstk_darwin(v28);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v25 - v12;
  v14 = sub_1007A21D4();
  v26 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v25 - v19;
  v27 = sub_100796814();
  v21 = *(v27 - 8);
  __chkstk_darwin(v27);
  sub_1007A2154();
  sub_100796C94();
  (*(v15 + 16))(v17, v20, v14);
  v22 = v28;
  (*(v8 + 16))(v10, v13, v28);
  *v7 = type metadata accessor for BundleFinder();
  (*(v29 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v30);
  sub_100796834();
  (*(v8 + 8))(v13, v22);
  (*(v15 + 8))(v20, v26);
  (*(v21 + 56))(v31, 1, 1, v27);
  v23 = sub_100796104();
  (*(*(v23 - 8) + 56))(v32, 1, 1, v23);
  return sub_100796124();
}

uint64_t sub_1006790A4()
{
  v0 = sub_100796814();
  sub_100009A38(v0, qword_100B23800);
  sub_100008B98(v0, qword_100B23800);
  return sub_1007967E4();
}

uint64_t sub_100679108()
{
  v0 = sub_1001F1160(&qword_100AF1510, &qword_10083C590);
  sub_100009A38(v0, qword_100B23818);
  v1 = sub_100008B98(v0, qword_100B23818);
  sub_100796024();
  v2 = sub_100796034();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1006791C8()
{
  result = swift_getKeyPath();
  qword_100B23830 = result;
  return result;
}

uint64_t sub_1006791F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[121] = a3;
  v3[120] = a2;
  v3[119] = a1;
  sub_1001F1160(&qword_100AF14E0, &qword_10083C538);
  v3[122] = swift_task_alloc();
  sub_1001F1160(&qword_100AF14E8, &qword_10083C540);
  v3[123] = swift_task_alloc();
  sub_1001F1160(&qword_100AF1558, &qword_10083C6B8);
  v3[124] = swift_task_alloc();
  v4 = sub_100795CE4();
  v3[125] = v4;
  v3[126] = *(v4 - 8);
  v3[127] = swift_task_alloc();
  v5 = sub_1001F1160(&qword_100AF14F8, &unk_10083C550);
  v3[128] = v5;
  v3[129] = *(v5 - 8);
  v3[130] = swift_task_alloc();
  v3[131] = swift_task_alloc();

  return _swift_task_switch(sub_1006793DC, 0, 0);
}

uint64_t sub_1006793DC()
{
  sub_100795DF4();
  v1 = *(v0 + 168);
  v2 = *(v0 + 200);
  *(v0 + 288) = *(v0 + 184);
  *(v0 + 304) = v2;
  *(v0 + 320) = *(v0 + 216);
  v3 = *(v0 + 136);
  *(v0 + 224) = *(v0 + 120);
  *(v0 + 240) = v3;
  *(v0 + 256) = *(v0 + 152);
  *(v0 + 272) = v1;
  v4 = swift_task_alloc();
  *(v0 + 1056) = v4;
  v5 = sub_100408CA8();
  *v4 = v0;
  v4[1] = sub_1006794D8;
  v6 = *(v0 + 1048);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 224, sub_100685670, 0, &type metadata for BookSettingsEntity, v5);
}

uint64_t sub_1006794D8()
{

  return _swift_task_switch(sub_1006795D4, 0, 0);
}

uint64_t sub_1006795D4()
{
  sub_100795DF4();
  v1 = *(v0 + 96);
  *(v0 + 392) = *(v0 + 80);
  *(v0 + 408) = v1;
  *(v0 + 424) = *(v0 + 112);
  v2 = *(v0 + 32);
  *(v0 + 328) = *(v0 + 16);
  *(v0 + 344) = v2;
  v3 = *(v0 + 64);
  *(v0 + 360) = *(v0 + 48);
  *(v0 + 376) = v3;
  sub_100795DF4();
  if (qword_100AD1A30 != -1)
  {
    swift_once();
  }

  v4 = qword_100B23830;
  *(v0 + 1064) = qword_100B23830;

  v5 = swift_task_alloc();
  *(v0 + 1072) = v5;
  v6 = sub_100005920(&qword_100AF1560, &qword_100AF1568, &qword_10083C6C0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v5 = v0;
  v5[1] = sub_100679738;

  return AppEntity._setValue<A, B, C>(_:for:)(v6, v4, &type metadata for StubBookFont, v6);
}

uint64_t sub_100679738()
{
  v2 = *v1;
  v3 = *v1 + 328;
  *(*v1 + 1080) = v0;

  v5 = *(v3 + 16);
  v4 = *(v3 + 32);
  if (v0)
  {
    *(v2 + 432) = *v3;
    *(v2 + 448) = v5;
    *(v2 + 464) = v4;
    v7 = *(v3 + 64);
    v6 = *(v3 + 80);
    v8 = *(v3 + 48);
    *(v2 + 528) = *(v3 + 96);
    *(v2 + 496) = v7;
    *(v2 + 512) = v6;
    *(v2 + 480) = v8;
    sub_10043F470(v2 + 432);

    v9 = sub_100679B94;
  }

  else
  {
    *(v2 + 744) = *v3;
    *(v2 + 760) = v5;
    *(v2 + 776) = v4;
    v11 = *(v3 + 64);
    v10 = *(v3 + 80);
    v12 = *(v3 + 48);
    *(v2 + 840) = *(v3 + 96);
    *(v2 + 808) = v11;
    *(v2 + 824) = v10;
    *(v2 + 792) = v12;
    sub_10043F470(v2 + 744);

    v9 = sub_1006798D0;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1006798D0()
{
  v1 = *(v0 + 1032);
  v14 = *(v0 + 1024);
  v15 = *(v0 + 1040);
  v16 = *(v0 + 1016);
  v17 = *(v0 + 1048);
  v18 = *(v0 + 1008);
  v19 = *(v0 + 1000);
  v2 = *(v0 + 984);
  v3 = *(v0 + 976);
  sub_100795DF4();
  v4 = *(v0 + 720);
  *(v0 + 912) = *(v0 + 704);
  *(v0 + 928) = v4;
  *(v0 + 944) = *(v0 + 736);
  v5 = *(v0 + 656);
  *(v0 + 848) = *(v0 + 640);
  *(v0 + 864) = v5;
  v6 = *(v0 + 688);
  *(v0 + 880) = *(v0 + 672);
  *(v0 + 896) = v6;
  v7 = sub_1007962D4();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  v8 = sub_100796324();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  sub_100678A18();
  sub_10067867C();
  sub_100795CB4();
  (*(v1 + 16))(v15, v17, v14);
  sub_100795CD4();
  sub_100795D04();
  (*(v18 + 8))(v16, v19);
  v9 = *(v0 + 928);
  *(v0 + 600) = *(v0 + 912);
  *(v0 + 616) = v9;
  *(v0 + 632) = *(v0 + 944);
  v10 = *(v0 + 864);
  *(v0 + 536) = *(v0 + 848);
  *(v0 + 552) = v10;
  v11 = *(v0 + 896);
  *(v0 + 568) = *(v0 + 880);
  *(v0 + 584) = v11;
  sub_10043F470(v0 + 536);
  (*(v1 + 8))(v17, v14);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100679B94()
{
  (*(v0[129] + 8))(v0[131], v0[128]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100679C64(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = sub_1001F1160(&qword_100AF1500, &qword_10083C560);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_1007960C4();

  sub_10067867C();
  sub_100005920(&qword_100AF1508, &qword_100AF1500, &qword_10083C560, &protocol conformance descriptor for _NLGRepresentationEntity<A>);
  sub_1007960B4();
  return (*(v5 + 8))(v7, v4);
}

void (*sub_100679DD4(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100795DE4();
  return sub_100220080;
}

void (*sub_100679E48(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100795DE4();
  return sub_1004EDCC4;
}

unint64_t sub_100679EE4()
{
  result = qword_100AF1398;
  if (!qword_100AF1398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF1398);
  }

  return result;
}

unint64_t sub_100679F3C()
{
  result = qword_100AF13A0;
  if (!qword_100AF13A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF13A0);
  }

  return result;
}

uint64_t sub_10067A04C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100009A34;

  return sub_1006791F8(a1, v5, v4);
}

uint64_t sub_10067A0F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100683B98();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10067A140()
{
  result = qword_100AF13A8;
  if (!qword_100AF13A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF13A8);
  }

  return result;
}

uint64_t sub_10067A228()
{
  if (qword_100AD19E8 != -1)
  {
    swift_once();
  }

  v1 = sub_10079ACE4();
  sub_100008B98(v1, qword_100AF1240);
  v2 = sub_10079ACC4();
  v3 = sub_1007A29A4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Not Implemented, this API is going away", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10067A340()
{
  v0 = sub_100796814();
  sub_100009A38(v0, qword_100B23838);
  sub_100008B98(v0, qword_100B23838);
  return sub_1007967E4();
}

uint64_t sub_10067A3A4()
{
  v0 = sub_1001F1160(&qword_100AF1510, &qword_10083C590);
  sub_100009A38(v0, qword_100B23850);
  v1 = sub_100008B98(v0, qword_100B23850);
  sub_100796024();
  v2 = sub_100796034();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10067A464()
{
  result = swift_getKeyPath();
  qword_100B23868 = result;
  return result;
}

uint64_t sub_10067A494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[121] = a3;
  v3[120] = a2;
  v3[119] = a1;
  sub_1001F1160(&qword_100AF14E0, &qword_10083C538);
  v3[122] = swift_task_alloc();
  sub_1001F1160(&qword_100AF14E8, &qword_10083C540);
  v3[123] = swift_task_alloc();
  sub_1001F1160(&qword_100AF1538, &qword_10083C670);
  v3[124] = swift_task_alloc();
  v4 = sub_100795CE4();
  v3[125] = v4;
  v3[126] = *(v4 - 8);
  v3[127] = swift_task_alloc();
  v5 = sub_1001F1160(&qword_100AF14F8, &unk_10083C550);
  v3[128] = v5;
  v3[129] = *(v5 - 8);
  v3[130] = swift_task_alloc();
  v3[131] = swift_task_alloc();

  return _swift_task_switch(sub_10067A678, 0, 0);
}

uint64_t sub_10067A678()
{
  sub_100795DF4();
  v1 = *(v0 + 168);
  v2 = *(v0 + 200);
  *(v0 + 288) = *(v0 + 184);
  *(v0 + 304) = v2;
  *(v0 + 320) = *(v0 + 216);
  v3 = *(v0 + 136);
  *(v0 + 224) = *(v0 + 120);
  *(v0 + 240) = v3;
  *(v0 + 256) = *(v0 + 152);
  *(v0 + 272) = v1;
  v4 = swift_task_alloc();
  *(v0 + 1056) = v4;
  v5 = sub_100408CA8();
  *v4 = v0;
  v4[1] = sub_10067A774;
  v6 = *(v0 + 1048);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 224, sub_100685674, 0, &type metadata for BookSettingsEntity, v5);
}

uint64_t sub_10067A774()
{

  return _swift_task_switch(sub_10067A870, 0, 0);
}

uint64_t sub_10067A870()
{
  sub_100795DF4();
  v1 = *(v0 + 96);
  *(v0 + 392) = *(v0 + 80);
  *(v0 + 408) = v1;
  *(v0 + 424) = *(v0 + 112);
  v2 = *(v0 + 32);
  *(v0 + 328) = *(v0 + 16);
  *(v0 + 344) = v2;
  v3 = *(v0 + 64);
  *(v0 + 360) = *(v0 + 48);
  *(v0 + 376) = v3;
  sub_100795DF4();
  if (qword_100AD1A48 != -1)
  {
    swift_once();
  }

  v4 = qword_100B23868;
  *(v0 + 1064) = qword_100B23868;

  v5 = swift_task_alloc();
  *(v0 + 1072) = v5;
  v6 = sub_100005920(&qword_100AF1540, &qword_100AF1548, &qword_10083C678, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v5 = v0;
  v5[1] = sub_10067A9D4;

  return AppEntity._setValue<A, B, C>(_:for:)(v6, v4, &type metadata for StubBookFontSize, v6);
}

uint64_t sub_10067A9D4()
{
  v2 = *v1;
  v3 = *v1 + 328;
  *(*v1 + 1080) = v0;

  v5 = *(v3 + 16);
  v4 = *(v3 + 32);
  if (v0)
  {
    *(v2 + 432) = *v3;
    *(v2 + 448) = v5;
    *(v2 + 464) = v4;
    v7 = *(v3 + 64);
    v6 = *(v3 + 80);
    v8 = *(v3 + 48);
    *(v2 + 528) = *(v3 + 96);
    *(v2 + 496) = v7;
    *(v2 + 512) = v6;
    *(v2 + 480) = v8;
    sub_10043F470(v2 + 432);

    v9 = sub_100685664;
  }

  else
  {
    *(v2 + 744) = *v3;
    *(v2 + 760) = v5;
    *(v2 + 776) = v4;
    v11 = *(v3 + 64);
    v10 = *(v3 + 80);
    v12 = *(v3 + 48);
    *(v2 + 840) = *(v3 + 96);
    *(v2 + 808) = v11;
    *(v2 + 824) = v10;
    *(v2 + 792) = v12;
    sub_10043F470(v2 + 744);

    v9 = sub_10067AB6C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10067AB6C()
{
  v1 = *(v0 + 1032);
  v14 = *(v0 + 1024);
  v15 = *(v0 + 1040);
  v16 = *(v0 + 1016);
  v17 = *(v0 + 1048);
  v18 = *(v0 + 1008);
  v19 = *(v0 + 1000);
  v2 = *(v0 + 984);
  v3 = *(v0 + 976);
  sub_100795DF4();
  v4 = *(v0 + 720);
  *(v0 + 912) = *(v0 + 704);
  *(v0 + 928) = v4;
  *(v0 + 944) = *(v0 + 736);
  v5 = *(v0 + 656);
  *(v0 + 848) = *(v0 + 640);
  *(v0 + 864) = v5;
  v6 = *(v0 + 688);
  *(v0 + 880) = *(v0 + 672);
  *(v0 + 896) = v6;
  v7 = sub_1007962D4();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  v8 = sub_100796324();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  sub_10067A140();
  sub_10067867C();
  sub_100795CB4();
  (*(v1 + 16))(v15, v17, v14);
  sub_100795CD4();
  sub_100795D04();
  (*(v18 + 8))(v16, v19);
  v9 = *(v0 + 928);
  *(v0 + 600) = *(v0 + 912);
  *(v0 + 616) = v9;
  *(v0 + 632) = *(v0 + 944);
  v10 = *(v0 + 864);
  *(v0 + 536) = *(v0 + 848);
  *(v0 + 552) = v10;
  v11 = *(v0 + 896);
  *(v0 + 568) = *(v0 + 880);
  *(v0 + 584) = v11;
  sub_10043F470(v0 + 536);
  (*(v1 + 8))(v17, v14);

  v12 = *(v0 + 8);

  return v12();
}

void (*sub_10067AE30(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100795DE4();
  return sub_1004EDCC4;
}

void (*sub_10067AEA4(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100795DE4();
  return sub_1004EDCC4;
}

unint64_t sub_10067AF40()
{
  result = qword_100AF13C0;
  if (!qword_100AF13C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF13C0);
  }

  return result;
}

unint64_t sub_10067AF98()
{
  result = qword_100AF13C8;
  if (!qword_100AF13C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF13C8);
  }

  return result;
}

uint64_t sub_10067B0A8@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1001F1160(&qword_100AF1510, &qword_10083C590);
  v7 = sub_100008B98(v6, a2);
  return sub_1000077D8(v7, a4, &qword_100AF1510, &qword_10083C590);
}

uint64_t sub_10067B124(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100009A34;

  return sub_10067A494(a1, v5, v4);
}

uint64_t sub_10067B1D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100683FB4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10067B218()
{
  result = qword_100AF13D0;
  if (!qword_100AF13D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF13D0);
  }

  return result;
}

uint64_t sub_10067B2E8()
{
  v0 = sub_100796814();
  sub_100009A38(v0, qword_100B23870);
  sub_100008B98(v0, qword_100B23870);
  return sub_1007967E4();
}

uint64_t sub_10067B34C()
{
  v0 = sub_1001F1160(&qword_100AF1510, &qword_10083C590);
  sub_100009A38(v0, qword_100B23888);
  v1 = sub_100008B98(v0, qword_100B23888);
  sub_100796024();
  v2 = sub_100796034();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10067B40C()
{
  result = swift_getKeyPath();
  qword_100B238A0 = result;
  return result;
}

uint64_t sub_10067B434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[121] = a3;
  v3[120] = a2;
  v3[119] = a1;
  sub_1001F1160(&qword_100AF14E0, &qword_10083C538);
  v3[122] = swift_task_alloc();
  sub_1001F1160(&qword_100AF14E8, &qword_10083C540);
  v3[123] = swift_task_alloc();
  sub_1001F1160(&qword_100AF1528, &unk_10083C628);
  v3[124] = swift_task_alloc();
  v4 = sub_100795CE4();
  v3[125] = v4;
  v3[126] = *(v4 - 8);
  v3[127] = swift_task_alloc();
  v5 = sub_1001F1160(&qword_100AF14F8, &unk_10083C550);
  v3[128] = v5;
  v3[129] = *(v5 - 8);
  v3[130] = swift_task_alloc();
  v3[131] = swift_task_alloc();

  return _swift_task_switch(sub_10067B618, 0, 0);
}

uint64_t sub_10067B618()
{
  sub_100795DF4();
  v1 = *(v0 + 168);
  v2 = *(v0 + 200);
  *(v0 + 288) = *(v0 + 184);
  *(v0 + 304) = v2;
  *(v0 + 320) = *(v0 + 216);
  v3 = *(v0 + 136);
  *(v0 + 224) = *(v0 + 120);
  *(v0 + 240) = v3;
  *(v0 + 256) = *(v0 + 152);
  *(v0 + 272) = v1;
  v4 = swift_task_alloc();
  *(v0 + 1056) = v4;
  v5 = sub_100408CA8();
  *v4 = v0;
  v4[1] = sub_10067B714;
  v6 = *(v0 + 1048);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 224, sub_100685678, 0, &type metadata for BookSettingsEntity, v5);
}

uint64_t sub_10067B714()
{

  return _swift_task_switch(sub_10067B810, 0, 0);
}

uint64_t sub_10067B810()
{
  sub_100795DF4();
  v1 = *(v0 + 96);
  *(v0 + 392) = *(v0 + 80);
  *(v0 + 408) = v1;
  *(v0 + 424) = *(v0 + 112);
  v2 = *(v0 + 32);
  *(v0 + 328) = *(v0 + 16);
  *(v0 + 344) = v2;
  v3 = *(v0 + 64);
  *(v0 + 360) = *(v0 + 48);
  *(v0 + 376) = v3;
  sub_100795DF4();
  if (qword_100AD1A60 != -1)
  {
    swift_once();
  }

  v4 = qword_100B238A0;
  *(v0 + 1064) = qword_100B238A0;

  v5 = swift_task_alloc();
  *(v0 + 1072) = v5;
  v6 = sub_100005920(&qword_100AE3820, &qword_100AE3828, &unk_100825E60, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v5 = v0;
  v5[1] = sub_10067B97C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 1088, v4, &type metadata for BookThemeSetting, v6);
}

uint64_t sub_10067B97C()
{
  v2 = *v1;
  v3 = *v1 + 328;
  *(*v1 + 1080) = v0;

  v5 = *(v3 + 16);
  v4 = *(v3 + 32);
  if (v0)
  {
    *(v2 + 432) = *v3;
    *(v2 + 448) = v5;
    *(v2 + 464) = v4;
    v7 = *(v3 + 64);
    v6 = *(v3 + 80);
    v8 = *(v3 + 48);
    *(v2 + 528) = *(v3 + 96);
    *(v2 + 496) = v7;
    *(v2 + 512) = v6;
    *(v2 + 480) = v8;
    sub_10043F470(v2 + 432);

    v9 = sub_100679B94;
  }

  else
  {
    *(v2 + 744) = *v3;
    *(v2 + 760) = v5;
    *(v2 + 776) = v4;
    v11 = *(v3 + 64);
    v10 = *(v3 + 80);
    v12 = *(v3 + 48);
    *(v2 + 840) = *(v3 + 96);
    *(v2 + 808) = v11;
    *(v2 + 824) = v10;
    *(v2 + 792) = v12;
    sub_10043F470(v2 + 744);

    v9 = sub_10067BB14;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10067BB14()
{
  v1 = *(v0 + 1032);
  v14 = *(v0 + 1024);
  v15 = *(v0 + 1040);
  v16 = *(v0 + 1016);
  v17 = *(v0 + 1048);
  v18 = *(v0 + 1008);
  v19 = *(v0 + 1000);
  v2 = *(v0 + 984);
  v3 = *(v0 + 976);
  sub_100795DF4();
  v4 = *(v0 + 720);
  *(v0 + 912) = *(v0 + 704);
  *(v0 + 928) = v4;
  *(v0 + 944) = *(v0 + 736);
  v5 = *(v0 + 656);
  *(v0 + 848) = *(v0 + 640);
  *(v0 + 864) = v5;
  v6 = *(v0 + 688);
  *(v0 + 880) = *(v0 + 672);
  *(v0 + 896) = v6;
  v7 = sub_1007962D4();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  v8 = sub_100796324();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  sub_10067B218();
  sub_10067867C();
  sub_100795CB4();
  (*(v1 + 16))(v15, v17, v14);
  sub_100795CD4();
  sub_100795D04();
  (*(v18 + 8))(v16, v19);
  v9 = *(v0 + 928);
  *(v0 + 600) = *(v0 + 912);
  *(v0 + 616) = v9;
  *(v0 + 632) = *(v0 + 944);
  v10 = *(v0 + 864);
  *(v0 + 536) = *(v0 + 848);
  *(v0 + 552) = v10;
  v11 = *(v0 + 896);
  *(v0 + 568) = *(v0 + 880);
  *(v0 + 584) = v11;
  sub_10043F470(v0 + 536);
  (*(v1 + 8))(v17, v14);

  v12 = *(v0 + 8);

  return v12();
}

void (*sub_10067BDD8(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100795DE4();
  return sub_1004EDCC4;
}

void (*sub_10067BE4C(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100795DE4();
  return sub_1004EDCC4;
}

unint64_t sub_10067BEE8()
{
  result = qword_100AF13E8;
  if (!qword_100AF13E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF13E8);
  }

  return result;
}

unint64_t sub_10067BF40()
{
  result = qword_100AF13F0;
  if (!qword_100AF13F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF13F0);
  }

  return result;
}

uint64_t sub_10067C050(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100009A34;

  return sub_10067B434(a1, v5, v4);
}

uint64_t sub_10067C0FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1006843DC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10067C144()
{
  result = qword_100AF13F8;
  if (!qword_100AF13F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF13F8);
  }

  return result;
}

uint64_t sub_10067C1DC(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for _BookReaderInteractorState(0);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10067C26C, 0, 0);
}

uint64_t sub_10067C26C()
{
  v0[4] = objc_opt_self();
  v0[5] = sub_1007A26F4();
  v0[6] = sub_1007A26E4();
  v2 = sub_1007A2694();

  return _swift_task_switch(sub_10067C314, v2, v1);
}

uint64_t sub_10067C314()
{
  v1 = *(v0 + 32);

  *(v0 + 56) = [v1 delegate];

  return _swift_task_switch(sub_10067C39C, 0, 0);
}

uint64_t sub_10067C39C(uint64_t a1)
{
  *(v1 + 64) = sub_1007A26E4();
  v3 = sub_1007A2694();

  return _swift_task_switch(sub_10067C428, v3, v2);
}

uint64_t sub_10067C428()
{
  v1 = *(v0 + 56);

  *(v0 + 72) = [v1 menuController];

  return _swift_task_switch(sub_10067C4B0, 0, 0);
}

uint64_t sub_10067C4B0(uint64_t a1)
{
  *(v1 + 80) = sub_1007A26E4();
  v3 = sub_1007A2694();

  return _swift_task_switch(sub_10067C53C, v3, v2);
}

uint64_t sub_10067C53C()
{
  v1 = *(v0 + 72);

  *(v0 + 88) = sub_1005C99B8();

  return _swift_task_switch(sub_10067C5B0, 0, 0);
}

uint64_t sub_10067C5B0(uint64_t a1)
{
  if (v1[11])
  {
    v1[12] = sub_1007A26E4();
    v3 = sub_1007A2694();

    return _swift_task_switch(sub_10067C6BC, v3, v2);
  }

  else
  {
    sub_1001FE9A0();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();

    v5 = v1[1];

    return v5();
  }
}

uint64_t sub_10067C6BC()
{

  *(v0 + 104) = swift_unknownObjectWeakLoadStrong();

  return _swift_task_switch(sub_10067C73C, 0, 0);
}

uint64_t sub_10067C73C(uint64_t a1)
{
  if (*(v1 + 104))
  {
    *(v1 + 112) = sub_1007A26E4();
    v3 = sub_1007A2694();

    return _swift_task_switch(sub_10067C850, v3, v2);
  }

  else
  {

    sub_1001FE9A0();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();

    v5 = *(v1 + 8);

    return v5();
  }
}

uint64_t sub_10067C850()
{
  v1 = *(v0 + 24);

  sub_1004A79C8(v1);

  return _swift_task_switch(sub_10067C8D0, 0, 0);
}

uint64_t sub_10067C8D0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  LOBYTE(v1) = *(v2 + 2);
  sub_10029819C(v2);
  **(v0 + 16) = v1 + 2;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10067C95C(uint64_t a1, _BYTE *a2)
{
  sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  *(v2 + 96) = swift_task_alloc();
  *(v2 + 192) = *a2;

  return _swift_task_switch(sub_10067CA00, 0, 0);
}

uint64_t sub_10067CA00()
{
  v0[13] = objc_opt_self();
  v0[14] = sub_1007A26F4();
  v0[15] = sub_1007A26E4();
  v2 = sub_1007A2694();

  return _swift_task_switch(sub_10067CAA8, v2, v1);
}

uint64_t sub_10067CAA8()
{
  v1 = *(v0 + 104);

  *(v0 + 128) = [v1 delegate];

  return _swift_task_switch(sub_10067CB30, 0, 0);
}

uint64_t sub_10067CB30(uint64_t a1)
{
  *(v1 + 136) = sub_1007A26E4();
  v3 = sub_1007A2694();

  return _swift_task_switch(sub_10067CBBC, v3, v2);
}

uint64_t sub_10067CBBC()
{
  v1 = *(v0 + 128);

  *(v0 + 144) = [v1 menuController];

  return _swift_task_switch(sub_10067CC44, 0, 0);
}

uint64_t sub_10067CC44(uint64_t a1)
{
  *(v1 + 152) = sub_1007A26E4();
  v3 = sub_1007A2694();

  return _swift_task_switch(sub_10067CCD0, v3, v2);
}

uint64_t sub_10067CCD0()
{
  v1 = *(v0 + 144);

  *(v0 + 160) = sub_1005C99B8();

  return _swift_task_switch(sub_10067CD44, 0, 0);
}

uint64_t sub_10067CD44()
{
  v1 = *(v0 + 160);
  if (v1)
  {
    v2 = *(v0 + 192);
    if (*(v0 + 192))
    {
      if (v2 == 1)
      {
        v3 = v1;
        *(v0 + 168) = sub_1007A26E4();
        v4 = sub_1007A2694();
        v6 = v5;
        v7 = sub_10067CF20;
      }

      else
      {
        v13 = type metadata accessor for ThemeIDProvider();
        v14 = objc_allocWithZone(v13);
        v14[OBJC_IVAR____TtC5Books15ThemeIDProvider_setting] = v2;
        *(v0 + 80) = v14;
        *(v0 + 88) = v13;
        v15 = objc_msgSendSuper2((v0 + 80), "init");
        *(v0 + 40) = v13;
        *(v0 + 16) = v15;
        *(v0 + 184) = sub_1007A26E4();
        v4 = sub_1007A2694();
        v6 = v16;
        v7 = sub_10067D100;
      }
    }

    else
    {
      v11 = v1;
      *(v0 + 176) = sub_1007A26E4();
      v4 = sub_1007A2694();
      v6 = v12;
      v7 = sub_10067CFD8;
    }

    return _swift_task_switch(v7, v4, v6);
  }

  else
  {
    sub_1001FE9A0();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_10067CF20()
{

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1007A0FA4();
    swift_unknownObjectRelease();
  }

  return _swift_task_switch(sub_100685690, 0, 0);
}

uint64_t sub_10067CFD8()
{

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1007A0FA4();
    swift_unknownObjectRelease();
  }

  return _swift_task_switch(sub_10067D094, 0, 0);
}

uint64_t sub_10067D094()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10067D100()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 96);

  v3 = sub_1007A2744();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  sub_1000077D8(v0 + 16, v0 + 48, &unk_100AD5B40, &unk_100811300);
  v4 = v1;
  v5 = sub_1007A26E4();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = &protocol witness table for MainActor;
  *(v6 + 32) = v4;
  v7 = *(v0 + 64);
  *(v6 + 40) = *(v0 + 48);
  *(v6 + 56) = v7;
  sub_1003457A0(0, 0, v2, &unk_10083C750, v6);

  sub_100007840(v0 + 16, &unk_100AD5B40, &unk_100811300);

  return _swift_task_switch(sub_100685690, 0, 0);
}

uint64_t sub_10067D264()
{
  v0 = sub_100796814();
  sub_100009A38(v0, qword_100B238A8);
  sub_100008B98(v0, qword_100B238A8);
  return sub_1007967E4();
}

uint64_t sub_10067D2C8()
{
  v0 = sub_1001F1160(&qword_100AF1510, &qword_10083C590);
  sub_100009A38(v0, qword_100B238C0);
  v1 = sub_100008B98(v0, qword_100B238C0);
  sub_100796024();
  v2 = sub_100796034();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10067D388()
{
  result = swift_getKeyPath();
  qword_100B238D8 = result;
  return result;
}

uint64_t sub_10067D3B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[121] = a3;
  v3[120] = a2;
  v3[119] = a1;
  sub_1001F1160(&qword_100AF14E0, &qword_10083C538);
  v3[122] = swift_task_alloc();
  sub_1001F1160(&qword_100AF14E8, &qword_10083C540);
  v3[123] = swift_task_alloc();
  sub_1001F1160(&qword_100AF1520, &unk_10083C5E0);
  v3[124] = swift_task_alloc();
  v4 = sub_100795CE4();
  v3[125] = v4;
  v3[126] = *(v4 - 8);
  v3[127] = swift_task_alloc();
  v5 = sub_1001F1160(&qword_100AF14F8, &unk_10083C550);
  v3[128] = v5;
  v3[129] = *(v5 - 8);
  v3[130] = swift_task_alloc();
  v3[131] = swift_task_alloc();

  return _swift_task_switch(sub_10067D594, 0, 0);
}

uint64_t sub_10067D594()
{
  sub_100795DF4();
  v1 = *(v0 + 168);
  v2 = *(v0 + 200);
  *(v0 + 288) = *(v0 + 184);
  *(v0 + 304) = v2;
  *(v0 + 320) = *(v0 + 216);
  v3 = *(v0 + 136);
  *(v0 + 224) = *(v0 + 120);
  *(v0 + 240) = v3;
  *(v0 + 256) = *(v0 + 152);
  *(v0 + 272) = v1;
  v4 = swift_task_alloc();
  *(v0 + 1056) = v4;
  v5 = sub_100408CA8();
  *v4 = v0;
  v4[1] = sub_10067D690;
  v6 = *(v0 + 1048);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 224, sub_10068567C, 0, &type metadata for BookSettingsEntity, v5);
}

uint64_t sub_10067D690()
{

  return _swift_task_switch(sub_10067D78C, 0, 0);
}

uint64_t sub_10067D78C()
{
  sub_100795DF4();
  v1 = *(v0 + 96);
  *(v0 + 392) = *(v0 + 80);
  *(v0 + 408) = v1;
  *(v0 + 424) = *(v0 + 112);
  v2 = *(v0 + 32);
  *(v0 + 328) = *(v0 + 16);
  *(v0 + 344) = v2;
  v3 = *(v0 + 64);
  *(v0 + 360) = *(v0 + 48);
  *(v0 + 376) = v3;
  sub_100795DF4();
  *(v0 + 1089) = *(v0 + 1088);
  if (qword_100AD1A78 != -1)
  {
    swift_once();
  }

  v4 = qword_100B238D8;
  *(v0 + 1064) = qword_100B238D8;

  v5 = swift_task_alloc();
  *(v0 + 1072) = v5;
  v6 = sub_100005920(&qword_100AE3810, &qword_100AE3818, &qword_100825E30, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v5 = v0;
  v5[1] = sub_10067D900;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 1089, v4, &type metadata for BookPageNavigationSetting, v6);
}

uint64_t sub_10067D900()
{
  v2 = *v1;
  v3 = *v1 + 328;
  *(*v1 + 1080) = v0;

  v5 = *(v3 + 16);
  v4 = *(v3 + 32);
  if (v0)
  {
    *(v2 + 432) = *v3;
    *(v2 + 448) = v5;
    *(v2 + 464) = v4;
    v7 = *(v3 + 64);
    v6 = *(v3 + 80);
    v8 = *(v3 + 48);
    *(v2 + 528) = *(v3 + 96);
    *(v2 + 496) = v7;
    *(v2 + 512) = v6;
    *(v2 + 480) = v8;
    sub_10043F470(v2 + 432);

    v9 = sub_100685664;
  }

  else
  {
    *(v2 + 744) = *v3;
    *(v2 + 760) = v5;
    *(v2 + 776) = v4;
    v11 = *(v3 + 64);
    v10 = *(v3 + 80);
    v12 = *(v3 + 48);
    *(v2 + 840) = *(v3 + 96);
    *(v2 + 808) = v11;
    *(v2 + 824) = v10;
    *(v2 + 792) = v12;
    sub_10043F470(v2 + 744);

    v9 = sub_10067DA98;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10067DA98()
{
  v1 = *(v0 + 1032);
  v14 = *(v0 + 1024);
  v15 = *(v0 + 1040);
  v16 = *(v0 + 1016);
  v17 = *(v0 + 1048);
  v18 = *(v0 + 1008);
  v19 = *(v0 + 1000);
  v2 = *(v0 + 984);
  v3 = *(v0 + 976);
  sub_100795DF4();
  v4 = *(v0 + 720);
  *(v0 + 912) = *(v0 + 704);
  *(v0 + 928) = v4;
  *(v0 + 944) = *(v0 + 736);
  v5 = *(v0 + 656);
  *(v0 + 848) = *(v0 + 640);
  *(v0 + 864) = v5;
  v6 = *(v0 + 688);
  *(v0 + 880) = *(v0 + 672);
  *(v0 + 896) = v6;
  v7 = sub_1007962D4();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  v8 = sub_100796324();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  sub_10067C144();
  sub_10067867C();
  sub_100795CB4();
  (*(v1 + 16))(v15, v17, v14);
  sub_100795CD4();
  sub_100795D04();
  (*(v18 + 8))(v16, v19);
  v9 = *(v0 + 928);
  *(v0 + 600) = *(v0 + 912);
  *(v0 + 616) = v9;
  *(v0 + 632) = *(v0 + 944);
  v10 = *(v0 + 864);
  *(v0 + 536) = *(v0 + 848);
  *(v0 + 552) = v10;
  v11 = *(v0 + 896);
  *(v0 + 568) = *(v0 + 880);
  *(v0 + 584) = v11;
  sub_10043F470(v0 + 536);
  (*(v1 + 8))(v17, v14);

  v12 = *(v0 + 8);

  return v12();
}

void (*sub_10067DD5C(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100795DE4();
  return sub_1004EDCC4;
}

void (*sub_10067DDD0(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100795DE4();
  return sub_1004EDCC4;
}

unint64_t sub_10067DE6C()
{
  result = qword_100AF1410;
  if (!qword_100AF1410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF1410);
  }

  return result;
}

unint64_t sub_10067DEC4()
{
  result = qword_100AF1418;
  if (!qword_100AF1418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF1418);
  }

  return result;
}

uint64_t sub_10067DFD4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100009A34;

  return sub_10067D3B0(a1, v5, v4);
}

uint64_t sub_10067E080@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100684804();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10067E0C8()
{
  result = qword_100AF1420;
  if (!qword_100AF1420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF1420);
  }

  return result;
}

uint64_t sub_10067E160(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for _BookReaderInteractorState(0);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10067E1F0, 0, 0);
}

uint64_t sub_10067E1F0()
{
  v0[4] = objc_opt_self();
  v0[5] = sub_1007A26F4();
  v0[6] = sub_1007A26E4();
  v2 = sub_1007A2694();

  return _swift_task_switch(sub_10067E298, v2, v1);
}

uint64_t sub_10067E298()
{
  v1 = *(v0 + 32);

  *(v0 + 56) = [v1 delegate];

  return _swift_task_switch(sub_10067E320, 0, 0);
}

uint64_t sub_10067E320(uint64_t a1)
{
  *(v1 + 64) = sub_1007A26E4();
  v3 = sub_1007A2694();

  return _swift_task_switch(sub_10067E3AC, v3, v2);
}

uint64_t sub_10067E3AC()
{
  v1 = *(v0 + 56);

  *(v0 + 72) = [v1 menuController];

  return _swift_task_switch(sub_10067E434, 0, 0);
}

uint64_t sub_10067E434(uint64_t a1)
{
  *(v1 + 80) = sub_1007A26E4();
  v3 = sub_1007A2694();

  return _swift_task_switch(sub_10067E4C0, v3, v2);
}

uint64_t sub_10067E4C0()
{
  v1 = *(v0 + 72);

  *(v0 + 88) = sub_1005C99B8();

  return _swift_task_switch(sub_10067E534, 0, 0);
}

uint64_t sub_10067E534(uint64_t a1)
{
  if (v1[11])
  {
    v1[12] = sub_1007A26E4();
    v3 = sub_1007A2694();

    return _swift_task_switch(sub_10067E640, v3, v2);
  }

  else
  {
    sub_1001FE9A0();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();

    v5 = v1[1];

    return v5();
  }
}

uint64_t sub_10067E640()
{

  *(v0 + 104) = swift_unknownObjectWeakLoadStrong();

  return _swift_task_switch(sub_10067E6C0, 0, 0);
}

uint64_t sub_10067E6C0(uint64_t a1)
{
  if (*(v1 + 104))
  {
    *(v1 + 112) = sub_1007A26E4();
    v3 = sub_1007A2694();

    return _swift_task_switch(sub_10067E7D4, v3, v2);
  }

  else
  {

    sub_1001FE9A0();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();

    v5 = *(v1 + 8);

    return v5();
  }
}

uint64_t sub_10067E7D4()
{
  v1 = *(v0 + 24);

  sub_1004A79C8(v1);

  return _swift_task_switch(sub_10067E854, 0, 0);
}

uint64_t sub_10067E854()
{
  v1 = sub_1007A0A14();
  v3 = v2;
  if (v1 == sub_1007A0A14() && v3 == v4)
  {

    v7 = 0;
  }

  else
  {
    v6 = sub_1007A3AB4();

    v7 = v6 ^ 1;
  }

  v8 = v0[11];
  v10 = v0[2];
  v9 = v0[3];
  swift_unknownObjectRelease();

  sub_10029819C(v9);
  *v10 = v7 & 1;

  v11 = v0[1];

  return v11();
}

uint64_t sub_10067E958(uint64_t a1, _BYTE *a2)
{
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  v4 = *(a1 + 64);
  *(v2 + 56) = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 72) = v4;
  *(v2 + 88) = *(a1 + 80);
  *(v2 + 104) = *(a1 + 96);
  *(v2 + 192) = *a2;
  return _swift_task_switch(sub_10067E9A8, 0, 0);
}

uint64_t sub_10067E9A8()
{
  v0[14] = objc_opt_self();
  v0[15] = sub_1007A26F4();
  v0[16] = sub_1007A26E4();
  v2 = sub_1007A2694();

  return _swift_task_switch(sub_10067EA50, v2, v1);
}

uint64_t sub_10067EA50()
{
  v1 = *(v0 + 112);

  *(v0 + 136) = [v1 delegate];

  return _swift_task_switch(sub_10067EAD8, 0, 0);
}

uint64_t sub_10067EAD8(uint64_t a1)
{
  *(v1 + 144) = sub_1007A26E4();
  v3 = sub_1007A2694();

  return _swift_task_switch(sub_10067EB64, v3, v2);
}

uint64_t sub_10067EB64()
{
  v1 = *(v0 + 136);

  *(v0 + 152) = [v1 menuController];

  return _swift_task_switch(sub_10067EBEC, 0, 0);
}

uint64_t sub_10067EBEC(uint64_t a1)
{
  *(v1 + 160) = sub_1007A26E4();
  v3 = sub_1007A2694();

  return _swift_task_switch(sub_10067EC78, v3, v2);
}

uint64_t sub_10067EC78()
{
  v1 = *(v0 + 152);

  *(v0 + 168) = sub_1005C99B8();

  return _swift_task_switch(sub_10067ECEC, 0, 0);
}

uint64_t sub_10067ECEC(uint64_t a1)
{
  if (*(v1 + 168))
  {
    if (*(v1 + 192))
    {
      v2 = *(v1 + 32);
      v3 = *(v1 + 16);
      swift_unknownObjectRetain();
      v4 = v2;

      *(v1 + 184) = sub_1007A26E4();
      v5 = sub_1007A2694();
      v7 = v6;
      v8 = sub_10067EF94;
    }

    else
    {
      *(v1 + 176) = sub_1007A26E4();
      v5 = sub_1007A2694();
      v7 = v12;
      v8 = sub_10067EEC8;
    }

    return _swift_task_switch(v8, v5, v7);
  }

  else
  {
    sub_1001FE9A0();
    swift_allocError();
    *v9 = 0;
    swift_willThrow();
    v10 = *(v1 + 8);

    return v10();
  }
}

uint64_t sub_10067EEC8()
{

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_1007A1194();
    swift_unknownObjectRelease();
  }

  return _swift_task_switch(sub_100685694, 0, 0);
}

uint64_t sub_10067EF94()
{

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    if (sub_1007A13B4() == 4)
    {
      sub_1007A09E4();
    }

    v3 = *(v0 + 32);
    v1 = *(v0 + 16);
    sub_1007A1194();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = *(v0 + 32);
    v1 = *(v0 + 16);
  }

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_10067F144, 0, 0);
}

uint64_t sub_10067F144()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10067F1A8()
{
  v0 = sub_100796814();
  sub_100009A38(v0, qword_100B238E0);
  sub_100008B98(v0, qword_100B238E0);
  return sub_1007967E4();
}

uint64_t sub_10067F20C()
{
  v0 = sub_1001F1160(&qword_100AF1510, &qword_10083C590);
  sub_100009A38(v0, qword_100B238F8);
  v1 = sub_100008B98(v0, qword_100B238F8);
  sub_100796024();
  v2 = sub_100796034();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10067F2CC()
{
  result = swift_getKeyPath();
  qword_100B23910 = result;
  return result;
}

uint64_t sub_10067F2F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[121] = a3;
  v3[120] = a2;
  v3[119] = a1;
  sub_1001F1160(&qword_100AF14E0, &qword_10083C538);
  v3[122] = swift_task_alloc();
  sub_1001F1160(&qword_100AF14E8, &qword_10083C540);
  v3[123] = swift_task_alloc();
  sub_1001F1160(&qword_100AF1518, &qword_10083C5A0);
  v3[124] = swift_task_alloc();
  v4 = sub_100795CE4();
  v3[125] = v4;
  v3[126] = *(v4 - 8);
  v3[127] = swift_task_alloc();
  v5 = sub_1001F1160(&qword_100AF14F8, &unk_10083C550);
  v3[128] = v5;
  v3[129] = *(v5 - 8);
  v3[130] = swift_task_alloc();
  v3[131] = swift_task_alloc();

  return _swift_task_switch(sub_10067F4D8, 0, 0);
}

uint64_t sub_10067F4D8()
{
  sub_100795DF4();
  v1 = *(v0 + 168);
  v2 = *(v0 + 200);
  *(v0 + 288) = *(v0 + 184);
  *(v0 + 304) = v2;
  *(v0 + 320) = *(v0 + 216);
  v3 = *(v0 + 136);
  *(v0 + 224) = *(v0 + 120);
  *(v0 + 240) = v3;
  *(v0 + 256) = *(v0 + 152);
  *(v0 + 272) = v1;
  v4 = swift_task_alloc();
  *(v0 + 1056) = v4;
  v5 = sub_100408CA8();
  *v4 = v0;
  v4[1] = sub_10067F5D4;
  v6 = *(v0 + 1048);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 224, sub_100685680, 0, &type metadata for BookSettingsEntity, v5);
}

uint64_t sub_10067F5D4()
{

  return _swift_task_switch(sub_10067F6D0, 0, 0);
}

uint64_t sub_10067F6D0()
{
  sub_100795DF4();
  v1 = *(v0 + 96);
  *(v0 + 392) = *(v0 + 80);
  *(v0 + 408) = v1;
  *(v0 + 424) = *(v0 + 112);
  v2 = *(v0 + 32);
  *(v0 + 328) = *(v0 + 16);
  *(v0 + 344) = v2;
  v3 = *(v0 + 64);
  *(v0 + 360) = *(v0 + 48);
  *(v0 + 376) = v3;
  sub_100795DF4();
  *(v0 + 1089) = *(v0 + 1088);
  if (qword_100AD1A90 != -1)
  {
    swift_once();
  }

  v4 = qword_100B23910;
  *(v0 + 1064) = qword_100B23910;

  v5 = swift_task_alloc();
  *(v0 + 1072) = v5;
  v6 = sub_100005920(&qword_100AE3800, &qword_100AE3808, &qword_100825DD8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v5 = v0;
  v5[1] = sub_10067F844;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 1089, v4, &type metadata for Bool, v6);
}

uint64_t sub_10067F844()
{
  v2 = *v1;
  v3 = *v1 + 328;
  *(*v1 + 1080) = v0;

  v5 = *(v3 + 16);
  v4 = *(v3 + 32);
  if (v0)
  {
    *(v2 + 432) = *v3;
    *(v2 + 448) = v5;
    *(v2 + 464) = v4;
    v7 = *(v3 + 64);
    v6 = *(v3 + 80);
    v8 = *(v3 + 48);
    *(v2 + 528) = *(v3 + 96);
    *(v2 + 496) = v7;
    *(v2 + 512) = v6;
    *(v2 + 480) = v8;
    sub_10043F470(v2 + 432);

    v9 = sub_100679B94;
  }

  else
  {
    *(v2 + 744) = *v3;
    *(v2 + 760) = v5;
    *(v2 + 776) = v4;
    v11 = *(v3 + 64);
    v10 = *(v3 + 80);
    v12 = *(v3 + 48);
    *(v2 + 840) = *(v3 + 96);
    *(v2 + 808) = v11;
    *(v2 + 824) = v10;
    *(v2 + 792) = v12;
    sub_10043F470(v2 + 744);

    v9 = sub_10067F9DC;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10067F9DC()
{
  v1 = *(v0 + 1032);
  v14 = *(v0 + 1024);
  v15 = *(v0 + 1040);
  v16 = *(v0 + 1016);
  v17 = *(v0 + 1048);
  v18 = *(v0 + 1008);
  v19 = *(v0 + 1000);
  v2 = *(v0 + 984);
  v3 = *(v0 + 976);
  sub_100795DF4();
  v4 = *(v0 + 720);
  *(v0 + 912) = *(v0 + 704);
  *(v0 + 928) = v4;
  *(v0 + 944) = *(v0 + 736);
  v5 = *(v0 + 656);
  *(v0 + 848) = *(v0 + 640);
  *(v0 + 864) = v5;
  v6 = *(v0 + 688);
  *(v0 + 880) = *(v0 + 672);
  *(v0 + 896) = v6;
  v7 = sub_1007962D4();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  v8 = sub_100796324();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  sub_10067E0C8();
  sub_10067867C();
  sub_100795CB4();
  (*(v1 + 16))(v15, v17, v14);
  sub_100795CD4();
  sub_100795D04();
  (*(v18 + 8))(v16, v19);
  v9 = *(v0 + 928);
  *(v0 + 600) = *(v0 + 912);
  *(v0 + 616) = v9;
  *(v0 + 632) = *(v0 + 944);
  v10 = *(v0 + 864);
  *(v0 + 536) = *(v0 + 848);
  *(v0 + 552) = v10;
  v11 = *(v0 + 896);
  *(v0 + 568) = *(v0 + 880);
  *(v0 + 584) = v11;
  sub_10043F470(v0 + 536);
  (*(v1 + 8))(v17, v14);

  v12 = *(v0 + 8);

  return v12();
}

void (*sub_10067FCA0(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100795DE4();
  return sub_1004EDCC4;
}

void (*sub_10067FD14(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100795DE4();
  return sub_1004EDCC4;
}

unint64_t sub_10067FDB0()
{
  result = qword_100AF1438;
  if (!qword_100AF1438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF1438);
  }

  return result;
}

unint64_t sub_10067FE08()
{
  result = qword_100AF1440;
  if (!qword_100AF1440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF1440);
  }

  return result;
}

uint64_t sub_10067FF18(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100009A34;

  return sub_10067F2F4(a1, v5, v4);
}

uint64_t sub_10067FFC4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100684C2C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10068000C()
{
  result = qword_100AF1448;
  if (!qword_100AF1448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF1448);
  }

  return result;
}

uint64_t sub_1006800A4(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for _BookReaderInteractorState(0);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100680134, 0, 0);
}

uint64_t sub_100680134()
{
  v0[4] = objc_opt_self();
  v0[5] = sub_1007A26F4();
  v0[6] = sub_1007A26E4();
  v2 = sub_1007A2694();

  return _swift_task_switch(sub_1006801DC, v2, v1);
}

uint64_t sub_1006801DC()
{
  v1 = *(v0 + 32);

  *(v0 + 56) = [v1 delegate];

  return _swift_task_switch(sub_100680264, 0, 0);
}

uint64_t sub_100680264(uint64_t a1)
{
  *(v1 + 64) = sub_1007A26E4();
  v3 = sub_1007A2694();

  return _swift_task_switch(sub_1006802F0, v3, v2);
}

uint64_t sub_1006802F0()
{
  v1 = *(v0 + 56);

  *(v0 + 72) = [v1 menuController];

  return _swift_task_switch(sub_100680378, 0, 0);
}

uint64_t sub_100680378(uint64_t a1)
{
  *(v1 + 80) = sub_1007A26E4();
  v3 = sub_1007A2694();

  return _swift_task_switch(sub_100680404, v3, v2);
}

uint64_t sub_100680404()
{
  v1 = *(v0 + 72);

  *(v0 + 88) = sub_1005C99B8();

  return _swift_task_switch(sub_100680478, 0, 0);
}

uint64_t sub_100680478(uint64_t a1)
{
  if (v1[11])
  {
    v1[12] = sub_1007A26E4();
    v3 = sub_1007A2694();

    return _swift_task_switch(sub_100680584, v3, v2);
  }

  else
  {
    sub_1001FE9A0();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();

    v5 = v1[1];

    return v5();
  }
}

uint64_t sub_100680584()
{

  *(v0 + 104) = swift_unknownObjectWeakLoadStrong();

  return _swift_task_switch(sub_100680604, 0, 0);
}

uint64_t sub_100680604(uint64_t a1)
{
  if (*(v1 + 104))
  {
    *(v1 + 112) = sub_1007A26E4();
    v3 = sub_1007A2694();

    return _swift_task_switch(sub_100680718, v3, v2);
  }

  else
  {

    sub_1001FE9A0();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();

    v5 = *(v1 + 8);

    return v5();
  }
}

uint64_t sub_100680718()
{
  v1 = *(v0 + 24);

  sub_1004A79C8(v1);

  return _swift_task_switch(sub_100680798, 0, 0);
}

uint64_t sub_100680798()
{
  v1 = v0[11];
  v3 = v0[2];
  v2 = v0[3];
  swift_unknownObjectRelease();

  LOBYTE(v1) = *(v2 + 5);
  sub_10029819C(v2);
  *v3 = v1;

  v4 = v0[1];

  return v4();
}

uint64_t sub_10068084C()
{
  v0[2] = objc_opt_self();
  v0[3] = sub_1007A26F4();
  v0[4] = sub_1007A26E4();
  v2 = sub_1007A2694();

  return _swift_task_switch(sub_1006808F4, v2, v1);
}

uint64_t sub_1006808F4()
{
  v1 = *(v0 + 16);

  *(v0 + 40) = [v1 delegate];

  return _swift_task_switch(sub_10068097C, 0, 0);
}

uint64_t sub_10068097C(uint64_t a1)
{
  *(v1 + 48) = sub_1007A26E4();
  v3 = sub_1007A2694();

  return _swift_task_switch(sub_100680A08, v3, v2);
}

uint64_t sub_100680A08()
{
  v1 = *(v0 + 40);

  *(v0 + 56) = [v1 menuController];

  return _swift_task_switch(sub_100680A90, 0, 0);
}

uint64_t sub_100680A90(uint64_t a1)
{
  *(v1 + 64) = sub_1007A26E4();
  v3 = sub_1007A2694();

  return _swift_task_switch(sub_100680B1C, v3, v2);
}

uint64_t sub_100680B1C()
{
  v1 = *(v0 + 56);

  *(v0 + 72) = sub_1005C99B8();

  return _swift_task_switch(sub_100680B90, 0, 0);
}

uint64_t sub_100680B90()
{
  v1 = v0[9];
  if (v1)
  {
    v2 = v1;
    v0[10] = sub_1007A26E4();
    v4 = sub_1007A2694();
    v0[11] = v4;
    v0[12] = v3;

    return _swift_task_switch(sub_100680C90, v4, v3);
  }

  else
  {
    sub_1001FE9A0();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100680C90()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 104) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 112) = v2;
    *v2 = v0;
    v2[1] = sub_100680D8C;
    v3 = *(v0 + 120);

    return sub_1006AE834(v3);
  }

  else
  {
    v5 = *(v0 + 72);

    return _swift_task_switch(sub_100680F3C, 0, 0);
  }
}

uint64_t sub_100680D8C()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return _swift_task_switch(sub_100680ED0, v3, v2);
}

uint64_t sub_100680ED0()
{
  v1 = *(v0 + 72);

  return _swift_task_switch(sub_100680F3C, 0, 0);
}

uint64_t sub_100680F3C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100680FA0()
{
  v0 = sub_100796814();
  sub_100009A38(v0, qword_100B23918);
  sub_100008B98(v0, qword_100B23918);
  return sub_1007967E4();
}

uint64_t sub_100681004()
{
  v0 = sub_1001F1160(&qword_100AF1510, &qword_10083C590);
  sub_100009A38(v0, qword_100B23930);
  v1 = sub_100008B98(v0, qword_100B23930);
  sub_100796024();
  v2 = sub_100796034();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1006810C4()
{
  result = swift_getKeyPath();
  qword_100B23948 = result;
  return result;
}

uint64_t sub_1006810EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[121] = a3;
  v3[120] = a2;
  v3[119] = a1;
  sub_1001F1160(&qword_100AF14E0, &qword_10083C538);
  v3[122] = swift_task_alloc();
  sub_1001F1160(&qword_100AF14E8, &qword_10083C540);
  v3[123] = swift_task_alloc();
  sub_1001F1160(&qword_100AF14F0, &qword_10083C548);
  v3[124] = swift_task_alloc();
  v4 = sub_100795CE4();
  v3[125] = v4;
  v3[126] = *(v4 - 8);
  v3[127] = swift_task_alloc();
  v5 = sub_1001F1160(&qword_100AF14F8, &unk_10083C550);
  v3[128] = v5;
  v3[129] = *(v5 - 8);
  v3[130] = swift_task_alloc();
  v3[131] = swift_task_alloc();

  return _swift_task_switch(sub_1006812D0, 0, 0);
}

uint64_t sub_1006812D0()
{
  sub_100795DF4();
  v1 = *(v0 + 168);
  v2 = *(v0 + 200);
  *(v0 + 288) = *(v0 + 184);
  *(v0 + 304) = v2;
  *(v0 + 320) = *(v0 + 216);
  v3 = *(v0 + 136);
  *(v0 + 224) = *(v0 + 120);
  *(v0 + 240) = v3;
  *(v0 + 256) = *(v0 + 152);
  *(v0 + 272) = v1;
  v4 = swift_task_alloc();
  *(v0 + 1056) = v4;
  v5 = sub_100408CA8();
  *v4 = v0;
  v4[1] = sub_1006813CC;
  v6 = *(v0 + 1048);

  return IntentDialog._CapturedContent.init<>(entity:_:)(v6, v0 + 224, sub_100685684, 0, &type metadata for BookSettingsEntity, v5);
}

uint64_t sub_1006813CC()
{

  return _swift_task_switch(sub_1006814C8, 0, 0);
}

uint64_t sub_1006814C8()
{
  sub_100795DF4();
  v1 = *(v0 + 96);
  *(v0 + 392) = *(v0 + 80);
  *(v0 + 408) = v1;
  *(v0 + 424) = *(v0 + 112);
  v2 = *(v0 + 32);
  *(v0 + 328) = *(v0 + 16);
  *(v0 + 344) = v2;
  v3 = *(v0 + 64);
  *(v0 + 360) = *(v0 + 48);
  *(v0 + 376) = v3;
  sub_100795DF4();
  *(v0 + 1089) = *(v0 + 1088);
  if (qword_100AD1AA8 != -1)
  {
    swift_once();
  }

  v4 = qword_100B23948;
  *(v0 + 1064) = qword_100B23948;

  v5 = swift_task_alloc();
  *(v0 + 1072) = v5;
  v6 = sub_100005920(&qword_100AE3800, &qword_100AE3808, &qword_100825DD8, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *v5 = v0;
  v5[1] = sub_10068163C;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 1089, v4, &type metadata for Bool, v6);
}

uint64_t sub_10068163C()
{
  v2 = *v1;
  v3 = *v1 + 328;
  *(*v1 + 1080) = v0;

  v5 = *(v3 + 16);
  v4 = *(v3 + 32);
  if (v0)
  {
    *(v2 + 432) = *v3;
    *(v2 + 448) = v5;
    *(v2 + 464) = v4;
    v7 = *(v3 + 64);
    v6 = *(v3 + 80);
    v8 = *(v3 + 48);
    *(v2 + 528) = *(v3 + 96);
    *(v2 + 496) = v7;
    *(v2 + 512) = v6;
    *(v2 + 480) = v8;
    sub_10043F470(v2 + 432);

    v9 = sub_100685664;
  }

  else
  {
    *(v2 + 744) = *v3;
    *(v2 + 760) = v5;
    *(v2 + 776) = v4;
    v11 = *(v3 + 64);
    v10 = *(v3 + 80);
    v12 = *(v3 + 48);
    *(v2 + 840) = *(v3 + 96);
    *(v2 + 808) = v11;
    *(v2 + 824) = v10;
    *(v2 + 792) = v12;
    sub_10043F470(v2 + 744);

    v9 = sub_1006817D4;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1006817D4()
{
  v1 = *(v0 + 1032);
  v14 = *(v0 + 1024);
  v15 = *(v0 + 1040);
  v16 = *(v0 + 1016);
  v17 = *(v0 + 1048);
  v18 = *(v0 + 1008);
  v19 = *(v0 + 1000);
  v2 = *(v0 + 984);
  v3 = *(v0 + 976);
  sub_100795DF4();
  v4 = *(v0 + 720);
  *(v0 + 912) = *(v0 + 704);
  *(v0 + 928) = v4;
  *(v0 + 944) = *(v0 + 736);
  v5 = *(v0 + 656);
  *(v0 + 848) = *(v0 + 640);
  *(v0 + 864) = v5;
  v6 = *(v0 + 688);
  *(v0 + 880) = *(v0 + 672);
  *(v0 + 896) = v6;
  v7 = sub_1007962D4();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  v8 = sub_100796324();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  sub_10068000C();
  sub_10067867C();
  sub_100795CB4();
  (*(v1 + 16))(v15, v17, v14);
  sub_100795CD4();
  sub_100795D04();
  (*(v18 + 8))(v16, v19);
  v9 = *(v0 + 928);
  *(v0 + 600) = *(v0 + 912);
  *(v0 + 616) = v9;
  *(v0 + 632) = *(v0 + 944);
  v10 = *(v0 + 864);
  *(v0 + 536) = *(v0 + 848);
  *(v0 + 552) = v10;
  v11 = *(v0 + 896);
  *(v0 + 568) = *(v0 + 880);
  *(v0 + 584) = v11;
  sub_10043F470(v0 + 536);
  (*(v1 + 8))(v17, v14);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100681A98(__int128 *a1)
{
  v1 = a1[3];
  v2 = a1[5];
  v20 = a1[4];
  v21 = v2;
  v3 = a1[1];
  v17[0] = *a1;
  v17[1] = v3;
  v4 = a1[3];
  v6 = *a1;
  v5 = a1[1];
  v18 = a1[2];
  v19 = v4;
  v7 = a1[5];
  v14 = v20;
  v15 = v7;
  v10 = v6;
  v11 = v5;
  v22 = *(a1 + 12);
  v16 = *(a1 + 12);
  v12 = v18;
  v13 = v1;
  sub_100685554(v17, v9);
  sub_100795E04();
  return sub_10043F470(v17);
}

void (*sub_100681B24(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100795DE4();
  return sub_1004EDCC4;
}

void (*sub_100681B98(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_100795DE4();
  return sub_1004EDCC4;
}

double sub_100681C30(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  if (*a3 == -1)
  {
  }

  else
  {
    swift_once();
  }

  return result;
}

unint64_t sub_100681C98()
{
  result = qword_100AF1460;
  if (!qword_100AF1460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF1460);
  }

  return result;
}

unint64_t sub_100681CF0()
{
  result = qword_100AF1468;
  if (!qword_100AF1468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF1468);
  }

  return result;
}

uint64_t sub_100681E48(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100009A34;

  return sub_1006810EC(a1, v5, v4);
}

uint64_t sub_100681EF4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1006850C0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100681F3C()
{
  result = qword_100AF1470;
  if (!qword_100AF1470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF1470);
  }

  return result;
}

unint64_t sub_100681F94()
{
  result = qword_100AF1478;
  if (!qword_100AF1478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF1478);
  }

  return result;
}

unint64_t sub_100681FEC()
{
  result = qword_100AF1480;
  if (!qword_100AF1480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF1480);
  }

  return result;
}

uint64_t sub_100682040(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for _BookReaderInteractorState(0);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1006820D0, 0, 0);
}

uint64_t sub_1006820D0()
{
  v0[4] = objc_opt_self();
  v0[5] = sub_1007A26F4();
  v0[6] = sub_1007A26E4();
  v2 = sub_1007A2694();

  return _swift_task_switch(sub_100682178, v2, v1);
}

uint64_t sub_100682178()
{
  v1 = *(v0 + 32);

  *(v0 + 56) = [v1 delegate];

  return _swift_task_switch(sub_100682200, 0, 0);
}

uint64_t sub_100682200(uint64_t a1)
{
  *(v1 + 64) = sub_1007A26E4();
  v3 = sub_1007A2694();

  return _swift_task_switch(sub_10068228C, v3, v2);
}

uint64_t sub_10068228C()
{
  v1 = *(v0 + 56);

  *(v0 + 72) = [v1 menuController];

  return _swift_task_switch(sub_100682314, 0, 0);
}

uint64_t sub_100682314(uint64_t a1)
{
  *(v1 + 80) = sub_1007A26E4();
  v3 = sub_1007A2694();

  return _swift_task_switch(sub_1006823A0, v3, v2);
}

uint64_t sub_1006823A0()
{
  v1 = *(v0 + 72);

  *(v0 + 88) = sub_1005C99B8();

  return _swift_task_switch(sub_100682414, 0, 0);
}

uint64_t sub_100682414(uint64_t a1)
{
  if (v1[11])
  {
    v1[12] = sub_1007A26E4();
    v3 = sub_1007A2694();

    return _swift_task_switch(sub_100682520, v3, v2);
  }

  else
  {
    sub_1001FE9A0();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();

    v5 = v1[1];

    return v5();
  }
}

uint64_t sub_100682520()
{

  *(v0 + 104) = swift_unknownObjectWeakLoadStrong();

  return _swift_task_switch(sub_1006825A0, 0, 0);
}

uint64_t sub_1006825A0(uint64_t a1)
{
  if (*(v1 + 104))
  {
    *(v1 + 112) = sub_1007A26E4();
    v3 = sub_1007A2694();

    return _swift_task_switch(sub_1006826B4, v3, v2);
  }

  else
  {

    sub_1001FE9A0();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();

    v5 = *(v1 + 8);

    return v5();
  }
}

uint64_t sub_1006826B4()
{
  v1 = *(v0 + 24);

  sub_1004A79C8(v1);

  return _swift_task_switch(sub_100682734, 0, 0);
}

uint64_t sub_100682734()
{
  v1 = v0[11];
  v3 = v0[2];
  v2 = v0[3];
  swift_unknownObjectRelease();

  LOBYTE(v1) = *(v2 + 6);
  sub_10029819C(v2);
  *v3 = v1;

  v4 = v0[1];

  return v4();
}

uint64_t sub_1006827E8()
{
  v0[2] = objc_opt_self();
  v0[3] = sub_1007A26F4();
  v0[4] = sub_1007A26E4();
  v2 = sub_1007A2694();

  return _swift_task_switch(sub_100682890, v2, v1);
}

uint64_t sub_100682890()
{
  v1 = *(v0 + 16);

  *(v0 + 40) = [v1 delegate];

  return _swift_task_switch(sub_100682918, 0, 0);
}

uint64_t sub_100682918(uint64_t a1)
{
  *(v1 + 48) = sub_1007A26E4();
  v3 = sub_1007A2694();

  return _swift_task_switch(sub_1006829A4, v3, v2);
}

uint64_t sub_1006829A4()
{
  v1 = *(v0 + 40);

  *(v0 + 56) = [v1 menuController];

  return _swift_task_switch(sub_100682A2C, 0, 0);
}

uint64_t sub_100682A2C(uint64_t a1)
{
  *(v1 + 64) = sub_1007A26E4();
  v3 = sub_1007A2694();

  return _swift_task_switch(sub_100682AB8, v3, v2);
}

uint64_t sub_100682AB8()
{
  v1 = *(v0 + 56);

  *(v0 + 72) = sub_1005C99B8();

  return _swift_task_switch(sub_100682B2C, 0, 0);
}

uint64_t sub_100682B2C()
{
  v1 = v0[9];
  if (v1)
  {
    v2 = v1;
    v0[10] = sub_1007A26E4();
    v4 = sub_1007A2694();
    v0[11] = v4;
    v0[12] = v3;

    return _swift_task_switch(sub_100682C2C, v4, v3);
  }

  else
  {
    sub_1001FE9A0();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100682C2C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 104) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 112) = v2;
    *v2 = v0;
    v2[1] = sub_100682D28;
    v3 = *(v0 + 120);

    return sub_1006AECB8(v3);
  }

  else
  {
    v5 = *(v0 + 72);

    return _swift_task_switch(sub_100685698, 0, 0);
  }
}

uint64_t sub_100682D28()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return _swift_task_switch(sub_100682E6C, v3, v2);
}

uint64_t sub_100682E6C()
{
  v1 = *(v0 + 72);

  return _swift_task_switch(sub_100685698, 0, 0);
}