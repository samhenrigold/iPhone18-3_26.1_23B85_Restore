void *sub_146E34(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_5758(&qword_1EAFA8, &unk_178270);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_10BBBC(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_5758(&qword_1E6380, &qword_16DAC0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_146F4C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_5758(&qword_1E83E0, &unk_170410);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_10BBBC(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_5758(&qword_1E91C0, &qword_172C40);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_147064(char a1, int64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v6 = a2;
    goto LABEL_7;
  }

  sub_10BC1C();
  if (v7 == v8)
  {
LABEL_7:
    v9 = *(a4 + 16);
    if (v6 <= v9)
    {
      v10 = *(a4 + 16);
    }

    else
    {
      v10 = v6;
    }

    if (v10)
    {
      sub_5758(&qword_1ED198, &qword_178298);
      v11 = swift_allocObject();
      v12 = j__malloc_size(v11);
      *(v11 + 2) = v9;
      *(v11 + 3) = 2 * v12 - 64;
      if (a1)
      {
LABEL_12:
        sub_109198((a4 + 32), v9, v11 + 32);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v11 = _swiftEmptyArrayStorage;
      if (a1)
      {
        goto LABEL_12;
      }
    }

    memcpy(v11 + 32, (a4 + 32), v9);
    goto LABEL_15;
  }

  sub_10C048();
  if (!v7)
  {
    sub_10BBE8();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_14713C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_5758(&qword_1EEC80, &qword_17A4B0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_10BBBC(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_5758(&qword_1EE5E8, &qword_179D98);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_147254(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_5758(&qword_1EEC98, &qword_17A4C0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_10BBBC(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_5758(&qword_1EE5E0, &qword_179D90);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_14736C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_5758(&qword_1EEC60, &qword_17A498);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_10BBBC(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_5758(qword_1EE5F0, &qword_179DA0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_147484(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_5758(&qword_1EECB8, &qword_17A4D0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_10BBBC(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_5758(&qword_1EE5D8, &qword_179D88);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_14759C(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    sub_10BC1C();
    if (v7 != v8)
    {
      sub_10C048();
      if (v7)
      {
LABEL_23:
        __break(1u);
        return;
      }

      sub_10BBE8();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 16);
  if (v6 <= v9)
  {
    v10 = *(a4 + 16);
  }

  else
  {
    v10 = v6;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  sub_5758(&qword_1ED1B0, &qword_1782B8);
  v11 = sub_5758(&qword_1EA370, &qword_1782B0);
  sub_10AEC(v11);
  v13 = *(v12 + 72);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  v17 = j__malloc_size(v16);
  if (!v13)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v17 - v15 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_22;
  }

  v16[2] = v9;
  v16[3] = 2 * ((v17 - v15) / v13);
LABEL_17:
  sub_5758(&qword_1EA370, &qword_1782B0);
  sub_10BDEC();
  if (a1)
  {
    sub_10928C();
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_147748(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_5758(&qword_1EEC48, &qword_17A480);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_10BBBC(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_5758(&qword_1EEC50, &qword_17A488);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_147860()
{
  sub_CA350();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (v11)
  {
    sub_10BC1C();
    if (v13 != v14)
    {
      sub_10C048();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_10BBE8();
    }
  }

  else
  {
    v12 = v0;
  }

  v15 = *(v8 + 16);
  if (v12 <= v15)
  {
    v16 = *(v8 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v22 = _swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  sub_5758(v1, v2);
  v17 = v6(0);
  sub_10AEC(v17);
  v19 = *(v18 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v23 = j__malloc_size(v22);
  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 - v21 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_23;
  }

  v22[2] = v15;
  v22[3] = 2 * ((v23 - v21) / v19);
LABEL_18:
  v6(0);
  sub_10BDEC();
  if (v10)
  {
    v4(v8 + v25, v15, v22 + v25);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  sub_CA368();
}

void *sub_1479F8(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_5758(&qword_1EEC58, &qword_17A490);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_10BBBC(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_5758(&qword_1EE5D0, &unk_179D78);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_147B10(uint64_t a1, char a2, __n128 a3)
{
  v5 = *v3;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v3 = v5;
  if (result)
  {
    if ((v5 & 0x8000000000000000) == 0 && (v5 & 0x4000000000000000) == 0)
    {
      if (a1 <= *(&dword_18 + (v5 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v5 & 0x8000000000000000) == 0 && (v5 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_16ADC4();
LABEL_9:
  result = sub_16AD14();
  *v3 = result;
  return result;
}

uint64_t sub_147BB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_147C28(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_16ADC4();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_11B48C();
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_169E24();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_37284(&qword_1EEC00, &qword_1EEBF8, &qword_17A458, &protocol conformance descriptor for [A]);
        for (i = 0; i != v7; ++i)
        {
          sub_5758(&qword_1EEBF8, &qword_17A458);
          v9 = sub_D1904(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_147DB0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_16ADC4();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_11B48C();
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_16484(0, &qword_1EE5B8, CAFVent_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_37284(&qword_1EEC90, &qword_1EEC88, &qword_17A4B8, &protocol conformance descriptor for [A]);
        for (i = 0; i != v7; ++i)
        {
          sub_5758(&qword_1EEC88, &qword_17A4B8);
          v9 = sub_D19D8(v12, i, a3);
          v11 = *v10;
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_147F48(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_16ADC4();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_11B48C();
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_16484(0, &qword_1EE5B0, CAFFan_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_37284(&qword_1EEC70, &qword_1EEC68, &qword_17A4A0, &protocol conformance descriptor for [A]);
        for (i = 0; i != v7; ++i)
        {
          sub_5758(&qword_1EEC68, &qword_17A4A0);
          v9 = sub_D19D8(v12, i, a3);
          v11 = *v10;
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1480E0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_16ADC4();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_11B48C();
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_16484(0, &qword_1E83B8, CAFDefrost_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_37284(&qword_1EECC8, &qword_1EECC0, &qword_17A4D8, &protocol conformance descriptor for [A]);
        for (i = 0; i != v7; ++i)
        {
          sub_5758(&qword_1EECC0, &qword_17A4D8);
          v9 = sub_D1A30(v12, i, a3);
          v11 = *v10;
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_148278(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_16ADC4();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_11B48C();
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_16A1C4();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_37284(&qword_1EEC40, &qword_1E77D0, &unk_179A60, &protocol conformance descriptor for [A]);
        for (i = 0; i != v7; ++i)
        {
          sub_5758(&qword_1E77D0, &unk_179A60);
          v9 = sub_D196C(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_148400(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_16ADC4();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_11B48C();
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_16484(0, &qword_1EECA0, CAFSeatFan_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_37284(&qword_1EECB0, &qword_1EECA8, &qword_17A4C8, &protocol conformance descriptor for [A]);
        for (i = 0; i != v7; ++i)
        {
          sub_5758(&qword_1EECA8, &qword_17A4C8);
          v9 = sub_D19D8(v12, i, a3);
          v11 = *v10;
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1485D8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
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
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2++ = *(*(a4 + 48) + ((v9 << 9) | (8 * v12)));
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1486C0(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
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
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2++ = *(*(a4 + 48) + (v12 | (v9 << 6)));
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1487A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 *sub_1488C8(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x69746E4572657375;
  return result;
}

uint64_t sub_148918(uint64_t result)
{
  *(result + 48) = 0x636E657265666572;
  *(result + 56) = 0xE900000000000065;
  return result;
}

uint64_t sub_148984()
{

  return sub_16AD04();
}

uint64_t sub_1489DC(uint64_t a1)
{

  return sub_109A0(a1, v1, v2);
}

uint64_t sub_1489F4(uint64_t a1)
{

  return sub_169A94();
}

uint64_t sub_148A48()
{

  return sub_16ADC4();
}

uint64_t sub_148A64(uint64_t a1)
{

  return sub_109A0(a1, v1, v2);
}

uint64_t sub_148A7C()
{
}

uint64_t sub_148A94(uint64_t a1)
{

  return sub_109A0(a1, v2, v1);
}

uint64_t sub_148B24()
{

  return sub_169A94();
}

uint64_t sub_148B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_16A634();
}

uint64_t sub_148B5C()
{
}

uint64_t sub_148B74@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  sub_54A30(v1 + 136, &v4);
  if (v5)
  {
    return sub_D124(&v4, a1);
  }

  sub_D188(&v4, &qword_1E6030, &unk_173620);
  sub_1693F4();
  sub_10824(a1, &v4);
  swift_beginAccess();
  sub_14A780(&v4, v1 + 136);
  return swift_endAccess();
}

uint64_t sub_148C28()
{
  v1 = v0;
  v2 = *(v0 + 216);
  if (v2 == 2)
  {
    sub_169EB4();
    sub_169EA4();
    sub_169E94();

    LOBYTE(v2) = sub_169EE4();

    *(v1 + 216) = v2 & 1;
  }

  return v2 & 1;
}

uint64_t sub_148CA0()
{
  v0 = type metadata accessor for FeatureFlagHelper();
  v1 = swift_allocObject();
  v2 = [objc_opt_self() sharedStream];
  v3 = [objc_opt_self() sharedManager];
  sub_1689F4();
  type metadata accessor for CarCommandsLoggingProducer();
  swift_allocObject();
  v4 = sub_D230C(v2, v3, v13);
  sub_E2BF8();
  sub_E28B0(v13);
  v15 = v0;
  v16 = &off_1D9AF0;
  v14 = v1;
  type metadata accessor for CarPlaySessionObserver();
  v5 = swift_allocObject();
  v6 = objc_allocWithZone(CARSessionStatus);
  swift_retain_n();

  *(v5 + 16) = [v6 init];
  sub_14A288(v13, &v12);

  sub_14A90C();
  v10 = sub_14A2E4(v7, v8, v9, v4);

  sub_14A6EC(v13);
  return v10;
}

uint64_t sub_148E28(char *a1)
{
  sub_5758(&qword_1EEE00, &qword_17A5B8);
  sub_9F48();
  sub_CA380();
  __chkstk_darwin(v3);
  sub_148944();
  sub_5758(&qword_1EEE08, &qword_17A5C0);
  sub_9F48();
  sub_CA380();
  __chkstk_darwin(v4);
  sub_148944();
  sub_5758(&qword_1EEE10, &qword_17A5C8);
  sub_9F48();
  sub_CA380();
  __chkstk_darwin(v5);
  sub_148944();
  sub_5758(&qword_1EEE18, &qword_17A5D0);
  sub_9F48();
  sub_CA380();
  __chkstk_darwin(v6);
  sub_148944();
  sub_5758(&qword_1EEE20, &unk_17A5D8);
  sub_9F48();
  sub_CA380();
  __chkstk_darwin(v7);
  sub_148944();
  v129 = 0;
  v130 = 0xE000000000000000;
  sub_16ACF4(18);
  v133._countAndFlagsBits = 0xD000000000000010;
  v133._object = 0x8000000000191430;
  sub_16A744(v133);
  sub_1693E4();
  sub_16AD84();
  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v8 = sub_16A584();
  sub_9DA0(v8, qword_1E65C0);
  sub_16A9A4();
  sub_14A844();
  sub_386D8(v9, v10, v11, v12, v13, v14, 44, 0, 0xE000000000000000);

  sub_86E4(a1, &_swiftEmptySetSingleton, &v127);
  if (v128)
  {
    sub_D124(&v127, &v129);
    sub_D084((v1 + 176), *(v1 + 200));
    sub_148B74(&v127);
    v15 = sub_DB8D8(&v127);
    sub_D13C(&v127);
    v17 = v131;
    v16 = v132;
    sub_D084(&v129, v131);
    if ((*(v16 + 32))(v15 & 1, v17, v16))
    {
      v18 = v132;
      sub_D084(&v129, v131);
      v19 = sub_67C60();
      v21 = v20(v19, v18);
      sub_14A8E4();
      sub_16ACF4(21);
      v134._countAndFlagsBits = 0xD000000000000013;
      v134._object = 0x80000000001914C0;
      sub_16A744(v134);
      LOBYTE(v126[0]) = v21;
      sub_16AD84();
      v23 = *(&v127 + 1);
      v22 = v127;
      sub_16A9A4();
      sub_14A844();
      sub_386D8(v24, v25, v26, v27, v28, v29, 61, v22, v23);

      if (v21 > 0x18u || ((1 << v21) & 0x127C980) == 0 || (v15 & 1) != 0)
      {
        sub_149E70(a1);
        switch(v21)
        {
          case 0u:
            sub_14A8A0();
            sub_14A874(&v132);
            sub_14A7F0();
            if (v15)
            {
              sub_C6018();
            }

            else
            {
              v30 = sub_C62A8();
            }

            goto LABEL_69;
          case 1u:
            v67 = type metadata accessor for SnippetManager();
            v68 = sub_7A710(v67);
            sub_14A830(v68);
            type metadata accessor for SetLockStatusRCHFlowStrategy();
            swift_allocObject();
            v69 = sub_67C60();
            *&v127 = sub_CA6CC(v69);

            sub_CAC9C();
            sub_14A240(&qword_1EAE80, 255, type metadata accessor for SetLockStatusRCHFlowStrategy, &unk_175150);
            sub_168CD4();
            v70 = sub_168CC4();
            v71 = sub_14A890();
            v72(v71);
            *&v127 = v70;
            sub_14A934();
            sub_14A90C();
            sub_C98CC(v73, v74, v75);
            v76 = sub_168924();

            goto LABEL_46;
          case 2u:
            v77 = type metadata accessor for SnippetManager();
            v78 = sub_7A710(v77);
            sub_14A830(v78);
            v79 = type metadata accessor for ActivateSignalRCHFlowStrategy();
            sub_14A918(v79);
            v80 = sub_67C60();
            *&v127 = sub_3D440(v80);

            sub_3D9E8();
            v81 = sub_14A240(&qword_1E69F8, 255, type metadata accessor for ActivateSignalRCHFlowStrategy, &unk_16E5C0);
            sub_14A8C8(&v127, v82, v83, v81);
            v84 = sub_168CC4();
            v85 = sub_14A890();
            v86(v85);
            *&v127 = v84;
            sub_14A934();
            goto LABEL_45;
          case 3u:
            sub_14A8A0();
            sub_14A874(&v132);
            sub_14A7F0();
            if (v15)
            {
              sub_C6548();
            }

            else
            {
              v30 = sub_C687C();
            }

            goto LABEL_69;
          case 4u:
            v58 = type metadata accessor for SnippetManager();
            v59 = sub_7A710(v58);
            sub_14A830(v59);
            v60 = type metadata accessor for DeactivateSignalRCHFlowStrategy();
            sub_14A918(v60);
            sub_67C60();
            *&v127 = sub_165988();

            sub_165E78();
            v61 = sub_14A240(&qword_1EEE40, 255, type metadata accessor for DeactivateSignalRCHFlowStrategy, &unk_17B7B0);
            sub_14A8C8(&v127, v62, v63, v61);
            v64 = sub_168CC4();
            v65 = sub_14A890();
            v66(v65);
            *&v127 = v64;
            sub_14A934();
LABEL_45:
            sub_14A90C();
            sub_C98CC(v87, v88, v89);
            v76 = sub_168924();

LABEL_46:

            sub_14A8A0();
            v23 = v1;
            goto LABEL_71;
          case 5u:
            sub_10824(v1 + 56, &v127);
            v90 = sub_D084(&v127, v128);
            sub_10824(v90, v126);
            v91 = type metadata accessor for SnippetManager();
            v92 = sub_7A710(v91);
            sub_14A830(v92);
            v93 = type metadata accessor for SetTrunkStatusRCHFlowStrategy();
            sub_14A918(v93);
            *&v126[0] = sub_AAEDC(v126, v21);

            sub_ABA30();
            v94 = sub_14A240(&qword_1EEE58, 255, type metadata accessor for SetTrunkStatusRCHFlowStrategy, &unk_173AE0);
            sub_14A8C8(v126, v95, v96, v94);
            v97 = sub_168CC4();
            v98 = sub_14A890();
            v99(v98);
            *&v126[0] = v97;
            sub_14A934();
            sub_14A90C();
            sub_C98CC(v100, v101, v102);
            v76 = sub_168924();

            v23 = v1;

            goto LABEL_59;
          case 6u:
            sub_14A810();
            sub_14A7F0();
            v57 = sub_C5EC8();
            goto LABEL_58;
          case 7u:
            if ((v15 & 1) == 0)
            {
              goto LABEL_60;
            }

            sub_14A854();
            sub_14A7F0();
            sub_C7794();
            goto LABEL_66;
          case 8u:
            if ((v15 & 1) == 0)
            {
              goto LABEL_60;
            }

            sub_14A854();
            sub_14A7F0();
            sub_C6B18();
            goto LABEL_66;
          case 9u:
            sub_14A8A0();
            if (v15)
            {
              goto LABEL_39;
            }

            sub_10824(v1 + 56, &v127);
            v112 = sub_D084(&v127, v128);
            sub_10824(v112, v126);
            v113 = type metadata accessor for SnippetManager();
            v114 = sub_7A710(v113);
            sub_14A830(v114);
            type metadata accessor for SetClimateRCHFlowStrategy();
            swift_allocObject();
            *&v126[0] = sub_118330(v126, v21);

            sub_118D94();
            v115 = sub_14A240(&qword_1EEE28, 255, type metadata accessor for SetClimateRCHFlowStrategy, &unk_178AA0);
            sub_14A8C8(v126, v116, v117, v115);
            v118 = sub_168CC4();
            v119 = sub_14A890();
            v120(v119);
            *&v126[0] = v118;
            sub_14A934();
            sub_14A90C();
            sub_C98CC(v121, v122, v123);
            v76 = sub_168924();

            v23 = v1;

            goto LABEL_70;
          case 0xAu:
            sub_14A810();
            sub_14A7F0();
            v57 = sub_C63F8();
            goto LABEL_58;
          case 0xBu:
            sub_14A8A0();
            if (v15)
            {
LABEL_39:
              sub_14A810();
              sub_14A7F0();
              sub_C7A68();
            }

            else
            {
              sub_14A810();
              sub_14A7F0();
              v30 = sub_C9480();
            }

LABEL_69:
            v76 = v30;
LABEL_70:

            sub_D13C(&v127);
            goto LABEL_71;
          case 0xCu:
            if ((v15 & 1) == 0)
            {
              goto LABEL_60;
            }

            sub_14A854();
            sub_14A7F0();
            sub_C74C0();
            goto LABEL_66;
          case 0xDu:
            sub_14A810();
            sub_14A7F0();
            v57 = sub_C69C8();
            goto LABEL_58;
          case 0xEu:
            if ((v15 & 1) == 0)
            {
              goto LABEL_60;
            }

            sub_14A810();
            sub_14A7F0();
            sub_C7D38();
            goto LABEL_58;
          case 0xFu:
            if ((v15 & 1) == 0)
            {
              goto LABEL_60;
            }

            sub_14A810();
            sub_14A7F0();
            sub_C80E4();
            goto LABEL_58;
          case 0x10u:
            if ((v15 & 1) == 0)
            {
              goto LABEL_60;
            }

            sub_14A854();
            sub_14A7F0();
            sub_C6E0C();
            goto LABEL_66;
          case 0x11u:
            if ((v15 & 1) == 0)
            {
              goto LABEL_60;
            }

            sub_14A810();
            sub_14A7F0();
            sub_C83B8();
            goto LABEL_58;
          case 0x12u:
            sub_14A810();
            sub_14A7F0();
            sub_C8610();
            goto LABEL_58;
          case 0x13u:
            if ((v15 & 1) == 0)
            {
              goto LABEL_60;
            }

            sub_14A810();
            sub_14A7F0();
            sub_C8914();
            goto LABEL_58;
          case 0x14u:
            if ((v15 & 1) == 0)
            {
              goto LABEL_60;
            }

            sub_14A810();
            sub_14A7F0();
            sub_C8DC4();
            goto LABEL_58;
          case 0x15u:
            if ((v15 & 1) == 0)
            {
              goto LABEL_60;
            }

            sub_14A810();
            sub_14A7F0();
            sub_C8B6C();
            goto LABEL_58;
          case 0x16u:
            if ((v15 & 1) == 0)
            {
              goto LABEL_60;
            }

            sub_14A810();
            sub_14A7F0();
            sub_C71EC();
            goto LABEL_58;
          case 0x17u:
            if ((v15 & 1) == 0)
            {
              goto LABEL_60;
            }

            sub_14A854();
            sub_14A7F0();
            sub_C6DE8();
LABEL_66:
            sub_168984();

            goto LABEL_72;
          case 0x18u:
            if ((v15 & 1) == 0 || (sub_148C28() & 1) == 0)
            {
              goto LABEL_60;
            }

            sub_14A810();
            sub_14A7F0();
            sub_C901C();
LABEL_58:
            v76 = v57;
LABEL_59:

            sub_D13C(&v127);
            sub_14A8A0();
LABEL_71:
            sub_10824(v23 + 56, &v127);
            sub_14A7F0();
            sub_C94C8(v76);
            sub_168984();

LABEL_72:
            sub_D13C(&v127);
            return sub_D13C(&v129);
          case 0x19u:
            sub_14A810();
            sub_14A7F0();
            v57 = sub_C5E80();
            goto LABEL_58;
          case 0x1Bu:
            sub_14A854();
            sub_14A7F0();
            sub_C9480();
            goto LABEL_66;
          case 0x1Du:
            sub_16A9A4();
            sub_14A8AC();
            sub_14A844();
            sub_386D8(v105, v106, v107, v108, v109, v110, 148, v111, v1);
            sub_14A854();
            sub_14A7F0();
            sub_C9384();
            goto LABEL_66;
          default:
LABEL_60:
            sub_14A8E4();
            sub_16ACF4(36);
            sub_14A8F4();
            v139._countAndFlagsBits = "gin.swift";
            v139._object = (v103 | 0x8000000000000000);
            sub_16A744(v139);
            LOBYTE(v126[0]) = v21;
            sub_16AD84();
            v104 = *(&v127 + 1);
            v48 = v127;
            sub_16A9A4();
            v124 = v104;
            sub_14A844();
            v56 = 151;
            goto LABEL_61;
        }
      }

      sub_14A8E4();
      sub_16ACF4(92);
      sub_14A8F4();
      v137._countAndFlagsBits = "n.swift";
      v137._object = (v47 | 0x8000000000000000);
      sub_16A744(v137);
      LOBYTE(v126[0]) = v21;
      sub_16AD84();
      v138._countAndFlagsBits = "ndFlowForX(parse:)";
      v138._object = 0x8000000000191580;
      sub_16A744(v138);
      v49 = *(&v127 + 1);
      v48 = v127;
      sub_16A9A4();
      v124 = v49;
      sub_14A844();
      v56 = 65;
LABEL_61:
      sub_386D8(v50, v51, v52, v53, v54, v55, v56, v48, v124);
    }

    else
    {
      sub_16A9A4();
      sub_14A8AC();
      sub_14A844();
      sub_386D8(v40, v41, v42, v43, v44, v45, 56, v46, v125);
    }

    sub_168974();
    return sub_D13C(&v129);
  }

  else
  {
    sub_D188(&v127, &qword_1E5F80, &unk_16E7E0);
    v129 = 0;
    v130 = 0xE000000000000000;
    sub_16ACF4(33);
    v135._countAndFlagsBits = 0xD00000000000001ELL;
    v135._object = 0x8000000000191450;
    sub_16A744(v135);
    sub_16AD84();
    v136._countAndFlagsBits = 46;
    v136._object = 0xE100000000000000;
    sub_16A744(v136);
    v31 = v129;
    v32 = v130;
    sub_16A9A4();
    sub_14A844();
    sub_386D8(v33, v34, v35, v36, v37, v38, 47, v31, v32);

    return sub_168974();
  }
}

uint64_t sub_149E70(uint64_t a1)
{
  v2 = sub_1693D4();
  sub_9F48();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1693E4();
  sub_9F48();
  v10 = v9;
  __chkstk_darwin(v11);
  v13 = &v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v10 + 16))(v13, a1, v8);
  if ((*(v10 + 88))(v13, v8) != enum case for Parse.directInvocation(_:))
  {
    (*(v10 + 8))(v13, v8);
    return 0;
  }

  (*(v10 + 96))(v13, v8);
  (*(v4 + 32))(v7, v13, v2);
  v14 = sub_1693C4();
  if (!v14)
  {
    (*(v4 + 8))(v7, v2);
    v17 = 0u;
    v18 = 0u;
    goto LABEL_8;
  }

  sub_13F530(0xD00000000000001BLL, 0x8000000000182A20, v14, &v17);

  (*(v4 + 8))(v7, v2);
  if (!*(&v18 + 1))
  {
LABEL_8:
    sub_D188(&v17, &qword_1E6A10, &unk_1744D0);
    return 0;
  }

  result = swift_dynamicCast();
  if (result)
  {
    return v16[15];
  }

  return result;
}

void *sub_14A0F0()
{
  sub_D13C(v0 + 2);
  sub_D13C(v0 + 7);
  sub_D13C(v0 + 12);
  sub_D188((v0 + 17), &qword_1E6030, &unk_173620);
  sub_D13C(v0 + 22);
  return v0;
}

uint64_t sub_14A140()
{
  sub_14A0F0();

  return _swift_deallocClassInstance(v0, 217, 7);
}

uint64_t sub_14A1BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_148CA0();
  *a1 = result;
  return result;
}

uint64_t sub_14A240(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_14A2E4(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41[3] = &type metadata for FlowFactoryImpl;
  v41[4] = &off_1D7A88;
  v41[0] = swift_allocObject();
  memcpy((v41[0] + 16), a1, 0x50uLL);
  v8 = type metadata accessor for FeatureFlagHelper();
  v40[3] = v8;
  v40[4] = &off_1D9AF0;
  v40[0] = a2;
  v9 = type metadata accessor for CarPlaySessionObserver();
  v38 = v9;
  v39 = &off_1D8738;
  v37[0] = a3;
  v10 = type metadata accessor for CarCommandsLoggingProducer();
  v35 = v10;
  v36 = &off_1D7DF0;
  v34[0] = a4;
  type metadata accessor for CarCommandsFlowDelegatePlugin();
  v11 = swift_allocObject();
  v12 = sub_2F8D0(v41, &type metadata for FlowFactoryImpl);
  __chkstk_darwin(v12);
  v14 = &v34[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14);
  v16 = sub_2F8D0(v40, v8);
  __chkstk_darwin(v16);
  v18 = (&v34[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = sub_2F8D0(v37, v38);
  __chkstk_darwin(v20);
  v22 = (&v34[-1] - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  v24 = sub_2F8D0(v34, v35);
  __chkstk_darwin(v24);
  v26 = (&v34[-1] - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  v28 = *v18;
  v29 = *v22;
  v30 = *v26;
  *(v11 + 80) = &type metadata for FlowFactoryImpl;
  *(v11 + 88) = &off_1D7A88;
  v31 = swift_allocObject();
  *(v11 + 56) = v31;
  memcpy((v31 + 16), v14, 0x50uLL);
  *(v11 + 40) = v8;
  *(v11 + 48) = &off_1D9AF0;
  *(v11 + 16) = v28;
  *(v11 + 200) = v9;
  *(v11 + 208) = &off_1D8738;
  *(v11 + 120) = v10;
  *(v11 + 128) = &off_1D7DF0;
  *(v11 + 96) = v30;
  *(v11 + 136) = 0u;
  *(v11 + 152) = 0u;
  *(v11 + 168) = 0;
  *(v11 + 176) = v29;
  *(v11 + 216) = 2;
  sub_D13C(v34);
  sub_D13C(v37);
  sub_D13C(v40);
  sub_D13C(v41);
  return v11;
}

uint64_t sub_14A740()
{
  sub_D13C((v0 + 16));
  sub_D13C((v0 + 56));

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_14A780(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1E6030, &unk_173620);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_14A810()
{
  v2 = *(v0 - 352) + 56;

  return sub_10824(v2, v0 - 168);
}

uint64_t sub_14A854()
{
  v2 = *(v0 - 352) + 56;

  return sub_10824(v2, v0 - 168);
}

uint64_t sub_14A874@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256) + 56;

  return sub_10824(v3, v1 - 168);
}

uint64_t sub_14A8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_168CD4();
}

uint64_t sub_14A918(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_14A934()
{

  return sub_5758(v0, v1);
}

uint64_t sub_14A94C()
{
  sub_D2DC();
  v1[14] = v2;
  v1[15] = v0;
  v1[12] = v3;
  v1[13] = v4;
  v1[10] = v5;
  v1[11] = v6;
  v1[8] = v7;
  v1[9] = v8;
  v1[7] = v9;
  v10 = sub_1691E4();
  v1[16] = v10;
  v1[17] = *(v10 - 8);
  v1[18] = swift_task_alloc();
  v11 = sub_16A2C4();
  v1[19] = v11;
  v1[20] = *(v11 - 8);
  v1[21] = swift_task_alloc();
  v12 = sub_D388();

  return _swift_task_switch(v12);
}

uint64_t sub_14AA6C()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  v4 = v0[14];
  v14 = v0[13];
  v5 = v0[8];

  sub_16A2B4();
  sub_D084(v4, v4[3]);
  v6 = sub_16A284();
  v0[5] = v6;
  v0[6] = sub_4FB1C();
  v7 = sub_10888(v0 + 2);
  (*(v1 + 16))(v7, v2, v3);
  (*(*(v6 - 8) + 104))(v7, enum case for CarCommandsSnippetsPluginModel.confirmation(_:), v6);
  sub_5758(&qword_1EA2B0, &qword_16DFB0);
  v8 = swift_allocObject();
  v0[22] = v8;
  *(v8 + 16) = xmmword_16D440;
  *(v8 + 32) = v5;
  v9 = v5;
  sub_14B9E0(0xD000000000000018, 0x8000000000191600, v14);
  swift_task_alloc();
  sub_D3E0();
  v0[23] = v10;
  *v10 = v11;
  v10[1] = sub_14AC6C;
  v12 = v0[7];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v12);
}

uint64_t sub_14AC6C()
{
  sub_D358();
  v2 = v1;
  sub_D2A4();
  *v3 = v2;
  v5 = v4[18];
  v6 = v4[17];
  v7 = v4[16];
  v8 = *v0;
  sub_D254();
  *v9 = v8;

  (*(v6 + 8))(v5, v7);
  sub_D13C((v2 + 16));
  v10 = sub_D388();

  return _swift_task_switch(v10);
}

uint64_t sub_14ADD8()
{
  sub_D2DC();
  (*(v0[20] + 8))(v0[21], v0[19]);

  sub_D37C();

  return v1();
}

uint64_t sub_14AE58()
{
  sub_D2DC();
  v1[195] = v0;
  v1[189] = v2;
  v1[183] = v3;
  v1[177] = v4;
  v1[171] = v5;
  sub_16A164();
  v1[201] = swift_task_alloc();
  v6 = sub_D388();

  return _swift_task_switch(v6);
}

uint64_t sub_14AEEC()
{
  sub_D2DC();
  type metadata accessor for CarCommandsCATsSimple(0);
  sub_16A154();
  *(v0 + 1656) = sub_16A0F4();

  swift_asyncLet_begin();

  swift_asyncLet_begin();

  return _swift_asyncLet_get_throwing(v0 + 16);
}

uint64_t sub_14AFE8()
{
  sub_D2DC();
  v1[213] = v0;
  if (v0)
  {

    return _swift_asyncLet_finish(v1 + 82);
  }

  else
  {
    v1[219] = v1[167];
    v1[225] = v1[168];

    v2 = sub_14BCFC();

    return _swift_asyncLet_get_throwing(v2);
  }
}

uint64_t sub_14B098()
{
  sub_1696C();
  v1[226] = v0;
  if (v0)
  {

    return _swift_task_switch(sub_14B444);
  }

  else
  {
    v1[227] = v1[170];

    swift_task_alloc();
    sub_D3E0();
    v1[228] = v2;
    *v2 = v3;
    v2[1] = sub_14B1A8;

    return sub_14A94C();
  }
}

uint64_t sub_14B1A8()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 1832) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_14B54C);
  }

  else
  {

    return _swift_asyncLet_finish(v3 + 656);
  }
}

uint64_t sub_14B330()
{
  sub_D2DC();

  sub_D37C();

  return v0();
}

uint64_t sub_14B3E4()
{
  sub_D2DC();
  sub_14BD0C();

  sub_D37C();

  return v0();
}

uint64_t sub_14B444()
{
  sub_D2DC();

  v0 = sub_14BCFC();

  return _swift_asyncLet_finish(v0);
}

uint64_t sub_14B4EC()
{
  sub_D2DC();
  sub_14BD0C();

  sub_D37C();

  return v0();
}

uint64_t sub_14B54C()
{
  sub_D2DC();

  v0 = sub_14BCFC();

  return _swift_asyncLet_finish(v0);
}

uint64_t sub_14B600()
{
  sub_D2DC();
  sub_14BD0C();

  sub_D37C();

  return v0();
}

uint64_t sub_14B660(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_14B6F4;

  return sub_DEC70();
}

uint64_t sub_14B6F4()
{
  sub_1696C();
  v3 = v2;
  sub_D358();
  v5 = v4;
  sub_D2A4();
  *v6 = v5;
  v7 = *v1;
  sub_D254();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 32) = v3;
    v11 = sub_124EC0();

    return _swift_task_switch(v11);
  }
}

uint64_t sub_14B820(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_14B8B4;

  return sub_DDAB8();
}

uint64_t sub_14B8B4()
{
  sub_1696C();
  v3 = v2;
  sub_D358();
  v5 = v4;
  sub_D2A4();
  *v6 = v5;
  v7 = *v1;
  sub_D254();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 32) = v3;
    v11 = sub_124EC0();

    return _swift_task_switch(v11);
  }
}

uint64_t sub_14B9E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_168B74();
  __chkstk_darwin(v3 - 8);
  sub_168B44();
  return sub_169164();
}

uint64_t sub_14BA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_5758(&qword_1E5F78, &unk_16D400);
  __chkstk_darwin(v5 - 8);
  v7 = &v10 - v6;

  sub_169194();

  sub_169184();
  v8 = sub_168E14();
  (*(*(v8 - 8) + 16))(v7, a4, v8);
  sub_5370(v7, 0, 1, v8);
  sub_1691B4();
  sub_1691C4();
  return sub_1691D4();
}

uint64_t sub_14BBE0()
{
  sub_D2DC();
  swift_task_alloc();
  sub_D3E0();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_124F14(v1);

  return sub_14B660(v3);
}

uint64_t sub_14BC68()
{
  sub_D2DC();
  swift_task_alloc();
  sub_D3E0();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_124F14(v1);

  return sub_14B820(v3);
}

uint64_t sub_14BD0C()
{
}

uint64_t sub_14BD28(uint64_t result, __int16 a2)
{
  if (((HIBYTE(a2) - a2) & 0xFFFFFF00) != 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v2 = result;
  if (v2 > 100.0)
  {
    v2 = 100.0;
  }

  v3 = round(v2 / 100.0 * (HIBYTE(a2) - a2));
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_10;
  }

  if (v3 <= -1.0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v3 >= 256.0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = v3 + a2;
  if ((result >> 8))
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t sub_14BDBC(uint64_t result, __int16 a2)
{
  if (((HIBYTE(a2) - a2) & 0xFFFFFF00) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v2 = result;
  if (v2 <= a2)
  {
    v2 = a2;
  }

  if (v2 > HIBYTE(a2))
  {
    v2 = HIBYTE(a2);
  }

  v3 = (v2 - a2) / (HIBYTE(a2) - a2) * 100.0;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_11;
  }

  if (v3 <= -1.0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v3 < 256.0)
  {
    return v3;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for UInt8Range(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if ((a2 + 0xFFFF) < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 0xFFFF;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        return 0;
      }

      return (*a1 | (v4 << 16)) - 0xFFFF;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 0xFFFF;
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for UInt8Range(uint64_t result, int a2, int a3)
{
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if ((a3 + 0xFFFF) < 0xFF0000)
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
    v6 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        return result;
      case 2:
        *(result + 2) = v6;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *(result + 2) = v6;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *(result + 2) = 0;
      break;
    case 2:
      *(result + 2) = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x14BF78);
    case 4:
      *(result + 2) = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_14BFB0()
{
  v1 = sub_169474();
  sub_9F48();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_A138();
  v7 = v6 - v5;
  v8 = sub_5758(&qword_1E9190, &qword_172AE0);
  __chkstk_darwin(v8 - 8);
  v10 = &v26 - v9;
  v11 = sub_169504();
  sub_9F48();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_A138();
  v17 = v16 - v15;
  v18 = sub_169464();
  sub_8A130(v18, v10);

  if (sub_9E2C(v10, 1, v11) == 1)
  {
    sub_8F5BC(v10);
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_16ACF4(40);

    v26 = 0xD000000000000026;
    v27 = 0x80000000001916B0;
    (*(v3 + 16))(v7, v0, v1);
    v28._countAndFlagsBits = sub_14C5BC(v7, &type metadata accessor for Siri_Nlu_External_UserParse, &qword_1EEF30, &type metadata accessor for Siri_Nlu_External_UserParse, &protocol conformance descriptor for Siri_Nlu_External_UserParse);
    sub_16A744(v28);

    v20 = v26;
    v19 = v27;
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v21 = sub_16A584();
    sub_9DA0(v21, qword_1E65C0);
    sub_16A9A4();
    sub_14C740();
    sub_386D8(v22, 1uLL, 0xD000000000000085, 0x8000000000191620, v23, 0xE90000000000006BLL, 27, v20, v19);

    return 0;
  }

  else
  {
    (*(v13 + 32))(v17, v10, v11);
    v24 = sub_14C2C8();
    (*(v13 + 8))(v17, v11);
  }

  return v24;
}

uint64_t sub_14C2C8()
{
  sub_169504();
  sub_9F48();
  __chkstk_darwin(v0);
  sub_A138();
  v1 = sub_169614();
  if (sub_11B48C())
  {
    sub_1487EC();
    if ((v1 & 0xC000000000000001) != 0)
    {
      v2 = sub_16AD04();
    }

    else
    {
      v2 = *(v1 + 32);
    }
  }

  else
  {

    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v4 = sub_16A584();
    sub_9DA0(v4, qword_1E65C0);
    sub_16A9A4();
    sub_14C740();
    sub_14C754();
    sub_386D8(v5, v6, v7, v8, v9, v10, 42, v11, 0x8000000000191710);
    return 0;
  }

  return v2;
}

uint64_t sub_14C5BC(uint64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v9 = a2(0);
  v13[3] = v9;
  v13[4] = sub_14C6F8(a3, a4, a5);
  v10 = sub_10888(v13);
  (*(*(v9 - 8) + 32))(v10, a1, v9);
  sub_169604();
  sub_1695F4();
  v11 = sub_16A784();
  sub_D13C(v13);
  return v11;
}

uint64_t sub_14C6F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_14C76C(char a1, uint64_t a2)
{
  type metadata accessor for CarCommandsDirectInvocationIntent(0);
  v4 = swift_allocObject();
  sub_14CDFC();
  *(v4 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin33CarCommandsDirectInvocationIntent_identifier) = a1;

  *(v4 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin33CarCommandsDirectInvocationIntent_payload) = sub_1693C4();

  switch(a1)
  {
    case 2:
      sub_1693D4();
      sub_955E4();
      (*(v20 + 8))(a2);
      v18 = 1;
      goto LABEL_14;
    case 3:
    case 4:
      v5 = sub_1693C4();
      if (!v5)
      {
        sub_1693D4();
        sub_955E4();
        (*(v23 + 8))(a2);
        sub_14D558();
        goto LABEL_12;
      }

      v6 = v5;
      v7 = sub_14D514();
      sub_13F530(v7, v8, v6, v9);

      sub_1693D4();
      sub_955E4();
      v11 = (*(v10 + 8))(a2);
      if (!v29)
      {
LABEL_12:
        sub_99140(v28, &qword_1E6A10, &unk_1744D0);
        goto LABEL_13;
      }

      if (sub_14D538(v11, v12, v13, &type metadata for Bool, v14, v15, v16, v17, v25, v26, SWORD2(v26), SBYTE6(v26), SHIBYTE(v26), v28[0]) && (v27 & 1) != 0)
      {
        v18 = 2;
        goto LABEL_14;
      }

LABEL_13:
      v18 = 4;
LABEL_14:
      *(v4 + 16) = v18;
      return v4;
    case 5:
      sub_1693D4();
      sub_955E4();
      (*(v21 + 8))(a2);
      v18 = 5;
      goto LABEL_14;
    case 6:
      sub_1693D4();
      sub_955E4();
      (*(v19 + 8))(a2);
      v18 = 9;
      goto LABEL_14;
    default:
      sub_1693D4();
      sub_955E4();
      (*(v22 + 8))(a2);
      return v4;
  }
}

uint64_t sub_14C9DC(uint64_t a1)
{
  v2 = sub_169004();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_5758(&qword_1E6048, &qword_16D890);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  type metadata accessor for CarCommandsDirectInvocationIntent(0);
  v9 = swift_allocObject();
  sub_14CDFC();
  (*(v3 + 16))(v8, a1, v2);
  sub_5370(v8, 0, 1, v2);
  v10 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin33CarCommandsDirectInvocationIntent_confirmationResponse;
  swift_beginAccess();
  sub_14D4A0(v8, v9 + v10);
  swift_endAccess();
  (*(v3 + 104))(v5, enum case for ConfirmationResponse.confirmed(_:), v2);
  LOBYTE(a1) = sub_168FF4();
  (*(v3 + 8))(v5, v2);
  *(v9 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin33CarCommandsDirectInvocationIntent_isRejectedResponse) = (a1 & 1) == 0;
  *(v9 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin33CarCommandsDirectInvocationIntent_isConfirmedResponse) = a1 & 1;
  return v9;
}

uint64_t sub_14CC04(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin33CarCommandsDirectInvocationIntent_payload;
  v4 = *(v2 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin33CarCommandsDirectInvocationIntent_payload);
  if (!v4)
  {
    sub_14D558();
    goto LABEL_6;
  }

  sub_13F530(a1, a2, v4, &v25);

  if (!v26)
  {
LABEL_6:
    sub_99140(&v25, &qword_1E6A10, &unk_1744D0);
    goto LABEL_7;
  }

  if (sub_14D564(v7, v8, v9, &type metadata for String, v10, v11, v12, v13, v23, v24, v25))
  {
    return v23;
  }

LABEL_7:
  v14 = *(v2 + v3);
  if (!v14)
  {
    sub_14D558();
    goto LABEL_12;
  }

  sub_13F530(0x79654B65756C6176, 0xE800000000000000, v14, &v25);

  if (!v26)
  {
LABEL_12:
    sub_99140(&v25, &qword_1E6A10, &unk_1744D0);
    return 0;
  }

  if (sub_14D564(v15, v16, v17, &type metadata for String, v18, v19, v20, v21, v23, v24, v25))
  {
    return v23;
  }

  return 0;
}

uint64_t CarCommandsDirectInvocationIntent.deinit()
{
  sub_99140(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin33CarCommandsDirectInvocationIntent_confirmationResponse, &qword_1E6048, &qword_16D890);

  return v0;
}

uint64_t CarCommandsDirectInvocationIntent.__deallocating_deinit()
{
  sub_99140(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin33CarCommandsDirectInvocationIntent_confirmationResponse, &qword_1E6048, &qword_16D890);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_14CDFC()
{
  *(v0 + 16) = 26;
  v1 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin33CarCommandsDirectInvocationIntent_confirmationResponse;
  v2 = sub_169004();
  sub_5370(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin33CarCommandsDirectInvocationIntent_isRejectedResponse) = 0;
  *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin33CarCommandsDirectInvocationIntent_isConfirmedResponse) = 0;
  *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin33CarCommandsDirectInvocationIntent_isCancelledResponse) = 0;
  *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin33CarCommandsDirectInvocationIntent_payload) = 0;
  *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin33CarCommandsDirectInvocationIntent_identifier) = 7;
  return v0;
}

uint64_t sub_14CEAC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin33CarCommandsDirectInvocationIntent_confirmationResponse;
  swift_beginAccess();
  return sub_109F8(v3 + v4, a1);
}

uint64_t sub_14CF68()
{
  v1 = CarCommandsUseCase.rawValue.getter(*(v0 + 16));
  if (v1 == 0x536B636F4C746573 && v2 == 0xED00007375746174)
  {
  }

  else
  {
    v4 = sub_14D584(v1);

    if ((v4 & 1) == 0)
    {
      return 2;
    }
  }

  v5 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin33CarCommandsDirectInvocationIntent_payload);
  if (!v5)
  {
    sub_14D558();
    goto LABEL_14;
  }

  v6 = sub_14D514();
  sub_13F530(v6, v7, v5, v8);

  if (!v21)
  {
LABEL_14:
    sub_99140(v20, &qword_1E6A10, &unk_1744D0);
    return 2;
  }

  if (sub_14D538(v9, v10, v11, &type metadata for Bool, v12, v13, v14, v15, v17, v18, SWORD2(v18), SBYTE6(v18), SHIBYTE(v18), v20[0]))
  {
    return v19;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_14D08C()
{
  v1 = CarCommandsUseCase.rawValue.getter(*(v0 + 16));
  if (v1 == 0x6B6E757254746573 && v2 == 0xEE00737574617453)
  {
  }

  else
  {
    v4 = sub_14D584(v1);

    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin33CarCommandsDirectInvocationIntent_payload);
  if (!v6)
  {
    sub_14D558();
    goto LABEL_14;
  }

  v7 = sub_14D514();
  sub_13F530(v7, v8, v6, v9);

  if (!v21)
  {
LABEL_14:
    sub_99140(v20, &qword_1E6A10, &unk_1744D0);
    return 2;
  }

  if (sub_14D538(v10, v11, v12, &type metadata for Bool, v13, v14, v15, v16, v17, v18, SWORD2(v18), SBYTE6(v18), SHIBYTE(v18), v20[0]) && (v19 & 1) != 0)
  {
    return 1;
  }

  return 2;
}

Class sub_14D1C4()
{
  if (CarCommandsUseCase.rawValue.getter(*(v0 + 16)) == 0x616D696C43746573 && v1 == 0xEA00000000006574)
  {
  }

  else
  {
    v3 = sub_16AE54();

    if ((v3 & 1) == 0)
    {
      return 0;
    }
  }

  v4 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin33CarCommandsDirectInvocationIntent_payload);
  if (!v4)
  {
    sub_14D558();
    goto LABEL_13;
  }

  v5 = sub_14D514();
  sub_13F530(v5, v6, v4, v7);

  if (!v19)
  {
LABEL_13:
    sub_99140(v18, &qword_1E6A10, &unk_1744D0);
    return 0;
  }

  if (sub_14D538(v8, v9, v10, &type metadata for Bool, v11, v12, v13, v14, v16, v17, SWORD2(v17), SBYTE6(v17), SHIBYTE(v17), v18[0]))
  {
    return sub_16A824().super.super.isa;
  }

  return 0;
}

uint64_t sub_14D2F0()
{
  v1 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin33CarCommandsDirectInvocationIntent_identifier);
  if (v1 == 4)
  {
    return 1;
  }

  else
  {
    return 2 * (v1 == 3);
  }
}

uint64_t type metadata accessor for CarCommandsDirectInvocationIntent(uint64_t a1)
{
  result = qword_1EEF78;
  if (!qword_1EEF78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_14D38C(uint64_t a1)
{
  sub_14D448(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_14D448(uint64_t a1)
{
  if (!qword_1EEF88)
  {
    sub_169004();
    v1 = sub_16AB24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EEF88);
    }
  }
}

uint64_t sub_14D4A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1E6048, &qword_16D890);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_14D538(void x0_0, void x1_0, void x2_0, uint64_t a1, void x4_0, void x5_0, void x6_0, void x7_0, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8)
{

  return swift_dynamicCast();
}

uint64_t sub_14D564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{

  return swift_dynamicCast();
}

uint64_t sub_14D584(uint64_t a1)
{

  return sub_16AE54();
}

uint64_t type metadata accessor for CarCommandsError(uint64_t a1)
{
  result = qword_1EF228;
  if (!qword_1EF228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_14D64C(uint64_t a1)
{
  sub_14D6E8();
  if (v1 <= 0x3F)
  {
    sub_14D710();
    if (v2 <= 0x3F)
    {
      sub_14D758();
      if (v3 <= 0x3F)
      {
        sub_14D780();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void *sub_14D6E8()
{
  result = qword_1EF238;
  if (!qword_1EF238)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_1EF238);
  }

  return result;
}

void sub_14D710()
{
  if (!qword_1EF240)
  {
    v0 = sub_1693E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EF240);
    }
  }
}

void *sub_14D758()
{
  result = qword_1EF248;
  if (!qword_1EF248)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_1EF248);
  }

  return result;
}

void *sub_14D780()
{
  result = qword_1EF250;
  if (!qword_1EF250)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_1EF250);
  }

  return result;
}

uint64_t sub_14D7AC()
{
  v1 = sub_1693E4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CarCommandsError(0);
  __chkstk_darwin(v5);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_548D0(v0, v7);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v2 + 32))(v4, v7, v1);
      sub_14DA48();
      sub_16ACF4(20);
      v23._object = 0x80000000001918B0;
      v23._countAndFlagsBits = 0xD000000000000011;
      sub_16A744(v23);
      sub_16AD84();
      v24._countAndFlagsBits = 34;
      v24._object = 0xE100000000000000;
      sub_16A744(v24);
      v8 = v19;
      (*(v2 + 8))(v4, v1);
      break;
    case 2u:
      v9 = *v7;
      v10 = v7[1];
      sub_14DA48();
      sub_16ACF4(23);

      sub_14DA58();
      v19 = v12 + 3;
      v20 = v11;
      v21._countAndFlagsBits = v9;
      v21._object = v10;
      sub_16A744(v21);

      v13._countAndFlagsBits = 34;
      v13._object = 0xE100000000000000;
      goto LABEL_5;
    case 3u:
      v14 = *v7;
      v15 = v7[1];
      sub_14DA48();
      sub_16ACF4(34);

      sub_14DA58();
      v19 = v17 + 13;
      v20 = v16;
      v22._countAndFlagsBits = v14;
      v22._object = v15;
      sub_16A744(v22);

      v13._countAndFlagsBits = 10530;
      v13._object = 0xE200000000000000;
LABEL_5:
      sub_16A744(v13);
      v8 = v19;
      break;
    default:
      v8 = *v7;
      break;
  }

  return v8;
}

uint64_t sub_14DAB0()
{
  v1 = sub_1693E4();
  v2 = sub_151F64(v1, &v86);
  v79 = v3;
  __chkstk_darwin(v2);
  sub_A138();
  v78 = (v5 - v4);
  v6 = sub_168FE4();
  v7 = sub_151F64(v6, &v87);
  v9 = v8;
  __chkstk_darwin(v7);
  sub_A138();
  v12 = v11 - v10;
  v13 = *(v0 + 176);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v14 = sub_16A584();
  sub_9DA0(v14, qword_1E65C0);
  v15 = sub_16A9A4();
  v84._countAndFlagsBits = 0xD00000000000008BLL;
  v84._object = 0x80000000001918D0;
  v81._countAndFlagsBits = 47;
  v81._object = 0xE100000000000000;
  sub_D030();
  v16 = sub_16AB34();
  v17 = sub_15AE4(v16);
  v19 = v18;

  if (v19)
  {
    v84._object = v19;
    v88._countAndFlagsBits = 32;
    v88._object = 0xE100000000000000;
    sub_16A744(v88);
    v89._countAndFlagsBits = 0xD000000000000020;
    v89._object = 0x8000000000189940;
    sub_16A744(v89);
    v21 = v19;
    v20 = v17;
  }

  else
  {
    v20 = 0xD000000000000020;
    v21 = 0x8000000000189940;
  }

  v84._countAndFlagsBits = v20;
  v84._object = v21;
  v81._countAndFlagsBits = 58;
  v81._object = 0xE100000000000000;
  v80[0] = &dword_18;
  v90._countAndFlagsBits = sub_16AE24();
  sub_16A744(v90);

  v91._countAndFlagsBits = 58;
  v91._object = 0xE100000000000000;
  sub_16A744(v91);

  sub_378D0(v13);
  if (v22)
  {
    sub_151F04();
    v81._countAndFlagsBits = v23;
    v81._object = v24;
    sub_16A744(v92);

    sub_16A744(v81);
  }

  v25 = v84;
  sub_138970();
  v26 = sub_16A574();
  if (os_log_type_enabled(v26, v15))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v81._countAndFlagsBits = v28;
    *v27 = 136315138;
    v29 = sub_15BC8(v25._countAndFlagsBits, v25._object, &v81._countAndFlagsBits);

    *(v27 + 4) = v29;
    _os_log_impl(&dword_0, v26, v15, "%s", v27, 0xCu);
    sub_D13C(v28);
    sub_151F7C();
  }

  else
  {
  }

  sub_169274();
  v30 = sub_169244();
  sub_151FB0();
  sub_169264();
  v31 = sub_168FD4();
  v33 = v32;
  v34 = *(v9 + 8);
  v34(v12);
  if (sub_D95F4(v30, v31, v33) > 0xF7u)
  {
    type metadata accessor for CarCommandsError(0);
    sub_11D28();
    swift_allocError();
    v36 = v35;
    sub_151FB0();
    sub_169264();
    v37 = sub_168FD4();
    v39 = v38;
    v34(v12);
    *v36 = v37;
    v36[1] = v39;
    sub_151FA4();
    swift_storeEnumTagMultiPayload();
    sub_16A9A4();
    swift_getErrorValue();
    sub_16AEB4();
    v77 = v40;
    sub_151EC8();
    sub_138970();
    sub_386D8(v41, v42, v43, v44, v45, v46, v47, v48, v77);

    return sub_168C74();
  }

  v49 = sub_169244();
  sub_151FB0();
  sub_169264();
  sub_168FD4();
  v34(v12);
  v50 = sub_16A644();

  v51 = [v49 valueForKey:v50];

  if (v51)
  {
    sub_16AB64();
    swift_unknownObjectRelease();
  }

  else
  {
    v81 = 0;
    v82 = 0u;
  }

  v84 = v81;
  v85 = v82;
  sub_5758(&qword_1E6A10, &unk_1744D0);
  sub_5758(&qword_1EC370, &unk_177710);
  if (!swift_dynamicCast())
  {
    v84._countAndFlagsBits = 0;
    v84._object = 0xE000000000000000;
    sub_16ACF4(57);
    v93._countAndFlagsBits = 0xD00000000000002BLL;
    v93._object = 0x8000000000191A40;
    sub_16A744(v93);
    sub_151FB0();
    sub_169264();
    v56 = sub_168FD4();
    v58 = v57;
    v34(v12);
    v94._countAndFlagsBits = v56;
    v94._object = v58;
    sub_16A744(v94);

    v95._countAndFlagsBits = 0x726F6E6749202E22;
    v95._object = 0xEC0000002E676E69;
    sub_16A744(v95);
    object = v84._object;
    sub_16A9A4();
    sub_151EC8();
    sub_138970();
    sub_386D8(v60, v61, v62, v63, v64, v65, v66, v67, object);

    return sub_168C74();
  }

  sub_169384();
  sub_86E4(v78, &_swiftEmptySetSingleton, v80);
  (*(v79 + 8))(v78);
  if (!v80[3])
  {
    sub_109A0(v80, &qword_1E5F80, &unk_16E7E0);
    v81 = 0;
    v82 = 0u;
    v83 = 0;
    goto LABEL_26;
  }

  sub_5758(&qword_1E5F90, &qword_170270);
  sub_5758(&qword_1E5F98, &unk_16D420);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v83 = 0;
    v81 = 0;
    v82 = 0u;
    goto LABEL_26;
  }

  if (!*(&v82 + 1))
  {
LABEL_26:
    sub_109A0(&v81, &qword_1E5F88, &unk_16D410);
    sub_16A9A4();
    sub_151EC8();
    sub_138970();
    sub_386D8(v68, v69, v70, v71, v72, v73, v74, v75, 0x8000000000180180);
    return sub_168C74();
  }

  sub_D124(&v81._countAndFlagsBits, &v84);
  sub_D084(&v84, *(&v85 + 1));
  v52 = sub_37740();
  if (v53(v52) & 1) != 0 || (sub_D084(&v84, *(&v85 + 1)), v54 = sub_37740(), (v55(v54)))
  {
    sub_168C54();
  }

  else
  {
    sub_168C64();
  }

  return sub_D13C(&v84);
}

uint64_t sub_14E368(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v2[13] = *v1;
  sub_10B4C();
  return _swift_task_switch(v3);
}

uint64_t sub_14E3BC()
{
  v2 = *(*(v0 + 96) + 176);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v3 = sub_16A584();
  sub_9DA0(v3, qword_1E65C0);
  v4 = sub_16A9A4();
  *(v0 + 16) = 0xD00000000000008BLL;
  *(v0 + 24) = 0x80000000001918D0;
  *(v0 + 48) = 47;
  *(v0 + 56) = 0xE100000000000000;
  sub_D030();
  v5 = sub_16AB34();
  sub_15AE4(v5);
  sub_151F98();

  if (v1)
  {
    v28._countAndFlagsBits = 32;
    v28._object = 0xE100000000000000;
    sub_16A744(v28);
    v29._countAndFlagsBits = 0xD00000000000002FLL;
    v29._object = 0x8000000000191A10;
    sub_16A744(v29);
  }

  *(v0 + 16) = 50;
  v30._countAndFlagsBits = sub_16AE24();
  sub_16A744(v30);

  v31._countAndFlagsBits = 58;
  v31._object = 0xE100000000000000;
  sub_16A744(v31);

  sub_378D0(v2);
  if (v6)
  {
    sub_151F04();
    v25._countAndFlagsBits = v7;
    v25._object = v8;
    sub_16A744(v32);

    sub_16A744(v25);
  }

  v9 = sub_16A574();
  if (os_log_type_enabled(v9, v4))
  {
    v10 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v10 = 136315138;
    v11 = sub_151FA4();
    v14 = sub_15BC8(v11, v12, v13);

    *(v10 + 4) = v14;
    sub_151FBC(&dword_0, v15, v16, "%s");
    sub_D13C(v26);

    sub_151F7C();
  }

  else
  {
  }

  sub_169274();
  v17 = sub_169254();
  v18 = [v17 disambiguationItems];

  v19 = sub_16A7D4();
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = v19 + 32;
    do
    {
      sub_16138(v21, v0 + 16);
      sub_151E50((v0 + 16), (v0 + 48));
      sub_95578();
      if ((swift_dynamicCast() & 1) != 0 && *(v0 + 80))
      {
        sub_16A7B4();
        if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_16A7F4();
        }

        sub_151FA4();
        sub_16A814();
      }

      v21 += 32;
      --v20;
    }

    while (v20);
  }

  sub_5758(&qword_1EF308, qword_17A970);
  swift_allocObject();
  v22 = sub_169314();
  v23 = *(v0 + 8);

  return v23(v22);
}

uint64_t sub_14E7C4()
{
  sub_D2DC();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v5 = *v0;
  v1[8] = *v0;
  v1[9] = *(v5 + 416);
  v6 = sub_168EC4();
  v1[10] = v6;
  sub_10AEC(v6);
  v1[11] = v7;
  v1[12] = sub_D3C8();
  v8 = sub_1693E4();
  v1[13] = v8;
  sub_10AEC(v8);
  v1[14] = v9;
  v1[15] = sub_D3C8();
  v10 = sub_168FE4();
  v1[16] = v10;
  sub_10AEC(v10);
  v1[17] = v11;
  v1[18] = sub_D3C8();
  sub_10B4C();

  return _swift_task_switch(v12);
}

uint64_t sub_14E94C()
{
  v46 = v0;
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v41 = v0[7];
  v42 = *(v41 + 176);
  v44 = 0;
  v45 = 0xE000000000000000;
  sub_16ACF4(40);
  v48._countAndFlagsBits = 0xD000000000000011;
  v48._object = 0x80000000001898E0;
  sub_16A744(v48);
  sub_169274();
  v4 = sub_169244();
  v0[2] = v4;
  swift_getWitnessTable();
  sub_16AE44();

  v49._countAndFlagsBits = 0xD000000000000013;
  v49._object = 0x8000000000189900;
  sub_16A744(v49);
  sub_169264();
  v5 = sub_168FD4();
  v7 = v6;
  v8 = *(v2 + 8);
  v8(v1, v3);
  v50._countAndFlagsBits = v5;
  v50._object = v7;
  sub_16A744(v50);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v9 = v0[18];
  v10 = v0[16];
  v11 = sub_16A584();
  sub_9DA0(v11, qword_1E65C0);
  v12 = sub_16A9A4();
  sub_386D8(v12, v42, 0xD00000000000008BLL, 0x80000000001918D0, 0xD00000000000003ELL, 0x80000000001919D0, 59, v44, v45);

  v13 = sub_169244();
  sub_169264();
  v14 = sub_168FD4();
  v16 = v15;
  v8(v9, v10);
  v17 = sub_D95F4(v13, v14, v16);
  v18 = v0[15];
  if (v17 <= 0xF7u)
  {
    v27 = v17;
    v28 = v0[14];
    v29 = v0[9];
    v30 = v0[8];
    v40 = v0[13];
    v31 = sub_169244();
    sub_169384();
    v32 = *(v30 + 432);
    v33 = (*(v32 + 8))(v18, v27, v29, v32);

    (*(v28 + 8))(v18, v40);
    v34 = *(v41 + 176);
    v44 = 0;
    v45 = 0xE000000000000000;
    sub_16ACF4(18);
    v51._countAndFlagsBits = 0xD000000000000010;
    v51._object = 0x8000000000189920;
    sub_16A744(v51);
    v0[3] = v33;
    sub_16AE44();
    v35 = sub_16A9A4();
    sub_386D8(v35, v34, 0xD00000000000008BLL, 0x80000000001918D0, 0xD00000000000003ELL, 0x80000000001919D0, 67, v44, v45);

    (*(v32 + 24))(&v44, v27, v29, v32);
    v36 = v33;
    sub_168EB4();
    sub_169014();

    v37 = sub_37740();
    v38(v37);

    sub_D37C();
  }

  else
  {
    v19 = v0[18];
    v43 = v0[16];
    type metadata accessor for CarCommandsError(0);
    sub_11D28();
    v20 = v8;
    swift_allocError();
    v22 = v21;
    sub_169264();
    v23 = sub_168FD4();
    v25 = v24;
    v20(v19, v43);
    *v22 = v23;
    v22[1] = v25;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_D37C();
  }

  return v26();
}

uint64_t sub_14EE84()
{
  sub_D2DC();
  v1[47] = v2;
  v1[48] = v0;
  v1[46] = v3;
  v1[49] = *v0;
  v4 = sub_16A0C4();
  v1[50] = v4;
  sub_10AEC(v4);
  v1[51] = v5;
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v6 = sub_168E14();
  v1[54] = v6;
  sub_10AEC(v6);
  v1[55] = v7;
  v1[56] = sub_D3C8();
  v8 = sub_168FE4();
  v1[57] = v8;
  sub_10AEC(v8);
  v1[58] = v9;
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v10 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v10);
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v11 = type metadata accessor for MultipleCarKeyMatchesParameters(0);
  v1[64] = v11;
  sub_D414(v11);
  v1[65] = sub_D3C8();
  sub_10B4C();

  return _swift_task_switch(v12);
}

uint64_t sub_14F088()
{
  v2 = *(v0[48] + 176);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v3 = sub_16A584();
  sub_9DA0(v3, qword_1E65C0);
  v4 = sub_16A9A4();
  v0[40] = 0xD00000000000008BLL;
  v0[41] = 0x80000000001918D0;
  v0[42] = 47;
  v0[43] = 0xE100000000000000;
  sub_D030();
  v5 = sub_16AB34();
  sub_15AE4(v5);
  sub_151F98();

  if (v1)
  {
    v105._countAndFlagsBits = 32;
    v105._object = 0xE100000000000000;
    sub_16A744(v105);
    v106._countAndFlagsBits = 0xD00000000000003ALL;
    v106._object = 0x8000000000191960;
    sub_16A744(v106);
  }

  v0[44] = 75;
  v107._countAndFlagsBits = sub_16AE24();
  sub_16A744(v107);

  v108._countAndFlagsBits = 58;
  v108._object = 0xE100000000000000;
  sub_16A744(v108);

  sub_378D0(v2);
  if (v6)
  {
    sub_151F04();
    v102._countAndFlagsBits = v7;
    v102._object = v8;
    sub_16A744(v109);

    sub_16A744(v102);
  }

  v9 = sub_16A574();
  if (os_log_type_enabled(v9, v4))
  {
    v10 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    *v10 = 136315138;
    v11 = sub_151FA4();
    v14 = sub_15BC8(v11, v12, v13);

    *(v10 + 4) = v14;
    sub_151FBC(&dword_0, v15, v16, "%s");
    sub_D13C(v103);

    sub_151F7C();
  }

  else
  {
  }

  sub_169274();
  v17 = sub_169254();
  v18 = [v17 disambiguationItems];

  v19 = sub_16A7D4();
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = v19 + 32;
    v22 = _swiftEmptyArrayStorage;
    do
    {
      sub_16138(v21, (v0 + 17));
      sub_16138((v0 + 17), (v0 + 21));
      sub_95578();
      if (swift_dynamicCast())
      {
        v23 = v0[45];
        v24 = [v23 spokenPhrase];

        v25 = sub_16A664();
        v27 = v26;

        sub_D13C(v0 + 17);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1084D8();
          v22 = v30;
        }

        v28 = v22[2];
        if (v28 >= v22[3] >> 1)
        {
          sub_1084D8();
          v22 = v31;
        }

        v22[2] = v28 + 1;
        v29 = &v22[2 * v28];
        v29[4] = v25;
        v29[5] = v27;
      }

      else
      {
        sub_D13C(v0 + 17);
      }

      v21 += 32;
      --v20;
    }

    while (v20);
  }

  else
  {

    v22 = _swiftEmptyArrayStorage;
  }

  v0[66] = v22;
  v32 = sub_169234();
  v33 = sub_11F404(v32);

  if ((v33 & 1) != 0 && Array<A>.containsOnlyMultiplesOfSameString.getter(v22))
  {
    v34 = v0[48];
    sub_3CF7C(v34 + 136, (v0 + 31));
    sub_D084((v34 + 136), *(v34 + 160));
    if (sub_11B5C0())
    {
      if (v22[2])
      {
        v36 = v22[4];
        v35 = v22[5];
        v0[67] = v35;

        v37 = sub_F30B0();
        v0[68] = v38;
        if (v38)
        {
          v39 = v37;
          v40 = v38;
          v41 = v0[48];
          type metadata accessor for AppPunchoutSnippetFactory();
          v42 = v22[2];

          sub_3CF7C(v41 + 184, (v0 + 37));
          sub_10824(v41 + 184, (v0 + 12));
          swift_task_alloc();
          sub_D3E0();
          v0[69] = v43;
          *v43 = v44;
          v43[1] = sub_14FC24;
          v45 = v0[46];

          return sub_4F114(v45, v39, v40, v36, v35, v42, 0xD000000000000012, 0x800000000017F6B0);
        }
      }

      type metadata accessor for CarCommandsError(0);
      sub_11D28();
      swift_allocError();
      *v93 = 0xD000000000000023;
      v93[1] = 0x80000000001919A0;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_151E78();

      sub_D37C();
      sub_151EE4();

      __asm { BRAA            X1, X16 }
    }

    v68 = [objc_allocWithZone(SAAppsLaunchApp) init];
    v0[71] = v68;
    v69 = sub_16A644();
    [v68 setLaunchId:v69];

    sub_F30B0();
    v71 = v70;
    sub_16AAE4();
    if (v72)
    {
      sub_16A6E4();

      v73 = 0;
    }

    else
    {
      v73 = 1;
    }

    v74 = 1;
    sub_5370(v0[63], v73, 1, v0[50]);
    if (v71)
    {
      sub_16A6E4();

      v74 = 0;
    }

    v75 = v0[50];
    sub_5370(v0[62], v74, 1, v75);
    sub_16A6E4();
    sub_148950();
    result = sub_5370(v76, v77, v78, v75);
    v79 = v22[2];
    if (v79)
    {
      v80 = v0[65];
      v81 = v0[63];
      v82 = v0[64];
      v83 = v0[62];
      v84 = v0[50];
      v101 = v0[48];
      v85 = v79;

      sub_16A6E4();

      sub_148950();
      sub_5370(v86, v87, v88, v84);
      sub_16304(v81, v80);
      sub_16304(v83, v80 + *(v82 + 20));
      v89 = v80 + *(v82 + 28);
      *v89 = v85;
      *(v89 + 8) = 0;
      sub_D084((v101 + qword_1F0E38), *(v101 + qword_1F0E38 + 24));
      v90 = swift_task_alloc();
      v0[72] = v90;
      *v90 = v0;
      v90[1] = sub_14FDD8;
      sub_151EE4();

      return sub_156D8C(v91);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v47 = v0[61];
    v48 = v0[57];
    v49 = v0[58];
    v50 = v0[48];
    v51 = sub_169244();
    sub_169264();
    v52 = sub_168FD4();
    v54 = v53;
    v100 = *(v49 + 8);
    v100(v47, v48);
    v99 = sub_D95F4(v51, v52, v54);
    sub_3CF7C(v50 + 136, (v0 + 25));
    sub_D084((v50 + 136), *(v50 + 160));
    if (sub_11B5C0())
    {
      v55 = v0[61];
      v56 = v0[57];
      v57 = v0[53];
      v58 = v0[51];
      v96 = v0[50];
      v97 = v0[60];
      v98 = v0[48];
      sub_169264();
      sub_168FD4();
      sub_151F98();
      v100(v55, v56);
      sub_16A6E4();

      sub_169234();
      sub_1508B4(v22, v57, v99);

      (*(v58 + 8))(v57, v96);
      type metadata accessor for DisambiguationSnippetFactory();
      sub_169264();
      sub_168FD4();
      sub_151F98();
      v0[77] = v59;
      v100(v97, v56);
      sub_3CF7C(v98 + 184, (v0 + 28));
      sub_10824(v98 + 184, (v0 + 2));
      swift_task_alloc();
      sub_D3E0();
      v0[78] = v60;
      *v60 = v61;
      v60[1] = sub_1501FC;
      sub_151EE4();

      return sub_D0688();
    }

    else
    {
      v63 = v0[59];
      v64 = v0[57];
      sub_169264();
      sub_168FD4();
      v100(v63, v64);
      sub_16A6E4();

      v0[80] = sub_169234();
      swift_task_alloc();
      sub_D3E0();
      v0[81] = v65;
      *v65 = v66;
      v65[1] = sub_15040C;
      sub_151EE4();

      return sub_150A6C();
    }
  }

  return result;
}

uint64_t sub_14FC24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_124EFC();
  sub_30C80();
  v12 = *v11;
  sub_D254();
  *v13 = v12;
  *v13 = *v11;
  *(v12 + 560) = v10;

  sub_D13C((v12 + 96));

  if (v10)
  {
    sub_10B4C();
    sub_124EE4();

    return _swift_task_switch(v14);
  }

  else
  {
    sub_151F3C();

    sub_124ED4();
    sub_124EE4();

    return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
  }
}

uint64_t sub_14FDD8()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 584) = v4;
  *(v2 + 592) = v0;

  sub_10B4C();

  return _swift_task_switch(v5);
}

uint64_t sub_14FEE0()
{
  sub_D2DC();
  v1 = *(v0 + 384);
  sub_3CF7C(v1 + 184, v0 + 272);
  sub_10824(v1 + 184, v0 + 56);
  swift_task_alloc();
  sub_D3E0();
  *(v0 + 600) = v2;
  *v2 = v3;
  v2[1] = sub_14FF90;

  return sub_11A570();
}

uint64_t sub_14FF90()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 608) = v0;

  sub_D13C((v3 + 56));
  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_150094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();

  sub_151EA0();
  sub_151E78();

  sub_D37C();
  sub_10B0C();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t sub_150144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_124EFC();
  sub_30C80();
  v11 = *(v10 + 568);

  sub_151EA0();
  sub_151F14();

  sub_D37C();
  sub_124EE4();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_1501FC()
{
  v2 = *v1;
  sub_D254();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 632) = v0;

  sub_D13C((v2 + 16));

  sub_10B4C();

  return _swift_task_switch(v4);
}

uint64_t sub_150354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_124EFC();
  sub_30C80();
  (*(v10[55] + 8))(v10[56], v10[54]);
  sub_151F14();

  sub_D37C();
  sub_124EE4();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_15040C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_124EFC();
  sub_30C80();
  v12 = *v11;
  v13 = *v11;
  sub_D254();
  *v14 = v13;
  *v14 = *v11;
  v13[82] = v10;

  (*(v12[51] + 8))(v12[52], v12[50]);

  if (v10)
  {
    sub_10B4C();
    sub_124EE4();

    return _swift_task_switch(v15);
  }

  else
  {
    sub_151F3C();

    sub_124ED4();
    sub_124EE4();

    return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
  }
}

uint64_t sub_150604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  sub_151E78();

  sub_D37C();
  sub_10B0C();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t sub_1506A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  v13 = *(v12 + 568);

  sub_151EA0();
  sub_151E78();

  sub_D37C();
  sub_10B0C();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_15075C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  (*(v12[55] + 8))(v12[56], v12[54]);
  sub_151E78();

  sub_D37C();
  sub_10B0C();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t sub_150814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  sub_151E78();

  sub_D37C();
  sub_10B0C();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t sub_1508B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5758(&qword_1E6300, &qword_16ECE0);
  v7 = sub_D414(v6);
  __chkstk_darwin(v7);
  v9 = &v25 - v8;
  v10 = type metadata accessor for NeedsDisambiguationParameters(0);
  sub_10AFC();
  __chkstk_darwin(v11);
  sub_A138();
  v14 = (v13 - v12);
  v15 = sub_11A928(a1, 0);
  sub_16A1B4();
  if (v16)
  {
    sub_16A6E4();

    v17 = sub_16A0C4();
    v18 = 0;
  }

  else
  {
    v17 = sub_16A0C4();
    v18 = 1;
  }

  sub_5370(v9, v18, 1, v17);
  v19 = *(v10 + 24);
  sub_16A0C4();
  (*(*(v17 - 8) + 16))(&v14[v19], a2, v17);
  sub_148950();
  sub_5370(v20, v21, v22, v17);
  *v14 = v15;
  sub_16304(v9, &v14[*(v10 + 20)]);
  sub_12C22C(a3, a1);
  sub_151E60();
  return sub_151DF8(v14, v23);
}

uint64_t sub_150A6C()
{
  sub_D2DC();
  *(v1 + 144) = v2;
  *(v1 + 152) = v0;
  *(v1 + 288) = v3;
  *(v1 + 128) = v4;
  *(v1 + 136) = v5;
  *(v1 + 120) = v6;
  v7 = sub_5758(&qword_1E5F78, &unk_16D400);
  sub_D414(v7);
  *(v1 + 160) = sub_D3C8();
  v8 = sub_168B74();
  sub_D414(v8);
  *(v1 + 168) = sub_D3C8();
  v9 = sub_1691E4();
  *(v1 + 176) = v9;
  sub_10AEC(v9);
  *(v1 + 184) = v10;
  *(v1 + 192) = sub_D3C8();
  v11 = sub_168E14();
  *(v1 + 200) = v11;
  sub_10AEC(v11);
  *(v1 + 208) = v12;
  *(v1 + 216) = sub_D3C8();
  v13 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v13);
  *(v1 + 224) = sub_D3C8();
  v14 = type metadata accessor for NeedsDisambiguationParameters(0);
  *(v1 + 232) = v14;
  sub_D414(v14);
  *(v1 + 240) = sub_D3C8();
  sub_10B4C();

  return _swift_task_switch(v15);
}

uint64_t sub_150C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_124EFC();
  sub_30C80();
  v11 = sub_11A928(v10[16], 0);
  sub_16A1B4();
  if (v12)
  {
    sub_16A6E4();

    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v15 = v10[29];
  v14 = v10[30];
  v16 = v10[28];
  v17 = v10[19];
  v18 = v10[17];
  v19 = sub_16A0C4();
  sub_5370(v16, v13, 1, v19);
  (*(*(v19 - 8) + 16))(&v14[*(v15 + 24)], v18, v19);
  sub_148950();
  sub_5370(v20, v21, v22, v19);
  *v14 = v11;
  sub_16304(v16, &v14[*(v15 + 20)]);
  sub_D084((v17 + qword_1F0E38), *(v17 + qword_1F0E38 + 24));
  v23 = swift_task_alloc();
  v10[31] = v23;
  *v23 = v10;
  v23[1] = sub_150D80;
  sub_124EE4();

  return sub_156EDC(v24);
}

uint64_t sub_150D80()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 256) = v4;
  *(v2 + 264) = v0;

  sub_10B4C();

  return _swift_task_switch(v5);
}

uint64_t sub_150E84()
{
  sub_30C80();
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);
  v4 = *(v0 + 160);
  v5 = *(v0 + 152);
  sub_12C22C(*(v0 + 288), *(v0 + 128));
  sub_3CF7C(v5 + 184, v0 + 96);
  sub_10824(v5 + 184, v0 + 16);
  sub_168B54();
  sub_169164();
  sub_1691A4();
  sub_1691C4();
  (*(v2 + 16))(v4, v1, v3);
  sub_148950();
  sub_5370(v6, v7, v8, v3);
  sub_1691B4();
  v9 = *(v0 + 40);
  v10 = *(v0 + 48);
  sub_D084((v0 + 16), v9);
  swift_task_alloc();
  sub_D3E0();
  *(v0 + 272) = v11;
  *v11 = v12;
  v11[1] = sub_150FF8;
  v13 = *(v0 + 256);
  v14 = *(v0 + 192);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v0 + 56, v13, v14, v9, v10);
}

uint64_t sub_150FF8()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 280) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_1510F4()
{
  sub_151E60();
  sub_151DF8(v0, v1);
  sub_151FDC();

  sub_D37C();

  return v2();
}

uint64_t sub_151194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  v13 = *(v12 + 256);
  v14 = *(v12 + 240);
  v15 = *(v12 + 216);
  v16 = *(v12 + 200);
  v17 = *(v12 + 208);
  v29 = *(v12 + 160);
  v18 = *(v12 + 120);
  (*(*(v12 + 184) + 8))(*(v12 + 192), *(v12 + 176));
  sub_D124((v12 + 56), v18);
  sub_D13C((v12 + 16));

  (*(v17 + 8))(v15, v16);
  sub_151E60();
  sub_151DF8(v14, v19);

  sub_D37C();
  sub_10B0C();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, v29, a10, a11, a12);
}

uint64_t sub_151294()
{
  v1 = v0[32];
  v2 = v0[30];
  (*(v0[23] + 8))(v0[24], v0[22]);
  sub_D13C(v0 + 2);

  v3 = sub_37740();
  v4(v3);
  sub_151E60();
  sub_151DF8(v2, v5);
  sub_151FDC();

  sub_D37C();

  return v6();
}

void *sub_15139C()
{
  v0 = sub_3D044();
  sub_D13C((v0 + qword_1F0E38));
  return v0;
}

uint64_t sub_1513D4()
{
  v0 = sub_15139C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_151444(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = type metadata accessor for CommonNeedsDisambiguationFlowStrategy(0, a2[52], a2[53], a2[54]);

  return NeedsDisambiguationFlowStrategyAsync.paginationStyle(resolveRecord:)(a1, v5, a3);
}

uint64_t sub_1514CC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_151568;

  return sub_14E368(a2);
}

uint64_t sub_151568(uint64_t a1)
{
  sub_D358();
  v5 = v4;
  sub_D2A4();
  *v6 = v5;
  v7 = *v2;
  sub_D254();
  *v8 = v7;

  if (!v1)
  {
    **(v5 + 16) = a1;
  }

  sub_124ED4();

  return v9();
}

uint64_t sub_151660()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10A9C;

  return sub_14E7C4();
}

uint64_t sub_151714()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1039C;

  return sub_14EE84();
}

uint64_t sub_1517C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for CommonNeedsDisambiguationFlowStrategy(0, a4[52], a4[53], a4[54]);
  *v11 = v5;
  v11[1] = sub_10A9C;

  return NeedsDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:resolveRecord:)(a1, a2, a3, v12, a5);
}

uint64_t sub_1518A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for CommonNeedsDisambiguationFlowStrategy(0, a4[52], a4[53], a4[54]);
  *v11 = v5;
  v11[1] = sub_10A9C;

  return NeedsDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:resolveRecord:)(a1, a2, a3, v12, a5);
}

uint64_t sub_151988(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for CommonNeedsDisambiguationFlowStrategy(0, a3[52], a3[53], a3[54]);
  *v9 = v4;
  v9[1] = sub_10A9C;

  return NeedsDisambiguationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:)(a1, a2, v10, a4);
}

uint64_t sub_151A5C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for CommonNeedsDisambiguationFlowStrategy(0, a3[52], a3[53], a3[54]);
  *v9 = v4;
  v9[1] = sub_10A9C;

  return NeedsDisambiguationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:)(a1, a2, v10, a4);
}

uint64_t sub_151B30(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = type metadata accessor for CommonNeedsDisambiguationFlowStrategy(0, a2[52], a2[53], a2[54]);

  return NeedsDisambiguationFlowStrategyAsync.pervasiveUseCaseDescription(resolveRecord:)(a1, v5, a3);
}

uint64_t sub_151B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for CommonNeedsDisambiguationFlowStrategy(0, a5[52], a5[53], a5[54]);
  *v13 = v6;
  v13[1] = sub_10A9C;

  return ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)(a1, a2, a3, a4, v14, a6);
}

uint64_t sub_151C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v16 = type metadata accessor for CommonNeedsDisambiguationFlowStrategy(0, a6[52], a6[53], a6[54]);
  *v15 = v7;
  v15[1] = sub_10A9C;

  return ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)(a1, a2, a3, a4, a5, v16, a7);
}

unint64_t sub_151D94()
{
  result = qword_1EF300;
  if (!qword_1EF300)
  {
    sub_37130(&qword_1EF308, qword_17A970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EF300);
  }

  return result;
}

uint64_t sub_151DF8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_10AFC();
  (*(v3 + 8))(a1);
  return a1;
}

_OWORD *sub_151E50(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_151E78()
{
}

uint64_t sub_151EA0()
{

  return sub_151DF8(v0, type metadata accessor for MultipleCarKeyMatchesParameters);
}

uint64_t sub_151F14()
{
}

uint64_t sub_151F3C()
{
}

uint64_t sub_151F7C()
{
}

void sub_151FBC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t sub_151FDC()
{
}

uint64_t sub_151FFC(char a1)
{
  sub_16A6E4();
}

id sub_1520B0()
{
  v0 = sub_16A684();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_168434();
  v5 = objc_opt_self();
  v6 = &selRef_kilometers;
  if ((v4 & 1) == 0)
  {
    v6 = &selRef_miles;
  }

  v32 = [v5 *v6];
  v34 = sub_168424();
  v35 = v7;
  sub_16A674();
  sub_D030();
  v8 = sub_15260C();
  v9 = *(v1 + 8);
  v9(v3, v0);

  v34 = 0x6874676E656CLL;
  v35 = 0xE600000000000000;
  sub_16A674();
  sub_15260C();
  v9(v3, v0);
  v34 = 1684107122;
  v35 = 0xE400000000000000;
  sub_16A674();
  sub_15260C();
  v9(v3, v0);
  v10 = swift_slowAlloc();
  v33 = 0;

  UnitsForUsage = uameasfmt_getUnitsForUsage();

  if (UnitsForUsage == 1 && !v33)
  {

    v12 = *v10;
    if (*v10 == 1287)
    {
      v13 = [objc_opt_self() miles];
    }

    else
    {
      if (v12 != 1282)
      {
        sub_152628();
        sub_16ACF4(27);
        v43._countAndFlagsBits = 0xD000000000000019;
        v43._object = 0x8000000000191B40;
        sub_16A744(v43);
        LODWORD(v36) = v12;
        type metadata accessor for UAMeasureUnit(0);
        sub_16AD84();
        v23 = v34;
        if (qword_1E58E8 != -1)
        {
          sub_9ED4(&qword_1E58E8);
        }

        v24 = sub_16A584();
        sub_9DA0(v24, qword_1E65C0);
        sub_16A9A4();
        sub_1525EC();
        sub_386D8(v25, v26, v27, v28, v29, v30, 47, v23, v32);

        v22 = v32;
        goto LABEL_16;
      }

      v13 = [objc_opt_self() kilometers];
    }

    v22 = v13;

LABEL_16:

    return v22;
  }

  sub_152628();
  sub_16ACF4(62);
  v37._countAndFlagsBits = 0xD000000000000033;
  v37._object = 0x8000000000191B00;
  sub_16A744(v37);
  v36 = v8;
  sub_5758(&qword_1EF310, &unk_17AA60);
  v38._countAndFlagsBits = sub_16A694();
  sub_16A744(v38);

  v39._countAndFlagsBits = 10272;
  v39._object = 0xE200000000000000;
  sub_16A744(v39);
  LODWORD(v36) = UnitsForUsage;
  v40._countAndFlagsBits = sub_16AE24();
  sub_16A744(v40);

  v41._countAndFlagsBits = 8236;
  v41._object = 0xE200000000000000;
  sub_16A744(v41);
  LODWORD(v36) = v33;
  type metadata accessor for UErrorCode(0);
  sub_16AD84();
  v42._countAndFlagsBits = 41;
  v42._object = 0xE100000000000000;
  sub_16A744(v42);
  v14 = v34;
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v15 = sub_16A584();
  sub_9DA0(v15, qword_1E65C0);
  sub_16A9A4();
  sub_1525EC();
  sub_386D8(v16, v17, v18, v19, v20, v21, 37, v14, v32);

  return v32;
}

uint64_t sub_15260C()
{

  return StringProtocol.cString(using:)(v0, v2, v1);
}

id sub_15263C()
{
  v1 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin37SetCarPlaySeatSettingsRCHFlowStrategy____lazy_storage___inProcessIntentHandler;
  v2 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin37SetCarPlaySeatSettingsRCHFlowStrategy____lazy_storage___inProcessIntentHandler);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin37SetCarPlaySeatSettingsRCHFlowStrategy____lazy_storage___inProcessIntentHandler);
  }

  else
  {
    v4 = v0;
    if (qword_1E5968 != -1)
    {
      swift_once();
    }

    v5 = qword_1F0E10;
    sub_D084((v0 + 56), *(v0 + 80));
    v6 = v5;
    v7 = sub_DB860();
    v8 = sub_1538C8(v6, 14, v7 & 1);

    v9 = *(v4 + v1);
    *(v4 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

uint64_t sub_152828()
{
  sub_5758(&qword_1EA2B0, &qword_16DFB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_16E450;
  v1 = sub_168A44();
  sub_483C8(v1);
  *(v0 + 32) = sub_168A34();
  swift_allocObject();
  *(v0 + 40) = sub_168A34();
  return v0;
}

uint64_t sub_1528FC()
{
  sub_D2DC();
  v0[2] = v1;
  v2 = sub_1693E4();
  v0[3] = v2;
  v0[4] = *(v2 - 8);
  v0[5] = swift_task_alloc();

  return _swift_task_switch(sub_1529B8);
}

uint64_t sub_1529B8()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_16A404();
  v5 = *(v2 + 16);
  v5(v1, v4, v3);
  v6 = sub_11D9C0(v1);
  if (v6)
  {
    v7 = v6;

    v8 = v0[1];

    return v8(v7);
  }

  else
  {
    v11 = v0[2];
    v10 = v0[3];
    type metadata accessor for CarCommandsError(0);
    sub_1537A0(&qword_1E92F0, type metadata accessor for CarCommandsError, &unk_17A85C);
    swift_allocError();
    v5(v12, v11, v10);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_152B60()
{
  v1 = sub_5758(&qword_1EF568, &qword_17AC18);
  sub_37404();
  v29 = v2;
  v4 = __chkstk_darwin(v3);
  v28 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v28 - v6;
  sub_16A404();
  sub_16A464();
  sub_168904();
  sub_16A1C4();
  sub_16A1A4();
  sub_1687F4();

  sub_168894();
  sub_1693F4();
  v8 = type metadata accessor for FeatureFlagHelper();
  v9 = swift_allocObject();
  v10 = sub_168E34();
  sub_483C8(v10);

  sub_168E24();
  type metadata accessor for SnippetManager();
  *(swift_allocObject() + 16) = 0;
  v33[3] = v8;
  v33[4] = &off_1D9AF0;
  v33[0] = v9;
  v11 = type metadata accessor for SetCarPlaySeatSettingsHandleIntentFlowStrategy(0);
  v12 = sub_483C8(v11);
  sub_2F8D0(v33, v8);
  sub_37404();
  __chkstk_darwin(v13);
  sub_A138();
  v15 = sub_153A08(v14);
  v16(v15);
  v17 = *v0;
  v32[3] = v8;
  v32[4] = &off_1D9AF0;
  v32[0] = v17;
  *(v12 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin46SetCarPlaySeatSettingsHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler) = 0;
  sub_10824(v34, v31);
  sub_10824(v32, v30);
  sub_2F8D0(v30, v30[3]);
  sub_37404();
  __chkstk_darwin(v18);
  sub_A138();
  v20 = sub_153A08(v19);
  v21(v20);

  sub_1668CC();
  v23 = v22;
  sub_D13C(v34);
  sub_D13C(v32);
  sub_D13C(v30);
  sub_D13C(v33);

  v34[0] = v23;
  sub_1537A0(&qword_1EF570, type metadata accessor for SetCarPlaySeatSettingsHandleIntentFlowStrategy, &unk_16FA10);
  sub_1687E4();

  sub_168884();
  v24 = v29;
  (*(v29 + 16))(v28, v7, v1);
  v25 = sub_5758(&qword_1EF578, &unk_17AC20);
  sub_483C8(v25);
  v26 = sub_168914();
  (*(v24 + 8))(v7, v1);
  return v26;
}

uint64_t sub_152FB4()
{
  v0 = sub_3D044();

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for SetCarPlaySeatSettingsRCHFlowStrategy(uint64_t a1)
{
  result = qword_1EF348;
  if (!qword_1EF348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1530C0(uint64_t a1)
{
  result = sub_1537A0(&qword_1EF550, type metadata accessor for SetCarPlaySeatSettingsRCHFlowStrategy, &unk_17AAE0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_153130()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_7971C;

  return sub_1528FC();
}

uint64_t sub_1531DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for SetCarPlaySeatSettingsRCHFlowStrategy(0);
  *v10 = v5;
  v10[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)(a1, a2, a3, v11, a5);
}

uint64_t sub_1532AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for SetCarPlaySeatSettingsRCHFlowStrategy(0);
  *v10 = v5;
  v10[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)(a1, a2, a3, v11, a5);
}

uint64_t sub_15337C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for SetCarPlaySeatSettingsRCHFlowStrategy(0);
  *v10 = v5;
  v10[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)(a1, a2, a3, v11, a5);
}

uint64_t sub_15344C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for SetCarPlaySeatSettingsRCHFlowStrategy(0);
  *v12 = v6;
  v12[1] = sub_6F428;

  return ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)(a1, a2, a3, a4, v13, a6);
}

uint64_t sub_15352C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v18 = swift_task_alloc();
  *(v12 + 16) = v18;
  v19 = type metadata accessor for SetCarPlaySeatSettingsRCHFlowStrategy(0);
  *v18 = v12;
  v18[1] = sub_6F850;

  return RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(a1, a2, a3, a4, v19, a6, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_15360C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_79DCC;

  return sub_46DD8();
}

uint64_t sub_1537A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1537E8(uint64_t a1, char a2, char a3, _BYTE *a4)
{
  v12[3] = type metadata accessor for CarPlayService(0);
  v12[4] = &off_1DA3F0;
  v12[0] = a1;
  v11[3] = &type metadata for ServiceAvailabilityGate;
  v11[4] = &off_1D6810;
  LOBYTE(v11[0]) = a2;
  sub_10824(v12, &a4[OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin35SetCarPlaySeatSettingsIntentHandler_service]);
  sub_10824(v11, &a4[OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin35SetCarPlaySeatSettingsIntentHandler_serviceAvailabilityGate]);
  a4[OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin35SetCarPlaySeatSettingsIntentHandler_isRHD] = a3;
  v10.receiver = a4;
  v10.super_class = type metadata accessor for SetCarPlaySeatSettingsIntentHandler();
  v8 = objc_msgSendSuper2(&v10, "init");
  sub_D13C(v11);
  sub_D13C(v12);
  return v8;
}

id sub_1538C8(uint64_t a1, char a2, char a3)
{
  v18 = &off_1DA3F0;
  v17 = type metadata accessor for CarPlayService(0);
  v16[0] = a1;
  v15[3] = &type metadata for ServiceAvailabilityGate;
  v15[4] = &off_1D6810;
  LOBYTE(v15[0]) = a2;
  v6 = objc_allocWithZone(type metadata accessor for SetCarPlaySeatSettingsIntentHandler());
  sub_2F8D0(v16, v17);
  sub_37404();
  __chkstk_darwin(v7);
  sub_A138();
  v10 = (v9 - v8);
  (*(v11 + 16))(v9 - v8);
  v12 = sub_2F8D0(v15, &type metadata for ServiceAvailabilityGate);
  v13 = sub_1537E8(*v10, *v12, a3, v6);
  sub_D13C(v15);
  sub_D13C(v16);
  return v13;
}

uint64_t sub_153A20(unint64_t a1)
{
  if (a1 < 3)
  {
    return *&aUnknown_6[8 * a1];
  }

  result = sub_16AE84();
  __break(1u);
  return result;
}

id sub_153A70(char *a1)
{
  sub_86E4(a1, &_swiftEmptySetSingleton, &v16);
  if (v17)
  {
    sub_D124(&v16, v18);
    v4 = v19;
    v5 = v20;
    sub_D084(v18, v19);
    v6 = (*(v5 + 8))(v4, v5);
    v8 = v7;
    if (v7)
    {
      v9 = v6;
      sub_95578();
      v8 = sub_99BFC(v9, v8);
    }

    v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCarName:v8];

    sub_1693E4();
    sub_955E4();
    (*(v11 + 8))(a1);
    sub_D13C(v18);
  }

  else
  {
    sub_57A80(&v16);
    sub_93C20();
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v12 = sub_16A584();
    sub_9DA0(v12, qword_1E65C0);
    v13 = sub_16A9A4();
    sub_386D8(v13, 0x20uLL, 0xD0000000000000A5, v1 | 0x8000000000000000, 0x293A5F2874696E69, 0xE800000000000000, 60, 0xD000000000000016, v2);
    sub_1693E4();
    sub_955E4();
    (*(v14 + 8))(a1);
    return 0;
  }

  return v10;
}

id sub_153C50(char *a1, unsigned __int8 a2)
{
  v3 = v2;
  v5 = a2;
  v27 = v3;
  swift_getObjectType();
  if (v5 == 160)
  {
    sub_86E4(a1, &_swiftEmptySetSingleton, &v28);
    if (v29)
    {
      sub_D124(&v28, v30);
      v6 = v31;
      v7 = v32;
      sub_D084(v30, v31);
      v8 = (*(v7 + 8))(v6, v7);
      if (v9)
      {
        v10 = v8;
        v11 = v9;
        sub_95578();
        v12 = sub_99BFC(v10, v11);
      }

      else
      {
        v12 = 0;
      }

      v24 = [objc_allocWithZone(INGetCarLockStatusIntent) initWithCarName:v12];

      v25 = swift_dynamicCastUnknownClass();
      if (!v25)
      {

        v25 = v27;
      }

      sub_D13C(v30);
      return v25;
    }

    sub_57A80(&v28);
    sub_93C20();
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v22 = sub_16A584();
    sub_9DA0(v22, qword_1E65C0);
    sub_16A9A4();
    sub_FE944();
    sub_1540C0();
    v21 = 23;
  }

  else
  {
    sub_93C20();
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v13 = sub_16A584();
    sub_9DA0(v13, qword_1E65C0);
    sub_16A9A4();
    sub_FE944();
    sub_1540C0();
    v21 = 18;
  }

  sub_386D8(v14, v15, v16, v17, v18, v19, v21, v20, v26);

  return v27;
}

id sub_153EA0(uint64_t a1, unsigned __int8 a2)
{
  v3 = a2;
  swift_getObjectType();
  v4 = [v15 carName];
  if (v3 == 160)
  {
    sub_16138(a1, v17);
    sub_95578();
    if (swift_dynamicCast())
    {

      v4 = v16;
    }
  }

  else
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v5 = sub_16A584();
    sub_9DA0(v5, qword_1E65C0);
    sub_16A9A4();
    sub_1540C0();
    sub_386D8(v6, v7, v8, v9, v10, v11, 39, v12, 0x8000000000186FF0);
  }

  v13 = [objc_allocWithZone(INGetCarLockStatusIntent) initWithCarName:v4];

  result = swift_dynamicCastUnknownClass();
  if (!result)
  {

    return v15;
  }

  return result;
}

double sub_15404C@<D0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 == 160 && (v4 = [v2 carName]) != 0)
  {
    v5 = v4;
    *(a2 + 24) = sub_95578();
    *a2 = v5;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

unint64_t sub_154130(char a1)
{
  result = 0xD000000000000034;
  switch(a1)
  {
    case 1:
    case 25:
    case 26:
      result = 0xD00000000000002FLL;
      break;
    case 2:
      result = 0xD00000000000001FLL;
      break;
    case 3:
    case 4:
      result = 0xD00000000000001BLL;
      break;
    case 5:
    case 10:
    case 27:
      result = 0xD000000000000031;
      break;
    case 6:
      result = 0xD000000000000020;
      break;
    case 7:
      result = 0xD00000000000003ALL;
      break;
    case 8:
    case 9:
    case 23:
      result = 0xD00000000000002ELL;
      break;
    case 11:
      result = 0xD000000000000039;
      break;
    case 12:
    case 18:
      result = 0xD000000000000021;
      break;
    case 13:
      result = 0xD000000000000029;
      break;
    case 14:
      result = 0xD000000000000032;
      break;
    case 15:
    case 19:
    case 31:
      result = 0xD000000000000025;
      break;
    case 16:
      result = 0xD000000000000027;
      break;
    case 17:
      result = 0xD00000000000001ELL;
      break;
    case 20:
      result = 0xD000000000000028;
      break;
    case 21:
      result = 0xD00000000000001DLL;
      break;
    case 22:
      result = 0xD00000000000002DLL;
      break;
    case 24:
      result = 0xD000000000000030;
      break;
    case 28:
      result = 0xD000000000000036;
      break;
    case 29:
      result = 0xD000000000000038;
      break;
    case 30:
      result = 0xD000000000000037;
      break;
    case 32:
      result = 0xD000000000000024;
      break;
    case 33:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

void sub_154444(__int16 a1)
{
  v1 = HIBYTE(a1);
  v2 = a1;
  v3 = HIBYTE(a1);
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  *(swift_allocObject() + 16) = xmmword_16D3A0;
  sub_D434();
  v4[4] = 0xD000000000000014;
  v4[5] = v5;
  if (v2 == 2)
  {
    v6 = 0;
    v4[6] = 0;
    v4[7] = 0;
    v4[8] = 0;
  }

  else
  {
    *(v4 + 48) = v2 & 1;
    v6 = &type metadata for Bool;
  }

  v4[9] = v6;
  v4[10] = 0xD000000000000016;
  v4[11] = 0x8000000000191FB0;
  if (v3 == 2)
  {
    v7 = 0;
    v4[12] = 0;
    v4[13] = 0;
    v4[14] = 0;
  }

  else
  {
    *(v4 + 96) = v1 & 1;
    v7 = &type metadata for Bool;
  }

  v4[15] = v7;
}

uint64_t sub_154528()
{
  v2 = sub_5758(&qword_1E6300, &qword_16ECE0);
  v3 = sub_D414(v2);
  __chkstk_darwin(v3);
  sub_1590DC();
  __chkstk_darwin(v4);
  v6 = &v20 - v5;
  v7 = sub_5758(&qword_1E63D8, &unk_16DDC0);
  v8 = sub_159350(v7);
  sub_159294(v8, xmmword_16EE50);
  v9 = type metadata accessor for NeedsDisambiguationParameters(0);
  sub_4EA90(v1 + *(v9 + 24), v6, &qword_1E6300, &qword_16ECE0);
  v10 = sub_16A0C4();
  sub_15914C(v6);
  if (v11)
  {
    sub_4EAF4(v6, &qword_1E6300, &qword_16ECE0);
    sub_159430();
  }

  else
  {
    v8[4].n128_u64[1] = v10;
    sub_10888(&v8[3]);
    sub_15917C();
    (*(v12 + 32))();
  }

  v8[5].n128_u64[0] = 0x736D657469;
  v8[5].n128_u64[1] = 0xE500000000000000;
  v13 = *v1;
  if (*v1)
  {
    sub_5758(&qword_1EF5D0, &unk_17ADF0);
    v14 = v13;
  }

  else
  {
    sub_159308();
    v8[6].n128_u64[1] = 0;
    v8[7].n128_u64[0] = 0;
  }

  v8[6].n128_u64[0] = v14;
  sub_15918C();
  v8[7].n128_u64[1] = v15;
  v8[8].n128_u64[0] = v16;
  sub_1591DC();
  v8[8].n128_u64[1] = v17;
  sub_159368(&qword_1E6300, &qword_16ECE0, *(v9 + 20));
  sub_15914C(v0);
  if (v11)
  {

    sub_4EAF4(v0, &qword_1E6300, &qword_16ECE0);
    sub_159344();
  }

  else
  {
    v8[10].n128_u64[1] = v10;
    sub_10888(&v8[9]);
    sub_15917C();
    sub_159404();
    v18();
  }

  return sub_1593F8();
}

uint64_t sub_154750()
{
  v3 = v1;
  v4 = sub_5758(&qword_1E6300, &qword_16ECE0);
  v5 = sub_D414(v4);
  __chkstk_darwin(v5);
  sub_1590DC();
  __chkstk_darwin(v6);
  sub_159314();
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v7 = swift_allocObject();
  sub_AE798(v7, xmmword_176380);
  sub_1592FC();
  sub_4EA90(v8, v9, v10, &qword_16ECE0);
  v11 = sub_16A0C4();
  sub_15914C(v2);
  if (v12)
  {
    sub_4EAF4(v2, &qword_1E6300, &qword_16ECE0);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    *(v7 + 72) = v11;
    sub_10888((v7 + 48));
    sub_15917C();
    sub_1592FC();
    v13();
  }

  *(v7 + 80) = 0x6E4F6C616E676973;
  *(v7 + 88) = 0xE800000000000000;
  type metadata accessor for SignalActivationParameters(0);
  sub_1593B4();
  if (v12)
  {
    v15 = 0;
    *(v7 + 96) = 0;
    *(v7 + 104) = 0;
    *(v7 + 112) = 0;
  }

  else
  {
    *(v7 + 96) = v14 & 1;
    v15 = &type metadata for Bool;
  }

  *(v7 + 120) = v15;
  *(v7 + 128) = 0x6C62697369567369;
  *(v7 + 136) = 0xE900000000000065;
  sub_1593B4();
  if (v12)
  {
    *(v7 + 144) = 0;
    *(v7 + 152) = 0;
    *(v7 + 160) = 0;
  }

  else
  {
    *(v7 + 144) = v16 & 1;
  }

  sub_1592C0();
  *(v7 + 168) = v17;
  *(v7 + 176) = v18;
  sub_1591DC();
  *(v7 + 184) = v19;
  sub_4EA90(v3 + *(v20 + 28), v0, &qword_1E6300, &qword_16ECE0);
  sub_15914C(v0);
  if (v12)
  {
    sub_4EAF4(v0, &qword_1E6300, &qword_16ECE0);
    *(v7 + 192) = 0u;
    *(v7 + 208) = 0u;
  }

  else
  {
    *(v7 + 216) = v11;
    sub_10888((v7 + 192));
    sub_15917C();
    sub_159404();
    v21();
  }

  return v7;
}

uint64_t sub_1549B4()
{
  v0 = sub_5758(&qword_1E6300, &qword_16ECE0);
  v1 = sub_D414(v0);
  __chkstk_darwin(v1);
  v3 = &v11 - v2;
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v4 = swift_allocObject();
  sub_159294(v4, xmmword_16D9A0);
  sub_159404();
  sub_4EA90(v5, v6, v7, &qword_16ECE0);
  v8 = sub_16A0C4();
  if (sub_9E2C(v3, 1, v8) == 1)
  {
    sub_4EAF4(v3, &qword_1E6300, &qword_16ECE0);
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
  }

  else
  {
    *(v4 + 72) = v8;
    sub_10888((v4 + 48));
    sub_4EB50();
    (*(v9 + 32))();
  }

  return v4;
}

uint64_t sub_154AFC()
{
  v3 = sub_5758(&qword_1E6300, &qword_16ECE0);
  v4 = sub_D414(v3);
  __chkstk_darwin(v4);
  sub_1590DC();
  __chkstk_darwin(v5);
  sub_1593A0();
  v7 = __chkstk_darwin(v6);
  v9 = &v33 - v8;
  __chkstk_darwin(v7);
  v11 = &v33 - v10;
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v12 = swift_allocObject();
  sub_AE798(v12, xmmword_176370);
  sub_1593C0();
  sub_4EA90(v13, v14, v15, &qword_16ECE0);
  v16 = sub_16A0C4();
  sub_1590F8(v11);
  if (v17)
  {
    sub_4EAF4(v11, &qword_1E6300, &qword_16ECE0);
    sub_159430();
  }

  else
  {
    *(v12 + 72) = v16;
    sub_10888((v12 + 48));
    sub_15916C();
    sub_1593C0();
    v18();
  }

  sub_D434();
  *(v12 + 80) = 0xD000000000000019;
  *(v12 + 88) = v19;
  v20 = type metadata accessor for CarNameParameters(0);
  sub_159410();
  if (v17)
  {
    v22 = 0;
    *(v12 + 96) = 0;
    *(v12 + 104) = 0;
    *(v12 + 112) = 0;
  }

  else
  {
    *(v12 + 96) = v21 & 1;
    v22 = &type metadata for Bool;
  }

  *(v12 + 120) = v22;
  *(v12 + 128) = 0xD000000000000010;
  *(v12 + 136) = 0x800000000018BD80;
  sub_159410();
  if (v17)
  {
    v24 = 0;
    *(v12 + 144) = 0;
    *(v12 + 152) = 0;
    *(v12 + 160) = 0;
  }

  else
  {
    *(v12 + 144) = v23 & 1;
    v24 = &type metadata for Bool;
  }

  *(v12 + 168) = v24;
  strcpy((v12 + 176), "punchoutAction");
  *(v12 + 191) = -18;
  sub_4EA90(v1 + v20[7], v9, &qword_1E6300, &qword_16ECE0);
  sub_1590F8(v9);
  if (v17)
  {
    sub_4EAF4(v9, &qword_1E6300, &qword_16ECE0);
    *(v12 + 192) = 0u;
    *(v12 + 208) = 0u;
  }

  else
  {
    *(v12 + 216) = v16;
    sub_10888((v12 + 192));
    sub_15916C();
    (*(v25 + 32))();
  }

  sub_159238();
  *(v12 + 224) = v26;
  *(v12 + 232) = v27;
  sub_4EA90(v1 + v20[8], v2, &qword_1E6300, &qword_16ECE0);
  sub_1590F8(v2);
  if (v17)
  {
    sub_4EAF4(v2, &qword_1E6300, &qword_16ECE0);
    *(v12 + 240) = 0u;
    *(v12 + 256) = 0u;
  }

  else
  {
    *(v12 + 264) = v16;
    sub_10888((v12 + 240));
    sub_15916C();
    sub_1593EC();
    v28();
  }

  sub_159128();
  *(v12 + 272) = v29;
  *(v12 + 280) = v30;
  sub_159368(&qword_1E6300, &qword_16ECE0, v20[9]);
  sub_1590F8(v0);
  if (v17)
  {
    sub_4EAF4(v0, &qword_1E6300, &qword_16ECE0);
    *(v12 + 288) = 0u;
    *(v12 + 304) = 0u;
  }

  else
  {
    *(v12 + 312) = v16;
    sub_10888((v12 + 288));
    sub_15916C();
    sub_30B7C();
    v31();
  }

  return sub_1593F8();
}

uint64_t sub_154EC0()
{
  v4 = sub_5758(&qword_1E6300, &qword_16ECE0);
  v5 = sub_D414(v4);
  __chkstk_darwin(v5);
  sub_1590DC();
  __chkstk_darwin(v6);
  sub_1593A0();
  __chkstk_darwin(v7);
  v9 = &v26 - v8;
  v10 = sub_5758(&qword_1E63D8, &unk_16DDC0);
  v11 = sub_159350(v10);
  *(v11 + 16) = xmmword_16EE50;
  sub_159238();
  *(v12 + 32) = v13;
  *(v12 + 40) = v14;
  type metadata accessor for NoCarKeyMatchParameters(0);
  sub_1593CC();
  sub_1593C0();
  sub_4EA90(v15, v16, v17, &qword_16ECE0);
  v18 = sub_16A0C4();
  sub_1590F8(v9);
  if (v19)
  {
    sub_4EAF4(v9, &qword_1E6300, &qword_16ECE0);
    sub_159430();
  }

  else
  {
    *(v11 + 72) = v18;
    sub_10888((v11 + 48));
    sub_15916C();
    sub_1593C0();
    v20();
  }

  sub_1592D4();
  sub_4EA90(v1, v2, &qword_1E6300, &qword_16ECE0);
  sub_1590F8(v2);
  if (v19)
  {
    sub_4EAF4(v2, &qword_1E6300, &qword_16ECE0);
    sub_15943C();
  }

  else
  {
    *(v11 + 120) = v18;
    sub_10888((v11 + 96));
    sub_15916C();
    sub_1593EC();
    v21();
  }

  sub_159128();
  *(v11 + 128) = v22;
  *(v11 + 136) = v23;
  sub_159368(&qword_1E6300, &qword_16ECE0, *(v3 + 24));
  sub_1590F8(v0);
  if (v19)
  {
    sub_4EAF4(v0, &qword_1E6300, &qword_16ECE0);
    sub_159344();
  }

  else
  {
    *(v11 + 168) = v18;
    sub_10888((v11 + 144));
    sub_15916C();
    sub_30B7C();
    v24();
  }

  return sub_1593F8();
}

void sub_155118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_CA350();
  a19 = v23;
  a20 = v24;
  v25 = sub_5758(&qword_1E6300, &qword_16ECE0);
  v26 = sub_D414(v25);
  __chkstk_darwin(v26);
  sub_1590DC();
  v28 = __chkstk_darwin(v27);
  v30 = &a9 - v29;
  v31 = __chkstk_darwin(v28);
  v33 = &a9 - v32;
  __chkstk_darwin(v31);
  v35 = &a9 - v34;
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_17ACB0;
  sub_159238();
  *(v37 + 32) = v38;
  *(v37 + 40) = v39;
  type metadata accessor for MultipleCarKeyMatchesParameters(0);
  sub_1593CC();
  sub_4EA90(v21 + v40, v35, &qword_1E6300, &qword_16ECE0);
  v41 = sub_16A0C4();
  sub_15914C(v35);
  if (v42)
  {
    sub_4EAF4(v35, &qword_1E6300, &qword_16ECE0);
    sub_159430();
  }

  else
  {
    *(v36 + 72) = v41;
    sub_10888((v36 + 48));
    sub_15917C();
    (*(v43 + 32))();
  }

  sub_1592D4();
  sub_4EA90(v21, v33, &qword_1E6300, &qword_16ECE0);
  sub_15914C(v33);
  if (v42)
  {
    sub_4EAF4(v33, &qword_1E6300, &qword_16ECE0);
    sub_15943C();
  }

  else
  {
    *(v36 + 120) = v41;
    sub_10888((v36 + 96));
    sub_15917C();
    (*(v44 + 32))();
  }

  sub_159128();
  *(v36 + 128) = v45;
  *(v36 + 136) = v46;
  sub_4EA90(v21 + v22[6], v30, &qword_1E6300, &qword_16ECE0);
  sub_15914C(v30);
  if (v42)
  {
    sub_4EAF4(v30, &qword_1E6300, &qword_16ECE0);
    sub_159344();
  }

  else
  {
    *(v36 + 168) = v41;
    sub_10888((v36 + 144));
    sub_15917C();
    sub_1592FC();
    v47();
  }

  *(v36 + 176) = 0x664F7265626D756ELL;
  *(v36 + 184) = 0xEF7379654B726143;
  v48 = v21 + v22[7];
  if (*(v48 + 8))
  {
    *(v36 + 200) = 0;
    *(v36 + 208) = 0;
    v49 = 0;
  }

  else
  {
    v49 = *v48;
  }

  *(v36 + 192) = v49;
  sub_15941C();
  *(v36 + 216) = v50;
  *(v36 + 224) = v51;
  *(v36 + 232) = 0xE700000000000000;
  sub_159368(&qword_1E6300, &qword_16ECE0, v22[8]);
  sub_15914C(v20);
  if (v42)
  {
    sub_4EAF4(v20, &qword_1E6300, &qword_16ECE0);
    *(v36 + 240) = 0u;
    *(v36 + 256) = 0u;
  }

  else
  {
    *(v36 + 264) = v41;
    sub_10888((v36 + 240));
    sub_15917C();
    sub_159404();
    v52();
  }

  sub_CA368();
}

void sub_155490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_CA350();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v25 = sub_5758(&qword_1E6300, &qword_16ECE0);
  v26 = sub_D414(v25);
  v27 = __chkstk_darwin(v26);
  v29 = &a9 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  sub_159314();
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v30 = swift_allocObject();
  sub_AE798(v30, xmmword_175690);
  sub_1592FC();
  sub_4EA90(v31, v32, v33, &qword_16ECE0);
  v34 = sub_16A0C4();
  sub_15914C(v21);
  if (v35)
  {
    sub_4EAF4(v21, &qword_1E6300, &qword_16ECE0);
    *(v30 + 48) = 0u;
    *(v30 + 64) = 0u;
  }

  else
  {
    *(v30 + 72) = v34;
    sub_10888((v30 + 48));
    sub_15917C();
    sub_1592FC();
    v36();
  }

  sub_D434();
  *(v30 + 80) = 0xD000000000000011;
  *(v30 + 88) = v37;
  PowerLevelHandleIntentParemeters = type metadata accessor for GetPowerLevelHandleIntentParemeters(0);
  v39 = *(v24 + PowerLevelHandleIntentParemeters[5]);
  if (v39)
  {
    v40 = sub_169FD4();
    v41 = v39;
  }

  else
  {
    v40 = sub_159308();
    *(v30 + 104) = 0;
    *(v30 + 112) = 0;
  }

  *(v30 + 96) = v41;
  *(v30 + 120) = v40;
  strcpy((v30 + 128), "remainingFuel");
  *(v30 + 142) = -4864;
  v42 = *(v24 + PowerLevelHandleIntentParemeters[6]);
  if (v42)
  {
    v43 = sub_16A004();
    v44 = v42;
  }

  else
  {
    v43 = sub_159308();
    *(v30 + 152) = 0;
    *(v30 + 160) = 0;
  }

  *(v30 + 144) = v44;
  *(v30 + 168) = v43;
  *(v30 + 176) = 0x6E696E69616D6572;
  *(v30 + 184) = 0xEF65677261684367;
  v45 = *(v24 + PowerLevelHandleIntentParemeters[7]);
  if (v45)
  {
    v46 = sub_16A004();
    v47 = v45;
  }

  else
  {
    v46 = sub_159308();
    *(v30 + 200) = 0;
    *(v30 + 208) = 0;
  }

  *(v30 + 192) = v47;
  *(v30 + 216) = v46;
  *(v30 + 224) = 0x676E696772616863;
  *(v30 + 232) = 0xE800000000000000;
  sub_1593B4();
  if (v35)
  {
    v49 = 0;
    *(v30 + 240) = 0;
    *(v30 + 248) = 0;
    *(v30 + 256) = 0;
  }

  else
  {
    *(v30 + 240) = v48 & 1;
    v49 = &type metadata for Bool;
  }

  *(v30 + 264) = v49;
  *(v30 + 272) = 0x75466F54656D6974;
  *(v30 + 280) = 0xEA00000000006C6CLL;
  v50 = *(v24 + PowerLevelHandleIntentParemeters[9]);
  if (v50)
  {
    v51 = sub_16A054();
    v52 = v50;
  }

  else
  {
    v51 = sub_159308();
    *(v30 + 296) = 0;
    *(v30 + 304) = 0;
  }

  *(v30 + 288) = v52;
  *(v30 + 312) = v51;
  *(v30 + 320) = 0x7453656369766564;
  *(v30 + 328) = 0xEB00000000657461;
  v53 = *(v24 + PowerLevelHandleIntentParemeters[10]);
  if (v53)
  {
    sub_16A124();
    v54 = v53;
  }

  else
  {
    sub_159308();
    *(v30 + 344) = 0;
    *(v30 + 352) = 0;
  }

  *(v30 + 336) = v54;
  sub_15918C();
  *(v30 + 360) = v55;
  *(v30 + 368) = v56;
  sub_1591DC();
  *(v30 + 376) = v57;
  sub_4EA90(v24 + PowerLevelHandleIntentParemeters[11], v29, &qword_1E6300, &qword_16ECE0);
  sub_15914C(v29);
  if (v35)
  {

    sub_4EAF4(v29, &qword_1E6300, &qword_16ECE0);
    *(v30 + 384) = 0u;
    *(v30 + 400) = 0u;
  }

  else
  {
    *(v30 + 408) = v34;
    sub_10888((v30 + 384));
    sub_15917C();
    (*(v58 + 32))();
  }

  sub_CA368();
}

void sub_15587C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_CA350();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = v21;
  v31 = sub_5758(&qword_1E6300, &qword_16ECE0);
  v32 = sub_D414(v31);
  __chkstk_darwin(v32);
  sub_1590DC();
  __chkstk_darwin(v33);
  v35 = &a9 - v34;
  v36 = sub_5758(&qword_1E63D8, &unk_16DDC0);
  v37 = sub_159350(v36);
  sub_AE798(v37, xmmword_16EE50);
  sub_4EA90(v30, v35, &qword_1E6300, &qword_16ECE0);
  v38 = sub_16A0C4();
  sub_1590F8(v35);
  if (v39)
  {
    sub_4EAF4(v35, &qword_1E6300, &qword_16ECE0);
    *(v37 + 48) = 0u;
    *(v37 + 64) = 0u;
  }

  else
  {
    *(v37 + 72) = v38;
    sub_10888((v37 + 48));
    sub_15916C();
    (*(v40 + 32))();
  }

  *(v37 + 80) = v29;
  *(v37 + 88) = v27;
  v25(0);
  sub_1593B4();
  if (v39)
  {
    *(v37 + 96) = 0;
    *(v37 + 104) = 0;
    *(v37 + 112) = 0;
  }

  else
  {
    *(v37 + 96) = v41 & 1;
  }

  sub_1592C0();
  *(v37 + 120) = v42;
  *(v37 + 128) = v43;
  sub_1591DC();
  *(v37 + 136) = v44;
  sub_4EA90(v30 + *(v45 + 24), v20, &qword_1E6300, &qword_16ECE0);
  sub_1590F8(v20);
  if (v39)
  {
    sub_4EAF4(v20, &qword_1E6300, &qword_16ECE0);
    *(v37 + 144) = 0u;
    *(v37 + 160) = 0u;
  }

  else
  {
    *(v37 + 168) = v38;
    sub_10888((v37 + 144));
    sub_15916C();
    sub_30B7C();
    v46();
  }

  sub_CA368();
}

uint64_t sub_155A98()
{
  v2 = sub_5758(&qword_1E6300, &qword_16ECE0);
  v3 = sub_D414(v2);
  v4 = __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  sub_159314();
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v7 = swift_allocObject();
  sub_AE798(v7, xmmword_176380);
  sub_1592FC();
  sub_4EA90(v8, v9, v10, &qword_16ECE0);
  v11 = sub_16A0C4();
  sub_15914C(v1);
  if (v12)
  {
    sub_4EAF4(v1, &qword_1E6300, &qword_16ECE0);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    *(v7 + 72) = v11;
    sub_10888((v7 + 48));
    sub_15917C();
    sub_1592FC();
    v13();
  }

  strcpy((v7 + 80), "climateEnabled");
  *(v7 + 95) = -18;
  ClimateStatusParameters = type metadata accessor for GetClimateStatusParameters(0);
  sub_159410();
  if (v12)
  {
    *(v7 + 96) = 0;
    *(v7 + 104) = 0;
    *(v7 + 112) = 0;
  }

  else
  {
    *(v7 + 96) = v15 & 1;
  }

  sub_1592C0();
  *(v7 + 120) = v16;
  *(v7 + 128) = v17;
  sub_1591DC();
  *(v7 + 136) = v18;
  sub_4EA90(v0 + *(ClimateStatusParameters + 24), v6, &qword_1E6300, &qword_16ECE0);
  sub_15914C(v6);
  if (v12)
  {
    sub_4EAF4(v6, &qword_1E6300, &qword_16ECE0);
    *(v7 + 144) = 0u;
    *(v7 + 160) = 0u;
  }

  else
  {
    *(v7 + 168) = v11;
    sub_10888((v7 + 144));
    sub_15917C();
    (*(v19 + 32))();
  }

  sub_D434();
  *(v7 + 176) = 0xD00000000000001CLL;
  *(v7 + 184) = v20;
  sub_159410();
  if (v12)
  {
    v22 = 0;
    *(v7 + 192) = 0;
    *(v7 + 200) = 0;
    *(v7 + 208) = 0;
  }

  else
  {
    *(v7 + 192) = v21 & 1;
    v22 = &type metadata for Bool;
  }

  *(v7 + 216) = v22;
  return v7;
}

void *sub_155D1C()
{
  v3 = sub_5758(&qword_1E6300, &qword_16ECE0);
  v4 = sub_D414(v3);
  __chkstk_darwin(v4);
  sub_1590DC();
  __chkstk_darwin(v5);
  v7 = &v22 - v6;
  v8 = sub_5758(&qword_1E63D8, &unk_16DDC0);
  v9 = sub_159350(v8);
  v10 = v9;
  *(v9 + 16) = xmmword_16EE50;
  *(v9 + 32) = 0x64656C62616E65;
  *(v9 + 40) = 0xE700000000000000;
  v11 = *v1;
  if (v11 == 2)
  {
    *(v9 + 48) = 0;
    *(v9 + 56) = 0;
    *(v9 + 64) = 0;
  }

  else
  {
    *(v9 + 48) = v11 & 1;
  }

  sub_15941C();
  v10[9] = v12;
  v10[10] = v13;
  v10[11] = 0xE700000000000000;
  type metadata accessor for SetDigitalCarKeyClimateStatusParameters(0);
  sub_1593CC();
  sub_4EA90(&v1[v14], v7, &qword_1E6300, &qword_16ECE0);
  v15 = sub_16A0C4();
  sub_1590F8(v7);
  if (v16)
  {
    sub_4EAF4(v7, &qword_1E6300, &qword_16ECE0);
    sub_15943C();
  }

  else
  {
    v10[15] = v15;
    sub_10888(v10 + 12);
    sub_15916C();
    sub_1593EC();
    v17();
  }

  sub_159128();
  v10[16] = v18;
  v10[17] = v19;
  sub_159368(&qword_1E6300, &qword_16ECE0, *(v2 + 24));
  sub_1590F8(v0);
  if (v16)
  {
    sub_4EAF4(v0, &qword_1E6300, &qword_16ECE0);
    sub_159344();
  }

  else
  {
    v10[21] = v15;
    sub_10888(v10 + 18);
    sub_15916C();
    sub_30B7C();
    v20();
  }

  return v10;
}

uint64_t sub_155F30()
{
  v1 = sub_5758(&qword_1E6300, &qword_16ECE0);
  v2 = sub_D414(v1);
  __chkstk_darwin(v2);
  v4 = &v20 - v3;
  v5 = sub_5758(&qword_1E63D8, &unk_16DDC0);
  v6 = sub_159350(v5);
  *(v6 + 16) = xmmword_16EE50;
  sub_D434();
  *(v7 + 32) = 0xD000000000000014;
  *(v7 + 40) = v8;
  v9 = *v0;
  if (v9 == 2)
  {
    *(v6 + 48) = 0;
    *(v6 + 56) = 0;
    *(v6 + 64) = 0;
  }

  else
  {
    *(v6 + 48) = v9 & 1;
  }

  sub_1593D8();
  *(v6 + 72) = v10;
  *(v6 + 80) = v11;
  *(v6 + 88) = 0xE800000000000000;
  v12 = type metadata accessor for SetCarPlayClimateStatusParameters(0);
  sub_4EA90(&v0[*(v12 + 20)], v4, &qword_1E6300, &qword_16ECE0);
  v13 = sub_16A0C4();
  sub_1590F8(v4);
  if (v14)
  {
    sub_4EAF4(v4, &qword_1E6300, &qword_16ECE0);
    *(v6 + 96) = 0u;
    *(v6 + 112) = 0u;
  }

  else
  {
    *(v6 + 120) = v13;
    sub_10888((v6 + 96));
    sub_15916C();
    (*(v15 + 32))();
  }

  sub_D434();
  *(v6 + 128) = 0xD000000000000011;
  *(v6 + 136) = v16;
  v17 = *&v0[*(v12 + 24)];
  if (v17)
  {
    v18 = sub_169F14();
  }

  else
  {
    v18 = 0;
    *(v6 + 152) = 0;
    *(v6 + 160) = 0;
  }

  *(v6 + 144) = v17;
  *(v6 + 168) = v18;

  return v6;
}

uint64_t sub_156108()
{
  v3 = sub_5758(&qword_1E6300, &qword_16ECE0);
  v4 = sub_D414(v3);
  __chkstk_darwin(v4);
  sub_1590DC();
  __chkstk_darwin(v5);
  v7 = &v22 - v6;
  v8 = sub_5758(&qword_1E63D8, &unk_16DDC0);
  v9 = sub_159350(v8);
  *(v9 + 16) = xmmword_16EE50;
  sub_D434();
  *(v10 + 32) = 0xD000000000000015;
  *(v10 + 40) = v11;
  v12 = *v1;
  if (v12 == 2)
  {
    *(v9 + 48) = 0;
    *(v9 + 56) = 0;
    *(v9 + 64) = 0;
  }

  else
  {
    *(v9 + 48) = v12 & 1;
  }

  sub_1593D8();
  *(v9 + 72) = v13;
  *(v9 + 80) = v14;
  *(v9 + 88) = 0xE800000000000000;
  type metadata accessor for SetCarPlaySeatSettingsParameters(0);
  sub_1593CC();
  sub_4EA90(&v1[v15], v7, &qword_1E6300, &qword_16ECE0);
  v16 = sub_16A0C4();
  sub_1590F8(v7);
  if (v17)
  {
    sub_4EAF4(v7, &qword_1E6300, &qword_16ECE0);
    sub_15943C();
  }

  else
  {
    *(v9 + 120) = v16;
    sub_10888((v9 + 96));
    sub_15916C();
    sub_1593EC();
    v18();
  }

  sub_D434();
  *(v9 + 128) = 0xD000000000000011;
  *(v9 + 136) = v19;
  sub_159368(&qword_1E6300, &qword_16ECE0, *(v2 + 24));
  sub_1590F8(v0);
  if (v17)
  {
    sub_4EAF4(v0, &qword_1E6300, &qword_16ECE0);
    sub_159344();
  }

  else
  {
    *(v9 + 168) = v16;
    sub_10888((v9 + 144));
    sub_15916C();
    sub_30B7C();
    v20();
  }

  return sub_1593F8();
}

uint64_t sub_15632C(__int16 a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return sub_D2B0();
}

uint64_t sub_156344()
{
  sub_D2DC();
  sub_154444(*(v0 + 48));
  v2 = v1;
  *(v0 + 24) = v1;
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_1563E8;

  return sub_156570(2, v2);
}

uint64_t sub_1563E8()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (v0)
  {
    sub_3021C();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = sub_1590C8();

    return v9(v8);
  }
}

uint64_t sub_156510()
{
  sub_D2DC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_156570(char a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  *(v3 + 56) = a1;
  return sub_D2B0();
}

uint64_t sub_156588()
{
  sub_1696C();
  v1 = sub_154130(*(v0 + 56));
  v3 = v2;
  *(v0 + 32) = v2;
  v9 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v4 = swift_task_alloc();
  v5 = sub_159210(v4);
  *v5 = v6;
  v5[1] = sub_156648;
  v7 = *(v0 + 16);

  return v9(v1, v3, v7);
}

uint64_t sub_156648()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    sub_3021C();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = sub_1590C8();

    return v9(v8);
  }
}

uint64_t sub_156770()
{
  sub_D2DC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1567D0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_1567E4()
{
  sub_D2DC();
  v1 = sub_154750();
  sub_15921C(v1);
  v2 = swift_task_alloc();
  v3 = sub_159210(v2);
  *v3 = v4;
  sub_159118(v3);

  return sub_156570(1, v0);
}

uint64_t sub_156878()
{
  sub_1696C();
  sub_30480();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    sub_3021C();

    return _swift_task_switch(v7);
  }

  else
  {

    v8 = sub_1590C8();

    return v9(v8);
  }
}

uint64_t sub_1569A0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_1569B4()
{
  sub_D2DC();
  v1 = sub_154AFC();
  sub_15921C(v1);
  v2 = swift_task_alloc();
  v3 = sub_159210(v2);
  *v3 = v4;
  sub_159118(v3);

  return sub_156570(3, v0);
}

uint64_t sub_156A48(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_156A5C()
{
  sub_D2DC();
  v1 = sub_154750();
  sub_15921C(v1);
  v2 = swift_task_alloc();
  v3 = sub_159210(v2);
  *v3 = v4;
  sub_159118(v3);

  return sub_156570(5, v0);
}

uint64_t sub_156AF0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_156B04()
{
  sub_D2DC();
  v1 = sub_155A98();
  sub_15921C(v1);
  v2 = swift_task_alloc();
  v3 = sub_159210(v2);
  *v3 = v4;
  sub_159118(v3);

  return sub_156570(10, v0);
}

uint64_t sub_156B98(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_156C3C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_156C50()
{
  sub_D2DC();
  v1 = sub_154750();
  sub_15921C(v1);
  v2 = swift_task_alloc();
  v3 = sub_159210(v2);
  *v3 = v4;
  sub_159118(v3);

  return sub_156570(7, v0);
}

uint64_t sub_156CE4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_156D8C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_156E34(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_156E48()
{
  sub_D2DC();
  v1 = sub_154528();
  sub_15921C(v1);
  v2 = swift_task_alloc();
  v3 = sub_159210(v2);
  *v3 = v4;
  sub_159118(v3);

  return sub_156570(14, v0);
}

uint64_t sub_156EDC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_156EF0()
{
  sub_D2DC();
  v1 = sub_154528();
  sub_15921C(v1);
  v2 = swift_task_alloc();
  v3 = sub_159210(v2);
  *v3 = v4;
  sub_159118(v3);

  return sub_156570(16, v0);
}

uint64_t sub_156F84(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_156F98()
{
  sub_D2DC();
  v1 = sub_1549B4();
  sub_15921C(v1);
  v2 = swift_task_alloc();
  v3 = sub_159210(v2);
  *v3 = v4;
  sub_159118(v3);

  return sub_156570(17, v0);
}

uint64_t sub_15702C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_157040()
{
  sub_D2DC();
  v1 = sub_154EC0();
  sub_15921C(v1);
  v2 = swift_task_alloc();
  v3 = sub_159210(v2);
  *v3 = v4;
  sub_159118(v3);

  return sub_156570(18, v0);
}

uint64_t sub_1570D4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_1570E8()
{
  sub_D2DC();
  v1 = sub_154AFC();
  sub_15921C(v1);
  v2 = swift_task_alloc();
  v3 = sub_159210(v2);
  *v3 = v4;
  sub_159118(v3);

  return sub_156570(20, v0);
}

uint64_t sub_15717C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_157190()
{
  sub_D2DC();
  v1 = sub_154AFC();
  sub_15921C(v1);
  v2 = swift_task_alloc();
  v3 = sub_159210(v2);
  *v3 = v4;
  sub_159118(v3);

  return sub_156570(21, v0);
}

uint64_t sub_157224(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_1572C8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_1572DC()
{
  sub_1696C();
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v1 = swift_allocObject();
  *(v0 + 32) = v1;
  *(v1 + 16) = xmmword_16D9A0;
  sub_D434();
  *(v2 + 32) = 0xD000000000000010;
  *(v2 + 40) = v3;
  *(v1 + 72) = sub_16A0C4();
  sub_10888((v1 + 48));
  sub_4EB50();
  (*(v4 + 16))();
  v5 = swift_task_alloc();
  v6 = sub_159210(v5);
  *v6 = v7;
  sub_159118(v6);

  return sub_156570(24, v1);
}

uint64_t sub_157400(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_1574C0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_157580(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_157594()
{
  sub_D2DC();
  v1 = sub_155D1C();
  sub_15921C(v1);
  v2 = swift_task_alloc();
  v3 = sub_159210(v2);
  *v3 = v4;
  sub_159118(v3);

  return sub_156570(27, v0);
}

uint64_t sub_157628(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_15763C()
{
  sub_D2DC();
  v1 = sub_155F30();
  sub_15921C(v1);
  v2 = swift_task_alloc();
  v3 = sub_159210(v2);
  *v3 = v4;
  sub_159118(v3);

  return sub_156570(29, v0);
}

uint64_t sub_1576D0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_1576E4()
{
  sub_D2DC();
  v1 = sub_156108();
  sub_15921C(v1);
  v2 = swift_task_alloc();
  v3 = sub_159210(v2);
  *v3 = v4;
  sub_159118(v3);

  return sub_156570(30, v0);
}

uint64_t sub_157778(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_15778C()
{
  sub_D2DC();
  v1 = sub_1549B4();
  sub_15921C(v1);
  v2 = swift_task_alloc();
  v3 = sub_159210(v2);
  *v3 = v4;
  sub_159118(v3);

  return sub_156570(32, v0);
}

void sub_157874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_CA350();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = sub_16A164();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &a9 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  v31 = sub_D414(v30);
  __chkstk_darwin(v31);
  sub_4EA90(v25, &a9 - v32, &qword_1E5B48, &unk_16DDB0);
  (*(v27 + 16))(v29, v23, v26);
  sub_16A084();
  (*(v27 + 8))(v23, v26);
  sub_4EAF4(v25, &qword_1E5B48, &unk_16DDB0);
  sub_CA368();
}

uint64_t sub_157BA8()
{
  sub_159288();
  sub_5758(&qword_1E6300, &qword_16ECE0);
  v0 = sub_159324();

  return sub_9E2C(v0, v1, v2);
}

uint64_t sub_157C04()
{
  sub_159288();
  sub_5758(&qword_1E6300, &qword_16ECE0);
  v0 = sub_1591C8();

  return sub_5370(v0, v1, v2, v3);
}

uint64_t sub_157C84()
{
  sub_159288();
  sub_16A0C4();
  v0 = sub_159324();

  return sub_9E2C(v0, v1, v2);
}

uint64_t sub_157CD4()
{
  sub_159288();
  sub_16A0C4();
  v0 = sub_1591C8();

  return sub_5370(v0, v1, v2, v3);
}

uint64_t sub_157D30(uint64_t a1)
{
  result = sub_16A0C4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_157DC4(uint64_t a1)
{
  sub_15878C(319, &qword_1E8060, &type metadata accessor for SpeakableString);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_15838C(319, &unk_1EF760, &type metadata for Bool);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

uint64_t sub_157EC0(uint64_t a1)
{
  sub_15878C(319, &qword_1E8060, &type metadata accessor for SpeakableString);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_15838C(319, &unk_1EF760, &type metadata for Bool);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

uint64_t sub_157FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_10C0B8();
  if (*(v7 + 84) != a2)
  {
    return sub_1591F0(*(a1 + *(a3 + 20)));
  }

  return sub_9E2C(a1, a2, v6);
}

void sub_15805C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_159288();
  sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_10C0B8();
  if (*(v8 + 84) == a3)
  {
    v9 = sub_1591C8();

    sub_5370(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 20)) = v4;
  }
}

uint64_t sub_1580FC(uint64_t a1)
{
  sub_15878C(319, &qword_1E8060, &type metadata accessor for SpeakableString);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_15878C(319, &qword_1EF898, &type metadata accessor for DialogLength);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_15878C(319, &qword_1EF8A0, &type metadata accessor for DialogPercent);
    if (v6 > 0x3F)
    {
      return v4;
    }

    sub_15838C(319, &unk_1EF760, &type metadata for Bool);
    if (v7 > 0x3F)
    {
      return v4;
    }

    sub_15878C(319, &qword_1EF8A8, &type metadata accessor for DialogDuration);
    if (v8 > 0x3F)
    {
      return v4;
    }

    sub_15878C(319, &unk_1EF8B0, &type metadata accessor for SirikitDeviceState);
    if (v9 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

uint64_t sub_1582C0(uint64_t a1)
{
  sub_15878C(319, &qword_1E8060, &type metadata accessor for SpeakableString);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_15838C(319, &unk_1EF960, &type metadata for Double);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

void sub_15838C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_16AB24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_15842C(uint64_t a1)
{
  sub_1591A0(a1, &qword_1E8060);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_15838C(319, &unk_1EF760, &type metadata for Bool);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_159334();
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

uint64_t sub_158540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_10C0B8();
  if (*(v7 + 84) != a2)
  {
    return sub_1591F0(*(a1 + *(a3 + 24)));
  }

  v8 = v6;
  v9 = a1 + *(a3 + 20);

  return sub_9E2C(v9, a2, v8);
}

void sub_158600(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_159288();
  sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_10C0B8();
  if (*(v8 + 84) == a3)
  {
    v9 = sub_159228();

    sub_5370(v9, v10, v4, v11);
  }

  else
  {
    *(v5 + *(a4 + 24)) = v4;
  }
}

void sub_1586A8(uint64_t a1)
{
  sub_15838C(319, &unk_1EF760, &type metadata for Bool);
  if (v1 <= 0x3F)
  {
    sub_15878C(319, &qword_1E8060, &type metadata accessor for SpeakableString);
    if (v2 <= 0x3F)
    {
      sub_15878C(319, &unk_1EFC68, &type metadata accessor for DialogTemperature);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_15878C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_16AB24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1587F4(unsigned __int8 *a1, int a2)
{
  if (a2 == 253)
  {
    v2 = *a1;
    if (v2 >= 2)
    {
      v3 = ((v2 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v3 = -2;
    }

    if (v3 < 0)
    {
      v3 = -1;
    }

    return (v3 + 1);
  }

  else
  {
    sub_5758(&qword_1E6300, &qword_16ECE0);
    v5 = sub_159228();

    return sub_9E2C(v5, v6, v7);
  }
}

void sub_1588A8()
{
  sub_159288();
  if (v2 == 253)
  {
    *v1 = v0 + 2;
  }

  else
  {
    sub_5758(&qword_1E6300, &qword_16ECE0);
    v3 = sub_159228();

    sub_5370(v3, v4, v0, v5);
  }
}

void sub_158924()
{
  sub_15838C(319, &unk_1EF760, &type metadata for Bool);
  if (v1 <= 0x3F)
  {
    sub_1591A0(v0, &qword_1E8060);
    if (v2 <= 0x3F)
    {
      sub_159334();
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1589C8()
{
  sub_159288();
  sub_5758(&qword_1E6300, &qword_16ECE0);
  v0 = sub_159324();

  return sub_9E2C(v0, v1, v2);
}

uint64_t sub_158A24()
{
  sub_159288();
  sub_5758(&qword_1E6300, &qword_16ECE0);
  v0 = sub_1591C8();

  return sub_5370(v0, v1, v2, v3);
}

void sub_158A6C(uint64_t a1)
{
  sub_15878C(319, &qword_1E8060, &type metadata accessor for SpeakableString);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_158B44(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_158B7C(uint64_t a1)
{
  sub_1591A0(a1, &qword_1E8060);
  if (v1 <= 0x3F)
  {
    sub_159334();
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_158BF8(unint64_t *a1, int a2)
{
  if (a2 == 2147483646)
  {
    return sub_1591F0(*a1);
  }

  sub_5758(&qword_1E6300, &qword_16ECE0);
  v3 = sub_159228();

  return sub_9E2C(v3, v4, v5);
}

void sub_158C8C()
{
  sub_159288();
  if (v2 == 2147483646)
  {
    *v1 = v0;
  }

  else
  {
    sub_5758(&qword_1E6300, &qword_16ECE0);
    v3 = sub_159228();

    sub_5370(v3, v4, v0, v5);
  }
}

void sub_158D0C(uint64_t a1)
{
  sub_158DAC(319);
  if (v1 <= 0x3F)
  {
    sub_15878C(319, &qword_1E8060, &type metadata accessor for SpeakableString);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_158DAC(uint64_t a1)
{
  if (!qword_1EFEC8)
  {
    sub_37130(&qword_1EF5D0, &unk_17ADF0);
    v1 = sub_16AB24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EFEC8);
    }
  }
}

uint64_t sub_158E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_10C0B8();
  if (*(v7 + 84) == a2)
  {

    return sub_9E2C(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20));
    if (v9 >= 2)
    {
      v10 = ((v9 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v10 = -2;
    }

    if (v10 < 0)
    {
      v10 = -1;
    }

    return (v10 + 1);
  }
}

void sub_158F08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_159288();
  sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_10C0B8();
  if (*(v8 + 84) == a3)
  {
    v9 = sub_1591C8();

    sub_5370(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 20)) = v4 + 2;
  }
}

uint64_t sub_158FA8(uint64_t a1)
{
  sub_15878C(319, &qword_1E8060, &type metadata accessor for SpeakableString);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_15838C(319, &unk_1EF760, &type metadata for Bool);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

void sub_1591A0(uint64_t a1, unint64_t *a2)
{

  sub_15878C(319, a2, &type metadata accessor for SpeakableString);
}

uint64_t sub_1591F0@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  v1 = a1 - 1;
  if (v1 < 0)
  {
    v1 = -1;
  }

  return (v1 + 1);
}

void sub_159250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  sub_15587C(0x64656B636F6CLL, 0xE600000000000000, type metadata accessor for LockStatusParameters, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

__n128 *sub_159294(__n128 *result, __n128 a2)
{
  result[1] = a2;
  strcpy(&result[2], "parameterName");
  result[2].n128_u16[7] = -4864;
  return result;
}

double sub_159344()
{
  result = 0.0;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  return result;
}

uint64_t sub_159350(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_159368@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_4EA90(v4 + a3, v3, a1, a2);
}

double sub_159430()
{
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  return result;
}

double sub_15943C()
{
  result = 0.0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  return result;
}

uint64_t type metadata accessor for CarCommandsSetCarPlayVentModeCATsSimple(uint64_t a1)
{
  result = qword_1EFFA0;
  if (!qword_1EFFA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1594F0(char a1, char a2, char a3, char a4, char a5, char a6)
{
  *(v7 + 16) = v6;
  *(v7 + 53) = a6;
  *(v7 + 52) = a5;
  *(v7 + 51) = a4;
  *(v7 + 50) = a3;
  *(v7 + 49) = a2;
  *(v7 + 48) = a1;
  return _swift_task_switch(sub_159528);
}

uint64_t sub_159528()
{
  v1 = *(v0 + 49);
  v2 = *(v0 + 48);
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v3 = swift_allocObject();
  v4 = v3;
  *(v0 + 24) = v3;
  *(v3 + 16) = xmmword_176370;
  *(v3 + 32) = 0x6556656C62616E65;
  *(v3 + 40) = 0xEA0000000000746ELL;
  *(v3 + 48) = v2;
  *(v3 + 72) = &type metadata for Bool;
  strcpy((v3 + 80), "ventModeUpper");
  *(v3 + 94) = -4864;
  if (v1 == 2)
  {
    v5 = 0;
    *(v3 + 96) = 0;
    *(v3 + 104) = 0;
    *(v3 + 112) = 0;
  }

  else
  {
    *(v3 + 96) = v1 & 1;
    v5 = &type metadata for Bool;
  }

  v6 = *(v0 + 50);
  *(v3 + 120) = v5;
  strcpy((v3 + 128), "ventModeMiddle");
  *(v3 + 143) = -18;
  if (v6 == 2)
  {
    v7 = 0;
    *(v3 + 144) = 0;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0;
  }

  else
  {
    *(v3 + 144) = v6 & 1;
    v7 = &type metadata for Bool;
  }

  v8 = *(v0 + 51);
  *(v3 + 168) = v7;
  strcpy((v3 + 176), "ventModeLower");
  *(v3 + 190) = -4864;
  if (v8 == 2)
  {
    v9 = 0;
    *(v3 + 192) = 0;
    *(v3 + 200) = 0;
    *(v3 + 208) = 0;
  }

  else
  {
    *(v3 + 192) = v8 & 1;
    v9 = &type metadata for Bool;
  }

  v10 = *(v0 + 52);
  *(v3 + 216) = v9;
  *(v3 + 224) = 0xD000000000000016;
  *(v3 + 232) = 0x8000000000192020;
  if (v10 == 2)
  {
    v11 = 0;
    *(v3 + 240) = 0;
    *(v3 + 248) = 0;
    *(v3 + 256) = 0;
  }

  else
  {
    *(v3 + 240) = v10 & 1;
    v11 = &type metadata for Bool;
  }

  v12 = *(v0 + 53);
  *(v3 + 264) = v11;
  *(v3 + 272) = 0xD000000000000015;
  *(v3 + 280) = 0x8000000000192040;
  if (v12 == 2)
  {
    v13 = 0;
    *(v3 + 288) = 0;
    *(v3 + 296) = 0;
    *(v3 + 304) = 0;
  }

  else
  {
    *(v3 + 288) = v12 & 1;
    v13 = &type metadata for Bool;
  }

  *(v3 + 312) = v13;
  v16 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v14 = swift_task_alloc();
  *(v0 + 32) = v14;
  *v14 = v0;
  v14[1] = sub_49014;

  return v16(0xD000000000000033, 0x8000000000192060, v4);
}

uint64_t sub_15981C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_16A164();
  sub_5B1C();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  __chkstk_darwin(v11 - 8);
  sub_57A0(a1, &v15 - v12);
  (*(v7 + 16))(v10, a2, v3);
  v13 = sub_16A0D4();
  (*(v7 + 8))(a2, v3);
  sub_5810(a1);
  return v13;
}

uint64_t sub_159978(uint64_t a1, uint64_t a2)
{
  sub_16A164();
  sub_5B1C();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_16A0E4();
  (*(v5 + 8))(a2, v2);
  return v9;
}

void *sub_159A80(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v31 = a2;
  v33 = sub_169E84();
  v5 = *(v33 - 8);
  v6 = __chkstk_darwin(v33);
  v27 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v6);
  v10 = &v24 - v9;
  v11 = 0;
  v32 = *(a3 + 16);
  v29 = v5 + 16;
  v12 = (v5 + 8);
  v26 = (v5 + 32);
  v28 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v32 == v11)
    {

      return v28;
    }

    if (v11 >= *(a3 + 16))
    {
      break;
    }

    v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = *(v5 + 72);
    v15 = a3;
    (*(v5 + 16))(v10, a3 + v13 + v14 * v11, v33);
    v16 = v30(v10);
    if (v3)
    {
      (*v12)(v10, v33);
      v23 = v28;

      return v23;
    }

    if (v16)
    {
      v25 = *v26;
      v25(v27, v10, v33);
      v17 = v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = v17;
      if (isUniquelyReferenced_nonNull_native)
      {
        v19 = v17;
      }

      else
      {
        sub_146918(0, v17[2] + 1, 1);
        v19 = v34;
      }

      a3 = v15;
      v21 = v19[2];
      v20 = v19[3];
      v22 = (v21 + 1);
      if (v21 >= v20 >> 1)
      {
        v28 = (v21 + 1);
        v24 = v21;
        sub_146918(v20 > 1, v21 + 1, 1);
        v22 = v28;
        v21 = v24;
        a3 = v15;
        v19 = v34;
      }

      ++v11;
      v19[2] = v22;
      v28 = v19;
      result = (v25)(v19 + v13 + v21 * v14, v27, v33);
    }

    else
    {
      result = (*v12)(v10, v33);
      ++v11;
    }
  }

  __break(1u);
  return result;
}

void sub_159D44(uint64_t (*a1)(char *), uint64_t (*a2)(char *), unint64_t *a3, void *a4, void (*a5)(void *))
{
  v7 = 0xD00000000000001CLL;
  v60 = sub_169E84();
  sub_9F48();
  v61 = v8;
  __chkstk_darwin(v9);
  sub_A138();
  v59 = v11 - v10;
  sub_16484(0, a3, a4);
  v12 = sub_16A9E4();
  sub_71B88(v12);
  v14 = v13;
  v16 = v15;
  sub_9F6C();
  sub_16ACF4(35);

  sub_D434();
  v63 = v17;
  v66._countAndFlagsBits = sub_16AFA4();
  sub_16A744(v66);

  v67._countAndFlagsBits = 663610;
  v67._object = 0xE300000000000000;
  sub_16A744(v67);
  v68._countAndFlagsBits = v14;
  v68._object = v16;
  sub_16A744(v68);

  v18 = 0xD00000000000001CLL;
  v19 = v63;
  if (qword_1E58E8 != -1)
  {
LABEL_22:
    sub_9ED4(&qword_1E58E8);
  }

  v20 = sub_16A584();
  sub_9DA0(v20, qword_1E65C0);
  sub_16A9A4();
  sub_15B61C();
  sub_386D8(v21, v22, v23, v24, v25, v26, 65, v18, v19);

  v27 = sub_159A80(a1, a2, v12);
  v28 = v27;
  a1 = v27[2];
  if (a1)
  {
    sub_71B88(v27);
    v30 = v29;
    v32 = v31;
    sub_9F6C();
    sub_16ACF4(43);

    sub_D434();
    v64 = v33;
    v69._countAndFlagsBits = v30;
    v69._object = v32;
    sub_16A744(v69);

    sub_16A9A4();
    sub_15B61C();
    sub_386D8(v34, v35, v36, v37, v38, v39, 75, v7 + 13, v64);

    v40 = 0;
    v7 = v61 + 16;
    v55 = v28 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
    v56 = *(v61 + 16);
    v54 = *(v61 + 72);
    v61 = v7;
    v53 = (v7 - 8);
    while (2)
    {
      v12 = v59;
      v56(v59, &v55[v54 * v40], v60);
      a2 = (v40 + 1);
      v41 = sub_16A9F4();
      (*v53)(v59, v60);
      v19 = _swiftEmptyArrayStorage;
      v42 = sub_11B48C();
      v18 = 0;
      while (v42 != v18)
      {
        if ((v41 & 0xC000000000000001) != 0)
        {
          v43 = sub_16AD04();
        }

        else
        {
          if (v18 >= *(&dword_10 + (v41 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_21;
          }

          v43 = *(v41 + 8 * v18 + 32);
        }

        v44 = v43;
        v7 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        objc_opt_self();
        v45 = swift_dynamicCastObjCClass();
        if (v45)
        {
          v12 = v45;
          sub_16A7B4();
          if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_16A7F4();
          }

          sub_16A814();
          v19 = _swiftEmptyArrayStorage;
          ++v18;
        }

        else
        {

          ++v18;
        }
      }

      a5(_swiftEmptyArrayStorage);
      v40 = a2;
      if (a2 != a1)
      {
        continue;
      }

      break;
    }
  }

  else
  {

    sub_9F6C();
    sub_16ACF4(34);

    sub_D434();
    v65 = v46;
    v70._countAndFlagsBits = sub_16AFA4();
    sub_16A744(v70);

    sub_16A9A4();
    sub_15B61C();
    sub_386D8(v47, v48, v49, v50, v51, v52, 70, 0xD000000000000020, v65);
  }

  sub_CA368();
}

id sub_15A268@<X0>(void *a1@<X8>)
{
  result = [v1 recirculation];
  v4 = result;
  if (result)
  {
    result = sub_16484(0, &qword_1F0008, CAFRecirculation_ptr);
    v5 = &off_1DAAD8;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

uint64_t sub_15A2DC()
{
  v1 = sub_169E44();
  sub_9F48();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_A138();
  v7 = v6 - v5;
  v8 = [v0 car];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = [v8 positionManager];

  if (!v10)
  {
    return 0;
  }

  v11 = (*(v3 + 104))(v7, enum case for CAUVehicleLayoutKey.End.front(_:), v1);
  __chkstk_darwin(v11);
  *(&v15 - 2) = v7;
  sub_159D44(sub_6F848, (&v15 - 4), &qword_1EE5B8, CAFVent_ptr, sub_13F7D0);

  (*(v3 + 8))(v7, v1);
  sub_132F98();
  v13 = v12;

  return v13;
}

void *sub_15A480()
{
  v1 = [v0 car];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 positionManager];

    if (v3)
    {
      sub_159D44(sub_71A58, 0, &qword_1EE5B0, CAFFan_ptr, sub_13F8BC);

      sub_133390();
      v2 = v4;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t sub_15A550(SEL *a1, unint64_t *a2, void *a3, uint64_t (*a4)(void *))
{
  v6 = sub_15B530(v4, a1, a2, a3);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v8 = a4(v7);

  return v8;
}

void sub_15A5B0(char a1)
{
  sub_16ACF4(23);

  sub_D434();
  v7 = v2;
  if (a1)
  {
    v3._countAndFlagsBits = 28271;
  }

  else
  {
    v3._countAndFlagsBits = 6710895;
  }

  if (a1)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  v3._object = v4;
  sub_16A744(v3);

  v9._countAndFlagsBits = 46;
  v9._object = 0xE100000000000000;
  sub_16A744(v9);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v5 = sub_16A584();
  sub_9DA0(v5, qword_1E65C0);
  v6 = sub_16A9A4();
  sub_386D8(v6, 0x4000uLL, 0xD000000000000097, 0x80000000001920C0, 0xD00000000000001BLL, 0x8000000000192160, 50, 0xD000000000000014, v7);

  sub_16A974();
  [objc_opt_self() sleepForTimeInterval:0.3];

  sub_15A734(a1 & 1);
}

void sub_15A734(char a1)
{
  v2 = v1;
  v4 = sub_15B530(v2, &selRef_autoClimateControls, &qword_1EFFF0, CAFAutoClimateControl_ptr);
  if (v4)
  {
    v5 = v4;
    v6 = a1 & 1;
    v7 = sub_11B48C();
    for (i = 0; v7 != i; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = sub_16AD04();
      }

      else
      {
        if (i >= *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_18;
        }

        v9 = *(v5 + 8 * i + 32);
      }

      v10 = v9;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

      if ([v9 hasLevel])
      {
        if ([v10 level] != v6)
        {
          [v10 setLevel:v6];
        }
      }
    }

    sub_CA368();
  }

  else
  {
    sub_CA368();
  }
}

id sub_15A86C@<X0>(void *a1@<X8>)
{
  result = [v1 steeringWheelHeatingCooling];
  v4 = result;
  if (result)
  {
    result = sub_16484(0, &qword_1F0018, CAFSteeringWheelHeatingCooling_ptr);
    v5 = &off_1D7300;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

void sub_15A8E0(uint64_t a1)
{
  v3 = sub_169E84();
  sub_9F48();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_A138();
  v50 = v8 - v7;
  v60 = sub_5758(&qword_1EFFF8, &qword_17B100);
  __chkstk_darwin(v60);
  v10 = &v39 - v9;
  v11 = sub_5758(&qword_1E7DE0, &unk_16FB30);
  v12 = __chkstk_darwin(v11 - 8);
  v53 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v39 - v15;
  __chkstk_darwin(v14);
  v18 = &v39 - v17;
  if (a1)
  {
    v19 = [v1 car];
    if (!v19 || (v20 = v19, v21 = [v19 seat], v20, !v21) || (v61 = sub_15B5A4(v21)) == 0)
    {

      v61 = _swiftEmptyArrayStorage;
    }

    if (a1 == 1)
    {
      sub_133794();

      goto LABEL_40;
    }

    v63 = _swiftEmptyArrayStorage;
    v22 = v61;
    v23 = sub_11B48C();
    v24 = 0;
    v58 = v22 & 0xC000000000000001;
    v59 = v23;
    v46 = enum case for CAUVehicleLayoutKey.seat_3rdRow_right(_:);
    v56 = (v5 + 104);
    v57 = v22 & 0xFFFFFFFFFFFFFF8;
    v45 = enum case for CAUVehicleLayoutKey.seat_3rdRow_left(_:);
    v44 = enum case for CAUVehicleLayoutKey.seat_3rdRow(_:);
    v43 = enum case for CAUVehicleLayoutKey.seat_2ndRow_right(_:);
    v42 = enum case for CAUVehicleLayoutKey.seat_2ndRow_left(_:);
    v41 = enum case for CAUVehicleLayoutKey.seat_2ndRow(_:);
    v49 = (v5 + 32);
    v52 = (v5 + 8);
    v25 = a1 - 2;
    v47 = enum case for CAUVehicleLayoutKey.seat_front_right(_:);
    v55 = enum case for CAUVehicleLayoutKey.seat_front_left(_:);
    v40 = enum case for CAUVehicleLayoutKey.seat_front(_:);
    v26 = v53;
    v54 = v25;
    v48 = v10;
    while (1)
    {
      if (v59 == v24)
      {

        sub_133794();

        break;
      }

      if (v58)
      {
        v27 = sub_16AD04();
      }

      else
      {
        if (v24 >= *(v57 + 16))
        {
          goto LABEL_42;
        }

        v27 = v61[v24 + 4];
      }

      v28 = v27;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
LABEL_42:
        __break(1u);
        JUMPOUT(0x15AF50);
      }

      sub_16484(0, &qword_1EE5A8, CAFSeatHeatingCooling_ptr);
      v62 = v28;
      sub_16A994();
      v29 = v55;
      switch(v25)
      {
        case 0:
        case 2:
          goto LABEL_23;
        case 1:
        case 3:
          v29 = v47;
          goto LABEL_23;
        case 4:
          v29 = v40;
          goto LABEL_23;
        case 5:
          v29 = v42;
          goto LABEL_23;
        case 6:
          v29 = v43;
          goto LABEL_23;
        case 7:
          v29 = v41;
          goto LABEL_23;
        case 8:
          v29 = v45;
          goto LABEL_23;
        case 9:
          v29 = v46;
          goto LABEL_23;
        case 10:
          v29 = v44;
LABEL_23:
          (*v56)(v16, v29, v3);
          v30 = 0;
          break;
        default:
          v30 = 1;
          break;
      }

      sub_5370(v16, v30, 1, v3);
      v31 = *(v60 + 48);
      sub_63A84(v18, v10);
      sub_63A84(v16, &v10[v31]);
      sub_1487F0(v10);
      if (v33)
      {
        v32 = v26;
        sub_D188(v16, &qword_1E7DE0, &unk_16FB30);
        sub_D188(v18, &qword_1E7DE0, &unk_16FB30);
        sub_1487F0(&v10[v31]);
        if (!v33)
        {
          goto LABEL_32;
        }

        sub_D188(v10, &qword_1E7DE0, &unk_16FB30);
      }

      else
      {
        sub_63A84(v10, v26);
        sub_1487F0(&v10[v31]);
        if (v33)
        {
          sub_D188(v16, &qword_1E7DE0, &unk_16FB30);
          sub_D188(v18, &qword_1E7DE0, &unk_16FB30);
          v32 = v26;
          (*v52)(v26, v3);
LABEL_32:
          sub_D188(v10, &qword_1EFFF8, &qword_17B100);
LABEL_33:

          goto LABEL_36;
        }

        v34 = v50;
        (*v49)(v50, &v10[v31], v3);
        sub_15B4D8();
        v51 = sub_16A634();
        v35 = *v52;
        v36 = v3;
        v37 = v53;
        (*v52)(v34, v36);
        sub_D188(v16, &qword_1E7DE0, &unk_16FB30);
        sub_D188(v18, &qword_1E7DE0, &unk_16FB30);
        v32 = v37;
        v38 = v37;
        v3 = v36;
        v10 = v48;
        v35(v38, v3);
        v25 = v54;
        sub_D188(v10, &qword_1E7DE0, &unk_16FB30);
        if ((v51 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      sub_16AD34();
      sub_16AD64();
      v25 = v54;
      sub_16AD74();
      sub_16AD44();
LABEL_36:
      ++v24;
      v26 = v32;
    }
  }

LABEL_40:
  sub_CA368();
}

id sub_15AF7C@<X0>(void *a1@<X8>)
{
  result = [v1 cabin];
  v4 = result;
  if (result)
  {
    result = sub_16484(0, &qword_1F0010, CAFCabin_ptr);
    v5 = &off_1D8038;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

void sub_15B1B0(char a1)
{
  if (CarCommandsUseCase.rawValue.getter(a1) == 0x616D696C43746573 && v3 == 0xEA00000000006574)
  {

LABEL_13:
    v9 = [v1 cabin];
    if (!v9)
    {
      return;
    }

    v10 = v9;
    if ([v9 hasHvacOn])
    {
      v11 = [v10 hvacOnInvalid] ^ 1;
    }

    else
    {
      v11 = 0;
    }

    if ([v10 hasCompressorOn] && (objc_msgSend(v10, "compressorOnDisabled") & 1) == 0)
    {
      v19 = [v10 compressorOnInvalid];
      if (v11 & 1) == 0 && (v19)
      {
        goto LABEL_20;
      }
    }

    else if (!v11)
    {
LABEL_20:
      sub_16A964();

      return;
    }

    return;
  }

  v5 = sub_16AE54();

  if (v5)
  {
    goto LABEL_13;
  }

  if (CarCommandsUseCase.rawValue.getter(a1) == 0x4D6F747541746573 && v6 == 0xEB0000000065646FLL)
  {
  }

  else
  {
    v8 = sub_16AE54();

    if ((v8 & 1) == 0)
    {
      return;
    }
  }

  v12 = sub_15B530(v1, &selRef_autoClimateControls, &qword_1EFFF0, CAFAutoClimateControl_ptr);
  if (v12)
  {
    v13 = v12;
    v14 = sub_11B48C();
    v15 = 0;
    v16 = &off_1E2000;
    while (1)
    {
      if (v14 == v15)
      {

        sub_11B48C();

        return;
      }

      if ((v13 & 0xC000000000000001) != 0)
      {
        v17 = sub_16AD04();
      }

      else
      {
        if (v15 >= *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_42;
        }

        v17 = *(v13 + 8 * v15 + 32);
      }

      v18 = v17;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (![v17 hasLevel] || objc_msgSend(v18, "levelInvalid") || (objc_msgSend(v18, v16[380]) & 1) != 0)
      {
      }

      else
      {
        sub_16AD34();
        sub_16AD64();
        sub_16AD74();
        sub_16AD44();
        v16 = &off_1E2000;
      }

      ++v15;
    }

    __break(1u);
LABEL_42:
    __break(1u);
  }
}

unint64_t sub_15B4D8()
{
  result = qword_1F0000;
  if (!qword_1F0000)
  {
    sub_169E84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1F0000);
  }

  return result;
}

uint64_t sub_15B530(void *a1, SEL *a2, unint64_t *a3, void *a4)
{
  v6 = [a1 *a2];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  sub_16484(0, a3, a4);
  v8 = sub_16A7D4();

  return v8;
}

uint64_t sub_15B5A4(void *a1)
{
  v2 = [a1 heatingCoolings];

  if (!v2)
  {
    return 0;
  }

  sub_16484(0, &qword_1EE5A8, CAFSeatHeatingCooling_ptr);
  v3 = sub_16A7D4();

  return v3;
}

void *sub_15B634()
{
  v1 = v0;
  type metadata accessor for CarTire(0);
  sub_9F48();
  v127 = v3;
  v128 = v2;
  __chkstk_darwin(v2);
  sub_A128();
  v6 = v4 - v5;
  __chkstk_darwin(v7);
  v135 = &v107 - v8;
  v131 = sub_169E84();
  sub_9F48();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_A128();
  v14 = v12 - v13;
  v16 = __chkstk_darwin(v15);
  v112 = &v107 - v17;
  v18 = __chkstk_darwin(v16);
  v114 = &v107 - v19;
  __chkstk_darwin(v18);
  v116 = &v107 - v20;
  v137 = sub_5758(&qword_1EA368, &unk_1741F0);
  sub_9F48();
  v22 = v21;
  __chkstk_darwin(v23);
  sub_A128();
  v126 = v24 - v25;
  __chkstk_darwin(v26);
  v136 = &v107 - v27;
  v120 = v1;
  v28 = [v1 tirePressures];
  sub_16484(0, &qword_1F0020, CAFTirePressure_ptr);
  v29 = sub_16A7D4();

  result = sub_11B48C();
  if (result)
  {
    if (result >= 1)
    {
      v110 = v14;
      v32 = 0;
      v132 = v29 & 0xC000000000000001;
      v124 = (v22 + 32);
      v123 = enum case for CAUVehicleLayoutKey.tire_front_left(_:);
      v130 = (v10 + 104);
      v129 = (v10 + 8);
      v113 = enum case for CAUVehicleLayoutKey.tire_front_right(_:);
      v111 = enum case for CAUVehicleLayoutKey.tire_rear_left(_:);
      v119 = 0x80000000001922C0;
      v109 = enum case for CAUVehicleLayoutKey.tire_rear_right(_:);
      v108 = 0x8000000000190A20;
      v122 = (v22 + 16);
      v121 = (v22 + 8);
      v118 = 0x8000000000192350;
      v33 = _swiftEmptyArrayStorage;
      v117 = 0xD00000000000001CLL;
      *&v31 = 136315138;
      v115 = v31;
      v34 = v116;
      v133 = result;
      v134 = v29;
      v125 = v6;
      while (1)
      {
        if (v132)
        {
          v35 = sub_16AD04();
        }

        else
        {
          v35 = *(v29 + 8 * v32 + 32);
        }

        v36 = v35;
        v138 = v33;
        v37 = [v35 pressure];
        if (!v37)
        {
          v142 = 0;
          v143 = 0xE000000000000000;
          sub_16ACF4(33);

          v142 = v117;
          v143 = v118;
          v52 = [v120 description];
          v53 = sub_16A664();
          v55 = v54;

          v144._countAndFlagsBits = v53;
          v144._object = v55;
          sub_16A744(v144);

          v145._countAndFlagsBits = 32;
          v145._object = 0xE100000000000000;
          sub_16A744(v145);
          v56 = [v36 description];
          v57 = sub_16A664();
          v59 = v58;

          v146._countAndFlagsBits = v57;
          v146._object = v59;
          sub_16A744(v146);

          v61 = v142;
          v60 = v143;
          if (qword_1E58E8 != -1)
          {
            sub_B4F54();
            swift_once();
          }

          v62 = sub_16A584();
          sub_9DA0(v62, qword_1E65C0);
          v63 = sub_16A9A4();
          v141._countAndFlagsBits = 0xD00000000000008BLL;
          v141._object = v119;
          v139 = 47;
          v140 = 0xE100000000000000;
          sub_D030();
          v64 = (sub_16AB34() + 16);
          if (*v64)
          {
            v65 = &v64[2 * *v64];
            v66 = *v65;
            v67 = v65[1];

            v141._countAndFlagsBits = v66;
            v141._object = v67;
            v147._countAndFlagsBits = 32;
            v147._object = 0xE100000000000000;
            sub_16A744(v147);
            v148._countAndFlagsBits = 0x6954726143746567;
            v148._object = 0xED00002928736572;
            sub_16A744(v148);
            countAndFlagsBits = v141._countAndFlagsBits;
            object = v141._object;
          }

          else
          {

            countAndFlagsBits = 0x6954726143746567;
            object = 0xED00002928736572;
          }

          v142 = countAndFlagsBits;
          v143 = object;
          v141._countAndFlagsBits = 58;
          v141._object = 0xE100000000000000;
          v139 = 18;
          v149._countAndFlagsBits = sub_16AE24();
          sub_16A744(v149);

          sub_16A744(v141);

          v82._countAndFlagsBits = sub_378D0(0x800000uLL);
          if (v82._object)
          {
            v141._countAndFlagsBits = 32;
            v141._object = 0xE100000000000000;
            sub_16A744(v82);

            sub_16A744(v141);
          }

          v83 = HIBYTE(v60) & 0xF;
          if ((v60 & 0x2000000000000000) == 0)
          {
            v83 = v61 & 0xFFFFFFFFFFFFLL;
          }

          if (v83)
          {
            v141._countAndFlagsBits = 32;
            v141._object = 0xE100000000000000;
            v150._countAndFlagsBits = v61;
            v150._object = v60;
            sub_16A744(v150);
            sub_16A744(v141);
          }

          v85 = v142;
          v84 = v143;
          v86 = sub_16A574();
          if (os_log_type_enabled(v86, v63))
          {
            v87 = swift_slowAlloc();
            v88 = swift_slowAlloc();
            v141._countAndFlagsBits = v88;
            *v87 = v115;
            v89 = sub_15BC8(v85, v84, &v141._countAndFlagsBits);

            *(v87 + 4) = v89;
            _os_log_impl(&dword_0, v86, v63, "%s", v87, 0xCu);
            sub_D13C(v88);
          }

          else
          {
          }

          v29 = v134;
          v33 = v138;
          goto LABEL_46;
        }

        v38 = v37;
        sub_16484(0, &qword_1EA380, NSUnitPressure_ptr);
        v39 = v126;
        sub_1682E4();

        (*v124)(v136, v39, v137);
        v40 = [v36 vehicleLayoutKey];
        v41 = sub_16A664();
        v43 = v42;

        v44 = v131;
        v45 = *v130;
        (*v130)(v34, v123, v131);
        v46 = sub_169E74();
        v48 = v47;
        v49 = *v129;
        (*v129)(v34, v44);
        if (v46 == v41 && v48 == v43)
        {
          break;
        }

        v51 = sub_15C304(v46, v48);

        if (v51)
        {
          goto LABEL_19;
        }

        sub_15C320();
        v45();
        v76 = sub_169E74();
        v78 = v77;
        v79 = sub_15C330();
        v49(v79);
        if (v76 == v41 && v78 == v43)
        {

LABEL_49:

          v70 = 1;
          v34 = v116;
          goto LABEL_20;
        }

        v81 = sub_15C304(v76, v78);

        if (v81)
        {
          goto LABEL_49;
        }

        sub_15C320();
        v45();
        v90 = sub_169E74();
        v92 = v91;
        v93 = sub_15C330();
        v49(v93);
        v94 = v90;
        v95 = v90 == v41 && v92 == v43;
        v34 = v116;
        if (v95)
        {

LABEL_57:

          v70 = 2;
          goto LABEL_20;
        }

        v96 = sub_15C304(v94, v92);

        if (v96)
        {
          goto LABEL_57;
        }

        sub_15C320();
        v45();
        v97 = sub_169E74();
        v99 = v98;
        v100 = sub_15C330();
        v49(v100);
        if (v97 != v41 || v99 != v43)
        {
          v102 = sub_15C304(v97, v99);

          v71 = v125;
          if (v102)
          {
            v70 = 3;
          }

          else
          {
            if (qword_1E58E8 != -1)
            {
              sub_B4F54();
              swift_once();
            }

            v103 = sub_16A584();
            sub_9DA0(v103, qword_1E65C0);
            v104 = sub_16A9A4();
            sub_386D8(v104, 0x400uLL, 0xD00000000000008BLL, v119, 0x6954726143746567, 0xED00002928736572, 32, 0xD000000000000018, v108);
            v70 = 4;
          }

          v33 = v138;
          goto LABEL_21;
        }

        v70 = 3;
LABEL_20:
        v33 = v138;
        v71 = v125;
LABEL_21:
        v72 = [v36 pressureState];
        if (v72 >= 6)
        {
          v73 = 0;
        }

        else
        {
          v73 = v72;
        }

        v74 = v135;
        (*v122)(&v135[*(v128 + 24)], v136, v137);
        *v74 = v70;
        v74[1] = v73;
        sub_B9CEC(v74, v71);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_108BEC();
          v33 = v105;
        }

        v29 = v134;
        v75 = v33[2];
        if (v75 >= v33[3] >> 1)
        {
          sub_108BEC();
          v33 = v106;
        }

        sub_B9D50(v135);
        (*v121)(v136, v137);
        v33[2] = v75 + 1;
        sub_15C2A0(v71, v33 + ((*(v127 + 80) + 32) & ~*(v127 + 80)) + *(v127 + 72) * v75);
LABEL_46:
        if (v133 == ++v32)
        {

          return v33;
        }
      }

LABEL_19:

      v70 = 0;
      goto LABEL_20;
    }

    __break(1u);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_15C2A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarTire(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_15C304(uint64_t a1, uint64_t a2)
{

  return sub_16AE54();
}

id sub_15C340(unint64_t a1)
{
  result = [v1 hasOn];
  if (result)
  {
    result = [v1 setOn:1];
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a1 > 0xFF)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  return [v1 setFanLevel:a1];
}

id sub_15C3BC(char a1)
{
  v3 = [v1 hasOn];
  if (v3)
  {
    [v1 setOn:a1 & 1];
  }

  return v3;
}

void sub_15C414()
{
  v1 = [v0 fanLevelRange];
  v2 = [v1 minimumValue];

  v3 = [v0 fanLevelRange];
  v4 = [v3 maximumValue];

  if (v4 < v2)
  {
    __break(1u);
  }
}

uint64_t sub_15C594()
{
  sub_D2DC();
  v0[7] = v1;
  v2 = sub_168E14();
  v0[8] = v2;
  v0[9] = *(v2 - 8);
  v0[10] = sub_D3C8();
  sub_16A164();
  v0[11] = sub_D3C8();
  sub_10B4C();

  return _swift_task_switch(v3);
}

uint64_t sub_15C668()
{
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v1 = sub_16A584();
  sub_9DA0(v1, qword_1E65C0);
  v2 = sub_16A9A4();
  sub_386D8(v2, 0x400000000uLL, 0xD000000000000090, 0x80000000001923C0, 0xD00000000000001CLL, 0x80000000001924D0, 13, 0xD00000000000002ELL, 0x80000000001924F0);
  type metadata accessor for CarCommandsCATsSimple(0);
  sub_16A154();
  *(v0 + 96) = sub_16A0F4();
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v3[1] = sub_15C7C4;

  return sub_E0554();
}

uint64_t sub_15C7C4()
{
  sub_D2DC();
  sub_D2A4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 112) = v4;
  *(v2 + 120) = v0;

  sub_10B4C();

  return _swift_task_switch(v5);
}

uint64_t sub_15C8CC()
{
  v1 = type metadata accessor for ConfirmationSnippetFactory();
  sub_12C0B0(v1);
  sub_F38BC();
  sub_168D84();
  v2 = sub_168E34();
  swift_allocObject();
  v3 = sub_168E24();
  v0[5] = v2;
  v0[6] = &protocol witness table for ResponseFactory;
  v0[2] = v3;
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_15C9D0;

  return sub_14AE58();
}

uint64_t sub_15C9D0()
{
  v2 = *v1;
  sub_D2A4();
  *v3 = v2;
  v5 = v4[10];
  v6 = v4[9];
  v7 = v4[8];
  v8 = *v1;
  sub_D2A4();
  *v9 = v8;
  *(v2 + 136) = v0;

  (*(v6 + 8))(v5, v7);
  if (!v0)
  {
    sub_D13C((v2 + 16));
  }

  sub_10B4C();

  return _swift_task_switch(v10);
}

uint64_t sub_15CB44()
{

  sub_D37C();

  return v1();
}

uint64_t sub_15CBCC()
{
  sub_D2DC();

  sub_D37C();

  return v0();
}

uint64_t sub_15CC38()
{
  sub_D2DC();

  sub_D13C((v0 + 16));

  sub_D37C();

  return v1();
}

uint64_t sub_15CCB8()
{
  sub_D2DC();
  v0[19] = v1;
  v0[20] = v2;
  sub_5758(&qword_1E6048, &qword_16D890);
  v0[21] = sub_D3C8();
  v3 = sub_1693E4();
  v0[22] = v3;
  v0[23] = *(v3 - 8);
  v0[24] = sub_D3C8();
  sub_10B4C();

  return _swift_task_switch(v4);
}

uint64_t sub_15CD98()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 176);
  sub_16ACF4(33);
  *(v0 + 136) = 0;
  v20 = (v0 + 96);
  v21 = (v0 + 56);
  *(v0 + 144) = 0xE000000000000000;
  v23._object = 0x80000000001924B0;
  v23._countAndFlagsBits = 0xD00000000000001FLL;
  sub_16A744(v23);
  sub_169384();
  sub_16AD84();
  v4 = *(v1 + 8);
  v4(v2, v3);
  v5 = *(v0 + 136);
  v6 = *(v0 + 144);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v7 = *(v0 + 192);
  v8 = *(v0 + 176);
  v9 = sub_16A584();
  sub_9DA0(v9, qword_1E65C0);
  v10 = sub_16A9A4();
  sub_386D8(v10, 0x400000000uLL, 0xD000000000000090, 0x80000000001923C0, 0xD000000000000021, 0x800000000017F850, 25, v5, v6);

  sub_169384();
  sub_86E4(v7, &_swiftEmptySetSingleton, v20);
  v4(v7, v8);
  if (!*(v0 + 120))
  {
    sub_D188(v20, &qword_1E5F80, &unk_16E7E0);
    v11 = v0 + 56;
    *v21 = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    goto LABEL_11;
  }

  sub_5758(&qword_1E5F90, &qword_170270);
  sub_5758(&qword_1E5F98, &unk_16D420);
  v11 = v0 + 56;
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 88) = 0;
    *v21 = 0u;
    *(v0 + 72) = 0u;
    goto LABEL_11;
  }

  if (!*(v0 + 80))
  {
LABEL_11:
    sub_D188(v11, &qword_1E5F88, &unk_16D410);
    type metadata accessor for CarCommandsError(0);
    sub_15D9EC(&qword_1E92F0, 255, type metadata accessor for CarCommandsError, &unk_17A85C);
    swift_allocError();
    sub_169384();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_D37C();
    goto LABEL_12;
  }

  v12 = *(v0 + 168);
  sub_D250(v21, v0 + 16);
  v13 = *(v0 + 40);
  v14 = *(v0 + 48);
  sub_D084((v0 + 16), v13);
  v15 = (*(v14 + 32))(v13, v14);
  v16 = sub_169004();
  v17 = &enum case for ConfirmationResponse.confirmed(_:);
  if ((v15 & 1) == 0)
  {
    v17 = &enum case for ConfirmationResponse.rejected(_:);
  }

  (*(*(v16 - 8) + 104))(v12, *v17, v16);
  sub_5370(v12, 0, 1, v16);
  sub_169374();
  sub_D13C((v0 + 16));

  sub_D37C();
LABEL_12:

  return v18();
}

uint64_t sub_15D1C4()
{
  sub_16ACF4(44);

  sub_1693A4();
  sub_15D9EC(&qword_1E6050, 255, &type metadata accessor for Input, &protocol conformance descriptor for Input);
  v4._countAndFlagsBits = sub_16AE24();
  sub_16A744(v4);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v0 = sub_16A584();
  sub_9DA0(v0, qword_1E65C0);
  v1 = sub_16A9A4();
  sub_386D8(v1, 0x400000000uLL, 0xD000000000000090, 0x80000000001923C0, 0xD000000000000012, 0x8000000000192460, 36, 0xD00000000000002ALL, 0x8000000000192480);

  return sub_168C64();
}

uint64_t sub_15D370()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_503C8;

  return sub_15C594();
}

uint64_t sub_15D420()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_B758C;

  return sub_15CCB8();
}

uint64_t sub_15D4C0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = type metadata accessor for ExtremeVolumeNeedsConfirmationStrategy();
  v6 = sub_15D9EC(qword_1F00D8, v5, type metadata accessor for ExtremeVolumeNeedsConfirmationStrategy, &unk_17B250);
  *v3 = v1;
  v3[1] = sub_B758C;

  return YesNoPromptFlowStrategy.makePromptForConfirmation(itemToConfirm:)(a1, v4, v6);
}

uint64_t sub_15D5A8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = type metadata accessor for ExtremeVolumeNeedsConfirmationStrategy();
  v6 = sub_15D9EC(qword_1F00D8, v5, type metadata accessor for ExtremeVolumeNeedsConfirmationStrategy, &unk_17B250);
  *v3 = v1;
  v3[1] = sub_B758C;

  return YesNoPromptFlowStrategy.makeRepromptOnEmptyParse(itemToConfirm:)(a1, v4, v6);
}

uint64_t sub_15D690(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = type metadata accessor for ExtremeVolumeNeedsConfirmationStrategy();
  v6 = sub_15D9EC(qword_1F00D8, v5, type metadata accessor for ExtremeVolumeNeedsConfirmationStrategy, &unk_17B250);
  *v3 = v1;
  v3[1] = sub_B758C;

  return YesNoPromptFlowStrategy.makeRepromptOnLowConfidence(itemToConfirm:)(a1, v4, v6);
}

uint64_t sub_15D778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_B758C;

  return PromptForConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse()(a1, a2, a3);
}

uint64_t sub_15D82C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_B758C;

  return PromptForConfirmationFlowStrategyAsync.makeFlowCancelledResponse()(a1, a2, a3);
}

uint64_t sub_15D8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_B758C;

  return PromptForConfirmationFlowStrategyAsync.makeErrorResponse(_:)(a1, a2, a3, a4);
}

uint64_t sub_15D9EC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_15DA34()
{
  sub_169FF4();
  swift_allocObject();
  sub_169FE4();
  sub_169F64();

  v0 = sub_169F44();

  return v0;
}

uint64_t sub_15DB08()
{
  sub_D2DC();
  v1[39] = v2;
  v1[40] = v0;
  v1[38] = v3;
  v1[41] = *v0;
  v4 = type metadata accessor for UnsupportedValueParameters(0);
  sub_D414(v4);
  v1[42] = sub_D3C8();
  v5 = sub_5758(&qword_1E5F78, &unk_16D400);
  sub_D414(v5);
  v1[43] = sub_D3C8();
  v6 = sub_168B74();
  sub_D414(v6);
  v1[44] = sub_D3C8();
  v7 = sub_1691E4();
  v1[45] = v7;
  v1[46] = *(v7 - 8);
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v8 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v8);
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  matched = type metadata accessor for NoCarKeyMatchParameters(0);
  v1[51] = matched;
  sub_D414(matched);
  v1[52] = sub_D3C8();
  v10 = sub_168FE4();
  v1[53] = v10;
  v1[54] = *(v10 - 8);
  v1[55] = sub_D3C8();
  sub_10B4C();

  return _swift_task_switch(v11);
}

uint64_t sub_15DD1C()
{
  v58 = v0;
  v2 = *(v0 + 432);
  v1 = *(v0 + 440);
  v3 = *(v0 + 424);
  v4 = *(v0 + 320);
  sub_169274();
  v54 = sub_169244();
  *(v0 + 448) = v54;
  sub_169264();
  v55 = sub_168FD4();
  v6 = v5;
  (*(v2 + 8))(v1, v3);
  v7 = *(v4 + 176);
  v8 = 0x80000000001925B0;
  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v9 = sub_16A584();
  sub_9DA0(v9, qword_1E65C0);
  v10 = sub_16A9A4();
  *(v0 + 264) = 0xD000000000000088;
  *(v0 + 272) = 0x8000000000192520;
  *(v0 + 280) = 47;
  *(v0 + 288) = 0xE100000000000000;
  sub_D030();
  v11 = sub_16AB34();
  v12 = sub_15AE4(v11);
  v14 = v13;

  if (v14)
  {
    v59._countAndFlagsBits = 32;
    v59._object = 0xE100000000000000;
    sub_16A744(v59);
    v60._countAndFlagsBits = 0xD00000000000002ALL;
    v60._object = 0x80000000001925B0;
    sub_16A744(v60);
    v15 = v12;
    v8 = v14;
  }

  else
  {
    v15 = 0xD00000000000002ALL;
  }

  v56 = v15;
  v57._countAndFlagsBits = 58;
  v57._object = 0xE100000000000000;
  *(v0 + 296) = 27;
  v61._countAndFlagsBits = sub_16AE24();
  sub_16A744(v61);

  sub_16A744(v57);

  v16._countAndFlagsBits = sub_378D0(v7);
  if (v16._object)
  {
    v57._countAndFlagsBits = 32;
    v57._object = 0xE100000000000000;
    sub_16A744(v16);

    v62._countAndFlagsBits = 32;
    v62._object = 0xE100000000000000;
    sub_16A744(v62);
  }

  v17 = sub_16A574();
  if (os_log_type_enabled(v17, v10))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v57._countAndFlagsBits = v19;
    *v18 = 136315138;
    v20 = sub_15BC8(v56, v8, &v57._countAndFlagsBits);

    *(v18 + 4) = v20;
    _os_log_impl(&dword_0, v17, v10, "%s", v18, 0xCu);
    sub_D13C(v19);
  }

  else
  {
  }

  v21 = v54;

  v22 = sub_D95F4(v21, v55, v6);
  *(v0 + 544) = v22;
  if (v22 > 0xF7u)
  {
    type metadata accessor for CarCommandsError(0);
    sub_11D28();
    swift_allocError();
    *v23 = v55;
    v23[1] = v6;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_15F5EC();

    sub_D37C();
    sub_15F694();

    __asm { BRAA            X1, X16 }
  }

  v26 = sub_169234();
  v27 = sub_11F404(v26);

  if (v27)
  {

    *(v0 + 456) = [objc_allocWithZone(SAUIAppPunchOut) init];
    sub_F30B0();
    v29 = v28;
    sub_16AAE4();
    if (v30)
    {
      sub_16A6E4();

      v31 = 0;
    }

    else
    {
      v31 = 1;
    }

    v40 = *(v0 + 400);
    v41 = sub_16A0C4();
    v42 = 1;
    sub_5370(v40, v31, 1, v41);
    if (v29)
    {
      sub_16A6E4();

      v42 = 0;
    }

    v44 = *(v0 + 408);
    v43 = *(v0 + 416);
    v46 = *(v0 + 392);
    v45 = *(v0 + 400);
    v47 = *(v0 + 320);
    sub_5370(v46, v42, 1, v41);
    sub_16A6E4();
    sub_148950();
    sub_5370(v48, v49, v50, v41);
    sub_16304(v45, v43);
    sub_16304(v46, v43 + *(v44 + 20));
    sub_D084((v47 + qword_1F0E60), *(v47 + qword_1F0E60 + 24));
    v51 = swift_task_alloc();
    *(v0 + 464) = v51;
    *v51 = v0;
    v51[1] = sub_15E3AC;
    sub_15F694();

    return sub_15702C(v52);
  }

  else
  {
    sub_10824(*(v0 + 320) + qword_1F0E60, v0 + 16);
    sub_D084((v0 + 16), *(v0 + 40));
    sub_16A6E4();

    sub_16A0C4();
    sub_148950();
    sub_5370(v32, v33, v34, v35);
    v36 = swift_task_alloc();
    *(v0 + 504) = v36;
    *v36 = v0;
    v36[1] = sub_15E984;
    sub_15F694();

    return sub_157778(v37);
  }
}

uint64_t sub_15E3AC()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 472) = v4;
  *(v2 + 480) = v0;

  sub_10B4C();

  return _swift_task_switch(v5);
}

uint64_t sub_15E4B0()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 544);
  swift_beginAccess();
  sub_10824(v1 + 184, v0 + 136);
  sub_168B64();
  sub_15F63C();
  sub_1691A4();
  sub_1691C4();
  sub_12B484(v2);
  sub_168E14();
  sub_148950();
  sub_5370(v3, v4, v5, v6);
  sub_1691B4();
  v7 = *(v0 + 160);
  v8 = *(v0 + 168);
  sub_D084((v0 + 136), v7);
  v9 = swift_task_alloc();
  *(v0 + 488) = v9;
  *v9 = v0;
  v9[1] = sub_15E5F4;
  v10 = *(v0 + 472);
  v11 = *(v0 + 384);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v0 + 176, v10, v11, v7, v8);
}

uint64_t sub_15E5F4()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v4 = *v1;
  sub_D2A4();
  *v5 = v4;
  *(v6 + 496) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_15E6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  v13 = *(v12 + 448);

  sub_15F614();
  sub_15F5EC();

  sub_D37C();
  sub_10B0C();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_15E7A8()
{
  v1 = *(v0 + 472);
  v3 = *(v0 + 448);
  v2 = *(v0 + 456);
  v4 = *(v0 + 304);
  (*(*(v0 + 368) + 8))(*(v0 + 384), *(v0 + 360));
  sub_D250((v0 + 176), v4);
  sub_D13C((v0 + 136));

  sub_15F614();
  sub_15F66C();

  sub_D37C();

  return v5();
}

uint64_t sub_15E8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  v13 = v12[59];
  v15 = v12[56];
  v14 = v12[57];
  (*(v12[46] + 8))(v12[48], v12[45]);
  sub_D13C(v12 + 17);

  sub_15F614();
  sub_15F5EC();

  sub_D37C();
  sub_10B0C();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_15E984()
{
  v2 = *v1;
  sub_D2A4();
  *v4 = v3;
  v5 = *v1;
  sub_D2A4();
  *v6 = v5;
  *(v8 + 512) = v7;
  *(v8 + 520) = v0;

  sub_15F58C(*(v2 + 336), type metadata accessor for UnsupportedValueParameters);
  sub_10B4C();

  return _swift_task_switch(v9);
}

uint64_t sub_15EACC()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 544);
  sub_D13C((v0 + 16));
  swift_beginAccess();
  sub_10824(v1 + 184, v0 + 56);
  sub_168B64();
  sub_15F63C();
  sub_1691A4();
  sub_1691C4();
  sub_12B484(v2);
  sub_168E14();
  sub_148950();
  sub_5370(v3, v4, v5, v6);
  sub_1691B4();
  v7 = *(v0 + 80);
  v8 = *(v0 + 88);
  sub_D084((v0 + 56), v7);
  v9 = swift_task_alloc();
  *(v0 + 528) = v9;
  *v9 = v0;
  v9[1] = sub_15EC18;
  v10 = *(v0 + 512);
  v11 = *(v0 + 376);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v0 + 96, v10, v11, v7, v8);
}

uint64_t sub_15EC18()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v4 = *v1;
  sub_D2A4();
  *v5 = v4;
  *(v6 + 536) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_15ED18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();

  sub_D13C((v12 + 16));
  sub_15F5EC();

  sub_D37C();
  sub_10B0C();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t sub_15EDC8()
{
  v1 = *(v0 + 512);
  v2 = *(v0 + 448);
  v3 = *(v0 + 304);
  (*(*(v0 + 368) + 8))(*(v0 + 376), *(v0 + 360));
  sub_D250((v0 + 96), v3);
  sub_D13C((v0 + 56));

  sub_15F66C();

  sub_D37C();

  return v4();
}

uint64_t sub_15EEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10BA4();
  sub_10B8C();
  v13 = v12[64];
  v14 = v12[56];
  (*(v12[46] + 8))(v12[47], v12[45]);
  sub_D13C(v12 + 7);

  sub_15F5EC();

  sub_D37C();
  sub_10B0C();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_15EF8C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  sub_10B4C();
  return _swift_task_switch(v3);
}

uint64_t sub_15EFE0()
{
  sub_D2DC();
  sub_169274();
  v1 = sub_169244();
  v2 = *(v0 + 8);

  return v2(v1);
}

double sub_15F04C()
{
  sub_D13C((v0 + qword_1F0E60));

  return result;
}

void *sub_15F08C()
{
  v0 = sub_3D044();
  sub_D13C((v0 + qword_1F0E60));

  return v0;
}

uint64_t sub_15F0D4()
{
  v0 = sub_15F08C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_15F140()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_138948;

  return sub_15DB08();
}

uint64_t sub_15F1EC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_15F284;

  return sub_15EF8C(a1);
}

uint64_t sub_15F284()
{
  sub_D2DC();
  v3 = v2;
  sub_D358();
  v4 = *v1;
  sub_D2A4();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_15F378(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for CommonUnsupportedValueFlowStrategy(0, a3[52], a3[53], a3[54]);
  *v9 = v4;
  v9[1] = sub_138948;

  return UnsupportedValueFlowStrategyAsync.makeLaunchAppWithIntentOutput(resolveRecord:)(a1, a2, v10, a4);
}

uint64_t sub_15F44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  type metadata accessor for CommonUnsupportedValueFlowStrategy(0, a5[52], a5[53], a5[54]);
  swift_getWitnessTable();
  *v7 = v5;
  v7[1] = sub_137E58;

  return sub_BCC54();
}

uint64_t sub_15F550(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_15F58C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_15F5EC()
{
}

uint64_t sub_15F614()
{

  return sub_15F58C(v0, type metadata accessor for NoCarKeyMatchParameters);
}

uint64_t sub_15F63C()
{

  return sub_169164();
}

uint64_t sub_15F66C()
{
}

uint64_t type metadata accessor for CarCommandsSetCarPlayClimateSyncCATsSimple(uint64_t a1)
{
  result = qword_1F0160;
  if (!qword_1F0160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_15F73C(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return _swift_task_switch(sub_15F760);
}

uint64_t sub_15F760()
{
  v1 = *(v0 + 48);
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v2 = swift_allocObject();
  *(v2 + 32) = 0xD000000000000011;
  *(v2 + 40) = 0x8000000000192670;
  *(v2 + 72) = &type metadata for Bool;
  *(v2 + 48) = v1;
  v5 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  *(v0 + 24) = v2;
  *(v2 + 16) = xmmword_16D9A0;
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_49014;

  return v5(0xD00000000000003DLL, 0x8000000000192630, v2);
}

uint64_t sub_15F8E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_16A164();
  sub_5B1C();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  __chkstk_darwin(v11 - 8);
  sub_57A0(a1, &v15 - v12);
  (*(v7 + 16))(v10, a2, v3);
  v13 = sub_16A0D4();
  (*(v7 + 8))(a2, v3);
  sub_5810(a1);
  return v13;
}

uint64_t sub_15FA44(uint64_t a1, uint64_t a2)
{
  sub_16A164();
  sub_5B1C();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_16A0E4();
  (*(v5 + 8))(a2, v2);
  return v9;
}

uint64_t sub_15FB4C()
{
  v0 = type metadata accessor for CarCommandsError(0);
  __chkstk_darwin(v0);
  v2 = (v34 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0) + 24);
  v3 = sub_1693E4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  sub_169384();
  sub_86E4(v6, &_swiftEmptySetSingleton, v34);
  (*(v4 + 8))(v6, v3);
  if (v34[3])
  {
    sub_5758(&qword_1E5F90, &qword_170270);
    sub_5758(&qword_1E5F98, &unk_16D420);
    if (swift_dynamicCast())
    {
      if (*(&v36 + 1))
      {
        sub_D250(&v35, v38);
        v7 = v39;
        v8 = v40;
        sub_D084(v38, v39);
        if ((*(v8 + 32))(v7, v8))
        {
          sub_5758(&qword_1E62F0, &unk_16D8C0);
          v9 = sub_1690A4();
          v10 = [v9 signals];

          if ((v10 & 2) != 0)
          {
            *v2 = 0xD000000000000056;
            v2[1] = 0x8000000000192780;
            swift_storeEnumTagMultiPayload();
            sub_11D28();
            swift_allocError();
            sub_548D0(v2, v28);
            if (qword_1E58E8 != -1)
            {
              sub_9ED4(&qword_1E58E8);
            }

            v29 = sub_16A584();
            sub_9DA0(v29, qword_1E65C0);
            v30 = sub_16A9A4();
            swift_getErrorValue();
            v31 = sub_16AEB4();
            sub_386D8(v30, 0x80uLL, 0xD000000000000099, 0x80000000001926E0, 0xD000000000000024, 0x8000000000180150, 36, v31, v32);

            sub_168C54();
            sub_5A09C(v2);
          }

          else
          {
            sub_168C64();
          }
        }

        else
        {
          if (qword_1E58E8 != -1)
          {
            sub_9ED4(&qword_1E58E8);
          }

          v20 = sub_16A584();
          sub_9DA0(v20, qword_1E65C0);
          sub_16A9A4();
          sub_1611F4();
          sub_386D8(v21, v22, v23, v24, v25, v26, 29, v27, v33);
          sub_168C54();
        }

        return sub_D13C(v38);
      }
    }

    else
    {
      v37 = 0;
      v35 = 0u;
      v36 = 0u;
    }
  }

  else
  {
    sub_D188(v34, &qword_1E5F80, &unk_16E7E0);
    v35 = 0u;
    v36 = 0u;
    v37 = 0;
  }

  sub_D188(&v35, &qword_1E5F88, &unk_16D410);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v11 = sub_16A584();
  sub_9DA0(v11, qword_1E65C0);
  sub_16A9A4();
  sub_1611F4();
  sub_386D8(v12, v13, v14, v15, v16, v17, 24, v18, v33);
  return sub_168C74();
}

uint64_t sub_160010()
{
  sub_D2DC();
  v1[16] = v2;
  v1[17] = v0;
  v1[15] = v3;
  sub_16A164();
  v1[18] = swift_task_alloc();
  v4 = sub_168E14();
  v1[19] = v4;
  v1[20] = *(v4 - 8);
  v1[21] = swift_task_alloc();
  sub_5758(&qword_1E6300, &qword_16ECE0);
  v1[22] = swift_task_alloc();

  return _swift_task_switch(sub_160134);
}

uint64_t sub_160134()
{
  v26 = v0;
  v1 = *(v0[17] + 176);
  v2 = 0x8000000000180280;
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v3 = 0xD00000000000002DLL;
  v4 = sub_16A584();
  sub_9DA0(v4, qword_1E65C0);
  v5 = sub_16A9A4();
  v0[10] = 0xD000000000000099;
  v0[11] = 0x80000000001926E0;
  v0[12] = 47;
  v0[13] = 0xE100000000000000;
  sub_D030();
  v6 = sub_16AB34();
  v7 = sub_15AE4(v6);
  v9 = v8;

  if (v9)
  {
    v28._countAndFlagsBits = 32;
    v28._object = 0xE100000000000000;
    sub_16A744(v28);
    v29._countAndFlagsBits = 0xD00000000000002DLL;
    v29._object = 0x8000000000180280;
    sub_16A744(v29);
    v3 = v7;
    v2 = v9;
  }

  v25._countAndFlagsBits = 58;
  v25._object = 0xE100000000000000;
  v0[14] = 44;
  v30._countAndFlagsBits = sub_16AE24();
  sub_16A744(v30);

  sub_16A744(v25);

  v10._countAndFlagsBits = sub_378D0(v1);
  if (v10._object)
  {
    v25._countAndFlagsBits = 32;
    v25._object = 0xE100000000000000;
    sub_16A744(v10);

    v31._countAndFlagsBits = 32;
    v31._object = 0xE100000000000000;
    sub_16A744(v31);
  }

  v11 = sub_16A574();
  if (os_log_type_enabled(v11, v5))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25._countAndFlagsBits = v13;
    *v12 = 136315138;
    v14 = sub_15BC8(v3, v2, &v25._countAndFlagsBits);

    *(v12 + 4) = v14;
    _os_log_impl(&dword_0, v11, v5, "%s", v12, 0xCu);
    sub_D13C(v13);
  }

  else
  {
  }

  sub_5758(&qword_1E62F0, &unk_16D8C0);
  v15 = sub_1690A4();
  v0[23] = v15;
  v16 = [v15 carName];
  if (v16)
  {
    v17 = v16;
    sub_99C94();

    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = v0[22];
  v20 = sub_16A0C4();
  v21 = sub_5370(v19, v18, 1, v20);
  sub_12C0B0(v21);
  sub_F38BC();
  sub_168D84();
  type metadata accessor for CarCommandsActivateSignalCATsSimple(0);
  sub_16A154();
  v0[24] = sub_16A0F4();
  v22 = swift_task_alloc();
  v0[25] = v22;
  *v22 = v0;
  v22[1] = sub_1604FC;
  v23 = v0[22];

  return sub_3187C(v23, 1);
}

uint64_t sub_1604FC()
{
  sub_D2DC();
  v2 = *v1;
  sub_D254();
  *v3 = v2;
  *(v5 + 208) = v4;
  *(v5 + 216) = v0;

  if (v0)
  {
    v6 = sub_1608C8;
  }

  else
  {
    v6 = sub_160624;
  }

  return _swift_task_switch(v6);
}

uint64_t sub_160624()
{
  sub_D2DC();
  v1 = *(v0 + 136);
  type metadata accessor for ConfirmationSnippetFactory();
  swift_beginAccess();
  sub_10824(v1 + 184, v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 224) = v2;
  *v2 = v0;
  v2[1] = sub_1606F0;

  return sub_14AE58();
}

uint64_t sub_1606F0()
{
  sub_D2DC();
  v5 = *v1;
  sub_D254();
  *v2 = v5;
  *(v5 + 232) = v0;

  sub_D13C((v5 + 16));
  if (v0)
  {
    v3 = sub_160984;
  }

  else
  {
    v3 = sub_160800;
  }

  return _swift_task_switch(v3);
}

uint64_t sub_160800()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = *(v0 + 152);

  (*(v4 + 8))(v3, v5);
  sub_D188(v1, &qword_1E6300, &qword_16ECE0);

  sub_D37C();

  return v6();
}

uint64_t sub_1608C8()
{
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = *(v0 + 152);

  (*(v3 + 8))(v2, v4);
  sub_D188(v1, &qword_1E6300, &qword_16ECE0);

  sub_D37C();

  return v5();
}

uint64_t sub_160984()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = *(v0 + 152);

  (*(v4 + 8))(v3, v5);
  sub_D188(v1, &qword_1E6300, &qword_16ECE0);

  sub_D37C();

  return v6();
}

uint64_t sub_160A74()
{
  v0 = sub_3D044();
  sub_D13C((v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin39ActivateSignalConfirmIntentFlowStrategy_commonPatterns));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for ActivateSignalConfirmIntentFlowStrategy(uint64_t a1)
{
  result = qword_1F01D8;
  if (!qword_1F01D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_160BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1611F0;

  return (sub_15048)(a1, a2, a3);
}

uint64_t sub_160C70()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1611F0;

  return sub_160010();
}

uint64_t sub_160D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for ActivateSignalConfirmIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_1611F0;

  return ConfirmIntentFlowStrategyAsync.makeRepromptOnEmptyParse(confirmParameters:)(a1, a2, v9, a4);
}

uint64_t sub_160DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for ActivateSignalConfirmIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_1611F0;

  return ConfirmIntentFlowStrategyAsync.makeRepromptOnLowConfidence(confirmParameters:)(a1, a2, v9, a4);
}

uint64_t sub_160EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for ActivateSignalConfirmIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_1611F0;

  return ConfirmIntentFlowStrategyAsync.makeConfirmationRejectedResponse(confirmParameters:)(a1, a2, v9, a4);
}

uint64_t sub_160F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for ActivateSignalConfirmIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_16103C;

  return ConfirmIntentFlowStrategyAsync.makeFlowCancelledResponse(confirmParameters:)(a1, a2, v9, a4);
}

uint64_t sub_16103C()
{
  sub_D2DC();
  v1 = *v0;
  sub_D254();
  *v2 = v1;

  sub_D37C();

  return v3();
}

uint64_t sub_161120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for ActivateSignalConfirmIntentFlowStrategy(0);
  *v10 = v5;
  v10[1] = sub_1611F0;

  return ConfirmIntentFlowStrategyAsync.makeErrorResponse(error:confirmParameters:)(a1, a2, a3, v11, a5);
}

uint64_t sub_161214@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 itemToConfirm];
  sub_16AB64();
  swift_unknownObjectRelease();
  if (swift_dynamicCast())
  {
    sub_16A6E4();

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_16A0C4();
  return sub_5370(a1, v4, 1, v5);
}

uint64_t sub_161308()
{
  sub_D2DC();
  v1 = [*(v0 + 16) on];
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_161370(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_6F428;

  return CAFRecirculation.setActivated(_:)(a1);
}

uint64_t sub_161408()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_11F1CC;

  return CAFRecirculation.isActivated()();
}

uint64_t sub_161498()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_79DCC;

  return CAFRecirculation.isConnected()();
}

uint64_t sub_161524(char a1)
{
  v2 = 2;
  v3 = 0;
  switch(a1)
  {
    case 1:
      v2 = 16;
      return sub_1615B0(v2);
    case 2:
      v2 = 4;
      return sub_1615B0(v2);
    case 3:
      v2 = 6;
      return sub_1615B0(v2);
    case 4:
      v2 = 20;
      return sub_1615B0(v2);
    case 5:
      return v3;
    default:
      return sub_1615B0(v2);
  }
}

uint64_t sub_1615B0(uint64_t a1)
{
  v2 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:a1];
  v3 = [v1 combinations];
  sub_76D10();
  v4 = sub_16A7D4();

  sub_1616C0(v2, v4);
  v6 = v5;

  return v6;
}

id sub_161658(unint64_t a1)
{
  result = [v1 setOn:1];
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (HIDWORD(a1))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  return [v1 setCurrentIndex:a1];
}

void sub_1616C0(uint64_t a1, uint64_t a2)
{
  v3 = sub_11B48C();
  v4 = 0;
  while (v3 != v4)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v5 = sub_16AD04();
    }

    else
    {
      if (v4 >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }

      v5 = *(a2 + 8 * v4 + 32);
    }

    v6 = v5;
    sub_76D10();
    v7 = sub_16AAD4();

    if (v7)
    {
      return;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_14;
    }
  }
}

void sub_1617E8()
{
  sub_CA350();
  sub_167BB8(v3, v4);
  v5 = sub_16A164();
  v6 = sub_D414(v5);
  __chkstk_darwin(v6);
  sub_167AA4();
  sub_16484(0, &qword_1E62F8, INActivateCarSignalIntent_ptr);
  v7 = sub_16484(0, &qword_1F0918, INActivateCarSignalIntentResponse_ptr);
  sub_167EC0(v7);
  sub_1681C4();
  v8 = sub_5758(&qword_1F0920, &qword_17BA78);
  sub_167EF0(v8);
  sub_1680D0();
  sub_37404();
  __chkstk_darwin(v9);
  sub_A138();
  v11 = sub_153A08(v10);
  v12(v11);
  v13 = sub_166F08(*v2, v1, &qword_1E62F8, INActivateCarSignalIntent_ptr, &qword_1F0990, &qword_17BAB8);
  sub_168290(v13);
  sub_167954();
  v16 = sub_37284(v14, &qword_1F0920, &qword_17BA78, v15);
  sub_168040(v16);
  sub_16AA0();
  v17 = sub_5758(&qword_1E6AA8, &qword_16E7D0);
  sub_167A68(v17);
  sub_168894();
  sub_1693F4();
  v18 = type metadata accessor for FeatureFlagHelper();
  sub_167CAC(v18);
  sub_168028();
  v19 = sub_168E34();
  sub_167F44(v19);
  sub_168E24();
  sub_A73D8();
  v20 = type metadata accessor for SnippetManager();
  v21 = sub_167C64(v20);
  sub_1680AC(v21);
  v22 = sub_5758(&qword_1F0930, &qword_17BA88);
  sub_167EF0(v22);
  sub_1680C4(&off_1D9AF0);
  v23 = sub_168224();
  sub_167D74(v23);
  sub_16A154();
  sub_7A6A8();
  qword_17BA78 = sub_16A094();
  unk_17BA80 = &off_1D4830;
  v24 = sub_16820C();
  sub_16814C(v24);
  sub_7A6A8();
  v25 = sub_16A094();
  sub_167E34(v25, &off_1DA7E8);
  sub_7A758();
  sub_7A6F4();
  sub_16799C();
  __chkstk_darwin(v26);
  v28 = sub_1678EC(v27, v66);
  v29(v28);
  sub_167BF4();
  sub_16817C();
  sub_167910();
  sub_167984();
  sub_37284(v30, &qword_1F0930, &qword_17BA88, v31);
  sub_AAB38();
  sub_168824();
  sub_16AA0();
  sub_167B50();
  sub_167F0C();
  sub_1688D4();
  sub_1693F4();
  sub_167B60();
  sub_167E14();
  sub_168E24();
  v32 = sub_167D14();
  sub_16807C(v32);
  v33 = sub_5758(&qword_1F0940, &qword_17BA90);
  v34 = sub_167E98(v33);
  sub_1680A0(&off_1D9AF0);
  sub_1681DC();
  sub_16A154();
  sub_7A6A8();
  v35 = sub_16A094();
  *(v0 + 24) = v2;
  sub_167DB4(v35, &off_1DA7E8);
  sub_7A758();
  sub_7A6F4();
  sub_16799C();
  __chkstk_darwin(v36);
  v38 = sub_CA01C(v37, v67);
  v39(v38);
  sub_167ABC();
  sub_168064();

  sub_167910();
  sub_16796C();
  sub_37284(v40, &qword_1F0940, &qword_17BA90, v41);
  sub_167B40();
  sub_168834();
  sub_16AA0();
  sub_167AE8();
  sub_1693F4();
  sub_1681AC();
  sub_167D94();
  sub_167DF4(v42);
  sub_167A0C(&qword_1F0958);
  sub_AAB38();
  sub_1687D4();
  sub_167FD0();
  sub_167F98();
  sub_1693F4();
  sub_167B60();
  sub_167CF4();
  sub_168E24();
  v43 = sub_167C40();
  sub_168070(v43);
  v44 = sub_5758(&qword_1F0960, &qword_17BAA0);
  sub_167E98(v44);
  sub_168094(&off_1D9AF0);
  sub_16823C();
  sub_16A154();
  sub_7A6A8();
  v45 = sub_16A094();
  *(v34 + 24) = v2;
  v46 = sub_168088(v45, &off_1DA7E8);
  sub_168164(v46);
  v47 = sub_167E54();
  sub_167FEC(v47, &off_1D4800);
  sub_7A758();
  sub_7A6F4();
  sub_16799C();
  __chkstk_darwin(v48);
  v50 = sub_1678EC(v49, v68);
  v51(v50);
  sub_167B14();
  sub_168194();
  sub_167910();
  sub_16793C();
  sub_37284(v52, &qword_1F0960, &qword_17BAA0, v53);
  sub_167B40();
  sub_168864();
  sub_16AA0();
  sub_167A38();
  sub_1693F4();
  sub_7A67C();
  sub_168E24();
  v54 = sub_30AF8();
  v56 = sub_5758(v54, v55);
  sub_167F7C(v56);
  v57 = sub_167B40();
  v60 = sub_167030(v57, v58, v59);
  sub_1680B8(v60);
  sub_1679E0(&qword_1F0978);
  sub_AAB38();
  sub_168814();
  sub_7A62C();
  sub_167D54();
  sub_1693F4();
  v61 = sub_167F38();
  v63 = sub_5758(v61, v62);
  *(sub_167E98(v63) + qword_1F0A50) = 0;
  sub_1681F4(qword_1F0A58);
  sub_7A740();
  sub_167D34();
  sub_167CF4();
  sub_168034();

  sub_168E24();
  v64 = sub_167CD0();
  sub_167F60(v64);
  sub_167BCC();
  sub_168134();

  sub_167C1C();
  v65 = sub_1679B4(&qword_1F0988);
  sub_167C88(v65);
  sub_167FB4();
  sub_167DD4();
  sub_CA368();
}

void sub_161E98()
{
  sub_CA350();
  sub_167BB8(v2, v3);
  v4 = sub_16826C();
  v5 = sub_D414(v4);
  __chkstk_darwin(v5);
  sub_167AA4();
  sub_16A494();
  sub_A73D8();
  v6 = sub_16A4F4();
  sub_167B84(v6);
  sub_1681C4();
  v7 = sub_167F38();
  v9 = sub_5758(v7, v8);
  sub_483C8(v9);
  sub_167F18();
  sub_37404();
  __chkstk_darwin(v10);
  v12 = sub_167A80(v11, v71);
  v13(v12);
  v16 = sub_168254(*v1, v14, v15, &qword_1F0910, &qword_17BA70);
  sub_168008(v16);
  sub_167954();
  v21 = sub_1680F0(v17, v18, v19, v20);
  sub_167E74(v21);
  sub_167EB4();

  v22 = sub_5758(&qword_1E9F50, &qword_173B28);
  sub_167A68(v22);
  sub_168894();
  sub_1693F4();
  v23 = type metadata accessor for FeatureFlagHelper();
  sub_167CAC(v23);
  sub_168028();
  v24 = sub_168E34();
  sub_167F44(v24);
  sub_168E24();
  sub_A73D8();
  v25 = type metadata accessor for SnippetManager();
  v26 = sub_167C64(v25);
  sub_1680AC(v26);
  v27 = sub_5758(&qword_1F08B0, &qword_17BA40);
  sub_167EF0(v27);
  sub_1680C4(&off_1D9AF0);
  v28 = sub_168224();
  sub_167D74(v28);
  sub_16A154();
  sub_7A6A8();
  *v0 = sub_16A094();
  v0[1] = &off_1D4830;
  v29 = sub_16820C();
  sub_16814C(v29);
  sub_7A6A8();
  v30 = sub_16A094();
  sub_167E34(v30, &off_1DA7E8);
  sub_7A758();
  sub_7A6F4();
  sub_16799C();
  __chkstk_darwin(v31);
  v33 = sub_1678EC(v32, v72);
  v34(v33);
  sub_167BF4();
  sub_16817C();
  sub_167910();
  sub_167984();
  sub_37284(v35, &qword_1F08B0, &qword_17BA40, v36);
  sub_AAB38();
  sub_168824();
  sub_16AA0();
  sub_167B50();
  sub_167F0C();
  sub_1688D4();
  sub_1693F4();
  sub_167B60();
  sub_167E14();
  sub_168E24();
  v37 = sub_167D14();
  sub_16807C(v37);
  v38 = sub_5758(&qword_1F08C0, &qword_17BA48);
  v39 = sub_167E98(v38);
  sub_1680A0(&off_1D9AF0);
  sub_1681DC();
  sub_16A154();
  sub_7A6A8();
  v40 = sub_16A094();
  qword_1F08B8 = v9;
  sub_167DB4(v40, &off_1DA7E8);
  sub_7A758();
  sub_7A6F4();
  sub_16799C();
  __chkstk_darwin(v41);
  v43 = sub_CA01C(v42, v73);
  v44(v43);
  sub_167ABC();
  sub_168064();

  sub_167910();
  sub_16796C();
  sub_37284(v45, &qword_1F08C0, &qword_17BA48, v46);
  sub_167B40();
  sub_168834();
  sub_16AA0();
  sub_167AE8();
  sub_1693F4();
  sub_1681AC();
  sub_167D94();
  sub_167DF4(v47);
  sub_167A0C(&qword_1F08D8);
  sub_AAB38();
  sub_1687D4();
  sub_167FD0();
  sub_167F98();
  sub_1693F4();
  sub_167B60();
  sub_167CF4();
  sub_168E24();
  v48 = sub_167C40();
  sub_168070(v48);
  v49 = sub_5758(&qword_1F08E0, &qword_17BA58);
  sub_167E98(v49);
  sub_168094(&off_1D9AF0);
  sub_16823C();
  sub_16A154();
  sub_7A6A8();
  v50 = sub_16A094();
  *(v39 + 24) = v9;
  v51 = sub_168088(v50, &off_1DA7E8);
  sub_168164(v51);
  v52 = sub_167E54();
  sub_167FEC(v52, &off_1D4800);
  sub_7A758();
  sub_7A6F4();
  sub_16799C();
  __chkstk_darwin(v53);
  v55 = sub_1678EC(v54, v74);
  v56(v55);
  sub_167B14();
  sub_168194();
  sub_167910();
  sub_16793C();
  sub_37284(v57, &qword_1F08E0, &qword_17BA58, v58);
  sub_167B40();
  sub_168864();
  sub_16AA0();
  sub_167A38();
  sub_1693F4();
  sub_7A67C();
  sub_168E24();
  v59 = sub_30AF8();
  v61 = sub_5758(v59, v60);
  sub_167F7C(v61);
  v62 = sub_167B40();
  v65 = sub_167030(v62, v63, v64);
  sub_1680B8(v65);
  sub_1679E0(&qword_1F08F8);
  sub_AAB38();
  sub_168814();
  sub_7A62C();
  sub_167D54();
  sub_1693F4();
  v66 = sub_167F38();
  v68 = sub_5758(v66, v67);
  *(sub_167E98(v68) + qword_1F0A50) = 0;
  sub_1681F4(qword_1F0A58);
  sub_7A740();
  sub_167D34();
  sub_167CF4();
  sub_168034();

  sub_168E24();
  v69 = sub_167CD0();
  sub_167F60(v69);
  sub_167BCC();
  sub_168134();

  sub_167C1C();
  v70 = sub_1679B4(&qword_1F0908);
  sub_167C88(v70);
  sub_167FB4();
  sub_167DD4();
  sub_CA368();
}

void sub_162510()
{
  sub_CA350();
  sub_167BB8(v2, v3);
  v4 = sub_16826C();
  v5 = sub_D414(v4);
  __chkstk_darwin(v5);
  sub_167AA4();
  sub_16A484();
  sub_A73D8();
  v6 = sub_16A4D4();
  sub_167B84(v6);
  sub_1681C4();
  v7 = sub_167F38();
  v9 = sub_5758(v7, v8);
  sub_483C8(v9);
  sub_167F18();
  sub_37404();
  __chkstk_darwin(v10);
  v12 = sub_167A80(v11, v71);
  v13(v12);
  v16 = sub_168254(*v1, v14, v15, &qword_1F0898, &qword_17BA28);
  sub_168008(v16);
  sub_167954();
  v21 = sub_1680F0(v17, v18, v19, v20);
  sub_167E74(v21);
  sub_167EB4();

  v22 = sub_5758(&qword_1EA760, &qword_17B9F0);
  sub_167A68(v22);
  sub_168894();
  sub_1693F4();
  v23 = type metadata accessor for FeatureFlagHelper();
  sub_167CAC(v23);
  sub_168028();
  v24 = sub_168E34();
  sub_167F44(v24);
  sub_168E24();
  sub_A73D8();
  v25 = type metadata accessor for SnippetManager();
  v26 = sub_167C64(v25);
  sub_1680AC(v26);
  v27 = sub_5758(&qword_1F0838, &qword_17B9F8);
  sub_167EF0(v27);
  sub_1680C4(&off_1D9AF0);
  v28 = sub_168224();
  sub_167D74(v28);
  sub_16A154();
  sub_7A6A8();
  *v0 = sub_16A094();
  v0[1] = &off_1D4830;
  v29 = sub_16820C();
  sub_16814C(v29);
  sub_7A6A8();
  v30 = sub_16A094();
  sub_167E34(v30, &off_1DA7E8);
  sub_7A758();
  sub_7A6F4();
  sub_16799C();
  __chkstk_darwin(v31);
  v33 = sub_1678EC(v32, v72);
  v34(v33);
  sub_167BF4();
  sub_16817C();
  sub_167910();
  sub_167984();
  sub_37284(v35, &qword_1F0838, &qword_17B9F8, v36);
  sub_AAB38();
  sub_168824();
  sub_16AA0();
  sub_167B50();
  sub_167F0C();
  sub_1688D4();
  sub_1693F4();
  sub_167B60();
  sub_167E14();
  sub_168E24();
  v37 = sub_167D14();
  sub_16807C(v37);
  v38 = sub_5758(&qword_1F0848, &qword_17BA00);
  v39 = sub_167E98(v38);
  sub_1680A0(&off_1D9AF0);
  sub_1681DC();
  sub_16A154();
  sub_7A6A8();
  v40 = sub_16A094();
  qword_1F0840 = v9;
  sub_167DB4(v40, &off_1DA7E8);
  sub_7A758();
  sub_7A6F4();
  sub_16799C();
  __chkstk_darwin(v41);
  v43 = sub_CA01C(v42, v73);
  v44(v43);
  sub_167ABC();
  sub_168064();

  sub_167910();
  sub_16796C();
  sub_37284(v45, &qword_1F0848, &qword_17BA00, v46);
  sub_167B40();
  sub_168834();
  sub_16AA0();
  sub_167AE8();
  sub_1693F4();
  sub_1681AC();
  sub_167D94();
  sub_167DF4(v47);
  sub_167A0C(&qword_1F0860);
  sub_AAB38();
  sub_1687D4();
  sub_167FD0();
  sub_167F98();
  sub_1693F4();
  sub_167B60();
  sub_167CF4();
  sub_168E24();
  v48 = sub_167C40();
  sub_168070(v48);
  v49 = sub_5758(&qword_1F0868, &qword_17BA10);
  sub_167E98(v49);
  sub_168094(&off_1D9AF0);
  sub_16823C();
  sub_16A154();
  sub_7A6A8();
  v50 = sub_16A094();
  *(v39 + 24) = v9;
  v51 = sub_168088(v50, &off_1DA7E8);
  sub_168164(v51);
  v52 = sub_167E54();
  sub_167FEC(v52, &off_1D4800);
  sub_7A758();
  sub_7A6F4();
  sub_16799C();
  __chkstk_darwin(v53);
  v55 = sub_1678EC(v54, v74);
  v56(v55);
  sub_167B14();
  sub_168194();
  sub_167910();
  sub_16793C();
  sub_37284(v57, &qword_1F0868, &qword_17BA10, v58);
  sub_167B40();
  sub_168864();
  sub_16AA0();
  sub_167A38();
  sub_1693F4();
  sub_7A67C();
  sub_168E24();
  v59 = sub_30AF8();
  v61 = sub_5758(v59, v60);
  sub_167F7C(v61);
  v62 = sub_167B40();
  v65 = sub_167030(v62, v63, v64);
  sub_1680B8(v65);
  sub_1679E0(&qword_1F0880);
  sub_AAB38();
  sub_168814();
  sub_7A62C();
  sub_167D54();
  sub_1693F4();
  v66 = sub_167F38();
  v68 = sub_5758(v66, v67);
  *(sub_167E98(v68) + qword_1F0A50) = 0;
  sub_1681F4(qword_1F0A58);
  sub_7A740();
  sub_167D34();
  sub_167CF4();
  sub_168034();

  sub_168E24();
  v69 = sub_167CD0();
  sub_167F60(v69);
  sub_167BCC();
  sub_168134();

  sub_167C1C();
  v70 = sub_1679B4(&qword_1F0890);
  sub_167C88(v70);
  sub_167FB4();
  sub_167DD4();
  sub_CA368();
}

uint64_t sub_162B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v57 = a2;
  v53[2] = a1;
  v6 = sub_16A164();
  __chkstk_darwin(v6 - 8);
  sub_16A4A4();
  v55 = a4;
  v53[3] = sub_16A514();
  sub_168904();
  sub_10824(a3, v64);
  sub_5758(&qword_1F0548, &qword_17B840);
  v7 = swift_allocObject();
  v8 = sub_2F8D0(v64, v64[3]);
  __chkstk_darwin(v8);
  v10 = (v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = sub_166DE4(*v10, v7, &type metadata accessor for DeactivateSignalIntent, &qword_1F05B8, &qword_17B878);
  sub_D13C(v64);
  v64[0] = v12;
  sub_37284(&qword_1F0550, &qword_1F0548, &qword_17B840, &unk_16FD88);
  sub_168804();

  v56 = sub_5758(&qword_1F0530, &qword_17B830);
  sub_168894();
  sub_1693F4();
  v13 = type metadata accessor for FeatureFlagHelper();
  v54 = v13;
  v14 = swift_allocObject();
  sub_168E34();
  swift_allocObject();
  sub_168E24();
  v53[4] = type metadata accessor for SnippetManager();
  *(swift_allocObject() + 16) = 0;
  sub_5758(&qword_1F0558, &qword_17B848);
  v15 = swift_allocObject();
  v62 = v13;
  v63 = &off_1D9AF0;
  v61[0] = v14;
  v16 = (v15 + qword_1F0DF0);
  v53[1] = type metadata accessor for CarCommandsCATs(0);

  sub_16A154();
  *v16 = sub_16A094();
  v16[1] = &off_1D4830;
  v17 = (v15 + qword_1F0DF8);
  v18 = type metadata accessor for CarCommandsCATPatternsExecutor(0);
  sub_16A154();
  v19 = sub_16A094();
  v17[3] = v18;
  v17[4] = &off_1DA7E8;
  *v17 = v19;
  sub_10824(v64, v60);
  sub_10824(v61, v58);
  v20 = sub_2F8D0(v58, v59);
  __chkstk_darwin(v20);
  (*(v22 + 16))(v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1668CC();
  v24 = v23;

  sub_D13C(v64);
  sub_D13C(v61);
  sub_D13C(v58);
  v64[0] = v24;
  sub_37284(&qword_1F0560, &qword_1F0558, &qword_17B848, &unk_179F58);
  sub_168824();

  sub_1688D4();
  sub_1693F4();
  v25 = v54;
  v26 = swift_allocObject();
  swift_allocObject();
  sub_168E24();
  *(swift_allocObject() + 16) = 0;
  sub_5758(&qword_1F0568, &qword_17B850);
  v27 = swift_allocObject();
  v62 = v25;
  v63 = &off_1D9AF0;
  v61[0] = v26;
  v28 = (v27 + qword_1F0E38);

  sub_16A154();
  v29 = sub_16A094();
  v28[3] = v18;
  v28[4] = &off_1DA7E8;
  *v28 = v29;
  sub_10824(v64, v60);
  sub_10824(v61, v58);
  v30 = sub_2F8D0(v58, v59);
  __chkstk_darwin(v30);
  (*(v32 + 16))(v53 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1668CC();
  v34 = v33;

  sub_D13C(v64);
  sub_D13C(v61);
  sub_D13C(v58);
  v64[0] = v34;
  sub_37284(&qword_1F0570, &qword_1F0568, &qword_17B850, &unk_17A9B0);
  sub_168834();

  sub_1688E4();
  sub_1693F4();

  sub_1670F4();
  v64[0] = v35;
  sub_5758(&qword_1F0578, &qword_17B858);
  sub_37284(&qword_1F0580, &qword_1F0578, &qword_17B858, &unk_1740F8);
  sub_1687D4();

  sub_168874();
  sub_1693F4();
  v36 = v54;
  v37 = swift_allocObject();
  swift_allocObject();
  sub_168E24();
  *(swift_allocObject() + 16) = 0;
  sub_5758(&qword_1F0588, &qword_17B860);
  v38 = swift_allocObject();
  v62 = v36;
  v63 = &off_1D9AF0;
  v61[0] = v37;
  v39 = (v38 + qword_1F0E60);

  sub_16A154();
  v40 = sub_16A094();
  v39[3] = v18;
  v39[4] = &off_1DA7E8;
  *v39 = v40;
  v41 = (v38 + qword_1F0E68);
  sub_16A154();
  *v41 = sub_16A094();
  v41[1] = &off_1D4800;
  sub_10824(v64, v60);
  sub_10824(v61, v58);
  v42 = sub_2F8D0(v58, v59);
  __chkstk_darwin(v42);
  (*(v44 + 16))(v53 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1668CC();
  v46 = v45;

  sub_D13C(v64);
  sub_D13C(v61);
  sub_D13C(v58);
  v64[0] = v46;
  sub_37284(&qword_1F0590, &qword_1F0588, &qword_17B860, &unk_17B3A8);
  sub_168864();

  sub_1688C4();
  sub_1693F4();
  swift_allocObject();
  v47 = sub_168E24();
  sub_5758(&qword_1F0598, &qword_17B868);
  v48 = swift_allocObject();
  v64[0] = sub_167030(v64, v47, v48);
  sub_37284(&qword_1F05A0, &qword_1F0598, &qword_17B868, &unk_177678);
  sub_168814();

  sub_1688B4();
  sub_1693F4();
  sub_5758(&qword_1F05A8, &qword_17B870);
  v49 = swift_allocObject();
  v62 = &type metadata for TCCTemplatesProvider;
  v63 = &off_1D4118;
  *(v49 + qword_1F0A50) = 0;
  sub_10824(v61, v49 + qword_1F0A58);
  sub_10824(v64, v60);
  swift_allocObject();
  swift_allocObject();

  sub_168E24();
  *(swift_allocObject() + 16) = 0;

  sub_1668CC();
  v51 = v50;

  sub_D13C(v64);
  sub_D13C(v61);
  v64[0] = v51;
  sub_37284(&qword_1F05B0, &qword_1F05A8, &qword_17B870, &unk_16D5A8);
  sub_168844();

  return sub_1688F4();
}

void sub_16383C()
{
  sub_CA350();
  sub_167BB8(v2, v3);
  v4 = sub_16826C();
  v5 = sub_D414(v4);
  __chkstk_darwin(v5);
  sub_167AA4();
  sub_16A524();
  sub_A73D8();
  v6 = sub_16A564();
  sub_167B84(v6);
  sub_1681C4();
  v7 = sub_167F38();
  v9 = sub_5758(v7, v8);
  sub_483C8(v9);
  sub_167F18();
  sub_37404();
  __chkstk_darwin(v10);
  v12 = sub_167A80(v11, v71);
  v13(v12);
  v16 = sub_168254(*v1, v14, v15, &qword_1F0720, &qword_17B950);
  sub_168008(v16);
  sub_167954();
  v21 = sub_1680F0(v17, v18, v19, v20);
  sub_167E74(v21);
  sub_167EB4();

  v22 = sub_5758(&qword_1EC1F0, &qword_177490);
  sub_167A68(v22);
  sub_168894();
  sub_1693F4();
  v23 = type metadata accessor for FeatureFlagHelper();
  sub_167CAC(v23);
  sub_168028();
  v24 = sub_168E34();
  sub_167F44(v24);
  sub_168E24();
  sub_A73D8();
  v25 = type metadata accessor for SnippetManager();
  v26 = sub_167C64(v25);
  sub_1680AC(v26);
  v27 = sub_5758(&qword_1F06C0, &qword_17B920);
  sub_167EF0(v27);
  sub_1680C4(&off_1D9AF0);
  v28 = sub_168224();
  sub_167D74(v28);
  sub_16A154();
  sub_7A6A8();
  *v0 = sub_16A094();
  v0[1] = &off_1D4830;
  v29 = sub_16820C();
  sub_16814C(v29);
  sub_7A6A8();
  v30 = sub_16A094();
  sub_167E34(v30, &off_1DA7E8);
  sub_7A758();
  sub_7A6F4();
  sub_16799C();
  __chkstk_darwin(v31);
  v33 = sub_1678EC(v32, v72);
  v34(v33);
  sub_167BF4();
  sub_16817C();
  sub_167910();
  sub_167984();
  sub_37284(v35, &qword_1F06C0, &qword_17B920, v36);
  sub_AAB38();
  sub_168824();
  sub_16AA0();
  sub_167B50();
  sub_167F0C();
  sub_1688D4();
  sub_1693F4();
  sub_167B60();
  sub_167E14();
  sub_168E24();
  v37 = sub_167D14();
  sub_16807C(v37);
  v38 = sub_5758(&qword_1F06D0, &qword_17B928);
  v39 = sub_167E98(v38);
  sub_1680A0(&off_1D9AF0);
  sub_1681DC();
  sub_16A154();
  sub_7A6A8();
  v40 = sub_16A094();
  qword_1F06C8 = v9;
  sub_167DB4(v40, &off_1DA7E8);
  sub_7A758();
  sub_7A6F4();
  sub_16799C();
  __chkstk_darwin(v41);
  v43 = sub_CA01C(v42, v73);
  v44(v43);
  sub_167ABC();
  sub_168064();

  sub_167910();
  sub_16796C();
  sub_37284(v45, &qword_1F06D0, &qword_17B928, v46);
  sub_167B40();
  sub_168834();
  sub_16AA0();
  sub_167AE8();
  sub_1693F4();
  sub_1681AC();
  sub_167D94();
  sub_167DF4(v47);
  sub_167A0C(&qword_1F06E8);
  sub_AAB38();
  sub_1687D4();
  sub_167FD0();
  sub_167F98();
  sub_1693F4();
  sub_167B60();
  sub_167CF4();
  sub_168E24();
  v48 = sub_167C40();
  sub_168070(v48);
  v49 = sub_5758(&qword_1F06F0, &qword_17B938);
  sub_167E98(v49);
  sub_168094(&off_1D9AF0);
  sub_16823C();
  sub_16A154();
  sub_7A6A8();
  v50 = sub_16A094();
  *(v39 + 24) = v9;
  v51 = sub_168088(v50, &off_1DA7E8);
  sub_168164(v51);
  v52 = sub_167E54();
  sub_167FEC(v52, &off_1D4800);
  sub_7A758();
  sub_7A6F4();
  sub_16799C();
  __chkstk_darwin(v53);
  v55 = sub_1678EC(v54, v74);
  v56(v55);
  sub_167B14();
  sub_168194();
  sub_167910();
  sub_16793C();
  sub_37284(v57, &qword_1F06F0, &qword_17B938, v58);
  sub_167B40();
  sub_168864();
  sub_16AA0();
  sub_167A38();
  sub_1693F4();
  sub_7A67C();
  sub_168E24();
  v59 = sub_30AF8();
  v61 = sub_5758(v59, v60);
  sub_167F7C(v61);
  v62 = sub_167B40();
  v65 = sub_167030(v62, v63, v64);
  sub_1680B8(v65);
  sub_1679E0(&qword_1F0708);
  sub_AAB38();
  sub_168814();
  sub_7A62C();
  sub_167D54();
  sub_1693F4();
  v66 = sub_167F38();
  v68 = sub_5758(v66, v67);
  *(sub_167E98(v68) + qword_1F0A50) = 0;
  sub_1681F4(qword_1F0A58);
  sub_7A740();
  sub_167D34();
  sub_167CF4();
  sub_168034();

  sub_168E24();
  v69 = sub_167CD0();
  sub_167F60(v69);
  sub_167BCC();
  sub_168134();

  sub_167C1C();
  v70 = sub_1679B4(&qword_1F0718);
  sub_167C88(v70);
  sub_167FB4();
  sub_167DD4();
  sub_CA368();
}

void sub_163EB4()
{
  sub_CA350();
  sub_167BB8(v3, v4);
  v5 = sub_16A164();
  v6 = sub_D414(v5);
  __chkstk_darwin(v6);
  sub_167AA4();
  sub_16484(0, &qword_1E6A18, INGetCarLockStatusIntent_ptr);
  v7 = sub_16484(0, &qword_1F0728, INGetCarLockStatusIntentResponse_ptr);
  sub_167EC0(v7);
  sub_1681C4();
  v8 = sub_5758(&qword_1F0730, &qword_17B958);
  sub_167EF0(v8);
  sub_1680D0();
  sub_37404();
  __chkstk_darwin(v9);
  sub_A138();
  v11 = sub_153A08(v10);
  v12(v11);
  v13 = sub_166F08(*v2, v1, &qword_1E6A18, INGetCarLockStatusIntent_ptr, &qword_1F07A0, &qword_17B998);
  sub_168290(v13);
  sub_167954();
  v16 = sub_37284(v14, &qword_1F0730, &qword_17B958, v15);
  sub_168040(v16);
  sub_16AA0();
  v17 = sub_5758(&qword_1EB8E0, &qword_176340);
  sub_167A68(v17);
  sub_168894();
  sub_1693F4();
  v18 = type metadata accessor for FeatureFlagHelper();
  sub_167CAC(v18);
  sub_168028();
  v19 = sub_168E34();
  sub_167F44(v19);
  sub_168E24();
  sub_A73D8();
  v20 = type metadata accessor for SnippetManager();
  v21 = sub_167C64(v20);
  sub_1680AC(v21);
  v22 = sub_5758(&qword_1F0740, &qword_17B968);
  sub_167EF0(v22);
  sub_1680C4(&off_1D9AF0);
  v23 = sub_168224();
  sub_167D74(v23);
  sub_16A154();
  sub_7A6A8();
  qword_17B958 = sub_16A094();
  unk_17B960 = &off_1D4830;
  v24 = sub_16820C();
  sub_16814C(v24);
  sub_7A6A8();
  v25 = sub_16A094();
  sub_167E34(v25, &off_1DA7E8);
  sub_7A758();
  sub_7A6F4();
  sub_16799C();
  __chkstk_darwin(v26);
  v28 = sub_1678EC(v27, v66);
  v29(v28);
  sub_167BF4();
  sub_16817C();
  sub_167910();
  sub_167984();
  sub_37284(v30, &qword_1F0740, &qword_17B968, v31);
  sub_AAB38();
  sub_168824();
  sub_16AA0();
  sub_167B50();
  sub_167F0C();
  sub_1688D4();
  sub_1693F4();
  sub_167B60();
  sub_167E14();
  sub_168E24();
  v32 = sub_167D14();
  sub_16807C(v32);
  v33 = sub_5758(&qword_1F0750, &qword_17B970);
  v34 = sub_167E98(v33);
  sub_1680A0(&off_1D9AF0);
  sub_1681DC();
  sub_16A154();
  sub_7A6A8();
  v35 = sub_16A094();
  *(v0 + 24) = v2;
  sub_167DB4(v35, &off_1DA7E8);
  sub_7A758();
  sub_7A6F4();
  sub_16799C();
  __chkstk_darwin(v36);
  v38 = sub_CA01C(v37, v67);
  v39(v38);
  sub_167ABC();
  sub_168064();

  sub_167910();
  sub_16796C();
  sub_37284(v40, &qword_1F0750, &qword_17B970, v41);
  sub_167B40();
  sub_168834();
  sub_16AA0();
  sub_167AE8();
  sub_1693F4();
  sub_1681AC();
  sub_167D94();
  sub_167DF4(v42);
  sub_167A0C(&qword_1F0768);
  sub_AAB38();
  sub_1687D4();
  sub_167FD0();
  sub_167F98();
  sub_1693F4();
  sub_167B60();
  sub_167CF4();
  sub_168E24();
  v43 = sub_167C40();
  sub_168070(v43);
  v44 = sub_5758(&qword_1F0770, &qword_17B980);
  sub_167E98(v44);
  sub_168094(&off_1D9AF0);
  sub_16823C();
  sub_16A154();
  sub_7A6A8();
  v45 = sub_16A094();
  *(v34 + 24) = v2;
  v46 = sub_168088(v45, &off_1DA7E8);
  sub_168164(v46);
  v47 = sub_167E54();
  sub_167FEC(v47, &off_1D4800);
  sub_7A758();
  sub_7A6F4();
  sub_16799C();
  __chkstk_darwin(v48);
  v50 = sub_1678EC(v49, v68);
  v51(v50);
  sub_167B14();
  sub_168194();
  sub_167910();
  sub_16793C();
  sub_37284(v52, &qword_1F0770, &qword_17B980, v53);
  sub_167B40();
  sub_168864();
  sub_16AA0();
  sub_167A38();
  sub_1693F4();
  sub_7A67C();
  sub_168E24();
  v54 = sub_30AF8();
  v56 = sub_5758(v54, v55);
  sub_167F7C(v56);
  v57 = sub_167B40();
  v60 = sub_167030(v57, v58, v59);
  sub_1680B8(v60);
  sub_1679E0(&qword_1F0788);
  sub_AAB38();
  sub_168814();
  sub_7A62C();
  sub_167D54();
  sub_1693F4();
  v61 = sub_167F38();
  v63 = sub_5758(v61, v62);
  *(sub_167E98(v63) + qword_1F0A50) = 0;
  sub_1681F4(qword_1F0A58);
  sub_7A740();
  sub_167D34();
  sub_167CF4();
  sub_168034();

  sub_168E24();
  v64 = sub_167CD0();
  sub_167F60(v64);
  sub_167BCC();
  sub_168134();

  sub_167C1C();
  v65 = sub_1679B4(&qword_1F0798);
  sub_167C88(v65);
  sub_167FB4();
  sub_167DD4();
  sub_CA368();
}

void sub_164564()
{
  sub_CA350();
  sub_167BB8(v3, v4);
  v5 = sub_16A164();
  v6 = sub_D414(v5);
  __chkstk_darwin(v6);
  sub_167AA4();
  sub_16484(0, &qword_1E6A50, INSetCarLockStatusIntent_ptr);
  v7 = sub_16484(0, &qword_1F07A8, INSetCarLockStatusIntentResponse_ptr);
  sub_167EC0(v7);
  sub_1681C4();
  v8 = sub_5758(&qword_1F07B0, &qword_17B9A0);
  sub_167EF0(v8);
  sub_1680D0();
  sub_37404();
  __chkstk_darwin(v9);
  sub_A138();
  v11 = sub_153A08(v10);
  v12(v11);
  v13 = sub_166F08(*v2, v1, &qword_1E6A50, INSetCarLockStatusIntent_ptr, &qword_1F0820, &qword_17B9E0);
  sub_168290(v13);
  sub_167954();
  v16 = sub_37284(v14, &qword_1F07B0, &qword_17B9A0, v15);
  sub_168040(v16);
  sub_16AA0();
  v17 = sub_5758(&qword_1EAE88, &qword_1751D0);
  sub_167A68(v17);
  sub_168894();
  sub_1693F4();
  v18 = type metadata accessor for FeatureFlagHelper();
  sub_167CAC(v18);
  sub_168028();
  v19 = sub_168E34();
  sub_167F44(v19);
  sub_168E24();
  sub_A73D8();
  v20 = type metadata accessor for SnippetManager();
  v21 = sub_167C64(v20);
  sub_1680AC(v21);
  v22 = sub_5758(&qword_1F07C0, &qword_17B9B0);
  sub_167EF0(v22);
  sub_1680C4(&off_1D9AF0);
  v23 = sub_168224();
  sub_167D74(v23);
  sub_16A154();
  sub_7A6A8();
  qword_17B9A0 = sub_16A094();
  *algn_17B9A8 = &off_1D4830;
  v24 = sub_16820C();
  sub_16814C(v24);
  sub_7A6A8();
  v25 = sub_16A094();
  sub_167E34(v25, &off_1DA7E8);
  sub_7A758();
  sub_7A6F4();
  sub_16799C();
  __chkstk_darwin(v26);
  v28 = sub_1678EC(v27, v66);
  v29(v28);
  sub_167BF4();
  sub_16817C();
  sub_167910();
  sub_167984();
  sub_37284(v30, &qword_1F07C0, &qword_17B9B0, v31);
  sub_AAB38();
  sub_168824();
  sub_16AA0();
  sub_167B50();
  sub_167F0C();
  sub_1688D4();
  sub_1693F4();
  sub_167B60();
  sub_167E14();
  sub_168E24();
  v32 = sub_167D14();
  sub_16807C(v32);
  v33 = sub_5758(&qword_1F07D0, &qword_17B9B8);
  v34 = sub_167E98(v33);
  sub_1680A0(&off_1D9AF0);
  sub_1681DC();
  sub_16A154();
  sub_7A6A8();
  v35 = sub_16A094();
  *(v0 + 24) = v2;
  sub_167DB4(v35, &off_1DA7E8);
  sub_7A758();
  sub_7A6F4();
  sub_16799C();
  __chkstk_darwin(v36);
  v38 = sub_CA01C(v37, v67);
  v39(v38);
  sub_167ABC();
  sub_168064();

  sub_167910();
  sub_16796C();
  sub_37284(v40, &qword_1F07D0, &qword_17B9B8, v41);
  sub_167B40();
  sub_168834();
  sub_16AA0();
  sub_167AE8();
  sub_1693F4();
  sub_1681AC();
  sub_167D94();
  sub_167DF4(v42);
  sub_167A0C(&qword_1F07E8);
  sub_AAB38();
  sub_1687D4();
  sub_167FD0();
  sub_167F98();
  sub_1693F4();
  sub_167B60();
  sub_167CF4();
  sub_168E24();
  v43 = sub_167C40();
  sub_168070(v43);
  v44 = sub_5758(&qword_1F07F0, &qword_17B9C8);
  sub_167E98(v44);
  sub_168094(&off_1D9AF0);
  sub_16823C();
  sub_16A154();
  sub_7A6A8();
  v45 = sub_16A094();
  *(v34 + 24) = v2;
  v46 = sub_168088(v45, &off_1DA7E8);
  sub_168164(v46);
  v47 = sub_167E54();
  sub_167FEC(v47, &off_1D4800);
  sub_7A758();
  sub_7A6F4();
  sub_16799C();
  __chkstk_darwin(v48);
  v50 = sub_1678EC(v49, v68);
  v51(v50);
  sub_167B14();
  sub_168194();
  sub_167910();
  sub_16793C();
  sub_37284(v52, &qword_1F07F0, &qword_17B9C8, v53);
  sub_167B40();
  sub_168864();
  sub_16AA0();
  sub_167A38();
  sub_1693F4();
  sub_7A67C();
  sub_168E24();
  v54 = sub_30AF8();
  v56 = sub_5758(v54, v55);
  sub_167F7C(v56);
  v57 = sub_167B40();
  v60 = sub_167030(v57, v58, v59);
  sub_1680B8(v60);
  sub_1679E0(&qword_1F0808);
  sub_AAB38();
  sub_168814();
  sub_7A62C();
  sub_167D54();
  sub_1693F4();
  v61 = sub_167F38();
  v63 = sub_5758(v61, v62);
  *(sub_167E98(v63) + qword_1F0A50) = 0;
  sub_1681F4(qword_1F0A58);
  sub_7A740();
  sub_167D34();
  sub_167CF4();
  sub_168034();

  sub_168E24();
  v64 = sub_167CD0();
  sub_167F60(v64);
  sub_167BCC();
  sub_168134();

  sub_167C1C();
  v65 = sub_1679B4(&qword_1F0818);
  sub_167C88(v65);
  sub_167FB4();
  sub_167DD4();
  sub_CA368();
}

void sub_164C14()
{
  sub_CA350();
  sub_167BB8(v2, v3);
  v4 = sub_16826C();
  v5 = sub_D414(v4);
  __chkstk_darwin(v5);
  sub_167AA4();
  sub_16A384();
  sub_A73D8();
  v6 = sub_16A3A4();
  sub_167B84(v6);
  sub_1681C4();
  v7 = sub_167F38();
  v9 = sub_5758(v7, v8);
  sub_483C8(v9);
  sub_167F18();
  sub_37404();
  __chkstk_darwin(v10);
  v12 = sub_167A80(v11, v71);
  v13(v12);
  v16 = sub_168254(*v1, v14, v15, &qword_1F0630, &qword_17B8C0);
  sub_168008(v16);
  sub_167954();
  v21 = sub_1680F0(v17, v18, v19, v20);
  sub_167E74(v21);
  sub_167EB4();

  v22 = sub_5758(&qword_1EDA18, &qword_178E28);
  sub_167A68(v22);
  sub_168894();
  sub_1693F4();
  v23 = type metadata accessor for FeatureFlagHelper();
  sub_167CAC(v23);
  sub_168028();
  v24 = sub_168E34();
  sub_167F44(v24);
  sub_168E24();
  sub_A73D8();
  v25 = type metadata accessor for SnippetManager();
  v26 = sub_167C64(v25);
  sub_1680AC(v26);
  v27 = sub_5758(&qword_1F05D0, &qword_17B890);
  sub_167EF0(v27);
  sub_1680C4(&off_1D9AF0);
  v28 = sub_168224();
  sub_167D74(v28);
  sub_16A154();
  sub_7A6A8();
  *v0 = sub_16A094();
  v0[1] = &off_1D4830;
  v29 = sub_16820C();
  sub_16814C(v29);
  sub_7A6A8();
  v30 = sub_16A094();
  sub_167E34(v30, &off_1DA7E8);
  sub_7A758();
  sub_7A6F4();
  sub_16799C();
  __chkstk_darwin(v31);
  v33 = sub_1678EC(v32, v72);
  v34(v33);
  sub_167BF4();
  sub_16817C();
  sub_167910();
  sub_167984();
  sub_37284(v35, &qword_1F05D0, &qword_17B890, v36);
  sub_AAB38();
  sub_168824();
  sub_16AA0();
  sub_167B50();
  sub_167F0C();
  sub_1688D4();
  sub_1693F4();
  sub_167B60();
  sub_167E14();
  sub_168E24();
  v37 = sub_167D14();
  sub_16807C(v37);
  v38 = sub_5758(&qword_1F05E0, &qword_17B898);
  v39 = sub_167E98(v38);
  sub_1680A0(&off_1D9AF0);
  sub_1681DC();
  sub_16A154();
  sub_7A6A8();
  v40 = sub_16A094();
  qword_1F05D8 = v9;
  sub_167DB4(v40, &off_1DA7E8);
  sub_7A758();
  sub_7A6F4();
  sub_16799C();
  __chkstk_darwin(v41);
  v43 = sub_CA01C(v42, v73);
  v44(v43);
  sub_167ABC();
  sub_168064();

  sub_167910();
  sub_16796C();
  sub_37284(v45, &qword_1F05E0, &qword_17B898, v46);
  sub_167B40();
  sub_168834();
  sub_16AA0();
  sub_167AE8();
  sub_1693F4();
  sub_1681AC();
  sub_167D94();
  sub_167DF4(v47);
  sub_167A0C(&qword_1F05F8);
  sub_AAB38();
  sub_1687D4();
  sub_167FD0();
  sub_167F98();
  sub_1693F4();
  sub_167B60();
  sub_167CF4();
  sub_168E24();
  v48 = sub_167C40();
  sub_168070(v48);
  v49 = sub_5758(&qword_1F0600, &qword_17B8A8);
  sub_167E98(v49);
  sub_168094(&off_1D9AF0);
  sub_16823C();
  sub_16A154();
  sub_7A6A8();
  v50 = sub_16A094();
  *(v39 + 24) = v9;
  v51 = sub_168088(v50, &off_1DA7E8);
  sub_168164(v51);
  v52 = sub_167E54();
  sub_167FEC(v52, &off_1D4800);
  sub_7A758();
  sub_7A6F4();
  sub_16799C();
  __chkstk_darwin(v53);
  v55 = sub_1678EC(v54, v74);
  v56(v55);
  sub_167B14();
  sub_168194();
  sub_167910();
  sub_16793C();
  sub_37284(v57, &qword_1F0600, &qword_17B8A8, v58);
  sub_167B40();
  sub_168864();
  sub_16AA0();
  sub_167A38();
  sub_1693F4();
  sub_7A67C();
  sub_168E24();
  v59 = sub_30AF8();
  v61 = sub_5758(v59, v60);
  sub_167F7C(v61);
  v62 = sub_167B40();
  v65 = sub_167030(v62, v63, v64);
  sub_1680B8(v65);
  sub_1679E0(&qword_1F0618);
  sub_AAB38();
  sub_168814();
  sub_7A62C();
  sub_167D54();
  sub_1693F4();
  v66 = sub_167F38();
  v68 = sub_5758(v66, v67);
  *(sub_167E98(v68) + qword_1F0A50) = 0;
  sub_1681F4(qword_1F0A58);
  sub_7A740();
  sub_167D34();
  sub_167CF4();
  sub_168034();

  sub_168E24();
  v69 = sub_167CD0();
  sub_167F60(v69);
  sub_167BCC();
  sub_168134();

  sub_167C1C();
  v70 = sub_1679B4(&qword_1F0628);
  sub_167C88(v70);
  sub_167FB4();
  sub_167DD4();
  sub_CA368();
}

void sub_16528C()
{
  sub_CA350();
  sub_167BB8(v2, v3);
  v4 = sub_16826C();
  v5 = sub_D414(v4);
  __chkstk_darwin(v5);
  sub_167AA4();
  sub_16A3B4();
  sub_A73D8();
  v6 = sub_16A3F4();
  sub_167B84(v6);
  sub_1681C4();
  v7 = sub_167F38();
  v9 = sub_5758(v7, v8);
  sub_483C8(v9);
  sub_167F18();
  sub_37404();
  __chkstk_darwin(v10);
  v12 = sub_167A80(v11, v71);
  v13(v12);
  v16 = sub_168254(*v1, v14, v15, &qword_1F06A8, &qword_17B908);
  sub_168008(v16);
  sub_167954();
  v21 = sub_1680F0(v17, v18, v19, v20);
  sub_167E74(v21);
  sub_167EB4();

  v22 = sub_5758(&qword_1ED838, &qword_17B8D0);
  sub_167A68(v22);
  sub_168894();
  sub_1693F4();
  v23 = type metadata accessor for FeatureFlagHelper();
  sub_167CAC(v23);
  sub_168028();
  v24 = sub_168E34();
  sub_167F44(v24);
  sub_168E24();
  sub_A73D8();
  v25 = type metadata accessor for SnippetManager();
  v26 = sub_167C64(v25);
  sub_1680AC(v26);
  v27 = sub_5758(&qword_1F0648, &qword_17B8D8);
  sub_167EF0(v27);
  sub_1680C4(&off_1D9AF0);
  v28 = sub_168224();
  sub_167D74(v28);
  sub_16A154();
  sub_7A6A8();
  *v0 = sub_16A094();
  v0[1] = &off_1D4830;
  v29 = sub_16820C();
  sub_16814C(v29);
  sub_7A6A8();
  v30 = sub_16A094();
  sub_167E34(v30, &off_1DA7E8);
  sub_7A758();
  sub_7A6F4();
  sub_16799C();
  __chkstk_darwin(v31);
  v33 = sub_1678EC(v32, v72);
  v34(v33);
  sub_167BF4();
  sub_16817C();
  sub_167910();
  sub_167984();
  sub_37284(v35, &qword_1F0648, &qword_17B8D8, v36);
  sub_AAB38();
  sub_168824();
  sub_16AA0();
  sub_167B50();
  sub_167F0C();
  sub_1688D4();
  sub_1693F4();
  sub_167B60();
  sub_167E14();
  sub_168E24();
  v37 = sub_167D14();
  sub_16807C(v37);
  v38 = sub_5758(&qword_1F0658, &qword_17B8E0);
  v39 = sub_167E98(v38);
  sub_1680A0(&off_1D9AF0);
  sub_1681DC();
  sub_16A154();
  sub_7A6A8();
  v40 = sub_16A094();
  qword_1F0650 = v9;
  sub_167DB4(v40, &off_1DA7E8);
  sub_7A758();
  sub_7A6F4();
  sub_16799C();
  __chkstk_darwin(v41);
  v43 = sub_CA01C(v42, v73);
  v44(v43);
  sub_167ABC();
  sub_168064();

  sub_167910();
  sub_16796C();
  sub_37284(v45, &qword_1F0658, &qword_17B8E0, v46);
  sub_167B40();
  sub_168834();
  sub_16AA0();
  sub_167AE8();
  sub_1693F4();
  sub_1681AC();
  sub_167D94();
  sub_167DF4(v47);
  sub_167A0C(&qword_1F0670);
  sub_AAB38();
  sub_1687D4();
  sub_167FD0();
  sub_167F98();
  sub_1693F4();
  sub_167B60();
  sub_167CF4();
  sub_168E24();
  v48 = sub_167C40();
  sub_168070(v48);
  v49 = sub_5758(&qword_1F0678, &qword_17B8F0);
  sub_167E98(v49);
  sub_168094(&off_1D9AF0);
  sub_16823C();
  sub_16A154();
  sub_7A6A8();
  v50 = sub_16A094();
  *(v39 + 24) = v9;
  v51 = sub_168088(v50, &off_1DA7E8);
  sub_168164(v51);
  v52 = sub_167E54();
  sub_167FEC(v52, &off_1D4800);
  sub_7A758();
  sub_7A6F4();
  sub_16799C();
  __chkstk_darwin(v53);
  v55 = sub_1678EC(v54, v74);
  v56(v55);
  sub_167B14();
  sub_168194();
  sub_167910();
  sub_16793C();
  sub_37284(v57, &qword_1F0678, &qword_17B8F0, v58);
  sub_167B40();
  sub_168864();
  sub_16AA0();
  sub_167A38();
  sub_1693F4();
  sub_7A67C();
  sub_168E24();
  v59 = sub_30AF8();
  v61 = sub_5758(v59, v60);
  sub_167F7C(v61);
  v62 = sub_167B40();
  v65 = sub_167030(v62, v63, v64);
  sub_1680B8(v65);
  sub_1679E0(&qword_1F0690);
  sub_AAB38();
  sub_168814();
  sub_7A62C();
  sub_167D54();
  sub_1693F4();
  v66 = sub_167F38();
  v68 = sub_5758(v66, v67);
  *(sub_167E98(v68) + qword_1F0A50) = 0;
  sub_1681F4(qword_1F0A58);
  sub_7A740();
  sub_167D34();
  sub_167CF4();
  sub_168034();

  sub_168E24();
  v69 = sub_167CD0();
  sub_167F60(v69);
  sub_167BCC();
  sub_168134();

  sub_167C1C();
  v70 = sub_1679B4(&qword_1F06A0);
  sub_167C88(v70);
  sub_167FB4();
  sub_167DD4();
  sub_CA368();
}

id sub_165904()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    v2 = *(v0 + 96);
  }

  else
  {
    if (qword_1E5908 != -1)
    {
      sub_48134(&qword_1E5908);
    }

    v3 = sub_166CB4();
    v4 = *(v0 + 96);
    *(v0 + 96) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void *sub_165988()
{
  sub_10C138();
  v2 = sub_16A164();
  v3 = sub_D414(v2);
  __chkstk_darwin(v3);
  sub_A138();
  sub_168284();
  v4 = type metadata accessor for CarCommandsCATPatternsExecutor(0);
  sub_16A154();
  v5 = sub_16A094();
  v0[5] = v4;
  v0[6] = &off_1DA7E8;
  v0[2] = v5;
  v6 = sub_168E34();
  sub_167EF0(v6);
  v7 = sub_168E24();
  v0[10] = v4;
  v0[11] = &protocol witness table for ResponseFactory;
  v0[7] = v7;
  v0[12] = 0;
  v0[13] = v1;
  return v0;
}

uint64_t sub_165C14()
{
  sub_D2DC();
  v0[2] = v1;
  v2 = sub_1693E4();
  v0[3] = v2;
  v0[4] = *(v2 - 8);
  v0[5] = swift_task_alloc();

  return _swift_task_switch(sub_165CD0);
}

uint64_t sub_165CD0()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_16A4A4();
  v3 = *(v2 + 16);
  v4 = sub_30AF8();
  v3(v4);
  v5 = sub_99918(v1);
  if (v5)
  {
    v6 = v5;

    v7 = v0[1];

    return v7(v6);
  }

  else
  {
    v10 = v0[2];
    v9 = v0[3];
    type metadata accessor for CarCommandsError(0);
    sub_1678A4(&qword_1E92F0, 255, type metadata accessor for CarCommandsError, &unk_17A85C);
    swift_allocError();
    (v3)(v11, v10, v9);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_165E78()
{
  v0 = sub_16A164();
  v1 = sub_D414(v0);
  __chkstk_darwin(v1);
  sub_A138();
  sub_168284();
  v2 = sub_5758(&qword_1F0530, &qword_17B830);
  sub_37404();
  v4 = v3;
  v6 = __chkstk_darwin(v5);
  __chkstk_darwin(v6);
  v8 = &v19[-1] - v7;
  if (qword_1E5908 != -1)
  {
    sub_48134(&qword_1E5908);
  }

  v9 = qword_1F0C70;
  v19[3] = type metadata accessor for WalletService();
  v19[4] = &off_1D7C28;
  v19[0] = v9;
  type metadata accessor for CarCommandsCATs(0);

  sub_16A154();
  v10 = sub_16A094();
  sub_162B88(v10, 0x40000, v19, v8);

  sub_D13C(v19);

  sub_1693F4();
  v11 = type metadata accessor for FeatureFlagHelper();
  sub_7A728(v11);
  sub_168028();
  v12 = sub_168E34();
  sub_483C8(v12);
  sub_168034();

  sub_168E24();
  sub_167368(v19, v9);
  sub_168034();

  v19[0] = v10;
  type metadata accessor for DeactivateSignalHandleIntentFlowStrategy(0);
  sub_1678A4(&qword_1F0538, 255, type metadata accessor for DeactivateSignalHandleIntentFlowStrategy, &unk_174C60);
  sub_1687E4();

  sub_168884();
  v13 = sub_167F38();
  v14(v13);
  v15 = sub_5758(&qword_1F0540, &qword_17B838);
  sub_483C8(v15);
  v16 = sub_168914();
  (*(v4 + 8))(v8, v2);
  return v16;
}

uint64_t sub_166170(uint64_t a1, uint64_t a2)
{
  result = sub_1678A4(&qword_1F0518, a2, type metadata accessor for DeactivateSignalRCHFlowStrategy, &unk_17B6C0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1661E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_7971C;

  return sub_165C14();
}

uint64_t sub_166274()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_6F850;

  return sub_41EEC();
}

uint64_t sub_16634C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for DeactivateSignalRCHFlowStrategy();
  *v10 = v5;
  v10[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)(a1, a2, a3, v11, a5);
}

uint64_t sub_166418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for DeactivateSignalRCHFlowStrategy();
  *v10 = v5;
  v10[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)(a1, a2, a3, v11, a5);
}

uint64_t sub_1664E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for DeactivateSignalRCHFlowStrategy();
  *v10 = v5;
  v10[1] = sub_6F850;

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)(a1, a2, a3, v11, a5);
}

uint64_t sub_1665B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_6F428;

  return sub_43114();
}

uint64_t sub_166688()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_79DCC;

  return sub_46FD4();
}

uint64_t sub_16681C(uint64_t a1, uint64_t a2)
{
  result = sub_1678A4(&qword_1F0520, a2, type metadata accessor for DeactivateSignalRCHFlowStrategy, &unk_17B768);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_166874(uint64_t a1, uint64_t a2)
{
  result = sub_1678A4(&qword_1EEE40, a2, type metadata accessor for DeactivateSignalRCHFlowStrategy, &unk_17B7B0);
  *(a1 + 8) = result;
  return result;
}

void sub_1668CC()
{
  sub_CA350();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v30 = v6;
  v31 = v7;
  v9 = v8;
  v10 = type metadata accessor for LocalizedMeasurementUnitProvider(0);
  __chkstk_darwin(v10);
  sub_A138();
  v13 = v12 - v11;
  v14 = sub_168E34();
  v34[3] = v14;
  v34[4] = &protocol witness table for ResponseFactory;
  v34[0] = v5;
  v15 = type metadata accessor for FeatureFlagHelper();
  v33[3] = v15;
  v33[4] = &off_1D9AF0;
  v33[0] = v9;
  v16 = [objc_opt_self() sharedStream];
  v17 = [objc_opt_self() sharedManager];
  sub_1689F4();
  v18 = type metadata accessor for CarCommandsLoggingProducer();
  swift_allocObject();
  v19 = sub_D230C(v16, v17, &v32);
  v1[5] = v18;
  v1[6] = &off_1D7DF0;
  v1[2] = v19;
  v20 = type metadata accessor for CarPlaySessionObserver();
  v21 = swift_allocObject();
  *(v21 + 16) = [objc_allocWithZone(CARSessionStatus) init];
  v1[10] = v20;
  v1[11] = &off_1D8738;
  v1[7] = v21;
  v22 = sub_7A728(v15);
  v1[20] = v15;
  v1[21] = &off_1D9AF0;
  v1[17] = v22;
  v1[22] = 2;
  swift_allocObject();
  v23 = sub_168E24();
  v1[26] = v14;
  v1[27] = &protocol witness table for ResponseFactory;
  v1[23] = v23;
  sub_16484(0, &qword_1EBA60, NSUserDefaults_ptr);
  sub_E28B0(v1 + 29);
  sub_168E84();
  sub_169EB4();
  sub_169EA4();
  sub_169E94();

  sub_168E74();

  v24 = sub_16A244();
  v25 = sub_16A234();
  v1[42] = v24;
  v1[43] = &off_1D4510;
  v1[39] = v25;
  sub_10824(v30, (v1 + 12));
  swift_beginAccess();
  sub_16761C(v1 + 17, v33);
  swift_endAccess();
  v1[22] = v31 | 2;
  swift_beginAccess();
  sub_16761C(v1 + 23, v34);
  swift_endAccess();
  v1[28] = v3;
  v26 = v1[15];
  sub_D084(v1 + 12, v26);
  sub_37404();
  v28 = v27;
  __chkstk_darwin(v29);
  sub_A138();
  sub_168284();
  (*(v28 + 16))(v24);

  sub_168AD4();
  (*(v28 + 8))(v24, v26);
  sub_168444();

  sub_D13C(v30);
  sub_D13C(v34);
  sub_D13C(v33);
  sub_167840(v13, v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin27CarCommandsBaseFlowStrategy_unitProvider);
  sub_CA368();
}

id sub_166CB4()
{
  sub_A73D8();
  v1 = type metadata accessor for WalletService();
  v14[3] = v1;
  v14[4] = &off_1D7C28;
  v14[0] = v0;
  v2 = type metadata accessor for SEDeactivateSignalIntentHandler();
  v3 = objc_allocWithZone(v2);
  sub_2F8D0(v14, v1);
  sub_16799C();
  __chkstk_darwin(v4);
  sub_A138();
  v7 = (v6 - v5);
  (*(v8 + 16))(v6 - v5);
  v9 = *v7;
  v13[3] = v1;
  v13[4] = &off_1D7C28;
  v13[0] = v9;
  sub_10824(v13, v3 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin31SEDeactivateSignalIntentHandler_carKeyService);
  v12.receiver = v3;
  v12.super_class = v2;
  v10 = objc_msgSendSuper2(&v12, "init");
  sub_D13C(v13);
  sub_D13C(v14);
  return v10;
}

uint64_t sub_166DE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v18[3] = type metadata accessor for WalletService();
  v18[4] = &off_1D7C28;
  v18[0] = a1;
  *(a2 + qword_1E7E38) = 0;
  v10 = (a2 + qword_1F0B30);
  a3(0);
  sub_5758(a4, a5);
  *v10 = sub_16A694();
  v10[1] = v11;
  sub_10824(v18, a2 + qword_1F0B28);
  sub_1693F4();
  v12 = type metadata accessor for FeatureFlagHelper();
  sub_7A728(v12);
  sub_10C138();
  v13 = sub_168E34();
  sub_483C8(v13);

  sub_168E24();
  type metadata accessor for SnippetManager();
  v14 = swift_allocObject();
  sub_168108(v14);
  v16 = v15;

  sub_D13C(v18);
  return v16;
}

uint64_t sub_166F08(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  sub_168028();
  v20[3] = type metadata accessor for WalletService();
  v20[4] = &off_1D7C28;
  v20[0] = v6;
  *(a2 + qword_1E7E38) = 0;
  v12 = (a2 + qword_1F0B30);
  sub_16484(0, a3, a4);
  sub_5758(a5, a6);
  *v12 = sub_16A694();
  v12[1] = v13;
  sub_10824(v20, a2 + qword_1F0B28);
  sub_1693F4();
  v14 = type metadata accessor for FeatureFlagHelper();
  sub_7A728(v14);
  sub_10C138();
  v15 = sub_168E34();
  sub_483C8(v15);

  sub_168E24();
  type metadata accessor for SnippetManager();
  v16 = swift_allocObject();
  sub_168108(v16);
  v18 = v17;

  sub_D13C(v20);
  return v18;
}

uint64_t sub_167030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10C138();
  v6 = sub_16A164();
  v7 = sub_D414(v6);
  __chkstk_darwin(v7);
  sub_A138();
  v10 = sub_168E34();
  v11 = &protocol witness table for ResponseFactory;
  *&v9 = a2;
  type metadata accessor for CarCommandsCATsSimple(0);
  sub_16A154();
  *(a3 + 96) = sub_16A0F4();
  sub_D124(v3, a3 + 16);
  sub_D124(&v9, a3 + 56);
  return a3;
}

void sub_1670F4()
{
  sub_CA350();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v24 = v7;
  v8 = sub_16A164();
  v9 = sub_D414(v8);
  __chkstk_darwin(v9);
  sub_A138();
  sub_10824(v6, v27);
  v10 = type metadata accessor for FeatureFlagHelper();
  sub_7A728(v10);
  sub_A73D8();
  v11 = sub_168E34();
  v12 = sub_483C8(v11);
  sub_168E24();
  type metadata accessor for SnippetManager();
  *(swift_allocObject() + 16) = 0;
  v13 = sub_5758(v4, v2);
  v14 = sub_483C8(v13);
  v26[3] = v10;
  v26[4] = &off_1D9AF0;
  v26[0] = v0;
  v15 = (v14 + qword_1F0C28);
  type metadata accessor for CarCommandsCATPatternsExecutor(0);
  sub_168064();

  sub_16A154();
  v16 = sub_16A094();
  v15[3] = v12;
  v15[4] = &off_1DA7E8;
  *v15 = v16;
  v17 = (v14 + qword_1F0C30);
  v18 = type metadata accessor for CarCommandsCATs(0);
  sub_16A154();
  *v17 = sub_16A094();
  v17[1] = &off_1D4818;
  sub_7A740();
  sub_7A758();
  sub_2F8D0(v25, v25[3]);
  sub_37404();
  __chkstk_darwin(v19);
  sub_A138();
  sub_168284();
  (*(v20 + 16))(v18);
  sub_1668CC();
  v22 = v21;

  sub_D13C(v6);
  sub_D13C(v27);
  sub_D13C(v26);
  sub_D13C(v25);
  v23 = (v22 + qword_1F0C30);
  *v23 = v24;
  v23[1] = &off_1D4818;

  sub_CA368();
}

uint64_t sub_167368(void *a1, uint64_t a2)
{
  v4 = sub_16A164();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for FeatureFlagHelper();
  v24[3] = v5;
  v24[4] = &off_1D9AF0;
  v24[0] = a2;
  type metadata accessor for DeactivateSignalHandleIntentFlowStrategy(0);
  v6 = swift_allocObject();
  v7 = sub_2F8D0(v24, v5);
  __chkstk_darwin(v7);
  v9 = (v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = *v9;
  v23[3] = v5;
  v23[4] = &off_1D9AF0;
  v23[0] = v11;
  v12 = (v6 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin40DeactivateSignalHandleIntentFlowStrategy_commonPatterns);
  v13 = type metadata accessor for CarCommandsCATPatternsExecutor(0);
  sub_16A154();
  v14 = sub_16A094();
  v12[3] = v13;
  v12[4] = &off_1DA7E8;
  *v12 = v14;
  *(v6 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin40DeactivateSignalHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler) = 0;
  sub_10824(a1, v22);
  sub_10824(v23, v21);
  v15 = sub_2F8D0(v21, v21[3]);
  __chkstk_darwin(v15);
  (*(v17 + 16))(v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1668CC();
  v19 = v18;
  sub_D13C(a1);
  sub_D13C(v23);
  sub_D13C(v21);
  sub_D13C(v24);
  return v19;
}

double sub_16761C(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = a1[3];
    v5 = a2[3];
    if (v4 == v5)
    {
      v10 = *(v4 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v13 = *a2;

        *a1 = v13;
      }

      else
      {
        v11 = *(v10 + 24);

        v11();
      }
    }

    else
    {
      a1[3] = v5;
      a1[4] = a2[4];
      v6 = *(v4 - 8);
      v7 = *(v5 - 8);
      v8 = v7;
      v9 = *(v7 + 80);
      if ((*(v6 + 82) & 2) != 0)
      {
        if ((v9 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v7 + 16))(a1, a2, v5);
        }
      }

      else
      {
        (*(v6 + 32))(v14, a1, v4);
        if ((v9 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v8 + 16))(a1, a2, v5);
        }

        (*(v6 + 8))(v14, v4);
      }
    }
  }

  return result;
}

uint64_t sub_167840(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalizedMeasurementUnitProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1678A4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_167910()
{
  sub_D13C((v1 - 128));
  sub_D13C((v1 - 168));
  result = sub_D13C((v1 - 248));
  *(v1 - 128) = v0;
  return result;
}

uint64_t sub_1679B4(unint64_t *a1)
{

  return sub_37284(a1, v1, v2, &unk_16D5A8);
}

uint64_t sub_1679E0(unint64_t *a1)
{

  return sub_37284(a1, v1, v2, &unk_177678);
}

uint64_t sub_167A0C(unint64_t *a1)
{

  return sub_37284(a1, v1, v2, &unk_1740F8);
}

uint64_t sub_167A38()
{

  return sub_1688C4();
}

void sub_167ABC()
{

  sub_1668CC();
}

uint64_t sub_167AE8()
{

  return sub_1688E4();
}

void sub_167B14()
{

  sub_1668CC();
}

uint64_t sub_167B60()
{

  return swift_allocObject();
}

uint64_t sub_167B84(uint64_t a1)
{
  *(v2 - 272) = v1;
  *(v2 - 296) = a1;

  return sub_168904();
}

uint64_t sub_167BB8(uint64_t result, uint64_t a2)
{
  *(v2 - 256) = a2;
  *(v2 - 304) = result;
  return result;
}

void sub_167BCC()
{

  sub_1668CC();
}

void sub_167BF4()
{

  sub_1668CC();
}

uint64_t sub_167C1C()
{
  sub_D13C((v1 - 128));
  result = sub_D13C((v1 - 168));
  *(v1 - 128) = v0;
  return result;
}

uint64_t sub_167C40()
{

  return swift_allocObject();
}

uint64_t sub_167C64(uint64_t a1)
{
  *(v1 - 288) = a1;

  return swift_allocObject();
}

uint64_t sub_167C88(uint64_t a1)
{

  return sub_168844();
}

uint64_t sub_167CAC(uint64_t a1)
{
  *(v1 - 280) = a1;

  return swift_allocObject();
}

uint64_t sub_167CD0()
{

  return swift_allocObject();
}

uint64_t sub_167CF4()
{

  return swift_allocObject();
}

uint64_t sub_167D14()
{

  return swift_allocObject();
}

uint64_t sub_167D34()
{

  return swift_allocObject();
}

uint64_t sub_167D54()
{

  return sub_1688B4();
}

uint64_t sub_167D74(uint64_t a1)
{
  *(v1 - 312) = a1;
}

void sub_167D94()
{

  sub_1670F4();
}

uint64_t sub_167DB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[4] = a2;
  *v2 = a1;

  return sub_10824(v3 - 128, v3 - 208);
}

uint64_t sub_167DD4()
{

  return sub_1688F4();
}

uint64_t sub_167DF4(uint64_t a1)
{
  *(v3 - 128) = a1;

  return sub_5758(v1, v2);
}

uint64_t sub_167E14()
{

  return swift_allocObject();
}

uint64_t sub_167E34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[3] = v3;
  v2[4] = a2;
  *v2 = a1;

  return sub_10824(v4 - 128, v4 - 208);
}

uint64_t sub_167E54()
{

  return sub_16A094();
}

uint64_t sub_167E74(uint64_t a1)
{

  return sub_168804();
}

uint64_t sub_167E98(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_167EC0(uint64_t a1)
{
  *(v2 - 272) = v1;
  *(v2 - 296) = a1;

  return sub_168904();
}

uint64_t sub_167EF0(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_167F18()
{
  v2 = *(v0 - 104);

  return sub_2F8D0(v0 - 128, v2);
}

uint64_t sub_167F44(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_167F60(uint64_t a1)
{
  *(a1 + 16) = 0;
}

uint64_t sub_167F7C(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_167F98()
{

  return sub_168874();
}

double sub_167FB4()
{

  return result;
}

double sub_167FD0()
{

  return result;
}

uint64_t sub_167FEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *v2 = a1;
  v2[1] = a2;

  return sub_10824(v3 - 128, v3 - 208);
}

uint64_t sub_168008(uint64_t a1)
{
  result = sub_D13C((v1 - 128));
  *(v1 - 128) = a1;
  return result;
}

uint64_t sub_168040(uint64_t a1)
{

  return sub_168804();
}

uint64_t sub_168088@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2[4] = a2;
  *v2 = result;
  return result;
}

void sub_168094(uint64_t a1@<X8>)
{
  *(v3 - 144) = v1;
  *(v3 - 136) = a1;
  *(v3 - 168) = v2;
}

void sub_1680A0(uint64_t a1@<X8>)
{
  *(v3 - 144) = v2;
  *(v3 - 136) = a1;
  *(v3 - 168) = v1;
}

void sub_1680C4(uint64_t a1@<X8>)
{
  *(v3 - 144) = v2;
  *(v3 - 136) = a1;
  *(v3 - 168) = v1;
}

uint64_t sub_1680D0()
{
  v2 = *(v0 - 104);

  return sub_2F8D0(v0 - 128, v2);
}

uint64_t sub_1680F0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_37284(a1, v4, v5, a4);
}

void sub_168108(uint64_t a1)
{
  *(a1 + 16) = 0;

  sub_1668CC();
}

double sub_168134()
{

  return result;
}

uint64_t sub_16814C(uint64_t a1)
{

  return sub_16A154();
}

uint64_t sub_168164(uint64_t a1)
{

  return sub_16A154();
}

double sub_16817C()
{

  return result;
}

double sub_168194()
{

  return result;
}

uint64_t sub_1681AC()
{
}

uint64_t sub_1681C4()
{

  return sub_10824(v0, v1 - 128);
}

uint64_t sub_1681DC()
{
}

uint64_t sub_1681F4@<X0>(uint64_t a1@<X8>)
{

  return sub_10824(v2 - 168, v1 + a1);
}

uint64_t sub_16820C()
{

  return type metadata accessor for CarCommandsCATPatternsExecutor(0);
}

uint64_t sub_168224()
{

  return type metadata accessor for CarCommandsCATs(0);
}

uint64_t sub_16823C()
{
}

uint64_t sub_168254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{

  return sub_166DE4(a1, v6, v5, a4, a5);
}

uint64_t sub_16826C()
{

  return sub_16A164();
}

uint64_t sub_168290(uint64_t a1)
{
  result = sub_D13C((v1 - 128));
  *(v1 - 128) = a1;
  return result;
}