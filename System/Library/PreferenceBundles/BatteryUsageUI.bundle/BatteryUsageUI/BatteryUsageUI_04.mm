uint64_t sub_9FC1C(uint64_t a1, uint64_t a2)
{
  v3 = sub_115C80();
  __chkstk_darwin(v3 - 8);
  v4 = sub_115BE0();
  __chkstk_darwin(v4 - 8);
  sub_46F9C(&qword_183D08, &unk_127E20);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1248A0;
  *(v5 + 32) = 0;
  *(v5 + 40) = *(a1 + *(type metadata accessor for SummaryChartViewModel(0) + 36));
  sub_115BD0();
  sub_115C70();
  return sub_115EA0();
}

char *sub_9FD80(char *result, int64_t a2, char a3, char *a4)
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
    sub_46F9C(&qword_184E30, &qword_1290E8);
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

void *sub_9FE84(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_46F9C(a5, a6);
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

char *sub_A0060(char *result, int64_t a2, char a3, char *a4)
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
    sub_46F9C(&qword_184E40, &qword_12BA20);
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

char *sub_A0164(char *result, int64_t a2, char a3, char *a4)
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
    sub_46F9C(&qword_183D08, &unk_127E20);
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

uint64_t sub_A0268(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_46F9C(&qword_184E58, &unk_129138);
  v34 = v4;
  result = sub_117860();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
    v14 = result + 64;
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
      if ((v34 & 1) == 0)
      {
      }

      sub_117A90();
      sub_117200();
      result = sub_117AD0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_A0508(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_117690() + 1) & ~v5;
    do
    {
      sub_117A90();

      sub_117200();
      v9 = sub_117AD0();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_A06B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_64F08(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_A0268(v16, a4 & 1);
      result = sub_64F08(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_117A40();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_A081C();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * result) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

void *sub_A081C()
{
  v1 = v0;
  sub_46F9C(&qword_184E58, &unk_129138);
  v2 = *v0;
  v3 = sub_117850();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_A0984(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_A09E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_A09A4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_A0BBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_A09C4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_A0CC8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_A09E4(void *result, int64_t a2, char a3, void *a4)
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

  sub_46F9C(&qword_184260, &unk_128570);
  v10 = *(sub_115760() - 8);
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
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_115760() - 8);
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

char *sub_A0BBC(char *result, int64_t a2, char a3, char *a4)
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
    sub_46F9C(&qword_184E70, &qword_129150);
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

char *sub_A0CC8(char *result, int64_t a2, char a3, char *a4)
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
    sub_46F9C(&qword_184E78, &qword_129158);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

unsigned __int8 *sub_A0DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_117290();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_A1348(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_117740();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_A1348(uint64_t a1, unint64_t a2)
{
  v2 = sub_1172A0();
  v6 = sub_A13C8(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_A13C8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_117630();
    if (!v9 || (v10 = v9, v11 = sub_A1520(v9, 0), v12 = sub_A1594(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1171F0();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1171F0();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_117740();
LABEL_4:

  return sub_1171F0();
}

void *sub_A1520(uint64_t a1, uint64_t a2)
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

  sub_46F9C(&qword_184E68, &qword_129148);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_A1594(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_A17B4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_117260();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_117740();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_A17B4(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_117240();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_A17B4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_117270();
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
    v5 = sub_117250();
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

void sub_A1830(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_46F9C(&qword_183D18, &unk_1290F0);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 152);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_A1920(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v89 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_88:
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_A21FC(v7);
      v7 = result;
    }

    v81 = v7 + 2;
    v82 = v7[2];
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = &v7[2 * v82];
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = v85[1];
        sub_A1F9C((*a3 + 152 * *v83), (*a3 + 152 * *v85), (*a3 + 152 * v86), v90);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_114;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_115;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_116;
        }

        v82 = *v81 - 1;
        result = memmove(v85, v85 + 2, 16 * v87);
        *v81 = v82;
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 152 * v6 + 104);
      v10 = 152 * v8;
      v11 = *a3 + 152 * v8;
      v12 = *(v11 + 104);
      v13 = v8 + 2;
      v14 = (v11 + 256);
      while (v5 != v13)
      {
        v15 = *v14;
        v16 = v14[19];
        v14 += 19;
        ++v13;
        if (v12 < v9 == v15 >= v16)
        {
          v6 = v13 - 1;
          if (v12 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v17 = 152 * v6 - 152;
        v18 = v6;
        v19 = v8;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = v21 + v17;
            v103 = *(v21 + v10 + 96);
            v105 = *(v21 + v10 + 112);
            v107 = *(v21 + v10 + 128);
            v109 = *(v21 + v10 + 144);
            v95 = *(v21 + v10 + 32);
            v97 = *(v21 + v10 + 48);
            v99 = *(v21 + v10 + 64);
            v101 = *(v21 + v10 + 80);
            v91 = *(v21 + v10);
            v93 = *(v21 + v10 + 16);
            result = memmove((v21 + v10), (v21 + v17), 0x98uLL);
            *(v20 + 96) = v103;
            *(v20 + 112) = v105;
            *(v20 + 128) = v107;
            *(v20 + 144) = v109;
            *(v20 + 32) = v95;
            *(v20 + 48) = v97;
            *(v20 + 64) = v99;
            *(v20 + 80) = v101;
            *v20 = v91;
            *(v20 + 16) = v93;
          }

          ++v19;
          v17 -= 152;
          v10 += 152;
        }

        while (v19 < v18);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_9FD80(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v34 = v7[2];
    v33 = v7[3];
    v35 = v34 + 1;
    if (v34 >= v33 >> 1)
    {
      result = sub_9FD80((v33 > 1), v34 + 1, 1, v7);
      v7 = result;
    }

    v7[2] = v35;
    v36 = v7 + 4;
    v37 = &v7[2 * v34 + 4];
    *v37 = v8;
    v37[1] = v6;
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_127;
    }

    if (v34)
    {
      while (1)
      {
        v38 = v35 - 1;
        if (v35 >= 4)
        {
          break;
        }

        if (v35 == 3)
        {
          v39 = v7[4];
          v40 = v7[5];
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_57:
          if (v42)
          {
            goto LABEL_104;
          }

          v55 = &v7[2 * v35];
          v57 = *v55;
          v56 = v55[1];
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_106;
          }

          v61 = &v36[2 * v38];
          v63 = *v61;
          v62 = v61[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_111;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v38 = v35 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v35 < 2)
        {
          goto LABEL_112;
        }

        v65 = &v7[2 * v35];
        v67 = *v65;
        v66 = v65[1];
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_72:
        if (v60)
        {
          goto LABEL_108;
        }

        v68 = &v36[2 * v38];
        v70 = *v68;
        v69 = v68[1];
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_110;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v38 - 1 >= v35)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v76 = &v36[2 * v38 - 2];
        v77 = *v76;
        v78 = &v36[2 * v38];
        v79 = v78[1];
        sub_A1F9C((*a3 + 152 * *v76), (*a3 + 152 * *v78), (*a3 + 152 * v79), v90);
        if (v4)
        {
        }

        if (v79 < v77)
        {
          goto LABEL_99;
        }

        if (v38 > v7[2])
        {
          goto LABEL_100;
        }

        *v76 = v77;
        v76[1] = v79;
        v80 = v7[2];
        if (v38 >= v80)
        {
          goto LABEL_101;
        }

        v35 = v80 - 1;
        result = memmove(&v36[2 * v38], v78 + 2, 16 * (v80 - 1 - v38));
        v7[2] = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_3;
        }
      }

      v43 = &v36[2 * v35];
      v44 = *(v43 - 8);
      v45 = *(v43 - 7);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_102;
      }

      v48 = *(v43 - 6);
      v47 = *(v43 - 5);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_103;
      }

      v50 = &v7[2 * v35];
      v52 = *v50;
      v51 = v50[1];
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_105;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_107;
      }

      if (v54 >= v46)
      {
        v72 = &v36[2 * v38];
        v74 = *v72;
        v73 = v72[1];
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v41 < v75)
        {
          v38 = v35 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 152 * v6;
  v24 = v8 - v6;
LABEL_30:
  v25 = v24;
  v26 = v23;
  while (1)
  {
    if (*(v26 - 48) >= *(v26 + 104))
    {
LABEL_29:
      ++v6;
      v23 += 152;
      --v24;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    v27 = v26 - 152;
    v104 = *(v26 + 96);
    v106 = *(v26 + 112);
    v108 = *(v26 + 128);
    v110 = *(v26 + 144);
    v96 = *(v26 + 32);
    v98 = *(v26 + 48);
    v100 = *(v26 + 64);
    v102 = *(v26 + 80);
    v92 = *v26;
    v94 = *(v26 + 16);
    v28 = *(v26 - 40);
    *(v26 + 96) = *(v26 - 56);
    *(v26 + 112) = v28;
    *(v26 + 128) = *(v26 - 24);
    *(v26 + 144) = *(v26 - 8);
    v29 = *(v26 - 104);
    *(v26 + 32) = *(v26 - 120);
    *(v26 + 48) = v29;
    v30 = *(v26 - 72);
    *(v26 + 64) = *(v26 - 88);
    *(v26 + 80) = v30;
    v31 = *(v26 - 136);
    *v26 = *(v26 - 152);
    *(v26 + 16) = v31;
    *(v27 + 96) = v104;
    *(v27 + 112) = v106;
    *(v27 + 128) = v108;
    *(v27 + 144) = v110;
    *(v27 + 32) = v96;
    *(v27 + 48) = v98;
    *(v27 + 64) = v100;
    *(v27 + 80) = v102;
    v26 -= 152;
    *v27 = v92;
    *(v27 + 16) = v94;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_A1F9C(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 152;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 152;
  if (v9 >= v11)
  {
    v16 = 19 * v11;
    if (a4 != __src || &__src[v16] <= a4)
    {
      memmove(a4, __src, 152 * v11);
    }

    v13 = &v4[v16];
    if (v10 >= 152 && v6 > v7)
    {
LABEL_21:
      v5 -= 19;
      do
      {
        v17 = v5 + 19;
        if (*(v6 - 6) < *(v13 - 6))
        {
          v19 = v6 - 19;
          if (v17 != v6)
          {
            memmove(v5, v6 - 19, 0x98uLL);
          }

          if (v13 <= v4 || (v6 -= 19, v19 <= v7))
          {
            v6 = v19;
            goto LABEL_33;
          }

          goto LABEL_21;
        }

        v18 = (v13 - 19);
        if (v17 != v13)
        {
          memmove(v5, v13 - 19, 0x98uLL);
        }

        v5 -= 19;
        v13 -= 19;
      }

      while (v18 > v4);
      v13 = v18;
    }
  }

  else
  {
    v12 = 19 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12 * 8);
    }

    v13 = &v4[v12];
    if (v8 < 152)
    {
      v6 = v7;
    }

    else
    {
      if (v6 < v5)
      {
        while (v4[13] < v6[13])
        {
          v14 = v6;
          v15 = v7 == v6;
          v6 += 19;
          if (!v15)
          {
            goto LABEL_12;
          }

LABEL_13:
          v7 += 19;
          if (v4 >= v13 || v6 >= v5)
          {
            goto LABEL_15;
          }
        }

        v14 = v4;
        v15 = v7 == v4;
        v4 += 19;
        if (v15)
        {
          goto LABEL_13;
        }

LABEL_12:
        memmove(v7, v14, 0x98uLL);
        goto LABEL_13;
      }

LABEL_15:
      v6 = v7;
    }
  }

LABEL_33:
  v20 = 19 * ((v13 - v4) / 152);
  if (v6 != v4 || v6 >= &v4[v20])
  {
    memmove(v6, v4, v20 * 8);
  }

  return 1;
}

BOOL sub_A2224(char *a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a1 == 6)
  {
    if (v5 != 6)
    {
      return 0;
    }
  }

  else
  {
    if (v5 == 6)
    {
      return 0;
    }

    sub_68F60(a1, a2, a3);
    if ((sub_117160() & 1) == 0)
    {
      return 0;
    }
  }

  v6 = type metadata accessor for SummaryItem(0);
  if ((sub_115780() & 1) == 0)
  {
    return 0;
  }

  v7 = v6[6];
  v8 = *&a1[v7];
  v9 = *&a1[v7 + 8];
  v10 = &a2[v7];
  v11 = *v10;
  if (v8 != *v10 || v9 != v10[1])
  {
    v8 = sub_1179E0();
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  v13 = v6[7];
  v14 = &a1[v13];
  v15 = *&a1[v13 + 8];
  v16 = &a2[v13];
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    v8 = *v14;
    v11 = *v16;
    if (*v14 != *v16 || v15 != v17)
    {
      v8 = sub_1179E0();
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v19 = v6[8];
  v20 = a1[v19];
  v21 = a2[v19];
  if (v20 == 26)
  {
    if (v21 != 26)
    {
      return 0;
    }
  }

  else
  {
    if (v21 == 26)
    {
      return 0;
    }

    sub_68FB8(v8, v15, v11);
    if ((sub_117160() & 1) == 0)
    {
      return 0;
    }
  }

  v22 = v6[9];
  v23 = &a1[v22];
  v24 = a1[v22 + 8];
  v25 = &a2[v22];
  v26 = a2[v22 + 8];
  if (v24)
  {
    if (!v26)
    {
      return 0;
    }
  }

  else
  {
    if (*v23 != *v25)
    {
      LOBYTE(v26) = 1;
    }

    if (v26)
    {
      return 0;
    }
  }

  v27 = v6[10];
  v28 = &a1[v27];
  v29 = *&a1[v27 + 8];
  v30 = &a2[v27];
  v31 = *(v30 + 1);
  if (v29)
  {
    if (!v31 || (*v28 != *v30 || v29 != v31) && (sub_1179E0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v31)
  {
    return 0;
  }

  v32 = v6[11];
  v33 = &a1[v32];
  v34 = *&a1[v32 + 8];
  v35 = &a2[v32];
  v36 = *(v35 + 1);
  if (v34)
  {
    return v36 && (*v33 == *v35 && v34 == v36 || (sub_1179E0() & 1) != 0);
  }

  return !v36;
}

void sub_A2458(char a1)
{
  v2 = sub_115760();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_8D8B4()[2];
  sub_115750();
  isa = sub_1156B0().super.isa;
  (*(v3 + 8))(v5, v2);
  v8 = [v6 stringFromDate:isa];

  v9 = sub_1171B0();
  v11 = v10;

  if (a1 != 2)
  {
    if (a1 != 4)
    {
      goto LABEL_7;
    }

    v12 = sub_117170();
    v13 = BatteryUILocalization(v12);

    if (v13)
    {
LABEL_8:
      sub_1171B0();

      sub_46F9C(&qword_182EF8, &unk_125990);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_124890;
      *(v16 + 56) = &type metadata for String;
      *(v16 + 64) = sub_53EE8(v16, v17, v18);
      *(v16 + 32) = v9;
      *(v16 + 40) = v11;
      sub_117180();

      return;
    }

    __break(1u);
  }

  v14 = sub_117170();
  v13 = BatteryUILocalization(v14);

  if (v13)
  {
    goto LABEL_8;
  }

  __break(1u);
LABEL_7:
  v15 = sub_117170();
  v13 = BatteryUILocalization(v15);

  if (v13)
  {
    goto LABEL_8;
  }

  __break(1u);
}

void *sub_A2718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v51 = sub_1158B0();
  v6 = *(v51 - 8);
  __chkstk_darwin(v51);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_46F9C(&qword_182EF0, &unk_124BB0);
  __chkstk_darwin(v9 - 8);
  v11 = &v34 - v10;
  v12 = sub_115760();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v49 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v48 = &v34 - v16;
  v17 = sub_1158D0();
  __chkstk_darwin(v17);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 < 1)
  {
    return _swiftEmptyArrayStorage;
  }

  else
  {
    v35 = v19;
    v36 = v18;
    v50 = v21;
    sub_1158A0();
    v23 = *(v6 + 104);
    v22 = v6 + 104;
    v47 = v23;
    v44 = (v13 + 48);
    v45 = (v22 - 96);
    v43 = (v13 + 32);
    v40 = v13;
    v37 = v13 + 8;
    v38 = (v13 + 16);
    v24 = _swiftEmptyArrayStorage;
    v46 = enum case for Calendar.Component.day(_:);
    v25 = 1;
    v41 = a1;
    v42 = a2;
    v39 = a3;
    while (1)
    {
      result = v47(v8, v46, v51);
      if ((v25 * a3) >> 64 != (v25 * a3) >> 63)
      {
        break;
      }

      if (__OFSUB__(0, v25 * a3))
      {
        goto LABEL_20;
      }

      v27 = v22;
      sub_115890();
      (*v45)(v8, v51);
      if ((*v44)(v11, 1, v12) == 1)
      {
        result = sub_488C8(v11, &qword_182EF0, &unk_124BB0);
        if (a2 == v25)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v28 = *v43;
        v29 = v48;
        (*v43)(v48, v11, v12);
        (*v38)(v49, v29, v12);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_9FE84(0, v24[2] + 1, 1, v24, &qword_184260, &unk_128570, &type metadata accessor for Date);
        }

        v31 = v24[2];
        v30 = v24[3];
        if (v31 >= v30 >> 1)
        {
          v24 = sub_9FE84((v30 > 1), v31 + 1, 1, v24, &qword_184260, &unk_128570, &type metadata accessor for Date);
        }

        v32 = v40;
        (*(v40 + 8))(v48, v12);
        v24[2] = v31 + 1;
        result = (v28)(v24 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v31, v49, v12);
        a3 = v39;
        a2 = v42;
        if (v42 == v25)
        {
LABEL_16:
          (*(v35 + 8))(v50, v36);
          return v24;
        }
      }

      v22 = v27;
      if (__OFADD__(v25++, 1))
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  return result;
}

uint64_t sub_A2BF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_A2C78(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_A2C88()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  v3 = *(v2 + 24);
  *(v2 + 24) = v1;
  sub_A2C78(v1);
  return sub_A2E2C(v3);
}

uint64_t sub_A2D18()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  result = swift_beginAccess();
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  return result;
}

uint64_t sub_A2D8C()
{
  sub_117710(32);
  v1._object = 0x8000000000135230;
  v1._countAndFlagsBits = 0xD00000000000001ELL;
  sub_117220(v1);
  sub_46F9C(&qword_183030, &qword_124E50);
  sub_1177E0();
  return 0;
}

uint64_t sub_A2E2C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_A2E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1845F8;
  if (!qword_1845F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1845F8);
  }

  return result;
}

unint64_t sub_A2E90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_46F9C(&qword_184E58, &unk_129138);
    v3 = sub_117870();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_64F08(v5, v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_A2F8C(void *a1)
{
  v3 = sub_46F9C(&qword_184E18, &qword_1290D0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v11 - v5;
  v7 = sub_66DE0(a1, a1[3]);
  sub_A6F48(v7, v8, v9);
  sub_117AF0();
  if (v1)
  {
    sub_6ACB4(a1);
  }

  else
  {
    sub_46F9C(&qword_184E20, &unk_1290D8);
    sub_A6E78(&qword_184E28, &qword_184E20, &unk_1290D8, sub_A456C);
    sub_1178E0();
    (*(v4 + 8))(v6, v3);
    v7 = v11[1];
    sub_6ACB4(a1);
  }

  return v7;
}

unint64_t sub_A313C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_167970;
  v6._object = a2;
  v4 = sub_117890(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_A3188@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_46F9C(&qword_184DE0, &qword_1290B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  v9 = sub_66DE0(a1, a1[3]);
  sub_A6D70(v9, v10, v11);
  v12 = sub_117AF0();
  if (v2)
  {
    sub_6ACB4(a1);
  }

  else
  {
    v31 = 0;
    sub_6B038(v12, v13, v14);
    sub_117920();
    v15 = v29;
    sub_46F9C(&qword_184DE8, &qword_1290B8);
    v31 = 1;
    sub_A6DC4();
    sub_1178E0();
    v16 = v29;
    LOBYTE(v29) = 2;
    v17 = sub_1178D0();
    v26 = v18;
    v27 = v17;
    LOBYTE(v29) = 3;
    v19 = sub_1178D0();
    HIDWORD(v24) = v20;
    v25 = v19;
    sub_46F9C(&qword_184E00, &unk_1290C0);
    v31 = 4;
    sub_A6E78(&qword_184E08, &qword_184E00, &unk_1290C0, sub_A6EF4);
    sub_1178E0();
    (*(v6 + 8))(v8, v5);
    v21 = v29;
    v30 = v26 & 1;
    v28 = BYTE4(v24) & 1;
    result = sub_6ACB4(a1);
    *a2 = v15;
    v23 = v27;
    *(a2 + 8) = v16;
    *(a2 + 16) = v23;
    *(a2 + 24) = v30;
    *(a2 + 32) = v25;
    *(a2 + 40) = v28;
    *(a2 + 48) = v21;
    *(a2 + 56) = 0;
  }

  return result;
}

uint64_t sub_A34B4(uint64_t a1)
{
  if ((a1 + 1) < 5)
  {
    return a1 + 1;
  }

  else
  {
    return 5;
  }
}

unint64_t sub_A34C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_18CCD0[0];
  if (!qword_18CCD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_18CCD0);
  }

  return result;
}

unint64_t sub_A351C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_167A08;
  v6._object = a2;
  v4 = sub_117890(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

double sub_A3568(void *a1)
{
  v2 = sub_46F9C(&qword_184DD8, &qword_1290A8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - v4;
  v6 = sub_66DE0(a1, a1[3]);
  sub_A6D1C(v6, v7, v8);
  sub_117AF0();
  v14 = 0;
  sub_117910();
  v13 = 1;
  sub_117900();
  v10 = v9;
  (*(v3 + 8))(v5, v2);
  sub_6ACB4(a1);
  return v10;
}

uint64_t sub_A3714(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_A377C()
{
  v1 = *(v0 + 24);
  v2 = sub_5A754();
  if (v1 == 4)
  {
    v3 = &OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_chartAnomalousBarColor;
  }

  else
  {
    v3 = &OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_chartNoComparisonBarColor;
  }

  swift_beginAccess();
  return *(*v2 + *v3);
}

unint64_t sub_A3828()
{
  result = qword_184640;
  if (!qword_184640)
  {
    sub_47A1C(&qword_184628, &unk_128538);
    sub_47A1C(&qword_184620, &qword_128530);
    sub_47A1C(&qword_184630, &qword_128548);
    sub_48800(&qword_184638, &qword_184630, &qword_128548, &protocol conformance descriptor for _ViewModifier_Content<A>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184640);
  }

  return result;
}

unint64_t sub_A3990()
{
  result = qword_184648;
  if (!qword_184648)
  {
    sub_47A1C(&qword_184610, &qword_128520);
    sub_48800(&qword_184638, &qword_184630, &qword_128548, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184648);
  }

  return result;
}

unint64_t sub_A3A48()
{
  result = qword_184660;
  if (!qword_184660)
  {
    sub_47A1C(&qword_184658, &qword_128558);
    sub_48800(&qword_184668, &qword_184670, &unk_128560, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184660);
  }

  return result;
}

unint64_t sub_A3B08()
{
  result = qword_1846B0;
  if (!qword_1846B0)
  {
    sub_47A1C(&qword_1846A8, &unk_1285B0);
    sub_47A1C(&qword_184150, &unk_127D60);
    sub_116180();
    sub_47A1C(&qword_184158, &unk_1285C0);
    sub_115E00();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_A3C98(&qword_1846B8, &type metadata accessor for RoundedRectangle, &protocol conformance descriptor for RoundedRectangle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1846B0);
  }

  return result;
}

uint64_t sub_A3C98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_A3CE0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for FullDaySummaryView(0);
  sub_5A754();
  swift_beginAccess();
  sub_116EB0();
  sub_116070();
  v4 = sub_115C90();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = (a2 + *(sub_46F9C(&qword_184160, &unk_127D70) + 36));
  *v5 = v7;
  v5[1] = v8;
  result = *&v9;
  v5[2] = v9;
  return result;
}

unint64_t sub_A3E50()
{
  result = qword_184728;
  if (!qword_184728)
  {
    sub_47A1C(&qword_184720, &qword_128628);
    sub_A3EE4();
    sub_A40B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184728);
  }

  return result;
}

unint64_t sub_A3EE4()
{
  result = qword_184730;
  if (!qword_184730)
  {
    sub_47A1C(&qword_184738, &qword_128630);
    sub_47A1C(&qword_184740, &qword_128638);
    sub_47A1C(&qword_184210, &qword_128640);
    sub_116180();
    sub_47A1C(&qword_184158, &unk_1285C0);
    sub_115E00();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_A3C98(&qword_1846B8, &type metadata accessor for RoundedRectangle, &protocol conformance descriptor for RoundedRectangle);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184730);
  }

  return result;
}

unint64_t sub_A40B8()
{
  result = qword_184748;
  if (!qword_184748)
  {
    sub_47A1C(&qword_184750, &qword_128648);
    sub_47A1C(&qword_184758, &qword_128650);
    sub_47A1C(&qword_184760, &qword_128658);
    sub_47A1C(&qword_184768, &qword_128660);
    sub_47A1C(&qword_184770, qword_128668);
    sub_47A1C(&qword_1841F0, &qword_127DD0);
    sub_115E70();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_A42A4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184748);
  }

  return result;
}

unint64_t sub_A42A4()
{
  result = qword_184778;
  if (!qword_184778)
  {
    sub_47A1C(&qword_184760, &qword_128658);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184778);
  }

  return result;
}

double sub_A4360@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for DynamicDaySummaryView(0);
  sub_5A754();
  swift_beginAccess();
  sub_116EB0();
  sub_116070();
  v4 = sub_115C90();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = (a2 + *(sub_46F9C(&qword_184160, &unk_127D70) + 36));
  *v5 = v7;
  v5[1] = v8;
  result = *&v9;
  v5[2] = v9;
  return result;
}

unint64_t sub_A44C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_A44F0(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_A44F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_184788;
  if (!qword_184788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184788);
  }

  return result;
}

unint64_t sub_A4544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_A456C(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_A456C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_184790;
  if (!qword_184790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184790);
  }

  return result;
}

unint64_t sub_A4610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1847A0;
  if (!qword_1847A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1847A0);
  }

  return result;
}

uint64_t sub_A4680(uint64_t a1)
{
  result = sub_A3C98(&qword_1847A8, type metadata accessor for SummaryChart, &unk_1289E0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_A4770(uint64_t a1)
{
  result = sub_115940();
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

__n128 sub_A4830(uint64_t a1, uint64_t a2)
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

uint64_t sub_A4844(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
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

uint64_t sub_A48A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_A4938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1157A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_A4A10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1157A0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_A4AD0(uint64_t a1)
{
  sub_A58D4(319, &qword_1849A0, &type metadata for AppType, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_1157A0();
    if (v2 <= 0x3F)
    {
      sub_A58D4(319, &qword_1849A8, &type metadata for String, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_A58D4(319, &qword_1849B0, &type metadata for AppQualifier, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_A58D4(319, &unk_1849B8, &type metadata for Double, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_A4C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SummaryChartViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_A4D2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SummaryChartViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_A4DE4(uint64_t a1)
{
  result = type metadata accessor for SummaryChartViewModel(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for BUIChartViewConfig(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ChartLegendModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_A4F20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_A4F68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_A4FD4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_115760();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_A5094(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_115760();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_A5138(uint64_t a1)
{
  sub_A5604(319, &unk_184AE0, type metadata accessor for SummaryChartBucket, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_115760();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_A5214(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryChartViewModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_A5294(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryChartViewModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_A5304(uint64_t a1)
{
  result = type metadata accessor for SummaryChartViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_A5398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SummaryChartViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36) + 16);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_A5478(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SummaryChartViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36) + 16) = a2;
  }

  return result;
}

void sub_A5534(uint64_t a1)
{
  type metadata accessor for SummaryChartViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_A5604(319, &unk_184C00, type metadata accessor for CGSize, &type metadata accessor for State);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_A5604(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_A567C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_115760();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_A5760(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_115760();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  return result;
}

void sub_A581C(uint64_t a1)
{
  sub_A58D4(319, &qword_1836D0, &type metadata for Int, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_115760();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_A58D4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_A5928()
{
  result = qword_184CC8;
  if (!qword_184CC8)
  {
    sub_47A1C(&qword_1845D0, &qword_1284A0);
    sub_A59B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184CC8);
  }

  return result;
}

unint64_t sub_A59B4()
{
  result = qword_184CD0;
  if (!qword_184CD0)
  {
    sub_47A1C(&qword_1845C8, &qword_128498);
    sub_47A1C(&qword_184590, &qword_128448);
    sub_47A1C(&qword_1845B0, &qword_128490);
    sub_48800(&qword_1845B8, &qword_184590, &qword_128448, &protocol conformance descriptor for VStack<A>);
    sub_A70D0(&qword_1845C0, &qword_1845B0, &qword_128490, sub_8EDAC);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184CD0);
  }

  return result;
}

unint64_t sub_A5B14()
{
  result = qword_184CD8;
  if (!qword_184CD8)
  {
    sub_47A1C(&qword_184CE0, &qword_128E58);
    sub_A5BA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184CD8);
  }

  return result;
}

unint64_t sub_A5BA0()
{
  result = qword_184CE8;
  if (!qword_184CE8)
  {
    sub_47A1C(&qword_184CF0, &qword_128E60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184CE8);
  }

  return result;
}

unint64_t sub_A5C6C()
{
  result = qword_184D08;
  if (!qword_184D08)
  {
    sub_47A1C(&qword_184D10, &qword_128E70);
    sub_A3828();
    sub_A3990();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184D08);
  }

  return result;
}

uint64_t sub_A5CF8()
{
  sub_47A1C(&qword_184658, &qword_128558);
  sub_A3A48();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_A5D5C()
{
  sub_47A1C(&qword_1846A0, &qword_1285A8);
  sub_47A1C(&qword_1846E8, &qword_1285F0);
  sub_47A1C(&qword_184698, &qword_1285A0);
  sub_47A1C(&qword_1846D8, &qword_1285E8);
  sub_47A1C(&qword_184690, &qword_128598);
  sub_47A1C(&qword_1841B8, &qword_1285E0);
  sub_47A1C(&qword_184688, &qword_128590);
  sub_47A1C(&qword_1846C8, &qword_1285D8);
  sub_47A1C(&qword_184680, &qword_128588);
  sub_47A1C(&qword_184178, &qword_1285D0);
  sub_47A1C(&qword_184678, &qword_128580);
  sub_47A1C(&qword_184160, &unk_127D70);
  sub_48800(&qword_1846C0, &qword_184678, &qword_128580, &protocol conformance descriptor for Chart<A>);
  sub_7DDE8();
  swift_getOpaqueTypeConformance2();
  sub_7DEA4();
  swift_getOpaqueTypeConformance2();
  sub_48800(&qword_1846D0, &qword_1846C8, &qword_1285D8, &protocol conformance descriptor for AxisMarks<A>);
  swift_getOpaqueTypeConformance2();
  sub_7E000();
  swift_getOpaqueTypeConformance2();
  sub_48800(&qword_1846E0, &qword_1846D8, &qword_1285E8, &protocol conformance descriptor for AxisMarks<A>);
  swift_getOpaqueTypeConformance2();
  sub_47A1C(&qword_1846F0, &qword_1285F8);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_A60F0()
{
  sub_47A1C(&qword_184718, &qword_128620);
  sub_47A1C(&qword_184710, &qword_128618);
  sub_47A1C(&qword_1841B8, &qword_1285E0);
  sub_47A1C(&qword_184708, &qword_128610);
  sub_47A1C(&qword_1846C8, &qword_1285D8);
  sub_47A1C(&qword_184700, &qword_128608);
  sub_47A1C(&qword_184178, &qword_1285D0);
  sub_47A1C(&qword_1846F8, &qword_128600);
  sub_47A1C(&qword_184160, &unk_127D70);
  sub_48800(&qword_184780, &qword_1846F8, &qword_128600, &protocol conformance descriptor for Chart<A>);
  sub_7DDE8();
  swift_getOpaqueTypeConformance2();
  sub_7DEA4();
  swift_getOpaqueTypeConformance2();
  sub_48800(&qword_1846D0, &qword_1846C8, &qword_1285D8, &protocol conformance descriptor for AxisMarks<A>);
  swift_getOpaqueTypeConformance2();
  sub_7E000();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_A6368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_18DB50[0];
  if (!qword_18DB50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_18DB50);
  }

  return result;
}

unint64_t sub_A63C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_18DC60;
  if (!qword_18DC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18DC60);
  }

  return result;
}

unint64_t sub_A6418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_18DC68[0];
  if (!qword_18DC68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_18DC68);
  }

  return result;
}

unint64_t sub_A646C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_184D18;
  if (!qword_184D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184D18);
  }

  return result;
}

uint64_t sub_A64C4()
{
  v1 = *(type metadata accessor for DynamicDaySummaryView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  v3 = *(type metadata accessor for SummaryChartViewModel(0) + 32);
  v4 = sub_115760();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

void sub_A65F8(char *a1@<X8>)
{
  v1 = sub_117170();
  v2 = BatteryUILocalization(v1);

  if (v2)
  {
    sub_1171B0();

    sub_4869C(v3, v4, v5);
    v6 = sub_116900();
    v8 = v7;
    v10 = v9;
    sub_116720();
    v11 = sub_1168C0();
    v13 = v12;
    v15 = v14;

    sub_48928(v6, v8, v10 & 1);

    sub_1166C0();
    v16 = sub_116810();
    v18 = v17;
    v20 = v19;
    sub_48928(v11, v13, v15 & 1);

    v21 = [objc_opt_self() systemGrayColor];
    sub_116BE0();
    v22 = sub_116880();
    v24 = v23;
    LOBYTE(v11) = v25;

    sub_48928(v16, v18, v20 & 1);

    type metadata accessor for DynamicDaySummaryView(0);
    sub_46F9C(&qword_184D48, &qword_129020);
    sub_116CE0();
    sub_8EB40(v28, v29, &protocol witness table for Text, a1, v30, v31);

    sub_48928(v22, v24, v11 & 1);

    sub_116CC0();
    v26 = &a1[*(sub_46F9C(&qword_184760, &qword_128658) + 36)];
    *v26 = -4.0 - *&v28;
    *(v26 + 1) = 0xC000000000000000;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_A68C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_A692C()
{
  v1 = *(type metadata accessor for FullDaySummaryView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);

  v3 = *(type metadata accessor for SummaryChartViewModel(0) + 32);
  v4 = sub_115760();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_A6A44(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

unint64_t sub_A6ADC()
{
  result = qword_184D60;
  if (!qword_184D60)
  {
    sub_47A1C(&qword_184D58, &qword_129038);
    sub_48800(&qword_184D68, &qword_184D70, &qword_129040, &protocol conformance descriptor for AxisValueLabel<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184D60);
  }

  return result;
}

unint64_t sub_A6B94()
{
  result = qword_184D80;
  if (!qword_184D80)
  {
    sub_47A1C(&qword_184D78, &qword_129048);
    sub_A6C20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184D80);
  }

  return result;
}

unint64_t sub_A6C20()
{
  result = qword_184D88;
  if (!qword_184D88)
  {
    sub_47A1C(&qword_184D90, &qword_129050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184D88);
  }

  return result;
}

uint64_t sub_A6C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for FullDaySummaryView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_9B114(a1, v6, a2);
}

unint64_t sub_A6D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_18DCF8;
  if (!qword_18DCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18DCF8);
  }

  return result;
}

unint64_t sub_A6D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_18DD00;
  if (!qword_18DD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18DD00);
  }

  return result;
}

unint64_t sub_A6DC4()
{
  result = qword_184DF0;
  if (!qword_184DF0)
  {
    sub_47A1C(&qword_184DE8, &qword_1290B8);
    sub_A3C98(&qword_184DF8, type metadata accessor for SummaryItem, &unk_1288A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184DF0);
  }

  return result;
}

uint64_t sub_A6E78(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_47A1C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_A6EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_184E10;
  if (!qword_184E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184E10);
  }

  return result;
}

unint64_t sub_A6F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_18DD08[0];
  if (!qword_18DD08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_18DD08);
  }

  return result;
}

unint64_t sub_A6F9C()
{
  result = qword_182EC8;
  if (!qword_182EC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_182EC8);
  }

  return result;
}

uint64_t sub_A6FE8()
{

  return swift_deallocObject();
}

void sub_A7020()
{
  v1 = sub_117170();
  isa = sub_117050().super.isa;
  PLLogRegisteredEvent();
}

uint64_t sub_A70B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_A70D0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_47A1C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_A7184()
{
  result = qword_184F18;
  if (!qword_184F18)
  {
    sub_47A1C(&qword_184EB0, &qword_129190);
    swift_getOpaqueTypeConformance2();
    sub_48800(&qword_1840C0, &qword_1840C8, &qword_127CF0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184F18);
  }

  return result;
}

uint64_t sub_A7268(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_A72FC(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_A73D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_18DEA0[0];
  if (!qword_18DEA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_18DEA0);
  }

  return result;
}

unint64_t sub_A7428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_18E130[0];
  if (!qword_18E130[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_18E130);
  }

  return result;
}

unint64_t sub_A7480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_18E3C0[0];
  if (!qword_18E3C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_18E3C0);
  }

  return result;
}

unint64_t sub_A74D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_18E4D0;
  if (!qword_18E4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18E4D0);
  }

  return result;
}

unint64_t sub_A7530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_18E4D8[0];
  if (!qword_18E4D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_18E4D8);
  }

  return result;
}

unint64_t sub_A7588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_18E560;
  if (!qword_18E560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18E560);
  }

  return result;
}

unint64_t sub_A75E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_18E568[0];
  if (!qword_18E568[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_18E568);
  }

  return result;
}

unint64_t sub_A7638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_18E5F0;
  if (!qword_18E5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_18E5F0);
  }

  return result;
}

unint64_t sub_A7690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_18E5F8[0];
  if (!qword_18E5F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_18E5F8);
  }

  return result;
}

uint64_t sub_A7710()
{
  v0 = sub_1159D0();
  sub_A8034(v0, qword_191EA0);
  sub_A7798(v0, qword_191EA0);
  sub_A8098();
  sub_117610();
  return sub_1159E0();
}

uint64_t sub_A7798(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_A7818(uint64_t (*a1)(void), uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v5 = a1();
  v7 = v6;
  if (qword_18E680 != -1)
  {
    swift_once();
  }

  v8 = sub_1159D0();
  sub_A7798(v8, qword_191EA0);

  oslog = sub_1159C0();

  if (os_log_type_enabled(oslog, v4))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136446210;
    v11 = sub_A7AD0(v5, v7, &v13);

    *(v9 + 4) = v11;
    _os_log_impl(&dword_0, oslog, v4, "%{public}s", v9, 0xCu);
    sub_6ACB4(v10);
  }

  else
  {
  }
}

uint64_t sub_A7A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_5822C(a1, a2, a3);
  result = sub_F59F0(&type metadata for PerfPowerServices, v3);
  v5 = 900.0;
  if (result)
  {
    v5 = 3600.0;
  }

  qword_191EB8 = *&v5;
  return result;
}

uint64_t *sub_A7A80()
{
  if (qword_18E688 != -1)
  {
    swift_once();
  }

  return &qword_191EB8;
}

unint64_t sub_A7AD0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_A7B9C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_6AD00(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_6ACB4(v11);
  return v7;
}

unint64_t sub_A7B9C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_A7CA8(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_117740();
    a6 = v11;
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

void *sub_A7CA8(uint64_t a1, unint64_t a2)
{
  v3 = sub_A7CF4(a1, a2);
  sub_A7E24(&off_168300);
  return v3;
}

void *sub_A7CF4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_A1520(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_117740();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_117230();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_A1520(v10, 0);
        result = sub_117700();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_A7E24(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_A7F10(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_A7F10(char *result, int64_t a2, char a3, char *a4)
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
    sub_46F9C(&qword_184E68, &qword_129148);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

uint64_t *sub_A8034(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_A8098()
{
  result = qword_184F60;
  if (!qword_184F60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_184F60);
  }

  return result;
}

id sub_A8170(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ChargingStatusViewFactory();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_A81A4(void *a1)
{
  v2 = [objc_allocWithZone(UITableViewCell) init];
  type metadata accessor for ChargingStatusViewModel(0);
  v3 = a1;
  v4 = sub_4A8A4(a1);
  v9 = sub_725AC(v4);
  v10[3] = sub_46F9C(&qword_184F90, &unk_1296C0);
  v10[4] = sub_A830C();
  v5 = sub_A8370(v10);
  sub_A83D4(v5, v6, v7);
  sub_1164E0();
  sub_1174E0();

  return v2;
}

id sub_A82CC@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  v4 = *(v1 + 16);
  *a1 = v4;
  a1[1] = v2;

  return v4;
}

unint64_t sub_A830C()
{
  result = qword_184F98;
  if (!qword_184F98)
  {
    sub_47A1C(&qword_184F90, &unk_1296C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184F98);
  }

  return result;
}

uint64_t *sub_A8370(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_A83D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_184FA0;
  if (!qword_184FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184FA0);
  }

  return result;
}

double sub_A85B4@<D0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v95 = sub_1163F0();
  v140 = 1;
  v4 = v2[1];
  v111 = *v2;
  v112 = v4;
  sub_4869C(v95, v5, v6);

  v7 = sub_116900();
  v9 = v8;
  v11 = v10;
  sub_116670();
  v12 = sub_1168C0();
  v14 = v13;
  v16 = v15;

  sub_48928(v7, v9, v11 & 1);

  sub_1166C0();
  v17 = sub_116810();
  v84 = v18;
  v85 = v17;
  v90 = v19;
  v86 = v20;
  sub_48928(v12, v14, v16 & 1);

  KeyPath = swift_getKeyPath();
  v112 = v2[3];

  v21 = sub_116900();
  v23 = v22;
  v25 = v24;
  sub_116670();
  v26 = sub_1168C0();
  v28 = v27;
  LOBYTE(v9) = v29;

  sub_48928(v21, v23, v25 & 1);

  v30 = [objc_opt_self() systemGrayColor];
  v111 = sub_116BE0();
  v31 = sub_116890();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_48928(v26, v28, v9 & 1);

  v38 = swift_getKeyPath();
  v96 = v3[4];
  v91 = v3[6];
  v94 = v3;
  v87 = v3[7];
  v88 = v3[5];
  LOBYTE(v111) = v90 & 1;
  LOBYTE(v98) = v90 & 1;
  LOBYTE(v97[0]) = 1;
  LOBYTE(v138[0]) = 0;

  sub_488B8(v85, v84, v90 & 1);

  sub_488B8(v31, v33, v35 & 1);

  sub_48928(v31, v33, v35 & 1);

  sub_48928(v85, v84, v90 & 1);

  *(&v143 + 1) = v98;
  DWORD1(v143) = *(&v98 + 3);
  DWORD1(v145) = *(v97 + 3);
  *(&v145 + 1) = v97[0];
  HIDWORD(v146) = *(v138 + 3);
  *(&v146 + 9) = v138[0];
  HIDWORD(v148) = *(v137 + 3);
  *(&v148 + 9) = v137[0];
  HIDWORD(v149) = *(v136 + 3);
  *(&v149 + 9) = v136[0];
  *&v142 = v85;
  *(&v142 + 1) = v84;
  v152[0] = v85;
  v152[1] = v84;
  LOBYTE(v143) = v90 & 1;
  *(&v143 + 1) = v86;
  v144 = KeyPath;
  LOBYTE(v145) = 1;
  *(&v145 + 1) = v31;
  *&v146 = v33;
  BYTE8(v146) = v35 & 1;
  *&v147 = v37;
  *(&v147 + 1) = v38;
  *&v148 = 0;
  BYTE8(v148) = 1;
  v153 = v90 & 1;
  *&v149 = 0x402E000000000000;
  BYTE8(v149) = 0;
  *&v150 = v96;
  *(&v150 + 1) = v88;
  *&v151 = v91;
  *(&v151 + 1) = v87;
  *&v154[3] = *(&v98 + 3);
  *v154 = v98;
  v155 = v86;
  v156 = KeyPath;
  v157 = 0;
  v158 = 1;
  *&v159[3] = *(v97 + 3);
  *v159 = v97[0];
  v160 = v31;
  v161 = v33;
  v162 = v35 & 1;
  *&v163[3] = *(v138 + 3);
  *v163 = v138[0];
  v164 = v37;
  v165 = v38;
  v166 = 0;
  v167 = 1;
  *&v168[3] = *(v137 + 3);
  *v168 = v137[0];
  v169 = 0x402E000000000000;
  v170 = 0;
  *&v171[3] = *(v136 + 3);
  *v171 = v136[0];
  v172 = v96;
  v173 = v88;
  v174 = v91;
  v175 = v87;
  sub_479B4(&v142, &v111, &qword_184FA8, &unk_1296D0);
  sub_488C8(v152, &qword_184FA8, &unk_1296D0);
  *&v139[103] = v148;
  *&v139[119] = v149;
  *&v139[135] = v150;
  *&v139[151] = v151;
  *&v139[39] = v144;
  *&v139[55] = v145;
  *&v139[71] = v146;
  *&v139[87] = v147;
  *&v139[7] = v142;
  *&v139[23] = v143;
  v92 = v140;
  sub_46F9C(&qword_182E10, &qword_1247F0);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1248A0;
  LOBYTE(v9) = sub_116630();
  *(v39 + 32) = v9;
  v40 = sub_116650();
  *(v39 + 33) = v40;
  v41 = sub_116640();
  sub_116640();
  if (sub_116640() != v9)
  {
    v41 = sub_116640();
  }

  sub_116640();
  if (sub_116640() != v40)
  {
    v41 = sub_116640();
  }

  sub_115FD0();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  LOBYTE(v137[0]) = 0;
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1248A0;
  v51 = sub_116610();
  *(v50 + 32) = v51;
  v52 = sub_116620();
  *(v50 + 33) = v52;
  v53 = sub_116640();
  sub_116640();
  if (sub_116640() != v51)
  {
    v53 = sub_116640();
  }

  sub_116640();
  if (sub_116640() != v52)
  {
    v53 = sub_116640();
  }

  sub_115FD0();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  LOBYTE(v138[0]) = 0;
  *&v89 = sub_116EB0();
  *(&v89 + 1) = v62;
  v63 = sub_116EB0();
  v65 = v64;
  v66 = v3[8];
  v67 = v94[9];

  sub_116E90();
  sub_116190();
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_1248A0;
  v69 = sub_116610();
  *(v68 + 32) = v69;
  v70 = sub_116650();
  *(v68 + 33) = v70;
  v71 = sub_116640();
  sub_116640();
  if (sub_116640() != v69)
  {
    v71 = sub_116640();
  }

  sub_116640();
  if (sub_116640() != v70)
  {
    v71 = sub_116640();
  }

  sub_115FD0();
  *&v98 = v63;
  *(&v98 + 1) = v65;
  *&v99 = v66;
  *(&v99 + 1) = v67;
  v104 = v133;
  v105 = v134;
  v106 = v135;
  v100 = v129;
  v101 = v130;
  v103 = v132;
  v102 = v131;
  LOBYTE(v107) = v71;
  *(&v107 + 1) = v72;
  *&v141[71] = v131;
  *&v141[55] = v130;
  *&v141[39] = v129;
  *&v141[23] = v99;
  *&v141[135] = v135;
  *&v141[119] = v134;
  *&v141[103] = v133;
  *&v108 = v73;
  *(&v108 + 1) = v74;
  *&v109 = v75;
  BYTE8(v109) = 0;
  v110 = v89;
  *&v141[87] = v132;
  *&v141[7] = v98;
  *&v141[199] = v89;
  *&v141[183] = v109;
  *&v141[167] = v108;
  *&v141[151] = v107;
  v119 = v133;
  v120 = v134;
  v121 = v135;
  v115 = v129;
  v116 = v130;
  LOBYTE(v136[0]) = 0;
  v111 = v63;
  v112 = v65;
  v113 = v66;
  v114 = v67;
  v118 = v132;
  v117 = v131;
  v122 = v71;
  v123 = v72;
  v124 = v73;
  v125 = v74;
  v126 = v75;
  v127 = 0;
  v128 = v89;
  sub_479B4(&v98, v97, &qword_184FB0, &qword_1296E0);
  sub_488C8(&v111, &qword_184FB0, &qword_1296E0);
  *a2 = v95;
  *(a2 + 8) = 0;
  *(a2 + 16) = v92;
  *(a2 + 129) = *&v139[112];
  *(a2 + 145) = *&v139[128];
  *(a2 + 161) = *&v139[144];
  *(a2 + 176) = *&v139[159];
  *(a2 + 65) = *&v139[48];
  *(a2 + 81) = *&v139[64];
  *(a2 + 97) = *&v139[80];
  *(a2 + 113) = *&v139[96];
  *(a2 + 17) = *v139;
  *(a2 + 33) = *&v139[16];
  *(a2 + 49) = *&v139[32];
  *(a2 + 184) = v41;
  *(a2 + 192) = v43;
  *(a2 + 200) = v45;
  *(a2 + 208) = v47;
  *(a2 + 216) = v49;
  *(a2 + 224) = 0;
  *(a2 + 232) = v53;
  *(a2 + 240) = v55;
  *(a2 + 248) = v57;
  *(a2 + 256) = v59;
  *(a2 + 264) = v61;
  *(a2 + 272) = 0;
  v76 = *&v141[176];
  *(a2 + 433) = *&v141[160];
  *(a2 + 449) = v76;
  *(a2 + 465) = *&v141[192];
  *(a2 + 480) = *&v141[207];
  v77 = *&v141[112];
  *(a2 + 369) = *&v141[96];
  *(a2 + 385) = v77;
  v78 = *&v141[144];
  *(a2 + 401) = *&v141[128];
  *(a2 + 417) = v78;
  v79 = *&v141[48];
  *(a2 + 305) = *&v141[32];
  *(a2 + 321) = v79;
  v80 = *&v141[80];
  *(a2 + 337) = *&v141[64];
  *(a2 + 353) = v80;
  result = *v141;
  v82 = *&v141[16];
  *(a2 + 273) = *v141;
  *(a2 + 289) = v82;
  return result;
}

uint64_t sub_A90D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a5;
  v9 = sub_116550();
  v10 = *(v9 - 8);
  v26 = v9;
  v27 = v10;
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_46F9C(&qword_184FB8, &qword_1296E8);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v25 - v15;
  v25 = sub_46F9C(&qword_184FC0, &qword_1296F0);
  __chkstk_darwin(v25);
  v18 = &v25 - v17;
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = a3;
  v19[5] = a4;
  v29 = a1;
  v30 = a2;
  v31 = a3;
  v32 = a4;

  sub_46F9C(&qword_184FC8, &qword_1296F8);
  sub_AA270();
  sub_116D00();
  sub_116540();
  sub_48800(&qword_184FD8, &qword_184FB8, &qword_1296E8, &protocol conformance descriptor for Button<A>);
  sub_AB048(&qword_184FE0, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
  v20 = v26;
  sub_1169F0();
  (*(v27 + 8))(v12, v20);
  (*(v14 + 8))(v16, v13);
  v21 = &v18[*(v25 + 36)];
  v22 = enum case for RoundedCornerStyle.continuous(_:);
  v23 = sub_116390();
  (*(*(v23 - 8) + 104))(v21, v22, v23);
  *&v21[*(sub_46F9C(&qword_184FE8, &qword_129718) + 36)] = 256;
  sub_AA3AC();
  sub_116AA0();
  return sub_AA524(v18);
}

uint64_t sub_A9488@<X0>(uint64_t a1@<X8>)
{
  sub_116C00();
  sub_116670();
  swift_getKeyPath();
  sub_1166C0();
  sub_46F9C(&qword_182E30, &unk_127C70);
  sub_48748();
  sub_1169E0();

  v2 = [objc_opt_self() systemGray4Color];
  v3 = sub_116BE0();
  result = sub_46F9C(&qword_182E20, &qword_124800);
  *(a1 + *(result + 36)) = v3;
  return result;
}

uint64_t sub_A959C()
{
  v1 = sub_46F9C(&qword_185000, &unk_129720);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - v3;
  v6 = *v0;
  v5 = v0[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;

  sub_46F9C(&qword_182E20, &qword_124800);
  sub_AA5EC();
  sub_116D00();
  sub_48800(&qword_185010, &qword_185000, &unk_129720, &protocol conformance descriptor for Button<A>);
  sub_116AA0();
  return (*(v2 + 8))(v4, v1);
}

id sub_A9860(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v4.receiver = a1;
  v4.super_class = a3(a1, a2);
  return objc_msgSendSuper2(&v4, "init");
}

id sub_A98BC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_A98F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = sub_46F9C(&qword_1850E8, &unk_129A00);
  __chkstk_darwin(v3);
  v5 = (&v57 - v4);
  v6 = sub_46F9C(&qword_184EA0, &qword_129180);
  __chkstk_darwin(v6);
  v8 = &v57 - v7;
  v9 = sub_46F9C(&qword_1850F0, &qword_129A10);
  __chkstk_darwin(v9 - 8);
  v59 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v57 - v12;
  v62 = *(a1 + 16);
  v14 = *(&v62 + 1);
  if (!*(&v62 + 1))
  {
    sub_116DD0();
    v45 = sub_116620();
    v46 = &v8[*(v6 + 36)];
    *v46 = v45;
    *(v46 + 8) = 0u;
    *(v46 + 24) = 0u;
    v46[40] = 1;
    sub_479B4(v8, v5, &qword_184EA0, &qword_129180);
    v47 = swift_storeEnumTagMultiPayload();
    sub_AAF38(v47, v48, v49);
    sub_AAF8C();
    sub_116470();
    v20 = sub_488C8(v8, &qword_184EA0, &qword_129180);
    v23 = *(a1 + 8);
    if (v23)
    {
      goto LABEL_3;
    }

LABEL_5:
    v58 = 0;
    v37 = 0;
    v43 = 0;
    v41 = 0;
    KeyPath = 0;
    v44 = 0;
    goto LABEL_6;
  }

  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  *v5 = v62;
  v5[1] = v14;
  v5[2] = v15;
  v5[3] = v16;
  swift_storeEnumTagMultiPayload();
  v17 = sub_479B4(&v62, v61, &qword_185118, &qword_129A50);
  sub_AAF38(v17, v18, v19);
  sub_AAF8C();

  v20 = sub_116470();
  v23 = *(a1 + 8);
  if (!v23)
  {
    goto LABEL_5;
  }

LABEL_3:
  v61[0] = *a1;
  v61[1] = v23;
  sub_4869C(v20, v21, v22);

  v24 = sub_116900();
  v26 = v25;
  v28 = v27;
  sub_116720();
  v29 = sub_1168C0();
  v31 = v30;
  v33 = v32;

  sub_48928(v24, v26, v28 & 1);

  v34 = [objc_opt_self() systemGrayColor];
  v61[0] = sub_116BE0();
  v35 = sub_116890();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_48928(v29, v31, v33 & 1);

  KeyPath = swift_getKeyPath();
  v43 = v39 & 1;
  v58 = v35;
  sub_488B8(v35, v37, v39 & 1);

  v44 = 1;
LABEL_6:
  v50 = v13;
  v51 = v13;
  v52 = v59;
  sub_479B4(v51, v59, &qword_1850F0, &qword_129A10);
  v53 = v60;
  sub_479B4(v52, v60, &qword_1850F0, &qword_129A10);
  v54 = v53 + *(sub_46F9C(&qword_185110, &qword_129A18) + 48);
  v55 = v58;
  sub_AB090(v58, v37, v43, v41, KeyPath);
  sub_AB0E0(v55, v37, v43, v41, KeyPath);
  *v54 = v55;
  *(v54 + 8) = v37;
  *(v54 + 16) = v43;
  *(v54 + 24) = v41;
  *(v54 + 32) = KeyPath;
  *(v54 + 40) = 0;
  *(v54 + 48) = v44;
  sub_488C8(v50, &qword_1850F0, &qword_129A10);
  sub_AB0E0(v55, v37, v43, v41, KeyPath);
  return sub_488C8(v52, &qword_1850F0, &qword_129A10);
}

uint64_t sub_A9DEC@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_1163F0();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_46F9C(&qword_185018, qword_129738);
  return sub_A98F4(v2, a2 + *(v4 + 44));
}

id sub_A9E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  *&v14 = a1;
  *(&v14 + 1) = a2;
  *&v15 = a3;
  *(&v15 + 1) = a4;
  *&v16 = a5;
  *(&v16 + 1) = a6;
  *&v17 = a7;
  *(&v17 + 1) = a8;
  v18 = a9;
  v13[7] = v16;
  v13[8] = v17;
  v13[9] = a9;
  v13[5] = v14;
  v13[6] = v15;
  objc_allocWithZone(sub_46F9C(&qword_185130, &qword_129A98));

  sub_AB130(&v14, v13);
  v9 = sub_116440();
  result = [v9 view];
  if (result)
  {
    v11 = result;
    v12 = [objc_opt_self() clearColor];
    [v11 setBackgroundColor:v12];
    sub_AB168(&v14);

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_A9FB4()
{

  return swift_deallocObject();
}

double sub_AA01C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *v33 = *(v4 + 16);
  sub_4869C(a1, a2, a3);

  v6 = sub_116900();
  v8 = v7;
  v10 = v9;
  sub_116730();
  v11 = sub_1168C0();
  v13 = v12;
  v15 = v14;

  sub_48928(v6, v8, v10 & 1);

  sub_1166C0();
  v32 = sub_116810();
  v17 = v16;
  LOBYTE(v6) = v18;
  v20 = v19;
  sub_48928(v11, v13, v15 & 1);

  KeyPath = swift_getKeyPath();
  v22 = sub_116660();
  sub_115FD0();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_116EB0();
  sub_116190();
  *&v33[55] = v37;
  *&v33[71] = v38;
  *&v33[87] = v39;
  *&v33[103] = v40;
  *&v33[7] = v34;
  *&v33[23] = v35;
  *&v33[39] = v36;
  *a4 = v32;
  *(a4 + 8) = v17;
  *(a4 + 16) = v6 & 1;
  *(a4 + 24) = v20;
  *(a4 + 32) = KeyPath;
  *(a4 + 40) = 0;
  *(a4 + 48) = 1;
  *(a4 + 56) = v22;
  *(a4 + 64) = v24;
  *(a4 + 72) = v26;
  *(a4 + 80) = v28;
  *(a4 + 88) = v30;
  *(a4 + 96) = 0;
  *(a4 + 161) = *&v33[64];
  *(a4 + 177) = *&v33[80];
  *(a4 + 193) = *&v33[96];
  *(a4 + 208) = *(&v40 + 1);
  *(a4 + 97) = *v33;
  *(a4 + 113) = *&v33[16];
  result = *&v33[32];
  *(a4 + 129) = *&v33[32];
  *(a4 + 145) = *&v33[48];
  return result;
}

unint64_t sub_AA270()
{
  result = qword_184FD0;
  if (!qword_184FD0)
  {
    sub_47A1C(&qword_184FC8, &qword_1296F8);
    sub_AA328(&qword_183EC0, &qword_183EC8, &unk_129700, sub_789F4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184FD0);
  }

  return result;
}

uint64_t sub_AA328(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_47A1C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_AA3AC()
{
  result = qword_184FF0;
  if (!qword_184FF0)
  {
    sub_47A1C(&qword_184FC0, &qword_1296F0);
    sub_47A1C(&qword_184FB8, &qword_1296E8);
    sub_116550();
    sub_48800(&qword_184FD8, &qword_184FB8, &qword_1296E8, &protocol conformance descriptor for Button<A>);
    sub_AB048(&qword_184FE0, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_48800(&qword_184FF8, &qword_184FE8, &qword_129718, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184FF0);
  }

  return result;
}

uint64_t sub_AA524(uint64_t a1)
{
  v2 = sub_46F9C(&qword_184FC0, &qword_1296F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_AA58C()
{

  return swift_deallocObject();
}

unint64_t sub_AA5EC()
{
  result = qword_185008;
  if (!qword_185008)
  {
    sub_47A1C(&qword_182E20, &qword_124800);
    sub_47A1C(&qword_182E30, &unk_127C70);
    sub_48748();
    swift_getOpaqueTypeConformance2();
    sub_48800(&qword_183ED8, &qword_183EE0, &qword_129730, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185008);
  }

  return result;
}

id sub_AA6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_46F9C(&qword_182E10, &qword_1247F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1246D0;
  v12 = sub_116620();
  *(inited + 32) = v12;
  v13 = sub_116630();
  *(inited + 33) = v13;
  v14 = sub_116650();
  *(inited + 34) = v14;
  v15 = sub_116640();
  sub_116640();
  if (sub_116640() != v12)
  {
    v15 = sub_116640();
  }

  sub_116640();
  if (sub_116640() != v13)
  {
    v15 = sub_116640();
  }

  sub_116640();
  if (sub_116640() != v14)
  {
    v15 = sub_116640();
  }

  v31 = 1;
  *&v27 = a1;
  *(&v27 + 1) = a2;
  *&v28 = a3;
  *(&v28 + 1) = a4;
  *&v29 = a5;
  *(&v29 + 1) = a6;
  v30[0] = v15;
  memset(&v30[8], 0, 32);
  v30[40] = 1;
  v24 = v29;
  v25 = *v30;
  v26[0] = *&v30[16];
  *(v26 + 9) = *&v30[25];
  v22 = v27;
  v23 = v28;
  objc_allocWithZone(sub_46F9C(&qword_185120, &qword_129A58));

  sub_479B4(&v27, v21, &qword_185128, &qword_129A60);
  v16 = sub_116440();
  result = [v16 view];
  if (result)
  {
    v18 = result;
    v19 = [objc_opt_self() clearColor];
    [v18 setBackgroundColor:v19];
    sub_488C8(&v27, &qword_185128, &qword_129A60);

    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_AA9DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_AAA24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_AAAA8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_AAABC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_AAB04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_AAB64()
{
  result = qword_185070;
  if (!qword_185070)
  {
    sub_47A1C(&qword_185078, &qword_1299C8);
    sub_AA328(&qword_185080, &qword_185088, &qword_1299D0, sub_AAC48);
    sub_48800(&qword_1850B0, &qword_184FB0, &qword_1296E0, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185070);
  }

  return result;
}

unint64_t sub_AAC48()
{
  result = qword_185090;
  if (!qword_185090)
  {
    sub_47A1C(&qword_185098, &qword_1299D8);
    sub_48800(&qword_1850A0, &qword_1850A8, &qword_1299E0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185090);
  }

  return result;
}

unint64_t sub_AAD04()
{
  result = qword_1850B8;
  if (!qword_1850B8)
  {
    sub_47A1C(&qword_1850C0, &qword_1299E8);
    sub_AA3AC();
    sub_AB048(&qword_182E08, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1850B8);
  }

  return result;
}

unint64_t sub_AADC4()
{
  result = qword_1850C8;
  if (!qword_1850C8)
  {
    sub_47A1C(&qword_1850D0, &qword_1299F0);
    sub_48800(&qword_185010, &qword_185000, &unk_129720, &protocol conformance descriptor for Button<A>);
    sub_AB048(&qword_182E08, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1850C8);
  }

  return result;
}

uint64_t sub_AAEF0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

unint64_t sub_AAF38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1850F8;
  if (!qword_1850F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1850F8);
  }

  return result;
}

unint64_t sub_AAF8C()
{
  result = qword_185100;
  if (!qword_185100)
  {
    sub_47A1C(&qword_184EA0, &qword_129180);
    sub_AB048(&qword_185108, &type metadata accessor for Divider, &protocol conformance descriptor for Divider);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185100);
  }

  return result;
}

uint64_t sub_AB048(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_AB090(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_488B8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_AB0E0(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_48928(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_AB1AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_AB26C(a5);
  sub_5A754();
  swift_beginAccess();
  sub_116AD0();
}

void *sub_AB26C(uint64_t a1)
{
  v16 = sub_46F9C(&qword_185180, &qword_12A550);
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = &v16 - v3;
  v5 = sub_46F9C(&qword_185178, &unk_129BA0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_ACB70(0, v9, 0);
    v10 = v17;
    v11 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v12 = *(v2 + 72);
    do
    {
      sub_479B4(v11, v4, &qword_185180, &qword_12A550);
      swift_dynamicCast();
      v17 = v10;
      v14 = v10[2];
      v13 = v10[3];
      if (v14 >= v13 >> 1)
      {
        sub_ACB70((v13 > 1), v14 + 1, 1);
        v10 = v17;
      }

      v10[2] = v14 + 1;
      sub_ACA6C(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14);
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  return v10;
}

uint64_t sub_AB544@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t (**a3)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v6 = sub_115A20();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v7 + 16))(v10, a1, v6, v9);
  v11 = a2[1];
  v20 = a2[5];
  v21 = v11;
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = (v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v12, v10, v6);
  v15 = (v14 + v13);
  v16 = *(a2 + 1);
  *v15 = *a2;
  v15[1] = v16;
  v15[2] = *(a2 + 2);
  *a3 = sub_AC844;
  a3[1] = v14;

  sub_AB494(&v21, v19);

  return sub_479B4(&v20, v19, &qword_185140, &qword_129AA8);
}

uint64_t sub_AB710@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v22 = a3;
  v20 = sub_116490();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_115A20();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_1159F0();
  type metadata accessor for CGRect(0);
  sub_1160A0();

  v10 = v34;
  v11 = v35;
  v12 = sub_116B50();
  sub_1167F0();
  *&v23 = v12;
  WORD4(v23) = 256;
  *(&v23 + 10) = v32;
  HIWORD(v23) = v33;
  v24 = v27;
  v25 = v28;
  v26 = v29;
  (*(v8 + 16))(&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v13 = a2[1];
  v30 = a2[5];
  v31 = v13;
  v14 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v10;
  *(v15 + 32) = v11;
  (*(v8 + 32))(v15 + v14, &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v16 = (v15 + ((v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  v17 = *(a2 + 1);
  *v16 = *a2;
  v16[1] = v17;
  v16[2] = *(a2 + 2);

  sub_AB494(&v31, &v34);

  sub_479B4(&v30, &v34, &qword_185140, &qword_129AA8);
  sub_1164F0();
  sub_46F9C(&qword_184280, &unk_128080);
  sub_8BF50();
  v18 = v20;
  sub_116A10();

  (*(v21 + 8))(v6, v18);
  v34 = v23;
  v35 = v24;
  v36 = v25;
  v37 = v26;
  return sub_488C8(&v34, &qword_184280, &unk_128080);
}

void sub_ABACC(double a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, uint64_t a6, void *a7)
{
  v13 = sub_46F9C(&qword_185170, &unk_129B90);
  __chkstk_darwin(v13 - 8);
  v15 = &v37 - v14;
  v16 = sub_46F9C(&qword_182EF0, &unk_124BB0);
  __chkstk_darwin(v16 - 8);
  v18 = &v37 - v17;
  v19 = sub_115760();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44.origin.x = a2;
  v44.origin.y = a3;
  v44.size.width = a4;
  v44.size.height = a5;
  MinX = CGRectGetMinX(v44);
  v45.origin.x = a2;
  v45.origin.y = a3;
  v45.size.width = a4;
  v45.size.height = a5;
  MaxX = CGRectGetMaxX(v45);
  if (MinX > MaxX)
  {
    __break(1u);
    return;
  }

  if (MinX <= a1 && MaxX > a1)
  {
    v46.origin.x = a2;
    v46.origin.y = a3;
    v46.size.width = a4;
    v46.size.height = a5;
    CGRectGetMinX(v46);
    sub_115A00();
    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {
      sub_488C8(v18, &qword_182EF0, &unk_124BB0);
      return;
    }

    v25 = (*(v20 + 32))(v22, v18, v19);
    __chkstk_darwin(v25);
    *(&v37 - 2) = v22;
    sub_AC1E0(sub_ACA4C, v26, v15);
    v27 = sub_46F9C(&qword_185178, &unk_129BA0);
    v28 = (*(*(v27 - 8) + 48))(v15, 1, v27);
    if (v28 == 1)
    {
      sub_488C8(v15, &qword_185170, &unk_129B90);
      v29 = 0;
    }

    else
    {
      v29 = *v15;
      v30 = *(v27 + 48);
      sub_488C8(&v15[*(v27 + 64)], &qword_182EF0, &unk_124BB0);
      (*(v20 + 8))(&v15[v30], v19);
    }

    v32 = a7[1];
    v31 = a7[2];
    v34 = a7[3];
    v33 = a7 + 3;
    v43 = v32;
    v39 = v32;
    v40 = v31;
    v41 = v34;
    v42 = *(v33 + 8);

    sub_AB494(&v43, &v37);
    sub_46F9C(&qword_185138, &qword_129AA0);
    sub_116D60();
    v35 = v38;
    if (v28 == 1)
    {
      if (!v38)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (v29 != v37)
      {
        v35 = 1;
      }

      if (v35)
      {
        v36 = 0;
LABEL_18:
        v39 = v32;
        v40 = v31;
        v41 = *v33;
        v42 = *(v33 + 8);
        v37 = v29;
        v38 = v36;
        sub_116D70();
        sub_AB4F0(&v43);

        (*(v20 + 8))(v22, v19);
        return;
      }
    }

    v29 = 0;
LABEL_17:
    v36 = 1;
    goto LABEL_18;
  }
}

uint64_t sub_ABF10(uint64_t a1, uint64_t a2)
{
  sub_46F9C(&qword_185178, &unk_129BA0);
  sub_115760();
  sub_ACADC();
  v2 = sub_117120();
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    __chkstk_darwin(v2);
    v4 = sub_AC000(sub_ACB34);
    v3 = (v4 == 2) | v4;
  }

  return v3 & 1;
}

uint64_t sub_AC000(void (*a1)(uint64_t *__return_ptr, char *))
{
  v12 = a1;
  v3 = sub_115760();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_46F9C(&qword_182EF0, &unk_124BB0);
  __chkstk_darwin(v7 - 8);
  v9 = &v11 - v8;
  sub_479B4(v1, &v11 - v8, &qword_182EF0, &unk_124BB0);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    return 2;
  }

  (*(v4 + 32))(v6, v9, v3);
  v12(&v13, v6);
  if (v2)
  {
    result = (*(v4 + 8))(v6, v3);
    __break(1u);
  }

  else
  {
    (*(v4 + 8))(v6, v3);
    return v13;
  }

  return result;
}

uint64_t sub_AC1E0@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = sub_46F9C(&qword_185178, &unk_129BA0);
  v10 = __chkstk_darwin(v7);
  v12 = &v19 - v11;
  v13 = *(a2 + 16);
  if (v13)
  {
    v19 = v9;
    v20 = v8;
    v21 = a3;
    v14 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v15 = *(v9 + 72);
    while (1)
    {
      sub_479B4(v14, v12, &qword_185178, &unk_129BA0);
      v16 = a1(v12);
      if (v3)
      {
        return sub_488C8(v12, &qword_185178, &unk_129BA0);
      }

      if (v16)
      {
        break;
      }

      sub_488C8(v12, &qword_185178, &unk_129BA0);
      v14 += v15;
      if (!--v13)
      {
        v17 = 1;
        a3 = v21;
        goto LABEL_10;
      }
    }

    a3 = v21;
    sub_ACA6C(v12, v21);
    v17 = 0;
LABEL_10:
    v9 = v19;
    v8 = v20;
  }

  else
  {
    v17 = 1;
  }

  return (*(v9 + 56))(a3, v17, 1, v8, v10);
}

uint64_t sub_AC39C()
{
  v2 = *v0;
  v3 = v0[2];
  v4 = v0[5];
  v9 = v0[1];
  v1 = v9;
  v10 = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  v6 = v0[3];
  *(v5 + 32) = v3;
  *(v5 + 40) = v6;
  *(v5 + 48) = *(v0 + 32);
  *(v5 + 49) = *(v0 + 33);
  *(v5 + 52) = *(v0 + 9);
  *(v5 + 56) = v4;

  sub_AB494(&v9, v8);

  sub_479B4(&v10, v8, &qword_185140, &qword_129AA8);
  sub_116EB0();
  sub_46F9C(&qword_185148, &unk_129AB0);
  sub_46F9C(&qword_185150, &qword_12CD90);
  sub_48800(&qword_185158, &qword_185148, &unk_129AB0, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_48800(&qword_185160, &qword_185150, &qword_12CD90, &protocol conformance descriptor for GeometryReader<A>);
  sub_116980();
}

uint64_t sub_AC554(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_AC59C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_AC5F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_185168;
  if (!qword_185168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185168);
  }

  return result;
}

uint64_t sub_AC64C()
{
  sub_47A1C(&qword_185148, &unk_129AB0);
  sub_47A1C(&qword_185150, &qword_12CD90);
  sub_48800(&qword_185158, &qword_185148, &unk_129AB0, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_48800(&qword_185160, &qword_185150, &qword_12CD90, &protocol conformance descriptor for GeometryReader<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_AC73C()
{

  return swift_deallocObject();
}

uint64_t sub_AC78C()
{
  v1 = sub_115A20();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_AC844@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_115A20() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_AB710(v1 + v4, v5, a1);
}

uint64_t sub_AC8F0()
{
  v1 = sub_115A20();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void sub_AC9A8(double a1)
{
  v3 = *(sub_115A20() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_ABACC(a1, v5, v6, v7, v8, v1 + v4, v9);
}

uint64_t sub_ACA6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_46F9C(&qword_185178, &unk_129BA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_ACADC()
{
  result = qword_182F10;
  if (!qword_182F10)
  {
    sub_115760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_182F10);
  }

  return result;
}

uint64_t sub_ACB34@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1156D0();
  *a2 = result & 1;
  return result;
}

void *sub_ACB70(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_ACB90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_ACB90(void *result, int64_t a2, char a3, void *a4)
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

  sub_46F9C(&qword_185188, &unk_129BB0);
  v10 = *(sub_46F9C(&qword_185178, &unk_129BA0) - 8);
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
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_46F9C(&qword_185178, &unk_129BA0) - 8);
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

uint64_t sub_ACD88@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v7 = sub_5A754();
  swift_beginAccess();
  v8 = *v7;
  type metadata accessor for BUIChartViewModel(0);
  sub_AE924(&qword_185190, type metadata accessor for BUIChartViewModel, &unk_12A128);

  result = sub_116120();
  *a3 = result;
  *(a3 + 8) = v10;
  *(a3 + 16) = a4;
  *(a3 + 24) = a2;
  *(a3 + 32) = v8;
  return result;
}

void sub_ACE58(uint64_t a3@<X8>)
{
  v50 = a3;
  v3 = sub_46F9C(&qword_185198, &qword_129BC0);
  __chkstk_darwin(v3);
  v5 = &v45 - v4;
  v46 = sub_46F9C(&qword_1851A0, &qword_129BC8);
  __chkstk_darwin(v46);
  v7 = &v45 - v6;
  v47 = sub_46F9C(&qword_1851A8, &unk_129BD0);
  __chkstk_darwin(v47);
  v49 = &v45 - v8;
  v9 = sub_117170();
  v10 = BatteryUILocalization(v9);

  if (v10)
  {
    v11 = sub_1171B0();
    v13 = v12;

    v51 = v11;
    v52 = v13;
    sub_4869C(v14, v15, v16);
    v17 = sub_116900();
    v19 = v18;
    LOBYTE(v11) = v20;
    v45 = v21;
    v22 = &v5[*(v3 + 36)];
    v23 = *(sub_46F9C(&qword_1851B0, &qword_12CCE0) + 28);
    v24 = enum case for Text.Case.uppercase(_:);
    v25 = sub_1168B0();
    v26 = *(v25 - 8);
    (*(v26 + 104))(v22 + v23, v24, v25);
    (*(v26 + 56))(v22 + v23, 0, 1, v25);
    *v22 = swift_getKeyPath();
    *v5 = v17;
    *(v5 + 1) = v19;
    v5[16] = v11 & 1;
    *(v5 + 3) = v45;
    v27 = *(v48 + 32);
    v28 = *(v27 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_titleColor);
    KeyPath = swift_getKeyPath();
    sub_548D0(v5, v7, &qword_185198, &qword_129BC0);
    v30 = &v7[*(v46 + 36)];
    *v30 = KeyPath;
    v30[1] = v28;
    v31 = *(v27 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_titleFont);
    v32 = swift_getKeyPath();
    v33 = v49;
    sub_548D0(v7, v49, &qword_1851A0, &qword_129BC8);
    v34 = (v33 + *(v47 + 36));
    *v34 = v32;
    v34[1] = v31;

    LOBYTE(v28) = sub_116620();
    sub_115FD0();
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v43 = v50;
    sub_548D0(v33, v50, &qword_1851A8, &unk_129BD0);
    v44 = v43 + *(sub_46F9C(&qword_1851B8, &qword_129C70) + 36);
    *v44 = v28;
    *(v44 + 8) = v36;
    *(v44 + 16) = v38;
    *(v44 + 24) = v40;
    *(v44 + 32) = v42;
    *(v44 + 40) = 0;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_AD218@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v45 = a1;
  v41 = sub_46F9C(&qword_1851C0, &qword_129C78);
  __chkstk_darwin(v41);
  v4 = &v41 - v3;
  v44 = sub_46F9C(&qword_1851C8, &qword_129C80);
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v6 = &v41 - v5;
  v43 = sub_46F9C(&qword_1851D0, &qword_129C88);
  __chkstk_darwin(v43);
  v8 = &v41 - v7;
  *v4 = sub_1163F0();
  *(v4 + 1) = 0;
  v4[16] = 0;
  v9 = sub_46F9C(&qword_1851D8, &qword_129C90);
  sub_AD680(v2, &v4[*(v9 + 44)]);
  v47 = *v2;
  v10 = *(v2 + 24);
  v11 = swift_allocObject();
  v12 = *(v2 + 16);
  *(v11 + 16) = *v2;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(v2 + 32);
  sub_479B4(&v47, v46, &qword_1851E0, &qword_129C98);
  v13 = v10;

  sub_46F9C(&qword_1851E8, &qword_129CA0);
  sub_48800(&qword_1851F0, &qword_1851C0, &qword_129C78, &protocol conformance descriptor for VStack<A>);
  sub_AEA98(&qword_1851F8, &qword_1851E8, &qword_129CA0, sub_7DDE8);
  sub_116990();

  sub_488C8(v4, &qword_1851C0, &qword_129C78);
  sub_46F9C(&qword_182E10, &qword_1247F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1248A0;
  v15 = sub_116630();
  *(inited + 32) = v15;
  v16 = sub_116650();
  *(inited + 33) = v16;
  v17 = sub_116640();
  sub_116640();
  if (sub_116640() != v15)
  {
    v17 = sub_116640();
  }

  sub_116640();
  if (sub_116640() != v16)
  {
    v17 = sub_116640();
  }

  v18 = *(&v47 + 1);
  sub_A79B4();
  sub_115FD0();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  (*(v42 + 32))(v8, v6, v44);
  v27 = &v8[*(v43 + 36)];
  *v27 = v17;
  *(v27 + 1) = v20;
  *(v27 + 2) = v22;
  *(v27 + 3) = v24;
  *(v27 + 4) = v26;
  v27[40] = 0;
  v28 = sub_116610();
  v29 = v28;
  (*(*v18 + 288))(v28);
  sub_115FD0();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = v45;
  sub_AE96C(v8, v45);
  result = sub_46F9C(&qword_185200, qword_129CA8);
  v40 = v38 + *(result + 36);
  *v40 = v29;
  *(v40 + 8) = v31;
  *(v40 + 16) = v33;
  *(v40 + 24) = v35;
  *(v40 + 32) = v37;
  *(v40 + 40) = 0;
  return result;
}

uint64_t sub_AD680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v118 = a2;
  v117 = sub_46F9C(&qword_185218, &qword_129D48);
  __chkstk_darwin(v117);
  v106 = &v94 - v3;
  v4 = type metadata accessor for TenDayBatteryActivityChart(0);
  __chkstk_darwin(v4 - 8);
  v102 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v113 = &v94 - v7;
  v8 = type metadata accessor for TenDayBatteryUsageChart(0);
  __chkstk_darwin(v8 - 8);
  v101 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v112 = &v94 - v11;
  v115 = sub_46F9C(&qword_185220, &qword_129D50);
  __chkstk_darwin(v115);
  v116 = &v94 - v12;
  v109 = sub_46F9C(&qword_185228, &qword_129D58);
  __chkstk_darwin(v109);
  v98 = &v94 - v13;
  v14 = type metadata accessor for Battery24HrActivityChart(0);
  __chkstk_darwin(v14 - 8);
  v97 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v103 = &v94 - v17;
  v111 = sub_46F9C(&qword_185230, &qword_129D60);
  __chkstk_darwin(v111);
  v19 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v119 = &v94 - v21;
  v22 = sub_46F9C(&qword_1851B8, &qword_129C70);
  __chkstk_darwin(v22 - 8);
  v24 = &v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v94 - v26;
  v104 = sub_46F9C(&qword_185238, &qword_129D68);
  __chkstk_darwin(v104);
  v107 = &v94 - v28;
  v105 = sub_46F9C(&qword_185240, &qword_129D70);
  __chkstk_darwin(v105);
  v96 = &v94 - v29;
  v30 = type metadata accessor for Battery24HrBatteryLevelChart(0);
  __chkstk_darwin(v30 - 8);
  v100 = &v94 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v110 = &v94 - v33;
  v34 = sub_46F9C(&qword_185248, &qword_129D78);
  __chkstk_darwin(v34);
  v36 = &v94 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v95 = &v94 - v38;
  v114 = sub_46F9C(&qword_185250, &qword_129D80);
  __chkstk_darwin(v114);
  v108 = &v94 - v39;
  v121[0] = *a1;
  v40 = *(&v121[0] + 1);
  v41 = *(**(&v121[0] + 1) + 192);
  sub_479B4(v121, v120, &qword_1851E0, &qword_129C98);
  v42 = swift_retain_n();
  v43 = v41(v42);
  if (v43)
  {
    sub_488C8(v121, &qword_1851E0, &qword_129C98);
    v46 = v27;
    v99 = v27;
    sub_ACE58(v27);
    v47 = *(a1 + 16);
    v48 = v112;
    sub_BAC18(v40, v112, v47);
    v49 = v119;
    sub_ACE58(v119);
    v50 = sub_116610();
    sub_115FD0();
    v51 = v49 + *(v111 + 36);
    *v51 = v50;
    *(v51 + 8) = v52;
    *(v51 + 16) = v53;
    *(v51 + 24) = v54;
    *(v51 + 32) = v55;
    *(v51 + 40) = 0;
    v56 = v113;
    sub_BD920(v40, v113, v47);
    sub_479B4(v46, v24, &qword_1851B8, &qword_129C70);
    v57 = v101;
    sub_AED9C(v48, v101, type metadata accessor for TenDayBatteryUsageChart);
    sub_479B4(v49, v19, &qword_185230, &qword_129D60);
    v58 = v102;
    sub_AED9C(v56, v102, type metadata accessor for TenDayBatteryActivityChart);
    v59 = v106;
    sub_479B4(v24, v106, &qword_1851B8, &qword_129C70);
    v60 = sub_46F9C(&qword_185258, &qword_129D88);
    sub_AED9C(v57, v59 + v60[12], type metadata accessor for TenDayBatteryUsageChart);
    sub_479B4(v19, v59 + v60[16], &qword_185230, &qword_129D60);
    sub_AED9C(v58, v59 + v60[20], type metadata accessor for TenDayBatteryActivityChart);
    sub_AEE04(v58, type metadata accessor for TenDayBatteryActivityChart);
    sub_488C8(v19, &qword_185230, &qword_129D60);
    sub_AEE04(v57, type metadata accessor for TenDayBatteryUsageChart);
    sub_488C8(v24, &qword_1851B8, &qword_129C70);
    sub_479B4(v59, v116, &qword_185218, &qword_129D48);
    swift_storeEnumTagMultiPayload();
    sub_AECBC();
    sub_48800(&qword_185278, &qword_185218, &qword_129D48, &protocol conformance descriptor for TupleView<A>);
    sub_116470();
    sub_488C8(v59, &qword_185218, &qword_129D48);
    sub_AEE04(v113, type metadata accessor for TenDayBatteryActivityChart);
    sub_488C8(v119, &qword_185230, &qword_129D60);
    sub_AEE04(v112, type metadata accessor for TenDayBatteryUsageChart);
    return sub_488C8(v99, &qword_1851B8, &qword_129C70);
  }

  else
  {
    v62 = v111;
    v113 = v24;
    v63 = v119;
    v120[0] = 1;
    v64 = sub_5822C(v43, v44, v45);
    v65 = sub_F59F0(&type metadata for PerfPowerServices, v64);
    sub_488C8(v121, &qword_1851E0, &qword_129C98);
    if (v65)
    {
      sub_488C8(v121, &qword_1851E0, &qword_129C98);
      v66 = v95;
      (*(**(a1 + 32) + 528))(0x2079726574746142, 0xED00006C6576654CLL);
      v67 = sub_116BC0();
      *(v66 + *(sub_46F9C(&qword_185288, &qword_129D98) + 36)) = v67;
      LOBYTE(v67) = sub_116620();
      sub_115FD0();
      v68 = v66 + *(v34 + 36);
      *v68 = v67;
      *(v68 + 8) = v69;
      *(v68 + 16) = v70;
      *(v68 + 24) = v71;
      *(v68 + 32) = v72;
      *(v68 + 40) = 0;
      v73 = v110;
      sub_D9090(v40, v110, *(a1 + 16));
      sub_479B4(v66, v36, &qword_185248, &qword_129D78);
      v74 = v100;
      sub_AED9C(v73, v100, type metadata accessor for Battery24HrBatteryLevelChart);
      v75 = v96;
      sub_479B4(v36, v96, &qword_185248, &qword_129D78);
      v76 = sub_46F9C(&qword_185290, &unk_129DA0);
      sub_AED9C(v74, v75 + *(v76 + 48), type metadata accessor for Battery24HrBatteryLevelChart);
      sub_AEE04(v74, type metadata accessor for Battery24HrBatteryLevelChart);
      sub_488C8(v36, &qword_185248, &qword_129D78);
      sub_479B4(v75, v107, &qword_185240, &qword_129D70);
      swift_storeEnumTagMultiPayload();
      sub_48800(&qword_185268, &qword_185240, &qword_129D70, &protocol conformance descriptor for TupleView<A>);
      sub_48800(&qword_185270, &qword_185228, &qword_129D58, &protocol conformance descriptor for TupleView<A>);
      v77 = v108;
      sub_116470();
      sub_488C8(v75, &qword_185240, &qword_129D70);
      sub_AEE04(v73, type metadata accessor for Battery24HrBatteryLevelChart);
      sub_488C8(v66, &qword_185248, &qword_129D78);
    }

    else
    {
      v78 = v27;
      v99 = v27;
      sub_ACE58(v27);
      v79 = *(a1 + 16);
      v80 = v110;
      sub_D9090(v40, v110, v79);
      sub_ACE58(v63);
      v81 = sub_116610();
      sub_115FD0();
      v82 = v63 + *(v62 + 36);
      *v82 = v81;
      *(v82 + 8) = v83;
      *(v82 + 16) = v84;
      *(v82 + 24) = v85;
      *(v82 + 32) = v86;
      *(v82 + 40) = 0;
      v87 = v103;
      sub_E0E58(v103, v79);
      v88 = v113;
      sub_479B4(v78, v113, &qword_1851B8, &qword_129C70);
      v89 = v100;
      sub_AED9C(v80, v100, type metadata accessor for Battery24HrBatteryLevelChart);
      v90 = v19;
      sub_479B4(v63, v19, &qword_185230, &qword_129D60);
      v91 = v97;
      sub_AED9C(v87, v97, type metadata accessor for Battery24HrActivityChart);
      v92 = v98;
      sub_479B4(v88, v98, &qword_1851B8, &qword_129C70);
      v93 = sub_46F9C(&qword_185280, &qword_129D90);
      sub_AED9C(v89, v92 + v93[12], type metadata accessor for Battery24HrBatteryLevelChart);
      sub_479B4(v90, v92 + v93[16], &qword_185230, &qword_129D60);
      sub_AED9C(v91, v92 + v93[20], type metadata accessor for Battery24HrActivityChart);
      sub_AEE04(v91, type metadata accessor for Battery24HrActivityChart);
      sub_488C8(v90, &qword_185230, &qword_129D60);
      sub_AEE04(v89, type metadata accessor for Battery24HrBatteryLevelChart);
      sub_488C8(v88, &qword_1851B8, &qword_129C70);
      sub_479B4(v92, v107, &qword_185228, &qword_129D58);
      swift_storeEnumTagMultiPayload();
      sub_48800(&qword_185268, &qword_185240, &qword_129D70, &protocol conformance descriptor for TupleView<A>);
      sub_48800(&qword_185270, &qword_185228, &qword_129D58, &protocol conformance descriptor for TupleView<A>);
      v77 = v108;
      sub_116470();
      sub_488C8(v92, &qword_185228, &qword_129D58);
      sub_AEE04(v103, type metadata accessor for Battery24HrActivityChart);
      sub_488C8(v119, &qword_185230, &qword_129D60);
      sub_AEE04(v110, type metadata accessor for Battery24HrBatteryLevelChart);
      sub_488C8(v99, &qword_1851B8, &qword_129C70);
    }

    sub_479B4(v77, v116, &qword_185250, &qword_129D80);
    swift_storeEnumTagMultiPayload();
    sub_AECBC();
    sub_48800(&qword_185278, &qword_185218, &qword_129D48, &protocol conformance descriptor for TupleView<A>);
    sub_116470();
    return sub_488C8(v77, &qword_185250, &qword_129D80);
  }
}

uint64_t sub_AE6E8(uint64_t a1)
{
  v2 = sub_46F9C(&qword_185298, &qword_12CD20);
  __chkstk_darwin(v2 - 8);
  sub_479B4(a1, &v5 - v3, &qword_185298, &qword_12CD20);
  return sub_116290();
}

uint64_t sub_AE790()
{

  return swift_deallocObject();
}

uint64_t sub_AE7D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_116EB0();
  sub_116070();
  v4 = sub_115C90();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = (a2 + *(sub_46F9C(&qword_184160, &unk_127D70) + 36));
  *v5 = v17;
  v5[1] = v18;
  v5[2] = v19;
  v6 = sub_116620();
  sub_115FD0();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  result = sub_46F9C(&qword_1851E8, &qword_129CA0);
  v16 = a2 + *(result + 36);
  *v16 = v6;
  *(v16 + 8) = v8;
  *(v16 + 16) = v10;
  *(v16 + 24) = v12;
  *(v16 + 32) = v14;
  *(v16 + 40) = 0;
  return result;
}

uint64_t sub_AE924(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_AE96C(uint64_t a1, uint64_t a2)
{
  v4 = sub_46F9C(&qword_1851D0, &qword_129C88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_AE9F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_AEA40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_AEA98(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_47A1C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_AEB60()
{
  result = qword_185210;
  if (!qword_185210)
  {
    sub_47A1C(&qword_1851D0, &qword_129C88);
    sub_47A1C(&qword_1851C0, &qword_129C78);
    sub_47A1C(&qword_1851E8, &qword_129CA0);
    sub_48800(&qword_1851F0, &qword_1851C0, &qword_129C78, &protocol conformance descriptor for VStack<A>);
    sub_AEA98(&qword_1851F8, &qword_1851E8, &qword_129CA0, sub_7DDE8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185210);
  }

  return result;
}

unint64_t sub_AECBC()
{
  result = qword_185260;
  if (!qword_185260)
  {
    sub_47A1C(&qword_185250, &qword_129D80);
    sub_48800(&qword_185268, &qword_185240, &qword_129D70, &protocol conformance descriptor for TupleView<A>);
    sub_48800(&qword_185270, &qword_185228, &qword_129D58, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_185260);
  }

  return result;
}

uint64_t sub_AED9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_AEE04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_AEE64()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_115F70();
}

uint64_t sub_AEF20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BUIChartViewData(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BA3D4(a1, v6, type metadata accessor for BUIChartViewData);
  return (*(**a2 + 144))(v6);
}

uint64_t sub_AEFE0(uint64_t a1)
{
  v2 = type metadata accessor for BUIChartViewData(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_BA3D4(a1, v4, type metadata accessor for BUIChartViewData);

  sub_115F80();
  return sub_BA43C(a1, type metadata accessor for BUIChartViewData);
}

uint64_t (*sub_AF0C4(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_115F60();
  return sub_BAB04;
}

uint64_t sub_AF184(uint64_t a1)
{
  v2 = sub_46F9C(&qword_1852A8, &qword_129EC0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_46F9C(&qword_1852A0, &qword_129EB8);
  sub_115F50();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_AF2BC(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_46F9C(&qword_1852A8, &qword_129EC0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel__data;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_46F9C(&qword_1852A0, &qword_129EB8);
  sub_115F40();
  swift_endAccess();
  return sub_BAB00;
}

uint64_t sub_AF42C(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_AF46C(a1);
  return v2;
}

uint64_t sub_AF46C(uint64_t a1)
{
  v37 = a1;
  v39 = type metadata accessor for BUIChartViewData(0);
  __chkstk_darwin(v39);
  v38 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v36 = &v30 - v4;
  v5 = sub_46F9C(&qword_1852B0, &qword_129EC8);
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v33 = &v30 - v6;
  v32 = sub_46F9C(&qword_1852B8, &qword_129ED0);
  v7 = *(v32 - 8);
  __chkstk_darwin(v32);
  v9 = &v30 - v8;
  v31 = sub_46F9C(&qword_1852C0, &qword_129ED8);
  v10 = *(v31 - 8);
  __chkstk_darwin(v31);
  v12 = &v30 - v11;
  v13 = sub_46F9C(&qword_1852C8, &unk_129EE0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v30 - v15;
  v17 = OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel_cfg;
  v18 = sub_5A754();
  swift_beginAccess();
  *(v1 + v17) = *v18;
  v19 = OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel__activeChart;
  LOBYTE(v40) = 0;

  sub_115F30();
  (*(v14 + 32))(v1 + v19, v16, v13);
  v20 = OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel__selectedIndex;
  v40 = 0;
  v41 = 1;
  sub_46F9C(&qword_1835F8, &unk_1259E0);
  sub_115F30();
  (*(v10 + 32))(v1 + v20, v12, v31);
  v21 = OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel__topMargin;
  v40 = 0;
  sub_115F30();
  v22 = *(v7 + 32);
  v23 = v32;
  v22(v1 + v21, v9, v32);
  v24 = OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel__bottomMargin;
  v40 = 0;
  sub_115F30();
  v22(v1 + v24, v9, v23);
  v25 = OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel__containerBackgroundColor;
  v40 = [objc_opt_self() systemBackgroundColor];
  sub_54960(0, &qword_1831A8, UIColor_ptr);
  v26 = v33;
  sub_115F30();
  (*(v34 + 32))(v1 + v25, v26, v35);
  v28 = v36;
  v27 = v37;
  sub_BA3D4(v37, v36, type metadata accessor for BUIChartViewData);
  swift_beginAccess();
  sub_BA3D4(v28, v38, type metadata accessor for BUIChartViewData);
  sub_115F30();
  sub_BA43C(v28, type metadata accessor for BUIChartViewData);
  swift_endAccess();
  sub_BA43C(v27, type metadata accessor for BUIChartViewData);
  return v1;
}

uint64_t sub_AF95C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_115F70();

  return v1;
}

uint64_t sub_AF9D0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_AFA68(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_115F80();
  return (*(*v1 + 248))(0, 1);
}

uint64_t (*sub_AFB08(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_115F70();

  *(a1 + 8) = *(a1 + 9);
  return sub_AFB9C;
}

uint64_t sub_AFB9C(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  *(a1 + 9) = v3;

  sub_115F80();
  return (*(*v2 + 248))(0, 1);
}

uint64_t sub_AFC5C(uint64_t a1)
{
  v2 = sub_46F9C(&qword_1852D0, &qword_129F38);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_46F9C(&qword_1852C8, &unk_129EE0);
  sub_115F50();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_AFD94(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_46F9C(&qword_1852D0, &qword_129F38);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel__activeChart;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_46F9C(&qword_1852C8, &unk_129EE0);
  sub_115F40();
  swift_endAccess();
  return sub_BAB00;
}

uint64_t sub_AFF04()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_115F70();

  return v1;
}

uint64_t sub_AFF7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 240))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_B0024(uint64_t a1, char a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_115F80();
}

uint64_t (*sub_B00A8(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_115F60();
  return sub_BAB04;
}

uint64_t sub_B0168(uint64_t a1)
{
  v2 = sub_46F9C(&qword_1852D8, &qword_129F88);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_46F9C(&qword_1852C0, &qword_129ED8);
  sub_115F50();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_B02A0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_46F9C(&qword_1852D8, &qword_129F88);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel__selectedIndex;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_46F9C(&qword_1852C0, &qword_129ED8);
  sub_115F40();
  swift_endAccess();
  return sub_BAB00;
}

uint64_t (*sub_B04DC(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_115F60();
  return sub_BAB04;
}

uint64_t sub_B059C(uint64_t a1)
{
  v2 = sub_46F9C(&qword_1852E0, &qword_129FD8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_46F9C(&qword_1852B8, &qword_129ED0);
  sub_115F50();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_B06D4(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_46F9C(&qword_1852E0, &qword_129FD8);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel__topMargin;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_46F9C(&qword_1852B8, &qword_129ED0);
  sub_115F40();
  swift_endAccess();
  return sub_B0844;
}

double sub_B085C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_115F70();

  return v3;
}

uint64_t sub_B0980(uint64_t a1, uint64_t a2, double a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_115F80();
}

uint64_t (*sub_B09F0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_115F60();
  return sub_B0A94;
}

uint64_t sub_B0AB4(uint64_t a1)
{
  v2 = sub_46F9C(&qword_1852E0, &qword_129FD8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_46F9C(&qword_1852B8, &qword_129ED0);
  sub_115F50();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_B0BEC(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_46F9C(&qword_1852E0, &qword_129FD8);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel__bottomMargin;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_46F9C(&qword_1852B8, &qword_129ED0);
  sub_115F40();
  swift_endAccess();
  return sub_BAB00;
}

uint64_t sub_B0D5C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_115F70();

  return v1;
}

uint64_t sub_B0DD0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 384))();
  *a2 = result;
  return result;
}

uint64_t sub_B0E80(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_115F80();
}

uint64_t (*sub_B0EF0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_115F60();
  return sub_BAB04;
}

void sub_B0F94(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_B1018(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  sub_46F9C(a2, a3);
  sub_115F40();
  return swift_endAccess();
}

uint64_t sub_B1090(uint64_t a1)
{
  v2 = sub_46F9C(&qword_1852E8, &unk_12A070);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_46F9C(&qword_1852B0, &qword_129EC8);
  sub_115F50();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_B11C8(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_46F9C(&qword_1852E8, &unk_12A070);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel__containerBackgroundColor[0];
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_46F9C(&qword_1852B0, &qword_129EC8);
  sub_115F40();
  swift_endAccess();
  return sub_BAB00;
}

void sub_B1338(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_115F50();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_115F50();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

double sub_B14A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_46F9C(&qword_1831E0, &unk_1258C0);
  __chkstk_darwin(v4 - 8);
  v36 = &v32 - v5;
  v6 = sub_46F9C(&qword_1831E8, &qword_12A080);
  __chkstk_darwin(v6 - 8);
  v32 = &v32 - v7;
  v8 = sub_116850();
  v37 = *(v8 - 8);
  v38 = v8;
  __chkstk_darwin(v8);
  v33 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_116870();
  v34 = *(v10 - 8);
  v35 = v10;
  __chkstk_darwin(v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_116860();
  v39 = a1;
  v40 = a2;
  sub_4869C(v13, v14, v15);

  v16 = sub_116900();
  v18 = v17;
  v20 = v19;
  sub_5A754();
  swift_beginAccess();

  v21 = sub_1168C0();
  v23 = v22;
  v25 = v24;

  sub_48928(v16, v18, v20 & 1);

  v26 = sub_116820();
  (*(*(v26 - 8) + 56))(v32, 1, 1, v26);
  v27 = sub_1168D0();
  (*(*(v27 - 8) + 56))(v36, 1, 1, v27);
  v28 = v33;
  sub_116840();
  sub_116830();
  v30 = v29;
  sub_48928(v21, v23, v25 & 1);

  (*(v37 + 8))(v28, v38);
  (*(v34 + 8))(v12, v35);
  return v30;
}

void sub_B1850(double a1)
{
  v2 = v1;
  v4 = [objc_opt_self() mainScreen];
  [v4 scale];
  v6 = v5;

  v44 = a1;
  v45 = v6;
  sub_A77E8(sub_B1C0C, v43);
  v7 = *(v2 + OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel_cfg);
  v8 = (*(*v7 + 584))();
  v9 = (*(*v2 + 464))();
  v10 = *(v9 + 16);
  if (!v10)
  {

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(v9 + 32);
  v12 = v10 - 1;
  if (v12)
  {
    v13 = (v9 + 40);
    do
    {
      v14 = *v13++;
      v15 = v14;
      if (v11 < v14)
      {
        v11 = v15;
      }

      --v12;
    }

    while (v12);
  }

  v16 = [objc_allocWithZone(NSNumber) initWithDouble:v11];
  v17 = [v8 stringFromNumber:v16];

  if (!v17)
  {
    goto LABEL_19;
  }

  v18 = sub_1171B0();
  v20 = v19;

  v21 = *(*v2 + 472);
  v22 = *(v7 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_formatterForHourMinutes);
  v23 = v21();
  v24 = *(v23 + 16);
  if (!v24)
  {
LABEL_20:

    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

  v25 = *(v23 + 32);
  v26 = v24 - 1;
  if (v26)
  {
    v27 = (v23 + 40);
    do
    {
      v28 = *v27++;
      v29 = v28;
      if (v25 < v28)
      {
        v25 = v29;
      }

      --v26;
    }

    while (v26);
  }

  v30 = [objc_allocWithZone(NSNumber) initWithDouble:v25];
  v31 = [v22 stringFromNumber:v30];

  if (!v31)
  {
    goto LABEL_21;
  }

  v32 = sub_1171B0();
  v34 = v33;

  v35 = *(*v2 + 432);
  v36 = v35(v18, v20);

  v37 = v35(v32, v34);

  if (v36 <= v37)
  {
    v36 = v37;
  }

  v38 = sub_A79B4();
  v39 = a1 - *v38;
  v40 = sub_A79CC();
  v41 = floor((v39 - (v36 + *v40) + *v38 * -0.5) * 0.0625) * 16.0;
  __chkstk_darwin(v40);
  *&v42[2] = v41;
  sub_A77E8(sub_B1F58, v42);
}

uint64_t sub_B1C0C()
{
  sub_117710(53);
  v1._countAndFlagsBits = 0xD000000000000020;
  v1._object = 0x80000000001357A0;
  sub_117220(v1);
  v2._countAndFlagsBits = sub_117420();
  sub_117220(v2);

  v3._object = 0x80000000001357D0;
  v3._countAndFlagsBits = 0xD000000000000011;
  sub_117220(v3);
  v4._countAndFlagsBits = sub_117420();
  sub_117220(v4);

  return 0;
}

uint64_t sub_B1CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_115760();
  __chkstk_darwin(*(v4 - 8));
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v11 = &v23 - v9;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v8 + 16);
    v14 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v26 = v8;
    v24 = a2;
    v25 = v13;
    (v13)(&v23 - v9, v14, v4, v10);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v6, v14 + *(result + 72) * v19, v4);
        sub_ACADC();
        v21 = sub_117120();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v6, v4);
        }

        else
        {
          v22(v6, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v8 + 56);

    return v17(a2, 1, 1, v4, v10);
  }

  return result;
}

unint64_t sub_B1F58()
{
  sub_117710(31);

  v1._countAndFlagsBits = sub_117420();
  sub_117220(v1);

  return 0xD00000000000001DLL;
}

double sub_B1FE0(double a1)
{
  v1 = a1 <= 500.0;
  v2 = a1 / 96.0;
  if (v1)
  {
    v3 = v2 * 0.25;
  }

  else
  {
    v3 = v2 / 5.0;
  }

  return v3 * 3.0;
}

uint64_t sub_B2020(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t *, uint64_t), uint64_t a5)
{
  v110 = a2;
  v91 = a1;
  v89 = sub_1179C0();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v86 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = *(a4 - 1);
  __chkstk_darwin(v9);
  v84 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v85 = &v81 - v12;
  __chkstk_darwin(v13);
  v87 = &v81 - v14;
  __chkstk_darwin(v15);
  v111 = &v81 - v16;
  v90 = a5;
  v83 = *(a5 + 16);
  v109 = *(*(v83 + 24) + 8);
  v17 = a4;
  v112 = sub_117150();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v19 = sub_117620();
  __chkstk_darwin(v19 - 8);
  v21 = &v81 - v20;
  v22 = *(TupleTypeMetadata3 - 8);
  __chkstk_darwin(v23);
  v108 = &v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v107 = &v81 - v26;
  __chkstk_darwin(v27);
  v29 = &v81 - v28;
  v81 = v30;
  __chkstk_darwin(v31);
  v33 = &v81 - v32;
  v117 = a3;
  sub_1173A0();
  swift_getWitnessTable();
  sub_1170F0();
  v113 = v22;
  v34 = v21;
  v35 = v21;
  v36 = TupleTypeMetadata3;
  result = (*(v22 + 48))(v35, 1, TupleTypeMetadata3);
  if (result == 1)
  {
LABEL_16:
    __break(1u);
  }

  else
  {
    v92 = TupleTypeMetadata3;
    v38 = *(TupleTypeMetadata3 + 48);
    v39 = *(TupleTypeMetadata3 + 64);
    v40 = v95 + 4;
    v41 = v95[4];
    v41(v33, v34, v17);
    v94 = v38;
    v105 = v41;
    v106 = v40;
    v41(&v33[v38], &v34[v38], v17);
    v42 = v112;
    v82 = *(v112 - 8);
    v43 = *(v82 + 32);
    v93 = v39;
    v103 = v43;
    v104 = v82 + 32;
    v43(&v33[v39], &v34[v39], v112);
    v44 = v17;
    if (sub_117390())
    {
      v45 = 0;
      v116 = (v113 + 16);
      v101 = (v95 + 2);
      v99 = (v95 + 1);
      v100 = (v82 + 8);
      v97 = (v113 + 8);
      v98 = a3;
      v102 = v33;
      v96 = v29;
      do
      {
        v46 = sub_117360();
        sub_117330();
        if (v46)
        {
          v47 = *(v113 + 16);
          v47(v29, (a3 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v45), v36);
          v48 = v107;
          v49 = v45 + 1;
          if (__OFADD__(v45, 1))
          {
            goto LABEL_12;
          }
        }

        else
        {
          result = sub_117720();
          v48 = v107;
          if (v81 != 8)
          {
            __break(1u);
            goto LABEL_16;
          }

          v117 = result;
          v47 = *v116;
          (*v116)(v29, &v117, v36);
          swift_unknownObjectRelease();
          v49 = v45 + 1;
          if (__OFADD__(v45, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            v64 = v108;
            (*(v113 + 32))(v108, v48, v36);
            v65 = *(v36 + 48);
            v66 = *(v36 + 64);
            v67 = v95[5];
            v33 = v102;
            v67(v102, v64, v47);
            v67(&v33[v94], &v64[v65], v47);
            v44 = v47;
            (*(v82 + 40))(&v33[v93], &v64[v66], v112);
            break;
          }
        }

        v114 = v45;
        v115 = v49;
        v50 = *(v36 + 48);
        v51 = *(v36 + 64);
        v52 = v29;
        v53 = v29;
        v54 = v47;
        v55 = v105;
        v105(v48, v53, v44);
        v55(&v48[v50], &v52[v50], v44);
        v103(&v48[v51], &v52[v51], v42);
        v56 = v108;
        v54(v108, v48, v36);
        v57 = *(v36 + 48);
        v58 = &v56[*(v36 + 64)];
        v47 = v44;
        v59 = v111;
        (*v101)(v111, &v58[*(v42 + 36)], v47);
        (*v100)(v58, v42);
        v60 = sub_117130();
        v61 = *v99;
        v62 = v59;
        v44 = v47;
        (*v99)(v62, v47);
        v61(&v56[v57], v47);
        v61(v56, v47);
        if (v60)
        {
          goto LABEL_13;
        }

        (*v97)(v48, v36);
        a3 = v98;
        v63 = sub_117390();
        v45 = v114 + 1;
        v33 = v102;
        v42 = v112;
        v29 = v96;
      }

      while (v115 != v63);
    }

    v68 = v33;
    v69 = v84;
    sub_1170A0();
    v70 = v44;
    v71 = v88;
    v72 = v86;
    v73 = v89;
    (*(v88 + 104))(v86, enum case for FloatingPointRoundingRule.up(_:), v89);
    v74 = v85;
    sub_1170B0();
    (*(v71 + 8))(v72, v73);
    v75 = v95;
    v76 = v95[1];
    v76(v69, v70);
    v77 = v94;
    v78 = v87;
    sub_117450();
    v76(v74, v70);
    v79 = v111;
    sub_117A20();
    v76(v78, v70);
    v80 = sub_B29BC(v68, v79, v70, v90);
    v76(v79, v70);
    (v75[2])(v91, v68 + v77, v70);
    (*(v113 + 8))(v68, v36);
    return v80;
  }

  return result;
}

uint64_t sub_B29BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v14 = *(a3 - 8);
  __chkstk_darwin(v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v14 - v10;
  v15 = sub_117340();
  swift_getAssociatedConformanceWitness();
  sub_117A00();
  sub_1179D0();
  if (sub_117130())
  {
    v12 = *(v14 + 16);
    do
    {
      v12(v8, v11, a3);
      sub_1173A0();
      sub_117380();
      sub_117820();
    }

    while ((sub_117130() & 1) != 0);
  }

  (*(v14 + 8))(v11, a3);
  return v15;
}

uint64_t sub_B2C14()
{
  v1 = v0;
  v2 = type metadata accessor for BUIChartViewData.BatteryUsageElement(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BUIChartViewData.DataFor10Days(0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BUIChartViewData(0);
  v11 = v10 - 8;
  v12 = __chkstk_darwin(v10);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 136))(v12);
  sub_BA3D4(&v14[*(v11 + 28)], v9, type metadata accessor for BUIChartViewData.DataFor10Days);
  sub_BA43C(v14, type metadata accessor for BUIChartViewData);
  v15 = *&v9[*(v7 + 28)];

  sub_BA43C(v9, type metadata accessor for BUIChartViewData.DataFor10Days);
  v16 = *(v15 + 16);
  if (v16)
  {
    v37 = _swiftEmptyArrayStorage;
    sub_BA008(0, v16, 0);
    v17 = v37;
    v18 = v15 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v19 = *(v3 + 72);
    do
    {
      sub_BA3D4(v18, v5, type metadata accessor for BUIChartViewData.BatteryUsageElement);
      v20 = *&v5[*(v2 + 24)];
      sub_BA43C(v5, type metadata accessor for BUIChartViewData.BatteryUsageElement);
      v37 = v17;
      v22 = v17[2];
      v21 = v17[3];
      if (v22 >= v21 >> 1)
      {
        sub_BA008((v21 > 1), v22 + 1, 1);
        v17 = v37;
      }

      v17[2] = v22 + 1;
      v17[v22 + 4] = v20;
      v18 += v19;
      --v16;
    }

    while (v16);
  }

  else
  {

    v17 = _swiftEmptyArrayStorage;
  }

  v23 = v17[2];
  if (v23)
  {
    v24 = *(v17 + 4);
    v25 = v23 - 1;
    if (v25)
    {
      v26 = (v17 + 5);
      do
      {
        v27 = *v26++;
        v28 = v27;
        if (v24 < v27)
        {
          v24 = v28;
        }

        --v25;
      }

      while (v25);
    }
  }

  else
  {
    v24 = 100.0;
  }

  v36 = v24;
  sub_46F9C(&qword_1852F0, &qword_12A088);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_129DB0;
  *(v29 + 32) = xmmword_129DC0;
  *(v29 + 48) = vdupq_n_s64(0x4059000000000000uLL);
  *(v29 + 64) = xmmword_129DC0;
  *(v29 + 80) = vdupq_n_s64(0x4062C00000000000uLL);
  *(v29 + 96) = xmmword_129DD0;
  *(v29 + 112) = xmmword_129DE0;
  *(v29 + 128) = xmmword_129DF0;
  *(v29 + 144) = xmmword_129E00;
  *(v29 + 160) = xmmword_129E10;
  *(v29 + 176) = xmmword_129E20;
  v30 = *(*v1 + 456);
  v33 = sub_66C80(v29, v31, v32);
  v34 = v30(&v37, &v36, v29, &type metadata for Double, v33);

  return v34;
}

void *sub_B3014()
{
  v1 = type metadata accessor for BUIChartViewData.ScreenUsageElement(0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1 - 8);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BUIChartViewData.DataFor10Days(0);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BUIChartViewData(0);
  v10 = v9 - 8;
  v11 = __chkstk_darwin(v9);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 136))(v11);
  sub_BA3D4(&v13[*(v10 + 28)], v8, type metadata accessor for BUIChartViewData.DataFor10Days);
  sub_BA43C(v13, type metadata accessor for BUIChartViewData);
  v14 = *&v8[*(v6 + 32)];

  sub_BA43C(v8, type metadata accessor for BUIChartViewData.DataFor10Days);
  v15 = *(v14 + 16);
  if (v15)
  {
    v50 = _swiftEmptyArrayStorage;
    sub_BA008(0, v15, 0);
    v16 = v50;
    v17 = v14 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v18 = *(v2 + 72);
    do
    {
      sub_BA3D4(v17, v4, type metadata accessor for BUIChartViewData.ScreenUsageElement);
      v19 = sub_D2D88();
      sub_BA43C(v4, type metadata accessor for BUIChartViewData.ScreenUsageElement);
      v50 = v16;
      v21 = v16[2];
      v20 = v16[3];
      if (v21 >= v20 >> 1)
      {
        sub_BA008((v20 > 1), v21 + 1, 1);
        v16 = v50;
      }

      v16[2] = v21 + 1;
      *&v16[v21 + 4] = v19;
      v17 += v18;
      --v15;
    }

    while (v15);

    v22 = v16[2];
    if (v22)
    {
      goto LABEL_7;
    }

LABEL_14:

    v23 = *sub_A79F0();
    goto LABEL_15;
  }

  v16 = _swiftEmptyArrayStorage;
  v22 = _swiftEmptyArrayStorage[2];
  if (!v22)
  {
    goto LABEL_14;
  }

LABEL_7:
  v23 = *(v16 + 4);
  v24 = v22 - 1;
  if (v24)
  {
    v25 = 5;
    do
    {
      if (v23 < *&v16[v25])
      {
        v23 = *&v16[v25];
      }

      ++v25;
      --v24;
    }

    while (v24);
  }

LABEL_15:
  v26 = sub_A79F0();
  v49 = ceil(v23 / *v26);
  sub_46F9C(&qword_1852F0, &qword_12A088);
  v27 = swift_allocObject();
  __asm { FMOV            V1.2D, #1.0 }

  v27[1] = xmmword_129E30;
  v27[2] = _Q1;
  __asm { FMOV            V1.2D, #2.0 }

  v27[3] = xmmword_129E40;
  v27[4] = _Q1;
  __asm
  {
    FMOV            V0.2D, #6.0
    FMOV            V1.2D, #3.0
  }

  v27[5] = _Q0;
  v27[6] = _Q1;
  v27[7] = xmmword_129E50;
  v27[8] = _Q0;
  v27[9] = xmmword_129E60;
  v36 = *(*v0 + 456);
  v39 = sub_66C80(v27, v37, v38);
  v40 = v36(&v50, &v49, v27, &type metadata for Double, v39);

  v41 = *(v40 + 16);
  if (v41)
  {
    v50 = _swiftEmptyArrayStorage;
    sub_BA008(0, v41, 0);
    v42 = v50;
    v43 = v50[2];
    v44 = 32;
    do
    {
      v45 = *(v40 + v44);
      v46 = *v26;
      v50 = v42;
      v47 = v42[3];
      if (v43 >= v47 >> 1)
      {
        sub_BA008((v47 > 1), v43 + 1, 1);
        v42 = v50;
      }

      v42[2] = v43 + 1;
      *&v42[v43 + 4] = v45 * v46;
      v44 += 8;
      ++v43;
      --v41;
    }

    while (v41);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v42;
}

uint64_t sub_B3530(double a1)
{
  v2 = v1;
  v4 = sub_46F9C(&qword_1852F8, &qword_12A090);
  __chkstk_darwin(v4 - 8);
  v6 = &v48 - v5;
  v7 = sub_46F9C(&qword_1842B8, &qword_129030);
  __chkstk_darwin(v7 - 8);
  v9 = &v48 - v8;
  v72 = sub_115510();
  v10 = *(v72 - 8);
  __chkstk_darwin(v72);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1158D0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_46F9C(&qword_182EF0, &unk_124BB0);
  __chkstk_darwin(v17 - 8);
  v66 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v19);
  v22 = &v48 - v21;
  v23 = *(v1 + OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel_cfg);
  v24 = v14[2];
  v63 = v14 + 2;
  v64 = v23;
  v61 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_calendar;
  v62 = v24;
  (v24)(v16, v23 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_calendar, v13, v20);
  v59 = v14[7];
  v60 = v14 + 7;
  v59(v9, 1, 1, v13);
  v25 = sub_1158E0();
  v26 = *(v25 - 8);
  v57 = *(v26 + 56);
  v58 = v25;
  v56 = v26 + 56;
  v57(v6, 1, 1);
  v69 = v9;
  v71 = v6;
  sub_115500();
  sub_115880();
  v27 = *(v10 + 8);
  v68 = v12;
  v70 = v10 + 8;
  v55 = v27;
  v27(v12, v72);
  v28 = v14[1];
  v65 = v16;
  v29 = v13;
  v67 = v14 + 1;
  v54 = v28;
  v28(v16, v13);
  v30 = sub_115760();
  v31 = *(v30 - 8);
  v32 = *(v31 + 48);
  result = v32(v22, 1, v30);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v34 = *(*v1 + 520);
    v53 = *v1 + 520;
    v35 = v34(v22);
    v37 = v36;
    v52 = *(v31 + 8);
    v52(v22, v30);
    v38 = (*v2 + 480);
    v51 = *v38;
    LOBYTE(v35) = v51(v35, v37, a1);

    v39 = 1;
    if ((v35 & 1) == 0)
    {
      return v39 & 1;
    }

    v48 = v38;
    v49 = v34;
    v50 = v2;
    v40 = v65;
    v41 = v29;
    v62(v65, v64 + v61, v29);
    v59(v69, 1, 1, v29);
    (v57)(v71, 1, 1, v58);
    v42 = v68;
    sub_115500();
    v43 = v32;
    v44 = v66;
    sub_115880();
    v55(v42, v72);
    v54(v40, v41);
    result = v43(v44, 1, v30);
    if (result != 1)
    {
      v45 = v49(v44);
      v47 = v46;
      v52(v44, v30);
      LOBYTE(v45) = v51(v45, v47, a1);

      v39 = v45 ^ 1;
      return v39 & 1;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_B3C90(uint64_t a1)
{
  v2 = sub_1158B0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1158D0();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, *(v1 + OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel_cfg) + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_calendar, v6, v8);
  (*(v3 + 104))(v5, enum case for Calendar.Component.hour(_:), v2);
  v11 = sub_1158C0();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v10, v6);
  return v11 == 0;
}

BOOL sub_B3E68(uint64_t a1)
{
  v2 = v1;
  v15[1] = a1;
  v3 = sub_1158B0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1158D0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1158A0();
  v11 = sub_115840();
  v12 = *(v8 + 8);
  v12(v10, v7);
  (*(v8 + 16))(v10, *(v2 + OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel_cfg) + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_calendar, v7);
  (*(v4 + 104))(v6, enum case for Calendar.Component.weekday(_:), v3);
  v13 = sub_1158C0();
  (*(v4 + 8))(v6, v3);
  v12(v10, v7);
  return v13 == v11;
}

uint64_t sub_B4070()
{
  v32 = sub_115800();
  v1 = *(v32 - 8);
  __chkstk_darwin(v32);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_115820();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_46F9C(&qword_185300, &unk_12A098);
  __chkstk_darwin(v8 - 8);
  v10 = &v31 - v9;
  v11 = *(v0 + OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel_cfg);
  v12 = *(v11 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_formatterForHour);
  isa = sub_1156B0().super.isa;
  v14 = [v12 stringFromDate:isa];

  v15 = sub_1171B0();
  v17 = v16;

  (*(v5 + 16))(v7, v11 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_locale, v4);
  sub_115810();
  (*(v5 + 8))(v7, v4);
  sub_1157F0();
  (*(v1 + 8))(v3, v32);
  v18 = sub_1157C0();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v10, 1, v18) != 1)
  {
    v20 = sub_1157B0();
    v22 = v21;
    (*(v19 + 8))(v10, v18);
    if (v20 == 28261 && v22 == 0xE200000000000000)
    {
    }

    else
    {
      v26 = sub_1179E0();

      if ((v26 & 1) == 0)
      {
        return v15;
      }
    }

    v37 = v15;
    v38 = v17;
    v35 = 19777;
    v36 = 0xE200000000000000;
    v33 = 65;
    v34 = 0xE100000000000000;
    sub_4869C(v23, v24, v25);
    v27 = sub_117650();
    v29 = v28;

    v37 = v27;
    v38 = v29;
    v35 = 19792;
    v36 = 0xE200000000000000;
    v33 = 80;
    v34 = 0xE100000000000000;
    v15 = sub_117650();

    return v15;
  }

  sub_488C8(v10, &qword_185300, &unk_12A098);
  return v15;
}

uint64_t sub_B4498(uint64_t a1, uint64_t a2, int a3, double a4, uint64_t a5, int a6)
{
  v7 = v6;
  v47 = a3;
  v48 = a6;
  v46 = a2;
  v10 = sub_115760();
  v44 = *(v10 - 8);
  v45 = v10;
  __chkstk_darwin(v10);
  v43 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1158B0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1158D0();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v7 + OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel_cfg);
  (*(v17 + 16))(v20, v21 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_calendar, v16, v18);
  (*(v13 + 104))(v15, enum case for Calendar.Component.hour(_:), v12);
  v22 = sub_1158C0();
  (*(v13 + 8))(v15, v12);
  v23 = (*(v17 + 8))(v20, v16);
  if (v22 % 12 == 3)
  {
    if ((*(*v7 + 488))(v23, a4) & 1) == 0 || (v47)
    {
      goto LABEL_9;
    }

    v24 = 0;
    v26 = 0xE000000000000000;
  }

  else
  {
    if (v22 % 12)
    {
LABEL_9:
      v27 = *(v21 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_formatterForHourShort);
      isa = sub_1156B0().super.isa;
      v29 = [v27 stringFromDate:isa];

      v24 = sub_1171B0();
      v26 = v30;

      goto LABEL_10;
    }

    v24 = (*(*v7 + 520))(a1);
    v26 = v25;
    if (v46 == 7 && ((*(*v7 + 488))(a4) & 1) != 0)
    {

      goto LABEL_9;
    }
  }

LABEL_10:
  if (v48)
  {
    v31 = (*v7 + 504);
    v32 = *v31;
    if (((*v31)(a1) & 1) != 0 || (v47 & 1) != 0 && (sub_A79F0(), v39 = v43, sub_115740(), v40 = v32(v39), (*(v44 + 8))(v39, v45), (v40 & 1) == 0))
    {
      v33 = *(v21 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_formatterForDate);
      v34 = sub_1156B0().super.isa;
      v35 = [v33 stringFromDate:v34];

      v36 = sub_1171B0();
      v38 = v37;

      v49 = v24;
      v50 = v26;

      v51._countAndFlagsBits = 10;
      v51._object = 0xE100000000000000;
      sub_117220(v51);

      v52._countAndFlagsBits = v36;
      v52._object = v38;
      sub_117220(v52);

      return v49;
    }
  }

  return v24;
}

uint64_t sub_B49BC(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v5 = v4;
  v35 = a4;
  v36 = a3;
  v37 = a2;
  v7 = sub_115760();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = &v34 - v13;
  v15 = *(v8 + 16);
  v38 = v16;
  v15(&v34 - v13, a1, v12);
  v17 = *(v5 + OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel_cfg);
  v18 = *(v17 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_formatterForDay);
  isa = sub_1156B0().super.isa;
  v20 = [v18 stringFromDate:isa];

  v21 = sub_1171B0();
  v23 = v22;

  v24 = *(*v5 + 512);
  if (v24(v14))
  {
    v25 = v38;
    if (v37 == 9)
    {
      v26 = 0;
      v27 = 0xE000000000000000;
      goto LABEL_10;
    }

LABEL_7:
    v29 = *(v17 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_formatterForDate);
    v30 = sub_1156B0().super.isa;
    v31 = [v29 stringFromDate:v30];

    v26 = sub_1171B0();
    v27 = v32;

    goto LABEL_10;
  }

  if (v36)
  {
    sub_A79FC();
    sub_115740();
    v28 = v24(v10);
    v25 = v38;
    (*(v8 + 8))(v10, v38);
    v26 = 0;
    v27 = 0xE000000000000000;
    if ((v28 & 1) != 0 || v37 == 9)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if ((v35 & 1) == 0)
  {
    v25 = v38;
    goto LABEL_11;
  }

  v26 = 0;
  v27 = 0xE000000000000000;
  v25 = v38;
LABEL_10:
  v39 = v21;
  v40 = v23;

  v41._countAndFlagsBits = 10;
  v41._object = 0xE100000000000000;
  sub_117220(v41);

  v42._countAndFlagsBits = v26;
  v42._object = v27;
  sub_117220(v42);

  v21 = v39;
LABEL_11:
  (*(v8 + 8))(v14, v25);
  return v21;
}

void sub_B4CF0(double a1)
{
  v2 = sub_115760();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel_cfg);
  v7 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_axFormatterForHour;
  v8 = *(v6 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_axFormatterForHour);
  isa = sub_1156B0().super.isa;
  v10 = [v8 stringFromDate:isa];

  v11 = sub_1171B0();
  v13 = v12;

  v14 = *(v6 + v7);
  sub_115740();
  v15 = sub_1156B0().super.isa;
  (*(v3 + 8))(v5, v2);
  v16 = [v14 stringFromDate:v15];

  v17 = sub_1171B0();
  v19 = v18;

  v20 = sub_117170();
  v21 = BatteryUILocalization(v20);

  if (v21)
  {
    sub_1171B0();

    sub_46F9C(&qword_182EF8, &unk_125990);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1248A0;
    *(v22 + 56) = &type metadata for String;
    v25 = sub_53EE8(v22, v23, v24);
    *(v22 + 32) = v11;
    *(v22 + 40) = v13;
    *(v22 + 96) = &type metadata for String;
    *(v22 + 104) = v25;
    *(v22 + 64) = v25;
    *(v22 + 72) = v17;
    *(v22 + 80) = v19;
    sub_1171C0();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_B4F68()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel_cfg) + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_axFormatterForDate);
  isa = sub_1156B0().super.isa;
  v3 = [v1 stringFromDate:isa];

  v4 = sub_1171B0();
  return v4;
}

void sub_B5004(uint64_t a1)
{
  v3 = sub_46F9C(&qword_185308, &qword_12A0A8);
  __chkstk_darwin(v3 - 8);
  v5 = v24 - v4;
  v6 = type metadata accessor for BUIChartViewData.BatteryLevelsElement(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_479B4(a1, v5, &qword_185308, &qword_12A0A8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_488C8(v5, &qword_185308, &qword_12A0A8);
    v10 = sub_117170();
    v11 = BatteryUILocalization(v10);

    if (v11)
    {
      sub_1171B0();

      return;
    }

    goto LABEL_13;
  }

  sub_BA4F0(v5, v9, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
  v12 = *(*(v1 + OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel_cfg) + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_axFormatterForHour);
  isa = sub_1156B0().super.isa;
  v14 = [v12 stringFromDate:isa];

  v15 = sub_1171B0();
  v17 = v16;

  v26 = v15;
  v27 = v17;
  v18 = sub_117170();
  v19 = BatteryUILocalization(v18);

  if (!v19)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v20 = sub_1171B0();
  v22 = v21;

  v25._countAndFlagsBits = 8236;
  v25._object = 0xE200000000000000;
  v28._countAndFlagsBits = v20;
  v28._object = v22;
  sub_117220(v28);

  sub_117220(v25);

  v25._countAndFlagsBits = 8250;
  v25._object = 0xE200000000000000;
  v23 = *&v9[*(v6 + 24)];
  if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v23 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v24[1] = v23;
  v29._countAndFlagsBits = sub_1179B0();
  sub_117220(v29);

  v30._countAndFlagsBits = 37;
  v30._object = 0xE100000000000000;
  sub_117220(v30);
  sub_117220(v25);

  sub_BA43C(v9, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
}

void sub_B53B4(uint64_t a1)
{
  v193 = type metadata accessor for BUIChartViewData.ChargingIntervalElement(0);
  v194 = *(v193 - 8);
  __chkstk_darwin(v193);
  v3 = v189 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v189 - v5;
  v199 = type metadata accessor for BUIChartViewData.DataFor24Hrs(0);
  __chkstk_darwin(v199);
  v198 = v189 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BUIChartViewData(0);
  __chkstk_darwin(v8 - 8);
  v197 = v189 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = type metadata accessor for BUIChartViewData.BatteryLevelsElement(0);
  v10 = *(v212 - 1);
  __chkstk_darwin(v212);
  v205 = v189 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v207 = v189 - v13;
  __chkstk_darwin(v14);
  v211 = v189 - v15;
  v16 = sub_46F9C(&qword_182EF0, &unk_124BB0);
  __chkstk_darwin(v16 - 8);
  v196 = v189 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v209 = v189 - v19;
  v20 = sub_115760();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v192 = v189 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v206 = v189 - v24;
  __chkstk_darwin(v25);
  v27 = v189 - v26;
  __chkstk_darwin(v28);
  v30 = v189 - v29;
  v31 = *(a1 + 16);
  v32 = _swiftEmptyArrayStorage;
  v210 = v21;
  v204 = v189 - v29;
  v200 = v10;
  v195 = a1;
  v191 = v3;
  v201 = v31;
  v203 = v6;
  if (v31)
  {
    v214 = _swiftEmptyArrayStorage;
    sub_A0984(0, v31, 0);
    v32 = v214;
    v33 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v34 = *(v10 + 72);
    v35 = (v21 + 32);
    do
    {
      v36 = v211;
      sub_BA3D4(v33, v211, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
      v37 = *v35;
      (*v35)(v27, v36 + v212[5], v20);
      v214 = v32;
      v39 = v32[2];
      v38 = v32[3];
      if (v39 >= v38 >> 1)
      {
        sub_A0984((v38 > 1), v39 + 1, 1);
        v32 = v214;
      }

      v32[2] = v39 + 1;
      v21 = v210;
      v37(v32 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v210 + 72) * v39, v27, v20);
      v33 += v34;
      --v31;
    }

    while (v31);
    v6 = v203;
    v30 = v204;
  }

  v40 = v209;
  sub_B68CC(v32, v209);

  v42 = v21 + 48;
  v41 = *(v21 + 48);
  v43 = v41(v40, 1, v20);
  v44 = v206;
  if (v43 == 1)
  {
    v45 = v40;
LABEL_17:
    sub_488C8(v45, &qword_182EF0, &unk_124BB0);
    v55 = sub_117170();
    v56 = BatteryUILocalization(v55);

    if (v56)
    {
      sub_1171B0();

      return;
    }

    __break(1u);
    goto LABEL_112;
  }

  v190 = v41;
  v208 = *(v21 + 32);
  v208(v30, v40, v20);
  v46 = _swiftEmptyArrayStorage;
  v209 = v20;
  v47 = v201;
  if (v201)
  {
    v189[1] = v42;
    v214 = _swiftEmptyArrayStorage;
    sub_A0984(0, v201, 0);
    v46 = v214;
    v48 = v195 + ((*(v200 + 80) + 32) & ~*(v200 + 80));
    v49 = *(v200 + 72);
    v50 = v47;
    v51 = v192;
    do
    {
      v52 = v211;
      sub_BA3D4(v48, v211, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
      sub_A79E4();
      sub_115740();
      sub_BA43C(v52, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
      v214 = v46;
      v54 = v46[2];
      v53 = v46[3];
      if (v54 >= v53 >> 1)
      {
        sub_A0984((v53 > 1), v54 + 1, 1);
        v46 = v214;
      }

      v46[2] = v54 + 1;
      v20 = v209;
      v208(v46 + ((*(v210 + 80) + 32) & ~*(v210 + 80)) + *(v210 + 72) * v54, v51, v209);
      v48 += v49;
      --v50;
    }

    while (v50);
    v6 = v203;
    v30 = v204;
    v44 = v206;
  }

  v45 = v196;
  sub_B1CD8(v46, v196);

  if (v190(v45, 1, v20) == 1)
  {
    (*(v210 + 8))(v30, v20);
    goto LABEL_17;
  }

  v57 = v6;
  v58 = (v208)(v44, v45, v20);
  v59 = *(*v202 + 136);
  v60 = *v202 + 136;
  v61 = v197;
  v59(v58);
  v62 = v198;
  sub_BA3D4(v61, v198, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  sub_BA43C(v61, type metadata accessor for BUIChartViewData);
  v63 = *(v62 + *(v199 + 24));

  sub_BA43C(v62, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  v64 = *(v63 + 2);
  if (v64)
  {
    v196 = v60;
    v208 = v59;
    v65 = (*(v194 + 80) + 32) & ~*(v194 + 80);
    v192 = v63;
    v66 = &v63[v65];
    v67 = *(v194 + 72);
    v68 = 0.0;
    do
    {
      sub_BA3D4(v66, v57, type metadata accessor for BUIChartViewData.ChargingIntervalElement);
      sub_115710();
      v70 = v69;
      sub_115710();
      v72 = v71;
      sub_BA43C(v57, type metadata accessor for BUIChartViewData.ChargingIntervalElement);
      sub_115710();
      if (v70 <= v73)
      {
        v70 = v73;
      }

      sub_115710();
      if (v74 < v70)
      {
        v70 = v74;
      }

      sub_115710();
      if (v72 <= v75)
      {
        v72 = v75;
      }

      sub_115710();
      if (v76 >= v72)
      {
        v76 = v72;
      }

      v68 = v68 + v76 - v70;
      v66 += v67;
      --v64;
    }

    while (v64);

    v59 = v208;
  }

  else
  {

    v68 = 0.0;
  }

  v78 = v197;
  v59(v77);
  v79 = v198;
  sub_BA3D4(v78, v198, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  sub_BA43C(v78, type metadata accessor for BUIChartViewData);
  v80 = *(v79 + *(v199 + 28));

  sub_BA43C(v79, type metadata accessor for BUIChartViewData.DataFor24Hrs);
  v81 = *(v80 + 16);
  if (v81)
  {
    v82 = v80 + ((*(v194 + 80) + 32) & ~*(v194 + 80));
    v83 = *(v194 + 72);
    v84 = 0.0;
    v85 = v191;
    do
    {
      sub_BA3D4(v82, v85, type metadata accessor for BUIChartViewData.ChargingIntervalElement);
      sub_115710();
      v87 = v86;
      sub_115710();
      v89 = v88;
      sub_BA43C(v85, type metadata accessor for BUIChartViewData.ChargingIntervalElement);
      sub_115710();
      if (v87 <= v90)
      {
        v87 = v90;
      }

      sub_115710();
      if (v91 < v87)
      {
        v87 = v91;
      }

      sub_115710();
      if (v89 <= v92)
      {
        v89 = v92;
      }

      sub_115710();
      if (v93 >= v89)
      {
        v93 = v89;
      }

      v84 = v84 + v93 - v87;
      v82 += v83;
      --v81;
    }

    while (v81);

    v47 = v201;
  }

  else
  {

    v84 = 0.0;
  }

  v94 = v205;
  v95 = v207;
  if (v47)
  {
    v96 = (*(v200 + 80) + 32) & ~*(v200 + 80);
    v97 = v195 + v96;
    v98 = *(v200 + 72);
    v99 = _swiftEmptyArrayStorage;
    do
    {
      sub_BA3D4(v97, v95, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
      if (*(v95 + v212[8]) == 1)
      {
        sub_BA4F0(v95, v94, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v214 = v99;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_BA028(0, v99[2] + 1, 1);
          v94 = v205;
          v99 = v214;
        }

        v102 = v99[2];
        v101 = v99[3];
        if (v102 >= v101 >> 1)
        {
          sub_BA028((v101 > 1), v102 + 1, 1);
          v94 = v205;
          v99 = v214;
        }

        v99[2] = v102 + 1;
        sub_BA4F0(v94, v99 + v96 + v102 * v98, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
        v95 = v207;
      }

      else
      {
        sub_BA43C(v95, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
      }

      v97 += v98;
      --v47;
    }

    while (v47);
  }

  else
  {
    v99 = _swiftEmptyArrayStorage;
  }

  v103 = v99[2];
  if (v103)
  {
    v104 = v30;
    v214 = _swiftEmptyArrayStorage;
    sub_BA008(0, v103, 0);
    v105 = v214;
    v106 = v99 + ((*(v200 + 80) + 32) & ~*(v200 + 80));
    v107 = *(v200 + 72);
    do
    {
      v108 = v211;
      sub_BA3D4(v106, v211, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
      v109 = *(v108 + v212[6]);
      sub_BA43C(v108, type metadata accessor for BUIChartViewData.BatteryLevelsElement);
      v214 = v105;
      v111 = v105[2];
      v110 = v105[3];
      if (v111 >= v110 >> 1)
      {
        sub_BA008((v110 > 1), v111 + 1, 1);
        v105 = v214;
      }

      v105[2] = v111 + 1;
      v105[v111 + 4] = v109;
      v106 += v107;
      --v103;
    }

    while (v103);

    v30 = v104;
  }

  else
  {

    v105 = _swiftEmptyArrayStorage;
  }

  v113 = v105[2];
  v114 = v209;
  v115 = v206;
  if (!v113)
  {
    v119 = sub_117170();
    v120 = BatteryUILocalization(v119);

    if (v120)
    {

      sub_1171B0();

      v121 = *(v210 + 8);
      v121(v115, v114);
      v121(v30, v114);
      return;
    }

    goto LABEL_113;
  }

  v116 = *(v105 + 4);
  v117 = v113 - 1;
  if (v117)
  {
    v122 = (v105 + 5);
    v123 = v117;
    v118 = *(v105 + 4);
    do
    {
      v124 = *v122++;
      v125 = v124;
      if (v124 < v118)
      {
        v118 = v125;
      }

      --v123;
    }

    while (v123);
    v126 = (v105 + 5);
    do
    {
      v127 = *v126++;
      v128 = v127;
      if (v116 < v127)
      {
        v116 = v128;
      }

      --v117;
    }

    while (v117);
  }

  else
  {
    v118 = *(v105 + 4);
  }

  v129 = *(**(v202 + OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel_cfg) + 584);
  v212 = *(v202 + OBJC_IVAR____TtC14BatteryUsageUI17BUIChartViewModel_cfg);
  v130 = (v129)(v112);
  v131 = [objc_allocWithZone(NSNumber) initWithDouble:v118];
  v132 = [v130 stringFromNumber:v131];

  if (v132)
  {
    v133 = sub_1171B0();
    v135 = v134;
  }

  else
  {
    v133 = 0;
    v135 = 0xE000000000000000;
  }

  v136 = v129();
  v137 = [objc_allocWithZone(NSNumber) initWithDouble:v116];
  v138 = [v136 stringFromNumber:v137];

  if (v138)
  {
    v139 = sub_1171B0();
    v141 = v140;
  }

  else
  {
    v139 = 0;
    v141 = 0xE000000000000000;
  }

  v142 = v204;
  if (v133 == v139 && v135 == v141 || (sub_1179E0() & 1) != 0)
  {
    v143 = sub_117170();
    v144 = BatteryUILocalization(v143);

    if (!v144)
    {
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
      goto LABEL_114;
    }

    sub_1171B0();

    sub_46F9C(&qword_182EF8, &unk_125990);
    v145 = swift_allocObject();
    *(v145 + 16) = xmmword_124890;
    *(v145 + 56) = &type metadata for String;
    *(v145 + 64) = sub_53EE8(v145, v146, v147);
    *(v145 + 32) = v133;
    *(v145 + 40) = v135;

    v148 = sub_1171C0();
    v150 = v149;
LABEL_89:

    v214 = v148;
    v215 = v150;
    v158 = v209;
    if (v68 <= 0.0)
    {
      goto LABEL_98;
    }

    if (v68 < *sub_A79D8())
    {
      v159 = sub_117170();
      v160 = BatteryUILocalization(v159);

      if (v160)
      {
        goto LABEL_95;
      }

      __break(1u);
    }

    v161 = [*(v212 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_axFormatterForChargingInterval) stringFromTimeInterval:v68];
    if (!v161)
    {
      v162 = 0;
      v164 = 0xE000000000000000;
      goto LABEL_96;
    }

    v160 = v161;
LABEL_95:
    v162 = sub_1171B0();
    v164 = v163;

LABEL_96:
    v165 = sub_117170();
    v166 = BatteryUILocalization(v165);

    if (!v166)
    {
LABEL_114:
      __break(1u);
      goto LABEL_115;
    }

    sub_1171B0();

    sub_46F9C(&qword_182EF8, &unk_125990);
    v167 = swift_allocObject();
    *(v167 + 16) = xmmword_124890;
    *(v167 + 56) = &type metadata for String;
    *(v167 + 64) = sub_53EE8(v167, v168, v169);
    *(v167 + 32) = v162;
    *(v167 + 40) = v164;
    v170 = sub_1171C0();
    v172 = v171;

    v213._countAndFlagsBits = 8236;
    v213._object = 0xE200000000000000;
    v216._countAndFlagsBits = v170;
    v216._object = v172;
    sub_117220(v216);

    sub_117220(v213);

    v158 = v209;
LABEL_98:
    if (v84 <= 0.0)
    {
LABEL_102:

      goto LABEL_108;
    }

    if (v84 >= *sub_A79D8())
    {
      v175 = [*(v212 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_axFormatterForChargingInterval) stringFromTimeInterval:v84];
      if (!v175)
      {
        v176 = 0;
        v178 = 0xE000000000000000;
        goto LABEL_106;
      }

      v174 = v175;
    }

    else
    {
      v173 = sub_117170();
      v174 = BatteryUILocalization(v173);

      if (!v174)
      {
        __break(1u);
        goto LABEL_102;
      }
    }

    v176 = sub_1171B0();
    v178 = v177;

LABEL_106:
    v179 = sub_117170();
    v180 = BatteryUILocalization(v179);

    if (!v180)
    {
LABEL_115:
      __break(1u);
      goto LABEL_116;
    }

    sub_1171B0();

    sub_46F9C(&qword_182EF8, &unk_125990);
    v181 = swift_allocObject();
    *(v181 + 16) = xmmword_124890;
    *(v181 + 56) = &type metadata for String;
    *(v181 + 64) = sub_53EE8(v181, v182, v183);
    *(v181 + 32) = v176;
    *(v181 + 40) = v178;
    v184 = sub_1171C0();
    v186 = v185;

    v213._countAndFlagsBits = 8236;
    v213._object = 0xE200000000000000;
    v217._countAndFlagsBits = v184;
    v217._object = v186;
    sub_117220(v217);

    sub_117220(v213);

    v158 = v209;
LABEL_108:
    v187 = sub_A79F0();
    v218._countAndFlagsBits = (*(*v202 + 544))(v142, *v187);
    v213._countAndFlagsBits = 8236;
    v213._object = 0xE200000000000000;
    sub_117220(v218);

    sub_117220(v213);

    v188 = *(v210 + 8);
    v188(v206, v158);
    v188(v142, v158);
    return;
  }

  v151 = sub_117170();
  v152 = BatteryUILocalization(v151);

  if (v152)
  {
    sub_1171B0();

    sub_46F9C(&qword_182EF8, &unk_125990);
    v153 = swift_allocObject();
    *(v153 + 16) = xmmword_1248A0;
    *(v153 + 56) = &type metadata for String;
    v156 = sub_53EE8(v153, v154, v155);
    *(v153 + 32) = v133;
    *(v153 + 40) = v135;
    *(v153 + 96) = &type metadata for String;
    *(v153 + 104) = v156;
    *(v153 + 64) = v156;
    *(v153 + 72) = v139;
    *(v153 + 80) = v141;

    v148 = sub_1171C0();
    v150 = v157;
    goto LABEL_89;
  }

LABEL_116:
  __break(1u);
}