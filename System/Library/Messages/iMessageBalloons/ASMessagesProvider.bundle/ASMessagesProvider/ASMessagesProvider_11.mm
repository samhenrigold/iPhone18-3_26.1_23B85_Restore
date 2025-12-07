double *sub_1444C4(double *result, int64_t a2, char a3, double *a4)
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
    sub_BD88(&qword_946480, &qword_786E70);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    sub_BD88(&qword_946488, &unk_786E78);
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_1445F8(double *result, int64_t a2, char a3, double *a4)
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
    sub_BD88(&qword_9464B0, &unk_786EB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_144720(double *result, int64_t a2, char a3, double *a4)
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
    sub_BD88(&qword_941A00, &unk_781030);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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

  v13 = (v10 + 4);
  v14 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

double *sub_144824(double *result, int64_t a2, char a3, double *a4)
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
    sub_BD88(&qword_946448, &qword_786E18);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    sub_BD88(&qword_946450, &qword_786E20);
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_144958(double *result, int64_t a2, char a3, double *a4)
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
    sub_BD88(&qword_9419F0, &unk_781020);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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

  v13 = (v10 + 4);
  v14 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

double *sub_144A5C(double *result, int64_t a2, char a3, double *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 3);
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

  v14 = *(a4 + 2);
  if (v13 <= v14)
  {
    v15 = *(a4 + 2);
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_BD88(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size_0(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    *(v16 + 2) = v14;
    *(v16 + 3) = 2 * (v18 >> 3);
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

    a4[2] = 0.0;
  }

  else
  {
    sub_BD88(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

double *sub_144B90(double *result, int64_t a2, char a3, double *a4)
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
    sub_BD88(&qword_941AF0, &qword_781110);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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

  v13 = (v10 + 4);
  v14 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

double *sub_144C94(double *result, int64_t a2, char a3, double *a4)
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
    sub_BD88(&qword_941A88, &unk_786E40);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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

  v13 = (v10 + 4);
  v14 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_144DA0(double *result, int64_t a2, char a3, double *a4)
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
    sub_BD88(&qword_9419F8, &unk_786E00);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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

  v13 = (v10 + 4);
  v14 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_144EAC(double *result, int64_t a2, char a3, double *a4)
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
    sub_BD88(&qword_9464E8, &unk_786F00);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_144FC8(double *result, int64_t a2, char a3, double *a4)
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
    sub_BD88(&qword_946510, &unk_786F40);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_1450E8(double *result, int64_t a2, char a3, double *a4)
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
    sub_BD88(&qword_95B250, "hq\b");
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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

  v13 = (v10 + 4);
  v14 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

double *sub_1451EC(double *result, int64_t a2, char a3, double *a4)
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
    sub_BD88(&qword_946508, &qword_786F38);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_145334(double *result, int64_t a2, char a3, double *a4)
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
    sub_BD88(&unk_94EC60, &unk_786EF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    sub_BD88(&qword_941BA0, &qword_7811C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_145468(double *result, int64_t a2, char a3, double *a4)
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
    sub_BD88(&qword_946498, &qword_786E90);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_145588(double *result, int64_t a2, char a3, double *a4)
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
    sub_BD88(&qword_9464D8, &unk_786EE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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

  v13 = (v10 + 4);
  v14 = (a4 + 4);
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    a4[2] = 0.0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

double *sub_145688(double *result, int64_t a2, char a3, double *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 3);
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

  v14 = *(a4 + 2);
  if (v13 <= v14)
  {
    v15 = *(a4 + 2);
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

  sub_BD88(a5, a6);
  v16 = *(sub_BD88(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size_0(v19);
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

  *(v19 + 2) = v14;
  *(v19 + 3) = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_BD88(a7, a8) - 8);
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

    a4[2] = 0.0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

double *sub_145870(double *result, int64_t a2, char a3, double *a4)
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
    sub_BD88(&qword_9464D0, &qword_786ED8);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_145990(double *result, int64_t a2, char a3, double *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
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

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
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

  sub_BD88(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size_0(v17);
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

  *(v17 + 2) = v12;
  *(v17 + 3) = 2 * ((result - v16) / v15);
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

    a4[2] = 0.0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

double *sub_145B6C(double *result, int64_t a2, char a3, double *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 3);
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

  v14 = *(a4 + 2);
  if (v13 <= v14)
  {
    v15 = *(a4 + 2);
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_BD88(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size_0(v16);
    *(v16 + 2) = v14;
    *(v16 + 3) = 2 * ((v17 - 32) / 40);
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

    a4[2] = 0.0;
  }

  else
  {
    sub_BD88(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

double sub_145CB4(uint64_t a1, uint64_t a2, void *a3, __n128 a4, double a5)
{
  v48 = a2;
  v54 = a1;
  v51 = sub_766C30();
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_766C50();
  v52 = *(v7 - 8);
  v53 = v7;
  __chkstk_darwin(v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_767170();
  v55 = *(v47 - 8);
  __chkstk_darwin(v47);
  v46 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_75D850();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v45 - v16;
  v18 = sub_75BDF0();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75BDE0();
  sub_75BE10();
  sub_146608(&qword_946440, &type metadata accessor for OffsetGridLayout, &protocol conformance descriptor for OffsetGridLayout);
  sub_766ED0();
  v23 = v22;
  (*(v19 + 8))(v21, v18);
  v24 = [a3 traitCollection];
  if (sub_769A00())
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v25 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v25 = qword_946938;
  }

  v26 = sub_BE38(v11, v25);
  (*(v12 + 16))(v14, v26, v11);

  (*(v12 + 32))(v17, v14, v11);
  sub_75D830();
  v28 = v27;
  (*(v12 + 8))(v17, v11);
  sub_BD88(&qword_9419E8, &unk_786DF0);
  v29 = (*(v55 + 80) + 32) & ~*(v55 + 80);
  v30 = 7 * *(v55 + 72);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_77DCF0;
  v57 = &type metadata for CGFloat;
  v58 = &protocol witness table for CGFloat;
  v56[0] = 0x4044000000000000;
  sub_767180();
  v57 = &type metadata for CGFloat;
  v58 = &protocol witness table for CGFloat;
  v56[0] = v23;
  sub_767180();
  v57 = &type metadata for CGFloat;
  v58 = &protocol witness table for CGFloat;
  v56[0] = 0x4034000000000000;
  sub_767180();
  v57 = &type metadata for CGFloat;
  v58 = &protocol witness table for CGFloat;
  v56[0] = 0;
  sub_767180();
  v57 = &type metadata for CGFloat;
  v58 = &protocol witness table for CGFloat;
  v56[0] = 0x4033000000000000;
  sub_767180();
  v57 = &type metadata for CGFloat;
  v58 = &protocol witness table for CGFloat;
  v56[0] = 0x4032000000000000;
  sub_767180();
  v57 = &type metadata for CGFloat;
  v58 = &protocol witness table for CGFloat;
  v56[0] = v28;
  sub_767180();
  if ((sub_7692D0() & 1) == 0)
  {
    if (qword_93D4E8 != -1)
    {
      swift_once();
    }

    v32 = sub_7666D0();
    sub_BE38(v32, qword_99E6C8);
    v33 = sub_7653B0();
    v57 = v33;
    v58 = sub_146608(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v34 = sub_B1B4(v56);
    (*(*(v33 - 8) + 104))(v34, enum case for Feature.measurement_with_labelplaceholder(_:), v33);
    sub_765C30();
    sub_BEB8(v56);
    sub_762CB0();
    v36 = v35;
    if (qword_93C408 != -1)
    {
      swift_once();
    }

    v37 = sub_766CA0();
    sub_BE38(v37, qword_9463F0);
    sub_766720();
    v57 = &type metadata for CGFloat;
    v58 = &protocol witness table for CGFloat;
    *v56 = v36 + v38;
    v39 = v46;
    sub_767180();
    v31 = sub_7B0B0((&dword_0 + 1), 8, 1, v31);
    *(v31 + 16) = 8;
    (*(v55 + 32))(v31 + v29 + v30, v39, v47);
  }

  v40.n128_f64[0] = (*(v49 + 104))(v50, enum case for StackMeasurable.Axis.vertical(_:), v51);
  sub_140564(v31, v40);

  sub_766C40();
  v41 = v53;
  sub_7665A0();
  v43 = v42;
  (*(v52 + 8))(v9, v41);
  return v43;
}

uint64_t sub_146570(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_B1B4(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_10914(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_146608(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_146650()
{
  v1 = v0;
  v25 = sub_760AD0();
  v23 = *(v25 - 8);
  __chkstk_darwin(v25);
  v24 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  v6 = sub_BD88(&qword_9464F8, &qword_786F30);
  __chkstk_darwin(v6);
  v7 = OBJC_IVAR____TtC18ASMessagesProvider32ArcadeShowcaseCollectionViewCell_itemLayoutContext;
  v8 = sub_75C840();
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtC18ASMessagesProvider32ArcadeShowcaseCollectionViewCell_iconGridView;
  v10 = type metadata accessor for IconGridView(0);
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____TtC18ASMessagesProvider12IconGridView_artworkViews] = _swiftEmptyArrayStorage;
  sub_759210();
  sub_7667C0();
  sub_16194(&qword_946500, &qword_9464F8, &qword_786F30, &protocol conformance descriptor for ViewRecycler<A>);
  sub_767480();
  *&v11[OBJC_IVAR____TtC18ASMessagesProvider12IconGridView_impressionableArtworks] = 0;
  *&v11[OBJC_IVAR____TtC18ASMessagesProvider12IconGridView_artworkLoader] = 0;
  v12 = &v11[OBJC_IVAR____TtC18ASMessagesProvider12IconGridView_configuration];
  *v12 = vdupq_n_s64(0x4056000000000000uLL);
  *(v12 + 2) = 0x4024000000000000;
  *(v12 + 3) = 2;
  *(v12 + 2) = xmmword_786D80;
  v26.receiver = v11;
  v26.super_class = v10;
  *(v0 + v9) = objc_msgSendSuper2(&v26, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v13 = OBJC_IVAR____TtC18ASMessagesProvider32ArcadeShowcaseCollectionViewCell_wordmarkImageView;
  *(v0 + v13) = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v14 = OBJC_IVAR____TtC18ASMessagesProvider32ArcadeShowcaseCollectionViewCell_descriptionLabel;
  if (qword_93D4E8 != -1)
  {
    swift_once();
  }

  v15 = sub_7666D0();
  v16 = sub_BE38(v15, qword_99E6C8);
  v17 = *(v15 - 8);
  (*(v17 + 16))(v5, v16, v15);
  (*(v17 + 56))(v5, 0, 1, v15);
  (*(v23 + 104))(v24, enum case for DirectionalTextAlignment.none(_:), v25);
  v18 = objc_allocWithZone(sub_75BB20());
  *(v1 + v14) = sub_75BB10();
  v19 = OBJC_IVAR____TtC18ASMessagesProvider32ArcadeShowcaseCollectionViewCell_offerButton;
  v20 = objc_allocWithZone(type metadata accessor for OfferButton());
  *(v1 + v19) = sub_1DD00C(0);
  v21 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider32ArcadeShowcaseCollectionViewCell_offerLabelPresenter);
  *v21 = 0u;
  v21[1] = 0u;
  sub_76A840();
  __break(1u);
}

uint64_t sub_146AB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_941C20, &unk_781240);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_146B28(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_946518, &qword_786F50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t FlowAction.destination.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_BD88(&unk_9442D0, &unk_780660);
  __chkstk_darwin(v3 - 8);
  v5 = v9 - v4;

  sub_764BF0();
  sub_146CF0(v1, v9, v5);
  v6 = type metadata accessor for FlowDestination(0);
  v7 = *(*(v6 - 8) + 48);
  if (v7(v5, 1, v6) != 1)
  {
    return sub_14B504(v5, a1, type metadata accessor for FlowDestination);
  }

  swift_storeEnumTagMultiPayload();
  result = (v7)(v5, 1, v6);
  if (result != 1)
  {
    return sub_10A2C(v5, &unk_9442D0, &unk_780660);
  }

  return result;
}

uint64_t sub_146CF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v301 = a3;
  v302 = a2;
  v4 = sub_BD88(&qword_946528, qword_786F70);
  __chkstk_darwin(v4 - 8);
  v271 = &v256 - v5;
  v273 = type metadata accessor for ComponentOverflowData(0);
  v270 = *(v273 - 8);
  __chkstk_darwin(v273);
  v272 = (&v256 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_BD88(&qword_943F30, &qword_7837A8);
  __chkstk_darwin(v7 - 8);
  v276 = &v256 - v8;
  v9 = sub_BD88(&unk_940200, &unk_7AEB70);
  __chkstk_darwin(v9 - 8);
  v283 = &v256 - v10;
  v280 = sub_764CF0();
  v279 = *(v280 - 8);
  __chkstk_darwin(v280);
  v278 = &v256 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v12 - 8);
  v269 = &v256 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v268 = &v256 - v15;
  __chkstk_darwin(v16);
  v267 = &v256 - v17;
  __chkstk_darwin(v18);
  v264 = &v256 - v19;
  __chkstk_darwin(v20);
  v266 = &v256 - v21;
  __chkstk_darwin(v22);
  v263 = &v256 - v23;
  __chkstk_darwin(v24);
  v277 = &v256 - v25;
  __chkstk_darwin(v26);
  v295 = &v256 - v27;
  __chkstk_darwin(v28);
  v284 = &v256 - v29;
  __chkstk_darwin(v30);
  v285 = &v256 - v31;
  __chkstk_darwin(v32);
  v288 = &v256 - v33;
  __chkstk_darwin(v34);
  v287 = &v256 - v35;
  __chkstk_darwin(v36);
  v290 = &v256 - v37;
  __chkstk_darwin(v38);
  v291 = &v256 - v39;
  __chkstk_darwin(v40);
  v293 = &v256 - v41;
  __chkstk_darwin(v42);
  v292 = &v256 - v43;
  __chkstk_darwin(v44);
  v46 = &v256 - v45;
  v47 = sub_7570A0();
  v298 = *(v47 - 8);
  v299 = v47;
  __chkstk_darwin(v47);
  v265 = &v256 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v262 = &v256 - v50;
  __chkstk_darwin(v51);
  v260 = &v256 - v52;
  __chkstk_darwin(v53);
  v257 = &v256 - v54;
  __chkstk_darwin(v55);
  v275 = &v256 - v56;
  __chkstk_darwin(v57);
  v294 = &v256 - v58;
  __chkstk_darwin(v59);
  v282 = &v256 - v60;
  __chkstk_darwin(v61);
  v281 = &v256 - v62;
  __chkstk_darwin(v63);
  v286 = &v256 - v64;
  __chkstk_darwin(v65);
  v289 = &v256 - v66;
  __chkstk_darwin(v67);
  v69 = &v256 - v68;
  __chkstk_darwin(v70);
  v72 = &v256 - v71;
  __chkstk_darwin(v73);
  v75 = &v256 - v74;
  v76 = sub_765490();
  v77 = *(v76 - 8);
  __chkstk_darwin(v76);
  v79 = &v256 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for FlowDestination(0);
  v300 = *(v80 - 8);
  __chkstk_darwin(v80);
  v261 = (&v256 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v82);
  v259 = (&v256 - v83);
  __chkstk_darwin(v84);
  v258 = (&v256 - v85);
  __chkstk_darwin(v86);
  v88 = (&v256 - v87);
  sub_758AE0();
  v256 = v77;
  v89 = *(v77 + 88);
  v297 = v76;
  v90 = v89(v79, v76);
  if (v90 != enum case for FlowPage.search(_:))
  {
    v95 = v88;
    v296 = a1;
    v274 = v80;
    if (v90 == enum case for FlowPage.product(_:))
    {
      sub_758B00();
      v97 = v298;
      v96 = v299;
      if ((*(v298 + 48))(v46, 1, v299) == 1)
      {
LABEL_5:
        v98 = v46;
        goto LABEL_14;
      }

      (*(v97 + 32))(v75, v46, v96);
      v102 = sub_75F650();
      __chkstk_darwin(v102);
      *(&v256 - 2) = v302;
      sub_758B10();
      v103 = v304;
      if (v304)
      {

        v104 = sub_75F620();
      }

      else
      {
        v104 = 0;
      }

      v116 = sub_BD88(&qword_955D70, &qword_783808);
      v117 = v116[12];
      v118 = v116[16];
      v119 = v116[20];
      v120 = v116[24];
      v121 = v299;
      (*(v97 + 16))(v95, v75, v299);
      *(v95 + v117) = 0;
      *(v95 + v118) = v103;
      *(v95 + v119) = v104;
      v122 = sub_758AC0();

      (*(v97 + 8))(v75, v121);
      *(v95 + v120) = v122;
      v93 = v274;
      goto LABEL_25;
    }

    v99 = v299;
    if (v90 == enum case for FlowPage.dynamicUI(_:))
    {
      v100 = v295;
      sub_758B00();
      v101 = v298;
      if ((*(v298 + 48))(v100, 1, v99) == 1)
      {
        v98 = v100;
        goto LABEL_14;
      }

      v109 = *(v101 + 32);
      v110 = v294;
      v109(v294, v100, v99);
      sub_75EA80();
      sub_758B10();
      v111 = v304;
      v92 = v302;
      if (!v304)
      {
        if (qword_93DF00 != -1)
        {
          swift_once();
        }

        v128 = sub_768FF0();
        sub_BE38(v128, qword_9A0430);
        sub_BD88(&qword_93FD00, &unk_77DF10);
        sub_7685F0();
        *(swift_allocObject() + 16) = xmmword_77E280;
        sub_768540();
        v306 = v297;
        sub_B1B4(&v304);
        sub_758AE0();
        sub_7685E0();
        sub_10A2C(&v304, &unk_93FBD0, &qword_77DFA0);
        sub_768E90();

        (*(v101 + 8))(v294, v299);
        goto LABEL_16;
      }

      v112 = sub_BD88(&qword_943FC8, &qword_7837F8);
      v113 = v110;
      v114 = *(v112 + 48);
      v109(v95, v113, v99);
      *(v95 + v114) = v111;
      v93 = v274;
LABEL_19:
      swift_storeEnumTagMultiPayload();
      v94 = v95;
      goto LABEL_27;
    }

    if (v90 == enum case for FlowPage.webView(_:))
    {
      v105 = v293;
      sub_758B00();
      v106 = v298;
      if ((*(v298 + 48))(v105, 1, v99) == 1)
      {
        v98 = v105;
LABEL_14:
        sub_10A2C(v98, &unk_93FD30, qword_77F240);
        v92 = v302;
        if (qword_93DF00 == -1)
        {
LABEL_15:
          v107 = sub_768FF0();
          sub_BE38(v107, qword_9A0430);
          sub_BD88(&qword_93FD00, &unk_77DF10);
          sub_7685F0();
          *(swift_allocObject() + 16) = xmmword_77E280;
          sub_768540();
          v306 = v297;
          sub_B1B4(&v304);
          sub_758AE0();
          sub_7685E0();
          sub_10A2C(&v304, &unk_93FBD0, &qword_77DFA0);
          sub_768E90();

LABEL_16:
          sub_10A2C(v92, &unk_93FBD0, &qword_77DFA0);
          return (*(v300 + 56))(v301, 1, 1, v274);
        }

LABEL_91:
        swift_once();
        goto LABEL_15;
      }

      v124 = *(v106 + 32);
      v124(v69, v105, v99);
      v124(v95, v69, v99);
      v93 = v274;
LABEL_25:
      swift_storeEnumTagMultiPayload();
LABEL_26:
      v94 = v95;
      v92 = v302;
      goto LABEL_27;
    }

    if (v90 == enum case for FlowPage.unknown(_:))
    {
      v46 = v292;
      sub_758B00();
      v115 = v298;
      if ((*(v298 + 48))(v46, 1, v99) == 1)
      {
        goto LABEL_5;
      }

      (*(v115 + 32))(v72, v46, v99);
      sub_BD88(&qword_955D60, &qword_783800);
      (*(v115 + 16))(v95, v72, v99);
      sub_758AF0();

      (*(v115 + 8))(v72, v99);
      v93 = v274;
      goto LABEL_25;
    }

    v125 = v298;
    if (v90 == enum case for FlowPage.viewController(_:))
    {
      v126 = sub_BE70(0, &qword_9434E0, UIViewController_ptr);
      __chkstk_darwin(v126);
      v92 = v302;
      *(&v256 - 2) = v302;
      sub_758B10();
      v127 = v304;
      if (!v304)
      {
        if (qword_93DF00 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_91;
      }

LABEL_31:

      *v95 = v127;
      v93 = v274;
      goto LABEL_19;
    }

    if (v90 == enum case for FlowPage.gallery(_:))
    {
      v129 = sub_BD88(&qword_945360, &unk_7851C0);
      __chkstk_darwin(v129);
      v92 = v302;
      *(&v256 - 2) = v302;
      sub_758B10();
      v127 = v304;
      if (!v304)
      {
        if (qword_93DF00 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_91;
      }

      goto LABEL_31;
    }

    if (v90 == enum case for FlowPage.video(_:))
    {
      v46 = v291;
      sub_758B00();
      if ((*(v125 + 48))(v46, 1, v99) == 1)
      {
        goto LABEL_5;
      }

      v130 = *(v125 + 32);
      v131 = v289;
      v130(v289, v46, v99);
      v132 = sub_764BE0();
      __chkstk_darwin(v132);
      v92 = v302;
      *(&v256 - 2) = v302;
      sub_758B10();
      if (v304)
      {
        v133 = sub_764BC0();
      }

      else
      {

        v133 = 0;
      }

      v146 = *(sub_BD88(&unk_955D40, &qword_7837E8) + 48);
      v130(v95, v131, v99);
      *(v95 + v146) = v133;
      v93 = v274;
      goto LABEL_19;
    }

    if (v90 == enum case for FlowPage.page(_:))
    {
LABEL_45:
      v134 = v290;
      sub_758B00();
      v135 = sub_7594D0();
      __chkstk_darwin(v135);
      v92 = v302;
      *(&v256 - 2) = v302;
      sub_758B10();

      v136 = v304;
      v137 = *(sub_BD88(&qword_940A50, &qword_782590) + 48);
      *v95 = v136;
      sub_109C4(v134, v95 + v137, &unk_93FD30, qword_77F240);
      v93 = v274;
      goto LABEL_19;
    }

    if (v90 == enum case for FlowPage.searchChartsAndCategories(_:))
    {
      v138 = v290;
      sub_758B00();
      v139 = sub_762E20();
      __chkstk_darwin(v139);
      v92 = v302;
      *(&v256 - 2) = v302;
      sub_758B10();

      v140 = v304;
      v141 = *(sub_BD88(&qword_943FC0, &qword_7837F0) + 48);
      *v95 = v140;
      sub_109C4(v138, v95 + v141, &unk_93FD30, qword_77F240);
      v93 = v274;
      goto LABEL_19;
    }

    if (v90 == enum case for FlowPage.topCharts(_:))
    {
      v142 = v290;
      sub_758B00();
      v143 = sub_75A610();
      __chkstk_darwin(v143);
      v92 = v302;
      *(&v256 - 2) = v302;
      sub_758B10();

      v144 = v304;
      v145 = *(sub_BD88(&qword_955CE0, &qword_7837E0) + 48);
      *v95 = v144;
      sub_109C4(v142, v95 + v145, &unk_93FD30, qword_77F240);
      v93 = v274;
      goto LABEL_19;
    }

    if (v90 == enum case for FlowPage.updates(_:))
    {
LABEL_229:

      v93 = v274;
      goto LABEL_25;
    }

    if (v90 == enum case for FlowPage.today(_:))
    {
      v147 = v287;
      sub_758B00();
      if ((*(v125 + 48))(v147, 1, v99) != 1)
      {

        v150 = *(v125 + 32);
        v151 = v286;
        v150(v286, v147, v99);
        v150(v95, v151, v99);
        v93 = v274;
        goto LABEL_25;
      }

      v148 = v147;
LABEL_59:
      sub_10A2C(v148, &unk_93FD30, qword_77F240);
      if (qword_93DF00 == -1)
      {
LABEL_60:
        v149 = sub_768FF0();
        sub_BE38(v149, qword_9A0430);
        sub_BD88(&qword_93FD00, &unk_77DF10);
        sub_7685F0();
        *(swift_allocObject() + 16) = xmmword_77E280;
        sub_768540();
        v306 = v297;
        sub_B1B4(&v304);
        sub_758AE0();
        sub_7685E0();
        sub_10A2C(&v304, &unk_93FBD0, &qword_77DFA0);
        sub_768E90();

        goto LABEL_61;
      }

LABEL_155:
      swift_once();
      goto LABEL_60;
    }

    if (v90 == enum case for FlowPage.article(_:))
    {
      sub_758B00();
      sub_758FF0();
      sub_758B10();
      sub_1ED18(v302, &v304, &unk_93FBD0, &qword_77DFA0);
      if (v306)
      {
        sub_765B70();
        swift_dynamicCast();
      }

      else
      {
        sub_10A2C(&v304, &unk_93FBD0, &qword_77DFA0);
      }

      v154 = sub_758FE0();

      v155 = *(sub_BD88(&qword_955C90, &unk_780680) + 48);
      *v95 = v154;
      sub_109C4(v288, v95 + v155, &unk_93FD30, qword_77F240);
      v93 = v274;
      goto LABEL_25;
    }

    if (v90 == enum case for FlowPage.purchases(_:))
    {
      sub_BE70(0, &qword_943EE8, AMSFamilyMember_ptr);
      sub_758B10();

      *v95 = v304;
      v93 = v274;
      goto LABEL_25;
    }

    v152 = v90;
    if (v90 == enum case for FlowPage.inAppPurchaseInstall(_:))
    {
      v153 = v285;
      sub_758B00();
      if ((*(v298 + 48))(v153, 1, v299) != 1)
      {
        v157 = v299;
        v158 = *(v298 + 32);
        v159 = v281;
        v158(v281, v285, v299);
        sub_757D00();
        sub_758B10();

        v160 = v304;
        v161 = *(sub_BD88(&qword_955C80, &qword_7837D0) + 48);
        v158(v95, v159, v157);
        *(v95 + v161) = v160;
        v93 = v274;
        goto LABEL_25;
      }

      v148 = v285;
      goto LABEL_59;
    }

    if (v90 == enum case for FlowPage.writeReview(_:))
    {
      v156 = v284;
      sub_758B00();
      if ((*(v298 + 48))(v156, 1, v299) == 1)
      {
        v148 = v284;
        goto LABEL_59;
      }

      v164 = *(v298 + 32);
      v164(v282, v284, v299);
      v165 = v283;
      v166 = v280;
      sub_758B10();
      if ((*(v279 + 48))(v165, 1, v166) != 1)
      {

        v168 = *(v279 + 32);
        v169 = v278;
        v170 = v280;
        v168(v278, v283, v280);
        v171 = *(sub_BD88(&unk_955C70, &unk_783C30) + 48);
        v164(v95, v282, v299);
        v168(v95 + v171, v169, v170);
        v93 = v274;
        goto LABEL_25;
      }

      sub_10A2C(v283, &unk_940200, &unk_7AEB70);
      if (qword_93DF00 != -1)
      {
        swift_once();
      }

      v167 = sub_768FF0();
      sub_BE38(v167, qword_9A0430);
      sub_BD88(&qword_93FD00, &unk_77DF10);
      sub_7685F0();
      *(swift_allocObject() + 16) = xmmword_77E280;
      sub_768540();
      v306 = v297;
      sub_B1B4(&v304);
      sub_758AE0();
      sub_7685E0();
      sub_10A2C(&v304, &unk_93FBD0, &qword_77DFA0);
      sub_768E90();

      (*(v298 + 8))(v282, v299);
LABEL_61:
      v92 = v302;
      goto LABEL_16;
    }

    if (v90 == enum case for FlowPage.reviews(_:))
    {
      v162 = sub_759680();
      __chkstk_darwin(v162);
      *(&v256 - 2) = v302;
      sub_758B10();
      v163 = v304;
      if (!v304)
      {
        if (qword_93DF00 == -1)
        {
          goto LABEL_60;
        }

        goto LABEL_155;
      }
    }

    else
    {
      if (v90 == enum case for FlowPage.account(_:) || v90 == enum case for FlowPage.finance(_:))
      {
        sub_758B00();

        v93 = v274;
        goto LABEL_25;
      }

      if (v90 == enum case for FlowPage.hiddenPurchases(_:))
      {
        goto LABEL_229;
      }

      if (v90 == enum case for FlowPage.mso(_:))
      {
        v172 = v277;
        sub_758B00();
        if ((*(v298 + 48))(v172, 1, v299) != 1)
        {
          v174 = v299;
          v175 = *(v298 + 32);
          v176 = v275;
          v175(v275, v277, v299);
          sub_758C50();
          v177 = v276;
          sub_758B10();

          v178 = *(sub_BD88(&qword_943FB8, &unk_7837C0) + 48);
          v175(v95, v176, v174);
          sub_109C4(v177, v95 + v178, &qword_943F30, &qword_7837A8);
          v93 = v274;
          goto LABEL_25;
        }

        v148 = v277;
        goto LABEL_59;
      }

      if (v90 == enum case for FlowPage.versionHistory(_:))
      {
        v173 = sub_7594D0();
        __chkstk_darwin(v173);
        *(&v256 - 2) = v302;
        sub_758B10();
        v163 = v304;
        if (!v304)
        {
          if (qword_93DF00 == -1)
          {
            goto LABEL_60;
          }

          goto LABEL_155;
        }
      }

      else
      {
        if (v90 == enum case for FlowPage.onboarding(_:))
        {
          __chkstk_darwin(v90);
          *(&v256 - 2) = v302;
          sub_758B10();
          v179 = v304;
          if (v304 != 4)
          {

            *v95 = v179;
            v93 = v274;
            goto LABEL_25;
          }

          if (qword_93DF00 == -1)
          {
            goto LABEL_60;
          }

          goto LABEL_155;
        }

        if (v90 == enum case for FlowPage.reviewDetail(_:))
        {
          v180 = sub_765030();
          __chkstk_darwin(v180);
          *(&v256 - 2) = v302;
          sub_758B10();
          v163 = v304;
          if (!v304)
          {
            if (qword_93DF00 == -1)
            {
              goto LABEL_60;
            }

            goto LABEL_155;
          }
        }

        else if (v90 == enum case for FlowPage.editorsChoiceDetail(_:))
        {
          v181 = sub_75A2B0();
          __chkstk_darwin(v181);
          *(&v256 - 2) = v302;
          sub_758B10();
          v163 = v304;
          if (!v304)
          {
            if (qword_93DF00 == -1)
            {
              goto LABEL_60;
            }

            goto LABEL_155;
          }
        }

        else
        {
          if (v90 == enum case for FlowPage.arcade(_:))
          {
            v182 = v290;
            sub_758B00();
            sub_758A10();
            sub_758B10();
            v183 = v304;
            sub_BD88(&qword_955D30, qword_780320);
            *v95 = v183;
            sub_1ED18(v182, v263, &unk_93FD30, qword_77F240);
            sub_1ED18(v182, v266, &unk_93FD30, qword_77F240);
            sub_75AA30();

            sub_10A2C(v182, &unk_93FD30, qword_77F240);
            v93 = v274;
            goto LABEL_25;
          }

          if (v90 == enum case for FlowPage.arcadeSubscribe(_:))
          {
            sub_75DEB0();
            sub_758B10();
            v184 = v304;
            v185 = sub_BD88(&qword_955D10, &unk_783810);
            v186 = *(v185 + 48);
            v187 = *(v185 + 64);
            sub_758B00();

            *(v95 + v186) = v184;
            *(v95 + v187) = 0;
            v93 = v274;
            goto LABEL_25;
          }

          if (v90 != enum case for FlowPage.upsellMarketingItem(_:))
          {
            if (v90 == enum case for FlowPage.arcadeSeeAllGames(_:))
            {
              v188 = v264;
              sub_758B00();
              if ((*(v298 + 48))(v188, 1, v299) != 1)
              {
                v190 = v299;
                v191 = *(v298 + 32);
                v192 = v257;
                v191(v257, v264, v299);
                sub_75EF60();
                sub_758B10();

                v193 = v304;
                v194 = *(sub_BD88(&qword_955D20, &qword_7837D8) + 48);
                *v95 = v193;
                v191(v95 + v194, v192, v190);
                v93 = v274;
                goto LABEL_25;
              }

              v148 = v264;
              goto LABEL_59;
            }

            if (v90 == enum case for FlowPage.arcadeWelcome(_:))
            {
              v189 = v267;
              sub_758B00();
              if ((*(v298 + 48))(v189, 1, v299) != 1)
              {
                v197 = v299;
                v198 = *(v298 + 32);
                v199 = v260;
                v198(v260, v267, v299);
                v200 = sub_BD88(&qword_955D00, &unk_7834A0);
                v201 = *(v200 + 48);
                v202 = *(v200 + 64);
                sub_75C400();
                sub_758B10();

                v203 = enum case for ArcadeWelcomePage.ContentType.none(_:);
                v204 = sub_75C3F0();
                (*(*(v204 - 8) + 104))(v95 + v201, v203, v204);
                v198(v95 + v202, v199, v197);
                v93 = v274;
                goto LABEL_25;
              }

              v148 = v267;
              goto LABEL_59;
            }

            if (v90 == enum case for FlowPage.arcadeDownloadPackCategories(_:))
            {
              sub_758B10();
              v195 = *(&v304 + 1);
              if (*(&v304 + 1))
              {
                v196 = v304;

                *v95 = v196;
                v95[1] = v195;
                v93 = v274;
                goto LABEL_25;
              }

              if (qword_93DF00 == -1)
              {
                goto LABEL_60;
              }

              goto LABEL_155;
            }

            if (v90 == enum case for FlowPage.componentOverflow(_:))
            {
              v205 = v271;
              v206 = v273;
              sub_758B10();
              if ((*(v270 + 48))(v205, 1, v206) != 1)
              {

                v207 = v272;
                sub_14B504(v271, v272, type metadata accessor for ComponentOverflowData);
                v208 = *(sub_BD88(&unk_955C40, &unk_7837B0) + 48);
                *v95 = *v207;
                v209 = *(v273 + 20);
                v210 = sub_757640();
                (*(*(v210 - 8) + 32))(v95 + v208, v207 + v209, v210);
                v93 = v274;
                goto LABEL_25;
              }

              sub_10A2C(v271, &qword_946528, qword_786F70);
              if (qword_93DF00 == -1)
              {
                goto LABEL_60;
              }

              goto LABEL_155;
            }

            if (v90 == enum case for FlowPage.notificationSettings(_:))
            {
              goto LABEL_229;
            }

            if (v90 == enum case for FlowPage.gameAchievements(_:))
            {
              __chkstk_darwin(v90);
              *(&v256 - 2) = v302;
              sub_758B10();
              v211 = v304;
              if (!v304)
              {
                if (qword_93DF00 == -1)
                {
                  goto LABEL_60;
                }

                goto LABEL_155;
              }
            }

            else
            {
              if (v90 == enum case for FlowPage.gameCenterDashboard(_:))
              {
                goto LABEL_229;
              }

              if (v90 != enum case for FlowPage.gameCenterLeaderboards(_:))
              {
                if (v90 == enum case for FlowPage.gameCenterPlayerProfile(_:))
                {
                  sub_758B10();

                  *v95 = v304;
                  v93 = v274;
                  goto LABEL_25;
                }

                if (v90 == enum case for FlowPage.reportAConcern(_:))
                {
                  v213 = sub_75E510();
                  __chkstk_darwin(v213);
                  *(&v256 - 2) = v302;
                  sub_758B10();
                  if (v304)
                  {
                    v214 = sub_75E500();
                    v215 = sub_75E4F0();
                    v217 = v216;
                    v218 = sub_75E4E0();

                    *v95 = v214;
                    v95[1] = v215;
                    v95[2] = v217;
                    v95[3] = v218;
                    v93 = v274;
                    goto LABEL_25;
                  }
                }

                else
                {
                  if (v90 != enum case for FlowPage.reviewSummaryReportConcern(_:))
                  {
                    if (v90 == enum case for FlowPage.shareSheet(_:))
                    {
                      v226 = sub_75C1F0();
                      __chkstk_darwin(v226);
                      *(&v256 - 2) = v302;
                      sub_758B10();
                      if (v304)
                      {
                        sub_BD88(&qword_955C60, &qword_780678);
                        *v95 = sub_75C1B0();
                        v95[1] = sub_75C1A0();
                        sub_75C180();

                        v93 = v274;
                        goto LABEL_25;
                      }

                      if (qword_93DF00 == -1)
                      {
                        goto LABEL_60;
                      }

                      goto LABEL_155;
                    }

                    if (v90 == enum case for FlowPage.privacyDetail(_:))
                    {
                      v227 = v268;
                      sub_758B00();
                      if ((*(v298 + 48))(v227, 1, v299) != 1)
                      {
                        v230 = v298;
                        v229 = v299;
                        v231 = *(v298 + 32);
                        v232 = v262;
                        v231(v262, v268, v299);
                        sub_7594D0();
                        sub_758B10();

                        v233 = v304;
                        v234 = *(sub_BD88(&qword_940A50, &qword_782590) + 48);
                        *v95 = v233;
                        v231(v95 + v234, v232, v229);
                        (*(v230 + 56))(v95 + v234, 0, 1, v229);
                        v93 = v274;
                        goto LABEL_25;
                      }

                      v148 = v268;
                      goto LABEL_59;
                    }

                    if (v90 == enum case for FlowPage.privacyDefinitions(_:))
                    {
                      v228 = v269;
                      sub_758B00();
                      if ((*(v298 + 48))(v228, 1, v299) != 1)
                      {
                        v236 = v298;
                        v235 = v299;
                        v237 = *(v298 + 32);
                        v238 = v265;
                        v237(v265, v269, v299);
                        sub_7594D0();
                        sub_758B10();

                        v239 = v304;
                        v240 = *(sub_BD88(&qword_940A50, &qword_782590) + 48);
                        *v95 = v239;
                        v237(v95 + v240, v238, v235);
                        (*(v236 + 56))(v95 + v240, 0, 1, v235);
                        v93 = v274;
                        goto LABEL_25;
                      }

                      v148 = v269;
                      goto LABEL_59;
                    }

                    if (v90 == enum case for FlowPage.accessibilityDetails(_:))
                    {
                      goto LABEL_45;
                    }

                    if (v90 == enum case for FlowPage.appEventDetail(_:))
                    {
                      v241 = sub_7582F0();
                      __chkstk_darwin(v241);
                      *(&v256 - 2) = v302;
                      sub_758B10();
                      v242 = v304;
                      if (!v304)
                      {
                        if (qword_93DF00 == -1)
                        {
                          goto LABEL_60;
                        }

                        goto LABEL_155;
                      }

                      sub_1ED18(v302, &v304, &unk_93FBD0, &qword_77DFA0);
                      if (v306)
                      {
                        sub_BE70(0, &qword_93E550, UIView_ptr);
                        v243 = swift_dynamicCast();
                        v244 = v303;
                        if (!v243)
                        {
                          v244 = 0;
                        }
                      }

                      else
                      {
                        sub_10A2C(&v304, &unk_93FBD0, &qword_77DFA0);
                        v244 = 0;
                      }

                      v254 = v258;
                      *v258 = v242;
                      *(v254 + 8) = v244;
                      v93 = v274;
                    }

                    else if (v90 == enum case for FlowPage.contingentOfferDetail(_:))
                    {
                      v245 = sub_761320();
                      __chkstk_darwin(v245);
                      *(&v256 - 2) = v302;
                      sub_758B10();
                      v246 = v304;
                      if (!v304)
                      {
                        if (qword_93DF00 == -1)
                        {
                          goto LABEL_60;
                        }

                        goto LABEL_155;
                      }

                      sub_1ED18(v302, &v304, &unk_93FBD0, &qword_77DFA0);
                      if (v306)
                      {
                        sub_BE70(0, &qword_93E550, UIView_ptr);
                        v247 = swift_dynamicCast();
                        v248 = v303;
                        if (!v247)
                        {
                          v248 = 0;
                        }
                      }

                      else
                      {
                        sub_10A2C(&v304, &unk_93FBD0, &qword_77DFA0);
                        v248 = 0;
                      }

                      v254 = v259;
                      *v259 = v246;
                      *(v254 + 8) = v248;
                      v93 = v274;
                    }

                    else
                    {
                      if (v90 != enum case for FlowPage.offerItemDetail(_:))
                      {
                        if (v90 == enum case for FlowPage.debugSettings(_:))
                        {
                          sub_758B10();

                          v253 = v305;
                          *v95 = v304;
                          v95[2] = v253;
                          v93 = v274;
                          goto LABEL_25;
                        }

                        if (v90 == enum case for FlowPage.debugStorefrontPicker(_:) || v90 == enum case for FlowPage.debugTodayCardTriggers(_:))
                        {
                          goto LABEL_229;
                        }

                        v255 = enum case for FlowPage.personalizationTransparency(_:);

                        if (v152 == v255)
                        {
                          v93 = v274;
                          goto LABEL_25;
                        }

                        (*(v256 + 8))(v79, v297);
                        goto LABEL_61;
                      }

                      v249 = sub_75E230();
                      __chkstk_darwin(v249);
                      *(&v256 - 2) = v302;
                      sub_758B10();
                      v250 = v304;
                      if (!v304)
                      {
                        if (qword_93DF00 == -1)
                        {
                          goto LABEL_60;
                        }

                        goto LABEL_155;
                      }

                      sub_1ED18(v302, &v304, &unk_93FBD0, &qword_77DFA0);
                      if (v306)
                      {
                        sub_BE70(0, &qword_93E550, UIView_ptr);
                        v251 = swift_dynamicCast();
                        v252 = v303;
                        if (!v251)
                        {
                          v252 = 0;
                        }
                      }

                      else
                      {
                        sub_10A2C(&v304, &unk_93FBD0, &qword_77DFA0);
                        v252 = 0;
                      }

                      v254 = v261;
                      *v261 = v250;
                      *(v254 + 8) = v252;
                      v93 = v274;
                    }

                    swift_storeEnumTagMultiPayload();
                    sub_14B504(v254, v95, type metadata accessor for FlowDestination);
                    goto LABEL_26;
                  }

                  v220 = sub_7635D0();
                  __chkstk_darwin(v220);
                  *(&v256 - 2) = v302;
                  sub_758B10();
                  if (v304)
                  {
                    v221 = sub_7635C0();
                    v222 = sub_7635B0();
                    v224 = v223;
                    v225 = sub_7635A0();

                    *v95 = v221;
                    v95[1] = v222;
                    v95[2] = v224;
                    v95[3] = v225;
                    v93 = v274;
                    goto LABEL_25;
                  }
                }

                if (qword_93DF00 == -1)
                {
                  goto LABEL_60;
                }

                goto LABEL_155;
              }

              __chkstk_darwin(v90);
              *(&v256 - 2) = v302;
              sub_758B10();
              v211 = v304;
              if (!v304)
              {
                if (qword_93DF00 != -1)
                {
                  swift_once();
                }

                v219 = sub_768FF0();
                sub_BE38(v219, qword_9A0430);
                sub_BD88(&qword_93FD00, &unk_77DF10);
                sub_7685F0();
                *(swift_allocObject() + 16) = xmmword_77E280;
                sub_768540();
                v306 = v297;
                sub_B1B4(&v304);
                sub_758AE0();
                sub_7685E0();
                sub_10A2C(&v304, &unk_93FBD0, &qword_77DFA0);
                sub_768E90();

                goto LABEL_61;
              }
            }

            v212 = *(&v304 + 1);

            *v95 = v211;
            v95[1] = v212;
            v93 = v274;
            goto LABEL_25;
          }

          sub_760D30();
          sub_758B10();
          v163 = v304;
          if (!v304)
          {
            if (qword_93DF00 == -1)
            {
              goto LABEL_60;
            }

            goto LABEL_155;
          }
        }
      }
    }

    *v95 = v163;
    v93 = v274;
    goto LABEL_25;
  }

  v91 = sub_759F10();
  __chkstk_darwin(v91);
  v92 = v302;
  *(&v256 - 2) = v302;
  sub_758B10();

  *v88 = v304;
  swift_storeEnumTagMultiPayload();
  v93 = v80;
  v94 = v88;
LABEL_27:
  v123 = v301;
  sub_14B504(v94, v301, type metadata accessor for FlowDestination);
  (*(v300 + 56))(v123, 0, 1, v93);
  return sub_10A2C(v92, &unk_93FBD0, &qword_77DFA0);
}

double sub_14B4E4@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_14B504(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_14B5A4()
{
  v0 = sub_768FD0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_768FF0();
  sub_161DC(v4, qword_946530);
  sub_BE38(v4, qword_946530);
  if (qword_93DEE8 != -1)
  {
    swift_once();
  }

  v5 = sub_BE38(v0, qword_9A03E8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_768FE0();
}

void sub_14B6F8(void **a1, void **a2, void *a3, uint64_t a4)
{
  v35 = a4;
  v36 = a3;
  v6 = sub_768E70();
  __chkstk_darwin(v6 - 8);
  v33 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_75EC10();
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_768FF0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93C410 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v10, qword_946530);
  (*(v11 + 16))(v13, v14, v10);
  sub_BD88(&qword_93FD00, &unk_77DF10);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_782440;
  sub_768540();
  v40 = sub_BE70(0, &unk_946608, AMSEngagement_ptr);
  aBlock = a1;
  v15 = a1;
  sub_7685C0();
  sub_BDD0(&aBlock);
  sub_768540();
  if (a2)
  {
    v16 = sub_BE70(0, &qword_946620, AMSEngagementRequest_ptr);
    v17 = a2;
  }

  else
  {
    v17 = 0;
    v16 = 0;
    v38 = 0;
    v39 = 0;
  }

  aBlock = v17;
  v40 = v16;
  v18 = a2;
  sub_7685C0();
  sub_BDD0(&aBlock);
  sub_768E80();

  (*(v11 + 8))(v13, v10);
  if (a2)
  {
    v19 = v36;
    v20 = v18;
    sub_75A910();
    sub_768E40();
    sub_75EC00();
    v21 = sub_75EBF0();
    (*(v32 + 8))(v9, v34);
    [v20 setAnonymousMetrics:v21 & 1];
    v22 = v20;
    v23 = [objc_allocWithZone(AMSUIEngagementTaskViewController) initWithRequest:v22 bag:sub_75A910()];

    swift_unknownObjectRelease();
    v24 = [v23 canPresent];
    v25 = swift_allocObject();
    v25[2] = v22;
    v25[3] = v19;
    v26 = v35;
    v25[4] = v23;
    v25[5] = v26;
    v41 = sub_14E2E4;
    v42 = v25;
    aBlock = _NSConcreteStackBlock;
    v38 = 1107296256;
    v39 = sub_509F0;
    v40 = &unk_885510;
    v27 = _Block_copy(&aBlock);
    v28 = v22;
    v29 = v19;
    v30 = v23;

    [v24 addFinishBlock:v27];
    _Block_release(v27);
  }
}

double sub_14BC1C(char a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = sub_7685A0();
  __chkstk_darwin(v8 - 8);
  if (a1)
  {
    if (qword_93C410 != -1)
    {
      swift_once();
    }

    v9 = sub_768FF0();
    sub_BE38(v9, qword_946530);
    sub_BD88(&qword_93FD00, &unk_77DF10);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768590();
    v21._countAndFlagsBits = 0xD000000000000040;
    v21._object = 0x80000000007D0F30;
    sub_768580(v21);
    v19 = sub_BE70(0, &qword_946620, AMSEngagementRequest_ptr);
    v18[0] = a3;
    v10 = a3;
    sub_768560();
    sub_BDD0(v18);
    v22._countAndFlagsBits = 41;
    v22._object = 0xE100000000000000;
    sub_768580(v22);
    sub_7685B0();
    sub_768E80();

    v11 = *(a4 + OBJC_IVAR____TtC18ASMessagesProvider27JourneyDrivenOnboardingStep_engagementViewController);
    *(a4 + OBJC_IVAR____TtC18ASMessagesProvider27JourneyDrivenOnboardingStep_engagementViewController) = a5;

    v12 = a5;
  }

  else
  {
    if (qword_93C410 != -1)
    {
      swift_once();
    }

    v14 = sub_768FF0();
    sub_BE38(v14, qword_946530);
    sub_BD88(&qword_93FD00, &unk_77DF10);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768590();
    v23._object = 0x80000000007D0DE0;
    v23._countAndFlagsBits = 0xD000000000000016;
    sub_768580(v23);
    v19 = sub_BE70(0, &qword_946628, AMSUIEngagementTaskViewController_ptr);
    v18[0] = a5;
    v15 = a5;
    sub_768560();
    sub_BDD0(v18);
    v24._countAndFlagsBits = 0xD000000000000018;
    v24._object = 0x80000000007D0EE0;
    sub_768580(v24);
    v19 = sub_BE70(0, &qword_946620, AMSEngagementRequest_ptr);
    v18[0] = a3;
    v16 = a3;
    sub_768560();
    sub_BDD0(v18);
    v25._countAndFlagsBits = 0xD000000000000023;
    v25._object = 0x80000000007D0F00;
    sub_768580(v25);
    sub_7685B0();
    sub_768E80();
  }

  return result;
}

void sub_14C044(void **a1, void **a2, void **a3, uint64_t a4, void **a5, uint64_t a6, void *a7, uint64_t a8)
{
  v43 = a8;
  v44 = a7;
  v46 = a5;
  v47 = a6;
  v48 = a4;
  v45 = a2;
  v10 = sub_768E70();
  __chkstk_darwin(v10 - 8);
  v41 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_75EC10();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v39 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_768FF0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93C410 != -1)
  {
    swift_once();
  }

  v17 = sub_BE38(v13, qword_946530);
  (*(v14 + 16))(v16, v17, v13);
  sub_BD88(&qword_93FD00, &unk_77DF10);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_783150;
  sub_768540();
  v52 = sub_BE70(0, &unk_946608, AMSEngagement_ptr);
  aBlock = a1;
  v18 = a1;
  sub_7685C0();
  sub_BDD0(&aBlock);
  sub_768540();
  v19 = v45;
  if (v45)
  {
    v20 = sub_BE70(0, &qword_946620, AMSEngagementRequest_ptr);
    v21 = v19;
  }

  else
  {
    v21 = 0;
    v20 = 0;
    v50 = 0;
    v51 = 0;
  }

  aBlock = v21;
  v52 = v20;
  v37 = v19;
  sub_7685C0();
  sub_BDD0(&aBlock);
  sub_768540();
  v52 = &type metadata for String;
  aBlock = a3;
  v38 = a3;
  v22 = v48;
  v50 = v48;

  sub_7685C0();
  sub_BDD0(&aBlock);
  sub_768540();
  v52 = &type metadata for String;
  aBlock = v46;
  v50 = v47;

  sub_7685C0();
  sub_BDD0(&aBlock);
  sub_768E80();

  (*(v14 + 8))(v16, v13);
  if (v19)
  {
    v23 = v44;
    v24 = v37;
    sub_75A910();
    sub_768E40();
    v25 = v39;
    sub_75EC00();
    v26 = sub_75EBF0();
    (*(v40 + 8))(v25, v42);
    [v24 setAnonymousMetrics:v26 & 1];
    v27 = v24;
    v28 = [objc_allocWithZone(AMSUIEngagementTaskViewController) initWithRequest:v27 bag:sub_75A910()];

    swift_unknownObjectRelease();
    v29 = [v28 canPresent];
    v30 = swift_allocObject();
    v31 = v38;
    v30[2] = v27;
    v30[3] = v31;
    v30[4] = v22;
    v30[5] = v23;
    v32 = v43;
    v30[6] = v28;
    v30[7] = v32;
    v53 = sub_14E27C;
    v54 = v30;
    aBlock = _NSConcreteStackBlock;
    v50 = 1107296256;
    v51 = sub_509F0;
    v52 = &unk_885470;
    v33 = _Block_copy(&aBlock);
    v34 = v27;

    v35 = v23;
    v36 = v28;

    [v29 addFinishBlock:v33];
    _Block_release(v33);
  }
}

double sub_14C648(char a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = sub_7685A0();
  __chkstk_darwin(v12 - 8);
  if (a1)
  {
    if (qword_93C410 != -1)
    {
      swift_once();
    }

    v13 = sub_768FF0();
    sub_BE38(v13, qword_946530);
    sub_BD88(&qword_93FD00, &unk_77DF10);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768590();
    v26._countAndFlagsBits = 0xD000000000000040;
    v26._object = 0x80000000007D0E50;
    sub_768580(v26);
    v24 = sub_BE70(0, &qword_946620, AMSEngagementRequest_ptr);
    v22 = a3;
    v14 = a3;
    sub_768560();
    sub_BDD0(&v22);
    v27._object = 0x80000000007D0EA0;
    v27._countAndFlagsBits = 0xD000000000000010;
    sub_768580(v27);
    v24 = &type metadata for String;
    v22 = a4;
    v23 = a5;

    sub_768560();
    sub_BDD0(&v22);
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    sub_768580(v28);
    sub_7685B0();
    sub_768E80();

    v15 = *(a6 + OBJC_IVAR____TtC18ASMessagesProvider27JourneyDrivenOnboardingStep_engagementViewController);
    *(a6 + OBJC_IVAR____TtC18ASMessagesProvider27JourneyDrivenOnboardingStep_engagementViewController) = a7;

    v16 = a7;
  }

  else
  {
    if (qword_93C410 != -1)
    {
      swift_once();
    }

    v18 = sub_768FF0();
    sub_BE38(v18, qword_946530);
    sub_BD88(&qword_93FD00, &unk_77DF10);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768590();
    v29._countAndFlagsBits = 0xD000000000000016;
    v29._object = 0x80000000007D0DE0;
    sub_768580(v29);
    v24 = sub_BE70(0, &qword_946628, AMSUIEngagementTaskViewController_ptr);
    v22 = a7;
    v19 = a7;
    sub_768560();
    sub_BDD0(&v22);
    v30._countAndFlagsBits = 0xD000000000000018;
    v30._object = 0x80000000007D0E00;
    sub_768580(v30);
    v24 = sub_BE70(0, &qword_946620, AMSEngagementRequest_ptr);
    v22 = a3;
    v20 = a3;
    sub_768560();
    sub_BDD0(&v22);
    v31._countAndFlagsBits = 0x63616C70206E6920;
    v31._object = 0xEF203A746E656D65;
    sub_768580(v31);
    v24 = &type metadata for String;
    v22 = a4;
    v23 = a5;

    sub_768560();
    sub_BDD0(&v22);
    v32._countAndFlagsBits = 0xD000000000000025;
    v32._object = 0x80000000007D0E20;
    sub_768580(v32);
    sub_7685B0();
    sub_768E80();
  }

  return result;
}

uint64_t sub_14CBDC(void *a1, void *a2)
{
  v4 = sub_768FF0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93C410 != -1)
  {
    swift_once();
  }

  v8 = sub_BE38(v4, qword_946530);
  (*(v5 + 16))(v7, v8, v4);
  sub_BD88(&qword_93FD00, &unk_77DF10);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_782440;
  sub_768540();
  v15 = sub_BE70(0, &unk_946608, AMSEngagement_ptr);
  v14[0] = a1;
  v9 = a1;
  sub_7685C0();
  sub_BDD0(v14);
  sub_768540();
  if (a2)
  {
    v10 = sub_BE70(0, &qword_946618, AMSDialogRequest_ptr);
    v11 = a2;
  }

  else
  {
    v11 = 0;
    v10 = 0;
    v14[1] = 0;
    v14[2] = 0;
  }

  v14[0] = v11;
  v15 = v10;
  v12 = a2;
  sub_7685C0();
  sub_BDD0(v14);
  sub_768E80();

  return (*(v5 + 8))(v7, v4);
}

void sub_14CEB0(void *a1, int a2, void *a3, void *a4, void *aBlock, void (*a6)(id, void *))
{
  v10 = _Block_copy(aBlock);
  v11 = a3;
  v12 = a4;
  v13 = a1;
  a6(v11, a4);
  _Block_release(v10);
}

uint64_t sub_14CF54(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a3;
  ObjectType = swift_getObjectType();
  v11 = sub_768380();
  v29 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_7683C0();
  v14 = *(v28 - 8);
  __chkstk_darwin(v28);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
  v27 = sub_769970();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v18 = ObjectType;
  v17[4] = v26;
  v17[5] = a4;
  v17[6] = a5;
  v17[7] = a6;
  v17[8] = v18;
  aBlock[4] = sub_14D820;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = &unk_885380;
  v19 = _Block_copy(aBlock);
  v20 = a2;

  v21 = a1;

  sub_7683A0();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_14D84C(&qword_9406E0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_BD88(&qword_940350, &unk_77F850);
  sub_4C874();
  sub_76A5A0();
  v22 = v27;
  sub_769980();
  _Block_release(v19);

  (*(v29 + 8))(v13, v11);
  return (*(v14 + 8))(v16, v28);
}

uint64_t sub_14D264(void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v21 = a5;
  v22 = a6;
  v20 = a3;
  v9 = sub_768FF0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93C410 != -1)
  {
    swift_once();
  }

  v13 = sub_BE38(v9, qword_946530);
  (*(v10 + 16))(v12, v13, v9);
  sub_BD88(&qword_93FD00, &unk_77DF10);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_783150;
  sub_768540();
  v26 = sub_BE70(0, &unk_946608, AMSEngagement_ptr);
  v23 = a1;
  v14 = a1;
  sub_7685C0();
  sub_BDD0(&v23);
  sub_768540();
  if (a2)
  {
    v15 = sub_BE70(0, &qword_946618, AMSDialogRequest_ptr);
    v16 = a2;
  }

  else
  {
    v16 = 0;
    v15 = 0;
    v24 = 0;
    v25 = 0;
  }

  v23 = v16;
  v26 = v15;
  v17 = a2;
  sub_7685C0();
  sub_BDD0(&v23);
  sub_768540();
  v26 = &type metadata for String;
  v23 = v20;
  v24 = a4;

  sub_7685C0();
  sub_BDD0(&v23);
  sub_768540();
  v26 = &type metadata for String;
  v23 = v21;
  v24 = v22;

  sub_7685C0();
  sub_BDD0(&v23);
  sub_768E80();

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_14D7D0()
{

  return _swift_deallocObject(v0, 72, 7);
}

double sub_14D834(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_14D84C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_14D894(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_768380();
  v20 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_7683C0();
  v9 = *(v19 - 8);
  __chkstk_darwin(v19);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
  v12 = sub_769970();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = v2;
  v13[5] = ObjectType;
  aBlock[4] = sub_14E290;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = &unk_8854C0;
  v14 = _Block_copy(aBlock);
  v15 = a2;
  v16 = v2;
  v17 = a1;

  sub_7683A0();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_14D84C(&qword_9406E0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_BD88(&qword_940350, &unk_77F850);
  sub_4C874();
  sub_76A5A0();
  sub_769980();
  _Block_release(v14);

  (*(v20 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v19);
}

uint64_t sub_14DB80(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a3;
  v29 = a5;
  ObjectType = swift_getObjectType();
  v11 = sub_768380();
  v33 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_7683C0();
  v31 = *(v14 - 8);
  v32 = v14;
  __chkstk_darwin(v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
  v30 = sub_769970();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v18 = v29;
  v17[4] = v28;
  v17[5] = a4;
  v17[6] = v18;
  v17[7] = a6;
  v19 = ObjectType;
  v17[8] = v6;
  v17[9] = v19;
  aBlock[4] = sub_14E218;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = &unk_885420;
  v20 = _Block_copy(aBlock);
  v21 = a2;

  v22 = v6;
  v23 = a1;

  sub_7683A0();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_14D84C(&qword_9406E0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_BD88(&qword_940350, &unk_77F850);
  sub_4C874();
  sub_76A5A0();
  v24 = v30;
  sub_769980();
  _Block_release(v20);

  (*(v33 + 8))(v13, v11);
  return (*(v31 + 8))(v16, v32);
}

uint64_t sub_14DE94(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_768380();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_7683C0();
  v9 = *(v19 - 8);
  __chkstk_darwin(v19);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
  v12 = sub_769970();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = ObjectType;
  aBlock[4] = sub_14E1B4;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = &unk_8853D0;
  v14 = _Block_copy(aBlock);
  v15 = a2;
  v16 = a1;

  sub_7683A0();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_14D84C(&qword_9406E0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_BD88(&qword_940350, &unk_77F850);
  sub_4C874();
  sub_76A5A0();
  sub_769980();
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v19);
}

uint64_t sub_14E174()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_14E1C0()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_14E22C()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_14E29C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_14E31C()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_75ABC0();
  sub_161DC(v4, qword_99B278);
  v19 = sub_BE38(v4, qword_99B278);
  if (qword_93D600 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v17 = sub_BE38(v5, qword_99E9F8);
  v6 = *(v5 - 8);
  v16 = *(v6 + 16);
  v18 = v6 + 16;
  v16(v3, v17, v5);
  v7 = enum case for FontSource.useCase(_:);
  v15 = v1[13];
  v15(v3, enum case for FontSource.useCase(_:), v0);
  v8 = sub_766CA0();
  v26[3] = v8;
  v26[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v26);
  v24 = v0;
  v25 = &protocol witness table for FontSource;
  v9 = sub_B1B4(v23);
  v10 = v1[2];
  v10(v9, v3, v0);
  sub_766CB0();
  v11 = v1[1];
  v11(v3, v0);
  v16(v3, v17, v5);
  v15(v3, v7, v0);
  v24 = v8;
  v25 = &protocol witness table for StaticDimension;
  sub_B1B4(v23);
  v21 = v0;
  v22 = &protocol witness table for FontSource;
  v12 = sub_B1B4(v20);
  v10(v12, v3, v0);
  sub_766CB0();
  v11(v3, v0);
  v21 = &type metadata for Double;
  v22 = &protocol witness table for Double;
  v20[0] = 0x4018000000000000;
  return sub_75ABB0();
}

uint64_t sub_14E60C()
{
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  result = sub_769FF0();
  qword_946630 = result;
  return result;
}

uint64_t sub_14E650()
{
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  result = sub_769FE0();
  qword_946638 = result;
  return result;
}

uint64_t sub_14E694()
{
  v0 = sub_759950();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.chevronForward(_:), v0, v2);
  v5 = objc_opt_self();
  v6 = UIFontTextStyleFootnote;
  v7 = [v5 configurationWithTextStyle:v6 scale:1];

  v8 = sub_759930();
  result = (*(v1 + 8))(v4, v0);
  qword_99B290 = v8;
  return result;
}

char *sub_14E7E4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v43 = sub_7674E0();
  v10 = *(v43 - 8);
  __chkstk_darwin(v43);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_767510();
  v44 = *(v13 - 8);
  v45 = v13;
  __chkstk_darwin(v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_760AD0();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v20 - 8);
  v22 = &v42 - v21;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_chevronView] = 0;
  v5[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_hasChevron] = 0;
  v5[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_textLightensOnHighlight] = 0;
  v5[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_isHighlighted] = 0;
  if (qword_93D600 != -1)
  {
    swift_once();
  }

  v23 = sub_7666D0();
  v24 = sub_BE38(v23, qword_99E9F8);
  v25 = *(v23 - 8);
  (*(v25 + 16))(v22, v24, v23);
  (*(v25 + 56))(v22, 0, 1, v23);
  (*(v17 + 104))(v19, enum case for DirectionalTextAlignment.none(_:), v16);
  v26 = objc_allocWithZone(sub_75BB20());
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_textLabel] = sub_75BB10();
  (*(v10 + 104))(v12, enum case for Separator.Position.top(_:), v43);
  v48[3] = sub_766970();
  v48[4] = &protocol witness table for ZeroDimension;
  sub_B1B4(v48);
  sub_766960();
  sub_7674F0();
  v27 = [objc_allocWithZone(type metadata accessor for SeparatorView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v28 = OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_separator;
  swift_beginAccess();
  v29 = *(v44 + 40);
  v30 = v27;
  v29(&v27[v28], v15, v45);
  swift_endAccess();

  *&v5[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_separatorView] = v30;
  v47.receiver = v5;
  v47.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v35 = v31;
  [v35 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v36 = OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_textLabel;
  v37 = qword_93C420;
  v38 = *&v35[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_textLabel];
  if (v37 != -1)
  {
    swift_once();
  }

  [v38 setTextColor:qword_946630];

  v39 = *&v35[v36];
  sub_75BAD0();

  [v35 addSubview:*&v35[v36]];
  [v35 addSubview:*&v35[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_separatorView]];
  sub_BD88(&qword_9477F0, qword_780200);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_77B6D0;
  *(v40 + 32) = sub_7676F0();
  *(v40 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_769F40();

  swift_unknownObjectRelease();

  return v35;
}

double sub_14EE6C(__n128 a1, double a2)
{
  v3 = sub_75ABC0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_75ABE0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93C418 != -1)
  {
    swift_once();
  }

  v11 = sub_BE38(v3, qword_99B278);
  (*(v4 + 16))(v6, v11, v3);
  v12 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_textLabel);
  v22[8] = sub_75BB20();
  v22[9] = &protocol witness table for UILabel;
  v22[5] = v12;
  v13 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_chevronView);
  if (v13)
  {
    v14 = sub_BE70(0, &qword_93E550, UIView_ptr);
    v15 = &protocol witness table for UIView;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v22[1] = 0;
    v22[2] = 0;
  }

  v22[0] = v13;
  v22[3] = v14;
  v22[4] = v15;
  v16 = v12;
  v17 = v13;
  sub_75ABD0();
  sub_14F7F4(v18);
  sub_7665A0();
  v20 = v19;
  (*(v8 + 8))(v10, v7);
  return v20;
}

uint64_t sub_14F128()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v39 = sub_767510();
  v3 = *(v39 - 8);
  __chkstk_darwin(v39);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_7664F0();
  v6 = *(v35 - 8);
  __chkstk_darwin(v35);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_75ABC0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_75ABE0();
  v36 = *(v38 - 8);
  *&v13 = __chkstk_darwin(v38).n128_u64[0];
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48.receiver = v1;
  v48.super_class = ObjectType;
  v37 = ObjectType;
  objc_msgSendSuper2(&v48, "layoutSubviews", v13);
  if (qword_93C418 != -1)
  {
    swift_once();
  }

  v16 = sub_BE38(v9, qword_99B278);
  (*(v10 + 16))(v12, v16, v9);
  v17 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_textLabel];
  v46 = sub_75BB20();
  v47 = &protocol witness table for UILabel;
  v45 = v17;
  v18 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_chevronView];
  if (v18)
  {
    v19 = sub_BE70(0, &qword_93E550, UIView_ptr);
    v20 = &protocol witness table for UIView;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v41 = 0;
    v42 = 0;
  }

  v40 = v18;
  v43 = v19;
  v44 = v20;
  v21 = v17;
  v22 = v18;
  sub_75ABD0();
  sub_75D650();
  sub_75ABA0();
  (*(v6 + 8))(v8, v35);
  v23 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_separatorView];
  [v1 bounds];
  v24 = OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_separator;
  swift_beginAccess();
  v25 = v39;
  (*(v3 + 16))(v5, &v23[v24], v39);
  sub_7674C0();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  (*(v3 + 8))(v5, v25);
  [v23 setFrame:{v27, v29, v31, v33}];
  return (*(v36 + 8))(v15, v38);
}

void sub_14F5D4(char a1)
{
  if (v1[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_hasChevron] != (a1 & 1))
  {
    if (v1[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_hasChevron])
    {
      v2 = v1;
      if (qword_93C430 != -1)
      {
        swift_once();
      }

      v3 = [objc_allocWithZone(UIImageView) initWithImage:qword_99B290];
      sub_BE70(0, &qword_93E540, UIColor_ptr);
      v4 = sub_76A020();
      [v3 setTintColor:v4];

      v5 = OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_chevronView;
      v6 = v2;
      v7 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_chevronView];
      if (v7)
      {
        [v7 removeFromSuperview];
        v8 = *&v2[v5];
      }

      else
      {
        v8 = 0;
      }

      *&v6[v5] = v3;
      v11 = v3;

      [v6 addSubview:v11];
      [v6 setNeedsLayout];
      v10 = v11;
    }

    else
    {
      v9 = OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_chevronView;
      v10 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_chevronView];
      if (v10)
      {
        [v10 removeFromSuperview];
        v10 = *&v1[v9];
      }

      *&v1[v9] = 0;
    }
  }
}

unint64_t sub_14F7F4(__n128 a1)
{
  result = qword_951400;
  if (!qword_951400)
  {
    sub_75ABE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_951400);
  }

  return result;
}

uint64_t sub_14F84C()
{
  v1 = sub_7652D0();
  __chkstk_darwin(v1 - 8);
  if (sub_758630())
  {
    sub_764BC0();
  }

  else
  {
    result = sub_758650();
    if (!result)
    {
      return result;
    }
  }

  v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_artworkView);
  if (qword_93E068 != -1)
  {
    swift_once();
  }

  v4 = sub_7632B0();
  sub_BE38(v4, qword_9A06C8);
  sub_763210();
  [v3 contentMode];
  sub_765330();
  sub_7652E0();
  sub_7591B0();
  [v3 setContentMode:sub_765140()];
  sub_75DEF0();
  sub_7591F0();
  if (!sub_7651A0())
  {
    sub_396E8();
    sub_76A030();
  }

  sub_759070();
  sub_759210();
  sub_14FA38();
  sub_75A050();
}

unint64_t sub_14FA38()
{
  result = qword_945810;
  if (!qword_945810)
  {
    sub_759210();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_945810);
  }

  return result;
}

double *sub_14FA90()
{
  v0 = sub_765240();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _swiftEmptyArrayStorage;
  if (sub_758630())
  {
    sub_764BC0();
  }

  else if (!sub_758650())
  {
    return _swiftEmptyArrayStorage;
  }

  sub_765250();
  sub_765210();
  (*(v1 + 8))(v3, v0);
  if (qword_93E068 != -1)
  {
    swift_once();
  }

  v4 = sub_7632B0();
  sub_BE38(v4, qword_9A06C8);
  sub_763210();
  sub_765330();

  sub_769440();
  if (*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v7 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_7694C0();
  }

  sub_769500();

  return v7;
}

id sub_14FF04(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ArticleContainerViewController.ContainerView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_14FFC4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ArticleContainerViewController.ContainerView();
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = &v7[OBJC_IVAR____TtCC18ASMessagesProvider30ArticleContainerViewControllerP33_F28B2BC817961B9098740FBAC1DC899A13ContainerView_frameUpdatedCallback];
  v5 = *&v7[OBJC_IVAR____TtCC18ASMessagesProvider30ArticleContainerViewControllerP33_F28B2BC817961B9098740FBAC1DC899A13ContainerView_frameUpdatedCallback];
  v6 = *&v7[OBJC_IVAR____TtCC18ASMessagesProvider30ArticleContainerViewControllerP33_F28B2BC817961B9098740FBAC1DC899A13ContainerView_frameUpdatedCallback + 8];
  *v4 = sub_150804;
  v4[1] = v3;

  sub_F704(v5, v6);

  [v2 setView:v7];
}

void sub_1500A0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1500F4();
  }
}

void sub_1500F4()
{
  v1 = v0;
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider30ArticleContainerViewController_allowTraitCollectionOverrides] != 1 || (v2 = [v0 traitCollection], v3 = sub_7699B0(), v2, (v3 & 1) == 0))
  {
    v15 = &v1[OBJC_IVAR____TtC18ASMessagesProvider30ArticleContainerViewController_previousShouldOverrideTraitCollections];
    if ((v1[OBJC_IVAR____TtC18ASMessagesProvider30ArticleContainerViewController_previousShouldOverrideTraitCollections] & 1) == 0)
    {
      return;
    }

    goto LABEL_8;
  }

  v4 = [v1 view];
  if (!v4)
  {
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v22.origin.x = v7;
  v22.origin.y = v9;
  v22.size.width = v11;
  v22.size.height = v13;
  Width = CGRectGetWidth(v22);
  v15 = &v1[OBJC_IVAR____TtC18ASMessagesProvider30ArticleContainerViewController_previousShouldOverrideTraitCollections];
  if (Width < 650.0 != v1[OBJC_IVAR____TtC18ASMessagesProvider30ArticleContainerViewController_previousShouldOverrideTraitCollections])
  {
    if (Width < 650.0)
    {
      v16 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30ArticleContainerViewController_wrapperViewController];
      v17 = objc_opt_self();
      v18 = [v17 traitCollectionWithHorizontalSizeClass:2];
      [v16 setOverrideTraitCollection:v18 forChildViewController:*&v1[OBJC_IVAR____TtC18ASMessagesProvider30ArticleContainerViewController_articleViewController]];

      v19 = 1;
      v20 = [v17 traitCollectionWithHorizontalSizeClass:1];
      [v1 setOverrideTraitCollection:v20 forChildViewController:v16];

LABEL_9:
      *v15 = v19;
      return;
    }

LABEL_8:
    v21 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30ArticleContainerViewController_wrapperViewController];
    [v21 setOverrideTraitCollection:0 forChildViewController:*&v1[OBJC_IVAR____TtC18ASMessagesProvider30ArticleContainerViewController_articleViewController]];
    [v1 setOverrideTraitCollection:0 forChildViewController:v21];
    v19 = 0;
    goto LABEL_9;
  }
}

void sub_150350()
{
  v20.receiver = v0;
  v20.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v20, "viewDidLoad");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30ArticleContainerViewController_wrapperViewController];
  v2 = [v1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  v4 = [v0 view];
  if (!v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  [v4 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [v3 setFrame:{v7, v9, v11, v13}];
  v14 = [v1 view];
  if (!v14)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v15 = v14;
  [v14 setAutoresizingMask:18];

  v16 = [v0 view];
  if (!v16)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17 = v16;
  v18 = [v1 view];
  if (v18)
  {
    v19 = v18;
    [v17 addSubview:v18];

    return;
  }

LABEL_11:
  __break(1u);
}

id sub_150700(void *a1, void *a2)
{
  v4 = type metadata accessor for ArticleContainerViewController();
  v5 = objc_allocWithZone(v4);
  v5[OBJC_IVAR____TtC18ASMessagesProvider30ArticleContainerViewController_allowTraitCollectionOverrides] = 0;
  v5[OBJC_IVAR____TtC18ASMessagesProvider30ArticleContainerViewController_previousShouldOverrideTraitCollections] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider30ArticleContainerViewController_wrapperViewController] = a1;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider30ArticleContainerViewController_articleViewController] = a2;
  v10.receiver = v5;
  v10.super_class = v4;
  v6 = a1;
  v7 = a2;
  v8 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", 0, 0);
  [v8 addChildViewController:{v6, v10.receiver, v10.super_class}];

  return v8;
}

uint64_t sub_1507CC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_15080C(uint64_t a1)
{
  v29 = sub_10DD04(_swiftEmptyArrayStorage);
  v2 = *(a1 + 16);
  if (!v2)
  {
    return a1;
  }

  v3 = 0;
  while (v3 < *(a1 + 16))
  {
    v4 = *(a1 + 32 + 8 * v3);
    if (!*(v4 + 16))
    {
      goto LABEL_5;
    }

    v5 = sub_3DF2F8(0x6973736572706D69, 0xEC00000064496E6FLL);
    if ((v6 & 1) == 0)
    {
      goto LABEL_4;
    }

    sub_132B4(*(v4 + 56) + 32 * v5, v32);
    sub_13310(v32, v33);
    if (!*(v4 + 16) || (v7 = sub_3DF2F8(1701667182, 0xE400000000000000), (v8 & 1) == 0) || (sub_132B4(*(v4 + 56) + 32 * v7, v32), !swift_dynamicCast()))
    {
      sub_BEB8(v33);
LABEL_4:

      goto LABEL_5;
    }

    *&v32[0] = 0;
    *(&v32[0] + 1) = 0xE000000000000000;
    sub_76A7F0();
    v10 = *(&v32[0] + 1);
    v9 = *&v32[0];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v32[0] = v29;
    v28 = v9;
    v13 = sub_3DF2F8(v9, v10);
    v14 = *(v29 + 16);
    v15 = (v12 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      goto LABEL_25;
    }

    v17 = v12;
    if (*(v29 + 24) >= v16)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_45B7AC();
      }
    }

    else
    {
      sub_4553C4(v16, isUniquelyReferenced_nonNull_native);
      v18 = sub_3DF2F8(v28, v10);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_27;
      }

      v13 = v18;
    }

    v20 = *&v32[0];
    v29 = *&v32[0];
    if (v17)
    {
      v21 = (*(*&v32[0] + 56) + 16 * v13);
      *v21 = v30;
      v21[1] = v31;
    }

    else
    {
      *(*&v32[0] + 8 * (v13 >> 6) + 64) |= 1 << v13;
      v22 = (v20[6] + 16 * v13);
      *v22 = v28;
      v22[1] = v10;
      v23 = (v20[7] + 16 * v13);
      *v23 = v30;
      v23[1] = v31;
      v24 = v20[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_26;
      }

      v20[2] = v26;
    }

    sub_BEB8(v33);

LABEL_5:
    if (v2 == ++v3)
    {
      return a1;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_76A9B0();
  __break(1u);
  return result;
}

uint64_t sub_150B04(uint64_t a1, uint64_t a2)
{
  sub_38EE0(a1, &v8);
  if (v9)
  {
    sub_13310(&v8, v10);
    *&v8 = 0;
    *(&v8 + 1) = 0xE000000000000000;
    sub_76A7F0();
    if (*(a2 + 16))
    {
      v3 = sub_3DF2F8(v8, *(&v8 + 1));
      v5 = v4;

      if (v5)
      {
        v6 = *(*(a2 + 56) + 16 * v3);

        sub_BEB8(v10);
        return v6;
      }
    }

    else
    {
    }

    sub_BEB8(v10);
  }

  else
  {
    sub_BDD0(&v8);
  }

  return 0;
}

__n128 sub_150BF8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_150C34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_150C7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
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
      *(result + 184) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_150CF8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_150D0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_150D54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_150DB4(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  sub_B170((v5 + 64), *(v5 + 88));
  sub_7673F0();
  v11 = v10;
  v13 = v12;
  v15 = v14 + 4.0;
  v32.origin.x = a2;
  v32.origin.y = a3;
  v32.size.width = a4;
  v32.size.height = a5;
  MinX = CGRectGetMinX(v32);
  sub_15134C(v5, v30);
  sub_B170(v30, v31);
  sub_766710();
  v17 = v16;
  sub_BEB8(v30);
  v33.origin.y = v17 - v13;
  v33.origin.x = MinX;
  v33.size.width = v15;
  v33.size.height = v11;
  v18 = CGRectGetMaxX(v33) + *(v5 + 40);
  sub_B170((v5 + 104), *(v5 + 128));
  v34.origin.x = a2;
  v34.origin.y = a3;
  v34.size.width = a4;
  v34.size.height = a5;
  CGRectGetWidth(v34);
  v35.origin.x = a2;
  v35.origin.y = a3;
  v35.size.width = a4;
  v35.size.height = a5;
  CGRectGetHeight(v35);
  sub_7673F0();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_15134C(v5, v30);
  sub_B170(v30, v31);
  sub_766710();
  v26 = v25;
  sub_BEB8(v30);
  v36.origin.x = v18;
  v36.origin.y = v26 - v24;
  v36.size.width = v20;
  v36.size.height = v22;
  CGRectGetMaxX(v36);
  v37.origin.x = a2;
  v37.origin.y = a3;
  v37.size.width = a4;
  v37.size.height = a5;
  CGRectGetWidth(v37);
  v38.origin.x = a2;
  v38.origin.y = a3;
  v38.size.width = a4;
  v38.size.height = a5;
  CGRectGetWidth(v38);
  sub_B170((v5 + 144), *(v5 + 168));
  v39.origin.x = a2;
  v39.origin.y = a3;
  v39.size.width = a4;
  v39.size.height = a5;
  CGRectGetHeight(v39);
  sub_7673F0();
  sub_15134C(v5, v30);
  sub_B170(v30, v31);
  sub_766710();
  sub_BEB8(v30);
  sub_B170((v5 + 64), *(v5 + 88));
  sub_769CA0();
  sub_7673E0();
  sub_B170((v5 + 104), *(v5 + 128));
  sub_769CA0();
  sub_7673E0();
  sub_B170((v5 + 144), *(v5 + 168));
  sub_769CA0();
  return sub_7673E0();
}

double sub_151164(uint64_t a1, double a2)
{
  sub_15134C(v2, v5);
  sub_B170(v5, v5[3]);
  sub_766710();
  sub_BEB8(v5);
  return a2;
}

uint64_t sub_1511F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_151384();

  return CustomLayout._eraseToAnyForTesting(with:)(a1, a2, v4);
}

unint64_t sub_15124C()
{
  result = qword_946710;
  if (!qword_946710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_946710);
  }

  return result;
}

unint64_t sub_1512A4()
{
  result = qword_946718;
  if (!qword_946718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_946718);
  }

  return result;
}

unint64_t sub_151384()
{
  result = qword_946720;
  if (!qword_946720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_946720);
  }

  return result;
}

unint64_t sub_1513F0()
{
  result = qword_946728;
  if (!qword_946728)
  {
    sub_763CF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_946728);
  }

  return result;
}

uint64_t sub_151448(void *a1, uint64_t a2, uint64_t a3)
{
  v26[1] = a3;
  v5 = sub_7687C0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_7685A0();
  __chkstk_darwin(v9 - 8);
  __chkstk_darwin(v10);
  v11 = sub_768FF0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v15 = qword_93DF00;
    v16 = a1;
    if (v15 != -1)
    {
      swift_once();
    }

    sub_BE38(v11, qword_9A0430);
    sub_BD88(&qword_93FD00, &unk_77DF10);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768590();
    v29._object = 0x80000000007D1370;
    v29._countAndFlagsBits = 0xD000000000000038;
    sub_768580(v29);
    *(&v28 + 1) = sub_151F44();
    *&v27 = v16;
    v17 = v16;
    sub_768560();
    sub_BDD0(&v27);
    v30._countAndFlagsBits = 0x745368747561202CLL;
    v30._object = 0xEE00203A73757461;
    sub_768580(v30);
    v18 = [v17 authorizationStatus];
    type metadata accessor for UNAuthorizationStatus(0);
    *(&v28 + 1) = v19;
    *&v27 = v18;
    sub_768560();
    sub_BDD0(&v27);
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    sub_768580(v31);
    sub_7685B0();
    sub_768E80();

    (*(v6 + 104))(v8, enum case for ActionOutcome.performed(_:), v5);
    sub_768F60();

    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    if (qword_93DF00 != -1)
    {
      swift_once();
    }

    v21 = sub_BE38(v11, qword_9A0430);
    (*(v12 + 16))(v14, v21, v11);
    sub_BD88(&qword_93FD00, &unk_77DF10);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768590();
    v32._countAndFlagsBits = 0xD00000000000003BLL;
    v32._object = 0x80000000007D1330;
    sub_768580(v32);
    v27 = 0u;
    v28 = 0u;
    sub_768560();
    sub_BDD0(&v27);
    v33._countAndFlagsBits = 0x3A726F727265202CLL;
    v33._object = 0xE900000000000020;
    sub_768580(v33);
    if (a2)
    {
      swift_getErrorValue();
      v22 = sub_76A9C0();
      v24 = &type metadata for String;
    }

    else
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      *&v28 = 0;
    }

    *&v27 = v22;
    *(&v27 + 1) = v23;
    *(&v28 + 1) = v24;
    sub_768560();
    sub_BDD0(&v27);
    v34._countAndFlagsBits = 0;
    v34._object = 0xE000000000000000;
    sub_768580(v34);
    sub_7685B0();
    sub_768E80();

    (*(v12 + 8))(v14, v11);
    sub_151ED0();
    swift_allocError();
    *v25 = 1;
    sub_768F50();
  }
}

void sub_151A34(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_151AC4()
{
  sub_BD88(&qword_94DDC0, qword_77DE00);
  v0 = sub_768F90();
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    if (qword_93DF00 != -1)
    {
      swift_once();
    }

    v3 = sub_768FF0();
    sub_BE38(v3, qword_9A0430);
    sub_BD88(&qword_93FD00, &unk_77DF10);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768540();
    sub_768E80();

    v4 = [objc_allocWithZone(AMSUserNotificationAuthorizationOptions) init];
    [v4 setUserInitiated:1];
    v5 = [objc_allocWithZone(AMSUserNotificationAuthorizationTask) initWithBundleIdentifier:v2 options:v4];

    v6 = [v5 requestAuthorization];
    v11[4] = sub_151F24;
    v11[5] = v0;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_151A34;
    v11[3] = &unk_8856A8;
    v7 = _Block_copy(v11);

    [v6 addFinishBlock:v7];
    _Block_release(v7);
  }

  else
  {
    if (qword_93DF00 != -1)
    {
      swift_once();
    }

    v8 = sub_768FF0();
    sub_BE38(v8, qword_9A0430);
    sub_BD88(&qword_93FD00, &unk_77DF10);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768540();
    sub_768E80();

    sub_151ED0();
    swift_allocError();
    *v9 = 0;
    sub_768F50();
  }

  return v0;
}

unint64_t sub_151ED0()
{
  result = qword_946730;
  if (!qword_946730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_946730);
  }

  return result;
}

double sub_151F2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_151F44()
{
  result = qword_946738;
  if (!qword_946738)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_946738);
  }

  return result;
}

unint64_t sub_151FA4()
{
  result = qword_946740;
  if (!qword_946740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_946740);
  }

  return result;
}

__n128 sub_151FF8@<Q0>(uint64_t *a1@<X8>)
{
  v10 = *(v1 + 32);
  v11 = *(v1 + 48);
  v12 = *(v1 + 64);
  v13 = *(v1 + 80);
  v8 = *v1;
  v9 = *(v1 + 16);
  if (*(v1 + 240) == 1)
  {
    a1[3] = &type metadata for BannerCollectionViewCellLayout.VerticalBannerLayout;
    a1[4] = sub_13CB5C();
  }

  else
  {
    a1[3] = &type metadata for BannerCollectionViewCellLayout.HorizontalBannerLayout;
    a1[4] = sub_13CAB0();
  }

  v3 = swift_allocObject();
  sub_134D8(v1 + 96, v3 + 112);
  sub_867FC(v1 + 136, v3 + 152);
  v4 = *(v1 + 176);
  v5 = *(v1 + 184);
  v6 = *(v1 + 192);
  sub_867FC(v1 + 200, v3 + 216);
  *(v3 + 48) = v10;
  *(v3 + 64) = v11;
  *(v3 + 80) = v12;
  *(v3 + 96) = v13;
  result = v8;
  *(v3 + 16) = v8;
  *(v3 + 32) = v9;
  *(v3 + 192) = v4;
  *(v3 + 200) = v5;
  *(v3 + 208) = v6;
  *a1 = v3;
  return result;
}

uint64_t sub_15210C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_152124(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

__n128 sub_152178(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_1521C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 241))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 120);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_15220C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 240) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 241) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 241) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1522A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 120);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1522EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
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
      *(result + 240) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_152378(uint64_t a1, double a2, double a3)
{
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 5);
  v31 = *(v3 + 3);
  v32 = v7;
  v33 = v3[7];
  v9 = v3[8];
  v8 = v3[9];
  v10 = v3[10];
  v11 = v3[11];
  sub_134D8((v3 + 12), v28);
  sub_867FC((v3 + 17), v29);
  v12 = v3[22];
  v13 = v3[23];
  v14 = *(v3 + 192);
  v19[0] = v4;
  v19[1] = v5;
  v19[2] = v6;
  v20 = v31;
  v21 = v32;
  v22 = v33;
  v23 = v9;
  v24 = v8;
  v25 = v10;
  v26 = v11;
  v27 = 0;
  v29[5] = v12;
  v29[6] = v13;
  v30 = v14;
  if ((v14 & 1) == 0)
  {
    sub_867FC(v29, &v17);
    sub_8699C(&v17);
  }

  sub_B170(v28, v28[3]);
  sub_7673F0();
  sub_153320(v19);
  sub_867FC((v3 + 25), &v17);
  if (v18)
  {
    sub_10914(&v17, v19);
    sub_B170(v19, v20);
    sub_7673F0();
    sub_BEB8(v19);
  }

  else
  {
    sub_8699C(&v17);
  }

  return a2;
}

uint64_t sub_15257C(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  sub_769BB0();
  v14 = sub_705B8(a2, a3, a4, a5, v12, v13);
  v16 = v15;
  v52 = v18;
  v53 = v17;
  v19 = *(v5 + 1);
  v78 = *v5;
  v79 = v19;
  v20 = *(v5 + 3);
  v80 = *(v5 + 2);
  v81 = v20;
  v21 = v5[8];
  v22 = *(v5 + 9);
  v77 = *(v5 + 5);
  sub_134D8((v5 + 12), v64);
  sub_867FC((v5 + 17), v66);
  v23 = v5[22];
  v24 = v6[23];
  v25 = *(v6 + 192);
  v59[0] = v78;
  v59[1] = v79;
  v59[2] = v80;
  v59[3] = v81;
  v60 = v21;
  v61 = v22;
  v62 = v77;
  v63 = 0;
  *&v66[5] = v23;
  *&v66[6] = v24;
  v26 = 0.0;
  v27 = 0.0;
  v67 = v25;
  if ((v25 & 1) == 0)
  {
    sub_867FC(v66, v68);
    if (v69 != 0.0)
    {
      v27 = v24;
      v26 = v23;
    }

    sub_8699C(v68);
  }

  if (v26 <= 0.0)
  {
    v28 = 0.0;
  }

  else
  {
    v28 = v21 + v26;
  }

  sub_B170(v64, v65);
  sub_7673F0();
  v33 = v30;
  if (v27 > v30)
  {
    v30 = v27;
  }

  *v68 = v26;
  *&v68[1] = v27;
  v34 = v28 + v29;
  *&v68[2] = v28;
  v69 = v29;
  v70 = v33;
  v71 = v31;
  v72 = v32;
  v73 = v28 + v29;
  v74 = v30;
  v75 = v30;
  v35 = v30;
  v76 = 0;
  sub_867FC((v6 + 25), v57);
  v36 = v58;
  sub_8699C(v57);
  if (v25)
  {
    v37 = 1;
  }

  else
  {
    sub_867FC((v6 + 17), v57);
    v37 = v58 == 0;
    sub_8699C(v57);
  }

  sub_B170(v64, v65);
  sub_7673F0();
  v39 = v38 >= v33 || v37;
  if (v36 || (v39 & 1) == 0)
  {
    v44 = v34;
    v40 = v14;
    v83.origin.x = v14;
    v41 = v16;
    v83.origin.y = v16;
    v42 = v52;
    v43 = v53;
    v83.size.width = v53;
    v83.size.height = v52;
    MinX = CGRectGetMinX(v83);
    if (v36)
    {
      v84.origin.x = v14;
      v84.origin.y = v41;
      v84.size.width = v53;
      v84.size.height = v52;
      MinY = CGRectGetMinY(v84);
      goto LABEL_22;
    }
  }

  else
  {
    v40 = v14;
    v82.origin.x = v14;
    v41 = v16;
    v82.origin.y = v16;
    v42 = v52;
    v43 = v53;
    v82.size.width = v53;
    v82.size.height = v52;
    v44 = v34;
    MinX = CGRectGetMidX(v82) + v34 * -0.5;
  }

  v85.origin.x = v40;
  v85.origin.y = v41;
  v85.size.width = v43;
  v85.size.height = v42;
  MinY = CGRectGetMidY(v85) + v35 * -0.5;
LABEL_22:
  v54 = MinY;
  sub_769CA0();
  sub_1529B8(a1, v68, v47, v48, v49, v50);
  sub_867FC((v6 + 25), &v55);
  if (v56)
  {
    sub_10914(&v55, v57);
    sub_B170(v57, v58);
    sub_7673F0();
    v86.origin.x = v40;
    v86.origin.y = v41;
    v86.size.width = v43;
    v86.size.height = v42;
    CGRectGetMinX(v86);
    v87.origin.x = MinX;
    v87.origin.y = v54;
    v87.size.width = v44;
    v87.size.height = v35;
    CGRectGetMaxY(v87);
    v88.origin.x = v40;
    v88.origin.y = v41;
    v88.size.width = v43;
    v88.size.height = v42;
    CGRectGetWidth(v88);
    sub_B170(v57, v58);
    sub_769CA0();
    sub_7673E0();
    sub_153320(v59);
    return sub_BEB8(v57);
  }

  else
  {
    sub_153320(v59);
    return sub_8699C(&v55);
  }
}

uint64_t sub_1529B8(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v11 = *(v6 + 96) | (*(a2 + 32) < *(a2 + 8) + *(a2 + 8));
  sub_867FC(v6 + 144, &v21);
  if (v22)
  {
    sub_10914(&v21, v23);
    v24.origin.x = a3;
    v24.origin.y = a4;
    v24.size.width = a5;
    v24.size.height = a6;
    CGRectGetMinX(v24);
    v12 = a3;
    v13 = a4;
    v14 = a5;
    v15 = a6;
    if (v11)
    {
      CGRectGetMidY(*&v12);
    }

    else
    {
      CGRectGetMinY(*&v12);
    }

    sub_B170(v23, v23[3]);
    sub_769CA0();
    sub_7673E0();
    sub_BEB8(v23);
  }

  else
  {
    sub_8699C(&v21);
  }

  v25.origin.x = a3;
  v25.origin.y = a4;
  v25.size.width = a5;
  v25.size.height = a6;
  CGRectGetMinX(v25);
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  if (v11)
  {
    CGRectGetMidY(*&v16);
  }

  else
  {
    CGRectGetMinY(*&v16);
  }

  sub_B170((v6 + 104), *(v6 + 128));
  sub_769CA0();
  return sub_7673E0();
}

double sub_152BB8(uint64_t a1, double a2, double a3)
{
  sub_867FC(v3 + 200, &v28);
  if (v29)
  {
    sub_10914(&v28, &v14);
    sub_B170(&v14, *(&v15 + 1));
    sub_7673F0();
    sub_BEB8(&v14);
  }

  else
  {
    sub_8699C(&v28);
  }

  v4 = v3[1];
  v26 = *v3;
  v27 = v4;
  v5 = *(v3 + 8);
  v25 = *(v3 + 72);
  v6 = *(v3 + 11);
  v12 = v3[3];
  v13 = v3[2];
  sub_134D8((v3 + 6), v22);
  sub_867FC(v3 + 136, v23);
  v7 = *(v3 + 22);
  v8 = *(v3 + 23);
  v9 = *(v3 + 192);
  v14 = v26;
  v15 = v27;
  v16 = v13;
  v17 = v12;
  v18 = v5;
  v19 = v25;
  v20 = v6;
  v21 = 1;
  v23[5] = v7;
  v23[6] = v8;
  v24 = v9;
  if ((v9 & 1) == 0)
  {
    sub_867FC(v23, &v28);
    sub_8699C(&v28);
  }

  sub_B170(v22, v22[3]);
  sub_7673F0();
  sub_153320(&v14);
  return a2;
}

uint64_t sub_152DDC(uint64_t a1, double a2, double a3, double a4, double a5)
{
  sub_769BB0();
  v72.origin.x = sub_705B8(a2, a3, a4, a5, v11, v12);
  x = v72.origin.x;
  y = v72.origin.y;
  width = v72.size.width;
  height = v72.size.height;
  CGRectGetWidth(v72);
  sub_867FC(v5 + 200, &v62);
  v42 = y;
  if (v64 == 0.0)
  {
    sub_8699C(&v62);
    v17 = y;
  }

  else
  {
    sub_10914(&v62, &v43);
    sub_B170(&v43, *(&v44 + 1));
    sub_7673F0();
    v73.origin.x = x;
    v73.origin.y = y;
    v73.size.width = width;
    v73.size.height = height;
    CGRectGetMaxX(v73);
    v74.origin.x = x;
    v74.origin.y = y;
    v74.size.width = width;
    v74.size.height = height;
    CGRectGetMidY(v74);
    sub_B170(&v43, *(&v44 + 1));
    sub_769CA0();
    sub_7673E0();
    v17 = y;
    sub_BEB8(&v43);
  }

  sub_867FC(v5 + 200, v60);
  v18 = v61;
  sub_8699C(v60);
  v19 = v5[1];
  v56 = *v5;
  v57 = v19;
  v20 = v5[3];
  v58 = v5[2];
  v59 = v20;
  v21 = *(v5 + 8);
  v54 = *(v5 + 72);
  v55 = *(v5 + 11);
  sub_134D8((v5 + 6), v51);
  sub_867FC(v5 + 136, v52);
  v22 = *(v5 + 22);
  v23 = *(v5 + 23);
  v24 = *(v5 + 192);
  v43 = v56;
  v44 = v57;
  v45 = v58;
  v46 = v59;
  v47 = v21;
  v48 = v54;
  v49 = v55;
  v50 = 1;
  *&v52[5] = v22;
  *&v52[6] = v23;
  v53 = v24;
  v75.origin.x = x;
  v75.origin.y = v17;
  v75.size.width = width;
  v75.size.height = height;
  CGRectGetHeight(v75);
  v25 = 0.0;
  v26 = 0.0;
  if ((v24 & 1) == 0)
  {
    sub_867FC(v52, &v62);
    if (v64 != 0.0)
    {
      v26 = v23;
      v25 = v22;
    }

    sub_8699C(&v62);
  }

  if (v25 <= 0.0)
  {
    v27 = 0.0;
  }

  else
  {
    v27 = v21 + v25;
  }

  sub_B170(v51, v51[3]);
  sub_7673F0();
  if (v26 > v29)
  {
    v32 = v26;
  }

  else
  {
    v32 = v29;
  }

  *&v62 = v25;
  *(&v62 + 1) = v26;
  v63 = v27;
  v64 = v28;
  v65 = v29;
  v66 = v30;
  v67 = v31;
  v68 = v27 + v28;
  v69 = v32;
  v70 = v32;
  v71 = 0;
  v33 = x;
  v34 = v42;
  v35 = width;
  v36 = height;
  if (v18)
  {
    CGRectGetMinX(*&v33);
  }

  else
  {
    CGRectGetMidX(*&v33);
  }

  v76.origin.x = x;
  v76.origin.y = v42;
  v76.size.width = width;
  v76.size.height = height;
  CGRectGetMidY(v76);
  sub_769CA0();
  sub_1529B8(a1, &v62, v37, v38, v39, v40);
  return sub_153320(&v43);
}

double sub_1531CC(uint64_t a1, double a2, double a3)
{
  sub_151FF8(v6);
  sub_B170(v6, v7);
  sub_7673F0();
  v4 = v3;
  sub_BEB8(v6);
  return v4;
}

uint64_t sub_153270(double a1, double a2, double a3, double a4)
{
  sub_151FF8(v5);
  sub_B170(v5, v5[3]);
  sub_7673E0();
  return sub_BEB8(v5);
}

__n128 sub_153304@<Q0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 48);
  a1[2] = *(v1 + 32);
  a1[3] = v2;
  v3 = *(v1 + 80);
  a1[4] = *(v1 + 64);
  a1[5] = v3;
  result = *v1;
  v5 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v5;
  return result;
}

__n128 sub_153350(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 185) = *(a2 + 185);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_153394(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 201))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 128);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1533DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 200) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 201) = 1;
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
      *(result + 128) = (a2 - 1);
      return result;
    }

    *(result + 201) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_153460(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_15347C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_15349C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 96) = v3;
  return result;
}

unint64_t sub_153504()
{
  result = qword_946748;
  if (!qword_946748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_946748);
  }

  return result;
}

id sub_1535CC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_764A60();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_75FA00();
  v39 = *(v7 - 8);
  __chkstk_darwin(v7);
  v37 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_9467B0, &qword_7A2E60);
  __chkstk_darwin(v9 - 8);
  v10 = sub_BD88(&unk_944D90, &qword_783300);
  v38 = *(v10 - 8);
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v43 = &v30 - v12;
  v46.receiver = v0;
  v46.super_class = ObjectType;
  objc_msgSendSuper2(&v46, "viewDidLoad", v11);
  v13 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider35ComponentViewOverflowViewController_componentView];
  v35 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider35ComponentViewOverflowViewController_componentView + 8];
  v36 = swift_getObjectType();
  v42 = v13;
  v14 = [v13 backgroundView];
  result = [v0 view];
  v16 = result;
  v40 = v10;
  v41 = v6;
  if (v14)
  {
    if (!result)
    {
LABEL_9:
      __break(1u);
      goto LABEL_10;
    }

    v17 = [v14 backgroundColor];
    [v16 setBackgroundColor:v17];

LABEL_6:
    v18 = v7;
    v33 = v4;
    v34 = v3;

    result = [v0 view];
    if (result)
    {
      v19 = result;
      v20 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider35ComponentViewOverflowViewController_scrollView];
      v32 = v20;
      [result addSubview:v20];

      [v20 setDelegate:v0];
      [v20 setAlwaysBounceVertical:1];
      v44[0] = 0;
      sub_76A6E0();
      sub_769090();
      v45[0] = *&v0[OBJC_IVAR____TtC18ASMessagesProvider35ComponentViewOverflowViewController_stateStore];

      sub_BD88(&qword_9467C0, &qword_790FA0);
      sub_16194(&qword_9467C8, &qword_9467C0, &qword_790FA0, &protocol conformance descriptor for TransientStateStore<A>);
      sub_768AE0();
      v21 = OBJC_IVAR____TtC18ASMessagesProvider35ComponentViewOverflowViewController_model;
      v31 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider35ComponentViewOverflowViewController_objectGraph];
      sub_BD88(&unk_9467D0, &qword_787700);
      v22 = v39;
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_77E280;
      sub_75F9B0();
      sub_75F980();
      v45[0] = v23;
      sub_154D60(&qword_94FA60, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
      sub_BD88(&unk_9467E0, &qword_787708);
      sub_16194(&qword_963050, &unk_9467E0, &qword_787708, &protocol conformance descriptor for [A]);
      v24 = v37;
      sub_76A5A0();
      v45[0] = _swiftEmptyArrayStorage;
      sub_154D60(&qword_9467F0, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
      sub_BD88(&qword_9467F8, &unk_787710);
      sub_16194(&qword_946800, &qword_9467F8, &unk_787710, &protocol conformance descriptor for [A]);
      v25 = v41;
      v26 = v34;
      sub_76A5A0();
      v27 = v36;
      v28 = v42;
      (*(v35 + 80))(&v1[v21], v43, v31, v24, v25, v1, v36);
      (*(v33 + 8))(v25, v26);
      (*(v22 + 8))(v24, v18);
      sub_134D8(&v1[v21], v45);
      v44[3] = v27;
      v44[0] = v28;
      v29 = v28;
      sub_758EF0();
      sub_154DA8(v45);
      sub_BEB8(v44);
      [v32 addSubview:v29];
      return (*(v38 + 8))(v43, v40);
    }

    __break(1u);
    goto LABEL_9;
  }

  if (result)
  {
    v17 = [v42 backgroundColor];
    [v16 setBackgroundColor:v17];
    goto LABEL_6;
  }

LABEL_10:
  __break(1u);
  return result;
}

id sub_153D0C()
{
  v42.receiver = v0;
  v42.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v42, "viewDidLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider35ComponentViewOverflowViewController_scrollView];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  [result bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v1 setFrame:{v5, v7, v9, v11}];
  result = [v0 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = result;
  [result bounds];
  v14 = v13;
  v16 = v15;

  v17.n128_u64[0] = v14;
  v18 = sub_153F58(v17, v16);
  v20 = v19;
  [v1 frame];
  Height = CGRectGetHeight(v43);
  v22 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider35ComponentViewOverflowViewController_componentView];
  result = [v0 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v23 = result;
  [result bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v44.origin.x = v25;
  v44.origin.y = v27;
  v44.size.width = v29;
  v44.size.height = v31;
  MinX = CGRectGetMinX(v44);
  result = [v0 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v33 = result;
  if (v20 <= Height)
  {
    v20 = Height;
  }

  [result bounds];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;

  v45.origin.x = v35;
  v45.origin.y = v37;
  v45.size.width = v39;
  v45.size.height = v41;
  [v22 setFrame:{MinX, CGRectGetMinY(v45), v18, v20}];
  [v1 setContentSize:{v18, v20}];
  return [v0 setPreferredContentSize:{v18, v20}];
}

double sub_153F58(__n128 a1, double a2)
{
  v3 = v2;
  v5 = a1.n128_f64[0];
  v24 = sub_75FA00();
  v6 = *(v24 - 8);
  __chkstk_darwin(v24);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_9467B0, &qword_7A2E60);
  __chkstk_darwin(v9 - 8);
  v10 = sub_BD88(&qword_946810, &qword_783360);
  v22 = *(v10 - 8);
  v23 = v10;
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  v25 = 0;
  sub_76A6E0();
  sub_769090();
  v26 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider35ComponentViewOverflowViewController_stateStore);

  sub_BD88(&qword_9467C0, &qword_790FA0);
  sub_16194(&qword_9467C8, &qword_9467C0, &qword_790FA0, &protocol conformance descriptor for TransientStateStore<A>);
  sub_769020();
  v13 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider35ComponentViewOverflowViewController_componentView + 8);
  ObjectType = swift_getObjectType();
  v20 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider35ComponentViewOverflowViewController_objectGraph);
  v21 = OBJC_IVAR____TtC18ASMessagesProvider35ComponentViewOverflowViewController_model;
  sub_BD88(&unk_9467D0, &qword_787700);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_77E280;
  sub_75F9B0();
  sub_75F980();
  v26 = v15;
  sub_154D60(&qword_94FA60, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  sub_BD88(&unk_9467E0, &qword_787708);
  sub_16194(&qword_963050, &unk_9467E0, &qword_787708, &protocol conformance descriptor for [A]);
  v16 = v24;
  sub_76A5A0();
  v17 = (*(v13 + 72))(v3 + v21, 1, v12, v20, v8, v3, ObjectType, v13, v5, a2);
  (*(v6 + 8))(v8, v16);
  (*(v22 + 8))(v12, v23);
  return v17;
}

void sub_154428(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "traitCollectionDidChange:", a1);
  if (a1 && [a1 horizontalSizeClass] == &dword_0 + 2)
  {
    v3 = [v1 traitCollection];
    v4 = [v3 horizontalSizeClass];

    if (v4 == &dword_0 + 1)
    {
      [v1 dismissViewControllerAnimated:0 completion:0];
    }
  }
}

uint64_t sub_15454C()
{
  v1 = sub_764A60();
  v2 = *(v1 - 8);
  v25 = v1;
  v26 = v2;
  __chkstk_darwin(v1);
  v24 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_75FA00();
  v19 = *(v21 - 8);
  __chkstk_darwin(v21);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_9467B0, &qword_7A2E60);
  __chkstk_darwin(v6 - 8);
  v7 = sub_BD88(&unk_944D90, &qword_783300);
  v22 = *(v7 - 8);
  v23 = v7;
  __chkstk_darwin(v7);
  v9 = &v15 - v8;
  v27 = 0;
  sub_76A6E0();
  sub_769090();
  v28 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider35ComponentViewOverflowViewController_stateStore);

  sub_BD88(&qword_9467C0, &qword_790FA0);
  sub_16194(&qword_9467C8, &qword_9467C0, &qword_790FA0, &protocol conformance descriptor for TransientStateStore<A>);
  sub_768AE0();
  v18 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider35ComponentViewOverflowViewController_componentView + 8);
  ObjectType = swift_getObjectType();
  v16 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider35ComponentViewOverflowViewController_objectGraph);
  v17 = OBJC_IVAR____TtC18ASMessagesProvider35ComponentViewOverflowViewController_model;
  sub_BD88(&unk_9467D0, &qword_787700);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_77B6D0;
  sub_75F9B0();
  v28 = v10;
  sub_154D60(&qword_94FA60, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  sub_BD88(&unk_9467E0, &qword_787708);
  sub_16194(&qword_963050, &unk_9467E0, &qword_787708, &protocol conformance descriptor for [A]);
  v11 = v21;
  sub_76A5A0();
  v28 = _swiftEmptyArrayStorage;
  sub_154D60(&qword_9467F0, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  sub_BD88(&qword_9467F8, &unk_787710);
  sub_16194(&qword_946800, &qword_9467F8, &unk_787710, &protocol conformance descriptor for [A]);
  v13 = v24;
  v12 = v25;
  sub_76A5A0();
  (*(v18 + 80))(v0 + v17, v9, v16, v5, v13, v0, ObjectType);
  (*(v26 + 8))(v13, v12);
  (*(v19 + 8))(v5, v11);
  return (*(v22 + 8))(v9, v23);
}

id sub_154A64(uint64_t a1)
{
  v3 = sub_BD88(&unk_94EE60, qword_7841A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = [objc_allocWithZone(type metadata accessor for ComponentViewOverflowTransitioning(0)) init];
  v7 = OBJC_IVAR____TtC18ASMessagesProvider35ComponentViewOverflowViewController_overflowTransitioning;
  v8 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider35ComponentViewOverflowViewController_overflowTransitioning];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider35ComponentViewOverflowViewController_overflowTransitioning] = v6;

  v9 = *&v1[v7];
  if (v9)
  {
    v9[OBJC_IVAR____TtC18ASMessagesProvider34ComponentViewOverflowTransitioning_isTransitioningFromContainer] = 1;
    v10 = sub_757640();
    v11 = *(v10 - 8);
    (*(v11 + 16))(v5, a1, v10);
    (*(v11 + 56))(v5, 0, 1, v10);
    v12 = OBJC_IVAR____TtC18ASMessagesProvider34ComponentViewOverflowTransitioning_selectedIndexPath;
    swift_beginAccess();
    v13 = v9;
    sub_127C68(v5, &v9[v12]);
    swift_endAccess();

    v14 = *&v1[v7];
  }

  else
  {
    v14 = 0;
  }

  [v1 setTransitioningDelegate:v14];
  return [v1 setModalPresentationStyle:4];
}

void sub_154D48()
{
  v1 = *(*v0 + OBJC_IVAR____TtC18ASMessagesProvider35ComponentViewOverflowViewController_overflowTransitioning);
  *(*v0 + OBJC_IVAR____TtC18ASMessagesProvider35ComponentViewOverflowViewController_overflowTransitioning) = 0;
}

uint64_t sub_154D60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_154DA8(uint64_t a1)
{
  v2 = sub_BD88(&unk_963040, &qword_77F400);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_154E10(void *a1)
{
  if (*v1 != *a1)
  {
    goto LABEL_16;
  }

  if ((sub_76A6C0() & 1) == 0)
  {
    goto LABEL_16;
  }

  type metadata accessor for BoolPreferencesDebugSetting(0);
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    goto LABEL_16;
  }

  v3 = v2;
  v4 = *(v2 + 56) == *(v1 + 56) && *(v2 + 64) == *(v1 + 64);
  if (!v4 && (sub_76A950() & 1) == 0)
  {
    goto LABEL_16;
  }

  v5 = *(v3 + 80);
  v6 = *(v1 + 80);
  if (v5)
  {
    if (v6 && (*(v3 + 72) == *(v1 + 72) && v5 == v6 || (sub_76A950() & 1) != 0))
    {
      goto LABEL_14;
    }

LABEL_16:
    v7 = 0;
    return v7 & 1;
  }

  if (v6)
  {
    goto LABEL_16;
  }

LABEL_14:
  v7 = *(v3 + 88) ^ *(v1 + 88) ^ 1;
  return v7 & 1;
}

void sub_154F28(uint64_t a1, __n128 a2)
{
  sub_76A6D0();
  sub_769330();
  if (*(v2 + 80))
  {
    sub_76AA50(1u);
    sub_769330();
  }

  else
  {
    sub_76AA50(0);
  }

  sub_76AA50(*(v2 + 88));
}

uint64_t sub_154FB4()
{

  v1 = OBJC_IVAR____TtC18ASMessagesProvider27BoolPreferencesDebugSetting_key;
  v2 = sub_BD88(&unk_945000, &qword_781830);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_155048()
{
  sub_1EB60(v0 + 16);

  v1 = OBJC_IVAR____TtC18ASMessagesProvider27BoolPreferencesDebugSetting_key;
  v2 = sub_BD88(&unk_945000, &qword_781830);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BoolPreferencesDebugSetting(uint64_t a1)
{
  result = qword_946840;
  if (!qword_946840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_155184(uint64_t a1)
{
  sub_155234();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_155234()
{
  if (!qword_946850)
  {
    v0 = sub_7687F0();
    if (!v1)
    {
      atomic_store(v0, &qword_946850);
    }
  }
}

uint64_t sub_155284()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93D8E8 != -1)
  {
    swift_once();
  }

  v4 = sub_7666D0();
  v5 = sub_BE38(v4, qword_99F2B0);
  (*(*(v4 - 8) + 16))(v3, v5, v4);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  return sub_75D7F0();
}

void sub_155404()
{
  v0 = [objc_opt_self() systemFontOfSize:10.0 weight:UIFontWeightBold];
  v1 = [objc_opt_self() configurationWithFont:v0];

  qword_946918 = v1;
}

uint64_t sub_155488()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v20[0] = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v21 = v20 - v4;
  __chkstk_darwin(v5);
  v7 = v20 - v6;
  v8 = sub_75D850();
  sub_161DC(v8, qword_946920);
  v20[2] = sub_BE38(v8, qword_946920);
  if (qword_93D8E0 != -1)
  {
    swift_once();
  }

  v9 = sub_7666D0();
  v10 = sub_BE38(v9, qword_99F298);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v20[1] = v7;
  if (qword_93D8F8 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v9, qword_99F2E0);
  v15 = v21;
  v11(v21, v14, v9);
  v13(v15, v12, v0);
  v16 = v20[0];
  v11(v20[0], v14, v9);
  v13(v16, v12, v0);
  v23[3] = sub_766CA0();
  v23[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v23);
  v22[3] = v0;
  v22[4] = &protocol witness table for FontSource;
  v17 = sub_B1B4(v22);
  (*(v1 + 16))(v17, v16, v0);
  sub_766CB0();
  (*(v1 + 8))(v16, v0);
  v18 = [objc_opt_self() systemFontOfSize:15.0 weight:UIFontWeightBold];
  [objc_opt_self() configurationWithFont:v18];

  return sub_75D7E0();
}

uint64_t sub_155898()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v20[0] = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v21 = v20 - v4;
  __chkstk_darwin(v5);
  v7 = v20 - v6;
  v8 = sub_75D850();
  sub_161DC(v8, qword_946938);
  v20[2] = sub_BE38(v8, qword_946938);
  if (qword_93D8E0 != -1)
  {
    swift_once();
  }

  v9 = sub_7666D0();
  v10 = sub_BE38(v9, qword_99F298);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v20[1] = v7;
  if (qword_93D8F8 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v9, qword_99F2E0);
  v15 = v21;
  v11(v21, v14, v9);
  v13(v15, v12, v0);
  v16 = v20[0];
  v11(v20[0], v14, v9);
  v13(v16, v12, v0);
  v23[3] = sub_766CA0();
  v23[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v23);
  v22[3] = v0;
  v22[4] = &protocol witness table for FontSource;
  v17 = sub_B1B4(v22);
  (*(v1 + 16))(v17, v16, v0);
  sub_766CB0();
  (*(v1 + 8))(v16, v0);
  sub_1582B4();
  v18 = UIFontTextStyleFootnote;
  sub_769C60();

  return sub_75D7E0();
}

uint64_t sub_155C7C()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v21[0] = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v22 = v21 - v4;
  __chkstk_darwin(v5);
  v7 = v21 - v6;
  v8 = sub_75D850();
  sub_161DC(v8, qword_946950);
  v21[2] = sub_BE38(v8, qword_946950);
  if (qword_93D920 != -1)
  {
    swift_once();
  }

  v9 = sub_7666D0();
  v10 = sub_BE38(v9, qword_99F358);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v21[1] = v7;
  if (qword_93D8F8 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v9, qword_99F2E0);
  v15 = v22;
  v11(v22, v14, v9);
  v13(v15, v12, v0);
  v16 = v21[0];
  v11(v21[0], v14, v9);
  v13(v16, v12, v0);
  v24[3] = sub_766CA0();
  v24[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v24);
  v23[3] = v0;
  v23[4] = &protocol witness table for FontSource;
  v17 = sub_B1B4(v23);
  (*(v1 + 16))(v17, v16, v0);
  sub_766CB0();
  (*(v1 + 8))(v16, v0);
  sub_1582B4();
  v18 = UIFontTextStyleFootnote;
  sub_769C60();

  v19 = v18;
  sub_769C60();

  return sub_75D7E0();
}

uint64_t sub_15608C()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v24[0] = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v25 = v24 - v4;
  __chkstk_darwin(v5);
  v7 = v24 - v6;
  v8 = sub_75D850();
  sub_161DC(v8, qword_946968);
  v24[2] = sub_BE38(v8, qword_946968);
  if (qword_93D8E0 != -1)
  {
    swift_once();
  }

  v9 = sub_7666D0();
  v10 = sub_BE38(v9, qword_99F298);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v24[1] = v7;
  if (qword_93D8F8 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v9, qword_99F2E0);
  v15 = v25;
  v11(v25, v14, v9);
  v13(v15, v12, v0);
  v16 = v24[0];
  v11(v24[0], v14, v9);
  v13(v16, v12, v0);
  v27[3] = sub_766CA0();
  v27[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v27);
  v26[3] = v0;
  v26[4] = &protocol witness table for FontSource;
  v17 = sub_B1B4(v26);
  (*(v1 + 16))(v17, v16, v0);
  sub_766CB0();
  (*(v1 + 8))(v16, v0);
  v18 = objc_opt_self();
  v19 = [v18 systemFontOfSize:36.0 weight:UIFontWeightSemibold];
  v20 = objc_opt_self();
  v21 = [v20 configurationWithFont:v19];

  v22 = [v18 systemFontOfSize:15.0 weight:UIFontWeightBold];
  [v20 configurationWithFont:v22];

  return sub_75D7E0();
}

uint64_t sub_156524(unsigned int *a1, double *a2, double a3)
{
  v6 = sub_759950();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v10, *a1, v6, v8);
  v11 = [objc_opt_self() systemFontOfSize:a3 weight:*a2];
  v12 = [objc_opt_self() configurationWithFont:v11];

  v13 = sub_759930();
  (*(v7 + 8))(v10, v6);
  return v13;
}

uint64_t sub_156688()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v20[0] = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v21 = v20 - v4;
  __chkstk_darwin(v5);
  v7 = v20 - v6;
  v8 = sub_75D850();
  sub_161DC(v8, qword_99B2A8);
  v20[2] = sub_BE38(v8, qword_99B2A8);
  if (qword_93D908 != -1)
  {
    swift_once();
  }

  v9 = sub_7666D0();
  v10 = sub_BE38(v9, qword_99F310);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v20[1] = v7;
  if (qword_93D8F8 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v9, qword_99F2E0);
  v15 = v21;
  v11(v21, v14, v9);
  v13(v15, v12, v0);
  v16 = v20[0];
  v11(v20[0], v14, v9);
  v13(v16, v12, v0);
  v23[3] = sub_766CA0();
  v23[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v23);
  v22[3] = v0;
  v22[4] = &protocol witness table for FontSource;
  v17 = sub_B1B4(v22);
  (*(v1 + 16))(v17, v16, v0);
  sub_766CB0();
  (*(v1 + 8))(v16, v0);
  sub_1582B4();
  v18 = UIFontTextStyleFootnote;
  sub_769C60();

  return sub_75D7E0();
}

uint64_t sub_156A6C()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v20[0] = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v21 = v20 - v4;
  __chkstk_darwin(v5);
  v7 = v20 - v6;
  v8 = sub_75D850();
  sub_161DC(v8, qword_99B2C0);
  v20[2] = sub_BE38(v8, qword_99B2C0);
  if (qword_93D918 != -1)
  {
    swift_once();
  }

  v9 = sub_7666D0();
  v10 = sub_BE38(v9, qword_99F340);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v20[1] = v7;
  if (qword_93D8F8 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v9, qword_99F2E0);
  v15 = v21;
  v11(v21, v14, v9);
  v13(v15, v12, v0);
  v16 = v20[0];
  v11(v20[0], v14, v9);
  v13(v16, v12, v0);
  v23[3] = sub_766CA0();
  v23[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v23);
  v22[3] = v0;
  v22[4] = &protocol witness table for FontSource;
  v17 = sub_B1B4(v22);
  (*(v1 + 16))(v17, v16, v0);
  sub_766CB0();
  (*(v1 + 8))(v16, v0);
  sub_1582B4();
  v18 = UIFontTextStyleFootnote;
  sub_769C60();

  return sub_75D7E0();
}

uint64_t sub_156E48()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v20[0] = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v21 = v20 - v4;
  __chkstk_darwin(v5);
  v7 = v20 - v6;
  v8 = sub_75D850();
  sub_161DC(v8, qword_99B2D8);
  v20[2] = sub_BE38(v8, qword_99B2D8);
  if (qword_93D910 != -1)
  {
    swift_once();
  }

  v9 = sub_7666D0();
  v10 = sub_BE38(v9, qword_99F328);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v20[1] = v7;
  if (qword_93D8F8 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v9, qword_99F2E0);
  v15 = v21;
  v11(v21, v14, v9);
  v13(v15, v12, v0);
  v16 = v20[0];
  v11(v20[0], v14, v9);
  v13(v16, v12, v0);
  v23[3] = sub_766CA0();
  v23[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v23);
  v22[3] = v0;
  v22[4] = &protocol witness table for FontSource;
  v17 = sub_B1B4(v22);
  (*(v1 + 16))(v17, v16, v0);
  sub_766CB0();
  (*(v1 + 8))(v16, v0);
  sub_1582B4();
  v18 = UIFontTextStyleFootnote;
  sub_769C60();

  return sub_75D7E0();
}

uint64_t sub_15722C()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v22[0] = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v23 = v22 - v4;
  __chkstk_darwin(v5);
  v7 = v22 - v6;
  v8 = sub_75D850();
  sub_161DC(v8, qword_946980);
  v22[2] = sub_BE38(v8, qword_946980);
  if (qword_93D8F0 != -1)
  {
    swift_once();
  }

  v9 = sub_7666D0();
  v10 = sub_BE38(v9, qword_99F2C8);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v22[1] = v7;
  if (qword_93D8F8 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v9, qword_99F2E0);
  v15 = v23;
  v11(v23, v14, v9);
  v13(v15, v12, v0);
  v16 = v22[0];
  v11(v22[0], v14, v9);
  v13(v16, v12, v0);
  v27[3] = sub_766CA0();
  v27[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v27);
  v25 = v0;
  v26 = &protocol witness table for FontSource;
  v17 = sub_B1B4(v24);
  (*(v1 + 16))(v17, v16, v0);
  sub_766CB0();
  (*(v1 + 8))(v16, v0);
  sub_1582B4();
  v18 = UIFontTextStyleFootnote;
  sub_769C60();

  v19 = sub_7653B0();
  v25 = v19;
  v26 = sub_9BA34();
  v20 = sub_B1B4(v24);
  (*(*(v19 - 8) + 104))(v20, enum case for Feature.glass_offer_button_2025A(_:), v19);
  sub_765C30();
  sub_BEB8(v24);
  return sub_75D7E0();
}

id sub_157684()
{
  v0 = sub_56E958(0xD000000000000013, 0x80000000007D1520, 0);
  v1 = [v0 imageWithRenderingMode:2];

  return v1;
}

uint64_t sub_1576E8()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v21[0] = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v22 = v21 - v4;
  __chkstk_darwin(v5);
  v7 = v21 - v6;
  v8 = sub_75D850();
  sub_161DC(v8, qword_946998);
  v21[2] = sub_BE38(v8, qword_946998);
  if (qword_93D920 != -1)
  {
    swift_once();
  }

  v9 = sub_7666D0();
  v10 = sub_BE38(v9, qword_99F358);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v21[1] = v7;
  if (qword_93D8F8 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v9, qword_99F2E0);
  v15 = v22;
  v11(v22, v14, v9);
  v13(v15, v12, v0);
  v16 = v21[0];
  v11(v21[0], v14, v9);
  v13(v16, v12, v0);
  v24[3] = sub_766CA0();
  v24[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v24);
  v23[3] = v0;
  v23[4] = &protocol witness table for FontSource;
  v17 = sub_B1B4(v23);
  (*(v1 + 16))(v17, v16, v0);
  sub_766CB0();
  (*(v1 + 8))(v16, v0);
  sub_1582B4();
  v18 = UIFontTextStyleFootnote;
  sub_769C60();

  v19 = v18;
  sub_769C60();

  return sub_75D7E0();
}

uint64_t sub_157AF0()
{
  v0 = sub_759950();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.icloudAndArrowDown(_:), v0, v2);
  sub_1582B4();
  v5 = sub_769C60();
  v6 = sub_759930();

  (*(v1 + 8))(v4, v0);
  return v6;
}

uint64_t sub_157C20()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v21[0] = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v22 = v21 - v4;
  __chkstk_darwin(v5);
  v7 = v21 - v6;
  v8 = sub_75D850();
  sub_161DC(v8, qword_99B2F0);
  v21[2] = sub_BE38(v8, qword_99B2F0);
  if (qword_93D910 != -1)
  {
    swift_once();
  }

  v9 = sub_7666D0();
  v10 = sub_BE38(v9, qword_99F328);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v21[1] = v7;
  if (qword_93D8F8 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v9, qword_99F2E0);
  v15 = v22;
  v11(v22, v14, v9);
  v13(v15, v12, v0);
  v16 = v21[0];
  v11(v21[0], v14, v9);
  v13(v16, v12, v0);
  v24[3] = sub_766CA0();
  v24[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v24);
  v23[3] = v0;
  v23[4] = &protocol witness table for FontSource;
  v17 = sub_B1B4(v23);
  (*(v1 + 16))(v17, v16, v0);
  sub_766CB0();
  (*(v1 + 8))(v16, v0);
  sub_1582B4();
  v18 = UIFontTextStyleHeadline;
  sub_769C60();

  v19 = UIFontTextStyleFootnote;
  sub_769C60();

  return sub_75D7E0();
}

id sub_158038()
{
  v0 = sub_759950();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.icloudAndArrowDown(_:), v0, v2);
  sub_1582B4();
  v5 = sub_769C60();
  v6 = sub_759930();

  (*(v1 + 8))(v4, v0);
  v7 = [v6 imageWithRenderingMode:2];

  return v7;
}

uint64_t sub_15818C()
{
  v0 = sub_759950();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.pauseFill(_:), v0, v2);
  if (qword_93C438 != -1)
  {
    swift_once();
  }

  v5 = sub_759930();
  (*(v1 + 8))(v4, v0);
  return v5;
}

unint64_t sub_1582B4()
{
  result = qword_95A810;
  if (!qword_95A810)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_95A810);
  }

  return result;
}

uint64_t sub_158314(uint64_t a1)
{
  if (a1 != 2)
  {
    return 0;
  }

  sub_BD88(&unk_93F5C0, &unk_77C600);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_77B6C0;
  v2 = objc_opt_self();
  *(v1 + 32) = [v2 clearColor];
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  v3 = [v2 blackColor];
  v4 = [v3 colorWithAlphaComponent:0.06];

  v5.super.isa = [objc_allocWithZone(UIColor) initWithWhite:0.06667 alpha:1.0];
  v6.super.isa = v4;
  isa = sub_76A0C0(v6, v5).super.isa;
  result = v1;
  *(v1 + 40) = isa;
  return result;
}

unint64_t sub_158444@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_15AC5C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_1584A4()
{
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider26SearchCollectionViewLayout_backgroundCornerRadius] = 0;
  v1 = &v0[OBJC_IVAR____TtC18ASMessagesProvider26SearchCollectionViewLayout_pendingPrepareObserver];
  v2 = type metadata accessor for SearchCollectionViewLayout();
  *v1 = 0;
  *(v1 + 1) = 0;
  v10.receiver = v0;
  v10.super_class = v2;
  v3 = objc_msgSendSuper2(&v10, "init");
  type metadata accessor for SearchResultBackgroundView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = v3;
  v6 = sub_769210();
  [v5 registerClass:ObjCClassFromMetadata forDecorationViewOfKind:v6];

  type metadata accessor for SearchTransparencyView();
  v7 = swift_getObjCClassFromMetadata();
  sub_769BC0();
  v8 = sub_769210();

  [v5 registerClass:v7 forDecorationViewOfKind:v8];

  return v5;
}

double sub_158690()
{
  v1 = v0;
  v14.receiver = v0;
  v14.super_class = type metadata accessor for SearchCollectionViewLayout();
  objc_msgSendSuper2(&v14, "collectionViewContentSize");
  v3 = v2;
  v4 = [v0 collectionView];
  if (v4)
  {
    v5 = v4;
    v6 = [v0 collectionView];
    if (v6 && (v7 = v6, v8 = [v6 delegate], v7, v8))
    {
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        v9 = sub_75FFF0();
        if (v9)
        {
          v10 = v9;
          v11 = OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits;
          [*&v8[OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits] pageContainerSize];
          [*&v8[v11] pageMarginInsets];
          sub_769DA0();
          sub_E3618(v12, 1.79769313e308, v10, v5);
        }

        swift_unknownObjectRelease();
        [v1 minimumLineSpacing];
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  return v3;
}

double *sub_15884C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v80 = sub_BD88(&qword_946A50, &unk_787850);
  __chkstk_darwin(v80);
  v8 = &v67 - v7;
  v9 = sub_757640();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v67 - v14;
  v16 = sub_BD88(&unk_94EE60, qword_7841A0);
  __chkstk_darwin(v16 - 8);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v67 - v20;
  __chkstk_darwin(v22);
  v81 = &v67 - v23;
  v24 = sub_159328(a1);
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = type metadata accessor for SearchCollectionViewLayout();
  v86.receiver = v4;
  v86.super_class = v31;
  result = objc_msgSendSuper2(&v86, "layoutAttributesForElementsInRect:", v24, v26, v28, v30);
  if (!result)
  {
    return result;
  }

  v33 = result;
  sub_BE70(0, &qword_944B40, UICollectionViewLayoutAttributes_ptr);
  v72 = sub_769460();

  v34 = [v5 collectionView];
  if (!v34)
  {
    return v72;
  }

  v35 = v34;
  v36 = [v34 delegate];

  if (!v36)
  {
    return v72;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {
    swift_unknownObjectRelease();
    return v72;
  }

  v71 = v18;
  v69 = v12;
  v79 = v10;
  v67 = v36;
  v37 = [*(v36 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits) traitCollection];
  [v37 horizontalSizeClass];

  v38 = 1;
  sub_760000();
  if ((v39 & 1) == 0)
  {
    sub_7575B0();
    v38 = 0;
  }

  v78 = *(v79 + 56);
  v79 += 56;
  v78(v81, v38, 1, v9);
  v85 = _swiftEmptyArrayStorage;
  if (v72 >> 62)
  {
    v40 = sub_76A860();
  }

  else
  {
    v40 = *(&dword_10 + (v72 & 0xFFFFFFFFFFFFFF8));
  }

  result = v67;
  if (v40)
  {
    v84 = v5;
    if (v40 >= 1)
    {
      v41 = 0;
      v42 = v72;
      v75 = v72 & 0xC000000000000001;
      v76 = "pendingPrepareObserver";
      v73 = (v10 + 48);
      v74 = (v10 + 16);
      v68 = (v10 + 32);
      v82 = (v10 + 8);
      v77 = v40;
      v70 = v15;
      while (1)
      {
        if (v75)
        {
          v43 = sub_76A770();
        }

        else
        {
          v43 = *(v42 + 8 * v41 + 32);
        }

        v83 = v43;
        v44 = [v43 indexPath];
        sub_757590();

        v45 = sub_769210();
        isa = sub_757550().super.isa;
        v47 = [v84 layoutAttributesForDecorationViewOfKind:v45 atIndexPath:isa];

        if (v47)
        {
          v48 = v47;
          sub_769440();
          if (*(&dword_10 + (v85 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v85 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_7694C0();
          }

          sub_769500();
        }

        (*v74)(v21, v15, v9);
        v78(v21, 0, 1, v9);
        v49 = *(v80 + 48);
        sub_E5A10(v21, v8);
        sub_E5A10(v81, &v8[v49]);
        v50 = *v73;
        if ((*v73)(v8, 1, v9) == 1)
        {
          break;
        }

        v51 = v21;
        v52 = v71;
        sub_E5A10(v8, v71);
        if (v50(&v8[v49], 1, v9) == 1)
        {
          sub_10A2C(v51, &unk_94EE60, qword_7841A0);
          v53 = v52;
          v21 = v51;
          (*v82)(v53, v9);
          v15 = v70;
          v42 = v72;
LABEL_24:
          sub_10A2C(v8, &qword_946A50, &unk_787850);
          goto LABEL_30;
        }

        v55 = v69;
        v56 = (*v68)(v69, &v8[v49], v9);
        sub_E5A80(v56, v57);
        v58 = sub_7691C0();
        v59 = *v82;
        (*v82)(v55, v9);
        sub_10A2C(v51, &unk_94EE60, qword_7841A0);
        v60 = v52;
        v21 = v51;
        v59(v60, v9);
        sub_10A2C(v8, &unk_94EE60, qword_7841A0);
        v15 = v70;
        v42 = v72;
        if (v58)
        {
          goto LABEL_26;
        }

LABEL_30:
        v65 = v83;
        sub_1594C0(v83, v54);
        sub_769440();
        if (*(&dword_10 + (v85 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v85 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_7694C0();
        }

        ++v41;
        sub_769500();

        (*v82)(v15, v9);
        if (v77 == v41)
        {
          v66 = v85;
          goto LABEL_37;
        }
      }

      sub_10A2C(v21, &unk_94EE60, qword_7841A0);
      if (v50(&v8[v49], 1, v9) == 1)
      {
        sub_10A2C(v8, &unk_94EE60, qword_7841A0);
LABEL_26:
        type metadata accessor for SearchTransparencyView();
        sub_769BC0();
        v61 = sub_769210();

        v62 = sub_757550().super.isa;
        v63 = [v84 layoutAttributesForDecorationViewOfKind:v61 atIndexPath:v62];

        if (v63)
        {
          v64 = v63;
          sub_769440();
          if (*(&dword_10 + (v85 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v85 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_7694C0();
          }

          sub_769500();
        }

        goto LABEL_30;
      }

      goto LABEL_24;
    }

    __break(1u);
  }

  else
  {
    v66 = _swiftEmptyArrayStorage;
LABEL_37:
    swift_unknownObjectRelease();

    sub_10A2C(v81, &unk_94EE60, qword_7841A0);
    return v66;
  }

  return result;
}

double sub_159328(double a1)
{
  v3 = [v1 collectionView];
  if (v3)
  {
    v4 = v3;
    v5 = [v1 collectionView];
    if (v5 && (v6 = v5, v7 = [v5 delegate], v6, v7))
    {
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        v8 = sub_75FFF0();
        if (v8)
        {
          v9 = v8;
          v10 = OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits;
          [*&v7[OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits] pageContainerSize];
          [*&v7[v10] pageMarginInsets];
          sub_769DA0();
          sub_E3618(v11, 1.79769313e308, v9, v4);
        }

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  return a1;
}

id sub_1594C0(void *a1, uint64_t a2)
{
  v3 = v2;
  v39 = a1;
  v4 = sub_757640();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v36 - v9;
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = &v36 - v13;
  v15 = [v2 collectionView];
  if (v15)
  {
    v16 = v15;
    v17 = [v2 collectionView];
    if (!v17 || (v18 = v17, v19 = [v17 delegate], v18, !v19))
    {
LABEL_14:

      goto LABEL_15;
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v36 = &protocol descriptor for UICollectionViewDelegateSearchLayout;
      v37 = v5;
      v38 = v4;
      v20 = [*&v19[OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits] traitCollection];
      [v20 horizontalSizeClass];

      sub_760000();
      if (v21)
      {
        swift_unknownObjectRelease();
      }

      else
      {
        sub_7575B0();
        swift_unknownObjectRelease();
        v23 = v37;
        v22 = v38;
        (*(v37 + 32))(v14, v10, v38);
        v24 = [v3 collectionView];
        if (v24 && (v25 = v24, v26 = [v24 delegate], v25, v26))
        {
          swift_getObjectType();
          if (!swift_conformsToProtocol2())
          {

            swift_unknownObjectRelease();
            (*(v23 + 8))(v14, v22);
            goto LABEL_15;
          }

          v27 = sub_75FFF0();
          if (v27)
          {
            v28 = v27;
            v29 = OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits;
            [*&v26[OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits] pageContainerSize];
            [*&v26[v29] pageMarginInsets];
            sub_769DA0();
            sub_E3618(v30, 1.79769313e308, v28, v16);
          }

          swift_unknownObjectRelease();
          v33 = [v39 indexPath];
          sub_757590();

          LOBYTE(v33) = sub_757560();
          v34 = *(v23 + 8);
          v34(v7, v22);
          if (v33)
          {
            sub_BE70(0, &qword_944B40, UICollectionViewLayoutAttributes_ptr);
            v35 = sub_76A440();
            [v3 minimumLineSpacing];
            [v35 frame];
            [v35 setFrame:?];

            v34(v14, v22);
            return v35;
          }

          v34(v14, v22);
        }

        else
        {
          (*(v23 + 8))(v14, v22);
        }
      }

      goto LABEL_14;
    }

    swift_unknownObjectRelease();
  }

LABEL_15:
  v31 = v39;

  return v31;
}

char *sub_159950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v131 = a2;
  v132 = a1;
  v6 = sub_757640();
  v129 = *(v6 - 8);
  __chkstk_darwin(v6);
  v126 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&qword_946A50, &unk_787850);
  __chkstk_darwin(v8);
  v10 = &v119 - v9;
  v11 = sub_BD88(&unk_94EE60, qword_7841A0);
  __chkstk_darwin(v11 - 8);
  v127 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v128 = &v119 - v14;
  __chkstk_darwin(v15);
  v130 = &v119 - v16;
  v17 = sub_76A920();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = sub_757550().super.isa;
  v22 = type metadata accessor for SearchCollectionViewLayout();
  v134.receiver = v4;
  v134.super_class = v22;
  v23 = objc_msgSendSuper2(&v134, "layoutAttributesForItemAtIndexPath:", isa);

  if (!v23)
  {
    return 0;
  }

  v125 = v10;
  v24 = [v4 collectionView];
  if (!v24)
  {
    goto LABEL_11;
  }

  v25 = v24;
  v26 = [v4 collectionView];
  if (!v26 || (v124 = v6, v27 = v26, v28 = [v26 delegate], v27, !v28))
  {

LABEL_11:
    return 0;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v122 = v28;
  v123 = v23;
  type metadata accessor for SearchCollectionLayoutAttributes();
  v29 = sub_769210();
  v30 = sub_757550().super.isa;
  v120 = [swift_getObjCClassFromMetadata() layoutAttributesForDecorationViewOfKind:v29 withIndexPath:v30];

  v31 = v25;
  v32 = [v31 traitCollection];
  v119 = [v32 horizontalSizeClass];

  v33 = [v31 traitCollection];
  v34 = [v33 userInterfaceIdiom];

  v121 = v31;
  if (v34)
  {
    if (qword_93DCE0 != -1)
    {
      swift_once();
    }

    v35 = sub_766CA0();
    sub_BE38(v35, qword_99FDE8);
    v36 = [v31 traitCollection];

    sub_7671D0();
    sub_BD88(&unk_93F5C0, &unk_77C600);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_77D9F0;
    *(v37 + 32) = v36;
    v38 = v36;
    v39 = sub_7671E0();
    sub_7666E0();
    v41 = v40;
  }

  else
  {
    if (qword_93C490 != -1)
    {
      swift_once();
    }

    v43 = sub_766CA0();
    sub_BE38(v43, qword_99B308);
    v44 = [v31 traitCollection];

    sub_766470();
    sub_766C70();
    v41 = v45;

    (*(v18 + 8))(v20, v17);
  }

  v47 = v122;
  v46 = v123;
  v48 = v124;
  if (v132 != 0xD000000000000022 || 0x80000000007D15E0 != v131)
  {
    v50 = sub_76A950();
    v49 = v121;
    if ((v50 & 1) != 0 && v119 == &dword_0 + 1)
    {
      goto LABEL_23;
    }

    if (sub_76A950())
    {
      goto LABEL_28;
    }

    type metadata accessor for SearchTransparencyView();
    if (sub_769BC0() == v132 && v73 == v131)
    {

      v74 = v130;
    }

    else
    {
      v80 = sub_76A950();

      v74 = v130;
      if ((v80 & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    v81 = v129;
    (*(v129 + 16))(v74, a3, v48);
    v82 = v48;
    v83 = *(v81 + 56);
    v84 = 1;
    v83(v74, 0, 1, v82);
    v131 = OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_presenter;
    v132 = OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits;
    v85 = [*&v47[OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits] traitCollection];
    [v85 horizontalSizeClass];

    sub_760000();
    v86 = v128;
    if ((v87 & 1) == 0)
    {
      sub_7575B0();
      v84 = 0;
    }

    v88 = v84;
    v89 = v124;
    v83(v86, v88, 1, v124);
    v90 = v89;
    v91 = *(v8 + 48);
    v92 = v130;
    v93 = v125;
    sub_E5A10(v130, v125);
    sub_E5A10(v86, v93 + v91);
    v94 = *(v129 + 48);
    if (v94(v93, 1, v89) == 1)
    {
      sub_10A2C(v86, &unk_94EE60, qword_7841A0);
      sub_10A2C(v92, &unk_94EE60, qword_7841A0);
      v95 = v94(v93 + v91, 1, v89);
      v97 = v122;
      v96 = v123;
      if (v95 == 1)
      {
        sub_10A2C(v93, &unk_94EE60, qword_7841A0);
LABEL_59:
        v106 = v132;
        [*&v97[v132] pageMarginInsets];
        v108 = v107;
        v109 = v120;
        [v96 frame];
        MaxY = CGRectGetMaxY(v139);
        [v4 minimumLineSpacing];
        v112 = v111;
        v113 = sub_75FFF0();
        if (v113)
        {
          v114 = v113;
          [*&v97[v106] pageContainerSize];
          [*&v97[v106] pageMarginInsets];
          sub_769DA0();
          v116 = sub_E3618(v115, 1.79769313e308, v114, v49);
          v118 = v117;
        }

        else
        {
          v116 = 0.0;
          v118 = 0.0;
        }

        [v109 setFrame:{v108, MaxY + v112, v116, v118}];

        swift_unknownObjectRelease();
        return v109;
      }
    }

    else
    {
      v98 = v127;
      sub_E5A10(v93, v127);
      v99 = v94(v93 + v91, 1, v90);
      v97 = v122;
      if (v99 != 1)
      {
        v100 = v129;
        v101 = v93 + v91;
        v102 = v126;
        v103 = (*(v129 + 32))(v126, v101, v90);
        sub_E5A80(v103, v104);
        LODWORD(v119) = sub_7691C0();
        v105 = *(v100 + 8);
        v105(v102, v90);
        sub_10A2C(v86, &unk_94EE60, qword_7841A0);
        sub_10A2C(v130, &unk_94EE60, qword_7841A0);
        v105(v98, v90);
        v49 = v121;
        sub_10A2C(v93, &unk_94EE60, qword_7841A0);
        v96 = v123;
        if (v119)
        {
          goto LABEL_59;
        }

LABEL_57:
        swift_unknownObjectRelease();

        goto LABEL_53;
      }

      sub_10A2C(v86, &unk_94EE60, qword_7841A0);
      sub_10A2C(v130, &unk_94EE60, qword_7841A0);
      (*(v129 + 8))(v98, v90);
      v96 = v123;
    }

    sub_10A2C(v93, &qword_946A50, &unk_787850);
    goto LABEL_57;
  }

  v49 = v121;
  if (v119 != &dword_0 + 1)
  {
LABEL_28:
    v65 = sub_1DA314(a3);
    if (v65)
    {
      v52 = v65;
      [v46 frame];
      v66 = CGRectGetWidth(v137) + 24.0;
      [v46 frame];
      v67 = v41 + v41 + CGRectGetHeight(v138);
      [v46 frame];
      v69 = v68 + -12.0;
      v71 = v70 - v41;
      v63 = v120;
      [v63 setFrame:{v69, v71, v66, v67}];
      *&v63[OBJC_IVAR____TtC18ASMessagesProvider32SearchCollectionLayoutAttributes_cornerRadius] = *&v4[OBJC_IVAR____TtC18ASMessagesProvider26SearchCollectionViewLayout_backgroundCornerRadius];
      if (v52 != 1)
      {
        if (v52 == 2)
        {
          v64 = 0;
          goto LABEL_40;
        }

LABEL_32:
        if (v52 != 3)
        {
          v133 = v52;
          result = sub_76A980();
          __break(1u);
          return result;
        }

        if (qword_93C988 != -1)
        {
          swift_once();
        }

        v64 = qword_99C918;
        v72 = qword_99C918;
        goto LABEL_40;
      }

LABEL_39:
      v64 = [objc_opt_self() secondarySystemBackgroundColor];
      goto LABEL_40;
    }

    goto LABEL_52;
  }

LABEL_23:
  v51 = sub_1DA314(a3);
  if (!v51)
  {
LABEL_52:
    swift_unknownObjectRelease();

LABEL_53:
    return 0;
  }

  v52 = v51;
  [v46 frame];
  Width = CGRectGetWidth(v135);
  [v46 frame];
  v55 = Width + v54 + v54;
  [v46 frame];
  v56 = v41 + v41 + CGRectGetHeight(v136);
  [v46 frame];
  v58 = v57;
  v60 = v59;
  [v46 frame];
  v62 = v58 - v61;
  v63 = v120;
  [v63 setFrame:{v62, v60 - v41, v55, v56}];
  *&v63[OBJC_IVAR____TtC18ASMessagesProvider32SearchCollectionLayoutAttributes_cornerRadius] = 0;
  if (v52 == 1)
  {
    goto LABEL_39;
  }

  v64 = 0;
  if (v52 != 2)
  {
    goto LABEL_32;
  }

LABEL_40:
  v75 = *&v63[OBJC_IVAR____TtC18ASMessagesProvider32SearchCollectionLayoutAttributes_backgroundColor];
  *&v63[OBJC_IVAR____TtC18ASMessagesProvider32SearchCollectionLayoutAttributes_backgroundColor] = v64;

  v76 = v63;
  *&v63[OBJC_IVAR____TtC18ASMessagesProvider32SearchCollectionLayoutAttributes_backgroundGradientColors] = sub_158314(v52);

  if (v52 >= 3)
  {
    if (qword_93C990 != -1)
    {
      swift_once();
    }

    v77 = qword_99C920;
    v78 = qword_99C920;
  }

  else
  {
    v77 = 0;
  }

  v79 = *&v76[OBJC_IVAR____TtC18ASMessagesProvider32SearchCollectionLayoutAttributes_borderColor];
  *&v76[OBJC_IVAR____TtC18ASMessagesProvider32SearchCollectionLayoutAttributes_borderColor] = v77;

  [v76 setZIndex:-1];
  swift_unknownObjectRelease();

  return v76;
}

uint64_t sub_15A85C()
{
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 delegate];

    if (v3)
    {
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        type metadata accessor for SearchResultsCollectionViewDelegate(0);
        v4 = swift_dynamicCastClass();
        if (v4)
        {
          v5 = v4;
          v6 = sub_10E334(_swiftEmptyArrayStorage);
          v7 = OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_maxSizeForRowCache;
          swift_beginAccess();
          *(v5 + v7) = v6;

          *(v5 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_isFirstItemFullWidth) = 2;
        }
      }

      swift_unknownObjectRelease();
    }
  }

  v14.receiver = v0;
  v14.super_class = type metadata accessor for SearchCollectionViewLayout();
  objc_msgSendSuper2(&v14, "prepareLayout");
  v8 = &v0[OBJC_IVAR____TtC18ASMessagesProvider26SearchCollectionViewLayout_pendingPrepareObserver];
  v9 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider26SearchCollectionViewLayout_pendingPrepareObserver];
  if (v9)
  {
    v10 = v8[1];

    v9(v0);
    sub_F704(v9, v10);
    v11 = *v8;
  }

  else
  {
    v11 = 0;
  }

  v12 = v8[1];
  *v8 = 0;
  v8[1] = 0;
  return sub_F704(v11, v12);
}

id sub_15AA1C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SearchCollectionViewLayout();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_15AA88()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_766CA0();
  sub_161DC(v4, qword_99B308);
  sub_BE38(v4, qword_99B308);
  *v3 = UIFontTextStyleBody;
  (*(v1 + 104))(v3, enum case for FontSource.textStyle(_:), v0);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_B1B4(v9);
  (*(v1 + 16))(v5, v3, v0);
  v6 = UIFontTextStyleBody;
  sub_766CB0();
  return (*(v1 + 8))(v3, v0);
}

unint64_t sub_15AC08()
{
  result = qword_946A58;
  if (!qword_946A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_946A58);
  }

  return result;
}

unint64_t sub_15AC5C(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

double sub_15AC6C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a3;
  v7 = sub_75DAB0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  if (sub_769240() == a1 && v10 == a2)
  {

    goto LABEL_10;
  }

  v12 = sub_76A950();

  if (v12)
  {
LABEL_10:
    *(a4 + 24) = sub_BD88(&qword_946B58, &qword_787AF8);
    *(a4 + 32) = sub_15D000(&qword_946B60, &qword_946B58, &qword_787AF8);
    v21[1] = sub_B1B4(a4);
    v21[0] = sub_769240();
    type metadata accessor for TitleHeaderView(0);
    sub_769BD0();
    v14 = swift_allocObject();
    swift_weakInit();
    (*(v8 + 16))(v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v7);
    v15 = (*(v8 + 80) + 24) & ~*(v8 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    (*(v8 + 32))(v16 + v15, v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    sub_763760();
    return result;
  }

  sub_75E6D0();
  if (sub_75E6B0() == a1 && v13 == a2)
  {
    goto LABEL_8;
  }

  v18 = sub_76A950();

  if (v18)
  {
    goto LABEL_12;
  }

  if (sub_75E6C0() == a1 && v19 == a2)
  {
LABEL_8:
  }

  else
  {
    v20 = sub_76A950();

    if ((v20 & 1) == 0)
    {
      *(a4 + 32) = 0;
      result = 0.0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      return result;
    }
  }

LABEL_12:
  *(a4 + 24) = sub_BD88(&qword_946B48, &qword_787AF0);
  *(a4 + 32) = sub_15D000(&qword_946B50, &qword_946B48, &qword_787AF0);
  sub_B1B4(a4);
  sub_75E6A0();
  return result;
}

uint64_t sub_15AF94(uint64_t a1)
{
  v3 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7656C0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BD88(&unk_94F1F0, &qword_782290);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v64 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v63 = &v58 - v14;
  __chkstk_darwin(v15);
  v17 = &v58 - v16;
  v19 = __chkstk_darwin(v18);
  v21 = &v58 - v20;
  if (((*(v1 + 24))(v19) & 1) == 0)
  {
    return 0;
  }

  v61 = v5;
  v62 = a1;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v22 = *(v11 + 8);
  v22(v21, v10);
  v23 = v67;
  if (!v67)
  {
    return 0;
  }

  v24 = HIBYTE(v67) & 0xF;
  if ((v67 & 0x2000000000000000) == 0)
  {
    v24 = v66 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {

    return 0;
  }

  v60 = v66;
  sub_75DA60();
  sub_765BE0();
  sub_765630();
  v26 = v25;
  v28 = v27;
  (*(v7 + 8))(v9, v6);
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v22(v17, v10);
  v29 = v66;
  if (v66)
  {
    sub_764C60();
    v31 = v30;
    v32 = sub_75DA30();
    if (qword_93C5E0 != -1)
    {
      swift_once();
    }

    v33 = qword_9481A0;
    if (v31)
    {
      v34 = sub_769210();
    }

    else
    {
      v34 = 0;
    }

    [v33 setTitle:v34 forState:0];

    [v33 setImage:0 forState:0];
    v38 = [v33 titleLabel];
    v39 = v38;
    if (v38)
    {
      v58 = v29;
      v59 = v31;
      v40 = v38;
      v41 = [v40 font];
      if (v41)
      {
        v42 = v41;
        v43 = [v41 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v32];
      }

      else
      {
        v43 = 0;
      }

      [v40 setFont:v43];
    }

    [v33 sizeThatFits:{v26, v28}];
    v45 = v44;
    v37 = v46;

    v36 = v45 + 0.0;
    [v33 setTitle:0 forState:0];
    [v33 setImage:0 forState:0];
  }

  else
  {
    v36 = 0.0;
    v37 = 0.0;
  }

  v47 = v63;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v22(v47, v10);
  v62 = v66;
  v59 = type metadata accessor for TitleHeaderView(0);
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v22(v47, v10);
  v49 = v66;
  v48 = v67;
  v50 = v64;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v22(v50, v10);
  v51 = v65;
  v52 = sub_15CB9C();
  v53 = v61;
  sub_15B680(v61);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v57 = sub_75DA40();
  swift_getObjectType();
  sub_1995E0(v49, v48, v51, v60, v23, v62, 0, 0, v26, v28, v36, v37, UIEdgeInsetsZero.top, left, bottom, right, 0, 0, v52, v53, 1, v57);

  swift_unknownObjectRelease();

  sub_15CFA0(v53, type metadata accessor for TitleHeaderView.Style);
  return *&v26;
}

uint64_t sub_15B680@<X0>(uint64_t a1@<X8>)
{
  v95 = a1;
  v102 = sub_75CFE0();
  v96 = *(v102 - 8);
  __chkstk_darwin(v102);
  v100 = &v83 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_BD88(&qword_9439D8, &qword_799160);
  __chkstk_darwin(v3 - 8);
  v101 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v99 = &v83 - v6;
  v7 = sub_BD88(&qword_9439E0, &unk_787AB0);
  __chkstk_darwin(v7 - 8);
  v98 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v91 = &v83 - v10;
  v86 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v90 = *(v86 - 8);
  __chkstk_darwin(v86);
  v94 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v93 = &v83 - v13;
  __chkstk_darwin(v14);
  v92 = &v83 - v15;
  __chkstk_darwin(v16);
  v97 = &v83 - v17;
  v18 = sub_BD88(&unk_948010, qword_789590);
  __chkstk_darwin(v18 - 8);
  v85 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v84 = &v83 - v21;
  __chkstk_darwin(v22);
  v24 = &v83 - v23;
  __chkstk_darwin(v25);
  v27 = &v83 - v26;
  __chkstk_darwin(v28);
  v103 = &v83 - v29;
  v30 = sub_BD88(&unk_94F1F0, &qword_782290);
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v83 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = &v83 - v35;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v37 = *(v31 + 8);
  v37(v36, v30);
  v38 = v105;
  if (v105)
  {
  }

  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v37(v33, v30);
  v39 = v105;
  if (v105)
  {
    v40 = v104;

    v41 = HIBYTE(v39) & 0xF;
    if ((v39 & 0x2000000000000000) == 0)
    {
      v41 = v40 & 0xFFFFFFFFFFFFLL;
    }

    v42 = v41 != 0;
  }

  else
  {
    v42 = 0;
  }

  v43 = sub_759810();
  v44 = *(v43 - 8);
  (*(v44 + 56))(v103, 1, 1, v43);
  v45 = sub_75CFD0();
  v87 = *(v45 - 8);
  v88 = v45;
  (*(v87 + 56))(v99, 1, 1);
  v46 = (v44 + 48);
  v89 = v42;
  if (!v38)
  {
    if (v42)
    {
      v48 = v84;
      sub_1ED18(v103, v84, &unk_948010, qword_789590);
      if ((*v46)(v48, 1, v43) == 1)
      {
        sub_10A2C(v48, &unk_948010, qword_789590);
        v49 = 0;
      }

      else
      {
        v49 = sub_7597B0();
        (*(v44 + 8))(v48, v43);
      }

      v53 = v91;
      v54 = v86;
      sub_5E740C(v49, v97);

      v55 = v92;
      if (qword_93DE50 != -1)
      {
        swift_once();
      }

      v56 = qword_9A0208;
      goto LABEL_31;
    }

    v51 = v85;
    sub_1ED18(v103, v85, &unk_948010, qword_789590);
    if ((*v46)(v51, 1, v43) == 1)
    {
      sub_10A2C(v51, &unk_948010, qword_789590);
      v52 = 0;
    }

    else
    {
      v52 = sub_7597B0();
      (*(v44 + 8))(v51, v43);
    }

    v53 = v91;
    v54 = v86;
    sub_5E740C(v52, v97);

    v55 = v92;
    if (qword_93DE38 != -1)
    {
      swift_once();
    }

    v57 = 1;
    v58 = qword_9A01C0;
LABEL_38:
    v61 = v55;
    goto LABEL_39;
  }

  if (!v42)
  {
    sub_1ED18(v103, v24, &unk_948010, qword_789590);
    if ((*v46)(v24, 1, v43) == 1)
    {
      sub_10A2C(v24, &unk_948010, qword_789590);
      v50 = 0;
    }

    else
    {
      v50 = sub_7597B0();
      (*(v44 + 8))(v24, v43);
    }

    v53 = v91;
    v54 = v86;
    sub_5E740C(v50, v97);

    v55 = v92;
    if (qword_93DE40 != -1)
    {
      swift_once();
    }

    v57 = 1;
    v58 = qword_9A01D8;
    goto LABEL_38;
  }

  sub_1ED18(v103, v27, &unk_948010, qword_789590);
  if ((*v46)(v27, 1, v43) == 1)
  {
    sub_10A2C(v27, &unk_948010, qword_789590);
    v47 = 0;
  }

  else
  {
    v47 = sub_7597B0();
    (*(v44 + 8))(v27, v43);
  }

  v53 = v91;
  v54 = v86;
  sub_5E740C(v47, v97);

  v55 = v92;
  if (qword_93DE58 != -1)
  {
    swift_once();
  }

  v56 = qword_9A0220;
LABEL_31:
  v59 = sub_BE38(v54, v56);
  sub_C1D58(v59, v55, v60);
  if (qword_93DE30 != -1)
  {
    swift_once();
  }

  v57 = 0;
  v58 = qword_9A01A8;
  v61 = v53;
LABEL_39:
  v62 = sub_BE38(v54, v58);
  sub_C1D58(v62, v61, v63);
  v64.n128_f64[0] = (*(v90 + 56))(v53, v57, 1, v54);
  v65 = v97;
  v66 = v93;
  sub_C1D58(v97, v93, v64);
  v67 = v94;
  sub_C1D58(v55, v94, v68);
  sub_1ED18(v53, v98, &qword_9439E0, &unk_787AB0);
  v69 = v99;
  sub_1ED18(v99, v101, &qword_9439D8, &qword_799160);
  v70 = v96;
  (*(v96 + 104))(v100, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v102);
  sub_396E8();
  v71 = sub_769FB0();
  sub_10A2C(v69, &qword_9439D8, &qword_799160);
  sub_10A2C(v53, &qword_9439E0, &unk_787AB0);
  sub_15CFA0(v55, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_15CFA0(v65, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10A2C(v103, &unk_948010, qword_789590);
  v72 = type metadata accessor for TitleHeaderView.Style(0);
  v73 = v72[8];
  v74 = v95;
  sub_15CEA0(v66, v95, v75);
  sub_15CEA0(v67, v74 + v72[5], v76);
  sub_15CF04(v98, v74 + v72[6]);
  *(v74 + v72[7]) = 0;
  *(v74 + v73) = 0;
  v77 = v89;
  *(v74 + v72[9]) = v89;
  *(v74 + v72[14]) = 0x4030000000000000;
  *(v74 + v72[12]) = 0;
  *(v74 + v72[13]) = v71;
  v78 = v101;
  (*(v70 + 32))(v74 + v72[11], v100, v102);
  v80 = v87;
  v79 = v88;
  if ((*(v87 + 48))(v78, 1, v88) != 1)
  {
    return (*(v80 + 32))(v74 + v72[10], v78, v79);
  }

  sub_10A2C(v78, &qword_9439D8, &qword_799160);
  if (v77)
  {
    v81 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:);
  }

  else
  {
    v81 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:);
  }

  return (*(v80 + 104))(v74 + v72[10], *v81, v79);
}

double sub_15C274(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_15C2E8(a1, a6);
  }

  return result;
}

uint64_t sub_15C2E8(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v6 - 8);
  v58 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_75DAB0();
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v53 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v8;
  __chkstk_darwin(v9);
  v52 = &v49 - v10;
  v11 = sub_765240();
  v49 = *(v11 - 8);
  v50 = v11;
  __chkstk_darwin(v11);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_BD88(&unk_94F1F0, &qword_782290);
  v60 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v49 - v15;
  v59 = a2;
  sub_75DAA0();
  sub_75A110();
  v56 = v3;
  sub_768900();
  sub_768ED0();
  v61 = v63;
  swift_getKeyPath();
  sub_768750();

  v17 = v63;
  v18 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowArtwork;
  v19 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowArtwork);

  sub_1935B4(v17, v20);
  *(a1 + v18) = v17;

  sub_1935C8(v19);

  swift_getKeyPath();
  v62 = v14;
  sub_768750();

  v21 = v63;
  v22 = v64;
  v23 = (a1 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowText);
  v25 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowText);
  v24 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowText + 8);

  sub_192F94(v21, v22);
  *v23 = v21;
  v23[1] = v22;

  sub_193028(v25, v24);

  if (*(a1 + v18))
  {
    v26 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowArtworkView);
    if (v26)
    {

      v27 = v26;
      sub_765260();
      sub_765250();
      sub_765210();
      (*(v49 + 8))(v13, v50);
      sub_765330();
      sub_759210();
      sub_14FA38();
      sub_75A050();
    }
  }

  swift_getKeyPath();
  sub_768750();

  v28 = v63;
  v29 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleArtwork;
  v30 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleArtwork);

  sub_193754(v28, v31);
  *(a1 + v29) = v28;

  sub_193868(v30);

  v32 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabel);
  swift_getKeyPath();
  sub_768750();

  if (v64)
  {
    v33 = sub_769210();
  }

  else
  {
    v33 = 0;
  }

  v51 = v32;
  [v32 setText:v33];

  if (*(a1 + v29))
  {
    v34 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleArtworkView);
    if (v34)
    {

      v35 = v34;
      sub_765260();
      sub_765250();
      sub_765210();
      (*(v49 + 8))(v13, v50);
      sub_765330();
      sub_759210();
      sub_14FA38();
      sub_75A050();
    }
  }

  v36 = v55;
  v37 = *(v55 + 16);
  v38 = v52;
  v39 = v57;
  v37(v52, v59, v57);
  v40 = v53;
  v37(v53, v38, v39);
  v41 = (*(v36 + 80) + 24) & ~*(v36 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = v56;
  (*(v36 + 32))(v42 + v41, v38, v39);
  v43 = (a1 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabelNumberOfLines);
  *v43 = sub_15CE3C;
  v43[1] = v42;

  [v51 setNumberOfLines:sub_15CB9C()];

  (*(v36 + 8))(v40, v39);
  v44 = v58;
  sub_15B680(v58);
  (*&stru_1A8.segname[(swift_isaMask & *a1) + 16])(v44);
  v45 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_detailLabel);
  if (v45)
  {
    swift_getKeyPath();
    v46 = v45;
    sub_768750();

    if (v64)
    {
      v47 = sub_769210();
    }

    else
    {
      v47 = 0;
    }

    [v46 setText:v47];
  }

  [a1 setNeedsLayout];

  return (*(v60 + 8))(v16, v62);
}

uint64_t sub_15CB30()
{

  return swift_deallocClassInstance();
}

uint64_t sub_15CB9C()
{
  v0 = sub_BD88(&unk_94F1F0, &qword_782290);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - v2;
  v4 = sub_75DA30();
  v5 = sub_769A00();

  if (v5)
  {
    return 0;
  }

  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  (*(v1 + 8))(v3, v0);
  if (!v7[1])
  {
    return 2;
  }

  return 1;
}

double *sub_15CCDC(uint64_t a1)
{
  v1 = COERCE_DOUBLE(sub_15AF94(a1));
  if (v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = v1;
  v5 = v2;
  v6 = v2 >= v1 ? v1 : v2;
  if (v6 <= 0.0)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = objc_opt_self();
  v8 = [v7 absoluteDimension:v4];
  v9 = [v7 absoluteDimension:v5];
  v10 = [objc_opt_self() sizeWithWidthDimension:v8 heightDimension:v9];

  v11 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v10 elementKind:UICollectionElementKindSectionHeader alignment:1];
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_77D9F0;
  *(v12 + 32) = v11;

  return v12;
}

uint64_t sub_15CE3C()
{
  sub_75DAB0();

  return sub_15CB9C();
}

uint64_t sub_15CEA0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_15CF04(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_9439E0, &unk_787AB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_15CF74@<X0>(uint64_t *a1@<X8>)
{
  result = sub_764980();
  *a1 = result;
  return result;
}

uint64_t sub_15CFA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_15D000(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_133D8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_15D054()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_15D08C()
{
  v1 = sub_75DAB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

double sub_15D150(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_75DAB0() - 8);
  v10 = *(v4 + 16);
  v11 = v4 + ((*(v9 + 80) + 24) & ~*(v9 + 80));

  return sub_15C274(a1, a2, a3, a4, v10, v11);
}

__n128 sub_15D1F0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_15D204(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_15D24C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_15D2A0@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, int a7@<W7>, uint64_t a8@<X8>, double a13@<D4>, double a14@<D5>, double a17, double a18)
{
  v52 = a7;
  v53 = a6;
  v51 = a5;
  v60 = a8;
  v61 = a4;
  v58 = a2;
  v59 = a3;
  v55 = a13;
  v56 = a14;
  v50 = sub_767D60();
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_764930();
  v62 = *(v57 - 8);
  __chkstk_darwin(v57);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_7656A0();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v48 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v46 - v25;
  v27 = sub_BD88(&qword_9438F8, &unk_787C30);
  __chkstk_darwin(v27);
  v29 = &v46 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v46 - v31;
  sub_1ED18(v58, &v46 - v31, &qword_963790, qword_77EBC0);
  sub_1ED18(v59, &v32[*(v27 + 48)], &qword_963790, qword_77EBC0);
  swift_getKeyPath();
  sub_BD88(&unk_94F1F0, &qword_782290);
  sub_768750();

  v58 = v22;
  v33 = *(v22 + 104);
  v34 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v64)
  {
    v34 = &enum case for PageGrid.Direction.vertical(_:);
  }

  v35 = *v34;
  v59 = v21;
  v33(v26, v35, v21);
  swift_getKeyPath();
  sub_768750();

  v36 = *(v62 + 88);
  v54 = v20;
  v37 = v57;
  if (v36(v20) == enum case for Shelf.ContentType.searchChartsAndCategories(_:))
  {
    v38 = v32;
    v39 = v58;
    v40 = v59;
    if (v52)
    {
      v41 = 2;
    }

    else
    {
      v41 = v53;
    }

    v42 = v47;
    sub_75B4A0();
    v43 = sub_767D40();
    (*(v49 + 8))(v42, v50);
    if (v43 & 1) != 0 && (sub_75B4C0())
    {
      v41 = 1;
    }

    (*(v39 + 16))(v48, v26, v40);
    sub_3CC450(v41);
    sub_765670();
    (*(v39 + 8))(v26, v40);
    return sub_10A2C(v38, &qword_9438F8, &unk_787C30);
  }

  else
  {
    v63 = v51;
    sub_1ED18(v32, v29, &qword_9438F8, &unk_787C30);
    v45 = *(v27 + 48);
    sub_B7A24();
    sub_75B530();
    (*(v58 + 8))(v26, v59);
    sub_10A2C(v32, &qword_9438F8, &unk_787C30);
    sub_10A2C(&v29[v45], &qword_963790, qword_77EBC0);
    sub_10A2C(v29, &qword_963790, qword_77EBC0);
    return (*(v62 + 8))(v54, v37);
  }
}

uint64_t sub_15D898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  sub_15DCC8();

  return sub_75B530();
}

uint64_t sub_15D97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  sub_15DCC8();

  return sub_75B520();
}

uint64_t sub_15DA6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_15DD24();

  return PageGridCaching<>.invalidateCache()(a1, v4, a2);
}

uint64_t sub_15DAD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a14@<D6>, double a15@<D7>, double a16, double a17)
{
  v31[6] = a5;
  v31[7] = a6;
  v31[5] = a4;
  *&v31[3] = a14;
  *&v31[4] = a15;
  v31[1] = a7;
  v31[2] = a1;
  v20 = sub_BD88(&qword_9438F8, &unk_787C30);
  v21 = v20 - 8;
  __chkstk_darwin(v20);
  v23 = v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = v31 - v25;
  v27 = *(v17 + 2);
  v28 = *(v17 + 24);
  sub_1ED18(a2, v31 - v25, &qword_963790, qword_77EBC0);
  sub_1ED18(a3, &v26[*(v21 + 56)], &qword_963790, qword_77EBC0);
  v32 = *v17;
  v33 = v27;
  v34 = v28;
  sub_1ED18(v26, v23, &qword_9438F8, &unk_787C30);
  v29 = *(v21 + 56);
  sub_75B530();
  sub_10A2C(v26, &qword_9438F8, &unk_787C30);
  sub_10A2C(&v23[v29], &qword_963790, qword_77EBC0);
  return sub_10A2C(v23, &qword_963790, qword_77EBC0);
}

unint64_t sub_15DCC8()
{
  result = qword_946B68;
  if (!qword_946B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_946B68);
  }

  return result;
}

unint64_t sub_15DD24()
{
  result = qword_946B70;
  if (!qword_946B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_946B70);
  }

  return result;
}

id DebugSettingsProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DebugSettingsProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DebugSettingsProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_15DE74()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

void sub_15DEE4(uint64_t a1, uint64_t a2)
{
  v3 = sub_BD88(&unk_944D90, &qword_783300);
  __chkstk_darwin(v3 - 8);
  v35 = &v32 - v4;
  v34 = sub_BD88(&qword_946CA0, &unk_787DE8);
  v5 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v32 - v6;
  v7 = sub_764930();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v48 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v47 = &v32 - v11;
  v46 = sub_BD88(&unk_94F1F0, &qword_782290);
  v12 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v32 - v13;
  v14 = sub_75C840();
  v16 = __chkstk_darwin(v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a2 + 16);
  if (v19)
  {
    v21 = *(v15 + 16);
    v20 = v15 + 16;
    v22 = a2 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
    v41 = *(v20 + 56);
    v42 = v21;
    v40 = (v12 + 8);
    v39 = enum case for Shelf.ContentType.uber(_:);
    v37 = (v8 + 8);
    v38 = (v8 + 104);
    v43 = v20;
    v36 = (v20 - 8);
    v32 = (v5 + 8);
    v44 = v14;
    v21(v18, v22, v14, v16);
    while (1)
    {
      swift_getKeyPath();
      v28 = v45;
      sub_75C7B0();

      swift_getKeyPath();
      v29 = v46;
      sub_768750();

      (*v40)(v28, v29);
      (*v38)(v48, v39, v7);
      sub_15E76C();
      sub_769430();
      sub_769430();
      if (v51 == v49 && v52 == v50)
      {
        break;
      }

      v30 = sub_76A950();
      v31 = *v37;
      (*v37)(v48, v7);
      v31(v47, v7);

      if (v30)
      {
        goto LABEL_4;
      }

LABEL_5:
      v26 = v44;
      (*v36)(v18, v44);
      v22 += v41;
      if (!--v19)
      {
        return;
      }

      v42(v18, v22, v26, v27);
    }

    v23 = *v37;
    (*v37)(v48, v7);
    v23(v47, v7);

LABEL_4:
    sub_75C790();
    v24 = v33;
    sub_768B30();
    sub_9954C();
    v25 = v34;
    sub_768AF0();
    (*v32)(v24, v25);
    goto LABEL_5;
  }
}

void sub_15E44C(void *a1, uint64_t a2, void *a3)
{
  v19 = a1;
  sub_127C1C();
  v5 = a1;
  sub_BD88(&qword_946C90, &qword_787DD0);
  if (swift_dynamicCast())
  {
    sub_10914(&v15, v20);
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_15E72C;
    *(v8 + 24) = v7;
    v17 = sub_2EC28;
    v18 = v8;
    *&v15 = _NSConcreteStackBlock;
    *(&v15 + 1) = 1107296256;
    *&v16 = sub_1EB578;
    *(&v16 + 1) = &unk_885C98;
    v9 = _Block_copy(&v15);
    v10 = v5;

    [v6 performWithoutAnimation:v9];
    _Block_release(v9);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      if (swift_weakLoadStrong())
      {
        v12 = v21;
        v13 = v22;
        sub_B170(v20, v21);
        v14 = (*(v13 + 8))(v12, v13);
        sub_65EB0(v14, a3);
      }

      sub_BEB8(v20);
    }
  }

  else
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    sub_15E68C(&v15);
  }
}

uint64_t sub_15E68C(uint64_t a1)
{
  v2 = sub_BD88(&qword_946C98, &unk_787DD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_15E6F4()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_15E74C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_15E76C()
{
  result = qword_942D68;
  if (!qword_942D68)
  {
    sub_764930();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_942D68);
  }

  return result;
}

uint64_t sub_15E7D0()
{
  sub_BD88(&qword_9452E0, &unk_7940D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_783150;
  *(inited + 32) = 0x6E6F697469736F70;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = [objc_allocWithZone(NSNull) init];
  *(inited + 56) = 0x6E6564646968;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = [objc_allocWithZone(NSNull) init];
  *(inited + 80) = 0x49726564724F6E6FLL;
  *(inited + 88) = 0xE90000000000006ELL;
  *(inited + 96) = [objc_allocWithZone(NSNull) init];
  *(inited + 104) = 0x4F726564724F6E6FLL;
  *(inited + 112) = 0xEA00000000007475;
  *(inited + 120) = [objc_allocWithZone(NSNull) init];
  *(inited + 128) = 0x726579616C627573;
  *(inited + 136) = 0xE900000000000073;
  *(inited + 144) = [objc_allocWithZone(NSNull) init];
  *(inited + 152) = 0x73746E65746E6F63;
  *(inited + 160) = 0xE800000000000000;
  *(inited + 168) = [objc_allocWithZone(NSNull) init];
  *(inited + 176) = 0x73646E756F62;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = [objc_allocWithZone(NSNull) init];
  strcpy((inited + 200), "contentsRect");
  *(inited + 213) = 0;
  *(inited + 214) = -5120;
  *(inited + 216) = [objc_allocWithZone(NSNull) init];
  v1 = sub_10D54C(inited);
  swift_setDeallocating();
  sub_BD88(&qword_9452E8, &unk_785090);
  result = swift_arrayDestroy();
  qword_99B320 = v1;
  return result;
}

CGFloat sub_15E9D8()
{
  CGAffineTransformMakeScale(&v2, 1.0, -1.0);
  *&v1.a = *&v2.m11;
  *&v1.c = *&v2.m13;
  *&v1.tx = *&v2.m21;
  CATransform3DMakeAffineTransform(&v2, &v1);
  *byte_99B328 = v2;
  return v2.m21;
}

id sub_15EAFC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_769210();
    [v2 removeObserver:v0 forKeyPath:v3];
  }

  v5.receiver = v0;
  v5.super_class = type metadata accessor for MirrorView();
  return objc_msgSendSuper2(&v5, "dealloc");
}

id sub_15EDAC(uint64_t a1, uint64_t a2)
{
  v13.receiver = v2;
  v13.super_class = type metadata accessor for MirrorView();
  objc_msgSendSuper2(&v13, "layoutSubviews");
  v3 = [v2 bounds];
  (*&stru_B8.segname[(swift_isaMask & *v2) + 8])(v3, v4, v5);
  sub_769D60();
  v7 = v6;
  v8 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_artworkLayer);
  [v8 setBounds:{0.0, 0.0, v9, v6}];
  [v2 bounds];
  MidY = CGRectGetMidY(v14);
  [v2 bounds];
  v11 = MidY + (v7 - CGRectGetHeight(v15)) * 0.5;
  [v2 bounds];
  return [v8 setPosition:{CGRectGetMidX(v16), v11 + *(v2 + OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_contentsVerticalOffset)}];
}

double sub_15EF40(double a1, double a2)
{
  v3 = sub_766690();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [Strong image];

    if (v9)
    {
      [v9 size];
      sub_7666A0();
      sub_766600();
      a1 = v10;

      (*(v4 + 8))(v6, v3);
    }
  }

  return a1;
}

void sub_15F084()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_artworkLayer);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v3 = Strong, v4 = [Strong backgroundColor], v3, v4))
  {
    v5 = [v4 CGColor];
  }

  else
  {
    v5 = 0;
  }

  [v1 setBackgroundColor:v5];

  v6 = swift_unknownObjectWeakLoadStrong();
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v6;
  v8 = [v6 image];

  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = [v8 CGImage];

  if (v9)
  {
    type metadata accessor for CGImage(0);
    v8 = sub_76A930();
  }

  else
  {
LABEL_9:
    v8 = 0;
  }

LABEL_10:
  [v1 setContents:v8];
  swift_unknownObjectRelease();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    [v10 alpha];
    v13 = v12;

    *&v14 = v13;
  }

  else
  {
    v14 = 0.0;
  }

  [v1 setOpacity:v14];
  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;
    v17 = sub_769210();
    v18 = OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_imageKVOContext;
    swift_beginAccess();
    [v16 addObserver:v0 forKeyPath:v17 options:1 context:v0 + v18];
    swift_endAccess();
  }
}

void sub_15F294(uint64_t a1, NSString a2, uint64_t a3, Class a4, char *a5)
{
  v10 = &v5[OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_imageKVOContext];
  swift_beginAccess();
  if (!a5 || v10 != a5)
  {
    if (a2)
    {
      a2 = sub_769210();
    }

    sub_38EE0(a3, v25);
    v15 = v26;
    if (v26)
    {
      v16 = sub_B170(v25, v26);
      v17 = *(v15 - 8);
      v18 = __chkstk_darwin(v16);
      v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v20, v18);
      v21 = sub_76A930();
      (*(v17 + 8))(v20, v15);
      sub_BEB8(v25);
      if (!a4)
      {
LABEL_11:
        v22 = type metadata accessor for MirrorView();
        v24.receiver = v5;
        v24.super_class = v22;
        objc_msgSendSuper2(&v24, "observeValueForKeyPath:ofObject:change:context:", a2, v21, a4, a5);

        swift_unknownObjectRelease();
        goto LABEL_12;
      }
    }

    else
    {
      v21 = 0;
      if (!a4)
      {
        goto LABEL_11;
      }
    }

    type metadata accessor for NSKeyValueChangeKey(0);
    sub_15F67C();
    a4 = sub_7690E0().super.isa;
    goto LABEL_11;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    a4 = [Strong image];

    if (a4)
    {
      v13 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_artworkLayer];
      v14 = [(objc_class *)a4 CGImage];
      [v13 setContents:v14];

      [v5 setNeedsLayout];
LABEL_12:
    }
  }
}