uint64_t sub_2751EDBB0(float *__dst, float *__src, float *a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v13)
  {
    v14 = 4 * v10;
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, v14 * 4);
    }

    v15 = &v4[v14];
    if (v8 < 16)
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

      if (v6[2] < v4[2])
      {
        break;
      }

      v16 = v4;
      v17 = v7 == v4;
      v4 += 4;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v15)
      {
        goto LABEL_10;
      }
    }

    v16 = v6;
    v17 = v7 == v6;
    v6 += 4;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v16;
    goto LABEL_13;
  }

  v18 = 4 * v13;
  if (a4 != __src || &__src[v18] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v15 = &v4[v18];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 4;
    do
    {
      v19 = v5 + 4;
      if (*(v15 - 2) < *(v6 - 2))
      {
        v21 = v6 - 4;
        if (v19 != v6)
        {
          *v5 = *v21;
        }

        if (v15 <= v4 || (v6 -= 4, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v20 = v15 - 4;
      if (v19 != v15)
      {
        *v5 = *v20;
      }

      v5 -= 4;
      v15 -= 4;
    }

    while (v20 > v4);
    v15 = v20;
  }

LABEL_35:
  v22 = (v15 - v4 + (v15 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0;
  if (v6 != v4 || v6 >= (v4 + v22))
  {
    memmove(v6, v4, v22);
  }

  return 1;
}

uint64_t sub_2751EDDAC(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_27520C268();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_2751EE0B0(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_2751EDE8C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD528, &unk_27520D800);
  result = sub_27520BF38();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_27520C268();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2751EE0B0(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2751EDE8C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_2751DD250();
      a2 = v7;
      goto LABEL_12;
    }

    sub_2751EE1D0(v5 + 1);
  }

  v8 = *v3;
  result = sub_27520C268();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_27520C248();
  __break(1u);
  return result;
}

uint64_t sub_2751EE1D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD528, &unk_27520D800);
  result = sub_27520BF38();
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_27520C268();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_2751EE3C0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v33[2] = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v33[0] = a1;
    v30 = *(a1 + 16);
    if (v30)
    {
      v4 = 0;
      v5 = a2 + 56;
      v31 = *(a2 + 40);
      v32 = a1 + 32;
      v29 = -1 << *(a2 + 32);
      v6 = ~v29;
      while (1)
      {
        v7 = *(v32 + 8 * v4++);
        v8 = sub_27520C268();
        v10 = v8 & v6;
        v11 = (v8 & v6) >> 6;
        v12 = 1 << (v8 & v6);
        if ((v12 & *(v5 + 8 * v11)) != 0)
        {
          break;
        }

LABEL_4:
        if (v4 == v30)
        {
          return v2;
        }
      }

      while (*(*(v2 + 48) + 8 * v10) != v7)
      {
        v10 = (v10 + 1) & v6;
        v11 = v10 >> 6;
        v12 = 1 << v10;
        if (((1 << v10) & *(v5 + 8 * (v10 >> 6))) == 0)
        {
          goto LABEL_4;
        }
      }

      v33[1] = v4;
      v13 = (63 - v29) >> 6;
      v14 = 8 * v13;
      if (v13 > 0x80)
      {
        goto LABEL_29;
      }

      for (i = v9; ; i = )
      {
        v30 = v13;
        v31 = &v29;
        MEMORY[0x28223BE20](i);
        v10 = &v29 - v16;
        memcpy(&v29 - v16, (v2 + 56), v14);
        v17 = *(v2 + 16);
        *(v10 + 8 * v11) &= ~v12;
        v14 = v17 - 1;
        v18 = *(a1 + 16);
        if (v4 == v18)
        {
          break;
        }

        v11 = *(v2 + 40);
        v13 = ~(-1 << *(v2 + 32));
        while (v4 < v18)
        {
          v12 = *(v32 + 8 * v4);
          v20 = sub_27520C268();
          v21 = v20 & v13;
          v22 = (v20 & v13) >> 6;
          v23 = 1 << (v20 & v13);
          if ((v23 & *(v5 + 8 * v22)) != 0)
          {
            while (*(*(v2 + 48) + 8 * v21) != v12)
            {
              v21 = (v21 + 1) & v13;
              v22 = v21 >> 6;
              v23 = 1 << v21;
              if (((1 << v21) & *(v5 + 8 * (v21 >> 6))) == 0)
              {
                goto LABEL_17;
              }
            }

            v24 = *(v10 + 8 * v22);
            *(v10 + 8 * v22) = v24 & ~v23;
            if ((v24 & v23) != 0)
            {
              if (__OFSUB__(v14--, 1))
              {
                goto LABEL_28;
              }

              if (!v14)
              {

                v2 = MEMORY[0x277D84FA0];
                goto LABEL_14;
              }
            }
          }

LABEL_17:
          ++v4;
          v18 = *(a1 + 16);
          if (v4 == v18)
          {
            goto LABEL_13;
          }
        }

        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:

        v26;
        if (!swift_stdlib_isStackAllocationSafe())
        {
          v27 = swift_slowAlloc();
          memcpy(v27, (v2 + 56), v14);
          v28 = sub_2751EE738(v27, v13, v2, v10, v33);

          MEMORY[0x277C6DCC0](v27, -1, -1);

          return v28;
        }
      }

LABEL_13:
      v2 = sub_2751EE8B8(v10, v30, v14, v2);
LABEL_14:
    }
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_2751EE738(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = *a5;
  v11 = a5[1];
  v12 = *(*a5 + 16);
  if (v11 == v12)
  {
LABEL_2:

    return sub_2751EE8B8(v7, a2, v9, a3);
  }

  else
  {
    v14 = a3 + 56;
    while ((v11 & 0x8000000000000000) == 0)
    {
      if (v11 >= v12)
      {
        goto LABEL_17;
      }

      v15 = *(v10 + 8 * v11 + 32);
      a5[1] = v11 + 1;
      result = sub_27520C268();
      v16 = -1 << *(a3 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      v19 = 1 << v17;
      if (((1 << v17) & *(v14 + 8 * (v17 >> 6))) != 0)
      {
        v20 = *(a3 + 48);
        if (*(v20 + 8 * v17) == v15)
        {
LABEL_12:
          v22 = v7[v18];
          v7[v18] = v22 & ~v19;
          if ((v22 & v19) != 0)
          {
            if (__OFSUB__(v9--, 1))
            {
              goto LABEL_18;
            }

            if (!v9)
            {
              return MEMORY[0x277D84FA0];
            }
          }
        }

        else
        {
          v21 = ~v16;
          while (1)
          {
            v17 = (v17 + 1) & v21;
            v18 = v17 >> 6;
            v19 = 1 << v17;
            if (((1 << v17) & *(v14 + 8 * (v17 >> 6))) == 0)
            {
              break;
            }

            if (*(v20 + 8 * v17) == v15)
            {
              goto LABEL_12;
            }
          }
        }
      }

      v10 = *a5;
      v11 = a5[1];
      v12 = *(*a5 + 16);
      if (v11 == v12)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  return result;
}

uint64_t sub_2751EE8B8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD528, &unk_27520D800);
  result = sub_27520BF48();
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
    result = sub_27520C268();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
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
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
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
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_2751EEAA4(uint64_t a1)
{
  v2 = sub_27520C268();

  return sub_2751EEB68(a1, v2);
}

unint64_t sub_2751EEAE8(uint64_t a1, uint64_t a2)
{
  sub_27520C278();
  MEMORY[0x277C6D7A0](a1);
  MEMORY[0x277C6D7A0](a2);
  v4 = sub_27520C298();

  return sub_2751EEBD4(a1, a2, v4);
}

unint64_t sub_2751EEB68(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2751EEBD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v10 = *v8;
      v9 = v8[1];
      if (v10 == a1 && v9 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_2751EEC4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD850, &qword_27520E0B8);
  result = sub_27520C058();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v4 & 1) == 0)
      {
        v7;
      }

      result = sub_27520C268();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

uint64_t sub_2751EEEBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD860, &qword_27520E0C8);
  result = sub_27520C058();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v4;
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
      v23 = *v21;
      v22 = v21[1];
      v24 = *(*(v5 + 56) + 4 * v20);
      sub_27520C278();
      MEMORY[0x277C6D7A0](v23);
      MEMORY[0x277C6D7A0](v22);
      result = sub_27520C298();
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

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v22;
      *(*(v7 + 56) + 4 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_2751EF158(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_27520BF18() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_27520C268();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_2751EF2C8(uint64_t a1, uint64_t a2, char a3, float a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_2751EEAE8(a1, a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 >= v16 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v18 >= v16 && (a3 & 1) == 0)
  {
    v19 = result;
    sub_2751EF564();
    result = v19;
    goto LABEL_8;
  }

  sub_2751EEEBC(v16, a3 & 1);
  result = sub_2751EEAE8(a1, a2);
  if ((v17 & 1) == (v20 & 1))
  {
LABEL_8:
    v21 = *v5;
    if (v17)
    {
      *(v21[7] + 4 * result) = a4;
      return result;
    }

    v21[(result >> 6) + 8] |= 1 << result;
    v22 = (v21[6] + 16 * result);
    *v22 = a1;
    v22[1] = a2;
    *(v21[7] + 4 * result) = a4;
    v23 = v21[2];
    v15 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v15)
    {
      v21[2] = v24;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD858, &qword_27520E0C0);
  result = sub_27520C258();
  __break(1u);
  return result;
}

void *sub_2751EF408()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD850, &qword_27520E0B8);
  v2 = *v0;
  v3 = sub_27520C048();
  v5 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v2 || result >= v2 + 64 + 8 * v7)
    {
      result = memmove(result, (v2 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v2 + 16);
    v10 = 1 << *(v2 + 32);
    v11 = *(v2 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v2 + 56) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = *(*(v2 + 48) + 8 * v18);
        *(*(v5 + 56) + 8 * v18) = v19;
        result = v4;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v2 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v5;
  }

  return result;
}

void *sub_2751EF564()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD860, &qword_27520E0C8);
  v2 = *v0;
  v3 = sub_27520C048();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 4 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 4 * v14);
      *(*(v4 + 48) + 16 * v14) = *(*(v2 + 48) + 16 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void (*sub_2751EF6B4(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_2751EFA20(v5);
  v5[9] = sub_2751EF7B8(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_2751EF758;
}

void sub_2751EF758(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_2751EF7B8(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1, char a2, __n128 a3)
{
  v4 = v3;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = sub_2751EEAA4(a2);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_2751EF408();
      v11 = v19;
      goto LABEL_11;
    }

    sub_2751EEC4C(v16, a3 & 1);
    v11 = sub_2751EEAA4(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_27520C258();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *v9 = v21;
  return sub_2751EF900;
}

void sub_2751EF900(uint64_t **a1, char a2, __n128 a3)
{
  v3 = *a1;
  v4 = **a1;
  LOBYTE(v5) = *(v3 + 32);
  if (a2)
  {
    if (!v4)
    {
      goto LABEL_10;
    }

    v6 = v3[3];
    v7 = *v3[2];
    if (v3[4])
    {
      goto LABEL_9;
    }

    v8 = v3[1];
    v7[(v6 >> 6) + 8] |= 1 << v6;
    *(v7[6] + 8 * v6) = v8;
    *(v7[7] + 8 * v6) = v4;
    v9 = v7[2];
    v10 = __OFADD__(v9, 1);
    v5 = v9 + 1;
    if (!v10)
    {
LABEL_13:
      v7[2] = v5;
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v4)
  {
LABEL_10:
    if (v5)
    {
      sub_2751EF158(v3[3], *v3[2]);
    }

    goto LABEL_14;
  }

  v6 = v3[3];
  v7 = *v3[2];
  if ((v5 & 1) == 0)
  {
    v11 = v3[1];
    v7[(v6 >> 6) + 8] |= 1 << v6;
    *(v7[6] + 8 * v6) = v11;
    *(v7[7] + 8 * v6) = v4;
    v12 = v7[2];
    v10 = __OFADD__(v12, 1);
    v5 = v12 + 1;
    if (v10)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v7[7] + 8 * v6) = v4;
LABEL_14:
  a3;

  free(v3);
}

uint64_t (*sub_2751EFA20(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_2751EFA48;
}

void *sub_2751EFA54(void *result, char *a2, void **a3, void *a4)
{
  v4 = result[2];
  v5 = *result - v4;
  if (__OFSUB__(*result, v4))
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v8 = result[1];
  if (v5 < v8)
  {
    v10 = v8 - v5;
    if (__OFSUB__(v8, v5))
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v11 = *result - v4;
    v9 = a2;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = result[1];
  }

  v15 = v5 >= v8;
  if (v11 < 0)
  {
    goto LABEL_24;
  }

  if (a2 && v11)
  {
    result = memcpy(*a3, &a2[16 * v4], 16 * v11);
  }

  v12 = *a4 + v11;
  if (__OFADD__(*a4, v11))
  {
    goto LABEL_25;
  }

  *a4 = v12;
  if (v15)
  {
    return result;
  }

  if (__OFADD__(v11, v10))
  {
    goto LABEL_27;
  }

  if (v11 + v10 < v11)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    __break(1u);
    return result;
  }

  if (*a3)
  {
    result = *a3 + 16 * v11;
  }

  else
  {
    result = 0;
  }

  if (v9)
  {
    if (v10)
    {
      result = memcpy(result, v9, 16 * v10);
      v12 = *a4;
    }
  }

  v13 = __OFADD__(v12, v10);
  v14 = v12 + v10;
  if (v13)
  {
    goto LABEL_29;
  }

  *a4 = v14;
  return result;
}

void *sub_2751EFB88(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD850, &qword_27520E0B8);
  v3 = sub_27520C068();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_2751EEAA4(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v7;
    return v3;
  }

  v9 = v6;
  result = v5;
  v11 = (a1 + 7);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    *(v3[7] + 8 * v9) = result;
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      break;
    }

    v3[2] = v14;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v15 = v11 + 2;
    v4 = *(v11 - 1);
    v16 = *v11;
    v7;
    v9 = sub_2751EEAA4(v4);
    v11 = v15;
    result = v16;
    if (v17)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2751EFC90(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277C6D350](v2, MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_2751EDDAC(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t *sub_2751EFD04(uint64_t *result, uint64_t a2, uint64_t (*a3)(uint64_t *, uint64_t *), uint64_t a4)
{
  v5 = result[2];
  v6 = *result;
  v7 = result[1] + v5;
  if (*result >= v7)
  {
    if (v7 < v5)
    {
      __break(1u);
    }

    else if (!__OFSUB__(v7, v5))
    {
      v8[0] = a2 + 16 * v5;
      v8[1] = v7 - v5;
      result = sub_2751ED4EC(v8, a3, a4);
      if (v4)
      {
        return result;
      }

      return (v6 < v7);
    }

    __break(1u);
    return result;
  }

  return (v6 < v7);
}

uint64_t sub_2751EFD8C()
{
  v0 = sub_27520BAB8();
  __swift_allocate_value_buffer(v0, qword_2809B38E8);
  __swift_project_value_buffer(v0, qword_2809B38E8);
  return sub_27520BAA8();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_2751EFE98(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2751E3B54(v2);
  }

  v3 = *(v2 + 2);
  v4 = v2 + 32;
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_27520C1D8();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v4;
        do
        {
          v13 = *(v12 + 6);
          if (v13 >= *(v12 + 2))
          {
            break;
          }

          v14 = *(v12 + 2);
          *(v12 + 1) = *v12;
          *v12 = v14;
          *(v12 + 2) = v13;
          v12 -= 16;
        }

        while (!__CFADD__(v11++, 1));
        v4 += 16;
        --v9;
      }
    }
  }

  else
  {
    v6 = result;
    v7 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD230, &unk_27520E0A0);
      v8 = sub_27520BCF8();
      *(v8 + 16) = v7;
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

    v16[0] = v8 + 32;
    v16[1] = v7;
    sub_2751ED610(v16, v17, v18, v6);
    *(v8 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t VPTree.Node.left.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t VPTree.Node.right.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t VPTree.Node.storedIndices.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_2751F011C()
{
  v1 = *v0;
  v2 = 0x646E49746E696F70;
  v3 = 1952867692;
  v4 = 0x7468676972;
  if (v1 != 3)
  {
    v4 = 0x6E496465726F7473;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C6F687365726874;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2751F01C0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2751F3A9C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2751F01E8(uint64_t a1)
{
  v2 = sub_2751F0508();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2751F0224(uint64_t a1)
{
  v2 = sub_2751F0508();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VPTree.Node.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD868, &unk_27520E100);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - v6;
  v17 = *(v1 + 16);
  v16 = *(v1 + 24);
  v15 = *(v1 + 32);
  v14[3] = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = a1[3];
  v10 = a1;
  v12 = v11;
  __swift_project_boxed_opaque_existential_1(v10, v9);
  sub_2751F0508();
  sub_27520C2B8();
  v23 = 0;
  sub_27520C198();
  if (!v2)
  {
    v22 = 1;
    sub_27520C188();
    v21 = 2;
    sub_27520C148();
    v20 = 3;
    sub_27520C148();
    v19 = v8;
    v18 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD350, &qword_27520CBA0);
    sub_2751D7754(&qword_2809AD358, MEMORY[0x277D83B90], MEMORY[0x277D83948]);
    sub_27520C158();
  }

  return (*(v5 + 8))(v7, v12);
}

unint64_t sub_2751F0508()
{
  result = qword_2809AD870;
  if (!qword_2809AD870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD870);
  }

  return result;
}

uint64_t VPTree.Node.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD878, &unk_27520E110);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2751F0508();
  sub_27520C2A8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = 0;
  v9 = sub_27520C0F8();
  v28 = 1;
  sub_27520C0E8();
  v11 = v10;
  v27 = 2;
  v12 = sub_27520C0A8();
  v23 = v13;
  v14 = v12;
  v26 = 3;
  v15 = sub_27520C0A8();
  v22 = v16;
  v21 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD350, &qword_27520CBA0);
  v24 = 4;
  sub_2751D7754(&qword_2809AD368, MEMORY[0x277D83BB8], MEMORY[0x277D83978]);
  sub_27520C0B8();
  v17.n128_f64[0] = (*(v6 + 8))(v8, v5);
  v18 = v25;
  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v14;
  *(a2 + 24) = v23 & 1;
  *(a2 + 32) = v21;
  *(a2 + 40) = v22 & 1;
  *(a2 + 48) = v18;
  v17;
  __swift_destroy_boxed_opaque_existential_1(a1);
}

float sub_2751F08E0(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    __break(1u);
  }

  __C = NAN;
  vDSP_distancesq((a1 + 32), 1, (a2 + 32), 1, &__C, v2);
  return sqrtf(__C);
}

uint64_t sub_2751F0964(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7365646F6ELL;
  }

  else
  {
    v3 = 0x63697274656DLL;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x7365646F6ELL;
  }

  else
  {
    v5 = 0x63697274656DLL;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_27520C218();
  }

  return v8 & 1;
}

uint64_t sub_2751F0A04()
{
  sub_27520C278();
  sub_27520BBD8();

  return sub_27520C298();
}

uint64_t sub_2751F0A80(uint64_t a1)
{
  sub_27520BBD8();
}

uint64_t sub_2751F0AE8(uint64_t a1)
{
  sub_27520C278();
  sub_27520BBD8();

  return sub_27520C298();
}

uint64_t sub_2751F0B60@<X0>(char *a2@<X8>)
{
  v3 = sub_27520C088();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_2751F0BC0(uint64_t *a1@<X8>)
{
  v2 = 0x63697274656DLL;
  if (*v1)
  {
    v2 = 0x7365646F6ELL;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2751F0BF8()
{
  if (*v0)
  {
    return 0x7365646F6ELL;
  }

  else
  {
    return 0x63697274656DLL;
  }
}

uint64_t sub_2751F0C2C@<X0>(char *a3@<X8>)
{
  v4 = sub_27520C088();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_2751F0C90(uint64_t a1)
{
  v2 = sub_2751F4810();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2751F0CCC(uint64_t a1)
{
  v2 = sub_2751F4810();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VPTree.__allocating_init(points:metric:maxNodePoints:)(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  VPTree.init(points:metric:maxNodePoints:)(a1, a2, a3);
  return v6;
}

uint64_t VPTree.init(points:metric:maxNodePoints:)(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84F90];
  *(v3 + 24) = MEMORY[0x277D84F90];
  v5 = *a2;
  *(v3 + 32) = v4;
  *(v3 + 16) = v5;
  *(v3 + 40) = off_2883F9DE0[v5];
  *(v3 + 48) = 0;
  if (*(a1 + 16))
  {
    swift_beginAccess();
    *(v3 + 24) = a1;
    v8;
    v9 = *(v3 + 40);
    v10 = *(v3 + 48);

    v11 = sub_2751F3C60(a1, v9, v10, a3);

    swift_beginAccess();
    *(v3 + 32) = v11;
  }

  return v3;
}

char *VPTree.search(query:k:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  if (!*(v2[3] + 16))
  {
    return MEMORY[0x277D84F90];
  }

  if (__OFADD__(a2, 1))
  {
LABEL_314:
    __break(1u);
LABEL_315:
    __break(1u);
LABEL_316:
    __break(1u);
    goto LABEL_317;
  }

  v6 = sub_2751D0E64(0, (a2 + 1) & ~((a2 + 1) >> 63), 0, MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD218, &qword_27520CA30);
  v7 = swift_allocObject();
  v8 = _swift_stdlib_malloc_size(v7);
  v9 = v8 - 40;
  if (v8 < 40)
  {
    v9 = v8 - 33;
  }

  v7[2] = v9 >> 3;
  v7[3] = 0;
  v7[4] = 0;
  sub_2751D3B90(v7 + 2, v7 + 5, 1uLL, &unk_2883F8C58);
  v254 = v7;
  if (!v7[3])
  {
LABEL_280:

    return v6;
  }

  swift_beginAccess();
  v10 = v7[3] == 0;
  v11 = INFINITY;
  v235 = a1;
  v236 = v3;
  v240 = a2;
  while (1)
  {
    if (v10)
    {
      goto LABEL_305;
    }

    v12 = v254;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2751D2604();
      v12 = v254;
    }

    v14 = v12[4];
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_306;
    }

    v16 = v12[v14 + 5];
    v17 = v12[3];
    if (v15 >= v12[2])
    {
      v15 = 0;
    }

    v12[4] = v15;
    if (__OFSUB__(v17, 1))
    {
      goto LABEL_307;
    }

    v12[3] = v17 - 1;
    if ((v16 & 0x8000000000000000) != 0)
    {
      goto LABEL_308;
    }

    v18 = v3[4];
    if (v16 >= *(v18 + 16))
    {
      goto LABEL_309;
    }

    v19 = v18 + 56 * v16;
    v20 = *(v19 + 32);
    if ((v20 & 0x8000000000000000) != 0)
    {
      goto LABEL_310;
    }

    v21 = v3[3];
    if (v20 >= *(v21 + 16))
    {
      goto LABEL_311;
    }

    v239 = v12;
    v22 = v6;
    v23 = *(v19 + 40);
    v234 = *(v19 + 56);
    v231 = *(v19 + 64);
    v232 = *(v19 + 48);
    v233 = *(v19 + 72);
    v24 = *(v21 + 8 * v20 + 32);
    v25 = v3[5];
    v251 = *(v19 + 80);
    v13;
    v26;

    v27 = v25(a1, v24);

    if (v27 < v11)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_2751D0E64(0, *(v22 + 2) + 1, 1, v22);
      }

      v29 = *(v22 + 2);
      v28 = *(v22 + 3);
      if (v29 >= v28 >> 1)
      {
        v22 = sub_2751D0E64((v28 > 1), v29 + 1, 1, v22);
      }

      *(v22 + 2) = v29 + 1;
      v30 = &v22[16 * v29 + 32];
      *v30 = v20;
      *(v30 + 8) = v27;
      v253[0] = (v22 + 32);
      v253[1] = v29 + 1;
      sub_2751F2DB0(v253);
      v31 = *(v22 + 2);
      if (v31 > v240)
      {
        break;
      }
    }

    v6 = v22;
    v39 = v251;
    if (!v251)
    {
LABEL_32:
      if (v27 >= v23)
      {
        goto LABEL_223;
      }

      goto LABEL_33;
    }

LABEL_45:
    v243 = v6;
    v50 = *(v39 + 16);
    if (v50)
    {
      v253[0] = MEMORY[0x277D84F90];
      v38;
      sub_2751E1264(0, v50, 0);
      v51 = v253[0];
      v52 = 32;
      while (1)
      {
        v53 = *(v39 + v52);
        if ((v53 & 0x8000000000000000) != 0)
        {
          goto LABEL_296;
        }

        v54 = v3[3];
        if (v53 >= *(v54 + 16))
        {
          break;
        }

        v55 = v3[5];
        v56 = *(v54 + 8 * v53 + 32);

        v57;
        v58 = v55(a1, v56);

        v253[0] = v51;
        v60 = *(v51 + 16);
        v59 = *(v51 + 24);
        if (v60 >= v59 >> 1)
        {
          sub_2751E1264((v59 > 1), v60 + 1, 1);
          v51 = v253[0];
        }

        *(v51 + 16) = v60 + 1;
        v61 = v51 + 16 * v60;
        *(v61 + 32) = v53;
        *(v61 + 40) = v58;
        v52 += 8;
        --v50;
        v39 = v251;
        if (!v50)
        {

          goto LABEL_54;
        }
      }

LABEL_297:
      __break(1u);
LABEL_298:
      __break(1u);
LABEL_299:
      __break(1u);
LABEL_300:
      __break(1u);
LABEL_301:
      __break(1u);
LABEL_302:
      __break(1u);
LABEL_303:
      __break(1u);
LABEL_304:
      __break(1u);
LABEL_305:
      __break(1u);
LABEL_306:
      __break(1u);
LABEL_307:
      __break(1u);
LABEL_308:
      __break(1u);
LABEL_309:
      __break(1u);
LABEL_310:
      __break(1u);
LABEL_311:
      __break(1u);
LABEL_312:
      __break(1u);
LABEL_313:
      __break(1u);
      goto LABEL_314;
    }

    v51 = MEMORY[0x277D84F90];
LABEL_54:
    v6 = v243;
    v237 = *(v51 + 16);
    if (!v237)
    {

      if (v27 >= v23)
      {
        goto LABEL_223;
      }

      goto LABEL_33;
    }

    v62 = 0;
    v238 = v51 + 32;
    do
    {
      v242 = v62;
      v64 = v238 + 16 * v62;
      v65 = *v64;
      v66 = *(v64 + 8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_2751D0E64(0, *(v6 + 2) + 1, 1, v6);
      }

      v68 = *(v6 + 2);
      v67 = *(v6 + 3);
      v69 = v68 + 1;
      if (v68 >= v67 >> 1)
      {
        v6 = sub_2751D0E64((v67 > 1), v68 + 1, 1, v6);
      }

      *(v6 + 2) = v69;
      v70 = v6 + 32;
      v71 = &v6[16 * v68 + 32];
      *v71 = v65;
      *(v71 + 8) = v66;
      if (v68 < 0x3F)
      {
        if (!v68)
        {
          goto LABEL_216;
        }

        goto LABEL_68;
      }

      v72 = 58 - __clz(v69);
      v73 = -1 << v72;
      v74 = v69 >> v72;
      if ((v69 & ~v73) != 0)
      {
        ++v74;
      }

      if (v74 <= v68)
      {
        v245 = v74;
        v82 = v69 >> 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD230, &unk_27520E0A0);
        v83 = sub_27520BCF8();
        v84 = 0;
        *(v83 + 16) = v82;
        v241 = v83;
        __dst = (v83 + 32);
        v248 = v6 + 40;
        v85 = MEMORY[0x277D84F90];
        while (2)
        {
          v86 = v84++;
          if (v84 > v68)
          {
            goto LABEL_90;
          }

          v87 = *&v248[16 * v84];
          v88 = 16 * v86;
          v89 = *&v248[16 * v86];
          v90 = &v6[16 * v86 + 72];
          do
          {
            if (v68 == v84)
            {
              v84 = v68 + 1;
              if (v87 >= v89)
              {
                goto LABEL_90;
              }

              goto LABEL_84;
            }

            ++v84;
            v91 = *v90 >= *(v90 - 4);
            v90 += 4;
          }

          while ((((v87 < v89) ^ v91) & 1) != 0);
          if (v87 >= v89)
          {
            goto LABEL_90;
          }

LABEL_84:
          if (v84 < v86)
          {
            goto LABEL_302;
          }

          if (v86 < v84)
          {
            v92 = 16 * v84;
            v93 = v84;
            v94 = v86;
            do
            {
              if (v94 != --v93)
              {
                v95 = &v6[v92];
                v96 = *&v6[v88 + 32];
                v97 = *&v6[v88 + 40];
                *&v6[v88 + 32] = *&v6[v92 + 16];
                *(v95 + 2) = v96;
                *(v95 + 6) = v97;
              }

              ++v94;
              v92 -= 16;
              v88 += 16;
            }

            while (v94 < v93);
          }

LABEL_90:
          if (v84 <= v68)
          {
            if (__OFSUB__(v84, v86))
            {
              goto LABEL_299;
            }

            if (v84 - v86 < v245)
            {
              v98 = v86 + v245;
              if (__OFADD__(v86, v245))
              {
                goto LABEL_303;
              }

              if (v98 >= (v68 + 1))
              {
                v98 = v68 + 1;
              }

              if (v98 < v86)
              {
                goto LABEL_304;
              }

              if (v84 != v98)
              {
                v99 = v86 - v84;
                v100 = &v6[16 * v84 + 24];
                do
                {
                  v101 = v100;
                  v102 = v99;
                  do
                  {
                    v103 = *(v101 + 16);
                    if (v103 >= *v101)
                    {
                      break;
                    }

                    v104 = *(v101 + 8);
                    *(v101 + 8) = *(v101 - 8);
                    *(v101 - 8) = v104;
                    *v101 = v103;
                    v101 -= 16;
                    v166 = __CFADD__(v102++, 1);
                  }

                  while (!v166);
                  ++v84;
                  --v99;
                  v100 += 16;
                }

                while (v84 != v98);
                v84 = v98;
              }
            }
          }

          if (v84 < v86)
          {
            goto LABEL_298;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v85 = sub_2751D08B8(0, *(v85 + 2) + 1, 1, v85);
          }

          v106 = *(v85 + 2);
          v105 = *(v85 + 3);
          v107 = v106 + 1;
          if (v106 >= v105 >> 1)
          {
            v85 = sub_2751D08B8((v105 > 1), v106 + 1, 1, v85);
          }

          *(v85 + 2) = v107;
          v108 = &v85[16 * v106];
          *(v108 + 4) = v86;
          *(v108 + 5) = v84;
          if (v106)
          {
            while (2)
            {
              v109 = v107 - 1;
              if (v107 >= 4)
              {
                v114 = &v85[16 * v107 + 32];
                v115 = *(v114 - 64);
                v116 = *(v114 - 56);
                v48 = __OFSUB__(v116, v115);
                v117 = v116 - v115;
                if (v48)
                {
                  goto LABEL_285;
                }

                v119 = *(v114 - 48);
                v118 = *(v114 - 40);
                v120 = __OFSUB__(v118, v119);
                v112 = v118 - v119;
                v113 = v120;
                if (v120)
                {
                  goto LABEL_286;
                }

                v121 = &v85[16 * v107];
                v123 = *v121;
                v122 = *(v121 + 1);
                v48 = __OFSUB__(v122, v123);
                v124 = v122 - v123;
                if (v48)
                {
                  goto LABEL_288;
                }

                v48 = __OFADD__(v112, v124);
                v125 = v112 + v124;
                if (v48)
                {
                  goto LABEL_291;
                }

                if (v125 >= v117)
                {
                  v143 = &v85[16 * v109 + 32];
                  v145 = *v143;
                  v144 = *(v143 + 1);
                  v48 = __OFSUB__(v144, v145);
                  v146 = v144 - v145;
                  if (v48)
                  {
                    goto LABEL_295;
                  }

                  if (v112 < v146)
                  {
                    v109 = v107 - 2;
                  }
                }

                else
                {
LABEL_125:
                  if (v113)
                  {
                    goto LABEL_287;
                  }

                  v126 = &v85[16 * v107];
                  v128 = *v126;
                  v127 = *(v126 + 1);
                  v129 = __OFSUB__(v127, v128);
                  v130 = v127 - v128;
                  v131 = v129;
                  if (v129)
                  {
                    goto LABEL_290;
                  }

                  v132 = &v85[16 * v109 + 32];
                  v134 = *v132;
                  v133 = *(v132 + 1);
                  v48 = __OFSUB__(v133, v134);
                  v135 = v133 - v134;
                  if (v48)
                  {
                    goto LABEL_293;
                  }

                  if (__OFADD__(v130, v135))
                  {
                    goto LABEL_294;
                  }

                  if (v130 + v135 < v112)
                  {
                    goto LABEL_139;
                  }

                  if (v112 < v135)
                  {
                    v109 = v107 - 2;
                  }
                }
              }

              else
              {
                if (v107 == 3)
                {
                  v110 = *(v85 + 4);
                  v111 = *(v85 + 5);
                  v48 = __OFSUB__(v111, v110);
                  v112 = v111 - v110;
                  v113 = v48;
                  goto LABEL_125;
                }

                v136 = &v85[16 * v107];
                v138 = *v136;
                v137 = *(v136 + 1);
                v48 = __OFSUB__(v137, v138);
                v130 = v137 - v138;
                v131 = v48;
LABEL_139:
                if (v131)
                {
                  goto LABEL_289;
                }

                v139 = &v85[16 * v109];
                v141 = *(v139 + 4);
                v140 = *(v139 + 5);
                v48 = __OFSUB__(v140, v141);
                v142 = v140 - v141;
                if (v48)
                {
                  goto LABEL_292;
                }

                if (v142 < v130)
                {
                  break;
                }
              }

              v147 = v109 - 1;
              if (v109 - 1 >= v107)
              {
                __break(1u);
LABEL_283:
                __break(1u);
LABEL_284:
                __break(1u);
LABEL_285:
                __break(1u);
LABEL_286:
                __break(1u);
LABEL_287:
                __break(1u);
LABEL_288:
                __break(1u);
LABEL_289:
                __break(1u);
LABEL_290:
                __break(1u);
LABEL_291:
                __break(1u);
LABEL_292:
                __break(1u);
LABEL_293:
                __break(1u);
LABEL_294:
                __break(1u);
LABEL_295:
                __break(1u);
LABEL_296:
                __break(1u);
                goto LABEL_297;
              }

              v148 = *&v85[16 * v147 + 32];
              v149 = &v85[16 * v109 + 32];
              v150 = *(v149 + 1);
              sub_2751EDBB0(&v70[16 * v148], &v70[16 * *v149], &v70[16 * v150], __dst);
              if (v150 < v148)
              {
                goto LABEL_283;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v85 = sub_2751F3A50(v85);
              }

              if (v147 >= *(v85 + 2))
              {
                goto LABEL_284;
              }

              v151 = &v85[16 * v147];
              *(v151 + 4) = v148;
              *(v151 + 5) = v150;
              v253[0] = v85;
              sub_2751F39C4(v109);
              v85 = v253[0];
              v107 = *(v253[0] + 16);
              if (v107 <= 1)
              {
                break;
              }

              continue;
            }
          }

          if (v84 <= v68)
          {
            continue;
          }

          break;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v85 = sub_2751F3A50(v85);
        }

        v152 = v241;
        v253[0] = v85;
        v153 = *(v85 + 2);
        if (v153 < 2)
        {
LABEL_215:

          *(v152 + 16) = 0;

          v12 = v239;
          goto LABEL_216;
        }

        v244 = v6;
        while (2)
        {
          v246 = v153 - 1;
          v247 = v153;
          v154 = *&v85[16 * v153];
          v155 = &v85[16 * v153 - 16];
          v157 = *(v155 + 4);
          v156 = *(v155 + 5);
          v249 = v156;
          v250 = v154;
          v158 = 16 * v154;
          v159 = &v70[v158];
          v160 = 16 * v157;
          v161 = &v70[16 * v157];
          v162 = 16 * v156;
          v163 = &v70[16 * v156];
          v164 = 16 * v157 - v158;
          v165 = 16 * v156 - 16 * v157;
          if (v164 >= v165)
          {
            if (__dst != v161 || __dst >= v163)
            {
              v170 = v158;
              memmove(__dst, &v70[16 * v157], 16 * v156 - 16 * v157);
              v158 = v170;
            }

            v171 = v165 + 32;
            v152 = v241;
            v167 = v241 + v165 + 32;
            v172 = v165 < 1 || v160 <= v158;
            v6 = v244;
            if (!v172)
            {
              v176 = v249;
              v175 = v250;
              while (1)
              {
                if (*(v171 + v241 - 8) < *(v161 - 2))
                {
                  v178 = v163;
                  v163 -= 4;
                  goto LABEL_201;
                }

                v179 = 0;
                v180 = (v241 + v171);
                do
                {
                  v181 = &v180[v179];
                  v182 = &v163[v179 - 4];
                  if (v163 != v180 || v182 >= v181)
                  {
                    *v182 = *(v181 - 16);
                  }

                  if ((v171 + v179 * 4) <= 0x30)
                  {
                    v167 = v241 + v171 + v179 * 4 - 16;
                    goto LABEL_206;
                  }

                  v183 = v180[v179 - 6];
                  v179 -= 4;
                }

                while (v183 >= *(v161 - 2));
                v171 += v179 * 4;
                v167 = v171 + v241;
                v178 = &v163[v179];
                v163 = v178 - 4;
LABEL_201:
                v184 = v161 - 4;
                if (v178 != v161)
                {
                  *v163 = *v184;
                }

                v161 -= 4;
                if (v159 >= v184)
                {
                  v161 = v184;
LABEL_206:
                  v174 = __dst;
                  goto LABEL_207;
                }
              }
            }

            v174 = __dst;
          }

          else
          {
            v166 = __dst != v159 || __dst >= v161;
            if (v166)
            {
              memmove(__dst, &v70[v158], 16 * v157 - v158);
            }

            v167 = __dst + v164;
            if (v164 >= 1 && v162 > v160)
            {
              v173 = __dst;
              v174 = __dst;
              v6 = v244;
              v152 = v241;
              v176 = v249;
              v175 = v250;
              while (v161[2] < v173[2])
              {
                v177 = v161;
                v77 = v159 == v161;
                v161 += 4;
                if (!v77)
                {
                  goto LABEL_188;
                }

LABEL_189:
                v159 += 4;
                if (v173 >= v167 || v161 >= v163)
                {
                  v161 = v159;
                  goto LABEL_207;
                }
              }

              v174 = v173 + 4;
              v177 = v173;
              v77 = v159 == v173;
              v173 += 4;
              if (v77)
              {
                goto LABEL_189;
              }

LABEL_188:
              *v159 = *v177;
              goto LABEL_189;
            }

            v161 = v159;
            v174 = __dst;
            v6 = v244;
            v152 = v241;
          }

          v176 = v249;
          v175 = v250;
LABEL_207:
          v185 = (v167 - v174 + ((v167 - v174) < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0;
          if (v161 != v174 || v161 >= (v174 + v185))
          {
            memmove(v161, v174, v185);
          }

          if (v176 < v175)
          {
            goto LABEL_300;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v85 = sub_2751F3A50(v85);
          }

          if ((v247 - 2) >= *(v85 + 2))
          {
            goto LABEL_301;
          }

          v186 = &v85[16 * v247];
          *v186 = v175;
          *(v186 + 1) = v176;
          v253[0] = v85;
          sub_2751F39C4(v246);
          v85 = v253[0];
          v153 = *(v253[0] + 16);
          if (v153 <= 1)
          {
            goto LABEL_215;
          }

          continue;
        }
      }

LABEL_68:
      v75 = -1;
      v76 = 1;
      do
      {
        v78 = v75;
        v79 = v70;
        do
        {
          v80 = *(v79 + 6);
          if (v80 >= *(v79 + 2))
          {
            break;
          }

          v81 = *(v79 + 2);
          *(v79 + 1) = *v79;
          *v79 = v81;
          *(v79 + 2) = v80;
          v79 -= 16;
          v166 = __CFADD__(v78++, 1);
        }

        while (!v166);
        v70 += 16;
        --v75;
        v77 = v76++ == v68;
      }

      while (!v77);
LABEL_216:
      v187 = *(v6 + 2);
      if (v187 <= v240)
      {
        a1 = v235;
        v3 = v236;
        v63 = v242;
      }

      else
      {
        a1 = v235;
        v3 = v236;
        if (!v187)
        {
          goto LABEL_312;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_2751E3B54(v6);
        }

        v63 = v242;
        v188 = *(v6 + 2);
        if (!v188)
        {
          goto LABEL_313;
        }

        *(v6 + 2) = v188 - 1;
      }

      v62 = v63 + 1;
    }

    while (v62 != v237);

    if (v27 >= v23)
    {
LABEL_223:
      if (!(((v23 - v11) > v27) | v233 & 1))
      {
        v189 = v6;
        v190 = v12[3];
        v191 = v190 + 1;
        if (__OFADD__(v190, 1))
        {
          goto LABEL_321;
        }

        v12 = v254;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (v12[2] < v191 || (isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2751D2B08(isUniquelyReferenced_nonNull_native, v191, 0);
          v12 = v254;
        }

        v194 = v12[3];
        v193 = v12[4];
        v48 = __OFADD__(v193, v194);
        v195 = v193 + v194;
        if (v48)
        {
          goto LABEL_323;
        }

        v6 = v189;
        if (v194 < 0)
        {
          if (v195 < 0)
          {
            v212 = v12[2];
            v48 = __OFADD__(v195, v212);
            v195 += v212;
            if (v48)
            {
              goto LABEL_336;
            }
          }
        }

        else
        {
          v196 = v12[2];
          v197 = __OFSUB__(v195, v196);
          v198 = v195 - v196;
          if (v198 < 0 == v197)
          {
            v195 = v198;
            if (v197)
            {
              goto LABEL_332;
            }
          }
        }

        v12[v195 + 5] = v231;
        v213 = v12[3];
        v48 = __OFADD__(v213, 1);
        v214 = v213 + 1;
        if (v48)
        {
          goto LABEL_326;
        }

        v12[3] = v214;
      }

      if (!((v27 >= (v23 + v11)) | v234 & 1))
      {
        v215 = v6;
        v216 = v12[3];
        v217 = v216 + 1;
        if (__OFADD__(v216, 1))
        {
          goto LABEL_325;
        }

        v12 = v254;
        v218 = swift_isUniquelyReferenced_nonNull_native();
        if (v12[2] < v217 || (v218 & 1) == 0)
        {
          sub_2751D2B08(v218, v217, 0);
          v12 = v254;
        }

        v220 = v12[3];
        v219 = v12[4];
        v48 = __OFADD__(v219, v220);
        v221 = v219 + v220;
        if (!v48)
        {
          v6 = v215;
          if (v220 < 0)
          {
            if (v221 < 0)
            {
              v228 = v12[2];
              v48 = __OFADD__(v221, v228);
              v221 += v228;
              if (v48)
              {
                goto LABEL_338;
              }
            }
          }

          else
          {
            v222 = v12[2];
            v223 = __OFSUB__(v221, v222);
            v224 = v221 - v222;
            if (v224 < 0 == v223)
            {
              v221 = v224;
              if (v223)
              {
                goto LABEL_335;
              }
            }
          }

          v12[v221 + 5] = v232;
          v229 = v12[3];
          v48 = __OFADD__(v229, 1);
          v227 = v229 + 1;
          if (v48)
          {
            goto LABEL_330;
          }

          goto LABEL_272;
        }

        goto LABEL_329;
      }

      goto LABEL_273;
    }

LABEL_33:
    if ((v27 >= (v23 + v11)) | v234 & 1)
    {
      goto LABEL_238;
    }

    v40 = v6;
    v41 = v12[3];
    v42 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      goto LABEL_320;
    }

    v12 = v254;
    v43 = swift_isUniquelyReferenced_nonNull_native();
    if (v12[2] < v42 || (v43 & 1) == 0)
    {
      sub_2751D2B08(v43, v42, 0);
      v12 = v254;
    }

    v45 = v12[3];
    v44 = v12[4];
    v48 = __OFADD__(v44, v45);
    v46 = v44 + v45;
    if (v48)
    {
      goto LABEL_322;
    }

    v6 = v40;
    if (v45 < 0)
    {
      if (v46 < 0)
      {
        v199 = v12[2];
        v48 = __OFADD__(v46, v199);
        v46 += v199;
        if (v48)
        {
          goto LABEL_337;
        }
      }
    }

    else
    {
      v47 = v12[2];
      v48 = __OFSUB__(v46, v47);
      v49 = v46 - v47;
      if (v49 < 0 == v48)
      {
        v46 = v49;
        if (v48)
        {
          goto LABEL_333;
        }
      }
    }

    v12[v46 + 5] = v232;
    v200 = v12[3];
    v48 = __OFADD__(v200, 1);
    v201 = v200 + 1;
    if (v48)
    {
      goto LABEL_327;
    }

    v12[3] = v201;
LABEL_238:

    if (!(((v23 - v11) > v27) | v233 & 1))
    {
      v202 = v6;
      v203 = v12[3];
      v204 = v203 + 1;
      if (__OFADD__(v203, 1))
      {
        goto LABEL_324;
      }

      v12 = v254;
      v205 = swift_isUniquelyReferenced_nonNull_native();
      if (v12[2] < v204 || (v205 & 1) == 0)
      {
        sub_2751D2B08(v205, v204, 0);
        v12 = v254;
      }

      v207 = v12[3];
      v206 = v12[4];
      v48 = __OFADD__(v206, v207);
      v208 = v206 + v207;
      if (!v48)
      {
        v6 = v202;
        if (v207 < 0)
        {
          if (v208 < 0)
          {
            v225 = v12[2];
            v48 = __OFADD__(v208, v225);
            v208 += v225;
            if (v48)
            {
              goto LABEL_339;
            }
          }
        }

        else
        {
          v209 = v12[2];
          v210 = __OFSUB__(v208, v209);
          v211 = v208 - v209;
          if (v211 < 0 == v210)
          {
            v208 = v211;
            if (v210)
            {
              goto LABEL_334;
            }
          }
        }

        v12[v208 + 5] = v231;
        v226 = v12[3];
        v48 = __OFADD__(v226, 1);
        v227 = v226 + 1;
        if (v48)
        {
          goto LABEL_331;
        }

LABEL_272:
        v12[3] = v227;
        goto LABEL_273;
      }

      goto LABEL_328;
    }

LABEL_273:
    v10 = 0;
    if (!v12[3])
    {
      goto LABEL_280;
    }
  }

  if (!v31)
  {
    goto LABEL_315;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v22 = sub_2751E3B54(v22);
    v32 = *(v22 + 2);
    if (v32)
    {
      goto LABEL_27;
    }

LABEL_278:
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  v32 = *(v22 + 2);
  if (!v32)
  {
    goto LABEL_278;
  }

LABEL_27:
  *(v22 + 2) = v32 - 1;
  v33 = v3[5];

  if (v32 == 1)
  {
    goto LABEL_316;
  }

  if ((v32 - 2) < *(v22 + 2))
  {
    v6 = v22;
    v35 = *&v22[16 * v32];
    if ((v35 & 0x8000000000000000) != 0)
    {
      goto LABEL_318;
    }

    v36 = v3[3];
    if (v35 >= *(v36 + 16))
    {
      goto LABEL_319;
    }

    v37 = *(v36 + 8 * v35 + 32);
    v34;
    v11 = v33(a1, v37);

    v39 = v251;
    if (!v251)
    {
      goto LABEL_32;
    }

    goto LABEL_45;
  }

LABEL_317:
  __break(1u);
LABEL_318:
  __break(1u);
LABEL_319:
  __break(1u);
LABEL_320:
  __break(1u);
LABEL_321:
  __break(1u);
LABEL_322:
  __break(1u);
LABEL_323:
  __break(1u);
LABEL_324:
  __break(1u);
LABEL_325:
  __break(1u);
LABEL_326:
  __break(1u);
LABEL_327:
  __break(1u);
LABEL_328:
  __break(1u);
LABEL_329:
  __break(1u);
LABEL_330:
  __break(1u);
LABEL_331:
  __break(1u);
LABEL_332:
  __break(1u);
LABEL_333:
  __break(1u);
LABEL_334:
  __break(1u);
LABEL_335:
  __break(1u);
LABEL_336:
  __break(1u);
LABEL_337:
  __break(1u);
LABEL_338:
  __break(1u);
LABEL_339:
  __break(1u);

  *(v241 + 16) = 0;

  __break(1u);
  return result;
}

char *VPTree.search(query:radius:sorted:)(uint64_t a1, char a2, float a3)
{
  v4 = v3;
  v86 = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v7 = v3[3];
  v8 = *(v7 + 16);
  v77 = MEMORY[0x277D84F90];
  if (!v8 || a3 <= 0.0)
  {
    return v77;
  }

  v9 = v3[5];
  swift_beginAccess();
  v10 = v3[4];
  if (!*(v10 + 16))
  {
    goto LABEL_75;
  }

  v11 = *(v10 + 32);
  if (v11 >= v8)
  {
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
  }

  v12 = *(v7 + 8 * v11 + 32);

  v13;
  v14 = v9(a1, v12);

  v15 = v3[4];
  if (!*(v15 + 16))
  {
    goto LABEL_77;
  }

  v77 = MEMORY[0x277D84F90];
  if ((v14 - *(v15 + 40)) > a3)
  {
    return v77;
  }

  v76 = a2;
  v16 = MEMORY[0x277D84F90];
  v85 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1A8, &unk_27520DD60);
  inited = swift_initStackObject();
  v18 = xmmword_27520DD90;
  *(inited + 16) = xmmword_27520DD90;
  *(inited + 32) = 0;
  v19 = 1;
  while (2)
  {
    v21 = v19 - 1;
    v22 = *(inited + 8 * (v19 - 1) + 32);
    *(inited + 16) = v21;
    if ((v22 & 0x8000000000000000) != 0)
    {
      goto LABEL_71;
    }

    v23 = v4[4];
    if (v22 >= *(v23 + 16))
    {
      goto LABEL_72;
    }

    v24 = v23 + 56 * v22;
    v25 = *(v24 + 32);
    if ((v25 & 0x8000000000000000) != 0)
    {
      goto LABEL_73;
    }

    v26 = v4[3];
    if (v25 >= *(v26 + 16))
    {
      goto LABEL_74;
    }

    v27 = *(v24 + 40);
    v80 = *(v24 + 48);
    v20 = *(v24 + 64);
    v81 = *(v24 + 72);
    v82 = *(v24 + 56);
    v28 = *(v24 + 80);
    v29 = v4[5];
    v30 = *(v26 + 8 * v25 + 32);
    v18;

    v31;
    v32 = v29(a1, v30);

    if (v32 <= a3)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_2751D0E64(0, *(v16 + 2) + 1, 1, v16);
      }

      v35 = *(v16 + 2);
      v34 = *(v16 + 3);
      if (v35 >= v34 >> 1)
      {
        v16 = sub_2751D0E64((v34 > 1), v35 + 1, 1, v16);
      }

      *(v16 + 2) = v35 + 1;
      v36 = &v16[16 * v35];
      *(v36 + 4) = v25;
      *(v36 + 10) = v32;
    }

    if (!v28)
    {
      goto LABEL_50;
    }

    v78 = v20;
    v79 = inited;
    v37 = *(v28 + 16);
    if (!v37)
    {
      v38 = MEMORY[0x277D84F90];
      v49 = *(MEMORY[0x277D84F90] + 16);
      if (v49)
      {
        goto LABEL_30;
      }

LABEL_39:
      v51 = MEMORY[0x277D84F90];
      goto LABEL_40;
    }

    v84 = MEMORY[0x277D84F90];
    v33;
    sub_2751E1264(0, v37, 0);
    v38 = v84;
    v39 = 32;
    do
    {
      v40 = *(v28 + v39);
      if ((v40 & 0x8000000000000000) != 0)
      {
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
        __break(1u);
        goto LABEL_76;
      }

      v41 = v4[3];
      if (v40 >= *(v41 + 16))
      {
        goto LABEL_70;
      }

      v42 = v4[5];
      v43 = *(v41 + 8 * v40 + 32);

      v44;
      v45 = v42(a1, v43);

      v47 = *(v84 + 16);
      v46 = *(v84 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_2751E1264((v46 > 1), v47 + 1, 1);
      }

      *(v84 + 16) = v47 + 1;
      v48 = v84 + 16 * v47;
      *(v48 + 32) = v40;
      *(v48 + 40) = v45;
      v39 += 8;
      --v37;
    }

    while (v37);

    v49 = *(v84 + 16);
    if (!v49)
    {
      goto LABEL_39;
    }

LABEL_30:
    v50 = (v38 + 40);
    v51 = MEMORY[0x277D84F90];
    do
    {
      v55 = *v50;
      if (*v50 <= a3)
      {
        v56 = *(v50 - 1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2751E1264(0, *(v51 + 16) + 1, 1);
        }

        v53 = *(v51 + 16);
        v52 = *(v51 + 24);
        if (v53 >= v52 >> 1)
        {
          sub_2751E1264((v52 > 1), v53 + 1, 1);
        }

        *(v51 + 16) = v53 + 1;
        v54 = v51 + 16 * v53;
        *(v54 + 32) = v56;
        *(v54 + 40) = v55;
      }

      v50 += 4;
      --v49;
    }

    while (v49);
LABEL_40:

    v57 = *(v51 + 16);
    if (v57)
    {
      v20 = v78;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_2751D0E64(0, *(v16 + 2) + 1, 1, v16);
      }

      v58 = *(v16 + 2);
      v59 = 16 * v58;
      v60 = (v51 + 40);
      do
      {
        v61 = *(v60 - 1);
        v62 = *v60;
        v63 = *(v16 + 3);
        v64 = v58 + 1;
        if (v58 >= v63 >> 1)
        {
          v16 = sub_2751D0E64((v63 > 1), v58 + 1, 1, v16);
        }

        *(v16 + 2) = v64;
        v65 = &v16[v59];
        *(v65 + 4) = v61;
        *(v65 + 10) = v62;
        v59 += 16;
        v60 += 4;
        v58 = v64;
        --v57;
      }

      while (v57);
    }

    else
    {
      v20 = v78;
    }

    inited = v79;
LABEL_50:
    v66 = v27 + a3;
    if (v32 >= v27)
    {
      if (!(((v27 - a3) > v32) | v81 & 1))
      {
        v73 = *(inited + 16);
        v72 = *(inited + 24);
        if (v73 >= v72 >> 1)
        {
          inited = sub_2751D09BC((v72 > 1), v73 + 1, 1, inited);
        }

        *(inited + 16) = v73 + 1;
        *(inited + 8 * v73 + 32) = v20;
      }

      if (!((v32 >= v66) | v82 & 1))
      {
        v70 = *(inited + 16);
        v74 = *(inited + 24);
        v71 = v70 + 1;
        if (v70 >= v74 >> 1)
        {
          inited = sub_2751D09BC((v74 > 1), v70 + 1, 1, inited);
        }

        v20 = v80;
LABEL_9:
        *(inited + 16) = v71;
        *(inited + 8 * v70 + 32) = v20;
      }
    }

    else
    {
      if (!((v32 >= v66) | v82 & 1))
      {
        v68 = *(inited + 16);
        v67 = *(inited + 24);
        if (v68 >= v67 >> 1)
        {
          inited = sub_2751D09BC((v67 > 1), v68 + 1, 1, inited);
        }

        *(inited + 16) = v68 + 1;
        *(inited + 8 * v68 + 32) = v80;
      }

      v18.n128_f32[0] = v27 - a3;
      if (!(((v27 - a3) > v32) | v81 & 1))
      {
        v70 = *(inited + 16);
        v69 = *(inited + 24);
        v71 = v70 + 1;
        if (v70 >= v69 >> 1)
        {
          inited = sub_2751D09BC((v69 > 1), v70 + 1, 1, inited);
        }

        goto LABEL_9;
      }
    }

    v19 = *(inited + 16);
    if (v19)
    {
      continue;
    }

    break;
  }

  v85 = v16;
  if (v76)
  {
    sub_2751EFE98(&v85);
  }

  return v85;
}

void *VPTree.deinit()
{

  return v0;
}

uint64_t VPTree.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t VPTree.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD880, &qword_27520E120);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2751F4810();
  sub_27520C2B8();
  v12 = *(v3 + 16);
  LOBYTE(v11) = 0;
  sub_2751ED1DC();
  sub_27520C1A8();
  if (!v2)
  {
    swift_beginAccess();
    v11 = *(v3 + 32);
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD890, &qword_27520E128);
    sub_2751F48B8(&qword_2809AD898, sub_2751F4864, MEMORY[0x277D83948]);
    sub_27520C1A8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t VPTree.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  VPTree.init(from:)(a1);
  return v2;
}

uint64_t *VPTree.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD8A8, &qword_27520E130);
  v15 = *(v5 - 8);
  v16 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  v8 = MEMORY[0x277D84F90];
  *(v1 + 24) = MEMORY[0x277D84F90];
  *(v1 + 32) = v8;
  v9 = (v1 + 32);
  *(v1 + 40) = sub_2751F08E0;
  *(v1 + 48) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2751F4810();
  sub_27520C2A8();
  if (v2)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = v15;
    LOBYTE(v18) = 0;
    sub_2751ED230();
    v11 = v16;
    sub_27520C108();
    *(v1 + 16) = v17[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD890, &qword_27520E128);
    LOBYTE(v17[0]) = 1;
    sub_2751F48B8(&qword_2809AD8B0, sub_2751F4930, MEMORY[0x277D83978]);
    sub_27520C108();
    (*(v10 + 8))(v7, v11);
    v13 = v18;
    swift_beginAccess();
    *v9 = v13;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

BOOL sub_2751F2CE8()
{
  v1 = *v0;
  swift_beginAccess();
  return *(*(v1 + 32) + 16) == 0;
}

uint64_t *sub_2751F2D34@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = VPTree.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_2751F2DB0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_27520C1D8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD230, &unk_27520E0A0);
        v6 = sub_27520BCF8();
        *(v6 + 16) = v5;
      }

      v16[0] = v6 + 32;
      v16[1] = v5;
      sub_2751ED610(v16, v17, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v2 < 0)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v2 >= 2)
  {
    v7 = *a1;
    v8 = *a1 + 16;
    v9 = -1;
    for (i = 1; i != v2; ++i)
    {
      v11 = v9;
      v12 = v8;
      do
      {
        v13 = *(v12 + 8);
        if (v13 >= *(v12 - 8))
        {
          break;
        }

        if (!v7)
        {
          goto LABEL_20;
        }

        v14 = *v12;
        *v12 = *(v12 - 16);
        *(v12 - 8) = v13;
        *(v12 - 16) = v14;
        v12 -= 16;
      }

      while (!__CFADD__(v11++, 1));
      v8 += 16;
      --v9;
    }
  }

  return result;
}

uint64_t sub_2751F2F04(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t *))
{
  v22 = a2;
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *v4;
    v9 = *v4 + 16 * a3;
    v10 = result - a3;
LABEL_4:
    v11 = v10;
    v12 = v9;
    while (1)
    {
      v13 = *(v12 + 8);
      v20 = *v12;
      v21 = v13;
      v14 = *(v12 - 8);
      v18 = *(v12 - 16);
      v19 = v14;
      result = a4(&v20, &v18);
      if (v5)
      {
        break;
      }

      if (result)
      {
        if (!v8)
        {
          __break(1u);
          return result;
        }

        v15 = *v12;
        v16 = *(v12 + 8);
        *v12 = *(v12 - 16);
        *(v12 - 8) = v16;
        *(v12 - 16) = v15;
        v12 -= 16;
        if (!__CFADD__(v11++, 1))
        {
          continue;
        }
      }

      ++v7;
      v9 += 16;
      --v10;
      if (v7 != v22)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_2751F2FF4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t *, uint64_t *), uint64_t a5, uint64_t a6)
{
  v104 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_96:
    v11 = *v104;
    if (*v104)
    {
      v8 = v6;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_125;
      }

      goto LABEL_98;
    }

    goto LABEL_134;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9;
    v12 = (v9 + 1);
    if (v12 >= v8)
    {
      v8 = v12;
    }

    else
    {
      v13 = *a3;
      v14 = *a3 + 16 * v12;
      v15 = *(v14 + 8);
      v108 = *v14;
      v109 = v15;
      v16 = (v13 + 16 * v11);
      v17 = *(v16 + 2);
      v106 = *v16;
      v107 = v17;
      result = a4(&v108, &v106);
      if (v6)
      {
      }

      v18 = result;
      v19 = 0;
      v100 = v11;
      v20 = v11 - v8 + 2;
      v21 = 16 * v11;
      v22 = v13 + v21 + 24;
      do
      {
        if (!(v20 + v19))
        {
          v25 = v8 - 1;
          if ((v18 & 1) == 0)
          {
            goto LABEL_25;
          }

          goto LABEL_13;
        }

        v23 = *(v22 + 16);
        v108 = *(v22 + 8);
        v109 = v23;
        v24 = *v22;
        v106 = *(v22 - 8);
        v107 = v24;
        result = a4(&v108, &v106);
        ++v19;
        v22 += 16;
      }

      while (((v18 ^ result) & 1) == 0);
      v25 = &v100[v19];
      v8 = &v100[v19 + 1];
      if ((v18 & 1) == 0)
      {
        goto LABEL_25;
      }

LABEL_13:
      v26 = v100;
      if (v8 < v100)
      {
        goto LABEL_128;
      }

      if (v100 <= v25)
      {
        v27 = 16 * v8 - 16;
        v28 = v8;
        do
        {
          if (v26 != --v28)
          {
            v30 = *a3;
            if (!*a3)
            {
              goto LABEL_132;
            }

            v31 = (v30 + v21);
            v32 = (v30 + v27);
            v33 = *(v30 + v21);
            v34 = *(v30 + v21 + 8);
            if (v21 != v27 || v31 >= v32 + 1)
            {
              *v31 = *v32;
            }

            v29 = v30 + v27;
            *v29 = v33;
            *(v29 + 8) = v34;
          }

          ++v26;
          v27 -= 16;
          v21 += 16;
        }

        while (v26 < v28);
LABEL_25:
        v11 = v100;
      }

      else
      {
        v11 = v100;
      }
    }

    v35 = a3[1];
    if (v8 >= v35)
    {
      goto LABEL_35;
    }

    if (__OFSUB__(v8, v11))
    {
      goto LABEL_124;
    }

    if (v8 - v11 >= a6)
    {
      goto LABEL_35;
    }

    if (__OFADD__(v11, a6))
    {
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    if (v11 + a6 >= v35)
    {
      v36 = a3[1];
    }

    else
    {
      v36 = v11 + a6;
    }

    if (v36 < v11)
    {
      goto LABEL_127;
    }

    if (v8 == v36)
    {
LABEL_35:
      v37 = v8;
      if (v8 < v11)
      {
        goto LABEL_123;
      }
    }

    else
    {
      v84 = *a3;
      v85 = *a3 + 16 * v8;
      v101 = v11;
      v103 = v36;
      v86 = (v11 - v8);
      do
      {
        v87 = v86;
        v98 = v85;
        v88 = v85;
        do
        {
          v89 = *(v88 + 8);
          v108 = *v88;
          v109 = v89;
          v90 = *(v88 - 8);
          v106 = *(v88 - 16);
          v107 = v90;
          result = a4(&v108, &v106);
          if (v6)
          {
          }

          if ((result & 1) == 0)
          {
            break;
          }

          if (!v84)
          {
            goto LABEL_130;
          }

          v91 = *v88;
          v92 = *(v88 + 8);
          *v88 = *(v88 - 16);
          *(v88 - 8) = v92;
          *(v88 - 16) = v91;
          v88 -= 16;
        }

        while (!__CFADD__(v87++, 1));
        ++v8;
        v85 = v98 + 16;
        --v86;
        v37 = v103;
      }

      while (v8 != v103);
      v11 = v101;
      if (v103 < v101)
      {
        goto LABEL_123;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2751D08B8(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v39 = *(v10 + 2);
    v38 = *(v10 + 3);
    v40 = v39 + 1;
    if (v39 >= v38 >> 1)
    {
      result = sub_2751D08B8((v38 > 1), v39 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v40;
    v41 = &v10[16 * v39];
    *(v41 + 4) = v11;
    *(v41 + 5) = v37;
    v42 = *v104;
    if (!*v104)
    {
      goto LABEL_133;
    }

    v102 = v37;
    if (v39)
    {
      break;
    }

LABEL_3:
    v8 = a3[1];
    v9 = v102;
    if (v102 >= v8)
    {
      goto LABEL_96;
    }
  }

  while (1)
  {
    v43 = v40 - 1;
    if (v40 >= 4)
    {
      v48 = &v10[16 * v40 + 32];
      v49 = *(v48 - 64);
      v50 = *(v48 - 56);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_110;
      }

      v53 = *(v48 - 48);
      v52 = *(v48 - 40);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_111;
      }

      v55 = &v10[16 * v40];
      v57 = *v55;
      v56 = *(v55 + 1);
      v54 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v54)
      {
        goto LABEL_113;
      }

      v54 = __OFADD__(v46, v58);
      v59 = v46 + v58;
      if (v54)
      {
        goto LABEL_116;
      }

      if (v59 >= v51)
      {
        v77 = &v10[16 * v43 + 32];
        v79 = *v77;
        v78 = *(v77 + 1);
        v54 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v54)
        {
          goto LABEL_122;
        }

        if (v46 < v80)
        {
          v43 = v40 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

    if (v40 == 3)
    {
      v44 = *(v10 + 4);
      v45 = *(v10 + 5);
      v54 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      v47 = v54;
LABEL_55:
      if (v47)
      {
        goto LABEL_112;
      }

      v60 = &v10[16 * v40];
      v62 = *v60;
      v61 = *(v60 + 1);
      v63 = __OFSUB__(v61, v62);
      v64 = v61 - v62;
      v65 = v63;
      if (v63)
      {
        goto LABEL_115;
      }

      v66 = &v10[16 * v43 + 32];
      v68 = *v66;
      v67 = *(v66 + 1);
      v54 = __OFSUB__(v67, v68);
      v69 = v67 - v68;
      if (v54)
      {
        goto LABEL_118;
      }

      if (__OFADD__(v64, v69))
      {
        goto LABEL_119;
      }

      if (v64 + v69 >= v46)
      {
        if (v46 < v69)
        {
          v43 = v40 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_69;
    }

    v70 = &v10[16 * v40];
    v72 = *v70;
    v71 = *(v70 + 1);
    v54 = __OFSUB__(v71, v72);
    v64 = v71 - v72;
    v65 = v54;
LABEL_69:
    if (v65)
    {
      goto LABEL_114;
    }

    v73 = &v10[16 * v43];
    v75 = *(v73 + 4);
    v74 = *(v73 + 5);
    v54 = __OFSUB__(v74, v75);
    v76 = v74 - v75;
    if (v54)
    {
      goto LABEL_117;
    }

    if (v76 < v64)
    {
      goto LABEL_3;
    }

LABEL_76:
    v11 = v43 - 1;
    if (v43 - 1 >= v40)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_129;
    }

    v81 = *&v10[16 * v11 + 32];
    v82 = *&v10[16 * v43 + 40];
    sub_2751F369C((*a3 + 16 * v81), (*a3 + 16 * *&v10[16 * v43 + 32]), (*a3 + 16 * v82), v42, a4);
    if (v6)
    {
    }

    if (v82 < v81)
    {
      goto LABEL_108;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_2751F3A50(v10);
    }

    if (v11 >= *(v10 + 2))
    {
      goto LABEL_109;
    }

    v83 = &v10[16 * v11];
    *(v83 + 4) = v81;
    *(v83 + 5) = v82;
    v110 = v10;
    result = sub_2751F39C4(v43);
    v10 = v110;
    v40 = *(v110 + 2);
    if (v40 <= 1)
    {
      goto LABEL_3;
    }
  }

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
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  result = sub_2751F3A50(v10);
  v10 = result;
LABEL_98:
  v110 = v10;
  v94 = *(v10 + 2);
  if (v94 < 2)
  {
  }

  while (*a3)
  {
    v95 = *&v10[16 * v94];
    v96 = *&v10[16 * v94 + 24];
    sub_2751F369C((*a3 + 16 * v95), (*a3 + 16 * *&v10[16 * v94 + 16]), (*a3 + 16 * v96), v11, a4);
    if (v8)
    {
    }

    if (v96 < v95)
    {
      goto LABEL_120;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_2751F3A50(v10);
    }

    if (v94 - 2 >= *(v10 + 2))
    {
      goto LABEL_121;
    }

    v97 = &v10[16 * v94];
    *v97 = v95;
    *(v97 + 1) = v96;
    v110 = v10;
    result = sub_2751F39C4(v94 - 1);
    v10 = v110;
    v94 = *(v110 + 2);
    if (v94 <= 1)
    {
    }
  }

LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_2751F369C(char *__dst, char *__src, char *a3, char *a4, uint64_t (*a5)(uint64_t *, uint64_t *))
{
  v40 = a3;
  v6 = a5;
  v7 = a4;
  v8 = __src;
  v9 = __dst;
  v10 = __src - __dst;
  v11 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v11 = __src - __dst;
  }

  v12 = v11 >> 4;
  v13 = a3 - __src;
  v14 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v14 = a3 - __src;
  }

  v15 = v14 >> 4;
  if (v12 >= v15)
  {
    v25 = 16 * v15;
    if (a4 != __src || &__src[v25] <= a4)
    {
      memmove(a4, __src, 16 * v15);
    }

    v18 = &v7[v25];
    if (v13 >= 16 && v8 > v9)
    {
      while (1)
      {
        v26 = 0;
        v27 = v8;
        v28 = v18;
        v8 -= 16;
        while (1)
        {
          v29 = *&v28[v26 - 8];
          v38 = *&v28[v26 - 16];
          v39 = v29;
          v30 = *(v27 - 2);
          v36 = *(v27 - 2);
          v37 = v30;
          v31 = v6(&v38, &v36);
          if (v5)
          {
            v33 = (v28 - v7 + v26 + (v28 - v7 + v26 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0;
            if (v27 >= v7 && v27 < &v7[v33] && v27 == v7)
            {
              return 1;
            }

            v34 = v27;
LABEL_50:
            memmove(v34, v7, v33);
            return 1;
          }

          if (v31)
          {
            break;
          }

          if (&v40[v26] != &v28[v26])
          {
            *&v40[v26 - 16] = *&v28[v26 - 16];
          }

          v26 -= 16;
          v18 = &v28[v26];
          if (&v28[v26] <= v7)
          {
            v8 = v27;
            goto LABEL_46;
          }
        }

        v32 = &v40[v26 - 16];
        if (&v40[v26] != v27)
        {
          *v32 = *v8;
        }

        v40 = v32;
        v18 = &v28[v26];
        if (&v28[v26] <= v7 || v8 <= v9)
        {
          v18 = &v28[v26];
          break;
        }
      }
    }

LABEL_46:
    v33 = (v18 - v7 + (v18 - v7 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0;
    if (v8 >= v7 && v8 < &v7[v33] && v8 == v7)
    {
      return 1;
    }

    v34 = v8;
    goto LABEL_50;
  }

  v16 = 16 * v12;
  if (a4 != __dst || &__dst[v16] <= a4)
  {
    memmove(a4, __dst, v16);
    v6 = a5;
  }

  v18 = &v7[v16];
  if (v10 < 16 || (v19 = v40, v8 >= v40))
  {
LABEL_20:
    v8 = v9;
    goto LABEL_46;
  }

  while (1)
  {
    v20 = *(v8 + 2);
    v38 = *v8;
    v39 = v20;
    v21 = *(v7 + 2);
    v36 = *v7;
    v37 = v21;
    v22 = v6(&v38, &v36);
    if (v5)
    {
      break;
    }

    if ((v22 & 1) == 0)
    {
      v23 = v7;
      v24 = v9 == v7;
      v7 += 16;
      if (v24)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v9 = *v23;
      goto LABEL_18;
    }

    v23 = v8;
    v24 = v9 == v8;
    v8 += 16;
    if (!v24)
    {
      goto LABEL_17;
    }

LABEL_18:
    v9 += 16;
    if (v7 >= v18 || v8 >= v19)
    {
      goto LABEL_20;
    }
  }

  v33 = (v18 - v7 + (v18 - v7 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0;
  if (v9 < v7 || v9 >= &v7[v33] || v9 != v7)
  {
    v34 = v9;
    goto LABEL_50;
  }

  return 1;
}

uint64_t sub_2751F39C4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2751F3A50(v3);
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

char *sub_2751F3A64(char **a1, char **a2, void *a3)
{
  result = *a1;
  v4 = *a2;
  v5 = (*a3 - v4 + ((*a3 - v4) < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0;
  if (result != v4 || result >= &v4[v5])
  {
    return memmove(result, v4, v5);
  }

  return result;
}

uint64_t sub_2751F3A9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646E49746E696F70 && a2 == 0xEA00000000007865;
  if (v4 || (sub_27520C218() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6F687365726874 && a2 == 0xE900000000000064 || (sub_27520C218() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1952867692 && a2 == 0xE400000000000000 || (sub_27520C218() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7468676972 && a2 == 0xE500000000000000 || (sub_27520C218() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E496465726F7473 && a2 == 0xED00007365636964)
  {

    return 4;
  }

  else
  {
    v6 = sub_27520C218();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_2751F3C60(uint64_t a1, float (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = a4 < 1;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return result;
  }

  v8 = *sub_27520BA78();
  v151 = v8;
  v9 = sub_2751E3A6C(v5, 0);
  result = sub_2751E3B7C(v150, (v9 + 4), v5, 0, v5);
  v147 = v5;
  if (result == v5)
  {
    v10 = v8[3];
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_181;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (v8[2] < v11 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2751D2AEC(isUniquelyReferenced_nonNull_native, v11, 0);
      v8 = v151;
    }

    sub_2752088F8(v8 + 2, (v8 + 5), v9, 0, 257, v13);

    if (!v8[3])
    {

      return MEMORY[0x277D84F90];
    }

    v146 = a1 + 32;
    v144 = MEMORY[0x277D84F90];
    v14 = v147;
    while (1)
    {
      v15 = v151;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2751D25E8();
        v15 = v151;
      }

      v17 = v15[4];
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v19 = &v15[3 * v17];
      v21 = v19[5];
      v20 = v19[6];
      v22 = *(v19 + 56);
      v23 = *(v19 + 57);
      v24 = v15[3];
      if (v18 >= v15[2])
      {
        v18 = 0;
      }

      v15[4] = v18;
      if (__OFSUB__(v24, 1))
      {
        goto LABEL_155;
      }

      v15[3] = v24 - 1;
      v25 = v21[2];
      if (v25)
      {
        v142 = v20;
        v143 = v15;
        if (v25 <= a4)
        {
          v42 = v21[4];
          v43 = v25 - 1;
          if (v25 == 1)
          {
            v44 = 0;
            v45 = 0.0;
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1A8, &unk_27520DD60);
            v44 = swift_allocObject();
            v46 = _swift_stdlib_malloc_size(v44);
            v47 = v46 - 32;
            if (v46 < 32)
            {
              v47 = v46 - 25;
            }

            v44[2] = v43;
            v44[3] = 2 * (v47 >> 3);
            memcpy(v44 + 4, v21 + 5, 8 * v43);
            v49 = v21[2];
            if (v49)
            {
              v150[0] = MEMORY[0x277D84F90];
              v48;
              result = sub_2751E09A4(0, v49, 0);
              if (v42 < 0)
              {
                goto LABEL_168;
              }

              if (v42 >= v14)
              {
                goto LABEL_169;
              }

              v141 = v44;
              v139 = v22;
              v51 = v23;
              v52 = v150[0];
              v53 = *(v146 + 8 * v42);
              v54 = 4;
              while (1)
              {
                v55 = v21[v54];
                if (v55 >= v147)
                {
                  goto LABEL_153;
                }

                v56 = *(v146 + 8 * v55);
                v50;
                v57;
                v58 = a2(v53, v56);

                v150[0] = v52;
                v60 = *(v52 + 16);
                v59 = *(v52 + 24);
                if (v60 >= v59 >> 1)
                {
                  result = sub_2751E09A4((v59 > 1), v60 + 1, 1);
                  v52 = v150[0];
                }

                *(v52 + 16) = v60 + 1;
                *(v52 + 4 * v60 + 32) = v58;
                ++v54;
                if (!--v49)
                {

                  v14 = v147;
                  v23 = v51;
                  v22 = v139;
                  v44 = v141;
                  v92 = *(v52 + 16);
                  if (!v92)
                  {
                    goto LABEL_132;
                  }

                  goto LABEL_87;
                }
              }
            }

            v52 = MEMORY[0x277D84F90];
            v92 = *(MEMORY[0x277D84F90] + 16);
            if (v92)
            {
LABEL_87:
              v45 = *(v52 + 32);
              v93 = v92 - 1;
              if (v93)
              {
                v94 = (v52 + 36);
                do
                {
                  v95 = *v94++;
                  v96 = v95;
                  if (v45 < v95)
                  {
                    v45 = v96;
                  }

                  --v93;
                }

                while (v93);
              }
            }

            else
            {
LABEL_132:
              v45 = 0.0;
            }
          }

          v127 = *(v144 + 2);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v144 = sub_2751D0F84(0, v127 + 1, 1, v144);
          }

          v129 = *(v144 + 2);
          v128 = *(v144 + 3);
          if (v129 >= v128 >> 1)
          {
            v144 = sub_2751D0F84((v128 > 1), v129 + 1, 1, v144);
          }

          *(v144 + 2) = v129 + 1;
          v130 = v144 + 32;
          v131 = &v144[56 * v129 + 32];
          *v131 = v42;
          *(v131 + 8) = v45;
          *(v131 + 16) = 0;
          *(v131 + 24) = 1;
          *(v131 + 32) = 0;
          *(v131 + 40) = 1;
          *(v131 + 48) = v44;

          if (v22)
          {
            v15 = v143;
          }

          else if (v23)
          {
            if ((v142 & 0x8000000000000000) != 0)
            {
              goto LABEL_172;
            }

            if (v142 >= *(v144 + 2))
            {
              goto LABEL_174;
            }

            v132 = &v130[56 * v142];
            *(v132 + 2) = v127;
            v132[24] = 0;
            v15 = v143;
          }

          else
          {
            if ((v142 & 0x8000000000000000) != 0)
            {
              goto LABEL_173;
            }

            if (v142 >= *(v144 + 2))
            {
              goto LABEL_175;
            }

            v133 = &v130[56 * v142];
            *(v133 + 4) = v127;
            v133[40] = 0;
            v15 = v143;
          }
        }

        else
        {
          v150[0] = 0;
          v16;
          result = MEMORY[0x277C6DCE0](v150, 8);
          v26 = (v150[0] * v25) >> 64;
          if (v25 > v150[0] * v25)
          {
            v27 = -v25 % v25;
            if (v27 > v150[0] * v25)
            {
              do
              {
                v150[0] = 0;
                result = MEMORY[0x277C6DCE0](v150, 8);
              }

              while (v27 > v150[0] * v25);
              v26 = (v150[0] * v25) >> 64;
            }
          }

          if (v26 >= v21[2])
          {
            goto LABEL_156;
          }

          v28 = v21[v26 + 4];

          v140 = v28;
          if (v28 >= v14)
          {
            goto LABEL_157;
          }

          v138 = v22;
          v136 = v23;
          v30 = v21[2];
          if (v30)
          {
            v31 = *(v146 + 8 * v140);
            v150[0] = MEMORY[0x277D84F90];
            v29;
            v32;
            result = sub_2751E1264(0, v30, 0);
            v34 = v150[0];
            v35 = 4;
            while (1)
            {
              v36 = v21[v35];
              if (v36 >= v147)
              {
                break;
              }

              v37 = *(v146 + 8 * v36);
              v33;
              v38 = a2(v31, v37);

              v150[0] = v34;
              v40 = *(v34 + 2);
              v39 = *(v34 + 3);
              if (v40 >= v39 >> 1)
              {
                result = sub_2751E1264((v39 > 1), v40 + 1, 1);
                v34 = v150[0];
              }

              *(v34 + 2) = v40 + 1;
              v41 = &v34[16 * v40];
              *(v41 + 4) = v36;
              *(v41 + 10) = v38;
              ++v35;
              if (!--v30)
              {

                goto LABEL_49;
              }
            }

LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
            break;
          }

          v34 = MEMORY[0x277D84F90];
LABEL_49:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v34 = sub_2751E3B54(v34);
          }

          v61 = *(v34 + 2);
          v150[0] = (v34 + 32);
          v150[1] = v61;
          result = sub_27520C1D8();
          if (result >= v61)
          {
            if (v61 >= 2)
            {
              v97 = -1;
              v98 = v34 + 32;
              for (i = 1; i != v61; ++i)
              {
                v100 = v97;
                v101 = v98;
                do
                {
                  v62.n128_u32[0] = *(v101 + 6);
                  if (v62.n128_f32[0] >= *(v101 + 2))
                  {
                    break;
                  }

                  v102 = *(v101 + 2);
                  *(v101 + 1) = *v101;
                  *v101 = v102;
                  *(v101 + 2) = v62.n128_u32[0];
                  v101 -= 16;
                }

                while (!__CFADD__(v100++, 1));
                v98 += 16;
                --v97;
              }
            }
          }

          else
          {
            v63 = result;
            v64 = MEMORY[0x277D84F90];
            if (v61 >= 2)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD230, &unk_27520E0A0);
              v64 = sub_27520BCF8();
              *(v64 + 16) = v61 >> 1;
            }

            v148[0] = v64 + 32;
            v148[1] = v61 >> 1;
            v65 = v64;
            sub_2751ED610(v148, v149, v150, v63);
            *(v65 + 16) = 0;
          }

          v66 = *(v34 + 2);
          if (!v66)
          {
            goto LABEL_158;
          }

          if (v66 == 1)
          {
            goto LABEL_159;
          }

          v67 = v66 >> 1;
          v68 = *&v34[16 * (v66 >> 1) + 40];
          v69 = (v66 >> 1) - 1;
          if (v66 >> 1 != 1)
          {
            v134 = *(v34 + 2);
            v150[0] = MEMORY[0x277D84F90];
            v62;
            result = sub_2751E12C4(0, v69, 0);
            v70 = v150[0];
            v135 = v67;
            if (v67 <= 1)
            {
              v71 = 1;
            }

            else
            {
              v71 = v67;
            }

            v72 = v71 - 1;
            v73 = 48;
            while (v72)
            {
              v74 = *&v34[v73];
              v150[0] = v70;
              v76 = *(v70 + 16);
              v75 = *(v70 + 24);
              if (v76 >= v75 >> 1)
              {
                result = sub_2751E12C4((v75 > 1), v76 + 1, 1);
                v70 = v150[0];
              }

              *(v70 + 16) = v76 + 1;
              *(v70 + 8 * v76 + 32) = v74;
              --v72;
              v73 += 16;
              if (!--v69)
              {

                v77 = *(v34 + 2);
                v66 = v134;
                v67 = v135;
                if (v77 >= v135)
                {
                  goto LABEL_70;
                }

                goto LABEL_160;
              }
            }

            goto LABEL_152;
          }

          v77 = *(v34 + 2);
          v70 = MEMORY[0x277D84F90];
LABEL_70:
          if (v77 < v66)
          {
            goto LABEL_160;
          }

          v78 = v66 - v67;
          v150[0] = MEMORY[0x277D84F90];
          v79 = (v66 - v67) & ~((v66 - v67) >> 63);
          v62;
          result = sub_2751E12C4(0, v79, 0);
          if ((v78 & 0x8000000000000000) != 0)
          {
            goto LABEL_161;
          }

          v80 = v150[0];
          v81 = 16 * v67 + 32;
          do
          {
            if (!v78)
            {
              __break(1u);
              goto LABEL_151;
            }

            v82 = *&v34[v81];
            v150[0] = v80;
            v84 = *(v80 + 16);
            v83 = *(v80 + 24);
            if (v84 >= v83 >> 1)
            {
              result = sub_2751E12C4((v83 > 1), v84 + 1, 1);
              v80 = v150[0];
            }

            *(v80 + 16) = v84 + 1;
            *(v80 + 8 * v84 + 32) = v82;
            v81 += 16;
            --v78;
          }

          while (v78);

          v85 = v144;
          v86 = *(v144 + 2);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v85 = sub_2751D0F84(0, v86 + 1, 1, v144);
          }

          v88 = *(v85 + 2);
          v87 = *(v85 + 3);
          if (v88 >= v87 >> 1)
          {
            v85 = sub_2751D0F84((v87 > 1), v88 + 1, 1, v85);
          }

          *(v85 + 2) = v88 + 1;
          v89 = v85 + 32;
          v90 = &v85[56 * v88 + 32];
          *v90 = v140;
          *(v90 + 8) = v68;
          *(v90 + 16) = 0;
          *(v90 + 24) = 1;
          *(v90 + 32) = 0;
          *(v90 + 40) = 1;
          *(v90 + 48) = 0;

          if ((v138 & 1) == 0)
          {
            if (v136)
            {
              if ((v142 & 0x8000000000000000) != 0)
              {
                goto LABEL_177;
              }

              if (v142 >= *(v85 + 2))
              {
                goto LABEL_179;
              }

              v91 = &v89[56 * v142 + 16];
            }

            else
            {
              if ((v142 & 0x8000000000000000) != 0)
              {
                goto LABEL_176;
              }

              if (v142 >= *(v85 + 2))
              {
                goto LABEL_178;
              }

              v91 = &v89[56 * v142 + 32];
            }

            *v91 = v86;
            *(v91 + 8) = 0;
          }

          v104 = v143[3];
          v105 = v104 + 1;
          if (__OFADD__(v104, 1))
          {
            goto LABEL_162;
          }

          v15 = v151;
          result = swift_isUniquelyReferenced_nonNull_native();
          if (v15[2] < v105 || (result & 1) == 0)
          {
            result = sub_2751D2AEC(result, v105, 0);
            v15 = v151;
          }

          v107 = v15[3];
          v106 = v15[4];
          v110 = __OFADD__(v106, v107);
          v108 = v106 + v107;
          if (v110)
          {
            goto LABEL_163;
          }

          if (v107 < 0)
          {
            if (v108 < 0)
            {
              v112 = v15[2];
              v110 = __OFADD__(v108, v112);
              v108 += v112;
              if (v110)
              {
                goto LABEL_182;
              }
            }
          }

          else
          {
            v109 = v15[2];
            v110 = __OFSUB__(v108, v109);
            v111 = v108 - v109;
            if (v111 < 0 == v110)
            {
              v108 = v111;
              if (v110)
              {
                goto LABEL_170;
              }
            }
          }

          v113 = &v15[3 * v108];
          v113[5] = v70;
          v113[6] = v86;
          *(v113 + 28) = 256;
          v114 = v15[3];
          v110 = __OFADD__(v114, 1);
          v115 = v114 + 1;
          if (v110)
          {
            goto LABEL_164;
          }

          v15[3] = v115;
          v116 = v115 + 1;
          if (__OFADD__(v115, 1))
          {
            goto LABEL_165;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if (v15[2] < v116 || (result & 1) == 0)
          {
            result = sub_2751D2AEC(result, v116, 0);
            v15 = v151;
          }

          v118 = v15[3];
          v117 = v15[4];
          v110 = __OFADD__(v117, v118);
          v119 = v117 + v118;
          if (v110)
          {
            goto LABEL_166;
          }

          if (v118 < 0)
          {
            if (v119 < 0)
            {
              v123 = v15[2];
              v110 = __OFADD__(v119, v123);
              v119 += v123;
              if (v110)
              {
                goto LABEL_183;
              }
            }
          }

          else
          {
            v120 = v15[2];
            v121 = __OFSUB__(v119, v120);
            v122 = v119 - v120;
            if (v122 < 0 == v121)
            {
              v119 = v122;
              if (v121)
              {
                goto LABEL_171;
              }
            }
          }

          v124 = &v15[3 * v119];
          v124[5] = v80;
          v124[6] = v86;
          *(v124 + 28) = 0;
          v125 = v15[3];
          v110 = __OFADD__(v125, 1);
          v126 = v125 + 1;
          if (v110)
          {
            goto LABEL_167;
          }

          v144 = v85;
          v15[3] = v126;

          v14 = v147;
        }
      }

      else
      {
      }

      if (!v15[3])
      {

        return v144;
      }
    }

    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
LABEL_176:
    __break(1u);
LABEL_177:
    __break(1u);
LABEL_178:
    __break(1u);
LABEL_179:
    __break(1u);
  }

  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
  return result;
}

unint64_t sub_2751F4810()
{
  result = qword_2809AD888;
  if (!qword_2809AD888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD888);
  }

  return result;
}

unint64_t sub_2751F4864()
{
  result = qword_2809AD8A0;
  if (!qword_2809AD8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD8A0);
  }

  return result;
}

uint64_t sub_2751F48B8(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809AD890, &qword_27520E128);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2751F4930()
{
  result = qword_2809AD8B8;
  if (!qword_2809AD8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD8B8);
  }

  return result;
}

uint64_t sub_2751F4990(uint64_t a1)
{
  result = sub_2751F4A68(&qword_2809AD8C0, &protocol conformance descriptor for VPTree);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2751F4A00(uint64_t a1)
{
  *(a1 + 8) = sub_2751F4A68(&qword_2809AD8C8, &protocol conformance descriptor for VPTree);
  result = sub_2751F4A68(&qword_2809AD8D0, &protocol conformance descriptor for VPTree);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2751F4A68(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for VPTree();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2751F4AFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_2751F4B58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

unint64_t sub_2751F4BEC()
{
  result = qword_2809AD8D8;
  if (!qword_2809AD8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD8D8);
  }

  return result;
}

unint64_t sub_2751F4C44()
{
  result = qword_2809AD8E0;
  if (!qword_2809AD8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD8E0);
  }

  return result;
}

unint64_t sub_2751F4C9C()
{
  result = qword_2809AD8E8;
  if (!qword_2809AD8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD8E8);
  }

  return result;
}

unint64_t sub_2751F4CF4()
{
  result = qword_2809AD8F0;
  if (!qword_2809AD8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD8F0);
  }

  return result;
}

unint64_t sub_2751F4D4C()
{
  result = qword_2809AD8F8;
  if (!qword_2809AD8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD8F8);
  }

  return result;
}

unint64_t sub_2751F4DA4()
{
  result = qword_2809AD900[0];
  if (!qword_2809AD900[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2809AD900);
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_2751F4E0C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_2751F4E54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t cosineSimilarityTensor(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_27520BA38();
  v68 = *(v6 - 8);
  v69 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v61 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v56 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v63 = &v56 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v62 = &v56 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v64 = &v56 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v67 = &v56 - v19;
  MEMORY[0x28223BE20](v18);
  v66 = &v56 - v20;
  v21 = sub_27520B8B8();
  v65 = *(v21 - 8);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v56 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v56 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v56 - v31;
  if (sub_27520B968() < 2 || (v60 = a2, sub_27520B968() < 2))
  {
    v36 = 1;
    v43 = v68;
    v42 = v69;
    v41 = a3;
    return (*(v43 + 56))(v41, v36, 1, v42);
  }

  v59 = a3;
  sub_27520B998();
  sub_2751E9170();
  result = sub_27520BE68();
  v34 = v70;
  if (v70 < 1)
  {
    __break(1u);
  }

  else
  {
    v70 = 1;
    v71 = v34;
    sub_27520BE98();
    v65 = *(v65 + 8);
    (v65)(v32, v21);
    sub_27520B998();
    result = sub_27520BE68();
    v35 = v70;
    if (v70 >= 1)
    {
      v57 = a1;
      v58 = v11;
      v36 = 1;
      v70 = 1;
      v71 = v35;
      sub_27520BE98();
      v37 = v65;
      (v65)(v27, v21);
      v38 = sub_27520B8A8();
      v39 = sub_27520B8A8();
      v40 = sub_2751D72DC(v38, v39);

      v37(v24, v21);
      v37(v30, v21);
      v41 = v59;
      v43 = v68;
      v42 = v69;
      if (v40)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1A8, &unk_27520DD60);
        v44 = swift_allocObject();
        v56 = xmmword_27520D440;
        *(v44 + 16) = xmmword_27520D440;
        sub_27520B998();
        v45 = sub_27520B8D8();
        v46 = v65;
        (v65)(v32, v21);
        *(v44 + 32) = v45;
        *(v44 + 40) = -1;
        sub_27520B8C8();
        sub_27520B9F8();
        v46(v32, v21);
        v47 = swift_allocObject();
        *(v47 + 16) = v56;
        sub_27520B998();
        v48 = sub_27520B8D8();
        v46(v32, v21);
        *(v47 + 32) = v48;
        *(v47 + 40) = -1;
        sub_27520B8C8();
        sub_27520B9F8();
        v46(v32, v21);
        v49 = v63;
        sub_27520B9E8();
        v50 = v62;
        sub_27520B958();
        v51 = *(v43 + 8);
        v51(v49, v42);
        sub_27520B8F8();
        v51(v50, v42);
        v52 = v58;
        sub_27520B9E8();
        sub_27520B958();
        v51(v52, v42);
        sub_27520B8F8();
        v51(v49, v42);
        sub_27520BA08();
        sub_27520B948();
        v51(v52, v42);
        v53 = v61;
        sub_27520BA08();
        v54 = v67;
        sub_27520B948();
        v51(v53, v42);
        v55 = v59;
        sub_27520BA68();
        v51(v52, v42);
        v51(v49, v42);
        v51(v50, v42);
        v51(v64, v42);
        v51(v54, v42);
        v51(v66, v42);
        v41 = v55;
        v36 = 0;
      }

      return (*(v43 + 56))(v41, v36, 1, v42);
    }
  }

  __break(1u);
  return result;
}

uint64_t l2Norm(_:alongAxes:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_27520BA38();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  sub_27520B9E8();
  sub_27520B958();
  v9 = *(v3 + 8);
  v9(v6, v2);
  sub_27520B8F8();
  return (v9)(v8, v2);
}

uint64_t sub_2751F56E8(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_27520BE58();
  if (!v19)
  {
    return sub_27520BCE8();
  }

  v41 = v19;
  v45 = sub_27520BFD8();
  v32 = sub_27520BFE8();
  sub_27520BFB8();
  result = sub_27520BE48();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_27520BEA8();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_27520BFC8();
      result = sub_27520BE78();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t DirectedWeightedGraph.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  DirectedWeightedGraph.init(name:)(a1, a2);
  return v4;
}

uint64_t static DirectedEdge.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (sub_27520BBC8())
  {
    v12[0] = a3;
    v12[1] = a4;
    v12[2] = a5;
    v12[3] = a6;
    type metadata accessor for DirectedEdge(0, v12);
    v10 = sub_27520BBC8();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_2751F5D18(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1836020326 && a2 == 0xE400000000000000;
  if (v3 || (sub_27520C218() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 28532 && a2 == 0xE200000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_27520C218();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2751F5E14(char a1)
{
  if (a1)
  {
    return 28532;
  }

  else
  {
    return 1836020326;
  }
}

uint64_t sub_2751F5ECC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2751F5F20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t DirectedEdge.encode(to:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v10[0] = *(a2 + 32);
  v10[1] = v3;
  v11[0] = v3;
  v11[1] = v10[0];
  type metadata accessor for DirectedEdge.CodingKeys(255, v11);
  swift_getWitnessTable();
  v4 = sub_27520C1C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27520C2B8();
  LOBYTE(v11[0]) = 0;
  v8 = v12;
  sub_27520C1A8();
  if (!v8)
  {
    LOBYTE(v11[0]) = 1;
    sub_27520C1A8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t DirectedEdge.hashValue.getter(uint64_t a1)
{
  sub_27520C278();
  sub_27520BBB8();
  sub_27520BBB8();
  return sub_27520C298();
}

uint64_t DirectedEdge.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v37 = a6;
  v40 = *(a2 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v38 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v42 = &v35 - v13;
  v45 = v14;
  v46 = v15;
  v47 = v16;
  v48 = v17;
  type metadata accessor for DirectedEdge.CodingKeys(255, &v45);
  swift_getWitnessTable();
  v44 = sub_27520C128();
  v39 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v19 = &v35 - v18;
  v41 = a2;
  v45 = a2;
  v46 = a3;
  v43 = a3;
  v47 = a4;
  v48 = a5;
  v20 = type metadata accessor for DirectedEdge(0, &v45);
  v36 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v35 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v23 = v49;
  sub_27520C2A8();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = v22;
  v49 = v20;
  v25 = v39;
  v26 = v40;
  LOBYTE(v45) = 0;
  v27 = v41;
  sub_27520C108();
  v28 = *(v26 + 32);
  v35 = v24;
  v29 = v42;
  v42 = v28;
  (v28)(v24, v29, v27);
  LOBYTE(v45) = 1;
  v30 = v38;
  sub_27520C108();
  (*(v25 + 8))(v19, v44);
  v31 = v49;
  v32 = v35;
  (v42)(&v35[*(v49 + 52)], v30, v27);
  v33 = v36;
  (*(v36 + 16))(v37, v32, v31);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v33 + 8))(v32, v31);
}

uint64_t sub_2751F65F4(uint64_t a1, uint64_t a2)
{
  sub_27520C278();
  DirectedEdge.hash(into:)(v4, a2);
  return sub_27520C298();
}

uint64_t DirectedEdge.description.getter(uint64_t a1)
{
  sub_27520BF68();
  MEMORY[0x277C6D100](0x203A6D6F726628, 0xE700000000000000);
  sub_27520C208();
  MEMORY[0x277C6D100](0x203A6F74202CLL, 0xE600000000000000);
  sub_27520C208();
  MEMORY[0x277C6D100](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_2751F6748()
{
  v0 = sub_2751FC980();
  v1;
  return v0;
}

uint64_t sub_2751F6780(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_2751F67D4()
{
  sub_2751FC658();

  return v0;
}

uint64_t sub_2751F67FC(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t DirectedIndexGraph.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  DirectedIndexGraph.init(name:)(a1, a2);
  return v4;
}

void *DirectedIndexGraph.init(name:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 80);
  v7 = sub_27520BD88();
  swift_getTupleTypeMetadata2();
  v8 = sub_27520BCE8();
  v9 = sub_2751FC68C(v8, v6, v7, *(v5 + 104));

  v2[3] = a2;
  v2[4] = v9;
  v2[2] = a1;
  return v2;
}

uint64_t sub_2751F6958()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 80);
  v3 = sub_27520BD88();
  v4 = *(v1 + 104);
  v6 = v5;
  LOBYTE(v4) = MEMORY[0x277C6D070](v6, v2, v3, v4);

  return v4 & 1;
}

uint64_t sub_2751F6A08()
{
  swift_beginAccess();
  sub_27520BD88();
  sub_27520BB48();
  v0;
  swift_getWitnessTable();
  return sub_27520BD98();
}

uint64_t sub_2751F6AD4(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v65 = v50 - v6;
  v57 = sub_27520BD88();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v59 = sub_27520BF08();
  v8 = *(v59 - 8);
  v9 = MEMORY[0x28223BE20](v59);
  v63 = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v62 = v50 - v11;
  v12 = *(v2 + 88);
  v13 = *(v3 + 96);
  v69[0] = v4;
  v69[1] = v12;
  v56 = v13;
  v70 = v13;
  v55 = type metadata accessor for DirectedEdge(0, v69);
  v71 = sub_27520BCE8();
  swift_beginAccess();
  v15 = v1[4];
  v16 = *(v15 + 64);
  v50[0] = v15 + 64;
  v17 = 1 << *(v15 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v60 = TupleTypeMetadata2 - 8;
  v61 = TupleTypeMetadata2;
  v50[1] = v5 + 16;
  v64 = (v5 + 32);
  v58 = (v8 + 32);
  v51 = v5;
  v54 = (v5 + 8);
  v52 = v15;
  result = v14;
  v22 = 0;
  v66 = v4;
  *&v23 = v4;
  *(&v23 + 1) = v12;
  v53 = v23;
  if (v19)
  {
    while (1)
    {
      v24 = v22;
      v25 = v61;
LABEL_12:
      v30 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v31 = v30 | (v24 << 6);
      v32 = v52;
      v33 = v51;
      v35 = v65;
      v34 = v66;
      (*(v51 + 16))(v65, *(v52 + 48) + *(v51 + 72) * v31, v66);
      v36 = *(*(v32 + 56) + 8 * v31);
      v37 = *(v25 + 48);
      v38 = *(v33 + 32);
      v29 = v63;
      v38(v63, v35, v34);
      *&v29[v37] = v36;
      v39 = *(v25 - 8);
      v40.n128_f64[0] = (*(v39 + 56))(v29, 0, 1, v25);
      v40;
      v27 = v24;
      v28 = v62;
LABEL_13:
      (*v58)(v28, v29, v59);
      if ((*(v39 + 48))(v28, 1, v25) == 1)
      {
        break;
      }

      v41 = *&v28[*(v25 + 48)];
      v42 = v65;
      v43 = v66;
      v44 = (*v64)(v65, v28, v66);
      v67 = v27;
      v68 = v41;
      MEMORY[0x28223BE20](v44);
      v45 = v56;
      *&v50[-6] = v53;
      *&v50[-4] = v45;
      v50[-2] = v42;
      v46 = v57;
      WitnessTable = swift_getWitnessTable();
      v49 = sub_2751F56E8(sub_2751FC9B4, &v50[-8], v46, v55, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v48);

      v68 = v49;
      sub_27520BD88();
      swift_getWitnessTable();
      sub_27520BD38();
      result = (*v54)(v42, v43);
      v22 = v67;
      if (!v19)
      {
        goto LABEL_5;
      }
    }

    return v71;
  }

  else
  {
LABEL_5:
    if (v20 <= v22 + 1)
    {
      v26 = v22 + 1;
    }

    else
    {
      v26 = v20;
    }

    v27 = v26 - 1;
    v25 = v61;
    v28 = v62;
    v29 = v63;
    while (1)
    {
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v24 >= v20)
      {
        v39 = *(v61 - 8);
        (*(v39 + 56))(v63, 1, 1, v61);
        v19 = 0;
        goto LABEL_13;
      }

      v19 = *(v50[0] + 8 * v24);
      ++v22;
      if (v19)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2751F70D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v20 = a4;
  v21 = a5;
  v10 = *(a2 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  v16 = *(v10 + 16);
  v16(&v20 - v14);
  (v16)(v13, a1, a2);
  v17 = *(v10 + 32);
  v17(a6, v15, a2);
  v22[0] = a2;
  v22[1] = a3;
  v22[2] = v20;
  v22[3] = v21;
  v18 = type metadata accessor for DirectedEdge(0, v22);
  return (v17)(a6 + *(v18 + 52), v13, a2);
}

uint64_t sub_2751F723C(uint64_t a1)
{
  swift_beginAccess();
  sub_27520BD88();
  sub_27520BB48();
  swift_getWitnessTable();
  return sub_27520BC58() & 1;
}

BOOL sub_2751F7318(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v10[-v6];
  v8 = sub_2751F723C(v5);
  if ((v8 & 1) == 0)
  {
    (*(v4 + 16))(v7, a1, v3);
    v11 = sub_27520BCE8();
    swift_beginAccess();
    sub_27520BD88();
    sub_27520BB68();
    sub_27520BB98();
    swift_endAccess();
  }

  return (v8 & 1) == 0;
}

uint64_t sub_2751F7490(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v55 = sub_27520BF08();
  v5 = *(v55 - 8);
  v6 = MEMORY[0x28223BE20](v55);
  v8 = &v48[-v7];
  v9 = *(v4 - 8);
  v10 = MEMORY[0x28223BE20](v6);
  v12 = &v48[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v10);
  v67 = &v48[-v14];
  MEMORY[0x28223BE20](v13);
  v64 = &v48[-v15];
  v16 = sub_2751F723C(a1);
  if ((v16 & 1) == 0)
  {
    return v16 & 1;
  }

  v49 = v16;
  v53 = v12;
  v54 = v8;
  swift_beginAccess();
  v62 = sub_27520BD88();
  v17 = *(v3 + 104);
  v18 = sub_27520BB68();
  v56 = a1;
  v52 = v18;
  sub_27520BB38();
  swift_endAccess();

  swift_beginAccess();
  v20 = v1[4];
  v21 = v20 + 64;
  v22 = 1 << *(v20 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v20 + 64);
  v25 = (v22 + 63) >> 6;
  v65 = v9 + 16;
  v58 = v9 + 32;
  v57 = (v9 + 8);
  v60 = v9;
  v51 = (v9 + 56);
  v50 = (v5 + 8);
  v63 = v20;
  result = v19;
  v27 = 0;
  v66 = v4;
  v28 = v17;
  v59 = v1;
  if (v24)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v30 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v30 >= v25)
    {

      LOBYTE(v16) = v49;
      return v16 & 1;
    }

    v24 = *(v21 + 8 * v30);
    ++v27;
    if (v24)
    {
      v29 = v28;
      v27 = v30;
LABEL_13:
      v31 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      v32 = v64;
      v33 = v60;
      v34 = *(v63 + 48) + *(v60 + 72) * (v31 | (v27 << 6));
      v35 = v66;
      v61 = *(v60 + 16);
      (v61)(v64, v34, v66);
      (*(v33 + 32))(v67, v32, v35);
      swift_beginAccess();
      v36;
      v28 = v29;
      sub_27520BB88();

      if (v68[0])
      {
        v71 = v68[0];
        swift_getWitnessTable();
        sub_27520BE88();

        if (v70 == 1)
        {
          result = (*v57)(v67, v66);
          goto LABEL_7;
        }

        v37 = v53;
        (v61)(v53, v67, v66);
        v61 = sub_2751ECB80(&v69);
        v38 = sub_27520BB78();
        if (*v39)
        {
          v40 = v54;
          sub_27520BD58();
          v38(v68, 0);
          v41 = *v57;
          v42 = v37;
          v43 = v66;
          (*v57)(v42, v66);
          (v61)(&v69, 0);
          v41(v67, v43);
          v44 = 0;
          v45 = v43;
        }

        else
        {
          v38(v68, 0);
          v46 = *v57;
          v47 = v66;
          (*v57)(v37, v66);
          (v61)(&v69, 0);
          v46(v67, v47);
          v44 = 1;
          v40 = v54;
          v45 = v47;
        }

        (*v51)(v40, v44, 1, v45);
        result = (*v50)(v40, v55);
        if (!v24)
        {
          continue;
        }
      }

      else
      {
        result = (*v57)(v67, v35);
LABEL_7:
        if (!v24)
        {
          continue;
        }
      }

LABEL_8:
      v29 = v28;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2751F7B04(uint64_t a1)
{
  swift_beginAccess();
  sub_27520BD88();
  v1;
  sub_27520BB88();

  result = v3;
  if (!v3)
  {
    return sub_27520BCE8();
  }

  return result;
}

uint64_t sub_2751F7BCC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_27520BD88();
  sub_27520BB68();
  v2;
  swift_getWitnessTable();
  v3 = sub_27520BC48();

  return v3 & 1;
}

uint64_t sub_2751F7D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (sub_27520BBC8())
  {
    sub_27520BD88();
    swift_getWitnessTable();
    v8 = sub_27520BC58();
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_2751F7DD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 80);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v30 - v13;
  if ((sub_2751F723C(v12) & 1) == 0 || (sub_2751F723C(a2) & 1) == 0)
  {
    return 0;
  }

  v32 = v11;
  v15 = swift_allocObject();
  v16 = v8;
  v17 = v15;
  v15[2] = v7;
  v18 = v6[11];
  v15[3] = v18;
  v19 = v6[12];
  v15[4] = v19;
  v20 = v6[13];
  v15[5] = v20;
  v21 = *(v16 + 16);
  v33 = v16 + 16;
  v31 = v21;
  v21(v14, a2, v7);
  swift_beginAccess();
  v22 = swift_allocObject();
  v22[2] = v7;
  v22[3] = v18;
  v22[4] = v19;
  v22[5] = v20;
  v22[6] = sub_2751FCA7C;
  v22[7] = v17;
  v35 = v17;
  swift_isUniquelyReferenced_nonNull_native();
  v36 = *(v3 + 32);
  v23 = v36;
  *(v3 + 32) = 0x8000000000000000;
  v30[2] = sub_2751FC474(a1, v7, v20);
  if (__OFADD__(*(v23 + 16), (v24 & 1) == 0))
  {
    __break(1u);
LABEL_12:
    result = sub_27520C258();
    __break(1u);
    return result;
  }

  v25 = v24;
  v34 = sub_27520BD88();
  sub_27520C018();
  v26 = sub_27520BFF8();
  v27 = v36;
  v30[1] = v20;
  if (v26)
  {
    sub_2751FC474(a1, v7, v20);
    if ((v25 & 1) != (v28 & 1))
    {
      goto LABEL_12;
    }
  }

  *(v3 + 32) = v27;
  if ((v25 & 1) == 0)
  {
    v36 = (v22[6])();
    v31(v32, a1, v7);
    sub_27520C008();
  }

  sub_27520BD48();
  swift_endAccess();

  return 1;
}

uint64_t sub_2751F8114(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 80);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = v21 - v8;
  v10 = sub_27520BF08();
  v22 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v21 - v11;
  if ((sub_2751F723C(a1) & 1) == 0)
  {
    return 0;
  }

  if ((sub_2751F723C(a2) & 1) == 0)
  {
    return 0;
  }

  v21[0] = v7;
  swift_beginAccess();
  sub_27520BD88();
  v13 = *(v5 + 104);
  v14;
  v21[1] = v13;
  sub_27520BB88();

  if (!v24)
  {
    return 0;
  }

  v23[0] = v24;
  swift_getWitnessTable();
  sub_27520BE88();

  if (v25)
  {
    return 0;
  }

  v16 = v21[0];
  (*(v21[0] + 16))(v9, a1, v6);
  v17 = sub_2751ECB80(&v24);
  sub_27520BB68();
  v18 = sub_27520BB78();
  if (*v19)
  {
    sub_27520BD58();
    v18(v23, 0);
    (*(v16 + 8))(v9, v6);
    (v17)(&v24, 0);
    v20 = 0;
  }

  else
  {
    v18(v23, 0);
    (*(v16 + 8))(v9, v6);
    (v17)(&v24, 0);
    v20 = 1;
  }

  (*(v16 + 56))(v12, v20, 1, v6);
  (*(v22 + 8))(v12, v10);
  return 1;
}

uint64_t sub_2751F84C0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_27520C218() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636E6563616A6461 && a2 == 0xE900000000000079)
  {

    return 1;
  }

  else
  {
    v6 = sub_27520C218();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2751F8594(char a1)
{
  sub_27520C278();
  MEMORY[0x277C6D7A0](a1 & 1);
  return sub_27520C298();
}

uint64_t sub_2751F85DC(char a1)
{
  if (a1)
  {
    return 0x636E6563616A6461;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_2751F8674(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void *, void, void, void, void, void))
{
  sub_27520C278();
  a4(v8, *v4, a2[2], a2[3], a2[4], a2[5]);
  return sub_27520C298();
}

uint64_t sub_2751F871C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5]);
  *a5 = result;
  return result;
}

uint64_t sub_2751F8758@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5]);
  *a3 = result;
  return result;
}

uint64_t sub_2751F8794(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2751F87E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t DirectedIndexGraph.deinit()
{

  return v0;
}

uint64_t DirectedIndexGraph.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_2751F88A4(void *a1)
{
  v2 = v1;
  v4 = *(*v2 + 96);
  v5 = *(*v2 + 104);
  v16 = *(*v2 + 80);
  v24 = v16;
  v17 = v5;
  v18 = v4;
  v25 = v4;
  v26 = v5;
  type metadata accessor for DirectedIndexGraph.CodingKeys(255, &v24);
  swift_getWitnessTable();
  v6 = sub_27520C1C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27520C2B8();
  swift_beginAccess();
  LOBYTE(v24) = 0;
  v10;
  v11 = v19;
  sub_27520C168();
  if (v11)
  {
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v13 = v7;

    swift_beginAccess();
    v27 = v2[4];
    v23 = 1;
    sub_27520BD88();
    sub_27520BB68();
    v14 = v18;
    v22 = v18;
    WitnessTable = swift_getWitnessTable();
    v20 = v14;
    v21 = WitnessTable;
    swift_getWitnessTable();
    sub_27520C1A8();
    return (*(v13 + 8))(v9, v6);
  }
}

uint64_t DirectedIndexGraph.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  DirectedIndexGraph.init(from:)(a1);
  return v2;
}

void *DirectedIndexGraph.init(from:)(void *a1)
{
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 96);
  v6 = *(*v1 + 104);
  v38 = *(*v1 + 80);
  v3 = v38;
  v39 = v4;
  v32 = v4;
  v29 = v5;
  v40 = v5;
  v41 = v6;
  type metadata accessor for DirectedIndexGraph.CodingKeys(255, &v38);
  swift_getWitnessTable();
  v7 = sub_27520C128();
  v27 = *(v7 - 8);
  v28 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v10 = sub_27520BD88();
  swift_getTupleTypeMetadata2();
  v11 = sub_27520BCE8();
  v31 = v6;
  v12 = sub_2751FC68C(v11, v3, v10, v6);

  v33 = a1;
  v34 = v1;
  v1[4] = v12;
  v13 = v1 + 4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = v9;
  v15 = v30;
  sub_27520C2A8();
  if (v15)
  {
    v25 = v34;

    v38 = v3;
    v39 = v32;
    v40 = v29;
    v41 = v31;
    type metadata accessor for DirectedIndexGraph(0, &v38);
    swift_deallocPartialClassInstance();
    __swift_destroy_boxed_opaque_existential_1(v33);
  }

  else
  {
    v17 = v27;
    v16 = v28;
    LOBYTE(v38) = 0;
    v18 = sub_27520C0C8();
    v20 = v34;
    v34[2] = v18;
    v20[3] = v21;
    sub_27520BB68();
    LOBYTE(v38) = 1;
    v22 = v32;
    v37 = v32;
    WitnessTable = swift_getWitnessTable();
    v35 = v22;
    v36 = WitnessTable;
    swift_getWitnessTable();
    sub_27520C108();
    (*(v17 + 8))(v14, v16);
    v24 = v42;
    swift_beginAccess();
    *v13 = v24;

    __swift_destroy_boxed_opaque_existential_1(v33);
    return v34;
  }

  return v25;
}

uint64_t sub_2751F8F84@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 272))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_2751F900C()
{
  sub_2751FCAFC();

  return v0;
}

uint64_t sub_2751F9034(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
}

void *DirectedWeightedGraph.init(name:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *v2;
  v7 = *(*v2 + 312);
  v14 = *(*v2 + 280);
  v15 = *(v6 + 296);
  v16 = v7;
  v8 = type metadata accessor for DirectedEdge(255, &v14);
  v9 = *(v5 + 288);
  swift_getTupleTypeMetadata2();
  v10 = sub_27520BCE8();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_2751FC68C(v10, v8, v9, WitnessTable);

  v2[5] = v12;
  DirectedIndexGraph.init(name:)(a1, a2);
  return v2;
}

BOOL sub_2751F91EC(uint64_t a1, uint64_t a2)
{
  v2 = sub_27520C088();

  return v2 != 0;
}

uint64_t sub_2751F9234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_2751F92A8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_2751F9314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_2751F9384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

BOOL sub_2751F93F4@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2751F91EC(*a1, a1[1]);
  *a2 = result;
  return result;
}

BOOL sub_2751F9484@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2751F91EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2751F94D0@<X0>(_BYTE *a2@<X8>)
{
  result = sub_2751FD8F0();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2751F9510(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2751F9564(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_2751F95B8(void *a1)
{
  v2 = swift_allocObject();
  sub_2751F9608(a1);
  return v2;
}

void *sub_2751F9608(void *a1)
{
  v2 = v1;
  v44 = a1;
  v4 = *(*v1 + 288);
  v5 = *(*v1 + 296);
  v6 = *(*v1 + 304);
  v7 = *(*v1 + 312);
  v8 = *(*v1 + 320);
  v9 = *(*v1 + 328);
  v37 = *(*v1 + 280);
  v3 = v37;
  v38 = v4;
  v39 = v5;
  v40 = v6;
  v41 = v7;
  v42 = v8;
  v33 = v8;
  v26 = v9;
  v43 = v9;
  type metadata accessor for DirectedWeightedGraph.CodingKeys(255, &v37);
  WitnessTable = swift_getWitnessTable();
  v25 = sub_27520C128();
  v24 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v11 = &v24 - v10;
  v29 = v5;
  v30 = v3;
  v37 = v3;
  v38 = v5;
  v27 = v7;
  v28 = v6;
  v39 = v6;
  v40 = v7;
  v12 = type metadata accessor for DirectedEdge(255, &v37);
  swift_getTupleTypeMetadata2();
  v13 = sub_27520BCE8();
  v14 = swift_getWitnessTable();
  v34 = v4;
  v15 = sub_2751FC68C(v13, v12, v4, v14);

  v1[5] = v15;
  __swift_project_boxed_opaque_existential_1(v44, v44[3]);
  v16 = v32;
  sub_27520C2A8();
  if (v16)
  {
    v18 = v33;
    v17 = v34;
    __swift_destroy_boxed_opaque_existential_1(v44);

    v37 = v30;
    v38 = v17;
    v39 = v29;
    v40 = v28;
    v41 = v27;
    v42 = v18;
    v43 = v26;
    type metadata accessor for DirectedWeightedGraph(0, &v37);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v19 = v24;
    sub_27520BB68();
    v35 = swift_getWitnessTable();
    v36 = v33;
    swift_getWitnessTable();
    v20 = v25;
    sub_27520C108();
    v22 = v37;
    swift_beginAccess();
    v2[5] = v22;

    v23 = v44;
    sub_2751FD8F8(v44, &v37);
    DirectedIndexGraph.init(from:)(&v37);
    (*(v19 + 8))(v11, v20);
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  return v2;
}

uint64_t sub_2751F9A04(void *a1)
{
  v3 = *v1;
  v4 = *v1;
  v20 = *(*v1 + 280);
  v21 = v3[36];
  v5 = v3[37];
  v6 = v3[38];
  v22 = v3[41];
  v27 = v20;
  v28 = v21;
  v29 = v5;
  v30 = v6;
  v19 = *(v4 + 39);
  v31 = v19;
  v32 = v22;
  type metadata accessor for DirectedWeightedGraph.CodingKeys(255, &v27);
  swift_getWitnessTable();
  v7 = sub_27520C1C8();
  v23 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;
  v10 = a1[3];
  v18 = a1;
  v11 = a1;
  v13 = v12;
  __swift_project_boxed_opaque_existential_1(v11, v10);
  sub_27520C2B8();
  swift_beginAccess();
  v33 = v1[5];
  v27 = v20;
  v28 = v5;
  v29 = v6;
  v30 = v19;
  type metadata accessor for DirectedEdge(255, &v27);
  swift_getWitnessTable();
  sub_27520BB68();
  WitnessTable = swift_getWitnessTable();
  v26 = v22;
  swift_getWitnessTable();
  v14 = v24;
  sub_27520C1A8();
  if (v14)
  {
    return (*(v23 + 8))(v9, v13);
  }

  v16 = v23;
  sub_2751F88A4(v18);
  return (*(v16 + 8))(v9, v13);
}

uint64_t sub_2751F9D20()
{
  v1 = *v0;
  v2 = *v0;
  swift_beginAccess();
  v3 = *(v1 + 280);
  v4 = sub_27520BD88();
  v5 = *(v1 + 312);
  v7 = v6;
  LOBYTE(v4) = MEMORY[0x277C6D070](v7, v3, v4, v5);

  if (v4)
  {
    swift_beginAccess();
    v8 = v0[5];
    v9;
    v15 = v3;
    v16 = *(v2 + 296);
    v17 = v5;
    v10 = type metadata accessor for DirectedEdge(0, &v15);
    v11 = *(v2 + 288);
    WitnessTable = swift_getWitnessTable();
    v13 = MEMORY[0x277C6D070](v8, v10, v11, WitnessTable);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_2751F9E98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v61 = a3;
  v7 = *v3;
  v64 = *(*v3 + 288);
  v8 = sub_27520BF08();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v50 - v9;
  v12 = *(v7 + 296);
  v13 = *(v7 + 312);
  v67 = *(v7 + 280);
  v11 = v67;
  v65 = v12;
  v68 = v12;
  v69 = v13;
  v59 = type metadata accessor for DirectedEdge(0, &v67);
  v14 = MEMORY[0x28223BE20](v59);
  v60 = v50 - v15;
  v16 = *(v11 - 8);
  v17 = MEMORY[0x28223BE20](v14);
  v58 = v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v62 = v50 - v20;
  MEMORY[0x28223BE20](v19);
  v63 = v50 - v21;
  v22 = a1;
  if ((sub_2751F723C(a1) & 1) == 0 || (sub_2751F723C(a2) & 1) == 0)
  {
    return 0;
  }

  v54 = v10;
  v23 = swift_allocObject();
  v24 = v16;
  v25 = v23;
  *&v26 = v11;
  v27 = v64;
  *(&v26 + 1) = v64;
  v28 = v65;
  *(v23 + 16) = v26;
  *(v23 + 32) = v28;
  *(v23 + 48) = v13;
  v29 = *(v7 + 320);
  *(v23 + 56) = v29;
  v30 = *(v7 + 328);
  *(v23 + 64) = v30;
  v51 = v24;
  v31 = *(v24 + 16);
  v53 = a2;
  v50[1] = v24 + 16;
  v57 = v31;
  v31(v63, a2, v11);
  swift_beginAccess();
  v32 = swift_allocObject();
  *(v32 + 16) = v11;
  *(v32 + 24) = v27;
  *(v32 + 32) = v65;
  *(v32 + 48) = v13;
  *(v32 + 56) = v29;
  *(v32 + 64) = v30;
  *(v32 + 72) = sub_2751FD968;
  v52 = v25;
  *(v32 + 80) = v25;
  swift_isUniquelyReferenced_nonNull_native();
  v66 = v4[4];
  v33 = v66;
  v4[4] = 0x8000000000000000;
  sub_2751FC474(v22, v11, v13);
  if (__OFADD__(*(v33 + 16), (v34 & 1) == 0))
  {
    __break(1u);
    goto LABEL_14;
  }

  v35 = v34;
  v55 = sub_27520BD88();
  sub_27520C018();
  v36 = sub_27520BFF8();
  v37 = v66;
  v56 = v22;
  if (v36)
  {
    sub_2751FC474(v22, v11, v13);
    v39 = v51;
    if ((v35 & 1) == (v38 & 1))
    {
      v4[4] = v37;
      if (v35)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

LABEL_14:
    result = sub_27520C258();
    __break(1u);
    return result;
  }

  v39 = v51;
  v4[4] = v66;
  if ((v35 & 1) == 0)
  {
LABEL_10:
    v66 = (*(v32 + 72))();
    v57(v62, v56, v11);
    sub_27520C008();
  }

LABEL_11:
  sub_27520BD48();
  swift_endAccess();
  v41 = v62;
  v42 = v57;
  v57(v62, v56, v11);
  v43 = v58;
  v42(v58, v53, v11);
  v44 = *(v39 + 32);
  v45 = v60;
  v44(v60, v41, v11);
  v67 = v11;
  v68 = v65;
  v69 = v13;
  v46 = type metadata accessor for DirectedEdge(0, &v67);
  v44(&v45[*(v46 + 52)], v43, v11);
  v47 = v64;
  v48 = *(v64 - 8);
  v49 = v54;
  (*(v48 + 16))(v54, v61, v64);
  (*(v48 + 56))(v49, 0, 1, v47);
  swift_beginAccess();
  swift_getWitnessTable();
  sub_27520BB68();
  sub_27520BB98();
  swift_endAccess();

  return 1;
}

uint64_t sub_2751FA484(uint64_t *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 280);
  v5 = *(*v1 + 288);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v61 = &v52 - v7;
  v60 = sub_27520BF08();
  v8 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v80 = &v52 - v9;
  v10 = v3[37];
  v11 = v3[38];
  v12 = v3[39];
  v83 = v4;
  v84 = v10;
  v74 = v11;
  v75 = v10;
  v85 = v11;
  v86 = v12;
  v72 = type metadata accessor for DirectedEdge(0, &v83);
  v65 = *(v72 - 8);
  v13 = MEMORY[0x28223BE20](v72);
  v71 = &v52 - v14;
  v15 = *(v5 - 8);
  v16 = MEMORY[0x28223BE20](v13);
  v59 = &v52 - v17;
  v62 = *(v4 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v70 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v69 = &v52 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v79 = &v52 - v23;
  v53 = v24;
  MEMORY[0x28223BE20](v22);
  v81 = &v52 - v25;
  swift_beginAccess();
  v77 = v1;
  sub_27520BD88();
  v26;
  v76 = a1;
  v73 = v12;
  sub_27520BB88();

  v27 = v83;
  if (!v83)
  {
    return sub_27520BCE8();
  }

  v28 = sub_27520BCE8();
  v82 = v28;
  if (sub_27520BD28())
  {
    v58 = TupleTypeMetadata2;
    v68 = v5;
    v29 = 0;
    v30 = v62;
    v31 = (v62 + 16);
    v66 = (v62 + 32);
    ++v65;
    v64 = (v15 + 48);
    v57 = (v15 + 32);
    v56 = (v15 + 16);
    v55 = (v15 + 8);
    v63 = (v62 + 8);
    v54 = (v8 + 8);
    v32 = v79;
    v78 = (v62 + 16);
    v67 = v27;
    while (1)
    {
      v35 = sub_27520BD08();
      sub_27520BCC8();
      if (v35)
      {
        v36 = *(v30 + 16);
        v36(v81, (v27 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v29), v4);
        v37 = (v29 + 1);
        if (__OFADD__(v29, 1))
        {
          goto LABEL_13;
        }
      }

      else
      {
        result = sub_27520BF88();
        if (v53 != 8)
        {
          __break(1u);
          return result;
        }

        v83 = result;
        v36 = *v31;
        (*v31)(v81, &v83, v4);
        swift_unknownObjectRelease();
        v37 = (v29 + 1);
        if (__OFADD__(v29, 1))
        {
LABEL_13:
          __break(1u);
LABEL_14:

          return v82;
        }
      }

      v79 = v37;
      v38 = *v66;
      (*v66)(v32, v81, v4);
      v39 = v69;
      v36(v69, v76, v4);
      v40 = v70;
      v36(v70, v32, v4);
      v41 = v71;
      v38(v71, v39, v4);
      v83 = v4;
      v84 = v75;
      v85 = v74;
      v86 = v73;
      v42 = type metadata accessor for DirectedEdge(0, &v83);
      v38(&v41[*(v42 + 52)], v40, v4);
      swift_beginAccess();
      v43;
      v44 = v72;
      swift_getWitnessTable();
      v45 = v80;
      v46 = v68;
      sub_27520BB88();

      (*v65)(v41, v44);
      if ((*v64)(v45, 1, v46) == 1)
      {
        (*v63)(v32, v4);
        (*v54)(v80, v60);
      }

      else
      {
        v47 = v59;
        (*v57)(v59, v80, v46);
        v48 = *(v58 + 48);
        v49 = v61;
        v36(v61, v32, v4);
        (*v56)(&v49[v48], v47, v46);
        sub_27520BD88();
        sub_27520BD48();
        v50 = v47;
        v30 = v62;
        (*v55)(v50, v46);
        (*v63)(v32, v4);
      }

      v27 = v67;
      v33 = v79;
      v34 = sub_27520BD28();
      ++v29;
      v31 = v78;
      if (v33 == v34)
      {
        goto LABEL_14;
      }
    }
  }

  return v28;
}

void *DirectedWeightedGraph.deinit()
{

  return v0;
}

uint64_t DirectedWeightedGraph.__deallocating_deinit()
{
  DirectedWeightedGraph.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_2751FAD4C()
{
  sub_2751FCAC8();

  return v0;
}

uint64_t sub_2751FAD74(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

uint64_t DirectedGraph.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  DirectedGraph.init(name:)(a1, a2);
  return v4;
}

void *DirectedGraph.init(name:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 392);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v7 = sub_27520BCE8();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = sub_2751FC68C(v7, AssociatedTypeWitness, v5, AssociatedConformanceWitness);

  v2[6] = v9;

  return DirectedWeightedGraph.init(name:)(a1, a2);
}

BOOL sub_2751FAF14(uint64_t a1, uint64_t a2)
{
  v2 = sub_27520C088();

  return v2 != 0;
}

uint64_t sub_2751FAF5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_2751FAFD0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_2751FB03C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_2751FB0AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

BOOL sub_2751FB11C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2751FAF14(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2751FB160(uint64_t a1@<X8>)
{
  strcpy(a1, "vertexValues");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

BOOL sub_2751FB1A4@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2751FAF14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2751FB1E0@<X0>(_BYTE *a4@<X8>)
{
  result = sub_2751FD8F0();
  *a4 = result & 1;
  return result;
}

uint64_t sub_2751FB21C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2751FB270(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_2751FB2C4(void *a1)
{
  v2 = swift_allocObject();
  sub_2751FB314(a1);
  return v2;
}

void *sub_2751FB314(void *a1)
{
  v2 = v1;
  v5 = *(*v1 + 400);
  v6 = *(*v1 + 408);
  v7 = *(*v1 + 416);
  v8 = *(*v1 + 424);
  v38 = *(*v1 + 392);
  v4 = v38;
  v39 = v5;
  v31 = v7;
  v32 = v5;
  v40 = v6;
  v41 = v7;
  v30 = v8;
  v42 = v8;
  type metadata accessor for DirectedGraph.CodingKeys(255, &v38);
  WitnessTable = swift_getWitnessTable();
  v9 = sub_27520C128();
  v28 = *(v9 - 8);
  v29 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v13 = sub_27520BCE8();
  v35 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = sub_2751FC68C(v13, AssociatedTypeWitness, v4, AssociatedConformanceWitness);

  v1[6] = v14;
  v15 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  v16 = v34;
  sub_27520C2A8();
  if (v16)
  {
    v17 = v35;
    __swift_destroy_boxed_opaque_existential_1(v43);

    v38 = v4;
    v39 = v32;
    v40 = v17;
    v41 = v31;
    v42 = v30;
    type metadata accessor for DirectedGraph(0, &v38);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_27520BB68();
    v18 = v35;
    v19 = swift_getAssociatedConformanceWitness();
    v20 = *(v18 + 8);
    v36 = v19;
    v37 = v20;
    swift_getWitnessTable();
    v21 = v29;
    sub_27520C108();
    v22 = v21;
    v24 = v38;
    swift_beginAccess();
    v2[6] = v24;

    v25 = v43;
    sub_2751FD8F8(v43, &v38);
    sub_2751F9608(&v38);
    (*(v28 + 8))(v11, v22);
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  return v2;
}

uint64_t sub_2751FB6F0(void *a1)
{
  v3 = *(*v1 + 424);
  v4 = *(*v1 + 392);
  v17 = *(*v1 + 408);
  v18 = v4;
  v22[0] = v4;
  v22[1] = v17;
  v23 = v3;
  type metadata accessor for DirectedGraph.CodingKeys(255, v22);
  swift_getWitnessTable();
  v5 = sub_27520C1C8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v9 = a1[3];
  v16 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_27520C2B8();
  swift_beginAccess();
  v24 = v1[6];
  v10 = v17;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_27520BB68();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = *(v10 + 16);
  v20 = AssociatedConformanceWitness;
  v21 = v12;
  swift_getWitnessTable();
  v13 = v19;
  sub_27520C1A8();
  if (!v13)
  {
    sub_2751F9A04(v16);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2751FB98C()
{
  v1 = *v0;
  v2 = *v0;
  swift_beginAccess();
  v3 = *(v1 + 392);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_27520BD88();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = v7;
  LOBYTE(v5) = MEMORY[0x277C6D070](v8, AssociatedTypeWitness, v5, AssociatedConformanceWitness);

  if (v5 & 1) != 0 && (swift_beginAccess(), v9 = v0[5], v10 = swift_getAssociatedConformanceWitness(), v11 = swift_getAssociatedConformanceWitness(), v12, v20[0] = AssociatedTypeWitness, v20[1] = v10, v20[2] = v11, v20[3] = AssociatedConformanceWitness, v13 = type metadata accessor for DirectedEdge(0, v20), v14 = *(v2 + 400), WitnessTable = swift_getWitnessTable(), LOBYTE(v14) = MEMORY[0x277C6D070](v9, v13, v14, WitnessTable), , (v14))
  {
    swift_beginAccess();
    v17 = v16;
    v18 = MEMORY[0x277C6D070](v17, AssociatedTypeWitness, v3, AssociatedConformanceWitness);
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_2751FBBB0(uint64_t a1)
{
  v12 = a1;
  v2 = *(*v1 + 408);
  v3 = *(*v1 + 392);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v6 = &v12 - v5;
  swift_beginAccess();
  v7 = v1[4];
  sub_27520BD88();
  swift_getAssociatedConformanceWitness();
  v14 = v7;
  v8 = *(v2 + 64);
  v9;
  v8(v3, v2);
  sub_27520BB48();
  swift_getWitnessTable();
  v10 = sub_27520BC58();
  (*(v13 + 8))(v6, AssociatedTypeWitness);

  return v10 & 1;
}

BOOL sub_2751FBD9C(uint64_t a1)
{
  v12 = *v1;
  v3 = *(v12 + 392);
  v4 = sub_27520BF08();
  MEMORY[0x28223BE20](v4 - 8);
  v17 = &v15[-v5];
  v6 = *(v12 + 408);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v15[-v9];
  v11 = *(v6 + 64);
  v11(v3, v6);
  LODWORD(v12) = sub_2751F723C(v10);
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  if ((v12 & 1) == 0)
  {
    v16 = v12;
    v11(v3, v6);
    v18 = sub_27520BCE8();
    swift_beginAccess();
    sub_27520BD88();
    swift_getAssociatedConformanceWitness();
    sub_27520BB68();
    sub_27520BB98();
    swift_endAccess();
    v11(v3, v6);
    v12 = *(v3 - 8);
    v13 = v17;
    (*(v12 + 16))(v17, a1, v3);
    (*(v12 + 56))(v13, 0, 1, v3);
    swift_beginAccess();
    sub_27520BB68();
    sub_27520BB98();
    LOBYTE(v12) = v16;
    swift_endAccess();
  }

  return (v12 & 1) == 0;
}

uint64_t sub_2751FC0B0()
{
  v1 = *(*v0 + 408);
  v2 = *(*v0 + 392);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v6 = &v9 - v5;
  (*(v1 + 64))(v2, v1);
  swift_beginAccess();
  sub_27520BD88();
  swift_getAssociatedConformanceWitness();
  v7;
  sub_27520BB88();

  (*(v4 + 8))(v6, AssociatedTypeWitness);
  result = v9;
  if (!v9)
  {
    return sub_27520BCE8();
  }

  return result;
}

uint64_t sub_2751FC264(uint64_t a1, uint64_t a2)
{
  v16[1] = a2;
  v3 = *(*v2 + 408);
  v4 = *(*v2 + 392);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v16 - v10;
  v12 = *(v3 + 64);
  v12(v4, v3);
  v12(v4, v3);
  v13 = sub_2751F7BCC(v11, v9);
  v14 = *(v6 + 8);
  v14(v9, AssociatedTypeWitness);
  v14(v11, AssociatedTypeWitness);
  return v13 & 1;
}

uint64_t DirectedGraph.deinit()
{
  DirectedWeightedGraph.deinit();

  return v0;
}

uint64_t DirectedGraph.__deallocating_deinit()
{
  DirectedWeightedGraph.deinit();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

unint64_t sub_2751FC474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27520BBA8();

  return sub_2751FC4D0(a1, v6, a2, a3);
}

unint64_t sub_2751FC4D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x28223BE20](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_27520BBC8();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_2751FC68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_27520BD28())
  {
    sub_27520C078();
    v13 = sub_27520C068();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_27520BD28();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_27520BD08())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_27520BF88();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_2751FC474(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_2751FC9EC(uint64_t a1)
{
  v3 = *(v1 + 48);
  sub_27520BD88();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v3(a1, *(a1 + *(TupleTypeMetadata2 + 48))) & 1;
}

uint64_t sub_2751FCB9C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_2751FC980();
  a1[1] = v2;

  return v3;
}

uint64_t sub_2751FCBDC(uint64_t *a1, __n128 a2)
{
  v2 = *a1;
  v3 = a1[1];
  a2;
  return sub_2751F6780(v2, v3);
}

__n128 sub_2751FCC28(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

__n128 sub_2751FCCAC(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = result;
  return result;
}

uint64_t keypath_get_11Tm@<X0>(uint64_t (*a1)(void)@<X3>, void *a2@<X8>)
{
  *a2 = a1();

  return v2;
}

__n128 sub_2751FCD78(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_2751FCDD0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2751FCE40(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = ((v6 + *(v4 + 80)) & ~*(v4 + 80)) + v6;
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

char *sub_2751FCF90(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_2751FD6CC(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *sub_2751FD71C(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_2751FD8F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

ZeoliteFramework::MetricTreeType_optional __swiftcall MetricTreeType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_27520C088();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t MetricTreeType.rawValue.getter()
{
  if (*v0)
  {
    return 0x656572547076;
  }

  else
  {
    return 0x656572546C6C6162;
  }
}

uint64_t sub_2751FDA2C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656572547076;
  }

  else
  {
    v3 = 0x656572546C6C6162;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x656572547076;
  }

  else
  {
    v5 = 0x656572546C6C6162;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_27520C218();
  }

  return v8 & 1;
}

unint64_t sub_2751FDAD4()
{
  result = qword_2809ADD08;
  if (!qword_2809ADD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADD08);
  }

  return result;
}

uint64_t sub_2751FDB28()
{
  sub_27520C278();
  sub_27520BBD8();

  return sub_27520C298();
}

uint64_t sub_2751FDBA8(uint64_t a1)
{
  sub_27520BBD8();
}

uint64_t sub_2751FDC14(uint64_t a1)
{
  sub_27520C278();
  sub_27520BBD8();

  return sub_27520C298();
}

uint64_t sub_2751FDC90@<X0>(char *a2@<X8>)
{
  v3 = sub_27520C088();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_2751FDCF0(uint64_t *a1@<X8>)
{
  v2 = 0x656572546C6C6162;
  if (*v1)
  {
    v2 = 0x656572547076;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_2751FDD30()
{
  result = qword_2809ADD10;
  if (!qword_2809ADD10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809ADD18, &qword_27520ED00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADD10);
  }

  return result;
}

unint64_t sub_2751FDEB4()
{
  result = qword_2809ADD20;
  if (!qword_2809ADD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809ADD20);
  }

  return result;
}

uint64_t NearestNeighborsScorer.scoreBatches<A>(_:topK:skipFirst:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = v7;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 24) = a2;
  *(v8 + 32) = a4;
  *(v8 + 264) = a3;
  *(v8 + 16) = a1;
  v10 = sub_27520BDC8();
  *(v8 + 72) = v10;
  *(v8 + 80) = *(v10 - 8);
  *(v8 + 88) = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v8 + 96) = AssociatedTypeWitness;
  *(v8 + 104) = *(AssociatedTypeWitness - 8);
  *(v8 + 112) = swift_task_alloc();
  sub_27520BF08();
  *(v8 + 120) = swift_task_alloc();
  *(v8 + 128) = *(a5 - 8);
  *(v8 + 136) = swift_task_alloc();
  v12 = swift_getAssociatedTypeWitness();
  *(v8 + 144) = v12;
  *(v8 + 152) = *(v12 - 8);
  *(v8 + 160) = swift_task_alloc();
  v13 = swift_getAssociatedTypeWitness();
  *(v8 + 168) = v13;
  *(v8 + 176) = *(v13 - 8);
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2751FE20C, 0, 0);
}

uint64_t sub_2751FE20C()
{
  (*(v0[16] + 16))(v0[17], v0[2], v0[5]);
  sub_27520BE28();
  v0[28] = MEMORY[0x277D84F90];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[29] = AssociatedConformanceWitness;
  v2 = swift_task_alloc();
  v0[30] = v2;
  *v2 = v0;
  v2[1] = sub_2751FE338;
  v3 = v0[26];
  v4 = v0[18];
  v5 = v0[15];

  return MEMORY[0x282200310](v5, 0, 0, v3, v4, AssociatedConformanceWitness);
}

uint64_t sub_2751FE338()
{

  if (v0)
  {

    v1 = sub_2751FEB28;
  }

  else
  {
    v1 = sub_2751FE450;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_2751FE450()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v13 = *(v0 + 224);
    (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));

    v4 = *(v0 + 8);

    return v4(v13);
  }

  else
  {
    v14 = *(v0 + 48);
    (*(v3 + 32))(*(v0 + 112), v1, v2);
    v12 = (*(v14 + 16) + **(v14 + 16));
    v6 = swift_task_alloc();
    *(v0 + 248) = v6;
    *v6 = v0;
    v6[1] = sub_2751FE6A8;
    v7 = *(v0 + 112);
    v8 = *(v0 + 48);
    v9 = *(v0 + 264);
    v10 = *(v0 + 24);
    v11 = *(v0 + 32);

    return v12(v7, v10, v9, v11, v8);
  }
}

uint64_t sub_2751FE6A8(uint64_t a1)
{
  *(*v1 + 256) = a1;

  return MEMORY[0x2822009F8](sub_2751FE7A8, 0, 0);
}

uint64_t sub_2751FE7A8()
{
  v1 = *(v0 + 256);
  if (v1)
  {
    v2 = *(v1 + 16);
    v3 = *(*(v0 + 224) + 16);
    v4 = v3 + v2;
    if (__OFADD__(v3, v2))
    {
      __break(1u);
    }

    else
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v6 = *(v0 + 224);
      if (isUniquelyReferenced_nonNull_native && v4 <= *(v6 + 3) >> 1)
      {
        if (*(v1 + 16))
        {
          goto LABEL_6;
        }
      }

      else
      {
        if (v3 <= v4)
        {
          v29 = v3 + v2;
        }

        else
        {
          v29 = v3;
        }

        v6 = sub_2751D0FA0(isUniquelyReferenced_nonNull_native, v29, 1, *(v0 + 224));
        if (*(v1 + 16))
        {
LABEL_6:
          if ((*(v6 + 3) >> 1) - *(v6 + 2) >= v2)
          {
            swift_arrayInitWithCopy();

            if (v2)
            {
              v13 = *(v6 + 2);
              v14 = __OFADD__(v13, v2);
              v15 = v13 + v2;
              if (v14)
              {
                __break(1u);
                return MEMORY[0x282200310](v7, v8, v9, v10, v11, v12);
              }

              *(v6 + 2) = v15;
            }

LABEL_21:
            (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
            *(v0 + 224) = v6;
            AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
            *(v0 + 232) = AssociatedConformanceWitness;
            v31 = swift_task_alloc();
            *(v0 + 240) = v31;
            *v31 = v0;
            v31[1] = sub_2751FE338;
            v10 = *(v0 + 208);
            v11 = *(v0 + 144);
            v7 = *(v0 + 120);
            v8 = 0;
            v9 = 0;
            v12 = AssociatedConformanceWitness;

            return MEMORY[0x282200310](v7, v8, v9, v10, v11, v12);
          }

          goto LABEL_26;
        }
      }

      if (!v2)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (qword_2809AD190 != -1)
  {
LABEL_27:
    swift_once();
  }

  v16 = sub_27520BAB8();
  __swift_project_value_buffer(v16, qword_2809B38E8);
  v17 = sub_27520BA98();
  v18 = sub_27520BEF8();
  v19 = os_log_type_enabled(v17, v18);
  v21 = *(v0 + 152);
  v20 = *(v0 + 160);
  v22 = *(v0 + 144);
  v24 = *(v0 + 104);
  v23 = *(v0 + 112);
  v25 = *(v0 + 96);
  if (v19)
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_2751CF000, v17, v18, "Failed to score in batch.", v26, 2u);
    MEMORY[0x277C6DCC0](v26, -1, -1);
  }

  (*(v24 + 8))(v23, v25);
  (*(v21 + 8))(v20, v22);

  v27 = *(v0 + 8);

  return v27(0);
}

uint64_t sub_2751FEB28()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[21];
  v4 = v0[22];
  (*(v0[19] + 8))(v0[20], v0[18]);
  v5 = *(v4 + 32);
  v5(v2, v1, v3);
  if (swift_dynamicCast())
  {
    if (qword_2809AD190 != -1)
    {
      swift_once();
    }

    v6 = sub_27520BAB8();
    __swift_project_value_buffer(v6, qword_2809B38E8);
    v7 = sub_27520BA98();
    v8 = sub_27520BED8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2751CF000, v7, v8, "Task canceled at scoring.", v9, 2u);
      MEMORY[0x277C6DCC0](v9, -1, -1);
    }

    v10 = v0[27];
    v11 = v0[21];
    v12 = v0[22];
    v14 = v0[10];
    v13 = v0[11];
    v15 = v0[9];

    (*(v14 + 8))(v13, v15);
    (*(v12 + 8))(v10, v11);
  }

  else
  {
    v16 = *(v0[22] + 16);
    v16(v0[25], v0[27], v0[21]);
    if (qword_2809AD190 != -1)
    {
      swift_once();
    }

    v17 = v0[24];
    v18 = v0[25];
    v19 = v0[21];
    v20 = sub_27520BAB8();
    __swift_project_value_buffer(v20, qword_2809B38E8);
    v16(v17, v18, v19);
    v21 = sub_27520BA98();
    v22 = sub_27520BEF8();
    if (os_log_type_enabled(v21, v22))
    {
      v45 = v22;
      v43 = v5;
      v24 = v0[23];
      v23 = v0[24];
      v25 = v0[21];
      v26 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v26 = 138412290;
      v16(v24, v23, v25);
      swift_getAssociatedConformanceWitness();
      v27 = sub_27520C1F8();
      v28 = v0[23];
      if (v27)
      {
        (*(v0[22] + 8))(v0[23], v0[21]);
      }

      else
      {
        v33 = v0[21];
        swift_allocError();
        v43(v34, v28, v33);
      }

      v35 = v0[24];
      v37 = v0[21];
      v36 = v0[22];
      v38 = _swift_stdlib_bridgeErrorToNSError();
      v32 = *(v36 + 8);
      v32(v35, v37);
      *(v26 + 4) = v38;
      *v44 = v38;
      _os_log_impl(&dword_2751CF000, v21, v45, "Error: %@", v26, 0xCu);
      sub_2751E3C18(v44);
      MEMORY[0x277C6DCC0](v44, -1, -1);
      MEMORY[0x277C6DCC0](v26, -1, -1);
    }

    else
    {
      v29 = v0[24];
      v30 = v0[21];
      v31 = v0[22];

      v32 = *(v31 + 8);
      v32(v29, v30);
    }

    v39 = v0[27];
    v40 = v0[21];
    v32(v0[25], v40);
    v32(v39, v40);
  }

  v41 = v0[1];

  return v41(0);
}

ZeoliteFramework::ScorerName_optional __swiftcall ScorerName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_27520C088();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t ScorerName.rawValue.getter()
{
  if (*v0)
  {
    return 0x78697274616DLL;
  }

  else
  {
    return 0x726F736E6574;
  }
}

uint64_t sub_2751FF07C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x78697274616DLL;
  }

  else
  {
    v2 = 0x726F736E6574;
  }

  if (*a2)
  {
    v3 = 0x78697274616DLL;
  }

  else
  {
    v3 = 0x726F736E6574;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_27520C218();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_2751FF0FC()
{
  sub_27520C278();
  sub_27520BBD8();

  return sub_27520C298();
}

uint64_t sub_2751FF16C(uint64_t a1)
{
  sub_27520BBD8();
}

uint64_t sub_2751FF1C0(uint64_t a1)
{
  sub_27520C278();
  sub_27520BBD8();

  return sub_27520C298();
}

uint64_t sub_2751FF22C@<X0>(char *a2@<X8>)
{
  v3 = sub_27520C088();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}