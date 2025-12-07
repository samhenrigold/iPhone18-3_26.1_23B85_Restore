double sub_188B42364(_OWORD *a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = a1[1];
  v12[0] = *a1;
  v12[1] = v6;
  v12[2] = a1[2];
  sub_188B44CA0(v12, a4);
  v8 = v7;
  v10 = v9;
  swift_beginAccess();
  *(a2 + 16) = v8;
  swift_beginAccess();
  *(a3 + 16) = v10;

  swift_beginAccess();
  return *(a2 + 16);
}

char *sub_188B42414(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934200, &qword_18A64BE38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void sub_188B42584(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938C28, &qword_18A657078);
  v39 = v4;
  v6 = sub_18A4A8468();
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = *(v5 + 56) + 48 * v21;
      v25 = *(v24 + 8);
      v42 = *v24;
      v43 = *v22;
      v26 = *(v24 + 16);
      v41 = *(v24 + 24);
      v40 = *(v24 + 32);
      v27 = *(v24 + 40);
      if ((v39 & 1) == 0)
      {
      }

      sub_18A4A8888();
      sub_18A4A7348();
      v28 = sub_18A4A88E8();
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
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v43;
      v16[1] = v23;
      v17 = *(v7 + 56) + 48 * v15;
      *v17 = v42;
      *(v17 + 8) = v25;
      *(v17 + 16) = v26;
      *(v17 + 24) = v41;
      *(v17 + 32) = v40;
      *(v17 + 40) = v27;
      ++*(v7 + 16);
      v5 = v38;
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

void sub_188B42904(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938C20, &qword_18A657070);
  v39 = v4;
  v6 = sub_18A4A8468();
  v7 = v6;
  if (*(v5 + 16))
  {
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 48 * v21;
      v26 = *(v25 + 8);
      v42 = *(v25 + 16);
      v43 = *v25;
      v27 = *(v25 + 24);
      v40 = *(v25 + 33);
      v41 = *(v25 + 32);
      v28 = *(v25 + 40);
      if ((v39 & 1) == 0)
      {
      }

      sub_18A4A8888();
      sub_18A4A7348();
      v29 = sub_18A4A88E8();
      v30 = -1 << *(v7 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 48 * v15;
      *v17 = v43;
      *(v17 + 8) = v26;
      *(v17 + 16) = v42;
      *(v17 + 24) = v27;
      *(v17 + 32) = v41;
      *(v17 + 33) = v40;
      *(v17 + 40) = v28;
      ++*(v7 + 16);
      v5 = v38;
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

    if ((v39 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero(v9, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

uint64_t sub_188B42BFC(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_18A4A85F8();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v8 = sub_18A4A75D8();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;

      sub_1891CE20C(v9, v10, a1, v6, a2);

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_188B46318(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_188B42D44(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    v4 = (a2 + 32);
    sub_188A34624(0, &qword_1ED490230, 0x1E69E58C0);
    for (i = v2 - 1; ; --i)
    {
      v6 = v3[1];
      v18 = *v3;
      v19 = v6;
      v7 = v3[3];
      v20 = v3[2];
      v21 = v7;
      v8 = v3[4];
      v9 = v4[3];
      v25 = v4[2];
      v26 = v9;
      v27 = v4[4];
      v10 = *v4;
      v24 = v4[1];
      v22 = v8;
      v23 = v10;
      sub_188B8B3D0(&v18, v17);
      sub_188B8B3D0(&v23, v17);
      if ((sub_18A4A7C88() & 1) == 0)
      {
        break;
      }

      if (BYTE8(v18) != BYTE8(v23))
      {
        break;
      }

      if (*&v19 != *&v24)
      {
        break;
      }

      v28.origin.x = *(&v19 + 1);
      *&v28.origin.y = v20;
      v12 = *(&v21 + 1);
      *&v28.size.height = v21;
      v11 = *&v22;
      v29.origin.x = *(&v24 + 1);
      *&v29.origin.y = v25;
      v14 = *(&v26 + 1);
      *&v29.size.height = v26;
      v13 = *&v27;
      if (!CGRectEqualToRect(v28, v29) || v12 != v14 || v11 != v13)
      {
        break;
      }

      v15 = sub_188B8C0E8(*(&v22 + 1), *(&v27 + 1));
      sub_188B8BA00(&v23);
      sub_188B8BA00(&v18);
      if ((v15 & 1) == 0)
      {
        return 0;
      }

      if (!i)
      {
        return 1;
      }

      v4 += 5;
      v3 += 5;
    }

    sub_188B8BA00(&v23);
    sub_188B8BA00(&v18);
  }

  return 0;
}

uint64_t sub_188B42F08(uint64_t a1, int a2)
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

uint64_t sub_188B42F50(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

void sub_188B42FA0()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_38:
      v1 = sub_189212B60(v1);
    }

    v3 = 0;
    v34 = v1;
    v35 = v1 + 32;
    v33 = v2;
    do
    {
      if (v3 == v2)
      {
        goto LABEL_35;
      }

      if (v3 >= *(v1 + 2))
      {
        goto LABEL_36;
      }

      v4 = &v35[56 * v3];
      v5 = *v4;
      v38 = *(v4 + 2);
      v39 = *(v4 + 1);
      v36 = *(v4 + 4);
      v37 = *(v4 + 3);
      v6 = v4[40];
      v7 = *(v4 + 6);
      v40 = v6;
      v1 = *(*v4 + 16);
      if (v1)
      {
        swift_bridgeObjectRetain_n();
        v8 = v7;
        v9 = 0;
        v2 = 128;
        v10 = v5;
        while (v9 < *(v10 + 2))
        {
          v11 = (v9 + 1);
          v12 = &v10[v2];
          if ((v10[v2 - 64] & 1) == 0)
          {
            v13 = *(v12 - 12);
            v14 = *(v12 - 11);
            v15 = *(v12 - 10);
            v16 = *(v12 - 9);
            if (v9)
            {
              MaxX = CGRectGetMaxX(*&v10[v2 - 168]);
              v41.origin.x = v13;
              v41.origin.y = v14;
              v41.size.width = v15;
              v41.size.height = v16;
              MinX = (MaxX + CGRectGetMinX(v41)) * 0.5;
            }

            else
            {
              MinX = CGRectGetMinX(*(v0 + 8));
            }

            if (v11 >= *(v10 + 2))
            {
              v20 = CGRectGetMaxX(*(v0 + 8));
            }

            else
            {
              v19 = CGRectGetMinX(*&v10[v2 - 24]);
              v42.origin.x = v13;
              v42.origin.y = v14;
              v42.size.width = v15;
              v42.size.height = v16;
              v20 = (v19 + CGRectGetMaxX(v42)) * 0.5;
            }

            v43.origin.x = v13;
            v43.origin.y = v14;
            v43.size.width = v15;
            v43.size.height = v16;
            v21 = MinX - CGRectGetMinX(v43);
            if (v21 > -22.0)
            {
              v22 = v21;
            }

            else
            {
              v22 = -22.0;
            }

            v44.origin.x = v13;
            v44.origin.y = v14;
            v44.size.width = v15;
            v44.size.height = v16;
            v23 = CGRectGetMaxX(v44) - v20;
            if (v23 > -22.0)
            {
              v24 = v23;
            }

            else
            {
              v24 = -22.0;
            }

            v45.origin.x = v13;
            v45.origin.y = v14;
            v45.size.width = v15;
            v45.size.height = v16;
            MinY = CGRectGetMinY(v45);
            v46.origin.y = v38;
            v46.origin.x = v39;
            v46.size.height = v36;
            v46.size.width = v37;
            Height = CGRectGetHeight(v46);
            v47.origin.x = v13;
            v47.origin.y = v14;
            v47.size.width = v15;
            v47.size.height = v16;
            MaxY = CGRectGetMaxY(v47);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v10 = sub_188C40B18(v10);
            }

            if (v9 >= *(v10 + 2))
            {
              goto LABEL_34;
            }

            v28 = &v10[v2];
            *(v28 - 7) = fmin(-MinY, 0.0);
            *(v28 - 6) = fmin(v22, 0.0);
            *(v28 - 5) = fmin(-(Height - MaxY), 0.0);
            *(v28 - 4) = fmin(v24, 0.0);
          }

          v2 += 72;
          ++v9;
          if (v1 == v11)
          {
            v6 = v40;
            v2 = v33;
            goto LABEL_29;
          }
        }

        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v29 = v7;
      swift_bridgeObjectRetain_n();
      v10 = v5;
LABEL_29:

      v1 = v34;
      v30 = *(v34 + 2);

      v31 = v7;
      if (v3 >= v30)
      {
        goto LABEL_37;
      }

      ++v3;
      v32 = *(v4 + 6);
      *v4 = v10;
      *(v4 + 1) = v39;
      *(v4 + 2) = v38;
      *(v4 + 3) = v37;
      *(v4 + 4) = v36;
      v4[40] = v6;
      *(v4 + 6) = v7;

      swift_bridgeObjectRelease_n();
    }

    while (v3 != v2);
    *v0 = v34;
  }
}

void sub_188B4336C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_effectiveLayout);
  v47 = *(v2 + 16);
  if (!v47)
  {
    return;
  }

  v48 = v2 + 32;

  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  v45 = v2;
  v46 = a1;
  while (1)
  {
    if (v4 >= *(v2 + 16))
    {
      goto LABEL_84;
    }

    v6 = *(v48 + 24 * v4);
    v7 = *(a1 + 32);
    v8 = v6 >> 62;
    v49 = v5;
    v50 = v4;
    if (!v7)
    {
      break;
    }

    v9 = *(a1 + 40);
    if (v8)
    {
      v10 = sub_18A4A7F68();
    }

    else
    {
      v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v10)
    {
      v51 = v9;
      v52 = v7;
      v11 = 0;
      v12 = MEMORY[0x1E69E7CC0];
      v13 = v10;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v14 = sub_188E49D08(v11, v6);
        }

        else
        {
          if (v11 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_73;
          }

          v14 = *(v6 + 8 * v11 + 32);
        }

        v15 = v14;
        v16 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
LABEL_73:
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
          goto LABEL_79;
        }

        if (*(v14 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout__spilled))
        {
          goto LABEL_22;
        }

        if (*(v14 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout__compact) == 1)
        {
          v17 = v51;
          if (!*(v51 + 16))
          {
            goto LABEL_22;
          }
        }

        else
        {
          v17 = v52;
          if (!*(v52 + 16))
          {
            goto LABEL_22;
          }
        }

        v18 = sub_188A403F4(v14);
        if (v19)
        {
          v20 = *(*(v17 + 56) + 8 * v18);

          goto LABEL_23;
        }

LABEL_22:
        v20 = MEMORY[0x1E69E7CC0];
LABEL_23:

        v21 = *(v20 + 16);
        v22 = *(v12 + 2);
        v23 = v22 + v21;
        if (__OFADD__(v22, v21))
        {
          goto LABEL_74;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v23 <= *(v12 + 3) >> 1)
        {
          if (*(v20 + 16))
          {
            goto LABEL_32;
          }
        }

        else
        {
          if (v22 <= v23)
          {
            v25 = v22 + v21;
          }

          else
          {
            v25 = v22;
          }

          v12 = sub_188C4108C(isUniquelyReferenced_nonNull_native, v25, 1, v12);
          if (*(v20 + 16))
          {
LABEL_32:
            if ((*(v12 + 3) >> 1) - *(v12 + 2) < v21)
            {
              goto LABEL_76;
            }

            swift_arrayInitWithCopy();

            if (v21)
            {
              v26 = *(v12 + 2);
              v27 = __OFADD__(v26, v21);
              v28 = v26 + v21;
              if (v27)
              {
                goto LABEL_81;
              }

              *(v12 + 2) = v28;
            }

            goto LABEL_10;
          }
        }

        if (v21)
        {
          goto LABEL_75;
        }

LABEL_10:
        ++v11;
        if (v16 == v13)
        {
          goto LABEL_63;
        }
      }
    }

LABEL_62:
    v12 = MEMORY[0x1E69E7CC0];
LABEL_63:

    v5 = v49;
    v2 = v45;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_188C40F34(0, v49[2] + 1, 1, v49);
    }

    v44 = v5[2];
    v43 = v5[3];
    if (v44 >= v43 >> 1)
    {
      v5 = sub_188C40F34((v43 > 1), v44 + 1, 1, v5);
    }

    v4 = v50 + 1;
    v5[2] = v44 + 1;
    v5[v44 + 4] = v12;
    a1 = v46;
    if (v50 + 1 == v47)
    {

      return;
    }
  }

  if (v8)
  {
    v29 = sub_18A4A7F68();
  }

  else
  {
    v29 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v29)
  {
    goto LABEL_62;
  }

  v30 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  v31 = v29;
  while (1)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v32 = sub_188E49D08(v30, v6);
      v33 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_77;
      }
    }

    else
    {
      if (v30 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_78;
      }

      v32 = *(v6 + 8 * v30 + 32);
      v33 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_77;
      }
    }

    v34 = v32;
    v35 = sub_18907CFE0();

    v36 = *(v35 + 16);
    v37 = *(v12 + 2);
    v38 = v37 + v36;
    if (__OFADD__(v37, v36))
    {
      break;
    }

    v39 = swift_isUniquelyReferenced_nonNull_native();
    if (v39 && v38 <= *(v12 + 3) >> 1)
    {
      if (!*(v35 + 16))
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (v37 <= v38)
      {
        v40 = v37 + v36;
      }

      else
      {
        v40 = v37;
      }

      v12 = sub_188C4108C(v39, v40, 1, v12);
      if (!*(v35 + 16))
      {
LABEL_41:

        if (v36)
        {
          goto LABEL_80;
        }

        goto LABEL_42;
      }
    }

    if ((*(v12 + 3) >> 1) - *(v12 + 2) < v36)
    {
      goto LABEL_82;
    }

    swift_arrayInitWithCopy();

    if (v36)
    {
      v41 = *(v12 + 2);
      v27 = __OFADD__(v41, v36);
      v42 = v41 + v36;
      if (v27)
      {
        goto LABEL_83;
      }

      *(v12 + 2) = v42;
    }

LABEL_42:
    ++v30;
    if (v33 == v31)
    {
      goto LABEL_63;
    }
  }

LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
}

unint64_t sub_188B43844(uint64_t a1, double a2)
{
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F9A0, &unk_18A673000);
  MEMORY[0x1EEE9AC00](v153);
  v154 = &v149 - v6;
  v7 = *(a1 + 16);
  if (!v7)
  {
    v84 = MEMORY[0x1E69E7CC0];

    return sub_188E8DF98(v84);
  }

  v152 = v5;
  v8 = MEMORY[0x1E69E7CC0];
  v161 = a1;
  v162 = MEMORY[0x1E69E7CC8];
  v9 = (a1 + 72);
  while (1)
  {
    v10 = v8;
    v11 = *(v9 - 4);
    v12 = *(v9 - 3);
    v13 = *(v9 - 2);
    v14 = *(v9 - 8);
    v15 = *v9;
    *&v187 = *(v9 - 5);
    v8 = v187;
    *(&v187 + 1) = v11;
    *&v188 = v12;
    *(&v188 + 1) = v13;
    LOBYTE(v189) = v14;
    *(&v189 + 1) = v15;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v16 = v162;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v178 = v16;
    v18 = sub_188B0944C(v8, v11);
    v20 = v16[2];
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
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
      goto LABEL_119;
    }

    v24 = v19;
    if (v16[3] < v23)
    {
      sub_188B42584(v23, isUniquelyReferenced_nonNull_native);
      v18 = sub_188B0944C(v8, v11);
      if ((v24 & 1) != (v25 & 1))
      {
LABEL_121:
        sub_18A4A87A8();
        __break(1u);
LABEL_122:
        *&v178 = 0;
        *(&v178 + 1) = 0xE000000000000000;
        sub_18A4A80E8();

        *&v178 = 0xD00000000000002ALL;
        *(&v178 + 1) = 0x800000018A6AFE70;
        v145 = sub_1891CD8E0();
        v7 = v146;
        MEMORY[0x18CFE22D0](v145);

        goto LABEL_27;
      }

      goto LABEL_10;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      break;
    }

LABEL_10:
    v26 = v178;
    if (v24)
    {
      goto LABEL_26;
    }

LABEL_11:
    v26[(v18 >> 6) + 8] |= 1 << v18;
    v27 = (v26[6] + 16 * v18);
    *v27 = v8;
    v27[1] = v11;
    v28 = (v26[7] + 48 * v18);
    v29 = v188;
    *v28 = v187;
    v28[1] = v29;
    v28[2] = v189;
    v30 = v26[2];
    v22 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (v22)
    {
      goto LABEL_109;
    }

    v26[2] = v31;
    v32 = *(v15 + 16);
    v8 = v10;
    v33 = *(v10 + 2);
    v34 = v33 + v32;
    if (__OFADD__(v33, v32))
    {
      goto LABEL_110;
    }

    v162 = v26;

    v35 = swift_isUniquelyReferenced_nonNull_native();
    if (v35 && (v36 = *(v8 + 3) >> 1, v36 >= v34))
    {
      if (!*(v15 + 16))
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v33 <= v34)
      {
        v37 = v33 + v32;
      }

      else
      {
        v37 = v33;
      }

      v8 = sub_188B466D8(v35, v37, 1, v8);
      v36 = *(v8 + 3) >> 1;
      if (!*(v15 + 16))
      {
LABEL_3:

        if (v32)
        {
          goto LABEL_111;
        }

        goto LABEL_4;
      }
    }

    if (v36 - *(v8 + 2) < v32)
    {
      goto LABEL_112;
    }

    swift_arrayInitWithCopy();

    if (v32)
    {
      v38 = *(v8 + 2);
      v22 = __OFADD__(v38, v32);
      v39 = v38 + v32;
      if (v22)
      {
        goto LABEL_117;
      }

      *(v8 + 2) = v39;
    }

LABEL_4:

    v9 += 6;
    if (!--v7)
    {
      goto LABEL_28;
    }
  }

  v40 = v18;
  sub_188FA3004();
  v18 = v40;
  v26 = v178;
  if ((v24 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_26:
  v41 = (v26[7] + 48 * v18);
  v42 = v188;
  *v41 = v187;
  v41[1] = v42;
  v41[2] = v189;

  *&v178 = 0;
  *(&v178 + 1) = 0xE000000000000000;
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0xD000000000000067, 0x800000018A6AFE00);
  sub_1891CD7E0(&v187);
LABEL_27:
  while (1)
  {
    sub_18A4A8398();
    __break(1u);
LABEL_28:
    *&v178 = v8;
    v43 = v161;

    sub_188B3BD78(&v178, v43);

    if (!v7)
    {
      break;
    }

    __break(1u);
LABEL_124:
    v163 = 0;
    v164 = 0xE000000000000000;
    sub_18A4A80E8();

    v163 = 0xD00000000000002ALL;
    v164 = 0x800000018A6AFE70;
    v147 = sub_1891CD8E0();
    v7 = v148;
    MEMORY[0x18CFE22D0](v147);
  }

  v44 = v178;
  v165 = v178;

  sub_18A4A8A68();
  v45 = *(v44 + 16);
  v157 = v44;
  v158 = v8;
  if (v45)
  {
    v46 = 0;
    *&v155 = v45;
    v151 = v45 - 1;
    v161 = MEMORY[0x1E69E7CC8];
    v2 = a2;
    while (2)
    {
      v47 = 40 * v46;
      while (1)
      {
        if (v46 >= *(v44 + 16))
        {
          goto LABEL_113;
        }

        v48 = v44 + v47;
        v49 = *(v44 + v47 + 32);
        v50 = *(v44 + v47 + 48);
        v186 = *(v44 + v47 + 64);
        v184 = v49;
        v185 = v50;
        v51 = *(v44 + v47 + 32);
        v52 = *(v48 + 40);
        v53 = *(v48 + 48);
        v54 = *(v48 + 56);
        LODWORD(v159) = *(v48 + 64);
        v160 = *(v48 + 65);
        v55 = *(&v49 + 1);
        v8 = v49;
        *&v156 = v46;
        v56 = v46 + 1;
        v57 = v161;
        v58 = *(v161 + 16);

        if (!v58)
        {
          break;
        }

        sub_188B0944C(v8, v55);
        v60 = v59;
        sub_188B42ED8(&v184);
        if ((v60 & 1) == 0)
        {
          break;
        }

        sub_188B42ED8(&v184);
        v47 += 40;
        v46 = v56;
        v44 = v157;
        if (v155 == v56)
        {
          goto LABEL_59;
        }
      }

      swift_bridgeObjectRetain_n();
      v61 = swift_isUniquelyReferenced_nonNull_native();
      *&v178 = v57;
      v63 = sub_188B0944C(v8, v55);
      v64 = *(v57 + 16);
      v65 = (v62 & 1) == 0;
      v66 = v64 + v65;
      if (__OFADD__(v64, v65))
      {
        goto LABEL_118;
      }

      v67 = v61;
      if (*(v57 + 24) >= v66)
      {
        if (v61)
        {
          v71 = *(&v185 + 1);
          if ((v62 & 1) == 0)
          {
            goto LABEL_46;
          }
        }

        else
        {
          LODWORD(v161) = v62;
          sub_188FA2E5C();
          v71 = *(&v185 + 1);
          if ((v161 & 1) == 0)
          {
            goto LABEL_46;
          }
        }
      }

      else
      {
        v68 = v62;
        sub_188B42904(v66, v67);
        v69 = sub_188B0944C(v8, v55);
        if ((v68 & 1) != (v70 & 1))
        {
          goto LABEL_121;
        }

        v63 = v69;
        v71 = *(&v185 + 1);
        if ((v68 & 1) == 0)
        {
LABEL_46:
          v73 = v178;
          *(v178 + 8 * (v63 >> 6) + 64) |= 1 << v63;
          v74 = (v73[6] + 16 * v63);
          *v74 = v8;
          v74[1] = v55;
          v75 = v73[7] + 48 * v63;
          *v75 = v51;
          *(v75 + 8) = v52;
          *(v75 + 16) = v53;
          *(v75 + 24) = v54;
          *(v75 + 32) = v159;
          *(v75 + 33) = v160;
          *(v75 + 40) = v71;
          v76 = v73[2];
          v22 = __OFADD__(v76, 1);
          v77 = v76 + 1;
          if (v22)
          {
            __break(1u);
            goto LABEL_121;
          }

          v161 = v73;
          v73[2] = v77;
LABEL_48:
          if (!v162[2])
          {
            goto LABEL_122;
          }

          v78 = sub_188B0944C(v8, v55);
          if ((v79 & 1) == 0)
          {
            goto LABEL_122;
          }

          v80 = v2 - v71;
          v81 = *(v162[7] + 48 * v78 + 16);
          sub_188B42ED8(&v184);
          if (v71 <= 0.0)
          {
            v82 = 0.0;
          }

          else
          {
            v82 = v81;
          }

          v2 = v80 - v82;
          v83 = v156;
          *&v178 = v156;
          v44 = v157;
          v172 = v157;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937CC8, &qword_18A653BE8);
          sub_188A34360(&qword_1ED48CC58, &qword_1EA937CC8, &qword_18A653BE8, MEMORY[0x1E69E6340]);
          sub_18A4A8A48();
          v46 = v56;
          if (v151 != v83)
          {
            continue;
          }

          goto LABEL_59;
        }
      }

      break;
    }

    sub_188B42ED8(&v184);
    v161 = v178;
    v72 = *(v178 + 56) + 48 * v63;
    *v72 = v51;
    *(v72 + 8) = v52;
    *(v72 + 16) = v53;
    *(v72 + 24) = v54;
    *(v72 + 32) = v159;
    *(v72 + 33) = v160;
    *(v72 + 40) = v71;

    goto LABEL_48;
  }

  v161 = MEMORY[0x1E69E7CC8];
  v2 = a2;
LABEL_59:
  sub_188B412BC(v154);
  if (qword_1ED48CD68 != -1)
  {
LABEL_119:
    swift_once();
  }

  v86 = sub_18A4A4378();
  v159 = __swift_project_value_buffer(v86, qword_1ED48CD70);
  v87 = sub_18A4A4358();
  v88 = sub_18A4A7968();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    *v89 = 134217984;
    *(v89 + 4) = a2;
    _os_log_impl(&dword_188A29000, v87, v88, "Available width: %f", v89, 0xCu);
    MEMORY[0x18CFEA5B0](v89, -1, -1);
  }

  if (v2 < -0.0001)
  {
    a2 = -v2;
    *&v90 = 134217984;
    v156 = v90;
    v2 = 0.0;
    *&v90 = 136315906;
    v149 = v90;
    *&v90 = 134218242;
    v155 = v90;
    do
    {
      v91 = v161;
      while (1)
      {
        v92 = v165;
        if (*(v165 + 2))
        {
          v93 = *(v165 + 4);
          v94 = *(v165 + 5);
          v95 = *(v165 + 6);
          v96 = *(v165 + 7);
          v160 = v165[64];
          v97 = v165[65];
        }

        else
        {
          v93 = 0;
          v94 = 0;
          v95 = 0;
          v160 = 0;
          v97 = 0;
          v96 = 0.0;
        }

        v98 = sub_18A4A4358();
        v99 = sub_18A4A7968();
        if (os_log_type_enabled(v98, v99))
        {
          v100 = swift_slowAlloc();
          *v100 = v156;
          *(v100 + 4) = a2;
          _os_log_impl(&dword_188A29000, v98, v99, "Space to recover: %f", v100, 0xCu);
          v91 = v161;
          MEMORY[0x18CFEA5B0](v100, -1, -1);
        }

        if (!v94)
        {

          v142 = sub_18A4A4358();
          v143 = sub_18A4A7968();
          if (os_log_type_enabled(v142, v143))
          {
            v144 = swift_slowAlloc();
            *v144 = 0;
            _os_log_impl(&dword_188A29000, v142, v143, "We still have space to recover, but no more elements to recover the space from", v144, 2u);
            MEMORY[0x18CFEA5B0](v144, -1, -1);
          }

          (*(v152 + 8))(v154, v153);
          goto LABEL_107;
        }

        v166 = v93;
        v167 = v94;
        v168 = v95;
        v169 = v96;
        v170 = v160;
        v171 = v97;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v101 = *(v92 + 2);
          if (!v101)
          {
            goto LABEL_114;
          }
        }

        else
        {
          v92 = sub_188B428F0(v92);
          v101 = *(v92 + 2);
          if (!v101)
          {
            goto LABEL_114;
          }
        }

        v8 = v95;
        v102 = v101 - 1;
        memmove(v92 + 32, v92 + 72, 40 * (v101 - 1));
        *(v92 + 2) = v102;

        v165 = v92;
        if (!*(v91 + 16))
        {
          goto LABEL_115;
        }

        v103 = sub_188B0944C(v93, v94);
        v105 = v104;

        if ((v105 & 1) == 0)
        {
          goto LABEL_116;
        }

        v106 = *(v91 + 56) + 48 * v103;
        v107 = *(v106 + 40);
        if (v96 < v107)
        {
          break;
        }

        if (v107 >= v96)
        {
        }

        else
        {

          v108 = sub_18A4A4358();
          v109 = sub_18A4A7968();

          if (os_log_type_enabled(v108, v109))
          {
            v110 = swift_slowAlloc();
            v111 = swift_slowAlloc();
            v163 = v111;
            *v110 = v155;
            *(v110 + 4) = v107;
            *(v110 + 12) = 2080;
            v112 = sub_1891CD8E0();
            v114 = v113;

            v115 = sub_1891D69C0(v112, v114, &v163);

            *(v110 + 14) = v115;
            _os_log_impl(&dword_188A29000, v108, v109, "Ignoring higher priority candidate with a larger width than it is currently assigned. Current: %f. Candidate: %s", v110, 0x16u);
            v116 = __swift_destroy_boxed_opaque_existential_0Tm(v111);
            MEMORY[0x18CFEA5B0](v111, -1, -1, v116);
            v91 = v161;
            MEMORY[0x18CFEA5B0](v110, -1, -1);
          }

          else
          {
          }
        }
      }

      v117 = *v106;
      v118 = *(v106 + 8);
      v151 = *(v106 + 16);
      v119 = *(v106 + 24);
      v150 = *(v106 + 32);
      v120 = *(v106 + 33);
      v121 = v162;
      v122 = v162[2];

      if (!v122)
      {
        goto LABEL_124;
      }

      v123 = sub_188B0944C(v93, v94);
      if ((v124 & 1) == 0)
      {
        goto LABEL_124;
      }

      if (v96 <= 0.0)
      {
        v125 = 0.0;
      }

      else
      {
        v125 = *(v121[7] + 48 * v123 + 16);
      }

      v126 = v96;
      v127 = v161;
      if (!((a2 >= v107 - (v96 + v125)) | v160 & 1))
      {
        if (!v121[2])
        {
          goto LABEL_124;
        }

        v128 = sub_188B0944C(v93, v94);
        v121 = v162;
        if ((v129 & 1) == 0)
        {
          goto LABEL_124;
        }

        v126 = v107 - a2;
        if (v107 - a2 <= 0.0)
        {
          v125 = 0.0;
        }

        else
        {
          v125 = *(v162[7] + 48 * v128 + 16);
        }
      }

      v172 = v117;
      v173 = v118;
      v174 = v151;
      v175 = v119;
      v176 = v150;
      v177 = v120;
      if (!v121[2])
      {
        goto LABEL_124;
      }

      v130 = sub_188B0944C(v117, v118);
      if ((v131 & 1) == 0)
      {
        goto LABEL_124;
      }

      v132 = *(v162[7] + 48 * v130 + 16);

      v133 = 0.0;
      if (v119 > 0.0)
      {
        v133 = v132;
      }

      v2 = 0.0;
      *&v178 = v93;
      *(&v178 + 1) = v94;
      v179 = v8;
      v134 = v107 - v126 - v125 + v133;
      v180 = v96;
      v181 = v160;
      v182 = v97;
      v183 = v126;

      v135 = swift_isUniquelyReferenced_nonNull_native();
      v163 = v127;
      sub_188CFC724(&v178, v93, v94, v135);
      v161 = v163;

      v136 = sub_18A4A4358();
      v137 = sub_18A4A7968();

      if (os_log_type_enabled(v136, v137))
      {
        v138 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        v163 = v139;
        *v138 = v149;
        v140 = sub_1891D69C0(v93, v94, &v163);

        *(v138 + 4) = v140;
        *(v138 + 12) = 2048;
        *(v138 + 14) = v107;
        *(v138 + 22) = 2048;
        *(v138 + 24) = v126;
        *(v138 + 32) = 2048;
        *(v138 + 34) = v134;
        _os_log_impl(&dword_188A29000, v136, v137, "Changing resolved width for %s from %f to %f. Recovered %f", v138, 0x2Au);
        v141 = __swift_destroy_boxed_opaque_existential_0Tm(v139);
        MEMORY[0x18CFEA5B0](v139, -1, -1, v141);
        MEMORY[0x18CFEA5B0](v138, -1, -1);
      }

      else
      {
      }

      a2 = a2 - v134;
    }

    while (a2 > 0.0001);
  }

  (*(v152 + 8))(v154, v153);

  v91 = v161;
LABEL_107:

  return v91;
}

unint64_t sub_188B44888@<X0>(unint64_t result@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v4 = result;
  v6 = v3[13];
  v7 = 0;
  v8 = 0;
  if (v6)
  {
    if (*(result + 16))
    {
      result = sub_188B0944C(v3[12], v6);
      if (v9)
      {
        v8 = *(*(v4 + 56) + 48 * result + 40);
        goto LABEL_5;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_5:
  v10 = v3[7];
  if (!v10)
  {
    goto LABEL_9;
  }

  if (!*(v4 + 16))
  {
    goto LABEL_28;
  }

  result = sub_188B0944C(v3[6], v10);
  if ((v11 & 1) == 0)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v7 = *(*(v4 + 56) + 48 * result + 40);
LABEL_9:
  v12 = v3[25];
  v13 = 0;
  v14 = 0;
  if (!v12)
  {
    goto LABEL_13;
  }

  if (!*(v4 + 16))
  {
    goto LABEL_30;
  }

  result = sub_188B0944C(v3[24], v12);
  if ((v15 & 1) == 0)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v14 = *(*(v4 + 56) + 48 * result + 40);
LABEL_13:
  v16 = v3[19];
  if (!v16)
  {
    goto LABEL_17;
  }

  if (!*(v4 + 16))
  {
    goto LABEL_32;
  }

  result = sub_188B0944C(v3[18], v16);
  if ((v17 & 1) == 0)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v13 = *(*(v4 + 56) + 48 * result + 40);
LABEL_17:
  v18 = v3[31];
  v19 = 0;
  v20 = 0;
  if (!v18)
  {
    goto LABEL_21;
  }

  if (!*(v4 + 16))
  {
    goto LABEL_34;
  }

  result = sub_188B0944C(v3[30], v18);
  if ((v21 & 1) == 0)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v20 = *(*(v4 + 56) + 48 * result + 40);
LABEL_21:
  v22 = v3[37];
  if (!v22)
  {
LABEL_25:
    *a2 = v8;
    a2[1] = v7;
    a2[2] = v14;
    a2[3] = v13;
    a2[4] = v20;
    a2[5] = v19;
    return result;
  }

  if (!*(v4 + 16))
  {
    goto LABEL_36;
  }

  result = sub_188B0944C(v3[36], v22);
  if (v23)
  {
    v19 = *(*(v4 + 56) + 48 * result + 40);
    goto LABEL_25;
  }

LABEL_37:
  __break(1u);
  return result;
}

void sub_188B44A2C(uint64_t a1, uint64_t a2, char a3)
{
  v7 = &v3[OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_content];
  v8 = *&v3[OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_content];
  v9 = *&v3[OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_content + 8];

  if (sub_188B42D44(a1, v8))
  {
    v10 = sub_188B49C6C(a2, v9);

    if (v10)
    {
      return;
    }
  }

  else
  {
  }

  *v7 = a1;
  *(v7 + 1) = a2;

  if (!*&v3[OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_overrideContent])
  {
    v11 = objc_opt_self();
    v12 = swift_allocObject();
    *(v12 + 16) = v3;
    *(v12 + 24) = 1;
    *(v12 + 25) = a3 & 1;
    *(v12 + 26) = 0;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_188B62BD0;
    *(v13 + 24) = v12;
    v16[4] = sub_188A4B574;
    v16[5] = v13;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 1107296256;
    v16[2] = sub_188A4A968;
    v16[3] = &block_descriptor_63;
    v14 = _Block_copy(v16);
    v15 = v3;

    [(UITraitCollection *)v11 _performWithFallbackEnvironment:v15 block:v14];
    _Block_release(v14);
    LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

    if (v15)
    {
      __break(1u);
    }
  }
}

uint64_t sub_188B44C54()
{

  return MEMORY[0x1EEE6BDD0](v0, 27, 7);
}

void sub_188B44CA0(_OWORD *a1, double a2)
{
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  v7 = a1[1];
  *(v6 + 24) = *a1;
  *(v6 + 40) = v7;
  *(v6 + 56) = a1[2];
  *(v6 + 72) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_188B42888;
  *(v8 + 24) = v6;
  v12[4] = sub_188A4B574;
  *&v13.origin.x = v8;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_188A4A968;
  v12[3] = &block_descriptor_90_4;
  v9 = _Block_copy(v12);
  v10 = v2;
  sub_188A3F29C(a1, &v14, &unk_1EA93B3D8, &qword_18A6614D8);

  [v5 performWithoutAnimation_];
  _Block_release(v9);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {
    v18 = *&v10[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics + 56];
    v19 = *&v10[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics + 72];
    v20[0] = *&v10[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics + 88];
    *(v20 + 10) = *&v10[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics + 98];
    v15 = *&v10[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics + 8];
    v16 = *&v10[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics + 24];
    v17 = *&v10[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics + 40];
    sub_188B4336C(a1);
    v14 = a2;
    sub_188B45920(v11, &v14, v12);

    CGRectGetWidth(v13);
    sub_188B3EF60(v12);
    sub_188B42530(v12);
  }
}

uint64_t sub_188B44EF8()
{
  if (*(v0 + 56))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

void sub_188B44F48(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, CGFloat a5@<D0>, CGFloat a6@<D1>, CGFloat a7@<D2>, CGFloat a8@<D3>, double a9@<D4>, double a10@<D5>)
{
  v111 = a3;
  v114 = a10;
  v100 = a8;
  v99 = a7;
  v96 = a4;
  v107 = sub_18A4A2B48();
  v15 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v109 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a2[5];
  v126 = a2[4];
  v127 = v17;
  v128 = a2[6];
  v129 = *(a2 + 56);
  v18 = a2[1];
  v122 = *a2;
  v123 = v18;
  v19 = a2[2];
  v20 = a2[3];
  v117 = a2;
  v124 = v19;
  v125 = v20;
  v98 = *(a1 + 16);
  if (v98)
  {
    v21 = 0;
    v97 = a1 + 32;
    v105 = v15 + 32;
    v22 = MEMORY[0x1E69E7CC0];
    v113 = *&UIEdgeInsetsZero.top;
    v112 = *&UIEdgeInsetsZero.bottom;
    v110 = 0.0;
    v23 = a5;
    v104.size.height = 0.0;
    v104.size.width = 0.0;
    v104.origin.y = a6;
    v104.origin.x = a5;
    v24 = v117;
    v103 = a5;
    v106 = v15;
    while (1)
    {
      v25 = *(v97 + 8 * v21);
      v26 = *(v24 + 112);
      v27 = *(v25 + 16);
      v108 = v21;
      if (v26)
      {
        if (v27 == 1)
        {
          if (*(v25 + 80) < 0)
          {
            v116 = 0;
          }

          else
          {
            v116 = *(v25 + 65) & 1;
          }

          v27 = 1;
        }

        else
        {
          v116 = 0;
        }
      }

      else
      {
        v116 = 1;
      }

      v102 = v22;

      swift_beginAccess();
      v101 = v23;
      if (v27)
      {
        v28 = 0;
        v29 = 0;
        v30 = (v25 + 80);
        v120 = MEMORY[0x1E69E7CC0];
        v115 = v25;
        v118 = v27;
        while (v28 < *(v25 + 16))
        {
          v32 = *(v30 - 6);
          v31 = *(v30 - 5);
          v34 = *(v30 - 4);
          v33 = *(v30 - 3);
          v36 = *(v30 - 2);
          v35 = *(v30 - 1);
          v37 = *v30;
          if (v37 < 0)
          {
            v65 = 0.0;
            if ((v31 & 1) == 0)
            {
              v65 = *(v24 + 4);
              if (v65 < *&v32)
              {
                v65 = *(v30 - 6);
              }
            }

            v23 = v23 + v65;
            sub_18907F470(*(v30 - 6), *(v30 - 5), *(v30 - 4), *(v30 - 3), *(v30 - 2), v35, *v30);
          }

          else
          {
            v38 = *(v24 + 5);
            v39 = v114;
            if ((v37 & 1) == 0)
            {
              v39 = a9;
            }

            if (v116)
            {
              v39 = a9;
            }

            v40 = v23 + v38;
            if (v39 <= *&v33)
            {
              v41 = v39;
            }

            else
            {
              v41 = *(v30 - 3);
            }

            if (v29)
            {
              v40 = v40 + *(v24 + 4);
            }

            v42 = *(v30 - 4);
            if (*(v24 + 8) < *&v32)
            {
              v43 = *(v30 - 6);
            }

            else
            {
              v43 = *(v24 + 8);
            }

            v119 = *(v30 - 1);
            if (*&v34 - v43 <= 0.0 || v42 - v43 <= 0.0)
            {
              sub_18907F470(v32, v31, v34, v33, v36, v35, v37);
            }

            else
            {
              v44 = v35;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937BF0, &qword_18A6617E0);
              v45 = swift_allocObject();
              *(v45 + 16) = xmmword_18A64BFA0;
              *(v45 + 32) = v108;
              *(v45 + 40) = v28;
              sub_18907F470(v32, v31, v34, v33, v36, v44, v37);
              MEMORY[0x18CFDDA80](v45);
              v46 = v111;
              v47 = *(v111 + 16);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v46 + 16) = v47;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v47 = sub_188E4BB58(0, v47[2] + 1, 1, v47);
                *(v111 + 16) = v47;
              }

              v50 = v47[2];
              v49 = v47[3];
              v51 = v50 + 1;
              if (v50 >= v49 >> 1)
              {
                v95 = v50 + 1;
                v66 = sub_188E4BB58((v49 > 1), v50 + 1, 1, v47);
                v51 = v95;
                v47 = v66;
              }

              v110 = v110 + *&v34 - v43;
              v47[2] = v51;
              (*(v106 + 32))(v47 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v50, v109, v107);
              *(v111 + 16) = v47;
              v24 = v117;
            }

            v52 = UIRectIntegralWithScale(v40, (*(v24 + 1) - v41) * 0.5 + a6, v43, v41, *(v24 + 3));
            v54 = v53;
            v56 = v55;
            v58 = v57;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v120 = sub_188C40F58(0, *(v120 + 2) + 1, 1, v120);
            }

            v60 = *(v120 + 2);
            v59 = *(v120 + 3);
            if (v60 >= v59 >> 1)
            {
              v120 = sub_188C40F58((v59 > 1), v60 + 1, 1, v120);
            }

            v61 = v120;
            *(v120 + 2) = v60 + 1;
            v62 = &v61[72 * v60];
            *(v62 + 4) = v52;
            *(v62 + 5) = v54;
            *(v62 + 6) = v56;
            *(v62 + 7) = v58;
            v62[64] = v36 & 1;
            v63 = *&v121[3];
            *(v62 + 65) = *v121;
            *(v62 + 17) = v63;
            *(v62 + 72) = v113;
            *(v62 + 88) = v112;
            v130.origin.x = v52;
            v130.origin.y = v54;
            v130.size.width = v56;
            v130.size.height = v58;
            Width = CGRectGetWidth(v130);
            sub_18907F47C(v32, v31, v34, v33, v36, v119, v37);
            v23 = v38 + v40 + Width;
            v24 = v117;
            v25 = v115;
          }

          ++v28;
          v29 = v37 >= 0;
          v30 += 56;
          if (v118 == v28)
          {
            goto LABEL_48;
          }
        }

        __break(1u);
        return;
      }

      v120 = MEMORY[0x1E69E7CC0];
LABEL_48:
      v67 = *(v25 + 16);
      if (v67 == 1)
      {
        v22 = v102;
        if (*(v24 + 113))
        {
          v68 = *(v25 + 32);
          v69 = *(v25 + 40);
          v70 = *(v25 + 48);
          v71 = *(v25 + 56);
          v72 = *(v25 + 64);
          v73 = *(v25 + 72);
          v74 = *(v25 + 80);
          sub_18907F470(v68, v69, v70, v71, v72, v73, *(v25 + 80));

          if ((v74 & 0x80000000) == 0)
          {
            if ((v72 & 0x10000) != 0)
            {
              v24 = v117;
              if (!v73)
              {
                v73 = [objc_opt_self() tintColor];
              }

              goto LABEL_56;
            }

            sub_18907F47C(v68, v69, v70, v71, v72, v73, v74);
          }

          v73 = 0;
          v24 = v117;
        }

        else
        {

          v73 = 0;
        }
      }

      else
      {

        v73 = 0;
        v22 = v102;
      }

LABEL_56:
      v75 = v101;
      v131.origin.x = v103;
      v131.origin.y = a6;
      v131.size.width = v99;
      v131.size.height = v100;
      Height = CGRectGetHeight(v131);
      v77 = UIRectIntegralWithScale(v75, a6, v23 - v75, Height, *(v24 + 3));
      v79 = v78;
      v81 = v80;
      v83 = v82;
      v132.origin.x = v77;
      v132.origin.y = v78;
      v132.size.width = v80;
      v132.size.height = v82;
      v104 = CGRectUnion(v104, v132);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_188C4153C(0, *(v22 + 2) + 1, 1, v22);
      }

      v85 = *(v22 + 2);
      v84 = *(v22 + 3);
      if (v85 >= v84 >> 1)
      {
        v22 = sub_188C4153C((v84 > 1), v85 + 1, 1, v22);
      }

      *(v22 + 2) = v85 + 1;
      v86 = &v22[56 * v85];
      *(v86 + 4) = v120;
      v87 = v116 ^ 1;
      *(v86 + 5) = v77;
      *(v86 + 6) = v79;
      *(v86 + 7) = v81;
      *(v86 + 8) = v83;
      v86[72] = v87;
      *(v86 + 10) = v73;
      v24 = v117;
      if (v67)
      {
        v23 = v23 + *(v117 + 7);
      }

      v21 = v108 + 1;
      a5 = v103;
      if (v108 + 1 == v98)
      {
        goto LABEL_65;
      }
    }
  }

  v22 = MEMORY[0x1E69E7CC0];
  v110 = 0.0;
  v104.origin.x = a5;
  v104.origin.y = a6;
  v104.size.width = 0.0;
  v104.size.height = 0.0;
LABEL_65:
  v88 = v96;
  *v96 = v22;
  *(v88 + 1) = a5;
  *(v88 + 2) = a6;
  v89 = v100;
  *(v88 + 3) = v99;
  *(v88 + 4) = v89;
  y = v104.origin.y;
  v88[5] = *&v104.origin.x;
  *(v88 + 6) = y;
  v91 = v104.size.height;
  v88[7] = *&v104.size.width;
  *(v88 + 8) = v91;
  *(v88 + 9) = v110;
  v92 = v127;
  *(v88 + 9) = v126;
  *(v88 + 10) = v92;
  *(v88 + 11) = v128;
  *(v88 + 96) = v129;
  v93 = v123;
  *(v88 + 5) = v122;
  *(v88 + 6) = v93;
  v94 = v125;
  *(v88 + 7) = v124;
  *(v88 + 8) = v94;
}

void sub_188B45920(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a3;
  v81 = sub_18A4A2B48();
  v5 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a2;
  v9 = *(a2 + 8);
  if (v9 - (*(a2 + 48) + *(a2 + 48)) > 0.0)
  {
    v10 = v9 - (*(a2 + 48) + *(a2 + 48));
  }

  else
  {
    v10 = 0.0;
  }

  if (*(a2 + 112))
  {
    v11 = *(a2 + 8);
  }

  else
  {
    v11 = v10;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = MEMORY[0x1E69E7CC0];
  v13 = (v12 + 16);
  v63 = v12;
  v64 = a2;
  sub_188B44F48(a1, a2, v12, &v108, 0.0, 0.0, v8, v9, v11, v10);
  v134.origin.x = *(&v110 + 1);
  *&v134.origin.y = v111;
  *&v134.size.height = v112;
  v105 = v118;
  v106 = v119;
  v107 = v120;
  v101 = v114;
  v102 = v115;
  v103 = v116;
  v104 = v117;
  v97 = v110;
  v98 = v111;
  v99 = v112;
  v100 = v113;
  v95 = v108;
  v96 = v109;
  Width = CGRectGetWidth(v134);
  swift_beginAccess();
  v15 = *v13;
  v16 = *(v15 + 16);
  if (!v16 || v8 - Width <= 0.0 || (v17 = (v8 - Width) / v16, v17 < 1.0))
  {
LABEL_43:
    sub_188B42FA0();
    if (v64[1])
    {
      sub_18907EF54();
    }

    v54 = v106;
    v55 = v62;
    *(v62 + 160) = v105;
    *(v55 + 176) = v54;
    *(v55 + 192) = v107;
    v56 = v102;
    *(v55 + 96) = v101;
    *(v55 + 112) = v56;
    v57 = v104;
    *(v55 + 128) = v103;
    *(v55 + 144) = v57;
    v58 = v98;
    *(v55 + 32) = v97;
    *(v55 + 48) = v58;
    v59 = v100;
    *(v55 + 64) = v99;
    *(v55 + 80) = v59;
    v60 = v96;
    *v55 = v95;
    *(v55 + 16) = v60;
    return;
  }

  v93[9] = v117;
  v93[10] = v118;
  v93[11] = v119;
  v93[5] = v113;
  v93[6] = v114;
  v94 = v120;
  v93[7] = v115;
  v93[8] = v116;
  v93[2] = v110;
  v93[3] = v111;
  v93[4] = v112;
  v93[0] = v108;
  v93[1] = v109;
  sub_188B42530(v93);
  v18 = *(v15 + 16);
  if (!v18)
  {

LABEL_42:
    sub_188B44F48(a1, v64, v63, &v121, 0.0, 0.0, v8, v9, v11, v10);

    v105 = v131;
    v106 = v132;
    v107 = v133;
    v101 = v127;
    v102 = v128;
    v103 = v129;
    v104 = v130;
    v97 = v123;
    v98 = v124;
    v99 = v125;
    v100 = v126;
    v95 = v121;
    v96 = v122;
    goto LABEL_43;
  }

  v20 = *(v5 + 16);
  v19 = v5 + 16;
  v21 = v15 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
  v68 = *(a1 + 16);
  v69 = v20;
  v65 = *(v19 + 56);
  v70 = v19;
  v66 = (v19 - 8);
  v67 = a1 + 32;

  v78 = v7;
  while (1)
  {
    v69(v7, v21, v81);
    if (sub_18A4A2B28() < 1)
    {
      break;
    }

    v23 = sub_18A4A2B58();
    if (v23 >= v68)
    {
      goto LABEL_47;
    }

    v24 = *(v67 + 8 * v23);

    if (sub_18A4A2B28() < 1)
    {
      goto LABEL_48;
    }

    if (sub_18A4A2B28() < 2)
    {
      v25 = sub_18A4A2388();
    }

    else
    {
      v25 = sub_18A4A2B58();
    }

    if ((v25 & 0x8000000000000000) != 0)
    {
      goto LABEL_49;
    }

    if (v25 >= *(v24 + 16))
    {
      goto LABEL_50;
    }

    v79 = v21;
    v80 = v18;
    v26 = v24 + 56 * v25;
    v27 = *(v26 + 32);
    v28 = *(v26 + 40);
    v29 = *(v26 + 48);
    v30 = *(v26 + 56);
    v32 = *(v26 + 64);
    v31 = *(v26 + 72);
    v33 = *(v26 + 80);
    sub_18907F470(v27, v28, v29, v30, v32, v31, *(v26 + 80));

    if (v33 < 0)
    {
      v22 = v31;
      v7 = v78;
      (*v66)(v78, v81);
      sub_18907F47C(v27, v28, v29, v30, v32, v22, v33);
    }

    else
    {
      v82 = a1;
      if (v17 + *&v27 <= *&v29)
      {
        v34 = v17 + *&v27;
      }

      else
      {
        v34 = *&v29;
      }

      sub_18907F470(v27, v28, v29, v30, v32, v31, v33);
      if (sub_18A4A2B28() < 1)
      {
        goto LABEL_51;
      }

      *&v77 = v27;
      v35 = sub_18A4A2B58();
      if (sub_18A4A2B28() < 1)
      {
        goto LABEL_52;
      }

      if (sub_18A4A2B28() < 2)
      {
        v36 = sub_18A4A2388();
      }

      else
      {
        v36 = sub_18A4A2B58();
      }

      v76 = v36;
      v37 = v30;
      *&v121 = v34;
      *(&v121 + 1) = v28;
      *&v122 = v29;
      *(&v122 + 1) = v30;
      v74 = v33 & 1;
      v75 = v32 & 1;
      LOWORD(v123) = v32 & 0x101;
      v72 = WORD1(v32) & 1;
      v73 = (v32 >> 8) & 1;
      BYTE2(v123) = BYTE2(v32) & 1;
      *(&v123 + 1) = v31;
      LOBYTE(v124) = v33 & 1;
      sub_18907F488(&v121, v83);
      v38 = v82;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v35 & 0x8000000000000000) != 0)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v38 = sub_189212B88(v38);
        if ((v35 & 0x8000000000000000) != 0)
        {
          goto LABEL_53;
        }
      }

      if (v35 >= v38[2])
      {
        goto LABEL_54;
      }

      v82 = v38;
      v39 = v38 + 4;
      v40 = v38[v35 + 4];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39[v35] = v40;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v39[v35] = sub_189212B74(v40);
      }

      sub_18907F47C(v77, v28, v29, v37, v32, v31, v33);
      v77 = v122;
      v71 = v121;
      v42 = v123;
      v43 = v124;
      *v83 = v34;
      v83[1] = v28;
      v83[2] = v29;
      v83[3] = v37;
      v84 = v75;
      v85 = v73;
      v86 = v72;
      v87 = v91;
      v88 = v92;
      v89 = v31;
      v90 = v74;
      sub_18907F4C0(v83);
      v7 = v78;
      (*v66)(v78, v81);
      if ((v76 & 0x8000000000000000) != 0)
      {
        goto LABEL_55;
      }

      v44 = v39[v35];
      if (v76 >= *(v44 + 16))
      {
        goto LABEL_56;
      }

      v45 = v44 + 56 * v76;
      v46 = *(v45 + 32);
      v47 = *(v45 + 40);
      v48 = *(v45 + 48);
      v49 = *(v45 + 56);
      v50 = *(v45 + 64);
      v51 = *(v45 + 72);
      v52 = v77;
      *(v45 + 32) = v71;
      *(v45 + 48) = v52;
      *(v45 + 64) = v42 & 0x10101;
      *(v45 + 72) = *(&v42 + 1);
      v53 = *(v45 + 80);
      *(v45 + 80) = v43 & 1;
      sub_18907F47C(v46, v47, v48, v49, v50, v51, v53);
      a1 = v82;
    }

    v21 = v79 + v65;
    v18 = v80 - 1;
    if (v80 == 1)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
}

uint64_t sub_188B46068()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188B460A0(uint64_t result, int a2, int a3)
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

double sub_188B460EC(uint64_t a1, CGRect *a2, CGRect *a3, CGRect *a4)
{
  v6 = a2;
  if ((*(a1 + 160) & 1) != 0 || *(a1 + 216))
  {
    p_y = &a2->origin.y;
    p_size = &a2->size;
    p_height = &a2->size.height;
    if (CGRectGetWidth(*a2) <= 0.0)
    {
      p_y = &a3->origin.y;
      p_size = &a3->size;
      p_height = &a3->size.height;
      v6 = a3;
    }
  }

  else
  {
    p_height = (a1 + 152);
    p_size = (a1 + 144);
    p_y = (a1 + 136);
    v6 = (a1 + 128);
  }

  v11 = *p_height;
  width = p_size->width;
  v13 = *p_y;
  x = v6->origin.x;
  v17.origin.x = v6->origin.x;
  v17.origin.y = *p_y;
  v17.size.width = p_size->width;
  v17.size.height = *p_height;
  CGRectGetMinX(v17);
  CGRectGetMaxX(*a4);
  MaxX = CGRectGetMaxX(*a4);
  if (CGRectGetWidth(*a4) > 0.0)
  {
    MaxX = MaxX + *(a1 + 240);
  }

  v18.origin.x = x;
  v18.origin.y = v13;
  v18.size.width = width;
  v18.size.height = v11;
  CGRectGetWidth(v18);
  return MaxX;
}

void sub_188B46254(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v2 == v3)
  {
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  if (v2 >= v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = *v1 + 56 * v2;
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  v7 = *(v4 + 56);
  v8 = *(v4 + 80);
  v9 = v2 + 1;
  v10 = *(v4 + 72);
  v1[1] = v9;
  v11 = v1[2];
  if (__OFADD__(v11, 1))
  {
LABEL_9:
    __break(1u);
    return;
  }

  v1[2] = v11 + 1;
  *a1 = v11;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 48) = v10;
  *(a1 + 56) = v8;
  v12 = v8;
}

uint64_t get_enum_tag_for_layout_string_5UIKit33NavigationBarContentWidthResolverV7ElementVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_188B46318(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v38 = result;
  if (a3 != a2)
  {
    v5 = a3;
    v6 = *a4;
    v7 = (a5 + 40);
    v30 = *a4;
LABEL_5:
    v29 = v5;
    while (1)
    {
      v8 = (v6 + 40 * v5);
      v9 = *v8;
      v10 = v8[1];
      v35 = *(v8 + 16);
      v33 = v9;
      v34 = v10;
      v11 = *(v8 - 40);
      v12 = *(v8 - 24);
      v37 = *(v8 - 4);
      v36[0] = v11;
      v36[1] = v12;
      if (v34 >= v12)
      {
        v13 = *(a5 + 16);
        if (!v13)
        {
          goto LABEL_29;
        }

        v14 = 0;
        v15 = v7;
        while (1)
        {
          v16 = *(v15 - 1) == v33 && *v15 == *(&v33 + 1);
          if (v16 || (sub_18A4A86C8() & 1) != 0)
          {
            break;
          }

          ++v14;
          v15 += 6;
          if (v13 == v14)
          {
            goto LABEL_29;
          }
        }

        v17 = 0;
        v18 = v7;
        while (1)
        {
          result = *(v7 - 1);
          if (result == *&v36[0] && *v7 == *(&v36[0] + 1))
          {
            break;
          }

          result = sub_18A4A86C8();
          if (result)
          {
            break;
          }

          ++v17;
          v7 += 6;
          if (v13 == v17)
          {
            goto LABEL_29;
          }
        }

        v7 = v18;
        v6 = v30;
        if (v14 >= v17)
        {
LABEL_4:
          v5 = v29 + 1;
          if (v29 + 1 == a2)
          {
            return result;
          }

          goto LABEL_5;
        }
      }

      if (!v6)
      {
        break;
      }

      --v5;
      v20 = *v8;
      v21 = v8 - 40;
      v22 = *(v8 + 2);
      v23 = *(v8 + 3);
      v24 = *(v8 + 32);
      v25 = *(v8 + 33);
      v26 = *(v8 - 24);
      *v8 = *(v8 - 40);
      v8[1] = v26;
      *(v8 + 4) = *(v8 - 1);
      *v21 = v20;
      *(v21 + 16) = v22;
      *(v21 + 24) = v23;
      *(v21 + 32) = v24;
      *(v21 + 33) = v25;
      if (v5 == v38)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
LABEL_29:
    v32[5] = 0;
    v32[6] = 0xE000000000000000;
    sub_1891CED2C(&v33, v32);
    sub_1891CED2C(v36, v32);
    sub_18A4A80E8();

    v32[0] = 0xD00000000000002CLL;
    v32[1] = 0x800000018A6AFF00;
    v27 = sub_1891CD8E0();
    MEMORY[0x18CFE22D0](v27);

    result = sub_18A4A8398();
    __break(1u);
  }

  return result;
}

uint64_t sub_188B46640()
{
  v0 = sub_18A4A4378();
  __swift_allocate_value_buffer(v0, qword_1ED48CD70);
  __swift_project_value_buffer(v0, qword_1ED48CD70);
  return sub_18A4A4368();
}

char *sub_188B466D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934200, &qword_18A64BE38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void sub_188B467F4(_OWORD *a1@<X8>, double a2@<D0>)
{
  v3 = v2;
  if (*(v2 + 249))
  {
    v4 = 6;
    if (*(v2 + 8) == 1)
    {
      v4 = 20;
    }

    v221 = v4;
    v238 = 30;
    v241 = 26;
    v5 = 8;
    v225 = 7;
    v216 = 25;
    v228 = 5;
    v6 = 4;
  }

  else
  {
    v238 = 20;
    v241 = 10;
    v5 = 9;
    v225 = 8;
    v216 = 7;
    v221 = 6;
    v228 = 4;
    v6 = 5;
  }

  v236 = v6;
  v249 = *(v2 + 240);
  v199 = *(v2 + 136);
  rect = *(v2 + 128);
  v197 = *(v2 + 152);
  v198 = *(v2 + 144);
  v7 = *(v2 + 160);
  if ((v7 & 1) != 0 || *(v2 + 216) != 2)
  {
    v368.origin.x = *(v2 + 32);
    v368.origin.y = *(v2 + 40);
    v368.size.width = *(v2 + 96);
    v368.size.height = *(v2 + 104);
    v8 = *(v2 + 64);
    v9 = *(v2 + 72);
    v10 = *(v2 + 80);
    v11 = *(v2 + 88);
    v385.origin.x = v8;
    v385.origin.y = v9;
    v385.size.width = v10;
    v385.size.height = v11;
    v369 = CGRectIntersection(v368, v385);
    x = v369.origin.x;
    y = v369.origin.y;
    width = v369.size.width;
    height = v369.size.height;
    if (CGRectGetWidth(v369) > 0.0)
    {
      v9 = y;
      goto LABEL_12;
    }
  }

  else
  {
    v8 = *(v2 + 64);
    v9 = *(v2 + 72);
    v10 = *(v2 + 80);
    v11 = *(v2 + 88);
  }

  v370.origin.x = v8;
  v370.origin.y = v9;
  v370.size.width = v10;
  v370.size.height = v11;
  x = CGRectGetMinX(v370);
  width = 0.0;
  height = 0.0;
LABEL_12:
  v16 = 0xD000000000000010;
  v371.origin.x = x;
  v371.origin.y = v9;
  v371.size.width = width;
  v371.size.height = height;
  if (CGRectGetWidth(v371) <= 0.0)
  {
    v243 = 0;
    v17 = 0;
    v24 = 0;
    v20 = 0;
    if (v7)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v17 = 0x800000018A6954D0;
    v372.origin.x = x;
    v372.origin.y = v9;
    v372.size.width = width;
    v372.size.height = height;
    v18 = CGRectGetWidth(v372);
    if (v18 <= 1000000.0)
    {
      v19 = v18;
    }

    else
    {
      v19 = 1000000.0;
    }

    v20 = sub_188B466D8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v22 = *(v20 + 2);
    v21 = *(v20 + 3);
    if (v22 >= v21 >> 1)
    {
      v20 = sub_188B466D8((v21 > 1), v22 + 1, 1, v20);
    }

    *(v20 + 2) = v22 + 1;
    v23 = &v20[40 * v22];
    v243 = 0xD000000000000012;
    *(v23 + 4) = 0xD000000000000012;
    *(v23 + 5) = 0x800000018A6954D0;
    *(v23 + 6) = 0;
    *(v23 + 7) = v19;
    *(v23 + 32) = 0;
    v24 = 1;
    if (v7)
    {
      goto LABEL_23;
    }
  }

  if (*(v3 + 216) == 2)
  {
    v25 = *(v3 + 64);
    v26 = *(v3 + 72);
    v27 = *(v3 + 80);
    v28 = *(v3 + 88);
    goto LABEL_25;
  }

LABEL_23:
  v373.origin.x = *(v3 + 32);
  v29 = *(v3 + 40);
  v373.size.width = *(v3 + 48);
  v373.size.height = *(v3 + 56);
  v373.origin.y = v29;
  MaxX = CGRectGetMaxX(v373);
  v374.size.width = *(v3 + 112);
  v374.size.height = *(v3 + 120);
  v374.origin.x = MaxX - v374.size.width;
  v25 = *(v3 + 64);
  v26 = *(v3 + 72);
  v27 = *(v3 + 80);
  v28 = *(v3 + 88);
  v374.origin.y = v29;
  v386.origin.x = v25;
  v386.origin.y = v26;
  v386.size.width = v27;
  v386.size.height = v28;
  v375 = CGRectIntersection(v374, v386);
  v31 = v375.origin.x;
  v32 = v375.origin.y;
  v33 = v375.size.width;
  v34 = v375.size.height;
  if (CGRectGetWidth(v375) > 0.0)
  {
    v26 = v32;
    goto LABEL_26;
  }

LABEL_25:
  v376.origin.x = v25;
  v376.origin.y = v26;
  v376.size.width = v27;
  v376.size.height = v28;
  v31 = CGRectGetMaxX(v376);
  v33 = 0.0;
  v34 = 0.0;
LABEL_26:
  v35 = v249;
  v377.origin.x = v31;
  v377.origin.y = v26;
  v377.size.width = v33;
  v377.size.height = v34;
  if (CGRectGetWidth(v377) <= 0.0)
  {
    v234 = 0;
    v240 = 0;
    v248 = 0;
    v38 = 0;
  }

  else
  {
    v240 = 0x800000018A6954B0;
    v378.origin.x = v31;
    v378.origin.y = v26;
    v378.size.width = v33;
    v378.size.height = v34;
    v36 = CGRectGetWidth(v378);
    if (v36 <= 1000000.0)
    {
      v37 = v36;
    }

    else
    {
      v37 = 1000000.0;
    }

    v38 = sub_188B466D8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v40 = *(v38 + 2);
    v39 = *(v38 + 3);
    if (v40 >= v39 >> 1)
    {
      v38 = sub_188B466D8((v39 > 1), v40 + 1, 1, v38);
    }

    *(v38 + 2) = v40 + 1;
    v41 = &v38[40 * v40];
    v234 = 0xD000000000000013;
    *(v41 + 4) = 0xD000000000000013;
    *(v41 + 5) = 0x800000018A6954B0;
    *(v41 + 6) = 0;
    *(v41 + 7) = v37;
    *(v41 + 32) = 0;
    v248 = 1;
  }

  v42 = *(v3 + 272);
  v213 = v17;
  v215 = v20;
  v235 = v24;
  v223 = v5;
  rect_8 = v7;
  if (*(v3 + 272) == 0xFF)
  {
    v43 = 0;
    v212 = 0;
    v232 = 0;
    v250 = 0;
  }

  else
  {
    v45 = *(v3 + 256);
    v44 = *(v3 + 264);
    v46 = *(v3 + 280);
    v47 = *(v3 + 288);
    v48 = *v3;
    if (*(v3 + 272))
    {
      if (*(v3 + 272) == 1)
      {
        v49 = *(v3 + 256);
      }

      else
      {
        v52 = sub_188C57860(*(v3 + 256), *(v3 + 264), 2);
        v45(v52, 10000.0, v48, 50.0, 50.0);
      }
    }

    else
    {
      sub_188C57860(*(v3 + 256), *(v3 + 264), 0);
      LODWORD(v50) = 1112014848;
      LODWORD(v51) = 1112014848;
      [v45 systemLayoutSizeFittingSize:10000.0 withHorizontalFittingPriority:v48 verticalFittingPriority:{v50, v51}];
    }

    v53 = v46;
    if (*(v3 + 304))
    {
      v54 = v248;
      v55 = v38;
    }

    else
    {
      v54 = v248;
      v56 = *(v3 + 296);
      v55 = v38;
      if (v47 == 0.0)
      {
        v47 = *(v3 + 296);
      }

      else if (v56 > 0.0 && v56 <= v47)
      {
        v47 = *(v3 + 296);
      }
    }

    if (v49 < v46)
    {
      v49 = v46;
    }

    if (v46 <= 0.0)
    {
      v49 = v47;
    }

    if (v49 <= 1000000.0)
    {
      v57 = v49;
    }

    else
    {
      v57 = 1000000.0;
    }

    v58 = sub_188B466D8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v60 = *(v58 + 2);
    v59 = *(v58 + 3);
    v250 = v58;
    v61 = v59 >> 1;
    v62 = v60 + 1;
    if (v59 >> 1 <= v60)
    {
      v250 = sub_188B466D8((v59 > 1), v60 + 1, 1, v58);
      v59 = *(v250 + 3);
      v61 = v59 >> 1;
    }

    *(v250 + 2) = v62;
    v63 = &v250[40 * v60];
    *(v63 + 4) = 1801675074;
    *(v63 + 5) = 0xE400000000000000;
    *(v63 + 6) = 0;
    *(v63 + 7) = v57;
    *(v63 + 32) = 0;
    if (v46 > 1000000.0)
    {
      v53 = 1000000.0;
    }

    v64 = v60 + 2;
    if (v61 < v64)
    {
      v250 = sub_188B466D8((v59 > 1), v64, 1, v250);
    }

    sub_188C5F320(v45, v44, v42);
    *(v250 + 2) = v64;
    v65 = &v250[40 * v62];
    v43 = 1801675074;
    *(v65 + 4) = 1801675074;
    *(v65 + 5) = 0xE400000000000000;
    *(v65 + 6) = 1;
    *(v65 + 7) = v53;
    v232 = 1;
    *(v65 + 32) = 1;
    v16 = 0xD000000000000010;
    v38 = v55;
    v248 = v54;
    v212 = 0xE400000000000000;
  }

  v233 = v43;
  if (*(v3 + 344))
  {
    v66 = *(v3 + 312);
    v67 = *(v3 + 320);
    if (*(v3 + 328) <= 1000000.0)
    {
      v68 = *(v3 + 328);
    }

    else
    {
      v68 = 1000000.0;
    }

    v69 = sub_188B466D8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v71 = *(v69 + 2);
    v70 = *(v69 + 3);
    v72 = v69;
    v73 = v70 >> 1;
    v74 = v71 + 1;
    if (v70 >> 1 <= v71)
    {
      v72 = sub_188B466D8((v70 > 1), v71 + 1, 1, v69);
      v70 = *(v72 + 3);
      v73 = v70 >> 1;
    }

    *(v72 + 2) = v74;
    v75 = &v72[40 * v71];
    *(v75 + 4) = 0xD000000000000010;
    *(v75 + 5) = 0x800000018A695490;
    *(v75 + 6) = 0;
    *(v75 + 7) = v68;
    *(v75 + 32) = 0;
    if (v67 > 1000000.0)
    {
      v67 = 1000000.0;
    }

    v76 = v71 + 2;
    if (v73 < (v71 + 2))
    {
      v72 = sub_188B466D8((v70 > 1), v71 + 2, 1, v72);
    }

    *(v72 + 2) = v76;
    v77 = &v72[40 * v74];
    *(v77 + 4) = 0xD000000000000010;
    *(v77 + 5) = 0x800000018A695490;
    *(v77 + 6) = v236;
    *(v77 + 7) = v67;
    *(v77 + 32) = 0;
    if (v66 > 1000000.0)
    {
      v66 = 1000000.0;
    }

    v78 = *(v72 + 3);
    if ((v71 + 3) > (v78 >> 1))
    {
      v79 = sub_188B466D8((v78 > 1), v71 + 3, 1, v72);
    }

    else
    {
      v79 = v72;
    }

    *(v79 + 2) = v71 + 3;
    v231 = v79;
    v80 = &v79[40 * v76];
    *(v80 + 4) = 0xD000000000000010;
    *(v80 + 5) = 0x800000018A695490;
    v81 = 0x800000018A695490;
    *(v80 + 6) = v238;
    *(v80 + 7) = v66;
    v208 = 1;
    *(v80 + 32) = 1;
  }

  else
  {
    v16 = 0;
    v81 = 0;
    v208 = 0;
    v231 = 0;
  }

  v237 = v16;
  v210 = v81;
  if (*(v3 + 408))
  {
    v82 = *(v3 + 376);
    v83 = *(v3 + 384);
    if (*(v3 + 392) <= 1000000.0)
    {
      v84 = *(v3 + 392);
    }

    else
    {
      v84 = 1000000.0;
    }

    v85 = sub_188B466D8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v87 = *(v85 + 2);
    v86 = *(v85 + 3);
    v88 = v86 >> 1;
    v89 = v87 + 1;
    v90 = v243;
    if (v86 >> 1 <= v87)
    {
      v85 = sub_188B466D8((v86 > 1), v87 + 1, 1, v85);
      v86 = *(v85 + 3);
      v88 = v86 >> 1;
    }

    *(v85 + 2) = v89;
    v91 = &v85[40 * v87];
    v239 = 0x42676E696461654CLL;
    *(v91 + 4) = 0x42676E696461654CLL;
    *(v91 + 5) = 0xEA00000000007261;
    v230 = 0xEA00000000007261;
    *(v91 + 6) = 0;
    *(v91 + 7) = v84;
    *(v91 + 32) = 0;
    if (v83 > 1000000.0)
    {
      v83 = 1000000.0;
    }

    v92 = v87 + 2;
    if (v88 < (v87 + 2))
    {
      v85 = sub_188B466D8((v86 > 1), v87 + 2, 1, v85);
    }

    v93 = a2;
    *(v85 + 2) = v92;
    v94 = &v85[40 * v89];
    *(v94 + 4) = 0x42676E696461654CLL;
    *(v94 + 5) = 0xEA00000000007261;
    *(v94 + 6) = v228;
    *(v94 + 7) = v83;
    *(v94 + 32) = 0;
    if (v82 > 1000000.0)
    {
      v82 = 1000000.0;
    }

    v95 = *(v85 + 3);
    if ((v87 + 3) > (v95 >> 1))
    {
      v85 = sub_188B466D8((v95 > 1), v87 + 3, 1, v85);
    }

    *(v85 + 2) = v87 + 3;
    v96 = &v85[40 * v92];
    *(v96 + 4) = 0x42676E696461654CLL;
    *(v96 + 5) = 0xEA00000000007261;
    *(v96 + 6) = v241;
    *(v96 + 7) = v82;
    v97 = 1;
    *(v96 + 32) = 1;
  }

  else
  {
    v239 = 0;
    v230 = 0;
    v97 = 0;
    v85 = 0;
    v90 = v243;
    v93 = a2;
  }

  v229 = v97;
  v218 = v85;
  if (v93 <= 0.0)
  {
    v227 = 0;
    v220 = 0;
    v222 = 0;
    v111 = 0;
  }

  else
  {
    if (v93 <= 1000000.0)
    {
      v98 = v93;
    }

    else
    {
      v98 = 1000000.0;
    }

    v99 = sub_188B466D8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v101 = *(v99 + 2);
    v100 = *(v99 + 3);
    v102 = v101 + 1;
    if (v101 >= v100 >> 1)
    {
      v99 = sub_188B466D8((v100 > 1), v101 + 1, 1, v99);
    }

    *(v99 + 2) = v102;
    v103 = &v99[40 * v101];
    v227 = 0x656C45656C746954;
    strcpy(v103 + 32, "TitleElements");
    *(v103 + 23) = -4864;
    *(v103 + 6) = 0;
    *(v103 + 7) = v98;
    *(v103 + 32) = 0;
    v104 = *(v3 + 640);
    v85 = v218;
    v220 = 0xED000073746E656DLL;
    if (v104 < v93)
    {
      if (v104 <= 1000000.0)
      {
        v105 = *(v3 + 640);
      }

      else
      {
        v105 = 1000000.0;
      }

      v106 = *(v99 + 3);
      v107 = v101 + 2;
      if (v107 > (v106 >> 1))
      {
        v99 = sub_188B466D8((v106 > 1), v107, 1, v99);
        v85 = v218;
      }

      *(v99 + 2) = v107;
      v108 = &v99[40 * v102];
      strcpy(v108 + 32, "TitleElements");
      *(v108 + 23) = -4864;
      *(v108 + 6) = v221;
      *(v108 + 7) = v105;
      *(v108 + 32) = 0;
      v102 = *(v99 + 2);
    }

    v109 = *(v99 + 3);
    if (v102 >= v109 >> 1)
    {
      v99 = sub_188B466D8((v109 > 1), v102 + 1, 1, v99);
      v85 = v218;
    }

    *(v99 + 2) = v102 + 1;
    v222 = v99;
    v110 = &v99[40 * v102];
    strcpy(v110 + 32, "TitleElements");
    *(v110 + 23) = -4864;
    *(v110 + 6) = v216;
    *(v110 + 7) = 0;
    v110[64] = v104 < v93;
    v110[65] = 0;
    v111 = 1;
  }

  v112 = *(v3 + 456);
  v258 = *(v3 + 440);
  v259 = v112;
  v113 = *(v3 + 488);
  v260 = *(v3 + 472);
  v261 = v113;
  v114 = v260;
  rect_24 = v111;
  if (v260)
  {
    v116 = *(&v258 + 1);
    v115 = *&v258;
    if (*(&v259 + 1) <= 1000000.0)
    {
      v117 = *(&v259 + 1);
    }

    else
    {
      v117 = 1000000.0;
    }

    v362 = *(&v260 + 1);
    v363 = v260;
    sub_188A3F29C(&v258, &v311, &unk_1EA936338, &unk_18A650570);
    sub_188A3F29C(&v363, &v311, &qword_1EA937CD0, &qword_18A653BF0);
    sub_188A3F29C(&v362, &v311, &qword_1EA937CD0, &qword_18A653BF0);
    v118 = sub_188B466D8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v120 = *(v118 + 2);
    v119 = *(v118 + 3);
    v121 = v38;
    v122 = v90;
    if (v120 >= v119 >> 1)
    {
      v118 = sub_188B466D8((v119 > 1), v120 + 1, 1, v118);
    }

    *(v118 + 2) = v120 + 1;
    v123 = &v118[40 * v120];
    v124 = 0x61427265746E6543;
    *(v123 + 4) = 0x61427265746E6543;
    *(v123 + 5) = 0xE900000000000072;
    v246 = 0xE900000000000072;
    *(v123 + 6) = 0;
    *(v123 + 7) = v117;
    *(v123 + 32) = 0;
    v125 = v118;
    sub_188A3F5FC(&v363, &qword_1EA937CD0, &qword_18A653BF0);
    sub_188A3F5FC(&v362, &qword_1EA937CD0, &qword_18A653BF0);
    v126 = v125;
    if (v116 > 1000000.0)
    {
      v116 = 1000000.0;
    }

    v128 = *(v125 + 2);
    v127 = *(v125 + 3);
    v129 = v127 >> 1;
    v130 = v128 + 1;
    if (v127 >> 1 <= v128)
    {
      v126 = sub_188B466D8((v127 > 1), v128 + 1, 1, v125);
      v127 = *(v126 + 3);
      v129 = v127 >> 1;
    }

    *(v126 + 2) = v130;
    v131 = &v126[40 * v128];
    *(v131 + 4) = 0x61427265746E6543;
    *(v131 + 5) = 0xE900000000000072;
    *(v131 + 6) = 3;
    *(v131 + 7) = v116;
    *(v131 + 32) = 0;
    if (v115 > 1000000.0)
    {
      v115 = 1000000.0;
    }

    v132 = v128 + 2;
    v90 = v122;
    if (v129 < v132)
    {
      v242 = sub_188B466D8((v127 > 1), v132, 1, v126);
    }

    else
    {
      v242 = v126;
    }

    sub_188A3F5FC(&v258, &unk_1EA936338, &unk_18A650570);
    *(v242 + 2) = v132;
    v133 = &v242[40 * v130];
    *(v133 + 4) = 0x61427265746E6543;
    *(v133 + 5) = 0xE900000000000072;
    *(v133 + 6) = v225;
    *(v133 + 7) = v115;
    *(v133 + 32) = 0;
    v114 = 1;
    v85 = v218;
  }

  else
  {
    v121 = v38;
    v124 = 0;
    v246 = 0;
    v242 = 0;
  }

  v226 = v114;
  v214 = v124;
  v134 = *(v3 + 520);
  v254 = *(v3 + 504);
  v255 = v134;
  v135 = *(v3 + 552);
  v256 = *(v3 + 536);
  v257 = v135;
  v219 = v121;
  if (v256)
  {
    v137 = *(&v254 + 1);
    v136 = *&v254;
    if (*(&v255 + 1) <= 1000000.0)
    {
      v138 = *(&v255 + 1);
    }

    else
    {
      v138 = 1000000.0;
    }

    v360 = *(&v256 + 1);
    v361 = v256;
    sub_188A3F29C(&v254, &v311, &unk_1EA936338, &unk_18A650570);
    sub_188A3F29C(&v361, &v311, &qword_1EA937CD0, &qword_18A653BF0);
    sub_188A3F29C(&v360, &v311, &qword_1EA937CD0, &qword_18A653BF0);
    v139 = sub_188B466D8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v141 = *(v139 + 2);
    v140 = *(v139 + 3);
    v142 = v140 >> 1;
    v143 = v141 + 1;
    v144 = v246;
    if (v140 >> 1 <= v141)
    {
      v139 = sub_188B466D8((v140 > 1), v141 + 1, 1, v139);
      v140 = *(v139 + 3);
      v142 = v140 >> 1;
    }

    v145 = v215;
    *(v139 + 2) = v143;
    v146 = &v139[40 * v141];
    *(v146 + 4) = 0x676E696C69617254;
    *(v146 + 5) = 0xEB00000000726142;
    *(v146 + 6) = 0;
    *(v146 + 7) = v138;
    *(v146 + 32) = 0;
    if (v137 > 1000000.0)
    {
      v137 = 1000000.0;
    }

    v147 = v141 + 2;
    if (v142 < v147)
    {
      v139 = sub_188B466D8((v140 > 1), v147, 1, v139);
    }

    *(v139 + 2) = v147;
    v148 = &v139[40 * v143];
    *(v148 + 4) = 0x676E696C69617254;
    *(v148 + 5) = 0xEB00000000726142;
    *(v148 + 6) = 2;
    *(v148 + 7) = v137;
    *(v148 + 32) = 0;
    sub_188A3F5FC(&v361, &qword_1EA937CD0, &qword_18A653BF0);
    sub_188A3F5FC(&v360, &qword_1EA937CD0, &qword_18A653BF0);
    if (v136 > 1000000.0)
    {
      v136 = 1000000.0;
    }

    v150 = *(v139 + 2);
    v149 = *(v139 + 3);
    if (v150 >= v149 >> 1)
    {
      v139 = sub_188B466D8((v149 > 1), v150 + 1, 1, v139);
    }

    sub_188A3F5FC(&v254, &unk_1EA936338, &unk_18A650570);
    *(v139 + 2) = v150 + 1;
    v151 = &v139[40 * v150];
    v152 = 0x676E696C69617254;
    *(v151 + 4) = 0x676E696C69617254;
    *(v151 + 5) = 0xEB00000000726142;
    v153 = 0xEB00000000726142;
    *(v151 + 6) = v223;
    *(v151 + 7) = v136;
    *(v151 + 32) = 0;
    v154 = 1;
    v85 = v218;
  }

  else
  {
    v152 = 0;
    v153 = 0;
    v139 = 0;
    v144 = v246;
    v154 = 0;
    v145 = v215;
  }

  v224 = v139;
  v211 = v153;
  v209 = v152;
  v217 = v154;
  v244 = v90;
  v247 = v144;
  if ((rect_8 & 1) != 0 || (v379.origin.y = v199, v379.origin.x = rect, v379.size.height = v197, v379.size.width = v198, v155 = CGRectGetWidth(v379), v154 = v217, v85 = v218, v152 = v209, v153 = v211, v155 <= 0.0) || *(v3 + 216) == 2)
  {
    v311 = v90;
    v312 = v213;
    v314 = 0;
    v313 = 0;
    v315 = v235;
    v316 = v145;
    v156 = v121;
    v157 = v145;
    v158 = v213;
    v317 = v237;
    v318 = v81;
    v320 = 0;
    v319 = 0;
    v159 = v208;
    v321 = v208;
    v160 = v144;
    v322 = v231;
    v323 = v233;
    v324 = v212;
    v326 = 0;
    v325 = 0;
    v161 = v81;
    v327 = v232;
    v328 = v250;
    v162 = v239;
    v329 = v239;
    v330 = v230;
    v332 = 0;
    v331 = 0;
    v333 = v229;
    v334 = v85;
    v335 = v227;
    v336 = v220;
    v338 = 0;
    v337 = 0;
    v163 = rect_24;
    v339 = rect_24;
    v340 = v222;
    v164 = v214;
    v341 = v214;
    v342 = v160;
    v343 = 0;
    v344 = 0;
    v345 = v226;
    v346 = v242;
    v347 = v152;
    v348 = v153;
    v349 = 0;
    v350 = 0;
    v351 = v154;
    v352 = v139;
    v353 = v234;
    v354 = v240;
    v356 = 0;
    v355 = 0;
    v357 = v248;
    v358 = v156;
    v359 = v35;
    v165 = v85;
    v166 = sub_188B41AC8();
    v167 = CGRectGetWidth(*(v3 + 64));
    rect_8a = sub_188B43844(v166, v167);

    goto LABEL_147;
  }

  v380.origin.x = rect;
  v380.origin.y = v199;
  v380.size.width = v198;
  v380.size.height = v197;
  v169 = *(v3 + 216);
  rect_8b = CGRectGetMinX(v380);
  v170 = v35;
  v172 = *(v3 + 64);
  v171 = *(v3 + 72);
  v173 = *(v3 + 80);
  v174 = *(v3 + 88);
  v381.origin.x = v172;
  v381.origin.y = v171;
  v381.size.width = v173;
  v381.size.height = v174;
  rect_8c = rect_8b - CGRectGetMinX(v381) - v170;
  v196 = v172;
  v382.origin.x = v172;
  v175 = v171;
  v35 = v170;
  v382.origin.y = v175;
  v382.size.width = v173;
  v382.size.height = v174;
  v176 = CGRectGetMaxX(v382);
  v383.origin.x = rect;
  v383.origin.y = v199;
  v383.size.width = v198;
  v383.size.height = v197;
  v177 = v176 - CGRectGetMaxX(v383) - v35;
  v311 = v90;
  v312 = v213;
  v314 = 0;
  v313 = 0;
  v315 = v235;
  v316 = v145;
  v317 = v237;
  v318 = v81;
  v320 = 0;
  v319 = 0;
  v321 = v208;
  v322 = v231;
  v323 = v233;
  v324 = v212;
  v326 = 0;
  v325 = 0;
  v327 = v232;
  v328 = v250;
  v329 = v239;
  v330 = v230;
  v332 = 0;
  v331 = 0;
  v333 = v229;
  v334 = v218;
  v335 = v227;
  v336 = v220;
  v338 = 0;
  v337 = 0;
  v339 = rect_24;
  v340 = v222;
  v341 = v214;
  v342 = v144;
  v343 = 0;
  v344 = 0;
  v345 = v226;
  v346 = v242;
  v347 = v209;
  v348 = v211;
  v349 = 0;
  v350 = 0;
  v351 = v217;
  v352 = v139;
  v353 = v234;
  v354 = v240;
  v356 = 0;
  v355 = 0;
  v357 = v248;
  v358 = v219;
  v359 = v35;
  v178 = sub_188F5FD9C(v169 == 0);
  rect_8d = sub_188B43844(v178, rect_8c);

  *&v288 = v227;
  *(&v288 + 1) = v220;
  v290 = 0;
  v289 = 0;
  *&v291 = rect_24;
  *(&v291 + 1) = v222;
  v366 = v291;
  v365 = 0u;
  v264 = v90;
  v265 = v213;
  v267 = 0;
  v266 = 0;
  v268 = v235;
  v269 = v215;
  v270 = v237;
  v271 = v81;
  v273 = 0;
  v272 = 0;
  v274 = v208;
  v275 = v231;
  v276 = v233;
  v277 = v212;
  v279 = 0;
  v278 = 0;
  v280 = v232;
  v281 = v250;
  v282 = v239;
  v283 = v230;
  v285 = 0;
  v284 = 0;
  v286 = v229;
  v287 = v218;
  v292 = v214;
  v293 = v144;
  v294 = 0;
  v295 = 0;
  v296 = v226;
  v297 = v242;
  v298 = v209;
  v299 = v211;
  v300 = 0;
  v301 = 0;
  v302 = v217;
  v303 = v139;
  v304 = v234;
  v305 = v240;
  v307 = 0;
  v306 = 0;
  v308 = v248;
  v309 = v219;
  v310 = v35;
  v364 = v288;
  sub_188A3F29C(&v364, v262, &qword_1EA937CC0, &qword_18A653BD8);
  v179 = sub_188F60260();
  v180 = sub_188B43844(v179, v177);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v262[0] = rect_8d;
  sub_188F604DC(v180, sub_188F6046C, 0, isUniquelyReferenced_nonNull_native, v262);

  v182 = v262[0];
  v252 = v262[0];
  v183 = *(&v364 + 1);
  if (!*(&v364 + 1))
  {
LABEL_156:
    v164 = v214;
    v157 = v215;
    v158 = v213;
    v162 = v239;
    v161 = v210;
    v163 = rect_24;
    v159 = v208;
    v165 = v218;
    rect_8a = v182;
    goto LABEL_147;
  }

  v184 = v364;
  v185 = *(&v366 + 1);
  if (!v169)
  {
    v263[0] = v364;
    sub_188ECC874(v263);
    v367[0] = v185;
    sub_188A3F5FC(v367, &qword_1EA937CC8, &qword_18A653BE8);
    goto LABEL_156;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934208, &qword_18A653BE0);
  v186 = swift_allocObject();
  *(v186 + 16) = xmmword_18A64BFB0;
  v367[0] = v185;
  *(v186 + 32) = v184;
  *(v186 + 40) = v183;
  *(v186 + 48) = v365;
  *(v186 + 64) = v366;
  *(v186 + 72) = v185;

  sub_188A3F29C(v367, v262, &qword_1EA937CC8, &qword_18A653BE8);
  v384.size.height = v174;
  v384.origin.x = v196;
  v384.origin.y = v175;
  v384.size.width = v173;
  v187 = CGRectGetWidth(v384);
  v188 = sub_188B43844(v186, v187);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (*(v188 + 16) && (v189 = sub_188B0944C(v184, v183), (v190 & 1) != 0))
  {
    v191 = (*(v188 + 56) + 48 * v189);
    v193 = v191[1];
    v192 = v191[2];
    v263[0] = *v191;
    v263[1] = v193;
    v263[2] = v192;
    sub_188F60858(v263, v262);

    v194 = swift_isUniquelyReferenced_nonNull_native();
    v262[0] = v182;
    sub_188CFC724(v263, v184, v183, v194);

    sub_188A3F5FC(v367, &qword_1EA937CC8, &qword_18A653BE8);
    v195 = v262[0];
  }

  else
  {

    sub_1891E988C(v184, v183, v262);

    sub_188A3F5FC(v367, &qword_1EA937CC8, &qword_18A653BE8);

    v195 = v252;
  }

  rect_8a = v195;
  v158 = v213;
  v164 = v214;
  v157 = v215;
  v161 = v81;
  v163 = rect_24;
  v159 = v208;
  v165 = v218;
  v162 = v239;
LABEL_147:
  v262[0] = v244;
  v262[1] = v158;
  v262[3] = 0;
  v262[2] = 0;
  v262[4] = v235;
  v262[5] = v157;
  v262[6] = v237;
  v262[7] = v161;
  v262[9] = 0;
  v262[8] = 0;
  v262[10] = v159;
  v262[11] = v231;
  v262[12] = v233;
  v262[13] = v212;
  v262[15] = 0;
  v262[14] = 0;
  v262[16] = v232;
  v262[17] = v250;
  v262[18] = v162;
  v262[19] = v230;
  v262[20] = 0;
  v262[21] = 0;
  v262[22] = v229;
  v262[23] = v165;
  v262[24] = v227;
  v262[25] = v220;
  v262[27] = 0;
  v262[26] = 0;
  v262[28] = v163;
  v262[29] = v222;
  v262[30] = v164;
  v262[31] = v247;
  v262[32] = 0;
  v262[33] = 0;
  v262[34] = v226;
  v262[35] = v242;
  v262[36] = v209;
  v262[37] = v211;
  v262[38] = 0;
  v262[39] = 0;
  v262[40] = v217;
  v262[41] = v224;
  v262[42] = v234;
  v262[43] = v240;
  v262[45] = 0;
  v262[44] = 0;
  v262[46] = v248;
  v262[47] = v219;
  *&v262[48] = v35;
  sub_188B44888(rect_8a, v253);

  v251[0] = v244;
  v251[1] = v213;
  v251[2] = 0;
  v251[3] = 0;
  v251[4] = v235;
  v251[5] = v215;
  v251[6] = v237;
  v251[7] = v161;
  v251[8] = 0;
  v251[9] = 0;
  v251[10] = v159;
  v251[11] = v231;
  v251[12] = v233;
  v251[13] = v212;
  v251[14] = 0;
  v251[15] = 0;
  v251[16] = v232;
  v251[17] = v250;
  v251[18] = v162;
  v251[19] = v230;
  v251[20] = 0;
  v251[21] = 0;
  v251[22] = v229;
  v251[23] = v165;
  v251[24] = v227;
  v251[25] = v220;
  v251[27] = 0;
  v251[26] = 0;
  v251[28] = v163;
  v251[29] = v222;
  v251[30] = v214;
  v251[31] = v247;
  v251[32] = 0;
  v251[33] = 0;
  v251[34] = v226;
  v251[35] = v242;
  v251[36] = v209;
  v251[37] = v211;
  v251[38] = 0;
  v251[39] = 0;
  v251[40] = v217;
  v251[41] = v224;
  v251[42] = v234;
  v251[43] = v240;
  v251[45] = 0;
  v251[44] = 0;
  v251[46] = v248;
  v251[47] = v219;
  *&v251[48] = v35;
  sub_188B4333C(v251);
  v168 = v253[1];
  *a1 = v253[0];
  a1[1] = v168;
  a1[2] = v253[2];
}

double sub_188B482B4@<D0>(uint64_t a1@<X8>, double a2@<D2>)
{
  v3 = v2;
  v5 = *(v2 + 608);
  v6 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  if (v5 != 255)
  {
    v9 = *(v2 + 592);
    if (*(v2 + 608))
    {
      v10 = *(v2 + 600);
      if (v5 == 1)
      {
        v7 = *(v3 + 592);
        v8 = *(v3 + 600);
      }

      else
      {
        v13 = *(v3 + 592);
        v14 = sub_188C57860(v9, *(v3 + 600), 2);
        v7 = v13(v14, 0.0, 0.0, 50.0, 50.0);
        v16 = v15;
        sub_188B487D4(v13, v10, 2);
        v8 = v16;
      }
    }

    else
    {
      LODWORD(a2) = 1112014848;
      LODWORD(v8) = 1112014848;
      [v9 systemLayoutSizeFittingSize:0.0 withHorizontalFittingPriority:0.0 verticalFittingPriority:{a2, v8}];
      v7 = v11;
      v8 = v12;
    }
  }

  v17 = *(v3 + 584);
  v18 = 0.0;
  v19 = 0.0;
  if (v17 != 255)
  {
    v20 = *(v3 + 568);
    if (*(v3 + 584))
    {
      v21 = *(v3 + 576);
      if (v17 == 1)
      {
        v6 = *(v3 + 568);
        v19 = *(v3 + 576);
        v18 = v6;
      }

      else
      {
        v28 = v8;
        v29 = sub_188C57860(*(v3 + 568), *(v3 + 576), 2);
        v18 = v20(v29, 0.0, 0.0, 50.0, 50.0);
        v19 = v30;
        sub_188B487D4(v20, v21, 2);
        v31 = sub_188C57860(v20, v21, 2);
        v6 = v20(v31, 10000.0, 0.0, 50.0, 50.0);
        sub_188B487D4(v20, v21, 2);
        v8 = v28;
      }
    }

    else
    {
      LODWORD(a2) = 1112014848;
      v22 = v8;
      LODWORD(v8) = 1112014848;
      [*(v3 + 568) systemLayoutSizeFittingSize:0.0 withHorizontalFittingPriority:0.0 verticalFittingPriority:{a2, v8}];
      v18 = v23;
      v19 = v24;
      LODWORD(v25) = 1112014848;
      LODWORD(v26) = 1112014848;
      [v20 systemLayoutSizeFittingSize:10000.0 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v25, v26}];
      v8 = v22;
      v6 = v27;
    }
  }

  v64 = v19;
  v65 = v18;
  v32 = *v3 * 0.45;
  if (fmax(v8, v19) <= 0.0)
  {
    v33 = *v3;
  }

  else
  {
    v33 = *v3 * 0.45;
  }

  v34 = *(v3 + 632);
  v35 = 0.0;
  v36 = 0.0;
  v37 = 0.0;
  v63 = v8;
  if (v34 != 255)
  {
    v38 = *(v3 + 616);
    if (*(v3 + 632))
    {
      v39 = *(v3 + 624);
      if (v34 == 1)
      {
        v35 = *(v3 + 616);
        v37 = *(v3 + 624);
        v36 = v35;
      }

      else
      {
        v45 = sub_188C57860(*(v3 + 616), *(v3 + 624), 2);
        v36 = v38(v45, 0.0, v33, 50.0, 1000.0);
        v37 = v46;
        sub_188B487D4(v38, v39, 2);
        v47 = sub_188C57860(v38, v39, 2);
        v35 = v38(v47, 10000.0, v33, 50.0, 1000.0);
        sub_188B487D4(v38, v39, 2);
      }
    }

    else
    {
      LODWORD(v32) = 1112014848;
      LODWORD(v8) = 1148846080;
      [*(v3 + 616) systemLayoutSizeFittingSize:0.0 withHorizontalFittingPriority:v33 verticalFittingPriority:{v32, v8}];
      v36 = v40;
      v37 = v41;
      LODWORD(v42) = 1112014848;
      LODWORD(v43) = 1148846080;
      [v38 systemLayoutSizeFittingSize:10000.0 withHorizontalFittingPriority:v33 verticalFittingPriority:{v42, v43}];
      v35 = v44;
    }
  }

  v61 = v6;
  v62 = v37;
  v48 = v7 + v6;
  v60 = v7;
  if (v7 > 0.0)
  {
    v48 = v7 + v6 + 8.0;
  }

  if (v48 <= v35)
  {
    v48 = v35;
  }

  sub_188B467F4(&v67, v48);
  v49 = v67;
  v50 = v68;
  v51 = v69;
  v52 = v70;
  v53 = v71;
  v54 = *(v3 + 456);
  v72 = *(v3 + 440);
  v73 = v54;
  v55 = *(v3 + 488);
  v74 = *(v3 + 472);
  v75 = v55;
  if (v74 && v70 < *(&v72 + 1) || *(v3 + 536) && v71 < *(v3 + 512) || *(v3 + 408) && v69 < *(v3 + 384) || *(v3 + 344) && *(&v67 + 1) < *(v3 + 320))
  {
    v56 = 1;
    goto LABEL_35;
  }

  v56 = 2;
  if ((*(v3 + 249) & 1) == 0 || v68 > 0.0)
  {
LABEL_35:
    if (v68 > 0.0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v56 = 0;
LABEL_36:
  v60 = 0.0;
  v61 = 0.0;
  v63 = 0.0;
  v64 = 0.0;
  v65 = 0.0;
  v62 = 0.0;
  v36 = 0.0;
  v35 = 0.0;
LABEL_37:
  if (!v74)
  {
    sub_188A3F29C(&v72, v66, &unk_1EA936338, &unk_18A650570);
    v57 = 1;
    if (*(v3 + 536))
    {
      goto LABEL_39;
    }

LABEL_41:
    v58 = 1;
    goto LABEL_42;
  }

  v57 = *&v73 <= v70;
  if (!*(v3 + 536))
  {
    goto LABEL_41;
  }

LABEL_39:
  v58 = *(v3 + 520) <= v53;
LABEL_42:
  *a1 = v49;
  *(a1 + 16) = v50;
  *(a1 + 24) = v51;
  *(a1 + 32) = v52;
  *(a1 + 40) = v53;
  *(a1 + 48) = v60;
  *(a1 + 56) = v63;
  *(a1 + 64) = v65;
  *(a1 + 72) = v64;
  result = v62;
  *(a1 + 80) = v61;
  *(a1 + 88) = v36;
  *(a1 + 96) = v62;
  *(a1 + 104) = v36;
  *(a1 + 112) = v35;
  *(a1 + 120) = v56;
  *(a1 + 121) = v57;
  *(a1 + 122) = v58;
  return result;
}

double sub_188B487D4(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_188C5F334(a1, a2, a3);
  }

  return result;
}

void sub_188B487E8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93B400, &qword_18A661508);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64D660;
  *(inited + 32) = *(v2 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_fixedLeadingGroups);
  v4 = inited + 32;

  sub_188B48ADC(v5);
  v7 = v6;

  *(inited + 40) = v7;
  *(inited + 48) = *(v2 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_fixedTrailingGroups);

  v8 = 0;
LABEL_2:
  v9 = *(v4 + 8 * v8);
  if (v9 >> 62)
  {
    v10 = sub_18A4A7F68();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = v8 + 1;

  v11 = 0;
  while (1)
  {
    if (v10 == v11)
    {

      v4 = inited + 32;
      v8 = v17;
      if (v17 != 3)
      {
        goto LABEL_2;
      }

      goto LABEL_17;
    }

    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = sub_188E49AA8(v11, v9);
    }

    else
    {
      if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v12 = *(v9 + 8 * v11 + 32);
    }

    v13 = v12;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    *(v14 + 24) = a2;
    aBlock[4] = sub_18907CF94;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188B89F00;
    aBlock[3] = &block_descriptor_101_0;
    v15 = _Block_copy(aBlock);

    v16 = [v13 enumerateVisibleItems_];

    _Block_release(v15);
    LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

    if (v15)
    {
      goto LABEL_20;
    }

    ++v11;
    if (v16)
    {

LABEL_17:

      return;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_188B48A94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

void sub_188B48ADC(uint64_t a1)
{
  v29 = *(a1 + 16);
  if (!v29)
  {
    return;
  }

  v1 = 0;
  v28 = a1 + 32;
  v2 = MEMORY[0x1E69E7CC0];
  v3 = &qword_1EA93C6B8;
  while (1)
  {
    v4 = *(v28 + 24 * v1);
    v5 = v4 >> 62;
    if (v4 >> 62)
    {
      v6 = sub_18A4A7F68();
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = v2 >> 62;
    if (v2 >> 62)
    {
      v26 = sub_18A4A7F68();
      v9 = v26 + v6;
      if (__OFADD__(v26, v6))
      {
LABEL_32:
        __break(1u);
        return;
      }
    }

    else
    {
      v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v8 + v6;
      if (__OFADD__(v8, v6))
      {
        goto LABEL_32;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v33 = v6;
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (!v7)
      {
        v11 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v9 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_18A4A7F68();
      goto LABEL_15;
    }

    if (v7)
    {
      goto LABEL_14;
    }

LABEL_15:
    v2 = sub_18A4A8168();
    v11 = v2 & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v5)
    {
      break;
    }

    v14 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v13 >> 1) - v12) < v33)
    {
      goto LABEL_35;
    }

    v30 = v1;
    v31 = v2;
    v17 = v11 + 8 * v12 + 32;
    v27 = v11;
    if (v5)
    {
      if (v14 < 1)
      {
        goto LABEL_37;
      }

      sub_1890DAA30();
      for (i = 0; i != v14; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v3, &qword_18A665518);
        v19 = sub_188E4D09C(v32, i, v4);
        v21 = v3;
        v22 = *v20;
        (v19)(v32, 0);
        *(v17 + 8 * i) = v22;
        v3 = v21;
      }
    }

    else
    {
      sub_188A34624(0, &unk_1ED48DBD0, off_1E70E94E8);
      swift_arrayInitWithCopy();
    }

    v1 = v30;
    v2 = v31;
    if (v33 >= 1)
    {
      v23 = *(v27 + 16);
      v24 = __OFADD__(v23, v33);
      v25 = v23 + v33;
      if (v24)
      {
        goto LABEL_36;
      }

      *(v27 + 16) = v25;
    }

LABEL_4:
    if (++v1 == v29)
    {
      return;
    }
  }

  v15 = v11;
  v16 = sub_18A4A7F68();
  v11 = v15;
  v14 = v16;
  if (v16)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v33 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t sub_188B48DE8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v71 = *(result + 16);
  if (!v71)
  {
    v4 = MEMORY[0x1E69E7CC8];
    v52 = 0.0;
    v53 = 0.0;
    v54 = 0.0;
    v55 = 0.0;
    v3 = MEMORY[0x1E69E7CC8];
LABEL_79:
    *a2 = v52;
    *(a2 + 8) = v53;
    *(a2 + 16) = v54;
    *(a2 + 24) = v55;
    *(a2 + 32) = v4;
    *(a2 + 40) = v3;
    return result;
  }

  v69 = a2;
  v2 = 0;
  v70 = result + 32;
  v3 = MEMORY[0x1E69E7CC8];
  v4 = MEMORY[0x1E69E7CC8];
  v72 = MEMORY[0x1E69E7CC0];
  v73 = MEMORY[0x1E69E7CC0];
  v74 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v75 = v2;
    v5 = *(v70 + 24 * v2);
    v86[0] = MEMORY[0x1E69E7CC0];
    v84[0] = MEMORY[0x1E69E7CC0];
    v82[0] = MEMORY[0x1E69E7CC0];
    if (!(v5 >> 62))
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
        break;
      }

      goto LABEL_50;
    }

    v6 = sub_18A4A7F68();
    if (v6)
    {
      break;
    }

LABEL_50:
    v43 = MEMORY[0x1E69E7CC0];
LABEL_51:
    if (*(v43 + 16))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v72 = sub_188C40F34(0, v72[2] + 1, 1, v72);
      }

      v45 = v72[2];
      v44 = v72[3];
      if (v45 >= v44 >> 1)
      {
        v72 = sub_188C40F34((v44 > 1), v45 + 1, 1, v72);
      }

      v72[2] = v45 + 1;
      v72[v45 + 4] = v43;
    }

    else
    {
    }

    v46 = v84[0];
    if (*(v84[0] + 16))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v73 = sub_188C40F34(0, v73[2] + 1, 1, v73);
      }

      v48 = v73[2];
      v47 = v73[3];
      if (v48 >= v47 >> 1)
      {
        v73 = sub_188C40F34((v47 > 1), v48 + 1, 1, v73);
      }

      v73[2] = v48 + 1;
      v73[v48 + 4] = v46;
    }

    else
    {
    }

    v49 = v82[0];
    if (*(v82[0] + 16))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v74 = sub_188C40F34(0, v74[2] + 1, 1, v74);
      }

      v51 = v74[2];
      v50 = v74[3];
      if (v51 >= v50 >> 1)
      {
        v74 = sub_188C40F34((v50 > 1), v51 + 1, 1, v74);
      }

      v74[2] = v51 + 1;
      v74[v51 + 4] = v49;
    }

    else
    {
    }

    v2 = v75 + 1;
    if (v75 + 1 == v71)
    {
      v56 = v68 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics;
      v57 = *(v68 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics + 80);
      v93[4] = *(v68 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics + 64);
      v93[5] = v57;
      v93[6] = *(v68 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics + 96);
      v94 = *(v68 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics + 112);
      v58 = *(v68 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics + 16);
      v93[0] = *(v68 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics);
      v93[1] = v58;
      v59 = *(v68 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics + 48);
      v93[2] = *(v68 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics + 32);
      v93[3] = v59;
      sub_188B45920(v72, v93, v82);

      Width = CGRectGetWidth(v83);
      sub_188B42530(v82);
      v61 = *(v56 + 80);
      v91[4] = *(v56 + 64);
      v91[5] = v61;
      v91[6] = *(v56 + 96);
      v92 = *(v56 + 112);
      v62 = *(v56 + 16);
      v91[0] = *v56;
      v91[1] = v62;
      v63 = *(v56 + 48);
      v91[2] = *(v56 + 32);
      v91[3] = v63;
      sub_188B45920(v73, v91, v84);

      v64 = CGRectGetWidth(v85);
      sub_188B42530(v84);
      v65 = *(v56 + 80);
      v89[4] = *(v56 + 64);
      v89[5] = v65;
      v89[6] = *(v56 + 96);
      v90 = *(v56 + 112);
      v66 = *(v56 + 16);
      v89[0] = *v56;
      v89[1] = v66;
      v67 = *(v56 + 48);
      v89[2] = *(v56 + 32);
      v89[3] = v67;
      sub_188B45920(v74, v89, v86);

      v54 = CGRectGetWidth(rect);
      result = sub_188B42530(v86);
      v55 = v54 + v88;
      if (v54 >= v64)
      {
        v53 = v64;
      }

      else
      {
        v53 = v54;
      }

      if (v53 >= Width)
      {
        v52 = Width;
      }

      else
      {
        v52 = v53;
      }

      a2 = v69;
      goto LABEL_79;
    }
  }

  if (v6 < 1)
  {
    goto LABEL_84;
  }

  v7 = 0;
  v76 = v6;
  while (2)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = sub_188E49D08(v7, v5);
    }

    else
    {
      v8 = *(v5 + 8 * v7 + 32);
    }

    v9 = v8;
    v10 = sub_188BB70B4();
    v11 = v9[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_representativeLayout + 8];
    if (v11 <= 0xFD)
    {
      v13 = *&v9[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_representativeLayout];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93B3F0, &unk_18A64D410);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_18A64BFB0;
      if ((v11 & 0x80) != 0)
      {
        if (v11)
        {
          sub_188BB803C(v13, v11);
          v17 = 0;
          v16 = 0uLL;
          v18 = 0x80;
          v14 = 0.0;
          v15 = xmmword_18A6507C0;
        }

        else
        {
          sub_188BB803C(v13, v11);
          [v13 _width];
          v17 = 0;
          if (v14 <= 0.0)
          {
            v14 = 0.0;
          }

          v15 = 0uLL;
          v18 = 0x80;
          v16 = 0uLL;
        }
      }

      else
      {
        sub_188BB803C(v13, v11);
        sub_188BB8680(&v77);
        v14 = v77;
        v15 = v78;
        v16 = v79;
        v17 = v80;
        v18 = v81;
      }

      *(v12 + 32) = v14;
      *(v12 + 40) = v15;
      *(v12 + 56) = v16;
      *(v12 + 72) = v17;
      *(v12 + 80) = v18;
      sub_188BB6A30(v13, v11);
    }

    else
    {

      v12 = v10;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v93[0] = v4;
    v20 = sub_188A403F4(v9);
    v22 = v4[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (!v24)
    {
      v26 = v21;
      if (v4[3] >= v25)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_29;
        }

        v28 = v20;
        sub_188FA2E48();
        v20 = v28;
        v4 = *&v93[0];
        if ((v26 & 1) == 0)
        {
          goto LABEL_32;
        }

LABEL_30:
        *(v4[7] + 8 * v20) = v10;
      }

      else
      {
        sub_188C412CC(v25, isUniquelyReferenced_nonNull_native);
        v20 = sub_188A403F4(v9);
        if ((v26 & 1) != (v27 & 1))
        {
          goto LABEL_85;
        }

LABEL_29:
        v4 = *&v93[0];
        if (v26)
        {
          goto LABEL_30;
        }

LABEL_32:
        v4[(v20 >> 6) + 8] |= 1 << v20;
        *(v4[6] + 8 * v20) = v9;
        *(v4[7] + 8 * v20) = v10;
        v29 = v4[2];
        v24 = __OFADD__(v29, 1);
        v30 = v29 + 1;
        if (v24)
        {
          goto LABEL_82;
        }

        v4[2] = v30;
      }

      v31 = swift_isUniquelyReferenced_nonNull_native();
      *&v93[0] = v3;
      v32 = sub_188A403F4(v9);
      v34 = v3[2];
      v35 = (v33 & 1) == 0;
      v24 = __OFADD__(v34, v35);
      v36 = v34 + v35;
      if (v24)
      {
        goto LABEL_81;
      }

      v37 = v33;
      if (v3[3] >= v36)
      {
        if (v31)
        {
          goto LABEL_39;
        }

        v39 = v32;
        sub_188FA2E48();
        v32 = v39;
        v3 = *&v93[0];
        if ((v37 & 1) == 0)
        {
          goto LABEL_42;
        }

LABEL_40:
        *(v3[7] + 8 * v32) = v12;
      }

      else
      {
        sub_188C412CC(v36, v31);
        v32 = sub_188A403F4(v9);
        if ((v37 & 1) != (v38 & 1))
        {
          goto LABEL_85;
        }

LABEL_39:
        v3 = *&v93[0];
        if (v37)
        {
          goto LABEL_40;
        }

LABEL_42:
        v3[(v32 >> 6) + 8] |= 1 << v32;
        *(v3[6] + 8 * v32) = v9;
        *(v3[7] + 8 * v32) = v12;
        v40 = v3[2];
        v24 = __OFADD__(v40, 1);
        v41 = v40 + 1;
        if (v24)
        {
          goto LABEL_83;
        }

        v3[2] = v41;
      }

      sub_188C40C4C(v42);
      if ([*&v9[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_group] _disabledExpansion])
      {

        v10 = v12;
      }

      sub_188C40C4C(v10);
      if (v9[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_isFixed] == 1)
      {
        sub_188C40C4C(v12);
      }

      else
      {
      }

      if (v76 == ++v7)
      {

        v43 = v86[0];
        goto LABEL_51;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  result = sub_18A4A87A8();
  __break(1u);
  return result;
}

void sub_188B49604(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_metrics + 80);
  v7[4] = *(v1 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_metrics + 64);
  v7[5] = v2;
  v7[6] = *(v1 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_metrics + 96);
  v8 = *(v1 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_metrics + 112);
  v3 = *(v1 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_metrics + 16);
  v7[0] = *(v1 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_metrics);
  v7[1] = v3;
  v4 = *(v1 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_metrics + 48);
  v7[2] = *(v1 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_metrics + 32);
  v7[3] = v4;
  if ((sub_18907F360(a1, v7) & 1) == 0 && (*(v1 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_isDirty) & 1) == 0)
  {
    *(v1 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_isDirty) = 1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      sub_18907A694();
    }
  }
}

uint64_t sub_188B496C4()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButton];
  if (v2)
  {
    v3 = v2;
    sub_188C57FA8(v3);
  }

  v4 = sub_188EBC854();
  if (v4)
  {
    v5 = v4;
    sub_188B49844();
  }

  v6 = sub_188AEAD00();
  if (v6)
  {
    v7 = v6;
    sub_188B49844();
  }

  v8 = sub_188AEAF10();
  if (v8)
  {
    v9 = v8;
    sub_188B49844();
  }

  v10 = sub_188AEB244();
  if (v10)
  {
    v11 = v10;
    sub_188B49844();
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *(result + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_customizationContainerView);
    if (v13)
    {
      v14 = v13;
      v15 = [v1 tintColor];
      [v14 setTintColor_];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_188B49844()
{
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_sectionLayouts);
  v25 = *(v1 + 16);
  if (!v25)
  {
LABEL_25:
    v17 = v0 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_delegate;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v18 = *(v17 + 8);
      v19 = objc_opt_self();
      if ([v19 _isInAnimationBlockWithAnimationsEnabled])
      {
        v20 = 1;
      }

      else
      {
        v20 = [v19 _isInSystemAnimationBlockWithAnimationsEnabled];
      }

      ObjectType = swift_getObjectType();
      (*(v18 + 8))(v20, ObjectType, v18);
    }

    return;
  }

  v24 = v1 + 32;

  v2 = 0;
  v23 = v1;
  while (v2 < *(v1 + 16))
  {
    v3 = *(v24 + 24 * v2);
    if (v3 >> 62)
    {
      v4 = sub_18A4A7F68();
      if (!v4)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v4)
      {
        goto LABEL_4;
      }
    }

    if (v4 < 1)
    {
      goto LABEL_34;
    }

    v26 = v2;

    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v9 = sub_188E49D08(i, v3);
      }

      else
      {
        v9 = *(v3 + 8 * i + 32);
      }

      v8 = v9;
      if ((*(v9 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_isDirty) & 1) == 0)
      {
        *(v9 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_isDirty) = 1;
        v10 = swift_unknownObjectWeakLoadStrong();
        if (v10)
        {
          v11 = v10;
          v12 = v10 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_delegate;
          v13 = swift_unknownObjectWeakLoadStrong();
          if (v13)
          {
            v14 = v13;
            v15 = *(v12 + 8);
            v16 = objc_opt_self();
            if ([v16 _isInAnimationBlockWithAnimationsEnabled])
            {
              v6 = 1;
            }

            else
            {
              v6 = [v16 _isInSystemAnimationBlockWithAnimationsEnabled];
            }

            v7 = swift_getObjectType();
            (*(v15 + 8))(v6, v7, v15);
          }

          v8 = v11;
        }
      }
    }

    v1 = v23;
    v2 = v26;
LABEL_4:
    if (++v2 == v25)
    {

      v0 = v22;
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_188B49B18()
{
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_isDeferringSearchSuggestionsMenuRefreshForGeometryChange) = 0;
  v1 = sub_188AEAF10();
  if (v1)
  {

    v2 = *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineSearchConfiguration);
    if (v2)
    {
      v6 = v2;
      if ([v6 isHidden])
      {
        v3 = v6;
      }

      else
      {
        v4 = [(_UIBarButtonItemSearchBarGroup *)v6 searchBar];
        v5 = [v4 _searchController];

        [v5 _hostingNavigationBarDidLayoutInlineSearchBar];
        v3 = v5;
      }
    }
  }
}

uint64_t get_enum_tag_for_layout_string_5UIKit26NavigationBarContentLayoutV15TitlePropertiesVSg_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_188B49C6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = 0;
  v123 = a1 + 32;
  v4 = a2 + 32;
  v115 = a2 + 32;
  while (1)
  {
    result = sub_188C45F1C(v123 + 192 * v3, v159);
    if (v3 == v2)
    {
      __break(1u);
      return result;
    }

    sub_188C45F1C(v4 + 192 * v3, v146);
    if ((MEMORY[0x18CFE2F70](v159, v146) & 1) == 0)
    {
      goto LABEL_125;
    }

    v6 = v161;
    v7 = v162;
    v8 = v148;
    v9 = v149;
    if (!CGRectEqualToRect(rect1, rect2))
    {
      goto LABEL_125;
    }

    if (v6 != v8 || v7 != v9)
    {
      goto LABEL_125;
    }

    if (v164)
    {
      if (!v151 || (v163 != v150 || v164 != v151) && (sub_18A4A86C8() & 1) == 0)
      {
        goto LABEL_125;
      }
    }

    else if (v151)
    {
      goto LABEL_125;
    }

    if ((MEMORY[0x18CFE2F70](&v165, &v152) & 1) == 0)
    {
      goto LABEL_125;
    }

    v11 = *(v166 + 16);
    if (v11 != *(v153 + 16))
    {
      goto LABEL_125;
    }

    v120 = v3;
    if (v11)
    {
      if (v166 != v153)
      {
        break;
      }
    }

LABEL_94:
    v4 = v115;
    if ((sub_188F8D2D0(v167, v154) & 1) == 0 || v168 != v155 || v169 != v156)
    {
      goto LABEL_125;
    }

    v64 = v170;
    v65 = v171;
    v66 = v157;
    v67 = v158;
    if (v170)
    {
      if (!v157)
      {
        goto LABEL_125;
      }

      sub_188A34624(0, qword_1ED4913C0, off_1E70E96C8);
      v68 = v66;
      v69 = v64;
      v70 = sub_18A4A7C88();

      if ((v70 & 1) == 0)
      {
        goto LABEL_125;
      }
    }

    else if (v157)
    {
      goto LABEL_125;
    }

    sub_188C460F0(v146);
    sub_188C460F0(v159);
    result = v65 == v67;
    if (v65 == v67)
    {
      v3 = v120 + 1;
      if (v120 + 1 != v2)
      {
        continue;
      }
    }

    return result;
  }

  v12 = (v166 + 32);
  v13 = (v153 + 32);
  v14 = v11 - 1;
  v109 = v2;
  while (1)
  {
    v15 = v12[1];
    v128 = *v12;
    v129 = v15;
    v16 = v12[2];
    v17 = v12[3];
    v18 = v12[5];
    v132 = v12[4];
    *v133 = v18;
    v130 = v16;
    v131 = v17;
    v19 = v12[6];
    v20 = v12[7];
    v21 = v12[9];
    v135 = v12[8];
    v136 = v21;
    *&v133[16] = v19;
    v134 = v20;
    v22 = v13[1];
    v137 = *v13;
    v138 = v22;
    v23 = v13[2];
    v24 = v13[3];
    v25 = v13[5];
    v141 = v13[4];
    *v142 = v25;
    v139 = v23;
    v140 = v24;
    v26 = v13[6];
    v27 = v13[7];
    v28 = v13[9];
    v144 = v13[8];
    v145 = v28;
    *&v142[16] = v26;
    v143 = v27;
    if (v129)
    {
      if ((v138 & 1) == 0)
      {
        goto LABEL_125;
      }

      sub_188A34624(0, &qword_1ED490230, 0x1E69E58C0);
      sub_188C464C4(&v128, v127);
      sub_188C464C4(&v137, v127);
      if ((sub_18A4A7C88() & 1) == 0)
      {
        goto LABEL_124;
      }
    }

    else
    {
      if (v138)
      {
        goto LABEL_125;
      }

      sub_188A34624(0, &qword_1ED490230, 0x1E69E58C0);
      sub_188C464C4(&v128, v127);
      sub_188C464C4(&v137, v127);
    }

    if ((sub_18A4A7C88() & 1) == 0)
    {
      goto LABEL_124;
    }

    v172.origin.x = *(&v129 + 1);
    *&v172.origin.y = v130;
    *&v172.size.height = v131;
    v173.origin.x = *(&v138 + 1);
    *&v173.origin.y = v139;
    *&v173.size.height = v140;
    if (!CGRectEqualToRect(v172, v173) || *(&v131 + 1) != *(&v140 + 1) || *&v132 != *&v141 || *(&v132 + 1) != *(&v141 + 1) || *v133 != *v142)
    {
      goto LABEL_124;
    }

    if (v133[24] == 255)
    {
      if (v142[24] != 255)
      {
        goto LABEL_124;
      }

      goto LABEL_60;
    }

    if (v142[24] == 255)
    {
      goto LABEL_124;
    }

    if (v133[24] > 2u)
    {
      if (v133[24] == 3)
      {
        if (v142[24] != 3)
        {
          goto LABEL_124;
        }
      }

      else
      {
        if (v133[24] != 4)
        {
          if (v142[24] != 5)
          {
            goto LABEL_124;
          }

LABEL_59:
          if (*&v133[8] != *&v142[8])
          {
            goto LABEL_124;
          }

          goto LABEL_60;
        }

        if (v142[24] != 4)
        {
          goto LABEL_124;
        }
      }
    }

    else
    {
      if (v133[24])
      {
        if (v133[24] == 1)
        {
          if (v142[24] != 1)
          {
            goto LABEL_124;
          }
        }

        else if (v142[24] != 2)
        {
          goto LABEL_124;
        }

        goto LABEL_59;
      }

      if (v142[24])
      {
        goto LABEL_124;
      }
    }

    if (*&v133[8] != *&v142[8] && (sub_18A4A86C8() & 1) == 0)
    {
      goto LABEL_124;
    }

LABEL_60:
    v124 = v14;
    v29 = *(&v134 + 1);
    v30 = v134;
    v31 = *(&v135 + 1);
    v32 = v135;
    v33 = v143;
    v125 = v134;
    v126 = *(&v143 + 1);
    v34 = v144;
    v35 = v145;
    v119 = *(&v135 + 1);
    if (*(&v135 + 1) == 1)
    {
      v113 = v13;
      v114 = v136;
      v36 = v135;
      v37 = *(&v144 + 1);
      v38 = *(&v134 + 1);
      v39 = *(&v136 + 1);
      sub_188EC2284(v134, *(&v134 + 1), v135, 1, v136, *(&v136 + 1));
      if (v37 == 1)
      {
        sub_188EC2284(v33, v126, v34, 1, v35, *(&v35 + 1));
        sub_188EC2210(v125, v38, v36, 1, v114, v39);
        v13 = v113;
LABEL_91:
        sub_188C46888(&v137);
        sub_188C46888(&v128);
        v63 = v124;
        goto LABEL_92;
      }

      v71 = v37;
      v72 = v126;
      sub_188EC2284(v33, v126, v34, v37, v35, *(&v35 + 1));
      v32 = v36;
      v73 = 1;
LABEL_108:
      sub_188EC2210(v125, v38, v32, v73, v114, v39);
      v81 = v33;
      v82 = v72;
      v83 = v34;
      v84 = v71;
      v86 = *(&v35 + 1);
      v85 = v35;
      goto LABEL_123;
    }

    v118 = v144;
    v121 = v143;
    if (*(&v144 + 1) == 1)
    {
      v38 = *(&v134 + 1);
      v74 = v143;
      v73 = *(&v135 + 1);
      v75 = *(&v136 + 1);
      v76 = v136;
      v77 = v134;
      sub_188EC2284(v134, *(&v134 + 1), v135, *(&v135 + 1), v136, *(&v136 + 1));
      v78 = v74;
      v72 = v126;
      sub_188EC2284(v78, v126, v34, 1, v35, *(&v35 + 1));
      v79 = v75;
      v80 = v75;
      v33 = v121;
      sub_188EC2284(v77, v38, v32, v73, v76, v79);
      sub_188EC226C(v77, v38, v32);

      v114 = v76;
      v71 = 1;
      v39 = v80;
      v34 = v118;

      goto LABEL_108;
    }

    v111 = v12;
    v112 = *(&v134 + 1);
    v116 = *(&v145 + 1);
    v117 = *(&v144 + 1);
    v122 = v145;
    if (v135)
    {
      break;
    }

    if (v144)
    {
LABEL_118:
      v94 = *(&v134 + 1);
      v95 = v143;
      v104 = *(&v135 + 1);
      v41 = *(&v136 + 1);
      v96 = v136;
      sub_188EC2284(v134, *(&v134 + 1), v135, *(&v135 + 1), v136, *(&v136 + 1));
      sub_188EC2284(v95, v126, v118, v117, v35, *(&v35 + 1));
      sub_188EC2284(v125, v94, v32, v104, v96, v41);
      v106 = v96;
      sub_188EC2210(v121, v126, v118, v117, v35, *(&v35 + 1));
      v105 = v125;
      v107 = v94;
      goto LABEL_122;
    }

    v40 = v135;
    v41 = *(&v136 + 1);
    v42 = v136;
    v43 = *(&v143 + 1);
    if (v134 != v143)
    {
      v104 = *(&v135 + 1);
      v97 = v135;
      sub_188EC2284(v134, *(&v134 + 1), v135, *(&v135 + 1), v136, *(&v136 + 1));
      v32 = v97;
      v98 = v116;
      sub_188EC2284(v33, v126, v118, v117, v122, v116);
      sub_188EC2284(v125, v112, v97, v104, v42, v41);
      v99 = v33;
      v100 = v126;
      v101 = v118;
      v102 = v117;
      v103 = v122;
LABEL_120:
      v106 = v42;
      sub_188EC2210(v99, v100, v101, v102, v103, v98);
      v105 = v125;
      v107 = v112;
      goto LABEL_122;
    }

LABEL_75:
    v110 = v40;
    if (v31)
    {
      v48 = v43;
      v49 = v30;
      if (!v117)
      {
        v87 = v29;
        v32 = v40;
        v88 = v30;
        v104 = v31;
        sub_188EC2284(v30, v29, v32, v31, v42, v41);
        sub_188EC2284(v121, v48, v118, 0, v122, v116);
        sub_188EC2284(v88, v87, v32, v104, v42, v41);
        v106 = v42;
        sub_188EC2210(v121, v126, v118, 0, v122, v116);
        v105 = v88;
        v107 = v87;
        goto LABEL_122;
      }

      v50 = v29;
      v51 = v31;
      v106 = v42;
      sub_188A34624(0, qword_1ED4913C0, off_1E70E96C8);
      sub_188EC2284(v49, v50, v40, v51, v42, v41);
      sub_188EC2284(v121, v43, v118, v117, v122, v116);
      sub_188EC2284(v49, v50, v40, v51, v42, v41);
      v52 = v117;
      v53 = v51;
      v54 = sub_18A4A7C88();

      if ((v54 & 1) == 0)
      {
        v93 = v121;
LABEL_112:
        v89 = v126;
        v91 = v117;
        v90 = v118;
        v92 = v122;
LABEL_113:
        sub_188EC2210(v93, v89, v90, v91, v92, v116);
LABEL_114:
        v32 = v110;
        v107 = v112;
        v105 = v125;
        v104 = v119;
        goto LABEL_122;
      }

      if (v106)
      {
LABEL_79:
        v12 = v111;
        if (!v122)
        {
          v93 = v121;
          v89 = v126;
          v91 = v117;
          v90 = v118;
          v92 = 0;
          goto LABEL_113;
        }

        sub_188A34624(0, qword_1ED4913C0, off_1E70E96C8);
        v55 = v122;
        v56 = v106;
        v57 = sub_18A4A7C88();

        v58 = v121;
        if ((v57 & 1) == 0)
        {
          v93 = v121;
          goto LABEL_112;
        }

        goto LABEL_85;
      }
    }

    else
    {
      v107 = v29;
      v59 = v30;
      sub_188EC2284(v30, v29, v40, 0, v42, v41);
      if (v117)
      {
        sub_188EC2284(v121, v43, v118, v117, v122, v116);
        sub_188EC2284(v59, v107, v40, 0, v42, v41);
        v32 = v40;
        v106 = v42;
        sub_188EC2210(v121, v126, v118, v117, v122, v116);
        v105 = v59;
        v104 = 0;
        goto LABEL_122;
      }

      sub_188EC2284(v121, v43, v118, 0, v122, v116);
      sub_188EC2284(v59, v107, v40, 0, v42, v41);
      v106 = v42;
      if (v42)
      {
        goto LABEL_79;
      }
    }

    v58 = v121;
    v12 = v111;
    if (v122)
    {
      sub_188EC2210(v121, v126, v118, v117, v122, v116);
      v106 = 0;
      goto LABEL_114;
    }

LABEL_85:
    v32 = v110;
    if (!v41)
    {
      if (v116)
      {
        sub_188EC2210(v58, v126, v118, v117, v122, v116);
        v41 = 0;
        v107 = v112;
        v104 = v119;
        v105 = v125;
        goto LABEL_122;
      }

      sub_188EC2210(v58, v126, v118, v117, v122, 0);
      sub_188EC226C(v125, v112, v110);

      sub_188EC2210(v125, v112, v110, v119, v106, 0);
      v2 = v109;
      goto LABEL_91;
    }

    if (!v116)
    {
      sub_188EC2210(v58, v126, v118, v117, v122, 0);
      v107 = v112;
      v104 = v119;
      v105 = v125;
      goto LABEL_122;
    }

    sub_188A34624(0, &qword_1ED48C4A0, &off_1E70ECC18);
    v60 = v116;
    v61 = v41;
    v62 = sub_18A4A7C88();

    sub_188EC2210(v121, v126, v118, v117, v122, v116);
    sub_188EC226C(v125, v112, v110);

    sub_188EC2210(v125, v112, v110, v119, v106, v41);
    sub_188C46888(&v137);
    sub_188C46888(&v128);
    v63 = v124;
    v2 = v109;
    if ((v62 & 1) == 0)
    {
      goto LABEL_125;
    }

LABEL_92:
    if (!v63)
    {
      goto LABEL_94;
    }

    v14 = v63 - 1;
    v13 += 10;
    v12 += 10;
  }

  if (v135 != 1)
  {
    v40 = v135;
    v41 = *(&v136 + 1);
    v42 = v136;
    v43 = *(&v143 + 1);
    if (v144 != 2 || v143 != 0)
    {
      v104 = *(&v135 + 1);
      sub_188EC2284(v134, *(&v134 + 1), v135, *(&v135 + 1), v136, *(&v136 + 1));
      v98 = v116;
      sub_188EC2284(v33, v126, v118, v117, v122, v116);
      sub_188EC2284(v125, v112, v40, v104, v42, v41);
      v99 = v33;
      v100 = v126;
      v101 = v118;
      v102 = v117;
      v32 = v40;
      v103 = v122;
      goto LABEL_120;
    }

    goto LABEL_75;
  }

  if (v144 != 1)
  {
    goto LABEL_118;
  }

  v40 = v135;
  v41 = *(&v136 + 1);
  v42 = v136;
  v43 = *(&v143 + 1);
  if (v134 == v143)
  {
    goto LABEL_75;
  }

  v44 = *(&v134 + 1);
  v45 = *(&v135 + 1);
  v46 = v134;
  v47 = sub_18A4A86C8();
  v31 = v45;
  v30 = v46;
  v29 = v44;
  if (v47)
  {
    goto LABEL_75;
  }

  v104 = v45;
  sub_188EC2284(v46, v44, v40, v45, v42, v41);
  sub_188EC2284(v33, v126, v118, v117, v122, v116);
  sub_188EC2284(v46, v44, v40, v45, v42, v41);
  v32 = v40;
  sub_188EC2210(v121, v126, v118, v117, v122, v116);
  v105 = v46;
  v106 = v42;
  v107 = v44;
LABEL_122:
  v108 = v105;
  sub_188EC226C(v105, v107, v32);

  v81 = v108;
  v82 = v107;
  v83 = v32;
  v84 = v104;
  v85 = v106;
  v86 = v41;
LABEL_123:
  sub_188EC2210(v81, v82, v83, v84, v85, v86);
LABEL_124:
  sub_188C46888(&v137);
  sub_188C46888(&v128);
LABEL_125:
  sub_188C460F0(v146);
  sub_188C460F0(v159);
  return 0;
}

uint64_t get_enum_tag_for_layout_string_5UIKit26NavigationBarContentLayoutV06ButtonC10PropertiesVSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_5UIKit26NavigationBarContentLayoutV08RenamingD14ViewPropertiesVSg(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

void sub_188B4ABEC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v2 = [Strong superview];
    if (v2)
    {

      [v18 bounds];
      x = v20.origin.x;
      y = v20.origin.y;
      width = v20.size.width;
      v6 = *&v18[OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_preferredHeight];
      v20.size.height = v6;
      Height = CGRectGetHeight(v20);
      [v18 bounds];
      v8 = CGRectGetHeight(v21);
      v9 = 0.0;
      if (v8 < Height)
      {
        [v18 bounds];
        MaxY = CGRectGetMaxY(v22);
        v23.origin.x = x;
        v23.origin.y = y;
        v23.size.width = width;
        v23.size.height = v6;
        v9 = MaxY - CGRectGetHeight(v23);
      }

      [v18 convertRect:0 toView:{x, v9, width, v6}];
      v11 = v24.origin.x;
      v12 = v24.origin.y;
      v13 = v24.size.width;
      v14 = v24.size.height;
      v15 = (v0 + OBJC_IVAR____TtC5UIKit40NavigationBarLargeTitleReparentingHelper_frameInGlobalCoordinateSpace);
      if (!CGRectEqualToRect(v24, *(v0 + OBJC_IVAR____TtC5UIKit40NavigationBarLargeTitleReparentingHelper_frameInGlobalCoordinateSpace)))
      {
        *v15 = v11;
        v15[1] = v12;
        v15[2] = v13;
        v15[3] = v14;
        v16 = swift_unknownObjectWeakLoadStrong();
        if (v16)
        {
          v17 = v16;
          [v16 setNeedsLayout];
        }
      }
    }
  }
}

void sub_188B4ADDC()
{
  if (*(v0 + 168) == 1)
  {
    swift_beginAccess();
    v1 = *(v0 + 344);
    if (!v1)
    {
      goto LABEL_40;
    }

    v2 = v1;
    sub_18916870C();

    return;
  }

  swift_beginAccess();
  v3 = *(v0 + 336);
  if (v3 && *(v3 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_active) == 1)
  {
    v4 = v3;
    sub_188B4C524();

    return;
  }

  swift_beginAccess();
  v5 = *(v0 + 400);
  if (v5 >> 62)
  {
    goto LABEL_33;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
LABEL_34:
    v20 = v3;
    goto LABEL_35;
  }

  while (1)
  {
    v7 = v5 & 0xC000000000000001;
    v8 = (v5 + 32);
    v9 = v3;

    if ((v5 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v10 = *v8;
      goto LABEL_12;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    v6 = sub_18A4A7F68();
    if (!v6)
    {
      goto LABEL_34;
    }
  }

  v10 = sub_188E4A488(0, v5);
LABEL_12:
  v11 = v10[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_order];

  if (v11 > 3)
  {

    v6 = 0;
LABEL_35:

    CGRectMake();
    return;
  }

  if (v6 == 1)
  {
    v12 = 0;
    if (!v7)
    {
      goto LABEL_29;
    }

LABEL_38:
    v18 = sub_188E4A488(v12, v5);
LABEL_31:
    v19 = v18;

    v6 = v19;
    sub_1891698A4();

    goto LABEL_35;
  }

  v12 = 0;
  while (1)
  {
    v13 = v12 + 1;
    if (!v7)
    {
      break;
    }

    v14 = sub_188E4A488(v12 + 1, v5);
    v15 = __OFADD__(v13, 1);
    v16 = (v12 + 2);
    if (v15)
    {
      goto LABEL_26;
    }

LABEL_21:
    v17 = v14[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_order];

    if (v17 < 4)
    {
      ++v12;
      if (v16 != v6)
      {
        continue;
      }
    }

    goto LABEL_27;
  }

  if (v13 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_32;
  }

  v14 = *(v5 + 8 * v12 + 40);
  v15 = __OFADD__(v13, 1);
  v16 = (v12 + 2);
  if (!v15)
  {
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  if (v7)
  {
    goto LABEL_38;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_38;
  }

LABEL_29:
  if (v12 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = v8[v12];
    goto LABEL_31;
  }

  __break(1u);
LABEL_40:
  __break(1u);
}

void sub_188B4B09C()
{
  v4 = v0;
  v5 = *(v0 + 48);
  v6 = &selRef_setEnqueuedWillEnterForegroundActions_;
  if (!v5)
  {
    goto LABEL_36;
  }

  swift_beginAccess();
  v2 = *(v0 + 328);
  if (!v2 || *(v2 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_active) != 1)
  {
    swift_beginAccess();
    v0 = *(v0 + 400);
    if (v0 >> 62)
    {
      goto LABEL_31;
    }

    v18 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_7;
    }

LABEL_32:
    v30 = v2;
    v31 = v5;
    goto LABEL_33;
  }

  v5 = v5;
  v0 = v2;
  v7 = sub_188B4C524();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v13;
  v15 = v11;
  v16 = v9;
  v17 = v7;
LABEL_35:
  [v5 v6[400]];

LABEL_36:
  v32 = *(v4 + 152);
  if (v32)
  {
    v33 = v32;
    v0 = v4;
    sub_18916764C();
    [v33 v6[400]];
  }

  v34 = *(v4 + 56);
  if (v34)
  {
    v35 = v34;
    v0 = v4;
    sub_188B4ADDC();
    v40 = v36;
    v41 = v37;
    v42 = v38;
    v43 = v39;
    v44 = *(v4 + 72);
    if (v44)
    {
      v0 = v44;
      [v0 frame];
      [v0 v6[400]];
      v45 = [v0 superview];
      v46 = v45;
      if (v45)
      {
        [v45 safeAreaInsets];
        v48 = v47;
        v50 = v49;
      }

      else
      {
        v48 = 0.0;
        v50 = 0.0;
      }

      v183.origin.x = v40;
      v183.origin.y = v41;
      v183.size.width = v42;
      v183.size.height = v43;
      MinX = CGRectGetMinX(v183);
      if (MinX > v48)
      {
        v48 = MinX;
      }

      v184.origin.x = v40;
      v184.origin.y = v41;
      v184.size.width = v42;
      v184.size.height = v43;
      MaxX = CGRectGetMaxX(v184);
      if (v46)
      {
        [v46 bounds];
        v53 = CGRectGetMaxX(v185);
      }

      else
      {
        v53 = 0.0;
      }

      v54 = v53 - v50;
      if (v54 >= MaxX)
      {
        v54 = MaxX;
      }

      v55 = v54 - v48;
      v56 = v35;
      v57 = [v0 superview];
      [v0 convertRect:v57 fromView:{v48, v41, v55, v43}];
      v59 = v58;
      v61 = v60;
      v63 = v62;
      v65 = v64;

      [v56 v6[400]];
    }

    else
    {
      [v35 v6[400]];
      v46 = v35;
    }
  }

  v5 = *(v4 + 128);
  if (v5)
  {
    swift_beginAccess();
    v2 = *(v4 + 352);
    if (v2 && *(v2 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_active) == 1)
    {
      v66 = v5;
      v0 = v2;
      v67 = sub_188B4C524();
      v69 = v68;
      v71 = v70;

      goto LABEL_87;
    }

    swift_beginAccess();
    v0 = *(v4 + 400);
    if (v0 >> 62)
    {
      goto LABEL_83;
    }

    v72 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v72)
    {
      while (1)
      {
        v1 = v0 & 0xC000000000000001;
        v3 = v0 & 0xFFFFFFFFFFFFFF8;
        rect = (v0 + 32);
        v73 = v5;
        v74 = v2;

        if ((v0 & 0xC000000000000001) != 0)
        {
          break;
        }

        if (*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v75 = *rect;
          goto LABEL_62;
        }

LABEL_82:
        __break(1u);
LABEL_83:
        v72 = sub_18A4A7F68();
        if (!v72)
        {
          goto LABEL_84;
        }
      }

      v75 = sub_188E4A488(0, v0);
LABEL_62:
      v76 = v75[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_order];

      if (v76 <= 4)
      {
        if (v72 == 1)
        {
          v23 = 0;
          if (v1)
          {
            goto LABEL_211;
          }

          goto LABEL_79;
        }

        v23 = 0;
        while (1)
        {
          v6 = (v23 + 1);
          if (v1)
          {
            v77 = sub_188E4A488(v23 + 1, v0);
            v25 = __OFADD__(v6, 1);
            v78 = v23 + 2;
            if (v25)
            {
              goto LABEL_76;
            }
          }

          else
          {
            if (v6 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_82;
            }

            v77 = *(v0 + 8 * v23 + 40);
            v25 = __OFADD__(v6, 1);
            v78 = v23 + 2;
            if (v25)
            {
LABEL_76:
              __break(1u);
LABEL_77:
              v6 = &selRef_setEnqueuedWillEnterForegroundActions_;
              if (v1)
              {
                goto LABEL_211;
              }

              if ((v23 & 0x8000000000000000) != 0)
              {
                goto LABEL_217;
              }

LABEL_79:
              if (v23 < *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v80 = rect[v23];
                goto LABEL_81;
              }

              __break(1u);
              goto LABEL_213;
            }
          }

          v79 = v77[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_order];

          if (v79 < 5)
          {
            ++v23;
            if (v78 != v72)
            {
              continue;
            }
          }

          goto LABEL_77;
        }
      }
    }

    else
    {
LABEL_84:
      v82 = v2;
      v83 = v5;
    }

    v0 = 0;
    goto LABEL_86;
  }

LABEL_90:
  v5 = *(v4 + 80);
  if (!v5)
  {
    goto LABEL_125;
  }

  swift_beginAccess();
  v2 = *(v4 + 344);
  if (v2 && *(v2 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_active) == 1)
  {
    v5 = v5;
    v0 = v2;
    v89 = sub_188B4C524();
    v91 = v90;
    v93 = v92;
    v95 = v94;

    v96 = v95;
    v97 = v93;
    v98 = v91;
    v99 = v89;
    goto LABEL_124;
  }

  swift_beginAccess();
  v0 = *(v4 + 400);
  if (!(v0 >> 62))
  {
    v100 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v100)
    {
      goto LABEL_96;
    }

LABEL_121:
    v110 = v2;
    v111 = v5;
LABEL_122:
    v0 = 0;
    goto LABEL_123;
  }

  while (1)
  {
    v100 = sub_18A4A7F68();
    if (!v100)
    {
      goto LABEL_121;
    }

LABEL_96:
    v1 = v0 & 0xC000000000000001;
    v3 = v0 & 0xFFFFFFFFFFFFFF8;
    rect = (v0 + 32);
    v101 = v5;
    v102 = v2;

    if ((v0 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v103 = *rect;
      goto LABEL_99;
    }

LABEL_119:
    __break(1u);
  }

  v103 = sub_188E4A488(0, v0);
LABEL_99:
  v104 = v103[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_order];

  if (v104 > 6)
  {

    goto LABEL_122;
  }

  if (v100 == 1)
  {
    v23 = 0;
    if (!v1)
    {
      goto LABEL_116;
    }

    goto LABEL_213;
  }

  v23 = 0;
  while (1)
  {
    v6 = (v23 + 1);
    if (!v1)
    {
      break;
    }

    v105 = sub_188E4A488(v23 + 1, v0);
    v25 = __OFADD__(v6, 1);
    v106 = v23 + 2;
    if (v25)
    {
      goto LABEL_113;
    }

LABEL_108:
    v107 = v105[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_order];

    if (v107 < 7)
    {
      ++v23;
      if (v106 != v100)
      {
        continue;
      }
    }

    goto LABEL_114;
  }

  if (v6 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_119;
  }

  v105 = *(v0 + 8 * v23 + 40);
  v25 = __OFADD__(v6, 1);
  v106 = v23 + 2;
  if (!v25)
  {
    goto LABEL_108;
  }

LABEL_113:
  __break(1u);
LABEL_114:
  v6 = &selRef_setEnqueuedWillEnterForegroundActions_;
  if (!v1)
  {
    if ((v23 & 0x8000000000000000) != 0)
    {
      goto LABEL_218;
    }

LABEL_116:
    if (v23 < *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v108 = rect[v23];
      goto LABEL_118;
    }

    __break(1u);
LABEL_215:
    v133 = sub_188E4A488(v23, v0);
LABEL_157:
    v134 = v133;

    v0 = v134;
    sub_1891698A4();

LABEL_162:
    v124 = CGRectMake();
LABEL_163:
    [v5 v6[400]];

    goto LABEL_164;
  }

LABEL_213:
  v108 = sub_188E4A488(v23, v0);
LABEL_118:
  v109 = v108;

  v0 = v109;
  sub_1891698A4();

LABEL_123:
  v99 = CGRectMake();
LABEL_124:
  [v5 v6[400]];

LABEL_125:
  v112 = *(v4 + 144);
  if (v112)
  {
    v0 = objc_opt_self();
    v113 = v112;
    if (([v0 _hasInProcessProgressAnimator] & 1) == 0)
    {
      v0 = v4;
      sub_188CCAC84();
      [v113 v6[400]];
    }
  }

  v5 = *(v4 + 160);
  if (v5)
  {
    swift_beginAccess();
    v2 = *(v4 + 384);
    if (v2 && *(v2 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_active) == 1)
    {
      v5 = v5;
      v0 = v2;
      v114 = sub_188B4C524();
      v116 = v115;
      v118 = v117;
      v120 = v119;

      v121 = v120;
      v122 = v118;
      v123 = v116;
      v124 = v114;
      goto LABEL_163;
    }

    swift_beginAccess();
    v0 = *(v4 + 400);
    if (v0 >> 62)
    {
      goto LABEL_159;
    }

    v125 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v125)
    {
      while (1)
      {
        v1 = v0 & 0xC000000000000001;
        v3 = v0 & 0xFFFFFFFFFFFFFF8;
        rect = (v0 + 32);
        v126 = v5;
        v127 = v2;

        if ((v0 & 0xC000000000000001) != 0)
        {
          break;
        }

        if (*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v128 = *rect;
          goto LABEL_138;
        }

LABEL_158:
        __break(1u);
LABEL_159:
        v125 = sub_18A4A7F68();
        if (!v125)
        {
          goto LABEL_160;
        }
      }

      v128 = sub_188E4A488(0, v0);
LABEL_138:
      v129 = v128[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_order];

      if (v129 <= 9)
      {
        if (v125 == 1)
        {
          v23 = 0;
          if (v1)
          {
            goto LABEL_215;
          }

          goto LABEL_155;
        }

        v23 = 0;
        while (1)
        {
          v6 = (v23 + 1);
          if (v1)
          {
            v130 = sub_188E4A488(v23 + 1, v0);
            v25 = __OFADD__(v6, 1);
            v131 = v23 + 2;
            if (v25)
            {
              goto LABEL_152;
            }
          }

          else
          {
            if (v6 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_158;
            }

            v130 = *(v0 + 8 * v23 + 40);
            v25 = __OFADD__(v6, 1);
            v131 = v23 + 2;
            if (v25)
            {
LABEL_152:
              __break(1u);
LABEL_153:
              v6 = &selRef_setEnqueuedWillEnterForegroundActions_;
              if (v1)
              {
                goto LABEL_215;
              }

              if ((v23 & 0x8000000000000000) == 0)
              {
LABEL_155:
                if (v23 < *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v133 = rect[v23];
                  goto LABEL_157;
                }

                __break(1u);
LABEL_217:
                __break(1u);
LABEL_218:
                __break(1u);
              }

              __break(1u);
              return;
            }
          }

          v132 = v130[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_order];

          if (v132 < 0xA)
          {
            ++v23;
            if (v131 != v125)
            {
              continue;
            }
          }

          goto LABEL_153;
        }
      }
    }

    else
    {
LABEL_160:
      v135 = v2;
      v136 = v5;
    }

    v0 = 0;
    goto LABEL_162;
  }

LABEL_164:
  v137 = *(v4 + 120);
  if (v137)
  {
    v138 = *(v4 + 80);
    if (v138)
    {
      v139 = v137;
      [v138 frame];
      v140 = *(v4 + 80);
      recta = v141;
      v143 = v142;
      v145 = v144;
      v147 = v146;
      if (v140)
      {
        [v140 directionalLayoutMargins];
        v150 = v149;
        goto LABEL_170;
      }
    }

    else
    {
      v151 = v137;
      recta = 0.0;
      v147 = 0.0;
      v145 = 0.0;
      v143 = 0.0;
    }

    v150 = 0.0;
    v148 = 0.0;
LABEL_170:
    v152 = *(v4 + 224) - v150 - v148;
    v0 = v137;
    v153 = 0.0;
    [v0 sizeThatFits_];
    v155 = v154;
    [v0 setBounds_];
    v156 = v150 + v152 * 0.5;
    v186.origin.x = v143;
    v186.origin.y = v145;
    v186.size.width = v147;
    v186.size.height = recta;
    MaxY = CGRectGetMaxY(v186);
    v158 = *(v4 + 80);
    if (v158)
    {
      [*(v158 + OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_largeTitleView) restingHeightOfTitleView];
      v153 = v159;
    }

    [v0 _firstLineBaseline];
    [v0 setCenter_];
  }

  swift_beginAccess();
  v5 = *(v4 + 400);
  if (!(v5 >> 62))
  {
    v18 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      return;
    }

LABEL_175:
    if (v18 >= 1)
    {

      swift_beginAccess();
      v161 = 0;
      LOBYTE(v162) = 1;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v163 = sub_188E4A488(v161, v5);
          if (!v162)
          {
            goto LABEL_186;
          }
        }

        else
        {
          v163 = *(v5 + 8 * v161 + 32);
          if (!v162)
          {
LABEL_186:
            v162 = 0;
            v166 = *(v4 + 360);
            if (!v166)
            {
              goto LABEL_184;
            }

            goto LABEL_187;
          }
        }

        v164 = *&v163[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_preferredHeight];
        if (v163[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_isCollapsible] == 1)
        {
          v165 = 0.0;
          if (v164 <= 0.0)
          {
            goto LABEL_183;
          }
        }

        else
        {
          v165 = *&v163[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_minimumHeight];
          if (v165 >= v164)
          {
LABEL_183:
            v162 = 1;
            v166 = *(v4 + 360);
            if (!v166)
            {
              goto LABEL_184;
            }

            goto LABEL_187;
          }
        }

        v180 = _UIUnlerp(*&v163[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_collapsingHeight], v165, v164 - *&v163[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_bottomInsetForTransitionProgress]);
        v162 = _UIClamp_2(v180) == 0.0;
        v166 = *(v4 + 360);
        if (!v166)
        {
LABEL_184:
          v167 = v163;
LABEL_190:
          v173 = *(v4 + 368);
          if (!v173 || (type metadata accessor for NavigationBarLayout.InsertLayoutData(), v172 = v163, v174 = v173, v175 = sub_18A4A7C88(), v174, v172, (v175 & 1) == 0))
          {
            v176 = *(v4 + 384);
            v172 = v163;
            if (v176)
            {
              type metadata accessor for NavigationBarLayout.InsertLayoutData();
              v177 = v176;
              v178 = sub_18A4A7C88();

              if ((v178 & 1) == 0)
              {
                goto LABEL_178;
              }

              v179 = *(v4 + 160);
              if (!v179)
              {
                goto LABEL_178;
              }

              v172 = v179;
              sub_189168020(v172, v162);
            }
          }

          goto LABEL_177;
        }

LABEL_187:
        type metadata accessor for NavigationBarLayout.InsertLayoutData();
        v168 = v163;
        v169 = v166;
        v170 = sub_18A4A7C88();

        if ((v170 & 1) == 0)
        {
          goto LABEL_190;
        }

        v171 = *(v4 + 136);
        if (!v171)
        {
          goto LABEL_178;
        }

        v172 = v171;
        sub_189168020(v172, v162);
        [v172 _updateIsPinnedInNavigationBar_];
LABEL_177:

LABEL_178:
        ++v161;

        if (v18 == v161)
        {

          return;
        }
      }
    }

    __break(1u);
LABEL_204:
    v21 = sub_188E4A488(0, v0);
LABEL_10:
    v22 = v21[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_order];

    if (v22 <= 1)
    {
      if (v18 == 1)
      {
        v23 = 0;
        if (!v1)
        {
          goto LABEL_27;
        }

        goto LABEL_209;
      }

      v23 = 0;
      while (1)
      {
        v6 = (v23 + 1);
        if (v1)
        {
          v24 = sub_188E4A488(v23 + 1, v0);
          v25 = __OFADD__(v6, 1);
          v26 = v23 + 2;
          if (v25)
          {
LABEL_24:
            __break(1u);
LABEL_25:
            v6 = &selRef_setEnqueuedWillEnterForegroundActions_;
            if (!v1)
            {
              if ((v23 & 0x8000000000000000) != 0)
              {
                __break(1u);
                goto LABEL_209;
              }

LABEL_27:
              if (v23 < *(v3 + 16))
              {
                v28 = rect[v23];
                goto LABEL_29;
              }

              __break(1u);
LABEL_211:
              v80 = sub_188E4A488(v23, v0);
LABEL_81:
              v81 = v80;

              v0 = v81;
              sub_1891698A4();

LABEL_86:
              v67 = CGRectMake();
              v69 = v84;
              v71 = v85;
LABEL_87:
              [v5 fullHeightOfRefreshControl];
              v87 = v86;
              v88 = [v5 hostContainerView];
              if (v88)
              {
                v0 = v88;
                [v88 v6[400]];
              }

              goto LABEL_90;
            }

LABEL_209:
            v28 = sub_188E4A488(v23, v0);
LABEL_29:
            v29 = v28;

            v0 = v29;
            sub_1891698A4();

LABEL_34:
            v17 = CGRectMake();
            goto LABEL_35;
          }
        }

        else
        {
          if (v6 >= *(v3 + 16))
          {
            do
            {
              __break(1u);
LABEL_31:
              v18 = sub_18A4A7F68();
              if (!v18)
              {
                goto LABEL_32;
              }

LABEL_7:
              v1 = v0 & 0xC000000000000001;
              v3 = v0 & 0xFFFFFFFFFFFFFF8;
              rect = (v0 + 32);
              v19 = v5;
              v20 = v2;

              if ((v0 & 0xC000000000000001) != 0)
              {
                goto LABEL_204;
              }
            }

            while (!*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10));
            v21 = *rect;
            goto LABEL_10;
          }

          v24 = *(v0 + 8 * v23 + 40);
          v25 = __OFADD__(v6, 1);
          v26 = v23 + 2;
          if (v25)
          {
            goto LABEL_24;
          }
        }

        v27 = v24[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_order];

        if (v27 < 2)
        {
          ++v23;
          if (v26 != v18)
          {
            continue;
          }
        }

        goto LABEL_25;
      }
    }

LABEL_33:
    v0 = 0;
    goto LABEL_34;
  }

  v18 = sub_18A4A7F68();
  if (v18)
  {
    goto LABEL_175;
  }
}

uint64_t sub_188B4C018(void *a1)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v4 = [v1 stack];
    v3 = [v4 topItem];

    if (!v3)
    {
      return 0;
    }
  }

  v5 = v3;
  v6 = a1;
  v7 = [v1 navigationBar];
  v8 = [v7 _effectiveDelegate];

  if (v8)
  {
    if ([v8 respondsToSelector_])
    {
      v9 = [v8 _effectiveSearchControllerForSearchBarGivenTopNavigationItem_];
      swift_unknownObjectRelease();
      goto LABEL_8;
    }

    swift_unknownObjectRelease();
    return 0;
  }

  v9 = [v5 _searchControllerIfAllowed];
LABEL_8:

  if (!v9)
  {

    return 0;
  }

  v10 = [v5 _stackEntry];
  if (v10 && (v11 = v10, v12 = [v10 isSearchActive], v11, (v12 & 1) != 0))
  {
    v13 = [v9 hidesNavigationBarDuringPresentation];

    return v13 ^ 1;
  }

  else
  {

    return 1;
  }
}

void sub_188B4C1CC()
{
  v1 = v0;
  v2 = [v0 stack];
  v21 = [v2 topItem];

  if (!v21)
  {
    return;
  }

  v3 = [v21 _stackEntry];
  if (v3 && (v4 = v3, v5 = [v3 isSearchActive], v4, v5))
  {
    v6 = *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView];
    v7 = *&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineSearchConfiguration];
    if (v7 && (*&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineSearchConfiguration + 8] & 1) != 0)
    {
      v8 = v7;
      v9 = v6;
      v10 = sub_188B3461C();

      v11 = &v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_isSuppressingTabBar];
      v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_isSuppressingTabBar] = (v10 & 1) == 0;
      v12 = v21;
      if (v10)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v11 = &v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_isSuppressingTabBar];
      v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_isSuppressingTabBar] = 1;
      v12 = v21;
    }

    if ([v12 searchBarPlacement] == 2)
    {
      v16 = v21;
      v17 = [v1 navigationBar];
      v18 = [v17 _effectiveDelegate];

      if (!v18)
      {
        v19 = [v16 _searchControllerIfAllowed];
LABEL_23:

        if (v19)
        {
          v20 = [v19 hidesNavigationBarDuringPresentation];

          *v11 = v20;
        }

        goto LABEL_9;
      }

      if ([v18 respondsToSelector_])
      {
        v19 = [v18 _effectiveSearchControllerForSearchBarGivenTopNavigationItem_];
        swift_unknownObjectRelease();
        goto LABEL_23;
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v11 = &v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_isSuppressingTabBar];
    v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_isSuppressingTabBar] = 0;
  }

LABEL_9:
  v12 = v21;
LABEL_10:
  if (v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__isActiveTabBarHost] == 1)
  {
    v13 = *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__tabBarHostedView];
    if (v13)
    {
      v14 = *v11;
      v15 = v13;
      [v15 setSuppressTabBar_];

      v12 = v21;
    }
  }
}

void UIFloorToScale(double a1, double a2)
{
  if (a2 == 0.0 && AdjustToScale_onceToken_0 != -1)
  {
    dispatch_once(&AdjustToScale_onceToken_0, &__block_literal_global_306);
  }
}

double sub_188B4C524()
{
  if (*(v0 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData__verticalOrigin + 8))
  {
    sub_18A4A80E8();

    v1 = [v0 description];
    v2 = sub_18A4A7288();
    v4 = v3;

    MEMORY[0x18CFE22D0](v2, v4);

    v5 = sub_18A4A7258();

    __UIKIT_SOFT_ASSERT_FAIL(v5);
  }

  return 0.0;
}

void sub_188B4C634(void *result, void *a2, char a3)
{
  if (a3 != -1)
  {
    sub_188CC51D8(result, a2, a3 & 1);
  }
}

uint64_t get_enum_tag_for_layout_string_5UIKit24NavigationBarContentViewC08SubtitleD0OSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

void sub_188B4C668(void *a1, void *a2)
{
  v3 = *&v2[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_largeTitleView];
  if (!v3)
  {
    return;
  }

  v4 = v2;
  v7 = v3;
  v8 = (sub_188B3761C() & 1);
  v9 = OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_largeTitleView;
  if ([*&v7[OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_largeTitleView] titleType] != v8)
  {
    [*&v7[v9] setTitleType_];
    sub_188B4ABEC();
  }

  if (!a1)
  {
    [*&v7[v9] setTitleView_];
    goto LABEL_13;
  }

  v10 = [a1 _largeTitleView];
  v11 = *&v7[v9];
  if (!v10)
  {
    [*&v7[v9] setTitleView_];
    v14 = [a1 largeTitle];
    if (v14 || (v14 = [a1 title]) != 0)
    {
      v15 = v14;
      sub_18A4A7288();
    }

LABEL_13:
    v16 = *&v7[v9];
    v17 = sub_18A4A7258();

    [v16 setTitle_];

    if (!a1)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  v12 = v10;
  v13 = sub_18A4A7258();
  [v11 setTitle_];

  [*&v7[v9] setTitleView_];
LABEL_14:
  v18 = [a1 largeAttributedSubtitle];
  if (v18)
  {
LABEL_19:
    v23 = v18;
    goto LABEL_21;
  }

  v19 = [a1 attributedSubtitle];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 string];
    if (!v21)
    {
      sub_18A4A7288();
      v21 = sub_18A4A7258();
    }

    v22 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithString_];

    v18 = v22;
    goto LABEL_19;
  }

LABEL_20:
  v23 = 0;
LABEL_21:
  v48 = v23;
  [*&v7[v9] setAttributedSubtitle_];

  v24 = [a1 largeSubtitleView];
  [*&v7[v9] setSubtitleView_];

  if (a1 && (v25 = [a1 _alternateLargeTitles]) != 0)
  {
    v26 = v25;
    sub_18A4A7548();

    v27 = *&v7[v9];
    v28 = sub_18A4A7518();
  }

  else
  {
    v28 = 0;
    v27 = *&v7[v9];
  }

  [v27 setAlternateTitles_];

  v29 = [a1 _largeTitleAccessoryView];
  [*&v7[v9] setAccessoryView_];

  if (a1)
  {
    [*&v7[v9] setAlignAccessoryViewToTitleBaseline_];
    [*&v7[v9] setAccessoryViewHorizontalAlignment_];
    v30 = [a1 _largeTitleTwoLineMode];
  }

  else
  {
    [*&v7[v9] setAlignAccessoryViewToTitleBaseline_];
    [*&v7[v9] setAccessoryViewHorizontalAlignment_];
    v30 = 0;
  }

  [*&v7[v9] setTwoLineMode_];
  v31 = [v4 navigationBar];
  v32 = [v31 traitCollection];

  v33 = [v32 userInterfaceIdiom];
  v47 = v4;
  if (a2)
  {
    v34 = [a2 largeTitleTextAttributes];
    type metadata accessor for Key(0);
    sub_188C5E0DC();
  }

  else
  {
    v35 = [v4 navigationBar];
    v36 = [v35 largeTitleTextAttributes];

    if (v36)
    {
      type metadata accessor for Key(0);
      sub_188C5E0DC();
      sub_18A4A70A8();
    }

    else
    {
      sub_188AEC99C(MEMORY[0x1E69E7CC0]);
    }

    type metadata accessor for Key(0);
    sub_188C5E0DC();
    v37 = sub_18A4A7088();

    v34 = _UINavigationTitleAppearanceAddDefaultLargeTitleAttributes(v37, v33, 0);
  }

  sub_18A4A70A8();
  v38 = a2;

  v39 = *&v7[v9];
  type metadata accessor for Key(0);
  sub_188C5E0DC();
  v40 = sub_18A4A7088();

  [v39 setTitleAttributes_];

  if (v38)
  {
    v41 = [v38 subtitleTextAttributes];
  }

  else
  {
    v41 = _UINavigationTitleAppearanceDefaultLargeSubtitleTextAttributes(v45);
  }

  v42 = v41;
  sub_18A4A70A8();

  v43 = *&v7[v9];
  v44 = sub_18A4A7088();

  [v43 setSubtitleAttributes_];

  if (sub_188B3761C())
  {
    sub_188BAABA0(v46);
  }

  [*&v7[v9] setProvidesExtraSpaceForExcessiveLineHeights_];
  [*&v7[v9] updateContent];
  sub_188B4ABEC();
}

void sub_188B4CD90(void *a1)
{
  v3 = *(v1 + 104);
  if (!a1)
  {
    if (!v3)
    {
      return;
    }

    goto LABEL_6;
  }

  if (!v3)
  {
LABEL_6:
    *(v1 + 104) = a1;
    v7 = a1;

    sub_188B386EC();
    goto LABEL_7;
  }

  v4 = v1;
  sub_188A34624(0, &unk_1ED48DBC0, off_1E70EB0E0);
  v5 = v3;
  v7 = a1;
  v6 = sub_18A4A7C88();

  if ((v6 & 1) == 0)
  {
    v1 = v4;
    v3 = *(v4 + 104);
    goto LABEL_6;
  }

LABEL_7:
}

void sub_188B4CE64(uint64_t a1@<X8>)
{
  sub_188B4D13C();

  sub_188B48DE8(v2, v17);

  v4 = *v17;
  v3 = *&v17[1];
  v5 = v17[2];
  v6 = v17[3];
  v16 = v18;

  sub_188B48ADC(v7);
  v9 = v8;

  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_14:

    v4 = v3;
    goto LABEL_15;
  }

  v10 = sub_18A4A7F68();
  if (!v10)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (v10 != 1)
  {

LABEL_15:
    *a1 = v4;
    *(a1 + 8) = v3;
    *(a1 + 16) = v5;
    *(a1 + 24) = v6;
    *(a1 + 32) = v16;
    return;
  }

  if ((v9 & 0xC000000000000001) != 0)
  {
    v11 = sub_188E49AA8(0, v9);
    goto LABEL_7;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v9 + 32);
LABEL_7:
    v12 = v11;

    v13 = [v12 barButtonItems];

    sub_188A34624(0, &qword_1ED48E8C0, off_1E70E94D0);
    v14 = sub_18A4A7548();

    if (v14 >> 62)
    {
      v15 = sub_18A4A7F68();
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v15 <= 1)
    {
      v4 = v3;
    }

    goto LABEL_15;
  }

  __break(1u);
}

BOOL sub_188B4D020()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_centerGroupsMode);
  if (v2 == 2)
  {
    v6 = sub_188AEB244();
    if (!v6)
    {
      goto LABEL_10;
    }

    v4 = v6;
    sub_1890797B0();
  }

  else
  {
    if (v2 != 1)
    {
      goto LABEL_10;
    }

    if (sub_188EBCD74() && !dyld_program_sdk_at_least())
    {
      return 1;
    }

    v3 = sub_188AEB244();
    if (!v3)
    {
      goto LABEL_10;
    }

    v4 = v3;
    sub_189079CF4(v3);
  }

  v7 = v5;

  if (v7)
  {
    return 1;
  }

LABEL_10:
  if (*(v1 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_leadingGroupsMode) == 2)
  {
    v8 = sub_188AEAD00();
    if (v8)
    {
      v9 = v8;
      sub_1890797B0();
      v11 = v10;

      if (v11)
      {
        return 1;
      }
    }
  }

  if (*(v1 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_staticLeadingGroupsMode) == 2)
  {
    v12 = sub_188EBC854();
    if (v12)
    {
      v13 = v12;
      sub_1890797B0();
      v15 = v14;

      if (v15)
      {
        return 1;
      }
    }
  }

  return *(v1 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_additionalOverflowItems) != 0;
}

void sub_188B4D13C()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_188B33C7C(MEMORY[0x1E69E7CC0]);
  v68 = v2;
  v69 = v3;
  v67 = 0;
  sub_188B4D780();
  v4 = *(v1 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_resolvedSections);
  if (!v4)
  {
LABEL_82:
    __break(1u);
    return;
  }

  v5 = *(v4 + 16);
  if (v5)
  {

    v6 = (v4 + 48);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v6 += 3;

      sub_188B52458(v9, v7, v8, v66, v1, &v69, &v67, &v68);

      --v5;
    }

    while (v5);

    v10 = v68;
    v3 = v69;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  *(v1 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_sectionLayouts) = v10;

  v11 = OBJC_IVAR____TtC5UIKit19NavigationButtonBar_groupLayoutMap;
  swift_beginAccess();
  *(v1 + v11) = v3;

  v12 = MEMORY[0x1E69E7CC0];
  v57 = *(v10 + 16);
  if (v57)
  {
    v13 = 0;
    v58 = v10 + 32;
    v14 = MEMORY[0x1E69E7CC0];
    v55 = v10;
    v56 = v1;
    while (v13 < *(v10 + 16))
    {
      v15 = *(v58 + 24 * v13);
      v65 = v12;
      if (v15 >> 62)
      {
        v16 = sub_18A4A7F68();
      }

      else
      {
        v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v59 = v14;
      v60 = v13;

      if (v16)
      {
        v54 = v15;
        v17 = 0;
        v18 = v15 & 0xC000000000000001;
        v19 = v15 & 0xFFFFFFFFFFFFFF8;
        v63 = v16;
        v64 = v15 + 32;
        v20 = &selRef__isDictationButtonVisible;
        v61 = v15 & 0xC000000000000001;
        v62 = v15 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v18)
          {
            v21 = sub_188E49D08(v17, v54);
          }

          else
          {
            if (v17 >= *(v19 + 16))
            {
              goto LABEL_79;
            }

            v21 = *(v64 + 8 * v17);
          }

          v22 = v21;
          v23 = __OFADD__(v17++, 1);
          if (v23)
          {
            goto LABEL_78;
          }

          v24 = OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_group;
          if ([*&v21[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_group] v20[143]])
          {
          }

          else
          {
            if (v22[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout__compact] == 1 && (v25 = [*&v22[v24] representativeItem]) != 0 && (v26 = v25, v27 = objc_msgSend(v25, sel_isHidden), v26, !v27))
            {
LABEL_37:
              sub_18A4A81D8();
              sub_18A4A8218();
              sub_18A4A8228();
              sub_18A4A81E8();
            }

            else
            {
              v28 = [*&v22[v24] barButtonItems];
              sub_188A34624(0, &qword_1ED48E8C0, off_1E70E94D0);
              v29 = sub_18A4A7548();

              if (v29 >> 62)
              {
                v30 = sub_18A4A7F68();
              }

              else
              {
                v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v31 = 0;
              v32 = 0;
              while (v30 != v31)
              {
                if ((v29 & 0xC000000000000001) != 0)
                {
                  v33 = sub_188E49ABC(v31, v29);
                }

                else
                {
                  if (v31 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_75;
                  }

                  v33 = *(v29 + 8 * v31 + 32);
                }

                v34 = v33;
                if (__OFADD__(v31, 1))
                {
                  __break(1u);
LABEL_75:
                  __break(1u);
LABEL_76:
                  __break(1u);
                  goto LABEL_77;
                }

                v35 = [v33 isHidden];

                v36 = v35 ^ 1;
                ++v31;
                v23 = __OFADD__(v32, v36);
                v32 += v36;
                if (v23)
                {
                  goto LABEL_76;
                }
              }

              v20 = &selRef__isDictationButtonVisible;
              v18 = v61;
              if (v32 >= 1)
              {
                goto LABEL_37;
              }
            }

            v19 = v62;
            v16 = v63;
          }

          if (v17 == v16)
          {
            v37 = v65;
            goto LABEL_44;
          }
        }
      }

      v37 = MEMORY[0x1E69E7CC0];
LABEL_44:

      if ((v37 & 0x8000000000000000) != 0 || (v37 & 0x4000000000000000) != 0)
      {
        v39 = sub_18A4A7F68();
        v38 = sub_18A4A7F68();
        if (v38)
        {
LABEL_47:
          v40 = 0;
          while (1)
          {
            if ((v37 & 0xC000000000000001) != 0)
            {
              v41 = sub_188E49D08(v40, v37);
            }

            else
            {
              if (v40 >= *(v37 + 16))
              {
                goto LABEL_80;
              }

              v41 = *(v37 + 32 + 8 * v40);
            }

            v42 = v41;
            v23 = __OFADD__(v40++, 1);
            if (v23)
            {
              break;
            }

            if ((v41[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_representativeLayout + 8] & 0x80000000) == 0)
            {
              *(*&v41[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_representativeLayout] + 160) = 1;
            }

            v43 = OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_itemLayouts;
            swift_beginAccess();
            v44 = *&v42[v43];
            v45 = *(v44 + 16);
            if (v45)
            {
              v46 = (v44 + 40);
              v47 = (v44 + 40);
              do
              {
                v48 = *v47;
                v47 += 16;
                if ((v48 & 0x80000000) == 0)
                {
                  *(*(v46 - 1) + 160) = 1;
                }

                v46 = v47;
                --v45;
              }

              while (v45);
            }

            v42[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_isOnlyGroupInSection] = v39 == 1;

            if (v40 == v38)
            {
              goto LABEL_63;
            }
          }

LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
          break;
        }
      }

      else
      {
        v38 = *(v37 + 16);
        v39 = v38;
        if (v38)
        {
          goto LABEL_47;
        }
      }

LABEL_63:
      if (v39 < 1)
      {

        v10 = v55;
        v1 = v56;
        v12 = MEMORY[0x1E69E7CC0];
        v14 = v59;
        v49 = v60;
      }

      else
      {
        v14 = v59;
        v10 = v55;
        v1 = v56;
        v49 = v60;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_188B5227C(0, *(v59 + 2) + 1, 1, v59);
        }

        v51 = *(v14 + 2);
        v50 = *(v14 + 3);
        v12 = MEMORY[0x1E69E7CC0];
        if (v51 >= v50 >> 1)
        {
          v53 = sub_188B5227C((v50 > 1), v51 + 1, 1, v14);
          v12 = MEMORY[0x1E69E7CC0];
          v14 = v53;
        }

        *(v14 + 2) = v51 + 1;
        v52 = &v14[24 * v51];
        *(v52 + 5) = 0;
        *(v52 + 6) = 0;
        *(v52 + 4) = v37;
      }

      v13 = v49 + 1;
      if (v13 == v57)
      {
        goto LABEL_73;
      }
    }

    __break(1u);
    goto LABEL_82;
  }

  v14 = MEMORY[0x1E69E7CC0];
LABEL_73:
  *(v1 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_effectiveLayoutHasCriticalGroup) = v67;
  *(v1 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_effectiveLayout) = v14;
}

void sub_188B4D780()
{
  v1 = OBJC_IVAR____TtC5UIKit19NavigationButtonBar_resolvedSections;
  if (*(v0 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_resolvedSections))
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
LABEL_30:
    sub_188A55B8C(v2, v3);
    sub_188A55B8C(v4, v5);
    return;
  }

  v6 = OBJC_IVAR____TtC5UIKit19NavigationButtonBar_groupOrderer;
  v7 = *(v0 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_groupOrderer);
  v5 = &OBJC_INSTANCE_METHODS__UIViewServiceProxy_ReplyAwaiting;
  if (v7)
  {
    v67 = MEMORY[0x1E69E7CC0];
    v8 = swift_allocObject();
    *(v8 + 16) = &v67;
    v9 = swift_allocObject();
    v59 = sub_18907CFDC;
    *(v9 + 16) = sub_18907CFDC;
    *(v9 + 24) = v8;
    v65 = sub_18907CFD8;
    v66 = v9;
    aBlock = MEMORY[0x1E69E9820];
    v62 = 1107296256;
    v63 = sub_188B52BCC;
    v64 = &block_descriptor_81_1;
    v10 = _Block_copy(&aBlock);
    v11 = v7;

    [(_UIButtonBarGroupOrderer *)v11 enumerateOrderedGroupsPartitionedIntoSections:v10];

    _Block_release(v10);
    LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

    if ((v10 & 1) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v67 = *(v0 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_sectionedBarButtonGroups);

  v59 = 0;
  v8 = 0;
LABEL_7:
  v12 = OBJC_IVAR____TtC5UIKit19NavigationButtonBar_fixedLeadingGroups;
  v13 = *(v0 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_fixedLeadingGroups);
  if (v13 >> 62)
  {
    v14 = sub_18A4A7F68();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v58 = v8;
  if (v14 < 1)
  {
    v20 = 0;
    v21 = 0;
    v57 = 0;
    v17 = 0;
    goto LABEL_17;
  }

  if (*(v0 + v6) || !v67[2])
  {
    v15 = objc_opt_self();
    sub_188A34624(0, &unk_1ED48DBD0, off_1E70E94E8);

    v16 = sub_18A4A7518();

    v17 = swift_allocObject();
    v17[2] = &v67;
    isEscapingClosureAtFileLocation = swift_allocObject();
    v57 = sub_18907CD90;
    *(isEscapingClosureAtFileLocation + 16) = sub_18907CD90;
    *(isEscapingClosureAtFileLocation + 24) = v17;
    v65 = sub_18907CFD8;
    v66 = isEscapingClosureAtFileLocation;
    aBlock = MEMORY[0x1E69E9820];
    v62 = 1107296256;
    v63 = sub_188B52BCC;
    v64 = &block_descriptor_61_1;
    v19 = _Block_copy(&aBlock);
    v5 = v66;

    [v15 _partitionGroupsIntoSections_sectionHandler_];

    _Block_release(v19);
    LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

    if (v19)
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v20 = 0;
    v21 = 0;
    v5 = &OBJC_INSTANCE_METHODS__UIViewServiceProxy_ReplyAwaiting;
LABEL_17:
    v16 = OBJC_IVAR____TtC5UIKit19NavigationButtonBar_fixedTrailingGroups;
    v28 = *(v0 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_fixedTrailingGroups);
    if (v28 >> 62)
    {
      v29 = sub_18A4A7F68();
    }

    else
    {
      v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v56 = v20;
    if (v29 < 1)
    {
      v34 = 0;
      v35 = 0;
      v4 = 0;
      v5 = 0;
      goto LABEL_29;
    }

    if (!*(v0 + v6))
    {
      isEscapingClosureAtFileLocation = v67;
      if (v67[2])
      {
        v50 = v21;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_26;
        }

        goto LABEL_36;
      }
    }

    v54 = v17;
    v17 = v21;
    v30 = v1;
    v31 = objc_opt_self();
    sub_188A34624(0, &unk_1ED48DBD0, off_1E70E94E8);

    v32 = sub_18A4A7518();

    v5 = swift_allocObject();
    v5[2] = &v67;
    v33 = swift_allocObject();
    v4 = sub_188B5341C;
    *(v33 + 16) = sub_188B5341C;
    *(v33 + 24) = v5;
    v65 = sub_188B52C3C;
    v66 = v33;
    aBlock = MEMORY[0x1E69E9820];
    v62 = 1107296256;
    v63 = sub_188B52BCC;
    v64 = &block_descriptor_41_3;
    v16 = _Block_copy(&aBlock);
    v1 = v66;

    [v31 _partitionGroupsIntoSections_sectionHandler_];

    _Block_release(v16);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v34 = 0;
      v35 = 0;
      v1 = v30;
      v21 = v17;
      v17 = v54;
LABEL_29:
      *(v0 + v1) = v67;

      sub_188A55B8C(v59, v58);
      sub_188A55B8C(v56, v21);
      sub_188A55B8C(v57, v17);
      v3 = v35;
      v2 = v34;
      goto LABEL_30;
    }

    goto LABEL_34;
  }

  v53 = v1;
  v23 = v67[4];
  v22 = v67[5];
  v24 = v67[6];

  sub_188C99D68(0);

  v60 = MEMORY[0x1E69E7CC0];
  v17 = objc_opt_self();
  v51 = v0;
  aBlock = *(v0 + v12);

  sub_188B34B04(v23);
  sub_188A34624(0, &unk_1ED48DBD0, off_1E70E94E8);
  v25 = sub_18A4A7518();

  v21 = swift_allocObject();
  v21[2] = &v60;
  v21[3] = v23;
  v21[4] = v22;
  v21[5] = v24;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_188BB67AC;
  *(v26 + 24) = v21;
  v16 = v21;
  v65 = sub_18907CFD8;
  v66 = v26;
  aBlock = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v63 = sub_188B52BCC;
  v64 = &block_descriptor_71_1;
  isEscapingClosureAtFileLocation = _Block_copy(&aBlock);
  v1 = v66;

  [v17 _partitionGroupsIntoSections_sectionHandler_];

  _Block_release(isEscapingClosureAtFileLocation);
  v0 = swift_isEscapingClosureAtFileLocation();

  if ((v0 & 1) == 0)
  {
    v27 = v60;

    sub_188C99E1C(0, 0, v27);

    v57 = 0;
    v17 = 0;
    v20 = sub_188BB67AC;
    v0 = v51;
    v1 = v53;
    goto LABEL_17;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  isEscapingClosureAtFileLocation = sub_188BB6798(isEscapingClosureAtFileLocation);
LABEL_26:
  v55 = v1;
  v36 = *(isEscapingClosureAtFileLocation + 16);
  if (v36)
  {
    v37 = v5;
    v38 = v36 - 1;
    v39 = (isEscapingClosureAtFileLocation + 24 * v36);
    v40 = v39[1];
    v41 = v39[2];
    v42 = v39[3];
    *(isEscapingClosureAtFileLocation + 16) = v38;
    v67 = isEscapingClosureAtFileLocation;
    v60 = MEMORY[0x1E69E7CC0];
    v43 = objc_opt_self();
    v52 = v0;
    v44 = *&v16[v0];
    aBlock = v40;

    sub_188B34B04(v44);
    sub_188A34624(0, &unk_1ED48DBD0, off_1E70E94E8);
    v45 = sub_18A4A7518();

    v46 = swift_allocObject();
    v46[2] = &v60;
    v46[3] = v40;
    v46[4] = v41;
    v46[5] = v42;
    v47 = swift_allocObject();
    *(v47 + 16) = sub_188C411B0;
    *(v47 + 24) = v46;
    v35 = v46;
    v65 = sub_18907CFD8;
    v66 = v47;
    aBlock = MEMORY[0x1E69E9820];
    v62 = v37[308];
    v63 = sub_188B52BCC;
    v64 = &block_descriptor_51_1;
    v48 = _Block_copy(&aBlock);

    [v43 _partitionGroupsIntoSections_sectionHandler_];

    _Block_release(v48);
    LOBYTE(v45) = swift_isEscapingClosureAtFileLocation();

    if ((v45 & 1) == 0)
    {

      sub_188C411D4(v49);

      v4 = 0;
      v5 = 0;
      v34 = sub_188C411B0;
      v0 = v52;
      v1 = v55;
      v21 = v50;
      goto LABEL_29;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_188B4E2A4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = ObjectType;
  v4 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_isPerformingLayout;
  if (v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_isPerformingLayout])
  {
    v23.receiver = v0;
    v23.super_class = ObjectType;
    objc_msgSendSuper2(&v23, sel_layoutSubviews);
    return;
  }

  v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_isPerformingLayout] = 1;
  v5 = _UINavigationBarCastToAugmentedTitleView(*&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleContent + 8]);
  v6 = v5;
  if (v5)
  {
    v7 = [v5 _navigationBarContentOverlayRects];
    sub_188A34624(0, &qword_1ED48EC30, 0x1E696B098);
    v8 = sub_18A4A7548();
  }

  else
  {
    v8 = 0;
  }

  v25.receiver = v1;
  v25.super_class = v3;
  objc_msgSendSuper2(&v25, sel_layoutSubviews);
  v9 = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_transitionContainer];
  [v1 bounds];
  [v9 setFrame_];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v13 = [objc_opt_self() _isInAnimationBlockWithAnimationsEnabled];
    v22 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_shouldAnimateNextLayout;
    v14 = v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_shouldAnimateNextLayout] | v13;
    v15 = objc_opt_self();
    v16 = swift_allocObject();
    *(v16 + 16) = v1;
    *(v16 + 24) = v14 & 1;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_188B51BD8;
    *(v17 + 24) = v16;
    aBlock[4] = sub_188A4B574;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A968;
    aBlock[3] = &block_descriptor_162;
    v18 = _Block_copy(aBlock);
    v19 = v1;

    [(UITraitCollection *)v15 _performWithFallbackEnvironment:v19 block:v18];
    _Block_release(v18);
    LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

    if (v15)
    {
      __break(1u);
    }

    else
    {
      if (v8)
      {
        if (v6)
        {
          v20 = [v6 _navigationBarContentOverlayRects];
          sub_188A34624(0, &qword_1ED48EC30, 0x1E696B098);
          v21 = sub_18A4A7548();

          LOBYTE(v20) = sub_188CCF39C(v8, v21);

          if ((v20 & 1) == 0)
          {
            [v6 setNeedsLayout];
          }
        }

        else
        {
        }
      }

      if (qword_1ED48C6C8 == -1)
      {
        goto LABEL_15;
      }
    }

    swift_once();
LABEL_15:
    if (byte_1EA930840 == 1)
    {
      sub_188EBE970();
    }

    v12 = v22;
    goto LABEL_18;
  }

  v11 = Strong;

  v12 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_shouldAnimateNextLayout;
LABEL_18:
  v1[v12] = 0;
  v1[v4] = 0;
}

uint64_t sub_188B4E658()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

void sub_188B4E6A0(void *a1)
{
  if (a1)
  {
    v2 = v1;
    v4 = *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView];
    sub_188A34624(0, &qword_1ED48F680, off_1E70EAD78);
    v5 = v4;
    v6 = a1;
    v7 = sub_18A4A7C88();

    if (v7 & 1) != 0 || (v8 = *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_promptView]) != 0 && (v9 = v6, v10 = v8, v11 = sub_18A4A7C88(), v10, v9, (v11))
    {
      v14 = v6;
      v12 = [v2 navigationBar];
      v13 = [v12 window];

      if (v13)
      {

        _UIBarsSetAccessibilityLimits(v14);
      }
    }
  }
}

double sub_188B4E848()
{
  v1 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_visualProvider];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_resolvedContentSize];

    [v1 contentHeightForContentSize_];
  }

  else
  {
    v4 = [v0 traitCollection];
    v5 = [v4 userInterfaceIdiom];

    result = 44.0;
    if (v5 == 5)
    {
      return 36.0;
    }
  }

  return result;
}

void sub_188B4E8EC(void *a1)
{
  v3 = v1[18];
  v4 = v1[12];
  v29 = v3;
  if (v4)
  {
    v5 = v3;
    [a1 insertSubview:v4 atIndex:0];
    v4 = 1;
    v6 = v1[16];
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = v3;
    v6 = v1[16];
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  v8 = [v6 hostContainerView];
  if (v8)
  {
    v9 = v8;
    [a1 insertSubview:v8 atIndex:v4];

    ++v4;
  }

LABEL_7:
  v10 = v1[19];
  if (v10)
  {
    [a1 insertSubview:v10 atIndex:v4++];
  }

  v11 = v1[20];
  if (v11)
  {
    [a1 insertSubview:v11 atIndex:v4++];
  }

  if (v29)
  {
    [a1 insertSubview:v29 atIndex:v4++];
  }

  v12 = v1[10];
  if (v12)
  {
    [a1 insertSubview:v12 atIndex:v4++];
  }

  v13 = v1[9];
  if (v13)
  {
    v14 = v1[9];
  }

  else
  {
    v15 = v1[7];
    if (!v15)
    {
      goto LABEL_20;
    }

    v14 = v15;
    v13 = 0;
  }

  v16 = v13;
  [a1 insertSubview:v14 atIndex:v4];

  ++v4;
LABEL_20:
  v17 = v1[6];
  if (v17)
  {
    [a1 insertSubview:v17 atIndex:v4++];
  }

  v18 = v1[15];
  if (v18)
  {
    [a1 insertSubview:v18 atIndex:v4++];
  }

  v19 = v1[7];
  if (v19)
  {
    v20 = [*(v19 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_assistant) previewContainer];
    if (v20)
    {
      v21 = v20;
      [a1 insertSubview:v20 atIndex:v4];
    }
  }

  v22 = v1[9];
  if (v22)
  {
    v23 = v1[7];
    if (v23)
    {
      v24 = v23;
      v25 = v22;
      v26 = [v24 superview];
      if (v26 && (v27 = v26, v26, v27 == v25))
      {
        v28 = v24;
        v24 = v25;
      }

      else
      {
        [v25 addSubview_];
        v28 = v25;
      }
    }
  }

  if (v29)
  {
    [v29 setTranslatesAutoresizingMaskIntoConstraints_];
  }
}

id sub_188B4EC10(void *a1)
{
  if (*&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__appearanceAPIVersion] > 1 || ((v8 = a1, v2 = [a1 userInterfaceStyle], v3 = objc_msgSend(v1, sel_navigationBar), v4 = objc_msgSend(v3, sel_barStyle), v3, a1 = v8, (v4 - 3) >= 0xFFFFFFFFFFFFFFFELL) ? (v5 = v2 == 2) : (v5 = 1), v5))
  {

    return a1;
  }

  else
  {
    v7 = [v8 _traitCollectionByReplacingNSIntegerValue_forTraitToken_];

    return v7;
  }
}

double sub_188B4ECFC(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v3 = v1;
  v5 = v4;
  v7 = v6;
  v335 = v8;
  v433 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_renamingContentView;
  v9 = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_renamingContentView];
  if (v9)
  {
    v10 = v9;
    v11 = [v3 traitCollection];
    v12 = [v11 horizontalSizeClass];

    if (v12 == 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = 4;
    }

    [v10 setTextAlignment_];
  }

  v14 = [v3 traitCollection];
  v15 = [v14 _barPlattersHidden];

  v16 = [v3 traitCollection];
  v17 = sub_188B4E848();
  v18 = [v3 _shouldReverseLayoutDirection];
  v19 = [v16 userInterfaceIdiom];
  v329 = v7;
  if (v19 <= 2)
  {
    if ((v19 + 1) < 4)
    {
LABEL_8:
      [v16 displayScale];
      v21 = v20;

      if (v15)
      {
        v22 = 6.0;
      }

      else
      {
        v22 = 8.0;
      }

      v435 = 4.0;
      if (v15)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = 4.0;
      }

      if (v15)
      {
        v24 = 6.0;
      }

      else
      {
        v24 = 12.0;
      }

      if (v15)
      {
        v25 = 12.0;
      }

      else
      {
        v25 = 2.0;
      }

      v26 = v15 ^ 1;
      if (v15)
      {
        v27 = 12.0;
      }

      else
      {
        v27 = 6.0;
      }

      v28 = 1;
      v437 = 36.0;
      v436 = 12.0;
      if (v15)
      {
        v29 = 12.0;
      }

      else
      {
        v29 = 7.0;
      }

      goto LABEL_26;
    }

    goto LABEL_67;
  }

  if (v19 == 3)
  {
    [v16 displayScale];
    v21 = v61;

    v28 = 0;
    v25 = 2.0;
    v437 = 28.0;
    v26 = 1;
    v24 = 8.0;
    v23 = 4.0;
    v22 = 0.0;
    v435 = 4.0;
    v436 = 8.0;
    v27 = 8.0;
    v29 = 8.0;
    goto LABEL_26;
  }

  if (v19 == 6)
  {
    goto LABEL_8;
  }

  if (v19 != 5)
  {
LABEL_67:
    [v16 displayScale];
    v21 = v62;

    v29 = 7.0;
    v26 = 1;
    v27 = 6.0;
    v25 = 2.0;
    v24 = 12.0;
    v23 = 4.0;
    v22 = 8.0;
    v437 = 36.0;
    v435 = 4.0;
    v28 = 1;
    v436 = 12.0;
    goto LABEL_26;
  }

  [v16 displayScale];
  v21 = v43;

  if (v15)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = 4.0;
  }

  v22 = 6.0;
  if (v15)
  {
    v25 = 6.0;
  }

  else
  {
    v25 = 2.0;
  }

  v44 = 8.0;
  v24 = 12.0;
  if (v15)
  {
    v44 = 12.0;
  }

  v436 = v44;
  if (v15)
  {
    v27 = 10.0;
  }

  else
  {
    v27 = 6.0;
  }

  if (v15)
  {
    v29 = 11.0;
  }

  else
  {
    v29 = 7.0;
  }

  v26 = v15 ^ 1;
  v28 = 1;
  v437 = 28.0;
  v435 = v23;
LABEL_26:
  v30 = sub_188EBC854();
  if (v30)
  {
    v31 = &v30[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics];
    *v31 = 0;
    *(v31 + 1) = v17;
    v31[16] = v18;
    *(v31 + 17) = *v495;
    *(v31 + 5) = *&v495[3];
    *(v31 + 3) = v21;
    *(v31 + 4) = v22;
    *(v31 + 5) = v23;
    *(v31 + 6) = v435;
    *(v31 + 7) = v24;
    *(v31 + 8) = v437;
    *(v31 + 9) = v25;
    *(v31 + 10) = v436;
    *(v31 + 11) = v27;
    v31[96] = v28;
    *(v31 + 97) = *v494;
    *(v31 + 25) = *&v494[3];
    *(v31 + 13) = v29;
    v31[112] = v26;
    v31[113] = v28;
  }

  v32 = sub_188AEAD00();
  if (v32)
  {
    v33 = &v32[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics];
    *v33 = 0;
    *(v33 + 1) = v17;
    v33[16] = v18;
    *(v33 + 17) = *v495;
    *(v33 + 5) = *&v495[3];
    *(v33 + 3) = v21;
    *(v33 + 4) = v22;
    *(v33 + 5) = v23;
    *(v33 + 6) = v435;
    *(v33 + 7) = v24;
    *(v33 + 8) = v437;
    *(v33 + 9) = v25;
    *(v33 + 10) = v436;
    *(v33 + 11) = v27;
    v33[96] = v28;
    *(v33 + 97) = *v494;
    *(v33 + 25) = *&v494[3];
    *(v33 + 13) = v29;
    v33[112] = v26;
    v33[113] = v28;
  }

  v34 = sub_188AEB244();
  if (v34)
  {
    v35 = &v34[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics];
    *v35 = 0;
    *(v35 + 1) = v17;
    v35[16] = v18;
    *(v35 + 17) = *v495;
    *(v35 + 5) = *&v495[3];
    *(v35 + 3) = v21;
    *(v35 + 4) = v22;
    *(v35 + 5) = v23;
    *(v35 + 6) = v435;
    *(v35 + 7) = v24;
    *(v35 + 8) = v437;
    *(v35 + 9) = v25;
    *(v35 + 10) = v436;
    *(v35 + 11) = v27;
    v35[96] = v28;
    *(v35 + 97) = *v494;
    *(v35 + 25) = *&v494[3];
    *(v35 + 13) = v29;
    v35[112] = v26;
    v35[113] = v28;
  }

  v36 = sub_188AEAF10();
  if (v36)
  {
    v37 = &v36[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics];
    *v37 = 0;
    *(v37 + 1) = v17;
    v37[16] = v18;
    *(v37 + 17) = *v495;
    *(v37 + 5) = *&v495[3];
    *(v37 + 3) = v21;
    *(v37 + 4) = v22;
    *(v37 + 5) = v23;
    *(v37 + 6) = v435;
    *(v37 + 7) = v24;
    *(v37 + 8) = v437;
    *(v37 + 9) = v25;
    *(v37 + 10) = v436;
    *(v37 + 11) = v27;
    v37[96] = v28;
    *(v37 + 97) = *v494;
    *(v37 + 25) = *&v494[3];
    *(v37 + 13) = v29;
    v37[112] = v26;
    v37[113] = v28;
  }

  if (*&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_activeRenamerSession] && *&v3[v433])
  {
    v38 = [v3 traitCollection];
    v39 = [v38 horizontalSizeClass];

    v440 = v39 == 1;
  }

  else
  {
    v440 = 0;
  }

  v40 = &v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineSearchConfiguration];
  v41 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineSearchConfiguration];
  v327 = v18;
  v323 = v26;
  v321 = v28;
  v336 = v5;
  if (!v41)
  {
    v438 = 0;
    goto LABEL_60;
  }

  v438 = v40[9] & (v5 ^ 1);
  if ((*(v40 + 4) & 1) == 0)
  {
LABEL_60:
    v349 = 0;
    goto LABEL_61;
  }

  v42 = v41;
  v349 = sub_188B3461C();

LABEL_61:
  v45 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleEnabled;
  v328 = v17;
  v325 = v25;
  v326 = v21;
  v324 = v23;
  v322 = v22;
  v320 = v27;
  v334 = v29;
  if (v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleEnabled] == 1)
  {
    sub_188B55154();
    v46 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__titleControl];
    if (v46)
    {
      if (v3[v45] == 1)
      {
        v47 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleIconView];
        if (v47)
        {
          v48 = v46;
          v49 = v47;
          [v49 bounds];
          v51 = v50;
          v53 = v52;
          v55 = v54;
          v57 = v56;
          v58 = v48;
          [v49 convertRect:v58 toCoordinateSpace:{v51, v53, v55, v57}];
          v60 = v59;
        }

        else
        {
          v60 = 0.0;
          v63 = v46;
        }

        [v46 setMenuAlignmentInsets_];
      }
    }
  }

  if (*v40)
  {
    v64 = *v40;
    if ([v64 isHidden])
    {
      v65 = v64;
LABEL_79:

      goto LABEL_80;
    }

    v66 = [(_UIBarButtonItemSearchBarGroup *)v64 searchBar];
    v65 = v66;
    if (v66 && ([v66 _isEnabled] & 1) == 0)
    {
      v67 = [v65 window];
      if (!v67)
      {
        v68 = 1;
        goto LABEL_78;
      }
    }

    v68 = 0;
LABEL_78:
    [(_UIBarButtonItemSearchBarGroup *)v64 _setDisabledExpansion:v68];
    [(_UIBarButtonItemSearchBarGroup *)v64 _setSearchBarShouldBeFlexible:?];

    goto LABEL_79;
  }

LABEL_80:
  v69 = &v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_tabBarContext];
  v70 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_tabBarContext + 16];
  v491 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_tabBarContext];
  v492[0] = v70;
  *(v492 + 10) = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_tabBarContext + 26];
  v348 = v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_tabBarContext + 42];
  v347 = v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_tabBarContext + 43];
  v351 = v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_tabBarContext + 44];
  v71 = sub_188EBE444();
  *&v493[5] = v491;
  *&v493[21] = v492[0];
  *&v493[31] = *(v492 + 10);
  v72 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView__titleControl;
  v73 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__titleControl];
  if (v73)
  {
    v415 = [v73 isInteractive];
  }

  else
  {
    v415 = 0;
  }

  [v3 _safeAreaCornerInsets];
  v74 = [v3 _shouldReverseLayoutDirection];
  if (v74)
  {
    v75 = *&v728;
  }

  else
  {
    v75 = *&v725;
  }

  v441 = v75;
  if (v74)
  {
    v76 = *(&v728 + 1);
  }

  else
  {
    v76 = *(&v725 + 1);
  }

  v417 = v76;
  v77 = [v3 _shouldReverseLayoutDirection];
  if (v77)
  {
    v78 = *&v725;
  }

  else
  {
    v78 = *&v728;
  }

  v439 = v78;
  if (v77)
  {
    v79 = *(&v725 + 1);
  }

  else
  {
    v79 = *(&v728 + 1);
  }

  v80 = &v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_margins];
  v81 = sub_188AECB54(*&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_margins + 64], [v3 _shouldReverseLayoutDirection]);
  [v3 safeAreaInsets];
  v86 = v82;
  v418 = v24;
  v416 = v79;
  if (*(v80 + 8))
  {
    if ((~v81 & 5) != 0)
    {
      v87 = v81 | 5;
    }

    else
    {
      v87 = v81;
    }

    v86 = UIEdgeInsetsSubtract(v87, v82, v83, v84, v85, v82);
  }

  [v3 _shouldReverseLayoutDirection];
  _UIEdgeInsetsFromDirectionalEdgeInsets();
  v92 = UIEdgeInsetsAdd(15, v88, v89, v90, v91, v86);
  [v3 _shouldReverseLayoutDirection];
  _UIEdgeInsetsFromDirectionalEdgeInsets();
  v97 = UIEdgeInsetsMax(10, v93, v94, v95, v96, v92);
  v99 = v98;
  v101 = v100;
  v102 = [v3 _shouldReverseLayoutDirection];
  if (v102)
  {
    v103 = v99;
  }

  else
  {
    v103 = v101;
  }

  if (v102)
  {
    v99 = v101;
  }

  [v3 bounds];
  v108 = UIRectInset(v104, v105, v106, v107, v97, v103, 10.0, v99);
  v391 = v109;
  v442 = v110;
  v367 = v111;
  v429 = v45;
  if (v15)
  {
    v112 = sub_188EBC854();
    if (v112 && (v113 = v112, sub_1890797B0(), v115 = v114, v113, (v115 & 1) != 0) || (v116 = sub_188AEAD00()) != 0 && (v117 = v116, sub_1890797B0(), v119 = v118, v117, (v119 & 1) != 0))
    {
      v108 = v108 - v334;
      v442 = v334 + v442;
      v441 = v441 - v334;
    }

    v120 = sub_188AEAF10();
    if (v120)
    {
      v121 = v120;
      sub_1890797B0();
      v123 = v122;

      if (v123)
      {
        v442 = v334 + v442;
        v439 = v439 - v334;
      }
    }
  }

  v411 = sub_188B4E848();
  v124 = [v3 traitCollection];
  v125 = [v124 horizontalSizeClass];

  v126 = [v3 traitCollection];
  v409 = [v126 userInterfaceIdiom];

  v127 = [v3 traitCollection];
  [v127 displayScale];
  v350 = v128;

  [v3 bounds];
  v414 = v129;
  v413 = v130;
  v412 = v131;
  v133 = v132;
  v134 = *v69 & (v69[42] | v69[43]);
  v410 = v125;
  if (v134)
  {
    v135 = *(v69 + 1);
    v136 = *(v69 + 2);
    v137 = *(v69 + 3);
    v138 = *(v69 + 4);
  }

  else
  {
    v135 = 0;
    v136 = 0;
    v137 = 0;
    v138 = 0;
  }

  v139 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_augmentedTitleViewHost;
  v140 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_augmentedTitleViewHost];
  v408 = v135;
  v407 = v136;
  v406 = v137;
  v405 = v138;
  if (v140)
  {
    v141 = *(v140 + OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_augmentedTitleView);
    if (v141)
    {
      v142 = v141;
      if ([v142 _preferredAlignment])
      {
        v143 = [v142 _preferredAlignment];

        if (v143 <= 3)
        {
          v403 = 0x2010001u >> (8 * v143);
          goto LABEL_124;
        }
      }

      else
      {
      }
    }
  }

  LOBYTE(v403) = 0;
LABEL_124:
  v402 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_resolvedContentSize];
  v144 = v134 ^ 1;
  v145 = 1;
  if ((*&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_toolbarStyle] - 1) > 1)
  {
    v146 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_visualProvider];
    v145 = v146 && ([v146 useLeadingAlignedLargeTitle:v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleContent + 72] toolbarStyle:?] & 1) != 0;
  }

  v432 = v145;
  v148 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleContent + 40];
  v147 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleContent + 48];
  v149 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleContent + 64];
  v404 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleContent + 56];
  v401 = sub_188EBE8E0();
  v398 = _UIBarsUseNewPadHeights();
  v400 = [v3 _shouldReverseLayoutDirection];
  v369 = v144 & 1;
  v478 = v144 & 1;
  v477 = 1;
  v483 = 1;
  v150 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButton];
  v151 = 0;
  if (v150 && ((v440 | v438) & 1) == 0)
  {
    v153 = swift_allocObject();
    *(v153 + 16) = v3;
    *(v153 + 24) = v150;
    v157 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_visualProvider];
    if (v157)
    {
      v158 = v150;
      v159 = v3;
      [v157 minimumBackButtonWidth];
    }

    else
    {
      v160 = v150;
      v161 = [v3 traitCollection];
      v162 = [v161 userInterfaceIdiom];

      if (v162 == 5)
      {
        v163 = _UISolariumEnabled();

        v156 = 34.0;
        if (v163)
        {
          v156 = 38.0;
        }
      }

      else
      {

        v156 = 44.0;
      }
    }

    v154 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__backButtonMaximumWidth];
    v152 = sub_188C5DE00;
    v155 = 2;
  }

  else
  {
    v152 = 0;
    v153 = 0;
    v154 = 0;
    v155 = 255;
    v156 = 0.0;
  }

  v395 = v155;
  v368 = v156;
  v164 = v71 & 1;
  v165 = *&v3[v139];
  v399 = v153;
  v397 = v154;
  if (v165)
  {
    v166 = *(v165 + OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_augmentedTitleView);
    if (v166)
    {
      [v166 _navigationBarBackButtonMaximumWidth];
      v151 = v167;
      v483 = 0;
    }
  }

  v332 = objc_opt_self();
  +[(UIView *)v332];
  v168 = 0;
  v169 = -1;
  v396 = v152;
  v319 = v164;
  if (((v351 | v440 | v438) & 1) != 0 || ((v348 ^ 1 | v164) & 1) == 0 || ((v347 ^ 1 | v164) & 1) == 0)
  {
    v318 = 0;
    v176 = 0;
    v390 = -1;
    v173 = 0;
LABEL_163:
    v174 = -1;
    goto LABEL_164;
  }

  v168 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineLargeTitleControl];
  if (!v168 || v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_renderInlineLargeTitle] != 1)
  {
    if (v3[v429] == 1)
    {
      sub_188B55154();
      v168 = *&v3[v72];
      if (v168)
      {
        v177 = *(*&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_transitionContainer] + OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_hostedViewContainer);
        v178 = v168;
        v179 = v177;
        sub_188FE3828(v178);

        v169 = 0;
      }
    }

    else
    {
      v168 = 0;
    }

    v180 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleIconView];
    if (v180)
    {
      v181 = *(*&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_transitionContainer] + OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_hostedViewContainer);
      v176 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleIconView];
      v182 = v180;
      v183 = v181;
      sub_188FE3828(v182);

      v184 = 0;
    }

    else
    {
      v176 = 0;
      v184 = -1;
    }

    v390 = v184;
    v185 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_subtitleView];
    if (v185)
    {
      v186 = *(*&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_transitionContainer] + OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_hostedViewContainer);
      v187 = v185;
      v188 = v186;
      v173 = v185;
      v189 = v188;
      sub_188FE3828(v187);

      v174 = 0;
      v318 = 0;
      goto LABEL_164;
    }

    v173 = 0;
    v318 = 0;
    goto LABEL_163;
  }

  v170 = *(*&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_transitionContainer] + OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_hostedViewContainer);
  v171 = v168;
  v172 = v170;
  sub_188FE3828(v171);

  v173 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineLargeSubtitleView];
  if (v173)
  {
    v174 = 0;
  }

  else
  {
    v174 = -1;
  }

  v175 = v173;
  v169 = 0;
  v176 = 0;
  v390 = -1;
  v432 = 1;
  v318 = 1;
LABEL_164:
  v389 = v174;
  v392 = v173;
  v393 = v176;
  v394 = v169;
  v190 = *&v3[v433];
  v388 = v190;
  if (v190)
  {
    v191 = v190;
    v192 = [v3 traitCollection];
    v193 = [v192 horizontalSizeClass];

    v194 = v193 == 1;
    [v191 horizontalTextInset];
    v196 = v195;
  }

  else
  {
    v196 = 0;
    v194 = 2;
  }

  v197 = swift_allocObject();
  *(v197 + 16) = 0;
  v198 = swift_allocObject();
  v199 = MEMORY[0x1E69E7CC0];
  v341 = v198;
  *(v198 + 16) = MEMORY[0x1E69E7CC0];
  v317 = (v198 + 16);
  v340 = swift_allocObject();
  *(v340 + 16) = 0;
  v339 = swift_allocObject();
  *(v339 + 16) = v199;
  v338 = swift_allocObject();
  *(v338 + 16) = 0;
  v337 = swift_allocObject();
  *(v337 + 16) = v199;
  v343 = swift_allocObject();
  *(v343 + 16) = 0;
  v342 = swift_allocObject();
  *(v342 + 16) = v199;
  if (*&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_staticLeadingGroupsMode] == 1)
  {
    v200 = sub_188EBC854();
    v201 = v200;
    if (!v200)
    {
      v202 = 0;
      v203 = 0;
      v204 = 0;
      v205 = 0;
      v206 = 0;
      v207 = 0;
      v208 = 0;
      goto LABEL_175;
    }

    if (!v440 && (v438 & 1) == 0)
    {
      sub_188B4D13C();

      sub_188B48DE8(v209, v496);
      v430 = v496[0];
      v355 = v496[1];
      v427 = v496[2];
      v205 = v496[3];
      v206 = v496[4];
      v210 = v496[5];

      v211 = swift_allocObject();
      v211[2] = v197;
      v211[3] = v341;
      v211[4] = v201;
      v201 = v211;
      v725 = 0u;
      v726 = 0u;
      v727 = 0u;
      v728 = 0u;

      sub_188A3F5FC(&v725, &unk_1EA936338, &unk_18A650570);
      v207 = v210;
      v204 = v427;
      v202 = v430;
      v203 = v355;
      v208 = sub_188EC2BF8;
      goto LABEL_175;
    }
  }

  v202 = 0;
  v203 = 0;
  v204 = 0;
  v205 = 0;
  v206 = 0;
  v207 = 0;
  v208 = 0;
  v201 = 0;
LABEL_175:
  v431 = v202;
  v428 = v204;
  v386 = v205;
  v385 = v206;
  v383 = v201;
  v384 = v207;
  v380 = v208;
  if (*&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_leadingGroupsMode] == 1)
  {
    v212 = sub_188AEAD00();
    if (v212)
    {
      v213 = v212;
      if (!v440 && (v438 & 1) == 0)
      {
        sub_188B4D13C();

        sub_188B48DE8(v293, v497);
        v422 = v497[0];
        v420 = v497[1];
        v216 = v497[2];
        v217 = v497[3];
        v426 = v497[4];
        v424 = v497[5];

        v221 = swift_allocObject();
        v221[2] = v340;
        v221[3] = v339;
        v221[4] = v213;
        v725 = 0u;
        v726 = 0u;
        v727 = 0u;
        v728 = 0u;

        sub_188A3F5FC(&v725, &unk_1EA936338, &unk_18A650570);
        v215 = v420;
        v214 = v422;
        v219 = v424;
        v218 = v426;
        v220 = sub_188B428D0;
        goto LABEL_181;
      }
    }
  }

  v214 = 0;
  v215 = 0;
  v216 = 0;
  v217 = 0;
  v218 = 0;
  v219 = 0;
  v220 = 0;
  v221 = 0;
LABEL_181:
  v419 = v215;
  v421 = v214;
  v379 = v220;
  v423 = v219;
  v425 = v218;
  v370 = v221;
  if (*&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_centerGroupsMode] == 1)
  {
    v222 = sub_188AEB244();
    if (v222)
    {
      v223 = v222;
      if (!v440 && v349 & 1 | ((v438 & 1) == 0))
      {
        sub_188B4D13C();

        sub_188B48DE8(v224, v498);
        v434 = v498[0];
        v377 = v498[2];
        v378 = v498[1];
        v375 = v498[4];
        v376 = v498[3];
        v374 = v498[5];

        v225 = swift_allocObject();
        v225[2] = v338;
        v225[3] = v337;
        v373 = v225;
        v225[4] = v223;
        v725 = 0u;
        v726 = 0u;
        v727 = 0u;
        v728 = 0u;

        sub_188A3F5FC(&v725, &unk_1EA936338, &unk_18A650570);
        v372 = sub_188EC2BF8;
        goto LABEL_188;
      }
    }
  }

  v434 = 0;
  v377 = 0;
  v378 = 0;
  v375 = 0;
  v376 = 0;
  v373 = 0;
  v374 = 0;
  v372 = 0;
LABEL_188:
  v226 = sub_188B4D020();
  if (v226)
  {
    v227 = sub_188B2A31C();
    if (v227 && (v228 = v227, v229 = [v227 image], v228, v221 = v370, v229))
    {
    }

    else
    {
      sub_188CDFBF0();
    }

    v236 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_overflowGroup];
    if (v236)
    {
      [v236 setHidden_];
    }

    if ((v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_trailingGroupsEnabled] & 1) == 0)
    {
      v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_trailingGroupsEnabled] = 1;
LABEL_202:
      sub_188B33CA4();
      [v3 setNeedsLayout];
    }
  }

  else
  {
    v230 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_trailingGroupsEnabled;
    if ((v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_trailingGroupsEnabled] & 1) == 0)
    {
      v231 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_staticTrailingItemGroups;
      swift_beginAccess();
      v232 = *&v3[v231];
      v233 = v232 >> 62 ? sub_18A4A7F68() : *((v232 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v234 = v233 > 0;
      v235 = v3[v230];
      v3[v230] = v234;
      if (v234 != v235)
      {
        goto LABEL_202;
      }
    }
  }

  v237 = sub_188AEAF10();
  v238 = v237;
  v345 = v149;
  v346 = v148;
  v344 = v151;
  v387 = v196;
  v381 = v217;
  v382 = v216;
  if (!v237)
  {
    v239 = 0;
    v240 = 0;
    v241 = 0;
    v242 = 0;
    v243 = 0;
    v244 = 0;
    goto LABEL_208;
  }

  if (v440 || (v438 & v349 & 1) != 0)
  {

    v237 = 0;
    v239 = 0;
    v240 = 0;
    v241 = 0;
    v242 = 0;
    v243 = 0;
    v244 = 0;
    v238 = 0;
LABEL_208:
    v245 = v350;
    v246 = v367;
    goto LABEL_209;
  }

  if (v226)
  {
    sub_188B4D13C();

    sub_188B48DE8(v292, v499);
  }

  else
  {
    v294 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_overflowGroup];
    if (v294)
    {
      [v294 _setCalculationVisibility_];
    }

    sub_188B4CE64(v499);
  }

  v364 = v499[4];
  v366 = v499[5];
  v358 = v499[3];
  v360 = v499[2];
  v362 = v499[1];
  v295 = v499[0];
  v296 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_overflowGroup];
  if (v296)
  {
    [v296 _setCalculationVisibility_];
  }

  v297 = swift_allocObject();
  v297[2] = v343;
  v297[3] = v342;
  v297[4] = v238;
  v238 = v297;
  v725 = 0u;
  v726 = 0u;
  v727 = 0u;
  v728 = 0u;

  sub_188A3F5FC(&v725, &unk_1EA936338, &unk_18A650570);
  v237 = v295;
  v244 = sub_188EC2BF8;
  v245 = v350;
  v246 = v367;
  v221 = v370;
  v242 = v364;
  v243 = v366;
  v240 = v360;
  v239 = v362;
  v241 = v358;
LABEL_209:
  *v769 = *v482;
  *v805 = *v481;
  *v809 = *v480;
  *v813 = *v479;
  v743 = v489;
  v744 = v490;
  *v747 = *v488;
  *&v747[3] = *&v488[3];
  *v753 = *v487;
  *&v753[3] = *&v487[3];
  v754 = 0x4024000000000000;
  *&v756[3] = *&v486[3];
  *v756 = *v486;
  v761 = v485;
  v760 = v484;
  v768 = v483;
  *&v769[3] = *&v482[3];
  *&v805[3] = *&v481[3];
  *&v809[3] = *&v480[3];
  *&v813[3] = *&v479[3];
  v814 = 0x4052C00000000000;
  v746 = v432;
  v752 = v401;
  v755 = v398;
  v758 = v400;
  v759 = v415;
  v804 = v394;
  v808 = v390;
  v812 = v389;
  v819 = 0;
  *&v725 = v411;
  *(&v725 + 1) = v410;
  *&v726 = v409;
  v247 = v245;
  *(&v726 + 1) = v245;
  *&v727 = v414;
  *(&v727 + 1) = v413;
  *&v728 = v412;
  *(&v728 + 1) = v133;
  v729 = v108;
  v730 = v391;
  v731 = v442;
  v248 = v246;
  v732 = v246;
  v733 = v441;
  v734 = v417;
  v735 = v439;
  v736 = v416;
  v737 = v408;
  v738 = v407;
  v739 = v406;
  v740 = v405;
  v741 = v369;
  v742 = v403;
  v745 = v402;
  v748 = v148;
  v749 = v147;
  v750 = v404;
  v751 = v149;
  v757 = v418;
  v762 = v396;
  v763 = v399;
  v764 = v395;
  v765 = v368;
  v766 = v397;
  v767 = v151;
  v770 = v431;
  v356 = v203;
  v771 = v203;
  v772 = v428;
  v773 = v386;
  v774 = v385;
  v775 = v384;
  v776 = v380;
  v777 = v383;
  v778 = v421;
  v779 = v419;
  v780 = v216;
  v781 = v217;
  v782 = v425;
  v783 = v423;
  v784 = v379;
  v785 = v221;
  v786 = v434;
  v787 = v378;
  v788 = v377;
  v789 = v376;
  v790 = v375;
  v791 = v374;
  v792 = v372;
  v793 = v373;
  v353 = v238;
  v354 = v237;
  v794 = v237;
  v359 = v240;
  v361 = v239;
  v795 = v239;
  v796 = v240;
  v357 = v241;
  v797 = v241;
  v363 = v242;
  v365 = v243;
  v798 = v242;
  v799 = v243;
  v352 = v244;
  v800 = v244;
  v801 = v238;
  v802 = v168;
  v803 = 0;
  v806 = v393;
  v807 = 0;
  v810 = v392;
  v811 = 0;
  v815 = v194;
  v816 = v387;
  v817 = v388;
  v818 = 0;
  sub_188B482B4(&v500, v246);
  v371 = v501;
  v249 = v507[16];
  v250 = sub_188AEAF10();
  v333 = v147;
  v331 = v168;
  v330 = v108;
  if (!v250)
  {
LABEL_214:
    v476 = v500;
    v474 = v506;
    v475[0] = *v507;
    *(v475 + 15) = *&v507[15];
    v470 = v502;
    v471 = v503;
    v473 = v505;
    v472 = v504;
    v253 = v370;
    goto LABEL_215;
  }

  v251 = v250;
  if (v226 || v440 || (v252 = v434, (v438 & v349 & 1) != 0))
  {

    goto LABEL_214;
  }

  if (v249 == 2)
  {
    v257 = v415;
    if (v336)
    {
      v316 = v133;
      v255 = v411;
      v256 = v439;

      v476 = v500;
      v474 = v506;
      v475[0] = *v507;
      *(v475 + 15) = *&v507[15];
      v470 = v502;
      v471 = v503;
      v473 = v505;
      v472 = v504;
      v519 = v500;
      v520 = v371;
      v523 = v504;
      v522 = v503;
      v521 = v502;
      *&v526[15] = *&v507[15];
      *v526 = *v507;
      v525 = v506;
      v524 = v505;
      goto LABEL_217;
    }

    v302 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_overflowGroup];
    if (v302)
    {
      v303 = v302;
      [v303 setHidden_];
    }

    v476 = v500;
    v474 = v506;
    v475[0] = *v507;
    *(v475 + 15) = *&v507[15];
    v470 = v502;
    v471 = v503;
    v473 = v505;
    v472 = v504;
    v519 = v500;
    v524 = v505;
    v525 = v506;
    *v526 = v475[0];
    v521 = v502;
    v254 = v371;
    v520 = v371;
    *&v526[15] = *&v507[15];
    v522 = v503;
    v523 = v504;
    v304 = v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_overflowContainsOverflowedButtons];
    v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_overflowContainsOverflowedButtons] = 0;
    v276 = v369;
    v253 = v370;
    if (v304)
    {
      goto LABEL_221;
    }

    goto LABEL_222;
  }

  v298 = sub_188B2A31C();
  if (v336)
  {
    v253 = v370;
    if (v298 && (v299 = v298, v300 = [v298 image], v299, v252 = v434, v300))
    {
    }

    else
    {
      sub_188CDFBF0();
    }

    v307 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_overflowGroup];
    if (v307)
    {
      [v307 _setCalculationVisibility_];
    }
  }

  else
  {
    v253 = v370;
    if (v298 && (v305 = v298, v306 = [v298 image], v305, v252 = v434, v306))
    {
    }

    else
    {
      sub_188CDFBF0();
    }

    v308 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_overflowGroup];
    if (v308)
    {
      [v308 setHidden_];
    }
  }

  if (v363)
  {
    sub_188B4D13C();

    sub_188B48DE8(v309, v508);
    v252 = v434;

    v310 = v508[0];
    v311 = v508[1];
    v312 = v508[2];
    v313 = v508[3];
    v314 = v508[4];
    v315 = v508[5];
  }

  else
  {
    v314 = 0;
    v315 = v365;
    v312 = v359;
    v311 = v361;
    v313 = v357;
    v310 = v354;
  }

  *v674 = *v482;
  *v710 = *v481;
  *v714 = *v480;
  *v718 = *v479;
  v648 = v489;
  v649 = v490;
  *v652 = *v488;
  *&v652[3] = *&v488[3];
  *v658 = *v487;
  *&v658[3] = *&v487[3];
  v659 = 0x4024000000000000;
  *&v661[3] = *&v486[3];
  *v661 = *v486;
  v666 = v485;
  v665 = v484;
  v673 = v483;
  *&v674[3] = *&v482[3];
  *&v710[3] = *&v481[3];
  *&v714[3] = *&v480[3];
  *&v718[3] = *&v479[3];
  v719 = 0x4052C00000000000;
  v651 = v432;
  v657 = v401;
  v660 = v398;
  v663 = v400;
  v664 = v415;
  v709 = v394;
  v713 = v390;
  v717 = v389;
  v724 = 0;
  v626 = v411;
  v627 = v410;
  v628 = v409;
  v629 = v247;
  v630 = v414;
  v631 = v413;
  v632 = v412;
  v633 = v133;
  v634 = v108;
  v635 = v391;
  v636 = v442;
  v637 = v248;
  v638 = v441;
  v639 = v417;
  v640 = v439;
  v641 = v416;
  v642 = v408;
  v643 = v407;
  v644 = v406;
  v645 = v405;
  v646 = v369;
  v647 = v403;
  v650 = v402;
  v653 = v148;
  v654 = v147;
  v655 = v404;
  v656 = v149;
  v662 = v418;
  v667 = v396;
  v668 = v399;
  v669 = v395;
  v670 = v368;
  v671 = v397;
  v672 = v151;
  v675 = v431;
  v676 = v356;
  v677 = v428;
  v678 = v386;
  v679 = v385;
  v680 = v384;
  v681 = v380;
  v682 = v383;
  v683 = v421;
  v684 = v419;
  v685 = v216;
  v686 = v217;
  v687 = v425;
  v688 = v423;
  v689 = v379;
  v690 = v253;
  v691 = v252;
  v692 = v378;
  v693 = v377;
  v694 = v376;
  v695 = v375;
  v696 = v374;
  v697 = v372;
  v698 = v373;
  v354 = v310;
  v699 = v310;
  v359 = v312;
  v361 = v311;
  v700 = v311;
  v701 = v312;
  v357 = v313;
  v702 = v313;
  v363 = v314;
  v365 = v315;
  v703 = v314;
  v704 = v315;
  v705 = v352;
  v706 = v353;
  v707 = v168;
  v708 = 0;
  v711 = v393;
  v712 = 0;
  v715 = v392;
  v716 = 0;
  v720 = v194;
  v721 = v387;
  v722 = v388;
  v723 = 0;
  sub_188B482B4(&v509, v301);
  v476 = v509;
  v371 = v510;
  v474 = v515;
  v475[0] = *v516;
  *(v475 + 15) = *&v516[15];
  v470 = v511;
  v471 = v512;
  v473 = v514;
  v472 = v513;

  LOBYTE(v249) = v516[16];
LABEL_215:
  v519 = v476;
  v524 = v473;
  v525 = v474;
  *v526 = v475[0];
  v521 = v470;
  v522 = v471;
  v254 = v371;
  v520 = v371;
  *&v526[15] = *(v475 + 15);
  v523 = v472;
  if ((v336 & 1) == 0)
  {
    v274 = v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_overflowContainsOverflowedButtons];
    v275 = v249 & 1;
    v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_overflowContainsOverflowedButtons] = v249 & 1;
    v257 = v415;
    v276 = v369;
    if (v275 != v274)
    {
LABEL_221:
      sub_188CDFBF0();
    }

LABEL_222:
    v371 = v254;
    v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_isTitleHidden] = v254 == 0.0;
    *v575 = *v482;
    *v611 = *v481;
    *v615 = *v480;
    *v619 = *v479;
    v547 = v276;
    v548 = v403;
    v549 = v489;
    v550 = v490;
    *v553 = *v488;
    *&v553[3] = *&v488[3];
    *v559 = *v487;
    *&v559[3] = *&v487[3];
    v560 = 0x4024000000000000;
    *&v562[3] = *&v486[3];
    *v562 = *v486;
    v567 = v485;
    v566 = v484;
    v574 = v483;
    *&v575[3] = *&v482[3];
    *&v611[3] = *&v481[3];
    *&v615[3] = *&v480[3];
    *&v619[3] = *&v479[3];
    v620 = 0x4052C00000000000;
    v552 = v432;
    v558 = v401;
    v561 = v398;
    v564 = v400;
    v565 = v257;
    v610 = v394;
    v614 = v390;
    v618 = v389;
    v625 = 0;
    v527 = v411;
    v528 = v410;
    v529 = v409;
    v530 = v247;
    v531 = v414;
    v532 = v413;
    v533 = v412;
    v534 = v133;
    v535 = v108;
    v536 = v391;
    v537 = v442;
    v538 = v248;
    v539 = v441;
    v540 = v417;
    v541 = v439;
    v542 = v416;
    v543 = v408;
    v544 = v407;
    v545 = v406;
    v546 = v405;
    v551 = v402;
    v266 = v149;
    v265 = v346;
    v554 = v346;
    v267 = v333;
    v555 = v333;
    v556 = v404;
    v557 = v345;
    v563 = v418;
    v568 = v396;
    v569 = v399;
    v570 = v395;
    v270 = v368;
    v571 = v368;
    v572 = v397;
    v268 = v151;
    v573 = v151;
    v576 = v431;
    v577 = v356;
    v578 = v428;
    v579 = v386;
    v580 = v385;
    v581 = v384;
    v582 = v380;
    v583 = v383;
    v584 = v421;
    v585 = v419;
    v586 = v216;
    v587 = v217;
    v588 = v425;
    v589 = v423;
    v590 = v379;
    v591 = v253;
    v592 = v434;
    v593 = v378;
    v594 = v377;
    v595 = v376;
    v596 = v375;
    v597 = v374;
    v598 = v372;
    v599 = v373;
    v600 = v354;
    v601 = v361;
    v602 = v359;
    v603 = v357;
    v604 = v363;
    v605 = v365;
    v606 = v352;
    v607 = v353;
    v608 = v168;
    v609 = 0;
    v612 = v393;
    v613 = 0;
    v616 = v392;
    v617 = 0;
    v621 = v194;
    v622 = v387;
    v623 = v388;
    v624 = 0;
    sub_188B3FEB0(&v519, v517);
    v277 = *(*&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_transitionContainer] + OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_hostedViewContainer);
    sub_188FE3588();

    +[(UIView *)v332];
    v278 = &v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_leadingBarFrame];
    v279 = v517[5];
    *v278 = v517[4];
    *(v278 + 1) = v279;
    v278[32] = 0;
    v280 = &v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_centerBarFrame];
    v281 = v517[7];
    *v280 = v517[6];
    *(v280 + 1) = v281;
    v280[32] = 0;
    v282 = &v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_trailingBarFrame];
    v283 = v517[9];
    *v282 = v517[8];
    *(v282 + 1) = v283;
    v282[32] = 0;
    swift_beginAccess();
    v284 = *v317;
    swift_beginAccess();
    v285 = *(v339 + 16);
    swift_beginAccess();
    v286 = *(v337 + 16);
    swift_beginAccess();
    v269 = v276;
    v287 = *(v342 + 16);
    memcpy(__dst, v517, 0x140uLL);
    LOBYTE(__dst[40]) = v440;
    BYTE1(__dst[40]) = v438 & 1;
    BYTE2(__dst[40]) = v349 & 1;
    *(&__dst[40] + 3) = *v493;
    *(&__dst[42] + 3) = *&v493[16];
    *(&__dst[44] + 2) = *&v493[31];
    BYTE2(__dst[46]) = v348;
    BYTE3(__dst[46]) = v347;
    BYTE4(__dst[46]) = v351;
    BYTE5(__dst[46]) = v319;
    BYTE6(__dst[46]) = v318;
    __dst[47] = v284;
    __dst[48] = v285;
    __dst[49] = v286;
    __dst[50] = v287;
    __dst[51] = 0;
    *&__dst[52] = v328;
    LOBYTE(__dst[53]) = v327;
    *(&__dst[53] + 1) = *v495;
    HIDWORD(__dst[53]) = *&v495[3];
    __dst[54] = v326;
    *&__dst[55] = v322;
    *&__dst[56] = v324;
    *&__dst[57] = v435;
    *&__dst[58] = v418;
    v264 = v411;
    *&__dst[59] = v437;
    *&__dst[60] = v325;
    *&__dst[61] = v436;
    *&__dst[62] = v320;
    LOBYTE(__dst[63]) = v321;
    v259 = v403;
    *(&__dst[63] + 1) = *v494;
    HIDWORD(__dst[63]) = *&v494[3];
    *&__dst[64] = v334;
    LOBYTE(__dst[65]) = v323;
    BYTE1(__dst[65]) = v321;
    memcpy(v518, __dst, 0x20AuLL);
    memcpy(__src, __dst, sizeof(__src));
    signpost_c2_entryLock_start();
    memcpy(v443, &v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_lastLayoutResult], 0x20AuLL);
    v257 = v415;
    memcpy(&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_lastLayoutResult], __src, 0x20AuLL);

    v261 = v401;
    v260 = v402;

    v262 = v398;

    sub_188B43304(__dst, v467);
    sub_188A3F5FC(v443, &unk_1EA9362C0, &unk_18A665520);
    v272 = v390;
    sub_188B3CBC4(v518, v329 & 1);
    v273 = v389;
    sub_188B4AB88(__dst);

    v271 = v394;

    goto LABEL_223;
  }

  v316 = v133;
  v255 = v411;
  v256 = v439;
  v257 = v415;
LABEL_217:
  v258 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_overflowGroup];
  v259 = v403;
  v260 = v402;
  v261 = v401;
  v262 = v398;
  if (v258)
  {
    [v258 _setCalculationVisibility_];
  }

  v263 = *(*&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_transitionContainer] + OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_hostedViewContainer);
  sub_188FE3588();

  +[(UIView *)v332];

  v439 = v256;
  v264 = v255;
  v247 = v350;
  v133 = v316;
  v266 = v345;
  v265 = v346;
  v267 = v333;
  v268 = v344;
  v269 = v369;
  v270 = v368;
  v271 = v394;
  v272 = v390;
  v273 = v389;
LABEL_223:

  *&v443[8] = v410;
  *&v443[16] = v409;
  *&v443[128] = v408;
  *&v443[136] = v407;
  *&v443[144] = v406;
  *&v443[152] = v405;
  v443[160] = v269;
  v443[161] = v259;
  *&v443[168] = v260;
  v443[176] = v432;
  v443[216] = v261;
  v443[232] = v262;
  v443[248] = v400;
  v443[249] = v257;
  *&v443[256] = v396;
  *&v443[264] = v399;
  *&v443[272] = v395;
  *&v443[288] = v397;
  *&v443[312] = v431;
  *&v443[320] = v356;
  *&v443[328] = v428;
  *&v443[336] = v386;
  *&v443[344] = v385;
  *&v443[352] = v384;
  *&v443[360] = v380;
  *&v443[368] = v383;
  *&v443[376] = v421;
  *&v443[384] = v419;
  *&v443[162] = v489;
  *&v443[177] = *v488;
  *&v443[217] = *v487;
  *&v443[236] = *&v486[3];
  *&v443[233] = *v486;
  *&v443[250] = v484;
  *&v443[305] = *v482;
  *&v443[166] = v490;
  *&v443[180] = *&v488[3];
  *&v443[220] = *&v487[3];
  *&v443[224] = 0x4024000000000000;
  *&v443[254] = v485;
  v443[304] = v483;
  *&v443[308] = *&v482[3];
  *v443 = v264;
  *&v443[24] = v247;
  *&v443[32] = v414;
  *&v443[40] = v413;
  *&v443[48] = v412;
  *&v443[56] = v133;
  *&v443[64] = v330;
  *&v443[72] = v391;
  *&v443[80] = v442;
  *&v443[88] = v367;
  *&v443[96] = v441;
  *&v443[104] = v417;
  *&v443[112] = v439;
  *&v443[120] = v416;
  *&v443[184] = v265;
  *&v443[192] = v267;
  *&v443[200] = v404;
  *&v443[208] = v266;
  *&v443[240] = v418;
  *&v443[280] = v270;
  *&v443[296] = v268;
  *&v443[392] = v382;
  *&v443[400] = v381;
  *&v443[408] = v425;
  *&v443[416] = v423;
  *&v443[424] = v379;
  *&v443[432] = v370;
  *&v443[440] = v434;
  *&v443[448] = v378;
  *&v443[456] = v377;
  *&v443[464] = v376;
  *&v443[472] = v375;
  *&v443[480] = v374;
  *&v443[488] = v372;
  *&v443[496] = v373;
  *&v443[504] = v354;
  *&v443[512] = v361;
  *&v443[520] = v359;
  v444 = v357;
  v445 = v363;
  v446 = v365;
  v447 = v352;
  v448 = v353;
  v449 = v331;
  v450 = 0;
  v451 = v271;
  *v452 = *v481;
  *&v452[3] = *&v481[3];
  v453 = v393;
  v454 = 0;
  v455 = v272;
  *v456 = *v480;
  *&v456[3] = *&v480[3];
  v457 = v392;
  v458 = 0;
  v459 = v273;
  *v460 = *v479;
  *&v460[3] = *&v479[3];
  v461 = 0x4052C00000000000;
  v462 = v194;
  v463 = v387;
  v464 = v388;
  v465 = 0;
  v466 = 0;
  sub_188B49BF0(v443);
  *v335 = v476;
  *(v335 + 16) = v371;
  v288 = v472;
  *(v335 + 72) = v473;
  v289 = v475[0];
  *(v335 + 88) = v474;
  *(v335 + 104) = v289;
  result = *&v470;
  v291 = v471;
  *(v335 + 24) = v470;
  *(v335 + 119) = *(v475 + 15);
  *(v335 + 40) = v291;
  *(v335 + 56) = v288;
  return result;
}