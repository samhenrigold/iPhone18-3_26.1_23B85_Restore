uint64_t sub_100399EA8(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for Participant();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_10026D814(&qword_1006A7C68, &unk_100583510);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_10000EFA8(&unk_1006A4860);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

void sub_10039A1C0()
{
  sub_100005EF4();
  sub_10000FE58(v6, v7, v8);
  sub_10001140C();
  v10 = v9;
  static _SetStorage.resize(original:capacity:move:)();
  sub_10000670C();
  if (v11)
  {
    sub_10000FAC4();
    v12 = v10 + 56;
    if (v4)
    {
      while (1)
      {
        sub_100035B9C();
LABEL_9:
        v17 = *(*(v1 + 48) + 8 * (v13 | (v3 << 6)));
        static Hasher._hash(seed:_:)();
        sub_100006BFC();
        if (v18)
        {
          break;
        }

        sub_10000FE84();
LABEL_19:
        sub_100007DC0();
        *(v12 + v22) |= v23;
        *(*(v10 + 48) + 8 * v24) = v17;
        ++*(v10 + 16);
        if (!v4)
        {
          goto LABEL_4;
        }
      }

      sub_10000E7C0();
      while (1)
      {
        sub_100007A0C();
        if (v18)
        {
          if (v20)
          {
            break;
          }
        }

        if (v19 == v21)
        {
          v19 = 0;
        }

        if (*(v12 + 8 * v19) != -1)
        {
          sub_10000A950();
          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_4:
      v14 = v3;
      while (1)
      {
        v3 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v3 >= v5)
        {
          goto LABEL_21;
        }

        ++v14;
        if (*(v2 + 8 * v3))
        {
          sub_100007C8C();
          v4 = v16 & v15;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_21:

    *v0 = v10;
    sub_100005EDC();
  }
}

char *sub_10039A300(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10039A5EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10039A320(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10039A700(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10039A340(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10039A80C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10039A360(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10039A9D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10039A440(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10039AD58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10039A4A0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10039AF8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10039A4C0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10039B08C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_10039A4E0(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    sub_10000A27C();
    if (v7 != v8)
    {
      sub_10000E7FC();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_10000862C();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    sub_10026D814(&qword_1006A4760, &unk_10057EA60);
    v11 = swift_allocObject();
    j__malloc_size(v11);
    sub_1000103FC();
    *(v11 + 2) = v9;
    *(v11 + 3) = v12;
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[16 * v9] <= v13)
    {
      memmove(v13, v14, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_10039A5EC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10026D814(&qword_1006A7C48, &qword_1005834F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    if (v10 != a4 || &v13[48 * v8] <= v12)
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

char *sub_10039A700(char *result, int64_t a2, char a3, char *a4)
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
    sub_10026D814(&qword_1006ACA20, &qword_100583388);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10039A80C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  sub_10026D814(&qword_1006A7C38, &qword_1005834E0);
  v10 = *(type metadata accessor for Caption() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for Caption() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_100395E38(a4 + v16, v8, v13 + v16, &type metadata accessor for Caption);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_10039A9D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10026D814(&qword_1006A7C10, &qword_1005834C0);
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
    if (v10 != a4 || &v13[24 * v8] <= v12)
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

void sub_10039AAE8(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    sub_10000A27C();
    if (v7 != v8)
    {
      sub_10000E7FC();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_10000862C();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    sub_10026D814(&unk_1006ACA30, &qword_100583468);
    v11 = swift_allocObject();
    j__malloc_size(v11);
    sub_1000103FC();
    *(v11 + 2) = v9;
    *(v11 + 3) = v12;
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  v15 = 16 * v9;
  if (a1)
  {
    if (v11 != a4 || &v14[v15] <= v13)
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }
}

void sub_10039ABC4()
{
  sub_100005EF4();
  sub_10000F3AC();
  if (v7)
  {
    sub_10000A27C();
    if (v9 != v10)
    {
      sub_10000E7FC();
      if (v9)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_10000862C();
    }
  }

  else
  {
    v8 = v4;
  }

  v11 = *(v0 + 16);
  if (v8 <= v11)
  {
    v12 = *(v0 + 16);
  }

  else
  {
    v12 = v8;
  }

  if (!v12)
  {
    v18 = _swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  sub_10026D814(v5, v6);
  v13 = sub_100008B14();
  v15 = *(sub_10026D814(v13, v14) - 8);
  v16 = *(v15 + 72);
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v18 = swift_allocObject();
  v19 = j__malloc_size(v18);
  if (!v16)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v19 - v17 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_23;
  }

  v18[2] = v11;
  v18[3] = 2 * ((v19 - v17) / v16);
LABEL_18:
  v21 = sub_100008B14();
  v23 = *(sub_10026D814(v21, v22) - 8);
  if (v3)
  {
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    sub_100395F24(v0 + v24, v11, v18 + v24, v2, v1);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  sub_100005EDC();
}

void *sub_10039AD58(void *result, int64_t a2, char a3, void *a4)
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
    sub_10026D814(&qword_1006AB190, &unk_100583400);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10026D814(&unk_1006A7AD0, &unk_100587100);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_10039AE88()
{
  sub_10003D4BC();
  sub_10000F3AC();
  if (v5)
  {
    sub_10000A27C();
    if (v7 != v8)
    {
      sub_10000E7FC();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_10000862C();
    }
  }

  else
  {
    v6 = v2;
  }

  v9 = v0[2];
  if (v6 <= v9)
  {
    v10 = v0[2];
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    sub_10026D814(v3, v4);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 40);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  if (v1)
  {
    if (v11 != v0 || &v0[5 * v9 + 4] <= v11 + 4)
    {
      v14 = sub_1000060A8();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    v17 = sub_100008B14();
    sub_10026D814(v17, v18);
    sub_1000060A8();
    swift_arrayInitWithCopy();
  }

  sub_100035CE8();
}

char *sub_10039AF8C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10026D814(&qword_1006A7AB8, &unk_1005833F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

void *sub_10039B08C(void *result, int64_t a2, char a3, void *a4)
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
    sub_10026D814(&unk_1006A7A80, &unk_1005833C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10026D814(&qword_1006ABFF0, &qword_100588080);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_10039B204(unint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = a1;
  if (sub_10000B6D0(a1))
  {
    sub_10026D814(a2, a3);
    v6 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v6 = &_swiftEmptySetSingleton;
  }

  v29 = sub_10000B6D0(v5);
  if (v29)
  {
    v7 = 0;
    v8 = v6 + 7;
    v27 = v5;
    v28 = v5 & 0xC000000000000001;
    v26 = v5 + 32;
    while (1)
    {
      sub_100024D54(v7, v28 == 0, v5);
      v9 = v28 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v26 + 8 * v7);
      v10 = v9;
      v11 = __OFADD__(v7++, 1);
      if (v11)
      {
        break;
      }

      NSObject._rawHashValue(seed:)(v6[5]);
      sub_1000052DC();
      v14 = ~v13;
      while (1)
      {
        v15 = v12 & v14;
        v16 = (v12 & v14) >> 6;
        v17 = v8[v16];
        v18 = 1 << (v12 & v14);
        if ((v18 & v17) == 0)
        {
          break;
        }

        sub_10001AC50();
        sub_100006AF0(v19, v20, v21);
        v22 = *(v6[6] + 8 * v15);
        v23 = static NSObject.== infix(_:_:)();

        if (v23)
        {

          goto LABEL_17;
        }

        v12 = v15 + 1;
      }

      v8[v16] = v18 | v17;
      *(v6[6] + 8 * v15) = v10;
      v24 = v6[2];
      v11 = __OFADD__(v24, 1);
      v25 = v24 + 1;
      if (v11)
      {
        goto LABEL_20;
      }

      v6[2] = v25;
LABEL_17:
      v5 = v27;
      if (v7 == v29)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

void sub_10039B400()
{
  sub_10000B8E8();
  v4 = v3;
  if (*(v3 + 16) && (sub_10026D814(&qword_1006A7B20, &unk_100583420), sub_100007694(), v5 = static _SetStorage.allocate(capacity:)(), (v6 = *(v4 + 16)) != 0))
  {
    sub_10000C5A4();
    while (v0 < *(v4 + 16))
    {
      v7 = *(v2 + 8 * v0++);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v7);
      Hasher._finalize()();
      while (1)
      {
        sub_10000C154();
        if (v12)
        {
          break;
        }

        if (*(*(v5 + 48) + 8 * v8) == v7)
        {
          goto LABEL_11;
        }
      }

      *(v1 + 8 * v9) = v11 | v10;
      *(*(v5 + 48) + 8 * v8) = v7;
      v13 = *(v5 + 16);
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_14;
      }

      *(v5 + 16) = v15;
LABEL_11:
      if (v0 == v6)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_12:

    sub_1000089B0();
  }
}

void sub_10039B534()
{
  sub_10000B8E8();
  v1 = v0;
  if (*(v0 + 16) && (sub_10026D814(&unk_1006A7A40, &unk_100583390), sub_100007694(), v2 = static _SetStorage.allocate(capacity:)(), v3 = v2, (v4 = *(v1 + 16)) != 0))
  {
    v5 = 0;
    v6 = v2 + 56;
    while (v5 < *(v1 + 16))
    {
      v7 = (v1 + 32 + 16 * v5);
      v9 = *v7;
      v8 = v7[1];
      ++v5;
      Hasher.init(_seed:)();

      sub_100005364();
      String.hash(into:)();
      Hasher._finalize()();
      sub_1000052DC();
      v12 = ~v11;
      while (1)
      {
        v13 = v10 & v12;
        v14 = (v10 & v12) >> 6;
        v15 = *(v6 + 8 * v14);
        v16 = 1 << (v10 & v12);
        if ((v16 & v15) == 0)
        {
          break;
        }

        v17 = (*(v3 + 48) + 16 * v13);
        v18 = *v17 == v9 && v17[1] == v8;
        if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          goto LABEL_16;
        }

        v10 = v13 + 1;
      }

      *(v6 + 8 * v14) = v16 | v15;
      v19 = (*(v3 + 48) + 16 * v13);
      *v19 = v9;
      v19[1] = v8;
      v20 = *(v3 + 16);
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_19;
      }

      *(v3 + 16) = v22;
LABEL_16:
      if (v5 == v4)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_17:

    sub_1000089B0();
  }
}

void sub_10039B6A0()
{
  sub_10000B8E8();
  v4 = v3;
  if (*(v3 + 16) && (sub_10026D814(&qword_1006A7C40, &qword_1005834E8), sub_100007694(), v5 = static _SetStorage.allocate(capacity:)(), (v6 = *(v4 + 16)) != 0))
  {
    sub_10000C5A4();
    while (v0 < *(v4 + 16))
    {
      v7 = *(v2 + 4 * v0++);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v7);
      Hasher._finalize()();
      while (1)
      {
        sub_10000C154();
        if (v12)
        {
          break;
        }

        if (*(*(v5 + 48) + 4 * v8) == v7)
        {
          goto LABEL_11;
        }
      }

      *(v1 + 8 * v9) = v11 | v10;
      *(*(v5 + 48) + 4 * v8) = v7;
      v13 = *(v5 + 16);
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_14;
      }

      *(v5 + 16) = v15;
LABEL_11:
      if (v0 == v6)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_12:

    sub_1000089B0();
  }
}

void *sub_10039B864(_BYTE *a1)
{
  v2 = a1;
  v3 = a1[32];
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = sub_1003849A4(v8, v4, v2);

      return v2;
    }
  }

  __chkstk_darwin(a1);
  v5 = &v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_100396044(0, v4, v5);
  sub_1003848B8(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

void *sub_10039B9C8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_10039BA98(v9, a2, a3, a4, a5, sub_1003EB64C);
    v11 = v10;

    return v11;
  }

  return result;
}

void sub_10039BA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v25 = 0;
  v7 = 0;
  v8 = a3 + 56;
  sub_100007990();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  while (v11)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_9:
    v28 = *(*(a3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = v28;
    v19 = a4(&v28);

    if (v6)
    {
      return;
    }

    if (v19)
    {
      sub_100006F34();
      sub_10003EB98(v20);
      if (__OFADD__(v25++, 1))
      {
        __break(1u);
LABEL_14:

        a6(a1, a2, v25, a3);
        return;
      }
    }
  }

  v15 = v7;
  while (1)
  {
    v7 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v7 >= v13)
    {
      goto LABEL_14;
    }

    ++v15;
    if (*(v8 + 8 * v7))
    {
      sub_100007C8C();
      v11 = v17 & v16;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_10039BBE4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_10000A90C(a1, a2, a3);
  if (v4)
  {
    v5 = sub_1000076E4();
  }

  else
  {
    sub_100008B14();
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  *v3 = v5;
  return sub_100018FB8();
}

uint64_t sub_10039BC3C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_10000A90C(a1, a2, a3);
  if (v4)
  {
  }

  else
  {
    sub_100008B14();
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  *v3 = v5;
  return sub_100018FB8();
}

uint64_t sub_10039BCA0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_10000A90C(a1, a2, a3);
  if (v4)
  {
  }

  else
  {
    sub_100008B14();
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  *v3 = v5;
  return sub_100018FB8();
}

uint64_t sub_10039BD00(void *a1)
{
  v1 = [a1 remoteParticipantHandles];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_10000528C();
  sub_100006AF0(v3, v4, v5);
  sub_10000528C();
  sub_10039C15C(v6);
  v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  return v7;
}

uint64_t sub_10039BD94(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return sub_100006B30();
}

void sub_10039BDF0(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = String._bridgeToObjectiveC()();

  [a4 setBlockIncomingCommunication:a1 & 1 forEmailAddress:v6];
}

uint64_t sub_10039BE6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v11 = a4;
  v12 = a5;
  sub_1002A1D5C(&v10);
  sub_10001AC50();
  v7();
  v8 = *a3;
  *(v8 + 16) = a1 + 1;
  return sub_10002F0C8(&v10, v8 + 40 * a1 + 32);
}

uint64_t sub_10039BF00(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v20[3] = sub_100006AF0(0, &unk_1006AB6A0, CNFavorites_ptr);
  v20[4] = &off_10062CD70;
  v20[0] = a2;
  v8 = *(a4 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_callHistoryDataSource + 24);
  v9 = *(a4 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_callHistoryDataSource + 32);
  sub_100009B14((a4 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_callHistoryDataSource), v8);
  v10 = a2;
  v11 = sub_100391B64();
  v12 = (*(v9 + 16))(v11, v8, v9);

  v19[2] = a3;
  v19[3] = a4;
  v19[4] = a1;
  v19[5] = v20;
  v13 = *(sub_100388EDC(sub_10039C0D0, v19, v12) + 2);

  if (qword_1006A0B48 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000AF9C(v14, qword_1006BA658);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v15, v16, "Calculating current badge value for Clarity Board %ld", v17, 0xCu);
  }

  sub_100395FFC(v20);
  return v13;
}

unint64_t sub_10039C0F4(uint64_t a1)
{
  result = sub_10004448C(a1);
  if (!result)
  {
    sub_10026DCB4(v3, v4);
    sub_100007694();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_10039C15C(uint64_t a1)
{
  result = sub_10004448C(a1);
  if (!result)
  {
    sub_100006AF0(255, v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_10039C1A8()
{
  sub_100007710();
  sub_10039C498(v1, v2, v3, v4);
  sub_100008070();
  v5 = sub_100006B30();
  v6(v5);
  return v0;
}

uint64_t sub_10039C200()
{
  sub_100007710();
  sub_10039C498(v1, v2, v3, v4);
  sub_100008070();
  v5 = sub_100006B30();
  v6(v5);
  return v0;
}

void sub_10039C270()
{
  v1 = *(type metadata accessor for Notification() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_100394874(v2, v3);
}

unint64_t sub_10039C2D4(uint64_t a1)
{
  result = sub_10004448C(a1);
  if (!result)
  {
    type metadata accessor for CommunicationTrustScoreOptions();
    sub_100007694();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_10039C310()
{
  sub_100007710();
  sub_10039C498(v1, v2, v3, v4);
  sub_100008070();
  v5 = sub_100006B30();
  v6(v5);
  return v0;
}

uint64_t sub_10039C394()
{

  return static _SetStorage.copy(original:)();
}

uint64_t sub_10039C3B0(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t sub_10039C460()
{

  return Hasher.init(_seed:)();
}

void sub_10039C480(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_10039C498(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_10026D814(a3, a4);
}

uint64_t sub_10039C4B0()
{
}

uint64_t type metadata accessor for ConversationLinkKeyAgreement(uint64_t a1)
{
  result = qword_1006A7D28;
  if (!qword_1006A7D28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10039C53C(uint64_t a1)
{
  result = type metadata accessor for P256.KeyAgreement.PrivateKey();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10039C5A8(uint64_t result, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v2) = HIDWORD(result) - result;
      if (!__OFSUB__(HIDWORD(result), result))
      {
        v2 = v2;
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_10;
    case 2uLL:
      v4 = *(result + 16);
      v3 = *(result + 24);
      v5 = __OFSUB__(v3, v4);
      v2 = v3 - v4;
      if (!v5)
      {
        goto LABEL_6;
      }

LABEL_10:
      __break(1u);
      break;
    case 3uLL:
      goto LABEL_7;
    default:
      v2 = BYTE6(a2);
LABEL_6:
      if (v2 > 27)
      {
        sub_1003B4C8C(result, a2);
        result = AES.GCM.SealedBox.init(combined:)();
      }

      else
      {
LABEL_7:
        sub_100049B14(result, a2);
        v6 = type metadata accessor for CryptoKitError();
        sub_10039D288(&qword_1006A7D60, &type metadata accessor for CryptoKitError, &protocol conformance descriptor for CryptoKitError);
        swift_allocError();
        (*(*(v6 - 8) + 104))(v7, enum case for CryptoKitError.incorrectParameterSize(_:), v6);
        result = swift_willThrow();
      }

      break;
  }

  return result;
}

NSObject *sub_10039C6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10026D814(&qword_1006A3858, &qword_10057E7A8);
  __chkstk_darwin(v6 - 8);
  v8 = v26 - v7;
  v9 = type metadata accessor for AES.GCM.SealedBox();
  sub_100007FEC();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_100007FDC();
  v15 = v14 - v13;
  v26[0] = a1;
  v26[1] = a2;
  v16 = type metadata accessor for AES.GCM.Nonce();
  sub_10000AF74(v8, 1, 1, v16);
  sub_1002BCBD4();
  static AES.GCM.seal<A>(_:using:nonce:)();
  sub_1000099A4(v8, &qword_1006A3858, &qword_10057E7A8);
  if (!v3)
  {
    v17 = v9;
    AES.GCM.SealedBox.combined.getter();
    sub_10000F730();
    if (!v20 & v19)
    {
      if (qword_1006A0B20 != -1)
      {
        sub_100008228(&qword_1006A0B20);
      }

      v21 = type metadata accessor for Logger();
      sub_10000AF9C(v21, qword_1006BA5E0);
      v9 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v9, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v9, v22, "Failed to retrieve combined data from encrypted LMI response", v23, 2u);
      }

      sub_1002BCB28();
      swift_allocError();
      *v24 = 3;
      swift_willThrow();
      (*(v11 + 8))(v15, v17);
    }

    else
    {
      v9 = v18;
      (*(v11 + 8))(v15, v17);
    }
  }

  return v9;
}

void sub_10039C97C(uint64_t a1, void *a2)
{
  v60 = a1;
  type metadata accessor for AES.GCM.SealedBox();
  sub_100007FEC();
  v48 = v5;
  v49 = v4;
  __chkstk_darwin(v4);
  sub_100007FDC();
  v54 = v7 - v6;
  type metadata accessor for SharedSecret();
  sub_100007FEC();
  v50 = v9;
  v51 = v8;
  __chkstk_darwin(v8);
  sub_100007FDC();
  v12 = v11 - v10;
  v53 = type metadata accessor for SymmetricKey();
  sub_100007FEC();
  v56 = v13;
  v15 = __chkstk_darwin(v14);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v55 = &v46 - v18;
  v19 = sub_10026D814(&qword_1006A3838, &qword_10057E7A0);
  __chkstk_darwin(v19 - 8);
  v21 = &v46 - v20;
  v22 = type metadata accessor for P256.KeyAgreement.PublicKey();
  sub_100007FEC();
  v24 = v23;
  __chkstk_darwin(v25);
  sub_100007FDC();
  v28 = v27 - v26;
  v52 = a2;
  sub_10039D224(a2);
  sub_10000F730();
  if (!v32 & v31)
  {
    __break(1u);
    goto LABEL_16;
  }

  *&v59 = v29;
  *(&v59 + 1) = v30;
  P256.KeyAgreement.PublicKey.init<A>(compactRepresentation:)();
  if (!v2)
  {
    sub_10000AF74(v21, 0, 1, v22);
    (*(v24 + 32))(v28, v21, v22);
    P256.KeyAgreement.PrivateKey.sharedSecretFromKeyAgreement(with:)();
    type metadata accessor for SHA256();
    v46 = xmmword_10057E760;
    v59 = xmmword_10057E760;
    if (qword_1006A0B98 != -1)
    {
      swift_once();
    }

    v57 = qword_1006A8A00;
    v58 = *algn_1006A8A08;
    sub_100290AC4(qword_1006A8A00, *algn_1006A8A08);
    v38 = sub_10039D288(&qword_1006A3848, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
    sub_1002BCBD4();
    sub_100010410();
    v47 = v38;
    SharedSecret.hkdfDerivedSymmetricKey<A, B, C>(using:salt:sharedInfo:outputByteCount:)();
    sub_100049B14(v57, v58);
    sub_100049B14(v59, *(&v59 + 1));
    v59 = v46;
    if (qword_1006A0BA0 != -1)
    {
      swift_once();
    }

    v57 = qword_1006A8A10;
    v58 = *algn_1006A8A18;
    sub_100290AC4(qword_1006A8A10, *algn_1006A8A18);
    sub_100010410();
    SharedSecret.hkdfDerivedSymmetricKey<A, B, C>(using:salt:sharedInfo:outputByteCount:)();
    sub_100049B14(v57, v58);
    sub_100049B14(v59, *(&v59 + 1));
    (*(v50 + 8))(v12, v51);
    v39 = v53;
    (*(v56 + 32))(v55, v17, v53);
    sub_1003699E8(v52);
    sub_10000F730();
    if (!(!v32 & v31))
    {
      sub_10039C5A8(v40, v41);
      v42 = static AES.GCM.open(_:using:)();
      v44 = v43;
      v45 = objc_allocWithZone(CSDMessagingConversationMessage);
      sub_100290AC4(v42, v44);
      if (sub_10039D1B4())
      {
        sub_100049B14(v42, v44);
        (*(v48 + 8))(v54, v49);
        (*(v56 + 8))(v55, v39);
        (*(v24 + 8))(v28, v22);
        return;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  sub_10000AF74(v21, 1, 1, v22);
  sub_1000099A4(v21, &qword_1006A3838, &qword_10057E7A0);
  if (qword_1006A0B20 != -1)
  {
    sub_100008228(&qword_1006A0B20);
  }

  v33 = type metadata accessor for Logger();
  sub_10000AF9C(v33, qword_1006BA5E0);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "Failed to derive public key from public key data, ignoring let me in", v36, 2u);
  }

  sub_1002BCB28();
  swift_allocError();
  *v37 = 0;
  swift_willThrow();
}

uint64_t sub_10039D050@<X0>(uint64_t a3@<X8>)
{
  v4 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  sub_100007FEC();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100007FDC();
  v10 = v9 - v8;
  v11 = type metadata accessor for ConversationLinkKeyAgreement(0);
  __chkstk_darwin(v11);
  sub_100007FDC();
  v14 = v13 - v12;
  P256.KeyAgreement.PrivateKey.init<A>(rawRepresentation:)();
  (*(v6 + 32))(v14, v10, v4);
  sub_10036A424(v14, a3);
  return sub_10000AF74(a3, 0, 1, v11);
}

id sub_10039D1B4()
{
  sub_10000F730();
  if (!v4 & v3)
  {
    v7.super.isa = 0;
  }

  else
  {
    v5 = v2;
    v6 = v1;
    v7.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100290B6C(v6, v5);
  }

  v8 = [v0 initWithData:v7.super.isa];

  return v8;
}

uint64_t sub_10039D224(void *a1)
{
  v1 = [a1 publicKey];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10039D288(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10039D2D0(uint64_t result, int a2, int a3)
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

uint64_t sub_10039D320(char a1)
{
  if (a1)
  {
    return 0x656E6E6F63736944;
  }

  else
  {
    return 0x657463656E6E6F43;
  }
}

uint64_t sub_10039D36C(char a1, void *a2)
{
  type metadata accessor for AVAudioSessionProvider();
  swift_initStackObject();
  if (sub_10003B7A8(a2))
  {
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRelease();
    }
  }

  [a2 provider];

  return a1 & 1;
}

BOOL sub_10039D420(unsigned __int8 a1, uint64_t a2, unint64_t a3, unsigned __int8 a4, uint64_t a5, unint64_t a6)
{
  v8 = a1;
  if (a1 == 2)
  {
    if (a4 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (a4 == 2 || ((a4 ^ v8) & 1) != 0)
    {
      return result;
    }
  }

  sub_100006AF0(0, &unk_1006A39B0, NSObject_ptr);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  result = (a3 | a6) == 0;
  if (a3)
  {
    if (a6)
    {
      sub_100006AF0(0, &qword_1006A2B48, AVAudioSession_ptr);
      v10 = a6;
      v11 = a3;
      v12 = static NSObject.== infix(_:_:)();

      return v12 & 1;
    }
  }

  return result;
}

uint64_t sub_10039D52C(unsigned __int8 a1, void *a2, uint64_t a3)
{
  v6 = a1;
  _StringGuts.grow(_:)(16);

  strcpy(&v18, "hapticPattern=");
  HIBYTE(v18._object) = -18;
  if (v6 == 2)
  {
    v7 = 0xE300000000000000;
    v8 = 7104878;
  }

  else
  {
    LOBYTE(v17._countAndFlagsBits) = a1 & 1;
    v8 = String.init<A>(reflecting:)();
    v7 = v9;
  }

  v10 = v7;
  String.append(_:)(*&v8);

  String.append(_:)(v18);

  strcpy(&v18, "provider=");
  WORD1(v18._object) = 0;
  HIDWORD(v18._object) = -385875968;
  sub_100006AF0(0, &unk_1006A7B10, TUCallProvider_ptr);
  v11 = a2;
  v12._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v12);

  String.append(_:)(v18);

  _StringGuts.grow(_:)(17);

  strcpy(&v17, " audioSession=");
  HIBYTE(v17._object) = -18;
  v13._countAndFlagsBits = sub_100291570(a3);
  String.append(_:)(v13);

  v14._countAndFlagsBits = 32;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  String.append(_:)(v17);

  v15._countAndFlagsBits = 41;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  return 0xD000000000000011;
}

id sub_10039D770@<X0>(unsigned __int8 a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1;
  v7 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v55 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v55 - v15;
  __chkstk_darwin(v14);
  v18 = &v55 - v17;
  if (v6 != 2)
  {
    v21 = [a2 isFaceTimeProvider];
    if (a1)
    {
      if (!v21)
      {
        if (![a2 isTelephonyProvider])
        {
          goto LABEL_2;
        }

        result = TUBundle();
        if (result)
        {
          v38 = result;
          sub_10000863C();
          v43 = sub_1003A14F4(v39, v40, v41, v42, v38);

          if (v43)
          {
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            type metadata accessor for URL();
            sub_10000A964();
          }

          else
          {
            type metadata accessor for URL();
            sub_10000A28C();
          }

          sub_10000AF74(v16, v44, 1, v45);
          v54 = v16;
          return sub_1002A01B0(v54, a3);
        }

        goto LABEL_33;
      }

      result = TUBundle();
      if (result)
      {
        v22 = result;
        sub_10000863C();
        v27 = sub_1003A14F4(v23, v24, v25, v26, v22);

        if (v27)
        {
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          type metadata accessor for URL();
          sub_10000A964();
        }

        else
        {
          type metadata accessor for URL();
          sub_10000A28C();
        }

        sub_10000AF74(v18, v28, 1, v29);
        v54 = v18;
        return sub_1002A01B0(v54, a3);
      }

      __break(1u);
    }

    else
    {
      if (!v21)
      {
        if (![a2 isTelephonyProvider])
        {
          goto LABEL_2;
        }

        result = TUBundle();
        if (result)
        {
          v46 = result;
          sub_10000863C();
          v51 = sub_1003A14F4(v47, v48, v49, v50, v46);

          if (v51)
          {
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            type metadata accessor for URL();
            sub_10000A964();
          }

          else
          {
            type metadata accessor for URL();
            sub_10000A28C();
          }

          sub_10000AF74(v10, v52, 1, v53);
          v54 = v10;
          return sub_1002A01B0(v54, a3);
        }

LABEL_34:
        __break(1u);
        return result;
      }

      result = TUBundle();
      if (result)
      {
        v30 = result;
        sub_10000863C();
        v35 = sub_1003A14F4(v31, v32, v33, v34, v30);

        if (v35)
        {
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          type metadata accessor for URL();
          sub_10000A964();
        }

        else
        {
          type metadata accessor for URL();
          sub_10000A28C();
        }

        sub_10000AF74(v13, v36, 1, v37);
        v54 = v13;
        return sub_1002A01B0(v54, a3);
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_2:
  v19 = type metadata accessor for URL();

  return sub_10000AF74(a3, 1, 1, v19);
}

_BYTE *storeEnumTagSinglePayload for HapticPattern(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10039DBF8()
{
  result = qword_1006A7D68;
  if (!qword_1006A7D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A7D68);
  }

  return result;
}

id sub_10039DC4C(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = [objc_allocWithZone(TUFeatureFlags) init];
  *&v3[OBJC_IVAR___CSDCallRecordingControllerFacade_featureFlags] = v7;
  *&v3[OBJC_IVAR___CSDCallRecordingControllerFacade_queue] = a1;
  v8 = type metadata accessor for AudioCallRecordingController();
  v9 = a1;
  v10 = a2;
  v11 = sub_1003E3A1C(v9, v10);
  v12 = &v3[OBJC_IVAR___CSDCallRecordingControllerFacade_audioCallRecordingController];
  v12[3] = v8;
  v12[4] = &off_10062E150;
  *v12 = v11;
  v15.receiver = v3;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, "init");

  return v13;
}

void sub_10039DD80(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(a3 + OBJC_IVAR___CSDCallRecordingControllerFacade_queue);
  *v11 = v12;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  _Block_copy(a4);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    v14 = sub_100009B14((a3 + OBJC_IVAR___CSDCallRecordingControllerFacade_audioCallRecordingController), *(a3 + OBJC_IVAR___CSDCallRecordingControllerFacade_audioCallRecordingController + 24));
    sub_1003E8B00(a1, a2, *v14, a4);
    _Block_release(a4);
  }

  else
  {
    __break(1u);
  }
}

void CallRecordingControllerFacade.perform(_:_:_:)(void *a1, void *a2, void (*a3)(id, uint64_t), void (*a4)(void))
{
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v4 + OBJC_IVAR___CSDCallRecordingControllerFacade_queue);
  *v12 = v13;
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v12, v9);
  if (v13)
  {
    sub_100009B14((v4 + OBJC_IVAR___CSDCallRecordingControllerFacade_audioCallRecordingController), *(v4 + OBJC_IVAR___CSDCallRecordingControllerFacade_audioCallRecordingController + 24));
    sub_1003E8F60(a1, a2, a3, a4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10039E194()
{
  sub_10004D4B4(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return v0;
}

uint64_t sub_10039E1C0()
{
  sub_10039E194();

  return _swift_deallocClassInstance(v0, 48, 7);
}

double sub_10039E218()
{
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  return result;
}

void sub_10039E228(unsigned __int8 a1, uint64_t a2, unint64_t a3)
{
  v7 = [objc_msgSend(objc_opt_self() "capabilitiesForHardware")];
  swift_unknownObjectRelease();
  if (!v7)
  {
    if (qword_1006A0B38 != -1)
    {
      sub_10000864C(&qword_1006A0B38);
    }

    v17 = type metadata accessor for Logger();
    sub_10000AF9C(v17, qword_1006BA628);
    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(oslog, v14))
    {
      goto LABEL_13;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "Haptics are not supported on this device";
    goto LABEL_12;
  }

  v8 = *(v3 + 24);
  if (v8)
  {
    v9 = *(v3 + 32);
    v10 = *(v3 + 16);
    v11 = v9;
    v12 = v8;
    LOBYTE(v9) = sub_10039D420(a1, a2, a3, v10, v12, v9);

    if (v9)
    {
      if (qword_1006A0B38 != -1)
      {
        sub_10000864C(&qword_1006A0B38);
      }

      v13 = type metadata accessor for Logger();
      sub_10000AF9C(v13, qword_1006BA628);
      oslog = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(oslog, v14))
      {
        goto LABEL_13;
      }

      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = "Asked to begin or update playback of Haptic but new descriptor is equal to activeDescriptor so doing nothing";
LABEL_12:
      _os_log_impl(&_mh_execute_header, oslog, v14, v16, v15, 2u);

LABEL_13:
      sub_100006048();

      return;
    }
  }

  sub_10004D0B4();
  sub_100006048();

  sub_10039E470(v20, v21, v22, v23, v24);
}

void sub_10039E470(uint64_t a1, void *a2, void *a3, void (*a4)(void), uint64_t a5)
{
  v99 = a5;
  v103 = a4;
  v104 = a1;
  v7 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  __chkstk_darwin(v7 - 8);
  v9 = &v91 - v8;
  v105 = type metadata accessor for URL();
  v10 = *(v105 - 8);
  v11 = __chkstk_darwin(v105);
  v96 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v100 = &v91 - v14;
  __chkstk_darwin(v13);
  v102 = &v91 - v15;
  if (qword_1006A0B38 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = sub_10000AF9C(v16, qword_1006BA628);
  v18 = a3;
  v19 = a2;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  v97 = v18;

  v22 = os_log_type_enabled(v20, v21);
  v101 = v10;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    aBlock[0] = v24;
    *v23 = 136315138;
    v25 = sub_10039D52C(v104, v19, a3);
    v27 = v19;
    v28 = sub_10002741C(v25, v26, aBlock);

    *(v23 + 4) = v28;
    v19 = v27;
    _os_log_impl(&_mh_execute_header, v20, v21, "Attempting to play Haptic descriptor %s", v23, 0xCu);
    sub_100009B7C(v24);
    v10 = v101;
  }

  sub_10039D770(v104, v19, v9);
  v29 = sub_100015468(v9, 1, v105);
  v30 = v100;
  if (v29 != 1)
  {
    v94 = v19;
    v95 = a3;
    v34 = v102;
    v35 = v105;
    (*(v10 + 32))(v102, v9, v105);
    v36 = *(v10 + 16);
    v36(v30, v34, v35);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    v39 = os_log_type_enabled(v37, v38);
    v93 = v17;
    if (v39)
    {
      v40 = v30;
      v41 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      aBlock[0] = v92;
      *v41 = 136315138;
      sub_10039FAF0();
      v42 = v105;
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      v45 = v44;
      v100 = *(v10 + 8);
      (v100)(v40, v42);
      v46 = sub_10002741C(v43, v45, aBlock);

      *(v41 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v37, v38, "Fetched URL for Haptic ahap file: %s", v41, 0xCu);
      sub_100009B7C(v92);
    }

    else
    {

      v100 = *(v10 + 8);
      (v100)(v30, v105);
    }

    v48 = v94;
    v47 = v95;
    v49 = v98;
    v50 = sub_10039EE44(v104);
    if (!v50)
    {
      v60 = v48;
      v61 = v97;
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        aBlock[0] = v65;
        *v64 = 136315138;
        v66 = sub_10039D52C(v104, v60, v95);
        v68 = sub_10002741C(v66, v67, aBlock);

        *(v64 + 4) = v68;
        _os_log_impl(&_mh_execute_header, v62, v63, "No Haptic engine could be found for descriptor %s", v64, 0xCu);
        sub_100009B7C(v65);
      }

      if (v103)
      {
        v103();
      }

      goto LABEL_30;
    }

    v51 = v49[5];
    v49[5] = v50;
    v52 = v50;

    v53 = v49[2];
    v54 = v49[3];
    v55 = v49[4];
    v49[2] = v104;
    v49[3] = v48;
    v49[4] = v47;
    sub_10004D4B4(v53, v54, v55);
    v56 = v96;
    v36(v96, v102, v105);
    v57 = objc_allocWithZone(CHHapticPattern);
    v58 = v48;
    v59 = v97;
    v69 = sub_10039F99C(v56);
    aBlock[0] = 0;
    v70 = [v52 createPlayerWithPattern:v69 error:aBlock];
    v71 = aBlock[0];
    if (v70)
    {
      v72 = v70;
      aBlock[0] = 0;
      v73 = v71;
      v74 = [v52 startAndReturnError:aBlock];
      v75 = aBlock[0];
      if (v74)
      {
        aBlock[0] = 0;
        v76 = v75;
        v77 = [v72 startAtTime:aBlock error:0.0];
        v75 = aBlock[0];
        if (v77)
        {
          v78 = swift_allocObject();
          v79 = v103;
          v80 = v99;
          v78[2] = v103;
          v78[3] = v80;
          aBlock[4] = sub_10039FAE8;
          aBlock[5] = v78;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_10039F7C8;
          aBlock[3] = &unk_10062B470;
          v81 = _Block_copy(aBlock);
          v82 = v75;
          sub_1000115CC(v79, v80);

          [v52 notifyWhenPlayersFinished:v81];
          _Block_release(v81);

          swift_unknownObjectRelease();
          goto LABEL_30;
        }
      }

      v83 = v75;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_unknownObjectRelease();
    }

    else
    {
      v84 = aBlock[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    swift_errorRetain();
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      *v87 = 138412290;
      swift_errorRetain();
      v89 = _swift_stdlib_bridgeErrorToNSError();
      *(v87 + 4) = v89;
      *v88 = v89;
      _os_log_impl(&_mh_execute_header, v85, v86, "Attempt to play call Haptic pattern returned error %@", v87, 0xCu);
      sub_1000099A4(v88, &unk_1006A2630, &qword_10057CB40);
    }

    v90 = [v52 stopWithCompletionHandler:0];
    if (!v103)
    {
      (v100)(v102, v105);

      return;
    }

    (v103)(v90);

LABEL_30:
    (v100)(v102, v105);
    return;
  }

  sub_1000099A4(v9, &unk_1006A52C0, &unk_10057D930);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "No URL could be determined", v33, 2u);
  }

  if (v103)
  {
    v103();
  }
}

id sub_10039EE44(char a1)
{
  if (a1)
  {
    v1 = [objc_opt_self() sharedInstance];
    if (qword_1006A0B38 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000AF9C(v2, qword_1006BA628);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Trying to create Haptic Engine using shared audio Session for telephony call disconnect", v5, 2u);
    }

    v6 = objc_allocWithZone(CHHapticEngine);
    v7 = sub_10039F824(v1);
  }

  else
  {
    if (qword_1006A0B38 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000AF9C(v8, qword_1006BA628);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Trying to create Haptic Engine ", v11, 2u);
    }

    v12 = objc_allocWithZone(CHHapticEngine);
    v7 = sub_10039F8EC();
    [v7 setPlaysHapticsOnly:1];
  }

  if (qword_1006A0B38 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000AF9C(v13, qword_1006BA628);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Succesfully created Haptic Engine", v16, 2u);
  }

  v24 = sub_10039F34C;
  v25 = 0;
  aBlock = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_10039F44C;
  v23 = &unk_10062B498;
  v17 = _Block_copy(&aBlock);
  [v7 setStoppedHandler:v17];
  _Block_release(v17);
  v24 = sub_10039F4A0;
  v25 = 0;
  aBlock = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_100004CEC;
  v23 = &unk_10062B4C0;
  v18 = _Block_copy(&aBlock);
  [v7 setResetHandler:v18];
  _Block_release(v18);

  return v7;
}

void sub_10039F34C(uint64_t a1)
{
  if (qword_1006A0B38 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000AF9C(v2, qword_1006BA628);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = a1;
    _os_log_impl(&_mh_execute_header, oslog, v3, "The Haptic engine stopped because %ld", v4, 0xCu);
  }
}

uint64_t sub_10039F44C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_10039F4A0()
{
  if (qword_1006A0B38 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000AF9C(v0, qword_1006BA628);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "The Haptic engine reset --> NOT doing anything", v2, 2u);
  }
}

uint64_t sub_10039F588(uint64_t a1, void (*a2)(void))
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1006A0B38 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000AF9C(v3, qword_1006BA628);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      swift_errorRetain();
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v8;
      *v7 = v8;
      _os_log_impl(&_mh_execute_header, v4, v5, "Player finished error: %@", v6, 0xCu);
      sub_1000099A4(v7, &unk_1006A2630, &qword_10057CB40);
    }

    else
    {
    }
  }

  if (qword_1006A0B38 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000AF9C(v9, qword_1006BA628);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Players finished. Stopping haptic engine", v12, 2u);
  }

  if (a2)
  {
    a2();
  }

  return 1;
}

uint64_t sub_10039F7C8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3(a2);

  return v5;
}

id sub_10039F824(void *a1)
{
  v2 = v1;
  v8 = 0;
  v4 = [v2 initWithAudioSession:a1 error:&v8];
  if (v4)
  {
    v5 = v8;
  }

  else
  {
    v6 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v4;
}

id sub_10039F8EC()
{
  v5 = 0;
  v1 = [v0 initAndReturnError:&v5];
  if (v1)
  {
    v2 = v5;
  }

  else
  {
    v3 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

id sub_10039F99C(uint64_t a1)
{
  v2 = v1;
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v5 = v4;
  v14 = 0;
  v6 = [v2 initWithContentsOfURL:v4 error:&v14];

  v7 = v14;
  if (v6)
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

unint64_t sub_10039FAF0()
{
  result = qword_1006A3BD0;
  if (!qword_1006A3BD0)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A3BD0);
  }

  return result;
}

id *sub_10039FB58()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_10039FB90()
{
  sub_10039FB58();

  return _swift_deallocClassInstance(v0, 48, 7);
}

unint64_t sub_10039FBE8()
{
  result = qword_1006A3DE0;
  if (!qword_1006A3DE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006A3DE0);
  }

  return result;
}

void sub_10039FC2C(uint64_t a1)
{
  type metadata accessor for TUCallSoundPlayerSoundType(319);
  if (v1 <= 0x3F)
  {
    sub_100006AF0(319, &unk_1006A7B10, TUCallProvider_ptr);
    if (v2 <= 0x3F)
    {
      type metadata accessor for TUCallSoundRegion(319);
      if (v3 <= 0x3F)
      {
        sub_100296D6C(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10039FCF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_10026D814(&unk_1006A2A30, &unk_10057D150);
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  if (*a1 != *a2)
  {
    goto LABEL_14;
  }

  sub_100006AF0(0, &unk_1006A39B0, NSObject_ptr);
  if ((static NSObject.== infix(_:_:)() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
  {
    goto LABEL_14;
  }

  v22 = type metadata accessor for SoundDescriptor(0);
  v14 = *(v22 + 32);
  v15 = *(v11 + 48);
  sub_1002A5F90(a1 + v14, v13);
  sub_1002A5F90(a2 + v14, &v13[v15]);
  sub_10000A970(v13);
  if (v16)
  {
    sub_10000A970(&v13[v15]);
    if (v16)
    {
      sub_1000099A4(v13, &unk_1006A3DD0, &unk_10057C9D0);
LABEL_17:
      v17 = *(a1 + *(v22 + 36)) ^ *(a2 + *(v22 + 36)) ^ 1;
      return v17 & 1;
    }

    goto LABEL_13;
  }

  sub_1002A5F90(v13, v10);
  sub_10000A970(&v13[v15]);
  if (v16)
  {
    (*(v5 + 8))(v10, v4);
LABEL_13:
    sub_1000099A4(v13, &unk_1006A2A30, &unk_10057D150);
    goto LABEL_14;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  sub_1003A0348();
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  v20 = *(v5 + 8);
  v20(v7, v4);
  v20(v10, v4);
  sub_1000099A4(v13, &unk_1006A3DD0, &unk_10057C9D0);
  if (v19)
  {
    goto LABEL_17;
  }

LABEL_14:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1003A0010()
{
  v1 = v0;
  v45 = *v0;
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  sub_100008384();
  v3._countAndFlagsBits = 0x707954646E756F73;
  v3._object = 0xEA00000000003D65;
  String.append(_:)(v3);

  v4 = [*(v0 + 8) description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10000866C(v5, v6, v7, v8, v9, v10, v11, v12, v42, v45, 112);

  sub_100008384();

  sub_10000866C(v13, v14, v15, v16, v17, v18, v19, v20, v43, v46, 16);

  if (*(v1 + 16))
  {
    v21 = 1702195828;
  }

  else
  {
    v21 = 0x65736C6166;
  }

  if (*(v1 + 16))
  {
    v22 = 0xE400000000000000;
  }

  else
  {
    v22 = 0xE500000000000000;
  }

  v23 = v22;
  String.append(_:)(*&v21);

  sub_100008384();

  sub_10000866C(v24, v25, v26, v27, v28, v29, v30, v31, v44, v47, v48);

  v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v32);

  sub_100008384();

  v33._countAndFlagsBits = 0x3D6E6F69676572;
  v33._object = 0xE700000000000000;
  String.append(_:)(v33);

  _StringGuts.grow(_:)(28);

  v34 = type metadata accessor for SoundDescriptor(0);
  v35 = *(v1 + *(v34 + 36)) == 0;
  if (*(v1 + *(v34 + 36)))
  {
    v36 = 1702195828;
  }

  else
  {
    v36 = 0x65736C6166;
  }

  if (v35)
  {
    v37 = 0xE500000000000000;
  }

  else
  {
    v37 = 0xE400000000000000;
  }

  v38 = v37;
  String.append(_:)(*&v36);

  sub_100008384();

  v39._countAndFlagsBits = 0xD000000000000019;
  v39._object = 0x80000001005700B0;
  String.append(_:)(v39);

  v40._countAndFlagsBits = 41;
  v40._object = 0xE100000000000000;
  String.append(_:)(v40);

  return *v49;
}

unint64_t sub_1003A0348()
{
  result = qword_1006A2620;
  if (!qword_1006A2620)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A2620);
  }

  return result;
}

id sub_1003A03A0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithName:v1];

  return v2;
}

id sub_1003A0414()
{
  type metadata accessor for FaceTimeSyncIDSService();
  result = sub_1003A03A0();
  qword_1006A7FD0 = result;
  return result;
}

id sub_1003A0484()
{
  if (qword_1006A0AC8 != -1)
  {
    swift_once();
  }

  v1 = qword_1006A7FD0;

  return v1;
}

id sub_1003A04E0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = String._bridgeToObjectiveC()();

  v10.receiver = v4;
  v10.super_class = type metadata accessor for FaceTimeSyncIDSService();
  v8 = objc_msgSendSuper2(&v10, "initWithName:service:queryController:", v7, a3, a4);

  return v8;
}

id sub_1003A05D4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FaceTimeSyncIDSService();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1003A0630()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC13callservicesd17HoldMusicProvider_speechSynthesizerEventHandler];
  *v2 = 0;
  v2[1] = 0;
  v0[OBJC_IVAR____TtC13callservicesd17HoldMusicProvider_activeDescriptor] = 1;
  *&v0[OBJC_IVAR____TtC13callservicesd17HoldMusicProvider_speechSynthesizer] = 0;
  *&v0[OBJC_IVAR____TtC13callservicesd17HoldMusicProvider_audioPlayer] = 0;
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "init");
}

void sub_1003A0748(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC13callservicesd17HoldMusicProvider_activeDescriptor;
  if (*(v2 + OBJC_IVAR____TtC13callservicesd17HoldMusicProvider_activeDescriptor) == 1)
  {
    v4 = (v2 + OBJC_IVAR____TtC13callservicesd17HoldMusicProvider_speechSynthesizerEventHandler);
    v5 = *(v2 + OBJC_IVAR____TtC13callservicesd17HoldMusicProvider_speechSynthesizerEventHandler);
    v6 = *(v2 + OBJC_IVAR____TtC13callservicesd17HoldMusicProvider_speechSynthesizerEventHandler + 8);
    *v4 = a1;
    v4[1] = a2;
    sub_1000115CC(a1, a2);
    sub_1000051F8(v5, v6);
    *(v2 + v3) = 0;

    sub_1003A0828();
  }

  else
  {
    v8 = sub_100010B20(a1);
    v7 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Asked to begin or update playback of hold music but new descriptor is equal to activeDescriptor so doing nothing", 112, 2, &_mh_execute_header, v8, v7, _swiftEmptyArrayStorage);
  }
}

void sub_1003A0828()
{
  v1 = v0;
  sub_1003A09EC();
  v2 = TUBundle();
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  v4 = sub_1003A1588();
  v18._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0xD000000000000020;
  v5._object = 0x8000000100570420;
  v6.value._object = 0x800000010056B140;
  v6.value._countAndFlagsBits = 0xD000000000000012;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v18._countAndFlagsBits = 0;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v3, v7, v18);

  v9 = sub_100050758(v8._countAndFlagsBits, v8._object);
  *&v10 = AVSpeechUtteranceDefaultSpeechRate;
  [v9 setRate:v10];
  LODWORD(v11) = 1053609165;
  v12 = sub_100010B20([v9 setVolume:v11]);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10057D690;
  *(v13 + 56) = v4;
  *(v13 + 64) = sub_1003A15CC();
  *(v13 + 32) = v9;
  v16 = v9;
  v14 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Speaking utterance %@", 21, 2, &_mh_execute_header, v12, v14, v13);

  v15 = *(v1 + OBJC_IVAR____TtC13callservicesd17HoldMusicProvider_speechSynthesizer);
  if (!v15)
  {
LABEL_7:
    __break(1u);
    return;
  }

  [v15 speakUtterance:v16];
}

void sub_1003A09EC()
{
  v1 = OBJC_IVAR____TtC13callservicesd17HoldMusicProvider_speechSynthesizer;
  if (!*(v0 + OBJC_IVAR____TtC13callservicesd17HoldMusicProvider_speechSynthesizer))
  {
    v2 = [objc_allocWithZone(AVSpeechSynthesizer) init];
    [v2 setUsesApplicationAudioSession:0];
    [v2 setDelegate:v0];
    [v2 setAudioQueueFlags:{objc_msgSend(v2, "audioQueueFlags") | 0x100}];
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }
}

void sub_1003A0AAC()
{
  sub_1003A0BC4();
  v2 = *(v0 + OBJC_IVAR____TtC13callservicesd17HoldMusicProvider_audioPlayer);
  if (v2)
  {
    v9 = v2;
    v3 = [v9 play];
    v4 = v3;
    v5 = sub_100010B20(v3);
    if (v4)
    {
      v6 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Successfully started playing hold music", 39, 2, &_mh_execute_header, v5, v6, _swiftEmptyArrayStorage);
    }

    else
    {
      v8 = static os_log_type_t.error.getter();
      os_log(_:dso:log:type:_:)("Failed to start playing hold music", 34, 2, &_mh_execute_header, v5, v8, _swiftEmptyArrayStorage);
    }
  }

  else
  {
    v9 = sub_100010B20(v1);
    v7 = static os_log_type_t.error.getter();
    os_log(_:dso:log:type:_:)("No audio player could be created, so unable to begin playing hold music", 71, 2, &_mh_execute_header, v9, v7, _swiftEmptyArrayStorage);
  }
}

void sub_1003A0BC4()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v32[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __chkstk_darwin(v4);
  v9 = &v32[-v8];
  v10 = __chkstk_darwin(v7);
  v12 = &v32[-v11];
  __chkstk_darwin(v10);
  v14 = &v32[-v13];
  v15 = OBJC_IVAR____TtC13callservicesd17HoldMusicProvider_audioPlayer;
  if (!*(v1 + OBJC_IVAR____TtC13callservicesd17HoldMusicProvider_audioPlayer))
  {
    v16 = TUBundle();
    if (v16)
    {
      v17 = v16;
      v18 = sub_1003A14F4(1684828008, 0xE400000000000000, 7758199, 0xE300000000000000, v16);

      if (v18)
      {
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v3 + 32))(v14, v12, v2);
        v33 = *(v3 + 16);
        (v33)(v9, v14, v2);
        v20 = objc_allocWithZone(AVAudioPlayer);
        v23 = sub_10039F99C(v9);
        v24 = sub_100010B20(v23);
        sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_10057D690;
        (v33)(v6, v14, v2);
        v26 = String.init<A>(reflecting:)();
        v28 = v27;
        *(v25 + 56) = &type metadata for String;
        *(v25 + 64) = sub_100009D88();
        *(v25 + 32) = v26;
        *(v25 + 40) = v28;
        v29 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("Created hold music audio player with URL %@", 43, 2, &_mh_execute_header, v24, v29, v25);

        [v23 setMixToUplink:1];
        [v23 setNumberOfLoops:-1];
        LODWORD(v30) = 1058642330;
        [v23 setVolume:v30];
        (*(v3 + 8))(v14, v2);
        v31 = *(v1 + v15);
        *(v1 + v15) = v23;
      }

      else
      {
        v33 = sub_100010B20(v19);
        v21 = static os_log_type_t.error.getter();
        os_log(_:dso:log:type:_:)("Error retrieving file URL for hold music sound file", 51, 2, &_mh_execute_header, v33, v21, _swiftEmptyArrayStorage);
        v22 = v33;
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1003A10F0(uint64_t a1)
{
  v2 = sub_100010B20(a1);
  v3 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("finished speech synthesizer utterance", 37, 2, &_mh_execute_header, v2, v3, _swiftEmptyArrayStorage);

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = *(v1 + OBJC_IVAR____TtC13callservicesd17HoldMusicProvider_speechSynthesizerEventHandler);
  if (v5)
  {
    v6 = *(v1 + OBJC_IVAR____TtC13callservicesd17HoldMusicProvider_speechSynthesizerEventHandler + 8);

    v5(sub_1003A14EC, v4);
    sub_1000051F8(v5, v6);
  }
}

void sub_1003A11DC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1003A0AAC();
  }
}

void sub_1003A12A0(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100010B20(a1);
  v10 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)(a3, a4, 2, &_mh_execute_header, v9, v10, _swiftEmptyArrayStorage);

  v11 = *(v5 + OBJC_IVAR____TtC13callservicesd17HoldMusicProvider_speechSynthesizerEventHandler);
  if (v11)
  {
    v12 = *(v5 + OBJC_IVAR____TtC13callservicesd17HoldMusicProvider_speechSynthesizerEventHandler + 8);

    v11(a5, 0);

    sub_1000051F8(v11, v12);
  }
}

uint64_t sub_1003A13F4(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1003A140C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
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

uint64_t sub_1003A1460(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1003A14BC(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

id sub_1003A14F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = String._bridgeToObjectiveC()();

  v7 = String._bridgeToObjectiveC()();

  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

unint64_t sub_1003A1588()
{
  result = qword_1006A80D0;
  if (!qword_1006A80D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006A80D0);
  }

  return result;
}

unint64_t sub_1003A15CC()
{
  result = qword_1006A80D8;
  if (!qword_1006A80D8)
  {
    sub_1003A1588();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A80D8);
  }

  return result;
}

uint64_t sub_1003A1624()
{
  v0 = type metadata accessor for Logger();
  sub_1002861B8(v0, qword_1006A80E0);
  v1 = sub_10000AF9C(v0, qword_1006A80E0);
  if (qword_1006A0B78 != -1)
  {
    swift_once();
  }

  v2 = sub_10000AF9C(v0, qword_1006BA6E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003A16EC(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_100006AF0(0, &unk_1006A39B0, NSObject_ptr);
  type metadata accessor for SharePlayAvailabilityManager.CallAndHandle(0);
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t sub_1003A1764(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_10000A298();
  sub_100050E78(v1, v2, &protocol conformance descriptor for UUID);
  sub_100007624();
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for SharePlayAvailabilityManager.CallAndHandle(0);
  return NSObject.hash(into:)();
}

Swift::Int sub_1003A17E0()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10000A298();
  sub_100050E78(v0, v1, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for SharePlayAvailabilityManager.CallAndHandle(0);
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1003A1878(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10000A298();
  sub_100050E78(v1, v2, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

id sub_1003A190C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  swift_defaultActor_initialize();
  swift_unknownObjectWeakInit();
  sub_10026D814(&unk_1006A75C0, &qword_100583BB0);
  *(v6 + 152) = Dictionary.init(dictionaryLiteral:)();
  *(v6 + 160) = _swiftEmptyDictionarySingleton;
  *(v6 + 168) = 1;
  swift_unknownObjectWeakAssign();
  *(v6 + 120) = a2;
  *(v6 + 128) = a3;
  *(v6 + 112) = a4;
  *(v6 + 136) = a5;
  *(v6 + 137) = a6;
  v14.receiver = v6;
  v14.super_class = type metadata accessor for SharePlayAvailabilityManager();
  v12 = objc_msgSendSuper2(&v14, "init");
  swift_unknownObjectRelease();
  return v12;
}

void sub_1003A1AA4(uint64_t a1)
{
  v1 = (*(a1 + 16))();
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
}

void sub_1003A1B00(char a1)
{
  v2 = v1;
  if (a1 || *(v1 + 137) != 1)
  {
    if (qword_1006A0AD0 != -1)
    {
      sub_100008688(&qword_1006A0AD0);
    }

    v9 = type metadata accessor for Logger();
    sub_1000075F0(v9, qword_1006A80E0);
    v5 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v10))
    {
      v11 = swift_slowAlloc();
      v12 = sub_100005E84();
      v20 = v12;
      *v11 = 136315138;
      if (a1)
      {
        sub_100021FAC();
        v14 = sub_10000D380(v13);
        if (v17)
        {
          v18 = v15;
        }

        else
        {
          v18 = v16;
        }
      }

      else
      {
        v18 = 0xE700000000000000;
        v14 = 0x6E776F6E6B6E75;
      }

      v19 = sub_10002741C(v14, v18, &v20);

      *(v11 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v5, v10, "[SharePlayAvailabilityManager] Setting localAvailability to %s", v11, 0xCu);
      sub_100009B7C(v12);
      sub_100005F40(v12);
      v8 = v11;
      goto LABEL_16;
    }
  }

  else
  {
    if (qword_1006A0AD0 != -1)
    {
      sub_100008688(&qword_1006A0AD0);
    }

    v4 = type metadata accessor for Logger();
    sub_1000075F0(v4, qword_1006A80E0);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "[SharePlayAvailabilityManager] Setting localAvailability to .unknown, this is not expected behavior", v7, 2u);
      v8 = v7;
LABEL_16:
      sub_100005F40(v8);
    }
  }

  *(v2 + 168) = a1;
}

void sub_1003A1CFC(void *a1, void *a2)
{
  v3 = v2;
  v6 = [objc_allocWithZone(CSDMessagingSharePlayAvailable) init];
  if (!v6)
  {
    __break(1u);
    goto LABEL_27;
  }

  v7 = v6;
  [v6 setSupportsRequestToScreenShare:*(v2 + 136)];
  v8 = [objc_opt_self() sharedInstance];
  if (!v8)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v9 = v8;
  v10 = [v8 deviceType];

  if (v10 == 2 || *(v3 + 137) == 1)
  {
    v11 = *(v3 + 168);
  }

  else
  {
    v11 = 0;
  }

  [v7 setState:v11];
  if (qword_1006A0AD0 != -1)
  {
    sub_100008688(&qword_1006A0AD0);
  }

  v12 = type metadata accessor for Logger();
  sub_1000075F0(v12, qword_1006A80E0);
  v49 = v7;
  v13 = a1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = sub_100007C08();
    v17 = sub_10000777C();
    v48 = sub_100005E84();
    v50 = v48;
    *v16 = 136315394;
    v18 = [v49 debugDescription];
    v19 = a2;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = sub_10002741C(v20, v22, &v50);

    *(v16 + 4) = v23;
    a2 = v19;
    *(v16 + 12) = 2112;
    *(v16 + 14) = v13;
    *v17 = v13;
    v24 = v13;
    _os_log_impl(&_mh_execute_header, v14, v15, "[SharePlayAvailabilityManager] Sending message: %s to: %@", v16, 0x16u);
    sub_100009A04(v17, &unk_1006A2630, &qword_10057CB40);
    sub_100005F40(v17);
    sub_100009B7C(v48);
    sub_100005F40(v48);
    sub_100005F40(v16);
  }

  v25 = [a2 value];
  if (!v25)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = String._bridgeToObjectiveC()();
  }

  v26 = IMCanonicalizeFormattedString();

  if (v26)
  {
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
    v28 = sub_100389560(2, v27);
    sub_10000F3C0();
    sub_100050924(v29, 0xD00000000000002BLL, v30);
    v32 = v31;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {

      goto LABEL_23;
    }

    [Strong sendWithMessage:v49 toHandle:v13 fromHandle:v32];
  }

  else
  {
    v34 = a2;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = sub_100005E84();
      v50 = v38;
      *v37 = 136315138;
      v39 = [v34 value];
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      v43 = sub_10002741C(v40, v42, &v50);

      *(v37 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v35, v36, "[SharePlayAvailabilityManager] Could not canonicalize phone number: %s", v37, 0xCu);
      sub_100009B7C(v38);
      sub_100005F40(v38);
      sub_100005F40(v37);
    }

    sub_10000F3C0();
    sub_100050924(v34, 0xD00000000000002BLL, v44);
    v46 = v45;
    v47 = swift_unknownObjectWeakLoadStrong();
    if (!v47)
    {

      goto LABEL_23;
    }

    [v47 sendWithMessage:v49 toHandle:v13 fromHandle:v46];
  }

  swift_unknownObjectRelease();
LABEL_23:
}

uint64_t sub_1003A21B4()
{
  sub_100006810();
  v1[13] = v2;
  v1[14] = v0;
  v1[11] = v3;
  v1[12] = v4;
  v5 = type metadata accessor for UUID();
  v1[15] = v5;
  sub_100005EB4(v5);
  v1[16] = v6;
  v1[17] = swift_task_alloc();
  v7 = sub_10026D814(&qword_1006A81D0, &qword_100583B78);
  v1[18] = v7;
  sub_100007BF0(v7);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v8 = type metadata accessor for SharePlayAvailabilityManager.CallAndHandle(0);
  sub_100005EB4(v8);
  v1[22] = v9;
  v1[23] = swift_task_alloc();
  v10 = sub_10026D814(&qword_1006A81D8, &qword_100583B80);
  sub_100007BF0(v10);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v11 = type metadata accessor for Date();
  v1[27] = v11;
  sub_100005EB4(v11);
  v1[28] = v12;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();

  return _swift_task_switch(sub_1003A23D0, v0, 0);
}

uint64_t sub_1003A23D0()
{
  v115 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = sub_1003A3258(*(v0 + 88), *(v0 + 104));
  v5 = v4;
  (*(v1 + 120))();
  sub_10000F3C0();
  sub_100050924(v2, 0xD00000000000002DLL, v6);
  v8 = v7;
  *(v0 + 264) = v7;
  sub_1003A4484(v3);
  if ((v9 & 1) == 0)
  {
    Date.init(timeIntervalSince1970:)();
    if (qword_1006A0AD0 != -1)
    {
      sub_100008688(&qword_1006A0AD0);
    }

    v29 = *(v0 + 256);
    v30 = *(v0 + 232);
    v31 = *(v0 + 216);
    v32 = *(v0 + 224);
    v109 = *(v0 + 88);
    v33 = type metadata accessor for Logger();
    sub_10000AF9C(v33, qword_1006A80E0);
    v34 = *(v32 + 16);
    v35 = sub_100006884();
    v34(v35);
    (v34)(v30, v29, v31);
    v36 = v8;
    v37 = v109;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();

    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v0 + 248);
    v110 = *(v0 + 256);
    v42 = *(v0 + 240);
    v43 = *(v0 + 216);
    v44 = *(v0 + 224);
    if (v40)
    {
      v103 = *(v0 + 88);
      v106 = *(v0 + 248);
      v45 = swift_slowAlloc();
      v104 = sub_10000777C();
      v114[0] = swift_slowAlloc();
      *v45 = 138413058;
      *(v45 + 4) = v36;
      *v104 = v36;
      *(v45 + 12) = 2080;
      sub_10000E808();
      sub_100050E78(v46, v47, &protocol conformance descriptor for Date);
      v105 = v36;
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v102 = v39;
      v50 = v49;
      v51 = *(v44 + 8);
      v51(v42, v43);
      v52 = sub_10002741C(v48, v50, v114);

      *(v45 + 14) = v52;
      *(v45 + 22) = 2080;
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = v54;
      v56 = sub_100007624();
      (v51)(v56);
      sub_10002741C(v53, v55, v114);
      sub_100006064();
      *(v45 + 24) = v53;
      *(v45 + 32) = 2080;
      v57 = [v103 debugDescription];
      v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = v59;

      sub_10002741C(v58, v60, v114);
      sub_100006064();
      *(v45 + 34) = v57;
      _os_log_impl(&_mh_execute_header, v38, v102, "[SharePlayAvailabilityManager] Disregarding message from: %@ since it is outdated (sent at: %s, vs. ref: %s), message: %s", v45, 0x2Au);
      sub_100009A04(v104, &unk_1006A2630, &qword_10057CB40);
      sub_100007CBC();
      swift_arrayDestroy();
      sub_100007CBC();
      sub_100005F40(v45);

      v51(v106, v43);
      v51(v110, v43);
    }

    else
    {

      v61 = *(v44 + 8);
      v62 = sub_100007624();
      v61(v62);
      (v61)(v42, v43);
      (v61)(v41, v43);
      (v61)(v110, v43);
    }

    goto LABEL_15;
  }

  v10 = *(v0 + 112);
  v11 = sub_1003A43E4(v8);
  sub_100008D34(v10 + 152, v0 + 16);
  sub_1003A32CC(v8, v3, v5 & 0x1FF);
  swift_endAccess();
  if (qword_1006A0AD0 != -1)
  {
    sub_100008688(&qword_1006A0AD0);
  }

  v12 = type metadata accessor for Logger();
  sub_10000AF9C(v12, qword_1006A80E0);
  v13 = v8;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  v16 = "com.apple.callservicesd.shareplay-session-server-terminated";
  if (os_log_type_enabled(v14, v15))
  {
    v17 = sub_100007C08();
    v18 = sub_10000777C();
    v108 = v11;
    v19 = sub_100005E84();
    v114[0] = v19;
    *v17 = 138412546;
    *(v17 + 4) = v13;
    *v18 = v13;
    *(v17 + 12) = 2080;
    v20 = v13;
    v21 = sub_1003A4960(v3, v5 & 0x1FF);
    v3 = v22;
    v5 = sub_10002741C(v21, v22, v114);

    *(v17 + 14) = v5;
    _os_log_impl(&_mh_execute_header, v14, v15, "[SharePlayAvailabilityManager] Added handle: %@ with indicator: %s", v17, 0x16u);
    sub_100009A04(v18, &unk_1006A2630, &qword_10057CB40);
    sub_100005F40(v18);
    sub_100009B7C(v19);
    v23 = v19;
    v11 = v108;
    sub_100005F40(v23);
    v24 = v17;
    v16 = "com.apple.callservicesd.shareplay-session-server-terminated";
    sub_100005F40(v24);
  }

  sub_100008D34(v10 + 152, v0 + 40);
  sub_1003A355C(v13);
  v26 = v25;
  swift_endAccess();
  if ((v26 & 0xFF00) == 0x200 || v26 == v11 && v11 > 0xFFu == (v26 & 0x100) >> 8)
  {
    v27 = sub_100022D4C();
    v28(v27);

LABEL_15:
    sub_100016330();

    sub_100009EF4();

    return v63();
  }

  v65 = v13;
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v66, v67))
  {
    v13 = sub_100007C08();
    v5 = sub_10000777C();
    v3 = sub_100005E84();
    v114[0] = v3;
    *v13 = *(v16 + 462);
    *(v13 + 1) = v65;
    *v5 = v65;
    *(v13 + 6) = 2080;
    v68 = v26 & 0x1FF;
    v69 = v65;
    v70 = sub_1003A4C0C(v68);
    v15 = sub_10002741C(v70, v71, v114);

    *(v13 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v66, v67, "[SharePlayAvailabilityManager] Resolved handle: %@ to state: %s", v13, 0x16u);
    sub_100009A04(v5, &unk_1006A2630, &qword_10057CB40);
    sub_100005F40(v5);
    sub_100009B7C(v3);
    sub_100005F40(v3);
    sub_100006868();
  }

  else
  {

    v68 = v26 & 0x1FF;
  }

  *(v0 + 312) = v68;
  swift_beginAccess();
  v72 = v65;

  v74 = sub_1003A5A80(v73, v72);
  *(v0 + 272) = v74;

  v75 = *(v74 + 32);
  *(v0 + 314) = v75;
  v76 = -1;
  v77 = -1 << v75;
  if (-(-1 << v75) < 64)
  {
    v76 = ~(-1 << -(-1 << v75));
  }

  v78 = v76 & v74[8];
  if (v78)
  {
    v13 = 0;
    v79 = *(v0 + 272);
LABEL_28:
    sub_10001141C(v78);
    v111 = *(*(v79 + 56) + 16 * v5);
    v82 = sub_100006B30();
    sub_1002DB564(v82, v83);
    sub_10000FC50(v111);

    v81 = v13;
  }

  else
  {
    v80 = 0;
    v81 = ((63 - v77) >> 6) - 1;
    while (v81 != v80)
    {
      v13 = (v80 + 1);
      v79 = *(v0 + 272);
      v78 = *(v79 + 8 * v80++ + 72);
      if (v78)
      {
        goto LABEL_28;
      }
    }

    sub_10000AF74(*(v0 + 192), 1, 1, *(v0 + 144));
    v3 = 0;
  }

  *(v0 + 280) = v3;
  *(v0 + 288) = v81;
  v84 = *(v0 + 192);
  v85 = *(v0 + 144);
  sub_10000EA40();
  if (!v86)
  {
    sub_10001E41C();
    sub_100007C2C();
    v87 = swift_allocObject();
    sub_10000C7DC(v87);
    sub_1000172A4();
    v85 = *(v0 + 144);
  }

  sub_10000BA88();
  sub_10000EA40();
  if (v86)
  {
    v88 = *(v0 + 264);
    v89 = sub_100022D4C();
    v90(v89);

    goto LABEL_15;
  }

  v91 = sub_1000100AC();
  v112 = v92;
  v93 = *(v0 + 120);
  v94 = *(v15 + 48);
  v107 = *(v91 + v94);
  sub_1002DB564(v91, v84);
  *(v84 + v94) = v107;
  v95 = sub_100006B30();
  sub_10002F780(v95, v96);
  *(v0 + 296) = *(v85 + *(v15 + 48) + 8);
  v97 = sub_100007624();
  sub_10002F780(v97, v98);

  (*(v13 + 2))(v112, 1, v93);
  sub_1002DB508(1);
  sub_10000F73C();
  v113 = v99;
  v100 = swift_task_alloc();
  *(v0 + 304) = v100;
  *v100 = v0;
  v101 = sub_100010424(v100);

  return v113(v101);
}

uint64_t sub_1003A2DD0()
{
  sub_1000066BC();
  sub_100005F18();
  v2 = *(v1 + 112);
  v3 = *v0;
  sub_100008060();
  *v4 = v3;

  v5 = sub_100007624();
  v6(v5);

  return _swift_task_switch(sub_1003A2F4C, v2, 0);
}

uint64_t sub_1003A2F4C()
{
  v4 = *(v0 + 160);
  sub_100009A04(*(v0 + 168), &qword_1006A81D0, &qword_100583B78);
  result = sub_1002DB508(v4);
  v6 = *(v0 + 280);
  v7 = *(v0 + 288);
  if (v6)
  {
    v8 = *(v0 + 272);
LABEL_7:
    sub_10001141C(v6);
    v32 = *(*(v8 + 56) + 16 * v2);
    v10 = sub_100006B30();
    sub_1002DB564(v10, v11);
    sub_10000FC50(v32);

LABEL_8:
    *(v0 + 280) = v1;
    *(v0 + 288) = v7;
    v12 = *(v0 + 192);
    v13 = *(v0 + 144);
    sub_10000EA40();
    if (!v14)
    {
      sub_10001E41C();
      sub_100007C2C();
      v15 = swift_allocObject();
      sub_10000C7DC(v15);
      sub_1000172A4();
      v13 = *(v0 + 144);
    }

    sub_10000BA88();
    sub_10000EA40();
    if (v14)
    {
      v16 = *(v0 + 264);
      v17 = sub_100022D4C();
      v18(v17);

      sub_100016330();

      sub_100009EF4();

      return v19();
    }

    else
    {
      v20 = sub_1000100AC();
      v33 = v21;
      v22 = *(v0 + 120);
      v23 = *(v3 + 48);
      v31 = *(v20 + v23);
      sub_1002DB564(v20, v12);
      *(v12 + v23) = v31;
      v24 = sub_100006B30();
      sub_10002F780(v24, v25);
      *(v0 + 296) = *(v13 + *(v3 + 48) + 8);
      v26 = sub_100007624();
      sub_10002F780(v26, v27);

      (*(v7 + 16))(v33, 1, v22);
      sub_1002DB508(1);
      sub_10000F73C();
      v34 = v28;
      v29 = swift_task_alloc();
      *(v0 + 304) = v29;
      *v29 = v0;
      v30 = sub_100010424(v29);

      return v34(v30);
    }
  }

  else
  {
    while (1)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v9 >= (((1 << *(v0 + 314)) + 63) >> 6))
      {
        sub_10000AF74(*(v0 + 192), 1, 1, *(v0 + 144));
        v1 = 0;
        goto LABEL_8;
      }

      v8 = *(v0 + 272);
      v6 = *(v8 + 8 * v9 + 64);
      ++v7;
      if (v6)
      {
        v7 = v9;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1003A3258(void *a1, uint64_t a2)
{
  [a1 state];
  [a1 supportsRequestToScreenShare];
  return a2;
}

void sub_1003A32CC(void *a1, uint64_t a2, __int16 a3)
{
  v4 = v3;
  v7 = a1;
  v8 = sub_10005104C(a1);
  if (!v9)
  {
    if (qword_1006A0AD0 == -1)
    {
LABEL_9:
      v23 = type metadata accessor for Logger();
      v24 = sub_10000AF9C(v23, qword_1006A80E0);
      v25 = v7;
      oslog = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(oslog, v26))
      {
        sub_100007C08();
        v27 = sub_10000FE98();
        v28 = sub_100005E84();
        v44 = v28;
        *v24 = 136315394;
        v29 = sub_10002741C(0xD000000000000019, 0x8000000100570690, &v44);
        sub_10001866C(v29);
        sub_10000C4A4(&_mh_execute_header, v30, v31, "[RemoteAvailabilityCache] %s Cannot normalize handle: %@", v32, v33, v34, v35, oslog);
        sub_100009A04(v27, &unk_1006A2630, &qword_10057CB40);
        sub_100006868();
        sub_100009B7C(v28);
        sub_100005F40(v28);
        sub_100005F40(v24);

LABEL_13:
        sub_100006048();
        return;
      }

      sub_100006048();

      return;
    }

LABEL_18:
    sub_100008688(&qword_1006A0AD0);
    goto LABEL_9;
  }

  v10 = v8;
  v11 = v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v44 = *v4;
  v7 = v44;
  v13 = sub_100005208(v10, v11);
  v15 = v44[2];
  v16 = (v14 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_18;
  }

  v18 = v13;
  v19 = v14;
  sub_10026D814(&qword_1006A75B8, &unk_100582D10);
  v20 = v44;
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v17))
  {
LABEL_6:
    *v4 = v44;
    if (v19)
    {
    }

    else
    {
      sub_100016F0C(v18, v10, v11, _swiftEmptyArrayStorage, v20);
    }

    v36 = *(v20 + 56) + 8 * v18;
    sub_100461AA4();
    v37 = *(*v36 + 16);
    sub_100461BA8(v37);
    v38 = *v36;
    *(v38 + 16) = v37 + 1;
    v39 = v38 + 16 * v37;
    *(v39 + 32) = a2;
    *(v39 + 40) = a3;
    *(v39 + 41) = HIBYTE(a3) & 1;
    goto LABEL_13;
  }

  v21 = sub_100005208(v10, v11);
  if ((v19 & 1) == (v22 & 1))
  {
    v18 = v21;
    goto LABEL_6;
  }

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_1003A355C(_DWORD *a1)
{
  v3 = sub_1003A4DEC(a1, *v1);
  if (v3[2])
  {
    v4 = v3[4];
    v5 = *(v3 + 40);
    v6 = *(v3 + 41);

    if (v6)
    {
      v7 = 256;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7 | v5;
    sub_100050EC0(a1);
    v9 = sub_100006884();
    sub_1003A32CC(v9, v10, v8);
  }

  else
  {

    return 0;
  }

  return v4;
}

uint64_t sub_1003A35E8(uint64_t a1, __int16 a2, int *a3)
{
  *(v3 + 24) = a2;
  *(v3 + 25) = HIBYTE(a2) & 1;
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_100035FE4;

  return v6();
}

uint64_t sub_1003A3798(void *a1, void *a2, int a3, void *aBlock, uint64_t a5)
{
  v5[3] = a2;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;

  v10 = swift_task_alloc();
  v5[6] = v10;
  *v10 = v5;
  v10[1] = sub_1003A3880;

  return sub_1003A21B4();
}

uint64_t sub_1003A3880()
{
  sub_100005F18();
  v2 = v1[5];
  v3 = v1[3];
  v4 = v1[2];
  v5 = *v0;
  sub_100008060();
  *v6 = v5;

  v2[2](v2);
  _Block_release(v2);
  sub_100009EF4();

  return v7();
}

uint64_t sub_1003A39E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v109 = a4;
  v104 = a5;
  v106 = a3;
  v7 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v8 = sub_100007BF0(v7);
  __chkstk_darwin(v8);
  v105 = &v93 - v9;
  v10 = type metadata accessor for Date();
  sub_100007FEC();
  v108 = v11;
  __chkstk_darwin(v12);
  sub_100007BAC();
  v102 = v13 - v14;
  sub_100006838();
  __chkstk_darwin(v15);
  v101 = &v93 - v16;
  sub_100006838();
  __chkstk_darwin(v17);
  v100 = &v93 - v18;
  sub_100006838();
  __chkstk_darwin(v19);
  v107 = &v93 - v20;
  v21 = type metadata accessor for SharePlayAvailabilityManager.CallAndHandle(0);
  sub_100008070();
  __chkstk_darwin(v22);
  v103 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v25 = sub_100007BF0(v24);
  __chkstk_darwin(v25);
  v27 = &v93 - v26;
  v28 = type metadata accessor for UUID();
  sub_100007FEC();
  v30 = v29;
  __chkstk_darwin(v31);
  sub_100007BAC();
  v99 = v32 - v33;
  sub_100006838();
  __chkstk_darwin(v34);
  v36 = &v93 - v35;
  sub_10000F3C0();
  sub_100050924(a1, 0xD00000000000003FLL, v37);
  v39 = v38;
  sub_100285FC4(a2, v27, &unk_1006A3DD0, &unk_10057C9D0);
  if (sub_100015468(v27, 1, v28) == 1)
  {
    sub_100009A04(v27, &unk_1006A3DD0, &unk_10057C9D0);
  }

  else
  {
    (*(v30 + 32))(v36, v27, v28);
    v40 = v109;
    if (v109)
    {
      v97 = v30;
      v41 = v39;
      v42 = v103;
      v43 = *(v30 + 16);
      v43(v103);
      *(v42 + *(v21 + 20)) = v41;
      v44 = v110;
      swift_beginAccess();
      v45 = *(v44 + 160);
      v98 = v41;
      v96 = v41;

      sub_1000115CC(v40, v104);
      v46 = sub_1002CBA60(v42, v45);

      if (v46)
      {
        v47 = sub_100027E34();
        sub_1000051F8(v47, v48);
        v49 = 0xE800000000000000;
        v50 = 0x646563616C706552;
      }

      else
      {
        v49 = 0xEA00000000006465;
        v50 = 0x7265747369676552;
      }

      v95 = v50;
      sub_100007C2C();
      v51 = swift_allocObject();
      v52 = v109;
      v53 = v110;
      v54 = v104;
      *(v51 + 16) = v109;
      *(v51 + 24) = v54;
      sub_100008D34(v53 + 160, v112);
      sub_1000115CC(v52, v54);
      swift_isUniquelyReferenced_nonNull_native();
      v111 = *(v53 + 160);
      sub_100379948();
      *(v53 + 160) = v111;
      swift_endAccess();
      if (qword_1006A0AD0 != -1)
      {
        sub_100008688(&qword_1006A0AD0);
      }

      v55 = type metadata accessor for Logger();
      sub_1000075F0(v55, qword_1006A80E0);
      v56 = v99;
      v57 = v36;
      (v43)(v99, v36, v28);
      v58 = v96;

      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = sub_100005E84();
        v94 = v59;
        v62 = v49;
        v63 = v61;
        v64 = sub_10000777C();
        v96 = swift_slowAlloc();
        v112[0] = v96;
        *v63 = 136315650;
        v65 = sub_10002741C(v95, v62, v112);
        LODWORD(v95) = v60;
        v66 = v65;

        *(v63 + 4) = v66;
        *(v63 + 12) = 2112;
        *(v63 + 14) = v58;
        *v64 = v58;
        *(v63 + 22) = 2080;
        sub_10000A298();
        sub_100050E78(v67, v68, &protocol conformance descriptor for UUID);
        v69 = v58;
        dispatch thunk of CustomStringConvertible.description.getter();
        v70 = v57;
        v71 = *(v97 + 8);
        v71(v56, v28);
        v72 = sub_100027E34();
        v75 = sub_10002741C(v72, v73, v74);

        *(v63 + 24) = v75;
        v76 = v94;
        _os_log_impl(&_mh_execute_header, v94, v95, "[SharePlayAvailabilityManager] %s callback for handle: %@, callUUID: %s", v63, 0x20u);
        sub_100009A04(v64, &unk_1006A2630, &qword_10057CB40);
        sub_100005F40(v64);
        swift_arrayDestroy();
        sub_100007CBC();
        sub_100005F40(v63);

        sub_1000051F8(v109, v104);
        sub_1002DB508(v103);
        v71(v70, v28);
      }

      else
      {

        sub_1000051F8(v109, v104);
        v77 = *(v97 + 8);
        v77(v56, v28);
        sub_1002DB508(v103);
        v77(v57, v28);
      }

      v39 = v98;
    }

    else
    {
      (*(v30 + 8))(v36, v28);
    }
  }

  v78 = v110;
  v79 = v105;
  sub_100285FC4(v106, v105, &qword_1006A3C70, &unk_10057EA80);
  v80 = sub_100015468(v79, 1, v10);
  v81 = v108;
  if (v80 == 1)
  {
    v82 = sub_100009A04(v79, &qword_1006A3C70, &unk_10057EA80);
    v83 = v107;
    (*(v78 + 120))(v82);
  }

  else
  {
    v84 = v100;
    v85 = (*(v108 + 32))(v100, v79, v10);
    v86 = v101;
    (*(v78 + 120))(v85);
    v87 = v102;
    static Date.now.getter();
    Date.timeIntervalSince(_:)();
    v83 = v107;
    Date.addingTimeInterval(_:)();
    v88 = *(v81 + 8);
    v88(v87, v10);
    v88(v86, v10);
    v88(v84, v10);
  }

  v89 = sub_1003A43E4(v39);
  v90 = v89;
  v91 = v89 > 0xFFu;

  (*(v81 + 8))(v83, v10);
  return v90 | (v91 << 8);
}

uint64_t sub_1003A426C(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int *a4)
{
  v6 = *a3;
  v7 = a3[1];
  v11 = a4 + *a4;
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  if (v7)
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  *v8 = v4;
  v8[1] = sub_100035FE4;

  return (v11)(a2, v9 | v6);
}

id sub_1003A4380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (static UUID.== infix(_:_:)())
  {
    return [*(a1 + *(type metadata accessor for SharePlayAvailabilityManager.CallAndHandle(0) + 20)) isEquivalentToHandle:a3];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003A43E4(_DWORD *a1)
{
  sub_100008D34(v1 + 152, v10);
  v3 = sub_1003A355C(a1);
  v5 = v4;
  swift_endAccess();
  if ((v5 & 0xFF00) == 0x200)
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    sub_1003A4484(v3);
    v7 = v5 & 0x100;
    if (v8)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    if ((v8 & 1) == 0)
    {
      v7 = 0;
    }
  }

  return v7 | v6;
}

void sub_1003A4484(uint64_t a1)
{
  Date.timeIntervalSince1970.getter();
  v3 = v2 * 1000.0;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v3 <= -1.0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!is_mul_ok(*(v1 + 112), 0x3E8uLL))
  {
LABEL_9:
    __break(1u);
  }
}

void sub_1003A4534()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_1003A4584()
{

  sub_100060500(v0 + 144);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1003A45C4()
{
  sub_1003A4584();

  return _swift_defaultActor_deallocate(v0);
}

_BYTE *storeEnumTagSinglePayload for SharePlayAvailabilityManager.SharePlayAvailability(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SharePlayAvailabilityManager.AvailabilityQueryResponse(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SharePlayAvailabilityManager.AvailabilityQueryResponse(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *(result + 1) = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1003A4874(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = sub_100006AF0(319, &qword_1006A2640, TUHandle_ptr);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1003A4960(unint64_t a1, __int16 a2)
{
  v3 = a2;
  type metadata accessor for Date();
  sub_100007FEC();
  __chkstk_darwin(v4);
  Date.init(timeIntervalSince1970:)();
  _StringGuts.grow(_:)(54);
  v5._countAndFlagsBits = 0xD00000000000001ELL;
  v5._object = 0x8000000100570760;
  String.append(_:)(v5);
  sub_10000E808();
  sub_100050E78(v6, v7, &protocol conformance descriptor for Date);
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0x3A6574617473202CLL;
  v9._object = 0xE900000000000020;
  String.append(_:)(v9);
  sub_10002F6A0();
  sub_100016FE4();
  if (v3 != 1)
  {
    v13 = 0xD00000000000001BLL;
    v12 = 0x8000000100570640;
  }

  if (v3)
  {
    v14 = v13;
  }

  else
  {
    v14 = v11;
  }

  if (v3)
  {
    v15 = v12;
  }

  else
  {
    v15 = v10;
  }

  v16 = v15;
  String.append(_:)(*&v14);

  v17._countAndFlagsBits = sub_100005370();
  v17._object = 0xE800000000000000;
  String.append(_:)(v17);
  if ((a2 & 0x100) != 0)
  {
    v18 = 1702195828;
  }

  else
  {
    v18 = 0x65736C6166;
  }

  if ((a2 & 0x100) != 0)
  {
    v19 = 0xE400000000000000;
  }

  else
  {
    v19 = 0xE500000000000000;
  }

  v20 = v19;
  String.append(_:)(*&v18);

  v21._countAndFlagsBits = 41;
  v21._object = 0xE100000000000000;
  String.append(_:)(v21);
  v22 = sub_100006884();
  v23(v22);
  return sub_100027E34();
}

uint64_t sub_1003A4B8C()
{
  if (*(v0 + 9))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_1003A4960(*v0, v1 | *(v0 + 8));
}

unint64_t sub_1003A4BAC(char a1)
{
  if (!a1)
  {
    return 0x6E776F6E6B6E75;
  }

  sub_100021FAC();
  return sub_10000D380(v1);
}

unint64_t sub_1003A4C0C(__int16 a1)
{
  v2 = a1;
  _StringGuts.grow(_:)(46);

  sub_10002F6A0();
  sub_100016FE4();
  if (v2 != 1)
  {
    v6 = 0xD00000000000001BLL;
    v5 = 0x8000000100570640;
  }

  if (v2)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  if (v2)
  {
    v8 = v5;
  }

  else
  {
    v8 = v3;
  }

  v9 = v8;
  String.append(_:)(*&v7);

  v10._countAndFlagsBits = sub_100005370();
  v10._object = 0xE800000000000000;
  String.append(_:)(v10);
  if ((a1 & 0x100) != 0)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if ((a1 & 0x100) != 0)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  v13 = v12;
  String.append(_:)(*&v11);

  v14._countAndFlagsBits = 41;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  return 0xD000000000000021;
}

uint64_t sub_1003A4D28(__int16 a1, __int16 a2)
{
  if (a2 != a1)
  {
    return 0;
  }

  else
  {
    return ((a2 & 0x100) == 0) ^ ((a1 & 0x100) >> 8);
  }
}

uint64_t sub_1003A4D48(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  if (a2[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_1003A4D28(v2 | *a1, v3 | *a2);
}

unint64_t sub_1003A4D78()
{
  if (v0[1])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_1003A4C0C(v1 | *v0);
}

unint64_t sub_1003A4D98()
{
  result = qword_1006A81B8;
  if (!qword_1006A81B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A81B8);
  }

  return result;
}

void *sub_1003A4DEC(void *a1, uint64_t a2)
{
  v4 = sub_10005104C(a1);
  if (v5)
  {
    v6 = sub_100005E74(v4, v5, a2);

    if (v6)
    {
      v16 = v6;

      sub_1003A4FAC(&v16);

      return v16;
    }
  }

  else
  {
    if (qword_1006A0AD0 != -1)
    {
      sub_100008688(&qword_1006A0AD0);
    }

    v8 = type metadata accessor for Logger();
    sub_1000075F0(v8, qword_1006A80E0);
    v9 = a1;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = sub_100007C08();
      v13 = sub_10000777C();
      v14 = sub_100005E84();
      v16 = v14;
      *v12 = 136315394;
      *(v12 + 4) = sub_10002741C(0xD000000000000017, 0x80000001005706B0, &v16);
      *(v12 + 12) = 2112;
      *(v12 + 14) = v9;
      *v13 = v9;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v10, v11, "[RemoteAvailabilityCache] %s Cannot normalize handle: %@", v12, 0x16u);
      sub_100009A04(v13, &unk_1006A2630, &qword_10057CB40);
      sub_100005F40(v13);
      sub_100009B7C(v14);
      sub_100006868();
      sub_100007CBC();
    }
  }

  return _swiftEmptyArrayStorage;
}

Swift::Int sub_1003A4FAC(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1003A604C(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1003A5018(v6);
  *a1 = v2;
  return result;
}

Swift::Int sub_1003A5018(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7[0] = (v6 + 4);
      v7[1] = v5;
      sub_1003A5188(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1003A510C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1003A510C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 + 9;
    v6 = result - a3;
    while (2)
    {
      v7 = v6;
      v8 = v5;
      do
      {
        v9 = v8 - 9;
        v10 = *(v8 - 9);
        if (*(v8 - 25) >= v10)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v11 = *(v8 - 25);
        *(v8 - 16) = *v8;
        v8 -= 16;
        v12 = v8[15];
        *v9 = v11;
        *(v8 - 9) = v10;
        *(v8 - 1) = v12;
      }

      while (!__CFADD__(v7++, 1));
      ++a3;
      v5 += 16;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1003A5188(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v89 = _swiftEmptyArrayStorage;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    v84 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 16 * v9);
        v11 = 16 * v7;
        v12 = (*a3 + 16 * v7);
        v15 = *v12;
        v14 = v12 + 4;
        v13 = v15;
        v16 = v7 + 2;
        while (1)
        {
          v17 = v16;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = (v13 < v10) ^ (*(v14 - 2) >= *v14);
          v14 += 2;
          ++v16;
          if ((v18 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v13 < v10)
        {
          if (v9 < v7)
          {
            goto LABEL_114;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v19 = 16 * v6 - 16;
            v20 = v9;
            v21 = v7;
            do
            {
              if (v21 != --v20)
              {
                v22 = *a3;
                if (!*a3)
                {
                  goto LABEL_119;
                }

                v23 = v22 + v11;
                v24 = v22 + v19;
                v25 = *v23;
                v26 = *(v23 + 8);
                v27 = *(v23 + 9);
                v28 = v11 != v19 || v23 >= v24 + 16;
                if (v28)
                {
                  *v23 = *v24;
                }

                *v24 = v25;
                *(v24 + 8) = v26;
                *(v24 + 9) = v27;
              }

              ++v21;
              v19 -= 16;
              v11 += 16;
            }

            while (v21 < v20);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_113;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_115;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
LABEL_121:
            __break(1u);
            return;
          }

          if (v9 != v6)
          {
            v29 = *a3;
            v30 = *a3 + 16 * v9 + 9;
            v31 = v7 - v9;
            do
            {
              v32 = v31;
              v33 = v30;
              do
              {
                v34 = v33 - 9;
                v35 = *(v33 - 9);
                if (*(v33 - 25) >= v35)
                {
                  break;
                }

                if (!v29)
                {
                  goto LABEL_117;
                }

                v36 = *(v33 - 25);
                *(v33 - 16) = *v33;
                v33 -= 16;
                v37 = v33[15];
                *v34 = v36;
                *(v33 - 9) = v35;
                *(v33 - 1) = v37;
                v28 = __CFADD__(v32++, 1);
              }

              while (!v28);
              ++v9;
              v30 += 16;
              --v31;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_112;
      }

      v86 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10047002C(0, v8[2] + 1, 1, v8);
        v8 = v82;
      }

      v39 = v8[2];
      v38 = v8[3];
      v40 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        sub_10047002C(v38 > 1, v39 + 1, 1, v8);
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v7;
      v42[1] = v9;
      v87 = *result;
      if (!*result)
      {
        goto LABEL_120;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_62:
            if (v49)
            {
              goto LABEL_102;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_105;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_108;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_110;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_84;
            }

            goto LABEL_77;
          }

          if (v40 < 2)
          {
            goto LABEL_104;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_77:
          if (v64)
          {
            goto LABEL_107;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_109;
          }

          if (v71 < v63)
          {
            goto LABEL_91;
          }

LABEL_84:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
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
            goto LABEL_116;
          }

          if (!*a3)
          {
            goto LABEL_118;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_1003A57BC((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v87);
          if (v5)
          {
            goto LABEL_95;
          }

          if (v78 < v76)
          {
            goto LABEL_97;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_98;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_99;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          v5 = 0;
          if (!v81)
          {
            goto LABEL_91;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_100;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_101;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_103;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_106;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_111;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_84;
        }

        goto LABEL_62;
      }

LABEL_91:
      v6 = a3[1];
      v7 = v86;
      a4 = v84;
      if (v86 >= v6)
      {
        v89 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_121;
  }

  sub_1003A5690(&v89, *result, a3);
LABEL_95:
}

uint64_t sub_1003A5690(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1003A5940(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1003A57BC((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1003A57BC(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_100060528(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*v4 >= *v6)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 16;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 16;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v12;
    goto LABEL_13;
  }

  sub_100060528(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_15:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    if (*v14 < *(v10 - 2))
    {
      v13 = v5 + 16 == v6;
      v6 -= 16;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_28:
  v16 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v16])
  {
    memmove(v6, v4, 16 * v16);
  }

  return 1;
}

char *sub_1003A5954(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_1003A5980(char *result, int64_t a2, char a3, char *a4)
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
    sub_10026D814(&qword_1006A81C0, &qword_100583B58);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void *sub_1003A5A80(uint64_t a1, void *a2)
{
  v3 = a1;
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = a2;
  v8 = v7;
  if (v5 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();
      v14 = v8;
      v3 = sub_1003A5F9C(v13, v6, v3, v14);

      goto LABEL_6;
    }
  }

  __chkstk_darwin(v7);
  v9 = &v15 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_100396044(0, v6, v9);
  v10 = v8;
  v11 = sub_1003A5C34(v9, v6, v3, v10);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v3 = v11;
  }

LABEL_6:
  return v3;
}

uint64_t sub_1003A5C34(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v35 = a2;
  v47 = a4;
  v36 = a1;
  v45 = sub_10026D814(&qword_1006A81D0, &qword_100583B78);
  v5 = __chkstk_darwin(v45);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v43 = &v35 - v8;
  v9 = type metadata accessor for SharePlayAvailabilityManager.CallAndHandle(0);
  v41 = *(v9 - 8);
  v42 = v9;
  result = __chkstk_darwin(v9);
  v40 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = 0;
  v12 = 0;
  v46 = a3;
  v15 = a3[8];
  v14 = a3 + 8;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v44 = v7;
  v39 = v7 + 8;
  v19 = (v16 + 63) >> 6;
  v20 = v40;
  while (v18)
  {
    v21 = __clz(__rbit64(v18));
    v49 = (v18 - 1) & v18;
LABEL_11:
    v24 = v21 | (v12 << 6);
    v25 = v46;
    sub_10037A8AC(v46[6] + *(v41 + 72) * v24, v20);
    v26 = v25[7];
    v27 = swift_allocObject();
    v38 = v24;
    v48 = *(v26 + 16 * v24);
    *(v27 + 16) = v48;
    v28 = v43;
    sub_10037A8AC(v20, v43);
    v29 = v44;
    v30 = (v28 + *(v45 + 48));
    *v30 = &unk_100583B98;
    v30[1] = v27;
    sub_100285FC4(v28, v29, &qword_1006A81D0, &qword_100583B78);
    swift_retain_n();

    v31 = *(v29 + *(v42 + 20));
    sub_1002DB508(v29);
    LODWORD(v29) = [v31 isEquivalentToHandle:{v47, v35}];

    sub_100009A04(v28, &qword_1006A81D0, &qword_100583B78);

    result = sub_1002DB508(v20);
    v18 = v49;
    if (v29)
    {
      *(v36 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
      if (__OFADD__(v37++, 1))
      {
        __break(1u);
LABEL_15:
        sub_100384D9C(v36, v35, v37, v46);
        v34 = v33;

        return v34;
      }
    }
  }

  v22 = v12;
  while (1)
  {
    v12 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      goto LABEL_15;
    }

    v23 = v14[v12];
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v49 = (v23 - 1) & v23;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1003A5F9C(void *result, uint64_t a2, void *a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    v9 = sub_1003A5C34(v7, a2, a3, v8);

    return v9;
  }

  return result;
}

uint64_t sub_1003A6080()
{
  sub_1000066BC();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  v9 = sub_100008A48(v8);
  *v9 = v10;
  v9[1] = sub_100035FE4;

  return sub_1003A426C(v6, v4, v2, v7);
}

uint64_t sub_1003A6148(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A81D8, &qword_100583B80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003A61B8()
{
  sub_1000066BC();
  v0 = swift_task_alloc();
  v1 = sub_100008A48(v0);
  *v1 = v2;
  v3 = sub_100008BE4(v1);

  return v4(v3);
}

uint64_t sub_1003A6258()
{
  sub_1000066BC();
  v0 = swift_task_alloc();
  v1 = sub_100008A48(v0);
  *v1 = v2;
  v1[1] = sub_100035FE0;
  v3 = sub_100007624();

  return v4(v3);
}

uint64_t initializeBufferWithCopyOfBuffer for SharePlayAvailabilityManager.AvailabilityIndicator(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SharePlayAvailabilityManager.AvailabilityIndicator(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 10))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 9);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SharePlayAvailabilityManager.AvailabilityIndicator(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 1;
    }
  }

  return result;
}

NSString sub_1003A63E4()
{
  result = String._bridgeToObjectiveC()();
  qword_1006BA4A8 = result;
  return result;
}

NSString sub_1003A641C()
{
  result = String._bridgeToObjectiveC()();
  qword_1006BA4B0 = result;
  return result;
}

NSString sub_1003A6454()
{
  result = String._bridgeToObjectiveC()();
  qword_1006BA4B8 = result;
  return result;
}

uint64_t sub_1003A648C()
{
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  swift_unknownObjectWeakInit();
  *(v0 + 72) = 0;
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  v3 = qword_1006A0AD8;

  if (v3 != -1)
  {
    v4 = swift_once();
  }

  sub_100009FC0(v4, v5, v6, v7, qword_1006BA4A8);

  v8 = [v1 defaultCenter];
  v9 = qword_1006A0AE0;

  if (v9 != -1)
  {
    v10 = swift_once();
  }

  sub_100009FC0(v10, v11, v12, v13, qword_1006BA4B0);

  v14 = [v1 defaultCenter];
  v15 = qword_1006A0AE8;

  if (v15 != -1)
  {
    swift_once();
  }

  [v14 addObserver:v0 selector:"recurringDisclosureFinishedNotification:" name:qword_1006BA4B8 object:0];

  return v0;
}

uint64_t sub_1003A66D8(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{
  v5 = a3;

  a4(v6);
}

void sub_1003A675C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100007FDC();
  v14 = v13 - v12;
  v38 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_100007FDC();
  v20 = v19 - v18;
  if (qword_1006A0B40 != -1)
  {
    sub_1000080FC(&qword_1006A0B40);
  }

  v21 = type metadata accessor for Logger();
  sub_10000AF9C(v21, qword_1006BA640);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  if (sub_10000BB44(v23))
  {
    v36 = v20;
    v24 = v14;
    v25 = v7;
    v26 = v8;
    v27 = v16;
    v28 = v10;
    v29 = a3;
    v30 = a4;
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, a2, v31, 2u);
    v32 = v31;
    a4 = v30;
    a3 = v29;
    v10 = v28;
    v16 = v27;
    v8 = v26;
    v7 = v25;
    v14 = v24;
    v20 = v36;
    sub_100005F40(v32);
  }

  v33 = *(v7 + 56);
  if (v33)
  {
    aBlock[4] = a3;
    aBlock[5] = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004CEC;
    aBlock[3] = a4;
    v34 = _Block_copy(aBlock);
    v35 = v33;

    static DispatchQoS.unspecified.getter();
    sub_10000AC00();
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_1000057D0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v34);

    (*(v10 + 8))(v14, v8);
    (*(v16 + 8))(v20, v38);
  }
}

uint64_t sub_1003A6A60(uint64_t a1, void (*a2)(void))
{
  sub_1002A949C();
  swift_beginAccess();
  sub_1003A72E8(a1 + 16, v6);
  if (!v7)
  {
    return sub_1003A7358(v6);
  }

  sub_100009AB0(v6, v5);
  sub_1003A7358(v6);
  sub_100009B14(v5, v5[3]);
  a2();
  return sub_100009B7C(v5);
}

uint64_t sub_1003A6B10(void *a1)
{
  [a1 askProviderToAllowAudioInjection:1];

  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1003A6B70(void *a1, const char *a2)
{
  if (qword_1006A0B40 != -1)
  {
    sub_1000080FC(&qword_1006A0B40);
  }

  v4 = type metadata accessor for Logger();
  sub_10000AF9C(v4, qword_1006BA640);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (sub_10000BB44(v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, a2, v7, 2u);
    sub_100005F40(v7);
  }

  [a1 askProviderToAllowAudioInjection:1];

  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1003A6C64(char a1)
{
  v2 = v1;
  type metadata accessor for DispatchTime();
  sub_100007FEC();
  v36 = v5;
  v37 = v4;
  v6 = __chkstk_darwin(v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v35 = &v35 - v9;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v10);
  sub_100007FDC();
  if (qword_1006A0B40 != -1)
  {
    sub_1000080FC(&qword_1006A0B40);
  }

  v11 = type metadata accessor for Logger();
  sub_10000AF9C(v11, qword_1006BA640);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (sub_10000BB44(v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Setting up recurring disclosure", v14, 2u);
    sub_100005F40(v14);
  }

  aBlock[4] = sub_1003A7250;
  aBlock[5] = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_10062B910;
  _Block_copy(aBlock);
  v38 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
  sub_10000AC00();

  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  v15 = DispatchWorkItem.init(flags:block:)();

  *(v2 + 72) = v15;

  v16 = sub_1003A725C(0x3DuLL) - 30;
  v17 = 240.0;
  if (a1)
  {
    v17 = 420.0;
  }

  v18 = v17 + v16;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (sub_10000BB44(v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock[0] = v22;
    *v21 = 136315394;
    v38 = v18;
    v23 = String.init<A>(reflecting:)();
    v25 = sub_10002741C(v23, v24, aBlock);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    v38 = *&v16;
    v26 = String.init<A>(reflecting:)();
    v28 = sub_10002741C(v26, v27, aBlock);

    *(v21 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v19, v20, "Scheduing recurring disclosure for %s seconds from now with randomness %s", v21, 0x16u);
    swift_arrayDestroy();
    sub_100005F40(v22);
    sub_100005F40(v21);
  }

  v29 = *(v2 + 56);
  if (!v29)
  {
  }

  v30 = v29;
  static DispatchTime.now()();
  v31 = v35;
  + infix(_:_:)();
  v32 = v37;
  v33 = *(v36 + 8);
  v33(v8, v37);
  OS_dispatch_queue.asyncAfter(deadline:execute:)();

  return (v33)(v31, v32);
}

uint64_t sub_1003A70D4(uint64_t a1)
{
  swift_beginAccess();
  sub_1003A72E8(a1 + 16, v4);
  if (!v5)
  {
    return sub_1003A7358(v4);
  }

  sub_100009AB0(v4, v3);
  sub_1003A7358(v4);
  sub_100009B14(v3, v3[3]);
  sub_1003E7358();
  return sub_100009B7C(v3);
}

uint64_t sub_1003A7160()
{
  if (*(v0 + 72))
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  *(v0 + 72) = 0;

  return sub_1002A949C();
}

uint64_t sub_1003A71C0()
{
  sub_1003A7358(v0 + 16);

  sub_100060500(v0 + 64);

  return v0;
}

uint64_t sub_1003A71F8()
{
  sub_1003A71C0();

  return _swift_deallocClassInstance(v0, 80, 7);
}

unint64_t sub_1003A725C(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003A72E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006AA250, &qword_100583C78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003A7358(uint64_t a1)
{
  v2 = sub_10026D814(&qword_1006AA250, &qword_100583C78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003A745C(int a1)
{
  v1 = 0xE700000000000000;
  v2 = 0x64656C62616E65;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  if (!a1)
  {
    v4 = 0x64656C6261736964;
    v3 = 0xE800000000000000;
  }

  if (a1 != 1)
  {
    v2 = v4;
    v1 = v3;
  }

  v5 = a1 == 2;
  if (a1 == 2)
  {
    v6 = 0x646573756170;
  }

  else
  {
    v6 = v2;
  }

  if (v5)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = v1;
  }

  v8 = v7;
  String.append(_:)(*&v6);
}

uint64_t AVCSessionMediaState.description.getter(int a1)
{
  v1 = 0x64656C62616E65;
  v2 = 0x6E776F6E6B6E75;
  if (!a1)
  {
    v2 = 0x64656C6261736964;
  }

  if (a1 != 1)
  {
    v1 = v2;
  }

  if (a1 == 2)
  {
    return 0x646573756170;
  }

  else
  {
    return v1;
  }
}

uint64_t AVCSessionMediaType.description.getter(int a1)
{
  v1 = 0x7065526E696F63;
  v2 = 0x6E776F6E6B6E75;
  if (a1 == 6)
  {
    v2 = 0x6F576172656D6163;
  }

  if (a1 != 8)
  {
    v1 = v2;
  }

  if (a1 == 1)
  {
    return 0x6172656D6163;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1003A7600(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = sub_1002DA540(1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = *(*(a1 + 56) + 4 * v2);
  v5 = sub_1002CB384(6, a1);
  if ((v5 & 0x100000000) != 0)
  {
    return 0;
  }

  v6 = v5;
  v7 = sub_1002CB384(8, a1);
  if ((v7 & 0x100000000) == 0)
  {
    v8 = v7;
    _StringGuts.grow(_:)(56);
    v9._countAndFlagsBits = 0x6361736E6172745BLL;
    v9._object = 0xEF3A44496E6F6974;
    String.append(_:)(v9);
    v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v10);

    v11._countAndFlagsBits = 0x6172656D61632E20;
    v11._object = 0xE90000000000003ALL;
    String.append(_:)(v11);
    sub_1003A745C(v4);
    v12._object = 0xED00003A666C6F57;
    v12._countAndFlagsBits = 0x6172656D61632E20;
    String.append(_:)(v12);
    sub_1003A745C(v6);
    v13._countAndFlagsBits = 0x65526E696F632E20;
    v13._object = 0xEA00000000003A70;
    String.append(_:)(v13);
    sub_1003A745C(v8);
    v14._countAndFlagsBits = 93;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
  }

  return 0;
}

unint64_t sub_1003A7810()
{
  v0 = 0xD000000000000012;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    return 0xD00000000000001ALL;
  }

  else
  {
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      _StringGuts.grow(_:)(35);

      [v3 participantID];
      v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v4);

      v5._countAndFlagsBits = 14889;
      v5._object = 0xE200000000000000;
      String.append(_:)(v5);

      return 0xD00000000000001FLL;
    }
  }

  return v0;
}

unint64_t sub_1003A7930(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 4 * v12);
    result = sub_1002DA540(*(*(v3 + 48) + 4 * v12));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + 4 * result) != v13)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003A7A38()
{

  v1 = OBJC_IVAR____TtC13callservicesd30CSDAVCSessionMediaStateManager_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100060500(v0 + OBJC_IVAR____TtC13callservicesd30CSDAVCSessionMediaStateManager_delegate);

  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  return v0;
}

uint64_t sub_1003A7AF8()
{
  sub_1003A7A38();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for CSDAVCSessionMediaStateManager(uint64_t a1)
{
  result = qword_1006A8388;
  if (!qword_1006A8388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003A7BA4(uint64_t a1)
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

uint64_t sub_1003A7C7C(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_1003A7C90(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 12))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003A7CD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 12) = 1;
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

    *(result + 12) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003A7D44(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x8000000100570A70 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000100570A90 == a2)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_1003A7E18(char a1)
{
  if (a1)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1003A7E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1003A7D44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1003A7E80(uint64_t a1)
{
  v2 = sub_1003A9408();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003A7EBC(uint64_t a1)
{
  v2 = sub_1003A9408();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003A7EF8()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_1006BA4D8 = result;
  unk_1006BA4E0 = v1;
  return result;
}

uint64_t sub_1003A7F28(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for SceneAssociationBehavior();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for GroupActivityMetadata.ActivityType();
  __chkstk_darwin(v3 - 8);
  GroupActivityMetadata.init()();
  static GroupActivityMetadata.ActivityType.screenSharing.getter();
  GroupActivityMetadata.type.setter();
  sub_10031E958(0x535F4E4545524353, 0xEE00474E49524148);
  GroupActivityMetadata.localizedTitle.setter();

  GroupActivityMetadata.localizedSubtitle.setter();
  GroupActivityMetadata.supportsContinuationOnTV.setter();
  static SceneAssociationBehavior.none.getter();
  return GroupActivityMetadata.sceneAssociationBehavior.setter();
}

uint64_t sub_1003A8058(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[0] = a4;
  v6 = sub_10026D814(&qword_1006A8598, &qword_100583FB8);
  sub_100007FEC();
  v8 = v7;
  sub_100006688();
  __chkstk_darwin(v9);
  v11 = v16 - v10;
  sub_100009B14(a1, a1[3]);
  sub_1003A9408();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v4)
  {
    v16[1] = v16[0];
    v17 = 1;
    type metadata accessor for CodableRemoteScreenShareAttributes();
    sub_100010454();
    sub_1003A9710(v12, v13, v14, &unk_100583EB8);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v6);
}

uint64_t sub_1003A81FC(void *a1)
{
  v2 = sub_10026D814(&qword_1006A8588, &qword_100583FB0);
  sub_100007FEC();
  v4 = v3;
  sub_100006688();
  __chkstk_darwin(v5);
  v7 = &v13[-v6];
  sub_100009B14(a1, a1[3]);
  sub_1003A9408();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v14 = 0;
  v8 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  type metadata accessor for CodableRemoteScreenShareAttributes();
  v13[15] = 1;
  sub_100010454();
  sub_1003A9710(v9, v10, v11, &unk_100583EE0);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v4 + 8))(v7, v2);
  sub_100009B7C(a1);
  return v8;
}

unint64_t sub_1003A83E0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100620B38, v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1003A8434(char a1)
{
  result = 0x6146656369766564;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0x656C797473;
      break;
    case 3:
      result = 0x5379616C70736964;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    case 5:
      result = 0x636146656C616373;
      break;
    case 6:
      result = 0x615272656E726F63;
      break;
    case 7:
    case 8:
      result = 0x6C616E696769726FLL;
      break;
    case 9:
      result = 0x776F646E69577369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1003A857C()
{
  if (qword_1006A0AF0 != -1)
  {
    swift_once();
  }

  v0 = qword_1006BA4D8;

  return v0;
}

uint64_t sub_1003A85E4()
{
  sub_1003A7F28(*v0, v0[1]);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1003A8654@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1003A81FC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_1003A86C8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1003A83E0(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1003A86F8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1003A8434(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1003A8740@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1003A842C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1003A8774(uint64_t a1)
{
  v2 = sub_1003A945C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003A87B0(uint64_t a1)
{
  v2 = sub_1003A945C();

  return CodingKey.debugDescription.getter(a1, v2);
}

id sub_1003A8810(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1003A88A4(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, "initWithAttributes:", a1);
  swift_unknownObjectRelease();
  return v3;
}

void *sub_1003A8974(void *a1)
{
  ObjectType = swift_getObjectType();
  v5 = sub_10026D814(&qword_1006A85F0, &qword_100583FE0);
  sub_100007FEC();
  v7 = v6;
  sub_100006688();
  __chkstk_darwin(v8);
  v10 = &v33 - v9;
  v40.receiver = v1;
  v40.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v40, "init");
  sub_100009B14(a1, a1[3]);
  sub_1003A945C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
  }

  else
  {
    LOBYTE(v35) = 0;
    sub_10001525C();
    [v11 setDeviceFamily:KeyedDecodingContainer.decode(_:forKey:)()];
    sub_1000086A8(1);
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if ((v14 & 1) == 0)
    {
      [v11 setDeviceHomeButtonType:v13];
    }

    sub_1000086A8(2);
    [v11 setStyle:KeyedDecodingContainer.decode(_:forKey:)()];
    sub_1000086A8(3);
    v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if ((v16 & 1) == 0)
    {
      v17 = *&v15;
      sub_1000496D4();
      isa = NSNumber.init(floatLiteral:)(v17).super.super.isa;
      sub_1000172C0(isa, "setDisplayScale:");
    }

    sub_1000086A8(5);
    v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if ((v20 & 1) == 0)
    {
      v21 = *&v19;
      sub_1000496D4();
      v22 = NSNumber.init(floatLiteral:)(v21).super.super.isa;
      sub_1000172C0(v22, "setScaleFactor:");
    }

    v41 = 7;
    sub_1003A96BC();
    sub_10001525C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    if ((BYTE8(v35) & 1) == 0)
    {
      v31 = *&v35;
      v41 = 8;
      sub_10001525C();
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      if ((BYTE8(v35) & 1) == 0)
      {
        v32 = [objc_opt_self() valueWithRect:{0.0, 0.0, v31, *&v35}];
        sub_1000172C0(v32, "setOriginalResolution:");
      }
    }

    sub_1000086A8(6);
    v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if ((v24 & 1) == 0)
    {
      v25 = *&v23;
      sub_1000496D4();
      v26 = NSNumber.init(floatLiteral:)(v25).super.super.isa;
      sub_1000172C0(v26, "setCornerRadius:");
    }

    type metadata accessor for CGAffineTransform(0);
    v41 = 4;
    sub_1003A9710(&qword_1006A8600, 255, type metadata accessor for CGAffineTransform, &protocol conformance descriptor for CGAffineTransform);
    sub_10001525C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    if ((v39 & 1) == 0)
    {
      v28 = v37;
      v27 = v38;
      v33 = v36;
      v34 = v35;
      v29 = objc_opt_self();
      v36 = v33;
      v35 = v34;
      v37 = v28;
      v38 = v27;
      v30 = [v29 bs_valueWithCGAffineTransform:&v35];
      sub_1000172C0(v30, "setSystemRootLayerTransform:");
    }

    sub_1000086A8(9);
    [v11 setWindowed:KeyedDecodingContainer.decodeIfPresent(_:forKey:)() & 1];
    (*(v7 + 8))(v10, v5);
  }

  sub_100009B7C(a1);
  return v11;
}

uint64_t sub_1003A8E08(void *a1)
{
  v3 = v1;
  v5 = sub_10026D814(&qword_1006A85A0, &qword_100583FC0);
  sub_100007FEC();
  v7 = v6;
  sub_100006688();
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  sub_100009B14(a1, a1[3]);
  sub_1003A945C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  [v3 deviceFamily];
  LOBYTE(v30) = 0;
  sub_10000F770();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    [v3 deviceHomeButtonType];
    LOBYTE(v30) = 1;
    sub_10000F770();
    KeyedEncodingContainer.encode(_:forKey:)();
    [v3 style];
    LOBYTE(v30) = 2;
    sub_10000F770();
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = [v3 displayScale];
    v12 = v11;
    if (v11)
    {
      [v11 doubleValue];
    }

    sub_1000182B0();
    v34 = 3;
    sub_10026D814(&qword_1006A85B0, &qword_100583FC8);
    sub_1003A94B0();
    sub_10000A2B0();
    v13 = [v3 scaleFactor];
    v14 = v13;
    if (v13)
    {
      [v13 doubleValue];
    }

    sub_1000182B0();
    v34 = 5;
    sub_10000A2B0();
    v15 = [v3 systemRootLayerTransform];
    v16 = v15;
    if (v15)
    {
      [v15 bs_CGAffineTransformValue];
      v28 = v31;
      v29 = v30;
      v27 = v32;

      v18 = v27;
      v17 = v28;
      v19 = v29;
    }

    else
    {
      v19 = 0uLL;
      v17 = 0uLL;
      v18 = 0uLL;
    }

    v30 = v19;
    v31 = v17;
    v32 = v18;
    v33 = v16 == 0;
    v34 = 4;
    sub_10026D814(&qword_1006A85C0, &qword_100583FD0);
    sub_1003A952C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v20 = [v3 cornerRadius];
    v21 = v20;
    if (v20)
    {
      [v20 doubleValue];
    }

    sub_1000182B0();
    v34 = 6;
    sub_10000A2B0();
    v22 = [v3 originalResolution];
    if (v22)
    {
      [v22 rectValue];
      sub_10000FEB4();
      v35.origin.x = sub_10001145C();
      Width = CGRectGetWidth(v35);
    }

    else
    {
      Width = 0.0;
    }

    sub_10000EAD8(Width);
    v34 = 7;
    sub_10026D814(&qword_1006A85D8, &qword_100583FD8);
    sub_1003A95E4();
    sub_10000A2B0();
    v24 = [v3 originalResolution];
    if (v24)
    {
      [v24 rectValue];
      sub_10000FEB4();
      v36.origin.x = sub_10001145C();
      Height = CGRectGetHeight(v36);
    }

    else
    {
      Height = 0.0;
    }

    sub_10000EAD8(Height);
    v34 = 8;
    sub_10000A2B0();
    [v3 isWindowed];
    LOBYTE(v30) = 9;
    sub_10000F770();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1003A92A4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003A92F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_1003A935C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1003A8930(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1003A93B4()
{
  result = qword_1006A8580;
  if (!qword_1006A8580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A8580);
  }

  return result;
}

unint64_t sub_1003A9408()
{
  result = qword_1006A8590;
  if (!qword_1006A8590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A8590);
  }

  return result;
}

unint64_t sub_1003A945C()
{
  result = qword_1006A85A8;
  if (!qword_1006A85A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A85A8);
  }

  return result;
}

unint64_t sub_1003A94B0()
{
  result = qword_1006A85B8;
  if (!qword_1006A85B8)
  {
    sub_10026DCB4(&qword_1006A85B0, &qword_100583FC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A85B8);
  }

  return result;
}

unint64_t sub_1003A952C()
{
  result = qword_1006A85C8;
  if (!qword_1006A85C8)
  {
    sub_10026DCB4(&qword_1006A85C0, &qword_100583FD0);
    sub_1003A9710(&qword_1006A85D0, 255, type metadata accessor for CGAffineTransform, &protocol conformance descriptor for CGAffineTransform);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A85C8);
  }

  return result;
}

unint64_t sub_1003A95E4()
{
  result = qword_1006A85E0;
  if (!qword_1006A85E0)
  {
    sub_10026DCB4(&qword_1006A85D8, &qword_100583FD8);
    sub_1003A9668();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A85E0);
  }

  return result;
}

unint64_t sub_1003A9668()
{
  result = qword_1006A85E8;
  if (!qword_1006A85E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A85E8);
  }

  return result;
}

unint64_t sub_1003A96BC()
{
  result = qword_1006A85F8;
  if (!qword_1006A85F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A85F8);
  }

  return result;
}

uint64_t sub_1003A9710(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t getEnumTagSinglePayload for CodableRemoteScreenShareAttributes.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CodableRemoteScreenShareAttributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ScreenSharingActivity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1003A999C()
{
  result = qword_1006A8608;
  if (!qword_1006A8608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A8608);
  }

  return result;
}

unint64_t sub_1003A99F4()
{
  result = qword_1006A8610;
  if (!qword_1006A8610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A8610);
  }

  return result;
}

unint64_t sub_1003A9A4C()
{
  result = qword_1006A8618;
  if (!qword_1006A8618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A8618);
  }

  return result;
}

unint64_t sub_1003A9AA4()
{
  result = qword_1006A8620;
  if (!qword_1006A8620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A8620);
  }

  return result;
}

unint64_t sub_1003A9AFC()
{
  result = qword_1006A8628;
  if (!qword_1006A8628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A8628);
  }

  return result;
}

unint64_t sub_1003A9B54()
{
  result = qword_1006A8630;
  if (!qword_1006A8630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A8630);
  }

  return result;
}

uint64_t sub_1003A9BAC(unint64_t a1)
{
  if (a1 >= 7)
  {
    return 6;
  }

  else
  {
    return (0x5040302010006uLL >> (8 * a1));
  }
}

uint64_t sub_1003A9BF8@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1003A9BAC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1003A9C24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1003A9BD4(*v1);
  *a1 = result;
  return result;
}

id sub_1003A9CA0(void *a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtC13callservicesd22RTCCSDRelayDeviceRoute_failed] = 2;
  v4 = [a1 deviceType];
  if ((v4 - 6) > 0x16)
  {
    v5 = 6;
  }

  else
  {
    v5 = byte_1005844A6[(v4 - 6)];
  }

  v1[OBJC_IVAR____TtC13callservicesd22RTCCSDRelayDeviceRoute_type] = v5;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, "init");

  return v6;
}

uint64_t sub_1003A9D88(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1003A9E4C(char a1)
{
  if (a1)
  {
    return 0x64656C696166;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1003A9E80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1003A9D88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1003A9EA8(uint64_t a1)
{
  v2 = sub_1003AA32C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003A9EE4(uint64_t a1)
{
  v2 = sub_1003AA32C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t getEnumTagSinglePayload for RTCCSDRelayDeviceRoute.RTCCSDAudioRouteType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RTCCSDRelayDeviceRoute.RTCCSDAudioRouteType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1003AA0AC()
{
  result = qword_1006A8670;
  if (!qword_1006A8670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A8670);
  }

  return result;
}

uint64_t sub_1003AA100(void *a1)
{
  v3 = v1;
  v5 = sub_10026D814(&qword_1006A8678, &qword_100584388);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_100009B14(a1, a1[3]);
  sub_1003AA32C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = *(v3 + OBJC_IVAR____TtC13callservicesd22RTCCSDRelayDeviceRoute_type);
  v10[14] = 0;
  sub_1003AA380();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v10[13] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1003AA2B0(uint64_t a1)
{
  result = sub_1003AA2D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1003AA2D8()
{
  result = qword_1006A6D10;
  if (!qword_1006A6D10)
  {
    type metadata accessor for RTCCSDRelayDeviceRoute();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A6D10);
  }

  return result;
}

unint64_t sub_1003AA32C()
{
  result = qword_1006A8680;
  if (!qword_1006A8680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A8680);
  }

  return result;
}

unint64_t sub_1003AA380()
{
  result = qword_1006A8688;
  if (!qword_1006A8688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A8688);
  }

  return result;
}

unint64_t sub_1003AA3D4()
{
  result = qword_1006A8690;
  if (!qword_1006A8690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A8690);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RTCCSDRelayDeviceRoute.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1003AA508()
{
  result = qword_1006A8698;
  if (!qword_1006A8698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A8698);
  }

  return result;
}

unint64_t sub_1003AA560()
{
  result = qword_1006A86A0;
  if (!qword_1006A86A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A86A0);
  }

  return result;
}

unint64_t sub_1003AA5B8()
{
  result = qword_1006A86A8;
  if (!qword_1006A86A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A86A8);
  }

  return result;
}

double sub_1003AA824(uint64_t *a1)
{
  swift_beginAccess();

  return result;
}

uint64_t sub_1003AA8F0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

uint64_t sub_1003AA9AC()
{
  swift_getObjectType();
  v11 = _typeName(_:qualified:)();
  v0._countAndFlagsBits = 40;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);
  swift_unknownObjectRetain();
  sub_10026D814(&unk_1006A8710, &unk_1005844E8);
  v1._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v1);

  sub_100008000();

  v2._countAndFlagsBits = 0x3D73746E656D6F6DLL;
  v2._object = 0xE800000000000000;
  String.append(_:)(v2);

  _StringGuts.grow(_:)(25);

  swift_beginAccess();

  sub_10026D814(&qword_1006A2BE0, &unk_10057E8B0);
  v3._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v3);

  sub_100008000();

  v4._countAndFlagsBits = 0xD000000000000016;
  v4._object = 0x8000000100570D00;
  String.append(_:)(v4);

  _StringGuts.grow(_:)(16);

  strcpy(&v10, "isRegistered=");
  HIWORD(v10._object) = -4864;
  v5._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v5);

  sub_100008000();

  String.append(_:)(v10);

  _StringGuts.grow(_:)(33);

  swift_beginAccess();

  sub_10026D814(&unk_1006A8720, &qword_1005844F8);
  v6._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v6);

  sub_100008000();

  v7._countAndFlagsBits = 0xD00000000000001ELL;
  v7._object = 0x8000000100570D20;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 41;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);

  return v11;
}

id sub_1003AAD1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v3[OBJC_IVAR___CSDMomentsControllerSession_isRegistered] = 1;
  *&v3[OBJC_IVAR___CSDMomentsControllerSession_activeRequestsByTransactionID] = _swiftEmptyDictionarySingleton;
  *&v3[OBJC_IVAR___CSDMomentsControllerSession_moments] = a1;
  *&v3[OBJC_IVAR___CSDMomentsControllerSession_remoteIDSDestinations] = a2;
  *&v3[OBJC_IVAR___CSDMomentsControllerSession_callCenterObserver] = a3;
  v9.receiver = v3;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "init");
}

uint64_t sub_1003AAE30(uint64_t a1, uint64_t a2)
{
  v21 = 0;
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 queue];

  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = &v21;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1003AB8F0;
  *(v8 + 24) = v7;
  aBlock[4] = sub_1000200A4;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002007C;
  aBlock[3] = &unk_10062BD50;
  v9 = _Block_copy(aBlock);

  v10 = v2;

  dispatch_sync(v6, v9);

  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    if (v21)
    {
      v13 = sub_100004778(result);
      v14 = static os_log_type_t.default.getter();
      if (a2)
      {
        os_log(_:dso:log:type:_:)("MomentsControllerSession: GroupFaceTime", 39, 2, &_mh_execute_header, v13, v14, _swiftEmptyArrayStorage);

        v15 = OBJC_IVAR___CSDMomentsControllerSession_remoteIDSDestinations;
        swift_beginAccess();
        v16 = sub_1002CB47C(a1, a2, *&v10[v15]);
        swift_endAccess();
      }

      else
      {
        os_log(_:dso:log:type:_:)("MomentsControllerSession: FaceTime 1:1", 38, 2, &_mh_execute_header, v13, v14, _swiftEmptyArrayStorage);

        swift_beginAccess();

        v16 = sub_1002E8EA8(v19);
      }
    }

    else
    {
      v17 = sub_100004778(result);
      v18 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("MomentsControllerSession: no streamtoken found", 46, 2, &_mh_execute_header, v17, v18, _swiftEmptyArrayStorage);

      return 0;
    }

    return v16;
  }

  return result;
}

void sub_1003AB14C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v32 = *(a1 + OBJC_IVAR___CSDMomentsControllerSession_callCenterObserver);
  v6 = [v32 callContainer];
  aBlock[4] = sub_1003AA60C;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002E470;
  aBlock[3] = &unk_10062BD78;
  v7 = _Block_copy(aBlock);

  v8 = [v6 callsPassingTest:v7];
  swift_unknownObjectRelease();
  _Block_release(v7);
  if (swift_isEscapingClosureAtFileLocation())
  {
    goto LABEL_28;
  }

  sub_100015958();
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = sub_10000B6F4(v9);
  if (!v10)
  {
LABEL_25:

    return;
  }

  v11 = v10;
  v12 = 0;
  v33 = OBJC_IVAR___CSDMomentsControllerSession_moments;
  v13 = v9 & 0xC000000000000001;
  v30 = v9 & 0xFFFFFFFFFFFFFF8;
  v31 = v9;
  if ((v9 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

LABEL_4:
  for (i = specialized _ArrayBuffer._getElementSlowPath(_:)(); ; i = *(v9 + 8 * v12 + 32))
  {
    v15 = i;
    v16 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (a3)
    {
      v17 = [v32 activeConversationForCall:i];
      if (!v17)
      {

        if ((*a4 & 1) != 0 || v16 == v11)
        {
          goto LABEL_25;
        }

        goto LABEL_23;
      }

      v18 = v17;
      v19 = v11;
      v20 = v13;
      v21 = a3;
      v22 = a4;
      v23 = [v17 avcSessionToken];
      v24 = [*(a1 + v33) streamToken];

      v25 = v23 == v24;
      a4 = v22;
      a3 = v21;
      v13 = v20;
      v11 = v19;
      v9 = v31;
    }

    else
    {
      v26 = [i videoStreamToken];
      v27 = [*(a1 + v33) streamToken];

      v25 = v26 == v27;
    }

    v28 = v25;
    *a4 = v28;
    if (v25 || v16 == v11)
    {
      goto LABEL_25;
    }

LABEL_23:
    ++v12;
    if (v13)
    {
      goto LABEL_4;
    }

LABEL_5:
    if (v12 >= *(v30 + 16))
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

id sub_1003AB408(void *a1)
{
  result = [a1 isVideo];
  if (result)
  {
    if ([a1 status] == 1)
    {
      return ([a1 isVideoPaused] ^ 1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1003AB478(void *a1, SEL *a2)
{
  if (a1 && (v2 = [a1 *a2]) != 0)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = sub_1003AAE30(v4, v6);

  return v7;
}

id sub_1003AB504(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = a1;
  v6 = swift_unknownObjectRetain();
  sub_1003AB478(v6, a4);
  v8 = v7;
  swift_unknownObjectRelease();

  if (v8)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t sub_1003AB598(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = OBJC_IVAR___CSDMomentsControllerSession_activeRequestsByTransactionID;
  swift_beginAccess();
  v9 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100379D24(v9, a2, a3, isUniquelyReferenced_nonNull_native, v11, v12, v13, v14, *(v4 + v8), v17);
  *(v4 + v8) = v16;
  return swift_endAccess();
}

uint64_t sub_1003AB6B0(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR___CSDMomentsControllerSession_activeRequestsByTransactionID;
  swift_beginAccess();
  v6 = sub_100005208(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v2 + v5);
    v10 = *(v13 + 24);
    sub_10026D814(&unk_1006A8700, &unk_100582730);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v10);

    v11 = *(*(v13 + 56) + 8 * v8);
    type metadata accessor for MomentsRequest();
    _NativeDictionary._delete(at:)();
    *(v2 + v5) = v13;
  }

  return swift_endAccess();
}

void *sub_1003AB91C(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  sub_10000FAFC(OBJC_IVAR____TtC13callservicesd33CallRecordingNotificationProvider_updateBadgeValue);
  v7 = OBJC_IVAR____TtC13callservicesd33CallRecordingNotificationProvider_badgeCategory;
  v8 = type metadata accessor for BadgeCountCategory();
  sub_10000AF74(&v3[v7], 1, 1, v8);
  v9 = OBJC_IVAR____TtC13callservicesd33CallRecordingNotificationProvider_notificationType;
  v3[v9] = sub_1003ABCA0() & 1;
  if (sub_10000B6F4(_swiftEmptyArrayStorage))
  {
    sub_10039B510(_swiftEmptyArrayStorage);
  }

  else
  {
    v10 = &_swiftEmptySetSingleton;
  }

  *&v3[OBJC_IVAR____TtC13callservicesd33CallRecordingNotificationProvider_categories] = v10;
  sub_10000FAFC(OBJC_IVAR____TtC13callservicesd33CallRecordingNotificationProvider_add);
  sub_10000FAFC(OBJC_IVAR____TtC13callservicesd33CallRecordingNotificationProvider_replace);
  sub_10000FAFC(OBJC_IVAR____TtC13callservicesd33CallRecordingNotificationProvider_removeNotification);
  *&v3[OBJC_IVAR____TtC13callservicesd33CallRecordingNotificationProvider_queue] = a1;
  *&v3[OBJC_IVAR____TtC13callservicesd33CallRecordingNotificationProvider_notificationCenter] = a2;
  v27.receiver = v3;
  v27.super_class = ObjectType;
  v11 = a1;
  v12 = a2;
  v13 = objc_msgSendSuper2(&v27, "init");
  v14 = qword_1006A0BB8;
  v15 = v13;
  v19 = v15;
  if (v14 != -1)
  {
    v15 = swift_once();
  }

  sub_10000F784(v15, v16, v17, v18, qword_1006BA770);

  v20 = qword_1006A0BC0;
  v21 = v19;
  v25 = v21;
  if (v20 != -1)
  {
    v21 = swift_once();
  }

  sub_10000F784(v21, v22, v23, v24, qword_1006BA778);

  return v25;
}

id sub_1003ABAF4(void *a1)
{
  v1 = 0xD000000000000014;
  v2 = [a1 recordingState];
  result = TUBundle();
  v4 = result;
  if (v2 == 3)
  {
    if (result)
    {
      v5 = "CALL_RECORDING_SAVED";
      v1 = 0xD000000000000016;
LABEL_6:
      v10._object = 0xE000000000000000;
      v6.value._countAndFlagsBits = 0x6F6365526C6C6143;
      v6.value._object = 0xED0000676E696472;
      v7._object = (v5 | 0x8000000000000000);
      v7._countAndFlagsBits = v1;
      v8._countAndFlagsBits = 0;
      v8._object = 0xE000000000000000;
      v10._countAndFlagsBits = 0;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v6, v4, v8, v10)._countAndFlagsBits;

      return countAndFlagsBits;
    }

    __break(1u);
  }

  else if (result)
  {
    v5 = "ding information";
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003ABBD8()
{
  swift_getObjectType();
  sub_10026D814(&qword_1006A8778, &qword_100584578);
  v1 = String.init<A>(describing:)();
  if (*(v0 + OBJC_IVAR____TtC13callservicesd33CallRecordingNotificationProvider_notificationType))
  {
    v2 = 0x656E6F6850;
  }

  else
  {
    v2 = 0x656D695465636146;
  }

  if (*(v0 + OBJC_IVAR____TtC13callservicesd33CallRecordingNotificationProvider_notificationType))
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v3 = 0xE800000000000000;
  }

  v6 = v1;

  v4._countAndFlagsBits = v2;
  v4._object = v3;
  String.append(_:)(v4);

  return v6;
}

id sub_1003ABCA0()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    v2 = [result deviceType];

    return ((v2 > 9) | (0x1EDu >> v2) & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003ABD58(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_100004778(ObjectType);
  v6 = static os_log_type_t.error.getter();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10057D6A0;
  v8 = v2;
  v9 = String.init<A>(reflecting:)();
  v11 = v10;
  *(v7 + 56) = &type metadata for String;
  v12 = sub_100009D88();
  *(v7 + 64) = v12;
  *(v7 + 32) = v9;
  *(v7 + 40) = v11;
  v13 = a1[3];
  v14 = a1[4];
  sub_100009B14(a1, v13);
  v15 = (*(v14 + 16))(v13, v14);
  *(v7 + 96) = &type metadata for String;
  *(v7 + 104) = v12;
  *(v7 + 72) = v15;
  *(v7 + 80) = v16;
  os_log(_:dso:log:type:_:)("%@ does not handle response with identifier %@", 46, 2, &_mh_execute_header, v5, v6, v7);
}

uint64_t sub_1003ABE94(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v18 = *(v6 - 8);
  v19 = v6;
  __chkstk_darwin(v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Notification();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v17[1] = *&v1[OBJC_IVAR____TtC13callservicesd33CallRecordingNotificationProvider_queue];
  (*(v10 + 16))(v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v12 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v13 = swift_allocObject();
  (*(v10 + 32))(v13 + v12, v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  *(v13 + ((v11 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;
  aBlock[4] = sub_1003ACD8C;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_10062BE60;
  v14 = _Block_copy(aBlock);
  v15 = v1;
  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v20 + 8))(v5, v3);
  (*(v18 + 8))(v8, v19);
}

void sub_1003AC1DC(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004778(v4);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10057D690;
  (*(v3 + 16))(v6, a1, v2);
  v9 = String.init<A>(reflecting:)();
  v11 = v10;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_100009D88();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  v12 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Handling notification %@", 24, 2, &_mh_execute_header, v7, v12, v8);

  Notification.object.getter();
  if (!v19)
  {
    v13 = sub_100009A5C(v18, &unk_1006A2D10, &unk_10057D940);
    goto LABEL_5;
  }

  sub_100006AF0(0, &qword_1006A7A60, TUCallRecordingSession_ptr);
  v13 = swift_dynamicCast();
  if ((v13 & 1) == 0)
  {
LABEL_5:
    v14 = sub_100004778(v13);
    v15 = static os_log_type_t.error.getter();
    os_log(_:dso:log:type:_:)("Did not find expected call recording information", 48, 2, &_mh_execute_header, v14, v15, _swiftEmptyArrayStorage);
    goto LABEL_6;
  }

  v14 = v17;
  sub_1003AC414(v17);
LABEL_6:
}