uint64_t sub_1002A350C(unsigned __int8 *a1, unsigned __int8 *a2, char a3, uint64_t a4, void *a5)
{
  if (a3 & 1) != 0 && *(a4 + 16) == 1 && *(a4 + 48) < 0 && (v10 = *(a4 + 32), v11 = *(a4 + 40), (sub_1002A1DA8(v10, v11)))
  {

    v12 = sub_1002A88A0(v10, v11);
    v14 = sub_1002A062C(v12, v13, a5);

    return v14;
  }

  else
  {
    v16[0] = 0;
    v16[1] = 0xE000000000000000;
    sub_1002A2B60(a1, a2, a3 & 1, a4, a1, a2, a3 & 1, a4, a5, v16);

    return v16[0];
  }
}

uint64_t sub_1002A3614(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = a2 - result;
  }

  else
  {
    v2 = 0;
  }

  if (v2 < 0)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    return result;
  }

  v3 = result;
  for (i = 1; ; ++i)
  {
    if (i - v2 == 1)
    {
      return v3;
    }

    v5 = i - 1;
    if (*(result + i - 1) == 42)
    {
      break;
    }

    v6 = i;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if (v2 < i)
    {
      goto LABEL_45;
    }

    if (v6 < v5)
    {
      __break(1u);
      return v3;
    }
  }

  if (v5 >= v2)
  {
    goto LABEL_52;
  }

  v7 = i;
  while (1)
  {
    if (v2 == v7)
    {
      goto LABEL_22;
    }

    if (*(result + v7) - 58 <= 0xFFFFFFF5)
    {
      break;
    }

    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_46;
    }

    if (v2 < v8)
    {
      goto LABEL_47;
    }

    if (v8 < v7++)
    {
      __break(1u);
LABEL_22:
      v10 = v2;
      goto LABEL_24;
    }
  }

  v10 = v7;
LABEL_24:
  if (v10 <= v5)
  {
    goto LABEL_53;
  }

  v11 = v10 - i;
  if (v10 == i || (result = sub_1002881FC(i, v10, result, a2), result > 8))
  {
    if (v2 != i)
    {
      return 0;
    }

    return v3;
  }

  v12 = 0;
  if (v3)
  {
    v13 = (v3 + i);
    while (is_mul_ok(v12, 0xAuLL))
    {
      v14 = *v13 - 48;
      if ((v14 & 0xFFFFFF00) != 0)
      {
        goto LABEL_49;
      }

      v15 = 10 * v12;
      v16 = __CFADD__(v15, v14);
      v12 = v15 + v14;
      if (v16)
      {
        goto LABEL_50;
      }

      ++v13;
      if (!--v11)
      {
        if (v12 <= 0xFF)
        {
          goto LABEL_37;
        }

        return 0;
      }
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

LABEL_37:
  if (v2 == v7)
  {
    return v3;
  }

  if (v10 >= v2)
  {
    goto LABEL_54;
  }

  result = 0;
  if (*(v3 + v10) == 42 && v10 + 1 == v2)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1002A3850(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = *(a1 + 16);
  v4 = _swiftEmptyArrayStorage;
  if (v3)
  {
    v5 = (a1 + 65);
    do
    {
      v8 = *(v5 - 1);
      v9 = *v5;
      v58 = *(v5 - 17);
      v59 = *(v5 - 33);
      v10 = sub_1002A3614(*(v5 - 33), *(v5 - 25));
      if (v12 != 2)
      {
        v13 = v10;
        v14 = v11;
        v15 = v12;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_100273998(0, *(v4 + 2) + 1, 1, v4);
        }

        v17 = *(v4 + 2);
        v16 = *(v4 + 3);
        if (v17 >= v16 >> 1)
        {
          v4 = sub_100273998((v16 > 1), v17 + 1, 1, v4);
        }

        LOBYTE(v62) = ((v15 & 0xFFFFFFu) >> 16) & 1;
        *(v4 + 2) = v17 + 1;
        v6 = &v4[64 * v17];
        *(v6 + 4) = v13;
        *(v6 + 5) = v14;
        v6[48] = v15 & 1;
        v6[49] = BYTE1(v15);
        v6[50] = v62;
        v7 = v65[0];
        v6[55] = BYTE4(v65[0]);
        *(v6 + 51) = v7;
        *(v6 + 72) = v58;
        *(v6 + 56) = v59;
        v6[88] = v8;
        v6[89] = v9;
      }

      v5 += 40;
      --v3;
    }

    while (v3);
  }

  v60 = *(v4 + 2);
  if (v60)
  {
    v18 = 0;
    for (i = 0; v60 != i; ++i)
    {
      v21 = &v4[v18];
      v23 = *&v4[v18 + 32];
      v22 = *&v4[v18 + 40];
      if (v4[v18 + 50] == 1)
      {
        v24 = v21[48];
        v25 = *(v21 + 9);
        v26 = *(v21 + 10);
        v27 = v21[88];
        v28 = v21[89];
        if ((v24 & 1) != 0 && (sub_1002A27E8(v25, v26, v65), (v66 & 1) == 0))
        {
          v49 = v65[0];
          v48 = v65[1];
          v51 = v65[4];
          v50 = v65[5];
          sub_10000C9C0(&qword_1005D6568, &qword_1004ECFC0);
          v52 = swift_allocObject();
          *(v52 + 16) = xmmword_1004CEAA0;
          *(v52 + 32) = v51;
          *(v52 + 40) = v50;
          *(v52 + 48) = 0;
          if (v23)
          {
            if (v22 - v23 == 8)
            {
              v53 = v52;
              if (sub_1002A1544(0x656D616E656C6966uLL, 0xE800000000000000, v23, v22, sub_100288638))
              {
                v62 = 0;
                v63 = 0xE000000000000000;

                sub_1002A2B60(v49, v48, 0, v53, v49, v48, 0, v53, a3, &v62);

                v20 = v63;
                *a2 = v62;
                a2[1] = v20;
              }
            }
          }
        }

        else
        {
          sub_10000C9C0(&qword_1005D6568, &qword_1004ECFC0);
          v29 = swift_allocObject();
          *(v29 + 16) = xmmword_1004CEAA0;
          if (v27)
          {
            v30 = -32512;
          }

          else
          {
            v30 = 0x8000;
          }

          v31 = v30 | v28;
          if (v24)
          {
            v31 = 0;
          }

          *(v29 + 32) = v25;
          *(v29 + 40) = v26;
          *(v29 + 48) = v31;
          if (v23)
          {
            if (v22 - v23 == 8)
            {
              v32 = v29;
              if (sub_1002A1544(0x656D616E656C6966uLL, 0xE800000000000000, v23, v22, sub_100288638))
              {
                v33 = v32;
                if (*(v32 + 16) == 1 && *(v32 + 48) < 0 && (v34 = *(v32 + 32), v35 = *(v32 + 40), v36 = sub_1002A1DA8(v34, v35), v33 = v32, (v36 & 1) != 0))
                {
                  v37 = sub_1002A88A0(v34, v35);
                  v39 = v38;

                  v40 = sub_1002A062C(v37, v39, a3);
                  v42 = v41;
                }

                else
                {
                  v62 = 0;
                  v63 = 0xE000000000000000;
                  v54 = v33;

                  sub_1002A2B60(0, 0, 1, v54, 0, 0, 1, v54, a3, &v62);

                  v40 = v62;
                  v42 = v63;
                }

                *a2 = v40;
                a2[1] = v42;
              }
            }
          }
        }
      }

      else
      {
        if (v21[49])
        {
          goto LABEL_14;
        }

        v62 = 0;
        v63 = 0;
        v64 = 1;
        v61 = _swiftEmptyArrayStorage;
        sub_1002A1E70(v23, v22, i, v4, &v62, &v61);
        v43 = v61;
        if (v23)
        {
          if (v22 - v23 == 8)
          {
            v45 = v62;
            v44 = v63;
            v46 = v64;
            if (sub_1002A1544(0x656D616E656C6966uLL, 0xE800000000000000, v23, v22, sub_100288638))
            {

              *a2 = sub_1002A350C(v45, v44, v46, v43, a3);
              a2[1] = v47;
            }
          }
        }
      }

LABEL_14:
      v18 += 64;
    }
  }
}

void sub_1002A3DA8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v10 = *a1;
  v11 = a1[1];
  if (*a1 != v11)
  {
    if (*a1 >= v11)
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (*(a1[2] + v10) == 59)
    {
      *a1 = v10 + 1;
      return;
    }
  }

  swift_beginAccess();
  if (v10 != v11 && *(*a2 + 16) != 0)
  {
    if (__OFADD__(a3, 1))
    {
      goto LABEL_21;
    }

    if (a3 + 1 < v10)
    {
      v13 = v10 - 2;
      if (v10 - 2 < a3 || v13 >= a4)
      {
        goto LABEL_22;
      }

      v14 = *(a5 + v13);
      v15 = v14 > 0x20;
      v16 = (1 << v14) & 0x100002600;
      v17 = v15 || v16 == 0;
      if (!v17 && v10 > a4)
      {
        goto LABEL_23;
      }
    }
  }
}

void sub_1002A3EE0(uint64_t a1, uint64_t a2, char a3)
{
  v3 = a2 - a1;
  if (a1)
  {
    v4 = a2 - a1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 < 0)
  {
    goto LABEL_113;
  }

  v48 = 0;
  v49 = v4;
  v50 = a1;
  v51 = a2;
  v6 = 0;
  if (v4)
  {
    v3 = 1;
    while (v4 != v6)
    {
      v7 = *(a1 + v6);
      v8 = v7 > 0x20;
      v9 = (1 << v7) & 0x100002600;
      if (v8 || v9 == 0)
      {
        goto LABEL_14;
      }

      v48 = ++v6;
      v49 = v4;
      v50 = a1;
      v51 = a2;
      if (v4 == v6)
      {
        return;
      }
    }

    __break(1u);
    goto LABEL_109;
  }

LABEL_14:
  if (v6 != v4)
  {
    if (v4 <= v6)
    {
      v3 = v6;
    }

    else
    {
      v3 = v4;
    }

    v12 = v6;
    while (v3 != v12)
    {
      v18 = *(a1 + v12);
      v8 = v18 > 0x3B;
      v19 = (1 << v18) & 0x800000100002600;
      if (!v8 && v19 != 0)
      {
        v11 = 0;
        if (v12 >= v6)
        {
          goto LABEL_16;
        }

        goto LABEL_57;
      }

      v48 = ++v12;
      v49 = v4;
      v50 = a1;
      v51 = a2;
      if (v4 == v12)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_112;
  }

LABEL_15:
  v11 = 1;
  v12 = v4;
  if (v4 < v6)
  {
LABEL_57:
    __break(1u);
LABEL_58:
    v13 = v3;
    if (v6 == v12)
    {
      return;
    }

    goto LABEL_59;
  }

LABEL_16:
  if (v4 < v12)
  {
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
    goto LABEL_120;
  }

  v3 = v12;
  if ((v11 & 1) == 0)
  {
    v3 = v12;
    while (v4 != v3)
    {
      v21 = *(a1 + v3);
      v8 = v21 > 0x20;
      v22 = (1 << v21) & 0x100002600;
      if (v8 || v22 == 0)
      {
        goto LABEL_18;
      }

      v48 = ++v3;
      v49 = v4;
      v50 = a1;
      v51 = a2;
      if (v4 == v3)
      {
        v13 = v4;
        goto LABEL_54;
      }
    }

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
    goto LABEL_114;
  }

LABEL_18:
  v13 = v4;
  if (v3 != v4)
  {
    if (v3 >= v4)
    {
LABEL_120:
      __break(1u);
      return;
    }

    if (*(a1 + v3) == 61)
    {
      v48 = ++v3;
      v49 = v4;
      v50 = a1;
      v51 = a2;
    }

    v13 = v4;
    if (v3 != v4)
    {
      if (v4 <= v3)
      {
        v14 = v3;
      }

      else
      {
        v14 = v4;
      }

      while (v14 != v3)
      {
        v15 = *(a1 + v3);
        v8 = v15 > 0x20;
        v16 = (1 << v15) & 0x100002600;
        if (v8 || v16 == 0)
        {
          goto LABEL_58;
        }

        v48 = ++v3;
        v49 = v4;
        v50 = a1;
        v51 = a2;
        if (v4 == v3)
        {
          v13 = v4;
          if (v6 == v12)
          {
            return;
          }

          goto LABEL_59;
        }
      }

      goto LABEL_111;
    }
  }

LABEL_54:
  if (v6 != v12)
  {
LABEL_59:
    if (v13 != v4)
    {
      if (v4 <= v13)
      {
        v24 = v13;
      }

      else
      {
        v24 = v4;
      }

      while (v24 != v13)
      {
        v25 = *(a1 + v13);
        v8 = v25 > 0x20;
        v26 = (1 << v25) & 0x100002600;
        if (!v8 && v26 != 0)
        {
          v48 = ++v13;
          v49 = v4;
          v50 = a1;
          v51 = a2;
          if (v4 != v13)
          {
            continue;
          }
        }

        goto LABEL_69;
      }

      goto LABEL_110;
    }

LABEL_69:
    v28 = _swiftEmptyArrayStorage;
    v47 = _swiftEmptyArrayStorage;
    swift_beginAccess();
    while (1)
    {
      sub_1002A3DA8(&v48, &v47, 0, v4, a1);
      if ((v29 & 1) == 0)
      {
        break;
      }

      sub_100287DA8();
      sub_100287E04(v52);
      if (v53)
      {
        break;
      }

      v30 = v48;
      if (v48 == v49)
      {
        break;
      }

      if (v48 >= v49)
      {
        goto LABEL_115;
      }

      if (*(v50 + v48) != 61)
      {
        break;
      }

      v31 = v52[0];
      v32 = v52[1];
      v33 = v52[2];
      ++v48;
      if (v30 + 1 == v49)
      {
        goto LABEL_82;
      }

      if (v30 + 1 >= v49)
      {
        goto LABEL_116;
      }

      if (*(v50 + v30 + 1) != 34)
      {
LABEL_82:
        sub_100287E04(v54);
        if (v55)
        {
          goto LABEL_107;
        }

        v46 = 0;
        v34 = v54[0];
        v35 = v54[1];
        v36 = v54[2];
      }

      else
      {
        v48 = v30 + 2;
        v34 = sub_100287EC4(0x22u, 0x5Cu);
        if (v48 == v49)
        {
          goto LABEL_107;
        }

        if (v48 >= v49)
        {
          goto LABEL_118;
        }

        if (*(v50 + v48) != 34)
        {
          goto LABEL_107;
        }

        ++v48;
        LOBYTE(v46) = 1;
        BYTE4(v46) = a3;
      }

      v37 = v33 + v32;
      if (!v33)
      {
        v37 = 0;
      }

      v45 = v37;
      if (v33)
      {
        v38 = v33 + v31;
      }

      else
      {
        v38 = 0;
      }

      if (v36)
      {
        v39 = v36 + v35;
      }

      else
      {
        v39 = 0;
      }

      if (v36)
      {
        v40 = v36 + v34;
      }

      else
      {
        v40 = 0;
      }

      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_100273A98(0, *(v28 + 2) + 1, 1, v28);
      }

      v42 = *(v28 + 2);
      v41 = *(v28 + 3);
      if (v42 >= v41 >> 1)
      {
        v28 = sub_100273A98((v41 > 1), v42 + 1, 1, v28);
      }

      *(v28 + 2) = v42 + 1;
      v43 = &v28[40 * v42];
      *(v43 + 4) = v38;
      *(v43 + 5) = v45;
      *(v43 + 6) = v40;
      *(v43 + 7) = v39;
      v43[64] = v46;
      v43[65] = BYTE4(v46) & 1;
      v47 = v28;
      swift_endAccess();
      sub_100287DA8();
      if (v48 != v49)
      {
        if (v48 >= v49)
        {
          goto LABEL_117;
        }

        if (*(v50 + v48) == 40)
        {
          ++v48;
          sub_1002879E4(0x29u);
          if (v48 == v49)
          {
            goto LABEL_107;
          }

          if (v48 >= v49)
          {
            goto LABEL_119;
          }

          if (*(v50 + v48) != 41)
          {
LABEL_107:

            return;
          }

          ++v48;
        }
      }
    }
  }
}

void *sub_1002A4404(void *__src, size_t __len)
{
  if (__src)
  {
    if ((__len & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      return memmove(*(v2 + 40), __src, __len);
    }
  }

  return __src;
}

uint64_t sub_1002A4424(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 34))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1002A4478(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for RFC_2231.UnsafeAttributeName(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for RFC_2231.UnsafeAttributeName(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 19))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for RFC_2231.UnsafeAttributeName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 19) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 19) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RFC_2231.UnsafeAttributeValue.Element(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFF && *(a1 + 18))
  {
    return (*a1 + 0x3FFF);
  }

  v3 = (*(a1 + 16) & 0xFE | (*(a1 + 16) >> 15) | (*(a1 + 16) >> 1) & 0x3F00) ^ 0x3FFF;
  if (v3 >= 0x3FFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for RFC_2231.UnsafeAttributeValue.Element(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x3FFF;
    *(result + 8) = 0;
    if (a3 >= 0x3FFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 1) & 0x1FFF) - (a2 << 13);
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (4 * v3) & 0xFE00 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RFC_2231.UnsafeAttributeValue.Element.Unencoded(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for RFC_2231.UnsafeAttributeValue.Element.Unencoded(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

char *sub_1002A477C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35[0] = _swiftEmptyArrayStorage;
  v29 = v35;
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v34 = a1;
  v10 = swift_allocObject();
  sub_100276450(v40);
  v11 = v40[9];
  v10[9] = v40[8];
  v10[10] = v11;
  v10[11] = v41[0];
  *(v10 + 185) = *(v41 + 9);
  v12 = v40[5];
  v10[5] = v40[4];
  v10[6] = v12;
  v13 = v40[7];
  v10[7] = v40[6];
  v10[8] = v13;
  v14 = v40[1];
  v10[1] = v40[0];
  v10[2] = v14;
  v15 = v40[3];
  v10[3] = v40[2];
  v10[4] = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = 2;
  v24 = v10;
  v25 = v16;
  v26 = sub_1002A52E0;
  v27 = &v28;
  v22[2] = v10 + 1;
  v22[3] = UInt32.init(_:);
  v22[4] = 0;

  sub_100296AD8(3, a2, a3, a4, a5);
  v35[1] = _swiftEmptyArrayStorage;
  v36 = v17;
  v37 = v18;
  v38 = v19;
  v39 = v20;
  sub_100295F74(sub_100277324, v23, sub_100277344, v22, 0, 0);

  sub_100276114(v10, v16, v35, a1);

  return v35[0];
}

__n128 SparsePartInfo.init(part:status:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 32);
  *a3 = a1;
  result = *a2;
  v5 = *(a2 + 16);
  *(a3 + 8) = *a2;
  *(a3 + 24) = v5;
  *(a3 + 40) = v3;
  return result;
}

BOOL sub_1002A4A30(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8 = a2[2].i8[0];
  return _s9IMAP2MIME14SparsePartInfoV6StatusO21__derived_enum_equalsySbAE_AEtFZ_0(v5, v7);
}

BOOL static SparsePartInfo.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (static SectionSpecifier.Part.__derived_struct_equals(_:_:)(*a1, *a2))
  {
    v4 = *(a1 + 24);
    v10[0] = *(a1 + 8);
    v10[1] = v4;
    v11 = *(a1 + 40);
    v5 = *(a2 + 24);
    v8[0] = *(a2 + 8);
    v8[1] = v5;
    v9 = *(a2 + 40);
    return _s9IMAP2MIME14SparsePartInfoV6StatusO21__derived_enum_equalsySbAE_AEtFZ_0(v10, v8);
  }

  else
  {
    return 0;
  }
}

BOOL sub_1002A4AF8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 3);
  v8[0] = *(a1 + 1);
  v8[1] = v3;
  v9 = *(a1 + 40);
  v4 = *a2;
  v5 = *(a2 + 3);
  v10[0] = *(a2 + 1);
  v10[1] = v5;
  v11 = *(a2 + 40);
  return (static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v2, v4) & 1) != 0 && _s9IMAP2MIME14SparsePartInfoV6StatusO21__derived_enum_equalsySbAE_AEtFZ_0(v8, v10);
}

BOOL SparsePartInfo.Status.isEmpty.getter()
{
  result = 0;
  if (*(v0 + 32))
  {
    if (*(v0 + 32) != 3)
    {
      return 1;
    }

    v1 = *(v0 + 8);
    v2 = *(v0 + 16) | *(v0 + 24);
    if (v2 | *v0 | v1)
    {
      v3 = v2 | v1;
      if (*v0 != 1 || v3 != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

char *Message.findPartsMissingData(cache:)(uint64_t a1)
{

  v3 = sub_100294F90(v1, a1);

  return v3;
}

char *sub_1002A4C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, char **a6@<X8>)
{
  result = sub_1002A477C(a5, a1, a2, a3, a4);
  *a6 = result;
  return result;
}

uint64_t sub_1002A4C50(uint64_t *a1, char **a2, void *a3)
{
  v5 = *(a1 + 8);
  v55[1] = *(a1 + 7);
  v56 = v5;
  v55[0] = *(a1 + 6);
  if (*(&v5 + 1))
  {
    v6 = v5 > 0xFu;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v21 = *a1;
    v22 = *a2;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = sub_1002749F0(0, *(v22 + 2) + 1, 1, v22);
      *a2 = v22;
    }

    v25 = *(v22 + 2);
    v24 = *(v22 + 3);
    if (v25 >= v24 >> 1)
    {
      v22 = sub_1002749F0((v24 > 1), v25 + 1, 1, v22);
      *a2 = v22;
    }

    *(v22 + 2) = v25 + 1;
    v26 = &v22[48 * v25];
    *(v26 + 4) = v21;
    *(v26 + 40) = 0u;
    *(v26 + 56) = 0u;
LABEL_26:
    v32 = 3;
LABEL_32:
    v26[72] = v32;
    return 2;
  }

  v7 = a1[8];
  if (!v7 || !*(&v56 + 1) || (v8 = a1[5], v9 = a1[6], v10 = a1[7], (sub_10025690C(v8, v9, v10 & 1, a1[8], v55) & 1) == 0))
  {
    if (*(a1 + 184) != 2)
    {
      v33 = sub_100275D34();
      v34 = *a1;
      v36 = v35 & 1;
      v37 = *a2;

      v38 = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v37;
      if ((v38 & 1) == 0)
      {
        v37 = sub_1002749F0(0, *(v37 + 2) + 1, 1, v37);
        *a2 = v37;
      }

      v40 = *(v37 + 2);
      v39 = *(v37 + 3);
      if (v40 >= v39 >> 1)
      {
        v37 = sub_1002749F0((v39 > 1), v40 + 1, 1, v37);
        *a2 = v37;
      }

      *(v37 + 2) = v40 + 1;
      v26 = &v37[48 * v40];
      *(v26 + 4) = v34;
      *(v26 + 5) = v33;
      *(v26 + 7) = 0;
      *(v26 + 8) = 0;
      *(v26 + 6) = v36;
      v32 = 1;
      goto LABEL_32;
    }

    v27 = *a1;
    v28 = *a2;

    v29 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v28;
    if ((v29 & 1) == 0)
    {
      v28 = sub_1002749F0(0, *(v28 + 2) + 1, 1, v28);
      *a2 = v28;
    }

    v31 = *(v28 + 2);
    v30 = *(v28 + 3);
    if (v31 >= v30 >> 1)
    {
      v28 = sub_1002749F0((v30 > 1), v31 + 1, 1, v28);
      *a2 = v28;
    }

    *(v28 + 2) = v31 + 1;
    v26 = &v28[48 * v31];
    *(v26 + 4) = v27;
    *(v26 + 5) = 1;
    *(v26 + 7) = 0;
    *(v26 + 8) = 0;
    *(v26 + 6) = 0;
    goto LABEL_26;
  }

  v12 = sub_10026C240(a3, v8, v9, v10 & 1, v7);
  v14 = v13;
  if (*(a1 + 184) != 2)
  {
    v42 = sub_100275D34();
    v43 = *a1;
    v45 = v44 & 1;
    v46 = *a2;

    v47 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v46;
    if ((v47 & 1) == 0)
    {
      v46 = sub_1002749F0(0, *(v46 + 2) + 1, 1, v46);
      *a2 = v46;
    }

    v48 = *(v46 + 2);
    v49 = *(v46 + 3);
    v50 = v48 + 1;
    if (v48 >= v49 >> 1)
    {
      v54 = v48 + 1;
      v51 = v46;
      v52 = *(v46 + 2);
      v53 = sub_1002749F0((v49 > 1), v48 + 1, 1, v51);
      v48 = v52;
      v50 = v54;
      v46 = v53;
      *a2 = v53;
    }

    *(v46 + 2) = v50;
    v26 = &v46[48 * v48];
    *(v26 + 4) = v43;
    *(v26 + 5) = v42;
    *(v26 + 6) = v45;
    *(v26 + 7) = v12;
    *(v26 + 8) = v14;
    v32 = 2;
    goto LABEL_32;
  }

  v15 = *a1;
  v16 = *a2;

  v17 = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v16;
  if ((v17 & 1) == 0)
  {
    v16 = sub_1002749F0(0, *(v16 + 2) + 1, 1, v16);
    *a2 = v16;
  }

  v19 = *(v16 + 2);
  v18 = *(v16 + 3);
  if (v19 >= v18 >> 1)
  {
    v16 = sub_1002749F0((v18 > 1), v19 + 1, 1, v16);
    *a2 = v16;
  }

  *(v16 + 2) = v19 + 1;
  v20 = &v16[48 * v19];
  *(v20 + 4) = v15;
  *(v20 + 5) = v12;
  *(v20 + 7) = 0;
  *(v20 + 8) = 0;
  *(v20 + 6) = v14;
  v20[72] = 0;
  return 2;
}

BOOL _s9IMAP2MIME14SparsePartInfoV6StatusO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t *a1, int8x16_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 32);
  v6 = (*(a1 + 9) << 8) | ((*(a1 + 13) | (*(a1 + 15) << 16)) << 40) | v4;
  if (v5 <= 1)
  {
    if (!*(a1 + 32))
    {
      if (a2[2].i8[0])
      {
        return 0;
      }

      v7 = a2->i64[1];
      if (v6)
      {
        if (v7)
        {
          if (v3 != a2->i64[0] || v6 != v7)
          {
            return (sub_1004A6D34() & 1) != 0;
          }

          return 1;
        }

        return 0;
      }

      return !v7;
    }

    if (a2[2].i8[0] != 1)
    {
      return 0;
    }

    if ((v4 & 1) == 0)
    {
      return (a2->i8[8] & 1) == 0 && v3 == a2->i64[0];
    }

    return (a2->i8[8] & 1) != 0;
  }

  v9 = a1[2];
  v8 = a1[3];
  if (v5 != 2)
  {
    if (v6 | v9 | v3 | v8)
    {
      if (a2[2].i8[0] != 3 || a2->i64[0] != 1 || a2[1].i64[0] | a2[1].i64[1] | a2->i64[1])
      {
        return 0;
      }
    }

    else
    {
      if (a2[2].i8[0] != 3)
      {
        return 0;
      }

      v10 = vorrq_s8(*a2, a2[1]);
      if (vorr_s8(*v10.i8, *&vextq_s8(v10, v10, 8uLL)))
      {
        return 0;
      }
    }

    return 1;
  }

  if (a2[2].i8[0] != 2)
  {
    return 0;
  }

  v7 = a2[1].i64[1];
  if (v4)
  {
    if ((a2->i8[8] & 1) == 0)
    {
      return 0;
    }

    goto LABEL_29;
  }

  if (a2->i8[8])
  {
    return 0;
  }

  v11 = v3 == a2->i64[0];
  result = 0;
  if (v11)
  {
LABEL_29:
    if (!v8)
    {
      return !v7;
    }

    if (!v7)
    {
      return 0;
    }

    if (v9 != a2[1].i64[0] || v8 != v7)
    {
      return (sub_1004A6D34() & 1) != 0;
    }

    return 1;
  }

  return result;
}

uint64_t sub_1002A51F8(uint64_t a1)
{
  if ((*(a1 + 32) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t sub_1002A5224(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 33))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1002A526C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1002A52B4(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_1002A5300()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 201, 7);
}

uint64_t sub_1002A535C(uint64_t result)
{
  v2 = v1[2];
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v1;
    v4 = result;
    LODWORD(v5) = 0;
    v6 = 0;
    v7 = 0;
    v8 = *v1;
    while (1)
    {
      while (1)
      {
        v23 = v5;
        v24 = v6;
        if (v6)
        {
          break;
        }

        if (v7 == v2)
        {
          goto LABEL_38;
        }

        v11 = *(v8 + v7);
        v12 = *(v8 + v7++);
        if (v11 < 0)
        {
          LODWORD(v5) = v5 & 0xFFFFFF00 | v12;
          v6 = 8;
          goto LABEL_7;
        }

LABEL_25:
        LODWORD(v5) = v23;
        v6 = v24;
        v9 = v4[1];
        v21 = *v4;
        v22 = v9;
        result = sub_1004A58C4();
        v10 = v22;
        *v4 = v21;
        v4[1] = v10;
      }

      if ((v5 & 0x80) == 0)
      {
        sub_1002A57BC();
        result = UnsafeExtractedAttachment.part.modify();
        v20 = *(v19 + 4);
        if (!v20)
        {
          goto LABEL_40;
        }

        *v19 >>= 8;
        *(v19 + 4) = v20 - 8;
        (result)(&v21, 0);
        goto LABEL_25;
      }

LABEL_7:
      if (v7 == v2)
      {
        v13 = v6;
      }

      else
      {
        v14 = v7 + 1;
        LODWORD(v5) = (*(v8 + v7) << v6) | ((-255 << v6) - 1) & v5;
        v13 = v6 + 8;
        if ((v6 + 8) > 0x1Fu)
        {
          goto LABEL_20;
        }

        if (v14 != v2)
        {
          v15 = *(v8 + v14);
          v14 = v7 + 2;
          LODWORD(v5) = (v15 << v13) | ((-255 << v13) - 1) & v5;
          v13 = v6 + 16;
          if ((v6 + 16) > 0x1Fu)
          {
            goto LABEL_20;
          }

          if (v14 != v2)
          {
            v16 = *(v8 + v14);
            v14 = v7 + 3;
            LODWORD(v5) = (v16 << v13) | ((-255 << v13) - 1) & v5;
            v13 = v6 + 24;
            if ((v6 + 24) > 0x1Fu)
            {
              goto LABEL_20;
            }

            if (v14 != v2)
            {
              v17 = *(v8 + v14);
              v14 = v7 + 4;
              LODWORD(v5) = (v17 << v13) | ((-255 << v13) - 1) & v5;
              v13 = v6 + 32;
              if (v6 < 0xE0u)
              {
LABEL_20:
                v7 = v14;
                goto LABEL_21;
              }

              if (v14 != v2)
              {
                v7 += 5;
                LODWORD(v5) = (*(v8 + v14) << v6) | ((-255 << v6) - 1) & v5;
                v13 = v6 + 40;
                goto LABEL_21;
              }
            }
          }
        }
      }

      v7 = v2;
      if (!v13)
      {
LABEL_38:
        v3[2] = 0;
        return result;
      }

LABEL_21:
      if ((v5 & 0xC0E0) == 0x80C0)
      {
        if ((v5 & 0x1E) != 0)
        {
          v18 = 16;
LABEL_24:
          v23 = v5 >> v18;
          v24 = v13 - v18;
          goto LABEL_25;
        }
      }

      else if ((v5 & 0xC0C0F0) == 0x8080E0)
      {
        if ((v5 & 0x200F) != 0 && (v5 & 0x200F) != 0x200D)
        {
          v18 = 24;
          goto LABEL_24;
        }
      }

      else if ((v5 & 0xC0C0C0F8) == 0x808080F0 && (v5 & 0x3007) != 0 && __rev16(v5 & 0x3007) <= 0x400)
      {
        v18 = 32;
        goto LABEL_24;
      }

      result = sub_1004A6FB4();
      v5 = v5 >> ((8 * result) & 0x38);
      v6 = v13 - 8 * result;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1002A5760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, _BYTE *a7)
{
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = 0;
  sub_10029F954(v8, a3, a4, a5, a6, a7);
}

unint64_t sub_1002A57BC()
{
  result = qword_1005D6B98;
  if (!qword_1005D6B98)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Unicode.UTF8.ForwardParser, &type metadata for Unicode.UTF8.ForwardParser, v0, v1);
    atomic_store(result, &qword_1005D6B98);
  }

  return result;
}

uint64_t sub_1002A5810(uint64_t result)
{
  v2 = *(v1 + 4);
  if (v2)
  {
    if (result <= 0xF7u)
    {
      v3 = (*v1 >> result);
      *v1 = (*v1 >> (((result + 8) >> 1) & 0x1C) >> (((result + 8) >> 1) & 0x1C) << ((result + 8 - ((((((result + 8) - result) & 0xE000u) >> 13) + 8) & 0xF8)) & 0x18)) | *v1 & ((1 << ((result >> 1) & 0x1C) << ((result >> 1) & 0x1C)) - 1);
      *(v1 + 4) = v2 - ((((((result + 8) - result) & 0xE000u) >> 13) + 8) & 0xF8);
      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_1002A589C@<X0>(char *result@<X0>, int8x8_t *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, unsigned __int8 a6@<W5>, _BYTE *a7@<X6>, _BYTE *a8@<X8>)
{
  if (a3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a3 > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  if (a5 == 74)
  {
    v9 = 23;
  }

  else
  {
    v9 = byte_1004ED5A5[a5];
  }

  result = CompactEncDet_detectEncoding(a2, a3, result, a4 & 1, v9, a6, a7);
  *a8 = result;
  return result;
}

uint64_t sub_1002A5960(__int16 a1)
{
  result = CompactEncDet_EncodingName();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5._countAndFlagsBits = sub_1004A59B4();
  sub_1004A5994(v5);

  v6._countAndFlagsBits = 10016;
  v6._object = 0xE200000000000000;
  sub_1004A5994(v6);
  result = CompactEncDet_MimeEncodingName();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v7._countAndFlagsBits = sub_1004A59B4();
  sub_1004A5994(v7);

  v8._countAndFlagsBits = 8231;
  v8._object = 0xE200000000000000;
  sub_1004A5994(v8);
  if ((a1 & 0x100) != 0)
  {
    v3._countAndFlagsBits = 0x656C6261696C6572;
  }

  else
  {
    v3._countAndFlagsBits = 0x6261696C65726E75;
  }

  if ((a1 & 0x100) != 0)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEA0000000000656CLL;
  }

  v3._object = v4;
  sub_1004A5994(v3);

  return 0;
}

uint64_t sub_1002A5A6C()
{
  if (v0[1])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_1002A5960(v1 | *v0);
}

uint64_t sub_1002A5A88()
{
  if (*v0)
  {
    return 0x656C6261696C6572;
  }

  else
  {
    return 0x6261696C65726E75;
  }
}

Swift::Int sub_1002A5AEC()
{
  v1 = *v0;
  sub_1004A6E94();
  sub_1004A6EC4(byte_1004ED5A5[v1]);
  return sub_1004A6F14();
}

Swift::Int sub_1002A5B74(uint64_t a1)
{
  v2 = *v1;
  sub_1004A6E94();
  sub_1004A6EC4(byte_1004ED5A5[v2]);
  return sub_1004A6F14();
}

uint64_t sub_1002A5BC0@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002A5CB0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1002A5C04()
{
  result = CompactEncDet_EncodingName();
  if (result)
  {

    return sub_1004A59B4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002A5C44@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002A68EC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1002A5C7C()
{
  result = CompactEncDet_LanguageName();
  if (result)
  {

    return sub_1004A59B4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002A5CB0(unsigned __int8 a1)
{
  if (a1 > 0x4Au)
  {
    return 74;
  }

  else
  {
    return byte_1004ED55A[a1];
  }
}

uint64_t sub_1002A5CD8(unsigned __int8 *a1, unsigned __int8 *a2, char a3, int8x8_t *a4, uint64_t a5, char a6, void *a7)
{
  if ((a3 & 1) == 0)
  {
    v12 = a1;
    v13 = a2 - a1;
    if (a1 && v13 > 119 || (v14 = sub_100295668(a1, a2), v15 = sub_1002A5CB0(v14), v15 == 74))
    {
      v15 = 74;
    }

    v37 = 0;
    v38 = 0xE000000000000000;
    if (v12)
    {
      v16 = v13;
    }

    else
    {
      v16 = 0;
    }

    sub_1004A5874(v16);
    if (v12 && a2 != v12)
    {
      v19 = v37;
      v18 = v38;
      do
      {
        v17 = *v12;
        if ((v17 - 1) <= 0x7D)
        {
          v35[0] = v19;
          v35[1] = v38;
          v17 = sub_1004A58C4();
          v19 = v35[0];
        }

        ++v12;
      }

      while (v12 != a2);
      v37 = v19;
    }

    else
    {
      v18 = v38;
    }

    LOBYTE(v35[0]) = 0;
    __chkstk_darwin(v17);
    v38 = v18 & 0xFFFFFFFFFFFFFFLL;
    if (v20 < 0xFFFFFFFF80000000)
    {
      __break(1u);
      __break(1u);
    }

    else if (v20 <= 0x7FFFFFFF)
    {
      if (v15 == 74)
      {
        v22 = 23;
      }

      else
      {
        v22 = byte_1004ED5A5[v15];
      }

      v36 = CompactEncDet_detectEncoding(a4, v20, &v37, a6 & 1, v22, 0x1Au, v35);
      goto LABEL_30;
    }

    __break(1u);
    __break(1u);
  }

  LOBYTE(v35[0]) = 0;
  if (!a4)
  {
    LODWORD(v10) = 0;
LABEL_23:
    v21 = CompactEncDet_detectEncoding(a4, v10, 0, a6 & 1, 0x17u, 0x1Au, v35);
    goto LABEL_31;
  }

  v10 = a5 - a4;
  if (v10 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v10 <= 0x7FFFFFFF)
  {
    goto LABEL_23;
  }

  __break(1u);
  type metadata accessor for CompactEncDet_Encoding(0);
  sub_1004A66E4();
LABEL_30:

  v21 = v36;
LABEL_31:
  if (sub_1002A5CB0(v21) == 74)
  {
    return 0;
  }

  v23 = CompactEncDet_MimeEncodingName();
  if (v23)
  {

    v23 = sub_1002A6B54(v23, a7);
    if (v23)
    {
      swift_beginAccess();
      v24 = a7[4];
      if (!v24)
      {

        v25 = sub_1002A6B54("euc-cn", a7);
        if (!v25)
        {
          __break(1u);
          goto LABEL_64;
        }

        v24 = v25;
        a7[4] = v25;
      }

      swift_endAccess();
      if (v24 != v23)
      {
        swift_beginAccess();
        v26 = a7[5];
        if (!v26)
        {

          v27 = sub_1002A6B54("gb-2312-80", a7);
          if (!v27)
          {
LABEL_65:
            __break(1u);
            goto LABEL_66;
          }

          v26 = v27;
          a7[5] = v27;
        }

        swift_endAccess();
        if (v26 != v23)
        {
          swift_beginAccess();
          v28 = a7[6];
          if (!v28)
          {

            v29 = sub_1002A6B54("gbk", a7);
            if (!v29)
            {
LABEL_66:
              __break(1u);
              goto LABEL_67;
            }

            v28 = v29;
            a7[6] = v29;
          }

          swift_endAccess();
          if (v28 != v23)
          {
            swift_beginAccess();
            v32 = a7[8];
            if (!v32)
            {

              v33 = sub_1002A6B54("big5", a7);
              if (!v33)
              {
LABEL_67:
                __break(1u);
                goto LABEL_68;
              }

              v32 = v33;
              a7[8] = v33;
            }

            swift_endAccess();
            if (v32 != v23)
            {
              return v23;
            }

            swift_beginAccess();
            v23 = a7[9];
            if (v23)
            {
              goto LABEL_50;
            }

            v34 = sub_1002A6B54("big5-hkscs", a7);
            if (v34)
            {
              v23 = v34;
              a7[9] = v34;
              goto LABEL_50;
            }

LABEL_68:
            __break(1u);
            JUMPOUT(0x1002A63D0);
          }
        }
      }

      swift_beginAccess();
      v23 = a7[7];
      if (v23)
      {
LABEL_50:
        swift_endAccess();
        return v23;
      }

      v30 = sub_1002A6B54("gb-18030", a7);
      if (v30)
      {
        v23 = v30;
        a7[7] = v30;
        goto LABEL_50;
      }

LABEL_64:
      __break(1u);
      goto LABEL_65;
    }
  }

  return v23;
}

uint64_t getEnumTagSinglePayload for CharacterSetDetection.Encoding(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xB7)
  {
    goto LABEL_17;
  }

  if (a2 + 73 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 73) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 73;
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

      return (*a1 | (v4 << 8)) - 73;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 73;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x4A;
  v8 = v6 - 74;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CharacterSetDetection.Encoding(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 73 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 73) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xB7)
  {
    v4 = 0;
  }

  if (a2 > 0xB6)
  {
    v5 = ((a2 - 183) >> 8) + 1;
    *result = a2 + 73;
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
    *result = a2 + 73;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CharacterSetDetection.Language(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x60)
  {
    goto LABEL_17;
  }

  if (a2 + 160 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 160) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 160;
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

      return (*a1 | (v4 << 8)) - 160;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 160;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA1;
  v8 = v6 - 161;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CharacterSetDetection.Language(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 160 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 160) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x60)
  {
    v4 = 0;
  }

  if (a2 > 0x5F)
  {
    v5 = ((a2 - 96) >> 8) + 1;
    *result = a2 - 96;
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
    *result = a2 - 96;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1002A67E8()
{
  result = qword_1005D6BA0;
  if (!qword_1005D6BA0)
  {
    result = swift_getWitnessTable(aI_15, &type metadata for CharacterSetDetection.Language, v0, v1);
    atomic_store(result, &qword_1005D6BA0);
  }

  return result;
}

unint64_t sub_1002A6840()
{
  result = qword_1005D6BA8;
  if (!qword_1005D6BA8)
  {
    result = swift_getWitnessTable("ɘ\t", &type metadata for CharacterSetDetection.Encoding, v0, v1);
    atomic_store(result, &qword_1005D6BA8);
  }

  return result;
}

unint64_t sub_1002A6898()
{
  result = qword_1005D6BB0;
  if (!qword_1005D6BB0)
  {
    result = swift_getWitnessTable(byte_1004ED4C8, &type metadata for CharacterSetDetection.DetectedEncoding.Reliability, v0, v1);
    atomic_store(result, &qword_1005D6BB0);
  }

  return result;
}

uint64_t sub_1002A68EC(uint64_t result)
{
  if (result >= -95)
  {
    v1 = -95;
  }

  else
  {
    v1 = result;
  }

  if ((result & 0x80u) == 0)
  {
    return result;
  }

  else
  {
    return v1;
  }
}

uint64_t getEnumTagSinglePayload for ICUCanonicalConverterName(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for ICUCanonicalConverterName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

char *sub_1002A69A8()
{
  v0 = ucnv_countAvailable();
  result = sub_100273CF0(0, v0 & ~(v0 >> 31), 0, _swiftEmptyArrayStorage);
  if (v0 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (v0)
    {
      for (i = 0; i != v0; ++i)
      {
        AvailableName = ucnv_getAvailableName();
        if (AvailableName)
        {
          v6 = *(v2 + 2);
          v5 = *(v2 + 3);
          if (v6 >= v5 >> 1)
          {
            v7 = AvailableName;
            v2 = sub_100273CF0((v5 > 1), v6 + 1, 1, v2);
            AvailableName = v7;
          }

          *(v2 + 2) = v6 + 1;
          *&v2[8 * v6 + 32] = AvailableName;
        }
      }
    }

    return v2;
  }

  return result;
}

unint64_t sub_1002A6A74()
{
  result = qword_1005D6BB8;
  if (!qword_1005D6BB8)
  {
    result = swift_getWitnessTable(asc_1004ED62C, &type metadata for ICUCanonicalConverterName, v0, v1);
    atomic_store(result, &qword_1005D6BB8);
  }

  return result;
}

uint64_t sub_1002A6AC8()
{
  v0 = sub_1004A57F4();
  __chkstk_darwin(v0 - 8);
  sub_1004A57E4();
  result = sub_1004A57B4();
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1002A6B54(uint64_t a1, uint64_t a2)
{
  CanonicalName = ucnv_getCanonicalName();
  if (CanonicalName)
  {
    v4 = CanonicalName;
    if (*(a2 + 16))
    {
      v5 = *(a2 + 16);
    }

    else
    {
      v5 = sub_1002A69A8();
      *(a2 + 16) = v5;
    }

    v6 = *(v5 + 2);
    v7 = 32;
    while (v6)
    {
      v8 = *&v5[v7];
      v7 += 8;
      --v6;
      if (v8 == v4)
      {

        goto LABEL_32;
      }
    }

    if (*(a2 + 16))
    {
      v9 = *(a2 + 16);
    }

    else
    {
      v9 = sub_1002A69A8();
      *(a2 + 16) = v9;
    }

    v10 = *(v9 + 2);

    v11 = 0;
    while (v10 != v11)
    {
      if (v11 >= *(v9 + 2))
      {
        goto LABEL_39;
      }

      v12 = *&v9[8 * v11++ + 32];
      if (!ucnv_compareNames())
      {

        return v12;
      }
    }
  }

  v13 = *(a2 + 16);
  if (!v13)
  {
    v14 = sub_1002A69A8();
    *(a2 + 16) = v14;

    v15 = *(v14 + 2);
    if (v15)
    {
      goto LABEL_20;
    }

LABEL_34:

LABEL_35:

    return 0;
  }

  v14 = *(a2 + 16);
  v15 = *(v13 + 16);
  if (!v15)
  {
    goto LABEL_34;
  }

LABEL_20:

  v16 = 0;
  while (1)
  {
    if (v16 >= *(v14 + 2))
    {
      goto LABEL_38;
    }

    v4 = *&v14[8 * v16 + 32];
    v17 = ucnv_countAliases();
    if (v17)
    {
      break;
    }

LABEL_22:
    if (++v16 == v15)
    {
      goto LABEL_35;
    }
  }

  v18 = v17;
  v19 = v17 + 1;
  sub_10000C9C0(&qword_1005D6BC0, &qword_1004ED6C0);
  v20 = sub_1004A5C64();
  v20[2] = v19;
  v20[4] = 0;
  bzero(v20 + 5, 8 * v18);
  ucnv_getAliases();
  v21 = v20[2];
  if (!v21)
  {
LABEL_21:

    goto LABEL_22;
  }

  v22 = 0;
  while (1)
  {
    if (v22 >= v20[2])
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
    }

    if (v20[v22 + 4] && !ucnv_compareNames())
    {
      break;
    }

    if (v21 == ++v22)
    {
      goto LABEL_21;
    }
  }

LABEL_32:

  return v4;
}

uint64_t sub_1002A6E60@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1002A7064(a1, a2, a3);
  if (!v4)
  {
    if (result >= a2)
    {
      *a4 = 0;
      a4[1] = 0;
      return result;
    }

    if (a2 + 0x4000000000000000 >= 0)
    {
      v11 = 2 * a2;
      if (2 * a2 < 0)
      {
        __break(1u);
      }

      else if (v11 + 0x4000000000000000 >= 0)
      {
        v5 = result;
        result = 4 * a2;
        if (4 * a2 <= 1024)
        {
LABEL_7:
          __chkstk_darwin(result);
          v21[1] = sub_1002A71F8(a1, a2, v21 - v13, v12, v5, a3);
          v21[2] = v14;
          v21[3] = v15;
          v21[4] = v16;
          sub_10000C9C0(&qword_1005D6BC8, &qword_1004ED6C8);
          sub_1002A7374();
          sub_1002A73D8();
          result = sub_1004A5854();
          if (v17)
          {
            *a4 = result;
            a4[1] = v17;
          }

          else
          {
            __break(1u);
          }

          return result;
        }

LABEL_13:
        v21[0] = result;
        v18 = v11;
        isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
        result = v21[0];
        if (!isStackAllocationSafe)
        {
          v20 = swift_slowAlloc();
          sub_1002A713C(v20, a1, a2, a4, v18, a3, v5);
        }

        goto LABEL_7;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1002A7064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  if (a2 > 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  return unorm2_spanQuickCheckYes();
}

uint64_t sub_1002A713C@<X0>(void *__dst@<X0>, char *__src@<X3>, uint64_t a3@<X4>, void *a4@<X8>, uint64_t a5@<X1>, uint64_t a6@<X2>, uint64_t a7@<X5>)
{
  result = sub_1002A71F8(__src, a3, __dst, a5, a7, a6);
  if (!v7)
  {
    sub_10000C9C0(&qword_1005D6BC8, &qword_1004ED6C8);
    sub_1002A7374();
    sub_1002A73D8();
    result = sub_1004A5854();
    if (v10)
    {
      *a4 = result;
      a4[1] = v10;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1002A71F8(char *__src, uint64_t a2, void *__dst, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5 < 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (a5 && a4)
  {
    if (a5 >= a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = a5;
    }

    memcpy(__dst, __src, 2 * v9);
  }

  if (a2 < a5)
  {
    goto LABEL_16;
  }

  if (a5 >> 31)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a4 < 0xFFFFFFFF80000000)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (a4 > 0x7FFFFFFF)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (a2 - a5 > 0x7FFFFFFF)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  if ((unorm2_normalizeSecondAndAppend() & 0x80000000) != 0)
  {
    goto LABEL_21;
  }

  return 0;
}

unint64_t sub_1002A7374()
{
  result = qword_1005D6BD0;
  if (!qword_1005D6BD0)
  {
    v3 = sub_10000DEFC(&qword_1005D6BC8, &qword_1004ED6C8);
    result = swift_getWitnessTable(&protocol conformance descriptor for Slice<A>, v3, v0, v1);
    atomic_store(result, &qword_1005D6BD0);
  }

  return result;
}

unint64_t sub_1002A73D8()
{
  result = qword_1005D6BD8;
  if (!qword_1005D6BD8)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Unicode.UTF16, &type metadata for Unicode.UTF16, v0, v1);
    atomic_store(result, &qword_1005D6BD8);
  }

  return result;
}

uint64_t sub_1002A742C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (*(a1 + 32) & 0xF0) != 0x50 || (*(a1 + 16))
  {
    goto LABEL_3;
  }

  if (sub_10027C548(*a1, *(a1 + 8)) == 1819112552 && v23 == 0xE400000000000000)
  {

    v11 = 1;
    goto LABEL_4;
  }

  v25 = sub_1004A6D34();

  if (v25)
  {
    v11 = 1;
  }

  else
  {
LABEL_3:
    v11 = 0;
  }

LABEL_4:
  v12 = sub_1002717C4();
  v14 = v13;
  v16 = v15;
  sub_100270C3C(a1);
  if (!a4 || a3 == a2 || (v18 = sub_1002A5CD8(v12, v14, v16 & 1, (a4 + a2), a4 + a3, v11, a6)) == 0)
  {

    return 0;
  }

  v19 = v18;
  swift_beginAccess();
  v20 = a6[3];
  if (!v20)
  {

    result = sub_1002A6B54("utf-8", a6);
    if (!result)
    {
      __break(1u);
      return result;
    }

    v20 = result;
    a6[3] = result;
  }

  v21 = swift_endAccess();
  if (v20 == v19)
  {
    v22 = sub_1004A58D4();
  }

  else
  {
    __chkstk_darwin(v21);
    v22 = sub_10026ADD8(v19, a6, sub_1002A0810);
  }

  return v22;
}

void sub_1002A7678(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  isStackAllocationSafe = sub_1004A63A4();
  if (isStackAllocationSafe + 0x4000000000000000 >= 0)
  {
    if (2 * isStackAllocationSafe < 0)
    {
      __break(1u);
    }

    else if (2 * isStackAllocationSafe + 0x4000000000000000 >= 0)
    {
      if (4 * isStackAllocationSafe < 1025)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }

    __break(1u);
  }

  __break(1u);
LABEL_9:
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if ((isStackAllocationSafe & 1) == 0)
  {
    v13 = swift_slowAlloc();
    sub_1002A8150(v13, a1, a2, a3, a4, a5);

    return;
  }

LABEL_5:
  __chkstk_darwin(isStackAllocationSafe);
  sub_1002A8150(&v14 - v12, a1, a2, a3, a4, a5);
  if (v5)
  {
    swift_willThrow();
  }
}

double sub_1002A7810@<D0>(uint64_t *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *a1;
  ucnv_setFallback();
  if (a3)
  {
    v11 = a4;
  }

  else
  {
    v11 = 0;
  }

  sub_1002A7894(a3, v11, 1, v10, a1, 1);
  if (!v5)
  {
    v13 = a1[3];
    *a5 = a1[2];
    a5[1] = v13;
  }

  return result;
}

uint64_t sub_1002A7894(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  v29 = a6;
  v30 = a3;
  v28 = a5;
  if (a1)
  {
    v6 = a2 - a1;
  }

  else
  {
    v6 = 0;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_55;
  }

  v8 = 0;
  v35 = 0;
  v36 = v6;
  v37 = a1;
  v38 = a2;
  while (1)
  {
    v9 = v37;
    if (v37)
    {
      v10 = v38 - v37;
    }

    else
    {
      v10 = 0;
    }

    if ((v8 & 0x8000000000000000) != 0 || v10 < v8)
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
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
    }

    if ((v6 & 0x8000000000000000) != 0 || v10 < v6)
    {
      goto LABEL_45;
    }

    MinCharSize = ucnv_getMinCharSize();
    if (!MinCharSize)
    {
      goto LABEL_46;
    }

    v12 = (v6 - v8) / MinCharSize;
    v13 = __OFADD__(v12, 3);
    v14 = v12 + 3;
    if (v13)
    {
      goto LABEL_47;
    }

    if (v14 + 0x4000000000000000 < 0)
    {
      goto LABEL_48;
    }

    v15 = 2 * v14;
    if (2 * v14 < 0)
    {
      goto LABEL_54;
    }

    if (v15 >= 1025)
    {
      MinCharSize = swift_stdlib_isStackAllocationSafe();
      if ((MinCharSize & 1) == 0)
      {
        v23 = swift_slowAlloc();
        v24 = v31;
        sub_1002A7BB0(&v35, v23, v23 + v15, v30 & 1, a4, v28, v29 & 1, v25);

        if (v24)
        {
          return result;
        }

        v31 = 0;
        v21 = v35;
        v6 = v36;
        goto LABEL_36;
      }
    }

    __chkstk_darwin(MinCharSize);
    v17 = &v27 - v16;
    v18 = v9 ? v9 + v8 : 0;
    v33 = v18;
    v34 = &v27 - v16;
    v32 = 0;
    result = ucnv_toUnicode();
    if (v33)
    {
      v20 = v33 - v18;
      if (!v18)
      {
        v20 = 0;
      }

      v21 = v8 + v20;
      if (__OFADD__(v8, v20))
      {
        goto LABEL_49;
      }

      if ((v21 & 0x8000000000000000) != 0 || v10 < v21)
      {
        goto LABEL_50;
      }

      if (v6 < v21)
      {
        goto LABEL_51;
      }

      if (v21 < v8)
      {
        goto LABEL_52;
      }

      v35 = v8 + v20;
      v36 = v6;
    }

    else
    {
      v21 = v8;
    }

    if (v32 != 15 && v32 > 0)
    {
      break;
    }

    if (v34)
    {
      if (v34 - v17 < -1)
      {
        goto LABEL_53;
      }

      v39._object = ((v34 - v17) / 2);
      v39._countAndFlagsBits = v17;
      v22 = v31;
      result = sub_1002A7DA8(v39, v28, v29 & 1);
      v31 = v22;
      if (v22)
      {
        return swift_willThrow();
      }
    }

LABEL_36:
    v8 = v21;
    if (v21 == v6)
    {
      return result;
    }
  }

  sub_1002755A0();
  swift_allocError();
  *v26 = 1;
  *(v26 + 4) = 1;
  swift_willThrow();
  return swift_willThrow();
}

uint64_t sub_1002A7BB0(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7, __n128 a8)
{
  v13 = *a1;
  v12 = a1[1];
  v14 = a1[2];
  v15 = a1[3];
  if (v14)
  {
    v16 = v14 + *a1;
  }

  else
  {
    v16 = 0;
  }

  ucnv_toUnicode();
  if (v16)
  {
    v17 = v15 - v14;
    if (!v14)
    {
      v17 = 0;
    }

    if (v13 < 0 || v17 < v13)
    {
      __break(1u);
    }

    else if (v12 >= v13)
    {
      *a1 = v13;
      a1[1] = v12;
      a1[2] = v14;
      a1[3] = v15;
      goto LABEL_11;
    }

    __break(1u);
    __break(1u);
    goto LABEL_21;
  }

LABEL_11:
  if (a2)
  {
    if (!a2)
    {
      v18._object = 0;
LABEL_16:
      v18._countAndFlagsBits = a2;
      result = sub_1002A7DA8(v18, a6, a7 & 1);
      if (v8)
      {
        return result;
      }

      return 1;
    }

    if (a2 - a2 >= -1)
    {
      v18._object = ((a2 - a2) / 2);
      goto LABEL_16;
    }

LABEL_21:
    __break(1u);
  }

  return 1;
}

uint64_t sub_1002A7DA8(Swift::String result, uint64_t a3, char a4)
{
  countAndFlagsBits = result._countAndFlagsBits;
  if ((*(a3 + 13) & 1) == 0 && (a4 & 1) != 0 && result._object >= 201)
  {
    v21 = result;
    sub_10000C9C0(&qword_1005D6BE0, &qword_1004ED6D0);
    sub_1002A80EC();
    sub_1002A73D8();
    result._countAndFlagsBits = sub_1004A5854();
    if (!result._object)
    {
      goto LABEL_42;
    }

    sub_1004A5994(result);

    return result._countAndFlagsBits;
  }

  *(a3 + 13) = 1;
  if (result._countAndFlagsBits)
  {
    v5 = result._countAndFlagsBits + 2 * result._object;
  }

  else
  {
    v5 = 0;
  }

  while (1)
  {
    LODWORD(v9) = *(a3 + 8);
    v10 = *(a3 + 12);
    v22 = v9;
    v23 = v10;
    if (v10)
    {
      break;
    }

    if (!countAndFlagsBits || countAndFlagsBits == v5)
    {
      v12 = v9;
LABEL_40:
      *(a3 + 8) = v12;
      *(a3 + 12) = 0;
      return result._countAndFlagsBits;
    }

    result._countAndFlagsBits = *countAndFlagsBits;
    v11 = countAndFlagsBits + 1;
    if ((*countAndFlagsBits & 0xF800) != 0xD800)
    {
      v6 = 0;
      ++countAndFlagsBits;
      goto LABEL_10;
    }

    LODWORD(v9) = v9 & 0xFFFF0000 | LODWORD(result._countAndFlagsBits);
    v10 = 16;
    ++countAndFlagsBits;
    if (v11 == v5)
    {
LABEL_27:
      v12 = v9;
      goto LABEL_28;
    }

LABEL_16:
    countAndFlagsBits = v11 + 1;
    v12 = (*v11 << v10) | ((-65535 << v10) - 1) & v9;
    v13 = v10 + 16;
    if ((v10 + 16) >= 0x20u)
    {
      goto LABEL_23;
    }

    if (countAndFlagsBits == v5)
    {
      goto LABEL_21;
    }

    countAndFlagsBits = v11 + 2;
    v12 = (v11[1] << v13) | ((-65535 << v13) - 1) & v12;
    v13 = v10 + 32;
    if (v10 < 0xE0)
    {
LABEL_23:
      LOBYTE(v10) = v13;
    }

    else if (countAndFlagsBits == v5 || (countAndFlagsBits = v11 + 3, v12 = (v11[2] << v10) | ((-65535 << v10) - 1) & v12, v13 = v10 + 48, LOBYTE(v10) = v10 + 48, v10 < 0x20u))
    {
LABEL_21:
      LOBYTE(v10) = v13;
      if (!v13)
      {
        goto LABEL_40;
      }
    }

LABEL_28:
    v14 = v12 & 0xFC00FC00;
    if ((v12 & 0xFC00FC00) == 0xDC00D800)
    {
      v15 = 32;
    }

    else
    {
      v15 = 16;
    }

    v6 = v10 - v15;
    v16 = v14 == -603924480;
    if (v14 == -603924480)
    {
      v17 = 32;
    }

    else
    {
      v17 = 16;
    }

    v9 = v12 >> v17;
    if (!v16)
    {
      *(a3 + 8) = v9;
      *(a3 + 12) = v6;
      sub_1002755A0();
      swift_allocError();
      *v19 = 0;
      *(v19 + 4) = 1;
      result._countAndFlagsBits = swift_willThrow();
      return result._countAndFlagsBits;
    }

LABEL_10:
    *(a3 + 8) = v9;
    *(a3 + 12) = v6;
    v7 = *(a3 + 24);
    v21._countAndFlagsBits = *(a3 + 16);
    v21._object = v7;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0xE000000000000000;
    result._countAndFlagsBits = sub_1004A58C4();
    object = v21._object;
    *(a3 + 16) = v21._countAndFlagsBits;
    *(a3 + 24) = object;
  }

  if ((v9 & 0xF800) == 0xD800)
  {
    if (!countAndFlagsBits)
    {
      goto LABEL_27;
    }

    v11 = countAndFlagsBits;
    if (countAndFlagsBits == v5)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

  sub_1001F6FF4();
  result._countAndFlagsBits = UnsafeExtractedAttachment.part.modify();
  v18 = *(result._object + 4);
  if (v18)
  {
    *result._object = *(result._object + 1);
    *(result._object + 4) = v18 - 16;
    (result._countAndFlagsBits)(&v21, 0);
    LODWORD(v9) = v22;
    v6 = v23;
    goto LABEL_10;
  }

  __break(1u);
LABEL_42:
  __break(1u);
  return result._countAndFlagsBits;
}

unint64_t sub_1002A80EC()
{
  result = qword_1005D6BE8;
  if (!qword_1005D6BE8)
  {
    v3 = sub_10000DEFC(&qword_1005D6BE0, &qword_1004ED6D0);
    result = swift_getWitnessTable(&protocol conformance descriptor for UnsafeBufferPointer<A>, v3, v0, v1);
    atomic_store(result, &qword_1005D6BE8);
  }

  return result;
}

void sub_1002A8150(char *a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v7 = a3 >> 14;
  v32 = a2 >> 14;
  if (a2 >> 14 == a3 >> 14)
  {
    v8 = 0;
    goto LABEL_54;
  }

  v11 = a2;
  v28 = a6;
  v12 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v12) = 1;
  }

  v13 = 4 << v12;
  v29 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v30 = a5 & 0xFFFFFFFFFFFFFFLL;
  v14 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(a5) & 0xF;
  }

  v31 = v14;
  v27 = a1 + 2;

  v8 = 0;
  v36 = v13;
  do
  {
    v15 = v11 & 0xC;
    v16 = (v11 & 1) == 0 || v15 == v13;
    v17 = v16;
    if (v16)
    {
      v18 = v11;
      if (v15 == v13)
      {
        v18 = sub_10010C210(v11, a4, a5);
      }

      if (v18 >> 14 < v32 || v18 >> 14 >= v7)
      {
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        return;
      }

      if ((v18 & 1) == 0)
      {
        sub_1001E1418(v18, a4, a5);
      }
    }

    else if (v11 >> 14 < v32 || v11 >> 14 >= v7)
    {
      goto LABEL_56;
    }

    if ((a5 & 0x1000000000000000) != 0)
    {
      v19 = sub_1004A6714();
      if (!v17)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if ((a5 & 0x2000000000000000) != 0)
      {
        v33 = a4;
        v34 = v30;
      }

      else if ((a4 & 0x1000000000000000) == 0)
      {
        sub_1004A67E4();
      }

      v19 = sub_1004A67F4();
      if (!v17)
      {
LABEL_29:
        if (v31 <= v11 >> 16)
        {
          goto LABEL_58;
        }

LABEL_37:
        if ((a5 & 0x1000000000000000) != 0)
        {
          goto LABEL_47;
        }

        goto LABEL_38;
      }
    }

    if (v15 == v36)
    {
      v11 = sub_10010C210(v11, a4, a5);
    }

    if (v31 <= v11 >> 16)
    {
      goto LABEL_57;
    }

    if (v11)
    {
      goto LABEL_37;
    }

    v11 = v11 & 0xC | sub_1001E1418(v11, a4, a5) & 0xFFFFFFFFFFFFFFF3 | 1;
    if ((a5 & 0x1000000000000000) != 0)
    {
LABEL_47:
      v11 = sub_1004A5884();
      goto LABEL_48;
    }

LABEL_38:
    v20 = v11 >> 16;
    if ((a5 & 0x2000000000000000) != 0)
    {
      v33 = a4;
      v34 = v30;
      v22 = *(&v33 + v20);
    }

    else
    {
      v21 = v29;
      if ((a4 & 0x1000000000000000) == 0)
      {
        v21 = sub_1004A67E4();
      }

      v22 = *(v21 + v20);
    }

    v23 = v22;
    v24 = __clz(v22 ^ 0xFF) - 24;
    if (v23 >= 0)
    {
      LOBYTE(v24) = 1;
    }

    v11 = ((v20 + v24) << 16) | 5;
LABEL_48:
    if (v19 >= 0x10000)
    {
      *&a1[2 * v8] = ((v19 + 983040) >> 10) & 0x3FF | 0xD800;
      v19 = (((v19 + 983040) >> 10) & 0x3FF | ((v19 & 0x3FF) << 16) | 0xDC00D800) >> 16;
      v25 = v27;
      v26 = 2;
    }

    else
    {
      v25 = a1;
      v26 = 1;
    }

    *&v25[2 * v8] = v19;
    v8 += v26;
    v13 = v36;
  }

  while (v7 != v11 >> 14);

  a6 = v28;
  if (v8 < 0)
  {
    goto LABEL_59;
  }

LABEL_54:
  sub_1002A6E60(a1, v8, a6, &v35);
}

uint64_t sub_1002A84A8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result == a2)
  {
LABEL_2:
    if (result == a2)
    {
      return result;
    }

    v4 = a4 - a3;
    if (!a3)
    {
      v4 = 0;
    }

    while (1)
    {
      v5 = a2 - 1;
      if (__OFSUB__(a2, 1))
      {
        break;
      }

      if (v5 >= a2 || v5 < result || v5 < 0 || v5 >= v4)
      {
        goto LABEL_28;
      }

      v6 = *(a3 + v5);
      v7 = v6 > 0x20;
      v8 = (1 << v6) & 0x100002600;
      if (!v7 && v8 != 0)
      {
        --a2;
        if (result != v5)
        {
          continue;
        }
      }

      return result;
    }
  }

  else
  {
    if (a2 <= result)
    {
      v10 = result;
    }

    else
    {
      v10 = a2;
    }

    while (v10 != result)
    {
      v11 = *(a3 + result);
      v7 = v11 > 0x20;
      v12 = (1 << v11) & 0x100002600;
      if (v7 || v12 == 0)
      {
        goto LABEL_2;
      }

      if (a2 == ++result)
      {
        return a2;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1002A8574(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result == a2)
  {
    v4 = 0;
    return v4 | ((result == a2) << 8);
  }

  v5 = a2 - 1;
  if (__OFSUB__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    v6 = a4 - a3;
    if (!a3)
    {
      v6 = 0;
    }

    if (v5 < a2 && v5 >= result && (v5 & 0x8000000000000000) == 0 && v5 < v6)
    {
      v4 = *(a3 + v5);
      return v4 | ((result == a2) << 8);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002A85D8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (a6)
  {
    v7 = a7 - a6;
  }

  else
  {
    v7 = 0;
  }

  if (a4 < 0 || v7 < a4)
  {
    goto LABEL_18;
  }

  if (a5 < 0 || v7 < a5)
  {
    goto LABEL_19;
  }

  if (a5 - a4 < a2)
  {
    return 0;
  }

  v8 = a4 + a2;
  if (__OFADD__(a4, a2))
  {
    goto LABEL_20;
  }

  if ((v8 & 0x8000000000000000) != 0 || v7 < v8)
  {
    goto LABEL_21;
  }

  if (v8 < a4)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v8 <= a5)
  {
    return sub_1002A865C(a1, a2, a3, a4, a4 + a2, a6, a7, v8);
  }

LABEL_23:
  __break(1u);
  return a1;
}

unint64_t sub_1002A865C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X8>)
{
  if (a3)
  {
    a8 = HIDWORD(a1);
    if (!HIDWORD(a1))
    {
      a8 = a1 & 0xFFFFF800;
      v15 = 55296;
      if (a8 == 55296)
      {
        __break(1u);
LABEL_55:
        v27 = (v15 | (a1 >> 6) & 0x3F) << 8;
        v28 = (a1 >> 18) + ((v27 | (a1 >> 12) & 0x3F) << 8) - 2122219023;
        v29 = (a1 >> 12) + v27 + 8487393;
        if (a8)
        {
          v16 = v28;
        }

        else
        {
          v16 = v29;
        }

LABEL_26:
        v17 = 4 - (__clz(v16) >> 3);
        v30 = (v16 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * v17));
        v18 = &v30;
        v19 = &v30 | v17;
        a8 = a7 - a6;
        if (a6)
        {
          v20 = a7 - a6;
        }

        else
        {
          v20 = 0;
        }

        v21 = a4;
        while (1)
        {
          if (v21 == a5)
          {
            v22 = 0;
            v23 = a5;
            if (v19 != v18)
            {
              goto LABEL_32;
            }
          }

          else
          {
            if (v21 < a4 || v21 >= a5)
            {
              goto LABEL_47;
            }

            if (v21 < 0 || v21 >= v20)
            {
              goto LABEL_48;
            }

            v23 = v21 + 1;
            v22 = *(a6 + v21) | 0x20;
            if (v19 != v18)
            {
LABEL_32:
              v25 = (v18 + 1);
              v24 = *v18;
              if (v21 == a5)
              {
                return v19 == v18;
              }

              goto LABEL_40;
            }
          }

          v24 = 0;
          v25 = v18;
          if (v21 == a5)
          {
            return v19 == v18;
          }

LABEL_40:
          a8 = 0;
          if (v19 != v18)
          {
            v18 = v25;
            v21 = v23;
            if (v22 == v24)
            {
              continue;
            }
          }

          return a8;
        }
      }

      a8 = a1 >> 16;
      if (a1 >> 16 <= 0x10)
      {
        if (a1 <= 0x7F)
        {
          v16 = a1 + 1;
          goto LABEL_26;
        }

        goto LABEL_52;
      }

LABEL_51:
      __break(1u);
LABEL_52:
      v15 = (a1 & 0x3F) << 8;
      if (a1 < 0x800)
      {
        v16 = (a1 >> 6) + v15 + 33217;
        goto LABEL_26;
      }

      goto LABEL_55;
    }

LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (!a1)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v8 = a1 + a2;
  a8 = a7 - a6;
  if (a6)
  {
    v9 = a7 - a6;
  }

  else
  {
    v9 = 0;
  }

  v10 = a4;
  do
  {
    if (v10 == a5)
    {
      v11 = 0;
      v12 = a5;
      goto LABEL_14;
    }

    if (v10 < a4 || v10 >= a5)
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    if (v10 < 0 || v10 >= v9)
    {
      goto LABEL_46;
    }

    v12 = v10 + 1;
    v11 = *(a6 + v10) | 0x20;
LABEL_14:
    a8 = v8 == a1;
    if (v8 == a1)
    {
      v13 = 0;
      v14 = a1;
      if (v10 == a5)
      {
        return a8;
      }
    }

    else
    {
      v14 = a1 + 1;
      v13 = *a1;
      if (v10 == a5)
      {
        return a8;
      }
    }

    a8 = 0;
    if (v8 == a1)
    {
      break;
    }

    a1 = v14;
    v10 = v12;
  }

  while (v11 == v13);
  return a8;
}

uint64_t sub_1002A88B8(uint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  if (result)
  {
    v3 = a2 - result;
  }

  else
  {
    v3 = 0;
  }

  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3(0);
    if (v5)
    {
      return v5 + v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002A890C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result == a2)
  {
LABEL_2:
    if (result == a2)
    {
      return result;
    }

    v4 = a4 - a3;
    if (!a3)
    {
      v4 = 0;
    }

    while (1)
    {
      v5 = a2 - 1;
      if (__OFSUB__(a2, 1))
      {
        break;
      }

      if (v5 >= a2 || v5 < result || v5 < 0 || v5 >= v4)
      {
        goto LABEL_30;
      }

      v6 = *(a3 + v5);
      if (v6 == 32 || v6 == 9)
      {
        --a2;
        if (result != v5)
        {
          continue;
        }
      }

      return result;
    }
  }

  else
  {
    if (a2 <= result)
    {
      v8 = result;
    }

    else
    {
      v8 = a2;
    }

    while (v8 != result)
    {
      v9 = *(a3 + result);
      if (v9 != 32 && v9 != 9)
      {
        goto LABEL_2;
      }

      if (a2 == ++result)
      {
        return a2;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1002A89B0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    v7 = a4 - a3;
  }

  else
  {
    v7 = 0;
  }

  if (v7 < 0)
  {
    goto LABEL_44;
  }

  v8 = 0;
  if (!v7)
  {
LABEL_33:
    if (result)
    {
      v16 = v8 + result;
    }

    else
    {
      v16 = 0;
    }

    if (result)
    {
      v17 = v8;
    }

    else
    {
      v17 = 0;
    }

    return sub_1002A1CA8(0, v17, result, v16, a5, a6, a7);
  }

  v9 = 0;
  while (1)
  {
    if (v7 < v9 + 1)
    {
      goto LABEL_42;
    }

    v10 = *(a3 + v9);
    if (v10 == 37)
    {
      break;
    }

    ++v9;
LABEL_30:
    *(result + v8) = v10;
    if (__OFADD__(v8++, 1))
    {
      goto LABEL_43;
    }

    if (v9 == v7)
    {
      goto LABEL_32;
    }
  }

  if (v9 + 1 == v7)
  {
LABEL_32:
    if (v8 < 0)
    {
      goto LABEL_45;
    }

    goto LABEL_33;
  }

  v9 += 3;
  while (v7 >= v9 - 1)
  {
    if (v9 - v7 == 1)
    {
      goto LABEL_32;
    }

    if (v7 < v9)
    {
      goto LABEL_41;
    }

    v11 = *(a3 + v9 - 2);
    v12 = *(a3 + v9 - 1);
    if ((v11 - 58) > 0xF5u)
    {
      v13 = -48;
    }

    else if ((v11 - 71) > 0xF9u)
    {
      v13 = -55;
    }

    else
    {
      if ((v11 - 103) <= 0xF9u)
      {
        goto LABEL_23;
      }

      v13 = -87;
    }

    if ((v12 - 58) > 0xF5u)
    {
      v14 = -48;
LABEL_29:
      LOBYTE(v10) = (v12 + v14) | (16 * (v11 + v13));
      goto LABEL_30;
    }

    if ((v12 - 71) > 0xF9u)
    {
      v14 = -55;
      goto LABEL_29;
    }

    if ((v12 - 103) >= 0xFAu)
    {
      v14 = -87;
      goto LABEL_29;
    }

LABEL_23:
    v9 += 2;
    if (v9 - v7 == 2)
    {
      goto LABEL_32;
    }
  }

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
  return result;
}

uint64_t sub_1002A8B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, unsigned __int8 *a4@<X4>, unsigned __int8 *a5@<X5>, char a6@<W6>, uint64_t a7@<X7>, _BYTE *a8@<X8>, void *a9, uint64_t a10)
{
  v12 = sub_1002A8E40(a1, a2, a3, a4, a5, a6 & 1, a7, a9, a10);

  if (!v10)
  {
    *a8 = v12 & 1;
  }

  return result;
}

uint64_t sub_1002A8BCC(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (result)
  {
    v4 = a2 - result;
  }

  else
  {
    v4 = 0;
  }

  if (v4 < 0)
  {
LABEL_90:
    __break(1u);
    return result;
  }

  if (v4)
  {
    v7 = result;
    result = 0;
    while (1)
    {
      if (result != v4)
      {
        if (v4 <= result)
        {
          v8 = result;
        }

        else
        {
          v8 = v4;
        }

        v9 = result;
        while (v8 != v9)
        {
          v10 = *(v7 + v9);
          if (v10 == 13 || v10 == 10)
          {
            v12 = 0;
            if (v9 < result)
            {
              goto LABEL_81;
            }

            goto LABEL_22;
          }

          if (v4 == ++v9)
          {
            goto LABEL_19;
          }
        }

        goto LABEL_78;
      }

LABEL_19:
      v12 = 1;
      v9 = v4;
      if (v4 < result)
      {
        goto LABEL_81;
      }

LABEL_22:
      if (v4 < v9)
      {
        goto LABEL_82;
      }

      if (result == v9)
      {
        v13 = 0;
      }

      else
      {
        v14 = v9 - 1;
        if (__OFSUB__(v9, 1))
        {
          goto LABEL_87;
        }

        if (v14 >= v9 || v14 >= v4 || v14 < result)
        {
          goto LABEL_88;
        }

        v15 = *(v7 + v14);
        v13 = v15 == 32 || v15 == 9;
      }

      sub_100269F84(result, v9, v7, a2, a4 & 1);
      sub_1004A5994(v26);

      v17 = v9;
      if ((v12 & 1) == 0)
      {
        while (1)
        {
          if (v4 == v17)
          {
            __break(1u);
            goto LABEL_77;
          }

          v18 = *(v7 + v17);
          if (v18 != 13 && v18 != 10)
          {
            break;
          }

          if (v4 == ++v17)
          {
            v17 = v4;
            break;
          }
        }

        v20 = v17 < v9;
        v9 = v17;
        if (v20)
        {
          goto LABEL_80;
        }
      }

      if (v4 < v9)
      {
        goto LABEL_83;
      }

      if (v13)
      {
        break;
      }

      result = v4;
      v23 = v9;
      if (v9 != v4)
      {
        while (1)
        {
          if (v4 == v23)
          {
            goto LABEL_79;
          }

          v24 = *(v7 + v23);
          if (v24 != 32 && v24 != 9)
          {
            break;
          }

          if (v4 == ++v23)
          {
            result = v4;
            if (v4 < v9)
            {
              goto LABEL_86;
            }

            goto LABEL_70;
          }
        }

        result = v23;
        if (v23 < v9)
        {
          goto LABEL_86;
        }

LABEL_70:
        if (v4 < result)
        {
          goto LABEL_89;
        }
      }

      if (v9 < result)
      {
        v20 = result-- < 1;
        if (v20)
        {
          __break(1u);
          return result;
        }
      }

LABEL_7:
      if (result == v4)
      {
        return result;
      }
    }

    result = v9;
    if (v9 == v4)
    {
      return result;
    }

    while (v4 != result)
    {
      v21 = *(v7 + result);
      if (v21 != 32 && v21 != 9)
      {
        goto LABEL_56;
      }

      if (v4 == ++result)
      {
        result = v4;
LABEL_56:
        if (result < v9)
        {
          goto LABEL_84;
        }

        if (v4 >= result)
        {
          goto LABEL_7;
        }

        goto LABEL_85;
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
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  return result;
}

uint64_t sub_1002A8E40(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 *a4, unsigned __int8 *a5, char a6, uint64_t a7, void *a8, uint64_t a9)
{
  if (a2)
  {
    v9 = a3 - a2;
  }

  else
  {
    v9 = 0;
  }

  if (v9 < 0)
  {
    goto LABEL_40;
  }

  v14 = 0;
  if (!v9)
  {
LABEL_33:
    v22 = v14 + result;
    if (!result)
    {
      v22 = 0;
      v14 = 0;
    }

    v25[0] = 0;
    v25[1] = v14;
    v25[2] = result;
    v25[3] = v22;
    v26 = 0;

    sub_1002A28F4(v25, a4, a5, a6 & 1, a8, a9);
    v24 = v23;

    return v24 & 1;
  }

  v15 = 0;
  while (1)
  {
    if (v9 < v15 + 1)
    {
      goto LABEL_38;
    }

    v16 = *(a2 + v15);
    if (v16 == 37)
    {
      break;
    }

    ++v15;
LABEL_30:
    *(result + v14) = v16;
    if (__OFADD__(v14++, 1))
    {
      goto LABEL_39;
    }

    if (v15 == v9)
    {
      goto LABEL_32;
    }
  }

  if (v15 + 1 == v9)
  {
LABEL_32:
    if (v14 < 0)
    {
      goto LABEL_41;
    }

    goto LABEL_33;
  }

  v15 += 3;
  while (v9 >= v15 - 1)
  {
    if (v15 - v9 == 1)
    {
      goto LABEL_32;
    }

    if (v9 < v15)
    {
      goto LABEL_37;
    }

    v17 = *(a2 + v15 - 2);
    v18 = *(a2 + v15 - 1);
    if ((v17 - 58) > 0xF5u)
    {
      v19 = -48;
    }

    else if ((v17 - 71) > 0xF9u)
    {
      v19 = -55;
    }

    else
    {
      if ((v17 - 103) <= 0xF9u)
      {
        goto LABEL_23;
      }

      v19 = -87;
    }

    if ((v18 - 58) > 0xF5u)
    {
      v20 = -48;
LABEL_29:
      LOBYTE(v16) = (v18 + v20) | (16 * (v17 + v19));
      goto LABEL_30;
    }

    if ((v18 - 71) > 0xF9u)
    {
      v20 = -55;
      goto LABEL_29;
    }

    if ((v18 - 103) >= 0xFAu)
    {
      v20 = -87;
      goto LABEL_29;
    }

LABEL_23:
    v15 += 2;
    if (v15 - v9 == 2)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_1002A904C(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4, char a5, uint64_t a6, void *a7, uint64_t a8)
{
  v27 = a8;
  if (!a1)
  {
    swift_bridgeObjectRetain_n();
    isStackAllocationSafe = swift_retain_n();
LABEL_8:
    __chkstk_darwin(isStackAllocationSafe);
    v22 = v26 - v21;

    v23 = v22;
    v24 = v26[1];
    v20 = sub_1002A8E40(v23, a1, a2, a3, a4, a5 & 1, a6, a7, v27);

    if (!v24)
    {

      goto LABEL_12;
    }

    swift_willThrow();
LABEL_10:
  }

  v16 = a2 - a1;
  if (a2 - a1 < 0)
  {
    __break(1u);
  }

  v17 = v8;
  swift_bridgeObjectRetain_n();
  isStackAllocationSafe = swift_retain_n();
  if (v16 < 1025)
  {
    goto LABEL_8;
  }

  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (isStackAllocationSafe)
  {
    goto LABEL_8;
  }

  v19 = swift_slowAlloc();

  sub_1002A8B3C(v19, a1, a2, a3, a4, a5 & 1, a6, &v28, a7, v27);

  if (v17)
  {
    goto LABEL_10;
  }

  v20 = v28;
LABEL_12:

  return v20 & 1;
}

void sub_1002A92B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_1004A6FD4();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = 0;
  v43 = 0xE000000000000000;
  v11 = sub_1002881FC(a1, a2, a3, a4);
  sub_1004A5874(v11);
  v12 = 0;
  LODWORD(v13) = 0;
  v14 = 0;
  v15 = a4 - a3;
  if (!a3)
  {
    v15 = 0;
  }

  v36 = a3;
  v37 = v15;
  v16 = (v8 + 8);
  v31 = 8 * a2;
  v34 = xmmword_1004ED250;
  v33 = xmmword_1004ED260;
  v32 = xmmword_1004ED270;
  v17 = a1;
  v18 = a1;
  while (1)
  {
    while (1)
    {
      v19 = v12;
      v40 = v13;
      v41 = v14;
      if (!v14)
      {
        break;
      }

      if ((v13 & 0x80) == 0)
      {
        sub_1002A57BC();
        v29 = UnsafeExtractedAttachment.part.modify();
        sub_1002A5810(0);
        (v29)(&v38, 0);
        goto LABEL_53;
      }

LABEL_13:
      if (v18 == a2)
      {
        v18 = a2;
        goto LABEL_49;
      }

      if (v18 < v17 || v18 >= a2)
      {
        goto LABEL_71;
      }

      if (v18 < 0 || v18 >= v37)
      {
        goto LABEL_72;
      }

      v21 = v18 + 1;
      LODWORD(v13) = (*(v36 + v18) << v14) | ((-255 << v14) - 1) & v13;
      v22 = v14 + 8;
      if ((v14 + 8) > 0x1Fu)
      {
LABEL_47:
        v14 = v22;
LABEL_48:
        v18 = v21;
        goto LABEL_49;
      }

      if (v21 != a2)
      {
        if (v18 < v17 || v21 >= a2)
        {
          goto LABEL_71;
        }

        if (v18 < 0 || v21 >= v37)
        {
          goto LABEL_72;
        }

        v23 = *(v36 + v21);
        v21 = v18 + 2;
        LODWORD(v13) = (v23 << v22) | ((-255 << v22) - 1) & v13;
        v22 = v14 + 16;
        if ((v14 + 16) > 0x1Fu)
        {
          goto LABEL_47;
        }

        if (v21 != a2)
        {
          if (v18 < v17 || v21 >= a2)
          {
            goto LABEL_71;
          }

          if (v18 < 0 || v21 >= v37)
          {
            goto LABEL_72;
          }

          v24 = *(v36 + v21);
          v21 = v18 + 3;
          LODWORD(v13) = (v24 << v22) | ((-255 << v22) - 1) & v13;
          v22 = v14 + 24;
          if ((v14 + 24) > 0x1Fu)
          {
            goto LABEL_47;
          }

          if (v21 != a2)
          {
            if (v18 < v17 || v21 >= a2)
            {
              goto LABEL_71;
            }

            if (v18 < 0 || v21 >= v37)
            {
              goto LABEL_72;
            }

            v25 = *(v36 + v21);
            v21 = v18 + 4;
            LODWORD(v13) = (v25 << v22) | ((-255 << v22) - 1) & v13;
            if (v14 < 0xE0u)
            {
              v14 += 32;
              goto LABEL_48;
            }

            if (v21 != a2)
            {
              if (v18 < v17 || v21 >= a2)
              {
                goto LABEL_71;
              }

              if (v18 < 0 || v21 >= v37)
              {
                goto LABEL_72;
              }

              LODWORD(v13) = (*(v36 + v21) << v14) | ((-255 << v14) - 1) & v13;
              if ((v14 + 40) >= 0x20u)
              {
                v18 += 5;
                v14 += 40;
                goto LABEL_49;
              }
            }
          }
        }
      }

      v14 = v31 + v14 - 8 * v18;
      v18 = a2;
      if (!v14)
      {
        return;
      }

LABEL_49:
      if ((v13 & 0xC0E0) == 0x80C0)
      {
        if ((v13 & 0x1E) != 0)
        {
          v26 = 16;
LABEL_52:
          v40 = v13 >> v26;
          v41 = v14 - v26;
          goto LABEL_53;
        }
      }

      else if ((v13 & 0xC0C0F0) == 0x8080E0)
      {
        if ((v13 & 0x200F) != 0 && (v13 & 0x200F) != 0x200D)
        {
          v26 = 24;
          goto LABEL_52;
        }
      }

      else if ((v13 & 0xC0C0C0F8) == 0x808080F0 && (v13 & 0x3007) != 0 && __rev16(v13 & 0x3007) <= 0x400)
      {
        v26 = 32;
        goto LABEL_52;
      }

      v28 = sub_1004A6FB4();
      v12 = 0;
      v13 = v13 >> ((8 * v28) & 0x38);
      v14 -= 8 * v28;
    }

    if (v18 == a2)
    {
      return;
    }

    if (v18 < v17 || v18 >= a2)
    {
      break;
    }

    if (v18 < 0 || v18 >= v37)
    {
      goto LABEL_70;
    }

    v20 = *(v36 + v18++);
    if ((v20 & 0x80) != 0)
    {
      LODWORD(v13) = v13 & 0xFFFFFF00 | v20;
      v14 = 8;
      goto LABEL_13;
    }

LABEL_53:
    LODWORD(v13) = v40;
    v14 = v41;
    sub_1004A6FE4();
    v27 = sub_1004A6FC4();
    (*v16)(v10, v35);
    if (v27)
    {
      v12 = 1;
      if ((v19 & 1) == 0)
      {
        v44._countAndFlagsBits = 32;
        v44._object = 0xE100000000000000;
        sub_1004A5994(v44);
        v12 = 1;
      }
    }

    else
    {
      v38 = v42;
      v39 = v43;
      sub_1004A58C4();
      v12 = 0;
      v42 = v38;
      v43 = v39;
    }
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
}

uint64_t sub_1002A98C8()
{
  v1 = v0[1] >> 14;
  if (v1 == *v0 >> 14)
  {
    return 0;
  }

  v3 = sub_1004A63F4();

  v4 = sub_1004A63B4();

  if (v1 < v4 >> 14)
  {
    __break(1u);
  }

  else
  {
    v5 = sub_1004A6404();
    v7 = v6;
    v9 = v8;
    v11 = v10;

    *v0 = v5;
    v0[1] = v7;
    v0[2] = v9;
    v0[3] = v11;
    return v3;
  }

  return result;
}

unint64_t sub_1002A99C0()
{
  v14 = *v0;

  sub_1002A98C8();

  v1 = v0[1] >> 14;
  if (v1 == *v0 >> 14)
  {
    goto LABEL_9;
  }

  while (sub_1004A63F4() != 93 || v2 != 0xE100000000000000)
  {
    v3 = sub_1004A6D34();

    if (v3)
    {
      goto LABEL_8;
    }

    if (v1 == sub_1004A63B4() >> 14)
    {
      goto LABEL_9;
    }
  }

LABEL_8:
  v4 = sub_1004A63B4() >> 14;
  if (v1 < v4)
  {
LABEL_9:

    return 0;
  }

  else
  {
    v6 = sub_1004A6404();
    v8 = v7;
    v10 = v9;
    v12 = v11;

    *v0 = v6;
    v0[1] = v8;
    result = v14;
    v0[2] = v10;
    v0[3] = v12;
    if (v4 >= v14 >> 14)
    {
      v13 = sub_1004A6404();

      return v13;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1002A9B90()
{
  v2 = *v0;
  v1 = v0[1];
  if ((v1 ^ *v0) < 0x4000)
  {
    return;
  }

  v4 = v0[2];
  v3 = v0[3];
  if (sub_1004A63F4() == 91 && v5 == 0xE100000000000000)
  {
  }

  else
  {
    v7 = sub_1004A6D34();

    if ((v7 & 1) == 0)
    {
      return;
    }
  }

  v28 = v4;

  sub_1002A98C8();

  v9 = *v0;
  v8 = v0[1];
  if ((v8 ^ *v0) < 0x4000)
  {
LABEL_36:

    *v0 = v2;
    v0[1] = v1;
    v0[2] = v28;
    v0[3] = v3;
    return;
  }

  v26 = v2;
  v27 = v1;
  v10 = 0;
  while (v8 >> 14 != v9 >> 14)
  {
    v11 = sub_1004A63F4();
    v13 = v12;

    v14 = sub_1004A63B4();

    if (v8 >> 14 < v14 >> 14)
    {
      goto LABEL_44;
    }

    v9 = sub_1004A6404();
    v8 = v15;
    v17 = v16;
    v19 = v18;

    v20 = v19;
    if (v11 == 2573 && v13 == 0xE200000000000000 || (sub_1004A6D34() & 1) != 0)
    {

      goto LABEL_41;
    }

    if ((v13 & 0x2000000000000000) != 0)
    {
      v21 = HIBYTE(v13) & 0xF;
    }

    else
    {
      v21 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (!v21)
    {
      goto LABEL_45;
    }

    if ((v13 & 0x1000000000000000) != 0)
    {
      v22 = sub_1004A5884();
    }

    else
    {
      v22 = sub_1004A6704(0) << 16;
    }

    if (v22 >> 14 != 4 * v21)
    {
      goto LABEL_34;
    }

    v23 = sub_1001E11BC(v11, v13);
    if ((v23 & 0x100000000) != 0)
    {
      goto LABEL_47;
    }

    if ((v23 & 0xFFFFFF80) != 0)
    {
LABEL_34:

LABEL_35:
      *v0 = v9;
      v0[1] = v8;
      v0[2] = v17;
      v0[3] = v20;
      v1 = v27;
      v2 = v26;
      goto LABEL_36;
    }

    v24 = sub_1001E11BC(v11, v13);
    if ((v24 & 0x100000000) != 0)
    {
      goto LABEL_48;
    }

    v25 = v24;

    if ((v25 & 0xFFFFFF00) != 0)
    {
      goto LABEL_46;
    }

    if (v25 == 93)
    {
      *v0 = v9;
      v0[1] = v8;
      v0[2] = v17;
      v0[3] = v20;
      if (v10)
      {

        return;
      }

LABEL_41:

      *v0 = v26;
      v0[1] = v27;
      v0[2] = v28;
      v0[3] = v3;
      return;
    }

    if (v25 <= 0x2Fu || v25 >= 0x40u)
    {
      goto LABEL_41;
    }

    v10 = 1;
    if ((v9 ^ v8) < 0x4000)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

uint64_t sub_1002A9EAC(__n128 a1)
{
  v1 = sub_1004A4544();
  sub_1001C2074(v1, qword_1005D6BF0);
  sub_1001C203C(v1, qword_1005D6BF0);
  return sub_1004A4524();
}

unint64_t sub_1002A9F18(uint64_t a1, unint64_t a2)
{
  v2 = sub_10000C9C0(&qword_1005D6C08, &qword_1004ED750);
  __chkstk_darwin(v2 - 8);
  v4 = &v132 - v3;
  v5 = sub_1004A5AB4();
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = 0;
  v149 = v5;
  v150 = v7;
  v13 = &unk_1005AAF20;
  v14 = 1;
  v151 = v9;
  v152 = v11;
  v15 = _swiftEmptyArrayStorage;
  v139 = v4;
LABEL_2:
  while (2)
  {
    v133 = v15;
    v16 = v12;
    v12 = v14;
    v134 = v16;
LABEL_3:
    while (2)
    {
      v17 = v149;
      v18 = v150;
      v20 = v151;
      v19 = v152;
      while (1)
      {
        v21 = v18 >> 14;
        v141 = v17 >> 14;
        if (v17 >> 14 == v18 >> 14)
        {
          v21 = v17 >> 14;
          goto LABEL_9;
        }

        sub_1004A63F4();
        v22 = sub_1004A5594();

        if ((v22 & 1) == 0)
        {
          break;
        }

        sub_1004A63F4();

        v23 = sub_1004A63B4();

        if (v21 < v23 >> 14)
        {
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
          return result;
        }

        v17 = sub_1004A6404();
        v18 = v25;
        v20 = v26;
        v28 = v27;

        v19 = v28;
        v149 = v17;
        v150 = v18;
        v151 = v20;
        v152 = v28;
      }

      if (sub_1004A63F4() != 91 || v57 != 0xE100000000000000)
      {
        v59 = sub_1004A6D34();

        if (v59)
        {
          goto LABEL_34;
        }

LABEL_9:
        v137 = v19;
        v138 = v21;
        HIDWORD(v132) = v12;
        v29 = 36;
        v142 = v20;
        v140 = v18;
        do
        {
          v31 = *(v13 - 1);
          v30 = *v13;

          sub_1004A5924();
          result = sub_1004A63D4();
          if (v32)
          {
          }

          else
          {
            v33 = result >> 14;
            if (result >> 14 < v141)
            {
              __break(1u);
LABEL_89:
              __break(1u);
              goto LABEL_90;
            }

            v145 = v17;
            v146 = v18;
            v147 = v20;
            v148 = v19;
            v143 = v31;
            v144 = v30;
            v34 = qword_1005D6258;

            v35 = v19;
            if (v34 != -1)
            {
              swift_once();
            }

            v36 = sub_1004A4544();
            v37 = sub_1001C203C(v36, qword_1005D6BF0);
            v38 = *(v36 - 8);
            v39 = v139;
            (*(v38 + 16))(v139, v37, v36);
            (*(v38 + 56))(v39, 0, 1, v36);
            sub_1002AACE0();
            sub_1001C2190();
            v40 = sub_1004A6454();
            sub_1002AAD34(v39);

            v19 = v35;
            v20 = v142;
            v18 = v140;
            if (!v40)
            {
              if (v138 < v33)
              {
                goto LABEL_91;
              }

              v145 = sub_1004A6404();
              v146 = v41;
              v147 = v42;
              v148 = v43;
              sub_1002A9B90();
              v44 = v146 >> 14;
              if (v146 >> 14 != v145 >> 14)
              {
                v135 = sub_1004A63F4();
                v136 = v45;

                v46 = sub_1004A63B4();

                if (v44 < v46 >> 14)
                {
                  goto LABEL_95;
                }

                v47 = sub_1004A6404();
                v49 = v48;
                v51 = v50;
                v53 = v52;

                v145 = v47;
                v146 = v49;
                v147 = v51;
                v148 = v53;
                v54 = v135;
                v55 = v136;
                if (v135 == 58 && v136 == 0xE100000000000000 || (sub_1004A6D34() & 1) != 0 || v54 == 10140911 && v55 == 0xA300000000000000)
                {
                  v64 = v51;

LABEL_38:

                  v149 = v47;
                  v150 = v49;
                  v16 = v134;
                  v12 = v134;
                  v151 = v64;
                  v152 = v53;
                  v13 = &unk_1005AAF20;
                  goto LABEL_3;
                }

                v56 = sub_1004A6D34();

                if (v56)
                {
                  v64 = v51;
                  goto LABEL_38;
                }
              }

              v19 = v137;
              v20 = v142;
            }
          }

          v13 += 2;
          --v29;
        }

        while (v29);
        v79 = &unk_1005AB180;
        v80 = 32;
        while (1)
        {
          v82 = *(v79 - 1);
          v81 = *v79;

          sub_1004A5924();
          result = sub_1004A63D4();
          if (v83)
          {
          }

          else
          {
            v84 = result >> 14;
            if (result >> 14 < v141)
            {
              goto LABEL_89;
            }

            v145 = v17;
            v146 = v18;
            v147 = v20;
            v148 = v19;
            v143 = v82;
            v144 = v81;
            v85 = qword_1005D6258;

            v86 = v19;
            if (v85 != -1)
            {
              swift_once();
            }

            v87 = sub_1004A4544();
            v88 = sub_1001C203C(v87, qword_1005D6BF0);
            v89 = *(v87 - 8);
            v90 = v139;
            (*(v89 + 16))(v139, v88, v87);
            (*(v89 + 56))(v90, 0, 1, v87);
            sub_1002AACE0();
            sub_1001C2190();
            v91 = sub_1004A6454();
            sub_1002AAD34(v90);

            v19 = v86;
            v20 = v142;
            v18 = v140;
            if (!v91)
            {
              if (v138 < v84)
              {
                goto LABEL_94;
              }

              v145 = sub_1004A6404();
              v146 = v92;
              v147 = v93;
              v148 = v94;
              sub_1002A9B90();
              v95 = v146 >> 14;
              if (v146 >> 14 != v145 >> 14)
              {
                v135 = sub_1004A63F4();
                v136 = v96;

                v97 = sub_1004A63B4();

                if (v95 < v97 >> 14)
                {
                  goto LABEL_96;
                }

                v98 = sub_1004A6404();
                v100 = v99;
                v102 = v101;
                v104 = v103;

                v145 = v98;
                v146 = v100;
                v147 = v102;
                v148 = v104;
                v106 = v135;
                v105 = v136;
                if (v135 == 58 && v136 == 0xE100000000000000 || (sub_1004A6D34() & 1) != 0 || v106 == 10140911 && v105 == 0xA300000000000000)
                {

                  goto LABEL_67;
                }

                v107 = v104;
                v108 = sub_1004A6D34();

                if (v108)
                {

                  v104 = v107;
LABEL_67:
                  v149 = v98;
                  v150 = v100;
                  v12 = HIDWORD(v132);
                  v14 = HIDWORD(v132);
                  v151 = v102;
                  v152 = v104;
                  v15 = v133;
                  v13 = &unk_1005AAF20;
                  goto LABEL_2;
                }
              }

              v19 = v137;
              v20 = v142;
            }
          }

          v79 += 2;
          if (!--v80)
          {
            goto LABEL_69;
          }
        }
      }

LABEL_34:
      v60 = sub_1002A99C0();
      if (v63 == 1)
      {
        sub_1002AAD9C(v60, v61, v62, 1uLL);
        v12 = v16;
        continue;
      }

      break;
    }

    if (!v63)
    {
      sub_1002AAD9C(v60, v61, v62, 0);
      v14 = v12;
      v15 = v133;
      continue;
    }

    break;
  }

  if (v63 != 2)
  {
    v65 = v13;
    v66 = v60;
    v67 = v61;
    v68 = v62;
    v69 = v63;
    sub_1002AADC0(v60, v61, v62, v63);
    v70 = v133;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v70 = sub_1002744F0(0, *(v70 + 2) + 1, 1, v70);
    }

    v72 = *(v70 + 2);
    v71 = *(v70 + 3);
    if (v72 >= v71 >> 1)
    {
      v78 = sub_1002744F0((v71 > 1), v72 + 1, 1, v70);
      v76 = v69;
      v74 = v67;
      v73 = v68;
      v70 = v78;
      v75 = v66;
    }

    else
    {
      v73 = v68;
      v74 = v67;
      v75 = v66;
      v76 = v69;
    }

    *(v70 + 2) = v72 + 1;
    v133 = v70;
    v77 = &v70[32 * v72];
    *(v77 + 4) = v75;
    *(v77 + 5) = v74;
    *(v77 + 6) = v73;
    *(v77 + 7) = v76;
    sub_1002AAD9C(v75, v74, v73, v76);
    v16 = v134;
    v13 = v65;
    v12 = v134;
    goto LABEL_3;
  }

LABEL_69:
  v109 = v149;
  v110 = v150;
  while (1)
  {
    v111 = v109 >> 14;
    v112 = v110 >> 14;
    if (v109 >> 14 == v110 >> 14)
    {
      break;
    }

    sub_1004A63F4();
    v113 = sub_1004A5594();

    if ((v113 & 1) == 0)
    {
      v111 = v109 >> 14;
      v112 = v110 >> 14;
      break;
    }

    sub_1004A63F4();

    v114 = sub_1004A63B4();

    if (v112 < v114 >> 14)
    {
      goto LABEL_92;
    }

    v109 = sub_1004A6404();
    v110 = v115;
    v117 = v116;
    v119 = v118;

    v149 = v109;
    v150 = v110;
    v151 = v117;
    v152 = v119;
  }

  v120 = v133;
  if (v111 != v112)
  {
    do
    {
      sub_1004A63C4();
      sub_1004A63F4();
      v121 = sub_1004A5594();

      if ((v121 & 1) == 0)
      {
        break;
      }

      sub_1004A63C4();
      sub_1004A63F4();
      result = sub_1004A63C4();
      if (v111 > result >> 14)
      {
        goto LABEL_93;
      }

      v122 = sub_1004A6404();
      v124 = v123;

      v111 = v122 >> 14;
    }

    while (v122 >> 14 != v124 >> 14);
  }

  v125 = sub_1004A5864();
  v127 = v126;

  if (*(v120 + 16))
  {
    v128 = HIBYTE(v127) & 0xF;
    if ((v127 & 0x2000000000000000) == 0)
    {
      v128 = v125 & 0xFFFFFFFFFFFFLL;
    }

    if (v128)
    {
      v145 = v120;
      sub_10000C9C0(&unk_1005DA980, &unk_1004F5F00);
      sub_1002AAC7C();
      sub_1002AACE0();
      v129 = sub_1004A5BC4();
      v131 = v130;

      v145 = v129;
      v146 = v131;

      v153._countAndFlagsBits = 32;
      v153._object = 0xE100000000000000;
      sub_1004A5994(v153);

      v154._countAndFlagsBits = v125;
      v154._object = v127;
      sub_1004A5994(v154);

      return v145;
    }

    else
    {

      v145 = v120;
      sub_10000C9C0(&unk_1005DA980, &unk_1004F5F00);
      sub_1002AAC7C();
      sub_1002AACE0();
      v125 = sub_1004A5BC4();
    }
  }

  else
  {
  }

  return v125;
}

unint64_t sub_1002AAC7C()
{
  result = qword_1005D6C10;
  if (!qword_1005D6C10)
  {
    v3 = sub_10000DEFC(&unk_1005DA980, &unk_1004F5F00);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_1005D6C10);
  }

  return result;
}

unint64_t sub_1002AACE0()
{
  result = qword_1005DA990;
  if (!qword_1005DA990)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Substring, &type metadata for Substring, v0, v1);
    atomic_store(result, &qword_1005DA990);
  }

  return result;
}

uint64_t sub_1002AAD34(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D6C08, &qword_1004ED750);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002AAD9C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 != 2)
  {
    return sub_1002AADAC(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_1002AADAC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >= 2)
  {
  }

  return result;
}

double sub_1002AADC0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >= 2)
  {
  }

  return result;
}

uint64_t sub_1002AADD4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = a2 - result;
  if (!result)
  {
    v4 = 0;
  }

  if (v4 < 0)
  {
    __break(1u);
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = v4;
    *(a4 + 16) = result;
    *(a4 + 24) = a2;
    *(a4 + 32) = 0;
    *(a4 + 40) = v4;
    *(a4 + 48) = result;
    *(a4 + 56) = a2;
    *(a4 + 64) = a3;
  }

  return result;
}

unint64_t sub_1002AAE00(char a1)
{
  result = 0x6275732D6F747561;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 6513506;
      break;
    case 3:
      result = 25443;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x2D746E65746E6F63;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0xD000000000000019;
      break;
    case 9:
      result = 0x2D746E65746E6F63;
      break;
    case 10:
      result = 1702125924;
      break;
    case 11:
      result = 1836020326;
      break;
    case 12:
      result = 0x64692D7473696CLL;
      break;
    case 13:
      result = 0x2D6567617373656DLL;
      break;
    case 14:
      result = 0x7265762D656D696DLL;
      break;
    case 15:
      result = 0x69726F6972702D78;
      break;
    case 16:
      result = 0x6465766965636572;
      break;
    case 17:
      result = 0x702D6E7275746572;
      break;
    case 18:
      result = 0x7463656A627573;
      break;
    case 19:
      result = 28532;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

Swift::Int sub_1002AB064()
{
  v1 = *v0;
  sub_1004A6E94();
  sub_1002AAE00(v1);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

uint64_t sub_1002AB0C8(uint64_t a1)
{
  sub_1002AAE00(*v1);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_1002AB11C(uint64_t a1)
{
  v2 = *v1;
  sub_1004A6E94();
  sub_1002AAE00(v2);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

unint64_t sub_1002AB17C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002AC028(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1002AB1AC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1002AAE00(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1002AB1D8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1002AAE00(*a1);
  v5 = v4;
  if (v3 == sub_1002AAE00(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1004A6D34();
  }

  return v8 & 1;
}

uint64_t sub_1002AB260(char *a1, char *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v5 = (a3 + 32);
    v6 = a2 - a1;
    do
    {
      v11 = *v5++;
      v10 = v11;
      v12 = 0xEE0064657474696DLL;
      v13 = 0x6275732D6F747561;
      switch(v11)
      {
        case 1u:
          break;
        case 2u:
          v12 = 0xE300000000000000;
          v13 = 6513506;
          break;
        case 3u:
          v12 = 0xE200000000000000;
          v13 = 25443;
          break;
        case 4u:
          v13 = 0xD000000000000013;
          v12 = 0x80000001004AD3C0;
          break;
        case 5u:
          v13 = 0xD000000000000013;
          v12 = 0x80000001004AD3E0;
          break;
        case 6u:
          v13 = 0x2D746E65746E6F63;
          goto LABEL_21;
        case 7u:
          v13 = 0xD000000000000010;
          v12 = 0x80000001004AD400;
          break;
        case 8u:
          v13 = 0xD000000000000019;
          v12 = 0x80000001004AD420;
          break;
        case 9u:
          v13 = 0x2D746E65746E6F63;
          v12 = 0xEC00000065707974;
          break;
        case 0xAu:
          v12 = 0xE400000000000000;
          v13 = 1702125924;
          break;
        case 0xBu:
          v12 = 0xE400000000000000;
          v13 = 1836020326;
          break;
        case 0xCu:
          v12 = 0xE700000000000000;
          v13 = 0x64692D7473696CLL;
          break;
        case 0xDu:
          v13 = 0x2D6567617373656DLL;
LABEL_21:
          v12 = 0xEA00000000006469;
          break;
        case 0xEu:
          v13 = 0x7265762D656D696DLL;
          v12 = 0xEC0000006E6F6973;
          break;
        case 0xFu:
          v12 = 0xEA00000000007974;
          v13 = 0x69726F6972702D78;
          break;
        case 0x10u:
          v12 = 0xE800000000000000;
          v13 = 0x6465766965636572;
          break;
        case 0x11u:
          v13 = 0x702D6E7275746572;
          v12 = 0xEB00000000687461;
          break;
        case 0x12u:
          v12 = 0xE700000000000000;
          v13 = 0x7463656A627573;
          break;
        case 0x13u:
          v12 = 0xE200000000000000;
          v13 = 28532;
          break;
        default:
          v13 = 0xD000000000000016;
          v12 = 0x80000001004AD390;
          break;
      }

      if ((v12 & 0x1000000000000000) != 0)
      {
        v14 = sub_1004A59E4();

        if (a1)
        {
          goto LABEL_31;
        }
      }

      else
      {

        if ((v12 & 0x2000000000000000) != 0)
        {
          v14 = HIBYTE(v12) & 0xF;
        }

        else
        {
          v14 = v13 & 0x7F7F7F7F7F7FLL;
        }

        if (a1)
        {
LABEL_31:
          if (v14 == v6)
          {
            goto LABEL_3;
          }

          goto LABEL_4;
        }
      }

      if (!v14)
      {
LABEL_3:
        v7 = sub_1002AAE00(v10);
        v9 = sub_1002A1544(v7, v8, a1, a2, sub_100288638);

        if (v9)
        {
          return v10;
        }
      }

LABEL_4:
      --v3;
    }

    while (v3);
  }

  return 20;
}

uint64_t sub_1002AB5F8(char *a1, char *a2)
{
  v4 = sub_10027031C(0, a1, a2);
  v5 = sub_10027031C(1, a1, a2);
  v6 = sub_10027031C(2, a1, a2);
  v7 = sub_10027031C(3, a1, a2);
  v8 = v4 == 120 && v5 == 45;
  v9 = v8;
  if (v8 && v6 == 97 && v7 == 112)
  {
    v10 = a1;
    v11 = a2;
    v12 = 0;
LABEL_61:
    result = sub_10026EEE0(v10, v11, v12);
LABEL_62:
    if (result != 20)
    {
      return result;
    }

    return 20;
  }

  if (v4 <= 0x63u)
  {
    switch(v4)
    {
      case 'a':
        if (v5 == 117 && v6 == 116 && v7 == 111)
        {
          v10 = a1;
          v11 = a2;
          v12 = 1;
          goto LABEL_61;
        }

        break;
      case 'b':
        if (v5 == 99 && v6 == 99 && !v7)
        {
          v10 = a1;
          v11 = a2;
          v12 = 2;
          goto LABEL_61;
        }

        break;
      case 'c':
        if (v5 == 111)
        {
          if (v6 == 110 && v7 == 116)
          {
            result = sub_1002AB260(a1, a2, &off_1005AA778);
            goto LABEL_62;
          }
        }

        else if (v5 == 99 && !(v6 | v7))
        {
          v10 = a1;
          v11 = a2;
          v12 = 3;
          goto LABEL_61;
        }

        break;
    }
  }

  else if (v4 > 0x6Bu)
  {
    if (v4 == 108)
    {
      if (v5 == 105 && v6 == 115 && v7 == 116)
      {
        v10 = a1;
        v11 = a2;
        v12 = 12;
        goto LABEL_61;
      }
    }

    else if (v4 == 109)
    {
      if (v5 == 105)
      {
        if (v6 == 109 && v7 == 101)
        {
          v10 = a1;
          v11 = a2;
          v12 = 14;
          goto LABEL_61;
        }
      }

      else if (v5 == 101 && v6 == 115 && v7 == 115)
      {
        v10 = a1;
        v11 = a2;
        v12 = 13;
        goto LABEL_61;
      }
    }
  }

  else if (v4 == 100)
  {
    if (v5 == 97 && v6 == 116 && v7 == 101)
    {
      v10 = a1;
      v11 = a2;
      v12 = 10;
      goto LABEL_61;
    }
  }

  else if (v4 == 102 && v5 == 114 && v6 == 111 && v7 == 109)
  {
    v10 = a1;
    v11 = a2;
    v12 = 11;
    goto LABEL_61;
  }

  if (v6 != 112)
  {
    v9 = 0;
  }

  if (v9 == 1 && v7 == 114)
  {
    v10 = a1;
    v11 = a2;
    v12 = 15;
    goto LABEL_61;
  }

  if (v4 == 116)
  {
    if (v5 == 111 && !v6 && !v7)
    {
      v10 = a1;
      v11 = a2;
      v12 = 19;
      goto LABEL_61;
    }
  }

  else if (v4 == 115)
  {
    if (v5 == 117 && v6 == 98 && v7 == 106)
    {
      v10 = a1;
      v11 = a2;
      v12 = 18;
      goto LABEL_61;
    }
  }

  else if (v4 == 114 && v5 == 101)
  {
    if (v6 == 116)
    {
      if (v7 == 117)
      {
        v10 = a1;
        v11 = a2;
        v12 = 17;
        goto LABEL_61;
      }
    }

    else if (v6 == 99 && v7 == 101)
    {
      v10 = a1;
      v11 = a2;
      v12 = 16;
      goto LABEL_61;
    }
  }

  return 20;
}

void sub_1002AB9E4(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  if (a3 < 0)
  {
    __break(1u);
    goto LABEL_42;
  }

  if (!a1)
  {
    if (!a3)
    {
      v7 = 0;
      v17 = 0;
      v16 = 0;
      goto LABEL_13;
    }

    goto LABEL_43;
  }

  v6 = &a1[a3];
  v7 = a1;
  if (!a3)
  {
    goto LABEL_9;
  }

  v8 = a3 - 1;
  if (__OFSUB__(a3, 1))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v8 < 0 || v8 >= a3)
  {
LABEL_45:
    __break(1u);
    JUMPOUT(0x1002ABD38);
  }

  v9 = &a1[v8];
  v7 = &a1[a3];
  if (a1[v8] != 58 || (v10 = a1, v11 = a2, v12 = a5, v13 = a3, v14 = sub_1002AB5F8(a1, v9), a2 = v11, a3 = v13, a5 = v12, v15 = v14, a1 = v10, v7 = v9, v15 == 20))
  {
LABEL_9:
    if (a2 - a1 >= a3)
    {
      v16 = a2;
      v17 = v6;
LABEL_13:
      v18 = 0;
      v19 = a4 & 1 | 0xA000000000000000;
      v6 = a1;
      goto LABEL_14;
    }

    goto LABEL_42;
  }

  if (v11 - a1 < v13)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v7 = v11;
  v19 = 0x1000000000000000;
  v17 = 0;
  v20 = v15;
  v16 = 0;
  v18 = 0;
  switch(v20)
  {
    case 1:
      v16 = 0;
      v18 = 0;
      v17 = a4 & 1;
      v19 = 0x800000000000000;
      break;
    case 2:
      break;
    case 3:
      v17 = 0;
      v16 = 0;
      v18 = 0;
      v19 = 0x1800000000000000;
      break;
    case 4:
      v16 = 0;
      v18 = 0;
      v17 = a4 & 1;
      v19 = 0x2000000000000000;
      break;
    case 5:
      sub_1002A3EE0(v6, a2, a4 & 1);
      v16 = _swiftEmptyArrayStorage;
      if (v23)
      {
        v24 = v23;
        v6 = v21;
        v7 = v22;
        v25 = sub_10026CE10(v21, v22);
        v17 = v25 == 3;
        if (v25 != 3)
        {
          v6 = v25;
          v7 = 0;
        }

        v26[0] = _swiftEmptyArrayStorage;
        sub_1002A0DA4(v24, v26);

        v16 = v26[0];
      }

      else
      {
        v17 = 1;
      }

      v18 = 0;
      v19 = 0x2800000000000000;
      a5 = v12;
      break;
    case 6:
      v16 = 0;
      v18 = 0;
      v17 = a4 & 1;
      v19 = 0x3000000000000000;
      break;
    case 7:
      v16 = 0;
      v18 = 0;
      v17 = a4 & 1;
      v19 = 0x3800000000000000;
      break;
    case 8:
      v16 = 0;
      v18 = 0;
      v17 = a4 & 1;
      v19 = 0x4000000000000000;
      break;
    case 9:
      sub_100272054(v6, a2, v26, a4 & 1);
      a5 = v12;
      v6 = v26[0];
      v7 = v26[1];
      v17 = v26[2];
      v16 = v26[3];
      v18 = v28;
      v19 = v27 | 0x4800000000000000;
      break;
    case 10:
      v17 = 0;
      v16 = 0;
      v18 = 0;
      v19 = 0x5000000000000000;
      break;
    case 11:
      v17 = 0;
      v16 = 0;
      v18 = 0;
      v19 = 0x5800000000000000;
      break;
    case 12:
      v16 = 0;
      v18 = 0;
      v17 = a4 & 1;
      v19 = 0x6000000000000000;
      break;
    case 13:
      v16 = 0;
      v18 = 0;
      v17 = a4 & 1;
      v19 = 0x6800000000000000;
      break;
    case 14:
      v16 = 0;
      v18 = 0;
      v17 = a4 & 1;
      v19 = 0x7000000000000000;
      break;
    case 15:
      v16 = 0;
      v18 = 0;
      v17 = a4 & 1;
      v19 = 0x7800000000000000;
      break;
    case 16:
      v16 = 0;
      v18 = 0;
      v17 = a4 & 1;
      v19 = 0x8000000000000000;
      break;
    case 17:
      v16 = 0;
      v18 = 0;
      v17 = a4 & 1;
      v19 = 0x8800000000000000;
      break;
    case 18:
      v16 = 0;
      v18 = 0;
      v17 = a4 & 1;
      v19 = 0x9000000000000000;
      break;
    case 19:
      v17 = 0;
      v16 = 0;
      v18 = 0;
      v19 = 0x9800000000000000;
      break;
    default:
      v16 = 0;
      v19 = 0;
      v18 = 0;
      v17 = a4 & 1;
      break;
  }

LABEL_14:
  *a5 = v6;
  a5[1] = v7;
  a5[2] = v17;
  a5[3] = v16;
  a5[4] = v19;
  a5[5] = v18;
}

uint64_t sub_1002ABD94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 32) >> 5) & 0xFFFFFFF8 | (*(a1 + 32) >> 1) & 7;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1002ABDE8(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 48) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = (32 * -a2) & 0x1FFFFFFF00 | (2 * (-a2 & 7));
      *(a1 + 40) = 0;
      return result;
    }

    *(a1 + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UnsafeHeader.Field.Known(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UnsafeHeader.Field.Known(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1002ABFD4()
{
  result = qword_1005D6C18;
  if (!qword_1005D6C18)
  {
    result = swift_getWitnessTable(aE_5, &type metadata for UnsafeHeader.Field.Known, v0, v1);
    atomic_store(result, &qword_1005D6C18);
  }

  return result;
}

unint64_t sub_1002AC028(uint64_t a1, uint64_t a2)
{
  v2 = sub_1004A6DB4();

  if (v2 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v2;
  }
}

char *sub_1002AC09C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  result = sub_100287910(*(v0 + 64), v1, v2, v3);
  if (v8)
  {
    v9 = v2;
    if (v2 >= v1)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v9 = v7;
  if (v7 < v1)
  {
    goto LABEL_77;
  }

  if (v2 < v7)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

LABEL_6:
  *(v0 + 32) = v9;
  *(v0 + 40) = v2;
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  result = sub_100287B04(0x3Au, v1, v9, v3);
  if (v11)
  {
    return 0;
  }

  v12 = v10;
  if (v9 != v2)
  {
    v13 = v3;
    while (1)
    {
      v14 = v2 - v9;
      if (v2 <= v9)
      {
        __break(1u);
LABEL_72:
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
        goto LABEL_78;
      }

      v15 = v3 + v9;
      v16 = *(v3 + v9);
      if (v16 != 32 && v16 != 9)
      {
        goto LABEL_66;
      }

      v18 = v2;
      if (v5 > 1)
      {
        if (v5 == 2)
        {
          if (!v3)
          {
            goto LABEL_62;
          }

          result = memchr((v3 + v9), 10, v2 - v9);
          v18 = v2;
          if (!result)
          {
            goto LABEL_62;
          }

          v18 = v2;
          v21 = &result[-v15];
          if (&result[-v15] < 0)
          {
            goto LABEL_62;
          }

          v22 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            goto LABEL_82;
          }

          v18 = v2;
          if (v14 < v22)
          {
            goto LABEL_62;
          }

          if (__OFADD__(v21, v9))
          {
            goto LABEL_87;
          }

          v18 = &v22[v9];
          if (__OFADD__(v22, v9))
          {
            goto LABEL_91;
          }

          if (v22 < v21 || v18 < &v21[v9])
          {
            goto LABEL_92;
          }
        }

        else
        {
          if (!v3)
          {
            goto LABEL_62;
          }

          result = memchr((v3 + v9), 10, v2 - v9);
          v18 = v2;
          if (!result)
          {
            goto LABEL_62;
          }

          v18 = v2;
          v25 = &result[-v15];
          if (&result[-v15] < 0)
          {
            goto LABEL_62;
          }

          v26 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            goto LABEL_80;
          }

          v18 = v2;
          if (v14 < v26)
          {
            goto LABEL_62;
          }

          v27 = &v25[v9];
          if (__OFADD__(v25, v9))
          {
            goto LABEL_86;
          }

          v18 = &v26[v9];
          if (__OFADD__(v26, v9))
          {
            goto LABEL_89;
          }

          if (v26 < v25 || v18 < v27)
          {
            goto LABEL_95;
          }

          if (v9 < v27 && v27 > v2)
          {
            goto LABEL_96;
          }
        }
      }

      else if (v5)
      {
        if (!v3)
        {
          goto LABEL_62;
        }

        result = memchr((v3 + v9), 13, v2 - v9);
        v18 = v2;
        if (!result)
        {
          goto LABEL_62;
        }

        v18 = v2;
        v23 = &result[-v15];
        if (&result[-v15] < 0)
        {
          goto LABEL_62;
        }

        v24 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_81;
        }

        v18 = v2;
        if (v14 < v24)
        {
          goto LABEL_62;
        }

        if (__OFADD__(v23, v9))
        {
          goto LABEL_84;
        }

        v18 = &v24[v9];
        if (__OFADD__(v24, v9))
        {
          goto LABEL_90;
        }

        if (v24 < v23 || v18 < &v23[v9])
        {
          goto LABEL_94;
        }
      }

      else
      {
        if (!v3)
        {
          goto LABEL_62;
        }

        result = memmem((v3 + v9), v2 - v9, "\r\n", 2uLL);
        v18 = v2;
        if (!result)
        {
          goto LABEL_62;
        }

        v18 = v2;
        v19 = &result[-v15];
        if (&result[-v15] < 0)
        {
          goto LABEL_62;
        }

        v20 = v19 + 2;
        if (__OFADD__(v19, 2))
        {
          goto LABEL_83;
        }

        v18 = v2;
        if (v14 < v20)
        {
          goto LABEL_62;
        }

        if (__OFADD__(v19, v9))
        {
          goto LABEL_85;
        }

        v18 = &v20[v9];
        if (__OFADD__(v20, v9))
        {
          goto LABEL_88;
        }

        if (v20 < v19 || v18 < &v19[v9])
        {
          goto LABEL_93;
        }
      }

      if (v18 < v9)
      {
        goto LABEL_75;
      }

      if (v2 < v18)
      {
        goto LABEL_76;
      }

LABEL_62:
      *(v0 + 32) = v18;
      *(v0 + 40) = v2;
      *(v0 + 48) = v3;
      *(v0 + 56) = v4;
      if (v18 < v1)
      {
        goto LABEL_72;
      }

      if (v1 < *v0)
      {
        goto LABEL_73;
      }

      if (*(v0 + 8) < v18)
      {
        goto LABEL_74;
      }

      v13 = *(v0 + 16);
      v9 = v18;
      if (v18 == v2)
      {
LABEL_66:
        v3 = v13;
        break;
      }
    }
  }

  if (!__OFSUB__(v12, v1))
  {
    if (v3)
    {
      return (v3 + v1);
    }

    else
    {
      return 0;
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
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

uint64_t sub_1002AC420(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1002AC474(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t WatchOSHeaderInfo.cc.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t WatchOSHeaderInfo.bcc.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t WatchOSHeaderInfo.messageIDHeader.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t WatchOSHeaderInfo.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WatchOSHeaderInfo(0) + 40);
  v4 = sub_1004A44E4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for WatchOSHeaderInfo(uint64_t a1)
{
  result = qword_1005D6C78;
  if (!qword_1005D6C78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WatchOSHeaderInfo.date.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WatchOSHeaderInfo(0) + 40);
  v4 = sub_1004A44E4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WatchOSHeaderInfo.init(from:to:cc:bcc:subject:messageIDHeader:date:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  *(a9 + 6) = a7;
  *(a9 + 7) = a8;
  *(a9 + 8) = a10;
  v12 = *(type metadata accessor for WatchOSHeaderInfo(0) + 40);
  v13 = sub_1004A44E4();
  v14 = *(*(v13 - 8) + 32);

  return v14(&a9[v12], a11, v13);
}

uint64_t WatchOSHeaderInfo.init(message:cache:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10000C9C0(&qword_1005D69D0, &qword_1004EDA30);
  __chkstk_darwin(v6 - 8);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v20[-v10];
  v12 = type metadata accessor for WatchOSHeaderInfo(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v18 = &v20[-v17];
  *v18 = 0;
  v18[1] = 0;
  sub_10028DC2C(a1, a2, v11);
  sub_1002ACAB0(a1, type metadata accessor for Message);
  sub_100025FDC(v11, v8, &qword_1005D69D0, &qword_1004EDA30);
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_100025F40(v8, &qword_1005D69D0, &qword_1004EDA30);
    return (*(v13 + 56))(a3, 1, 1, v12);
  }

  else
  {
    sub_1002AC9E8(v8, v15);
    sub_1002AC9E8(v15, v18);
    sub_1002ACA4C(v18, a3);
    (*(v13 + 56))(a3, 0, 1, v12);
    return sub_1002ACAB0(v18, type metadata accessor for WatchOSHeaderInfo);
  }
}

uint64_t sub_1002AC9E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WatchOSHeaderInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002ACA4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WatchOSHeaderInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002ACAB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002ACB24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1004A44E4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1002ACBE4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1004A44E4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1002ACC88(uint64_t a1)
{
  sub_1002ACD70(319, &qword_1005D3AA0, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_1002ACD70(319, &qword_1005D6C88, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_1004A44E4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1002ACD70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for String);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1002ACE34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v111 = a4;
  v112 = a5;
  v109 = a6;
  v110 = a3;
  v8 = sub_1004A44E4();
  v107 = *(v8 - 8);
  v108 = v8;
  __chkstk_darwin(v8);
  v10 = v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v91 - v12;
  v14 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  __chkstk_darwin(v14);
  v16 = v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v91 - v18;
  __chkstk_darwin(v20);
  v22 = v91 - v21;
  __chkstk_darwin(v23);
  v25 = v91 - v24;
  sub_100296AD8(3, a1, a2, v110, v111);
  v27 = v26;
  v104 = v14;
  v105 = 0;
  v102 = v19;
  v103 = v22;
  v28 = v112;
  v93 = v13;
  v94 = v16;
  v101 = v10;
  v30 = v29;
  v32 = v31;
  v33 = v107;
  v34 = *(v107 + 56);
  v35 = v25;
  result = v34(v25, 1, 1, v108);
  if (v27 < 0)
  {
    __break(1u);
    return result;
  }

  if (v30)
  {
    v37 = v30 + v27;
  }

  else
  {
    v37 = 0;
  }

  sub_1002AADD4(v30, v37, v32, &v115);
  v38 = sub_1002AC09C();
  if (v41 == 2)
  {

    v42 = v25;
    goto LABEL_61;
  }

  v91[0] = v34;
  v91[1] = v33 + 56;
  v43 = 0;
  v44 = 0;
  v95 = 0;
  v96 = 0;
  v106 = 0;
  v100 = (v33 + 48);
  v92 = (v33 + 32);
  v45 = _swiftEmptyArrayStorage;
  v110 = _swiftEmptyArrayStorage;
  v111 = _swiftEmptyArrayStorage;
  v107 = v35;
  v46 = v28;
  v47 = 0;
  v48 = v102;
  do
  {
    sub_1002AB9E4(v38, v39, v40, v41 & 1, v116);
    v50 = v116[0];
    v49 = v116[1];
    v51 = v117 >> 59;
    if ((v117 >> 59) <= 10)
    {
      if (v51 == 2)
      {

        v45 = sub_1002AD850(v50, v49, v46);
        goto LABEL_9;
      }

      if (v51 == 3)
      {

        v111 = sub_1002AD850(v50, v49, v46);
        goto LABEL_9;
      }

      if (v51 != 10)
      {
        goto LABEL_26;
      }

      sub_10027D114(v116, v46, &v122);
      if (v124 != 10)
      {
        if (v124 == 255)
        {
          goto LABEL_9;
        }

        v52 = &v122;
        goto LABEL_38;
      }

      v98 = v44;
      v99 = v45;
      v102 = v47;
      v97 = v43;
      if ((v123 & 0x1000000000000000) == 0)
      {
        if ((v123 & 0x2000000000000000) != 0)
        {
          v68 = v100;
          v69 = v108;
          v113 = v122;
          v114 = v123 & 0xFFFFFFFFFFFFFFLL;
          v70 = &v113;
          goto LABEL_48;
        }

        if ((v122 & 0x1000000000000000) != 0)
        {
          v68 = v100;
          v69 = v108;
          v70 = ((v123 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_48:
          v71 = v105;
          sub_100284DEC(v70, v48);
LABEL_49:
          v105 = v71;
          v72 = *v68;
          if (v72(v48, 1, v69) == 1)
          {
            v73 = v103;
            sub_10028408C(v103);
            sub_100025F40(&v122, &qword_1005D6760, &unk_1004EDA60);
            v74 = v107;
            sub_100025F40(v107, &qword_1005D0F20, &qword_1004E9390);
            if (v72(v48, 1, v69) != 1)
            {
              sub_100025F40(v48, &qword_1005D0F20, &qword_1004E9390);
            }
          }

          else
          {
            sub_100025F40(&v122, &qword_1005D6760, &unk_1004EDA60);
            v74 = v107;
            sub_100025F40(v107, &qword_1005D0F20, &qword_1004E9390);
            v73 = v103;
            (*v92)(v103, v48, v69);
            (v91[0])(v73, 0, 1, v69);
          }

          sub_100025FDC(v73, v74, &qword_1005D0F20, &qword_1004E9390);
          v44 = v98;
          v45 = v99;
          v47 = v102;
          v43 = v97;
          goto LABEL_9;
        }
      }

      v68 = v100;
      v69 = v108;
      v71 = v105;
      sub_1004A66E4();
      goto LABEL_49;
    }

    if (v51 > 17)
    {
      if (v51 != 18)
      {
        if (v51 == 19)
        {

          v110 = sub_1002AD850(v50, v49, v46);
          goto LABEL_9;
        }

LABEL_26:
        sub_1002970DC(v116);
        goto LABEL_9;
      }

      sub_10027D114(v116, v46, v118);
      if (v119 != 18)
      {
        if (v119 == 255)
        {
          goto LABEL_9;
        }

        v52 = v118;
        goto LABEL_38;
      }

      v66 = v118[1];
      v95 = v118[0];

      v44 = v66;
    }

    else if (v51 == 11)
    {

      v53 = sub_1002A8490(v50, v49);
      v55 = v54;

      v56 = sub_1002A062C(v53, v55, v46);
      v58 = sub_1002733C8(v56, v57);

      if (*(v58 + 2))
      {
        v59 = *(v58 + 5);
        v127 = *(v58 + 4);
        v128 = v59;
        v60 = *(v58 + 7);
        v129 = *(v58 + 6);
        v130 = v60;
        v61 = *(v58 + 3);
        v125 = *(v58 + 2);
        v126 = v61;
        sub_100275568(&v125, &v113);

        v62 = *(&v125 + 1);
        if (!*(&v125 + 1))
        {
          goto LABEL_34;
        }

        v63 = v125;
        v64 = HIBYTE(*(&v125 + 1)) & 0xFLL;
        if ((*(&v125 + 1) & 0x2000000000000000) == 0)
        {
          v64 = v125 & 0xFFFFFFFFFFFFLL;
        }

        if (v64 && v125 != v126 && (sub_1004A6D34() & 1) == 0)
        {
          v113 = sub_100274EBC(v63, v62);
          v114 = v75;
          v131._countAndFlagsBits = 15392;
          v131._object = 0xE200000000000000;
          sub_1004A5994(v131);
          v132._countAndFlagsBits = sub_1002730BC(v46);
          sub_1004A5994(v132);

          v133._countAndFlagsBits = 62;
          v133._object = 0xE100000000000000;
          sub_1004A5994(v133);
          sub_1002755F4(&v125);
          v43 = v113;
          v47 = v114;
        }

        else
        {
LABEL_34:
          v43 = sub_1002730BC(v46);
          v47 = v65;
          sub_1002755F4(&v125);
        }
      }

      else
      {

        v43 = 0;
        v47 = 0;
      }
    }

    else
    {
      if (v51 != 13)
      {
        goto LABEL_26;
      }

      sub_10027D114(v116, v46, v120);
      if (v121 != 13)
      {
        if (v121 == 255)
        {
          goto LABEL_9;
        }

        v52 = v120;
LABEL_38:
        sub_100025F40(v52, &qword_1005D6760, &unk_1004EDA60);
        goto LABEL_9;
      }

      v67 = v120[1];
      v96 = v120[0];

      v106 = v67;
    }

LABEL_9:
    v38 = sub_1002AC09C();
  }

  while (v41 != 2);

  v76 = v101;
  if (!v44)
  {
    v42 = v107;
    goto LABEL_61;
  }

  v77 = v43;
  v78 = v106;
  v42 = v107;
  if (!v106)
  {
LABEL_61:
    sub_100025F40(v42, &qword_1005D0F20, &qword_1004E9390);

LABEL_62:
    v81 = type metadata accessor for WatchOSHeaderInfo(0);
    return (*(*(v81 - 8) + 56))(v109, 1, 1, v81);
  }

  v79 = v94;
  sub_100025FDC(v107, v94, &qword_1005D0F20, &qword_1004E9390);
  v80 = v108;
  if ((*v100)(v79, 1, v108) == 1)
  {

    sub_100025F40(v79, &qword_1005D0F20, &qword_1004E9390);
    goto LABEL_62;
  }

  v106 = v78;
  v82 = v93;
  v102 = v47;
  v83 = *v92;
  (*v92)(v93, v79, v80);
  v83(v76, v82, v80);
  v84 = v76;
  v85 = v109;
  v86 = v102;
  *v109 = v77;
  v85[1] = v86;
  v87 = v111;
  v85[2] = v110;
  v85[3] = v87;
  v89 = v95;
  v88 = v96;
  v85[4] = v45;
  v85[5] = v89;
  v85[6] = v44;
  v85[7] = v88;
  v85[8] = v106;
  v90 = type metadata accessor for WatchOSHeaderInfo(0);
  v83(v85 + *(v90 + 40), v84, v80);
  return (*(*(v90 - 8) + 56))(v85, 0, 1, v90);
}

void *sub_1002AD850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1002A8490(a1, a2);
  v6 = v5;

  v7 = sub_1002A062C(v4, v6, a3);
  v9 = v8;

  v10 = sub_1002733C8(v7, v9);

  v11 = *(v10 + 2);
  if (!v11)
  {

    return _swiftEmptyArrayStorage;
  }

  sub_100091A08(0, v11, 0);
  v12 = 0;
  v13 = 32;
  v14 = _swiftEmptyArrayStorage;
  v60 = v10;
  v61 = a3;
  v59 = v11;
  do
  {
    if (v12 >= *(v10 + 2))
    {
      __break(1u);
LABEL_37:
      __break(1u);
    }

    v15 = *&v10[v13 + 16];
    v68 = *&v10[v13];
    v69 = v15;
    v16 = *&v10[v13 + 32];
    v17 = *&v10[v13 + 48];
    v18 = *&v10[v13 + 80];
    v72 = *&v10[v13 + 64];
    v73 = v18;
    v70 = v16;
    v71 = v17;
    v19 = *(&v68 + 1);
    v64 = v13;
    if (*(&v68 + 1))
    {
      v20 = v68;
      v21 = HIBYTE(*(&v68 + 1)) & 0xFLL;
      if ((*(&v68 + 1) & 0x2000000000000000) == 0)
      {
        v21 = v68 & 0xFFFFFFFFFFFFLL;
      }

      if (v21 && v68 != v69 && (sub_1004A6D34() & 1) == 0)
      {
        sub_100275568(&v68, pErrorCode);
        *pErrorCode = sub_100274EBC(v20, v19);
        v67 = v38;
        v74._countAndFlagsBits = 15392;
        v74._object = 0xE200000000000000;
        sub_1004A5994(v74);
        v75._countAndFlagsBits = sub_1002730BC(a3);
        sub_1004A5994(v75);

        v76._countAndFlagsBits = 62;
        v76._object = 0xE100000000000000;
        sub_1004A5994(v76);
        sub_1002755F4(&v68);
        v39 = *pErrorCode;
        v40 = v67;
        goto LABEL_27;
      }
    }

    if (*(&v72 + 1) >> 14 < v72 >> 14)
    {
      goto LABEL_37;
    }

    v62 = v12;
    v63 = v14;
    sub_100275568(&v68, pErrorCode);
    v22 = sub_1004A6404();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    pErrorCode[0] = U_ZERO_ERROR;
    NFCInstance = unorm2_getNFCInstance();
    v30 = pErrorCode[0];
    if (NFCInstance && pErrorCode[0] <= U_ZERO_ERROR)
    {
      sub_1002A7678(v22, v24, v26, v28, NFCInstance);
      v36 = v32;
      if (v32)
      {
        v34 = v31;
      }

      else
      {
        v34 = sub_1004A5864();
        v36 = v41;
      }

      if (*(a3 + 96))
      {
LABEL_15:
        pErrorCode[0] = U_ZERO_ERROR;
        v37 = uidna_openUTS46(0x3Cu, pErrorCode);
        goto LABEL_22;
      }
    }

    else
    {
      sub_1002755A0();
      swift_allocError();
      *v33 = v30;
      *(v33 + 4) = 0;
      swift_willThrow();
      v34 = sub_1004A5864();
      v36 = v35;

      if (*(a3 + 96))
      {
        goto LABEL_15;
      }
    }

    v37 = *(a3 + 88);
LABEL_22:
    v65 = v37;
    sub_10027EE28(&v65, v34, v36, pErrorCode);

    v42 = v70;
    v43 = v71;
    *(a3 + 88) = v37;
    *(a3 + 96) = 0;
    v45 = *pErrorCode;
    v44 = v67;
    pErrorCode[0] = U_ZERO_ERROR;
    v46 = unorm2_getNFCInstance();
    v47 = pErrorCode[0];
    if (v46 && pErrorCode[0] <= U_ZERO_ERROR)
    {
      sub_1002A7678(v42, *(&v42 + 1), v43, *(&v43 + 1), v46);
      v53 = v49;
      if (v49)
      {
        v51 = v48;
      }

      else
      {
        v51 = sub_1004A5864();
        v53 = v57;
      }
    }

    else
    {
      sub_1002755A0();
      swift_allocError();
      *v50 = v47;
      *(v50 + 4) = 0;
      swift_willThrow();
      v51 = sub_1004A5864();
      v53 = v52;
    }

    *pErrorCode = v51;
    v67 = v53;

    v77._countAndFlagsBits = 64;
    v77._object = 0xE100000000000000;
    sub_1004A5994(v77);

    v78._countAndFlagsBits = v45;
    v78._object = v44;
    sub_1004A5994(v78);

    sub_1002755F4(&v68);
    v39 = *pErrorCode;
    v40 = v67;
    v11 = v59;
    v10 = v60;
    v12 = v62;
    v14 = v63;
LABEL_27:
    v55 = v14[2];
    v54 = v14[3];
    if (v55 >= v54 >> 1)
    {
      sub_100091A08((v54 > 1), v55 + 1, 1);
    }

    ++v12;
    v14[2] = v55 + 1;
    v56 = &v14[2 * v55];
    v56[4] = v39;
    v56[5] = v40;
    v13 = v64 + 96;
    a3 = v61;
  }

  while (v11 != v12);

  return v14;
}

char *sub_1002ADD80(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D6CD0, &qword_1004EDA70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1002ADE8C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D6CD8, &qword_1004EDA78);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1002ADF98(char *a1, int64_t a2, char a3)
{
  result = sub_1002ADD80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1002ADFB8(char *a1, int64_t a2, char a3)
{
  result = sub_1002ADE8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

IMAP2Persistence::AccountLoggerID __swiftcall AccountLoggerID.init(accountIdentifier:)(Swift::String_optional accountIdentifier)
{
  object = accountIdentifier.value._object;
  countAndFlagsBits = accountIdentifier.value._countAndFlagsBits;
  v3 = sub_10000C9C0(&qword_1005D6CE0, &qword_1004EDA80);
  __chkstk_darwin(v3 - 8);
  v5 = __src - v4;
  v6 = sub_1004A4514();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = __src - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __dst = 0;
  if (!object)
  {
    return 0;
  }

  sub_1004A44F4();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1002AE67C(v5);
    if ((object & 0x1000000000000000) != 0)
    {
      countAndFlagsBits = sub_10010CD9C(countAndFlagsBits, object);
      v16 = v15;

      object = v16;
      if ((v16 & 0x2000000000000000) == 0)
      {
        goto LABEL_5;
      }
    }

    else if ((object & 0x2000000000000000) == 0)
    {
LABEL_5:
      if ((countAndFlagsBits & 0x1000000000000000) != 0)
      {
        v10 = (object & 0xFFFFFFFFFFFFFFFLL) + 32;
        v11 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = sub_1004A67E4();
      }

      v12 = 4;
      if (v11 < 4)
      {
        v12 = v11;
      }

      if (!v10)
      {
        v12 = 0;
      }

      if (v12 < 0)
      {
        __break(1u);
      }

      if (v10)
      {
        v13 = v11 + v10;
      }

      else
      {
        v13 = 0;
      }

      sub_1002AE610(0, v12, v10, v13, &__dst);
      goto LABEL_23;
    }

    __src[0] = countAndFlagsBits;
    __src[1] = object & 0xFFFFFFFFFFFFFFLL;
    if ((object & 0xC00000000000000) != 0)
    {
      v17 = 4;
    }

    else
    {
      v17 = HIBYTE(object) & 0xF;
    }

    memcpy(&__dst, __src, v17);
LABEL_23:

    return bswap32(__dst);
  }

  (*(v7 + 32))(v9, v5, v6);
  __dst = sub_1004A4504();
  (*(v7 + 8))(v9, v6);
  return bswap32(__dst);
}

uint64_t AccountLoggerID.debugDescription.getter(int a1)
{
  sub_1000D40AC();
  v1 = sub_1004A5A84();
  v3 = v2;
  result = sub_1004A5924();
  v5 = 8 - result;
  if (__OFSUB__(8, result))
  {
    __break(1u);
  }

  else
  {
    v7._countAndFlagsBits = 48;
    v7._object = 0xE100000000000000;
    v6 = sub_1004A5A74(v7, v5);

    v8._countAndFlagsBits = v1;
    v8._object = v3;
    sub_1004A5994(v8);

    return v6;
  }

  return result;
}

uint64_t sub_1002AE31C()
{
  sub_1000D40AC();
  v0 = sub_1004A5A84();
  v2 = v1;
  result = sub_1004A5924();
  v4 = 8 - result;
  if (__OFSUB__(8, result))
  {
    __break(1u);
  }

  else
  {
    v6._countAndFlagsBits = 48;
    v6._object = 0xE100000000000000;
    v5 = sub_1004A5A74(v6, v4);

    v7._countAndFlagsBits = v0;
    v7._object = v2;
    sub_1004A5994(v7);

    return v5;
  }

  return result;
}

IMAP2Persistence::EngineAccountMailboxLoggerID __swiftcall EngineAccountMailboxLoggerID.init(engine:account:mailbox:)(IMAP2Tracing::EngineLoggerID engine, IMAP2Persistence::AccountLoggerID account, NIOIMAPCore2::MailboxName mailbox)
{
  v3 = engine.id.rawValue | (*&account.rawValue << 32);
  rawValue = mailbox.bytes._rawValue;
  value = mailbox._hashValue._value;
  result.mailbox.bytes._rawValue = rawValue;
  result.engine = v3;
  result.account = *(&v3 + 4);
  result.mailbox._hashValue._value = value;
  return result;
}

double variable initialization expression of MessageSectionData.Segment.initial@<D0>(uint64_t a1@<X8>)
{
  sub_1000503E0(v8);
  v2 = v16;
  *(a1 + 128) = v15;
  *(a1 + 144) = v2;
  *(a1 + 160) = v17;
  *(a1 + 176) = v18;
  v3 = v12;
  *(a1 + 64) = v11;
  *(a1 + 80) = v3;
  v4 = v14;
  *(a1 + 96) = v13;
  *(a1 + 112) = v4;
  v5 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v5;
  result = *&v9;
  v7 = v10;
  *(a1 + 32) = v9;
  *(a1 + 48) = v7;
  return result;
}

double variable initialization expression of MessageSectionData.Segment.Initial.bodyStructure@<D0>(uint64_t a1@<X8>)
{
  sub_1000519B0(v8);
  v2 = v16;
  *(a1 + 128) = v15;
  *(a1 + 144) = v2;
  *(a1 + 160) = v17;
  *(a1 + 176) = v18;
  v3 = v12;
  *(a1 + 64) = v11;
  *(a1 + 80) = v3;
  v4 = v14;
  *(a1 + 96) = v13;
  *(a1 + 112) = v4;
  v5 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v5;
  result = *&v9;
  v7 = v10;
  *(a1 + 32) = v9;
  *(a1 + 48) = v7;
  return result;
}

double variable initialization expression of RemoteMailbox.status@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 25) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 41) = 1;
  return result;
}

uint64_t sub_1002AE59C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

char *sub_1002AE610(char *result, uint64_t a2, uint64_t a3, uint64_t a4, void *__dst)
{
  if (__dst)
  {
    if (a3)
    {
      v5 = a4 - a3;
      if (a4 - a3 < 0)
      {
        __break(1u);
      }

      else if (v5 >= result)
      {
        if (v5 >= a2)
        {
          if (!__OFADD__(result, a2 - result))
          {
            if (a2 >= result)
            {
              return memmove(__dst, &result[a3], a2 - result);
            }

            goto LABEL_16;
          }

LABEL_15:
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      __break(1u);
      goto LABEL_14;
    }

    if (result)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if (a2)
    {
LABEL_18:
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1002AE67C(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D6CE0, &qword_1004EDA80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1002AE6E4(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D6CF0, &qword_1004EDBE0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000C9C0(&qword_1005D6CF8, &qword_1004EDBE8);
    v7 = sub_1004A6A74();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_1002AE8E0(v9, v5);
      v11 = *v5;
      v12 = v5[1];
      result = sub_100063C84(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for Activity.MailboxStatus(0);
      result = sub_1002AE950(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1002AE8E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D6CF0, &qword_1004EDBE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002AE950(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Activity.MailboxStatus(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t Action.kind.getter(unint64_t a1)
{
  v1 = a1;
  v2 = (a1 >> 58) & 0x3C | (a1 >> 1) & 3;
  result = 1;
  switch(v2)
  {
    case 1uLL:
      result = 5;
      break;
    case 2uLL:
      result = 6;
      break;
    case 3uLL:
      result = 7;
      break;
    case 4uLL:
      result = 8;
      break;
    case 5uLL:
      result = 10;
      break;
    case 6uLL:
      result = 11;
      break;
    case 7uLL:
      result = 12;
      break;
    case 8uLL:
      result = 13;
      break;
    case 9uLL:
      result = 14;
      break;
    case 0xAuLL:
      result = 15;
      break;
    case 0xBuLL:
      result = 16;
      break;
    case 0xCuLL:
      result = 17;
      break;
    case 0xDuLL:
      result = 18;
      break;
    case 0xEuLL:
      result = 19;
      break;
    case 0xFuLL:
      result = 20;
      break;
    case 0x10uLL:
      result = 21;
      break;
    case 0x11uLL:
      result = 22;
      break;
    case 0x12uLL:
      result = 23;
      break;
    case 0x13uLL:
      result = 24;
      break;
    case 0x14uLL:
      result = 25;
      break;
    case 0x15uLL:
      result = 26;
      break;
    case 0x16uLL:
      result = 27;
      break;
    case 0x17uLL:
      result = 28;
      break;
    case 0x18uLL:
      result = 29;
      break;
    case 0x19uLL:
      result = 34;
      break;
    case 0x1AuLL:
      result = 35;
      break;
    case 0x1BuLL:
      result = 37;
      break;
    case 0x1CuLL:
      result = 30;
      break;
    case 0x1DuLL:
      result = 31;
      break;
    case 0x1EuLL:
      result = 32;
      break;
    case 0x1FuLL:
      result = 33;
      break;
    case 0x20uLL:
      result = 36;
      break;
    case 0x21uLL:
      result = 38;
      break;
    case 0x22uLL:
      result = 39;
      break;
    case 0x23uLL:
      result = 40;
      break;
    case 0x24uLL:
      result = 41;
      break;
    case 0x25uLL:
      result = 42;
      break;
    case 0x26uLL:
      result = 43;
      break;
    case 0x27uLL:
      result = 44;
      break;
    case 0x28uLL:
      result = 45;
      break;
    case 0x29uLL:
      result = 46;
      break;
    case 0x2AuLL:
      result = 47;
      break;
    case 0x2BuLL:
      result = 48;
      break;
    case 0x2CuLL:
      result = 0x904030200uLL >> (v1 & 0xF8);
      break;
    default:
      return result;
  }

  return result;
}

unint64_t Action.Kind.description.getter(char a1)
{
  result = 0x6944656E69676E65;
  switch(a1)
  {
    case 1:
      result = 0x64657243646E6573;
      break;
    case 2:
      result = 0x6568747541646964;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
    case 10:
    case 25:
    case 47:
      result = 0xD00000000000001BLL;
      break;
    case 5:
    case 9:
    case 19:
    case 26:
      result = 0xD000000000000017;
      break;
    case 6:
      result = 0x614E657461647075;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
    case 37:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0xD000000000000022;
      break;
    case 12:
    case 13:
      result = 0xD000000000000013;
      break;
    case 14:
    case 16:
    case 42:
      result = 0xD000000000000011;
      break;
    case 15:
      result = 0x617373654D746567;
      break;
    case 17:
      result = 0xD000000000000015;
      break;
    case 18:
    case 34:
      result = 0xD00000000000001CLL;
      break;
    case 20:
      result = 0xD000000000000025;
      break;
    case 21:
      result = 0xD000000000000015;
      break;
    case 22:
      result = 0xD00000000000002DLL;
      break;
    case 23:
      result = 0xD000000000000021;
      break;
    case 24:
    case 40:
      result = 0xD000000000000012;
      break;
    case 27:
    case 30:
    case 31:
      result = 0xD000000000000018;
      break;
    case 28:
    case 33:
      result = 0xD000000000000016;
      break;
    case 29:
      result = 0x6C46657461647075;
      break;
    case 32:
    case 43:
      result = 0xD000000000000010;
      break;
    case 35:
      result = 0xD00000000000002ALL;
      break;
    case 36:
    case 45:
      result = 0xD000000000000019;
      break;
    case 38:
      result = 0xD000000000000015;
      break;
    case 39:
    case 41:
      result = 0xD00000000000001ELL;
      break;
    case 44:
    case 48:
      result = 0xD00000000000001DLL;
      break;
    case 46:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t WindowOfInterestSizes.defaultValue.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t MailboxMetadata.highestModificationSequenceValue.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t MailboxMetadata.init(validity:fetchedWindow:highestModificationSequenceValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 4) = BYTE4(result) & 1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5 & 1;
  return result;
}

BOOL sub_1002AF2D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s16IMAP2Persistence15MailboxMetadataV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v7);
}

IMAP2Persistence::MailboxSyncStatus __swiftcall MailboxSyncStatus.init(latestSyncedChange:serverUnreadCount:)(IMAP2Persistence::ChangeID_optional latestSyncedChange, Swift::Int_optional serverUnreadCount)
{
  serverUnreadCount.is_nil &= 1u;
  v2 = latestSyncedChange.value.rawValue | (latestSyncedChange.is_nil << 32);
  result.serverUnreadCount = serverUnreadCount;
  result.latestSyncedChange = v2;
  *result.gap5 = *(&v2 + 5);
  result.gap5[2] = HIBYTE(v2);
  return result;
}

uint64_t static MailboxSyncStatus.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a1 & 0x100000000) != 0)
  {
    if ((a4 & 0x100000000) == 0)
    {
      return 0;
    }

LABEL_6:
    if (a3)
    {
      if (a6)
      {
        return 1;
      }
    }

    else if ((a6 & 1) == 0 && a2 == a5)
    {
      return 1;
    }

    return 0;
  }

  v6 = a1;
  result = 0;
  if ((a4 & 0x100000000) == 0 && v6 == a4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1002AF3A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (*(a1 + 4))
  {
    if (!*(a2 + 4))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      return 1;
    }
  }

  else
  {
    if (*(a1 + 8) == *(a2 + 8))
    {
      v4 = *(a2 + 16);
    }

    else
    {
      v4 = 1;
    }

    if ((v4 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t MessageFlagUpdate.flags.setter(uint64_t result, char a2)
{
  *(v2 + 4) = result;
  *(v2 + 12) = a2;
  return result;
}

unint64_t MessageFlagUpdate.init(message:flags:gmailLabels:)(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 2 && a4 == 0)
  {
    return 0;
  }

  else
  {
    return a1 | (a2 << 32);
  }
}

BOOL static MessageFlagUpdate.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&var10[4] = HIDWORD(a4);
  *&var10[8] = a5;
  v6 = *&var10[4];
  *var10 = a1;
  *&var10[4] = __PAIR64__(a2, HIDWORD(a1));
  var10[12] = BYTE4(a2);
  v7 = *var10;
  v8 = *&var10[8];
  *var10 = a4;
  *&var10[4] = v6;
  var10[12] = BYTE4(a5);
  return sub_1002B1A48(v7, v8, a3, *var10, *&var10[8], a6);
}

BOOL sub_1002AF49C(uint64_t a1, uint64_t a2)
{
  *(&v4 + 4) = *(a1 + 4);
  BYTE12(v4) = *(a1 + 12);
  v2 = v4;
  LODWORD(v4) = *a2;
  *(&v4 + 4) = *(a2 + 4);
  BYTE12(v4) = *(a2 + 12);
  return sub_1002B1A48(v2, *(&v2 + 1), *(a1 + 16), v4, *(&v4 + 1), *(a2 + 16));
}

BOOL _s16IMAP2Persistence15MailboxMetadataV23__derived_struct_equalsySbAC_ACtFZ_0(_BOOL8 result, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (*(result + 4))
  {
    if (!*(a2 + 4))
    {
      return 0;
    }
  }

  else
  {
    if (*result != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v3 = *(a2 + 16);
  if (*(result + 16))
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 8) != *(result + 8))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  if (*(result + 32))
  {
    return (*(a2 + 32) & 1) != 0;
  }

  if (*(a2 + 32))
  {
    return 0;
  }

  v4 = *(result + 24);
  v5 = *(a2 + 24);
  if (((v5 | v4) & 0x8000000000000000) == 0)
  {
    return v5 == v4;
  }

  __break(1u);
  return result;
}

uint64_t static MoveOrCopy.Result.__derived_enum_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, int a4)
{
  v4 = a4 & (a3 == 0);
  if (a1)
  {
    v4 = a4 & (a3 != 0);
  }

  if (a2)
  {
    return v4;
  }

  else
  {
    return (a3 == a1) & ~a4;
  }
}

uint64_t sub_1002AF650(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6, uint64_t a7, __int16 a8)
{
  if ((a4 & 0x100) != 0)
  {
    if (a3 | a2 | a1 || a4)
    {
      if (a7 | a6 | a5)
      {
        v11 = 0;
      }

      else
      {
        v11 = a8 == 0;
      }

      v10 = !v11;
    }

    else
    {
      if (a7 | a6 | a5)
      {
        v9 = 0;
      }

      else
      {
        v9 = a8 == 0;
      }

      v10 = v9;
    }

    if ((a8 & 0x100) != 0)
    {
      return v10;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if ((a8 & 0x100) == 0 && a1 == a5 && a6 == a2)
    {
      if (a4)
      {
        if (a8)
        {
          return 1;
        }
      }

      else if ((a8 & 1) == 0 && a3 == a7)
      {
        return 1;
      }
    }

    return 0;
  }
}

void _s16IMAP2Persistence6ActionO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, unint64_t a2)
{
  v241 = a2;
  v2 = type metadata accessor for Activity(0);
  __chkstk_darwin(v2 - 8);
  v239 = (v235 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v236 = (v235 - v5);
  v6 = type metadata accessor for MessageSectionData(0);
  __chkstk_darwin(v6 - 8);
  v8 = v235 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v235 - v10;
  v12 = type metadata accessor for MessageHeader(0);
  __chkstk_darwin(v12 - 8);
  v238 = v235 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v240 = v235 - v15;
  v16 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v16 - 8);
  v18 = v235 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v237 = v235 - v20;
  v21 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  __chkstk_darwin(v21 - 8);
  v23 = v235 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = v235 - v25;
  __chkstk_darwin(v27);
  v29 = v235 - v28;
  __chkstk_darwin(v30);
  v32 = v235 - v31;
  __chkstk_darwin(v33);
  v35 = v235 - v34;
  __chkstk_darwin(v36);
  v39 = v235 - v38;
  switch((v37 >> 58) & 0x3C | (v37 >> 1) & 3)
  {
    case 1uLL:
      if (((v241 >> 58) & 0x3C | (v241 >> 1) & 3) == 1)
      {
        v97 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v98 = *((v241 & 0xFFFFFFFFFFFFFF9) + 0x10);

        sub_100083308(v97, v98);
      }

      return;
    case 2uLL:
      if (((v241 >> 58) & 0x3C | (v241 >> 1) & 3) == 2)
      {
        v77 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x18);
        v76 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v78 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v79 = *((v241 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v80 = *((v241 & 0xFFFFFFFFFFFFFF9) + 0x18);
        v81 = *((v241 & 0xFFFFFFFFFFFFFF9) + 0x20);

        static Mailbox.__derived_struct_equals(_:_:)(v78, v77, v76, v79, v80, v81, v82);

        goto LABEL_163;
      }

      return;
    case 3uLL:
      if (((v241 >> 58) & 0x3C | (v241 >> 1) & 3) == 3)
      {
        v95 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v96 = *((v241 & 0xFFFFFFFFFFFFFF9) + 0x10);

        sub_100113FD0(v95, v96);
        goto LABEL_163;
      }

      return;
    case 4uLL:
      if (((v241 >> 58) & 0x3C | (v241 >> 1) & 3) == 4)
      {
        v62 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v63 = *((v241 & 0xFFFFFFFFFFFFFF9) + 0x10);

        sub_100083124(v62, v63);
      }

      return;
    case 5uLL:
      if (((v241 >> 58) & 0x3C | (v241 >> 1) & 3) == 5)
      {
        v136 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v135 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x28);
        v137 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x18);
        v138 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v139 = *((v241 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v140 = *((v241 & 0xFFFFFFFFFFFFFF9) + 0x18);
        v141 = *((v241 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v142 = *((v241 & 0xFFFFFFFFFFFFFF9) + 0x28);

        static PushRegistrationResponse.__derived_struct_equals(_:_:)(v138, v137, v136, v135, v139, v140, v141, v142);

        goto LABEL_163;
      }

      return;
    case 6uLL:
      v156 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v157 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v158 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x30);
      v283[0] = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v283[1] = v158;
      LOBYTE(v283[2]) = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x40);
      if (((v241 >> 58) & 0x3C | (v241 >> 1) & 3) == 6)
      {
        v159 = *((v241 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v160 = *((v241 & 0xFFFFFFFFFFFFFF9) + 0x18);
        v161 = *((v241 & 0xFFFFFFFFFFFFFF9) + 0x30);
        v284[0] = *((v241 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v284[1] = v161;
        LOBYTE(v284[2]) = *((v241 & 0xFFFFFFFFFFFFFF9) + 0x40);
        if (v157 == v160 && (sub_1000FFC98(v156, v159) & 1) != 0)
        {
          _s16IMAP2Persistence15MailboxMetadataV23__derived_struct_equalsySbAC_ACtFZ_0(v283, v284);
        }
      }

      return;
    case 7uLL:
      v47 = v241;
      if (((v47 >> 58) & 0x3C | (v47 >> 1) & 3) == 7)
      {
        goto LABEL_70;
      }

      return;
    case 8uLL:
      if (((v241 >> 58) & 0x3C | (v241 >> 1) & 3) == 8 && *((v37 & 0xFFFFFFFFFFFFFF9) + 0x18) == *((v241 & 0xFFFFFFFFFFFFFF9) + 0x18))
      {
        v184 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v185 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x28);
        v186 = *((v241 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v187 = *((v241 & 0xFFFFFFFFFFFFFF9) + 0x28);
        if ((sub_1000FFC98(*((v37 & 0xFFFFFFFFFFFFFF9) + 0x10), *((v241 & 0xFFFFFFFFFFFFFF9) + 0x10)) & 1) != 0 && (v185 & 1) == 0 && (v187 & 1) == 0)
        {
          static FetchedWindow.__derived_struct_equals(_:_:)(v184, v186);
        }
      }

      return;
    case 9uLL:
      if (((v241 >> 58) & 0x3C | (v241 >> 1) & 3) == 9 && *((v37 & 0xFFFFFFFFFFFFFF9) + 0x18) == *((v241 & 0xFFFFFFFFFFFFFF9) + 0x18))
      {
        goto LABEL_109;
      }

      return;
    case 0xAuLL:
      v178 = swift_projectBox();
      if (((v241 >> 58) & 0x3C | (v241 >> 1) & 3) == 0xA)
      {
        v179 = v178;
        v180 = v178[1];
        v240 = *v178;
        v181 = *(sub_10000C9C0(&qword_1005CD538, &qword_1004CF310) + 48);
        v182 = swift_projectBox();
        v183 = v182[1];
        v241 = *v182;
        sub_10000E268(v179 + v181, v39, &qword_1005CD1D0, &unk_1004CF2C0);
        sub_10000E268(v182 + v181, v35, &qword_1005CD1D0, &unk_1004CF2C0);
        if (v180 == v183 && (sub_1000FFC98(v240, v241) & 1) != 0)
        {
          sub_100016D2C();
          sub_1004A7034();
          sub_100025F40(v35, &qword_1005CD1D0, &unk_1004CF2C0);
          v72 = v39;
          goto LABEL_123;
        }

        v207 = &qword_1005CD1D0;
        v208 = &unk_1004CF2C0;
        sub_100025F40(v35, &qword_1005CD1D0, &unk_1004CF2C0);
        v209 = v39;
        goto LABEL_172;
      }

      return;
    case 0xBuLL:
      if (((v241 >> 58) & 0x3C | (v241 >> 1) & 3) == 0xB && *((v37 & 0xFFFFFFFFFFFFFF9) + 0x18) == *((v241 & 0xFFFFFFFFFFFFFF9) + 0x18))
      {
        v60 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v61 = *((v241 & 0xFFFFFFFFFFFFFF9) + 0x20);
        if (sub_1000FFC98(*((v37 & 0xFFFFFFFFFFFFFF9) + 0x10), *((v241 & 0xFFFFFFFFFFFFFF9) + 0x10)))
        {
          sub_1002C2BC0(v60, v61);
        }
      }

      return;
    case 0xCuLL:
      v66 = swift_projectBox();
      if (((v241 >> 58) & 0x3C | (v241 >> 1) & 3) == 0xC)
      {
        v67 = v66;
        v68 = v66[1];
        v240 = *v66;
        v69 = *(sub_10000C9C0(&qword_1005CD530, &unk_1004D40A0) + 48);
        v70 = swift_projectBox();
        v71 = v70[1];
        v241 = *v70;
        sub_10000E268(v67 + v69, v32, &qword_1005CD1D0, &unk_1004CF2C0);
        sub_10000E268(v70 + v69, v29, &qword_1005CD1D0, &unk_1004CF2C0);
        if (v68 != v71 || (sub_1000FFC98(v240, v241) & 1) == 0)
        {
          v207 = &qword_1005CD1D0;
          v208 = &unk_1004CF2C0;
          sub_100025F40(v29, &qword_1005CD1D0, &unk_1004CF2C0);
          v209 = v32;
          goto LABEL_172;
        }

        sub_100016D2C();
        sub_1004A7034();
        sub_100025F40(v29, &qword_1005CD1D0, &unk_1004CF2C0);
        v72 = v32;
LABEL_123:
        sub_100025F40(v72, &qword_1005CD1D0, &unk_1004CF2C0);
      }

      return;
    case 0xDuLL:
      if (((v241 >> 58) & 0x3C | (v241 >> 1) & 3) == 0xD && *((v37 & 0xFFFFFFFFFFFFFF9) + 0x18) == *((v241 & 0xFFFFFFFFFFFFFF9) + 0x18))
      {
LABEL_109:
        sub_1000FFC98(*((v37 & 0xFFFFFFFFFFFFFF9) + 0x10), *((v241 & 0xFFFFFFFFFFFFFF9) + 0x10));
      }

      return;
    case 0xEuLL:
      v52 = swift_projectBox();
      if (((v241 >> 58) & 0x3C | (v241 >> 1) & 3) == 0xE)
      {
        v53 = v52;
        v54 = v52[1];
        v240 = *v52;
        v55 = *(sub_10000C9C0(&qword_1005CD530, &unk_1004D40A0) + 48);
        v56 = swift_projectBox();
        v57 = v56[1];
        v241 = *v56;
        sub_10000E268(v53 + v55, v26, &qword_1005CD1D0, &unk_1004CF2C0);
        sub_10000E268(v56 + v55, v23, &qword_1005CD1D0, &unk_1004CF2C0);
        if (v54 != v57 || (sub_1000FFC98(v240, v241) & 1) == 0)
        {
          sub_100025F40(v23, &qword_1005CD1D0, &unk_1004CF2C0);
          v209 = v26;
          v210 = &qword_1005CD1D0;
          v211 = &unk_1004CF2C0;
          goto LABEL_173;
        }

        sub_100016D2C();
        sub_1004A7034();
        sub_100025F40(v23, &qword_1005CD1D0, &unk_1004CF2C0);
        sub_100025F40(v26, &qword_1005CD1D0, &unk_1004CF2C0);
      }

      return;
    case 0xFuLL:
      if (((v241 >> 58) & 0x3C | (v241 >> 1) & 3) == 0xF)
      {
        v83 = v241 & 0xFFFFFFFFFFFFFF9;
        if (*((v37 & 0xFFFFFFFFFFFFFF9) + 0x18) == *((v241 & 0xFFFFFFFFFFFFFF9) + 0x18))
        {
          v84 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x10);
          v85 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x28);
          v241 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x20);
          v86 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x30);
          v87 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x38);
          v88 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x39);
          v89 = *(v83 + 32);
          v90 = *(v83 + 40);
          v91 = *(v83 + 48);
          v92 = *(v83 + 56);
          v93 = *(v83 + 57);
          if (sub_1000FFC98(v84, *(v83 + 16)))
          {
            v94 = v241;

            sub_1002AF650(v94, v85, v86, v87 | (v88 << 8), v89, v90, v91, v92 | (v93 << 8));
          }
        }
      }

      return;
    case 0x10uLL:
      if (((v241 >> 58) & 0x3C | (v241 >> 1) & 3) == 0x10)
      {
        v50 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v51 = *((v241 & 0xFFFFFFFFFFFFFF9) + 0x10);

        sub_1002DB214(v50, v51);
      }

      return;
    case 0x11uLL:
      if (((v241 >> 58) & 0x3C | (v241 >> 1) & 3) == 0x11 && (*((v37 & 0xFFFFFFFFFFFFFF9) + 0x18) | (*((v37 & 0xFFFFFFFFFFFFFF9) + 0x18) << 32)) == (*((v241 & 0xFFFFFFFFFFFFFF9) + 0x18) | (*((v241 & 0xFFFFFFFFFFFFFF9) + 0x18) << 32)))
      {
        v100 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v101 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x28);
        v102 = *((v241 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v103 = *((v241 & 0xFFFFFFFFFFFFFF9) + 0x28);
        if ((sub_1000FFC98(*((v37 & 0xFFFFFFFFFFFFFF9) + 0x10), *((v241 & 0xFFFFFFFFFFFFFF9) + 0x10)) & 1) != 0 && (v101 & 1) == 0 && (v103 & 1) == 0 && (v102 | v100) < 0)
        {
          __break(1u);
          JUMPOUT(0x1002B1994);
        }
      }

      return;
    case 0x12uLL:
      v162 = sub_10000C9C0(&qword_1005CEE60, &unk_1004D1AC0);
      v163 = swift_projectBox();
      if (((v241 >> 58) & 0x3C | (v241 >> 1) & 3) == 0x12)
      {
        v164 = v163;
        LODWORD(v239) = *(v163 + 16);
        v165 = v162[20];
        v166 = *(v163 + v165);
        LODWORD(v238) = *(v163 + v165 + 8);
        v167 = v162[24];
        v168 = *(v163 + v167);
        v235[2] = v166;
        v235[3] = v168;
        v169 = *(v163 + 8);
        v240 = *v163;
        v170 = v162[16];
        v171 = swift_projectBox();
        v173 = *v171;
        v172 = *(v171 + 8);
        LODWORD(v241) = *(v171 + 16);
        v174 = *(v171 + v165);
        LODWORD(v236) = *(v171 + v165 + 8);
        v175 = *(v171 + v167);
        v235[0] = v174;
        v235[1] = v175;
        v176 = v164 + v170;
        v177 = v237;
        sub_10000E268(v176, v237, &unk_1005D91B0, &unk_1004CF400);
        sub_10000E268(v171 + v170, v18, &unk_1005D91B0, &unk_1004CF400);
        if (v169 != v172 || (sub_1000FFC98(v240, v173) & 1) == 0 || (sub_1002E22B0(v239, v241) & 1) == 0)
        {
          v207 = &unk_1005D91B0;
          v208 = &unk_1004CF400;
          sub_100025F40(v18, &unk_1005D91B0, &unk_1004CF400);
          v209 = v177;
LABEL_172:
          v210 = v207;
          v211 = v208;
          goto LABEL_173;
        }

        sub_100016D2C();
        sub_1004A7034();
        sub_100025F40(v18, &unk_1005D91B0, &unk_1004CF400);
        sub_100025F40(v177, &unk_1005D91B0, &unk_1004CF400);
      }

      return;
    case 0x13uLL:
      v73 = v241;
      if (((v73 >> 58) & 0x3C | (v73 >> 1) & 3) == 0x13)
      {
        goto LABEL_165;
      }

      return;
    case 0x14uLL:
      v106 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v107 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v108 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x1C);
      v110 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v109 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x24);
      v111 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x28);
      v112 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x38);
      v113 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x58);
      v301 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x48);
      v302 = v113;
      v114 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x78);
      v115 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x68);
      v116 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x98);
      v305 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x88);
      v306 = v116;
      v117 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0xA8);
      v310 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0xD8);
      v118 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0xC8);
      v119 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0xB8);
      v307 = v117;
      v308 = v119;
      v309 = v118;
      v303 = v115;
      v304 = v114;
      v299 = v111;
      v300 = v112;
      if (((v241 >> 58) & 0x3C | (v241 >> 1) & 3) != 0x14)
      {
        return;
      }

      v120 = *((v241 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v121 = *((v241 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v122 = *((v241 & 0xFFFFFFFFFFFFFF9) + 0x1C);
      v124 = *((v241 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v123 = *((v241 & 0xFFFFFFFFFFFFFF9) + 0x24);
      v125 = *((v241 & 0xFFFFFFFFFFFFFF9) + 0x28);
      v126 = *((v241 & 0xFFFFFFFFFFFFFF9) + 0x38);
      v127 = *((v241 & 0xFFFFFFFFFFFFFF9) + 0x58);
      v289 = *((v241 & 0xFFFFFFFFFFFFFF9) + 0x48);
      v290 = v127;
      v128 = *((v241 & 0xFFFFFFFFFFFFFF9) + 0x78);
      v129 = *((v241 & 0xFFFFFFFFFFFFFF9) + 0x68);
      v130 = *((v241 & 0xFFFFFFFFFFFFFF9) + 0x98);
      v293 = *((v241 & 0xFFFFFFFFFFFFFF9) + 0x88);
      v294 = v130;
      v131 = *((v241 & 0xFFFFFFFFFFFFFF9) + 0xA8);
      v298 = *((v241 & 0xFFFFFFFFFFFFFF9) + 0xD8);
      v132 = *((v241 & 0xFFFFFFFFFFFFFF9) + 0xC8);
      v133 = *((v241 & 0xFFFFFFFFFFFFFF9) + 0xB8);
      v295 = v131;
      v296 = v133;
      v297 = v132;
      v291 = v129;
      v292 = v128;
      v287 = v125;
      v288 = v126;
      if ((v107 | (v107 << 32)) != (v121 | (v121 << 32)) || (sub_1000FFC98(v106, v120) & 1) == 0 || (sub_1002E22B0(v108, v122) & 1) == 0 || v124 != v110 || v109 != v123)
      {
        return;
      }

      v284[8] = v307;
      v284[9] = v308;
      v284[10] = v309;
      v284[4] = v303;
      v284[5] = v304;
      v284[6] = v305;
      v284[7] = v306;
      v284[0] = v299;
      v284[1] = v300;
      v284[2] = v301;
      v284[3] = v302;
      *(&v284[20] + 8) = v296;
      *(&v284[21] + 8) = v297;
      *(&v284[16] + 8) = v292;
      *(&v284[17] + 8) = v293;
      *(&v284[18] + 8) = v294;
      *(&v284[19] + 8) = v295;
      *(&v284[15] + 8) = v291;
      *(&v284[11] + 8) = v287;
      *(&v284[12] + 8) = v288;
      *(&v284[13] + 8) = v289;
      *(&v284[14] + 8) = v290;
      v285[8] = v307;
      v285[9] = v308;
      v285[10] = v309;
      v285[4] = v303;
      v285[5] = v304;
      v285[6] = v305;
      v285[7] = v306;
      v285[0] = v299;
      v285[1] = v300;
      LOBYTE(v284[11]) = v310;
      BYTE8(v284[22]) = v298;
      v286 = v310;
      v285[2] = v301;
      v285[3] = v302;
      if (sub_10003EC1C(v285) == 1)
      {
        v283[8] = *(&v284[19] + 8);
        v283[9] = *(&v284[20] + 8);
        v283[10] = *(&v284[21] + 8);
        LOBYTE(v283[11]) = BYTE8(v284[22]);
        v283[5] = *(&v284[16] + 8);
        v283[6] = *(&v284[17] + 8);
        v283[7] = *(&v284[18] + 8);
        v283[0] = *(&v284[11] + 8);
        v283[1] = *(&v284[12] + 8);
        v283[2] = *(&v284[13] + 8);
        v283[3] = *(&v284[14] + 8);
        v283[4] = *(&v284[15] + 8);
        if (sub_10003EC1C(v283) == 1)
        {
          v279 = v284[8];
          v280 = v284[9];
          v281 = v284[10];
          v282 = v284[11];
          v275 = v284[4];
          v276 = v284[5];
          v277 = v284[6];
          v278 = v284[7];
          v271 = v284[0];
          v272 = v284[1];
          v273 = v284[2];
          v274 = v284[3];
          sub_10000E268(&v299, v269, &qword_1005CDFD0, &qword_1004EE450);
          sub_10000E268(&v287, v269, &qword_1005CDFD0, &qword_1004EE450);
          v134 = &v271;
LABEL_183:
          sub_100025F40(v134, &qword_1005CDFD0, &qword_1004EE450);
          return;
        }

        goto LABEL_178;
      }

      v283[8] = *(&v284[19] + 8);
      v283[9] = *(&v284[20] + 8);
      v283[10] = *(&v284[21] + 8);
      LOBYTE(v283[11]) = BYTE8(v284[22]);
      v283[5] = *(&v284[16] + 8);
      v283[6] = *(&v284[17] + 8);
      v283[7] = *(&v284[18] + 8);
      v283[0] = *(&v284[11] + 8);
      v283[1] = *(&v284[12] + 8);
      v283[2] = *(&v284[13] + 8);
      v283[3] = *(&v284[14] + 8);
      v283[4] = *(&v284[15] + 8);
      if (sub_10003EC1C(v283) != 1)
      {
        v269[8] = *(&v284[19] + 8);
        v269[9] = *(&v284[20] + 8);
        v269[10] = *(&v284[21] + 8);
        v270 = BYTE8(v284[22]);
        v269[4] = *(&v284[15] + 8);
        v269[5] = *(&v284[16] + 8);
        v269[6] = *(&v284[17] + 8);
        v269[7] = *(&v284[18] + 8);
        v269[0] = *(&v284[11] + 8);
        v269[1] = *(&v284[12] + 8);
        v269[2] = *(&v284[13] + 8);
        v269[3] = *(&v284[14] + 8);
        v279 = v284[8];
        v280 = v284[9];
        v281 = v284[10];
        v282 = v284[11];
        v275 = v284[4];
        v276 = v284[5];
        v277 = v284[6];
        v278 = v284[7];
        v271 = v284[0];
        v272 = v284[1];
        v273 = v284[2];
        v274 = v284[3];
        if (sub_10000FE74(&v271) == 1)
        {
          v265 = *(&v284[19] + 8);
          v266 = *(&v284[20] + 8);
          v267 = *(&v284[21] + 8);
          v268 = BYTE8(v284[22]);
          v261 = *(&v284[15] + 8);
          v262 = *(&v284[16] + 8);
          v263 = *(&v284[17] + 8);
          v264 = *(&v284[18] + 8);
          v257 = *(&v284[11] + 8);
          v258 = *(&v284[12] + 8);
          v259 = *(&v284[13] + 8);
          v260 = *(&v284[14] + 8);
          if (sub_10000FE74(&v257) == 1)
          {
            sub_10000E268(&v299, v255, &qword_1005CDFD0, &qword_1004EE450);
            sub_10000E268(&v287, v255, &qword_1005CDFD0, &qword_1004EE450);
            sub_100025F40(v269, &qword_1005CDFD0, &qword_1004EE450);
LABEL_182:
            v265 = v284[8];
            v266 = v284[9];
            v267 = v284[10];
            v268 = v284[11];
            v261 = v284[4];
            v262 = v284[5];
            v263 = v284[6];
            v264 = v284[7];
            v257 = v284[0];
            v258 = v284[1];
            v259 = v284[2];
            v260 = v284[3];
            v134 = &v257;
            goto LABEL_183;
          }

          goto LABEL_185;
        }

        v265 = *(&v284[19] + 8);
        v266 = *(&v284[20] + 8);
        v267 = *(&v284[21] + 8);
        v268 = BYTE8(v284[22]);
        v261 = *(&v284[15] + 8);
        v262 = *(&v284[16] + 8);
        v263 = *(&v284[17] + 8);
        v264 = *(&v284[18] + 8);
        v257 = *(&v284[11] + 8);
        v258 = *(&v284[12] + 8);
        v259 = *(&v284[13] + 8);
        v260 = *(&v284[14] + 8);
        if (sub_10000FE74(&v257) == 1)
        {
LABEL_185:
          sub_10000E268(&v299, v255, &qword_1005CDFD0, &qword_1004EE450);
          v212 = v255;
LABEL_186:
          sub_10000E268(&v287, v212, &qword_1005CDFD0, &qword_1004EE450);
          sub_100025F40(v269, &qword_1005CDFD0, &qword_1004EE450);
          goto LABEL_187;
        }

        v255[8] = v279;
        v255[9] = v280;
        v255[10] = v281;
        v256 = v282;
        v255[4] = v275;
        v255[5] = v276;
        v255[6] = v277;
        v255[7] = v278;
        v255[0] = v271;
        v255[1] = v272;
        v255[2] = v273;
        v255[3] = v274;
        if (sub_10000FE88(v255) == 1)
        {
          v213 = UInt32.init(_:)(v255);
          v214 = *(v213 + 80);
          v315 = *(v213 + 64);
          v316 = v214;
          v317 = *(v213 + 96);
          *&v318 = *(v213 + 112);
          v215 = *(v213 + 16);
          v311 = *v213;
          v312 = v215;
          v216 = *(v213 + 48);
          v313 = *(v213 + 32);
          v314 = v216;
          v251 = v265;
          v252 = v266;
          v253 = v267;
          v254 = v268;
          v247 = v261;
          v248 = v262;
          v249 = v263;
          v250 = v264;
          v243 = v257;
          v244 = v258;
          v245 = v259;
          v246 = v260;
          if (sub_10000FE88(&v243) == 1)
          {
            v217 = UInt32.init(_:)(&v243);
            v218 = *(v217 + 80);
            v326 = *(v217 + 64);
            v327 = v218;
            v328 = *(v217 + 96);
            v219 = *(v217 + 16);
            v322 = *v217;
            v323 = v219;
            v220 = *(v217 + 48);
            v324 = *(v217 + 32);
            *&v329 = *(v217 + 112);
            v325 = v220;
            sub_10000E268(&v299, v242, &qword_1005CDFD0, &qword_1004EE450);
            sub_10000E268(&v287, v242, &qword_1005CDFD0, &qword_1004EE450);
            v221 = static BodyStructure.Multipart.__derived_struct_equals(_:_:)(&v311, &v322);
            goto LABEL_194;
          }
        }

        else
        {
          v222 = UInt32.init(_:)(v255);
          v223 = v222[6];
          v318 = v222[7];
          v224 = v222[9];
          v319 = v222[8];
          v320 = v224;
          v321 = v222[10];
          v225 = v222[5];
          v315 = v222[4];
          v316 = v225;
          v317 = v223;
          v226 = v222[1];
          v311 = *v222;
          v312 = v226;
          v227 = v222[3];
          v313 = v222[2];
          v314 = v227;
          v254 = v268;
          v252 = v266;
          v253 = v267;
          v250 = v264;
          v251 = v265;
          v248 = v262;
          v249 = v263;
          v246 = v260;
          v247 = v261;
          v244 = v258;
          v245 = v259;
          v243 = v257;
          if (sub_10000FE88(&v243) != 1)
          {
            v228 = UInt32.init(_:)(&v243);
            v229 = v228[6];
            v329 = v228[7];
            v230 = v228[9];
            v330 = v228[8];
            v331 = v230;
            v332 = v228[10];
            v231 = v228[2];
            v325 = v228[3];
            v232 = v228[5];
            v326 = v228[4];
            v327 = v232;
            v328 = v229;
            v233 = v228[1];
            v322 = *v228;
            v323 = v233;
            v324 = v231;
            sub_10000E268(&v299, v242, &qword_1005CDFD0, &qword_1004EE450);
            sub_10000E268(&v287, v242, &qword_1005CDFD0, &qword_1004EE450);
            v221 = static BodyStructure.Singlepart.__derived_struct_equals(_:_:)(&v311, &v322);
LABEL_194:
            v234 = v221;
            sub_100025F40(v269, &qword_1005CDFD0, &qword_1004EE450);
            if (v234)
            {
              goto LABEL_182;
            }

LABEL_187:
            v265 = v284[8];
            v266 = v284[9];
            v267 = v284[10];
            v268 = v284[11];
            v261 = v284[4];
            v262 = v284[5];
            v263 = v284[6];
            v264 = v284[7];
            v257 = v284[0];
            v258 = v284[1];
            v259 = v284[2];
            v260 = v284[3];
            v210 = &qword_1005CDFD0;
            v211 = &qword_1004EE450;
            v209 = &v257;
            goto LABEL_173;
          }
        }

        UInt32.init(_:)(&v243);
        sub_10000E268(&v299, v242, &qword_1005CDFD0, &qword_1004EE450);
        v212 = v242;
        goto LABEL_186;
      }

LABEL_178:
      memcpy(v283, v284, 0x169uLL);
      sub_10000E268(&v299, &v271, &qword_1005CDFD0, &qword_1004EE450);
      sub_10000E268(&v287, &v271, &qword_1005CDFD0, &qword_1004EE450);
      v210 = &unk_1005D6D18;
      v211 = &unk_1004EE458;
      v209 = v283;
LABEL_173:
      sub_100025F40(v209, v210, v211);
      return;
    case 0x15uLL:
      v143 = swift_projectBox();
      if (((v241 >> 58) & 0x3C | (v241 >> 1) & 3) == 0x15)
      {
        v144 = v143;
        v145 = *v143;
        v146 = *(v143 + 8);
        LODWORD(v239) = *(v143 + 12);
        v147 = *(sub_10000C9C0(&qword_1005CDF80, &qword_1004CFFB0) + 64);
        v148 = swift_projectBox();
        v149 = *v148;
        v150 = *(v148 + 8);
        v151 = *(v148 + 12);
        v152 = v144 + v147;
        v153 = v240;
        sub_1002B2044(v152, v240, type metadata accessor for MessageHeader);
        v154 = v148 + v147;
        v155 = v238;
        sub_1002B2044(v154, v238, type metadata accessor for MessageHeader);
        if ((v146 | (v146 << 32)) == (v150 | (v150 << 32)) && (sub_1000FFC98(v145, v149) & 1) != 0 && v151 == v239)
        {
          sub_1002C48CC();
          sub_1002B20AC(v155, type metadata accessor for MessageHeader);
          sub_1002B20AC(v153, type metadata accessor for MessageHeader);
        }

        else
        {
          sub_1002B20AC(v155, type metadata accessor for MessageHeader);
          sub_1002B20AC(v153, type metadata accessor for MessageHeader);
        }
      }

      return;
    case 0x16uLL:
      if (((v241 >> 58) & 0x3C | (v241 >> 1) & 3) == 0x16)
      {
        v193 = swift_projectBox();
        v194 = swift_projectBox();
        sub_1002B2044(v193, v11, type metadata accessor for MessageSectionData);
        sub_1002B2044(v194, v8, type metadata accessor for MessageSectionData);
        _s16IMAP2Persistence18MessageSectionDataV23__derived_struct_equalsySbAC_ACtFZ_0(v11, v8);
        sub_1002B20AC(v8, type metadata accessor for MessageSectionData);
        sub_1002B20AC(v11, type metadata accessor for MessageSectionData);
      }

      return;
    case 0x17uLL:
      if (((v241 >> 58) & 0x3C | (v241 >> 1) & 3) == 0x17 && (*((v37 & 0xFFFFFFFFFFFFFF9) + 0x18) | (*((v37 & 0xFFFFFFFFFFFFFF9) + 0x18) << 32)) == (*((v241 & 0xFFFFFFFFFFFFFF9) + 0x18) | (*((v241 & 0xFFFFFFFFFFFFFF9) + 0x18) << 32)))
      {
        v197 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x1C);
        v198 = *((v241 & 0xFFFFFFFFFFFFFF9) + 0x1C);
        if (sub_1000FFC98(*((v37 & 0xFFFFFFFFFFFFFF9) + 0x10), *((v241 & 0xFFFFFFFFFFFFFF9) + 0x10)))
        {
          sub_1002E22B0(v197, v198);
        }
      }

      return;
    case 0x18uLL:
      if (((v241 >> 58) & 0x3C | (v241 >> 1) & 3) == 0x18 && *((v37 & 0xFFFFFFFFFFFFFF9) + 0x18) == *((v241 & 0xFFFFFFFFFFFFFF9) + 0x18))
      {
        v74 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v75 = *((v241 & 0xFFFFFFFFFFFFFF9) + 0x20);
        if (sub_1000FFC98(*((v37 & 0xFFFFFFFFFFFFFF9) + 0x10), *((v241 & 0xFFFFFFFFFFFFFF9) + 0x10)))
        {

          sub_1002C31C4(v74, v75);
        }
      }

      return;
    case 0x19uLL:
      v73 = v241;
      if (((v73 >> 58) & 0x3C | (v73 >> 1) & 3) == 0x19)
      {
        goto LABEL_165;
      }

      return;
    case 0x1AuLL:
      v73 = v241;
      if (((v73 >> 58) & 0x3C | (v73 >> 1) & 3) == 0x1A)
      {
LABEL_165:
        v199 = v37 & 0xFFFFFFFFFFFFFF9;
        v200 = v73 & 0xFFFFFFFFFFFFFF9;
        if (*((v37 & 0xFFFFFFFFFFFFFF9) + 0x18) == *((v73 & 0xFFFFFFFFFFFFFF9) + 0x18))
        {
          goto LABEL_166;
        }
      }

      return;
    case 0x1BuLL:
      if (((v241 >> 58) & 0x3C | (v241 >> 1) & 3) == 0x1B && *((v37 & 0xFFFFFFFFFFFFFF9) + 0x18) == *((v241 & 0xFFFFFFFFFFFFFF9) + 0x18))
      {
        v48 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v49 = *((v241 & 0xFFFFFFFFFFFFFF9) + 0x20);
        if (sub_1000FFC98(*((v37 & 0xFFFFFFFFFFFFFF9) + 0x10), *((v241 & 0xFFFFFFFFFFFFFF9) + 0x10)))
        {

          sub_1002DB320(v48, v49);
        }
      }

      return;
    case 0x1CuLL:
      v192 = v241;
      if (((v192 >> 58) & 0x3C | (v192 >> 1) & 3) == 0x1C)
      {
        goto LABEL_153;
      }

      return;
    case 0x1DuLL:
      v99 = v241;
      if (((v99 >> 58) & 0x3C | (v99 >> 1) & 3) == 0x1D)
      {
        goto LABEL_156;
      }

      return;
    case 0x1EuLL:
      if (((v241 >> 58) & 0x3C | (v241 >> 1) & 3) == 0x1E && (*((v37 & 0xFFFFFFFFFFFFFF9) + 0x18) | (*((v37 & 0xFFFFFFFFFFFFFF9) + 0x18) << 32)) == (*((v241 & 0xFFFFFFFFFFFFFF9) + 0x18) | (*((v241 & 0xFFFFFFFFFFFFFF9) + 0x18) << 32)))
      {
        v188 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v189 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x28);
        v190 = *((v241 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v191 = *((v241 & 0xFFFFFFFFFFFFFF9) + 0x28);
        if (sub_1000FFC98(*((v37 & 0xFFFFFFFFFFFFFF9) + 0x10), *((v241 & 0xFFFFFFFFFFFFFF9) + 0x10)))
        {
          sub_10003A194(v188, v189, v190, v191);
        }
      }

      return;
    case 0x1FuLL:
      v99 = v241;
      if (((v99 >> 58) & 0x3C | (v99 >> 1) & 3) == 0x1F)
      {
LABEL_156:
        if ((*((v37 & 0xFFFFFFFFFFFFFF9) + 0x18) | (*((v37 & 0xFFFFFFFFFFFFFF9) + 0x18) << 32)) == (*((v99 & 0xFFFFFFFFFFFFFF9) + 0x18) | (*((v99 & 0xFFFFFFFFFFFFFF9) + 0x18) << 32)))
        {
          v201 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x20);
          v202 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x28);
          v203 = *((v99 & 0xFFFFFFFFFFFFFF9) + 0x20);
          v204 = *((v99 & 0xFFFFFFFFFFFFFF9) + 0x28);
          if (sub_1000FFC98(*((v37 & 0xFFFFFFFFFFFFFF9) + 0x10), *((v99 & 0xFFFFFFFFFFFFFF9) + 0x10)))
          {

            sub_10003A194(v201, v202, v203, v204);
          }
        }
      }

      return;
    case 0x20uLL:
      v192 = v241;
      if (((v192 >> 58) & 0x3C | (v192 >> 1) & 3) == 0x20)
      {
LABEL_153:
        v199 = v37 & 0xFFFFFFFFFFFFFF9;
        v200 = v192 & 0xFFFFFFFFFFFFFF9;
        if ((*((v37 & 0xFFFFFFFFFFFFFF9) + 0x18) | (*((v37 & 0xFFFFFFFFFFFFFF9) + 0x18) << 32)) == (*((v192 & 0xFFFFFFFFFFFFFF9) + 0x18) | (*((v192 & 0xFFFFFFFFFFFFFF9) + 0x18) << 32)))
        {
LABEL_166:
          sub_1000FFC98(*(v199 + 16), *(v200 + 16));
        }
      }

      return;
    case 0x21uLL:
      if (((v241 >> 58) & 0x3C | (v241 >> 1) & 3) == 0x21 && (*((v37 & 0xFFFFFFFFFFFFFF9) + 0x18) | (*((v37 & 0xFFFFFFFFFFFFFF9) + 0x18) << 32)) == (*((v241 & 0xFFFFFFFFFFFFFF9) + 0x18) | (*((v241 & 0xFFFFFFFFFFFFFF9) + 0x18) << 32)))
      {
        v58 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v59 = *((v241 & 0xFFFFFFFFFFFFFF9) + 0x20);
        if (sub_1000FFC98(*((v37 & 0xFFFFFFFFFFFFFF9) + 0x10), *((v241 & 0xFFFFFFFFFFFFFF9) + 0x10)))
        {

          sub_1002DB42C(v58, v59);
        }
      }

      return;
    case 0x22uLL:
      v47 = v241;
      if (((v47 >> 58) & 0x3C | (v47 >> 1) & 3) == 0x22)
      {
        goto LABEL_70;
      }

      return;
    case 0x23uLL:
      if (((v241 >> 58) & 0x3C | (v241 >> 1) & 3) == 0x23)
      {
        v45 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v46 = *((v241 & 0xFFFFFFFFFFFFFF9) + 0x10);

        sub_1002C2AF8(v45, v46);
      }

      return;
    case 0x24uLL:
      v47 = v241;
      if (((v47 >> 58) & 0x3C | (v47 >> 1) & 3) == 0x24)
      {
LABEL_70:
        if (*((v37 & 0xFFFFFFFFFFFFFF9) + 0x18) == *((v47 & 0xFFFFFFFFFFFFFF9) + 0x18))
        {
          sub_1000FFC98(*((v37 & 0xFFFFFFFFFFFFFF9) + 0x10), *((v47 & 0xFFFFFFFFFFFFFF9) + 0x10));
        }
      }

      return;
    case 0x25uLL:
      if (((v241 >> 58) & 0x3C | (v241 >> 1) & 3) == 0x25)
      {
        v40 = swift_projectBox();
        v41 = swift_projectBox();
        v42 = v236;
        sub_1002B2044(v40, v236, type metadata accessor for Activity);
        v43 = v239;
        sub_1002B2044(v41, v239, type metadata accessor for Activity);
        _s16IMAP2Persistence8ActivityV23__derived_struct_equalsySbAC_ACtFZ_0(v42, v43, v44);
        sub_1002B20AC(v43, type metadata accessor for Activity);
        sub_1002B20AC(v42, type metadata accessor for Activity);
      }

      return;
    case 0x26uLL:
      if (((v241 >> 58) & 0x3C | (v241 >> 1) & 3) == 0x26)
      {
        v205 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v206 = *((v241 & 0xFFFFFFFFFFFFFF9) + 0x10);

        sub_1002DB614(v205, v206);
LABEL_163:
      }

      return;
    case 0x27uLL:
      if (((v241 >> 58) & 0x3C | (v241 >> 1) & 3) == 0x27 && *((v37 & 0xFFFFFFFFFFFFFF9) + 0x10) == *((v241 & 0xFFFFFFFFFFFFFF9) + 0x10))
      {
        v195 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x18);
        v196 = *((v241 & 0xFFFFFFFFFFFFFF9) + 0x18);

        sub_1002DB79C(v195, v196);
      }

      return;
    case 0x28uLL:
      if (((v241 >> 58) & 0x3C | (v241 >> 1) & 3) == 0x28)
      {
        v64 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v65 = *((v241 & 0xFFFFFFFFFFFFFF9) + 0x10);

        goto LABEL_43;
      }

      return;
    case 0x29uLL:
      if (((v241 >> 58) & 0x3C | (v241 >> 1) & 3) == 0x29 && (*((v37 & 0xFFFFFFFFFFFFFF9) + 0x18) | (*((v37 & 0xFFFFFFFFFFFFFF9) + 0x18) << 32)) == (*((v241 & 0xFFFFFFFFFFFFFF9) + 0x18) | (*((v241 & 0xFFFFFFFFFFFFFF9) + 0x18) << 32)))
      {
        v104 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x20);
        v105 = *((v241 & 0xFFFFFFFFFFFFFF9) + 0x20);
        if (sub_1000FFC98(*((v37 & 0xFFFFFFFFFFFFFF9) + 0x10), *((v241 & 0xFFFFFFFFFFFFFF9) + 0x10)))
        {

          sub_100083990(v104, v105);
        }
      }

      return;
    case 0x2AuLL:
      if (((v241 >> 58) & 0x3C | (v241 >> 1) & 3) == 0x2A)
      {
        v64 = *((v37 & 0xFFFFFFFFFFFFFF9) + 0x10);
        v65 = *((v241 & 0xFFFFFFFFFFFFFF9) + 0x10);

LABEL_43:
        sub_1001B42A0(v64, v65);
      }

      return;
    default:
      return;
  }
}