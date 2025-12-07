uint64_t sub_1C0EF9738(uint64_t a1, uint64_t a2)
{
  v4 = v2[1];
  v5 = *(v4 + 16);
  v6 = *v2;
  if (!*v2)
  {
    if (!v5)
    {
      goto LABEL_16;
    }

    return sub_1C0EF9924(a1);
  }

  swift_beginAccess();
  if ((*(v6 + 16) & 0x3FLL) == (*(v6 + 24) & 0x3FLL))
  {
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  else if (v5 <= MEMORY[0x1C68E94A0]())
  {
LABEL_16:
    v11 = sub_1C0EF9924(a1);
    sub_1C0EF9BEC();
    return v11;
  }

  result = swift_isUniquelyReferenced_native();
  v9 = *v2;
  if ((result & 1) == 0)
  {
    if (!v9)
    {
      goto LABEL_20;
    }

    v10 = sub_1C0F4FCA0();

    *v2 = v10;
    v9 = v10;
  }

  if (v9)
  {

    result = sub_1C0EF9C8C(a2, (v9 + 16), v9 + 32, v2);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {

      sub_1C0EF9E84(a1, a1 + 1, v4, (v9 + 16), v9 + 32);

      return sub_1C0EF9924(a1);
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1C0EF98A0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1C0EFA504(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[a1];
    v8 = v7[4];
    memmove(v7 + 4, v7 + 5, 8 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1C0EF9924(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1C0EFA4F0(v3);
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

uint64_t sub_1C0EF99AC(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *v3;
  v8 = v3[1];
  v9 = *(v8 + 16);
  if (*v3)
  {

    v10 = sub_1C0EFA52C(a1, a2, v8 + 32, v9, (v7 + 16), v7 + 32);
    v12 = v11;

    if (v12)
    {
      return v10;
    }
  }

  else
  {
    if (!v9)
    {
      return 0;
    }

    v10 = 0;
    for (i = (v8 + 40); ; i += 2)
    {
      v14 = *(i - 1) == a1 && *i == a2;
      if (v14 || (sub_1C0F50790() & 1) != 0)
      {
        break;
      }

      if (v9 == ++v10)
      {
        return 0;
      }
    }
  }

  v16 = v3[2];
  v15 = v3 + 2;
  result = sub_1C0EF9B0C(v10, *(v16 + 16) - 1);
  v18 = *v15;
  if (*(*v15 + 16))
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C0EFA504(v18);
      v18 = result;
    }

    v19 = v18[2];
    if (v19)
    {
      v20 = v19 - 1;
      v21 = v18[v20 + 4];
      v18[2] = v20;
      *v15 = v18;
      *a3 = v21;
      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1C0EF9B0C(unint64_t result, unint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v4 = *v2;
      v5 = *(*v2 + 16);
      if (v5 > result)
      {
        if (v5 > a2)
        {
          v7 = v4[result + 4];
          v8 = v4[a2 + 4];

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1C0EFA504(v4);
            v4 = result;
          }

          if (v4[2] > v3)
          {
            v4[v3 + 4] = v8;

            if (v4[2] > a2)
            {
              v4[a2 + 4] = v7;

              *v2 = v4;
              return result;
            }

LABEL_15:
            __break(1u);
            return result;
          }

LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1C0EF9BEC()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  v4 = *(v3 + 16);
  if (v2 || v4 >= 0x10)
  {
    v6 = MEMORY[0x1C68E94C0](v4);
    if (v2 <= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v2;
    }

    v5 = sub_1C0EFA2F0(v3, v7, 0, v2);
  }

  else
  {
    v5 = 0;
  }

  *v0 = v5;
  return result;
}

unint64_t sub_1C0EF9C8C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v14 = sub_1C0F4FC20();
  sub_1C0F4FC70();
  if (v14)
  {
    v7 = sub_1C0F4FC30();
    while (1)
    {
      result = sub_1C0F4FC50();
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

      if (result >= *(*(a4 + 8) + 16))
      {
        goto LABEL_18;
      }

      sub_1C0F50850();

      sub_1C0F50200();
      v10 = sub_1C0F50890();

      v11 = 1 << *a2;
      if (__OFSUB__(v11, 1))
      {
        goto LABEL_19;
      }

      v12 = (v11 - 1) & v10;
      if (v6 >= v7)
      {
        break;
      }

      if (v12 < v7)
      {
        goto LABEL_12;
      }

LABEL_13:
      sub_1C0F4FC50();
      v6 = a1;
      sub_1C0F4FC40();
LABEL_3:
      sub_1C0F4FC70();
    }

    if (v12 < v7)
    {
      goto LABEL_3;
    }

LABEL_12:
    if (v6 < v12)
    {
      goto LABEL_3;
    }

    goto LABEL_13;
  }

  return sub_1C0F4FC40();
}

uint64_t sub_1C0EF9E84(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_58;
  }

  if (v6 >= 1)
  {
    v8 = result;
    v9 = *(a3 + 16);
    if (result < (v9 - v6) / 2)
    {
      result = MEMORY[0x1C68E9490](*a4 & 0x3FLL);
      if (result / 3 > v8)
      {
        if (v8 < 0)
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        if (v9 < v8)
        {
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        if (v8)
        {
          v10 = 0;
          while (1)
          {
            sub_1C0F50850();

            sub_1C0F50200();
            result = sub_1C0F50890();
            if (__OFSUB__(1 << *a4, 1))
            {
              break;
            }

            if (sub_1C0F4FC20())
            {
              while (1)
              {
                v11 = sub_1C0F4FC50();
                if ((v12 & 1) == 0 && v11 == v10)
                {
                  break;
                }

                sub_1C0F4FC70();
              }
            }

            result = v10 + v6;
            if (__OFADD__(v10, v6))
            {
              goto LABEL_55;
            }

            ++v10;
            sub_1C0F4FC60();

            if (v10 == v8)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

LABEL_17:

        goto LABEL_18;
      }

      sub_1C0F4FC20();
      v19 = sub_1C0F4FC50();
      if ((v20 & 1) != 0 || v19 >= v8)
      {
LABEL_33:
        result = sub_1C0F4FC70();
LABEL_18:
        v13 = a4[1];
        if (__OFSUB__(v13 >> 6, v6))
        {
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v14 = 1 << *a4;
        v15 = __OFSUB__(v14, 1);
        v16 = v14 - 1;
        if (v15)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v17 = (v16 & (((v13 >> 6) - v6) >> 63)) + (v13 >> 6) - v6;
        if (v17 < v16)
        {
          v16 = 0;
        }

        a4[1] = a4[1] & 0x3FLL | ((v17 - v16) << 6);
        return result;
      }

      if (!__OFADD__(v19, v6))
      {
        sub_1C0F4FC60();
        goto LABEL_33;
      }

      __break(1u);
LABEL_39:
      sub_1C0F4FC20();
      v21 = sub_1C0F4FC50();
      if ((v22 & 1) == 0 && v21 >= v5)
      {
        v15 = __OFSUB__(v21, v6);
        result = v21 - v6;
        if (v15)
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        sub_1C0F4FC60();
      }

      return sub_1C0F4FC70();
    }

    v5 = a2;
    v18 = v9 - a2;
    if (__OFSUB__(v9, a2))
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    result = MEMORY[0x1C68E9490](*a4 & 0x3FLL);
    if (v18 >= result / 3)
    {
      goto LABEL_39;
    }

    if (v9 < v5)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v5 < 0)
    {
LABEL_65:
      __break(1u);
      return result;
    }

    if (v9 != v5)
    {
      do
      {
        sub_1C0F50850();

        sub_1C0F50200();
        result = sub_1C0F50890();
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_57;
        }

        if (sub_1C0F4FC20())
        {
          while (1)
          {
            v23 = sub_1C0F4FC50();
            if ((v24 & 1) == 0 && v23 == v5)
            {
              break;
            }

            sub_1C0F4FC70();
          }
        }

        sub_1C0F4FC60();
      }

      while (++v5 != v9);
    }
  }

  return result;
}

uint64_t sub_1C0EFA2F0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = MEMORY[0x1C68E94C0](v6, a2);
  result = 0;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (v8 <= a4)
  {
    v8 = a4;
  }

  if (v8 >= 5)
  {
    v10 = MEMORY[0x1C68E94D0](v8, a4);
    sub_1C0EFA370(a1, (v10 + 16), v10 + 32);
    return v10;
  }

  return result;
}

uint64_t sub_1C0EFA3C0(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      while (1)
      {
        sub_1C0F50850();

        sub_1C0F50200();
        v7 = sub_1C0F50890();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v8 = sub_1C0F4FC20();

        if (v8)
        {
          while (1)
          {
            sub_1C0F4FC70();
          }
        }

        v7 = sub_1C0F4FC60();
        if (++v6 == a2)
        {
          return v7;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return v7;
}

uint64_t sub_1C0EFA52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  sub_1C0F50850();
  sub_1C0F50200();
  result = sub_1C0F50890();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1C0F4FC20();
    result = sub_1C0F4FC50();
    if ((v11 & 1) == 0)
    {
      v12 = (a3 + 16 * result);
      if (*v12 != a1 || v12[1] != a2)
      {
        while (1)
        {
          v14 = result;
          if (sub_1C0F50790())
          {
            break;
          }

          sub_1C0F4FC70();
          result = sub_1C0F4FC50();
          if ((v15 & 1) == 0)
          {
            v16 = (a3 + 16 * result);
            if (*v16 != a1 || v16[1] != a2)
            {
              continue;
            }
          }

          return result;
        }

        return v14;
      }
    }
  }

  return result;
}

void sub_1C0EFA678(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77908, &unk_1C0F574F0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_1C0EFA750(uint64_t result, char a2)
{
  if (result < 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v3 = v2;
  v5 = result;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v7 + 24) >> 1)
  {
    v10 = *v3;
    if (*v3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (*(v7 + 16) <= v5)
    {
      v14 = v5;
    }

    else
    {
      v14 = *(v7 + 16);
    }

    sub_1C0EF8E6C(isUniquelyReferenced_nonNull_native, v14, 0);
    v7 = *v6;
    v10 = *v3;
    if (*v3)
    {
LABEL_5:
      swift_beginAccess();
      v11 = *(v10 + 16) & 0x3FLL;
      v12 = MEMORY[0x1C68E94C0](v5);
      if (a2)
      {
        v13 = v12;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v16 = v12;
        swift_beginAccess();
        v12 = v16;
        v13 = *(v10 + 24) & 0x3FLL;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

LABEL_16:
      if (v13 <= v12)
      {
        v15 = v12;
      }

      else
      {
        v15 = v13;
      }

      goto LABEL_30;
    }
  }

  v12 = MEMORY[0x1C68E94C0](v5);
  v11 = 0;
  if (a2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v12 > 0)
  {
    goto LABEL_16;
  }

LABEL_20:
  if (v13 <= v12)
  {
    v17 = v12;
  }

  else
  {
    v17 = v13;
  }

  result = MEMORY[0x1C68E94C0](*(v7 + 16));
  if (result <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = result;
  }

  if (v18 < v11)
  {
    if (v13 <= v18)
    {
      v15 = v18;
    }

    else
    {
      v15 = v13;
    }

LABEL_30:
    v19 = sub_1C0EFA2F0(v7, v15, 0, v13);

    *v3 = v19;
    return result;
  }

  if (!v10 || (result = swift_isUniquelyReferenced_native(), (result & 1) != 0))
  {
    v20 = *v3;
    if (*v3)
    {
      goto LABEL_35;
    }

LABEL_39:
    if (!v13)
    {
      return result;
    }

    __break(1u);
    goto LABEL_41;
  }

  if (!*v3)
  {
LABEL_42:
    __break(1u);
    return result;
  }

  v20 = sub_1C0F4FCA0();

  *v3 = v20;
  if (!v20)
  {
    goto LABEL_39;
  }

LABEL_35:
  result = swift_beginAccess();
  if ((*(v20 + 24) & 0x3FLL) != v13)
  {
    *(v20 + 24) = *(v20 + 24) & 0xFFFFFFFFFFFFFFC0 | v13 & 0x3F;
  }

  return result;
}

unint64_t sub_1C0EFA930(uint64_t a1, uint64_t a2)
{
  sub_1C0F50850();
  sub_1C0F50200();
  v4 = sub_1C0F50890();

  return sub_1C0EFA9A8(a1, a2, v4);
}

unint64_t sub_1C0EFA9A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1C0F50790())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1C0EFAA60(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1C0EFA518(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1C0EFAACC(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1C0EFAACC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C0F50770();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1C0F50290();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1C0EFACDC(v7, v8, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_1C0EFABC4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C0EFABC4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 176 * a3 - 176;
    v6 = result - a3;
LABEL_5:
    v7 = v6;
    v8 = v5;
    while (1)
    {
      if ((*(v8 + 344) & 1) != 0 || (*(v8 + 168) & 1) == 0 && *(v8 + 336) >= *(v8 + 160))
      {
LABEL_4:
        ++a3;
        v5 += 176;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v9 = v8 + 176;
      v25 = *(v8 + 304);
      *v26 = *(v8 + 320);
      *&v26[9] = *(v8 + 329);
      v21 = *(v8 + 240);
      v22 = *(v8 + 256);
      v23 = *(v8 + 272);
      v24 = *(v8 + 288);
      v17 = *(v8 + 176);
      v18 = *(v8 + 192);
      v19 = *(v8 + 208);
      v20 = *(v8 + 224);
      v10 = *(v8 + 144);
      *(v8 + 304) = *(v8 + 128);
      *(v8 + 320) = v10;
      *(v8 + 336) = *(v8 + 160);
      v11 = *(v8 + 80);
      *(v8 + 240) = *(v8 + 64);
      *(v8 + 256) = v11;
      v12 = *(v8 + 112);
      *(v8 + 272) = *(v8 + 96);
      *(v8 + 288) = v12;
      v13 = *(v8 + 16);
      *(v8 + 176) = *v8;
      *(v8 + 192) = v13;
      v15 = *(v8 + 32);
      v14 = *(v8 + 48);
      *(v8 + 128) = v25;
      *(v8 + 144) = *v26;
      *(v8 + 153) = *&v26[9];
      *(v8 + 64) = v21;
      *(v8 + 80) = v22;
      *(v8 + 96) = v23;
      *(v8 + 112) = v24;
      *v8 = v17;
      *(v8 + 16) = v18;
      *(v8 + 32) = v19;
      *(v8 + 48) = v20;
      v8 -= 176;
      *(v9 + 32) = v15;
      *(v9 + 48) = v14;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1C0EFACDC(unint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v90 = result;
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_98:
    v5 = *v90;
    if (!*v90)
    {
      goto LABEL_139;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_133:
      result = sub_1C0EFB63C(v6);
      v6 = result;
    }

    v82 = v6;
    v83 = (v6 + 16);
    v6 = *(v6 + 16);
    if (v6 >= 2)
    {
      while (*a3)
      {
        v84 = (v82 + 16 * v6);
        v85 = *v84;
        v86 = &v83[2 * v6];
        v87 = v86[1];
        sub_1C0EFB3CC((*a3 + 176 * *v84), (*a3 + 176 * *v86), (*a3 + 176 * v87), v5);
        if (v113)
        {
        }

        if (v87 < v85)
        {
          goto LABEL_125;
        }

        if (v6 - 2 >= *v83)
        {
          goto LABEL_126;
        }

        *v84 = v85;
        v84[1] = v87;
        v88 = *v83 - v6;
        if (*v83 < v6)
        {
          goto LABEL_127;
        }

        v113 = 0;
        v6 = *v83 - 1;
        result = memmove(v86, v86 + 2, 16 * v88);
        *v83 = v6;
        if (v6 <= 1)
        {
        }
      }

      goto LABEL_137;
    }
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = v5++;
    if (v5 < v4)
    {
      v8 = *a3;
      v9 = *a3 + 176 * v5;
      v10 = *(v9 + 168);
      v11 = v10 ^ 1;
      if ((v10 & 1) == 0)
      {
        v12 = v8 + 176 * v7;
        if ((*(v12 + 168) & 1) == 0)
        {
          v11 = *(v9 + 160) < *(v12 + 160);
        }
      }

      v5 = v7 + 2;
      if (v7 + 2 < v4)
      {
        v13 = v8 + 176 * v7 + 336;
        do
        {
          if (*(v13 + 184) == 1)
          {
            if (v11)
            {
              goto LABEL_20;
            }
          }

          else if (*(v13 + 8))
          {
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          else if ((v11 ^ (*(v13 + 176) < *v13)))
          {
            goto LABEL_17;
          }

          ++v5;
          v13 += 176;
        }

        while (v4 != v5);
        v5 = v4;
        if (!v11)
        {
          goto LABEL_28;
        }

LABEL_20:
        if (v5 < v7)
        {
          goto LABEL_130;
        }

        if (v7 < v5)
        {
          v14 = 176 * v5 - 176;
          v15 = 176 * v7;
          v16 = v5;
          v17 = v7;
          do
          {
            v16 = (v16 - 1);
            if (v17 != v16)
            {
              v18 = *a3;
              if (!*a3)
              {
                goto LABEL_136;
              }

              v19 = v6;
              v20 = (v18 + v14);
              v109 = *(v18 + v15 + 128);
              *v111 = *(v18 + v15 + 144);
              *&v111[9] = *(v18 + v15 + 153);
              v101 = *(v18 + v15 + 64);
              v103 = *(v18 + v15 + 80);
              v105 = *(v18 + v15 + 96);
              v107 = *(v18 + v15 + 112);
              v93 = *(v18 + v15);
              v95 = *(v18 + v15 + 16);
              v97 = *(v18 + v15 + 32);
              v99 = *(v18 + v15 + 48);
              result = memmove((v18 + v15), (v18 + v14), 0xB0uLL);
              v20[8] = v109;
              v20[9] = *v111;
              *(v20 + 153) = *&v111[9];
              v20[4] = v101;
              v20[5] = v103;
              v20[6] = v105;
              v20[7] = v107;
              *v20 = v93;
              v20[1] = v95;
              v20[2] = v97;
              v20[3] = v99;
              v6 = v19;
            }

            v17 = (v17 + 1);
            v14 -= 176;
            v15 += 176;
          }

          while (v17 < v16);
          v4 = a3[1];
        }

        goto LABEL_28;
      }

LABEL_17:
      if (v11)
      {
        goto LABEL_20;
      }
    }

LABEL_28:
    if (v5 < v4)
    {
      if (__OFSUB__(v5, v7))
      {
        goto LABEL_129;
      }

      if (v5 - v7 < a4)
      {
        if (__OFADD__(v7, a4))
        {
          goto LABEL_131;
        }

        if (v7 + a4 < v4)
        {
          v4 = v7 + a4;
        }

        if (v4 < v7)
        {
LABEL_132:
          __break(1u);
          goto LABEL_133;
        }

        if (v5 != v4)
        {
          break;
        }
      }
    }

LABEL_47:
    if (v5 < v7)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C0EFB650(0, *(v6 + 16) + 1, 1, v6);
      v6 = result;
    }

    v35 = *(v6 + 16);
    v34 = *(v6 + 24);
    v36 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      result = sub_1C0EFB650((v34 > 1), v35 + 1, 1, v6);
      v6 = result;
    }

    *(v6 + 16) = v36;
    v37 = v6 + 32;
    v38 = (v6 + 32 + 16 * v35);
    *v38 = v7;
    v38[1] = v5;
    __src = *v90;
    if (!*v90)
    {
      goto LABEL_138;
    }

    if (v35)
    {
      while (1)
      {
        v39 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v40 = *(v6 + 32);
          v41 = *(v6 + 40);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_67:
          if (v43)
          {
            goto LABEL_115;
          }

          v56 = (v6 + 16 * v36);
          v58 = *v56;
          v57 = v56[1];
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_117;
          }

          v62 = (v37 + 16 * v39);
          v64 = *v62;
          v63 = v62[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_122;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v39 = v36 - 2;
            }

            goto LABEL_89;
          }

          goto LABEL_82;
        }

        if (v36 < 2)
        {
          goto LABEL_123;
        }

        v66 = (v6 + 16 * v36);
        v68 = *v66;
        v67 = v66[1];
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_82:
        if (v61)
        {
          goto LABEL_119;
        }

        v69 = (v37 + 16 * v39);
        v71 = *v69;
        v70 = v69[1];
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_121;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_89:
        if (v39 - 1 >= v36)
        {
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
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        if (!*a3)
        {
          goto LABEL_135;
        }

        v77 = v6;
        v78 = (v37 + 16 * (v39 - 1));
        v6 = *v78;
        v79 = (v37 + 16 * v39);
        v80 = v79[1];
        sub_1C0EFB3CC((*a3 + 176 * *v78), (*a3 + 176 * *v79), (*a3 + 176 * v80), __src);
        if (v113)
        {
        }

        if (v80 < v6)
        {
          goto LABEL_110;
        }

        if (v39 > *(v77 + 16))
        {
          goto LABEL_111;
        }

        *v78 = v6;
        v78[1] = v80;
        v81 = *(v77 + 16);
        if (v39 >= v81)
        {
          goto LABEL_112;
        }

        v6 = v77;
        v113 = 0;
        v36 = v81 - 1;
        result = memmove((v37 + 16 * v39), v79 + 2, 16 * (v81 - 1 - v39));
        *(v77 + 16) = v81 - 1;
        if (v81 <= 2)
        {
          goto LABEL_3;
        }
      }

      v44 = v37 + 16 * v36;
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_113;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_114;
      }

      v51 = (v6 + 16 * v36);
      v53 = *v51;
      v52 = v51[1];
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_116;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_118;
      }

      if (v55 >= v47)
      {
        v73 = (v37 + 16 * v39);
        v75 = *v73;
        v74 = v73[1];
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_124;
        }

        if (v42 < v76)
        {
          v39 = v36 - 2;
        }

        goto LABEL_89;
      }

      goto LABEL_67;
    }

LABEL_3:
    v4 = a3[1];
    if (v5 >= v4)
    {
      goto LABEL_98;
    }
  }

  v21 = *a3;
  v22 = *a3 + 176 * v5 - 176;
  v23 = v7 - v5;
LABEL_38:
  v24 = v23;
  v25 = v22;
  while (1)
  {
    if ((*(v25 + 344) & 1) != 0 || (*(v25 + 168) & 1) == 0 && *(v25 + 336) >= *(v25 + 160))
    {
LABEL_37:
      ++v5;
      v22 += 176;
      --v23;
      if (v5 != v4)
      {
        goto LABEL_38;
      }

      v5 = v4;
      goto LABEL_47;
    }

    if (!v21)
    {
      break;
    }

    v26 = v25 + 176;
    v110 = *(v25 + 304);
    *v112 = *(v25 + 320);
    *&v112[9] = *(v25 + 329);
    v102 = *(v25 + 240);
    v104 = *(v25 + 256);
    v106 = *(v25 + 272);
    v108 = *(v25 + 288);
    v94 = *(v25 + 176);
    v96 = *(v25 + 192);
    v98 = *(v25 + 208);
    v100 = *(v25 + 224);
    v27 = *(v25 + 144);
    *(v25 + 304) = *(v25 + 128);
    *(v25 + 320) = v27;
    *(v25 + 336) = *(v25 + 160);
    v28 = *(v25 + 80);
    *(v25 + 240) = *(v25 + 64);
    *(v25 + 256) = v28;
    v29 = *(v25 + 112);
    *(v25 + 272) = *(v25 + 96);
    *(v25 + 288) = v29;
    v30 = *(v25 + 16);
    *(v25 + 176) = *v25;
    *(v25 + 192) = v30;
    v32 = *(v25 + 32);
    v31 = *(v25 + 48);
    *(v25 + 128) = v110;
    *(v25 + 144) = *v112;
    *(v25 + 153) = *&v112[9];
    *(v25 + 64) = v102;
    *(v25 + 80) = v104;
    *(v25 + 96) = v106;
    *(v25 + 112) = v108;
    *v25 = v94;
    *(v25 + 16) = v96;
    *(v25 + 32) = v98;
    *(v25 + 48) = v100;
    v25 -= 176;
    *(v26 + 32) = v32;
    *(v26 + 48) = v31;
    if (__CFADD__(v24++, 1))
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
  return result;
}

uint64_t sub_1C0EFB3CC(double *__dst, double *a2, char *a3, double *__src)
{
  v4 = __src;
  v5 = a3;
  v6 = a2;
  v7 = __dst;
  v8 = a2 - __dst;
  v9 = (a2 - __dst) / 176;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 176;
  if (v9 >= v11)
  {
    v16 = 22 * v11;
    if (__src != a2 || &a2[v16] <= __src)
    {
      memmove(__src, a2, 176 * v11);
    }

    v13 = &v4[v16];
    if (v10 < 176 || v6 <= v7)
    {
LABEL_36:
      v20 = v6;
    }

    else
    {
      do
      {
        v17 = 0;
        v18 = v13;
        while (1)
        {
          v19 = &v18[v17];
          if ((LOBYTE(v18[v17 - 1]) & 1) == 0 && ((*(v6 - 1) & 1) != 0 || *(v19 - 2) < *(v6 - 2)))
          {
            break;
          }

          if (&v5[v17 * 8] != v19)
          {
            memmove(&v5[v17 * 8 - 176], v19 - 176, 0xB0uLL);
          }

          v17 -= 22;
          v13 = &v18[v17];
          if (&v18[v17] <= v4)
          {
            goto LABEL_36;
          }
        }

        v20 = v6 - 22;
        v21 = &v5[v17 * 8];
        v5 = &v5[v17 * 8 - 176];
        if (v21 != v6)
        {
          v22 = v6 - 22;
          memmove(v5, v22, 0xB0uLL);
          v20 = v22;
        }

        v13 = &v18[v17];
        if (&v18[v17] <= v4)
        {
          break;
        }

        v6 = v20;
      }

      while (v20 > v7);
      v13 = &v18[v17];
    }
  }

  else
  {
    v12 = 22 * v9;
    if (__src != __dst || &__dst[v12] <= __src)
    {
      memmove(__src, __dst, v12 * 8);
    }

    v13 = &v4[v12];
    if (v8 >= 176 && v6 < v5)
    {
      while ((v6[21] & 1) == 0 && ((v4[21] & 1) != 0 || v6[20] < v4[20]))
      {
        v14 = v6;
        v15 = v7 == v6;
        v6 += 22;
        if (!v15)
        {
          goto LABEL_11;
        }

LABEL_12:
        v7 += 22;
        if (v4 >= v13 || v6 >= v5)
        {
          goto LABEL_35;
        }
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 22;
      if (v15)
      {
        goto LABEL_12;
      }

LABEL_11:
      memmove(v7, v14, 0xB0uLL);
      goto LABEL_12;
    }

LABEL_35:
    v20 = v7;
  }

  v23 = 22 * ((v13 - v4) / 176);
  if (v20 != v4 || v20 >= &v4[v23])
  {
    memmove(v20, v4, v23 * 8);
  }

  return 1;
}

char *sub_1C0EFB650(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77910, &unk_1C0F5AF30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1C0EFB754(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!__dst)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = __dst;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + 176 * (v17 | (v12 << 6)));
      v20 = v18[1];
      v19 = v18[2];
      v30[0] = *v18;
      v30[1] = v20;
      v30[2] = v19;
      v21 = v18[6];
      v23 = v18[3];
      v22 = v18[4];
      v30[5] = v18[5];
      v30[6] = v21;
      v30[3] = v23;
      v30[4] = v22;
      v25 = v18[8];
      v24 = v18[9];
      v26 = v18[7];
      *(v31 + 9) = *(v18 + 153);
      v30[8] = v25;
      v31[0] = v24;
      v30[7] = v26;
      memmove(v11, v18, 0xA9uLL);
      if (v14 == v10)
      {
        sub_1C0EF1234(v30, v29);
        goto LABEL_24;
      }

      v11 += 176;
      sub_1C0EF1234(v30, v29);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v28 = v12 + 1;
    }

    else
    {
      v28 = (63 - v7) >> 6;
    }

    v12 = v28 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1C0EFB904(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = sub_1C0F50790();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = a1[3];
  v10 = a2[3];
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    if (a1[2] != a2[2] || v9 != v10)
    {
      v11 = a1;
      v12 = a2;
      v13 = sub_1C0F50790();
      a2 = v12;
      v14 = v13;
      a1 = v11;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v15 = a1[5];
  v16 = a2[5];
  if (v15)
  {
    if (v16 && (a1[4] == a2[4] && v15 == v16 || (sub_1C0F50790() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v16)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1C0EFBA14(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = sub_1C0F50790();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = a1[3];
  v10 = a2[3];
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    if (a1[2] != a2[2] || v9 != v10)
    {
      v11 = a1;
      v12 = a2;
      v13 = sub_1C0F50790();
      a2 = v12;
      v14 = v13;
      a1 = v11;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v15 = a1[5];
  v16 = a2[5];
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    if (a1[4] != a2[4] || v15 != v16)
    {
      v17 = a1;
      v18 = a2;
      v19 = sub_1C0F50790();
      a2 = v18;
      v20 = v19;
      a1 = v17;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v16)
  {
    return 0;
  }

  v21 = a1[7];
  v22 = a2[7];
  if (v21)
  {
    if (v22 && (a1[6] == a2[6] && v21 == v22 || (sub_1C0F50790() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v22)
  {
    return 1;
  }

  return 0;
}

BOOL _s26AccessibilitySharedSupport10VOMapsItemV2eeoiySbAC_ACtFZ_0(double *a1, uint64_t a2)
{
  v3 = *(a1 + 1);
  v5 = *(a1 + 3);
  v4 = *(a1 + 4);
  v6 = *(a1 + 5);
  v7 = a1[6];
  v8 = *(a1 + 56);
  v9 = a1[8];
  v10 = *(a1 + 72);
  v11 = *(a1 + 10);
  v12 = *(a1 + 11);
  v13 = *(a1 + 12);
  v14 = *(a1 + 13);
  v15 = *(a1 + 14);
  v16 = *(a1 + 15);
  v125 = *(a1 + 16);
  v129 = *(a1 + 17);
  v123 = *(a1 + 18);
  v126 = *(a1 + 19);
  v17 = a1[20];
  v18 = *(a1 + 168);
  v19 = *(a2 + 8);
  v130 = *(a2 + 16);
  v20 = *(a2 + 24);
  v21 = *(a2 + 32);
  v22 = *(a2 + 40);
  v23 = *(a2 + 48);
  v24 = *(a2 + 56);
  v25 = *(a2 + 64);
  v26 = *(a2 + 72);
  v28 = *(a2 + 80);
  v27 = *(a2 + 88);
  v29 = *(a2 + 96);
  v30 = *(a2 + 104);
  v31 = *(a2 + 160);
  v32 = *(a2 + 120);
  v128 = *(a2 + 112);
  v124 = *(a2 + 128);
  v33 = *(a2 + 136);
  v122 = *(a2 + 144);
  v127 = *(a2 + 152);
  v121 = *(a2 + 168);
  if (v3)
  {
    if (!v19)
    {
      return 0;
    }

    v120 = *(a1 + 2);
    if (*a1 != *a2 || v3 != v19)
    {
      v116 = *(a2 + 96);
      v91 = *(a1 + 12);
      v92 = *(a2 + 32);
      v34 = *(a1 + 168);
      v101 = *(a2 + 56);
      v104 = *(a2 + 72);
      v35 = *(a2 + 136);
      v107 = *(a1 + 56);
      v110 = *(a1 + 72);
      v36 = *(a1 + 14);
      v96 = *(a1 + 4);
      v90 = *(a1 + 15);
      v37 = *(a2 + 120);
      v38 = *(a1 + 13);
      v94 = *(a2 + 40);
      v39 = *(a2 + 104);
      v99 = *(a1 + 11);
      v40 = *(a1 + 10);
      v41 = *(a2 + 88);
      v113 = *(a2 + 80);
      v42 = sub_1C0F50790();
      v28 = v113;
      v29 = v116;
      v27 = v41;
      v11 = v40;
      v12 = v99;
      v30 = v39;
      v14 = v38;
      v22 = v94;
      v4 = v96;
      v16 = v90;
      v13 = v91;
      v32 = v37;
      v26 = v104;
      v8 = v107;
      v15 = v36;
      v10 = v110;
      v33 = v35;
      v24 = v101;
      v18 = v34;
      v21 = v92;
      if ((v42 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v120 = *(a1 + 2);
    if (v19)
    {
      return 0;
    }
  }

  if (v5)
  {
    if (!v20)
    {
      return 0;
    }

    if (v120 != v130 || v5 != v20)
    {
      v117 = v29;
      v98 = v6;
      v100 = v12;
      v43 = v18;
      v44 = v33;
      v93 = v21;
      v95 = v22;
      v45 = v15;
      v46 = v16;
      v108 = v8;
      v111 = v10;
      v47 = v32;
      v97 = v4;
      v48 = v13;
      v102 = v24;
      v105 = v26;
      v49 = v14;
      v50 = v30;
      v51 = v11;
      v52 = v27;
      v114 = v28;
      v53 = sub_1C0F50790();
      v28 = v114;
      v29 = v117;
      v27 = v52;
      v11 = v51;
      v30 = v50;
      v26 = v105;
      v8 = v108;
      v14 = v49;
      v24 = v102;
      v13 = v48;
      v4 = v97;
      v6 = v98;
      v32 = v47;
      v10 = v111;
      v16 = v46;
      v15 = v45;
      v21 = v93;
      v22 = v95;
      v33 = v44;
      v18 = v43;
      v12 = v100;
      if ((v53 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v20)
  {
    return 0;
  }

  if (v6)
  {
    if (!v22)
    {
      return 0;
    }

    if (v4 != v21 || v6 != v22)
    {
      v118 = v29;
      v131 = v18;
      v54 = v33;
      v55 = v15;
      v56 = v16;
      v106 = v26;
      v109 = v8;
      v57 = v32;
      v58 = v13;
      v103 = v24;
      v59 = v14;
      v60 = v30;
      v61 = v11;
      v112 = v10;
      v62 = v27;
      v115 = v28;
      v63 = sub_1C0F50790();
      v28 = v115;
      v29 = v118;
      v27 = v62;
      v11 = v61;
      v30 = v60;
      v14 = v59;
      v24 = v103;
      v26 = v106;
      v13 = v58;
      v32 = v57;
      v8 = v109;
      v10 = v112;
      v16 = v56;
      v15 = v55;
      v33 = v54;
      v18 = v131;
      if ((v63 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v22)
  {
    return 0;
  }

  if (v8)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (v7 == v23)
    {
      v64 = v24;
    }

    else
    {
      v64 = 1;
    }

    if (v64)
    {
      return 0;
    }
  }

  if (v10)
  {
    if (!v26)
    {
      return 0;
    }
  }

  else
  {
    if (v9 == v25)
    {
      v65 = v26;
    }

    else
    {
      v65 = 1;
    }

    if (v65)
    {
      return 0;
    }
  }

  if (v12)
  {
    if (!v27)
    {
      return 0;
    }

    if (v11 != v28 || v12 != v27)
    {
      v119 = v29;
      v66 = v18;
      v67 = v33;
      v68 = v15;
      v69 = v16;
      v70 = v32;
      v71 = v13;
      v72 = v14;
      v73 = v30;
      v74 = sub_1C0F50790();
      v29 = v119;
      v30 = v73;
      v14 = v72;
      v13 = v71;
      v32 = v70;
      v16 = v69;
      v15 = v68;
      v33 = v67;
      v18 = v66;
      if ((v74 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v27)
  {
    return 0;
  }

  if (v14)
  {
    if (!v30)
    {
      return 0;
    }

    if (v13 != v29 || v14 != v30)
    {
      v75 = v18;
      v76 = v33;
      v77 = v15;
      v78 = v16;
      v79 = v32;
      v80 = sub_1C0F50790();
      v32 = v79;
      v16 = v78;
      v15 = v77;
      v33 = v76;
      v18 = v75;
      if ((v80 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v30)
  {
    return 0;
  }

  if (v16)
  {
    if (!v32)
    {
      return 0;
    }

    if (v15 != v128 || v16 != v32)
    {
      v81 = v18;
      v82 = v33;
      v83 = sub_1C0F50790();
      v33 = v82;
      v18 = v81;
      if ((v83 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v32)
  {
    return 0;
  }

  if (v129)
  {
    if (!v33)
    {
      return 0;
    }

    if (v125 != v124 || v129 != v33)
    {
      v84 = v18;
      v85 = sub_1C0F50790();
      v18 = v84;
      if ((v85 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v33)
  {
    return 0;
  }

  if (v126)
  {
    if (!v127)
    {
      return 0;
    }

    if (v123 != v122 || v126 != v127)
    {
      v86 = v18;
      v87 = sub_1C0F50790();
      v18 = v86;
      if ((v87 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v127)
  {
    return 0;
  }

  if ((v18 & 1) == 0)
  {
    v89 = v121;
    if (v17 != v31)
    {
      v89 = 1;
    }

    return (v89 & 1) == 0;
  }

  return (v121 & 1) != 0;
}

BOOL sub_1C0EFC0DC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  v13 = a2[4];
  v12 = a2[5];
  if (v2 == 1)
  {
    if (v9 == 1)
    {
      goto LABEL_3;
    }

    goto LABEL_7;
  }

  if (v9 == 1)
  {
LABEL_7:
    v66 = a2[2];
    v68 = a2[4];
    v22 = a1[3];
    v23 = a2[3];
    v24 = a2[5];
    sub_1C0EFEC0C(*a2, a2[1], v66, v23, v68, v12);
    sub_1C0EFEC0C(v3, v2, v5, v22, v6, v7);
    sub_1C0EFEC60(v3, v2, v5, v22, v6, v7);
    v25 = v8;
    v26 = v9;
    v27 = v66;
    v28 = v68;
    v29 = v23;
    v30 = v24;
LABEL_39:
    sub_1C0EFEC60(v25, v26, v27, v29, v28, v30);
    return 0;
  }

  v67 = a1[4];
  v69 = a1[5];
  if (v2)
  {
    if (!v9)
    {
      goto LABEL_38;
    }

    if (v3 != v8 || v2 != v9)
    {
      v59 = a2;
      v62 = a1;
      v31 = a1[3];
      v32 = a2[5];
      v33 = sub_1C0F50790();
      v12 = v32;
      v4 = v31;
      v34 = v33;
      a2 = v59;
      a1 = v62;
      if ((v34 & 1) == 0)
      {
        goto LABEL_38;
      }
    }
  }

  else if (v9)
  {
    goto LABEL_38;
  }

  if (v4)
  {
    if (!v11)
    {
      goto LABEL_38;
    }

    if (v5 != v10 || v4 != v11)
    {
      v60 = a2;
      v63 = a1;
      v37 = v4;
      v38 = v12;
      v39 = sub_1C0F50790();
      v12 = v38;
      v4 = v37;
      v40 = v39;
      a2 = v60;
      a1 = v63;
      if ((v40 & 1) == 0)
      {
        goto LABEL_38;
      }
    }
  }

  else if (v11)
  {
    goto LABEL_38;
  }

  if (v69)
  {
    if (v12)
    {
      if (v67 == v13 && v69 == v12)
      {
        goto LABEL_34;
      }

      v61 = a2;
      v64 = a1;
      v50 = v4;
      v51 = v12;
      v52 = sub_1C0F50790();
      v12 = v51;
      v4 = v50;
      v53 = v52;
      a2 = v61;
      a1 = v64;
      if (v53)
      {
        goto LABEL_34;
      }
    }

LABEL_38:
    v58 = v4;
    sub_1C0EFEC0C(v8, v9, v10, v11, v13, v12);
    sub_1C0EFEC0C(v3, v2, v5, v58, v67, v69);

    v25 = v3;
    v26 = v2;
    v27 = v5;
    v29 = v58;
    v28 = v67;
    v30 = v69;
    goto LABEL_39;
  }

  if (v12)
  {
    goto LABEL_38;
  }

LABEL_34:
  v65 = a1;
  v54 = v8;
  v55 = a2;
  v56 = v4;
  sub_1C0EFEC0C(v54, v9, v10, v11, v13, v12);
  sub_1C0EFEC0C(v3, v2, v5, v56, v67, v69);

  sub_1C0EFEC60(v3, v2, v5, v56, v67, v69);
  a1 = v65;
  a2 = v55;
LABEL_3:
  v14 = *(a1 + 4);
  v84[0] = *(a1 + 3);
  v84[1] = v14;
  v15 = *(a1 + 6);
  v84[2] = *(a1 + 5);
  v84[3] = v15;
  v16 = *(a2 + 4);
  v83[0] = *(a2 + 3);
  v83[1] = v16;
  v17 = *(a2 + 6);
  v83[2] = *(a2 + 5);
  v83[3] = v17;
  v18 = v84[0];
  if (*(&v84[0] + 1) != 1)
  {
    if (*(&v83[0] + 1) != 1)
    {
      v70 = v83[0];
      v41 = *(a2 + 5);
      v71 = *(a2 + 4);
      v72 = v41;
      v19 = a2;
      v73 = *(a2 + 6);
      v77 = v41;
      v78 = v73;
      v75 = v83[0];
      v76 = v71;
      v42 = *(a1 + 4);
      v43 = *(a1 + 5);
      v85[3] = *(a1 + 6);
      v85[2] = v43;
      v85[1] = v42;
      v85[0] = v84[0];
      v44 = a1;
      v45 = sub_1C0EFBA14(v85, &v75);
      sub_1C0EED570(v84, v74, &qword_1EBE77870, &qword_1C0F57478);
      sub_1C0EED570(v83, v74, &qword_1EBE77870, &qword_1C0F57478);
      sub_1C0EEFAA8(&v70, &qword_1EBE77870, &qword_1C0F57478);
      v74[0] = v18;
      v46 = *(v44 + 5);
      v74[1] = *(v44 + 4);
      v74[2] = v46;
      v21 = v44;
      v74[3] = *(v44 + 6);
      sub_1C0EEFAA8(v74, &qword_1EBE77870, &qword_1C0F57478);
      if ((v45 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_24;
    }

LABEL_15:
    v75 = v84[0];
    v35 = *(a1 + 5);
    v76 = *(a1 + 4);
    v77 = v35;
    v78 = *(a1 + 6);
    v79 = v83[0];
    v36 = *(a2 + 5);
    v80 = *(a2 + 4);
    v81 = v36;
    v82 = *(a2 + 6);
    sub_1C0EED570(v84, v85, &qword_1EBE77870, &qword_1C0F57478);
    sub_1C0EED570(v83, v85, &qword_1EBE77870, &qword_1C0F57478);
    sub_1C0EEFAA8(&v75, &qword_1EBE778B8, &unk_1C0F57490);
    return 0;
  }

  if (*(&v83[0] + 1) != 1)
  {
    goto LABEL_15;
  }

  v19 = a2;
  *&v75 = *&v84[0];
  *(&v75 + 1) = 1;
  v20 = *(a1 + 5);
  v76 = *(a1 + 4);
  v77 = v20;
  v21 = a1;
  v78 = *(a1 + 6);
  sub_1C0EED570(v84, v85, &qword_1EBE77870, &qword_1C0F57478);
  sub_1C0EED570(v83, v85, &qword_1EBE77870, &qword_1C0F57478);
  sub_1C0EEFAA8(&v75, &qword_1EBE77870, &qword_1C0F57478);
LABEL_24:
  v47 = v21[14];
  v48 = v19[14];
  if (v47)
  {
    if (!v48)
    {
      return 0;
    }

    v49 = sub_1C0EF6E90(v47, v48);

    return (v49 & 1) != 0;
  }

  return !v48;
}

uint64_t sub_1C0EFC610(uint64_t a1)
{
  v2 = sub_1C0F4F940();
  v3 = *(v2 - 8);
  v7 = MEMORY[0x1EEE9AC00](v2, v4, v5, v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10, v11, v12);
  v14 = &v23 - v13;
  v15 = *(a1 + 16);
  v16 = sub_1C0EFEEDC(&qword_1EBE77948, MEMORY[0x1E6969780]);
  result = MEMORY[0x1C68E9C20](v15, v2, v16);
  v24 = result;
  if (v15)
  {
    v20 = *(v3 + 16);
    v18 = v3 + 16;
    v19 = v20;
    v21 = a1 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v22 = *(v18 + 56);
    do
    {
      v19(v9, v21, v2);
      sub_1C0EF7408(v14, v9);
      (*(v18 - 8))(v14, v2);
      v21 += v22;
      --v15;
    }

    while (v15);
    return v24;
  }

  return result;
}

uint64_t sub_1C0EFC798(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1C0EFEE78();
  result = MEMORY[0x1C68E9C20](v2, &type metadata for VOMapsItem, v3);
  v15 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = v5[9];
      v16[8] = v5[8];
      v17[0] = v6;
      *(v17 + 9) = *(v5 + 153);
      v7 = v5[5];
      v16[4] = v5[4];
      v16[5] = v7;
      v8 = v5[7];
      v16[6] = v5[6];
      v16[7] = v8;
      v9 = v5[1];
      v16[0] = *v5;
      v16[1] = v9;
      v10 = v5[3];
      v16[2] = v5[2];
      v16[3] = v10;
      sub_1C0EF1234(v16, v13);
      sub_1C0EF76C0(v11, v16);
      v13[8] = v11[8];
      v14[0] = v12[0];
      *(v14 + 9) = *(v12 + 9);
      v13[4] = v11[4];
      v13[5] = v11[5];
      v13[6] = v11[6];
      v13[7] = v11[7];
      v13[0] = v11[0];
      v13[1] = v11[1];
      v13[2] = v11[2];
      v13[3] = v11[3];
      sub_1C0EF1204(v13);
      v5 += 11;
      --v2;
    }

    while (v2);
    return v15;
  }

  return result;
}

unint64_t sub_1C0EFC888(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C0F50660();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1C0EFC8D4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C0F50660();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C0EFC920@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77988, &qword_1C0F57878);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7, v8, v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C0EFF2AC();
  sub_1C0F508A0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v28 = 0;
  v12 = sub_1C0F50690();
  v14 = v13;
  v25 = v12;
  v27 = 1;
  v15 = sub_1C0F50690();
  v17 = v16;
  v24 = v15;
  v26 = 2;
  v18 = sub_1C0F50690();
  v19 = v11;
  v21 = v20;
  (*(v6 + 8))(v19, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  v23 = v24;
  *a2 = v25;
  a2[1] = v14;
  a2[2] = v23;
  a2[3] = v17;
  a2[4] = v18;
  a2[5] = v21;
  return result;
}

unint64_t sub_1C0EFCB24(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C0F50660();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C0EFCB70@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77998, &qword_1C0F57880);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7, v8, v9);
  v11 = &v30 - v10;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C0EFF300();
  sub_1C0F508A0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    return sub_1C0EFF354(&v38);
  }

  else
  {
    LOBYTE(v38) = 0;
    v12 = sub_1C0F50690();
    v32 = v6;
    v33 = v13;
    v31 = a2;
    LOBYTE(v38) = 1;
    v14 = sub_1C0F50690();
    v16 = v15;
    LOBYTE(v38) = 2;
    v17 = sub_1C0F50690();
    v19 = v18;
    v46 = 3;
    v20 = sub_1C0F50690();
    v21 = *(v32 + 8);
    v32 = v20;
    v22 = v11;
    v24 = v23;
    v21(v22, v5);
    v25 = v33;
    *&v34 = v12;
    *(&v34 + 1) = v33;
    *&v35 = v14;
    *(&v35 + 1) = v16;
    *&v36 = v17;
    *(&v36 + 1) = v19;
    *&v37 = v32;
    *(&v37 + 1) = v24;
    sub_1C0EFF384(&v34, &v38);
    __swift_destroy_boxed_opaque_existential_0(a1);
    v38 = v12;
    v39 = v25;
    v40 = v14;
    v41 = v16;
    v42 = v17;
    v43 = v19;
    v44 = v32;
    v45 = v24;
    result = sub_1C0EFF354(&v38);
    v27 = v35;
    v28 = v31;
    *v31 = v34;
    v28[1] = v27;
    v29 = v37;
    v28[2] = v36;
    v28[3] = v29;
  }

  return result;
}

uint64_t sub_1C0EFCE70(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v16 = MEMORY[0x1E69E7CC0];
  v3 = *(a1 + 16);
  sub_1C0EFA750(v3, 0);
  sub_1C0EF8EAC(0, v3, 0);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  v5 = a1 + 32;
  while (1)
  {
    v6 = (v5 + 24 * v4);
    v8 = *v6;
    v7 = v6[1];
    v9 = v6[2];
    v10 = *(v16 + 16);
    if (v10)
    {
      break;
    }

LABEL_11:

    sub_1C0EF95C0(v8, v7, 0);
    v14 = *(v2 + 16);
    v13 = *(v2 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_1C0EF8EAC((v13 > 1), v14 + 1, 1);
    }

    ++v4;
    *(v2 + 16) = v14 + 1;
    *(v2 + 8 * v14 + 32) = v9;
    if (v4 == v3)
    {
      return 0;
    }
  }

  v11 = (v16 + 40);
  while (1)
  {
    v12 = *(v11 - 1) == v8 && *v11 == v7;
    if (v12 || (sub_1C0F50790() & 1) != 0)
    {
      break;
    }

    v11 += 2;
    if (!--v10)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  __break(1u);
  return result;
}

unint64_t sub_1C0EFD048(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C0F50660();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C0EFD094@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77850, &qword_1C0F57470);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7, v8, v9);
  v11 = &v23 - v10;
  v12 = a1[3];
  v28 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v12);
  sub_1C0EFE910();
  sub_1C0F508A0();
  if (v2)
  {
    v69 = 0;
    v34 = 0;
    v35 = 0;
    v32 = 0;
    v33 = 0;
    v30 = 0;
    v31 = 0;
    v29 = 1;
    __swift_destroy_boxed_opaque_existential_0(v28);
    v56 = 0;
    v57 = 1;
    v58 = 0uLL;
    v59 = 0uLL;
    v60 = v69;
    v61 = v29;
    v62 = v35;
    v63 = v34;
    v64 = v33;
    v65 = v32;
    v66 = v31;
    v67 = v30;
    v68 = 0;
    return sub_1C0EFD968(&v56);
  }

  else
  {
    LOBYTE(v36) = 0;
    sub_1C0EFE964();
    sub_1C0F506B0();
    v13 = v57;
    v25 = v56;
    v26 = v58;
    v27 = v59;
    v47 = 1;
    sub_1C0EFE9B8();
    sub_1C0F506B0();
    v24 = v13;
    v69 = v48;
    v34 = v51;
    v35 = v50;
    v32 = v53;
    v33 = v52;
    v31 = v54;
    v29 = v49;
    v30 = v55;
    v46[0] = xmmword_1C0F56FB0;
    memset(&v46[1], 0, 48);
    sub_1C0EEFAA8(v46, &qword_1EBE77870, &qword_1C0F57478);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77878, &qword_1C0F57480);
    v44 = 2;
    sub_1C0EFEB40(&qword_1EBE77880, sub_1C0EFEA0C, MEMORY[0x1E69E6330]);
    sub_1C0F506B0();
    (*(v6 + 8))(v11, v5);
    v14 = v45;
    v15 = v24;
    v16 = v25;
    *&v36 = v25;
    *(&v36 + 1) = v24;
    v17 = v26;
    v37 = v26;
    v18 = v27;
    v38 = v27;
    *&v39 = v69;
    *(&v39 + 1) = v29;
    *&v40 = v35;
    *(&v40 + 1) = v34;
    *&v41 = v33;
    *(&v41 + 1) = v32;
    *&v42 = v31;
    *(&v42 + 1) = v30;
    v43 = v45;
    sub_1C0EFEA60(&v36, &v56);
    __swift_destroy_boxed_opaque_existential_0(v28);
    v56 = v16;
    v57 = v15;
    v58 = v17;
    v59 = __PAIR128__(*(&v27 + 1), v18);
    v60 = v69;
    v61 = v29;
    v62 = v35;
    v63 = v34;
    v64 = v33;
    v65 = v32;
    v66 = v31;
    v67 = v30;
    v68 = v14;
    result = sub_1C0EFD968(&v56);
    v20 = v41;
    *(a2 + 64) = v40;
    *(a2 + 80) = v20;
    *(a2 + 96) = v42;
    *(a2 + 112) = v43;
    v21 = v37;
    *a2 = v36;
    *(a2 + 16) = v21;
    v22 = v39;
    *(a2 + 32) = v38;
    *(a2 + 48) = v22;
  }

  return result;
}

unint64_t sub_1C0EFD4F4()
{
  v42 = *MEMORY[0x1E69E9840];
  v0 = sub_1C0F4F750();
  v1 = *(v0 - 8);
  v5 = MEMORY[0x1EEE9AC00](v0, v2, v3, v4);
  v7 = &v39[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v5, v8, v9, v10);
  v13 = &v39[-1] - v12;
  MEMORY[0x1EEE9AC00](v11, v14, v15, v16);
  v18 = &v39[-1] - v17;
  v19 = [objc_opt_self() defaultManager];
  *&v41[0] = 0;
  v20 = [v19 URLForDirectory:13 inDomain:8 appropriateForURL:0 create:0 error:v41];

  v21 = *&v41[0];
  if (v20)
  {
    sub_1C0F4F720();
    v22 = v21;

    (*(v1 + 32))(v18, v13, v0);
    sub_1C0F4F710();
    v27 = sub_1C0F4F760();
    v29 = v28;
    v30 = objc_opt_self();
    v31 = sub_1C0F4F7A0();
    v39[0] = 0;
    v32 = [v30 propertyListWithData:v31 options:1 format:0 error:v39];

    v33 = v39[0];
    if (v32)
    {
      sub_1C0F50520();
      swift_unknownObjectRelease();
      sub_1C0EFEECC(v40, v41);
      sub_1C0EED190(v41, v40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77930, &qword_1C0F57510);
      if (swift_dynamicCast())
      {
        v34 = sub_1C0EF493C(v39[0]);
        sub_1C0EFED6C(v27, v29);

        __swift_destroy_boxed_opaque_existential_0(v41);
        v35 = *(v1 + 8);
        v35(v7, v0);
        v35(v18, v0);
        return v34;
      }

      sub_1C0EFED6C(v27, v29);
      __swift_destroy_boxed_opaque_existential_0(v41);
    }

    else
    {
      v36 = v33;
      v37 = sub_1C0F4F6B0();

      swift_willThrow();
      sub_1C0EFED6C(v27, v29);
    }

    v23 = *(v1 + 8);
    v23(v7, v0);
    v23(v18, v0);
  }

  else
  {
    v24 = *&v41[0];
    v25 = sub_1C0F4F6B0();

    swift_willThrow();
  }

  return 0;
}

uint64_t sub_1C0EFD8B8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x1EEE69100]();
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  v6 = sub_1C0F50220();
  if (v7)
  {
    v6 = v5;
  }

  if (4 * v3 < v6 >> 14)
  {
    goto LABEL_14;
  }

  return MEMORY[0x1EEE69100]();
}

uint64_t sub_1C0EFD998(uint64_t a1)
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
  v11[1] = sub_1C0EEF864;

  return sub_1C0EF4B90(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C0EFDA74(double a1)
{
  v2 = sub_1C0F4F8D0();
  v3 = *(v2 - 8);
  v7 = MEMORY[0x1EEE9AC00](v2, v4, v5, v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10, v11, v12);
  v14 = &v35 - v13;
  v15 = sub_1C0F4F940();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17, v18, v19);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0F4F900();
  sub_1C0F4F8E0();
  (*(v16 + 8))(v21, v15);
  sub_1C0F4F8C0();
  LOBYTE(v15) = MEMORY[0x1C68E90C0](v14, v9);
  v22 = *(v3 + 8);
  v22(v9, v2);
  v22(v14, v2);
  v23 = sub_1C0F501A0();
  v24 = objc_opt_self();
  v25 = [v24 bundleWithIdentifier_];

  if (v15)
  {
    v26 = a1 / 1000.0;
    if (v25)
    {
      sub_1C0F4F640();
    }

    if (v26 < 0.1)
    {

      v27 = sub_1C0F501A0();
      v28 = [v24 bundleWithIdentifier_];

      if (v28)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    }

LABEL_12:
    a1 = v26;
    goto LABEL_13;
  }

  v26 = a1 / 1609.344;
  if (v25)
  {
    sub_1C0F4F640();
  }

  if (v26 >= 0.1)
  {
    goto LABEL_12;
  }

  a1 = a1 * 3.28084;
  v29 = sub_1C0F501A0();
  v28 = [v24 bundleWithIdentifier_];

  if (v28)
  {
LABEL_11:
    sub_1C0F4F640();
  }

LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE778D0, &qword_1C0F574A8);
  v30 = swift_allocObject();
  v31 = MEMORY[0x1E69E63B0];
  *(v30 + 16) = xmmword_1C0F561D0;
  v32 = MEMORY[0x1E69E6438];
  *(v30 + 56) = v31;
  *(v30 + 64) = v32;
  *(v30 + 32) = a1;
  v33 = sub_1C0F501C0();

  return v33;
}

void sub_1C0EFDF3C(double a1)
{
    ;
  }

    ;
  }

  v1 = round(a1 / 30.0);
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v2 = sub_1C0F501A0();
  v3 = [objc_opt_self() bundleWithIdentifier_];

  if (v3)
  {
    sub_1C0F4F640();
  }

  if (v1)
  {
    v4 = v1;
  }

  else
  {
    v4 = 12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE778D0, &qword_1C0F574A8);
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E6530];
  *(v5 + 16) = xmmword_1C0F561D0;
  v7 = MEMORY[0x1E69E65A8];
  *(v5 + 56) = v6;
  *(v5 + 64) = v7;
  *(v5 + 32) = v4;
  sub_1C0F501C0();
}

unint64_t sub_1C0EFE16C()
{
  result = qword_1EBE77828;
  if (!qword_1EBE77828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77828);
  }

  return result;
}

__n128 __swift_memcpy169_8(uint64_t a1, __int128 *a2)
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
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 153) = *(a2 + 153);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1C0EFE1FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 169))
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

uint64_t sub_1C0EFE258(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *(result + 168) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 169) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 169) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t dispatch thunk of VOMapsManager.describeMaps(elements:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x80);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C0EFE430;

  return v7(a1);
}

uint64_t sub_1C0EFE430(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1C0EFE584(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 120))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 112);
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

uint64_t sub_1C0EFE5E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *(result + 112) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VOMapsItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for VOMapsItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C0EFE7B4()
{
  result = qword_1EBE77830;
  if (!qword_1EBE77830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77830);
  }

  return result;
}

unint64_t sub_1C0EFE80C()
{
  result = qword_1EBE77838;
  if (!qword_1EBE77838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77838);
  }

  return result;
}

unint64_t sub_1C0EFE864()
{
  result = qword_1EBE77840;
  if (!qword_1EBE77840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77840);
  }

  return result;
}

unint64_t sub_1C0EFE8BC()
{
  result = qword_1EBE77848;
  if (!qword_1EBE77848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77848);
  }

  return result;
}

unint64_t sub_1C0EFE910()
{
  result = qword_1EBE77858;
  if (!qword_1EBE77858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77858);
  }

  return result;
}

unint64_t sub_1C0EFE964()
{
  result = qword_1EBE77860;
  if (!qword_1EBE77860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77860);
  }

  return result;
}

unint64_t sub_1C0EFE9B8()
{
  result = qword_1EBE77868;
  if (!qword_1EBE77868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77868);
  }

  return result;
}

unint64_t sub_1C0EFEA0C()
{
  result = qword_1EBE77888;
  if (!qword_1EBE77888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77888);
  }

  return result;
}

unint64_t sub_1C0EFEA98()
{
  result = qword_1EBE77898;
  if (!qword_1EBE77898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77898);
  }

  return result;
}

unint64_t sub_1C0EFEAEC()
{
  result = qword_1EBE778A0;
  if (!qword_1EBE778A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE778A0);
  }

  return result;
}

uint64_t sub_1C0EFEB40(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE77878, &qword_1C0F57480);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C0EFEBB8()
{
  result = qword_1EBE778B0;
  if (!qword_1EBE778B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE778B0);
  }

  return result;
}

void sub_1C0EFEC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 != 1)
  {
  }
}

void sub_1C0EFEC60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 != 1)
  {
  }
}

uint64_t sub_1C0EFECB4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C0EEF864;

  return sub_1C0EF70FC(a1, v4);
}

uint64_t sub_1C0EFED6C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_1C0EFEDC0()
{
  result = qword_1EBE778F0;
  if (!qword_1EBE778F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE778E8, &qword_1C0F574E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE778F0);
  }

  return result;
}

unint64_t sub_1C0EFEE24()
{
  result = qword_1EBE778F8;
  if (!qword_1EBE778F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE778F8);
  }

  return result;
}

unint64_t sub_1C0EFEE78()
{
  result = qword_1EBE77920;
  if (!qword_1EBE77920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77920);
  }

  return result;
}

_OWORD *sub_1C0EFEECC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1C0EFEEDC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C0F4F940();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1C0EFEF44(uint64_t a1, unsigned int a2)
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

uint64_t sub_1C0EFEFA0(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1C0EFF028(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_1C0EFF084(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1C0EFF0F8()
{
  result = qword_1EBE77960;
  if (!qword_1EBE77960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77960);
  }

  return result;
}

unint64_t sub_1C0EFF150()
{
  result = qword_1EBE77968;
  if (!qword_1EBE77968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77968);
  }

  return result;
}

unint64_t sub_1C0EFF1A8()
{
  result = qword_1EBE77970;
  if (!qword_1EBE77970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77970);
  }

  return result;
}

unint64_t sub_1C0EFF200()
{
  result = qword_1EBE77978;
  if (!qword_1EBE77978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77978);
  }

  return result;
}

unint64_t sub_1C0EFF258()
{
  result = qword_1EBE77980;
  if (!qword_1EBE77980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77980);
  }

  return result;
}

unint64_t sub_1C0EFF2AC()
{
  result = qword_1EBE77990;
  if (!qword_1EBE77990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77990);
  }

  return result;
}

unint64_t sub_1C0EFF300()
{
  result = qword_1EBE779A0;
  if (!qword_1EBE779A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE779A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessibilityAssistiveTouchAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilityAssistiveTouchAction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C0EFF520()
{
  result = qword_1EBE779B8;
  if (!qword_1EBE779B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE779B8);
  }

  return result;
}

unint64_t sub_1C0EFF578()
{
  result = qword_1EBE779C0;
  if (!qword_1EBE779C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE779C0);
  }

  return result;
}

unint64_t sub_1C0EFF5D0()
{
  result = qword_1EBE779C8;
  if (!qword_1EBE779C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE779C8);
  }

  return result;
}

unint64_t sub_1C0EFF628()
{
  result = qword_1EBE779D0;
  if (!qword_1EBE779D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE779D0);
  }

  return result;
}

unint64_t sub_1C0EFF680()
{
  result = qword_1EBE779D8;
  if (!qword_1EBE779D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE779D8);
  }

  return result;
}

unint64_t sub_1C0EFF6D8()
{
  result = qword_1EBE779E0;
  if (!qword_1EBE779E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE779E0);
  }

  return result;
}

double AccessibilityAssistiveTouchActionHandler.menuState.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t dispatch thunk of AccessibilityAssistiveTouchActionHandler.handleAction(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1C0EEF864;

  return v11(a1, a2, a3, a4);
}

unint64_t AXLLMError.errorDescription.getter()
{
  result = 0xD000000000000015;
  v2 = v0[1];
  if (v2)
  {
    if (v2 == 1)
    {
      return 0xD000000000000022;
    }

    else
    {
      v3 = *v0;
      sub_1C0F505A0();

      MEMORY[0x1C68E9A50](v3, v2);
      return 0xD00000000000001FLL;
    }
  }

  return result;
}

uint64_t sub_1C0EFF9BC()
{
  v1 = *v0;
  sub_1C0F50850();
  MEMORY[0x1C68EA070](v1);
  return sub_1C0F50890();
}

uint64_t sub_1C0EFFA30(uint64_t a1)
{
  v2 = *v1;
  sub_1C0F50850();
  MEMORY[0x1C68EA070](v2);
  return sub_1C0F50890();
}

unint64_t sub_1C0EFFA74@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C0F03C18(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id AXLLMManager.__allocating_init(clientName:model:handleSensitiveData:systemInstructions:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = objc_allocWithZone(v7);
  v15[OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager_useOnDeviceModel] = 0;
  v15[OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager_usePartnerCloud] = 0;
  v15[OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager_usePrivateCloudPlanner] = 0;
  *&v15[OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager__generativeExperiencesSession] = 0;
  v16 = &v15[OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager_clientName];
  *v16 = a1;
  v16[1] = a2;
  v15[OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager_handleSensitiveData] = a4;
  v17 = &v15[OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager_systemInstructions];
  *v17 = a5;
  v17[1] = a6;
  v18 = OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager_locale;
  v19 = sub_1C0F4F940();
  v20 = *(v19 - 8);
  (*(v20 + 16))(&v15[v18], a7, v19);
  *&v15[OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager_model] = a3;
  v23.receiver = v15;
  v23.super_class = v7;
  v21 = objc_msgSendSuper2(&v23, sel_init);
  (*(v20 + 8))(a7, v19);
  return v21;
}

id AXLLMManager.init(clientName:model:handleSensitiveData:systemInstructions:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager_useOnDeviceModel] = 0;
  v7[OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager_usePartnerCloud] = 0;
  v7[OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager_usePrivateCloudPlanner] = 0;
  *&v7[OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager__generativeExperiencesSession] = 0;
  v10 = &v7[OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager_clientName];
  *v10 = a1;
  v10[1] = a2;
  v7[OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager_handleSensitiveData] = a4;
  v11 = &v7[OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager_systemInstructions];
  *v11 = a5;
  v11[1] = a6;
  v12 = OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager_locale;
  v13 = sub_1C0F4F940();
  v14 = *(v13 - 8);
  (*(v14 + 16))(&v7[v12], a7, v13);
  *&v7[OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager_model] = a3;
  v17.receiver = v7;
  v17.super_class = type metadata accessor for AXLLMManager(0);
  v15 = objc_msgSendSuper2(&v17, sel_init);
  (*(v14 + 8))(a7, v13);
  return v15;
}

uint64_t sub_1C0EFFE38(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = sub_1C0F4FAC0(), sub_1C0F04E10(&qword_1EBE77AE0, MEMORY[0x1EEE89368]), v5 = sub_1C0F50170(), v9 = -1 << *(a2 + 32), v10 = v5 & ~v9, v20 = a2 + 56, ((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0))
  {
    v19 = a1;
    v17 = ~v9;
    v11 = *(v4 - 8);
    v18 = v11[2];
    v12 = v11[8];
    v13 = v11[9];
    v14 = (v11 + 1);
    do
    {
      MEMORY[0x1EEE9AC00](v5, v6, v7, v8);
      v18(&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), *(a2 + 48) + v13 * v10, v4);
      sub_1C0F04E10(&qword_1EBE77AE8, MEMORY[0x1EEE89370]);
      v15 = sub_1C0F50190();
      v5 = (*v14)(&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      if (v15)
      {
        break;
      }

      v10 = (v10 + 1) & v17;
    }

    while (((*(v20 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t *sub_1C0EFFFF0()
{
  v1 = v0;
  v2 = sub_1C0F4F860();
  v157 = *(v2 - 8);
  v158 = v2;
  MEMORY[0x1EEE9AC00](v2, v3, v4, v5);
  v156 = &v139 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C0F4FA30();
  v159 = *(v7 - 8);
  v160 = v7;
  MEMORY[0x1EEE9AC00](v7, v8, v9, v10);
  v12 = &v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77AA0, &qword_1C0F57E18);
  v17 = MEMORY[0x1EEE9AC00](v13 - 8, v14, v15, v16);
  v19 = &v139 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v20, v21, v22);
  v24 = &v139 - v23;
  v25 = sub_1C0F4F920();
  v161 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v26, v27, v28);
  v30 = &v139 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1C0F4F940();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v33, v34, v35);
  v37 = &v139 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77AA8, &qword_1C0F57E20);
  MEMORY[0x1EEE9AC00](v38 - 8, v39, v40, v41);
  v43 = &v139 - v42;
  if (*(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager__generativeExperiencesSession))
  {
    v44 = *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager__generativeExperiencesSession);
    goto LABEL_3;
  }

  v45 = v31;
  v150 = OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager__generativeExperiencesSession;
  v151 = v19;
  v155 = v12;
  v152 = v1;
  v153 = v24;
  v46 = *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager_model);
  if (v46 > 1)
  {
    v47 = v25;
    if (v46 != 2)
    {
      v48 = v161;
      v49 = v45;
      v50 = v32;
      if (v46 == 3)
      {
        v154 = 0xD000000000000019;
        v51 = v30;
LABEL_17:
        v54 = v43;
        v55 = sub_1C0F22B3C(MEMORY[0x1E69E7CC0]);
        sub_1C0F4F900();
        sub_1C0F4F930();
        (*(v50 + 8))(v37, v49);
        sub_1C0F4F910();
        (*(v48 + 8))(v51, v47);
        v56 = sub_1C0F4F890();
        v57 = *(v56 - 8);
        if ((*(v57 + 48))(v54, 1, v56) == 1)
        {
          sub_1C0EEFAA8(v54, &qword_1EBE77AA8, &qword_1C0F57E20);
        }

        else
        {
          v58 = sub_1C0F4F880();
          v60 = v59;
          (*(v57 + 8))(v54, v56);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v162[0] = v55;
          sub_1C0F03918(v58, v60, 0x65676175676E616CLL, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
        }

        v62 = sub_1C0F4F9C0();
        v63 = *(v62 - 8);
        v44 = *(v63 + 64);
        MEMORY[0x1EEE9AC00](v62, v64, v65, v66);
        v67 = (v44 + 15) & 0xFFFFFFFFFFFFFFF0;
        v68 = v163;
        v69 = sub_1C0F4F9B0();
        v73 = v155;
        if (v68)
        {
          return v44;
        }

        v163 = 0;
        v74 = &v139 - v67;
        MEMORY[0x1EEE9AC00](v69, v70, v71, v72);
        (*(v63 + 16))(&v139 - v67, &v139 - v67, v62);
        v75 = v153;
        sub_1C0F4FA20();
        v76 = v151;
        sub_1C0EED570(v75, v151, &qword_1EBE77AA0, &qword_1C0F57E18);
        v78 = v159;
        v77 = v160;
        if ((*(v159 + 48))(v76, 1, v160) == 1)
        {
          v44 = &qword_1EBE77AA0;
          sub_1C0EEFAA8(v76, &qword_1EBE77AA0, &qword_1C0F57E18);
          sub_1C0F0446C();
          swift_allocError();
          *v79 = 0;
          v79[1] = 0;
          swift_willThrow();
          sub_1C0EEFAA8(v75, &qword_1EBE77AA0, &qword_1C0F57E18);
          (*(v63 + 8))(v74, v62);
          return v44;
        }

        v146 = v74;
        v147 = v63;
        v148 = v62;
        v149 = &v139;
        (*(v78 + 32))(v73, v76, v77);
        v80 = v77;
        v81 = [objc_opt_self() processInfo];
        v82 = v78;
        v83 = [v81 processIdentifier];

        v144 = v83;
        v161 = sub_1C0F4FAB0();
        v151 = &v139;
        v154 = *(v161 - 8);
        v84 = *(v154 + 64);
        MEMORY[0x1EEE9AC00](v161, v85, v86, v87);
        v145 = (v84 + 15) & 0xFFFFFFFFFFFFFFF0;
        v88 = &v139 - v145;
        v89 = *(v152 + OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager_clientName);
        v90 = *(v152 + OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager_clientName + 8);
        strcpy(v162, "accessibility.");
        HIBYTE(v162[1]) = -18;
        MEMORY[0x1C68E9A50](v89, v90);
        v143 = v162[1];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77AB0, &qword_1C0F57E28);
        v91 = (*(v82 + 80) + 32) & ~*(v82 + 80);
        v92 = swift_allocObject();
        *(v92 + 16) = xmmword_1C0F561D0;
        (*(v82 + 16))(v92 + v91, v73, v80);
        v93 = sub_1C0F4FA10();
        MEMORY[0x1EEE9AC00](v93 - 8, v94, v95, v96);
        sub_1C0F4FA00();
        sub_1C0F4FAA0();
        v143 = sub_1C0F4FD50();
        v144 = &v139;
        v97 = *(v143 - 8);
        v98 = *(v97 + 64);
        v102 = MEMORY[0x1EEE9AC00](v143, v99, v100, v101);
        v142 = (v98 + 15) & 0xFFFFFFFFFFFFFFF0;
        v140 = &v139 - v142;
        v141 = &v139;
        MEMORY[0x1EEE9AC00](v102, v103, v104, v105);
        v106 = *(v154 + 16);
        v107 = &v139 - v145;
        v145 = v88;
        v106(v107, v88, v161);
        v162[0] = 0xD000000000000061;
        v162[1] = 0x80000001C0F66A10;
        v108 = v156;
        sub_1C0F4F850();
        v109 = sub_1C0F4F840();
        v111 = v110;
        (*(v157 + 8))(v108, v158);
        MEMORY[0x1C68E9A50](v109, v111);

        v157 = v162[1];
        v158 = v162[0];
        v112 = sub_1C0F50070();
        v156 = &v139;
        MEMORY[0x1EEE9AC00](v112 - 8, v113, v114, v115);
        v116 = sub_1C0F50140();
        MEMORY[0x1EEE9AC00](v116, v117, v116, v118);
        (*(v120 + 104))(&v139 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69C63F0]);
        v121 = sub_1C0F50120();
        v125 = MEMORY[0x1EEE9AC00](v121 - 8, v122, v123, v124);
        MEMORY[0x1EEE9AC00](v125, v126, v127, v128);
        v129 = v163;
        sub_1C0F50130();
        v163 = v129;
        sub_1C0F50060();
        v130 = v140;
        v131 = v143;
        v132 = sub_1C0F4FD40();
        MEMORY[0x1EEE9AC00](v132, v133, v134, v135);
        (*(v97 + 16))(&v139 - v142, v130, v131);
        sub_1C0F4FD80();
        v44 = swift_allocObject();
        v136 = sub_1C0F4FD60();
        if (!v136)
        {
          sub_1C0F0446C();
          swift_allocError();
          *v137 = xmmword_1C0F56FB0;
          swift_willThrow();
          (*(v97 + 8))(v130, v131);
          (*(v154 + 8))(v145, v161);
          (*(v159 + 8))(v155, v160);
          sub_1C0EEFAA8(v153, &qword_1EBE77AA0, &qword_1C0F57E18);
          (*(v147 + 8))(v146, v148);
          return v44;
        }

        v44 = v136;
        (*(v97 + 8))(v130, v131);
        (*(v154 + 8))(v145, v161);
        (*(v159 + 8))(v155, v160);
        sub_1C0EEFAA8(v153, &qword_1EBE77AA0, &qword_1C0F57E18);
        (*(v147 + 8))(v146, v148);
        *(v152 + v150) = v44;

LABEL_3:

        return v44;
      }

      if (v46 == 4)
      {
        v51 = v30;
        v53 = 0xD000000000000018;
LABEL_16:
        v154 = v53;
        goto LABEL_17;
      }

      goto LABEL_27;
    }

    v52 = 0xD000000000000040;
LABEL_11:
    v154 = v52;
    v48 = v161;
    v49 = v45;
    v50 = v32;
    v51 = v30;
    goto LABEL_17;
  }

  v47 = v25;
  if (!v46)
  {
    v52 = 0xD00000000000002FLL;
    goto LABEL_11;
  }

  if (v46 == 1)
  {
    v48 = v161;
    v49 = v45;
    v50 = v32;
    v51 = v30;
    v53 = 0xD000000000000033;
    goto LABEL_16;
  }

LABEL_27:
  v162[0] = *(v1 + OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager_model);
  result = sub_1C0F507A0();
  __break(1u);
  return result;
}

uint64_t sub_1C0F00E90(uint64_t a1)
{
  v2 = sub_1C0F50120();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4, v5, v6);
  v8 = &v16[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager_systemInstructions);
  v9 = *(a1 + OBJC_IVAR____TtC26AccessibilitySharedSupport12AXLLMManager_systemInstructions + 8);
  v16[3] = MEMORY[0x1E69E6158];
  v16[4] = MEMORY[0x1E69C6558];
  v16[0] = v10;
  v16[1] = v9;

  v11 = MEMORY[0x1E69C6390];
  sub_1C0F500E0();
  __swift_destroy_boxed_opaque_existential_0(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77AC0, &qword_1C0F57E38);
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C0F561D0;
  (*(v3 + 16))(v13 + v12, v8, v2);
  MEMORY[0x1C68E98E0](v13, v2, v11);

  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_1C0F01048(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_1C0F4F9E0();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77A28, &qword_1C0F57B78);
  v2[10] = swift_task_alloc();
  v2[11] = sub_1C0F502F0();
  v2[12] = sub_1C0F502E0();
  v5 = sub_1C0F502B0();
  v2[13] = v5;
  v2[14] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1C0F01178, v5, v4);
}

uint64_t sub_1C0F01178()
{
  v1 = v0[5];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77A30, &qword_1C0F57B80);
  v0[15] = v2;
  v0[16] = *(v2 - 8);
  v3 = swift_task_alloc();
  v0[17] = v3;
  sub_1C0F0192C(v1, v3);
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77A38, &unk_1C0F57B88);
  v0[18] = v4;
  v0[19] = *(v4 - 8);
  v0[20] = swift_task_alloc();
  sub_1C0F4F9F0();
  v0[21] = sub_1C0F502E0();
  v5 = sub_1C0F043F4();
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_1C0F013AC;
  v7 = v0[18];
  v8 = v0[10];

  return MEMORY[0x1EEE6D8C8](v8, v7, v5);
}

uint64_t sub_1C0F013AC()
{
  v2 = *v1;
  *(v2 + 184) = v0;

  v3 = *(v2 + 168);
  if (v0)
  {

    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1C0F502B0();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1C0F017BC;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1C0F502B0();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1C0F0154C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v4, v6);
}

uint64_t sub_1C0F0154C()
{

  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1C0F015B0, v1, v2);
}

uint64_t sub_1C0F015B0()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = v0[19];
    v4 = v0[20];
    v7 = v0[17];
    v6 = v0[18];
    v8 = v0[15];
    v9 = v0[16];

    (*(v5 + 8))(v4, v6);
    (*(v9 + 8))(v7, v8);

    v10 = v0[2];
    v11 = v0[3];

    v12 = v0[1];

    return v12(v10, v11);
  }

  else
  {
    v14 = v0[9];
    (*(v3 + 32))(v14, v1, v2);
    v15 = sub_1C0F4F9D0();
    MEMORY[0x1C68E9A50](v15);

    (*(v3 + 8))(v14, v2);
    v0[21] = sub_1C0F502E0();
    v16 = sub_1C0F043F4();
    v17 = swift_task_alloc();
    v0[22] = v17;
    *v17 = v0;
    v17[1] = sub_1C0F013AC;
    v18 = v0[18];
    v19 = v0[10];

    return MEMORY[0x1EEE6D8C8](v19, v18, v16);
  }
}

uint64_t sub_1C0F017BC()
{
  v0[4] = v0[23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE775B0, &qword_1C0F56AE0);
  swift_willThrowTypedImpl();

  v1 = v0[13];
  v2 = v0[14];

  return MEMORY[0x1EEE6DFA0](sub_1C0F01858, v1, v2);
}

uint64_t sub_1C0F01858()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[15];
  v6 = v0[16];

  (*(v2 + 8))(v1, v3);
  (*(v6 + 8))(v4, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1C0F0192C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C0F50090();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7, v8, v9);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0F021E8(a1, v11);
  v12 = sub_1C0EFFFF0();
  if (v2)
  {
    return (*(v6 + 8))(v11, v5);
  }

  v80 = v12;
  v82 = sub_1C0F4FC10();
  v83 = &v68;
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82, v14, v15, v16);
  v78 = v6;
  v74 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C0F4FBF0();
  v76 = &v68;
  MEMORY[0x1EEE9AC00](v18 - 8, v19, v20, v21);
  v79 = v5;
  v22 = sub_1C0F4FBD0();
  v75 = &v68;
  v23 = *(v22 - 8);
  v84 = 0;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22 - 8, v25, v26, v27);
  v72 = ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = a2;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77A48, &qword_1C0F57B98);
  sub_1C0F4FBC0();
  v28 = swift_allocObject();
  v70 = xmmword_1C0F561D0;
  *(v28 + 16) = xmmword_1C0F561D0;
  sub_1C0F4FBB0();
  sub_1C0F4FBA0();
  sub_1C0F4FBE0();
  sub_1C0F4FC00();
  v75 = sub_1C0F4FB90();
  v76 = &v68;
  v73 = *(v75 - 1);
  MEMORY[0x1EEE9AC00](v75, v29, v30, v31);
  v69 = &v68 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1C0F4FB70();
  v37 = MEMORY[0x1EEE9AC00](v33 - 8, v34, v35, v36);
  MEMORY[0x1EEE9AC00](v37, v38, v39, v40);
  *(swift_allocObject() + 16) = v70;
  sub_1C0F4FBB0();
  sub_1C0F4FBA0();
  sub_1C0F4FB60();
  v41 = sub_1C0F4FB80();
  v72 = &v68;
  MEMORY[0x1EEE9AC00](v41, v42, v43, v44);
  *&v70 = &v64;
  v66 = v11;
  v71 = sub_1C0F4FA90();
  v45 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71, v46, v47, v48);
  v50 = &v68 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77A50, &qword_1C0F57BA0);
  v68 = &v68;
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51 - 8, v53, v54, v55);
  v56 = &v68 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1C0F4FA40();
  v58 = (*(*(v57 - 8) + 56))(v56, 1, 1, v57);
  MEMORY[0x1EEE9AC00](v58, v59, v60, v61);
  sub_1C0EED570(v56, v56, &qword_1EBE77A50, &qword_1C0F57BA0);
  LOBYTE(v67) = 1;
  v66 = 0;
  LOBYTE(v65) = 1;
  v64 = 0;
  sub_1C0F4FA80();
  sub_1C0F4FA70();
  sub_1C0F4FA50();
  sub_1C0F4FA60();
  sub_1C0EEFAA8(v56, &qword_1EBE77A50, &qword_1C0F57BA0);
  v62 = v69;
  v63 = v74;
  sub_1C0F4FD70();

  (*(v45 + 8))(v50, v71);
  (*(v73 + 8))(v62, v75);
  (*(v81 + 8))(v63, v82);
  return (*(v78 + 8))(v11, v79);
}

uint64_t sub_1C0F02060(uint64_t a1)
{
  v1 = sub_1C0F50090();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3, v4, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0F500C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77A98, &qword_1C0F57E10);
  v8 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C0F561D0;
  (*(v2 + 16))(v9 + v8, v7, v1);
  MEMORY[0x1C68E98C0](v9);

  return (*(v2 + 8))(v7, v1);
}

uint64_t sub_1C0F021E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v165 = type metadata accessor for AXLLMInput(0);
  v4 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165, v5, v6, v7);
  v9 = v154 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = a2;
  result = sub_1C0F500A0();
  v169 = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v162 = *(v4 + 72);
    v163 = v9;
    do
    {
      sub_1C0F04CCC(v12, v9);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v170 = sub_1C0F50140();
      v16 = *(v170 - 8);
      v17 = *(v16 + 64);
      v167 = v12;
      v168 = v11;
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77AD0, &qword_1C0F57E48);
          v166 = v154;
          v19 = &v9[*(v18 + 48)];
          v21 = *v19;
          v20 = *(v19 + 1);
          MEMORY[0x1EEE9AC00](v18, v22, v23, v24);
          v160 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
          v25 = v154 - v160;
          (*(v16 + 32))(v154 - v160, v9, v170);
          v26 = sub_1C0F50120();
          v159 = v154;
          v161 = *(v26 - 8);
          v27 = *(v161 + 64);
          v31 = MEMORY[0x1EEE9AC00](v26, v28, v29, v30);
          v158 = ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
          v32 = v16;
          v33 = (v154 - v158);
          MEMORY[0x1EEE9AC00](v31, v34, v35, v36);
          v154[-2] = v21;
          v154[-1] = v20;
          v37 = v169;
          sub_1C0F50130();
          v169 = v37;

          v155 = sub_1C0F50070();
          v156 = v154;
          v38 = *(v155 - 8);
          v42 = MEMORY[0x1EEE9AC00](v155, v39, v40, v41);
          v44 = v154 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
          MEMORY[0x1EEE9AC00](v42, v45, v46, v47);
          v48 = *(v32 + 16);
          v49 = v154 - v160;
          v160 = v25;
          v50 = v48(v49, v25, v170);
          MEMORY[0x1EEE9AC00](v50, v51, v52, v53);
          v54 = *(v161 + 16);
          v55 = (v154 - v158);
          v157 = v33;
          v158 = v26;
          v54(v55, v33, v26);
          sub_1C0F50060();
          v56 = sub_1C0F50080();
          v58 = v57;
          v59 = *v57;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v58 = v59;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v59 = sub_1C0F22560(0, v59[2] + 1, 1, v59);
            *v58 = v59;
          }

          v62 = v59[2];
          v61 = v59[3];
          if (v62 >= v61 >> 1)
          {
            v59 = sub_1C0F22560((v61 > 1), v62 + 1, 1, v59);
            *v58 = v59;
          }

          v59[2] = v62 + 1;
          (*(v38 + 32))(v59 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v62, v44, v155);
          v56(v171, 0);
          (*(v161 + 8))(v157, v158);
          result = (*(v32 + 8))(v160, v170);
        }

        else
        {
          v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77AC8, &qword_1C0F57E40);
          v166 = v154;
          v109 = &v9[*(v108 + 48)];
          v110 = *v109;
          v111 = v109[1];
          MEMORY[0x1EEE9AC00](v108, v112, v113, v114);
          v160 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
          v115 = v154 - v160;
          (*(v16 + 32))(v154 - v160, v9, v170);
          v116 = v16;
          v117 = sub_1C0F50120();
          v157 = v154;
          v161 = *(v117 - 8);
          v118 = *(v161 + 64);
          v122 = MEMORY[0x1EEE9AC00](v117, v119, v120, v121);
          v156 = ((v118 + 15) & 0xFFFFFFFFFFFFFFF0);
          v123 = (v154 - v156);
          MEMORY[0x1EEE9AC00](v122, v124, v125, v126);
          v158 = v111;
          v159 = v110;
          v154[-2] = v110;
          v154[-1] = v111;
          v127 = v169;
          sub_1C0F50130();
          v169 = v127;
          v128 = sub_1C0F50070();
          v154[1] = v154;
          v154[0] = v128;
          v129 = *(v128 - 8);
          v133 = MEMORY[0x1EEE9AC00](v128, v130, v131, v132);
          v135 = v154 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0);
          MEMORY[0x1EEE9AC00](v133, v136, v137, v138);
          v139 = *(v116 + 16);
          v140 = v154 - v160;
          v160 = v115;
          v141 = v139(v140, v115, v170);
          MEMORY[0x1EEE9AC00](v141, v142, v143, v144);
          v145 = *(v161 + 16);
          v146 = (v154 - v156);
          v155 = v123;
          v156 = v117;
          v145(v146, v123, v117);
          sub_1C0F50060();
          v147 = sub_1C0F50080();
          v149 = v148;
          v150 = *v148;
          v151 = swift_isUniquelyReferenced_nonNull_native();
          *v149 = v150;
          if ((v151 & 1) == 0)
          {
            v150 = sub_1C0F22560(0, v150[2] + 1, 1, v150);
            *v149 = v150;
          }

          v153 = v150[2];
          v152 = v150[3];
          if (v153 >= v152 >> 1)
          {
            v150 = sub_1C0F22560((v152 > 1), v153 + 1, 1, v150);
            *v149 = v150;
          }

          v150[2] = v153 + 1;
          (*(v129 + 32))(v150 + ((*(v129 + 80) + 32) & ~*(v129 + 80)) + *(v129 + 72) * v153, v135, v154[0]);
          v147(v171, 0);
          sub_1C0EFED6C(v159, v158);
          (*(v161 + 8))(v155, v156);
          result = (*(v116 + 8))(v160, v170);
        }

        v14 = v167;
        v13 = v168;
      }

      else
      {
        v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77AD0, &qword_1C0F57E48);
        v166 = v154;
        v64 = &v9[*(v63 + 48)];
        v66 = *v64;
        v65 = *(v64 + 1);
        MEMORY[0x1EEE9AC00](v63, v67, v68, v69);
        v159 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
        v70 = (v154 - v159);
        v71 = v170;
        (*(v16 + 32))(v154 - v159, v9, v170);
        v72 = sub_1C0F50120();
        v158 = v154;
        v160 = *(v72 - 8);
        v161 = v72;
        v73 = *(v160 + 64);
        v77 = MEMORY[0x1EEE9AC00](v72, v74, v75, v76);
        v157 = ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
        v78 = (v154 - v157);
        MEMORY[0x1EEE9AC00](v77, v79, v80, v81);
        v154[-2] = v66;
        v154[-1] = v65;
        v82 = v169;
        sub_1C0F50130();
        v169 = v82;

        v155 = sub_1C0F50070();
        v156 = v154;
        v83 = *(v155 - 8);
        v87 = MEMORY[0x1EEE9AC00](v155, v84, v85, v86);
        v89 = v154 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
        MEMORY[0x1EEE9AC00](v87, v90, v91, v92);
        v93 = *(v16 + 16);
        v94 = (v154 - v159);
        v159 = v70;
        v95 = v93(v94, v70, v71);
        MEMORY[0x1EEE9AC00](v95, v96, v97, v98);
        v99 = *(v160 + 16);
        v100 = (v154 - v157);
        v157 = v78;
        v99(v100, v78, v161);
        sub_1C0F50060();
        v101 = sub_1C0F50080();
        v103 = v102;
        v104 = *v102;
        v105 = swift_isUniquelyReferenced_nonNull_native();
        *v103 = v104;
        if ((v105 & 1) == 0)
        {
          v104 = sub_1C0F22560(0, v104[2] + 1, 1, v104);
          *v103 = v104;
        }

        v107 = v104[2];
        v106 = v104[3];
        if (v107 >= v106 >> 1)
        {
          v104 = sub_1C0F22560((v106 > 1), v107 + 1, 1, v104);
          *v103 = v104;
        }

        v14 = v167;
        v13 = v168;
        v104[2] = v107 + 1;
        (*(v83 + 32))(v104 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v107, v89, v155);
        v101(v171, 0);
        (*(v160 + 8))(v157, v161);
        result = (*(v16 + 8))(v159, v170);
      }

      v9 = v163;
      v12 = v14 + v162;
      v11 = v13 - 1;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_1C0F02E78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0F50120();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6, v7, v8);
  v10 = &v16[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[3] = MEMORY[0x1E69E6158];
  v16[4] = MEMORY[0x1E69C6558];
  v16[0] = a1;
  v16[1] = a2;

  v11 = MEMORY[0x1E69C6390];
  sub_1C0F500E0();
  __swift_destroy_boxed_opaque_existential_0(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77AC0, &qword_1C0F57E38);
  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C0F561D0;
  (*(v5 + 16))(v13 + v12, v10, v4);
  MEMORY[0x1C68E98E0](v13, v4, v11);

  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_1C0F03030(uint64_t a1, unint64_t a2)
{
  v4 = sub_1C0F50120();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6, v7, v8);
  v10 = &v16[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[3] = &type metadata for PromptImage;
  v16[4] = sub_1C0F04D68();
  v16[0] = a1;
  v16[1] = a2;
  sub_1C0F04DBC(a1, a2);
  v11 = MEMORY[0x1E69C6390];
  sub_1C0F500E0();
  __swift_destroy_boxed_opaque_existential_0(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77AC0, &qword_1C0F57E38);
  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C0F561D0;
  (*(v5 + 16))(v13 + v12, v10, v4);
  MEMORY[0x1C68E98E0](v13, v4, v11);

  return (*(v5 + 8))(v10, v4);
}

id AXLLMManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AXLLMManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXLLMManager(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C0F0335C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C0F033F4;

  return sub_1C0F01048(a1);
}

uint64_t sub_1C0F033F4(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_1C0F03528@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = sub_1C0F500F0();
  MEMORY[0x1EEE9AC00](v5, v6, v5, v7);
  (*(v9 + 104))(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69C6218]);
  sub_1C0F04DBC(v4, v3);
  sub_1C0F50110();
  v10 = *MEMORY[0x1E69C6330];
  v11 = sub_1C0F50100();
  return (*(*(v11 - 8) + 104))(a1, v10, v11);
}

uint64_t sub_1C0F03658(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77AB8, &qword_1C0F57E30);
  v37 = v4;
  result = sub_1C0F50640();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_1C0F50850();
      sub_1C0F50200();
      result = sub_1C0F50890();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1C0F03918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1C0EFA930(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1C0F03658(v18, a5 & 1);
      v13 = sub_1C0EFA930(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_1C0F507C0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1C0F03AA0();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

void *sub_1C0F03AA0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77AB8, &qword_1C0F57E30);
  v2 = *v0;
  v3 = sub_1C0F50630();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

unint64_t sub_1C0F03C18(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1C0F03C48()
{
  v0 = sub_1C0F4F920();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2, v3, v4);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C0F4F940();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9, v10, v11);
  v13 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77AA8, &qword_1C0F57E20);
  MEMORY[0x1EEE9AC00](v14 - 8, v15, v16, v17);
  v19 = &v74 - v18;
  sub_1C0F4F900();
  sub_1C0F4F930();
  (*(v8 + 8))(v13, v7);
  sub_1C0F4F910();
  (*(v1 + 8))(v6, v0);
  v20 = sub_1C0F4F890();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_1C0EEFAA8(v19, &qword_1EBE77AA8, &qword_1C0F57E20);
    v22 = 0;
  }

  else
  {
    sub_1C0F4F880();

    (*(v21 + 8))(v19, v20);
    v78 = sub_1C0F4FAF0();
    v79 = &v74;
    v23 = *(v78 - 8);
    v24 = *(v23 + 64);
    MEMORY[0x1EEE9AC00](v78, v25, v26, v27);
    v77 = ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    v28 = (&v74 - v77);
    v75 = sub_1C0F4FB50();
    v76 = &v74;
    v29 = *(v75 - 1);
    MEMORY[0x1EEE9AC00](v75, v30, v31, v32);
    v34 = &v74 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    v35 = sub_1C0F4FB10();
    v74 = &v74;
    v36 = *(v35 - 8);
    MEMORY[0x1EEE9AC00](v35, v37, v38, v39);
    v41 = &v74 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
    v42 = sub_1C0F4FB30();
    MEMORY[0x1EEE9AC00](v42, v43, v42, v44);
    (*(v46 + 104))(&v74 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69A12A8]);
    sub_1C0F4FB00();
    sub_1C0F4FB40();
    (*(v36 + 8))(v41, v35);
    sub_1C0F4FB20();
    v47 = (*(v29 + 8))(v34, v75);
    v48 = v78;
    MEMORY[0x1EEE9AC00](v47, v49, v50, v51);
    v52 = (&v74 - v77);
    (*(v23 + 16))(&v74 - v77, v28, v48);
    v53 = (*(v23 + 88))(v52, v48);
    if (MEMORY[0x1E69A0F08] && v53 == *MEMORY[0x1E69A0F08])
    {
      (*(v23 + 96))(v52, v48);
      v54 = sub_1C0F4FAE0();
      v76 = v28;
      v77 = &v74;
      v55 = *(v54 - 8);
      MEMORY[0x1EEE9AC00](v54, v56, v57, v58);
      v60 = &v74 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v55 + 32))(v60, v52, v54);
      v61 = sub_1C0F4FAD0();
      v62 = sub_1C0F4FAC0();
      v75 = &v74;
      v63 = v62;
      v74 = &v74;
      v64 = v48;
      v65 = *(v62 - 8);
      MEMORY[0x1EEE9AC00](v62, v66, v67, v68);
      v70 = &v74 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v65 + 104))(v70, *MEMORY[0x1E69A1080], v63);
      v71 = sub_1C0EFFE38(v70, v61);

      (*(v65 + 8))(v70, v63);
      (*(v55 + 8))(v60, v54);
      (*(v23 + 8))(v76, v64);
      v22 = v71 ^ 1;
    }

    else
    {
      v72 = *(v23 + 8);
      v72(v28, v48);
      v72(v52, v48);
      v22 = 1;
    }
  }

  return v22 & 1;
}

unint64_t sub_1C0F043F4()
{
  result = qword_1EBE77A40;
  if (!qword_1EBE77A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE77A38, &unk_1C0F57B88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77A40);
  }

  return result;
}

unint64_t sub_1C0F0446C()
{
  result = qword_1EBE77A58;
  if (!qword_1EBE77A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77A58);
  }

  return result;
}

unint64_t sub_1C0F044C4()
{
  result = qword_1EBE77A60;
  if (!qword_1EBE77A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77A60);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_26AccessibilitySharedSupport10AXLLMErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1C0F0453C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1C0F04590(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1C0F045EC(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void sub_1C0F0463C(uint64_t a1)
{
  sub_1C0F046D0(319, &qword_1EBE77A78, MEMORY[0x1E69E6158]);
  if (v1 <= 0x3F)
  {
    sub_1C0F046D0(319, &qword_1EBE77A80, MEMORY[0x1E6969080]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1C0F046D0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_1C0F50140();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t dispatch thunk of AXLLMManagerProtocol.ask(inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C0F04F38;

  return v9(a1, a2, a3);
}

{
  return (*(a3 + 24))(a1, a2);
}

uint64_t sub_1C0F048B4(uint64_t a1)
{
  result = sub_1C0F4F940();
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

uint64_t dispatch thunk of AXLLMManager.ask(inputs:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x188);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C0F04B18;

  return v7(a1);
}

uint64_t sub_1C0F04B18(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_1C0F04CCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXLLMInput(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C0F04D68()
{
  result = qword_1EBE77AD8;
  if (!qword_1EBE77AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77AD8);
  }

  return result;
}

uint64_t sub_1C0F04DBC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1C0F04E10(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C0F4FAC0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1C0F04E70(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C0F04EC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t AccessibilityResolvedAction.identifier.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1EEE9AC00](a1, v4, a3, a4);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_1C0F501D0();
}

id _s26AccessibilitySharedSupport0A14ResolvedActionPAAE6bundleSo8NSBundleCvg_0()
{
  v0 = AXSystemRootDirectory();
  sub_1C0F501B0();

  v6 = sub_1C0F50270();
  v7 = v1;
  sub_1C0F50230();
  v2 = objc_allocWithZone(MEMORY[0x1E696AAE8]);
  v3 = sub_1C0F501A0();

  v4 = [v2 initWithPath_];

  result = v4;
  if (!v4)
  {
    return [objc_allocWithZone(MEMORY[0x1E696AAE8]) init];
  }

  return result;
}

uint64_t sub_1C0F05170(char a1, uint64_t a2, uint64_t (**a3)(void, void))
{
  v6 = a3[7](a2, a3);
  a3[3](a2, a3);
  if (a1)
  {

    MEMORY[0x1C68E9A50](0x49575F4C4C55465FLL, 0xEB00000000485444);
  }

  v7 = sub_1C0F501A0();

  a3[6](a2, a3);
  v8 = sub_1C0F501A0();

  v9 = [v6 localizedStringForKey:v7 value:0 table:v8];

  v10 = sub_1C0F501B0();
  return v10;
}

uint64_t sub_1C0F053C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773B0, &qword_1C0F57F40);
  MEMORY[0x1EEE9AC00](v8 - 8, v9, v10, v11);
  v13 = v25 - v12;
  sub_1C0F079F0(a3, v25 - v12);
  v14 = sub_1C0F50320();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_1C0EEFAA8(v13, &qword_1EBE773B0, &qword_1C0F57F40);
  }

  else
  {
    sub_1C0F50310();
    (*(v15 + 8))(v13, v14);
  }

  v17 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1C0F502B0();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1C0F501E0() + 32;

      if (v20 | v18)
      {
        v26[0] = 0;
        v26[1] = 0;
        v22 = v26;
        v26[2] = v18;
        v26[3] = v20;
      }

      else
      {
        v22 = 0;
      }

      v25[1] = 7;
      v25[2] = v22;
      v25[3] = v21;
      v23 = swift_task_create();

      sub_1C0EEFAA8(a3, &qword_1EBE773B0, &qword_1C0F57F40);

      return v23;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C0EEFAA8(a3, &qword_1EBE773B0, &qword_1C0F57F40);
  if (v20 | v18)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v18;
    v26[7] = v20;
  }

  return swift_task_create();
}

uint64_t AccessibilityActionManager.__allocating_init(client:domains:)(uint64_t *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  AccessibilityActionManager.init(client:domains:)(a1, a2);
  return v4;
}

void *AccessibilityActionManager.init(client:domains:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773B0, &qword_1C0F57F40);
  MEMORY[0x1EEE9AC00](v6 - 8, v7, v8, v9);
  v11 = v18 - v10;
  v13 = *a1;
  v12 = a1[1];
  swift_defaultActor_initialize();
  v3[14] = v13;
  v3[15] = v12;
  type metadata accessor for AccessibilityActionSender();
  v14 = swift_allocObject();
  swift_bridgeObjectRetain_n();
  swift_defaultActor_initialize();
  v14[18] = 0;
  swift_unknownObjectWeakInit();
  v14[14] = [objc_allocWithZone(AXSSActionHIDSender) init];
  v14[15] = v13;
  v14[16] = v12;
  v3[16] = v14;
  v18[0] = v13;
  v18[1] = v12;
  type metadata accessor for AccessibilityActionReceiver();
  swift_allocObject();

  v3[17] = sub_1C0F0A6A8(v18, a2, v14);
  v15 = sub_1C0F50320();
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v3;

  sub_1C0ED943C(0, 0, v11, &unk_1C0F57F50, v16);

  return v3;
}

void *AccessibilityActionSender.__allocating_init(client:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  v4 = *a1;
  v3 = a1[1];
  swift_defaultActor_initialize();
  v2[18] = 0;
  swift_unknownObjectWeakInit();
  v2[14] = [objc_allocWithZone(AXSSActionHIDSender) init];
  v2[15] = v4;
  v2[16] = v3;
  return v2;
}

uint64_t sub_1C0F05948()
{
  v1 = *(*(v0 + 16) + 128);
  *(v0 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C0F0596C, v1, 0);
}

uint64_t sub_1C0F0596C()
{
  v1 = *(v0 + 24);
  *(v1 + 144) = sub_1C0F07A60(&qword_1EBE77B08, type metadata accessor for AccessibilityActionManager, &unk_1C0F57FB8);
  swift_unknownObjectWeakAssign();
  v2 = *(v0 + 8);

  return v2();
}

void *AccessibilityActionManager.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t AccessibilityActionManager.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C0F05A8C(uint64_t a1, uint64_t a2)
{
  v3[37] = a2;
  v3[38] = v2;
  v3[36] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C0F05AB0, v2, 0);
}

uint64_t sub_1C0F05AB0()
{
  sub_1C0F2694C(*(v0 + 288), v0 + 16);
  v1 = *(v0 + 16);
  *(v0 + 81) = v1;
  v2 = *(v0 + 17);
  *(v0 + 177) = v2;
  *(v0 + 82) = *(v0 + 18);
  *(v0 + 96) = *(v0 + 32);
  v3 = *(v0 + 48);
  *(v0 + 312) = v3;
  *(v0 + 256) = *(v0 + 56);
  *(v0 + 265) = *(v0 + 65);
  if (v3 != 1)
  {
    v4 = *(*(v0 + 304) + 136);
    *(v0 + 320) = v4;
    if (v2)
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    if (sub_1C0F07AAC(v5 & 0xFE | ((v1 & 0x20) != 0), *(v4 + 128)))
    {
      *(v0 + 112) = v1;
      *(v0 + 113) = v2;
      *(v0 + 114) = *(v0 + 18);
      *(v0 + 128) = *(v0 + 32);
      *(v0 + 144) = v3;
      *(v0 + 152) = *(v0 + 56);
      *(v0 + 161) = *(v0 + 65);
      v6 = swift_task_alloc();
      *(v0 + 328) = v6;
      *v6 = v0;
      v6[1] = sub_1C0F05C5C;

      return sub_1C0F08DB8(v0 + 112);
    }

    sub_1C0EEFAA8(v0 + 16, &qword_1EBE77B00, &qword_1C0F58190);
  }

  [*(v0 + 296) sendEvent_];
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1C0F05C5C()
{
  v1 = *(*v0 + 304);

  return MEMORY[0x1EEE6DFA0](sub_1C0F05D6C, v1, 0);
}

uint64_t sub_1C0F05D6C()
{
  v12 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 177);
  v8[0] = *(v0 + 81);
  v8[1] = v2;
  *v9 = *(v0 + 82);
  *&v9[14] = *(v0 + 96);
  v10 = v1;
  v11[0] = *(v0 + 256);
  *(v11 + 9) = *(v0 + 265);
  if (sub_1C0F0946C(v8))
  {
    v3 = *(v0 + 312);
    v4 = *(v0 + 177);
    *(v0 + 184) = *(v0 + 81);
    *(v0 + 185) = v4;
    *(v0 + 186) = *(v0 + 82);
    *(v0 + 200) = *(v0 + 96);
    *(v0 + 216) = v3;
    *(v0 + 224) = *(v0 + 256);
    *(v0 + 233) = *(v0 + 265);
    v5 = swift_task_alloc();
    *(v0 + 336) = v5;
    *v5 = v0;
    v5[1] = sub_1C0F05ED8;

    return sub_1C0F09638(v0 + 184);
  }

  else
  {
    sub_1C0EEFAA8(v0 + 16, &qword_1EBE77B00, &qword_1C0F58190);
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1C0F05ED8()
{
  v1 = *v0;
  v4 = *v0;

  sub_1C0EEFAA8(v1 + 16, &qword_1EBE77B00, &qword_1C0F58190);
  v2 = *(v4 + 8);

  return v2();
}

void *AccessibilityActionSender.init(client:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  swift_defaultActor_initialize();
  v1[18] = 0;
  swift_unknownObjectWeakInit();
  v1[14] = [objc_allocWithZone(AXSSActionHIDSender) init];
  v1[15] = v2;
  v1[16] = v3;
  return v1;
}

uint64_t sub_1C0F06048(_BYTE *a1, _OWORD *a2)
{
  *(v3 + 104) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773B0, &qword_1C0F57F40);
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 83) = *a1;
  *(v3 + 84) = a1[1];
  *(v3 + 120) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1C0F0610C, v2, 0);
}

void sub_1C0F0610C()
{
  v1 = *(v0 + 84);
  v2 = *(v0 + 83);
  if (v1)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0xFFFFFFFE | (v2 >> 5) & 1) == 1)
  {
    *(v0 + 81) = v2;
    *(v0 + 82) = v1;
    *(v0 + 88) = *(v0 + 120);
    v4 = swift_task_alloc();
    *(v0 + 136) = v4;
    *v4 = v0;
    v4[1] = sub_1C0F0637C;

    sub_1C0F06778((v0 + 81), 1, (v0 + 88));
    return;
  }

  v5 = qword_1EBE8FBE0;
  if (__OFADD__(qword_1EBE8FBE0, 1))
  {
    __break(1u);
    return;
  }

  v6 = *(v0 + 120);
  v7 = *(*(v0 + 104) + 120);
  ++qword_1EBE8FBE0;
  *(v0 + 16) = v2;
  *(v0 + 17) = v1;
  *(v0 + 24) = v5;
  *(v0 + 32) = 0;
  *(v0 + 56) = v6;
  *(v0 + 40) = v7;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  v17 = *(v0 + 48);
  v18 = *(v0 + 64);
  LOBYTE(v19) = *(v0 + 80);
  v15 = *(v0 + 16);
  v16 = *(v0 + 32);
  if (*(&v7 + 1))
  {
    v8 = 0x8000000817319389;
  }

  else
  {
    v8 = 0x8000000817319372;
  }

  sub_1C0F072F4(v6, *(&v6 + 1));

  v9 = sub_1C0F26DD8(v8);
  *(v0 + 144) = v9;
  sub_1C0F07308(v0 + 16);
  if (v9)
  {
    v10 = *(v0 + 104);
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 152) = Strong;
    v12 = *(v10 + 112);
    if (Strong)
    {
      v13 = swift_task_alloc();
      *(v0 + 160) = v13;
      *v13 = v0;
      v13[1] = sub_1C0F065FC;

      sub_1C0F05A8C(v9, v12);
      return;
    }

    [v12 sendEvent_];
  }

  v14 = *(v0 + 8);

  v14();
}

uint64_t sub_1C0F0637C()
{
  v1 = *(*v0 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1C0F0648C, v1, 0);
}

uint64_t sub_1C0F0648C()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 84);
  v4 = *(v0 + 83);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v7 = sub_1C0F50320();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = sub_1C0F07A60(&qword_1EBE77AF0, type metadata accessor for AccessibilityActionSender, &protocol conformance descriptor for AccessibilityActionSender);
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v8;
  *(v9 + 32) = v6;
  *(v9 + 40) = v4;
  *(v9 + 41) = v3;
  *(v9 + 48) = v2;
  *(v9 + 56) = v1;
  swift_retain_n();
  sub_1C0F072F4(v2, v1);
  sub_1C0F053C4(0, 0, v5, &unk_1C0F57F78, v9);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1C0F065FC()
{
  v1 = *(*v0 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1C0F0670C, v1, 0);
}

uint64_t sub_1C0F0670C()
{
  v1 = *(v0 + 144);
  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1C0F06778(_BYTE *a1, char a2, _OWORD *a3)
{
  *(v4 + 88) = v3;
  *(v4 + 82) = a2;
  *(v4 + 83) = *a1;
  *(v4 + 84) = a1[1];
  *(v4 + 96) = *a3;
  return MEMORY[0x1EEE6DFA0](sub_1C0F067B4, v3, 0);
}

void sub_1C0F067B4()
{
  v1 = qword_1EBE8FBE0;
  if (__OFADD__(qword_1EBE8FBE0, 1))
  {
    __break(1u);
    return;
  }

  v13 = *(v0 + 96);
  v2 = *(v0 + 84);
  v3 = *(v0 + 83);
  v4 = *(v0 + 82);
  v5 = *(*(v0 + 88) + 120);
  ++qword_1EBE8FBE0;
  *(v0 + 81) = v2;
  *(v0 + 16) = v3;
  *(v0 + 17) = v2;
  *(v0 + 24) = v1;
  *(v0 + 32) = v4;
  *(v0 + 56) = v13;
  *(v0 + 40) = v5;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  if (*(&v5 + 1))
  {
    v6 = 0x8000000817319389;
  }

  else
  {
    v6 = 0x8000000817319372;
  }

  sub_1C0F072F4(v13, *(&v13 + 1));
  v7 = sub_1C0F26DD8(v6);
  *(v0 + 112) = v7;
  sub_1C0F07308(v0 + 16);
  if (v7)
  {
    v8 = *(v0 + 88);
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 120) = Strong;
    v10 = *(v8 + 112);
    if (Strong)
    {
      v11 = swift_task_alloc();
      *(v0 + 128) = v11;
      *v11 = v0;
      v11[1] = sub_1C0F0697C;

      sub_1C0F05A8C(v7, v10);
      return;
    }

    [v10 sendEvent_];
  }

  v12 = *(v0 + 8);

  v12();
}

uint64_t sub_1C0F0697C()
{
  v1 = *(*v0 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1C0F06A8C, v1, 0);
}

uint64_t sub_1C0F06A8C()
{
  v1 = *(v0 + 112);
  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1C0F06AF0(char *a1, uint64_t *a2)
{
  *(v3 + 32) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773B0, &qword_1C0F57F40);
  v6 = swift_task_alloc();
  v7 = *a1;
  *(v3 + 74) = *a1;
  v8 = a1[1];
  *(v3 + 75) = v8;
  v9 = *a2;
  v10 = a2[1];
  *(v3 + 40) = v6;
  *(v3 + 48) = v9;
  *(v3 + 56) = v10;
  *(v3 + 72) = v7;
  *(v3 + 73) = v8;
  *(v3 + 16) = v9;
  *(v3 + 24) = v10;
  v11 = swift_task_alloc();
  *(v3 + 64) = v11;
  *v11 = v3;
  v11[1] = sub_1C0F06C04;

  return sub_1C0F06778((v3 + 72), 1, (v3 + 16));
}

uint64_t sub_1C0F06C04()
{
  v1 = *(*v0 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1C0F06D14, v1, 0);
}

uint64_t sub_1C0F06D14()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 75);
  v4 = *(v0 + 74);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = sub_1C0F50320();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = sub_1C0F07A60(&qword_1EBE77AF0, type metadata accessor for AccessibilityActionSender, &protocol conformance descriptor for AccessibilityActionSender);
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v8;
  *(v9 + 32) = v6;
  *(v9 + 40) = v4;
  *(v9 + 41) = v3;
  *(v9 + 48) = v2;
  *(v9 + 56) = v1;
  swift_retain_n();
  sub_1C0F072F4(v2, v1);
  sub_1C0F053C4(0, 0, v5, &unk_1C0F57F88, v9);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1C0F06E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 40) = a6;
  *(v7 + 48) = a7;
  *(v7 + 72) = a5;
  *(v7 + 32) = a4;
  v8 = swift_task_alloc();
  *(v7 + 56) = v8;
  *v8 = v7;
  v8[1] = sub_1C0F06F28;

  return MEMORY[0x1EEE6DA60](100000000);
}

uint64_t sub_1C0F06F28()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    *(v2 + 16) = *(v2 + 40);
    v6 = v2 + 16;
    v7 = *(v6 + 56);
    *(v6 + 58) = v7;
    *(v6 + 59) = HIBYTE(v7) & 1;
    v8 = swift_task_alloc();
    *(v6 + 48) = v8;
    *v8 = v3;
    v8[1] = sub_1C0F070BC;

    return sub_1C0F06778((v6 + 58), 0, v6);
  }
}

uint64_t sub_1C0F070BC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t AccessibilityActionSender.deinit()
{

  sub_1C0F0756C(v0 + 136);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t AccessibilityActionSender.__deallocating_deinit()
{

  sub_1C0F0756C(v0 + 136);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C0F07240(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C0EEFCF4;

  return sub_1C0F05928(a1, v4, v5, v6);
}

uint64_t sub_1C0F072F4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1C0F0735C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40) | (*(v1 + 41) << 8);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1C0EEFCF4;

  return sub_1C0F06E84(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroy_5Tm()
{
  swift_unknownObjectRelease();

  if (*(v0 + 56) != 1)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C0F0748C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40) | (*(v1 + 41) << 8);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1C0EEF864;

  return sub_1C0F06E84(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1C0F07594(uint64_t a1)
{
  result = sub_1C0F07A60(&qword_1EBE77AF8, type metadata accessor for AccessibilityActionManager, &protocol conformance descriptor for AccessibilityActionManager);
  *(a1 + 8) = result;
  return result;
}

uint64_t dispatch thunk of AccessibilityActionSender.sendAction(_:to:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 152) + **(*v2 + 152));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1C0EEFCF4;

  return v8(a1, a2);
}

uint64_t dispatch thunk of AccessibilityActionSender.sendAction(_:isDown:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 160) + **(*v3 + 160));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1C0EEFCF4;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityActionSender.sendDeviceAction(_:to:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 168) + **(*v2 + 168));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1C0EEF864;

  return v8(a1, a2);
}

uint64_t sub_1C0F079F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773B0, &qword_1C0F57F40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C0F07A60(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL sub_1C0F07AAC(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_1C0F07ADC()
{
  v1 = v0;
  v2 = sub_1C0F504B0();
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x1EEE9AC00](v2, v3, v4, v5);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C0F504A0();
  MEMORY[0x1EEE9AC00](v8, v9, v10, v11);
  v12 = sub_1C0F50010();
  MEMORY[0x1EEE9AC00](v12 - 8, v13, v14, v15);
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x1E69A2950]) initWithType_];
  v27[1] = sub_1C0F080D4();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  aBlock = 0;
  v31 = 0xE000000000000000;
  sub_1C0F505A0();
  MEMORY[0x1C68E9A50](0xD00000000000003ALL, 0x80000001C0F66CD0);
  v36 = qword_1EBE8FBD8;
  v16 = sub_1C0F50780();
  MEMORY[0x1C68E9A50](v16);

  sub_1C0F50000();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1C0F08120();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77B18, &unk_1C0F58180);
  sub_1C0F08178();
  sub_1C0F50530();
  (*(v28 + 104))(v7, *MEMORY[0x1E69E8090], v29);
  result = sub_1C0F504E0();
  *(v0 + 24) = result;
  if (__OFADD__(qword_1EBE8FBD8, 1))
  {
    __break(1u);
  }

  else
  {
    ++qword_1EBE8FBD8;
    [*(v0 + 16) setDispatchQueue_];
    v18 = *(v0 + 16);
    if (v18 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE778D8, &qword_1C0F574C8), inited = swift_initStackObject(), *(inited + 16) = xmmword_1C0F58110, *(inited + 32) = 0x7355656369766544, *(inited + 40) = 0xEF65676150656761, *(inited + 48) = 65280, v20 = MEMORY[0x1E69E6530], *(inited + 72) = MEMORY[0x1E69E6530], *(inited + 80) = 0x7355656369766544, *(inited + 88) = 0xEB00000000656761, *(inited + 96) = 34, *(inited + 120) = v20, *(inited + 128) = 0x4449726F646E6556, *(inited + 136) = 0xE800000000000000, *(inited + 144) = 10000, *(inited + 168) = v20, *(inited + 176) = 0x49746375646F7250, *(inited + 184) = 0xE900000000000044, *(inited + 192) = 10000, *(inited + 216) = v20, *(inited + 224) = 0x6E492D746C697542, *(inited + 232) = 0xE800000000000000, *(inited + 264) = MEMORY[0x1E69E6370], *(inited + 240) = 1, v21 = v18, sub_1C0F22A2C(inited), swift_setDeallocating(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE778E0, &unk_1C0F574D0), swift_arrayDestroy(), v22 = sub_1C0F50150(), , [v21 setMatching_], v21, v22, (v23 = *(v1 + 16)) != 0))
    {
      v34 = sub_1C0F081DC;
      v35 = v1;
      aBlock = MEMORY[0x1E69E9820];
      v31 = 1107296256;
      v32 = sub_1C0F07FDC;
      v33 = &block_descriptor_0;
      v24 = _Block_copy(&aBlock);
      v25 = v23;

      [v25 setEventFilterHandler_];
      _Block_release(v24);

      v26 = *(v1 + 16);
    }

    else
    {
      v26 = 0;
    }

    [v26 activate];
    return v1;
  }

  return result;
}

uint64_t sub_1C0F07FDC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v7 = a3;
  LOBYTE(a2) = v5(a2, v7);

  return a2 & 1;
}

uint64_t sub_1C0F08058()
{
  [*(v0 + 16) cancel];

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_1C0F080D4()
{
  result = qword_1EBE77690;
  if (!qword_1EBE77690)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBE77690);
  }

  return result;
}

unint64_t sub_1C0F08120()
{
  result = qword_1EBE77B10;
  if (!qword_1EBE77B10)
  {
    sub_1C0F504A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77B10);
  }

  return result;
}

unint64_t sub_1C0F08178()
{
  result = qword_1EBE77B20;
  if (!qword_1EBE77B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE77B18, &unk_1C0F58180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE77B20);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C0F081FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[11] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C0F08220, 0, 0);
}

uint64_t sub_1C0F08220()
{
  v1 = *(*(v0 + 96) + 32);
  *(v0 + 112) = v1;
  if (v1)
  {
    v2 = *(v0 + 104);
    *(v0 + 16) = *v2;
    v4 = *(v2 + 32);
    v3 = *(v2 + 48);
    v5 = *(v2 + 16);
    *(v0 + 80) = *(v2 + 64);
    *(v0 + 48) = v4;
    *(v0 + 64) = v3;
    *(v0 + 32) = v5;
    swift_unknownObjectRetain();
    v6 = swift_task_alloc();
    *(v0 + 120) = v6;
    *v6 = v0;
    v6[1] = sub_1C0F08330;

    return sub_1C0F08DB8(v0 + 16);
  }

  else
  {
    **(v0 + 88) = 1;
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1C0F08330()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1C0F08DB4, 0, 0);
}

uint64_t sub_1C0F08448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[11] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C0F0846C, 0, 0);
}

uint64_t sub_1C0F0846C()
{
  v1 = *(*(v0 + 96) + 32);
  *(v0 + 112) = v1;
  if (v1)
  {
    v2 = *(v0 + 104);
    *(v0 + 16) = *v2;
    v4 = *(v2 + 32);
    v3 = *(v2 + 48);
    v5 = *(v2 + 16);
    *(v0 + 80) = *(v2 + 64);
    *(v0 + 48) = v4;
    *(v0 + 64) = v3;
    *(v0 + 32) = v5;
    swift_unknownObjectRetain();
    v6 = swift_task_alloc();
    *(v0 + 120) = v6;
    *v6 = v0;
    v6[1] = sub_1C0F0857C;

    return sub_1C0F09638(v0 + 16);
  }

  else
  {
    **(v0 + 88) = 1;
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1C0F0857C()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1C0F08694, 0, 0);
}

uint64_t sub_1C0F086BC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE773B0, &qword_1C0F57F40);
  MEMORY[0x1EEE9AC00](v3 - 8, v4, v5, v6);
  v8 = &v30 - v7;
  sub_1C0F2694C(a1, &v43);
  v9 = v46;
  if (v46 != 1)
  {
    v10 = v43;
    v11 = v44;
    v42[0] = *v45;
    *(v42 + 14) = *&v45[14];
    v41[0] = *v47;
    *(v41 + 9) = *&v47[9];
    v12 = *(v1 + 32);
    if (v12)
    {
      v13 = *(v12 + 128);
      if (v44)
      {
        v14 = 2;
      }

      else
      {
        v14 = 0;
      }

      v15 = v14 & 0xFFFFFFFE | (v43 >> 5) & 1;
      v16 = *(v13 + 16);
      v17 = (v13 + 32);
      while (v16)
      {
        v18 = *v17++;
        --v16;
        if (v18 == v15)
        {
          v19 = sub_1C0F50320();
          v20 = *(*(v19 - 8) + 56);
          v20(v8, 1, 1, v19);
          v21 = swift_allocObject();
          *(v21 + 16) = 0;
          *(v21 + 24) = 0;
          *(v21 + 32) = v1;
          *(v21 + 40) = v10;
          *(v21 + 41) = v11;
          *(v21 + 42) = v42[0];
          *(v21 + 56) = *(v42 + 14);
          *(v21 + 72) = v9;
          *(v21 + 80) = v41[0];
          *(v21 + 89) = *(v41 + 9);

          sub_1C0F08C2C(&v43, v37);
          sub_1C0ED973C(0, 0, v8, &unk_1C0F581A0, v21);

          if (!*(v1 + 32))
          {
            break;
          }

          v35 = v1;
          v37[0] = v10;
          v37[1] = v11;
          *v38 = v42[0];
          *&v38[14] = *(v42 + 14);
          v39 = v9;
          v40[0] = v41[0];
          *(v40 + 9) = *(v41 + 9);
          swift_unknownObjectRetain();
          v22 = sub_1C0F0946C(v37);
          swift_unknownObjectRelease();
          if (!v22)
          {
            break;
          }

          v23 = v35;
          v24 = *(v35 + 32);
          if (v24)
          {
            v34 = v20;
            swift_beginAccess();
            if (*(v24 + 136))
            {
              v31 = *(v24 + 144);
              v25 = v31;
              ObjectType = swift_getObjectType();
              v36[0] = v10;
              v36[1] = v11 & 1;
              v32 = *(v25 + 16);
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              v26 = v32(v36, ObjectType, v31);
              v23 = v35;
              v27 = v26;
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
            }

            else
            {
              v27 = 0;
            }

            v20 = v34;
          }

          else
          {
            v27 = 0;
          }

          v20(v8, 1, 1, v19);
          v29 = swift_allocObject();
          *(v29 + 16) = 0;
          *(v29 + 24) = 0;
          *(v29 + 32) = v23;
          *(v29 + 40) = v10;
          *(v29 + 41) = v11;
          *(v29 + 42) = v42[0];
          *(v29 + 56) = *(v42 + 14);
          *(v29 + 72) = v9;
          *(v29 + 80) = v41[0];
          *(v29 + 89) = *(v41 + 9);

          sub_1C0ED973C(0, 0, v8, &unk_1C0F581B0, v29);

          return v27 & 1;
        }
      }
    }

    sub_1C0F08AA8(&v43);
  }

  v27 = 0;
  return v27 & 1;
}

uint64_t sub_1C0F08AA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77B00, &qword_1C0F58190);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C0F08B10(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v4 = a4 >> 5;
  if (v4 <= 1)
  {
    if (a4 >> 5)
    {
      if (v4 == 1)
      {
LABEL_5:
      }
    }

    else
    {
      sub_1C0F08B58(a1, a2);
    }
  }

  else if (v4 == 2 || v4 == 3 || v4 == 4)
  {
    goto LABEL_5;
  }
}

uint64_t sub_1C0F08B58(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1C0F08B6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C0EEFCF4;

  return sub_1C0F081FC(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_1C0F08C2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77B00, &qword_1C0F58190);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  sub_1C0F08B10(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));

  return MEMORY[0x1EEE6BDD0](v0, 105, 7);
}

uint64_t sub_1C0F08CF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C0EEF864;

  return sub_1C0F08448(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_1C0F08DB8(uint64_t a1)
{
  *(v2 + 248) = *a1;
  *(v2 + 249) = *(a1 + 1);
  v3 = *(a1 + 8);
  *(v2 + 88) = v1;
  *(v2 + 96) = v3;
  *(v2 + 104) = *(a1 + 24);
  *(v2 + 120) = *(a1 + 40);
  *(v2 + 136) = *(a1 + 56);
  *(v2 + 250) = *(a1 + 64);
  return MEMORY[0x1EEE6DFA0](sub_1C0F08E0C, v1, 0);
}

uint64_t sub_1C0F08E0C()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  v2 = *(v1 + 152);
  *(v0 + 144) = v2;
  if (v2)
  {
    v3 = *(v0 + 250);
    v4 = *(*(v0 + 88) + 160);
    *(v0 + 152) = v4;
    v5 = v3 >> 5;
    *(v0 + 160) = swift_getObjectType();
    if (v3 >> 5 <= 1)
    {
      if (v5)
      {
        v27 = *(v0 + 136);
        v28 = *(v0 + 96);
        v29 = *(v0 + 249);
        v30 = *(v0 + 248);
        v35 = *(v0 + 120);
        *(v0 + 56) = v35;
        *(v0 + 40) = v35;
        *(v0 + 72) = v30;
        *(v0 + 73) = v29;
        *(v0 + 80) = v28;
        *(v0 + 200) = v4[4];
        *(v0 + 208) = (v4 + 4) & 0xFFFFFFFFFFFFLL | 0xD026000000000000;
        swift_unknownObjectRetain();
        sub_1C0F113A4(v35, *(&v35 + 1), v27, v3);
        v9 = sub_1C0F502B0();
        v11 = v31;
        v12 = sub_1C0F09274;
      }

      else
      {
        v15 = *(v0 + 128);
        v16 = *(v0 + 249);
        v17 = *(v0 + 248);
        *(v0 + 40) = *(v0 + 104);
        *(v0 + 48) = *(v0 + 112);
        *(v0 + 64) = v15;
        *(v0 + 72) = v17;
        *(v0 + 73) = v16;
        *(v0 + 168) = v4[2];
        *(v0 + 176) = (v4 + 2) & 0xFFFFFFFFFFFFLL | 0x7C25000000000000;
        swift_unknownObjectRetain();

        v9 = sub_1C0F502B0();
        v11 = v18;
        v12 = sub_1C0F09164;
      }
    }

    else if (v5 == 2)
    {
      v19 = *(v0 + 136);
      v20 = *(v0 + 249);
      v21 = *(v0 + 248);
      v33 = *(v0 + 120);
      *(v0 + 56) = v33;
      *(v0 + 40) = v33;
      *(v0 + 72) = v21;
      *(v0 + 73) = v20;
      *(v0 + 216) = v4[5];
      *(v0 + 224) = (v4 + 5) & 0xFFFFFFFFFFFFLL | 0x90B000000000000;
      swift_unknownObjectRetain();
      sub_1C0F113A4(v33, *(&v33 + 1), v19, v3);
      v9 = sub_1C0F502B0();
      v11 = v22;
      v12 = sub_1C0F092FC;
    }

    else if (v5 == 3)
    {
      v6 = *(v0 + 136);
      v7 = *(v0 + 249);
      v8 = *(v0 + 248);
      v32 = *(v0 + 120);
      *(v0 + 56) = v32;
      *(v0 + 40) = v32;
      *(v0 + 72) = v8;
      *(v0 + 73) = v7;
      *(v0 + 232) = v4[6];
      *(v0 + 240) = (v4 + 6) & 0xFFFFFFFFFFFFLL | 0xDD49000000000000;
      swift_unknownObjectRetain();
      sub_1C0F113A4(v32, *(&v32 + 1), v6, v3);
      v9 = sub_1C0F502B0();
      v11 = v10;
      v12 = sub_1C0F09384;
    }

    else
    {
      v23 = *(v0 + 136);
      v24 = *(v0 + 249);
      v25 = *(v0 + 248);
      v34 = *(v0 + 120);
      *(v0 + 56) = v34;
      *(v0 + 40) = v34;
      *(v0 + 72) = v25;
      *(v0 + 73) = v24;
      *(v0 + 184) = v4[3];
      *(v0 + 192) = (v4 + 3) & 0xFFFFFFFFFFFFLL | 0x2E17000000000000;
      swift_unknownObjectRetain();
      sub_1C0F113A4(v34, *(&v34 + 1), v23, v3);
      v9 = sub_1C0F502B0();
      v11 = v26;
      v12 = sub_1C0F091EC;
    }

    return MEMORY[0x1EEE6DFA0](v12, v9, v11);
  }

  else
  {
    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_1C0F09164()
{
  v1 = *(v0 + 88);
  (*(v0 + 168))(v0 + 40, v0 + 56, v0 + 72, *(v0 + 160), *(v0 + 152));

  return MEMORY[0x1EEE6DFA0](sub_1C0F11408, v1, 0);
}

uint64_t sub_1C0F091EC()
{
  v1 = *(v0 + 88);
  (*(v0 + 184))(v0 + 40, v0 + 56, v0 + 72, *(v0 + 160), *(v0 + 152));
  sub_1C0F08B58(*(v0 + 56), *(v0 + 64));

  return MEMORY[0x1EEE6DFA0](sub_1C0F11408, v1, 0);
}

uint64_t sub_1C0F09274()
{
  v1 = *(v0 + 88);
  (*(v0 + 200))(v0 + 40, v0 + 56, v0 + 72, *(v0 + 160), *(v0 + 152));
  sub_1C0F08B58(*(v0 + 56), *(v0 + 64));

  return MEMORY[0x1EEE6DFA0](sub_1C0F11408, v1, 0);
}

uint64_t sub_1C0F092FC()
{
  v1 = *(v0 + 88);
  (*(v0 + 216))(v0 + 40, v0 + 56, v0 + 72, *(v0 + 160), *(v0 + 152));
  sub_1C0F08B58(*(v0 + 56), *(v0 + 64));

  return MEMORY[0x1EEE6DFA0](sub_1C0F11408, v1, 0);
}

uint64_t sub_1C0F09384()
{
  v1 = *(v0 + 88);
  (*(v0 + 232))(v0 + 40, v0 + 56, v0 + 72, *(v0 + 160), *(v0 + 152));
  sub_1C0F08B58(*(v0 + 56), *(v0 + 64));

  return MEMORY[0x1EEE6DFA0](sub_1C0F0940C, v1, 0);
}

uint64_t sub_1C0F0940C()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

BOOL sub_1C0F0946C(uint64_t a1)
{
  v2 = *(a1 + 64);
  if ((v2 >> 5) - 1 < 3)
  {
    return 0;
  }

  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  if (v2 >> 5)
  {
    v10 = *(v1 + 120);
    if (v10)
    {
      if (!v6)
      {
        sub_1C0F113A4(v5, 0, *(a1 + 56), v2);
        goto LABEL_21;
      }

      if (*(v1 + 112) == v5 && v10 == v6)
      {
        sub_1C0F113A4(v5, *(a1 + 48), *(a1 + 56), v2);
        goto LABEL_24;
      }

      v11 = v5;
      v12 = sub_1C0F50790();
      sub_1C0F113A4(v11, v6, v7, v2);

      if (v12)
      {
        return 0;
      }
    }

    else
    {

      if (!v6)
      {
        goto LABEL_24;
      }
    }
  }

  else if (v6 != 1)
  {
    v8 = *(v1 + 120);
    if (!v6)
    {

      if (!v8)
      {
        goto LABEL_21;
      }

      return 0;
    }

    if (v8)
    {
      if (v5 == *(v1 + 112) && v6 == v8)
      {
        v9 = v5;

        sub_1C0F113A4(v9, v6, v7, v2);

LABEL_21:

        return 1;
      }

      v13 = v5;
      v14 = sub_1C0F50790();

      sub_1C0F113A4(v13, v6, v7, v2);

      return (v14 & 1) != 0;
    }

    sub_1C0F072F4(v5, *(a1 + 48));

LABEL_24:

    return 0;
  }

  return 1;
}

uint64_t sub_1C0F09638(uint64_t a1)
{
  *(v2 + 544) = v1;
  v3 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v3;
  *(v2 + 80) = *(a1 + 64);
  v4 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  return MEMORY[0x1EEE6DFA0](sub_1C0F09670, v1, 0);
}

uint64_t sub_1C0F09670()
{
  v1 = (v0 + 16);
  v2 = *(v0 + 16);
  v3 = *(v0 + 544);
  if (*(v0 + 17))
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 & 0xFFFFFFFE | (v2 >> 5) & 1;
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      swift_beginAccess();
      v21 = *(v3 + 136);
      *(v0 + 592) = v21;
      if (!v21)
      {
        goto LABEL_40;
      }

      swift_getObjectType();
      v22 = swift_conformsToProtocol2();
      v8 = v22 ? v21 : 0;
      if (!v8 || *(v0 + 32) != 0)
      {
        goto LABEL_40;
      }

      v10 = v22;
      v24 = *(v0 + 544);
      swift_unknownObjectRetain();
      v25 = *(v0 + 64);
      *(v0 + 192) = *(v0 + 48);
      *(v0 + 208) = v25;
      *(v0 + 224) = *(v0 + 80);
      v26 = *(v0 + 32);
      v47 = sub_1C0F0C7AC;
      *(v0 + 160) = *v1;
      *(v0 + 176) = v26;
      v27 = *(v24 + 144);
      swift_unknownObjectRetain();
      v28 = swift_task_alloc();
      *(v0 + 600) = v28;
      *v28 = v0;
      v28[1] = sub_1C0F09E94;
      v16 = *(v0 + 544);
      v18 = v0 + 160;
    }

    else
    {
      swift_beginAccess();
      v21 = *(v3 + 136);
      *(v0 + 608) = v21;
      if (!v21)
      {
        goto LABEL_40;
      }

      swift_getObjectType();
      v40 = swift_conformsToProtocol2();
      v8 = v40 ? v21 : 0;
      if (!v8 || *(v0 + 32) != 0)
      {
        goto LABEL_40;
      }

      v10 = v40;
      v43 = *(v0 + 544);
      swift_unknownObjectRetain();
      v44 = *v1;
      *(v0 + 104) = *(v0 + 32);
      v45 = *(v0 + 64);
      *(v0 + 120) = *(v0 + 48);
      *(v0 + 136) = v45;
      *(v0 + 152) = *(v0 + 80);
      v47 = sub_1C0F0AF90;
      *(v0 + 88) = v44;
      v27 = *(v43 + 144);
      swift_unknownObjectRetain();
      v46 = swift_task_alloc();
      *(v0 + 616) = v46;
      *v46 = v0;
      v46[1] = sub_1C0F0A020;
      v16 = *(v0 + 544);
      v18 = v0 + 88;
    }

    v17 = v2 & 0xDF;
    v19 = v21;
    v20 = v27;
LABEL_45:

    return v47(v18, v19, v20, v16, v8, v10, v17);
  }

  if (!v5)
  {
    swift_beginAccess();
    v6 = *(v3 + 136);
    *(v0 + 552) = v6;
    if (!v6)
    {
      goto LABEL_40;
    }

    swift_getObjectType();
    v7 = swift_conformsToProtocol2();
    v8 = v7 ? v6 : 0;
    if (!v8 || *(v0 + 32) != 0)
    {
      goto LABEL_40;
    }

    v10 = v7;
    v11 = *(v0 + 544);
    swift_unknownObjectRetain();
    v12 = *(v0 + 64);
    *(v0 + 408) = *(v0 + 48);
    *(v0 + 424) = v12;
    *(v0 + 440) = *(v0 + 80);
    v13 = *(v0 + 32);
    v47 = sub_1C0F0F56C;
    *(v0 + 376) = *v1;
    *(v0 + 392) = v13;
    v14 = *(v11 + 144);
    swift_unknownObjectRetain();
    v15 = swift_task_alloc();
    *(v0 + 560) = v15;
    *v15 = v0;
    v15[1] = sub_1C0F09B6C;
    v16 = *(v0 + 544);
    v17 = v2 & 0xDF;
    v18 = v0 + 376;
    v19 = v6;
    v20 = v14;
    goto LABEL_45;
  }

  swift_beginAccess();
  v29 = *(v3 + 136);
  *(v0 + 568) = v29;
  if (!v29 || (swift_getObjectType(), (v30 = swift_conformsToProtocol2()) == 0))
  {
LABEL_40:
    v42 = *(v0 + 8);

    return v42();
  }

  v31 = v30;
  v32 = *(v0 + 544);
  swift_unknownObjectRetain();
  sub_1C0F0D80C(v0 + 16, v0 + 232);
  *(v0 + 368) = *(v0 + 80);
  v33 = *(v0 + 64);
  *(v0 + 336) = *(v0 + 48);
  *(v0 + 352) = v33;
  v34 = *(v0 + 32);
  *(v0 + 304) = *v1;
  *(v0 + 320) = v34;
  v35 = *(v3 + 136);
  *(v0 + 576) = v35;
  v36 = *(v32 + 144);
  swift_unknownObjectRetain();
  v37 = swift_task_alloc();
  *(v0 + 584) = v37;
  *v37 = v0;
  v37[1] = sub_1C0F09CF8;
  v38 = *(v0 + 544);

  return sub_1C0F0D868(v0 + 304, v35, v36, v38, v29, v31, v2 & 0xDF, v1);
}

uint64_t sub_1C0F09B6C()
{
  v1 = *(*v0 + 544);

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1C0F09C98, v1, 0);
}

uint64_t sub_1C0F09C98()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C0F09CF8()
{
  v1 = *v0;
  v2 = *(*v0 + 544);

  sub_1C0F07308(v1 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1C0F09E34, v2, 0);
}

uint64_t sub_1C0F09E34()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C0F09E94()
{
  v1 = *(*v0 + 544);

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1C0F09FC0, v1, 0);
}

uint64_t sub_1C0F09FC0()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C0F0A020()
{
  v1 = *(*v0 + 544);

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1C0F0A14C, v1, 0);
}

uint64_t sub_1C0F0A14C()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C0F0A1AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 136) = v2;
  *(v4 + 144) = v3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C0F0A250(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_1C0F0A2F8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 152) = v2;
  *(v4 + 160) = v3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C0F0A39C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_1C0F0A440(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C0F0A4A0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t AccessibilityActionReceiver.__allocating_init(client:domains:)(uint64_t *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  AccessibilityActionReceiver.init(client:domains:)(a1, a2);
  return v4;
}

void *AccessibilityActionReceiver.init(client:domains:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *a1;
  v5 = a1[1];
  swift_defaultActor_initialize();
  *(v2 + 128) = MEMORY[0x1E69E7CC0];
  type metadata accessor for AccessibilityActionHIDReceiver();
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0u;
  swift_allocObject();
  *(v2 + 176) = sub_1C0F07ADC();
  type metadata accessor for AccessibilityActionSender();
  v7 = swift_allocObject();

  swift_defaultActor_initialize();
  v7[18] = 0;
  swift_unknownObjectWeakInit();
  v7[14] = [objc_allocWithZone(AXSSActionHIDSender) init];
  v7[15] = v6;
  v7[16] = v5;
  v3[21] = v7;
  v3[14] = v6;
  v3[15] = v5;
  v3[16] = a2;

  v8 = v3[22];
  v9 = sub_1C0F0A8E4(&qword_1EBE77B28, &unk_1C0F581E8);
  *(v8 + 32) = v3;
  *(v8 + 40) = v9;

  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_1C0F0A6A8(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = *a1;
  v7 = a1[1];
  swift_defaultActor_initialize();
  *(v3 + 128) = MEMORY[0x1E69E7CC0];
  type metadata accessor for AccessibilityActionHIDReceiver();
  *(v3 + 136) = 0u;
  *(v3 + 152) = 0u;
  swift_allocObject();
  *(v3 + 176) = sub_1C0F07ADC();
  if (!a3)
  {
    type metadata accessor for AccessibilityActionSender();
    a3 = swift_allocObject();

    swift_defaultActor_initialize();
    a3[18] = 0;
    swift_unknownObjectWeakInit();
    a3[14] = [objc_allocWithZone(AXSSActionHIDSender) init];
    a3[15] = v8;
    a3[16] = v7;
  }

  *(v3 + 168) = a3;
  *(v3 + 112) = v8;
  *(v3 + 120) = v7;
  *(v3 + 128) = a2;

  v9 = *(v3 + 176);
  v10 = sub_1C0F0A8E4(&qword_1EBE77B28, &unk_1C0F581E8);
  *(v9 + 32) = v4;
  *(v9 + 40) = v10;

  swift_unknownObjectRelease();
  return v4;
}

void *AccessibilityActionReceiver.deinit()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_defaultActor_destroy();
  return v0;
}

uint64_t AccessibilityActionReceiver.__deallocating_deinit()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C0F0A8A0(uint64_t a1)
{
  result = sub_1C0F0A8E4(&qword_1EBE77B30, &protocol conformance descriptor for AccessibilityActionReceiver);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C0F0A8E4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AccessibilityActionReceiver();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C0F0AA70(uint64_t a1, uint64_t a2)
{
  *(v2 + 304) = a1;
  *(v2 + 312) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C0F0AA90, 0, 0);
}

uint64_t sub_1C0F0AA90()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 320) = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0 + 312);
    v5 = *(Strong + 112);
    v4 = *(Strong + 120);
    swift_beginAccess();
    v6 = *(v3 + 56);
    v7 = *(v3 + 64);
    v8 = *(v3 + 72);
    *(v3 + 56) = v5;
    *(v3 + 64) = v4;
    *(v3 + 72) = 0;
    LOBYTE(v5) = *(v3 + 80);
    *(v3 + 80) = 64;

    sub_1C0F08B10(v6, v7, v8, v5);
    swift_beginAccess();
    *(v0 + 88) = *(v3 + 16);
    v9 = *(v3 + 32);
    v10 = *(v3 + 48);
    v11 = *(v3 + 64);
    *(v0 + 152) = *(v3 + 80);
    *(v0 + 136) = v11;
    *(v0 + 120) = v10;
    *(v0 + 104) = v9;
    v19 = *(v3 + 48);
    v20 = *(v3 + 64);
    v21 = *(v3 + 80);
    v17 = *(v3 + 16);
    v18 = *(v3 + 32);
    if (*(v3 + 48))
    {
      v12 = 0x8000000817319389;
    }

    else
    {
      v12 = 0x8000000817319372;
    }

    sub_1C0F0D80C(v0 + 88, v0 + 160);
    v13 = sub_1C0F26DD8(v12);
    *(v0 + 328) = v13;
    *(v0 + 48) = v19;
    *(v0 + 64) = v20;
    *(v0 + 80) = v21;
    *(v0 + 16) = v17;
    *(v0 + 32) = v18;
    sub_1C0F07308(v0 + 16);
    if (v13)
    {
      v14 = *(v2 + 168);
      *(v0 + 336) = v14;

      return MEMORY[0x1EEE6DFA0](sub_1C0F0AC94, v14, 0);
    }
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1C0F0AC94()
{
  v1 = v0[42];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[43] = Strong;
  v3 = *(v1 + 112);
  if (Strong)
  {
    v4 = v0[41];
    v5 = swift_task_alloc();
    v0[44] = v5;
    *v5 = v0;
    v5[1] = sub_1C0F0ADAC;

    return sub_1C0F05A8C(v4, v3);
  }

  else
  {
    [v3 sendEvent_];

    return MEMORY[0x1EEE6DFA0](sub_1C0F11404, 0, 0);
  }
}

uint64_t sub_1C0F0ADAC()
{
  v1 = *(*v0 + 336);

  return MEMORY[0x1EEE6DFA0](sub_1C0F0AEBC, v1, 0);
}

uint64_t sub_1C0F0AEBC()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1C0F0AF2C, 0, 0);
}

uint64_t sub_1C0F0AF2C()
{
  v1 = *(v0 + 328);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1C0F0AF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 2072) = a5;
  *(v7 + 2064) = a4;
  *(v7 + 2056) = a3;
  *(v7 + 2048) = a2;
  v10 = *(a1 + 48);
  *(v7 + 48) = *(a1 + 32);
  *(v7 + 64) = v10;
  *(v7 + 80) = *(a1 + 64);
  v11 = *(a1 + 16);
  *(v7 + 16) = *a1;
  *(v7 + 32) = v11;
  ObjectType = swift_getObjectType();
  *(v7 + 81) = a7;
  v15 = (*(a6 + 24) + **(a6 + 24));
  v13 = swift_task_alloc();
  *(v7 + 2080) = v13;
  *v13 = v7;
  v13[1] = sub_1C0F0B0FC;

  return v15(v7 + 2032, v7 + 81, ObjectType, a6);
}

uint64_t sub_1C0F0B0FC()
{
  v1 = *(*v0 + 2064);

  return MEMORY[0x1EEE6DFA0](sub_1C0F0B20C, v1, 0);
}

uint64_t sub_1C0F0B20C()
{
  v112 = v0;
  v1 = *(v0 + 2048);
  v2 = *(v0 + 2032);
  *(v0 + 2088) = v2;
  v3 = *(v0 + 2040);
  *(v0 + 82) = v3;
  if (v1)
  {
    if (!*(v0 + 2041))
    {
      v26 = (v0 + 1984);
      v27 = *(v0 + 2064);
      v28 = *(v0 + 32);
      *(v0 + 1984) = *(v0 + 16);
      *(v0 + 2000) = v28;
      v30 = *(v0 + 48);
      v29 = *(v0 + 56);
      *(v0 + 2096) = v30;
      v104 = *(v0 + 64);
      v105 = v29;
      v103 = *(v0 + 72);
      v31 = *(v27 + 112);
      *(v0 + 2104) = v31;
      v32 = *(v27 + 120);
      *(v0 + 2112) = v32;
      v33 = v3 & 1 | 0x20;
      v34 = *(v0 + 80);
      swift_unknownObjectRetain();
      sub_1C0F0D80C(v0 + 16, v0 + 1168);

      sub_1C0F08B10(v105, v104, v103, v34);
      v35 = *(v0 + 2000);
      *(v0 + 1024) = *(v0 + 1984);
      *(v0 + 1040) = v35;
      *(v0 + 1056) = v30;
      *(v0 + 1064) = v31;
      *(v0 + 1072) = v32;
      *(v0 + 1080) = v2;
      *(v0 + 1088) = v33;
      v36 = *(v0 + 1072);
      v109 = *(v0 + 1056);
      v110 = v36;
      v111 = *(v0 + 1088);
      v37 = *(v0 + 1040);
      v107 = *(v0 + 1024);
      v108 = v37;
      if (v30)
      {
        v38 = 0x8000000817319389;
      }

      else
      {
        v38 = 0x8000000817319372;
      }

      sub_1C0F0D80C(v0 + 1024, v0 + 1240);
      v39 = sub_1C0F26DD8(v38);
      *(v0 + 2120) = v39;
      v40 = v110;
      *(v0 + 984) = v109;
      *(v0 + 1000) = v40;
      *(v0 + 1016) = v111;
      v41 = v108;
      *(v0 + 952) = v107;
      *(v0 + 968) = v41;
      sub_1C0F07308(v0 + 952);
      if (!v39)
      {
        swift_getObjectType();
        v56 = swift_conformsToProtocol2();
        *(v0 + 2208) = v56;
        if (!v56)
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          return sub_1C0F50620();
        }

        v57 = v56;
        v58 = *(v0 + 82) & 1 | 0x20;
        v59 = swift_allocObject();
        *(v0 + 2216) = v59;
        v60 = *v26;
        v61 = *(v0 + 2000);
        *(v0 + 1384) = *v26;
        *(v0 + 1400) = v61;
        v62 = *(v0 + 2088);
        v63 = *(v0 + 2104);
        *(v0 + 1416) = vextq_s8(v62, v63, 8uLL);
        *(v0 + 1432) = vextq_s8(v63, v62, 8uLL);
        *(v0 + 1448) = v58;
        *(v59 + 80) = v58;
        *(v59 + 16) = v60;
        *(v59 + 32) = v61;
        v64 = *(v0 + 1432);
        *(v59 + 48) = *(v0 + 1416);
        *(v59 + 64) = v64;
        *(v0 + 2224) = swift_getObjectType();
        v65 = *(v59 + 17);
        v66 = *(v59 + 24);
        *(v0 + 2016) = *(v59 + 16);
        *(v0 + 2017) = v65;
        *(v0 + 2024) = v66;
        v67 = swift_allocObject();
        *(v0 + 2232) = v67;
        swift_weakInit();
        v68 = swift_allocObject();
        *(v0 + 2240) = v68;
        *(v68 + 16) = v67;
        *(v68 + 24) = v59;
        *(v0 + 2248) = *(v57 + 40);
        *(v0 + 2256) = (v57 + 40) & 0xFFFFFFFFFFFFLL | 0x1085000000000000;
        sub_1C0F0D80C(v0 + 1384, v0 + 1456);

        v69 = sub_1C0F502B0();
        v71 = v70;
        v72 = sub_1C0F0C1CC;
        v24 = v69;
        v73 = v71;
        goto LABEL_28;
      }

      v24 = *(*(v0 + 2064) + 168);
      *(v0 + 2176) = v24;
      v25 = sub_1C0F0BB60;
LABEL_27:
      v72 = v25;
      v73 = 0;
LABEL_28:

      return MEMORY[0x1EEE6DFA0](v72, v24, v73);
    }

    v4 = *(v0 + 2064);
    if (v2 | v3)
    {
      v5 = *(v0 + 2056);
      ObjectType = swift_getObjectType();
      v7 = *(v0 + 17);
      LOBYTE(v107) = *(v0 + 16);
      BYTE1(v107) = v7;
      v8 = *(v5 + 24);
      swift_unknownObjectRetain();
      if (v8(&v107, ObjectType, v5))
      {
        v9 = *(v0 + 32);
        *(v0 + 1920) = *(v0 + 16);
        *(v0 + 1936) = v9;
        v10 = *(v0 + 48);
        v11 = *(v0 + 56);
        *(v0 + 2264) = v10;
        v12 = *(v0 + 64);
        v13 = *(v0 + 72);
        v14 = *(v4 + 112);
        *(v0 + 2272) = v14;
        v15 = *(v4 + 120);
        *(v0 + 2280) = v15;
        v16 = *(v0 + 80);
        sub_1C0F0D80C(v0 + 16, v0 + 664);

        sub_1C0F08B10(v11, v12, v13, v16);
        v17 = *(v0 + 1936);
        *(v0 + 592) = *(v0 + 1920);
        *(v0 + 608) = v17;
        *(v0 + 624) = v10;
        *(v0 + 632) = v14;
        *(v0 + 640) = v15;
        *(v0 + 648) = 0;
        *(v0 + 656) = 0x80;
        v18 = *(v0 + 640);
        v109 = *(v0 + 624);
        v110 = v18;
        v111 = 0x80;
        v19 = *(v0 + 608);
        v107 = *(v0 + 592);
        v108 = v19;
        if (v10)
        {
          v20 = 0x8000000817319389;
        }

        else
        {
          v20 = 0x8000000817319372;
        }

        sub_1C0F0D80C(v0 + 592, v0 + 736);
        v21 = sub_1C0F26DD8(v20);
        *(v0 + 2288) = v21;
        v22 = v110;
        *(v0 + 552) = v109;
        *(v0 + 568) = v22;
        *(v0 + 584) = v111;
        v23 = v108;
        *(v0 + 520) = v107;
        *(v0 + 536) = v23;
        sub_1C0F07308(v0 + 520);
        if (v21)
        {
          v24 = *(*(v0 + 2064) + 168);
          *(v0 + 2296) = v24;
          v25 = sub_1C0F0C284;
          goto LABEL_27;
        }

        v89 = v0 + 808;
        swift_unknownObjectRelease();
        v90 = *(v0 + 2280);
        v91 = *(v0 + 2264);
        v99 = *(v0 + 1936);
        v93 = 0x80;
        v94 = 872;
        *(v0 + 808) = *(v0 + 1920);
        *(v0 + 824) = v99;
        v95 = 864;
        v96 = 856;
        v97 = 848;
        v98 = 840;
      }

      else
      {
        v74 = *(v0 + 32);
        *(v0 + 1888) = *(v0 + 16);
        *(v0 + 1904) = v74;
        v75 = *(v0 + 48);
        v76 = *(v0 + 56);
        *(v0 + 2312) = v75;
        v77 = *(v0 + 64);
        v78 = *(v0 + 72);
        v79 = *(v4 + 112);
        *(v0 + 2320) = v79;
        v80 = *(v4 + 120);
        *(v0 + 2328) = v80;
        v81 = *(v0 + 80);
        sub_1C0F0D80C(v0 + 16, v0 + 232);

        sub_1C0F08B10(v76, v77, v78, v81);
        v82 = *(v0 + 1904);
        *(v0 + 1096) = *(v0 + 1888);
        *(v0 + 1112) = v82;
        *(v0 + 1128) = v75;
        *(v0 + 1136) = v79;
        *(v0 + 1144) = v80;
        *(v0 + 1152) = 0;
        *(v0 + 1160) = 96;
        v83 = *(v0 + 1144);
        v109 = *(v0 + 1128);
        v110 = v83;
        v111 = *(v0 + 1160);
        v84 = *(v0 + 1112);
        v107 = *(v0 + 1096);
        v108 = v84;
        if (v75)
        {
          v85 = 0x8000000817319389;
        }

        else
        {
          v85 = 0x8000000817319372;
        }

        sub_1C0F0D80C(v0 + 1096, v0 + 304);
        v86 = sub_1C0F26DD8(v85);
        *(v0 + 2336) = v86;
        v87 = v107;
        *(v0 + 104) = v108;
        v88 = v110;
        *(v0 + 120) = v109;
        *(v0 + 136) = v88;
        *(v0 + 152) = v111;
        *(v0 + 88) = v87;
        sub_1C0F07308(v0 + 88);
        if (v86)
        {
          v24 = *(*(v0 + 2064) + 168);
          *(v0 + 2344) = v24;
          v25 = sub_1C0F0C39C;
          goto LABEL_27;
        }

        v89 = v0 + 376;
        swift_unknownObjectRelease();
        v90 = *(v0 + 2328);
        v91 = *(v0 + 2312);
        v100 = *(v0 + 1904);
        v93 = 96;
        v94 = 440;
        *(v0 + 376) = *(v0 + 1888);
        *(v0 + 392) = v100;
        v95 = 432;
        v96 = 424;
        v97 = 416;
        v98 = 408;
      }
    }

    else
    {
      v42 = *(v0 + 32);
      *(v0 + 1952) = *(v0 + 16);
      *(v0 + 1968) = v42;
      v43 = *(v0 + 48);
      v106 = *(v0 + 56);
      *(v0 + 2128) = v43;
      v44 = *(v0 + 64);
      v45 = *(v0 + 72);
      v46 = *(v4 + 112);
      *(v0 + 2136) = v46;
      v47 = *(v4 + 120);
      *(v0 + 2144) = v47;
      v48 = *(v0 + 80);
      swift_unknownObjectRetain();
      sub_1C0F0D80C(v0 + 16, v0 + 1672);

      sub_1C0F08B10(v106, v44, v45, v48);
      v49 = *(v0 + 1968);
      *(v0 + 1600) = *(v0 + 1952);
      *(v0 + 1616) = v49;
      *(v0 + 1632) = v43;
      *(v0 + 1640) = v46;
      *(v0 + 1648) = v47;
      *(v0 + 1656) = 0;
      *(v0 + 1664) = 64;
      v50 = *(v0 + 1648);
      v109 = *(v0 + 1632);
      v110 = v50;
      v111 = *(v0 + 1664);
      v51 = *(v0 + 1616);
      v107 = *(v0 + 1600);
      v108 = v51;
      if (v43)
      {
        v52 = 0x8000000817319389;
      }

      else
      {
        v52 = 0x8000000817319372;
      }

      sub_1C0F0D80C(v0 + 1600, v0 + 1744);
      v53 = sub_1C0F26DD8(v52);
      *(v0 + 2152) = v53;
      v54 = v110;
      *(v0 + 1560) = v109;
      *(v0 + 1576) = v54;
      *(v0 + 1592) = v111;
      v55 = v108;
      *(v0 + 1528) = v107;
      *(v0 + 1544) = v55;
      sub_1C0F07308(v0 + 1528);
      if (v53)
      {
        v24 = *(*(v0 + 2064) + 168);
        *(v0 + 2160) = v24;
        v25 = sub_1C0F0BA48;
        goto LABEL_27;
      }

      v89 = v0 + 1816;
      swift_unknownObjectRelease();
      v90 = *(v0 + 2144);
      v91 = *(v0 + 2128);
      v92 = *(v0 + 1968);
      v93 = 64;
      v94 = 1880;
      *(v0 + 1816) = *(v0 + 1952);
      *(v0 + 1832) = v92;
      v95 = 1872;
      v96 = 1864;
      v97 = 1856;
      v98 = 1848;
    }

    *(v0 + v98) = v91;
    *(v0 + v97) = *(&v91 + 1);
    *(v0 + v96) = v90;
    *(v0 + v95) = 0;
    *(v0 + v94) = v93;
    sub_1C0F07308(v89);
  }

  v101 = *(v0 + 8);

  return v101();
}

uint64_t sub_1C0F0BA48()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[271] = Strong;
  if (Strong)
  {
    v2 = v0[269];
    v3 = *(v0[270] + 112);
    v4 = swift_task_alloc();
    v0[274] = v4;
    *v4 = v0;
    v4[1] = sub_1C0F0BC74;

    return sub_1C0F05A8C(v2, v3);
  }

  else
  {
    v6 = v0[258];
    [*(v0[270] + 112) sendEvent_];

    return MEMORY[0x1EEE6DFA0](sub_1C0F11418, v6, 0);
  }
}

uint64_t sub_1C0F0BB60()
{
  v1 = v0[272];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[273] = Strong;
  v3 = *(v1 + 112);
  v4 = v0[265];
  if (Strong)
  {
    v5 = swift_task_alloc();
    v0[275] = v5;
    *v5 = v0;
    v5[1] = sub_1C0F0BDF0;

    return sub_1C0F05A8C(v4, v3);
  }

  else
  {
    v7 = v0[258];
    [v3 sendEvent_];

    return MEMORY[0x1EEE6DFA0](sub_1C0F113EC, v7, 0);
  }
}

uint64_t sub_1C0F0BC74()
{
  v1 = *(*v0 + 2160);

  return MEMORY[0x1EEE6DFA0](sub_1C0F0BD84, v1, 0);
}

uint64_t sub_1C0F0BD84()
{
  v1 = *(v0 + 2064);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1C0F1140C, v1, 0);
}

uint64_t sub_1C0F0BDF0()
{
  v1 = *(*v0 + 2176);

  return MEMORY[0x1EEE6DFA0](sub_1C0F0BF00, v1, 0);
}

uint64_t sub_1C0F0BF00()
{
  v1 = *(v0 + 2064);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1C0F0BF6C, v1, 0);
}

uint64_t sub_1C0F0BF6C()
{
  swift_getObjectType();
  v1 = swift_conformsToProtocol2();
  *(v0 + 2208) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 2112);
    v17 = *(v0 + 2096);
    v4 = *(v0 + 2088);
    v5 = *(v0 + 82) & 1 | 0x20;
    v6 = swift_allocObject();
    *(v0 + 2216) = v6;
    v7 = *(v0 + 1984);
    v8 = *(v0 + 2000);
    *(v0 + 1384) = v7;
    *(v0 + 1400) = v8;
    *(v0 + 1416) = v17;
    *(v0 + 1432) = v3;
    *(v0 + 1440) = v4;
    *(v0 + 1448) = v5;
    *(v6 + 80) = v5;
    *(v6 + 16) = v7;
    *(v6 + 32) = v8;
    v9 = *(v0 + 1432);
    *(v6 + 48) = *(v0 + 1416);
    *(v6 + 64) = v9;
    *(v0 + 2224) = swift_getObjectType();
    v10 = *(v6 + 17);
    v11 = *(v6 + 24);
    *(v0 + 2016) = *(v6 + 16);
    *(v0 + 2017) = v10;
    *(v0 + 2024) = v11;
    v12 = swift_allocObject();
    *(v0 + 2232) = v12;
    swift_weakInit();
    v13 = swift_allocObject();
    *(v0 + 2240) = v13;
    *(v13 + 16) = v12;
    *(v13 + 24) = v6;
    *(v0 + 2248) = *(v2 + 40);
    *(v0 + 2256) = (v2 + 40) & 0xFFFFFFFFFFFFLL | 0x1085000000000000;
    sub_1C0F0D80C(v0 + 1384, v0 + 1456);

    v15 = sub_1C0F502B0();

    return MEMORY[0x1EEE6DFA0](sub_1C0F0C1CC, v15, v14);
  }

  else
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return sub_1C0F50620();
  }
}

uint64_t sub_1C0F0C1CC()
{
  v1 = *(v0 + 2064);
  (*(v0 + 2248))(v0 + 2016, &unk_1C0F582B8, *(v0 + 2240), *(v0 + 2224), *(v0 + 2208));

  return MEMORY[0x1EEE6DFA0](sub_1C0F11414, v1, 0);
}

uint64_t sub_1C0F0C284()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[288] = Strong;
  if (Strong)
  {
    v2 = v0[286];
    v3 = *(v0[287] + 112);
    v4 = swift_task_alloc();
    v0[295] = v4;
    *v4 = v0;
    v4[1] = sub_1C0F0C4B4;

    return sub_1C0F05A8C(v2, v3);
  }

  else
  {
    v6 = v0[258];
    [*(v0[287] + 112) sendEvent_];

    return MEMORY[0x1EEE6DFA0](sub_1C0F1141C, v6, 0);
  }
}

uint64_t sub_1C0F0C39C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[294] = Strong;
  if (Strong)
  {
    v2 = v0[292];
    v3 = *(v0[293] + 112);
    v4 = swift_task_alloc();
    v0[296] = v4;
    *v4 = v0;
    v4[1] = sub_1C0F0C630;

    return sub_1C0F05A8C(v2, v3);
  }

  else
  {
    v6 = v0[258];
    [*(v0[293] + 112) sendEvent_];

    return MEMORY[0x1EEE6DFA0](sub_1C0F11420, v6, 0);
  }
}

uint64_t sub_1C0F0C4B4()
{
  v1 = *(*v0 + 2296);

  return MEMORY[0x1EEE6DFA0](sub_1C0F0C5C4, v1, 0);
}

uint64_t sub_1C0F0C5C4()
{
  v1 = *(v0 + 2064);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1C0F113FC, v1, 0);
}

uint64_t sub_1C0F0C630()
{
  v1 = *(*v0 + 2344);

  return MEMORY[0x1EEE6DFA0](sub_1C0F0C740, v1, 0);
}

uint64_t sub_1C0F0C740()
{
  v1 = *(v0 + 2064);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1C0F11400, v1, 0);
}

uint64_t sub_1C0F0C7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 2072) = a5;
  *(v7 + 2064) = a4;
  *(v7 + 2056) = a3;
  *(v7 + 2048) = a2;
  v10 = *(a1 + 48);
  *(v7 + 48) = *(a1 + 32);
  *(v7 + 64) = v10;
  *(v7 + 80) = *(a1 + 64);
  v11 = *(a1 + 16);
  *(v7 + 16) = *a1;
  *(v7 + 32) = v11;
  ObjectType = swift_getObjectType();
  *(v7 + 81) = a7;
  v15 = (*(a6 + 24) + **(a6 + 24));
  v13 = swift_task_alloc();
  *(v7 + 2080) = v13;
  *v13 = v7;
  v13[1] = sub_1C0F0C918;

  return v15(v7 + 2032, v7 + 81, ObjectType, a6);
}

uint64_t sub_1C0F0C918()
{
  v1 = *(*v0 + 2064);

  return MEMORY[0x1EEE6DFA0](sub_1C0F0CA28, v1, 0);
}

uint64_t sub_1C0F0CA28()
{
  v112 = v0;
  v1 = *(v0 + 2048);
  v2 = *(v0 + 2032);
  *(v0 + 2088) = v2;
  v3 = *(v0 + 2040);
  *(v0 + 82) = v3;
  if (v1)
  {
    if (!*(v0 + 2041))
    {
      v26 = (v0 + 1984);
      v27 = *(v0 + 2064);
      v28 = *(v0 + 32);
      *(v0 + 1984) = *(v0 + 16);
      *(v0 + 2000) = v28;
      v30 = *(v0 + 48);
      v29 = *(v0 + 56);
      *(v0 + 2096) = v30;
      v104 = *(v0 + 64);
      v105 = v29;
      v103 = *(v0 + 72);
      v31 = *(v27 + 112);
      *(v0 + 2104) = v31;
      v32 = *(v27 + 120);
      *(v0 + 2112) = v32;
      v33 = v3 & 1 | 0x20;
      v34 = *(v0 + 80);
      swift_unknownObjectRetain();
      sub_1C0F0D80C(v0 + 16, v0 + 1168);

      sub_1C0F08B10(v105, v104, v103, v34);
      v35 = *(v0 + 2000);
      *(v0 + 1024) = *(v0 + 1984);
      *(v0 + 1040) = v35;
      *(v0 + 1056) = v30;
      *(v0 + 1064) = v31;
      *(v0 + 1072) = v32;
      *(v0 + 1080) = v2;
      *(v0 + 1088) = v33;
      v36 = *(v0 + 1072);
      v109 = *(v0 + 1056);
      v110 = v36;
      v111 = *(v0 + 1088);
      v37 = *(v0 + 1040);
      v107 = *(v0 + 1024);
      v108 = v37;
      if (v30)
      {
        v38 = 0x8000000817319389;
      }

      else
      {
        v38 = 0x8000000817319372;
      }

      sub_1C0F0D80C(v0 + 1024, v0 + 1240);
      v39 = sub_1C0F26DD8(v38);
      *(v0 + 2120) = v39;
      v40 = v110;
      *(v0 + 984) = v109;
      *(v0 + 1000) = v40;
      *(v0 + 1016) = v111;
      v41 = v108;
      *(v0 + 952) = v107;
      *(v0 + 968) = v41;
      sub_1C0F07308(v0 + 952);
      if (!v39)
      {
        swift_getObjectType();
        v56 = swift_conformsToProtocol2();
        *(v0 + 2208) = v56;
        if (!v56)
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          return sub_1C0F50620();
        }

        v57 = v56;
        v58 = *(v0 + 82) & 1 | 0x20;
        v59 = swift_allocObject();
        *(v0 + 2216) = v59;
        v60 = *v26;
        v61 = *(v0 + 2000);
        *(v0 + 1384) = *v26;
        *(v0 + 1400) = v61;
        v62 = *(v0 + 2088);
        v63 = *(v0 + 2104);
        *(v0 + 1416) = vextq_s8(v62, v63, 8uLL);
        *(v0 + 1432) = vextq_s8(v63, v62, 8uLL);
        *(v0 + 1448) = v58;
        *(v59 + 80) = v58;
        *(v59 + 16) = v60;
        *(v59 + 32) = v61;
        v64 = *(v0 + 1432);
        *(v59 + 48) = *(v0 + 1416);
        *(v59 + 64) = v64;
        *(v0 + 2224) = swift_getObjectType();
        v65 = *(v59 + 17);
        v66 = *(v59 + 24);
        *(v0 + 2016) = *(v59 + 16);
        *(v0 + 2017) = v65;
        *(v0 + 2024) = v66;
        v67 = swift_allocObject();
        *(v0 + 2232) = v67;
        swift_weakInit();
        v68 = swift_allocObject();
        *(v0 + 2240) = v68;
        *(v68 + 16) = v67;
        *(v68 + 24) = v59;
        *(v0 + 2248) = *(v57 + 40);
        *(v0 + 2256) = (v57 + 40) & 0xFFFFFFFFFFFFLL | 0x1085000000000000;
        sub_1C0F0D80C(v0 + 1384, v0 + 1456);

        v69 = sub_1C0F502B0();
        v71 = v70;
        v72 = sub_1C0F0D754;
        v24 = v69;
        v73 = v71;
        goto LABEL_28;
      }

      v24 = *(*(v0 + 2064) + 168);
      *(v0 + 2176) = v24;
      v25 = sub_1C0F0D264;
LABEL_27:
      v72 = v25;
      v73 = 0;
LABEL_28:

      return MEMORY[0x1EEE6DFA0](v72, v24, v73);
    }

    v4 = *(v0 + 2064);
    if (v2 | v3)
    {
      v5 = *(v0 + 2056);
      ObjectType = swift_getObjectType();
      v7 = *(v0 + 17);
      LOBYTE(v107) = *(v0 + 16);
      BYTE1(v107) = v7;
      v8 = *(v5 + 24);
      swift_unknownObjectRetain();
      if (v8(&v107, ObjectType, v5))
      {
        v9 = *(v0 + 32);
        *(v0 + 1920) = *(v0 + 16);
        *(v0 + 1936) = v9;
        v10 = *(v0 + 48);
        v11 = *(v0 + 56);
        *(v0 + 2264) = v10;
        v12 = *(v0 + 64);
        v13 = *(v0 + 72);
        v14 = *(v4 + 112);
        *(v0 + 2272) = v14;
        v15 = *(v4 + 120);
        *(v0 + 2280) = v15;
        v16 = *(v0 + 80);
        sub_1C0F0D80C(v0 + 16, v0 + 664);

        sub_1C0F08B10(v11, v12, v13, v16);
        v17 = *(v0 + 1936);
        *(v0 + 592) = *(v0 + 1920);
        *(v0 + 608) = v17;
        *(v0 + 624) = v10;
        *(v0 + 632) = v14;
        *(v0 + 640) = v15;
        *(v0 + 648) = 0;
        *(v0 + 656) = 0x80;
        v18 = *(v0 + 640);
        v109 = *(v0 + 624);
        v110 = v18;
        v111 = 0x80;
        v19 = *(v0 + 608);
        v107 = *(v0 + 592);
        v108 = v19;
        if (v10)
        {
          v20 = 0x8000000817319389;
        }

        else
        {
          v20 = 0x8000000817319372;
        }

        sub_1C0F0D80C(v0 + 592, v0 + 736);
        v21 = sub_1C0F26DD8(v20);
        *(v0 + 2288) = v21;
        v22 = v110;
        *(v0 + 552) = v109;
        *(v0 + 568) = v22;
        *(v0 + 584) = v111;
        v23 = v108;
        *(v0 + 520) = v107;
        *(v0 + 536) = v23;
        sub_1C0F07308(v0 + 520);
        if (v21)
        {
          v24 = *(*(v0 + 2064) + 168);
          *(v0 + 2296) = v24;
          v25 = sub_1C0F0C284;
          goto LABEL_27;
        }

        v89 = v0 + 808;
        swift_unknownObjectRelease();
        v90 = *(v0 + 2280);
        v91 = *(v0 + 2264);
        v99 = *(v0 + 1936);
        v93 = 0x80;
        v94 = 872;
        *(v0 + 808) = *(v0 + 1920);
        *(v0 + 824) = v99;
        v95 = 864;
        v96 = 856;
        v97 = 848;
        v98 = 840;
      }

      else
      {
        v74 = *(v0 + 32);
        *(v0 + 1888) = *(v0 + 16);
        *(v0 + 1904) = v74;
        v75 = *(v0 + 48);
        v76 = *(v0 + 56);
        *(v0 + 2312) = v75;
        v77 = *(v0 + 64);
        v78 = *(v0 + 72);
        v79 = *(v4 + 112);
        *(v0 + 2320) = v79;
        v80 = *(v4 + 120);
        *(v0 + 2328) = v80;
        v81 = *(v0 + 80);
        sub_1C0F0D80C(v0 + 16, v0 + 232);

        sub_1C0F08B10(v76, v77, v78, v81);
        v82 = *(v0 + 1904);
        *(v0 + 1096) = *(v0 + 1888);
        *(v0 + 1112) = v82;
        *(v0 + 1128) = v75;
        *(v0 + 1136) = v79;
        *(v0 + 1144) = v80;
        *(v0 + 1152) = 0;
        *(v0 + 1160) = 96;
        v83 = *(v0 + 1144);
        v109 = *(v0 + 1128);
        v110 = v83;
        v111 = *(v0 + 1160);
        v84 = *(v0 + 1112);
        v107 = *(v0 + 1096);
        v108 = v84;
        if (v75)
        {
          v85 = 0x8000000817319389;
        }

        else
        {
          v85 = 0x8000000817319372;
        }

        sub_1C0F0D80C(v0 + 1096, v0 + 304);
        v86 = sub_1C0F26DD8(v85);
        *(v0 + 2336) = v86;
        v87 = v107;
        *(v0 + 104) = v108;
        v88 = v110;
        *(v0 + 120) = v109;
        *(v0 + 136) = v88;
        *(v0 + 152) = v111;
        *(v0 + 88) = v87;
        sub_1C0F07308(v0 + 88);
        if (v86)
        {
          v24 = *(*(v0 + 2064) + 168);
          *(v0 + 2344) = v24;
          v25 = sub_1C0F0C39C;
          goto LABEL_27;
        }

        v89 = v0 + 376;
        swift_unknownObjectRelease();
        v90 = *(v0 + 2328);
        v91 = *(v0 + 2312);
        v100 = *(v0 + 1904);
        v93 = 96;
        v94 = 440;
        *(v0 + 376) = *(v0 + 1888);
        *(v0 + 392) = v100;
        v95 = 432;
        v96 = 424;
        v97 = 416;
        v98 = 408;
      }
    }

    else
    {
      v42 = *(v0 + 32);
      *(v0 + 1952) = *(v0 + 16);
      *(v0 + 1968) = v42;
      v43 = *(v0 + 48);
      v106 = *(v0 + 56);
      *(v0 + 2128) = v43;
      v44 = *(v0 + 64);
      v45 = *(v0 + 72);
      v46 = *(v4 + 112);
      *(v0 + 2136) = v46;
      v47 = *(v4 + 120);
      *(v0 + 2144) = v47;
      v48 = *(v0 + 80);
      swift_unknownObjectRetain();
      sub_1C0F0D80C(v0 + 16, v0 + 1672);

      sub_1C0F08B10(v106, v44, v45, v48);
      v49 = *(v0 + 1968);
      *(v0 + 1600) = *(v0 + 1952);
      *(v0 + 1616) = v49;
      *(v0 + 1632) = v43;
      *(v0 + 1640) = v46;
      *(v0 + 1648) = v47;
      *(v0 + 1656) = 0;
      *(v0 + 1664) = 64;
      v50 = *(v0 + 1648);
      v109 = *(v0 + 1632);
      v110 = v50;
      v111 = *(v0 + 1664);
      v51 = *(v0 + 1616);
      v107 = *(v0 + 1600);
      v108 = v51;
      if (v43)
      {
        v52 = 0x8000000817319389;
      }

      else
      {
        v52 = 0x8000000817319372;
      }

      sub_1C0F0D80C(v0 + 1600, v0 + 1744);
      v53 = sub_1C0F26DD8(v52);
      *(v0 + 2152) = v53;
      v54 = v110;
      *(v0 + 1560) = v109;
      *(v0 + 1576) = v54;
      *(v0 + 1592) = v111;
      v55 = v108;
      *(v0 + 1528) = v107;
      *(v0 + 1544) = v55;
      sub_1C0F07308(v0 + 1528);
      if (v53)
      {
        v24 = *(*(v0 + 2064) + 168);
        *(v0 + 2160) = v24;
        v25 = sub_1C0F0BA48;
        goto LABEL_27;
      }

      v89 = v0 + 1816;
      swift_unknownObjectRelease();
      v90 = *(v0 + 2144);
      v91 = *(v0 + 2128);
      v92 = *(v0 + 1968);
      v93 = 64;
      v94 = 1880;
      *(v0 + 1816) = *(v0 + 1952);
      *(v0 + 1832) = v92;
      v95 = 1872;
      v96 = 1864;
      v97 = 1856;
      v98 = 1848;
    }

    *(v0 + v98) = v91;
    *(v0 + v97) = *(&v91 + 1);
    *(v0 + v96) = v90;
    *(v0 + v95) = 0;
    *(v0 + v94) = v93;
    sub_1C0F07308(v89);
  }

  v101 = *(v0 + 8);

  return v101();
}