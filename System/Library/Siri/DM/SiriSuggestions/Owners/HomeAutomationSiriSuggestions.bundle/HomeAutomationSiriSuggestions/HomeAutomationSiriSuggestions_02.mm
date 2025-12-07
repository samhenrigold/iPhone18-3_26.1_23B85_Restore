void *sub_312F8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, void (*a7)(void *, int64_t, void *))
{
  v9 = result;
  if ((a3 & 1) == 0)
  {
    v11 = a2;
    goto LABEL_8;
  }

  v10 = a4[3];
  v11 = v10 >> 1;
  if ((v10 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v11 + 0x4000000000000000 >= 0)
  {
    v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
    if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v11 = a2;
    }

LABEL_8:
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
      sub_1DC4(a5, a6);
      v14 = swift_allocObject();
      v15 = j__malloc_size(v14);
      v14[2] = v12;
      v14[3] = 2 * ((v15 - 32) / 8);
      if (v9)
      {
LABEL_13:
        a7(a4 + 4, v12, v14 + 4);
        a4[2] = 0;
LABEL_16:

        return v14;
      }
    }

    else
    {
      v14 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy(v14 + 4, a4 + 4, 8 * v12);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_313F8(char *result, int64_t a2, char a3, uint64_t a4)
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
      sub_1DC4(&qword_56570, &qword_38E40);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_19700((a4 + 32), v8, v10 + 32);
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

    sub_1DC4(&qword_56578, &qword_38E48);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_31510(char *result, int64_t a2, char a3, uint64_t a4)
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
      sub_1DC4(&qword_55768, &qword_38040);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_196E0((a4 + 32), v8, v10 + 32);
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

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_31610(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *(&dword_18 + (v4 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_369D0();
LABEL_9:
  result = sub_36940();
  *v2 = result;
  return result;
}

void *sub_316B0(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > v5[3] >> 1)
  {
    if (v5[2] <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = v5[2];
    }

    result = sub_312F8(result, v7, a2 & 1, v5, &qword_55788, &qword_38E30, sub_1A854);
    *v2 = result;
  }

  return result;
}

void sub_31754(uint64_t isUniquelyReferenced_nonNull_native, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *v8;
  v11 = *(*v8 + 16);
  v12 = v11 - 2;
  if (v11 >= 2)
  {
    v13 = 0;
    while (1)
    {
      sub_33238(isUniquelyReferenced_nonNull_native, a2, a3, a4, a5, a6, a7, a8, v25, v26);
      sub_3333C();
      v15 = (v14 * v11) >> 64;
      if (v11 > v16)
      {
        sub_33314();
        if (!v18 & v17)
        {
          do
          {
            sub_33238(isUniquelyReferenced_nonNull_native, a2, a3, a4, a5, a6, a7, a8, v25, v26);
            sub_3333C();
          }

          while (v9 > v20);
          v15 = (v19 * v11) >> 64;
        }
      }

      v9 = v13 + v15;
      if (__OFADD__(v13, v15))
      {
        break;
      }

      if (v13 != v9)
      {
        v21 = *(v10 + 16);
        if (v13 >= v21)
        {
          goto LABEL_21;
        }

        if (v9 >= v21)
        {
          goto LABEL_22;
        }

        v22 = *(v10 + 32 + 8 * v13);
        v23 = *(v10 + 32 + 8 * v9);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_3307C(v10);
          v10 = isUniquelyReferenced_nonNull_native;
        }

        v24 = *(v10 + 16);
        if (v13 >= v24)
        {
          goto LABEL_23;
        }

        *(v10 + 32 + 8 * v13) = v23;
        if (v9 >= v24)
        {
          goto LABEL_24;
        }

        *(v10 + 32 + 8 * v9) = v22;
        *v8 = v10;
      }

      --v11;
      v18 = v13++ == v12;
      if (v18)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

void sub_31868(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *v8;
  v11 = *(*v8 + 16);
  v12 = v11 - 2;
  if (v11 >= 2)
  {
    v13 = 0;
    while (1)
    {
      sub_33238(result, a2, a3, a4, a5, a6, a7, a8, v25, v26);
      sub_3333C();
      v15 = (v14 * v11) >> 64;
      if (v11 > v16)
      {
        sub_33314();
        if (!v18 & v17)
        {
          do
          {
            sub_33238(result, a2, a3, a4, a5, a6, a7, a8, v25, v26);
            sub_3333C();
          }

          while (v9 > v20);
          v15 = (v19 * v11) >> 64;
        }
      }

      v9 = v13 + v15;
      if (__OFADD__(v13, v15))
      {
        break;
      }

      if (v13 != v9)
      {
        v21 = *(v10 + 16);
        if (v13 >= v21)
        {
          goto LABEL_21;
        }

        if (v9 >= v21)
        {
          goto LABEL_22;
        }

        v22 = *(v10 + 32 + 2 * v13);
        v23 = *(v10 + 32 + 2 * v9);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          sub_33090(v10);
          v10 = result;
        }

        v24 = *(v10 + 16);
        if (v13 >= v24)
        {
          goto LABEL_23;
        }

        *(v10 + 32 + 2 * v13) = v23;
        if (v9 >= v24)
        {
          goto LABEL_24;
        }

        *(v10 + 32 + 2 * v9) = v22;
        *v8 = v10;
      }

      --v11;
      v18 = v13++ == v12;
      if (v18)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

uint64_t sub_3197C(uint64_t result, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *v8;
  v10 = *(*v8 + 16);
  v11 = v10 - 2;
  if (v10 >= 2)
  {
    v13 = 0;
    while (1)
    {
      result = sub_33238(result, a2, a3, a4, a5, a6, a7, a8, v22, v23);
      v14 = (v23 * v10) >> 64;
      if (v10 > v23 * v10)
      {
        v15 = -v10 % v10;
        if (v15 > v23 * v10)
        {
          do
          {
            result = sub_33238(result, a2, a3, a4, a5, a6, a7, a8, v22, v23);
          }

          while (v15 > v23 * v10);
          v14 = (v23 * v10) >> 64;
        }
      }

      v16 = v13 + v14;
      if (__OFADD__(v13, v14))
      {
        break;
      }

      if (v13 != v16)
      {
        v17 = *(v9 + 16);
        if (v13 >= v17)
        {
          goto LABEL_20;
        }

        if (v16 >= v17)
        {
          goto LABEL_21;
        }

        v18 = *(v9 + 32 + 8 * v13);
        v19 = *(v9 + 32 + 8 * v16);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = a2(v9);
          v9 = result;
        }

        v20 = *(v9 + 16);
        if (v13 >= v20)
        {
          goto LABEL_22;
        }

        *(v9 + 32 + 8 * v13) = v19;
        if (v16 >= v20)
        {
          goto LABEL_23;
        }

        *(v9 + 32 + 8 * v16) = v18;
        *v8 = v9;
      }

      --v10;
      if (v13++ == v11)
      {
        return result;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_31AB4(uint64_t result, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(*v8 + 16);
  v10 = v9 - 2;
  if (v9 >= 2)
  {
    v12 = 0;
    while (1)
    {
      result = sub_33238(result, a2, a3, a4, a5, a6, a7, a8, v22, v23);
      v13 = (v23 * v9) >> 64;
      if (v9 > v23 * v9)
      {
        v14 = -v9 % v9;
        if (v14 > v23 * v9)
        {
          do
          {
            result = sub_33238(result, a2, a3, a4, a5, a6, a7, a8, v22, v23);
          }

          while (v14 > v23 * v9);
          v13 = (v23 * v9) >> 64;
        }
      }

      v15 = v12 + v13;
      if (__OFADD__(v12, v13))
      {
        break;
      }

      if (v12 != v15)
      {
        v16 = *v8;
        v17 = *(*v8 + 16);
        if (v12 >= v17)
        {
          goto LABEL_22;
        }

        if (v15 >= v17)
        {
          goto LABEL_23;
        }

        v18 = *(v16 + 32 + 8 * v12);
        v19 = *(v16 + 32 + 8 * v15);

        result = swift_isUniquelyReferenced_nonNull_native();
        *v8 = v16;
        if ((result & 1) == 0)
        {
          result = a2(v16);
          v16 = result;
          *v8 = result;
        }

        if (v12 >= *(v16 + 16))
        {
          goto LABEL_24;
        }

        *(v16 + 8 * v12 + 32) = v19;

        sub_36970();
        v20 = *v8;
        result = swift_isUniquelyReferenced_nonNull_native();
        *v8 = v20;
        if ((result & 1) == 0)
        {
          result = a2(v20);
          v20 = result;
          *v8 = result;
        }

        if (v15 >= *(v20 + 16))
        {
          goto LABEL_25;
        }

        *(v20 + 8 * v15 + 32) = v18;

        result = sub_36970();
      }

      --v9;
      if (v12++ == v10)
      {
        return result;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

unint64_t sub_31C4C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_197AC(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v9;
  v15 = v10;
  sub_1DC4(&qword_56560, &unk_38E20);
  if (!sub_369B0(a3 & 1, v13))
  {
    goto LABEL_5;
  }

  v16 = sub_197AC(a2);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_13:
    result = sub_36A50();
    __break(1u);
    return result;
  }

  v14 = v16;
LABEL_5:
  v18 = *v4;
  if (v15)
  {
    *(v18[7] + 8 * v14) = a1;
  }

  else
  {

    return sub_31D70(v14, a2, a1, v18);
  }
}

unint64_t sub_31D70(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
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

uint64_t sub_31DB4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_38D60;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

BOOL sub_31E18(unint64_t *a1, unint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  sub_36A60();
  v7 = sub_36380();
  sub_36A70(v7);
  v8 = sub_36A80();
  v9 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v6 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v3;
      sub_32758(a2, v10, isUniquelyReferenced_nonNull_native);
      *v3 = v15;
      goto LABEL_7;
    }

    v12 = sub_36380();
    if (v12 == sub_36380())
    {
      break;
    }

    v8 = v10 + 1;
  }

  a2 = *(*(v6 + 48) + 8 * v10);
LABEL_7:
  result = v11 == 0;
  *a1 = a2;
  return result;
}

uint64_t sub_31F30(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1DC4(&qword_56568, &qword_38E38);
  result = sub_368F0();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      sub_31DB4(0, (v26 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    sub_36A60();
    v17 = sub_36380();
    sub_36A70(v17);
    result = sub_36A80();
    v18 = -1 << *(v5 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v5 + 48) + 8 * v21) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v12 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

void *sub_32180(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_32210(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

Swift::Int sub_32210(Swift::Int result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v39 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v42 = 0;
    v21 = 0;
    v22 = 1 << *(a3 + 32);
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 & *(a3 + 56);
    v25 = (v22 + 63) >> 6;
    v26 = a4 + 56;
LABEL_24:
    while (v24)
    {
      v27 = __clz(__rbit64(v24));
      v41 = (v24 - 1) & v24;
LABEL_31:
      v38 = v27 | (v21 << 6);
      sub_36A60();
      v30 = sub_36380();
      sub_36A70(v30);
      result = sub_36A80();
      v31 = ~(-1 << *(v4 + 32));
      do
      {
        v32 = result & v31;
        if (((*(v26 + (((result & v31) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v31)) & 1) == 0)
        {
          v4 = a4;
          v24 = v41;
          goto LABEL_24;
        }

        v33 = sub_36380();
        v34 = sub_36380();
        result = v32 + 1;
      }

      while (v33 != v34);
      *(v39 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
      v24 = v41;
      v20 = __OFADD__(v42++, 1);
      v4 = a4;
      if (v20)
      {
        goto LABEL_42;
      }
    }

    v28 = v21;
    while (1)
    {
      v21 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v21 >= v25)
      {
LABEL_38:

        return sub_32554(v39, a2, v42, a3);
      }

      v29 = *(a3 + 56 + 8 * v21);
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v41 = (v29 - 1) & v29;
        goto LABEL_31;
      }
    }
  }

  else
  {
    v42 = 0;
    v6 = 0;
    v35 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v37 = v10;
LABEL_6:
    while (v9)
    {
      v40 = (v9 - 1) & v9;
LABEL_13:
      sub_36A60();
      v13 = sub_36380();
      sub_36A70(v13);
      result = sub_36A80();
      v14 = ~(-1 << *(a3 + 32));
      do
      {
        v15 = result & v14;
        v16 = (result & v14) >> 6;
        v17 = 1 << (result & v14);
        if ((v17 & *(a3 + 56 + 8 * v16)) == 0)
        {
          v10 = v37;
          v9 = v40;
          goto LABEL_6;
        }

        v18 = sub_36380();
        v19 = sub_36380();
        result = v15 + 1;
      }

      while (v18 != v19);
      v10 = v37;
      v39[v16] |= v17;
      v9 = v40;
      v20 = __OFADD__(v42++, 1);
      if (v20)
      {
        goto LABEL_41;
      }
    }

    v11 = v6;
    while (1)
    {
      v6 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_38;
      }

      v12 = *(v35 + 8 * v6);
      ++v11;
      if (v12)
      {
        v40 = (v12 - 1) & v12;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_32554(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1DC4(&qword_56568, &qword_38E38);
  result = sub_36900();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    sub_36A60();
    v17 = sub_36380();
    sub_36A70(v17);
    result = sub_36A80();
    v18 = -1 << v9[32];
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 6) + 8 * v21) = v16;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_32758(unint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_31F30(v7 + 1);
      goto LABEL_10;
    }

    if (v8 <= v7)
    {
      sub_329EC(v7 + 1);
LABEL_10:
      v13 = *v3;
      sub_36A60();
      v14 = sub_36380();
      sub_36A70(v14);
      result = sub_36A80();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = result & v15;
        if (((*(v13 + 56 + (((result & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v15)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v16 = sub_36380();
        if (v16 == sub_36380())
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_328AC();
  }

LABEL_7:
  v9 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v9 + 48) + 8 * a2) = v6;
  v10 = *(v9 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
LABEL_15:
    result = sub_36A40();
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v12;
  }

  return result;
}

void *sub_328AC()
{
  v1 = v0;
  sub_1DC4(&qword_56568, &qword_38E38);
  v2 = *v0;
  v3 = sub_368E0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_329EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1DC4(&qword_56568, &qword_38E38);
  result = sub_368F0();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        sub_36A60();
        v16 = sub_36380();
        sub_36A70(v16);
        result = sub_36A80();
        v17 = -1 << *(v5 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v5 + 48) + 8 * v20) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v11 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
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
    *v2 = v5;
  }

  return result;
}

uint64_t sub_32C0C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_369D0();
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
    result = sub_3E5C(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_36250();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_331CC(&qword_56588, &qword_56580, &unk_38E50);
        for (i = 0; i != v7; ++i)
        {
          sub_1DC4(&qword_56580, &unk_38E50);
          v9 = sub_1A344(v12, i, a3);
          v11 = *v10;

          (v9)(v12, 0);
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

uint64_t sub_32D80(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_369D0();
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
    result = sub_3E5C(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_36690();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_331CC(&qword_56530, &qword_56528, &unk_38E00);
        for (i = 0; i != v7; ++i)
        {
          sub_1DC4(&qword_56528, &unk_38E00);
          v9 = sub_1A3B4(v12, i, a3);
          v11 = *v10;

          (v9)(v12, 0);
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

uint64_t sub_32EF4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_369D0();
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
    result = sub_3E5C(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_365D0();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_331CC(&qword_56540, &qword_56538, &qword_38E10);
        for (i = 0; i != v7; ++i)
        {
          sub_1DC4(&qword_56538, &qword_38E10);
          v9 = sub_1A3B4(v12, i, a3);
          v11 = *v10;

          (v9)(v12, 0);
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

unint64_t sub_330B8()
{
  result = qword_55750;
  if (!qword_55750)
  {
    sub_36310();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_55750);
  }

  return result;
}

unint64_t sub_33124()
{
  result = qword_56550;
  if (!qword_56550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56550);
  }

  return result;
}

unint64_t sub_33178()
{
  result = qword_56558;
  if (!qword_56558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56558);
  }

  return result;
}

uint64_t sub_331CC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_4488(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_33238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;

  return _swift_stdlib_random(&a10, 8);
}

uint64_t sub_332F8()
{
}

char *sub_33390()
{

  return sub_19F6C(0, v0, 0);
}

uint64_t sub_333C8()
{
  v0 = sub_35ED0();
  sub_486C(v0, qword_59718);
  v1 = sub_1D8C(v0, qword_59718);
  *v1 = &unk_38E60;
  v1[1] = 0;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_33464(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_14958;

  return sub_33504(a1, a2);
}

uint64_t sub_33504(uint64_t a1, uint64_t a2)
{
  v2[24] = a1;
  v2[25] = a2;
  sub_1DC4(&qword_553E0, &qword_37990);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  sub_35D90();
  v2[28] = swift_task_alloc();
  sub_1DC4(&qword_55388, &unk_37950);
  v2[29] = swift_task_alloc();
  v3 = sub_35CF0();
  v2[30] = v3;
  v2[31] = *(v3 - 8);
  v2[32] = swift_task_alloc();

  return _swift_task_switch(sub_3366C, 0, 0);
}

uint64_t sub_3366C()
{
  v1 = *(v0 + 200);
  sub_1D48(v1, v1[3]);
  v2 = sub_35F70();
  sub_162C8(v2, (v0 + 16), 0x656D614E6D6F6F72, 0xE800000000000000);

  if (*(v0 + 40))
  {
    if (sub_15C08(v0 + 160, v0 + 16, v3, &type metadata for String))
    {
      v4 = *(v0 + 168);
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    sub_11590(v0 + 16, &qword_55078, &unk_373F0);
    v4 = 0;
  }

  v5 = sub_35F70();
  sub_162C8(v5, (v0 + 48), 0x7475626972747461, 0xE900000000000065);

  if (*(v0 + 72))
  {
    if (sub_15C08(v0 + 144, v0 + 48, v6, &type metadata for String))
    {
      v7 = *(v0 + 152);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    sub_11590(v0 + 48, &qword_55078, &unk_373F0);
    v7 = 0;
  }

  v8 = sub_35F70();
  sub_162C8(v8, (v0 + 80), 0x65756C6176, 0xE500000000000000);

  if (!*(v0 + 104))
  {
    sub_11590(v0 + 80, &qword_55078, &unk_373F0);
LABEL_18:
    v11 = 0;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0u;
    goto LABEL_19;
  }

  v9 = sub_36480();
  if ((sub_15C08(v0 + 184, v0 + 80, v10, v9) & 1) == 0)
  {
    goto LABEL_18;
  }

  v11 = *(v0 + 184);
  sub_1D48(*(v0 + 200), v1[3]);

  sub_35F80();
  sub_36430();

  if (!v11)
  {
    goto LABEL_18;
  }

  sub_36420();

  if (!*(v0 + 136))
  {
LABEL_19:
    sub_11590(v0 + 112, &qword_55078, &unk_373F0);
    goto LABEL_20;
  }

  v12 = sub_364B0();
  if (sub_15C08(v0 + 176, v0 + 112, v13, v12))
  {
    v14 = *(v0 + 176);
    sub_1D48(*(v0 + 200), v1[3]);

    sub_35F80();
    sub_36490();

    goto LABEL_21;
  }

LABEL_20:
  v14 = 0;
LABEL_21:
  *(v0 + 264) = v11;
  *(v0 + 272) = v14;
  if (qword_54D40 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 224);
  v15 = *(v0 + 232);
  v17 = *(v0 + 200);
  sub_35CD0();
  sub_1D48(v17, v1[3]);
  v18 = sub_35F80();
  sub_35D80();
  type metadata accessor for HomeSuggestionCATs(0);
  swift_allocObject();
  *(v0 + 280) = HomeSuggestionCATs.init(templateDir:options:globals:)(v15, v16, v18);
  if (v4)
  {
    sub_36740();

    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = *(v0 + 216);
  v21 = sub_35D70();
  v22 = 1;
  sub_3D4C(v20, v19, 1, v21);
  if (v7)
  {
    sub_36740();

    v22 = 0;
  }

  sub_3D4C(*(v0 + 208), v22, 1, v21);
  v23 = swift_task_alloc();
  *(v0 + 288) = v23;
  *v23 = v0;
  v23[1] = sub_15050;

  return sub_10B78();
}

uint64_t sub_33B18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  v7 = *(a1 + 32);
  sub_1D48(a1, v3);
  v4 = type metadata accessor for HomeAutomationCandidateSuggestionConfigurator();
  swift_allocObject();
  v5 = sub_163CC(0x70536E6146746573, 0xEB00000000646565);
  v8[3] = v4;
  v8[4] = sub_12154(&qword_55248, type metadata accessor for HomeAutomationCandidateSuggestionConfigurator, &unk_37F90);
  v8[0] = v5;
  *(a2 + 24) = v3;
  *(a2 + 32) = v7;
  sub_3C30(a2);
  sub_35DA0();
  return sub_3D00(v8);
}

uint64_t sub_33C20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v48 = a1;
  v2 = sub_1DC4(&qword_55060, &qword_380E0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v41 - v4;
  sub_1DC4(&qword_55068, &unk_373E0);
  v6 = (sub_1DC4(&qword_54F98, qword_37170) - 8);
  v7 = *v6;
  v45 = *(*v6 + 72);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  v46 = v9;
  *(v9 + 16) = xmmword_37020;
  v10 = v9 + v8;
  v11 = type metadata accessor for RoomNameResolver();
  v12 = swift_allocObject();
  *(v12 + 16) = 0x656D614E6D6F6F72;
  *(v12 + 24) = 0xE800000000000000;
  v56 = v11;
  v57 = sub_12154(&qword_551B8, type metadata accessor for RoomNameResolver, &unk_38190);
  v55[0] = v12;
  sub_1DC4(&qword_55078, &unk_373F0);
  v43 = sub_352A0;
  sub_1219C(sub_352A0, v13, (&type metadata for Any + 1));
  *v10 = 1;
  sub_3BCC(v55, v10 + 8);
  *(v10 + 48) = 1;
  v14 = v6[12];
  v44 = *(v3 + 16);
  v42 = v2;
  v44(v10 + v14, v5, v2);
  v52 = sub_362C0();
  v51 = sub_20BC0;
  sub_1219C(sub_20BC0, v15, v52);
  v16 = *(v3 + 8);
  v49 = v3 + 8;
  v50 = v16;
  v16(v5, v2);
  sub_3D00(v55);
  v17 = v45;
  v18 = v10 + v45;
  v19 = type metadata accessor for AttributeResolver();
  v20 = swift_allocObject();
  v28 = sub_2B290(v20, v21, v22, v23, v24, v25, v26, v27);
  v56 = v19;
  v57 = sub_12154(&qword_55468, type metadata accessor for AttributeResolver, &unk_38AC0);
  v55[0] = v28;
  sub_1219C(sub_352A0, v29, (&type metadata for Any + 1));
  *v18 = 8;
  sub_3BCC(v55, v18 + 8);
  *(v18 + 48) = 1;
  v30 = v42;
  v31 = v44;
  v44(v18 + v6[12], v5, v42);
  sub_1219C(v51, v32, v52);
  v33 = v30;
  v50(v5, v30);
  sub_3D00(v55);
  v34 = v10 + 2 * v17;
  v35 = type metadata accessor for ValueResolver();
  swift_allocObject();
  v36 = sub_273D4();
  v56 = v35;
  v57 = sub_12154(&qword_55470, type metadata accessor for ValueResolver, &unk_387C8);
  v55[0] = v36;
  sub_1219C(v43, v37, (&type metadata for Any + 1));
  *v34 = 9;
  sub_3BCC(v55, v34 + 8);
  *(v34 + 48) = 0;
  v31(v34 + v6[12], v5, v33);
  sub_1219C(v51, v38, v52);
  v50(v5, v33);
  sub_3D00(v55);
  v39 = v47;
  sub_4E08(v48, v47);
  v54 = v39;
  sub_1F76C(sub_341A4, v53, v46);
  swift_setDeallocating();
  return sub_39C4();
}

BOOL sub_3410C(void *a1)
{
  v1 = [a1 userTask];
  if (v1 && (v2 = v1, [v1 taskType], v2, v3 = sub_36350(), v3 == sub_36350()))
  {
    return sub_34664(&off_4F490, v4, v5, v6);
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for HomeSuggestionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEE)
  {
    if (a2 + 18 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 18) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 19;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v5 = v6 - 19;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HomeSuggestionType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xED)
  {
    v6 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
        JUMPOUT(0x34314);
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
          *result = a2 + 18;
        }

        break;
    }
  }

  return result;
}

void sub_3434C(char a1)
{
  switch(a1)
  {
    case 3:
    case 5:
      sub_35C5C();
      break;
    case 4:
      sub_1ACF4();
      break;
    default:
      return;
  }
}

Swift::Int sub_344B0(char a1)
{
  sub_36A60();
  sub_16004(v3, a1);
  return sub_36A80();
}

Swift::Int sub_34510(__int16 a1)
{
  sub_36A60();
  HueSemantic.rawValue.getter(a1);
  sub_1ABF0(v2, v3, v4);

  return sub_36A80();
}

Swift::Int sub_34590(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_36A60();
  v4 = a2(a1);
  sub_1ABF0(v4, v5, v6);

  return sub_36A80();
}

BOOL sub_34664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v5 = a1 + 32;
  do
  {
    v6 = v4;
    if (v4-- == 0)
    {
      break;
    }

    v5 += 8;
    sub_35C44();
  }

  while ((sub_34C14(v8, &selRef_attribute, v9) & 1) == 0);
  return v6 != 0;
}

void *sub_346CC()
{
  v9 = _swiftEmptyArrayStorage;
  if (qword_54D48 != -1)
  {
    swift_once();
  }

  v0 = qword_59688;
  v1 = sub_1D48(qword_59670, qword_59688);
  v2 = *(v0 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  v5 = sub_36510();
  (*(v2 + 8))(v4, v0);
  if ((v5 & 1) == 0)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1DC4(&qword_54F58, &qword_38060);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_38EB0;
  sub_36250();
  *(inited + 32) = sub_36240();
  *(inited + 40) = sub_361F0();
  *(inited + 48) = sub_36220();
  if (qword_54CA0 != -1)
  {
    swift_once();
  }

  *(inited + 56) = qword_594C0;

  sub_30FE4(inited);
  return v9;
}

unint64_t sub_348E8(uint64_t a1, uint64_t a2)
{
  v2 = sub_36A30();

  if (v2 >= 0x13)
  {
    return 19;
  }

  else
  {
    return v2;
  }
}

void sub_3493C(char a1)
{
  switch(a1)
  {
    case 1:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
      return;
    case 13:
    case 15:
    case 17:
      sub_1ACF4();
      break;
    default:
      sub_35C5C();
      break;
  }
}

id sub_34C14(void *a1, SEL *a2, uint64_t (*a3)(id))
{
  v6 = v3;
  result = [v6 userTask];
  if (result)
  {
    v9 = result;
    v10 = a3([result *a2]);
    v11 = a3(a1);

    return (v10 == v11);
  }

  return result;
}

void sub_34CBC(void *a1, SEL *a2, uint64_t (*a3)(id))
{
  v6 = sub_3559C(v3);
  if (v6)
  {
    v7 = v6;
    v8 = sub_3E5C(v6);
    for (i = 0; ; ++i)
    {
      if (v8 == i)
      {
LABEL_14:

        return;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = sub_36930();
      }

      else
      {
        if (i >= *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_17;
        }

        v10 = *(v7 + 8 * i + 32);
      }

      v11 = v10;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v12 = a3([v10 *a2]);
      if (v12 == a3(a1))
      {
        v13 = sub_34F64();

        if ((v13 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }
}

uint64_t sub_34DE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = sub_35DD0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v11 = (*(a2 + 112))(a1, a2);
  v11[1] = v12;
  (*(v9 + 104))(v11, enum case for SiriSuggestions.IntentType.inIntent(_:), v8);
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = v4;
  a3[3] = sub_35DF0();
  a3[4] = &protocol witness table for SiriSuggestions.IntentMatch;
  sub_3C30(a3);
  return sub_35DE0();
}

uint64_t sub_34F64()
{
  v1 = [v0 isExcludeFilter];
  sub_355FC();
  v2.super.super.isa = sub_36880(1).super.super.isa;
  if (v1)
  {
    v3 = sub_36890();

    v2.super.super.isa = v1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_34FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1DC4(&qword_56610, &qword_38FF8);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_35E10();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = (&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v15 = &v21 - v14;
  sub_35E00();
  if (sub_3D74(v8, 1, v9) == 1)
  {
    sub_3548C(v8);
LABEL_8:
    v18 = 0;
    return v18 & 1;
  }

  (*(v10 + 32))(v15, v8, v9);
  (*(v10 + 16))(v13, v15, v9);
  if ((*(v10 + 88))(v13, v9) != enum case for SiriSuggestions.Intent.inIntent(_:))
  {
    v19 = *(v10 + 8);
    v19(v15, v9);
    v19(v13, v9);
    goto LABEL_8;
  }

  (*(v10 + 96))(v13, v9);
  v16 = *v13;
  swift_getAssociatedTypeWitness();
  v17 = swift_dynamicCastUnknownClass();
  if (!v17)
  {

    (*(v10 + 8))(v15, v9);
    goto LABEL_8;
  }

  v18 = (*(a4 + 104))(v17, a3, a4);

  (*(v10 + 8))(v15, v9);
  return v18 & 1;
}

uint64_t sub_352A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1A750(a1, v7);
  result = swift_dynamicCast();
  if (result)
  {
    *a2 = v5;
    a2[1] = v6;
    v4 = &type metadata for String;
  }

  else
  {
    *a2 = 0;
    v4 = &type metadata for Bool;
  }

  a2[3] = v4;
  return result;
}

unint64_t sub_35324(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_4F4B8;
  v6._object = a2;
  v4 = sub_369F0(v3, v6);

  if (v4 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_353BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_348E8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_353EC(void *a1@<X8>)
{
  sub_3493C(*v1);
  *a1 = v3;
  a1[1] = v4;
}

unint64_t sub_3541C()
{
  result = qword_56608;
  if (!qword_56608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56608);
  }

  return result;
}

uint64_t sub_3548C(uint64_t a1)
{
  v2 = sub_1DC4(&qword_56610, &qword_38FF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_35540@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_35324(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_35570(void *a1@<X8>)
{
  sub_3434C(*v1);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t sub_3559C(void *a1)
{
  v1 = [a1 filters];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_36410();
  v3 = sub_36800();

  return v3;
}

unint64_t sub_355FC()
{
  result = qword_56618[0];
  if (!qword_56618[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_56618);
  }

  return result;
}

void sub_35648(uint64_t a1)
{
  sub_35950();
  if (v1 <= 0x3F)
  {
    sub_359AC(319);
    if (v2 <= 0x3F)
    {
      sub_4488(&qword_55078, &unk_373F0);
      sub_35D30();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_35738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1DC4(&qword_55060, &qword_380E0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 40);
    }

    else
    {
      sub_4488(&qword_55078, &unk_373F0);
      v9 = sub_35D30();
      v10 = *(a3 + 44);
    }

    return sub_3D74(a1 + v10, a2, v9);
  }
}

uint64_t sub_35844(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v8 = sub_1DC4(&qword_55060, &qword_380E0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 40);
    }

    else
    {
      sub_4488(&qword_55078, &unk_373F0);
      v9 = sub_35D30();
      v10 = *(a4 + 44);
    }

    return sub_3D4C(v5 + v10, a2, a2, v9);
  }

  return result;
}

unint64_t sub_35950()
{
  result = qword_566A0;
  if (!qword_566A0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_566A0);
  }

  return result;
}

void sub_359AC(uint64_t a1)
{
  if (!qword_566A8)
  {
    sub_4488(&qword_55078, &unk_373F0);
    v1 = sub_35D30();
    if (!v2)
    {
      atomic_store(v1, &qword_566A8);
    }
  }
}

uint64_t getEnumTagSinglePayload for SuggestionParameter(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for SuggestionParameter(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x35B70);
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

unint64_t sub_35BAC()
{
  result = qword_566B0;
  if (!qword_566B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_566B0);
  }

  return result;
}