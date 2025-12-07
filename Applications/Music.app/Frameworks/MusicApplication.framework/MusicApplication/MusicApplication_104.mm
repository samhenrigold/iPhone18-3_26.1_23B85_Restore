void sub_94F758(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v8 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
  while (2)
  {
    v28 = v9;
    do
    {
      while (1)
      {
        if ((*a5 & 0x8000000000000000) != 0)
        {
          if (!sub_ABAC90())
          {
            goto LABEL_29;
          }

          _s4WordCMa();
          swift_dynamicCast();
          v14 = v29;
          if (!v29)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v11 = a5[3];
          v12 = a5[4];
          if (!v12)
          {
            v15 = (a5[2] + 64) >> 6;
            if (v15 <= v11 + 1)
            {
              v16 = v11 + 1;
            }

            else
            {
              v16 = (a5[2] + 64) >> 6;
            }

            v17 = v16 - 1;
            while (1)
            {
              v13 = v11 + 1;
              if (__OFADD__(v11, 1))
              {
                break;
              }

              if (v13 >= v15)
              {
                a5[3] = v17;
                a5[4] = 0;
                goto LABEL_29;
              }

              v12 = *(a5[1] + 8 * v13);
              ++v11;
              if (v12)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_31;
          }

          v13 = a5[3];
LABEL_17:
          v18 = (v12 - 1) & v12;
          v14 = *(*(*a5 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

          a5[3] = v13;
          a5[4] = v18;
          if (!v14)
          {
LABEL_29:

            sub_94E010(a1, a2, v28, a3);
            return;
          }
        }

        sub_ABB5C0();
        sub_ABB5D0(v14);
        v19 = sub_ABB610();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v10 + 8 * (v21 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        v24 = *(a3 + 48);
        if (*(v24 + 8 * v21) == v14)
        {
          break;
        }

        v25 = ~v20;
        while (1)
        {
          v21 = (v21 + 1) & v25;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v10 + 8 * (v21 >> 6))) == 0)
          {
            break;
          }

          if (*(v24 + 8 * v21) == v14)
          {
            goto LABEL_23;
          }
        }

LABEL_3:
      }

LABEL_23:

      v26 = a1[v22];
      a1[v22] = v26 & ~v23;
    }

    while ((v26 & v23) == 0);
    v9 = v28 - 1;
    if (__OFSUB__(v28, 1))
    {
LABEL_31:
      __break(1u);
      return;
    }

    if (v28 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_94F9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    __chkstk_darwin();
    v9 = 0;
    v10 = 0;
    __chkstk_darwin();
    sub_AB4A00();
  }

  else
  {
    if (!(_swiftEmptyArrayStorage >> 62) || (v4 = sub_ABB060()) == 0 || (v5 = v4, v6 = sub_94CD98(v4, 0), sub_952A98((v6 + 4), v5, _swiftEmptyArrayStorage), v8 = v7, , v8 == v5))
    {

      return;
    }

    __break(1u);
  }

  __break(1u);

  sub_7E8334(v9, v10);
  __break(1u);
}

void sub_94FB5C(uint64_t a1, uint64_t *a2, void (*a3)(__int128 *__return_ptr, uint64_t))
{
  a3(&v7, a1);
  if (!v3)
  {
    v5 = *a2;
    v6 = a2[1];
    *a2 = v7;
    sub_7E8334(v5, v6);
  }
}

void sub_94FBB0(int8x8_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, int8x8_t *a6, uint64_t a7, __n128 a8)
{
  if (a4)
  {
    if (a1 && a2)
    {
      a3 = 0;
      v11 = 8 * a2;
      v12 = a1;
      while (1)
      {
        a8.n128_u64[0] = vcnt_s8(*v12);
        a8.n128_u16[0] = vaddlv_u8(a8.n128_u64[0]);
        v13 = __OFADD__(a3, a8.n128_u32[0]);
        a3 += a8.n128_u32[0];
        if (v13)
        {
          break;
        }

        ++v12;
        v11 -= 8;
        if (!v11)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

LABEL_14:
    sub_9529FC(_swiftEmptyArrayStorage, sub_952A98);
    sub_94FFE0(a5, 0, v17);

    return;
  }

LABEL_7:
  if (!a3)
  {
    goto LABEL_14;
  }

  if (a3 == *(a7 + 16))
  {
    if (a6)
    {
      v14 = a3;
      swift_beginAccess();
      v15 = sub_AB49B0();
      a3 = v14;
      v16 = v15 - v14;
      if (!__OFSUB__(v15, v14))
      {
LABEL_11:
        if (v16 >= a5)
        {
          return;
        }

        if (!__OFADD__(a3, a5))
        {
          sub_94FFE0(a3 + a5, 0, a8);
          return;
        }

        goto LABEL_54;
      }
    }

    else
    {
      v16 = 15 - a3;
      if (!__OFSUB__(15, a3))
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  v18 = a3 + a5;
  if (!__OFADD__(a3, a5))
  {
    v34 = sub_9529FC(_swiftEmptyArrayStorage, sub_952A98);
    sub_94FFE0(v18, 0, v19);
    v8 = 0;
    v36 = v34;
LABEL_20:
    v20 = sub_AB4A20();
    if (v21)
    {
LABEL_47:

      return;
    }

    while (1)
    {
      if ((v20 & 0x8000000000000000) != 0)
      {
        goto LABEL_50;
      }

      if (v20 >= *(a7 + 16))
      {
        goto LABEL_51;
      }

      v28 = *(a7 + 32 + 8 * v20);
      swift_retain_n();
      sub_ABAE90();
      sub_ABAED0();
      sub_ABAEE0();
      sub_ABAEA0();
      v29 = v36;
      v30 = v36[2];
      if (!v8)
      {
        break;
      }

      swift_beginAccess();
      if (sub_AB49B0() >= v30)
      {
        if ((swift_isUniquelyReferenced_native() & 1) == 0)
        {
          v33 = sub_AB49D0();

          v8 = v33;
          if (!v33)
          {
            goto LABEL_55;
          }
        }

        sub_ABB5C0();
        sub_ABB5D0(v28);
        sub_ABB610();
        if (__OFSUB__(1 << *(v8 + 16), 1))
        {
          goto LABEL_52;
        }

        if (sub_AB4950())
        {
          while (1)
          {
            sub_AB49A0();
          }
        }

        sub_AB4990();
      }

      else
      {
        v22 = *(v8 + 24) & 0x3FLL;
        if (v30 > 0xF || v22)
        {
          goto LABEL_23;
        }

        v8 = 0;
      }

LABEL_27:
      v20 = sub_AB4A20();
      if (v27)
      {
        goto LABEL_47;
      }
    }

    while (v30 <= 0xF)
    {

      v31 = sub_AB4A20();
      if (v32)
      {
        goto LABEL_47;
      }

      if ((v31 & 0x8000000000000000) != 0)
      {
        goto LABEL_50;
      }

      if (v31 >= *(a7 + 16))
      {
        goto LABEL_51;
      }

      swift_retain_n();
      sub_ABAE90();
      sub_ABAED0();
      sub_ABAEE0();
      sub_ABAEA0();
      v29 = v36;
      v30 = v36[2];
    }

    v22 = 0;
LABEL_23:
    v23 = sub_AB49E0();
    if (v22 <= v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = v22;
    }

    v26 = sub_94D838(v29, v25, 0, v22, v24);

    v8 = v26;
    goto LABEL_27;
  }

LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
}

void sub_94FFE0(uint64_t a1, char a2, __n128 a3)
{
  if (a1 < 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v4 = v3;
  sub_ABAEC0();
  v6 = *v3;
  if (*v3)
  {
    swift_beginAccess();
    v7 = *(v6 + 16) & 0x3FLL;
    v8 = sub_AB49E0();
    v10 = v8;
    if ((a2 & 1) == 0)
    {
      swift_beginAccess();
      v8 = v10;
      v10 = *(v6 + 24) & 0x3FLL;
    }
  }

  else
  {
    v8 = sub_AB49E0();
    v7 = 0;
    if (a2)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = v4[1];
  if (v7 < v8)
  {
    if (v10 <= v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = v10;
    }

LABEL_23:
    v16 = sub_94D838(v11, v12, 0, v10, v9);

    *v4 = v16;
    return;
  }

  if (v10 <= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = v10;
  }

  v14 = sub_AB49E0();
  if (v14 <= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  if (v15 < v7)
  {
    if (v10 <= v15)
    {
      v12 = v15;
    }

    else
    {
      v12 = v10;
    }

    goto LABEL_23;
  }

  if (!v6 || (swift_isUniquelyReferenced_native() & 1) != 0)
  {
    v17 = *v4;
    if (*v4)
    {
      goto LABEL_28;
    }

LABEL_32:
    if (!v10)
    {
      return;
    }

    __break(1u);
    goto LABEL_34;
  }

  if (!*v4)
  {
LABEL_35:
    __break(1u);
    return;
  }

  v17 = sub_AB49D0();

  *v4 = v17;
  if (!v17)
  {
    goto LABEL_32;
  }

LABEL_28:
  swift_beginAccess();
  if ((*(v17 + 24) & 0x3FLL) != v10)
  {
    *(v17 + 24) = *(v17 + 24) & 0xFFFFFFFFFFFFFFC0 | v10 & 0x3F;
  }
}

void sub_950180(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = v3[1];
  v7 = *(v6 + 16);
  v8 = *v3;
  if (!*v3)
  {
    if (!v7)
    {
      goto LABEL_16;
    }

LABEL_15:
    sub_950470(a1, &v19);
LABEL_17:
    v15 = v22;
    v16 = v23;
    v17 = v20;
    v18 = v21;
    *a3 = v19;
    *(a3 + 16) = v17;
    *(a3 + 24) = v18;
    *(a3 + 40) = v15;
    *(a3 + 48) = v16;
    return;
  }

  swift_beginAccess();
  if ((*(v8 + 16) & 0x3FLL) == (*(v8 + 24) & 0x3FLL))
  {
    if (!v7)
    {
      goto LABEL_16;
    }
  }

  else if (v7 <= sub_AB49C0())
  {
LABEL_16:
    sub_950470(a1, &v19);
    sub_94D700(sub_94DA90, v14);
    goto LABEL_17;
  }

  isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
  v11 = *v3;
  if ((isUniquelyReferenced_native & 1) == 0)
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    v12 = sub_AB49D0();

    *v3 = v12;
    v11 = v12;
  }

  if (v11)
  {

    sub_9507AC(a2, (v11 + 16), v11 + 32, v3);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {

      sub_950AF8(a1, a1 + 1, v6, (v11 + 16), v11 + 32, v13);

      goto LABEL_15;
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_950328(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = v3[1];
  v7 = *(v6 + 16);
  v8 = *v3;
  if (!*v3)
  {
    if (!v7)
    {
      goto LABEL_16;
    }

LABEL_15:
    sub_950538(a1, a3);
    return;
  }

  swift_beginAccess();
  if ((*(v8 + 16) & 0x3FLL) == (*(v8 + 24) & 0x3FLL))
  {
    if (!v7)
    {
      goto LABEL_16;
    }
  }

  else if (v7 <= sub_AB49C0())
  {
LABEL_16:
    sub_950538(a1, a3);
    sub_94D648(v15);
    return;
  }

  isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
  v11 = *v3;
  if ((isUniquelyReferenced_native & 1) == 0)
  {
    if (!v11)
    {
      goto LABEL_20;
    }

    v12 = sub_AB49D0();

    *v3 = v12;
    v11 = v12;
  }

  if (v11)
  {
    sub_9505CC(a2, (v11 + 16), v11 + 32, v3);
    v14 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (v14 >= a1)
    {
      sub_951210(a1, v14, v6, (v11 + 16), v11 + 32, v13);
      goto LABEL_15;
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_950470@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_9515F8(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 56 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 16);
    v12 = *(v9 + 40);
    v13 = *(v9 + 48);
    v14 = *(v9 + 24);
    result = memmove(v9, (v9 + 56), 56 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
    *a2 = v10;
    *(a2 + 16) = v11;
    *(a2 + 24) = v14;
    *(a2 + 40) = v12;
    *(a2 + 48) = v13;
  }

  return result;
}

uint64_t sub_950538(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((result & 1) == 0)
  {
    result = a2(v5);
    v5 = result;
    *v2 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 8 * a1;
    v10 = *(v9 + 32);
    memmove((v9 + 32), (v9 + 40), 8 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    sub_ABAEA0();
    return v10;
  }

  return result;
}

unint64_t sub_9505CC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v15 = sub_AB4950();
  sub_AB49A0();
  if (v15)
  {
    v7 = sub_AB4960();
    while (1)
    {
      result = sub_AB4980();
      if (v9)
      {
LABEL_20:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v10 = *(a4 + 8);
      if (result >= *(v10 + 16))
      {
        goto LABEL_18;
      }

      v11 = *(v10 + 8 * result + 32);
      sub_ABB5C0();
      sub_ABB5D0(v11);
      result = sub_ABB610();
      v12 = 1 << *a2;
      if (__OFSUB__(v12, 1))
      {
        goto LABEL_19;
      }

      v13 = (v12 - 1) & result;
      if (v6 >= v7)
      {
        break;
      }

      if (v13 < v7)
      {
        goto LABEL_12;
      }

LABEL_13:
      sub_AB4980();
      v6 = a1;
      sub_AB4970();
LABEL_3:
      sub_AB49A0();
    }

    if (v13 < v7)
    {
      goto LABEL_3;
    }

LABEL_12:
    if (v6 < v13)
    {
      goto LABEL_3;
    }

    goto LABEL_13;
  }

  return sub_AB4970();
}

void sub_9507AC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v34 = sub_AB4950();
  sub_AB49A0();
  if (v34)
  {
    v28 = sub_AB4960();
    v29 = a2;
    while (1)
    {
      v6 = sub_AB4980();
      if (v7)
      {
LABEL_40:
        __break(1u);
        return;
      }

      if ((v6 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v8 = *(a4 + 8);
      if (v6 >= *(v8 + 16))
      {
        goto LABEL_38;
      }

      v9 = v8 + 56 * v6;
      v10 = *(v9 + 32);
      v11 = *(v9 + 40);
      v12 = *(v9 + 64);
      v31 = *(v9 + 72);
      v32 = *(v9 + 80);
      sub_ABB5C0();
      if (v10 == 0.0)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = v10;
      }

      sub_ABB600(*&v13);
      if (v11 == 0.0)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = v11;
      }

      sub_ABB600(*&v14);

      sub_AB93F0();
      v15 = *(v12 + 16);
      sub_ABB5D0(v15);
      if (v15)
      {
        v16 = (v12 + 80);
        do
        {
          v17 = *(v16 - 6);
          v18 = *(v16 - 5);
          v20 = *(v16 - 2);
          v19 = *(v16 - 1);
          v22 = *v16;
          v16 += 7;
          v21 = *&v22;
          if (v17 == 0.0)
          {
            v17 = 0.0;
          }

          sub_ABB600(*&v17);
          if (v18 == 0.0)
          {
            v23 = 0.0;
          }

          else
          {
            v23 = v18;
          }

          sub_ABB600(*&v23);

          sub_AB93F0();
          sub_ABB5D0(v20);
          sub_ABB5D0(v19);
          sub_ABB5D0(v21);

          --v15;
        }

        while (v15);
      }

      if (v32)
      {
        sub_ABB5D0(0);
      }

      else
      {
        sub_ABB5D0(1uLL);
        if ((v31 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v24 = v31;
        }

        else
        {
          v24 = 0;
        }

        sub_ABB600(v24);
      }

      v25 = sub_ABB610();

      v26 = 1 << *v29;
      if (__OFSUB__(v26, 1))
      {
        goto LABEL_39;
      }

      v27 = (v26 - 1) & v25;
      if (v5 >= v28)
      {
        break;
      }

      if (v27 < v28)
      {
        goto LABEL_32;
      }

LABEL_33:
      sub_AB4980();
      v5 = a1;
      sub_AB4970();
LABEL_3:
      sub_AB49A0();
    }

    if (v27 < v28)
    {
      goto LABEL_3;
    }

LABEL_32:
    if (v5 < v27)
    {
      goto LABEL_3;
    }

    goto LABEL_33;
  }

  sub_AB4970();
}

void sub_950AF8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, __n128 a6)
{
  v7 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_98;
  }

  if (v7 >= 1)
  {
    v8 = a4;
    v11 = *(a3 + 16);
    v65 = a2 - a1;
    if (a1 < (v11 - v7) / 2)
    {
      if (sub_AB49B0() / 3 > a1)
      {
        if (a1 < 0)
        {
LABEL_102:
          __break(1u);
          goto LABEL_103;
        }

        if (v11 < a1)
        {
LABEL_103:
          __break(1u);
          goto LABEL_104;
        }

        if (a1)
        {
          v12 = 0;
          v59 = a1;
          while (1)
          {
            v13 = a3 + 32 + 56 * v12;
            v14 = *(v13 + 32);
            v60 = *(v13 + 40);
            v62 = *(v13 + 48);
            v16 = *v13;
            v15 = *(v13 + 8);
            sub_ABB5C0();
            if (v16 == 0.0)
            {
              v17 = 0.0;
            }

            else
            {
              v17 = v16;
            }

            sub_ABB600(*&v17);
            if (v15 == 0.0)
            {
              v18 = 0.0;
            }

            else
            {
              v18 = v15;
            }

            sub_ABB600(*&v18);

            sub_AB93F0();
            v19 = *(v14 + 16);
            sub_ABB5D0(v19);
            if (v19)
            {
              v20 = (v14 + 80);
              do
              {
                v21 = *(v20 - 6);
                v22 = *(v20 - 5);
                v24 = *(v20 - 2);
                v23 = *(v20 - 1);
                v26 = *v20;
                v20 += 7;
                v25 = *&v26;
                if (v21 == 0.0)
                {
                  v21 = 0.0;
                }

                sub_ABB600(*&v21);
                if (v22 == 0.0)
                {
                  v27 = 0.0;
                }

                else
                {
                  v27 = v22;
                }

                sub_ABB600(*&v27);

                sub_AB93F0();
                sub_ABB5D0(v24);
                sub_ABB5D0(v23);
                sub_ABB5D0(v25);

                --v19;
              }

              while (v19);
            }

            if (v62)
            {
              sub_ABB5D0(0);
            }

            else
            {
              sub_ABB5D0(1uLL);
              v28 = (v60 & 0x7FFFFFFFFFFFFFFFLL) != 0 ? v60 : 0;
              sub_ABB600(v28);
            }

            v8 = a4;
            v7 = v65;
            sub_ABB610();
            if (__OFSUB__(1 << *a4, 1))
            {
              break;
            }

            if (sub_AB4950())
            {
              while (1)
              {
                v29 = sub_AB4980();
                if ((v30 & 1) == 0 && v29 == v12)
                {
                  break;
                }

                sub_AB49A0();
              }
            }

            if (__OFADD__(v12, v65))
            {
              goto LABEL_95;
            }

            ++v12;
            sub_AB4990();

            if (v12 == v59)
            {
              goto LABEL_37;
            }
          }

          __break(1u);
LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

LABEL_37:

        goto LABEL_38;
      }

      sub_AB4950();
      v36 = sub_AB4980();
      if ((v37 & 1) != 0 || v36 >= a1)
      {
LABEL_53:
        sub_AB49A0();
LABEL_38:
        v31 = v8[1];
        if (__OFSUB__(v31 >> 6, v7))
        {
LABEL_100:
          __break(1u);
          goto LABEL_101;
        }

        v32 = 1 << *v8;
        v33 = __OFSUB__(v32, 1);
        v34 = v32 - 1;
        if (v33)
        {
LABEL_101:
          __break(1u);
          goto LABEL_102;
        }

        v35 = (v34 & (((v31 >> 6) - v7) >> 63)) + (v31 >> 6) - v7;
        if (v35 < v34)
        {
          v34 = 0;
        }

        v8[1] = v8[1] & 0x3FLL | ((v35 - v34) << 6);
        return;
      }

      if (!__OFADD__(v36, v7))
      {
        sub_AB4990();
        goto LABEL_53;
      }

      __break(1u);
LABEL_59:
      sub_AB4950();
      v38 = sub_AB4980();
      if ((v39 & 1) == 0 && v38 >= v6)
      {
        if (__OFSUB__(v38, v7))
        {
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
          goto LABEL_99;
        }

        sub_AB4990();
      }

      sub_AB49A0();
      return;
    }

    v6 = a2;
    if (__OFSUB__(v11, a2))
    {
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    if ((v11 - a2) >= sub_AB49B0() / 3)
    {
      goto LABEL_59;
    }

    if (v11 < v6)
    {
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    if (v6 < 0)
    {
LABEL_105:
      __break(1u);
      return;
    }

    if (v11 != v6)
    {
      v58 = v11;
      do
      {
        v40 = a3 + 32 + 56 * v6;
        v41 = *(v40 + 32);
        v61 = *(v40 + 40);
        v63 = *(v40 + 48);
        v43 = *v40;
        v42 = *(v40 + 8);
        sub_ABB5C0();
        if (v43 == 0.0)
        {
          v44 = 0.0;
        }

        else
        {
          v44 = v43;
        }

        sub_ABB600(*&v44);
        if (v42 == 0.0)
        {
          v45 = 0.0;
        }

        else
        {
          v45 = v42;
        }

        sub_ABB600(*&v45);

        sub_AB93F0();
        v46 = *(v41 + 16);
        sub_ABB5D0(v46);
        if (v46)
        {
          v47 = (v41 + 80);
          do
          {
            v48 = *(v47 - 6);
            v49 = *(v47 - 5);
            v50 = *(v47 - 2);
            v51 = *(v47 - 1);
            v53 = *v47;
            v47 += 7;
            v52 = *&v53;
            if (v48 == 0.0)
            {
              v48 = 0.0;
            }

            sub_ABB600(*&v48);
            if (v49 == 0.0)
            {
              v54 = 0.0;
            }

            else
            {
              v54 = v49;
            }

            sub_ABB600(*&v54);

            sub_AB93F0();
            sub_ABB5D0(v50);
            sub_ABB5D0(v51);
            sub_ABB5D0(v52);

            --v46;
          }

          while (v46);
        }

        if (v63)
        {
          sub_ABB5D0(0);
        }

        else
        {
          sub_ABB5D0(1uLL);
          v55 = (v61 & 0x7FFFFFFFFFFFFFFFLL) != 0 ? v61 : 0;
          sub_ABB600(v55);
        }

        sub_ABB610();
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_97;
        }

        if (sub_AB4950())
        {
          while (1)
          {
            v56 = sub_AB4980();
            if ((v57 & 1) == 0 && v56 == v6)
            {
              break;
            }

            sub_AB49A0();
          }
        }

        sub_AB4990();
      }

      while (++v6 != v58);
    }
  }
}

void sub_951210(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, __n128 a6)
{
  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_54;
  }

  if (v7 >= 1)
  {
    v11 = *(a3 + 16);
    if (result < (v11 - v7) / 2)
    {
      if (sub_AB49B0() / 3 > result)
      {
        if (result < 0)
        {
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        if (v11 < result)
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        if (result)
        {
          v12 = 0;
          while (1)
          {
            v13 = *(a3 + 32 + 8 * v12);
            sub_ABB5C0();
            sub_ABB5D0(v13);
            sub_ABB610();
            if (__OFSUB__(1 << *a4, 1))
            {
              break;
            }

            if (sub_AB4950())
            {
              while (1)
              {
                v14 = sub_AB4980();
                if ((v15 & 1) == 0 && v14 == v12)
                {
                  break;
                }

                sub_AB49A0();
              }
            }

            if (__OFADD__(v12, v7))
            {
              goto LABEL_51;
            }

            ++v12;
            sub_AB4990();
            if (v12 == result)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        goto LABEL_17;
      }

      sub_AB4950();
      v21 = sub_AB4980();
      if ((v22 & 1) != 0 || v21 >= result)
      {
LABEL_29:
        sub_AB49A0();
LABEL_17:
        v16 = a4[1];
        if (__OFSUB__(v16 >> 6, v7))
        {
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        v17 = 1 << *a4;
        v18 = __OFSUB__(v17, 1);
        v19 = v17 - 1;
        if (v18)
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        v20 = (v19 & (((v16 >> 6) - v7) >> 63)) + (v16 >> 6) - v7;
        if (v20 < v19)
        {
          v19 = 0;
        }

        a4[1] = a4[1] & 0x3FLL | ((v20 - v19) << 6);
        return;
      }

      if (!__OFADD__(v21, v7))
      {
        sub_AB4990();
        goto LABEL_29;
      }

      __break(1u);
LABEL_35:
      sub_AB4950();
      v23 = sub_AB4980();
      if ((v24 & 1) == 0 && v23 >= v6)
      {
        if (__OFSUB__(v23, v7))
        {
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        sub_AB4990();
      }

      sub_AB49A0();
      return;
    }

    v6 = a2;
    if (__OFSUB__(v11, a2))
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if ((v11 - a2) >= sub_AB49B0() / 3)
    {
      goto LABEL_35;
    }

    if (v11 < v6)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    if (v6 < 0)
    {
LABEL_61:
      __break(1u);
      return;
    }

    if (v11 != v6)
    {
      while (1)
      {
        v25 = *(a3 + 32 + 8 * v6);
        sub_ABB5C0();
        sub_ABB5D0(v25);
        sub_ABB610();
        if (__OFSUB__(1 << *a4, 1))
        {
          break;
        }

        if (sub_AB4950())
        {
          while (1)
          {
            v26 = sub_AB4980();
            if ((v27 & 1) == 0 && v26 == v6)
            {
              break;
            }

            sub_AB49A0();
          }
        }

        sub_AB4990();
        if (++v6 == v11)
        {
          return;
        }
      }

      goto LABEL_53;
    }
  }
}

uint64_t sub_951620(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_163DF4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v20[0] = v2 + 32;
  v20[1] = v4;
  v5 = sub_ABB2B0(v4);
  if (v5 >= v4)
  {
    if (v4 >= 2)
    {
      v9 = -1;
      v10 = 1;
      v11 = (v2 + 32);
      do
      {
        v12 = *(v2 + 32 + 8 * v10);
        v13 = v9;
        v14 = v11;
        do
        {
          v15 = *v14;
          if (*(v12 + 176) >= *(*v14 + 176))
          {
            break;
          }

          *v14 = v12;
          v14[1] = v15;
          --v14;
        }

        while (!__CFADD__(v13++, 1));
        ++v10;
        ++v11;
        --v9;
      }

      while (v10 != v4);
    }
  }

  else
  {
    v6 = v5;
    v7 = (v4 >> 1);
    if (v4 >= 2)
    {
      _s4WordCMa();
      v8 = sub_AB97D0();
      *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)) = v7;
    }

    else
    {
      v8 = _swiftEmptyArrayStorage;
    }

    v18[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
    v18[1] = v7;
    sub_9518A4(v18, v19, v20, v6);
    *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)) = 0;
  }

  return sub_ABAEA0();
}

void sub_951770(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_95160C(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  v4 = sub_ABB2B0(v3);
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = sub_AB97D0();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = (v7 + 4);
    v16[1] = v6;
    sub_952008(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
}

void sub_9518A4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_124:
    v4 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_157;
      }

      goto LABEL_126;
    }

    goto LABEL_162;
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6 + 1;
    if (v6 + 1 >= v5)
    {
      goto LABEL_19;
    }

    v9 = *(*(*a3 + 8 * v8) + 176);
    v10 = *(*(*a3 + 8 * v6) + 176);
    v11 = v6 + 2;
    v12 = v9;
    do
    {
      if (v5 == v11)
      {
        v8 = v5;
        if (v9 >= v10)
        {
          goto LABEL_19;
        }

        goto LABEL_11;
      }

      v13 = *(*(*a3 + 8 * v11) + 176);
      v14 = v13 >= v12;
      ++v11;
      v12 = v13;
    }

    while ((((v9 < v10) ^ v14) & 1) != 0);
    v8 = v11 - 1;
    if (v9 >= v10)
    {
      goto LABEL_19;
    }

LABEL_11:
    if (v8 < v6)
    {
      goto LABEL_153;
    }

    if (v6 < v8)
    {
      v15 = 8 * v8 - 8;
      v16 = 8 * v6;
      v17 = v8;
      v18 = v6;
      do
      {
        if (v18 != --v17)
        {
          v19 = *a3;
          if (!*a3)
          {
            goto LABEL_159;
          }

          v20 = *(v19 + v16);
          *(v19 + v16) = *(v19 + v15);
          *(v19 + v15) = v20;
        }

        ++v18;
        v15 -= 8;
        v16 += 8;
      }

      while (v18 < v17);
      v5 = a3[1];
    }

LABEL_19:
    if (v8 < v5)
    {
      if (__OFSUB__(v8, v6))
      {
        goto LABEL_152;
      }

      if (v8 - v6 < a4)
      {
        if (__OFADD__(v6, a4))
        {
          goto LABEL_154;
        }

        if (v6 + a4 < v5)
        {
          v5 = v6 + a4;
        }

        if (v5 < v6)
        {
          goto LABEL_155;
        }

        if (v8 != v5)
        {
          v21 = *a3;
          v22 = *a3 + 8 * v8 - 8;
          v23 = v6 - v8;
          do
          {
            v24 = *(v21 + 8 * v8);
            v25 = v23;
            v26 = v22;
            do
            {
              v27 = *v26;
              if (*(v24 + 176) >= *(*v26 + 176))
              {
                break;
              }

              if (!v21)
              {
                goto LABEL_156;
              }

              *v26 = v24;
              v26[1] = v27;
              --v26;
            }

            while (!__CFADD__(v25++, 1));
            ++v8;
            v22 += 8;
            --v23;
          }

          while (v8 != v5);
          v8 = v5;
        }
      }
    }

    if (v8 < v6)
    {
      goto LABEL_149;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_926CB0(0, *(v7 + 2) + 1, 1, v7);
    }

    v30 = *(v7 + 2);
    v29 = *(v7 + 3);
    v31 = v30 + 1;
    if (v30 >= v29 >> 1)
    {
      v7 = sub_926CB0((v29 > 1), v30 + 1, 1, v7);
    }

    *(v7 + 2) = v31;
    v32 = &v7[16 * v30];
    *(v32 + 4) = v6;
    *(v32 + 5) = v8;
    v104 = v8;
    v33 = *a1;
    if (!*a1)
    {
LABEL_160:
      __break(1u);
      goto LABEL_161;
    }

    if (v30)
    {
      break;
    }

LABEL_3:
    v6 = v104;
    v5 = a3[1];
    if (v104 >= v5)
    {
      goto LABEL_124;
    }
  }

  while (1)
  {
    v34 = v31 - 1;
    if (v31 >= 4)
    {
      v39 = &v7[16 * v31 + 32];
      v40 = *(v39 - 64);
      v41 = *(v39 - 56);
      v45 = __OFSUB__(v41, v40);
      v42 = v41 - v40;
      if (v45)
      {
        goto LABEL_138;
      }

      v44 = *(v39 - 48);
      v43 = *(v39 - 40);
      v45 = __OFSUB__(v43, v44);
      v37 = v43 - v44;
      v38 = v45;
      if (v45)
      {
        goto LABEL_139;
      }

      v46 = &v7[16 * v31];
      v48 = *v46;
      v47 = *(v46 + 1);
      v45 = __OFSUB__(v47, v48);
      v49 = v47 - v48;
      if (v45)
      {
        goto LABEL_141;
      }

      v45 = __OFADD__(v37, v49);
      v50 = v37 + v49;
      if (v45)
      {
        goto LABEL_144;
      }

      if (v50 >= v42)
      {
        v68 = &v7[16 * v34 + 32];
        v70 = *v68;
        v69 = *(v68 + 1);
        v45 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v45)
        {
          goto LABEL_148;
        }

        if (v37 < v71)
        {
          v34 = v31 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

    if (v31 == 3)
    {
      v35 = *(v7 + 4);
      v36 = *(v7 + 5);
      v45 = __OFSUB__(v36, v35);
      v37 = v36 - v35;
      v38 = v45;
LABEL_56:
      if (v38)
      {
        goto LABEL_140;
      }

      v51 = &v7[16 * v31];
      v53 = *v51;
      v52 = *(v51 + 1);
      v54 = __OFSUB__(v52, v53);
      v55 = v52 - v53;
      v56 = v54;
      if (v54)
      {
        goto LABEL_143;
      }

      v57 = &v7[16 * v34 + 32];
      v59 = *v57;
      v58 = *(v57 + 1);
      v45 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v45)
      {
        goto LABEL_146;
      }

      if (__OFADD__(v55, v60))
      {
        goto LABEL_147;
      }

      if (v55 + v60 >= v37)
      {
        if (v37 < v60)
        {
          v34 = v31 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_70;
    }

    v61 = &v7[16 * v31];
    v63 = *v61;
    v62 = *(v61 + 1);
    v45 = __OFSUB__(v62, v63);
    v55 = v62 - v63;
    v56 = v45;
LABEL_70:
    if (v56)
    {
      goto LABEL_142;
    }

    v64 = &v7[16 * v34];
    v66 = *(v64 + 4);
    v65 = *(v64 + 5);
    v45 = __OFSUB__(v65, v66);
    v67 = v65 - v66;
    if (v45)
    {
      goto LABEL_145;
    }

    if (v67 < v55)
    {
      goto LABEL_3;
    }

LABEL_77:
    if (v34 - 1 >= v31)
    {
      break;
    }

    v72 = *a3;
    if (!*a3)
    {
      __break(1u);
LABEL_159:
      __break(1u);
      goto LABEL_160;
    }

    v109 = v34;
    v110 = v7;
    v106 = v34 - 1;
    v73 = *&v7[16 * v34 + 32];
    v74 = *&v7[16 * v34 + 40];
    v107 = *&v7[16 * v34 + 16];
    v108 = v74;
    v7 = (8 * v107);
    v75 = (v72 + 8 * v107);
    v76 = 8 * v73;
    v77 = (v72 + 8 * v73);
    v78 = 8 * v74;
    v79 = (v72 + 8 * v74);
    v80 = 8 * v73 - 8 * v107;
    v81 = 8 * v74 - 8 * v73;
    if (v80 < v81)
    {
      if (v75 != v33 || v77 <= v33)
      {
        memmove(v33, (v72 + 8 * v107), 8 * v73 - 8 * v107);
      }

      v82 = &v33[v80];
      v83 = v80 < 1;
      v4 = v110;
      v84 = v108;
      if (v83 || v78 <= v76)
      {
        v85 = v33;
        v90 = v75;
        v86 = v109;
        v87 = v107;
        goto LABEL_114;
      }

      v85 = v33;
      v86 = v109;
      v87 = v107;
      while (1)
      {
        v88 = *v77;
        if (*(*v77 + 176) >= *(*v85 + 176))
        {
          break;
        }

        v89 = v75 == v77;
        v77 += 8;
        if (!v89)
        {
          goto LABEL_91;
        }

LABEL_92:
        v75 += 8;
        if (v85 >= v82 || v77 >= v79)
        {
          v90 = v75;
          goto LABEL_114;
        }
      }

      v88 = *v85;
      v89 = v75 == v85;
      v85 += 8;
      if (v89)
      {
        goto LABEL_92;
      }

LABEL_91:
      *v75 = v88;
      goto LABEL_92;
    }

    if (v77 != v33 || v79 <= v33)
    {
      memmove(v33, (v72 + 8 * v73), 8 * v74 - 8 * v73);
    }

    v82 = &v33[v81];
    v86 = v109;
    if (v81 < 1 || v76 <= v7)
    {
      v85 = v33;
      v90 = v77;
      v4 = v110;
      v87 = v107;
      v84 = v108;
    }

    else
    {
      v4 = v110;
      v87 = v107;
      v84 = v108;
      do
      {
        v90 = v77 - 8;
        v79 -= 8;
        v91 = v82;
        while (1)
        {
          v92 = v79 + 8;
          v94 = *(v91 - 8);
          v91 -= 8;
          v93 = v94;
          if (*(v94 + 176) < *(*v90 + 176))
          {
            break;
          }

          if (v92 != v82)
          {
            *v79 = v93;
          }

          v79 -= 8;
          v82 = v91;
          if (v91 <= v33)
          {
            v82 = v91;
            v85 = v33;
            v90 = v77;
            goto LABEL_114;
          }
        }

        if (v92 != v77)
        {
          *v79 = *v90;
        }

        v85 = v33;
        if (v82 <= v33)
        {
          break;
        }

        v77 -= 8;
      }

      while (v75 < v90);
    }

LABEL_114:
    v95 = v82 - v85 + (v82 - v85 < 0 ? 7uLL : 0);
    if (v90 != v85 || v90 >= &v85[v95 & 0xFFFFFFFFFFFFFFF8])
    {
      memmove(v90, v85, 8 * (v95 >> 3));
    }

    if (v84 < v87)
    {
      goto LABEL_136;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_9529E8(v4);
    }

    if (v86 > *(v4 + 2))
    {
      goto LABEL_137;
    }

    v96 = &v4[16 * v106];
    *(v96 + 4) = v87;
    *(v96 + 5) = v84;
    sub_95295C(v86);
    v7 = v4;
    v31 = *(v4 + 2);
    if (v31 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  v7 = sub_9529E8(v7);
LABEL_126:
  v97 = *(v7 + 2);
  if (v97 < 2)
  {
LABEL_134:
  }

  else
  {
    while (*a3)
    {
      v98 = *&v7[16 * v97];
      v99 = *&v7[16 * v97 + 24];
      sub_952564((*a3 + 8 * v98), (*a3 + 8 * *&v7[16 * v97 + 16]), (*a3 + 8 * v99), v4);
      if (v103)
      {
        goto LABEL_134;
      }

      if (v99 < v98)
      {
        goto LABEL_150;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_9529E8(v7);
      }

      if (v97 - 2 >= *(v7 + 2))
      {
        goto LABEL_151;
      }

      v100 = &v7[16 * v97];
      *v100 = v98;
      *(v100 + 1) = v99;
      sub_95295C(v97 - 1);
      v97 = *(v7 + 2);
      if (v97 <= 1)
      {
        goto LABEL_134;
      }
    }

LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
  }
}

void sub_952008(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_9529E8(v8);
    }

    v76 = v8 + 16;
    v77 = *(v8 + 2);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = &v8[16 * v77];
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_952768((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        *(v78 + 1) = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_926CB0(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v30 = *(v8 + 3);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      v8 = sub_926CB0((v30 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v31;
    v32 = v8 + 32;
    v33 = &v8[16 * v5 + 32];
    *v33 = v9;
    *(v33 + 1) = v7;
    v85 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 4);
          v35 = *(v8 + 5);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = &v8[16 * v31];
          v52 = *v50;
          v51 = *(v50 + 1);
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = &v32[16 * v5];
          v58 = *v56;
          v57 = *(v56 + 1);
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = &v8[16 * v31];
        v62 = *v60;
        v61 = *(v60 + 1);
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = &v32[16 * v5];
        v65 = *v63;
        v64 = *(v63 + 1);
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
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

        v71 = &v32[16 * v5 - 16];
        v72 = *v71;
        v73 = &v32[16 * v5];
        v74 = *(v73 + 1);
        sub_952768((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        *(v71 + 1) = v74;
        v75 = *(v8 + 2);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        memmove(&v32[16 * v5], v73 + 16, 16 * (v75 - 1 - v5));
        *(v8 + 2) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = &v32[16 * v31];
      v39 = *(v38 - 8);
      v40 = *(v38 - 7);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 6);
      v42 = *(v38 - 5);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = &v8[16 * v31];
      v47 = *v45;
      v46 = *(v45 + 1);
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = &v32[16 * v5];
        v69 = *v67;
        v68 = *(v67 + 1);
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
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
}

uint64_t sub_952564(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*(*v6 + 176) < *(*v4 + 176))
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (*(v21 + 176) < *(*v17 + 176))
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_952768(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_95295C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_9529E8(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_9529FC(unint64_t a1, uint64_t (*a2)(void *, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v5 = sub_ABB060();
  if (!v5)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v6 = v5;
  v7 = sub_94CD98(v5, 0);
  a2(v7 + 4, v6, a1);
  v9 = v8;

  result = v7;
  if (v9 != v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_952A98(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_ABB060();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_ABB060();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2BC4C(&qword_E22998, &qword_E22990, &qword_B39CD8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22990, &qword_B39CD8);
            v9 = sub_735E44(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        _s4LineCMa();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_952C28(uint64_t result, uint64_t a2, unint64_t a3, __n128 a4)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    v13 = a2;
    result = sub_ABB060();
    a2 = v13;
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
    if (v6)
    {
      v8 = a2;
      result = sub_ABB060();
      if (result <= v8)
      {
        if (v7 >= 1)
        {
          sub_2BC4C(&qword_E22968, &qword_E22960, &unk_B39CA0);
          for (i = 0; i != v7; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22960, &unk_B39CA0);
            v10 = sub_735EC4(v14, i, a3);
            v12 = *v11;

            (v10)(v14, 0);
            *(v5 + 8 * i) = v12;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        _s4WordCMa();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_952DB8(uint64_t a1, uint64_t (*a2)(void *, uint64_t, uint64_t))
{
  v3 = sub_952E08(a1);
  v4 = v3[2];

  sub_94E4EC((v3 + 4), v4, a2);
}

void *sub_952E08(int64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, _swiftEmptyArrayStorage);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, _swiftEmptyArrayStorage);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v4 = sub_94CF0C(a1);

      objc_setAssociatedObject(v2, _swiftEmptyArrayStorage, v4, &dword_0 + 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

uint64_t sub_952EC4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_AB9B70();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_936028(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_952F5C(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_955708();
  result = sub_AB9B70();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_9363C0(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_952FD0(unint64_t a1, __n128 a2)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_18:
    sub_ABB060();
  }

  _s4WordCMa();
  sub_954D9C(&qword_E22970, _s4WordCMa, &unk_B3A318);
  result = sub_AB9B70();
  v10 = result;
  if (!i)
  {
    v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (!v5)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = sub_ABAE20();
        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_14:
          __break(1u);
          return v10;
        }
      }

      else
      {
        if (i >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          goto LABEL_18;
        }

        v7 = *(a1 + 8 * i + 32);

        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_14;
        }
      }

      sub_9364D8(&v9, v7);

      if (v8 == v5)
      {
        return v10;
      }
    }
  }

  v6 = result;
  v5 = sub_ABB060();
  result = v6;
  if (v5)
  {
    goto LABEL_6;
  }

  return result;
}

void sub_9531EC()
{
  v1 = (v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords) = 0;
  *(v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection) = 2;
  v2 = (v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_language;
  v4 = sub_AB35A0();
  v5 = *(*(v4 - 8) + 56);
  v5(v0 + v3, 1, 1, v4);
  v5(v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage, 1, 1, v4);
  v5(v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isScrolling) = 1;
  *(v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected) = 0;
  *(v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress) = 0;
  *(v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lastSizedWidth) = 0;
  v6 = v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate;
  *v6 = 2;
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  *(v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel) = 0;
  *(v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textKitManager) = 0;
  *(v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer) = 0;
  v7 = (v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textLayoutDiffMetadata);
  *v7 = 0u;
  v7[1] = 0u;
  v7[2] = 0u;
  v7[3] = 0u;
  v7[4] = 0u;
  v7[5] = 0u;
  v8 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;
  *(v0 + v8) = sub_92D028(_swiftEmptyArrayStorage);
  sub_ABAFD0();
  __break(1u);
}

void sub_9533CC(double a1, double a2, double a3, double a4, double a5, double a6, uint64_t a7, CFIndex a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13)
{
  *&v195[16] = a3;
  *&v195[24] = a4;
  *v195 = a1;
  *&v195[8] = a2;

  v20 = sub_952FD0(a13, v19);

  v239 = v20;
  v21 = CTLineRef.stringRange.getter();
  if (__OFSUB__(a12, v21))
  {
    goto LABEL_252;
  }

  v212 = a12 - v21;
  v22 = CTLineRef.glyphRuns.getter();
  v198 = v22;
  if (v22 >> 62)
  {
LABEL_253:
    v23 = sub_ABB060();
    v24 = a10;
    if (v23)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v23 = *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8));
    v24 = a10;
    if (v23)
    {
LABEL_4:
      v202 = v23;
      v25 = Int.seconds.getter(0);
      v26 = 0;
      v234 = *(a8 + 16);
      v236 = a8 + 32;
      v189 = a6;
      do
      {
        if ((v198 & 0xC000000000000001) != 0)
        {
          v27 = sub_ABAE20();
        }

        else
        {
          if (v26 >= *(&dword_10 + (v198 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_249;
          }

          v27 = *(v198 + 32 + 8 * v26);
        }

        v220 = v27;
        v28 = __OFADD__(v26, 1);
        v29 = v26 + 1;
        if (v28)
        {
          goto LABEL_246;
        }

        v214 = v29;
        v30 = CTRunGetFont();
        CTFontGetLanguageAwareOutsets();

        if (String.containsExcessiveHeightCharacters.getter(a9, v24))
        {
          v31 = a6 - v25;
        }

        else
        {
          v31 = a6;
        }

        v219 = CTRunRef.positions.getter();
        a8 = CTRunRef.stringRange.getter();
        v33 = v32;
        v34 = CTRunRef.stringIndices.getter();
        if (v212)
        {
          v28 = __OFADD__(a8, v212);
          a8 += v212;
          if (v28)
          {
            goto LABEL_247;
          }

          v35 = *(v34 + 16);
          if (v35)
          {
            v36 = a11;
            v240[0] = _swiftEmptyArrayStorage;
            v37 = v34;
            sub_9276A0(0, v35, 0);
            v38 = v37;
            v39 = _swiftEmptyArrayStorage;
            v40 = 32;
            v41 = v212;
            do
            {
              v42 = *(v38 + v40);
              a11 = v42 + v41;
              if (__OFADD__(v42, v41))
              {
                goto LABEL_234;
              }

              v240[0] = v39;
              v44 = v39[2];
              v43 = v39[3];
              if (v44 >= v43 >> 1)
              {
                sub_9276A0((v43 > 1), v44 + 1, 1);
                v38 = v37;
                v41 = v212;
                v39 = v240[0];
              }

              v39[2] = v44 + 1;
              v39[v44 + 4] = a11;
              v40 += 8;
              --v35;
            }

            while (v35);

            v221 = v39;
            a11 = v36;
          }

          else
          {

            v221 = _swiftEmptyArrayStorage;
          }
        }

        else
        {
          v221 = v34;
        }

        v45 = v234;
        if (!v234)
        {
LABEL_5:
          v24 = a10;
          goto LABEL_6;
        }

        v46 = 0;
        v238 = a8 + v33;
        v47 = __OFADD__(a8, v33);
        v197 = v219 + 32;
        v24 = a10;
        v233 = v47;
        do
        {
          while (1)
          {
            if (v46 >= v45)
            {
              __break(1u);
LABEL_229:
              __break(1u);
LABEL_230:
              __break(1u);
LABEL_231:
              __break(1u);
LABEL_232:
              __break(1u);
LABEL_233:
              __break(1u);
LABEL_234:
              __break(1u);
LABEL_235:
              __break(1u);
LABEL_236:
              __break(1u);
LABEL_237:
              __break(1u);
              goto LABEL_238;
            }

            v48 = (v236 + 56 * v46);
            v49 = *v48;
            v50 = v48[1];
            v51 = v48[2];
            v52 = v48[3];
            v54 = v48[4];
            v53 = v48[5];
            v55 = *(v48 + 48);
            v56 = *(v54 + 16);
            if (v56)
            {
              v57 = v54 + 56 * v56;
              v59 = *(v57 + 8);
              v58 = *(v57 + 16);
              v28 = __OFADD__(v59, v58);
              v60 = v59 + v58;
              if (v28)
              {
                goto LABEL_235;
              }

              v56 = *(v54 + 64);
              v28 = __OFSUB__(v60, v56);
              v61 = v60 - v56;
              if (v28)
              {
                goto LABEL_229;
              }
            }

            else
            {
              v61 = 0;
            }

            v62 = v56 + a11;
            if (__OFADD__(v56, a11))
            {
              goto LABEL_230;
            }

            if (v47)
            {
              goto LABEL_231;
            }

            v63 = v62 + v61;
            if (__OFADD__(v62, v61))
            {
              goto LABEL_232;
            }

            v64 = v238;
            if (v238 >= v63)
            {
              v64 = v62 + v61;
            }

            if (a8 >= v62 && a8 < v63)
            {
              v65 = v64 - a8;
              if (__OFSUB__(v64, a8))
              {
                goto LABEL_236;
              }

              v62 = a8;
              goto LABEL_53;
            }

            if (v62 >= a8 && v62 < v238)
            {
              break;
            }

LABEL_32:
            v28 = __OFADD__(v46++, 1);
            if (v28)
            {
              goto LABEL_233;
            }

            if (v46 >= v45)
            {
              goto LABEL_6;
            }
          }

          v65 = v64 - v62;
          if (__OFSUB__(v64, v62))
          {
            goto LABEL_237;
          }

LABEL_53:
          if (v65 < 1)
          {
            goto LABEL_32;
          }

          v228 = v55;
          v229 = v53;
          v231 = v51;

          v66 = sub_AB9DD0();
          if (v68)
          {

            v45 = v234;
            v47 = v233;
            goto LABEL_32;
          }

          v226 = v52;
          v235 = a11;
          v69 = v66;
          v70 = v67;

          v71 = _NSRange.init(range:in:)(v69, v70, a9, v24);
          v222 = v72;
          v223 = v71;
          v73 = sub_AB9590();
          a11 = v75;
          v76 = v73 >> 16;
          v78 = v77 >> 16;
          if (v74 == 32)
          {
            if (v75 == 0xE100000000000000 && !v76 && v78 == 1 || (v79 = sub_ABB2C0(), v80 = 32, v81 = v78, v82 = v76, (v79 & 1) != 0))
            {
LABEL_62:

              v28 = __OFADD__(v46++, 1);
              if (!v28)
              {
                goto LABEL_63;
              }

              goto LABEL_239;
            }
          }

          else
          {
            v83 = v74;
            if (sub_ABB2C0())
            {
              goto LABEL_62;
            }

            v80 = v83;
            v81 = v78;
            v82 = v76;
            if (v83 == 10 && a11 == 0xE100000000000000 && !v76 && v81 == 1)
            {
LABEL_75:

              a11 = v235 + 1;
              v24 = a10;
              if (!__OFADD__(v235, 1))
              {
                goto LABEL_76;
              }

              goto LABEL_244;
            }
          }

          range_8 = v81;
          v84 = v80;
          if ((sub_ABB2C0() & 1) != 0 || v84 == 10519010 && a11 == 0xA300000000000000 && !v82 && range_8 == 3)
          {
            goto LABEL_75;
          }

          v213 = v84;
          if (sub_ABB2C0())
          {
            goto LABEL_75;
          }

          v85.location = v62;
          v85.length = v65;
          v252 = CTRunRef.convertToGlyphRange(textRange:stringIndices:)(v85, v221);
          if (v252.is_nil)
          {

            v28 = __OFADD__(v46++, 1);
            if (!v28)
            {
LABEL_63:
              a11 = v235;
              v24 = a10;
LABEL_76:
              v45 = v234;
              goto LABEL_77;
            }

            __break(1u);
LABEL_255:
            __break(1u);
LABEL_256:
            __break(1u);
LABEL_257:
            __break(1u);
LABEL_258:
            __break(1u);
LABEL_259:
            __break(1u);
LABEL_260:
            __break(1u);
LABEL_261:
            __break(1u);
LABEL_262:
            __break(1u);
LABEL_263:
            __break(1u);
LABEL_264:
            __break(1u);
LABEL_265:
            __break(1u);
LABEL_266:
            __break(1u);
LABEL_267:
            __break(1u);
LABEL_268:
            __break(1u);
LABEL_269:
            __break(1u);
LABEL_270:
            __break(1u);
          }

          v86 = v252.value.location + v252.value.length;
          if (__OFADD__(v252.value.location, v252.value.length))
          {
            goto LABEL_255;
          }

          if (v86 < v252.value.location)
          {
            goto LABEL_256;
          }

          if (v252.value.location < 0)
          {
            goto LABEL_257;
          }

          v87 = *(v219 + 16);
          if (v87 < v252.value.location || v87 < v86)
          {
            goto LABEL_258;
          }

          range = v252.value.location;
          if (v252.value.location == v86)
          {
            length = v252.value.length;
            v89 = INFINITY;
          }

          else
          {
            if (v252.value.location >= v86)
            {
              goto LABEL_261;
            }

            v90 = (v197 + 16 * v252.value.location);
            v89 = INFINITY;
            length = v252.value.length;
            v91 = v252.value.length;
            do
            {
              v92 = *v90;
              v90 += 2;
              v93 = v92;
              if (v92 < v89)
              {
                v89 = v93;
              }

              --v91;
            }

            while (v91);
          }

          v249.location = range;
          v249.length = length;
          CTRunRef.drawingWidth(range:positions:)(v249, v219);
          v191 = v94;

          Height = CGRectGetHeight(*v195);
          if ((v239 & 0xC000000000000001) != 0)
          {

            sub_ABAC10();
            _s4WordCMa();
            sub_954D9C(&qword_E22970, _s4WordCMa, &unk_B3A318);
            sub_AB9BC0();
            v95 = v242;
            v96 = v243;
            v98 = v244;
            v97 = v245;
            v99 = v246;
          }

          else
          {
            v100 = -1 << *(v239 + 32);
            v98 = ~v100;
            v101 = -v100;
            if (v101 < 64)
            {
              v102 = ~(-1 << v101);
            }

            else
            {
              v102 = -1;
            }

            v99 = v102 & *(v239 + 56);

            v96 = v239 + 56;
            v97 = 0;
          }

          v206 = v96;
          v103 = (v98 + 64) >> 6;
          v208 = v95;
          while ((v95 & 0x8000000000000000) == 0)
          {
            v104 = v97;
            v105 = v99;
            if (!v99)
            {
              while (1)
              {
                v97 = v104 + 1;
                if (__OFADD__(v104, 1))
                {
                  break;
                }

                if (v97 >= v103)
                {
                  goto LABEL_141;
                }

                v105 = *(v96 + 8 * v97);
                ++v104;
                if (v105)
                {
                  goto LABEL_108;
                }
              }

LABEL_238:
              __break(1u);
LABEL_239:
              __break(1u);
LABEL_240:
              __break(1u);
LABEL_241:
              __break(1u);
LABEL_242:
              __break(1u);
LABEL_243:
              __break(1u);
LABEL_244:
              __break(1u);
LABEL_245:
              __break(1u);
LABEL_246:
              __break(1u);
LABEL_247:
              __break(1u);
LABEL_248:
              __break(1u);
LABEL_249:
              __break(1u);
              goto LABEL_250;
            }

LABEL_108:
            v106 = (v105 - 1) & v105;
            v107 = *(*(v95 + 48) + ((v97 << 9) | (8 * __clz(__rbit64(v105)))));

            if (!v107)
            {
              goto LABEL_194;
            }

LABEL_112:
            v108 = *(v107 + 72);
            v109 = *(v107 + 80);
            if ((v109 & 0x2000000000000000) != 0)
            {
              v110 = HIBYTE(v109) & 0xF;
            }

            else
            {
              v110 = v108 & 0xFFFFFFFFFFFFLL;
            }

            v113 = v108 == v213 && v109 == a11 && v82 == 0 && v110 == range_8;
            if (!v113 && (sub_ABB2C0() & 1) == 0 || *(v107 + 88) != v223 || *(v107 + 96) != v222)
            {
              goto LABEL_102;
            }

            v114 = *(v107 + 104);
            if (v114 >> 62)
            {
              v203 = *(v107 + 104);
              v117 = sub_ABB060();
              v114 = v203;
              if (!v117)
              {
                goto LABEL_102;
              }
            }

            else if (!*(&dword_10 + (v114 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_102;
            }

            if ((v114 & 0xC000000000000001) != 0)
            {

              v200 = sub_ABAE20();

              v118 = *(v200 + 120);
              a6 = *(v200 + 128);
              swift_unknownObjectRelease();
              if (v118 != a5)
              {
                goto LABEL_102;
              }
            }

            else
            {
              if (!*(&dword_10 + (v114 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_260;
              }

              v115 = *(v114 + 32);
              if (*(v115 + 120) != a5)
              {
                goto LABEL_102;
              }

              a6 = *(v115 + 128);
            }

            if (a6 == v31)
            {
              v116 = CGRectGetHeight(*v195);
              if (v116 == CGRectGetHeight(*(v107 + 176)))
              {

                v170 = *(v107 + 176);
                *(v107 + 176) = v89;
                *(v107 + 184) = 0;
                *(v107 + 192) = v191;
                *(v107 + 200) = Height;
                *(v107 + 216) = v89 - v170 + *(v107 + 216);
                v171 = *(v107 + 104);
                if (v171 >> 62)
                {
                  v172 = sub_ABB060();
                }

                else
                {
                  v172 = *(&dword_10 + (v171 & 0xFFFFFFFFFFFFFF8));
                }

                a11 = v235;
                v24 = a10;
                if (!v172)
                {
LABEL_217:
                  *(v107 + 144) = v89;
                  *(v107 + 152) = 0;
                  *(v107 + 160) = v191;
                  *(v107 + 168) = Height;
                  if (_swiftEmptyArrayStorage >> 62)
                  {
                    v181 = sub_ABB060();
                  }

                  else
                  {
                    v181 = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
                  }

                  a6 = v189;
                  *(v107 + 112) = v181;

                  sub_AB9730();
                  if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
                  {
                    sub_AB97A0();
                    v24 = a10;
                  }

                  sub_AB97F0();
                  sub_9389DC(v107);
                  sub_2BB88(v208);

                  v28 = __OFADD__(v46++, 1);
                  if (!v28)
                  {
                    goto LABEL_76;
                  }

                  goto LABEL_270;
                }

                v173 = 0;
                v230 = v172;
                v232 = v171 & 0xC000000000000001;
                v227 = v171 & 0xFFFFFFFFFFFFFF8;
                v224 = v171 + 32;
                while (2)
                {
                  if (v232)
                  {
                    v174 = sub_ABAE20();
                    v28 = __OFADD__(v173++, 1);
                    if (v28)
                    {
                      goto LABEL_266;
                    }
                  }

                  else
                  {
                    if (v173 >= *(v227 + 16))
                    {
                      goto LABEL_269;
                    }

                    v174 = *(v224 + 8 * v173);

                    v28 = __OFADD__(v173++, 1);
                    if (v28)
                    {
                      goto LABEL_266;
                    }
                  }

                  v175 = *(v107 + 216);
                  *(v174 + 192) = v175;
                  *(v174 + 152) = CGRectOffset(*(v174 + 200), v175, 0.0);
                  v176 = *(v174 + 88);
                  if (v176 >> 62)
                  {
                    v177 = sub_ABB060();
                    if (v177)
                    {
LABEL_209:
                      if (v177 < 1)
                      {
                        goto LABEL_267;
                      }

                      v178 = 0;
                      do
                      {
                        if ((v176 & 0xC000000000000001) != 0)
                        {
                          v179 = sub_ABAE20();
                        }

                        else
                        {
                          v179 = *(v176 + 8 * v178 + 32);
                        }

                        ++v178;
                        v180 = *(v174 + 192);
                        *(v179 + 104) = v180;
                        *(v179 + 64) = CGRectOffset(*(v179 + 112), v180, 0.0);
                      }

                      while (v177 != v178);
                    }
                  }

                  else
                  {
                    v177 = *(&dword_10 + (v176 & 0xFFFFFFFFFFFFFF8));
                    if (v177)
                    {
                      goto LABEL_209;
                    }
                  }

                  a11 = v235;
                  v24 = a10;
                  if (v173 == v230)
                  {
                    goto LABEL_217;
                  }

                  continue;
                }
              }
            }

LABEL_102:

            v96 = v206;
            v95 = v208;
            v99 = v106;
          }

          v210 = v99;
          if (sub_ABAC90())
          {
            _s4WordCMa();
            swift_dynamicCast();
            v107 = v240[0];
            v106 = v210;
            if (!v240[0])
            {
LABEL_194:
              v95 = v208;
              goto LABEL_141;
            }

            goto LABEL_112;
          }

          v95 = v208;
LABEL_141:
          sub_2BB88(v95);
          v119 = *(v54 + 16);

          v196 = v220;
          if (!v119)
          {
            goto LABEL_186;
          }

          a11 = 0;
          v120 = v54 + 80;
          v211 = v119;
          while (2)
          {
            v121 = (v120 + 56 * a11);
            while (2)
            {
              if (a11 >= v119)
              {
                goto LABEL_240;
              }

              v122 = a11 + 1;
              if (__OFADD__(a11, 1))
              {
                goto LABEL_241;
              }

              v123 = *(v121 - 2);
              v124 = v123 + v235;
              if (__OFADD__(v123, v235))
              {
                goto LABEL_242;
              }

              v125 = *(v121 - 1);
              v126 = v124 + v125;
              if (__OFADD__(v124, v125))
              {
                goto LABEL_243;
              }

              a6 = *(v121 - 6);
              v127 = *(v121 - 5);
              v128 = v238;
              if (v238 >= v126)
              {
                v128 = v124 + v125;
              }

              if (a8 >= v124 && a8 < v126)
              {
                v130 = v128 - a8;
                if (__OFSUB__(v128, a8))
                {
                  goto LABEL_245;
                }

                v124 = a8;
                if (v130 < 1)
                {
                  goto LABEL_145;
                }
              }

              else
              {
                if (v124 < a8 || v124 >= v238)
                {
                  goto LABEL_145;
                }

                v130 = v128 - v124;
                if (__OFSUB__(v128, v124))
                {
                  goto LABEL_248;
                }

                if (v130 < 1)
                {
                  goto LABEL_145;
                }
              }

              v204 = *(v121 - 4);
              v205 = *v121;
              v207 = *(v121 - 1);
              v209 = *(v121 - 2);
              rangea = *(v121 - 3);
              range_8a = a11 + 1;

              sub_AB9DD0();
              if ((v131 & 1) != 0 || (, v132.location = v124, v132.length = v130, v253 = CTRunRef.convertToGlyphRange(textRange:stringIndices:)(v132, v221), location = v253.value.location, v134 = v253.value.length, is_nil = v253.is_nil, , is_nil))
              {

                v122 = a11 + 1;
                v119 = v211;
LABEL_145:
                ++a11;
                v121 += 7;
                if (v122 == v119)
                {
                  goto LABEL_186;
                }

                continue;
              }

              break;
            }

            sub_AB9590();
            v136 = location + v134;
            if (__OFADD__(location, v134))
            {
              goto LABEL_262;
            }

            if (v136 < location)
            {
              goto LABEL_263;
            }

            if ((location & 0x8000000000000000) != 0)
            {
              goto LABEL_264;
            }

            v137 = *(v219 + 16);
            if (v137 < location || v137 < v136)
            {
              goto LABEL_265;
            }

            v194 = *(v219 + 16);
            if (location == v136)
            {
              v138 = INFINITY;
              goto LABEL_177;
            }

            if (location >= v136)
            {
              goto LABEL_268;
            }

            v139 = (v197 + 16 * location);
            v138 = INFINITY;
            v140 = v134;
            do
            {
              v141 = *v139;
              v139 += 2;
              v142 = v141;
              if (v141 < v138)
              {
                v138 = v142;
              }

              --v140;
            }

            while (v140);
LABEL_177:
            v185 = v138;
            v199 = v25;
            v250.location = location;
            v250.length = v134;
            a11 = location;
            CTRunRef.drawingWidth(range:positions:)(v250, v219);
            v184 = v143;
            v183 = CGRectGetHeight(*v195);

            v144 = v196;
            sub_ABAEC0();
            v186 = v134;
            v187 = location;
            _NSRange.makeIterator()();
            v240[0] = v145;
            v240[1] = v146;
            v240[2] = v147;
            v241 = v148 & 1;
            v247 = _NSRange.NSRangeIterator.next()();
            if (!v247.is_nil)
            {
              value = v247.value;
              v119 = v211;
              v192 = v127;
              v193 = a6;
              v201 = v144;
              while (value < v194)
              {
                a6 = v31;
                v150 = a5;
                v151 = *(v197 + 16 * value);
                v251.location = value;
                v251.length = v219;
                CTRunRef.drawingWidth(forGlyphAtIndex:positions:)(v251);
                v153 = v152;
                v154 = CGRectGetHeight(*v195);
                if (value >= v221[2])
                {
                  goto LABEL_251;
                }

                v155 = v154;
                sub_931F14();

                sub_AB9400();
                v156 = sub_AB9560();
                v158 = v157;
                _s5GlyphCMa();
                a11 = swift_allocObject();
                *(a11 + 96) = 0;
                *(a11 + 48) = v156;
                *(a11 + 56) = v158;
                *(a11 + 64) = v151;
                *(a11 + 72) = 0;
                *(a11 + 80) = v153;
                *(a11 + 88) = v155;
                *(a11 + 104) = v199;
                *(a11 + 112) = v151;
                *(a11 + 120) = 0;
                *(a11 + 128) = v153;
                *(a11 + 136) = v155;
                *(a11 + 16) = value;
                *(a11 + 40) = v201;
                a5 = v150;
                *(a11 + 24) = v150;
                *(a11 + 32) = a6;
                v31 = a6;
                v159 = v201;
                sub_ABAE90();
                sub_ABAED0();
                v144 = v201;
                sub_ABAEE0();
                sub_ABAEA0();
                v248 = _NSRange.NSRangeIterator.next()();
                value = v248.value;
                v127 = v192;
                a6 = v193;
                if (v248.is_nil)
                {
                  goto LABEL_183;
                }
              }

LABEL_250:
              __break(1u);
LABEL_251:
              __break(1u);
LABEL_252:
              __break(1u);
              goto LABEL_253;
            }

            v119 = v211;
LABEL_183:

            v160 = sub_AB93B0();
            v188 = v161;

            _s8SyllableCMa();
            v162 = swift_allocObject();
            *(v162 + 136) = 0;
            *(v162 + 144) = 2;
            *(v162 + 184) = 0;
            *(v162 + 16) = a6;
            *(v162 + 24) = v127;
            *(v162 + 32) = v204;
            *(v162 + 40) = rangea;
            *(v162 + 48) = v209;
            *(v162 + 56) = v207;
            *(v162 + 64) = v205;
            *(v162 + 72) = v160;
            *(v162 + 80) = v188;
            *(v162 + 88) = _swiftEmptyArrayStorage;
            v25 = v199;
            *(v162 + 192) = v199;
            *(v162 + 200) = v185;
            *(v162 + 208) = 0;
            *(v162 + 216) = v184;
            *(v162 + 224) = v183;
            *(v162 + 152) = v185;
            *(v162 + 160) = 0;
            *(v162 + 168) = v184;
            *(v162 + 176) = v183;
            *(v162 + 96) = v187;
            *(v162 + 104) = v186;
            *(v162 + 112) = v144;
            *(v162 + 120) = a5;
            *(v162 + 128) = v31;
            v163 = v144;

            sub_AB9730();
            if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              sub_AB97A0();
            }

            sub_AB97F0();
            a11 = range_8a;
            v120 = v54 + 80;
            if (range_8a != v119)
            {
              continue;
            }

            break;
          }

LABEL_186:

          v164 = sub_AB93B0();
          v166 = v165;

          if (_swiftEmptyArrayStorage >> 62)
          {
            v167 = sub_ABB060();
          }

          else
          {
            v167 = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
          }

          _s4WordCMa();
          v168 = swift_allocObject();
          *(v168 + 136) = 2;
          *(v168 + 208) = 0;
          *(v168 + 216) = v25;
          *(v168 + 224) = v25;
          *(v168 + 232) = 0;
          *(v168 + 16) = v49;
          *(v168 + 24) = v50;
          *(v168 + 32) = v231;
          *(v168 + 40) = v226;
          *(v168 + 48) = v54;
          *(v168 + 56) = v229;
          *(v168 + 64) = v228;
          *(v168 + 72) = v164;
          *(v168 + 80) = v166;
          *(v168 + 184) = 0;
          *(v168 + 192) = v191;
          *(v168 + 200) = Height;
          *(v168 + 144) = v89;
          *(v168 + 152) = 0;
          *(v168 + 160) = v191;
          *(v168 + 168) = Height;
          *(v168 + 176) = v89;
          *(v168 + 104) = _swiftEmptyArrayStorage;
          *(v168 + 112) = v167;
          *(v168 + 88) = v223;
          *(v168 + 96) = v222;
          *(v168 + 120) = v196;
          *(v168 + 128) = 0;
          v169 = v196;

          sub_AB9730();
          if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_AB97A0();
          }

          sub_AB97F0();

          a11 = v235;
          a6 = v189;
          if (v238 == v63)
          {
            goto LABEL_5;
          }

          v28 = __OFADD__(v46++, 1);
          v24 = a10;
          v45 = v234;
          if (v28)
          {
            goto LABEL_259;
          }

LABEL_77:
          v47 = v233;
        }

        while (v46 < v45);
LABEL_6:

        v26 = v214;
      }

      while (v214 != v202);
    }
  }

  v240[0] = sub_9529FC(v182, sub_952C28);
  sub_951620(v240);
}

double sub_954914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_954958()
{

  return swift_deallocObject();
}

uint64_t sub_9549A8()
{

  return swift_deallocObject();
}

uint64_t sub_9549F0(int64_t a1, void (*a2)(uint64_t *__return_ptr, void *, uint64_t, __n128))
{
  v4 = sub_952E08(a1);
  v5 = v4[2];

  (a2)(&v8, v4 + 4, v5);
  if (!v2)
  {
    v6 = v8;
  }

  return v6 & 1;
}

void sub_954A6C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 1;
  if (a3 >> 1 == a2)
  {
    return;
  }

  v5 = v3;
  v6 = a2;
  while (v6 < v4)
  {
    v8 = *(a1 + 8 * v6);
    v10 = *v5;
    v9 = v5[1];
    v11 = (v9 + 32);
    if (*v5)
    {
      sub_ABB5C0();
      sub_ABB5D0(v8);
      sub_ABB610();
      if (__OFSUB__(1 << *(v10 + 16), 1))
      {
        goto LABEL_33;
      }

      sub_AB4950();
      v12 = sub_AB4980();
      if ((v13 & 1) == 0)
      {
        while (v11[v12] != v8)
        {
          sub_AB49A0();
          v12 = sub_AB4980();
          if (v14)
          {
            goto LABEL_16;
          }
        }

        goto LABEL_5;
      }
    }

    else
    {
      v15 = *(v9 + 16);
      if (v15)
      {
        while (*v11 != v8)
        {
          ++v11;
          if (!--v15)
          {
            goto LABEL_16;
          }
        }

        goto LABEL_5;
      }
    }

LABEL_16:
    swift_retain_n();
    sub_ABAE90();
    sub_ABAED0();
    sub_ABAEE0();
    sub_ABAEA0();
    v16 = v5[1];
    v17 = *(v16 + 16);
    if (!v10)
    {
      if (v17 > 0xF)
      {
        v18 = 0;
LABEL_23:
        v19 = sub_AB49E0();
        if (v18 <= v19)
        {
          v21 = v19;
        }

        else
        {
          v21 = v18;
        }

        v22 = sub_94D838(v16, v21, 0, v18, v20);

        *v5 = v22;
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    swift_beginAccess();
    if (sub_AB49B0() >= v17)
    {
      isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
      v24 = *v5;
      if ((isUniquelyReferenced_native & 1) == 0)
      {
        if (!v24)
        {
          goto LABEL_35;
        }

        v25 = sub_AB49D0();

        *v5 = v25;
        v24 = v25;
      }

      if (!v24)
      {
        goto LABEL_34;
      }

      sub_AB4970();
LABEL_4:

      goto LABEL_5;
    }

    v18 = *(v10 + 24) & 0x3FLL;
    if (v17 > 0xF || v18)
    {
      goto LABEL_23;
    }

    *v5 = 0;
LABEL_5:
    if (++v6 == v4)
    {
      return;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_954D50()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t sub_954D9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_954DE4(id a1)
{
  if (a1 != &dword_0 + 2)
  {
    sub_31838(a1);
  }
}

double block_copy_helper_244(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_954E28()
{
  result = *(v0 + 112);
  if (result)
  {
    v2[0] = 0x3FF0000000000000;
    v2[1] = 0;
    v2[2] = 0;
    v2[3] = 0x3FF0000000000000;
    v2[4] = 0;
    v2[5] = 0;
    return [result setTransform:v2];
  }

  return result;
}

id sub_954E6C()
{
  result = *(v0 + 112);
  if (result)
  {
    return [result setAlpha:1.0];
  }

  return result;
}

id sub_954EA8()
{
  result = *(v0 + 112);
  if (result)
  {
    return [result setAlpha:0.0];
  }

  return result;
}

id sub_954F2C()
{
  result = *(v0 + 208);
  if (result)
  {
    return [result setAlpha:0.0];
  }

  return result;
}

uint64_t sub_954F48()
{

  return swift_deallocObject();
}

id sub_955014()
{
  result = *(v0 + 208);
  if (result)
  {
    v2[0] = 0x3FF0000000000000;
    v2[1] = 0;
    v2[2] = 0;
    v2[3] = 0x3FF0000000000000;
    v2[4] = 0;
    v2[5] = 0;
    return [result setTransform:v2];
  }

  return result;
}

id sub_955058()
{
  result = *(v0 + 208);
  if (result)
  {
    return [result setAlpha:1.0];
  }

  return result;
}

void sub_955074(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_9550CC(a1, *(v2 + 16), *(v2 + 24), *(*(v2 + 32) + 8));
  if (!v3)
  {
    *a2 = v5;
    a2[1] = v6;
  }
}

void sub_9550CC(uint64_t a1, int8x8_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 16);
  sub_AB4A30(v8);
  v9 = 0;
  v10 = *(a4 + 16);
  v11 = a4 + 32;
  v23 = a3;
  v12 = a3 + 32;
  v13 = v8;
  while (2)
  {
    if (v9 == v10)
    {
LABEL_19:
      v20 = *a1;
      v19 = *(a1 + 8);
      v21 = static MPMediaLibraryFilteringOptions.none.getter();

      sub_94FBB0(v20, v19, v13, 0, v21, a2, v23, v22);
      return;
    }

    while (1)
    {
      if (v9 >= v10)
      {
        __break(1u);
LABEL_21:
        __break(1u);
        return;
      }

      v14 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_21;
      }

      v15 = *(v11 + 8 * v9++);
      if (a2)
      {
        v16 = sub_933FBC();
        if (v17)
        {
          goto LABEL_5;
        }

        v18 = v16;
        if (v16 < 0)
        {
          goto LABEL_5;
        }
      }

      else
      {
        if (!v8)
        {
          goto LABEL_5;
        }

        v18 = 0;
        while (*(v12 + 8 * v18) != v15)
        {
          if (v8 == ++v18)
          {
            goto LABEL_5;
          }
        }
      }

      if (sub_AB4A10(v18))
      {
        break;
      }

LABEL_5:
      if (v14 == v10)
      {
        goto LABEL_19;
      }
    }

    if (--v13)
    {
      continue;
    }

    break;
  }

  sub_9529FC(_swiftEmptyArrayStorage, sub_952A98);
}

uint64_t sub_955244()
{

  return swift_deallocObject();
}

uint64_t sub_9552FC()
{

  return swift_deallocObject();
}

void sub_95533C()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) removeFromSuperview];
  v2 = *(v1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel);
  *(v1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel) = 0;
}

id sub_955390()
{
  v1 = *(v0 + 16);
  v3[0] = 0x3FF0000000000000;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0x3FF0000000000000;
  v3[4] = 0;
  v3[5] = 0;
  return [v1 setTransform:v3];
}

uint64_t sub_9553EC()
{

  return swift_deallocObject();
}

uint64_t sub_955434()
{

  return swift_deallocObject();
}

__n128 sub_95546C()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 64) = result;
  *(v1 + 80) = v3;
  return result;
}

void sub_955490(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }
}

uint64_t sub_9554A4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

id sub_9554E4(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}

uint64_t sub_955524()
{

  return swift_deallocObject();
}

Swift::Int sub_955580@<X0>(Swift::Int a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_94E9D4(a1, a2, *(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result & 1;
    *(a3 + 8) = v7;
  }

  return result;
}

uint64_t sub_9555B8()
{

  return swift_deallocObject();
}

uint64_t sub_9555F0()
{

  return swift_deallocObject();
}

id sub_955664(id result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return result;
  }

  return result;
}

double sub_955678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_955708()
{
  result = qword_E229C0;
  if (!qword_E229C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E229C0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7LyricsX06SyncedA8LineViewC015SBS_TextContentD0C0fD0C21TransliterationResult33_2B1CF170FA12E5118C57D48B547982CALLO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy33_8_2(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_955788(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_9557D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_955834(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 8) = (a2 - 1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7LyricsX15AnimationStatusO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_955AE8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      if (v2 == 1)
      {
        return 1;
      }
    }

    else
    {
      v4 = *a2;
      if (*a1)
      {
        if (v2 == 2 && v4 == 1)
        {
          return 1;
        }
      }

      else if (v2 == 2 && v4 == 0)
      {
        return 1;
      }
    }
  }

  else if (!*(a2 + 8))
  {
    return 1;
  }

  return 0;
}

char *sub_955B44()
{
  v1 = v0;
  v2 = *(v0 + 72);
  v3 = *(v0 + 104) - *(v0 + 64);
  MaxX = CGRectGetMaxX(*(v0 + 112));
  Height = CGRectGetHeight(*(v0 + 64));
  v6 = *(v0 + 96);
  if (v6)
  {
    v7 = *(v0 + 64);
    v8 = *(v0 + 72);
    v9 = *(v0 + 80);
    v10 = *(v0 + 88);
    v11 = v6;
    [v11 setFrame:{v7, v8, v9, v10}];
    [*&v11[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView5Glyph18GlyphContainerView_glyphView] setFrame:{v3, v2, MaxX, Height}];
  }

  else
  {
    v12 = *(v0 + 40);
    v13 = *(v0 + 16);
    v14 = v1[3];
    v15 = v1[4];
    v16 = objc_allocWithZone(_s5GlyphC9GlyphViewCMa());
    v17 = CTRunRef.PartialRunView.init(run:range:textPosition:)(v12, v13, 1, v14, v15);
    [v17 setFrame:{v3, v2, MaxX, Height}];
    v18 = v1[8];
    v19 = v1[9];
    v20 = v1[10];
    v21 = v1[11];
    v22 = _s5GlyphC18GlyphContainerViewCMa();
    v23 = objc_allocWithZone(v22);
    *&v23[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView5Glyph18GlyphContainerView_currentAnimators] = _swiftEmptyArrayStorage;
    *&v23[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView5Glyph18GlyphContainerView_glyphView] = v17;
    v37.receiver = v23;
    v37.super_class = v22;
    v24 = v17;
    v25 = objc_msgSendSuper2(&v37, "initWithFrame:", v18, v19, v20, v21);
    if (qword_E21CC8 != -1)
    {
      swift_once();
    }

    v26 = static LyricsOptionsManager.shared;
    if (os_variant_has_internal_content() && sub_923E94(9, *(v26 + 40)))
    {
      v27 = objc_opt_self();
      v28 = v25;
      v29 = [v27 greenColor];
      v30 = [v29 colorWithAlphaComponent:0.7];

      [v28 setBackgroundColor:v30];
      v31 = [v27 yellowColor];
      UIView.Border.init(thickness:color:)();
      UIView.border.setter(v33, v32 & 1, v34);
    }

    v11 = v25;
    [v11 addSubview:v24];

    v35 = *(v1 + 12);
    *(v1 + 12) = v11;
  }

  return v11;
}

id sub_955EF8(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10[0] = 0x3FF0000000000000;
  v10[1] = 0;
  v10[2] = 0;
  v10[3] = 0x3FF0000000000000;
  v10[4] = 0;
  v10[5] = 0;
  [a1 setTransform:v10];
  return UIView.untransformedFrame.setter(a2, a3, a4, a5);
}

void sub_955F74()
{
  v1 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView5Glyph18GlyphContainerView_currentAnimators;
  swift_beginAccess();
  v31 = v1;
  v3 = *(v0 + v1);
  v30 = v3 >> 62;
  v4 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
    goto LABEL_75;
  }

  v5 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
LABEL_3:
  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      if (v30)
      {
        v6 = sub_ABB060();
      }

      else
      {
        v6 = *(v4 + 16);
      }

      goto LABEL_26;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = sub_ABAE20();
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        goto LABEL_66;
      }

      v7 = *(v3 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = [v7 state];

    v10 = __OFADD__(v6, 1);
    if (v9 == &dword_0 + 2 || v9 == 0)
    {
      break;
    }

    ++v6;
    if (v10)
    {
      goto LABEL_67;
    }
  }

  if (!v10)
  {
    if (v30)
    {
      v12 = sub_ABB060();
    }

    else
    {
      v12 = *(v4 + 16);
    }

    v13 = v0;
    if (v6 + 1 != v12)
    {
      v4 = v6 + 5;
      do
      {
        v15 = v4 - 4;
        v0 = (v3 & 0xC000000000000001);
        if ((v3 & 0xC000000000000001) != 0)
        {
          v16 = sub_ABAE20();
        }

        else
        {
          if ((v15 & 0x8000000000000000) != 0)
          {
            goto LABEL_68;
          }

          if (v15 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_69;
          }

          v16 = *(v3 + 8 * v4);
        }

        v17 = v16;
        v18 = [v16 state];

        if (v18 != &dword_0 + 2 && v18 != 0)
        {
          if (v15 != v6)
          {
            if (v0)
            {
              v20 = sub_ABAE20();
              v21 = sub_ABAE20();
            }

            else
            {
              if ((v6 & 0x8000000000000000) != 0)
              {
                goto LABEL_78;
              }

              v22 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
              if (v6 >= v22)
              {
                goto LABEL_79;
              }

              if (v15 >= v22)
              {
                goto LABEL_80;
              }

              v0 = *(v3 + 8 * v4);
              v20 = *(v3 + 8 * v6 + 32);
              v21 = v0;
            }

            v23 = v21;
            isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
            *(v13 + v31) = v3;
            if (!isUniquelyReferenced_nonNull_bridgeObject || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
            {
              v3 = sub_933FC4();
              *(v13 + v31) = v3;
            }

            if ((v6 & 0x8000000000000000) != 0)
            {
              goto LABEL_72;
            }

            v0 = (v3 & 0xFFFFFFFFFFFFFF8);
            if (v6 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_73;
            }

            v25 = &v0[v6];
            v26 = v25[4];
            v25[4] = v23;

            *(v13 + v31) = v3;
            if ((v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
            {
              v3 = sub_933FC4();
              *(v13 + v31) = v3;
              v0 = (v3 & 0xFFFFFFFFFFFFFF8);
              if ((v15 & 0x8000000000000000) != 0)
              {
LABEL_65:
                __break(1u);
LABEL_66:
                __break(1u);
LABEL_67:
                __break(1u);
LABEL_68:
                __break(1u);
LABEL_69:
                __break(1u);
LABEL_70:
                __break(1u);
LABEL_71:
                __break(1u);
LABEL_72:
                __break(1u);
LABEL_73:
                __break(1u);
LABEL_74:
                __break(1u);
LABEL_75:
                v5 = sub_ABB060();
                goto LABEL_3;
              }
            }

            else if ((v15 & 0x8000000000000000) != 0)
            {
              goto LABEL_65;
            }

            if (v15 >= v0[2])
            {
              goto LABEL_74;
            }

            v27 = v0[v4];
            v0[v4] = v20;

            *(v13 + v31) = v3;
          }

          if (__OFADD__(v6++, 1))
          {
            goto LABEL_71;
          }
        }

        v0 = (v4 - 3);
        if (__OFADD__(v15, 1))
        {
          goto LABEL_70;
        }

        if (v3 >> 62)
        {
          v29 = sub_ABB060();
        }

        else
        {
          v29 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
        }

        ++v4;
      }

      while (v0 != v29);
    }

LABEL_26:
    if (v3 >> 62)
    {
      v14 = sub_ABB060();
      if (v14 >= v6)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
      if (v14 >= v6)
      {
LABEL_28:
        sub_99476C(v6, v14, v2);
        swift_endAccess();
        return;
      }
    }

    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
  }

  __break(1u);
}

void sub_956314(void *a1, double a2, double a3, CGFloat a4)
{
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_956D00;
  *(v10 + 24) = v9;
  *&v13.tx = sub_36C08;
  *&v13.ty = v10;
  *&v13.a = _NSConcreteStackBlock;
  *&v13.b = 1107296256;
  *&v13.c = sub_1822E0;
  *&v13.d = &block_descriptor_42_2;
  v11 = _Block_copy(&v13);
  v12 = a1;

  [v8 performWithoutAnimation:v11];
  _Block_release(v11);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    [v12 frame];
    [v12 setFrame:{a2, a3}];
    CGAffineTransformMakeScale(&v13, a4, a4);
    [v12 setTransform:&v13];
  }
}

void sub_9564F8(void *a1, double a2, double a3, double a4)
{
  v5 = v4;
  sub_956B8C();
  isa = UIViewPropertyAnimator.init(springTimingParameters:)(a1).super.isa;
  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  v22 = sub_956C10;
  v23 = v11;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_1B5EB4;
  v21 = &block_descriptor_245;
  v12 = _Block_copy(&v18);
  v13 = v5;

  [(objc_class *)isa addAnimations:v12];
  _Block_release(v12);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = sub_956C6C;
  v23 = v14;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_624AE8;
  v21 = &block_descriptor_22_3;
  v15 = _Block_copy(&v18);

  [(objc_class *)isa addCompletion:v15];
  _Block_release(v15);
  [(objc_class *)isa startAnimationAfterDelay:a4];
  v16 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView5Glyph18GlyphContainerView_currentAnimators;
  swift_beginAccess();
  v17 = isa;
  sub_AB9730();
  if (*(&dword_10 + (*(v13 + v16) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v13 + v16) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_AB97A0();
  }

  sub_AB97F0();
  swift_endAccess();
}

void sub_956748(void *a1, double a2, double a3)
{
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_956CC0;
  *(v8 + 24) = v7;
  v15 = sub_2D4D0;
  v16 = v8;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_1822E0;
  v14 = &block_descriptor_31_3;
  v9 = _Block_copy(&v11);
  v10 = a1;

  [v6 performWithoutAnimation:v9];
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
    v11 = 0x3FF0000000000000;
    v12 = 0;
    v13 = 0;
    v14 = 0x3FF0000000000000;
    v15 = 0;
    v16 = 0;
    [v10 setTransform:&v11];
    [v10 frame];
    [v10 setFrame:{a2, a3}];
  }
}

id sub_95690C(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = a2();
  swift_beginAccess();
  return UIView.setAnchorPoint(_:preserveFrame:)(1, *v2, v2[1]);
}

void sub_95695C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_955F74();
  }
}

id sub_9569E0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = _s5GlyphC18GlyphContainerViewCMa();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_956AD8()
{

  return swift_deallocClassInstance();
}

unint64_t sub_956B8C()
{
  result = qword_E23940;
  if (!qword_E23940)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_E23940);
  }

  return result;
}

uint64_t sub_956BD8()
{

  return swift_deallocObject();
}

double block_copy_helper_245(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_956C34()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_956C88()
{

  return swift_deallocObject();
}

void sub_956D50()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    v2 = sub_ABB060();
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v2; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      sub_ABAE20();
    }

    else
    {
    }

    sub_95BCFC();
  }

LABEL_10:
  v4 = *(v0 + 112);
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *(v0 + 112);
  }

  else
  {
    v5 = 0;
  }

  *(v0 + 112) = 0;
}

id sub_956E60()
{
  result = *(v0 + 112);
  if (!result)
  {
    return result;
  }

  result = [result maskView];
  if (result)
  {
    return result;
  }

  result = *(v0 + 112);
  if (!result)
  {
    return result;
  }

  v2 = [result subviews];
  sub_13C80(0, &qword_E229B0, UIView_ptr);
  v3 = sub_AB9760();

  if (v3 >> 62)
  {
    result = sub_ABB060();
    if (result)
    {
      goto LABEL_7;
    }

LABEL_12:

    return 0;
  }

  result = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = sub_ABAE20();
    goto LABEL_10;
  }

  if (*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
  {
    v4 = *(v3 + 32);
LABEL_10:
    v5 = v4;

    return v5;
  }

  __break(1u);
  return result;
}

void sub_956F64()
{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[2];
  if (v2 >> 62)
  {
    v3 = sub_ABB060();
  }

  else
  {
    v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
  }

  v4 = _swiftEmptyArrayStorage;
  if (v3)
  {
    v24 = _swiftEmptyArrayStorage;

    sub_9276C0(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
      goto LABEL_41;
    }

    v5 = 0;
    v4 = v24;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = sub_ABAE20();
      }

      else
      {
      }

      v7 = *(v6 + 48);
      if (*(v7 + 16))
      {
        v8 = *(v7 + 32);
      }

      else
      {
        v8 = 0;
      }

      v24 = v4;
      v10 = *(v4 + 2);
      v9 = *(v4 + 3);
      if (v10 >= v9 >> 1)
      {
        sub_9276C0((v9 > 1), v10 + 1, 1);
        v4 = v24;
      }

      ++v5;
      *(v4 + 2) = v10 + 1;
      *&v4[8 * v10 + 32] = v8;
    }

    while (v3 != v5);
  }

  v24 = v4;

  sub_951770(&v24);

  if (*(v24 + 2))
  {
    v11 = *(v24 + 4);
  }

  else
  {
    v11 = 0;
  }

  v1[8] = v11;
  v12 = v1[2];
  if (v12 >> 62)
  {
    v13 = sub_ABB060();
  }

  else
  {
    v13 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
  }

  v14 = _swiftEmptyArrayStorage;
  if (v13)
  {
    v24 = _swiftEmptyArrayStorage;

    sub_9276C0(0, v13 & ~(v13 >> 63), 0);
    if ((v13 & 0x8000000000000000) == 0)
    {
      v15 = 0;
      v14 = v24;
      do
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v16 = sub_ABAE20();
        }

        else
        {
        }

        v17 = *(v16 + 48);
        v18 = *(v17 + 16);
        if (v18)
        {
          v19 = *(v17 + 56 * v18 - 16);
        }

        else
        {
          v19 = 0;
        }

        v24 = v14;
        v21 = *(v14 + 2);
        v20 = *(v14 + 3);
        if (v21 >= v20 >> 1)
        {
          sub_9276C0((v20 > 1), v21 + 1, 1);
          v14 = v24;
        }

        ++v15;
        *(v14 + 2) = v21 + 1;
        *&v14[8 * v21 + 32] = v19;
      }

      while (v13 != v15);

      goto LABEL_34;
    }

LABEL_41:
    __break(1u);

    __break(1u);
    return;
  }

LABEL_34:
  v24 = v14;

  sub_951770(&v24);

  v22 = *(v24 + 2);
  if (v22)
  {
    v23 = *&v24[8 * v22 + 24];
  }

  else
  {
    v23 = 0;
  }

  v1[9] = v23;
}

void sub_957278(uint64_t a1)
{
  v3 = *(v1 + 112);
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView);
    if (v4)
    {
      swift_beginAccess();
      v6 = *(v1 + 16);
      if (v6 >> 62)
      {
        v7 = sub_ABB060();
        if (!v7)
        {
          return;
        }
      }

      else
      {
        v7 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
        if (!v7)
        {
          return;
        }
      }

      v8 = v7 - 1;
      if (__OFSUB__(v7, 1))
      {
        __break(1u);
      }

      else if ((v6 & 0xC000000000000001) == 0)
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_23;
        }

        if (v8 >= *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          goto LABEL_26;
        }

        v9 = *(v6 + 8 * v8 + 32);
        v10 = v4;

LABEL_10:
        v2 = *(v9 + 104);
        if (!(v2 >> 62))
        {
          v11 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
          if (v11)
          {
            goto LABEL_12;
          }

          goto LABEL_24;
        }

LABEL_23:
        v11 = sub_ABB060();
        if (v11)
        {
LABEL_12:
          v12 = v11 - 1;
          if (!__OFSUB__(v11, 1))
          {
            if ((v2 & 0xC000000000000001) == 0)
            {
              if ((v12 & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (v12 < *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
              {
                v13 = *(v2 + 8 * v12 + 32);

                if (*(v1 + 120))
                {
LABEL_17:

                  return;
                }

                goto LABEL_28;
              }

              __break(1u);
              return;
            }

LABEL_27:

            v13 = sub_ABAE20();

            if (*(v1 + 120))
            {
              goto LABEL_17;
            }

LABEL_28:
            [*(a1 + 200) lineHeight];
            v16 = vabdd_f64(v15 * *(a1 + 256) + *(a1 + 464) + *(a1 + 464), CGRectGetHeight(*(v1 + 80))) * 0.5;
            *(v1 + 120) = 1;
            v17 = objc_opt_self();
            v18 = *(a1 + 648);
            v19 = swift_allocObject();
            *(v19 + 16) = v1;
            *(v19 + 24) = v4;
            *(v19 + 32) = v13;
            memcpy((v19 + 40), a1, 0x2B0uLL);
            *(v19 + 728) = v16;
            aBlock[4] = sub_95A608;
            aBlock[5] = v19;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1B5EB4;
            aBlock[3] = &block_descriptor_47_3;
            v20 = _Block_copy(aBlock);
            v21 = v4;

            sub_95313C(a1, v24);

            [v17 animateWithDuration:196609 delay:v20 options:0 animations:v18 completion:0.0];
            _Block_release(v20);
            sub_13C80(0, &qword_E239C0, OS_dispatch_queue_ptr);
            v22 = sub_ABA150();
            v23 = swift_allocObject();
            swift_weakInit();

            OS_dispatch_queue.asyncAfter(_:block:)(sub_95A654, v23, v18);

            return;
          }

LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

LABEL_24:

        return;
      }

      v14 = v4;

      v9 = sub_ABAE20();

      goto LABEL_10;
    }
  }
}

id sub_95763C(uint64_t a1, id a2, uint64_t a3, uint64_t a4, double a5)
{
  if (*(a1 + 58))
  {
    [a2 frame];
    v10 = v9;
    v12 = v11;
    v13 = *(a4 + 504);
    Width = CGRectGetWidth(*(a1 + 80));
    v15 = v12;
    v16 = v10;
    v17 = Width;
    v18 = -(v13 + a5);
    v19 = v13 + v17 + a5;
  }

  else
  {
    v19 = CGRectGetMaxX(*(a3 + 152)) + *(a4 + 504) + a5;
    [a2 frame];
  }

  return [a2 setFrame:{v18, v16, v19, v15}];
}

double sub_957724(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 120) = 0;
  }

  return result;
}

void sub_957774(unint64_t a1, double a2)
{
  swift_beginAccess();
  v14 = *(v3 + 16);
  if (v14 >> 62)
  {
    v2 = *(v3 + 16);
    v15 = sub_ABB060();
    v14 = v2;
    if (!v15)
    {
      goto LABEL_53;
    }

    goto LABEL_3;
  }

  v15 = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8));
  if (v15)
  {
LABEL_3:
    v112 = *(v3 + 56);
    v110 = *(v3 + 57);
    v114 = v14 & 0xC000000000000001;
    v109 = v14 & 0xFFFFFFFFFFFFFF8;
    v108 = v3;
    v118 = &v121;

    v5 = 0;
    v9 = 1107296256;
    v111 = v15;
    while (1)
    {
      if (v114)
      {
        v21 = sub_ABAE20();
        v22 = __OFADD__(v5++, 1);
        if (v22)
        {
          goto LABEL_86;
        }
      }

      else
      {
        v23 = *(v109 + 16);
        if (v5 >= v23)
        {
          __break(1u);
          goto LABEL_100;
        }

        v22 = __OFADD__(v5++, 1);
        if (v22)
        {
LABEL_86:
          __break(1u);
LABEL_87:

LABEL_187:

          goto LABEL_188;
        }
      }

      v116 = v21;
      if (v112)
      {
        goto LABEL_39;
      }

      v15 = *(v21 + 104);
      if (v15 >> 62)
      {
        v4 = sub_ABB060();
        if (!v4)
        {
          goto LABEL_39;
        }

LABEL_17:
        if (v4 >= 1)
        {
          v7 = 0;
          v2 = v15 & 0xC000000000000001;
          while (1)
          {
            if (v2)
            {
              v6 = sub_ABAE20();
            }

            else
            {
              v6 = *(v15 + 8 * v7 + 32);
            }

            v8 = *(v6 + 16);
            v30 = v8 <= a2;
            if (*(v6 + 144) >= 2u)
            {
              if (*(v6 + 136))
              {
                if (v8 <= a2)
                {
                  goto LABEL_21;
                }

                v30 = 0;
              }

              else if (v8 > a2)
              {
                goto LABEL_21;
              }
            }

            sub_955490(v30, 2u);
            v24 = *(v6 + 136);
            v31 = *(v6 + 144);
            if (v31 == 1)
            {
              if (v24 && v8 <= a2)
              {
LABEL_37:
                sub_955664(*(v6 + 136), *(v6 + 144));
                sub_955664(v24, v31);
                [(objc_class *)v24 stopAnimation:1];
                goto LABEL_20;
              }
            }

            else if (!*(v6 + 144) && v24 && v8 > a2)
            {
              goto LABEL_37;
            }

            sub_13C80(0, &qword_E23940, UIViewPropertyAnimator_ptr);
            v24 = UIViewPropertyAnimator.init(springTimingParameters:)([objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:14.0 damping:7.0 initialVelocity:{0.0, 0.0}]).super.isa;
LABEL_20:
            v25 = swift_allocObject();
            *(v25 + 16) = v6;
            *(v25 + 24) = v8 > a2;
            memcpy((v25 + 32), a1, 0x2B0uLL);
            v125[4] = sub_95A3A8;
            v125[5] = v25;
            v125[0] = _NSConcreteStackBlock;
            v125[1] = 1107296256;
            v125[2] = sub_1B5EB4;
            v125[3] = &block_descriptor_23_5;
            v26 = _Block_copy(v125);

            sub_95313C(a1, &aBlock);

            [(objc_class *)v24 addAnimations:v26];
            _Block_release(v26);
            v27 = swift_allocObject();
            *(v27 + 16) = v6;
            *(v27 + 24) = v8 > a2;
            v123 = sub_95A3F0;
            v124 = v27;
            aBlock = _NSConcreteStackBlock;
            v120 = 1107296256;
            v121 = sub_624AE8;
            v122 = &block_descriptor_29_2;
            v28 = _Block_copy(&aBlock);

            [(objc_class *)v24 addCompletion:v28];
            _Block_release(v28);

            v29 = *(v6 + 136);
            *(v6 + 136) = v24;
            LOBYTE(v26) = *(v6 + 144);
            *(v6 + 144) = v8 > a2;
            v3 = v24;
            sub_955490(v29, v26);
            [v3 startAnimation];

LABEL_21:
            ++v7;

            if (v4 == v7)
            {
              goto LABEL_39;
            }
          }
        }

LABEL_100:
        __break(1u);
        goto LABEL_101;
      }

      v23 = v15 & 0xFFFFFFFFFFFFFF8;
      v4 = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8));
      if (v4)
      {
        goto LABEL_17;
      }

LABEL_39:
      if (!v110)
      {
        v3 = v116;
        sub_95C1E4(a1, a2);

        goto LABEL_7;
      }

      v32 = *(v116 + 208);
      if (v32)
      {
        v33 = *&v32[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_crossfadeAnimationParameters];
        if (v33)
        {
          v4 = *&v32[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_crossfadeAnimationParameters + 8];
          v2 = *(v116 + 48);
          if (*(v2 + 16))
          {
            if (*(v2 + 32) > a2)
            {
              goto LABEL_44;
            }
          }

          else if (a2 < 0.0)
          {
LABEL_44:
            v2 = *&v32[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_overlayView];
            LOBYTE(v6) = v116;
            v3 = v32;
            sub_9554E4(v33, v4);
            v34 = v2;
            [v34 setBackgroundColor:v33];

            goto LABEL_7;
          }

          v35 = *&v32[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_overlayView];
          v6 = v32;
          sub_9554E4(v33, v4);
          v36 = [v35 backgroundColor];
          if (v36)
          {
            v7 = v36;
            sub_13C80(0, &unk_E23820, UIColor_ptr);
            v37 = v4;
            v3 = sub_ABA790();

            if (v3)
            {

              goto LABEL_7;
            }
          }

          v38 = *(v2 + 16);
          if (v38)
          {
            v16 = *(v2 + 32);
            v17 = *(v2 + 32 + 56 * v38 - 48);
          }

          else
          {
            v16 = 0.0;
            v17 = 0.0;
          }

          v2 = v116;
          v3 = objc_opt_self();
          v8 = v17 - v16;
          v18 = swift_allocObject();
          v18[2] = v6;
          v18[3] = v33;
          v18[4] = v4;
          v123 = sub_95A4A8;
          v124 = v18;
          aBlock = _NSConcreteStackBlock;
          v120 = 1107296256;
          v121 = sub_1B5EB4;
          v122 = &block_descriptor_41_3;
          v19 = _Block_copy(&aBlock);
          v6 = v6;
          v4 = v4;
          v20 = v33;

          [v3 animateWithDuration:v19 animations:v8];

          _Block_release(v19);
        }
      }

LABEL_7:
      v15 = v111;
      if (v5 == v111)
      {

        v3 = v108;
        break;
      }
    }
  }

LABEL_53:
  if ((*(v3 + 120) & 1) == 0 && (*(v3 + 57) & 1) == 0)
  {
    v39 = *(v3 + 112);
    if (v39)
    {
      v40 = *(v39 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView);
      if (v40)
      {
        v41 = *(a1 + 200);
        v7 = v3;
        v15 = v40;
        [v41 lineHeight];
        v8 = vabdd_f64(v42 * *(a1 + 256) + *(a1 + 464) + *(a1 + 464), CGRectGetHeight(*(v3 + 80))) * 0.5;
        v11 = *(a1 + 504);
        if (*(v3 + 72) > a2)
        {
          if (*(v3 + 64) > a2)
          {
            *(v3 + 128) = 0;

            if (*(v3 + 58))
            {
              v43 = *(v3 + 80);
              v44 = *(v3 + 88);
              v45 = *(v3 + 96);
              v46 = *(v3 + 104);
              v47 = v15;
              v126.origin.x = v43;
              v126.origin.y = v44;
              v126.size.width = v45;
              v126.size.height = v46;
              v48 = v8 * 0.5 + CGRectGetWidth(v126);
              [v47 frame];
              [v47 setFrame:v48];
            }

            else
            {
              v47 = v15;
            }

            [v47 frame];
            [v47 setFrame:{v65, v66, v8, v67, v108}];
            goto LABEL_85;
          }

          sub_9588AC(a2);
          v5 = v51;
          a1 = v52;
          v53 = sub_958AA4(a2);
          v4 = v53;
          v3 = v54;
          if (v5 && v53)
          {
            v55 = *(v7 + 128);
            if (v55 && v53 == v55)
            {

              return;
            }

            LOBYTE(v6) = *(v7 + 58);
            v2 = *(v7 + 16);
            v23 = v2 >> 62;
            if (v6)
            {
              if (!v23)
              {
                if (*(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
                {
LABEL_91:
                  if ((v2 & 0xC000000000000001) != 0)
                  {

                    v75 = sub_ABAE20();

                    v68 = *(v75 + 104);

                    swift_unknownObjectRelease();
                    if ((v68 & 0x8000000000000000) == 0 && (v68 & 0x4000000000000000) == 0)
                    {
LABEL_95:
                      if (*(&dword_10 + (v68 & 0xFFFFFFFFFFFFFF8)))
                      {
LABEL_96:
                        if ((v68 & 0xC000000000000001) != 0)
                        {
                          goto LABEL_194;
                        }

                        if (*(&dword_10 + (v68 & 0xFFFFFFFFFFFFFF8)))
                        {
                          v69 = *(v68 + 32);
                          goto LABEL_115;
                        }

                        __break(1u);
                        goto LABEL_196;
                      }

LABEL_144:

                      goto LABEL_145;
                    }

LABEL_137:
                    if (sub_ABB060())
                    {
                      goto LABEL_96;
                    }

                    goto LABEL_144;
                  }

                  if (*(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
                  {
                    v68 = *(*(v2 + 32) + 104);

                    if ((v68 & 0x8000000000000000) == 0 && (v68 & 0x4000000000000000) == 0)
                    {
                      goto LABEL_95;
                    }

                    goto LABEL_137;
                  }

                  goto LABEL_140;
                }

LABEL_134:

                goto LABEL_145;
              }

LABEL_131:
              if (sub_ABB060())
              {
                goto LABEL_91;
              }

              goto LABEL_134;
            }

LABEL_101:
            if (v23)
            {
              v70 = sub_ABB060();
              if (!v70)
              {
                goto LABEL_134;
              }
            }

            else
            {
              v70 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
              if (!v70)
              {
                goto LABEL_134;
              }
            }

            v71 = v70 - 1;
            if (__OFSUB__(v70, 1))
            {
              __break(1u);
LABEL_140:
              __break(1u);
              goto LABEL_141;
            }

            if ((v2 & 0xC000000000000001) != 0)
            {
LABEL_141:

              v76 = sub_ABAE20();

              v72 = *(v76 + 104);

              swift_unknownObjectRelease();
              if (v72 < 0 || (v72 & 0x4000000000000000) != 0)
              {
                goto LABEL_143;
              }

              goto LABEL_109;
            }

            if ((v71 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_175:
              __break(1u);
            }

            else if (v71 < *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
            {
              v72 = *(*(v2 + 8 * v71 + 32) + 104);

              if (v72 < 0 || (v72 & 0x4000000000000000) != 0)
              {
LABEL_143:
                v73 = sub_ABB060();
                if (!v73)
                {
                  goto LABEL_144;
                }

                goto LABEL_110;
              }

LABEL_109:
              v73 = *(&dword_10 + (v72 & 0xFFFFFFFFFFFFFF8));
              if (!v73)
              {
                goto LABEL_144;
              }

LABEL_110:
              v22 = __OFSUB__(v73, 1);
              v74 = v73 - 1;
              if (!v22)
              {
                if ((v72 & 0xC000000000000001) != 0)
                {
                  goto LABEL_194;
                }

                if ((v74 & 0x8000000000000000) == 0)
                {
                  if (v74 < *(&dword_10 + (v72 & 0xFFFFFFFFFFFFFF8)))
                  {
                    v69 = *(v72 + 8 * v74 + 32);
                    while (1)
                    {
LABEL_115:

                      if (v69 == v4)
                      {
                        v10 = 1.0;
                      }

                      else
                      {
LABEL_145:
                        v77 = *(v4 + 8);
                        if (!v77 || (v10 = 0.5, v77 >= 3))
                        {
                          if (!v3 || (, v78 = sub_AB9420(), , v10 = 0.25, v78 >= 3))
                          {
                            v10 = 0.12;
                          }
                        }
                      }

                      if (v6)
                      {
                        v79 = *(v4 + 19) - v11 * v10 - v8;
                        [v15 frame];
                        v81 = v80;
                        v82 = v7;
                        v83 = CGRectGetWidth(*(v7 + 80)) - v79;
                        goto LABEL_183;
                      }

                      v9 = *(v4 + 2);
                      a2 = *(v4 + 3);
                      v71 = *(v4 + 4);
                      v2 = *(v4 + 5);
                      v85 = *(v4 + 6);
                      v84 = *(v4 + 7);
                      v86 = *(v4 + 8);
                      v6 = *(v5 + 104);
                      if (v6 >> 62)
                      {
                        v116 = *(v4 + 7);
                        v118 = *(v4 + 6);
                        v87 = sub_ABB060();
                        v85 = v118;
                        v84 = v116;
                        if (!v87)
                        {
LABEL_172:

                          if (!v2)
                          {
                            goto LABEL_190;
                          }

LABEL_179:

                          goto LABEL_180;
                        }
                      }

                      else
                      {
                        v87 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
                        if (!v87)
                        {
                          goto LABEL_172;
                        }
                      }

                      v114 = v86;
                      v88 = v87 - 1;
                      if (__OFSUB__(v87, 1))
                      {
                        goto LABEL_175;
                      }

                      v116 = v84;
                      v118 = v85;
                      if ((v6 & 0xC000000000000001) != 0)
                      {
                        goto LABEL_177;
                      }

                      if ((v88 & 0x8000000000000000) != 0)
                      {
                        __break(1u);
                      }

                      else if (v88 < *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
                      {
                        v89 = *(v6 + 8 * v88 + 32);
                        v91 = *(v89 + 16);
                        v90 = *(v89 + 24);
                        v93 = *(v89 + 32);
                        v92 = *(v89 + 40);
                        v117 = *(v89 + 48);
                        v115 = *(v89 + 56);
                        v113 = *(v89 + 64);

                        if (!v2)
                        {
                          goto LABEL_178;
                        }

                        goto LABEL_159;
                      }

                      __break(1u);
LABEL_194:
                      v69 = sub_ABAE20();
                      swift_unknownObjectRelease();
                    }
                  }

                  goto LABEL_198;
                }

LABEL_197:
                __break(1u);
LABEL_198:
                __break(1u);
                return;
              }

LABEL_196:
              __break(1u);
              goto LABEL_197;
            }

            __break(1u);
LABEL_177:

            v95 = sub_ABAE20();

            v96 = v95;
            v91 = *(v95 + 16);
            v90 = *(v95 + 24);
            v93 = *(v95 + 32);
            v92 = v96[5];
            v117 = v96[6];
            v115 = v96[7];
            v113 = v96[8];

            swift_unknownObjectRelease();
            if (v2)
            {
LABEL_159:
              if (!v92 || *&v9 != v91 || a2 != v90)
              {
                goto LABEL_179;
              }

              if (v71 == v93 && v92 == v2)
              {
              }

              else
              {
                v94 = sub_ABB3C0();

                if ((v94 & 1) == 0)
                {
                  goto LABEL_180;
                }
              }

              if (v118 == v117 && v116 == v115)
              {

                if (v114 == v113 && a1)
                {
LABEL_191:
                  MaxX = *(a1 + 176);
LABEL_182:
                  [v15 frame];
                  v79 = v98;
                  v81 = v99;
                  v83 = v8 + v11 * v10 + MaxX;
                  v82 = v7;
LABEL_183:
                  [v15 frame];
                  v101 = v100;

                  v102 = *(v82 + 112);
                  if (v102)
                  {
                    v103 = *(v4 + 3) - *(v4 + 2);
                    v104 = objc_opt_self();
                    v105 = swift_allocObject();
                    *(v105 + 16) = v102;
                    *(v105 + 24) = v79;
                    *(v105 + 32) = v81;
                    *(v105 + 40) = v83;
                    *(v105 + 48) = v101;
                    v123 = sub_95A434;
                    v124 = v105;
                    aBlock = _NSConcreteStackBlock;
                    v120 = 1107296256;
                    v121 = sub_1B5EB4;
                    v122 = &block_descriptor_35_5;
                    v106 = _Block_copy(&aBlock);
                    v107 = v102;

                    [v104 animateWithDuration:196609 delay:v106 options:0 animations:v103 completion:0.0];
                    _Block_release(v106);
                  }

                  else
                  {
                  }

                  *(v7 + 128) = v4;
                  goto LABEL_187;
                }
              }

              else
              {
LABEL_180:
              }
            }

            else
            {
LABEL_178:
              if (v92)
              {
                goto LABEL_179;
              }

LABEL_190:

              if (a1)
              {
                goto LABEL_191;
              }
            }

            MaxX = CGRectGetMaxX(*(v4 + 152));
            goto LABEL_182;
          }

          goto LABEL_87;
        }

        if (*(v3 + 58))
        {
          v47 = v15;
          [v47 frame];
          [v47 setFrame:{-(v11 + v8), v49, v11 + v8 + CGRectGetWidth(*(v3 + 80)), v50, v108}];
LABEL_85:

          goto LABEL_188;
        }

        v56 = *(v3 + 16);
        if (v56 >> 62)
        {
          v57 = sub_ABB060();
          if (!v57)
          {
            goto LABEL_188;
          }
        }

        else
        {
          v57 = *(&dword_10 + (v56 & 0xFFFFFFFFFFFFFF8));
          if (!v57)
          {
LABEL_188:
            [v15 setNeedsDisplay];

            return;
          }
        }

        v2 = v57 - 1;
        if (__OFSUB__(v57, 1))
        {
          __break(1u);
        }

        else if ((v56 & 0xC000000000000001) == 0)
        {
          if ((v2 & 0x8000000000000000) != 0)
          {
            __break(1u);
            goto LABEL_124;
          }

          if (v2 >= *(&dword_10 + (v56 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            goto LABEL_127;
          }

          v2 = *(v56 + 8 * v2 + 32);

LABEL_75:
          a1 = *(v2 + 104);
          if (!(a1 >> 62))
          {
            v58 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
            if (!v58)
            {
              goto LABEL_187;
            }

LABEL_77:
            v3 = v58 - 1;
            if (!__OFSUB__(v58, 1))
            {
              if ((a1 & 0xC000000000000001) == 0)
              {
                if ((v3 & 0x8000000000000000) != 0)
                {
                  __break(1u);
                }

                else if (v3 < *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
                {
                  v59 = *(a1 + 8 * v3 + 32);

LABEL_82:
                  v60 = v59[19];
                  v61 = v59[20];
                  v62 = v59[21];
                  v63 = v59[22];
                  v64 = v15;
                  v127.origin.x = v60;
                  v127.origin.y = v61;
                  v127.size.width = v62;
                  v127.size.height = v63;
                  CGRectGetMaxX(v127);
                  [v64 frame];
                  [v64 setFrame:?];

                  goto LABEL_188;
                }

                __break(1u);
                goto LABEL_131;
              }

LABEL_128:

              v59 = sub_ABAE20();

              goto LABEL_82;
            }

LABEL_127:
            __break(1u);
            goto LABEL_128;
          }

LABEL_124:
          v58 = sub_ABB060();
          if (!v58)
          {
            goto LABEL_187;
          }

          goto LABEL_77;
        }

        v2 = sub_ABAE20();

        goto LABEL_75;
      }
    }
  }
}

void sub_9588AC(double a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (v3 >> 62)
  {
LABEL_28:
    v4 = sub_ABB060();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    if (v4)
    {
LABEL_3:

      for (i = 4; ; ++i)
      {
        v6 = i - 4;
        if ((v3 & 0xC000000000000001) != 0)
        {
          v7 = sub_ABAE20();
        }

        else
        {
          if (v6 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_27;
          }
        }

        v8 = *(v7 + 48);
        v9 = *(v8 + 16);
        if (v9)
        {
          v10 = *(v8 + 32);
          v11 = *(v8 + 32 + 56 * v9 - 48);

          if (v10 > v11)
          {
            __break(1u);
LABEL_26:
            __break(1u);
LABEL_27:
            __break(1u);
            goto LABEL_28;
          }
        }

        else
        {

          v10 = 0.0;
          v11 = 0.0;
        }

        if (v10 <= a1 && v11 > a1)
        {
          break;
        }

        v13 = i - 3;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_26;
        }

        if (v13 == v4)
        {

          return;
        }
      }

      swift_beginAccess();
      v14 = *(v1 + 16);
      if ((v14 & 0xC000000000000001) != 0)
      {
        sub_ABAE20();
      }

      else
      {
        if (v6 >= *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8)))
        {
LABEL_32:
          __break(1u);
          return;
        }
      }

      swift_endAccess();
      if (!__OFADD__(v6, 1))
      {
        v15 = _s4WordCMa();

        Array.subscript.getter(v15, v16);

        return;
      }

      __break(1u);
      goto LABEL_32;
    }
  }
}

uint64_t sub_958AA4(double a1)
{
  swift_beginAccess();

  v3 = sub_959440(v2);

  if (v3 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
  {
    v5 = v3 & 0xC000000000000001;
    v6 = 4;
    while (1)
    {
      v7 = v6 - 4;
      if (v5)
      {
        v8 = sub_ABAE20();
      }

      else
      {
        if (v7 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_25;
        }
      }

      v9 = *(v8 + 16);
      v10 = *(v8 + 24);

      if (v9 > v10)
      {
        goto LABEL_23;
      }

      if (v9 <= a1 && v10 > a1)
      {
        break;
      }

      v12 = v6 - 3;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_24;
      }

      ++v6;
      if (v12 == i)
      {
        goto LABEL_16;
      }
    }

    if (v5)
    {
      v14 = sub_ABAE20();
      if (!__OFADD__(v7, 1))
      {
        goto LABEL_19;
      }
    }

    else
    {

      if (!__OFADD__(v7, 1))
      {
LABEL_19:
        v15 = v14;
        v16 = _s8SyllableCMa();
        Array.subscript.getter(v16, &v17);

        return v15;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_16:

  return 0;
}

id sub_958C34(void *a1, char a2, void *a3)
{
  v4 = v3;
  v5 = a3;
  v8 = *(v3 + 112);
  if (v8)
  {
    v9 = *(v3 + 80);
    v10 = *(v3 + 88);
    v11 = *(v3 + 96);
    v12 = *(v3 + 104);
    v13 = &selRef__authenticateReturningError_;
    v14 = v8;
    [v14 setFrame:{v9, v10, v11, v12}];
    v15 = sub_956E60();
    if (!v15)
    {
      v15 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, *(v3 + 96), *(v3 + 104)}];
    }

    v67 = v15;
    [v15 setFrame:{0.0, 0.0, *(v3 + 96), *(v3 + 104)}];
  }

  else
  {
    v16 = *(v3 + 80);
    v17 = *(v3 + 88);
    v18 = *(v3 + 96);
    v19 = *(v3 + 104);
    v20 = *(v3 + 58);
    v21 = *(v4 + 57);
    v22 = _s4LineC8LineViewCMa();
    v23 = v5;
    v24 = objc_allocWithZone(v22);
    *&v24[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_backgroundColorLayer] = 0;
    *&v24[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView] = 0;
    v24[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_kind] = a2 & 1;
    memcpy(&v24[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_specs], v23, 0x2B0uLL);
    v24[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_animationKind] = v21;
    v24[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_direction] = v20;
    sub_95313C(v23, aBlock);
    v73.receiver = v24;
    v73.super_class = v22;
    v13 = &selRef__authenticateReturningError_;
    v25 = objc_msgSendSuper2(&v73, "initWithFrame:", v16, v17, v18, v19);
    v26 = v25;
    if ((v21 & 1) == 0)
    {
      v27 = v25;
      v72 = a1;
      v28 = [a1 CGColor];
      v29 = [objc_allocWithZone(CALayer) init];
      [v29 setBackgroundColor:v28];
      if (qword_E21CC8 != -1)
      {
        swift_once();
      }

      v30 = static LyricsOptionsManager.shared;
      if (!os_variant_has_internal_content() || !sub_923E94(9, *(v30 + 40)))
      {
        v31 = [v27 layer];
        [v31 addSublayer:v29];

        v28 = v31;
      }

      v32 = *&v27[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_backgroundColorLayer];
      *&v27[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_backgroundColorLayer] = v29;

      v33 = sub_959780(a2 & 1, a3, v20);
      v34 = *&v27[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView];
      *&v27[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView] = v33;

      a1 = v72;
    }

    v35 = *(v4 + 96);
    v36 = *(v4 + 104);
    v37 = objc_allocWithZone(UIView);
    v14 = v26;
    v67 = [v37 initWithFrame:{0.0, 0.0, v35, v36}];
    v38 = *(v4 + 112);
    *(v4 + 112) = v14;

    v5 = a3;
  }

  v65 = *(v4 + 57);
  if (v65 == 1)
  {
    v39 = 61;
    if (a2)
    {
      v39 = 62;
    }

    v40 = v5[v39];
    v41 = v40;
    v42 = a1;
  }

  else
  {
    a1 = 0;
    v40 = 0;
  }

  swift_beginAccess();
  v43 = *(v4 + 16);
  if (v43 >> 62)
  {
LABEL_34:
    v44 = sub_ABB060();
    v45 = v67;
    if (v44)
    {
      goto LABEL_21;
    }

LABEL_35:
    v43 = 0;
    v13 = 0;
    if ((v65 & 1) == 0)
    {
LABEL_36:
      if (qword_E21CC8 != -1)
      {
        swift_once();
      }

      v55 = static LyricsOptionsManager.shared;
      if (!os_variant_has_internal_content() || !sub_923E94(9, *(v55 + 40)))
      {
        [v14 setMaskView:{v45, v64}];
        goto LABEL_46;
      }
    }

    goto LABEL_40;
  }

  v44 = *(&dword_10 + (v43 & 0xFFFFFFFFFFFFFF8));
  v45 = v67;
  if (!v44)
  {
    goto LABEL_35;
  }

LABEL_21:
  if (v44 < 1)
  {
    __break(1u);
    goto LABEL_49;
  }

  v64 = v14;

  v69 = 0;
  v70 = 0;
  v14 = 0;
  v71 = v44;
  do
  {
    if ((v43 & 0xC000000000000001) != 0)
    {
      v49 = sub_ABAE20();
    }

    else
    {
      v49 = *(v43 + 8 * v14 + 32);
    }

    v50 = swift_allocObject();
    v50[2] = v49;
    memcpy(v50 + 3, v5, 0x2B0uLL);
    v50[89] = a1;
    v50[90] = v40;
    v50[91] = v45;
    if (*(v49 + 208))
    {
      sub_95313C(v5, aBlock);

      v46 = v45;
      sub_9554E4(a1, v40);
      sub_95CD3C(v5, a1, v40);
      v48 = v47;
      [v46 addSubview:v47];
    }

    else
    {
      v68 = objc_opt_self();
      v51 = swift_allocObject();
      *(v51 + 16) = sub_95A1FC;
      *(v51 + 24) = v50;
      sub_95313C(v5, aBlock);

      v52 = v45;
      v53 = a1;
      sub_9554E4(a1, v40);

      sub_17654(v70, v69);
      v5 = swift_allocObject();
      v70 = sub_70638;
      v5[2] = sub_70638;
      v5[3] = v51;
      aBlock[4] = sub_2D4D0;
      v75 = v5;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1822E0;
      aBlock[3] = &block_descriptor_246;
      a1 = _Block_copy(aBlock);
      v13 = v75;

      [v68 performWithoutAnimation:a1];

      _Block_release(a1);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
        goto LABEL_34;
      }

      v69 = v51;
      a1 = v53;
      v5 = a3;
      v45 = v67;
    }

    v14 = v14 + 1;
  }

  while (v71 != v14);

  v14 = v64;
  v13 = v69;
  v43 = v70;
  if ((v65 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_40:
  [v14 addSubview:{v45, v64}];
  if (qword_E21CC8 != -1)
  {
LABEL_49:
    swift_once();
  }

  v56 = static LyricsOptionsManager.shared;
  if ((os_variant_has_internal_content() & 1) != 0 && sub_923E94(9, *(v56 + 40)))
  {
    v57 = objc_opt_self();
    v58 = [v57 grayColor];
    [v14 setBackgroundColor:v58];

    v59 = [v57 blackColor];
    UIView.Border.init(thickness:color:)();
    UIView.border.setter(v61, v60 & 1, v62);
LABEL_46:

    sub_1253F8(a1, v40);
    goto LABEL_47;
  }

  sub_1253F8(a1, v40);

LABEL_47:
  sub_17654(v43, v13);
  return v14;
}

void *sub_959440(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_46;
  }

  v1 = *(&dword_10 + (isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8));
  while (v1)
  {
    v2 = 0;
    v28 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = _swiftEmptyArrayStorage;
    v27 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v25 = v1;
    while (1)
    {
      if (v29)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_ABAE20();
        v4 = isUniquelyReferenced_nonNull_bridgeObject;
        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v2 >= *(v28 + 16))
        {
          goto LABEL_41;
        }

        v4 = *(v27 + 8 * v2);

        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_40;
        }
      }

      v6 = *(v4 + 104);

      v7 = v6 >> 62;
      v8 = v6 >> 62 ? sub_ABB060() : *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
      v9 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
      v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
      {
        goto LABEL_39;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v9)
        {
          v11 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v10 <= *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

LABEL_18:
        sub_ABB060();
        goto LABEL_19;
      }

      if (v9)
      {
        goto LABEL_18;
      }

LABEL_19:
      isUniquelyReferenced_nonNull_bridgeObject = sub_ABAE30();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v11 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_20:
      v12 = *(v11 + 16);
      v13 = *(v11 + 24);
      if (v7)
      {
        v15 = v11;
        isUniquelyReferenced_nonNull_bridgeObject = sub_ABB060();
        v11 = v15;
        v14 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_24:
          if (((v13 >> 1) - v12) < v8)
          {
            goto LABEL_43;
          }

          v31 = v3;
          v16 = v11 + 8 * v12 + 32;
          v26 = v11;
          if (v7)
          {
            if (v14 < 1)
            {
              goto LABEL_45;
            }

            sub_95A4B4();
            for (i = 0; i != v14; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22CE8, &unk_B3A0C0);
              v18 = sub_735EC4(v30, i, v6);
              v20 = *v19;

              (v18)(v30, 0);
              *(v16 + 8 * i) = v20;
            }
          }

          else
          {
            _s8SyllableCMa();
            swift_arrayInitWithCopy();
          }

          v1 = v25;
          v3 = v31;
          if (v8 >= 1)
          {
            v21 = *(v26 + 16);
            v5 = __OFADD__(v21, v8);
            v22 = v21 + v8;
            if (v5)
            {
              goto LABEL_44;
            }

            *(v26 + 16) = v22;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v14 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
        if (v14)
        {
          goto LABEL_24;
        }
      }

      if (v8 > 0)
      {
        goto LABEL_42;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_ABB060();
    v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
    {
      goto LABEL_13;
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    v23 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_ABB060();
    isUniquelyReferenced_nonNull_bridgeObject = v23;
  }

  return _swiftEmptyArrayStorage;
}

char *sub_959780(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  [*(a2 + 200) lineHeight];
  v9 = v8 * *(a2 + 256) + *(a2 + 464) + *(a2 + 464);
  [v4 frame];
  v10 = vabdd_f64(v9, CGRectGetHeight(v28)) * 0.5;
  if (a3)
  {
    [v4 frame];
    v11 = v10 * 0.5 + CGRectGetWidth(v29);
  }

  else
  {
    v11 = -v10;
  }

  [v4 frame];
  v12 = v10 + v10 + CGRectGetHeight(v30);
  v13 = 488;
  if (a1)
  {
    v13 = 496;
  }

  v14 = *(a2 + v13);
  v15 = *(a2 + 504);
  v16 = type metadata accessor for LineProgressGradientView();
  v17 = objc_allocWithZone(v16);
  *&v17[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_horizontalPaddingView] = 0;
  v18 = &v17[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_outerPadding];
  *v18 = 0;
  *(v18 + 1) = 0;
  v18[16] = 1;
  v19 = OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_gradientView;
  type metadata accessor for LineProgressGradientView.GradientView();
  v20 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v21 = v14;
  *&v17[v19] = [v20 init];
  v22 = OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_fillView;
  *&v17[v22] = [objc_allocWithZone(UIView) init];
  *&v17[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_color] = v21;
  *&v17[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_featherWidth] = v15;
  v17[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_direction] = a3 & 1;
  v27.receiver = v17;
  v27.super_class = v16;
  v23 = v21;
  v24 = objc_msgSendSuper2(&v27, "initWithFrame:", v11, -v10, v10, v12);
  [v24 setClipsToBounds:{1, v27.receiver, v27.super_class}];
  [v24 addSubview:*&v24[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_fillView]];
  [v24 addSubview:*&v24[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_gradientView]];
  sub_99A4E4();
  sub_99A818();

  if (qword_E21CC8 != -1)
  {
    swift_once();
  }

  v25 = static LyricsOptionsManager.shared;
  if (!os_variant_has_internal_content() || !sub_923E94(9, *(v25 + 40)))
  {
    [v4 addSubview:v24];
  }

  return v24;
}

void sub_959AC4()
{
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, "layoutSubviews");
  [*&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_specs + 200] lineHeight];
  [v0 frame];
  CGRectGetHeight(v15);
  v1 = *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_backgroundColorLayer];
  if (v1)
  {
    v2 = v1;
    [v0 frame];
    v3 = -CGRectGetWidth(v16);
    [v0 frame];
    v4 = -CGRectGetHeight(v17);
    [v0 frame];
    v5 = CGRectGetWidth(v18) * 3.0;
    [v0 frame];
    [v2 setFrame:{v3, v4, v5, CGRectGetHeight(v19) * 3.0}];
  }

  v6 = *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView];
  if (v6)
  {
    v7 = v6;
    [v0 frame];
    v8 = &v7[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_outerPadding];
    v9 = *&v7[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_outerPadding];
    v10 = *&v7[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_outerPadding + 8];
    v11 = v7[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_outerPadding + 16];
    *v8 = v12;
    *(v8 + 1) = v13;
    v8[16] = 0;
    sub_99A2FC(v9, v10, v11);
  }
}

void sub_959C70()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "tintColorDidChange");
  v1 = *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView];
  if (v1)
  {
    if (v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_kind])
    {
      v2 = &v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_specs + 496];
    }

    else
    {
      v2 = &v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_specs + 488];
    }

    v3 = *v2;
    v4 = *&v1[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_color];
    *&v1[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_color] = *v2;
    sub_13C80(0, &unk_E23820, UIColor_ptr);
    v5 = v3;
    v6 = v1;
    if ((sub_ABA790() & 1) == 0)
    {
      sub_99A818();
    }
  }
}

void sub_959DA4(uint64_t a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "traitCollectionDidChange:", a1);
  v3 = *&v1[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView];
  if (v3)
  {
    if (v1[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_kind])
    {
      v4 = &v1[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_specs + 496];
    }

    else
    {
      v4 = &v1[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_specs + 488];
    }

    v5 = *v4;
    v6 = *&v3[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_color];
    *&v3[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_color] = *v4;
    sub_13C80(0, &unk_E23820, UIColor_ptr);
    v7 = v5;
    v8 = v3;
    if ((sub_ABA790() & 1) == 0)
    {
      sub_99A818();
    }
  }
}

uint64_t sub_959F9C()
{

  return swift_deallocClassInstance();
}

unint64_t sub_95A048()
{
  result = qword_E22C80;
  if (!qword_E22C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E22C80);
  }

  return result;
}

unint64_t sub_95A0A0()
{
  result = qword_E22CB8;
  if (!qword_E22CB8)
  {
    _s4LineCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E22CB8);
  }

  return result;
}

uint64_t sub_95A100()
{

  v1 = *(v0 + 712);
  if (v1)
  {
  }

  return swift_deallocObject();
}

void sub_95A1FC()
{
  v1 = *(v0 + 728);
  sub_95CD3C(v0 + 24, *(v0 + 712), *(v0 + 720));
  v3 = v2;
  [v1 addSubview:v2];
}

uint64_t sub_95A268()
{

  return swift_deallocObject();
}

double block_copy_helper_246(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_95A2C8()
{

  return swift_deallocObject();
}

uint64_t sub_95A3B8()
{

  return swift_deallocObject();
}

uint64_t sub_95A3FC()
{

  return swift_deallocObject();
}

id sub_95A434()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView);
  if (result)
  {
    return [result setFrame:{*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48)}];
  }

  return result;
}

uint64_t sub_95A460()
{

  return swift_deallocObject();
}

unint64_t sub_95A4B4()
{
  result = qword_E22CF0;
  if (!qword_E22CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E22CE8, &unk_B3A0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E22CF0);
  }

  return result;
}

uint64_t sub_95A518()
{

  return swift_deallocObject();
}

uint64_t sub_95A61C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void *sub_95A698(void *result, char a2, uint64_t a3)
{
  v3 = result[23];
  if (v3)
  {
    if (a2)
    {
      v4 = xmmword_B03DB0;
      v5 = xmmword_B28300;
      v6 = 0uLL;
    }

    else
    {
      CGAffineTransformMakeTranslation(&v7, 0.0, -*(a3 + 624));
      v5 = *&v7.a;
      v4 = *&v7.c;
      v6 = *&v7.tx;
    }

    *&v7.a = v5;
    *&v7.c = v4;
    *&v7.tx = v6;
    return [v3 setTransform:&v7];
  }

  return result;
}

void sub_95A718(uint64_t a1, uint64_t a2, char a3)
{
  if (!a1)
  {
    v3 = *(a2 + 136);
    *(a2 + 136) = (a3 & 1) == 0;
    v4 = *(a2 + 144);
    *(a2 + 144) = 2;
    sub_955490(v3, v4);
  }
}

id sub_95A744(uint64_t a1)
{
  result = *(a1 + 184);
  if (result)
  {
    v2[0] = 0x3FF0000000000000;
    v2[1] = 0;
    v2[2] = 0;
    v2[3] = 0x3FF0000000000000;
    v2[4] = 0;
    v2[5] = 0;
    return [result setTransform:v2];
  }

  return result;
}

void sub_95A78C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v2 = *(a2 + 136);
    *(a2 + 136) = 0;
    v3 = *(a2 + 144);
    *(a2 + 144) = 2;
    sub_955490(v2, v3);
  }
}

char *sub_95A864()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 192) - *(v0 + 152);
  MaxX = CGRectGetMaxX(*(v0 + 200));
  Height = CGRectGetHeight(*(v0 + 152));
  v5 = *(v0 + 184);
  if (v5)
  {
    v6 = *(v0 + 152);
    v7 = *(v0 + 160);
    v8 = *(v0 + 168);
    v9 = *(v0 + 176);
    v10 = v5;
    [v10 setFrame:{v6, v7, v8, v9}];
    [*&v10[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView8Syllable21SyllableContainerView_syllableView] setFrame:{v2, v1, MaxX, Height}];
  }

  else
  {
    v11 = *(v0 + 104);
    v12 = *(v0 + 112);
    v13 = *(v0 + 96);
    v14 = *(v0 + 120);
    v15 = *(v0 + 128);
    objc_allocWithZone(_s8SyllableC12SyllableViewCMa());
    v16 = v12;
    v17 = v0;
    v18 = CTRunRef.PartialRunView.init(run:range:textPosition:)(v16, v13, v11, v14, v15);
    [v18 setFrame:{v2, v1, MaxX, Height}];
    v19 = *(v0 + 152);
    v20 = *(v0 + 160);
    v21 = *(v0 + 168);
    v22 = *(v0 + 176);
    v23 = _s8SyllableC21SyllableContainerViewCMa();
    v24 = objc_allocWithZone(v23);
    *&v24[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView8Syllable21SyllableContainerView_syllableView] = v18;
    v28.receiver = v24;
    v28.super_class = v23;
    v25 = v18;
    v10 = objc_msgSendSuper2(&v28, "initWithFrame:", v19, v20, v21, v22);
    [v10 addSubview:{v25, v28.receiver, v28.super_class}];

    v26 = *(v17 + 184);
    *(v17 + 184) = v10;
  }

  return v10;
}

id sub_95AAAC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_95AAE4()
{

  sub_955490(*(v0 + 136), *(v0 + 144));

  return swift_deallocClassInstance();
}

void sub_95ABC0(void *a1, char a2, void *a3)
{
  v6 = *(v3 + 96);
  v7 = &unk_AF7000;
  if (v6)
  {
    v8 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 16) = v6;
    *(v9 + 24) = v3;
    v10 = swift_allocObject();
    v38 = sub_95B91C;
    *(v10 + 16) = sub_95B91C;
    *(v10 + 24) = v9;
    v49 = sub_36C08;
    v50 = v10;
    aBlock = _NSConcreteStackBlock;
    v46 = 1107296256;
    v47 = sub_1822E0;
    v48 = &block_descriptor_22_4;
    v11 = _Block_copy(&aBlock);
    v12 = v6;

    [v8 performWithoutAnimation:v11];
    _Block_release(v11);
    LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

    if (v8)
    {
      __break(1u);
      return;
    }

    v37 = v9;
    v13 = v12;
    v7 = &unk_AF7000;
  }

  else
  {
    v14 = [objc_allocWithZone(_s13TextContainerC17TextContainerViewCMa()) initWithFrame:{*(v3 + 64), *(v3 + 72), *(v3 + 80), *(v3 + 88)}];
    v15 = *(v3 + 96);
    *(v3 + 96) = v14;
    v13 = v14;

    v37 = 0;
    v38 = 0;
  }

  v16 = *(v3 + 56);
  v44 = *(v16 + 16);
  if (v44)
  {
    v17 = a2 & 1;

    v41 = 0;
    v42 = 0;
    v18 = 0;
    v19 = v7[223];
    v20 = a3;
    v43 = a2 & 1;
    while (v18 < *(v16 + 16))
    {
      v23 = *(v16 + 8 * v18 + 32);
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      *(v24 + 24) = a1;
      *(v24 + 32) = v17;
      memcpy((v24 + 40), v20, 0x2B0uLL);
      *(v24 + 728) = v13;
      if (*(v23 + 112))
      {
        swift_retain_n();
        sub_95313C(v20, &aBlock);
        v21 = a1;
        v22 = v13;
        v7 = sub_958C34(v21, v17, v20);
        [v22 addSubview:v7];
      }

      else
      {
        v40 = objc_opt_self();
        v25 = swift_allocObject();
        *(v25 + 16) = sub_95B814;
        *(v25 + 24) = v24;
        swift_retain_n();
        sub_95313C(v20, &aBlock);
        v26 = a1;
        v20 = v13;
        v27 = v13;

        sub_17654(v41, v42);
        v7 = swift_allocObject();
        v41 = sub_70638;
        v7[2] = sub_70638;
        v7[3] = v25;
        v49 = sub_2D4D0;
        v50 = v7;
        aBlock = _NSConcreteStackBlock;
        v46 = v19;
        v47 = sub_1822E0;
        v48 = &block_descriptor_247;
        v28 = _Block_copy(&aBlock);
        v13 = v50;

        [v40 performWithoutAnimation:v28];

        _Block_release(v28);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          goto LABEL_21;
        }

        v42 = v25;
        v13 = v20;
        v20 = a3;
      }

      ++v18;
      v17 = v43;
      if (v44 == v18)
      {

        v7 = v41;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
    v7 = 0;
    v42 = 0;
LABEL_15:
    v20 = v37;
    if (qword_E21CC8 == -1)
    {
      goto LABEL_16;
    }
  }

  swift_once();
LABEL_16:
  v30 = static LyricsOptionsManager.shared;
  if (os_variant_has_internal_content())
  {
    if (sub_923E94(9, *(v30 + 40)))
    {
      v31 = objc_opt_self();
      v32 = [v31 blackColor];
      [v13 setBackgroundColor:v32];

      v33 = [v31 yellowColor];
      UIView.Border.init(thickness:color:)();
      UIView.border.setter(v35, v34 & 1, v36);
    }
  }

  sub_17654(v38, v20);
  sub_17654(v7, v42);
}

void sub_95B160()
{
  v1 = *(v0 + 56);
  v38 = *(v1 + 16);
  if (v38)
  {
    v39 = v1 + 32;

    v40 = v1;

    v2 = 0;
    while (1)
    {
      if (v2 >= *(v40 + 16))
      {
        goto LABEL_59;
      }

      v41 = v2;
      v3 = *(v39 + 8 * v2);
      swift_beginAccess();
      v4 = v3;
      v5 = *(v3 + 16);
      if (!(v5 >> 62))
      {
        v0 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
        if (v0)
        {
          break;
        }

        goto LABEL_46;
      }

      v29 = *(v3 + 16);
      v30 = sub_ABB060();
      v5 = v29;
      v0 = v30;
      v4 = v3;
      if (v0)
      {
        break;
      }

LABEL_46:
      v28 = v4;

LABEL_47:
      v31 = *(v28 + 112);
      v32 = v28;
      if (v31)
      {
        [v31 removeFromSuperview];
        v32 = v28;
        v33 = *(v28 + 112);
      }

      else
      {
        v33 = 0;
      }

      *(v32 + 112) = 0;

      v2 = v41 + 1;
      if (v41 + 1 == v38)
      {

        v0 = v36;
        goto LABEL_52;
      }
    }

    if (v0 >= 1)
    {
      v43 = v5 & 0xC000000000000001;
      v37 = v4;

      v6 = 0;
      v42 = v0;
      while (1)
      {
        if (v43)
        {
          v9 = sub_ABAE20();
        }

        else
        {
        }

        v44 = v9;
        v45 = v6;
        v10 = *(v9 + 104);
        v46 = v10;
        if (!(v10 >> 62))
        {
          v11 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
          if (v11)
          {
            break;
          }

          goto LABEL_39;
        }

        v11 = sub_ABB060();
        if (v11)
        {
          break;
        }

LABEL_39:
        v0 = v44;
        v24 = *(v44 + 208);
        if (v24)
        {
          [v24 removeFromSuperview];
          v25 = *(v44 + 208);
        }

        else
        {
          v25 = 0;
        }

        *(v44 + 208) = 0;

        if (!*(v44 + 208))
        {
          v26 = *(v44 + 128);
          *(v44 + 128) = 0;
          v27 = *(v44 + 136);
          *(v44 + 136) = 2;
          sub_955490(v26, v27);
        }

        v6 = v45 + 1;
        v7 = *(v44 + 128);
        *(v44 + 128) = 0;
        v8 = *(v44 + 136);
        *(v44 + 136) = 2;
        sub_955490(v7, v8);

        if (v45 + 1 == v42)
        {

          v28 = v37;
          goto LABEL_47;
        }
      }

      v12 = 0;
      while (1)
      {
        if ((v46 & 0xC000000000000001) != 0)
        {
          v17 = sub_ABAE20();
          v18 = __OFADD__(v12++, 1);
          if (v18)
          {
            goto LABEL_54;
          }
        }

        else
        {
          if (v12 >= *(&dword_10 + (v46 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
LABEL_59:
            __break(1u);
            break;
          }

          v17 = *(v46 + 32 + 8 * v12);

          v18 = __OFADD__(v12++, 1);
          if (v18)
          {
LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
            goto LABEL_56;
          }
        }

        v0 = *(v17 + 88);
        if (!(v0 >> 62))
        {
          v19 = *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8));
          if (v19)
          {
            goto LABEL_26;
          }

          goto LABEL_15;
        }

        v19 = sub_ABB060();
        if (v19)
        {
LABEL_26:
          if (v19 >= 1)
          {
            v20 = 0;
            while (1)
            {
              if ((v0 & 0xC000000000000001) != 0)
              {
                v22 = sub_ABAE20();
                v23 = *(v22 + 96);
                if (!v23)
                {
                  goto LABEL_34;
                }
              }

              else
              {
                v22 = *(v0 + 8 * v20 + 32);

                v23 = *(v22 + 96);
                if (!v23)
                {
LABEL_34:
                  v21 = 0;
                  goto LABEL_29;
                }
              }

              [v23 removeFromSuperview];
              v21 = *(v22 + 96);
LABEL_29:
              ++v20;
              *(v22 + 96) = 0;

              if (v19 == v20)
              {
                goto LABEL_15;
              }
            }
          }

          goto LABEL_55;
        }

LABEL_15:
        v13 = *(v17 + 184);
        if (v13)
        {
          [v13 removeFromSuperview];
          v14 = *(v17 + 184);
        }

        else
        {
          v14 = 0;
        }

        *(v17 + 184) = 0;

        v15 = *(v17 + 136);
        *(v17 + 136) = 0;
        v16 = *(v17 + 144);
        *(v17 + 144) = 2;
        sub_955490(v15, v16);

        if (v12 == v11)
        {
          goto LABEL_39;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_52:
    v34 = *(v0 + 96);
    if (v34)
    {
      [v34 removeFromSuperview];
      v35 = *(v0 + 96);
    }

    else
    {
LABEL_56:
      v35 = 0;
    }

    *(v0 + 96) = 0;
  }
}

uint64_t sub_95B670()
{

  return swift_deallocClassInstance();
}

uint64_t sub_95B724()
{

  return swift_deallocObject();
}

void sub_95B814()
{
  v1 = *(v0 + 728);
  v2 = sub_958C34(*(v0 + 24), *(v0 + 32), (v0 + 40));
  [v1 addSubview:v2];
}

uint64_t sub_95B87C()
{

  return swift_deallocObject();
}

double block_copy_helper_247(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_95B8DC()
{

  return swift_deallocObject();
}

void sub_95B940()
{
  v1 = v0;
  v2 = *(v0 + 208);
  if (v2)
  {
    v3 = [v2 layer];
    [v3 removeAllAnimations];
  }

  if (*(v1 + 232))
  {

    sub_AB9A00();
  }

  *(v1 + 232) = 0;

  v4 = *(v1 + 208);
  if (v4)
  {
    v5 = v4;
    sub_95DD54();
  }

  v6 = sub_95D248(*(v1 + 104));
  v7 = v6;
  if (v6 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
  {
    v9 = 0;
    v28 = v7;
    v29 = v7 & 0xC000000000000001;
    v27 = v7 & 0xFFFFFFFFFFFFFF8;
    v25 = v1;
    v26 = v7 + 32;
    while (1)
    {
      if (v29)
      {
        v10 = sub_ABAE20();
        v11 = __OFADD__(v9++, 1);
        if (v11)
        {
          break;
        }

        goto LABEL_17;
      }

      if (v9 >= *(v27 + 16))
      {
        goto LABEL_33;
      }

      v10 = *(v26 + 8 * v9);

      v11 = __OFADD__(v9++, 1);
      if (v11)
      {
        break;
      }

LABEL_17:
      v12 = *(v10 + 96);
      if (v12)
      {
        v30 = *(v10 + 80);
        v31 = *(v10 + 64);
        v1 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView5Glyph18GlyphContainerView_currentAnimators;
        swift_beginAccess();
        v7 = *&v12[v1];
        if (v7 >> 62)
        {
          v13 = sub_ABB060();
          if (!v13)
          {
LABEL_28:
            v18 = v12;
            goto LABEL_29;
          }
        }

        else
        {
          v13 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
          if (!v13)
          {
            goto LABEL_28;
          }
        }

        if (v13 < 1)
        {
          goto LABEL_32;
        }

        v1 = v7 & 0xC000000000000001;
        v14 = v12;

        for (j = 0; j != v13; ++j)
        {
          if (v1)
          {
            v16 = sub_ABAE20();
          }

          else
          {
            v16 = *(v7 + 8 * j + 32);
          }

          v17 = v16;
          [v16 stopAnimation:0];
        }

LABEL_29:
        sub_955F74();
        v19 = CGPoint.center.unsafeMutableAddressor();
        swift_beginAccess();
        UIView.setAnchorPoint(_:preserveFrame:)(1, *v19, v19[1]);
        sub_13C80(0, &qword_E229B0, UIView_ptr);
        sub_13C80(0, &qword_E23770, UISpringTimingParameters_ptr);
        v20 = UISpringTimingParameters.init(dampingRatio:response:)(1.0, 1.5);
        v21 = swift_allocObject();
        *(v21 + 16) = v12;
        *(v21 + 40) = v30;
        *(v21 + 24) = v31;
        v22 = v12;
        static UIView.animate(withSpringTimingParameters:delay:options:animations:completion:)(v20, 0, sub_95F098, v21, 0, 0, 0.0);

        [v22 sizeToFit];

        v7 = v28;
        if (v9 == i)
        {
LABEL_30:

          v1 = v25;
          goto LABEL_36;
        }
      }

      else
      {

        if (v9 == i)
        {
          goto LABEL_30;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

LABEL_36:
  v23 = *(v1 + 128);
  *(v1 + 128) = 0;
  v24 = *(v1 + 136);
  *(v1 + 136) = 2;
  sub_955490(v23, v24);
}

void sub_95BCFC()
{
  v1 = *(v0 + 104);
  v23 = v1;
  if (v1 >> 62)
  {
    goto LABEL_30;
  }

  v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  if (v2)
  {
    while (1)
    {
      v3 = 0;
      while (1)
      {
        if ((v23 & 0xC000000000000001) != 0)
        {
          v8 = sub_ABAE20();
          v9 = __OFADD__(v3++, 1);
          if (v9)
          {
            goto LABEL_27;
          }
        }

        else
        {
          if (v3 >= *(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_29;
          }

          v8 = *(v23 + 32 + 8 * v3);

          v9 = __OFADD__(v3++, 1);
          if (v9)
          {
LABEL_27:
            __break(1u);
            goto LABEL_28;
          }
        }

        v10 = *(v8 + 88);
        if (!(v10 >> 62))
        {
          v11 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
          if (v11)
          {
            break;
          }

          goto LABEL_4;
        }

        v11 = sub_ABB060();
        if (v11)
        {
          break;
        }

LABEL_4:
        v4 = *(v8 + 184);
        if (v4)
        {
          [v4 removeFromSuperview];
          v5 = *(v8 + 184);
        }

        else
        {
          v5 = 0;
        }

        *(v8 + 184) = 0;

        v6 = *(v8 + 136);
        *(v8 + 136) = 0;
        v7 = *(v8 + 144);
        *(v8 + 144) = 2;
        sub_955490(v6, v7);

        if (v3 == v2)
        {
          goto LABEL_31;
        }
      }

      if (v11 >= 1)
      {
        break;
      }

LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      v2 = sub_ABB060();
      if (!v2)
      {
        goto LABEL_31;
      }
    }

    v12 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = sub_ABAE20();
        v15 = *(v14 + 96);
        if (!v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v14 = *(v10 + 8 * v12 + 32);

        v15 = *(v14 + 96);
        if (!v15)
        {
LABEL_23:
          v13 = 0;
          goto LABEL_18;
        }
      }

      [v15 removeFromSuperview];
      v13 = *(v14 + 96);
LABEL_18:
      ++v12;
      *(v14 + 96) = 0;

      if (v11 == v12)
      {
        goto LABEL_4;
      }
    }
  }

LABEL_31:
  v16 = *(v22 + 208);
  if (v16)
  {
    [v16 removeFromSuperview];
    v17 = *(v22 + 208);
  }

  else
  {
    v17 = 0;
  }

  *(v22 + 208) = 0;

  if (!*(v22 + 208))
  {
    v18 = *(v22 + 128);
    *(v22 + 128) = 0;
    v19 = *(v22 + 136);
    *(v22 + 136) = 2;
    sub_955490(v18, v19);
  }

  v20 = *(v22 + 128);
  *(v22 + 128) = 0;
  v21 = *(v22 + 136);
  *(v22 + 136) = 2;

  sub_955490(v20, v21);
}

void sub_95BF60(double a1, double a2, double a3, double a4)
{
  v5 = *(v4 + 176);
  *(v4 + 176) = a1;
  *(v4 + 184) = a2;
  *(v4 + 192) = a3;
  *(v4 + 200) = a4;
  *(v4 + 216) = a1 - v5 + *(v4 + 216);
  v6 = *(v4 + 104);
  v17 = v6;
  if (v6 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
  {
    v8 = 0;
    while ((v17 & 0xC000000000000001) != 0)
    {
      v9 = sub_ABAE20();
      v10 = __OFADD__(v8++, 1);
      if (v10)
      {
        goto LABEL_21;
      }

LABEL_11:
      v11 = *(v4 + 216);
      *(v9 + 192) = v11;
      *(v9 + 152) = CGRectOffset(*(v9 + 200), v11, 0.0);
      v12 = *(v9 + 88);
      if (v12 >> 62)
      {
        v13 = sub_ABB060();
        if (!v13)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v13 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
        if (!v13)
        {
          goto LABEL_4;
        }
      }

      if (v13 < 1)
      {
        goto LABEL_22;
      }

      v14 = 0;
      do
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v15 = sub_ABAE20();
        }

        else
        {
          v15 = *(v12 + 8 * v14 + 32);
        }

        ++v14;
        v16 = *(v9 + 192);
        *(v15 + 104) = v16;
        *(v15 + 64) = CGRectOffset(*(v15 + 112), v16, 0.0);
      }

      while (v13 != v14);
LABEL_4:

      if (v8 == i)
      {
        return;
      }
    }

    if (v8 >= *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_23;
    }

    v9 = *(v17 + 32 + 8 * v8);

    v10 = __OFADD__(v8++, 1);
    if (!v10)
    {
      goto LABEL_11;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }
}

void sub_95C138()
{
  v1 = *(v0 + 104);
  if (v1 >> 62)
  {
    v2 = sub_ABB060();
    if (v2)
    {
LABEL_3:
      v3 = __OFSUB__(v2, 1);
      v4 = v2 - 1;
      if (v3)
      {
        __break(1u);
      }

      else if ((v1 & 0xC000000000000001) == 0)
      {
        if ((v4 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v4 < *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
        {
          return;
        }

        __break(1u);
        return;
      }

      sub_ABAE20();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    if (v2)
    {
      goto LABEL_3;
    }
  }
}

void sub_95C1E4(double *a1, double a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E23950, &qword_B3A380);
  __chkstk_darwin();
  *&v7 = &v78 - v6;
  v8 = *(v2 + 6);
  v9 = *(*&v8 + 16);
  if (!v9)
  {
    if (a2 >= 0.0)
    {
      goto LABEL_46;
    }

    goto LABEL_5;
  }

  if (*(*&v8 + 32) > a2)
  {
LABEL_5:
    if (v2[136] < 2u || *(v2 + 16))
    {
      v10 = *(v2 + 26);
      if (v10)
      {
        v11 = [v10 layer];
        [v11 removeAllAnimations];
      }

      if (*(v2 + 29))
      {

        sub_AB9A00();
      }

      *(v2 + 29) = 0;

      v12 = *(v2 + 26);
      if (v12)
      {
        v13 = v12;
        sub_95DD54();
      }

      v84 = v8;
      v14 = sub_95D248(*(v2 + 13));
      v15 = v14;
      v85 = 0;
      if (v14 >> 62)
      {
        goto LABEL_40;
      }

      for (i = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
      {
        v81 = v7;
        v82 = a1;
        v83 = v3;
        a1 = 0;
        v89.super.isa = (v15 & 0xC000000000000001);
        v87 = v15 & 0xFFFFFFFFFFFFFF8;
        v86 = v15 + 32;
        v7 = COERCE_DOUBLE(&selRef_createSharedSessionWithIdentity_intentHandler_);
        v88 = v15;
        while (1)
        {
          if (v89.super.isa)
          {
            v17 = sub_ABAE20();
            v18 = __OFADD__(a1, 1);
            a1 = (a1 + 1);
            if (v18)
            {
              break;
            }

            goto LABEL_23;
          }

          if (a1 >= *(v87 + 16))
          {
            goto LABEL_39;
          }

          v17 = *(v86 + 8 * a1);

          v18 = __OFADD__(a1, 1);
          a1 = (a1 + 1);
          if (v18)
          {
            break;
          }

LABEL_23:
          v19 = *(v17 + 96);
          if (v19)
          {
            v20 = *(v17 + 64);
            v90 = *(v17 + 80);
            v91 = v20;
            v15 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView5Glyph18GlyphContainerView_currentAnimators;
            swift_beginAccess();
            v21 = *&v19[v15];
            if (v21 >> 62)
            {
              v22 = sub_ABB060();
              if (!v22)
              {
LABEL_34:
                v27 = v19;
                goto LABEL_35;
              }
            }

            else
            {
              v22 = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
              if (!v22)
              {
                goto LABEL_34;
              }
            }

            if (v22 < 1)
            {
              goto LABEL_38;
            }

            v23 = v19;

            for (j = 0; j != v22; ++j)
            {
              if ((v21 & 0xC000000000000001) != 0)
              {
                v25 = sub_ABAE20();
              }

              else
              {
                v25 = *(v21 + 8 * j + 32);
              }

              v26 = v25;
              [v25 stopAnimation:0];
            }

LABEL_35:
            sub_955F74();
            v28 = CGPoint.center.unsafeMutableAddressor();
            swift_beginAccess();
            UIView.setAnchorPoint(_:preserveFrame:)(1, *v28, v28[1]);
            sub_13C80(0, &qword_E229B0, UIView_ptr);
            sub_13C80(0, &qword_E23770, UISpringTimingParameters_ptr);
            v3 = UISpringTimingParameters.init(dampingRatio:response:)(1.0, 1.5);
            v29 = swift_allocObject();
            *(v29 + 16) = v19;
            *(v29 + 40) = v90;
            *(v29 + 24) = v91;
            v30 = v19;
            static UIView.animate(withSpringTimingParameters:delay:options:animations:completion:)(v3, 0, sub_95E740, v29, 0, 0, 0.0);

            [v30 sizeToFit];

            v15 = v88;
            if (a1 == i)
            {
LABEL_36:

              v3 = v83;
              a1 = v82;
              v7 = v81;
              goto LABEL_42;
            }
          }

          else
          {

            if (a1 == i)
            {
              goto LABEL_36;
            }
          }
        }

        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        ;
      }

LABEL_42:
      v31 = *(v3 + 16);
      *(v3 + 16) = 0;
      v32 = v3[136];
      v3[136] = 2;
      sub_955490(v31, v32);
      v8 = v84;
      v9 = *(*&v84 + 16);
    }

    if (v9)
    {
      goto LABEL_44;
    }

LABEL_46:
    if (a2 < 0.0)
    {
      return;
    }

    goto LABEL_47;
  }

LABEL_44:
  if (*(*&v8 + 32) > a2)
  {
    return;
  }

LABEL_47:
  if (v3[136] >= 2u && !*(v3 + 16) && (v3[64] & 1) == 0)
  {
    v33 = *(v3 + 7);
    v34 = sub_95D248(*(v3 + 13));
    v35 = v34;
    v36 = *(*&v8 + 16);
    if (v36)
    {
      v37 = *(*&v8 + 32 + 56 * v36 - 48) - *(*&v8 + 32);
    }

    else
    {
      v37 = 0.0;
    }

    v38 = v34 >> 62;
    if (v34 >> 62)
    {
      goto LABEL_86;
    }

    for (k = *(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8)); k >= 1; k = sub_ABB060())
    {
      if (v37 <= 0.0)
      {
        break;
      }

      v40 = *(v3 + 16);
      *(v3 + 16) = 0;
      v41 = v3[136];
      v3[136] = 0;
      sub_955490(v40, v41);
      v42 = *(v3 + 26);
      if (v42)
      {
        v43 = v42;
        sub_95DF6C(a1, v33, v37);
      }

      v44 = sub_AB9990();
      (*(*(v44 - 8) + 56))(COERCE_DOUBLE(*&v7), 1, 1, v44);
      v45 = swift_allocObject();
      swift_weakInit();
      v46 = swift_allocObject();
      *(v46 + 16) = 0;
      *(v46 + 24) = 0;
      *(v46 + 32) = v45;
      *(v46 + 40) = v37;
      *(v3 + 29) = sub_97B874(0, 0, *&v7, &unk_B3A390, v46);

      v47 = v37 / k * 0.4;
      if (v47 > 0.4)
      {
        v47 = 0.4;
      }

      *&v87 = v47;
      v33 = a1[31] + v33 * (a1[32] - a1[31]);
      if (v37 <= 3.0)
      {
        v48 = v37;
      }

      else
      {
        v48 = 3.0;
      }

      sub_13C80(0, &qword_E23770, UISpringTimingParameters_ptr);
      v88 = UISpringTimingParameters.init(dampingRatio:response:)(1.0, v48);
      v49 = *(v3 + 24);
      v50 = *(v3 + 25);
      sub_ABA540();
      v52 = v51;
      v54 = v53;
      if (v38)
      {
        v38 = sub_ABB060();
      }

      else
      {
        v38 = *(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8));
      }

      if (!v38)
      {
LABEL_81:

        break;
      }

      v55 = 0;
      v79 = v37 / vcvtd_n_f64_u64(k, 1uLL);
      *&v91 = v35 & 0xC000000000000001;
      *&v90 = v35 & 0xFFFFFFFFFFFFFF8;
      v84 = v50 - v54;
      v81 = (v49 - v52) * 0.5;
      v80 = &v94;
      v83 = v3;
      v82 = a1;
      v86 = v35;
      v85 = v38;
      while (v91)
      {
        v56 = sub_ABAE20();
        *&v7 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          goto LABEL_84;
        }

LABEL_73:
        v57 = *(v56 + 96);
        if (!v57)
        {
          goto LABEL_68;
        }

        v58 = *(v3 + 22);
        v59 = *(v3 + 23);
        v60 = *(v56 + 64) - v58;
        v61 = *(v56 + 72) - v59;
        v62 = a1[78];
        v63 = v58 + (v60 + v81 + v33 * v60) * 0.5;
        v64 = v59 + (v61 + v84 + v33 * v61) * 0.25 - v62;
        v37 = *&v87 * *&v7;
        sub_13C80(0, &qword_E23940, UIViewPropertyAnimator_ptr);
        v65 = v57;
        v89.super.isa = v88;
        isa = UIViewPropertyAnimator.init(springTimingParameters:)(v89).super.isa;
        v67 = swift_allocObject();
        *(v67 + 16) = v65;
        *(v67 + 24) = v63;
        *(v67 + 32) = v64;
        *(v67 + 40) = v33;
        v96 = sub_95E6A0;
        v97 = v67;
        aBlock = _NSConcreteStackBlock;
        v93 = 1107296256;
        v94 = sub_1B5EB4;
        v95 = &block_descriptor_248;
        v68 = _Block_copy(&aBlock);
        v69 = v65;

        [(objc_class *)isa addAnimations:v68];
        _Block_release(v68);
        v70 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v96 = sub_95E700;
        v97 = v70;
        aBlock = _NSConcreteStackBlock;
        v93 = 1107296256;
        v94 = sub_624AE8;
        v95 = &block_descriptor_26_5;
        v71 = _Block_copy(&aBlock);

        [(objc_class *)isa addCompletion:v71];
        _Block_release(v71);
        [(objc_class *)isa startAnimationAfterDelay:v37];
        v72 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView5Glyph18GlyphContainerView_currentAnimators;
        swift_beginAccess();
        v73 = isa;
        sub_AB9730();
        if (*(&dword_10 + (*(v69 + v72) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v69 + v72) & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_AB97A0();
        }

        sub_AB97F0();
        swift_endAccess();

        v74 = *(v56 + 96);
        v3 = v83;
        a1 = v82;
        v35 = v86;
        v38 = v85;
        if (v74)
        {
          v75 = v60 + v83[22];
          v76 = v61 - v62 + v83[23];
          v37 = v79 + v37;
          v77 = v74;
          sub_9564F8(v89.super.isa, v75, v76, v37);
        }

        else
        {
LABEL_68:
        }

        ++v55;
        if (*&v7 == v38)
        {
          goto LABEL_81;
        }
      }

      if (v55 >= *(v90 + 16))
      {
        goto LABEL_85;
      }

      v56 = *(v35 + 8 * v55 + 32);

      *&v7 = v55 + 1;
      if (!__OFADD__(v55, 1))
      {
        goto LABEL_73;
      }

LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      ;
    }
  }
}