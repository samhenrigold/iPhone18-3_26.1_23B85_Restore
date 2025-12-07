id *sub_1001026FC(id *result, int64_t a2, char a3, id *a4)
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
    sub_100095274(&qword_1002A8A10, &qword_10023D968);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * ((v11 - 32) / 40));
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
    sub_100095274(&unk_1002A7A90, &unk_10023C960);
    swift_arrayInitWithCopy();
  }

  return v10;
}

id *sub_100102844(id *result, int64_t a2, char a3, id *a4)
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
    sub_100095274(&unk_1002A8ED0, &qword_10023DBC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 4));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id *sub_100102974(id *result, int64_t a2, char a3, id *a4)
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
    sub_100095274(&qword_1002A89A0, &qword_10023D8F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 4));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

id *sub_100102A78(id *result, int64_t a2, char a3, id *a4)
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
    sub_100095274(&qword_1002A89D0, &qword_10023D928);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * ((v11 - 32) / 24));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id *sub_100102B98(id *result, int64_t a2, char a3, id *a4)
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
    sub_100095274(&qword_1002A89F8, &qword_10023D950);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 5));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

id *sub_100102CE8(id *result, int64_t a2, char a3, id *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = a4[3];
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

  v10 = a4[2];
  if (v9 <= v10)
  {
    v11 = a4[2];
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_100095274(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    v12[2] = v10;
    v12[3] = (2 * (v14 >> 4));
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = (v12 + 4);
  v16 = (a4 + 4);
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    a4[2] = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

id *sub_100102DE4(id *result, int64_t a2, char a3, id *a4)
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
    sub_100095274(&qword_1002A8998, &qword_10023D8F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 2));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

id *sub_100102EE8(id *result, int64_t a2, char a3, id *a4)
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
    sub_100095274(&qword_1002A89B8, &qword_10023D910);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 3));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

id *sub_100102FEC(id *result, int64_t a2, char a3, id *a4)
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
    sub_100095274(&qword_1002A89C0, &qword_10023D918);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 3));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

id *sub_100103114(id *result, int64_t a2, char a3, id *a4)
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
    sub_100095274(&qword_1002A8A18, &qword_10023D970);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * ((v11 - 32) / 24));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

id *sub_100103230(id *result, int64_t a2, char a3, id *a4)
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
    sub_100095274(&qword_1002A89F0, &qword_10023D948);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 4));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

id *sub_100103334(id *result, int64_t a2, char a3, id *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100095274(&qword_1002A89C8, &qword_10023D920);
  v10 = *(type metadata accessor for DockKitBoundingBox() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = (2 * ((result - v12) / v11));
LABEL_19:
  v15 = *(type metadata accessor for DockKitBoundingBox() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
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

id *sub_100103530(id *result, int64_t a2, char a3, id *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_100095274(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = (2 * (v18 >> 4));
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
    sub_100095274(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

id *sub_100103664(id *result, int64_t a2, char a3, id *a4)
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
    sub_100095274(&qword_1002A9220, &qword_10023D440);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 5));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id *sub_100103774(id *result, int64_t a2, char a3, id *a4)
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
    sub_100095274(&qword_1002A8988, &qword_10023FFC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 3));
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
    sub_100095274(&qword_1002A8990, &qword_10023D8E8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t *sub_1001038A8@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_1001AC9DC(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v8 = __DataStorage.init(bytes:length:)();
      if (a3 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

void sub_100103970(void (*a1)(uint64_t, uint64_t), uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v5 = v2[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (v7)
    {

      sub_1000A0D2C(v6, v5);
      *&v22 = v6;
      *(&v22 + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *v3 = xmmword_10023BF90;
      sub_1000A0D2C(0, 0xC000000000000000);
      sub_100104084(a1);
      v8 = v22;
      v9 = *(&v22 + 1) | 0x4000000000000000;
    }

    else
    {
      sub_1000A0D2C(v6, v5);
      *&v22 = v6;
      WORD4(v22) = v5;
      BYTE10(v22) = BYTE2(v5);
      BYTE11(v22) = BYTE3(v5);
      BYTE12(v22) = BYTE4(v5);
      BYTE13(v22) = BYTE5(v5);
      BYTE14(v22) = BYTE6(v5);
      a1(&v22, &v22 + BYTE6(v5));
      v8 = v22;
      v9 = DWORD2(v22) | ((WORD6(v22) | (BYTE14(v22) << 16)) << 32);
    }

    *v3 = v8;
    v3[1] = v9;
    return;
  }

  if (v7 != 2)
  {
    *(&v22 + 7) = 0;
    *&v22 = 0;
    a1(&v22, &v22);
    return;
  }

  sub_1000A0D2C(v6, v5);
  *&v22 = v6;
  *(&v22 + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
  *v3 = xmmword_10023BF90;
  sub_1000A0D2C(0, 0xC000000000000000);
  Data.LargeSlice.ensureUniqueReference()();
  v10 = *(&v22 + 1);
  v11 = *(v22 + 16);
  v12 = *(v22 + 24);
  v13 = __DataStorage._bytes.getter();
  if (!v13)
  {
    __break(1u);
    return;
  }

  v14 = v13;
  v15 = __DataStorage._offset.getter();
  v16 = v11 - v15;
  if (__OFSUB__(v11, v15))
  {
    __break(1u);
LABEL_17:
    __break(1u);
  }

  v17 = __OFSUB__(v12, v11);
  v18 = v12 - v11;
  if (v17)
  {
    goto LABEL_17;
  }

  v19 = __DataStorage._length.getter();
  if (v19 >= v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  a1(v14 + v16, v14 + v16 + v20);
  *v3 = v22;
  v3[1] = v10 | 0x8000000000000000;
}

char *sub_100103C20(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_1000A0D2C(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1000A0D2C(v7, v6);
    *v4 = xmmword_10023BF90;
    sub_1000A0D2C(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v7, __DataStorage._offset.getter()))
      {
LABEL_26:
        __break(1u);
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v14 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_100104160(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_1000A0D2C(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_10023BF90;
    sub_1000A0D2C(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    result = sub_100104160(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

uint64_t sub_100103FC4(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(a3, a4 - a3);
    if (!v4)
    {
      return result;
    }

LABEL_5:
    __break(1u);
    return result;
  }

  result = (a1)(0, 0, 0, a4);
  if (v4)
  {
    goto LABEL_5;
  }

  return result;
}

void *sub_100104018(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

void sub_100104084(void (*a1)(uint64_t, uint64_t))
{
  Data.InlineSlice.ensureUniqueReference()();
  v3 = *v1;
  v4 = v1[1];
  if (v4 < v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = a1;

  v5 = __DataStorage._bytes.getter();
  if (!v5)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = __DataStorage._offset.getter();
  v8 = v3 - v7;
  if (__OFSUB__(v3, v7))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v4 - v3;
  v10 = __DataStorage._length.getter();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12(v6 + v8, v6 + v8 + v11);
}

char *sub_100104160(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_100104214@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = _StringGuts.copyUTF8(into:)();
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

uint64_t sub_100104264(uint64_t a1)
{
  v9 = sub_100095274(&unk_1002A7B10, &unk_10023F3A0);
  v10 = sub_1000A4474();
  v8[0] = a1;
  v2 = sub_1000A09E0(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_1001AC450(v3, &v3[v4], &v7);
  v5 = v7;
  sub_100095808(v8);
  return v5;
}

unint64_t sub_100104314()
{
  result = qword_1002A88E8;
  if (!qword_1002A88E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A88E8);
  }

  return result;
}

double sub_100104368(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = sub_100095274(a2, a3);
  v14 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  sub_1000A09E0(a1, a1[3]);
  a4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v10 = v14;
  v16 = 0;
  KeyedDecodingContainer.decode(_:forKey:)();
  v15 = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  (*(v10 + 8))(v9, v7);
  sub_100095808(a1);
  return v12;
}

uint64_t _s14dockaccessoryd14MotionFeedbackV4dataACSg10Foundation4DataV_tcfC_0(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A0CD8(a1, a2);
  Data.Iterator.init(_:at:)();
  v8 = Data.Iterator.next()();
  if ((*&v8 & 0x100) == 0)
  {
    value = v8.value;
    LOWORD(v10) = Data.Iterator.next()();
    if ((v10 & 0x100) == 0)
    {
      v41 = v10;
      v42 = v5;
      v43 = v4;
      v44 = a1;
      if (value)
      {
        v11 = 0;
        v12 = _swiftEmptyArrayStorage;
        while (1)
        {
          v13 = Data.Iterator.next()();
          if ((*&v13 & 0x100) != 0)
          {
            break;
          }

          v14 = v13.value;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v12 = sub_100102CE8(0, v12[2] + 1, 1, v12, &qword_1002A8A50, &qword_10023D988);
          }

          v16 = v12[2];
          v15 = v12[3];
          if (v16 >= v15 >> 1)
          {
            v12 = sub_100102CE8((v15 > 1), v16 + 1, 1, v12, &qword_1002A8A50, &qword_10023D988);
          }

          ++v11;
          v12[2] = (v16 + 1);
          v17 = &v12[2 * v16];
          v17[4] = v14;
          v17[5] = 0;
          if (v11 == value)
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
        v12 = _swiftEmptyArrayStorage;
LABEL_14:
        v18 = v41;
        if (v41)
        {
          v19 = 0;
          v20 = _swiftEmptyArrayStorage;
          while (1)
          {
            v21 = Data.Iterator.next()();
            if ((*&v21 & 0x100) != 0)
            {
              break;
            }

            v22 = v21.value;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v20 = sub_100102CE8(0, v20[2] + 1, 1, v20, &qword_1002A8A48, &qword_10023D980);
            }

            v24 = v20[2];
            v23 = v20[3];
            if (v24 >= v23 >> 1)
            {
              v20 = sub_100102CE8((v23 > 1), v24 + 1, 1, v20, &qword_1002A8A48, &qword_10023D980);
            }

            ++v19;
            v20[2] = (v24 + 1);
            v25 = &v20[2 * v24];
            v25[4] = v22;
            v25[5] = 0;
            if (v19 == v18)
            {
              goto LABEL_24;
            }
          }
        }

        else
        {
          v20 = _swiftEmptyArrayStorage;
LABEL_24:
          if (value)
          {
            v26 = 0;
            v27 = value;
            v28 = 5;
            while (1)
            {
              v29 = Data.Iterator.next()();
              if ((*&v29 & 0x100) != 0)
              {
                break;
              }

              v30 = v29;
              v31 = Data.Iterator.next()();
              if ((*&v31 & 0x100) != 0)
              {
                break;
              }

              v32 = v31.value;
              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = sub_10019F80C(v12);
                v12 = result;
              }

              if (v26 >= v12[2])
              {
                __break(1u);
LABEL_46:
                __break(1u);
                return result;
              }

              ++v26;
              *&v12[v28] = (v32 | (*&v30 << 8)) / 1000.0;
              v28 += 2;
              if (v27 == v26)
              {
                goto LABEL_32;
              }
            }
          }

          else
          {
LABEL_32:
            if (!v41)
            {
LABEL_44:
              (*(v42 + 8))(v7, v43);
              sub_1000A0D2C(v44, a2);
              return v12;
            }

            v34 = 0;
            v35 = v41;
            v36 = 5;
            while (1)
            {
              v37 = Data.Iterator.next()();
              if ((*&v37 & 0x100) != 0)
              {
                break;
              }

              v38 = v37;
              v39 = Data.Iterator.next()();
              if ((*&v39 & 0x100) != 0)
              {
                break;
              }

              v40 = v39.value;
              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = sub_10019F7F8(v20);
                v20 = result;
              }

              if (v34 >= v20[2])
              {
                goto LABEL_46;
              }

              ++v34;
              *&v20[v36] = (v40 | (*&v38 << 8)) / 1000.0;
              v36 += 2;
              if (v35 == v34)
              {
                goto LABEL_44;
              }
            }
          }
        }
      }

      v4 = v43;
      a1 = v44;
      v5 = v42;
    }
  }

  (*(v5 + 8))(v7, v4);
  sub_1000A0D2C(a1, a2);

  return 0;
}

unint64_t sub_100104984()
{
  result = qword_1002A88F0;
  if (!qword_1002A88F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A88F0);
  }

  return result;
}

unint64_t sub_1001049D8()
{
  result = qword_1002A88F8;
  if (!qword_1002A88F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A88F8);
  }

  return result;
}

unint64_t sub_100104A2C()
{
  result = qword_1002A8908;
  if (!qword_1002A8908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A8908);
  }

  return result;
}

unint64_t sub_100104A80()
{
  result = qword_1002A8920;
  if (!qword_1002A8920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A8920);
  }

  return result;
}

uint64_t sub_100104AD4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10009589C(&qword_1002A8928, &qword_10023D458);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100104B4C()
{
  result = qword_1002A8938;
  if (!qword_1002A8938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A8938);
  }

  return result;
}

uint64_t sub_100104BA0(void *a1)
{
  v3 = sub_100095274(&qword_1002A8A20, &qword_10023D978);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[3];
  sub_1000A09E0(a1, v7);
  sub_100104A2C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_100095274(&qword_1002A8910, &qword_10023D450);
    HIBYTE(v9) = 0;
    sub_1001053C0(&qword_1002A8A28, sub_100105438, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v7 = v10;
    sub_100095274(&qword_1002A8928, &qword_10023D458);
    HIBYTE(v9) = 1;
    sub_100104AD4(&qword_1002A8A38, sub_10010548C, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100095808(a1);
  return v7;
}

uint64_t sub_100104E04(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100104E4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100104EF4()
{
  result = qword_1002A8940;
  if (!qword_1002A8940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A8940);
  }

  return result;
}

unint64_t sub_100104F4C()
{
  result = qword_1002A8948;
  if (!qword_1002A8948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A8948);
  }

  return result;
}

unint64_t sub_100104FA4()
{
  result = qword_1002A8950;
  if (!qword_1002A8950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A8950);
  }

  return result;
}

unint64_t sub_100104FFC()
{
  result = qword_1002A8958;
  if (!qword_1002A8958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A8958);
  }

  return result;
}

unint64_t sub_100105054()
{
  result = qword_1002A8960;
  if (!qword_1002A8960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A8960);
  }

  return result;
}

unint64_t sub_1001050AC()
{
  result = qword_1002A8968;
  if (!qword_1002A8968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A8968);
  }

  return result;
}

unint64_t sub_100105104()
{
  result = qword_1002A8970;
  if (!qword_1002A8970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A8970);
  }

  return result;
}

unint64_t sub_10010515C()
{
  result = qword_1002A8978;
  if (!qword_1002A8978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A8978);
  }

  return result;
}

unint64_t sub_1001051B4()
{
  result = qword_1002A8980;
  if (!qword_1002A8980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A8980);
  }

  return result;
}

uint64_t sub_100105208(uint64_t a1)
{
  v2 = sub_100095274(&qword_1002A89E0, &qword_10023D938);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_100105270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_100104018(sub_1001052D8, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_1001052F8(uint64_t a1, uint64_t a2)
{
  v5 = **(v2 + 16);
  v4[2] = &v5;
  return sub_100103FC4(sub_100105350, v4, a1, a2);
}

uint64_t sub_100105350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(v3 + 16);
  v8 = *v7;
  v9 = v7[1];
  sub_1000A0CD8(*v7, v9);
  result = sub_1001F09E8(a3, a1, a2, v8, v9);
  a3[3] = result;
  return result;
}

uint64_t sub_1001053C0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10009589C(&qword_1002A8910, &qword_10023D450);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100105438()
{
  result = qword_1002A8A30;
  if (!qword_1002A8A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A8A30);
  }

  return result;
}

unint64_t sub_10010548C()
{
  result = qword_1002A8A40;
  if (!qword_1002A8A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A8A40);
  }

  return result;
}

uint64_t sub_100105518()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  v7 = type metadata accessor for DispatchQoS();
  result = __chkstk_darwin(v7 - 8);
  if (!*(v1 + 16))
  {
    v36 = v2;

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    v11 = os_log_type_enabled(v9, v10);
    v35 = v3;
    if (v11)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v37 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_1000952D4(*(v1 + 64), *(v1 + 72), &v37);
      _os_log_impl(&_mh_execute_header, v9, v10, "starting txn %s", v12, 0xCu);
      sub_100095808(v13);
    }

    v14 = *(v1 + 64);
    v15 = *(v1 + 72);
    v37 = 0xD00000000000001DLL;
    v38 = 0x8000000100231540;
    v16._countAndFlagsBits = v14;
    v16._object = v15;
    String.append(_:)(v16);
    String.utf8CString.getter();

    v17 = os_transaction_create();

    *(v1 + 16) = v17;
    swift_unknownObjectRelease();
    v34 = sub_1000B3420(0, v18);
    v37 = 0xD000000000000023;
    v38 = 0x8000000100231560;
    v31 = v15;
    v32 = v14;
    v19._countAndFlagsBits = v14;
    v19._object = v15;
    String.append(_:)(v19);
    v33 = v37;
    static DispatchQoS.unspecified.getter();
    v37 = _swiftEmptyArrayStorage;
    sub_1000EFFD8(&qword_1002A7110, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_100095274(&unk_1002A6830, &unk_10023AB20);
    sub_100095BDC(&qword_1002A7120, &unk_1002A6830, &unk_10023AB20);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v35 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v36);
    v20 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v21 = *(v1 + 24);
    *(v1 + 24) = v20;

    v22 = [objc_allocWithZone(NSDate) init];
    [v22 timeIntervalSince1970];
    v24 = v23;

    *(v1 + 80) = v24;
    *(v1 + 88) = 0;
    if (*(v1 + 56) > 0.0)
    {
      swift_allocObject();
      swift_weakInit();
      v25 = *(v1 + 24);
      objc_allocWithZone(type metadata accessor for RepeatingTimer());
      v26 = v25;

      v27 = RepeatingTimer.init(interval:fireOnce:queue:_:)();
      v28 = *(v1 + 32);
      *(v1 + 32) = v27;
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v29 = *(v1 + 48);
      ObjectType = swift_getObjectType();
      (*(v29 + 8))(v32, v31, ObjectType, v29);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1001059EC()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 16))
  {
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "stopping txn", v12, 2u);
    }

    v13 = *(v1 + 24);
    if (v13)
    {
      aBlock[4] = sub_1001064F0;
      aBlock[5] = v1;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100147FC8;
      aBlock[3] = &unk_100277C88;
      v14 = _Block_copy(aBlock);
      v18 = v13;

      static DispatchQoS.unspecified.getter();
      v19 = _swiftEmptyArrayStorage;
      sub_1000EFFD8(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      v17 = v6;
      sub_100095274(&unk_1002A6B60, qword_10023AE10);
      sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v15 = v18;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v14);

      (*(v3 + 8))(v5, v2);
      (*(v7 + 8))(v9, v17);
    }
  }
}

uint64_t sub_100105D20(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = v2;
    dispatch thunk of RepeatingTimer.cancel()();

    v4 = a1[4];
    a1[4] = 0;

    v5 = a1[3];
    a1[3] = 0;
  }

  a1[2] = 0;

  return swift_unknownObjectRelease();
}

void sub_100105D88()
{
  v1 = [objc_allocWithZone(NSDate) init];
  [v1 timeIntervalSince1970];
  v3 = v2;

  if (*(v0 + 88))
  {
    __break(1u);
  }

  else if (*(v0 + 56) < v3 - *(v0 + 80))
  {
    sub_1001059EC();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v0 + 48);
      ObjectType = swift_getObjectType();
      (*(v4 + 16))(*(v0 + 64), *(v0 + 72), ObjectType, v4);

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_100105E6C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  result = __chkstk_darwin(v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 24);
  if (v10)
  {
    aBlock[4] = sub_1000BAAE0;
    aBlock[5] = v0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100147FC8;
    aBlock[3] = &unk_100277C60;
    v15 = result;
    v14 = _Block_copy(aBlock);
    v11 = v10;

    static DispatchQoS.unspecified.getter();
    v16 = _swiftEmptyArrayStorage;
    sub_1000EFFD8(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100095274(&unk_1002A6B60, qword_10023AE10);
    sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v12 = v14;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v12);

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v9, v15);
  }

  return result;
}

void sub_10010611C(uint64_t a1)
{
  v2 = [objc_allocWithZone(NSDate) init];
  [v2 timeIntervalSince1970];
  v4 = v3;

  *(a1 + 80) = v4;
  *(a1 + 88) = 0;
  if (*(a1 + 56) > 0.0)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = v5;
      dispatch thunk of RepeatingTimer.cancel()();
    }

    swift_allocObject();
    swift_weakInit();
    v7 = *(a1 + 24);
    v8 = objc_allocWithZone(type metadata accessor for RepeatingTimer());
    v9 = v7;

    v10 = RepeatingTimer.init(interval:fireOnce:queue:_:)();
    v11 = *(a1 + 32);
    *(a1 + 32) = v10;
  }
}

uint64_t sub_100106264(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100105D88();
  }

  return result;
}

uint64_t sub_1001062BC()
{
  swift_unknownObjectRelease();

  sub_1000B53D0(v0 + 40);

  v1 = OBJC_IVAR____TtC14dockaccessoryd11Transaction_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Transaction(uint64_t a1)
{
  result = qword_1002A8AC0;
  if (!qword_1002A8AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001063D4(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001064A0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001064D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100106520(uint64_t a1)
{
  v2 = v1;
  *(v2 + 16) = 0;
  *(v2 + 24) = 1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 1;
  *(v2 + 48) = 0;
  *(v2 + 56) = 1;
  if (!*(a1 + 16))
  {
    goto LABEL_13;
  }

  v4 = sub_10016D4D0(0x6953676F4C78616DLL, 0xEA0000000000657ALL);
  if (v5)
  {
    *(v2 + 16) = [*(*(a1 + 56) + 8 * v4) integerValue];
    *(v2 + 24) = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_13;
  }

  v6 = sub_10016D4D0(0x79616C6564, 0xE500000000000000);
  if (v7)
  {
    *(v2 + 32) = [*(*(a1 + 56) + 8 * v6) integerValue];
    *(v2 + 40) = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_13;
  }

  v8 = sub_10016D4D0(0x746F687370616E73, 0xEC00000065707954);
  if (v9)
  {
    *(v2 + 48) = [*(*(a1 + 56) + 8 * v8) unsignedIntegerValue];
    *(v2 + 56) = 0;
  }

  if (*(a1 + 16) && (v10 = sub_10016D4D0(0x74617453706D7564, 0xE900000000000065), (v11 & 1) != 0))
  {
    v12 = *(*(a1 + 56) + 8 * v10);

    v13 = [v12 BOOLValue];

    *(v2 + 57) = v13;
  }

  else
  {
LABEL_13:
  }

  return v2;
}

unint64_t sub_10010669C()
{
  v1 = v0;
  v2 = sub_1001F2468(_swiftEmptyArrayStorage);
  if (*(v1 + 24))
  {
    if (*(v1 + 40))
    {
      goto LABEL_3;
    }

LABEL_7:
    v10 = *(v1 + 32);
    v14 = &type metadata for Int;
    *&v13 = v10;
    sub_1000FEA30(&v13, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1001EB278(v12, 0x79616C6564, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
    if (*(v1 + 56))
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v8 = *(v1 + 16);
  v14 = &type metadata for Int;
  *&v13 = v8;
  sub_1000FEA30(&v13, v12);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_1001EB278(v12, 0x6953676F4C78616DLL, 0xEA0000000000657ALL, v9);
  if ((*(v1 + 40) & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((*(v1 + 56) & 1) == 0)
  {
LABEL_4:
    v3 = *(v1 + 48);
    v14 = &type metadata for UInt;
    *&v13 = v3;
    sub_1000FEA30(&v13, v12);
    v4 = swift_isUniquelyReferenced_nonNull_native();
    sub_1001EB278(v12, 0x746F687370616E73, 0xEC00000065707954, v4);
  }

LABEL_5:
  v5 = *(v1 + 57);
  v14 = &type metadata for Bool;
  LOBYTE(v13) = v5;
  sub_1000FEA30(&v13, v12);
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_1001EB278(v12, 0x74617453706D7564, 0xE900000000000065, v6);
  return v2;
}

uint64_t sub_100106890(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 88) = a1;
  return (_swift_task_switch)(sub_1001068B4, 0, 0);
}

uint64_t sub_1001068B4()
{
  v0[3] = *(v0[2] + OBJC_IVAR____TtC14dockaccessoryd26TrackingActivityController_lock);
  v3 = (&async function pointer to dispatch thunk of DKLockActor.lock() + async function pointer to dispatch thunk of DKLockActor.lock());
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100106968;

  return v3();
}

uint64_t sub_100106968()
{

  return (_swift_task_switch)(sub_100106A64, 0, 0);
}

uint64_t sub_100106A64()
{
  type metadata accessor for DockKitCoreUtils();
  v1 = static DockKitCoreUtils.allowedForBackgroundSecureTracking()();
  v0[5] = OBJC_IVAR____TtC14dockaccessoryd26TrackingActivityController_logger;
  v2 = Logger.logObject.getter();
  if (v1)
  {
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Starting secure tracking activity", v4, 2u);
    }

    v5 = v0[2];

    v0[6] = *(v5 + OBJC_IVAR____TtC14dockaccessoryd26TrackingActivityController_secureTrackingManager);
    if (sub_100107B6C())
    {
      v0[7] = *(v0[2] + OBJC_IVAR____TtC14dockaccessoryd26TrackingActivityController_activity);
      v6 = swift_task_alloc();
      v0[8] = v6;
      *v6 = v0;
      v6[1] = sub_100106CC0;

      return sub_1000E56D8();
    }

    type metadata accessor for DKLockActor();
    sub_100107B10();
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v13;
  }

  else
  {
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v2, v8, "Ignoring secure tracking start request, not allowed.", v9, 2u);
    }

    type metadata accessor for DKLockActor();
    sub_100107B10();
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v11;
  }

  return (_swift_task_switch)(sub_100107B68, v10, v12);
}

uint64_t sub_100106CC0()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_100106F40;
  }

  else
  {
    v2 = sub_100106DD4;
  }

  return (_swift_task_switch)(v2, 0, 0);
}

uint64_t sub_100106DD4()
{
  if ((*(v0 + 88) & 1) == 0)
  {
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v1 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_secureTrackingControlOnNotification);
    DeviceNotification.state.setter();

    v2 = [objc_opt_self() sharedInstance];
    v3 = String._bridgeToObjectiveC()();
    v4 = String._bridgeToObjectiveC()();
    [v2 reloadControlsForExtension:v3 kind:0 reason:v4];
  }

  type metadata accessor for DKLockActor();
  sub_100107B10();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(sub_100107B68, v6, v5);
}

uint64_t sub_100106F40()
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error starting secure tracking activity: %@", v3, 0xCu);
    sub_1000F1CD4(v4);
  }

  sub_100107ECC();
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_1001070C8;
  v7 = *(v0 + 88);

  return sub_1000E66BC(v7);
}

uint64_t sub_1001070C8()
{

  return (_swift_task_switch)(sub_1001071C4, 0, 0);
}

uint64_t sub_1001071C4()
{

  type metadata accessor for DKLockActor();
  sub_100107B10();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(sub_100107B68, v1, v0);
}

uint64_t sub_100107254(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return (_swift_task_switch)(sub_100107278, 0, 0);
}

uint64_t sub_100107278()
{
  v0[3] = *(v0[2] + OBJC_IVAR____TtC14dockaccessoryd26TrackingActivityController_lock);
  v3 = (&async function pointer to dispatch thunk of DKLockActor.lock() + async function pointer to dispatch thunk of DKLockActor.lock());
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10010732C;

  return v3();
}

uint64_t sub_10010732C()
{

  return (_swift_task_switch)(sub_100107428, 0, 0);
}

uint64_t sub_100107428(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Stopping secure tracking activity", v4, 2u);
  }

  if (sub_100107ECC())
  {
    v5 = swift_task_alloc();
    *(v1 + 40) = v5;
    *v5 = v1;
    v5[1] = sub_1001075D0;
    v6 = *(v1 + 48);

    return sub_1000E66BC(v6);
  }

  else
  {
    sub_100108230();
    type metadata accessor for DKLockActor();
    sub_100107B10();
    v9 = dispatch thunk of Actor.unownedExecutor.getter();

    return (_swift_task_switch)(sub_100107708, v9, v8);
  }
}

uint64_t sub_1001075D0()
{

  type metadata accessor for DKLockActor();
  sub_100107B10();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(sub_100107708, v1, v0);
}

uint64_t sub_100107708()
{
  dispatch thunk of DKLockActor.unlock()();
  v1 = *(v0 + 8);

  return v1();
}

id sub_100107768()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  Logger.init(subsystem:category:)();
  v3 = OBJC_IVAR____TtC14dockaccessoryd26TrackingActivityController_activity;
  type metadata accessor for TrackingActivity(0);
  v4 = swift_allocObject();
  Logger.init(subsystem:category:)();
  *(v4 + OBJC_IVAR____TtC14dockaccessoryd16TrackingActivity_assertion) = 0;
  *(v4 + OBJC_IVAR____TtC14dockaccessoryd16TrackingActivity_activity) = 0;
  *(v4 + OBJC_IVAR____TtC14dockaccessoryd16TrackingActivity_activityStateUpdatesTask) = 0;
  *(v4 + OBJC_IVAR____TtC14dockaccessoryd16TrackingActivity_shouldSaveUserDismissal) = 1;
  *&v1[v3] = v4;
  v5 = OBJC_IVAR____TtC14dockaccessoryd26TrackingActivityController_secureTrackingManager;
  *&v1[v5] = [objc_allocWithZone(type metadata accessor for SecureTrackingController(0)) init];
  v6 = OBJC_IVAR____TtC14dockaccessoryd26TrackingActivityController_lock;
  type metadata accessor for DKLockActor();
  *&v1[v6] = DKLockActor.__allocating_init()();
  v7 = &v1[OBJC_IVAR____TtC14dockaccessoryd26TrackingActivityController_trackingWidgetExtensionBundleID];
  *v7 = 0xD00000000000003BLL;
  *(v7 + 1) = 0x8000000100231690;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "init");
}

id sub_10010791C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for TrackingActivityController(uint64_t a1)
{
  result = qword_1002A8D90;
  if (!qword_1002A8D90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100107A58(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_100107B10()
{
  result = qword_1002A8DA0;
  if (!qword_1002A8DA0)
  {
    type metadata accessor for DKLockActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A8DA0);
  }

  return result;
}

uint64_t sub_100107B6C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v0[OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_startedSecureCapture];
  if ((v10 & 1) == 0)
  {
    v26 = v0[OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_startedSecureCapture];
    v0[OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_startedSecureCapture] = 1;
    v24 = *&v0[OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_metadataQueue];
    v25 = v7;
    v11 = swift_allocObject();
    *(v11 + 16) = v0;
    aBlock[4] = sub_10010BEA8;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100147FC8;
    aBlock[3] = &unk_100277D78;
    v12 = _Block_copy(aBlock);
    v23 = v0;
    static DispatchQoS.unspecified.getter();
    v27 = _swiftEmptyArrayStorage;
    sub_10010BE60(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100095274(&unk_1002A6B60, qword_10023AE10);
    sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v13 = v24;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v12);
    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v9, v25);

    v14 = swift_allocObject();
    v15 = v23;
    *(v14 + 16) = v23;
    v16 = objc_allocWithZone(type metadata accessor for RepeatingTimer());
    v17 = v15;
    v18 = v13;
    v19 = RepeatingTimer.init(interval:fireOnce:queue:_:)();
    v20 = *&v17[OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_timer];
    *&v17[OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_timer] = v19;

    v10 = v26;
  }

  return v10 ^ 1u;
}

uint64_t sub_100107ECC()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v0[OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_startedSecureCapture];
  if (result == 1)
  {
    v20 = 1;
    v0[OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_startedSecureCapture] = 0;
    v17 = *&v0[OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_metadataQueue];
    v18 = v7;
    v19 = v6;
    v11 = swift_allocObject();
    *(v11 + 16) = v0;
    aBlock[4] = sub_10010BE40;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100147FC8;
    aBlock[3] = &unk_100277D28;
    v12 = _Block_copy(aBlock);
    v13 = v0;
    static DispatchQoS.unspecified.getter();
    v21 = _swiftEmptyArrayStorage;
    sub_10010BE60(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100095274(&unk_1002A6B60, qword_10023AE10);
    sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v12);
    (*(v2 + 8))(v4, v1);
    (*(v18 + 8))(v9, v19);

    v14 = OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_timer;
    v15 = *&v13[OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_timer];
    if (v15)
    {
      v16 = v15;
      dispatch thunk of RepeatingTimer.cancel()();

      v15 = *&v13[v14];
    }

    *&v13[v14] = 0;

    v21 = 0;
    v22 = 1;
    swift_beginAccess();
    sub_100095274(&unk_1002A8EB0, &unk_10023DB98);
    DKThreadSafe.wrappedValue.setter();
    swift_endAccess();
    return v20;
  }

  return result;
}

void sub_100108230()
{
  v1 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - v2;
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v4 = qword_1002B1CF0;
  v5 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v6 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v6 + 4);

  v7 = *(v4 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
  v8 = *(v4 + v5);
  v9 = v7;

  os_unfair_lock_unlock(v8 + 4);

  if (v7)
  {
    type metadata accessor for TrackingStand();
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      v11 = v10;
      v12 = type metadata accessor for TaskPriority();
      (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
      v13 = swift_allocObject();
      v13[2] = 0;
      v13[3] = 0;
      v13[4] = v0;
      v13[5] = v11;
      v14 = v0;
      sub_1001B6410(0, 0, v3, &unk_10023DBE8, v13);

      return;
    }
  }

  v19 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v19, v15, "No connected accessory stand found", v16, 2u);
  }

  v17 = v19;
}

uint64_t sub_10010849C@<X0>(uint64_t a1@<X8>)
{
  result = TrackerOrientation.init(rawValue:)();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

id sub_1001084CC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_100095274(&unk_1002A8EB0, &unk_10023DB98);
  v20 = *(v2 - 8);
  v21 = v2;
  __chkstk_darwin(v2);
  v19 = v16 - v3;
  v18 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v18 - 8);
  __chkstk_darwin(v18);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7);
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  Logger.init(subsystem:category:)();
  v17 = OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_metadataQueue;
  v9 = sub_100095B94(0, &qword_1002A6820, OS_dispatch_queue_ptr);
  v16[0] = "SecureTrackingManager";
  v16[1] = v9;
  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_10010BE60(&qword_1002A7110, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100095274(&unk_1002A6830, &unk_10023AB20);
  sub_100095BDC(&qword_1002A7120, &unk_1002A6830, &unk_10023AB20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v18);
  *&v0[v17] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v10 = OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_captureSession;
  *&v1[v10] = [objc_allocWithZone(AVCaptureSession) init];
  v1[OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_startedSecureCapture] = 0;
  v11 = OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_trackingTaskLock;
  type metadata accessor for DKLockActor();
  *&v1[v11] = DKLockActor.__allocating_init()();
  *&v1[OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_lastKnownPortraitOrLandscapeOrientation] = 1;
  *&v1[OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_trackingState] = 0;
  *&v1[OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_timer] = 0;
  v12 = OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController__lastMetadataTimestamp;
  v24 = 0;
  v25 = 1;
  sub_100095274(&qword_1002A8E40, &qword_10023DB90);
  v13 = v19;
  DKThreadSafe.init(wrappedValue:)();
  (*(v20 + 32))(&v1[v12], v13, v21);
  *&v1[OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_metadataWatchdogTimeout] = 0x3FC999999999999ALL;
  v23.receiver = v1;
  v23.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v23, "init");
  sub_100108918();

  return v14;
}

void sub_100108918()
{
  v1 = v0;
  type metadata accessor for DockKitCoreUtils();
  if ((static DockKitCoreUtils.allowedForBackgroundSecureTracking()() & 1) == 0)
  {
    oslog = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v42, "Ignoring secure tracking camera setup, not allowed.", v43, 2u);
    }

    v44 = oslog;
    goto LABEL_52;
  }

  sub_100095274(&qword_1002A8EF0, &qword_10023DBD8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10023AAC0;
  v3 = AVCaptureDeviceTypeBuiltInUltraWideAngleMetadataCamera;
  v4 = AVCaptureDeviceTypeBuiltInWideAngleMetadataCamera;
  *(v2 + 32) = AVCaptureDeviceTypeBuiltInUltraWideAngleMetadataCamera;
  *(v2 + 40) = v4;
  type metadata accessor for DeviceType(0);
  v5 = v3;
  v6 = v4;
  v7 = AVMediaTypeMetadataObject;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v69 = [objc_opt_self() discoverySessionWithDeviceTypes:isa mediaType:v7 position:2];

  v9 = [v69 devices];
  sub_100095B94(0, &qword_1002A8EF8, AVCaptureDevice_ptr);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v10 >> 62))
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_49;
  }

LABEL_48:
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_49:

    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&_mh_execute_header, v60, v61, "frontVideoCaptureDevice is nil. Couldn't find an appropriate metadata camera from the discovery session", v62, 2u);
    }

    v44 = v69;
LABEL_52:

    return;
  }

LABEL_4:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v11 = *(v10 + 32);
  }

  v12 = v11;

  v13 = objc_allocWithZone(AVCaptureDeviceInput);
  v72 = 0;
  v14 = v12;
  v15 = [v13 initWithDevice:v14 error:&v72];
  if (v15)
  {
    v16 = v15;
    v17 = v72;

    v18 = [objc_allocWithZone(AVCaptureMetadataOutput) init];
    v19 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_captureSession);
    if ([v19 canAddInput:v16])
    {
      [v19 addInput:v16];
    }

    v66 = v1;
    if ([v19 canAddOutput:{v18, v63}])
    {
      [v19 addOutput:v18];
    }

    v64 = v18;
    v65 = v16;
    v67 = v14;
    v10 = [v18 availableMetadataObjectTypes];
    type metadata accessor for ObjectType(0);
    v63 = v20;
    v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = *(v21 + 16);
    if (v22)
    {
      v23 = 0;
      v70 = *(v21 + 16);
      v68 = v22 - 1;
      v24 = _swiftEmptyArrayStorage;
      do
      {
        v25 = v23;
        while (1)
        {
          if (v25 >= *(v21 + 16))
          {
            __break(1u);
            goto LABEL_48;
          }

          v26 = *(v21 + 32 + 8 * v25);
          v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v1 = v28;
          if (v27 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v1 == v29)
          {
            break;
          }

          v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v32 = v26;

          if (v31)
          {
            goto LABEL_28;
          }

          v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v1 = v34;
          v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v10 = v36;
          if (v33 == v35 && v1 == v36)
          {
            goto LABEL_27;
          }

          v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v37)
          {
            goto LABEL_28;
          }

          ++v25;

          if (v70 == v25)
          {
            goto LABEL_41;
          }
        }

        v38 = v26;
LABEL_27:

LABEL_28:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v72 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1001D7168(0, v24[2] + 1, 1);
          v24 = v72;
        }

        v41 = v24[2];
        v40 = v24[3];
        v10 = v41 + 1;
        if (v41 >= v40 >> 1)
        {
          sub_1001D7168((v40 > 1), v41 + 1, 1);
          v24 = v72;
        }

        v23 = v25 + 1;
        v24[2] = v10;
        v24[v41 + 4] = v26;
      }

      while (v68 != v25);
    }

    else
    {
      v24 = _swiftEmptyArrayStorage;
    }

LABEL_41:

    if (v24[2])
    {
      v49 = Array._bridgeToObjectiveC()().super.isa;

      [v64 setMetadataObjectTypes:v49];

      [v64 setMetadataObjectsDelegate:v66 queue:*(v66 + OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_metadataQueue)];
    }

    else
    {

      v50 = v64;
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v72 = v54;
        *v53 = 136315138;
        v55 = [v50 availableMetadataObjectTypes];
        static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v56 = Array.description.getter();
        v58 = v57;

        v59 = sub_1000952D4(v56, v58, &v72);

        *(v53 + 4) = v59;
        _os_log_impl(&_mh_execute_header, v51, v52, "No face or body metadata objects available! %s", v53, 0xCu);
        sub_100095808(v54);
      }

      else
      {
      }
    }
  }

  else
  {
    v45 = v72;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "No input found", v48, 2u);
    }
  }
}

uint64_t sub_1001091FC(uint64_t a1)
{
  v2 = sub_100095274(&unk_1002A8EB0, &unk_10023DB98);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.now.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v11 = v10;
  (*(v7 + 8))(v9, v6);
  v12 = OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController__lastMetadataTimestamp;
  swift_beginAccess();
  (*(v3 + 16))(v5, a1 + v12, v2);
  DKThreadSafe.wrappedValue.getter();
  result = (*(v3 + 8))(v5, v2);
  if ((v15 & 1) == 0 && v11 - v14 > 0.2)
  {
    sub_100108230();
    v16 = 0;
    v17 = 1;
    swift_beginAccess();
    DKThreadSafe.wrappedValue.setter();
    return swift_endAccess();
  }

  return result;
}

void sub_100109428(uint64_t a1)
{
  [*(a1 + OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_captureSession) stopRunning];
  sub_100108230();
  *(a1 + OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_trackingState) = 0;
  if (qword_1002A6780 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v2 = qword_1002B1CF0;
    v3 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v4 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v4 + 4);

    v5 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_foregroundAppIDs);
    v6 = *(v5 + 16);
    if (!v6)
    {
      break;
    }

    v7 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_dockKitApps;

    swift_beginAccess();
    v8 = 0;
    v9 = (v5 + 40);
    while (v8 < *(v5 + 16))
    {
      if (*(*(v2 + v7) + 16))
      {
        v11 = *(v9 - 1);
        v10 = *v9;

        sub_10016D4D0(v11, v10);
        LOBYTE(v11) = v12;

        if (v11)
        {

          goto LABEL_12;
        }
      }

      ++v8;
      v9 += 2;
      if (v6 == v8)
      {

        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

LABEL_10:
  v13 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_dockKitApps;
  swift_beginAccess();
  v14 = *(v2 + v13);

  v15 = cameracaptureIdentifier.getter();
  if (*(v14 + 16))
  {
    sub_10016D4D0(v15, v16);
    v18 = v17;

    if (v18)
    {
LABEL_12:
      v19 = *(v2 + v3);

      os_unfair_lock_unlock(v19 + 4);

      return;
    }
  }

  else
  {
  }

  v20 = *(v2 + v3);

  os_unfair_lock_unlock(v20 + 4);

  v21 = *(v2 + v3);

  os_unfair_lock_lock(v21 + 4);

  v22 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
  v23 = *(v2 + v3);
  v24 = v22;

  os_unfair_lock_unlock(v23 + 4);

  sub_10018A9DC(0, v22);
}

void sub_1001096BC(uint64_t a1)
{
  v3 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - v4;
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v6 = qword_1002B1CF0;
  v7 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v8 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v8 + 4);

  v9 = *(v6 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
  v10 = *(v6 + v7);
  v11 = v9;

  os_unfair_lock_unlock(v10 + 4);

  if (v9)
  {
    type metadata accessor for TrackingStand();
    v12 = swift_dynamicCastClass();
    if (v12)
    {
      v13 = v12;
      v14 = sub_100109944();
      v15 = type metadata accessor for TaskPriority();
      (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
      v16 = swift_allocObject();
      v16[2] = 0;
      v16[3] = 0;
      v16[4] = v1;
      v16[5] = v13;
      v16[6] = a1;
      v16[7] = v14;
      v17 = v1;

      sub_1001B6410(0, 0, v5, &unk_10023DBB0, v16);

      return;
    }
  }

  v22 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v22, v18, "No connected accessory stand found", v19, 2u);
  }

  v20 = v22;
}

uint64_t sub_100109944()
{
  v1 = v0;
  sub_100095274(&qword_1002A8EE8, &unk_10023DBC8);
  swift_initStaticObject();
  v2 = sub_10010B89C();
  v3 = TrackerOrientation.rawValue.getter();
  if (v3 == TrackerOrientation.rawValue.getter() || (v4 = TrackerOrientation.rawValue.getter(), v4 == TrackerOrientation.rawValue.getter()) || (v5 = TrackerOrientation.rawValue.getter(), v5 == TrackerOrientation.rawValue.getter()) || (v6 = TrackerOrientation.rawValue.getter(), v6 == TrackerOrientation.rawValue.getter()))
  {
    *(v1 + OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_lastKnownPortraitOrLandscapeOrientation) = v2;
  }

  return *(v1 + OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_lastKnownPortraitOrLandscapeOrientation);
}

uint64_t sub_100109A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  sub_100095274(&unk_1002A8EC0, &qword_10023DBB8);
  v7[10] = swift_task_alloc();
  v8 = type metadata accessor for DKIntelligentTrackingCommand.VelocityCommand();
  v7[11] = v8;
  v7[12] = *(v8 - 8);
  v7[13] = swift_task_alloc();

  return (_swift_task_switch)(sub_100109B14, 0, 0);
}

uint64_t sub_100109B14()
{
  v1 = v0[6];
  v2 = OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_trackingTaskLock;
  v0[14] = OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_trackingTaskLock;
  v0[15] = *(v1 + v2);
  v5 = (&async function pointer to dispatch thunk of DKLockActor.lockIfAvailable() + async function pointer to dispatch thunk of DKLockActor.lockIfAvailable());

  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_100109BDC;

  return v5();
}

uint64_t sub_100109BDC(char a1)
{
  v3 = *v1;
  v4 = *v1;

  if (a1)
  {
    v11 = &async function pointer to dispatch thunk of TrackingStand.trackSecureMetadata(secureMetadata:camera:orientation:) + async function pointer to dispatch thunk of TrackingStand.trackSecureMetadata(secureMetadata:camera:orientation:);
    v5 = swift_task_alloc();
    v3[17] = v5;
    *v5 = v4;
    v5[1] = sub_100109D9C;
    v7 = v3[9];
    v6 = v3[10];
    v8 = v3[8];

    return (v11)(v6, v8, 0, v7);
  }

  else
  {

    v10 = v4[1];

    return v10();
  }
}

uint64_t sub_100109D9C()
{

  return (_swift_task_switch)(sub_100109E98, 0, 0);
}

uint64_t sub_100109E98()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100095C84(v3, &unk_1002A8EC0, &qword_10023DBB8);
  }

  else
  {
    v4 = v0[13];
    v5 = v0[7];
    (*(v2 + 32))(v4, v3, v1);
    sub_10010A1E0(v4, v5);
    (*(v0[12] + 8))(v0[13], v0[11]);
  }

  v0[18] = *(v0[6] + v0[14]);
  type metadata accessor for DKLockActor();
  sub_10010BE60(&qword_1002A8DA0, &type metadata accessor for DKLockActor, &protocol conformance descriptor for DKLockActor);

  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(sub_10010A164, v7, v6);
}

uint64_t sub_10010A164()
{
  dispatch thunk of DKLockActor.unlock()();

  v1 = *(v0 + 8);

  return v1();
}

void sub_10010A1E0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ActuatorLimit();
  v73 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for DKVector3();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v74 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  DKIntelligentTrackingCommand.VelocityCommand.velocity.getter();
  v57 = a2;
  v7 = dispatch thunk of DockCoreAccessory.systems.getter();
  v8 = v7;
  if (v7 >> 62)
  {
    goto LABEL_39;
  }

  v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9)
  {
LABEL_3:
    v10 = 0;
    v11 = v8 & 0xC000000000000001;
    v64 = v8 & 0xFFFFFFFFFFFFFF8;
    v63 = v8 + 32;
    v70 = v73 + 16;
    v71 = (v73 + 8);
    v66 = xmmword_10023DB20;
    v69 = v3;
    v61 = v8;
    v54 = v9;
    v53 = v8 & 0xC000000000000001;
    while (1)
    {
      while (1)
      {
        if (v11)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v10 >= *(v64 + 16))
          {
            goto LABEL_38;
          }

          v12 = *(v63 + 8 * v10);
        }

        v13 = v12;
        if (__OFADD__(v10++, 1))
        {
          goto LABEL_37;
        }

        System.type.getter();
        v15 = SystemType.rawValue.getter();
        if (v15 == SystemType.rawValue.getter())
        {
          type metadata accessor for ActuationController();
          v16 = swift_dynamicCastClass();
          if (v16)
          {
            break;
          }
        }

        if (v10 == v9)
        {
          goto LABEL_40;
        }
      }

      v17 = v16;
      v67 = v13;
      v65 = v17;
      v18 = v68;
      v19 = ActuationController.getActuatorLimits()();
      if (v18)
      {
        break;
      }

      v20 = v19;
      v62 = v10;
      v68 = 0;
      v21 = *(v19 + 16);
      if (v21)
      {
        type metadata accessor for Actuator();
        v22 = 0;
        v72 = v20 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
        do
        {
          if (v22 >= *(v20 + 16))
          {
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            v9 = _CocoaArrayWrapper.endIndex.getter();
            if (!v9)
            {
              goto LABEL_40;
            }

            goto LABEL_3;
          }

          (*(v73 + 16))(v5, v72 + *(v73 + 72) * v22, v3);
          DKVector3.x.getter();
          v24 = v23;
          v8 = ActuatorLimit.name.getter();
          v26 = v25;
          if (static Actuator.Pitch.getter() == v8 && v27 == v26)
          {

LABEL_21:

            DKVector3.y.getter();
            goto LABEL_22;
          }

          v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v28)
          {
            v3 = v69;
            goto LABEL_21;
          }

          if (static Actuator.Roll.getter() == v8 && v32 == v26)
          {

            v3 = v69;
          }

          else
          {
            v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v29 = v24;
            v3 = v69;
            if ((v8 & 1) == 0)
            {
              goto LABEL_22;
            }
          }

          DKVector3.z.getter();
LABEL_22:
          v30 = fabs(v29);
          ActuatorLimit.maxSpeed.getter();
          if (v31 < v30)
          {

            v48 = type metadata accessor for DockKitIDSMessagingError();
            sub_10010BE60(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError, &protocol conformance descriptor for DockKitIDSMessagingError);
            swift_allocError();
            (*(*(v48 - 8) + 104))(v49, enum case for DockKitIDSMessagingError.argumentNotNormalized(_:), v48);
            swift_willThrow();
            v50 = v67;

            (*v71)(v5, v3);
            (*(v59 + 8))(v74, v60);
            return;
          }

          ++v22;
          (*v71)(v5, v3);
        }

        while (v21 != v22);
      }

      v33 = v67;

      sub_100095274(&unk_1002A8ED0, &qword_10023DBC0);
      inited = swift_initStackObject();
      *(inited + 16) = v66;
      type metadata accessor for Actuator();
      *(inited + 32) = static Actuator.Yaw.getter();
      *(inited + 40) = v35;
      *(inited + 48) = static Actuator.Pitch.getter();
      *(inited + 56) = v36;
      *(inited + 64) = static Actuator.Roll.getter();
      *(inited + 72) = v37;
      sub_100095274(&qword_1002A89B8, &qword_10023D910);
      v38 = swift_allocObject();
      *(v38 + 16) = v66;
      DKVector3.x.getter();
      *(v38 + 32) = v39;
      DKVector3.y.getter();
      *(v38 + 40) = v40;
      DKVector3.z.getter();
      *(v38 + 48) = v41;
      v42 = dispatch thunk of DockCoreAccessory.info.getter();
      if (qword_1002A66E0 != -1)
      {
        swift_once();
      }

      LODWORD(v72) = dword_1002B1B80;
      v56 = qword_1002B1B88;
      v55 = unk_1002B1B90;
      v43 = v33;
      v44 = System.name.getter();
      v46 = v45;

      v47 = v58;
      sub_1001189D4(v42, v72, v56, v55, v44, v46, inited, v38, v47);

      swift_setDeallocating();
      swift_arrayDestroy();
      v3 = v69;
      v8 = v61;
      v9 = v54;
      v10 = v62;
      v11 = v53;
      if (v62 == v54)
      {
        goto LABEL_40;
      }
    }

    (*(v59 + 8))(v74, v60);

    v51 = v67;
  }

  else
  {
LABEL_40:

    (*(v59 + 8))(v74, v60);
  }
}

uint64_t sub_10010A988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  type metadata accessor for DKVector3();
  v5[8] = swift_task_alloc();
  v6 = type metadata accessor for DKIntelligentTrackingCommand.VelocityCommand();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();

  return (_swift_task_switch)(sub_10010AA74, 0, 0);
}

uint64_t sub_10010AA74()
{
  v1 = v0[6];
  v2 = OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_trackingTaskLock;
  v0[12] = OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_trackingTaskLock;
  v0[13] = *(v1 + v2);
  v5 = (&async function pointer to dispatch thunk of DKLockActor.lockIfAvailable() + async function pointer to dispatch thunk of DKLockActor.lockIfAvailable());

  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_10010AB3C;

  return v5();
}

uint64_t sub_10010AB3C(char a1)
{
  *(*v1 + 136) = a1;

  return (_swift_task_switch)(sub_10010AC5C, 0, 0);
}

uint64_t sub_10010AC5C()
{
  v1 = *(v0 + 88);
  if (*(v0 + 136) == 1)
  {
    v2 = *(v0 + 56);
    DKVector3.init(x:y:z:)();
    DKIntelligentTrackingCommand.VelocityCommand.init(velocity:)();
    sub_10010A1E0(v1, v2);
    v6 = (&async function pointer to dispatch thunk of TrackingStand.resetIntelligentTrackingSecure() + async function pointer to dispatch thunk of TrackingStand.resetIntelligentTrackingSecure());
    v5 = swift_task_alloc();
    *(v0 + 120) = v5;
    *v5 = v0;
    v5[1] = sub_10010AEC0;

    return v6();
  }

  else
  {

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_10010AEC0()
{

  return (_swift_task_switch)(sub_10010AFBC, 0, 0);
}

uint64_t sub_10010AFBC()
{
  v0[16] = *(v0[6] + v0[12]);
  type metadata accessor for DKLockActor();
  sub_10010BE60(&qword_1002A8DA0, &type metadata accessor for DKLockActor, &protocol conformance descriptor for DKLockActor);

  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(sub_10010B094, v2, v1);
}

uint64_t sub_10010B094()
{
  dispatch thunk of DKLockActor.unlock()();

  return (_swift_task_switch)(sub_10010B104, 0, 0);
}

uint64_t sub_10010B104()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

void sub_10010B188(char a1, uint64_t a2)
{
  v4 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - v5;
  v7 = type metadata accessor for Errors();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v26 - v12;
  sub_1000A090C(a2, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100095C84(v6, &unk_1002A6F30, &unk_10023C4D0);
    if ((a1 & 1) == 0)
    {
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Unable to set actuator velocities!", v16, 2u);
      }
    }
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    (*(v8 + 16))(v11, v13, v7);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = v26;
      *v19 = 136315138;
      sub_10010BE60(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
      v20 = Error.localizedDescription.getter();
      v22 = v21;
      v23 = *(v8 + 8);
      v23(v11, v7);
      v24 = sub_1000952D4(v20, v22, &v27);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v17, v18, "Error setting actuation velocity: %s", v19, 0xCu);
      sub_100095808(v26);

      v23(v13, v7);
    }

    else
    {

      v25 = *(v8 + 8);
      v25(v11, v7);
      v25(v13, v7);
    }
  }
}

uint64_t type metadata accessor for SecureTrackingController(uint64_t a1)
{
  result = qword_1002A8E28;
  if (!qword_1002A8E28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10010B68C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    sub_10010B794(319);
    if (v3 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10010B794(uint64_t a1)
{
  if (!qword_1002A8E38)
  {
    sub_10009589C(&qword_1002A8E40, &qword_10023DB90);
    v1 = type metadata accessor for DKThreadSafe();
    if (!v2)
    {
      atomic_store(v1, &qword_1002A8E38);
    }
  }
}

uint64_t sub_10010B89C()
{
  if (*(v0 + 20) == 1)
  {
    LODWORD(out_token) = -1;
    v1 = String.utf8CString.getter();
    v2 = notify_register_check((v1 + 32), &out_token);

    if (v2)
    {
      if (*(v0 + 20))
      {
        return *(v0 + 40);
      }
    }

    else
    {
      *(v0 + 16) = out_token;
      *(v0 + 20) = 0;
    }
  }

  v4 = *(v0 + 16);
  v6 = (*(v0 + 48))(v0 + 40);
  notify_get_state(v4, &v6);
  (*(v0 + 64))(&out_token, v6);
  if (v8)
  {
    p_out_token = (v0 + 40);
  }

  else
  {
    p_out_token = &out_token;
  }

  return *p_out_token;
}

void sub_10010B9A0(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.now.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v9 = v8;
  (*(v5 + 8))(v7, v4);
  v20[4] = v9;
  v21 = 0;
  swift_beginAccess();
  sub_100095274(&unk_1002A8EB0, &unk_10023DB98);
  DKThreadSafe.wrappedValue.setter();
  swift_endAccess();
  sub_1001096BC(a1);
  if (a1 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v10)
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  v12 = OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_trackingState;
  v13 = TrackerStateEvent.rawValue.getter();
  if (v13 != TrackerStateEvent.rawValue.getter())
  {
    *(v2 + v12) = v11;
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v14 = qword_1002B1CF0;
    v15 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v16 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v16 + 4);

    v17 = *(v14 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
    v18 = *(v14 + v15);
    v19 = v17;

    os_unfair_lock_unlock(v18 + 4);

    sub_10018A9DC(v11, v17);
  }
}

uint64_t sub_10010BBDC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10010BC2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000A139C;

  return sub_100109A18(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_10010BD00()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10010BD48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10009862C;

  return sub_10010A988(a1, v4, v5, v7, v6);
}

uint64_t sub_10010BE08()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10010BE48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10010BE60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_10010BEA8()
{
  v1 = *(v0 + 16);
  result = [*(v1 + OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_captureSession) startRunning];
  *(v1 + OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_trackingState) = 1;
  return result;
}

uint64_t sub_10010BF08(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000676ELL;
  v3 = 0x6972696150746F6ELL;
  v4 = a1;
  v5 = 0xE700000000000000;
  v6 = 0x676E6972696170;
  if (a1 != 5)
  {
    v6 = 0x72756769666E6F63;
    v5 = 0xEB00000000676E69;
  }

  v7 = 0x46676E6974696177;
  v8 = 0xEE0068747541726FLL;
  if (a1 != 3)
  {
    v7 = 0x7A69726F68747561;
    v8 = 0xEB00000000676E69;
  }

  if (a1 <= 4u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0x6E69686372616573;
  v10 = 0xE900000000000067;
  if (a1 != 1)
  {
    v9 = 0x69746164696C6176;
    v10 = 0xEA0000000000676ELL;
  }

  if (!a1)
  {
    v9 = 0x6972696150746F6ELL;
    v10 = 0xEA0000000000676ELL;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xE700000000000000;
        v3 = 0x676E6972696170;
        goto LABEL_30;
      }

      v3 = 0x72756769666E6F63;
    }

    else
    {
      if (a2 == 3)
      {
        v3 = 0x46676E6974696177;
        v2 = 0xEE0068747541726FLL;
        goto LABEL_30;
      }

      v3 = 0x7A69726F68747561;
    }

    v2 = 0xEB00000000676E69;
    goto LABEL_30;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x6E69686372616573;
      v2 = 0xE900000000000067;
    }

    else
    {
      v3 = 0x69746164696C6176;
    }
  }

LABEL_30:
  if (v11 == v3 && v12 == v2)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

Swift::Int sub_10010C130(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10010C274()
{
  v1 = OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload + 32);
  v4 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload + 40);
  sub_1000A0D2C(*(v0 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload + 8), *(v0 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload + 16));
  sub_1000A0D2C(v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AccessoryPairingToken(uint64_t a1)
{
  result = qword_1002A8F40;
  if (!qword_1002A8F40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10010C390(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

uint64_t sub_10010C45C(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t sub_10010C594@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10010CE78(*a1);
  *a2 = result;
  return result;
}

void sub_10010C5C4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x6972696150746F6ELL;
  v4 = 0xE700000000000000;
  v5 = 0x676E6972696170;
  if (v2 != 5)
  {
    v5 = 0x72756769666E6F63;
    v4 = 0xEB00000000676E69;
  }

  v6 = 0xEE0068747541726FLL;
  v7 = 0x46676E6974696177;
  if (v2 != 3)
  {
    v7 = 0x7A69726F68747561;
    v6 = 0xEB00000000676E69;
  }

  if (*v1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE900000000000067;
  v9 = 0x6E69686372616573;
  if (v2 != 1)
  {
    v9 = 0x69746164696C6176;
    v8 = 0xEA0000000000676ELL;
  }

  if (*v1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0xEA0000000000676ELL;
  }

  if (*v1 <= 2u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (*v1 <= 2u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  *a1 = v10;
  a1[1] = v11;
}

uint64_t sub_10010C6C4(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  sub_100093D84(v2, qword_1002A8F00);
  sub_100093DE8(v2, qword_1002A8F00);
  return Logger.init(subsystem:category:)();
}

id sub_10010C764(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for DKProxManager(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10010C888(void *a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1002A66D0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100093DE8(v5, qword_1002A8F00);
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "SBS did deactivate service: %{public}@", v9, 0xCu);
    sub_100095C84(v10, &unk_1002A6F60, &unk_10023C4E0);
  }

  v12 = OBJC_IVAR____TtC14dockaccessoryd13DKProxManager_delegate;
  swift_beginAccess();
  sub_10010CE08(v3 + v12, v19);
  if (v20)
  {
    sub_1000A097C(v19, v16);
    sub_100095C84(v19, &unk_1002A9100, &qword_10023D030);
    v13 = v17;
    v14 = v18;
    sub_1000A09E0(v16, v17);
    (*(v14 + 16))(v13, v14);
    sub_100095808(v16);
  }

  else
  {
    sub_100095C84(v19, &unk_1002A9100, &qword_10023D030);
  }

  sub_1001059EC();

  *(v3 + OBJC_IVAR____TtC14dockaccessoryd13DKProxManager_proxCard) = 0;
}

uint64_t getEnumTagSinglePayload for ProxPairingState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ProxPairingState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10010CCE0()
{
  result = qword_1002A90F8;
  if (!qword_1002A90F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A90F8);
  }

  return result;
}

uint64_t sub_10010CD34()
{
  v1 = OBJC_IVAR____TtC14dockaccessoryd13DKProxManager_delegate;
  swift_beginAccess();
  sub_10010CE08(v0 + v1, v8);
  if (!v9)
  {
    return sub_100095C84(v8, &unk_1002A9100, &qword_10023D030);
  }

  sub_1000A097C(v8, v5);
  sub_100095C84(v8, &unk_1002A9100, &qword_10023D030);
  v2 = v6;
  v3 = v7;
  sub_1000A09E0(v5, v6);
  (*(v3 + 8))(v2, v3);
  return sub_100095808(v5);
}

uint64_t sub_10010CE08(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095274(&unk_1002A9100, &qword_10023D030);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10010CE78(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100274D88, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

void sub_10010CEC4(void *a1, uint64_t a2)
{
  if (qword_1002A66D0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100093DE8(v3, qword_1002A8F00);
  v4 = a1;
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    *(v6 + 4) = v4;
    *v7 = v4;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, oslog, v5, "SBS did activate service: %{public}@", v6, 0xCu);
    sub_100095C84(v7, &unk_1002A6F60, &unk_10023C4E0);
  }
}

void sub_10010D010(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (qword_1002A66D0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100093DE8(v3, qword_1002A8F00);
    v4 = a1;
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v20 = v8;
      *v6 = 138543618;
      *(v6 + 4) = v4;
      *v7 = v4;
      *(v6 + 12) = 2082;
      swift_getErrorValue();
      v9 = v4;
      v10 = Error.localizedDescription.getter();
      v12 = sub_1000952D4(v10, v11, &v20);

      *(v6 + 14) = v12;
      _os_log_impl(&_mh_execute_header, oslog, v5, "SBS invalidated service: %{public}@ with error: %{public}s", v6, 0x16u);
      sub_100095C84(v7, &unk_1002A6F60, &unk_10023C4E0);

      sub_100095808(v8);

      return;
    }
  }

  else
  {
    if (qword_1002A66D0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100093DE8(v13, qword_1002A8F00);
    v14 = a1;
    oslog = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138543362;
      *(v16 + 4) = v14;
      *v17 = v14;
      v18 = v14;
      _os_log_impl(&_mh_execute_header, oslog, v15, "SBS invalidated service: %{public}@", v16, 0xCu);
      sub_100095C84(v17, &unk_1002A6F60, &unk_10023C4E0);
    }
  }
}

void sub_10010D324(uint64_t a1, NSString a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    a2 = String._bridgeToObjectiveC()();
  }

  v5 = a2;
  (*(a4 + 16))(a4);
}

uint64_t sub_10010D388(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  sub_100093D84(v2, qword_1002A9110);
  sub_100093DE8(v2, qword_1002A9110);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10010D400()
{
  result = getpid();
  dword_1002B1B80 = result;
  qword_1002B1B88 = 0xD000000000000018;
  unk_1002B1B90 = 0x800000010022E6B0;
  return result;
}

uint64_t sub_10010D498@<X0>(void *a2@<X8>)
{
  v3 = type metadata accessor for Logger();
  v46 = *(v3 - 8);
  v47 = v3;
  v4 = __chkstk_darwin(v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v42 - v7;
  v9 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Errors();
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v17(v14, 1, 1, v15);
  v18 = [objc_opt_self() currentConnection];
  if (!v18)
  {
    sub_100095C84(v14, &unk_1002A6F30, &unk_10023C4D0);
    *v12 = 0xD000000000000017;
    *(v12 + 1) = 0x800000010022FA50;
    (*(v16 + 104))(v12, enum case for Errors.XPCNil(_:), v15);
    v17(v12, 0, 1, v15);
    sub_1000A089C(v12, v14);
    v27 = type metadata accessor for DKXPCClientApplication(0);
    result = sub_1000A089C(v14, a2 + *(v27 + 24));
    a2[2] = 0;
    *a2 = 0;
LABEL_13:
    a2[1] = 0;
    return result;
  }

  v20 = v18;
  v45 = v17;
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v21 = sub_10019B91C(v20, v19);
  if (!v22)
  {
    if (qword_1002A66D8 != -1)
    {
      swift_once();
    }

    v28 = v47;
    v29 = sub_100093DE8(v47, qword_1002A9110);
    (*(v46 + 16))(v6, v29, v28);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v42 = a2;
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Failed fetching App ID from connection", v32, 2u);
      a2 = v42;
    }

    (*(v46 + 8))(v6, v47);
    sub_100095C84(v14, &unk_1002A6F30, &unk_10023C4D0);
    *v12 = 0xD000000000000026;
    *(v12 + 1) = 0x800000010022FA70;
    (*(v16 + 104))(v12, enum case for Errors.NotFound(_:), v15);
    v45(v12, 0, 1, v15);
    sub_1000A089C(v12, v14);
    v33 = type metadata accessor for DKXPCClientApplication(0);
    result = sub_1000A089C(v14, a2 + *(v33 + 24));
    a2[2] = 0;
    *a2 = v20;
    goto LABEL_13;
  }

  v43 = v21;
  v44 = v22;
  v23 = sub_10011C77C(v20);
  v24 = v45;
  if (v23)
  {
    sub_100095C84(v14, &unk_1002A6F30, &unk_10023C4D0);
    v25 = type metadata accessor for DKXPCClientApplication(0);
    result = v24(a2 + *(v25 + 24), 1, 1, v15);
  }

  else
  {
    if (qword_1002A66D8 != -1)
    {
      swift_once();
    }

    v34 = v47;
    v35 = sub_100093DE8(v47, qword_1002A9110);
    (*(v46 + 16))(v8, v35, v34);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v42 = a2;
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "camera TCC missing", v38, 2u);
      a2 = v42;
    }

    (*(v46 + 8))(v8, v47);
    sub_100095C84(v14, &unk_1002A6F30, &unk_10023C4D0);
    *v12 = 0xD000000000000012;
    *(v12 + 1) = 0x8000000100231B90;
    (*(v16 + 104))(v12, enum case for Errors.CameraTCCMissing(_:), v15);
    v45(v12, 0, 1, v15);
    sub_1000A089C(v12, v14);
    v39 = type metadata accessor for DKXPCClientApplication(0);
    result = sub_1000A089C(v14, a2 + *(v39 + 24));
  }

  v41 = v43;
  v40 = v44;
  *a2 = v20;
  a2[1] = v41;
  a2[2] = v40;
  return result;
}

void sub_10010DB24(void *a1, int a2, void *aBlock, void *a4)
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  sub_10011CCC0(v7, v6, a4);
  _Block_release(v6);
  _Block_release(v6);
}

void sub_10010DBB8(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
  _Block_release(v6);
}

void sub_10010DC4C(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v99 = a4;
  v100 = a5;
  v101 = a3;
  v7 = a2;
  v98 = a1;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v90 - v17;
  if ((v7 & 1) == 0)
  {
    if (qword_1002A66D8 != -1)
    {
      swift_once();
    }

    v36 = sub_100093DE8(v8, qword_1002A9110);
    (*(v9 + 16))(v11, v36, v8);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Animator callback, but not connected. Ignoring", v39, 2u);
    }

    (*(v9 + 8))(v11, v8);
    return;
  }

  if (qword_1002A6780 != -1)
  {
LABEL_67:
    swift_once();
  }

  v19 = qword_1002B1CF0;
  v20 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v21 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v21 + 4);

  v22 = *(v19 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
  v23 = *(v19 + v20);
  v24 = v22;

  os_unfair_lock_unlock(v23 + 4);

  if (!v22)
  {
    return;
  }

  v97 = v24;
  v93 = a6;
  v92 = v19;
  v25 = *(v19 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
  v94 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
  v26 = *(v25 + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem);
  v95 = v25;
  v27 = v25;
  v28 = v26;
  OS_dispatch_semaphore.wait()();

  v29 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
  swift_beginAccess();
  *&v96 = v27;
  v30 = *(v27 + v29);
  v31 = *(v30 + 16);

  if (!v31)
  {
LABEL_9:

    v35 = *&v94[v95];
    OS_dispatch_semaphore.signal()();

    v105 = 0;
    v103 = 0u;
    v104 = 0u;
    goto LABEL_17;
  }

  v32 = 0;
  a6 = v30 + 32;
  ++v13;
  while (1)
  {
    if (v32 >= *(v30 + 16))
    {
      __break(1u);
      goto LABEL_67;
    }

    sub_1000A097C(a6, v102);
    v33 = *(*sub_1000A09E0(v102, v102[3]) + 24);
    DockCoreInfo.identifier.getter();

    DockCoreInfo.identifier.getter();
    LOBYTE(v33) = static UUID.== infix(_:_:)();
    v34 = *v13;
    (*v13)(v16, v12);
    v34(v18, v12);
    if (v33)
    {
      break;
    }

    ++v32;
    sub_100095808(v102);
    a6 += 40;
    if (v31 == v32)
    {
      goto LABEL_9;
    }
  }

  v40 = *&v94[v95];
  OS_dispatch_semaphore.signal()();

  sub_1000A097C(v102, &v103);
  sub_100095808(v102);
LABEL_17:

  v41 = v97;
  if (!*(&v104 + 1))
  {

    sub_100095C84(&v103, &unk_1002A6F40, &unk_10023BE90);
    return;
  }

  sub_100095274(&unk_1002A7A90, &unk_10023C960);
  type metadata accessor for DaemonAccessory(0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

  v42 = v102[0];
  sub_100095B94(0, &qword_1002A7270, NSObject_ptr);
  v43 = *(v42 + 24);
  v44 = dispatch thunk of DockCoreAccessory.info.getter();
  v45 = static NSObject.== infix(_:_:)();

  if ((v45 & 1) == 0 || (v46 = *(v42 + 16)) == 0)
  {

    return;
  }

  v47 = *&v46[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral];
  if (!v47)
  {

    return;
  }

  v48 = v46;
  if ([v47 state] != 2)
  {

    return;
  }

  v49 = objc_opt_self();
  sub_100095274(&unk_1002A73A0, &qword_10023C670);
  v50 = swift_allocObject();
  v96 = xmmword_10023C170;
  *(v50 + 16) = xmmword_10023C170;
  *(v50 + 56) = &type metadata for UInt32;
  *(v50 + 64) = &protocol witness table for UInt32;
  *(v50 + 32) = 512;
  String.init(format:_:)();
  v51 = String._bridgeToObjectiveC()();
  v101 = v48;
  v52 = v51;

  v53 = [v49 UUIDWithString:v52];

  v54 = v101;
  v55 = sub_10013EF7C(v53);

  if (!v55)
  {

    return;
  }

  v56 = swift_allocObject();
  *(v56 + 16) = v96;
  *(v56 + 56) = &type metadata for UInt32;
  *(v56 + 64) = &protocol witness table for UInt32;
  *(v56 + 32) = 260;
  String.init(format:_:)();
  v57 = String._bridgeToObjectiveC()();

  v58 = [v49 UUIDWithString:v57];

  v59 = sub_10013F1B8(v58, v55);
  if (!v59)
  {

    return;
  }

  v91 = v59;
  v94 = v55;
  v60 = v98;
  v61 = v98 + 64;
  v62 = 1 << *(v98 + 32);
  v63 = -1;
  if (v62 < 64)
  {
    v63 = ~(-1 << v62);
  }

  v64 = v63 & *(v98 + 64);
  v65 = (v62 + 63) >> 6;

  v66 = 0;
  v95 = _swiftEmptyArrayStorage;
  *&v96 = _swiftEmptyArrayStorage;
  if (v64)
  {
    while (1)
    {
LABEL_37:
      while (1)
      {
        v68 = __clz(__rbit64(v64));
        v64 &= v64 - 1;
        v69 = v68 | (v66 << 6);
        v70 = (v60[6] + 16 * v69);
        v72 = *v70;
        v71 = v70[1];
        v73 = *(v60[7] + 8 * v69);

        v74 = dispatch thunk of DockCoreAccessory.getActuatorIndex(name:system:)();
        if ((v74 & 0x8000000000000000) == 0 && v74 < v60[2])
        {
          break;
        }

        if (!v64)
        {
          goto LABEL_33;
        }
      }

      v75 = v74;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        *&v96 = sub_100102FEC(0, *(v96 + 16) + 1, 1, v96);
      }

      v77 = *(v96 + 16);
      v76 = *(v96 + 24);
      if (v77 >= v76 >> 1)
      {
        *&v96 = sub_100102FEC((v76 > 1), v77 + 1, 1, v96);
      }

      v78 = v96;
      *(v96 + 16) = v77 + 1;
      *(v78 + 8 * v77 + 32) = v75;
      type metadata accessor for Actuator();
      if (v72 == static Actuator.Pitch.getter() && v71 == v79)
      {
        break;
      }

      v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v60 = v98;
      if (v81)
      {
        goto LABEL_54;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v95 = sub_100102EE8(0, v95[2] + 1, 1, v95);
      }

      v83 = v95[2];
      v82 = v95[3];
      v84 = (v83 + 1);
      if (v83 >= v82 >> 1)
      {
        v95 = sub_100102EE8((v82 > 1), v83 + 1, 1, v95);
      }

      v60 = v98;
LABEL_59:
      v86 = v95;
      v95[2] = v84;
      *&v86[v83 + 4] = v73;
      if (!v64)
      {
        goto LABEL_33;
      }
    }

    v60 = v98;
LABEL_54:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v95 = sub_100102EE8(0, v95[2] + 1, 1, v95);
    }

    v83 = v95[2];
    v85 = v95[3];
    v84 = (v83 + 1);
    if (v83 >= v85 >> 1)
    {
      v95 = sub_100102EE8((v85 > 1), v83 + 1, 1, v95);
    }

    v73 = -v73;
    goto LABEL_59;
  }

LABEL_33:
  while (1)
  {
    v67 = v66 + 1;
    if (__OFADD__(v66, 1))
    {
      break;
    }

    if (v67 >= v65)
    {

      sub_100198B58(v87, v88);
      v89 = v91;
      sub_1001A38B4(v96, v95, 256, v91);

      sub_1001A68A4(3.0);

      return;
    }

    v64 = *(v61 + 8 * v67);
    ++v66;
    if (v64)
    {
      v66 = v67;
      goto LABEL_37;
    }
  }

  __break(1u);
}

uint64_t sub_10010E788(void *a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *aBlock, void (*a8)(id, uint64_t, uint64_t, uint64_t, uint64_t, id, void *))
{
  v14 = _Block_copy(aBlock);
  if (a4)
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a4 = v16;
    if (!a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v15 = 0;
  if (a5)
  {
LABEL_3:
    a5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:
  if (a6)
  {
    a6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v17 = a3;
  v18 = a1;
  _Block_copy(v14);
  a8(v17, v15, a4, a5, a6, v18, v14);
  _Block_release(v14);
  _Block_release(v14);
}

uint64_t sub_10010E8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v16;
  *(v8 + 80) = v17;
  *(v8 + 56) = v13;
  *(v8 + 64) = v15;
  *(v8 + 177) = v14;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  v9 = type metadata accessor for Logger();
  *(v8 + 88) = v9;
  *(v8 + 96) = *(v9 - 8);
  *(v8 + 104) = swift_task_alloc();
  sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  *(v8 + 112) = swift_task_alloc();
  v10 = type metadata accessor for Errors();
  *(v8 + 120) = v10;
  *(v8 + 128) = *(v10 - 8);
  *(v8 + 136) = swift_task_alloc();

  return (_swift_task_switch)(sub_10010EA24, 0, 0);
}

uint64_t sub_10010EA24()
{
  v1 = TrajectoryCommand.encode()();
  *(v0 + 144) = v2;
  if (v2 >> 60 == 15)
  {
    v4 = *(v0 + 128);
    v3 = *(v0 + 136);
    v5 = *(v0 + 120);
    v6 = *(v0 + 32);
    *v3 = 0xD000000000000019;
    v3[1] = 0x8000000100231FB0;
    (*(v4 + 104))(v3, enum case for Errors.TrajectoryError(_:), v5);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    v23 = *(v4 + 16);
    v23(v7, v3, v5);
    v8 = _convertErrorToNSError(_:)();
    v6(0, v8);

    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 128);
    v9 = *(v0 + 136);
    v12 = *(v0 + 112);
    v11 = *(v0 + 120);
    v13 = *(v0 + 48);
    v14 = *(v0 + 56);
    v15 = *(v0 + 177);
    v23(v12, v9, v11);
    (*(v10 + 56))(v12, 0, 1, v11);
    sub_10018C604(v13, v14, v15, v12);
    sub_100095C84(v12, &unk_1002A6F30, &unk_10023C4D0);
    (*(v10 + 8))(v9, v11);

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    v18 = v2;
    v19 = *(v0 + 16);
    *(v0 + 152) = v1;
    v20 = v1;
    v21 = swift_task_alloc();
    *(v0 + 160) = v21;
    v21[2] = v19;
    v21[3] = v20;
    v21[4] = v18;
    v22 = swift_task_alloc();
    *(v0 + 168) = v22;
    *v22 = v0;
    v22[1] = sub_10010ED6C;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 176, 0, 0, 0xD000000000000012, 0x8000000100231FD0, sub_100137B90, v21, &type metadata for Bool);
  }
}

uint64_t sub_10010ED6C()
{

  return (_swift_task_switch)(sub_10010EE84, 0, 0);
}

uint64_t sub_10010EE84()
{
  sub_1000A452C(*(v0 + 152), *(v0 + 144));
  if (*(v0 + 176))
  {
    if (qword_1002A66D8 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 96);
    v1 = *(v0 + 104);
    v3 = *(v0 + 88);
    v4 = sub_100093DE8(v3, qword_1002A9110);
    (*(v2 + 16))(v1, v4, v3);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Registering for trajectory progress callback", v7, 2u);
    }

    v9 = *(v0 + 96);
    v8 = *(v0 + 104);
    v10 = *(v0 + 80);
    v11 = *(v0 + 88);
    v13 = *(v0 + 64);
    v12 = *(v0 + 72);
    v14 = *(v0 + 16);

    (*(v9 + 8))(v8, v11);
    v15 = swift_allocObject();
    v15[2] = v13;
    v15[3] = v12;
    v15[4] = v10;
    v16 = *(v14 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_callbackLock);
    v17 = swift_task_alloc();
    v17[2] = v14;
    v17[3] = sub_100137BDC;
    v17[4] = v15;
    v18 = swift_task_alloc();
    *(v18 + 16) = sub_100137BE8;
    *(v18 + 24) = v17;
    v19 = v13;

    os_unfair_lock_lock(v16 + 4);
    sub_100137D60(v20);
    os_unfair_lock_unlock(v16 + 4);
    v34 = *(v0 + 32);

    v34(1, 0);
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v35 = *(v0 + 112);
    v36 = *(v0 + 48);
    v37 = *(v0 + 56);
    v38 = *(v0 + 177);
    (*(*(v0 + 128) + 56))(v35, 1, 1, *(v0 + 120));
    sub_10018C604(v36, v37, v38, v35);
    sub_100095C84(v35, &unk_1002A6F30, &unk_10023C4D0);
  }

  else
  {
    v22 = *(v0 + 128);
    v21 = *(v0 + 136);
    v23 = *(v0 + 120);
    v24 = *(v0 + 32);
    *v21 = 0xD000000000000019;
    v21[1] = 0x8000000100231FB0;
    (*(v22 + 104))(v21, enum case for Errors.TrajectoryError(_:), v23);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    v41 = *(v22 + 16);
    v41(v25, v21, v23);
    v26 = _convertErrorToNSError(_:)();
    v24(0, v26);

    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v28 = *(v0 + 128);
    v27 = *(v0 + 136);
    v30 = *(v0 + 112);
    v29 = *(v0 + 120);
    v31 = *(v0 + 48);
    v32 = *(v0 + 56);
    v33 = *(v0 + 177);
    v41(v30, v27, v29);
    (*(v28 + 56))(v30, 0, 1, v29);
    sub_10018C604(v31, v32, v33, v30);
    sub_100095C84(v30, &unk_1002A6F30, &unk_10023C4D0);
    (*(v28 + 8))(v27, v29);
  }

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_10010F374(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v28 = a2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002A66D8 != -1)
  {
LABEL_18:
    swift_once();
  }

  v9 = sub_100093DE8(v5, qword_1002A9110);
  (*(v6 + 2))(v8, v9, v5);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Received trajectory progress callback", v12, 2u);
  }

  (*(v6 + 1))(v8, v5);
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v13 = qword_1002B1CF0;
  v14 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v15 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v15 + 4);

  v16 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyTrajectoryClients;
  swift_beginAccess();
  v8 = *(v13 + v16);
  v6 = v8 + 64;
  v17 = 1 << v8[32];
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v8 + 8);
  v20 = (v17 + 63) >> 6;

  v21 = 0;
  if (v19)
  {
    while (1)
    {
      v22 = v21;
LABEL_14:
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v24 = v23 | (v22 << 6);
      v5 = *(*(v8 + 6) + 4 * v24);
      v25 = *(*(v8 + 7) + 8 * v24);
      sub_10010F67C(v5, v25, a1, v28, v29, v30);

      if (!v19)
      {
        goto LABEL_10;
      }
    }
  }

  while (1)
  {
LABEL_10:
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
      goto LABEL_18;
    }

    if (v22 >= v20)
    {
      break;
    }

    v19 = *&v6[8 * v22];
    ++v21;
    if (v19)
    {
      v21 = v22;
      goto LABEL_14;
    }
  }

  v26 = *(v13 + v14);

  os_unfair_lock_unlock(v26 + 4);
}

uint64_t sub_10010F67C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v59 = a5;
  v60 = a6;
  v61 = a4;
  v63 = a2;
  v58 = sub_100095274(&unk_1002A9330, &qword_10023DEE0);
  v8 = __chkstk_darwin(v58);
  v57 = &v53[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v8);
  v12 = &v53[-v11];
  __chkstk_darwin(v10);
  v14 = &v53[-v13];
  v15 = type metadata accessor for Logger();
  v62 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v18 = &v53[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v20 = &v53[-v19];
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v21 = qword_1002B1CF0;
  v22 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__outstandingTrajectoryNotificationCount;
  swift_beginAccess();
  v23 = *(v21 + v22);
  if (*(v23 + 16) && (v24 = sub_10016D548(a1), (v25 & 1) != 0) && (v26 = *(*(v23 + 56) + 8 * v24), v26 > 0))
  {
    if (qword_1002A66D8 != -1)
    {
      swift_once();
    }

    v27 = sub_100093DE8(v15, qword_1002A9110);
    (*(v62 + 16))(v20, v27, v15);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 67109376;
      *(v30 + 4) = a1;
      *(v30 + 8) = 2048;
      *(v30 + 10) = v26;
      _os_log_impl(&_mh_execute_header, v28, v29, "Client %d has %ld pending traj feedback messages, dropping", v30, 0x12u);
    }

    return (*(v62 + 8))(v20, v15);
  }

  else
  {
    v69 = sub_100137CE8;
    v70 = 0;
    aBlock = _NSConcreteStackBlock;
    v66 = 1107296256;
    v67 = sub_10010FDF4;
    v68 = &unk_100278438;
    v32 = _Block_copy(&aBlock);
    v33 = [v63 remoteObjectProxyWithErrorHandler:v32];
    _Block_release(v32);
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100095274(&qword_1002A9208, &qword_10023DDB8);
    result = swift_dynamicCast();
    if (result)
    {
      v56 = v64;
      v34 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__txnLock;
      v35 = *(v21 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__txnLock);

      os_unfair_lock_lock(v35 + 4);

      if (*(v21 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_txn))
      {

        sub_100105E6C();
      }

      v36 = *(v21 + v34);

      os_unfair_lock_unlock(v36 + 4);

      v55 = a3;
      TrajectoryCommand.Progress.init(nsdata:)();
      if (qword_1002A66D8 != -1)
      {
        swift_once();
      }

      v37 = sub_100093DE8(v15, qword_1002A9110);
      v38 = v62;
      (*(v62 + 16))(v18, v37, v15);
      sub_1000B5150(v14, v12, &unk_1002A9330, &qword_10023DEE0);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v54 = a1;
        v43 = v42;
        aBlock = v42;
        *v41 = 136315138;
        sub_1000B5150(v12, v57, &unk_1002A9330, &qword_10023DEE0);
        v44 = String.init<A>(describing:)();
        v57 = v18;
        v58 = v15;
        v45 = v44;
        v47 = v46;
        sub_100095C84(v12, &unk_1002A9330, &qword_10023DEE0);
        v48 = sub_1000952D4(v45, v47, &aBlock);

        *(v41 + 4) = v48;
        _os_log_impl(&_mh_execute_header, v39, v40, "Sending trajectory progress to client: %s", v41, 0xCu);
        sub_100095808(v43);
        a1 = v54;

        (*(v62 + 8))(v57, v58);
      }

      else
      {

        sub_100095C84(v12, &unk_1002A9330, &qword_10023DEE0);
        (*(v38 + 8))(v18, v15);
      }

      sub_10019BC70(a1, 1);
      v49 = v56;
      swift_unknownObjectRetain();
      v50 = String._bridgeToObjectiveC()();
      [v49 trajectoryProgressFeedbackWithInfo:v61 system:v50 progress:v55];
      swift_unknownObjectRelease();

      v51 = swift_allocObject();
      *(v51 + 16) = a1;
      v69 = sub_100137C08;
      v70 = v51;
      aBlock = _NSConcreteStackBlock;
      v66 = 1107296256;
      v67 = sub_100147FC8;
      v68 = &unk_100278488;
      v52 = _Block_copy(&aBlock);

      [v63 scheduleSendBarrierBlock:v52];
      _Block_release(v52);
      swift_unknownObjectRelease();
      return sub_100095C84(v14, &unk_1002A9330, &qword_10023DEE0);
    }
  }

  return result;
}

void sub_10010FDF4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_10010FF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for Logger();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  v7[9] = swift_task_alloc();
  v9 = swift_task_alloc();
  v7[10] = v9;
  *v9 = v7;
  v9[1] = sub_100110034;

  return sub_1000F77BC(v9, v10);
}

uint64_t sub_100110034()
{

  return (_swift_task_switch)(sub_100110130, 0, 0);
}

uint64_t sub_100110130(uint64_t a1, uint64_t a2)
{
  v3 = *(v2[2] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_diagnosticsManager);
  v2[11] = v3;
  if (v3)
  {
    type metadata accessor for AccessoryDiagnosticsOptions(0, a2);
    swift_allocObject();

    v5 = sub_100106520(v4);
    v2[12] = v5;
    v6 = swift_task_alloc();
    v2[13] = v6;
    *v6 = v2;
    v6[1] = sub_10011037C;

    return sub_1000C7C54(v5, v7);
  }

  else
  {
    if (qword_1002A66D8 != -1)
    {
      swift_once();
    }

    v9 = v2[9];
    v10 = v2[6];
    v11 = v2[7];
    v12 = sub_100093DE8(v10, qword_1002A9110);
    (*(v11 + 16))(v9, v12, v10);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Diagnostics manager is nil", v15, 2u);
    }

    v16 = v2[9];
    v17 = v2[6];
    v18 = v2[7];
    v19 = v2[3];

    (*(v18 + 8))(v16, v17);
    v19(0, 0, 0);

    v20 = v2[1];

    return v20();
  }
}

uint64_t sub_10011037C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 112) = v2;

  if (v2)
  {
    v7 = sub_100110554;
  }

  else
  {
    *(v6 + 120) = a2;
    *(v6 + 128) = a1;
    v7 = sub_1001104B0;
  }

  return (_swift_task_switch)(v7, 0, 0);
}

uint64_t sub_1001104B0()
{
  (*(v0 + 24))(*(v0 + 128), *(v0 + 120), 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100110554()
{
  if (qword_1002A66D8 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = sub_100093DE8(v3, qword_1002A9110);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Diagnostics transfer failed: %@", v7, 0xCu);
    sub_100095C84(v8, &unk_1002A6F60, &unk_10023C4E0);
  }

  v11 = v0[7];
  v10 = v0[8];
  v12 = v0[6];
  v13 = v0[3];

  (*(v11 + 8))(v10, v12);
  v14 = _convertErrorToNSError(_:)();
  v13(0, 0, v14);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1001109A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t), uint64_t a6, char *a7, char *a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v128 = a8;
  v129 = a7;
  v132 = a6;
  v125 = a2;
  v17 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  __chkstk_darwin(v17 - 8);
  v126 = v121 - v18;
  v19 = type metadata accessor for UUID();
  v127 = *(v19 - 8);
  v20 = __chkstk_darwin(v19);
  v22 = v121 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = v121 - v23;
  v130 = type metadata accessor for Logger();
  v131 = *(v130 - 8);
  v25 = __chkstk_darwin(v130);
  v124 = v121 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v29 = v121 - v28;
  result = __chkstk_darwin(v27);
  v32 = v121 - v31;
  if (*(a3 + 16))
  {
    result = sub_10016D548(a1);
    if (v33)
    {
      v34 = *(*(a3 + 56) + 8 * result);
      if ((a4 & 0x100000000) != 0 || a4 == a1)
      {
        v123 = a1;
        v35 = qword_1002A6780;

        if (v35 != -1)
        {
          swift_once();
        }

        v36 = qword_1002B1CF0;
        v37 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__outstandingActuationNotificationCount;
        swift_beginAccess();
        v38 = *(v36 + v37);
        if (!*(v38 + 16) || (v39 = sub_10016D548(v123), (v40 & 1) == 0) || *(*(v38 + 56) + 8 * v39) < 1)
        {
          *(a5 + OBJC_IVAR____TtC14dockaccessoryd14dockaccessoryd_droppedFeedbackCount) = 0;
          v65 = DockCoreInfo.description.getter();
          v67 = v66;
          if (!*(v34 + 16))
          {
            goto LABEL_35;
          }

          v68 = v65;

          sub_10016D4D0(v68, v67);
          if ((v69 & 1) == 0)
          {

            return swift_bridgeObjectRelease_n();
          }

          if (*(v34 + 16) && (v70 = sub_10016D4D0(v68, v67), (v71 & 1) != 0))
          {
            v72 = *(v34 + 56) + 32 * v70;
            v73 = *v72;
            v74 = *(v72 + 8);
            v76 = *(v72 + 16);
            v75 = *(v72 + 24);

            if ((v73 != v129 || v74 != v128) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              goto LABEL_34;
            }

            v121[2] = v75;
            v121[0] = v73;
            v126 = v36;
            v121[1] = a12;
            v77 = *(a10 + 16);
            v127 = v74;

            v78 = v76;

            v122 = a10;
            v80 = (a10 + 40);
            v81 = v77 + 1;
            while (--v81)
            {
              v82 = v80 + 2;
              v83 = *v80;
              *&aBlock = *(v80 - 1);
              *(&aBlock + 1) = v83;
              __chkstk_darwin(v79);
              v121[-2] = &aBlock;

              v84 = sub_10019EE0C(sub_100137D14, &v121[-4], v78);

              v80 = v82;
              if ((v84 & 1) == 0)
              {

                goto LABEL_34;
              }
            }

            v136 = sub_100137CE8;
            v137 = 0;
            *&aBlock = _NSConcreteStackBlock;
            *(&aBlock + 1) = 1107296256;
            *&v135 = sub_10010FDF4;
            *(&v135 + 1) = &unk_1002782A8;
            v90 = _Block_copy(&aBlock);
            v91 = v125;
            v92 = [v125 remoteObjectProxyWithErrorHandler:v90];
            _Block_release(v90);
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
            sub_100095274(&qword_1002A9208, &qword_10023DDB8);
            if (swift_dynamicCast())
            {
              v93 = v133[0];
              v94 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__txnLock;
              v95 = v126;
              v96 = *&v126[OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__txnLock];

              os_unfair_lock_lock(v96 + 4);

              if (*&v95[OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_txn])
              {

                sub_100105E6C();
              }

              v97 = *&v126[v94];

              os_unfair_lock_unlock(v97 + 4);

              v24 = v123;
              sub_10019BC70(v123, 0);
              swift_unknownObjectRetain();
              v98 = String._bridgeToObjectiveC()();
              v47 = v122;
              isa = Array._bridgeToObjectiveC()().super.isa;
              v100 = Array._bridgeToObjectiveC()().super.isa;
              v101 = Array._bridgeToObjectiveC()().super.isa;
              [v93 actuatorFeedbackWithInfo:v132 system:v98 actuators:isa positions:v100 velocities:v101 timestamp:a9];
              swift_unknownObjectRelease();

              v102 = swift_allocObject();
              *(v102 + 16) = v24;
              v136 = sub_1001375C4;
              v137 = v102;
              *&aBlock = _NSConcreteStackBlock;
              *(&aBlock + 1) = 1107296256;
              *&v135 = sub_100147FC8;
              *(&v135 + 1) = &unk_1002782F8;
              v103 = _Block_copy(&aBlock);

              [v91 scheduleSendBarrierBlock:v103];
              _Block_release(v103);

              v104 = ActuatorOccurrence.rawValue.getter();
              if (v104 != ActuatorOccurrence.rawValue.getter())
              {

                return swift_unknownObjectRelease();
              }

              a5 = v127;
              if (qword_1002A66D8 != -1)
              {
LABEL_58:
                swift_once();
              }

              v105 = v130;
              v106 = sub_100093DE8(v130, qword_1002A9110);
              v107 = v131;
              v108 = v124;
              (*(v131 + 2))(v124, v106, v105);

              v109 = Logger.logObject.getter();
              v110 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v109, v110))
              {
                v111 = swift_slowAlloc();
                *&aBlock = swift_slowAlloc();
                *v111 = 136315650;

                v112 = sub_1000952D4(v121[0], a5, &aBlock);

                *(v111 + 4) = v112;
                *(v111 + 12) = 2080;

                swift_bridgeObjectRelease_n();

                v113 = Array.description.getter();
                v114 = v105;
                v116 = v115;

                v117 = sub_1000952D4(v113, v116, &aBlock);

                *(v111 + 14) = v117;
                *(v111 + 22) = 2080;
                v118 = Array.description.getter();
                v120 = sub_1000952D4(v118, v119, &aBlock);

                *(v111 + 24) = v120;
                v24 = v123;
                _os_log_impl(&_mh_execute_header, v109, v110, "Client rule (%s, %s) notified once, removing actuators %s from notification rule", v111, 0x20u);
                swift_arrayDestroy();

                (*(v131 + 1))(v124, v114);
                v47 = v122;
              }

              else
              {

                swift_bridgeObjectRelease_n();
                swift_bridgeObjectRelease_n();
                v107[1](v108, v105);
              }

              sub_10019182C(v24, v132, v129, v128, v47, 0);
              swift_unknownObjectRelease();
            }

            else
            {
LABEL_34:
            }
          }

          else
          {
LABEL_35:
          }
        }

        v129 = *(*(v38 + 56) + 8 * v39);

        if (qword_1002A66D8 != -1)
        {
          goto LABEL_56;
        }

        while (1)
        {
          v41 = v130;
          v42 = sub_100093DE8(v130, qword_1002A9110);
          v43 = *(v131 + 2);
          v125 = v42;
          v128 = v131 + 16;
          v124 = v43;
          (v43)(v32);
          v44 = Logger.logObject.getter();
          v45 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            *v46 = 67109376;
            *(v46 + 4) = v123;
            *(v46 + 8) = 2048;
            *(v46 + 10) = v129;
            _os_log_impl(&_mh_execute_header, v44, v45, "Client %d has %ld pending actuator feedback messages, dropping", v46, 0x12u);
            v41 = v130;
          }

          v47 = *(v131 + 1);
          v131 += 8;
          result = (v47)(v32, v41);
          v48 = *(a5 + OBJC_IVAR____TtC14dockaccessoryd14dockaccessoryd_droppedFeedbackCount);
          v49 = __OFADD__(v48, 1);
          v50 = v48 + 1;
          if (v49)
          {
            __break(1u);
            goto LABEL_58;
          }

          *(a5 + OBJC_IVAR____TtC14dockaccessoryd14dockaccessoryd_droppedFeedbackCount) = v50;
          if (v50 < 6)
          {
            return result;
          }

          v51 = v130;
          (v124)(v29, v125, v130);
          v52 = Logger.logObject.getter();
          v53 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            *v54 = 0;
            _os_log_impl(&_mh_execute_header, v52, v53, "Dropped feedback for more than 5 times. Stopping feedback", v54, 2u);
            v51 = v130;
          }

          (v47)(v29, v51);
          v55 = *(v36 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
          v130 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
          v56 = *&v55[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
          v131 = v55;
          v57 = v55;
          v58 = v56;
          OS_dispatch_semaphore.wait()();

          v59 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
          swift_beginAccess();
          v129 = v57;
          v29 = *&v57[v59];
          v60 = *(v29 + 2);

          if (!v60)
          {
            break;
          }

          v36 = v60;
          v32 = 0;
          v61 = (v29 + 32);
          v62 = (v127 + 8);
          while (v32 < *(v29 + 2))
          {
            sub_1000A097C(v61, v133);
            v63 = *(*sub_1000A09E0(v133, v133[3]) + 24);
            DockCoreInfo.identifier.getter();

            DockCoreInfo.identifier.getter();
            LOBYTE(v63) = static UUID.== infix(_:_:)();
            a5 = *v62;
            (*v62)(v22, v19);
            a5(v24, v19);
            if (v63)
            {

              v85 = *&v131[v130];
              OS_dispatch_semaphore.signal()();

              sub_1000A097C(v133, &aBlock);
              sub_100095808(v133);
              goto LABEL_40;
            }

            ++v32;
            sub_100095808(v133);
            v61 += 40;
            if (v36 == v32)
            {
              goto LABEL_22;
            }
          }

          __break(1u);
LABEL_56:
          swift_once();
        }

LABEL_22:

        v64 = *&v131[v130];
        OS_dispatch_semaphore.signal()();

        v136 = 0;
        aBlock = 0u;
        v135 = 0u;
LABEL_40:

        if (*(&v135 + 1))
        {
          sub_100095274(&unk_1002A7A90, &unk_10023C960);
          type metadata accessor for DaemonAccessory(0);
          result = swift_dynamicCast();
          if (result)
          {
            v86 = v133[0];
            v87 = type metadata accessor for TaskPriority();
            v88 = v126;
            (*(*(v87 - 8) + 56))(v126, 1, 1, v87);
            v89 = swift_allocObject();
            v89[2] = 0;
            v89[3] = 0;
            v89[4] = v86;
            sub_1001B6710(0, 0, v88, &unk_10023DE90, v89);
          }
        }

        else
        {
          return sub_100095C84(&aBlock, &unk_1002A6F40, &unk_10023BE90);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1001119AC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100111A40;

  return sub_1001A4B10(v2, v3);
}

uint64_t sub_100111A40(char a1)
{
  *(*v1 + 32) = a1;

  return (_swift_task_switch)(sub_100137CE4, 0, 0);
}

uint64_t sub_100111B40(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002A66D8 != -1)
  {
    swift_once();
  }

  v6 = sub_100093DE8(v2, qword_1002A9110);
  (*(v3 + 16))(v5, v6, v2);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed something on remote proxy: %@", v9, 0xCu);
    sub_100095C84(v10, &unk_1002A6F60, &unk_10023C4E0);
  }

  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_100111D40(uint64_t a1, char a2)
{
  if (qword_1002A6780 != -1)
  {
    v3 = a1;
    v4 = a2;
    swift_once();
    a1 = v3;
    a2 = v4;
  }

  return sub_10019BF0C(a1, a2);
}

uint64_t sub_100111DAC(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Errors();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v53 = &v49 - v14;
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v15 = qword_1002B1CF0;
  v16 = sub_10019B91C(a2, v13);
  if (v17)
  {
    v18 = v17;
    v54 = v16;
    v50 = v9;
    v19 = String._bridgeToObjectiveC()();
    v20 = [a2 valueForEntitlement:v19];

    if (v20)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v56 = 0u;
      v57 = 0u;
    }

    v58[0] = v56;
    v58[1] = v57;
    v51 = v8;
    v52 = a1;
    if (*(&v57 + 1))
    {
      v26 = v4;
      if (swift_dynamicCast())
      {
        v27 = v55[0];
LABEL_17:
        v28 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock;
        v29 = *(v15 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock);

        os_unfair_lock_lock(v29 + 4);

        v30 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__appIDsOptedOutOfSystemTracking;
        v31 = swift_beginAccess();
        v32 = *(v15 + v30);
        *&v56 = v54;
        *(&v56 + 1) = v18;
        __chkstk_darwin(v31);
        *(&v49 - 2) = &v56;

        v33 = sub_10019EE0C(sub_1000BAB94, (&v49 - 4), v32);

        v34 = *(v15 + v28);

        os_unfair_lock_unlock(v34 + 4);

        if (v27 & 1) != 0 || (v33)
        {
          (*(v5 + 56))(v52, 1, 1, v26);
          return 0;
        }

        else
        {
          v35 = v26;
          if (qword_1002A66D8 != -1)
          {
            swift_once();
          }

          v36 = v51;
          v37 = sub_100093DE8(v51, qword_1002A9110);
          v38 = v50;
          v39 = v53;
          (*(v50 + 16))(v53, v37, v36);

          v40 = Logger.logObject.getter();
          v41 = static os_log_type_t.error.getter();

          v42 = os_log_type_enabled(v40, v41);
          v43 = v52;
          if (v42)
          {
            v44 = v38;
            v45 = swift_slowAlloc();
            v46 = swift_slowAlloc();
            v49 = v35;
            v47 = v46;
            *&v56 = v46;
            *v45 = 136315138;
            *(v45 + 4) = sub_1000952D4(v54, v18, &v56);
            _os_log_impl(&_mh_execute_header, v40, v41, "Client %s is trying to control actuation, but system tracking still on. This is API violation", v45, 0xCu);
            sub_100095808(v47);
            v35 = v49;

            (*(v44 + 8))(v53, v36);
          }

          else
          {

            (*(v38 + 8))(v39, v36);
          }

          *v7 = 0xD000000000000032;
          v7[1] = 0x8000000100231B50;
          (*(v5 + 104))(v7, enum case for Errors.InvalidParameter(_:), v35);
          (*(v5 + 32))(v43, v7, v35);
          v25 = 1;
          (*(v5 + 56))(v43, 0, 1, v35);
        }

        return v25;
      }
    }

    else
    {
      v26 = v4;
      sub_100095C84(v58, &qword_1002A9210, &unk_10023BE70);
    }

    v27 = 0;
    goto LABEL_17;
  }

  if (qword_1002A66D8 != -1)
  {
    swift_once();
  }

  v21 = sub_100093DE8(v8, qword_1002A9110);
  (*(v9 + 16))(v12, v21, v8);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Failed fetching App ID from connection", v24, 2u);
  }

  (*(v9 + 8))(v12, v8);
  *v7 = 0xD000000000000028;
  v7[1] = 0x8000000100231B20;
  (*(v5 + 104))(v7, enum case for Errors.NotFound(_:), v4);
  (*(v5 + 16))(a1, v7, v4);
  v25 = 1;
  (*(v5 + 56))(a1, 0, 1, v4);
  (*(v5 + 8))(v7, v4);
  return v25;
}

uint64_t sub_1001124F8(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 1);
  __chkstk_darwin(v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002A6780 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v10 = qword_1002B1CF0;
    sub_1001F1CC0(_swiftEmptyArrayStorage);

    v11 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock;
    v12 = *(v10 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock);

    os_unfair_lock_lock(v12 + 4);

    v13 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyActuationClientsRules;
    swift_beginAccess();
    v14 = *(v10 + v13);
    v15 = *(v10 + v11);

    os_unfair_lock_unlock(v15 + 4);

    if (!*(v14 + 16))
    {
      break;
    }

    v16 = sub_10016D548(a1);
    if ((v17 & 1) == 0)
    {
      break;
    }

    v46 = v9;
    v47 = v6;
    v42 = a1;
    v45 = a2;
    v9 = *(*(v14 + 56) + 8 * v16);

    v19 = 0;
    a1 = 1;
    v20 = 1 << v9[32];
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    a2 = v21 & *(v9 + 8);
    v22 = (v20 + 63) >> 6;
    v43 = (v7 + 8);
    v44 = (v7 + 16);
    *&v18 = 138412546;
    v41 = v18;
    while (a2)
    {
LABEL_15:
      v25 = __clz(__rbit64(a2));
      a2 &= a2 - 1;
      v26 = *(v9 + 6) + ((v19 << 10) | (16 * v25));
      v6 = *v26;
      v7 = *(v26 + 8);

      if (v6 == DockCoreInfo.description.getter() && v7 == v27)
      {

        if (a1)
        {
          goto LABEL_21;
        }

LABEL_9:
      }

      else
      {
        v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((a1 & v6 & 1) == 0)
        {
          goto LABEL_9;
        }

LABEL_21:
        if (qword_1002A66D8 != -1)
        {
          swift_once();
        }

        v29 = v47;
        v30 = sub_100093DE8(v47, qword_1002A9110);
        (*v44)(v46, v30, v29);
        v6 = a3;
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v40 = v32;
          v34 = v33;
          v35 = swift_slowAlloc();
          v39 = v35;
          *v34 = v41;
          *(v34 + 4) = v6;
          *v35 = a3;
          *(v34 + 12) = 1024;
          *(v34 + 14) = v42;
          v36 = v6;
          _os_log_impl(&_mh_execute_header, v31, v40, "DockAccessory %@ was disconnected, invalidating XPC for feedback client: %d", v34, 0x12u);
          v6 = v39;
          sub_100095C84(v39, &unk_1002A6F60, &unk_10023C4E0);
        }

        (*v43)(v46, v47);
        v37 = [v45 remoteObjectProxy];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100095274(&qword_1002A9208, &qword_10023DDB8);
        if (swift_dynamicCast())
        {
          v38 = v48;
          swift_unknownObjectRetain();

          [v38 disconnectedWithErr:0];
          swift_unknownObjectRelease_n();
        }

        else
        {
        }

        a1 = 0;
      }
    }

    while (1)
    {
      v24 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v24 >= v22)
      {
      }

      a2 = *&v9[8 * v24 + 64];
      ++v19;
      if (a2)
      {
        v19 = v24;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    swift_once();
  }
}

uint64_t sub_1001129E0(void *a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *aBlock, void (*a8)(void *, uint64_t, uint64_t, uint64_t, uint64_t, id, void *))
{
  v14 = _Block_copy(aBlock);
  if (a4)
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a4 = v16;
    if (!a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v15 = 0;
  if (a5)
  {
LABEL_3:
    a5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:
  v17 = a3;
  v18 = a1;
  _Block_copy(v14);
  a8(a3, v15, a4, a5, a6, v18, v14);
  _Block_release(v14);
  _Block_release(v14);
}

uint64_t sub_100112AE8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100112B7C;

  return sub_1001A4B10(v2, v3);
}

uint64_t sub_100112B7C(char a1)
{
  *(*v1 + 32) = a1;

  return (_swift_task_switch)(sub_100112C7C, 0, 0);
}

uint64_t sub_100112CCC(void *a1, int a2, void *a3, uint64_t a4, void *aBlock, void (*a6)(void *, uint64_t, uint64_t, id, void *))
{
  v10 = _Block_copy(aBlock);
  if (a4)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a4 = v12;
  }

  else
  {
    v11 = 0;
  }

  _Block_copy(v10);
  v13 = a3;
  v14 = a1;
  a6(a3, v11, a4, v14, v10);
  _Block_release(v10);
  _Block_release(v10);
}

uint64_t sub_100112D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Logger();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return (_swift_task_switch)(sub_100112E58, 0, 0);
}

uint64_t sub_100112E58()
{
  if (qword_1002A66D8 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_100093DE8(v3, qword_1002A9110);
  (*(v2 + 16))(v1, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Sending feedback request to accessory", v7, 2u);
  }

  v9 = v0[4];
  v8 = v0[5];
  v10 = v0[3];

  (*(v9 + 8))(v8, v10);
  v11 = swift_task_alloc();
  v0[6] = v11;
  *v11 = v0;
  v11[1] = sub_100112FE0;

  return sub_1001A456C(v11, v12);
}

uint64_t sub_100112FE0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1001130F0(unint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7, int a8, void (*a9)(char *, uint64_t))
{
  LODWORD(v9) = a8;
  v123._countAndFlagsBits = a6;
  v123._object = a7;
  v117 = a2;
  v118 = a3;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Logger();
  v111 = *(v17 - 1);
  __chkstk_darwin(v17);
  v112 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002A6780 != -1)
  {
    goto LABEL_71;
  }

  while (1)
  {
    v113 = qword_1002B1CF0;
    v121 = sub_1001884E4(a4);
    if (!v121)
    {
    }

    v106 = v17;
    v107 = v16;
    v108 = v14;
    v109 = v13;
    v110 = v9;
    v116 = a4;
    v19 = *(a5 + 16);
    if (v19)
    {
      v20 = 0;
      v21 = *(a1 + 16);
      v22 = a5 + 32;
      v23 = (a1 + 32);
      v114 = v118 + 32;
      v115 = v117 + 32;
      v119 = _swiftEmptyArrayStorage;
      v120 = _swiftEmptyArrayStorage;
      v122 = _swiftEmptyArrayStorage;
      while (1)
      {
        v24 = (v22 + 16 * v20);
        v26 = *v24;
        v25 = v24[1];

        v27 = dispatch thunk of DockCoreAccessory.getActuatorIndex(name:system:)();
        if (!v21)
        {
LABEL_5:

          goto LABEL_6;
        }

        v28 = 0;
        while (*&v23[8 * v28] != v27)
        {
          if (v21 == ++v28)
          {
            goto LABEL_5;
          }
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v29 = v122;
        }

        else
        {
          v29 = sub_100102844(0, v122[2] + 1, 1, v122);
        }

        v31 = v29[2];
        v30 = v29[3];
        if (v31 >= v30 >> 1)
        {
          v29 = sub_100102844((v30 > 1), v31 + 1, 1, v29);
        }

        v122 = v29;
        v29[2] = (v31 + 1);
        v32 = &v29[2 * v31];
        v32[4] = v26;
        v32[5] = v25;
        if (v28 < *(v117 + 16))
        {
          break;
        }

LABEL_31:
        if (v28 >= *(v118 + 2))
        {
          goto LABEL_5;
        }

        type metadata accessor for Actuator();
        if (v26 == static Actuator.Pitch.getter() && v25 == v42)
        {
        }

        else
        {
          v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v43 & 1) == 0)
          {
            v48 = *&v114[8 * v28];
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v49 = v120;
            }

            else
            {
              v49 = sub_100102EE8(0, v120[2] + 1, 1, v120);
            }

            v51 = v49[2];
            v50 = v49[3];
            if (v51 >= v50 >> 1)
            {
              v49 = sub_100102EE8((v50 > 1), v51 + 1, 1, v49);
            }

            v49[2] = (v51 + 1);
            v120 = v49;
            v49[v51 + 4] = v48;
            goto LABEL_6;
          }
        }

        v44 = *&v114[8 * v28];
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v45 = v120;
        }

        else
        {
          v45 = sub_100102EE8(0, v120[2] + 1, 1, v120);
        }

        v47 = v45[2];
        v46 = v45[3];
        if (v47 >= v46 >> 1)
        {
          v45 = sub_100102EE8((v46 > 1), v47 + 1, 1, v45);
        }

        v45[2] = (v47 + 1);
        v120 = v45;
        *&v45[v47 + 4] = -v44;
LABEL_6:
        if (++v20 == v19)
        {
          goto LABEL_53;
        }
      }

      type metadata accessor for Actuator();
      if (v26 == static Actuator.Pitch.getter() && v25 == v33)
      {

        goto LABEL_21;
      }

      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v34)
      {
LABEL_21:
        v35 = *(v115 + 8 * v28);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v36 = v119;
        }

        else
        {
          v36 = sub_100102EE8(0, v119[2] + 1, 1, v119);
        }

        v38 = v36[2];
        v37 = v36[3];
        v39 = (v38 + 1);
        if (v38 >= v37 >> 1)
        {
          v36 = sub_100102EE8((v37 > 1), v38 + 1, 1, v36);
        }

        v40 = -v35;
      }

      else
      {
        v40 = *(v115 + 8 * v28);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v36 = v119;
        }

        else
        {
          v36 = sub_100102EE8(0, v119[2] + 1, 1, v119);
        }

        v38 = v36[2];
        v41 = v36[3];
        v39 = (v38 + 1);
        if (v38 >= v41 >> 1)
        {
          v36 = sub_100102EE8((v41 > 1), v38 + 1, 1, v36);
        }
      }

      v36[2] = v39;
      v119 = v36;
      *&v36[v38 + 4] = v40;
      goto LABEL_31;
    }

    v119 = _swiftEmptyArrayStorage;
    v120 = _swiftEmptyArrayStorage;
    v122 = _swiftEmptyArrayStorage;
LABEL_53:
    if (qword_1002A66D8 != -1)
    {
      swift_once();
    }

    v118 = a9;
    v52 = v106;
    v53 = sub_100093DE8(v106, qword_1002A9110);
    v54 = v111;
    a1 = v112;
    (*(v111 + 16))(v112, v53, v52);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.debug.getter();
    v57 = os_log_type_enabled(v55, v56);
    v58 = v110;
    if (v57)
    {
      v59 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v126 = v117;
      *v59 = 67109890;
      *(v59 + 4) = v58;
      *(v59 + 8) = 2080;

      v60 = Array.description.getter();
      LODWORD(v115) = v56;
      v62 = v61;

      v63 = sub_1000952D4(v60, v62, &v126);

      *(v59 + 10) = v63;
      *(v59 + 18) = 2080;

      v64 = Array.description.getter();
      v66 = v65;

      v67 = sub_1000952D4(v64, v66, &v126);

      *(v59 + 20) = v67;
      *(v59 + 28) = 2080;

      v68 = Array.description.getter();
      v70 = v69;

      v71 = sub_1000952D4(v68, v70, &v126);

      *(v59 + 30) = v71;
      _os_log_impl(&_mh_execute_header, v55, v115, "%d Received feedback a=%s p=%s v=%s", v59, 0x26u);
      swift_arrayDestroy();

      LODWORD(a1) = v110;
      (*(v54 + 8))(v112, v52);
    }

    else
    {

      (*(v54 + 8))(a1, v52);
      LODWORD(a1) = v58;
    }

    v72 = objc_allocWithZone(NSDate);

    v73 = [v72 init];
    [v73 timeIntervalSince1970];
    v75 = v74;

    v76 = v107;
    DockCoreInfo.identifier.getter();
    v77 = UUID.description.getter();
    v79 = v78;
    (*(v108 + 8))(v76, v109);
    v126 = v77;
    v127 = v79;

    v80._countAndFlagsBits = 45;
    v80._object = 0xE100000000000000;
    String.append(_:)(v80);

    String.append(_:)(v123);

    v17 = v126;
    v81 = v127;
    v82 = objc_allocWithZone(type metadata accessor for ActuatorFeedback());

    v83 = ActuatorFeedback.init(velocities:positions:timestamp:)();
    v84 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__cacheLock;
    v85 = v113;
    v86 = *(v113 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__cacheLock);

    os_unfair_lock_lock(v86 + 4);

    v87 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__actuationFeedbackCache;
    swift_beginAccess();
    v14 = v83;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v125[0] = *(v85 + v87);
    *(v85 + v87) = 0x8000000000000000;
    sub_1001ECA6C(v14, v17, v81, isUniquelyReferenced_nonNull_native);

    *(v85 + v87) = v125[0];
    swift_endAccess();
    v89 = *(v85 + v84);

    os_unfair_lock_unlock(v89 + 4);

    sub_1001F1CC0(_swiftEmptyArrayStorage);

    v90 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock;
    v91 = *(v85 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock);

    os_unfair_lock_lock(v91 + 4);

    v92 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyActuationClientsRules;
    swift_beginAccess();
    v93 = *(v85 + v92);
    v94 = *(v85 + v90);

    os_unfair_lock_unlock(v94 + 4);

    a4 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v95 = *(v85 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v95 + 4);

    v96 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyActuationClients;
    swift_beginAccess();
    a5 = *(v85 + v96);
    v9 = a5 + 64;
    v97 = 1 << *(a5 + 32);
    v98 = -1;
    if (v97 < 64)
    {
      v98 = ~(-1 << v97);
    }

    v16 = v98 & *(a5 + 64);
    v13 = (v97 + 63) >> 6;
    a1 = a1;

    v99 = 0;
    while (v16)
    {
      v100 = v99;
LABEL_66:
      v101 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v102 = v101 | (v100 << 6);
      v14 = *(*(a5 + 48) + 4 * v102);
      v17 = *(*(a5 + 56) + 8 * v102);
      v124 = 0;
      sub_1001109A4(v14, v17, v93, a1, v118, v116, v123._countAndFlagsBits, v123._object, v75, v122, v119, v120);
    }

    while (1)
    {
      v100 = v99 + 1;
      if (__OFADD__(v99, 1))
      {
        break;
      }

      if (v100 >= v13)
      {

        v103 = *(v113 + a4);

        os_unfair_lock_unlock(v103 + 4);
      }

      v16 = *(v9 + 8 * v100);
      ++v99;
      if (v16)
      {
        v99 = v100;
        goto LABEL_66;
      }
    }

    __break(1u);
LABEL_71:
    swift_once();
  }
}

uint64_t sub_100113D30(void *a1, int a2, void *a3, uint64_t a4, uint64_t a5, void *aBlock, void (*a7)(void *, uint64_t, uint64_t, uint64_t, id, void *))
{
  v12 = _Block_copy(aBlock);
  if (a4)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a4 = v14;
    if (!a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v13 = 0;
  if (a5)
  {
LABEL_3:
    a5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:
  v15 = a3;
  v16 = a1;
  _Block_copy(v12);
  a7(a3, v13, a4, a5, v16, v12);
  _Block_release(v12);
  _Block_release(v12);
}

void sub_100113E40(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v35 = a3;
  v36 = a4;
  v30 = a2;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_18:
    v12 = _CocoaArrayWrapper.endIndex.getter();
    if (!v12)
    {
      return;
    }
  }

  else
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      return;
    }
  }

  if (v12 >= 1)
  {
    v13 = 0;
    v14 = a1 & 0xC000000000000001;
    v31 = (v8 + 8);
    v32 = (v8 + 16);
    *&v9 = 136315394;
    v27 = v9;
    v28 = a5;
    v29 = a1;
    v33 = a1 & 0xC000000000000001;
    v34 = v12;
    while (1)
    {
      if (v14)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v15 = *(a1 + 8 * v13 + 32);
      }

      v16 = v15;
      v17 = [v15 remoteObjectProxy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100095274(&qword_1002A9310, &qword_10023DE70);
      if (swift_dynamicCast())
      {
        v37 = v16;
        v18 = v38;
        if (qword_1002A66D8 != -1)
        {
          swift_once();
        }

        v19 = sub_100093DE8(v7, qword_1002A9110);
        (*v32)(v11, v19, v7);
        v8 = v35;

        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v20, v21))
        {
          v8 = swift_slowAlloc();
          v39[0] = swift_slowAlloc();
          *v8 = v27;
          *(v8 + 4) = sub_1000952D4(v30, v35, v39);
          *(v8 + 12) = 2080;
          v22 = DockFramingMode.description.getter();
          v24 = v7;
          v25 = v18;
          v26 = sub_1000952D4(v22, v23, v39);
          a5 = v28;

          *(v8 + 14) = v26;
          v18 = v25;
          v7 = v24;
          _os_log_impl(&_mh_execute_header, v20, v21, "Notifying client that %s just set framing mode to %s", v8, 0x16u);
          swift_arrayDestroy();
          a1 = v29;
        }

        (*v31)(v11, v7);
        v14 = v33;
        [v18 setFramingModeEventWithMode:v36];
        swift_unknownObjectRelease();

        v12 = v34;
        if (__OFADD__(*a5, 1))
        {
          __break(1u);
          goto LABEL_18;
        }

        ++*a5;
      }

      else
      {
      }

      if (v12 == ++v13)
      {
        return;
      }
    }
  }

  __break(1u);
}

void sub_100114304(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v38 = a5;
  v30 = a2;
  v7 = type metadata accessor for Logger();
  isa = *(v7 - 8);
  __chkstk_darwin(v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1;
  if (a1 >> 62)
  {
LABEL_18:
    v13 = _CocoaArrayWrapper.endIndex.getter();
    if (!v13)
    {
      return;
    }
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      return;
    }
  }

  if (v13 >= 1)
  {
    v14 = 0;
    v15 = v12 & 0xC000000000000001;
    v32 = (isa + 8);
    v33 = (isa + 16);
    *&v9 = 136315394;
    v28 = v9;
    v29 = v7;
    v34 = v12 & 0xC000000000000001;
    v35 = v13;
    v27 = v11;
    while (1)
    {
      if (v15)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v16 = *(v12 + 8 * v14 + 32);
      }

      v17 = v16;
      v18 = [v16 remoteObjectProxy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100095274(&qword_1002A9310, &qword_10023DE70);
      if (swift_dynamicCast())
      {
        v36 = v39;
        if (qword_1002A66D8 != -1)
        {
          swift_once();
        }

        v37 = v17;
        v19 = sub_100093DE8(v7, qword_1002A9110);
        (*v33)(v11, v19, v7);

        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v40[0] = v31;
          *v22 = v28;
          *(v22 + 4) = sub_1000952D4(v30, a3, v40);
          *(v22 + 12) = 2080;
          v23 = Array.description.getter();
          v25 = sub_1000952D4(v23, v24, v40);
          v11 = v27;

          *(v22 + 14) = v25;
          _os_log_impl(&_mh_execute_header, v20, v21, "Notifying client that %s just set subject selection to ids: %s", v22, 0x16u);
          swift_arrayDestroy();

          v7 = v29;
        }

        (*v32)(v11, v7);
        v15 = v34;
        v13 = v35;
        isa = Array._bridgeToObjectiveC()().super.isa;
        [v36 selectSubjectsEvent:isa];

        swift_unknownObjectRelease();
        if (__OFADD__(*v38, 1))
        {
          __break(1u);
          goto LABEL_18;
        }

        ++*v38;
      }

      else
      {
      }

      if (v13 == ++v14)
      {
        return;
      }
    }
  }

  __break(1u);
}

uint64_t (*sub_10011472C(uint64_t a1, uint64_t a2, void (*a3)(void, void *), unint64_t a4, unsigned int a5))()
{
  v30 = a5;
  v27[2] = a4;
  v28 = a3;
  v7 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  __chkstk_darwin(v7 - 8);
  v9 = (v27 - v8);
  v10 = type metadata accessor for Errors();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v29 = a1;
  v27[1] = qword_1002B1CF0;
  result = sub_100194808(a1, a2);
  if (result)
  {
    v27[0] = a2;
    sub_1000BABC8(result, v19);
    if (qword_1002A66D8 != -1)
    {
      swift_once();
    }

    v20 = sub_100093DE8(v14, qword_1002A9110);
    (*(v15 + 16))(v17, v20, v14);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "subject selection not completed after 1 sec, expiring", v23, 2u);
    }

    (*(v15 + 8))(v17, v14);
    *v13 = 0xD00000000000001BLL;
    v13[1] = 0x8000000100231E30;
    (*(v11 + 104))(v13, enum case for Errors.OperationCancelled(_:), v10);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    v24 = *(v11 + 16);
    v24(v25, v13, v10);
    v26 = _convertErrorToNSError(_:)();
    v28(0, v26);

    v24(v9, v13, v10);
    (*(v11 + 56))(v9, 0, 1, v10);
    sub_10018C604(v29, v27[0], v30, v9);
    sub_100095C84(v9, &unk_1002A6F30, &unk_10023C4D0);
    return (*(v11 + 8))(v13, v10);
  }

  return result;
}

void sub_100114BEC(unint64_t a1, uint64_t a2, unint64_t a3, void *a4, double a5, double a6, double a7, double a8)
{
  v44 = a4;
  v37 = a2;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_18:
    v19 = _CocoaArrayWrapper.endIndex.getter();
    if (!v19)
    {
      return;
    }
  }

  else
  {
    v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v19)
    {
      return;
    }
  }

  if (v19 >= 1)
  {
    v20 = 0;
    v21 = a1 & 0xC000000000000001;
    v39 = (v15 + 8);
    v40 = (v15 + 16);
    *&v16 = 136315394;
    v35 = v16;
    v36 = a1;
    v41 = a1 & 0xC000000000000001;
    v42 = v19;
    while (1)
    {
      if (v21)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v22 = *(a1 + 8 * v20 + 32);
      }

      v23 = v22;
      v24 = [v22 remoteObjectProxy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100095274(&qword_1002A9310, &qword_10023DE70);
      if (swift_dynamicCast())
      {
        v43 = v23;
        v15 = v45[0];
        if (qword_1002A66D8 != -1)
        {
          swift_once();
        }

        v25 = sub_100093DE8(v14, qword_1002A9110);
        (*v40)(v18, v25, v14);

        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v38 = v15;
          v29 = v28;
          v45[0] = swift_slowAlloc();
          *v29 = v35;
          *(v29 + 4) = sub_1000952D4(v37, a3, v45);
          *(v29 + 12) = 2080;
          *&v45[1] = a5;
          *&v45[2] = a6;
          *&v45[3] = a7;
          *&v45[4] = a8;
          type metadata accessor for CGRect(0);
          v30 = String.init<A>(describing:)();
          v32 = v14;
          v33 = a3;
          v34 = sub_1000952D4(v30, v31, v45);

          *(v29 + 14) = v34;
          a3 = v33;
          v14 = v32;
          _os_log_impl(&_mh_execute_header, v26, v27, "Notifying client that %s just set subject ROI to %s", v29, 0x16u);
          swift_arrayDestroy();
          a1 = v36;

          v15 = v38;
        }

        (*v39)(v18, v14);
        v21 = v41;
        [v15 setRectOfInterestEventWithRect:{a5, a6, a7, a8}];
        swift_unknownObjectRelease();

        v19 = v42;
        if (__OFADD__(*v44, 1))
        {
          __break(1u);
          goto LABEL_18;
        }

        ++*v44;
      }

      else
      {
      }

      if (v19 == ++v20)
      {
        return;
      }
    }
  }

  __break(1u);
}

uint64_t (*sub_100114FEC(uint64_t a1, uint64_t a2, void (*a3)(void, void *), unint64_t a4, unsigned int a5))()
{
  v30 = a5;
  v27[2] = a4;
  v28 = a3;
  v7 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  __chkstk_darwin(v7 - 8);
  v9 = (v27 - v8);
  v10 = type metadata accessor for Errors();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v29 = a1;
  v27[1] = qword_1002B1CF0;
  result = sub_100194938(a1, a2);
  if (result)
  {
    v27[0] = a2;
    sub_1000BABC8(result, v19);
    if (qword_1002A66D8 != -1)
    {
      swift_once();
    }

    v20 = sub_100093DE8(v14, qword_1002A9110);
    (*(v15 + 16))(v17, v20, v14);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "ROI not completed after 1 sec, expiring", v23, 2u);
    }

    (*(v15 + 8))(v17, v14);
    *v13 = 0xD000000000000015;
    v13[1] = 0x8000000100231DF0;
    (*(v11 + 104))(v13, enum case for Errors.OperationCancelled(_:), v10);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    v24 = *(v11 + 16);
    v24(v25, v13, v10);
    v26 = _convertErrorToNSError(_:)();
    v28(0, v26);

    v24(v9, v13, v10);
    (*(v11 + 56))(v9, 0, 1, v10);
    sub_10018C604(v29, v27[0], v30, v9);
    sub_100095C84(v9, &unk_1002A6F30, &unk_10023C4D0);
    return (*(v11 + 8))(v13, v10);
  }

  return result;
}

uint64_t sub_1001154B4(uint64_t a1, void *a2)
{
  v3 = a1;
  v4 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  __chkstk_darwin(v4 - 8);
  v6 = (v18 - v5);
  v7 = type metadata accessor for DKXPCClientApplication(0);
  __chkstk_darwin(v7 - 8);
  v9 = (v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010D498(v9);
  if (v9[2])
  {
    v10 = v9[1];
    v11 = v9[2];
  }

  else
  {
    v11 = 0xE700000000000000;
    v10 = 0x6E776F6E6B6E75;
  }

  v12 = qword_1002A6780;

  if (v12 != -1)
  {
    swift_once();
  }

  if (a2)
  {
    v18[1] = a2;
    sub_100095B94(0, &qword_1002A92B0, NSError_ptr);
    v13 = type metadata accessor for Errors();
    v14 = a2;
    v15 = swift_dynamicCast();
    (*(*(v13 - 8) + 56))(v6, v15 ^ 1u, 1, v13);
  }

  else
  {
    v16 = type metadata accessor for Errors();
    (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  }

  sub_10018C604(v10, v11, v3, v6);

  sub_1000BAA28(v9);
  return sub_100095C84(v6, &unk_1002A6F30, &unk_10023C4D0);
}

uint64_t sub_100115778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = type metadata accessor for Errors();
  v7[4] = v9;
  v7[5] = *(v9 - 8);
  v7[6] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v7[7] = v10;
  v7[8] = *(v10 - 8);
  v7[9] = swift_task_alloc();
  v11 = swift_task_alloc();
  v7[10] = v11;
  *v11 = v7;
  v11[1] = sub_1001158C8;

  return sub_10012FB40(a5, v12);
}

uint64_t sub_1001158C8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v4 = sub_100115D48;
  }

  else
  {
    v4 = sub_1001159DC;
  }

  return (_swift_task_switch)(v4, 0, 0);
}

uint64_t sub_1001159DC()
{
  result = v0[11];
  if (*(result + 16))
  {
    v2 = 0;
    v3 = result + 64;
    v4 = -1;
    v5 = -1 << *(result + 32);
    if (-v5 < 64)
    {
      v4 = ~(-1 << -v5);
    }

    v6 = v4 & *(result + 64);
    v7 = (63 - v5) >> 6;
LABEL_5:
    v8 = v2;
    if (!v6)
    {
      goto LABEL_7;
    }

    do
    {
      v2 = v8;
LABEL_10:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = result;
      v11 = (*(result + 56) + ((v2 << 10) | (16 * v9)));
      v12 = *v11;
      v13 = v11[1];
      objc_allocWithZone(type metadata accessor for AccessoryBatteryState());

      sub_1000A0CD8(v12, v13);

      sub_1000A0CD8(v12, v13);
      v14 = AccessoryBatteryState.init(data:name:)();
      if (v14)
      {
        v15 = v14;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        sub_1000A0D2C(v12, v13);

        result = v10;
        goto LABEL_5;
      }

      sub_1000A0D2C(v12, v13);
      v8 = v2;
      result = v10;
    }

    while (v6);
LABEL_7:
    while (1)
    {
      v2 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v2 >= v7)
      {
        v0 = v24;
        v16 = v24[2];

        v16(_swiftEmptyArrayStorage, 0);

        goto LABEL_18;
      }

      v6 = *(v3 + 8 * v2);
      ++v8;
      if (v6)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
    v18 = v0[5];
    v17 = v0[6];
    v19 = v0[4];
    v20 = v0[2];

    *v17 = 0xD000000000000015;
    v17[1] = 0x8000000100231DA0;
    (*(v18 + 104))(v17, enum case for Errors.NotFound(_:), v19);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v18 + 16))(v21, v17, v19);
    v22 = _convertErrorToNSError(_:)();
    v20(_swiftEmptyArrayStorage, v22);

    (*(v18 + 8))(v17, v19);

LABEL_18:

    v23 = v0[1];

    return v23();
  }

  return result;
}

uint64_t sub_100115D48()
{
  if (qword_1002A66D8 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = sub_100093DE8(v3, qword_1002A9110);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error thrown in battery state read: %@", v7, 0xCu);
    sub_100095C84(v8, &unk_1002A6F60, &unk_10023C4E0);
  }

  v11 = v0[8];
  v10 = v0[9];
  v12 = v0[7];
  v13 = v0[2];

  (*(v11 + 8))(v10, v12);
  v14 = _convertErrorToNSError(_:)();
  v13(_swiftEmptyArrayStorage, v14);

  v15 = v0[1];

  return v15();
}

void sub_100115F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for AccessoryBatteryState();
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a3 + 16))(a3, isa, a2);
}

uint64_t sub_10011606C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = type metadata accessor for Errors();
  v7[4] = v9;
  v7[5] = *(v9 - 8);
  v7[6] = swift_task_alloc();
  v10 = swift_task_alloc();
  v7[7] = v10;
  *v10 = v7;
  v10[1] = sub_100116160;

  return sub_100135094(a5, v11);
}

uint64_t sub_100116160(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  *(v4 + 64) = a1;
  *(v4 + 72) = a2;

  if (v2)
  {

    v6 = *(v5 + 8);

    __asm { BRAA            X1, X16 }
  }

  return (_swift_task_switch)(sub_1001162B0, 0, 0);
}

uint64_t sub_1001162B0()
{
  v1 = *(v0 + 72);
  if (v1 >> 60 != 15)
  {
    v2 = *(v0 + 64);
    v3 = objc_allocWithZone(type metadata accessor for AccessorySystemEvent());
    sub_1000A0CD8(v2, v1);
    v4 = AccessorySystemEvent.init(data:name:)();
    v6 = *(v0 + 64);
    v5 = *(v0 + 72);
    if (v4)
    {
      v7 = v4;
      (*(v0 + 16))(v4, 0);

      sub_1000A452C(v6, v5);
      goto LABEL_6;
    }

    sub_1000A452C(*(v0 + 64), *(v0 + 72));
  }

  v9 = *(v0 + 40);
  v8 = *(v0 + 48);
  v10 = *(v0 + 32);
  v11 = *(v0 + 16);
  *v8 = 0xD000000000000014;
  v8[1] = 0x8000000100231C50;
  (*(v9 + 104))(v8, enum case for Errors.NotFound(_:), v10);
  sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
  swift_allocError();
  (*(v9 + 16))(v12, v8, v10);
  v13 = _convertErrorToNSError(_:)();
  v11(0, v13);

  (*(v9 + 8))(v8, v10);

LABEL_6:

  v14 = *(v0 + 8);

  return v14();
}

void sub_1001164E0(void *a1, int a2, void *a3, void *aBlock, void (*a5)(void *, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(a3, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

void sub_10011657C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v28 = a3;
  v29 = a1;
  v30 = a2;
  v5 = sub_100095274(&unk_1002A92E0, &qword_10023DE48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002A66D8 != -1)
  {
    swift_once();
  }

  v14 = sub_100093DE8(v10, qword_1002A9110);
  (*(v11 + 16))(v13, v14, v10);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v27 = v7;
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Reading System Event Data...", v17, 2u);
  }

  (*(v11 + 8))(v13, v10);
  sub_100095274(&qword_1002A7390, &qword_10023BEF0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10023BDA0;
  v19 = v28;
  *(v18 + 32) = v28;
  sub_100095B94(0, &qword_1002A92F0, off_100271C60);
  v20 = v19;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v22 = *(a4 + 40);
  (*(v6 + 16))(v9, v29, v5);
  v23 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v24 = swift_allocObject();
  (*(v6 + 32))(v24 + v23, v9, v5);
  aBlock[4] = sub_10013712C;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001A37EC;
  aBlock[3] = &unk_100277FD8;
  v25 = _Block_copy(aBlock);
  v26 = v22;

  [v30 readCharacteristicValues:isa timeout:v26 completionQueue:v25 completionHandler:10.0];
  _Block_release(v25);
}

uint64_t sub_100116948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  result = __chkstk_darwin(v6);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    if (qword_1002A66D8 != -1)
    {
      swift_once();
    }

    v11 = sub_100093DE8(v6, qword_1002A9110);
    (*(v7 + 16))(v10, v11, v6);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v28[1] = a3;
      v15 = v14;
      v16 = swift_slowAlloc();
      *&v32[0] = v16;
      *v15 = 136315138;
      swift_getErrorValue();
      v17 = Error.localizedDescription.getter();
      v19 = sub_1000952D4(v17, v18, v32);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v12, v13, "Error reading System Event Data characteristic: %s", v15, 0xCu);
      sub_100095808(v16);
    }

    (*(v7 + 8))(v10, v6);
    goto LABEL_21;
  }

  if (!a1)
  {
    v23 = type metadata accessor for Errors();
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    a2 = swift_allocError();
    v25 = v24;
    v26 = 0x8000000100231C90;
    v27 = 0xD000000000000035;
LABEL_20:
    *v24 = v27;
    v24[1] = v26;
    (*(*(v23 - 8) + 104))(v25, enum case for Errors.CharacteristicReadWriteFailure(_:), v23);
LABEL_21:
    *&v32[0] = a2;
    sub_100095274(&unk_1002A92E0, &qword_10023DE48);
    return CheckedContinuation.resume(throwing:)();
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_11;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = *(a1 + 32);
LABEL_11:
    v21 = v20;
    v22 = [v20 value];

    if (v22)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v30 = 0u;
      v31 = 0u;
    }

    v32[0] = v30;
    v32[1] = v31;
    if (*(&v31 + 1))
    {
      if (swift_dynamicCast())
      {
        v32[0] = v29;
        sub_100095274(&unk_1002A92E0, &qword_10023DE48);
        return CheckedContinuation.resume(returning:)();
      }
    }

    else
    {
      sub_100095C84(v32, &qword_1002A9210, &unk_10023BE70);
    }

    v23 = type metadata accessor for Errors();
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    a2 = swift_allocError();
    v25 = v24;
    v26 = 0x8000000100231CD0;
    v27 = 0xD000000000000023;
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

void sub_100116DD8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v46 - v15;
  if (a2 || !a1)
  {
    if (qword_1002A66D8 != -1)
    {
      swift_once();
    }

    v25 = sub_100093DE8(v10, qword_1002A9110);
    (*(v11 + 16))(v16, v25, v10);
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v52[0] = v29;
      *v28 = 136315138;
      *&v50 = a2;
      swift_errorRetain();
      sub_100095274(&qword_1002A9308, &qword_10023FF40);
      v30 = String.init<A>(describing:)();
      v32 = sub_1000952D4(v30, v31, v52);

      *(v28 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v26, v27, "Unable to read characteristic: %s", v28, 0xCu);
      sub_100095808(v29);
    }

    (*(v11 + 8))(v16, v10);
  }

  else
  {
    v17 = [a1 metadata];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 format];

      if (v19)
      {
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        if (v20 == 1635017060 && v22 == 0xE400000000000000)
        {
        }

        else
        {
          v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v24 & 1) == 0)
          {
            return;
          }
        }

        if ([a1 value])
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v50 = 0u;
          v51 = 0u;
        }

        v52[0] = v50;
        v52[1] = v51;
        if (*(&v51 + 1))
        {
          if (swift_dynamicCast())
          {
            v33 = v48;
            v34 = v49;
            swift_beginAccess();

            sub_1000A0CD8(v33, v34);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v50 = *(a3 + 16);
            *(a3 + 16) = 0x8000000000000000;
            sub_1001ECE58(v33, v34, a4, a5, isUniquelyReferenced_nonNull_native);

            *(a3 + 16) = v50;
            swift_endAccess();
            if (qword_1002A66D8 != -1)
            {
              swift_once();
            }

            v36 = sub_100093DE8(v10, qword_1002A9110);
            (*(v11 + 16))(v14, v36, v10);
            sub_1000A0CD8(v33, v34);
            v37 = Logger.logObject.getter();
            v38 = static os_log_type_t.default.getter();
            sub_1000A0D2C(v33, v34);
            if (os_log_type_enabled(v37, v38))
            {
              v39 = swift_slowAlloc();
              v40 = swift_slowAlloc();
              *&v52[0] = v40;
              *v39 = 136315138;
              v41 = sub_10013B46C(v33, v34);
              v43 = sub_1000952D4(v41, v42, v52);
              v47 = v37;
              v44 = v43;

              *(v39 + 4) = v44;
              v45 = v47;
              _os_log_impl(&_mh_execute_header, v47, v38, "Battery Data: %s", v39, 0xCu);
              sub_100095808(v40);

              sub_1000A0D2C(v33, v34);
            }

            else
            {
              sub_1000A0D2C(v33, v34);
            }

            (*(v11 + 8))(v14, v10);
          }
        }

        else
        {
          sub_100095C84(v52, &qword_1002A9210, &unk_10023BE70);
        }
      }
    }
  }
}

void sub_10011737C(void *a1, int a2, uint64_t a3, void *aBlock, void (*a5)(uint64_t, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a1;
  a5(a3, v9, v8);
  _Block_release(v8);
  _Block_release(v8);
}

void sub_1001174C8(unsigned int a1, void *a2, void *a3, id *a4, unint64_t a5)
{
  v55 = a1;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002A66D8 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v13 = sub_100093DE8(v9, qword_1002A9110);
    (*(v10 + 16))(v12, v13, v9);
    sub_1000B5150(a2, v58, &qword_1002A9210, &unk_10023BE70);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    v16 = os_log_type_enabled(v14, v15);
    v53 = a4;
    if (v16)
    {
      v17 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v59 = v54;
      *v17 = 67109378;
      *(v17 + 4) = v55;
      *(v17 + 8) = 2080;
      sub_1000B5150(v58, v56, &qword_1002A9210, &unk_10023BE70);
      sub_100095274(&qword_1002A9210, &unk_10023BE70);
      v18 = String.init<A>(describing:)();
      v19 = a5;
      v20 = a3;
      v22 = v21;
      sub_100095C84(v58, &qword_1002A9210, &unk_10023BE70);
      v23 = sub_1000952D4(v18, v22, &v59);
      a3 = v20;
      a5 = v19;

      *(v17 + 10) = v23;
      _os_log_impl(&_mh_execute_header, v14, v15, "dockaccessoryd: Connection to PID %d (%s) has been invalidated", v17, 0x12u);
      sub_100095808(v54);

      a4 = v53;
    }

    else
    {

      sub_100095C84(v58, &qword_1002A9210, &unk_10023BE70);
    }

    v24 = *(v10 + 8);
    v10 += 8;
    v24(v12, v9);
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v26 = qword_1002B1CF0;
    v27 = v55;
    sub_100192048(v55, v25);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_100193938(v27, Strong);

    swift_beginAccess();
    v29 = swift_unknownObjectWeakLoadStrong();
    sub_10019506C(v27, v29);

    swift_beginAccess();
    v30 = swift_unknownObjectWeakLoadStrong();
    sub_100195348(v27, v30);

    swift_beginAccess();
    v31 = swift_unknownObjectWeakLoadStrong();
    sub_1001940C8(v27, v31);

    swift_beginAccess();
    v32 = swift_unknownObjectWeakLoadStrong();
    sub_1001940D4(v27, v32);

    sub_10018FFB8(v27, a4, a5, 0);
    v52 = v26;
    v33 = *(v26 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
    v50 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
    v34 = *&v33[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
    v51 = v33;
    v35 = v33;
    v12 = v34;
    OS_dispatch_semaphore.wait()();

    v36 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
    swift_beginAccess();
    v37 = *&v35[v36];
    v38 = v37[2];
    if (!v38)
    {
      break;
    }

    v48[0] = v35;
    v48[1] = a3;
    v49 = a5;
    a3 = v37 + 4;

    a5 = 0;
    v9 = 0;
    a2 = &unk_1002A7A90;
    a4 = &unk_10023C960;
    v54 = v37;
    while (a5 < v37[2])
    {
      sub_1000A097C(a3, v58);
      v12 = sub_100095274(&unk_1002A7A90, &unk_10023C960);
      type metadata accessor for DaemonAccessory(0);
      v39 = swift_dynamicCast();
      if (v39)
      {
        v40 = v57;
        v10 = *(v57 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_callbackLock);
        v41 = __chkstk_darwin(v39);
        v48[-2] = v40;
        LODWORD(v48[-1]) = v55;
        __chkstk_darwin(v41);
        v12 = &v48[-4];
        v48[-2] = sub_100137CAC;
        v48[-1] = v42;

        os_unfair_lock_lock((v10 + 16));
        sub_100137D60(v43);
        os_unfair_lock_unlock((v10 + 16));

        v37 = v54;
      }

      ++a5;
      a3 += 5;
      if (v38 == a5)
      {

        a5 = v49;
        a4 = v53;
        v35 = v48[0];
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

LABEL_14:
  v44 = *&v51[v50];
  OS_dispatch_semaphore.signal()();

  v45 = v55;
  sub_10018D344(v55);
  sub_10019C9B8(v45, v46);
  swift_beginAccess();
  v47 = swift_unknownObjectWeakLoadStrong();
  sub_10018BA14(a4, a5, v47);

  sub_10018BFBC(a4, a5);
}

void sub_100117B8C(unsigned int a1, void *a2, void *a3, id *a4, unint64_t a5)
{
  v55 = a1;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002A66D8 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v13 = sub_100093DE8(v9, qword_1002A9110);
    (*(v10 + 16))(v12, v13, v9);
    sub_1000B5150(a2, v58, &qword_1002A9210, &unk_10023BE70);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    v16 = os_log_type_enabled(v14, v15);
    v53 = a4;
    if (v16)
    {
      v17 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v59 = v54;
      *v17 = 67109378;
      *(v17 + 4) = v55;
      *(v17 + 8) = 2080;
      sub_1000B5150(v58, v56, &qword_1002A9210, &unk_10023BE70);
      sub_100095274(&qword_1002A9210, &unk_10023BE70);
      v18 = String.init<A>(describing:)();
      v19 = a5;
      v20 = a3;
      v22 = v21;
      sub_100095C84(v58, &qword_1002A9210, &unk_10023BE70);
      v23 = sub_1000952D4(v18, v22, &v59);
      a3 = v20;
      a5 = v19;

      *(v17 + 10) = v23;
      _os_log_impl(&_mh_execute_header, v14, v15, "dockaccessoryd: Connection to PID %d (%s) has been interrupted", v17, 0x12u);
      sub_100095808(v54);

      a4 = v53;
    }

    else
    {

      sub_100095C84(v58, &qword_1002A9210, &unk_10023BE70);
    }

    v24 = *(v10 + 8);
    v10 += 8;
    v24(v12, v9);
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v26 = qword_1002B1CF0;
    v27 = v55;
    sub_100192048(v55, v25);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_100193938(v27, Strong);

    swift_beginAccess();
    v29 = swift_unknownObjectWeakLoadStrong();
    sub_10019506C(v27, v29);

    swift_beginAccess();
    v30 = swift_unknownObjectWeakLoadStrong();
    sub_100195348(v27, v30);

    swift_beginAccess();
    v31 = swift_unknownObjectWeakLoadStrong();
    sub_1001940C8(v27, v31);

    swift_beginAccess();
    v32 = swift_unknownObjectWeakLoadStrong();
    sub_1001940D4(v27, v32);

    sub_10018FFB8(v27, a4, a5, 0);
    v52 = v26;
    v33 = *(v26 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
    v50 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
    v34 = *&v33[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
    v51 = v33;
    v35 = v33;
    v12 = v34;
    OS_dispatch_semaphore.wait()();

    v36 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
    swift_beginAccess();
    v37 = *&v35[v36];
    v38 = v37[2];
    if (!v38)
    {
      break;
    }

    v48[0] = v35;
    v48[1] = a3;
    v49 = a5;
    a3 = v37 + 4;

    a5 = 0;
    v9 = 0;
    a2 = &unk_1002A7A90;
    a4 = &unk_10023C960;
    v54 = v37;
    while (a5 < v37[2])
    {
      sub_1000A097C(a3, v58);
      v12 = sub_100095274(&unk_1002A7A90, &unk_10023C960);
      type metadata accessor for DaemonAccessory(0);
      v39 = swift_dynamicCast();
      if (v39)
      {
        v40 = v57;
        v10 = *(v57 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_callbackLock);
        v41 = __chkstk_darwin(v39);
        v48[-2] = v40;
        LODWORD(v48[-1]) = v55;
        __chkstk_darwin(v41);
        v12 = &v48[-4];
        v48[-2] = sub_100136F94;
        v48[-1] = v42;

        os_unfair_lock_lock((v10 + 16));
        sub_1000F003C(v43);
        os_unfair_lock_unlock((v10 + 16));

        v37 = v54;
      }

      ++a5;
      a3 += 5;
      if (v38 == a5)
      {

        a5 = v49;
        a4 = v53;
        v35 = v48[0];
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

LABEL_14:
  v44 = *&v51[v50];
  OS_dispatch_semaphore.signal()();

  v45 = v55;
  sub_10018D344(v55);
  sub_10019C9B8(v45, v46);
  swift_beginAccess();
  v47 = swift_unknownObjectWeakLoadStrong();
  sub_10018BA14(a4, a5, v47);

  sub_10018BFBC(a4, a5);
}

id sub_1001182F8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100118354(uint64_t a1)
{
  if (qword_1002A6780 != -1)
  {
LABEL_52:
    swift_once();
  }

  v2 = qword_1002B1CF0;
  v61 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v3 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v3 + 4);

  v4 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyActuationClients;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  if (v8)
  {
    while (1)
    {
      v11 = v10;
LABEL_10:
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v13 = v12 | (v11 << 6);
      v14 = *(*(v5 + 48) + 4 * v13);
      v15 = *(*(v5 + 56) + 8 * v13);
      sub_1001124F8(v14, v15, a1);

      if (!v8)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    if (v11 >= v9)
    {
      break;
    }

    v8 = *(v5 + 64 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }

  v16 = *(v2 + v61);

  os_unfair_lock_unlock(v16 + 4);

  v17 = *(v2 + v61);

  os_unfair_lock_lock(v17 + 4);

  v18 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyEventClients;
  swift_beginAccess();
  a1 = *(v2 + v18);
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a1 + 64);
  v22 = (v19 + 63) >> 6;

  v23 = 0;
  while (v21)
  {
    v24 = v23;
LABEL_21:
    v25 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v26 = *(*(a1 + 56) + ((v24 << 9) | (8 * v25)));
    v27 = [v26 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100095274(&qword_1002A91F0, qword_10023DDA0);
    if (swift_dynamicCast())
    {
      [swift_unknownObjectRetain() disconnectedWithErr:0];
      swift_unknownObjectRelease_n();
    }

    v23 = v24;
  }

  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_49;
    }

    if (v24 >= v22)
    {
      break;
    }

    v21 = *(a1 + 64 + 8 * v24);
    ++v23;
    if (v21)
    {
      goto LABEL_21;
    }
  }

  v28 = *(v2 + v61);

  os_unfair_lock_unlock(v28 + 4);

  v29 = *(v2 + v61);

  os_unfair_lock_lock(v29 + 4);

  v30 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyBatteryClients;
  swift_beginAccess();
  v31 = *(v2 + v30);
  a1 = v31 + 64;
  v32 = 1 << *(v31 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(v31 + 64);
  v35 = (v32 + 63) >> 6;

  v36 = 0;
  while (v34)
  {
LABEL_32:
    v38 = __clz(__rbit64(v34));
    v34 &= v34 - 1;
    v39 = *(v31 + 56) + ((v36 << 10) | (16 * v38));
    if (*v39)
    {
      v40 = *(v39 + 8);
      v41 = *v39;
      v42 = v40;
      v43 = [v41 remoteObjectProxy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100095274(&qword_1002A91F8, &qword_10023F050);
      if (swift_dynamicCast())
      {
        [swift_unknownObjectRetain() disconnectedWithErr:0];
        swift_unknownObjectRelease_n();
      }
    }
  }

  while (1)
  {
    v37 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      goto LABEL_50;
    }

    if (v37 >= v35)
    {
      break;
    }

    v34 = *(a1 + 8 * v37);
    ++v36;
    if (v34)
    {
      v36 = v37;
      goto LABEL_32;
    }
  }

  v44 = *(v2 + v61);

  os_unfair_lock_unlock(v44 + 4);

  v45 = *(v2 + v61);

  os_unfair_lock_lock(v45 + 4);

  v46 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyTrackingSummaryClients;
  swift_beginAccess();
  a1 = *(v2 + v46);
  v47 = 1 << *(a1 + 32);
  v48 = -1;
  if (v47 < 64)
  {
    v48 = ~(-1 << v47);
  }

  v49 = v48 & *(a1 + 64);
  v50 = (v47 + 63) >> 6;

  v51 = 0;
  while (v49)
  {
LABEL_44:
    v53 = __clz(__rbit64(v49));
    v49 &= v49 - 1;
    v54 = *(a1 + 56) + ((v51 << 10) | (16 * v53));
    if (*v54)
    {
      v55 = *(v54 + 8);
      v56 = *v54;
      v57 = v55;
      v58 = [v56 remoteObjectProxy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100095274(&qword_1002A9200, &qword_10023C4F0);
      if (swift_dynamicCast())
      {
        [swift_unknownObjectRetain() disconnectedWithErr:0];
        swift_unknownObjectRelease_n();
      }
    }
  }

  while (1)
  {
    v52 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      goto LABEL_51;
    }

    if (v52 >= v50)
    {
      break;
    }

    v49 = *(a1 + 64 + 8 * v52);
    ++v51;
    if (v49)
    {
      v51 = v52;
      goto LABEL_44;
    }
  }

  v59 = *(v2 + v61);

  os_unfair_lock_unlock(v59 + 4);
}

uint64_t sub_1001189D4(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v107 = a7;
  v108 = a8;
  v112 = a5;
  v113 = a6;
  v109 = a3;
  v110 = a4;
  v111 = a2;
  v116 = a9;
  v10 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  __chkstk_darwin(v10 - 8);
  v118 = &v104 - v11;
  v117 = type metadata accessor for Errors();
  v12 = *(v117 - 8);
  __chkstk_darwin(v117);
  v14 = (&v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v114 = v15;
  v115 = v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v104 - v21;
  v23 = __chkstk_darwin(v20);
  v105 = &v104 - v24;
  v25 = __chkstk_darwin(v23);
  v106 = &v104 - v26;
  __chkstk_darwin(v25);
  v28 = &v104 - v27;
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v29 = qword_1002B1CF0;
  v30 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v31 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v31 + 4);

  v32 = *(v29 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
  v33 = *(v29 + v30);
  v34 = v32;

  os_unfair_lock_unlock(v33 + 4);

  if (v32)
  {
    v35 = v34;
    v36 = dispatch thunk of DockCoreAccessory.info.getter();
    v104 = v35;

    type metadata accessor for DockCoreInfo();
    v37 = a1;
    LOBYTE(v35) = static NSObject.== infix(_:_:)();

    if (v35)
    {
      v38 = sub_1001884E4(v37);
      if (v38)
      {
        v39 = v38;
        type metadata accessor for ActuationController();
        if (dispatch thunk of DockCoreAccessory.hasSystem(name:kind:)())
        {
          sub_10019A4F0(1);
          v40 = v39;
          sub_100198E44(v39, v41);

          DockCoreInfo.type.getter();
          v42 = DockCoreAccessoryType.rawValue.getter();
          if (v42 == DockCoreAccessoryType.rawValue.getter())
          {
            v43 = dispatch thunk of DockCoreAccessory.info.getter();
            v44 = swift_allocObject();
            *(v44 + 16) = 1;
            *(v44 + 24) = v37;
            *(v44 + 32) = v40;
            v45 = v113;
            *(v44 + 40) = v112;
            *(v44 + 48) = v45;
            v46 = v37;
            v47 = v40;

            v48 = sub_1001971B4(v43, v111, v109, v110, sub_100137D5C, v44);
            v50 = v49;

            if (v48)
            {
              if (v50)
              {
                v51 = qword_1002A66D8;
                v112 = v48;

                v52 = v115;
                if (v51 != -1)
                {
                  swift_once();
                }

                v53 = v114;
                v54 = sub_100093DE8(v114, qword_1002A9110);
                v55 = v106;
                (*(v52 + 16))(v106, v54, v53);
                v113 = v47;
                v56 = v47;
                v57 = v108;

                v58 = Logger.logObject.getter();
                v59 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v58, v59))
                {
                  v60 = swift_slowAlloc();
                  v61 = swift_slowAlloc();
                  v62 = swift_slowAlloc();
                  v119 = v62;
                  *v60 = 138412802;
                  v63 = dispatch thunk of DockCoreAccessory.info.getter();
                  *(v60 + 4) = v63;
                  *v61 = v63;
                  *(v60 + 12) = 2080;
                  v64 = Array.description.getter();
                  v66 = sub_1000952D4(v64, v65, &v119);

                  *(v60 + 14) = v66;
                  *(v60 + 22) = 1024;
                  *(v60 + 24) = v111;
                  _os_log_impl(&_mh_execute_header, v58, v59, "Animator was started for %@, target %s, owner %d", v60, 0x1Cu);
                  sub_100095C84(v61, &unk_1002A6F60, &unk_10023C4E0);
                  v57 = v108;

                  sub_100095808(v62);

                  (*(v52 + 8))(v106, v53);
                }

                else
                {

                  (*(v52 + 8))(v55, v53);
                }

                sub_1000C4E14(v107, v57, 0);
                v47 = v113;
                goto LABEL_39;
              }

              v92 = v115;
              if (*(v48 + 16) == v111)
              {

                sub_1000C4E14(v107, v108, 0);
LABEL_39:
                v91 = v118;
                (*(v12 + 56))(v118, 1, 1, v117);
                sub_10010B188(1, v91);

                return sub_100095C84(v91, &unk_1002A6F30, &unk_10023C4D0);
              }

              v93 = qword_1002A66D8;

              if (v93 != -1)
              {
                swift_once();
              }

              v94 = v114;
              v95 = sub_100093DE8(v114, qword_1002A9110);
              v96 = v105;
              (*(v92 + 16))(v105, v95, v94);

              v97 = v110;

              v98 = Logger.logObject.getter();
              v99 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v98, v99))
              {
                v100 = swift_slowAlloc();
                v112 = swift_slowAlloc();
                v119 = v112;
                *v100 = 136315394;
                v113 = v47;
                v101 = *(v48 + 24);
                v102 = *(v48 + 32);

                v103 = sub_1000952D4(v101, v102, &v119);
                v47 = v113;

                *(v100 + 4) = v103;
                *(v100 + 12) = 2080;
                *(v100 + 14) = sub_1000952D4(v109, v97, &v119);
                _os_log_impl(&_mh_execute_header, v98, v99, "animator owned by %s, rejecting request from %s", v100, 0x16u);
                swift_arrayDestroy();

                (*(v92 + 8))(v105, v114);
              }

              else
              {

                (*(v92 + 8))(v96, v114);
              }

              *v14 = 0xD000000000000021;
              v14[1] = 0x8000000100231AD0;
              v82 = v117;
              (*(v12 + 104))(v14, enum case for Errors.UnexpectedError(_:), v117);
              v83 = v118;
              (*(v12 + 16))(v118, v14, v82);
              (*(v12 + 56))(v83, 0, 1, v82);
              sub_10010B188(0, v83);
            }

            else
            {
              *v14 = 0xD000000000000014;
              v14[1] = 0x8000000100231AB0;
              v82 = v117;
              (*(v12 + 104))(v14, enum case for Errors.NotFound(_:), v117);
              v83 = v118;
              (*(v12 + 16))(v118, v14, v82);
              (*(v12 + 56))(v83, 0, 1, v82);
              sub_10010B188(0, v83);
            }
          }

          else
          {
            type metadata accessor for DockCoreManager();
            if (static DockCoreManager.debugAllowed.getter())
            {
              DockCoreInfo.type.getter();
              v84 = DockCoreAccessoryType.rawValue.getter();
              if (v84 == DockCoreAccessoryType.rawValue.getter())
              {
                if (qword_1002A66D8 != -1)
                {
                  swift_once();
                }

                v85 = v114;
                v86 = sub_100093DE8(v114, qword_1002A9110);
                v87 = v115;
                (*(v115 + 16))(v22, v86, v85);
                v88 = Logger.logObject.getter();
                v89 = static os_log_type_t.default.getter();
                if (os_log_type_enabled(v88, v89))
                {
                  v90 = swift_slowAlloc();
                  *v90 = 0;
                  _os_log_impl(&_mh_execute_header, v88, v89, "setActuatorVelocities: noop for mock device", v90, 2u);
                }

                (*(v87 + 8))(v22, v85);
                v91 = v118;
                (*(v12 + 56))(v118, 1, 1, v117);
                sub_10010B188(1, v91);

                return sub_100095C84(v91, &unk_1002A6F30, &unk_10023C4D0);
              }
            }

            *v14 = 0x6C706D6920746F6ELL;
            v14[1] = 0xEF6465746E656D65;
            v82 = v117;
            (*(v12 + 104))(v14, enum case for Errors.OperationNotSupported(_:), v117);
            v83 = v118;
            (*(v12 + 16))(v118, v14, v82);
            (*(v12 + 56))(v83, 0, 1, v82);
            sub_10010B188(0, v83);
          }

LABEL_25:
          sub_100095C84(v83, &unk_1002A6F30, &unk_10023C4D0);
          return (*(v12 + 8))(v14, v82);
        }
      }

      if (qword_1002A66D8 != -1)
      {
        swift_once();
      }

      v76 = v114;
      v77 = sub_100093DE8(v114, qword_1002A9110);
      v78 = v115;
      (*(v115 + 16))(v19, v77, v76);
      v79 = Logger.logObject.getter();
      v80 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        *v81 = 0;
        _os_log_impl(&_mh_execute_header, v79, v80, "Failed to find valid accessory with actuation controller.", v81, 2u);
      }

      (*(v78 + 8))(v19, v76);
      *v14 = 0xD000000000000015;
      v14[1] = 0x8000000100231A90;
      v82 = v117;
      (*(v12 + 104))(v14, enum case for Errors.NotFound(_:), v117);
      v83 = v118;
      (*(v12 + 16))(v118, v14, v82);
      (*(v12 + 56))(v83, 0, 1, v82);
      sub_10010B188(0, v83);

      goto LABEL_25;
    }
  }

  if (qword_1002A66D8 != -1)
  {
    swift_once();
  }

  v67 = v114;
  v68 = sub_100093DE8(v114, qword_1002A9110);
  v69 = v115;
  (*(v115 + 16))(v28, v68, v67);
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    *v72 = 0;
    _os_log_impl(&_mh_execute_header, v70, v71, "No such connected accessory, not setting velocity", v72, 2u);
  }

  (*(v69 + 8))(v28, v67);
  *v14 = 0xD000000000000016;
  v14[1] = 0x8000000100231A70;
  v73 = v117;
  (*(v12 + 104))(v14, enum case for Errors.OperationNotSupported(_:), v117);
  v74 = v118;
  (*(v12 + 16))(v118, v14, v73);
  (*(v12 + 56))(v74, 0, 1, v73);
  sub_10010B188(0, v74);

  sub_100095C84(v74, &unk_1002A6F30, &unk_10023C4D0);
  return (*(v12 + 8))(v14, v73);
}