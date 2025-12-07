unint64_t sub_24A473A00(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_24A4ABEB0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_24A4AC360();

        sub_24A4AB8F0();
        v10 = sub_24A4AC3A0();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_24A473BC4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_24A4ABEB0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      v22 = v3;
      v23 = v4;
      do
      {
        v10 = 24 * v6;
        v11 = v2;
        v12 = v9;
        sub_24A4AC360();

        sub_24A4AB8F0();
        sub_24A4AC380();
        sub_24A4AC380();
        sub_24A4AC380();
        v13 = sub_24A4AC3A0();

        v9 = v12;
        v2 = v11;
        v14 = v13 & v7;
        if (v11 >= v9)
        {
          if (v14 < v9)
          {
            v3 = v22;
          }

          else
          {
            v3 = v22;
            if (v11 >= v14)
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
          v3 = v22;
          if (v14 >= v9 || v11 >= v14)
          {
LABEL_12:
            v15 = *(v3 + 48);
            v16 = v15 + 24 * v11;
            v17 = (v15 + v10);
            if (24 * v11 < v10 || v16 >= v17 + 24 || v11 != v6)
            {
              v18 = *v17;
              *(v16 + 16) = *(v17 + 2);
              *v16 = v18;
              v2 = v6;
            }
          }
        }

        v6 = (v6 + 1) & v7;
        v4 = v23;
      }

      while (((*(v23 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t *sub_24A473E64(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_24A4740B8((v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_24A474028(v11, v6, a2, a1);

    MEMORY[0x24C219130](v11, -1, -1);
  }

  return v9;
}

unint64_t *sub_24A474028(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_24A4740B8(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_24A4740B8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_24A4AC360();

      sub_24A4AB8F0();
      v26 = sub_24A4AC3A0();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_24A4AC270() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v50 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_24A4737DC(v50, a2, v53, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_24A4AC360();

      sub_24A4AB8F0();
      v39 = sub_24A4AC3A0();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_24A4AC270() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        v50[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24A474494(unint64_t a1, int a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((a1 & 0x8000000000000000) != 0 || (v7 = isUniquelyReferenced_nonNull_native, isUniquelyReferenced_nonNull_native = a1, v8 = *v3, 1 << *(*v3 + 32) <= a1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (((*(v8 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*(v8 + 36) != a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = *v3;
  if (!v7)
  {
LABEL_10:
    v11 = isUniquelyReferenced_nonNull_native;
    sub_24A48810C();
    isUniquelyReferenced_nonNull_native = v11;
    v8 = v12;
  }

  v9 = *(*(v8 + 48) + 24 * isUniquelyReferenced_nonNull_native);
  sub_24A473BC4(isUniquelyReferenced_nonNull_native);
  *v3 = v12;
  return v9;
}

uint64_t sub_24A4745A8(unint64_t a1, int a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((a1 & 0x8000000000000000) != 0 || (v7 = isUniquelyReferenced_nonNull_native, isUniquelyReferenced_nonNull_native = a1, v8 = *v3, 1 << *(*v3 + 32) <= a1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (((*(v8 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*(v8 + 36) != a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = *v3;
  if (!v7)
  {
LABEL_10:
    v11 = isUniquelyReferenced_nonNull_native;
    sub_24A487BF4();
    isUniquelyReferenced_nonNull_native = v11;
    v8 = v12;
  }

  v9 = *(*(v8 + 48) + 16 * isUniquelyReferenced_nonNull_native);
  sub_24A473A00(isUniquelyReferenced_nonNull_native);
  *v3 = v12;
  return v9;
}

uint64_t sub_24A47467C(uint64_t result)
{
  v2 = 0;
  v21 = result;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    while (1)
    {
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v21 + 48) + ((v2 << 10) | (16 * v9)));
      v12 = *v10;
      v11 = v10[1];
      v13 = *v1;
      if (*(*v1 + 16))
      {
        break;
      }

LABEL_7:
      v1 = v20;
      sub_24A399A78(&v22, v12, v11);

      if (!v6)
      {
        goto LABEL_8;
      }
    }

    sub_24A4AC360();

    sub_24A4AB8F0();
    v14 = sub_24A4AC3A0();
    v15 = -1 << *(v13 + 32);
    v16 = v14 & ~v15;
    if (((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      goto LABEL_7;
    }

    v17 = ~v15;
    while (1)
    {
      v18 = (*(v13 + 48) + 16 * v16);
      v19 = *v18 == v12 && v18[1] == v11;
      if (v19 || (sub_24A4AC270() & 1) != 0)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v1 = v20;
    sub_24A473468(v12, v11);
  }

  while (v6);
  while (1)
  {
LABEL_8:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_12;
    }
  }
}

uint64_t sub_24A474864@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_24A463040(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_24A474894(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v5 = *(result + 16);
  if (v5)
  {
    for (i = (result + 32); ; ++i)
    {
      v10 = *i;

      sub_24A449F2C(&v10, a2, a3, a4);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_24A474940(uint64_t a1)
{
  if (*(v1 + 65))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *(v1 + 64);
  if (*(v1 + 66))
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  return sub_24A471E80(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), v3 | v4);
}

uint64_t sub_24A47499C()
{
  if (*(v0 + 41))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1 | *(v0 + 40);
  if (*(v0 + 42))
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  return sub_24A472358(*(v0 + 16), *(v0 + 24), *(v0 + 32), v2 | v3, *(v0 + 43), *(v0 + 48), *(v0 + 56));
}

void sub_24A4749DC(uint64_t a1, uint64_t a2, char **a3, char a4, void *a5)
{
  v5 = a1 + 56;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  if (v8)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return;
    }

    v8 = *(v5 + 8 * v11);
    ++v10;
    if (v8)
    {
      while (1)
      {
        v12 = (*(a1 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v8)))));
        v14 = *v12;
        v13 = v12[1];

        v15 = sub_24A44988C(v14, v13);

        if (v15)
        {
          v16 = *a3;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *a3 = v16;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v16 = sub_24A3ED900(0, *(v16 + 2) + 1, 1, v16);
            *a3 = v16;
          }

          v19 = *(v16 + 2);
          v18 = *(v16 + 3);
          if (v19 >= v18 >> 1)
          {
            v16 = sub_24A3ED900((v18 > 1), v19 + 1, 1, v16);
            *a3 = v16;
          }

          *(v16 + 2) = v19 + 1;
          v20 = &v16[16 * v19];
          *(v20 + 4) = v14;
          *(v20 + 5) = v13;
        }

        v8 &= v8 - 1;
        if (a4)
        {

          v25 = sub_24A4493A0(v14, v13);

          v21 = [a5 pushIdentifiers];
          sub_24A3C9CEC(&qword_27EF3F108, &qword_24A4B4950);
          sub_24A4AB780();

          sub_24A4A3ADC(v25, v14, v13);
          v22 = sub_24A4AB760();

          [a5 setPushIdentifiers_];

          v10 = v11;
          if (!v8)
          {
            goto LABEL_7;
          }
        }

        else
        {

          v10 = v11;
          if (!v8)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v11 = v10;
      }
    }
  }

  __break(1u);
}

uint64_t sub_24A474D70@<X0>(void *a1@<X8>)
{
  result = sub_24A463040(*(v1 + 16));
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_24A474DA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF3F8C0, &qword_24A4B9F50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A474E18(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF3F8C0, &qword_24A4B9F50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A474F5C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A475008(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 16));
  a2(*(v3 + 24));

  return MEMORY[0x2821FE8E8](v3, a3, 7);
}

uint64_t sub_24A475078(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A4750E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A475158(uint64_t (*a1)(void, void, void, void))
{
  if (*(v1 + 41))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *(v1 + 40);
  if (*(v1 + 42))
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  return a1(*(v1 + 16), *(v1 + 24), *(v1 + 32), v3 | v4);
}

uint64_t sub_24A475198(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return MEMORY[0x2821FE8E8](v2, 56, 7);
}

uint64_t FMFGetURLInfoAction.__allocating_init(url:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC7FMFCore19FMFGetURLInfoAction_url;
  v4 = sub_24A4AA9D0();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  *(v2 + 16) = 0;
  return v2;
}

uint64_t FMFGetURLInfoAction.init(url:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7FMFCore19FMFGetURLInfoAction_url;
  v4 = sub_24A4AA9D0();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  *(v1 + 16) = 0;
  return v1;
}

uint64_t sub_24A47542C()
{
  v0 = sub_24A4AC420();
  MEMORY[0x24C217D50](v0);

  MEMORY[0x24C217D50](2016419898, 0xE400000000000000);
  sub_24A3BAF14();
  v1 = sub_24A4AB9E0();
  MEMORY[0x24C217D50](v1);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  sub_24A4AA9D0();
  sub_24A475598();
  v2 = sub_24A4AC240();
  MEMORY[0x24C217D50](v2);

  MEMORY[0x24C217D50](0x203A6C7275, 0xE500000000000000);

  return 60;
}

unint64_t sub_24A475598()
{
  result = qword_27EF40BD0;
  if (!qword_27EF40BD0)
  {
    sub_24A4AA9D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40BD0);
  }

  return result;
}

uint64_t sub_24A475620()
{
  v1 = OBJC_IVAR____TtC7FMFCore19FMFGetURLInfoAction_url;
  v2 = sub_24A4AA9D0();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t FMFGetURLInfoAction.deinit()
{
  v1 = OBJC_IVAR____TtC7FMFCore19FMFGetURLInfoAction_url;
  v2 = sub_24A4AA9D0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t FMFGetURLInfoAction.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC7FMFCore19FMFGetURLInfoAction_url;
  v2 = sub_24A4AA9D0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FMFGetURLInfoAction(uint64_t a1)
{
  result = qword_27EF40BD8;
  if (!qword_27EF40BD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A4757D8(uint64_t a1)
{
  result = sub_24A4AA9D0();
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

uint64_t FMFRespondToInviteAction.__allocating_init(friendId:accepted:)(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_allocObject();
  *(result + 24) = a1;
  *(result + 32) = a2;
  *(result + 40) = a3;
  *(result + 16) = 0;
  return result;
}

uint64_t FMFRespondToInviteAction.init(friendId:accepted:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 40) = a3;
  *(v3 + 16) = 0;
  return v3;
}

uint64_t sub_24A475904()
{
  v1 = sub_24A4AC420();
  MEMORY[0x24C217D50](v1);

  MEMORY[0x24C217D50](2016419898, 0xE400000000000000);
  sub_24A3BAF14();
  v2 = sub_24A4AB9E0();
  MEMORY[0x24C217D50](v2);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  MEMORY[0x24C217D50](*(v0 + 24), *(v0 + 32));
  MEMORY[0x24C217D50](8236, 0xE200000000000000);

  MEMORY[0x24C217D50](0x6449646E65697266, 0xEA0000000000203ALL);

  if (*(v0 + 40))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + 40))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x24C217D50](v3, v4);

  MEMORY[0x24C217D50](0x6465747065636361, 0xEA0000000000203ALL);

  return 60;
}

uint64_t FMFRespondToInviteAction.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24A475BD8(uint64_t a1)
{
  v30 = sub_24A4AB220();
  MEMORY[0x28223BE20](v30);
  v26 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  if (v5)
  {
    v24[1] = v1;
    v33 = MEMORY[0x277D84F90];
    v6 = v3;
    sub_24A3C0C34(0, v5, 0);
    v7 = v33;
    v31 = a1 + 56;
    result = sub_24A4ABEA0();
    v9 = result;
    v10 = 0;
    v32 = *(a1 + 36);
    v28 = v6 + 32;
    v29 = v6;
    v25 = a1 + 64;
    v11 = v26;
    v27 = v5;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v13 = v9 >> 6;
      if ((*(v31 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_25;
      }

      if (v32 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      sub_24A4AB200();
      v33 = v7;
      v14 = v11;
      v16 = *(v7 + 16);
      v15 = *(v7 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_24A3C0C34((v15 > 1), v16 + 1, 1);
        v7 = v33;
      }

      *(v7 + 16) = v16 + 1;
      result = (*(v29 + 32))(v7 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v16, v14, v30);
      v12 = 1 << *(a1 + 32);
      if (v9 >= v12)
      {
        goto LABEL_27;
      }

      v17 = *(v31 + 8 * v13);
      if ((v17 & (1 << v9)) == 0)
      {
        goto LABEL_28;
      }

      if (v32 != *(a1 + 36))
      {
        goto LABEL_29;
      }

      v18 = v17 & (-2 << (v9 & 0x3F));
      if (v18)
      {
        v11 = v14;
        v12 = __clz(__rbit64(v18)) | v9 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v13 << 6;
        v20 = v13 + 1;
        v21 = (v25 + 8 * v13);
        while (v20 < (v12 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            result = sub_24A406830(v9, v32, 0);
            v12 = __clz(__rbit64(v22)) + v19;
            goto LABEL_20;
          }
        }

        result = sub_24A406830(v9, v32, 0);
LABEL_20:
        v11 = v26;
      }

      ++v10;
      v9 = v12;
      if (v10 == v27)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_24A475F30(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v23 = a2;
  v5 = result + 56;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 56);
  for (i = (v6 + 63) >> 6; v8; result = )
  {
    v10 = v4;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(v3 + 48) + ((v10 << 11) | (32 * v11));
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    LODWORD(v11) = *(v12 + 24);
    v16 = *(v12 + 25);
    v17 = *(v12 + 26);
    v18 = v2 & 0xFF000000 | v11;
    if (v16)
    {
      v19 = 256;
    }

    else
    {
      v19 = 0;
    }

    v20 = v18 | v19;
    if (v17)
    {
      v21 = 0x10000;
    }

    else
    {
      v21 = 0;
    }

    v2 = v20 | v21;

    sub_24A485D4C(v22, v13, v14, v15, v2);
  }

  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v23;
    }

    v8 = *(v5 + 8 * v10);
    ++v4;
    if (v8)
    {
      v4 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

FMFCore::FMFActionStatus_optional __swiftcall FMFActionStatus.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 200)
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  if (rawValue)
  {
    v3 = v2;
  }

  else
  {
    v3 = 1;
  }

  if (rawValue == -1)
  {
    v3 = 0;
  }

  *v1 = v3;
  return rawValue;
}

uint64_t sub_24A4760F0()
{
  v1 = *v0;
  sub_24A4AC360();
  MEMORY[0x24C218780](qword_24A4BC638[v1]);
  return sub_24A4AC3A0();
}

uint64_t sub_24A476178(uint64_t a1)
{
  v2 = *v1;
  sub_24A4AC360();
  MEMORY[0x24C218780](qword_24A4BC638[v2]);
  return sub_24A4AC3A0();
}

void *sub_24A4761EC(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v40 = a4;
  v41 = a1;
  v42 = a3;
  v7 = sub_24A4AAD70();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A4AAB20();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A4AAB10();
  v15 = sub_24A4AAAF0();
  v17 = v16;
  (*(v12 + 8))(v14, v11);
  v5[2] = v15;
  v5[3] = v17;
  v5[5] = 0;
  swift_unknownObjectWeakInit();
  sub_24A4AB3B0();
  (*(v8 + 104))(v10, *MEMORY[0x277D09048], v7);
  v18 = sub_24A4AB260();
  (*(v8 + 8))(v10, v7);
  v5[18] = v18;
  sub_24A39997C(v41, (v5 + 12));
  v5[6] = a2;
  v5[17] = v40;
  sub_24A39997C(v42, (v5 + 7));
  v19 = qword_27EF3EBF8;
  v39[1] = a2;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = sub_24A4AB630();
  sub_24A378E18(v20, qword_27EF4E260);

  v21 = sub_24A4AB600();
  v22 = sub_24A4ABCE0();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v43 = v24;
    *v23 = 136315138;
    v25 = v5[2];
    v26 = v5[3];

    v27 = sub_24A37E99C(0xCuLL, v25, v26);
    v29 = v28;
    v31 = v30;
    v33 = v32;

    v34 = MEMORY[0x24C217CD0](v27, v29, v31, v33);
    v36 = v35;

    v37 = sub_24A37BD58(v34, v36, &v43);

    *(v23 + 4) = v37;
    _os_log_impl(&dword_24A376000, v21, v22, "FMFActionsController<%s>.init", v23, 0xCu);
    sub_24A37EEE0(v24);
    MEMORY[0x24C219130](v24, -1, -1);
    MEMORY[0x24C219130](v23, -1, -1);
  }

  sub_24A37EEE0(v42);
  sub_24A37EEE0(v41);
  return v5;
}

void *sub_24A476598()
{
  v1 = v0;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A4AB630();
  sub_24A378E18(v2, qword_27EF4E260);

  v3 = sub_24A4AB600();
  v4 = sub_24A4ABCE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21 = v6;
    *v5 = 136315138;
    v7 = v1[2];
    v8 = v1[3];

    v9 = sub_24A37E99C(0xCuLL, v7, v8);
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = MEMORY[0x24C217CD0](v9, v11, v13, v15);
    v18 = v17;

    v19 = sub_24A37BD58(v16, v18, &v21);

    *(v5 + 4) = v19;
    _os_log_impl(&dword_24A376000, v3, v4, "FMFActionsController<%s>.deinit", v5, 0xCu);
    sub_24A37EEE0(v6);
    MEMORY[0x24C219130](v6, -1, -1);
    MEMORY[0x24C219130](v5, -1, -1);
  }

  sub_24A3C8470((v1 + 4));

  sub_24A37EEE0(v1 + 7);
  sub_24A37EEE0(v1 + 12);

  return v1;
}

uint64_t sub_24A47678C()
{
  sub_24A476598();

  return swift_deallocClassInstance();
}

uint64_t sub_24A4767C0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24A473E28(v2);
  }

  v3 = *(v2 + 2);
  v20[0] = (v2 + 32);
  v20[1] = v3;
  result = sub_24A4AC220();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 64;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[24 * i + 48];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 2))
          {
            break;
          }

          v14 = *(v13 - 2);
          v15 = *(v13 - 2);
          *(v13 - 3) = *v13;
          v13 -= 24;
          v16 = *(v13 + 2);
          *(v13 + 4) = v15;
          *(v13 + 1) = v14;
          *(v13 - 1) = v16;
          *(v13 + 1) = v11;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 24;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_24A4ABAC0();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v18[0] = v7 + 32;
    v18[1] = v6;
    sub_24A488E58(v18, v19, v20, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_24A476924(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v211 = sub_24A4AB220();
  v216 = *(v211 - 8);
  MEMORY[0x28223BE20](v211);
  v9 = &v170 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v170 - v11;
  v215 = sub_24A4AB690();
  v209 = *(v215 - 8);
  MEMORY[0x28223BE20](v215);
  v214 = &v170 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = sub_24A4AB6E0();
  v208 = *(v213 - 8);
  MEMORY[0x28223BE20](v213);
  v212 = &v170 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = type metadata accessor for FMFIntermediateFriend(0);
  v201 = *(v197 - 8);
  MEMORY[0x28223BE20](v197);
  v194 = &v170 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  MEMORY[0x28223BE20](v16 - 8);
  v199 = &v170 - v17;
  v18 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  MEMORY[0x28223BE20](v18 - 8);
  v200 = &v170 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v203 = &v170 - v21;
  v22 = sub_24A3C9CEC(&qword_27EF3F2E0, &qword_24A4BACE0);
  MEMORY[0x28223BE20](v22 - 8);
  v193 = &v170 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v210 = (&v170 - v25);
  v26 = sub_24A3C9CEC(&qword_27EF3F2D0, &qword_24A4B4F50);
  MEMORY[0x28223BE20](v26 - 8);
  v192 = &v170 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v198 = &v170 - v29;
  v202 = type metadata accessor for FMFFriend(0);
  v30 = *(v202 - 8);
  MEMORY[0x28223BE20](v202);
  v190 = (&v170 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v32);
  v195 = &v170 - v33;
  MEMORY[0x28223BE20](v34);
  v36 = (&v170 - v35);
  MEMORY[0x28223BE20](v37);
  v191 = &v170 - v38;
  MEMORY[0x28223BE20](v39);
  v218 = &v170 - v40;
  if (qword_27EF3EBF8 != -1)
  {
LABEL_56:
    swift_once();
  }

  v41 = sub_24A4AB630();
  sub_24A378E18(v41, qword_27EF4E260);

  v42 = sub_24A4AB600();
  v43 = sub_24A4ABCE0();

  v44 = os_log_type_enabled(v42, v43);
  v217 = v4;
  v206 = a3;
  v205 = a2;
  v204 = v12;
  v196 = v9;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    aBlock = v46;
    *v45 = 136315138;
    v219 = *v4;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v47 = sub_24A4AB870();
    v49 = a1;
    v50 = sub_24A37BD58(v47, v48, &aBlock);

    *(v45 + 4) = v50;
    a1 = v49;
    _os_log_impl(&dword_24A376000, v42, v43, "%s: shareLocation action initiated", v45, 0xCu);
    sub_24A37EEE0(v46);
    MEMORY[0x24C219130](v46, -1, -1);
    MEMORY[0x24C219130](v45, -1, -1);
  }

  v4 = a1[5];
  v207 = a1;
  if (!v4)
  {
    goto LABEL_11;
  }

  a2 = a1[4];
  v51 = v217[6];
  sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
  v189 = v51;
  sub_24A4ABD70();
  v52 = aBlock;
  v12 = aBlock[2];
  if (!v12)
  {
LABEL_10:

LABEL_11:
    v54 = a1[3];
    v55 = *(v54 + 16);
    v56 = v217;
    if (v55)
    {
      v210 = &v223;
      ++v209;
      ++v208;
      v57 = (v54 + 40);
      do
      {
        v59 = *(v57 - 1);
        v58 = *v57;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v61 = *(Strong + 88);
          v218 = *(v61 + 56);
          v62 = swift_allocObject();
          v62[2] = v61;
          v62[3] = v59;
          v62[4] = v58;
          v225 = sub_24A489AB0;
          v226 = v62;
          aBlock = MEMORY[0x277D85DD0];
          v222 = 1107296256;
          v223 = sub_24A388564;
          v224 = &unk_285D8B5F0;
          v63 = _Block_copy(&aBlock);
          swift_retain_n();

          v64 = v212;
          sub_24A4AB6B0();
          v219 = MEMORY[0x277D84F90];
          sub_24A38D374(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
          sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
          sub_24A3CFC00();
          v65 = v214;
          v66 = v215;
          sub_24A4ABE90();
          MEMORY[0x24C218190](0, v64, v65, v63);
          v67 = v63;
          v56 = v217;
          _Block_release(v67);
          swift_unknownObjectRelease();
          (*v209)(v65, v66);
          (*v208)(v64, v213);
        }

        v57 += 2;
        --v55;
      }

      while (v55);
    }

    goto LABEL_42;
  }

  v9 = 0;
  a3 = MEMORY[0x277D837D0];
  while (1)
  {
    if (v9 >= *(v52 + 16))
    {
      __break(1u);
      goto LABEL_56;
    }

    sub_24A495474(v52 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v9, v36, type metadata accessor for FMFFriend);
    v53 = v36[1];
    aBlock = *v36;
    v222 = v53;
    v219 = a2;
    v220 = v4;
    sub_24A3A1434();
    if (sub_24A4ABE60())
    {
      break;
    }

    ++v9;
    sub_24A489C74(v36, type metadata accessor for FMFFriend);
    if (v12 == v9)
    {
      goto LABEL_10;
    }
  }

  v68 = v191;
  sub_24A4954DC(v36, v191, type metadata accessor for FMFFriend);
  v69 = v68;
  v70 = v218;
  sub_24A4954DC(v69, v218, type metadata accessor for FMFFriend);
  v71 = v198;
  sub_24A495474(v70, v198, type metadata accessor for FMFFriend);
  v72 = v202;
  (*(v30 + 56))(v71, 0, 1, v202);
  v73 = v197;
  (*(v201 + 56))(v210, 1, 1);
  v74 = type metadata accessor for FMFLocation(0);
  v185 = *(v74 - 8);
  v76 = v185 + 56;
  v75 = *(v185 + 56);
  v75(v203, 1, 1, v74);
  v77 = v195;
  v187 = v72[21];
  v195[v187] = 7;
  v78 = sub_24A4AAAD0();
  v79 = v199;
  (*(*(v78 - 8) + 56))(v199, 1, 1, v78);
  v80 = v200;
  v186 = v74;
  v173 = v76;
  v172 = v75;
  v75(v200, 1, 1, v74);
  v81 = v192;
  sub_24A37B740(v71, v192, &qword_27EF3F2D0, &qword_24A4B4F50);
  if ((*(v30 + 48))(v81, 1, v72) == 1)
  {
    sub_24A37EF2C(v81, &qword_27EF3F2D0, &qword_24A4B4F50);
    v184 = 0;
    v183 = 0;
    v82 = 0;
    v83 = 0;
    v187 = 0;
    v181 = 0;
    v180 = 0;
    v179 = 0;
    v178 = 0;
    v177 = 0;
    v176 = 0;
    v175 = 0;
    v188 = 0;
    v215 = 0;
    v191 = 0;
    v214 = 0xE000000000000000;
    v213 = MEMORY[0x277D84FA0];
    LODWORD(v212) = 2;
    v182 = 0x7FFFFFFFFFFFFFFFLL;
    v84 = 1;
    LODWORD(v209) = 2;
    LODWORD(v192) = 2;
    v174 = 2;
    v85 = v77;
    v86 = v73;
  }

  else
  {
    sub_24A37EF2C(v80, &qword_27EF3F480, &unk_24A4B8C20);
    sub_24A37EF2C(v79, &qword_27EF3F460, &unk_24A4B53B0);
    v87 = v190;
    sub_24A4954DC(v81, v190, type metadata accessor for FMFFriend);
    v88 = v87[1];
    v191 = *v87;
    v214 = v88;
    v89 = v87[3];
    v188 = v87[2];
    v215 = v89;
    v213 = v87[4];
    sub_24A37B740(v87 + v72[8], v79, &qword_27EF3F460, &unk_24A4B53B0);
    v90 = v72[10];
    v171 = *(v87 + v72[9]);
    v174 = *(v87 + v90);
    v91 = v72[12];
    LODWORD(v192) = *(v87 + v72[11]);
    LODWORD(v209) = *(v87 + v91);
    v183 = *(v87 + v72[18]);
    v92 = v72[14];
    v184 = *(v87 + v72[13]);
    LODWORD(v212) = *(v87 + v92);
    v182 = *(v87 + v72[15]);
    sub_24A37B740(v87 + v72[20], v80, &qword_27EF3F480, &unk_24A4B8C20);
    v93 = (v87 + v72[19]);
    v95 = *v93;
    v94 = v93[1];
    v97 = v93[2];
    v96 = v93[3];
    v98 = v77;
    v99 = v93[4];
    v100 = v93[5];
    v101 = v93[6];
    v102 = *(v87 + v72[16]);
    v208 = *(v87 + v72[17]);
    *(v98 + v187) = *(v87 + v72[21]);
    v103 = v87[5];

    v181 = v95;
    v180 = v94;
    v104 = v94;
    v82 = v103;
    v179 = v97;
    v178 = v96;
    v177 = v99;
    v176 = v100;
    v175 = v101;
    v105 = v101;
    v86 = v197;
    sub_24A39AED0(v95, v104, v97, v96, v99, v100, v105);

    v187 = v102;
    v83 = v208;

    sub_24A489C74(v87, type metadata accessor for FMFFriend);
    v84 = v171 | 1;
    v85 = v195;
  }

  v106 = v210;
  v107 = v193;
  sub_24A37B740(v210, v193, &qword_27EF3F2E0, &qword_24A4BACE0);
  v108 = (*(v201 + 48))(v107, 1, v86);
  v109 = v203;
  v110 = v194;
  v208 = v83;
  v190 = v84;
  if (v108 == 1)
  {
    v111 = v82;
    sub_24A37EF2C(v106, &qword_27EF3F2E0, &qword_24A4BACE0);
    sub_24A37EF2C(v198, &qword_27EF3F2D0, &qword_24A4B4F50);
    sub_24A489C74(v218, type metadata accessor for FMFFriend);
    sub_24A37EF2C(v107, &qword_27EF3F2E0, &qword_24A4BACE0);
    v112 = v199;
    v113 = v182;
  }

  else
  {

    sub_24A4954DC(v107, v110, type metadata accessor for FMFIntermediateFriend);
    if (v192 == 2 || (v192 & 1) == 0)
    {
      v114 = *(v110 + v86[14]);
    }

    else
    {
      v114 = 1;
    }

    if (v209 == 2 || (v209 & 1) == 0)
    {
      v115 = *(v110 + v86[15]);
    }

    else
    {
      v115 = 1;
    }

    v116 = v110[1];
    v117 = v110[3];
    if (v212 == 2 || (v212 & 1) == 0)
    {
      v118 = *(v110 + v86[16]);
    }

    else
    {
      v118 = 1;
    }

    v119 = *v110;
    v120 = v110[2];
    v121 = *(v110 + v86[17]);
    v122 = v110[9];
    LODWORD(v212) = v118 & 1;
    v215 = v117;
    v214 = v116;
    LODWORD(v209) = v115 & 1;
    v191 = v119;
    v188 = v120;
    LODWORD(v192) = v114 & 1;
    if (v122)
    {
      v123 = v110[8];
      sub_24A3C9CEC(&qword_27EF3F2F0, &unk_24A4B68D0);
      inited = swift_initStackObject();
      v125 = v121;
      v126 = inited;
      *(inited + 16) = xmmword_24A4B4E10;
      *(inited + 32) = v123;
      v127 = inited + 32;
      v86 = v197;
      *(inited + 40) = v122;
      v111 = v125;

      v213 = sub_24A48A0F4(v126, v213);
      swift_setDeallocating();
      v128 = v127;
      v106 = v210;
      sub_24A406964(v128);
    }

    else
    {
      v129 = v110[4];
      v111 = v121;

      if (v129)
      {

        v130 = sub_24A3999E0(v129);

        v213 = sub_24A399BC8(v130, v213);
      }
    }

    v112 = v199;
    v113 = v182;
    sub_24A37EF2C(v199, &qword_27EF3F460, &unk_24A4B53B0);
    sub_24A37EF2C(v106, &qword_27EF3F2E0, &qword_24A4BACE0);
    sub_24A37EF2C(v198, &qword_27EF3F2D0, &qword_24A4B4F50);
    sub_24A489C74(v218, type metadata accessor for FMFFriend);
    sub_24A37B740(v110 + v86[12], v112, &qword_27EF3F460, &unk_24A4B53B0);
    sub_24A489C74(v110, type metadata accessor for FMFIntermediateFriend);
  }

  v131 = v202;
  v132 = *(v202 + 56);
  v133 = v214;
  *v85 = v191;
  v85[1] = v133;
  v134 = v215;
  v85[2] = v188;
  v85[3] = v134;
  v85[4] = v213;
  sub_24A37BE24(v112, v85 + v131[8], &qword_27EF3F460, &unk_24A4B53B0);
  *(v85 + v131[9]) = v190;
  *(v85 + v131[10]) = v174;
  *(v85 + v131[11]) = v192;
  *(v85 + v131[12]) = v209;
  v135 = (v85 + v131[19]);
  v136 = v180;
  *v135 = v181;
  v135[1] = v136;
  v137 = v178;
  v135[2] = v179;
  v135[3] = v137;
  v138 = v176;
  v135[4] = v177;
  v135[5] = v138;
  v135[6] = v175;
  *(v85 + v132) = v212;
  *(v85 + v131[18]) = v183;
  *(v85 + v131[13]) = v184;
  v85[5] = v111;
  *(v85 + v131[15]) = v113;
  v139 = v186;
  v140 = (*(v185 + 48))(v109, 1, v186);
  v56 = v217;
  if (v140 == 1)
  {
    sub_24A37EF2C(v109, &qword_27EF3F480, &unk_24A4B8C20);
    sub_24A37BE24(v200, v85 + v131[20], &qword_27EF3F480, &unk_24A4B8C20);
  }

  else
  {
    sub_24A37EF2C(v200, &qword_27EF3F480, &unk_24A4B8C20);
    v141 = v131[20];
    sub_24A4954DC(v109, v85 + v141, type metadata accessor for FMFLocation);
    v172(v85 + v141, 0, 1, v139);
  }

  *(v85 + v131[16]) = v187;
  *(v85 + v131[17]) = v208;
  v142 = v218;
  sub_24A4954DC(v85, v218, type metadata accessor for FMFFriend);
  LOBYTE(aBlock) = 2;
  sub_24A4507E0(v142, &aBlock);
  sub_24A489C74(v142, type metadata accessor for FMFFriend);
LABEL_42:
  v143 = sub_24A4AA700();
  v224 = v143;
  v144 = sub_24A38D374(&qword_27EF40910, MEMORY[0x277D08A28], MEMORY[0x277D089C8]);
  v225 = v144;
  v145 = sub_24A38D3BC(&aBlock);
  v146 = *(*(v143 - 8) + 104);
  v146(v145, *MEMORY[0x277D08A20], v143);
  v147 = sub_24A4AA6C0();
  sub_24A37EEE0(&aBlock);
  v148 = v207;
  v149 = v207[3];
  if (v147)
  {
    v150 = *(v149 + 16);
    if (v150)
    {
      aBlock = MEMORY[0x277D84F90];
      sub_24A3C0C34(0, v150, 0);
      v151 = aBlock;
      v152 = v149 + 40;
      v153 = v196;
      do
      {

        sub_24A4AB200();
        aBlock = v151;
        v155 = *(v151 + 16);
        v154 = *(v151 + 24);
        if (v155 >= v154 >> 1)
        {
          sub_24A3C0C34((v154 > 1), v155 + 1, 1);
          v151 = aBlock;
        }

        *(v151 + 16) = v155 + 1;
        (*(v216 + 32))(v151 + ((*(v216 + 80) + 32) & ~*(v216 + 80)) + *(v216 + 72) * v155, v153, v211);
        v152 += 16;
        --v150;
      }

      while (v150);
      v56 = v217;
      v148 = v207;
    }

    else
    {
      v151 = MEMORY[0x277D84F90];
    }

    v166 = sub_24A4ABB70();
    v167 = v204;
    (*(*(v166 - 8) + 56))(v204, 1, 1, v166);
    v168 = swift_allocObject();
    v168[2] = 0;
    v168[3] = 0;
    v168[4] = v151;
    v168[5] = v148;
    v169 = v205;
    v168[6] = v56;
    v168[7] = v169;
    v168[8] = v206;

    v163 = &unk_24A4BC540;
    v164 = v167;
    v165 = v168;
  }

  else
  {
    v224 = v143;
    v225 = v144;
    v156 = sub_24A38D3BC(&aBlock);
    v146(v156, *MEMORY[0x277D089F8], v143);
    v157 = sub_24A4AA6C0();
    result = sub_24A37EEE0(&aBlock);
    if ((v157 & 1) == 0)
    {
      return result;
    }

    v159 = sub_24A4ABB70();
    v160 = v204;
    (*(*(v159 - 8) + 56))(v204, 1, 1, v159);
    v161 = swift_allocObject();
    v161[2] = 0;
    v161[3] = 0;
    v161[4] = v149;
    v161[5] = v56;
    v162 = v205;
    v161[6] = v148;
    v161[7] = v162;
    v161[8] = v206;

    v163 = &unk_24A4BC530;
    v164 = v160;
    v165 = v161;
  }

  sub_24A432370(0, 0, v164, v163, v165);
}

uint64_t sub_24A4782E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  sub_24A3C9CEC(&qword_27EF40C28, &qword_24A4BC550);
  v8[7] = swift_task_alloc();
  v9 = sub_24A4AAD70();
  v8[8] = v9;
  v8[9] = *(v9 - 8);
  v8[10] = swift_task_alloc();
  sub_24A4AADE0();
  v8[11] = swift_task_alloc();
  v10 = sub_24A4AAEA0();
  v8[12] = v10;
  v8[13] = *(v10 - 8);
  v8[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A47846C, 0, 0);
}

uint64_t sub_24A47846C()
{
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v1 = sub_24A4AB630();
  v0[15] = sub_24A378E18(v1, qword_27EF4E260);
  v2 = sub_24A4AB600();
  v3 = sub_24A4ABCE0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24A376000, v2, v3, "FMFActionsController: perform offer location", v4, 2u);
    MEMORY[0x24C219130](v4, -1, -1);
  }

  v5 = v0[10];
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[7];
  v9 = v0[3];

  (*(v7 + 104))(v5, *MEMORY[0x277D09048], v6);
  sub_24A4AADF0();
  sub_24A4AB3B0();
  swift_allocObject();
  v0[16] = sub_24A4AB3D0();
  v10 = sub_24A4AB220();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = OBJC_IVAR____TtC7FMFCore22FMFShareLocationAction_duration;
  v12 = swift_task_alloc();
  v0[17] = v12;
  *v12 = v0;
  v12[1] = sub_24A478698;
  v13 = v0[14];
  v14 = v0[7];
  v15 = v0[2];

  return MEMORY[0x28215FAD0](v13, v15, v14, v9 + v11, 0);
}

uint64_t sub_24A478698()
{
  v2 = *v1;
  (*v1)[18] = v0;

  if (v0)
  {
    sub_24A37EF2C(v2[7], &qword_27EF40C28, &qword_24A4BC550);

    v3 = sub_24A478990;
  }

  else
  {
    v5 = v2[13];
    v4 = v2[14];
    v6 = v2[12];
    v7 = v2[7];

    sub_24A37EF2C(v7, &qword_27EF40C28, &qword_24A4BC550);
    (*(v5 + 8))(v4, v6);
    v3 = sub_24A478834;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24A478834()
{
  v10 = v0;
  v1 = v0[3];
  v2 = *(v1 + 40);
  if (v2)
  {
    sub_24A4510AC(*(v1 + 32), v2, 0);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_24A4363BC();
    swift_unknownObjectRelease();
  }

  v3 = sub_24A4AB600();
  v4 = sub_24A4ABCE0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24A376000, v3, v4, "FMFActionsController: share location operation completed.", v5, 2u);
    MEMORY[0x24C219130](v5, -1, -1);
  }

  v6 = v0[5];

  v9 = 2;
  v6(&v9, 0);

  v7 = v0[1];

  return v7();
}

uint64_t sub_24A478990()
{
  v18 = v0;
  v1 = v0[3];
  v2 = *(v1 + 40);
  if (v2)
  {
    sub_24A4510AC(*(v1 + 32), v2, 1);
  }

  v3 = v0[18];
  v4 = v3;
  v5 = sub_24A4AB600();
  v6 = sub_24A4ABCE0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[18];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24A376000, v5, v6, "FMFActionsController: error offering location: %@", v8, 0xCu);
    sub_24A37EF2C(v9, &qword_27EF403C0, &unk_24A4B5050);
    MEMORY[0x24C219130](v9, -1, -1);
    MEMORY[0x24C219130](v8, -1, -1);
  }

  v12 = v0[18];
  v13 = v0[5];

  v17 = 0;
  v14 = v12;
  v13(&v17, v12);

  v15 = v0[1];

  return v15();
}

uint64_t sub_24A478B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[4] = a4;
  v9 = sub_24A4AB220();
  v8[9] = v9;
  v8[10] = *(v9 - 8);
  v8[11] = swift_task_alloc();
  sub_24A3C9CEC(&qword_27EF40C28, &qword_24A4BC550);
  v8[12] = swift_task_alloc();
  v10 = sub_24A4AAEA0();
  v8[13] = v10;
  v8[14] = *(v10 - 8);
  v8[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A478CB8, 0, 0);
}

uint64_t sub_24A478CB8()
{
  v1 = v0[4];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[10];
    v16 = MEMORY[0x277D84F90];
    sub_24A3C0C34(0, v2, 0);
    v4 = v16;
    v5 = v1 + 40;
    do
    {

      sub_24A4AB200();
      v7 = *(v16 + 16);
      v6 = *(v16 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_24A3C0C34((v6 > 1), v7 + 1, 1);
      }

      v8 = v0[11];
      v9 = v0[9];
      *(v16 + 16) = v7 + 1;
      (*(v3 + 32))(v16 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v7, v8, v9);
      v5 += 16;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v0[16] = v4;
  v10 = v0[6];
  (*(v0[10] + 56))(v0[12], 1, 1, v0[9]);
  v11 = OBJC_IVAR____TtC7FMFCore22FMFShareLocationAction_duration;
  v12 = swift_task_alloc();
  v0[17] = v12;
  *v12 = v0;
  v12[1] = sub_24A478EB0;
  v13 = v0[15];
  v14 = v0[12];

  return MEMORY[0x28215FAD0](v13, v4, v14, v10 + v11, 0);
}

uint64_t sub_24A478EB0()
{
  v2 = *v1;
  (*v1)[18] = v0;

  if (v0)
  {
    sub_24A37EF2C(v2[12], &qword_27EF40C28, &qword_24A4BC550);

    v3 = sub_24A479294;
  }

  else
  {
    v5 = v2[14];
    v4 = v2[15];
    v8 = v2 + 12;
    v6 = v2[12];
    v7 = v8[1];

    sub_24A37EF2C(v6, &qword_27EF40C28, &qword_24A4BC550);
    (*(v5 + 8))(v4, v7);
    v3 = sub_24A479048;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24A479048()
{
  v17 = v0;
  v1 = v0[6];
  v2 = *(v1 + 40);
  if (v2)
  {
    sub_24A4510AC(*(v1 + 32), v2, 0);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_24A4363BC();
    swift_unknownObjectRelease();
  }

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v3 = sub_24A4AB630();
  sub_24A378E18(v3, qword_27EF4E260);

  v4 = sub_24A4AB600();
  v5 = sub_24A4ABCE0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    v0[3] = *v6;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v9 = sub_24A4AB870();
    v11 = sub_24A37BD58(v9, v10, &v16);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_24A376000, v4, v5, "%s: share location operation completed.", v7, 0xCu);
    sub_24A37EEE0(v8);
    MEMORY[0x24C219130](v8, -1, -1);
    MEMORY[0x24C219130](v7, -1, -1);
  }

  v12 = v0[7];
  v15 = 2;
  v12(&v15, 0);

  v13 = v0[1];

  return v13();
}

uint64_t sub_24A479294()
{
  v25 = v0;
  v1 = v0[6];
  v2 = *(v1 + 40);
  if (v2)
  {
    sub_24A4510AC(*(v1 + 32), v2, 1);
  }

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v3 = v0[18];
  v4 = sub_24A4AB630();
  sub_24A378E18(v4, qword_27EF4E260);

  v5 = v3;
  v6 = sub_24A4AB600();
  v7 = sub_24A4ABCE0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[18];
    v9 = v0[5];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v10 = 136315394;
    v0[2] = *v9;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v13 = sub_24A4AB870();
    v15 = sub_24A37BD58(v13, v14, &v24);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    v16 = v8;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v17;
    *v11 = v17;
    _os_log_impl(&dword_24A376000, v6, v7, "%s: error when sharing location: %@", v10, 0x16u);
    sub_24A37EF2C(v11, &qword_27EF403C0, &unk_24A4B5050);
    MEMORY[0x24C219130](v11, -1, -1);
    sub_24A37EEE0(v12);
    MEMORY[0x24C219130](v12, -1, -1);
    MEMORY[0x24C219130](v10, -1, -1);
  }

  v18 = v0[18];
  v19 = v0[7];
  v23 = 0;
  v20 = v18;
  v19(&v23, v18);

  v21 = v0[1];

  return v21();
}

uint64_t sub_24A479550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  sub_24A3C9CEC(&qword_27EF40C28, &qword_24A4BC550);
  v8[7] = swift_task_alloc();
  v9 = sub_24A4AAD70();
  v8[8] = v9;
  v8[9] = *(v9 - 8);
  v8[10] = swift_task_alloc();
  sub_24A4AADE0();
  v8[11] = swift_task_alloc();
  v10 = sub_24A4AAEA0();
  v8[12] = v10;
  v8[13] = *(v10 - 8);
  v8[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A4796D8, 0, 0);
}

uint64_t sub_24A4796D8()
{
  v25 = v0;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v1 = sub_24A4AB630();
  v0[15] = sub_24A378E18(v1, qword_27EF4E260);
  v2 = sub_24A4AB600();
  v3 = sub_24A4ABCE0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24A376000, v2, v3, "FMFActionsController: perform stop sharing my location", v4, 2u);
    MEMORY[0x24C219130](v4, -1, -1);
  }

  v5 = v0[10];
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[2];

  (*(v7 + 104))(v5, *MEMORY[0x277D09048], v6);
  sub_24A4AADF0();
  sub_24A4AB3B0();
  swift_allocObject();
  v0[16] = sub_24A4AB3D0();
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v0[2];
    v11 = sub_24A40B3D0(v9, 0);
    v12 = *(sub_24A4AB220() - 8);
    sub_24A40C53C(&v24, &v11[(*(v12 + 80) + 32) & ~*(v12 + 80)], v9, v10);
    v14 = v13;
    v15 = v24;

    v16 = sub_24A3A13C0(v15);
    if (v14 != v9)
    {
      __break(1u);
      return MEMORY[0x28215FA38](v16, v17, v18, v19);
    }
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v0[17] = v11;
  v20 = v0[7];
  v21 = sub_24A4AB220();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  v22 = swift_task_alloc();
  v0[18] = v22;
  *v22 = v0;
  v22[1] = sub_24A4799BC;
  v16 = v0[14];
  v18 = v0[7];
  v17 = v11;
  v19 = 0;

  return MEMORY[0x28215FA38](v16, v17, v18, v19);
}

uint64_t sub_24A4799BC()
{
  v2 = *v1;
  (*v1)[19] = v0;

  if (v0)
  {
    sub_24A37EF2C(v2[7], &qword_27EF40C28, &qword_24A4BC550);

    v3 = sub_24A479CD8;
  }

  else
  {
    v5 = v2[13];
    v4 = v2[14];
    v6 = v2[12];
    v7 = v2[7];

    sub_24A37EF2C(v7, &qword_27EF40C28, &qword_24A4BC550);
    (*(v5 + 8))(v4, v6);
    v3 = sub_24A479B7C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24A479B7C()
{
  v8 = v0;
  sub_24A4510AC(*(v0[4] + OBJC_IVAR____TtC7FMFCore20FMFStopSharingAction_friend), *(v0[4] + OBJC_IVAR____TtC7FMFCore20FMFStopSharingAction_friend + 8), 0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_24A4363BC();
    swift_unknownObjectRelease();
  }

  v1 = sub_24A4AB600();
  v2 = sub_24A4ABCE0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24A376000, v1, v2, "FMFActionsController: Stop share completed successfully.", v3, 2u);
    MEMORY[0x24C219130](v3, -1, -1);
  }

  v4 = v0[5];

  v7 = 2;
  v4(&v7, 0);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24A479CD8()
{
  v16 = v0;
  v1 = v0[19];
  sub_24A4510AC(*(v0[4] + OBJC_IVAR____TtC7FMFCore20FMFStopSharingAction_friend), *(v0[4] + OBJC_IVAR____TtC7FMFCore20FMFStopSharingAction_friend + 8), 1);
  v2 = v1;
  v3 = sub_24A4AB600();
  v4 = sub_24A4ABCE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[19];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24A376000, v3, v4, "FMFActionsController: Stop share completed with error: %@", v6, 0xCu);
    sub_24A37EF2C(v7, &qword_27EF403C0, &unk_24A4B5050);
    MEMORY[0x24C219130](v7, -1, -1);
    MEMORY[0x24C219130](v6, -1, -1);
  }

  v10 = v0[19];
  v11 = v0[5];

  v15 = 0;
  v12 = v10;
  v11(&v15, v10);

  v13 = v0[1];

  return v13();
}

uint64_t sub_24A479EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  sub_24A3C9CEC(&qword_27EF40C28, &qword_24A4BC550);
  v7[8] = swift_task_alloc();
  v8 = sub_24A4AAEA0();
  v7[9] = v8;
  v7[10] = *(v8 - 8);
  v7[11] = swift_task_alloc();
  v9 = sub_24A4AB220();
  v7[12] = v9;
  v7[13] = *(v9 - 8);
  v7[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A47A004, 0, 0);
}

uint64_t sub_24A47A004()
{
  v1 = v0[4];
  v2 = OBJC_IVAR____TtC7FMFCore20FMFStopSharingAction_friend;
  v0[15] = OBJC_IVAR____TtC7FMFCore20FMFStopSharingAction_friend;
  v3 = *(v1 + v2 + 32);
  if (*(v3 + 16))
  {
    v4 = v0[13];
    v5 = v3 + 56;
    v6 = -1;
    v7 = -1 << *(v3 + 32);
    if (-v7 < 64)
    {
      v6 = ~(-1 << -v7);
    }

    v8 = v6 & *(v3 + 56);
    v9 = (63 - v7) >> 6;

    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    v23 = v10;
    if (v8)
    {
      goto LABEL_9;
    }

    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= v9)
      {

        goto LABEL_17;
      }

      v8 = *(v5 + 8 * v16);
      ++v14;
      if (v8)
      {
        v14 = v16;
        do
        {
LABEL_9:

          sub_24A4AB200();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v15 = sub_24A3C0C78(0, v15[2] + 1, 1, v15);
          }

          v18 = v15[2];
          v17 = v15[3];
          if (v18 >= v17 >> 1)
          {
            v15 = sub_24A3C0C78((v17 > 1), v18 + 1, 1, v15);
          }

          v8 &= v8 - 1;
          v19 = v0[14];
          v20 = v0[12];
          v15[2] = v18 + 1;
          (*(v4 + 32))(v15 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v18, v19, v20);
          v10 = v23;
        }

        while (v8);
      }
    }

    __break(1u);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
LABEL_17:
    v0[16] = v15;
    (*(v0[13] + 56))(v0[8], 1, 1, v0[12]);
    v21 = swift_task_alloc();
    v0[17] = v21;
    *v21 = v0;
    v21[1] = sub_24A47A2A8;
    v10 = v0[11];
    v12 = v0[8];
    v11 = v15;
    v13 = 0;
  }

  return MEMORY[0x28215FA38](v10, v11, v12, v13);
}

uint64_t sub_24A47A2A8()
{
  v2 = *v1;
  (*v1)[18] = v0;

  if (v0)
  {
    sub_24A37EF2C(v2[8], &qword_27EF40C28, &qword_24A4BC550);

    v3 = sub_24A47A688;
  }

  else
  {
    v5 = v2[10];
    v4 = v2[11];
    v8 = v2 + 8;
    v6 = v2[8];
    v7 = v8[1];

    sub_24A37EF2C(v6, &qword_27EF40C28, &qword_24A4BC550);
    (*(v5 + 8))(v4, v7);
    v3 = sub_24A47A440;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24A47A440()
{
  v16 = v0;
  v1 = (v0[4] + v0[15]);
  sub_24A4510AC(*v1, v1[1], 0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_24A4363BC();
    swift_unknownObjectRelease();
  }

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A4AB630();
  sub_24A378E18(v2, qword_27EF4E260);

  v3 = sub_24A4AB600();
  v4 = sub_24A4ABCE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[5];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    v0[3] = *v5;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v8 = sub_24A4AB870();
    v10 = sub_24A37BD58(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_24A376000, v3, v4, "%s: Stop share completed successfully.", v6, 0xCu);
    sub_24A37EEE0(v7);
    MEMORY[0x24C219130](v7, -1, -1);
    MEMORY[0x24C219130](v6, -1, -1);
  }

  v11 = v0[6];
  v14 = 2;
  v11(&v14, 0);

  v12 = v0[1];

  return v12();
}

uint64_t sub_24A47A688()
{
  v21 = v0;
  v1 = (v0[4] + v0[15]);
  sub_24A4510AC(*v1, v1[1], 1);
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v2 = v0[18];
  v3 = sub_24A4AB630();
  sub_24A378E18(v3, qword_27EF4E260);
  v4 = v2;
  v5 = sub_24A4AB600();
  v6 = sub_24A4ABCE0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[18];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    v0[2] = v7;
    v10 = v7;
    sub_24A3C9CEC(&qword_27EF3F0D0, &unk_24A4B6970);
    v11 = sub_24A4AB870();
    v13 = sub_24A37BD58(v11, v12, &v20);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_24A376000, v5, v6, "Stop share completed with error - %s", v8, 0xCu);
    sub_24A37EEE0(v9);
    MEMORY[0x24C219130](v9, -1, -1);
    MEMORY[0x24C219130](v8, -1, -1);
  }

  v14 = v0[18];
  v15 = v0[6];
  v19 = 0;
  v16 = v14;
  v15(&v19, v14);

  v17 = v0[1];

  return v17();
}

void sub_24A47A8B0(uint64_t a1, void *a2, uint64_t a3, NSObject *a4)
{
  swift_beginAccess();
  v7 = *(a3 + 16);
  *(a3 + 16) = a2;
  v8 = a2;

  dispatch_group_leave(a4);
}

void sub_24A47A91C(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(id *, void *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  if (*(a1 + 16))
  {
    sub_24A451C68(*(a3 + OBJC_IVAR____TtC7FMFCore21FMFRemoveFriendAction_friend), *(a3 + OBJC_IVAR____TtC7FMFCore21FMFRemoveFriendAction_friend + 8), 1);
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v15 = sub_24A4AB630();
    sub_24A378E18(v15, qword_27EF4E260);

    v16 = sub_24A4AB600();
    v17 = sub_24A4ABCE0();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v76[0] = v19;
      *v18 = 136315394;
      v75[0] = *a2;
      sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
      v20 = sub_24A4AB870();
      v22 = sub_24A37BD58(v20, v21, v76);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      swift_beginAccess();
      v74[0] = *(a1 + 16);
      v23 = v74[0];
      sub_24A3C9CEC(&qword_27EF3F2D8, &qword_24A4B7C60);
      v24 = sub_24A4AB870();
      v26 = sub_24A37BD58(v24, v25, v76);

      *(v18 + 14) = v26;
      _os_log_impl(&dword_24A376000, v16, v17, "%s: removeFollower error: %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v19, -1, -1);
      MEMORY[0x24C219130](v18, -1, -1);
    }

    LOBYTE(v74[0]) = 0;
    swift_beginAccess();
    v27 = *(a1 + 16);
    v28 = v27;
    v29 = v74;
LABEL_25:
    a4(v29, v27);

    return;
  }

  swift_beginAccess();
  if (*(a6 + 16))
  {
    sub_24A451C68(*(a3 + OBJC_IVAR____TtC7FMFCore21FMFRemoveFriendAction_friend), *(a3 + OBJC_IVAR____TtC7FMFCore21FMFRemoveFriendAction_friend + 8), 1);
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v30 = sub_24A4AB630();
    sub_24A378E18(v30, qword_27EF4E260);

    v31 = sub_24A4AB600();
    v32 = sub_24A4ABCE0();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v75[0] = v34;
      *v33 = 136315394;
      v74[0] = *a2;
      sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
      v35 = sub_24A4AB870();
      v37 = sub_24A37BD58(v35, v36, v75);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      swift_beginAccess();
      v73[0] = *(a6 + 16);
      v38 = v73[0];
      sub_24A3C9CEC(&qword_27EF3F2D8, &qword_24A4B7C60);
      v39 = sub_24A4AB870();
      v41 = sub_24A37BD58(v39, v40, v75);

      *(v33 + 14) = v41;
      _os_log_impl(&dword_24A376000, v31, v32, "%s: removeFollowingError error: %s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v34, -1, -1);
      MEMORY[0x24C219130](v33, -1, -1);
    }

    LOBYTE(v73[0]) = 0;
    swift_beginAccess();
    v27 = *(a6 + 16);
    v42 = v27;
    v29 = v73;
    goto LABEL_25;
  }

  swift_beginAccess();
  if (*(a7 + 16))
  {
    sub_24A451C68(*(a3 + OBJC_IVAR____TtC7FMFCore21FMFRemoveFriendAction_friend), *(a3 + OBJC_IVAR____TtC7FMFCore21FMFRemoveFriendAction_friend + 8), 1);
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v43 = sub_24A4AB630();
    sub_24A378E18(v43, qword_27EF4E260);

    v44 = sub_24A4AB600();
    v45 = sub_24A4ABCE0();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v74[0] = v47;
      *v46 = 136315394;
      v73[0] = *a2;
      sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
      v48 = sub_24A4AB870();
      v50 = sub_24A37BD58(v48, v49, v74);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2080;
      swift_beginAccess();
      v72 = *(a7 + 16);
      v51 = v72;
      sub_24A3C9CEC(&qword_27EF3F2D8, &qword_24A4B7C60);
      v52 = sub_24A4AB870();
      v54 = sub_24A37BD58(v52, v53, v74);

      *(v46 + 14) = v54;
      _os_log_impl(&dword_24A376000, v44, v45, "%s: removeFutureFollowingError error: %s", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v47, -1, -1);
      MEMORY[0x24C219130](v46, -1, -1);
    }

    LOBYTE(v72) = 0;
    swift_beginAccess();
    v27 = *(a7 + 16);
    v55 = v27;
    v29 = &v72;
    goto LABEL_25;
  }

  swift_beginAccess();
  v56 = *(a3 + OBJC_IVAR____TtC7FMFCore21FMFRemoveFriendAction_friend);
  v57 = *(a3 + OBJC_IVAR____TtC7FMFCore21FMFRemoveFriendAction_friend + 8);
  if (*(a8 + 16))
  {
    sub_24A451C68(v56, v57, 1);
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v58 = sub_24A4AB630();
    sub_24A378E18(v58, qword_27EF4E260);

    v59 = sub_24A4AB600();
    v60 = sub_24A4ABCE0();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v73[0] = v62;
      *v61 = 136315394;
      v72 = *a2;
      sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
      v63 = sub_24A4AB870();
      v65 = sub_24A37BD58(v63, v64, v73);

      *(v61 + 4) = v65;
      *(v61 + 12) = 2080;
      swift_beginAccess();
      v71 = *(a8 + 16);
      v66 = v71;
      sub_24A3C9CEC(&qword_27EF3F2D8, &qword_24A4B7C60);
      v67 = sub_24A4AB870();
      v69 = sub_24A37BD58(v67, v68, v73);

      *(v61 + 14) = v69;
      _os_log_impl(&dword_24A376000, v59, v60, "%s: removeFutureFollowerError error: %s", v61, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v62, -1, -1);
      MEMORY[0x24C219130](v61, -1, -1);
    }

    LOBYTE(v71) = 0;
    swift_beginAccess();
    v27 = *(a7 + 16);
    v70 = v27;
    v29 = &v71;
    goto LABEL_25;
  }

  sub_24A451C68(v56, v57, 0);
  LOBYTE(v73[0]) = 2;
  a4(v73, 0);
}

uint64_t sub_24A47B2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v13;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  sub_24A3C9CEC(&qword_27EF40C28, &qword_24A4BC550);
  v8[8] = swift_task_alloc();
  v8[9] = swift_task_alloc();
  v9 = sub_24A4AAD70();
  v8[10] = v9;
  v8[11] = *(v9 - 8);
  v8[12] = swift_task_alloc();
  sub_24A4AADE0();
  v8[13] = swift_task_alloc();
  v10 = sub_24A4AAEA0();
  v8[14] = v10;
  v8[15] = *(v10 - 8);
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A47B484, 0, 0);
}

uint64_t sub_24A47B484()
{
  v37 = v0;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v1 = sub_24A4AB630();
  v0[18] = sub_24A378E18(v1, qword_27EF4E260);
  v2 = sub_24A4AB600();
  v3 = sub_24A4ABCE0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24A376000, v2, v3, "FMFActionsController: performing respond to friendship invite", v4, 2u);
    MEMORY[0x24C219130](v4, -1, -1);
  }

  v5 = v0[12];
  v6 = v0[10];
  v7 = v0[11];
  v9 = v0[2];
  v8 = v0[3];

  LODWORD(v9) = *(v9 + 40);
  (*(v7 + 104))(v5, *MEMORY[0x277D09048], v6);
  sub_24A4AADF0();
  sub_24A4AB3B0();
  swift_allocObject();
  v0[19] = sub_24A4AB3D0();
  v10 = *(v8 + 16);
  if (v9 == 1)
  {
    if (!v10)
    {
      v12 = MEMORY[0x277D84F90];
      goto LABEL_13;
    }

    v11 = v0[3];
    v12 = sub_24A40B3D0(v10, 0);
    v13 = *(sub_24A4AB220() - 8);
    sub_24A40C53C(&v36, &v12[(*(v13 + 80) + 32) & ~*(v13 + 80)], v10, v11);
    v15 = v14;
    v16 = v36;

    v17 = sub_24A3A13C0(v16);
    if (v15 == v10)
    {
LABEL_13:
      v0[20] = v12;
      v27 = v0[9];
      v28 = sub_24A4AB220();
      (*(*(v28 - 8) + 56))(v27, 1, 1, v28);
      v29 = swift_task_alloc();
      v0[21] = v29;
      *v29 = v0;
      v29[1] = sub_24A47B900;
      v17 = v0[17];
      v19 = v0[9];
      v18 = v12;
      v20 = 0;

      return MEMORY[0x28215FAB0](v17, v18, v19, v20);
    }

    __break(1u);
LABEL_21:
    __break(1u);
    return MEMORY[0x28215FAB0](v17, v18, v19, v20);
  }

  if (v10)
  {
    v21 = v0[3];
    v22 = sub_24A40B3D0(v10, 0);
    v23 = *(sub_24A4AB220() - 8);
    sub_24A40C53C(&v36, &v22[(*(v23 + 80) + 32) & ~*(v23 + 80)], v10, v21);
    v25 = v24;
    v26 = v36;

    v17 = sub_24A3A13C0(v26);
    if (v25 != v10)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

  v0[23] = v22;
  v30 = v0[8];
  v31 = sub_24A4AB220();
  (*(*(v31 - 8) + 56))(v30, 1, 1, v31);
  v32 = swift_task_alloc();
  v0[24] = v32;
  *v32 = v0;
  v32[1] = sub_24A47BB74;
  v33 = v0[16];
  v34 = v0[8];

  return MEMORY[0x28215FAB8](v33, v22, v34, 0);
}

uint64_t sub_24A47B900()
{
  v2 = *v1;
  (*v1)[22] = v0;

  if (v0)
  {
    sub_24A37EF2C(v2[9], &qword_27EF40C28, &qword_24A4BC550);

    v3 = sub_24A47BD34;
  }

  else
  {
    v4 = v2[17];
    v5 = v2[14];
    v6 = v2[15];
    v7 = v2[9];

    sub_24A37EF2C(v7, &qword_27EF40C28, &qword_24A4BC550);
    (*(v6 + 8))(v4, v5);
    v3 = sub_24A47BAC0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24A47BAC0()
{
  sub_24A4510AC(**(v0 + 40), *(*(v0 + 40) + 8), 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24A47BB74()
{
  v2 = *v1;
  (*v1)[25] = v0;

  if (v0)
  {
    sub_24A37EF2C(v2[8], &qword_27EF40C28, &qword_24A4BC550);

    v3 = sub_24A47BF00;
  }

  else
  {
    v5 = v2[15];
    v4 = v2[16];
    v6 = v2[14];
    v7 = v2[8];

    sub_24A37EF2C(v7, &qword_27EF40C28, &qword_24A4BC550);
    (*(v5 + 8))(v4, v6);
    v3 = sub_24A495840;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24A47BD34()
{
  v14 = v0;
  v1 = *(v0 + 176);
  sub_24A4510AC(**(v0 + 40), *(*(v0 + 40) + 8), 1);
  v2 = v1;
  v3 = sub_24A4AB600();
  v4 = sub_24A4ABCE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_24A376000, v3, v4, "FMFActionsController: error when performing respond to friendship invite action: %@", v5, 0xCu);
    sub_24A37EF2C(v6, &qword_27EF403C0, &unk_24A4B5050);
    MEMORY[0x24C219130](v6, -1, -1);
    MEMORY[0x24C219130](v5, -1, -1);
  }

  v9 = *(v0 + 48);

  v13 = 0;
  v10 = v1;
  v9(&v13, v1);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_24A47BF00()
{
  v14 = v0;
  v1 = *(v0 + 200);
  sub_24A4510AC(**(v0 + 40), *(*(v0 + 40) + 8), 1);
  v2 = v1;
  v3 = sub_24A4AB600();
  v4 = sub_24A4ABCE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_24A376000, v3, v4, "FMFActionsController: error when performing respond to friendship invite action: %@", v5, 0xCu);
    sub_24A37EF2C(v6, &qword_27EF403C0, &unk_24A4B5050);
    MEMORY[0x24C219130](v6, -1, -1);
    MEMORY[0x24C219130](v5, -1, -1);
  }

  v9 = *(v0 + 48);

  v13 = 0;
  v10 = v1;
  v9(&v13, v1);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_24A47C0CC(uint64_t a1, void *a2, void **a3, uint64_t *a4, uint64_t (*a5)(void **, void *))
{
  sub_24A4510AC(*a4, a4[1], a2 != 0);
  if (a2)
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v7 = sub_24A4AB630();
    sub_24A378E18(v7, qword_27EF4E260);

    v8 = a2;
    v9 = sub_24A4AB600();
    v10 = sub_24A4ABCE0();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 136315394;
      v29 = v12;
      sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
      v13 = sub_24A4AB870();
      v15 = sub_24A37BD58(v13, v14, &v29);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2080;
      sub_24A3C9CEC(&qword_27EF3F2D8, &qword_24A4B7C60);
      v16 = sub_24A4ABDE0();
      v18 = sub_24A37BD58(v16, v17, &v29);

      *(v11 + 14) = v18;
      _os_log_impl(&dword_24A376000, v9, v10, "%s: error when respoding to invite: %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v12, -1, -1);
      MEMORY[0x24C219130](v11, -1, -1);
    }

    LOBYTE(v29) = 0;
    v19 = a2;
  }

  else
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v20 = sub_24A4AB630();
    sub_24A378E18(v20, qword_27EF4E260);

    v21 = sub_24A4AB600();
    v22 = sub_24A4ABCE0();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 136315138;
      v29 = v24;
      sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
      v25 = sub_24A4AB870();
      v27 = sub_24A37BD58(v25, v26, &v29);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_24A376000, v21, v22, "%s: invite respond completed successfully.", v23, 0xCu);
      sub_24A37EEE0(v24);
      MEMORY[0x24C219130](v24, -1, -1);
      MEMORY[0x24C219130](v23, -1, -1);
    }

    LOBYTE(v29) = 2;
    v19 = 0;
  }

  return a5(&v29, v19);
}

uint64_t sub_24A47C46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_24A3C9CEC(&qword_27EF40C28, &qword_24A4BC550);
  v6[5] = swift_task_alloc();
  v7 = sub_24A4AAD70();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  sub_24A4AADE0();
  v6[9] = swift_task_alloc();
  v8 = sub_24A4AAEA0();
  v6[10] = v8;
  v6[11] = *(v8 - 8);
  v6[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A47C5F0, 0, 0);
}

uint64_t sub_24A47C5F0()
{
  v23 = v0;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v1 = sub_24A4AB630();
  v0[13] = sub_24A378E18(v1, qword_27EF4E260);
  v2 = sub_24A4AB600();
  v3 = sub_24A4ABCE0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24A376000, v2, v3, "FMFActionsController: performing now now action", v4, 2u);
    MEMORY[0x24C219130](v4, -1, -1);
  }

  v5 = v0[8];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[2];

  v9 = sub_24A475BD8(*(v8 + OBJC_IVAR____TtC7FMFCore15FMFNotNowAction_friend + 32));
  v10 = sub_24A489DD0(v9);

  (*(v7 + 104))(v5, *MEMORY[0x277D09048], v6);
  sub_24A4AADF0();
  sub_24A4AB3B0();
  swift_allocObject();
  v0[14] = sub_24A4AB3D0();
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = sub_24A40B3D0(*(v10 + 16), 0);
    v13 = *(sub_24A4AB220() - 8);
    sub_24A40C53C(&v22, &v12[(*(v13 + 80) + 32) & ~*(v13 + 80)], v11, v10);
    v15 = v14;
    sub_24A3A13C0(v22);
    if (v15 == v11)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v12 = MEMORY[0x277D84F90];
LABEL_9:
  v0[15] = v12;
  v16 = v0[5];
  v17 = sub_24A4AB220();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v18 = swift_task_alloc();
  v0[16] = v18;
  *v18 = v0;
  v18[1] = sub_24A47C8D8;
  v19 = v0[12];
  v20 = v0[5];

  return MEMORY[0x28215FA78](v19, v12, v20, 0);
}

uint64_t sub_24A47C8D8()
{
  v2 = *v1;
  (*v1)[17] = v0;

  if (v0)
  {
    sub_24A37EF2C(v2[5], &qword_27EF40C28, &qword_24A4BC550);

    v3 = sub_24A47CBB4;
  }

  else
  {
    v5 = v2[11];
    v4 = v2[12];
    v6 = v2[10];
    v7 = v2[5];

    sub_24A37EF2C(v7, &qword_27EF40C28, &qword_24A4BC550);
    (*(v5 + 8))(v4, v6);
    v3 = sub_24A47CA98;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24A47CA98(uint64_t a1)
{
  v9 = v1;
  v2 = sub_24A4AB600();
  v3 = sub_24A4ABCE0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24A376000, v2, v3, "FMFActionsController: finished not now action", v4, 2u);
    MEMORY[0x24C219130](v4, -1, -1);
  }

  v5 = *(v1 + 24);

  v8 = 2;
  v5(&v8, 0);

  v6 = *(v1 + 8);

  return v6();
}

uint64_t sub_24A47CBB4()
{
  v16 = v0;
  v1 = v0[17];
  v2 = v1;
  v3 = sub_24A4AB600();
  v4 = sub_24A4ABCE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[17];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24A376000, v3, v4, "FMFActionsController: error when performing not now action: %@", v6, 0xCu);
    sub_24A37EF2C(v7, &qword_27EF403C0, &unk_24A4B5050);
    MEMORY[0x24C219130](v7, -1, -1);
    MEMORY[0x24C219130](v6, -1, -1);
  }

  v10 = v0[17];
  v11 = v0[3];

  v15 = 0;
  v12 = v10;
  v11(&v15, v10);

  v13 = v0[1];

  return v13();
}

uint64_t sub_24A47CD60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v14;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  sub_24A3C9CEC(&qword_27EF40C28, &qword_24A4BC550);
  v8[8] = swift_task_alloc();
  v9 = sub_24A4AB220();
  v8[9] = v9;
  v8[10] = *(v9 - 8);
  v8[11] = swift_task_alloc();
  v10 = sub_24A4AAD70();
  v8[12] = v10;
  v8[13] = *(v10 - 8);
  v8[14] = swift_task_alloc();
  sub_24A4AADE0();
  v8[15] = swift_task_alloc();
  v11 = sub_24A4AAEA0();
  v8[16] = v11;
  v8[17] = *(v11 - 8);
  v8[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A47CF4C, 0, 0);
}

uint64_t sub_24A47CF4C()
{
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v1 = sub_24A4AB630();
  v0[19] = sub_24A378E18(v1, qword_27EF4E260);
  v2 = sub_24A4AB600();
  v3 = sub_24A4ABCE0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24A376000, v2, v3, "FMFActionsController: performing ask to follow friendship invite", v4, 2u);
    MEMORY[0x24C219130](v4, -1, -1);
  }

  v5 = v0[14];
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[10];
  v14 = v0[8];
  v15 = v0[9];

  (*(v6 + 104))(v5, *MEMORY[0x277D09048], v7);
  sub_24A4AADF0();
  sub_24A4AB3B0();
  swift_allocObject();
  v0[20] = sub_24A4AB3D0();

  sub_24A406434(MEMORY[0x277D84F90]);
  sub_24A4AB200();
  (*(v8 + 56))(v14, 1, 1, v15);
  v9 = swift_task_alloc();
  v0[21] = v9;
  *v9 = v0;
  v9[1] = sub_24A47D198;
  v10 = v0[18];
  v11 = v0[11];
  v12 = v0[8];

  return MEMORY[0x28215FAE8](v10, v11, v12, 0);
}

uint64_t sub_24A47D198()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 64);
  *(*v1 + 176) = v0;

  sub_24A37EF2C(v6, &qword_27EF40C28, &qword_24A4BC550);
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = sub_24A47D4CC;
  }

  else
  {
    (*(v2[17] + 8))(v2[18], v2[16]);
    v7 = sub_24A47D37C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_24A47D37C(uint64_t a1)
{
  v10 = v1;
  v2 = sub_24A4AB600();
  v3 = sub_24A4ABCE0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24A376000, v2, v3, "FMFActionsController: finished performing ask to follow friendship invite", v4, 2u);
    MEMORY[0x24C219130](v4, -1, -1);
  }

  v5 = v1[6];
  v6 = v1[5];

  sub_24A4510AC(*(v6 + OBJC_IVAR____TtC7FMFCore20FMFAskToFollowAction_friend), *(v6 + OBJC_IVAR____TtC7FMFCore20FMFAskToFollowAction_friend + 8), 0);
  v9 = 2;
  v5(&v9, 0);

  v7 = v1[1];

  return v7();
}

uint64_t sub_24A47D4CC()
{
  v16 = v0;
  v1 = v0[22];
  sub_24A4510AC(*(v0[5] + OBJC_IVAR____TtC7FMFCore20FMFAskToFollowAction_friend), *(v0[5] + OBJC_IVAR____TtC7FMFCore20FMFAskToFollowAction_friend + 8), 1);
  v2 = v1;
  v3 = sub_24A4AB600();
  v4 = sub_24A4ABCE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[22];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24A376000, v3, v4, "FMFActionsController: error when performing ask to follow action: %@", v6, 0xCu);
    sub_24A37EF2C(v7, &qword_27EF403C0, &unk_24A4B5050);
    MEMORY[0x24C219130](v7, -1, -1);
    MEMORY[0x24C219130](v6, -1, -1);
  }

  v10 = v0[22];
  v11 = v0[6];

  v15 = 0;
  v12 = v10;
  v11(&v15, v10);

  v13 = v0[1];

  return v13();
}

uint64_t sub_24A47D6AC(uint64_t a1, void *a2, void **a3, uint64_t a4, uint64_t (*a5)(void **, void *), uint64_t a6, void *a7, const char *a8, const char *a9)
{
  sub_24A4510AC(*(a4 + *a7), *(a4 + *a7 + 8), a2 != 0);
  if (a2)
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v12 = sub_24A4AB630();
    sub_24A378E18(v12, qword_27EF4E260);

    v13 = a2;
    v14 = sub_24A4AB600();
    v15 = sub_24A4ABCE0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 136315394;
      v34 = v17;
      sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
      v18 = sub_24A4AB870();
      v20 = sub_24A37BD58(v18, v19, &v34);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      sub_24A3C9CEC(&qword_27EF3F2D8, &qword_24A4B7C60);
      v21 = sub_24A4ABDE0();
      v23 = sub_24A37BD58(v21, v22, &v34);

      *(v16 + 14) = v23;
      _os_log_impl(&dword_24A376000, v14, v15, a9, v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v17, -1, -1);
      MEMORY[0x24C219130](v16, -1, -1);
    }

    LOBYTE(v34) = 0;
    v24 = a2;
  }

  else
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v25 = sub_24A4AB630();
    sub_24A378E18(v25, qword_27EF4E260);

    v26 = sub_24A4AB600();
    v27 = sub_24A4ABCE0();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 136315138;
      v34 = v29;
      sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
      v30 = sub_24A4AB870();
      v32 = sub_24A37BD58(v30, v31, &v34);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_24A376000, v26, v27, a8, v28, 0xCu);
      sub_24A37EEE0(v29);
      MEMORY[0x24C219130](v29, -1, -1);
      MEMORY[0x24C219130](v28, -1, -1);
    }

    LOBYTE(v34) = 2;
    v24 = 0;
  }

  return a5(&v34, v24);
}

uint64_t sub_24A47DA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  return MEMORY[0x2822009F8](sub_24A47DA78, 0, 0);
}

uint64_t sub_24A47DA78()
{
  v14 = v0;
  v0[11] = *(v0[7] + 48);
  sub_24A3C9CEC(&qword_27EF3F7E8, &qword_24A4BC5A0);
  sub_24A4ABD70();
  v1 = v0[4];
  if (v1)
  {
    v2 = v0[5];
    v4 = v0[2];
    v3 = v0[3];
    v5 = *(v0[8] + 17);

    sub_24A37F110(v4, v3, v1, v2);
    v6 = 256;
    if (!v5)
    {
      v6 = 0;
    }

    v10 = v6 | v4 & 0xFF010001;
    v11 = v3;
    v12 = v1;
    v13 = v2;
    sub_24A452308(&v10, 0);
    sub_24A37F110(v10, v11, v12, v13);
  }

  v7 = *(v0[8] + 17);
  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_24A47DBF8;

  return MEMORY[0x28215FA58](v7);
}

uint64_t sub_24A47DBF8()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_24A47DF14;
  }

  else
  {
    v2 = sub_24A47DD0C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24A47DD0C()
{
  v14 = v0;
  memset(v13, 0, sizeof(v13));
  sub_24A452308(v13, 0);
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v1 = sub_24A4AB630();
  sub_24A378E18(v1, qword_27EF4E260);

  v2 = sub_24A4AB600();
  v3 = sub_24A4ABCE0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[7];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *&v13[0] = v6;
    *v5 = 136315138;
    v0[6] = *v4;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v7 = sub_24A4AB870();
    v9 = sub_24A37BD58(v7, v8, v13);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_24A376000, v2, v3, "%s: show/hide location operation completed.", v5, 0xCu);
    sub_24A37EEE0(v6);
    MEMORY[0x24C219130](v6, -1, -1);
    MEMORY[0x24C219130](v5, -1, -1);
  }

  v10 = v0[9];
  LOBYTE(v13[0]) = 2;
  v10(v13, 0);
  v11 = v0[1];

  return v11();
}

uint64_t sub_24A47DF14()
{
  v17 = v0;
  memset(v16, 0, sizeof(v16));
  sub_24A452308(v16, 0);
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = sub_24A4AB630();
  sub_24A378E18(v2, qword_27EF4E260);
  v3 = v1;
  v4 = sub_24A4AB600();
  v5 = sub_24A4ABCE0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[13];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24A376000, v4, v5, "FMFActionsController: error when show/hide location: %@", v7, 0xCu);
    sub_24A37EF2C(v8, &qword_27EF403C0, &unk_24A4B5050);
    MEMORY[0x24C219130](v8, -1, -1);
    MEMORY[0x24C219130](v7, -1, -1);
  }

  v11 = v0[13];
  v12 = v0[9];

  LOBYTE(v16[0]) = 0;
  v13 = v11;
  v12(v16, v11);

  v14 = v0[1];

  return v14();
}

uint64_t sub_24A47E0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_24A4AAD70();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  sub_24A4AADE0();
  v7[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A47E1E4, 0, 0);
}

uint64_t sub_24A47E1E4()
{
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v1 = sub_24A4AB630();
  v0[10] = sub_24A378E18(v1, qword_27EF4E260);
  v2 = sub_24A4AB600();
  v3 = sub_24A4ABCE0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24A376000, v2, v3, "FMFActionsController: performing update me device", v4, 2u);
    MEMORY[0x24C219130](v4, -1, -1);
  }

  v5 = v0[8];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[2];

  (*(v7 + 104))(v5, *MEMORY[0x277D09048], v6);
  sub_24A4AADF0();
  sub_24A4AB3B0();
  swift_allocObject();
  v0[11] = sub_24A4AB3D0();
  v9 = *(v8 + 24);
  v10 = *(v8 + 32);
  v11 = swift_task_alloc();
  v0[12] = v11;
  *v11 = v0;
  v11[1] = sub_24A47E3AC;

  return MEMORY[0x28215FB70](v9, v10);
}

uint64_t sub_24A47E3AC()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_24A47E5F4;
  }

  else
  {

    v2 = sub_24A47E4C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24A47E4C8(uint64_t a1)
{
  v9 = v1;
  v2 = sub_24A4AB600();
  v3 = sub_24A4ABCE0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24A376000, v2, v3, "FMFActionsController: finsihed performing update me device", v4, 2u);
    MEMORY[0x24C219130](v4, -1, -1);
  }

  v5 = *(v1 + 32);

  memset(v8, 0, 57);
  sub_24A452B2C(v8, 0);
  LOBYTE(v8[0]) = 2;
  v5(v8, 0);

  v6 = *(v1 + 8);

  return v6();
}

uint64_t sub_24A47E5F4()
{
  v16 = v0;
  v1 = v0[13];

  v2 = v1;
  v3 = sub_24A4AB600();
  v4 = sub_24A4ABCE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[13];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24A376000, v3, v4, "FMFActionsController: error when setting active location sharing device: %@", v6, 0xCu);
    sub_24A37EF2C(v7, &qword_27EF403C0, &unk_24A4B5050);
    MEMORY[0x24C219130](v7, -1, -1);
    MEMORY[0x24C219130](v6, -1, -1);
  }

  v10 = v0[13];
  v11 = v0[4];

  v15 = 0;
  v12 = v10;
  v11(&v15, v10);

  v13 = v0[1];

  return v13();
}

uint64_t sub_24A47E78C(uint64_t a1, void *a2, void **a3, uint64_t (*a4)(_OWORD *, void *))
{
  memset(v28, 0, 57);
  sub_24A452B2C(v28, 0);
  if (a2)
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v6 = sub_24A4AB630();
    sub_24A378E18(v6, qword_27EF4E260);

    v7 = a2;
    v8 = sub_24A4AB600();
    v9 = sub_24A4ABCE0();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 136315394;
      *&v28[0] = v11;
      sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
      v12 = sub_24A4AB870();
      v14 = sub_24A37BD58(v12, v13, v28);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2080;
      sub_24A3C9CEC(&qword_27EF3F2D8, &qword_24A4B7C60);
      v15 = sub_24A4ABDE0();
      v17 = sub_24A37BD58(v15, v16, v28);

      *(v10 + 14) = v17;
      _os_log_impl(&dword_24A376000, v8, v9, "%s: error when show/hide location: %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v11, -1, -1);
      MEMORY[0x24C219130](v10, -1, -1);
    }

    LOBYTE(v28[0]) = 0;
    v18 = a2;
  }

  else
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v19 = sub_24A4AB630();
    sub_24A378E18(v19, qword_27EF4E260);

    v20 = sub_24A4AB600();
    v21 = sub_24A4ABCE0();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 136315138;
      *&v28[0] = v23;
      sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
      v24 = sub_24A4AB870();
      v26 = sub_24A37BD58(v24, v25, v28);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_24A376000, v20, v21, "%s: show/hide location operation completed.", v22, 0xCu);
      sub_24A37EEE0(v23);
      MEMORY[0x24C219130](v23, -1, -1);
      MEMORY[0x24C219130](v22, -1, -1);
    }

    LOBYTE(v28[0]) = 2;
    v18 = 0;
  }

  return a4(v28, v18);
}

uint64_t sub_24A47EB38(uint64_t a1, void *a2, void **a3, uint64_t (*a4)(_OWORD *, void *), uint64_t a5, const char *a6, const char *a7)
{
  memset(v33, 0, sizeof(v33));
  sub_24A452308(v33, 0);
  if (a2)
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v11 = sub_24A4AB630();
    sub_24A378E18(v11, qword_27EF4E260);

    v12 = a2;
    v13 = sub_24A4AB600();
    v14 = sub_24A4ABCE0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 136315394;
      *&v33[0] = v16;
      sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
      v17 = sub_24A4AB870();
      v19 = sub_24A37BD58(v17, v18, v33);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      sub_24A3C9CEC(&qword_27EF3F2D8, &qword_24A4B7C60);
      v20 = sub_24A4ABDE0();
      v22 = sub_24A37BD58(v20, v21, v33);

      *(v15 + 14) = v22;
      _os_log_impl(&dword_24A376000, v13, v14, a7, v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v16, -1, -1);
      MEMORY[0x24C219130](v15, -1, -1);
    }

    LOBYTE(v33[0]) = 0;
    v23 = a2;
  }

  else
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v24 = sub_24A4AB630();
    sub_24A378E18(v24, qword_27EF4E260);

    v25 = sub_24A4AB600();
    v26 = sub_24A4ABCE0();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 136315138;
      *&v33[0] = v28;
      sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
      v29 = sub_24A4AB870();
      v31 = sub_24A37BD58(v29, v30, v33);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_24A376000, v25, v26, a6, v27, 0xCu);
      sub_24A37EEE0(v28);
      MEMORY[0x24C219130](v28, -1, -1);
      MEMORY[0x24C219130](v27, -1, -1);
    }

    LOBYTE(v33[0]) = 2;
    v23 = 0;
  }

  return a4(v33, v23);
}

uint64_t sub_24A47EEDC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v101 = a3;
  v102 = a1;
  v6 = type metadata accessor for FMFLabelledLocation(0);
  v7 = *(v6 - 8);
  v107 = v6;
  v108 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = (&v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v92 = (&v91 - v11);
  MEMORY[0x28223BE20](v12);
  v14 = &v91 - v13;
  MEMORY[0x28223BE20](v15);
  v106 = &v91 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v91 - v18;
  v20 = sub_24A3C9CEC(&qword_27EF3FEA0, &qword_24A4B8C68);
  MEMORY[0x28223BE20](v20 - 8);
  v94 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v93 = &v91 - v23;
  MEMORY[0x28223BE20](v24);
  v91 = &v91 - v25;
  MEMORY[0x28223BE20](v26);
  v97 = &v91 - v27;
  MEMORY[0x28223BE20](v28);
  v105 = &v91 - v29;
  MEMORY[0x28223BE20](v30);
  v32 = &v91 - v31;
  if (qword_27EF3EBF8 != -1)
  {
    goto LABEL_47;
  }

  while (1)
  {
    v33 = sub_24A4AB630();
    sub_24A378E18(v33, qword_27EF4E260);

    v34 = sub_24A4AB600();
    v35 = sub_24A4ABCE0();

    v36 = os_log_type_enabled(v34, v35);
    v104 = v32;
    v100 = v4;
    v98 = v9;
    if (v36)
    {
      v37 = swift_slowAlloc();
      v38 = a2;
      v39 = swift_slowAlloc();
      v111[0] = v39;
      *v37 = 136315138;
      v110[0] = *v4;
      sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
      v40 = sub_24A4AB870();
      v42 = sub_24A37BD58(v40, v41, v111);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_24A376000, v34, v35, "%s: adding or updating label action initiated", v37, 0xCu);
      sub_24A37EEE0(v39);
      v43 = v39;
      a2 = v38;
      v32 = v104;
      MEMORY[0x24C219130](v43, -1, -1);
      MEMORY[0x24C219130](v37, -1, -1);
    }

    v4 = v102;
    v9 = (v102 + OBJC_IVAR____TtC7FMFCore23FMFAddUpdateLabelAction_locationToLabel);
    v103 = *(type metadata accessor for FMFLocation(0) + 44);
    memcpy(v111, v9 + v103, 0x161uLL);
    v44 = sub_24A3B9C24(v111);
    v99 = a2;
    if (v44 == 1 || (v45 = v111[43]) == 0)
    {
      (*(v108 + 7))(v32, 1, 1, v107);
      goto LABEL_23;
    }

    v46 = *(v111[43] + 16);
    if (!v46)
    {
      break;
    }

    v32 = (v111[43] + ((*(v108 + 80) + 32) & ~*(v108 + 80)));

    a2 = 0;
    while (a2 < *(v45 + 16))
    {
      sub_24A495474(&v32[*(v108 + 9) * a2], v19, type metadata accessor for FMFLabelledLocation);
      if (*(v19 + 3))
      {
        v47 = v19[32];
        if (v47 > 1)
        {
          if (v47 != 2)
          {
            goto LABEL_21;
          }
        }

        else if (v47 != 1)
        {

LABEL_21:

          v32 = v104;
          sub_24A4954DC(v19, v104, type metadata accessor for FMFLabelledLocation);
          (*(v108 + 7))(v32, 0, 1, v107);
          goto LABEL_22;
        }

        v4 = sub_24A4AC270();

        if (v4)
        {
          goto LABEL_21;
        }
      }

      ++a2;
      sub_24A489C74(v19, type metadata accessor for FMFLabelledLocation);
      if (v46 == a2)
      {

        v32 = v104;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_47:
    swift_once();
  }

LABEL_20:
  (*(v108 + 7))(v32, 1, 1, v107);
LABEL_22:
  v4 = v102;
LABEL_23:
  v48 = v32;
  v49 = v105;
  sub_24A37B740(v48, v105, &qword_27EF3FEA0, &qword_24A4B8C68);
  v50 = v4 + OBJC_IVAR____TtC7FMFCore23FMFAddUpdateLabelAction_label;
  v51 = *(v4 + OBJC_IVAR____TtC7FMFCore23FMFAddUpdateLabelAction_label);
  v52 = *(v50 + 8);
  v95 = *(v50 + 16);
  v53 = v9[1];
  v102 = *v9;
  v54 = v103;
  memcpy(v110, v9 + v103, 0x161uLL);
  v55 = sub_24A3B9C24(v110);
  v96 = v51;
  if (v55 == 1)
  {

    v56 = 0;
  }

  else
  {
    v57 = v110[38];

    v58 = v57;
    v54 = v103;
    [v58 coordinate];
    v56 = v59;
  }

  memcpy(v109, v9 + v54, 0x161uLL);
  v60 = sub_24A3B9C24(v109);
  v61 = 0;
  if (v60 != 1)
  {
    [v109[38] coordinate];
    v61 = v62;
  }

  v63 = v97;
  sub_24A37B740(v49, v97, &qword_27EF3FEA0, &qword_24A4B8C68);
  v64 = *(v108 + 6);
  v108 = (v108 + 48);
  if (v64(v63, 1, v107) == 1)
  {
    sub_24A37EF2C(v63, &qword_27EF3FEA0, &qword_24A4B8C68);
    v65 = 0;
    v66 = 0;
  }

  else
  {
    v67 = v92;
    sub_24A4954DC(v63, v92, type metadata accessor for FMFLabelledLocation);
    v65 = *v67;
    v66 = v67[1];

    sub_24A489C74(v67, type metadata accessor for FMFLabelledLocation);
  }

  v68 = v102;
  *v14 = v65;
  *(v14 + 1) = v66;
  *(v14 + 2) = v96;
  *(v14 + 3) = v52;
  *(v14 + 16) = v95;
  v69 = v105;
  if (!v53)
  {
    v70 = v91;
    sub_24A37B740(v105, v91, &qword_27EF3FEA0, &qword_24A4B8C68);
    if (v64(v70, 1, v107) == 1)
    {
      sub_24A37EF2C(v70, &qword_27EF3FEA0, &qword_24A4B8C68);
      v68 = 0;
      v53 = 0;
    }

    else
    {
      v68 = *(v70 + 40);
      v53 = *(v70 + 48);

      sub_24A489C74(v70, type metadata accessor for FMFLabelledLocation);
    }
  }

  *(v14 + 5) = v68;
  *(v14 + 6) = v53;
  if (v55 == 1)
  {
    v71 = v93;
    sub_24A37B740(v69, v93, &qword_27EF3FEA0, &qword_24A4B8C68);
    if (v64(v71, 1, v107) == 1)
    {
      sub_24A37EF2C(v71, &qword_27EF3FEA0, &qword_24A4B8C68);
      v72 = 1;
      v56 = 0;
    }

    else
    {
      v56 = *(v71 + 56);
      v72 = *(v71 + 64);
      sub_24A489C74(v71, type metadata accessor for FMFLabelledLocation);
    }
  }

  else
  {
    v72 = 0;
  }

  *(v14 + 7) = v56;
  v14[64] = v72;
  if (v60 == 1)
  {
    v73 = v94;
    sub_24A37BE24(v69, v94, &qword_27EF3FEA0, &qword_24A4B8C68);
    v74 = v64(v73, 1, v107);
    v75 = v98;
    if (v74 == 1)
    {
      sub_24A37EF2C(v73, &qword_27EF3FEA0, &qword_24A4B8C68);
      v76 = 1;
      v61 = 0;
    }

    else
    {
      v61 = *(v73 + 72);
      v77 = v73;
      v76 = *(v73 + 80);
      sub_24A489C74(v77, type metadata accessor for FMFLabelledLocation);
    }
  }

  else
  {
    sub_24A37EF2C(v69, &qword_27EF3FEA0, &qword_24A4B8C68);
    v76 = 0;
    v75 = v98;
  }

  v78 = v99;
  *(v14 + 9) = v61;
  v14[80] = v76;
  v79 = *(v107 + 9);
  v80 = sub_24A4AAAD0();
  (*(*(v80 - 8) + 56))(&v14[v79], 1, 1, v80);
  v81 = v106;
  sub_24A4954DC(v14, v106, type metadata accessor for FMFLabelledLocation);
  sub_24A495474(v81, v75, type metadata accessor for FMFLabelledLocation);
  type metadata accessor for FMFAddUpdateLabelRequest(0);
  v82 = swift_allocObject();
  sub_24A495474(v75, v82 + qword_27EF4E1D0, type metadata accessor for FMFLabelledLocation);
  v83 = sub_24A3A45B8(0xD000000000000016, 0x800000024A4B3350);
  v108 = type metadata accessor for FMFLabelledLocation;
  sub_24A489C74(v75, type metadata accessor for FMFLabelledLocation);
  v84 = v100;
  v85 = v100[15];
  v86 = v100[16];
  v107 = sub_24A37EACC(v100 + 12, v85);
  v87 = swift_allocObject();
  v87[2] = v84;
  v87[3] = v78;
  v87[4] = v101;
  v88 = *(v86 + 64);
  refreshed = type metadata accessor for FMFInitRefreshClientResponse(0);

  v88(v83, sub_24A489AA4, v87, refreshed, v85, v86);

  sub_24A489C74(v106, v108);
  return sub_24A37EF2C(v104, &qword_27EF3FEA0, &qword_24A4B8C68);
}

void sub_24A47FA48(uint64_t a1, void *a2, void **a3, void (*a4)(void, void))
{
  v8 = sub_24A3C9CEC(&qword_27EF3F1C8, &unk_24A4B7C70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = (&v48 - v12);
  MEMORY[0x28223BE20](v14);
  v16 = (&v48 - v15);
  if (!a2)
  {
    if (!a1)
    {
LABEL_19:
      if (qword_27EF3EBF8 != -1)
      {
        swift_once();
      }

      v40 = sub_24A4AB630();
      sub_24A378E18(v40, qword_27EF4E260);

      v41 = sub_24A4AB600();
      v42 = sub_24A4ABCE0();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *v43 = 136315138;
        v50 = *a3;
        v51 = v44;
        sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
        v45 = sub_24A4AB870();
        v47 = sub_24A37BD58(v45, v46, &v51);

        *(v43 + 4) = v47;
        _os_log_impl(&dword_24A376000, v41, v42, "%s: Updated labels.", v43, 0xCu);
        sub_24A37EEE0(v44);
        MEMORY[0x24C219130](v44, -1, -1);
        MEMORY[0x24C219130](v43, -1, -1);
      }

      LOBYTE(v51) = 2;
      v29 = 0;
      goto LABEL_24;
    }

    sub_24A37B740(a1 + OBJC_IVAR____TtC7FMFCore15FMFBaseResponse_commandResponse, &v48 - v15, &qword_27EF3F1C8, &unk_24A4B7C70);
    v30 = type metadata accessor for FMFCommandResponseFragment(0);
    v49 = *(*(v30 - 8) + 48);
    if (v49(v16, 1, v30) == 1)
    {
      sub_24A37EF2C(v16, &qword_27EF3F1C8, &unk_24A4B7C70);
    }

    else
    {
      v31 = a4;
      v32 = *v16;
      sub_24A489C74(v16, type metadata accessor for FMFCommandResponseFragment);
      v33 = v32 == 529;
      a4 = v31;
      if (v33)
      {
        goto LABEL_18;
      }
    }

    sub_24A37B740(a1 + OBJC_IVAR____TtC7FMFCore15FMFBaseResponse_commandResponse, v13, &qword_27EF3F1C8, &unk_24A4B7C70);
    if (v49(v13, 1, v30) == 1)
    {
      sub_24A37EF2C(v13, &qword_27EF3F1C8, &unk_24A4B7C70);
    }

    else
    {
      v34 = a4;
      v35 = *v13;
      sub_24A489C74(v13, type metadata accessor for FMFCommandResponseFragment);
      v33 = v35 == 530;
      a4 = v34;
      if (v33)
      {
        goto LABEL_18;
      }
    }

    sub_24A37B740(a1 + OBJC_IVAR____TtC7FMFCore15FMFBaseResponse_commandResponse, v10, &qword_27EF3F1C8, &unk_24A4B7C70);
    if (v49(v10, 1, v30) == 1)
    {
      sub_24A37EF2C(v10, &qword_27EF3F1C8, &unk_24A4B7C70);
      goto LABEL_19;
    }

    v36 = a4;
    v37 = *v10;
    sub_24A489C74(v10, type metadata accessor for FMFCommandResponseFragment);
    v33 = v37 == 531;
    a4 = v36;
    if (!v33)
    {
      goto LABEL_19;
    }

LABEL_18:
    LOBYTE(v51) = 0;
    sub_24A489940();
    v38 = swift_allocError();
    *v39 = 3;
    *(v39 + 8) = 256;
    a4(&v51, v38);

    return;
  }

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v17 = sub_24A4AB630();
  sub_24A378E18(v17, qword_27EF4E260);

  v18 = a2;
  v19 = sub_24A4AB600();
  v20 = sub_24A4ABCE0();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 136315394;
    v50 = *a3;
    v51 = v22;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v23 = sub_24A4AB870();
    v25 = sub_24A37BD58(v23, v24, &v51);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    v50 = a2;
    sub_24A3C9CEC(&qword_27EF3F2D8, &qword_24A4B7C60);
    v26 = sub_24A4ABDE0();
    v28 = sub_24A37BD58(v26, v27, &v51);

    *(v21 + 14) = v28;
    _os_log_impl(&dword_24A376000, v19, v20, "%s: error when updating labels: %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v22, -1, -1);
    MEMORY[0x24C219130](v21, -1, -1);
  }

  LOBYTE(v51) = 0;
  v29 = a2;
LABEL_24:
  a4(&v51, v29);
}

uint64_t sub_24A4800CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v8 = sub_24A4AB630();
  sub_24A378E18(v8, qword_27EF4E260);

  v9 = sub_24A4AB600();
  v10 = sub_24A4ABCE0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 136315138;
    v24 = v12;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v13 = sub_24A4AB870();
    v15 = sub_24A37BD58(v13, v14, &v24);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_24A376000, v9, v10, "%s: removing labels action initiated", v11, 0xCu);
    sub_24A37EEE0(v12);
    MEMORY[0x24C219130](v12, -1, -1);
    MEMORY[0x24C219130](v11, -1, -1);
  }

  v16 = *(a1 + 24);
  type metadata accessor for FMFRemoveLabelsRequest(0);
  *(swift_allocObject() + qword_27EF4E330) = v16;

  v17 = sub_24A3A45B8(0x614C6574656C6564, 0xEC000000736C6562);
  v18 = v4[15];
  v19 = v4[16];
  sub_24A37EACC(v4 + 12, v18);
  v20 = swift_allocObject();
  v20[2] = v4;
  v20[3] = a2;
  v20[4] = a3;
  v21 = *(v19 + 64);
  refreshed = type metadata accessor for FMFInitRefreshClientResponse(0);

  v21(v17, sub_24A489A74, v20, refreshed, v18, v19);
}

uint64_t sub_24A480370(uint64_t a1, void *a2, void **a3, uint64_t (*a4)(void **, void *), uint64_t a5, const char *a6, const char *a7)
{
  if (a2)
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v10 = sub_24A4AB630();
    sub_24A378E18(v10, qword_27EF4E260);

    v11 = a2;
    v12 = sub_24A4AB600();
    v13 = sub_24A4ABCE0();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 136315394;
      v33 = v15;
      sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
      v16 = sub_24A4AB870();
      v18 = sub_24A37BD58(v16, v17, &v33);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      sub_24A3C9CEC(&qword_27EF3F2D8, &qword_24A4B7C60);
      v19 = sub_24A4ABDE0();
      v21 = sub_24A37BD58(v19, v20, &v33);

      *(v14 + 14) = v21;
      _os_log_impl(&dword_24A376000, v12, v13, a7, v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v15, -1, -1);
      MEMORY[0x24C219130](v14, -1, -1);
    }

    LOBYTE(v33) = 0;
    v22 = a2;
  }

  else
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v24 = sub_24A4AB630();
    sub_24A378E18(v24, qword_27EF4E260);

    v25 = sub_24A4AB600();
    v26 = sub_24A4ABCE0();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 136315138;
      v33 = v28;
      sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
      v29 = sub_24A4AB870();
      v31 = sub_24A37BD58(v29, v30, &v33);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_24A376000, v25, v26, a6, v27, 0xCu);
      sub_24A37EEE0(v28);
      MEMORY[0x24C219130](v28, -1, -1);
      MEMORY[0x24C219130](v27, -1, -1);
    }

    LOBYTE(v33) = 2;
    v22 = 0;
  }

  return a4(&v33, v22);
}

uint64_t sub_24A480700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_24A3C9CEC(&qword_27EF3F0C8, &qword_24A4B4840);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - v9;
  v11 = sub_24A4AA700();
  v31[3] = v11;
  v31[4] = sub_24A38D374(&qword_27EF40910, MEMORY[0x277D08A28], MEMORY[0x277D089C8]);
  v12 = sub_24A38D3BC(v31);
  (*(*(v11 - 8) + 104))(v12, *MEMORY[0x277D089F8], v11);
  LOBYTE(v11) = sub_24A4AA6C0();
  result = sub_24A37EEE0(v31);
  if (v11)
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v14 = sub_24A4AB630();
    sub_24A378E18(v14, qword_27EF4E260);

    v15 = sub_24A4AB600();
    v16 = sub_24A4ABCE0();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v29 = v18;
      *v17 = 136315138;
      v30 = *v4;
      v31[0] = v18;
      sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
      v19 = sub_24A4AB870();
      v21 = a1;
      v22 = a3;
      v23 = a2;
      v24 = sub_24A37BD58(v19, v20, v31);

      *(v17 + 4) = v24;
      a2 = v23;
      a3 = v22;
      a1 = v21;
      _os_log_impl(&dword_24A376000, v15, v16, "%s: removing location alert action initiated", v17, 0xCu);
      v25 = v29;
      sub_24A37EEE0(v29);
      MEMORY[0x24C219130](v25, -1, -1);
      MEMORY[0x24C219130](v17, -1, -1);
    }

    v26 = sub_24A4ABB70();
    (*(*(v26 - 8) + 56))(v10, 1, 1, v26);
    v27 = swift_allocObject();
    v27[2] = 0;
    v27[3] = 0;
    v27[4] = a1;
    v27[5] = v4;
    v27[6] = a2;
    v27[7] = a3;

    sub_24A432370(0, 0, v10, &unk_24A4BC520, v27);
  }

  return result;
}

uint64_t sub_24A480A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v8 = sub_24A4AB020();
  v7[8] = v8;
  v7[9] = *(v8 - 8);
  v7[10] = swift_task_alloc();
  sub_24A3C9CEC(&qword_27EF3F468, &qword_24A4B9F30);
  v7[11] = swift_task_alloc();
  v9 = sub_24A4AAB20();
  v7[12] = v9;
  v7[13] = *(v9 - 8);
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A480BC0, 0, 0);
}

uint64_t sub_24A480BC0()
{
  v31 = v0;
  if (!*(v0[4] + OBJC_IVAR____TtC7FMFCore28FMFRemoveLocationAlertAction_locationAlert + 8))
  {
    goto LABEL_4;
  }

  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  sub_24A4AAAE0();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_24A37EF2C(v0[11], &qword_27EF3F468, &qword_24A4B9F30);
LABEL_4:
    v4 = sub_24A4AA6B0();
    sub_24A38D374(&qword_27EF40C20, MEMORY[0x277D08938], MEMORY[0x277D08940]);
    v5 = swift_allocError();
    strcpy(v6, "fenceID is nil");
    v6[15] = -18;
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D08930], v4);
    swift_willThrow();
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v7 = sub_24A4AB630();
    sub_24A378E18(v7, qword_27EF4E260);

    v8 = v5;
    v9 = sub_24A4AB600();
    v10 = sub_24A4ABCC0();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = v0[5];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v30[0] = v14;
      *v12 = 136315394;
      v0[2] = *v11;
      sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
      v15 = sub_24A4AB870();
      v17 = sub_24A37BD58(v15, v16, v30);

      *(v12 + 4) = v17;
      *(v12 + 12) = 2112;
      v18 = v5;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v19;
      *v13 = v19;
      _os_log_impl(&dword_24A376000, v9, v10, "%s: error when removing location alert: %@", v12, 0x16u);
      sub_24A37EF2C(v13, &qword_27EF403C0, &unk_24A4B5050);
      MEMORY[0x24C219130](v13, -1, -1);
      sub_24A37EEE0(v14);
      MEMORY[0x24C219130](v14, -1, -1);
      MEMORY[0x24C219130](v12, -1, -1);
    }

    v20 = v0[6];
    LOBYTE(v30[0]) = 0;
    v21 = v5;
    v20(v30, v5);

    v22 = v0[1];

    return v22();
  }

  v24 = v0[14];
  v25 = v0[15];
  v26 = v0[12];
  v27 = v0[13];
  (*(v27 + 32))(v25, v0[11], v26);
  (*(v27 + 16))(v24, v25, v26);
  MEMORY[0x24C217420](v24);
  v28 = swift_task_alloc();
  v0[16] = v28;
  *v28 = v0;
  v28[1] = sub_24A48105C;
  v29 = v0[10];

  return MEMORY[0x28215FA88](v29);
}

uint64_t sub_24A48105C()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  (*(v2[9] + 8))(v2[10], v2[8]);
  if (v0)
  {
    v3 = sub_24A4813F8;
  }

  else
  {
    v3 = sub_24A4811C4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24A4811C4()
{
  v18 = v0;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v1 = sub_24A4AB630();
  sub_24A378E18(v1, qword_27EF4E260);

  v2 = sub_24A4AB600();
  v3 = sub_24A4ABCE0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[5];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315138;
    v0[3] = *v4;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v7 = sub_24A4AB870();
    v9 = sub_24A37BD58(v7, v8, &v17);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_24A376000, v2, v3, "%s: Location alert removed.", v5, 0xCu);
    sub_24A37EEE0(v6);
    MEMORY[0x24C219130](v6, -1, -1);
    MEMORY[0x24C219130](v5, -1, -1);
  }

  v10 = v0[15];
  v11 = v0[12];
  v12 = v0[13];
  v13 = v0[6];
  v16 = 2;
  v13(&v16, 0);
  (*(v12 + 8))(v10, v11);

  v14 = v0[1];

  return v14();
}

uint64_t sub_24A4813F8()
{
  v21 = v0;
  (*(v0[13] + 8))(v0[15], v0[12]);
  v1 = v0[17];
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A4AB630();
  sub_24A378E18(v2, qword_27EF4E260);

  v3 = v1;
  v4 = sub_24A4AB600();
  v5 = sub_24A4ABCC0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v7 = 136315394;
    v0[2] = *v6;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v10 = sub_24A4AB870();
    v12 = sub_24A37BD58(v10, v11, &v20);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    v13 = v1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v8 = v14;
    _os_log_impl(&dword_24A376000, v4, v5, "%s: error when removing location alert: %@", v7, 0x16u);
    sub_24A37EF2C(v8, &qword_27EF403C0, &unk_24A4B5050);
    MEMORY[0x24C219130](v8, -1, -1);
    sub_24A37EEE0(v9);
    MEMORY[0x24C219130](v9, -1, -1);
    MEMORY[0x24C219130](v7, -1, -1);
  }

  v15 = v0[6];
  v19 = 0;
  v16 = v1;
  v15(&v19, v1);

  v17 = v0[1];

  return v17();
}

uint64_t sub_24A4816AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v8 = sub_24A4AB1B0();
  v7[8] = v8;
  v7[9] = *(v8 - 8);
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A48177C, 0, 0);
}

uint64_t sub_24A48177C()
{
  FMFLocationAlert.fmlFence.getter(v0[10]);
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_24A481A9C;
  v3 = v0[10];
  v2 = v0[11];

  return MEMORY[0x28215FA90](v2, v3);
}

uint64_t sub_24A481A9C()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    (*(v2[9] + 8))(v2[10], v2[8]);
    v3 = sub_24A481E00;
  }

  else
  {
    v4 = v2[10];
    v5 = v2[11];
    v7 = v2 + 8;
    v6 = v2[8];
    v8 = *(v7[1] + 8);
    v8(v4, v6);
    v8(v5, v6);
    v3 = sub_24A481C00;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24A481C00()
{
  v15 = v0;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v1 = sub_24A4AB630();
  sub_24A378E18(v1, qword_27EF4E260);

  v2 = sub_24A4AB600();
  v3 = sub_24A4ABCE0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[4];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v0[3] = *v4;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v7 = sub_24A4AB870();
    v9 = sub_24A37BD58(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_24A376000, v2, v3, "%s: Location alert updated.", v5, 0xCu);
    sub_24A37EEE0(v6);
    MEMORY[0x24C219130](v6, -1, -1);
    MEMORY[0x24C219130](v5, -1, -1);
  }

  v10 = v0[6];
  v13 = 2;
  v10(&v13, 0);

  v11 = v0[1];

  return v11();
}

uint64_t sub_24A481E00()
{
  v21 = v0;
  v1 = v0[13];
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A4AB630();
  sub_24A378E18(v2, qword_27EF4E260);

  v3 = v1;
  v4 = sub_24A4AB600();
  v5 = sub_24A4ABCC0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v7 = 136315394;
    v0[2] = *v6;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v10 = sub_24A4AB870();
    v12 = sub_24A37BD58(v10, v11, &v20);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    v13 = v1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v8 = v14;
    _os_log_impl(&dword_24A376000, v4, v5, "%s: error when updating location alert: %@", v7, 0x16u);
    sub_24A37EF2C(v8, &qword_27EF403C0, &unk_24A4B5050);
    MEMORY[0x24C219130](v8, -1, -1);
    sub_24A37EEE0(v9);
    MEMORY[0x24C219130](v9, -1, -1);
    MEMORY[0x24C219130](v7, -1, -1);
  }

  v15 = v0[6];
  v19 = 0;
  v16 = v1;
  v15(&v19, v1);

  v17 = v0[1];

  return v17();
}

uint64_t sub_24A482088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v15;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  v8[11] = swift_task_alloc();
  v9 = sub_24A4AAAD0();
  v8[12] = v9;
  v8[13] = *(v9 - 8);
  v8[14] = swift_task_alloc();
  v10 = sub_24A4AADD0();
  v8[15] = v10;
  v8[16] = *(v10 - 8);
  v8[17] = swift_task_alloc();
  v11 = sub_24A4AB220();
  v8[18] = v11;
  v8[19] = *(v11 - 8);
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();
  v12 = sub_24A4AB1E0();
  v8[22] = v12;
  v8[23] = *(v12 - 8);
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24A4822BC, 0, 0);
}

uint64_t sub_24A4822BC()
{
  v0[26] = *(v0[5] + 144);
  v1 = swift_task_alloc();
  v0[27] = v1;
  *v1 = v0;
  v1[1] = sub_24A482358;

  return MEMORY[0x28215FB60]();
}

uint64_t sub_24A482358(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = v1;

  if (v1)
  {
    v4 = sub_24A48315C;
  }

  else
  {
    v4 = sub_24A48246C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24A48246C()
{
  v45 = v0;
  v1 = v0[28];
  v40 = *(v1 + 16);
  if (!v40)
  {
LABEL_12:

    if (qword_27EF3EBF8 != -1)
    {
LABEL_27:
      swift_once();
    }

    v12 = sub_24A4AB630();
    sub_24A378E18(v12, qword_27EF4E260);

    v13 = sub_24A4AB600();
    v14 = sub_24A4ABCC0();

    if (os_log_type_enabled(v13, v14))
    {
      v16 = v0[6];
      v15 = v0[7];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v44 = v18;
      *v17 = 136446466;
      *(v17 + 4) = sub_24A37BD58(0xD00000000000001CLL, 0x800000024A4B3390, &v44);
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_24A37BD58(v16, v15, &v44);
      _os_log_impl(&dword_24A376000, v13, v14, "%{public}s No friend with friendId: %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v18, -1, -1);
      MEMORY[0x24C219130](v17, -1, -1);
    }

    v19 = v0[8];
    v43 = 0;
    sub_24A489940();
    v20 = swift_allocError();
    *v21 = 2;
    *(v21 + 8) = 256;
    v19(&v43, v20);

    v22 = v0[1];

    return v22();
  }

  v2 = 0;
  v3 = v0[23];
  v38 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v36 = v0[7];
  v42 = (v0[19] + 8);
  while (1)
  {
    if (v2 >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_27;
    }

    v4 = v0[21];
    v5 = v0[18];
    (*(v3 + 16))(v0[24], v38 + *(v3 + 72) * v2, v0[22]);
    sub_24A4AB1D0();
    v6 = sub_24A4AB210();
    v8 = v7;
    v9 = *v42;
    (*v42)(v4, v5);
    if (!v8)
    {
      goto LABEL_3;
    }

    if (v6 == v0[6] && v8 == v36)
    {
      break;
    }

    v11 = sub_24A4AC270();

    if (v11)
    {
      goto LABEL_19;
    }

LABEL_3:
    ++v2;
    (*(v3 + 8))(v0[24], v0[22]);
    if (v40 == v2)
    {
      goto LABEL_12;
    }
  }

LABEL_19:
  v25 = v0[24];
  v24 = v0[25];
  v26 = v0[22];
  v27 = v0[23];
  v28 = v0[20];
  v37 = v0[18];
  v29 = v0[13];
  v30 = v0[11];
  v39 = v0[10];
  v41 = v0[12];

  (*(v27 + 32))(v24, v25, v26);
  sub_24A4AB1D0();
  sub_24A4AB1F0();
  v9(v28, v37);
  sub_24A4AADA0();
  sub_24A37B740(v39 + OBJC_IVAR____TtC7FMFCore19FMFMuteFencesAction_muteEndDate, v30, &qword_27EF3F460, &unk_24A4B53B0);
  if ((*(v29 + 48))(v30, 1, v41) == 1)
  {
    sub_24A37EF2C(v0[11], &qword_27EF3F460, &unk_24A4B53B0);
    v31 = swift_task_alloc();
    v0[30] = v31;
    *v31 = v0;
    v31[1] = sub_24A482A1C;
    v32 = v0[17];

    return MEMORY[0x28215FA98](v32);
  }

  else
  {
    (*(v0[13] + 32))(v0[14], v0[11], v0[12]);
    v33 = swift_task_alloc();
    v0[32] = v33;
    *v33 = v0;
    v33[1] = sub_24A482B30;
    v34 = v0[17];
    v35 = v0[14];

    return MEMORY[0x28215FA70](v34, v35);
  }
}

uint64_t sub_24A482A1C()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_24A483650;
  }

  else
  {
    v2 = sub_24A482EE4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24A482B30()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_24A4833AC;
  }

  else
  {
    v2 = sub_24A482C44;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24A482C44()
{
  v25 = v0;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v1 = sub_24A4AB630();
  sub_24A378E18(v1, qword_27EF4E260);

  v2 = sub_24A4AB600();
  v3 = sub_24A4ABCE0();

  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];
  if (v4)
  {
    v8 = v0[5];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136315138;
    v0[4] = *v8;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v11 = sub_24A4AB870();
    v13 = sub_24A37BD58(v11, v12, &v24);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_24A376000, v2, v3, "%s: Fences muted", v9, 0xCu);
    sub_24A37EEE0(v10);
    MEMORY[0x24C219130](v10, -1, -1);
    MEMORY[0x24C219130](v9, -1, -1);
  }

  (*(v6 + 8))(v5, v7);
  v14 = v0[25];
  v15 = v0[22];
  v16 = v0[23];
  v18 = v0[16];
  v17 = v0[17];
  v19 = v0[15];
  v20 = v0[8];
  v23 = 2;
  v20(&v23, 0);
  (*(v18 + 8))(v17, v19);
  (*(v16 + 8))(v14, v15);

  v21 = v0[1];

  return v21();
}

uint64_t sub_24A482EE4()
{
  v21 = v0;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v1 = sub_24A4AB630();
  sub_24A378E18(v1, qword_27EF4E260);

  v2 = sub_24A4AB600();
  v3 = sub_24A4ABCE0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[5];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v5 = 136315138;
    v0[3] = *v4;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v7 = sub_24A4AB870();
    v9 = sub_24A37BD58(v7, v8, &v20);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_24A376000, v2, v3, "%s: Fences unmuted", v5, 0xCu);
    sub_24A37EEE0(v6);
    MEMORY[0x24C219130](v6, -1, -1);
    MEMORY[0x24C219130](v5, -1, -1);
  }

  v10 = v0[25];
  v11 = v0[22];
  v12 = v0[23];
  v14 = v0[16];
  v13 = v0[17];
  v15 = v0[15];
  v16 = v0[8];
  v19 = 2;
  v16(&v19, 0);
  (*(v14 + 8))(v13, v15);
  (*(v12 + 8))(v10, v11);

  v17 = v0[1];

  return v17();
}

uint64_t sub_24A48315C()
{
  v17 = v0;
  v1 = v0[29];
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A4AB630();
  sub_24A378E18(v2, qword_27EF4E260);

  v3 = sub_24A4AB600();
  v4 = sub_24A4ABCE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[5];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    v0[2] = *v5;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v8 = sub_24A4AB870();
    v10 = sub_24A37BD58(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_24A376000, v3, v4, "%s: Error when muting fences", v6, 0xCu);
    sub_24A37EEE0(v7);
    MEMORY[0x24C219130](v7, -1, -1);
    MEMORY[0x24C219130](v6, -1, -1);
  }

  v11 = v0[8];
  v15 = 0;
  v12 = v1;
  v11(&v15, v1);

  v13 = v0[1];

  return v13();
}

uint64_t sub_24A4833AC()
{
  v23 = v0;
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[23];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[15];
  (*(v0[13] + 8))(v0[14], v0[12]);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  v7 = v0[33];
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v8 = sub_24A4AB630();
  sub_24A378E18(v8, qword_27EF4E260);

  v9 = sub_24A4AB600();
  v10 = sub_24A4ABCE0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[5];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315138;
    v0[2] = *v11;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v14 = sub_24A4AB870();
    v16 = sub_24A37BD58(v14, v15, &v22);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_24A376000, v9, v10, "%s: Error when muting fences", v12, 0xCu);
    sub_24A37EEE0(v13);
    MEMORY[0x24C219130](v13, -1, -1);
    MEMORY[0x24C219130](v12, -1, -1);
  }

  v17 = v0[8];
  v21 = 0;
  v18 = v7;
  v17(&v21, v7);

  v19 = v0[1];

  return v19();
}

uint64_t sub_24A483650()
{
  v20 = v0;
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[23];
  (*(v0[16] + 8))(v0[17], v0[15]);
  (*(v3 + 8))(v1, v2);
  v4 = v0[31];
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v5 = sub_24A4AB630();
  sub_24A378E18(v5, qword_27EF4E260);

  v6 = sub_24A4AB600();
  v7 = sub_24A4ABCE0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[5];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    v0[2] = *v8;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v11 = sub_24A4AB870();
    v13 = sub_24A37BD58(v11, v12, &v19);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_24A376000, v6, v7, "%s: Error when muting fences", v9, 0xCu);
    sub_24A37EEE0(v10);
    MEMORY[0x24C219130](v10, -1, -1);
    MEMORY[0x24C219130](v9, -1, -1);
  }

  v14 = v0[8];
  v18 = 0;
  v15 = v4;
  v14(&v18, v4);

  v16 = v0[1];

  return v16();
}

uint64_t sub_24A4838D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v35 = a1;
  v7 = sub_24A4AA9D0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v11 = sub_24A4AB630();
  sub_24A378E18(v11, qword_27EF4E260);

  v12 = sub_24A4AB600();
  v13 = sub_24A4ABCE0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v33 = a2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v34 = a3;
    v17 = v16;
    *v15 = 136315138;
    v36 = *v4;
    v37 = v16;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v18 = sub_24A4AB870();
    v20 = sub_24A37BD58(v18, v19, &v37);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_24A376000, v12, v13, "%s: removing labels action initiated", v15, 0xCu);
    sub_24A37EEE0(v17);
    v21 = v17;
    a3 = v34;
    MEMORY[0x24C219130](v21, -1, -1);
    v22 = v15;
    a2 = v33;
    MEMORY[0x24C219130](v22, -1, -1);
  }

  v23 = *(v8 + 16);
  v23(v10, v35 + OBJC_IVAR____TtC7FMFCore19FMFGetURLInfoAction_url, v7);
  type metadata accessor for FMFGetURLInfoRequest(0);
  v24 = swift_allocObject();
  v23((v24 + qword_27EF4E180), v10, v7);
  v25 = sub_24A3A45B8(0x466F666E49746567, 0xED00006C7255726FLL);
  (*(v8 + 8))(v10, v7);
  v26 = v4[15];
  v27 = v4[16];
  sub_24A37EACC(v4 + 12, v26);
  v28 = swift_allocObject();
  v28[2] = v4;
  v28[3] = a2;
  v28[4] = a3;
  v29 = *(v27 + 64);
  refreshed = type metadata accessor for FMFInitRefreshClientResponse(0);

  v29(v25, sub_24A489994, v28, refreshed, v26, v27);
}

void sub_24A483C54(uint64_t a1, void *a2, void **a3, void (*a4)(void **, void *))
{
  v8 = sub_24A3C9CEC(&qword_27EF3F1C8, &unk_24A4B7C70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = (&v56 - v12);
  if (a2)
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v14 = sub_24A4AB630();
    sub_24A378E18(v14, qword_27EF4E260);

    v15 = a2;
    v16 = sub_24A4AB600();
    v17 = sub_24A4ABCE0();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 136315394;
      v56 = *a3;
      v57 = v19;
      sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
      v20 = sub_24A4AB870();
      v22 = sub_24A37BD58(v20, v21, &v57);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      v56 = a2;
      sub_24A3C9CEC(&qword_27EF3F2D8, &qword_24A4B7C60);
      v23 = sub_24A4ABDE0();
      v25 = sub_24A37BD58(v23, v24, &v57);

      *(v18 + 14) = v25;
      _os_log_impl(&dword_24A376000, v16, v17, "%s: error when getting info for URL: %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v19, -1, -1);
      MEMORY[0x24C219130](v18, -1, -1);
    }

    LOBYTE(v57) = 0;
    a4(&v57, a2);
    return;
  }

  if (a1)
  {
    sub_24A37B740(a1 + OBJC_IVAR____TtC7FMFCore15FMFBaseResponse_commandResponse, &v56 - v12, &qword_27EF3F1C8, &unk_24A4B7C70);
    v26 = type metadata accessor for FMFCommandResponseFragment(0);
    v27 = *(*(v26 - 8) + 48);
    if (v27(v13, 1, v26) == 1)
    {
      sub_24A37EF2C(v13, &qword_27EF3F1C8, &unk_24A4B7C70);
    }

    else
    {
      v28 = a4;
      v29 = *v13;
      sub_24A489C74(v13, type metadata accessor for FMFCommandResponseFragment);
      v30 = v29 == 500;
      a4 = v28;
      if (v30)
      {
        if (qword_27EF3EBF8 != -1)
        {
          swift_once();
        }

        v31 = sub_24A4AB630();
        sub_24A378E18(v31, qword_27EF4E260);
        v32 = sub_24A4AB600();
        v33 = sub_24A4ABCE0();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 0;
          _os_log_impl(&dword_24A376000, v32, v33, "%%@: The command response was invalid", v34, 2u);
          MEMORY[0x24C219130](v34, -1, -1);
        }

        LOBYTE(v57) = 0;
        sub_24A489940();
        v36 = swift_allocError();
        v37 = 1;
        goto LABEL_26;
      }
    }

    sub_24A37B740(a1 + OBJC_IVAR____TtC7FMFCore15FMFBaseResponse_commandResponse, v10, &qword_27EF3F1C8, &unk_24A4B7C70);
    if (v27(v10, 1, v26) == 1)
    {
      sub_24A37EF2C(v10, &qword_27EF3F1C8, &unk_24A4B7C70);
      goto LABEL_27;
    }

    v38 = a4;
    v39 = *v10;
    sub_24A489C74(v10, type metadata accessor for FMFCommandResponseFragment);
    v30 = v39 == 516;
    a4 = v38;
    if (!v30)
    {
      goto LABEL_27;
    }

    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v40 = sub_24A4AB630();
    sub_24A378E18(v40, qword_27EF4E260);

    v41 = sub_24A4AB600();
    v42 = sub_24A4ABCE0();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 136315138;
      v56 = *a3;
      v57 = v44;
      sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
      v45 = sub_24A4AB870();
      v47 = sub_24A37BD58(v45, v46, &v57);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_24A376000, v41, v42, "%s: The request was to add friend to self", v43, 0xCu);
      sub_24A37EEE0(v44);
      MEMORY[0x24C219130](v44, -1, -1);
      MEMORY[0x24C219130](v43, -1, -1);
    }

    LOBYTE(v57) = 0;
    sub_24A489940();
    v36 = swift_allocError();
    v37 = 4;
LABEL_26:
    *v35 = v37;
    *(v35 + 8) = 256;
    a4(&v57, v36);

    return;
  }

LABEL_27:
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v48 = sub_24A4AB630();
  sub_24A378E18(v48, qword_27EF4E260);

  v49 = sub_24A4AB600();
  v50 = sub_24A4ABCB0();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v51 = 136315138;
    v56 = *a3;
    v57 = v52;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v53 = sub_24A4AB870();
    v55 = sub_24A37BD58(v53, v54, &v57);

    *(v51 + 4) = v55;
    _os_log_impl(&dword_24A376000, v49, v50, "%s: Got info for url.", v51, 0xCu);
    sub_24A37EEE0(v52);
    MEMORY[0x24C219130](v52, -1, -1);
    MEMORY[0x24C219130](v51, -1, -1);
  }

  LOBYTE(v57) = 2;
  a4(&v57, 0);
  sub_24A484468(a1, a3);
}

void sub_24A484468(uint64_t a1, uint64_t *a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF40C18, &qword_24A4BC510);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v58 - v5;
  v7 = sub_24A3C9CEC(&qword_27EF3F1C8, &unk_24A4B7C70);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v58 - v11;
  v13 = sub_24A3C9CEC(&qword_27EF3F440, &qword_24A4B5BF0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v58 - v14;
  v16 = sub_24A4AA9D0();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_4;
  }

  v64 = v6;
  v65 = v20;
  sub_24A37B740(a1 + OBJC_IVAR____TtC7FMFCore15FMFBaseResponse_commandResponse, v12, &qword_27EF3F1C8, &unk_24A4B7C70);
  v21 = type metadata accessor for FMFCommandResponseFragment(0);
  v22 = *(*(v21 - 1) + 48);
  if (v22(v12, 1, v21) == 1)
  {
    sub_24A37EF2C(v12, &qword_27EF3F1C8, &unk_24A4B7C70);
LABEL_4:
    (*(v17 + 56))(v15, 1, 1, v16, v18);
LABEL_5:
    sub_24A37EF2C(v15, &qword_27EF3F440, &qword_24A4B5BF0);
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v23 = sub_24A4AB630();
    sub_24A378E18(v23, qword_27EF4E260);

    v24 = sub_24A4AB600();
    v25 = sub_24A4ABCE0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v66[0] = v27;
      *v26 = 136315138;
      v66[3] = *a2;
      sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
      v28 = sub_24A4AB870();
      v30 = sub_24A37BD58(v28, v29, v66);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_24A376000, v24, v25, "%s: Got info but there is no url.", v26, 0xCu);
      sub_24A37EEE0(v27);
      MEMORY[0x24C219130](v27, -1, -1);
      MEMORY[0x24C219130](v26, -1, -1);
    }

    return;
  }

  sub_24A37B740(&v12[v21[6]], v15, &qword_27EF3F440, &qword_24A4B5BF0);
  sub_24A489C74(v12, type metadata accessor for FMFCommandResponseFragment);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    goto LABEL_5;
  }

  v31 = v65;
  (*(v17 + 32))(v65, v15, v16);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v33 = Strong;
    sub_24A37B740(a1 + OBJC_IVAR____TtC7FMFCore15FMFBaseResponse_commandResponse, v9, &qword_27EF3F1C8, &unk_24A4B7C70);
    if (v22(v9, 1, v21) == 1)
    {
      sub_24A37EF2C(v9, &qword_27EF3F1C8, &unk_24A4B7C70);
      v34 = type metadata accessor for FMFActionURLInfo(0);
      v35 = v64;
      (*(*(v34 - 8) + 56))(v64, 1, 1, v34);
    }

    else
    {
      v35 = v64;
      sub_24A37B740(&v9[v21[6]], v64, &qword_27EF3F440, &qword_24A4B5BF0);
      v36 = &v9[v21[7]];
      v37 = *v36;
      v38 = *(v36 + 1);
      v39 = &v9[v21[8]];
      v40 = *v39;
      v41 = *(v39 + 1);
      v62 = v37;
      v63 = v40;
      v42 = v21[10];
      v43 = &v9[v21[9]];
      v44 = *v43;
      v60 = *(v43 + 1);
      v61 = v44;
      v45 = type metadata accessor for FMFActionURLInfo(0);
      sub_24A37B740(&v9[v42], v35 + v45[8], &qword_27EF3F460, &unk_24A4B53B0);
      v46 = v21[12];
      v47 = &v9[v21[11]];
      v48 = *(v47 + 1);
      v59 = *v47;
      sub_24A37B740(&v9[v46], v35 + v45[10], &qword_27EF3F7A0, &qword_24A4B6430);
      v49 = (v35 + v45[5]);
      v50 = v63;
      *v49 = v62;
      v49[1] = v38;
      v51 = (v35 + v45[6]);
      *v51 = v50;
      v51[1] = v41;
      v52 = (v35 + v45[7]);
      v53 = v60;
      *v52 = v61;
      v52[1] = v53;
      v54 = (v35 + v45[9]);
      *v54 = v59;
      v54[1] = v48;

      sub_24A489C74(v9, type metadata accessor for FMFCommandResponseFragment);
      (*(*(v45 - 1) + 56))(v35, 0, 1, v45);
    }

    v55 = v65;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v56 = *(v33 + 40);
      ObjectType = swift_getObjectType();
      (*(v56 + 112))(v33, v35, v55, ObjectType, v56);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    sub_24A37EF2C(v35, &qword_27EF40C18, &qword_24A4BC510);
    (*(v17 + 8))(v55, v16);
  }

  else
  {
    (*(v17 + 8))(v31, v16);
  }
}

uint64_t sub_24A484B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_24A4AA700();
  v25 = v8;
  v26 = sub_24A38D374(&qword_27EF40910, MEMORY[0x277D08A28], MEMORY[0x277D089C8]);
  v9 = sub_24A38D3BC(v24);
  (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D089E0], v8);
  LOBYTE(v8) = sub_24A4AA6C0();
  result = sub_24A37EEE0(v24);
  if (v8)
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v11 = sub_24A4AB630();
    sub_24A378E18(v11, qword_27EF4E260);

    v12 = sub_24A4AB600();
    v13 = sub_24A4ABCE0();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 136315138;
      v24[0] = v15;
      sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
      v16 = sub_24A4AB870();
      v18 = sub_24A37BD58(v16, v17, v24);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_24A376000, v12, v13, "%s: Updating Stewie location...", v14, 0xCu);
      sub_24A37EEE0(v15);
      MEMORY[0x24C219130](v15, -1, -1);
      MEMORY[0x24C219130](v14, -1, -1);
    }

    sub_24A39997C(v4 + 56, v24);
    v19 = v25;
    v20 = v26;
    sub_24A37EACC(v24, v25);
    v21 = *(a1 + 24);
    v22 = swift_allocObject();
    v22[2] = v4;
    v22[3] = a2;
    v22[4] = a3;
    v23 = *(v20 + 8);

    v23(v21, sub_24A489924, v22, v19, v20);

    return sub_24A37EEE0(v24);
  }

  return result;
}

uint64_t sub_24A484E78(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_24A4AB690();
  v25 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_24A4AB6E0();
  v13 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A3785D4();
  v23 = sub_24A4ABD60();
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = a5;
  aBlock[4] = sub_24A489930;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D8B500;
  v17 = _Block_copy(aBlock);
  v18 = a1;
  v19 = a2;

  sub_24A4AB6B0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24A38D374(&qword_27EF408E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3CFC00();
  sub_24A4ABE90();
  v20 = v23;
  MEMORY[0x24C218190](0, v15, v12, v17);
  _Block_release(v17);

  (*(v25 + 8))(v12, v10);
  return (*(v13 + 8))(v15, v24);
}

void sub_24A485160(void *a1, void *a2, void **a3, void (*a4)(void, void), uint64_t a5)
{
  v10 = sub_24A4AAE90();
  v99 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v95 = &v92[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_24A3C9CEC(&qword_27EF40BF8, &qword_24A4BC4F8);
  MEMORY[0x28223BE20](v12);
  v14 = &v92[-v13];
  v15 = sub_24A3C9CEC(&qword_27EF40C00, &unk_24A4BC500);
  MEMORY[0x28223BE20](v15 - 8);
  v96 = &v92[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v19 = &v92[-v18];
  *&v21 = MEMORY[0x28223BE20](v20).n128_u64[0];
  v23 = &v92[-v22];
  if (a1)
  {
    [a1 nextAllowedPublish];
    v25 = v24;
    v100 = a1;
    if (a2)
    {
LABEL_3:
      v97 = a3;
      v98 = a5;
      v104[0] = a2;
      v26 = a2;
      v101 = a2;
      v27 = a2;
      sub_24A3C9CEC(&qword_27EF3F0D0, &unk_24A4B6970);
      type metadata accessor for SecureLocationsStewieError(0);
      if (swift_dynamicCast())
      {
        v28 = v103;
        sub_24A38D374(&qword_27EF3EDC0, type metadata accessor for SecureLocationsStewieError, &unk_24A4B3F2C);
        sub_24A4AA910();

        if (v102 == 1)
        {
          if (!v100)
          {
            goto LABEL_20;
          }

          goto LABEL_28;
        }
      }

      v104[0] = v101;
      v40 = v101;
      v41 = swift_dynamicCast();
      v42 = v99;
      v43 = *(v99 + 56);
      v43(v23, v41 ^ 1u, 1, v10);
      (*(v42 + 104))(v19, *MEMORY[0x277D09158], v10);
      v43(v19, 0, 1, v10);
      v44 = *(v12 + 48);
      sub_24A37B740(v23, v14, &qword_27EF40C00, &unk_24A4BC500);
      sub_24A37B740(v19, &v14[v44], &qword_27EF40C00, &unk_24A4BC500);
      v45 = *(v42 + 48);
      v46 = v45(v14, 1, v10);
      v47 = v100;
      if (v46 == 1)
      {
        sub_24A37EF2C(v19, &qword_27EF40C00, &unk_24A4BC500);
        if (v45(&v14[v44], 1, v10) == 1)
        {
          sub_24A37EF2C(v14, &qword_27EF40C00, &unk_24A4BC500);
          sub_24A37EF2C(v23, &qword_27EF40C00, &unk_24A4BC500);
          if (!v100)
          {
            goto LABEL_20;
          }

          goto LABEL_28;
        }
      }

      else
      {
        v48 = v96;
        sub_24A37B740(v14, v96, &qword_27EF40C00, &unk_24A4BC500);
        if (v45(&v14[v44], 1, v10) != 1)
        {
          v94 = a4;
          v66 = v99;
          v67 = v95;
          (*(v99 + 32))(v95, &v14[v44], v10);
          sub_24A38D374(&qword_27EF40C10, MEMORY[0x277D09160], MEMORY[0x277D09168]);
          v93 = sub_24A4AB810();
          v68 = v48;
          v69 = *(v66 + 8);
          v69(v67, v10);
          sub_24A37EF2C(v19, &qword_27EF40C00, &unk_24A4BC500);
          v69(v68, v10);
          a4 = v94;
          sub_24A37EF2C(v14, &qword_27EF40C00, &unk_24A4BC500);
          sub_24A37EF2C(v23, &qword_27EF40C00, &unk_24A4BC500);
          if (!v47 || (v93 & 1) == 0)
          {
            goto LABEL_20;
          }

LABEL_28:
          v70 = v101;
          v71 = v97;
          if (qword_27EF3EBF8 != -1)
          {
            swift_once();
          }

          v72 = sub_24A4AB630();
          sub_24A378E18(v72, qword_27EF4E260);
          v73 = v70;

          v74 = sub_24A4AB600();
          v75 = sub_24A4ABCE0();

          if (os_log_type_enabled(v74, v75))
          {
            v76 = swift_slowAlloc();
            v77 = swift_slowAlloc();
            v78 = v71;
            v79 = v77;
            *v76 = 136315650;
            v103 = *v78;
            v104[0] = v77;
            sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
            v80 = sub_24A4AB870();
            v82 = sub_24A37BD58(v80, v81, v104);

            *(v76 + 4) = v82;
            *(v76 + 12) = 2080;
            swift_getErrorValue();
            v83 = sub_24A4AC310();
            v85 = sub_24A37BD58(v83, v84, v104);

            *(v76 + 14) = v85;
            *(v76 + 22) = 2080;
            v86 = sub_24A4ABBD0();
            v88 = sub_24A37BD58(v86, v87, v104);

            *(v76 + 24) = v88;
            _os_log_impl(&dword_24A376000, v74, v75, "%s: Updated Stewie location failed %s (next allowed publish: %s", v76, 0x20u);
            swift_arrayDestroy();
            v70 = v101;
            MEMORY[0x24C219130](v79, -1, -1);
            MEMORY[0x24C219130](v76, -1, -1);
          }

          LOBYTE(v104[0]) = 0;
          sub_24A489940();
          v89 = swift_allocError();
          *v90 = v25;
          *(v90 + 8) = 0;
          a4(v104, v89);

          return;
        }

        sub_24A37EF2C(v19, &qword_27EF40C00, &unk_24A4BC500);
        (*(v99 + 8))(v48, v10);
      }

      sub_24A37EF2C(v14, &qword_27EF40BF8, &qword_24A4BC4F8);
      sub_24A37EF2C(v23, &qword_27EF40C00, &unk_24A4BC500);
LABEL_20:
      v49 = v101;
      v50 = v97;
      if (qword_27EF3EBF8 != -1)
      {
        swift_once();
      }

      v51 = sub_24A4AB630();
      sub_24A378E18(v51, qword_27EF4E260);
      v52 = v49;

      v53 = sub_24A4AB600();
      v54 = sub_24A4ABCE0();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v57 = v50;
        v58 = v56;
        *v55 = 136315394;
        v103 = *v57;
        v104[0] = v56;
        sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
        v59 = sub_24A4AB870();
        v61 = sub_24A37BD58(v59, v60, v104);

        *(v55 + 4) = v61;
        *(v55 + 12) = 2080;
        swift_getErrorValue();
        v62 = sub_24A4AC310();
        v64 = sub_24A37BD58(v62, v63, v104);

        *(v55 + 14) = v64;
        _os_log_impl(&dword_24A376000, v53, v54, "%s: Updated Stewie location failed %s", v55, 0x16u);
        swift_arrayDestroy();
        v49 = v101;
        MEMORY[0x24C219130](v58, -1, -1);
        MEMORY[0x24C219130](v55, -1, -1);
      }

      LOBYTE(v104[0]) = 0;
      v65 = v49;
      a4(v104, v49);

      return;
    }
  }

  else
  {
    v25 = 0;
    v100 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v29 = sub_24A4AB630();
  sub_24A378E18(v29, qword_27EF4E260);

  v30 = sub_24A4AB600();
  v31 = sub_24A4ABCE0();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 136315394;
    v103 = *a3;
    v104[0] = v33;
    sub_24A3C9CEC(&qword_27EF40BF0, &unk_24A4BC4E8);
    v34 = sub_24A4AB870();
    v36 = sub_24A37BD58(v34, v35, v104);

    *(v32 + 4) = v36;
    *(v32 + 12) = 2080;
    if (v100)
    {
      v37 = sub_24A4ABBD0();
      v39 = v38;
    }

    else
    {
      v39 = 0xE300000000000000;
      v37 = 7104878;
    }

    v91 = sub_24A37BD58(v37, v39, v104);

    *(v32 + 14) = v91;
    _os_log_impl(&dword_24A376000, v30, v31, "%s: Updated Stewie location succeeded (next allowed publish: %s)", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v33, -1, -1);
    MEMORY[0x24C219130](v32, -1, -1);
  }

  else
  {
  }

  LOBYTE(v104[0]) = 2;
  a4(v104, 0);
}

uint64_t sub_24A485D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = *v5;
  sub_24A4AC360();
  sub_24A4AB8F0();
  v11 = sub_24A4AC3A0();
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    while (1)
    {
      v15 = (*(v10 + 48) + 32 * v13);
      v16 = *v15 == a2 && v15[1] == a3;
      if (v16 || (sub_24A4AC270() & 1) != 0)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v19 = *(v10 + 48) + 32 * v13;
    v21 = *v19;
    v20 = *(v19 + 8);
    v22 = *(v19 + 16);
    v23 = *(v19 + 24);
    v24 = *(v19 + 25);
    LOBYTE(v19) = *(v19 + 26);
    *a1 = v21;
    *(a1 + 8) = v20;
    *(a1 + 16) = v22;
    *(a1 + 24) = v23;
    *(a1 + 25) = v24;
    *(a1 + 26) = v19;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v5;

    sub_24A48737C(a2, a3, a4, a5 & 0x10101, v13, isUniquelyReferenced_nonNull_native);
    *v5 = v26;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = a4;
    *(a1 + 24) = a5 & 1;
    *(a1 + 25) = BYTE1(a5) & 1;
    *(a1 + 26) = BYTE2(a5) & 1;
    return 1;
  }
}

uint64_t sub_24A485F20(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_24A4AB220();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_24A38D374(&qword_27EF40C50, MEMORY[0x277D092D8], MEMORY[0x277D092E0]);
  v33 = a2;
  v11 = sub_24A4AB7D0();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_24A38D374(&qword_27EF40C58, MEMORY[0x277D092D8], MEMORY[0x277D092E8]);
      v21 = sub_24A4AB810();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_24A487528(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_24A486200(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v8 = a4 & 0x100;
  v37 = a4 & 0x10000;
  v9 = *v4;
  sub_24A4AC360();
  v39 = a2;
  sub_24A4AB8F0();
  v34 = a4 & 1;
  sub_24A4AC380();
  sub_24A4AC380();
  v38 = a4;
  sub_24A4AC380();
  v10 = sub_24A4AC3A0();
  v11 = v9 + 56;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v33 = v9;
    v15 = *(v9 + 48);
    v17 = a3;
    v16 = v39;
    while (1)
    {
      v18 = v15 + 24 * v13;
      v19 = *(v18 + 16);
      v20 = *(v18 + 17);
      v21 = (v37 != 0) ^ *(v18 + 18);
      if (*v18 == v16 && *(v18 + 8) == v17)
      {
        if (((v19 ^ v38 | (v8 != 0) ^ v20 | v21) & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v23 = sub_24A4AC270();
        v17 = a3;
        v16 = v39;
        if (!((v19 ^ v38) & 1 | ((v23 & 1) == 0) | (((v8 != 0) ^ v20) | v21) & 1))
        {
LABEL_10:

          v24 = *(v33 + 48) + 24 * v13;
          v26 = *v24;
          v25 = *(v24 + 8);
          v27 = *(v24 + 16);
          v28 = *(v24 + 17);
          LOBYTE(v24) = *(v24 + 18);
          *a1 = v26;
          *(a1 + 8) = v25;
          *(a1 + 16) = v27;
          *(a1 + 17) = v28;
          *(a1 + 18) = v24;

          return 0;
        }
      }

      v13 = (v13 + 1) & v14;
      if (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_12;
      }
    }
  }

  v17 = a3;
  v16 = a2;
LABEL_12:
  v30 = v16;
  v31 = v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v35;

  sub_24A4877CC(v30, v31, v38 & 0x10101, v13, isUniquelyReferenced_nonNull_native);
  *v35 = v40;
  *a1 = v30;
  *(a1 + 8) = v31;
  *(a1 + 16) = v34;
  *(a1 + 17) = BYTE1(v8);
  *(a1 + 18) = BYTE2(v37);
  return 1;
}

uint64_t sub_24A48646C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_24A4AC360();
  sub_24A4AC380();
  if (a3)
  {
    sub_24A4AB8F0();
  }

  v8 = sub_24A4AC3A0();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_16:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_24A487A38(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  v12 = *(v7 + 48);
  while (1)
  {
    v13 = (v12 + 16 * v10);
    v14 = v13[1];
    if (v14)
    {
      break;
    }

    if (!a3)
    {
      goto LABEL_15;
    }

LABEL_6:
    v10 = (v10 + 1) & v11;
    if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (!a3)
  {
    goto LABEL_6;
  }

  v15 = *v13 == a2 && v14 == a3;
  if (!v15 && (sub_24A4AC270() & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_15:
  *a1 = *(*(v7 + 48) + 16 * v10);

  return 0;
}

uint64_t sub_24A4865F4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_24A3C9CEC(&unk_27EF404B0, &qword_24A4BA6C8);
  result = sub_24A4ABF00();
  v5 = result;
  if (*(v3 + 16))
  {
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_24A4AC360();
      sub_24A4AB8F0();
      result = sub_24A4AC3A0();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24A486854(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_24A3C9CEC(&qword_27EF40C40, &qword_24A4BC560);
  result = sub_24A4ABF00();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v3;
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 32 * (v15 | (v6 << 6));
      v19 = *v18;
      v32 = *(v18 + 8);
      v20 = *(v18 + 24);
      v21 = *(v18 + 25);
      v31 = *(v18 + 26);
      sub_24A4AC360();
      sub_24A4AB8F0();
      result = sub_24A4AC3A0();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 32 * v13;
      *v14 = v19;
      *(v14 + 8) = v32;
      *(v14 + 24) = v20;
      *(v14 + 25) = v21;
      *(v14 + 26) = v31;
      ++*(v5 + 16);
      v3 = v30;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero(v7, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24A486AEC(uint64_t a1)
{
  v2 = v1;
  v36 = sub_24A4AB220();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_24A3C9CEC(&qword_27EF40C60, &qword_24A4BC588);
  result = sub_24A4ABF00();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_24A38D374(&qword_27EF40C50, MEMORY[0x277D092D8], MEMORY[0x277D092E0]);
      result = sub_24A4AB7D0();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_24A486E48(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_24A3C9CEC(&qword_27EF40C38, &qword_24A4BC558);
  result = sub_24A4ABF00();
  v5 = result;
  if (*(v3 + 16))
  {
    v32 = v1;
    v33 = v3;
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v34 = (v10 - 1) & v10;
LABEL_15:
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 17);
      v23 = *(v18 + 18);
      sub_24A4AC360();
      sub_24A4AB8F0();
      sub_24A4AC380();
      sub_24A4AC380();
      sub_24A4AC380();
      result = sub_24A4AC3A0();
      v24 = -1 << *(v5 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v12 + 8 * v26);
          if (v30 != -1)
          {
            v13 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      *(v14 + 17) = v22;
      *(v14 + 18) = v23;
      ++*(v5 + 16);
      v3 = v33;
      v10 = v34;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v7, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24A487100(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_24A3C9CEC(&qword_27EF40C70, &unk_24A4BC628);
  result = sub_24A4ABF00();
  v5 = result;
  if (*(v3 + 16))
  {
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v20 = *v18;
      v19 = v18[1];
      sub_24A4AC360();
      sub_24A4AC380();
      if (v19)
      {
        sub_24A4AB8F0();
      }

      result = sub_24A4AC3A0();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v19;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void sub_24A48737C(uint64_t result, uint64_t a2, uint64_t a3, int a4, unint64_t a5, char a6)
{
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a6)
  {
    sub_24A486854(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_24A487D50();
      goto LABEL_16;
    }

    sub_24A4883DC(v12 + 1);
  }

  v14 = *v6;
  sub_24A4AC360();
  sub_24A4AB8F0();
  v15 = sub_24A4AC3A0();
  v16 = -1 << *(v14 + 32);
  a5 = v15 & ~v16;
  if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v17 = ~v16;
    do
    {
      v18 = (*(v14 + 48) + 32 * a5);
      v19 = *v18 == result && v18[1] == a2;
      if (v19 || (sub_24A4AC270() & 1) != 0)
      {
        goto LABEL_19;
      }

      a5 = (a5 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_16:
  v20 = *v6;
  *(*v6 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v21 = *(v20 + 48) + 32 * a5;
  *v21 = result;
  *(v21 + 8) = a2;
  *(v21 + 16) = a3;
  *(v21 + 24) = a4 & 1;
  *(v21 + 25) = BYTE1(a4) & 1;
  *(v21 + 26) = BYTE2(a4) & 1;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v20 + 16) = v24;
    return;
  }

  __break(1u);
LABEL_19:
  sub_24A4AC2A0();
  __break(1u);
}

uint64_t sub_24A487528(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_24A4AB220();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24A486AEC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_24A487ED4();
      goto LABEL_12;
    }

    sub_24A488650(v11 + 1);
  }

  v13 = *v3;
  sub_24A38D374(&qword_27EF40C50, MEMORY[0x277D092D8], MEMORY[0x277D092E0]);
  v14 = sub_24A4AB7D0();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_24A38D374(&qword_27EF40C58, MEMORY[0x277D092D8], MEMORY[0x277D092E8]);
      v22 = sub_24A4AB810();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_24A4AC2A0();
  __break(1u);
  return result;
}

void sub_24A4877CC(uint64_t result, uint64_t a2, int a3, unint64_t a4, char a5)
{
  v9 = a3 & 0x100;
  v10 = a3 & 0x10000;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  v36 = (a3 & 0x10000u) >> 16;
  v37 = v9 >> 8;
  if (v12 <= v11 || (a5 & 1) == 0)
  {
    v39 = a3;
    if (a5)
    {
      sub_24A486E48(v11 + 1);
    }

    else
    {
      if (v12 > v11)
      {
        sub_24A48810C();
        goto LABEL_18;
      }

      sub_24A48896C(v11 + 1);
    }

    v13 = *v5;
    sub_24A4AC360();
    sub_24A4AB8F0();
    sub_24A4AC380();
    sub_24A4AC380();
    sub_24A4AC380();
    v14 = sub_24A4AC3A0();
    v15 = v13 + 56;
    v16 = -1 << *(v13 + 32);
    a4 = v14 & ~v16;
    if ((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
    {
      v17 = ~v16;
      v18 = *(v13 + 48);
      a3 = v39;
      v19 = v9;
      v20 = v10;
      v38 = result;
      while (1)
      {
        v21 = v18 + 24 * a4;
        v22 = *(v21 + 16);
        v23 = *(v21 + 17);
        v24 = (v20 != 0) ^ *(v21 + 18);
        if (*v21 == result && *(v21 + 8) == a2)
        {
          if (((v22 ^ a3 | (v19 != 0) ^ v23 | v24) & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v40 = v19 != 0;
          v26 = a2;
          v27 = v19;
          v28 = v15;
          v29 = sub_24A4AC270();
          v15 = v28;
          v19 = v27;
          a2 = v26;
          result = v38;
          a3 = v39;
          if (!((v22 ^ v39) & 1 | ((v29 & 1) == 0) | ((v40 ^ v23) | v24) & 1))
          {
LABEL_17:
            sub_24A4AC2A0();
            __break(1u);
            break;
          }
        }

        a4 = (a4 + 1) & v17;
        if (((*(v15 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
        {
          goto LABEL_19;
        }
      }
    }

LABEL_18:
    LOBYTE(a3) = v39;
  }

LABEL_19:
  v30 = *v35;
  *(*v35 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v31 = *(v30 + 48) + 24 * a4;
  *v31 = result;
  *(v31 + 8) = a2;
  *(v31 + 16) = a3 & 1;
  *(v31 + 17) = v37;
  *(v31 + 18) = v36;
  v32 = *(v30 + 16);
  v33 = __OFADD__(v32, 1);
  v34 = v32 + 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v30 + 16) = v34;
  }
}

void sub_24A487A38(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (a4)
  {
    sub_24A487100(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      sub_24A488284();
      goto LABEL_22;
    }

    sub_24A488C04(v9 + 1);
  }

  v11 = *v4;
  sub_24A4AC360();
  sub_24A4AC380();
  if (a2)
  {
    sub_24A4AB8F0();
  }

  v12 = sub_24A4AC3A0();
  v13 = v11 + 56;
  v14 = -1 << *(v11 + 32);
  a3 = v12 & ~v14;
  if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v15 = ~v14;
    v16 = *(v11 + 48);
    do
    {
      v17 = (v16 + 16 * a3);
      v18 = v17[1];
      if (v18)
      {
        if (a2)
        {
          v19 = *v17 == result && v18 == a2;
          if (v19 || (sub_24A4AC270() & 1) != 0)
          {
LABEL_21:
            sub_24A3C9CEC(&unk_27EF3F4C0, &qword_24A4B7E60);
            sub_24A4AC2A0();
            __break(1u);
            break;
          }
        }
      }

      else if (!a2)
      {
        goto LABEL_21;
      }

      a3 = (a3 + 1) & v15;
    }

    while (((*(v13 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_22:
  v20 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v21 = (*(v20 + 48) + 16 * a3);
  *v21 = result;
  v21[1] = a2;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }
}

void sub_24A487BF4()
{
  v1 = v0;
  sub_24A3C9CEC(&unk_27EF404B0, &qword_24A4BA6C8);
  v2 = *v0;
  v3 = sub_24A4ABEF0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

void sub_24A487D50()
{
  v1 = v0;
  sub_24A3C9CEC(&qword_27EF40C40, &qword_24A4BC560);
  v2 = *v0;
  v3 = sub_24A4ABEF0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = *(v18 + 25);
        LOBYTE(v18) = *(v18 + 26);
        v24 = *(v4 + 48) + v17;
        *v24 = v20;
        *(v24 + 8) = v19;
        *(v24 + 16) = v21;
        *(v24 + 24) = v22;
        *(v24 + 25) = v23;
        *(v24 + 26) = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

void *sub_24A487ED4()
{
  v1 = v0;
  v2 = sub_24A4AB220();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A3C9CEC(&qword_27EF40C60, &qword_24A4BC588);
  v6 = *v0;
  v7 = sub_24A4ABEF0();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void sub_24A48810C()
{
  v1 = v0;
  sub_24A3C9CEC(&qword_27EF40C38, &qword_24A4BC558);
  v2 = *v0;
  v3 = sub_24A4ABEF0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 17);
        LOBYTE(v18) = *(v18 + 18);
        v23 = *(v4 + 48) + v17;
        *v23 = v20;
        *(v23 + 8) = v19;
        *(v23 + 16) = v21;
        *(v23 + 17) = v22;
        *(v23 + 18) = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

void sub_24A488284()
{
  v1 = v0;
  sub_24A3C9CEC(&qword_27EF40C70, &unk_24A4BC628);
  v2 = *v0;
  v3 = sub_24A4ABEF0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

uint64_t sub_24A4883DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_24A3C9CEC(&qword_27EF40C40, &qword_24A4BC560);
  result = sub_24A4ABF00();
  v5 = result;
  if (*(v3 + 16))
  {
    v29 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 32 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v31 = *(v18 + 25);
      v32 = *(v18 + 24);
      v30 = *(v18 + 26);
      sub_24A4AC360();

      sub_24A4AB8F0();
      result = sub_24A4AC3A0();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 32 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      *(v14 + 24) = v32;
      *(v14 + 25) = v31;
      *(v14 + 26) = v30;
      ++*(v5 + 16);
      v3 = v29;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_24A488650(uint64_t a1)
{
  v2 = v1;
  v33 = sub_24A4AB220();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_24A3C9CEC(&qword_27EF40C60, &qword_24A4BC588);
  v7 = sub_24A4ABF00();
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
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_24A38D374(&qword_27EF40C50, MEMORY[0x277D092D8], MEMORY[0x277D092E0]);
      result = sub_24A4AB7D0();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_24A48896C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_24A3C9CEC(&qword_27EF40C38, &qword_24A4BC558);
  result = sub_24A4ABF00();
  v5 = result;
  if (*(v3 + 16))
  {
    v31 = v1;
    v32 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v33 = (v10 - 1) & v10;
LABEL_15:
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 17);
      v23 = *(v18 + 18);
      sub_24A4AC360();

      sub_24A4AB8F0();
      sub_24A4AC380();
      sub_24A4AC380();
      sub_24A4AC380();
      result = sub_24A4AC3A0();
      v24 = -1 << *(v5 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v12 + 8 * v26);
          if (v30 != -1)
          {
            v13 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      *(v14 + 17) = v22;
      *(v14 + 18) = v23;
      ++*(v5 + 16);
      v3 = v32;
      v10 = v33;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v31;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v33 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_24A488C04(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_24A3C9CEC(&qword_27EF40C70, &unk_24A4BC628);
  result = sub_24A4ABF00();
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
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v19 = *v17;
      v18 = v17[1];
      sub_24A4AC360();
      sub_24A4AC380();
      if (v18)
      {

        sub_24A4AB8F0();
      }

      result = sub_24A4AC3A0();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_30;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v19;
      v13[1] = v18;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_24A488E58(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v92 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_24A41EC2C(v7);
      v7 = result;
    }

    v84 = (v7 + 16);
    v85 = *(v7 + 16);
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = (v7 + 16 * v85);
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        sub_24A489414((*a3 + 24 * *v86), (*a3 + 24 * *v88), *a3 + 24 * v89, v93);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_114;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_115;
        }

        *v86 = v87;
        v86[1] = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_116;
        }

        v85 = *v84 - 1;
        result = memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v91 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6 + 16);
      v10 = 24 * v8;
      v11 = *a3 + 24 * v8;
      v12 = *(v11 + 16);
      v13 = v8 + 2;
      v14 = (v11 + 64);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 3;
        v17 = (v9 < v12) ^ (v16 >= v15);
        ++v13;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          v6 = v13 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
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
        v18 = 24 * v6 - 8;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v26 + v10);
            v22 = (v26 + v18);
            v23 = *v21;
            v24 = *(v21 + 2);
            v25 = *v22;
            *v21 = *(v22 - 1);
            *(v21 + 2) = v25;
            *(v22 - 1) = v23;
            *v22 = v24;
          }

          ++v20;
          v18 -= 24;
          v10 += 24;
        }

        while (v20 < v19);
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
      result = sub_24A3EDCB4(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v37 = *(v7 + 16);
    v36 = *(v7 + 24);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      result = sub_24A3EDCB4((v36 > 1), v37 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v38;
    v39 = v7 + 32;
    v40 = (v7 + 32 + 16 * v37);
    *v40 = v8;
    v40[1] = v6;
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_127;
    }

    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = *(v7 + 32);
          v43 = *(v7 + 40);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_57:
          if (v45)
          {
            goto LABEL_104;
          }

          v58 = (v7 + 16 * v38);
          v60 = *v58;
          v59 = v58[1];
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_106;
          }

          v64 = (v39 + 16 * v41);
          v66 = *v64;
          v65 = v64[1];
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_111;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v38 < 2)
        {
          goto LABEL_112;
        }

        v68 = (v7 + 16 * v38);
        v70 = *v68;
        v69 = v68[1];
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_72:
        if (v63)
        {
          goto LABEL_108;
        }

        v71 = (v39 + 16 * v41);
        v73 = *v71;
        v72 = v71[1];
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_110;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v41 - 1 >= v38)
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

        v79 = (v39 + 16 * (v41 - 1));
        v80 = *v79;
        v81 = (v39 + 16 * v41);
        v82 = v81[1];
        sub_24A489414((*a3 + 24 * *v79), (*a3 + 24 * *v81), *a3 + 24 * v82, v93);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_99;
        }

        if (v41 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v79 = v80;
        v79[1] = v82;
        v83 = *(v7 + 16);
        if (v41 >= v83)
        {
          goto LABEL_101;
        }

        v38 = v83 - 1;
        result = memmove((v39 + 16 * v41), v81 + 2, 16 * (v83 - 1 - v41));
        *(v7 + 16) = v83 - 1;
        if (v83 <= 2)
        {
          goto LABEL_3;
        }
      }

      v46 = v39 + 16 * v38;
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_102;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_103;
      }

      v53 = (v7 + 16 * v38);
      v55 = *v53;
      v54 = v53[1];
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_105;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_107;
      }

      if (v57 >= v49)
      {
        v75 = (v39 + 16 * v41);
        v77 = *v75;
        v76 = v75[1];
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v91;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 24 * v6;
  v29 = v8 - v6;
LABEL_30:
  v30 = *(v27 + 24 * v6 + 16);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (v30 >= *(v32 - 1))
    {
LABEL_29:
      ++v6;
      v28 += 24;
      --v29;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    v34 = v32[1];
    *v32 = *(v32 - 3);
    v32[2] = *(v32 - 1);
    *(v32 - 2) = v34;
    *(v32 - 1) = v30;
    *(v32 - 3) = v33;
    v32 -= 3;
    if (__CFADD__(v31++, 1))
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

uint64_t sub_24A489414(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*(v6 + 2) < *(v4 + 2))
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 24;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 24;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v5 -= 24;
    do
    {
      v16 = (v5 + 24);
      if (*(v12 - 1) < *(v6 - 1))
      {
        v19 = v6 - 24;
        if (v16 != v6)
        {
          v20 = *v19;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v20;
        }

        if (v12 <= v4 || (v6 -= 24, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v17 = v12 - 24;
      if (v16 != v12)
      {
        v18 = *v17;
        *(v5 + 16) = *(v12 - 1);
        *v5 = v18;
      }

      v5 -= 24;
      v12 -= 24;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v21 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v22 = (v21 >> 2) + (v21 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v22])
  {
    memmove(v6, v4, 24 * v22);
  }

  return 1;
}

uint64_t _s7FMFCore15FMFActionsErrorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*(a1 + 9) == 1)
  {
    if (v2 > 3)
    {
      v8 = *(a1 + 8);
      if (v2 > 5)
      {
        if (v2 ^ 6 | v8)
        {
          if (*(a2 + 9) && __PAIR128__(v5, *&v4) >= 7)
          {
            return 1;
          }
        }

        else if (*(a2 + 9) && !(*&v4 ^ 6 | v5))
        {
          return 1;
        }
      }

      else if (v2 ^ 4 | v8)
      {
        if (*(a2 + 9) && !(*&v4 ^ 5 | v5))
        {
          return 1;
        }
      }

      else if (*(a2 + 9) && !(*&v4 ^ 4 | v5))
      {
        return 1;
      }
    }

    else
    {
      v6 = *(a1 + 8);
      if (v2 > 1)
      {
        if (v2 ^ 2 | v6)
        {
          if (*(a2 + 9) && !(*&v4 ^ 3 | v5))
          {
            return 1;
          }
        }

        else if (*(a2 + 9) && !(*&v4 ^ 2 | v5))
        {
          return 1;
        }
      }

      else if (v2 | v6)
      {
        if (*(a2 + 9) && !(*&v4 ^ 1 | v5))
        {
          return 1;
        }
      }

      else if (*(a2 + 9) && !(*&v4 | v5))
      {
        return 1;
      }
    }

    return 0;
  }

  if (*(a2 + 9))
  {
    return 0;
  }

  v9 = v3 & v5;
  v10 = *&v2 == v4;
  if (v5)
  {
    v11 = v3 & v5;
  }

  else
  {
    v11 = v10;
  }

  if (*(a1 + 8))
  {
    v11 = v9;
  }

  return v11 & 1;
}

unint64_t sub_24A4897BC()
{
  result = qword_27EF40BE8;
  if (!qword_27EF40BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40BE8);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for FMFActionsError(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for FMFActionsError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FMFActionsError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 10) = v3;
  return result;
}

uint64_t sub_24A489884(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24A4898A0(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    *(result + 9) = 1;
  }

  else
  {
    *(result + 9) = 0;
  }

  return result;
}

unint64_t sub_24A489940()
{
  result = qword_27EF40C08;
  if (!qword_27EF40C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF40C08);
  }

  return result;
}

uint64_t sub_24A4899A0(uint64_t a1)
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
  v10[1] = sub_24A3A357C;

  return sub_24A480A5C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_24A489ABC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24A3A35A8;

  return sub_24A478B5C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_24A489B98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24A3A357C;

  return sub_24A4782E4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_24A489C74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A489CD4(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = sub_24A48A1C8();
  result = MEMORY[0x24C218010](v3, &type metadata for SecureFriend, v4);
  v13 = result;
  if (v3)
  {
    v6 = (a1 + 58);
    do
    {
      v7 = *(v6 - 10);
      v8 = *(v6 - 18);
      v9 = *(v6 - 26);
      if (*(v6 - 1))
      {
        v10 = 256;
      }

      else
      {
        v10 = 0;
      }

      if (*v6)
      {
        v11 = 0x10000;
      }

      else
      {
        v11 = 0;
      }

      v1 = v11 | v1 & 0xFF000000 | v10 | *(v6 - 2);

      sub_24A485D4C(v12, v9, v8, v7, v1);

      v6 += 32;
      --v3;
    }

    while (v3);
    return v13;
  }

  return result;
}