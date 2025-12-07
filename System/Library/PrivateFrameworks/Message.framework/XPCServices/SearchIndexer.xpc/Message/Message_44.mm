uint64_t sub_1002CF614(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 72);
    v4 = (a2 + 40);
    do
    {
      v5 = *(v3 - 4);
      v6 = *(v3 - 3);
      v7 = *(v3 - 16);
      v15 = *v3;
      v16 = *(v3 - 1);
      v8 = *v4;
      v9 = v4[1];
      v10 = *(v4 + 16);
      v11 = v4[3];
      v14 = v4[4];
      if ((static SectionSpecifier.Part.__derived_struct_equals(_:_:)(*(v3 - 5), *(v4 - 1)) & 1) == 0)
      {
        return 0;
      }

      if (v7 > 2)
      {
        if (v7 == 3)
        {
          if (v10 != 3)
          {
            return 0;
          }
        }

        else
        {
          if (v7 != 4)
          {
            result = 0;
            if (v5 | v6)
            {
              if (v10 != 5 || v8 != 1 || v9)
              {
                return result;
              }
            }

            else if (v10 != 5 || v9 | v8)
            {
              return result;
            }

            goto LABEL_25;
          }

          if (v10 != 4)
          {
            return 0;
          }
        }
      }

      else if (v7)
      {
        if (v7 == 1)
        {
          if (v10 != 1)
          {
            return 0;
          }
        }

        else if (v10 != 2)
        {
          return 0;
        }
      }

      else if (v10)
      {
        return 0;
      }

      if (v5 != v8 || v6 != v9)
      {
        v12 = sub_1004A6D34();
        result = 0;
        if ((v12 & 1) == 0)
        {
          return result;
        }

LABEL_25:
        if (v16 != v11)
        {
          return result;
        }

        goto LABEL_26;
      }

      if (v16 != v11)
      {
        return 0;
      }

LABEL_26:
      if ((sub_1002BF928(v15, v14) & 1) == 0)
      {
        return 0;
      }

      v3 += 6;
      v4 += 6;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1002CF7BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v6 = *v3++;
        v5 = v6;
        v7 = *v4++;
        v8 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v5, v7);
        if ((v8 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1002CF840(uint64_t a1, uint64_t a2)
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

    return sub_1002CFA70(a1);
  }

  swift_beginAccess();
  if ((*(v6 + 16) & 0x3FLL) == (*(v6 + 24) & 0x3FLL))
  {
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  else if (v5 <= sub_1004A4764())
  {
LABEL_16:
    v11 = sub_1002CFA70(a1);
    sub_1002CEBF4();
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

    v10 = sub_1004A4774();

    *v2 = v10;
    v9 = v10;
  }

  if (v9)
  {

    result = sub_1002CFE30(a2, (v9 + 16), v9 + 32, v2);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {

      sub_1002D0024(a1, a1 + 1, v4, (v9 + 16), v9 + 32);

      return sub_1002CFA70(a1);
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1002CF9A0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1002D87B4(v5);
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
    v9 = v5 + 48 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 16);
    v12 = *(v9 + 24);
    v13 = *(v9 + 32);
    v14 = *(v9 + 40);
    result = memmove(v9, (v9 + 48), 48 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
    *a2 = v10;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
    *(a2 + 32) = v13;
    *(a2 + 40) = v14;
  }

  return result;
}

uint64_t sub_1002CFA70(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1002D87A0(v3);
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
    v7 = v3 + 8 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 40), 8 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1002CFAF4(uint64_t a1, uint64_t *a2)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = v5 + 32;
  v8 = *(v5 + 16);
  if (*v2)
  {

    v9 = sub_1002CEE8C(a1, v7, v8, (v6 + 16), v6 + 32);
    v11 = v10;

    if (v11)
    {
      return v9;
    }
  }

  else
  {
    if (!v8)
    {
      return 0;
    }

    v9 = 0;
    while (1)
    {

      v13 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v12, a1);

      if (v13)
      {
        break;
      }

      if (v8 == ++v9)
      {
        return 0;
      }
    }
  }

  sub_1002D248C(*a2, a2[1], a2[2], a2[3], a2[4], a2[5]);
  v15 = v2[2];
  v14 = v2 + 2;
  result = sub_1002CFC74(v9, *(v15 + 16) - 1, v16);
  v18 = *v14;
  if (*(*v14 + 16))
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1002D87B4(v18);
      v18 = result;
    }

    v19 = *(v18 + 16);
    if (v19)
    {
      v20 = v18 + 48 * v19;
      v21 = *v20;
      v22 = *(v20 + 8);
      v23 = *(v20 + 16);
      v24 = *(v20 - 16);
      v25 = *(v20 + 24);
      *(v18 + 16) = v19 - 1;
      *v14 = v18;
      *a2 = v24;
      *(a2 + 16) = v21;
      a2[3] = v22;
      *(a2 + 32) = v23;
      a2[5] = v25;
      return v9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1002CFC74(unint64_t result, unint64_t a2, __n128 a3)
{
  if (result != a2)
  {
    v4 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v5 = *v3;
      v6 = *(*v3 + 16);
      if (v6 > result)
      {
        if (v6 > a2)
        {
          v8 = v5 + 32 + 48 * result;
          v9 = *(v8 + 16);
          v27 = *(v8 + 24);
          v26 = *(v8 + 32);
          v10 = *(v8 + 40);
          v11 = v5 + 32 + 48 * a2;
          v12 = *v11;
          v13 = *(v11 + 8);
          v14 = *(v11 + 16);
          v29 = *(v11 + 24);
          v28 = *(v11 + 32);
          v15 = *(v11 + 40);
          v24 = *(v8 + 8);
          v25 = *v8;
          sub_1002D22A8(*v8, v24, v9);

          sub_1002D22A8(v12, v13, v14);

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1002D87B4(v5);
            v5 = result;
          }

          if (*(v5 + 16) > v4)
          {
            v16 = v5 + 32 + 48 * v4;
            v17 = *v16;
            v18 = *(v16 + 8);
            *v16 = v12;
            *(v16 + 8) = v13;
            v19 = *(v16 + 16);
            *(v16 + 16) = v14;
            *(v16 + 24) = v29;
            *(v16 + 32) = v28;
            *(v16 + 40) = v15;
            sub_1002D22C0(v17, v18, v19);

            if (*(v5 + 16) > a2)
            {
              v20 = v5 + 32 + 48 * a2;
              v21 = *v20;
              v22 = *(v20 + 8);
              *v20 = v25;
              *(v20 + 8) = v24;
              v23 = *(v20 + 16);
              *(v20 + 16) = v9;
              *(v20 + 24) = v27;
              *(v20 + 32) = v26;
              *(v20 + 40) = v10;
              sub_1002D22C0(v21, v22, v23);

              *v3 = v5;
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

unint64_t sub_1002CFE30(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  *&v18 = a2;
  *(&v18 + 1) = a3;
  *&v19 = a1;
  *(&v19 + 1) = sub_1004A46F4();
  *&v20 = v7;
  *(&v20 + 1) = v8;
  v21 = 0;
  sub_1004A4744();
  if (*(&v19 + 1))
  {
    v9 = sub_1004A4704();
    do
    {
      v26 = v18;
      v27 = v19;
      v28 = v20;
      v29 = v21;
      result = sub_1004A4724();
      if (v11)
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

      v12 = *(a4 + 8);
      if (result >= *(v12 + 16))
      {
        goto LABEL_18;
      }

      v13 = *(v12 + 8 * result + 32);
      sub_1004A6E94();

      SectionSpecifier.Part.hash(into:)(&v17, v13);
      v14 = sub_1004A6F14();

      v15 = 1 << *a2;
      if (__OFSUB__(v15, 1))
      {
        goto LABEL_19;
      }

      v16 = (v15 - 1) & v14;
      if (v6 >= v9)
      {
        if (v16 < v9)
        {
          goto LABEL_3;
        }
      }

      else if (v16 >= v9)
      {
        goto LABEL_13;
      }

      if (v6 >= v16)
      {
LABEL_13:
        v22 = v18;
        v23 = v19;
        v24 = v20;
        v25 = v21;
        sub_1004A4724();
        v6 = v23;
        sub_1004A4714();
      }

LABEL_3:
      sub_1004A4744();
    }

    while (*(&v19 + 1));
  }

  return sub_1004A4714();
}

void sub_1002D0024(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_58;
  }

  if (v6 >= 1)
  {
    v11 = *(a3 + 16);
    if (result < (v11 - v6) / 2)
    {
      if (sub_1004A4754() / 3 > result)
      {
        if (result < 0)
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        if (v11 < result)
        {
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        v12 = a3;

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v14 = *(v12 + 32 + 8 * v13);
            sub_1004A6E94();

            SectionSpecifier.Part.hash(into:)(&v47, v14);
            v15 = sub_1004A6F14();
            v16 = 1 << *a4;
            v17 = __OFSUB__(v16, 1);
            v18 = v16 - 1;
            if (v17)
            {
              break;
            }

            v19 = v18 & v15;
            v20 = sub_1004A46F4();
            *&v47 = a4;
            *(&v47 + 1) = a5;
            *&v48 = v19;
            *(&v48 + 1) = v20;
            *&v49 = v21;
            *(&v49 + 1) = v22;
            v50 = 0;
            while (*(&v48 + 1))
            {
              v51 = v47;
              v52 = v48;
              v53 = v49;
              v54 = v50;
              v23 = sub_1004A4724();
              if ((v24 & 1) == 0 && v23 == v13)
              {
                break;
              }

              sub_1004A4744();
            }

            if (__OFADD__(v13, v6))
            {
              goto LABEL_55;
            }

            ++v13;
            sub_1004A4734();

            if (v13 == result)
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

      *&v51 = a4;
      *(&v51 + 1) = a5;
      *&v52 = 0;
      *(&v52 + 1) = sub_1004A46F4();
      *&v53 = v29;
      *(&v53 + 1) = v30;
      v54 = 0;
      v47 = v51;
      v48 = v52;
      v49 = v53;
      v50 = v54;
      v31 = sub_1004A4724();
      if ((v32 & 1) != 0 || v31 >= result)
      {
LABEL_33:
        sub_1004A4744();
LABEL_18:
        v25 = a4[1];
        if (__OFSUB__(v25 >> 6, v6))
        {
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v26 = 1 << *a4;
        v17 = __OFSUB__(v26, 1);
        v27 = v26 - 1;
        if (v17)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v28 = (v27 & (((v25 >> 6) - v6) >> 63)) + (v25 >> 6) - v6;
        if (v28 < v27)
        {
          v27 = 0;
        }

        a4[1] = a4[1] & 0x3FLL | ((v28 - v27) << 6);
        return;
      }

      if (!__OFADD__(v31, v6))
      {
        sub_1004A4734();
        goto LABEL_33;
      }

      __break(1u);
LABEL_39:
      *&v51 = a4;
      *(&v51 + 1) = a5;
      *&v52 = 0;
      *(&v52 + 1) = sub_1004A46F4();
      *&v53 = v33;
      *(&v53 + 1) = v34;
      v54 = 0;
      v47 = v51;
      v48 = v52;
      v49 = v53;
      v50 = v54;
      v35 = sub_1004A4724();
      if ((v36 & 1) == 0 && v35 >= v5)
      {
        if (__OFSUB__(v35, v6))
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        sub_1004A4734();
      }

      sub_1004A4744();
      return;
    }

    v5 = a2;
    if (__OFSUB__(v11, a2))
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    if ((v11 - a2) >= sub_1004A4754() / 3)
    {
      goto LABEL_39;
    }

    if (v11 < v5)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v5 < 0)
    {
LABEL_65:
      __break(1u);
      return;
    }

    if (v11 != v5)
    {
      do
      {
        v37 = *(a3 + 32 + 8 * v5);
        sub_1004A6E94();

        SectionSpecifier.Part.hash(into:)(&v47, v37);
        v38 = sub_1004A6F14();
        v39 = 1 << *a4;
        v17 = __OFSUB__(v39, 1);
        v40 = v39 - 1;
        if (v17)
        {
          goto LABEL_57;
        }

        v41 = v40 & v38;
        v42 = sub_1004A46F4();
        *&v47 = a4;
        *(&v47 + 1) = a5;
        *&v48 = v41;
        *(&v48 + 1) = v42;
        *&v49 = v43;
        *(&v49 + 1) = v44;
        v50 = 0;
        while (*(&v48 + 1))
        {
          v51 = v47;
          v52 = v48;
          v53 = v49;
          v54 = v50;
          v45 = sub_1004A4724();
          if ((v46 & 1) == 0 && v45 == v5)
          {
            break;
          }

          sub_1004A4744();
        }

        sub_1004A4734();
      }

      while (++v5 != v11);
    }
  }
}

uint64_t sub_1002D0494(uint64_t a1, uint64_t a2)
{
  if ((static SectionSpecifier.Part.__derived_struct_equals(_:_:)(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if (v6 <= 2)
  {
    if (*(a1 + 24))
    {
      if (v6 == 1)
      {
        if (v9 != 1)
        {
          return 0;
        }

        goto LABEL_16;
      }

      if (v9 == 2)
      {
LABEL_16:
        if ((v4 != v7 || v5 != v8) && (sub_1004A6D34() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_27;
      }
    }

    else if (!*(a2 + 24))
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (v6 == 3)
  {
    if (v9 != 3)
    {
      return 0;
    }

    goto LABEL_16;
  }

  if (v6 == 4)
  {
    if (v9 != 4)
    {
      return 0;
    }

    goto LABEL_16;
  }

  if (v4 | v5)
  {
    if (v9 != 5 || v7 != 1 || v8)
    {
      return 0;
    }
  }

  else if (v9 != 5 || v8 | v7)
  {
    return 0;
  }

LABEL_27:
  if (*(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v10 = *(a1 + 40);
  v11 = *(a2 + 40);

  return sub_1002BF928(v10, v11);
}

uint64_t sub_1002D05B4(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 2u)
  {
    if (a3 == 3)
    {
      if (a6 == 3)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        return sub_1004A6D34();
      }
    }

    else if (a3 == 4)
    {
      if (a6 == 4)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        return sub_1004A6D34();
      }
    }

    else if (a1 | a2)
    {
      if (a6 == 5 && a4 == 1 && !a5)
      {
        return 1;
      }
    }

    else if (a6 == 5 && !(a5 | a4))
    {
      return 1;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        return sub_1004A6D34();
      }
    }

    else if (a6 == 2)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      return sub_1004A6D34();
    }
  }

  else if (!a6)
  {
    if (a1 == a4 && a2 == a5)
    {
      return 1;
    }

    return sub_1004A6D34();
  }

  return 0;
}

unint64_t *sub_1002D06E8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = result;
  v7 = 0;
  v8 = 0;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  while (v11)
  {
    v12 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v13 = v12 | (v8 << 6);
LABEL_11:
    v16 = *(*(a3 + 48) + 8 * v13);
    v17 = *(a4 + 16);
    if (v17 >= *(v16 + 16))
    {
LABEL_15:
      *(v6 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
LABEL_18:

        return sub_1002CF404(v6, a2, v7, a3);
      }
    }

    else
    {
      v18 = (v16 + 32);
      v19 = (a4 + 32);
      while (v17)
      {
        v20 = *v19++;
        result = v20;
        v21 = *v18++;
        --v17;
        if (v21 != result)
        {
          goto LABEL_15;
        }
      }
    }
  }

  v14 = v8;
  while (1)
  {
    v8 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v8 >= ((v9 + 63) >> 6))
    {
      goto LABEL_18;
    }

    v15 = *(a3 + 56 + 8 * v8);
    ++v14;
    if (v15)
    {
      v11 = (v15 - 1) & v15;
      v13 = __clz(__rbit64(v15)) | (v8 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002D0828(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    __chkstk_darwin(v8);
    bzero(&v29 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = 0;
    v10 = 0;
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    while (v13)
    {
      v14 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v15 = v14 | (v10 << 6);
LABEL_12:
      v18 = *(*(a1 + 48) + 8 * v15);
      v19 = *(a2 + 16);
      if (v19 >= *(v18 + 16))
      {
LABEL_16:
        *(&v29 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)) |= 1 << v15;
        if (__OFADD__(v9++, 1))
        {
          __break(1u);
LABEL_19:
          v26 = sub_1002CF404((&v29 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, v9, a1);
          goto LABEL_20;
        }
      }

      else
      {
        v20 = (v18 + 32);
        v21 = (a2 + 32);
        while (v19)
        {
          v23 = *v21++;
          v22 = v23;
          v24 = *v20++;
          --v19;
          if (v24 != v22)
          {
            goto LABEL_16;
          }
        }
      }
    }

    v16 = v10;
    while (1)
    {
      v10 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v10 >= ((v11 + 63) >> 6))
      {
        goto LABEL_19;
      }

      v17 = *(a1 + 56 + 8 * v10);
      ++v16;
      if (v17)
      {
        v13 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v10 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v28 = swift_slowAlloc();

  v26 = sub_1002CF360(v28, v6, a1, a2, sub_1002D06E8);

LABEL_20:

  return v26;
}

void sub_1002D0AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v5 = a1;
  v6 = a1 + 56;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;
  v28 = a3 + 32;
  v25 = a4 + 32;
  v11 = 0;
  v12 = 0;

  while (v9)
  {
LABEL_11:
    v16 = *(*(v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v9)))));
    v17 = *(a3 + 16);
    if (v4)
    {

      v18 = sub_1002CEE8C(v16, v28, v17, (v4 + 16), v4 + 32);
      v20 = v19;

      if ((v20 & 1) == 0)
      {
        if ((v18 & 0x8000000000000000) != 0)
        {
          goto LABEL_26;
        }

        goto LABEL_21;
      }

      v13 = 0;
    }

    else
    {

      if (v17)
      {
        v18 = 0;
        while (1)
        {

          v22 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v21, v16);

          if (v22)
          {
            break;
          }

          if (v17 == ++v18)
          {
            goto LABEL_19;
          }
        }

        v4 = a2;
        v5 = v24;
LABEL_21:
        if (v18 >= *(a4 + 16))
        {
          goto LABEL_27;
        }

        v13 = *(v25 + 48 * v18 + 32);
        goto LABEL_5;
      }

LABEL_19:

      v13 = 0;
      v4 = a2;
      v5 = v24;
    }

LABEL_5:
    v9 &= v9 - 1;
    v14 = __OFADD__(v12, v13);
    v12 += v13;
    if (v14)
    {
      goto LABEL_25;
    }
  }

  while (1)
  {
    v15 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v15 >= v10)
    {

      return;
    }

    v9 = *(v6 + 8 * v15);
    ++v11;
    if (v9)
    {
      v11 = v15;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

void *sub_1002D0CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v8 = a1;
  v9 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v9)
  {
    v48 = _swiftEmptyArrayStorage;
    sub_1002D3C58(0, v9, 0);
    v11 = _swiftEmptyArrayStorage;
    v12 = v8 + 56;
    result = sub_1004A6554();
    v13 = result;
    v14 = 0;
    v37 = v8 + 64;
    v38 = v9;
    v39 = v8 + 56;
    while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(v8 + 32))
    {
      v16 = v13 >> 6;
      if ((*(v12 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_22;
      }

      v43 = v14;
      v45 = *(v8 + 36);
      v17 = *(*(v8 + 48) + 8 * v13);
      swift_bridgeObjectRetain_n();

      v19 = sub_1002D0828(v18, v17);
      v44 = v7;

      v47 = v19;

      sub_1002BDB88(&v46, v17);

      v20 = v47;
      v21 = v8;

      sub_1002D0AA0(v20, a4, a5, a6);
      v23 = v22;
      v25 = v24;

      v26 = v11;
      v48 = v11;
      v27 = v11[2];
      v28 = v26[3];
      if (v27 >= v28 >> 1)
      {
        result = sub_1002D3C58((v28 > 1), v27 + 1, 1);
        v26 = v48;
      }

      v26[2] = v27 + 1;
      v29 = &v26[2 * v27];
      v29[4] = v23;
      v29[5] = v25;
      v15 = 1 << *(v21 + 32);
      if (v13 >= v15)
      {
        goto LABEL_23;
      }

      v8 = v21;
      v12 = v39;
      v30 = *(v39 + 8 * v16);
      if ((v30 & (1 << v13)) == 0)
      {
        goto LABEL_24;
      }

      v11 = v26;
      if (v45 != *(v8 + 36))
      {
        goto LABEL_25;
      }

      v31 = v30 & (-2 << (v13 & 0x3F));
      if (v31)
      {
        v15 = __clz(__rbit64(v31)) | v13 & 0x7FFFFFFFFFFFFFC0;
        v7 = v44;
      }

      else
      {
        v32 = v16 << 6;
        v33 = v16 + 1;
        v34 = (v37 + 8 * v16);
        v7 = v44;
        while (v33 < (v15 + 63) >> 6)
        {
          v36 = *v34++;
          v35 = v36;
          v32 += 64;
          ++v33;
          if (v36)
          {
            result = sub_100020944(v13, v45, 0);
            v15 = __clz(__rbit64(v35)) + v32;
            goto LABEL_4;
          }
        }

        result = sub_100020944(v13, v45, 0);
      }

LABEL_4:
      v14 = v43 + 1;
      v13 = v15;
      if (v43 + 1 == v38)
      {
        return v11;
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

uint64_t sub_1002D0F84(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1002CF180(v2, 0);
  sub_1002D3C38(0, v2, 0);
  v18 = v2;
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v17 = a1 + 32;
  while (1)
  {
    v4 = v17 + 56 * v3;
    v6 = *v4;
    v5 = *(v4 + 8);
    v7 = *(v4 + 16);
    v8 = *(v4 + 24);
    v20 = *(v4 + 32);
    v19 = *(v4 + 40);
    v9 = &_swiftEmptyArrayStorage[4];
    v10 = _swiftEmptyArrayStorage[2];
    v21 = *(v4 + 48);

    sub_1002D22A8(v5, v7, v8);
    if (v10)
    {
      break;
    }

LABEL_6:
    sub_1002CEA84(v6, v10);
    v15 = _swiftEmptyArrayStorage[2];
    v14 = _swiftEmptyArrayStorage[3];
    if (v15 >= v14 >> 1)
    {
      sub_1002D3C38((v14 > 1), v15 + 1, 1);
    }

    ++v3;
    _swiftEmptyArrayStorage[2] = v15 + 1;
    v16 = &_swiftEmptyArrayStorage[6 * v15];
    v16[4] = v5;
    v16[5] = v7;
    *(v16 + 48) = v8;
    v16[7] = v20;
    *(v16 + 64) = v19;
    v16[9] = v21;
    if (v3 == v18)
    {
      return 0;
    }
  }

  while (1)
  {

    v12 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v11, v6);

    if (v12)
    {
      break;
    }

    ++v9;
    if (!--v10)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

void *sub_1002D11AC(uint64_t a1, uint64_t a2, void (*a3)(__int128 *__return_ptr, uint64_t, __int128 *))
{
  v5 = *(a2 + 16);
  v34 = _swiftEmptyArrayStorage;
  sub_1002D3C18(0, v5, 0);
  v6 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v7 = (a1 + 32);
    v8 = *(a1 + 16);

    v10 = (a2 + 72);
    while (v8)
    {
      v11 = *v7;
      v12 = *(v10 - 4);
      v14 = *(v10 - 2);
      v15 = *(v10 - 8);
      v16 = *v10;
      v17 = *(v10 - 24);
      *&v35 = *(v10 - 5);
      v13 = v35;
      *(&v35 + 1) = v12;
      v36 = v17;
      v37 = v14;
      v38 = v15;
      v39 = v16;
      v41 = v17;
      v40 = v35;
      v42 = v16;

      sub_1002D22A8(v13, v12, v17);

      a3(&v28, v11, &v35);
      v27 = v28;
      v18 = v29;
      v19 = v30;
      v26 = v31;
      v24 = v33;
      v25 = v32;

      sub_1002D22D8(&v40);
      result = sub_1002D2308(&v42);
      v34 = v6;
      v21 = v6[2];
      v20 = v6[3];
      if (v21 >= v20 >> 1)
      {
        result = sub_1002D3C18((v20 > 1), v21 + 1, 1);
        v6 = v34;
      }

      v6[2] = v21 + 1;
      v22 = &v6[7 * v21];
      *(v22 + 2) = v27;
      v22[6] = v18;
      v22[7] = v19;
      *(v22 + 64) = v26;
      v22[9] = v25;
      v22[10] = v24;
      --v8;
      ++v7;
      v10 += 6;
      if (!--v5)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_9:

    return v6;
  }

  return result;
}

uint64_t sub_1002D1384(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1002CF180(v2, 0);
  sub_1002D3BD8(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  v18 = v2;
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    v19 = v3;
    v5 = a1 + 32 + 56 * v4;
    v6 = *v5;
    v8 = *(v5 + 16);
    v7 = *(v5 + 24);
    v9 = *(v5 + 32);
    v21 = *(v5 + 40);
    v10 = &_swiftEmptyArrayStorage[4];
    v11 = _swiftEmptyArrayStorage[2];
    v22 = *(v5 + 8);
    v20 = *(v5 + 48);

    sub_1002D22A8(v8, v7, v9);
    if (v11)
    {
      break;
    }

LABEL_6:
    sub_1002CEA84(v6, v11);
    v3 = v19;
    v16 = v19[2];
    v15 = v19[3];
    if (v16 >= v15 >> 1)
    {
      sub_1002D3BD8((v15 > 1), v16 + 1, 1);

      v3 = v19;
    }

    else
    {
    }

    ++v4;
    v3[2] = v16 + 1;
    v17 = &v3[6 * v16];
    v17[4] = v22;
    v17[5] = v8;
    v17[6] = v7;
    *(v17 + 56) = v9;
    v17[8] = v21;
    v17[9] = v20;
    if (v4 == v18)
    {
      return 0;
    }
  }

  while (1)
  {

    v13 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v12, v6);

    if (v13)
    {
      break;
    }

    ++v10;
    if (!--v11)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002D15B4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a3 + 16);
  if (!v7)
  {
    return result;
  }

  v47 = a6 + 32;
  v48 = a3 + 32;
  v41 = a7 + 32;

  v8 = 0;
  v9 = 0;
  v43 = v7;
  while (1)
  {
    v13 = v48 + 48 * v9;
    v15 = *v13;
    v14 = *(v13 + 8);
    v16 = *(v13 + 16);
    v17 = *(v13 + 24);
    if (v8)
    {
      break;
    }

    sub_1002D22A8(v14, v16, v17);

    if (v17 == 2)
    {
      goto LABEL_16;
    }

LABEL_12:
    if (v17 == 5 && !(v16 | v14))
    {

      v8 = v15;
      goto LABEL_5;
    }

    v10 = v14;
    v11 = v16;
    v12 = v17;
LABEL_4:
    sub_1002D22C0(v10, v11, v12);

    v8 = 0;
LABEL_5:
    if (++v9 == v7)
    {
    }
  }

  v18 = *(v8 + 16);
  if (v18 < *(v15 + 16))
  {
    v19 = 32;
    while (v18)
    {
      v20 = *(v8 + v19);
      v21 = *(v15 + v19);
      v19 += 8;
      --v18;
      if (v21 != v20)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_5;
  }

LABEL_11:

  sub_1002D22A8(v14, v16, v17);

  if (v17 != 2)
  {
    goto LABEL_12;
  }

LABEL_16:
  if (sub_1004A5814() == v14 && v16 == v22)
  {

    goto LABEL_20;
  }

  v23 = sub_1004A6D34();

  if (v23)
  {
LABEL_20:

    goto LABEL_21;
  }

  v24 = *(v15 + 16);

  if (!v24)
  {
    goto LABEL_21;
  }

  v25 = sub_1002CD464(1, v15);
  v26 = *(a6 + 16);
  if (!a5)
  {
    if (!v26)
    {
      goto LABEL_45;
    }

    v28 = 0;
    while (1)
    {

      v33 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v32, v25);

      if (v33)
      {
        break;
      }

      if (v26 == ++v28)
      {
        goto LABEL_44;
      }
    }

    v31 = v46;
    goto LABEL_35;
  }

  v28 = sub_1002CEE8C(v25, v47, v26, (v27 + 16), v27 + 32);
  v30 = v29;

  if (v30)
  {
LABEL_44:
    v7 = v43;
LABEL_45:

    goto LABEL_21;
  }

  v31 = v46;
  if ((v28 & 0x8000000000000000) == 0)
  {
LABEL_35:
    if (v28 >= *(a7 + 16))
    {
      goto LABEL_51;
    }

    v46 = v31;
    v34 = v41 + 48 * v28;
    v35 = *(v34 + 8);
    v36 = *(v34 + 16);
    v37 = *(v34 + 24);

    sub_1002D22A8(v35, v36, v37);

    if (v37 == 4)
    {
      v38 = Media.Subtype.alternative.unsafeMutableAddressor();
      if (*v38 == v35 && v36 == v38[1])
      {

        sub_1002D22C0(v35, v36, 4u);
      }

      else
      {
        v40 = sub_1004A6D34();

        sub_1002D22C0(v35, v36, 4u);

        if ((v40 & 1) == 0)
        {
          v7 = v43;
          goto LABEL_21;
        }
      }

      LOBYTE(v49) = 0;
      sub_1002CC1C0(v15, a5, a6, a7, &v49);
      v7 = v43;
      if (v49)
      {
        swift_bridgeObjectRelease_n();
        goto LABEL_22;
      }

LABEL_21:
      sub_1002BDB88(&v49, v15);

LABEL_22:
      v10 = v14;
      v11 = v16;
      v12 = 2;
      goto LABEL_4;
    }

    sub_1002D22C0(v35, v36, v37);
    goto LABEL_44;
  }

  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

unint64_t *sub_1002D1A18(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = result;
  v20 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v22 = *(*(a3 + 48) + 8 * v15);

    v16 = sub_1002CB33C(&v22, a4);

    if (v4)
    {
      return result;
    }

    if (v16)
    {
      *(v19 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_1002CF404(v19, a2, v20, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_16;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002D1B7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v28 = a2;

  if (v6 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v24 = v7;
    v26 = &v23;
    __chkstk_darwin(v9);
    v25 = &v23 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v25, v8);
    v27 = 0;
    v10 = 0;
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v7 = v12 & *(a1 + 56);
    v8 = (v11 + 63) >> 6;
    while (v7)
    {
      v13 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v16 = v13 | (v10 << 6);
      v29 = *(*(a1 + 48) + 8 * v16);

      v17 = sub_1002CB33C(&v29, v28);
      if (v3)
      {

        swift_willThrow();
        goto LABEL_18;
      }

      v18 = v17;

      if (v18)
      {
        *&v25[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        if (__OFADD__(v27++, 1))
        {
          __break(1u);
LABEL_17:
          v10 = sub_1002CF404(v25, v24, v27, a1);
          goto LABEL_18;
        }
      }
    }

    v14 = v10;
    while (1)
    {
      v10 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v10 >= v8)
      {
        goto LABEL_17;
      }

      v15 = *(a1 + 56 + 8 * v10);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v7 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v21 = swift_slowAlloc();
  v22 = v28;

  v10 = sub_1002CF360(v21, v7, a1, v22, sub_1002D1A18);

LABEL_18:

  return v10;
}

void *sub_1002D1E48(uint64_t a1, uint64_t a2)
{
  result = _swiftEmptySetSingleton;
  v25 = _swiftEmptySetSingleton;
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = a2 + 32;
    v22 = *(a2 + 16);
    v23 = a1 + 32;
    v21 = a2 + 32;
    do
    {
      v7 = v6 + 48 * v5;
      v8 = *(v7 + 24);
      if (v8 != 4)
      {
        v10 = *v7;
        v9 = *(v7 + 8);
        v11 = *(v7 + 16);
        v12 = a1;
        v13 = *(a1 + 16);

        sub_1002D22A8(v9, v11, v8);

        if (v13)
        {
          v14 = 0;
          while (1)
          {
            v15 = *(v23 + 8 * v14);

            if (static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v16, v10))
            {

              goto LABEL_19;
            }

            v17 = *(v15 + 16);
            if (v17 < *(v10 + 16))
            {
              break;
            }

LABEL_16:
            ++v14;

            if (v14 == v13)
            {
              goto LABEL_3;
            }
          }

          v18 = 32;
          while (v17)
          {
            v19 = *(v15 + v18);
            v20 = *(v10 + v18);
            --v17;
            v18 += 8;
            if (v20 != v19)
            {
              swift_unknownObjectRelease();
              goto LABEL_16;
            }
          }

          swift_unknownObjectRelease();
LABEL_19:
          sub_1002BDB88(&v24, v10);

          sub_1002D22C0(v9, v11, v8);
        }

        else
        {
LABEL_3:

          sub_1002D22C0(v9, v11, v8);
        }

        a1 = v12;
        v6 = v21;
        v4 = v22;
      }

      ++v5;
    }

    while (v5 != v4);
    return v25;
  }

  return result;
}

uint64_t sub_1002D2050(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    v4 = 0;
    v5 = (a2 + 56);
    v6 = 1;
    while (v4 < *(v3 + 16))
    {
      if (*v5 != 4 || ((v7 = *(v5 - 2), v8 = *(v5 - 1), v7 == 0x64656E676973) ? (v9 = v8 == 0xE600000000000000) : (v9 = 0), !v9 && (sub_1004A6D34() & 1) == 0 && (v7 != 0x6574707972636E65 || v8 != 0xE900000000000064) && (result = sub_1004A6D34(), (result & 1) == 0)))
      {
        v6 = ++v4 < v2;
        v5 += 48;
        if (v2 != v4)
        {
          continue;
        }
      }

      return v6;
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_1002D216C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100091A08(0, v1, 0);
    v3 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      v5 = sub_1002CBF60();
      v14 = v3;
      v8 = v3[2];
      v7 = v3[3];
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        v11 = v6;
        sub_100091A08((v7 > 1), v8 + 1, 1);
        v6 = v11;
        v5 = v10;
        v3 = v14;
      }

      v3[2] = v8 + 1;
      v9 = &v3[2 * v8];
      v9[4] = v5;
      v9[5] = v6;
      v4 += 48;
      --v1;
    }

    while (v1);
  }

  sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
  sub_100031CDC();
  v12 = sub_1004A5614();

  return v12;
}

double sub_1002D22A8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

uint64_t sub_1002D22C0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

uint64_t sub_1002D2308(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D78E0, &qword_1004F13D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002D2420()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1002D248C(uint64_t result, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    sub_1002D22C0(result, a2, a3);
  }

  return result;
}

uint64_t sub_1002D24CC(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1002D2528(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1002D2570(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1002D25B4(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t RemoteMailbox.path.setter(uint64_t a1, unint64_t a2)
{
  v3 = a2;
  v5 = HIDWORD(a2);

  *v2 = a1;
  *(v2 + 8) = v3;
  *(v2 + 12) = v5;
  return result;
}

__n128 RemoteMailbox.status.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = *(v1 + 65);
  result = *(v1 + 24);
  v6 = *(v1 + 40);
  *a1 = result;
  *(a1 + 16) = v6;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  *(a1 + 41) = v4;
  return result;
}

__n128 RemoteMailbox.status.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v2;
  result = *(a1 + 26);
  *(v1 + 50) = result;
  return result;
}

__n128 RemoteMailbox.init(path:attributes:specialUse:status:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, char a4@<W3>, _OWORD *a5@<X4>, uint64_t a6@<X8>)
{
  *&v7[7] = *a5;
  *&v7[23] = a5[1];
  *&v7[33] = *(a5 + 26);
  *(a6 + 17) = *v7;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 12) = BYTE4(a2);
  *(a6 + 14) = a3;
  *(a6 + 16) = a4;
  *(a6 + 33) = *&v7[16];
  result = *&v7[32];
  *(a6 + 49) = *&v7[32];
  *(a6 + 65) = v7[48];
  return result;
}

uint64_t sub_1002D2728(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return _s16IMAP2Persistence13RemoteMailboxV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v9) & 1;
}

void __swiftcall RemoteMailbox.Status.init(messageCount:nextUID:uidValidity:unreadMessagesCount:highestModificationSequence:)(IMAP2Persistence::RemoteMailbox::Status *__return_ptr retstr, Swift::Int messageCount, NIOIMAPCore2::UID nextUID, NIOIMAPCore2::UIDValidity uidValidity, Swift::Int_optional unreadMessagesCount, NIOIMAPCore2::ModificationSequenceValue_optional highestModificationSequence)
{
  retstr->messageCount = messageCount;
  retstr->nextUID = nextUID;
  retstr->uidValidity = uidValidity;
  retstr->unreadMessagesCount.value = unreadMessagesCount.value;
  retstr->unreadMessagesCount.is_nil = unreadMessagesCount.is_nil;
  *(&retstr->highestModificationSequence.value.value + 7) = highestModificationSequence.value.value;
  LOBYTE(retstr[1].messageCount) = highestModificationSequence.is_nil;
}

BOOL sub_1002D27BC(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return _s16IMAP2Persistence13RemoteMailboxV6StatusV23__derived_struct_equalsySbAE_AEtFZ_0(&v5, &v7);
}

double RemoteMailbox.withStatus(_:)@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  *&v10[7] = *a1;
  v11[0] = *v2;
  *(v11 + 5) = *(v2 + 5);
  v5 = *(v2 + 14);
  v6 = *(v2 + 16);
  *&v10[23] = v4;
  *&v10[33] = *(a1 + 26);
  sub_100063BD4(v2, &v9);
  *a2 = v11[0];
  *(a2 + 6) = *(v11 + 6);
  *(a2 + 14) = v5;
  *(a2 + 16) = v6;
  v7 = *&v10[16];
  *(a2 + 17) = *v10;
  *(a2 + 33) = v7;
  result = *&v10[32];
  *(a2 + 49) = *&v10[32];
  *(a2 + 65) = v10[48];
  return result;
}

void __swiftcall RemoteMailbox.Status.init(_:)(IMAP2Persistence::RemoteMailbox::Status_optional *__return_ptr retstr, NIOIMAPCore2::MailboxStatus *a2)
{
  sub_10009A0FC(a2);
  if (a2->messageCount.is_nil || (a2->unseenCount.value & 0x100000000) != 0 || (a2->size.value & 0x1000000) != 0)
  {
    value = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    value_high = 0;
    v10 = 1;
  }

  else
  {
    v10 = 0;
    value = a2->messageCount.value;
    v6 = *(&a2->highestModificationSequence.value.value + 2);
    v7 = BYTE1(a2->appendLimit.value);
    v8 = *&a2->mailboxID.is_nil;
    value_high = HIBYTE(a2[1].messageCount.value);
    v5 = LODWORD(a2->unseenCount.value) | (*&a2->unseenCount.is_nil << 32);
  }

  retstr->value.messageCount = value;
  *&retstr->value.nextUID.rawValue = v5;
  retstr->value.unreadMessagesCount.value = v6;
  *&retstr->value.unreadMessagesCount.is_nil = v7;
  *(&retstr->value.highestModificationSequence.value.value + 7) = v8;
  retstr->is_nil = value_high;
  LOBYTE(retstr[1].value.messageCount) = v10;
}

uint64_t RemoteMailbox.init(attributes:path:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = result;
  v6 = 0;
  v7 = 0;
  v8 = *(result + 16);
  v28 = result + 32;
  v9 = result + 40;
LABEL_2:
  v10 = (v9 + 16 * v6);
  while (1)
  {
    v11 = *(v4 + 16);
    if (v8 == v6)
    {
      break;
    }

    if (v6 >= v11)
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    ++v6;
    v12 = v10 + 2;
    v14 = *(v10 - 1);
    v13 = *v10;

    result = _s16IMAP2Persistence13RemoteMailboxV9AttributeO3nioAESg12NIOIMAPCore20D4InfoVADV_tcfC_0(v14, v13);
    v10 = v12;
    if (result != 9)
    {
      if (result == 7)
      {
        v15 = 128;
      }

      else
      {
        v15 = 256;
      }

      if (result == 6)
      {
        v15 = 64;
      }

      if (result == 4)
      {
        v16 = 16;
      }

      else
      {
        v16 = 32;
      }

      if (result <= 5u)
      {
        v15 = v16;
      }

      if (result == 2)
      {
        v17 = 4;
      }

      else
      {
        v17 = 8;
      }

      if (result)
      {
        v18 = 2;
      }

      else
      {
        v18 = 1;
      }

      if (result <= 1u)
      {
        v17 = v18;
      }

      if (result <= 3u)
      {
        v15 = v17;
      }

      v7 |= v15;
      goto LABEL_2;
    }
  }

  if (v11)
  {
    v19 = 0;
    v20 = (v4 + 40);
    while (1)
    {
      v21 = *(v20 - 1);
      v22 = *v20;

      result = _s16IMAP2Persistence13RemoteMailboxV10SpecialUseOyAESg12NIOIMAPCore20D4InfoV9AttributeVcfC_0(v21, v22);
      if (result != 7)
      {
        break;
      }

      ++v19;
      v20 += 2;
      if (v11 == v19)
      {
        goto LABEL_33;
      }
    }

    v11 = v19;
  }

LABEL_33:
  v23 = *(v4 + 16);
  if (v11 == v23)
  {
    v24 = 7;
    goto LABEL_37;
  }

  if (v11 >= v23)
  {
    goto LABEL_39;
  }

  v25 = (v28 + 16 * v11);
  v26 = *v25;
  v27 = v25[1];

  result = _s16IMAP2Persistence13RemoteMailboxV10SpecialUseOyAESg12NIOIMAPCore20D4InfoV9AttributeVcfC_0(v26, v27);
  v24 = result;
  if (result != 7)
  {
LABEL_37:

    *a4 = a2;
    *(a4 + 8) = a3;
    *(a4 + 12) = BYTE4(a3);
    *(a4 + 14) = v7;
    *(a4 + 16) = v24;
    *(a4 + 24) = 0u;
    *(a4 + 40) = 0u;
    *(a4 + 49) = 0u;
    *(a4 + 65) = 1;
    return result;
  }

LABEL_40:
  __break(1u);
  return result;
}

BOOL RemoteMailbox.isInbox.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = MailboxName.inbox.unsafeMutableAddressor();
  return (*(v4 + 2) | (*(v4 + 2) << 32)) == (v3 | (v3 << 32)) && (sub_1000FFC98(*v4, v2) & 1) != 0;
}

BOOL _s16IMAP2Persistence13RemoteMailboxV6StatusV23__derived_struct_equalsySbAE_AEtFZ_0(_BOOL8 result, uint64_t a2)
{
  if (*result != *a2 || *(a2 + 8) != *(result + 8) || *(result + 12) != *(a2 + 12))
  {
    return 0;
  }

  v2 = *(a2 + 24);
  if (*(result + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(result + 16) != *(a2 + 16))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(result + 40))
  {
    return (*(a2 + 40) & 1) != 0;
  }

  if (*(a2 + 40))
  {
    return 0;
  }

  v3 = *(result + 32);
  v4 = *(a2 + 32);
  if (((v4 | v3) & 0x8000000000000000) == 0)
  {
    return v4 == v3;
  }

  __break(1u);
  return result;
}

uint64_t _s16IMAP2Persistence13RemoteMailboxV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (!static MailboxPath.__derived_struct_equals(_:_:)(*a1, *(a1 + 8) | (*(a1 + 12) << 32), *a2, *(a2 + 8) | (*(a2 + 12) << 32)) || *(a1 + 14) != *(a2 + 14))
  {
    return 0;
  }

  v4 = *(a2 + 16);
  if (*(a1 + 16) != 7)
  {
    if (v4 == 7 || (sub_1002E2E84() & 1) == 0)
    {
      return 0;
    }

LABEL_8:
    if (*(a1 + 65))
    {
      if ((*(a2 + 65) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(a2 + 65))
      {
        return 0;
      }

      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v8 = *(a1 + 56);
      v9 = *(a1 + 64);
      v10 = *(a2 + 24);
      v11 = *(a2 + 32);
      v12 = *(a2 + 40);
      v13 = *(a2 + 48);
      v14 = *(a2 + 56);
      v15 = *(a2 + 64);
      v17[0] = *(a1 + 24);
      v17[1] = v5;
      v17[2] = v6;
      v18 = v7 & 1;
      v19 = v8;
      v20 = v9 & 1;
      v21[0] = v10;
      v21[1] = v11;
      v21[2] = v12;
      v22 = v13 & 1;
      v23 = v14;
      v24 = v15 & 1;
      if (!_s16IMAP2Persistence13RemoteMailboxV6StatusV23__derived_struct_equalsySbAE_AEtFZ_0(v17, v21))
      {
        return 0;
      }
    }

    return 1;
  }

  if (v4 == 7)
  {
    goto LABEL_8;
  }

  return 0;
}

__n128 sub_1002D2D60(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1002D2D84(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 66))
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

uint64_t sub_1002D2DCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 66) = 1;
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

    *(result + 66) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002D2E30(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002D2E50(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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

  *(result + 41) = v3;
  return result;
}

uint64_t sub_1002D2E98(uint64_t a1, unsigned __int8 a2)
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t RemoteMailbox.Attribute.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x7463656C65536F6ELL;
    v6 = 0x64656B72616D6E75;
    if (a1 != 2)
    {
      v6 = 0x74736978456E6F6ELL;
    }

    if (a1)
    {
      v5 = 0x64656B72616DLL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x65746F6D6572;
    v2 = 0x646C696843736168;
    if (a1 != 7)
    {
      v2 = 0x6968436F4E736168;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x697265666E496F6ELL;
    if (a1 != 4)
    {
      v3 = 0x6269726373627573;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

unint64_t sub_1002D3178@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s16IMAP2Persistence13RemoteMailboxV9AttributeO8rawValueAESgSS_tcfC_0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1002D31A8@<X0>(uint64_t *a1@<X8>)
{
  result = RemoteMailbox.Attribute.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int sub_1002D31D4()
{
  v1 = *v0;
  sub_1004A6E94();
  sub_1002D2E98(v3, v1);
  return sub_1004A6F14();
}

Swift::Int sub_1002D3224(uint64_t a1)
{
  v2 = *v1;
  sub_1004A6E94();
  sub_1002D2E98(v4, v2);
  return sub_1004A6F14();
}

BOOL sub_1002D3374(_WORD *a1, unsigned __int16 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int16 *sub_1002D33A4@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  *(a2 + 2) = v5 == 0;
  return result;
}

unsigned __int16 *sub_1002D33D0@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 2) = v5 == 0;
  return result;
}

uint64_t sub_1002D34A4@<X0>(uint64_t a1@<X0>, _WORD *a2@<X8>)
{
  v3 = sub_1002D4C0C(a1);

  *a2 = v3;
  return result;
}

uint64_t RemoteMailbox.Attributes.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  __chkstk_darwin(a1);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(AssociatedTypeWitness - 8);
  v9 = __chkstk_darwin(AssociatedTypeWitness);
  v11 = &v18 - v10;
  v20 = v5;
  v21 = a1;
  (*(v5 + 16))(v7, a1, a2, v9);
  sub_1004A5AC4();
  v22 = a2;
  swift_getAssociatedConformanceWitness();
  for (i = 0; ; i = i | 0x100)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          sub_1004A6414();
          if (v23 > 4u)
          {
            break;
          }

          if (v23 == 3)
          {
            v13 = 8;
          }

          else
          {
            v13 = 16;
          }

          if (v23 == 2)
          {
            v13 = 4;
          }

          if (v23)
          {
            v14 = 2;
          }

          else
          {
            v14 = 1;
          }

          if (v23 <= 1u)
          {
            v15 = v14;
          }

          else
          {
            v15 = v13;
          }

          i = v15 | i;
        }

        if (v23 > 6u)
        {
          break;
        }

        if (v23 == 5)
        {
          v16 = 32;
        }

        else
        {
          v16 = 64;
        }

        i = v16 | i;
      }

      if (v23 != 7)
      {
        break;
      }

      i = i | 0x80;
    }

    if (v23 != 8)
    {
      break;
    }
  }

  (*(v20 + 8))(v21, v22);
  (*(v19 + 8))(v11, AssociatedTypeWitness);
  return i;
}

uint64_t RemoteMailbox.Attributes.allAttributes.getter@<X0>(__int16 a1@<W0>, void *a2@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *a2 = &off_1005AEBE8;
  a2[1] = sub_1002D49A4;
  a2[2] = result;
  return result;
}

uint64_t RemoteMailbox.Attributes.debugDescription.getter(__int16 a1)
{
  sub_100091A08(0, 0, 0);
  v2 = 0;
  v3 = _swiftEmptyArrayStorage;
  v4 = 0x7463656C65536F6ELL;
  result = 0xEB0000000073726FLL;
LABEL_2:
  v6 = 0;
  if (v2 <= 9)
  {
    v7 = 9;
  }

  else
  {
    v7 = v2;
  }

  v8 = &unk_1005AEC08;
  while (v2 != v7)
  {
    v9 = v8[v2];
    if (v9 <= 3)
    {
      if (v8[v2] > 1u)
      {
        if (v9 == 2)
        {
          if ((a1 & 4) != 0)
          {
            v11 = 0xE800000000000000;
            v10 = 0x64656B72616D6E75;
            goto LABEL_34;
          }
        }

        else if ((a1 & 8) != 0)
        {
          v10 = 0x74736978456E6F6ELL;
          v11 = 0xEB00000000746E65;
          goto LABEL_34;
        }
      }

      else if (v8[v2])
      {
        if ((a1 & 2) != 0)
        {
          v11 = 0xE600000000000000;
          v10 = 0x64656B72616DLL;
          goto LABEL_34;
        }
      }

      else if (a1)
      {
        v11 = 0xE800000000000000;
        v10 = v4;
        goto LABEL_34;
      }
    }

    else if (v8[v2] <= 5u)
    {
      if (v9 == 4)
      {
        if ((a1 & 0x10) != 0)
        {
          v10 = 0x697265666E496F6ELL;
          v11 = 0xEB0000000073726FLL;
          goto LABEL_34;
        }
      }

      else if ((a1 & 0x20) != 0)
      {
        v11 = 0xEA00000000006465;
        v10 = 0x6269726373627573;
        goto LABEL_34;
      }
    }

    else if (v9 == 6)
    {
      if ((a1 & 0x40) != 0)
      {
        v11 = 0xE600000000000000;
        v10 = 0x65746F6D6572;
LABEL_34:
        v18 = v3;
        v13 = v3[2];
        v12 = v3[3];
        if (v13 >= v12 >> 1)
        {
          v16 = v4;
          sub_100091A08((v12 > 1), v13 + 1, 1);
          result = 0xEB0000000073726FLL;
          v4 = v16;
          v3 = v18;
        }

        v14 = v2 - 8;
        v2 = v2 - v6 + 1;
        v3[2] = v13 + 1;
        v15 = &v3[2 * v13];
        v15[4] = v10;
        v15[5] = v11;
        if (v14 == v6)
        {
LABEL_37:
          sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
          sub_10000DF44(&qword_1005CDA18, &unk_1005DA9A0, &unk_1004CF770, &protocol conformance descriptor for [A]);
          v17 = sub_1004A5614();

          return v17;
        }

        goto LABEL_2;
      }
    }

    else if (v9 == 7)
    {
      if ((a1 & 0x80) != 0)
      {
        v10 = 0x646C696843736168;
        v11 = 0xEB000000006E6572;
        goto LABEL_34;
      }
    }

    else if ((a1 & 0x100) != 0)
    {
      v10 = 0x6968436F4E736168;
      v11 = 0xED00006E6572646CLL;
      goto LABEL_34;
    }

    --v7;
    ++v8;
    if (v2 - 9 == --v6)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
  return result;
}

char *sub_1002D3BD8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1002D3CB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1002D3BF8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1002D3DD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1002D3C18(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1002D3EDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1002D3C38(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1002D402C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1002D3C58(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1002D414C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1002D3C78(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1002D4274(a1, a2, a3, *v3, &qword_1005D7930, &unk_1004F1AF0, &type metadata for RenameRollback.Step);
  *v3 = result;
  return result;
}

char *sub_1002D3CB0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D7948, &qword_1004F1B18);
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
    if (v10 != a4 || v12 >= &v13[48 * v8])
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

char *sub_1002D3DD0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005CF0B0, &unk_1004D1FB0);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1002D3EDC(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000C9C0(&qword_1005D7950, &qword_1004F1B20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C9C0(&qword_1005D7958, &qword_1004F1B28);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1002D402C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D7960, &unk_1004F1B30);
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
    if (v10 != a4 || v12 >= &v13[48 * v8])
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

char *sub_1002D414C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D7940, &qword_1004F1B08);
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

char *sub_1002D4274(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    sub_10000C9C0(a5, a6);
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 1;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 5);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[32 * v11])
    {
      memmove(v16, v17, 32 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t _s16IMAP2Persistence13RemoteMailboxV9AttributeO3nioAESg12NIOIMAPCore20D4InfoVADV_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1004A5814();
  v4 = v3;
  if (v2 == sub_1004A5814() && v4 == v5)
  {

LABEL_8:

    return 0;
  }

  v7 = sub_1004A6D34();

  if (v7)
  {
    goto LABEL_8;
  }

  v9 = sub_1004A5814();
  v11 = v10;
  if (v9 == sub_1004A5814() && v11 == v12)
  {

LABEL_13:

    return 1;
  }

  v13 = sub_1004A6D34();

  if (v13)
  {
    goto LABEL_13;
  }

  v14 = sub_1004A5814();
  v16 = v15;
  if (v14 == sub_1004A5814() && v16 == v17)
  {

LABEL_18:

    return 2;
  }

  v18 = sub_1004A6D34();

  if (v18)
  {
    goto LABEL_18;
  }

  v19 = sub_1004A5814();
  v21 = v20;
  if (v19 == sub_1004A5814() && v21 == v22)
  {

LABEL_23:

    return 3;
  }

  v23 = sub_1004A6D34();

  if (v23)
  {
    goto LABEL_23;
  }

  v24 = sub_1004A5814();
  v26 = v25;
  if (v24 == sub_1004A5814() && v26 == v27)
  {

LABEL_28:

    return 4;
  }

  v28 = sub_1004A6D34();

  if (v28)
  {
    goto LABEL_28;
  }

  v29 = sub_1004A5814();
  v31 = v30;
  if (v29 == sub_1004A5814() && v31 == v32)
  {

LABEL_33:

    return 5;
  }

  v33 = sub_1004A6D34();

  if (v33)
  {
    goto LABEL_33;
  }

  v34 = sub_1004A5814();
  v36 = v35;
  if (v34 == sub_1004A5814() && v36 == v37)
  {

LABEL_38:

    return 6;
  }

  v38 = sub_1004A6D34();

  if (v38)
  {
    goto LABEL_38;
  }

  v39 = sub_1004A5814();
  v41 = v40;
  if (v39 == sub_1004A5814() && v41 == v42)
  {

LABEL_43:

    return 7;
  }

  v43 = sub_1004A6D34();

  if (v43)
  {
    goto LABEL_43;
  }

  v44 = sub_1004A5814();
  v46 = v45;
  if (v44 == sub_1004A5814() && v46 == v47)
  {

    return 8;
  }

  else
  {
    v48 = sub_1004A6D34();

    if (v48)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

unint64_t _s16IMAP2Persistence13RemoteMailboxV9AttributeO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005AEAF0;
  v6._object = a2;
  v4 = sub_1004A6AF4(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1002D49B0()
{
  result = qword_1005D78E8;
  if (!qword_1005D78E8)
  {
    result = swift_getWitnessTable("YU\t", &type metadata for RemoteMailbox.Attribute, v0, v1);
    atomic_store(result, &qword_1005D78E8);
  }

  return result;
}

unint64_t sub_1002D4A4C()
{
  result = qword_1005D7900;
  if (!qword_1005D7900)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RemoteMailbox.Attributes, &type metadata for RemoteMailbox.Attributes, v0, v1);
    atomic_store(result, &qword_1005D7900);
  }

  return result;
}

unint64_t sub_1002D4AA4()
{
  result = qword_1005D7908;
  if (!qword_1005D7908)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RemoteMailbox.Attributes, &type metadata for RemoteMailbox.Attributes, v0, v1);
    atomic_store(result, &qword_1005D7908);
  }

  return result;
}

unint64_t sub_1002D4AFC()
{
  result = qword_1005D7910;
  if (!qword_1005D7910)
  {
    result = swift_getWitnessTable("AS\t", &type metadata for RemoteMailbox.Attributes, v0, v1);
    atomic_store(result, &qword_1005D7910);
  }

  return result;
}

unint64_t sub_1002D4B54()
{
  result = qword_1005D7918;
  if (!qword_1005D7918)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RemoteMailbox.Attributes, &type metadata for RemoteMailbox.Attributes, v0, v1);
    atomic_store(result, &qword_1005D7918);
  }

  return result;
}

uint64_t sub_1002D4C0C(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

void sub_1002D4C48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000919C8(0, v1, 0);
    v3 = a1 + 56;
    v4 = sub_1004A6554();
    v5 = 0;
    v20 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      v21 = *(a1 + 36);
      v8 = *(a1 + 48) + 32 * v4;
      v9 = *(v8 + 16);
      v22 = *(v8 + 24);
      v10 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];

      if (v10 >= v11 >> 1)
      {
        sub_1000919C8((v11 > 1), v10 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v10 + 1;
      v12 = &_swiftEmptyArrayStorage[2 * v10];
      v12[4] = v9;
      *(v12 + 10) = v22;
      v6 = 1 << *(a1 + 32);
      if (v4 >= v6)
      {
        goto LABEL_22;
      }

      v3 = a1 + 56;
      v13 = *(a1 + 56 + 8 * v7);
      if ((v13 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v21 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v14 = v13 & (-2 << (v4 & 0x3F));
      if (v14)
      {
        v6 = __clz(__rbit64(v14)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v7 << 6;
        v16 = v7 + 1;
        v17 = (a1 + 64 + 8 * v7);
        while (v16 < (v6 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            sub_100020944(v4, v21, 0);
            v6 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        sub_100020944(v4, v21, 0);
      }

LABEL_4:
      ++v5;
      v4 = v6;
      if (v5 == v20)
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

Swift::Int sub_1002D4E78(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1002D87C8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1002D776C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1002D4EE4(void *a1, uint64_t a2, uint64_t *a3)
{
  v3 = a1;
  v4 = a1[3];
  result = sub_1002D3C78(0, v4 & ~(v4 >> 63), 0);
  v6 = v3[4];
  v7 = v3[3] + v6;
  if (v3[2] < v7)
  {
    v7 = v3[2];
  }

  v32 = v3;
  v33 = v3[4];
  v34 = v7;
  if (v4 < 0)
  {
    goto LABEL_21;
  }

  if (!v4)
  {
    v8 = v6;
    goto LABEL_17;
  }

  while (v6 != v34)
  {
LABEL_8:
    v8 = v6 + 1;
    v33 = v6 + 1;
    v9 = &v3[4 * v6];
    v10 = v9[7];
    v11 = *(v9 + 16);

    swift_bridgeObjectRetain_n();
    v12 = sub_1002D6818(v10, v11, a2, a3);
    v29 = v13;

    v15 = _swiftEmptyArrayStorage[2];
    v14 = _swiftEmptyArrayStorage[3];
    if (v15 >= v14 >> 1)
    {
      sub_1002D3C78((v14 > 1), v15 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v15 + 1;
    v16 = &_swiftEmptyArrayStorage[4 * v15];
    v16[4] = v10;
    *(v16 + 10) = v11;
    v16[6] = v12;
    *(v16 + 14) = v29;
    ++v6;
    if (!--v4)
    {
      while (1)
      {
LABEL_17:
        if (v8 == v34)
        {
          v28 = sub_1002D98D4();
          v17 = v32;
          if ((v28 & 1) == 0)
          {

            return _swiftEmptyArrayStorage;
          }
        }

        else
        {
          v17 = v32;
        }

        v18 = v33;
        v8 = ++v33;
        v19 = &v17[4 * v18];
        v20 = v19[7];
        v21 = *(v19 + 16);
        swift_bridgeObjectRetain_n();

        v22 = sub_1002D6818(v20, v21, a2, a3);
        v24 = v23;

        v26 = _swiftEmptyArrayStorage[2];
        v25 = _swiftEmptyArrayStorage[3];
        if (v26 >= v25 >> 1)
        {
          sub_1002D3C78((v25 > 1), v26 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v26 + 1;
        v27 = &_swiftEmptyArrayStorage[4 * v26];
        v27[4] = v20;
        *(v27 + 10) = v21;
        v27[6] = v22;
        *(v27 + 14) = v24;
      }
    }
  }

  result = sub_1002D98D4();
  if (result)
  {
    v3 = v32;
    v6 = v33;
    goto LABEL_8;
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t static RenameRollback.makeSteps(failedRenames:allMailboxes:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = sub_1004A47B4();
  v7 = v6;
  v8 = *v6;
  v44 = *v6;
  v9 = *(a1 + 16);
  if (v9)
  {
    v37 = v6;
    v10 = sub_1002D7610(v9, 0);
    v38 = sub_1002D9358(&v42, (v10 + 32), v9, a1);
    v11 = v42;

    sub_100020D08(v11);
    if (v38 != v9)
    {
LABEL_27:
      __break(1u);

      __break(1u);
      return result;
    }

    v7 = v37;
  }

  else
  {

    v10 = _swiftEmptyArrayStorage;
  }

  v42 = v10;
  sub_1002D4E78(&v42);
  v12 = v42;
  v13 = *(v42 + 2);
  if (v13)
  {
    sub_10000C9C0(&qword_1005D7968, &qword_1004F1B70);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 40;
    if (v15 < 40)
    {
      v16 = v15 - 9;
    }

    v14[2] = v16 >> 5;
    v14[3] = 0;
    v14[4] = 0;
    sub_1002D87DC((v14 + 2), (v14 + 5), v13, v12);
  }

  else
  {
    v14 = *v7;
  }

  v43 = v14;
  sub_1002D4C48(a1);
  v18 = v17;

  v19 = sub_1002B5044(v18, a2);

  v41[0] = v19;
  v20 = v14[3];
  v21 = v8[3];
  swift_beginAccess();
  if (v14[3])
  {
    while (1)
    {
      sub_1002D54FC(&v43, v41, a3);
      v23 = *(v22 + 16);
      v24 = v8[3];
      v25 = v24 + v23;
      if (__OFADD__(v24, v23))
      {
        break;
      }

      v26 = v22;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (v8[2] < v25 || (isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1002D884C(isUniquelyReferenced_nonNull_native, v25, 0, &type metadata for RenameRollback.Step, &qword_1005D7980, &unk_1004F1BF0);
        v8 = v44;
      }

      sub_1002D89F8(v8 + 2, (v8 + 5), v26 + 32, v23, &type metadata for RenameRollback.Step);

      v14 = v43;
      v28 = v43[3];
      if (v8[3] != v21 || v28 != v20)
      {
        v20 = v43[3];
        v21 = v8[3];
        if (v28)
        {
          continue;
        }
      }

      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_26;
  }

LABEL_20:
  v30 = sub_1002D4EE4(v14, a3, v41);
  swift_beginAccess();
  v31 = *(v30 + 16);
  v32 = v8[3];
  v33 = v32 + v31;
  if (__OFADD__(v32, v31))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v34 = swift_isUniquelyReferenced_nonNull_native();
  v35 = v44;
  if (v44[2] < v33 || (v34 & 1) == 0)
  {
    sub_1002D884C(v34, v33, 0, &type metadata for RenameRollback.Step, &qword_1005D7980, &unk_1004F1BF0);
    v35 = v44;
  }

  sub_1002D89F8(v35 + 2, (v35 + 5), v30 + 32, v31, &type metadata for RenameRollback.Step);
  swift_endAccess();

  *a4 = v35;
}

void sub_1002D54FC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v128 = 0;
  v129 = a3;
  v117 = sub_1004A4444();
  v5 = *(v117 - 8);
  __chkstk_darwin(v117);
  v116 = &v113[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v124 = sub_1004A57F4();
  v7 = *(v124 - 8);
  __chkstk_darwin(v124);
  v123 = &v113[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v135 = *sub_1004A47B4();
  v9 = v135;
  v136 = v135;
  v10 = *(*a1 + 24);
  swift_retain_n();
  if (!v10)
  {
    v119 = v9;
    v11 = v9;
LABEL_112:
    sub_1002D60F8(v11);
    v110 = v119;
    v111 = *(v119 + 24);
    if (v111 < 0)
    {
      goto LABEL_126;
    }

    if (v111)
    {
      v112 = sub_1004A5C64();
      v112[2] = v111;
    }

    else
    {
      v112 = _swiftEmptyArrayStorage;
    }

    v131._rawValue = 0;
    v132 = (v112 + 4);
    v133 = v111;
    sub_1002D9790((v110 + 16), v110 + 40, &v132, &v131);
    if (v111 < v131._rawValue)
    {
      goto LABEL_127;
    }

    v112[2] = v131._rawValue;

    return;
  }

  v121 = (v7 + 8);
  v115 = (v5 + 8);
  v119 = v9;
  v122 = a1;
  v125 = a2;
  v11 = v9;
  while (1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1002D9A34();
    }

    v12 = *a1;
    v13 = *(*a1 + 24);
    v14 = __OFSUB__(v13, 1);
    v15 = v13 - 1;
    if (v14)
    {
      goto LABEL_120;
    }

    v16 = v12[4] + v15;
    v17 = v12[2];
    if (v16 < v17)
    {
      v17 = 0;
    }

    v18 = &v12[4 * (v16 - v17)];
    v19 = v18[5];
    v20 = *(v18 + 12);
    v21 = v18[7];
    v22 = *(v18 + 16);
    v12[3] = v15;
    v127 = *a2;
    if (sub_100011B00(v19, v20, v127))
    {
      goto LABEL_27;
    }

    v126 = v11;
    v23 = v12[4];
    v24 = v12[2];
    if (v24 >= (v12[3] + v23))
    {
      v24 = v12[3] + v23;
    }

    v132 = v12;
    v133 = v23;
    v134 = v24;
    v25 = v12;
    while (1)
    {
      if (v23 == v24)
      {
        if ((sub_1002D98D4() & 1) == 0)
        {

          swift_beginAccess();
          v39 = *(v119 + 24);
          v40 = v39 + 1;
          if (__OFADD__(v39, 1))
          {
            goto LABEL_128;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v119 = v136;
          if (*(v136 + 16) < v40 || (isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1002D884C(isUniquelyReferenced_nonNull_native, v40, 0, &type metadata for RenameRollback.Step, &qword_1005D7980, &unk_1004F1BF0);
            v119 = v136;
          }

          v42 = v21;
          v43 = v21;
          v44 = v128;
          sub_1002D907C((v119 + 16), v119 + 40, v42, v22, v19, v20);
          v128 = v44;
          swift_endAccess();
          v45 = v125;
          sub_100140EC0(v43, v22);

          sub_100088220(&v132, v19, v20);

          v11 = v126;
          a2 = v45;
          goto LABEL_33;
        }

        v25 = v132;
        v23 = v133;
      }

      v26 = v23 + 1;
      v133 = v23 + 1;
      v27 = &v25[4 * v23];
      if ((*(v27 + 12) | (*(v27 + 12) << 32)) == (v20 | (v20 << 32)))
      {
        v28 = v27[5];
        v29 = *(v28 + 16);
        if (v29 == *(v19 + 16))
        {
          break;
        }
      }

LABEL_12:
      v24 = v134;
      v23 = v26;
    }

    if (v29)
    {
      v30 = v28 == v19;
    }

    else
    {
      v30 = 1;
    }

    if (!v30)
    {
      v31 = (v28 + 32);
      v32 = (v19 + 32);
      while (v29)
      {
        if (*v31 != *v32)
        {
          goto LABEL_12;
        }

        ++v31;
        ++v32;
        if (!--v29)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
      goto LABEL_122;
    }

LABEL_26:

    v11 = v126;
    a2 = v125;
LABEL_27:
    sub_1002D6C14(v19, v20, v21, v22, a1, &v135);
    if (v33)
    {
      break;
    }

    swift_beginAccess();
    v34 = v11[3];
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      goto LABEL_121;
    }

    v36 = swift_isUniquelyReferenced_nonNull_native();
    v11 = v135;
    if (v135[2] < v35 || (v36 & 1) == 0)
    {
      sub_1002D884C(v36, v35, 0, &type metadata for MailboxToRename, &qword_1005D7968, &qword_1004F1B70);
      v11 = v135;
    }

    v37 = v21;
    v38 = v128;
    sub_1002D907C(v11 + 2, (v11 + 5), v19, v20, v37, v22);
    v128 = v38;
    swift_endAccess();

LABEL_33:
    if (!*(*a1 + 24))
    {
      goto LABEL_112;
    }
  }

  v126 = v11;
  v46 = sub_1002D9110(0x15F90uLL);

  v47 = sub_1002D72A0(v19);
  rawValue = sub_1002D741C(v46 + 10000, v47);
  v50 = v49;

  v51 = sub_100011B00(rawValue, v50, v127);
  v114 = v22;
  if (v51)
  {
    goto LABEL_59;
  }

  v52 = v12[4];
  v53 = v12[2];
  if (v53 >= (v12[3] + v52))
  {
    v53 = v12[3] + v52;
  }

  v132 = v12;
  v133 = v52;
  v134 = v53;
  value = v50;
  v54 = v50 | (v50 << 32);
  v55 = v12;
  while (v52 != v53)
  {
LABEL_48:
    v56 = v52 + 1;
    v133 = v52 + 1;
    v57 = &v55[4 * v52];
    if ((*(v57 + 12) | (*(v57 + 12) << 32)) == v54)
    {
      v58 = v57[5];
      v59 = *(v58 + 2);
      if (v59 == *(rawValue + 2))
      {
        if (v59)
        {
          v60 = v58 == rawValue;
        }

        else
        {
          v60 = 1;
        }

        if (!v60)
        {
          v61 = (v58 + 32);
          v62 = (rawValue + 32);
          while (v59)
          {
            if (*v61 != *v62)
            {
              goto LABEL_44;
            }

            ++v61;
            ++v62;
            if (!--v59)
            {
              goto LABEL_58;
            }
          }

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
          goto LABEL_130;
        }

LABEL_58:

LABEL_59:

        v120 = v21;
        do
        {
LABEL_61:
          v63 = 90000 * PCG32Random.next()();
        }

        while (v63 < 0x12DF0);
        v64 = HIDWORD(v63) + 10000;
        v65 = v19;
        v66 = v20;
        v131._rawValue = sub_1002D72A0(v19);
        v132 = 45;
        v133 = 0xE100000000000000;
        v130 = v64;

        v137._countAndFlagsBits = sub_1004A6CE4();
        sub_1004A5994(v137);

        v67 = v123;
        sub_1004A57D4();
        v68 = sub_1004A5774();
        v70 = v69;

        (*v121)(v67, v124);
        if (v70 >> 60 == 15)
        {
          goto LABEL_134;
        }

        v71 = v70 >> 62;
        if ((v70 >> 62) > 1)
        {
          v20 = v66;
          if (v71 != 2)
          {
            goto LABEL_74;
          }

          v74 = *(v68 + 16);
          v73 = *(v68 + 24);
          v72 = v73 - v74;
          if (__OFSUB__(v73, v74))
          {
            goto LABEL_124;
          }

          if (!v72)
          {
            goto LABEL_74;
          }
        }

        else
        {
          if (v71)
          {
            if (__OFSUB__(HIDWORD(v68), v68))
            {
              goto LABEL_125;
            }

            v72 = HIDWORD(v68) - v68;
          }

          else
          {
            v72 = BYTE6(v70);
          }

          v20 = v66;
          if (!v72)
          {
LABEL_74:
            sub_1000CBB68(v68, v70);
            v75 = _swiftEmptyArrayStorage;
            a2 = v125;
            a1 = v122;
            v21 = v120;
LABEL_75:
            sub_10015BDC0(v75);
            v79 = MailboxName.init(_:)(v131);
            rawValue = v79.bytes._rawValue;

            if ((sub_100011B00(v79.bytes._rawValue, v79._hashValue._value, v127) & 1) == 0)
            {
              v80 = v12[4];
              v81 = v12[2];
              if (v81 >= (v12[3] + v80))
              {
                v81 = v12[3] + v80;
              }

              v132 = v12;
              v133 = v80;
              v134 = v81;
              value = v79._hashValue._value;
              v82 = v12;
              while (1)
              {
                if (v80 == v81)
                {
                  if ((sub_1002D98D4() & 1) == 0)
                  {

                    goto LABEL_95;
                  }

                  v82 = v132;
                  v80 = v133;
                }

                v83 = v80 + 1;
                v133 = v80 + 1;
                v84 = &v82[4 * v80];
                if ((*(v84 + 12) | (*(v84 + 12) << 32)) == (v79._hashValue._value | (v79._hashValue._value << 32)))
                {
                  v85 = v84[5];
                  v86 = v85[2];
                  if (v86 == *(v79.bytes._rawValue + 2))
                  {
                    break;
                  }
                }

LABEL_79:
                v81 = v134;
                v80 = v83;
              }

              if (v86)
              {
                v87 = v85 == v79.bytes._rawValue;
              }

              else
              {
                v87 = 1;
              }

              if (v87)
              {
LABEL_93:

                goto LABEL_61;
              }

              v88 = 32;
              while (v86)
              {
                if (*(v85 + v88) != *(v79.bytes._rawValue + v88))
                {
                  goto LABEL_79;
                }

                ++v88;
                if (!--v86)
                {
                  goto LABEL_93;
                }
              }

              goto LABEL_119;
            }

            goto LABEL_61;
          }
        }

        v75 = sub_10015BEAC(v72, 0);
        v76 = v116;
        v77 = sub_1004A43B4();
        sub_1000CBB68(v68, v70);
        v78 = v76;
        v19 = v65;
        (*v115)(v78, v117);
        v30 = v77 == v72;
        v20 = v66;
        a1 = v122;
        a2 = v125;
        v21 = v120;
        if (!v30)
        {
          goto LABEL_123;
        }

        goto LABEL_75;
      }
    }

LABEL_44:
    v53 = v134;
    v52 = v56;
  }

  if (sub_1002D98D4())
  {
    v55 = v132;
    v52 = v133;
    goto LABEL_48;
  }

  a1 = v122;
LABEL_95:
  swift_beginAccess();
  v89 = *(v119 + 24);
  v90 = v89 + 1;
  v91 = v114;
  if (__OFADD__(v89, 1))
  {
    goto LABEL_129;
  }

  v92 = swift_isUniquelyReferenced_nonNull_native();
  v119 = v136;
  if (*(v136 + 16) < v90 || (v92 & 1) == 0)
  {
    sub_1002D884C(v92, v90, 0, &type metadata for RenameRollback.Step, &qword_1005D7980, &unk_1004F1BF0);
    v119 = v136;
  }

  v93 = v21;
  v94 = v91;
  v95 = value;
  v96 = v91;
  v97 = v21;
  v98 = v128;
  sub_1002D907C((v119 + 16), v119 + 40, v93, v94, rawValue, value);
  v128 = v98;
  swift_endAccess();
  sub_100140EC0(v97, v96);

  sub_100088220(&v132, rawValue, v95);

  swift_bridgeObjectRelease_n();

  v99 = v12[3];
  v100 = v99 + 1;
  if (__OFADD__(v99, 1))
  {
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  v101 = swift_isUniquelyReferenced_nonNull_native();
  v102 = *a1;
  if (*(*a1 + 16) < v100 || (v101 & 1) == 0)
  {
    sub_1002D884C(v101, v100, 0, &type metadata for MailboxToRename, &qword_1005D7968, &qword_1004F1B70);
    v102 = *a1;
  }

  v103 = v102[4];
  v104 = value;
  if (v103)
  {
    v14 = __OFSUB__(v103, 1);
    v105 = v103 - 1;
    if (!v14)
    {
LABEL_108:
      v107 = &v102[4 * v105];
      v107[5] = v19;
      *(v107 + 12) = v20;
      v107[7] = rawValue;
      *(v107 + 16) = v104;
      v102[4] = v105;
      v108 = v102[3];
      v14 = __OFADD__(v108, 1);
      v109 = v108 + 1;
      if (!v14)
      {
        v102[3] = v109;
        v11 = v126;
        goto LABEL_33;
      }

LABEL_131:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v106 = v102[2];
    v14 = __OFSUB__(v106, 1);
    v105 = v106 - 1;
    if (!v14)
    {
      goto LABEL_108;
    }
  }

  __break(1u);
LABEL_134:
  __break(1u);
}

void sub_1002D60F8(void *a1)
{
  v4 = a1 + 2;
  v5 = a1 + 5;
  v6 = a1[3];
  v7 = a1[4];
  v8 = v6 + v7;
  if (a1[2] < v6 + v7)
  {
    if (v6 <= 0)
    {
      return;
    }

    v2 = a1;
    v9 = (*v1)[3];
    v10 = v9 + v6;
    if (__OFADD__(v9, v6))
    {
      goto LABEL_79;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v1;
    if ((*v1)[2] < v10 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1002D884C(isUniquelyReferenced_nonNull_native, v10, 0, &type metadata for MailboxToRename, &qword_1005D7968, &qword_1004F1B70);
      v12 = *v1;
    }

    sub_1002D8ABC(v12 + 2, (v12 + 5), v76);
    v13 = sub_1002D8B68(v6, &v77);
    v14 = v77;
    v3 = v78;
    if (v81)
    {
      v15 = v2[4];
      v16 = v2[3] + v15;
      if (v2[2] < v16)
      {
        v73 = sub_1002D9604(v4, v5, v77, v78, v2);
        v74 = v17;
        v75 = v18;
        if (v17 != v18 || (sub_1002D98D4() & 1) != 0)
        {
          goto LABEL_90;
        }

        goto LABEL_68;
      }

LABEL_33:
      v38 = v16 - v15;
      if (v16 < v15)
      {
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      if (__OFSUB__(v16, v15))
      {
LABEL_87:
        __break(1u);
        goto LABEL_88;
      }

      if (v38)
      {
        if (v3 < v38)
        {
LABEL_88:
          __break(1u);
          goto LABEL_89;
        }

        swift_arrayInitWithCopy();
      }

      goto LABEL_68;
    }

    if (v78 < 0)
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v71 = v12;
    if (v2[3] < v78)
    {
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    v23 = v79;
    v72 = v80;
    __chkstk_darwin(v13);
    v67 = v14;
    v68 = v3;
    v73 = 0;
    v74 = v3;
    v75 = v2;
    __chkstk_darwin(v24);
    v63 = &v73;
    v64 = sub_1002D9C40;
    v65 = v25;

    v26 = sub_1002D94E8(v4, v5, sub_1002D9C58);
    v70 = v3;
    if (v27)
    {
      v73 = 0;
      v74 = v3;
      v75 = v2;
      __chkstk_darwin(v26);
      v67 = v14;
      v68 = v3;
      __chkstk_darwin(v28);
      v12 = &v62;
      v63 = &v73;
      v64 = sub_1002D9C78;
      v65 = v29;

      sub_1002D9570(v4, v5, sub_1002D9C90);
      if (v31)
      {
        if (v14)
        {
          if (v3)
          {
            v15 = v2[3];
            if (v15 < 1)
            {
LABEL_32:
              __break(1u);
              goto LABEL_33;
            }

            v3 = 0;
            v32 = (v70 - 1);
            while (1)
            {
              v33 = v2[4];
              v34 = v3 + v33 >= v2[2] ? v2[2] : 0;
              v35 = &v5[4 * v3 + 4 * (v33 - v34)];
              v36 = *v35;
              v37 = *(v35 + 2);
              v12 = v35[2];
              LODWORD(v35) = *(v35 + 6);
              *v14 = v36;
              *(v14 + 8) = v37;
              *(v14 + 16) = v12;
              *(v14 + 24) = v35;
              if (v32 == v3)
              {
                break;
              }

              v15 = v2[3];
              ++v3;
              v14 += 32;
              if (v3 >= v15)
              {
                goto LABEL_32;
              }
            }

            v3 = v70;
          }
        }

        else if (v3)
        {
LABEL_91:
          v30 = 0;
LABEL_92:
          if (v30 >= v3)
          {
LABEL_97:
            __break(1u);
            goto LABEL_98;
          }

          if (v30 >= v2[3])
          {
LABEL_98:
            __break(1u);
            return;
          }

          __break(1u);
          goto LABEL_95;
        }
      }

      else if (v30 != v3)
      {
        goto LABEL_92;
      }
    }

    else
    {
    }

    v40 = v2[3];
    if (v40 < v3)
    {
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    __chkstk_darwin(v39);
    v3 = &v66;
    v67 = v23;
    v68 = v72;
    v73 = v41;
    v74 = v40;
    v75 = v2;
    __chkstk_darwin(v42);
    v63 = &v73;
    v64 = sub_1002D9D54;
    v65 = v43;

    v44 = sub_1002D94E8(v4, v5, sub_1002D9D84);
    if ((v45 & 1) == 0)
    {

LABEL_67:
      v12 = v71;
LABEL_68:
      v59 = v12[3];
      v60 = __OFADD__(v59, v6);
      v61 = v59 + v6;
      if (!v60)
      {
        v12[3] = v61;
        return;
      }

      goto LABEL_80;
    }

    v69 = &v69;
    v3 = v70;
    v73 = v70;
    v74 = v40;
    v75 = v2;
    __chkstk_darwin(v44);
    v46 = v72;
    v67 = v23;
    v68 = v72;
    __chkstk_darwin(v47);
    v63 = &v73;
    v64 = sub_1002D9D6C;
    v65 = v48;

    sub_1002D9570(v4, v5, sub_1002D9D9C);
    if (v50)
    {
      if (v23 && v46)
      {
        if (v46 < 0)
        {
LABEL_89:
          __break(1u);
LABEL_90:

          __break(1u);
          goto LABEL_91;
        }

        if (v3 != v40)
        {
          v51 = v46 - 1;
          v52 = v3;
          while (v40 != v52)
          {
            if (v52 >= v2[3])
            {
              goto LABEL_85;
            }

            v53 = v2[4];
            if (v52 + v53 >= v2[2])
            {
              v54 = v2[2];
            }

            else
            {
              v54 = 0;
            }

            v55 = &v5[4 * v52 + 4 * (v53 - v54)];
            v56 = *v55;
            v57 = v55[2];
            ++v52;
            v58 = *(v55 + 6);
            LODWORD(v55) = *(v55 + 2);
            *v23 = v56;
            *(v23 + 8) = v55;
            *(v23 + 16) = v57;
            *(v23 + 24) = v58;
            if (!v51)
            {

              if (v52 == v40)
              {
                goto LABEL_66;
              }

              goto LABEL_72;
            }

            v23 += 32;

            --v51;
            if (v40 == v52)
            {
              goto LABEL_66;
            }
          }

          goto LABEL_84;
        }

        goto LABEL_66;
      }
    }

    else
    {
      v52 = v3 + v49;
      if (!__OFADD__(v3, v49))
      {
        goto LABEL_65;
      }

      __break(1u);
    }

    v52 = v3;
LABEL_65:
    if (v52 == v40)
    {
LABEL_66:

      goto LABEL_67;
    }

LABEL_72:
    if (v52 < v3 || v52 >= v40)
    {
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    if (v52 >= v2[3])
    {
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    __break(1u);
    goto LABEL_76;
  }

  if (v8 < v7)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  if (__OFSUB__(v8, v7))
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v19 = (*v1)[3];
  v20 = v19 + v6;
  if (__OFADD__(v19, v6))
  {
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v21 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v1;
  if ((*v1)[2] < v20 || (v21 & 1) == 0)
  {
    sub_1002D884C(v21, v20, 0, &type metadata for MailboxToRename, &qword_1005D7968, &qword_1004F1B70);
    v22 = *v1;
  }

  sub_1002D89F8(v22 + 2, (v22 + 5), &v5[4 * v7], v6, &type metadata for MailboxToRename);
}

void *sub_1002D6818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a2;
  v38 = sub_1004A4444();
  v7 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1004A57F4();
  v9 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1002D9110(0x15F90uLL);
  v42 = a1;
  v12 = v5;
  v13 = sub_1002D72A0(a1);
  rawValue = sub_1002D741C(v11 + 10000, v13);
  value = v15;

  v43 = a4;
  if ((sub_100011B00(rawValue, value, *a4) & 1) == 0)
  {
LABEL_19:

    sub_100088220(v45, rawValue, value);

    return rawValue;
  }

  v39 = (v9 + 8);
  v35 = (v7 + 8);
  v36 = v12;
  while (1)
  {
    do
    {
      v17 = 90000 * PCG32Random.next()();
    }

    while (v17 < 0x12DF0);
    v18 = HIDWORD(v17) + 10000;
    v19 = sub_1002D72A0(v42);
    v45[0] = 45;
    v45[1] = 0xE100000000000000;
    v46._rawValue = v19;
    v44 = v18;

    v47._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v47);

    v20 = v40;
    sub_1004A57D4();
    v21 = sub_1004A5774();
    v23 = v22;

    result = (*v39)(v20, v41);
    if (v23 >> 60 == 15)
    {
      break;
    }

    v25 = v23 >> 62;
    if ((v23 >> 62) > 1)
    {
      if (v25 != 2)
      {
        goto LABEL_16;
      }

      v28 = *(v21 + 16);
      v27 = *(v21 + 24);
      v26 = v27 - v28;
      if (__OFSUB__(v27, v28))
      {
        goto LABEL_21;
      }

      if (!v26)
      {
        goto LABEL_16;
      }
    }

    else if (v25)
    {
      v32 = HIDWORD(v21) - v21;
      if (__OFSUB__(HIDWORD(v21), v21))
      {
        goto LABEL_20;
      }

      v26 = v32;
      if (!v32)
      {
LABEL_16:
        sub_1000CBB68(v21, v23);
        v29 = _swiftEmptyArrayStorage;
        goto LABEL_17;
      }
    }

    else
    {
      v26 = BYTE6(v23);
      if (!BYTE6(v23))
      {
        goto LABEL_16;
      }
    }

    v29 = sub_10015BEAC(v26, 0);
    v30 = v37;
    v31 = sub_1004A43B4();
    sub_1000CBB68(v21, v23);
    result = (*v35)(v30, v38);
    if (v31 != v26)
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      break;
    }

LABEL_17:
    sub_10015BDC0(v29);
    v33 = MailboxName.init(_:)(v46);
    rawValue = v33.bytes._rawValue;
    value = v33._hashValue._value;

    if ((sub_100011B00(v33.bytes._rawValue, v33._hashValue._value, *v43) & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

void sub_1002D6C14(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t *a5, uint64_t *a6)
{
  v71 = a2;
  v75 = a4;
  if (a2 != a4 || (v7 = a1, (sub_1000FFC98(a1, a3) & 1) == 0))
  {
    v10 = v75 | (v75 << 32);
    v11 = *a5;
    v12 = *(*a5 + 32);
    v13 = *(*a5 + 16);
    if (v13 >= *(*a5 + 24) + v12)
    {
      v13 = *(*a5 + 24) + v12;
    }

    v82 = *(*a5 + 32);
    v84 = v13;
    v14 = *a5;
    while (1)
    {
      if (v12 == v13)
      {
        if ((sub_1002D98D4() & 1) == 0)
        {

          swift_beginAccess();
          v55 = *a6;
          v56 = *(*a6 + 32);
          v57 = *(*a6 + 16);
          if (v57 >= *(*a6 + 24) + v56)
          {
            v57 = *(*a6 + 24) + v56;
          }

          v83 = *(*a6 + 32);
          v85 = v57;
          v58 = *a6;
          while (1)
          {
            if (v56 == v57)
            {
              if ((sub_1002D98D4() & 1) == 0)
              {
                goto LABEL_111;
              }

              v58 = v55;
              v56 = v83;
            }

            v59 = v56 + 1;
            v83 = v56 + 1;
            v60 = v58 + 32 * v56;
            v74 = *(v60 + 48);
            if ((v74 | (v74 << 32)) == v10)
            {
              v8 = *(v60 + 40);
              v61 = *(v8 + 16);
              if (v61 == *(a3 + 16))
              {
                v18 = *(v60 + 56);
                v69 = *(v60 + 64);
                if (v61)
                {
                  v62 = v8 == a3;
                }

                else
                {
                  v62 = 1;
                }

                if (v62)
                {
                  goto LABEL_21;
                }

                v63 = (v8 + 32);
                v64 = (a3 + 32);
                while (1)
                {
                  if (!v61)
                  {
                    __break(1u);
                    return;
                  }

                  if (*v63 != *v64)
                  {
                    break;
                  }

                  ++v63;
                  ++v64;
                  if (!--v61)
                  {
                    goto LABEL_21;
                  }
                }
              }
            }

            v57 = v85;
            v56 = v59;
          }
        }

        v14 = v11;
        v12 = v82;
      }

      v15 = v12 + 1;
      v82 = v12 + 1;
      v16 = v14 + 32 * v12;
      v74 = *(v16 + 48);
      if ((v74 | (v74 << 32)) == v10)
      {
        v8 = *(v16 + 40);
        v17 = *(v8 + 16);
        if (v17 == *(a3 + 16))
        {
          v18 = *(v16 + 56);
          v69 = *(v16 + 64);
          if (v17)
          {
            v19 = v8 == a3;
          }

          else
          {
            v19 = 1;
          }

          if (v19)
          {
LABEL_21:

            v9 = v18;

            v7 = a1;
            goto LABEL_22;
          }

          v20 = (v8 + 32);
          v21 = (a3 + 32);
          while (1)
          {
            if (!v17)
            {
              goto LABEL_110;
            }

            if (*v20 != *v21)
            {
              break;
            }

            ++v20;
            ++v21;
            if (!--v17)
            {
              goto LABEL_21;
            }
          }
        }
      }

      v13 = v84;
      v12 = v15;
    }
  }

  v8 = v7;
  v74 = v75;
  v9 = a3;
  v69 = v75;
LABEL_22:
  swift_beginAccess();
  v72 = v8;
  v66 = (v8 + 32);
  v68 = v9;
  v65 = (v9 + 32);

  v22 = v71;
  while (v22 == v75)
  {
    v23 = *(a3 + 16);
    if (v23 != *(v7 + 16))
    {
      break;
    }

    if (v23)
    {
      v24 = v7 == a3;
    }

    else
    {
      v24 = 1;
    }

    if (!v24)
    {
      v25 = (v7 + 32);
      v26 = (a3 + 32);
      while (v23)
      {
        if (*v26 != *v25)
        {
          goto LABEL_35;
        }

        ++v26;
        ++v25;
        if (!--v23)
        {
          goto LABEL_34;
        }
      }

LABEL_109:
      __break(1u);
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:

      goto LABEL_89;
    }

LABEL_34:
    v27 = a1;

    v22 = v71;
    v28 = a3;
    v29 = v75;
LABEL_53:
    if (v22 == v74)
    {
      v40 = *(v27 + 16);
      if (v40 == *(v72 + 16))
      {
        if (!v40 || v27 == v72)
        {
LABEL_60:
          if (v29 == v69)
          {
            v43 = *(v28 + 16);
            if (v43 == *(v68 + 16))
            {
              if (!v43 || v28 == v68)
              {
LABEL_86:

                return;
              }

              v44 = (v28 + 32);
              v45 = v65;
              while (*v44 == *v45)
              {
                ++v44;
                ++v45;
                if (!--v43)
                {
                  goto LABEL_86;
                }
              }
            }
          }
        }

        else
        {
          v41 = (v27 + 32);
          v42 = v66;
          while (*v41 == *v42)
          {
            ++v41;
            ++v42;
            if (!--v40)
            {
              goto LABEL_60;
            }
          }
        }
      }
    }

    v7 = v27;
  }

LABEL_35:
  v30 = 0x100000001 * v22;
  v31 = *(*a5 + 32);
  v32 = *(*a5 + 16);
  if (v32 >= *(*a5 + 24) + v31)
  {
    v32 = *(*a5 + 24) + v31;
  }

  v76 = *a5;
  v78 = *(*a5 + 32);
  v80 = v32;
  v33 = *a5;
  while (1)
  {
    if (v31 == v32)
    {
      if ((sub_1002D98D4() & 1) == 0)
      {

        v46 = *(*a6 + 32);
        v47 = *(*a6 + 16);
        if (v47 >= *(*a6 + 24) + v46)
        {
          v47 = *(*a6 + 24) + v46;
        }

        v77 = *a6;
        v79 = *(*a6 + 32);
        v81 = v47;
        v48 = *a6;
        while (1)
        {
          if (v46 == v47)
          {
            if ((sub_1002D98D4() & 1) == 0)
            {
              goto LABEL_88;
            }

            v48 = v77;
            v46 = v79;
          }

          v49 = v46 + 1;
          v79 = v46 + 1;
          v50 = v48 + 32 * v46;
          v29 = *(v50 + 64);
          if ((v29 | (v29 << 32)) == v30)
          {
            v28 = *(v50 + 56);
            v51 = *(v28 + 16);
            if (v51 == *(v7 + 16))
            {
              break;
            }
          }

LABEL_71:
          v47 = v81;
          v46 = v49;
        }

        v27 = *(v50 + 40);
        v22 = *(v50 + 48);
        if (v51)
        {
          v52 = v28 == v7;
        }

        else
        {
          v52 = 1;
        }

        if (!v52)
        {
          v53 = (v28 + 32);
          v54 = (v7 + 32);
          while (v51)
          {
            if (*v53 != *v54)
            {
              goto LABEL_71;
            }

            ++v53;
            ++v54;
            if (!--v51)
            {
              goto LABEL_52;
            }
          }

          __break(1u);
          goto LABEL_109;
        }

LABEL_52:

        goto LABEL_53;
      }

      v33 = v76;
      v31 = v78;
    }

    v34 = v31 + 1;
    v78 = v31 + 1;
    v35 = v33 + 32 * v31;
    v29 = *(v35 + 64);
    if ((v29 | (v29 << 32)) == v30)
    {
      v28 = *(v35 + 56);
      v36 = *(v28 + 16);
      if (v36 == *(v7 + 16))
      {
        break;
      }
    }

LABEL_38:
    v32 = v80;
    v31 = v34;
  }

  v27 = *(v35 + 40);
  v22 = *(v35 + 48);
  if (v36)
  {
    v37 = v28 == v7;
  }

  else
  {
    v37 = 1;
  }

  if (v37)
  {
    goto LABEL_52;
  }

  v38 = (v28 + 32);
  v39 = (v7 + 32);
  while (v36)
  {
    if (*v38 != *v39)
    {
      goto LABEL_38;
    }

    ++v38;
    ++v39;
    if (!--v36)
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_88:

LABEL_89:
}

void *sub_1002D72A0(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 16);
  if (v3 >= 6)
  {
    v4 = v3 - 6;
  }

  else
  {
    v4 = 0;
  }

  if (v4 == v3)
  {
LABEL_15:

    return v2;
  }

  v5 = 6;
  if (v3 < 6)
  {
    v5 = *(a1 + 16);
  }

  while (1)
  {
    if (v4 >= v3)
    {
      __break(1u);
LABEL_27:
      swift_unknownObjectRelease();
      sub_1001F4784(v2, v2 + 32, 0, (2 * v1) | 1);
      goto LABEL_25;
    }

    if (*(a1 + v4 + 32) == 45)
    {
      break;
    }

    ++v4;
    if (!--v5)
    {
      goto LABEL_15;
    }
  }

  if (v5 < 1)
  {
    goto LABEL_15;
  }

  v6 = -v5;
  while (v6 != -1)
  {
    v7 = *(v3 + a1 + 33 + v6++) - 58;
    if (v7 < 0xFFFFFFF6)
    {
      goto LABEL_15;
    }
  }

  v9 = v3 >= v5;
  v10 = v3 - v5;
  if (v9)
  {
    v1 = v10;
  }

  else
  {
    v1 = 0;
  }

  sub_1004A6DA4();
  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain_n();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = _swiftEmptyArrayStorage;
  }

  v12 = v11[2];

  if (v12 != v1)
  {
    goto LABEL_27;
  }

  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    swift_unknownObjectRelease();
    v13 = _swiftEmptyArrayStorage;
  }

LABEL_25:
  rawValue = MailboxName.init(_:)(v13).bytes._rawValue;
  swift_unknownObjectRelease();

  return rawValue;
}

void *sub_1002D741C(int a1, void *a2)
{
  v4 = sub_1004A57F4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 45;
  v15 = 0xE100000000000000;
  v16._rawValue = a2;
  v13[1] = a1;

  v17._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v17);

  sub_1004A57D4();
  v8 = sub_1004A5774();
  v10 = v9;

  result = (*(v5 + 8))(v7, v4);
  if (v10 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_1002C95EC(v8, v10);
    sub_10015BDC0(v12);
    return MailboxName.init(_:)(v16).bytes._rawValue;
  }

  return result;
}

void *sub_1002D758C(uint64_t a1, uint64_t a2)
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

  sub_10000C9C0(&qword_1005CF0B0, &unk_1004D1FB0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_1002D7610(uint64_t a1, uint64_t a2)
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

  sub_10000C9C0(&qword_1005D7938, &qword_1004F1B00);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

void sub_1002D7694(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      sub_10000C9C0(&qword_1005CF0B0, &unk_1004D1FB0);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

Swift::Int sub_1002D776C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1004A6CC4(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_1004A5C64();
        v5[2] = v2 / 2;
      }

      v7[0] = (v5 + 4);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_1002D7A58(v7, v8, a1, v4);
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
    return sub_1002D7864(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1002D7864(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    type metadata accessor for ComparisonResult(0);
    v27 = v6;
    v7 = v6 + 32 * v4;
    v8 = v5 - v4;
LABEL_5:
    v25 = v7;
    v26 = v4;
    v24 = v8;
    while (1)
    {
      v9 = *v7;
      v28 = *(v7 + 8);
      v10 = *(v7 + 16);
      v11 = *(v7 + 24);
      v12 = *(v7 - 32);
      v13 = *(v7 - 24);
      v14 = *(v7 - 16);

      v15 = static MailboxName.stableOrderCompare(_:_:)(v10, v11, v14);
      if (v15 == -1)
      {
      }

      else
      {
        if (v15)
        {
          if (v15 != 1)
          {
            goto LABEL_18;
          }

LABEL_4:
          v4 = v26 + 1;
          v7 = v25 + 32;
          v8 = v24 - 1;
          if (v26 + 1 == a2)
          {
            return result;
          }

          goto LABEL_5;
        }

        v16 = static MailboxName.stableOrder(_:_:)(v9, v28, v12, v13);

        if (!v16)
        {
          goto LABEL_4;
        }
      }

      if (!v27)
      {
        break;
      }

      v17 = *v7;
      v18 = *(v7 + 8);
      v19 = *(v7 + 16);
      v20 = *(v7 + 24);
      v21 = *(v7 - 16);
      *v7 = *(v7 - 32);
      *(v7 + 16) = v21;
      *(v7 - 24) = v18;
      *(v7 - 16) = v19;
      *(v7 - 8) = v20;
      *(v7 - 32) = v17;
      v7 -= 32;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
LABEL_18:
    result = sub_1004A6DD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1002D7A58(char **isUniquelyReferenced_nonNull_native, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3[1];
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = _swiftEmptyArrayStorage;
    while (1)
    {
      v10 = v8 + 1;
      v130 = v9;
      if (v8 + 1 >= v7)
      {
        goto LABEL_35;
      }

      v124 = v7;
      v11 = *a3;
      v128 = v8 + 1;
      v12 = *a3 + 32 * v10;
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);
      v16 = *(v12 + 24);
      v120 = v8;
      v17 = *a3 + 32 * v8;
      v18 = *v17;
      v19 = *(v17 + 8);
      v5 = *(v17 + 16);

      v20 = static MailboxName.stableOrderCompare(_:_:)(v15, v16, v5);
      type metadata accessor for ComparisonResult(0);
      v117 = v6;
      if (v20 == -1)
      {
        v126 = 1;
      }

      else if (v20 == 1)
      {
        v126 = 0;
      }

      else
      {
        if (v20)
        {
          goto LABEL_149;
        }

        v126 = static MailboxName.stableOrder(_:_:)(v13, v14, v18, v19);
      }

      v21 = 0;
      v122 = 32 * v120;
      v22 = v11 + 32 * v120 + 48;
      v23 = v120 + 2;
      v24 = v128;
      v9 = v130;
      do
      {
        v10 = v23;
        v26 = v21;
        v27 = v24;
        if (v23 >= v124)
        {
          break;
        }

        v134 = v23;
        v28 = *(v22 + 16);
        v132 = *(v22 + 24);
        v29 = *(v22 + 32);
        v30 = *(v22 + 40);
        v31 = *(v22 - 16);
        v32 = *(v22 - 8);
        v5 = *v22;

        v33 = static MailboxName.stableOrderCompare(_:_:)(v29, v30, v5);
        if (v33 == -1)
        {
          v25 = 1;
        }

        else if (v33 == 1)
        {
          v25 = 0;
        }

        else
        {
          if (v33)
          {
            goto LABEL_149;
          }

          v25 = static MailboxName.stableOrder(_:_:)(v28, v132, v31, v32);
        }

        v22 += 32;
        v10 = v134;
        v23 = v134 + 1;
        v21 = v26 + 32;
        v24 = v27 + 1;
        v9 = v130;
      }

      while (v126 == v25);
      v6 = v117;
      if (!v126)
      {
        goto LABEL_33;
      }

      v34 = v120;
      if (v10 < v120)
      {
        goto LABEL_139;
      }

      if (v120 < v10)
      {
        break;
      }

      v8 = v120;
LABEL_35:
      v46 = a3[1];
      if (v10 >= v46)
      {
        goto LABEL_59;
      }

      if (__OFSUB__(v10, v8))
      {
        goto LABEL_138;
      }

      if (v10 - v8 >= a4)
      {
        goto LABEL_59;
      }

      if (__OFADD__(v8, a4))
      {
        goto LABEL_140;
      }

      if (v8 + a4 >= v46)
      {
        v47 = a3[1];
      }

      else
      {
        v47 = v8 + a4;
      }

      if (v47 < v8)
      {
LABEL_141:
        __break(1u);
        goto LABEL_142;
      }

      if (v10 == v47)
      {
        goto LABEL_59;
      }

      v118 = v6;
      v48 = *a3;
      type metadata accessor for ComparisonResult(0);
      v133 = v48;
      v49 = v48 + 32 * v10;
      v121 = v8;
      v123 = v47;
      v50 = v8 - v10;
      while (2)
      {
        v127 = v49;
        v129 = v10;
        v125 = v50;
        v51 = v49;
        while (1)
        {
          v52 = *v51;
          v135 = *(v51 + 8);
          v5 = *(v51 + 16);
          v53 = *(v51 + 24);
          v54 = *(v51 - 32);
          v55 = *(v51 - 24);
          v56 = *(v51 - 16);

          v57 = static MailboxName.stableOrderCompare(_:_:)(v5, v53, v56);
          if (v57 == -1)
          {

            goto LABEL_52;
          }

          if (v57)
          {
            break;
          }

          v58 = static MailboxName.stableOrder(_:_:)(v52, v135, v54, v55);

          if (!v58)
          {
            goto LABEL_45;
          }

LABEL_52:
          if (!v133)
          {
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
            while (1)
            {
LABEL_149:
              sub_1004A6DD4();
              __break(1u);
            }
          }

          v59 = *v51;
          v60 = *(v51 + 8);
          v61 = *(v51 + 16);
          v62 = *(v51 + 24);
          v63 = *(v51 - 16);
          *v51 = *(v51 - 32);
          *(v51 + 16) = v63;
          *(v51 - 24) = v60;
          *(v51 - 16) = v61;
          *(v51 - 8) = v62;
          *(v51 - 32) = v59;
          v51 -= 32;
          if (__CFADD__(v50++, 1))
          {
            goto LABEL_45;
          }
        }

        if (v57 != 1)
        {
          goto LABEL_149;
        }

LABEL_45:
        v10 = v129 + 1;
        v49 = v127 + 32;
        v50 = v125 - 1;
        if (v129 + 1 != v123)
        {
          continue;
        }

        break;
      }

      v10 = v123;
      v6 = v118;
      v9 = v130;
      v8 = v121;
LABEL_59:
      if (v10 < v8)
      {
        goto LABEL_137;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100085288(0, *(v9 + 2) + 1, 1, v9);
      }

      v66 = *(v9 + 2);
      v65 = *(v9 + 3);
      v67 = v66 + 1;
      if (v66 >= v65 >> 1)
      {
        v9 = sub_100085288((v65 > 1), v66 + 1, 1, v9);
      }

      *(v9 + 2) = v67;
      v68 = &v9[16 * v66];
      *(v68 + 4) = v8;
      *(v68 + 5) = v10;
      v8 = v10;
      v69 = *isUniquelyReferenced_nonNull_native;
      if (!*isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_147;
      }

      if (v66)
      {
        while (2)
        {
          v70 = v67 - 1;
          if (v67 >= 4)
          {
            v75 = &v9[16 * v67 + 32];
            v76 = *(v75 - 64);
            v77 = *(v75 - 56);
            v81 = __OFSUB__(v77, v76);
            v78 = v77 - v76;
            if (v81)
            {
              goto LABEL_124;
            }

            v80 = *(v75 - 48);
            v79 = *(v75 - 40);
            v81 = __OFSUB__(v79, v80);
            v73 = v79 - v80;
            v74 = v81;
            if (v81)
            {
              goto LABEL_125;
            }

            v82 = &v9[16 * v67];
            v84 = *v82;
            v83 = *(v82 + 1);
            v81 = __OFSUB__(v83, v84);
            v85 = v83 - v84;
            if (v81)
            {
              goto LABEL_127;
            }

            v81 = __OFADD__(v73, v85);
            v86 = v73 + v85;
            if (v81)
            {
              goto LABEL_130;
            }

            if (v86 >= v78)
            {
              v104 = &v9[16 * v70 + 32];
              v106 = *v104;
              v105 = *(v104 + 1);
              v81 = __OFSUB__(v105, v106);
              v107 = v105 - v106;
              if (v81)
              {
                goto LABEL_134;
              }

              if (v73 < v107)
              {
                v70 = v67 - 2;
              }
            }

            else
            {
LABEL_79:
              if (v74)
              {
                goto LABEL_126;
              }

              v87 = &v9[16 * v67];
              v89 = *v87;
              v88 = *(v87 + 1);
              v90 = __OFSUB__(v88, v89);
              v91 = v88 - v89;
              v92 = v90;
              if (v90)
              {
                goto LABEL_129;
              }

              v93 = &v9[16 * v70 + 32];
              v95 = *v93;
              v94 = *(v93 + 1);
              v81 = __OFSUB__(v94, v95);
              v96 = v94 - v95;
              if (v81)
              {
                goto LABEL_132;
              }

              if (__OFADD__(v91, v96))
              {
                goto LABEL_133;
              }

              if (v91 + v96 < v73)
              {
                goto LABEL_93;
              }

              if (v73 < v96)
              {
                v70 = v67 - 2;
              }
            }
          }

          else
          {
            if (v67 == 3)
            {
              v71 = *(v9 + 4);
              v72 = *(v9 + 5);
              v81 = __OFSUB__(v72, v71);
              v73 = v72 - v71;
              v74 = v81;
              goto LABEL_79;
            }

            v97 = &v9[16 * v67];
            v99 = *v97;
            v98 = *(v97 + 1);
            v81 = __OFSUB__(v98, v99);
            v91 = v98 - v99;
            v92 = v81;
LABEL_93:
            if (v92)
            {
              goto LABEL_128;
            }

            v100 = &v9[16 * v70];
            v102 = *(v100 + 4);
            v101 = *(v100 + 5);
            v81 = __OFSUB__(v101, v102);
            v103 = v101 - v102;
            if (v81)
            {
              goto LABEL_131;
            }

            if (v103 < v91)
            {
              break;
            }
          }

          v108 = v70 - 1;
          if (v70 - 1 >= v67)
          {
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
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
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
LABEL_140:
            __break(1u);
            goto LABEL_141;
          }

          if (!*a3)
          {
            goto LABEL_144;
          }

          v109 = *&v9[16 * v108 + 32];
          v5 = *&v9[16 * v70 + 40];
          sub_1002D833C((*a3 + 32 * v109), (*a3 + 32 * *&v9[16 * v70 + 32]), (*a3 + 32 * v5), v69);
          if (v6)
          {
          }

          if (v5 < v109)
          {
            goto LABEL_122;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_100141810(v9);
          }

          if (v108 >= *(v9 + 2))
          {
            goto LABEL_123;
          }

          v110 = &v9[16 * v108];
          *(v110 + 4) = v109;
          *(v110 + 5) = v5;
          sub_100141784(v70);
          v67 = *(v9 + 2);
          if (v67 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v7 = a3[1];
      if (v8 >= v7)
      {
        goto LABEL_110;
      }
    }

    v35 = 0;
    do
    {
      if (v34 != v27)
      {
        v39 = *a3;
        if (!*a3)
        {
          goto LABEL_145;
        }

        v40 = v39 + v122 + v35;
        v41 = v39 + v122 + v26;
        v42 = *v40;
        v43 = *(v40 + 8);
        v44 = *(v40 + 16);
        v45 = *(v40 + 24);
        if (v122 + v35 != v122 + v26 + 32 || v40 >= v41 + 64)
        {
          v36 = *(v41 + 48);
          *v40 = *(v41 + 32);
          *(v40 + 16) = v36;
        }

        *(v41 + 32) = v42;
        v37 = v39 + v122 + v26;
        *(v37 + 40) = v43;
        *(v37 + 48) = v44;
        *(v37 + 56) = v45;
      }

      ++v34;
      v26 -= 32;
      v35 += 32;
    }

    while (v34 < v27--);
LABEL_33:
    v8 = v120;
    goto LABEL_35;
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_110:
  v5 = *isUniquelyReferenced_nonNull_native;
  if (!*isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_148;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_142:
    v9 = sub_100141810(v9);
  }

  v111 = *(v9 + 2);
  if (v111 >= 2)
  {
    while (*a3)
    {
      v112 = *&v9[16 * v111];
      v113 = *&v9[16 * v111 + 24];
      sub_1002D833C((*a3 + 32 * v112), (*a3 + 32 * *&v9[16 * v111 + 16]), (*a3 + 32 * v113), v5);
      if (v6)
      {
      }

      if (v113 < v112)
      {
        goto LABEL_135;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100141810(v9);
      }

      if (v111 - 2 >= *(v9 + 2))
      {
        goto LABEL_136;
      }

      v114 = &v9[16 * v111];
      *v114 = v112;
      *(v114 + 1) = v113;
      sub_100141784(v111 - 1);
      v111 = *(v9 + 2);
      if (v111 <= 1)
      {
      }
    }

    goto LABEL_146;
  }
}

uint64_t sub_1002D833C(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = a3;
  v5 = a2;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 31;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 5;
  v10 = a3 - a2;
  v11 = a3 - a2 + 31;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 5;
  if (v9 >= v12)
  {
    v28 = 32 * v12;
    if (__dst != a2 || &a2[v28] <= __dst)
    {
      v29 = __dst;
      memmove(__dst, a2, 32 * v12);
      __dst = v29;
    }

    v51 = __dst;
    v15 = &__dst[v28];
    if (v10 >= 32 && v5 > __src)
    {
LABEL_31:
      v30 = 0;
      v31 = v15;
      v55 = v4;
      __dstb = v5;
      v48 = v5 - 32;
      v50 = v15;
      while (1)
      {
        v32 = &v31[v30];
        v33 = &v31[v30 - 32];
        v34 = *v33;
        v53 = *&v31[v30 - 24];
        v35 = *&v31[v30 - 16];
        v36 = *&v31[v30 - 8];
        v37 = *(__dstb - 4);
        v38 = *(__dstb - 6);
        v39 = *(__dstb - 2);

        v40 = static MailboxName.stableOrderCompare(_:_:)(v35, v36, v39);
        type metadata accessor for ComparisonResult(0);
        if (v40 == -1)
        {
          v41 = 1;
        }

        else if (v40 == 1)
        {
          v41 = 0;
        }

        else
        {
          if (v40)
          {
LABEL_54:
            result = sub_1004A6DD4();
            __break(1u);
            return result;
          }

          v41 = static MailboxName.stableOrder(_:_:)(v34, v53, v37, v38);
        }

        v42 = &v55[v30];
        if (v41)
        {
          v4 = v42 - 32;
          v44 = v48;
          if (v42 != __dstb)
          {
            v45 = *(v48 + 1);
            *v4 = *v48;
            *(v42 - 1) = v45;
          }

          v14 = v51;
          v15 = &v50[v30];
          if (&v50[v30] <= v51 || (v5 = v48, v48 <= __src))
          {
            v15 = &v50[v30];
            goto LABEL_50;
          }

          goto LABEL_31;
        }

        if (v42 != v32)
        {
          v43 = *(v33 + 16);
          *(v42 - 2) = *v33;
          *(v42 - 1) = v43;
        }

        v30 -= 32;
        v31 = v50;
        v14 = v51;
        v15 = &v50[v30];
        if (&v50[v30] <= v51)
        {
          v44 = __dstb;
          goto LABEL_50;
        }
      }
    }

    v44 = v5;
    v14 = __dst;
  }

  else
  {
    v13 = 32 * v9;
    v14 = __dst;
    if (__dst != __src || &__src[v13] <= __dst)
    {
      memmove(__dst, __src, v13);
    }

    v15 = &v14[v13];
    if (v7 >= 32 && v5 < v4)
    {
      v54 = v4;
      while (1)
      {
        v16 = *v5;
        v52 = *(v5 + 2);
        v17 = *(v5 + 2);
        __dsta = v5;
        v18 = *(v5 + 6);
        v19 = *v14;
        v20 = *(v14 + 2);
        v21 = *(v14 + 2);

        v22 = static MailboxName.stableOrderCompare(_:_:)(v17, v18, v21);
        type metadata accessor for ComparisonResult(0);
        if (v22 == 1)
        {
          break;
        }

        if (v22)
        {
          if (v22 != -1)
          {
            goto LABEL_54;
          }
        }

        else
        {
          v23 = static MailboxName.stableOrder(_:_:)(v16, v52, v19, v20);

          if (!v23)
          {
            goto LABEL_17;
          }
        }

        v26 = v54;
        v24 = __dsta;
        v5 = __dsta + 32;
        if (v6 != __dsta)
        {
          goto LABEL_18;
        }

LABEL_19:
        v6 += 32;
        if (v14 >= v15 || v5 >= v26)
        {
          goto LABEL_47;
        }
      }

LABEL_17:
      v24 = v14;
      v25 = v6 == v14;
      v14 += 32;
      v26 = v54;
      v5 = __dsta;
      if (v25)
      {
        goto LABEL_19;
      }

LABEL_18:
      v27 = *(v24 + 1);
      *v6 = *v24;
      *(v6 + 1) = v27;
      goto LABEL_19;
    }

LABEL_47:
    v44 = v6;
  }

LABEL_50:
  v46 = (v15 - v14 + (v15 - v14 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0;
  if (v44 != v14 || v44 >= &v14[v46])
  {
    memmove(v44, v14, v46);
  }

  return 1;
}

uint64_t sub_1002D87DC(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    v6 = *(a4 + 16);
    if (!v6)
    {
LABEL_5:
      *(v5 + 8) = a3;
      return result;
    }

    if (v6 <= a3)
    {
      result = swift_arrayInitWithCopy();
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002D884C(char a1, Swift::Int a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v10 = *v6;
  v11 = (*v6 + 16);
  v12 = *v11;
  if (*v11 >= a2)
  {
    sub_10000C9C0(a5, a6);
    v15 = swift_allocObject();
    v18 = *(v10 + 24);
    *(v15 + 16) = v12;
    *(v15 + 24) = v18;
    if (v18 >= 1)
    {
      sub_1002D8F28(v15 + 16, v15 + 40, v11, v10 + 40, a4);
    }
  }

  else
  {
    sub_1004A47C4(a2, a3 & 1);
    if (a1)
    {
      v14 = *(v10 + 24);
      sub_10000C9C0(a5, a6);
      v15 = swift_allocObject();
      v16 = j__malloc_size(v15);
      v17 = v16 - 40;
      if (v16 < 40)
      {
        v17 = v16 - 9;
      }

      *(v15 + 16) = v17 >> 5;
      *(v15 + 24) = v14;
      *(v15 + 32) = 0;
      if (v14 >= 1)
      {
        sub_1002D8D1C(v15 + 16, (v15 + 40), v11, (v10 + 40));
        *(v10 + 24) = 0;
      }
    }

    else
    {
      sub_10000C9C0(a5, a6);
      v15 = swift_allocObject();
      v19 = j__malloc_size(v15);
      v20 = v19 - 40;
      if (v19 < 40)
      {
        v20 = v19 - 9;
      }

      v21 = *(v10 + 24);
      *(v15 + 16) = v20 >> 5;
      *(v15 + 24) = v21;
      *(v15 + 32) = 0;
      if (v21 >= 1)
      {
        sub_1002D8E44(v15 + 16, v15 + 40, v11, v10 + 40, a4);
      }
    }
  }

  *v6 = v15;
  return result;
}

uint64_t *sub_1002D89F8(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4 < 1)
  {
    return result;
  }

  v8 = result;
  result = result[1];
  v9 = result + a4;
  if (__OFADD__(result, a4))
  {
    __break(1u);
    goto LABEL_14;
  }

  v8[1] = v9;
  if (v9 < result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  sub_1002D9004(result, v9, v8, a2, &v14);
  v11 = v15;
  v12 = v16;
  if (v16)
  {
    v13 = v17;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v11 = 0;
  }

  if (v17)
  {
    v12 = 0;
  }

  v18 = v14;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  return sub_1002D8C10(a3, a4, a5);
}

void *sub_1002D8ABC@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result[1];
  v3 = result[2];
  v5 = v3 + v4;
  if (__OFADD__(v3, v4))
  {
    __break(1u);
    goto LABEL_24;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = *result;
    v7 = __OFSUB__(v5, *result);
    if (v5 < *result)
    {
      goto LABEL_9;
    }

    v5 -= *result;
    if (!v7)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v6 = *result;
  if (v5 < 0)
  {
    v7 = __OFADD__(v5, v6);
    v5 += v6;
    if (v7)
    {
      goto LABEL_26;
    }
  }

LABEL_9:
  if (v4 >= v6)
  {
    goto LABEL_14;
  }

  if (v5 < v3)
  {
    v8 = v3 - v5;
    if (!__OFSUB__(v3, v5))
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_14:
    v8 = 0;
LABEL_15:
    v9 = 0;
    v3 = 0;
    v10 = 1;
LABEL_22:
    *a3 = a2 + 32 * v5;
    *(a3 + 8) = v8;
    *(a3 + 16) = v9;
    *(a3 + 24) = v3;
    *(a3 + 32) = v10;
    return result;
  }

  v8 = v6 - v5;
  if (!__OFSUB__(v6, v5))
  {
    if ((v3 & 0x8000000000000000) == 0 && v6 >= v5)
    {
      v10 = v3 == 0;
      if (v3)
      {
        v9 = a2;
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_22;
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1002D8B68@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v2 + 24);
  }

  if (__OFADD__(v3, v6))
  {
    __break(1u);
    goto LABEL_25;
  }

  v7 = *(v2 + 16);
  if (v3 + v6 <= result)
  {
LABEL_23:
    *a2 = *v2;
    *(a2 + 8) = v3;
    *(a2 + 16) = v7;
    *(a2 + 24) = v4;
    *(a2 + 32) = v5 & 1;
    return result;
  }

  if (v3 >= result)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      v7 = 0;
      v4 = 0;
      v5 = 1;
      v3 = result;
      goto LABEL_23;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if ((*(v2 + 32) & 1) == 0)
  {
    v8 = result - v3;
    if (!__OFSUB__(result, v3))
    {
      if ((v8 & 0x8000000000000000) == 0)
      {
        if (v4 >= v8)
        {
          v9 = result - v3;
        }

        else
        {
          v9 = *(v2 + 24);
        }

        if (v4 >= 0)
        {
          v4 = v9;
        }

        else
        {
          v4 = result - v3;
        }

        if (!v8)
        {
          v4 = 0;
        }

        v5 = v4 == 0;
        if (!v4)
        {
          v7 = 0;
        }

        goto LABEL_23;
      }

      goto LABEL_27;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002D8C10(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  if (*(v3 + 32))
  {
    if (!result || !a2)
    {
      return result;
    }

    if (*(v3 + 8) >= a2)
    {
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  v6 = *(v3 + 8);
  if (v6 < 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = *(v3 + 24);
  if (result && v6)
  {
    result = swift_arrayInitWithCopy();
  }

  if (__OFADD__(v6, a2 - v6))
  {
    goto LABEL_20;
  }

  if (a2 < v6)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v5 || a2 == v6)
  {
    return result;
  }

  if (v7 < a2 - v6)
  {
LABEL_23:
    __break(1u);
    return result;
  }

LABEL_16:

  return swift_arrayInitWithCopy();
}

void sub_1002D8D1C(int a1, char *__dst, void *a3, char *a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_35;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = *a3 - v4;
      v9 = a4;
      goto LABEL_6;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v9 = 0;
  v7 = 0;
  v8 = a3[1];
LABEL_6:
  if (v7)
  {
    v10 = v5 < v6;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v8 < 1)
  {
    v8 = 0;
    goto LABEL_20;
  }

  if (!a4)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v12 = &a4[32 * v4];
  if (v12 != __dst || &v12[32 * v8] <= __dst)
  {
    v14 = __dst;
    memmove(__dst, v12, 32 * v8);
    __dst = v14;
  }

LABEL_20:
  if (v5 >= v6 || v7 < 1)
  {
    return;
  }

  if (!v11)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v16 = &__dst[32 * v8];
  if (v16 != v11 || v16 >= &v11[32 * v7])
  {

    memmove(v16, v11, 32 * v7);
  }
}

uint64_t sub_1002D8E44(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = a3[2];
  v6 = *a3 - v5;
  if (__OFSUB__(*a3, v5))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3[1];
  if (v6 < v7)
  {
    v8 = v7 - v6;
    if (!__OFSUB__(v7, v6))
    {
      v9 = a4;
      if (v6 < 1)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = 0;
  v8 = 0;
  if (v7 >= 1)
  {
LABEL_7:
    if (a4)
    {
      result = swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_9:
  if (v6 < v7 && v8 >= 1)
  {
    if (v9)
    {
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1002D8F28(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = a3[2];
  v6 = *a3 - v5;
  if (__OFSUB__(*a3, v5))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3[1];
  if (v6 >= v7)
  {
    v9 = 0;
    v8 = 0;
    if (v7 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (a4)
    {
      result = swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = a4;
  if (v6 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v6 < v7 && v8 >= 1)
  {
    if (v9)
    {
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1002D9004@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a3[2];
  v6 = v5 + result;
  v7 = *a3;
  if (v5 + result >= *a3)
  {
    v8 = *a3;
  }

  else
  {
    v8 = 0;
  }

  v9 = v5 + a2;
  if (v5 + a2 >= v7)
  {
    v10 = *a3;
  }

  else
  {
    v10 = 0;
  }

  v11 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else
  {
    v12 = v6 - v8;
    v13 = v9 - v10;
    if (v11)
    {
      v14 = v12 < v13;
    }

    else
    {
      v14 = 1;
    }

    v15 = v14;
    if (v15 == 1)
    {
      v16 = 0;
      v13 = 0;
LABEL_18:
      *a5 = a4 + 32 * v12;
      *(a5 + 8) = v11;
      *(a5 + 16) = v16;
      *(a5 + 24) = v13;
      *(a5 + 32) = v15;
      return result;
    }

    v11 = v7 - v12;
    if (!__OFSUB__(v7, v12))
    {
      v16 = a4;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

void sub_1002D907C(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  v6 = a1[1];
  v7 = a1[2];
  v9 = __OFADD__(v7, v6);
  v8 = v7 + v6;
  if (!v9)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      v9 = __OFSUB__(v8, *a1);
      if (v8 < *a1 || (v8 -= *a1, !v9))
      {
LABEL_9:
        v10 = a2 + 32 * v8;
        *v10 = a3;
        *(v10 + 8) = a4;
        *(v10 + 16) = a5;
        *(v10 + 24) = a6;
        v9 = __OFADD__(v6, 1);
        v11 = v6 + 1;
        if (!v9)
        {
          a1[1] = v11;

          return;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v8 < 0)
    {
      v9 = __OFADD__(v8, *a1);
      v8 += *a1;
      if (v9)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
}

unint64_t sub_1002D9110(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = result;
    v3 = PCG32Random.next()() * result;
    if (v3 < v1)
    {
        ;
      }
    }

    return HIDWORD(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002D9184(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 && a4)
  {
    if (a2 >= a4)
    {
      v4 = a4;
    }

    else
    {
      v4 = a2;
    }

    v5 = result;
    swift_arrayInitWithCopy();
    return v5 + 32 * v4;
  }

  return result;
}

void *sub_1002D9204(void *result, void *a2, uint64_t a3, uint64_t a4)
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
  if (!a2)
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
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

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
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1002D9358(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
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
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v24 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 48) + ((v12 << 11) | (32 * v17));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      LODWORD(v18) = *(v18 + 24);
      *v11 = v19;
      *(v11 + 8) = v20;
      *(v11 + 16) = v21;
      *(v11 + 24) = v18;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 32;

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
        goto LABEL_28;
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
    if (v13 <= v12 + 1)
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = v13;
    }

    v12 = v23 - 1;
    v10 = result;
LABEL_23:
    v7 = v24;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1002D94E8(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, uint64_t, void))
{
  v4 = result[2];
  v5 = result[1] + v4;
  if (*result < v5)
  {
    return 0;
  }

  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (__OFSUB__(v5, v4))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  result = a3(&v6, a2 + 32 * v4, result[1]);
  if (!v3)
  {
    return v6;
  }

  return result;
}

void *sub_1002D9570(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, uint64_t, void))
{
  v4 = result[2];
  v5 = result[1] + v4;
  if (*result < v5)
  {
    return 0;
  }

  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (__OFSUB__(v5, v4))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  result = a3(&v6, a2 + 32 * v4, result[1]);
  if (!v3)
  {
    return v6;
  }

  return result;
}

void *sub_1002D9604(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = result[2];
  v6 = *result - v5;
  if (__OFSUB__(*result, v5))
  {
    __break(1u);
    goto LABEL_28;
  }

  v9 = result[1];
  if (v6 < v9)
  {
    v11 = v9 - v6;
    if (__OFSUB__(v9, v6))
    {
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v12 = *result - v5;
    v10 = a2;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = result[1];
  }

  v16 = v6 >= v9;
  if (v12 >= a4)
  {
    v13 = a4;
  }

  else
  {
    v13 = v12;
  }

  if (v13 < 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (a2 && v13)
  {
    result = swift_arrayInitWithCopy();
  }

  if (v12 >= a4 || v16)
  {
    sub_1002D9B48((a5 + 16), v13, a5);
  }

  if (a4 - v13 >= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = a4 - v13;
  }

  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    goto LABEL_30;
  }

  if (v15 < v13)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if ((v14 & 0x8000000000000000) == 0)
  {
    if (v10)
    {
      if (v14)
      {
        swift_arrayInitWithCopy();
      }
    }

    sub_1002D9B48((a5 + 16), v15, a5);
  }

LABEL_32:
  __break(1u);
  __break(1u);
  return result;
}

void *sub_1002D9790(void *result, uint64_t a2, void *a3, void *a4)
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
    result = swift_arrayInitWithCopy();
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
    result = (*a3 + 32 * v11);
  }

  else
  {
    result = 0;
  }

  if (v9)
  {
    if (v10)
    {
      result = swift_arrayInitWithCopy();
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

uint64_t sub_1002D98D4()
{
  v1 = *v0;
  v3 = *(*v0 + 24);
  v2 = *(*v0 + 32);
  v6 = __OFADD__(v2, v3);
  v4 = v2 + v3;
  if (v6)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v3 < 0)
  {
LABEL_7:
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

    v7 = *(v1 + 16);
    v6 = __OFADD__(v4, v7);
    v4 += v7;
    if (!v6)
    {
      goto LABEL_9;
    }

LABEL_14:
    __break(1u);
    return result;
  }

  v5 = *(v1 + 16);
  v6 = __OFSUB__(v4, v5);
  v1 = v4 - v5;
  if (v1 < 0 == v6)
  {
    v4 = v1;
    if (v6)
    {
      __break(1u);
      goto LABEL_7;
    }
  }

LABEL_9:
  if (!v4 || v4 == v0[1])
  {
    return 0;
  }

  v0[1] = 0;
  v0[2] = v4;
  return 1;
}

void *sub_1002D993C@<X0>(void *result@<X0>, void *a2@<X2>, void *(*a3)(__int128 *__return_ptr, void *, uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = __OFSUB__(v7, *a2);
  v9 = v7 - *a2;
  if (v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = __OFADD__(v6, v9);
  v10 = v6 + v9;
  if (v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v10 - v6;
  if (v10 < v6)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = &result[4 * v6];
  if (result)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  result = a3(&v15, v13, v11);
  if (!v4)
  {
    v14 = v16;
    *a4 = v15;
    *(a4 + 16) = v14;
  }

  return result;
}

void *sub_1002D99BC@<X0>(void *result@<X0>, void *a2@<X2>, void *(*a3)(uint64_t *__return_ptr, void *, uint64_t)@<X3>, void *a4@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = __OFSUB__(v7, *a2);
  v9 = v7 - *a2;
  if (v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = __OFADD__(v6, v9);
  v10 = v6 + v9;
  if (v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v10 - v6;
  if (v10 < v6)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = &result[4 * v6];
  if (result)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  result = a3(&v14, v13, v11);
  if (!v4)
  {
    *a4 = v14;
  }

  return result;
}

uint64_t sub_1002D9A34()
{
  v1 = *v0;
  v2 = (*v0 + 16);
  v3 = *v2;
  sub_10000C9C0(&qword_1005D7968, &qword_1004F1B70);
  v4 = swift_allocObject();
  v5 = *(v1 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  if (v5 >= 1)
  {
    sub_1002D8F28(v4 + 16, v4 + 40, v2, v1 + 40, &type metadata for MailboxToRename);
  }

  *v0 = v4;
  return result;
}

uint64_t *sub_1002D9B48(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = result[1];
  v3 = result[2];
  v5 = *result;
  if (v4 == a2)
  {
    return a3;
  }

  v6 = v3 + v4;
  if (__OFADD__(v3, v4))
  {
    __break(1u);
  }

  else
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      v7 = __OFSUB__(v6, v5);
      if (v6 < v5)
      {
        return a3;
      }

      v6 -= v5;
      if (!v7)
      {
        return a3;
      }

      __break(1u);
    }

    if ((v6 & 0x8000000000000000) == 0 || !__OFADD__(v6, v5))
    {
      return a3;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1002D9BDC()
{
  result = qword_1005D7970;
  if (!qword_1005D7970)
  {
    v3 = sub_10000DEFC(&qword_1005D7978, &unk_1004F1BE0);
    result = swift_getWitnessTable(&protocol conformance descriptor for Deque<A>, v3, v0, v1);
    atomic_store(result, &qword_1005D7970);
  }

  return result;
}

uint64_t sub_1002D9CB0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v5 = a2;
  if (!a2)
  {
LABEL_6:
    *a3 = v5;
    return result;
  }

  if (*(v3 + 24) >= a2)
  {
    result = swift_arrayInitWithCopy();
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002D9D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1002D9184(a1, a2, *(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
    a3[1] = v7;
    a3[2] = v8;
  }

  return result;
}

void sub_1002D9DB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConnectionStatus.Error.Details(0);
  v114 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C9C0(&qword_1005D55B8, &unk_1004F2790);
  __chkstk_darwin(v7 - 8);
  v9 = &v95 - v8;
  v10 = sub_10000C9C0(&qword_1005D79B8, &unk_1004F2660);
  __chkstk_darwin(v10);
  v102 = &v95 - v11;
  v103 = type metadata accessor for ConnectionStatus.Error(0);
  __chkstk_darwin(v103);
  v104 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_10000C9C0(&qword_1005D6E80, &qword_1004EE5A0);
  __chkstk_darwin(v111);
  v14 = &v95 - v13;
  v117 = type metadata accessor for Activity.MailboxStatus(0);
  v115 = *(v117 - 8);
  __chkstk_darwin(v117);
  v16 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v105 = &v95 - v18;
  __chkstk_darwin(v19);
  v116 = &v95 - v20;
  __chkstk_darwin(v21);
  v23 = &v95 - v22;
  __chkstk_darwin(v24);
  v109 = &v95 - v25;
  v26 = sub_10000C9C0(&qword_1005D79C0, &qword_1004F2670);
  __chkstk_darwin(v26 - 8);
  v28 = &v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v112 = (&v95 - v30);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v108 = a2;
    v99 = v10;
    v96 = v6;
    v100 = v4;
    v101 = v16;
    v97 = v9;
    v31 = 0;
    v106 = a1;
    v107 = v14;
    v32 = a1 + 64;
    v33 = 1 << *(a1 + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & *(a1 + 64);
    v36 = (v33 + 63) >> 6;
    v98 = (v114 + 48);
    v110 = v23;
    v114 = v28;
    while (v35)
    {
      v113 = (v35 - 1) & v35;
      v37 = __clz(__rbit64(v35)) | (v31 << 6);
LABEL_18:
      v42 = (*(v106 + 48) + 16 * v37);
      v44 = *v42;
      v43 = v42[1];
      v45 = v109;
      sub_1002DD760(*(v106 + 56) + *(v115 + 72) * v37, v109);
      v46 = sub_10000C9C0(&qword_1005D79C8, &unk_1004F2678);
      v47 = *(v46 + 48);
      v48 = v114;
      *v114 = v44;
      *(v48 + 1) = v43;
      v49 = v45;
      v28 = v48;
      sub_1002DD824(v49, &v48[v47], type metadata accessor for Activity.MailboxStatus);
      (*(*(v46 - 8) + 56))(v28, 0, 1, v46);

LABEL_19:
      v50 = v112;
      sub_100025FDC(v28, v112, &qword_1005D79C0, &qword_1004F2670);
      v51 = sub_10000C9C0(&qword_1005D79C8, &unk_1004F2678);
      if ((*(*(v51 - 8) + 48))(v50, 1, v51) == 1)
      {
        return;
      }

      v52 = *(v51 + 48);
      v54 = *v50;
      v53 = v50[1];
      sub_1002DD824(v50 + v52, v23, type metadata accessor for Activity.MailboxStatus);
      v55 = v108;
      v56 = sub_100063C84(v54, v53);
      v57 = v23;
      v59 = v58;

      if ((v59 & 1) == 0)
      {
        v90 = v57;
        goto LABEL_66;
      }

      v60 = *(v55 + 56) + *(v115 + 72) * v56;
      v61 = v116;
      sub_1002DD760(v60, v116);
      v62 = &v14[*(v111 + 48)];
      sub_1002DD760(v61, v14);
      sub_1002DD760(v57, v62);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        v28 = v114;
        if (EnumCaseMultiPayload == 2)
        {
          sub_1002DD7C4(v116, type metadata accessor for Activity.MailboxStatus);
          sub_1002DD7C4(v57, type metadata accessor for Activity.MailboxStatus);
          if (swift_getEnumCaseMultiPayload() != 2)
          {
            goto LABEL_57;
          }
        }

        else
        {
          sub_1002DD7C4(v116, type metadata accessor for Activity.MailboxStatus);
          sub_1002DD7C4(v57, type metadata accessor for Activity.MailboxStatus);
          if (swift_getEnumCaseMultiPayload() != 3)
          {
            goto LABEL_57;
          }
        }
      }

      else
      {
        v28 = v114;
        if (EnumCaseMultiPayload)
        {
          v71 = v101;
          sub_1002DD760(v14, v101);
          v72 = swift_getEnumCaseMultiPayload();
          v73 = v100;
          if (v72 != 1)
          {
            sub_1002DD7C4(v116, type metadata accessor for Activity.MailboxStatus);
            sub_1002DD7C4(v110, type metadata accessor for Activity.MailboxStatus);
            sub_1002DD7C4(v71, type metadata accessor for ConnectionStatus.Error);
LABEL_57:
            sub_100025F40(v107, &qword_1005D6E80, &qword_1004EE5A0);
            return;
          }

          v74 = v104;
          sub_1002DD824(v62, v104, type metadata accessor for ConnectionStatus.Error);
          if (*v71 != *v74)
          {
            sub_1002DD7C4(v74, type metadata accessor for ConnectionStatus.Error);
            sub_1002DD7C4(v116, type metadata accessor for Activity.MailboxStatus);
            v91 = v110;
            v92 = type metadata accessor for Activity.MailboxStatus;
            goto LABEL_63;
          }

          v75 = v102;
          v76 = *(v103 + 20);
          v77 = *(v99 + 48);
          sub_10000E268(&v71[v76], v102, &qword_1005D55B8, &unk_1004F2790);
          sub_10000E268(&v74[v76], v75 + v77, &qword_1005D55B8, &unk_1004F2790);
          v78 = *v98;
          if ((*v98)(v75, 1, v73) == 1)
          {
            sub_1002DD7C4(v116, type metadata accessor for Activity.MailboxStatus);
            sub_1002DD7C4(v110, type metadata accessor for Activity.MailboxStatus);
            if (v78(v75 + v77, 1, v100) != 1)
            {
              v93 = type metadata accessor for ConnectionStatus.Error;
              v94 = v104;
LABEL_61:
              sub_1002DD7C4(v94, v93);
              v71 = v101;
              sub_100025F40(v75, &qword_1005D79B8, &unk_1004F2660);
LABEL_64:
              sub_1002DD7C4(v71, type metadata accessor for ConnectionStatus.Error);
LABEL_65:
              v90 = v107;
LABEL_66:
              sub_1002DD7C4(v90, type metadata accessor for Activity.MailboxStatus);
              return;
            }

            sub_100025F40(v75, &qword_1005D55B8, &unk_1004F2790);
            v71 = v101;
          }

          else
          {
            v80 = v97;
            sub_10000E268(v75, v97, &qword_1005D55B8, &unk_1004F2790);
            if (v78(v75 + v77, 1, v73) == 1)
            {
              sub_1002DD7C4(v104, type metadata accessor for ConnectionStatus.Error);
              sub_1002DD7C4(v116, type metadata accessor for Activity.MailboxStatus);
              sub_1002DD7C4(v110, type metadata accessor for Activity.MailboxStatus);
              v93 = type metadata accessor for ConnectionStatus.Error.Details;
              v94 = v80;
              goto LABEL_61;
            }

            v81 = v96;
            sub_1002DD824(v75 + v77, v96, type metadata accessor for ConnectionStatus.Error.Details);
            v82 = _s16IMAP2Persistence16ConnectionStatusO5ErrorV7DetailsO21__derived_enum_equalsySbAG_AGtFZ_0(v80, v81);
            sub_1002DD7C4(v81, type metadata accessor for ConnectionStatus.Error.Details);
            sub_1002DD7C4(v116, type metadata accessor for Activity.MailboxStatus);
            sub_1002DD7C4(v110, type metadata accessor for Activity.MailboxStatus);
            sub_1002DD7C4(v80, type metadata accessor for ConnectionStatus.Error.Details);
            sub_100025F40(v75, &qword_1005D55B8, &unk_1004F2790);
            v71 = v101;
            if ((v82 & 1) == 0)
            {
              v92 = type metadata accessor for ConnectionStatus.Error;
              v91 = v104;
LABEL_63:
              sub_1002DD7C4(v91, v92);
              goto LABEL_64;
            }
          }

          v83 = *(v103 + 24);
          v84 = *&v71[v83];
          v85 = v71[v83 + 8];
          v86 = &v104[v83];
          v87 = *v86;
          v88 = v86[8];
          sub_1002DD7C4(v104, type metadata accessor for ConnectionStatus.Error);
          if (v85)
          {
            v28 = v114;
            if ((v88 & 1) == 0)
            {
              goto LABEL_64;
            }
          }

          else
          {
            if (v84 == v87)
            {
              v89 = v88;
            }

            else
            {
              v89 = 1;
            }

            v28 = v114;
            if (v89)
            {
              goto LABEL_64;
            }
          }

          sub_1002DD7C4(v71, type metadata accessor for ConnectionStatus.Error);
        }

        else
        {
          sub_1002DD7C4(v116, type metadata accessor for Activity.MailboxStatus);
          sub_1002DD7C4(v57, type metadata accessor for Activity.MailboxStatus);
          v64 = v105;
          sub_1002DD760(v14, v105);
          v65 = *(v64 + 1);
          v66 = *(v64 + 2);
          v67 = v64[24];
          v68 = v64[25];
          if (swift_getEnumCaseMultiPayload())
          {
            goto LABEL_57;
          }

          if (*v105 != *v62)
          {
            goto LABEL_65;
          }

          v69 = v62[24];
          v70 = v62[25];
          if (v67)
          {
            if (!v62[24] || v68 != v70)
            {
              goto LABEL_65;
            }
          }

          else
          {
            if (v65 != *(v62 + 1))
            {
              v69 = 1;
            }

            if (v69 & 1) != 0 || v66 != *(v62 + 2) || ((v68 ^ v70))
            {
              goto LABEL_65;
            }
          }
        }
      }

      v14 = v107;
      sub_1002DD7C4(v107, type metadata accessor for Activity.MailboxStatus);
      v23 = v110;
      v35 = v113;
    }

    if (v36 <= v31 + 1)
    {
      v38 = v31 + 1;
    }

    else
    {
      v38 = v36;
    }

    v39 = v38 - 1;
    while (1)
    {
      v40 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v40 >= v36)
      {
        v79 = sub_10000C9C0(&qword_1005D79C8, &unk_1004F2678);
        (*(*(v79 - 8) + 56))(v28, 1, 1, v79);
        v113 = 0;
        v31 = v39;
        goto LABEL_19;
      }

      v41 = *(v32 + 8 * v40);
      ++v31;
      if (v41)
      {
        v113 = (v41 - 1) & v41;
        v37 = __clz(__rbit64(v41)) | (v40 << 6);
        v31 = v40;
        goto LABEL_18;
      }
    }

    __break(1u);
  }
}

void sub_1002DAA1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v64 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v60 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v55 - v7;
  __chkstk_darwin(v9);
  v59 = &v55 - v10;
  v11 = sub_10000C9C0(&qword_1005D79A8, &qword_1004F2648);
  __chkstk_darwin(v11 - 8);
  v62 = (&v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v61 = (&v55 - v14);
  if (a1 == a2)
  {
    v63 = 1;
  }

  else if (*(a1 + 16) == *(a2 + 16))
  {
    v15 = 0;
    v57 = a2;
    v58 = a1;
    v18 = *(a1 + 64);
    v17 = a1 + 64;
    v16 = v18;
    v19 = 1 << *(v17 - 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & v16;
    v55 = (v19 + 63) >> 6;
    v56 = v17;
    while (v21)
    {
      v22 = __clz(__rbit64(v21));
      v23 = (v21 - 1) & v21;
      v24 = v22 | (v15 << 6);
LABEL_16:
      v29 = v59;
      v30 = *(v58 + 48) + 16 * v24;
      v31 = *v30;
      v32 = *(v30 + 8);
      sub_10000E268(*(v58 + 56) + *(v64 + 72) * v24, v59, &qword_1005CD1D0, &unk_1004CF2C0);
      v33 = sub_10000C9C0(&qword_1005D79B0, &unk_1004F2650);
      v34 = *(v33 + 48);
      v35 = v62;
      *v62 = v31;
      *(v35 + 2) = v32;
      v36 = v35;
      sub_100025FDC(v29, v35 + v34, &qword_1005CD1D0, &unk_1004CF2C0);
      (*(*(v33 - 8) + 56))(v36, 0, 1, v33);

      a2 = v57;
LABEL_17:
      v37 = v36;
      v38 = v61;
      sub_100025FDC(v37, v61, &qword_1005D79A8, &qword_1004F2648);
      v39 = sub_10000C9C0(&qword_1005D79B0, &unk_1004F2650);
      v40 = (*(*(v39 - 8) + 48))(v38, 1, v39);
      v63 = v40 == 1;
      if (v40 == 1)
      {
        return;
      }

      v41 = v23;
      v42 = v64;
      v43 = *(v39 + 48);
      v44 = v38;
      v45 = *v38;
      v46 = *(v44 + 2);
      sub_100025FDC(v44 + v43, v8, &qword_1005CD1D0, &unk_1004CF2C0);
      v47 = sub_100063B5C(v45, v46);
      v49 = v48;

      if ((v49 & 1) == 0)
      {
        sub_100025F40(v8, &qword_1005CD1D0, &unk_1004CF2C0);
        goto LABEL_24;
      }

      v50 = *(a2 + 56) + *(v42 + 72) * v47;
      v51 = v60;
      sub_10000E268(v50, v60, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_100016D2C();
      v52 = sub_1004A7034();
      sub_100025F40(v51, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_100025F40(v8, &qword_1005CD1D0, &unk_1004CF2C0);
      v21 = v41;
      if ((v52 & 1) == 0)
      {
        return;
      }
    }

    if (v55 <= v15 + 1)
    {
      v25 = v15 + 1;
    }

    else
    {
      v25 = v55;
    }

    v26 = v25 - 1;
    while (1)
    {
      v27 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v27 >= v55)
      {
        v53 = sub_10000C9C0(&qword_1005D79B0, &unk_1004F2650);
        v54 = v62;
        (*(*(v53 - 8) + 56))(v62, 1, 1, v53);
        v23 = 0;
        v15 = v26;
        v36 = v54;
        goto LABEL_17;
      }

      v28 = *(v56 + 8 * v27);
      ++v15;
      if (v28)
      {
        v23 = (v28 - 1) & v28;
        v24 = __clz(__rbit64(v28)) | (v27 << 6);
        v15 = v27;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_24:
    v63 = 0;
  }
}

void sub_1002DAEFC(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v31 = (v7 - 1) & v7;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = *(a1 + 48) + 16 * v12;
      v14 = *(a1 + 56) + 24 * v12;
      v15 = *v14;
      v30 = *(v14 + 8);
      v16 = *(v14 + 16);
      v17 = sub_100063B5C(*v13, *(v13 + 8));
      v19 = v18;

      if ((v19 & 1) == 0 || (v20 = *(a2 + 56) + 24 * v17, v21 = *v20, v22 = *(*v20 + 16), v22 != *(v15 + 16)))
      {
LABEL_34:

        return;
      }

      v23 = *(v20 + 8);
      v24 = *(v20 + 16);
      if (v22)
      {
        v25 = v21 == v15;
      }

      else
      {
        v25 = 1;
      }

      if (!v25)
      {
        v26 = (v21 + 36);
        v27 = (v15 + 36);
        while (v22)
        {
          if (*(v27 - 1) != *(v26 - 1))
          {
            goto LABEL_34;
          }

          v28 = *v26;
          v26 += 2;
          if (*v27 != v28)
          {
            goto LABEL_34;
          }

          v27 += 2;
          if (!--v22)
          {
            goto LABEL_20;
          }
        }

        goto LABEL_37;
      }

LABEL_20:

      if (v24)
      {
        v7 = v31;
        if ((v16 & 1) == 0)
        {
          return;
        }
      }

      else
      {
        v7 = v31;
        if (v23 == v30)
        {
          v29 = v16;
        }

        else
        {
          v29 = 1;
        }

        if (v29)
        {
          return;
        }
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
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v31 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
  }
}

unint64_t sub_1002DB0E8(unint64_t result, uint64_t a2)
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
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_17:
    v13 = v10 | (v4 << 6);
    v14 = *(v3 + 56) + 16 * v13;
    v15 = *v14;
    v16 = *(v14 + 8);
    result = sub_1002B375C(*(*(v3 + 48) + v13));
    if ((v17 & 1) == 0)
    {
      return 0;
    }

    v18 = *(a2 + 56) + 16 * result;
    if (*(v18 + 8) == 1)
    {
      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*v18 == v15)
      {
        v9 = v16;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 64 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1002DB214(unint64_t result, uint64_t a2)
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
    v13 = *(*(v3 + 56) + 8 * v12);
    result = sub_100063C84(*(*(v3 + 48) + 16 * v12), *(*(v3 + 48) + 16 * v12 + 8));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + 8 * result) != v13)
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